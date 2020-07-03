; Music of Let's Go ! - Robocod (2015)(Public Domain)(SuTeKH)(StArkos)
; Ripped by Megachur the 21/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LETGROBC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7eba

	read "music_header.asm"

.l7eba
	db #53,#4b,#31,#30,#ba,#7e,#01,#32
	db #00,#d8,#7e,#da,#7e,#22,#7f,#25
	db #7f,#d4,#7e,#d8,#7e,#da,#7e,#22
	db #7f,#08,#c0,#00,#00,#15,#7f,#0b
	db #61,#80,#ce,#80,#f6,#80,#5b,#81
	db #ce,#80,#f6,#80,#c8,#81,#35,#82
	db #a5,#82,#61,#80,#ce,#80,#f6,#80
	db #32,#83,#9f,#83,#0f,#84,#9a,#84
	db #d8,#84,#1a,#85,#a7,#85,#e9,#85
	db #1a,#85,#2d,#86,#ce,#80,#f6,#80
	db #2d,#86,#ce,#80,#f6,#80,#c8,#81
	db #35,#82,#a5,#82,#32,#83,#9f,#83
	db #0f,#84,#9a,#84,#d8,#84,#1a,#85
	db #16,#9c,#86,#3f,#7f,#49,#7f,#59
	db #7f,#72,#7f,#91,#7f,#b0,#7f,#cf
	db #7f,#ee,#7f,#fc,#7f,#27,#80,#38
	db #80,#44,#80,#4f,#80,#46,#7f,#49
	db #7f,#ff,#37,#00,#00,#00,#00,#46
	db #7f,#59,#7f,#00,#b7,#00,#07,#0f
	db #0d,#0b,#09,#06,#03,#02,#00,#46
	db #7f,#72,#7f,#00,#b7,#00,#07,#09
	db #0a,#0d,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0d,#0a,#09,#07,#05,#03,#01
	db #46,#7f,#91,#7f,#00,#b7,#00,#27
	db #04,#2a,#04,#2d,#10,#2d,#10,#2d
	db #04,#2d,#04,#2c,#10,#2c,#10,#2b
	db #04,#2a,#04,#28,#10,#26,#10,#46
	db #7f,#b0,#7f,#00,#b7,#00,#27,#05
	db #2a,#05,#2d,#11,#2d,#11,#2d,#05
	db #2d,#05,#2c,#11,#2c,#11,#2b,#05
	db #2a,#05,#28,#11,#26,#11,#46,#7f
	db #cf,#7f,#00,#b7,#00,#27,#06,#2a
	db #06,#2d,#12,#2d,#12,#2d,#06,#2d
	db #06,#2c,#12,#2c,#12,#2b,#06,#2a
	db #06,#28,#12,#26,#12,#46,#7f,#ee
	db #7f,#00,#b7,#00,#27,#07,#2a,#07
	db #2d,#13,#2d,#13,#2d,#07,#2d,#07
	db #2c,#13,#2c,#13,#2b,#07,#2a,#07
	db #28,#13,#26,#13,#46,#7f,#fc,#7f
	db #00,#b7,#00,#0f,#0d,#0a,#06,#04
	db #02,#01,#46,#7f,#27,#80,#00,#b7
	db #00,#0c,#0f,#0e,#0d,#0c,#0c,#0b
	db #0b,#0a,#0a,#09,#09,#08,#08,#07
	db #07,#07,#06,#06,#06,#05,#05,#05
	db #04,#04,#04,#03,#03,#03,#02,#02
	db #02,#01,#01,#01,#01,#2f,#80,#38
	db #80,#00,#37,#00,#07,#09,#0b,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#41,#80
	db #44,#80,#00,#37,#00,#07,#09,#0b
	db #0b,#0a,#46,#7f,#4f,#80,#00,#b7
	db #00,#1c,#25,#06,#02,#46,#7f,#61
	db #80,#00,#b7,#00,#07,#0c,#0c,#0b
	db #0a,#08,#06,#04,#03,#02,#01,#86
	db #81,#01,#86,#0d,#80,#01,#80,#0d
	db #78,#01,#78,#0d,#6e,#01,#6e,#0d
	db #72,#01,#77,#79,#78,#0d,#6e,#01
	db #6e,#0d,#d0,#72,#01,#77,#79,#78
	db #0d,#6e,#01,#6e,#0d,#80,#01,#80
	db #0d,#7c,#01,#7c,#0d,#8a,#01,#8a
	db #0d,#86,#01,#86,#0d,#d0,#86,#01
	db #86,#0d,#80,#01,#80,#0d,#78,#01
	db #78,#0d,#6e,#01,#6e,#0d,#72,#01
	db #77,#79,#78,#0d,#6e,#01,#6e,#0d
	db #d0,#82,#01,#82,#0d,#8a,#01,#8a
	db #0d,#86,#01,#86,#0d,#78,#01,#7d
	db #81,#80,#0d,#7c,#01,#7c,#0d,#78
	db #01,#78,#0d,#c2,#30,#80,#02,#d2
	db #27,#d2,#23,#d2,#31,#d2,#3b,#d2
	db #39,#d2,#35,#d2,#3f,#ce,#27,#ce
	db #31,#d2,#39,#d2,#3b,#d2,#39,#d2
	db #3b,#ce,#3d,#ce,#3f,#d2,#3f,#ce
	db #3f,#ce,#31,#c2,#d0,#60,#81,#03
	db #60,#11,#d0,#60,#01,#60,#11,#d0
	db #60,#81,#04,#60,#11,#d0,#60,#81
	db #03,#60,#11,#d0,#60,#81,#04,#60
	db #11,#d0,#60,#81,#03,#60,#11,#d0
	db #60,#81,#05,#60,#11,#d0,#60,#81
	db #06,#60,#11,#d0,#60,#81,#03,#60
	db #11,#d0,#60,#01,#60,#11,#d0,#60
	db #81,#04,#60,#11,#d0,#60,#81,#03
	db #60,#11,#60,#81,#04,#60,#11,#66
	db #81,#05,#66,#11,#60,#81,#03,#60
	db #11,#d0,#60,#81,#06,#60,#11,#60
	db #01,#60,#11,#60,#81,#03,#60,#11
	db #c2,#6e,#81,#07,#6e,#0d,#68,#01
	db #68,#0d,#60,#01,#60,#0d,#56,#01
	db #56,#0d,#5a,#01,#5f,#61,#60,#0d
	db #56,#01,#56,#0d,#d0,#5a,#01,#5f
	db #61,#60,#0d,#56,#01,#56,#0d,#68
	db #01,#68,#0d,#64,#01,#64,#0d,#72
	db #01,#72,#0d,#6e,#01,#6e,#0d,#d0
	db #6e,#01,#6e,#0d,#68,#01,#68,#0d
	db #60,#01,#60,#0d,#56,#01,#56,#0d
	db #5a,#01,#5f,#61,#60,#0d,#56,#01
	db #56,#0d,#d0,#6a,#01,#6a,#0d,#72
	db #01,#72,#0d,#6e,#01,#6e,#0d,#60
	db #01,#65,#69,#68,#0d,#64,#01,#64
	db #0d,#60,#01,#60,#0d,#c2,#94,#81
	db #08,#94,#0d,#8e,#01,#8e,#0d,#86
	db #01,#86,#0d,#7c,#01,#7c,#0d,#80
	db #01,#85,#87,#86,#0d,#7c,#01,#7c
	db #0d,#d0,#80,#01,#85,#87,#86,#0d
	db #7c,#01,#7c,#0d,#8e,#01,#8e,#0d
	db #8a,#01,#8a,#0d,#98,#01,#98,#0d
	db #94,#01,#94,#0d,#d0,#94,#01,#94
	db #0d,#8e,#01,#8e,#0d,#86,#01,#86
	db #0d,#7c,#01,#7c,#0d,#80,#01,#85
	db #87,#86,#0d,#7c,#01,#7c,#0d,#d0
	db #90,#01,#90,#0d,#98,#01,#98,#0d
	db #94,#01,#94,#0d,#86,#01,#8b,#8f
	db #86,#0d,#8a,#01,#8a,#0d,#86,#01
	db #86,#0d,#c2,#d0,#6e,#81,#09,#c4
	db #01,#c4,#02,#c4,#04,#c4,#06,#6c
	db #01,#69,#c4,#01,#60,#01,#c4,#01
	db #64,#01,#c4,#01,#c4,#02,#c4,#04
	db #68,#01,#c4,#01,#60,#01,#c4,#01
	db #64,#01,#c4,#01,#5e,#01,#c4,#01
	db #62,#01,#c4,#01,#5a,#01,#5f,#61
	db #5f,#5b,#c4,#01,#56,#01,#c4,#01
	db #6e,#01,#c4,#01,#c4,#02,#c4,#04
	db #c4,#06,#6c,#01,#69,#c4,#01,#60
	db #01,#c4,#01,#64,#01,#c4,#01,#c4
	db #02,#c4,#04,#6e,#01,#6d,#6f,#69
	db #65,#c4,#01,#5e,#01,#61,#65,#5f
	db #61,#c4,#01,#5e,#01,#c4,#01,#c4
	db #02,#c4,#04,#3e,#81,#02,#ce,#6e
	db #81,#03,#6e,#11,#34,#81,#02,#ce
	db #6e,#81,#03,#6e,#11,#30,#81,#02
	db #ce,#6e,#81,#04,#6e,#11,#3e,#81
	db #02,#ce,#6e,#81,#03,#6e,#11,#48
	db #81,#02,#ce,#6e,#81,#04,#6e,#11
	db #46,#81,#02,#ce,#6e,#81,#03,#6e
	db #11,#42,#81,#02,#ce,#6e,#81,#05
	db #6e,#11,#4c,#81,#02,#ce,#6e,#81
	db #06,#6e,#11,#3e,#81,#02,#ce,#6e
	db #81,#03,#6e,#11,#46,#81,#02,#ce
	db #6e,#81,#03,#6e,#11,#48,#81,#02
	db #ce,#6e,#81,#04,#6e,#11,#46,#81
	db #02,#ce,#6e,#81,#03,#6e,#11,#48
	db #81,#02,#6e,#80,#04,#74,#81,#05
	db #74,#11,#6e,#81,#03,#6e,#11,#d0
	db #34,#81,#02,#6e,#80,#06,#6e,#01
	db #6e,#11,#6e,#81,#03,#6e,#11,#c2
	db #94,#81,#07,#94,#0d,#8e,#01,#8e
	db #0d,#86,#01,#86,#0d,#7c,#01,#7c
	db #0d,#80,#01,#85,#87,#86,#0d,#7c
	db #01,#7c,#0d,#d0,#80,#01,#85,#87
	db #86,#0d,#7c,#01,#7c,#0d,#8e,#01
	db #8e,#0d,#8a,#01,#8a,#0d,#98,#01
	db #98,#0d,#94,#01,#94,#0d,#d0,#94
	db #01,#94,#0d,#8e,#01,#8e,#0d,#86
	db #01,#86,#0d,#7c,#01,#7c,#0d,#80
	db #01,#85,#87,#86,#0d,#7c,#01,#7c
	db #0d,#d0,#90,#01,#90,#0d,#98,#01
	db #98,#0d,#94,#01,#94,#0d,#86,#01
	db #8b,#8f,#86,#0d,#8a,#01,#8a,#0d
	db #86,#01,#86,#0d,#c2,#d0,#86,#81
	db #0a,#c4,#01,#c4,#02,#c4,#04,#c4
	db #06,#84,#01,#81,#c4,#01,#78,#01
	db #c4,#01,#7c,#01,#c4,#01,#c4,#02
	db #c4,#04,#80,#01,#c4,#01,#78,#01
	db #c4,#01,#7c,#01,#c4,#01,#76,#01
	db #c4,#01,#7a,#01,#c4,#01,#72,#01
	db #77,#79,#77,#73,#c4,#01,#6e,#01
	db #c4,#01,#86,#01,#c4,#01,#c4,#02
	db #c4,#04,#c4,#06,#84,#01,#81,#c4
	db #01,#78,#01,#c4,#01,#7c,#01,#c4
	db #01,#c4,#02,#c4,#04,#80,#01,#85
	db #87,#81,#7d,#c4,#01,#76,#01,#79
	db #7d,#77,#79,#c4,#01,#76,#01,#c4
	db #01,#c4,#02,#c4,#04,#3e,#81,#02
	db #ce,#6e,#81,#03,#6e,#11,#34,#81
	db #02,#ce,#6e,#81,#03,#6e,#11,#30
	db #81,#02,#ce,#6e,#81,#04,#6e,#11
	db #3e,#81,#02,#ce,#6e,#81,#03,#6e
	db #11,#48,#81,#02,#ce,#6e,#81,#04
	db #6e,#11,#46,#81,#02,#ce,#6e,#81
	db #03,#6e,#11,#42,#81,#02,#ce,#6e
	db #81,#05,#6e,#11,#4c,#81,#02,#ce
	db #6e,#81,#06,#6e,#11,#3e,#81,#02
	db #ce,#6e,#81,#03,#6e,#11,#46,#81
	db #02,#ce,#6e,#81,#03,#6e,#11,#48
	db #81,#02,#ce,#6e,#81,#04,#6e,#11
	db #46,#81,#02,#ce,#6e,#81,#03,#6e
	db #11,#48,#81,#02,#6e,#80,#04,#74
	db #81,#05,#74,#11,#6e,#81,#03,#6e
	db #11,#d0,#34,#81,#02,#6e,#80,#06
	db #6e,#01,#6e,#11,#26,#81,#02,#c2
	db #9e,#80,#0b,#ce,#95,#ce,#9f,#ce
	db #95,#95,#9f,#ce,#95,#ce,#9f,#ce
	db #95,#95,#9f,#ce,#95,#ce,#9f,#ce
	db #95,#95,#9f,#ce,#95,#95,#9f,#ce
	db #95,#ce,#9f,#ce,#95,#ce,#9f,#ce
	db #95,#95,#9f,#ce,#95,#ce,#9f,#ce
	db #95,#95,#9f,#95,#ce,#95,#9f,#d2
	db #9f,#95,#ce,#95,#9f,#c2,#a2,#80
	db #0c,#9d,#95,#9d,#a3,#9d,#95,#a3
	db #a7,#9f,#95,#a7,#a3,#9d,#95,#a3
	db #a7,#9f,#95,#a7,#a3,#9d,#95,#a3
	db #a1,#99,#8f,#a1,#a3,#99,#93,#99
	db #a3,#9d,#95,#9d,#a3,#9d,#95,#a3
	db #a7,#9f,#95,#a7,#a3,#9d,#95,#a3
	db #a7,#a5,#a7,#a1,#a3,#9d,#95,#9d
	db #a3,#99,#93,#99,#95,#8b,#95,#9d
	db #4c,#81,#02,#ce,#64,#81,#03,#64
	db #11,#42,#81,#02,#ce,#64,#81,#03
	db #64,#11,#3e,#81,#02,#ce,#64,#81
	db #04,#64,#11,#4c,#81,#02,#ce,#64
	db #81,#03,#64,#11,#3e,#81,#02,#ce
	db #64,#81,#04,#64,#11,#3c,#81,#02
	db #ce,#64,#81,#03,#64,#11,#38,#81
	db #02,#ce,#64,#81,#05,#64,#11,#42
	db #81,#02,#ce,#64,#81,#06,#64,#11
	db #4c,#81,#02,#ce,#64,#81,#03,#64
	db #11,#3c,#81,#02,#ce,#64,#81,#03
	db #64,#11,#3e,#81,#02,#ce,#64,#81
	db #04,#64,#11,#3c,#81,#02,#ce,#64
	db #81,#03,#64,#11,#3e,#81,#02,#64
	db #80,#04,#70,#81,#05,#70,#11,#64
	db #81,#03,#64,#11,#d0,#42,#81,#02
	db #64,#80,#06,#64,#01,#64,#11,#64
	db #81,#03,#64,#11,#c2,#94,#80,#01
	db #ce,#95,#95,#95,#ce,#95,#95,#95
	db #ce,#95,#95,#95,#ce,#95,#95,#95
	db #ce,#95,#95,#95,#ce,#95,#95,#95
	db #ce,#95,#95,#95,#ce,#95,#95,#95
	db #ce,#95,#95,#95,#ce,#95,#95,#95
	db #ce,#95,#95,#95,#ce,#95,#95,#95
	db #ce,#95,#95,#95,#ce,#95,#95,#95
	db #ce,#95,#95,#95,#ce,#95,#95,#a2
	db #80,#0a,#9d,#95,#9d,#a3,#9d,#95
	db #a3,#a7,#9f,#95,#a7,#a3,#9d,#95
	db #a3,#a7,#9f,#95,#a7,#a3,#9d,#95
	db #a3,#a1,#99,#8f,#a1,#a3,#99,#93
	db #99,#a3,#9d,#95,#9d,#a3,#9d,#95
	db #a3,#a7,#9f,#95,#a7,#a3,#9d,#95
	db #a3,#a7,#a5,#a7,#a1,#a3,#9d,#95
	db #9d,#a3,#99,#93,#99,#95,#38,#80
	db #02,#3b,#3d,#56,#81,#02,#56,#0d
	db #50,#01,#50,#0d,#48,#01,#48,#0d
	db #3e,#01,#3e,#0d,#42,#01,#47,#49
	db #48,#0d,#3e,#01,#3e,#0d,#d0,#42
	db #01,#47,#49,#48,#0d,#3e,#01,#3e
	db #0d,#50,#01,#50,#0d,#4c,#01,#4c
	db #0d,#5a,#01,#5a,#0d,#56,#01,#56
	db #0d,#d0,#86,#81,#07,#86,#0d,#80
	db #01,#80,#0d,#78,#01,#78,#0d,#6e
	db #01,#6e,#0d,#72,#01,#77,#79,#78
	db #0d,#6e,#01,#6e,#0d,#d0,#6a,#81
	db #01,#6a,#0d,#72,#01,#72,#0d,#6e
	db #01,#6e,#0d,#60,#01,#65,#69,#68
	db #0d,#64,#01,#64,#0d,#60,#01,#60
	db #0d,#c2,#ff
