; Music of Cybernoid 2 (1988)(Hewson)(Dave Rogers)()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CYBERNO2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b18e

	read "music_header.asm"

;CYBER2SD.ASM      CYBERNOID 2 sound driver       J.Dave Rogers  1988

;*************************************
SPECVERSION     EQU       0             ;1 FOR SPECTRUM,0 FOR AMSTRAD
SOUNDCOD        EQU       music_begin	;28000         ;machine code address.
;SOUNDATA        EQU       soundcod+881  ;datablock address.
;*************************************

             NOLIST                

ENVSINDEX    EQU       soundata+200
TUNESINDEX   EQU       ENVSINDEX+80

envcounts    EQU 0
entcounts    EQU 2
envptr       EQU 4
entptr       EQU 6
env0         EQU 8
ent0         EQU 10
envadr       EQU 12
entadr       EQU 14

chanactive   EQU 16   ;1
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
;             WRITE "CYBER2SD.BIN"
start        DEFL $

;-----------------------------------------------
JUMPBLOCK       JP PLAY          ;used for convenience in Basic Demos
                JP SILENCE
;
.init_music
;
BASIC_DEMO      LD E,1
		LD A,1

;-------------------------------------------------
STARTACHAN      LD C,A             ; a/c=chan num e=tuneblock num
                CALL FINDBLOC      ; 1. PUT BLOCK ADDRESS IN HL, GIVEN E
                LD A,(HL)          ; 2. LOOK FOR START CHANNEL MARKER
                CP 9
                JR NC,nochanmarker
                LD C,A
                INC HL
                LD A,(HL)         ; 5. LOOK FOR SPECIAL PRIORITY,ELSE DEFAULT 10
NOCHANMARKER    CP 244
                LD B,10
                JR NZ, CH1TO3
                INC HL
                LD B,(HL)
                INC HL        ;C NOW CHAN   B NOW PRIORITY

CH1TO3          LD IX,STORE1       ; 4. FIND IX FOR NEW CHAN
                DEC C
                JR Z ,IXfound
                LD IX,STORE2
                DEC C
                JR Z,IXfound
                LD IX,STORE3
                DEC C
                JR Z,IXFOUND
CHANALT         LD A,(STORE1+CHANACTIVE)     ;CH4= 1 / 2
                OR A
                LD IX,STORE1
                JR Z,IXFOUND        ;CH1 FREE
                LD IX,STORE2        ;USE CH2                
IXFOUND
TRYSTART        LD A,B
                CP (IX+CHANACTIVE)   ; 6. TEST AGAINST CURRENT PRIORITY
                RET C
DOSTART         XOR A
                LD (IX+CHANACTIVE),A   ; 7. off while set up!
                LD (IX+DATAPTR),L       ;set pointers for this channel
                LD (IX+DATAPTR+1),H
                LD (IX+CONPTR),L
                LD (IX+CONPTR+1),H
                LD (IX+PTRREFR),L
                LD (IX+PTRREFR+1),H

                LD (IX+MAINCOUNT),1
                LD (IX+PITCHSHIFT),A
                LD (IX+INTERVAL),A
                 LD (IX+CHANACTIVE),B     ;activate
                RET               
 
;-------------------------------------
;
.stop_music
;
SILENCE         XOR A
                LD  (STORE1+CHANACTIVE),A
                LD  (STORE2+CHANACTIVE),A
                LD  (STORE3+CHANACTIVE),A
                LD (BUFF+8),A              ;volume registers 0
                LD (BUFF+9),A
                LD (BUFF+10),A
                LD   A,1+2+4+8+16+32       ;all gates shut
                LD   (BUFF+7),A
                JP ALLREGIST               ;RETS FROM THERE

;-------------------------subroutines
FINDBLOC        LD   A,E
                ADD  A,A
                ADD  A,TUNESINDEX AND #00FF
                LD   L,A
                ADC  A,TUNESINDEX AND #FF00 /256
                SUB  L
                LD   H,A         ;HL now points to 2byte value in table 
                LD   E,(HL)
                INC  HL
                LD   D,(HL)      ;DE=value(offset FROM START OF SOUNDATA)
                LD HL,soundata
                ADD HL,DE        ;HL=address of new tunebloc
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
;
PLAY            LD  IX,STORE1     ;---do channel 1 (IX points to chan1 store) 
                LD HL,(BUFF)
                CALL TESTCHAN
                LD HL,(PITCHTEMP)
                LD (BUFF),HL

                LD HL, (BUFF+2)
                LD  IX,STORE2     ;---do channel 2
                CALL TESTCHAN
                LD HL,(PITCHTEMP)
                LD (BUFF+2),HL

                LD HL,(BUFF+4)
                LD   IX,STORE3     ;---do channel 3
                CALL TESTCHAN
                LD HL,(PITCHTEMP)
                LD (BUFF+4),HL

                CALL DOENSE        ;do noise envelope
