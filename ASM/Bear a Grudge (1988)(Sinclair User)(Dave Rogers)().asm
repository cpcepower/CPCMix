; Music of Bear a Grudge (1988)(Sinclair User)(Dave Rogers)()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BEARAGRU.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #8000

	read "music_header.asm"

; BEARGRSD.ASM    BEAR A GRUDGE Sound Driver (Sinclair User, Covergame Nov88)


;-------VERSION FOR CHRIS WOOD'S COVER GAME---------J.Dave Rogers 88------


SPECVERSION  EQU   0                ;0=AMSTRAD 1=SPEC (CONDITIONAL ASSEMBLY)

SOUNDCOD        EQU       music_begin	;32768            ;MACHINE CODE

;SOUNDATA     EQU   SOUNDCOD + 1300   ;DATABLOCK ADDRESS
           
             NOLIST

ENVSINDEX    EQU       SOUNDATA+200
TUNESINDEX   EQU       ENVSINDEX+80

ENVCOUNTS    EQU 0
ENTCOUNTS    EQU 2
ENVPTR       EQU 4
ENTPTR       EQU 6
ENV0         EQU 8
ENT0         EQU 10
ENVADR       EQU 12
ENTADR       EQU 14

CHANACTIVE   EQU 16
MAINCOUNT    EQU 17
DATAPTR      EQU 18
CONPTR       EQU 20
PTRREFR      EQU 22
PITCHSHIFT   EQU 24
NOISEDIS     EQU 25
CH_ENABLE    EQU 26
INTERVAL     EQU 27
CURRENTNOTE  EQU 28
CHORDTOGGLE  EQU 29
CURRENTDUR   EQU 30

;             ORG  SOUNDCOD
;           WRITE "BEARGRSD.BIN"
START        DEFL $

;------------------------
JUMPBLOCK       JP PLAY128
                JP SILENCE
                JP play128
SPEC48FLAG      DB 1
;
.init_music
BASICSTART      LD E,1
;
                LD C,1

;----------------------
STARTASOUND     CALL FINDBLOC      ;E=BLOC   HL=BLOCADR
                LD A,(HL)          ;C=CHAN   B=PRIORITY
                CP 9
                JR NC,NOCHANMARKER
                LD C,A
                INC HL
                LD A,(HL)
NOCHANMARKER    DEC C        ;FINDCHAN
                JR Z,TRY1
                DEC C
                JR Z,TRY2
                DEC C
                JR Z,TRY3                ;ch4=alternating;
CHAN4           LD A,(STORE1+CHANACTIVE)   ;chan 1 if poss.else 3
                OR A
                JR Z,TRY1
                JP TRY3

TRY1            LD DE,STORE1+CHANACTIVE
                XOR A
                LD (DE),A
                LD (STORE1+INTERVAL),A
                LD (STORE1+PITCHSHIFT),A
                INC A
                LD (STORE1+MAINCOUNT),A
                LD (STORE1+DATAPTR),HL
                LD (STORE1+CONPTR),HL
                LD (STORE1+PTRREFR),HL
                LD (DE),A
                RET

TRY2            LD DE,STORE2+CHANACTIVE
                XOR A
                LD (DE),A
                LD (STORE2+INTERVAL),A
                LD (STORE2+PITCHSHIFT),A
                INC A
                LD (STORE2+MAINCOUNT),A
                LD (STORE2+DATAPTR),HL
                LD (STORE2+CONPTR),HL
                LD (STORE2+PTRREFR),HL
                LD (DE),A
                RET

TRY3            LD DE,STORE3+CHANACTIVE
                XOR A
                LD (DE),A
                LD (STORE3+INTERVAL),A
                LD (STORE3+PITCHSHIFT),A
                INC A
                LD (STORE3+MAINCOUNT),A
                LD (STORE3+DATAPTR),HL
                LD (STORE3+CONPTR),HL
                LD (STORE3+PTRREFR),HL
                LD (DE),A
                RET

;------
;
.stop_music
SILENCE         XOR A
;
                LD (STORE1+CHANACTIVE),A
                LD (STORE2+CHANACTIVE),A
                LD (STORE3+CHANACTIVE),A
                LD (NSEFLAG),A
                LD (BUFF+8),A
                LD (BUFF+9),A
                LD (BUFF+10),A
                LD A, %00111111   ;ALL GATES SHUT
                LD (BUFF+7),A

;***********
IF SPECVERSION

ALL13REGS       LD HL,BUFF+13
                LD E,13
                XOR A
                JP NEXTREG
ELSE

ALL13REGS       LD HL,BUFF+13
                LD DE,#F40D   ;E=13
                XOR A
                JP NEXTREG
ENDIF
;***********

