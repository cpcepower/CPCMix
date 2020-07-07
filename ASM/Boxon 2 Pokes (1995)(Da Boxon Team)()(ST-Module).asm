; Music of Boxon 2 Pokes (1995)(Da Boxon Team)()(ST-Module)
; Ripped by Megachur the 06/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOXON2PO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #6000

	read "music_header.asm"

	jp l600b
	jp l6093
	jp l6077
	db #66,#04
;
.init_music
.l600b
;
	ld b,#03
	ld ix,l63da
	ld iy,l6306
	ld de,#001c
.l6018
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
	djnz l6018
	ld a,#06
	ld (l60bb),a
	ld a,d
	ld (l60cf),a
	inc a
	ld (l60b6),a
	ld a,#38
	ld (l60c0),a
	ld a,#ff
	ld (l6302),a
	ld (l6303),a
	ld (l6304),a
	ld (l6305),a
	ld a,#0c
	ld c,d
	call l62e4
	ld a,#0d
	ld c,d
	jp l62e4
;
.stop_music
.l6077
;
	ld a,#07
	ld c,#3f
	call l62e4
	ld a,#08
	ld c,#00
	call l62e4
	ld a,#09
	ld c,#00
	call l62e4
	ld a,#0a
	ld c,#00
	jp l62e4
;
.play_music
.l6093
;
	ld hl,l60b6
	dec (hl)
	ld ix,l63da
	ld bc,l63e8
	call l6149
	ld ix,l63f6
	ld bc,l6404
	call l6149
	ld ix,l6412
	ld bc,l6420
	call l6149
.l60b6 equ $ + 1
	ld a,#02
	or a
	jr nz,l60bf
.l60bb equ $ + 1
	ld a,#06
	ld (l60b6),a
.l60c0 equ $ + 1
.l60bf
	ld a,#38
	ld hl,l6303
	cp (hl)
	jr z,l60ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l62e4
.l60cf equ $ + 1
.l60ce
	ld a,#01
	ld hl,l6302
	cp (hl)
	jr z,l60dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l62e4
.l60de equ $ + 1
.l60dd
	ld a,#18
	ld hl,l6304
	cp (hl)
	jr z,l60ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l62e4
.l60ed equ $ + 1
.l60ec
	ld a,#08
	ld hl,l6305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l62e4
.l60fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l61fa
.l6109
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
	jp l62e4
