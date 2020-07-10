; Music of Optix 3 (2002)(Revival)()(ST-128 Module)
; Ripped by Megachur the 29/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OPTIX3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2020
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
	ld (hl),#06
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
	db #00,#00,#ee,#8a,#18,#8b,#42,#8b
.l866e
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #0e,#87,#4e,#87,#6e,#87,#18,#07
	db #8e,#87,#ce,#87,#6e,#87,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #ee,#87,#2e,#88,#6e,#87,#18,#07
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #4e,#88,#8e,#88,#6e,#87,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #8e,#87,#ae,#88,#6e,#87,#00,#00
	db #8e,#87,#ce,#88,#6e,#87,#00,#00
	db #ee,#88,#2e,#89,#4e,#89,#00,#00
	db #6e,#89,#ae,#89,#ce,#89,#00,#00
	db #ee,#89,#2e,#8a,#4e,#8a,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
.l86ee
	db #00,#40,#6e,#8a,#8e,#8a,#00,#40
	db #00,#40,#00,#40,#ae,#8a,#ce,#8a
	db #00,#40,#00,#40,#00,#40,#00,#40
	db #00,#40,#00,#40,#00,#40,#00,#40
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0e,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0b,#0a,#09,#07,#05,#07,#09,#0b
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0c,#0b,#80,#80,#80,#80
	db #80,#80,#80,#00,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0f,#0f,#0f,#0d,#0b,#09,#07,#0d
	db #0b,#09,#07,#08,#09,#0a,#0b,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0b
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #00,#00,#80,#00,#00,#01,#80,#01
	db #00,#02,#80,#02,#00,#03,#80,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0d,#0d,#0b,#0b,#09,#09
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #38,#f8,#a8,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#08,#06,#04,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c8,#00,#58,#02,#4c,#04,#40,#06
	db #34,#08,#bb,#0a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0c,#08,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #32,#00,#64,#00,#96,#00,#c8,#00
	db #fa,#00,#2c,#01,#5e,#01,#90,#01
	db #c2,#01,#f4,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#05,#05,#05,#04,#03
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#07,#0c,#00,#07,#0c,#00,#07
	db #0c,#00,#07,#0c,#00,#07,#0c,#00
	db #07,#0c,#00,#07,#0c,#00,#07,#0c
	db #00,#07,#0c,#00,#07,#0c,#00,#07
	db #0c,#00,#0c,#18,#0c,#18,#0c,#00
	db #0c,#18,#0c,#18,#0c,#00,#0c,#18
	db #0c,#18,#0c,#00,#0c,#18,#0c,#18
	db #0c,#00,#0c,#18,#0c,#18,#0c,#00
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #0c,#00,#0b,#00,#0c,#00,#0c,#00
	db #0c,#00,#0c,#00,#0c,#00,#0c,#00
	db #0c,#00,#0c,#00,#0c,#00,#0c,#00
	db #0c,#00,#0c,#00,#0c,#00,#0c,#00
	db #00,#2d,#8c,#00,#2d,#8c,#00,#ee
	db #8c,#00,#af,#8d,#00,#70,#8e,#00
	db #70,#8e,#00,#ee,#8c,#00,#af,#8d
	db #00,#31,#8f,#00,#31,#8f,#00,#ef
	db #8f,#00,#b0,#90,#00,#6c,#8b,#80
	db #ee,#8a,#00,#74,#91,#00,#74,#91
	db #00,#d3,#91,#00,#1c,#92,#00,#68
	db #92,#00,#68,#92,#00,#d3,#91,#00
	db #1c,#92,#00,#a8,#92,#00,#a8,#92
	db #00,#dc,#92,#00,#08,#93,#00,#71
	db #91,#80,#18,#8b,#00,#b0,#93,#00
	db #b0,#93,#00,#2b,#94,#00,#d7,#94
	db #00,#83,#95,#00,#83,#95,#00,#2b
	db #94,#00,#d7,#94,#00,#31,#96,#00
	db #31,#96,#00,#e0,#96,#00,#8f,#97
	db #00,#34,#93,#80,#42,#8b,#aa,#a8
	db #1b,#aa,#aa,#1b,#b6,#a8,#1b,#b6
	db #aa,#1b,#aa,#a8,#1b,#aa,#aa,#1b
	db #b6,#a8,#1b,#b6,#aa,#1b,#aa,#a8
	db #1b,#aa,#aa,#1b,#b6,#a8,#1b,#b6
	db #aa,#1b,#aa,#a8,#1b,#aa,#aa,#1b
	db #b6,#a8,#1b,#b6,#aa,#1b,#a8,#a8
	db #1e,#a8,#aa,#1e,#b4,#a8,#1e,#b4
	db #aa,#1e,#a8,#a8,#1e,#a8,#aa,#1e
	db #b4,#a8,#1e,#b4,#aa,#1e,#a5,#a8
	db #24,#a5,#aa,#24,#b1,#a8,#24,#b1
	db #aa,#24,#a3,#a8,#28,#a3,#aa,#28
	db #af,#a8,#28,#af,#aa,#28,#aa,#a8
	db #1b,#aa,#aa,#1b,#b6,#a8,#1b,#b6
	db #aa,#1b,#aa,#a8,#1b,#aa,#aa,#1b
	db #b6,#a8,#1b,#b6,#aa,#1b,#aa,#a8
	db #1b,#aa,#aa,#1b,#b6,#a8,#1b,#b6
	db #aa,#1b,#aa,#a8,#1b,#aa,#aa,#1b
	db #b6,#a8,#1b,#b6,#aa,#1b,#a8,#a8
	db #1e,#a8,#aa,#1e,#b4,#a8,#1e,#b4
	db #aa,#1e,#a8,#a8,#1e,#a8,#aa,#1e
	db #b4,#a8,#1e,#b4,#aa,#1e,#a5,#a8
	db #24,#a5,#aa,#24,#b1,#a8,#24,#b1
	db #aa,#24,#a3,#a8,#28,#a3,#aa,#28
	db #af,#a8,#28,#af,#aa,#28,#ff,#aa
	db #a8,#09,#aa,#aa,#1b,#b6,#a8,#09
	db #b6,#aa,#1b,#aa,#a8,#09,#aa,#aa
	db #1b,#b6,#aa,#1b,#b6,#a8,#09,#aa
	db #aa,#1b,#aa,#a8,#09,#b6,#aa,#1b
	db #b6,#a8,#0a,#aa,#a8,#09,#aa,#aa
	db #1b,#b6,#a8,#0a,#b6,#a8,#09,#a8
	db #a8,#0a,#a8,#aa,#1e,#b4,#a8,#0a
	db #b4,#aa,#1e,#a8,#a8,#0a,#a8,#aa
	db #1e,#b4,#a8,#0a,#b4,#a8,#0c,#a5
	db #aa,#24,#a5,#a8,#0c,#b1,#aa,#24
	db #b1,#a8,#0c,#a3,#a8,#0a,#a3,#aa
	db #28,#af,#a8,#0a,#af,#aa,#28,#aa
	db #a8,#09,#aa,#aa,#1b,#b6,#a8,#09
	db #b6,#aa,#1b,#aa,#a8,#09,#aa,#aa
	db #1b,#b6,#aa,#1b,#b6,#a8,#09,#aa
	db #aa,#1b,#aa,#a8,#09,#b6,#aa,#1b
	db #b6,#a8,#0a,#aa,#a8,#09,#aa,#aa
	db #1b,#b6,#a8,#0a,#b6,#a8,#09,#a8
	db #a8,#0a,#a8,#aa,#1e,#b4,#a8,#0a
	db #b4,#aa,#1e,#a8,#a8,#0a,#a8,#aa
	db #1e,#b4,#a8,#0a,#b4,#a8,#0c,#a5
	db #aa,#24,#a5,#a8,#0c,#b1,#aa,#24
	db #b1,#a8,#0c,#a3,#aa,#0d,#a3,#aa
	db #28,#af,#aa,#0d,#af,#aa,#28,#ff
	db #aa,#aa,#1b,#aa,#aa,#1b,#1c,#c1
	db #10,#1c,#c1,#10,#aa,#aa,#1b,#aa
	db #aa,#1b,#1c,#c1,#10,#1c,#c1,#10
	db #aa,#aa,#1b,#aa,#aa,#1b,#b6,#a8
	db #09,#1c,#c1,#10,#aa,#aa,#1b,#aa
	db #aa,#1b,#1c,#c1,#10,#1c,#b1,#10
	db #a8,#aa,#1e,#a8,#aa,#1e,#1c,#c1
	db #10,#1c,#c1,#10,#a8,#aa,#1e,#a8
	db #aa,#1e,#1c,#c1,#10,#b4,#aa,#1e
	db #b1,#aa,#24,#b1,#aa,#24,#bd,#a8
	db #0c,#1c,#c1,#10,#b1,#aa,#24,#b1
	db #aa,#24,#af,#a8,#0c,#1c,#b1,#10
	db #aa,#aa,#1b,#aa,#aa,#1b,#1c,#c1
	db #10,#1c,#c1,#10,#aa,#aa,#1b,#aa
	db #aa,#1b,#1c,#c1,#10,#1c,#c1,#10
	db #aa,#aa,#1b,#aa,#aa,#1b,#b6,#a8
	db #09,#1c,#c1,#10,#aa,#aa,#1b,#aa
	db #aa,#1b,#1c,#c1,#10,#1c,#b1,#10
	db #af,#aa,#28,#af,#aa,#28,#1c,#c1
	db #10,#1c,#c1,#10,#af,#aa,#28,#af
	db #aa,#28,#bb,#a8,#0a,#1c,#c1,#10
	db #b1,#aa,#24,#b1,#aa,#24,#bd,#a8
	db #09,#bd,#aa,#12,#45,#e1,#10,#b1
	db #aa,#24,#bd,#a8,#09,#bd,#aa,#12
	db #ff,#aa,#aa,#1b,#aa,#aa,#1b,#1c
	db #c1,#10,#1c,#c1,#10,#aa,#aa,#1b
	db #aa,#aa,#1b,#1c,#c1,#10,#1c,#c1
	db #10,#aa,#aa,#1b,#aa,#aa,#1b,#b6
	db #a8,#09,#1c,#c1,#10,#aa,#aa,#1b
	db #aa,#aa,#1b,#1c,#c1,#10,#1c,#b1
	db #10,#a8,#aa,#1e,#a8,#aa,#1e,#1c
	db #c1,#10,#1c,#c1,#10,#a8,#aa,#1e
	db #a8,#aa,#1e,#1c,#c1,#10,#b4,#aa
	db #1e,#b1,#aa,#24,#b1,#aa,#24,#bd
	db #a8,#0c,#1c,#c1,#10,#b1,#aa,#24
	db #b1,#aa,#24,#af,#a8,#0c,#1c,#b1
	db #10,#aa,#aa,#1b,#aa,#aa,#1b,#1c
	db #c1,#10,#1c,#c1,#10,#aa,#aa,#1b
	db #aa,#aa,#1b,#1c,#c1,#10,#1c,#c1
	db #10,#aa,#aa,#1b,#aa,#aa,#1b,#b6
	db #a8,#09,#1c,#c1,#10,#aa,#aa,#1b
	db #aa,#aa,#1b,#1c,#c1,#10,#1c,#b1
	db #10,#af,#aa,#28,#af,#aa,#28,#1c
	db #c1,#10,#1c,#c1,#10,#af,#aa,#28
	db #af,#aa,#28,#bb,#a8,#0a,#1c,#c1
	db #10,#b1,#aa,#24,#b1,#aa,#24,#bd
	db #a8,#09,#bd,#aa,#12,#45,#e1,#10
	db #b1,#aa,#24,#45,#e1,#10,#bd,#aa
	db #12,#ff,#a8,#aa,#1e,#a8,#aa,#1e
	db #1c,#c1,#10,#1c,#c1,#10,#a8,#aa
	db #1e,#a8,#aa,#1e,#1c,#c1,#10,#1c
	db #c1,#10,#a8,#aa,#1e,#a8,#aa,#1e
	db #b4,#aa,#1e,#1c,#c1,#10,#aa,#aa
	db #1b,#aa,#aa,#1b,#1c,#c1,#10,#1c
	db #b1,#10,#ab,#aa,#19,#ab,#aa,#19
	db #1c,#c1,#10,#1c,#c1,#10,#ab,#aa
	db #19,#ab,#aa,#19,#1c,#c1,#10,#b7
	db #aa,#19,#ab,#aa,#19,#1c,#c1,#10
	db #b7,#aa,#19,#1c,#c1,#10,#a4,#aa
	db #26,#a4,#aa,#26,#b0,#aa,#26,#1c
	db #b1,#10,#a6,#aa,#21,#a6,#aa,#21
	db #1c,#c1,#10,#1c,#c1,#10,#a6,#aa
	db #21,#a6,#aa,#21,#1c,#c1,#10,#1c
	db #c1,#10,#a6,#aa,#21,#a6,#aa,#21
	db #b2,#aa,#21,#1c,#c1,#10,#a6,#aa
	db #21,#1c,#b1,#10,#1c,#c1,#10,#b2
	db #aa,#21,#a6,#aa,#21,#a6,#aa,#21
	db #1c,#c1,#10,#1c,#c1,#10,#a6,#aa
	db #21,#a6,#aa,#21,#b2,#aa,#21,#1c
	db #c1,#10,#a6,#aa,#21,#a6,#aa,#21
	db #45,#e1,#10,#3b,#81,#10,#a6,#aa
	db #21,#45,#e1,#10,#b2,#aa,#21,#38
	db #81,#10,#ff,#a2,#aa,#2a,#a2,#aa
	db #2a,#1c,#c1,#10,#1c,#c1,#10,#a2
	db #aa,#2a,#a2,#aa,#2a,#1c,#c1,#10
	db #1c,#c1,#10,#a2,#aa,#2a,#a2,#aa
	db #2a,#ae,#a8,#0e,#1c,#c1,#10,#a2
	db #aa,#2a,#a2,#aa,#2a,#1c,#c1,#10
	db #1c,#b1,#10,#a5,#aa,#23,#a5,#aa
	db #23,#1c,#c1,#10,#1c,#c1,#10,#a5
	db #aa,#23,#a5,#aa,#23,#1c,#c1,#10
	db #b1,#aa,#23,#aa,#aa,#1b,#1c,#c1
	db #10,#b6,#a8,#1b,#1c,#c1,#10,#aa
	db #aa,#1b,#aa,#aa,#1b,#b6,#a8,#1b
	db #1c,#b1,#10,#ac,#aa,#2f,#ac,#aa
	db #2f,#1c,#c1,#10,#1c,#c1,#10,#ac
	db #aa,#2f,#ac,#aa,#2f,#1c,#c1,#10
	db #1c,#c1,#10,#ac,#aa,#2f,#ac,#aa
	db #2f,#b8,#a8,#0c,#1c,#c1,#10,#ac
	db #aa,#2f,#ac,#aa,#2f,#1c,#c1,#10
	db #1c,#b1,#10,#ac,#aa,#2f,#ac,#aa
	db #2f,#1c,#c1,#10,#1c,#c1,#10,#ac
	db #aa,#2f,#ac,#aa,#2f,#b8,#a8,#0c
	db #1c,#c1,#10,#ac,#aa,#2f,#ac,#aa
	db #2f,#45,#e1,#20,#ac,#aa,#2f,#ac
	db #aa,#2f,#b8,#a8,#0c,#1c,#b1,#10
	db #ff,#a6,#aa,#21,#a6,#aa,#21,#1c
	db #c1,#10,#1c,#c1,#10,#a6,#aa,#21
	db #a6,#aa,#21,#1c,#c1,#10,#1c,#c1
	db #10,#a5,#aa,#24,#a5,#aa,#24,#b1
	db #aa,#24,#1c,#c1,#10,#a5,#aa,#24
	db #a5,#aa,#24,#1c,#c1,#10,#1c,#b1
	db #10,#aa,#aa,#1b,#aa,#aa,#1b,#1c
	db #c1,#10,#1c,#c1,#10,#aa,#aa,#1b
	db #aa,#aa,#1b,#1c,#c1,#10,#b6,#aa
	db #1b,#aa,#aa,#1b,#aa,#aa,#1b,#b6
	db #aa,#1b,#1c,#c1,#10,#aa,#aa,#1b
	db #b6,#aa,#1b,#a8,#aa,#1e,#1c,#b1
	db #10,#a6,#aa,#21,#a6,#aa,#21,#1c
	db #c1,#10,#1c,#c1,#10,#a6,#aa,#21
	db #a6,#aa,#21,#1c,#c1,#10,#1c,#c1
	db #10,#a5,#aa,#24,#a5,#aa,#24,#b1
	db #aa,#24,#1c,#c1,#10,#a5,#aa,#24
	db #a5,#aa,#24,#1c,#c1,#10,#1c,#b1
	db #10,#9e,#aa,#36,#9e,#aa,#36,#1c
	db #c1,#10,#1c,#c1,#10,#9e,#aa,#36
	db #9e,#aa,#36,#aa,#aa,#36,#1c,#c1
	db #10,#9e,#aa,#36,#1c,#c1,#10,#aa
	db #aa,#36,#aa,#aa,#36,#9e,#aa,#36
	db #45,#e1,#10,#aa,#aa,#36,#1c,#b1
	db #10,#ff,#a6,#aa,#21,#a6,#aa,#21
	db #1c,#c1,#10,#1c,#c1,#10,#a6,#aa
	db #21,#a6,#aa,#21,#1c,#c1,#10,#1c
	db #c1,#10,#a5,#aa,#24,#a5,#aa,#24
	db #b1,#aa,#24,#1c,#c1,#10,#a5,#aa
	db #24,#a5,#aa,#24,#1c,#c1,#10,#1c
	db #b1,#10,#aa,#aa,#1b,#aa,#aa,#1b
	db #1c,#c1,#10,#1c,#c1,#10,#aa,#aa
	db #1b,#aa,#aa,#1b,#1c,#c1,#10,#b6
	db #aa,#1b,#aa,#aa,#1b,#aa,#aa,#1b
	db #b6,#aa,#1b,#1c,#c1,#10,#aa,#aa
	db #1b,#b6,#aa,#1b,#a8,#aa,#1e,#1c
	db #b1,#10,#a6,#aa,#21,#a6,#aa,#21
	db #1c,#c1,#10,#1c,#c1,#10,#a6,#aa
	db #21,#a6,#aa,#21,#1c,#c1,#10,#1c
	db #c1,#10,#a5,#aa,#24,#a5,#aa,#24
	db #b1,#aa,#24,#1c,#c1,#10,#a5,#aa
	db #24,#a5,#aa,#24,#1c,#c1,#10,#1c
	db #b1,#10,#af,#aa,#28,#af,#aa,#28
	db #1c,#c1,#10,#bb,#aa,#14,#af,#aa
	db #28,#af,#aa,#28,#bb,#aa,#14,#1c
	db #c1,#10,#af,#aa,#28,#af,#aa,#28
	db #45,#e1,#10,#bb,#aa,#14,#45,#e1
	db #10,#45,#e1,#10,#bb,#aa,#14,#bb
	db #aa,#14,#ff,#00,#40,#ff,#5a,#2f
	db #21,#5a,#20,#02,#5a,#20,#03,#58
	db #20,#02,#58,#20,#02,#d8,#20,#5a
	db #20,#02,#d3,#20,#d5,#20,#58,#20
	db #02,#58,#20,#02,#58,#20,#03,#55
	db #20,#02,#55,#20,#02,#d5,#20,#53
	db #20,#02,#53,#20,#02,#5a,#2f,#21
	db #5a,#20,#02,#5a,#20,#03,#58,#20
	db #02,#58,#20,#02,#d8,#20,#5a,#20
	db #02,#d3,#20,#d5,#20,#58,#20,#02
	db #58,#20,#02,#58,#20,#03,#55,#20
	db #02,#55,#20,#02,#d5,#20,#53,#20
	db #02,#53,#20,#02,#ff,#4e,#2f,#41
	db #55,#20,#02,#d1,#20,#53,#20,#09
	db #53,#20,#02,#53,#20,#04,#51,#20
	db #02,#d0,#20,#51,#20,#02,#50,#20
	db #03,#4c,#20,#02,#4e,#20,#09,#5a
	db #3f,#12,#d8,#30,#da,#30,#d8,#30
	db #d8,#30,#d5,#30,#d3,#30,#4e,#2f
	db #21,#51,#20,#02,#53,#20,#02,#51
	db #20,#02,#d8,#20,#55,#20,#02,#53
	db #20,#02,#55,#20,#03,#ff,#4e,#2f
	db #41,#55,#20,#02,#d1,#20,#53,#20
	db #09,#53,#20,#02,#53,#20,#04,#51
	db #20,#02,#d0,#20,#51,#20,#02,#50
	db #20,#03,#4c,#20,#02,#4e,#20,#09
	db #5a,#3f,#12,#d8,#30,#da,#30,#d8
	db #30,#d8,#30,#d5,#30,#d3,#30,#4e
	db #2f,#21,#51,#20,#02,#53,#20,#02
	db #51,#20,#02,#d0,#20,#51,#20,#02
	db #53,#20,#02,#d5,#20,#d8,#20,#da
	db #20,#ff,#53,#2f,#42,#53,#20,#02
	db #d3,#20,#4f,#20,#0b,#53,#20,#02
	db #53,#20,#02,#53,#20,#02,#d4,#20
	db #53,#20,#03,#51,#20,#02,#4f,#20
	db #02,#4e,#20,#04,#4e,#20,#02,#d1
	db #20,#56,#20,#12,#1c,#c1,#10,#3b
	db #81,#10,#1c,#c1,#10,#39,#81,#10
	db #1c,#c1,#10,#39,#81,#10,#1c,#b1
	db #10,#ff,#5a,#5f,#26,#52,#50,#02
	db #55,#50,#02,#d7,#50,#55,#50,#0b
	db #55,#50,#02,#d5,#50,#57,#50,#02
	db #55,#50,#02,#50,#50,#02,#d1,#50
	db #52,#50,#02,#52,#50,#02,#50,#50
	db #10,#52,#2f,#31,#50,#20,#03,#55
	db #20,#02,#57,#20,#08,#ff,#4e,#2f
	db #87,#51,#20,#08,#53,#20,#03,#55
	db #20,#03,#53,#20,#02,#51,#20,#02
	db #4e,#20,#06,#51,#20,#08,#50,#20
	db #08,#51,#20,#09,#5a,#3f,#12,#da
	db #30,#da,#30,#58,#30,#02,#5a,#30
	db #02,#ff,#4e,#2f,#87,#51,#20,#08
	db #53,#20,#03,#55,#20,#03,#53,#20
	db #02,#51,#20,#02,#4e,#20,#06,#51
	db #20,#08,#55,#20,#08,#53,#20,#09
	db #53,#3f,#12,#d3,#30,#d3,#30,#55
	db #30,#02,#58,#30,#02,#ff,#36,#d1
	db #10,#9c,#c0,#9c,#c0,#9c,#c0,#45
	db #e0,#02,#9c,#c0,#9c,#c0,#b6,#d0
	db #9c,#c0,#b6,#d0,#9c,#c0,#45,#e0
	db #02,#9c,#c0,#9c,#b0,#b6,#d0,#9c
	db #c0,#9c,#c0,#9c,#c0,#45,#e0,#02
	db #9c,#c0,#b6,#d0,#b6,#d0,#9c,#c0
	db #b6,#d0,#9c,#c0,#c5,#e0,#45,#e0
	db #02,#9c,#b0,#b6,#d0,#9c,#c0,#9c
	db #c0,#9c,#c0,#45,#e0,#02,#9c,#c0
	db #9c,#c0,#b6,#d0,#9c,#c0,#b6,#d0
	db #9c,#c0,#c5,#e0,#9c,#b0,#9c,#c0
	db #9c,#b0,#b6,#d0,#9c,#c0,#9c,#c0
	db #9c,#c0,#45,#e0,#02,#b6,#d0,#9c
	db #c0,#b6,#d0,#9c,#c0,#c5,#e0,#b6
	db #d0,#c5,#e0,#c5,#e0,#c5,#e0,#9c
	db #b0,#ff,#36,#d1,#10,#9c,#c0,#9c
	db #c0,#9c,#c0,#45,#e0,#02,#9c,#c0
	db #9c,#c0,#b6,#d0,#9c,#c0,#b6,#d0
	db #9c,#c0,#45,#e0,#02,#9c,#c0,#9c
	db #b0,#b6,#d0,#9c,#c0,#9c,#c0,#9c
	db #c0,#45,#e0,#02,#9c,#c0,#b6,#d0
	db #b6,#d0,#9c,#c0,#b6,#d0,#9c,#c0
	db #c5,#e0,#45,#e0,#02,#9c,#b0,#b6
	db #d0,#9c,#c0,#9c,#c0,#9c,#c0,#45
	db #e0,#02,#9c,#c0,#9c,#c0,#b6,#d0
	db #9c,#c0,#b6,#d0,#9c,#c0,#c5,#e0
	db #9c,#b0,#9c,#c0,#9c,#b0,#b6,#d0
	db #9c,#c0,#9c,#c0,#9c,#c0,#45,#e0
	db #02,#b6,#d0,#9c,#c0,#b6,#d0,#9c
	db #c0,#45,#e0,#02,#c5,#e0,#c5,#e0
	db #c5,#e0,#9c,#b0,#ff,#36,#d1,#10
	db #1c,#c1,#10,#b6,#a8,#09,#b6,#aa
	db #1b,#45,#e1,#20,#b6,#a8,#09,#b6
	db #aa,#1b,#36,#d1,#10,#1c,#c1,#10
	db #36,#d1,#10,#b6,#aa,#1b,#45,#e1
	db #20,#b6,#a8,#09,#b6,#aa,#1b,#36
	db #d1,#10,#1c,#c1,#10,#b4,#a8,#0a
	db #b4,#aa,#1e,#45,#e1,#20,#b4,#a8
	db #0a,#36,#d1,#10,#36,#d1,#10,#1c
	db #c1,#10,#36,#d1,#10,#bd,#aa,#12
	db #45,#e1,#10,#45,#e1,#20,#af,#aa
	db #28,#36,#d1,#10,#1c,#c1,#10,#b6
	db #a8,#09,#b6,#aa,#1b,#45,#e1,#20
	db #b6,#a8,#09,#b6,#aa,#1b,#36,#d1
	db #10,#1c,#c1,#10,#36,#d1,#10,#b6
	db #aa,#1b,#45,#e1,#10,#1c,#b1,#10
	db #b6,#a8,#09,#b6,#aa,#1b,#36,#d1
	db #10,#1c,#c1,#10,#bb,#a8,#0a,#bb
	db #aa,#14,#45,#e1,#20,#36,#d1,#10
	db #bb,#aa,#14,#36,#d1,#10,#1c,#c1
	db #10,#45,#e1,#20,#b1,#aa,#24,#45
	db #e1,#10,#45,#e1,#10,#1c,#b1,#10
	db #ff,#36,#d1,#10,#1c,#c1,#10,#b6
	db #a8,#09,#b6,#aa,#1b,#45,#e1,#20
	db #b6,#a8,#09,#b6,#aa,#1b,#36,#d1
	db #10,#1c,#c1,#10,#36,#d1,#10,#b6
	db #aa,#1b,#45,#e1,#20,#b6,#a8,#09
	db #b6,#aa,#1b,#36,#d1,#10,#1c,#c1
	db #10,#b4,#a8,#0a,#b4,#aa,#1e,#45
	db #e1,#20,#b4,#a8,#0a,#36,#d1,#10
	db #36,#d1,#10,#1c,#c1,#10,#36,#d1
	db #10,#bd,#aa,#12,#45,#e1,#10,#45
	db #e1,#20,#af,#aa,#28,#36,#d1,#10
	db #1c,#c1,#10,#b6,#a8,#09,#b6,#aa
	db #1b,#45,#e1,#20,#b6,#a8,#09,#b6
	db #aa,#1b,#36,#d1,#10,#1c,#c1,#10
	db #36,#d1,#10,#b6,#aa,#1b,#45,#e1
	db #10,#1c,#b1,#10,#b6,#a8,#09,#b6
	db #aa,#1b,#36,#d1,#10,#1c,#c1,#10
	db #bb,#a8,#0a,#bb,#aa,#14,#45,#e1
	db #20,#36,#d1,#10,#bb,#aa,#14,#36
	db #d1,#10,#1c,#c1,#10,#45,#e1,#20
	db #b1,#aa,#24,#45,#e1,#10,#bd,#a8
	db #09,#1c,#b1,#10,#ff,#36,#d1,#10
	db #9c,#c0,#b4,#aa,#1e,#b4,#aa,#1e
	db #45,#e1,#20,#b4,#aa,#1e,#b4,#aa
	db #1e,#36,#d1,#10,#1c,#c1,#10,#36
	db #d1,#10,#b4,#aa,#1e,#45,#e1,#20
	db #b6,#aa,#1b,#b6,#aa,#1b,#36,#d1
	db #10,#1c,#c1,#10,#b7,#aa,#19,#b7
	db #aa,#19,#45,#e1,#20,#b7,#aa,#19
	db #36,#d1,#10,#36,#d1,#10,#ab,#aa
	db #19,#36,#d1,#10,#b7,#aa,#19,#45
	db #e1,#10,#45,#e1,#20,#b0,#aa,#26
	db #36,#d1,#10,#1c,#c1,#10,#b2,#aa
	db #21,#b2,#aa,#21,#45,#e1,#20,#b2
	db #aa,#21,#b2,#aa,#21,#36,#d1,#10
	db #1c,#c1,#10,#36,#d1,#10,#b2,#aa
	db #21,#45,#e1,#10,#a6,#aa,#21,#b2
	db #aa,#21,#1c,#b1,#10,#36,#d1,#10
	db #1c,#c1,#10,#b2,#aa,#21,#b2,#aa
	db #21,#45,#e1,#20,#36,#d1,#10,#b2
	db #aa,#21,#36,#d1,#10,#3b,#81,#10
	db #b2,#aa,#21,#b2,#aa,#21,#45,#e1
	db #10,#a6,#aa,#21,#45,#e1,#10,#b2
	db #aa,#21,#ff,#36,#d1,#10,#1c,#c1
	db #10,#ae,#a8,#0e,#ae,#aa,#2a,#45
	db #e1,#20,#ae,#a8,#0e,#ae,#aa,#2a
	db #36,#d1,#10,#1c,#c1,#10,#36,#d1
	db #10,#ae,#aa,#2a,#45,#e1,#20,#ac
	db #a8,#10,#ac,#aa,#2f,#36,#d1,#10
	db #1c,#c1,#10,#b1,#a8,#12,#b1,#aa
	db #23,#45,#e1,#20,#b1,#a8,#12,#36
	db #d1,#10,#36,#d1,#10,#aa,#aa,#1b
	db #36,#d1,#10,#b6,#aa,#1b,#45,#e1
	db #10,#45,#e1,#20,#b6,#aa,#1b,#36
	db #d1,#10,#1c,#c1,#10,#b8,#a8,#0c
	db #b8,#aa,#18,#45,#e1,#20,#b8,#a8
	db #0c,#b8,#aa,#18,#36,#d1,#10,#1c
	db #c1,#10,#36,#d1,#10,#b8,#aa,#18
	db #45,#e1,#10,#1c,#b1,#10,#b8,#a8
	db #0c,#b8,#aa,#18,#36,#d1,#10,#1c
	db #c1,#10,#b8,#a8,#0c,#b8,#aa,#18
	db #45,#e1,#20,#36,#d1,#10,#b8,#aa
	db #18,#36,#d1,#10,#36,#d1,#10,#b8
	db #a8,#0c,#b8,#aa,#18,#45,#e1,#10
	db #45,#e1,#10,#45,#e1,#10,#b8,#aa
	db #18,#ff,#36,#d1,#10,#1c,#c1,#10
	db #b2,#aa,#21,#b2,#aa,#21,#45,#e1
	db #20,#b2,#aa,#21,#b2,#aa,#21,#36
	db #d1,#10,#1c,#c1,#10,#36,#d1,#10
	db #b1,#aa,#24,#45,#e1,#20,#b1,#aa
	db #24,#b1,#aa,#24,#36,#d1,#10,#1c
	db #c1,#10,#b6,#aa,#1b,#b6,#aa,#1b
	db #45,#e1,#20,#b6,#aa,#1b,#36,#d1
	db #10,#36,#d1,#10,#1c,#c1,#10,#36
	db #d1,#10,#b6,#aa,#1b,#45,#e1,#10
	db #45,#e1,#20,#b4,#aa,#1e,#36,#d1
	db #10,#1c,#c1,#10,#b2,#aa,#21,#b2
	db #aa,#21,#45,#e1,#20,#b2,#aa,#21
	db #b2,#aa,#21,#36,#d1,#10,#1c,#c1
	db #10,#36,#d1,#10,#b1,#aa,#24,#45
	db #e1,#10,#1c,#b1,#10,#b1,#aa,#24
	db #b1,#aa,#24,#36,#d1,#10,#1c,#c1
	db #10,#aa,#aa,#36,#aa,#aa,#36,#45
	db #e1,#20,#36,#d1,#10,#aa,#aa,#36
	db #36,#d1,#10,#9e,#aa,#36,#45,#e1
	db #10,#36,#d1,#10,#45,#e1,#10,#9e
	db #aa,#36,#45,#e1,#10,#aa,#aa,#36
	db #ff,#36,#d1,#10,#1c,#c1,#10,#b2
	db #aa,#21,#b2,#aa,#21,#45,#e1,#20
	db #b2,#aa,#21,#b2,#aa,#21,#36,#d1
	db #10,#1c,#c1,#10,#36,#d1,#10,#b1
	db #aa,#24,#45,#e1,#20,#b1,#aa,#24
	db #b1,#aa,#24,#36,#d1,#10,#1c,#c1
	db #10,#b6,#aa,#1b,#b6,#aa,#1b,#45
	db #e1,#20,#b6,#aa,#1b,#36,#d1,#10
	db #36,#d1,#10,#1c,#c1,#10,#36,#d1
	db #10,#b6,#aa,#1b,#45,#e1,#10,#45
	db #e1,#20,#b4,#aa,#1e,#36,#d1,#10
	db #1c,#c1,#10,#b2,#aa,#21,#b2,#aa
	db #21,#45,#e1,#20,#b2,#aa,#21,#b2
	db #aa,#21,#36,#d1,#10,#1c,#c1,#10
	db #36,#d1,#10,#b1,#aa,#24,#45,#e1
	db #10,#1c,#b1,#10,#b1,#aa,#24,#b1
	db #aa,#24,#36,#d1,#10,#1c,#c1,#10
	db #bb,#aa,#14,#36,#d1,#10,#45,#e1
	db #10,#36,#d1,#10,#36,#d1,#10,#bb
	db #aa,#14,#45,#e1,#10,#36,#d1,#10
	db #bb,#aa,#14,#36,#d1,#10,#af,#aa
	db #28,#af,#aa,#28,#45,#e1,#10,#45
	db #e1,#10,#ff
;
.music_info
	db "Optix 3 (2002)(Revival)()",0
	db "ST-128 Module",0

	read "music_end.asm"
