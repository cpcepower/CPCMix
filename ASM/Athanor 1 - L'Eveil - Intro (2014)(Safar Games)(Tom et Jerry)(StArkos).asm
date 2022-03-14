; Music of Athanor 1 - L'Eveil - Intro (2014)(Safar Games)(Tom et Jerry)(StArkos)
; Ripped by Megachur the 11/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ATHANEIN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7000

	read "music_header.asm"

; intro
.l7000
	db #53,#4b,#31,#30,#00,#70,#01,#32
	db #00,#3a,#70,#3c,#70,#c0,#70,#c3
	db #70,#1a,#70,#3a,#70,#3c,#70,#c0
	db #70,#05,#c0,#00,#00,#0b,#80,#0c
	db #c0,#00,#0c,#01,#c0,#0c,#00,#01
	db #40,#0c,#80,#00,#c0,#f4,#00,#40
	db #fb,#01,#c0,#00,#00,#01,#28,#3c
	db #40,#f4,#8f,#15,#83,#71,#a9,#71
	db #c9,#71,#e9,#71,#29,#72,#47,#72
	db #65,#72,#bd,#72,#dd,#72,#03,#73
	db #bd,#72,#dd,#72,#63,#73,#8a,#73
	db #1e,#74,#63,#73,#8a,#73,#28,#74
	db #63,#73,#3e,#74,#d2,#74,#63,#73
	db #8a,#73,#d2,#74,#63,#73,#8a,#73
	db #1c,#75,#3f,#75,#63,#75,#f6,#75
	db #1f,#76,#8a,#73,#51,#76,#1f,#76
	db #8a,#73,#70,#76,#95,#76,#8a,#73
	db #c7,#76,#95,#76,#8a,#73,#e6,#76
	db #02,#77,#8a,#73,#66,#77,#02,#77
	db #8a,#73,#8a,#73,#02,#77,#63,#75
	db #63,#75,#8a,#73,#a9,#71,#02,#77
	db #8a,#73,#29,#72,#02,#77,#8a,#73
	db #86,#77,#02,#77,#af,#77,#b1,#77
	db #02,#77,#af,#77,#af,#77,#02,#77
	db #2a,#da,#77,#d9,#70,#e3,#70,#f8
	db #70,#0f,#71,#2b,#71,#37,#71,#43
	db #71,#4f,#71,#5b,#71,#67,#71,#7a
	db #71,#e0,#70,#e3,#70,#ff,#37,#00
	db #00,#00,#00,#e0,#70,#f8,#70,#00
	db #b7,#00,#0b,#0e,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #07,#71,#0f,#71,#02,#37,#00,#09
	db #0a,#0b,#0c,#0c,#0c,#0b,#0a,#49
	db #01,#00,#09,#49,#ff,#ff,#09,#28
	db #71,#2b,#71,#03,#37,#00,#0c,#6e
	db #0c,#01,#00,#0e,#2d,#0c,#0d,#2c
	db #0c,#0c,#2b,#0c,#0a,#29,#0c,#08
	db #27,#0c,#07,#32,#71,#37,#71,#02
	db #37,#00,#0c,#2c,#07,#2c,#0e,#3e
	db #71,#43,#71,#02,#37,#00,#0c,#2c
	db #09,#2c,#0c,#4a,#71,#4f,#71,#02
	db #37,#00,#0c,#2c,#07,#2c,#0c,#56
	db #71,#5b,#71,#02,#37,#00,#0c,#2c
	db #08,#2c,#0a,#62,#71,#67,#71,#02
	db #37,#00,#0c,#2c,#08,#2c,#0c,#e0
	db #70,#7a,#71,#01,#b7,#00,#0e,#28
	db #0c,#0c,#28,#0c,#0a,#28,#0c,#47
	db #01,#00,#81,#71,#83,#71,#08,#37
	db #00,#1c,#04,#de,#b4,#83,#01,#d0
	db #b4,#09,#d0,#b4,#0f,#e2,#b4,#03
	db #d0,#b4,#09,#d0,#b4,#0f,#e2,#b4
	db #03,#d0,#b4,#09,#d0,#b4,#0d,#e2
	db #be,#01,#d0,#be,#07,#d0,#be,#0b
	db #c2,#64,#8b,#02,#d6,#75,#ce,#75
	db #d8,#73,#d0,#6f,#d6,#6b,#d0,#6f
	db #dc,#6b,#d0,#6f,#d0,#73,#d0,#6f
	db #d6,#6b,#d0,#67,#d6,#6b,#d0,#65
	db #c2,#6e,#83,#02,#d6,#7d,#ce,#7d
	db #d8,#79,#d0,#75,#d6,#73,#d0,#75
	db #dc,#73,#d0,#75,#d0,#79,#d0,#75
	db #d6,#73,#d0,#6f,#d6,#73,#d0,#6b
	db #c2,#de,#b6,#83,#01,#d0,#b6,#09
	db #d0,#b6,#0f,#e2,#b6,#03,#d0,#b6
	db #09,#d0,#b6,#0f,#d0,#36,#81,#03
	db #d4,#c4,#01,#c4,#02,#c4,#03,#c4
	db #04,#ae,#83,#01,#d0,#ae,#09,#d0
	db #ae,#0f,#d0,#34,#81,#03,#d4,#c4
	db #01,#c4,#02,#c4,#03,#c4,#04,#ac
	db #83,#01,#d0,#ac,#09,#d0,#ac,#0f
	db #c2,#64,#80,#02,#d6,#6f,#ce,#6f
	db #d8,#73,#d0,#75,#d6,#79,#d0,#6f
	db #dc,#6f,#d0,#73,#d0,#75,#d0,#73
	db #d6,#67,#d0,#6f,#dc,#6b,#c2,#6e
	db #80,#02,#d6,#7d,#ce,#7d,#d8,#81
	db #d0,#83,#d6,#81,#d0,#7d,#dc,#75
	db #d0,#79,#d0,#7d,#d0,#79,#d6,#6f
	db #d0,#75,#dc,#73,#c2,#26,#81,#03
	db #d4,#c4,#01,#c4,#02,#c4,#03,#c4
	db #04,#b4,#83,#01,#d0,#b4,#09,#d0
	db #b4,#0f,#d0,#30,#81,#03,#d4,#c4
	db #01,#c4,#02,#c4,#03,#c4,#04,#b4
	db #83,#01,#d0,#b4,#09,#d0,#b4,#0f
	db #d0,#22,#81,#03,#d4,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#b4,#83,#01
	db #d0,#b4,#09,#d0,#b4,#0f,#d0,#1e
	db #81,#03,#d4,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#be,#83,#01,#d0,#be
	db #09,#d0,#be,#0f,#c2,#56,#80,#02
	db #d6,#65,#d0,#6f,#d6,#65,#d0,#61
	db #d6,#61,#d0,#6f,#d6,#67,#d0,#65
	db #d6,#6b,#d0,#6f,#d6,#6f,#d0,#6b
	db #d6,#65,#d6,#61,#c2,#64,#80,#02
	db #d6,#6f,#d0,#75,#d6,#6f,#d0,#67
	db #d6,#73,#d0,#75,#d6,#73,#d0,#6b
	db #d6,#73,#d0,#75,#d6,#79,#d0,#7f
	db #d0,#7d,#d0,#75,#d0,#6b,#d0,#73
	db #d0,#75,#c2,#26,#81,#03,#d2,#c4
	db #01,#c4,#02,#c4,#03,#c4,#04,#c4
	db #05,#b4,#83,#01,#d0,#b4,#09,#d0
	db #b4,#0f,#d0,#30,#81,#03,#d2,#c4
	db #01,#c4,#02,#c4,#03,#c4,#04,#c4
	db #05,#b4,#83,#01,#d0,#b4,#09,#d0
	db #b4,#0f,#d0,#34,#83,#03,#d2,#c4
	db #01,#c4,#02,#c4,#03,#c4,#04,#c4
	db #05,#b4,#83,#01,#d0,#b4,#09,#d0
	db #b4,#0f,#d0,#36,#81,#03,#d2,#c4
	db #01,#c4,#02,#c4,#03,#c4,#04,#c4
	db #05,#be,#83,#01,#d0,#be,#09,#d0
	db #be,#0f,#c2,#26,#81,#03,#d0,#35
	db #d0,#3f,#e2,#2c,#01,#d0,#31,#d0
	db #23,#e2,#1e,#01,#d0,#2d,#d0,#37
	db #e2,#1e,#01,#d0,#2d,#d0,#37,#d0
	db #be,#83,#01,#d0,#be,#09,#d0,#be
	db #0f,#c2,#48,#95,#04,#c4,#09,#c4
	db #08,#c4,#07,#c4,#06,#c4,#05,#c4
	db #04,#c4,#03,#c4,#02,#c4,#01,#c4
	db #00,#c4,#01,#c4,#02,#c4,#03,#c4
	db #04,#c4,#05,#c4,#06,#c4,#07,#52
	db #91,#05,#c4,#07,#c4,#06,#c4,#05
	db #c4,#04,#c4,#03,#c4,#02,#c4,#01
	db #c4,#00,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#c4,#06,#c4,#07
	db #c4,#08,#c4,#09,#56,#91,#06,#c4
	db #07,#c4,#06,#c4,#05,#c4,#04,#c4
	db #03,#c4,#02,#c4,#01,#c4,#00,#c4
	db #01,#c4,#02,#c4,#03,#c4,#04,#c4
	db #05,#c4,#06,#c4,#07,#c4,#08,#c4
	db #09,#5a,#91,#07,#c4,#07,#c4,#06
	db #c4,#05,#c4,#04,#c4,#03,#c4,#02
	db #c4,#01,#c4,#00,#c4,#01,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#c4,#06
	db #c4,#07,#c4,#08,#c4,#09,#86,#80
	db #02,#ee,#83,#ee,#7f,#ee,#8d,#c2
	db #90,#80,#02,#ee,#8d,#ee,#83,#ee
	db #87,#de,#c4,#01,#ce,#c4,#02,#ce
	db #c4,#03,#ce,#c4,#04,#c2,#48,#95
	db #04,#c4,#09,#c4,#08,#c4,#07,#c4
	db #06,#c4,#05,#c4,#04,#c4,#03,#c4
	db #02,#c4,#01,#c4,#00,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#c4
	db #06,#c4,#07,#52,#91,#05,#c4,#07
	db #c4,#06,#c4,#05,#c4,#04,#c4,#03
	db #c4,#02,#c4,#01,#c4,#00,#c4,#01
	db #c4,#02,#c4,#03,#c4,#04,#c4,#05
	db #c4,#06,#c4,#07,#c4,#08,#c4,#09
	db #56,#91,#06,#c4,#07,#c4,#06,#c4
	db #05,#c4,#04,#c4,#03,#c4,#02,#c4
	db #01,#c4,#00,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#c4,#06,#c4
	db #07,#c4,#08,#c4,#09,#5a,#91,#08
	db #c4,#07,#c4,#06,#c4,#05,#c4,#04
	db #c4,#03,#c4,#02,#c4,#01,#c4,#00
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #c4,#05,#c4,#06,#c4,#07,#c4,#08
	db #c4,#09,#74,#85,#09,#73,#6f,#73
	db #6f,#6b,#6f,#6b,#67,#6b,#67,#65
	db #67,#65,#61,#65,#61,#5d,#61,#5d
	db #5b,#5d,#5b,#57,#5b,#57,#53,#57
	db #53,#4f,#53,#4f,#4d,#4f,#4d,#49
	db #4d,#4f,#53,#4f,#53,#57,#53,#57
	db #5b,#57,#5b,#5d,#5b,#5d,#61,#5d
	db #61,#65,#61,#65,#67,#65,#67,#6b
	db #67,#6b,#6f,#6b,#6f,#73,#6f,#73
	db #75,#73,#75,#79,#6e,#81,#02,#d6
	db #7d,#ce,#7d,#d8,#79,#d0,#75,#d6
	db #73,#ce,#79,#75,#dc,#73,#ce,#79
	db #75,#d0,#79,#d0,#75,#d6,#73,#d0
	db #6f,#d0,#73,#ce,#6f,#6b,#c2,#26
	db #81,#03,#d0,#35,#d0,#3f,#e2,#2c
	db #01,#d0,#3b,#d0,#45,#e2,#1e,#01
	db #d0,#2d,#d0,#37,#e2,#3a,#01,#d0
	db #49,#d0,#53,#d6,#be,#87,#01,#d0
	db #be,#0b,#c2,#48,#95,#04,#c4,#09
	db #c4,#08,#c4,#07,#c4,#06,#c4,#05
	db #c4,#04,#c4,#03,#c4,#02,#c4,#01
	db #c4,#00,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#c4,#06,#c4,#07
	db #52,#91,#05,#c4,#07,#c4,#06,#c4
	db #05,#c4,#04,#c4,#03,#c4,#02,#c4
	db #01,#c4,#00,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#c4,#06,#c4
	db #07,#c4,#08,#c4,#09,#4e,#11,#c4
	db #07,#c4,#06,#c4,#05,#c4,#04,#c4
	db #03,#c4,#02,#c4,#01,#c4,#00,#c4
	db #01,#c4,#02,#c4,#03,#c4,#04,#c4
	db #05,#c4,#06,#c4,#07,#c4,#08,#c4
	db #09,#52,#91,#06,#c4,#07,#c4,#06
	db #c4,#05,#c4,#04,#c4,#03,#c4,#02
	db #c4,#01,#c4,#00,#c4,#01,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#c4,#06
	db #c4,#07,#c4,#08,#c4,#09,#6e,#80
	db #02,#d6,#7d,#ce,#7d,#d8,#81,#7d
	db #81,#83,#d6,#81,#d0,#7d,#dc,#75
	db #d0,#79,#d0,#7d,#d0,#79,#d6,#6f
	db #d0,#75,#d0,#79,#75,#ce,#73,#d0
	db #75,#d0,#73,#d0,#6b,#ce,#65,#64
	db #85,#09,#d0,#6f,#d0,#75,#d0,#65
	db #d0,#79,#d0,#75,#d0,#61,#d0,#6b
	db #d0,#73,#d0,#61,#d0,#75,#d0,#73
	db #d0,#5d,#d0,#67,#d0,#6f,#d0,#5d
	db #d0,#6f,#d0,#67,#d0,#5b,#d0,#61
	db #d0,#6b,#d0,#61,#d0,#6b,#d0,#73
	db #c2,#86,#80,#02,#e2,#8b,#d0,#87
	db #ce,#8b,#8d,#dc,#91,#d6,#95,#8d
	db #91,#8d,#dc,#9f,#d8,#95,#97,#9b
	db #d6,#95,#97,#ce,#95,#d2,#9b,#c2
	db #94,#80,#02,#dc,#a5,#d0,#a3,#d0
	db #9b,#d0,#95,#d6,#91,#9b,#ce,#9f
	db #d6,#9b,#d0,#9f,#e2,#9b,#ce,#95
	db #91,#d0,#8b,#d6,#8d,#91,#ce,#8d
	db #d0,#8b,#d0,#83,#c2,#64,#83,#09
	db #d0,#6f,#d0,#75,#d0,#65,#d0,#79
	db #d0,#75,#d0,#61,#d0,#6b,#d0,#73
	db #d0,#61,#d0,#75,#d0,#73,#d0,#5d
	db #d0,#67,#d0,#6f,#d0,#5d,#d0,#6f
	db #d0,#67,#d0,#5b,#d0,#61,#d0,#6b
	db #d0,#5b,#d0,#65,#d0,#6b,#c2,#6e
	db #80,#02,#dc,#75,#d0,#73,#6f,#73
	db #6b,#d0,#6f,#ee,#7d,#e2,#79,#d2
	db #79,#7d,#73,#d6,#6b,#6f,#ce,#73
	db #d0,#75,#d0,#73,#ce,#6b,#6e,#80
	db #02,#dc,#75,#d0,#73,#d0,#6b,#d0
	db #65,#dc,#61,#d6,#6b,#d0,#65,#dc
	db #5d,#d6,#65,#d0,#61,#e2,#73,#d0
	db #6b,#c2,#90,#9d,#0a,#ce,#c4,#0d
	db #ce,#c4,#0c,#ce,#c4,#0b,#ce,#c4
	db #0a,#ce,#c4,#09,#ce,#c4,#08,#ce
	db #c4,#07,#ce,#c4,#06,#ce,#c4,#05
	db #ce,#c4,#06,#ce,#c4,#07,#ce,#c4
	db #08,#ce,#c4,#09,#ce,#c4,#0a,#ce
	db #c4,#0b,#ce,#c4,#0c,#da,#c4,#0b
	db #ce,#c4,#0a,#ce,#c4,#09,#ce,#c4
	db #08,#ce,#c4,#07,#ce,#c4,#06,#ce
	db #c4,#05,#ce,#c4,#04,#ce,#c4,#03
	db #ce,#c4,#05,#ce,#c4,#06,#ce,#c4
	db #07,#ce,#c4,#08,#ce,#c4,#09,#ce
	db #c4,#0a,#ce,#c4,#0b,#c2,#86,#89
	db #02,#d6,#c4,#04,#d0,#c4,#05,#d0
	db #c4,#06,#d2,#c4,#07,#d6,#86,#8f
	db #09,#d0,#86,#11,#d0,#86,#13,#d0
	db #86,#15,#d0,#86,#17,#c2,#de,#b4
	db #87,#01,#d0,#b4,#0d,#d0,#b4,#11
	db #e2,#b4,#07,#c6,#01,#ce,#b4,#0d
	db #c6,#01,#ce,#b4,#11,#c6,#01,#e0
	db #b4,#07,#c6,#ff,#ce,#b4,#0d,#c6
	db #ff,#ce,#b4,#11,#c6,#ff,#c2,#ca
	db #c2,#de,#b4,#87,#01,#d0,#b4,#0d
	db #d0,#b4,#11,#e2,#b4,#0b,#c6,#01
	db #ce,#b4,#11,#c6,#01,#ce,#b4,#17
	db #c6,#01,#e0,#b4,#0f,#c6,#ff,#ce
	db #b4,#15,#c6,#ff,#ce,#b4,#17,#c6
	db #ff,#c2,#ff,#00
