; Music of Electric Monk Intro 4 Part 1 (1993)(TGS)(The Electric Monk)(ST-Module)
; Ripped by Megachur the 29/08/2017
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "ELEMI4P1.BIN"
	ENDIF

music_date_rip_day		equ 29
music_date_rip_month	equ 08
music_date_rip_year		equ 2017
music_adr				equ &4000

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
	dw l4646,l4655,l4664
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
	dw l4506,l4546,l4566
	db #07,#00,#00,#3f,#00,#3f,#00,#3f
	db #00,#00,#00,#3f,#00,#3f,#00,#3f
	db #00,#00,#00,#3f,#00,#3f,#00,#3f
	db #00,#00,#86,#45,#c6,#45,#66,#45
	db #08,#18,#00,#3f,#00,#3f,#00,#3f
	db #00,#00,#e6,#45,#26,#46,#66,#45
	db #00,#00,#00,#3f,#00,#3f,#00,#3f
	db #00,#00,#00,#3f,#00,#3f,#00,#3f
	db #00,#00,#00,#3f,#00,#3f,#00,#3f
	db #00,#00,#00,#3f,#00,#3f,#00,#3f
	db #00,#00,#00,#3f,#00,#3f,#00,#3f
	db #00,#00,#00,#3f,#00,#3f,#00,#3f
	db #00,#00,#00,#3f,#00,#3f,#00,#3f
	db #00,#00,#00,#3f,#00,#3f,#00,#3f
	db #00,#00,#00,#3f,#00,#3f,#00,#3f
.l44e6 equ $ + 2
	db #00,#00,#00,#3f,#00,#3f,#00,#3f
	db #00,#3f,#00,#3f,#00,#3f,#00,#3f
	db #00,#3f,#00,#3f,#00,#3f,#00,#3f
	db #00,#3f,#00,#3f,#00,#3f,#00,#3f
.l4506 equ $ + 2
	db #00,#3f,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4546 equ $ + 2
	db #00,#00,#0f,#0f,#0e,#0d,#0c,#0c
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0a,#08,#06,#04
.l4566 equ $ + 2
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0a,#0a,#0b,#0b,#0c,#0c
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0e,#0d,#0c,#0c,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
.l4646 equ $ + 2
	db #80,#80,#00,#73,#46,#00,#7b,#46
	db #00,#c3,#46,#00,#28,#47,#80,#46
.l4655 equ $ + 1
	db #46,#00,#76,#47,#00,#b8,#47,#00
	db #f8,#47,#00,#39,#48,#80,#55,#46
