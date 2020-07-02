; Music of Otto Issue 4 - Music 4 (1996)(Public Domain)()(ST-128 Module)
; Ripped by Megachur the 27/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OTTOI4M4.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8100

	read "music_header.asm"

	jr l8104
	jr l8113
.l8104
	call l812f
	ld hl,l8552
	ld de,l811c
	ld bc,l81ff
	jp #bcd7
.l8113
	ld hl,l8552
	call #bcdd
	jp l819b
.l811c
	push ix
	call l81b7
	pop ix
	ret
	jp l812f
	jp l81b7
	jp l819b
	db #66,#04
;
.init_music
.l812f
;
	ld b,#03
	ld ix,l84fe
	ld iy,l842a
	ld de,#001c
.l813c
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
	djnz l813c
	ld a,#05
	ld (l81df),a
	ld a,d
	ld (l81f3),a
	inc a
	ld (l81da),a
	ld a,#38
	ld (l81e4),a
	ld a,#ff
	ld (l8426),a
	ld (l8427),a
	ld (l8428),a
	ld (l8429),a
	ld a,#0c
	ld c,d
	call l8408
	ld a,#0d
	ld c,d
	jp l8408
;
.stop_music
.l819b
;
	ld a,#07
	ld c,#3f
	call l8408
	ld a,#08
	ld c,#00
	call l8408
	ld a,#09
	ld c,#00
	call l8408
	ld a,#0a
	ld c,#00
	jp l8408
;
.play_music
.l81b7
;
	ld hl,l81da
	dec (hl)
	ld ix,l84fe
	ld bc,l850c
	call l826d
	ld ix,l851a
	ld bc,l8528
	call l826d
	ld ix,l8536
	ld bc,l8544
	call l826d
.l81da equ $ + 1
	ld a,#00
	or a
	jr nz,l81e3
.l81df equ $ + 1
	ld a,#00
	ld (l81da),a
.l81e4 equ $ + 1
.l81e3
	ld a,#00
	ld hl,l8427
	cp (hl)
	jr z,l81f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l8408
.l81f3 equ $ + 1
.l81f2
	ld a,#00
	ld hl,l8426
	cp (hl)
	jr z,l8201
	ld (hl),a
	ld c,a
	ld a,#06
.l81ff equ $ + 1
	call l8408
.l8202 equ $ + 1
.l8201
	ld a,#00
	ld hl,l8428
	cp (hl)
	jr z,l8210
	ld (hl),a
	ld c,a
	ld a,#0b
	call l8408
.l8211 equ $ + 1
.l8210
	ld a,#00
	ld hl,l8429
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l8408
.l821e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l831e
.l822d
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
	jp l8408
