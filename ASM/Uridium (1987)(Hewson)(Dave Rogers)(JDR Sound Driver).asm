; Music of Uridium (1987)(Hewson)(Dave Rogers)(JDR Sound Driver)
; Ripped by Megachur the 05/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "URIDIUM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #3d08

	read "music_header.asm"

; URIDISD.ASM      URIDIUM Sound Driver      J.DAVE ROGERS. Liverpool. 1987.

;**************************************************************************
SOUNDCOD        EQU       music_begin	;machine code load address. length 758
;SOUNDATA        EQU       40760     ;datablock load address.   length 1430
;**************************************************************************

                NOLIST

PITCHTAB        EQU       SOUNDATA        ;200 bytes
ENVSINDEX       EQU       PITCHTAB+200    ;70  bytes
TUNESINDEX      EQU       ENVSINDEX+70    ;104 bytes
ENVS            EQU       TUNESINDEX+110  ;304 bytes
TUNEBLOCS       EQU       ENVS+307        ;

envcounts       EQU 0    ;offsets within channel stores:
entcounts       EQU 2
envptr          EQU 4
entptr          EQU 6
env0            EQU 8
ent0            EQU 10
envadr          EQU 12
entadr          EQU 14

chanactive      EQU 16   ;1
maincount       EQU 17   ;1
dataptr         EQU 18   ;2
conptr          EQU 20   ;2
ptrrefr         EQU 22   ;2
pitchshift      EQU 24   ;1
noiseflag       EQU 25   ;1
noisedis        EQU 26   ;1
ch_enable       EQU 27   ;1
advolreg        EQU 28   ;2
stophang        EQU 30   ;1

;                ORG  SOUNDCOD
;                WRITE "URIDISD.BIN"
start           DEFL $

;------------------------------------------------------------------------------

JUMPBLOCK       JP PLAY          ;used for convenience in Basic Demo
                JP SILENCE
;
.init_music		; e = 1 or 49 (little theme)
POKE_BASIC      LD E,1           ;tunebloc
;
                LD A,1           ;chan
                JR STARTACHAN

;------------------------
;  "E" MUST CONTAIN THE NUMBER OF THE TUNEBLOC TO BE STARTED
;  CALL CH1, PUTS TUNE ON CHANNEL 1, CH2 = CHANNEL 2
;  CALL CHANALT, DYNAMICALLY ALLOCATES TO CHANS 2/3 ALTERNATELY

CH1             LD A,1
                JR STARTACHAN
CH2             LD A,2
                JR STARTACHAN
CHANALT         LD A,2
                XOR 1
                LD (CHANALT+1),A   ;A GOES 2,3,2,3....

STARTACHAN      LD IX,STORE1      ;E contains tunebloc num, A contains chan num
                DEC A
                JR Z ,IXfound
                LD IX,STORE2
                DEC A
                JR Z,IXfound
                LD IX,STORE3
IXfound         CALL FINDBLOC           ;RETURNS BLOCAD IN HL
                LD   (IX+DATAPTR),L     ;set pointers for this channel
                LD   (IX+DATAPTR+1),H
                LD   (IX+CONPTR),L
                LD   (IX+CONPTR+1),H
                LD   (IX+PTRREFR),L     ;ptr refresh
                LD   (IX+PTRREFR+1),H
                LD (IX+CHANACTIVE),1
                LD (IX+MAINCOUNT),1
                LD A,0
                LD (IX+PITCHSHIFT),A
                LD (CHORUSFLAG),A
                RET                
;-----------------------
;
.stop_music
SILENCE         XOR A
;
                LD  (STORE1+CHANACTIVE),A    ;channel-active-flags 0
                LD  (STORE2+CHANACTIVE),A
                LD  (STORE3+CHANACTIVE),A
                LD (BUFF+8),A                ;volume registers 0
                LD (BUFF+9),A
                LD (BUFF+10),A
                LD   A,1+2+4+8+16+32         ;all gates shut
                LD   (BUFF+7),A              ;follow through to allregist

