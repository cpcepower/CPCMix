; Music of The Addams Fanz FreeDisc - Intro (1993)(TAF Production)()(ST-Module)
; Ripped by Megachur the 20/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TAFFRINT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
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
	dw l4a26,l4a47,l4a68
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
	db #66,#45,#00,#00,#86,#45,#c6,#45
	db #e6,#45,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#06,#46,#46,#46
	db #66,#46,#00,#00,#86,#46,#c6,#46
	db #e6,#46,#19,#04,#06,#47,#46,#47
	db #e6,#46,#00,#00,#66,#47,#a6,#47
	db #e6,#46,#00,#00,#06,#47,#c6,#47
	db #e6,#46,#08,#18,#06,#47,#e6,#47
	db #e6,#46,#08,#18,#00,#3f,#26,#c5
	db #66,#c4,#08,#18,#46,#c5,#86,#c5
	db #66,#c4,#18,#08,#06,#48,#46,#48
	db #e6,#46,#00,#00,#00,#fc,#00,#fc
	db #00,#fc,#00,#00,#00,#fc,#00,#fc
	db #00,#fc,#00,#00,#06,#85,#46,#85
	db #66,#85,#00,#00,#86,#85,#c6,#85
.l44e6 equ $ + 4
	db #e6,#85,#00,#00,#06,#86,#66,#48
	db #86,#48,#a6,#48,#c6,#48,#e6,#48
	db #06,#49,#00,#fc,#26,#49,#46,#49
	db #66,#49,#86,#49,#a6,#49,#c6,#49
	db #e6,#49,#06,#4a,#ff,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#2f,#00
	db #5e,#00,#8d,#00,#bc,#00,#eb,#00
	db #1a,#01,#49,#01,#78,#01,#a7,#01
	db #d6,#01,#05,#02,#34,#02,#63,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#06,#0c,#12
	db #18,#1e,#04,#0a,#10,#16,#1c,#02
	db #08,#0e,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#05,#00,#06,#00
	db #08,#00,#0a,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#09,#05,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#04,#03,#02,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #04,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0e,#0c,#0a,#07
	db #05,#03,#0b,#0a,#09,#08,#07,#06
	db #05,#03,#04,#05,#06,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#00,#00,#0a,#0d,#0f,#0e
	db #0c,#0a,#08,#06,#06,#07,#08,#09
	db #09,#09,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #03,#02,#02,#02,#0e,#0d,#0c,#0b
	db #0a,#09,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0e,#0f,#0d,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#00,#00,#fd,#ff
	db #00,#00,#03,#00,#00,#00,#fd,#ff
	db #00,#00,#03,#00,#00,#00,#fd,#ff
	db #00,#00,#03,#00,#00,#00,#fd,#ff
	db #00,#00,#03,#00,#00,#00,#fd,#ff
	db #00,#00,#03,#00,#00,#00,#fd,#ff
	db #00,#00,#03,#00,#00,#00,#fd,#ff
	db #00,#00,#03,#00,#00,#00,#fd,#ff
	db #00,#00,#03,#00,#0f,#0c,#09,#06
	db #03,#01,#03,#05,#07,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#f8,#fd,#00,#f8
	db #fd,#00,#f8,#fd,#00,#f8,#fd,#00
	db #f8,#fd,#00,#f8,#fd,#00,#f8,#fd
	db #00,#f8,#fd,#00,#f8,#fd,#00,#f8
	db #fd,#00,#f8,#fd,#f9,#fd,#00,#f9
	db #fd,#00,#f9,#fd,#00,#f9,#fd,#00
	db #f9,#fd,#00,#f9,#fd,#00,#f9,#fd
	db #00,#f9,#fd,#00,#f9,#fd,#00,#f9
	db #fd,#00,#f9,#fd,#f7,#fc,#00,#f7
	db #fc,#00,#f7,#fc,#00,#f7,#fc,#00
	db #f7,#fc,#00,#f7,#fc,#00,#f7,#fc
	db #00,#f7,#fc,#00,#f7,#fc,#00,#f7
	db #fc,#00,#f7,#fc,#f9,#fe,#00,#f9
	db #fe,#00,#f9,#fe,#00,#f9,#fe,#00
	db #f9,#fe,#00,#f9,#fe,#00,#f9,#fe
	db #00,#f9,#fe,#00,#f9,#fe,#00,#f9
	db #fe,#00,#f9,#fe,#f2,#f7,#00,#f2
	db #f7,#00,#f2,#f7,#00,#f2,#f7,#00
	db #f2,#f7,#00,#f2,#f7,#00,#f2,#f7
	db #00,#f2,#f7,#00,#f2,#f7,#00,#f2
	db #f7,#00,#f2,#f7,#f4,#f9,#00,#f4
	db #f9,#00,#f4,#f9,#00,#f4,#f9,#00
	db #f4,#f9,#00,#f4,#f9,#00,#f4,#f9
	db #00,#f4,#f9,#00,#f4,#f9,#00,#f4
	db #f9,#00,#f4,#f9,#f8,#fb,#00,#f8
	db #fb,#00,#f8,#fb,#00,#f8,#fb,#00
	db #f8,#fb,#00,#f8,#fb,#00,#f8,#fb
	db #00,#f8,#fb,#00,#f8,#fb,#00,#f8
	db #fb,#00,#f8,#fb,#f6,#fb,#00,#f6
	db #fb,#00,#f6,#fb,#00,#f6,#fb,#00
	db #f6,#fb,#00,#f6,#fb,#00,#f6,#fb
	db #00,#f6,#fb,#00,#f6,#fb,#00,#f6
	db #fb,#00,#f6,#fb,#f9,#fc,#00,#f9
	db #fc,#00,#f9,#fc,#00,#f9,#fc,#00
	db #f9,#fc,#00,#f9,#fc,#00,#f9,#fc
	db #00,#f9,#fc,#00,#f9,#fc,#00,#f9
	db #fc,#00,#f9,#fc,#f7,#fb,#00,#f7
	db #fb,#00,#f7,#fb,#00,#f7,#fb,#00
	db #f7,#fb,#00,#f7,#fb,#00,#f7,#fb
	db #00,#f7,#fb,#00,#f7,#fb,#00,#f7
	db #fb,#00,#f7,#fb,#f5,#f9,#00,#f5
	db #f9,#00,#f5,#f9,#00,#f5,#f9,#00
	db #f5,#f9,#00,#f5,#f9,#00,#f5,#f9
	db #00,#f5,#f9,#00,#f5,#f9,#00,#f5
	db #f9,#00,#f5,#f9,#f5,#fa,#00,#f5
	db #fa,#00,#f5,#fa,#00,#f5,#fa,#00
	db #f5,#fa,#00,#f5,#fa,#00,#f5,#fa
	db #00,#f5,#fa,#00,#f5,#fa,#00,#f5
	db #fa,#00,#f5,#fa,#00,#0c,#04,#10
	db #07,#13,#0c,#18,#00,#0c,#04,#10
	db #07,#13,#0c,#18,#00,#0c,#04,#10
	db #07,#13,#0c,#18,#00,#0c,#04,#10
	db #07,#13,#0c,#18,#0c,#00,#f4,#00
	db #f4,#00,#f4,#00,#f4,#00,#f4,#00
	db #f4,#00,#f4,#00,#f4,#00,#f4,#00
	db #f4,#00,#f4,#00,#f4,#00,#f4,#00
