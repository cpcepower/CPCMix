; Music of Happy New 2015 Year (2015)(Public Domain)(Andrew Stegnitskiy)(ProTracker3.5)
; Ripped by Megachur the 17/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HAPPYN2Y.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6253

	read "music_header.asm"

	push iy
	push ix
	push af
	push bc
	push de
	push hl
	ex af,af'
	push af
.l625e equ $ + 1
	ld a,#00
	inc a
	cp #06
	jr nz,l6265
	xor a
.l6265
	ld (l625e),a
	or a
	call z,l6efc	; play music !
	pop af
	ex af,af'
	pop hl
	pop de
	pop bc
	pop af
	pop ix
	pop iy
	ei
	ret
.l6278
	db #50,#72,#6f,#54,#72,#61,#63,#6b
	db #65,#72,#20,#33,#2e,#35,#20,#63
	db #6f,#6d,#70,#69,#6c,#61,#74,#69
	db #6f,#6e,#20,#6f,#66,#20,#41,#4e
	db #44,#52,#45,#57,#20,#53,#54,#45
	db #47,#4e,#49,#43,#4b,#49,#59,#20
	db #32,#37,#2e,#31,#32,#2e,#39,#38
	db #20,#20,#20,#20,#20,#20,#20,#62
	db #79,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20
.l62e1 equ $ + 6
	db #01,#09,#19,#00,#e3,#00,#00,#00
	db #5d,#06,#00,#00,#00,#00,#00,#00
	db #6b,#06,#00,#00,#b1,#06,#00,#00
	db #00,#00,#fb,#06,#00,#00,#00,#00
	db #31,#07,#00,#00,#00,#00,#77,#07
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6321 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#bd,#07
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c0,#07,#c5,#07,#c9,#07,#00,#00
	db #00,#00,#cd,#07,#d2,#07,#00,#00
.l6341 equ $ + 6
	db #d7,#07,#dc,#07,#e1,#07,#00,#00
	db #09,#0c,#03,#06,#03,#0f,#12,#15
	db #18,#03,#06,#03,#1b,#00,#00,#12
	db #15,#18,#03,#1b,#00,#00,#1e,#ff