;
	ds #9348-$,0
;
; #9348
;
	jp l9352
	jp l9376
.l9351 equ $ + 3
.l9350 equ $ + 2
	db #48,#93,#00,#00
.l9352
	call l9c28
	ld hl,l939c
.l9359 equ $ + 1
	ld a,#00
.l935a
	cp (hl)
	jr z,l9361
	inc hl
	inc hl
	jr l935a
.l9361
	inc hl
	ld a,(hl)
	ld (l9395),a
	xor a
	ld (l938b),a
	ld hl,l937f
	ld bc,#8100
	ld de,l9389
	jp #bce0
.l9376
	ld hl,l937f
	call #bce6
	jp l9c03
.l937f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
;
.play_music_interrupt
.l9389
;
	di
.l938b equ $ + 1
	ld a,#00
	sub #01
	jr c,l9394
	ld (l938b),a
	ret
.l9395 equ $ + 1
.l9394
	ld a,#00
	ld (l938b),a
	jp l93a8
.l939c
	dec c
	ld de,#0b19
	ld (#6405),a
	ld (bc),a
	sub (hl)
	ld bc,#002c
;
.play_music
.l93a8
;
	xor a
	ld (l9350),a
	ld (l9be1),a
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
.l93b9 equ $ + 1
	ld a,#00
.l93bb equ $ + 1
	cp #00
	jr z,l93c5
	inc a
	ld (l93b9),a
	jp l9654
.l93c5
	xor a
	ld (l93b9),a
.l93c9
	or a
	jp nc,l94ab
	ld (l94d3),a
	ld (l953e),a
	ld (l95a9),a
	ld a,#b7
	ld (l93c9),a
.l93dc equ $ + 1
	ld a,#00
	sub #01
	jr nc,l9412
.l93e2 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l940f
	ld b,a
	and #1f
	bit 4,a
	jr z,l93f3
	or #e0
.l93f3
	ld (l94e0),a
	rl b
	rl b
	jr nc,l9401
	ld a,(hl)
	ld (l954b),a
	inc hl
.l9401
	rl b
	jr nc,l940a
	ld a,(hl)
	ld (l95b6),a
	inc hl
.l940a
	ld (l93e2),hl
	jr l9415
.l940f
	ld (l93e2),hl
.l9412
	ld (l93dc),a
.l9416 equ $ + 1
.l9415
	ld a,#00
	sub #01
	jr c,l9422
	ld (l9416),a
.l941f equ $ + 1
	ld a,#00
	jr l943d
.l9423 equ $ + 1
.l9422
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l9430
	ld (l9423),hl
	jr l943d
.l9430
	ld (l941f),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l9423),hl
	ld (l9416),a
	ld a,b
