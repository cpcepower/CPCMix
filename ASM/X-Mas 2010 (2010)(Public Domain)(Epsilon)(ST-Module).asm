; Music of X-Mas 2010 (2010)(Public Domain)(Epsilon)(ST-Module)
; Ripped by Megachur the 30/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XMAS2010.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
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
	jp l402f
	jp l40b7
	jp l409b
	db #66,#04
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
	ld a,#01
	or a
	jr nz,l40e3
.l40df equ $ + 1
	ld a,#06
	ld (l40da),a
.l40e4 equ $ + 1
.l40e3
	ld a,#38
	ld hl,l4327
	cp (hl)
	jr z,l40f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l4308
.l40f3 equ $ + 1
.l40f2
	ld a,#01
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
	set 5,a
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
	db #01,#38,#00,#00
.l432a
	dw l4786,l47a7,l47c8
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
	db #00,#00,#00,#00,#b8,#48,#00,#01
	db #08,#04,#01,#30,#00,#00,#00,#df
.l440c equ $ + 2
	db #98,#47,#86,#45,#c6,#45,#e6,#45
	db #00,#00,#06,#1a,#ef,#00,#00,#00
.l441a
	db #d5,#4a,#02,#03,#09,#07,#04,#30
.l4428 equ $ + 6
	db #00,#00,#00,#e7,#b9,#47,#86,#45
	db #86,#46,#a6,#46,#18,#07,#1e,#02
.l4436 equ $ + 4
	db #3c,#00,#66,#47,#65,#4d,#04,#05
	db #0a,#09,#01,#3c,#00,#00,#00,#ef
.l4444 equ $ + 2
	db #da,#47,#c6,#46,#06,#47,#26,#47
	db #08,#18,#06,#1a,#77,#00,#00,#00
.l4452
	db #00,#00,#00,#00,#00,#81,#1c,#40
	db #ff,#00,#53,#54,#2d,#4d,#6f,#64
.l4466 equ $ + 4
	db #75,#6c,#65,#2e,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#06,#45,#46,#45
	db #66,#45,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#86,#45,#c6,#45
	db #e6,#45,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#06,#46,#46,#46
	db #66,#46,#00,#00,#86,#45,#86,#46
	db #a6,#46,#18,#07,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#c6,#46,#06,#47
	db #26,#47,#08,#18,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
.l44e6 equ $ + 4
	db #00,#3f,#00,#00,#00,#3f,#46,#47
	db #00,#3f,#00,#3f,#00,#3f,#00,#3f
	db #66,#47,#00,#3f,#00,#3f,#00,#3f
	db #00,#3f,#00,#3f,#00,#3f,#00,#3f
	db #00,#3f,#00,#3f,#00,#00,#80,#00
	db #40,#01,#a0,#01,#40,#02,#e8,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
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
	db #00,#00,#00,#00,#0e,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#38,#00,#60,#00
	db #b0,#00,#18,#01,#48,#01,#80,#01
	db #c8,#01,#10,#02,#58,#02,#b0,#02
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0c,#0b,#09,#07,#06,#03,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#05
	db #04,#04,#03,#02,#01,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#07,#06,#06
	db #06,#05,#05,#05,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#02,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#02,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#02,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#0d,#0d,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#18,#24,#00
	db #18,#24,#00,#18,#24,#00,#18,#24
	db #00,#18,#24,#00,#18,#24,#00,#18
	db #24,#00,#18,#24,#00,#18,#24,#00
	db #18,#24,#00,#18,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
.l4786 equ $ + 4
	db #0c,#18,#00,#0c,#00,#e9,#47,#00
	db #f5,#47,#00,#e9,#47,#00,#f5,#47
	db #00,#03,#48,#00,#61,#48,#00,#be
	db #48,#00,#1c,#49,#00,#79,#49,#00
.l47a7 equ $ + 5
	db #d0,#49,#80,#92,#47,#00,#31,#4a
	db #00,#54,#4a,#00,#31,#4a,#00,#97
	db #4a,#00,#73,#4a,#00,#b6,#4a,#00
	db #d6,#4a,#00,#08,#4b,#00,#30,#4b
