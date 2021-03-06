; Music of PC Slideshow No1 (1993)(TGS)()(ST-Module)
; Ripped by Megachur the 02/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PCSLIDN1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8130

	read "music_header.asm"

	jp l813b
	jp l81c3
	jp l81a7
	db #66,#04
;
.init_music
.l813b
;
	ld b,#03
	ld ix,l850a
	ld iy,l8436
	ld de,#001c
.l8148
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l8148
	ld a,#06
	ld (l81eb),a
	ld a,d
	ld (l81ff),a
	inc a
	ld (l81e6),a
	ld a,#38
	ld (l81f0),a
	ld a,#ff
	ld (l8432),a
	ld (l8433),a
	ld (l8434),a
	ld (l8435),a
	ld a,#0c
	ld c,d
	call l8414
	ld a,#0d
	ld c,d
	jp l8414
;
.stop_music
.l81a7
;
	ld a,#07
	ld c,#3f
	call l8414
	ld a,#08
	ld c,#00
	call l8414
	ld a,#09
	ld c,#00
	call l8414
	ld a,#0a
	ld c,#00
	jp l8414
;
.play_music
.l81c3
;
	ld hl,l81e6
	dec (hl)
	ld ix,l850a
	ld bc,l8518
	call l8279
	ld ix,l8526
	ld bc,l8534
	call l8279
	ld ix,l8542
	ld bc,l8550
	call l8279
.l81e6 equ $ + 1
	ld a,#00
	or a
	jr nz,l81ef
.l81eb equ $ + 1
	ld a,#00
	ld (l81e6),a
.l81f0 equ $ + 1
.l81ef
	ld a,#00
	ld hl,l8433
	cp (hl)
	jr z,l81fe
	ld (hl),a
	ld c,a
	ld a,#07
	call l8414
.l81ff equ $ + 1
.l81fe
	ld a,#00
	ld hl,l8432
	cp (hl)
	jr z,l820d
	ld (hl),a
	ld c,a
	ld a,#06
	call l8414
.l820e equ $ + 1
.l820d
	ld a,#00
	ld hl,l8434
	cp (hl)
	jr z,l821c
	ld (hl),a
	ld c,a
	ld a,#0b
	call l8414
