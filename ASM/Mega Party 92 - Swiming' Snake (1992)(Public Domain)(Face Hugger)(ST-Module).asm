; Music of Mega Party 92 - Swiming' Snake (1992)(Public Domain)(Face Hugger)(ST-Module)
; Ripped by Megachur the 02/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MEGP92SS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5c00

	read "music_header.asm"

	jp l5c0b
	jp l5c93
	jp l5c77
	db #66,#04
;
.init_music
.l5c0b
;
	ld b,#03
	ld ix,l5fda
	ld iy,l5f06
	ld de,#001c
.l5c18
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
	djnz l5c18
	ld a,#04
	ld (l5cbb),a
	ld a,d
	ld (l5ccf),a
	inc a
	ld (l5cb6),a
	ld a,#38
	ld (l5cc0),a
	ld a,#ff
	ld (l5f02),a
	ld (l5f03),a
	ld (l5f04),a
	ld (l5f05),a
	ld a,#0c
	ld c,d
	call l5ee4
	ld a,#0d
	ld c,d
	jp l5ee4
;
.stop_music
.l5c77
;
	ld a,#07
	ld c,#3f
	call l5ee4
	ld a,#08
	ld c,#00
	call l5ee4
	ld a,#09
	ld c,#00
	call l5ee4
	ld a,#0a
	ld c,#00
	jp l5ee4
;
.play_music
.l5c93
;
	ld hl,l5cb6
	dec (hl)
	ld ix,l5fda
	ld bc,l5fe8
	call l5d49
	ld ix,l5ff6
	ld bc,l6004
	call l5d49
	ld ix,l6012
	ld bc,l6020
	call l5d49
.l5cb6 equ $ + 1
	ld a,#00
	or a
	jr nz,l5cbf
.l5cbb equ $ + 1
	ld a,#00
	ld (l5cb6),a
.l5cc0 equ $ + 1
.l5cbf
	ld a,#00
	ld hl,l5f03
	cp (hl)
	jr z,l5cce
	ld (hl),a
	ld c,a
	ld a,#07
	call l5ee4
.l5ccf equ $ + 1
.l5cce
	ld a,#00
	ld hl,l5f02
	cp (hl)
	jr z,l5cdd
	ld (hl),a
	ld c,a
	ld a,#06
	call l5ee4
.l5cde equ $ + 1
.l5cdd
	ld a,#00
	ld hl,l5f04
	cp (hl)
	jr z,l5cec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l5ee4
.l5ced equ $ + 1
.l5cec
	ld a,#00
	ld hl,l5f05
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l5ee4
.l5cfa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l5dfa
.l5d09
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
	jp l5ee4
