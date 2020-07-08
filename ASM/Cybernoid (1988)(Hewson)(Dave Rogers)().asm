; Music of Cybernoid (1988)(Hewson)(Dave Rogers)()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CYBERNOI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #6926
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

; CYBERNSD.ASM       CYBERNOID sound driver        JDRogers.


SOUNDCOD        EQU       music_begin	;28000         ;machine code load address.
;SOUNDATA        EQU       soundcod+854  ;datablock load address.

             NOLIST                

ENVSINDEX    EQU       soundata+200
TUNESINDEX   EQU       ENVSINDEX+80

envcounts    EQU 0    ;offsets within channel stores:
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
;             WRITE "CYBERNSD.BIN"
start        DEFL $

;------------------------------------------------------------------------------
;
.init_music
;
		or a
		jr z,BASIC_DEMO
		ld e,40
		jr BASIC_DEMO+2

JUMPBLOCK       JP PLAY          ;used for convenience in Basic Demos
                JP SILENCE
;
.real_init_music
BASIC_DEMO      LD E,1
;
                LD A,1
;-------------------------------------------------
; "E" MUST HOLD NUMBER OF TUNEBLOC TO START, "A"=channel 1,2,3. (4=CHANALT)
; CHANALT DYNAMICALLY ALLOCATES TO CHANS 2/3 ALTERNATELY

STARTACHAN      LD C,A                   ; a/c=chan num e=tuneblock num
                CALL FINDBLOC      ; 1. PUT BLOCK ADDRESS IN HL, GIVEN E
                LD A,(HL)          ; 2. LOOK FOR START CHANNEL MARKER
                CP 9
                JP NC,NOCHANMARKER
                LD C,A
                INC HL
NOCHANMARKER    LD A,C
CH1TO3          LD IX,STORE1       ; 4. FIND IX FOR NEW CHAN
                DEC A
                JP Z ,IXfound
                LD IX,STORE2
                DEC A
                JP Z,IXfound
                LD IX,STORE3
IXfound         LD A,(HL)         ; 5. LOOK FOR SPECIAL PRIORITY,ELSE DEFAULT 10
                CP 244
                LD A,10
                JP NZ, TRYSTART
                INC HL
                LD A,(HL)
                INC HL
TRYSTART        CP (IX+CHANACTIVE)   ; 6. TEST AGAINST CURRENT PRIORITY
                RET C
DOSTART         LD (IX+CHANACTIVE),A  ; 7. START CHANNEL
                LD (IX+DATAPTR),L       ;set pointers for this channel
                LD (IX+DATAPTR+1),H
                LD (IX+CONPTR),L
                LD (IX+CONPTR+1),H
                LD (IX+PTRREFR),L
                LD (IX+PTRREFR+1),H
                LD (IX+MAINCOUNT),1
                XOR A
                LD (IX+PITCHSHIFT),A
                LD (IX+INTERVAL),A
                RET                
;-------------------------------------
;
.stop_music
SILENCE         XOR A
;
                LD  (STORE1+CHANACTIVE),A  ;channel-active-flags 0
                LD  (STORE2+CHANACTIVE),A
                LD  (STORE3+CHANACTIVE),A
                LD (BUFF+8),A              ;volume registers 0
                LD (BUFF+9),A
                LD (BUFF+10),A
                LD   A,1+2+4+8+16+32       ;all gates shut
                LD   (BUFF+7),A            ;follow through to allregist
;----------------------
ALLREGIST       XOR  A
                LD   HL,BUFF+13            ;registers buffer
                LD   DE,#F40D              ;D=Psg data port, E=loop counter
nextreg         LD   B,D
                OUT  (C),E                 ;output register No
                LD   BC,#F6*256+%11000000
                OUT  (C),C                 ;tell PSG to latch reg No
                OUT  (C),A                 ;PSG to inactive
                LD   B,D
                LD   C,(HL)                ;C=register data
                DEC  HL
                OUT  (C),C                 ;output register data
                LD   BC,#F6*256+%10000000
                OUT  (C),C                 ;tell PSG to read reg data
                OUT  (C),A                 ;PSG to inactive
                DEC  E
                JP   P,nextreg
                RET
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
;FINDENV MAY BE CALLED UP TO 9 TIMES FOR A 3CHAN FX.
;8 BIT ADD IS 1 T STATE LONGER, BUT SINCE HL NOT CORRUPT,
;ALLOWS JP DECI, NOT JP READDECIDE, SAVING 38.
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
PLAY            CALL ALLREGIST     ;throw all buffer into sound chip registers
;
               
                LD  IX,STORE1     ;---do channel 1 (IX points to chan1 store) 
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

                JP DOENSE        ;do noise envelope
                 ;  RET        -------------->>>>>>> out

