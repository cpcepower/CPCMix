; Music of Flight Through A Mandelbrot Fractal (1995)(HJT)(Eliot)(ST-128 Module)
; Ripped by Megachur the 12/02/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FLITAMF1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2021
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
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
	add (hl)
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
	db #00,#00,#00,#00,#00,#00,#00,#00
.l44fd equ $ + 2
.l44fc equ $ + 1
	db #38,#00,#00
.l44fe
	dw l4381,l4394,l4393,l43b8
	dw l43b5,l43c8,l43d9,l4401
	dw l441b,l4401,l4435,l443e
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
	dw #000f
.l45e2 equ $ + 4
.l45de
	db #08,#00,#01,#08,#00,#00,#00,#00
.l45ec equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l460c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l4610 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l461a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l463a equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l463e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4648 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4659 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4668 equ $ + 2
	db #00,#00,#ce,#49,#19,#4a,#64,#4a
.l466e
	db #0e,#47,#4e,#47,#6e,#47,#07,#00
	db #8e,#47,#ce,#47,#ee,#47,#1a,#00
	db #0e,#48,#4e,#48,#6e,#48,#00,#00
	db #8e,#48,#ce,#48,#6e,#48,#00,#00
	db #0e,#48,#ee,#48,#6e,#48,#00,#00
	db #0e,#48,#0e,#49,#2e,#49,#09,#00
	db #4e,#49,#8e,#49,#6e,#48,#00,#00
	db #0e,#48,#ae,#49,#6e,#48,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#ff,#ff