FINDBLOC        LD   A,E
                ADD  A,A
                ADD  A,TUNESINDEX AND #00FF
                LD   L,A
                ADC  A,TUNESINDEX AND #FF00 /256
                SUB  L
                LD   H,A
                LD   E,(HL)
                INC  HL
                LD   D,(HL)
                LD HL,SOUNDATA
                ADD HL,DE
                RET

FINDENV         LD   A,E       ;must not corrupt hl
                ADD  A,A
                ADD  A,ENVSINDEX AND #00FF
                LD   E,A
                ADC  A,ENVSINDEX AND #FF00/256
                SUB  E
                LD   D,A
                LD  A,(DE)
                ADD A,SOUNDATA AND #00FF
                LD  C,A
                INC  DE
                LD  A,(DE)
                ADC A,SOUNDATA AND #FF00/256
                LD B,A
                RET

;------------------------EVERY 1/50----------------------
;
.play_music
PLAY128         
;
TOGLE           LD A,0-0
                XOR 1
                LD (TOGLE+1),A
                JP Z,PART2
PART1           CALL PLAYGEN     ;1ST 50TH
                RET
PART2           CALL ALLREGIST   ;2ND 50TH
                RET

PLAYGEN         LD A,(STORE1+CHANACTIVE)
                OR A
                JR Z,C2
                LD  IX,STORE1
                LD IY,BUFF+8
                LD HL,(BUFF)
                LD (PITCHTEMP),HL
                LD HL,(STORE1+DATAPTR)
                CALL TESTCHAN
                LD (BUFF),HL

C2              LD A,(STORE2+CHANACTIVE)
                OR A
                JR Z,C3
                LD  IX,STORE2
                LD IY,BUFF+9
                LD HL,(BUFF+2)
                LD (PITCHTEMP),HL
                LD HL,(STORE2+DATAPTR)
                CALL TESTCHAN
                LD (BUFF+2),HL

C3              LD A,(STORE3+CHANACTIVE)
                OR A
                JR Z,SUBOCTAVE
                LD IX,STORE3
                LD IY,BUFF+10
                LD HL,(BUFF+4)
                LD (PITCHTEMP),HL
                LD HL,(STORE3+DATAPTR)
                CALL TESTCHAN
                JP NOSUB

SUBOCTAVE       OR H              ;A ALWAYS 0 HERE
                OR L
                JR Z,NOSUB        ;PAUSES                
                RL L              ;DOUBLE PERIOD=HALVE FREQUENCY
                RL H
                LD A,(BUFF+9)     ;CH3 VOL= CH2 VOL
                LD (BUFF+10),A
                LD A,(BUFF+7)     ;NO NOISE (C3 NOISEGATE COULD STILL BE OPEN)
                OR  %00100000
                LD (BUFF+7),A

NOSUB           LD (BUFF+4),HL

                CALL DOENSE

                RET

;***************
IF SPECVERSION

ALLREGIST       XOR A
                LD HL,BUFF+10
                LD E,10
NEXTREG         LD BC,65533
                OUT (C),E
                LD BC,49149
                LD A,(HL)      
                DEC HL
                OUT (C),A
                DEC E
                JP P,NEXTREG
                RET

ELSE

ALLREGIST       XOR  A
                LD   HL,BUFF+10  ;10
                LD   DE,#F40A    ;10
NEXTREG         LD   B,D
                OUT  (C),E
                LD   BC,63168
                OUT  (C),C
                OUT  (C),A
                LD   B,D
                LD   C,(HL)
                DEC  HL
                OUT  (C),C
                LD   BC,63104
                OUT  (C),C
                OUT  (C),A
                DEC  E
                JP   P,NEXTREG
                RET
ENDIF
;*************

;FOR EACH OF THE 3 CHANNELS:

TESTCHAN     DEC  (IX+MAINCOUNT)
             JP NZ,DOENV_ENT
             LD A,20
             LD (DECI+1),A

DECI         LD A,0-0    ;SELF-MOD
             DEC A
             LD (DECI+1),A
             RET Z
             LD   A,(HL)
             INC  HL
             LD   E,(HL)
             INC HL

SUBSELECT    OR A 
             JP   Z,DOPAUSE
             CP   6
             JR   C,STARTLOOP
             CP   101
             JP   C,NEWNOTE
             CP   228
             JP   C,COMPNOTE
             CP   255
             JP   Z,RETCONBLOC
             CP   244
             JR   Z,NEWPRIORITY

             SUB 230
             JR  Z,NOISE
             DEC A
             JR  Z,NOISENOCHECK
             DEC A
             JR  Z,QUICKOUT
             DEC A
             JR  Z,NEWENV
             DEC A
             JR  Z,NEWENT
             DEC A
             JR  Z,NEWENSE
             DEC A
             JP  Z,SETINTERVAL
             DEC A
             JR  Z,NEWKEY
             DEC A
             JR  Z,GONEWBLOC

