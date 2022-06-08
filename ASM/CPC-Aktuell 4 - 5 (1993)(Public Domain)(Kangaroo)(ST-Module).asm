; Music of CPC-Aktuell 4 - 5 (1993)(Public Domain)(Kangaroo)(ST-Module)
; Ripped by Megachur the 20/03/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPCAKT45.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2022
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
	ld a,#04
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
	dw l4906,l4933,l4960
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
	db #00,#00
	db #53,#54,#2d,#4d,#6f,#64,#75,#6c
	db #65,#2e
.l4466
	db #06,#45,#46,#45,#66,#45,#00,#00
	db #86,#45,#c6,#45,#e6,#45,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #06,#46,#46,#46,#66,#46,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #86,#46,#c6,#46,#e6,#46,#00,#00
	db #06,#47,#46,#47,#66,#47,#00,#00
	db #06,#47,#86,#47,#66,#47,#00,#00
	db #a6,#47,#e6,#47,#06,#48,#00,#00
	db #26,#48,#66,#48,#86,#48,#00,#00
	db #e6,#81,#26,#82,#46,#82,#00,#00
	db #66,#82,#a6,#82,#c6,#82,#00,#00
	db #06,#81,#e6,#82,#66,#81,#00,#00
	db #06,#83,#46,#83,#66,#81,#08,#18
	db #00,#f4,#00,#f4,#00,#f4,#00,#00
.l44e6
	db #00,#f4,#a6,#48,#c6,#48,#e6,#48
	db #00,#f4,#00,#f4,#c6,#3f,#00,#f4
	db #00,#f4,#00,#f4,#00,#f4,#00,#f4
	db #00,#f4,#00,#f4,#00,#f4,#00,#f4
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#80,#00,#40,#01,#a0,#01
	db #40,#02,#e8,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
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
	db #0e,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #38,#00,#60,#00,#b0,#00,#18,#01
	db #48,#01,#80,#01,#c8,#01,#10,#02
	db #58,#02,#b0,#02,#00,#00,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
	db #06,#03,#01,#00,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#05,#04,#04,#03,#02
	db #01,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#03,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#03,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0e,#0d,#0b
	db #0a,#0a,#0b,#0b,#0c,#0c,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#06,#05,#05,#05
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0c,#0b,#0a,#08
	db #07,#07,#08,#08,#09,#09,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#03,#02,#02,#02
	db #00,#00,#40,#00,#80,#00,#c0,#00
	db #00,#01,#40,#01,#80,#01,#c0,#01
	db #00,#02,#40,#02,#80,#02,#c0,#02
	db #00,#03,#40,#03,#80,#03,#c0,#03
	db #00,#04,#40,#04,#80,#04,#c0,#04
	db #00,#05,#40,#05,#80,#05,#c0,#05
	db #00,#06,#40,#06,#80,#06,#c0,#06
	db #00,#07,#40,#07,#80,#07,#c0,#07
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#03,#00
	db #00,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #04,#06,#07,#09,#0c,#11,#17,#1d
	db #15,#10,#0c,#09,#06,#05,#04,#04
	db #03,#03,#03,#02,#02,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #f7,#00,#fb,#f7,#00,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#f7,#00,#fb,#f7
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #00,#fc,#f7,#00,#fc,#f7,#00,#fc
	db #f7,#00,#fc,#f7,#00,#fc,#f7,#00
	db #fc,#f7,#00,#fc,#f7,#00,#fc,#f7
	db #00,#fc,#f7,#00,#fc,#f7,#00,#fc
	db #00,#fb,#f8,#00,#fb,#f8,#00,#fb
	db #f8,#00,#fb,#f8,#00,#fb,#f8,#00
	db #fb,#f8,#00,#fb,#f8,#00,#fb,#f8
	db #00,#fb,#f8,#00,#fb,#f8,#00,#fb
.l4906
	db #00,#8d,#49,#00,#90,#49,#00,#90
	db #49,#00,#d2,#49,#00,#90,#49,#00
	db #d8,#49,#00,#17,#4a,#00,#17,#4a
	db #00,#17,#4a,#00,#17,#4a,#00,#17
	db #4a,#00,#17,#4a,#00,#17,#4a,#00
