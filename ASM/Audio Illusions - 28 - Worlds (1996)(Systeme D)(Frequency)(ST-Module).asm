; Music of Audio Illusions - 28 - Worlds (1996)(Systeme D)(Frequency)(ST-Module)
; Ripped by Megachur the 26/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AUDIOI28.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
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
	dw l4826,l4847,l4868
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
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #86,#45,#c6,#45,#e6,#45,#00,#00
	db #86,#45,#06,#46,#26,#46,#01,#00
	db #3c,#57,#10,#6f,#70,#3e,#ff,#70
	db #30,#4f,#08,#4b,#0e,#3e,#ff,#0e
	db #86,#45,#46,#46,#66,#46,#00,#00
	db #86,#46,#c6,#46,#e6,#46,#00,#00
	db #86,#45,#06,#47,#66,#46,#00,#00
	db #86,#45,#26,#47,#66,#46,#00,#00
	db #00,#7e,#00,#7e,#00,#7e,#00,#00
	db #00,#7e,#00,#7e,#00,#7e,#00,#00
	db #00,#7e,#00,#7e,#00,#7e,#00,#00
	db #00,#7e,#00,#7e,#00,#7e,#00,#00
	db #00,#7e,#00,#7e,#00,#7e,#00,#00
	db #00,#7e,#00,#7e,#00,#7e,#00,#00
.l44e6
	db #46,#47,#66,#47,#86,#47,#a6,#47
	db #c6,#47,#e6,#47,#06,#48,#00,#7e
	db #00,#7e,#00,#7e,#00,#7e,#00,#7e
	db #00,#7e,#00,#7e,#00,#7e,#00,#7e
	db #00,#00,#50,#00,#90,#00,#d0,#00
	db #10,#01,#50,#01,#90,#01,#d0,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0d,#09,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0e,#0e,#0f,#0f,#0d,#0b
	db #09,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#60,#00,#90,#00,#d0,#00
	db #00,#01,#20,#01,#30,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0f,#0e,#0e,#0d,#0b,#09,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#1f,#04,#05,#06,#09,#0d,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0a,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#08
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #f4,#00,#0c,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#07
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#04
.l4826
	db #00,#89,#48,#00,#90,#48,#00,#b8
	db #48,#00,#c8,#48,#00,#b8,#48,#00
	db #c8,#48,#00,#e8,#48,#00,#1e,#49
	db #00,#e8,#48,#00,#1e,#49,#80,#26
.l4847 equ $ + 1
	db #48,#00,#71,#49,#00,#c9,#49,#00
	db #22,#4a,#00,#89,#4a,#00,#22,#4a
	db #00,#89,#4a,#00,#ef,#4a,#00,#55
	db #4b,#00,#ef,#4a,#00,#55,#4b,#80
