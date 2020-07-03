; Music of Chany Dream 3 Cheat Part (199x)(NPS)()(ST-128 Module)
; Ripped by Megachur the 30/09/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "CHAND3CP.BIN"
	ENDIF

music_date_rip_day		equ 30
music_date_rip_month	equ 09
music_date_rip_year		equ 2014
music_adr				equ &402e

	read "music_header.asm"

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
	ld (hl),#40
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
	ld (hl),#40
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
	add #fe
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
	add e
	add h
	add l
	add (hl)
	add h
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
	ld d,e
	ld d,h
	dec l
	ld sp,#3832
	jr nz,l451b
	ld l,a
	ld h,h
	ld (hl),l
	ld l,h
	ld h,l
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
	db #00,#00,#00,#00,#00,#00,#00,#00
.l44fd equ $ + 2
.l44fc equ $ + 1
	db #38,#00,#00
.l44fe
	dw l4381,l4394,l4393,l43b8
	dw l43b5,l43c8,l43d9,l4401
	dw l441b,l4401,l4435,l443e
.l451b equ $ + 5
	dw l4460,l4468,l4487
.l451c
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
.l45de equ $ + 2
	dw #000f,#0008
	db #01,#08
.l45e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4610 equ $ + 6
.l460c equ $ + 2
	db #00,#00,#09,#02,#03,#10,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l461a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l463e equ $ + 4
.l463a
	db #0a,#04,#05,#20,#00,#00,#00,#00
