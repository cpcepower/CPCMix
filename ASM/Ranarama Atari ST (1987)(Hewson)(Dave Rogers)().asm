; Music of Ranarama Atari ST (1987)(Hewson)(Dave Rogers)()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RANARAAS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #5dc0
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

; RANASD.ASM        RANARAMA Sound Driver  (ATARI ST version only). 

; J.DAVE ROGERS, Liverpool, 1987.


                NOLIST

MUSICODE        EQU       music_begin           ;machine code, 750 bytes
;DATABLOC        EQU       24000+750       ;datablock load address

;-----------------------------------------------------
PITCHTAB        EQU       DATABLOC        ;200 bytes
ENVSINDEX       EQU       PITCHTAB+200    ;50  bytes
TUNESINDEX      EQU       ENVSINDEX+50    ;70 bytes
ENVS            EQU       TUNESINDEX+70   ;180 bytes
TUNEBLOCS       EQU       ENVS+180        ;
;-----------------------------------------------------
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

;                ORG  MUSICODE
;                WRITE "RANASD.BIN"
start           DEFL $

;------------------------------------------------------------------------------

JUMPBLOCK       JP PLAY
                JP SILENCE
                JP STARTONE
                JP START2OR3

POKE_C_BASIC    DW 00               ;(tunebloc/chan)only used for Basic demo
BASIC_DEMO
                LD A,(POKE_C_BASIC)
                LD C,A
                LD A,(POKE_C_BASIC+1)
                JR STARTACHAN

;-----------------------------------
;  "C" MUST CONTAIN THE NUMBER OF THE TUNEBLOC TO BE STARTED
;  CALL STARTONE, PUTS TUNE ON CHAN1
;  CALL STARTACHAN, DYNAMICALLY ALLOCATES TO CHANS 2/3

STARTONE        LD A,1
                JR STARTACHAN

START2OR3       LD A,(FREECHAN)
                XOR 1
                LD (FREECHAN),A   ;FREECHAN GOES 2,3,2,3....

STARTACHAN      LD IX,STORE1      ;C contains tunebloc num, A contains chan num
                CP 1
                JR Z ,IXfound
                LD IX,STORE2
                CP 2
                JR Z,IXfound
                LD IX,STORE3
IXfound         LD HL,TUNESINDEX        ;start of tunesindex table
                LD  A,C                 ;blocnumber
                ADD A,A                 ;*2
                LD  D,0
                LD  E,A
                ADD HL,DE               ;HL points to required table entry
                LD  E,(HL)
                INC HL
                LD D,(HL)               ;DE=offset of tunebloc
                LD HL,TUNEBLOCS         ;start of tuneblocs
                ADD HL,DE               ;HL=address of tunebloc
                LD   (IX+DATAPTR),L     ;set pointers for this channel
                LD   (IX+DATAPTR+1),H
                LD   (IX+CONPTR),L
                LD   (IX+CONPTR+1),H
                LD   (IX+PTRREFR),L     ;ptr refresh
                LD   (IX+PTRREFR+1),H
                LD (IX+CHANACTIVE),1
                LD (IX+MAINCOUNT),1
                LD (IX+PITCHSHIFT),0
                RET                

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

;--------------------MAIN CALL--------EVERY 1/50 SECOND-----------------------

;
.play_music
PLAY            DI
;
                PUSH AF
                PUSH BC
                PUSH DE
                PUSH HL
                PUSH IX
                PUSH IY
                CALL ALLREGIST   ;throw all buffer into actual sound chip
                LD   IX,STORE1   ;do channel 1 (IX points to chan1 store)
                LD   IY,BUFF     ;     (IY holds addr of pitchstore for chan1) 
                CALL TESTCHAN
                LD   IX,STORE2   ;do channel 2
                LD   IY,BUFF+2
                CALL TESTCHAN
                LD   IX,STORE3   ;do channel 3
                LD   IY,BUFF+4
                CALL TESTCHAN
                CALL DOENSE      ;do noise envelope
                POP IY
                POP IX
                POP HL
                POP DE
                POP BC
                POP AF
                EI
                RET              ;-------------->>>>>>> out

;FOR EACH OF THE 3 CHANNELS:

TESTCHAN        LD  A,(IX+CHANACTIVE)   ;CHAN ACTIVE?
                OR A
                RET Z                   ;do nothing if channel not active
                DEC  (IX+maincount)     ;duration countdown, new note when 0
                CALL Z,READDECIDE
                LD  A, (IX+CHANACTIVE)  ;second check(may have done killchan)
                OR A
                RET Z
                CALL DOENV_ENT          ;do volume+tone envelopes
                RET                     ;----->> next chan

