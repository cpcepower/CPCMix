; Music of Battle Valley (1988)(Hewson)(Dave Rogers)()
; Ripped by Megachur the 25/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BATTLEVA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b1aa

	read "music_header.asm"

;BATVALSD.ASM     Battle Valley sound driver     J.Dave Rogers, March 1988

;***********
SPECVERSION  EQU   0       ;0=AMSTRAD 1=SPEC

SOUNDCOD     EQU   music_begin	;32768      ;MACHINE CODE

;SOUNDATA     EQU   SOUNDCOD + 1104  ;DATABLOCK ADDRESS
;**********
           
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

;             ORG  SOUNDCOD
;             WRITE "BATVALSD.BIN"
START        DEFL $

;---------------------------------------
JUMPBLOCK:      JP PLAY
                JP SILENCE
;                JP TUNE48K
;SPEC48FLAG      DB 0
;
.init_music
;
STARTUNE:       LD E,1
                LD A,1
;--------
STARTACHAN:     LD C,A
                CALL FINDBLOC
                LD A,(HL)
                CP 9
                JR NC,NOCHANMARKER
                LD C,A
                INC HL
NOCHANMARKER:   LD A,(HL)
                CP 244
                LD B,10
                JR NZ,FINDCHAN
                INC HL
                LD B,(HL)
                INC HL
FINDCHAN:       DEC C
                JR Z,TRY1
                DEC C
                JR Z,TRY2
                DEC C
                JR Z,TRY3

CHANALT:        LD A,(STORE2+CHANACTIVE)
                OR A
                JR Z,TRY2
                LD A,(STORE1+CHANACTIVE)
                OR A
                JR Z,TRY1

TRY3:           LD DE,STORE3+CHANACTIVE
                LD A,(DE)
                LD C,A
                LD A,B
                SUB C
                RET C
                XOR A
                LD (DE),A
                LD (STORE3+INTERVAL),A
                LD (STORE3+PITCHSHIFT),A
                INC A
                LD (STORE3+MAINCOUNT),A
                LD (STORE3+DATAPTR),HL
                LD (STORE3+CONPTR),HL
                LD (STORE3+PTRREFR),HL
                LD A,B
                LD (DE),A
                RET

TRY2:           LD DE,STORE2+CHANACTIVE
                LD A,(DE)
                LD C,A
                LD A,B
                SUB C
                RET C
                XOR A
                LD (DE),A
                LD (STORE2+INTERVAL),A
                LD (STORE2+PITCHSHIFT),A
                INC A
                LD (STORE2+MAINCOUNT),A
                LD (STORE2+DATAPTR),HL
                LD (STORE2+CONPTR),HL
                LD (STORE2+PTRREFR),HL
                LD A,B
                LD (DE),A
                RET

TRY1:           LD DE,STORE1+CHANACTIVE
                LD A,(DE)
                LD C,A
                LD A,B
                SUB C
                RET C
                XOR A
                LD (DE),A
                LD (STORE1+INTERVAL),A
                LD (STORE1+PITCHSHIFT),A
                INC A
                LD (STORE1+MAINCOUNT),A
                LD (STORE1+DATAPTR),HL
                LD (STORE1+CONPTR),HL
                LD (STORE1+PTRREFR),HL
                LD A,B
                LD (DE),A
                RET

;------
;
.stop_music
;
SILENCE:        LD A,1+2+4+8+16+32
                LD (BUFF+7),A
;                XOR A
;                LD (SPEC48FLAG),A
                LD  (STORE1+CHANACTIVE),A
                LD  (STORE2+CHANACTIVE),A
                LD  (STORE3+CHANACTIVE),A
                LD (STORE1+INTERVAL),A
                LD (STORE2+INTERVAL),A
                LD (STORE3+INTERVAL),A
                LD (STORE1+PITCHSHIFT),A
                LD (STORE2+PITCHSHIFT),A
                LD (STORE3+PITCHSHIFT),A
                LD (BUFF+8),A
                LD (BUFF+9),A
                LD (BUFF+10),A

;********
IF SPECVERSION

ALL13REGS:      LD HL,BUFF+13
                LD E,13
                JP NEXTREG
ELSE

ALL13REGS:      LD HL,BUFF+13    ;A STILL = 0
                LD DE,#F40D      ;13
                JP NEXTREG
ENDIF
;********

FINDBLOC:       LD   A,E
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

FINDENV:        LD   A,E
                ADD  A,A
                ADD  A,ENVSINDEX AND #00FF
                LD   E,A
                ADC  A,ENVSINDEX AND #FF00 / 256
                SUB  E
                LD   D,A

                LD  A,(DE)
                ADD A,SOUNDATA AND #00FF
                LD  C,A

                INC  DE
                LD  A,(DE)
                ADC A,SOUNDATA AND #FF00 / 256
                LD B,A
                RET