;
; #9000 - player reallocated by Megachur
;
.l9000
	jp l900a		; init music and init music interrupt
	jp l902e		; stop music interrupt
.l9009 equ $ + 3
.l9008 equ $ + 2
	dw l9000
	db #00,#00
.l900a
	call l98de
	ld hl,l9054
.l9011 equ $ + 1
	ld a,#00
.l9012
	cp (hl)
	jr z,l9019
	inc hl
	inc hl
	jr l9012
.l9019
	inc hl
	ld a,(hl)
	ld (l904d),a
	xor a
	ld (l9043),a
	ld hl,l9037
	ld bc,#8100
	ld de,l9041
	jp #bce0
.l902e
	ld hl,l9037
	call #bce6
	jp l98b9
.l9037
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l9041
	di
.l9043 equ $ + 1
	ld a,#00
	sub #01
	jr c,l904c
	ld (l9043),a
	ret
.l904d equ $ + 1
.l904c
	ld a,#00
	ld (l9043),a
	jp l9060
.l9054
	dec c
	ld de,#0b19
	ld (#6405),a
	ld (bc),a
	sub (hl)
	ld bc,#002c
;
.play_music
.l9060
;
	xor a
	ld (l9008),a
	ld (l9897),a
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
.l9071 equ $ + 1
	ld a,#00
.l9073 equ $ + 1
	cp #00
	jr z,l907d
	inc a
	ld (l9071),a
	jp l930c
.l907d
	xor a
	ld (l9071),a
.l9081
	or a
	jp nc,l9163
	ld (l918b),a
	ld (l91f6),a
	ld (l9261),a
	ld a,#b7
	ld (l9081),a
.l9094 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l90ca
.l909a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l90c7
	ld b,a
	and #1f
	bit 4,a
	jr z,l90ab
	or #e0
.l90ab
	ld (l9198),a
	rl b
	rl b
	jr nc,l90b9
	ld a,(hl)
	ld (l9203),a
	inc hl
.l90b9
	rl b
	jr nc,l90c2
	ld a,(hl)
	ld (l926e),a
	inc hl
.l90c2
	ld (l909a),hl
	jr l90cd
.l90c7
	ld (l909a),hl
.l90ca
	ld (l9094),a
.l90ce equ $ + 1
.l90cd
	ld a,#00
	sub #01
	jr c,l90da
	ld (l90ce),a
.l90d7 equ $ + 1
	ld a,#00
	jr l90f5
.l90db equ $ + 1
.l90da
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l90e8
	ld (l90db),hl
	jr l90f5
.l90e8
	ld (l90d7),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l90db),hl
	ld (l90ce),a
	ld a,b