READDECIDE      LD  H,(IX+dataptr+1)    ;get data ptr address
                LD  L,(IX+dataptr)
DECI            LD   A,(HL)             ;A=peek(ptr)
                INC  HL
                LD   E,(HL)             ;E=peek(ptr+1)
                INC HL                  ;inc and store ptr for next time
                LD (IX+DATAPTR+1),H
                LD (IX+DATAPTR),L

;-------------------------------------------------------
; THE FOLLOWING ROUTINES RESPOND TO DATA AND JUMP BACK TO READDECIDE OR DECI,
; EVENTUALLY EXITING VIA "NEWNOTE" OR "KILLCHAN" ROUTINES

SUBSELECT       CP   0             ;A=VALUE
                JP   Z,DOPAUSE     ;pitch 0 = pause
                CP   101
                JP   C,NEWNOTE     ;LESS THAN 100=normal note
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
                JP   Z,GONEWBLOCK  ;play a given tunebloc,then return to 1st
                CP   230
                JR   Z,NEWKEY      ;change musical key for current chan
                CP   255
                JP   Z,RETCONBLOC  ;end-of-tunebloc marker 

                JP   DECI          ;safety net!

KILLCHAN        LD (IX+CHANACTIVE),0
                LD H,(IX+ADVOLREG+1)
                LD L,(IX+ADVOLREG)     ;HL=address of vol register,current chan
                LD (HL),0
                RET
     
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
                JR READDECIDE

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

GONEWBLOCK      LD   (IX+conptr+1),H
                LD   (IX+conptr),L    ;leaving bloc so store ptr
                LD   A,E
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
                JP   DECI

RETCONBLOC      LD   H,(IX+conptr+1)  ;(ptr re-enters original "conductor" bloc)
                LD   L,(IX+conptr)
                LD   A,(HL)
                CP   255              ;end-of-conductor-bloc marker ?
                JP   NZ,DECI
                LD   H,(IX+ptrrefr+1)        ;refresh
                LD   L,(IX+ptrrefr)
                JP   DECI
        
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

                LD H,(IX+ADVOLREG+1) ;zero volume of current chan
                LD L,(IX+ADVOLREG)
                LD (HL),0

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
                LD (IX+NOISEFLAG),0      ;RESET EVERY TIME!
                JR   NZ,NOISEOFF
NOISEon         LD A,0
                LD C,A
                LD (ENSSTORE),A          ;restart noise envelope
                LD (ENSSTORE+1),A
                LD HL,(ENSSTORE+envadr)
                LD (ENSSTORE+envptr),HL
                JR GATING
NOISEOFF        LD C,(IX+NOISEDIS)

GATING          LD   A,(BUFF+7)
                AND  (IX+ch_enable)      ;chan ENable
                OR   C                   ;noise DISable
                AND 32+16+8+4+2+1        ;SAFETY, top 2 bits must remain off
                LD   (BUFF+7),A          ;FINAL RESULT IN A!
                RET

;---------------------------------------------------------------------
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
                LD   B,0
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
                AND  15
                LD   (BUFF+6),A        ;replace
                RET

ENGENERAL       PUSH IX       ;subroutine to do envelope and return value
                POP  HL                ;points to counts
                LD   D,(IX+ENVPTR+1)   ;points to envelope
                LD   E,(IX+ENVPTR)
                INC  (HL)              ;inc count
                LD   A,(DE)
                SUB  (HL)              ;compare to envelope
                LD   C,128             ;DEFAULT ( 128 = 0 )
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
                JP   NZ,nextsect
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
          DW  00       ;hard env len
          DB  0        ;hard env type

FREECHAN  DB  2  ;init value

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
;------------------------------------------------
FINISH          DEFL $
                LIST
;                CLOSE
;START           DEFL START
;FINISH          DEFL FINISH
LENGTH          DEFL FINISH-START
;OGERS, Liverpool, 1987.

;                NO
	db #00,#00,#00,#00,#00,#00,#00,#00