ALLREGIST       XOR  A
                LD   HL,BUFF+13              ;register buffer
                LD   DE,#F40D                ;D=Psg data port, E=counter
nextreg         LD   B,D
                OUT  (C),E                   ;output register No
                LD   BC,#F6*256+%11000000
                OUT  (C),C                   ;tell PSG to latch reg No
                OUT  (C),A                   ;PSG to inactive
                LD   B,D
                LD   C,(HL)                  ;C=register data
                DEC  HL
                OUT  (C),C                   ;output register data
                LD   BC,#F6*256+%10000000
                OUT  (C),C                   ;tell PSG to read reg data
                OUT  (C),A                   ;PSG to inactive
                DEC  E
                JP   P,nextreg
                RET
;------------
FINDBLOC        LD   A,E
                ADD  A,A
                ADD  A,TUNESINDEX AND #00FF
                LD   L,A
                ADC  A,TUNESINDEX AND #FF00 /256
                SUB  L
                LD   H,A              ;HL now points to 2byte value in table 
                LD   E,(HL)
                INC  HL
                LD   D,(HL)           ;DE=value(offset)
                LD HL,TUNEBLOCS
                ADD HL,DE             ;HL=address of new tunebloc
                RET

FINDENV         LD   A,E
                ADD  A,A
                ADD  A,ENVSINDEX AND #00FF       ;16 bit add using 8 bit ops
                LD   L,A
                ADC  A,ENVSINDEX AND #FF00 / 256
                SUB  L
                LD   H,A              ;HL points to 2byte offset
                LD   E,(HL)
                INC  HL
                LD   D,(HL)           ;DE=offset     
                LD HL,ENVS
                ADD HL,DE             ;HL=envelope address
                RET

;--------------------MAIN CALL--------EVERY 1/50 SECOND-----------------------

;
.play_music
PLAY            CALL ALLREGIST     ;throw all buffer into sound chip registers
;
                LD   IX,STORE1     ;---do channel 1 (IX points to chan1 store)
                LD   IY,BUFF       ;  (IY holds addr of pitchstore for chan1) 
                CALL TESTCHAN
                LD   IX,STORE2     ;---do channel 2
                LD   IY,BUFF+2
                CALL TESTCHAN
                LD   IX,STORE3     ;---do channel 3
                LD   IY,BUFF+4
                CALL TESTCHAN
                CALL DOENSE        ;do noise envelope
                LD A,(CHORUSFLAG)  ;test if autochorus on
                OR A
                RET Z
                LD HL,(BUFF)
                LD BC,4
                ADD HL,BC
                LD (BUFF+4),HL
                RET              ;-------------->>>>>>> out

;FOR EACH OF THE 3 CHANNELS:

TESTCHAN        LD  A,(IX+CHANACTIVE)   ;CHAN ACTIVE?
                OR A
                RET Z                   ;do nothing if channel not active
                DEC  (IX+maincount)     ;duration countdown, new note when 0
                JP NZ,DOENV_ENT
                LD (IX+STOPHANG),30

READDECIDE      LD  H,(IX+dataptr+1)    ;get data ptr address
                LD  L,(IX+dataptr)
DECI            LD   A,(HL)             ;A=peek(ptr)
                INC  HL
                LD   E,(HL)             ;E=peek(ptr+1)
                INC HL                  ;inc and store ptr for next time
CONTPTR         LD (IX+DATAPTR+1),H
                LD (IX+DATAPTR),L
                DEC (IX+STOPHANG)
                RET Z     ;gets out of possible endless loops after 30 passes 
;-------------------------------------------------------------
; THE FOLLOWING ROUTINES RESPOND TO DATA AND JUMP BACK TO READDECIDE OR DECI,
; EVENTUALLY EXITING VIA "NEWNOTE" OR "KILLCHAN" ROUTINES