.l943d
	ld (l9614),a
.l9441 equ $ + 1
	ld hl,#0000
	ld de,l94d9
	ldi
	ldi
	ld de,l9544
	ldi
	ldi
	ld de,l95af
	ldi
	ldi
	ld (l9441),hl
.l945c equ $ + 1
	ld a,#00
	or a
	jr nz,l946e
.l9461 equ $ + 1
	ld a,#00
	sub #01
	jr c,l947c
	ld (l9461),a
.l946a equ $ + 1
	ld hl,#0000
	jr l94b4
.l946f equ $ + 1
.l946e
	ld a,#00
	sub #01
	jr c,l947c
	ld (l946f),a
	ld hl,(l947d)
	jr l94a1
.l947d equ $ + 1
.l947c
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l9499
	ld (l9461),a
	xor a
	ld (l945c),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l947d),hl
	ex de,hl
	ld (l946a),hl
	jr l94b4
.l9499
	ld (l946f),a
	ld a,#01
	ld (l945c),a
.l94a1
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l947d),hl
	ex de,hl
	jr l94b4
.l94ac equ $ + 1
.l94ab
	ld a,#00
	sub #01
	jr nc,l94cf
.l94b2 equ $ + 1
	ld hl,#0000
.l94b4
	ld a,(hl)
	inc hl
	srl a
	jr c,l94cc
	srl a
	jr c,l94c3
	ld (l93bb),a
	jr l94cb
