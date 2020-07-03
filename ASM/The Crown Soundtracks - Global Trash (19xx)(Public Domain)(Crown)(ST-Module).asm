; Music of The Crown Soundtracks - Global Trash (19xx)(Public Domain)(Crown)(ST-Module)
; Ripped by Megachur the 01/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TCSGLOBT.BIN"
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
	ld a,#02
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
	dw l4a66,l4b89,l4cac
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
	db #06,#45,#46,#45,#66,#45,#00,#00
	db #86,#45,#c6,#45,#66,#45,#18,#08
	db #e6,#45,#26,#46,#46,#46,#00,#00
	db #66,#46,#a6,#46,#c6,#46,#00,#00
	db #e6,#46,#26,#47,#46,#47,#00,#00
	db #06,#45,#66,#47,#66,#45,#1c,#04
	db #86,#47,#c6,#47,#e6,#47,#00,#00
	db #06,#48,#46,#48,#66,#48,#00,#00
	db #06,#45,#86,#48,#66,#45,#00,#00
	db #a6,#48,#e6,#48,#66,#45,#18,#08
	db #06,#45,#86,#48,#66,#45,#00,#00
	db #06,#49,#46,#49,#46,#47,#00,#00
	db #06,#45,#66,#49,#66,#45,#00,#00
	db #e6,#85,#66,#86,#86,#86,#00,#00
	db #e6,#85,#a6,#86,#c6,#86,#00,#00
	db #86,#49,#c6,#49,#46,#47,#00,#00
