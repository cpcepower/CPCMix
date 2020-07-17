; Music of Turbo Boat Simulator (1988)(Silverbird)(Dave Rogers)()
; Ripped by Megachur the 14/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TURBOBOS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #62b9

	read "music_header.asm"

;JETBTSD.ASM       Turbo Boat Simulator  sound driver     J.Dave Rogers  1988


;*************************************
SPECVERSION     EQU       0             ;1 FOR SPECTRUM,0 FOR AMSTRAD
SOUNDCOD        EQU       music_begin	;25273         ;machine code address.
;SOUNDATA        EQU       soundcod+788  ;datablock address.
;*************************************

;             NOLIST                

ENVSINDEX    EQU       soundata+200
TUNESINDEX   EQU       ENVSINDEX+56

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
;             WRITE "JETBTSD".BIN"
start        DEFL $

;-----------------------------------------------
JUMPBLOCK       JP PLAY          ;used for convenience in Basic Demos
                JP SILENCE
;
.init_music
BASIC_DEMO      LD E,1
;
                LD A,1

;-------------------------------------------------
STARTACHAN      LD C,A             ; a/c=chan num e=tuneblock num
                CALL FINDBLOC      ; 1. PUT BLOCK ADDRESS IN HL, GIVEN E
                LD A,(HL)          ; 2. LOOK FOR START CHANNEL MARKER
                CP 9
                JR NC,nochanmarker
                LD C,A
                INC HL
                LD A,(HL)        ; 5. LOOK FOR SPECIAL PRIORITY,ELSE DEFAULT 10

NOCHANMARKER

CH1TO3          LD IX,STORE1       ; 4. FIND IX FOR NEW CHAN
                DEC C
                JR Z ,IXfound
                LD IX,STORE2
                DEC C
                JR Z,IXfound
                LD IX,STORE3
                DEC C
                JR Z,IXFOUND
CHANALT         LD A,0-0             ;CH4= 2 / 3
                XOR 1
                LD (CHANALT+1),A
                JR Z,IXFOUND         ;ALREADY CH3
                LD IX,STORE2         ;OTHERWISE CH2
IXFOUND
TRYSTART        
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
 
                 LD (IX+CHANACTIVE),1     ;activate
                RET               
 
;-------------------------------------
;
.stop_music
SILENCE         XOR A
;
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
PLAY            LD  IX,STORE1     ;---do channel 1 (IX points to chan1 store) 
;
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
    
           CP   225
           JP   Z,KILLCHAN    ;shut chan after e.g.short sound effects
           CP   233
           JR   Z,NEWENT      ;set new tone-envelope for current channel
           CP   232
           JR   Z,NEWENV      ;set new volume-env for current chan
           CP   234
           JR   Z,NEWENSE     ;set new noise-envelope
 
           CP   229
           JR   Z,GONEWBLOCK  ;play a given tunebloc,then return to 1st
           CP   230
           JP   Z,NEWKEY      ;change musical key for current chan
 
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

COMPNOTE        AND 127
                DEC HL
                LD E,(IX+CURRENTDUR)

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
.l65cd
SOUNDATA
	db #00,#00,#1e,#10,#37,#0f,#5c,#0e
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
	db #16,#00,#14,#00,#13,#00,#12,#00
	db #11,#00,#10,#00,#0f,#00,#00,#00
.l6695
	db #54,#01,#58,#01,#5f,#01,#66,#01
	db #6d,#01,#6e,#01,#75,#01,#7c,#01
	db #7d,#01,#8a,#01,#8b,#01,#98,#01
	db #9f,#01,#a6,#01,#b0,#01,#b1,#01
	db #bb,#01,#bc,#01,#bd,#01,#be,#01
	db #bf,#01,#c9,#01,#d3,#01,#d4,#01
	db #d5,#01,#df,#01,#e9,#01,#e1,#01
