; Music of Colors (1993)(Rebels)()(ST-Module)
; Ripped by Megachur the 03/03/2021
; $VER 1.5

IFDEF FILENAME_WRITE
		write "COLORS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #4000

	read "music_header.asm"

	jr l4004	; play music interrupt
	jr l4013	; stop music interrupt
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
	jp l402f	; init music
	jp l40b7	; play music
	jp l409b	; stop music
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
	ld a,#02
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
	ld a,#11
	ld hl,l4326
	cp (hl)
	jr z,l4101
	ld (hl),a
	ld c,a
	ld a,#06
	call l4308
.l4102 equ $ + 1
.l4101
	ld a,#1e
	ld hl,l4328
	cp (hl)
	jr z,l4110
	ld (hl),a
	ld c,a
	ld a,#0b
	call l4308
.l4111 equ $ + 1
.l4110
	ld a,#58
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
	db #11,#38,#1e,#58
.l432a
	dw #4826,#4853,#4880
.l4330
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l43fe equ $ + 4
	db #00,#00,#00,#00,#3c,#4b,#00,#01
	db #08,#05,#01,#24,#00,#10,#00,#df
.l440c equ $ + 2
	db #3e,#48,#06,#46,#06,#47,#66,#46
	db #14,#09,#05,#1b,#de,#01,#00,#00
.l441a
	db #90,#4e,#02,#03,#09,#03,#0a,#48
.l4428 equ $ + 6
	db #00,#00,#00,#e7,#6b,#48,#86,#46
	db #c6,#46,#66,#46,#08,#18,#11,#0f
.l4436 equ $ + 4
	db #50,#00,#a6,#47,#d2,#50,#04,#05
	db #0a,#05,#04,#43,#00,#00,#00,#ef
.l4444 equ $ + 2
	db #98,#48,#06,#46,#06,#47,#66,#46
	db #14,#09,#05,#1b,#5f,#00,#46,#47
.l4452
	db #00,#00,#00,#00,#00,#81,#1c,#40
	db #ff,#00,#53,#54,#2d,#4d,#6f,#64
.l4466 equ $ + 4
	db #75,#6c,#65,#2e,#06,#45,#46,#45
	db #66,#45,#00,#00,#86,#45,#c6,#45
	db #e6,#45,#00,#00,#06,#46,#46,#46
	db #66,#46,#00,#00,#86,#46,#c6,#46
	db #66,#46,#08,#18,#06,#46,#46,#46
	db #e6,#46,#00,#00,#06,#46,#06,#47
	db #66,#46,#14,#09,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