;FOR EACH OF THE 3 CHANNELS:

TESTCHAN        LD (PITCHTEMP),HL
                LD  A,(IX+CHANACTIVE)  ;CHAN ACTIVE?
                OR A
                RET Z                  ;do nothing if channel not active
                DEC  (IX+maincount)    ;duration countdown, new note when 0
                JP NZ,DOENV_ENT
                LD (IX+STOPHANG),20

READDECIDE      LD  H,(IX+dataptr+1)   ;get data ptr address
                LD  L,(IX+dataptr)
DECI            LD   A,(HL)            ;A=peek(ptr)
                INC  HL
                LD   E,(HL)            ;E=peek(ptr+1)
                INC HL                 ;inc and store ptr for next time
CONTPTR         LD (IX+DATAPTR+1),H
                LD (IX+DATAPTR),L
                DEC (IX+STOPHANG)
                RET Z     ;gets out of possible endless loops after 20 passes 
;-----------------------
;THE FOLLOWING ROUTINES RESPOND TO DATA AND JUMP BACK TO READDECIDE OR DECI,
;EVENTUALLY EXITING VIA "DOPAUSE","NEWNOTE","PLAYRAND" OR "KILLCHAN" ROUTINES

SUBSELECT  CP   0             ;A=VALUE
           JP   Z,DOPAUSE     ;pitch 0 = pause
           CP  9
           JP  C,STARTLOOP   ;<9 = CHAN to start, FOLLOWED BY BLOC num 
           CP   101
           JP   C,NEWNOTE     ;LESS THAN 100=normal note  
           CP   228
           JP   Z,NOISE       ;add noise to a note
           CP  227
           JP  Z,PLAYRAND     ;PLAY FROM RANDNOTE STORE(+PITCHSHIFT)
           CP   225
           JP   Z,KILLCHAN    ;shut chan after e.g.short sound effects
           CP   233
           JP   Z,NEWENT      ;set new tone-envelope for current channel
           CP   232
           JP   Z,NEWENV      ;set new volume-env for current chan
           CP   234
           JP   Z,NEWENSE     ;set new noise-envelope
           CP  226
           JP  Z,NEWRANDNOTE  ;226/ander. RANDnote = rnd*255 AND ANDER
           CP   229
           JP   Z,GONEWBLOCK  ;play a given tunebloc,then return to 1st
           CP   230
           JP   Z,NEWKEY      ;change musical key for current chan
           CP  240
           JP  Z,SETINTERVAL 
           CP   255
           JP   Z,RETCONBLOC  ;end-of-tunebloc marker

           JR   DECI        ;SAFETY NET 

STARTLOOP       PUSH IX           ;A=CHAN E=TUNEBLOC
                CALL STARTACHAN
                POP IX
                JP READDECIDE       

NOISE           LD   A,E
                LD   (BUFF+6),A        ;noisepitch
                LD   (IX+noiseflag),1
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
                JP   NZ,DECI
                LD   H,(IX+ptrrefr+1) ;refresh
                LD   L,(IX+ptrrefr)
notend          JP   DECI

KILLCHAN        LD (IX+CHANACTIVE),0
killvol         LD H,(IX+ADVOLREG+1)
                LD L,(IX+ADVOLREG)    ;HL=address of vol register,current chan
                LD (HL),0
                RET

SETINTERVAL     LD (IX+INTERVAL),E
                JP DECI

NEWRANDNOTE     LD HL,10418  ;RANDSEED,SELF MOD LATER      
                LD C,L
                LD B,H
                ADD HL,HL
                ADD HL,HL
                ADD HL,BC
                ADD HL,HL
                ADD HL,HL
                ADD HL,HL
                ADD HL,BC
                LD (NEWRANDNOTE+1),HL
                LD A,H               ;A=0 TO 255
                AND E                ;E = ANDER = range limiter
                INC A                ;A=1 to (0 gives pause!)
                LD (PLAYRAND+1),A
                JP READDECIDE

