; Music of Impact Issue 3 (1994)(Public Domain)()(ST-Module)
; Ripped by Megachur the 01/01/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "IMPACTI3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2021
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
	ld a,#05
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
	dw l4826,l4859,l488c
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
	db #0f,#00,#00,#00,#00,#00,#00,#00
.l43fe equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#08,#00,#00,#00,#00,#00
.l440c equ $ + 4
	db #00,#df,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l441a equ $ + 2
	db #00,#00,#00,#00,#02,#03,#09,#00
	db #00,#00,#00,#00,#00,#e7,#00,#00
.l4428
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4436 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#05,#0a,#00,#00,#00,#00,#00
.l4444 equ $ + 4
	db #00,#ef,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4452 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#53,#54,#2d,#4d
.l4466 equ $ + 6
	db #6f,#64,#75,#6c,#65,#2e,#00,#3f
	db #00,#3f,#00,#3f,#00,#00,#06,#45
	db #46,#45,#66,#45,#00,#00,#86,#45
	db #c6,#45,#e6,#45,#00,#00,#ff,#3e
	db #21,#d1,#70,#9d,#23,#56,#06,#46
	db #46,#46,#66,#46,#00,#00,#fe,#3e
	db #ca,#3f,#98,#3d,#50,#30,#86,#46
	db #c6,#46,#e6,#46,#00,#00,#06,#46
	db #06,#47,#e6,#45,#18,#07,#26,#47
	db #66,#47,#e6,#45,#18,#07,#09,#15
	db #46,#86,#66,#84,#08,#18,#00,#b9
	db #00,#b9,#00,#b9,#00,#00,#e6,#03
	db #26,#04,#46,#04,#00,#00,#86,#85
	db #66,#86,#66,#84,#00,#00,#06,#03
	db #e6,#04,#66,#03,#00,#00,#06,#05
	db #46,#05,#66,#03,#08,#18,#06,#83
.l44e6 equ $ + 6
	db #46,#83,#66,#83,#00,#00,#00,#b9
	db #66,#05,#86,#47,#a6,#47,#c6,#47
	db #e6,#47,#06,#48,#00,#b9,#00,#b9
	db #00,#b9,#00,#b9,#00,#b9,#00,#b9
	db #00,#b9,#00,#b9,#00,#b9,#00,#00
	db #80,#00,#40,#01,#a0,#01,#40,#02
	db #e8,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0d,#0d,#0b,#0b,#09,#08,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0e,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#38,#00
	db #60,#00,#b0,#00,#18,#01,#48,#01
	db #80,#01,#c8,#01,#10,#02,#58,#02
	db #b0,#02,#00,#00,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0e,#0d,#0c,#0b,#09,#07,#06,#03
	db #01,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#06
	db #06,#05,#04,#04,#03,#02,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0e,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#0a,#09
	db #09,#09,#08,#08,#08,#07,#07,#07
	db #06,#06,#06,#05,#05,#05,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0b,#0a
	db #09,#07,#05,#07,#09,#0b,#0b,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#09,#09,#09,#09,#09,#00,#fb
	db #f8,#00,#fb,#f8,#00,#fb,#f8,#00
	db #fb,#f8,#00,#fb,#f8,#00,#fb,#f8
	db #00,#fb,#f8,#00,#fb,#f8,#00,#fb
	db #f8,#00,#fb,#f8,#00,#fb,#00,#fb
	db #f7,#00,#fb,#f7,#00,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#f7,#00,#fb,#f7
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #f7,#00,#fb,#f7,#00,#fb,#00,#fd
	db #f8,#00,#fd,#f8,#00,#fd,#f8,#00
	db #fd,#f8,#00,#fd,#f8,#00,#fd,#f8
	db #00,#fd,#f8,#00,#fd,#f8,#00,#fd
	db #f8,#00,#fd,#f8,#00,#fd,#00,#fd
	db #f9,#00,#fd,#f9,#00,#fd,#f9,#00
	db #fd,#f9,#00,#fd,#f9,#00,#fd,#f9
	db #00,#fd,#f9,#00,#fd,#f9,#00,#fd
	db #f9,#00,#fd,#f9,#00,#fd,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
