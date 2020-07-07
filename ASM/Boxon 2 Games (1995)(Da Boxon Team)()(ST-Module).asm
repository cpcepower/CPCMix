; Music of Boxon 2 Games (1995)(Da Boxon Team)()(ST-Module)
; Ripped by Megachur the 06/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOXON2GA.BIN"
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
	ld a,#04
	or a
	jr nz,l60bf
.l60bb equ $ + 1
	ld a,#06
	ld (l60b6),a
.l60c0 equ $ + 1
.l60bf
	ld a,#18
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
	ld a,#1e
	ld hl,l6304
	cp (hl)
	jr z,l60ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l62e4
.l60ed equ $ + 1
.l60ec
	ld a,#0a
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
	res 5,a
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
	db #01,#18,#1e,#0a
.l6306
	dw l6762,l679e,l67da
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
	db #00,#00,#00,#00,#63,#69,#00,#01
	db #08,#01,#01,#14,#00,#00,#00,#df
.l63e8 equ $ + 2
	db #74,#67,#e2,#64,#62,#65,#42,#65
	db #00,#00,#03,#1d,#b4,#04,#c2,#00
.l63f6
	db #72,#6b,#02,#03,#09,#05,#08,#4b
.l6404 equ $ + 6
	db #00,#00,#00,#e7,#b0,#67,#e2,#64
	db #62,#66,#42,#65,#0b,#15,#1e,#02
.l6412 equ $ + 4
	db #50,#00,#02,#67,#34,#71,#04,#05
	db #0a,#07,#01,#43,#00,#00,#00,#ef
.l6420 equ $ + 2
	db #ec,#67,#e2,#64,#82,#66,#a2,#66
	db #00,#00,#03,#1d,#50,#00,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#64,#22,#65
	db #42,#65,#00,#00,#e2,#64,#62,#65
	db #42,#65,#00,#00,#82,#65,#c2,#65
	db #e2,#65,#00,#00,#02,#66,#42,#66
	db #42,#65,#18,#07,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#e2,#64,#62,#66
	db #42,#65,#0b,#15,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#e2,#64,#82,#66
	db #a2,#66,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#b8,#9d
	db #94,#dc,#b8,#7d,#94,#dc,#b8,#9d
	db #94,#dc,#b8,#7d,#b8,#9d,#dc,#5e
	db #1e,#a5,#62,#46,#5e,#a5,#7e,#a5
	db #9e,#a5,#e2,#46,#de,#a5,#b7,#9d
	db #b6,#9d,#db,#3e,#b8,#9d,#b9,#9d
	db #ba,#9d,#dd,#3e,#b8,#9d,#b7,#9d
.l64c2 equ $ + 4
	db #dc,#5e,#00,#00,#c2,#66,#dc,#5e
	db #dc,#5e,#e2,#66,#02,#67,#22,#67
	db #42,#67,#dc,#5e,#dc,#5e,#dc,#5e
	db #dc,#5e,#dc,#5e,#dc,#5e,#dc,#5e
	db #dc,#5e,#dc,#5e,#00,#00,#00,#00
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
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0e,#0e,#0e,#0d
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#07
	db #05,#07,#09,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#09
	db #09,#09,#09,#09,#07,#07,#07,#08
	db #08,#08,#09,#09,#09,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0d,#0a,#07,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#f7,#00,#fb,#f7
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #f7,#00,#fb,#f7,#00,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#00,#05,#08,#00
	db #05,#08,#00,#05,#08,#00,#05,#08
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #08,#00,#05,#08,#00,#05,#08,#00
	db #05,#08,#00,#05,#00,#fd,#f8,#00
	db #fd,#f8,#00,#fd,#f8,#00,#fd,#f8
	db #00,#fd,#f8,#00,#fd,#f8,#00,#fd
	db #f8,#00,#fd,#f8,#00,#fd,#f8,#00
	db #fd,#f8,#00,#fd,#00,#fc,#f9,#00
	db #fc,#f9,#00,#fc,#f9,#00,#fc,#f9
	db #00,#fc,#f9,#00,#fc,#f9,#00,#fc
	db #f9,#00,#fc,#f9,#00,#fc,#f9,#00
	db #fc,#f9,#00,#fc,#00,#fd,#f9,#00
	db #fd,#f9,#00,#fd,#f9,#00,#fd,#f9
	db #00,#fd,#f9,#00,#fd,#f9,#00,#fd
	db #f9,#00,#fd,#f9,#00,#fd,#f9,#00