;---------EVERY 1/25 S-------------
;
.play_music
;
PLAY:           ld a,1                        ; added by Megachur
		xor 1
		ld (PLAY+1),a
		ret z                        ; added by Megachur
	        LD HL,STOPHANG
                LD (HL),20

                LD A,(STORE1+CHANACTIVE)
                OR A
                JR Z,C2
                LD  IX,STORE1
                LD IY,BUFF+8
                LD HL,(BUFF)
                LD (PITCHTEMP),HL
                LD HL,(STORE1+DATAPTR)
                CALL TESTCHAN
                LD (BUFF),HL

C2:             LD A,(STORE2+CHANACTIVE)
                OR A
                JR Z,C3
                LD  IX,STORE2
                LD IY,BUFF+9
                LD HL,(BUFF+2)
                LD (PITCHTEMP),HL
                LD HL,(STORE2+DATAPTR)
                CALL TESTCHAN
                LD (BUFF+2),HL

C3:             LD A,(STORE3+CHANACTIVE)
                OR A
                JR Z,CHORUS

                LD IX,STORE3
                LD IY,BUFF+10
                LD HL,(BUFF+4)
                LD (PITCHTEMP),HL
                LD HL,(STORE3+DATAPTR)
                CALL TESTCHAN
                JP NOCHORUS

CHORUS:         OR H    ;A ALWAYS 0 HERE
                OR L
                JR Z,NOCHORUS     ;PAUSES
                DEC L
                DEC L
                LD A,(BUFF+9)
                LD (BUFF+10),A
NOCHORUS:       LD (BUFF+4),HL

                CALL DOENSE

;*************
IF SPECVERSION

                LD A,(SPEC48FLAG)
                OR A
                RET NZ     ;NO AY CHIP IF 48K TUNE

ALLREGIST:      LD HL,BUFF+10
                LD E,10
NEXTREG:        LD BC,65533
                OUT (C),E
                LD BC,49149
                LD A,(HL)      
                DEC HL
                OUT (C),A
                DEC E
                JP P,NEXTREG
                RET

ELSE

ALLREGIST:      XOR  A
                LD   HL,BUFF+10 ;10
                LD   DE,#F40A   ;10