DATABLOC
	db #00,#00,#4f,#14,#2b,#13,#18,#12
	db #14,#11,#1e,#10,#37,#0f,#5c,#0e
	db #8e,#0d,#cb,#0c,#13,#0c,#66,#0b
	db #c2,#0a,#27,#0a,#96,#09,#0c,#09
	db #8a,#08,#0f,#08,#9b,#07,#2e,#07
	db #c7,#06,#66,#06,#0a,#06,#b3,#05
	db #61,#05,#14,#05,#cb,#04,#86,#04
	db #45,#04,#08,#04,#ce,#03,#97,#03
	db #63,#03,#33,#03,#05,#03,#d9,#02
	db #b1,#02,#8a,#02,#65,#02,#43,#02
	db #22,#02,#04,#02,#e7,#01,#cc,#01
	db #b2,#01,#99,#01,#82,#01,#6d,#01
	db #58,#01,#45,#01,#33,#01,#21,#01
	db #11,#01,#02,#01,#f3,#00,#e6,#00
	db #d9,#00,#cd,#00,#c1,#00,#b6,#00
	db #ac,#00,#a2,#00,#99,#00,#91,#00
	db #89,#00,#81,#00,#7a,#00,#73,#00
	db #6c,#00,#66,#00,#61,#00,#5b,#00
	db #56,#00,#51,#00,#4d,#00,#48,#00
	db #44,#00,#40,#00,#3d,#00,#39,#00
	db #36,#00,#33,#00,#30,#00,#2e,#00
	db #2b,#00,#29,#00,#26,#00,#24,#00
	db #22,#00,#20,#00,#1e,#00,#1d,#00
	db #1b,#00,#1a,#00,#18,#00,#17,#00
	db #16,#00,#14,#00,#13,#00,#01,#01
	db #00,#00,#04,#00,#0b,#00,#15,#00
	db #1c,#00,#29,#00,#36,#00,#40,#00
	db #47,#00,#4e,#00,#58,#00,#62,#00
	db #6c,#00,#76,#00,#80,#00,#8a,#00
	db #8e,#00,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#4b,#00
	db #a2,#00,#fd,#00,#2a,#01,#2f,#01
	db #5e,#01,#7f,#01,#80,#01,#ab,#01
	db #fc,#01,#31,#02,#76,#02,#8e,#02
	db #a2,#02,#bc,#02,#dc,#02,#e1,#02
	db #e8,#02,#5b,#03,#5e,#03,#a7,#03
	db #2e,#04,#2f,#04,#9e,#04,#b8,#04
	db #0a,#05,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #c8,#80,#c8,#ff,#01,#83,#04,#c8
	db #80,#c8,#ff,#01,#8f,#01,#01,#80
	db #01,#01,#71,#01,#ff,#01,#8c,#01
	db #c8,#80,#c8,#ff,#01,#8f,#01,#01
	db #7f,#02,#05,#81,#01,#c8,#80,#c8
	db #ff,#01,#8f,#01,#01,#7f,#03,#04
	db #7f,#0c,#c8,#80,#c8,#ff,#01,#8f
	db #01,#02,#7f,#0f,#c8,#80,#c8,#ff
	db #01,#7a,#01,#c8,#80,#c8,#ff,#01
	db #8f,#01,#01,#71,#01,#ff,#01,#8f
	db #01,#0b,#7f,#0f,#c8,#80,#c8,#ff
	db #01,#8c,#01,#01,#7c,#03,#c8,#80
	db #c8,#ff,#01,#74,#01,#01,#84,#03
	db #c8,#80,#c8,#ff,#02,#81,#02,#02
	db #7f,#03,#02,#81,#01,#ff,#01,#81
	db #01,#01,#7f,#02,#01,#81,#01,#ff
	db #01,#82,#01,#01,#7c,#01,#01,#82
	db #01,#ff,#01,#81,#01,#ff,#01,#7f
	db #01,#ff,#01,#49,#2d,#43,#60,#75
	db #64,#1f,#51,#6e,#66,#64,#71,#72
	db #2d,#4b,#68,#75,#64,#71,#6f,#6e
	db #6e,#6b,#2d,#2d,#01,#01,#01,#01
	db #01,#01,#01,#01,#ea,#00,#e6,#00
	db #e9,#0b,#e5,#04,#e5,#04,#e5,#04
	db #e5,#07,#e6,#00,#e5,#04,#e5,#07
	db #e9,#0b,#e5,#0a,#e6,#00,#e5,#0a
	db #e6,#00,#e8,#04,#e9,#0b,#ea,#10
	db #e5,#13,#e5,#16,#e6,#04,#e8,#01
	db #e9,#0b,#e5,#04,#e6,#00,#e8,#04
	db #e9,#0b,#ea,#10,#e5,#13,#e5,#16
	db #e6,#04,#e8,#01,#e9,#0b,#e5,#06
	db #e5,#09,#00,#07,#e5,#01,#ff,#ea
	db #00,#e6,#0c,#e8,#04,#e9,#0d,#e5
	db #04,#e6,#18,#e5,#04,#e9,#0c,#e8
	db #03,#e6,#0c,#e5,#06,#e5,#09,#e6
	db #0c,#e5,#06,#e5,#09,#e9,#0c,#e6
	db #00,#e5,#0b,#e6,#0c,#e5,#0b,#e6
	db #07,#e8,#06,#e9,#0c,#ea,#10,#e5
	db #13,#e5,#16,#e6,#0b,#e8,#01,#e9
	db #0d,#e5,#04,#e6,#07,#e8,#06,#e9
	db #0c,#ea,#10,#e5,#13,#e5,#16,#e6
	db #0b,#e8,#01,#e9,#0d,#e5,#06,#e5
	db #09,#00,#07,#e5,#02,#ff,#ea,#00
	db #e6,#00,#e8,#04,#e9,#07,#e5,#04
	db #e5,#04,#e9,#0d,#e8,#03,#e6,#0c
	db #e5,#06,#e5,#09,#e9,#0a,#e6,#18
	db #e5,#06,#e5,#09,#e9,#0d,#e6,#0c
	db #e5,#0c,#e6,#18,#e5,#0c,#e6,#00
	db #e8,#02,#ea,#10,#e5,#15,#e8,#04
	db #e5,#18,#e6,#04,#e8,#01,#e9,#0d
	db #e5,#04,#e6,#00,#e8,#02,#ea,#10
	db #e5,#15,#e8,#04,#e5,#18,#e6,#04
	db #e8,#01,#e9,#0d,#00,#04,#e5,#06
	db #e5,#09,#00,#03,#e5,#03,#ff,#01
	db #01,#e8,#00,#00,#0e,#e8,#04,#28
	db #15,#e4,#0e,#2c,#07,#2c,#07,#2d
	db #1c,#e8,#00,#00,#07,#e8,#04,#2d
	db #07,#2f,#07,#28,#15,#e4,#0e,#2c
	db #07,#2c,#07,#2a,#15,#e4,#0d,#2a
	db #07,#e4,#0d,#2a,#07,#ff,#28,#54
	db #28,#54,#ff,#34,#07,#3b,#07,#40
	db #07,#34,#07,#3b,#07,#3f,#07,#34
	db #07,#3b,#07,#3d,#0e,#39,#07,#34
	db #07,#34,#07,#3b,#07,#40,#07,#34
	db #07,#3b,#07,#3f,#07,#34,#07,#3b
	db #07,#3d,#0e,#3a,#07,#36,#07,#ff
	db #01,#01,#2f,#0e,#2f,#15,#e4,#0e
	db #28,#07,#28,#0e,#2d,#15,#e4,#0e
	db #24,#07,#24,#0e,#26,#15,#e4,#0e
	db #26,#07,#26,#0e,#28,#15,#e4,#0e
	db #28,#07,#ff,#ff,#3b,#07,#3d,#07
	db #3e,#0e,#3b,#07,#38,#07,#39,#07
	db #3b,#07,#39,#07,#34,#07,#39,#07
	db #3c,#07,#37,#07,#3c,#07,#3e,#07
	db #45,#07,#3e,#07,#42,#07,#3e,#07
	db #39,#07,#40,#1c,#ff,#01,#01,#00
	db #0e,#21,#07,#2d,#07,#21,#07,#e4
	db #0e,#1c,#07,#28,#07,#1c,#07,#23
	db #07,#2f,#07,#23,#07,#e4,#0e,#2f
	db #07,#2f,#07,#2f,#07,#1c,#07,#28
	db #07,#28,#07,#e4,#0e,#1e,#07,#2a
	db #07,#2a,#07,#1e,#07,#2a,#07,#2a
	db #07,#e4,#0e,#1e,#07,#2a,#07,#2a
	db #07,#23,#07,#2f,#07,#2f,#07,#e4
	db #0e,#23,#07,#2f,#07,#2f,#07,#1c
	db #07,#28,#0e,#e4,#0e,#28,#07,#ff
	db #39,#07,#3b,#07,#3d,#07,#39,#07
	db #3d,#07,#3b,#07,#38,#07,#3b,#07
	db #31,#07,#2a,#07,#31,#07,#36,#07
	db #33,#07,#36,#07,#38,#07,#34,#07
	db #38,#07,#3a,#07,#36,#07,#3a,#07
	db #3d,#07,#3a,#07,#3d,#07,#e4,#0e
	db #00,#07,#00,#54,#ff,#36,#07,#38
	db #07,#39,#07,#2d,#07,#39,#07,#38
	db #07,#34,#07,#38,#07,#36,#07,#2f
	db #07,#36,#07,#33,#07,#2f,#07,#33
	db #07,#34,#07,#2f,#07,#34,#07,#36
	db #07,#31,#07,#36,#07,#3a,#07,#36
	db #07,#3a,#07,#3b,#07,#3d,#07,#3e
	db #07,#3f,#07,#3b,#07,#3f,#07,#40
	db #07,#3b,#07,#38,#07,#34,#1c,#ff
	db #01,#01,#e8,#09,#e9,#0b,#ea,#10
	db #30,#0c,#2b,#0c,#30,#0c,#2b,#0c
	db #30,#0c,#2b,#0c,#e4,#0e,#2b,#a2
	db #e1,#ff,#e8,#09,#e9,#0c,#30,#0c
	db #2b,#0c,#30,#0c,#2b,#0c,#37,#0c
	db #24,#0c,#24,#a2,#e1,#ff,#e8,#09
	db #e9,#0d,#40,#0c,#3c,#0c,#41,#0c
	db #3e,#0c,#43,#06,#42,#06,#41,#06
	db #40,#06,#3f,#a2,#e1,#ff,#01,#01
	db #e8,#03,#e6,#07,#e9,#0c,#40,#0c
	db #3e,#0c,#3c,#06,#3b,#06,#3a,#0c
	db #38,#0c,#37,#0c,#e9,#0a,#35,#0c
	db #38,#0c,#3c,#0c,#41,#24,#e1,#ff
	db #00,#03,#e5,#10,#ff,#00,#0c,#e5
	db #10,#ff,#01,#01,#28,#0e,#29,#07
	db #29,#07,#29,#07,#e4,#0e,#29,#07
	db #29,#07,#29,#07,#2b,#07,#2b,#07
	db #2b,#07,#e4,#0e,#2b,#07,#2b,#07
	db #2b,#07,#28,#07,#28,#07,#28,#07
	db #e4,#0e,#28,#07,#28,#07,#28,#07
	db #2d,#07,#2d,#07,#2d,#07,#e4,#0e
	db #2b,#07,#2b,#07,#2b,#07,#29,#07
	db #29,#07,#29,#07,#e4,#0e,#29,#07
	db #29,#07,#29,#07,#29,#07,#29,#07
	db #29,#07,#e4,#0e,#2b,#07,#2b,#07
	db #2b,#07,#29,#07,#29,#07,#29,#07
	db #e4,#0e,#29,#07,#29,#07,#29,#07
	db #2b,#07,#2b,#07,#2b,#07,#e4,#0e
	db #2b,#07,#2b,#07,#2b,#07,#ff,#29
	db #2a,#ff,#00,#0e,#e9,#0d,#41,#15
	db #40,#07,#41,#07,#40,#07,#3e,#15
	db #3c,#0e,#3e,#07,#40,#15,#e9,#0a
	db #3e,#15,#e9,#0d,#e9,#0a,#3c,#15
	db #e9,#0d,#e9,#0a,#3b,#15,#e9,#0d
	db #39,#15,#45,#07,#00,#07,#45,#07
	db #00,#15,#3b,#07,#39,#07,#3b,#07
	db #3c,#1c,#00,#0e,#3c,#07,#3e,#07
	db #40,#07,#43,#07,#45,#07,#47,#07
	db #ff,#01,#01,#2d,#07,#2d,#07,#2d
	db #07,#e4,#0e,#2d,#07,#2d,#07,#2d
	db #07,#26,#07,#26,#07,#26,#07,#e4
	db #0e,#26,#07,#26,#07,#26,#07,#2b
	db #07,#2b,#07,#2b,#07,#e4,#0e,#2b
	db #07,#2b,#07,#2b,#07,#2b,#07,#2b
	db #07,#2b,#07,#e4,#0e,#29,#07,#29
	db #07,#29,#07,#24,#07,#24,#07,#24
	db #07,#e4,#0e,#24,#07,#24,#07,#24
	db #07,#24,#07,#24,#07,#24,#07,#e4
	db #0e,#2b,#07,#2b,#07,#2b,#07,#ea
	db #00,#e4,#0e,#24,#07,#24,#07,#e4
	db #0e,#24,#07,#24,#07,#e4,#0e,#24
	db #07,#24,#07,#e4,#0e,#24,#07,#00
	db #0e,#26,#07,#26,#07,#26,#07,#28
	db #07,#28,#07,#28,#07,#28,#07,#28
	db #07,#28,#07,#28,#0e,#e8,#00,#00
	db #0e,#ff,#ff,#e9,#0d,#48,#15,#47
	db #07,#48,#07,#47,#07,#45,#15,#43
	db #07,#4a,#07,#48,#07,#47,#15,#45
	db #15,#e9,#0a,#43,#15,#e9,#0d,#e9
	db #0a,#41,#15,#e9,#0d,#40,#07,#3c
	db #07,#37,#07,#40,#07,#3c,#07,#37
	db #07,#00,#15,#3e,#07,#3c,#07,#3e
	db #07,#ea,#00,#40,#07,#40,#07,#40
	db #07,#40,#07,#40,#07,#40,#07,#40
	db #07,#00,#0e,#42,#07,#40,#07,#42
	db #07,#e4,#0e,#43,#07,#e4,#0e,#43
	db #07,#e4,#0e,#43,#07,#e4,#0e,#43
	db #07,#e4,#0e,#43,#07,#e4,#0e,#43
	db #07,#43,#0e,#e8,#00,#00,#0e,#ff
	db #01,#01,#e8,#04,#e9,#0b,#e6,#05
	db #18,#0e,#18,#0e,#18,#0e,#18,#2a
	db #1d,#2a,#22,#2a,#18,#07,#00,#07
	db #18,#07,#e1,#ff,#e8,#06,#e9,#0c
	db #e6,#05,#ea,#00,#e4,#0e,#2b,#07
	db #2d,#07,#e4,#0e,#2b,#07,#2d,#07
	db #e4,#0e,#2b,#07,#2d,#07,#e4,#0e
	db #2b,#07,#2d,#07,#2f,#07,#30,#07
	db #e4,#0e,#32,#07,#34,#07,#e4,#0e
	db #30,#07,#32,#07,#34,#07,#35,#07
	db #e4,#0e,#37,#07,#39,#07,#e4,#0e
	db #35,#07,#37,#07,#39,#07,#3a,#07
	db #e4,#0e,#3c,#07,#3e,#07,#40,#07
	db #00,#07,#40,#07,#e1,#ff,#e8,#04
	db #e9,#0b,#e6,#05,#3c,#0e,#3c,#0e
	db #3c,#0e,#3c,#0e,#37,#0e,#39,#0e
	db #3a,#07,#39,#07,#37,#0e,#39,#0e
	db #3a,#07,#39,#07,#37,#0e,#3e,#0e
	db #3c,#07,#00,#07,#3c,#07,#e1,#ff
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00
;
.init_music	; added by Megachur
;
	or a
	jp nz,init_music1
	ld hl,&0100+1
	ld (POKE_C_BASIC),hl
	call BASIC_DEMO
	ld hl,&0200+2
	ld (POKE_C_BASIC),hl
	call BASIC_DEMO
	ld hl,&0300+3
	ld (POKE_C_BASIC),hl
	jp BASIC_DEMO

