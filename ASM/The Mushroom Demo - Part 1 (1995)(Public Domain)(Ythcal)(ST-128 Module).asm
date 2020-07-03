; Music of The Mushroom Demo - Part 1 (1995)(Public Domain)(Ythcal)(ST-128 Module)
; Ripped by Megachur the 27/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THEMUDP1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

	jr l4004
	jr l4013
.l4004
	call l4037
	ld hl,l4024
	ld de,l401c
	ld bc,#81ff
	jp #bcd7
.l4013
	ld hl,l4024
	call #bcdd
	jp l40af
.l401c
	push ix
	call l40cb
	pop ix
	ret
.l4024
	db #00,#00,#00,#00,#00,#81,#1c,#40
	db #ff,#00
	jp l4037
	jp l40cb
	jp l40af
;
.init_music
.l4037
;
	xor a
	ld hl,l45e2
	call l40a8
	ld hl,l4610
	call l40a8
	ld hl,l463e
	call l40a8
	ld ix,l45de
	ld iy,l4668
	ld de,#002e
	ld b,#03
.l4057
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
	djnz l4057
	ld hl,l44f7
	ld (hl),#06
	inc hl
	ld (hl),#30
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l44f3),hl
	ld (l44f5),hl
	ld a,#0c
	ld c,d
	call l44d3
	ld a,#0d
	ld c,d
	jp l44d3
.l40a8
	ld b,#2a
.l40aa
	ld (hl),a
	inc hl
	djnz l40aa
	ret
;
.stop_music
.l40af
;
	ld a,#07
	ld c,#3f
	call l44d3
	ld a,#08
	ld c,#00
	call l44d3
	ld a,#09
	ld c,#00
	call l44d3
	ld a,#0a
	ld c,#00
	jp l44d3
;
.play_music
.l40cb
;
	ld hl,l44f9
	dec (hl)
	ld ix,l45de
	ld bc,l45ec
	call l416d
	ld ix,l460c
	ld bc,l461a
	call l416d
	ld ix,l463a
	ld bc,l4648
	call l416d
	ld hl,l44f2
	ld de,l44f9
	ld b,#06
	call l414a
	ld b,#07
	call l414a
	ld b,#0b
	call l414a
	ld b,#0d
	call l414a
	ld de,l44f9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#30
	ld hl,l45fd
	call l4123
	ld hl,l462b
	call l4123
	ld hl,l4659
