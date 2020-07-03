; Music of Stormlord (1989)(Hewson)(Dave Rogers)(JDR Sound Driver)
; Ripped by Megachur the 27/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STORMLOR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #738c
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

; STORMSD.ASM      STORMLORD Sound Driver     J.Dave Rogers    1988


;******************
SPECVERSION     EQU       0             ;1 FOR SPECTRUM,0 FOR AMSTRAD

IF SPECVERSION
SOUNDCOD        EQU       61870
ELSE
SOUNDCOD        EQU       music_begin	;32768         ;machine code address.
ENDIF

;SOUNDATA        EQU       soundcod+965  ;datablock address.
;******************

             NOLIST                

ENVSINDEX    EQU       soundata+200
TUNESINDEX   EQU       ENVSINDEX+84

envcounts    EQU 0
entcounts    EQU 2
envptr       EQU 4
entptr       EQU 6
env0         EQU 8
ent0         EQU 10
envadr       EQU 12
entadr       EQU 14

chanactive   EQU 16
maincount    EQU 17   ;1
dataptr      EQU 18   ;2
conptr       EQU 20   ;2
ptrrefr      EQU 22   ;2
pitchshift   EQU 24   ;1
noiseflag    EQU 25   ;1
noisedis     EQU 26   ;1
ch_enable    EQU 27   ;1
advolreg     EQU 28   ;2
stophang     EQU 30   ;1
CURRENTDUR   EQU 31   ;1
INTERVAL     EQU 32   ;1
CURRENTNOTE  EQU 33   ;1
CHORDTOGGLE  EQU 34   ;1

;             ORG  SOUNDCOD
;******
;IF SPECVERSION
;             WRITE "SPECCOD.BIN"
;ELSE
;             WRITE "STORMSD.BIN"
;ENDIF
;*******

start        DEFL $

;-----------------------------------------------
JUMPBLOCK       JP PLAY
                JP SILENCE
BASIC_DEMO
		;      LD E,1
;
.real_init_music
;
		ld e,a		; modified by Megachur
		nop
                LD A,1
STARTA          JP STARTACHAN

PAUSER          ld hl,buff+7
                LD A,(hl)
                LD (restoreGATE+1),A
                LD (hl),%00111111
                push hl
                CALL ALL13REGS
                pop hl
restoregate     ld (hl),0-0
                RET

;-------------------------------------------------
STARTACHAN      LD C,A             ; a/c=chan num e=tuneblock num
                CALL FINDBLOC
                LD A,(HL)
                CP 9
                JR NC,nochanmarker
                LD C,A
                INC HL
                LD A,(HL)
NOCHANMARKER    CP 244
                LD B,10
                JR NZ, CH1TO3
                INC HL
                LD B,(HL)
                INC HL

CH1TO3          DEC C
                JR Z ,IXfound1
                DEC C
                JR Z, IXfound2
                DEC C
                JR Z, IXFOUND3

CHANALT         LD A,(STORE1+CHANACTIVE)     ;CH4= 1 / 2
                OR A
                JR Z,IXFOUND1        ;CH1 FREE
                LD A,(STORE2+CHANACTIVE)
                OR A
                JR Z,IXFOUND2        ;CH2 FREE
                JR IXFOUND3        ;USE CH3                

IXFOUND1        LD IX,STORE1
                JR TRYSTART
IXFOUND2        LD IX,STORE2
                JR TRYSTART
IXFOUND3        LD IX,STORE3

TRYSTART        LD A,B
                CP (IX+CHANACTIVE)
                RET C
DOSTART         XOR A
                LD (IX+CHANACTIVE),A   ; 7. off while set up!
                LD (IX+DATAPTR),L
                LD (IX+DATAPTR+1),H
                LD (IX+CONPTR),L
                LD (IX+CONPTR+1),H
                LD (IX+PTRREFR),L
                LD (IX+PTRREFR+1),H

                LD (IX+MAINCOUNT),1
                LD (IX+PITCHSHIFT),A
                LD (IX+INTERVAL),A

                LD A,B
                AND 127    ;PRI >128 = high pri but RESETS TO LOW eg 138=10

                LD (IX+CHANACTIVE),A     ;activate
                RET               
 
;-------------------------------------
;
.stop_music
;
SILENCE         LD HL,#FFFF
                LD  (STORE1+CHANACTIVE),HL  ;ALSO MAINCOUNT TO 255
                LD  (STORE2+CHANACTIVE),HL
                LD  (STORE3+CHANACTIVE),HL

                LD HL,BUFF+7
                LD (HL),%00111111
                XOR A
                INC HL
                LD (HL),A              ;volume registers 0
                INC HL
                LD (HL),A
                INC HL
                LD (HL),A

                LD (STORE1+CHANACTIVE),A
                LD (STORE2+CHANACTIVE),A
                LD (STORE3+CHANACTIVE),A

                JP ALL13REGS               ;RETS FROM THERE

;-------------------------subroutines
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
                LD HL,soundata
                ADD HL,DE
                RET

