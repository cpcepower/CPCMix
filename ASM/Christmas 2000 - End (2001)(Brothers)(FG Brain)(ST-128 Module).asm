; Music of Christmas 2000 - End (2001)(Brothers)(FG Brain)(ST-128 Module)
; Ripped by Megachur the 03/09/2017
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "CHRIST2E.BIN"
	ENDIF

music_date_rip_day		equ 03
music_date_rip_month	equ 09
music_date_rip_year		equ 2017
music_adr				equ &8000

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
	ret
	xor a
	add b
.l801c
	push ix
	call l80cb
	pop ix
	ret
.l8024
	db #00,#00,#00,#00,#00,#81,#1c,#80
	db #ff,#00
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
	add (hl)
	add (hl)
	add l
	add e
	add h
	adc b
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
	db #00,#38,#00,#00,#06,#2d,#03,#00
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
.l85de equ $ + 2
	dw #000f,#0008
.l85e2 equ $ + 2
	db #01,#08,#77,#00,#00,#3c,#00,#00
.l85ec equ $ + 4
	db #00,#00,#ce,#89,#0e,#87,#4e,#87
	db #6e,#87,#00,#00,#10,#10,#00,#00
.l85fd equ $ + 5
	db #00,#00,#00,#00,#00,#01,#e7,#8a
	db #51,#8a,#00,#00,#00,#00,#00,#00
.l860c equ $ + 4
	db #00,#00,#01,#01,#09,#02,#03,#10
.l8610
	db #77,#00,#00,#3c,#00,#00,#00,#00
.l861a equ $ + 2
	db #00,#00,#8e,#87,#ce,#87,#6e,#87
	db #10,#10,#10,#10,#00,#00,#00,#00
.l862b equ $ + 3
	db #00,#00,#00,#02,#55,#8b,#7e,#8a
	db #00,#10,#00,#00,#00,#00,#00,#00
.l863e equ $ + 6
.l863a equ $ + 2
	db #01,#01,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8648
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8659 equ $ + 1
	db #00,#2e,#7f,#8c,#ab,#8a,#00,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
.l866e equ $ + 6
.l8668
	db #4e,#8a,#7b,#8a,#a8,#8a,#0e,#87
	db #4e,#87,#6e,#87,#00,#00,#8e,#87
	db #ce,#87,#6e,#87,#10,#10,#ee,#87
	db #2e,#88,#6e,#87,#00,#00,#0e,#87
	db #4e,#88,#6e,#88,#00,#00,#8e,#88
	db #ce,#88,#ee,#88,#00,#00,#0e,#87
	db #0e,#89,#2e,#89,#00,#00,#4e,#89
	db #8e,#89,#ae,#89,#00,#00,#00,#40
	db #00,#40,#00,#40,#00,#00,#00,#40
	db #bf,#ff,#00,#40,#40,#40,#00,#40
	db #00,#40,#00,#40,#00,#00,#00,#40
	db #00,#40,#00,#40,#00,#00,#00,#40
	db #00,#40,#00,#40,#00,#00,#00,#40
	db #00,#40,#00,#40,#00,#00,#00,#40
	db #00,#40,#00,#40,#00,#00,#00,#40
	db #00,#40,#00,#40,#00,#00,#00,#40