.l94c3
	ld (l9350),a
.l94c7 equ $ + 1
	ld a,#01
	ld (l9351),a
.l94cb
	xor a
.l94cc
	ld (l94b2),hl
.l94cf
	ld (l94ac),a
.l94d3 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l953a
.l94d9 equ $ + 1
	ld hl,#0000
.l94dc equ $ + 1
	ld bc,#0100
.l94e0 equ $ + 2
.l94df equ $ + 1
	ld de,#0000
.l94e3 equ $ + 2
	ld lx,#00
	call l9753
	ld a,lx
	ld (l94e3),a
	ld (l965e),hl
	exx
	ld (l94d9),hl
	ld a,c
	ld (l94dc),a
	ld (l9658),a
	xor a
	or hy
	jr nz,l9538
	ld (l967b),a
	ld d,a
	ld a,e
	ld (l94df),a
	ld l,d
	ld h,l
	ld (l965b),hl
.l950d equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l968c
	ldi
	ldi
	ld de,l9684
	ldi
	ldi
	ld de,l967d
	ldi
	ld de,l968e
	ldi
	ld a,(hl)
	inc hl
	ld (l966d),hl
	ld hl,l9be1
	or (hl)
	ld (hl),a
.l9538
	ld a,ly
.l953a
	ld (l94d3),a
