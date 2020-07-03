; Music of The Crown Soundtracks - WarHawk (19xx)(Public Domain)(Crown)(ST-Module)
; Ripped by Megachur the 01/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TCSWARHA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 05
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
	ld a,#09
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
	dw l4a06,l4ac3,l4b80
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
	db #00,#00,#00,#00
.l43fe
	db #00,#00,#00,#01,#08,#00,#00,#00
.l440c equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l441a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l4428 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4436
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l4444 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4452 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l4466
	db #06,#45,#46,#45,#66,#45,#16,#0a
	db #86,#45,#c6,#45,#66,#45,#00,#00
	db #e6,#45,#26,#46,#66,#45,#08,#18
	db #06,#45,#46,#46,#66,#45,#16,#0a
	db #e6,#45,#66,#46,#66,#45,#00,#00
	db #86,#46,#c6,#46,#66,#45,#00,#00
	db #e6,#45,#e6,#46,#66,#45,#00,#00
	db #e6,#45,#06,#47,#26,#47,#00,#00
	db #e6,#45,#46,#47,#66,#47,#00,#00
	db #e6,#45,#86,#47,#66,#45,#00,#00
	db #e6,#45,#a6,#47,#c6,#47,#08,#18
	db #e6,#47,#26,#48,#66,#45,#1a,#06
	db #00,#7e,#00,#7e,#00,#7e,#00,#00
	db #00,#7e,#00,#7e,#00,#7e,#00,#00
	db #00,#7e,#00,#7e,#00,#7e,#00,#00
	db #00,#7e,#00,#7e,#00,#7e,#00,#00
.l44e6
	db #46,#48,#66,#48,#86,#48,#a6,#48
	db #c6,#48,#e6,#48,#06,#49,#26,#49
	db #46,#49,#66,#49,#86,#49,#a6,#49
	db #c6,#49,#e6,#49,#00,#7e,#00,#7e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#02,#04,#05,#06,#07,#07,#08
	db #08,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #09,#09,#09,#08,#08,#08,#07,#07
	db #07,#06,#06,#06,#05,#05,#05,#04
	db #04,#04,#03,#03,#03,#02,#02,#02
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #07,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#10,#00,#30,#00,#60,#00
	db #90,#00,#c0,#00,#f0,#00,#20,#01
	db #50,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0b
	db #0a,#00,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #09,#09,#09,#09,#09,#09,#00,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0b,#0b,#0a,#09,#0a,#09,#0a,#09
	db #0a,#00,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0b,#0b,#00,#0b,#0b,#0b,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#00,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #09,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#02,#04,#05,#07,#08,#09,#09
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #00,#00,#0c,#00,#00,#0c,#00,#00
	db #0c,#00,#00,#0c,#00,#00,#0c,#00
	db #00,#0c,#00,#00,#0c,#00,#00,#0c
	db #00,#00,#0c,#00,#00,#0c,#00,#00
	db #00,#04,#0c,#00,#04,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #f4,#f2,#e4,#ee,#e0,#ea,#dc,#e6
	db #d8,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0c,#00,#01,#0d,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#0c,#00,#0c,#00,#0c,#00
	db #0c,#00,#0c,#00,#0c,#00,#0c,#00
	db #0c,#00,#0c,#00,#0c,#00,#0c,#00
	db #0c,#00,#0c,#00,#0c,#00,#0c,#00
	db #00,#00,#0c,#0c,#00,#00,#0c,#0c
	db #00,#00,#0c,#0c,#00,#00,#0c,#0c
	db #00,#00,#0c,#0c,#00,#00,#0c,#0c
	db #00,#00,#0c,#0c,#00,#00,#0c,#0c
	db #00,#00,#03,#00,#03,#03,#00,#00
	db #03,#00,#03,#03,#00,#00,#03,#00
	db #03,#03,#00,#00,#03,#00,#03,#03
	db #00,#00,#03,#00,#03,#03,#00,#00
	db #00,#00,#04,#00,#04,#04,#00,#00
	db #04,#00,#04,#04,#00,#00,#04,#00
	db #04,#04,#00,#00,#04,#00,#04,#04
	db #00,#00,#04,#00,#04,#04,#00,#00
	db #01,#01,#03,#01,#03,#03,#01,#01
	db #03,#01,#03,#03,#01,#01,#03,#01
	db #03,#03,#01,#01,#03,#01,#03,#03
	db #01,#01,#03,#01,#03,#03,#01,#01
	db #00,#fe,#fb,#2f,#f6,#2f,#f1,#2f
	db #ec,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#fe,#fb,#0c,#f6,#0c,#f1,#0c
	db #ec,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#02,#00,#02,#00,#02,#00,#02
	db #00,#02,#00,#02,#00,#02,#00,#02
	db #00,#02,#00,#02,#00,#02,#00,#02
	db #00,#02,#00,#02,#00,#02,#00,#02
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#00,#0c,#00,#0c,#0c,#00,#00
	db #0c,#00,#0c,#0c,#00,#00,#0c,#00
	db #0c,#0c,#00,#00,#0c,#00,#0c,#0c
	db #00,#00,#0c,#00,#0c,#0c,#00,#00
