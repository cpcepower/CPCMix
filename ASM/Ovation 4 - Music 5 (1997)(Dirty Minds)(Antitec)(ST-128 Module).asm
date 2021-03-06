; Music of Ovation 4 - Music 5 (1997)(Dirty Minds)(Antitec)(ST-128 Module)
; Ripped by Megachur the 26/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OVATI4M5.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

	jr l8004
	jr l8013
.l8004
	call l8037
	ld hl,l8024
	ld de,l801c
	ld bc,l81ff
	jp #bcd7
.l8013
	ld hl,l8024
	call #bcdd
	jp l80af
.l801c
	push ix
	call l80cb
	pop ix
	ret
.l8024
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l8037
	jp l80cb
	jp l80af
;
.init_music
.l8037
;
	xor a
	ld hl,l85e2
	call l80a8
	ld hl,l8610
	call l80a8
	ld hl,l863e
	call l80a8
	ld ix,l85de
	ld iy,l8668
	ld de,#002e
	ld b,#03
.l8057
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l8057
	ld hl,l84f7
	ld (hl),#04
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l84f3),hl
	ld (l84f5),hl
	ld a,#0c
	ld c,d
	call l84d3
	ld a,#0d
	ld c,d
	jp l84d3
.l80a8
	ld b,#2a
.l80aa
	ld (hl),a
	inc hl
	djnz l80aa
	ret
;
.stop_music
.l80af
;
	ld a,#07
	ld c,#3f
	call l84d3
	ld a,#08
	ld c,#00
	call l84d3
	ld a,#09
	ld c,#00
	call l84d3
	ld a,#0a
	ld c,#00
	jp l84d3
;
.play_music
.l80cb
;
	ld hl,l84f9
	dec (hl)
	ld ix,l85de
	ld bc,l85ec
	call l816d
	ld ix,l860c
	ld bc,l861a
	call l816d
	ld ix,l863a
	ld bc,l8648
	call l816d
	ld hl,l84f2
	ld de,l84f9
	ld b,#06
	call l814a
	ld b,#07
	call l814a
	ld b,#0b
	call l814a
	ld b,#0d
	call l814a
	ld de,l84f9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l85fd
	call l8123
	ld hl,l862b
	call l8123
	ld hl,l8659