init_music1
	dec a
	jp nz,init_music2
	ld hl,&0100+13
	ld (POKE_C_BASIC),hl
	call BASIC_DEMO
	ld hl,&0200+14
	ld (POKE_C_BASIC),hl
	call BASIC_DEMO
	ld hl,&0300+15
	ld (POKE_C_BASIC),hl
	jp BASIC_DEMO

init_music2
	dec a
	jp nz,init_music3
	ld hl,&0100+16
	ld (POKE_C_BASIC),hl
	call BASIC_DEMO
	ld hl,&0200+17
	ld (POKE_C_BASIC),hl
	call BASIC_DEMO
	ld hl,&0300+18
	ld (POKE_C_BASIC),hl
	jp BASIC_DEMO

init_music3
	ld hl,&0100+25
	ld (POKE_C_BASIC),hl
	call BASIC_DEMO
	ld hl,&0200+26
	ld (POKE_C_BASIC),hl
	call BASIC_DEMO
	ld hl,&0300+27
	ld (POKE_C_BASIC),hl
	jp BASIC_DEMO
;
.music_info
	db "Ranarama Atari ST (1987)(Hewson)(Dave Rogers)",0
	db "RANASD.ASM - RANARAMA Sound Driver (ATARI ST version only). J.DAVE ROGERS, Liverpool, 1987.",0

	read "music_end.asm"