.l44e6
	db #06,#87,#26,#87,#a6,#c6,#a6,#05
	db #e6,#49,#06,#4a,#06,#06,#26,#4a
	db #46,#4a,#66,#06,#86,#06,#a6,#06
	db #c6,#06,#e6,#06,#00,#3b,#00,#3b
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #60,#02,#f0,#02,#d0,#03,#c0,#04
	db #b0,#05,#40,#05,#20,#05,#70,#05
	db #c0,#04,#90,#04,#c0,#00,#b0,#01
	db #60,#02,#30,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #60,#02,#f0,#02,#d0,#03,#c0,#04
	db #b0,#05,#40,#05,#20,#05,#70,#05
	db #c0,#04,#90,#04,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#09,#09,#09,#09,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#01,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0b,#08,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #0f,#0f,#0e,#0e,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #6c,#ff,#cb,#ff,#6c,#ff,#cb,#ff
	db #6c,#ff,#cb,#ff,#6c,#ff,#cb,#ff
	db #6c,#ff,#cb,#ff,#6c,#ff,#cb,#ff
	db #6c,#ff,#cb,#ff,#6c,#ff,#cb,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0d,#0d,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #1f,#1f,#1f,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #11,#ff,#80,#03,#10,#05,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#08,#07,#07,#07,#06,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #0f,#0e,#0e,#0e,#0d,#0d,#0d,#0c
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#08,#07,#07
	db #07,#06,#06,#06,#05,#05,#05,#04
	db #01,#00,#f9,#ff,#01,#00,#f9,#ff
	db #07,#00,#ff,#ff,#07,#00,#ff,#ff
	db #01,#00,#f9,#ff,#01,#00,#f9,#ff
	db #07,#00,#ff,#ff,#07,#00,#ff,#ff
	db #01,#00,#f9,#ff,#01,#00,#f9,#ff
	db #07,#00,#ff,#ff,#07,#00,#ff,#ff
	db #01,#00,#f9,#ff,#01,#00,#f9,#ff
	db #07,#00,#ff,#ff,#07,#00,#ff,#ff
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #17,#ff,#11,#ff,#17,#ff,#11,#ff
	db #17,#ff,#11,#ff,#17,#ff,#11,#ff
	db #17,#ff,#11,#ff,#17,#ff,#11,#ff
	db #17,#ff,#11,#ff,#17,#ff,#11,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0c,#0a,#09,#08,#07,#06,#05
	db #04,#03,#02,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0e,#0d,#0d,#0c
	db #0c,#0c,#0b,#0b,#0a,#0a,#0a,#09
	db #09,#08,#08,#08,#07,#07,#06,#06
	db #06,#05,#05,#04,#04,#04,#03,#03
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0d,#0c,#0b,#0a,#08
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#00,#00,#00,#04,#00,#00
	db #00,#04,#00,#00,#00,#04,#00,#00
	db #00,#04,#00,#00,#00,#04,#00,#00
	db #00,#04,#00,#00,#00,#04,#00,#00
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#07,#00,#07,#00,#07,#00,#07
	db #00,#07,#00,#07,#00,#07,#00,#07
	db #00,#07,#00,#07,#00,#07,#00,#07
	db #00,#07,#00,#07,#00,#07,#00,#07
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#00,#08
.l4a66
	db #00,#38,#4f,#00,#38,#4f,#00,#38
	db #4f,#00,#38,#4f,#00,#f9,#4d,#00
	db #f9,#4d,#00,#f9,#4d,#00,#f9,#4d
	db #00,#1b,#4e,#00,#1b,#4e,#00,#1b
	db #4e,#00,#1b,#4e,#00,#3f,#4e,#00
	db #3f,#4e,#00,#3f,#4e,#00,#3f,#4e
	db #00,#b5,#4e,#00,#d1,#4e,#00,#b5
	db #4e,#00,#d1,#4e,#00,#b5,#4e,#00
	db #d1,#4e,#00,#b5,#4e,#00,#d1,#4e
	db #00,#38,#4f,#00,#38,#4f,#00,#38
	db #4f,#00,#38,#4f,#00,#3c,#4f,#00
	db #3c,#4f,#00,#3c,#4f,#00,#3c,#4f
	db #00,#3c,#4f,#00,#3c,#4f,#00,#3c
	db #4f,#00,#3c,#4f,#00,#3c,#4f,#00
	db #3c,#4f,#00,#3c,#4f,#00,#3c,#4f
	db #00,#3c,#4f,#00,#3c,#4f,#00,#b2
	db #4f,#00,#b2,#4f,#00,#b2,#4f,#00
	db #b2,#4f,#00,#b6,#4f,#00,#b6,#4f
	db #00,#b6,#4f,#00,#b6,#4f,#00,#f5
	db #4f,#00,#f5,#4f,#00,#18,#50,#00
	db #3b,#50,#00,#38,#4f,#00,#38,#4f
	db #00,#f9,#4e,#00,#f9,#4e,#00,#f9
	db #4e,#00,#f9,#4e,#00,#cf,#4d,#00
	db #cf,#4d,#00,#cf,#4d,#00,#cf,#4d
	db #00,#5e,#50,#00,#5e,#50,#00,#5e
	db #50,#00,#5e,#50,#00,#5e,#50,#00
	db #5e,#50,#00,#5e,#50,#00,#5e,#50
	db #00,#88,#50,#00,#88,#50,#00,#88
	db #50,#00,#88,#50,#00,#c3,#50,#00
	db #c3,#50,#00,#c3,#50,#00,#c3,#50
	db #00,#cb,#50,#00,#cb,#50,#00,#cb
	db #50,#00,#cb,#50,#00,#cb,#50,#00
	db #cb,#50,#00,#cb,#50,#00,#cb,#50
	db #00,#cf,#4d,#00,#cf,#4d,#00,#f9
	db #4e,#00,#f9,#4e,#00,#f9,#4e,#00
	db #f9,#4e,#00,#38,#4f,#00,#38,#4f