.l4868 equ $ + 2
	db #47,#48,#00,#bb,#4b,#00,#ff,#4b
	db #00,#43,#4c,#00,#85,#4c,#00,#43
	db #4c,#00,#85,#4c,#00,#c7,#4c,#00
	db #0b,#4d,#00,#c7,#4c,#00,#0b,#4d
	db #80,#68,#48,#4a,#20,#19,#48,#20
	db #16,#ff,#4b,#1c,#09,#4b,#02,#06
	db #4a,#82,#29,#02,#f6,#02,#29,#02
	db #06,#29,#82,#29,#82,#29,#82,#35
	db #86,#29,#82,#35,#82,#2b,#82,#37
	db #82,#2d,#82,#39,#82,#30,#82,#3c
	db #82,#ff,#3e,#1e,#f6,#00,#3a,#02
	db #06,#3c,#82,#3e,#82,#3e,#1c,#f6
	db #05,#ff,#3f,#04,#06,#3f,#84,#3f
	db #84,#3e,#82,#3f,#84,#3f,#84,#3e
	db #82,#3f,#84,#43,#84,#3c,#88,#3e
	db #88,#3f,#08,#f6,#06,#3e,#08,#f6
	db #04,#ff,#4b,#02,#f9,#03,#33,#02
	db #09,#4b,#82,#33,#82,#4b,#08,#08
	db #4b,#02,#09,#4b,#04,#08,#4b,#02
	db #09,#4d,#84,#4b,#84,#4a,#04,#f8
	db #04,#4a,#04,#08,#4a,#88,#4a,#02
	db #09,#4a,#04,#08,#4a,#02,#09,#4b
	db #04,#f9,#03,#4a,#04,#f9,#04,#ff
	db #4b,#02,#f9,#03,#33,#02,#09,#4b
	db #82,#33,#82,#4b,#08,#08,#4b,#02
	db #09,#4b,#04,#08,#4b,#02,#09,#4d
	db #84,#4b,#84,#b5,#19,#b7,#09,#3a
	db #82,#ba,#09,#b7,#09,#35,#82,#b5
	db #09,#b7,#09,#3a,#82,#be,#09,#bf
	db #09,#41,#82,#b5,#09,#b7,#09,#3a
	db #82,#ba,#09,#b7,#09,#35,#82,#b5
	db #09,#b7,#09,#ba,#09,#bc,#09,#be
	db #f9,#04,#bc,#09,#ba,#f9,#03,#bc
	db #f9,#04,#ff,#26,#02,#00,#6e,#04
	db #02,#ee,#02,#ee,#02,#26,#02,#00
	db #6e,#04,#02,#6e,#82,#26,#02,#00
	db #6e,#04,#02,#ee,#02,#ee,#02,#26
	db #02,#00,#6e,#02,#02,#6e,#02,#03
	db #6e,#02,#02,#26,#02,#00,#6e,#02
	db #02,#6e,#82,#ee,#02,#ee,#02,#26
	db #02,#00,#6e,#02,#02,#6e,#82,#6e
	db #82,#26,#02,#00,#6e,#02,#02,#6e
	db #82,#ee,#02,#ee,#02,#26,#02,#00
	db #ee,#02,#ee,#02,#6e,#82,#ee,#02
	db #ee,#02,#ff,#26,#02,#00,#6e,#04
	db #02,#ee,#02,#ee,#02,#26,#02,#00
	db #6e,#04,#02,#6e,#82,#26,#02,#00
	db #6e,#04,#02,#ee,#02,#ee,#02,#26
	db #02,#00,#6e,#02,#02,#6e,#02,#03
	db #6e,#02,#02,#26,#02,#00,#6e,#02
	db #02,#6e,#82,#ee,#02,#ee,#02,#26
	db #02,#00,#6e,#02,#02,#6e,#82,#6e
	db #82,#26,#02,#00,#6e,#02,#02,#6e
	db #82,#ee,#02,#ee,#02,#26,#02,#00
	db #ee,#02,#ee,#02,#3e,#02,#07,#be
	db #07,#be,#07,#ff,#26,#02,#00,#6e
	db #02,#02,#3e,#02,#07,#ee,#02,#ee
	db #02,#32,#02,#00,#6e,#02,#02,#3e
	db #02,#07,#6e,#02,#02,#26,#02,#00
	db #6e,#02,#02,#3e,#02,#07,#ee,#02
	db #ee,#02,#26,#02,#00,#6e,#02,#02
	db #3e,#02,#07,#6e,#02,#03,#26,#02
	db #00,#6e,#02,#02,#3e,#02,#07,#ee
	db #02,#ee,#02,#26,#02,#00,#6e,#02
	db #02,#3e,#02,#07,#6e,#02,#02,#26
	db #02,#00,#6e,#02,#02,#3e,#02,#07
	db #ee,#02,#ee,#02,#26,#02,#00,#ee
	db #02,#ee,#02,#3e,#02,#07,#ee,#02
	db #ee,#02,#ff,#26,#02,#00,#6e,#02
	db #02,#3e,#02,#07,#ee,#02,#ee,#02
	db #26,#02,#00,#6e,#02,#02,#3e,#02
	db #07,#6e,#02,#02,#26,#02,#00,#6e
	db #02,#02,#3e,#02,#07,#ee,#02,#ee
	db #02,#26,#02,#00,#6e,#02,#02,#3e
	db #02,#07,#be,#07,#be,#07,#26,#02
	db #00,#6e,#02,#02,#3e,#02,#07,#ee
	db #02,#ee,#02,#26,#02,#00,#6e,#02
	db #02,#3e,#02,#07,#6e,#02,#02,#26
	db #02,#00,#6e,#02,#02,#3e,#02,#07
	db #ee,#02,#ee,#02,#26,#02,#00,#be
	db #07,#ee,#02,#3e,#02,#07,#3e,#82
	db #ff,#26,#02,#00,#33,#02,#08,#3e
	db #02,#07,#b7,#08,#ee,#03,#26,#02
	db #00,#33,#02,#08,#3e,#02,#07,#6e
	db #02,#03,#26,#02,#00,#33,#02,#08
	db #3e,#02,#07,#ae,#08,#ee,#03,#26
	db #02,#00,#33,#02,#08,#3e,#02,#07
	db #be,#07,#be,#07,#26,#02,#00,#32
	db #02,#08,#3e,#02,#07,#b5,#08,#ee
	db #03,#26,#02,#00,#32,#02,#08,#3e
	db #02,#07,#6e,#02,#03,#26,#02,#00
	db #32,#02,#08,#3e,#02,#07,#b2,#08
	db #ee,#03,#26,#02,#00,#be,#07,#ee
	db #02,#3e,#02,#07,#3e,#82,#ff,#26
	db #02,#00,#6e,#02,#03,#3e,#02,#07
	db #ee,#02,#ee,#03,#26,#02,#00,#6e
	db #02,#03,#3e,#02,#07,#6e,#02,#03
	db #26,#02,#00,#6e,#02,#03,#3e,#02
	db #07,#ee,#02,#ee,#03,#26,#02,#00
	db #6e,#02,#03,#3e,#02,#07,#be,#07
	db #be,#07,#26,#02,#00,#6e,#02,#03
	db #3e,#02,#07,#ee,#02,#ee,#03,#26
	db #02,#00,#6e,#02,#03,#3e,#02,#07
	db #6e,#02,#03,#26,#02,#00,#6e,#02
	db #03,#3e,#02,#07,#ee,#02,#ee,#03
	db #26,#02,#00,#be,#07,#ee,#02,#3e
	db #02,#07,#3e,#82,#ff,#2e,#02,#f8
	db #01,#35,#02,#08,#3a,#82,#35,#82
	db #3e,#82,#35,#82,#3a,#82,#3e,#82
	db #2e,#82,#35,#82,#3a,#82,#35,#82
	db #3e,#82,#35,#82,#3a,#82,#3e,#82
	db #2d,#82,#32,#82,#35,#82,#32,#82
	db #39,#82,#32,#82,#35,#82,#39,#82
	db #2d,#82,#32,#82,#35,#82,#32,#82
	db #39,#82,#32,#82,#35,#82,#39,#82
	db #ff,#37,#02,#f8,#01,#3a,#02,#08
	db #3f,#82,#3a,#82,#43,#82,#3a,#82
	db #3f,#82,#43,#82,#37,#82,#3a,#82
	db #3f,#82,#3a,#82,#43,#82,#3a,#82
	db #3f,#82,#43,#82,#39,#82,#3c,#82
	db #41,#82,#3c,#82,#45,#82,#3c,#82
	db #41,#82,#45,#82,#39,#82,#3c,#82
	db #41,#82,#3c,#82,#45,#82,#3c,#82
	db #41,#82,#45,#82,#ff,#22,#02,#08
	db #29,#82,#2e,#82,#29,#82,#32,#82
	db #29,#82,#2e,#82,#32,#82,#22,#82
	db #29,#82,#2e,#82,#29,#82,#32,#82
	db #29,#82,#2e,#82,#32,#82,#2d,#82
	db #32,#82,#35,#82,#32,#82,#39,#82
	db #32,#82,#35,#82,#39,#82,#2d,#82
	db #32,#82,#35,#82,#32,#82,#39,#82
	db #32,#82,#35,#82,#39,#82,#ff,#2b
	db #02,#08,#2e,#82,#33,#82,#2e,#82
	db #37,#82,#2e,#82,#33,#82,#37,#82
	db #2b,#82,#2e,#82,#33,#82,#2e,#82
	db #37,#82,#2e,#82,#33,#82,#37,#82
	db #2d,#82,#30,#82,#35,#82,#30,#82
	db #39,#82,#30,#82,#35,#82,#39,#82
	db #2d,#82,#30,#82,#35,#82,#30,#82
	db #39,#82,#30,#82,#35,#82,#39,#82
	db #ff,#27,#02,#f8,#02,#27,#02,#08
	db #33,#82,#27,#82,#27,#82,#33,#82
	db #27,#82,#27,#82,#27,#82,#27,#82
	db #33,#82,#27,#82,#27,#82,#33,#82
	db #26,#82,#24,#82,#26,#82,#26,#82
	db #32,#82,#26,#82,#26,#82,#32,#82
	db #26,#82,#26,#82,#26,#82,#26,#82
	db #32,#82,#26,#82,#26,#82,#32,#82
	db #26,#82,#22,#82,#ff,#27,#02,#08
	db #27,#82,#33,#82,#27,#82,#27,#82
	db #33,#82,#27,#82,#27,#82,#27,#82
	db #27,#82,#33,#82,#27,#82,#27,#82
	db #33,#82,#27,#82,#27,#82,#29,#82
	db #29,#82,#35,#82,#29,#82,#27,#82
	db #27,#82,#33,#82,#27,#82,#26,#82
	db #26,#82,#32,#82,#26,#82,#24,#82
	db #24,#82,#30,#82,#a4,#08,#b0,#08
	db #ff
;
.music_info
	db "Audio Illusions - 28 - Worlds (1996)(Systeme D)(Frequency)",0
	db "ST-Module",0

	read "music_end.asm"