FINDENV         LD   A,E
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

;-------------------MAIN CALL--------EVERY 1/50 SECOND-----------------------

;
.play_music
PLAY50TH
;
	        LD A,0-0
                XOR 1
                LD (PLAY50TH+1),A
                JR Z,PART2
PART1           JP PLAY    ;RETS FROM THERE
PART2           JP ALLREGIST

PLAY            LD  IX,STORE1
                LD HL,(BUFF)
                CALL TESTCHAN
                LD (BUFF),HL

                LD HL, (BUFF+2)
                LD  IX,STORE2
                CALL TESTCHAN
                LD (BUFF+2),HL

                LD HL,(BUFF+4)
                LD   IX,STORE3
                CALL TESTCHAN
                LD (BUFF+4),HL

                CALL DOENSE
                JP ALLREGIST   ;10 ONLY!
;***********
IF SPECVERSION

ALL13REGS       XOR A
                LD HL,BUFF+13
                LD E,13
                JR NEXTREG

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
ELSE

ALL13REGS       XOR A
                LD HL,BUFF+13
                LD DE,#F40D
                JR NEXTREG

ALLREGIST       XOR  A
                LD   HL,BUFF+10
                LD   DE,#F40A       ;D=Psg data port, E=loop counter

nextreg         LD   B,D
                OUT  (C),E
                LD   BC,#F6*256+%11000000
                OUT  (C),C
                OUT  (C),A
                LD   B,D
                LD   C,(HL)
                DEC  HL
                OUT  (C),C
                LD   BC,#F6*256+%10000000
                OUT  (C),C
                OUT  (C),A
                DEC  E
                JP   P,nextreg
ENDIF
;*************
                RET     ;---------->>>>>>> ouT

;FOR EACH OF THE 3 CHANNELS:

TESTCHAN        LD  A,(IX+CHANACTIVE)
                OR A
                RET Z          ;HL STILL CONTAINS PITCH!!

                LD (PITCHTEMP),HL
                DEC  (IX+maincount)
                JP NZ,DOENV_ENT
                LD A,20
                LD (DECI+1),A

                LD  H,(IX+dataptr+1)
                LD  L,(IX+DATAPTR)
      
DECI            LD A,0-0
                DEC A
                LD (DECI+1),A          ;SELF-MOD
                RET Z

                LD   A,(HL)
                INC  HL
                LD   E,(HL)
                INC HL
          
;-----------------------
SUBSELECT  CP 255
           JP Z,RETCONBLOC
           CP 225
           JR NC,SPECIALS   ; >=225

           OR A
           JP   Z,DOPAUSE     ;pitch 0 = pause
           CP  9
           JR  C,STARTLOOP   ;<9 = CHAN to start, FOLLOWED BY BLOC num 
           CP   101
           JP   C,NEWNOTE     ;LESS THAN 100=normal note
           CP   127
           JR   C,NOISE      ;102 TO 126     K=102=0  TO  X=115=13  

           JP COMPNOTE   ;whats left = 128 TO 224 = COMPRESSED NOTES

SPECIALS   SUB 225
           JP  Z,PLAYRAND     ;PLAY FROM RANDNOTE STORE(+PITCHSHIFT)
           DEC A
           JR   Z,NEWENT      ;set new tone-envelope for current channel
           DEC A
           JR   Z,NEWENV      ;set new volume-env for current chan
           DEC A
           JR   Z,NEWENSE     ;set new noise-envelope
           DEC A
           JP  Z,NEWRANDNOTE  ;226/ander. RANDnote = rnd*255 AND ANDER
           DEC A
           JR   Z,GONEWBLOCK  ;play a given tunebloc,then return to 1st
           DEC A
           JP   Z,NEWKEY      ;change musical key for current chan
           DEC A
           JR  Z,SETINTERVAL 
           DEC A
           JR Z, KILLCHAN

           JR DECI
          ;ANY OTHER VAL=SAFETY NET 

KILLCHAN        LD (IX+CHANACTIVE),0
killvol         LD H,(IX+ADVOLREG+1)
                LD L,(IX+ADVOLREG)    ;HL=address of vol register,current chan
                LD (HL),0
                LD HL,0
                RET


STARTLOOP       PUSH HL
                PUSH IX           ;A=CHAN E=TUNEBLOC
                CALL STARTACHAN
                POP IX
                POP HL
                JR DECI       

NOISE           SUB 102
                LD   (BUFF+6),A        ;noisepitch
                LD   (IX+noiseflag),1
                DEC HL
                JP   DECI

NEWKEY          LD   (IX+pitchshift),E
                JP   DECI

NEWENT          CALL FINDENV       ;returns with envelope address in BC
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

GONEWBLOCK      LD   (IX+conptr+1),H
                LD   (IX+conptr),L    ;leaving bloc so store ptr
                CALL FINDBLOC
                JP   DECI