.l6762 equ $ + 4
	db #fd,#f9,#00,#fd,#00,#16,#68,#00
	db #1a,#68,#00,#7b,#68,#00,#1a,#68
	db #00,#dc,#68,#00,#51,#69,#00,#dc
	db #68,#00,#1a,#68,#00,#7b,#68,#00
	db #c6,#69,#00,#7b,#68,#00,#27,#6a
	db #00,#88,#6a,#00,#e9,#6a,#00,#88
	db #6a,#00,#88,#6a,#00,#c6,#69,#00
	db #7b,#68,#00,#1a,#68,#80,#65,#67
.l679e
	db #00,#4a,#6b,#00,#4f,#6b,#00,#54
	db #6b,#00,#4f,#6b,#00,#59,#6b,#00
	db #6e,#6b,#00,#83,#6b,#00,#4f,#6b
	db #00,#54,#6b,#00,#88,#6b,#00,#2e
	db #6c,#00,#db,#6c,#00,#55,#6d,#00
	db #c4,#6d,#00,#3e,#6e,#00,#ad,#6e
	db #00,#88,#6b,#00,#2e,#6c,#00,#27
.l67da equ $ + 4
	db #6f,#80,#a1,#67,#00,#98,#6f,#00
	db #59,#70,#00,#19,#71,#00,#59,#70
	db #00,#da,#71,#00,#19,#71,#00,#19
	db #71,#00,#59,#70,#00,#19,#71,#00
	db #9b,#72,#00,#b0,#72,#00,#c5,#72
	db #00,#ce,#72,#00,#da,#71,#00,#8e
	db #73,#00,#a3,#73,#00,#9b,#72,#00
	db #b0,#72,#00,#b8,#73,#80,#dd,#67
	db #22,#40,#03,#ff,#a2,#01,#22,#82
	db #a2,#01,#3a,#02,#02,#22,#02,#01
	db #a2,#01,#22,#82,#a2,#01,#3a,#02
	db #02,#22,#02,#01,#a2,#01,#22,#82
	db #a2,#01,#3a,#02,#02,#22,#02,#01
	db #a2,#01,#22,#82,#a2,#01,#3a,#02
	db #02,#22,#02,#01,#a2,#01,#22,#82
	db #a2,#01,#3a,#02,#02,#22,#02,#01
	db #a2,#01,#22,#82,#a2,#01,#3a,#02
	db #02,#22,#02,#01,#a2,#01,#22,#82
	db #a2,#01,#3a,#02,#02,#22,#02,#01
	db #a2,#01,#22,#82,#a2,#01,#3a,#02
	db #02,#22,#02,#01,#ff,#9e,#01,#1e
	db #82,#9e,#01,#3a,#02,#02,#1e,#02
	db #01,#9e,#01,#1e,#82,#9e,#01,#3a
	db #02,#02,#1e,#02,#01,#9e,#01,#1e
	db #82,#9e,#01,#3a,#02,#02,#1e,#02
	db #01,#9e,#01,#1e,#82,#9e,#01,#3a
	db #02,#02,#1e,#02,#01,#9e,#01,#1e
	db #82,#9e,#01,#3a,#02,#02,#1e,#02
	db #01,#9e,#01,#1e,#82,#9e,#01,#3a
	db #02,#02,#1e,#02,#01,#9e,#01,#1e
	db #82,#9e,#01,#3a,#02,#02,#1e,#02
	db #01,#9e,#01,#1e,#82,#9e,#01,#3a
	db #02,#02,#1e,#02,#01,#ff,#a2,#01
	db #a2,#01,#c1,#f1,#03,#a2,#11,#3a
	db #02,#02,#41,#02,#f1,#03,#a2,#11
	db #22,#02,#01,#a2,#01,#3a,#02,#02
	db #22,#02,#01,#a2,#01,#a2,#01,#c1
	db #f1,#03,#a2,#11,#3a,#02,#02,#41
	db #02,#f1,#03,#a2,#11,#22,#02,#01
	db #a2,#01,#3a,#02,#02,#22,#02,#01
	db #a2,#01,#a2,#01,#c1,#f1,#03,#a2
	db #11,#3a,#02,#02,#41,#02,#f1,#03
	db #a2,#11,#22,#02,#01,#a2,#01,#3a
	db #02,#02,#22,#02,#01,#a2,#01,#a2
	db #01,#c1,#f1,#03,#a2,#11,#3a,#02
	db #02,#41,#02,#f1,#03,#a2,#11,#22
	db #02,#01,#a2,#01,#3a,#02,#02,#22
	db #02,#01,#ff,#9e,#01,#9e,#01,#c6
	db #f1,#00,#9e,#11,#3a,#02,#02,#46
	db #02,#f1,#00,#9e,#11,#1e,#02,#01
	db #9e,#01,#3a,#02,#02,#1e,#02,#01
	db #9e,#01,#9e,#01,#c6,#f1,#00,#9e
	db #11,#3a,#02,#02,#46,#02,#f1,#00
	db #9e,#11,#1e,#02,#01,#9e,#01,#3a
	db #02,#02,#1e,#02,#01,#9e,#01,#9e
	db #01,#c6,#f1,#00,#9e,#11,#3a,#02
	db #02,#46,#02,#f1,#00,#9e,#11,#1e
	db #02,#01,#9e,#01,#3a,#02,#02,#1e
	db #02,#01,#9e,#01,#9e,#01,#c6,#f1
	db #00,#9e,#11,#3a,#02,#02,#46,#02
	db #f1,#00,#9e,#11,#1e,#02,#01,#9e
	db #01,#3a,#02,#02,#1e,#02,#01,#ff
	db #a2,#01,#22,#82,#a2,#01,#3a,#02
	db #02,#22,#02,#01,#a2,#01,#22,#82
	db #a2,#01,#3a,#02,#02,#22,#02,#01
	db #a2,#01,#22,#82,#a2,#01,#3a,#02
	db #02,#22,#02,#01,#a2,#01,#22,#82
	db #a2,#01,#3a,#02,#02,#22,#02,#01
	db #a2,#01,#22,#82,#a2,#01,#3a,#02
	db #02,#22,#02,#01,#a2,#01,#22,#82
	db #a2,#01,#3a,#02,#02,#22,#02,#01
	db #a2,#01,#22,#82,#a2,#01,#3a,#02
	db #02,#22,#02,#01,#a2,#01,#22,#82
	db #a2,#01,#3a,#02,#02,#22,#02,#01
	db #ff,#a2,#01,#22,#82,#a2,#01,#3a
	db #02,#02,#22,#02,#01,#a2,#01,#22
	db #82,#a2,#01,#3a,#02,#02,#22,#02
	db #01,#a2,#01,#22,#82,#a2,#01,#3a
	db #02,#02,#22,#02,#01,#a2,#01,#22
	db #82,#a2,#01,#3a,#02,#02,#22,#02
	db #01,#a2,#01,#22,#82,#a2,#01,#3a
	db #02,#02,#22,#02,#01,#a2,#01,#22
	db #82,#a2,#01,#3a,#02,#02,#22,#02
	db #01,#a2,#01,#22,#82,#a2,#01,#3a
	db #02,#02,#22,#02,#01,#a2,#01,#22
	db #82,#a2,#01,#3a,#02,#02,#22,#02
	db #01,#ff,#a2,#01,#22,#82,#a2,#01
	db #3a,#02,#02,#22,#02,#01,#a2,#01
	db #22,#82,#a2,#01,#3a,#02,#02,#22
	db #02,#01,#a2,#01,#22,#82,#a2,#01
	db #3a,#02,#02,#22,#02,#01,#a2,#01
	db #22,#82,#a2,#01,#3a,#02,#02,#22
	db #02,#01,#9e,#01,#1e,#82,#9e,#01
	db #3a,#02,#02,#1e,#02,#01,#9e,#01
	db #1e,#82,#9e,#01,#3a,#02,#02,#1e
	db #02,#01,#9e,#01,#1e,#82,#9e,#01
	db #3a,#02,#02,#1e,#02,#01,#9e,#01
	db #1e,#82,#9e,#01,#3a,#02,#02,#20
	db #02,#01,#ff,#a2,#01,#22,#82,#a2
	db #01,#3a,#02,#02,#22,#02,#01,#a2
	db #01,#22,#82,#a2,#01,#3a,#02,#02
	db #22,#02,#01,#a2,#01,#22,#82,#a2
	db #01,#3a,#02,#02,#22,#02,#01,#a2
	db #01,#22,#82,#a2,#01,#3a,#02,#02
	db #22,#02,#01,#9e,#01,#1e,#82,#9e
	db #01,#3a,#02,#02,#1e,#02,#01,#9e
	db #01,#1e,#82,#9e,#01,#3a,#02,#02
	db #1e,#02,#01,#9e,#01,#1e,#82,#9e
	db #01,#3a,#02,#02,#1e,#02,#01,#9e
	db #01,#1e,#82,#9e,#01,#3a,#02,#02
	db #20,#02,#01,#ff,#22,#40,#a0,#1e
	db #ff,#22,#40,#a0,#1e,#ff,#1e,#40
	db #a0,#13,#ff,#55,#10,#f5,#04,#54
	db #08,#f5,#05,#50,#08,#f5,#06,#52
	db #18,#f5,#00,#54,#08,#f5,#05,#ff
	db #55,#10,#f5,#04,#54,#08,#f5,#05
	db #50,#08,#f5,#06,#52,#18,#f5,#00
	db #54,#08,#f5,#05,#ff,#59,#40,#f5
	db #05,#ff,#c6,#11,#c4,#b1,#03,#c4
	db #b1,#00,#46,#82,#c6,#b1,#00,#44
	db #82,#c6,#b1,#00,#c4,#b1,#03,#c9
	db #b1,#00,#c6,#b1,#03,#c6,#b1,#00
	db #c9,#b1,#03,#c1,#b1,#00,#c6,#b1
	db #03,#c6,#b1,#00,#c6,#b1,#00,#c4
	db #b1,#00,#c6,#b1,#00,#c6,#b1,#00
	db #c4,#b1,#00,#46,#82,#c4,#b1,#00
	db #c6,#b1,#03,#c6,#b1,#00,#c4,#b1
	db #03,#c1,#b1,#00,#c6,#b1,#03,#c9
	db #b1,#00,#c1,#b1,#03,#c6,#b1,#00
	db #c9,#b1,#03,#c4,#b1,#00,#46,#82
	db #c6,#b1,#00,#44,#82,#c6,#b1,#00
	db #c4,#b1,#03,#c9,#b1,#00,#c6,#b1
	db #03,#c6,#b1,#00,#c9,#b1,#03,#c1
	db #b1,#00,#c6,#b1,#03,#c6,#b1,#00
	db #c4,#b1,#00,#c6,#b1,#00,#c9,#b1
	db #00,#c4,#b1,#03,#c6,#b1,#03,#c6
	db #b1,#00,#c4,#b1,#05,#c4,#b1,#00
	db #46,#82,#c4,#b1,#03,#41,#02,#b1
	db #00,#c4,#b1,#00,#c1,#b1,#03,#ff
	db #c6,#b1,#00,#c1,#b1,#03,#c4,#b1
	db #00,#c6,#b1,#00,#c1,#b1,#05,#c6
	db #b1,#00,#44,#82,#c6,#b1,#00,#c4
	db #b1,#03,#c9,#b1,#00,#c6,#b1,#03
	db #c6,#b1,#00,#c9,#b1,#03,#c1,#b1
	db #00,#c6,#b1,#03,#c6,#b1,#00,#c6
	db #b1,#00,#c4,#b1,#00,#c1,#b1,#00
	db #c6,#b1,#00,#c4,#b1,#00,#c1,#b1
	db #00,#c6,#b1,#00,#c4,#b1,#03,#c6
	db #b1,#00,#c9,#b1,#00,#c4,#b1,#05
	db #c6,#b1,#00,#c9,#b1,#03,#c4,#b1
	db #00,#c6,#b1,#03,#c6,#b1,#00,#c4
	db #b1,#03,#c4,#b1,#00,#c6,#b1,#00
	db #c4,#b1,#05,#c6,#b1,#00,#41,#82
	db #c6,#b1,#00,#c1,#b1,#03,#c9,#b1
	db #00,#c6,#b1,#03,#c6,#b1,#00,#c9
	db #b1,#03,#c4,#b1,#00,#c6,#b1,#03
	db #c6,#b1,#00,#c1,#b1,#00,#c6,#b1
	db #05,#c6,#b1,#00,#44,#82,#c6,#b1
	db #00,#49,#82,#c6,#b1,#00,#4d,#82
	db #ce,#b1,#00,#c1,#b1,#03,#cd,#b1
	db #00,#ce,#b1,#03,#ff,#cd,#b1,#01
	db #cd,#b1,#03,#ce,#b1,#04,#cd,#b1
	db #02,#cd,#b1,#04,#ce,#b1,#05,#cd
	db #b1,#03,#cd,#b1,#05,#ce,#b1,#06
	db #cd,#b1,#04,#cd,#b1,#06,#ce,#b1
	db #07,#cd,#b1,#05,#cd,#b1,#07,#ce
	db #b1,#09,#4d,#03,#b1,#07,#4d,#03
	db #b1,#08,#4d,#03,#b1,#09,#4d,#03
	db #b1,#0a,#4d,#03,#b1,#0b,#4d,#02
	db #b1,#0c,#52,#02,#b1,#00,#d4,#b1
	db #01,#52,#82,#d4,#b1,#02,#52,#82
	db #d4,#b1,#03,#52,#82,#d4,#b1,#04
	db #52,#82,#d4,#b1,#05,#52,#82,#d4
	db #b1,#07,#52,#82,#d4,#b1,#08,#52
	db #83,#52,#04,#b1,#09,#3a,#02,#b3
	db #00,#bc,#03,#ba,#b3,#03,#ff,#bd
	db #b3,#00,#bc,#b3,#03,#ba,#b3,#05
	db #bd,#b3,#03,#41,#02,#b3,#00,#bd
	db #b3,#05,#c1,#b3,#03,#3f,#02,#b3
	db #00,#3d,#83,#3d,#03,#b3,#03,#3c
	db #03,#b3,#00,#3c,#03,#b3,#03,#3a
	db #03,#b3,#00,#3a,#03,#b3,#03,#35
	db #03,#b3,#00,#b5,#b3,#03,#31,#02
	db #b3,#00,#b5,#b3,#05,#31,#03,#b3
	db #03,#36,#03,#b3,#00,#36,#03,#b3
	db #03,#39,#03,#b3,#00,#b9,#b3,#03
	db #3a,#02,#b3,#00,#b9,#b3,#05,#3a
	db #03,#b3,#03,#3f,#03,#b3,#00,#3f
	db #03,#b3,#03,#33,#02,#b3,#00,#b8
	db #b3,#00,#b3,#b3,#03,#ff,#bd,#b3
	db #00,#b8,#b3,#03,#b3,#b3,#05,#bd
	db #b3,#03,#41,#02,#b3,#00,#bd,#b3
	db #05,#c1,#b3,#03,#3f,#02,#b3,#00
	db #bd,#b3,#00,#3f,#02,#b3,#03,#bd
	db #b3,#03,#3f,#02,#b3,#05,#3c,#03
	db #b3,#00,#3c,#03,#b3,#03,#3d,#03
	db #b3,#00,#3d,#03,#b3,#03,#3f,#03
	db #b3,#00,#bf,#b3,#03,#3d,#02,#b3
	db #00,#bf,#b3,#05,#3d,#03,#b3,#03
	db #41,#03,#b3,#00,#41,#03,#b3,#03
	db #42,#03,#b3,#00,#42,#03,#b3,#03
	db #42,#02,#b3,#05,#45,#03,#b3,#00
	db #c5,#b3,#03,#46,#02,#b3,#00,#c5
	db #b3,#05,#c6,#b3,#03,#48,#02,#b3
	db #00,#c6,#b3,#05,#c8,#b3,#03,#ff
	db #bd,#b3,#00,#bc,#b3,#03,#ba,#b3
	db #05,#bd,#b3,#03,#41,#02,#b3,#00
	db #bd,#b3,#05,#c1,#b3,#03,#3f,#02
	db #b3,#00,#3d,#83,#3d,#03,#b3,#03
	db #3c,#03,#b3,#00,#3c,#03,#b3,#03
	db #3a,#03,#b3,#00,#3a,#03,#b3,#03
	db #35,#03,#b3,#00,#b5,#b3,#03,#31
	db #02,#b3,#00,#b5,#b3,#05,#31,#03
	db #b3,#03,#36,#03,#b3,#00,#36,#03
	db #b3,#03,#39,#03,#b3,#00,#b9,#b3
	db #03,#3a,#02,#b3,#00,#b9,#b3,#05
	db #3a,#03,#b3,#03,#3f,#03,#b3,#00
	db #3f,#03,#b3,#03,#33,#02,#b3,#00
	db #b8,#b3,#00,#b3,#b3,#03,#ff,#bd
	db #b3,#00,#b8,#b3,#03,#b3,#b3,#05
	db #bd,#b3,#03,#41,#02,#b3,#00,#bd
	db #b3,#05,#c1,#b3,#03,#3f,#02,#b3
	db #00,#bd,#b3,#00,#3f,#02,#b3,#03
	db #bd,#b3,#03,#3f,#02,#b3,#05,#3c
	db #03,#b3,#00,#3c,#03,#b3,#03,#3d
	db #03,#b3,#00,#3d,#03,#b3,#03,#3f
	db #03,#b3,#00,#bf,#b3,#03,#3d,#02
	db #b3,#00,#bf,#b3,#05,#3d,#03,#b3
	db #03,#41,#03,#b3,#00,#41,#03,#b3
	db #03,#42,#03,#b3,#00,#42,#03,#b3
	db #03,#42,#02,#b3,#05,#45,#03,#b3
	db #00,#c5,#b3,#03,#46,#02,#b3,#00
	db #c5,#b3,#05,#c6,#b3,#03,#48,#02
	db #b3,#00,#c6,#b3,#05,#c8,#b3,#03
	db #ff,#cd,#b1,#01,#cd,#b1,#03,#ce
	db #b1,#04,#cd,#b1,#02,#cd,#b1,#04
	db #ce,#b1,#05,#cd,#b1,#03,#cd,#b1
	db #05,#ce,#b1,#06,#cd,#b1,#04,#cd
	db #b1,#06,#ce,#b1,#07,#cd,#b1,#05
	db #cd,#b1,#07,#ce,#b1,#09,#4d,#03
	db #b1,#07,#4d,#03,#b1,#08,#4d,#03
	db #b1,#09,#4d,#03,#b1,#0a,#4d,#03
	db #b1,#0b,#4d,#02,#b1,#0c,#52,#02
	db #b1,#00,#d4,#b1,#01,#52,#82,#d4
	db #b1,#02,#52,#82,#d4,#b1,#03,#52
	db #82,#d4,#b1,#04,#52,#82,#d4,#b1
	db #05,#52,#82,#d4,#b1,#07,#52,#82
	db #d4,#b1,#08,#52,#83,#52,#08,#b1
	db #09,#ff,#cd,#b7,#06,#c6,#b7,#09
	db #cb,#b7,#06,#cd,#b7,#09,#c9,#b7
	db #06,#cb,#b7,#09,#c6,#b7,#06,#c9
	db #b7,#09,#cd,#b7,#06,#c6,#b7,#09
	db #cb,#b7,#06,#cd,#b7,#09,#c9,#b7
	db #06,#cb,#b7,#09,#c6,#b7,#06,#c9
	db #b7,#09,#cd,#b7,#05,#c6,#b7,#09
	db #cb,#b7,#05,#cd,#b7,#07,#c9,#b7
	db #05,#cb,#b7,#07,#c6,#b7,#05,#c9
	db #b7,#07,#cd,#b7,#05,#c6,#b7,#07
	db #cb,#b7,#05,#cd,#b7,#07,#c9,#b7
	db #05,#cb,#b7,#07,#c6,#b7,#05,#c9
	db #b7,#07,#cd,#b7,#03,#c6,#b7,#07
	db #cb,#b7,#03,#cd,#b7,#05,#c9,#b7
	db #03,#cb,#b7,#05,#c6,#b7,#03,#c9
	db #b7,#05,#cd,#b7,#02,#c6,#b7,#05
	db #cb,#b7,#02,#cd,#b7,#04,#c9,#b7
	db #02,#cb,#b7,#04,#c6,#b7,#02,#c9
	db #b7,#04,#cd,#b7,#01,#c6,#b7,#04
	db #cb,#b7,#01,#cd,#b7,#03,#c9,#b7
	db #01,#cb,#b7,#03,#c6,#b7,#01,#c9
	db #b7,#03,#cd,#b7,#00,#c6,#b7,#03
	db #cb,#b7,#00,#cd,#b7,#02,#c9,#b7
	db #00,#cb,#b7,#02,#c6,#b7,#00,#c9
	db #b7,#02,#ff,#cd,#17,#c6,#b7,#03
	db #cb,#b7,#00,#cd,#b7,#03,#c9,#b7
	db #00,#cb,#b7,#03,#c6,#b7,#00,#c9
	db #b7,#03,#cd,#b7,#00,#c6,#b7,#03
	db #cb,#b7,#00,#cd,#b7,#03,#c9,#b7
	db #00,#cb,#b7,#03,#c6,#b7,#00,#c9
	db #b7,#03,#cd,#b7,#00,#c6,#b7,#03
	db #cb,#b7,#00,#cd,#b7,#03,#c9,#b7
	db #00,#cb,#b7,#03,#c6,#b7,#00,#c9
	db #b7,#03,#cd,#b7,#00,#c6,#b7,#03
	db #cb,#b7,#00,#cd,#b7,#03,#c9,#b7
	db #00,#cb,#b7,#03,#c6,#b7,#00,#c9
	db #b7,#03,#cd,#b7,#00,#c6,#b7,#03
	db #cb,#b7,#00,#cd,#b7,#03,#c9,#b7
	db #00,#cb,#b7,#03,#c6,#b7,#00,#c9
	db #b7,#03,#cd,#b7,#00,#c6,#b7,#03
	db #cb,#b7,#00,#cd,#b7,#03,#c9,#b7
	db #00,#cb,#b7,#03,#c6,#b7,#00,#c9
	db #b7,#03,#cd,#b7,#00,#c6,#b7,#03
	db #cb,#b7,#00,#cd,#b7,#03,#c9,#b7
	db #00,#cb,#b7,#03,#c6,#b7,#00,#c9
	db #b7,#03,#cd,#b7,#00,#c6,#b7,#03
	db #cb,#b7,#00,#cd,#b7,#03,#c9,#b7
	db #00,#cb,#b7,#03,#c6,#b7,#00,#c9
	db #b7,#03,#ff,#cd,#b7,#00,#c6,#b7
	db #03,#cb,#b7,#00,#cd,#b7,#03,#c9
	db #b7,#00,#cb,#b7,#03,#c6,#b7,#00
	db #c9,#b7,#03,#cd,#b7,#00,#c6,#b7
	db #03,#cb,#b7,#00,#cd,#b7,#03,#c9
	db #b7,#00,#cb,#b7,#03,#c6,#b7,#00
	db #c9,#b7,#03,#cd,#b7,#00,#c6,#b7
	db #03,#cb,#b7,#00,#cd,#b7,#03,#c9
	db #b7,#00,#cb,#b7,#03,#c6,#b7,#00
	db #c9,#b7,#03,#cd,#b7,#00,#c6,#b7
	db #03,#cb,#b7,#00,#cd,#b7,#03,#c9
	db #b7,#00,#cb,#b7,#03,#c6,#b7,#00
	db #c9,#b7,#03,#cd,#b7,#00,#c6,#b7
	db #03,#cb,#b7,#00,#cd,#b7,#03,#c9
	db #b7,#00,#cb,#b7,#03,#c6,#b7,#00
	db #c9,#b7,#03,#cd,#b7,#00,#c6,#b7
	db #03,#cb,#b7,#00,#cd,#b7,#03,#c9
	db #b7,#00,#cb,#b7,#03,#c6,#b7,#00
	db #c9,#b7,#03,#cd,#b7,#00,#c6,#b7
	db #03,#cb,#b7,#00,#cd,#b7,#03,#c9
	db #b7,#00,#cb,#b7,#03,#c6,#b7,#00
	db #c9,#b7,#03,#cd,#b7,#00,#c6,#b7
	db #03,#cb,#b7,#00,#cd,#b7,#03,#c9
	db #b7,#00,#cb,#b7,#03,#c6,#b7,#00
	db #c9,#b7,#03,#ff,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#de,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5c,#b7,#00
	db #cd,#b7,#03,#c9,#b7,#00,#cb,#b7
	db #03,#c6,#b7,#00,#c9,#b7,#03,#cd
	db #b7,#00,#c6,#b7,#03,#cb,#b7,#00
	db #cd,#b7,#03,#c9,#b7,#00,#cb,#b7
	db #03,#c6,#b7,#00,#c9,#b7,#03,#cd
	db #b7,#00,#c6,#b7,#03,#cb,#b7,#00
	db #cd,#b7,#03,#c9,#b7,#00,#cb,#b7
	db #03,#c6,#b7,#00,#c9,#b7,#03,#cd
	db #b7,#00,#c6,#b7,#03,#cb,#b7,#00
	db #cd,#b7,#03,#c9,#b7,#00,#cb,#b7
	db #03,#c6,#b7,#00,#c9,#b7,#03,#cd
	db #b7,#00,#c6,#b7,#03,#cb,#b7,#00
	db #cd,#b7,#03,#c9,#b7,#00,#cb,#b7
	db #03,#c6,#b7,#00,#c9,#b7,#03,#ff
	db #55,#10,#f5,#04,#54,#08,#f5,#05
	db #50,#08,#f5,#06,#52,#18,#f5,#00
	db #54,#08,#f5,#05,#ff,#55,#10,#f5
	db #04,#54,#08,#f5,#05,#50,#08,#f5
	db #06,#52,#18,#f5,#00,#54,#08,#f5
	db #05,#ff,#59,#20,#f5,#05,#55,#20
	db #f5,#04,#ff,#00,#bc,#13,#00,#00
	db #1a,#1f,#e0,#00,#00,#20,#f0,#3c
	db #00,#00,#1f,#07,#00,#06,#00,#00
	db #1f,#38,#00,#02,#00,#00,#1f,#c0
	db #00,#01,#80,#00,#00,#1d,#01,#80
	db #00,#00,#02,#60,#00,#00,#1d,#03
	db #00,#00,#03,#18,#00,#00,#1d,#1c
	db #00,#00,#03,#30,#00,#00,#1d,#38
	db #00,#00,#03,#0c,#00,#00,#1d,#e0
	db #00,#00,#03,#0c,#00,#00,#1c,#01
	db #c0,#00,#00,#03,#02,#00,#00,#1c
	db #01,#d8,#00,#00,#04,#c0,#00,#00
	db #1b,#1e,#58,#00,#00,#03,#03,#00
	db #00,#1c,#1c,#93,#00,#00,#03,#03
	db #00,#00,#1c,#08,#9b,#38,#00,#00
	db #02,#0c,#c0,#00,#00,#1b,#30,#26
	db #63,#c0,#06,#03,#80,#00,#00,#1b
	db #10,#00,#3f,#e0,#60,#19,#80,#00
	db #00,#1b,#30,#00,#00,#04,#01,#80
	db #00,#00,#1b,#10,#00,#00,#04,#01
	db #80,#00,#00,#1b,#60,#00,#00,#04
	db #03,#00,#00,#1c,#30,#00,#00,#05
	db #c0,#00,#00,#1b,#18,#00,#00,#05
	db #c0,#00,#00,#1b,#30,#00,#00,#04
	db #01,#80,#00,#00,#1b,#18,#00,#00
	db #05,#c0,#00,#00,#1b,#18,#00,#00
	db #05,#c0,#00,#00,#1b,#30,#00,#00
	db #04,#03,#80,#00,#00,#1b,#10,#00
	db #00,#04,#01,#80,#00,#00,#1b,#0f
	db #00,#00,#05,#c0,#00,#00,#1b,#0d
	db #80,#00,#00,#03,#03,#00,#00,#1c
	db #06,#cc,#00,#00,#04,#c0,#00,#00
	db #1b,#0f,#66,#00,#00,#03,#03,#00
	db #00,#1c,#0c,#2c,#e0,#00,#00,#02
	db #33,#00,#00,#1c,#08,#00,#8c,#00
	db #7c,#07,#00,#00,#1c,#18,#00,#00
	db #04,#06,#00,#00,#1c,#18,#00,#00
	db #04,#0c,#00,#00,#1c,#0c,#0f,#ff
	db #ff,#02,#80,#0e,#00,#00,#1c,#07
	db #ff,#00,#00,#02,#38,#0c,#00,#00
	db #1c,#04
;
.music_info
	db "Boxon 2 Games (1995)(Da Boxon Team)()",0
	db "ST-Module",0

	read "music_end.asm"