.l90f5
	ld (l92cc),a
.l90f9 equ $ + 1
	ld hl,#0000
	ld de,l9191
	ldi
	ldi
	ld de,l91fc
	ldi
	ldi
	ld de,l9267
	ldi
	ldi
	ld (l90f9),hl
.l9114 equ $ + 1
	ld a,#00
	or a
	jr nz,l9126
.l9119 equ $ + 1
	ld a,#00
	sub #01
	jr c,l9134
	ld (l9119),a
.l9122 equ $ + 1
	ld hl,#0000
	jr l916c
.l9127 equ $ + 1
.l9126
	ld a,#00
	sub #01
	jr c,l9134
	ld (l9127),a
	ld hl,(l9135)
	jr l9159
.l9135 equ $ + 1
.l9134
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l9151
	ld (l9119),a
	xor a
	ld (l9114),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l9135),hl
	ex de,hl
	ld (l9122),hl
	jr l916c
.l9151
	ld (l9127),a
	ld a,#01
	ld (l9114),a
.l9159
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l9135),hl
	ex de,hl
	jr l916c
.l9164 equ $ + 1
.l9163
	ld a,#00
	sub #01
	jr nc,l9187
.l916a equ $ + 1
	ld hl,#0000
.l916c
	ld a,(hl)
	inc hl
	srl a
	jr c,l9184
	srl a
	jr c,l917b
	ld (l9073),a
	jr l9183