RETCONBLOC      LD   H,(IX+conptr+1)  ;(ptr re-enters original "conductor" bloc)
                LD   L,(IX+conptr)
                LD   A,(HL)
                INC A                 ;TEST FOR 255,end-of-conductor-bloc marker
                JR   NZ,NOTEND
                LD   H,(IX+ptrrefr+1) ;refresh
                LD   L,(IX+ptrrefr)
notend          JP   DECI

SETINTERVAL     LD (IX+INTERVAL),E
                JP DECI

NEWRANDNOTE     PUSH HL
                LD HL,10418  ;RANDSEED,SELF MOD LATER      
                LD C,L
                LD B,H
                ADD HL,HL
                ADD HL,HL
                ADD HL,BC
                ADD HL,HL
                ADD HL,HL
                ADD HL,HL
                ADD HL,BC
                LD (NEWRANDNOTE+2),HL

                LD A,H               ;A=0 TO 255
                AND E                ;E = ANDER = range limiter
                LD C,A
                LD B,0      ;BC=RAND NUMBER 0 TO 255
                LD HL,RANDGROUP
                ADD HL,BC    ;HL POINTS TO ITEM IN GROUP
                LD A,(HL)
                LD (PLAYRAND+1),A

                POP HL
                JP DECI

RANDGROUP       DB 0, 3, 5, 7, 10, 7, 10,    12,15,17
                DB 12,15,17,19,22, 12,15,17,19,22
                DB 19,22,  24,27,29,31,34,  24,27,29, 0,0,0    ;33 ITEMS  

COMPNOTE        AND 127               ;a=note
                LD E,(IX+CURRENTDUR)  ;E=DUR
                DEC HL
                JP subselect          ;now works on pauses also

PLAYRAND        LD A,42   ;SELF MODIFIED VALUE

NEWNOTE         ADD  A,(IX+pitchshift)   ;A=notenum
;*****
IF SPECVERSION
                SUB 12
ENDIF
;*****
DOPAUSE         LD (IX+maincount),E    ;E=duration
                LD (IX+CURRENTNOTE),A    ;for chorder
                LD (IX+CURRENTDUR),E     ;FOR COMPRESSOR

                LD (IX+DATAPTR+1),H
                LD (IX+DATAPTR),L

                CALL FINDSETPITCH   ;A=PITCH NUM

                XOR A                  ;A=0
                LD (IX+CHORDTOGGLE),A   ;SO HI HARMONY 1ST

                LD H, (IX+ADVOLREG+1)  ;ZERO VOL
                LD L, (IX+ADVOLREG)
                LD (HL),A

                PUSH IX           ;RESTART ENV/ent
                POP  DE           ;DE=start of chan store
                LD   HL,8
                ADD  HL,DE        ;HL=start of chan store+8
                LDI
                LDI
                LDI
                LDI
                LDI
                LDI
                LDI
                LDI

                DEC  (IX+noiseflag)      ;test noiseflag   1=ON 0=OFF
                LD  (IX+NOISEFLAG),A     ;RESET EVERY TIME!
                LD  L,(IX+NOISEDIS)      ;DEFAULT DISABLE
                JR   NZ,GATING

NOISEon         LD HL,(ENSSTORE+envadr)  ;restart noise envelope
                LD (ENSSTORE+envptr),HL
                LD H,A
                LD L,A
                LD (ENSSTORE),HL         ;L=0,no noisedisable

GATING          LD   A,(BUFF+7)
                AND  (IX+ch_enable)      ;chan ENable (pitch AND noise on)
                OR   L                   ;noise DISable
                AND 32+16+8+4+2+1        ;SAFETY, top 2 bits must remain off
                LD   (BUFF+7),A          ;FINAL RESULT IN A!
;------------------------------------
                           ;IX points to volume-env workspace for current chan
DOENV_ENT       CALL ENGENERAL
                LD   H,(IX+advolreg+1)
                LD   L,(IX+advolreg)
                LD   A,(HL)
                ADD  A,C  
                SUB  128
                LD   (HL),A

ISITAPAUSE      LD HL,(PITCHTEMP)
                LD A,H
                OR L
                RET Z
ISITACHORD      LD A,(IX+interval)
                OR A
                JR NZ,DOCHORD
DOENT           INC  IX  ;make IX work on tone-envelope workspace,2 bytes along
                INC  IX
                CALL ENGENERAL
                LD HL,(PITCHTEMP)
                LD B,0
;*******************
IF SPECVERSION
                ADD HL,BC
                ADD HL,BC
                LD C,128
                SBC HL,BC
                SBC HL,BC
ELSE
                ADD  HL,BC
                LD   C,128
                SBC  HL,BC
ENDIF
;*******************:
                RET     ;WITH PITCH IN HL

DOCHORD         DEC (IX+CHORDTOGGLE)
                LD A,(IX+CURRENTNOTE)
                JR Z,FINDSETPITCH
                ADD (IX+INTERVAL)
                LD (IX+CHORDTOGGLE),1