.l4b89 equ $ + 3
	db #80,#66,#4a,#00,#f8,#50,#00,#f8
	db #50,#00,#f8,#50,#00,#f8,#50,#00
	db #f8,#50,#00,#f8,#50,#00,#f8,#50
	db #00,#f8,#50,#00,#1c,#51,#00,#1c
	db #51,#00,#1c,#51,#00,#1c,#51,#00
	db #f8,#50,#00,#f8,#50,#00,#f8,#50
	db #00,#f8,#50,#00,#92,#51,#00,#b6
	db #51,#00,#92,#51,#00,#b6,#51,#00
	db #92,#51,#00,#b6,#51,#00,#92,#51
	db #00,#b6,#51,#00,#e8,#51,#00,#e8
	db #51,#00,#e8,#51,#00,#e8,#51,#00
	db #cd,#51,#00,#cd,#51,#00,#cd,#51
	db #00,#cd,#51,#00,#03,#52,#00,#03
	db #52,#00,#08,#52,#00,#08,#52,#00
	db #03,#52,#00,#03,#52,#00,#08,#52
	db #00,#08,#52,#00,#08,#52,#00,#08
	db #52,#00,#cd,#51,#00,#cd,#51,#00
	db #cd,#51,#00,#cd,#51,#00,#cd,#51
	db #00,#cd,#51,#00,#cd,#51,#00,#cd
	db #51,#00,#0d,#52,#00,#0d,#52,#00
	db #10,#52,#00,#41,#52,#00,#64,#52
	db #00,#64,#52,#00,#cd,#51,#00,#cd
	db #51,#00,#cd,#51,#00,#cd,#51,#00
	db #d5,#50,#00,#d5,#50,#00,#d5,#50
	db #00,#d5,#50,#00,#87,#52,#00,#87
	db #52,#00,#87,#52,#00,#87,#52,#00
	db #87,#52,#00,#87,#52,#00,#87,#52
	db #00,#87,#52,#00,#ab,#52,#00,#ab
	db #52,#00,#ab,#52,#00,#ab,#52,#00
	db #d8,#52,#00,#d8,#52,#00,#d8,#52
	db #00,#d8,#52,#00,#05,#53,#00,#05
	db #53,#00,#05,#53,#00,#05,#53,#00
	db #05,#53,#00,#05,#53,#00,#05,#53
	db #00,#05,#53,#00,#d5,#50,#00,#d5
	db #50,#00,#cd,#51,#00,#cd,#51,#00
	db #cd,#51,#00,#cd,#51,#00,#f8,#50