.l4648 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4659 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4668 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#ae,#4a
.l466e equ $ + 4
	db #db,#4a,#08,#4b,#0e,#47,#4e,#47
	db #6e,#47,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#8e,#47,#ce,#47
	db #ee,#47,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#48,#4e,#48
	db #6e,#48,#14,#09,#8e,#48,#ce,#48
	db #6e,#48,#14,#09,#0e,#48,#ee,#48
	db #6e,#48,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#49,#4e,#49
	db #6e,#48,#07,#18,#6e,#49,#ae,#49
	db #6e,#48,#00,#00,#ce,#49,#0e,#4a
	db #6e,#48,#07,#18,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46ee equ $ + 4
	db #00,#00,#00,#00,#00,#00,#2e,#4a
	db #4e,#4a,#6e,#4a,#8e,#4a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0a,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#40,#00,#80,#00
	db #00,#01,#80,#01,#00,#02,#60,#02
	db #c0,#02,#20,#03,#70,#03,#b0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0c,#0b,#09,#07,#04,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#04,#06,#07,#09
	db #0c,#11,#17,#1d,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0b,#0d,#0c,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0e,#0e,#0d
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#02,#00,#0c,#0c,#0d,#0d
	db #0c,#0c,#0b,#0b,#0c,#0c,#0d,#0d
	db #0c,#0c,#0b,#0b,#0c,#0c,#0d,#0d
	db #0c,#0c,#0b,#0b,#0c,#0c,#0d,#0d
	db #0c,#0c,#0b,#0b,#20,#00,#40,#00
	db #60,#00,#80,#00,#a0,#00,#c0,#00
	db #e0,#00,#00,#01,#20,#01,#40,#01
	db #60,#01,#80,#01,#a0,#01,#c0,#01
	db #e0,#01,#00,#02,#20,#02,#40,#02
	db #60,#02,#80,#02,#a0,#02,#c0,#02
	db #e0,#02,#00,#03,#20,#03,#40,#03
	db #60,#03,#80,#03,#a0,#03,#c0,#03
	db #e0,#03,#00,#04,#0d,#0f,#0f,#0f
	db #0f,#0e,#0e,#0e,#0e,#0e,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#00,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#03,#00,#03,#00,#04,#00
	db #04,#00,#05,#00,#05,#00,#06,#00
	db #07,#00,#08,#00,#09,#00,#0a,#00
	db #0b,#00,#0c,#00,#0d,#00,#0e,#00
	db #0f,#00,#10,#00,#0b,#0b,#0c,#0c
	db #0b,#0b,#0a,#0a,#0b,#0b,#0c,#0c
	db #0b,#0b,#0a,#0a,#0b,#0b,#0c,#0c
	db #0b,#0b,#0a,#0a,#0b,#0b,#0c,#0c
	db #0b,#0b,#0a,#0a,#f8,#fd,#00,#f8
	db #fd,#00,#f8,#fd,#00,#f8,#fd,#00
	db #f8,#fd,#00,#f8,#fd,#00,#f8,#fd
	db #00,#f8,#fd,#00,#f8,#fd,#00,#f8
	db #fd,#00,#f8,#fd,#f9,#fd,#00,#f9
	db #fd,#00,#f9,#fd,#00,#f9,#fd,#00
	db #f9,#fd,#00,#f9,#fd,#00,#f9,#fd
	db #00,#f9,#fd,#00,#f9,#fd,#00,#f9
	db #fd,#00,#f9,#fd,#f8,#fb,#00,#f8
	db #fb,#00,#f8,#fb,#00,#f8,#fb,#00
	db #f8,#fb,#00,#f8,#fb,#00,#f8,#fb
	db #00,#f8,#fb,#00,#f8,#fb,#00,#f8
	db #fb,#00,#f8,#fb,#f6,#fb,#00,#f6
	db #fb,#00,#f6,#fb,#00,#f6,#fb,#00
	db #f6,#fb,#00,#f6,#fb,#00,#f6,#fb
	db #00,#f6,#fb,#00,#f6,#fb,#00,#f6
	db #fb,#00,#f6,#fb,#00,#35,#4b,#00
	db #03,#4c,#00,#9e,#4b,#00,#9e,#4b
	db #00,#68,#4c,#00,#68,#4c,#00,#9e
	db #4b,#00,#9e,#4b,#00,#b1,#4c,#00
	db #b1,#4c,#00,#9e,#4b,#00,#9e,#4b
	db #00,#03,#4c,#00,#e5,#4c,#80,#ae
	db #4a,#00,#4d,#4d,#00,#f3,#4d,#00
	db #50,#4d,#00,#50,#4d,#00,#50,#4d
	db #00,#50,#4d,#00,#50,#4d,#00,#50
	db #4d,#00,#50,#4d,#00,#50,#4d,#00
	db #50,#4d,#00,#50,#4d,#00,#f3,#4d
	db #00,#04,#4e,#80,#db,#4a,#00,#17
	db #4e,#00,#17,#4e,#00,#2a,#4e,#00
	db #2a,#4e,#00,#8f,#4e,#00,#8f,#4e
	db #00,#2a,#4e,#00,#2a,#4e,#00,#8f
	db #4e,#00,#8f,#4e,#00,#2a,#4e,#00
	db #2a,#4e,#00,#17,#4e,#00,#17,#4e
	db #80,#08,#4b,#69,#5b,#2f,#69,#5f
	db #21,#69,#5b,#2e,#e9,#50,#69,#50
	db #02,#69,#5b,#2d,#e9,#50,#69,#5b
	db #2c,#69,#50,#02,#69,#5f,#22,#69
	db #5b,#2a,#69,#50,#02,#69,#5b,#19
	db #69,#50,#02,#69,#50,#02,#69,#5b
	db #18,#69,#50,#02,#69,#5b,#27,#69
	db #5f,#23,#69,#5b,#26,#69,#50,#02
	db #69,#5b,#15,#69,#50,#02,#69,#5b
	db #24,#e9,#50,#69,#5b,#23,#69,#50
	db #02,#69,#5f,#24,#69,#5b,#22,#69
	db #50,#02,#69,#5b,#11,#69,#50,#02
	db #69,#5b,#20,#e9,#50,#68,#5f,#22
	db #68,#50,#02,#ff,#69,#5f,#21,#69
	db #5b,#20,#69,#50,#02,#e9,#50,#69
	db #50,#02,#69,#50,#02,#e9,#50,#69
	db #50,#02,#69,#50,#02,#69,#5f,#22
	db #69,#50,#02,#69,#50,#02,#e9,#50
	db #69,#50,#02,#69,#50,#02,#e9,#50
	db #69,#50,#02,#69,#50,#02,#69,#5f
	db #23,#69,#50,#02,#69,#50,#02,#e9
	db #50,#69,#50,#02,#69,#50,#02,#e9
	db #50,#69,#50,#02,#69,#50,#02,#69
	db #5f,#24,#69,#50,#02,#69,#50,#02
	db #e9,#50,#69,#50,#02,#69,#50,#02
	db #e9,#50,#68,#5f,#22,#68,#50,#02
	db #ff,#69,#5f,#21,#69,#50,#02,#69
	db #50,#02,#e9,#50,#69,#50,#02,#69
	db #50,#02,#e9,#50,#69,#50,#02,#69
	db #50,#02,#69,#5f,#22,#69,#50,#02
	db #69,#50,#02,#e9,#50,#69,#50,#02
	db #69,#50,#02,#e9,#50,#69,#50,#02
	db #69,#50,#02,#69,#5f,#23,#69,#50
	db #02,#69,#50,#02,#e9,#50,#69,#50
	db #02,#69,#50,#02,#e9,#50,#69,#50
	db #02,#69,#50,#02,#69,#5f,#24,#69
	db #50,#02,#69,#50,#02,#e9,#50,#69
	db #50,#02,#69,#50,#02,#e9,#50,#68
	db #5f,#22,#68,#50,#02,#ff,#4e,#91
	db #30,#51,#90,#03,#55,#90,#02,#53
	db #b0,#03,#51,#90,#03,#4c,#90,#02
	db #4e,#90,#03,#51,#90,#03,#55,#90
	db #02,#53,#b0,#03,#51,#90,#03,#4c
	db #90,#02,#51,#90,#03,#53,#90,#03
	db #55,#90,#02,#53,#b0,#03,#51,#90
	db #03,#4c,#90,#02,#50,#90,#03,#51
	db #90,#03,#53,#90,#02,#55,#b0,#03
	db #53,#90,#03,#51,#90,#02,#ff,#51
	db #91,#20,#51,#b0,#04,#50,#90,#06
	db #51,#90,#02,#53,#90,#02,#55,#90
	db #02,#55,#b0,#04,#53,#90,#06,#51
	db #90,#04,#4c,#90,#0c,#51,#90,#02
	db #55,#90,#02,#53,#90,#02,#53,#b0
	db #04,#51,#90,#06,#4e,#90,#02,#50
	db #90,#02,#ff,#69,#5f,#21,#69,#50
	db #02,#69,#5b,#21,#e9,#50,#69,#50
	db #02,#69,#5b,#22,#e9,#50,#69,#50
	db #02,#69,#5b,#23,#69,#5f,#22,#69
	db #5b,#24,#69,#50,#02,#69,#5b,#15
	db #69,#50,#02,#69,#50,#02,#e9,#50
	db #69,#5b,#26,#69,#50,#02,#69,#5f
	db #23,#69,#5b,#27,#69,#50,#02,#69
	db #5b,#18,#69,#50,#02,#69,#50,#02
	db #69,#5b,#19,#69,#50,#02,#69,#50
	db #02,#69,#5f,#24,#69,#5b,#2a,#69
	db #50,#02,#e9,#50,#69,#5b,#2b,#69
	db #50,#02,#e9,#50,#68,#5f,#22,#68
	db #50,#02,#ff,#fe,#40,#ff,#3d,#01
	db #10,#aa,#68,#3c,#b6,#60,#aa,#60
	db #55,#21,#10,#aa,#68,#3c,#b6,#60
	db #aa,#60,#3d,#01,#10,#aa,#68,#3c
	db #b6,#60,#aa,#60,#55,#21,#10,#aa
	db #68,#3c,#b6,#60,#aa,#60,#3d,#01
	db #10,#b2,#68,#4b,#be,#60,#b2,#60
	db #55,#21,#10,#b2,#68,#4b,#be,#60
	db #b2,#60,#3d,#01,#10,#b2,#68,#4b
	db #be,#60,#b2,#60,#55,#21,#10,#b2
	db #68,#4b,#be,#60,#b2,#60,#3d,#01
	db #10,#ad,#68,#32,#b9,#60,#ad,#60
	db #55,#21,#10,#ad,#68,#32,#b9,#60
	db #ad,#60,#3d,#01,#10,#ad,#68,#32
	db #b9,#60,#ad,#60,#55,#21,#10,#ad
	db #68,#32,#b9,#60,#ad,#60,#3d,#01
	db #10,#b4,#68,#44,#c0,#60,#b4,#60
	db #55,#21,#10,#b4,#68,#44,#c0,#60
	db #b4,#60,#3d,#01,#10,#b4,#68,#44
	db #c0,#60,#b4,#60,#55,#21,#10,#b4
	db #68,#44,#55,#21,#10,#b5,#78,#40
	db #ff,#42,#91,#00,#10,#45,#90,#10
	db #45,#90,#10,#47,#90,#0c,#3d,#a0
	db #04,#ff,#42,#9b,#00,#10,#3e,#9b
	db #03,#10,#45,#9b,#06,#10,#40,#9b
	db #c9,#40,#9b,#4f,#ff,#5d,#6f,#01
	db #10,#5d,#6f,#02,#10,#5d,#6f,#03
	db #10,#5d,#6f,#c4,#5c,#6f,#42,#ff
	db #5d,#6f,#21,#5d,#60,#02,#dd,#60
	db #5d,#60,#02,#5d,#60,#02,#5d,#60
	db #02,#dd,#60,#5d,#60,#02,#5d,#60
	db #02,#5d,#6f,#22,#5d,#60,#02,#dd
	db #60,#5d,#60,#02,#5d,#60,#02,#5d
	db #60,#02,#dd,#60,#5d,#60,#02,#5d
	db #60,#02,#5d,#6f,#23,#5d,#60,#02
	db #dd,#60,#5d,#60,#02,#5d,#60,#02
	db #5d,#60,#02,#dd,#60,#5d,#60,#02
	db #5d,#60,#02,#5d,#6f,#24,#5d,#60
	db #02,#dd,#60,#5d,#60,#02,#5d,#60
	db #02,#5d,#60,#02,#dd,#60,#5c,#6f
	db #22,#5c,#60,#02,#ff,#5d,#5f,#21
	db #5d,#5b,#21,#69,#50,#02,#dd,#50
	db #5d,#50,#02,#5d,#50,#02,#dd,#50
	db #69,#50,#02,#5d,#50,#02,#5d,#5f
	db #22,#5d,#50,#02,#69,#50,#02,#dd
	db #50,#5d,#50,#02,#5d,#50,#02,#dd
	db #50,#69,#50,#02,#5d,#50,#02,#5d
	db #5f,#23,#5d,#50,#02,#69,#50,#02
	db #dd,#50,#5d,#50,#02,#5d,#50,#02
	db #dd,#50,#69,#50,#02,#5d,#50,#02
	db #5d,#5f,#24,#5d,#50,#02,#69,#50
	db #02,#dd,#50,#5d,#50,#02,#5d,#50
	db #02,#e9,#50,#5c,#5f,#22,#68,#50
	db #02,#ff
;
.music_info
	db "Chany Dream 3 Cheat Part (199x)(NPS)()",0
	db "ST-128 Module",0

	read "music_end.asm"