.l4a26 equ $ + 4
	db #f4,#00,#f4,#00,#00,#0a,#4b,#00
	db #0a,#4b,#00,#0a,#4b,#00,#0a,#4b
	db #00,#89,#4a,#00,#0a,#4b,#00,#89
	db #4a,#00,#89,#4a,#00,#8b,#4b,#00
.l4a47 equ $ + 5
	db #8b,#4b,#80,#26,#4a,#00,#d1,#4f
	db #00,#d1,#4f,#00,#92,#50,#00,#53
	db #51,#00,#0c,#4c,#00,#cd,#4c,#00
	db #8e,#4d,#00,#4f,#4e,#00,#10,#4f
.l4a68 equ $ + 6
	db #00,#10,#4f,#80,#47,#4a,#00,#9f
	db #53,#00,#9f,#53,#00,#f5,#53,#00
	db #39,#54,#00,#14,#52,#00,#89,#52
	db #00,#fe,#52,#00,#24,#53,#00,#5a
	db #53,#00,#5a,#53,#80,#68,#4a,#ba
	db #10,#ec,#03,#ec,#03,#ec,#03,#ba
	db #01,#ec,#03,#ec,#03,#ec,#03,#ba
	db #00,#ec,#03,#ec,#03,#ec,#03,#ba
	db #01,#ec,#03,#ec,#03,#ba,#00,#ba
	db #00,#ec,#03,#ec,#03,#ec,#03,#ba
	db #01,#ec,#03,#ec,#03,#ec,#03,#ba
	db #00,#ec,#03,#ec,#03,#ec,#03,#ba
	db #01,#ec,#03,#ec,#03,#ba,#00,#ba
	db #00,#ec,#03,#ec,#03,#ec,#03,#ba
	db #01,#ec,#03,#ec,#03,#ec,#03,#ba
	db #00,#ec,#03,#ec,#03,#ec,#03,#ba
	db #01,#ec,#03,#ec,#03,#ba,#00,#ba
	db #00,#ec,#03,#ec,#03,#ec,#03,#ba
	db #01,#ec,#03,#ec,#03,#ec,#03,#ba
	db #00,#ba,#01,#ec,#03,#ba,#00,#ba
	db #01,#ba,#00,#ba,#01,#ba,#01,#ff
	db #ba,#10,#ec,#03,#ec,#03,#ec,#03
	db #ba,#01,#ec,#03,#ec,#03,#ec,#03
	db #ba,#00,#ec,#03,#ec,#03,#ec,#03
	db #ba,#01,#ec,#03,#ec,#03,#ba,#00
	db #ba,#00,#ec,#03,#ec,#03,#ec,#03
	db #ba,#01,#ec,#03,#ec,#03,#ec,#03
	db #ba,#00,#ec,#03,#ec,#03,#ec,#03
	db #ba,#01,#ec,#03,#ec,#03,#ba,#00
	db #ba,#00,#ec,#03,#ec,#03,#ec,#03
	db #ba,#01,#ec,#03,#ec,#03,#ec,#03
	db #ba,#00,#ec,#03,#ec,#03,#ec,#03
	db #ba,#01,#ec,#03,#ec,#03,#ba,#00
	db #ba,#00,#ec,#03,#ec,#03,#ec,#03
	db #ba,#01,#ec,#03,#ec,#03,#ec,#03
	db #ba,#00,#ba,#01,#ec,#03,#ba,#00
	db #ba,#01,#ba,#00,#ba,#01,#ba,#01
	db #ff,#ba,#00,#ec,#03,#ec,#03,#ec
	db #03,#ba,#01,#ec,#03,#ec,#03,#ba
	db #00,#ec,#03,#ec,#03,#ba,#00,#ec
	db #03,#ba,#01,#ec,#03,#ec,#03,#ba
	db #00,#ba,#00,#ec,#03,#ec,#03,#ec
	db #03,#ba,#01,#ec,#03,#ec,#03,#ba
	db #00,#ec,#03,#ec,#03,#ba,#00,#ec
	db #03,#ba,#01,#ec,#03,#ec,#03,#ba
	db #00,#ba,#00,#ec,#03,#ec,#03,#ec
	db #03,#ba,#01,#ec,#03,#ec,#03,#ba
	db #00,#ec,#03,#ec,#03,#ba,#00,#ec
	db #03,#ba,#01,#ec,#03,#ec,#03,#ba
	db #00,#ba,#00,#ec,#03,#ec,#03,#ec
	db #03,#ba,#01,#ec,#03,#ec,#03,#ba
	db #00,#ec,#03,#ec,#03,#ba,#01,#ba
	db #00,#ec,#03,#ba,#00,#ba,#01,#ba
	db #01,#ff,#a1,#85,#3f,#a1,#85,#3f
	db #ad,#85,#3f,#ad,#85,#3f,#a1,#85
	db #3f,#a1,#85,#3f,#ad,#85,#3f,#ad
	db #85,#3f,#9d,#85,#4f,#9d,#85,#4f
	db #a9,#85,#4f,#a9,#85,#4f,#9d,#85
	db #4f,#9d,#85,#4f,#a9,#85,#4f,#a9
	db #85,#4f,#9f,#85,#47,#9f,#85,#47
	db #ab,#85,#47,#ab,#85,#47,#9f,#85
	db #47,#9f,#85,#47,#ab,#85,#47,#ab
	db #85,#47,#9c,#85,#54,#9c,#85,#54
	db #a8,#85,#54,#a8,#85,#54,#9c,#85
	db #54,#9c,#85,#54,#a8,#85,#54,#a8
	db #85,#54,#a1,#85,#3f,#a1,#85,#3f
	db #ad,#85,#3f,#ad,#85,#3f,#a1,#85
	db #3f,#a1,#85,#3f,#ad,#85,#3f,#ad
	db #85,#3f,#9d,#85,#4f,#9d,#85,#4f
	db #a9,#85,#4f,#a9,#85,#4f,#9d,#85
	db #4f,#9d,#85,#4f,#a9,#85,#4f,#a9
	db #85,#4f,#9f,#85,#47,#9f,#85,#47
	db #ab,#85,#47,#ab,#85,#47,#9f,#85
	db #47,#9f,#85,#47,#ab,#85,#47,#ab
	db #85,#47,#9f,#85,#47,#9f,#85,#47
	db #ab,#85,#47,#ab,#85,#47,#9f,#85
	db #47,#9f,#85,#47,#ab,#85,#47,#ab
	db #85,#47,#ff,#9a,#85,#2f,#9a,#85
	db #2f,#a6,#85,#2f,#a6,#85,#2f,#9a
	db #85,#2f,#9a,#85,#2f,#a6,#85,#2f
	db #a6,#85,#2f,#96,#85,#3c,#96,#85
	db #3c,#a2,#85,#3c,#a2,#85,#3c,#96
	db #85,#3c,#96,#85,#3c,#a2,#85,#3c
	db #a2,#85,#3c,#98,#85,#36,#98,#85
	db #36,#a4,#85,#36,#a4,#85,#36,#98
	db #85,#36,#98,#85,#36,#a4,#85,#36
	db #a4,#85,#36,#a1,#85,#3f,#a1,#85
	db #3f,#ad,#85,#3f,#ad,#85,#3f,#a1
	db #85,#3f,#a1,#85,#3f,#ad,#85,#3f
	db #ad,#85,#3f,#9a,#85,#2f,#9a,#85
	db #2f,#a6,#85,#2f,#a6,#85,#2f,#9a
	db #85,#2f,#9a,#85,#2f,#a6,#85,#2f
	db #a6,#85,#2f,#96,#85,#3c,#96,#85
	db #3c,#a2,#85,#3c,#a2,#85,#3c,#96
	db #85,#3c,#96,#85,#3c,#a2,#85,#3c
	db #a2,#85,#3c,#98,#85,#36,#98,#85
	db #36,#a4,#85,#36,#a4,#85,#36,#98
	db #85,#36,#98,#85,#36,#a4,#85,#36
	db #a4,#85,#36,#98,#85,#36,#98,#85
	db #36,#a4,#85,#36,#a4,#85,#36,#98
	db #85,#36,#98,#85,#36,#a4,#85,#36
	db #a4,#85,#36,#ff,#9d,#85,#28,#9d
	db #85,#28,#a9,#c5,#05,#a9,#85,#28
	db #9d,#c5,#05,#9d,#85,#28,#a9,#c5
	db #05,#a9,#85,#28,#9f,#c5,#09,#9f
	db #85,#24,#ab,#c5,#09,#ab,#85,#24
	db #9f,#c5,#09,#9f,#85,#24,#ab,#c5
	db #09,#ab,#85,#24,#a1,#c5,#09,#a1
	db #c5,#08,#ad,#85,#20,#ad,#c5,#08
	db #a1,#c5,#08,#a1,#c5,#08,#ad,#c5
	db #08,#ad,#c5,#08,#a1,#c5,#08,#a1
	db #c5,#08,#ad,#c5,#08,#ad,#c5,#08
	db #a1,#c5,#08,#a1,#c5,#08,#ad,#c5
	db #08,#ad,#c5,#08,#9d,#85,#28,#9d
	db #85,#28,#a9,#c5,#05,#a9,#85,#28
	db #9d,#c5,#05,#9d,#85,#28,#a9,#c5
	db #05,#a9,#85,#28,#9f,#c5,#09,#9f
	db #85,#24,#ab,#c5,#09,#ab,#85,#24
	db #9f,#c5,#09,#9f,#c5,#08,#ab,#85
	db #24,#ab,#c5,#08,#a1,#c5,#08,#a1
	db #c5,#08,#ad,#c5,#08,#ad,#c5,#08
	db #a1,#c5,#08,#a1,#c5,#08,#ad,#c5
	db #08,#ad,#c5,#04,#a1,#c5,#09,#a1
	db #c5,#08,#ad,#c5,#04,#ad,#c5,#09
	db #a1,#c5,#08,#a1,#c5,#07,#ad,#c5
	db #04,#ad,#c5,#02,#ff,#9d,#85,#28
	db #9d,#85,#28,#a9,#c5,#05,#a9,#85
	db #28,#9d,#c5,#05,#9d,#85,#28,#a9
	db #c5,#05,#a9,#85,#28,#9f,#c5,#09
	db #9f,#85,#24,#ab,#c5,#09,#ab,#85
	db #24,#9f,#c5,#09,#9f,#85,#24,#ab
	db #c5,#09,#ab,#85,#24,#a1,#c5,#09
	db #a1,#c5,#08,#ad,#85,#20,#ad,#c5
	db #08,#a1,#c5,#08,#a1,#c5,#08,#ad
	db #c5,#08,#ad,#c5,#08,#a1,#c5,#08
	db #a1,#c5,#08,#ad,#c5,#08,#ad,#c5
	db #08,#a1,#c5,#08,#a1,#c5,#08,#ad
	db #c5,#08,#ad,#c5,#08,#9d,#85,#28
	db #9d,#85,#28,#a9,#c5,#05,#a9,#85
	db #28,#9d,#c5,#05,#9d,#85,#28,#a9
	db #c5,#05,#a9,#85,#28,#9f,#c5,#09
	db #9f,#85,#24,#ab,#c5,#09,#ab,#85
	db #24,#9f,#c5,#09,#9f,#c5,#08,#ab
	db #85,#24,#ab,#c5,#08,#a1,#c5,#08
	db #a1,#c5,#08,#ad,#c5,#08,#ad,#c5
	db #08,#a1,#c5,#08,#a1,#c5,#08,#ad
	db #c5,#08,#ad,#c5,#04,#a1,#c5,#09
	db #a1,#c5,#08,#ad,#c5,#04,#ad,#c5
	db #09,#a1,#c5,#08,#a1,#c5,#07,#ad
	db #c5,#04,#ad,#c5,#02,#ff,#9d,#c5
	db #0d,#9d,#85,#28,#a9,#85,#28,#a9
	db #85,#28,#9d,#c5,#0d,#9d,#85,#28
	db #a9,#85,#28,#a9,#85,#28,#9d,#c5
	db #0d,#9d,#85,#28,#a9,#c5,#0d,#a9
	db #85,#28,#9d,#c5,#0f,#9d,#85,#28
	db #a9,#c5,#10,#a9,#85,#28,#96,#c5
	db #0f,#96,#85,#3c,#a2,#c5,#10,#a2
	db #85,#3c,#96,#85,#3c,#96,#85,#3c
	db #a2,#c5,#14,#a2,#85,#3c,#96,#85
	db #3c,#96,#85,#3c,#a2,#c5,#14,#a2
	db #85,#3c,#96,#c5,#12,#96,#85,#3c
	db #a2,#c5,#10,#a2,#85,#3c,#98,#c5
	db #12,#98,#85,#36,#a4,#85,#36,#a4
	db #85,#36,#98,#c5,#12,#98,#85,#36
	db #a4,#85,#36,#a4,#85,#36,#98,#c5
	db #12,#98,#85,#36,#a4,#c5,#10,#a4
	db #85,#36,#98,#c5,#12,#98,#85,#36
	db #a4,#85,#36,#a4,#85,#36,#96,#c5
	db #14,#96,#85,#3c,#a2,#c5,#15,#a2
	db #85,#3c,#96,#85,#3c,#96,#85,#3c
	db #a2,#c5,#18,#a2,#85,#3c,#96,#85
	db #3c,#96,#85,#3c,#a2,#85,#3c,#a2
	db #85,#3c,#96,#85,#3c,#96,#85,#3c
	db #a2,#85,#3c,#a2,#85,#3c,#ff,#9d
	db #85,#28,#9d,#85,#28,#a9,#85,#28
	db #a9,#85,#28,#9d,#85,#28,#9d,#85
	db #28,#a9,#85,#28,#a9,#85,#28,#98
	db #85,#36,#98,#85,#36,#a4,#85,#36
	db #a4,#85,#36,#98,#85,#36,#98,#85
	db #36,#a4,#85,#36,#a4,#85,#36,#9f
	db #85,#47,#9f,#85,#47,#ab,#85,#47
	db #ab,#85,#47,#9f,#85,#47,#9f,#85
	db #47,#ab,#85,#47,#ab,#85,#47,#9f
	db #85,#47,#9a,#85,#2f,#9d,#85,#28
	db #ab,#85,#47,#9f,#85,#47,#9a,#85
	db #2f,#9d,#85,#28,#ab,#85,#47,#9d
	db #85,#28,#9d,#85,#28,#a9,#85,#28
	db #a9,#85,#28,#9d,#85,#28,#9d,#85
	db #28,#a9,#85,#28,#a9,#85,#28,#98
	db #85,#36,#98,#85,#36,#a4,#85,#36
	db #a4,#85,#36,#98,#85,#36,#98,#85
	db #36,#a4,#85,#36,#a4,#85,#36,#9f
	db #85,#47,#9f,#85,#47,#ab,#85,#47
	db #ab,#85,#47,#9f,#85,#47,#9f,#85
	db #47,#ab,#85,#47,#ab,#85,#47,#9f
	db #85,#47,#9a,#85,#2f,#9d,#85,#28
	db #ab,#85,#47,#9f,#85,#47,#9a,#85
	db #2f,#9d,#85,#28,#ab,#85,#47,#ff
	db #9d,#85,#28,#9d,#85,#28,#a9,#85
	db #28,#a9,#85,#28,#9d,#85,#28,#9d
	db #85,#28,#a9,#85,#28,#a9,#85,#28
	db #9d,#85,#28,#a4,#85,#36,#a7,#85
	db #2c,#a9,#85,#28,#a7,#85,#2c,#a4
	db #85,#36,#a7,#85,#2c,#a9,#85,#28
	db #98,#85,#36,#98,#85,#36,#a4,#85
	db #36,#a4,#85,#36,#98,#85,#36,#98
	db #85,#36,#a4,#85,#36,#a4,#85,#36
	db #98,#85,#36,#9f,#85,#47,#a2,#85
	db #3c,#a4,#85,#36,#98,#85,#36,#9f
	db #85,#47,#a2,#85,#3c,#a4,#85,#36
	db #9f,#85,#47,#9f,#85,#47,#ab,#85
	db #47,#ab,#85,#47,#9f,#85,#47,#9f
	db #85,#47,#ab,#85,#47,#ab,#85,#47
	db #9f,#85,#47,#a6,#85,#2f,#a9,#85
	db #28,#ab,#85,#47,#9f,#85,#47,#a6
	db #85,#2f,#a9,#85,#28,#ab,#85,#47
	db #9f,#85,#47,#9f,#85,#47,#ab,#85
	db #47,#ab,#85,#47,#9f,#85,#47,#9f
	db #85,#47,#ab,#85,#47,#ab,#85,#47
	db #9f,#85,#47,#a6,#85,#2f,#a9,#85
	db #28,#ab,#85,#47,#9f,#85,#47,#a6
	db #85,#2f,#a9,#85,#28,#ab,#85,#47
	db #ff,#9d,#85,#28,#9d,#85,#28,#a9
	db #85,#28,#a9,#85,#28,#9d,#85,#28
	db #9d,#85,#28,#a9,#85,#28,#a9,#85
	db #28,#9d,#85,#28,#a4,#85,#36,#a7
	db #85,#2c,#a9,#85,#28,#a7,#85,#2c
	db #a4,#85,#36,#a7,#85,#2c,#a9,#85
	db #28,#98,#85,#36,#98,#85,#36,#a4
	db #85,#36,#a4,#85,#36,#98,#85,#36
	db #98,#85,#36,#a4,#85,#36,#a4,#85
	db #36,#98,#85,#36,#9f,#85,#47,#a2
	db #85,#3c,#a4,#85,#36,#98,#85,#36
	db #9f,#85,#47,#a2,#85,#3c,#a4,#85
	db #36,#9f,#85,#47,#9f,#85,#47,#ab
	db #85,#47,#ab,#85,#47,#9f,#85,#47
	db #9f,#85,#47,#ab,#85,#47,#ab,#85
	db #47,#9f,#85,#47,#a6,#85,#2f,#a9
	db #85,#28,#ab,#85,#47,#9f,#85,#47
	db #a6,#85,#2f,#a9,#85,#28,#ab,#85
	db #47,#9f,#85,#47,#9f,#85,#47,#ab
	db #85,#47,#ab,#85,#47,#9f,#85,#47
	db #9f,#85,#47,#ab,#85,#47,#ab,#85
	db #47,#9f,#85,#47,#a6,#85,#2f,#a9
	db #85,#28,#ab,#85,#47,#9f,#85,#47
	db #a6,#85,#2f,#a9,#85,#28,#ab,#85
	db #47,#ff,#54,#02,#f6,#01,#54,#82
	db #d4,#f6,#01,#d3,#f6,#04,#d4,#f6
	db #01,#54,#02,#f6,#02,#54,#82,#d4
	db #f6,#02,#54,#82,#54,#82,#53,#02
	db #f6,#03,#53,#82,#d3,#f6,#03,#d1
	db #f6,#04,#d3,#f6,#03,#53,#02,#f6
	db #04,#53,#82,#d3,#f6,#04,#53,#02
	db #f6,#02,#53,#82,#54,#02,#f6,#01
	db #54,#82,#d4,#f6,#01,#d3,#f6,#04
	db #d4,#f6,#01,#54,#02,#f6,#02,#54
	db #82,#d4,#f6,#02,#54,#82,#54,#82
	db #53,#02,#f6,#03,#53,#82,#d3,#f6
	db #03,#d1,#f6,#04,#d3,#f6,#03,#58
	db #02,#f6,#05,#58,#82,#d8,#f6,#05
	db #56,#02,#f6,#06,#56,#82,#ff,#59
	db #02,#f6,#01,#59,#82,#d9,#f6,#01
	db #d8,#f6,#04,#d9,#f6,#01,#59,#02
	db #f6,#02,#59,#82,#d9,#f6,#02,#59
	db #82,#59,#82,#58,#02,#f6,#03,#58
	db #82,#d8,#f6,#03,#d6,#f6,#04,#d8
	db #f6,#03,#58,#02,#f6,#04,#58,#82
	db #d8,#f6,#04,#58,#02,#f6,#02,#58
	db #82,#59,#02,#f6,#01,#59,#82,#d9
	db #f6,#01,#d8,#f6,#04,#d9,#f6,#01
	db #59,#02,#f6,#02,#59,#82,#d9,#f6
	db #02,#59,#82,#59,#82,#58,#02,#f6
	db #03,#58,#82,#d8,#f6,#03,#d6,#f6
	db #04,#d8,#f6,#03,#5d,#02,#f6,#05
	db #5d,#82,#dd,#f6,#05,#5b,#02,#f6
	db #06,#5b,#82,#ff,#54,#08,#f7,#02
	db #56,#88,#54,#05,#f7,#01,#54,#02
	db #f6,#01,#d4,#f6,#01,#53,#02,#f6
	db #04,#53,#82,#54,#04,#f6,#01,#54
	db #08,#f7,#02,#56,#88,#54,#10,#f7
	db #01,#ff,#54,#08,#f7,#02,#56,#88
	db #54,#05,#f7,#01,#54,#02,#f6,#01
	db #d4,#f6,#01,#53,#02,#f6,#04,#53
	db #82,#54,#04,#f6,#01,#54,#08,#f7
	db #02,#56,#88,#58,#87,#58,#03,#f6
	db #02,#58,#02,#f6,#04,#58,#02,#f6
	db #02,#d8,#f6,#04,#d8,#f6,#02,#ff
	db #54,#04,#f8,#02,#54,#84,#54,#82
	db #54,#82,#52,#02,#f8,#09,#51,#02
	db #f8,#03,#52,#02,#f8,#08,#51,#04
	db #f8,#0a,#4d,#04,#f8,#02,#4d,#82
	db #4f,#02,#f8,#0b,#51,#02,#f8,#0c
	db #4f,#04,#f8,#02,#4f,#84,#4f,#82
	db #51,#02,#f8,#0b,#4f,#04,#f8,#02
	db #4d,#02,#f8,#06,#4c,#04,#f8,#0d
	db #4a,#0a,#f8,#03,#ff,#00,#02,#4d
	db #02,#f8,#08,#4d,#82,#4d,#82,#cd
	db #f8,#09,#4c,#02,#f8,#03,#4c,#83
	db #4c,#82,#4c,#02,#f8,#0b,#4a,#02
	db #f8,#02,#4a,#82,#4a,#82,#4c,#02
	db #f8,#0b,#ca,#f8,#02,#4c,#03,#f8
	db #0b,#4a,#04,#f8,#02,#4d,#02,#f8
	db #08,#4d,#82,#4d,#82,#cd,#f8,#09
	db #4c,#02,#f8,#03,#4c,#83,#4c,#82
	db #4c,#02,#f8,#0b,#4a,#02,#f8,#02
	db #4a,#82,#4a,#83,#4f,#03,#f7,#0e
	db #4f,#84,#ff,#59,#02,#f4,#0f,#d8
	db #f4,#0f,#54,#82,#51,#82,#59,#83
	db #58,#82,#54,#82,#51,#82,#59,#82
	db #d8,#f4,#0f,#54,#82,#51,#82,#59
	db #82,#58,#82,#54,#82,#51,#82,#51
	db #83,#4f,#82,#4d,#82,#4f,#8b,#4f
	db #02,#fb,#0f,#cf,#fb,#0f,#4d,#82
	db #4c,#82,#cd,#fb,#0f,#4c,#82,#4d
	db #82,#cd,#fb,#0f,#4f,#82,#ff,#59
	db #02,#f4,#0f,#d8,#f4,#0f,#54,#82
	db #51,#82,#59,#83,#58,#82,#54,#82
	db #51,#82,#59,#82,#d8,#f4,#0f,#54
	db #82,#51,#82,#59,#82,#58,#82,#54
	db #82,#5d,#82,#5d,#83,#5b,#82,#59
	db #82,#5b,#8b,#4f,#02,#fb,#0f,#cf
	db #fb,#0f,#4d,#82,#4c,#82,#cd,#fb
	db #0f,#4c,#82,#4d,#82,#cd,#fb,#0f
	db #4f,#82,#ff
;
.music_info
	db "The Addams Fanz FreeDisc - Intro (1993)(TAF Production)()",0
	db "ST-Module",0

	read "music_end.asm"
