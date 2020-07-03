; Music of Ovation 5 - Intro (1999)(Dirty Minds)(Antitec)(ST-128 Module)
; Ripped by Megachur the 27/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OVATI5IN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
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
	ld (hl),#05
	inc hl
	ld (hl),#48
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
	ld (hl),#48
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
	db #00,#00,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00
	ld d,#00
	dec d
	nop
	inc d
	nop
	inc de
	nop
	ld (de),a
	nop
	ld de,#1000
	nop
	rrca
	nop
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
	db #00,#00,#8e,#87,#a6,#87,#be,#87
.l866e
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #0e,#87,#4e,#87,#6e,#87,#10,#10
	db #00,#40,#00,#40,#00,#40,#00,#00
	db #00,#40,#00,#40,#00,#40,#00,#00
.l86ee
	db #00,#40,#00,#40,#00,#40,#00,#40
	db #00,#40,#00,#40,#00,#40,#00,#40
	db #00,#40,#00,#40,#00,#40,#00,#40
	db #00,#40,#00,#40,#00,#40,#00,#40
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#d6,#87,#00,#2f,#88,#00,#d6
	db #87,#00,#2f,#88,#00,#a1,#88,#00
	db #08,#89,#00,#a0,#89,#80,#8e,#87
	db #00,#a3,#89,#00,#07,#8a,#00,#a3
	db #89,#00,#07,#8a,#00,#7d,#8a,#00
	db #d2,#8a,#00,#a0,#89,#80,#a6,#87
	db #00,#6a,#8b,#00,#bf,#8b,#00,#6a
	db #8b,#00,#bf,#8b,#00,#2c,#8c,#00
	db #77,#8c,#00,#a0,#89,#80,#be,#87
	db #36,#db,#18,#b6,#d0,#36,#db,#16
	db #36,#db,#15,#36,#db,#14,#36,#db
	db #13,#36,#db,#12,#36,#db,#11,#36
	db #db,#00,#14,#c5,#d0,#c5,#d0,#c5
	db #d0,#c2,#d0,#c2,#d0,#c2,#d0,#c5
	db #d0,#c5,#d0,#c5,#d0,#c9,#d0,#c9
	db #d0,#c9,#d0,#c9,#d0,#c9,#d0,#c7
	db #d0,#c7,#d0,#c7,#d0,#c7,#d0,#c7
	db #d0,#c7,#d0,#c7,#d0,#c7,#d0,#c7
	db #d0,#c7,#d0,#c7,#d0,#c7,#d0,#c7
	db #d0,#c7,#d0,#c7,#d0,#47,#d0,#0f
	db #ff,#36,#db,#18,#b6,#d0,#36,#db
	db #16,#36,#db,#15,#36,#db,#14,#36
	db #db,#13,#36,#db,#12,#36,#db,#11
	db #36,#db,#00,#15,#c5,#d0,#c5,#d0
	db #c5,#d0,#c2,#d0,#c2,#d0,#c2,#d0
	db #c5,#d0,#c5,#d0,#c5,#d0,#c9,#d0
	db #c9,#d0,#c9,#d0,#c9,#d0,#c9,#d0
	db #c9,#d0,#cc,#d0,#cc,#d0,#cc,#d0
	db #cc,#d0,#cc,#d0,#cc,#d0,#cc,#d0
	db #cc,#d0,#cc,#d0,#cc,#d0,#cc,#d0
	db #cc,#d0,#cb,#d0,#cc,#d0,#cb,#d0
	db #cb,#d0,#cb,#d0,#cb,#d0,#cb,#d0
	db #cb,#d0,#cb,#d0,#cb,#d0,#cb,#d0
	db #cb,#d0,#cb,#d0,#cb,#d0,#cb,#d0
	db #cb,#d0,#ff,#00,#0a,#3f,#db,#18
	db #3f,#db,#17,#3f,#db,#16,#40,#db
	db #15,#40,#db,#14,#40,#db,#13,#42
	db #db,#12,#42,#db,#11,#42,#db,#10
	db #c4,#d0,#c4,#d0,#c4,#d0,#c4,#d0
	db #c4,#d0,#c4,#d0,#c4,#d0,#c4,#d0
	db #c4,#d0,#c5,#d0,#c5,#d0,#c5,#d0
	db #c5,#d0,#c5,#d0,#c5,#d0,#c5,#d0
	db #c5,#d0,#c5,#d0,#c5,#d0,#c5,#d0
	db #c5,#d0,#c5,#d0,#c5,#d0,#c5,#d0
	db #c5,#d0,#c5,#d0,#c5,#d0,#c5,#d0
	db #c4,#d0,#c4,#d0,#c4,#d0,#c4,#d0
	db #c4,#d0,#c4,#d0,#c4,#d0,#44,#d0
	db #12,#ff,#45,#db,#13,#45,#db,#12
	db #45,#db,#11,#44,#db,#10,#44,#db
	db #10,#44,#db,#10,#42,#db,#10,#42
	db #db,#10,#42,#db,#10,#40,#db,#10
	db #40,#db,#10,#40,#db,#10,#42,#db
	db #10,#42,#db,#10,#42,#db,#10,#42
	db #db,#10,#42,#db,#10,#42,#db,#10
	db #42,#db,#10,#42,#db,#10,#42,#db
	db #10,#42,#db,#10,#42,#db,#10,#42
	db #db,#10,#3d,#db,#10,#3d,#db,#10
	db #3d,#db,#10,#3d,#db,#10,#3d,#db
	db #10,#3d,#db,#10,#3d,#db,#10,#3d
	db #db,#10,#3d,#db,#11,#3d,#db,#11
	db #3d,#db,#11,#3d,#db,#11,#3d,#db
	db #11,#3d,#db,#12,#3d,#db,#12,#3d
	db #db,#13,#3d,#db,#13,#3d,#db,#13
	db #3d,#db,#14,#3d,#db,#14,#3d,#db
	db #14,#3d,#db,#15,#3d,#db,#15,#3d
	db #db,#15,#3d,#db,#16,#3d,#db,#06
	db #17,#ff,#fe,#48,#ff,#00,#08,#31
	db #db,#18,#31,#db,#17,#31,#db,#16
	db #31,#db,#15,#31,#db,#14,#31,#db
	db #13,#31,#db,#12,#31,#db,#11,#31
	db #db,#10,#31,#db,#00,#19,#34,#db
	db #18,#34,#db,#17,#34,#db,#16,#34
	db #db,#15,#34,#db,#14,#34,#db,#13
	db #34,#db,#12,#34,#db,#11,#34,#db
	db #10,#34,#db,#10,#34,#db,#10,#34
	db #db,#10,#34,#db,#10,#34,#db,#10
	db #34,#db,#10,#34,#db,#10,#34,#db
	db #10,#34,#db,#10,#34,#db,#10,#34
	db #db,#10,#34,#db,#10,#34,#db,#90
	db #ff,#00,#08,#31,#db,#18,#31,#db
	db #17,#31,#db,#16,#31,#db,#15,#31
	db #db,#14,#31,#db,#13,#31,#db,#12
	db #31,#db,#11,#31,#db,#10,#31,#db
	db #00,#1b,#34,#db,#18,#34,#db,#17
	db #34,#db,#16,#34,#db,#15,#34,#db
	db #14,#34,#db,#13,#34,#db,#12,#34
	db #db,#11,#34,#db,#10,#34,#db,#10
	db #34,#db,#10,#34,#db,#11,#34,#db
	db #12,#34,#db,#13,#3b,#db,#14,#3b
	db #db,#13,#3b,#db,#12,#3b,#db,#11
	db #3b,#db,#10,#3b,#db,#10,#3b,#db
	db #10,#3b,#db,#11,#3b,#db,#11,#3b
	db #db,#12,#3b,#db,#13,#3b,#db,#14
	db #3b,#db,#15,#3b,#db,#16,#ff,#00
	db #0a,#38,#db,#18,#38,#db,#17,#38
	db #db,#16,#38,#db,#15,#38,#db,#14
	db #38,#db,#13,#38,#db,#12,#38,#db
	db #11,#38,#db,#10,#38,#db,#10,#38
	db #db,#10,#38,#db,#10,#38,#db,#10
	db #38,#db,#10,#38,#db,#10,#38,#db
	db #10,#38,#db,#10,#38,#db,#10,#40
	db #db,#18,#40,#db,#17,#40,#db,#16
	db #40,#db,#15,#40,#db,#14,#40,#db
	db #13,#40,#db,#12,#40,#db,#11,#40
	db #db,#00,#24,#ff,#3b,#db,#18,#3b
	db #db,#17,#3b,#db,#16,#3b,#db,#15
	db #3b,#db,#14,#3b,#db,#13,#3b,#db
	db #12,#3b,#db,#11,#3b,#db,#10,#3b
	db #db,#10,#3b,#db,#10,#3b,#db,#10
	db #3b,#db,#10,#3b,#db,#10,#3b,#db
	db #10,#3b,#db,#10,#3b,#db,#10,#3b
	db #db,#10,#3b,#db,#10,#3b,#db,#10
	db #3b,#db,#10,#3b,#db,#10,#3b,#db
	db #10,#3b,#db,#10,#38,#db,#10,#38
	db #db,#10,#38,#db,#10,#38,#db,#10
	db #38,#db,#10,#38,#db,#10,#38,#db
	db #10,#38,#db,#10,#38,#db,#10,#38
	db #db,#10,#38,#db,#11,#38,#db,#11
	db #38,#db,#12,#38,#db,#12,#38,#db
	db #12,#38,#db,#13,#38,#db,#13,#38
	db #db,#13,#38,#db,#14,#38,#db,#14
	db #38,#db,#14,#38,#db,#15,#38,#db
	db #15,#38,#db,#15,#38,#db,#16,#38
	db #db,#06,#17,#ff,#00,#10,#39,#db
	db #18,#39,#db,#17,#39,#db,#16,#39
	db #db,#15,#39,#db,#14,#39,#db,#13
	db #39,#db,#12,#39,#db,#11,#39,#db
	db #10,#39,#db,#10,#39,#db,#10,#39
	db #db,#00,#1e,#38,#db,#18,#38,#db
	db #17,#38,#db,#16,#38,#db,#15,#38
	db #db,#14,#38,#db,#13,#38,#db,#12
	db #38,#db,#11,#38,#db,#10,#38,#db
	db #10,#38,#db,#11,#38,#db,#12,#38
	db #db,#13,#38,#db,#14,#38,#db,#15
	db #ff,#00,#11,#39,#db,#18,#39,#db
	db #17,#39,#db,#16,#39,#db,#15,#39
	db #db,#14,#39,#db,#13,#39,#db,#12
	db #39,#db,#11,#39,#db,#10,#39,#db
	db #10,#39,#db,#10,#39,#db,#00,#13
	db #38,#db,#18,#38,#db,#17,#38,#db
	db #16,#38,#db,#15,#38,#db,#14,#38
	db #db,#13,#38,#db,#12,#38,#db,#11
	db #38,#db,#12,#38,#db,#13,#36,#db
	db #13,#36,#db,#12,#36,#db,#11,#36
	db #db,#10,#36,#db,#10,#36,#db,#11
	db #36,#db,#12,#36,#db,#13,#36,#db
	db #14,#36,#db,#15,#36,#db,#16,#36
	db #db,#17,#36,#db,#38,#ff,#00,#1c
	db #3b,#db,#18,#3b,#db,#17,#3b,#db
	db #16,#3b,#db,#15,#3b,#db,#14,#3b
	db #db,#13,#3b,#db,#12,#3b,#db,#11
	db #3b,#db,#10,#3b,#db,#10,#3b,#db
	db #10,#3b,#db,#10,#3b,#db,#10,#3b
	db #db,#10,#3b,#db,#10,#3b,#db,#10
	db #3b,#db,#10,#bb,#d0,#bb,#d0,#bb
	db #d0,#bb,#d0,#bb,#d0,#bb,#d0,#bb
	db #d0,#bb,#d0,#bb,#d0,#3b,#d0,#12
	db #ff,#42,#db,#18,#42,#db,#17,#42
	db #db,#16,#42,#db,#15,#42,#db,#14
	db #42,#db,#13,#42,#db,#12,#42,#db
	db #11,#42,#db,#10,#42,#db,#10,#42
	db #db,#10,#42,#db,#10,#42,#db,#10
	db #42,#db,#10,#42,#db,#10,#42,#db
	db #10,#42,#db,#10,#42,#db,#10,#42
	db #db,#10,#42,#db,#10,#42,#db,#10
	db #42,#db,#10,#42,#db,#10,#42,#db
	db #10,#40,#db,#10,#40,#db,#10,#40
	db #db,#10,#40,#db,#10,#40,#db,#10
	db #40,#db,#10,#40,#db,#10,#40,#db
	db #10,#40,#db,#10,#40,#db,#10,#40
	db #db,#11,#40,#db,#11,#40,#db,#12
	db #40,#db,#12,#40,#db,#12,#40,#db
	db #13,#40,#db,#13,#40,#db,#13,#40
	db #db,#14,#40,#db,#14,#40,#db,#14
	db #40,#db,#15,#40,#db,#15,#40,#db
	db #15,#40,#db,#16,#40,#db,#06,#17
	db #ff

;
.music_info
	db "Ovation 5 - Intro (1999)(Dirty Minds)(Antitec)",0
	db "ST-128 Module",0

	read "music_end.asm"
