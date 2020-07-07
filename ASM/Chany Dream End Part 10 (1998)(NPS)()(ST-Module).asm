; Music of Chany Dream End Part 10 (1998)(NPS)()(ST-Module)
; Ripped by Megachur the 28/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CHANDEPA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #6000

	read "music_header.asm"

	jp l600b
	jp l6093
	jp l6077
	ld h,(hl)
	inc b
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
	ld a,#00
	ld hl,l6304
	cp (hl)
	jr z,l60ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l62e4
.l60ed equ $ + 1
.l60ec
	ld a,#00
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
	db #01,#38,#00,#00
.l6306
	dw l6742,l676f,l679c
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
	db #00,#00,#00,#00,#d8,#17,#00,#01
	db #08,#08,#04,#3c,#00,#00,#00,#df
.l63e8 equ $ + 2
	db #45,#17,#62,#16,#a2,#16,#42,#15
	db #18,#07,#1c,#03,#77,#00,#00,#00
.l63f6
	db #68,#19,#02,#03,#09,#00,#02,#1f
.l6404 equ $ + 6
	db #00,#00,#00,#e7,#72,#17,#e2,#14
	db #22,#15,#42,#15,#00,#00,#05,#1b
.l6412 equ $ + 4
	db #7e,#02,#00,#00,#d3,#19,#04,#05
	db #0a,#09,#0e,#40,#00,#00,#00,#ef
.l6420 equ $ + 2
	db #9f,#17,#e2,#14,#c2,#16,#42,#15
	db #0b,#15,#1d,#03,#50,#00,#02,#17
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#64,#22,#65
	db #42,#65,#00,#00,#dc,#0e,#dc,#0e
	db #dc,#0e,#ff,#ff,#62,#65,#a2,#65
	db #42,#65,#10,#10,#db,#0e,#dc,#0e
	db #dc,#0e,#ff,#ff,#db,#0e,#dc,#0e
	db #dc,#0e,#ff,#ff,#db,#0e,#dc,#0e
	db #dc,#0e,#ff,#ff,#c2,#65,#02,#66
	db #22,#66,#00,#00,#e2,#64,#42,#66
	db #42,#65,#18,#07,#62,#66,#a2,#66
	db #42,#65,#18,#07,#e2,#64,#c2,#66
	db #42,#65,#0b,#15,#dc,#0e,#dc,#0e
	db #dc,#0e,#00,#00,#dc,#0e,#dc,#0e
	db #dc,#0e,#00,#00,#dc,#0e,#dc,#0e
	db #dc,#0e,#00,#00,#dc,#0e,#dc,#0e
	db #dc,#0e,#00,#00,#dc,#0e,#dc,#0e
	db #dc,#0e,#00,#00,#dc,#0e,#dc,#0e
.l64c2 equ $ + 4
	db #dc,#0e,#00,#00,#dc,#0e,#e2,#66
	db #02,#67,#22,#67,#dc,#0e,#dc,#0e
	db #dc,#0e,#dc,#0e,#dc,#0e,#dc,#0e
	db #dc,#0e,#dc,#0e,#dc,#0e,#dc,#0e
	db #dc,#0e,#dc,#0e,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#07,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0d,#0c,#0b
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#38,#00,#60,#00
	db #b0,#00,#18,#01,#48,#01,#80,#01
	db #c8,#01,#10,#02,#58,#02,#b0,#02
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0c,#0b,#09,#07,#06,#03,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#05
	db #04,#04,#03,#02,#01,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#07,#06,#06
	db #06,#05,#05,#05,#00,#00,#00,#00
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
	db #09,#09,#09,#09,#06,#06,#06,#07
	db #07,#07,#08,#08,#08,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
.l6742 equ $ + 4
	db #04,#07,#00,#04,#00,#c9,#67,#00
	db #e1,#67,#00,#c9,#67,#00,#e1,#67
	db #00,#f9,#67,#00,#0d,#68,#00,#f9
	db #67,#00,#0d,#68,#00,#c9,#67,#00
	db #e1,#67,#00,#c9,#67,#00,#e1,#67
	db #00,#25,#68,#00,#a6,#68,#80,#42
.l676f equ $ + 1
	db #67,#00,#27,#69,#00,#79,#69,#00
	db #27,#69,#00,#79,#69,#00,#27,#69
	db #00,#79,#69,#00,#27,#69,#00,#79
	db #69,#00,#27,#69,#00,#79,#69,#00
	db #27,#69,#00,#79,#69,#00,#27,#69