.l953e equ $ + 1
	ld a,#00
	sub #01
	jr nc,l95a5
.l9544 equ $ + 1
	ld hl,#0000
.l9547 equ $ + 1
	ld bc,#0200
.l954b equ $ + 2
.l954a equ $ + 1
	ld de,#0000
.l954e equ $ + 2
	ld lx,#00
	call l9753
	ld a,lx
	ld (l954e),a
	ld (l96b0),hl
	exx
	ld (l9544),hl
	ld a,c
	ld (l9547),a
	ld (l96aa),a
	xor a
	or hy
	jr nz,l95a3
	ld (l96cd),a
	ld d,a
	ld a,e
	ld (l954a),a
	ld l,d
	ld h,l
	ld (l96ad),hl
.l9578 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l96de
	ldi
	ldi
	ld de,l96d6
	ldi
	ldi
	ld de,l96cf
	ldi
	ld de,l96e0
	ldi
	ld a,(hl)
	inc hl
	ld (l96bf),hl
	ld hl,l9be1
	or (hl)
	ld (hl),a
.l95a3
	ld a,ly
.l95a5
	ld (l953e),a
.l95a9 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l9610
.l95af equ $ + 1
	ld hl,#0000
.l95b2 equ $ + 1
	ld bc,#0300
.l95b6 equ $ + 2
.l95b5 equ $ + 1
	ld de,#0000