KILLCHAN        LD (IX+CHANACTIVE),0
                LD (IY+0),0
                RET

NEWPRIORITY     LD (IX+CHANACTIVE),E
                JP DECI

QUICKOUT        LD (IX+MAINCOUNT),1
                DEC HL
                LD (IX+DATAPTR),L
                LD (IX+DATAPTR+1),H
                LD HL,0
                RET

STARTLOOP       PUSH HL
                LD C,A        ;C=CHAN
                CALL STARTASOUND
                POP HL    
                JP DECI

NOISE           LD A,(BUFF+7)      ;NO DRUMS IF FX NOISE ON CHAN 3
                AND %00100000
                JR Z,DECI
NOISENOCHECK    LD A,1
                LD (NSEFLAG),A
                LD   A,E
                LD   (BUFF+6),A
                JP   DECI

NEWKEY          LD   (IX+PITCHSHIFT),E
                JP   DECI

NEWENT          CALL FINDENV
                LD (IX+ENTADR),C
                LD (IX+ENTADR+1),B
                JP DECI

NEWENV          CALL FINDENV
                LD (IX+ENVADR),C
                LD (IX+ENVADR+1),B
                JP DECI

NEWENSE         CALL FINDENV
                LD (ENSSTORE+12),BC
                JP DECI

GONEWBLOC       LD   (IX+CONPTR+1),H
                LD   (IX+CONPTR),L
                CALL FINDBLOC
                JP   DECI

RETCONBLOC      LD   H,(IX+CONPTR+1)
                LD   L,(IX+CONPTR)
                LD A,(HL)
                INC A     ;TEST 255
                JP NZ,DECI
                LD H,(IX+PTRREFR+1)
                LD L,(IX+PTRREFR)
                JP DECI

SETINTERVAL     LD (IX+INTERVAL),E
                JP DECI
;--------------
COMPNOTE        AND 127     ;compressor
                DEC HL
                LD E,(IX+CURRENTDUR)

NEWNOTE         ADD  A,(IX+PITCHSHIFT)

;*******
IF SPECVERSION
                SUB 12       ;halve note if spec128 (AY clock 2Mhz)

ENDIF
;*******

DOPAUSE         LD   (IX+MAINCOUNT),E
                LD   (IX+CURRENTDUR),E
                LD   (IX+CURRENTNOTE),A
                LD   (IX+DATAPTR+1),H
                LD   (IX+DATAPTR),L

PITCHTAB        EQU  SOUNDATA
                ADD  A,A
                ADD  A,PITCHTAB AND #00FF
                LD   L,A
                ADC  A,PITCHTAB AND #FF00 /256
                SUB  L
                LD   H,A
                LD   DE,PITCHTEMP
                LDI
                LDI

                LD (IY+0),0

                PUSH IX
                POP  DE
                LD   HL,8
                ADD  HL,DE
                LDI
                LDI
                LDI
                LDI
                LDI
                LDI
                LDI
                LDI

                XOR A
                LD HL,NSEFLAG
                OR  (HL)
                LD (HL),0
                LD   L,(IX+NOISEDIS)
                JR   Z,GATING

NOISEON         LD  HL,(ENSSTORE+ENVADR)
                LD  (ENSSTORE+ENVPTR),HL
                LD  HL,00
                LD  (ENSSTORE),HL

GATING          LD   A,(BUFF+7)
                AND  (IX+CH_ENABLE)
                OR   L
                AND  %00111111
                LD   (BUFF+7),A
;--------------

DOENV_ENT       CALL ENGEN

                LD A,(IY+0)
                ADD A,C
                SUB  128
                LD   (IY+0),A

                LD HL,(PITCHTEMP)
                LD A,H
                OR L
                RET Z
                LD A,(IX+INTERVAL)
                OR A
                JR NZ,DOCHORD
DOENT           INC IX
                INC IX
                CALL ENGEN
                LD HL,(PITCHTEMP)
                LD B,0
;**********
IF SPECVERSION
                ADD  HL,BC
                ADD HL,BC
                LD   C,128
                SBC HL,BC
                SBC  HL,BC
ELSE
                ADD HL,BC
                LD C,128
                SBC HL,BC
ENDIF
;**********
                RET

;--------
DOCHORD         DEC (IX+CHORDTOGGLE)
                LD A,(IX+CURRENTNOTE)
                JR Z,FINDSETPITCH
                ADD (IX+INTERVAL)
                LD (IX+CHORDTOGGLE),1

