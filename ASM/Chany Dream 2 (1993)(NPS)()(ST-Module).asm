; Music of Chany Dream 2 (1993)(NPS)()(ST-Module)
; Ripped by Megachur the 30/09/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "CHANYDR2.BIN"
	ENDIF

music_date_rip_day		equ 30
music_date_rip_month	equ 09
music_date_rip_year		equ 2014
music_adr				equ &4024

	read "music_header.asm"

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
	dw l4726,l4738,l474a
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
	dw #000f,#0000
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l43fe
	db #69,#47,#00,#01,#08,#00,#01,#24
.l440c equ $ + 6
	db #00,#00,#01,#df,#29,#47,#06,#45
	db #46,#45,#66,#45,#00,#00,#0c,#14
.l441a equ $ + 4
	db #de,#01,#00,#00,#ae,#48,#02,#03
	db #09,#04,#03,#63,#00,#00,#00,#e7
.l4428 equ $ + 2
	db #3b,#47,#86,#45,#e6,#45,#06,#46
	db #00,#00,#0c,#14,#00,#00,#00,#00
.l4436
	db #74,#4a,#04,#05,#0a,#01,#07,#35
.l4444 equ $ + 6
	db #00,#00,#00,#ef,#4d,#47,#86,#45
	db #c6,#45,#66,#45,#1a,#05,#18,#08
	db #b3,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l4466
	db #06,#45,#46,#45,#66,#45,#00,#00
	db #86,#45,#c6,#45,#66,#45,#1a,#05
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #86,#45,#e6,#45,#06,#46,#00,#00
	db #26,#46,#66,#46,#86,#46,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #a6,#46,#e6,#46,#06,#47,#00,#00
	db #26,#43,#66,#43,#86,#42,#00,#00
	db #86,#84,#26,#87,#46,#87,#00,#00
	db #06,#80,#46,#82,#66,#80,#00,#00
	db #00,#b9,#00,#b9,#00,#b9,#00,#00
	db #66,#82,#a6,#82,#c6,#82,#00,#00
	db #00,#b9,#00,#b9,#00,#b9,#00,#00
.l44e6
	db #66,#87,#66,#04,#c6,#c5,#46,#83
	db #66,#83,#86,#83,#00,#b9,#00,#b9
	db #a6,#83,#00,#b9,#00,#b9,#00,#b9
	db #00,#b9,#00,#b9,#00,#b9,#00,#b9
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#05,#05
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
.l4726
	db #00,#5c,#47,#00,#a0,#47,#00,#a0
	db #47,#00,#a0,#47,#00,#22,#48,#80
.l4738 equ $ + 2
	db #29,#47,#00,#a7,#48,#00,#e7,#48
	db #00,#e7,#48,#00,#68,#49,#00,#e9