pitchtab        equ  soundata                
FINDSETPITCH    ADD  A,A                     ;get new pitch from pitchtable
                ADD  A,PITCHTAB AND #00FF
                LD   L,A
                ADC  A,PITCHTAB AND #FF00 /256
                SUB  L
                LD   H,A      ;HL=ADR OF PITCH IN TABLE

                LD   DE,PITCHTEMP   ;DE=DESTINATION
                LDI                  ;PEEK(HL) > PEEK(DE)
                LDI
                LD HL,(PITCHTEMP)
                RET

DOENSE          LD   IX,ENSSTORE  ;IX now = noise envelope workspace
                CALL ENGENERAL    ;returns with "noise shift+128" in C 
                LD HL, BUFF+6
                LD   A,(HL)   ;get current noise value
                ADD  A,C
                SUB  128          ;add shift, minus 128
                LD   (HL),A   ;replace
                CP 33
                RET C
noiseoff        INC HL     ;HL=buff+7
                LD A,(HL)
                OR 32+16+8
                LD (HL),A 
                RET

;------------------------
ENGENERAL       PUSH IX
                POP  HL                ;points to counts
                LD   D,(IX+ENVPTR+1)   ;points to envelope
                LD   E,(IX+ENVPTR)
                INC  (HL)     ;inc count
                LD   A,(DE)
                SUB  (HL)
                LD   C,128    ;DEFAULT (C= 128 = 0 )
                RET  NZ
                LD   (HL),A
                INC DE        ;move along envelope
                LD  A,(DE)
                LD  C,A       ;C HOLDS INCREMENT
                INC  DE       ;point at repeats number
                INC  HL
                INC  (HL)     ;point at repeats count
                LD   A,(DE)
                SUB  (HL)
                RET  NZ
                LD   (HL),A
                INC  DE
                LD   A,(DE)
                INC  A 
                JR   NZ,nextsect
                LD   D,(IX+envadr+1)
                LD   E,(IX+envadr)
nextsect        LD   (IX+envptr+1),D  
                LD   (IX+envptr),E
                RET
;--------------------------------------------------------

BUFF      DW  00       ;a pitch
          DW  00       ;b pitch
          DW  00       ;c pitch
          DB  0        ;noise pitch
          DB  %00111111  ;gates
          DB  0        ;a vol
          DB  0        ;b vol
          DB  0        ;c vol
          DW  100      ;hard env len
          DB  10       ;hard env type

PITCHTEMP  DW 00

ensstore  DW 00 ;ENSCOUNTS
          DW 10
          DW 00 ;ENSPTR
          DW 04
          DW 00 ;ENS0
          DW 18
          DW 00 ;ENSADR
;----------------------------------
;channel stores

STORE1    DW  00     ;env counts
          DW  00     ;ENT COUNTS
          DW  00     ;ENV PTR
          DW  00     ;ENT PTR

          DW  00     ;ENV ZEROERS
          DW  00     ;ENT ZEROERS
          DW  00     ;ENV ADDR
          DW  00     ;ENT ADDR

          DB  0      ;CHAN ACTIVE
          DB  0      ;MAIN COUNT
          DW  00     ;MAIN PTR
          DW  00     ;CON PTR
          DW  00     ;PTR REFRESH
          DB  0      ;PITCHSHIFT
          DB  0      ;NOISE FLAG
          DB   8        ;NOISE DIS
          DB  32+16+4+2 ;chan ENable
          DW  BUFF+8    ;AD OF VOL REG
          DB  0
          DB  0      ;CURRENTDUR (FOR COMPRESSOR)
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
        DB  0
        DB  16
        DB  32+8+4+1
        DW  BUFF+9
        DB  0
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
        DB  0
        DB  32
        DB  16+8+2+1
        DW  BUFF+10
        DB  0
        DB  0
        DB  0
        DB  0
        DB  0

        DB 42     ;SPARE
