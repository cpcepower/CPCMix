; Music of Amiga Art Show - Music 7 (19xx)(Public Domain)()(ST-128 Module)
; Ripped by Megachur the 26/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AMIASM07.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 12
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
	ld (hl),#08
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
	add h
	adc c
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
	db #00,#00,#ee,#49,#21,#4a,#54,#4a
.l466e
	db #0e,#47,#4e,#47,#6e,#47,#00,#00
	db #0e,#47,#8e,#47,#ae,#47,#00,#00
	db #0e,#47,#ce,#47,#6e,#47,#1a,#06
	db #ee,#47,#2e,#48,#6e,#47,#18,#08
	db #4e,#48,#8e,#48,#ae,#48,#00,#00
	db #ce,#48,#0e,#49,#2e,#49,#16,#0a
	db #8e,#48,#ce,#48,#ee,#48,#00,#00
	db #0e,#47,#4e,#49,#6e,#49,#00,#00
	db #0e,#48,#4e,#48,#6e,#47,#18,#07
	db #6e,#48,#ae,#48,#ce,#48,#00,#00
	db #ee,#48,#2e,#49,#4e,#49,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46ee
	db #8e,#49,#ae,#49,#ce,#49,#00,#00
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
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0b,#0b,#0b,#0c,#0c,#0c,#0c
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0b,#0c,#0c,#0c,#0b,#0b,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #a0,#00,#e0,#00,#00,#00,#20,#00
	db #40,#00,#60,#00,#a0,#00,#e0,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #80,#00,#a0,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#06,#05
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#06,#08,#0b,#10,#02,#00
	db #06,#08,#0b,#10,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0c,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#0a,#0a,#09
	db #09,#09,#09,#09,#09,#08,#08,#07
	db #07,#07,#06,#06,#05,#05,#00,#00
	db #11,#04,#08,#02,#0d,#02,#15,#05
	db #0a,#0f,#06,#03,#0d,#16,#04,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #f7,#00,#fb,#f7,#00,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#f7,#00,#fb,#f7
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #00,#fb,#f8,#00,#fb,#f8,#00,#fb
	db #f8,#00,#fb,#f8,#00,#fb,#f8,#00
	db #fb,#f8,#00,#fb,#f8,#00,#fb,#f8
	db #00,#fb,#f8,#00,#fb,#f8,#00,#fb
	db #00,#fc,#f7,#00,#fc,#f7,#00,#fc
	db #f7,#00,#fc,#f7,#00,#fc,#f7,#00
	db #fc,#f7,#00,#fc,#f7,#00,#fc,#f7
	db #00,#fc,#f7,#00,#fc,#f7,#00,#fc
	db #00,#87,#4a,#00,#ac,#4a,#00,#c8
	db #4a,#00,#f3,#4a,#00,#87,#4a,#00
	db #ac,#4a,#00,#c8,#4a,#00,#f3,#4a
	db #00,#46,#4b,#00,#46,#4b,#00,#15
	db #4b,#00,#71,#4b,#00,#75,#4b,#00
	db #75,#4b,#00,#75,#4b,#00,#75,#4b
	db #80,#fa,#49,#00,#f7,#4b,#00,#06
	db #4c,#00,#06,#4c,#00,#15,#4c,#00
	db #24,#4c,#00,#24,#4c,#00,#24,#4c
	db #00,#36,#4c,#00,#24,#4c,#00,#24
	db #4c,#00,#48,#4c,#00,#48,#4c,#00
	db #09,#4d,#00,#09,#4d,#00,#09,#4d
	db #00,#09,#4d,#80,#2d,#4a,#00,#76
	db #4d,#00,#76,#4d,#00,#76,#4d,#00
	db #76,#4d,#00,#37,#4e,#00,#37,#4e
	db #00,#37,#4e,#00,#68,#4e,#00,#37
	db #4e,#00,#37,#4e,#00,#37,#4e,#00
	db #99,#4e,#00,#cc,#4e,#00,#cc,#4e
	db #00,#4e,#4f,#00,#4e,#4f,#80,#60
	db #4a,#3b,#30,#04,#40,#30,#08,#42
	db #30,#04,#43,#30,#04,#45,#30,#04
	db #43,#30,#04,#42,#30,#04,#3e,#30
	db #04,#40,#30,#08,#42,#30,#04,#43
	db #30,#02,#42,#30,#0e,#ff,#3b,#30
	db #04,#40,#30,#08,#42,#30,#04,#43
	db #30,#04,#3e,#30,#04,#3b,#30,#04
	db #43,#30,#04,#42,#30,#04,#40,#30
	db #1c,#ff,#3b,#30,#04,#40,#30,#08
	db #42,#30,#04,#43,#30,#04,#45,#30
	db #04,#43,#30,#04,#42,#30,#04,#3e
	db #30,#04,#40,#30,#08,#42,#30,#04
	db #43,#30,#02,#42,#30,#06,#3e,#30
	db #04,#3b,#30,#04,#ff,#39,#30,#04
	db #40,#30,#08,#42,#30,#04,#43,#30
	db #02,#40,#30,#0a,#42,#30,#04,#43
	db #30,#02,#40,#30,#0a,#42,#30,#04
	db #43,#30,#02,#40,#30,#0e,#ff,#00
	db #04,#5b,#30,#02,#fe,#04,#5b,#30
	db #02,#5d,#30,#02,#fe,#02,#5f,#30
	db #02,#5d,#30,#02,#fe,#06,#5d,#30
	db #02,#5b,#30,#02,#5a,#30,#02,#58
	db #30,#02,#da,#30,#5b,#30,#02,#fe
	db #13,#5f,#30,#04,#62,#30,#04,#ff
	db #00,#04,#5b,#30,#02,#fe,#04,#5b
	db #30,#02,#5d,#30,#02,#fe,#02,#5f
	db #30,#02,#5d,#30,#02,#fe,#06,#5d
	db #30,#02,#5b,#30,#02,#5a,#30,#02
	db #58,#30,#02,#da,#30,#5b,#30,#02
	db #fe,#1b,#ff,#64,#30,#40,#ff,#f3
	db #10,#f3,#10,#73,#71,#10,#f3,#10
	db #b4,#40,#f3,#10,#f3,#70,#b4,#40
	db #f3,#10,#f3,#10,#f3,#70,#f3,#10
	db #b4,#40,#f3,#10,#f3,#70,#b4,#40
	db #f3,#10,#f3,#10,#f3,#70,#f3,#10
	db #b4,#40,#f3,#10,#f3,#70,#b4,#40
	db #f3,#10,#f3,#10,#f3,#70,#f3,#10
	db #b4,#40,#f3,#10,#f3,#70,#b4,#40
	db #f3,#10,#f3,#10,#f3,#70,#f3,#10
	db #b4,#40,#f3,#10,#f3,#70,#b4,#40
	db #f3,#10,#f3,#10,#f3,#70,#f3,#10
	db #b4,#40,#f3,#10,#f3,#70,#b4,#40
	db #f3,#10,#f3,#10,#f3,#70,#f3,#10
	db #b4,#40,#f3,#10,#f3,#70,#b4,#40
	db #f3,#10,#f3,#10,#f3,#70,#f3,#10
	db #b4,#40,#f3,#10,#f3,#70,#b4,#40
	db #ff,#00,#04,#28,#50,#10,#26,#50
	db #10,#24,#50,#10,#23,#51,#c0,#ff
	db #00,#04,#28,#50,#10,#26,#50,#10
	db #24,#50,#10,#23,#50,#0c,#ff,#00
	db #04,#28,#50,#10,#2a,#50,#10,#2b
	db #50,#10,#2d,#50,#0c,#ff,#00,#04
	db #4c,#2f,#00,#10,#4a,#2f,#01,#10
	db #48,#2f,#01,#10,#47,#2f,#c1,#ff
	db #00,#04,#4c,#2f,#00,#10,#4e,#2f
	db #02,#10,#4f,#2f,#01,#10,#51,#2f
	db #c1,#ff,#40,#01,#10,#42,#0b,#13
	db #3e,#0b,#10,#40,#0b,#13,#40,#0b
	db #10,#3e,#0b,#13,#3b,#0b,#10,#40
	db #0b,#13,#40,#0b,#10,#3b,#0b,#13
	db #3b,#0b,#10,#40,#0b,#13,#42,#0b
	db #10,#3b,#0b,#13,#3b,#0b,#10,#42
	db #0b,#13,#43,#0b,#10,#3b,#0b,#13
	db #3b,#0b,#10,#43,#0b,#13,#42,#0b
	db #10,#3b,#0b,#13,#3b,#0b,#10,#42
	db #0b,#13,#3e,#0b,#10,#3b,#0b,#13
	db #3b,#0b,#10,#3e,#0b,#13,#40,#0b
	db #10,#3b,#0b,#13,#3b,#0b,#10,#40
	db #0b,#13,#42,#0b,#10,#3b,#0b,#13
	db #3b,#0b,#10,#42,#0b,#13,#40,#0b
	db #10,#3b,#0b,#13,#3b,#0b,#10,#40
	db #0b,#13,#40,#0b,#10,#3b,#0b,#13
	db #3b,#0b,#10,#40,#0b,#13,#42,#0b
	db #10,#3b,#0b,#13,#3b,#0b,#10,#42
	db #0b,#13,#43,#0b,#10,#3b,#0b,#13
	db #3b,#0b,#10,#43,#0b,#13,#42,#0b
	db #10,#3b,#0b,#13,#3b,#0b,#10,#42
	db #0b,#13,#3e,#0b,#10,#3b,#0b,#13
	db #3b,#0b,#10,#3e,#0b,#13,#40,#0b
	db #10,#3b,#0b,#13,#42,#0b,#10,#40
	db #0b,#13,#ff,#2c,#51,#10,#b6,#50
	db #aa,#50,#b6,#50,#28,#50,#02,#af
	db #50,#28,#50,#02,#af,#50,#28,#50
	db #02,#28,#50,#02,#af,#50,#28,#50
	db #02,#af,#50,#28,#50,#02,#2b,#50
	db #02,#b2,#50,#2b,#50,#02,#ab,#50
	db #32,#50,#02,#2b,#50,#02,#b2,#50
	db #2b,#50,#02,#ab,#50,#32,#50,#02
	db #2d,#50,#02,#b4,#50,#2d,#50,#02
	db #ad,#50,#34,#50,#02,#2d,#50,#02
	db #b4,#50,#2d,#50,#02,#ad,#50,#34
	db #50,#02,#2f,#50,#02,#b6,#50,#2f
	db #50,#02,#af,#50,#36,#50,#02,#af
	db #50,#b6,#50,#ad,#50,#b6,#50,#ff
	db #2f,#0b,#10,#2f,#0b,#13,#2b,#0b
	db #10,#2f,#0b,#13,#34,#0b,#10,#2b
	db #0b,#13,#37,#0b,#10,#34,#0b,#13
	db #39,#0b,#10,#37,#0b,#13,#3b,#0b
	db #10,#39,#0b,#13,#3e,#0b,#10,#3b
	db #0b,#13,#3b,#0b,#10,#3e,#0b,#13
	db #39,#0b,#10,#3b,#0b,#13,#37,#0b
	db #10,#39,#0b,#13,#32,#0b,#10,#37
	db #0b,#13,#36,#0b,#10,#32,#0b,#13
	db #37,#0b,#10,#36,#0b,#13,#39,#0b
	db #10,#37,#0b,#13,#3b,#0b,#10,#39
	db #0b,#13,#39,#0b,#10,#3b,#0b,#13
	db #37,#0b,#10,#39,#0b,#13,#36,#0b
	db #10,#37,#0b,#13,#30,#0b,#10,#36
	db #0b,#13,#34,#0b,#10,#30,#0b,#13
	db #36,#0b,#10,#34,#0b,#13,#37,#0b
	db #10,#36,#0b,#13,#36,#0b,#10,#37
	db #0b,#13,#34,#0b,#10,#36,#0b,#13
	db #32,#0b,#10,#34,#0b,#13,#2d,#0b
	db #10,#32,#0b,#13,#2f,#0b,#10,#2d
	db #0b,#13,#33,#0b,#10,#2f,#0b,#13
	db #34,#0b,#10,#33,#0b,#13,#36,#0b
	db #10,#34,#0b,#13,#33,#0b,#10,#36
	db #0b,#13,#2f,#0b,#10,#33,#0b,#13
	db #ff,#26,#50,#04,#28,#50,#06,#28
	db #50,#02,#38,#40,#04,#28,#50,#04
	db #26,#50,#06,#26,#50,#02,#38,#40
	db #04,#26,#50,#04,#24,#50,#06,#24
	db #50,#02,#38,#40,#04,#24,#50,#04
	db #26,#50,#06,#26,#50,#02,#38,#40
	db #04,#ff,#26,#50,#04,#28,#50,#06
	db #28,#50,#02,#38,#40,#04,#28,#50
	db #04,#2a,#50,#06,#2a,#50,#02,#38
	db #40,#04,#2a,#50,#04,#2b,#50,#06
	db #2b,#50,#02,#38,#40,#04,#2b,#50
	db #04,#2d,#50,#06,#2d,#50,#02,#38
	db #40,#04,#ff,#26,#50,#04,#28,#50
	db #06,#28,#50,#02,#38,#40,#04,#28
	db #50,#04,#26,#50,#06,#26,#50,#02
	db #38,#40,#04,#26,#50,#04,#24,#50
	db #06,#24,#50,#02,#38,#40,#04,#24
	db #50,#04,#26,#50,#06,#3d,#40,#02
	db #39,#40,#03,#b8,#40,#ff,#47,#01
	db #10,#ca,#00,#c7,#00,#c9,#00,#c7
	db #00,#cc,#00,#cc,#00,#c7,#00,#cc
	db #00,#cc,#00,#c7,#00,#cc,#00,#c7
	db #00,#cc,#00,#cc,#00,#c7,#00,#cc
	db #00,#cc,#00,#c7,#00,#cc,#00,#c7
	db #00,#ce,#00,#ce,#00,#c7,#00,#ce
	db #00,#ce,#00,#c7,#00,#ce,#00,#c7
	db #00,#cf,#00,#cf,#00,#c7,#00,#ce
	db #00,#ce,#00,#c7,#00,#cc,#00,#c7
	db #00,#cc,#00,#cc,#00,#c7,#00,#cc
	db #00,#cc,#00,#c7,#00,#cc,#00,#c7
	db #00,#cc,#00,#cc,#00,#c7,#00,#cc
	db #00,#cc,#00,#c7,#00,#cc,#00,#c7
	db #00,#ce,#00,#ce,#00,#c7,#00,#ce
	db #00,#ce,#00,#c7,#00,#ce,#00,#c7
	db #00,#ce,#00,#c7,#00,#cc,#00,#ff
	db #4e,#30,#02,#4f,#30,#02,#4c,#30
	db #02,#ca,#30,#4c,#30,#02,#c7,#30
	db #ca,#30,#cc,#30,#cf,#30,#cc,#30
	db #ca,#30,#cc,#30,#ca,#30,#c7,#30
	db #c5,#30,#c7,#30,#c3,#30,#c5,#30
	db #c7,#30,#c3,#30,#c5,#30,#c7,#30
	db #ca,#30,#c7,#30,#ca,#30,#cc,#30
	db #ca,#30,#c7,#30,#c5,#30,#c7,#30
	db #c3,#30,#c5,#30,#c2,#30,#c3,#30
	db #c2,#30,#c3,#30,#c0,#30,#c2,#30
	db #c3,#30,#c0,#30,#c2,#30,#c3,#30
	db #c5,#30,#c3,#30,#c5,#30,#c7,#30
	db #c5,#30,#c7,#30,#47,#30,#02,#47
	db #30,#02,#4a,#30,#02,#47,#30,#02
	db #4c,#30,#02,#47,#30,#02,#ff
;
.music_info
	db "Amiga Art Show - Music 7 (19xx)(Public Domain)()",0
	db "ST-128 Module",0

	read "music_end.asm"
