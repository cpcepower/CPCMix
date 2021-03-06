; Music of Tree Issue 2 - Scene News (2002)(Brothers)()(ST-Module)
; Ripped by Megachur the 09/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TREEI2SN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 09
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
	ld a,#05
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
	ld a,#06
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
	db #06,#38,#00,#00
.l6306
	dw l6702,l6741,l6780
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
	db #00,#00,#00,#00,#06,#68,#00,#01
	db #08,#01,#02,#37,#00,#00,#00,#df
.l63e8 equ $ + 2
	db #14,#67,#62,#65,#a2,#65,#42,#65
	db #10,#10,#0e,#12,#9f,#00,#a2,#66
.l63f6
	db #e9,#6a,#02,#03,#09,#02,#01,#2d
.l6404 equ $ + 6
	db #00,#00,#00,#e7,#53,#67,#c2,#65
	db #02,#66,#22,#66,#00,#00,#02,#1e
.l6412 equ $ + 4
	db #1c,#01,#00,#00,#5d,#6e,#04,#05
	db #0a,#00,#02,#1d,#00,#00,#00,#ef
.l6420 equ $ + 2
	db #92,#67,#e2,#64,#22,#65,#42,#65
	db #08,#00,#02,#1e,#cc,#02,#a2,#66
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#64,#22,#65
	db #42,#65,#08,#00,#62,#65,#a2,#65
	db #42,#65,#10,#10,#c2,#65,#02,#66
	db #22,#66,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#e2,#64,#42,#66
	db #62,#66,#00,#00,#e2,#64,#82,#66
	db #42,#65,#08,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
.l64c2 equ $ + 4
	db #dc,#5e,#00,#00,#a2,#66,#c2,#66
	db #dc,#5e,#e2,#66,#dc,#5e,#dc,#5e
	db #dc,#5e,#dc,#5e,#dc,#5e,#dc,#5e
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
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#09,#08,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0d,#0e,#0d,#0c
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0d,#0b,#09
	db #07,#05,#04,#06,#08,#06,#04,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#07,#0b,#0f,#13
	db #17,#1b,#1f,#13,#08,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0b,#0a,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#08,#07,#06,#05,#04,#03
	db #02,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#fe,#fd,#fc
	db #fb,#fa,#f9,#f8,#f7,#f6,#f5,#f4
	db #f3,#f2,#f1,#f0,#ef,#ee,#ed,#ec
	db #eb,#ea,#e9,#e8,#e7,#e6,#e5,#e4
.l6702 equ $ + 4
	db #e3,#e2,#e1,#e0,#00,#bf,#67,#00
	db #ef,#67,#00,#1d,#68,#00,#1d,#68
	db #00,#bf,#67,#00,#ef,#67,#00,#1d
	db #68,#00,#3b,#68,#00,#55,#68,#00
	db #75,#68,#00,#75,#68,#00,#9f,#68
	db #00,#e2,#68,#00,#9f,#68,#00,#9f
	db #68,#00,#25,#69,#00,#47,#69,#00
	db #b8,#69,#00,#75,#69,#00,#bb,#69
.l6741 equ $ + 3
	db #80,#02,#67,#00,#06,#6a,#00,#96
	db #6a,#00,#26,#6b,#00,#26,#6b,#00
	db #06,#6a,#00,#96,#6a,#00,#26,#6b
	db #00,#b6,#6b,#00,#b6,#6b,#00,#b6
	db #6b,#00,#b6,#6b,#00,#b6,#6b,#00
	db #46,#6c,#00,#8c,#6c,#00,#b6,#6b
	db #00,#d2,#6c,#00,#d2,#6c,#00,#d2
	db #6c,#00,#d2,#6c,#00,#62,#6d,#80