.l86ee equ $ + 6
	db #00,#40,#00,#40,#00,#00,#ce,#89
	db #ee,#89,#0e,#8a,#2e,#8a,#00,#40
	db #00,#40,#00,#40,#00,#40,#00,#40
	db #00,#40,#00,#40,#00,#40,#00,#40
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#0d
	db #0c,#0c,#0b,#0b,#0a,#0a,#0a,#0a
	db #0a,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#02,#02,#02,#02,#02,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#80,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #2f,#00,#5e,#00,#8d,#00,#bc,#00
	db #eb,#00,#1a,#01,#49,#01,#78,#01
	db #a7,#01,#d6,#01,#05,#02,#34,#02
	db #63,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#06,#05
	db #04,#03,#02,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#06
	db #0c,#12,#18,#1e,#04,#0a,#10,#16
	db #1c,#02,#08,#0e,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#80,#00
	db #00,#01,#80,#01,#00,#02,#80,#02
	db #00,#03,#00,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#00,#05
	db #09,#00,#05,#09,#00,#05,#09,#00
	db #05,#09,#00,#05,#09,#00,#05,#09
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #09,#00,#05,#09,#00,#05,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#03,#07
	db #0c,#03,#07,#0c,#03,#07,#0c,#03
	db #07,#0c,#03,#07,#0c,#03,#07,#0c
	db #03,#07,#0c,#03,#07,#0c,#03,#07
	db #0c,#03,#07,#0c,#03,#07,#00,#d5
	db #8a,#00,#12,#8b,#00,#d5,#8a,#00
	db #12,#8b,#00,#d5,#8a,#00,#12,#8b
	db #00,#d5,#8a,#00,#12,#8b,#00,#d5
	db #8a,#00,#12,#8b,#02,#d5,#8a,#02
	db #12,#8b,#02,#d5,#8a,#02,#12,#8b
	db #80,#4e,#8a,#00,#4f,#8b,#00,#73
	db #8b,#00,#4f,#8b,#00,#73,#8b,#00
	db #8f,#8b,#00,#f0,#8b,#00,#51,#8c
	db #00,#6d,#8c,#00,#51,#8c,#00,#6d
	db #8c,#02,#8f,#8b,#02,#f0,#8b,#02
	db #51,#8c,#02,#6d,#8c,#80,#7b,#8a
	db #00,#7d,#8c,#00,#7d,#8c,#00,#80
	db #8c,#00,#01,#8d,#00,#80,#8c,#00
	db #01,#8d,#00,#80,#8c,#00,#01,#8d
	db #00,#80,#8c,#00,#01,#8d,#02,#80
	db #8c,#02,#01,#8d,#02,#80,#8c,#02
	db #01,#8d,#80,#a8,#8a,#4c,#0f,#30
	db #4c,#00,#03,#4c,#00,#04,#4c,#00
	db #02,#4c,#00,#04,#4c,#00,#03,#4c
	db #00,#03,#4c,#00,#04,#4c,#00,#02
	db #4c,#00,#04,#4a,#0f,#31,#4a,#00
	db #03,#4a,#00,#04,#4a,#00,#02,#4a
	db #00,#04,#4a,#0f,#32,#4a,#00,#03
	db #4a,#00,#04,#4a,#00,#02,#4a,#00
	db #04,#ff,#45,#0f,#33,#45,#00,#03
	db #45,#00,#04,#45,#00,#02,#45,#00
	db #04,#4c,#0f,#30,#4c,#00,#03,#4c
	db #00,#04,#4c,#00,#02,#4c,#00,#04
	db #47,#0f,#30,#47,#00,#03,#47,#00
	db #04,#47,#00,#02,#47,#00,#04,#4a
	db #0f,#32,#4a,#00,#03,#4a,#00,#04
	db #4a,#00,#02,#4a,#00,#04,#ff,#4c
	db #10,#10,#4c,#10,#04,#4f,#10,#04
	db #4e,#10,#04,#cf,#10,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#4a,#10
	db #0c,#4c,#10,#04,#4e,#10,#08,#4a
	db #10,#08,#ff,#48,#10,#0c,#4a,#10
	db #02,#48,#10,#02,#47,#10,#08,#43
	db #10,#08,#47,#10,#0c,#48,#10,#02
	db #47,#10,#02,#45,#10,#10,#ff,#40
	db #30,#02,#40,#30,#02,#47,#30,#02
	db #47,#30,#02,#45,#30,#02,#45,#30
	db #02,#47,#30,#02,#47,#30,#02,#40
	db #30,#02,#40,#30,#02,#47,#30,#02
	db #47,#30,#02,#45,#30,#02,#45,#30
	db #02,#47,#30,#02,#47,#30,#02,#43
	db #30,#02,#43,#30,#02,#47,#30,#02
	db #47,#30,#02,#45,#30,#02,#45,#30
	db #02,#47,#30,#02,#47,#30,#02,#4a
	db #30,#02,#4a,#30,#02,#47,#30,#02
	db #47,#30,#02,#45,#30,#02,#45,#30
	db #02,#43,#30,#02,#43,#30,#02,#ff
	db #45,#30,#02,#45,#30,#02,#4c,#30
	db #02,#4c,#30,#02,#4a,#30,#02,#4a
	db #30,#02,#4c,#30,#02,#4c,#30,#02
	db #47,#30,#02,#47,#30,#02,#4c,#30
	db #02,#4c,#30,#02,#4a,#30,#02,#4a
	db #30,#02,#4c,#30,#02,#4c,#30,#02
	db #45,#30,#02,#45,#30,#02,#4a,#30
	db #02,#4a,#30,#02,#48,#30,#02,#48
	db #30,#02,#4a,#30,#02,#4a,#30,#02
	db #45,#30,#02,#45,#30,#02,#43,#30
	db #02,#43,#30,#02,#42,#30,#02,#42
	db #30,#02,#3e,#30,#02,#3e,#30,#02
	db #ff,#4c,#10,#0c,#4e,#10,#04,#4f
	db #10,#08,#4c,#10,#08,#4a,#10,#08
	db #4f,#10,#04,#51,#10,#04,#4e,#10
	db #08,#4f,#10,#08,#ff,#51,#10,#0c
	db #53,#10,#04,#4f,#10,#08,#4c,#10
	db #08,#4a,#10,#20,#ff,#00,#40,#ff
	db #a8,#60,#c0,#50,#b4,#20,#b4,#20
	db #c0,#40,#c0,#50,#a8,#20,#c0,#50
	db #a8,#60,#c0,#50,#b4,#20,#b4,#20
	db #c0,#40,#c0,#50,#a8,#20,#c0,#50
	db #a8,#60,#c0,#50,#b4,#20,#b4,#20
	db #c0,#40,#c0,#50,#a8,#20,#c0,#50
	db #a8,#60,#c0,#50,#b4,#20,#b4,#20
	db #c0,#40,#c0,#50,#a8,#20,#c0,#50
	db #a8,#60,#c0,#50,#b7,#20,#b7,#20
	db #c0,#40,#c0,#50,#ab,#20,#c0,#50
	db #a8,#60,#c0,#50,#b7,#20,#b7,#20
	db #c0,#40,#c0,#50,#ab,#20,#c0,#50
	db #a8,#60,#c0,#50,#b2,#20,#b2,#20
	db #c0,#40,#c0,#50,#a6,#20,#c0,#50
	db #a8,#60,#c0,#50,#b2,#20,#b2,#20
	db #c0,#40,#c0,#50,#a6,#20,#c0,#50
	db #ff,#a8,#60,#c0,#50,#ad,#20,#ad
	db #20,#c0,#40,#c0,#50,#a1,#20,#c0
	db #50,#a8,#60,#c0,#50,#ad,#20,#ad
	db #20,#c0,#40,#c0,#50,#a1,#20,#c0
	db #50,#a8,#60,#c0,#50,#b4,#20,#b4
	db #20,#c0,#40,#c0,#50,#a8,#20,#c0
	db #50,#a8,#60,#c0,#50,#b4,#20,#b4
	db #20,#c0,#40,#c0,#50,#a8,#20,#c0
	db #50,#a8,#60,#c0,#50,#af,#20,#af
	db #20,#c0,#40,#c0,#50,#a3,#20,#c0
	db #50,#a8,#60,#c0,#50,#af,#20,#af
	db #20,#c0,#40,#c0,#50,#a3,#20,#c0
	db #50,#a8,#60,#c0,#50,#b2,#20,#b2
	db #20,#c0,#40,#c0,#50,#a6,#20,#c0
	db #50,#a8,#60,#c0,#50,#b2,#20,#b2
	db #20,#c0,#40,#c0,#50,#a6,#20,#c0
	db #50,#ff
;
.music_info
	db "Christmas 2000 - End (2001)(Brothers)(FG Brain)",0
	db "ST-128 Module",0

	read "music_end.asm"