.l66cd
	db #b0,#06,#40,#02,#02,#03,#90,#03
	db #b1,#06,#c2,#06,#cf,#06,#dc,#06
	db #ec,#06,#ff,#06,#0a,#07,#19,#07
	db #20,#07,#0f,#03,#d9,#03,#77,#04
	db #f3,#04,#41,#05,#53,#05,#63,#05
	db #22,#04,#41,#04,#f2,#05,#65,#04
	db #85,#04,#2d,#06,#a9,#04,#c7,#04
	db #e5,#04,#03,#05,#28,#05,#4e,#05
	db #77,#05,#cc,#05,#fc,#05,#55,#06
	db #8b,#06,#ad,#05,#f6,#01,#17,#02
	db #32,#02,#a0,#05,#c8,#80,#c8,#ff
	db #02,#81,#06,#02,#7e,#03,#ff,#04
	db #81,#0a,#02,#7f,#0a,#ff,#01,#84
	db #03,#c8,#80,#c8,#ff,#ff,#01,#8a
	db #01,#37,#76,#01,#ff,#01,#8d,#01
	db #c8,#80,#c8,#ff,#ff,#01,#8f,#01
	db #01,#7f,#03,#01,#81,#01,#c8,#80
	db #c8,#ff,#ff,#01,#8d,#01,#01,#82
	db #01,#04,#7f,#01,#09,#7f,#0c,#ff
	db #01,#aa,#02,#01,#08,#01,#ff,#01
	db #96,#01,#c8,#80,#c8,#ff,#01,#8f
	db #01,#01,#7f,#0e,#c8,#80,#c8,#ff
	db #ff,#01,#83,#03,#09,#7f,#04,#c8
	db #80,#c8,#ff,#ff,#ff,#ff,#ff,#01
	db #8c,#01,#01,#7c,#03,#c8,#80,#c8
	db #ff,#01,#74,#01,#01,#84,#03,#c8
	db #80,#c8,#ff,#ff,#ff,#01,#81,#02
	db #01,#7f,#03,#01,#81,#01,#ff,#01
	db #81,#01,#01,#7f,#02,#01,#81,#01
	db #ff,#01,#82,#01,#01,#7c,#01,#01
	db #82,#01,#ff,#00,#0e,#45,#e9,#18
	db #00,#0e,#45,#07,#e9,#14,#47,#0e
	db #e9,#18,#e9,#15,#45,#07,#e9,#18
	db #00,#0e,#45,#07,#e9,#14,#4c,#0e
	db #e9,#18,#4a,#31,#00,#2a,#ff,#e9
	db #18,#32,#07,#00,#07,#b2,#00,#0e
	db #e9,#14,#34,#07,#e9,#18,#32,#0e
	db #2d,#07,#2f,#0e,#30,#31,#00,#2a
	db #ff,#ff,#66,#0c,#07,#66,#98,#66
	db #a4,#66,#98,#9f,#a4,#ff,#ff,#ff
	db #01,#02,#02,#03,#03,#ea,#00,#e8
	db #08,#e6,#0c,#e9,#18,#e6,#01,#e5
	db #14,#e5,#17,#e5,#14,#e5,#17,#e9
	db #19,#e6,#0d,#e5,#14,#e6,#01,#e5
	db #17,#e5,#1a,#e5,#1c,#e5,#1a,#e5
	db #1e,#e8,#0d,#e5,#29,#00,#01,#e5
	db #25,#e5,#17,#e5,#17,#e8,#08,#e5
	db #1a,#e5,#1c,#e5,#1a,#e5,#1e,#e6
	db #00,#e8,#03,#e6,#0c,#e5,#21,#e8
	db #0d,#e9,#19,#e6,#01,#e5,#28,#e5
	db #28,#e6,#00,#e5,#28,#e5,#28,#e6
	db #05,#e5,#28,#e5,#28,#e6,#0a,#e5
	db #28,#e5,#28,#e6,#0c,#e5,#28,#e5
	db #28,#e6,#0e,#e5,#28,#e6,#00,#e5
	db #28,#e6,#0a,#e5,#28,#e6,#09,#e5
	db #28,#e6,#07,#e5,#28,#e6,#06,#e5
	db #28,#e5,#28,#e8,#06,#e5,#28,#e6
	db #05,#e5,#28,#e5,#28,#e8,#08,#e6
	db #04,#e5,#25,#e5,#17,#e5,#25,#e5
	db #17,#e9,#1a,#e6,#10,#e5,#25,#e6
	db #04,#e5,#17,#e6,#04,#e5,#1a,#e5
	db #1e,#e8,#0d,#e5,#26,#e8,#0f,#e6
	db #0c,#e5,#15,#e5,#18,#e5,#18,#e6
	db #00,#e5,#18,#00,#2a,#2d,#38,#e5
	db #0c,#ff,#02,#e8,#08,#e6,#0c,#e8
	db #0d,#e9,#1a,#e6,#0d,#e5,#14,#e5
	db #17,#e9,#14,#e5,#14,#e9,#18,#e5
	db #17,#e8,#08,#e6,#01,#e5,#15,#e5
	db #18,#e5,#1b,#e5,#1d,#e5,#1b,#e5
	db #20,#e8,#0d,#e5,#29,#00,#01,#e8
	db #03,#e5,#15,#e5,#17,#e5,#18,#e8
	db #08,#e5,#1b,#e5,#1d,#e5,#1b,#e5
	db #20,#e6,#0c,#e8,#03,#e5,#22,#e8
	db #08,#e9,#1a,#e5,#23,#e8,#0d,#e6
	db #10,#e5,#25,#e5,#17,#e9,#14,#e5
	db #25,#e9,#18,#e5,#17,#e9,#00,#e8
	db #08,#e6,#04,#e5,#15,#e5,#18,#e8
	db #0d,#e6,#04,#e8,#08,#e5,#1b,#e5
	db #20,#e8,#0d,#e5,#26,#00,#07,#e8
	db #0f,#e6,#0c,#e5,#15,#00,#07,#e5
	db #18,#00,#07,#e5,#18,#e6,#00,#e5
	db #18,#00,#15,#32,#38,#00,#9a,#ff
	db #03,#e8,#08,#e6,#30,#e6,#01,#e5
	db #15,#e8,#0d,#e6,#19,#e5,#25,#e8
	db #03,#e6,#01,#e8,#08,#e5,#18,#e8
	db #03,#e5,#26,#00,#01,#e8,#08,#e5
	db #15,#e5,#18,#e6,#0d,#e5,#1b,#e5
	db #1d,#e9,#18,#e5,#1b,#e5,#1f,#e8
	db #0d,#e5,#29,#e6,#19,#e8,#03,#e5
	db #15,#e5,#27,#e5,#18,#e8,#08,#e6
	db #0d,#e5,#1b,#e5,#1d,#e9,#18,#e5
	db #1b,#e5,#1f,#e6,#13,#e8,#03,#e6
	db #24,#e5,#22,#e8,#08,#e9,#18,#e6
	db #0c,#e5,#24,#e6,#1c,#e5,#25,#00
	db #a8,#e5,#25,#e6,#0b,#e5,#17,#e9
	db #18,#e6,#04,#e5,#15,#e5,#18,#e6
	db #10,#e5,#1b,#e5,#1f,#e8,#0d,#e5
	db #26,#00,#0e,#e8,#0f,#e6,#0c,#e5
	db #15,#00,#0e,#e5,#18,#00,#0e,#e5
	db #18,#e6,#00,#e5,#18,#00,#38,#00
	db #9a,#ff,#26,#07,#9a,#a6,#9a,#9a
	db #a1,#a3,#a3,#66,#9a,#73,#9e,#9e
	db #9a,#73,#a4,#a4,#73,#a4,#66,#a4
	db #a4,#a4,#a3,#a3,#a3,#a3,#a3,#a3
	db #ff,#e9,#18,#32,#0e,#32,#07,#e9
	db #14,#3b,#0e,#e9,#18,#e9,#18,#39
	db #2a,#37,#07,#36,#0e,#37,#07,#36
	db #0e,#37,#07,#36,#0e,#34,#07,#32
	db #0e,#30,#07,#ff,#ff,#26,#07,#a6
	db #a6,#a6,#a6,#a6,#a6,#a6,#73,#a6
	db #73,#a6,#a6,#a6,#73,#a4,#a4,#73
	db #a4,#66,#a4,#a4,#73,#a4,#af,#af
	db #af,#ad,#ad,#ad,#ff,#e9,#18,#32
	db #0e,#32,#07,#e9,#14,#3e,#0e,#e9
	db #18,#e9,#18,#39,#2a,#3b,#07,#3c
	db #0e,#3b,#07,#39,#0e,#37,#07,#36
	db #0e,#34,#07,#32,#0e,#30,#07,#ff
	db #ff,#1f,#07,#9f,#ab,#73,#9f,#9f
	db #ab,#9f,#9f,#ab,#73,#9f,#9f,#ab
	db #a1,#a1,#ad,#73,#a1,#a1,#ad,#a1
	db #a1,#ad,#73,#a1,#a1,#ad,#ff,#2f
	db #0e,#2f,#07,#34,#0e,#32,#15,#2f
	db #07,#32,#0e,#34,#07,#32,#0e,#31
	db #07,#2f,#0e,#2d,#07,#00,#0e,#ad
	db #00,#07,#ad,#ff,#ff,#1f,#07,#9f
	db #ab,#73,#9f,#9f,#ab,#9f,#9f,#ab
	db #73,#9f,#9f,#ab,#9a,#9a,#a6,#73
	db #98,#98,#a4,#a3,#a3,#af,#73,#a1
	db #a1,#ad,#ff,#e9,#18,#e9,#14,#2f
	db #0e,#e9,#18,#e9,#18,#ab,#00,#07
	db #aa,#ab,#00,#07,#ad,#e9,#14,#2f
	db #0e,#e9,#18,#e9,#18,#32,#07,#2d
	db #2a,#00,#1c,#2a,#07,#ad,#ff,#ff
	db #23,#07,#a3,#af,#73,#a3,#a3,#af
	db #a3,#a3,#af,#73,#a3,#a3,#af,#9e
	db #9e,#aa,#73,#9e,#9e,#aa,#9e,#9e
	db #aa,#73,#9e,#9e,#aa,#73,#a1,#a1
	db #ad,#73,#a1,#a1,#ad,#ff,#2f,#0e
	db #31,#07,#32,#0e,#34,#07,#36,#0e
	db #37,#07,#39,#0e,#3b,#07,#39,#0e
	db #00,#07,#39,#0e,#00,#07,#39,#0e
	db #36,#07,#37,#0e,#36,#07,#39,#0e
	db #00,#07,#39,#0e,#00,#07,#ff,#36
	db #0e,#34,#07,#36,#0e,#31,#07,#32
	db #0e,#34,#07,#36,#0e,#37,#07,#31
	db #0e,#00,#07,#31,#0e,#00,#07,#31
	db #0e,#39,#07,#3b,#0e,#39,#07,#34
	db #0e,#00,#07,#34,#0e,#00,#07,#ff
	db #2d,#07,#ad,#ad,#73,#ad,#6a,#ad
	db #66,#ad,#ff,#ff,#ff,#26,#07,#9a
	db #a6,#9a,#9a,#a1,#a3,#a3,#66,#9a
	db #73,#9e,#9e,#9a,#73,#98,#98,#73
	db #98,#66,#98,#9c,#1f,#23,#1c,#07
	db #98,#ff,#ff,#ff,#23,#0e,#21,#07
	db #1f,#0e,#1d,#15,#1f,#07,#21,#0e
	db #23,#07,#24,#0e,#26,#07,#28,#0e
	db #29,#07,#28,#0e,#00,#07,#28,#0e
	db #00,#07,#28,#0e,#24,#07,#26,#0e
	db #1f,#07,#1f,#15,#9f,#9d,#9d,#9c
	db #9c,#9a,#9a,#ff,#23,#0e,#21,#07
	db #1f,#0e,#21,#15,#23,#07,#24,#0e
	db #26,#07,#28,#0e,#29,#07,#2b,#0e
	db #2d,#07,#2b,#0e,#00,#07,#2b,#0e
	db #00,#07,#00,#2a,#66,#37,#07,#00
	db #0e,#66,#37,#07,#00,#0e,#69,#37
	db #07,#00,#0e,#69,#37,#07,#00,#0e
	db #e8,#0d,#6c,#37,#07,#6c,#00,#07
	db #6c,#00,#07,#6c,#b7,#6c,#00,#07
	db #6c,#00,#07,#6d,#b7,#6d,#00,#07
	db #6d,#00,#07,#6d,#b7,#6d,#00,#07
	db #6d,#00,#07,#ff,#ff,#29,#0e,#29
	db #07,#2b,#0e,#2c,#31,#1f,#2a,#1f
	db #0e,#1d,#07,#1f,#0e,#29,#1c,#24
	db #15,#a6,#2b,#0e,#2d,#07,#29,#2a
	db #a9,#a9,#a8,#aa,#28,#15,#a4,#a4
	db #26,#2a,#24,#15,#23,#2a,#22,#54
	db #25,#0e,#27,#07,#25,#0e,#2e,#07
	db #2d,#54,#ff,#00,#2a,#25,#0e,#25
	db #07,#27,#0e,#29,#07,#29,#2a,#28
	db #0e,#26,#07,#28,#0e,#2d,#5b,#2e
	db #2a,#ad,#ab,#ab,#2d,#54,#29,#2a
	db #29,#54,#a9,#29,#2a,#29,#54,#ff
	db #ff,#01,#02,#05,#03,#06,#e8,#05
	db #e9,#01,#ea,#01,#66,#2f,#ff,#6b
	db #a3,#ff,#e8,#05,#e9,#02,#ea,#01
	db #23,#57,#ea,#02,#23,#3c,#ff,#e8
	db #05,#e9,#03,#ea,#02,#00,#33,#ea
	db #01,#17,#1b,#ff,#04,#e8,#0a,#e9
	db #01,#ea,#00,#73,#18,#63,#e8,#00
	db #6b,#00,#01,#e1,#04,#e8,#0d,#e9
	db #02,#ea,#00,#73,#1e,#03,#73,#2a
	db #21,#e8,#00,#6b,#00,#01,#e1,#04
	db #e8,#0a,#e9,#18,#ea,#00,#6b,#62
	db #63,#e1,#01,#02,#0b,#03,#0b,#e8
	db #0c,#e9,#02,#ea,#00,#6f,#1a,#ae
	db #ff,#e8,#01,#e9,#1a,#62,#ae,#ff
	db #00,#12,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00

FINISH          DEFL $
;                LIST
;                CLOSE
;START           DEFL START
;FINISH          DEFL FINISH
LENGTH          DEFL FINISH-START
;
; #0126
; call #62bc
; ei
; ld e,#01
; call #62c3
;
.music_info
	db "Turbo Boat Simulator (1988)(Silverbird)(Dave Rogers)",0
	db "JETBTSD.ASM - Turbo Boat Simulator sound driver - J.Dave Rogers - 1988",0

	read "music_end.asm"