.l44e6 equ $ + 4
	db #00,#3f,#00,#00,#00,#3f,#26,#47
	db #46,#47,#66,#47,#86,#47,#00,#3f
	db #00,#3f,#00,#3f,#a6,#47,#00,#3f
	db #c6,#47,#e6,#47,#06,#48,#00,#3f
	db #00,#3f,#00,#3f,#80,#00,#00,#01
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
	db #00,#00,#00,#00,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0c,#0b,#0a,#09,#09,#08,#08
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#04,#06,#07,#09
	db #0c,#11,#17,#1d,#15,#10,#0c,#09
	db #06,#05,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0d,#0b,#0a
	db #09,#08,#08,#07,#07,#06,#06,#05
	db #05,#05,#04,#04,#04,#03,#03,#03
	db #02,#02,#02,#02,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#0a,#0b,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0d,#0e,#0d
	db #0c,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#f8,#fd,#00,#f8
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
	db #fe,#00,#f9,#fe,#f8,#fb,#00,#f8
	db #fb,#00,#f8,#fb,#00,#f8,#fb,#00
	db #f8,#fb,#00,#f8,#fb,#00,#f8,#fb
	db #00,#f8,#fb,#00,#f8,#fb,#00,#f8
	db #fb,#00,#f8,#fb,#f9,#fc,#00,#f9
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
	db #f9,#00,#f5,#f9,#00,#ad,#48,#00
	db #20,#49,#00,#cf,#49,#00,#cf,#49
	db #00,#7a,#4a,#00,#7a,#4a,#00,#29
	db #4b,#00,#29,#4b,#00,#cf,#49,#00
	db #cf,#49,#00,#20,#49,#00,#20,#49
	db #00,#d7,#4b,#00,#d7,#4b,#80,#26
	db #48,#00,#88,#4c,#00,#09,#4d,#00
	db #8a,#4d,#00,#8a,#4d,#00,#0b,#4e
	db #00,#0b,#4e,#00,#8c,#4e,#00,#8c
	db #4e,#00,#8a,#4d,#00,#8a,#4d,#00
	db #09,#4d,#00,#09,#4d,#00,#a5,#4e
	db #00,#a5,#4e,#80,#53,#48,#00,#26
	db #4f,#00,#a7,#4f,#00,#28,#50,#00
	db #28,#50,#00,#71,#50,#00,#71,#50
	db #00,#c6,#50,#00,#c6,#50,#00,#28
	db #50,#00,#28,#50,#00,#a7,#4f,#00
	db #a7,#4f,#00,#15,#51,#00,#15,#51
	db #80,#80,#48,#1f,#02,#85,#24,#2b
	db #02,#85,#12,#1f,#02,#85,#24,#2b
	db #02,#85,#12,#1f,#02,#85,#24,#2b
	db #02,#85,#12,#1f,#02,#85,#24,#2b
	db #02,#85,#12,#1b,#02,#85,#2d,#33
	db #82,#1b,#82,#33,#82,#1b,#82,#33
	db #82,#1b,#82,#33,#82,#18,#02,#85
	db #36,#24,#02,#85,#1b,#18,#02,#85
	db #36,#24,#02,#85,#1b,#18,#02,#85
	db #36,#24,#02,#85,#1b,#18,#02,#85
	db #36,#24,#02,#85,#1b,#1d,#02,#85
	db #28,#29,#02,#85,#14,#1d,#02,#85
	db #28,#29,#02,#85,#14,#1d,#02,#85
	db #28,#29,#02,#85,#14,#ba,#11,#ba
	db #01,#ba,#01,#ba,#01,#ff,#b7,#00
	db #9f,#85,#24,#ab,#85,#24,#ab,#85
	db #24,#ba,#11,#9f,#85,#24,#ab,#85
	db #24,#ab,#85,#24,#b7,#10,#9f,#85
	db #24,#ab,#85,#24,#ab,#85,#24,#ba
	db #11,#9f,#85,#24,#ab,#85,#24,#ab
	db #85,#24,#b7,#10,#9b,#85,#2d,#a7
	db #85,#2d,#a7,#85,#2d,#ba,#11,#9b
	db #85,#2d,#a7,#85,#2d,#a7,#85,#2d
	db #b7,#10,#9b,#85,#2d,#a7,#85,#2d
	db #a7,#85,#2d,#ba,#11,#9b,#85,#2d
	db #a7,#85,#2d,#a7,#85,#2d,#b7,#10
	db #98,#85,#36,#a4,#85,#36,#a4,#85
	db #36,#ba,#11,#98,#85,#36,#a4,#85
	db #36,#a4,#85,#36,#b7,#10,#98,#85
	db #36,#a4,#85,#36,#a4,#85,#36,#ba
	db #11,#98,#85,#36,#a4,#85,#36,#a4
	db #85,#36,#b7,#10,#9d,#85,#28,#a9
	db #85,#28,#a9,#85,#28,#ba,#11,#9d
	db #85,#28,#a9,#85,#28,#a9,#85,#28
	db #b7,#10,#9d,#85,#28,#a9,#85,#28
	db #a9,#85,#28,#ba,#11,#9d,#85,#28
	db #ba,#11,#ba,#11,#ff,#b7,#10,#9f
	db #85,#24,#ab,#85,#24,#ab,#85,#24
	db #ba,#11,#9f,#85,#24,#ab,#85,#24
	db #ab,#85,#24,#b7,#10,#9f,#85,#24
	db #ab,#85,#24,#ab,#85,#24,#ba,#11
	db #9f,#85,#24,#ab,#85,#24,#ab,#85
	db #24,#b7,#10,#9b,#85,#2d,#a7,#85
	db #2d,#a7,#85,#2d,#ba,#11,#9b,#85
	db #2d,#a7,#85,#2d,#a7,#85,#2d,#b7
	db #10,#ba,#11,#a7,#85,#2d,#b7,#10
	db #ba,#11,#9b,#85,#2d,#ba,#11,#ba
	db #11,#b7,#10,#9d,#85,#28,#a9,#85
	db #28,#a9,#85,#28,#ba,#11,#9d,#85
	db #28,#a9,#85,#28,#a9,#85,#28,#b7
	db #10,#9d,#85,#28,#a9,#85,#28,#a9
	db #85,#28,#ba,#11,#9d,#85,#28,#a9
	db #85,#28,#a9,#85,#28,#b7,#10,#9f
	db #85,#24,#ab,#85,#24,#ab,#85,#24
	db #ba,#11,#9f,#85,#24,#ab,#85,#24
	db #ab,#85,#24,#b7,#10,#9b,#85,#2d
	db #a7,#85,#2d,#a7,#85,#2d,#ba,#11
	db #a9,#85,#28,#ba,#11,#ba,#11,#ff
	db #b7,#10,#9a,#85,#30,#a6,#85,#30
	db #a6,#85,#30,#ba,#11,#9a,#85,#30
	db #a6,#85,#30,#a6,#85,#30,#b7,#10
	db #9a,#85,#30,#a6,#85,#30,#a6,#85
	db #30,#ba,#11,#9a,#85,#30,#a6,#85
	db #30,#a6,#85,#30,#b7,#10,#9b,#85
	db #2d,#a7,#85,#2d,#a7,#85,#2d,#ba
	db #11,#9b,#85,#2d,#a7,#85,#2d,#a7
	db #85,#2d,#b7,#10,#9b,#85,#2d,#a7
	db #85,#2d,#a7,#85,#2d,#ba,#11,#9b
	db #85,#2d,#a7,#85,#2d,#a7,#85,#2d
	db #b7,#10,#9d,#85,#28,#a9,#85,#28
	db #a9,#85,#28,#ba,#11,#9d,#85,#28
	db #a9,#85,#28,#a9,#85,#28,#b7,#10
	db #9d,#85,#28,#a9,#85,#28,#a9,#85
	db #28,#ba,#11,#9d,#85,#28,#a9,#85
	db #28,#a9,#85,#28,#b7,#10,#a2,#85
	db #1e,#ae,#85,#1e,#ae,#85,#1e,#ba
	db #11,#a2,#85,#1e,#ae,#85,#1e,#ae
	db #85,#1e,#b7,#10,#9d,#85,#28,#a9
	db #85,#28,#a9,#85,#28,#ba,#11,#9d
	db #85,#28,#ba,#11,#ba,#11,#ff,#b7
	db #10,#a2,#85,#1e,#ae,#85,#1e,#ae
	db #85,#1e,#ba,#11,#a2,#85,#1e,#ae
	db #85,#1e,#ae,#85,#1e,#b7,#10,#a2
	db #85,#1e,#ae,#85,#1e,#ae,#85,#1e
	db #ba,#11,#a2,#85,#1e,#ae,#85,#1e
	db #ae,#85,#1e,#b7,#10,#a4,#85,#1b
	db #b0,#85,#1b,#b0,#85,#1b,#ba,#11
	db #a4,#85,#1b,#b0,#85,#1b,#b0,#85
	db #1b,#b7,#10,#a4,#85,#1b,#b0,#85
	db #1b,#b0,#85,#1b,#ba,#11,#a4,#85
	db #1b,#b0,#85,#1b,#ba,#11,#b7,#10
	db #9b,#85,#2d,#a7,#85,#2d,#a7,#85
	db #2d,#ba,#11,#9b,#85,#2d,#a7,#85
	db #2d,#a7,#85,#2d,#b7,#10,#9b,#85
	db #2d,#a7,#85,#2d,#a7,#85,#2d,#ba
	db #11,#9b,#85,#2d,#a7,#85,#2d,#a7
	db #85,#2d,#b7,#10,#9d,#85,#28,#a9
	db #85,#28,#a9,#85,#28,#ba,#11,#9d
	db #85,#28,#a9,#85,#28,#a9,#85,#28
	db #b7,#10,#9d,#85,#28,#a9,#85,#28
	db #a9,#85,#28,#ba,#11,#9d,#85,#28
	db #ba,#11,#ba,#11,#ff,#b7,#10,#9f
	db #85,#24,#ab,#85,#24,#ab,#85,#24
	db #ba,#11,#9f,#85,#24,#ab,#85,#24
	db #ab,#85,#24,#b7,#10,#9f,#85,#24
	db #ab,#85,#24,#ab,#85,#24,#ba,#11
	db #9f,#85,#24,#ab,#85,#24,#ab,#85
	db #24,#b7,#10,#9b,#85,#2d,#a7,#85
	db #2d,#a7,#85,#2d,#ba,#11,#9b,#85
	db #2d,#a7,#85,#2d,#a7,#85,#2d,#b7
	db #10,#9d,#85,#28,#a9,#85,#28,#a9
	db #85,#28,#ba,#11,#9d,#85,#28,#a9
	db #85,#28,#a9,#85,#28,#b7,#10,#a2
	db #85,#1e,#ae,#85,#1e,#ae,#85,#1e
	db #ba,#11,#a2,#85,#1e,#ae,#85,#1e
	db #ae,#85,#1e,#b7,#10,#a2,#85,#1e
	db #ae,#85,#1e,#ae,#85,#1e,#ba,#11
	db #a2,#85,#1e,#ae,#85,#1e,#ae,#85
	db #1e,#b7,#10,#a4,#85,#1b,#b0,#85
	db #1b,#b0,#85,#1b,#ba,#11,#a4,#85
	db #1b,#b0,#85,#1b,#b0,#85,#1b,#b7
	db #10,#a4,#85,#1b,#b0,#85,#1b,#b0
	db #85,#1b,#ba,#11,#a4,#85,#1b,#b0
	db #85,#1b,#b0,#85,#1b,#ff,#c6,#12
	db #c6,#02,#c8,#02,#c8,#02,#c6,#02
	db #c6,#02,#c5,#02,#c5,#02,#c6,#02
	db #c6,#02,#c8,#02,#c8,#02,#c6,#02
	db #c6,#02,#c5,#02,#c5,#02,#c6,#02
	db #c6,#02,#c8,#02,#c8,#02,#c6,#02
	db #c6,#02,#c5,#02,#c5,#02,#c6,#02
	db #c6,#02,#c8,#02,#c8,#02,#c6,#02
	db #c6,#02,#c5,#02,#c5,#02,#c6,#02
	db #c6,#02,#c8,#02,#c8,#02,#c6,#02
	db #c6,#02,#c5,#02,#c5,#02,#c6,#02
	db #c6,#02,#c8,#02,#c8,#02,#c6,#02
	db #c6,#02,#c5,#02,#c5,#02,#c5,#02
	db #c5,#02,#c6,#02,#c6,#02,#c5,#02
	db #c5,#02,#c3,#02,#c3,#02,#c5,#02
	db #c5,#02,#c6,#02,#c6,#02,#c5,#02
	db #c5,#02,#c3,#02,#c3,#02,#ff,#c6
	db #12,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c5
	db #02,#c6,#02,#c5,#04,#c3,#04,#c5
	db #02,#c6,#02,#c5,#04,#c3,#04,#c5
	db #02,#c6,#02,#c5,#04,#c3,#04,#c5
	db #02,#c6,#02,#c5,#02,#c3,#02,#ff
	db #c6,#12,#c5,#02,#c3,#04,#c5,#04
	db #c6,#02,#c5,#02,#c3,#04,#c5,#04
	db #c6,#02,#c5,#02,#c3,#04,#c5,#04
	db #c6,#02,#c5,#02,#c3,#04,#c5,#04
	db #cb,#02,#c6,#02,#c3,#04,#c6,#04
	db #cb,#02,#c6,#02,#c3,#04,#c6,#04
	db #cb,#02,#c6,#02,#c3,#04,#c6,#02
	db #cb,#02,#c6,#02,#c3,#02,#c6,#02
	db #c8,#02,#c5,#02,#c1,#04,#c5,#04
	db #c8,#02,#c5,#02,#c1,#04,#c5,#04
	db #c8,#02,#c5,#02,#c1,#04,#c5,#04
	db #c8,#02,#c5,#02,#c1,#04,#c5,#04
	db #ca,#02,#c6,#02,#c3,#04,#c6,#04
	db #ca,#02,#c6,#02,#c3,#04,#c6,#04
	db #cb,#02,#c6,#02,#c3,#04,#c6,#04
	db #cd,#02,#c8,#04,#c5,#02,#c8,#02
	db #ff,#c5,#12,#c2,#02,#be,#04,#c2
	db #04,#c5,#02,#c2,#02,#be,#04,#c2
	db #04,#c5,#02,#c2,#02,#be,#04,#c2
	db #04,#c5,#02,#c2,#02,#be,#04,#c2
	db #04,#c6,#02,#c3,#02,#bf,#04,#c3
	db #04,#c6,#02,#c3,#02,#bf,#04,#c3
	db #04,#c6,#02,#c3,#02,#bf,#04,#c3
	db #04,#c6,#02,#c3,#02,#bf,#04,#c3
	db #04,#c8,#02,#c5,#02,#c1,#04,#c5
	db #04,#c8,#02,#c5,#02,#c1,#04,#c5
	db #04,#c8,#02,#c5,#02,#c1,#04,#c5
	db #04,#c8,#02,#c5,#02,#c1,#04,#c5
	db #04,#ca,#02,#c6,#02,#c1,#04,#c6
	db #04,#ca,#02,#c6,#02,#c1,#04,#c6
	db #04,#c8,#02,#c5,#02,#c1,#04,#c5
	db #04,#c8,#02,#c5,#04,#c1,#02,#c5
	db #02,#ff,#52,#10,#f3,#08,#48,#8c
	db #c8,#f3,#08,#ca,#f3,#04,#c8,#f3
	db #08,#ca,#f3,#04,#4b,#10,#f3,#08
	db #4d,#90,#ff,#c3,#12,#be,#02,#ba
	db #04,#be,#04,#c3,#02,#be,#02,#ba
	db #04,#be,#04,#c3,#02,#be,#02,#ba
	db #04,#be,#04,#c3,#02,#be,#02,#c6
	db #04,#c3,#04,#cb,#02,#c6,#02,#c3
	db #04,#c6,#04,#cb,#02,#c6,#02,#c3
	db #04,#c6,#04,#c8,#02,#c5,#02,#c1
	db #04,#c5,#04,#c8,#02,#c5,#02,#cd
	db #04,#c8,#04,#ca,#02,#c6,#02,#c1
	db #04,#c6,#04,#ca,#02,#c6,#02,#c1
	db #04,#c6,#04,#ca,#02,#c6,#02,#c1
	db #04,#c6,#04,#ca,#02,#c6,#02,#cd
	db #04,#ca,#04,#cc,#02,#c8,#02,#c3
	db #04,#c8,#04,#cc,#02,#c8,#02,#c3
	db #04,#c8,#04,#cc,#02,#c8,#02,#c3
	db #04,#c8,#04,#cc,#02,#c8,#02,#c3
	db #04,#c8,#04,#ff,#c3,#12,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c1,#02,#c1,#02
	db #c1,#02,#c1,#02,#c1,#02,#c1,#02
	db #c1,#02,#c1,#02,#c1,#02,#c1,#02
	db #c1,#02,#c1,#02,#c1,#02,#c1,#02
	db #c1,#02,#c1,#02,#ff,#c3,#12,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c1,#02,#c1
	db #02,#c1,#02,#c1,#02,#c1,#02,#c1
	db #02,#c1,#02,#c1,#02,#c1,#02,#c1
	db #02,#c1,#02,#c1,#02,#c1,#02,#c1
	db #02,#c1,#02,#c1,#02,#ff,#52,#04
	db #f5,#01,#51,#02,#f5,#04,#4f,#04
	db #f5,#0b,#4f,#82,#51,#02,#f5,#04
	db #52,#02,#f5,#01,#57,#04,#f5,#08
	db #56,#04,#f5,#0c,#54,#04,#f5,#0b
	db #52,#04,#f5,#02,#54,#84,#51,#02
	db #f5,#03,#4d,#04,#f5,#08,#4d,#82
	db #4f,#02,#f5,#04,#51,#02,#f5,#03
	db #52,#04,#f5,#01,#51,#04,#f5,#04
	db #4f,#04,#f5,#03,#51,#84,#ff,#51
	db #04,#f5,#02,#4e,#02,#f5,#03,#4a
	db #04,#f5,#08,#4e,#02,#f5,#03,#51
	db #02,#f5,#02,#54,#02,#f5,#0b,#52
	db #04,#f5,#02,#4f,#02,#f5,#03,#4b
	db #04,#f5,#08,#4b,#82,#4f,#02,#f5
	db #03,#52,#02,#f5,#02,#54,#84,#51
	db #02,#f5,#03,#4d,#04,#f5,#08,#51
	db #02,#f5,#03,#54,#02,#f5,#02,#57
	db #02,#f5,#08,#56,#04,#f5,#03,#52
	db #02,#f5,#08,#54,#04,#f5,#02,#4d
	db #06,#f5,#08,#ff,#56,#04,#f5,#03
	db #52,#02,#f5,#08,#4d,#04,#f5,#02
	db #52,#02,#f5,#08,#56,#02,#f5,#03
	db #59,#02,#f5,#02,#58,#04,#f5,#03
	db #54,#02,#f5,#08,#4f,#06,#f5,#02
	db #4f,#82,#51,#02,#f5,#04,#52,#04
	db #f5,#02,#4f,#02,#f5,#03,#4b,#04
	db #f5,#08,#4f,#02,#f5,#03,#52,#02
	db #f5,#02,#56,#02,#f5,#0a,#54,#04
	db #f5,#02,#51,#02,#f5,#03,#4d,#0a
	db #f5,#08,#ff,#4f,#10,#f5,#0b,#4f
	db #08,#f5,#03,#51,#84,#4d,#04,#f5
	db #08,#4a,#10,#f5,#03,#48,#04,#f5
	db #08,#4a,#04,#f5,#04,#4c,#04,#f5
	db #03,#48,#04,#f5,#08,#ff
;
.music_info
	db "Colors (1993)(Rebels)()",0
	db "ST-Module",0

	read "music_end.asm"