NEXTREG:        LD   B,D
                OUT  (C),E
                LD   BC,63168   ;(#F6*256+%11000000)
                OUT  (C),C
                OUT  (C),A
                LD   B,D
                LD   C,(HL)
                DEC  HL
                OUT  (C),C
                LD   BC,63104   ;(#F6*256+%10000000)
                OUT  (C),C
                OUT  (C),A
                DEC  E
                JP   P,NEXTREG
                RET

ENDIF
;**********

;FOR EACH OF THE 3 CHANNELS:

TESTCHAN:       DEC  (IX+MAINCOUNT)
                JP NZ,DOENV_ENT

DECI:           LD   A,(HL)
                INC  HL
                LD   E,(HL)
                INC HL

SUBSELECT:   OR   A
             JP   Z,DOPAUSE
             CP   9
             JP   C,STARTLOOP
             CP   101
             JP   C,NEWNOTE

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
           DEC A
           JR  Z,RETCONBLOC

          ;FOLLOW THROUGH=SAFETY NET

KILLCHAN:       LD (IX+CHANACTIVE),0
                LD (IY+0),0
                RET

QUICKOUT:       LD (IX+MAINCOUNT),1     ;TIME SHARER
                DEC HL
                LD (IX+DATAPTR),L
                LD (IX+DATAPTR+1),H
                LD HL,0
                RET

STARTLOOP:      PUSH IX     ;A=CHAN E=TUNEBLOC
                PUSH HL
                CALL STARTACHAN
                POP HL
                POP IX
             
                LD A,(STOPHANG)  ;JUST IN CASE!
                DEC A
                RET Z
                LD (STOPHANG),A
                JP DECI

NOISE:          LD A,(STORE3+CHANACTIVE)   ;NO TUNE-DRUMS IF CH3 ACTIVE
                OR A
                JR NZ, DECI
NOISENOCHECK:   LD   A,E
                LD   (BUFF+6),A
                LD A,1
                LD   (NSEFLAG),A
                JP   DECI

NEWKEY:         LD   (IX+PITCHSHIFT),E
                JP   DECI

NEWENT:         CALL FINDENV
                LD (IX+ENTADR),C
                LD (IX+ENTADR+1),B
                JP DECI

NEWENV:         CALL FINDENV
                LD (IX+ENVADR),C
                LD (IX+ENVADR+1),B
                JP DECI

NEWENSE:        CALL FINDENV
                LD (ENSSTORE+12),BC
                JP DECI

GONEWBLOC:      LD   (IX+CONPTR+1),H
                LD   (IX+CONPTR),L
                CALL FINDBLOC
                JP   DECI

RETCONBLOC:     LD   H,(IX+CONPTR+1)
                LD   L,(IX+CONPTR)
                LD A,(HL)
                INC A
                JP NZ,DECI
                LD H,(IX+PTRREFR+1)
                LD L,(IX+PTRREFR)
                JP DECI

SETINTERVAL:    LD (IX+INTERVAL),E
                JP DECI

NEWNOTE:        ADD  A,(IX+PITCHSHIFT)

;******
IF SPECVERSION
                LD C,A
                LD A,(SPEC48FLAG)
                OR A
                JP NZ, NOSUB
                LD A,C
                SUB 12       ;HALVE FREQY IF SPECTRUM (AY CLOCKED AT 2 MHZ)
                LD C,A
NOSUB           LD A,C       ;BUT NOT IF 48 K !
ENDIF
;******

DOPAUSE:        LD   (IX+MAINCOUNT),E
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

                PUSH IX     ;RESTART ENV/ent
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
                OR   (HL)
                LD   (HL),0
                LD   L,(IX+NOISEDIS)
                JR   Z,GATING

NOISEON:        LD  HL,(ENSSTORE+ENVADR)
                LD  (ENSSTORE+ENVPTR),HL
                LD  HL,00
                LD  (ENSSTORE),HL

GATING:         LD   A,(BUFF+7)
                AND  (IX+CH_ENABLE)
                OR   L
                AND  32+16+8+4+2+1
                LD   (BUFF+7),A
;-------

DOENV_ENT:      PUSH IX
                POP  HL
                LD   D,(IX+ENVPTR+1)
                LD   E,(IX+ENVPTR)
                INC  (HL)
                LD   A,(DE)
                SUB  (HL)
                JP  NZ,NOENV
                LD   (HL),A
                INC DE
                LD  A,(DE)

                ADD (IY+0)
                SUB  128
                LD   (IY+0),A

                INC  DE
                INC  HL
                INC  (HL)
                LD   A,(DE)
                SUB  (HL)
                JP  NZ,NOENV
                LD   (HL),A
                INC  DE
                LD   A,(DE)
                INC  A
                JP   NZ,NEXTSECT
                LD   D,(IX+ENVADR+1)
                LD   E,(IX+ENVADR)
NEXTSECT:       LD   (IX+ENVPTR+1),D
                LD   (IX+ENVPTR),E

;----
NOENV:          LD HL,(PITCHTEMP)   ;PAUSE ?
                LD A,H
                OR L
                RET Z
                LD A,(IX+INTERVAL)  ;CHORD ?
                OR A
                JR NZ,DOCHORD
DOENT:          PUSH IX
                POP  HL
                INC HL
                INC HL
                LD   D,(IX+ENTPTR+1)
                LD   E,(IX+ENTPTR)
                INC  (HL)
                LD   A,(DE)
                SUB  (HL)
                JP  NZ,NOPITCH
                LD   (HL),A
                INC DE
                LD  A,(DE)
                LD  C,A
                INC  DE
                INC  HL
                INC  (HL)
                LD   A,(DE)
                SUB  (HL)
                JP  NZ,DOPITCH
                LD   (HL),A
                INC  DE
                LD   A,(DE)
                INC  A
                JP   NZ,NEXTSECT2
                LD   D,(IX+ENTADR+1)
                LD   E,(IX+ENTADR)
NEXTSECT2:      LD   (IX+ENTPTR+1),D
                LD   (IX+ENTPTR),E

DOPITCH:        LD HL,(PITCHTEMP)
                LD B,0
;*******
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
;*******

GETOUT:         RET

NOPITCH:        LD HL,(PITCHTEMP)
                RET

DOCHORD:        DEC (IX+CHORDTOGGLE)
                LD A,(IX+CURRENTNOTE)
                JR Z,FINDSETPITCH
                ADD (IX+INTERVAL)
                LD (IX+CHORDTOGGLE),1

;PITCHTAB        EQU  SOUNDATA

FINDSETPITCH:   ADD  A,A
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
;------
DOENSE:         LD DE,(ENSSTORE+4)
                LD HL,ENSSTORE
                INC  (HL)
                LD   A,(DE)
                SUB  (HL)
                RET  NZ
                LD   (HL),A
                INC DE
                LD  A,(DE)
                LD  C,A
                INC  DE
                INC  HL
                INC  (HL)
                LD   A,(DE)
                SUB  (HL)
                JP  NZ,DONSE
                LD   (HL),A
                INC  DE
                LD   A,(DE)
                INC  A
                JP   NZ,NEXTSECT3
                LD   DE,(ENSSTORE+12)
NEXTSECT3:      LD   (ENSSTORE+4),DE

DONSE:          LD HL, BUFF+6
                LD   A,(HL)
                ADD  A,C
                SUB  128
                LD   (HL),A
                CP 17
                RET C
NOISEOFF:       INC HL    ;HL=BUFF+7
                LD A,(HL)
                OR 32+16+8
                LD (HL),A
                RET

;---------------------

BUFF:     DW  00
          DW  00
          DW  00
          DB  0
          DB  32+16+8
          DB  0
          DB  0
          DB  0
          DB  1,1
          DB  12

PITCHTEMP:  DW 00

NSEFLAG:    DB 0

STOPHANG:   DB 0

ENSSTORE: DW 00
          DW 10
          DW 00
          DW 04
          DW 00
          DW 18
          DW 00

;CHANNEL STORES

STORE1:   DW  00
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
          DB   8          ;NOISE DIS
          DB  32+16+4+2-4 ;CHAN ENABLE  (-4 'COS CHORUS=CH3 ALWAYS ON)
          DB  0
          DB  0
          DB  0

STORE2: DW  00
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
        DW 00
        DW  00
        DB  0
        DB  16
        DB  32+8+4+1-4
        DB  0
        DB  0
        DB  0

STORE3: DW  00
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
        DW 00
        DW  00
        DB  0
        DB  32
        DB  16+8+2+1
        DB  0
        DB  0
        DB  0
;---------------------48K SOUND----------------

TUNE48K:

;*************
IF SPECVERSION
                CALL SILENCE                
                CALL STARTUNE
                LD A,1
                LD (SPEC48FLAG),A
                LD BC, 320*4
FFWD:           PUSH BC
                CALL PLAY
                POP BC
                DEC BC
                LD A,B
                OR C
                JP NZ,FFWD

PLAY48:         XOR A        ;NOW STAYS IN THIS LOOP
                IN A,(254)
                CPL
                AND 31
                RET NZ       ;OUT IF ANY KEY
                CALL PLAY    ;SWTS PITCHES AS IF 128K TUNE
                LD DE,4000   ;TEMPO OF 48K TUNE

                LD HL,(BUFF)  ;main tunes note
                LD A,H
                OR L
                JP NZ,SETPER
                LD HL,(BUFF+2)  ;chan2 note if main chan is pause

SETPER:         DEC HL         ;PAUSE (0) TO 65535 = V.LONG PERIOD BEEP!
                LD (PERIOD),HL

PART1:          LD A,0-0     ;SELF MOD 0 <> 16
                XOR 16
                LD (PART1+1),A
                OUT (&FE),A    ;TOGGLE BEEPER (BIT 4)
                LD HL,(PERIOD)
LOOP1:          DEC E
                JR NZ,CONT
                DEC E
                DEC D
                JR Z,PLAY48
CONT:           DEC L
                JP NZ,LOOP1
                LD A,H
                OR A
                JR Z,PART1
                DEC H
                DEC L
                JP LOOP1

PERIOD          DW 00

ENDIF
;********

SPARE           DB 42

;---------
SOUNDATA
	db #00,#00
	dw #0ddb,#0d14,#0c58,#0ba7
	dw #0aff,#0a61,#09cc,#093f
	dw #08bb,#083d,#07c7,#0757
	dw #06ee,#068a,#062c,#05d3
	dw #0580,#0531,#04e6,#04a0
	dw #045d,#041f,#03e3,#03ac
	dw #0377,#0345,#0316,#02ea
	dw #02c0,#0298,#0273,#0250
	dw #022f,#020f,#01f2,#01d6
	dw #01bb,#01a2,#018b,#0175
	dw #0160,#014c,#013a,#0128
	dw #0117,#0108,#00f9,#00eb
	dw #00de,#00d1,#00c6,#00ba
	dw #00b0,#00a6,#009d,#0094
	dw #008c,#0084,#007c,#0075
	dw #006f,#0069,#0063,#005d
	dw #0058,#0053,#004e,#004a
	dw #0046,#0042,#003e,#003b
	dw #0037,#0034,#0031,#002f
	dw #002c,#002a,#0027,#0025
	dw #0023,#0021,#001f,#001d
	dw #001c,#001a,#0019,#0017
	dw #0016,#0015,#0014,#0012
	dw #0011,#0010,#0010,#000f
	dw #000e,#000d
	db #01,#83,#7c,#01,#80,#01,#8a,#01
	db #ac,#01,#b3,#01,#bd,#01,#c7,#01
	db #d1,#01,#db,#01,#e8,#01,#f2,#01
	db #f3,#01,#f4,#01,#fe,#01,#08,#02
	db #1b,#02,#22,#02,#2c,#02,#30,#02
	db #79,#02,#7d,#02,#81,#02,#8b,#02
	db #98,#02,#99,#02,#a6,#02,#ad,#02
	db #b1,#02,#be,#02,#ce,#02,#cf,#02
	db #d6,#02,#e3,#02,#ea,#02,#f1,#02
	db #f2,#02,#fc,#02,#03,#03,#04,#03
	db #ec,#00,#ed,#0c,#1c,#03,#c3,#03
	db #ff,#04,#03,#05,#24,#05,#4d,#05
	db #63,#05,#c4,#05,#c5,#05,#ca,#05
	db #f5,#05,#5c,#06,#a1,#06,#cc,#06
	db #ef,#06,#18,#07,#35,#07,#a4,#07
	db #c9,#07,#20,#08,#77,#08,#9c,#08
	db #e1,#08,#e2,#08,#e7,#08,#ea,#08
	db #ed,#08,#f4,#08,#f7,#08,#fa,#08
	db #01,#09,#10,#09,#19,#09,#2e,#09
	db #3f,#09,#50,#09,#5d,#09,#6c,#09
	db #7b,#09,#8d,#09,#9a,#09,#ac,#09
	db #ba,#09,#c2,#09,#ca,#09,#e2,#09
	db #f1,#09,#00,#0a,#06,#ea,#c8,#80
	db #c8,#ff,#01,#81,#0d,#03,#7f,#0d
	db #c8,#80,#c8,#ff,#01,#8c,#01,#01
	db #7f,#02,#01,#81,#01,#02,#7f,#02
	db #02,#81,#02,#03,#7f,#01,#03,#81
	db #01,#04,#7f,#01,#04,#81,#01,#0b
	db #7f,#06,#c8,#80,#c8,#ff,#01,#8a
	db #01,#c8,#80,#c8,#ff,#01,#8c,#01
	db #01,#7e,#06,#c8,#80,#c8,#ff,#01
	db #8a,#01,#08,#7f,#0a,#c8,#80,#c8
	db #ff,#01,#8a,#01,#03,#7f,#0a,#c8
	db #80,#c8,#ff,#01,#8a,#01,#02,#7f
	db #0a,#c8,#80,#c8,#ff,#01,#8b,#01
	db #01,#80,#01,#01,#7c,#01,#c8,#80
	db #c8,#ff,#01,#8b,#01,#02,#7c,#01
	db #c8,#80,#c8,#ff,#ff,#ff,#02,#81
	db #02,#02,#7f,#03,#02,#81,#01,#ff
	db #01,#81,#02,#01,#7f,#03,#01,#81
	db #01,#ff,#01,#88,#01,#02,#78,#02
	db #01,#88,#01,#02,#88,#01,#01,#78
	db #02,#02,#88,#01,#ff,#01,#89,#01
	db #02,#7d,#03,#ff,#01,#86,#02,#01
	db #7e,#01,#01,#7b,#02,#ff,#01,#87
	db #c8,#ff,#07,#80,#01,#01,#81,#01
	db #01,#7f,#01,#01,#81,#02,#01,#7f
	db #03,#01,#81,#01,#01,#82,#02,#01
	db #7e,#03,#01,#82,#01,#01,#83,#02
	db #01,#7d,#03,#01,#83,#01,#01,#84
	db #02,#01,#7c,#03,#01,#84,#01,#01
	db #85,#02,#01,#7b,#03,#01,#85,#01
	db #01,#84,#02,#01,#7c,#03,#01,#84
	db #01,#01,#82,#02,#01,#7e,#03,#01
	db #82,#01,#ff,#01,#81,#c8,#ff,#01
	db #7e,#c8,#ff,#01,#80,#01,#01,#b4
	db #01,#c8,#80,#c8,#ff,#01,#80,#01
	db #01,#8b,#01,#01,#b4,#01,#c8,#80
	db #c8,#ff,#ff,#01,#89,#01,#01,#82
	db #03,#01,#7e,#07,#c8,#80,#c8,#ff
	db #01,#83,#05,#01,#7f,#0f,#ff,#01
	db #84,#01,#ff,#01,#8f,#01,#01,#7e
	db #01,#03,#80,#01,#02,#7f,#0f,#ff
	db #01,#84,#01,#01,#7c,#01,#01,#84
	db #01,#01,#77,#01,#01,#85,#01,#ff
	db #ff,#01,#83,#03,#01,#7c,#03,#ff
	db #01,#8a,#01,#01,#7c,#01,#01,#84
	db #01,#01,#76,#01,#ff,#01,#91,#02
	db #01,#6f,#02,#ff,#02,#81,#01,#01
	db #7f,#01,#ff,#ff,#01,#80,#01,#01
	db #84,#01,#01,#7c,#01,#ff,#01,#8f
	db #01,#c8,#80,#c8,#ff,#ff,#01,#8f
	db #01,#01,#79,#01,#01,#85,#01,#01
	db #7f,#0f,#c8,#80,#c8,#ff,#24,#04
	db #24,#08,#01,#02,#02,#e9,#01,#f4
	db #14,#02,#02,#e9,#07,#ea,#0c,#ec
	db #00,#ed,#0c,#e8,#ee,#05,#e9,#06
	db #ea,#0d,#ee,#05,#ee,#05,#ec,#0c
	db #ee,#05,#ec,#07,#e9,#08,#ed,#00
	db #ee,#06,#ee,#06,#ee,#06,#ee,#06
	db #ed,#18,#e9,#02,#ec,#00,#ea,#12
	db #ee,#07,#e9,#08,#ed,#0e,#ec,#0c
	db #ee,#0b,#ed,#0f,#ee,#0b,#ed,#0e
	db #ee,#0b,#ed,#13,#ee,#0b,#ed,#18
	db #ec,#00,#ea,#12,#e9,#02,#ee,#0e
	db #ee,#0f,#e9,#08,#ec,#0c,#ee,#11
	db #ee,#11,#ed,#1a,#ee,#11,#ee,#11
	db #ed,#0c,#ee,#0b,#ee,#0b,#ee,#0b
	db #ec,#00,#e9,#06,#ea,#00,#ed,#18
	db #00,#40,#ee,#15,#ee,#12,#ee,#15
	db #ed,#1b,#ee,#12,#ec,#0c,#ed,#18
	db #ee,#15,#ee,#12,#ee,#15,#ed,#1b
	db #ee,#12,#e9,#02,#ea,#12,#ec,#00
	db #ed,#0c,#ee,#16,#ed,#18,#ee,#16
	db #ed,#0e,#ec,#0c,#ee,#0b,#ed,#0c
	db #ee,#0b,#01,#01,#ef,#f4,#14,#e9
	db #06,#ea,#0d,#ec,#00,#ed,#00,#e8
	db #ee,#05,#e9,#03,#ea,#0e,#18,#80
	db #18,#80,#e9,#09,#ea,#00,#ee,#04
	db #ee,#04,#ee,#04,#ee,#04,#ee,#04
	db #ee,#04,#ee,#04,#ee,#04,#ee,#04
	db #ee,#04,#ee,#04,#ee,#04,#ee,#0c
	db #ee,#0c,#ed,#05,#ee,#0c,#ed,#07
	db #ee,#0c,#ed,#00,#ee,#0c,#ee,#0c
	db #ee,#0c,#ee,#0c,#ed,#05,#ee,#0c
	db #ed,#07,#ee,#0c,#ed,#00,#ee,#0c
	db #ee,#0c,#ed,#02,#ee,#0a,#ee,#0a
	db #ed,#03,#ee,#0a,#ee,#0a,#ed,#02
	db #ee,#0a,#ee,#0a,#ed,#07,#ee,#0a
	db #ee,#0a,#ed,#0c,#e9,#04,#ee,#0d
	db #ee,#0d,#ed,#0a,#ee,#0d,#ee,#0d
	db #ed,#08,#ee,#0d,#ed,#0a,#ee,#0d
	db #ed,#0c,#ee,#0d,#ee,#0d,#ee,#0d
	db #ee,#0d,#ed,#0a,#ee,#0d,#ee,#0d
	db #ed,#08,#ee,#0d,#ed,#0a,#ee,#0d
	db #ed,#0c,#ee,#0d,#ee,#0d,#e9,#05
	db #ed,#00,#ee,#10,#ee,#10,#ee,#10
	db #ee,#10,#ed,#02,#ee,#10,#ee,#10
	db #ee,#10,#ee,#10,#ed,#00,#e9,#09
	db #ee,#0a,#ee,#0a,#ee,#0a,#ee,#0a
	db #ee,#0a,#ee,#0a,#e9,#06,#ea,#00
	db #ed,#0c,#ee,#13,#ee,#13,#ed,#0a
	db #ee,#14,#ed,#0c,#ee,#13,#ed,#0d
	db #ee,#14,#ed,#0c,#ee,#13,#ed,#0a
	db #ee,#14,#ed,#0c,#ee,#13,#ed,#0d
	db #ee,#14,#ed,#0c,#ee,#13,#ed,#0a
	db #ee,#14,#ed,#0c,#ee,#13,#ed,#0d
	db #ee,#14,#ed,#0c,#ee,#13,#ed,#0a
	db #ee,#14,#ed,#0c,#ee,#13,#ed,#0d
	db #ee,#14,#ed,#0c,#ee,#13,#ed,#0a
	db #ee,#14,#ed,#0c,#ee,#13,#ed,#0d
	db #ee,#14,#ed,#0c,#ee,#13,#ed,#0a
	db #ee,#14,#ed,#0c,#ee,#13,#ed,#0d
	db #ee,#14,#ed,#02,#ee,#0a,#ee,#0a
	db #ed,#00,#ee,#0a,#ee,#0a,#01,#01
	db #ef,#ef,#ef,#ef,#18,#18,#04,#18
	db #04,#1f,#04,#18,#04,#18,#04,#20
	db #04,#1f,#04,#18,#04,#18,#04,#1d
	db #04,#18,#04,#1f,#04,#18,#04,#20
	db #04,#1d,#04,#1f,#04,#ef,#24,#04
	db #24,#04,#24,#08,#1f,#04,#20,#2c
	db #24,#04,#24,#04,#24,#08,#1d,#04
	db #1f,#2c,#24,#04,#24,#04,#24,#08
	db #1b,#04,#1d,#2c,#24,#04,#22,#04
	db #1f,#08,#1b,#04,#18,#2c,#ef,#30
	db #08,#30,#04,#30,#08,#30,#04,#30
	db #08,#30,#08,#30,#08,#30,#04,#30
	db #04,#30,#08,#ef,#10,#18,#40,#18
	db #10,#1b,#10,#1a,#10,#16,#10,#1d
	db #40,#1f,#10,#1d,#10,#1b,#08,#16
	db #08,#18,#08,#1a,#08,#18,#40,#00
	db #40,#24,#40,#22,#10,#1f,#10,#22
	db #10,#24,#10,#1d,#40,#1f,#10,#1d
	db #10,#1b,#10,#1a,#10,#18,#40,#ea
	db #11,#eb,#13,#e9,#08,#e6,#06,#37
	db #08,#e6,#06,#35,#04,#e6,#06,#34
	db #08,#e6,#06,#32,#04,#e6,#06,#30
	db #08,#e6,#06,#2f,#08,#e6,#06,#2d
	db #08,#e6,#06,#2b,#04,#e6,#06,#29
	db #04,#e6,#06,#28,#08,#ef,#ef,#ef
	db #06,#00,#04,#e6,#18,#04,#18,#04
	db #24,#04,#24,#04,#22,#04,#1f,#04
	db #1d,#04,#18,#04,#18,#04,#24,#04
	db #24,#04,#eb,#15,#e6,#01,#1f,#02
	db #e6,#01,#21,#02,#e6,#01,#22,#04
	db #1f,#04,#1d,#04,#1b,#04,#ef,#eb
	db #16,#e6,#01,#27,#04,#e6,#01,#27
	db #04,#e6,#01,#27,#04,#e6,#06,#00
	db #08,#e6,#06,#00,#04,#e6,#06,#00
	db #04,#e6,#0e,#27,#04,#e6,#06,#2b
	db #04,#e6,#0e,#00,#04,#e6,#06,#2b
	db #04,#e6,#0e,#00,#04,#29,#04,#27
	db #04,#29,#04,#e6,#06,#27,#04,#eb
	db #16,#e6,#06,#00,#04,#e6,#01,#00
	db #04,#e6,#06,#00,#04,#e6,#0e,#00
	db #08,#e6,#06,#00,#04,#e6,#06,#00
	db #04,#e6,#06,#00,#04,#e6,#01,#00
	db #04,#e6,#06,#00,#04,#e6,#06,#00
	db #04,#e6,#06,#00,#14,#ef,#ec,#18
	db #18,#04,#ec,#00,#18,#04,#ec,#11
	db #1f,#04,#ec,#18,#18,#04,#ec,#00
	db #18,#04,#ec,#10,#20,#04,#ec,#11
	db #1f,#04,#ec,#00,#18,#04,#ec,#18
	db #18,#04,#ec,#00,#1d,#04,#ec,#18
	db #18,#04,#ec,#00,#1f,#04,#ec,#18
	db #18,#04,#ec,#10,#20,#04,#ec,#13
	db #1d,#04,#ec,#00,#1f,#04,#ef,#0c
	db #27,#0c,#29,#eb,#15,#e6,#01,#18
	db #04,#e6,#01,#18,#04,#e6,#01,#18
	db #04,#e6,#01,#18,#02,#e6,#01,#18
	db #02,#e6,#01,#18,#04,#e6,#01,#18
	db #04,#e6,#01,#18,#02,#e6,#01,#18
	db #02,#e6,#01,#18,#04,#ef,#24,#0c
	db #24,#0c,#26,#08,#27,#0c,#26,#0c
	db #24,#08,#26,#0c,#24,#0c,#22,#08
	db #1d,#20,#1b,#0c,#1d,#0c,#1f,#08
	db #22,#0c,#24,#0c,#26,#08,#24,#40
	db #ef,#24,#0c,#24,#0c,#26,#08,#27
	db #0c,#29,#0c,#2b,#08,#29,#0c,#2e
	db #0c,#29,#08,#26,#20,#24,#0c,#27
	db #0c,#29,#08,#27,#0c,#26,#0c,#22
	db #08,#24,#40,#ef,#a2,#e6,#06,#00
	db #02,#e6,#18,#08,#24,#04,#2b,#04
	db #2e,#04,#2d,#04,#2b,#04,#18,#04
	db #18,#08,#24,#04,#2b,#04,#2e,#04
	db #2d,#04,#2b,#04,#29,#04,#ef,#eb
	db #15,#e6,#04,#1f,#04,#e6,#04,#00
	db #04,#24,#04,#e6,#0e,#00,#04,#e6
	db #04,#1f,#04,#e6,#04,#00,#04,#24
	db #04,#e6,#06,#20,#04,#e6,#04,#00
	db #04,#e6,#04,#24,#04,#20,#08,#1d
	db #04,#e6,#04,#00,#04,#e6,#06,#24
	db #04,#e6,#06,#00,#02,#e6,#06,#00
	db #02,#e6,#04,#1f,#04,#e6,#04,#00
	db #04,#24,#08,#e6,#04,#1f,#04,#e6
	db #04,#00,#04,#24,#04,#e6,#06,#27
	db #04,#e6,#04,#00,#04,#e6,#04,#26
	db #04,#24,#08,#e6,#04,#26,#04,#e6
	db #04,#00,#04,#22,#04,#e6,#06,#00
	db #02,#e6,#06,#00,#02,#ef,#22,#04
	db #1d,#04,#1a,#04,#16,#04,#1a,#04
	db #1d,#04,#22,#04,#1d,#04,#26,#04
	db #22,#04,#26,#04,#29,#04,#26,#04
	db #22,#04,#1d,#04,#1a,#04,#ef,#9f
	db #a4,#a7,#a6,#eb,#16,#ec,#13,#e6
	db #01,#18,#04,#ec,#00,#e6,#01,#0c
	db #04,#e6,#06,#0c,#04,#ec,#13,#e6
	db #01,#18,#04,#ec,#00,#e6,#01,#18
	db #04,#e6,#01,#0c,#04,#ec,#1f,#e6
	db #06,#0c,#04,#ec,#00,#e6,#06,#18
	db #04,#e6,#01,#0f,#04,#e6,#01,#0f
	db #04,#ec,#10,#e6,#06,#1b,#04,#ec
	db #00,#e6,#01,#0f,#04,#e6,#01,#13
	db #04,#ec,#18,#e6,#06,#13,#04,#ec
	db #00,#e6,#06,#1f,#04,#e6,#06,#13
	db #04,#ef,#eb,#16,#ec,#13,#e6,#01
	db #18,#04,#ec,#00,#e6,#01,#18,#04
	db #e6,#06,#18,#04,#ec,#13,#e6,#01
	db #18,#04,#ec,#00,#e6,#01,#18,#04
	db #e6,#01,#0c,#04,#ec,#1f,#e6,#06
	db #0c,#04,#ec,#00,#e6,#06,#18,#04
	db #e6,#01,#10,#04,#e6,#01,#10,#04
	db #ec,#0f,#e6,#06,#1c,#04,#ec,#00
	db #e6,#01,#10,#04,#e6,#01,#13,#04
	db #ec,#18,#e6,#06,#13,#04,#ec,#00
	db #e6,#06,#13,#04,#e6,#06,#13,#04
	db #ef,#18,#04,#1b,#04,#1f,#04,#24
	db #04,#18,#04,#1b,#04,#1f,#04,#18
	db #04,#18,#04,#1b,#04,#1f,#04,#24
	db #04,#27,#04,#26,#04,#24,#04,#1f
	db #04,#ef,#1e,#eb,#21,#e8,#24,#0c
	db #27,#0c,#24,#08,#2b,#0c,#29,#0c
	db #27,#08,#29,#0c,#26,#0c,#24,#08
	db #22,#20,#24,#0c,#27,#0c,#2b,#08
	db #2e,#0c,#2b,#0c,#2e,#08,#2c,#40
	db #2b,#0c,#30,#0c,#2b,#08,#33,#0c
	db #32,#0c,#30,#08,#32,#0c,#2e,#0c
	db #29,#08,#32,#20,#33,#0c,#37,#0c
	db #33,#08,#30,#0c,#33,#0c,#30,#08
	db #31,#40,#ef,#ef,#ef,#01,#f0,#14
	db #e8,#00,#01,#f0,#00,#01,#f0,#00
	db #01,#f0,#00,#0a,#e9,#00,#00,#01
	db #f0,#00,#01,#f0,#00,#01,#f0,#4a
	db #11,#f0,#04,#04,#e9,#18,#eb,#14
	db #e8,#e7,#0f,#00,#0a,#e9,#00,#00
	db #01,#f0,#04,#e9,#19,#ea,#1a,#e8
	db #4a,#11,#f0,#04,#e9,#1b,#eb,#1c
	db #e8,#e7,#0c,#00,#03,#e7,#0a,#00
	db #18,#e9,#00,#00,#01,#f0,#12,#e8
	db #04,#e9,#19,#ea,#26,#eb,#0d,#e8
	db #e7,#02,#5a,#11,#e9,#00,#00,#01
	db #f0,#03,#e9,#1b,#ea,#20,#eb,#12
	db #e8,#e7,#08,#27,#1c,#e9,#00,#00
	db #01,#f0,#04,#e9,#26,#ea,#24,#e8
	db #52,#0c,#f0,#e8,#e7,#06,#52,#04
	db #e9,#01,#ea,#23,#eb,#23,#e8,#e7
	db #06,#44,#2c,#00,#01,#f0,#04,#e9
	db #01,#ea,#23,#ea,#23,#e8,#e7,#07
	db #52,#2c,#00,#01,#f0,#04,#e9,#01
	db #ea,#23,#eb,#23,#e8,#e7,#01,#49
	db #2c,#00,#01,#f0,#04,#00,#02,#01
	db #e9,#1e,#eb,#21,#e8,#e7,#01,#00
	db #20,#02,#29,#f0,#02,#e9,#1f,#eb
	db #00,#e7,#06,#00,#02,#e7,#08,#00
	db #02,#e7,#06,#00,#02,#ef,#02,#e9
	db #05,#ea,#13,#eb,#0c,#e8,#e7,#01
	db #2f,#4d,#f0,#35,#01,#e9,#0f,#ea
	db #10,#0c,#05,#ef,#01,#e9,#10,#ea
	db #0f,#0e,#03,#ef,#03,#e9,#26,#ea
	db #26,#eb,#26,#e8,#e7,#01,#35,#09
	db #00,#01,#f0,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#04,#e9,#26,#ea
	db #20,#eb,#0c,#e8,#e7,#07,#5f,#0f
	db #00,#01,#f0,#04,#e9,#01,#ea,#01
	db #eb,#0b,#e8,#e7,#0b,#1d,#26,#00
	db #01,#f0,#04,#e9,#13,#ea,#11,#eb
	db #12,#e8,#e7,#04,#39,#2b,#00,#01
	db #f0,#00
FINISH          DEFL $
                LIST
;                CLOSE
;START           DEFL START
;FINISH          DEFL FINISH
LENGTH          DEFL FINISH-START
;
.music_info
	db "Battle Valley (1988)(Hewson)(Dave Rogers)",0
	db "BATVALSD.ASM - Battle Valley sound driver - J.Dave Rogers, March 1988",0

	read "music_end.asm"