.l917b
	ld (l9008),a
.l917f equ $ + 1
	ld a,#01
	ld (l9009),a
.l9183
	xor a
.l9184
	ld (l916a),hl
.l9187
	ld (l9164),a
.l918b equ $ + 1
	ld a,#00
	sub #01
	jr nc,l91f2
.l9191 equ $ + 1
	ld hl,#0000
.l9194 equ $ + 1
	ld bc,#0100
.l9198 equ $ + 2
.l9197 equ $ + 1
	ld de,#0000
.l919b equ $ + 2
	ld lx,#00
	call l9409
	ld a,lx
	ld (l919b),a
	ld (l9316),hl
	exx
	ld (l9191),hl
	ld a,c
	ld (l9194),a
	ld (l9310),a
	xor a
	or hy
	jr nz,l91f0
	ld (l9333),a
	ld d,a
	ld a,e
	ld (l9197),a
	ld l,d
	ld h,l
	ld (l9313),hl
.l91c5 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l9344
	ldi
	ldi
	ld de,l933c
	ldi
	ldi
	ld de,l9335
	ldi
	ld de,l9346
	ldi
	ld a,(hl)
	inc hl
	ld (l9325),hl
	ld hl,l9897
	or (hl)
	ld (hl),a
.l91f0
	ld a,ly