SUBSELECT       CP   0             ;A=VALUE
                JP   Z,DOPAUSE     ;pitch 0 = pause
                CP   101
                JP   C,NEWNOTE     ;LESS THAN 100=normal note
                CP   220
                JP   C,SINGLENOTE  
                CP   228
                JR   Z,NOISE       ;add noise to a note
                CP   225
                JR   Z,KILLCHAN    ;shut chan after e.g.short sound effects
                CP   233
                JR   Z,NEWENT      ;set new tone-envelope for current channel
                CP   232
                JR   Z,NEWENV      ;set new volume-env for current chan
                CP   234
                JR   Z,NEWENSE     ;set new noise-envelope
                CP   229
                JR   Z,GONEWBLOCK  ;play a given tunebloc,then return to 1st
                CP   230
                JR   Z,NEWKEY      ;change musical key for current chan
                CP   235
                JR   Z,CHORUSONOFF ;switch autochorus on or off 
                CP   255
                JR   Z,RETCONBLOC  ;end-of-tunebloc marker
                CP   252
                RET  C        ;SAFETY NET 
                              ;vals 252,253,254=follow through:

STARTLOOP       PUSH IX            ;252=STARTCHAN1, 253=CHAN2, 254=CHAN3
                SUB 251            ;A=CHAN E=TUNEBLOC
                CALL STARTACHAN
                POP IX
                JR READDECIDE       

NOISE           LD   A,E
                LD   (BUFF+6),A        ;noisepitch
                LD   (IX+noiseflag),1
                JR   DECI

NEWKEY          LD   (IX+pitchshift),E
                JR   DECI

NEWENT          CALL FINDENV           ;returns with envelope address in HL
                LD (IX+ENTADR),L
                LD (IX+ENTADR+1),H
                JR READDECIDE

NEWENV          CALL FINDENV
                LD (IX+ENVADR),L
                LD (IX+ENVADR+1),H
                JR READDECIDE

NEWENSE         CALL FINDENV
                LD (ENSSTORE+12),HL
                JP READDECIDE

GONEWBLOCK      LD   (IX+conptr+1),H
                LD   (IX+conptr),L    ;leaving bloc so store ptr
                CALL FINDBLOC
                JP   DECI

RETCONBLOC      LD   H,(IX+conptr+1)  ;(ptr re-enters original "conductor" bloc)
                LD   L,(IX+conptr)
                LD   A,(HL)
                INC A                 ;TEST FOR 255,end-of-conductor-bloc marker
                JR   NZ,NOTEND
                LD   H,(IX+ptrrefr+1)        ;refresh
                LD   L,(IX+ptrrefr)
notend          JP   DECI

KILLCHAN        LD (IX+CHANACTIVE),0
killvol         LD H,(IX+ADVOLREG+1)
                LD L,(IX+ADVOLREG)     ;HL=address of vol register,current chan
                LD (HL),0
                RET

CHORUSONOFF     LD HL,CHORUSFLAG
                LD (HL),E
                JP READDECIDE

SINGLENOTE      AND 127
                DEC HL
                LD E,10
                JP CONTPTR

NEWNOTE         ADD  A,(IX+pitchshift)       ;A=notenum
DOPAUSE         LD   (IX+maincount),E        ;E=duration

                ADD  A,A                     ;get new pitch from pitchtable
                ADD  A,PITCHTAB AND #00FF
                LD   E,A
                ADC  A,PITCHTAB AND #FF00 /256
                SUB  E
                LD   D,A
                LD   A,(DE)
                LD   (IY+0),A        ;IY=address of pitchstore for current chan
                INC  DE
                LD   A,(DE)
                LD   (IY+1),A

                call killvol ;zero volume of current chan

                PUSH IX              ;RESTART ENV/ent
                POP  DE              ;DE=start of chan store
                LD   HL,8
                ADD  HL,DE           ;HL=start of chan store+8
                LDI
                LDI
                LDI
                LDI
                LDI
                LDI
                LDI
                LDI

                DEC  (IX+noiseflag)      ;test noiseflag
                LD  (IX+NOISEFLAG),0     ;RESET EVERY TIME!
                LD  L,(IX+NOISEDIS)      ;DEFAULT DISABLE
                JR   NZ,GATING

