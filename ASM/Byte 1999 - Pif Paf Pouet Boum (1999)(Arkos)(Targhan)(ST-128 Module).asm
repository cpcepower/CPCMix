; Music of Byte 1999 - Pif Paf Pouet Boum (1999)(Arkos)(Targhan)(ST-128 Module)
; Ripped by Megachur the 02/01/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BYT1PPPB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 01
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
	ld (hl),#0d
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
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l84a6
	ld (ix+#1e),a
	jp l820e
	dec b
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
	dec b
	jr l83b9
	inc b
.l83b9
	call l84a6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l820e
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
	call l84a6
	ld (ix+#1e),a
	jp l820e
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
	ld a,(hl)
	inc hl
	ld (l84f7),a
	jp l820e
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
	dw #8381,#8394,#8393,#83b8
	dw #83b5,#83c8,#83d9,#8401
	dw #841b,#8401,#8435,#843e
	dw #8460,#8468,#8487
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
	db #01,#08,#00,#00,#00,#00,#00,#00
.l85ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l860c equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l8610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l861a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l862b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l863e equ $ + 6
.l863a equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8648
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8659 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l866e equ $ + 6
.l8668
	db #0e,#89,#2c,#89,#4a,#89,#0e,#87
	db #4e,#87,#6e,#87,#00,#00,#0e,#87
	db #8e,#87,#ae,#87,#00,#00,#0e,#87
	db #ce,#87,#ee,#87,#00,#00,#0e,#87
	db #0e,#88,#ae,#87,#00,#00,#01,#41
	db #49,#4d,#4b,#4b,#09,#09,#0e,#87
	db #2e,#88,#4e,#88,#00,#20,#6e,#88
	db #ae,#88,#ae,#87,#00,#00,#ce,#88
	db #ae,#88,#ae,#87,#00,#00,#09,#49
	db #28,#68,#08,#40,#08,#08,#08,#4a
	db #00,#48,#00,#40,#00,#00,#00,#44
	db #0c,#4c,#08,#48,#08,#08,#08,#4c
	db #00,#40,#04,#44,#00,#04,#04,#44
	db #08,#48,#0c,#4c,#08,#08,#08,#48
	db #04,#44,#00,#40,#01,#05,#00,#40
	db #01,#41,#08,#40,#08,#08,#08,#48
.l86ee equ $ + 6
	db #01,#41,#01,#45,#00,#04,#08,#48
	db #00,#48,#08,#48,#00,#48,#01,#48
	db #00,#44,#01,#41,#01,#41,#80,#c0
	db #be,#ff,#2c,#4e,#09,#4f,#24,#4f
	db #08,#4e,#cc,#ca,#0c,#4e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#0c
	db #0c,#0c,#0c,#0c,#0a,#08,#06,#04
	db #02,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#0d,#0d
	db #0d,#0d,#0d,#0b,#0b,#0b,#0b,#0a
	db #09,#08,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0e,#0e,#0e,#0e,#0b,#0b,#0a,#09
	db #08,#07,#07,#07,#06,#06,#05,#05
	db #04,#03,#02,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0b,#03
	db #07,#0c,#11,#14,#18,#1b,#1e,#02
	db #06,#0a,#0f,#13,#17,#1c,#00,#04
	db #09,#0e,#13,#17,#1d,#01,#06,#0b
	db #10,#15,#1a,#1e,#01,#06,#0f,#0f
	db #0f,#0f,#0f,#0f,#0b,#0b,#0a,#09
	db #09,#08,#07,#06,#06,#06,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#1f,#1f
	db #1f,#1f,#1f,#1e,#1c,#1a,#18,#16
	db #14,#12,#10,#0e,#0c,#0a,#1f,#1f
	db #1f,#1f,#1f,#1e,#1c,#1a,#18,#16
	db #14,#12,#10,#0e,#0c,#0a,#00,#00
	db #fd,#ff,#fb,#ff,#f9,#ff,#f7,#ff
	db #f5,#ff,#f1,#ff,#ed,#ff,#ea,#ff
	db #e7,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#00,#05,#00,#07,#00,#09,#00
	db #0b,#00,#0f,#00,#13,#00,#16,#00
	db #19,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#87
	db #8a,#00,#9c,#8a,#00,#8a,#89,#00
	db #68,#89,#00,#b1,#89,#00,#e8,#89
	db #00,#1f,#8a,#00,#e8,#89,#00,#50
	db #8a,#80,#14,#89,#00,#4d,#8b,#00
	db #7d,#8b,#00,#e8,#8a,#00,#c0,#8a
	db #00,#c0,#8a,#00,#ee,#8a,#00,#1f
	db #8b,#00,#ee,#8a,#00,#1f,#8b,#80
	db #32,#89,#00,#4b,#8c,#00,#7f,#8c
	db #00,#e8,#8a,#00,#8a,#8b,#00,#8d
	db #8b,#00,#a3,#8b,#00,#da,#8b,#00
	db #a3,#8b,#00,#1d,#8c,#80,#50,#89
	db #74,#00,#08,#74,#00,#08,#74,#00
	db #08,#74,#00,#04,#74,#00,#04,#74
	db #00,#08,#74,#00,#08,#74,#00,#08
	db #38,#20,#04,#38,#20,#02,#38,#20
	db #02,#ff,#f4,#0d,#04,#01,#70,#74
	db #00,#08,#74,#00,#08,#74,#00,#04
	db #74,#00,#04,#74,#00,#08,#74,#00
	db #08,#74,#00,#08,#74,#00,#02,#74
	db #00,#02,#74,#00,#02,#74,#00,#02
	db #ff,#74,#00,#04,#38,#20,#04,#74
	db #00,#04,#38,#20,#04,#74,#00,#04
	db #38,#20,#04,#74,#00,#04,#38,#20
	db #04,#74,#00,#04,#38,#20,#04,#74
	db #00,#04,#38,#20,#02,#38,#20,#02
	db #74,#00,#04,#38,#20,#04,#38,#20
	db #04,#38,#20,#02,#38,#20,#02,#ff
	db #74,#00,#04,#74,#00,#04,#38,#20
	db #04,#74,#00,#04,#74,#00,#04,#74
	db #00,#04,#38,#20,#04,#74,#00,#04
	db #74,#00,#04,#74,#00,#04,#38,#20
	db #04,#74,#00,#04,#74,#00,#02,#38
	db #20,#02,#74,#00,#04,#38,#20,#04
	db #38,#20,#02,#38,#20,#02,#ff,#74
	db #00,#04,#38,#20,#04,#74,#00,#04
	db #38,#20,#04,#74,#00,#04,#38,#20
	db #04,#74,#00,#04,#38,#20,#04,#74
	db #00,#04,#38,#20,#04,#74,#00,#04
	db #38,#20,#02,#38,#20,#02,#74,#00
	db #0c,#38,#20,#02,#38,#20,#02,#ff
	db #74,#00,#04,#38,#20,#04,#74,#00
	db #04,#38,#20,#04,#74,#00,#04,#38
	db #20,#04,#74,#00,#04,#38,#20,#04
	db #74,#00,#04,#38,#20,#04,#38,#20
	db #02,#38,#20,#02,#38,#20,#02,#38
	db #20,#02,#38,#20,#08,#38,#20,#04
	db #38,#20,#02,#38,#20,#02,#ff,#74
	db #5b,#28,#0b,#27,#0b,#26,#0b,#25
	db #0b,#24,#0b,#23,#0b,#22,#0b,#21
	db #0b,#00,#30,#ff,#0b,#40,#0b,#41
	db #0b,#42,#0b,#43,#0b,#44,#0b,#45
	db #0b,#46,#0b,#47,#0b,#48,#0b,#49
	db #0b,#4a,#0b,#4b,#0b,#4c,#0b,#4d
	db #0b,#1e,#0d,#10,#03,#0b,#4f,#ff
	db #2d,#10,#06,#34,#10,#06,#28,#10
	db #02,#2c,#10,#02,#2d,#10,#06,#34
	db #10,#06,#28,#10,#02,#2c,#10,#02
	db #2d,#10,#06,#34,#10,#06,#28,#10
	db #02,#2c,#10,#02,#2d,#10,#10,#ff
	db #fe,#01,#01,#00,#3f,#ff,#2d,#10
	db #06,#34,#10,#06,#28,#10,#02,#2c
	db #10,#02,#2d,#10,#06,#34,#10,#06
	db #28,#10,#02,#2c,#10,#02,#2f,#10
	db #06,#36,#10,#06,#2a,#10,#02,#2e
	db #10,#02,#2f,#10,#06,#36,#10,#06
	db #2a,#10,#02,#2e,#10,#02,#ff,#32
	db #10,#06,#39,#10,#06,#2d,#10,#02
	db #31,#10,#02,#32,#10,#06,#39,#10
	db #06,#2d,#10,#02,#31,#10,#02,#34
	db #10,#06,#34,#10,#02,#35,#10,#02
	db #35,#10,#02,#35,#10,#02,#35,#10
	db #02,#34,#10,#10,#ff,#00,#17,#5c
	db #7b,#10,#5c,#7b,#53,#5c,#6b,#93
	db #50,#7b,#13,#5c,#7b,#20,#5c,#7b
	db #22,#5d,#7b,#13,#5d,#70,#04,#5d
	db #6b,#14,#5d,#6b,#13,#5d,#6b,#24
	db #57,#6b,#34,#5c,#6b,#14,#5c,#6b
	db #23,#50,#6b,#60,#ff,#00,#04,#0d
	db #03,#0c,#55,#7b,#33,#55,#7b,#05
	db #2d,#ff,#fe,#40,#ff,#00,#32,#40
	db #30,#02,#c0,#30,#c0,#30,#41,#30
	db #04,#40,#30,#02,#3f,#30,#02,#40
	db #30,#02,#ff,#45,#30,#02,#45,#30
	db #10,#40,#30,#02,#40,#30,#02,#40
	db #30,#02,#41,#30,#02,#40,#30,#02
	db #3f,#30,#02,#40,#30,#02,#47,#30
	db #02,#47,#30,#10,#40,#30,#02,#40
	db #30,#02,#40,#30,#02,#41,#30,#02
	db #40,#30,#02,#3f,#30,#02,#40,#30
	db #02,#ff,#4a,#30,#06,#47,#30,#04
	db #48,#30,#04,#45,#30,#02,#47,#30
	db #06,#43,#30,#04,#45,#30,#04,#41
	db #30,#02,#40,#30,#06,#28,#30,#02
	db #29,#30,#02,#29,#30,#02,#29,#30
	db #02,#29,#30,#02,#28,#30,#02,#40
	db #30,#02,#40,#30,#02,#40,#30,#02
	db #41,#30,#02,#40,#30,#02,#3f,#30
	db #02,#40,#30,#02,#ff,#4a,#30,#06
	db #47,#30,#04,#48,#30,#04,#45,#30
	db #02,#47,#30,#06,#43,#30,#04,#45
	db #30,#04,#41,#30,#02,#40,#30,#06
	db #28,#30,#02,#29,#30,#02,#29,#30
	db #02,#29,#30,#02,#29,#30,#02,#28
	db #30,#10,#ff,#0d,#0d,#14,#4c,#6b
	db #13,#4c,#6b,#60,#50,#7b,#12,#50
	db #7b,#54,#5c,#7b,#14,#5c,#7b,#14
	db #5c,#7b,#70,#53,#6b,#12,#53,#6b
	db #20,#5c,#7b,#12,#5c,#7b,#24,#5c
	db #7b,#14,#5c,#7b,#24,#58,#7b,#10
	db #5c,#7b,#14,#5c,#7b,#b3,#ff,#00
	db #01,#5c,#6b,#43,#5c,#6b,#04,#3b
	db #ff
;
.music_info
	db "Byte 1999 - Pif Paf Pouet Boum (1999)(Arkos)(Targhan)",0
	db "ST-128 Module",0

	read "music_end.asm"