.l821d equ $ + 1
.l821c
	ld a,#00
	ld hl,l8435
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l8414
.l822a
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l832a
.l8239
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l8414
.l8253
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l8268
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l8268
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l828c
.l8279
	ld a,(l81e6)
	or a
	jp nz,l832a
	dec (ix+#06)
	jp nz,l832a
	ld l,(ix+#00)
	ld h,(ix+#01)
.l828c
	ld a,(hl)
	or a
	jr z,l822a
	cp #fe
	jr z,l8239
	cp #ff
	jr z,l8253
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l843c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l82c8
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l82c8
	and #7f
	ld (ix+#06),a
	jr l831b
.l82c8
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l82dc
	ld (ix+#05),a
	ld (ix+#0a),d
.l82dc
	add a
	add a
	add a
	ld e,a
	ld hl,l8572
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l831b
	cp #f0
	jp z,l83d0
	cp #d0
	jp z,l83ec
	cp #b0
	jp z,l83f4
	cp #80
	jp nc,l83fc
	cp #10
	jr nz,l831b
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l831b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l832a
	ld a,(ix+#17)
	or a
	jr nz,l833e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l833e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l8369
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l843c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l8369
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l8414
	ld c,h
	ld a,(ix+#03)
	call l8414
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l83a7
	and #0f
	sub (ix+#0a)
	jr nc,l839d
	xor a
.l839d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l8414
.l83a7
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l83c4
	ld b,a
	ld a,c
	ld (l81ff),a
	ld a,b
	sub #40
.l83c4
	ld (l83cb),a
	ld a,(l81f0)
.l83cb equ $ + 1
	bit 0,a
	ld (l81f0),a
	ret
.l83d0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l85f2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l831b
.l83ec
	inc hl
	ld a,(hl)
	ld (l81eb),a
	jp l831b
.l83f4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l831b
.l83fc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l821d),a
	inc hl
	ld a,(hl)
	ld (l820e),a
	jp l831b
.l8414
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	ret
.l8435 equ $ + 3
.l8434 equ $ + 2
.l8433 equ $ + 1
.l8432
	db #ff,#ff,#ff,#ff
.l8436
	dw l8852,l8864,l8876
.l843c
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
	dw #000f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l850a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l8518 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8526
	db #00,#00,#02,#03,#09,#00,#00,#00
.l8534 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8542 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l8550 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l8572 equ $ + 4
	db #75,#6c,#65,#2e,#12,#86,#52,#86
	db #72,#86,#00,#00,#92,#86,#d2,#86
	db #f2,#86,#00,#00,#51,#ac,#2e,#aa
	db #3a,#c2,#41,#4b,#2e,#8d,#3d,#ac
	db #3c,#ba,#42,#4f,#5e,#c4,#51,#d2
	db #2c,#b2,#33,#0d,#9c,#83,#be,#83
	db #d1,#83,#fe,#03,#12,#87,#52,#87
	db #72,#87,#0b,#15,#69,#84,#71,#84
	db #90,#84,#a3,#04,#12,#87,#92,#87
	db #72,#87,#00,#00,#b2,#87,#f2,#87
	db #72,#87,#08,#18,#0c,#80,#0c,#80
	db #0c,#80,#00,#00,#0c,#80,#0c,#80
	db #0c,#80,#00,#00,#0c,#80,#0c,#80
	db #0c,#80,#00,#00,#0c,#80,#0c,#80
	db #0c,#80,#00,#00,#0c,#80,#0c,#80
	db #0c,#80,#00,#00,#0c,#80,#0c,#80
.l85f2 equ $ + 4
	db #0c,#80,#00,#00,#0c,#80,#0c,#80
	db #12,#88,#32,#88,#0c,#80,#0c,#80
	db #0c,#80,#0c,#80,#0c,#80,#0c,#80
	db #0c,#80,#0c,#80,#0c,#80,#0c,#80
	db #0c,#80,#0c,#80,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0b,#0b,#0a,#0a
	db #09,#06,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0d,#0c,#0c
	db #0b,#0a,#09,#08,#08,#07,#07,#06
	db #05,#04,#04,#04,#04,#03,#02,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#06,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#07,#07,#07,#08
	db #08,#08,#09,#09,#09,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0e,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#0a,#09
	db #09,#08,#08,#07,#06,#05,#04,#03
	db #02,#01,#01,#01,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#0d,#0c,#0b,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
.l8852 equ $ + 4
	db #04,#07,#00,#04,#00,#88,#88,#00
	db #8b,#88,#00,#97,#88,#00,#a7,#88
.l8864 equ $ + 6
	db #00,#a7,#88,#80,#55,#88,#00,#cb
	db #88,#00,#fb,#88,#00,#3c,#89,#00
	db #3c,#89,#00,#3c,#89,#80,#67,#88
.l8876
	db #00,#8e,#89,#00,#9b,#89,#00,#a8
	db #89,#00,#b5,#89,#00,#b5,#89,#80
	db #79,#88,#00,#40,#ff,#43,#10,#09
	db #45,#90,#46,#90,#48,#88,#49,#88
	db #ff,#4a,#10,#09,#4f,#86,#51,#86
	db #4d,#94,#4b,#86,#48,#86,#46,#84
	db #ff,#45,#06,#08,#45,#84,#46,#82
	db #43,#84,#45,#86,#45,#84,#45,#82
	db #46,#82,#43,#82,#45,#86,#45,#84
	db #46,#82,#43,#84,#41,#82,#43,#84
	db #46,#86,#45,#84,#ff,#2b,#02,#08
	db #2b,#82,#2b,#82,#ab,#08,#ad,#08
	db #ae,#08,#ad,#08,#2b,#82,#ab,#08
	db #2d,#83,#29,#90,#27,#82,#27,#82
	db #27,#82,#a7,#08,#a9,#08,#ab,#08
	db #a9,#08,#27,#82,#a7,#08,#29,#83
	db #24,#88,#29,#88,#ff,#2b,#02,#08
	db #2b,#82,#3a,#02,#01,#ab,#08,#ad
	db #08,#ae,#08,#ad,#08,#2b,#82,#ba
	db #01,#2d,#03,#08,#29,#84,#3a,#08
	db #01,#3a,#84,#27,#02,#08,#27,#82
	db #3a,#02,#01,#a7,#08,#a9,#08,#ab
	db #08,#a9,#08,#27,#82,#ba,#01,#29
	db #03,#08,#24,#84,#3a,#04,#01,#29
	db #04,#08,#3a,#04,#01,#ff,#1f,#02
	db #08,#1f,#82,#ba,#00,#1f,#02,#08
	db #9f,#08,#1f,#82,#1f,#82,#ba,#00
	db #1f,#03,#08,#21,#82,#21,#82,#ba
	db #00,#21,#02,#08,#a1,#08,#21,#82
	db #21,#82,#ba,#00,#21,#03,#08,#1b
	db #82,#1b,#82,#ba,#00,#1b,#02,#08
	db #9b,#08,#1b,#82,#1b,#82,#ba,#00
	db #1b,#03,#08,#1d,#82,#1d,#82,#ba
	db #00,#1d,#02,#08,#9d,#08,#1d,#82
	db #1d,#82,#ba,#00,#1d,#03,#08,#ff
	db #43,#10,#f6,#02,#41,#10,#f6,#03
	db #3f,#90,#41,#90,#ff,#43,#10,#f6
	db #02,#41,#10,#f6,#03,#3f,#90,#41
	db #90,#ff,#43,#10,#f6,#02,#41,#10
	db #f6,#03,#3f,#90,#41,#90,#ff,#43
	db #10,#f6,#02,#41,#10,#f6,#03,#3f
	db #90,#41,#90,#ff
;
.music_info
	db "PC Slideshow No1 (1993)(TGS)()",0
	db "ST-Module",0

	read "music_end.asm"