.l91f2
	ld (l918b),a
.l91f6 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l925d
.l91fc equ $ + 1
	ld hl,#0000
.l91ff equ $ + 1
	ld bc,#0200
.l9203 equ $ + 2
.l9202 equ $ + 1
	ld de,#0000
.l9206 equ $ + 2
	ld lx,#00
	call l9409
	ld a,lx
	ld (l9206),a
	ld (l9367),hl
	exx
	ld (l91fc),hl
	ld a,c
	ld (l91ff),a
	ld (l9361),a
	xor a
	or hy
	jr nz,l925b
	ld (l9384),a
	ld d,a
	ld a,e
	ld (l9202),a
	ld l,d
	ld h,l
	ld (l9364),hl
.l9230 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l9395
	ldi
	ldi
	ld de,l938d
	ldi
	ldi
	ld de,l9386
	ldi
	ld de,l9397
	ldi
	ld a,(hl)
	inc hl
	ld (l9376),hl
	ld hl,l9897
	or (hl)
	ld (hl),a
.l925b
	ld a,ly
.l925d
	ld (l91f6),a
.l9261 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l92c8
.l9267 equ $ + 1
	ld hl,#0000
.l926a equ $ + 1
	ld bc,#0300
.l926e equ $ + 2
.l926d equ $ + 1
	ld de,#0000