;PITCHTAB        EQU  SOUNDATA
FINDSETPITCH    ADD  A,A
                ADD  A,PITCHTAB AND #00FF
                LD   L,A
                ADC  A,PITCHTAB AND #FF00 /256
                SUB  L
                LD   H,A
                LD   E,(HL)
                INC HL
                LD  D,(HL)
                EX HL,DE
                RET

;-----------
DOENSE      LD IX,ENSSTORE
            CALL ENGEN
            LD HL, BUFF+6
            LD   A,(HL)
            ADD  A,C
            SUB  128
            LD   (HL),A
            CP 17
            RET C
NOISEOFF    INC HL       ;HL=BUFF+7
            LD A,(HL)
            OR %00111000
            LD (HL),A
            RET
;------------
ENGEN       PUSH IX
            POP  HL
            LD   D,(IX+ENVPTR+1)
            LD   E,(IX+ENVPTR)
            INC  (HL)
            LD   A,(DE)
            SUB  (HL)
            LD C,128
            RET  NZ
            LD   (HL),A
            INC DE
            LD  A,(DE)
            LD C,A
            INC  DE
            INC  HL
            INC  (HL)
            LD   A,(DE)
            SUB  (HL)
            RET  NZ
            LD   (HL),A
            INC  DE
            LD   A,(DE)
            INC  A
            JR   NZ,NEXTSECT
            LD   D,(IX+ENVADR+1)
            LD   E,(IX+ENVADR)
NEXTSECT    LD   (IX+ENVPTR+1),D
            LD   (IX+ENVPTR),E
            RET

;--------
BUFF      DW  00
          DW  00
          DW  00
          DB  0
          DB  %00111111
          DB  0
          DB  0
          DB  0
          DB  16,0
          DB  10

PITCHTEMP   DW 00

NSEFLAG     DB 0

ENSSTORE  DW 00
          DW 10
          DW 00
          DW 04
          DW 00
          DW 18
          DW 00