.l8123
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l8138
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l8138
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l814a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l84d3
.l8155
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l84d3
.l816d
	ld a,(l84f9)
	or a
	jp nz,l8225
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l8225
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l8155
	or a
	jp z,l821a
	ld r,a
	and #7f
	cp #10
	jr c,l81f5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l836d
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l81ce
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l81ce
	rrca
	ld c,a
	ld hl,l866e
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l81ed
	ld (ix+#1e),b
.l81ed
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l820e
.l81f5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l84fe
.l81ff
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add e
	add h
	add l
	add (hl)
	add h
.l820e
	ld a,d
	or a
	jr nz,l821c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l821c
.l821a
	ld a,(hl)
	inc hl
.l821c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l8225
	ld a,(ix+#17)
	or a
	jr nz,l823b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l823b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l8251
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l8251
	ld a,(ix+#0d)
	or a
	jr z,l825f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l827d
.l825f
	ld a,(ix+#1a)
	or a
	jp z,l8284
	ld c,a
	cp #03
	jr nz,l826c
	xor a
.l826c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l827d
	ld a,(ix+#18)
	dec c
	jr z,l827d
	ld a,(ix+#19)
.l827d
	add (ix+#07)
	ld b,d
	call l836d
.l8284
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l82ac
	dec (ix+#1b)
	jr nz,l82ac
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l82e4
.l82ac
	ld a,(ix+#29)
	or a
	jr z,l82e4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l82db
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l82d2
	ld (ix+#29),#ff
	jr l82db
.l82d2
	cp (ix+#2b)
	jr nz,l82db
	ld (ix+#29),#01
.l82db
	ld b,d
	or a
	jp p,l82e1
	dec b
.l82e1
	ld c,a
	jr l82ef
.l82e4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l82ef
	pop hl
	bit 7,(ix+#14)
	jr z,l82f8
	ld h,d
	ld l,d
.l82f8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l84d3
	ld c,h
	ld a,(ix+#02)
	call l84d3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l834b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l833a
	dec (ix+#09)
	jr nz,l833a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l8332
	xor a
	jr l8337
.l8332
	cp #10
	jr nz,l8337
	dec a
.l8337
	ld (ix+#1e),a
.l833a
	ld a,b
	sub (ix+#1e)
	jr nc,l8341
	xor a
.l8341
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l84d3
.l834b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l84fa)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l8369
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l8369
	ld (l84fa),hl
	ret
.l836d
	ld hl,l851c
	cp #61
	jr nc,l8377
	add a
	ld c,a
	add hl,bc
.l8377
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l8381
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l84a6
	ld (ix+#1e),a
	jp l820e
.l8393
	dec b
.l8394
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l839f
	neg
.l839f
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l820e
.l83b5
	dec b
	jr l83b9
.l83b8
	inc b
.l83b9
	call l84a6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l820e
.l83c8
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l848b
.l83d9
	ld a,(hl)
	inc hl
	or a
	jr z,l83fb
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l83fb
	ld (ix+#29),a
	jp l820e
.l8401
	dec hl
	ld a,(hl)
	and #0f
	ld (l84fd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l84fc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l820e
.l841b
	ld a,(hl)
	or a
	jr z,l842c
	call l84a8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l820e
.l842c
	ld hl,#0101
	ld (l84f8),hl
	jp l820e
.l8435
	call l84a6
	ld (ix+#1e),a
	jp l820e
.l843e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l84b7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l84b7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l820e
.l8460
	ld a,(hl)
	inc hl
	ld (l84f7),a
	jp l820e
.l8468
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l820e
.l8487
	call l84a6
	add a
.l848b
	ld b,#00
	ld c,a
	push hl
	ld hl,l86ee
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l820e
.l84a6
	ld a,(hl)
	inc hl
.l84a8
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l84b7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l866e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l84d3
	di
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
	ei
.l84f2
	ret
.l84fa equ $ + 7
.l84f9 equ $ + 6
.l84f8 equ $ + 5
.l84f7 equ $ + 4
.l84f5 equ $ + 2
.l84f3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l84fd equ $ + 2
.l84fc equ $ + 1
	db #38,#00,#00
.l84fe
	dw l8381,l8394,l8393,l83b8
	dw l83b5,l83c8,l83d9,l8401
	dw l841b,l8401,l8435,l843e
	dw l8460,l8468,l8487
.l851c
	dw #0000,#0e18,#0d4d,#0c8e
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
.l85e2 equ $ + 4
.l85de
	db #08,#00,#01,#08,#00,#00,#00,#00
.l85ec equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85fd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l860c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l8610 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l861a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l862b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l863a equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l863e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8648 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8659 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8668 equ $ + 2
	db #00,#00,#ae,#88,#fc,#88,#4a,#89
.l866e
	db #ff,#3f,#00,#40,#00,#40,#00,#00
	db #0e,#07,#4e,#07,#6e,#07,#00,#00
	db #ff,#3f,#00,#40,#00,#40,#00,#00
	db #00,#40,#ff,#3f,#ff,#3f,#ff,#ff
	db #0e,#c7,#4e,#c7,#6e,#c7,#00,#00
	db #00,#40,#ff,#3f,#ff,#3f,#ff,#ff
	db #0e,#87,#4e,#87,#6e,#87,#00,#00
	db #0e,#c7,#0e,#c8,#2e,#c8,#18,#07
	db #4e,#c8,#8e,#c8,#2e,#c8,#18,#07
	db #00,#40,#ff,#3f,#ff,#3f,#ff,#ff
	db #ff,#3f,#00,#40,#00,#40,#00,#00
	db #00,#40,#ff,#3f,#ff,#3f,#ff,#ff
	db #0e,#08,#6e,#08,#6e,#07,#00,#00
	db #8e,#87,#ce,#87,#ee,#87,#10,#10
	db #0e,#88,#4e,#88,#6e,#88,#00,#00
	db #0e,#09,#4e,#09,#6e,#09,#1a,#00
.l86ee
	db #8e,#88,#2e,#c9,#00,#40,#00,#40
	db #00,#40,#ff,#3f,#ff,#3f,#ff,#3f
	db #ff,#3f,#00,#40,#00,#40,#00,#40
	db #00,#40,#ff,#3f,#ff,#3f,#ff,#3f
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0c,#0b,#0a
	db #09,#09,#08,#08,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #04,#06,#07,#09,#0c,#11,#17,#1d
	db #15,#10,#0c,#09,#06,#05,#04,#04
	db #03,#03,#03,#02,#02,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#98,#89,#00,#a7,#89,#00,#c9
	db #89,#00,#fe,#89,#00,#a7,#89,#00
	db #c9,#89,#00,#fe,#89,#00,#40,#8a
	db #00,#72,#8a,#00,#d3,#8a,#00,#e3
	db #8a,#00,#f3,#8a,#00,#98,#89,#00
	db #a7,#89,#00,#c9,#89,#00,#5c,#8b
	db #00,#4f,#8b,#00,#5c,#8b,#00,#4f
	db #8b,#00,#69,#8b,#00,#6c,#8b,#00
	db #cc,#8b,#00,#4d,#8c,#00,#ce,#8c
	db #00,#4f,#8d,#80,#ae,#88,#00,#de
	db #8d,#00,#de,#8d,#00,#3f,#8e,#00
	db #a0,#8e,#00,#de,#8d,#00,#3f,#8e
	db #00,#a0,#8e,#00,#de,#8d,#00,#01
	db #8f,#00,#62,#8f,#00,#c3,#8f,#00
	db #3f,#8e,#00,#de,#8d,#00,#de,#8d
	db #00,#3f,#8e,#00,#85,#90,#00,#24
	db #90,#00,#85,#90,#00,#24,#90,#00
	db #69,#8b,#00,#de,#8d,#00,#69,#8b
	db #00,#e6,#90,#00,#68,#91,#00,#e9
	db #91,#80,#fc,#88,#00,#79,#92,#00
	db #79,#92,#00,#79,#92,#00,#79,#92
	db #00,#79,#92,#00,#79,#92,#00,#79
	db #92,#00,#79,#92,#00,#79,#92,#00
	db #79,#92,#00,#79,#92,#00,#79,#92
	db #00,#79,#92,#00,#79,#92,#00,#79
	db #92,#00,#79,#92,#00,#79,#92,#00
	db #79,#92,#00,#79,#92,#00,#b6,#92
	db #00,#79,#92,#00,#79,#92,#00,#79
	db #92,#00,#79,#92,#00,#f6,#92,#80
	db #4a,#89,#fe,#3a,#bd,#d0,#bb,#d0
	db #b9,#d0,#b8,#d0,#b6,#d0,#b4,#d0
	db #ff,#47,#d0,#02,#49,#d0,#06,#4c
	db #d0,#02,#49,#d0,#06,#50,#d0,#02
	db #49,#d0,#02,#4e,#d0,#02,#4c,#d0
	db #02,#4e,#d0,#04,#50,#d0,#02,#49
	db #d0,#22,#ff,#4e,#d0,#10,#4e,#d0
	db #02,#4e,#d0,#02,#51,#d0,#02,#4e
	db #d0,#02,#55,#d0,#02,#4e,#d0,#02
	db #58,#d0,#02,#57,#d0,#02,#55,#d0
	db #15,#d1,#d0,#d0,#d0,#ce,#d0,#cc
	db #d0,#d0,#d0,#ce,#d0,#cc,#d0,#cb
	db #d0,#cc,#d0,#cb,#d0,#c9,#d0,#ff
	db #47,#d0,#10,#47,#d0,#02,#47,#d0
	db #02,#4b,#d0,#02,#47,#d0,#02,#45
	db #d0,#02,#42,#d0,#02,#45,#d0,#02
	db #42,#d0,#02,#40,#d0,#02,#42,#d0
	db #02,#40,#d0,#02,#42,#d0,#02,#3d
	db #d0,#02,#3b,#d0,#0c,#af,#d0,#b1
	db #d0,#b3,#d0,#b4,#d0,#b3,#d0,#b4
	db #d0,#b6,#d0,#b4,#d0,#b6,#d0,#b4
	db #d0,#ff,#49,#d0,#14,#4e,#d0,#02
	db #4c,#d0,#02,#4e,#d0,#02,#4c,#d0
	db #04,#ce,#d0,#cc,#d0,#49,#d0,#06
	db #49,#d0,#02,#47,#d0,#02,#49,#d0
	db #02,#47,#d0,#02,#4c,#d0,#02,#4c
	db #d0,#02,#49,#d0,#0a,#49,#d0,#02
	db #4c,#d0,#02,#ff,#50,#d0,#02,#4b
	db #d0,#02,#47,#d0,#02,#44,#d0,#02
	db #47,#d0,#02,#4b,#d0,#02,#47,#d0
	db #02,#50,#d0,#02,#53,#d0,#02,#50
	db #d0,#02,#4b,#d0,#02,#47,#d0,#02
	db #4b,#d0,#02,#47,#d0,#02,#44,#d0
	db #02,#3f,#d0,#0a,#d7,#d0,#d3,#d0
	db #d0,#d0,#cb,#d0,#d0,#d0,#cb,#d0
	db #c7,#d0,#c4,#d0,#c7,#d0,#c4,#d0
	db #bf,#d0,#bb,#d0,#b8,#d0,#bb,#d0
	db #bf,#d0,#bb,#d0,#bf,#d0,#c4,#d0
	db #c7,#d0,#c4,#d0,#c7,#d0,#cb,#d0
	db #c9,#d0,#cb,#d0,#ff,#4c,#d0,#1a
	db #4c,#d0,#02,#4b,#d0,#02,#47,#d0
	db #02,#44,#d0,#20,#ff,#4c,#d0,#1a
	db #4c,#d0,#02,#4b,#d0,#02,#47,#d0
	db #02,#50,#d0,#20,#ff,#4e,#d0,#10
	db #55,#d0,#02,#53,#d0,#02,#51,#d0
	db #02,#4e,#d0,#02,#55,#d0,#02,#50
	db #d0,#02,#4e,#d0,#02,#4c,#d0,#02
	db #ce,#d0,#cc,#d0,#c9,#d0,#c7,#d0
	db #c5,#d0,#c7,#d0,#c5,#d0,#c2,#d0
	db #c0,#d0,#c2,#d0,#c0,#d0,#bd,#d0
	db #bb,#d0,#bd,#d0,#bb,#d0,#b9,#d0
	db #b6,#d0,#b9,#d0,#bb,#d0,#bd,#d0
	db #bb,#d0,#bd,#d0,#c0,#d0,#c2,#d0
	db #c0,#d0,#c5,#d0,#c2,#d0,#c0,#d0
	db #c2,#d0,#c5,#d0,#c7,#d0,#c9,#d0
	db #ff,#45,#d0,#18,#45,#d0,#04,#47
	db #d0,#04,#49,#d0,#20,#ff,#45,#d0
	db #18,#45,#d0,#04,#44,#d0,#04,#3f
	db #d0,#20,#ff,#fe,#40,#ff,#47,#d0
	db #02,#49,#d0,#06,#4c,#d0,#02,#49
	db #d0,#06,#50,#d0,#02,#4c,#d0,#02
	db #53,#d0,#02,#4c,#d0,#02,#55,#d0
	db #06,#d5,#d0,#d3,#d0,#d0,#d0,#ce
	db #d0,#d0,#d0,#ce,#d0,#cc,#d0,#c9
	db #d0,#cc,#d0,#c9,#d0,#c7,#d0,#c4
	db #d0,#c9,#d0,#c7,#d0,#c4,#d0,#c0
	db #d0,#c4,#d0,#c0,#d0,#bd,#d0,#c0
	db #d0,#c4,#d0,#c0,#d0,#c4,#d0,#c9
	db #d0,#c4,#d0,#c9,#d0,#cc,#d0,#c9
	db #d0,#cc,#d0,#ce,#d0,#cc,#d0,#c9
	db #d0,#cc,#d0,#c9,#d0,#ff,#d5,#d0
	db #d0,#d0,#cc,#d0,#d5,#d0,#d0,#d0
	db #cc,#d0,#d5,#d0,#d0,#d0,#cc,#d0
	db #d5,#d0,#d0,#d0,#cc,#d0,#d5,#d0
	db #d0,#d0,#cc,#d0,#d5,#d0,#d0,#d0
	db #cc,#d0,#d5,#d0,#d0,#d0,#cc,#d0
	db #d5,#d0,#d0,#d0,#cc,#d0,#d5,#d0
	db #d0,#d0,#cc,#d0,#d5,#d0,#d3,#d0
	db #d0,#d0,#d3,#d0,#d5,#d0,#d3,#d0
	db #d8,#d0,#d5,#d0,#d3,#d0,#d5,#d0
	db #d3,#d0,#d0,#d0,#d5,#d0,#d3,#d0
	db #d0,#d0,#cc,#d0,#c9,#d0,#d0,#d0
	db #cc,#d0,#c9,#d0,#c7,#d0,#c9,#d0
	db #c7,#d0,#cc,#d0,#c9,#d0,#d0,#d0
	db #cc,#d0,#c9,#d0,#c7,#d0,#c9,#d0
	db #c7,#d0,#c4,#d0,#c7,#d0,#c9,#d0
	db #c7,#d0,#c4,#d0,#c9,#d0,#ff,#cc
	db #d0,#d0,#d0,#d5,#d0,#cc,#d0,#d0
	db #d0,#d5,#d0,#cc,#d0,#d0,#d0,#d5
	db #d0,#cc,#d0,#d0,#d0,#d5,#d0,#cc
	db #d0,#d0,#d0,#d5,#d0,#cc,#d0,#d0
	db #d0,#d5,#d0,#cc,#d0,#d0,#d0,#d5
	db #d0,#d8,#d0,#d5,#d0,#d0,#d0,#cc
	db #d0,#c9,#d0,#cc,#d0,#c9,#d0,#c4
	db #d0,#c9,#d0,#cc,#d0,#ce,#d0,#cc
	db #d0,#ce,#d0,#d0,#d0,#d3,#d0,#d5
	db #d0,#d3,#d0,#d5,#d0,#d8,#d0,#d5
	db #d0,#d3,#d0,#d8,#d0,#d5,#d0,#d3
	db #d0,#d0,#d0,#d8,#d0,#d5,#d0,#d3
	db #d0,#d0,#d0,#d8,#d0,#d5,#d0,#d3
	db #d0,#d0,#d0,#d8,#d0,#d5,#d0,#d3
	db #d0,#d0,#d0,#ce,#d0,#cc,#d0,#c9
	db #d0,#c7,#d0,#c4,#d0,#c7,#d0,#ff
	db #d0,#d0,#cb,#d0,#c7,#d0,#c4,#d0
	db #d0,#d0,#cb,#d0,#c7,#d0,#c4,#d0
	db #d0,#d0,#cb,#d0,#c7,#d0,#c4,#d0
	db #d0,#d0,#cb,#d0,#c7,#d0,#c4,#d0
	db #d0,#d0,#cb,#d0,#c7,#d0,#c4,#d0
	db #d0,#d0,#cb,#d0,#c7,#d0,#c4,#d0
	db #d0,#d0,#cb,#d0,#c7,#d0,#c4,#d0
	db #d0,#d0,#cb,#d0,#c7,#d0,#c4,#d0
	db #cc,#d0,#d1,#d0,#d5,#d0,#cc,#d0
	db #d1,#d0,#d5,#d0,#cc,#d0,#d1,#d0
	db #d5,#d0,#cc,#d0,#d1,#d0,#d5,#d0
	db #cc,#d0,#d1,#d0,#d5,#d0,#d1,#d0
	db #d5,#d0,#d3,#d0,#d1,#d0,#cc,#d0
	db #d1,#d0,#cc,#d0,#c9,#d0,#c9,#d0
	db #c7,#d0,#c4,#d0,#c7,#d0,#c9,#d0
	db #c7,#d0,#c4,#d0,#c9,#d0,#c7,#d0
	db #ff,#dc,#d0,#da,#d0,#d8,#d0,#d7
	db #d0,#d8,#d0,#d7,#d0,#d5,#d0,#d3
	db #d0,#d5,#d0,#d3,#d0,#d1,#d0,#d0
	db #d0,#d1,#d0,#d0,#d0,#ce,#d0,#cc
	db #d0,#d0,#d0,#ce,#d0,#cc,#d0,#cb
	db #d0,#cc,#d0,#cb,#d0,#c9,#d0,#c7
	db #d0,#c9,#d0,#c7,#d0,#c5,#d0,#c4
	db #d0,#c5,#d0,#c4,#d0,#c2,#d0,#c0
	db #d0,#c4,#d0,#c2,#d0,#c0,#d0,#bf
	db #d0,#c0,#d0,#bf,#d0,#bd,#d0,#bb
	db #d0,#bd,#d0,#bb,#d0,#b9,#d0,#b8
	db #d0,#b9,#d0,#b8,#d0,#b6,#d0,#34
	db #db,#10,#34,#db,#10,#34,#db,#11
	db #34,#db,#11,#34,#db,#12,#34,#db
	db #12,#34,#db,#13,#34,#db,#13,#34
	db #db,#14,#34,#db,#14,#34,#db,#15
	db #34,#db,#15,#34,#db,#16,#34,#db
	db #17,#0b,#18,#0b,#19,#0b,#10,#ff
	db #2c,#df,#20,#31,#d0,#02,#31,#d0
	db #02,#31,#d0,#02,#34,#d0,#02,#31
	db #d0,#02,#31,#d0,#02,#31,#d0,#02
	db #38,#d0,#02,#31,#d0,#02,#31,#d0
	db #02,#31,#d0,#02,#34,#d0,#02,#31
	db #d0,#02,#31,#d0,#02,#31,#d0,#02
	db #2c,#d0,#02,#31,#d0,#02,#31,#d0
	db #02,#31,#d0,#02,#34,#d0,#02,#31
	db #d0,#02,#31,#d0,#02,#31,#d0,#02
	db #38,#d0,#02,#31,#d0,#02,#31,#d0
	db #02,#31,#d0,#02,#34,#d0,#02,#31
	db #d0,#02,#31,#d0,#02,#31,#d0,#02
	db #ff,#31,#df,#20,#36,#d0,#02,#36
	db #d0,#02,#36,#d0,#02,#39,#d0,#02
	db #36,#d0,#02,#36,#d0,#02,#36,#d0
	db #02,#3d,#d0,#02,#36,#d0,#02,#36
	db #d0,#02,#36,#d0,#02,#39,#d0,#02
	db #36,#d0,#02,#36,#d0,#02,#36,#d0
	db #02,#31,#d0,#02,#36,#d0,#02,#36
	db #d0,#02,#36,#d0,#02,#39,#d0,#02
	db #36,#d0,#02,#36,#d0,#02,#36,#d0
	db #02,#3d,#d0,#02,#36,#d0,#02,#36
	db #d0,#02,#36,#d0,#02,#39,#d0,#02
	db #36,#d0,#02,#36,#d0,#02,#36,#d0
	db #02,#ff,#2a,#df,#20,#2f,#d0,#02
	db #2f,#d0,#02,#2f,#d0,#02,#33,#d0
	db #02,#2f,#d0,#02,#2f,#d0,#02,#2f
	db #d0,#02,#36,#d0,#02,#2f,#d0,#02
	db #2f,#d0,#02,#2f,#d0,#02,#33,#d0
	db #02,#2f,#d0,#02,#2f,#d0,#02,#2f
	db #d0,#02,#2a,#d0,#02,#2f,#d0,#02
	db #2f,#d0,#02,#2f,#d0,#02,#33,#d0
	db #02,#2f,#d0,#02,#2f,#d0,#02,#2f
	db #d0,#02,#36,#d0,#02,#2f,#d0,#02
	db #2f,#d0,#02,#2f,#d0,#02,#33,#d0
	db #02,#2f,#d0,#02,#2f,#d0,#02,#2f
	db #d0,#02,#ff,#33,#d0,#02,#38,#d0
	db #02,#38,#d0,#02,#38,#d0,#02,#3b
	db #d0,#02,#38,#d0,#02,#38,#d0,#02
	db #38,#d0,#02,#3f,#d0,#02,#38,#d0
	db #02,#38,#d0,#02,#38,#d0,#02,#3b
	db #d0,#02,#38,#d0,#02,#38,#d0,#02
	db #38,#d0,#02,#33,#d0,#02,#38,#d0
	db #02,#38,#d0,#02,#38,#d0,#02,#3b
	db #d0,#02,#38,#d0,#02,#38,#d0,#02
	db #38,#d0,#02,#3f,#d0,#02,#38,#d0
	db #02,#38,#d0,#02,#38,#d0,#02,#3b
	db #d0,#02,#38,#d0,#02,#38,#d0,#02
	db #38,#d0,#02,#ff,#2f,#d0,#02,#34
	db #d0,#02,#34,#d0,#02,#34,#d0,#02
	db #38,#d0,#02,#34,#d0,#02,#34,#d0
	db #02,#34,#d0,#02,#3b,#d0,#02,#34
	db #d0,#02,#34,#d0,#02,#34,#d0,#02
	db #38,#d0,#02,#34,#d0,#02,#34,#d0
	db #02,#34,#d0,#02,#2c,#d0,#02,#31
	db #d0,#02,#31,#d0,#02,#31,#d0,#02
	db #34,#d0,#02,#31,#d0,#02,#31,#d0
	db #02,#31,#d0,#02,#38,#d0,#02,#31
	db #d0,#02,#31,#d0,#02,#31,#d0,#02
	db #34,#d0,#02,#31,#d0,#02,#31,#d0
	db #02,#31,#d0,#02,#ff,#2f,#d0,#02
	db #34,#d0,#02,#34,#d0,#02,#34,#d0
	db #02,#38,#d0,#02,#34,#d0,#02,#34
	db #d0,#02,#34,#d0,#02,#3b,#d0,#02
	db #34,#d0,#02,#34,#d0,#02,#34,#d0
	db #02,#38,#d0,#02,#34,#d0,#02,#34
	db #d0,#02,#34,#d0,#02,#33,#d0,#02
	db #38,#d0,#02,#38,#d0,#02,#38,#d0
	db #02,#3b,#d0,#02,#38,#d0,#02,#38
	db #d0,#02,#38,#d0,#02,#3f,#d0,#02
	db #38,#d0,#02,#38,#d0,#02,#38,#d0
	db #02,#3b,#d0,#02,#38,#d0,#02,#38
	db #d0,#02,#38,#d0,#02,#ff,#28,#d0
	db #02,#2d,#d0,#02,#2d,#d0,#02,#2d
	db #d0,#02,#31,#d0,#02,#2d,#d0,#02
	db #2d,#d0,#02,#2d,#d0,#02,#34,#d0
	db #02,#2d,#d0,#02,#2d,#d0,#02,#2d
	db #d0,#02,#31,#d0,#02,#2d,#d0,#02
	db #2d,#d0,#02,#2d,#d0,#02,#2c,#d0
	db #02,#31,#d0,#02,#31,#d0,#02,#31
	db #d0,#02,#34,#d0,#02,#31,#d0,#02
	db #31,#d0,#02,#31,#d0,#02,#38,#d0
	db #02,#31,#d0,#02,#31,#d0,#02,#31
	db #d0,#02,#34,#d0,#02,#31,#d0,#02
	db #31,#d0,#02,#31,#d0,#02,#ff,#28
	db #d0,#02,#2d,#d0,#02,#2d,#d0,#02
	db #2d,#d0,#02,#31,#d0,#02,#2d,#d0
	db #02,#2d,#d0,#02,#2d,#d0,#02,#34
	db #d0,#02,#2d,#d0,#02,#2d,#d0,#02
	db #2d,#d0,#02,#31,#d0,#02,#2d,#d0
	db #02,#2d,#d0,#02,#2d,#d0,#02,#30
	db #d0,#02,#33,#d0,#02,#33,#d0,#02
	db #33,#d0,#02,#38,#d0,#02,#33,#d0
	db #02,#33,#d0,#02,#33,#d0,#02,#3c
	db #d0,#02,#33,#d0,#02,#33,#d0,#02
	db #33,#d0,#02,#38,#d0,#02,#33,#d0
	db #02,#33,#d0,#02,#33,#d0,#02,#ff
	db #49,#df,#10,#cc,#d0,#d0,#d0,#c9
	db #d0,#cc,#d0,#d0,#d0,#c9,#d0,#cc
	db #d0,#d0,#d0,#c9,#d0,#cc,#d0,#d0
	db #d0,#c9,#d0,#cc,#d0,#d0,#d0,#d3
	db #d0,#d5,#d0,#da,#d0,#d5,#d0,#d3
	db #d0,#d0,#d0,#d3,#d0,#d0,#d0,#cc
	db #d0,#c9,#d0,#cc,#d0,#d0,#d0,#d0
	db #d0,#d3,#d0,#d8,#d0,#d5,#d0,#da
	db #d0,#d5,#d0,#d3,#d0,#d5,#d0,#d3
	db #d0,#d5,#d0,#d3,#d0,#d5,#d0,#cc
	db #d0,#d0,#d0,#d5,#d0,#cc,#d0,#d0
	db #d0,#d5,#d0,#cc,#d0,#d0,#d0,#d5
	db #d0,#cc,#d0,#d0,#d0,#d5,#d0,#cc
	db #d0,#d0,#d0,#d5,#d0,#cc,#d0,#d0
	db #d0,#cc,#d0,#c9,#d0,#c7,#d0,#c9
	db #d0,#d0,#d0,#ce,#d0,#cc,#d0,#ce
	db #d0,#ff,#d7,#d0,#d3,#d0,#d0,#d0
	db #c7,#d0,#d7,#d0,#d3,#d0,#d0,#d0
	db #c7,#d0,#d7,#d0,#d3,#d0,#d0,#d0
	db #c7,#d0,#d7,#d0,#d3,#d0,#d0,#d0
	db #c7,#d0,#d7,#d0,#d3,#d0,#d0,#d0
	db #c7,#d0,#d7,#d0,#d3,#d0,#d0,#d0
	db #c7,#d0,#d7,#d0,#d3,#d0,#d0,#d0
	db #c7,#d0,#d7,#d0,#d3,#d0,#d0,#d0
	db #c7,#d0,#c9,#d0,#cc,#d0,#d1,#d0
	db #cc,#d0,#c9,#d0,#cc,#d0,#d1,#d0
	db #cc,#d0,#d1,#d0,#d5,#d0,#da,#d0
	db #d5,#d0,#cc,#d0,#c9,#d0,#cc,#d0
	db #d1,#d0,#c9,#d0,#cc,#d0,#d1,#d0
	db #d5,#d0,#d8,#d0,#dd,#d0,#e1,#d0
	db #e4,#d0,#e6,#d0,#e1,#d0,#df,#d0
	db #dd,#d0,#dc,#d0,#d8,#d0,#d5,#d0
	db #d3,#d0,#ff,#c0,#d0,#bf,#d0,#bd
	db #d0,#bb,#d0,#bf,#d0,#bd,#d0,#bb
	db #d0,#b9,#d0,#bb,#d0,#b9,#d0,#b8
	db #d0,#b6,#d0,#b9,#d0,#b8,#d0,#b6
	db #d0,#b4,#d0,#b8,#d0,#b6,#d0,#b4
	db #d0,#b3,#d0,#b4,#d0,#b3,#d0,#b1
	db #d0,#af,#d0,#b1,#d0,#af,#d0,#ad
	db #d0,#ac,#d0,#ad,#d0,#ac,#d0,#aa
	db #d0,#a8,#d0,#ac,#d0,#aa,#d0,#a8
	db #d0,#a7,#d0,#a8,#d0,#a7,#d0,#a5
	db #d0,#a3,#d0,#a5,#d0,#a3,#d0,#a1
	db #d0,#a0,#d0,#a1,#d0,#a0,#d0,#9e
	db #d0,#1c,#db,#10,#1c,#db,#10,#1c
	db #db,#11,#1c,#db,#11,#1c,#db,#12
	db #1c,#db,#12,#1c,#db,#13,#1c,#db
	db #13,#1c,#db,#14,#1c,#db,#14,#1c
	db #db,#15,#1c,#db,#15,#1c,#db,#16
	db #1c,#db,#17,#1c,#db,#18,#0b,#10
	db #0b,#1f,#ff,#40,#e0,#04,#40,#60
	db #04,#40,#e0,#02,#40,#e0,#02,#40
	db #60,#04,#40,#e0,#04,#40,#60,#04
	db #40,#e0,#02,#40,#e0,#02,#40,#60
	db #04,#40,#e0,#04,#40,#60,#04,#40
	db #e0,#02,#40,#e0,#02,#40,#60,#04
	db #40,#e0,#04,#40,#60,#04,#40,#e0
	db #02,#40,#e0,#02,#40,#60,#04,#ff
	db #40,#e0,#04,#40,#60,#04,#40,#e0
	db #02,#40,#e0,#02,#40,#60,#04,#40
	db #e0,#04,#40,#60,#04,#40,#e0,#02
	db #40,#e0,#02,#40,#60,#04,#40,#e0
	db #04,#40,#60,#04,#40,#e0,#02,#40
	db #e0,#02,#40,#60,#04,#40,#e0,#04
	db #40,#60,#04,#64,#e0,#02,#58,#e0
	db #02,#4c,#e0,#02,#40,#e0,#02,#ff
	db #40,#e0,#04,#40,#60,#04,#40,#e0
	db #04,#40,#60,#04,#40,#e0,#04,#40
	db #60,#04,#40,#e0,#04,#40,#60,#04
	db #40,#e0,#04,#40,#60,#04,#40,#e0
	db #04,#40,#60,#04,#40,#e0,#04,#40
	db #60,#04,#40,#60,#02,#40,#e0,#02
	db #40,#60,#02,#40,#e0,#02,#ff

;
.music_info
	db "Ovation 4 - Music 5 (1997)(Dirty Minds)(Antitec)",0
	db "ST-128 Module",0

	read "music_end.asm"