.l95b9 equ $ + 2
	ld lx,#00
	call l9753
	ld a,lx
	ld (l95b9),a
	ld (l9702),hl
	exx
	ld (l95af),hl
	ld a,c
	ld (l95b2),a
	ld (l96fc),a
	xor a
	or hy
	jr nz,l960e
	ld (l971f),a
	ld d,a
	ld a,e
	ld (l95b5),a
	ld l,d
	ld h,l
	ld (l96ff),hl
.l95e3 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l9730
	ldi
	ldi
	ld de,l9728
	ldi
	ldi
	ld de,l9721
	ldi
	ld de,l9732
	ldi
	ld a,(hl)
	inc hl
	ld (l9711),hl
	ld hl,l9be1
	or (hl)
	ld (hl),a
.l960e
	ld a,ly
.l9610
	ld (l95a9),a
.l9614 equ $ + 1
	ld a,#00
	sub #01
	jr c,l961e
	ld (l9614),a
	jr l9654
.l961e
	ld a,#37
	ld (l93c9),a
	ld hl,(l9441)
.l9627 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l9654
	ld (l93dc),a
	ld (l9416),a
	ld (l94ac),a
.l9638 equ $ + 1
	ld hl,#0000
	ld (l93e2),hl
.l963e equ $ + 1
	ld hl,#0000
	ld (l9423),hl
.l9644 equ $ + 1
	ld hl,#0000
	ld (l9441),hl
.l964a equ $ + 1
	ld hl,#0000
	ld (l947d),hl
.l9650 equ $ + 1
	ld a,#00
	ld (l945c),a
.l9654
	ld hl,l9be1
.l9658 equ $ + 1
	ld d,#00
	exx
.l965b equ $ + 1
	ld hl,#0000
.l965e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l965b),hl
	ld (l988e),hl
	ld a,(l94e3)
	ld lx,a
.l966d equ $ + 1
	ld hl,#0000
	ld iy,l9a7c
	ld a,(l967b)
	call l97e8
	ex de,hl
.l967b equ $ + 1
	ld a,#00
.l967d equ $ + 1
	cp #00
	jr z,l9683
	inc a
	jr l96a0
.l9684 equ $ + 1
.l9683
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l969c
.l968c equ $ + 1
	ld de,#0000
.l968e
	or a
	jr c,l969c
.l9692 equ $ + 1
	ld hl,#0000
	ld (l9684),hl
	dec a
	ld (l967d),a
	inc a
.l969c
	ld (l966d),de
.l96a0
	ld (l967b),a
	ld a,hx
	ld (l974f),a
	exx
.l96aa equ $ + 1
	ld d,#00
	exx
.l96ad equ $ + 1
	ld hl,#0000
.l96b0 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l96ad),hl
	ld (l988e),hl
	ld a,(l954e)
	ld lx,a
.l96bf equ $ + 1
	ld hl,#0000
	ld iy,l9acd
	ld a,(l96cd)
	call l97e8
	ex de,hl
.l96cd equ $ + 1
	ld a,#00
.l96cf equ $ + 1
	cp #00
	jr z,l96d5
	inc a
	jr l96f2
.l96d6 equ $ + 1
.l96d5
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l96ee
.l96de equ $ + 1
	ld de,#0000
.l96e0
	or a
	jr c,l96ee
.l96e4 equ $ + 1
	ld hl,#0000
	ld (l96d6),hl
	dec a
	ld (l96cf),a
	inc a
.l96ee
	ld (l96bf),de
.l96f2
	ld (l96cd),a
	ld a,hx
	ld (l974c),a
	exx
.l96fc equ $ + 1
	ld d,#00
	exx
.l96ff equ $ + 1
	ld hl,#0000
.l9702 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l96ff),hl
	ld (l988e),hl
	ld a,(l95b9)
	ld lx,a
.l9711 equ $ + 1
	ld hl,#0000
	ld iy,l9b1e
	ld a,(l971f)
	call l97e8
	ex de,hl
.l971f equ $ + 1
	ld a,#00
.l9721 equ $ + 1
	cp #00
	jr z,l9727
	inc a
	jr l9744
.l9728 equ $ + 1
.l9727
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l9740
.l9730 equ $ + 1
	ld de,#0000
.l9732
	or a
	jr c,l9740
.l9736 equ $ + 1
	ld hl,#0000
	ld (l9728),hl
	dec a
	ld (l9721),a
	inc a
.l9740
	ld (l9711),de
.l9744
	ld (l971f),a
	ld a,hx
	sla a
.l974c equ $ + 1
	or #00
	rla