.l679c equ $ + 6
	db #00,#79,#69,#80,#6f,#67,#00,#cb
	db #69,#00,#d4,#69,#00,#cb,#69,#00
	db #d4,#69,#00,#db,#69,#00,#e4,#69
	db #00,#db,#69,#00,#e4,#69,#00,#cb
	db #69,#00,#d4,#69,#00,#cb,#69,#00
	db #d4,#69,#00,#eb,#69,#00,#f4,#69
	db #80,#9c,#67,#42,#08,#08,#41,#88
	db #3f,#84,#41,#84,#42,#84,#44,#84
	db #46,#96,#46,#82,#41,#83,#42,#83
	db #44,#82,#ff,#44,#08,#08,#41,#88
	db #3d,#8c,#3f,#82,#41,#82,#42,#86
	db #41,#86,#3e,#84,#3a,#86,#3e,#86
	db #41,#84,#ff,#46,#18,#07,#44,#82
	db #42,#82,#44,#82,#45,#82,#46,#98
	db #46,#83,#41,#83,#3d,#82,#ff,#44
	db #18,#07,#44,#82,#41,#82,#3d,#82
	db #41,#82,#46,#86,#47,#86,#45,#86
	db #46,#86,#44,#84,#46,#84,#ff,#c2
	db #02,#c1,#02,#bf,#02,#c1,#02,#c2
	db #02,#c1,#02,#bf,#02,#c1,#02,#c2
	db #02,#c1,#02,#bf,#02,#c1,#02,#c2
	db #02,#c1,#02,#bf,#02,#c1,#02,#c2
	db #02,#c1,#02,#bf,#02,#c1,#02,#c2
	db #02,#c1,#02,#bf,#02,#c1,#02,#c2
	db #02,#c1,#02,#bf,#02,#c1,#02,#c2
	db #02,#c4,#02,#c2,#02,#c1,#02,#c1
	db #02,#be,#02,#ba,#02,#be,#02,#c1
	db #02,#be,#02,#ba,#02,#be,#02,#c1
	db #02,#be,#02,#ba,#02,#be,#02,#c1
	db #02,#be,#02,#ba,#02,#be,#02,#c1
	db #02,#be,#02,#ba,#02,#be,#02,#c1
	db #02,#be,#02,#ba,#02,#be,#02,#c1
	db #02,#be,#02,#ba,#02,#be,#02,#c1
	db #02,#c2,#02,#c1,#02,#bd,#02,#ff
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #ba,#02,#be,#02,#c1,#02,#c6,#02
	db #ba,#02,#be,#02,#c1,#02,#c6,#02
	db #ba,#02,#be,#02,#c1,#02,#c6,#02
	db #ba,#02,#be,#02,#c1,#02,#c6,#02
	db #ba,#02,#be,#02,#c1,#02,#c6,#02
	db #ba,#02,#be,#02,#c1,#02,#c6,#02
	db #c4,#02,#c2,#02,#c1,#02,#c2,#02
	db #c1,#02,#be,#02,#ba,#02,#be,#02
	db #ff,#27,#02,#00,#27,#82,#3a,#02
	db #06,#2e,#02,#00,#27,#82,#27,#82
	db #3a,#02,#06,#2e,#02,#00,#27,#82
	db #27,#82,#3a,#02,#06,#2e,#02,#00
	db #27,#82,#27,#82,#3a,#02,#06,#2e
	db #02,#00,#29,#82,#29,#82,#3a,#02
	db #06,#2e,#02,#00,#29,#82,#29,#82
	db #3a,#02,#06,#2e,#02,#00,#29,#82
	db #29,#82,#3a,#02,#06,#2e,#02,#00
	db #29,#82,#29,#82,#3a,#02,#06,#2e
	db #02,#00,#ff,#2c,#02,#00,#2c,#82
	db #3a,#02,#06,#31,#02,#00,#2c,#82
	db #2c,#82,#3a,#02,#06,#31,#02,#00
	db #2c,#82,#2c,#82,#3a,#02,#06,#31
	db #02,#00,#2c,#82,#2c,#82,#3a,#02
	db #06,#31,#02,#00,#2e,#82,#2e,#82
	db #3a,#02,#06,#32,#02,#00,#2e,#82
	db #2e,#82,#3a,#02,#06,#32,#02,#00
	db #2e,#82,#32,#82,#3a,#02,#06,#2c
	db #02,#00,#2a,#82,#2c,#82,#3a,#02
	db #06,#29,#02,#00,#ff,#4b,#20,#f9
	db #01,#4a,#20,#f9,#02,#ff,#49,#20
	db #f9,#03,#46,#a0,#ff,#4b,#20,#f9
	db #01,#4a,#20,#f9,#02,#ff,#49,#20
	db #f9,#03,#46,#a0,#ff,#4b,#20,#f9
	db #01,#4a,#20,#f9,#02,#ff,#49,#20
	db #f9,#03,#46,#a0,#ff,#82,#ff,#9f
	db #06,#00
;
.music_info
	db "Chany Dream End Part 10 (1998)(NPS)()",0
	db "ST-Module",0

	read "music_end.asm"