.l4123
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
	jr nz,l4138
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l4138
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
.l414a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l44d3
.l4155
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l44d3
.l416d
	ld a,(l44f9)
	or a
	jp nz,l4225
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l4225
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4155
	or a
	jp z,l421a
	ld r,a
	and #7f
	cp #10
	jr c,l41f5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l436d
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
	jr z,l41ce
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l41ce
	rrca
	ld c,a
	ld hl,l466e
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
	jr z,l41ed
	ld (ix+#1e),b
.l41ed
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l420e
.l41f5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l44fe
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
	add (hl)
	add a
	add a
	add h
	add l
.l420e
	ld a,d
	or a
	jr nz,l421c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l421c
.l421a
	ld a,(hl)
	inc hl
.l421c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l4225
	ld a,(ix+#17)
	or a
	jr nz,l423b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l423b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4251
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4251
	ld a,(ix+#0d)
	or a
	jr z,l425f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l427d
.l425f
	ld a,(ix+#1a)
	or a
	jp z,l4284
	ld c,a
	cp #03
	jr nz,l426c
	xor a
.l426c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l427d
	ld a,(ix+#18)
	dec c
	jr z,l427d
	ld a,(ix+#19)
.l427d
	add (ix+#07)
	ld b,d
	call l436d
.l4284
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l42ac
	dec (ix+#1b)
	jr nz,l42ac
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l42e4
.l42ac
	ld a,(ix+#29)
	or a
	jr z,l42e4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l42db
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l42d2
	ld (ix+#29),#ff
	jr l42db
.l42d2
	cp (ix+#2b)
	jr nz,l42db
	ld (ix+#29),#01
.l42db
	ld b,d
	or a
	jp p,l42e1
	dec b
.l42e1
	ld c,a
	jr l42ef
.l42e4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l42ef
	pop hl
	bit 7,(ix+#14)
	jr z,l42f8
	ld h,d
	ld l,d
.l42f8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l44d3
	ld c,h
	ld a,(ix+#02)
	call l44d3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l434b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l433a
	dec (ix+#09)
	jr nz,l433a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4332
	xor a
	jr l4337
.l4332
	cp #10
	jr nz,l4337
	dec a
.l4337
	ld (ix+#1e),a
.l433a
	ld a,b
	sub (ix+#1e)
	jr nc,l4341
	xor a
.l4341
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l44d3
.l434b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l44fa)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l4369
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l4369
	ld (l44fa),hl
	ret
.l436d
	ld hl,l451c
	cp #61
	jr nc,l4377
	add a
	ld c,a
	add hl,bc
.l4377
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l4381
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l44a6
	ld (ix+#1e),a
	jp l420e
.l4393
	dec b
.l4394
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l439f
	neg
.l439f
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
	jp l420e
.l43b5
	dec b
	jr l43b9
.l43b8
	inc b
.l43b9
	call l44a6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l420e
.l43c8
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
	jp l448b
.l43d9
	ld a,(hl)
	inc hl
	or a
	jr z,l43fb
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
.l43fb
	ld (ix+#29),a
	jp l420e
.l4401
	dec hl
	ld a,(hl)
	and #0f
	ld (l44fd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l44fc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l420e
.l441b
	ld a,(hl)
	or a
	jr z,l442c
	call l44a8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l420e
.l442c
	ld hl,#0101
	ld (l44f8),hl
	jp l420e
.l4435
	call l44a6
	ld (ix+#1e),a
	jp l420e
.l443e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l44b7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l44b7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l420e
.l4460
	ld a,(hl)
	inc hl
	ld (l44f7),a
	jp l420e
.l4468
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
	jp l420e
.l4487
	call l44a6
	add a
.l448b
	ld b,#00
	ld c,a
	push hl
	ld hl,l46ee
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l420e
.l44a6
	ld a,(hl)
	inc hl
.l44a8
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
.l44b7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l466e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l44d3
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
.l44f2
	ret
.l44fa equ $ + 7
.l44f9 equ $ + 6
.l44f8 equ $ + 5
.l44f7 equ $ + 4
.l44f5 equ $ + 2
.l44f3
	db #ff,#ff,#ff,#ff,#06,#30,#01,#00
.l44fd equ $ + 2
.l44fc equ $ + 1
	db #38,#00,#00
.l44fe
	dw l4381,l4394,l4393,l43b8
	dw l43b5,l43c8,l43d9,l4401
	dw l441b,l4401,l4435,l443e
	dw l4460,l4468,l4487
.l451c
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
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #0f,#00
.l45e2 equ $ + 4
.l45de
	db #08,#00,#01,#08,#00,#00,#00,#00
.l45ec equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #b1,#48,#51,#48,#00,#ff,#00,#00
.l460c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l4610 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l461a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 5
	db #00,#00,#00,#00,#00,#01,#d8,#49
	db #72,#48,#00,#ff,#00,#00,#00,#00
.l463a equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l463e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4648 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4659 equ $ + 3
	db #00,#00,#00,#01,#d8,#49,#93,#48
	db #00,#ff,#00,#00,#00,#00,#00,#00
.l4668 equ $ + 2
	db #00,#00,#4e,#48,#6f,#48,#90,#48
.l466e
	db #0e,#47,#4e,#47,#6e,#47,#10,#10
	db #8e,#47,#ce,#47,#6e,#47,#08,#00
	db #8e,#47,#ee,#47,#6e,#47,#02,#1e
	db #8e,#47,#0e,#48,#2e,#48,#08,#00
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
.l46ee
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0b,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #0f,#0b,#09,#0b,#09,#0b,#09,#0b
	db #09,#0b,#09,#0b,#09,#0b,#09,#0b
	db #09,#0b,#09,#0b,#09,#0b,#09,#0b
	db #09,#0b,#09,#0b,#09,#0b,#09,#0b
	db #07,#09,#0c,#0d,#0f,#0f,#0e,#0d
	db #0c,#0b,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #1f,#1f,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#b1,#48,#00,#b1,#48,#00,#b1
	db #48,#00,#b1,#48,#00,#b1,#48,#00
	db #b1,#48,#00,#12,#49,#00,#12,#49
	db #00,#62,#49,#00,#a5,#49,#80,#54
	db #48,#00,#d8,#49,#00,#db,#49,#00
	db #db,#49,#00,#db,#49,#00,#db,#49
	db #00,#db,#49,#00,#fa,#49,#00,#fa
	db #49,#00,#19,#4a,#00,#40,#4a,#80
	db #75,#48,#00,#d8,#49,#00,#d8,#49
	db #00,#65,#4a,#00,#89,#4a,#00,#65
	db #4a,#00,#89,#4a,#00,#af,#4a,#00
	db #af,#4a,#00,#d5,#4a,#00,#fe,#4a
	db #80,#96,#48,#40,#07,#11,#02,#fe
	db #01,#44,#07,#11,#02,#fe,#01,#3b
	db #07,#11,#02,#fe,#01,#44,#07,#11
	db #02,#fe,#01,#40,#07,#11,#02,#fe
	db #01,#44,#07,#11,#02,#fe,#01,#3b
	db #07,#11,#02,#fe,#01,#44,#07,#11
	db #02,#fe,#01,#40,#07,#11,#02,#fe
	db #01,#44,#07,#11,#02,#fe,#01,#3b
	db #07,#11,#02,#fe,#01,#44,#07,#11
	db #02,#fe,#01,#40,#07,#11,#02,#fe
	db #01,#3f,#07,#11,#02,#fe,#01,#40
	db #07,#11,#02,#fe,#01,#42,#07,#11
	db #02,#fe,#01,#ff,#39,#07,#11,#02
	db #fe,#03,#b9,#07,#11,#36,#07,#11
	db #02,#45,#07,#11,#02,#fe,#02,#39
	db #07,#11,#02,#fe,#03,#b9,#07,#11
	db #36,#07,#11,#02,#45,#07,#11,#02
	db #fe,#02,#34,#07,#11,#02,#fe,#03
	db #b4,#07,#11,#3b,#07,#11,#02,#47
	db #07,#11,#02,#fe,#02,#47,#07,#11
	db #03,#34,#07,#11,#02,#fe,#01,#36
	db #07,#11,#02,#fe,#01,#38,#07,#11
	db #02,#fe,#01,#ff,#39,#07,#11,#02
	db #fe,#03,#b9,#07,#11,#36,#07,#11
	db #02,#45,#07,#11,#02,#fe,#02,#39
	db #07,#11,#02,#fe,#03,#b9,#07,#11
	db #36,#07,#11,#02,#45,#07,#11,#02
	db #fe,#02,#34,#07,#11,#02,#fe,#01
	db #34,#07,#11,#02,#fe,#01,#34,#07
	db #11,#02,#fe,#01,#36,#07,#11,#02
	db #34,#07,#11,#02,#fe,#0b,#ff,#36
	db #07,#11,#02,#fe,#03,#36,#07,#11
	db #02,#fe,#05,#36,#07,#11,#02,#fe
	db #03,#36,#07,#11,#02,#fe,#05,#36
	db #07,#11,#02,#fe,#01,#36,#07,#11
	db #02,#fe,#01,#38,#07,#11,#02,#fe
	db #01,#3a,#07,#11,#02,#3b,#07,#11
	db #0d,#ff,#00,#30,#ff,#00,#03,#4c
	db #1e,#47,#02,#4c,#1e,#47,#0a,#4c
	db #1e,#47,#02,#4c,#1e,#47,#0a,#4c
	db #1e,#47,#02,#4c,#1e,#47,#10,#4c
	db #1e,#47,#03,#ff,#00,#03,#51,#1e
	db #47,#02,#51,#1e,#47,#0a,#51,#1e
	db #4c,#02,#51,#1e,#4c,#0a,#4c,#1e
	db #4c,#02,#4c,#1e,#4c,#10,#4c,#1e
	db #47,#03,#ff,#00,#03,#51,#1e,#47
	db #02,#51,#1e,#47,#0a,#51,#1e,#4c
	db #02,#51,#1e,#4c,#07,#4c,#1e,#47
	db #03,#4c,#1e,#47,#03,#4c,#1e,#47
	db #03,#4e,#1e,#47,#02,#58,#1e,#47
	db #0d,#ff,#51,#1e,#47,#05,#4e,#1e
	db #37,#07,#51,#1e,#47,#05,#4e,#1e
	db #37,#07,#4e,#1e,#47,#03,#4e,#1e
	db #47,#03,#50,#1e,#47,#03,#4c,#1e
	db #47,#02,#53,#1e,#47,#0d,#ff,#00
	db #03,#47,#11,#30,#47,#10,#03,#47
	db #10,#03,#49,#10,#02,#47,#10,#03
	db #44,#10,#07,#47,#10,#03,#47,#10
	db #03,#40,#10,#03,#42,#10,#02,#44
	db #10,#0d,#ff,#00,#03,#47,#11,#30
	db #47,#10,#03,#47,#10,#03,#49,#10
	db #02,#47,#10,#03,#44,#10,#07,#4b
	db #13,#34,#03,#4b,#13,#34,#03,#49
	db #10,#02,#47,#10,#03,#44,#10,#0d
	db #ff,#00,#03,#55,#20,#03,#55,#20
	db #02,#55,#20,#04,#51,#20,#03,#51
	db #20,#02,#4e,#20,#06,#ce,#20,#53
	db #20,#03,#53,#20,#03,#53,#20,#03
	db #55,#20,#02,#53,#20,#0d,#ff,#00
	db #03,#55,#20,#03,#55,#20,#02,#55
	db #20,#04,#51,#20,#03,#51,#20,#02
	db #4e,#20,#06,#ce,#20,#53,#20,#03
	db #53,#20,#03,#53,#20,#03,#51,#20
	db #02,#50,#20,#0b,#40,#30,#02,#ff
	db #45,#30,#05,#45,#30,#07,#49,#30
	db #05,#45,#30,#07,#49,#30,#03,#49
	db #30,#03,#4b,#30,#03,#4c,#30,#02
	db #4e,#30,#0c,#fe,#01,#ff
;
.music_info
	db "The Mushroom Demo - Part 1 (1995)(Public Domain)(Ythcal)",0
	db "ST-128 Module",0

	read "music_end.asm"