;********************
IF SPECVERSION

ALLREGIST       XOR A
                LD HL,BUFF+13
                LD E,13
NEXTREG         LD BC,65533
                OUT (C),E
                LD BC,49149
                LD A,(HL)
                DEC HL
                OUT (C),A
                DEC E
                JP P,NEXTREG  
ELSE

ALLREGIST       XOR  A
                LD   HL,BUFF+13            ;registers buffer
                LD   DE,#F40D              ;D=Psg data port, E=loop counter
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
;**************************
                RET                   ;-------------->>>>>>> out

;FOR EACH OF THE 3 CHANNELS:

TESTCHAN        LD (PITCHTEMP),HL
                LD  A,(IX+CHANACTIVE)  ;CHAN ACTIVE?
                OR A
                RET Z                  ;do nothing if channel not active
                DEC  (IX+maincount)    ;duration countdown, new note when 0
                JP NZ,DOENV_ENT
                LD A,20
                LD (DECI+1),A

                LD  H,(IX+dataptr+1)   ;get data ptr address
                LD  L,(IX+DATAPTR)
      
DECI            LD A,0-0
                DEC A
                LD (DECI+1),A          ;SELF-MOD
                RET Z

                LD   A,(HL)            ;A=peek(ptr)
                INC  HL
                LD   E,(HL)            ;E=peek(ptr+1)
                INC HL                 ;inc and store ptr for next time
          
;-----------------------
SUBSELECT  CP   0             ;A=VALUE
           JP   Z,DOPAUSE     ;pitch 0 = pause
           CP  9
           JR  C,STARTLOOP   ;<9 = CHAN to start, FOLLOWED BY BLOC num 
           CP   101
           JP   C,NEWNOTE     ;LESS THAN 100=normal note
           CP   127
           JR   C,NOISE      ;102 TO 127 NOISE K TO X  
           CP   223
           JP   C, COMPNOTE   ;128 TO 223 COMPRESSED NOTES
           CP  227
           JP  Z,PLAYRAND     ;PLAY FROM RANDNOTE STORE(+PITCHSHIFT)
           CP   225
           JP   Z,KILLCHAN    ;shut chan after e.g.short sound effects
           CP   233
           JR   Z,NEWENT      ;set new tone-envelope for current channel
           CP   232
           JR   Z,NEWENV      ;set new volume-env for current chan
           CP   234
           JR   Z,NEWENSE     ;set new noise-envelope
           CP  226
           JP  Z,NEWRANDNOTE  ;226/ander. RANDnote = rnd*255 AND ANDER
           CP   229
           JR   Z,GONEWBLOCK  ;play a given tunebloc,then return to 1st
           CP   230
           JP   Z,NEWKEY      ;change musical key for current chan
           CP  240
           JR  Z,SETINTERVAL 
           CP   255
           JR   Z,RETCONBLOC  ;end-of-tunebloc marker
            
           JR DECI            ;SAFETY NET 

KILLCHAN        LD (IX+CHANACTIVE),0
killvol         LD H,(IX+ADVOLREG+1)
                LD L,(IX+ADVOLREG)    ;HL=address of vol register,current chan
                LD (HL),0
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
                INC A                ;A=1 to (0 gives pause!)
                LD (PLAYRAND+1),A
                POP HL
                JP DECI

COMPNOTE        AND 127
                DEC HL
                LD E,(IX+CURRENTDUR)
                JP NEWNOTE

PLAYRAND        LD A,42   ;SELF MODIFIED VALUE

NEWNOTE         ADD  A,(IX+pitchshift)   ;A=notenum

;**********
IF SPECVERSION
                SUB 12
ENDIF
;**********

DOPAUSE         LD   (IX+maincount),E    ;E=duration
                LD (IX+CURRENTNOTE),A    ;for chorder
                LD (IX+CURRENTDUR),E     ;FOR COMPRESSOR

                LD (IX+DATAPTR+1),H
                LD (IX+DATAPTR),L

                CALL FINDSETPITCH

                LD H, (IX+ADVOLREG+1)
                LD L, (IX+ADVOLREG)
                LD (HL),0

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
;------------------------------------
                           ;IX points to volume-env workspace for current chan
DOENV_ENT       CALL ENGENERAL         ;returns with "volume change+128" in C
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
                CALL ENGENERAL   ;returns with "pitch change+128" in C
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
                LD   C,128       ;deduct 128, allows negative changes
                SBC  HL,BC