;-----------------------
SOUNDATA
	db #00,#00,#84,#1a,#07,#19,#9f,#17
	db #4c,#16,#0c,#15,#dd,#13,#c0,#12
	db #b2,#11,#b4,#10,#c4,#0f,#e2,#0e
	db #0c,#0e,#42,#0d,#84,#0c,#d0,#0b
	db #26,#0b,#86,#0a,#ef,#09,#60,#09
	db #d9,#08,#5a,#08,#e2,#07,#71,#07
	db #06,#07,#a1,#06,#42,#06,#e8,#05
	db #93,#05,#43,#05,#f7,#04,#b0,#04
	db #6d,#04,#2d,#04,#f1,#03,#b8,#03
	db #83,#03,#50,#03,#21,#03,#f4,#02
	db #ca,#02,#a1,#02,#7c,#02,#58,#02
	db #36,#02,#17,#02,#f9,#01,#dc,#01
	db #c1,#01,#a8,#01,#90,#01,#7a,#01
	db #65,#01,#51,#01,#3e,#01,#2c,#01
	db #1b,#01,#0b,#01,#fc,#00,#ee,#00
	db #e1,#00,#d4,#00,#c8,#00,#bd,#00
	db #b2,#00,#a8,#00,#9f,#00,#96,#00
	db #8e,#00,#86,#00,#7e,#00,#77,#00
	db #70,#00,#6a,#00,#64,#00,#5e,#00
	db #59,#00,#54,#00,#4f,#00,#4b,#00
	db #47,#00,#43,#00,#3f,#00,#3c,#00
	db #38,#00,#35,#00,#32,#00,#2f,#00
	db #2d,#00,#2a,#00,#28,#00,#25,#00
	db #23,#00,#21,#00,#20,#00,#1e,#00
	db #1c,#00,#1b,#00,#19,#00,#1c,#00
	db #a8,#01,#ac,#01,#bf,#01,#d2,#01
	db #dc,#01,#e6,#01,#f0,#01,#fd,#01
	db #07,#02,#1a,#02,#24,#02,#31,#02
	db #3b,#02,#3c,#02,#43,#02,#56,#02
	db #60,#02,#6a,#02,#6b,#02,#81,#02
	db #88,#02,#98,#02,#9f,#02,#a6,#02
	db #ad,#02,#b4,#02,#be,#02,#cb,#02
	db #de,#02,#e2,#02,#ec,#02,#f9,#02
	db #fd,#02,#0a,#03,#14,#03,#21,#03
	db #28,#03,#32,#03,#39,#03,#46,#03
	db #35,#03,#3c,#03,#4e,#03,#52,#03
	db #c5,#03,#30,#04,#4d,#04,#51,#04
	db #57,#04,#58,#04,#62,#04,#88,#04
	db #9e,#04,#c7,#04,#ec,#04,#0a,#05
	db #27,#05,#44,#05,#5c,#05,#77,#05
	db #78,#05,#a9,#05,#d8,#05,#0e,#06
	db #15,#06,#25,#06,#44,#06,#45,#06
	db #46,#06,#4e,#06,#5f,#06,#69,#06
	db #87,#06,#91,#06,#9c,#06,#a7,#06
	db #b2,#06,#bd,#06,#c8,#06,#d3,#06
	db #e2,#06,#ed,#06,#f8,#06,#07,#07
	db #11,#07,#1c,#07,#27,#07,#32,#07
	db #3d,#07,#45,#07,#4c,#07,#57,#07
	db #6c,#07,#7c,#07,#8c,#07,#a1,#07
	db #b4,#07,#c5,#07,#cd,#07,#d8,#07
	db #e0,#07,#eb,#07,#f3,#07,#fa,#07
	db #fd,#07,#06,#08,#1b,#08,#30,#08
	db #6c,#08,#6d,#08,#7c,#08,#97,#08
	db #02,#81,#c8,#ff,#01,#8e,#01,#01
	db #7e,#01,#01,#77,#01,#01,#89,#01
	db #01,#7e,#01,#01,#76,#01,#ff,#01
	db #8e,#01,#01,#7e,#01,#01,#7b,#01
	db #01,#84,#01,#01,#7e,#01,#01,#77
	db #01,#ff,#01,#8d,#01,#01,#7f,#01
	db #04,#74,#01,#ff,#01,#8c,#01,#01
	db #7e,#01,#c8,#80,#c8,#ff,#01,#8b
	db #01,#01,#7f,#04,#c8,#80,#c8,#ff
	db #01,#8d,#01,#01,#7f,#03,#03,#7f
	db #03,#c8,#80,#c8,#ff,#01,#8a,#01
	db #01,#7e,#01,#c8,#80,#c8,#ff,#01
	db #8b,#01,#02,#7f,#03,#03,#7f,#02
	db #08,#7f,#03,#0d,#7f,#03,#c8,#80
	db #c8,#ff,#01,#8c,#01,#01,#7f,#08
	db #c8,#80,#c8,#ff,#01,#8e,#01,#01
	db #7f,#01,#01,#7e,#05,#c8,#80,#c8
	db #ff,#01,#87,#02,#02,#7f,#0e,#c8
	db #80,#c8,#ff,#ff,#01,#87,#01,#14
	db #7f,#07,#ff,#01,#70,#01,#01,#90
	db #01,#01,#7f,#01,#01,#82,#01,#01
	db #7d,#01,#01,#82,#01,#ff,#01,#81
	db #01,#01,#7f,#02,#01,#81,#01,#ff
	db #01,#83,#01,#01,#7d,#02,#01,#83
	db #01,#ff,#ff,#07,#80,#01,#01,#7f
	db #01,#01,#81,#01,#01,#7f,#01,#01
	db #81,#01,#01,#a3,#0a,#01,#5d,#0a
	db #ff,#01,#82,#06,#01,#7f,#0c,#ff
	db #01,#8d,#01,#01,#7d,#04,#01,#82
	db #01,#01,#7f,#02,#07,#7f,#01,#ff
	db #01,#6b,#01,#01,#a9,#02,#ff,#01
	db #81,#08,#01,#7f,#08,#ff,#01,#83
	db #02,#03,#7a,#05,#ff,#04,#85,#06
	db #01,#7e,#03,#ff,#01,#83,#05,#02
	db #7c,#02,#02,#7f,#06,#ff,#01,#87
	db #02,#01,#7f,#05,#02,#7f,#05,#03
	db #7f,#05,#ff,#01,#49,#01,#01,#9d
	db #01,#01,#28,#01,#01,#ef,#01,#01
	db #75,#01,#01,#dc,#01,#ff,#01,#80
	db #c8,#ff,#01,#85,#01,#01,#83,#01
	db #04,#7f,#08,#ff,#01,#78,#02,#01
	db #6f,#01,#01,#75,#03,#01,#85,#c8
	db #ff,#01,#89,#7f,#ff,#01,#8f,#01
	db #01,#7f,#01,#01,#7f,#01,#02,#7f
	db #0d,#ff,#01,#8f,#01,#02,#7f,#06
	db #03,#7f,#09,#ff,#01,#8e,#01,#01
	db #81,#01,#01,#7f,#02,#03,#7f,#0d
	db #ff,#01,#0b,#01,#01,#b1,#02,#ff
	db #01,#82,#07,#01,#7d,#02,#02,#7f
	db #08,#ff,#01,#62,#01,#01,#8b,#01
	db #ff,#01,#89,#01,#01,#7f,#02,#06
	db #7f,#05,#0c,#7f,#02,#ff,#01,#7e
	db #01,#01,#7f,#03,#ff,#02,#e9,#ff
	db #ff,#c8,#01,#02,#02,#e8,#00,#e2
	db #10,#e7,#0c,#e3,#02,#e4,#00,#03
	db #0b,#e6,#10,#03,#03,#e3,#01,#e6
	db #10,#e6,#40,#03,#3e,#e6,#10,#03
	db #03,#03,#0a,#e6,#40,#e6,#40,#e6
	db #43,#e7,#0e,#6b,#00,#12,#e6,#40
	db #e6,#40,#e6,#43,#e3,#02,#e6,#07
	db #e6,#07,#e6,#07,#e6,#07,#03,#0c
	db #e7,#0f,#e6,#07,#e6,#07,#e7,#0a
	db #e6,#07,#e6,#07,#e7,#0f,#e6,#07
	db #e6,#07,#00,#12,#03,#0b,#e3,#07
	db #e4,#1f,#e7,#13,#e8,#05,#e6,#41
	db #e7,#13,#e8,#05,#e6,#41,#03,#03
	db #00,#60,#03,#0f,#02,#1b,#e3,#08
	db #e8,#00,#e6,#3d,#ff,#e2,#12,#e7
	db #13,#e3,#04,#e6,#10,#e8,#0c,#e7
	db #00,#e6,#12,#e6,#41,#e8,#00,#e7
	db #13,#e6,#10,#e8,#0c,#e7,#00,#e6
	db #15,#00,#06,#e6,#13,#e6,#14,#e6
	db #44,#e7,#02,#00,#18,#e6,#15,#e6
	db #13,#e6,#14,#e6,#44,#e7,#0e,#e6
	db #08,#e6,#08,#e6,#08,#e6,#08,#e7
	db #0f,#e6,#09,#e6,#1a,#e6,#09,#e6
	db #1b,#e7,#0a,#e6,#09,#e6,#1a,#e6
	db #09,#e6,#1b,#e7,#0f,#e6,#09,#e6
	db #1a,#e6,#09,#e6,#1b,#e3,#04,#e8
	db #00,#e7,#0c,#e2,#12,#00,#72,#e6
	db #10,#e6,#10,#e6,#15,#00,#e7,#ff
	db #e7,#0c,#e6,#0a,#e7,#0f,#e6,#0a
	db #e7,#0c,#e6,#0a,#e7,#0f,#e6,#0a
	db #e7,#0c,#e6,#0a,#e7,#11,#e6,#0a
	db #e7,#0f,#e6,#0a,#ff,#3e,#06,#c0
	db #ff,#3e,#03,#c0,#45,#06,#ff,#ff
	db #1d,#06,#9d,#9b,#98,#18,#18,#98
	db #98,#ff,#e3,#06,#29,#03,#80,#a9
	db #80,#a7,#80,#30,#0c,#24,#03,#a2
	db #a4,#00,#06,#e3,#05,#2c,#03,#ac
	db #ac,#ab,#00,#0c,#29,#03,#a9,#a9
	db #ab,#80,#b3,#b2,#b0,#6f,#80,#ff
	db #e8,#0c,#e3,#06,#29,#03,#80,#a9
	db #80,#a7,#80,#30,#0c,#24,#09,#00
	db #03,#e3,#04,#24,#06,#ff,#e8,#0c
	db #e4,#00,#e3,#07,#66,#37,#03,#ab
	db #66,#b5,#a9,#73,#b5,#73,#a9,#e3
	db #09,#6f,#30,#06,#e3,#07,#66,#30
	db #03,#a4,#66,#bc,#a4,#73,#bc,#73
	db #a4,#e3,#09,#6f,#37,#06,#ff,#e8
	db #0c,#e3,#07,#66,#37,#03,#ab,#66
	db #b5,#a9,#73,#b5,#a9,#e3,#09,#6f
	db #30,#06,#e3,#07,#66,#30,#03,#a4
	db #66,#bc,#a4,#73,#bc,#a4,#e3,#09
	db #6f,#37,#06,#ff,#e8,#0c,#e3,#07
	db #e7,#43,#e5,#0f,#66,#e1,#03,#80
	db #66,#e1,#03,#80,#e3,#0a,#73,#00
	db #0c,#e3,#0b,#66,#80,#e3,#0a,#73
	db #80,#ff,#23,#12,#03,#0a,#19,#06
	db #1a,#0c,#9e,#a1,#a6,#28,#12,#26
	db #06,#28,#12,#23,#06,#1a,#0c,#9e
	db #a1,#a6,#a8,#28,#06,#a6,#ff,#42
	db #24,#40,#06,#3e,#0c,#3d,#12,#3b
	db #0c,#38,#06,#bb,#39,#24,#32,#06
	db #3e,#0c,#3d,#03,#be,#bd,#bb,#3d
	db #06,#3b,#0c,#ff,#04,#e7,#3c,#e3
	db #0d,#e8,#0c,#e5,#0f,#e1,#01,#e5
	db #0f,#e1,#01,#e5,#0f,#e1,#01,#e5
	db #0f,#e1,#01,#ff,#29,#06,#1d,#18
	db #1b,#06,#9d,#1f,#0c,#20,#24,#21
	db #0c,#22,#18,#20,#06,#a2,#24,#0c
	db #25,#12,#25,#06,#27,#12,#ff,#ff
	db #6f,#3d,#06,#3c,#03,#80,#c4,#80
	db #c3,#80,#41,#0c,#bc,#38,#06,#3a
	db #03,#80,#bc,#80,#b8,#80,#33,#18
	db #66,#34,#06,#b5,#37,#03,#80,#b8
	db #80,#3a,#0c,#b8,#37,#06,#35,#03
	db #80,#b7,#80,#b8,#80,#3a,#0c,#bc
	db #ff,#00,#06,#6f,#00,#0c,#33,#06
	db #bd,#b5,#ba,#00,#0c,#6f,#52,#06
	db #6f,#de,#35,#03,#80,#b7,#80,#b8
	db #80,#ba,#80,#6f,#46,#0c,#38,#03
	db #80,#ba,#80,#3c,#06,#80,#ba,#80
	db #38,#0c,#6f,#4f,#06,#6f,#cd,#ff
	db #66,#35,#06,#bc,#35,#03,#b5,#3c
	db #06,#00,#0c,#33,#06,#bf,#bd,#80
	db #ba,#6f,#4d,#0c,#6f,#4b,#06,#6f
	db #49,#0c,#38,#03,#ba,#bc,#80,#bd
	db #80,#bc,#80,#3a,#0c,#38,#03,#80
	db #b7,#80,#37,#0c,#33,#03,#80,#b7
	db #80,#35,#0c,#6f,#80,#ff,#66,#35
	db #06,#bc,#b5,#bc,#ff,#01,#02,#17
	db #e2,#10,#e3,#03,#e7,#07,#e6,#0d
	db #e6,#0d,#e6,#0d,#ff,#e2,#12,#e3
	db #04,#6f,#00,#06,#e7,#07,#e6,#04
	db #e6,#0e,#e6,#05,#e6,#0e,#e7,#1f
	db #e3,#08,#e8,#13,#6b,#00,#12,#e6
	db #0d,#e6,#0d,#ff,#e9,#e9,#e8,#09
	db #2c,#0c,#ae,#b8,#ba,#ff,#e8,#08
	db #30,#0c,#e8,#09,#ae,#2c,#06,#e8
	db #05,#b0,#e8,#09,#2e,#0c,#ff,#04
	db #04,#1e,#e3,#05,#e2,#17,#5d,#12
	db #e9,#04,#e3,#04,#e8,#07,#e7,#30
	db #e5,#02,#e1,#04,#e5,#02,#e1,#04
	db #e5,#02,#e1,#02,#e5,#02,#e1,#02
	db #e5,#02,#e1,#04,#e1,#08,#ff,#04
	db #e3,#05,#e2,#17,#00,#02,#5d,#12
	db #e9,#04,#e3,#14,#e2,#15,#e4,#16
	db #6b,#00,#0b,#e9,#04,#e3,#14,#e2
	db #15,#e4,#16,#6f,#54,#0b,#e9,#04
	db #e3,#14,#e2,#15,#e4,#16,#69,#60
	db #0b,#e9,#04,#e3,#19,#e2,#17,#e4
	db #18,#6b,#0e,#0b,#e9,#04,#e3,#19
	db #e2,#17,#e4,#18,#66,#1a,#0c,#e9
	db #04,#e3,#19,#e2,#17,#e4,#18,#73
	db #32,#0d,#e9,#04,#e5,#1f,#e7,#2d
	db #e3,#1a,#e2,#1b,#e4,#1c,#69,#e1
	db #12,#e9,#04,#e3,#1a,#e2,#1b,#e4
	db #1c,#6b,#4d,#12,#e9,#04,#e3,#1a
	db #e2,#1b,#e4,#1c,#6d,#5f,#12,#e9
	db #e3,#1d,#e2,#1e,#e7,#38,#e1,#07
	db #00,#02,#e7,#37,#e1,#14,#e9,#04
	db #e5,#07,#04,#28,#00,#01,#e6,#28
	db #e9,#04,#e3,#0b,#e2,#25,#e4,#13
	db #72,#48,#63,#e9,#04,#e3,#21,#e4
	db #22,#e2,#23,#6b,#2d,#23,#e9,#04
	db #e3,#22,#e4,#20,#e2,#23,#73,#35
	db #2a,#e9,#05,#e3,#20,#e4,#21,#e2
	db #23,#73,#41,#1d,#e9,#04,#04,#2f
	db #00,#02,#e6,#2f,#e9,#e3,#24,#e2
	db #25,#39,#11,#e9,#04,#e3,#08,#e2
	db #27,#e4,#04,#6f,#62,#28,#e9,#01
	db #f4,#81,#02,#32,#03,#33,#e3,#26
	db #e2,#0f,#00,#08,#4c,#0c,#c2,#49
	db #15,#49,#37,#e9,#f4,#81,#e3,#26
	db #e2,#0f,#4f,#0c,#ca,#47,#19,#4f
	db #06,#47,#37,#e9,#f4,#81,#e3,#26
	db #e2,#0f,#00,#04,#4e,#0c,#c9,#4a
	db #17,#4c,#37,#e9,#01,#f4,#14,#02
	db #35,#03,#36,#e3,#26,#e2,#0f,#48
	db #06,#c6,#4f,#0c,#48,#08,#45,#18
	db #e9,#f4,#14,#e3,#26,#e2,#0f,#00
	db #02,#4a,#06,#d2,#cb,#4b,#08,#46
	db #04,#4b,#1a,#e9,#f4,#14,#e3,#26
	db #e2,#0f,#00,#04,#4b,#06,#cb,#ca
	db #43,#0a,#54,#1e,#e9,#04,#e3,#08
	db #e2,#0e,#4d,#46,#e9,#04,#e3,#13
	db #e2,#1e,#e4,#0d,#72,#45,#12,#e9
	db #04,#e3,#06,#e2,#25,#52,#06,#e9
	db #04,#e3,#04,#e2,#1b,#e4,#19,#68
	db #3e,#0c,#e9,#04,#04,#3c,#00,#02
	db #e6,#3c,#e9,#e3,#08,#e2,#1e,#49
	db #15,#e9,#41,#ba,#ff,#e7,#00,#e6
	db #0a,#e7,#18,#e6,#0a,#ff,#04,#e3
	db #1a,#e2,#1b,#e4,#1c,#6d,#5f,#36
	db #e9,#6d,#5f,#36,#e9,#e4,#1c,#6d
	db #5f,#12,#e9,#29,#06,#1d,#18,#1b
	db #06,#9d,#20,#0c,#22,#24,#24,#0c
	db #25,#18,#27,#12,#24,#18,#9d,#ff
	db #6f,#3d,#06,#3c,#03,#80,#c4,#80
	db #c3,#80,#41,#0c,#bc,#38,#03,#b8
	db #ba,#80,#bc,#80,#b8,#80,#35,#18
	db #e8,#00,#e7,#0c,#6f,#38,#06,#bc
	db #3d,#03,#80,#bc,#80,#3a,#0c,#38
	db #03,#80,#b7,#80,#37,#0c,#33,#03
	db #80,#b7,#80,#35,#0c,#e7,#00,#e8
	db #0c,#6f,#80,#ff,#ff,#27,#06,#25
	db #12,#27,#18,#03,#45,#a4,#03,#0b
	db #71,#00,#06,#ff,#38,#03,#ba,#3c
	db #06,#3d,#03,#80,#bc,#80,#3a,#0c
	db #38,#03,#80,#b7,#80,#e8,#00,#43
	db #18,#e8,#0c,#71,#00,#06,#ff,#e2
	db #12,#e3,#04,#3c,#18,#00,#5d,#ff

;
.init_music	; added by Megachur - a= 1 - 22 - 49
;
	or a
	jp nz,init_music1
	inc a			; Title tune
	jp real_init_music

init_music1
	dec a
	jr nz,init_music2
	ld a,22		; Bonus screen	
	jp real_init_music

init_music2
	ld a,49		; Hiscore tune	
	jp real_init_music

FINISH          DEFL $
;                LIST
;                CLOSE
;START           DEFL START
;FINISH          DEFL FINISH
LENGTH          DEFL FINISH-START
;
.music_info
	db "Stormlord (1989)(Hewson)(Dave Rogers)",0
	db "STORMSD.ASM - STORMLORD Sound Driver - J.Dave Rogers 1988",0

	read "music_end.asm"