NOISEon         LD HL,(ENSSTORE+envadr)  ;restart noise envelope
                LD (ENSSTORE+envptr),HL
                LD HL,00
                LD (ENSSTORE),HL         ;L=0,no noisedisable

GATING          LD   A,(BUFF+7)
                AND  (IX+ch_enable)      ;chan ENable (pitch AND noise on)
                OR   L                   ;noise DISable
                AND 32+16+8+4+2+1        ;SAFETY, top 2 bits must remain off
                LD   (BUFF+7),A          ;FINAL RESULT IN A!
;------------------------------------------------------
                           ;IX points to volume-env workspace for current chan
DOENV_ENT       CALL ENGENERAL         ;returns with "volume change+128" in C
                LD   H,(IX+advolreg+1)
                LD   L,(IX+advolreg)
                LD   A,(HL)
                ADD  A,C  
                SUB  128
                LD   (HL),A
DOENT           INC  IX  ;make IX work on tone-envelope workspace,2 bytes along
                INC  IX
                CALL ENGENERAL         ;returns with "pitch change+128" in C
                LD   H,(IY+1)          ;get pitch of note
                LD   L,(IY+0)
                LD A,H
                OR L
                RET Z         ;no ent if pitch zero(pause)
                ADD  HL,BC
                LD   C,128             ;deduct 128, allows negative changes
                SBC  HL,BC
                LD   (IY+1),H          ;replace in current channel pitch store
                LD   (IY+0),L
                RET

DOENSE          LD   IX,ENSSTORE       ;IX now = noise envelope workspace
                CALL ENGENERAL         ;returns with "noise shift+128" in C 
                LD   A,(BUFF+6)        ;get current noise value
                ADD  A,C
                SUB  128               ;add shift, minus 128
                LD   (BUFF+6),A        ;replace
                CP 17
                RET C
noiseoff        LD A,(BUFF+7)
                OR 32+16+8
                LD (BUFF+7),A 
                RET

ENGENERAL       PUSH IX       ;subroutine to do envelope and return value
                POP  HL                ;points to counts
                LD   D,(IX+ENVPTR+1)   ;points to envelope
                LD   E,(IX+ENVPTR)
                INC  (HL)              ;inc count
                LD   A,(DE)
                SUB  (HL)              ;compare to envelope
                LD   BC,128             ;DEFAULT (C= 128 = 0 )
                RET  NZ                ;count not reached
                LD   (HL),A            ;A=0, resets count
                INC DE                 ;move along envelope
                LD  A,(DE)
                LD  C,A                ;C HOLDS INCREMENT
                INC  DE                ;point at repeats number
                INC  HL
                INC  (HL)              ;point at repeats count
                LD   A,(DE)
                SUB  (HL)              ;compare
                RET  NZ                ;count not reached
                LD   (HL),A            ;A=0, resets count;
                INC  DE                ;move to next section of envelope
                LD   A,(DE)
                INC  A                 ;test for A=255 (end of envelope marker)
                JR   NZ,nextsect
                LD   D,(IX+envadr+1)   ;refresh ptr to start of envelope
                LD   E,(IX+envadr)
nextsect        LD   (IX+envptr+1),D  
                LD   (IX+envptr),E
                RET
;--------------------------------------------------------

BUFF      DW  00       ;a pitch     ;holds replica of sound chip registers
          DW  00       ;b pitch
          DW  00       ;c pitch
          DB  0        ;noise pitch
          DB  32+16+8  ;gates
          DB  0        ;a vol
          DB  0        ;b vol
          DB  0        ;c vol
          DW  100       ;hard env len
          DB  10        ;hard env type

CHORUSFLAG  DB  0