STORE1  DW  00
        DW  00
        DW  00
        DW  00
        DW  00
        DW  00
        DW  00
        DW  00
        DB  0
        DB  0
        DW  00
        DW  00
        DW  00
        DB  0
        DB  8
        DB  32+16+4+2-4 ;CHAN ENABLE  (-4 'COS SUBOCTAVE = CH3 ALWAYS ON)
        DB  0
        DB  0
        DB  0
        DB  0

STORE2  DW  00
        DW  00
        DW  00
        DW  00
        DW  00
        DW  00
        DW  00
        DW  00
        DB  0
        DB  0
        DW  00
        DW  00
        DW  00
        DB  0
        DB  16
        DB  32+8+4+1-4
        DB  0
        DB  0
        DB  0
        DB  0

STORE3  DW  00
        DW  00
        DW  00
        DW  00
        DW  00
        DW  00
        DW  00
        DW  00
        DB  0
        DB  0
        DW  00
        DW  00
        DW  00
        DB  0
        DB  32
        DB  16+8+2+1
        DB  0
        DB  0
        DB  0
        DB  0

SPARE           DW 00

; #8514
SOUNDATA
	db #00,#00,#f6,#0e,#1f,#0e,#54,#0d
	db #95,#0c,#e0,#0b,#35,#0b,#94,#0a
	db #fc,#09,#6d,#09,#e5,#08,#66,#08
	db #ed,#07,#7b,#07,#10,#07,#aa,#06
	db #4a,#06,#f0,#05,#9b,#05,#4a,#05
	db #fe,#04,#b6,#04,#73,#04,#33,#04
	db #f7,#03,#be,#03,#88,#03,#55,#03
	db #25,#03,#f8,#02,#cd,#02,#a5,#02
	db #7f,#02,#5b,#02,#39,#02,#19,#02
	db #fb,#01,#df,#01,#c4,#01,#ab,#01
	db #93,#01,#7c,#01,#67,#01,#53,#01
	db #40,#01,#2e,#01,#1d,#01,#0d,#01
	db #fe,#00,#ef,#00,#e2,#00,#d5,#00
	db #c9,#00,#be,#00,#b3,#00,#a9,#00
	db #a0,#00,#97,#00,#8e,#00,#86,#00
	db #7f,#00,#78,#00,#71,#00,#6b,#00
	db #65,#00,#5f,#00,#5a,#00,#55,#00
	db #50,#00,#4b,#00,#47,#00,#43,#00
	db #3f,#00,#3c,#00,#38,#00,#35,#00
	db #32,#00,#30,#00,#2d,#00,#2a,#00
	db #28,#00,#26,#00,#24,#00,#22,#00
	db #20,#00,#1e,#00,#1c,#00,#1b,#00
	db #19,#00,#18,#00,#16,#00,#15,#00
	db #14,#00,#13,#00,#12,#00,#11,#00
	db #10,#00,#0f,#00,#0e,#00,#00,#00
	db #7e,#01,#88,#01,#89,#01,#96,#01
	db #97,#01,#a1,#01,#ab,#01,#ac,#01
	db #c8,#01,#d5,#01,#d6,#01,#e0,#01
	db #ea,#01,#f4,#01,#fe,#01,#ff,#01
	db #00,#02,#01,#02,#02,#02,#03,#02
	db #04,#02,#0e,#02,#1b,#02,#22,#02
	db #23,#02,#30,#02,#37,#02,#3b,#02
	db #51,#02,#55,#02,#5c,#02,#63,#02
	db #64,#02,#65,#02,#66,#02,#67,#02
	db #68,#02,#69,#02,#fe,#02,#02,#03
	db #96,#02,#9a,#02,#5d,#03,#0c,#04
	db #17,#04,#6e,#04,#e0,#04,#e7,#04
	db #04,#05,#16,#05,#3d,#05,#6a,#05
	db #a8,#05,#af,#05,#c1,#05,#cf,#05
	db #e9,#05,#1f,#06,#39,#06,#53,#06
	db #65,#06,#87,#06,#dd,#06,#de,#06
	db #ed,#06,#fd,#06,#33,#07,#54,#07
	db #68,#07,#76,#07,#84,#07,#92,#07
	db #9e,#07,#ac,#07,#ba,#07,#c8,#07
	db #d6,#07,#e4,#07,#f2,#07,#00,#08
	db #0e,#08,#1c,#08,#2a,#08,#38,#08
	db #46,#08,#54,#08,#9d,#09,#c4,#09
	db #d0,#09,#dc,#09,#00,#0a,#c8,#80
	db #c8,#c8,#80,#c8,#c8,#80,#c8,#ff
	db #ff,#01,#8a,#01,#01,#7e,#01,#01
	db #7d,#01,#01,#7b,#01,#ff,#ff,#01
	db #7f,#01,#01,#81,#02,#01,#7f,#01
	db #ff,#01,#88,#01,#01,#7c,#02,#c8
	db #80,#c8,#ff,#ff,#01,#81,#01,#01
	db #7f,#01,#01,#81,#01,#01,#7f,#01
	db #01,#81,#01,#01,#7f,#01,#01,#81
	db #01,#01,#7f,#01,#01,#8a,#c8,#ff
	db #06,#80,#01,#01,#83,#04,#01,#7d
	db #04,#c8,#80,#c8,#ff,#ff,#01,#8b
	db #01,#01,#7f,#02,#c8,#80,#c8,#ff
	db #01,#7f,#02,#01,#81,#04,#01,#7f
	db #02,#ff,#01,#8c,#01,#01,#7e,#01
	db #04,#7f,#08,#ff,#01,#89,#01,#0d
	db #7f,#09,#c8,#80,#c8,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#01,#7f,#01,#01
	db #7e,#01,#c8,#80,#c8,#ff,#01,#8c
	db #01,#01,#7f,#04,#03,#7f,#08,#c8
	db #80,#c8,#ff,#01,#83,#09,#01,#81
	db #c8,#ff,#ff,#01,#8c,#01,#01,#7f
	db #04,#03,#7f,#08,#c8,#80,#c8,#ff
	db #01,#6f,#01,#01,#8b,#01,#ff,#01
	db #82,#01,#ff,#01,#8e,#01,#01,#81
	db #01,#05,#7f,#01,#01,#7f,#03,#03
	db #7f,#02,#06,#7f,#09,#c8,#80,#c8
	db #ff,#01,#ac,#c8,#ff,#03,#81,#0e
	db #c8,#80,#c8,#ff,#01,#7e,#05,#01
	db #8a,#01,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#01,#73,#01,#01,#8b,#01
	db #ff,#01,#82,#01,#ff,#01,#8e,#01
	db #01,#81,#01,#05,#7f,#01,#01,#7f
	db #03,#03,#7f,#02,#06,#7f,#09,#c8
	db #80,#c8,#ff,#01,#ac,#c8,#ff,#03
	db #81,#0e,#c8,#80,#c8,#ff,#fe,#ff
	db #ff,#02,#02,#01,#02,#00,#01,#eb
	db #14,#e9,#02,#ea,#0b,#ec,#00,#ed
	db #16,#1d,#40,#9f,#e9,#0c,#ed,#18
	db #ec,#00,#ee,#0e,#ee,#0d,#ee,#0f
	db #ee,#0d,#ee,#0e,#ee,#0d,#ee,#0f
	db #ee,#0d,#ee,#10,#ee,#0e,#ee,#0d
	db #ee,#0e,#ee,#0d,#ee,#0f,#ee,#0d
	db #ee,#10,#ee,#0e,#ee,#0d,#ed,#16
	db #ee,#0e,#ee,#0d,#ee,#0f,#ee,#0d
	db #ee,#0e,#ee,#0d,#ee,#0f,#ee,#0d
	db #ed,#19,#ee,#0d,#ee,#0d,#ee,#0f
	db #ee,#0d,#ee,#0e,#ee,#0d,#ed,#16
	db #ee,#0e,#ee,#0d,#ed,#19,#ee,#0d
	db #ee,#0d,#ee,#0f,#ee,#0d,#ee,#0e
	db #ee,#0d,#ed,#16,#ee,#0d,#ee,#0e
	db #ed,#0c,#ee,#19,#ee,#19,#ee,#19
	db #ee,#19,#ed,#0d,#ee,#08,#ee,#07
	db #ee,#08,#ee,#07,#ee,#08,#ee,#07
	db #ee,#08,#ee,#07,#ee,#07,#ee,#08
	db #ee,#07,#ed,#10,#ee,#08,#ed,#0d
	db #ee,#08,#ee,#08,#ee,#08,#ee,#08
	db #ee,#08,#ee,#08,#ee,#07,#ed,#10
	db #ee,#08,#ee,#08,#ee,#09,#ee,#08
	db #ee,#09,#ee,#08,#ee,#09,#ee,#08
	db #ee,#09,#00,#58,#ff,#e9,#0d,#ea
	db #04,#ec,#00,#ed,#16,#ee,#14,#ed
	db #18,#ee,#14,#ec,#0c,#1f,#40,#ed
	db #18,#ec,#00,#ee,#0d,#ee,#0d,#ed
	db #18,#ee,#11,#ec,#07,#2b,#40,#ed
	db #18,#ee,#11,#ec,#0c,#ed,#1f,#ee
	db #10,#e9,#0d,#ed,#16,#ec,#0c,#ee
	db #12,#23,#24,#e9,#02,#0b,#20,#e9
	db #0d,#ea,#07,#ec,#00,#ed,#19,#ee
	db #12,#ed,#19,#ec,#0c,#ee,#17,#e9
	db #02,#1a,#40,#e9,#0d,#ee,#18,#ec
	db #05,#23,#38,#e9,#0d,#ed,#19,#ec
	db #00,#2f,#04,#b0,#ee,#17,#e9,#02
	db #ea,#04,#26,#40,#e9,#0d,#ea,#07
	db #ee,#18,#ec,#05,#23,#3c,#ec,#0c
	db #1d,#04,#9f,#ed,#0c,#e9,#0a,#ec
	db #0c,#ee,#1a,#ee,#1a,#ed,#0d,#ea
	db #08,#ec,#00,#e9,#0d,#ee,#07,#ee
	db #07,#ee,#07,#ee,#07,#ee,#0a,#ed
	db #10,#ee,#0a,#ed,#0d,#ee,#0a,#ed
	db #10,#ee,#0a,#ee,#0b,#ed,#11,#ec
	db #0c,#02,#0c,#ee,#0b,#ee,#0b,#02
	db #04,#ee,#05,#ff,#ff,#18,#ec,#00
	db #ee,#0d,#ee,#0d,#ed,#18,#ee,#ed
	db #16,#ee,#0e,#ee,#0d,#ed,#18,#ee
	db #0e,#ee,#0d,#ed,#19,#ee,#0e,#ee
	db #0d,#ed,#16,#ee,#0e,#ee,#0d,#ed
	db #18,#ee,#0f,#ee,#0f,#ed,#19,#ee
	db #0e,#ee,#0d,#ed,#1b,#ee,#0f,#ee
	db #0f,#ec,#00,#ed,#0b,#ee,#19,#ee
	db #19,#ee,#09,#ee,#09,#ed,#0f,#ee
	db #19,#ee,#19,#ee,#19,#ee,#19,#ed
	db #12,#ee,#09,#ee,#07,#ee,#08,#ee
	db #09,#ee,#07,#ee,#08,#ee,#09,#ee
	db #07,#ee,#07,#00,#80,#ff,#ec,#0c
	db #ed,#16,#26,#08,#25,#04,#26,#2c
	db #26,#08,#a8,#26,#04,#28,#2c,#28
	db #08,#a9,#28,#04,#29,#24,#29,#0c
	db #ed,#19,#ec,#08,#20,#38,#ec,#0c
	db #25,#04,#a3,#a5,#1c,#10,#22,#0c
	db #28,#1c,#2a,#04,#ab,#e9,#02,#28
	db #30,#e9,#0d,#26,#04,#a3,#a5,#a1
	db #e9,#0d,#1c,#10,#25,#0c,#28,#1c
	db #1f,#04,#9e,#ec,#0c,#ed,#0b,#ee
	db #1b,#ec,#18,#ee,#1b,#ec,#00,#ea
	db #07,#40,#40,#ed,#0f,#e9,#0a,#ec
	db #0c,#ee,#1a,#ee,#1a,#ed,#12,#ee
	db #0e,#ee,#0d,#ee,#14,#ee,#0f,#ee
	db #0d,#ee,#14,#2b,#20,#02,#01,#ff
	db #ff,#ff,#26,#04,#a3,#a5,#a1,#eb
	db #14,#e6,#0e,#00,#04,#00,#04,#e6
	db #0e,#00,#04,#00,#04,#eb,#00,#e6
	db #06,#00,#04,#eb,#14,#00,#04,#00
	db #04,#00,#04,#ff,#eb,#14,#13,#04
	db #93,#9f,#9f,#eb,#00,#e6,#06,#a4
	db #eb,#14,#9f,#9f,#9f,#ff,#eb,#14
	db #e6,#01,#00,#04,#e6,#01,#00,#04
	db #e6,#01,#00,#04,#e6,#01,#00,#04
	db #eb,#00,#e6,#06,#00,#04,#e6,#01
	db #00,#04,#e6,#01,#00,#04,#e6,#01
	db #00,#04,#ff,#00,#04,#eb,#14,#32
	db #02,#b4,#b7,#af,#b2,#b7,#b2,#b7
	db #b2,#b4,#b7,#af,#b4,#b7,#b2,#b7
	db #30,#04,#b7,#b4,#30,#14,#35,#02
	db #b9,#b0,#b5,#b9,#b5,#b9,#b0,#b4
	db #b7,#b0,#b4,#b7,#b0,#b4,#b7,#2b
	db #20,#ff,#32,#04,#b4,#b7,#af,#b2
	db #b7,#af,#b2,#b7,#af,#b2,#37,#08
	db #2f,#04,#b2,#b7,#b0,#b4,#b7,#b0
	db #b4,#b7,#b0,#b4,#b7,#b0,#b4,#b7
	db #b0,#34,#02,#37,#08,#00,#02,#30
	db #04,#b5,#b9,#b0,#b5,#b9,#b0,#b9
	db #b0,#b4,#b7,#b0,#b4,#b7,#b4,#b7
	db #2b,#30,#26,#04,#a8,#a6,#a8,#ff
	db #ed,#11,#ee,#08,#ff,#b7,#2b,#07
	db #04,#87,#93,#93,#eb,#00,#e6,#06
	db #87,#93,#e6,#01,#87,#e6,#01,#93
	db #ff,#07,#04,#87,#93,#93,#eb,#00
	db #e6,#06,#98,#9a,#9d,#9f,#ff,#eb
	db #14,#07,#04,#87,#e6,#01,#93,#93
	db #eb,#00,#e6,#06,#9d,#9a,#9c,#98
	db #ff,#9a,#9c,#98,#ff,#98,#ff,#9d
	db #9f,#eb,#14,#e6,#01,#0c,#04,#e6
	db #01,#8c,#e6,#01,#98,#e6,#01,#98
	db #e6,#06,#8e,#e6,#01,#8e,#e6,#02
	db #9a,#e6,#01,#9a,#eb,#14,#e6,#01
	db #8f,#e6,#01,#8f,#e6,#01,#9b,#e6
	db #02,#9b,#e6,#06,#91,#e6,#02,#91
	db #e6,#06,#9d,#e6,#02,#9d,#ff,#ec
	db #05,#32,#30,#26,#10,#30,#30,#ec
	db #03,#26,#10,#ec,#08,#ab,#9f,#ec
	db #05,#2e,#08,#a2,#ec,#03,#b2,#b0
	db #ff,#28,#08,#29,#04,#26,#0c,#e6
	db #06,#21,#08,#a4,#26,#04,#23,#14
	db #21,#08,#23,#04,#1d,#0c,#24,#04
	db #ff,#08,#29,#34,#10,#35,#0c,#b2
	db #30,#08,#2d,#10,#2d,#08,#b0,#e9
	db #02,#af,#2d,#04,#ff,#1d,#04,#9c
	db #9d,#eb,#00,#00,#04,#e6,#0e,#9d
	db #9f,#9f,#ec,#0c,#1d,#08,#1c,#04
	db #eb,#00,#9d,#e6,#02,#9c,#e6,#0e
	db #9d,#9f,#a1,#9f,#ec,#00,#ff,#ea
	db #04,#ea,#05,#30,#0c,#ea,#04,#30
	db #24,#ea,#05,#32,#08,#ea,#04,#ea
	db #04,#b0,#ea,#05,#2f,#0c,#ea,#04
	db #ea,#04,#ad,#ea,#05,#2b,#10,#ea
	db #04,#ea,#04,#ea,#04,#26,#08,#ea
	db #05,#a6,#ea,#04,#ea,#04,#a8,#ea
	db #05,#29,#0c,#ea,#04,#ea,#04,#ad
	db #ea,#05,#2b,#18,#ea,#04,#ea,#04
	db #29,#08,#ea,#05,#ab,#ea,#04,#ea
	db #04,#2d,#0c,#ea,#05,#b0,#ea,#04
	db #2f,#28,#ff,#ea,#04,#ff,#2f,#14
	db #2b,#10,#26,#04,#23,#08,#23,#04
	db #a4,#a6,#a4,#a6,#ff,#2b,#04,#ad
	db #2f,#18,#26,#04,#a8,#a9,#a3,#a4
	db #a6,#a3,#ff,#26,#04,#19,#04,#99
	db #a5,#eb,#00,#a5,#e6,#0e,#99,#a5
	db #99,#a5,#97,#97,#a3,#e6,#02,#a3
	db #e6,#0e,#97,#a3,#97,#a3,#96,#96
	db #a2,#eb,#00,#a2,#e6,#0e,#96,#a2
	db #e6,#02,#96,#e6,#02,#a2,#97,#97
	db #a3,#e6,#02,#a3,#e6,#0e,#96,#a2
	db #97,#a3,#ff,#29,#10,#a5,#20,#04
	db #1d,#0c,#1e,#04,#a0,#9e,#a0,#00
	db #38,#29,#04,#aa,#29,#10,#a5,#29
	db #04,#2a,#08,#2a,#04,#ac,#ae,#ac
	db #ae,#00,#40,#ff,#e9,#02,#28,#5c
	db #27,#04,#a8,#00,#04,#aa,#e9,#0d
	db #2c,#0c,#36,#04,#b5,#ff,#ac,#ae
	db #03,#e9,#15,#ea,#16,#eb,#16,#e7
	db #06,#48,#23,#eb,#14,#fe,#03,#e9
	db #15,#ea,#16,#eb,#16,#e7,#06,#54
	db #23,#eb,#14,#fe,#03,#e9,#15,#ea
	db #16,#eb,#16,#e7,#06,#60,#23,#eb
	db #14,#fe,#04,#e9,#18,#ea,#19,#eb
	db #1a,#3a,#16,#eb,#14,#fe,#04,#e9
	db #18,#ea,#19,#eb,#1a,#e7,#06,#48
	db #16,#eb,#14,#fe,#04,#e9,#18,#ea
	db #19,#eb,#1a,#e7,#06,#52,#16,#eb
	db #14,#fe,#04,#e9,#1b,#ea,#1c,#eb
	db #1d,#e7,#01,#00,#41,#eb,#14,#fe
	db #04,#e9,#1b,#ea,#1c,#eb,#1d,#e7
	db #06,#00,#41,#eb,#14,#fe,#04,#e9
	db #1b,#ea,#1c,#eb,#00,#e7,#0e,#00
	db #41,#eb,#14,#fe,#04,#e9,#1b,#ea
	db #1c,#eb,#1d,#e7,#01,#24,#41,#eb
	db #14,#fe,#04,#e9,#1b,#ea,#1c,#eb
	db #1d,#e7,#06,#30,#41,#eb,#14,#fe
	db #04,#e9,#1b,#ea,#1c,#eb,#00,#e7
	db #0e,#3c,#41,#eb,#14,#fe,#04,#e9
	db #1b,#ea,#1e,#eb,#1e,#e7,#0e,#00
	db #41,#eb,#14,#fe,#04,#e9,#1b,#ea
	db #1e,#eb,#1e,#e7,#0e,#3c,#41,#eb
	db #14,#fe,#04,#e9,#1b,#ea,#1e,#eb
	db #1e,#e7,#0e,#60,#41,#eb,#14,#fe
	db #04,#e9,#1b,#ea,#1e,#eb,#1e,#e7
	db #06,#00,#41,#eb,#14,#fe,#04,#e9
	db #1b,#ea,#1e,#eb,#1e,#e7,#06,#3c
	db #41,#eb,#14,#fe,#04,#e9,#1b,#ea
	db #1e,#eb,#1e,#e7,#06,#60,#41,#eb
	db #14,#fe,#00,#00
;---------
FINISH          DEFL $
                LIST
;              CLOSE
;START           DEFL START
;FINISH          DEFL FINISH
LENGTH          DEFL FINISH-START

;
.music_info
	db "Bear a Grudge (1988)(Sinclair User)(Dave Rogers)",0
	db "BEARGRSD.ASM    BEAR A GRUDGE Sound Driver (Sinclair User, Covergame Nov88) - J.Dave Rogers",0

	read "music_end.asm"