.l6123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l6138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l6138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l615c
.l6149
	ld a,(l60b6)
	or a
	jp nz,l61fa
	dec (ix+#06)
	jp nz,l61fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l615c
	ld a,(hl)
	or a
	jr z,l60fa
	cp #fe
	jr z,l6109
	cp #ff
	jr z,l6123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l630c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l6198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l6198
	and #7f
	ld (ix+#06),a
	jr l61eb
.l6198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l61ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l61ac
	add a
	add a
	add a
	ld e,a
	ld hl,l6442
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
	jr z,l61eb
	cp #f0
	jp z,l62a0
	cp #d0
	jp z,l62bc
	cp #b0
	jp z,l62c4
	cp #80
	jp nc,l62cc
	cp #10
	jr nz,l61eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l61eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l61fa
	ld a,(ix+#17)
	or a
	jr nz,l620e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l620e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l6239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l630c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l6239
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
	call l62e4
	ld c,h
	ld a,(ix+#03)
	call l62e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6277
	and #0f
	sub (ix+#0a)
	jr nc,l626d
	xor a
.l626d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l62e4
.l6277
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
	jr z,l6294
	ld b,a
	ld a,c
	ld (l60cf),a
	ld a,b
	sub #40
.l6294
	ld (l629b),a
	ld a,(l60c0)
.l629b equ $ + 1
	set 5,a
	ld (l60c0),a
	ret
.l62a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l64c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l61eb
.l62bc
	inc hl
	ld a,(hl)
	ld (l60bb),a
	jp l61eb
.l62c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l61eb
.l62cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l60ed),a
	inc hl
	ld a,(hl)
	ld (l60de),a
	jp l61eb
.l62e4
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
.l6305 equ $ + 3
.l6304 equ $ + 2
.l6303 equ $ + 1
.l6302
	db #01,#38,#18,#08
.l6306
	dw l6682,l6691,l66a0
.l630c
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
.l63da equ $ + 4
	db #00,#00,#00,#00,#ef,#66,#00,#01
	db #08,#01,#01,#3b,#00,#00,#05,#df
.l63e8 equ $ + 2
	db #88,#66,#e2,#64,#62,#65,#42,#65
	db #00,#00,#05,#1b,#7f,#00,#00,#00
.l63f6
	db #e6,#67,#02,#03,#09,#00,#02,#1c
.l6404 equ $ + 6
	db #00,#10,#00,#e7,#97,#66,#e2,#64
	db #22,#65,#42,#65,#00,#00,#05,#1b
.l6412 equ $ + 4
	db #f6,#02,#00,#00,#c7,#68,#04,#05
	db #0a,#05,#02,#3e,#00,#00,#00,#ef
.l6420 equ $ + 2
	db #a6,#66,#e2,#64,#02,#66,#42,#65
	db #0b,#15,#11,#0f,#50,#00,#42,#66
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#64,#22,#65
	db #42,#65,#00,#00,#e2,#64,#62,#65
	db #42,#65,#00,#00,#82,#65,#c2,#65
	db #e2,#65,#00,#00,#ff,#3e,#21,#d1
	db #70,#9d,#23,#56,#23,#40,#10,#3f
	db #09,#bd,#23,#4e,#e2,#64,#02,#66
	db #42,#65,#0b,#15,#08,#7b,#2b,#65
	db #00,#2c,#b0,#18,#ec,#3d,#a0,#6f
	db #08,#15,#4d,#4f,#06,#3f,#af,#57
	db #75,#3d,#f0,#30,#09,#15,#c6,#81
	db #e6,#80,#08,#18,#e6,#81,#26,#82
	db #46,#82,#00,#00,#00,#f8,#00,#f8
	db #00,#f8,#00,#00,#00,#f8,#00,#f8
	db #00,#f8,#00,#00,#00,#f8,#00,#f8
	db #00,#f8,#00,#00,#00,#f8,#00,#f8
	db #00,#f8,#00,#00,#00,#f8,#00,#f8
.l64c2 equ $ + 4
	db #00,#f8,#00,#00,#46,#ff,#86,#c0
	db #a6,#c0,#c6,#c0,#22,#66,#42,#66
	db #62,#66,#00,#f8,#00,#f8,#00,#f8
	db #00,#f8,#00,#f8,#00,#f8,#00,#f8
	db #00,#f8,#00,#f8,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0b,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#09,#07
	db #05,#03,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#08,#08,#08
	db #08,#08,#07,#07,#07,#07,#07,#06
	db #05,#03,#02,#01,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #03,#02,#01,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#06,#06,#06,#07
	db #07,#07,#08,#08,#08,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#00,#05,#09,#00
	db #05,#09,#00,#05,#09,#00,#05,#09
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #09,#00,#05,#09,#00,#05,#09,#00
	db #05,#09,#00,#05,#00,#05,#08,#00
	db #05,#08,#00,#05,#08,#00,#05,#08
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #08,#00,#05,#08,#00,#05,#08,#00
.l6682 equ $ + 4
	db #05,#08,#00,#05,#00,#af,#66,#00
	db #af,#66,#00,#f9,#66,#00,#15,#67
.l6691 equ $ + 3
	db #80,#82,#66,#00,#33,#67,#00,#b0
	db #67,#00,#33,#67,#00,#2d,#68,#80
.l66a0 equ $ + 2
	db #91,#66,#00,#aa,#68,#00,#bf,#68
	db #00,#aa,#68,#00,#aa,#68,#80,#a0
	db #66,#4a,#03,#b1,#00,#ca,#b1,#03
	db #46,#02,#b1,#00,#ca,#b1,#05,#c6
	db #b1,#03,#45,#02,#b1,#00,#c6,#b1
	db #00,#45,#02,#b1,#03,#c6,#b1,#03
	db #4a,#02,#b1,#00,#c6,#b1,#05,#ca
	db #b1,#00,#46,#82,#c5,#b1,#00,#c6
	db #b1,#03,#c6,#b1,#00,#c5,#b1,#03
	db #c3,#b1,#00,#c6,#b1,#03,#c5,#b1
	db #05,#c3,#b1,#03,#46,#02,#b1,#05
	db #43,#a2,#ff,#43,#0e,#01,#c3,#01
	db #c5,#01,#46,#84,#45,#84,#43,#83
	db #41,#83,#45,#82,#43,#8c,#3e,#84
	db #41,#86,#43,#86,#41,#84,#ff,#3a
	db #0e,#01,#ba,#01,#bc,#01,#3e,#83
	db #3c,#83,#3a,#82,#41,#83,#3e,#83
	db #46,#82,#43,#96,#c3,#01,#c5,#01
	db #46,#84,#45,#84,#ff,#1f,#02,#80
	db #24,#2b,#02,#80,#12,#1f,#02,#80
	db #24,#2b,#02,#80,#12,#3a,#02,#12
	db #2e,#02,#80,#0f,#2d,#02,#80,#10
	db #29,#02,#80,#14,#1f,#02,#80,#24
	db #2b,#02,#80,#12,#1f,#02,#80,#24
	db #2b,#02,#80,#12,#3a,#02,#12,#26
	db #02,#80,#18,#29,#02,#80,#14,#2b
	db #02,#80,#12,#1f,#02,#80,#24,#2b
	db #02,#80,#12,#1f,#02,#80,#24,#2b
	db #02,#80,#12,#3a,#02,#12,#2e,#02
	db #80,#0f,#2d,#02,#80,#10,#29,#02
	db #80,#14,#1f,#02,#80,#24,#2b,#02
	db #80,#12,#1f,#02,#80,#24,#2b,#02
	db #80,#12,#3a,#02,#12,#26,#02,#80
	db #18,#24,#02,#80,#1b,#22,#02,#80
	db #1e,#ff,#1b,#02,#80,#1e,#27,#02
	db #80,#0f,#1b,#02,#80,#1e,#27,#02
	db #80,#0f,#3a,#02,#12,#2e,#02,#80
	db #0f,#2d,#02,#80,#10,#29,#02,#80
	db #14,#1b,#02,#80,#1e,#27,#02,#80
	db #0f,#1b,#02,#80,#1e,#27,#02,#80
	db #0f,#3a,#02,#12,#26,#02,#80,#18
	db #29,#02,#80,#14,#24,#02,#80,#1b
	db #1b,#02,#80,#1e,#27,#02,#80,#0f
	db #1b,#02,#80,#1e,#27,#02,#80,#0f
	db #3a,#02,#12,#2e,#02,#80,#0f,#2d
	db #02,#80,#10,#29,#02,#80,#14,#1b
	db #02,#80,#1e,#27,#02,#80,#0f,#1b
	db #02,#80,#1e,#27,#02,#80,#0f,#3a
	db #02,#12,#26,#02,#80,#18,#24,#02
	db #80,#1b,#22,#02,#80,#1e,#ff,#1b
	db #02,#80,#1e,#27,#02,#80,#0f,#1b
	db #02,#80,#1e,#27,#02,#80,#0f,#3a
	db #02,#12,#2e,#02,#80,#0f,#2d,#02
	db #80,#10,#29,#02,#80,#14,#1b,#02
	db #80,#1e,#27,#02,#80,#0f,#1b,#02
	db #80,#1e,#27,#02,#80,#0f,#3a,#02
	db #12,#26,#02,#80,#18,#29,#02,#80
	db #14,#24,#02,#80,#1b,#1b,#02,#80
	db #1e,#27,#02,#80,#0f,#1b,#02,#80
	db #1e,#27,#02,#80,#0f,#3a,#02,#12
	db #2e,#02,#80,#0f,#2d,#02,#80,#10
	db #29,#02,#80,#14,#1b,#02,#80,#1e
	db #27,#02,#80,#0f,#1b,#02,#80,#1e
	db #27,#02,#80,#0f,#3a,#02,#12,#26
	db #02,#80,#18,#24,#02,#80,#1b,#22
	db #02,#80,#1e,#ff,#4a,#18,#f5,#06
	db #48,#04,#f5,#05,#4d,#04,#f5,#04
	db #4a,#18,#f5,#06,#48,#08,#f5,#05
	db #ff,#4a,#18,#f5,#06,#48,#04,#f5
	db #05,#4d,#04,#f5,#04,#4a,#18,#f5
	db #06,#48,#08,#f5,#05,#ff,#00,#00
;
.music_info
	db "Boxon 2 Pokes (1995)(Da Boxon Team)()",0
	db "ST-Module",0

	read "music_end.asm"