ENDIF
;*******************:
                LD (PITCHTEMP),HL
                RET

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
                RET

DOENSE          LD   IX,ENSSTORE  ;IX now = noise envelope workspace
                CALL ENGENERAL    ;returns with "noise shift+128" in C 
                LD HL, BUFF+6
                LD   A,(HL)   ;get current noise value
                ADD  A,C
                SUB  128          ;add shift, minus 128
                LD   (HL),A   ;replace
                CP 17
                RET C
noiseoff        INC HL     ;HL=buff+7
                LD A,(HL)
                OR 32+16+8
                LD (HL),A 
                RET

;------------------------
ENGENERAL       PUSH IX       ;(subroutine to do envelope and return value)
                POP  HL                ;points to counts
                LD   D,(IX+ENVPTR+1)   ;points to envelope
                LD   E,(IX+ENVPTR)
                INC  (HL)     ;inc count
                LD   A,(DE)
                SUB  (HL)     ;compare to envelope
                LD   C,128    ;DEFAULT (C= 128 = 0 )
                RET  NZ       ;count not reached
                LD   (HL),A   ;A=0, resets count
                INC DE        ;move along envelope
                LD  A,(DE)
                LD  C,A       ;C HOLDS INCREMENT
                INC  DE       ;point at repeats number
                INC  HL
                INC  (HL)     ;point at repeats count
                LD   A,(DE)
                SUB  (HL)     ;compare
                RET  NZ       ;count not reached
                LD   (HL),A   ;A=0, resets count;
                INC  DE       ;move to next section of envelope
                LD   A,(DE)
                INC  A        ;test for A=255 (end of envelope marker)
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
          DW  100      ;hard env len
          DB  10       ;hard env type

PITCHTEMP  DW 00

ensstore  DW 00 ;ENSCOUNTS    ;noise envelope workspace
          DW 10               ;dummy spacer to give same format as chan stores
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
        DB  16        ;NOISE DIS
        DB  32+8+4+1  ;chan ENable
        DW  BUFF+9    ;AD OF VOL REg
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
        DB  32       ;NOISE DIS
        DB  16+8+2+1 ;CHAN ENABLE
        DW  BUFF+10  ;AD OF VOL REG
        DB  0
        DB  0
        DB  0
        DB  0
        DB  0

        DB 42     ;SPARE