ensstore  DW 00 ;ENSCOUNTS    ;noise envelope workspace
          DW 10               ;dummy spacer to give same format as chan stores
          DW 00 ;ENSPTR
          DW 04
          DW 00 ;ENS0
          DW 18
          DW 00 ;ENSADR
;----------------------------------
;channel stores

STORE1    DW  00        ;env counts
          DW  00        ;ENT COUNTS
          DW  00        ;ENV PTR
          DW  00        ;ENT PTR

          DW  00        ;ENV ZEROERS
          DW  00        ;ENT ZEROERS
          DW  00        ;ENV ADDR
          DW  00        ;ENT ADDR

          DB  0         ;CHAN ACTIVE
          DB  0         ;MAIN COUNT
          DW  00        ;MAIN PTR
          DW  00        ;CON PTR
          DW  00        ;PTR REFRESH
          DB  0         ;PITCHSHIFT
          DB  0         ;NOISE FLAG
          DB   8        ;NOISE DIS
          DB  32+16+4+2 ;chan ENable
          DW  BUFF+8    ;AD OF VOL REG
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
        DB  0
        DB  16        ;NOISE DIS
        DB  32+8+4+1  ;chan ENable
        DW  BUFF+9    ;AD OF VOL REg
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
        DB  0
        DB  32       ;NOISE DIS
        DB  16+8+2+1 ;CHAN ENABLE
        DW  BUFF+10  ;AD OF VOL REG
        DB  0