PLAYRAND        LD A,42   ;SELF MODIFIED VALUE

NEWNOTE         ADD  A,(IX+pitchshift)   ;A=notenum
DOPAUSE         LD   (IX+maincount),E    ;E=duration
                LD (IX+CURRENTNOTE),A    ;for chorder

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
                JP NZ,DOCHORD
DOENT           INC  IX  ;make IX work on tone-envelope workspace,2 bytes along
                INC  IX
                CALL ENGENERAL   ;returns with "pitch change+128" in C
                LD HL,(PITCHTEMP)
                LD B,0
                ADD  HL,BC
                LD   C,128       ;deduct 128, allows negative changes
                SBC  HL,BC
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
	db #00,#00
	dw #150c,#13dd,#12c0,#11b2
	dw #10b4,#0fc4,#0ee2,#0e0c
	dw #0d42,#0c84,#0bd0,#0b26
	dw #0a86,#09ef,#0960,#08d9
	dw #085a,#07e2,#0771,#0706
	dw #06a1,#0642,#05e8,#0593
	dw #0543,#04f7,#04b0,#046d
	dw #042d,#03f1,#03b8,#0383
	dw #0350,#0321,#02f4,#02ca
	dw #02a1,#027c,#0258,#0236
	dw #0217,#01f9,#01dc,#01c1
	dw #01a8,#0190,#017a,#0165
	dw #0151,#013e,#012c,#011b
	dw #010b,#00fc,#00ee,#00e1
	dw #00d4,#00c8,#00bd,#00b2
	dw #00a8,#009f,#0096,#008e
	dw #0086,#007e,#0077,#0070
	dw #006a,#0064,#005e,#0059
	dw #0054,#004f,#004b,#0047
	dw #0043,#003f,#003c,#0038
	dw #0035,#0032,#002f,#002d
	dw #002a,#0028,#0025,#0023
	dw #0021,#0020,#001e,#001c
	dw #001b,#0019,#0018,#0016
	dw #0015,#0014,#0000
	dw #017c,#0180,#018a,#0194
	dw #0195,#019c,#01a9,#01b6
	dw #01c3,#01cd,#01ce,#01cf
	dw #01d9,#01e3,#01ed,#01f7
	dw #0201,#020b,#0212,#0228
	dw #022c,#0230,#023a,#0247
	dw #0248,#0258,#025f,#0266
	dw #0267,#026b,#0278,#027f
	dw #0280,#0281,#0282,#028c
	dw #02a5,#02be,#02ce,#0000
	db #da,#02,#e0,#02,#9c,#03,#a5,#03
	db #b0,#03,#e5,#03,#6e,#04,#f1,#04
	db #18,#05,#3f,#05,#6c,#05,#77,#05
	db #7c,#05,#97,#05,#1a,#06,#1d,#06
	db #32,#06,#c3,#06,#e0,#06,#f9,#06
	db #14,#07,#87,#07,#8c,#07,#96,#07
	db #a4,#07,#ae,#07,#b8,#07,#c8,#07
	db #d8,#07,#e2,#07,#f0,#07,#fe,#07
	db #08,#08,#18,#08,#2a,#08,#38,#08
	db #3b,#08,#48,#08,#5b,#08,#94,#08
	db #a7,#08,#c5,#08,#e2,#08,#4a,#1a
	db #58,#1a,#62,#1a,#ae,#1a,#ca,#1a
	db #e5,#1a,#00,#00
	db #c8,#80,#c8,#ff,#01,#81,#0d,#09
	db #7f,#09,#c8,#80,#c8,#ff,#01,#8d
	db #01,#01,#7f,#04,#01,#77,#01,#ff
	db #ff,#01,#87,#01,#c8,#80,#c8,#ff
	db #01,#8c,#01,#0a,#7f,#08,#14,#7f
	db #04,#c8,#80,#c8,#ff,#01,#8d,#01
	db #02,#7f,#07,#0c,#7f,#06,#c8,#80
	db #c8,#ff,#01,#8d,#01,#01,#7f,#0b
	db #09,#7f,#02,#c8,#80,#c8,#ff,#01
	db #88,#01,#01,#82,#01,#c8,#80,#c8
	db #ff,#ff,#ff,#01,#77,#01,#01,#83
	db #03,#c8,#80,#c8,#ff,#02,#81,#02
	db #02,#7f,#03,#02,#81,#01,#ff,#01
	db #81,#02,#01,#7f,#04,#01,#81,#02
	db #ff,#01,#89,#01,#01,#79,#01,#c8
	db #80,#c8,#ff,#01,#82,#02,#01,#7e
	db #04,#01,#82,#02,#ff,#01,#87,#03
	db #01,#79,#06,#01,#87,#03,#ff,#01
	db #88,#0a,#01,#96,#c8,#ff,#01,#93
	db #01,#01,#6d,#01,#01,#7f,#02,#01
	db #81,#04,#01,#7f,#04,#01,#81,#02
	db #c8,#80,#c8,#ff,#02,#81,#c8,#ff
	db #02,#7f,#c8,#ff,#01,#80,#01,#01
	db #b4,#01,#c8,#80,#c8,#ff,#01,#80
	db #01,#01,#8b,#01,#01,#b4,#01,#c8
	db #80,#c8,#ff,#ff,#01,#85,#03,#01
	db #71,#01,#01,#80,#01,#01,#8f,#01
	db #01,#7b,#03,#ff,#01,#85,#03,#01
	db #71,#01,#ff,#01,#96,#01,#02,#79
	db #02,#ff,#ff,#01,#a1,#c8,#ff,#01
	db #85,#03,#09,#7d,#04,#0e,#7f,#03
	db #c8,#80,#c8,#ff,#01,#84,#01,#01
	db #7f,#01,#ff,#ff,#ff,#ff,#02,#8d
	db #01,#02,#67,#01,#c8,#80,#c8,#ff
	db #01,#8f,#01,#08,#80,#01,#02,#7f
	db #01,#04,#7f,#01,#07,#7f,#02,#0c
	db #7f,#04,#16,#7f,#07,#c8,#80,#c8
	db #ff,#01,#79,#01,#01,#8b,#01,#01
	db #6f,#01,#01,#9b,#01,#01,#5b,#01
	db #01,#af,#01,#01,#47,#01,#01,#c3
	db #01,#ff,#01,#8f,#01,#01,#7a,#01
	db #01,#86,#01,#01,#7f,#09,#08,#7f
	db #06,#ff,#01,#99,#03,#01,#79,#07
	db #0a,#7e,#c8,#ff,#01,#9b,#e1,#ff
	db #ff,#ff,#ff,#af,#01,#e8,#00,#00
	db #30,#e5,#04,#02,#02,#e5,#04,#02
	db #03,#e5,#04,#02,#08,#00,#54,#02
	db #04,#e5,#05,#02,#04,#e5,#06,#02
	db #04,#e5,#05,#02,#04,#e5,#06,#02
	db #00,#e4,#06,#00,#06,#e4,#06,#00
	db #06,#e5,#0d,#e5,#10,#e5,#0d,#e5
	db #10,#e5,#08,#e5,#08,#e5,#08,#e5
	db #0c,#02,#04,#e5,#05,#02,#04,#e5
	db #06,#02,#04,#e5,#05,#02,#04,#e5
	db #06,#02,#00,#f0,#00,#e4,#06,#3a
	db #06,#e4,#06,#39,#06,#e5,#0d,#e5
	db #10,#e5,#0d,#e5,#10,#02,#25,#e5
	db #26,#e4,#06,#00,#06,#e4,#06,#00
	db #06,#e5,#09,#e5,#07,#e5,#09,#e5
	db #08,#e6,#13,#02,#13,#e5,#14,#e4
	db #01,#00,#0c,#02,#13,#e5,#14,#e4
	db #01,#00,#0c,#e6,#15,#02,#15,#e5
	db #14,#e4,#01,#00,#0c,#02,#15,#e5
	db #14,#02,#0f,#e5,#05,#02,#0f,#e5
	db #05,#02,#0f,#e5,#05,#02,#0f,#e5
	db #05,#e4,#06,#00,#06,#e4,#06,#00
	db #06,#e5,#0d,#e5,#0d,#e5,#10,#02
	db #25,#e5,#26,#e5,#07,#e5,#0b,#ff
	db #e8,#00,#00,#60,#e5,#07,#e5,#07
	db #ff,#e5,#09,#e8,#00,#00,#30,#e5
	db #07,#e5,#07,#ff,#e6,#07,#e8,#02
	db #e9,#0d,#f0,#00,#1f,#0c,#1f,#0c
	db #22,#0c,#24,#0c,#26,#0c,#f0,#0f
	db #26,#0c,#f0,#0e,#26,#0c,#26,#0c
	db #f0,#10,#22,#0c,#f0,#00,#22,#0c
	db #16,#0c,#22,#0c,#16,#0c,#f0,#10
	db #24,#0c,#f0,#00,#18,#0c,#24,#0c
	db #ff,#e6,#07,#e8,#06,#f0,#18,#03
	db #27,#ea,#16,#e4,#01,#30,#06,#e4
	db #01,#31,#06,#e4,#01,#32,#06,#e4
	db #01,#30,#06,#e4,#01,#32,#06,#e4
	db #01,#35,#06,#ea,#00,#e4,#06,#3a
	db #0c,#ea,#16,#e4,#01,#3c,#06,#e4
	db #01,#39,#06,#e4,#01,#00,#06,#e4
	db #01,#00,#06,#e4,#01,#00,#06,#e4
	db #01,#00,#06,#ea,#00,#e4,#06,#00
	db #0c,#ea,#16,#e4,#01,#00,#06,#e4
	db #01,#00,#06,#e4,#01,#00,#06,#e4
	db #01,#00,#06,#e4,#01,#2e,#06,#e4
	db #01,#00,#06,#ea,#00,#e4,#06,#30
	db #0c,#ea,#16,#e4,#01,#32,#06,#e4
	db #01,#30,#06,#e4,#01,#00,#06,#e4
	db #01,#00,#06,#e4,#01,#00,#06,#e4
	db #01,#00,#06,#ea,#00,#e4,#06,#00
	db #0c,#ff,#03,#27,#ea,#16,#e4,#01
	db #30,#06,#e4,#01,#31,#06,#e4,#01
	db #32,#06,#e4,#01,#30,#06,#e4,#01
	db #32,#06,#e4,#01,#35,#06,#ea,#00
	db #e4,#06,#3a,#0c,#ea,#16,#e4,#01
	db #3c,#06,#e4,#01,#39,#06,#e4,#01
	db #00,#06,#e4,#01,#00,#06,#e4,#01
	db #00,#06,#e4,#01,#00,#06,#ea,#00
	db #e4,#06,#39,#0c,#ea,#16,#e4,#01
	db #35,#06,#e4,#01,#00,#06,#e4,#01
	db #00,#06,#e4,#01,#00,#06,#e4,#01
	db #00,#06,#e4,#01,#00,#06,#ea,#00
	db #e4,#06,#37,#0c,#ea,#16,#e4,#01
	db #34,#06,#e4,#01,#00,#06,#e4,#01
	db #00,#06,#e4,#01,#00,#06,#e4,#01
	db #00,#06,#e4,#01,#00,#06,#ea,#00
	db #e4,#06,#00,#0c,#ff,#e8,#07,#ea
	db #15,#03,#00,#e4,#01,#00,#06,#e4
	db #01,#00,#06,#e4,#01,#00,#06,#e4
	db #01,#00,#06,#ea,#00,#e4,#06,#00
	db #0c,#ea,#15,#e4,#01,#00,#06,#e4
	db #01,#00,#06,#ff,#e8,#07,#ea,#16
	db #03,#00,#e4,#01,#00,#06,#e4,#01
	db #00,#06,#e4,#01,#00,#06,#e4,#01
	db #00,#06,#ea,#00,#e4,#06,#00,#0c
	db #ea,#16,#e4,#01,#00,#06,#e4,#01
	db #00,#06,#ff,#e6,#13,#e8,#07,#ea
	db #00,#e9,#00,#03,#00,#ea,#16,#e4
	db #01,#43,#06,#e4,#01,#41,#06,#e4
	db #0e,#3c,#06,#e4,#01,#3e,#06,#ea
	db #00,#e4,#06,#00,#0c,#ea,#16,#e4
	db #06,#00,#06,#e4,#06,#00,#06,#ff
	db #e6,#13,#e8,#04,#e9,#10,#00,#0c
	db #48,#a8,#e1,#00,#f0,#00,#f0,#ff
	db #e8,#07,#ea,#16,#e4,#01,#00,#06
	db #e4,#01,#00,#06,#e4,#01,#00,#06
	db #e4,#01,#00,#06,#ea,#00,#e4,#06
	db #00,#0c,#ff,#e6,#07,#e8,#06,#e9
	db #0f,#f0,#18,#1f,#06,#f0,#00,#1f
	db #06,#f0,#18,#1f,#06,#f0,#00,#1f
	db #06,#ea,#14,#e4,#06,#00,#06,#1f
	db #06,#f0,#18,#1f,#06,#f0,#00,#1f
	db #06,#f0,#1b,#1e,#06,#f0,#00,#1e
	db #06,#f0,#1b,#1e,#06,#f0,#00,#1e
	db #06,#e4,#06,#00,#06,#1e,#06,#f0
	db #1b,#1e,#06,#f0,#00,#1e,#06,#f0
	db #1b,#1f,#06,#f0,#00,#1f,#06,#f0
	db #1b,#1f,#06,#f0,#00,#1f,#06,#ea
	db #14,#e4,#06,#00,#06,#1f,#06,#f0
	db #1b,#1f,#06,#f0,#00,#1f,#06,#f0
	db #1d,#21,#06,#f0,#00,#21,#06,#f0
	db #1d,#21,#06,#f0,#00,#21,#06,#e4
	db #06,#21,#06,#21,#06,#f0,#1b,#21
	db #06,#f0,#00,#21,#06,#ff,#00,#06
	db #ff,#e4,#06,#00,#06,#e4,#06,#00
	db #06,#e5,#0d,#e8,#04,#3c,#30,#48
	db #90,#3c,#30,#48,#90,#ff,#02,#11
	db #f0,#18,#22,#06,#f0,#00,#22,#06
	db #f0,#18,#22,#06,#f0,#00,#22,#06
	db #ea,#01,#e4,#06,#00,#06,#22,#06
	db #f0,#18,#22,#06,#f0,#00,#22,#06
	db #f0,#28,#1d,#06,#f0,#00,#1d,#06
	db #f0,#28,#1d,#06,#f0,#00,#1d,#06
	db #e4,#06,#00,#06,#1d,#06,#f0,#29
	db #e4,#06,#1d,#06,#f0,#00,#1d,#06
	db #02,#12,#ea,#01,#f0,#21,#e4,#01
	db #24,#06,#f0,#00,#e4,#01,#24,#06
	db #f0,#1f,#e4,#01,#24,#06,#f0,#00
	db #e4,#01,#24,#06,#f0,#1f,#e4,#06
	db #24,#06,#f0,#00,#24,#06,#24,#06
	db #24,#06,#f0,#1f,#e4,#0e,#24,#06
	db #e4,#0a,#24,#06,#e4,#07,#24,#06
	db #e4,#04,#24,#06,#f0,#00,#e4,#01
	db #24,#06,#e4,#04,#24,#06,#e4,#0a
	db #29,#06,#e4,#0e,#2b,#06,#ff,#e6
	db #1f,#e8,#08,#e9,#0c,#00,#0c,#22
	db #0c,#24,#0c,#26,#0c,#2d,#06,#00
	db #06,#2d,#06,#00,#06,#2d,#0c,#2e
	db #0c,#00,#30,#e1,#e6,#1f,#e8,#08
	db #e9,#0c,#2d,#0c,#2b,#06,#00,#06
	db #2b,#06,#00,#06,#2b,#24,#e9,#11
	db #37,#24,#00,#60,#e1,#e8,#02,#e9
	db #0d,#24,#18,#27,#18,#2b,#18,#2e
	db #18,#27,#24,#28,#0c,#29,#18,#2d
	db #0c,#2e,#06,#30,#06,#00,#60,#e1
	db #e8,#05,#f0,#00,#e9,#0c,#03,#27
	db #ea,#16,#e4,#01,#30,#06,#2e,#06
	db #e4,#01,#2c,#06,#29,#06,#ea,#00
	db #e4,#06,#27,#06,#24,#06,#e4,#01
	db #22,#06,#24,#06,#ea,#16,#e4,#01
	db #27,#06,#00,#06,#e4,#01,#24,#06
	db #00,#06,#ea,#00,#e4,#06,#2b,#06
	db #00,#06,#e4,#01,#27,#06,#27,#06
	db #ea,#16,#e4,#01,#00,#06,#00,#06
	db #e4,#01,#00,#06,#00,#06,#ea,#00
	db #e4,#06,#29,#06,#00,#06,#e4,#01
	db #26,#06,#26,#06,#ea,#16,#e4,#01
	db #00,#06,#00,#06,#e4,#01,#00,#06
	db #00,#06,#ea,#00,#e4,#06,#00,#06
	db #00,#06,#ff,#e6,#02,#e5,#13,#ff
	db #02,#f4,#0f,#e8,#19,#e9,#18,#5d
	db #48,#e1,#02,#f4,#0f,#e8,#01,#f0
	db #3c,#ea,#05,#e4,#02,#24,#48,#e1
	db #02,#f4,#0f,#e8,#1d,#e9,#1e,#4f
	db #4d,#e1,#03,#f4,#0f,#e8,#06,#e9
	db #19,#53,#0f,#e1,#03,#f4,#0f,#e8
	db #07,#e9,#01,#ea,#01,#e4,#07,#5e
	db #10,#ea,#16,#e1,#03,#f4,#0f,#e8
	db #05,#e9,#1c,#ea,#27,#e4,#03,#4f
	db #14,#ea,#16,#e1,#02,#f4,#0f,#e8
	db #15,#e9,#10,#43,#14,#e1,#03,#f4
	db #0f,#e2,#0f,#e8,#25,#e9,#26,#e6
	db #3e,#e3,#19,#e1,#02,#f4,#0f,#e8
	db #23,#e9,#24,#ea,#00,#e4,#0e,#56
	db #63,#e1,#03,#f4,#0f,#e8,#12,#e9
	db #24,#61,#20,#e1,#02,#f4,#0f,#e8
	db #1d,#e9,#1a,#ea,#0b,#e4,#0c,#39
	db #40,#e9,#0c,#e1,#03,#f4,#0f,#e8
	db #06,#e9,#22,#ea,#00,#e4,#0e,#5e
	db #02,#5e,#10,#ea,#16,#e1,#01,#f4
	db #0f,#02,#24,#00,#12,#03,#24,#00
	db #12,#e5,#24,#e1,#00,#03,#e1,#f4
	db #0f,#e8,#02,#e9,#1a,#ea,#15,#e4
	db #07,#5e,#5a,#e1,#e6,#07,#e8,#02
	db #e9,#0f,#20,#48,#22,#18,#23,#48
	db #e8,#05,#25,#78,#e5,#0a,#e1,#e6
	db #07,#e8,#07,#f0,#0c,#37,#06,#37
	db #06,#35,#0c,#ea,#16,#e4,#04,#33
	db #0c,#30,#18,#32,#0c,#e4,#04,#33
	db #0c,#e4,#04,#35,#0c,#36,#06,#36
	db #06,#35,#0c,#e4,#04,#33,#0c,#2f
	db #18,#31,#0c,#ea,#14,#e4,#06,#33
	db #0c,#e8,#05,#35,#60,#f0,#00,#ff
	db #e6,#37,#e8,#0e,#e9,#00,#e2,#1f
	db #e3,#06,#13,#06,#e3,#06,#1f,#06
	db #e3,#06,#ff,#01,#f4,#0f,#e8,#08
	db #e9,#0f,#e2,#0e,#ea,#13,#02,#2a
	db #03,#29,#e6,#1e,#e3,#18,#e4,#01
	db #00,#18,#e3,#18,#e4,#01,#00,#18
	db #ff,#f4,#0f,#e8,#08,#e9,#0c,#e6
	db #31,#e3,#06,#e6,#36,#e3,#06,#e6
	db #38,#e3,#06,#e6,#3a,#e3,#06,#e6
	db #38,#e3,#2a,#00,#0c,#ff,#f4,#0f
	db #e8,#08,#e9,#0c,#e6,#1e,#e3,#18
	db #e3,#18,#e3,#18,#e3,#18,#ff,#e6
	db #34,#e3,#06,#e6,#00,#00,#fc,#08
	db #99,#99,#00

FINISH          DEFL $
;                LIST
;                CLOSE
;START           DEFL START
;FINISH          DEFL FINISH
LENGTH          DEFL FINISH-START
;
.music_info
	db "Cybernoid (1988)(Hewson)(Dave Rogers)",0
	db "CYBERNSD.ASM - CYBERNOID sound driver - JDRogers.",0

	read "music_end.asm"