.l6780 equ $ + 2
	db #41,#67,#00,#f2,#6d,#00,#36,#6e
	db #00,#78,#6e,#00,#78,#6e,#00,#f2
	db #6d,#00,#36,#6e,#00,#78,#6e,#00
	db #ba,#6e,#00,#19,#6f,#00,#88,#6f
	db #00,#88,#6f,#00,#f7,#6f,#00,#55
	db #70,#00,#9a,#70,#00,#f7,#6f,#00
	db #e9,#70,#00,#e9,#70,#00,#e9,#70
	db #00,#e9,#70,#00,#2b,#71,#80,#80
	db #67,#3a,#04,#f1,#00,#46,#02,#01
	db #44,#84,#41,#84,#3d,#82,#3f,#82
	db #41,#84,#3a,#88,#3d,#82,#3f,#82
	db #41,#84,#3d,#82,#3f,#82,#41,#84
	db #3d,#82,#3f,#82,#41,#84,#44,#84
	db #41,#82,#bf,#01,#c1,#01,#3f,#82
	db #ff,#3a,#04,#01,#46,#82,#44,#84
	db #41,#84,#3d,#82,#3f,#82,#41,#84
	db #3a,#88,#3d,#82,#3f,#82,#41,#84
	db #3d,#82,#3f,#82,#41,#84,#3d,#82
	db #3f,#82,#41,#84,#44,#84,#41,#82
	db #3f,#82,#c6,#01,#c8,#01,#ff,#49
	db #04,#01,#48,#82,#46,#84,#44,#84
	db #41,#92,#3f,#86,#41,#82,#42,#82
	db #41,#82,#3f,#82,#41,#86,#3f,#82
	db #3d,#84,#3f,#86,#ff,#42,#04,#01
	db #41,#82,#3f,#84,#3d,#84,#3a,#8f
	db #bd,#01,#3f,#82,#42,#84,#41,#82
	db #3f,#84,#3d,#84,#3f,#92,#ff,#42
	db #04,#01,#41,#82,#3f,#84,#3d,#84
	db #3a,#8f,#bd,#01,#3f,#82,#42,#84
	db #41,#82,#3f,#84,#3d,#84,#44,#8d
	db #46,#82,#c6,#01,#49,#82,#ff,#46
	db #02,#f1,#00,#49,#02,#01,#4d,#82
	db #49,#82,#4d,#82,#50,#82,#cd,#01
	db #50,#83,#52,#10,#01,#46,#02,#01
	db #49,#82,#4d,#82,#c9,#01,#4d,#83
	db #50,#82,#4d,#82,#50,#82,#52,#90
	db #ff,#46,#02,#01,#4d,#82,#4b,#82
	db #46,#82,#4d,#82,#46,#82,#cd,#00
	db #4e,#03,#01,#50,#82,#4e,#82,#4d
	db #82,#49,#82,#4b,#82,#4d,#82,#cb
	db #01,#49,#83,#4d,#82,#44,#82,#4b
	db #82,#44,#82,#49,#82,#44,#82,#c8
	db #01,#49,#83,#4b,#82,#44,#82,#49
	db #82,#44,#82,#48,#82,#44,#82,#49
	db #82,#4b,#82,#ff,#46,#02,#01,#4d
	db #82,#4b,#82,#46,#82,#4d,#82,#46
	db #82,#cd,#00,#4e,#03,#01,#50,#82
	db #4e,#82,#4d,#82,#49,#82,#4b,#82
	db #4d,#82,#cb,#01,#49,#83,#4d,#82
	db #44,#82,#4b,#82,#44,#82,#49,#82
	db #44,#82,#c8,#01,#49,#83,#4b,#82
	db #44,#82,#49,#82,#44,#82,#48,#82
	db #44,#82,#49,#82,#4b,#82,#ff,#52
	db #04,#01,#54,#82,#55,#86,#54,#82
	db #55,#86,#54,#82,#55,#84,#57,#86
	db #55,#84,#54,#82,#55,#84,#54,#84
	db #54,#84,#52,#84,#54,#84,#52,#86
	db #ff,#52,#04,#b1,#00,#54,#02,#01
	db #55,#86,#57,#82,#59,#88,#5c,#82
	db #59,#82,#57,#82,#d5,#01,#57,#83
	db #59,#04,#f1,#03,#4d,#84,#41,#04
	db #01,#35,#84,#29,#84,#1d,#84,#91
	db #f1,#00,#11,#07,#f0,#00,#ff,#3a
	db #04,#f1,#00,#46,#02,#01,#44,#84
	db #41,#84,#3d,#82,#3f,#82,#41,#84
	db #44,#82,#bf,#f0,#01,#41,#82,#bf
	db #f0,#01,#41,#82,#3d,#02,#f1,#00
	db #3f,#02,#01,#41,#84,#44,#84,#41
	db #84,#3f,#82,#3f,#82,#41,#84,#44
	db #82,#bf,#f0,#01,#41,#82,#bf,#f0
	db #01,#44,#82,#c1,#f0,#01,#c6,#f0
	db #01,#ff,#00,#40,#ff,#3a,#04,#f1
	db #00,#46,#02,#01,#44,#84,#41,#84
	db #3d,#82,#3f,#82,#41,#84,#44,#82
	db #bf,#f0,#01,#41,#02,#f1,#01,#bf
	db #f0,#01,#41,#02,#f1,#01,#3d,#02
	db #f1,#00,#3f,#02,#01,#41,#84,#44
	db #84,#41,#84,#3f,#82,#3f,#82,#41
	db #84,#44,#82,#bf,#f0,#01,#41,#02
	db #f1,#01,#bf,#f0,#01,#44,#02,#f1
	db #01,#c1,#f0,#01,#c6,#f0,#01,#ff
	db #ae,#02,#a2,#00,#de,#b4,#01,#a2
	db #00,#b7,#02,#a2,#00,#de,#b4,#01
	db #a2,#00,#ae,#02,#a2,#00,#de,#b4
	db #01,#a2,#00,#b7,#02,#a2,#00,#de
	db #b4,#01,#a2,#00,#ae,#02,#aa,#00
	db #da,#b4,#01,#aa,#00,#b7,#02,#aa
	db #00,#da,#b4,#01,#aa,#00,#ae,#02
	db #aa,#00,#da,#b4,#01,#aa,#00,#b7
	db #02,#aa,#00,#da,#b4,#01,#aa,#00
	db #ae,#02,#a7,#00,#d7,#b4,#01,#a7
	db #00,#b7,#02,#a7,#00,#d7,#b4,#01
	db #a7,#00,#ae,#02,#a7,#00,#d7,#b4
	db #01,#a7,#00,#b7,#02,#a7,#00,#d7
	db #b4,#01,#a7,#00,#ae,#02,#a5,#00
	db #d5,#b4,#01,#a5,#00,#b7,#02,#a5
	db #00,#d5,#b4,#01,#a5,#00,#ae,#02
	db #a4,#00,#d9,#b4,#01,#a4,#00,#b7
	db #02,#a4,#00,#ae,#02,#ae,#02,#ff
	db #ae,#02,#a2,#00,#de,#b4,#01,#a2
	db #00,#b7,#02,#a2,#00,#de,#b4,#01
	db #a2,#00,#ae,#02,#a2,#00,#de,#b4
	db #01,#a2,#00,#b7,#02,#a2,#00,#de
	db #b4,#01,#a2,#00,#ae,#02,#aa,#00
	db #da,#b4,#01,#aa,#00,#b7,#02,#aa
	db #00,#da,#b4,#01,#aa,#00,#ae,#02
	db #aa,#00,#da,#b4,#01,#aa,#00,#b7
	db #02,#aa,#00,#da,#b4,#01,#aa,#00
	db #ae,#02,#a7,#00,#d7,#b4,#01,#a7
	db #00,#b7,#02,#a7,#00,#d7,#b4,#01
	db #a7,#00,#ae,#02,#a7,#00,#d7,#b4
	db #01,#a7,#00,#b7,#02,#a7,#00,#d7
	db #b4,#01,#a7,#00,#ae,#02,#ac,#00
	db #d5,#b4,#01,#ac,#00,#b7,#02,#ac
	db #00,#d5,#b4,#01,#ac,#00,#ae,#02
	db #ac,#00,#d9,#b4,#01,#ac,#00,#b7
	db #02,#ac,#00,#ae,#02,#ae,#02,#ff
	db #ae,#02,#aa,#00,#de,#b4,#01,#aa
	db #00,#b7,#02,#aa,#00,#de,#b4,#01
	db #aa,#00,#ae,#02,#aa,#00,#de,#b4
	db #01,#aa,#00,#b7,#02,#aa,#00,#de
	db #b4,#01,#aa,#00,#ae,#02,#a5,#00
	db #dc,#b4,#01,#a5,#00,#b7,#02,#a5
	db #00,#dc,#b4,#01,#a5,#00,#ae,#02
	db #a5,#00,#dc,#b4,#01,#a5,#00,#b7
	db #02,#a5,#00,#dc,#b4,#01,#a5,#00
	db #ae,#02,#ac,#00,#d7,#b4,#01,#ac
	db #00,#b7,#02,#ac,#00,#d7,#b4,#01
	db #ac,#00,#ae,#02,#ac,#00,#d7,#b4
	db #01,#ac,#00,#b7,#02,#ac,#00,#d7
	db #b4,#01,#ac,#00,#ae,#02,#ad,#00
	db #d5,#b4,#01,#ad,#00,#b7,#02,#ad
	db #00,#d5,#b4,#01,#ad,#00,#ae,#02
	db #ad,#00,#d9,#b4,#01,#ad,#00,#b7
	db #02,#ad,#00,#ae,#02,#ae,#02,#ff
	db #ae,#02,#a7,#00,#da,#b4,#01,#a7
	db #00,#b7,#02,#a7,#00,#da,#b4,#01
	db #a7,#00,#ae,#02,#a7,#00,#da,#b4
	db #01,#a7,#00,#b7,#02,#a7,#00,#da
	db #b4,#01,#a7,#00,#ae,#02,#aa,#00
	db #de,#b4,#01,#aa,#00,#b7,#02,#aa
	db #00,#de,#b4,#01,#aa,#00,#ae,#02
	db #aa,#00,#de,#b4,#01,#aa,#00,#b7
	db #02,#aa,#00,#de,#b4,#01,#aa,#00
	db #ae,#02,#a5,#00,#d9,#b4,#01,#a5
	db #00,#b7,#02,#a5,#00,#d9,#b4,#01
	db #a5,#00,#ae,#02,#a5,#00,#d9,#b4
	db #01,#a5,#00,#b7,#02,#a5,#00,#d9
	db #b4,#01,#a5,#00,#ae,#02,#ac,#00
	db #d7,#b4,#01,#ac,#00,#b7,#02,#ac
	db #00,#d7,#b4,#01,#ac,#00,#ae,#02
	db #ac,#00,#d7,#b4,#01,#ac,#00,#b7
	db #02,#ac,#00,#ae,#02,#ae,#02,#ff
	db #00,#01,#46,#02,#00,#4d,#02,#01
	db #4b,#82,#46,#82,#4d,#82,#46,#82
	db #cd,#00,#4e,#03,#01,#50,#82,#4e
	db #82,#4d,#82,#49,#82,#4b,#82,#4d
	db #82,#cb,#01,#49,#83,#4d,#82,#44
	db #82,#4b,#82,#44,#82,#49,#82,#44
	db #82,#c8,#01,#49,#83,#4b,#82,#44
	db #82,#49,#82,#44,#82,#48,#82,#44
	db #82,#49,#82,#cb,#01,#ff,#00,#01
	db #46,#02,#00,#4d,#02,#01,#4b,#82
	db #46,#82,#4d,#82,#46,#82,#cd,#00
	db #4e,#03,#01,#50,#82,#4e,#82,#4d
	db #82,#49,#82,#4b,#82,#4d,#82,#cb
	db #01,#49,#83,#4d,#82,#44,#82,#4b
	db #82,#44,#82,#49,#82,#44,#82,#c8
	db #01,#49,#83,#4b,#82,#44,#82,#49
	db #82,#44,#82,#48,#82,#44,#82,#49
	db #82,#cb,#01,#ff,#ae,#02,#aa,#00
	db #da,#b4,#01,#aa,#00,#b7,#02,#aa
	db #00,#da,#b4,#01,#aa,#00,#ae,#02
	db #aa,#00,#da,#b4,#01,#aa,#00,#b7
	db #02,#aa,#00,#da,#b4,#01,#aa,#00
	db #ae,#02,#ac,#00,#de,#b4,#01,#ac
	db #00,#b7,#02,#ac,#00,#de,#b4,#01
	db #ac,#00,#ae,#02,#ac,#00,#de,#b4
	db #01,#ac,#00,#b7,#02,#ac,#00,#de
	db #b4,#01,#ac,#00,#ae,#02,#ae,#00
	db #d9,#b4,#01,#ae,#00,#b7,#02,#ae
	db #00,#d9,#b4,#01,#ae,#00,#ae,#02
	db #ae,#00,#d9,#b4,#01,#ae,#00,#b7
	db #02,#ae,#00,#d9,#b4,#01,#ae,#00
	db #ae,#02,#aa,#00,#d7,#b4,#01,#aa
	db #00,#b7,#02,#aa,#00,#d7,#b4,#01
	db #aa,#00,#ae,#02,#aa,#00,#d7,#b4
	db #01,#aa,#00,#b7,#02,#aa,#00,#ae
	db #02,#ae,#02,#ff,#ae,#02,#a2,#00
	db #d9,#b4,#01,#a2,#00,#b7,#02,#a2
	db #00,#d9,#b4,#01,#a2,#00,#ae,#02
	db #a2,#00,#d9,#b4,#01,#a2,#00,#b7
	db #02,#a2,#00,#d9,#b4,#01,#a2,#00
	db #ae,#02,#aa,#00,#de,#b4,#01,#aa
	db #00,#b7,#02,#aa,#00,#de,#b4,#01
	db #aa,#00,#ae,#02,#aa,#00,#de,#b4
	db #01,#aa,#00,#b7,#02,#aa,#00,#de
	db #b4,#01,#aa,#00,#ae,#02,#a7,#00
	db #dc,#b4,#01,#a7,#00,#ae,#02,#a7
	db #00,#dc,#b4,#01,#a7,#00,#ae,#02
	db #a7,#00,#dc,#b4,#01,#a7,#00,#b7
	db #02,#a7,#00,#d9,#b4,#01,#a7,#00
	db #ae,#02,#ac,#00,#d7,#b4,#01,#ac
	db #00,#b7,#02,#ac,#00,#d7,#b4,#01
	db #ac,#00,#ae,#02,#ac,#00,#d7,#b4
	db #01,#ac,#00,#b7,#02,#ac,#00,#ae
	db #02,#ae,#02,#ff,#22,#02,#f0,#00
	db #2e,#02,#00,#22,#82,#2e,#82,#22
	db #82,#2e,#82,#22,#82,#2e,#82,#2a
	db #82,#36,#82,#2a,#82,#36,#82,#2a
	db #82,#36,#82,#2a,#82,#36,#82,#27
	db #82,#33,#82,#27,#82,#33,#82,#27
	db #82,#33,#82,#27,#82,#33,#82,#25
	db #82,#31,#82,#25,#82,#31,#82,#24
	db #82,#30,#82,#24,#82,#30,#82,#ff
	db #22,#02,#00,#2e,#82,#22,#82,#2e
	db #82,#22,#82,#2e,#82,#22,#82,#2e
	db #82,#2a,#82,#36,#82,#2a,#82,#36
	db #82,#2a,#82,#36,#82,#2a,#82,#36
	db #82,#27,#82,#33,#82,#27,#82,#33
	db #82,#27,#82,#33,#82,#27,#82,#33
	db #82,#2c,#82,#38,#82,#2c,#82,#38
	db #82,#2c,#82,#38,#82,#2c,#82,#38
	db #82,#ff,#2a,#02,#00,#36,#82,#2a
	db #82,#36,#82,#2a,#82,#36,#82,#2a
	db #82,#36,#82,#25,#82,#31,#82,#25
	db #82,#31,#82,#25,#82,#31,#82,#25
	db #82,#31,#82,#2c,#82,#38,#82,#2c
	db #82,#38,#82,#2c,#82,#38,#82,#2c
	db #82,#38,#82,#2d,#82,#39,#82,#2d
	db #82,#39,#82,#2d,#82,#39,#82,#2d
	db #82,#39,#82,#ff,#27,#02,#f0,#00
	db #33,#82,#27,#82,#33,#82,#27,#02
	db #00,#33,#82,#27,#82,#33,#82,#2a
	db #82,#36,#82,#de,#f5,#00,#dc,#f5
	db #00,#b6,#f0,#00,#de,#f5,#00,#5c
	db #82,#de,#f5,#01,#dc,#f5,#01,#aa
	db #f0,#00,#e1,#f5,#00,#5e,#02,#f5
	db #01,#25,#02,#f0,#00,#31,#02,#00
	db #25,#82,#31,#82,#25,#82,#31,#82
	db #25,#82,#31,#82,#2c,#82,#57,#02
	db #f5,#01,#d7,#f5,#01,#d9,#f5,#00
	db #38,#02,#f0,#00,#55,#02,#f5,#01
	db #52,#86,#ff,#27,#02,#f0,#00,#33
	db #82,#27,#82,#33,#82,#27,#02,#00
	db #33,#82,#27,#82,#33,#82,#2a,#82
	db #36,#82,#de,#f5,#01,#dc,#f5,#01
	db #b6,#f0,#00,#de,#f5,#00,#5c,#02
	db #f5,#01,#de,#f5,#01,#dc,#f5,#01
	db #aa,#f0,#00,#e1,#f5,#00,#5e,#02
	db #f5,#01,#25,#02,#f0,#00,#31,#02
	db #00,#25,#82,#31,#82,#25,#82,#31
	db #82,#25,#82,#31,#82,#2c,#82,#57
	db #02,#f5,#01,#d7,#f5,#01,#d9,#f5
	db #00,#38,#02,#f0,#00,#55,#02,#f5
	db #01,#d2,#f5,#01,#d5,#f5,#00,#ac
	db #f0,#00,#d7,#f5,#01,#38,#02,#f0
	db #00,#ff,#27,#02,#f0,#00,#33,#82
	db #27,#82,#33,#82,#27,#02,#00,#33
	db #82,#27,#82,#33,#82,#2a,#82,#36
	db #82,#de,#f5,#01,#dc,#f5,#01,#b6
	db #f0,#00,#de,#f5,#00,#5c,#02,#f5
	db #01,#de,#f5,#01,#dc,#f5,#01,#aa
	db #f0,#00,#e1,#f5,#00,#5e,#02,#f5
	db #01,#25,#02,#f0,#00,#31,#02,#00
	db #25,#82,#31,#82,#25,#82,#31,#82
	db #25,#82,#31,#82,#2c,#82,#57,#02
	db #f5,#01,#d7,#f5,#01,#d9,#f5,#00
	db #38,#02,#f0,#00,#55,#02,#f5,#01
	db #d2,#f5,#01,#d5,#f5,#00,#ac,#f0
	db #00,#d7,#f5,#01,#38,#02,#f0,#00
	db #ff,#27,#02,#f0,#00,#33,#82,#27
	db #82,#33,#82,#27,#02,#00,#33,#82
	db #27,#82,#33,#82,#2a,#82,#36,#82
	db #2a,#82,#59,#02,#f5,#01,#59,#82
	db #d7,#f5,#01,#d9,#f5,#01,#aa,#f0
	db #00,#d7,#f5,#01,#59,#02,#f5,#00
	db #25,#02,#f0,#00,#31,#02,#00,#25
	db #82,#31,#82,#25,#82,#31,#82,#25
	db #82,#31,#82,#2c,#82,#57,#02,#f5
	db #01,#d7,#f5,#01,#d9,#f5,#00,#38
	db #02,#f0,#00,#55,#02,#f5,#01,#52
	db #82,#2c,#02,#00,#38,#82,#ff,#46
	db #02,#f1,#00,#4d,#02,#01,#4b,#82
	db #46,#82,#4d,#82,#46,#82,#cd,#01
	db #4e,#83,#50,#82,#4e,#82,#4d,#82
	db #49,#82,#4b,#82,#4d,#82,#cb,#01
	db #49,#83,#4d,#82,#44,#82,#4b,#82
	db #44,#82,#49,#82,#44,#82,#c8,#01
	db #49,#83,#4b,#82,#44,#82,#49,#82
	db #44,#82,#48,#82,#44,#82,#49,#82
	db #4b,#02,#00,#ff,#46,#02,#01,#4d
	db #82,#4b,#82,#46,#82,#4d,#82,#46
	db #82,#cd,#01,#4e,#83,#50,#82,#4e
	db #82,#4d,#82,#59,#02,#00,#59,#82
	db #d7,#00,#d9,#00,#cb,#01,#d7,#00
	db #59,#02,#00,#4d,#02,#01,#44,#82
	db #4b,#82,#44,#82,#49,#82,#44,#82
	db #c8,#01,#49,#83,#4b,#82,#57,#02
	db #00,#d7,#00,#d9,#00,#44,#02,#01
	db #55,#02,#00,#52,#82,#49,#02,#01
	db #4b,#82,#ff,#2e,#02,#00,#2a,#82
	db #30,#82,#2a,#82,#31,#82,#2a,#82
	db #30,#82,#2a,#82,#31,#82,#2c,#82
	db #30,#82,#2c,#82,#31,#82,#2c,#82
	db #33,#82,#2c,#82,#31,#82,#29,#82
	db #30,#82,#29,#82,#31,#82,#29,#82
	db #30,#82,#29,#82,#30,#82,#2a,#82
	db #2e,#82,#2a,#82,#30,#82,#2a,#82
	db #2e,#82,#2a,#82,#ff,#22,#02,#00
	db #2e,#82,#22,#82,#2e,#82,#22,#82
	db #2e,#82,#22,#82,#2e,#82,#2a,#82
	db #36,#82,#2a,#82,#36,#82,#2a,#82
	db #36,#82,#2a,#82,#36,#82,#27,#82
	db #33,#82,#27,#82,#33,#82,#27,#82
	db #33,#82,#27,#82,#33,#82,#2c,#82
	db #38,#82,#2c,#82,#38,#82,#2c,#82
	db #38,#82,#2c,#82,#38,#82,#ff
;
.music_info
	db "Tree Issue 2 - Scene News (2002)(Brothers)()",0
	db "ST-Module",0

	read "music_end.asm"