.l4a06
	db #00,#3d,#4c,#00,#61,#4c,#00,#6f
	db #4c,#00,#a0,#4c,#00,#d1,#4c,#00
	db #02,#4d,#00,#6f,#4c,#00,#a0,#4c
	db #00,#d1,#4c,#00,#33,#4d,#00,#64
	db #4d,#00,#95,#4d,#00,#c6,#4d,#00
	db #f7,#4d,#00,#6f,#4c,#00,#a0,#4c
	db #00,#d1,#4c,#00,#33,#4d,#00,#28
	db #4e,#00,#59,#4e,#00,#28,#4e,#00
	db #8a,#4e,#00,#bb,#4e,#00,#02,#4d
	db #00,#ec,#4e,#00,#d1,#4c,#00,#bb
	db #4e,#00,#02,#4d,#00,#ec,#4e,#00
	db #d1,#4c,#00,#64,#4d,#00,#95,#4d
	db #00,#c6,#4d,#00,#f7,#4d,#00,#28
	db #4e,#00,#59,#4e,#00,#28,#4e,#00
	db #1d,#4f,#00,#02,#4d,#00,#4e,#4f
	db #00,#7f,#4f,#00,#b0,#4f,#00,#02
	db #4d,#00,#4e,#4f,#00,#7f,#4f,#00
	db #e1,#4f,#00,#e1,#4f,#00,#12,#50
	db #00,#43,#50,#00,#74,#50,#00,#a5
	db #50,#00,#d6,#50,#00,#07,#51,#00
	db #12,#50,#00,#43,#50,#00,#74,#50
	db #00,#a5,#50,#00,#d6,#50,#00,#07
	db #51,#00,#38,#51,#00,#69,#51,#00
.l4ac3 equ $ + 5
	db #38,#51,#80,#bd,#4a,#00,#9a,#51
	db #00,#9d,#51,#00,#a0,#51,#00,#af
	db #51,#00,#b7,#51,#00,#c5,#51,#00
	db #a0,#51,#00,#af,#51,#00,#b7,#51
	db #00,#d7,#51,#00,#e0,#51,#00,#ec
	db #51,#00,#f8,#51,#00,#ec,#51,#00
	db #a0,#51,#00,#af,#51,#00,#b7,#51
	db #00,#d7,#51,#00,#04,#52,#00,#17
	db #52,#00,#20,#52,#00,#2d,#52,#00
	db #4a,#52,#00,#53,#52,#00,#59,#52
	db #00,#5f,#52,#00,#4a,#52,#00,#53
	db #52,#00,#59,#52,#00,#6e,#52,#00
	db #e0,#51,#00,#ec,#51,#00,#f8,#51
	db #00,#ec,#51,#00,#04,#52,#00,#17
	db #52,#00,#20,#52,#00,#2d,#52,#00
	db #7d,#52,#00,#9c,#52,#00,#bb,#52
	db #00,#da,#52,#00,#7d,#52,#00,#9c
	db #52,#00,#bb,#52,#00,#f9,#52,#00
	db #f9,#52,#00,#18,#53,#00,#27,#53
	db #00,#3f,#53,#00,#50,#53,#00,#5f
	db #53,#00,#77,#53,#00,#18,#53,#00
	db #27,#53,#00,#3f,#53,#00,#50,#53
	db #00,#5f,#53,#00,#77,#53,#00,#88
	db #53,#00,#a5,#53,#00,#a8,#53,#80
