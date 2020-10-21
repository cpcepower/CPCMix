; Music of Chala (1994)(POW)()(ST-Module)
; Ripped by Megachur the 04/08/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CHALA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #4000

	read "music_header.asm"

	jr l4004
	jr l4013
.l4004
	call l402f
	ld hl,l4452
	ld de,l401c
	ld bc,#81ff
	jp #bcd7
.l4013
	ld hl,l4452
	call #bcdd
	jp l409b
.l401c
	push ix
	call l40b7
	pop ix
	ret
;
	jp l402f
	jp l40b7
	jp l409b
	ld h,(hl)
	inc b
;
.init_music
.l402f
;
	ld b,#03
	ld ix,l43fe
	ld iy,l432a
	ld de,#001c
.l403c
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l403c
	ld a,#06
	ld (l40df),a
	ld a,d
	ld (l40f3),a
	inc a
	ld (l40da),a
	ld a,#38
	ld (l40e4),a
	ld a,#ff
	ld (l4326),a
	ld (l4327),a
	ld (l4328),a
	ld (l4329),a
	ld a,#0c
	ld c,d
	call l4308
	ld a,#0d
	ld c,d
	jp l4308
;
.stop_music
.l409b
;
	ld a,#07
	ld c,#3f
	call l4308
	ld a,#08
	ld c,#00
	call l4308
	ld a,#09
	ld c,#00
	call l4308
	ld a,#0a
	ld c,#00
	jp l4308
;
.play_music
.l40b7
;
	ld hl,l40da
	dec (hl)
	ld ix,l43fe
	ld bc,l440c
	call l416d
	ld ix,l441a
	ld bc,l4428
	call l416d
	ld ix,l4436
	ld bc,l4444
	call l416d
.l40da equ $ + 1
	ld a,#00
	or a
	jr nz,l40e3
.l40df equ $ + 1
	ld a,#00
	ld (l40da),a
.l40e4 equ $ + 1
.l40e3
	ld a,#00
	ld hl,l4327
	cp (hl)
	jr z,l40f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l4308
.l40f3 equ $ + 1
.l40f2
	ld a,#00
	ld hl,l4326
	cp (hl)
	jr z,l4101
	ld (hl),a
	ld c,a
	ld a,#06
	call l4308
.l4102 equ $ + 1
.l4101
	ld a,#00
	ld hl,l4328
	cp (hl)
	jr z,l4110
	ld (hl),a
	ld c,a
	ld a,#0b
	call l4308