.l8247
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l825c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l825c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l8280
.l826d
	ld a,(l81da)
	or a
	jp nz,l831e
	dec (ix+#06)
	jp nz,l831e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l8280
	ld a,(hl)
	or a
	jr z,l821e
	cp #fe
	jr z,l822d
	cp #ff
	jr z,l8247
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l8430
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l82bc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l82bc
	and #7f
	ld (ix+#06),a
	jr l830f
.l82bc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l82d0
	ld (ix+#05),a
	ld (ix+#0a),d
.l82d0
	add a
	add a
	add a
	ld e,a
	ld hl,l8566
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
	jr z,l830f
	cp #f0
	jp z,l83c4
	cp #d0
	jp z,l83e0
	cp #b0
	jp z,l83e8
	cp #80
	jp nc,l83f0
	cp #10
	jr nz,l830f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l830f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l831e
	ld a,(ix+#17)
	or a
	jr nz,l8332
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l8332
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l835d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l8430
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l835d
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
	call l8408
	ld c,h
	ld a,(ix+#03)
	call l8408
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l839b
	and #0f
	sub (ix+#0a)
	jr nc,l8391
	xor a
.l8391
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l8408
.l839b
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
	jr z,l83b8
	ld b,a
	ld a,c
	ld (l81f3),a
	ld a,b
	sub #40
.l83b8
	ld (l83bf),a
	ld a,(l81e4)
.l83bf equ $ + 1
	bit 0,a
	ld (l81e4),a
	ret
.l83c4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l85e6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l830f
.l83e0
	inc hl
	ld a,(hl)
	ld (l81df),a
	jp l830f
.l83e8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l830f
.l83f0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l8211),a
	inc hl
	ld a,(hl)
	ld (l8202),a
	jp l830f
.l8408
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
.l8429 equ $ + 3
.l8428 equ $ + 2
.l8427 equ $ + 1
.l8426
	db #ff,#ff,#ff,#ff
.l842a
	dw l8746,l8788,l87ca
.l8430
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
	db #00,#00,#00,#00
.l84fe
	db #00,#00,#00,#01,#08,#00,#00,#00
.l850c equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l851a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l8528 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8536
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l8544 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8552 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l8566
	db #06,#86,#46,#86,#66,#86,#00,#00
	db #86,#86,#c6,#86,#66,#86,#00,#00
	db #e6,#86,#26,#87,#66,#86,#00,#00
	db #00,#80,#00,#80,#00,#80,#00,#00
	db #00,#80,#00,#80,#00,#80,#00,#00
	db #00,#80,#00,#80,#00,#80,#00,#00
	db #00,#80,#00,#80,#00,#80,#00,#00
	db #00,#80,#00,#80,#00,#80,#00,#00
	db #00,#80,#00,#80,#00,#80,#00,#00
	db #00,#80,#00,#80,#00,#80,#00,#00
	db #00,#80,#00,#80,#00,#80,#00,#00
	db #00,#80,#00,#80,#00,#80,#00,#00
	db #00,#80,#00,#80,#00,#80,#00,#00
	db #00,#80,#00,#80,#00,#80,#00,#00
	db #00,#80,#00,#80,#00,#80,#00,#00
	db #00,#80,#00,#80,#00,#80,#00,#00
.l85e6
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#00,#9d,#ff,#61,#ff,#00,#00
	db #9d,#ff,#61,#ff,#00,#00,#9d,#ff
	db #61,#ff,#00,#00,#9d,#ff,#61,#ff
	db #00,#00,#9d,#ff,#61,#ff,#00,#00
	db #9d,#ff,#61,#ff,#00,#00,#9d,#ff
	db #61,#ff,#00,#00,#9d,#ff,#61,#ff
	db #00,#00,#9d,#ff,#61,#ff,#00,#00
	db #9d,#ff,#61,#ff,#00,#00,#9d,#ff
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #30,#03,#60,#03,#90,#03,#c0,#03
	db #f0,#03,#20,#04,#50,#04,#80,#04
	db #b0,#04,#e0,#04,#10,#05,#40,#05
	db #70,#05,#a0,#05,#d0,#05,#00,#06
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
.l8746
	db #00,#0c,#88,#00,#1e,#88,#00,#1e
	db #88,#00,#21,#88,#00,#0c,#88,#00
	db #1e,#88,#00,#1e,#88,#00,#21,#88
	db #00,#0c,#88,#00,#1e,#88,#00,#1e
	db #88,#00,#21,#88,#00,#24,#88,#00
	db #42,#88,#00,#67,#88,#00,#89,#88
	db #00,#89,#88,#00,#42,#88,#00,#67
	db #88,#00,#89,#88,#00,#89,#88,#80
.l8788 equ $ + 2
	db #46,#87,#00,#9b,#88,#00,#ad,#88
	db #00,#ad,#88,#00,#bd,#88,#00,#9b
	db #88,#00,#c9,#88,#00,#ad,#88,#00
	db #bd,#88,#00,#9b,#88,#00,#c9,#88
	db #00,#d3,#88,#00,#bd,#88,#00,#e9
	db #88,#00,#09,#89,#00,#4a,#89,#00
	db #09,#89,#00,#09,#89,#00,#09,#89
	db #00,#4a,#89,#00,#09,#89,#00,#09
.l87ca equ $ + 4
	db #89,#80,#88,#87,#00,#8b,#89,#00
	db #9d,#89,#00,#9d,#89,#00,#a0,#89
	db #00,#8b,#89,#00,#a3,#89,#00,#9d
	db #89,#00,#a0,#89,#00,#8b,#89,#00
	db #a3,#89,#00,#a6,#89,#00,#a0,#89
	db #00,#a9,#89,#00,#b5,#89,#00,#b8
	db #89,#00,#bb,#89,#00,#bb,#89,#00
	db #b5,#89,#00,#b8,#89,#00,#bb,#89
	db #00,#bb,#89,#80,#ca,#87,#43,#04
	db #d1,#05,#46,#07,#01,#45,#82,#43
	db #82,#41,#82,#45,#82,#43,#8d,#ff
	db #fe,#20,#ff,#fe,#20,#ff,#43,#02
	db #d1,#05,#3e,#02,#01,#41,#82,#3c
	db #82,#3f,#82,#3a,#82,#3e,#82,#39
	db #82,#37,#82,#37,#82,#37,#82,#37
	db #82,#37,#88,#ff,#43,#02,#d1,#07
	db #c5,#01,#c6,#01,#45,#82,#43,#82
	db #45,#82,#4a,#82,#45,#84,#43,#82
	db #c5,#01,#c6,#01,#45,#82,#43,#82
	db #43,#82,#42,#82,#43,#82,#45,#82
	db #ff,#43,#02,#01,#c5,#01,#c6,#01
	db #45,#82,#43,#82,#45,#82,#4a,#82
	db #45,#84,#46,#82,#c8,#01,#ca,#01
	db #48,#82,#46,#82,#48,#82,#4d,#82
	db #48,#84,#ff,#51,#04,#01,#51,#84
	db #51,#84,#d1,#01,#cf,#01,#cd,#01
	db #c8,#01,#4a,#90,#ff,#00,#01,#43
	db #04,#01,#46,#87,#45,#82,#43,#82
	db #41,#82,#45,#82,#43,#8c,#ff,#5b
	db #08,#d0,#05,#4f,#08,#00,#5b,#86
	db #4f,#83,#4f,#85,#4f,#82,#ff,#29
	db #08,#d2,#02,#29,#08,#02,#29,#10
	db #d2,#04,#ff,#5b,#09,#d0,#05,#4f
	db #12,#00,#5b,#85,#ff,#5b,#05,#d0
	db #05,#4f,#04,#00,#4f,#87,#5b,#84
	db #5b,#84,#4f,#82,#5b,#82,#4f,#82
	db #5b,#82,#ff,#00,#01,#43,#02,#01
	db #3e,#82,#41,#82,#3c,#82,#3f,#82
	db #3a,#82,#3e,#82,#39,#82,#37,#82
	db #37,#82,#37,#82,#37,#82,#37,#07
	db #d1,#0a,#ff,#ab,#01,#ab,#01,#b7
	db #01,#ab,#01,#ab,#01,#ab,#01,#b7
	db #01,#ab,#01,#a9,#01,#a9,#01,#b5
	db #01,#a9,#01,#a9,#01,#a9,#01,#b5
	db #01,#a9,#01,#a7,#01,#a7,#01,#b3
	db #01,#a7,#01,#a7,#01,#a7,#01,#b3
	db #01,#a7,#01,#a6,#01,#a6,#01,#b2
	db #01,#a6,#01,#a6,#01,#a6,#01,#b2
	db #01,#a6,#01,#ff,#ab,#01,#ab,#01
	db #b7,#01,#ab,#01,#ab,#01,#ab,#01
	db #b7,#01,#ab,#01,#a9,#01,#a9,#01
	db #b5,#01,#a9,#01,#a9,#01,#a9,#01
	db #b5,#01,#a9,#01,#a7,#01,#a7,#01
	db #b3,#01,#a7,#01,#a7,#01,#a7,#01
	db #b3,#01,#a7,#01,#a9,#01,#a9,#01
	db #b5,#01,#a9,#01,#a9,#01,#a9,#01
	db #b5,#01,#a9,#01,#ff,#2b,#04,#01
	db #2e,#8f,#2b,#82,#26,#82,#2b,#82
	db #26,#82,#2b,#05,#d1,#0f,#ff,#fe
	db #20,#ff,#fe,#20,#ff,#fe,#20,#ff
	db #fe,#20,#ff,#2b,#04,#01,#2b,#84
	db #27,#84,#27,#84,#2b,#90,#ff,#fe
	db #20,#ff,#fe,#20,#ff,#fe,#20,#ff
;
.music_info
	db "Otto Issue 4 - Music 4 (1996)(Public Domain)()",0
	db "ST-128 Module",0

	read "music_end.asm"