.l47c8 equ $ + 6
	db #00,#91,#4b,#80,#b3,#47,#00,#e8
	db #4b,#00,#eb,#4b,#00,#ee,#4b,#00
	db #aa,#4c,#00,#49,#4c,#00,#0b,#4d
	db #00,#6c,#4d,#00,#0b,#4d,#00,#cd
	db #4d,#00,#2e,#4e,#80,#d4,#47,#00
	db #04,#2e,#0c,#09,#33,#8c,#30,#8c
	db #35,#88,#ff,#35,#04,#09,#32,#8c
	db #37,#8c,#33,#88,#35,#84,#2e,#88
	db #ff,#3a,#03,#04,#ba,#04,#ba,#01
	db #ae,#09,#ba,#04,#ae,#09,#ba,#06
	db #ae,#09,#ba,#01,#ae,#09,#ba,#04
	db #ba,#01,#ae,#09,#ba,#04,#ba,#01
	db #b3,#09,#ba,#04,#b3,#09,#ba,#06
	db #ba,#04,#ba,#01,#b3,#09,#ba,#04
	db #ba,#01,#b3,#09,#ba,#04,#ba,#01
	db #b0,#09,#ba,#04,#b0,#09,#ba,#06
	db #ba,#04,#ba,#01,#b0,#09,#ba,#04
	db #ba,#01,#b0,#09,#ba,#04,#ba,#01
	db #b5,#09,#ba,#04,#b5,#09,#ba,#06
	db #ba,#04,#ba,#01,#b5,#09,#ff,#3a
	db #03,#04,#ba,#04,#b2,#09,#b2,#09
	db #ba,#04,#b2,#09,#ba,#06,#b2,#09
	db #ba,#01,#b2,#09,#ba,#04,#ba,#01
	db #b2,#09,#ba,#04,#ba,#01,#b3,#09
	db #ba,#04,#b3,#09,#ba,#06,#ba,#04
	db #ba,#01,#b3,#09,#ba,#04,#ba,#01
	db #b3,#09,#ba,#04,#ba,#01,#b7,#09
	db #ba,#01,#ba,#01,#ba,#04,#ba,#01
	db #b0,#09,#ba,#04,#ba,#01,#b5,#09
	db #ba,#04,#b5,#09,#ae,#09,#ba,#04
	db #ae,#09,#ba,#06,#ba,#04,#ba,#01
	db #2e,#02,#09,#ff,#3a,#03,#04,#ba
	db #04,#ba,#01,#ae,#09,#ba,#04,#ae
	db #09,#ba,#06,#ae,#09,#ba,#01,#ae
	db #09,#ba,#04,#ba,#01,#ae,#09,#ba
	db #04,#ba,#01,#b3,#09,#ba,#04,#b3
	db #09,#ba,#06,#ba,#04,#ba,#01,#b3
	db #09,#ba,#04,#ba,#01,#b3,#09,#ba
	db #04,#ba,#01,#b0,#09,#ba,#04,#b0
	db #09,#ba,#06,#ba,#04,#ba,#01,#b0
	db #09,#ba,#04,#ba,#01,#b0,#09,#ba
	db #04,#ba,#01,#b5,#09,#ba,#04,#b5
	db #09,#ba,#06,#ba,#04,#ba,#01,#b5
	db #09,#ff,#3a,#03,#04,#ba,#04,#b2
	db #09,#b2,#09,#ba,#04,#b2,#09,#ba
	db #06,#b2,#09,#ba,#01,#b2,#09,#ba
	db #04,#ba,#01,#b2,#09,#ba,#04,#ba
	db #01,#b3,#09,#ba,#04,#b3,#09,#ba
	db #06,#ba,#04,#ba,#01,#b3,#09,#ba
	db #04,#ba,#01,#b3,#09,#ba,#04,#ba
	db #01,#b7,#09,#ba,#01,#ba,#01,#ba
	db #04,#ba,#01,#b0,#09,#ba,#04,#ba
	db #01,#b5,#09,#ba,#04,#b5,#09,#ae
	db #09,#ba,#04,#ae,#09,#ba,#06,#ba
	db #04,#ba,#01,#2e,#02,#09,#ff,#00
	db #01,#ba,#04,#ba,#01,#ba,#04,#ba
	db #01,#3a,#02,#04,#ba,#04,#ba,#06
	db #ba,#04,#ba,#01,#3a,#02,#04,#3a
	db #02,#01,#ba,#04,#ba,#01,#3a,#02
	db #04,#ba,#04,#ba,#06,#ba,#04,#ba
	db #01,#3a,#02,#04,#3a,#02,#01,#ba
	db #04,#ba,#01,#3a,#02,#04,#ba,#04
	db #ba,#06,#ba,#04,#ba,#01,#3a,#02
	db #04,#3a,#02,#01,#ba,#04,#ba,#01
	db #3a,#02,#04,#ba,#04,#ba,#06,#ba
	db #04,#ba,#01,#ba,#04,#ff,#b5,#19
	db #b9,#09,#bc,#09,#b9,#09,#b2,#09
	db #b6,#09,#b9,#09,#b6,#09,#b2,#09
	db #b6,#09,#b9,#09,#b6,#09,#b2,#09
	db #b6,#09,#b9,#09,#b6,#09,#ab,#09
	db #ae,#09,#b7,#09,#ab,#09,#ae,#09
	db #b7,#09,#ab,#09,#ae,#09,#b7,#09
	db #ab,#09,#ae,#09,#b7,#09,#b3,#09
	db #b7,#09,#b3,#09,#b7,#09,#ba,#09
	db #b7,#09,#b3,#09,#b7,#09,#b5,#09
	db #b9,#09,#bc,#09,#b9,#09,#ba,#09
	db #be,#09,#c1,#09,#be,#09,#ba,#09
	db #be,#09,#c1,#09,#be,#09,#ff,#35
	db #04,#17,#3a,#04,#07,#3a,#82,#3c
	db #82,#3a,#82,#39,#82,#37,#84,#37
	db #84,#37,#84,#3c,#84,#3c,#82,#3e
	db #82,#3c,#82,#3a,#82,#39,#84,#39
	db #84,#ff,#39,#04,#17,#3e,#04,#07
	db #3e,#82,#3f,#82,#3e,#82,#3c,#82
	db #3a,#84,#3a,#84,#35,#82,#35,#82
	db #37,#84,#3a,#84,#39,#84,#3a,#88
	db #ff,#35,#04,#f7,#06,#3a,#04,#07
	db #3a,#82,#3c,#82,#3a,#82,#39,#82
	db #37,#84,#37,#84,#37,#84,#3c,#84
	db #3c,#82,#3e,#82,#3c,#82,#3a,#82
	db #39,#84,#39,#84,#ff,#39,#04,#17
	db #3e,#04,#07,#3e,#82,#3f,#82,#3e
	db #82,#3c,#82,#3a,#84,#3a,#84,#35
	db #82,#35,#82,#37,#84,#3a,#84,#39
	db #84,#3a,#88,#ff,#39,#04,#f7,#06
	db #3e,#04,#07,#3e,#82,#3f,#82,#3e
	db #82,#3c,#82,#3a,#84,#3a,#84,#35
	db #82,#35,#82,#37,#84,#3a,#84,#39
	db #84,#3a,#88,#ff,#35,#04,#f7,#01
	db #3a,#02,#07,#39,#82,#3a,#82,#3c
	db #82,#3a,#82,#39,#82,#37,#82,#35
	db #82,#33,#82,#32,#82,#30,#82,#37
	db #82,#3c,#82,#3b,#82,#3c,#82,#3e
	db #82,#3c,#82,#3a,#82,#39,#82,#37
	db #82,#35,#82,#34,#82,#ff,#33,#04
	db #f7,#01,#3e,#04,#07,#3e,#82,#3f
	db #82,#3e,#82,#3c,#82,#3a,#82,#39
	db #82,#37,#82,#35,#82,#33,#82,#32
	db #82,#33,#84,#3a,#84,#39,#84,#3a
	db #82,#35,#82,#2e,#84,#ff,#c6,#19
	db #ca,#09,#cd,#09,#ca,#09,#ba,#09
	db #be,#09,#c1,#09,#be,#09,#ba,#09
	db #be,#09,#c1,#09,#be,#09,#ba,#09
	db #be,#09,#c1,#09,#be,#09,#bf,#09
	db #c3,#09,#c6,#09,#c3,#09,#bf,#09
	db #c3,#09,#c6,#09,#c3,#09,#bf,#09
	db #c3,#09,#c6,#09,#c3,#09,#bc,#09
	db #c0,#09,#c3,#09,#c0,#09,#bc,#09
	db #c0,#09,#c3,#09,#c0,#09,#bc,#09
	db #c0,#09,#c3,#09,#c0,#09,#c1,#09
	db #c5,#09,#c8,#09,#c5,#09,#c1,#09
	db #c5,#09,#c8,#09,#c5,#09,#ff,#00
	db #01,#ba,#04,#ba,#01,#ba,#04,#ba
	db #01,#3a,#02,#04,#ba,#04,#ba,#06
	db #ba,#04,#ba,#01,#3a,#02,#04,#3a
	db #02,#01,#ba,#04,#ba,#01,#3a,#02
	db #04,#ba,#04,#ba,#06,#ba,#04,#ba
	db #01,#3a,#02,#04,#3a,#02,#01,#ba
	db #04,#ba,#01,#3a,#02,#04,#ba,#04
	db #ba,#06,#ba,#04,#ba,#01,#3a,#02
	db #04,#3a,#02,#01,#ba,#04,#ba,#01
	db #3a,#02,#04,#ba,#04,#ba,#06,#ba
	db #04,#ba,#01,#ba,#04,#ff,#00,#30
	db #ff,#00,#30,#ff,#00,#04,#ba,#09
	db #be,#09,#c1,#09,#be,#09,#ba,#09
	db #be,#09,#c1,#09,#be,#09,#ba,#09
	db #be,#09,#c1,#09,#be,#09,#bf,#09
	db #c3,#09,#c6,#09,#c3,#09,#bf,#09
	db #c3,#09,#c6,#09,#c3,#09,#bf,#09
	db #c3,#09,#c6,#09,#c3,#09,#bc,#09
	db #c0,#09,#c3,#09,#c0,#09,#bc,#09
	db #c0,#09,#c3,#09,#c0,#09,#bc,#09
	db #c0,#09,#c3,#09,#c0,#09,#c1,#09
	db #c5,#09,#c8,#09,#c5,#09,#c1,#09
	db #c5,#09,#c8,#09,#c5,#09,#ff,#c6
	db #09,#ca,#09,#cd,#09,#ca,#09,#ba
	db #09,#be,#09,#c1,#09,#be,#09,#ba
	db #09,#be,#09,#c1,#09,#be,#09,#ba
	db #09,#be,#09,#c1,#09,#be,#09,#bf
	db #09,#c3,#09,#c6,#09,#c3,#09,#bf
	db #09,#c3,#09,#c6,#09,#c3,#09,#bf
	db #09,#c3,#09,#c6,#09,#c3,#09,#bc
	db #09,#c0,#09,#c3,#09,#c0,#09,#bc
	db #09,#c0,#09,#c3,#09,#c0,#09,#bc
	db #09,#c0,#09,#c3,#09,#c0,#09,#c1
	db #09,#c5,#09,#c8,#09,#c5,#09,#c1
	db #09,#c5,#09,#c8,#09,#c5,#09,#ff
	db #c1,#09,#c5,#09,#c8,#09,#c5,#09
	db #be,#09,#c2,#09,#c5,#09,#c2,#09
	db #be,#09,#c2,#09,#c5,#09,#c2,#09
	db #be,#09,#c2,#09,#c5,#09,#c2,#09
	db #b7,#09,#ba,#09,#c3,#09,#b7,#09
	db #ba,#09,#c3,#09,#b7,#09,#ba,#09
	db #c3,#09,#b7,#09,#ba,#09,#c3,#09
	db #bf,#09,#c3,#09,#bf,#09,#c3,#09
	db #c6,#09,#c3,#09,#bf,#09,#c3,#09
	db #c1,#09,#c5,#09,#c8,#09,#c5,#09
	db #c6,#09,#ca,#09,#cd,#09,#ca,#09
	db #c6,#09,#ca,#09,#cd,#09,#ca,#09
	db #ff,#c1,#09,#c5,#09,#c8,#09,#c5
	db #09,#be,#09,#c2,#09,#c5,#09,#c2
	db #09,#be,#09,#c2,#09,#c5,#09,#c2
	db #09,#be,#09,#c2,#09,#c5,#09,#c2
	db #09,#b7,#09,#ba,#09,#c3,#09,#b7
	db #09,#ba,#09,#c3,#09,#b7,#09,#ba
	db #09,#c3,#09,#b7,#09,#ba,#09,#c3
	db #09,#bf,#09,#c3,#09,#bf,#09,#c3
	db #09,#c6,#09,#c3,#09,#bf,#09,#c3
	db #09,#c1,#09,#c5,#09,#c8,#09,#c5
	db #09,#c6,#09,#ca,#09,#cd,#09,#ca
	db #09,#c6,#09,#ca,#09,#cd,#09,#ca
	db #09,#ff,#c6,#09,#ca,#09,#cd,#09
	db #ca,#09,#ba,#09,#be,#09,#c1,#09
	db #be,#09,#ba,#09,#be,#09,#c1,#09
	db #be,#09,#ba,#09,#be,#09,#c1,#09
	db #be,#09,#bf,#09,#c3,#09,#c6,#09
	db #c3,#09,#bf,#09,#c3,#09,#c6,#09
	db #c3,#09,#bf,#09,#c3,#09,#c6,#09
	db #c3,#09,#bc,#09,#c0,#09,#c3,#09
	db #c0,#09,#bc,#09,#c0,#09,#c3,#09
	db #c0,#09,#bc,#09,#c0,#09,#c3,#09
	db #c0,#09,#c1,#09,#c5,#09,#c8,#09
	db #c5,#09,#c1,#09,#c5,#09,#c8,#09
	db #c5,#09,#ff,#c6,#19,#ca,#09,#cd
	db #09,#ca,#09,#ba,#09,#be,#09,#c1
	db #09,#be,#09,#ba,#09,#be,#09,#c1
	db #09,#be,#09,#ba,#09,#be,#09,#c1
	db #09,#be,#09,#bf,#09,#c3,#09,#c6
	db #09,#c3,#09,#bf,#09,#c3,#09,#c6
	db #09,#c3,#09,#bf,#09,#c3,#09,#c6
	db #09,#c3,#09,#bc,#09,#c0,#09,#c3
	db #09,#c0,#09,#bc,#09,#c0,#09,#c3
	db #09,#c0,#09,#bc,#09,#c0,#09,#c3
	db #09,#c0,#09,#c1,#09,#c5,#09,#c8
	db #09,#c5,#09,#c1,#09,#c5,#09,#c8
	db #09,#c5,#09,#ff,#c1,#19,#c5,#09
	db #c8,#09,#c5,#09,#be,#09,#c2,#09
	db #c5,#09,#c2,#09,#be,#09,#c2,#09
	db #c5,#09,#c2,#09,#be,#09,#c2,#09
	db #c5,#09,#c2,#09,#b7,#09,#ba,#09
	db #c3,#09,#b7,#09,#ba,#09,#c3,#09
	db #b7,#09,#ba,#09,#c3,#09,#b7,#09
	db #ba,#09,#c3,#09,#bf,#09,#c3,#09
	db #bf,#09,#c3,#09,#c6,#09,#c3,#09
	db #bf,#09,#c3,#09,#c1,#09,#c5,#09
	db #c8,#09,#c5,#09,#c6,#09,#ca,#09
	db #cd,#09,#ca,#09,#c6,#09,#ca,#09
	db #cd,#09,#ca,#09,#ff,#00,#02,#07
	db #39,#82,#fd,#09,#7a,#4a,#11,#82
	db #35,#82,#33,#82,#32,#82,#30,#82
	db #37,#82,#3c,#82,#3b,#82,#3c,#82
	db #3e,#fd,#0b,#e0,#4a,#06,#34,#82
	db #ff,#33,#04,#f7,#01,#fd,#08,#ba
	db #4a,#0f,#e0,#4a,#00,#33,#06,#ce
	db #4a,#0c,#82,#35,#82,#2e,#84,#ff
	db #c6,#19,#ca,#09,#cd,#09,#ca,#fd
	db #08,#27,#4a,#11,#1f,#4a,#06,#bf
	db #09,#c3,#09,#c6,#09,#c3,#fd,#07
	db #4f,#4b,#00,#c3,#fd,#09,#4f,#4b
	db #06,#bc,#09,#c0,#09,#c3,#09,#c0
	db #07,#67,#4b,#00,#c0,#fd,#09,#67
	db #4b,#06,#c1,#09,#c5,#09,#c8,#09
	db #c5,#07,#7f,#4b,#00,#c5,#59,#77
	db #49,#07,#00,#30,#ff,#00,#30,#ff
	db #00,#04,#59,#38,#44,#01,#c6,#09
	db #5f,#32,#4b,#fd,#08,#a1,#4c,#06
	db #be,#09,#c2,#09,#c5,#09,#c2,#fd
	db #07,#b1,#4c,#00,#c2,#fd,#09,#b1
	db #4c,#0a,#b7,#09,#ba,#09,#c3,#09
	db #b7,#09,#ba,#09,#c3,#fd,#06,#c9
	db #4c,#07,#c9,#4c,#00,#bf,#0e,#6e
	db #4c,#fd,#09,#a0,#4c,#08,#49,#4c
	db #07,#49,#4c,#59,#a8,#4c,#08,#f9
	db #4c,#0a,#47,#4c,#5a,#f0,#4b,#00
	db #19,#fd,#60,#4b,#4c,#00,#19,#5f
	db #0d,#4d,#00,#00,#ff
;
.music_info
	db "X-Mas 2010 (2010)(Public Domain)(Epsilon)",0
	db "ST-Module",0

	read "music_end.asm"