.l4933 equ $ + 5
	db #17,#4a,#80,#18,#49,#00,#69,#4a
	db #00,#0a,#4b,#00,#69,#4a,#00,#ab
	db #4b,#00,#69,#4a,#00,#31,#4c,#00
	db #0a,#4b,#00,#c6,#4c,#00,#f9,#4c
	db #00,#c6,#4c,#00,#f9,#4c,#00,#28
	db #4d,#00,#28,#4d,#00,#0a,#4b,#80
.l4960 equ $ + 2
	db #45,#49,#00,#55,#4d,#00,#58,#4d
	db #00,#5b,#4d,#00,#90,#4d,#00,#96
	db #4d,#00,#f5,#4d,#00,#96,#4d,#00
	db #96,#4d,#00,#96,#4d,#00,#96,#4d
	db #00,#96,#4d,#00,#96,#4d,#00,#96
	db #4d,#00,#96,#4d,#80,#72,#49,#00
	db #40,#ff,#25,#02,#00,#25,#82,#25
	db #82,#25,#82,#25,#82,#25,#82,#25
	db #82,#25,#82,#21,#82,#21,#82,#21
	db #82,#21,#82,#21,#82,#21,#82,#21
	db #82,#21,#82,#23,#82,#23,#82,#23
	db #82,#23,#82,#23,#82,#23,#82,#23
	db #82,#23,#82,#20,#82,#20,#82,#20
	db #82,#20,#82,#20,#82,#20,#82,#20
	db #82,#20,#82,#ff,#00,#34,#33,#0c
	db #09,#ff,#25,#02,#00,#25,#82,#25
	db #82,#25,#82,#25,#82,#25,#82,#25
	db #82,#25,#82,#21,#82,#21,#82,#21
	db #82,#21,#82,#21,#82,#21,#82,#21
	db #82,#21,#82,#23,#82,#23,#82,#23
	db #82,#23,#82,#23,#82,#23,#82,#23
	db #82,#23,#82,#20,#82,#20,#82,#20
	db #82,#20,#82,#20,#82,#2e,#06,#09
	db #ff,#49,#02,#f0,#01,#25,#02,#10
	db #25,#02,#00,#25,#82,#25,#82,#25
	db #82,#25,#82,#25,#82,#49,#02,#f0
	db #02,#21,#02,#10,#21,#02,#00,#21
	db #82,#21,#82,#21,#82,#21,#82,#21
	db #82,#47,#02,#f0,#03,#23,#02,#10
	db #23,#02,#00,#23,#82,#23,#82,#23
	db #82,#23,#82,#23,#02,#00,#48,#02
	db #f0,#02,#20,#02,#10,#20,#02,#00
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #20,#82,#ff,#c4,#c0,#11,#fe,#01
	db #bd,#c0,#19,#fe,#01,#bd,#c0,#19
	db #fe,#01,#c4,#c0,#11,#fe,#01,#bd
	db #c0,#19,#fe,#01,#bd,#c0,#19,#fe
	db #01,#c4,#c0,#11,#fe,#01,#bd,#c0
	db #19,#fe,#01,#c4,#c0,#11,#fe,#01
	db #bd,#c0,#19,#fe,#01,#bd,#c0,#19
	db #fe,#01,#c4,#c0,#11,#fe,#01,#bd
	db #c0,#19,#fe,#01,#bd,#c0,#19,#fe
	db #01,#c4,#c0,#11,#fe,#01,#bd,#c0
	db #19,#fe,#01,#c4,#c0,#11,#fe,#01
	db #bd,#c0,#19,#fe,#01,#bd,#c0,#19
	db #fe,#01,#c4,#c0,#11,#fe,#01,#bd
	db #c0,#19,#fe,#01,#bd,#c0,#19,#fe
	db #01,#c4,#c0,#11,#fe,#01,#bd,#c0
	db #19,#fe,#01,#c4,#c0,#11,#fe,#01
	db #bd,#c0,#19,#fe,#01,#bd,#c0,#19
	db #fe,#01,#c4,#c0,#11,#fe,#01,#bd
	db #c0,#19,#fe,#01,#bd,#c0,#19,#fe
	db #01,#c4,#c0,#11,#fe,#01,#bd,#c0
	db #19,#fe,#01,#ff,#c4,#c0,#11,#fe
	db #01,#bd,#c0,#19,#fe,#01,#bd,#c0
	db #19,#fe,#01,#c4,#c0,#11,#fe,#01
	db #bd,#c0,#19,#fe,#01,#bd,#c0,#19
	db #fe,#01,#c4,#c0,#11,#fe,#01,#bd
	db #c0,#19,#fe,#01,#c4,#c0,#11,#fe
	db #01,#bd,#c0,#19,#fe,#01,#bd,#c0
	db #19,#fe,#01,#c4,#c0,#11,#fe,#01
	db #bd,#c0,#19,#fe,#01,#bd,#c0,#19
	db #fe,#01,#c4,#c0,#11,#fe,#01,#bd
	db #c0,#19,#fe,#01,#c4,#c0,#11,#fe
	db #01,#bd,#c0,#19,#fe,#01,#bd,#c0
	db #19,#fe,#01,#c4,#c0,#11,#fe,#01
	db #bd,#c0,#19,#fe,#01,#bd,#c0,#19
	db #fe,#01,#c4,#c0,#11,#fe,#01,#bd
	db #c0,#19,#fe,#01,#c4,#c0,#11,#fe
	db #01,#bd,#c0,#19,#fe,#01,#bd,#c0
	db #19,#fe,#01,#c4,#c0,#11,#fe,#01
	db #bd,#c0,#19,#fe,#01,#bd,#c0,#19
	db #fe,#01,#c4,#c0,#11,#fe,#01,#bd
	db #c0,#19,#fe,#01,#ff,#c4,#c0,#11
	db #fe,#01,#bd,#c0,#19,#fe,#01,#bd
	db #c0,#19,#fe,#01,#c4,#c0,#11,#fe
	db #01,#bd,#c0,#19,#fe,#01,#bd,#c0
	db #19,#fe,#01,#c4,#c0,#11,#fe,#01
	db #bd,#c0,#19,#fe,#01,#c4,#c0,#11
	db #fe,#01,#bd,#c0,#19,#fe,#01,#bd
	db #c0,#19,#fe,#01,#c4,#c0,#11,#fe
	db #01,#bd,#c0,#19,#fe,#01,#bd,#c0
	db #19,#fe,#01,#c4,#c0,#11,#fe,#01
	db #bd,#c0,#19,#fe,#01,#c4,#c0,#11
	db #fe,#01,#bd,#c0,#19,#fe,#01,#bd
	db #c0,#19,#fe,#01,#c4,#c0,#11,#fe
	db #01,#bd,#c0,#19,#fe,#01,#bd,#c0
	db #19,#fe,#01,#c4,#c0,#11,#fe,#01
	db #bd,#c0,#19,#fe,#01,#c4,#c0,#11
	db #fe,#01,#bd,#c0,#19,#fe,#01,#3f
	db #0c,#19,#ff,#c4,#c0,#11,#fe,#01
	db #bd,#c0,#19,#fe,#01,#bd,#c0,#19
	db #fe,#01,#c4,#c0,#11,#fe,#01,#bd
	db #c0,#19,#fe,#01,#bd,#c0,#19,#fe
	db #01,#c4,#c0,#11,#fe,#01,#bd,#c0
	db #19,#fe,#01,#c4,#c0,#11,#fe,#01
	db #bd,#c0,#19,#fe,#01,#bd,#c0,#19
	db #fe,#01,#c4,#c0,#11,#fe,#01,#bd
	db #c0,#19,#fe,#01,#bd,#c0,#19,#fe
	db #01,#c4,#c0,#11,#fe,#01,#bd,#c0
	db #19,#fe,#01,#c4,#c0,#11,#fe,#01
	db #bd,#c0,#19,#fe,#01,#bd,#c0,#19
	db #fe,#01,#c4,#c0,#11,#fe,#01,#bd
	db #c0,#19,#fe,#01,#bd,#c0,#19,#fe
	db #01,#c4,#c0,#11,#fe,#01,#bd,#c0
	db #19,#fe,#01,#c4,#c0,#11,#fe,#01
	db #bd,#c0,#19,#fe,#01,#bd,#c0,#19
	db #fe,#01,#c4,#c0,#11,#fe,#01,#bd
	db #c0,#19,#fe,#01,#3a,#06,#19,#ff
	db #3d,#0c,#c7,#19,#3d,#82,#3f,#02
	db #c7,#16,#40,#04,#c7,#15,#3d,#04
	db #c7,#19,#40,#02,#c7,#15,#44,#04
	db #c7,#11,#42,#0e,#c7,#13,#3b,#04
	db #c7,#07,#45,#04,#c7,#10,#44,#04
	db #c7,#11,#40,#04,#c7,#15,#42,#04
	db #c7,#13,#ff,#3d,#0c,#c7,#19,#3d
	db #82,#3f,#02,#c7,#16,#40,#04,#c7
	db #15,#3d,#04,#c7,#19,#40,#02,#c7
	db #15,#44,#04,#c7,#11,#42,#0e,#c7
	db #13,#3d,#04,#c7,#19,#40,#06,#c7
	db #15,#3f,#06,#c7,#16,#3c,#04,#c7
	db #1b,#ff,#3d,#02,#18,#40,#02,#08
	db #44,#82,#49,#82,#49,#88,#3d,#82
	db #40,#82,#44,#82,#49,#82,#49,#88
	db #3d,#82,#40,#82,#44,#82,#49,#82
	db #49,#88,#3d,#82,#40,#82,#44,#82
	db #49,#82,#49,#84,#48,#84,#ff,#00
	db #40,#ff,#00,#40,#ff,#2e,#04,#01
	db #3a,#02,#06,#3a,#82,#2e,#04,#01
	db #3a,#04,#06,#2e,#04,#01,#3a,#04
	db #06,#2e,#04,#01,#3a,#04,#06,#2e
	db #04,#01,#3a,#02,#06,#3a,#82,#2e
	db #04,#01,#3a,#04,#06,#2e,#04,#01
	db #3a,#04,#06,#2e,#04,#01,#3a,#04
	db #06,#ff,#00,#34,#3f,#0c,#0a,#ff
	db #2e,#02,#01,#50,#02,#04,#3a,#02
	db #06,#3a,#82,#2e,#02,#01,#50,#02
	db #04,#3a,#02,#06,#50,#02,#04,#2e
	db #02,#01,#50,#02,#04,#3a,#02,#06
	db #50,#02,#04,#2e,#02,#01,#50,#02
	db #04,#3a,#02,#06,#50,#02,#04,#2e
	db #02,#01,#50,#02,#04,#3a,#02,#06
	db #3a,#82,#2e,#02,#01,#50,#02,#04
	db #3a,#02,#06,#50,#02,#04,#2e,#02
	db #01,#50,#02,#04,#3a,#02,#06,#50
	db #02,#04,#2e,#02,#01,#50,#02,#04
	db #3a,#02,#06,#50,#02,#04,#ff,#2e
	db #02,#01,#49,#02,#04,#3a,#02,#06
	db #3a,#82,#2e,#02,#01,#49,#02,#04
	db #3a,#02,#06,#49,#02,#04,#2e,#02
	db #01,#49,#02,#04,#3a,#02,#06,#49
	db #02,#04,#2e,#02,#01,#49,#02,#04
	db #3a,#02,#06,#49,#02,#04,#2e,#02
	db #01,#49,#02,#04,#3a,#02,#06,#3a
	db #82,#2e,#02,#01,#49,#02,#04,#3a
	db #02,#06,#49,#02,#04,#2e,#02,#01
	db #49,#02,#04,#3a,#02,#06,#49,#02
	db #04,#2e,#02,#01,#3a,#06,#0a,#ff

;
.music_info
	db "CPC-Aktuell 4 - 5 (1993)(Public Domain)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