.l4826 equ $ + 6
	db #18,#00,#0c,#18,#00,#0c,#00,#bf
	db #48,#00,#06,#49,#00,#77,#49,#00
	db #e8,#49,#00,#bf,#48,#00,#59,#4a
	db #00,#ca,#4a,#00,#3b,#4b,#00,#ac
	db #4b,#00,#0e,#4c,#00,#77,#49,#00
	db #e8,#49,#00,#bf,#48,#00,#59,#4a
	db #00,#ca,#4a,#00,#3b,#4b,#80,#26
.l4859 equ $ + 1
	db #48,#00,#77,#4c,#00,#a9,#4c,#00
	db #d4,#4c,#00,#fc,#4c,#00,#77,#4c
	db #00,#21,#4d,#00,#4b,#4d,#00,#7c
	db #4d,#00,#a5,#4d,#00,#02,#4e,#00
	db #d4,#4c,#00,#fc,#4c,#00,#77,#4c
	db #00,#21,#4d,#00,#4b,#4d,#00,#7c
.l488c equ $ + 4
	db #4d,#80,#59,#48,#00,#60,#4e,#00
	db #96,#4e,#00,#f3,#4e,#00,#51,#4f
	db #00,#b3,#4f,#00,#96,#4e,#00,#10
	db #50,#00,#6e,#50,#00,#60,#4e,#00
	db #d0,#50,#00,#f3,#4e,#00,#51,#4f
	db #00,#b3,#4f,#00,#96,#4e,#00,#10
	db #50,#00,#6e,#50,#80,#8c,#48,#27
	db #02,#17,#27,#02,#07,#27,#82,#27
	db #82,#27,#82,#27,#82,#27,#82,#27
	db #82,#2c,#82,#2c,#82,#2c,#82,#2c
	db #82,#2c,#82,#2c,#82,#2c,#82,#2c
	db #82,#2a,#82,#2a,#82,#2a,#82,#2a
	db #82,#29,#82,#29,#82,#29,#82,#29
	db #82,#33,#02,#f7,#06,#27,#02,#17
	db #27,#02,#07,#27,#82,#27,#82,#27
	db #82,#27,#82,#27,#82,#ff,#27,#02
	db #17,#4b,#02,#f2,#02,#27,#02,#17
	db #4b,#02,#f2,#02,#27,#02,#17,#4b
	db #02,#f2,#02,#27,#02,#17,#4b,#02
	db #f2,#02,#2c,#02,#17,#50,#02,#f2
	db #03,#2c,#02,#17,#50,#02,#f2,#03
	db #2c,#02,#17,#50,#02,#f2,#03,#2c
	db #02,#17,#50,#02,#f2,#03,#2a,#02
	db #17,#4e,#02,#f2,#04,#2a,#02,#17
	db #4e,#02,#f2,#04,#29,#02,#17,#4d
	db #02,#f2,#05,#29,#02,#17,#4d,#02
	db #f2,#05,#27,#02,#17,#4b,#02,#f2
	db #02,#27,#02,#17,#4b,#02,#f2,#02
	db #27,#02,#17,#4b,#02,#f2,#02,#27
	db #02,#17,#4b,#02,#f2,#02,#ff,#25
	db #02,#12,#49,#02,#f7,#02,#25,#02
	db #12,#49,#02,#f7,#02,#25,#02,#12
	db #49,#02,#f7,#02,#25,#02,#12,#49
	db #02,#f7,#02,#2a,#02,#12,#4e,#02
	db #f7,#02,#2a,#02,#12,#4e,#02,#f7
	db #02,#2a,#02,#12,#4e,#02,#f7,#02
	db #2a,#02,#12,#4e,#02,#f7,#02,#2c
	db #02,#12,#50,#02,#f7,#02,#2c,#02
	db #12,#50,#02,#f7,#02,#2c,#02,#12
	db #50,#02,#f7,#02,#2c,#02,#12,#50
	db #02,#f7,#02,#31,#02,#12,#49,#02
	db #f7,#02,#31,#02,#12,#49,#02,#f7
	db #02,#31,#02,#12,#49,#02,#f7,#02
	db #31,#02,#12,#49,#02,#f7,#02,#ff
	db #27,#02,#17,#4b,#02,#f2,#02,#27
	db #02,#17,#4b,#02,#f2,#02,#27,#02
	db #17,#4b,#02,#f2,#02,#27,#02,#17
	db #4b,#02,#f2,#02,#2c,#02,#17,#50
	db #02,#f2,#03,#2c,#02,#17,#50,#02
	db #f2,#03,#2c,#02,#17,#50,#02,#f2
	db #03,#2c,#02,#17,#50,#02,#f2,#03
	db #27,#02,#17,#4b,#02,#f2,#02,#27
	db #02,#17,#4b,#02,#f2,#02,#27,#02
	db #17,#4b,#02,#f2,#02,#27,#02,#17
	db #4b,#02,#f2,#02,#27,#02,#17,#4b
	db #02,#f2,#02,#27,#02,#17,#4b,#02
	db #f2,#02,#27,#02,#17,#4b,#02,#f2
	db #02,#27,#02,#17,#4b,#02,#f2,#02
	db #ff,#27,#02,#17,#4b,#02,#f2,#02
	db #27,#02,#17,#4b,#02,#f2,#02,#27
	db #02,#17,#4b,#02,#f2,#02,#27,#02
	db #17,#4b,#02,#f2,#02,#2c,#02,#17
	db #50,#02,#f2,#03,#2c,#02,#17,#50
	db #02,#f2,#03,#2c,#02,#17,#50,#02
	db #f2,#03,#2c,#02,#17,#50,#02,#f2
	db #03,#2a,#02,#17,#4e,#02,#f2,#04
	db #2a,#02,#17,#4e,#02,#f2,#04,#29
	db #02,#17,#4d,#02,#f2,#05,#29,#02
	db #17,#4d,#02,#f2,#05,#27,#02,#17
	db #4b,#02,#f2,#02,#27,#02,#17,#4b
	db #02,#f2,#02,#27,#02,#17,#4b,#02
	db #f2,#02,#27,#02,#17,#4b,#02,#f2
	db #02,#ff,#25,#02,#12,#49,#02,#f7
	db #02,#25,#02,#12,#49,#02,#f7,#02
	db #25,#02,#12,#49,#02,#f7,#02,#25
	db #02,#12,#49,#02,#f7,#02,#2a,#02
	db #12,#4e,#02,#f7,#02,#2a,#02,#12
	db #4e,#02,#f7,#02,#2a,#02,#12,#4e
	db #02,#f7,#02,#2a,#02,#12,#4e,#02
	db #f7,#02,#2c,#02,#12,#50,#02,#f7
	db #02,#2c,#02,#12,#50,#02,#f7,#02
	db #2c,#02,#12,#50,#02,#f7,#02,#2c
	db #02,#12,#50,#02,#f7,#02,#31,#02
	db #12,#49,#02,#f7,#02,#31,#02,#12
	db #49,#02,#f7,#02,#31,#02,#12,#49
	db #02,#f7,#02,#31,#02,#12,#49,#02
	db #f7,#02,#ff,#27,#02,#17,#4b,#02
	db #f2,#02,#27,#02,#17,#4b,#02,#f2
	db #02,#27,#02,#17,#4b,#02,#f2,#02
	db #27,#02,#17,#4b,#02,#f2,#02,#2c
	db #02,#17,#50,#02,#f2,#03,#2c,#02
	db #17,#50,#02,#f2,#03,#2c,#02,#17
	db #50,#02,#f2,#03,#2c,#02,#17,#50
	db #02,#f2,#03,#27,#02,#17,#4b,#02
	db #f2,#02,#27,#02,#17,#4b,#02,#f2
	db #02,#27,#02,#17,#4b,#02,#f2,#02
	db #27,#02,#17,#4b,#02,#f2,#02,#27
	db #02,#17,#4b,#02,#f2,#02,#27,#02
	db #17,#4b,#02,#f2,#02,#27,#02,#17
	db #4b,#02,#f2,#02,#27,#02,#17,#4b
	db #02,#f2,#02,#ff,#ba,#01,#ba,#01
	db #ba,#01,#ba,#01,#3a,#02,#06,#3a
	db #02,#01,#ba,#01,#ba,#01,#3a,#82
	db #3a,#02,#06,#3a,#02,#01,#3a,#82
	db #6b,#02,#04,#3a,#02,#06,#ba,#01
	db #ba,#01,#ba,#01,#ba,#01,#3a,#02
	db #06,#3a,#82,#6b,#02,#04,#3a,#02
	db #01,#6b,#02,#04,#3a,#02,#06,#3a
	db #02,#01,#ba,#01,#ba,#01,#3a,#82
	db #3a,#02,#06,#6b,#02,#04,#3a,#02
	db #01,#6b,#02,#04,#3a,#02,#06,#ba
	db #01,#3a,#82,#ba,#01,#3a,#82,#3a
	db #02,#06,#6b,#02,#04,#ff,#ba,#01
	db #ba,#01,#ba,#01,#ba,#01,#3a,#02
	db #06,#3a,#02,#01,#ba,#01,#ba,#01
	db #3a,#82,#3a,#02,#06,#3a,#02,#01
	db #3a,#82,#6b,#02,#04,#3a,#02,#06
	db #ba,#01,#ba,#01,#ba,#01,#ba,#01
	db #3a,#02,#06,#3a,#82,#6b,#02,#04
	db #3a,#02,#01,#6b,#02,#04,#3a,#02
	db #06,#3a,#02,#01,#ba,#01,#ba,#01
	db #3a,#82,#3a,#02,#06,#6b,#02,#04
	db #c6,#01,#c6,#01,#c6,#01,#c6,#01
	db #c1,#01,#c1,#01,#c1,#01,#c1,#01
	db #bd,#01,#bd,#01,#bd,#01,#bd,#01
	db #3a,#02,#06,#6b,#02,#04,#ff,#3f
	db #04,#18,#42,#02,#08,#3f,#82,#45
	db #82,#46,#82,#4b,#84,#47,#82,#46
	db #82,#44,#88,#46,#82,#44,#82,#42
	db #84,#44,#82,#42,#82,#41,#82,#3f
	db #82,#3d,#84,#3f,#84,#36,#02,#f7
	db #06,#33,#02,#07,#45,#82,#3a,#86
	db #ff,#3f,#04,#18,#42,#02,#08,#3f
	db #82,#45,#82,#46,#82,#4b,#84,#47
	db #82,#46,#82,#44,#88,#46,#82,#44
	db #82,#42,#84,#44,#82,#42,#82,#41
	db #82,#3f,#82,#3d,#84,#3f,#8c,#3d
	db #04,#f8,#06,#ff,#49,#04,#f8,#06
	db #49,#04,#08,#49,#84,#47,#84,#46
	db #82,#47,#82,#44,#82,#46,#82,#42
	db #8a,#44,#84,#44,#82,#50,#84,#4e
	db #84,#4d,#82,#4e,#82,#4b,#82,#4d
	db #82,#49,#88,#ff,#3f,#04,#18,#42
	db #02,#08,#3f,#82,#45,#82,#46,#82
	db #4b,#84,#47,#82,#46,#82,#44,#88
	db #46,#82,#44,#82,#42,#84,#3f,#88
	db #46,#82,#44,#82,#42,#84,#3f,#8c
	db #ff,#3f,#04,#18,#42,#02,#08,#3f
	db #82,#45,#82,#46,#82,#4b,#84,#47
	db #82,#46,#82,#44,#88,#42,#82,#44
	db #82,#46,#84,#3a,#82,#3a,#82,#3a
	db #82,#3c,#82,#3e,#84,#3f,#8c,#3d
	db #04,#18,#ff,#49,#04,#18,#49,#04
	db #08,#49,#84,#47,#84,#46,#82,#47
	db #82,#44,#82,#46,#82,#42,#82,#42
	db #82,#41,#82,#42,#84,#44,#84,#44
	db #82,#50,#84,#4e,#82,#cd,#08,#ce
	db #08,#4d,#82,#4e,#82,#4b,#82,#4d
	db #82,#49,#88,#ff,#3f,#04,#18,#42
	db #02,#08,#3f,#82,#45,#82,#46,#82
	db #4b,#84,#47,#82,#46,#82,#44,#88
	db #46,#82,#44,#82,#42,#84,#3f,#88
	db #c6,#08,#ca,#08,#c8,#08,#ca,#08
	db #4b,#84,#3f,#8c,#ff,#3a,#02,#01
	db #6b,#02,#04,#3a,#02,#06,#3a,#02
	db #01,#ba,#01,#ba,#01,#3a,#82,#3a
	db #02,#06,#3a,#02,#01,#3a,#82,#6b
	db #02,#04,#3a,#02,#06,#ba,#01,#ba
	db #01,#ba,#01,#ba,#01,#3a,#02,#06
	db #3a,#82,#6b,#02,#04,#3a,#02,#01
	db #6b,#02,#04,#3a,#02,#06,#3a,#02
	db #01,#ba,#01,#ba,#01,#3a,#82,#3a
	db #02,#06,#6b,#02,#04,#3a,#02,#01
	db #6b,#02,#04,#3a,#02,#06,#ba,#01
	db #3a,#82,#ba,#01,#3a,#84,#6b,#02
	db #14,#ff,#3a,#02,#01,#6b,#02,#04
	db #3a,#02,#06,#3a,#02,#01,#ba,#01
	db #ba,#01,#3a,#82,#3a,#02,#06,#3a
	db #02,#01,#3a,#82,#6b,#02,#04,#3a
	db #02,#06,#ba,#01,#ba,#01,#ba,#01
	db #ba,#01,#3a,#02,#06,#3a,#82,#6b
	db #02,#04,#3a,#02,#01,#6b,#02,#04
	db #3a,#02,#06,#3a,#02,#01,#ba,#01
	db #ba,#01,#3a,#82,#3a,#02,#06,#6b
	db #02,#04,#3a,#02,#01,#6b,#02,#04
	db #3a,#02,#06,#ba,#01,#3a,#82,#ba
	db #01,#3a,#82,#3d,#04,#f8,#06,#ff
	db #3a,#04,#11,#6b,#04,#04,#6b,#84
	db #6b,#82,#3a,#02,#01,#3a,#84,#6b
	db #04,#04,#6b,#84,#6b,#84,#3a,#04
	db #01,#6b,#02,#04,#3a,#02,#01,#3a
	db #84,#6b,#04,#04,#3a,#04,#01,#6b
	db #02,#04,#ba,#01,#ba,#01,#3a,#82
	db #6b,#04,#04,#6b,#82,#ff,#3a,#02
	db #01,#6b,#02,#04,#3a,#02,#06,#3a
	db #02,#01,#ba,#01,#ba,#01,#3a,#82
	db #3a,#02,#06,#3a,#02,#01,#3a,#82
	db #6b,#02,#04,#3a,#02,#06,#ba,#01
	db #ba,#01,#ba,#01,#ba,#01,#3a,#02
	db #06,#3a,#82,#6b,#02,#04,#3a,#02
	db #01,#6b,#02,#04,#3a,#02,#06,#3a
	db #02,#01,#ba,#01,#ba,#01,#3a,#82
	db #3a,#02,#06,#6b,#02,#04,#3a,#02
	db #01,#6b,#02,#04,#3a,#02,#06,#ba
	db #01,#3a,#82,#ba,#01,#3a,#84,#6b
	db #02,#14,#ff,#3a,#02,#11,#6b,#02
	db #04,#3a,#02,#06,#3a,#02,#01,#ba
	db #01,#ba,#01,#3a,#82,#3a,#02,#06
	db #3a,#02,#01,#3a,#82,#6b,#02,#04
	db #3a,#02,#06,#ba,#01,#3a,#82,#ba
	db #01,#3a,#02,#06,#3a,#82,#6b,#02
	db #04,#3a,#02,#01,#6b,#02,#04,#3a
	db #02,#06,#3a,#02,#01,#ba,#01,#ba
	db #01,#3a,#82,#3a,#02,#06,#6b,#02
	db #04,#3a,#02,#01,#6b,#02,#04,#3a
	db #02,#06,#ba,#01,#3a,#82,#ba,#01
	db #3a,#82,#3a,#02,#06,#6b,#02,#04
	db #ff,#ba,#01,#ba,#01,#ba,#01,#ba
	db #01,#3a,#02,#06,#3a,#02,#01,#ba
	db #01,#ba,#01,#3a,#82,#3a,#02,#06
	db #3a,#02,#01,#3a,#82,#6b,#02,#04
	db #3a,#02,#06,#ba,#01,#ba,#01,#ba
	db #01,#ba,#01,#3a,#02,#06,#3a,#82
	db #6b,#02,#04,#3a,#02,#01,#6b,#02
	db #04,#3a,#02,#06,#3a,#02,#01,#ba
	db #01,#ba,#01,#3a,#82,#3a,#02,#06
	db #6b,#02,#04,#3a,#02,#01,#6b,#02
	db #04,#3a,#02,#06,#ba,#01,#3a,#82
	db #ba,#01,#3a,#82,#3a,#02,#06,#6b
	db #02,#04,#ff,#3a,#02,#01,#6b,#02
	db #04,#3a,#02,#06,#3a,#02,#01,#ba
	db #01,#ba,#01,#3a,#82,#3a,#02,#06
	db #3a,#02,#01,#3a,#82,#6b,#02,#04
	db #3a,#02,#06,#ba,#01,#ba,#01,#ba
	db #01,#ba,#01,#3a,#02,#06,#3a,#82
	db #6b,#02,#04,#3a,#02,#01,#6b,#02
	db #04,#3a,#02,#06,#3a,#02,#01,#ba
	db #01,#ba,#01,#3a,#82,#3a,#02,#06
	db #6b,#02,#04,#3a,#02,#01,#6b,#02
	db #04,#3a,#02,#06,#ba,#01,#3a,#82
	db #ba,#01,#3a,#84,#6b,#02,#14,#ff
	db #3a,#02,#11,#6b,#02,#04,#3a,#02
	db #06,#3a,#02,#01,#ba,#01,#ba,#01
	db #3a,#82,#3a,#02,#06,#3a,#02,#01
	db #3a,#82,#6b,#02,#04,#3a,#02,#06
	db #ba,#01,#3a,#82,#ba,#01,#3a,#02
	db #06,#3a,#82,#6b,#02,#04,#3a,#02
	db #01,#6b,#02,#04,#3a,#02,#06,#3a
	db #02,#01,#ba,#01,#ba,#01,#3a,#82
	db #3a,#02,#06,#6b,#02,#04,#3a,#02
	db #01,#6b,#02,#04,#3a,#02,#06,#ba
	db #01,#3a,#82,#ba,#01,#3a,#82,#3a
	db #02,#06,#6b,#02,#04,#ff,#ba,#01
	db #ba,#01,#ba,#01,#ba,#01,#3a,#02
	db #06,#3a,#02,#01,#ba,#01,#ba,#01
	db #3a,#82,#3a,#02,#06,#3a,#02,#01
	db #3a,#82,#6b,#02,#04,#3a,#02,#06
	db #ba,#01,#ba,#01,#ba,#01,#ba,#01
	db #3a,#02,#06,#3a,#82,#6b,#02,#04
	db #3a,#02,#01,#6b,#02,#04,#3a,#02
	db #06,#3a,#02,#01,#ba,#01,#ba,#01
	db #3a,#82,#3a,#02,#06,#6b,#02,#04
	db #3a,#02,#01,#6b,#02,#04,#3a,#02
	db #06,#ba,#01,#3a,#82,#ba,#01,#3a
	db #82,#3a,#02,#06,#6b,#02,#04,#ff
	db #3a,#04,#11,#6b,#04,#04,#6b,#84
	db #6b,#82,#3a,#02,#01,#3a,#84,#6b
	db #04,#04,#6b,#84,#6b,#84,#3a,#04
	db #01,#6b,#02,#04,#3a,#02,#01,#3a
	db #84,#6b,#04,#04,#c6,#01,#c6,#01
	db #c6,#01,#c6,#01,#c1,#01,#c1,#01
	db #c1,#01,#c1,#01,#bd,#01,#bd,#01
	db #bd,#01,#3d,#83,#6b,#02,#04,#ff
;
.music_info
	db "Impact Issue 3 (1994)(Public Domain)()",0
	db "ST-Module",0

	read "music_end.asm"