;------------------------------------------------
SOUNDATA
	db #00,#00,#9f,#17,#4c,#16,#0c,#15
	db #dd,#13,#c0,#12,#b2,#11,#b4,#10
	db #c4,#0f,#e2,#0e,#0c,#0e,#42,#0d
	db #84,#0c,#d0,#0b,#26,#0b,#86,#0a
	db #ef,#09,#60,#09,#d9,#08,#5a,#08
	db #e2,#07,#71,#07,#06,#07,#a1,#06
	db #42,#06,#e8,#05,#93,#05,#43,#05
	db #f7,#04,#b0,#04,#6d,#04,#2d,#04
	db #f1,#03,#b8,#03,#83,#03,#50,#03
	db #21,#03,#f4,#02,#ca,#02,#a1,#02
	db #7c,#02,#58,#02,#36,#02,#17,#02
	db #f9,#01,#dc,#01,#c1,#01,#a8,#01
	db #90,#01,#7a,#01,#65,#01,#51,#01
	db #3e,#01,#2c,#01,#1b,#01,#0b,#01
	db #fc,#00,#ee,#00,#e1,#00,#d4,#00
	db #c8,#00,#bd,#00,#b2,#00,#a8,#00
	db #9f,#00,#96,#00,#8e,#00,#86,#00
	db #7e,#00,#77,#00,#70,#00,#6a,#00
	db #64,#00,#5e,#00,#59,#00,#54,#00
	db #4f,#00,#4b,#00,#47,#00,#43,#00
	db #3f,#00,#3c,#00,#38,#00,#35,#00
	db #32,#00,#2f,#00,#2d,#00,#2a,#00
	db #28,#00,#25,#00,#23,#00,#21,#00
	db #20,#00,#1e,#00,#1c,#00,#1b,#00
	db #19,#00,#18,#00,#16,#00,#00,#00
	db #8c,#01,#90,#01,#9a,#01,#a4,#01
	db #b4,#01,#be,#01,#cb,#01,#d8,#01
	db #e5,#01,#f5,#01,#ff,#01,#09,#02
	db #13,#02,#1d,#02,#1e,#02,#1f,#02
	db #20,#02,#2a,#02,#2b,#02,#41,#02
	db #42,#02,#46,#02,#50,#02,#5d,#02
	db #6a,#02,#7a,#02,#81,#02,#88,#02
	db #95,#02,#99,#02,#a6,#02,#ad,#02
	db #ba,#02,#c1,#02,#c2,#02,#cc,#02
	db #e5,#02,#fe,#02,#0e,#03,#00,#00
	db #1a,#03,#37,#04,#df,#04,#e2,#04
	db #ef,#04,#3d,#05,#4f,#05,#5f,#05
	db #a1,#05,#e3,#05,#ee,#05,#0f,#06
	db #24,#06,#29,#06,#3f,#06,#5e,#06
	db #5f,#06,#83,#06,#84,#06,#85,#06
	db #86,#06,#87,#06,#1f,#03,#2b,#03
	db #3a,#03,#46,#03,#52,#03,#61,#03
	db #70,#03,#7c,#03,#8c,#03,#9b,#03
	db #a7,#03,#b8,#03,#c9,#03,#d7,#03
	db #e2,#03,#e3,#03,#f2,#03,#00,#04
	db #01,#04,#13,#04,#1e,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#88,#06,#91,#06,#9e,#06
	db #a9,#06,#ba,#06,#c7,#06,#d0,#06
	db #db,#06,#e4,#06,#c8,#80,#c8,#ff
	db #01,#81,#0d,#09,#7f,#09,#c8,#80
	db #c8,#ff,#01,#8d,#01,#01,#7f,#04
	db #01,#77,#01,#ff,#01,#8a,#01,#01
	db #81,#02,#02,#7f,#07,#0c,#7f,#06
	db #c8,#80,#c8,#ff,#01,#81,#0a,#09
	db #7f,#06,#c8,#80,#c8,#ff,#01,#8c
	db #01,#0a,#7f,#08,#14,#7f,#04,#c8
	db #80,#c8,#ff,#01,#8d,#01,#02,#7f
	db #07,#0c,#7f,#06,#c8,#80,#c8,#ff
	db #01,#8d,#01,#01,#7f,#0b,#09,#7f
	db #02,#c8,#80,#c8,#ff,#01,#8b,#01
	db #08,#7f,#01,#02,#7f,#01,#07,#7f
	db #03,#16,#7f,#07,#ff,#01,#83,#03
	db #11,#7f,#05,#c8,#80,#c8,#ff,#01
	db #89,#01,#01,#7d,#03,#c8,#80,#c8
	db #ff,#01,#77,#01,#01,#83,#03,#c8
	db #80,#c8,#ff,#01,#81,#02,#02,#7f
	db #03,#03,#81,#01,#ff,#ff,#ff,#ff
	db #01,#87,#03,#01,#79,#06,#01,#87
	db #03,#ff,#ff,#01,#93,#01,#01,#6d
	db #01,#01,#7f,#02,#01,#81,#04,#01
	db #7f,#04,#01,#81,#02,#c8,#80,#c8
	db #ff,#ff,#02,#7f,#c8,#ff,#01,#80
	db #01,#01,#b4,#01,#c8,#80,#c8,#ff
	db #01,#80,#01,#01,#7e,#01,#02,#e3
	db #01,#c8,#80,#c8,#ff,#01,#8a,#01
	db #01,#7e,#01,#02,#7f,#03,#c8,#80
	db #c8,#ff,#01,#85,#03,#01,#71,#01
	db #01,#80,#01,#01,#8f,#01,#01,#7b
	db #03,#ff,#01,#85,#03,#01,#71,#01
	db #ff,#01,#96,#01,#02,#79,#02,#ff
	db #01,#86,#01,#01,#85,#01,#01,#7f
	db #03,#c8,#80,#c8,#ff,#01,#a1,#c8
	db #ff,#01,#85,#03,#09,#7d,#04,#0e
	db #7f,#03,#c8,#80,#c8,#ff,#01,#84
	db #01,#01,#7f,#01,#ff,#01,#8b,#01
	db #01,#7e,#01,#02,#7f,#03,#c8,#80
	db #c8,#ff,#01,#83,#05,#01,#71,#01
	db #ff,#ff,#02,#8d,#01,#02,#67,#01
	db #c8,#80,#c8,#ff,#01,#8f,#01,#08
	db #80,#01,#02,#7f,#01,#04,#7f,#01
	db #07,#7f,#02,#0c,#7f,#04,#16,#7f
	db #07,#c8,#80,#c8,#ff,#01,#79,#01
	db #01,#8b,#01,#01,#6f,#01,#01,#9b
	db #01,#01,#5b,#01,#01,#af,#01,#01
	db #47,#01,#01,#c3,#01,#ff,#01,#8f
	db #01,#01,#7a,#01,#01,#86,#01,#01
	db #7f,#09,#08,#7f,#06,#ff,#01,#99
	db #03,#01,#79,#07,#0a,#7e,#c8,#ff
	db #00,#00,#f4,#63,#e1,#ff,#ff,#04
	db #f4,#0f,#e8,#19,#e9,#18,#5d,#48
	db #ea,#16,#e1,#04,#f4,#0f,#e8,#01
	db #f0,#3c,#ea,#05,#67,#24,#4f,#ea
	db #16,#e1,#04,#f4,#0f,#e8,#1d,#e9
	db #1e,#4f,#4d,#ea,#16,#e1,#03,#f4
	db #0f,#e8,#06,#e9,#19,#53,#0f,#ea
	db #16,#e1,#03,#f4,#0f,#e8,#07,#e9
	db #01,#ea,#01,#6c,#5e,#10,#ea,#16
	db #e1,#03,#f4,#0f,#e8,#05,#e9,#1c
	db #ea,#27,#68,#4f,#14,#ea,#16,#e1
	db #03,#f4,#0f,#e8,#15,#e9,#10,#43
	db #14,#ea,#16,#e1,#03,#f4,#0f,#e2
	db #0f,#e8,#25,#e9,#26,#e6,#3e,#e3
	db #19,#ea,#16,#e1,#04,#f4,#0f,#e8
	db #23,#e9,#24,#ea,#00,#73,#56,#63
	db #ea,#16,#e1,#03,#f4,#0f,#e8,#12
	db #e9,#24,#61,#12,#ea,#16,#e1,#03
	db #f4,#0f,#e8,#1d,#e9,#1a,#ea,#0b
	db #71,#39,#40,#e9,#0c,#ea,#16,#e1
	db #03,#f4,#0f,#e8,#06,#e9,#22,#ea
	db #00,#73,#5e,#02,#5e,#10,#ea,#16
	db #e1,#01,#f4,#0f,#02,#23,#00,#0c
	db #03,#23,#00,#12,#e5,#23,#e1,#f4
	db #0f,#e8,#01,#e9,#1a,#5b,#12,#4f
	db #69,#e1,#e1,#04,#f4,#0f,#e8,#01
	db #e9,#20,#ea,#14,#70,#49,#2a,#ea
	db #16,#e1,#04,#f4,#0f,#e8,#02,#e9
	db #1c,#58,#16,#d8,#d8,#ea,#16,#e1
	db #e1,#01,#f4,#0f,#02,#29,#03,#2a
	db #e8,#00,#00,#32,#e5,#2a,#00,#6e
	db #e5,#2a,#ff,#e6,#30,#e8,#1e,#e9
	db #00,#e2,#3f,#e3,#03,#ff,#e9,#14
	db #e6,#30,#e8,#04,#ea,#01,#e3,#1e
	db #ea,#00,#e8,#08,#73,#e3,#46,#e8
	db #04,#ea,#01,#66,#e3,#3c,#ff,#01
	db #f4,#0f,#03,#00,#02,#03,#e6,#00
	db #f0,#00,#e9,#0c,#e8,#03,#e5,#05
	db #e5,#05,#e5,#05,#e5,#05,#03,#03
	db #02,#31,#e5,#04,#e5,#05,#03,#03
	db #02,#33,#e5,#04,#e5,#06,#02,#0d
	db #03,#09,#e5,#07,#02,#0e,#e5,#08
	db #02,#34,#03,#03,#e5,#04,#e6,#0a
	db #e5,#05,#03,#0c,#02,#35,#e6,#05
	db #e5,#04,#e5,#05,#02,#37,#e5,#06
	db #e5,#04,#03,#09,#02,#0d,#e6,#00
	db #e5,#07,#02,#0e,#e5,#08,#03,#03
	db #02,#38,#e5,#04,#02,#32,#e5,#05
	db #02,#34,#03,#03,#e5,#04,#02,#39
	db #e5,#05,#e5,#05,#e5,#05,#02,#34
	db #e5,#05,#02,#39,#e5,#05,#e5,#05
	db #e5,#05,#02,#34,#e5,#05,#03,#00
	db #e6,#09,#f0,#13,#e8,#1f,#02,#00
	db #e5,#05,#e5,#05,#e5,#06,#e5,#06
	db #e5,#05,#e5,#05,#e5,#06,#e5,#06
	db #e6,#0e,#02,#36,#e5,#05,#e5,#05
	db #e5,#05,#02,#00,#e5,#02,#ff,#00
	db #38,#ff,#e6,#1f,#e8,#17,#f0,#0c
	db #e5,#04,#e5,#05,#ff,#0c,#e5,#ea
	db #16,#e9,#12,#66,#21,#07,#a1,#66
	db #ad,#a1,#6b,#ab,#66,#9f,#66,#9f
	db #66,#ab,#66,#9d,#9d,#66,#a9,#9d
	db #6b,#b5,#66,#9d,#66,#9c,#66,#a9
	db #66,#9d,#9d,#66,#a9,#9d,#6b,#a8
	db #66,#9c,#66,#9c,#66,#a8,#66,#9a
	db #66,#9a,#66,#a6,#66,#9a,#6b,#b2
	db #66,#9a,#66,#98,#66,#a6,#66,#9f
	db #9f,#66,#ab,#9f,#6b,#b7,#66,#9f
	db #66,#9f,#66,#ab,#ff,#66,#15,#07
	db #66,#a1,#66,#ab,#66,#ad,#6b,#ad
	db #66,#a1,#66,#9f,#66,#a1,#ff,#66
	db #1e,#07,#aa,#66,#9e,#a8,#6b,#b6
	db #66,#aa,#66,#a8,#66,#aa,#ff,#66
	db #1f,#07,#66,#9f,#66,#ab,#66,#ab
	db #6a,#af,#66,#af,#66,#a3,#66,#af
	db #66,#a4,#66,#a4,#66,#9c,#66,#9f
	db #6a,#b0,#66,#a4,#66,#9c,#66,#9f
	db #66,#a4,#66,#98,#66,#9c,#66,#9f
	db #6a,#b0,#66,#a4,#66,#9c,#66,#9f
	db #66,#a3,#66,#a3,#66,#a8,#66,#aa
	db #6a,#af,#66,#a3,#66,#a8,#66,#aa
	db #ff,#66,#23,#07,#66,#a3,#66,#a7
	db #66,#af,#6a,#ad,#66,#ad,#66,#a1
	db #66,#ad,#66,#9c,#66,#9c,#66,#a8
	db #66,#a8,#6a,#b4,#66,#a8,#66,#9c
	db #66,#a8,#66,#9a,#66,#9a,#66,#a6
	db #66,#9a,#6a,#b2,#66,#9a,#66,#a6
	db #66,#9a,#66,#a5,#66,#a5,#66,#b1
	db #66,#a5,#6a,#a3,#66,#a3,#66,#af
	db #66,#a3,#ff,#e6,#1f,#e8,#17,#e9
	db #00,#e5,#07,#e5,#08,#ff,#00,#07
	db #a1,#9c,#a4,#a6,#a8,#a6,#a4,#a3
	db #21,#23,#15,#07,#97,#15,#0e,#1f
	db #07,#a1,#1f,#0e,#1d,#07,#9f,#1d
	db #2a,#1c,#07,#9b,#1c,#1c,#ff,#00
	db #0e,#48,#07,#ca,#c8,#c5,#c0,#c7
	db #45,#54,#43,#1c,#41,#2a,#40,#07
	db #bf,#40,#1c,#ff,#e8,#17,#e5,#04
	db #ff,#e6,#18,#e8,#1b,#f0,#0c,#00
	db #0e,#23,#07,#a4,#a6,#a3,#a4,#a6
	db #28,#54,#28,#1c,#28,#38,#ff,#e6
	db #18,#e8,#1b,#f0,#0c,#27,#0e,#27
	db #07,#a8,#aa,#a7,#a8,#aa,#2c,#2a
	db #1c,#07,#9e,#20,#0e,#28,#07,#aa
	db #2c,#0e,#af,#2d,#38,#ff,#ff,#21
	db #0e,#a4,#a3,#a6,#24,#07,#a6,#a8
	db #a9,#a8,#a6,#a4,#a3,#21,#0e,#95
	db #a3,#1f,#07,#21,#23,#1a,#07,#9d
	db #9c,#95,#9a,#9d,#9c,#95,#9f,#9d
	db #9c,#95,#ff,#ff,#ff,#ff,#ff,#ff
	db #e8,#09,#e9,#0c,#e5,#0b,#e5,#32
	db #e1,#e6,#24,#e8,#09,#e9,#0a,#23
	db #0e,#e9,#0c,#21,#46,#e1,#e6,#24
	db #e8,#09,#e9,#0c,#e5,#0a,#e5,#32
	db #e1,#e6,#24,#e8,#1b,#f0,#18,#e5
	db #0a,#23,#2a,#00,#0e,#1d,#07,#9c
	db #9a,#e1,#e6,#1d,#e8,#1f,#f0,#0c
	db #e5,#10,#e5,#05,#e5,#05,#ff,#e6
	db #1d,#e8,#1f,#f0,#0c,#e5,#05,#ff
	db #e6,#1d,#e8,#09,#f0,#0c,#e5,#10
	db #1a,#38,#e1,#e8,#1b,#f0,#18,#e5
	db #0b,#e5,#32,#e1,#e8,#1f,#f0,#18
	db #00,#0e,#3c,#07,#bb,#bc,#00,#07
	db #b9,#00,#07,#ff,#00,#00,#97,#cf
	db #a5,#97,#cf,#a2,#97,#cf,#3c,#99
	db #cf,#00,#00,#35,#20,#00,#00,#00
	db #00,#00,#15,#30,#2a,#00,#00,#00
	db #15,#15,#95,#64,#88,#00,#00,#40
	db #6a,#6e,#3a,#6a,#2a,#00,#00,#00
	db #00,#00,#00,#35,#20,#00,#00,#00
	db #00,#00,#00,#15,#9d,#00,#00,#00
	db #00,#35,#20,#6a,#98,#2a,#00,#00
	db #10,#6a,#3a,#35,#3a,#00,#00,#00
	db #20,#15,#10,#3a,#20,#00,#00,#10
	db #00,#00,#35,#cc,#3a,#00,#00,#44
	db #20,#10,#6a,#95,#30,#20,#00,#15
	db #c8,#9d,#cc,#3a,#64,#88,#00,#10
	db #3f,#3a,#3f,#30,#6a,#2a,#00,#00
	db #30,#64,#30,#64,#35,#20,#00,#00
	db #00,#60,#9d,#60,#98,#00,#00,#00
	db #00,#10,#30,#15,#88,#00,#00,#00
	db #00,#00,#00,#10,#3a,#00,#00,#00
	db #00,#00,#00,#3a,#35,#00,#00,#00
	db #00,#2a,#6a,#3a,#cc,#00,#00,#00
	db #95,#95,#9d,#35,#95,#00,#00,#00
	db #00,#00,#00,#10,#3a,#00,#00,#15
	db #9d,#3a,#c8,#10,#3f,#00,#30,#10
	db #6e,#30,#35,#cc,#30,#6a,#3a,#00
	db #00,#2a,#35,#30,#6a,#3a,#15,#9d
	db #20,#c0,#3a,#6e,#9d,#35,#3a,#35
	db #64,#10,#c8,#00,#9d,#10,#3a,#15
	db #30,#44,#98,#15,#95,#10,#3a,#30
	db #64,#35,#c8,#10,#30,#00,#00,#2a
	db #00,#6a,#2a,#35,#9d,#00,#00,#8a
	db #00,#80,#00,#45,#00,#40,#00,#00
	db #8a,#00,#80,#00,#45,#00,#40,#00
	db #40,#00,#45,#00,#80,#00,#8a,#40
	db #00,#45,#00,#00,#00,#00,#00,#00
	db #00,#a8,#00,#54,#a8,#54,#02,#54
	db #02,#01,#02,#02,#00,#0a,#00,#8a
	db #00,#80,#54,#54,#a8,#54,#02,#54
	db #02,#01,#02,#a8,#01,#00,#05,#00
	db #00,#00,#00,#00,#00,#00,#00,#40
	db #cc,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#80,#00,#c4,#00,#9d
	db #2a,#3f,#00,#2a,#00,#00,#00,#00
	db #00,#00,#c0,#40,#33,#40,#33,#40
	db #22,#40,#22,#40,#22,#40,#22,#00
	db #00,#73,#00,#73,#a0,#73,#a0,#51
	db #a0,#f1,#a0,#f1,#a0,#f1,#a0,#40
	db #22,#40,#22,#40,#22,#40,#72,#40
	db #33,#40,#33,#00,#73,#00,#00,#f1
	db #a0,#f1,#a0,#f1,#a0,#f1,#a0,#f3
	db #a0,#f2,#a0,#f0,#00,#00,#00,#40
	db #c4,#00,#00,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#40,#00,#40,#cc
	db #3f,#00,#00,#00,#2a,#00,#2a,#00
	db #2a,#00,#2a,#15,#00,#15,#00,#00
	db #40,#00,#80,#00,#80,#00,#c0,#00
	db #c0,#00,#00,#40,#c4,#00,#00,#15
	db #00,#00,#2a,#88,#2a,#cc,#2a,#cc
	db #2a,#00,#00,#cc,#3f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#54,#0a,#81,#0a,#a9,#0a,#00
	db #a2,#11,#a0,#d1,#a0,#73,#a0,#73
	db #a0,#73,#a0,#73,#a0,#73,#a0,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #80,#40,#8a,#c5,#8a,#00,#00,#00
	db #2a,#44,#20,#95,#20,#9d,#20,#9d
	db #20,#9d,#20,#30,#20,#00,#00,#a9
	db #0a,#a9,#0a,#a9,#0a,#a9,#0a,#a9
	db #0a,#a9,#0a,#0f,#0a,#00,#00,#73
	db #a0,#73,#a0,#73,#a0,#73,#a0,#73
	db #a0,#73,#a0,#f0,#a0,#00,#00,#00
	db #80,#40,#02,#54,#02,#d4,#02,#d4
	db #02,#d4,#02,#81,#02,#00,#00,#00
	db #00,#c0,#c0,#00,#00,#fc,#fc,#03
	db #03,#0f,#0f,#00,#00,#00,#00,#40
	db #00,#40,#a8,#40,#a8,#54,#03,#54
	db #03,#54,#07,#54,#0f,#00,#00,#00
	db #00,#d4,#a8,#d4,#02,#d4,#02,#56
	db #02,#54,#02,#01,#02,#00,#02,#00
	db #00,#00,#00,#c0,#c0,#00,#00,#fc
	db #fc,#03,#03,#0f,#0f,#00,#00,#00
	db #00,#54,#03,#54,#07,#54,#07,#54
	db #07,#01,#0a,#01,#0a,#05,#00,#5e
	db #07,#5e,#07,#5e,#07,#5e,#07,#5e
	db #07,#5e,#07,#5e,#07,#5e,#07,#5e
	db #07,#5e,#07,#5e,#07,#5e,#07,#5e
	db #07,#5e,#07,#5e,#07,#5e,#07,#00
	db #00,#54,#02,#54,#02,#54,#02,#54
	db #02,#54,#02,#54,#02,#54,#02,#54
	db #02,#54,#02,#54,#02,#54,#02,#54
	db #02,#54,#02,#54,#02,#00,#00,#5e
	db #07,#5e,#07,#5e,#07,#5e,#07,#5e
	db #07,#5e,#07,#5e,#07,#5e,#07,#00
	db #00,#56,#fc,#00,#00,#03,#fc,#03
	db #03,#0f,#0f,#00,#00,#00,#00,#00
	db #00,#00,#00,#56,#fc,#00,#00,#03
	db #fc,#03,#03,#0f,#0f,#00,#00,#8a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#f0,#f0,#da,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#da,#f0,#da,#f0,#f0
	db #f0,#e5,#f0,#33,#27,#49,#82,#41
	db #41,#41,#86,#82,#33,#f0,#f0,#da
	db #11,#c0,#a2,#cf,#e5,#e5,#f0,#f0
	db #da,#da,#da,#da,#da,#da,#cf,#e5
	db #e5,#f0,#f0,#f2,#f0,#f0,#f0,#f0
	db #f0,#f0,#8a,#82,#83,#56,#a9,#03
	db #56,#c0,#a9,#a9,#ac,#09,#56,#4d
	db #8a,#f0,#f0,#e5,#e5,#e5,#f0,#f0
	db #f0,#f0,#f0,#f0,#c0,#da,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#e5,#f0,#da
	db #f0,#b1,#b1,#0f,#4b,#82,#00,#00
	db #00,#00,#4a,#0c,#c3,#00,#33,#72
	db #da,#33,#51,#c0,#a2,#da,#f0,#f0
	db #f0,#f2,#e5,#f0,#f3,#f1,#f0,#f1
	db #f1,#f1,#f3,#f2,#da,#f1,#f1,#e5
	db #f0,#e5,#e5,#f0,#da,#f3,#f3,#f2
	db #f0,#f0,#f1,#f3,#f3,#f1,#f0,#da
	db #da,#cf,#f2,#cf,#da,#e5,#da,#f0
	db #cf,#50,#da,#e5,#cf,#cf,#e5,#45
	db #8a,#da,#f0,#f0,#33,#63,#00,#41
	db #87,#08,#86,#86,#86,#08,#86,#0f
	db #49,#49,#49,#0c,#08,#82,#c3,#41
	db #41,#11,#33,#22,#e0,#c0,#a2,#da
	db #e5,#40,#40,#40,#40,#40,#00,#40
	db #40,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #de,#00

FINISH          DEFL $
;                LIST
;                CLOSE
;START           DEFL START
;FINISH          DEFL FINISH
LENGTH          DEFL FINISH-START
;
.music_info
	db "Cybernoid 2 (1988)(Hewson)(Dave Rogers)",0
	db "CYBER2SD.ASM - CYBERNOID 2 sound driver - J.Dave Rogers 1988",0

	read "music_end.asm"