.l4b80 equ $ + 2
	db #7a,#4b,#00,#ab,#53,#00,#cd,#53
	db #00,#e2,#53,#00,#07,#54,#00,#e2
	db #53,#00,#e2,#53,#00,#e2,#53,#00
	db #07,#54,#00,#e2,#53,#00,#e2,#53
	db #00,#2c,#54,#00,#3f,#54,#00,#52
	db #54,#00,#3f,#54,#00,#e2,#53,#00
	db #07,#54,#00,#e2,#53,#00,#e2,#53
	db #00,#65,#54,#00,#65,#54,#00,#65
	db #54,#00,#65,#54,#00,#07,#54,#00
	db #07,#54,#00,#07,#54,#00,#07,#54
	db #00,#07,#54,#00,#07,#54,#00,#07
	db #54,#00,#07,#54,#00,#2c,#54,#00
	db #3f,#54,#00,#52,#54,#00,#3f,#54
	db #00,#65,#54,#00,#65,#54,#00,#65
	db #54,#00,#81,#54,#00,#07,#54,#00
	db #07,#54,#00,#07,#54,#00,#07,#54
	db #00,#07,#54,#00,#07,#54,#00,#07
	db #54,#00,#9d,#54,#00,#9d,#54,#00
	db #c2,#54,#00,#f3,#54,#00,#24,#55
	db #00,#f3,#54,#00,#f3,#54,#00,#55
	db #55,#00,#c2,#54,#00,#f3,#54,#00
	db #24,#55,#00,#f3,#54,#00,#f3,#54
	db #00,#55,#55,#00,#c2,#54,#00,#c2
	db #54,#00,#24,#55,#80,#37,#4c,#cc
	db #d0,#1b,#cc,#01,#c8,#00,#c8,#01
	db #c8,#d0,#12,#c8,#01,#c3,#d0,#1b
	db #c3,#01,#3c,#02,#d0,#2d,#bc,#01
	db #bc,#00,#bc,#01,#c3,#00,#c3,#01
	db #c8,#00,#ff,#c8,#01,#c4,#00,#44
	db #02,#01,#4d,#02,#00,#4d,#0a,#01
	db #ff,#9d,#82,#28,#b5,#82,#28,#ba
	db #f7,#02,#9d,#82,#28,#b5,#b2,#07
	db #9d,#82,#28,#d9,#f6,#01,#b5,#82
	db #28,#9d,#b2,#07,#b5,#82,#28,#ba
	db #f7,#02,#9d,#82,#28,#b5,#b2,#07
	db #9d,#82,#28,#ba,#f7,#02,#b5,#82
	db #28,#ff,#a2,#b2,#01,#ba,#82,#1e
	db #ba,#f7,#02,#a2,#82,#1e,#ba,#b2
	db #01,#a2,#82,#1e,#d9,#f6,#01,#ba
	db #82,#1e,#a2,#b2,#01,#ba,#82,#1e
	db #ba,#f7,#02,#a2,#82,#1e,#ba,#b2
	db #01,#a2,#82,#1e,#ba,#f7,#02,#ba
	db #82,#1e,#ff,#a4,#b2,#04,#bc,#82
	db #1b,#ba,#f7,#02,#a4,#82,#1b,#bc
	db #b2,#04,#a4,#82,#1b,#d9,#f6,#01
	db #bc,#82,#1b,#a4,#b2,#04,#bc,#82
	db #1b,#ba,#f7,#02,#a4,#82,#1b,#bc
	db #b2,#04,#a4,#82,#1b,#ba,#f7,#02
	db #bc,#82,#1b,#ff,#9d,#b2,#07,#b5
	db #82,#28,#ba,#f7,#02,#9d,#82,#28
	db #b5,#b2,#07,#9d,#82,#28,#d9,#f6
	db #01,#b5,#82,#28,#9d,#b2,#07,#b5
	db #82,#28,#ba,#f7,#02,#9d,#82,#28
	db #b5,#b2,#07,#9d,#82,#28,#ba,#f7
	db #02,#b5,#82,#28,#ff,#9d,#b2,#07
	db #b5,#82,#28,#ba,#f7,#02,#9d,#82
	db #28,#b5,#b2,#07,#9d,#82,#28,#d9
	db #f6,#01,#b5,#82,#28,#9d,#b2,#07
	db #b5,#82,#28,#ba,#f7,#02,#9d,#82
	db #28,#b5,#b2,#07,#9d,#82,#28,#ba
	db #f7,#02,#b5,#82,#28,#ff,#9d,#82
	db #28,#b5,#82,#28,#d9,#f6,#01,#9d
	db #82,#28,#b5,#b2,#07,#9d,#82,#28
	db #bc,#f7,#0a,#a9,#86,#28,#a2,#82
	db #1e,#ba,#82,#1e,#d9,#f6,#01,#a2
	db #82,#1e,#ba,#b2,#01,#a2,#82,#1e
	db #bd,#f7,#0a,#ba,#82,#1e,#ff,#a2
	db #82,#1e,#ba,#82,#1e,#d9,#f6,#01
	db #a2,#82,#1e,#ba,#b2,#01,#a2,#82
	db #1e,#c1,#f7,#0a,#ba,#82,#1e,#9d
	db #82,#28,#b5,#82,#28,#d9,#f6,#01
	db #9d,#82,#28,#b5,#b2,#07,#9d,#82
	db #28,#c1,#f7,#0a,#b5,#82,#28,#ff
	db #9d,#82,#28,#b5,#82,#28,#d9,#f6
	db #01,#9d,#82,#28,#b5,#b2,#07,#9d
	db #82,#28,#bd,#f7,#0a,#b5,#82,#28
	db #a2,#82,#1e,#ba,#82,#1e,#d9,#f6
	db #01,#a2,#82,#1e,#ba,#b2,#01,#a2
	db #82,#1e,#bd,#f7,#0a,#ba,#82,#1e
	db #ff,#a4,#82,#1b,#bc,#82,#1b,#d9
	db #f6,#01,#a4,#82,#1b,#bc,#b2,#04
	db #a4,#82,#1b,#c1,#f7,#0a,#bc,#82
	db #1b,#9d,#82,#28,#b5,#82,#28,#d9
	db #f6,#01,#9d,#82,#28,#b5,#b2,#07
	db #9d,#82,#28,#c1,#f7,#0a,#b5,#82
	db #28,#ff,#a3,#b2,#03,#bb,#82,#1c
	db #ba,#f7,#02,#a3,#82,#1c,#bb,#b2
	db #03,#a3,#82,#1c,#ba,#f7,#02,#bb
	db #82,#1c,#a3,#b2,#03,#bb,#82,#1c
	db #ba,#f7,#02,#a3,#82,#1c,#bb,#b2
	db #03,#a3,#82,#1c,#ba,#f7,#02,#bb
	db #82,#1c,#ff,#a2,#b2,#01,#ba,#82
	db #1e,#ba,#f7,#0a,#a2,#82,#1e,#ba
	db #b2,#01,#a2,#82,#1e,#ba,#f7,#0a
	db #ba,#82,#1e,#a2,#b2,#01,#ba,#82
	db #1e,#ba,#f7,#0a,#a2,#82,#1e,#ba
	db #b2,#01,#a2,#82,#1e,#ba,#f7,#0a
	db #ba,#82,#1e,#ff,#a2,#b2,#01,#ba
	db #82,#1e,#ba,#f7,#0a,#a2,#82,#1e
	db #ba,#b2,#01,#a2,#82,#1e,#ba,#f7
	db #0a,#ba,#82,#1e,#a2,#b2,#01,#ba
	db #82,#1e,#ba,#f7,#0a,#a2,#82,#1e
	db #ba,#b2,#01,#a2,#82,#1e,#ba,#f7
	db #0a,#ba,#82,#1e,#ff,#a5,#b2,#06
	db #bd,#82,#19,#ba,#f7,#09,#a5,#82
	db #19,#bd,#b2,#06,#a5,#82,#19,#d9
	db #f6,#01,#bd,#82,#19,#a5,#b2,#06
	db #bd,#82,#19,#ba,#f7,#09,#a5,#82
	db #19,#bd,#b2,#06,#a5,#82,#19,#ba
	db #f7,#09,#bd,#82,#19,#ff,#9f,#b2
	db #0b,#b7,#82,#24,#ba,#f7,#09,#9f
	db #82,#24,#b7,#b2,#0b,#9f,#82,#24
	db #d9,#f6,#01,#b7,#82,#24,#9f,#b2
	db #0b,#b7,#82,#24,#ba,#f7,#09,#9f
	db #82,#24,#b7,#b2,#0b,#9f,#82,#24
	db #ba,#f7,#09,#b7,#82,#24,#ff,#a2
	db #82,#1e,#ba,#82,#1e,#ba,#f7,#0a
	db #a2,#82,#1e,#ba,#b2,#01,#a2,#82
	db #1e,#ba,#f7,#0a,#ba,#82,#1e,#9e
	db #82,#26,#aa,#82,#13,#ba,#f7,#0a
	db #9e,#82,#26,#aa,#b2,#0c,#9e,#82
	db #26,#ba,#f7,#0a,#aa,#82,#13,#ff
	db #a5,#b2,#06,#bd,#82,#19,#ba,#f7
	db #09,#a5,#82,#19,#bd,#b2,#06,#a5
	db #82,#19,#d9,#f6,#01,#bd,#82,#19
	db #a5,#b2,#06,#bd,#82,#19,#ba,#f7
	db #09,#a5,#82,#19,#bd,#b2,#06,#a5
	db #82,#19,#ba,#f7,#09,#bd,#82,#19
	db #ff,#a2,#b2,#01,#ba,#82,#1e,#ba
	db #f7,#02,#a2,#82,#1e,#ba,#b2,#01
	db #a2,#82,#1e,#d9,#f6,#01,#ba,#82
	db #1e,#a2,#b2,#01,#ba,#82,#1e,#ba
	db #f7,#02,#a2,#82,#1e,#ba,#b2,#01
	db #a2,#82,#1e,#ba,#f7,#02,#ba,#82
	db #1e,#ff,#a4,#b2,#04,#bc,#82,#1b
	db #ba,#f7,#02,#a4,#82,#1b,#bc,#b2
	db #04,#a4,#82,#1b,#d9,#f6,#01,#bc
	db #82,#1b,#a4,#b2,#04,#bc,#82,#1b
	db #ba,#f7,#02,#a4,#82,#1b,#bc,#b2
	db #04,#a4,#82,#1b,#ba,#f7,#02,#bc
	db #82,#1b,#ff,#9e,#b2,#09,#aa,#82
	db #13,#ba,#f7,#02,#9e,#82,#26,#b6
	db #b2,#0c,#9e,#82,#26,#ba,#f7,#02
	db #aa,#82,#13,#9e,#b2,#09,#aa,#82
	db #13,#ba,#f7,#02,#9e,#82,#26,#b6
	db #b2,#0c,#9e,#82,#26,#ba,#f7,#02
	db #aa,#82,#13,#ff,#a0,#82,#22,#ac
	db #82,#11,#ba,#f7,#02,#a0,#82,#22
	db #ac,#b2,#0e,#a0,#82,#22,#ba,#f7
	db #02,#ac,#82,#11,#a0,#82,#22,#ac
	db #82,#11,#ba,#f7,#02,#a0,#82,#22
	db #ac,#b2,#0e,#a0,#82,#22,#ba,#f7
	db #02,#ac,#82,#11,#ff,#a0,#82,#22
	db #ac,#82,#11,#ba,#f7,#02,#a0,#82
	db #22,#ac,#b2,#0e,#a0,#82,#22,#ba
	db #f7,#02,#ac,#82,#11,#9e,#82,#26
	db #aa,#82,#13,#ba,#f7,#02,#9e,#82
	db #26,#aa,#b2,#0c,#9e,#82,#26,#ba
	db #f7,#02,#aa,#82,#13,#ff,#9e,#82
	db #26,#aa,#82,#13,#ba,#f7,#02,#9e
	db #82,#26,#aa,#b2,#0c,#9e,#82,#26
	db #ba,#f7,#02,#aa,#82,#13,#9e,#82
	db #26,#aa,#82,#13,#ba,#f7,#02,#9e
	db #82,#26,#aa,#b2,#0c,#9e,#82,#26
	db #ba,#f7,#02,#aa,#82,#13,#ff,#a5
	db #82,#19,#bd,#82,#19,#ba,#f7,#09
	db #a5,#82,#19,#bd,#b2,#06,#a5,#82
	db #19,#ba,#f7,#09,#bd,#82,#19,#a5
	db #82,#19,#bd,#82,#19,#ba,#f7,#09
	db #a5,#82,#19,#bd,#b2,#06,#a5,#82
	db #19,#ba,#f7,#09,#bd,#82,#19,#ff
	db #a5,#82,#19,#bd,#82,#19,#ba,#f7
	db #09,#a5,#82,#19,#bd,#b2,#06,#a5
	db #82,#19,#ba,#f7,#09,#bd,#82,#19
	db #b3,#82,#2d,#bf,#82,#16,#ba,#f7
	db #02,#b3,#82,#2d,#bf,#82,#16,#b3
	db #82,#2d,#ba,#f7,#02,#bf,#82,#16
	db #ff,#b3,#82,#2d,#bf,#82,#16,#ba
	db #f7,#02,#b3,#82,#2d,#bf,#82,#16
	db #b3,#82,#2d,#ba,#f7,#02,#bf,#82
	db #16,#b3,#82,#2d,#bf,#82,#16,#ba
	db #f7,#02,#b3,#82,#2d,#bf,#82,#16
	db #b3,#82,#2d,#ba,#f7,#02,#bf,#82
	db #16,#ff,#a0,#82,#22,#ac,#82,#11
	db #ba,#f7,#09,#a0,#82,#22,#ac,#b2
	db #0e,#a0,#82,#22,#ba,#f7,#09,#ac
	db #82,#11,#a0,#82,#22,#ac,#82,#11
	db #ba,#f7,#09,#a0,#82,#22,#ac,#b2
	db #0e,#a0,#82,#22,#ba,#f7,#09,#ac
	db #82,#11,#ff,#a0,#82,#22,#ac,#82
	db #11,#ba,#f7,#09,#a0,#82,#22,#ac
	db #b2,#0e,#a0,#82,#22,#ba,#f7,#09
	db #ac,#82,#11,#a0,#82,#22,#ac,#82
	db #11,#ba,#f7,#09,#a0,#82,#22,#ac
	db #b2,#0e,#a0,#82,#22,#ba,#f7,#09
	db #ac,#82,#11,#ff,#00,#10,#ff,#00
	db #10,#ff,#4c,#03,#13,#4d,#03,#03
	db #48,#83,#49,#83,#48,#82,#44,#82
	db #ff,#43,#03,#03,#44,#83,#3c,#8a
	db #ff,#3d,#03,#03,#3c,#83,#46,#83
	db #43,#83,#49,#82,#48,#82,#ff,#47
	db #03,#13,#48,#08,#03,#c1,#f9,#04
	db #c4,#09,#c3,#09,#c2,#09,#c1,#09
	db #ff,#43,#03,#13,#44,#03,#03,#41
	db #8a,#ff,#3c,#03,#fa,#05,#44,#03
	db #0a,#3c,#82,#3d,#88,#ff,#3d,#03
	db #fa,#05,#46,#03,#0a,#43,#82,#44
	db #88,#ff,#45,#03,#fa,#05,#4b,#03
	db #0a,#48,#82,#49,#88,#ff,#4b,#08
	db #fa,#06,#57,#04,#ba,#01,#cb,#fa
	db #08,#cb,#bb,#00,#4b,#02,#fa,#06
	db #ff,#4b,#08,#fa,#06,#4a,#08,#fa
	db #07,#ff,#4b,#0c,#fa,#06,#4b,#02
	db #fa,#08,#4b,#02,#fa,#06,#ff,#4b
	db #08,#fa,#06,#ca,#f8,#03,#cc,#f8
	db #03,#ce,#f8,#03,#d0,#f8,#03,#d2
	db #f8,#03,#d4,#f8,#03,#d6,#f8,#03
	db #d8,#f8,#03,#ff,#4d,#08,#13,#50
	db #04,#03,#55,#84,#ff,#54,#0c,#03
	db #50,#84,#ff,#53,#0c,#03,#4f,#84
	db #ff,#52,#0b,#13,#ba,#f9,#04,#bd
	db #09,#bc,#09,#bb,#09,#ba,#09,#ff
	db #54,#0b,#13,#be,#f9,#04,#c1,#09
	db #c0,#09,#bf,#09,#be,#09,#ff,#c7
	db #1a,#c8,#0a,#c4,#0a,#c8,#0a,#c3
	db #0a,#c8,#0a,#c3,#0a,#41,#82,#c8
	db #0a,#c7,#0a,#c8,#0a,#c4,#0a,#c8
	db #0a,#c3,#0a,#c1,#0a,#ff,#c7,#0a
	db #c8,#0a,#c4,#0a,#c8,#0a,#c3,#0a
	db #c8,#0a,#c3,#0a,#41,#82,#c8,#0a
	db #c7,#0a,#c8,#0a,#c4,#0a,#c8,#0a
	db #c3,#0a,#c1,#0a,#ff,#cc,#0a,#cd
	db #0a,#c9,#0a,#cd,#0a,#c8,#0a,#cd
	db #0a,#c8,#0a,#46,#82,#cd,#0a,#cc
	db #0a,#cd,#0a,#c9,#0a,#cd,#0a,#c8
	db #0a,#c6,#0a,#ff,#cc,#0a,#cd,#0a
	db #c9,#0a,#cd,#0a,#c8,#0a,#cd,#0a
	db #c8,#0a,#46,#82,#cd,#0a,#cc,#0a
	db #cd,#0a,#c9,#0a,#cd,#0a,#c8,#0a
	db #c6,#0a,#ff,#cb,#0a,#cc,#0a,#c9
	db #0a,#cc,#0a,#c8,#0a,#cc,#0a,#c8
	db #0a,#46,#82,#cc,#0a,#cb,#0a,#cc
	db #0a,#c9,#0a,#cc,#0a,#c8,#0a,#c6
	db #0a,#ff,#50,#02,#f2,#0d,#50,#03
	db #1b,#59,#03,#0b,#58,#83,#60,#85
	db #ff,#00,#03,#c4,#f9,#04,#c7,#09
	db #c6,#09,#c5,#09,#c4,#09,#4e,#02
	db #f2,#0d,#50,#03,#1b,#58,#03,#0b
	db #ff,#57,#03,#0b,#5a,#88,#c6,#f9
	db #04,#c9,#09,#c8,#09,#c7,#09,#c6
	db #09,#ff,#49,#02,#f2,#0d,#50,#03
	db #1b,#53,#03,#0b,#52,#83,#55,#85
	db #ff,#00,#03,#c9,#f9,#04,#cc,#09
	db #cb,#09,#ca,#09,#c9,#09,#4b,#02
	db #f2,#0d,#4f,#03,#1b,#58,#03,#0b
	db #ff,#57,#03,#0b,#5e,#88,#c1,#f9
	db #04,#c4,#09,#c3,#09,#c2,#09,#c1
	db #09,#ff,#d0,#f9,#04,#d0,#f9,#04
	db #50,#82,#50,#82,#d0,#f9,#04,#50
	db #82,#d0,#f9,#04,#50,#82,#d0,#f9
	db #04,#d0,#f9,#04,#50,#82,#ff,#00
	db #10,#ff,#00,#10,#ff,#00,#01,#cd
	db #00,#cd,#01,#c9,#00,#c9,#01,#c4
	db #00,#c4,#01,#c4,#00,#44,#02,#01
	db #bd,#d0,#1b,#bd,#01,#c6,#00,#c6
	db #01,#c9,#d0,#12,#c9,#01,#ff,#c3
	db #d0,#1b,#c3,#01,#41,#02,#d0,#24
	db #41,#02,#01,#59,#08,#d0,#1d,#59
	db #02,#d1,#09,#ff,#d9,#f6,#00,#d9
	db #f6,#00,#b8,#14,#d9,#f6,#00,#b7
	db #14,#b8,#04,#d9,#f6,#00,#b5,#14
	db #d9,#f6,#00,#b5,#14,#38,#02,#04
	db #b7,#04,#b8,#04,#b3,#05,#ae,#05
	db #ff,#d9,#f6,#00,#d9,#f6,#00,#b8
	db #14,#d9,#f6,#00,#b7,#14,#b8,#04
	db #d9,#f6,#00,#b5,#14,#d9,#f6,#00
	db #b5,#14,#38,#02,#04,#b7,#04,#b8
	db #04,#b3,#05,#ae,#05,#ff,#00,#02
	db #59,#02,#f6,#00,#d9,#f6,#00,#59
	db #85,#59,#82,#d9,#f6,#00,#59,#83
	db #ff,#00,#02,#59,#02,#f6,#00,#d9
	db #f6,#00,#59,#85,#59,#82,#d9,#f6
	db #00,#59,#83,#ff,#00,#02,#59,#02
	db #f6,#00,#d9,#f6,#00,#59,#85,#59
	db #82,#d9,#f6,#00,#59,#83,#ff,#bb
	db #fa,#05,#ba,#0a,#b6,#0a,#3b,#82
	db #ba,#0a,#b6,#0a,#3b,#82,#ba,#0a
	db #b6,#0a,#3b,#82,#ba,#0a,#b6,#0a
	db #bb,#0a,#ff,#bb,#fa,#05,#ba,#0a
	db #b6,#0a,#3b,#82,#ba,#0a,#b6,#0a
	db #3b,#82,#ba,#0a,#b6,#0a,#3b,#82
	db #ba,#0a,#b6,#0a,#bb,#0a,#ff,#d6
	db #f6,#00,#b6,#14,#ba,#04,#d6,#f6
	db #00,#b8,#14,#b6,#04,#b3,#15,#ae
	db #05,#d6,#f6,#00,#b6,#14,#ba,#04
	db #d6,#f6,#00,#b8,#14,#b6,#04,#b3
	db #15,#ae,#05,#ff,#c4,#f9,#0b,#c4
	db #f9,#0b,#c4,#f9,#0c,#dc,#f2,#0d
	db #c4,#f9,#0b,#dc,#f2,#0d,#c4,#f9
	db #0c,#c4,#f9,#0b,#dc,#f2,#0d,#c4
	db #f9,#0b,#c4,#f9,#0c,#dc,#f2,#0d
	db #c4,#f9,#0b,#c4,#f9,#0b,#c4,#f9
	db #0c,#dc,#f2,#0d,#ff,#c4,#f9,#0b
	db #dc,#f2,#0d,#c4,#f9,#0c,#c4,#f9
	db #0b,#dc,#f2,#0d,#c4,#f9,#0b,#c4
	db #f9,#0c,#dc,#f2,#0d,#c4,#f9,#0b
	db #c4,#f9,#0b,#c4,#f9,#0c,#dc,#f2
	db #0d,#c4,#f9,#0b,#dc,#f2,#0d,#c4
	db #f9,#0c,#c4,#f9,#0b,#ff,#dc,#f2
	db #0d,#c4,#f9,#0b,#c4,#f9,#0c,#dc
	db #f2,#0d,#c4,#f9,#0b,#c4,#f9,#0b
	db #c4,#f9,#0c,#dc,#f2,#0d,#c4,#f9
	db #0b,#dc,#f2,#0d,#c4,#f9,#0c,#c4
	db #f9,#0b,#dc,#f2,#0d,#c4,#f9,#0b
	db #c4,#f9,#0c,#dc,#f2,#0d,#ff,#dc
	db #f2,#0d,#c4,#f9,#0b,#c4,#f9,#0c
	db #dc,#f2,#0d,#c4,#f9,#0b,#c4,#f9
	db #0b,#c4,#f9,#0c,#dc,#f2,#0d,#c4
	db #f9,#0b,#dc,#f2,#0d,#c4,#f9,#0c
	db #c4,#f9,#0b,#dc,#f2,#0d,#c4,#f9
	db #0b,#c4,#f9,#0c,#dc,#f2,#0d,#ff
;
.music_info
	db "The Crown Soundtracks - WarHawk (19xx)(Public Domain)(Crown)",0
	db "ST-Module",0

	read "music_end.asm"