.l9271 equ $ + 2
	ld lx,#00
	call l9409
	ld a,lx
	ld (l9271),a
	ld (l93b8),hl
	exx
	ld (l9267),hl
	ld a,c
	ld (l926a),a
	ld (l93b2),a
	xor a
	or hy
	jr nz,l92c6
	ld (l93d5),a
	ld d,a
	ld a,e
	ld (l926d),a
	ld l,d
	ld h,l
	ld (l93b5),hl
.l929b equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l93e6
	ldi
	ldi
	ld de,l93de
	ldi
	ldi
	ld de,l93d7
	ldi
	ld de,l93e8
	ldi
	ld a,(hl)
	inc hl
	ld (l93c7),hl
	ld hl,l9897
	or (hl)
	ld (hl),a
.l92c6
	ld a,ly
.l92c8
	ld (l9261),a
.l92cc equ $ + 1
	ld a,#00
	sub #01
	jr c,l92d6
	ld (l92cc),a
	jr l930c
.l92d6
	ld a,#37
	ld (l9081),a
	ld hl,(l90f9)
.l92df equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l930c
	ld (l9094),a
	ld (l90ce),a
	ld (l9164),a
.l92f0 equ $ + 1
	ld hl,#0000
	ld (l909a),hl
.l92f6 equ $ + 1
	ld hl,#0000
	ld (l90db),hl
.l92fc equ $ + 1
	ld hl,#0000
	ld (l90f9),hl
.l9302 equ $ + 1
	ld hl,#0000
	ld (l9135),hl
.l9308 equ $ + 1
	ld a,#00
	ld (l9114),a
.l930c
	ld hl,l9897
.l9310 equ $ + 1
	ld d,#00
	exx
.l9313 equ $ + 1
	ld hl,#0000
.l9316 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9313),hl
	ld (l9544),hl
	ld a,(l919b)
	ld lx,a
.l9325 equ $ + 1
	ld hl,#0000
	ld iy,l9732
	ld a,(l9333)
	call l949e
	ex de,hl
.l9333 equ $ + 1
	ld a,#00
.l9335 equ $ + 1
	cp #00
	jr z,l933b
	inc a
	jr l9358
.l933c equ $ + 1
.l933b
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l9354
.l9344 equ $ + 1
	ld de,#0000
.l9346
	or a
	jr c,l9354
.l934a equ $ + 1
	ld hl,#0000
	ld (l933c),hl
	dec a
	ld (l9335),a
	inc a
.l9354
	ld (l9325),de
.l9358
	ld (l9333),a
	ld a,hx
	ld (l9405),a
.l9361 equ $ + 1
	ld d,#00
	exx
.l9364 equ $ + 1
	ld hl,#0000
.l9367 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9364),hl
	ld (l9544),hl
	ld a,(l9206)
	ld lx,a
.l9376 equ $ + 1
	ld hl,#0000
	ld iy,l9783
	ld a,(l9384)
	call l949e
	ex de,hl
.l9384 equ $ + 1
	ld a,#00
.l9386 equ $ + 1
	cp #00
	jr z,l938c
	inc a
	jr l93a9
.l938d equ $ + 1
.l938c
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l93a5
.l9395 equ $ + 1
	ld de,#0000
.l9397
	or a
	jr c,l93a5
.l939b equ $ + 1
	ld hl,#0000
	ld (l938d),hl
	dec a
	ld (l9386),a
	inc a
.l93a5
	ld (l9376),de
.l93a9
	ld (l9384),a
	ld a,hx
	ld (l9402),a
.l93b2 equ $ + 1
	ld d,#00
	exx
.l93b5 equ $ + 1
	ld hl,#0000
.l93b8 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l93b5),hl
	ld (l9544),hl
	ld a,(l9271)
	ld lx,a
.l93c7 equ $ + 1
	ld hl,#0000
	ld iy,l97d4
	ld a,(l93d5)
	call l949e
	ex de,hl
.l93d5 equ $ + 1
	ld a,#00
.l93d7 equ $ + 1
	cp #00
	jr z,l93dd
	inc a
	jr l93fa