.l974f equ $ + 1
	or #00
	jp l9a71
.l9753
	ld a,(hl)
	inc hl
	srl a
	jr c,l978c
	cp #60
	jr nc,l9794
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l976c
	and #0f
	ld c,a
.l976c
	rl b
	jr nc,l9772
	ld e,(hl)
	inc hl
.l9772
	rl b
	jr nc,l9784
.l9776
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l9780
	dec h
.l9780
	ld ly,#00
	ret
.l9784
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l978c
	ld hy,#00
	add d
	ld lx,a
	jr l9784
.l9794
	ld hy,#01
	sub #60
	jr z,l97b5
	dec a
	jr z,l97cc
	dec a
	jr z,l97be
	dec a
	jr z,l9776
	dec a
	jr z,l97c8
	dec a
	jr z,l97dd
	dec a
	jr z,l97d4
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l97b5
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l97be
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l97c8
	ld c,(hl)
	inc hl
	jr l9776
.l97cc
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l97d4
	ld a,(hl)
	inc hl
	ld (l9350),a
	ld a,b
	ld (l9351),a
.l97dd
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l97e8
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l989e
	bit 4,e
	jr z,l9850
	ld a,(hl)
	bit 6,a
	jr z,l981d
	ld d,#08
	inc hl
	and #1f
	jr z,l9804
	ld (l9b6f),a
	res 3,d
.l9804
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l980d
	xor a
.l980d
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l981d
	ld (l9b6f),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l9839
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l9832
	xor a
.l9832
	ld (iy+#36),a
	ld hx,d
	jr l9863
.l9839
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l9842
	xor a
.l9842
	ld (iy+#36),a
.l9845
	ld hx,d
	ret
.l9848
	ld (iy+#36),#00
	ld d,#09
	jr l9845
.l9850
	ld d,#08
	ld a,e
	and #0f
	jr z,l9848
	exx
	sub d
	exx
	jr nc,l985d
	xor a
.l985d
	ld (iy+#36),a
	ld hx,#08
.l9863
	bit 5,e
	jr z,l986b
	ld a,(hl)
	inc hl
	jr l986c
.l986b
	xor a
.l986c
	bit 6,e
	jr z,l9876
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l9879
.l9876
	ld de,#0000
.l9879
	add lx
	cp #60
	jr c,l9881
	ld a,#5f
.l9881
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l99b1
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l988e equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l989e
	or a
	jr nz,l98a8
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l98a8
	ld a,e
	or #08
	and #09
	ld d,a
	ld (iy+#36),#10
	ld b,(hl)
	inc hl
	ld a,b
	and #03
	add a
	add #08
	ld (l9bda),a
	bit 3,e
	jr z,l98ca
	ld a,(hl)
	inc hl
	ld (l9b6f),a
	res 3,d
	jr l98ca
.l98ca
	ld hx,d
	xor a
	bit 7,b
	jr z,l98dc
	bit 6,b
	jr z,l98d7
	ld a,(hl)
	inc hl
.l98d7
	ld (l998b),a
	ld a,#01
.l98dc
	ld (l9924),a
	ld a,b
	rra
	and #0e
	ld (l9935),a
	bit 4,e
	jp nz,l9996
	bit 1,e
	jr z,l98f3
	ld a,(hl)
	inc hl
	jr l98f4
.l98f3
	xor a
.l98f4
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l9901
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l9904
.l9901
	ld de,#0000
.l9904
	add lx
	cp #60
	jr c,l990c
	ld a,#5f
.l990c
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l99b1
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l988e)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l9924 equ $ + 1
	ld a,#00
	or a
	jr nz,l9934
	ex af,af'
	bit 5,a
	jr nz,l999f
.l992d
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l9935 equ $ + 1
.l9934
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l993f),a
	ld a,c
.l993f equ $ + 1
	jr l9940
.l9940
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	ld c,a
	jr nc,l9959
	inc bc
.l9959
	ld a,c
	ld (l9ba4),a
	ld a,b
	ld (l9bbf),a
	ld a,(l9924)
	or a
	jr z,l9994
	ld a,(l9935)
	ld e,a
	srl a
	add e
	ld (l9973),a
	ld a,b
.l9973 equ $ + 1
	jr l9974
.l9974
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	ld b,a
.l998b equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l9994
	pop hl
	ret
.l9996
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l992d
.l999f
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l9ba4),a
	inc hl
	ld a,(hl)
	ld (l9bbf),a
	inc hl
	ret
.l99b1
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
.l9a71
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l9a7c equ $ + 1
	ld a,#00
.l9a7e equ $ + 1
	cp #00
	jr z,l9a96
	ld d,#00
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9a7e),a
	exx
.l9a97 equ $ + 1
.l9a96
	ld a,#00
.l9a99 equ $ + 1
	cp #00
	jr z,l9ab1
	ld d,#01
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9a99),a
	exx
.l9ab2 equ $ + 1
.l9ab1
	ld a,#00