.l5d23
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l5d38
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l5d38
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l5d5c
.l5d49
	ld a,(l5cb6)
	or a
	jp nz,l5dfa
	dec (ix+#06)
	jp nz,l5dfa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l5d5c
	ld a,(hl)
	or a
	jr z,l5cfa
	cp #fe
	jr z,l5d09
	cp #ff
	jr z,l5d23
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l5f0c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l5d98
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l5d98
	and #7f
	ld (ix+#06),a
	jr l5deb
.l5d98
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l5dac
	ld (ix+#05),a
	ld (ix+#0a),d
.l5dac
	add a
	add a
	add a
	ld e,a
	ld hl,l6042
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
	jr z,l5deb
	cp #f0
	jp z,l5ea0
	cp #d0
	jp z,l5ebc
	cp #b0
	jp z,l5ec4
	cp #80
	jp nc,l5ecc
	cp #10
	jr nz,l5deb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l5deb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l5dfa
	ld a,(ix+#17)
	or a
	jr nz,l5e0e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l5e0e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l5e39
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l5f0c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l5e39
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
	call l5ee4
	ld c,h
	ld a,(ix+#03)
	call l5ee4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5e77
	and #0f
	sub (ix+#0a)
	jr nc,l5e6d
	xor a
.l5e6d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l5ee4
.l5e77
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
	jr z,l5e94
	ld b,a
	ld a,c
	ld (l5ccf),a
	ld a,b
	sub #40
.l5e94
	ld (l5e9b),a
	ld a,(l5cc0)
.l5e9b equ $ + 1
	bit 0,a
	ld (l5cc0),a
	ret
.l5ea0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l60c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l5deb
.l5ebc
	inc hl
	ld a,(hl)
	ld (l5cbb),a
	jp l5deb
.l5ec4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l5deb
.l5ecc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l5ced),a
	inc hl
	ld a,(hl)
	ld (l5cde),a
	jp l5deb
.l5ee4
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
.l5f05 equ $ + 3
.l5f04 equ $ + 2
.l5f03 equ $ + 1
.l5f02
	db #ff,#ff,#ff,#ff
.l5f06
	dw l63a2,l63c9,l63f0
.l5f0c
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
.l5fda equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l5fe8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5ff6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l6004 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6012 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l6020 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6042 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#60,#22,#61
	db #42,#61,#00,#00,#62,#61,#a2,#61
	db #c2,#61,#1c,#04,#e2,#61,#22,#62
	db #42,#62,#00,#00,#dc,#5a,#dc,#5a
	db #dc,#5a,#00,#00,#dc,#5a,#dc,#5a
	db #dc,#5a,#00,#00,#dc,#5a,#dc,#5a
	db #dc,#5a,#00,#00,#62,#62,#a2,#62
	db #42,#61,#00,#00,#dc,#5a,#dc,#5a
	db #dc,#5a,#00,#00,#e2,#60,#c2,#62
	db #42,#61,#00,#00,#dc,#5a,#dc,#5a
	db #dc,#5a,#00,#00,#e2,#62,#22,#63
	db #42,#61,#10,#10,#e2,#60,#42,#63
	db #42,#61,#0b,#15,#dc,#5a,#dc,#5a
	db #dc,#5a,#00,#00,#dc,#5a,#dc,#5a
	db #dc,#5a,#00,#00,#dc,#5a,#dc,#5a
	db #dc,#5a,#00,#00,#dc,#5a,#dc,#5a
.l60c2 equ $ + 4
	db #dc,#5a,#00,#00,#dc,#5a,#62,#63
	db #82,#63,#dc,#5a,#dc,#5a,#dc,#5a
	db #dc,#5a,#dc,#5a,#dc,#5a,#dc,#5a
	db #dc,#5a,#dc,#5a,#dc,#5a,#dc,#5a
	db #dc,#5a,#dc,#5a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #08,#07,#07,#07,#06,#06,#05,#04
	db #03,#02,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0b,#0a,#0a,#0a,#0a,#0a,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#05,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#20,#00
	db #40,#00,#60,#00,#80,#00,#b0,#00
	db #e0,#00,#10,#01,#40,#01,#70,#01
	db #a0,#01,#d0,#01,#00,#02,#00,#02
	db #30,#02,#60,#02,#70,#02,#80,#02
	db #90,#02,#a0,#02,#b0,#02,#b0,#02
	db #c0,#02,#e0,#02,#e0,#02,#e0,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0d,#0c,#0c,#0c,#0b,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#01,#00,#00,#0f,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#07,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0c,#0b,#0a
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#06,#06,#06,#07
	db #07,#07,#08,#08,#08,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#07,#0c,#00
	db #07,#0c,#00,#07,#0c,#00,#07,#0c
	db #00,#07,#0c,#00,#07,#0c,#00,#07
	db #0c,#00,#07,#0c,#00,#07,#0c,#00
	db #07,#0c,#00,#07,#00,#fc,#f9,#00
	db #fc,#f9,#00,#fc,#f9,#00,#fc,#f9
	db #00,#fc,#f9,#00,#fc,#f9,#00,#fc
	db #f9,#00,#fc,#f9,#00,#fc,#f9,#00
.l63a2 equ $ + 4
	db #fc,#f9,#00,#fc,#00,#17,#64,#00
	db #21,#64,#00,#17,#64,#00,#21,#64
	db #00,#2d,#64,#00,#34,#64,#00,#34
	db #64,#00,#37,#64,#00,#4c,#64,#00
	db #37,#64,#00,#4c,#64,#00,#64,#64
.l63c9 equ $ + 3
	db #80,#a2,#63,#00,#ad,#64,#00,#ee
	db #64,#00,#ad,#64,#00,#ee,#64,#00
	db #2f,#65,#00,#66,#65,#00,#66,#65
	db #00,#a5,#65,#00,#e4,#65,#00,#a5
	db #65,#00,#e4,#65,#00,#a5,#65,#80
.l63f0 equ $ + 2
	db #c9,#63,#00,#23,#66,#00,#37,#66
	db #00,#23,#66,#00,#37,#66,#00,#4b
	db #66,#00,#4e,#66,#00,#4e,#66,#00
	db #73,#66,#00,#4e,#66,#00,#73,#66
	db #00,#4e,#66,#00,#98,#66,#80,#f0
	db #63,#56,#18,#fb,#01,#59,#08,#0b
	db #5b,#a0,#ff,#59,#20,#fb,#01,#54
	db #0c,#0b,#56,#8c,#57,#88,#ff,#00
	db #20,#62,#20,#fb,#02,#ff,#00,#40
	db #ff,#43,#18,#11,#43,#02,#01,#45
	db #86,#43,#86,#45,#86,#46,#84,#48
	db #86,#4a,#86,#46,#84,#ff,#41,#18
	db #01,#41,#82,#43,#82,#45,#84,#46
	db #86,#45,#86,#41,#86,#3e,#86,#46
	db #82,#45,#82,#43,#84,#ff,#37,#02
	db #b8,#00,#32,#82,#2e,#82,#32,#82
	db #37,#82,#32,#82,#2e,#82,#32,#82
	db #37,#02,#b8,#01,#32,#82,#2e,#82
	db #32,#82,#37,#82,#32,#82,#2e,#82
	db #32,#82,#37,#02,#b8,#02,#32,#82
	db #2e,#82,#32,#82,#37,#82,#32,#82
	db #2e,#82,#32,#82,#37,#02,#b8,#03
	db #32,#82,#39,#82,#32,#82,#3a,#82
	db #32,#82,#39,#82,#32,#82,#ff,#1f
	db #02,#10,#1f,#04,#00,#24,#82,#3a
	db #04,#02,#1f,#04,#00,#22,#86,#21
	db #82,#3a,#02,#02,#43,#02,#f8,#01
	db #1d,#02,#10,#43,#02,#f8,#01,#1f
	db #02,#10,#1f,#04,#00,#24,#82,#3a
	db #04,#02,#1f,#04,#00,#22,#86,#21
	db #82,#3a,#02,#02,#46,#02,#f8,#01
	db #1d,#02,#10,#43,#02,#f8,#01,#ff
	db #1d,#02,#10,#1d,#04,#00,#21,#82
	db #3a,#04,#02,#1a,#04,#00,#1f,#86
	db #1d,#82,#3a,#02,#02,#41,#02,#f8
	db #01,#1a,#02,#10,#41,#02,#f8,#01
	db #1d,#02,#10,#1d,#04,#00,#21,#82
	db #3a,#04,#02,#1d,#04,#00,#22,#86
	db #21,#82,#3a,#02,#02,#3e,#02,#f8
	db #01,#1d,#02,#10,#43,#02,#f8,#01
	db #ff,#1f,#02,#10,#2b,#02,#00,#2e
	db #82,#2b,#82,#29,#84,#1f,#82,#2b
	db #82,#29,#82,#2b,#84,#26,#82,#2b
	db #84,#2b,#82,#2b,#82,#1f,#82,#2b
	db #82,#2e,#82,#2b,#82,#29,#84,#1f
	db #82,#2b,#82,#29,#82,#2b,#84,#26
	db #82,#2b,#84,#2b,#82,#2b,#82,#ff
	db #1f,#02,#10,#2b,#02,#00,#2e,#82
	db #2b,#82,#2e,#04,#02,#1f,#02,#00
	db #2b,#82,#29,#82,#2b,#84,#26,#82
	db #2e,#04,#02,#2b,#02,#00,#2b,#82
	db #1f,#82,#2b,#82,#2e,#82,#2b,#82
	db #2e,#04,#02,#1f,#02,#00,#2b,#82
	db #29,#82,#2b,#84,#26,#82,#2e,#04
	db #02,#2b,#02,#00,#2b,#82,#ff,#1f
	db #02,#10,#2b,#02,#00,#2e,#82,#2b
	db #82,#2e,#04,#02,#1f,#02,#00,#2b
	db #82,#29,#82,#2b,#84,#26,#82,#2e
	db #04,#02,#2b,#02,#00,#2b,#82,#1f
	db #82,#2b,#82,#2e,#82,#2b,#82,#2e
	db #04,#02,#1f,#02,#00,#2b,#82,#29
	db #82,#2b,#84,#26,#82,#2e,#04,#02
	db #2b,#02,#00,#2b,#82,#ff,#1d,#02
	db #10,#29,#02,#00,#2d,#82,#29,#82
	db #2e,#04,#02,#1a,#02,#00,#26,#82
	db #24,#82,#26,#84,#24,#82,#2e,#04
	db #02,#26,#02,#00,#26,#82,#1d,#82
	db #29,#82,#2d,#82,#29,#82,#2e,#04
	db #02,#1a,#02,#00,#26,#82,#24,#82
	db #26,#84,#24,#82,#2e,#04,#02,#26
	db #02,#00,#26,#82,#ff,#43,#18,#0a
	db #45,#82,#46,#82,#45,#84,#43,#8c
	db #3e,#84,#41,#86,#3c,#85,#3e,#85
	db #ff,#3c,#0c,#0a,#41,#82,#43,#82
	db #45,#88,#41,#84,#46,#8c,#45,#88
	db #41,#84,#43,#8c,#ff,#00,#40,#ff
	db #2e,#04,#16,#2e,#02,#06,#2e,#82
	db #35,#86,#35,#84,#35,#82,#32,#82
	db #30,#82,#2e,#88,#2e,#84,#2e,#84
	db #35,#8a,#2e,#82,#35,#82,#32,#82
	db #30,#84,#2e,#84,#ff,#2e,#04,#16
	db #2e,#02,#06,#2e,#82,#35,#86,#35
	db #84,#35,#82,#32,#82,#30,#82,#2e
	db #88,#2e,#84,#2e,#84,#35,#8a,#2e
	db #82,#35,#82,#32,#82,#30,#84,#2e
	db #84,#ff,#2b,#36,#a0,#24,#b9,#16
	db #b7,#06,#33,#83,#30,#83,#30,#82
	db #ff
;
.music_info
	db "Mega Party 92 - Swiming' Snake (1992)(Public Domain)(Face Hugger)",0
	db "ST-Module",0

	read "music_end.asm"