.l93de equ $ + 1
.l93dd
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l93f6
.l93e6 equ $ + 1
	ld de,#0000
.l93e8
	or a
	jr c,l93f6
.l93ec equ $ + 1
	ld hl,#0000
	ld (l93de),hl
	dec a
	ld (l93d7),a
	inc a
.l93f6
	ld (l93c7),de
.l93fa
	ld (l93d5),a
	ld a,hx
	sla a
.l9402 equ $ + 1
	or #00
	rla
.l9405 equ $ + 1
	or #00
	jp l9727
.l9409
	ld a,(hl)
	inc hl
	srl a
	jr c,l9442
	cp #60
	jr nc,l944a
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l9422
	and #0f
	ld c,a
.l9422
	rl b
	jr nc,l9428
	ld e,(hl)
	inc hl
.l9428
	rl b
	jr nc,l943a
.l942c
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l9436
	dec h
.l9436
	ld ly,#00
	ret
.l943a
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l9442
	ld hy,#00
	add d
	ld lx,a
	jr l943a
.l944a
	ld hy,#01
	sub #60
	jr z,l946b
	dec a
	jr z,l9482
	dec a
	jr z,l9474
	dec a
	jr z,l942c
	dec a
	jr z,l947e
	dec a
	jr z,l9493
	dec a
	jr z,l948a
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l946b
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l9474
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l947e
	ld c,(hl)
	inc hl
	jr l942c
.l9482
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l948a
	ld a,(hl)
	inc hl
	ld (l9008),a
	ld a,b
	ld (l9009),a
.l9493
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l949e
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l9554
	bit 4,e
	jr z,l9506
	ld a,(hl)
	bit 6,a
	jr z,l94d3
	ld d,#08
	inc hl
	and #1f
	jr z,l94ba
	ld (l9825),a
	res 3,d
.l94ba
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l94c3
	xor a
.l94c3
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l94d3
	ld (l9825),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l94ef
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l94e8
	xor a
.l94e8
	ld (iy+#36),a
	ld hx,d
	jr l9519
.l94ef
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l94f8
	xor a
.l94f8
	ld (iy+#36),a
.l94fb
	ld hx,d
	ret
.l94fe
	ld (iy+#36),#00
	ld d,#09
	jr l94fb
.l9506
	ld d,#08
	ld a,e
	and #0f
	jr z,l94fe
	exx
	sub d
	exx
	jr nc,l9513
	xor a
.l9513
	ld (iy+#36),a
	ld hx,#08
.l9519
	bit 5,e
	jr z,l9521
	ld a,(hl)
	inc hl
	jr l9522
.l9521
	xor a
.l9522
	bit 6,e
	jr z,l952c
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l952f
.l952c
	ld de,#0000
.l952f
	add lx
	cp #60
	jr c,l9537
	ld a,#60
.l9537
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l9667
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l9544 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l9554
	or a
	jr nz,l955e
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l955e
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
	ld (l9890),a
	bit 3,e
	jr z,l9580
	ld a,(hl)
	inc hl
	ld (l9825),a
	res 3,d
	jr l9580
.l9580
	ld hx,d
	xor a
	bit 7,b
	jr z,l9592
	bit 6,b
	jr z,l958d
	ld a,(hl)
	inc hl
.l958d
	ld (l9641),a
	ld a,#01
.l9592
	ld (l95da),a
	ld a,b
	rra
	and #0e
	ld (l95eb),a
	bit 4,e
	jp nz,l964c
	bit 1,e
	jr z,l95a9
	ld a,(hl)
	inc hl
	jr l95aa
.l95a9
	xor a
.l95aa
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l95b7
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l95ba
.l95b7
	ld de,#0000
.l95ba
	add lx
	cp #60
	jr c,l95c2
	ld a,#60
.l95c2
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l9667
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l9544)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l95da equ $ + 1
	ld a,#00
	or a
	jr nz,l95ea
	ex af,af'
	bit 5,a
	jr nz,l9655
.l95e3
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l95eb equ $ + 1
.l95ea
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l95f5),a
	ld a,c
.l95f5 equ $ + 1
	jr l95f6
.l95f6
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
	jr nc,l960f
	inc bc
.l960f
	ld a,c
	ld (l985a),a
	ld a,b
	ld (l9875),a
	ld a,(l95da)
	or a
	jr z,l964a
	ld a,(l95eb)
	ld e,a
	srl a
	add e
	ld (l9629),a
	ld a,b
.l9629 equ $ + 1
	jr l962a
.l962a
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
.l9641 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l964a
	pop hl
	ret
.l964c
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l95e3
.l9655
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l985a),a
	inc hl
	ld a,(hl)
	ld (l9875),a
	inc hl
	ret
.l9667
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
.l9727
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l9732 equ $ + 1
	ld a,#00
.l9734 equ $ + 1
	cp #00
	jr z,l974c
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
	ld (l9734),a
	exx
.l974d equ $ + 1
.l974c
	ld a,#00
.l974f equ $ + 1
	cp #00
	jr z,l9767
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
	ld (l974f),a
	exx
.l9768 equ $ + 1
.l9767
	ld a,#00
.l976a equ $ + 1
	cp #00
	jr z,l9782
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
	ld (l976a),a
	exx
.l9783 equ $ + 1
.l9782
	ld a,#00
.l9785 equ $ + 1
	cp #00
	jr z,l979d
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
	ld (l9785),a
	exx
.l979e equ $ + 1
.l979d
	ld a,#00
.l97a0 equ $ + 1
	cp #00
	jr z,l97b8
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
	ld (l97a0),a
	exx
.l97b9 equ $ + 1
.l97b8
	ld a,#00
.l97bb equ $ + 1
	cp #00
	jr z,l97d3
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
	ld (l97bb),a
	exx
.l97d4 equ $ + 1
.l97d3
	ld a,#00
.l97d6 equ $ + 1
	cp #00
	jr z,l97ee
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
	ld (l97d6),a
	exx
.l97ef equ $ + 1
.l97ee
	ld a,#00
.l97f1 equ $ + 1
	cp #00
	jr z,l9809
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
	ld (l97f1),a
	exx
.l980a equ $ + 1
.l9809
	ld a,#00
.l980c equ $ + 1
	cp #00
	jr z,l9824
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
	ld (l980c),a
	exx
.l9825 equ $ + 1
.l9824
	ld a,#00
.l9827 equ $ + 1
	cp #00
	jr z,l983f
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
	ld (l9827),a
	exx
.l983f
	ld a,h
.l9841 equ $ + 1
	cp #c0
	jr z,l9859
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
	ld (l9841),a
	exx
.l985a equ $ + 1
.l9859
	ld a,#00
.l985c equ $ + 1
	cp #00
	jr z,l9874
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
	ld (l985c),a
	exx
.l9875 equ $ + 1
.l9874
	ld a,#00
.l9877 equ $ + 1
	cp #00
	jr z,l988f
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
	ld (l9877),a
	exx
.l9890 equ $ + 1
.l988f
	ld a,#00
.l9892 equ $ + 1
	cp #ff
	jr nz,l989c
	ld h,a
.l9897 equ $ + 1
	ld a,#00
	or a
	jr z,l98b0
	ld a,h
.l989c
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
	ld (l9892),a
.l98b0
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
;
.stop_music
.l98b9
;
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l9768),a
	ld (l97b9),a
	ld (l980a),a
	dec a
	ld (l976a),a
	ld (l97bb),a
	ld (l980c),a
	ld (l9841),a
	ld a,#3f
	jp l9727