.l635b
	db #25,#01,#32,#01,#50,#01,#63,#02
	db #89,#02,#d3,#02,#40,#03,#48,#03
	db #51,#03,#54,#01,#75,#01,#c6,#01
	db #54,#01,#ca,#01,#15,#02,#5a,#03
	db #71,#03,#8f,#03,#a7,#03,#e5,#03
	db #37,#04,#a1,#04,#e1,#04,#30,#05
	db #97,#05,#ac,#05,#ba,#05,#e9,#05
	db #05,#06,#27,#06,#44,#06,#4e,#06
	db #56,#06,#ff,#0e,#ce,#b1
	db #08,#74,#4b,#74,#4d,#73,#4b,#74
	db #00,#b1,#02,#d0,#f0,#20,#79,#7b
	db #b1,#04,#79,#b1,#02,#78,#7b,#b1
	db #04,#78,#b1,#02,#76,#7b,#b1,#04
	db #76,#b1,#02,#78,#7b,#78,#00,#b1
	db #20,#d0,#00,#ff,#0e,#b1,#08,#74
	db #4a,#76,#4d,#b1,#0f,#76,#4f,#b1
	db #01,#d0,#b1,#07,#79,#4b,#b1,#01
	db #d0,#b1,#07,#79,#4d,#b1,#01,#d0
	db #b1,#10,#78,#00,#b1,#04,#d0,#f7
	db #0a,#b1,#01,#7d,#7e,#b1,#02,#7d
	db #b1,#01,#7b,#b1,#05,#79,#b1,#01
	db #7d,#80,#b1,#02,#82,#b1,#01,#84
	db #b1,#03,#85,#b1,#01,#89,#b1,#05
	db #84,#b1,#02,#84,#b1,#01,#85,#b1
	db #05,#82,#b1,#02,#84,#b1,#01,#85
	db #b1,#05,#80,#b1,#02,#82,#b1,#01
	db #80,#b1,#03,#80,#b1,#01,#7e,#b1
	db #03,#7e,#b1,#01,#7d,#b1,#05,#80
	db #b1,#02,#79,#7b,#00,#b1,#40,#d0
	db #00,#cf,#b1,#05,#7d,#b1,#01,#7e
	db #b1,#02,#7d,#b1,#01,#7b,#b1,#05
	db #79,#b1,#01,#7d,#80,#b1,#02,#82
	db #b1,#01,#84,#b1,#03,#85,#b1,#01
	db #89,#b1,#05,#84,#b1,#02,#84,#b1
	db #01,#85,#b1,#05,#82,#b1,#02,#84
	db #b1,#01,#85,#b1,#05,#80,#b1,#02
	db #85,#b1,#01,#84,#b1,#03,#84,#b1
	db #01,#82,#b1,#03,#82,#b1,#01,#80
	db #b1,#09,#80,#00,#1a,#00,#2d,#02
	db #40,#b1,#04,#79,#ff,#20,#80,#1a
	db #00,#35,#02,#40,#76,#fa,#20,#82
	db #1a,#00,#21,#02,#40,#7e,#fd,#20
	db #82,#1a,#00,#23,#02,#40,#7d,#bb
	db #00,#1e,#b1,#02,#80,#c0,#bb,#00
	db #21,#b1,#04,#7e,#4f,#b0,#d0,#40
	db #bb,#00,#23,#7d,#fb,#20,#85,#1a
	db #00,#28,#02,#40,#7b,#fb,#20,#80
	db #1a,#00,#2d,#02,#40,#79,#fb,#20
	db #80,#00,#fb,#14,#b1,#04,#74,#dd
	db #74,#da,#4f,#74,#dd,#74,#da,#4b
	db #71,#dd,#71,#da,#72,#dd,#72,#da
	db #72,#dd,#72,#da,#76,#dd,#76,#da
	db #76,#dd,#76,#da,#76,#dd,#76,#00
	db #b1,#04,#d0,#b1,#01,#7d,#7e,#b1
	db #02,#80,#b1,#04,#89,#b1,#01,#7d
	db #7e,#b1,#02,#80,#b1,#04,#87,#b1
	db #01,#7d,#7e,#b1,#02,#80,#82,#85
	db #85,#b1,#01,#84,#b1,#03,#82,#b1
	db #02,#84,#82,#b1,#01,#80,#b1,#05
	db #80,#b1,#02,#82,#b1,#01,#80,#b1
	db #03,#80,#b1,#02,#82,#80,#b1,#01
	db #7e,#b1,#03,#7e,#b1,#02,#7d,#7e
	db #80,#00,#1a,#00,#3c,#02,#40,#b1
	db #04,#74,#c0,#bb,#00,#2d,#79,#b1
	db #02,#c0,#bb,#00,#2d,#b1,#01,#79
	db #c0,#bb,#00,#38,#b1,#04,#75,#b1
	db #02,#c0,#bb,#00,#38,#b1,#01,#75
	db #c0,#bb,#00,#35,#b1,#04,#76,#b1
	db #02,#c0,#bb,#00,#35,#b1,#01,#76
	db #c0,#bb,#00,#21,#b1,#04,#7e,#c0
	db #bb,#00,#2a,#b1,#01,#7a,#b1,#03
	db #c0,#bb,#00,#2a,#b1,#01,#7a,#b1
	db #03,#c0,#bb,#00,#2a,#b1,#01,#7a
	db #b1,#03,#c0,#bb,#00,#2a,#b1,#01
	db #7a,#b1,#03,#c0,#bb,#00,#35,#b1
	db #04,#76,#bb,#00,#2a,#7a,#00,#fe
	db #14,#b1,#04,#7b,#dd,#7b,#00,#b1
	db #01,#80,#7e,#7d,#b1,#05,#7b,#00
	db #40,#bb,#00,#28,#b1,#04,#7b,#c0
	db #00,#fe,#14,#b1,#04,#7b,#dd,#7b
	db #da,#4b,#74,#dd,#74,#da,#4e,#7b
	db #dd,#7b,#da,#4b,#74,#dd,#74,#00
	db #45,#b0,#cf,#b1,#01,#80,#7e,#7d
	db #b1,#09,#7b,#b1,#04,#80,#b1,#01
	db #80,#7e,#7d,#b1,#07,#7b,#46,#cb
	db #b1,#02,#78,#7b,#78,#00,#40,#bb
	db #00,#28,#b1,#04,#7b,#c0,#bb,#00
	db #3c,#74,#c0,#bb,#00,#28,#7b,#c0
	db #bb,#00,#3c,#74,#c0,#00,#ff,#14
	db #b1,#04,#74,#dd,#74,#da,#4a,#76
	db #dd,#76,#da,#4d,#76,#dd,#76,#da
	db #76,#dd,#b1,#03,#76,#4f,#b1,#01
	db #d0,#da,#b1,#04,#79,#dd,#b1,#03
	db #79,#4b,#b1,#01,#d0,#da,#b1,#04
	db #79,#dd,#b1,#03,#79,#4d,#b1,#01
	db #d0,#da,#b1,#04,#78,#dd,#78,#da
	db #78,#dd,#78,#00,#b1,#04,#d0,#f7
	db #0a,#cf,#b1,#01,#7d,#7e,#b1,#02
	db #7d,#b1,#01,#7b,#b1,#05,#79,#b1
	db #01,#7d,#80,#b1,#02,#82,#b1,#01
	db #84,#b1,#03,#85,#b1,#01,#89,#b1
	db #05,#84,#b1,#02,#84,#b1,#01,#85
	db #b1,#05,#82,#b1,#02,#84,#b1,#01
	db #85,#b1,#05,#80,#b1,#02,#82,#b1
	db #01,#80,#b1,#03,#80,#b1,#01,#7e
	db #b1,#03,#7e,#b1,#01,#7d,#b1,#05
	db #80,#b1,#02,#79,#7b,#00,#40,#bb
	db #00,#2d,#b1,#04,#79,#b1,#02,#c0
	db #bb,#00,#2d,#79,#bb,#00,#28,#b1
	db #04,#7b,#b1,#02,#c0,#bb,#00,#28
	db #7b,#bb,#00,#23,#b1,#04,#7d,#b1
	db #02,#c0,#bb,#00,#23,#7d,#bb,#00
	db #2f,#b1,#04,#78,#b1,#02,#c0,#bb
	db #00,#1e,#80,#bb,#00,#21,#b1,#04
	db #7e,#b1,#02,#c0,#bb,#00,#21,#7e
	db #bb,#00,#23,#b1,#04,#7d,#b1,#02
	db #c0,#bb,#00,#23,#7d,#bb,#00,#28
	db #b1,#04,#7b,#b1,#02,#c0,#bb,#00
	db #1e,#b1,#01,#80,#bb,#00,#1b,#82
	db #bb,#00,#1e,#b1,#04,#80,#c0,#00
	db #ff,#14,#b1,#04,#74,#dd,#74,#da
	db #4a,#76,#dd,#76,#da,#4d,#76,#dd
	db #76,#da,#76,#dd,#b1,#03,#76,#4f
	db #b1,#01,#d0,#da,#b1,#04,#79,#dd
	db #b1,#03,#79,#4b,#b1,#01,#d0,#da
	db #b1,#04,#79,#dd,#b1,#03,#79,#4d
	db #b1,#01,#d0,#da,#b1,#04,#78,#dd
	db #b1,#02,#78,#78,#b1,#08,#78,#00
	db #b1,#04,#7d,#f7,#0a,#cf,#b1,#01
	db #7d,#7e,#b1,#02,#7d,#b1,#06,#7b
	db #b1,#01,#7d,#80,#b1,#02,#82,#b1
	db #01,#84,#b1,#03,#85,#b1,#01,#89
	db #b1,#05,#84,#b1,#02,#84,#b1,#01
	db #85,#b1,#05,#82,#b1,#02,#84,#b1
	db #01,#85,#b1,#05,#80,#b1,#02,#85
	db #b1,#01,#84,#b1,#03,#84,#b1,#01
	db #82,#b1,#03,#82,#b1,#02,#89,#b1
	db #04,#89,#b1,#02,#85,#84,#00,#40
	db #bb,#00,#2d,#b1,#04,#79,#b1,#02
	db #c0,#bb,#00,#2d,#79,#bb,#00,#28
	db #b1,#04,#7b,#b1,#02,#c0,#bb,#00
	db #28,#7b,#bb,#00,#23,#b1,#04,#7d
	db #b1,#02,#c0,#bb,#00,#2f,#78,#bb
	db #00,#23,#b1,#04,#7d,#b1,#02,#c0
	db #bb,#00,#1e,#80,#bb,#00,#21,#b1
	db #04,#7e,#b1,#02,#c0,#bb,#00,#21
	db #7e,#bb,#00,#23,#b1,#04,#7d,#b1
	db #02,#c0,#bb,#00,#23,#7d,#bb,#00
	db #21,#b1,#04,#7e,#b1,#02,#c0,#bb
	db #00,#2d,#b1,#01,#79,#c0,#bb,#00
	db #2d,#b1,#04,#79,#c0,#00,#fe,#14
	db #b1,#04,#7b,#dd,#7b,#da,#7b,#dd
	db #7b,#da,#4b,#74,#dd,#74,#da,#74
	db #dd,#74,#00,#b1,#02,#84,#b1,#0a
	db #82,#b1,#02,#82,#80,#b1,#10,#80
	db #00,#40,#bb,#00,#28,#b1,#04,#7b
	db #b1,#02,#c0,#bb,#00,#35,#b1,#01
	db #76,#c0,#bb,#00,#28,#b1,#04,#7b
	db #c0,#bb,#00,#3c,#74,#b1,#02,#c0
	db #d1,#bb,#00,#2d,#b1,#01,#79,#c0
	db #bb,#00,#1e,#b1,#04,#80,#c0,#00
	db #fe,#14,#b1,#04,#7b,#dd,#7b,#da
	db #4b,#74,#dd,#74,#da,#4e,#7b,#dd
	db #7b,#da,#4b,#74,#dd,#74,#da,#4f
	db #74,#dd,#74,#00,#45,#b0,#cf,#b1
	db #01,#80,#7e,#7d,#b1,#09,#7b,#b1
	db #04,#80,#b1,#01,#80,#7e,#7d,#b1
	db #09,#7b,#b1,#04,#7e,#b1,#01,#7e
	db #7d,#7b,#b1,#05,#79,#00,#40,#bb
	db #00,#28,#b1,#04,#7b,#c0,#bb,#00
	db #3c,#74,#c0,#bb,#00,#28,#7b,#c0
	db #bb,#00,#3c,#74,#c0,#bb,#00,#2d
	db #79,#c0,#00,#fd,#0e,#cd,#b1,#04
	db #71,#b1,#0d,#c0,#00,#cf,#b1,#04
	db #79,#b1,#0d,#c0,#00,#b1,#04,#d0
	db #b1,#0d,#c0,#00,#02,#03,#00,#99
	db #00,#00,#00,#97,#00,#00,#00,#90
	db #00,#00,#0d,#11,#00,#8f,#00,#00
	db #00,#8f,#00,#00,#00,#8e,#00,#00
	db #00,#8e,#00,#00,#00,#8d,#00,#00
	db #00,#8c,#00,#00,#00,#8c,#00,#00
	db #00,#8b,#00,#00,#00,#8a,#00,#00
	db #00,#8a,#00,#00,#00,#89,#00,#00
	db #00,#88,#00,#00,#00,#86,#00,#00
	db #00,#86,#00,#00,#00,#86,#00,#00
	db #00,#86,#00,#00,#00,#86,#00,#00
	db #0a,#12,#00,#8d,#02,#00,#00,#8d
	db #00,#00,#00,#8d,#00,#00,#00,#8d
	db #00,#00,#00,#8c,#00,#00,#00,#8b
	db #00,#00,#00,#8a,#00,#00,#00,#89
	db #00,#00,#00,#88,#00,#00,#00,#88
	db #00,#00,#00,#87,#ff,#ff,#00,#87
	db #ff,#ff,#00,#87,#ff,#ff,#00,#87
	db #ff,#ff,#00,#87,#01,#00,#00,#87
	db #01,#00,#00,#87,#01,#00,#00,#87
	db #01,#00,#0c,#0d,#34,#0f,#7d,#02
	db #00,#8e,#c0,#02,#00,#8d,#85,#03
	db #00,#89,#00,#00,#00,#89,#00,#00
	db #00,#89,#00,#00,#00,#89,#00,#00
	db #00,#89,#00,#00,#00,#89,#00,#00
	db #00,#89,#00,#00,#00,#89,#00,#00
	db #00,#89,#00,#00,#00,#89,#00,#00
	db #10,#11,#10,#0f,#7f,#00,#0c,#0e
	db #13,#01,#0c,#0f,#84,#01,#00,#89
	db #00,#00,#00,#89,#00,#00,#00,#89
	db #ff,#ff,#00,#89,#00,#00,#00,#89
	db #ff,#ff,#00,#89,#00,#00,#00,#89
	db #ff,#ff,#00,#89,#00,#00,#00,#89
	db #ff,#ff,#00,#89,#00,#00,#00,#89
	db #ff,#ff,#00,#89,#00,#00,#00,#89
	db #ff,#ff,#00,#89,#00,#00,#10,#11
	db #00,#8e,#00,#00,#00,#8c,#00,#00
	db #00,#8a,#00,#00,#00,#89,#00,#00
	db #00,#89,#00,#00,#00,#88,#00,#00
	db #00,#88,#00,#00,#00,#87,#00,#00
	db #00,#87,#00,#00,#00,#86,#00,#00
	db #00,#86,#00,#00,#00,#85,#00,#00
	db #00,#84,#00,#00,#00,#84,#00,#00
	db #00,#83,#00,#00,#00,#83,#00,#00
	db #00,#83,#00,#00,#00,#01,#00,#01
	db #03,#0c,#00,#0c,#01,#02,#01,#00
	db #00,#02,#00,#0c,#00,#03,#07,#03
	db #00,#00,#03,#07,#04,#00,#00,#03
	db #00,#03,#08,#00,#03,#fb,#00,#03
