; Music of CPC-Aktuell 5 - 5 (1993)(Public Domain)(Kangaroo)(ST-Module)
; Ripped by Megachur the 20/03/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPCAKT55.BIN"
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
	dw l47e6,l480d,l4834
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
	db #86,#45,#c6,#45,#e6,#45,#1d,#03
	db #06,#46,#46,#46,#66,#46,#0c,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #86,#45,#86,#46,#e6,#45,#00,#00
	db #86,#45,#a6,#46,#e6,#45,#00,#00
	db #c6,#46,#06,#47,#26,#47,#00,#00
	db #c6,#46,#46,#47,#66,#47,#00,#00
	db #86,#47,#c6,#47,#e6,#45,#18,#07
	db #26,#82,#66,#82,#66,#81,#18,#07
	db #e6,#85,#26,#86,#46,#86,#00,#00
	db #66,#86,#a6,#86,#c6,#86,#00,#00
	db #06,#85,#e6,#86,#66,#85,#00,#00
	db #06,#87,#46,#87,#66,#85,#08,#18
	db #00,#f8,#00,#f8,#00,#f8,#00,#00
.l44e6
	db #00,#f8,#66,#87,#86,#87,#c6,#82
	db #00,#f8,#00,#f8,#c6,#43,#00,#f8
	db #00,#f8,#00,#f8,#00,#f8,#00,#f8
	db #00,#f8,#00,#f8,#00,#f8,#00,#f8
	db #00,#00,#08,#00,#10,#00,#18,#00
	db #20,#00,#28,#00,#30,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0c,#0a,#07,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #07,#07,#07,#06,#06,#06,#05,#05
	db #05,#04,#04,#04,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0e,#0e,#0e,#0e,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#32,#00,#64,#00,#91,#00
	db #be,#00,#eb,#00,#22,#01,#4a,#01
	db #7c,#01,#a9,#01,#d6,#01,#08,#02
	db #3a,#02,#6c,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0d
	db #0c,#0a,#06,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0b,#0b,#0b,#0a,#0a,#09,#09,#08
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#03,#03,#03,#03,#03
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#0b,#0a
	db #0a,#09,#09,#08,#07,#06,#06,#06
	db #06,#05,#04,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #04,#06,#07,#09,#0c,#11,#17,#1d
	db #15,#10,#0c,#09,#06,#05,#04,#04
	db #03,#03,#03,#02,#02,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0e,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0b,#0a,#09,#07,#05,#07,#09,#0b
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#09,#09,#09
.l47e6
	db #00,#5b,#48,#00,#ac,#48,#00,#11
	db #49,#00,#ac,#48,#00,#ac,#48,#00
	db #11,#49,#00,#11,#49,#00,#76,#49
	db #00,#c8,#49,#00,#c8,#49,#00,#1a
.l480d equ $ + 7
	db #4a,#00,#1a,#4a,#80,#ef,#47,#00
	db #6e,#4a,#00,#71,#4a,#00,#ac,#4a
	db #00,#71,#4a,#00,#71,#4a,#00,#ac
	db #4a,#00,#ac,#4a,#00,#71,#4a,#00
	db #71,#4a,#00,#71,#4a,#00,#71,#4a