.l4111 equ $ + 1
.l4110
	ld a,#00
	ld hl,l4329
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l4308
.l411e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l421e
.l412d
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l4308
.l4147
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l415c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l415c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l4180
.l416d
	ld a,(l40da)
	or a
	jp nz,l421e
	dec (ix+#06)
	jp nz,l421e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l4180
	ld a,(hl)
	or a
	jr z,l411e
	cp #fe
	jr z,l412d
	cp #ff
	jr z,l4147
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l4330
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l41bc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l41bc
	and #7f
	ld (ix+#06),a
	jr l420f
.l41bc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l41d0
	ld (ix+#05),a
	ld (ix+#0a),d
.l41d0
	add a
	add a
	add a
	ld e,a
	ld hl,l4466
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l420f
	cp #f0
	jp z,l42c4
	cp #d0
	jp z,l42e0
	cp #b0
	jp z,l42e8
	cp #80
	jp nc,l42f0
	cp #10
	jr nz,l420f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l420f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l421e
	ld a,(ix+#17)
	or a
	jr nz,l4232
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l4232
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l425d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l4330
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l425d
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l4308
	ld c,h
	ld a,(ix+#03)
	call l4308
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l429b
	and #0f
	sub (ix+#0a)
	jr nc,l4291
	xor a
.l4291
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l4308
.l429b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l42b8
	ld b,a
	ld a,c
	ld (l40f3),a
	ld a,b
	sub #40
.l42b8
	ld (l42bf),a
	ld a,(l40e4)
.l42bf equ $ + 1
	bit 0,a
	ld (l40e4),a
	ret
.l42c4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l44e6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l420f
.l42e0
	inc hl
	ld a,(hl)
	ld (l40df),a
	jp l420f
.l42e8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l420f
.l42f0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l4111),a
	inc hl
	ld a,(hl)
	ld (l4102),a
	jp l420f
.l4308
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
	ret
.l4329 equ $ + 3
.l4328 equ $ + 2
.l4327 equ $ + 1
.l4326
	db #ff,#ff,#ff,#ff
.l432a
	dw l48a6,l48d3,l4900
.l4330
	dw #0eee,#0e18,#0d4d,#0c8e
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
	db #00,#00,#00,#00,#00,#00,#00,#00
.l43fe equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l440c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l441a
	db #00,#00,#02,#03,#09,#00,#00,#00
.l4428 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4436 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l4444 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4452
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l4466 equ $ + 4
	db #75,#6c,#65,#2e,#06,#45,#46,#45
	db #66,#45,#00,#00,#00,#3f,#45,#8d
	db #54,#5f,#4e,#4f,#86,#45,#c6,#45
	db #e6,#45,#00,#00,#ff,#3e,#21,#d1
	db #70,#9d,#23,#56,#23,#40,#10,#3f
	db #09,#bd,#23,#4e,#06,#46,#46,#46
	db #66,#46,#14,#09,#86,#46,#c6,#46
	db #66,#46,#14,#09,#06,#46,#e6,#46
	db #66,#46,#00,#00,#06,#3f,#af,#57
	db #75,#3d,#f0,#30,#06,#47,#46,#47
	db #66,#46,#07,#18,#66,#47,#a6,#47
	db #66,#46,#00,#00,#c6,#47,#06,#48
	db #66,#46,#07,#18,#00,#bd,#00,#bd
	db #00,#bd,#00,#00,#00,#bd,#00,#bd
	db #00,#bd,#00,#00,#00,#bd,#00,#bd
	db #00,#bd,#00,#00,#00,#bd,#00,#bd
.l44e6 equ $ + 4
	db #00,#bd,#00,#00,#86,#86,#26,#48
	db #46,#48,#66,#48,#86,#48,#00,#bd
	db #00,#bd,#00,#bd,#00,#bd,#00,#bd
	db #00,#bd,#00,#bd,#00,#bd,#00,#bd
	db #00,#bd,#00,#bd,#80,#00,#00,#01
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
.l48a6 equ $ + 4
	db #fb,#00,#f6,#fb,#00,#2d,#49,#00
	db #fe,#49,#00,#a4,#49,#00,#a4,#49
	db #00,#56,#4a,#00,#56,#4a,#00,#a4
	db #49,#00,#a4,#49,#00,#91,#4a,#00
	db #91,#4a,#00,#a4,#49,#00,#a4,#49
	db #00,#fe,#49,#00,#bb,#4a,#80,#a6
.l48d3 equ $ + 1
	db #48,#00,#2b,#4b,#00,#c0,#4b,#00
	db #2e,#4b,#00,#2e,#4b,#00,#2e,#4b
	db #00,#2e,#4b,#00,#2e,#4b,#00,#2e
	db #4b,#00,#2e,#4b,#00,#2e,#4b,#00
	db #2e,#4b,#00,#2e,#4b,#00,#c0,#4b
.l4900 equ $ + 6
	db #00,#ce,#4b,#80,#d3,#48,#00,#e3
	db #4b,#00,#50,#4c,#00,#f8,#4b,#00
	db #f8,#4b,#00,#65,#4c,#00,#65,#4c
	db #00,#f8,#4b,#00,#f8,#4b,#00,#65
	db #4c,#00,#65,#4c,#00,#f8,#4b,#00
	db #f8,#4b,#00,#50,#4c,#00,#bf,#4c
	db #80,#00,#49,#61,#02,#b5,#0f,#61
	db #02,#f5,#01,#61,#02,#b5,#0e,#e1
	db #05,#61,#82,#61,#02,#b5,#0d,#e1
	db #05,#61,#02,#b5,#0c,#61,#02,#05
	db #61,#02,#f5,#02,#61,#02,#b5,#0a
	db #61,#02,#05,#e1,#b5,#09,#61,#02
	db #05,#61,#82,#e1,#b5,#08,#61,#02
	db #05,#61,#02,#b5,#07,#61,#02,#f5
	db #03,#61,#02,#b5,#06,#61,#02,#05
	db #e1,#b5,#05,#61,#02,#05,#61,#02
	db #b5,#04,#e1,#05,#61,#02,#b5,#03
	db #61,#02,#05,#61,#02,#f5,#04,#61
	db #02,#b5,#02,#61,#02,#05,#e1,#b5
	db #01,#61,#02,#05,#61,#02,#b5,#00
	db #e1,#05,#60,#02,#f5,#02,#60,#02
	db #05,#ff,#61,#02,#f5,#01,#61,#02
	db #b5,#00,#61,#02,#05,#e1,#05,#61
	db #82,#61,#82,#e1,#05,#61,#82,#61
	db #82,#61,#02,#f5,#02,#61,#02,#05
	db #61,#82,#e1,#05,#61,#82,#61,#82
	db #e1,#05,#61,#82,#61,#82,#61,#02
	db #f5,#03,#61,#02,#05,#61,#82,#e1
	db #05,#61,#82,#61,#82,#e1,#05,#61
	db #82,#61,#82,#61,#02,#f5,#04,#61
	db #02,#05,#61,#82,#e1,#05,#61,#82
	db #61,#82,#e1,#05,#60,#02,#f5,#02
	db #60,#02,#05,#ff,#61,#02,#f5,#01
	db #61,#02,#05,#61,#82,#e1,#05,#61
	db #82,#61,#82,#e1,#05,#61,#82,#61
	db #82,#61,#02,#f5,#02,#61,#02,#05
	db #61,#82,#e1,#05,#61,#82,#61,#82
	db #e1,#05,#61,#82,#61,#82,#61,#02
	db #f5,#03,#61,#02,#05,#61,#82,#e1
	db #05,#61,#82,#61,#82,#e1,#05,#61
	db #82,#61,#82,#61,#02,#f5,#04,#61
	db #02,#05,#61,#82,#e1,#05,#61,#82
	db #61,#82,#e1,#05,#60,#02,#f5,#02
	db #60,#02,#05,#ff,#46,#03,#19,#49
	db #03,#09,#4d,#82,#4b,#03,#0b,#49
	db #03,#09,#44,#82,#46,#83,#49,#83
	db #4d,#82,#4b,#03,#0b,#49,#03,#09
	db #44,#82,#49,#83,#4b,#83,#4d,#82
	db #4b,#03,#0b,#49,#03,#09,#44,#82
	db #48,#83,#49,#83,#4b,#82,#4d,#03
	db #0b,#4b,#03,#09,#49,#82,#ff,#49
	db #02,#19,#49,#04,#0b,#48,#06,#09
	db #49,#82,#4b,#82,#4d,#82,#4d,#04
	db #0b,#4b,#06,#09,#49,#84,#44,#8c
	db #49,#82,#4d,#82,#4b,#82,#4b,#04
	db #0b,#49,#06,#09,#46,#82,#48,#82
	db #ff,#61,#02,#f5,#01,#61,#02,#05
	db #61,#02,#b5,#01,#e1,#05,#61,#82
	db #61,#02,#b5,#02,#e1,#05,#61,#82
	db #61,#02,#b5,#03,#61,#02,#f5,#02
	db #61,#02,#b5,#04,#61,#02,#05,#e1
	db #b5,#05,#61,#02,#05,#61,#82,#e1
	db #05,#61,#02,#b5,#06,#61,#02,#05
	db #61,#02,#f5,#03,#61,#02,#b5,#07
	db #61,#02,#05,#e1,#b5,#08,#61,#02
	db #05,#61,#82,#e1,#b5,#09,#61,#02
	db #05,#61,#82,#61,#02,#f5,#04,#61
	db #02,#b5,#0a,#61,#02,#05,#e1,#05
	db #61,#02,#b5,#0b,#61,#02,#05,#e1
	db #05,#60,#02,#f5,#02,#60,#02,#05
	db #ff,#fe,#40,#ff,#b5,#10,#a2,#86
	db #3c,#ae,#06,#a2,#06,#cd,#12,#a2
	db #86,#3c,#ae,#06,#a2,#06,#b5,#10
	db #a2,#86,#3c,#ae,#06,#a2,#06,#cd
	db #12,#a2,#86,#3c,#ae,#06,#a2,#06
	db #b5,#10,#aa,#86,#4b,#b6,#06,#aa
	db #06,#cd,#12,#aa,#86,#4b,#b6,#06
	db #aa,#06,#b5,#10,#aa,#86,#4b,#b6
	db #06,#aa,#06,#cd,#12,#aa,#86,#4b
	db #b6,#06,#aa,#06,#b5,#10,#a5,#86
	db #32,#b1,#06,#a5,#06,#cd,#12,#a5
	db #86,#32,#b1,#06,#a5,#06,#b5,#10
	db #a5,#86,#32,#b1,#06,#a5,#06,#cd
	db #12,#a5,#86,#32,#b1,#06,#a5,#06
	db #b5,#10,#ac,#86,#44,#b8,#06,#ac
	db #06,#cd,#12,#ac,#86,#44,#b8,#06
	db #ac,#06,#b5,#10,#ac,#86,#44,#b8
	db #06,#ac,#06,#cd,#12,#ac,#86,#44
	db #cd,#12,#ad,#87,#40,#ff,#3a,#10
	db #19,#3d,#10,#09,#3d,#90,#3f,#8c
	db #35,#04,#0a,#ff,#3a,#10,#b9,#00
	db #36,#10,#b9,#03,#3d,#10,#b9,#06
	db #38,#0c,#b9,#09,#38,#04,#b9,#0f
	db #ff,#55,#10,#f6,#01,#55,#10,#f6
	db #02,#55,#10,#f6,#03,#55,#0c,#f6
	db #04,#54,#04,#f6,#02,#ff,#55,#02
	db #f6,#01,#55,#02,#06,#d5,#06,#55
	db #82,#55,#82,#55,#82,#d5,#06,#55
	db #82,#55,#82,#55,#02,#f6,#02,#55
	db #02,#06,#d5,#06,#55,#82,#55,#82
	db #55,#82,#d5,#06,#55,#82,#55,#82
	db #55,#02,#f6,#03,#55,#02,#06,#d5
	db #06,#55,#82,#55,#82,#55,#82,#d5
	db #06,#55,#82,#55,#82,#55,#02,#f6
	db #04,#55,#02,#06,#d5,#06,#55,#82
	db #55,#82,#55,#82,#d5,#06,#54,#02
	db #f6,#02,#54,#02,#06,#ff,#55,#10
	db #f6,#01,#55,#10,#f6,#02,#55,#10
	db #f6,#03,#55,#0c,#f6,#04,#54,#04
	db #f6,#02,#ff,#55,#02,#f5,#01,#55
	db #02,#b5,#01,#61,#02,#05,#d5,#05
	db #55,#82,#55,#82,#d5,#05,#61,#82
	db #55,#82,#55,#02,#f5,#02,#55,#02
	db #05,#61,#82,#d5,#05,#55,#82,#55
	db #82,#d5,#05,#61,#82,#55,#82,#55
	db #02,#f5,#03,#55,#02,#05,#61,#82
	db #d5,#05,#55,#82,#55,#82,#d5,#05
	db #61,#82,#55,#82,#55,#02,#f5,#04
	db #55,#02,#05,#61,#82,#d5,#05,#55
	db #82,#55,#82,#e1,#05,#54,#02,#f5
	db #02,#60,#02,#05,#ff,#55,#10,#f6
	db #01,#55,#10,#f6,#02,#55,#10,#f6
	db #03,#55,#0c,#f6,#04,#54,#04,#f6
	db #02,#ff
;
.music_info
	db "Chala (1994)(POW)()",0
	db "ST-Module",0

	read "music_end.asm"
