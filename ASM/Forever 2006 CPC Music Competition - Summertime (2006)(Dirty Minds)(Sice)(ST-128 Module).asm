; Music of Forever 2006 CPC Music Competition - Summertime (2006)(Dirty Minds)(Sice)(ST-128 Module)
; Ripped by Megachur the 14/12/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FOR2CPCS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2014
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
.l45de equ $ + 2
	dw #000f,#0008
.l45e2 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l45ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l460c equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l4610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l461a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l463e equ $ + 6
.l463a equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4648
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4659 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l466e equ $ + 6
.l4668
	db #ce,#48,#0d,#49,#4c,#49,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#47
	db #4e,#47,#6e,#47,#c0,#00,#8e,#47
	db #ce,#47,#ee,#47,#00,#00,#0e,#48
	db #4e,#48,#ee,#47,#16,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#8e,#47
	db #6e,#48,#ee,#47,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46ee equ $ + 6
	db #00,#00,#00,#00,#00,#00,#8e,#48
	db #ae,#48,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #65,#01,#3e,#01,#00,#00,#c3,#04
	db #65,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0d,#0c,#0b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#06,#07,#07,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#03,#00,#02,#00
	db #01,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#02,#00,#03,#00
	db #04,#00,#03,#00,#02,#00,#0e,#0e
	db #0e,#0e,#0e,#0e,#0d,#0d,#0d,#0d
	db #0d,#0d,#0c,#0c,#0c,#0c,#0c,#0c
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#01,#01,#01,#01,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#02,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#00,#00,#8b
	db #49,#00,#94,#49,#00,#8b,#49,#00
	db #94,#49,#00,#9d,#49,#00,#94,#49
	db #00,#9d,#49,#00,#94,#49,#00,#a4
	db #49,#00,#a9,#49,#00,#a4,#49,#00
	db #a9,#49,#00,#9d,#49,#00,#94,#49
	db #00,#9d,#49,#00,#94,#49,#00,#a4
	db #49,#00,#a9,#49,#00,#a4,#49,#00
	db #a9,#49,#80,#ce,#48,#00,#ac,#49
	db #00,#dc,#49,#00,#10,#4a,#00,#43
	db #4a,#00,#66,#4a,#00,#96,#4a,#00
	db #c3,#4a,#00,#f5,#4a,#00,#1c,#4b
	db #00,#9e,#4b,#00,#1c,#4b,#00,#9e
	db #4b,#00,#66,#4a,#00,#96,#4a,#00
	db #c3,#4a,#00,#f5,#4a,#00,#1c,#4b
	db #00,#9e,#4b,#00,#1c,#4b,#00,#9e
	db #4b,#80,#0d,#49,#00,#20,#4c,#00
	db #7b,#4c,#00,#d6,#4c,#00,#31,#4d
	db #00,#8c,#4d,#00,#e7,#4d,#00,#42
	db #4e,#00,#9d,#4e,#00,#f8,#4e,#00
	db #53,#4f,#00,#f8,#4e,#00,#53,#4f
	db #00,#8c,#4d,#00,#e7,#4d,#00,#42
	db #4e,#00,#9d,#4e,#00,#ae,#4f,#00
	db #f1,#4f,#00,#ae,#4f,#00,#f1,#4f
	db #80,#4c,#49,#23,#28,#28,#20,#2d
	db #28,#2d,#20,#ff,#2a,#28,#1b,#20
	db #2b,#28,#19,#20,#ff,#00,#20,#2d
	db #28,#2d,#20,#ff,#23,#28,#28,#40
	db #ff,#00,#40,#ff,#47,#31,#a1,#49
	db #30,#02,#4a,#30,#02,#4e,#30,#0a
	db #4a,#30,#02,#4c,#30,#02,#4e,#30
	db #02,#51,#30,#02,#cc,#30,#4e,#30
	db #03,#4c,#30,#06,#4a,#30,#04,#49
	db #30,#0c,#47,#30,#02,#49,#30,#02
	db #4a,#30,#02,#ff,#4b,#31,#41,#4c
	db #30,#02,#49,#30,#08,#45,#30,#0c
	db #42,#30,#02,#45,#30,#02,#47,#30
	db #02,#4a,#30,#08,#49,#30,#02,#45
	db #30,#04,#47,#30,#06,#4c,#30,#02
	db #4a,#30,#02,#49,#30,#02,#42,#30
	db #02,#47,#30,#02,#49,#30,#02,#ff
	db #3b,#31,#81,#42,#30,#02,#45,#30
	db #02,#47,#30,#02,#49,#30,#02,#4a
	db #30,#04,#4c,#30,#02,#4e,#30,#03
	db #ce,#30,#51,#30,#06,#4e,#30,#02
	db #4c,#30,#0c,#4a,#30,#02,#49,#30
	db #02,#45,#30,#02,#42,#30,#0a,#40
	db #30,#02,#ff,#3d,#31,#81,#3e,#30
	db #02,#40,#30,#02,#42,#30,#02,#45
	db #30,#02,#c8,#30,#49,#30,#03,#cb
	db #30,#4c,#30,#07,#4a,#30,#02,#49
	db #30,#02,#4a,#30,#20,#ff,#4a,#31
	db #21,#4c,#30,#02,#4e,#30,#02,#47
	db #30,#0e,#4a,#30,#02,#4c,#30,#02
	db #4e,#30,#02,#4c,#30,#02,#4a,#30
	db #02,#49,#30,#02,#cb,#30,#4c,#30
	db #11,#49,#30,#02,#4a,#30,#02,#4c
	db #30,#02,#45,#30,#08,#ff,#40,#31
	db #21,#42,#30,#04,#45,#30,#04,#47
	db #30,#04,#49,#30,#04,#4a,#30,#02
	db #cc,#30,#4e,#30,#09,#51,#30,#02
	db #53,#30,#10,#56,#30,#02,#55,#30
	db #02,#53,#30,#02,#51,#30,#04,#53
	db #30,#06,#ff,#00,#04,#47,#31,#21
	db #49,#30,#02,#4a,#30,#02,#4c,#30
	db #02,#cd,#30,#4e,#30,#0f,#51,#30
	db #02,#4e,#30,#04,#4c,#30,#02,#4a
	db #30,#02,#55,#30,#02,#56,#30,#02
	db #55,#30,#02,#53,#30,#02,#51,#30
	db #02,#4e,#30,#10,#ff,#49,#31,#21
	db #4a,#30,#04,#4c,#30,#04,#49,#30
	db #04,#45,#30,#0c,#42,#30,#02,#45
	db #30,#02,#47,#30,#02,#c9,#30,#4a
	db #30,#07,#49,#30,#02,#45,#30,#04
	db #47,#30,#12,#ff,#36,#61,#11,#b9
	db #60,#c0,#60,#c2,#60,#c5,#60,#c7
	db #60,#ca,#60,#c7,#60,#ca,#60,#cc
	db #60,#ce,#60,#d1,#60,#ce,#60,#d1
	db #60,#d3,#60,#d1,#60,#bb,#60,#be
	db #60,#c0,#60,#c2,#60,#c5,#60,#c7
	db #60,#ca,#60,#c7,#60,#ca,#60,#cc
	db #60,#ce,#60,#d1,#60,#ce,#60,#d1
	db #60,#d3,#60,#d1,#60,#bb,#60,#be
	db #60,#c0,#60,#c2,#60,#c5,#60,#c7
	db #60,#ca,#60,#c7,#60,#ca,#60,#cc
	db #60,#ce,#60,#d1,#60,#ce,#60,#d1
	db #60,#d3,#60,#d1,#60,#bb,#60,#be
	db #60,#c0,#60,#c2,#60,#c5,#60,#c7
	db #60,#ca,#60,#c7,#60,#ca,#60,#cc
	db #60,#ce,#60,#d1,#60,#ce,#60,#d1
	db #60,#d3,#60,#d1,#60,#ff,#3b,#61
	db #11,#be,#60,#c0,#60,#c2,#60,#c5
	db #60,#c7,#60,#ca,#60,#c7,#60,#ca
	db #60,#cc,#60,#ce,#60,#d1,#60,#ce
	db #60,#d1,#60,#d3,#60,#d1,#60,#bb
	db #60,#be,#60,#c0,#60,#c2,#60,#c5
	db #60,#c7,#60,#ca,#60,#c7,#60,#ca
	db #60,#cc,#60,#ce,#60,#d1,#60,#ce
	db #60,#d1,#60,#d3,#60,#d1,#60,#bb
	db #60,#be,#60,#c0,#60,#c2,#60,#c5
	db #60,#c7,#60,#ca,#60,#c7,#60,#ca
	db #60,#cc,#60,#ce,#60,#d1,#60,#ce
	db #60,#d1,#60,#d3,#60,#d1,#60,#bb
	db #60,#be,#60,#c0,#60,#c2,#60,#c5
	db #60,#c7,#60,#ca,#60,#c7,#60,#ca
	db #60,#cc,#60,#ce,#60,#d1,#60,#ce
	db #60,#d1,#60,#d3,#60,#d1,#60,#ff
	db #47,#66,#02,#04,#47,#60,#02,#47
	db #60,#02,#37,#10,#02,#37,#11,#23
	db #47,#66,#02,#02,#47,#60,#04,#47
	db #60,#02,#47,#60,#02,#47,#60,#02
	db #37,#10,#02,#37,#11,#23,#47,#66
	db #02,#02,#47,#60,#02,#45,#66,#12
	db #04,#45,#60,#02,#45,#60,#02,#37
	db #10,#02,#37,#11,#23,#45,#66,#12
	db #02,#45,#60,#04,#45,#60,#02,#45
	db #60,#02,#45,#60,#02,#37,#10,#02
	db #37,#11,#23,#45,#66,#12,#02,#45
	db #60,#02,#ff,#45,#66,#12,#04,#45
	db #60,#02,#45,#60,#02,#42,#10,#02
	db #42,#11,#23,#45,#66,#12,#02,#45
	db #60,#04,#45,#60,#02,#45,#60,#02
	db #45,#60,#02,#42,#10,#02,#42,#11
	db #23,#45,#66,#12,#02,#45,#60,#02
	db #47,#66,#02,#04,#47,#60,#02,#47
	db #60,#02,#42,#10,#02,#42,#11,#23
	db #47,#66,#02,#02,#47,#60,#04,#47
	db #60,#02,#47,#60,#02,#47,#60,#02
	db #42,#10,#02,#42,#11,#23,#47,#66
	db #02,#02,#47,#60,#02,#ff,#47,#66
	db #02,#04,#47,#60,#02,#47,#60,#02
	db #2f,#10,#02,#2f,#11,#23,#47,#66
	db #02,#02,#47,#60,#04,#47,#60,#02
	db #47,#60,#02,#47,#60,#02,#2f,#10
	db #02,#2f,#11,#23,#47,#66,#02,#02
	db #47,#60,#02,#45,#66,#12,#04,#45
	db #60,#02,#45,#60,#02,#39,#10,#02
	db #39,#11,#23,#45,#66,#12,#02,#45
	db #60,#04,#45,#60,#02,#45,#60,#02
	db #45,#60,#02,#39,#10,#02,#39,#11
	db #23,#45,#66,#12,#02,#45,#60,#02
	db #ff,#45,#66,#12,#04,#45,#60,#02
	db #45,#60,#02,#2a,#10,#02,#2a,#11
	db #23,#45,#66,#12,#02,#45,#60,#04
	db #45,#60,#02,#45,#60,#02,#45,#60
	db #02,#2a,#10,#02,#2a,#11,#23,#45
	db #66,#12,#02,#45,#60,#02,#47,#66
	db #02,#04,#47,#60,#02,#47,#60,#02
	db #2a,#10,#02,#2a,#11,#23,#47,#66
	db #02,#02,#47,#60,#04,#47,#60,#02
	db #47,#60,#02,#47,#60,#02,#2a,#10
	db #02,#2a,#11,#23,#47,#66,#02,#02
	db #47,#60,#02,#ff,#47,#66,#02,#04
	db #47,#60,#02,#47,#60,#02,#2b,#10
	db #02,#2b,#11,#23,#47,#66,#02,#02
	db #47,#60,#04,#47,#60,#02,#47,#60
	db #02,#47,#60,#02,#2b,#10,#02,#2b
	db #11,#23,#47,#66,#02,#02,#47,#60
	db #02,#45,#66,#12,#04,#45,#60,#02
	db #45,#60,#02,#2b,#10,#02,#2b,#11
	db #23,#45,#66,#12,#02,#45,#60,#04
	db #45,#60,#02,#45,#60,#02,#45,#60
	db #02,#2b,#10,#02,#2b,#11,#23,#45
	db #66,#12,#02,#45,#60,#02,#ff,#45
	db #66,#12,#04,#45,#60,#02,#45,#60
	db #02,#42,#10,#02,#42,#11,#23,#45
	db #66,#12,#02,#45,#60,#04,#45,#60
	db #02,#45,#60,#02,#45,#60,#02,#42
	db #10,#02,#42,#11,#23,#45,#66,#12
	db #02,#45,#60,#02,#47,#66,#02,#04
	db #47,#60,#02,#47,#60,#02,#45,#10
	db #02,#45,#11,#23,#47,#66,#02,#02
	db #47,#60,#04,#47,#60,#02,#47,#60
	db #02,#47,#60,#02,#43,#10,#02,#43
	db #11,#23,#47,#66,#02,#02,#47,#60
	db #02,#ff,#47,#66,#02,#04,#47,#60
	db #02,#47,#60,#02,#2b,#10,#02,#2b
	db #11,#23,#47,#66,#02,#02,#47,#60
	db #04,#47,#60,#02,#47,#60,#02,#47
	db #60,#02,#2b,#10,#02,#2b,#11,#23
	db #47,#66,#02,#02,#47,#60,#02,#45
	db #66,#12,#04,#45,#60,#02,#45,#60
	db #02,#2d,#10,#02,#2d,#11,#23,#45
	db #66,#12,#02,#45,#60,#04,#45,#60
	db #02,#45,#60,#02,#45,#60,#02,#2d
	db #10,#02,#2d,#11,#23,#45,#66,#12
	db #02,#45,#60,#02,#ff,#45,#66,#12
	db #04,#45,#60,#02,#45,#60,#02,#2a
	db #10,#02,#2a,#11,#23,#45,#66,#12
	db #02,#45,#60,#04,#45,#60,#02,#45
	db #60,#02,#45,#60,#02,#2a,#10,#02
	db #2a,#11,#23,#45,#66,#12,#02,#45
	db #60,#02,#47,#66,#02,#04,#47,#60
	db #02,#47,#60,#02,#2a,#10,#02,#2a
	db #11,#23,#47,#66,#02,#02,#47,#60
	db #04,#47,#60,#02,#47,#60,#02,#47
	db #60,#02,#2b,#10,#02,#2b,#11,#23
	db #47,#66,#02,#02,#47,#60,#02,#ff
	db #47,#66,#02,#04,#47,#60,#02,#47
	db #60,#02,#2f,#10,#02,#2f,#11,#23
	db #47,#66,#02,#02,#47,#60,#04,#47
	db #60,#02,#47,#60,#02,#47,#60,#02
	db #2f,#10,#02,#2f,#11,#23,#47,#66
	db #02,#02,#47,#60,#02,#45,#66,#12
	db #04,#45,#60,#02,#45,#60,#02,#2f
	db #10,#02,#2f,#11,#23,#45,#66,#12
	db #02,#45,#60,#04,#45,#60,#02,#45
	db #60,#02,#45,#60,#02,#2f,#10,#02
	db #2f,#11,#23,#45,#66,#12,#02,#45
	db #60,#02,#ff,#45,#66,#12,#04,#45
	db #60,#02,#45,#60,#02,#2f,#10,#02
	db #2f,#11,#23,#45,#66,#12,#02,#45
	db #60,#04,#45,#60,#02,#45,#60,#02
	db #45,#60,#02,#2f,#10,#02,#2f,#11
	db #23,#45,#66,#12,#02,#45,#60,#02
	db #47,#66,#02,#04,#47,#60,#02,#47
	db #60,#02,#2f,#10,#02,#2f,#11,#33
	db #c7,#66,#02,#2f,#10,#04,#47,#66
	db #02,#02,#47,#60,#02,#47,#60,#02
	db #2f,#10,#02,#2f,#11,#23,#47,#66
	db #02,#02,#47,#60,#02,#ff,#47,#66
	db #02,#04,#47,#60,#02,#47,#60,#06
	db #47,#66,#02,#02,#47,#60,#04,#47
	db #60,#02,#47,#60,#02,#47,#60,#06
	db #47,#66,#02,#02,#47,#60,#02,#45
	db #66,#12,#04,#45,#60,#02,#45,#60
	db #06,#45,#66,#12,#02,#45,#60,#04
	db #45,#60,#02,#45,#60,#02,#45,#60
	db #06,#45,#66,#12,#02,#45,#60,#02
	db #ff,#45,#66,#12,#04,#45,#60,#02
	db #45,#60,#06,#45,#66,#12,#02,#45
	db #60,#04,#45,#60,#02,#45,#60,#02
	db #45,#60,#06,#45,#66,#12,#02,#45
	db #60,#02,#47,#66,#02,#04,#47,#60
	db #02,#47,#60,#07,#47,#66,#02,#05
	db #47,#66,#02,#02,#47,#60,#02,#47
	db #60,#06,#47,#66,#02,#02,#47,#60
	db #02,#ff
;
.music_info
	db "Forever 2006 CPC Music Competition - Summertime (2006)(Dirty Minds)(Sice)",0
	db "ST-128 Module",0

	read "music_end.asm"