.l4834 equ $ + 6
	db #00,#71,#4a,#80,#16,#48,#00,#e7
	db #4a,#00,#ea,#4a,#00,#ed,#4a,#00
	db #41,#4b,#00,#71,#4b,#00,#ed,#4a
	db #00,#ed,#4a,#00,#9f,#4b,#00,#e9
	db #4b,#00,#e9,#4b,#00,#e9,#4b,#00
	db #e9,#4b,#80,#3d,#48,#d2,#10,#fe
	db #03,#d2,#10,#fe,#02,#d2,#10,#fe
	db #02,#d2,#10,#fe,#03,#d2,#10,#fe
	db #01,#d2,#10,#fe,#03,#d2,#10,#fe
	db #02,#d2,#10,#fe,#02,#d2,#10,#fe
	db #03,#d2,#10,#fe,#01,#d2,#10,#fe
	db #03,#d2,#10,#fe,#02,#d2,#10,#fe
	db #02,#d2,#10,#fe,#03,#d2,#10,#fe
	db #01,#d2,#10,#fe,#03,#d2,#10,#fe
	db #02,#d2,#10,#fe,#02,#d2,#10,#fe
	db #03,#d2,#10,#fe,#01,#ff,#d2,#10
	db #fe,#01,#2e,#02,#12,#d2,#10,#fe
	db #01,#ae,#12,#d2,#10,#fe,#02,#d2
	db #10,#fe,#03,#d2,#10,#fe,#01,#d2
	db #10,#fe,#01,#2e,#02,#12,#d2,#10
	db #fe,#01,#ae,#12,#d2,#10,#fe,#02
	db #d2,#10,#fe,#03,#d2,#10,#fe,#01
	db #d2,#10,#fe,#01,#2e,#02,#12,#d2
	db #10,#fe,#01,#ae,#12,#d2,#10,#fe
	db #02,#d2,#10,#fe,#03,#d2,#10,#fe
	db #01,#d2,#10,#fe,#01,#2e,#02,#12
	db #d2,#10,#fe,#01,#ae,#12,#d2,#10
	db #fe,#02,#d2,#10,#fe,#03,#d2,#10
	db #fe,#01,#ff,#d2,#10,#fe,#01,#2e
	db #02,#12,#d2,#10,#fe,#01,#ae,#12
	db #d2,#10,#fe,#02,#d2,#10,#fe,#03
	db #d2,#10,#fe,#01,#d2,#10,#fe,#01
	db #2e,#02,#12,#d2,#10,#fe,#01,#ae
	db #12,#d2,#10,#fe,#02,#d2,#10,#fe
	db #03,#d2,#10,#fe,#01,#d2,#10,#fe
	db #01,#2e,#02,#12,#d2,#10,#fe,#01
	db #ae,#12,#d2,#10,#fe,#02,#d2,#10
	db #fe,#03,#d2,#10,#fe,#01,#d2,#10
	db #fe,#01,#2e,#02,#12,#d2,#10,#fe
	db #01,#ae,#12,#d2,#10,#fe,#02,#d2
	db #10,#fe,#03,#d2,#10,#fe,#01,#ff
	db #2e,#04,#02,#3a,#02,#07,#2e,#02
	db #02,#ae,#02,#2e,#82,#ae,#02,#3a
	db #02,#07,#2e,#02,#02,#2e,#84,#3a
	db #02,#07,#2e,#02,#02,#ae,#02,#2e
	db #82,#ae,#02,#ba,#07,#ae,#02,#2e
	db #82,#2e,#84,#3a,#02,#07,#2e,#02
	db #02,#ae,#02,#2e,#82,#ae,#02,#ba
	db #07,#ae,#02,#2e,#82,#2e,#83,#ae
	db #02,#3a,#02,#07,#2e,#02,#02,#2e
	db #83,#ae,#02,#3a,#02,#07,#2e,#02
	db #02,#ff,#2e,#04,#02,#3a,#02,#08
	db #2e,#02,#02,#ae,#02,#2e,#82,#ae
	db #02,#3a,#02,#08,#2e,#02,#02,#2e
	db #84,#3a,#02,#08,#2e,#02,#02,#ae
	db #02,#2e,#82,#ae,#02,#ba,#08,#ae
	db #02,#2e,#82,#2e,#84,#3a,#02,#08
	db #2e,#02,#02,#ae,#02,#2e,#82,#ae
	db #02,#ba,#08,#ae,#02,#2e,#82,#2e
	db #83,#ae,#02,#3a,#02,#08,#2e,#02
	db #02,#2e,#83,#ae,#02,#3a,#02,#08
	db #2e,#02,#02,#ff,#4d,#02,#06,#cb
	db #06,#4d,#82,#cb,#06,#4d,#82,#cb
	db #06,#4d,#82,#cb,#06,#4d,#82,#52
	db #82,#52,#82,#cb,#06,#4d,#82,#cb
	db #06,#4d,#82,#cb,#06,#4d,#82,#cb
	db #06,#4d,#82,#46,#82,#46,#82,#cb
	db #06,#4d,#82,#cb,#06,#4d,#82,#cb
	db #06,#4d,#82,#cb,#06,#4d,#82,#52
	db #82,#52,#82,#cb,#06,#4d,#82,#cb
	db #06,#4d,#82,#cb,#06,#4d,#82,#cb
	db #06,#4d,#82,#c6,#06,#ca,#06,#ff
	db #00,#40,#ff,#22,#04,#c1,#1e,#3a
	db #03,#01,#22,#83,#3a,#84,#22,#82
	db #26,#04,#c1,#18,#3e,#03,#01,#26
	db #83,#3e,#84,#26,#82,#27,#04,#c1
	db #16,#3f,#03,#01,#27,#83,#3f,#84
	db #27,#82,#29,#04,#c1,#14,#41,#03
	db #01,#29,#83,#41,#82,#27,#02,#c1
	db #16,#24,#02,#c1,#1b,#ff,#22,#04
	db #c1,#1e,#3a,#03,#01,#22,#83,#3a
	db #84,#22,#82,#26,#04,#c1,#18,#3e
	db #03,#01,#26,#83,#3e,#84,#26,#82
	db #27,#04,#c1,#16,#3f,#03,#01,#27
	db #83,#3f,#84,#27,#82,#29,#04,#c1
	db #14,#41,#03,#01,#29,#83,#41,#82
	db #27,#02,#c1,#16,#24,#02,#c1,#1b
	db #ff,#00,#40,#ff,#00,#40,#ff,#4d
	db #02,#06,#cb,#06,#4d,#82,#cb,#06
	db #4d,#82,#cb,#06,#4d,#82,#cb,#06
	db #4d,#82,#52,#82,#52,#82,#cb,#06
	db #4d,#82,#cb,#06,#4d,#82,#cb,#06
	db #4d,#82,#cb,#06,#4d,#82,#46,#82
	db #46,#82,#cb,#06,#4d,#82,#cb,#06
	db #4d,#82,#cb,#06,#4d,#82,#cb,#06
	db #4d,#82,#52,#82,#52,#82,#cb,#06
	db #4d,#82,#cb,#06,#4d,#82,#cb,#06
	db #4d,#82,#cb,#06,#4d,#82,#c6,#06
	db #ca,#06,#ff,#4a,#02,#05,#46,#84
	db #4d,#84,#4d,#82,#4d,#82,#cd,#05
	db #4f,#82,#4a,#83,#4a,#86,#4a,#84
	db #4a,#82,#4b,#82,#4b,#82,#4b,#82
	db #4b,#82,#4b,#82,#4a,#82,#48,#86
	db #45,#84,#45,#82,#46,#82,#48,#84
	db #46,#82,#ff,#4a,#02,#05,#46,#84
	db #4d,#84,#4d,#82,#4d,#82,#cd,#05
	db #4f,#83,#52,#82,#4a,#86,#4a,#82
	db #4a,#82,#4a,#82,#4b,#83,#4b,#83
	db #4b,#82,#4f,#83,#52,#83,#4f,#82
	db #51,#84,#54,#84,#56,#84,#54,#84
	db #ff,#3a,#02,#09,#46,#82,#3a,#82
	db #c6,#09,#3a,#82,#ba,#09,#46,#82
	db #3a,#82,#46,#82,#3a,#82,#46,#82
	db #3a,#82,#c6,#09,#3a,#82,#ba,#09
	db #46,#82,#3a,#82,#46,#82,#3a,#82
	db #46,#82,#3a,#82,#c6,#09,#3a,#82
	db #ba,#09,#46,#82,#3a,#82,#46,#82
	db #3a,#82,#46,#82,#3a,#82,#c6,#09
	db #3a,#82,#ba,#09,#46,#82,#46,#82
	db #45,#82,#ff,#3e,#02,#09,#3a,#84
	db #41,#84,#41,#82,#c1,#09,#c1,#09
	db #43,#84,#3e,#84,#3e,#84,#3e,#82
	db #3e,#82,#be,#09,#3f,#83,#3f,#82
	db #3f,#82,#3f,#82,#3f,#82,#3e,#82
	db #3c,#86,#3a,#84,#3a,#82,#3a,#82
	db #3c,#82,#3e,#82,#3c,#82,#ff,#03
	db #0a,#49,#83,#47,#82,#45,#83,#4e
	db #83,#4c,#82,#4a,#83,#49,#83,#47
	db #82,#45,#83,#4e,#83,#4c,#82,#4a
	db #83,#49,#83,#47,#82,#45,#83,#4e
	db #83,#4c,#82,#4a,#83,#49,#83,#47
	db #82,#45,#83,#4e,#83,#4c,#82,#ff
	db #aa,#08,#2a,#82,#aa,#08,#3a,#02
	db #01,#1e,#02,#08,#aa,#08,#2a,#82
	db #aa,#08,#3a,#02,#01,#1e,#02,#08
	db #aa,#08,#2a,#82,#aa,#08,#3a,#02
	db #01,#1e,#02,#08,#aa,#08,#2a,#82
	db #aa,#08,#ba,#01,#9e,#08,#a5,#08
	db #a1,#08,#a6,#08,#26,#82,#a6,#08
	db #3a,#02,#01,#1a,#02,#08,#a6,#08
	db #26,#82,#a6,#08,#3a,#02,#01,#1a
	db #02,#08,#a6,#08,#26,#82,#a6,#08
	db #3a,#02,#01,#1a,#02,#08,#a6,#08
	db #26,#82,#a6,#08,#3a,#02,#01,#1a
	db #02,#08,#ff,#42,#0c,#09,#44,#82
	db #45,#82,#4c,#84,#49,#84,#47,#82
	db #45,#84,#45,#8c,#42,#82,#44,#82
	db #45,#82,#4e,#84,#4c,#84,#4a,#82
	db #49,#84,#47,#82,#ff,#00,#10,#43
	db #02,#09,#45,#84,#47,#82,#4a,#84
	db #4f,#82,#4e,#84,#4c,#8e,#51,#88
	db #4f,#82,#4e,#84,#4e,#82,#ff,#00
	db #10,#43,#02,#09,#45,#84,#47,#82
	db #4a,#84,#4f,#82,#4e,#84,#4c,#8e
	db #51,#88,#4f,#82,#4e,#84,#4e,#82
	db #ff,#36,#08,#09,#37,#84,#36,#84
	db #3a,#84,#37,#84,#36,#84,#3a,#84
	db #4a,#08,#0a,#49,#88,#47,#84,#4f
	db #84,#4e,#84,#47,#84,#ff,#3b,#1a
	db #09,#3a,#82,#3b,#82,#3d,#82,#4c
	db #04,#0a,#4a,#82,#4c,#86,#4d,#82
	db #4c,#86,#4a,#82,#46,#86,#6d,#04
	db #02,#ff,#fe,#40,#ff,#00,#40,#ff
	db #2e,#02,#00,#2e,#82,#35,#82,#2e
	db #83,#ae,#00,#b5,#00,#b3,#00,#32
	db #84,#2e,#82,#2e,#82,#35,#82,#2e
	db #83,#ae,#00,#35,#82,#b5,#00,#b3
	db #00,#32,#82,#2e,#82,#2e,#82,#33
	db #82,#2e,#83,#ae,#00,#b5,#00,#b3
	db #00,#32,#84,#2e,#82,#2e,#82,#33
	db #82,#ae,#00,#35,#82,#b0,#00,#b3
	db #00,#b2,#00,#6d,#04,#02,#ff,#2e
	db #02,#00,#2e,#82,#3a,#02,#01,#2e
	db #03,#00,#ae,#00,#b5,#00,#b3,#00
	db #6d,#04,#02,#2e,#02,#00,#2e,#82
	db #3a,#02,#01,#2e,#03,#00,#ae,#00
	db #35,#82,#ba,#01,#b3,#00,#32,#82
	db #2e,#82,#2e,#82,#3a,#02,#01,#2e
	db #03,#00,#ae,#00,#b5,#00,#b3,#00
	db #6d,#04,#02,#2e,#02,#00,#2e,#82
	db #3a,#02,#01,#ae,#00,#35,#82,#b0
	db #00,#b3,#00,#b2,#00,#3a,#04,#01
	db #ff,#2e,#02,#00,#2e,#82,#3a,#02
	db #01,#2e,#03,#00,#ae,#00,#b5,#00
	db #b3,#00,#3a,#04,#01,#2e,#02,#00
	db #2e,#82,#3a,#02,#01,#2e,#03,#00
	db #ae,#00,#35,#82,#ba,#01,#b3,#00
	db #32,#82,#2e,#82,#2e,#82,#3a,#02
	db #01,#2e,#03,#00,#ae,#00,#b5,#00
	db #b3,#00,#3a,#04,#01,#2e,#02,#00
	db #2e,#82,#3a,#02,#01,#ae,#00,#35
	db #82,#b0,#00,#b3,#00,#b2,#00,#6d
	db #04,#02,#ff,#45,#0a,#09,#42,#82
	db #44,#82,#45,#82,#4c,#84,#49,#84
	db #47,#82,#45,#84,#45,#8c,#42,#82
	db #44,#82,#45,#82,#4e,#84,#4c,#84
	db #4a,#82,#49,#84,#47,#82,#ff

;
.music_info
	db "CPC-Aktuell 5 - 5 (1993)(Public Domain)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