.l474a equ $ + 4
	db #49,#80,#3b,#47,#00,#6b,#4a,#00
	db #6b,#4a,#00,#6b,#4a,#00,#99,#4a
	db #00,#1e,#4b,#80,#4d,#47,#2e,#02
	db #b0,#01,#2e,#02,#00,#2e,#82,#2e
	db #82,#2e,#82,#2e,#82,#2e,#82,#2e
	db #82,#2a,#82,#2a,#82,#2a,#82,#2a
	db #82,#2a,#82,#2a,#82,#2a,#82,#2a
	db #82,#2c,#82,#2c,#82,#2c,#82,#2c
	db #82,#2c,#82,#2c,#82,#2c,#82,#2c
	db #82,#29,#82,#29,#82,#29,#82,#29
	db #82,#29,#82,#29,#82,#29,#82,#29
	db #82,#ff,#ae,#b0,#01,#ba,#00,#ae
	db #00,#ba,#00,#ae,#00,#ba,#00,#ae
	db #00,#ba,#00,#ae,#00,#ba,#00,#ae
	db #00,#ba,#00,#ae,#00,#ba,#00,#ae
	db #00,#ba,#00,#aa,#00,#b6,#00,#aa
	db #00,#b6,#00,#aa,#00,#b6,#00,#aa
	db #00,#b6,#00,#aa,#00,#b6,#00,#aa
	db #00,#b6,#00,#aa,#00,#b6,#00,#aa
	db #00,#b6,#00,#ac,#00,#b8,#00,#ac
	db #00,#b8,#00,#ac,#00,#b8,#00,#ac
	db #00,#b8,#00,#ac,#00,#b8,#00,#ac
	db #00,#b8,#00,#ac,#00,#b8,#00,#ac
	db #00,#b8,#00,#a9,#00,#b5,#00,#a9
	db #00,#b5,#00,#a9,#00,#b5,#00,#a9
	db #00,#b5,#00,#a9,#00,#b5,#00,#a9
	db #00,#b5,#00,#a9,#00,#b5,#00,#a9
	db #00,#b5,#00,#ff,#ae,#01,#b1,#01
	db #b5,#01,#b1,#01,#ba,#01,#b5,#01
	db #b1,#01,#b5,#01,#ae,#01,#b1,#01
	db #b5,#01,#b1,#01,#ba,#01,#b5,#01
	db #b1,#01,#b5,#01,#b6,#01,#ba,#01
	db #b6,#01,#b1,#01,#b1,#b1,#01,#ba
	db #01,#b6,#01,#b1,#01,#b1,#b1,#02
	db #ba,#01,#b6,#01,#b1,#01,#b1,#b1
	db #03,#ba,#01,#b6,#01,#ba,#01,#b8
	db #b1,#00,#b3,#01,#b1,#01,#b3,#01
	db #b0,#01,#b1,#01,#b3,#01,#b6,#01
	db #b8,#01,#b3,#01,#b1,#01,#b3,#01
	db #b0,#01,#b1,#01,#b3,#01,#b6,#01
	db #b5,#01,#b9,#01,#bc,#01,#b9,#01
	db #b5,#01,#bc,#01,#bd,#01,#bc,#01
	db #ba,#01,#b9,#01,#ba,#01,#b5,#01
	db #b1,#01,#b5,#01,#ae,#01,#b0,#01
	db #ff,#6d,#04,#04,#6d,#84,#6d,#84
	db #6d,#84,#6d,#84,#6d,#84,#6d,#84
	db #6d,#84,#6d,#82,#6d,#82,#6d,#82
	db #6d,#82,#6d,#82,#6d,#82,#6d,#82
	db #6d,#82,#6d,#82,#ed,#04,#ed,#04
	db #ed,#04,#ed,#04,#ed,#04,#ed,#04
	db #ed,#04,#ed,#04,#ed,#04,#ed,#04
	db #ed,#04,#ed,#04,#ed,#04,#ed,#04
	db #ff,#ae,#09,#ed,#04,#ed,#04,#ed
	db #04,#ba,#05,#ed,#04,#ae,#09,#ed
	db #04,#ed,#04,#ae,#09,#ed,#04,#ed
	db #04,#ba,#05,#ed,#04,#ba,#05,#ba
	db #05,#ae,#09,#ed,#04,#ed,#04,#ed
	db #04,#ba,#05,#ed,#04,#ae,#09,#ed
	db #04,#ed,#04,#ae,#09,#ae,#09,#ed
	db #04,#ba,#05,#ed,#04,#ba,#05,#ed
	db #04,#ae,#09,#ed,#04,#ed,#04,#ae
	db #09,#ba,#05,#ed,#04,#ae,#09,#ed
	db #04,#ed,#04,#ae,#09,#ed,#04,#ed
	db #04,#ba,#05,#ed,#04,#ae,#09,#ed
	db #04,#ae,#09,#ed,#04,#ae,#09,#ae
	db #09,#ba,#05,#ae,#09,#ae,#09,#ed
	db #04,#ae,#09,#ed,#04,#ae,#09,#ed
	db #04,#ba,#05,#ed,#04,#ba,#05,#ba
	db #05,#ff,#ae,#09,#ed,#04,#ed,#04
	db #ed,#04,#ba,#05,#ed,#04,#ae,#09
	db #ed,#04,#ed,#04,#ae,#09,#ed,#04
	db #ed,#04,#ba,#05,#ed,#04,#ba,#05
	db #ba,#05,#ae,#09,#ed,#04,#ed,#04
	db #ed,#04,#ba,#05,#ed,#04,#ae,#09
	db #ed,#04,#ed,#04,#ae,#09,#ae,#09
	db #ed,#04,#ba,#05,#ed,#04,#ba,#05
	db #ed,#04,#ae,#09,#ed,#04,#ed,#04
	db #ae,#09,#ba,#05,#ed,#04,#ae,#09
	db #ed,#04,#ed,#04,#ae,#09,#ed,#04
	db #ed,#04,#ba,#05,#ed,#04,#ae,#09
	db #ed,#04,#ae,#09,#ed,#04,#ae,#09
	db #ae,#09,#ba,#05,#ae,#09,#ae,#09
	db #ed,#04,#ae,#09,#ed,#04,#ae,#09
	db #ed,#04,#ba,#05,#ed,#04,#ba,#05
	db #ba,#05,#ff,#ae,#b0,#01,#ba,#00
	db #ae,#00,#ba,#00,#ae,#00,#ba,#00
	db #ae,#00,#ba,#00,#ae,#00,#ba,#00
	db #ae,#00,#ba,#00,#ae,#00,#ba,#00
	db #ae,#00,#ba,#00,#aa,#00,#b6,#00
	db #aa,#00,#b6,#00,#aa,#00,#b6,#00
	db #aa,#00,#b6,#00,#aa,#00,#b6,#00
	db #aa,#00,#b6,#00,#aa,#00,#b6,#00
	db #aa,#00,#b6,#00,#ac,#00,#b8,#00
	db #ac,#00,#b8,#00,#ac,#00,#b8,#00
	db #ac,#00,#b8,#00,#ac,#00,#b8,#00
	db #ac,#00,#b8,#00,#ac,#00,#b8,#00
	db #ac,#00,#b8,#00,#a9,#00,#b5,#00
	db #a9,#00,#b5,#00,#a9,#00,#b5,#00
	db #a9,#00,#b5,#00,#a9,#00,#b5,#00
	db #a9,#00,#b5,#00,#a9,#00,#b5,#00
	db #a9,#00,#b5,#00,#ff,#3a,#02,#01
	db #3a,#82,#3d,#82,#3f,#8a,#3a,#82
	db #3a,#82,#3d,#82,#3f,#82,#41,#82
	db #3f,#82,#3d,#82,#3c,#82,#3a,#82
	db #3a,#82,#3d,#82,#3f,#84,#3a,#84
	db #3a,#82,#38,#83,#38,#83,#38,#82
	db #3a,#88,#ff,#ba,#01,#bd,#01,#c1
	db #01,#bd,#01,#c6,#01,#c1,#01,#bd
	db #01,#c1,#01,#ba,#01,#bd,#01,#c1
	db #01,#bd,#01,#c6,#01,#c1,#01,#bd
	db #01,#c1,#01,#c2,#01,#c6,#01,#c2
	db #01,#bd,#01,#bd,#b1,#01,#c6,#01
	db #c2,#01,#bd,#01,#bd,#b1,#02,#c6
	db #01,#c2,#01,#bd,#01,#bd,#b1,#03
	db #c6,#01,#c2,#01,#c6,#01,#c4,#b1
	db #00,#bf,#01,#bd,#01,#bf,#01,#bc
	db #01,#bd,#01,#bf,#01,#c2,#01,#c4
	db #01,#bf,#01,#bd,#01,#bf,#01,#bc
	db #01,#bd,#01,#bf,#01,#c2,#01,#c1
	db #01,#c5,#01,#c8,#01,#c5,#01,#c1
	db #01,#c8,#01,#c9,#01,#c8,#01,#c6
	db #01,#c5,#01,#c6,#01,#c1,#01,#bd
	db #01,#c1,#01,#ba,#01,#bc,#01,#ff
	db #ba,#01,#bd,#01,#c1,#01,#bd,#01
	db #c6,#01,#c1,#01,#bd,#01,#c1,#01
	db #ba,#01,#bd,#01,#c1,#01,#bd,#01
	db #c6,#01,#c1,#01,#bd,#01,#c1,#01
	db #c2,#01,#c6,#01,#c2,#01,#bd,#01
	db #bd,#b1,#01,#c6,#01,#c2,#01,#bd
	db #01,#bd,#b1,#02,#c6,#01,#c2,#01
	db #bd,#01,#bd,#b1,#03,#c6,#01,#c2
	db #01,#c6,#01,#c4,#b1,#00,#bf,#01
	db #bd,#01,#bf,#01,#bc,#01,#bd,#01
	db #bf,#01,#c2,#01,#c4,#01,#bf,#01
	db #bd,#01,#bf,#01,#bc,#01,#bd,#01
	db #bf,#01,#c2,#01,#c1,#01,#c5,#01
	db #c8,#01,#c5,#01,#c1,#01,#c8,#01
	db #c9,#01,#c8,#01,#c6,#01,#c5,#01
	db #c6,#01,#c1,#01,#bd,#01,#c1,#01
	db #ba,#01,#bc,#01,#ff,#00
;
.music_info
	db "Chany Dream 2 (1993)(NPS)()",0
	db "ST-Module",0

	read "music_end.asm"