;------------------------------------------------
SOUNDATA
.l94c0
	db #00,#00,#43,#14,#1f,#13,#0d,#12
	db #09,#11,#15,#10,#2e,#0f,#53,#0e
	db #86,#0d,#c3,#0c,#0c,#0c,#5f,#0b
	db #bc,#0a,#21,#0a,#90,#09,#06,#09
	db #85,#08,#0a,#08,#97,#07,#2a,#07
	db #c3,#06,#62,#06,#06,#06,#af,#05
	db #5e,#05,#11,#05,#c8,#04,#83,#04
	db #42,#04,#05,#04,#cb,#03,#95,#03
	db #61,#03,#31,#03,#03,#03,#d8,#02
	db #af,#02,#88,#02,#64,#02,#42,#02
	db #21,#02,#03,#02,#e6,#01,#ca,#01
	db #b1,#01,#98,#01,#81,#01,#6c,#01
	db #57,#01,#44,#01,#32,#01,#21,#01
	db #11,#01,#01,#01,#f3,#00,#e5,#00
	db #d8,#00,#cc,#00,#c1,#00,#b6,#00
	db #ac,#00,#a2,#00,#99,#00,#90,#00
	db #88,#00,#81,#00,#79,#00,#73,#00
	db #6c,#00,#66,#00,#60,#00,#5b,#00
	db #56,#00,#51,#00,#4c,#00,#48,#00
	db #44,#00,#40,#00,#3d,#00,#39,#00
	db #36,#00,#33,#00,#30,#00,#2d,#00
	db #2b,#00,#29,#00,#26,#00,#24,#00
	db #22,#00,#20,#00,#1e,#00,#1d,#00
	db #1b,#00,#1a,#00,#18,#00,#17,#00
	db #15,#00,#14,#00,#13,#00,#01,#01
	db #00,#00,#04,#00,#0b,#00,#0f,#00
	db #1c,#00,#2f,#00,#3f,#00,#49,#00
	db #50,#00,#5d,#00,#61,#00,#6b,#00
	db #75,#00,#7f,#00,#89,#00,#90,#00
	db #91,#00,#98,#00,#9f,#00,#a6,#00
	db #b3,#00,#c3,#00,#cd,#00,#d4,#00
	db #de,#00,#e5,#00,#f5,#00,#f9,#00
	db #00,#01,#0a,#01,#11,#01,#18,#01
	db #22,#01,#26,#01,#01,#01,#01,#01
	db #00,#00,#2f,#00,#4e,#00,#57,#00
	db #7e,#00,#b7,#00,#fc,#00,#16,#01
	db #47,#01,#52,#01,#5d,#01,#64,#01
	db #6b,#01,#78,#01,#81,#01,#86,#01
	db #93,#01,#9a,#01,#a7,#01,#b2,#01
	db #bc,#01,#c3,#01,#ca,#01,#d1,#01
	db #dc,#01,#fb,#01,#02,#02,#0b,#02
	db #18,#02,#2d,#02,#32,#02,#39,#02
	db #40,#02,#47,#02,#4e,#02,#55,#02
	db #5c,#02,#63,#02,#6e,#02,#75,#02
	db #7e,#02,#87,#02,#90,#02,#9d,#02
	db #a4,#02,#ab,#02,#b8,#02,#c1,#02
	db #c8,#02,#e3,#02,#fa,#02,#15,#03
	db #1c,#03,#23,#03,#c8,#80,#c8,#ff
	db #01,#80,#01,#01,#b4,#01,#ff,#01
	db #7f,#01,#ff,#01,#8f,#01,#01,#7e
	db #01,#01,#82,#01,#c8,#80,#c8,#ff
	db #01,#8f,#01,#01,#80,#01,#01,#7f
	db #03,#05,#7f,#08,#08,#7f,#03,#c8
	db #80,#c8,#ff,#01,#8e,#01,#08,#7f
	db #03,#1c,#7f,#05,#30,#7f,#03,#c8
	db #80,#c8,#ff,#01,#8b,#01,#01,#81
	db #02,#c8,#80,#c8,#ff,#03,#7f,#0e
	db #c8,#80,#c8,#ff,#01,#83,#05,#01
	db #7f,#05,#08,#7f,#0a,#c8,#80,#c8
	db #ff,#01,#96,#c8,#ff,#01,#86,#01
	db #01,#7d,#02,#c8,#80,#c8,#ff,#01
	db #7a,#01,#01,#83,#02,#c8,#80,#c8
	db #ff,#02,#81,#02,#02,#7f,#03,#02
	db #81,#01,#ff,#01,#81,#01,#01,#7e
	db #01,#01,#81,#01,#ff,#01,#8b,#03
	db #01,#75,#03,#ff,#ff,#01,#85,#03
	db #c8,#80,#c8,#ff,#01,#70,#01,#c8
	db #80,#c8,#ff,#01,#86,#01,#c8,#80
	db #c8,#ff,#01,#8f,#01,#02,#80,#01
	db #04,#7f,#0f,#c8,#80,#c8,#ff,#01
	db #76,#01,#01,#8a,#01,#02,#7f,#08
	db #04,#7f,#06,#c8,#80,#c8,#ff,#01
	db #8e,#01,#01,#80,#01,#01,#72,#01
	db #ff,#01,#8f,#02,#06,#63,#02,#ff
	db #01,#81,#0f,#0b,#7f,#0f,#c8,#80
	db #c8,#ff,#01,#f8,#01,#01,#0d,#01
	db #ff,#01,#80,#01,#01,#24,#01,#01
	db #d2,#01,#01,#7b,#01,#01,#89,#07
	db #ff,#01,#66,#c8,#ff,#01,#76,#08
	db #01,#d0,#01,#ff,#01,#88,#01,#01
	db #81,#07,#01,#71,#01,#ff,#01,#9e
	db #03,#01,#08,#01,#ff,#01,#83,#0e
	db #01,#4f,#01,#ff,#02,#80,#01,#02
	db #81,#03,#07,#81,#0e,#ff,#01,#83
	db #01,#ff,#02,#81,#0e,#28,#80,#01
	db #0b,#7f,#0e,#ff,#01,#01,#01,#e8
	db #13,#ea,#14,#e4,#0e,#00,#14,#e4
	db #0e,#00,#14,#fd,#02,#fe,#03,#e6
	db #06,#e8,#03,#e5,#04,#e5,#04,#e5
	db #07,#e6,#09,#e5,#04,#e5,#04,#e5
	db #04,#eb,#00,#fe,#09,#e5,#07,#e8
	db #00,#00,#50,#fc,#01,#ff,#e6,#06
	db #e8,#05,#e5,#05,#e5,#08,#e6,#1c
	db #e8,#1c,#e5,#04,#e8,#15,#e6,#09
	db #e5,#05,#e8,#05,#00,#05,#e5,#08
	db #e8,#00,#00,#dc,#ff,#e6,#06,#e8
	db #04,#e9,#09,#e5,#06,#ff,#e9,#0d
	db #1a,#1e,#26,#04,#28,#10,#9a,#a6
	db #9a,#1a,#1e,#26,#04,#28,#10,#9a
	db #a6,#9c,#1d,#1e,#29,#04,#2b,#10
	db #9d,#a9,#9d,#29,#1e,#29,#04,#2b
	db #10,#9d,#a9,#9d,#ff,#e9,#0c,#32
	db #50,#39,#50,#39,#14,#b7,#b9,#be
	db #bc,#bb,#bc,#39,#14,#b7,#b9,#e9
	db #0a,#3e,#14,#e9,#0c,#bc,#bb,#e9
	db #0c,#32,#50,#39,#50,#e9,#0a,#39
	db #14,#e9,#0c,#b7,#b9,#be,#bc,#bb
	db #bc,#c5,#b9,#c3,#b9,#e9,#0a,#c1
	db #e9,#0c,#c0,#3e,#14,#ff,#ea,#00
	db #e4,#0e,#00,#14,#ea,#01,#eb,#00
	db #e4,#01,#3e,#05,#eb,#01,#00,#05
	db #e4,#01,#00,#05,#00,#05,#ea,#00
	db #e4,#04,#00,#14,#ea,#01,#e4,#01
	db #00,#05,#e4,#01,#00,#05,#e4,#01
	db #00,#05,#e4,#01,#00,#05,#ea,#00
	db #e4,#0e,#00,#14,#ea,#01,#e4,#01
	db #00,#05,#00,#05,#e4,#01,#00,#05
	db #00,#05,#ff,#21,#1e,#ad,#21,#14
	db #2d,#14,#1d,#1e,#a9,#1d,#14,#29
	db #14,#1a,#1e,#a6,#1a,#14,#26,#14
	db #1a,#28,#00,#28,#ff,#e9,#0c,#c0
	db #c3,#c5,#c3,#45,#05,#43,#05,#40
	db #05,#3c,#05,#39,#05,#37,#05,#34
	db #05,#30,#05,#2d,#1e,#e9,#0a,#ad
	db #2d,#14,#2d,#14,#2d,#1e,#ad,#e9
	db #0c,#30,#14,#e9,#0a,#b5,#e9,#0c
	db #b4,#32,#28,#00,#28,#ff,#e8,#04
	db #e6,#09,#e5,#08,#e8,#00,#e5,#04
	db #ff,#fd,#0b,#fe,#0c,#e8,#10,#e9
	db #0c,#15,#58,#e1,#e8,#10,#e9,#11
	db #15,#58,#e1,#e8,#10,#e9,#12,#15
	db #58,#e1,#fd,#0e,#fe,#0f,#e8,#13
	db #ea,#14,#e4,#0e,#00,#4d,#e1,#e8
	db #17,#e9,#16,#00,#0a,#1f,#4d,#e1
	db #00,#06,#e5,#0e,#ff,#ea,#19,#fd
	db #11,#00,#04,#fe,#11,#00,#04,#e5
	db #11,#ff,#e8,#17,#e9,#18,#26,#4e
	db #e1,#e8,#11,#e9,#07,#62,#2c,#e8
	db #04,#e9,#1b,#56,#58,#e1,#e8,#06
	db #e9,#19,#e4,#01,#5b,#01,#35,#0e
	db #e1,#e8,#05,#e9,#1b,#ea,#1f,#e4
	db #07,#cf,#e1,#e8,#1c,#e9,#1b,#3a
	db #1a,#e1,#e8,#04,#e9,#1d,#39,#20
	db #e1,#fe,#1a,#00,#02,#e5,#1a,#ff
	db #e8,#10,#e9,#1d,#ea,#00,#e4,#0e
	db #11,#06,#e1,#e8,#1c,#e9,#1a,#35
	db #08,#00,#06,#35,#08,#00,#06,#35
	db #08,#00,#06,#35,#08,#00,#06,#35
	db #08,#00,#06,#35,#08,#00,#06,#35
	db #08,#e1,#e8,#05,#e9,#1e,#56,#c6
	db #e1,#e8,#06,#e9,#1d,#37,#14,#00
	db #0c,#ff,#fd,#1d,#fe,#1e,#e8,#21
	db #ea,#1f,#e4,#01,#00,#b0,#e1,#e8
	db #21,#e9,#20,#2b,#a6,#ea,#00,#e8
	db #06,#e4,#0e,#00,#04,#e9,#0c,#00
	db #0e,#0c,#44,#e1,#00,#06,#e5,#1d
	db #ff,#e8,#08,#e9,#0e,#21,#3c,#e1
	db #e8,#08,#e9,#0e,#24,#3c,#e1,#e8
	db #08,#e9,#0e,#27,#3c,#e1,#e8,#08
	db #e9,#0e,#2a,#3c,#e1,#e8,#08,#e9
	db #0e,#2d,#3c,#e1,#e8,#08,#e9,#0e
	db #30,#3c,#e1,#e8,#08,#e9,#0e,#33
	db #78,#e1,#fd,#27,#00,#02,#fe,#27
	db #00,#02,#fc,#27,#ff,#e8,#1c,#e9
	db #18,#5d,#14,#ff,#e8,#03,#e9,#1b
	db #ea,#1f,#3a,#50,#ff,#e8,#06,#e9
	db #0e,#ea,#1d,#53,#a8,#ff,#e8,#17
	db #ea,#07,#e4,#0e,#00,#c6,#e1,#fe
	db #2c,#e8,#08,#e9,#00,#ea,#15,#e4
	db #01,#39,#9a,#e1,#e8,#05,#e4,#01
	db #00,#84,#e1,#e8,#02,#e9,#1b,#42
	db #10,#e1,#fe,#12,#e8,#13,#e9,#09
	db #ea,#00,#e4,#0e,#5d,#c6,#e1,#fe
	db #30,#e8,#05,#e9,#02,#32,#c6,#e1
	db #e8,#05,#e9,#20,#32,#c6,#e1,#e8
	db #03,#e9,#0c,#fd,#32,#00,#01,#fe
	db #32,#24,#30,#2b,#30,#26,#30,#2d
	db #30,#2e,#18,#2d,#18,#2b,#18,#29
	db #18,#ff,#e6,#00,#e5,#33,#e6,#07
	db #e5,#33,#e6,#02,#e5,#33,#e6,#09
	db #e5,#33,#e6,#05,#e5,#33,#e5,#33
	db #ff,#e8,#1c,#e9,#0d,#ea,#01,#e4
	db #06,#3c,#06,#41,#06,#43,#06,#48
	db #06,#48,#06,#4d,#06,#e4,#06,#4f
	db #06,#54,#06,#ff,#e8,#08,#e9,#1c
	db #56,#2c,#ff,#e8,#03,#e9,#16,#40
	db #4d,#e1,#e4,#06,#00,#63,#e1,#00
	db #00
;	
FINISH          DEFL $
;                LIST
;                CLOSE
;START           DEFL START
;FINISH          DEFL FINISH
LENGTH          DEFL FINISH-START
;
.music_info
	db "Uridium (1987)(Hewson)(Dave Rogers)",0
	db "URIDISD.ASM - URIDIUM Sound Driver - J.DAVE ROGERS. Liverpool. 1987.",0

	read "music_end.asm"