.l46ee
	db #ff,#ff,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#00,#00
	db #00,#00,#ff,#ff,#ff,#ff,#00,#00
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#00,#82
	db #82,#82,#82,#82,#82,#82,#82,#82
	db #82,#82,#82,#82,#82,#82,#82,#82
	db #82,#82,#82,#82,#82,#82,#82,#82
	db #11,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0e,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #04,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0e,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0a,#0a,#0a,#09,#09,#08,#08,#07
	db #06,#05,#04,#03,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#06
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0b,#09,#07
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0c,#0a,#08,#06,#04,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #20,#00,#40,#00,#60,#00,#80,#00
	db #a0,#00,#c0,#00,#e0,#00,#00,#01
	db #20,#01,#40,#01,#60,#01,#80,#01
	db #a0,#01,#c0,#01,#e0,#01,#00,#02
	db #20,#02,#40,#02,#60,#02,#80,#02
	db #a0,#02,#c0,#02,#e0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#80,#03
	db #a0,#03,#c0,#03,#e0,#03,#00,#04
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0e,#0e,#0f,#0f,#0f,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0a
	db #09,#08,#07,#06,#05,#03,#01,#00
	db #00,#05,#4c,#00,#69,#4c,#00,#69
	db #4c,#00,#69,#4c,#00,#69,#4c,#00
	db #93,#4b,#00,#05,#4c,#00,#af,#4a
	db #00,#af,#4a,#00,#21,#4b,#00,#21
	db #4b,#00,#af,#4a,#00,#af,#4a,#00
	db #93,#4b,#00,#05,#4c,#00,#69,#4c
	db #00,#69,#4c,#00,#dc,#4c,#00,#dc
	db #4c,#00,#69,#4c,#00,#69,#4c,#00
	db #dc,#4c,#00,#dc,#4c,#00,#93,#4b
	db #80,#ce,#49,#00,#73,#4e,#00,#e9
	db #4e,#00,#e9,#4e,#00,#e9,#4e,#00
	db #e9,#4e,#00,#b2,#4d,#00,#73,#4e
	db #00,#51,#4d,#00,#51,#4d,#00,#51
	db #4d,#00,#51,#4d,#00,#51,#4d,#00
	db #51,#4d,#00,#b2,#4d,#00,#73,#4e
	db #00,#4a,#4f,#00,#4a,#4f,#00,#ac
	db #4f,#00,#ac,#4f,#00,#4a,#4f,#00
	db #4a,#4f,#00,#ac,#4f,#00,#ac,#4f
	db #00,#b2,#4d,#80,#19,#4a,#00,#3e
	db #51,#00,#41,#51,#00,#41,#51,#00
	db #41,#51,#00,#41,#51,#00,#c7,#50
	db #00,#3e,#51,#00,#0d,#50,#00,#0d
	db #50,#00,#62,#50,#00,#62,#50,#00
	db #0d,#50,#00,#0d,#50,#00,#c7,#50
	db #00,#3e,#51,#00,#b2,#51,#00,#b2
	db #51,#00,#14,#52,#00,#14,#52,#00
	db #b2,#51,#00,#b2,#51,#00,#14,#52
	db #00,#45,#52,#00,#c7,#50,#80,#64
	db #4a,#40,#00,#02,#c0,#50,#c0,#50
	db #40,#00,#02,#c0,#50,#c0,#50,#40
	db #00,#02,#c0,#50,#c0,#50,#40,#00
	db #02,#c0,#50,#c0,#50,#40,#00,#02
	db #c0,#50,#c0,#50,#40,#00,#02,#c0
	db #50,#c0,#50,#40,#00,#02,#c0,#50
	db #c0,#50,#40,#00,#02,#c0,#50,#c0
	db #00,#40,#00,#02,#c0,#50,#c0,#50
	db #40,#00,#02,#c0,#50,#c0,#50,#40
	db #00,#02,#c0,#50,#c0,#50,#40,#00
	db #02,#c0,#50,#c0,#50,#40,#00,#02
	db #c0,#50,#c0,#50,#40,#00,#02,#c0
	db #50,#c0,#50,#40,#00,#02,#c0,#10
	db #c0,#10,#c0,#10,#c0,#10,#c0,#10
	db #c0,#10,#ff,#34,#00,#02,#b4,#50
	db #b4,#50,#34,#00,#02,#b4,#50,#b4
	db #50,#34,#00,#02,#b4,#50,#b4,#50
	db #34,#00,#02,#b4,#50,#b4,#50,#34
	db #00,#02,#b4,#50,#b4,#50,#34,#00
	db #02,#b4,#50,#b4,#50,#34,#00,#02
	db #b4,#50,#b4,#50,#34,#00,#02,#b4
	db #50,#b4,#00,#34,#00,#02,#b4,#50
	db #b4,#50,#34,#00,#02,#b4,#50,#b4
	db #50,#34,#00,#02,#b4,#50,#b4,#50
	db #34,#00,#02,#b4,#50,#b4,#50,#34
	db #00,#02,#b4,#50,#b4,#50,#34,#00
	db #02,#b4,#50,#b4,#50,#34,#00,#02
	db #b4,#10,#b4,#10,#b4,#10,#b4,#10
	db #b4,#10,#b4,#10,#ff,#34,#0b,#13
	db #0b,#12,#34,#0b,#11,#34,#0b,#11
	db #3b,#1b,#20,#b4,#00,#34,#00,#02
	db #34,#00,#02,#b4,#00,#3b,#10,#02
	db #bb,#10,#bb,#10,#34,#00,#02,#b4
	db #00,#b4,#00,#3b,#10,#02,#b4,#00
	db #34,#00,#02,#34,#00,#02,#b4,#00
	db #3b,#10,#02,#3b,#10,#02,#34,#00
	db #02,#b4,#00,#b4,#00,#3b,#10,#02
	db #b4,#00,#34,#00,#02,#34,#00,#02
	db #b4,#00,#3b,#10,#02,#bb,#10,#bb
	db #10,#34,#00,#02,#b4,#00,#b4,#00
	db #3b,#10,#02,#b4,#00,#34,#00,#02
	db #b4,#00,#bb,#10,#bb,#10,#bb,#10
	db #bb,#10,#bb,#10,#bb,#10,#ff,#40
	db #10,#02,#28,#50,#02,#2f,#10,#02
	db #28,#50,#02,#40,#10,#02,#28,#50
	db #02,#2f,#10,#02,#28,#50,#02,#40
	db #10,#02,#28,#50,#02,#2f,#10,#02
	db #28,#50,#02,#40,#10,#02,#28,#50
	db #02,#2f,#10,#02,#28,#50,#02,#40
	db #10,#02,#28,#50,#02,#2f,#10,#02
	db #28,#50,#02,#40,#10,#02,#28,#50
	db #02,#2f,#10,#02,#28,#50,#02,#40
	db #10,#02,#28,#50,#02,#2f,#10,#02
	db #28,#50,#02,#40,#10,#02,#af,#10
	db #af,#10,#af,#10,#af,#10,#af,#10
	db #af,#10,#ff,#40,#00,#02,#ac,#50
	db #ac,#50,#44,#10,#02,#ac,#50,#ac
	db #50,#40,#00,#02,#ac,#50,#ac,#50
	db #44,#10,#02,#ac,#50,#c0,#00,#40
	db #00,#02,#ac,#50,#ac,#50,#44,#10
	db #02,#ac,#50,#ac,#50,#40,#00,#02
	db #ac,#50,#ac,#50,#44,#10,#02,#ac
	db #50,#c0,#00,#40,#00,#02,#ac,#50
	db #ac,#50,#44,#10,#02,#ac,#50,#ac
	db #50,#40,#00,#02,#ac,#50,#ac,#50
	db #44,#10,#02,#ac,#50,#c0,#00,#40
	db #00,#02,#ac,#50,#ac,#50,#44,#10
	db #02,#ac,#50,#ac,#50,#c0,#00,#ac
	db #50,#c4,#10,#c4,#10,#c4,#10,#c4
	db #10,#c4,#10,#c4,#10,#ff,#40,#00
	db #02,#ac,#50,#ac,#50,#44,#10,#02
	db #ac,#50,#ac,#50,#40,#00,#02,#ac
	db #50,#ac,#50,#44,#10,#02,#ac,#50
	db #c0,#00,#40,#00,#02,#ac,#50,#ac
	db #50,#44,#10,#02,#ac,#50,#ac,#50
	db #c0,#00,#c4,#10,#c4,#10,#c4,#10
	db #c4,#10,#c4,#10,#ac,#50,#ac,#50
	db #40,#00,#02,#ac,#50,#ac,#50,#44
	db #10,#02,#ac,#50,#ac,#50,#40,#00
	db #02,#ac,#50,#ac,#50,#44,#10,#02
	db #ac,#50,#c0,#00,#40,#00,#02,#ac
	db #50,#ac,#50,#44,#10,#02,#ac,#50
	db #ac,#50,#c0,#00,#ac,#50,#c4,#10
	db #c4,#10,#c4,#10,#c4,#10,#c4,#10
	db #c4,#10,#ff,#28,#40,#02,#34,#40
	db #02,#28,#40,#02,#34,#40,#02,#28
	db #40,#02,#34,#40,#02,#28,#40,#02
	db #34,#40,#02,#2f,#40,#02,#3b,#40
	db #02,#2f,#40,#02,#3b,#40,#02,#2f
	db #40,#02,#3b,#40,#02,#2f,#40,#02
	db #3b,#40,#02,#2a,#40,#02,#36,#40
	db #02,#2a,#40,#02,#36,#40,#02,#2a
	db #40,#02,#36,#40,#02,#2a,#40,#02
	db #36,#40,#02,#2d,#40,#02,#39,#40
	db #02,#2d,#40,#02,#39,#40,#02,#2d
	db #40,#02,#39,#40,#02,#2d,#40,#02
	db #39,#40,#02,#ff,#40,#6b,#10,#40
	db #6b,#10,#40,#6b,#11,#40,#6b,#11
	db #40,#6b,#12,#40,#6b,#12,#28,#5b
	db #13,#28,#5b,#13,#28,#5b,#13,#28
	db #5b,#13,#28,#5b,#13,#28,#5b,#13
	db #28,#5b,#13,#28,#5b,#13,#28,#5b
	db #13,#28,#5b,#13,#28,#5b,#13,#28
	db #5b,#13,#28,#5b,#13,#28,#5b,#13
	db #28,#5b,#13,#28,#5b,#13,#28,#5b
	db #13,#28,#5b,#13,#28,#5b,#13,#28
	db #5b,#13,#28,#5b,#13,#28,#5b,#13
	db #28,#5b,#13,#28,#5b,#13,#28,#5b
	db #13,#28,#5b,#13,#28,#5b,#13,#28
	db #5b,#13,#28,#5b,#13,#28,#5b,#13
	db #28,#5b,#13,#28,#5b,#13,#28,#5b
	db #13,#28,#5b,#13,#28,#5b,#13,#28
	db #5b,#13,#28,#5b,#13,#28,#5b,#13
	db #28,#5b,#13,#28,#5b,#13,#28,#5b
	db #13,#28,#5b,#13,#28,#5b,#13,#28
	db #5b,#13,#28,#5b,#13,#28,#5b,#13
	db #28,#5b,#13,#28,#5b,#13,#28,#5b
	db #13,#28,#5b,#13,#28,#5b,#13,#28
	db #5b,#13,#28,#5b,#13,#28,#5b,#13
	db #28,#5b,#13,#28,#5b,#13,#28,#5b
	db #13,#28,#5b,#13,#ff,#31,#2b,#22
	db #b1,#27,#0a,#b1,#20,#3d,#20,#02
	db #b1,#20,#3d,#20,#02,#b1,#20,#bd
	db #20,#b1,#20,#bd,#20,#b1,#20,#bd
	db #20,#b1,#20,#31,#20,#02,#b1,#20
	db #b1,#20,#3d,#20,#02,#b1,#20,#3d
	db #20,#02,#b1,#20,#bd,#20,#b1,#20
	db #bd,#20,#b1,#20,#bd,#20,#b1,#20
	db #31,#20,#02,#b1,#20,#b1,#20,#3d
	db #20,#02,#b1,#20,#3d,#20,#02,#b1
	db #20,#bd,#20,#b1,#20,#bd,#20,#b1
	db #20,#bd,#20,#b1,#20,#31,#20,#02
	db #b1,#20,#b1,#20,#3d,#20,#02,#b1
	db #20,#3d,#20,#02,#b1,#20,#bd,#20
	db #b1,#20,#bd,#20,#b1,#20,#bd,#20
	db #bd,#20,#ff,#31,#30,#02,#3d,#30
	db #02,#31,#30,#02,#3d,#30,#02,#31
	db #30,#02,#3d,#30,#02,#31,#30,#02
	db #3d,#30,#02,#31,#30,#02,#3d,#30
	db #02,#31,#30,#02,#3d,#30,#02,#31
	db #30,#02,#3d,#30,#02,#34,#30,#02
	db #40,#30,#02,#2d,#30,#02,#39,#30
	db #02,#2d,#30,#02,#39,#30,#02,#2d
	db #30,#02,#39,#30,#02,#2d,#30,#02
	db #39,#30,#02,#2d,#30,#02,#39,#30
	db #02,#2d,#30,#02,#39,#30,#02,#2d
	db #30,#02,#39,#30,#02,#2f,#30,#02
	db #3b,#30,#02,#ff,#25,#47,#13,#02
	db #31,#40,#02,#25,#40,#02,#31,#40
	db #02,#21,#40,#02,#2d,#40,#02,#21
	db #40,#02,#2d,#40,#02,#23,#40,#02
	db #2f,#40,#02,#23,#40,#02,#2f,#40
	db #02,#25,#40,#02,#31,#40,#02,#25
	db #40,#02,#31,#40,#02,#25,#40,#02
	db #31,#40,#02,#25,#40,#02,#31,#40
	db #02,#21,#40,#02,#2d,#40,#02,#21
	db #40,#02,#2d,#40,#02,#23,#40,#02
	db #2f,#40,#02,#23,#40,#02,#2f,#40
	db #02,#25,#40,#02,#31,#40,#02,#25
	db #40,#02,#31,#40,#02,#ff,#25,#40
	db #02,#31,#40,#02,#25,#40,#02,#31
	db #40,#02,#21,#40,#02,#2d,#40,#02
	db #21,#40,#02,#2d,#40,#02,#23,#40
	db #02,#2f,#40,#02,#23,#40,#02,#2f
	db #40,#02,#25,#40,#02,#31,#40,#02
	db #25,#40,#02,#31,#40,#02,#25,#40
	db #02,#31,#40,#02,#25,#40,#02,#31
	db #40,#02,#21,#40,#02,#2d,#40,#02
	db #21,#40,#02,#2d,#40,#02,#23,#40
	db #02,#2f,#40,#02,#23,#40,#02,#2f
	db #40,#02,#25,#40,#02,#31,#40,#02
	db #25,#40,#02,#31,#40,#02,#ff,#4c
	db #30,#02,#4c,#30,#02,#4e,#30,#02
	db #4f,#30,#04,#4c,#30,#02,#4e,#30
	db #02,#4f,#30,#02,#47,#30,#02,#47
	db #30,#02,#49,#30,#02,#4a,#30,#04
	db #4a,#30,#02,#4c,#30,#02,#4e,#30
	db #02,#4e,#30,#02,#4e,#30,#02,#50
	db #30,#02,#51,#30,#04,#4e,#30,#02
	db #50,#30,#02,#51,#30,#02,#51,#30
	db #02,#51,#30,#02,#53,#30,#02,#55
	db #30,#04,#55,#30,#02,#56,#30,#02
	db #58,#30,#02,#ff,#4c,#30,#02,#4c
	db #30,#02,#4c,#30,#02,#cc,#30,#4c
	db #30,#02,#4c,#30,#02,#cc,#30,#4c
	db #30,#02,#4c,#30,#02,#47,#30,#02
	db #47,#30,#02,#47,#30,#02,#c7,#30
	db #47,#30,#02,#47,#30,#02,#c7,#30
	db #47,#30,#02,#47,#30,#02,#4e,#30
	db #02,#4e,#30,#02,#4e,#30,#02,#ce
	db #30,#4e,#30,#02,#4e,#30,#02,#ce
	db #30,#4e,#30,#02,#4e,#30,#02,#51
	db #30,#02,#51,#30,#02,#51,#30,#02
	db #d1,#30,#51,#30,#02,#51,#30,#02
	db #d1,#30,#4f,#30,#02,#4e,#30,#02
	db #ff,#31,#2b,#13,#0b,#12,#b1,#20
	db #b1,#20,#3d,#20,#02,#b1,#20,#3d
	db #20,#02,#b1,#20,#bd,#20,#b1,#20
	db #bd,#20,#b1,#20,#bd,#20,#b1,#20
	db #31,#20,#02,#b1,#20,#b1,#20,#3d
	db #20,#02,#b1,#20,#3d,#20,#02,#b1
	db #20,#bd,#20,#b1,#20,#bd,#20,#b1
	db #20,#bd,#20,#b1,#20,#31,#20,#02
	db #b1,#20,#b1,#20,#3d,#20,#02,#b1
	db #20,#3d,#20,#02,#b1,#20,#bd,#20
	db #b1,#20,#bd,#20,#b1,#20,#bd,#20
	db #b1,#20,#31,#20,#02,#b1,#20,#b1
	db #20,#3d,#20,#02,#b1,#20,#3d,#20
	db #02,#b1,#20,#bd,#20,#b1,#20,#bd
	db #20,#b1,#20,#bd,#20,#bd,#20,#ff
	db #00,#40,#ff,#49,#40,#02,#c9,#40
	db #c9,#40,#49,#40,#02,#c9,#40,#c9
	db #40,#49,#40,#02,#c9,#40,#c9,#40
	db #49,#40,#02,#c9,#40,#c9,#40,#49
	db #40,#02,#c9,#40,#c9,#40,#49,#40
	db #02,#c9,#40,#c9,#40,#49,#40,#02
	db #c9,#40,#c9,#40,#4c,#40,#02,#cc
	db #40,#cc,#40,#45,#40,#02,#c5,#40
	db #c5,#40,#45,#40,#02,#c5,#40,#c5
	db #40,#45,#40,#02,#c5,#40,#c5,#40
	db #45,#40,#02,#c5,#40,#c5,#40,#45
	db #40,#02,#c5,#40,#c5,#40,#45,#40
	db #02,#c5,#40,#c5,#40,#45,#40,#02
	db #c5,#40,#c5,#40,#47,#40,#02,#c7
	db #40,#c7,#40,#ff,#44,#37,#0c,#02
	db #40,#30,#02,#42,#30,#02,#40,#30
	db #02,#39,#30,#02,#39,#30,#02,#3d
	db #30,#02,#39,#30,#02,#3b,#30,#02
	db #3b,#30,#02,#3f,#30,#02,#3b,#30
	db #02,#3d,#30,#02,#3d,#30,#02,#40
	db #30,#02,#3d,#30,#02,#44,#30,#02
	db #40,#30,#02,#42,#30,#02,#40,#30
	db #02,#39,#30,#02,#39,#30,#02,#3d
	db #30,#02,#39,#30,#02,#3b,#30,#02
	db #3b,#30,#02,#3f,#30,#02,#3b,#30
	db #02,#3d,#30,#02,#3d,#30,#02,#40
	db #30,#02,#3d,#30,#02,#ff,#49,#3c
	db #37,#08,#47,#3c,#37,#04,#44,#3c
	db #37,#04,#49,#3c,#37,#08,#4e,#3c
	db #37,#04,#50,#3c,#37,#04,#49,#3c
	db #37,#08,#47,#3c,#37,#04,#44,#3c
	db #37,#04,#49,#3c,#37,#08,#4e,#3c
	db #37,#04,#50,#3c,#37,#04,#ff,#49
	db #30,#02,#4b,#30,#02,#4c,#30,#02
	db #4b,#30,#02,#49,#30,#02,#4b,#30
	db #02,#4c,#30,#02,#4b,#30,#02,#49
	db #30,#02,#4b,#30,#02,#4c,#30,#02
	db #4b,#30,#02,#4e,#30,#04,#50,#30
	db #04,#49,#30,#02,#4b,#30,#02,#4c
	db #30,#02,#4b,#30,#02,#49,#30,#02
	db #4b,#30,#02,#4c,#30,#02,#4b,#30
	db #02,#49,#30,#02,#4b,#30,#02,#4c
	db #30,#02,#4b,#30,#02,#47,#30,#04
	db #49,#30,#04,#ff
;
.music_info
	db "Flight Through A Mandelbrot Fractal (1995)(HJT)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"