.l9ab4 equ $ + 1
	cp #00
	jr z,l9acc
	ld d,#08
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9ab4),a
	exx
.l9acd equ $ + 1
.l9acc
	ld a,#00
.l9acf equ $ + 1
	cp #00
	jr z,l9ae7
	ld d,#02
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9acf),a
	exx
.l9ae8 equ $ + 1
.l9ae7
	ld a,#00
.l9aea equ $ + 1
	cp #00
	jr z,l9b02
	ld d,#03
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9aea),a
	exx
.l9b03 equ $ + 1
.l9b02
	ld a,#00
.l9b05 equ $ + 1
	cp #00
	jr z,l9b1d
	ld d,#09
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9b05),a
	exx
.l9b1e equ $ + 1
.l9b1d
	ld a,#00
.l9b20 equ $ + 1
	cp #00
	jr z,l9b38
	ld d,#04
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9b20),a
	exx
.l9b39 equ $ + 1
.l9b38
	ld a,#00
.l9b3b equ $ + 1
	cp #00
	jr z,l9b53
	ld d,#05
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9b3b),a
	exx
.l9b54 equ $ + 1
.l9b53
	ld a,#00
.l9b56 equ $ + 1
	cp #00
	jr z,l9b6e
	ld d,#0a
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9b56),a
	exx
.l9b6f equ $ + 1
.l9b6e
	ld a,#00
.l9b71 equ $ + 1
	cp #00
	jr z,l9b89
	ld d,#06
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9b71),a
	exx
.l9b89
	ld a,h
.l9b8b equ $ + 1
	cp #c0
	jr z,l9ba3
	ld d,#07
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9b8b),a
	exx
.l9ba4 equ $ + 1
.l9ba3
	ld a,#00
.l9ba6 equ $ + 1
	cp #00
	jr z,l9bbe
	ld d,#0b
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9ba6),a
	exx
.l9bbf equ $ + 1
.l9bbe
	ld a,#00
.l9bc1 equ $ + 1
	cp #00
	jr z,l9bd9
	ld d,#0c
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9bc1),a
	exx
.l9bda equ $ + 1
.l9bd9
	ld a,#00
.l9bdc equ $ + 1
	cp #ff
	jr nz,l9be6
	ld h,a
.l9be1 equ $ + 1
	ld a,#00
	or a
	jr z,l9bfa
	ld a,h
.l9be6
	ld d,#0d
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9bdc),a
.l9bfa
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
;
.stop_music
.l9c03
;
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l9ab2),a
	ld (l9b03),a
	ld (l9b54),a
	dec a
	ld (l9ab4),a
	ld (l9b05),a
	ld (l9b56),a
	ld (l9b8b),a
	ld a,#3f
	jp l9a71
;
.real_init_music
.l9c28
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l94c7),a
	inc hl
	ld a,(hl)
	ld (l9359),a
	inc hl
	inc hl
	ld de,l9423
	ldi
	ldi
	ld de,l9441
	ldi
	ldi
	ld de,l947d
	ldi
	ldi
	ld de,l950d
	ldi
	ldi
	ld de,l9638
	ldi
	ldi
	ld de,l963e
	ldi
	ldi
	ld de,l9644
	ldi
	ldi
	ld de,l964a
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l93bb),a
	ld (l93b9),a
	ld (l93e2),hl
	ld hl,(l947d)
	ld (l9627),hl
	ld a,(hl)
	and #01
	ld (l945c),a
	ld hl,(l964a)
	ld a,(hl)
	and #01
	ld (l9650),a
	ld hl,(l950d)
	ld (l9578),hl
	ld (l95e3),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l966d),hl
	ld (l96bf),hl
	ld (l9711),hl
	ld (l968c),hl
	ld (l96de),hl
	ld (l9730),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l9692),de
	ld (l96e4),de
	ld (l9736),de
	ld (l9684),de
	ld (l96d6),de
	ld (l9728),de
	ld a,#37
	ld (l93c9),a
	ld hl,l9ce7
.l9cd7
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l9cde
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l9cde
	jr l9cd7
.l9ce7
	jr l9ce9
.l9ce9
	dw l9a7c,l9a97,l9acd,l9ae8
	dw l9b1e,l9b39,l9b6f,l9ab2
	dw l9b03,l9b54,l9ba4,l9bbf
	dw l9bda,l93dc,l9416,l9461
	dw l946f,l94ac,l967b,l96cd
	dw l971f,l94dc,l9547,l95b2
	dw #ff11,l9a7e,l9a99,l9acf
	dw l9aea,l9b20,l9b3b,l9b71
	dw l9b8b,l9ab4,l9b05,l9b56
	dw l9ba6,l9bc1,l9bdc,l967d
	dw l96cf,l9721,#b703,l968e
	dw l96e0,l9732,#0000
;
;	CALL &9348,&7EBA
;
;
.init_music	; added by Megachur
;
	ld de,l7eba
	jp real_init_music
;
.music_info
	db "Let's Go ! - Robocod (2015)(Public Domain)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