.l4664
	db #00,#9b,#48,#00,#9e,#48,#00,#cd
	db #48,#00,#0e,#49,#80,#64,#46,#22
	db #20,#06,#22,#94,#22,#9c,#ff,#00
	db #04,#22,#13,#06,#fe,#03,#a2,#06
	db #fe,#03,#a2,#06,#fe,#03,#a2,#06
	db #fe,#03,#a2,#06,#fe,#03,#a2,#06
	db #fe,#03,#a2,#06,#fe,#03,#a2,#06
	db #a4,#06,#a5,#06,#fe,#01,#a2,#06
	db #fe,#03,#a2,#06,#fe,#03,#a2,#06
	db #fe,#03,#a2,#06,#fe,#03,#a2,#06
	db #fe,#03,#a2,#06,#a4,#06,#a5,#06
	db #fe,#01,#a2,#06,#fe,#01,#ff,#00
	db #02,#a2,#06,#a4,#06,#a5,#06,#fe
	db #01,#a2,#06,#fe,#03,#a2,#06,#fe
	db #03,#a2,#06,#fe,#03,#a2,#06,#fe
	db #03,#a2,#06,#fe,#03,#a2,#06,#fe
	db #03,#a2,#06,#fe,#03,#a2,#06,#a4
	db #06,#a5,#06,#fe,#01,#a2,#06,#fe
	db #03,#a2,#06,#fe,#03,#a2,#06,#fe
	db #03,#a2,#06,#fe,#03,#a2,#06,#fe
	db #03,#a2,#06,#a4,#06,#a5,#06,#fe
	db #01,#a2,#06,#fe,#03,#a2,#06,#a4
	db #06,#a5,#06,#fe,#01,#a2,#06,#fe
	db #01,#22,#84,#a2,#06,#a4,#06,#a5
	db #06,#a7,#06,#ff,#20,#04,#06,#a0
	db #06,#a2,#06,#a4,#06,#a5,#06,#1e
	db #84,#9e,#06,#a0,#06,#a2,#06,#a4
	db #06,#1d,#82,#29,#82,#27,#82,#24
	db #82,#22,#84,#a2,#06,#a4,#06,#a5
	db #06,#a7,#06,#20,#84,#a0,#06,#a2
	db #06,#a4,#06,#a5,#06,#1e,#84,#9e
	db #06,#a0,#06,#a2,#06,#a4,#06,#1d
	db #82,#1d,#84,#1d,#84,#1d,#84,#1d
	db #82,#a2,#06,#fe,#03,#a2,#06,#fe
	db #0b,#ff,#00,#02,#2e,#02,#04,#30
	db #82,#31,#82,#30,#84,#2e,#84,#33
	db #82,#b1,#04,#b0,#04,#31,#82,#2e
	db #82,#30,#84,#35,#86,#b3,#04,#b1
	db #04,#33,#82,#30,#82,#31,#82,#33
	db #82,#30,#84,#2e,#86,#2e,#82,#30
	db #82,#31,#82,#30,#84,#2e,#84,#33
	db #82,#b1,#04,#b0,#04,#31,#82,#2e
	db #82,#30,#84,#ff,#35,#06,#04,#b3
	db #04,#b1,#04,#33,#82,#30,#82,#31
	db #82,#33,#82,#30,#84,#2e,#84,#b5
	db #04,#fe,#03,#b3,#04,#fe,#03,#b5
	db #04,#fe,#03,#b6,#04,#fe,#03,#b5
	db #04,#fe,#03,#b3,#04,#fe,#03,#35
	db #88,#b5,#04,#fe,#03,#b3,#04,#fe
	db #03,#b5,#04,#fe,#03,#b6,#04,#fe
	db #03,#35,#88,#ff,#35,#08,#04,#b5
	db #04,#fe,#03,#b3,#04,#fe,#03,#b5
	db #04,#fe,#03,#b6,#04,#fe,#03,#b5
	db #04,#fe,#03,#b3,#04,#fe,#03,#35
	db #88,#b5,#04,#fe,#03,#b3,#04,#fe
	db #03,#b1,#04,#fe,#03,#b0,#04,#fe
	db #03,#2e,#88,#22,#88,#35,#02,#06
	db #b1,#06,#b3,#06,#b5,#06,#b1,#06
	db #b5,#06,#b1,#06,#ff,#33,#02,#06
	db #b0,#06,#b1,#06,#b3,#06,#b0,#06
	db #b3,#06,#b0,#06,#31,#82,#ae,#06
	db #b0,#06,#b1,#06,#ae,#06,#b1,#06
	db #ae,#06,#30,#82,#35,#82,#33,#82
	db #30,#82,#35,#82,#b1,#06,#b3,#06
	db #b5,#06,#b1,#06,#b5,#06,#b1,#06
	db #33,#82,#b0,#06,#b1,#06,#b3,#06
	db #b0,#06,#b3,#06,#b0,#06,#31,#82
	db #ae,#06,#b0,#06,#b1,#06,#ae,#06
	db #b1,#06,#ae,#06,#30,#82,#35,#84
	db #33,#84,#31,#84,#30,#82,#ae,#06
	db #fe,#03,#ba,#06,#fe,#0b,#ff,#00
	db #50,#ff,#00,#18,#a5,#04,#fe,#03
	db #a4,#04,#fe,#03,#a5,#04,#fe,#03
	db #a7,#04,#fe,#03,#a5,#04,#fe,#03
	db #a4,#04,#fe,#03,#25,#88,#a5,#04
	db #fe,#03,#a4,#04,#fe,#03,#a5,#04
	db #fe,#03,#a7,#04,#fe,#03,#25,#88
	db #ff,#25,#08,#04,#a5,#04,#fe,#03
	db #a4,#04,#fe,#03,#a5,#04,#fe,#03
	db #a7,#04,#fe,#03,#a5,#04,#fe,#03
	db #a4,#04,#fe,#03,#25,#88,#a5,#04
	db #fe,#03,#a4,#04,#fe,#03,#a2,#04
	db #fe,#03,#a1,#04,#fe,#03,#22,#88
	db #2e,#88,#41,#02,#06,#bd,#06,#bf
	db #06,#c1,#06,#bd,#06,#c1,#06,#bd
	db #06,#ff,#3f,#02,#06,#bc,#06,#bd
	db #06,#bf,#06,#bc,#06,#bf,#06,#bc
	db #06,#3d,#82,#ba,#06,#bc,#06,#bd
	db #06,#ba,#06,#bd,#06,#ba,#06,#3c
	db #82,#41,#82,#3f,#82,#3c,#82,#41
	db #82,#bd,#06,#bf,#06,#c1,#06,#bd
	db #06,#c1,#06,#bd,#06,#3f,#82,#bc
	db #06,#bd,#06,#bf,#06,#bc,#06,#bf
	db #06,#bc,#06,#3d,#82,#ba,#06,#bc
	db #06,#bd,#06,#ba,#06,#bd,#06,#ba
	db #06,#3c,#82,#41,#84,#3f,#84,#3d
	db #84,#3c,#82,#ba,#06,#fe,#03,#c6
	db #06,#fe,#0b,#ff
;
.music_info
	db "Electric Monk Intro 4 Part 1 (1993)(TGS)(The Electric Monk)",0
	db "ST-Module",0

	read "music_end.asm"