.l6a5f equ $ + 6
.l6a5e equ $ + 5
	db #00,#03,#00,#05,#09,#00,#40,#63
;
.init_music
.l6a61
;
	ld hl,l6a5e
	set 7,(hl)
	bit 0,(hl)
	ret z
	pop hl
	ld hl,l7178
	inc (hl)
	ld hl,l713c
	inc (hl)
	xor a
	ld h,a
	ld l,a
	ld (l7186),a
	ld (l7187),hl
	jp l6ffe
	ld (l6be7),hl
	ld (l6d7f),hl
	push hl
	ld de,#0064
	add hl,de
	ld a,(hl)
	ld (l6f8b),a
	push hl
	pop ix
	add hl,de
	ld (l6a5f),hl
	ld e,(ix+#02)
	add hl,de
	inc hl
	ld (l6f2b),hl
	pop de
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,de
	ld (l6f38),hl
	ld hl,#00a9
	add hl,de
	ld (l6d78),hl
	ld hl,#0069
	add hl,de
	ld (l6be0),hl
	ld hl,l6a5e
	res 7,(hl)
	ld de,l70ec
	ld bc,l71ef
.l6ac0
	ld a,(de)
	inc de
	cp #1e
	jr nc,l6acc
	ld h,a
	ld a,(de)
	ld l,a
	inc de
	jr l6ad3
.l6acc
	push de
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	pop de
.l6ad3
	ld a,h
	ld (bc),a
	dec bc
	ld a,l
	ld (bc),a
	dec bc
	sub #f0
	jr nz,l6ac0
	ld hl,l7121
	ld (hl),a
	ld de,l7122
	ld bc,#006c
	ldir
	inc a
	ld (l7178),a
	ld hl,#f001
	ld (l713c),hl
	ld (l7159),hl
	ld (l7176),hl
	ld hl,l70e8
	ld (l6f15),hl
	ld (l712e),hl
	ld (l714b),hl
	ld (l7168),hl
	ld (l7130),hl
	ld (l714d),hl
	ld (l716a),hl
	ld a,(ix-#57)
	sub #30
	jr c,l6b1c
	cp #0a
	jr c,l6b1e
.l6b1c
	ld a,#06
.l6b1e
	ld (l6cce),a
	push af
	cp #04
	ld a,(ix-#01)
	rla
	and #07
	ld hl,l7098
	push de
	ld d,b
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	srl e
	sbc a
	and #a7
	ld (l6b5f),a
	ex de,hl
	pop bc
	add hl,bc
	ld a,(de)
	add #a8
	ld c,a
	adc #70
	sub c
	ld b,a
	push bc
	ld de,l727e
	push de
	ld b,#0c
.l6b4e
	push bc
	ld c,(hl)
	inc hl
	push hl
	ld b,(hl)
	push de
	ex de,hl
	ld de,#0017
	ld hx,#08
.l6b5b
	srl b
	rr c
.l6b5f
	and a
	ld a,c
	adc d
	ld (hl),a
	inc hl
	ld a,b
	adc d
	ld (hl),a
	add hl,de
	dec hx
	jr nz,l6b5b
	pop de
	inc de
	inc de
	pop hl
	inc hl
	pop bc
	djnz l6b4e
	pop hl
	pop de
	ld a,e
	cp #b4
	jr nz,l6b80
	ld a,#fd
	ld (l72ac),a
.l6b80
	ld a,(de)
	and a
	jr z,l6b95
	rra
	push af
	add a
	ld c,a
	add hl,bc
	pop af
	jr nc,l6b8e
	dec (hl)
	dec (hl)
.l6b8e
	inc (hl)
	and a
	sbc hl,bc
	inc de
	jr l6b80
.l6b95
	pop af
	cp #05
	ld hl,#0011
	ld d,h
	ld e,h
	ld a,#17
	jr nc,l6ba4
	dec l
	ld e,l
	xor a
.l6ba4
	ld (l6bb3),a
	ld ix,l718e
	ld c,#10
.l6bad
	push hl
	add hl,de
	ex de,hl
	sbc hl,hl
.l6bb2
	ld a,l
.l6bb3
	rla
	ld a,h
	adc #00
	ld (ix+#00),a
	inc ix
	add hl,de
	inc c
	ld a,c
	and #0f
	jr nz,l6bb2
	pop hl
	ld a,e
	cp #77
	jr nz,l6bca
	inc e
.l6bca
	ld a,c
	and a
	jr nz,l6bad
	jp l6ffe
.l6bd1
	ld (ix+#08),#00
	call l6d70
	ld a,(bc)
	inc bc
	rrca
.l6bdb
	add a
.l6bdc
	ld e,a
	ld d,#00
.l6be0 equ $ + 1
	ld hl,l62e1
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l6be7 equ $ + 1
	ld hl,l6278
	add hl,de
	ld (ix+#03),l
	ld (ix+#04),h
	jr l6c33
.l6bf2
	rlca
	rlca
	rlca
	rlca
	ld (ix+#10),a
	jr l6c36
.l6bfb
	ld (ix+#08),a
	ld (ix-#0c),a
	jr l6c36
.l6c03
	dec a
	jr nz,l6c0d
	ld a,(bc)
	inc bc
	ld (ix+#05),a
	jr l6c36
.l6c0d
	call l6d54
	jr l6c36
.l6c12
	call l6d70
	jr l6c33
.l6c17
	ld (ix+#08),a
	ld (ix-#0c),a
	call nz,l6d54
	ld a,(bc)
	inc bc
	jr l6bdc
.l6c24
	ld a,(ix+#06)
	ld (l6cb2),a
	ld l,(ix-#06)
	ld h,(ix-#05)
	ld (l6cd4),hl
.l6c33
	ld de,#2010
.l6c36
	ld a,(bc)
	inc bc
	add e
	jr c,l6bd1
	add d
	jr z,l6c89
	jr c,l6bdb
	add e
	jr z,l6c68
	jr c,l6bf2
	add e
	jr z,l6bfb
	jr c,l6c03
	add #60
	jr c,l6c6e
	add e
	jr c,l6c12
	add d
	jr c,l6c63
	add e
	jr c,l6c17
	add a
	ld e,a
	ld hl,#4ca9
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	jr l6c33
.l6c63
	ld (l717c),a
	jr l6c36
.l6c68
	res 0,(ix+#09)
	jr l6c77
.l6c6e
	ld (ix+#06),a
	set 0,(ix+#09)
	xor a
	di
.l6c77
	ld (l6c86),sp
	ld sp,ix
	ld h,a
	ld l,a
	push hl
	push hl
	push hl
	push hl
	push hl
	push hl
.l6c86 equ $ + 1
	ld sp,#3131
	ei
.l6c89
	ld a,(ix+#05)
	ld (ix+#0f),a
	ret
.l6c90
	res 2,(ix+#09)
	ld a,(bc)
	inc bc
	inc bc
	inc bc
	ld (ix+#0a),a
	ld (ix-#07),a
	ld de,l727e
	ld a,(ix+#06)
	ld (ix+#07),a
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
.l6cb2 equ $ + 1
	ld a,#3e
	ld (ix+#06),a
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	pop hl
	sbc hl,de
	ld (ix+#0d),l
	ld (ix+#0e),h
	ld e,(ix-#06)
	ld d,(ix-#05)
.l6cce equ $ + 1
	ld a,#05
	cp #06
	jr c,l6cdc
.l6cd4 equ $ + 1
	ld de,#1111
	ld (ix-#06),e
	ld (ix-#05),d
.l6cdc
	ld a,(bc)
	inc bc
	ex af,af'
	ld a,(bc)
	inc bc
	and a
	jr z,l6ce5
	ex de,hl
.l6ce5
	sbc hl,de
	jp p,l6cef
	cpl
	ex af,af'
	neg
	ex af,af'
.l6cef
	ld (ix+#0c),a
	ex af,af'
	ld (ix+#0b),a
	ld (ix-#02),#00
	ret
.l6cfb
	set 2,(ix+#09)
	ld a,(bc)
	inc bc
	ld (ix+#0a),a
	and a
	jr nz,l6d0e
	ld a,(l6cce)
	cp #07
	sbc a
	inc a
.l6d0e
	ld (ix-#07),a
	ld a,(bc)
	inc bc
	ex af,af'
	ld a,(bc)
	inc bc
	jr l6cef
.l6d18
	ld a,(bc)
	inc bc
	ld (ix-#0b),a
	ret
.l6d1e
	ld a,(bc)
	inc bc
	ld (ix-#0c),a
	ret
.l6d24
	ld a,(bc)
	inc bc
	ld (ix-#01),a
	ld (ix-#02),a
	ld a,(bc)
	inc bc
	ld (ix+#00),a
	xor a
	ld (ix-#07),a
	ld (ix-#06),a
	ld (ix-#05),a
	ret
.l6d3c
	ld a,(bc)
	inc bc
	ld (l6ff5),a
	ld (l717b),a
	ld a,(bc)
	inc bc
	ld l,a
	ld a,(bc)
	inc bc
	ld h,a
	ld (l6ff8),hl
	ret
.l6d4e
	ld a,(bc)
	inc bc
	ld (l6f8b),a
	ret
.l6d54
	ld (ix+#08),e
	ld (l718b),a
	ld a,(bc)
	inc bc
	ld h,a
	ld a,(bc)
	inc bc
	ld l,a
	ld (l718c),hl
	xor a
	ld (ix-#0c),a
	ld (l717b),a
	ld h,a
	ld l,a
	ld (l7179),hl
.l6d6f
	ret
.l6d70
	add a
	ld e,a
	ld d,#00
	ld (ix-#0c),d
.l6d78 equ $ + 1
	ld hl,l6321
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l6d7f equ $ + 1
	ld hl,l6278
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	ret
	dw l6d6f,l6cfb,l6c90,l6d18
	dw l6d1e,l6d24,l6d6f,l6d6f
	dw l6d3c,l6d4e,l6d6f,l6d6f
	dw l6d6f,l6d6f,l6d6f,l6d6f
.l6da9
	xor a
	ld (l7188),a
	bit 0,(ix+#15)
	push hl
	jp z,l6ed9
	ld (l6e23),sp
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	di
	ld sp,hl
	pop de
	ld h,a
	ld a,(ix+#00)
	ld l,a
	add hl,sp
	inc a
	cp d
	jr c,l6dcd
	ld a,e
.l6dcd
	ld (ix+#00),a
	ld a,(ix+#12)
	add (hl)
	jp p,l6dd8
	xor a
.l6dd8
	cp #60
	jr c,l6dde
	ld a,#5f
.l6dde
	add a
	ex af,af'
	ld l,(ix+#0f)
	ld h,(ix+#10)
	ld sp,hl
	pop de
	ld h,#00
	ld a,(ix+#01)
	ld b,a
	add a
	add a
	ld l,a
	add hl,sp
	ld sp,hl
	ld a,b
	inc a
	cp d
	jr c,l6df9
	ld a,e
.l6df9
	ld (ix+#01),a
	pop bc
	pop hl
	ld e,(ix+#08)
	ld d,(ix+#09)
	add hl,de
	bit 6,b
	jr z,l6e0f
	ld (ix+#08),l
	ld (ix+#09),h
.l6e0f
	ex de,hl
	ex af,af'
	ld l,a
	ld h,#00
	ld sp,l727e
	add hl,sp
	ld sp,hl
	pop hl
	add hl,de
	ld e,(ix+#06)
	ld d,(ix+#07)
	add hl,de
.l6e23 equ $ + 1
	ld sp,#3131
	ei
	ex (sp),hl
	xor a
	or (ix+#05)
	jr z,l6e6b
	dec (ix+#05)
	jr nz,l6e6b
	ld a,(ix+#16)
	ld (ix+#05),a
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,h
	add hl,de
	ld (ix+#06),l
	ld (ix+#07),h
	bit 2,(ix+#15)
	jr nz,l6e6b
	ld e,(ix+#19)
	ld d,(ix+#1a)
	and a
	jr z,l6e56
	ex de,hl
.l6e56
	sbc hl,de
	jp m,l6e6b
	ld a,(ix+#13)
	ld (ix+#12),a
	xor a
	ld (ix+#05),a
	ld (ix+#06),a
	ld (ix+#07),a
.l6e6b
	ld a,(ix+#02)
	bit 7,c
	jr z,l6e85
	bit 6,c
	jr z,l6e7d
	cp #0f
	jr z,l6e85
	inc a
	jr l6e82
.l6e7d
	cp #f1
	jr z,l6e85
	dec a
.l6e82
	ld (ix+#02),a
.l6e85
	ld l,a
	ld a,b
	and #0f
	add l
	jp p,l6e8e
	xor a
.l6e8e
	cp #10
	jr c,l6e94
	ld a,#0f
.l6e94
	or (ix+#1c)
	ld l,a
	ld h,#00
	ld de,l717e
	add hl,de
	ld a,(hl)
	bit 0,c
	jr nz,l6ea6
	or (ix+#14)
.l6ea6
	ld (l7188),a
	bit 7,b
	ld a,c
	jr z,l6ec7
	rla
	rla
	sra a
	sra a
	sra a
	add (ix+#04)
	bit 5,b
	jr z,l6ec0
	ld (ix+#04),a
.l6ec0
	ld hl,l6fd4
	add (hl)
	ld (hl),a
	jr l6ed5
.l6ec7
	rra
	add (ix+#03)
	ld (l717d),a
	bit 5,b
	jr z,l6ed5
	ld (ix+#03),a
.l6ed5
	ld a,b
	rra
	and #48
.l6ed9
	ld hl,l7185
	or (hl)
	rrca
	ld (hl),a
	pop hl
	xor a
	or (ix+#0a)
	ret z
	dec (ix+#0a)
	ret nz
	xor (ix+#15)
	ld (ix+#15),a
	rra
	ld a,(ix+#0b)
	jr c,l6ef8
	ld a,(ix+#0c)
.l6ef8
	ld (ix+#0a),a
	ret
;
.play_music
.l6efc
;
	xor a
	ld (l6fd4),a
	ld (l7185),a
	dec a
	ld (l718b),a
	ld hl,l7178
	dec (hl)
	jp nz,l6f8f
	ld hl,l713c
	dec (hl)
	jr nz,l6f62
.l6f15 equ $ + 1
	ld bc,l70e8
	ld a,(bc)
	and a
	jr nz,l6f57
	ld d,a
	ld (l717c),a
	ld hl,(l6a5f)
	inc hl
	ld a,(hl)
	inc a
	jr nz,l6f2f
	call l6a61	; reinit music !
.l6f2b equ $ + 1
	ld hl,l6341
	ld a,(hl)
	inc a
.l6f2f
	ld (l6a5f),hl
	dec a
	add a
	ld e,a
	rl d
.l6f38 equ $ + 1
	ld hl,l635b
	add hl,de
	ld de,(l6be7)
	di
	ld (l6f54),sp
	ld sp,hl
	pop hl
	add hl,de
	ld b,h
	ld c,l
	pop hl
	add hl,de
	ld (l6f6d),hl
	pop hl
	add hl,de
	ld (l6f81),hl
.l6f54 equ $ + 1
	ld sp,#3131
	ei
.l6f57
	ld ix,l712d
	call l6c24
	ld (l6f15),bc
.l6f62
	ld hl,l7159
	dec (hl)
	jr nz,l6f76
	ld ix,l714a
.l6f6d equ $ + 1
	ld bc,#0101
	call l6c24
	ld (l6f6d),bc
.l6f76
	ld hl,l7176
	dec (hl)
	jr nz,l6f8a
	ld ix,l7167
.l6f81 equ $ + 1
	ld bc,#0101
	call l6c24
	ld (l6f81),bc
.l6f8b equ $ + 1
.l6f8a
	ld a,#09
	ld (l7178),a
.l6f8f
	ld ix,l7121
	ld hl,(l717e)
	call l6da9
	call l7036
	ld (l717e),hl
	ld a,(l7188)
	ld (l7186),a
	ld ix,l713e
	ld hl,(l7180)
	call l6da9
	call l7036
	ld (l7180),hl
	ld a,(l7188)
	ld (l7187),a
	ld ix,l715b
	ld hl,(l7182)
	call l6da9
	call l7036
	ld (l7182),hl
	ld hl,(l717c)
	ld a,h
	add l
	ld (l7184),a
.l6fd4 equ $ + 1
	ld a,#3e
	ld e,a
	add a
	sbc a
	ld d,a
	ld hl,(l718c)
	add hl,de
	ld de,(l7179)
	add hl,de
	push de
	call l705d
	pop de
	ld (l7189),hl
	ld hl,l717b
	xor a
	or (hl)
	jr z,l6ffe
	dec (hl)
	jr nz,l6ffe
.l6ff5 equ $ + 1
	ld a,#3e
	ld (hl),a
.l6ff8 equ $ + 1
	ld hl,#2121
	add hl,de
	ld (l7179),hl
.l6ffe
	ld hl,l717e
	ld de,#c080
	ld c,#00
	ld a,#0d
.l7008
	ld b,#f4
	out (c),c
	inc c
	ld b,#f6
	out (c),d
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld b,#f6
	out (c),e
	db #ed,#71 ; out (c),0
	cp c
	jr nz,l7008
	bit 7,(hl)
	ret nz
	ld b,#f4
	out (c),c
	ld b,#f6
	out (c),d
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld b,#f6
	out (c),e
	db #ed,#71 ; out (c),0
	ret
.l7036
	db #44,#4d,#29,#54,#5d,#29,#eb,#19
	db #eb,#29,#7a,#85,#30,#01,#24,#81
	db #6f,#7c,#88,#cb,#3f,#cb,#1d,#cb
	db #3f,#cb,#1d,#cb,#3f,#cb,#1d,#cb
.l705d equ $ + 7
	db #3f,#cb,#1d,#67,#d0,#23,#c9,#06
	db #00,#4c,#55,#58,#29,#cb,#18,#eb
	db #19,#79,#88,#cb,#13,#cb,#12,#cb
	db #10,#19,#88,#4f,#cb,#13,#cb,#12
	db #cb,#10,#7c,#83,#6f,#79,#8a,#30
	db #01,#04,#cb,#38,#1f,#cb,#1d,#cb
	db #38,#1f,#cb,#1d,#cb,#38,#1f,#cb
	db #1d,#cb,#38,#1f,#cb,#1d,#67,#d0
.l7098 equ $ + 2
	db #23,#c9,#64,#2a,#65,#00,#01,#0c
	db #01,#0c,#94,#35,#30,#0e,#60,#20
	db #60,#21,#01,#05,#09,#0b,#0d,#0f
	db #13,#15,#19,#25,#3d,#00,#5d,#00
	db #31,#37,#4d,#53,#5f,#71,#82,#8c
	db #9c,#9e,#a0,#a6,#a8,#aa,#ac,#ae
	db #ae,#00,#57,#1f,#23,#25,#29,#2d
	db #2f,#33,#bf,#00,#1d,#21,#23,#27
	db #2b,#2d,#31,#55,#bd,#bf,#00,#1b
	db #21,#25,#29,#2b,#3b,#4d,#5f,#bb
.l70ec equ $ + 6
.l70e8 equ $ + 2
	db #bd,#bf,#00,#01,#00,#90,#0d,#d8
	db #69,#70,#76,#7d,#85,#8d,#95,#9d
	db #a8,#b1,#bb,#0c,#da,#62,#68,#6d
	db #75,#7b,#83,#8a,#92,#9c,#a4,#af
	db #b8,#0e,#08,#6a,#72,#78,#7e,#86
	db #90,#96,#a0,#aa,#b4,#be,#0f,#c0
	db #78,#88,#80,#90,#98,#a0,#b0,#a8
.l7122 equ $ + 4
.l7121 equ $ + 3
	db #e0,#b0,#e8,#00,#00,#00,#00,#00
.l712d equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7130 equ $ + 2
.l712e
	db #e8,#70,#e8,#70,#00,#00,#00,#00
.l713c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#01,#f0
.l713e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l714d equ $ + 7
.l714b equ $ + 5
.l714a equ $ + 4
	db #00,#00,#00,#00,#00,#e8,#70,#e8
	db #70,#00,#00,#00,#00,#00,#00,#00
.l715b equ $ + 5
.l7159 equ $ + 3
	db #00,#00,#00,#01,#f0,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l716a equ $ + 4
.l7168 equ $ + 2
.l7167 equ $ + 1
	db #00,#00,#e8,#70,#e8,#70,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l717d equ $ + 7
.l717c equ $ + 6
.l717b equ $ + 5
.l7179 equ $ + 3
.l7178 equ $ + 2
.l7176
	db #01,#f0,#01,#00,#00,#00,#00,#00
.l7185 equ $ + 7
.l7184 equ $ + 6
.l7182 equ $ + 4
.l7180 equ $ + 2
.l717e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l718c equ $ + 6
.l718b equ $ + 5
.l7189 equ $ + 3
.l7188 equ $ + 2
.l7187 equ $ + 1
.l7186
	db #00,#00,#00,#00,#00,#00,#00,#00
.l718e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#01,#01,#01,#02,#02,#02,#02
	db #00,#00,#00,#01,#01,#01,#01,#01
	db #02,#02,#02,#02,#02,#03,#03,#03
	db #00,#00,#01,#01,#01,#01,#02,#02
	db #02,#02,#03,#03,#03,#03,#04,#04
	db #00,#00,#01,#01,#01,#02,#02,#02
	db #03,#03,#03,#04,#04,#04,#05,#05
	db #00,#00,#01,#01,#02,#02,#02,#03
	db #03,#04,#04,#04,#05,#05,#06,#06
.l71ef equ $ + 1
	db #00,#00,#01,#01,#02,#02,#03,#03
	db #04,#04,#05,#05,#06,#06,#07,#07
	db #00,#01,#01,#02,#02,#03,#03,#04
	db #04,#05,#05,#06,#06,#07,#07,#08
	db #00,#01,#01,#02,#02,#03,#04,#04
	db #05,#05,#06,#07,#07,#08,#08,#09
	db #00,#01,#01,#02,#03,#03,#04,#05
	db #05,#06,#07,#07,#08,#09,#09,#0a
	db #00,#01,#01,#02,#03,#04,#04,#05
	db #06,#07,#07,#08,#09,#0a,#0a,#0b
	db #00,#01,#02,#02,#03,#04,#05,#06
	db #06,#07,#08,#09,#0a,#0a,#0b,#0c
	db #00,#01,#02,#03,#03,#04,#05,#06
	db #07,#08,#09,#0a,#0a,#0b,#0c,#0d
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #07,#08,#09,#0a,#0b,#0c,#0d,#0e
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #08,#09,#0a,#0b,#0c,#0d,#0e,#0f
.l727e
	db #f8,#0e,#10,#0e,#60,#0d,#80,#0c
	db #d8,#0b,#28,#0b,#88,#0a,#f0,#09
	db #60,#09,#e0,#08,#58,#08,#e0,#07
	db #7c,#07,#08,#07,#b0,#06,#40,#06
	db #ec,#05,#94,#05,#44,#05,#f8,#04
.l72ac equ $ + 6
	db #b0,#04,#70,#04,#2c,#04,#fd,#03
	db #be,#03,#84,#03,#58,#03,#20,#03
	db #f6,#02,#ca,#02,#a2,#02,#7c,#02
	db #58,#02,#38,#02,#16,#02,#f8,#01
	db #df,#01,#c2,#01,#ac,#01,#90,#01
	db #7b,#01,#65,#01,#51,#01,#3e,#01
	db #2c,#01,#1c,#01,#0a,#01,#fc,#00
	db #ef,#00,#e1,#00,#d6,#00,#c8,#00
	db #bd,#00,#b2,#00,#a8,#00,#9f,#00
	db #96,#00,#8e,#00,#85,#00,#7e,#00
	db #77,#00,#70,#00,#6b,#00,#64,#00
	db #5e,#00,#59,#00,#54,#00,#4f,#00
	db #4b,#00,#47,#00,#42,#00,#3f,#00
	db #3b,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2c,#00,#2a,#00,#27,#00
	db #25,#00,#23,#00,#21,#00,#1f,#00
	db #1d,#00,#1c,#00,#1a,#00,#19,#00
	db #17,#00,#16,#00,#15,#00,#13,#00
	db #12,#00,#11,#00,#10,#00,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#1c,#1c,#1c,#1c,#00,#1c,#1c
	db #00,#36,#76,#6c,#00,#00,#00,#00
	db #00,#36,#7f,#7f,#36,#7f,#7f,#36
	db #00,#1c,#7f,#5c,#7f,#1d,#7f,#1c
	db #00,#67,#6e,#1c,#38,#76,#66,#00
	db #00,#38,#7c,#6c,#3b,#6e,#7f,#3b
	db #00,#1c,#38,#00,#00,#00,#00,#00
	db #00,#0e,#1c,#1c,#1c,#1c,#0e,#00
	db #00,#70,#38,#38,#38,#38,#70,#00
	db #00,#00,#66,#3c,#ff,#3c,#66,#00
	db #00,#1c,#1c,#7f,#7f,#1c,#1c,#00
	db #00,#00,#00,#00,#00,#1c,#1c,#38
	db #00,#00,#00,#7e,#7e,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#1c,#1c
	db #00,#00,#07,#0e,#1c,#38,#70,#00
	db #00,#3e,#7f,#67,#6f,#7b,#7f,#3e
	db #00,#1c,#3c,#1c,#1c,#1c,#7f,#7f
	db #00,#7e,#7f,#07,#3e,#70,#7f,#7f
	db #00,#3e,#7f,#07,#1e,#07,#7f,#3e
	db #00,#07,#0f,#1f,#3f,#77,#7f,#07
	db #00,#7e,#7e,#70,#7e,#07,#7f,#7e
	db #00,#3e,#7e,#70,#7e,#77,#7f,#3e
	db #00,#7f,#7f,#07,#0e,#1c,#1c,#1c
	db #00,#3e,#7f,#77,#3e,#77,#7f,#3e
	db #00,#3e,#7f,#77,#3f,#07,#3f,#3e
	db #00,#00,#1c,#1c,#00,#1c,#1c,#00
	db #00,#00,#1c,#1c,#00,#1c,#1c,#38
	db #00,#00,#1c,#38,#70,#38,#1c,#00
	db #00,#00,#3e,#3e,#00,#3e,#3e,#00
	db #00,#00,#38,#1c,#0e,#1c,#38,#00
	db #00,#7e,#7f,#0e,#1c,#00,#1c,#1c
	db #00,#3e,#73,#6f,#6e,#70,#7e,#3e
	db #00,#3e,#7f,#7f,#77,#7f,#7f,#77
	db #00,#7e,#7f,#77,#7e,#77,#7f,#7e
	db #00,#3e,#7f,#7f,#70,#7f,#7f,#3e
	db #00,#7e,#7f,#77,#77,#77,#7f,#7e
	db #00,#7f,#7f,#70,#7e,#70,#7f,#7f
	db #00,#7f,#7f,#70,#7e,#70,#70,#70
	db #00,#3e,#7f,#70,#77,#77,#7f,#3e
	db #00,#77,#77,#7f,#7f,#7f,#77,#77
	db #00,#7f,#7f,#1c,#1c,#1c,#7f,#7f
	db #00,#07,#07,#07,#77,#77,#7f,#3e
	db #00,#77,#7f,#7e,#7c,#7e,#7f,#77
	db #00,#70,#70,#70,#70,#70,#7f,#7f
	db #00,#41,#63,#77,#7f,#7f,#7f,#77
	db #00,#67,#77,#7f,#7f,#7f,#77,#73
	db #00,#3e,#7f,#7f,#77,#7f,#7f,#3e
	db #00,#7e,#7f,#77,#7f,#7e,#70,#70
	db #00,#3e,#7f,#7f,#71,#76,#7b,#3d
	db #00,#7e,#7f,#77,#7f,#7e,#77,#73
	db #00,#3e,#7f,#70,#3e,#07,#7f,#7e
	db #00,#7f,#7f,#1c,#1c,#1c,#1c,#1c
	db #00,#77,#77,#77,#77,#77,#7f,#3e
	db #00,#77,#77,#77,#77,#77,#3e,#1c
	db #00,#77,#77,#7f,#7f,#7f,#77,#63
	db #00,#77,#7f,#3e,#1c,#3e,#7f,#77
	db #00,#77,#7f,#3e,#1c,#1c,#1c,#1c
	db #00,#7f,#7f,#0e,#1c,#38,#7f,#7f
	db #00,#1e,#1e,#1c,#1c,#1c,#1e,#1e
	db #00,#00,#e0,#70,#38,#1c,#0e,#00
	db #00,#78,#78,#38,#38,#38,#78,#78
	db #00,#08,#1c,#3e,#7f,#1c,#1c,#1c
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#1e,#3f,#38,#7e,#38,#7f,#7f
	db #00,#00,#00,#3e,#07,#3f,#77,#3f
	db #00,#00,#70,#70,#7e,#77,#77,#7e
	db #00,#00,#00,#3e,#7e,#70,#7e,#3e
	db #00,#07,#07,#07,#3f,#77,#77,#3f
	db #00,#00,#00,#3e,#77,#7e,#70,#3e
	db #00,#00,#1e,#3b,#7c,#38,#38,#38
	db #00,#00,#00,#3e,#77,#3f,#07,#3e
	db #00,#00,#70,#70,#7e,#7f,#77,#77
	db #00,#00,#1c,#1c,#00,#3c,#1c,#3e
	db #00,#07,#07,#00,#07,#07,#77,#3e
	db #00,#00,#70,#77,#7e,#7c,#7e,#77
	db #00,#00,#38,#38,#38,#38,#3c,#1c
	db #00,#00,#00,#7e,#7f,#6b,#6b,#6b
	db #00,#00,#00,#7e,#7f,#77,#77,#77
	db #00,#00,#00,#3e,#7f,#77,#7f,#3e
	db #00,#00,#00,#7e,#77,#77,#7e,#70
	db #00,#00,#00,#3f,#77,#7f,#3f,#07
	db #00,#00,#00,#76,#7f,#7b,#70,#70
	db #00,#00,#00,#3e,#70,#3e,#07,#7e
	db #00,#00,#38,#7e,#38,#38,#3c,#1c
	db #00,#00,#00,#77,#77,#77,#7f,#3e
	db #00,#00,#00,#77,#77,#3e,#3e,#1c
	db #00,#00,#00,#63,#6b,#6b,#7f,#36
	db #00,#00,#00,#77,#3e,#1c,#3e,#77
	db #00,#00,#00,#77,#77,#3f,#07,#3e
	db #00,#00,#00,#7f,#0e,#1c,#38,#7f
	db #00,#0e,#1c,#1c,#38,#1c,#1c,#0e
	db #18,#18,#18,#18,#18,#18,#18,#18
	db #00,#70,#38,#38,#1c,#38,#38,#70
	db #00,#3b,#6e,#00,#00,#00,#00,#00
	db #3c,#66,#db,#d3,#d3,#db,#66,#3c
;
; #6a61 init 
;
.music_info
	db "Happy New 2015 Year (2015)(Public Domain)(Andrew Stegnitskiy)",0
	db "ProTracker3.5",0

	read "music_end.asm"
