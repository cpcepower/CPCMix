; Music of Athanor 1 - L'Eveil - End 2 (2014)(Safar Games)(Tom et Jerry)(StArkos)
; Ripped by Megachur the 11/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ATHANEE2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7000

	read "music_header.asm"

; #7000 - end 2
.l7000
	db #53,#4b,#31,#30,#00,#70,#01,#32
	db #00,#28,#70,#2d,#70,#b1,#70,#b4
	db #70,#1a,#70,#28,#70,#2d,#70,#b1
	db #70,#05,#c0,#00,#00,#11,#40,#0c
	db #40,#00,#07,#18,#00,#28,#00,#03
	db #7f,#09,#3e,#7f,#0a,#66,#71,#a8
	db #71,#aa,#71,#66,#71,#a8,#71,#b1
	db #71,#66,#71,#e3,#71,#b1,#71,#66
	db #71,#0b,#72,#b1,#71,#66,#71,#73
	db #72,#b1,#71,#66,#71,#b5,#72,#35
	db #73,#66,#71,#6b,#73,#b1,#71,#66
	db #71,#a9,#73,#35,#73,#b9,#73,#fb
	db #73,#05,#74,#37,#74,#79,#74,#83
	db #74,#a8,#71,#a8,#71,#b1,#71,#b5
	db #74,#f7,#74,#aa,#71,#b5,#74,#f7
	db #74,#37,#75,#b5,#74,#f7,#74,#4d
	db #75,#9c,#75,#de,#75,#1e,#76,#6d
	db #76,#af,#76,#4d,#75,#6d,#76,#af
	db #76,#4d,#75,#2f,#77,#af,#76,#4d
	db #75,#2f,#77,#9c,#75,#4d,#75,#71
	db #77,#8d,#77,#4d,#75,#8d,#77,#8f
	db #77,#4d,#75,#8d,#77,#9d,#77,#8d
	db #77,#2a,#c5,#77,#c4,#70,#ce,#70
	db #dd,#70,#f8,#70,#11,#71,#25,#71
	db #38,#71,#55,#71,#cb,#70,#ce,#70
	db #ff,#37,#00,#00,#00,#00,#d7,#70
	db #dd,#70,#00,#37,#00,#0c,#0c,#0b
	db #0b,#0a,#0a,#0a,#0a,#f5,#70,#f8
	db #70,#02,#37,#00,#6e,#0c,#01,#00
	db #0e,#2d,#0c,#0d,#2c,#0c,#0c,#2b
	db #0c,#0a,#29,#0c,#09,#28,#0c,#08
	db #cb,#70,#11,#71,#00,#b7,#00,#1f
	db #21,#5f,#21,#10,#00,#5e,#21,#20
	db #00,#5d,#21,#30,#00,#5c,#21,#50
	db #00,#20,#71,#25,#71,#04,#37,#00
	db #08,#09,#0a,#0b,#0c,#0d,#0e,#0d
	db #0c,#4b,#01,#00,#0a,#cb,#70,#38
	db #71,#01,#b7,#00,#0e,#28,#0c,#0c
	db #28,#0c,#0a,#28,#0c,#47,#01,#00
	db #cb,#70,#55,#71,#00,#b7,#00,#1f
	db #27,#5f,#27,#10,#00,#5f,#27,#20
	db #00,#5d,#27,#30,#00,#5d,#27,#50
	db #00,#1c,#27,#1c,#27,#cb,#70,#66
	db #71,#01,#b7,#00,#1f,#21,#0c,#0e
	db #0c,#0d,#0c,#4c,#01,#00,#48,#81
	db #01,#ce,#57,#ce,#61,#ce,#57,#ce
	db #65,#ce,#69,#ce,#61,#ce,#57,#ce
	db #49,#ce,#57,#ce,#61,#ce,#57,#ce
	db #65,#ce,#69,#ce,#61,#ce,#57,#ce
	db #53,#ce,#61,#ce,#6b,#ce,#53,#ce
	db #6f,#ce,#73,#ce,#6b,#ce,#61,#ce
	db #53,#ce,#61,#ce,#6b,#ce,#61,#ce
	db #6f,#ce,#73,#ce,#6b,#ce,#61,#c2
	db #ca,#c2,#30,#83,#02,#c0,#1e,#2b
	db #c2,#18,#80,#02,#d2,#48,#80,#03
	db #ce,#49,#ce,#30,#80,#02,#d6,#19
	db #d2,#19,#ce,#48,#80,#03,#ce,#30
	db #80,#02,#de,#23,#d2,#48,#80,#03
	db #ce,#49,#ce,#3a,#80,#02,#d6,#23
	db #d2,#48,#80,#03,#ce,#49,#ce,#3a
	db #80,#02,#c2,#78,#81,#04,#ce,#6f
	db #ce,#79,#ce,#7d,#d2,#81,#d2,#79
	db #d2,#6f,#ce,#79,#ce,#6f,#ce,#6b
	db #ce,#69,#ce,#6b,#ce,#6f,#ce,#79
	db #ce,#73,#ce,#79,#ce,#7d,#d2,#81
	db #d2,#73,#c2,#78,#83,#05,#ce,#6e
	db #03,#78,#07,#78,#03,#6e,#07,#7c
	db #03,#78,#07,#ce,#7c,#03,#80,#07
	db #d0,#80,#03,#78,#07,#d0,#78,#03
	db #6e,#07,#ce,#78,#03,#6e,#07,#6e
	db #03,#78,#07,#6a,#03,#6e,#07,#68
	db #03,#6a,#07,#6a,#03,#68,#07,#6e
	db #03,#6a,#07,#78,#03,#6e,#07,#72
	db #03,#78,#07,#78,#03,#72,#07,#7c
	db #03,#78,#07,#ce,#7c,#03,#80,#07
	db #d2,#86,#03,#72,#07,#d0,#86,#07
	db #ce,#86,#09,#ce,#86,#0b,#ce,#86
	db #0d,#ce,#86,#0f,#ce,#86,#11,#ce
	db #86,#13,#c2,#90,#81,#04,#ce,#8f
	db #ce,#87,#ce,#83,#ce,#87,#ce,#83
	db #ce,#81,#ce,#79,#ce,#87,#ce,#91
	db #ce,#95,#ce,#99,#ce,#95,#ce,#91
	db #ce,#87,#ce,#91,#ce,#a9,#ce,#a7
	db #ce,#9f,#ce,#9b,#ce,#9f,#ce,#9b
	db #ce,#99,#ce,#91,#ce,#87,#ce,#8b
	db #ce,#91,#ce,#95,#ce,#91,#ce,#87
	db #ce,#8b,#ce,#81,#c2,#90,#83,#05
	db #ce,#8e,#03,#90,#07,#86,#03,#8e
	db #07,#82,#03,#86,#07,#86,#03,#82
	db #07,#82,#03,#86,#07,#80,#03,#82
	db #07,#78,#03,#80,#07,#86,#03,#78
	db #07,#90,#03,#86,#07,#94,#03,#90
	db #07,#98,#03,#94,#07,#94,#03,#98
	db #07,#90,#03,#94,#07,#86,#03,#90
	db #07,#90,#03,#86,#07,#a8,#03,#90
	db #07,#a6,#03,#a8,#07,#9e,#03,#a6
	db #07,#9a,#03,#9e,#07,#9e,#03,#9a
	db #07,#9a,#03,#9e,#07,#98,#03,#9a
	db #07,#90,#03,#98,#07,#86,#03,#90
	db #07,#8a,#03,#86,#07,#90,#03,#8a
	db #07,#94,#03,#90,#07,#90,#03,#94
	db #07,#86,#03,#90,#07,#8a,#03,#86
	db #07,#80,#03,#8a,#07,#18,#80,#02
	db #d2,#48,#80,#03,#ce,#49,#ce,#30
	db #80,#02,#d6,#19,#d2,#48,#80,#03
	db #ce,#49,#ce,#30,#80,#02,#d6,#31
	db #d2,#23,#d2,#48,#80,#03,#ce,#49
	db #ce,#3a,#80,#02,#d6,#23,#d2,#48
	db #80,#03,#ce,#49,#ce,#52,#80,#02
	db #d6,#3b,#c2,#80,#87,#02,#ce,#79
	db #ce,#6f,#ce,#77,#ce,#79,#d2,#81
	db #ce,#7d,#ce,#81,#ce,#79,#ce,#6f
	db #ce,#77,#ce,#79,#d2,#81,#ce,#7d
	db #ce,#81,#ce,#79,#ce,#73,#ce,#77
	db #ce,#79,#ce,#73,#ce,#81,#ce,#7d
	db #ce,#81,#ce,#79,#ce,#73,#ce,#77
	db #ce,#79,#ce,#77,#ce,#73,#ce,#6f
	db #c2,#6e,#80,#02,#e2,#6b,#ce,#69
	db #de,#65,#ce,#69,#ce,#65,#d2,#61
	db #c2,#5a,#80,#05,#ce,#69,#ce,#73
	db #ce,#5b,#ce,#77,#ce,#79,#ce,#73
	db #ce,#6f,#ce,#57,#ce,#65,#ce,#6f
	db #ce,#57,#ce,#73,#ce,#77,#ce,#6f
	db #ce,#65,#ce,#53,#ce,#61,#ce,#6b
	db #ce,#53,#ce,#6f,#ce,#73,#ce,#6b
	db #ce,#61,#ce,#53,#ce,#61,#ce,#6b
	db #ce,#53,#ce,#6f,#ce,#73,#ce,#6b
	db #ce,#61,#c2,#78,#83,#02,#e6,#87
	db #ea,#61,#ea,#73,#c2,#2a,#80,#02
	db #d2,#48,#80,#03,#ce,#49,#ce,#42
	db #80,#02,#d6,#27,#d2,#48,#80,#03
	db #ce,#49,#ce,#3e,#80,#02,#de,#23
	db #d2,#48,#80,#03,#ce,#49,#ce,#3a
	db #80,#02,#d6,#23,#d2,#48,#80,#03
	db #ce,#49,#ce,#3a,#80,#02,#c2,#5a
	db #80,#05,#ce,#69,#ce,#73,#ce,#5b
	db #ce,#77,#ce,#79,#ce,#73,#ce,#6f
	db #ce,#57,#ce,#65,#ce,#6f,#ce,#57
	db #ce,#73,#ce,#77,#ce,#6f,#ce,#6b
	db #ce,#53,#ce,#5b,#ce,#61,#ce,#53
	db #ce,#6f,#ce,#73,#ce,#6b,#ce,#69
	db #ce,#57,#ce,#65,#ce,#6f,#ce,#57
	db #ce,#73,#ce,#77,#ce,#79,#ce,#77
	db #c2,#6e,#80,#02,#e6,#61,#ee,#6b
	db #e6,#6f,#c2,#2a,#80,#02,#d2,#48
	db #80,#03,#ce,#49,#ce,#42,#80,#02
	db #d6,#27,#d2,#48,#80,#03,#ce,#49
	db #ce,#3e,#80,#02,#de,#35,#d2,#48
	db #80,#03,#ce,#49,#ce,#4c,#80,#02
	db #d6,#39,#d2,#48,#80,#03,#ce,#49
	db #ce,#38,#80,#02,#c2,#60,#80,#05
	db #ce,#6f,#ce,#61,#ce,#6f,#ce,#6b
	db #ce,#79,#ce,#6b,#ce,#79,#ce,#6f
	db #ce,#7d,#ce,#6f,#ce,#7d,#ce,#73
	db #ce,#81,#ce,#73,#ce,#81,#ce,#69
	db #ce,#79,#ce,#69,#ce,#79,#ce,#65
	db #ce,#77,#ce,#65,#ce,#77,#ce,#61
	db #ce,#73,#ce,#61,#ce,#73,#ce,#5f
	db #ce,#6f,#ce,#5f,#ce,#6f,#c2,#d2
	db #60,#80,#05,#ce,#6f,#ce,#61,#ce
	db #6f,#ce,#6b,#ce,#79,#ce,#6b,#ce
	db #79,#ce,#6f,#ce,#7d,#ce,#6f,#ce
	db #7d,#ce,#73,#ce,#81,#ce,#73,#ce
	db #81,#ce,#69,#ce,#79,#ce,#69,#ce
	db #79,#ce,#65,#ce,#77,#ce,#65,#ce
	db #77,#ce,#61,#ce,#73,#ce,#61,#ce
	db #73,#ce,#5f,#ce,#6f,#ce,#5f,#d4
	db #48,#81,#06,#da,#48,#01,#da,#49
	db #da,#49,#da,#49,#da,#49,#da,#49
	db #da,#49,#ce,#49,#61,#30,#80,#02
	db #d2,#48,#81,#06,#ce,#30,#80,#02
	db #d2,#49,#ce,#48,#81,#06,#ce,#30
	db #80,#02,#d2,#31,#ce,#48,#80,#06
	db #ce,#48,#80,#02,#d2,#31,#ce,#48
	db #80,#06,#ce,#49,#ce,#42,#80,#02
	db #d2,#48,#80,#06,#ce,#5a,#80,#02
	db #d2,#43,#ce,#48,#80,#06,#ce,#3e
	db #80,#02,#d2,#3f,#ce,#48,#80,#06
	db #ce,#56,#80,#02,#d2,#3f,#ce,#48
	db #80,#06,#d0,#49,#60,#80,#05,#ce
	db #6f,#ce,#61,#ce,#6f,#ce,#6b,#ce
	db #79,#ce,#6b,#ce,#79,#ce,#6f,#ce
	db #7d,#ce,#6f,#ce,#7d,#ce,#73,#ce
	db #81,#ce,#73,#ce,#81,#ce,#79,#ce
	db #87,#ce,#79,#ce,#87,#ce,#73,#ce
	db #81,#ce,#73,#ce,#81,#ce,#6f,#ce
	db #7d,#ce,#6f,#ce,#7d,#ce,#61,#ce
	db #79,#ce,#61,#ce,#79,#c2,#d2,#60
	db #80,#05,#ce,#6f,#ce,#61,#ce,#6f
	db #ce,#6b,#ce,#79,#ce,#6b,#ce,#79
	db #ce,#6f,#ce,#7d,#ce,#6f,#ce,#7d
	db #ce,#73,#ce,#81,#ce,#73,#ce,#81
	db #ce,#79,#ce,#87,#ce,#79,#ce,#87
	db #ce,#73,#ce,#81,#ce,#73,#ce,#81
	db #ce,#6f,#ce,#7d,#ce,#6f,#ce,#7d
	db #ce,#61,#ce,#79,#ce,#61,#30,#80
	db #02,#d2,#48,#81,#06,#ce,#30,#80
	db #02,#d2,#49,#ce,#48,#81,#06,#ce
	db #30,#80,#02,#d2,#31,#ce,#48,#80
	db #06,#ce,#48,#80,#02,#d2,#31,#ce
	db #48,#80,#06,#ce,#49,#ce,#42,#80
	db #02,#d2,#48,#80,#06,#ce,#5a,#80
	db #02,#d2,#43,#ce,#48,#80,#06,#ce
	db #3e,#80,#02,#d2,#3f,#ce,#48,#80
	db #06,#ce,#56,#80,#02,#d2,#3f,#ce
	db #48,#80,#06,#d0,#49,#78,#80,#07
	db #87,#91,#ce,#95,#ce,#99,#79,#ce
	db #87,#91,#ce,#95,#ce,#99,#ce,#79
	db #87,#91,#ce,#95,#99,#ce,#9f,#ce
	db #9b,#99,#9b,#99,#95,#99,#95,#79
	db #87,#91,#ce,#95,#ce,#99,#79,#ce
	db #87,#91,#ce,#95,#ce,#99,#ce,#79
	db #87,#91,#ce,#95,#ce,#99,#95,#ce
	db #91,#87,#91,#87,#83,#81,#83,#60
	db #81,#05,#ce,#6e,#01,#60,#05,#60
	db #01,#6e,#05,#6e,#01,#60,#05,#6a
	db #01,#6e,#05,#78,#01,#6a,#05,#6a
	db #01,#78,#05,#78,#01,#6a,#05,#6e
	db #01,#78,#05,#7c,#01,#6e,#05,#6e
	db #01,#7c,#05,#7c,#01,#6e,#05,#72
	db #01,#7c,#05,#80,#01,#72,#05,#72
	db #01,#80,#05,#80,#01,#72,#05,#68
	db #01,#80,#05,#78,#01,#68,#05,#68
	db #01,#78,#05,#78,#01,#68,#05,#64
	db #01,#78,#05,#76,#01,#64,#05,#64
	db #01,#76,#05,#76,#01,#64,#05,#60
	db #01,#76,#05,#72,#01,#60,#05,#60
	db #01,#72,#05,#72,#01,#60,#05,#5e
	db #01,#72,#05,#6e,#01,#5e,#05,#5e
	db #01,#6e,#05,#6e,#01,#5e,#05,#9e
	db #80,#07,#9b,#99,#9b,#99,#95,#99
	db #95,#91,#95,#91,#87,#83,#81,#83
	db #87,#9f,#9b,#99,#9b,#99,#95,#99
	db #95,#91,#95,#91,#87,#83,#81,#83
	db #87,#79,#7d,#81,#7d,#81,#83,#81
	db #83,#87,#83,#87,#91,#95,#91,#87
	db #91,#79,#7d,#81,#7d,#81,#83,#81
	db #83,#87,#83,#81,#83,#81,#7d,#79
	db #7d,#60,#80,#05,#ce,#60,#03,#ce
	db #60,#05,#ce,#60,#07,#ce,#60,#09
	db #ce,#60,#0b,#ce,#60,#0d,#ce,#60
	db #0f,#ce,#60,#11,#c2,#ca,#c2,#60
	db #85,#02,#e6,#6f,#ee,#57,#e6,#5b
	db #da,#61,#d6,#65,#c2,#60,#85,#02
	db #d6,#c4,#03,#ce,#c4,#04,#ce,#c4
	db #05,#ce,#c4,#06,#ce,#c4,#07,#ce
	db #c4,#08,#ce,#c4,#09,#ce,#c4,#0a
	db #ce,#c4,#0b,#ce,#c4,#0c,#ce,#c4
	db #0d,#ce,#c4,#0e,#c2,#ff
;
; #9000 - player reallocated by Megachur
;
	jp l900a		; init music and init music interrupt
	jp l902e		; stop music interrupt
.l9009 equ $ + 3
.l9008 equ $ + 2
	db #00,#90,#00,#00
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
	db "Athanor 1 - L'Eveil - End 2 (2014)(Safar Games)(Tom et Jerry)",0
	db "StArkos",0

	read "music_end.asm"