;
.real_init_music
.l98de
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l917f),a
	inc hl
	ld a,(hl)
	ld (l9011),a
	inc hl
	inc hl
	ld de,l90db
	ldi
	ldi
	ld de,l90f9
	ldi
	ldi
	ld de,l9135
	ldi
	ldi
	ld de,l91c5
	ldi
	ldi
	ld de,l92f0
	ldi
	ldi
	ld de,l92f6
	ldi
	ldi
	ld de,l92fc
	ldi
	ldi
	ld de,l9302
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l9073),a
	ld (l9071),a
	ld (l909a),hl
	ld hl,(l9135)
	ld (l92df),hl
	ld a,(hl)
	and #01
	ld (l9114),a
	ld hl,(l9302)
	ld a,(hl)
	and #01
	ld (l9308),a
	ld hl,(l91c5)
	ld (l9230),hl
	ld (l929b),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l9325),hl
	ld (l9376),hl
	ld (l93c7),hl
	ld (l9344),hl
	ld (l9395),hl
	ld (l93e6),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l934a),de
	ld (l939b),de
	ld (l93ec),de
	ld (l933c),de
	ld (l938d),de
	ld (l93de),de
	ld a,#37
	ld (l9081),a
	ld hl,l999d
.l998d
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l9994
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l9994
	jr l998d
.l999d
	jr l999f
.l999f
	dw l9732,l974d,l9783,l979e
	dw l97d4,l97ef,l9825,l9768
	dw l97b9,l980a,l985a,l9875
	dw l9890,l9094,l90ce,l9119
	dw l9127,l9164,l9333,l9384
	dw l93d5,l9194,l91ff,l926a
	dw #ff11,l9734,l974f,l9785
	dw l97a0,l97d6,l97f1,l9827
	dw l9841,l976a,l97bb,l980c
	dw l985c,l9877,l9892,l9335
	dw l9386,l93d7,#b703,l9346
	dw l9397,l93e8,#0000
;
.init_music		; added by Megachur
;
	ld de,l7000
	jp real_init_music
;
.music_info
	db "Athanor 1 - L'Eveil - Intro (2014)(Safar Games)(Tom et Jerry)",0
	db "StArkos",0

	read "music_end.asm"