.l4cac equ $ + 6
	db #00,#f8,#50,#80,#89,#4b,#00,#06
	db #54,#00,#06,#54,#00,#06,#54,#00
	db #06,#54,#00,#3f,#53,#00,#3f,#53
	db #00,#3f,#53,#00,#3f,#53,#00,#6c
	db #53,#00,#6c,#53,#00,#6c,#53,#00
	db #6c,#53,#00,#79,#53,#00,#79,#53
	db #00,#79,#53,#00,#79,#53,#00,#a9
	db #53,#00,#a9,#53,#00,#a9,#53,#00
	db #a9,#53,#00,#a9,#53,#00,#a9,#53
	db #00,#a9,#53,#00,#a9,#53,#00,#33
	db #54,#00,#33,#54,#00,#33,#54,#00
	db #33,#54,#00,#60,#54,#00,#60,#54
	db #00,#60,#54,#00,#60,#54,#00,#33
	db #54,#00,#33,#54,#00,#33,#54,#00
	db #33,#54,#00,#33,#54,#00,#33,#54
	db #00,#33,#54,#00,#33,#54,#00,#33
	db #54,#00,#33,#54,#00,#8d,#54,#00
	db #8d,#54,#00,#8d,#54,#00,#8d,#54
	db #00,#b8,#54,#00,#b8,#54,#00,#b8
	db #54,#00,#b8,#54,#00,#e6,#54,#00
	db #e6,#54,#00,#1b,#55,#00,#e6,#54
	db #00,#e6,#54,#00,#e6,#54,#00,#d9
	db #53,#00,#d9,#53,#00,#d9,#53,#00
	db #d9,#53,#00,#32,#53,#00,#32,#53
	db #00,#32,#53,#00,#32,#53,#00,#50
	db #55,#00,#50,#55,#00,#50,#55,#00
	db #50,#55,#00,#56,#55,#00,#56,#55
	db #00,#56,#55,#00,#56,#55,#00,#6f
	db #55,#00,#6f,#55,#00,#6f,#55,#00
	db #6f,#55,#00,#9a,#55,#00,#9a,#55
	db #00,#9a,#55,#00,#9a,#55,#00,#6f
	db #55,#00,#6f,#55,#00,#6f,#55,#00
	db #6f,#55,#00,#6f,#55,#00,#6f,#55
	db #00,#6f,#55,#00,#6f,#55,#00,#32
	db #53,#00,#32,#53,#00,#d9,#53,#00
	db #d9,#53,#00,#d9,#53,#00,#d9,#53
	db #00,#06,#54,#00,#06,#54,#80,#ac
	db #4c,#1f,#04,#08,#1f,#84,#2b,#04
	db #0a,#1f,#04,#08,#1f,#84,#2b,#04
	db #0a,#1f,#04,#08,#2b,#04,#0a,#1f
	db #04,#08,#2b,#04,#0a,#2b,#84,#1f
	db #04,#08,#20,#84,#20,#84,#1d,#84
	db #1d,#84,#ff,#2b,#04,#05,#2b,#84
	db #32,#84,#32,#84,#30,#84,#30,#84
	db #32,#84,#32,#84,#2b,#84,#2b,#84
	db #2e,#84,#2e,#84,#30,#84,#30,#84
	db #2e,#84,#2e,#84,#ff,#1f,#04,#dc
	db #02,#1f,#04,#0c,#2b,#84,#1f,#84
	db #1f,#84,#2b,#84,#1f,#84,#1f,#84
	db #1f,#84,#1f,#84,#2b,#84,#1f,#84
	db #1f,#84,#2b,#84,#1f,#84,#1f,#84
	db #ff,#1f,#02,#d8,#02,#1f,#02,#b8
	db #05,#2b,#02,#0a,#2b,#02,#ba,#05
	db #1f,#02,#08,#1f,#02,#b8,#05,#1f
	db #02,#b8,#00,#1f,#02,#b8,#05,#2b
	db #02,#0a,#2b,#02,#ba,#05,#1f,#02
	db #08,#1f,#02,#b8,#05,#1f,#02,#b8
	db #00,#1f,#02,#b8,#05,#2b,#02,#0a
	db #2b,#02,#ba,#05,#1f,#02,#08,#1f
	db #02,#b8,#05,#2b,#02,#0a,#2b,#02
	db #ba,#05,#1f,#02,#08,#1f,#02,#b8
	db #05,#1f,#02,#b8,#00,#1f,#02,#b8
	db #05,#2b,#02,#0a,#2b,#02,#ba,#05
	db #1f,#02,#08,#1f,#02,#b8,#05,#1f
	db #02,#b8,#00,#1f,#02,#b8,#05,#2c
	db #02,#0a,#2c,#02,#ba,#05,#ff,#1f
	db #08,#09,#37,#08,#b1,#01,#3f,#08
	db #01,#3e,#87,#1f,#09,#09,#43,#08
	db #b1,#01,#4b,#08,#b1,#03,#4a,#08
	db #b1,#02,#ff,#1f,#08,#09,#37,#08
	db #b1,#01,#3f,#08,#01,#3e,#88,#3a
	db #02,#0f,#3a,#02,#bf,#03,#3a,#02
	db #bf,#08,#3a,#02,#bf,#09,#41,#08
	db #b1,#01,#4d,#08,#b1,#02,#4f,#08
	db #b1,#03,#ff,#1f,#04,#08,#1f,#84
	db #2b,#04,#0a,#9f,#08,#bc,#b1,#01
	db #bd,#01,#be,#01,#bf,#01,#c1,#01
	db #43,#82,#2b,#04,#0a,#1f,#04,#08
	db #2b,#04,#0a,#1f,#04,#08,#2b,#04
	db #0a,#2b,#84,#9f,#08,#be,#b1,#01
	db #bf,#01,#c0,#01,#c1,#01,#c2,#01
	db #43,#82,#20,#04,#08,#1d,#84,#1d
	db #84,#ff,#1f,#40,#09,#ff,#1f,#02
	db #d8,#02,#1f,#02,#b8,#05,#2b,#02
	db #0a,#2b,#02,#ba,#05,#1f,#02,#08
	db #1f,#02,#b8,#05,#1f,#02,#b8,#00
	db #1f,#02,#b8,#05,#2b,#02,#0a,#2b
	db #02,#ba,#05,#1f,#02,#08,#1f,#02
	db #b8,#05,#1f,#02,#b8,#00,#1f,#02
	db #b8,#05,#2b,#02,#0a,#2b,#02,#ba
	db #05,#1f,#02,#08,#1f,#02,#b8,#05
	db #2b,#02,#0a,#2b,#02,#ba,#05,#1f
	db #02,#08,#1f,#02,#b8,#05,#1f,#02
	db #b8,#00,#1f,#02,#b8,#05,#2b,#02
	db #0a,#2b,#02,#ba,#05,#1f,#02,#08
	db #1f,#02,#b8,#05,#1f,#02,#b8,#00
	db #1f,#02,#b8,#05,#2c,#02,#0a,#2c
	db #02,#ba,#05,#ff,#1f,#40,#09,#ff
	db #1f,#04,#08,#1f,#84,#2b,#04,#0a
	db #9f,#08,#bc,#b1,#01,#bd,#01,#be
	db #01,#bf,#01,#c1,#01,#43,#82,#2b
	db #04,#0a,#1f,#04,#08,#2b,#04,#0a
	db #1f,#04,#08,#2b,#04,#0a,#2b,#84
	db #9f,#08,#be,#b1,#01,#bf,#01,#c0
	db #01,#c1,#01,#c2,#01,#43,#82,#20
	db #04,#08,#1d,#84,#1d,#84,#ff,#3f
	db #04,#b1,#04,#43,#84,#3e,#84,#46
	db #84,#45,#84,#41,#84,#43,#84,#3e
	db #84,#46,#84,#3f,#84,#48,#84,#3f
	db #84,#45,#84,#46,#84,#3f,#84,#3e
	db #84,#ff,#3f,#04,#b1,#05,#43,#84
	db #3e,#84,#46,#84,#45,#84,#41,#84
	db #43,#84,#3e,#84,#46,#84,#3f,#84
	db #48,#84,#3f,#84,#45,#84,#46,#84
	db #3f,#84,#3e,#84,#ff,#3f,#04,#b1
	db #05,#43,#84,#3e,#84,#46,#84,#45
	db #84,#41,#84,#43,#84,#3e,#84,#46
	db #84,#3f,#84,#48,#84,#3f,#84,#45
	db #84,#46,#84,#3f,#84,#3e,#84,#ff
	db #1f,#04,#08,#1f,#84,#2b,#04,#0a
	db #1f,#04,#08,#1f,#84,#2b,#04,#0a
	db #1f,#04,#08,#2b,#04,#0a,#1f,#04
	db #08,#2b,#04,#0a,#2b,#84,#1f,#04
	db #08,#20,#84,#20,#84,#1d,#84,#1d
	db #84,#ff,#00,#01,#2b,#04,#b8,#03
	db #37,#04,#ba,#03,#2b,#04,#b8,#03
	db #2b,#84,#37,#04,#ba,#03,#2b,#04
	db #b8,#03,#2b,#84,#37,#04,#ba,#03
	db #2b,#04,#b8,#03,#37,#04,#ba,#03
	db #2b,#04,#b8,#03,#2b,#84,#38,#04
	db #ba,#03,#2c,#04,#b8,#03,#2c,#84
	db #38,#03,#ba,#03,#ff,#1f,#20,#09
	db #1f,#90,#20,#90,#ff,#1f,#20,#d9
	db #02,#20,#10,#09,#1d,#90,#ff,#2b
	db #04,#b5,#01,#26,#84,#2e,#84,#2d
	db #84,#29,#84,#2b,#84,#26,#84,#2e
	db #84,#27,#84,#30,#84,#27,#84,#2d
	db #84,#2e,#84,#27,#84,#26,#84,#27
	db #84,#ff,#1f,#04,#dc,#02,#1f,#04
	db #0c,#2b,#84,#1f,#84,#1f,#84,#2b
	db #84,#1f,#84,#1f,#84,#1f,#84,#1f
	db #84,#2b,#84,#1f,#84,#1f,#84,#2b
	db #84,#1f,#84,#1f,#84,#ff,#1f,#02
	db #d8,#02,#1f,#02,#b8,#05,#2b,#02
	db #0a,#2b,#02,#ba,#05,#1f,#02,#08
	db #1f,#02,#b8,#05,#1f,#02,#b8,#00
	db #1f,#02,#b8,#05,#2b,#02,#0a,#2b
	db #02,#ba,#05,#1f,#02,#08,#1f,#02
	db #b8,#05,#1f,#02,#b8,#00,#1f,#02
	db #b8,#05,#2b,#02,#0a,#2b,#02,#ba
	db #05,#1f,#02,#08,#1f,#02,#b8,#05
	db #2b,#02,#0a,#2b,#02,#ba,#05,#1f
	db #02,#08,#1f,#02,#b8,#05,#1f,#02
	db #b8,#00,#1f,#02,#b8,#05,#2b,#02
	db #0a,#2b,#02,#ba,#05,#1f,#02,#08
	db #1f,#02,#b8,#05,#1f,#02,#b8,#00
	db #1f,#02,#b8,#05,#2c,#02,#0a,#2c
	db #02,#ba,#05,#ff,#1f,#04,#dc,#02
	db #1f,#04,#0c,#2b,#84,#1f,#84,#1f
	db #84,#2b,#84,#1d,#08,#09,#1f,#04
	db #0c,#1f,#84,#2b,#84,#1f,#84,#1f
	db #84,#2b,#84,#1f,#84,#1f,#84,#ff
	db #1f,#04,#dc,#02,#1f,#04,#0c,#2b
	db #84,#1f,#84,#1f,#84,#2b,#84,#1f
	db #08,#09,#1d,#9c,#1f,#84,#ff,#43
	db #04,#b1,#03,#43,#84,#3e,#88,#43
	db #84,#43,#84,#3e,#88,#43,#84,#43
	db #84,#3e,#88,#43,#84,#43,#84,#3e
	db #88,#ff,#43,#04,#b1,#03,#43,#84
	db #3e,#88,#43,#84,#43,#84,#3e,#88
	db #43,#84,#43,#84,#3e,#88,#43,#84
	db #43,#84,#3e,#88,#ff,#3e,#40,#b1
	db #05,#ff,#3c,#40,#b1,#05,#ff,#fe
	db #40,#ff,#43,#04,#b1,#09,#3e,#04
	db #b1,#07,#46,#04,#b1,#05,#45,#84
	db #41,#04,#b1,#04,#43,#04,#b1,#03
	db #3e,#84,#46,#04,#b1,#02,#3f,#04
	db #b1,#01,#48,#84,#3f,#04,#b1,#00
	db #45,#84,#46,#84,#3f,#84,#3e,#84
	db #3f,#84,#ff,#43,#04,#b1,#01,#3e
	db #84,#46,#84,#45,#84,#41,#84,#43
	db #84,#3e,#84,#46,#84,#3f,#84,#48
	db #84,#3f,#84,#45,#84,#46,#84,#3f
	db #84,#3e,#84,#3f,#84,#ff,#43,#04
	db #b1,#01,#3e,#84,#46,#84,#45,#84
	db #41,#84,#43,#84,#3e,#84,#46,#84
	db #3f,#84,#48,#84,#3f,#84,#45,#84
	db #46,#84,#3f,#84,#3e,#84,#3f,#84
	db #ff,#2b,#04,#b5,#02,#26,#04,#05
	db #2e,#84,#2d,#84,#29,#84,#2b,#84
	db #26,#84,#2e,#84,#27,#84,#30,#84
	db #27,#84,#2d,#84,#2e,#84,#27,#84
	db #26,#84,#27,#84,#ff,#2b,#04,#08
	db #37,#04,#0a,#2b,#04,#08,#2b,#84
	db #37,#04,#0a,#2b,#04,#08,#2b,#84
	db #37,#04,#0a,#2b,#04,#08,#37,#04
	db #0a,#2b,#04,#08,#2b,#84,#38,#04
	db #0a,#2c,#04,#08,#2c,#84,#38,#04
	db #0a,#ff,#2b,#04,#08,#37,#04,#0a
	db #2b,#04,#08,#2b,#84,#37,#04,#0a
	db #2b,#04,#08,#2b,#84,#37,#04,#0a
	db #2b,#04,#08,#37,#04,#0a,#2b,#04
	db #08,#2b,#84,#38,#04,#0a,#2c,#04
	db #08,#2c,#84,#38,#04,#0a,#ff,#1f
	db #04,#08,#1f,#84,#2b,#04,#0a,#1f
	db #04,#08,#1f,#84,#2b,#04,#0a,#1f
	db #04,#08,#37,#04,#0a,#20,#04,#08
	db #20,#84,#2c,#04,#0a,#20,#04,#08
	db #29,#04,#0a,#1d,#04,#08,#1d,#84
	db #29,#04,#0a,#ff,#37,#02,#b5,#04
	db #37,#02,#f5,#04,#37,#3c,#b5,#03
	db #ff,#3a,#08,#06,#3a,#04,#02,#3a
	db #04,#04,#3a,#04,#0f,#3a,#04,#bf
	db #03,#3a,#04,#bf,#05,#3a,#08,#07
	db #3a,#04,#03,#3a,#84,#3a,#02,#04
	db #3a,#82,#3a,#04,#0f,#3a,#04,#bf
	db #03,#3a,#08,#bf,#00,#ff,#37,#02
	db #b5,#02,#37,#02,#f5,#04,#37,#3c
	db #b5,#01,#ff,#3a,#04,#13,#3a,#04
	db #04,#3a,#04,#03,#3a,#04,#04,#3a
	db #04,#0f,#3a,#04,#bf,#03,#3a,#04
	db #bf,#05,#3a,#08,#07,#3a,#04,#03
	db #3a,#84,#3a,#02,#04,#3a,#82,#3a
	db #04,#0f,#3a,#04,#bf,#03,#3a,#08
	db #bf,#00,#ff,#3a,#04,#03,#3a,#04
	db #04,#3a,#04,#03,#3a,#04,#04,#3a
	db #04,#0f,#3a,#04,#bf,#03,#3a,#04
	db #bf,#05,#3a,#08,#07,#3a,#04,#03
	db #3a,#84,#3a,#02,#04,#3a,#82,#3a
	db #04,#0f,#3a,#04,#bf,#03,#3a,#08
	db #bf,#00,#ff,#3a,#08,#16,#3a,#04
	db #02,#3a,#04,#04,#3a,#04,#0f,#3a
	db #04,#bf,#03,#3a,#04,#bf,#05,#3a
	db #08,#07,#3a,#04,#03,#3a,#84,#3a
	db #02,#04,#3a,#82,#3a,#04,#0f,#3a
	db #04,#bf,#03,#3a,#08,#bf,#00,#ff
	db #3a,#08,#06,#3a,#04,#02,#3a,#04
	db #04,#3a,#04,#0f,#3a,#04,#bf,#03
	db #3a,#04,#bf,#05,#3a,#08,#07,#3a
	db #04,#03,#3a,#84,#3a,#02,#04,#3a
	db #82,#3a,#04,#0f,#3a,#04,#bf,#03
	db #3a,#08,#bf,#00,#ff,#3a,#08,#03
	db #3a,#84,#3a,#04,#04,#3a,#04,#0f
	db #3a,#04,#bf,#03,#3a,#04,#bf,#05
	db #3a,#04,#04,#3a,#84,#3a,#04,#03
	db #3a,#84,#3a,#04,#04,#3a,#04,#0f
	db #3a,#04,#bf,#03,#3a,#04,#04,#3a
	db #84,#ff,#3a,#08,#03,#3a,#84,#3a
	db #04,#04,#3a,#04,#0f,#3a,#04,#bf
	db #03,#3a,#04,#bf,#05,#3a,#04,#04
	db #3a,#84,#3a,#04,#03,#3a,#84,#3a
	db #04,#04,#3a,#04,#0f,#3a,#04,#bf
	db #03,#3a,#04,#04,#3a,#84,#ff,#3a
	db #08,#03,#3a,#84,#3a,#04,#04,#3a
	db #84,#3a,#04,#bf,#03,#3a,#04,#bf
	db #05,#3a,#84,#3a,#84,#3a,#04,#03
	db #3a,#84,#3a,#04,#04,#3a,#84,#3a
	db #04,#bf,#03,#3a,#04,#bf,#05,#3a
	db #84,#ff,#3a,#08,#13,#3a,#04,#03
	db #3a,#04,#04,#3a,#04,#0f,#3a,#04
	db #bf,#03,#3a,#04,#bf,#05,#3a,#04
	db #04,#3a,#84,#3a,#04,#03,#3a,#84
	db #3a,#04,#04,#3a,#04,#0f,#3a,#04
	db #bf,#03,#3a,#04,#04,#3a,#84,#ff
	db #2b,#04,#f8,#07,#37,#04,#b8,#01
	db #2b,#04,#f8,#08,#2b,#04,#08,#37
	db #04,#f8,#07,#2b,#04,#f8,#05,#2b
	db #04,#18,#37,#04,#f8,#07,#2b,#84
	db #37,#04,#08,#2b,#84,#2b,#04,#18
	db #37,#04,#f8,#07,#2b,#04,#08,#2b
	db #84,#37,#04,#18,#ff,#2b,#04,#f8
	db #07,#37,#04,#b8,#01,#2b,#04,#f8
	db #08,#2b,#04,#08,#37,#04,#f8,#07
	db #2b,#04,#f8,#05,#2b,#04,#18,#37
	db #04,#f8,#07,#2b,#84,#37,#04,#08
	db #2b,#84,#2b,#04,#18,#37,#04,#f8
	db #07,#2b,#04,#08,#2b,#84,#37,#04
	db #18,#ff,#1f,#30,#09,#20,#90,#ff
	db #3a,#03,#03,#1f,#0d,#09,#3a,#03
	db #03,#1f,#0d,#09,#3a,#03,#03,#1f
	db #0d,#09,#3a,#03,#03,#20,#0d,#09
	db #ff,#3a,#04,#03,#3a,#04,#04,#3a
	db #84,#3a,#04,#0b,#3a,#04,#03,#3a
	db #04,#04,#3a,#84,#3a,#84,#3a,#04
	db #03,#3a,#04,#04,#3a,#84,#3a,#04
	db #0b,#3a,#04,#03,#3a,#04,#04,#3a
	db #84,#3a,#84,#ff,#3a,#04,#03,#3a
	db #04,#04,#3a,#84,#3a,#04,#0b,#3a
	db #04,#03,#3a,#04,#04,#3a,#84,#3a
	db #84,#3a,#04,#03,#3a,#04,#04,#3a
	db #84,#3a,#04,#0b,#3a,#04,#03,#3a
	db #04,#04,#3a,#84,#3a,#84,#ff
;
.music_info
	db "The Crown Soundtracks - Global Trash (19xx)(Public Domain)(Crown)",0
	db "ST-Module",0

	read "music_end.asm"
