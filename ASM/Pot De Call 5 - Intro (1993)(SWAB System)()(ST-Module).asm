; Music of Pot De Call 5 - Intro (1993)(SWAB System)()(ST-Module)
; Ripped by Megachur the 02/03/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "POTDC5IN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 03
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
;.l4024
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
	ld a,#01
	or a
	jr nz,l40e3
.l40df equ $ + 1
	ld a,#05
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
	dw l4746,l4773,l47a0
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
	db #00,#00,#00,#00,#cd,#47,#00,#01
	db #08,#10,#01,#00,#00,#00,#00,#df
.l440c equ $ + 2
	db #49,#47,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l441a
	db #a1,#49,#02,#03,#09,#10,#01,#00
.l4428 equ $ + 6
	db #00,#00,#00,#e7,#76,#47,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4436 equ $ + 4
	db #00,#00,#00,#00,#d2,#4a,#04,#05
	db #0a,#10,#01,#00,#00,#00,#00,#ef
.l4444 equ $ + 2
	db #a3,#47,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4452
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l4466 equ $ + 4
	db #75,#6c,#65,#2e,#06,#45,#46,#45
	db #66,#45,#1d,#03,#86,#45,#c6,#45
	db #66,#45,#1d,#03,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#86,#45,#e6,#45
	db #66,#45,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#26,#86
	db #66,#85,#08,#18,#46,#86,#86,#86
	db #66,#85,#18,#08,#00,#bd,#00,#bd
	db #00,#bd,#00,#00,#00,#bd,#00,#bd
	db #00,#bd,#00,#00,#00,#bd,#00,#bd
	db #00,#bd,#00,#00,#06,#46,#46,#46
	db #66,#46,#00,#00,#86,#46,#c6,#46
.l44e6 equ $ + 4
	db #e6,#46,#00,#00,#06,#47,#26,#47
	db #86,#c5,#a6,#c5,#c6,#86,#e6,#c5
	db #06,#c6,#00,#bd,#00,#bd,#00,#bd
	db #00,#bd,#00,#bd,#00,#bd,#00,#bd
	db #00,#bd,#00,#bd,#01,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#00,#00
	db #ff,#ff,#00,#00,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0d,#0d,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#08,#08,#08,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#08,#08,#08,#08,#08,#08
	db #08,#08,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#08,#00
	db #10,#00,#18,#00,#20,#00,#28,#00
	db #30,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0b,#0b,#0a,#08
	db #06,#03,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#04,#04,#04,#03
	db #03,#03,#02,#02,#02,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#64,#00
	db #c8,#00,#2c,#01,#90,#01,#f4,#01
	db #58,#02,#bc,#02,#20,#03,#84,#03
	db #e8,#03,#4c,#04,#b0,#04,#14,#05
	db #78,#05,#dc,#05,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
	db #03,#03,#02,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#05,#00,#19,#00
	db #08,#00,#06,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#f4,#00,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
.l4746 equ $ + 4
	db #04,#07,#00,#04,#00,#cd,#47,#00
	db #cd,#47,#00,#25,#48,#00,#cd,#47
	db #00,#c4,#48,#00,#25,#48,#00,#9c
	db #49,#00,#25,#48,#00,#c4,#48,#00
	db #cd,#47,#00,#09,#48,#00,#9c,#49
	db #00,#18,#49,#00,#7f,#49,#80,#49
.l4773 equ $ + 1
	db #47,#00,#a1,#49,#00,#a4,#49,#00
	db #f8,#49,#00,#a4,#49,#00,#10,#4a
	db #00,#f8,#49,#00,#cd,#4a,#00,#f8
	db #49,#00,#10,#4a,#00,#a4,#49,#00
	db #a4,#49,#00,#cd,#4a,#00,#7e,#4a
.l47a0 equ $ + 6
	db #00,#a1,#49,#80,#76,#47,#00,#d2
	db #4a,#00,#ee,#4a,#00,#ee,#4a,#00
	db #ee,#4a,#00,#ee,#4a,#00,#ee,#4a
	db #00,#a8,#4b,#00,#ee,#4a,#00,#ee
	db #4a,#00,#ee,#4a,#00,#ee,#4a,#00
	db #a8,#4b,#00,#58,#4b,#00,#ee,#4a
	db #80,#a3,#47,#3a,#04,#f0,#00,#3c
	db #04,#00,#3e,#84,#3f,#84,#41,#84
	db #41,#84,#43,#82,#43,#82,#43,#82
	db #43,#82,#41,#84,#43,#82,#43,#82
	db #43,#82,#43,#82,#41,#84,#3f,#82
	db #3f,#82,#3f,#82,#3f,#82,#3e,#84
	db #3e,#84,#41,#82,#41,#82,#41,#82
	db #41,#82,#3a,#84,#fe,#04,#ff,#00
	db #30,#3f,#02,#00,#3f,#82,#3f,#82
	db #3f,#82,#3e,#84,#3e,#84,#41,#82
	db #41,#82,#41,#82,#41,#82,#3a,#84
	db #fe,#04,#ff,#3a,#02,#e1,#10,#2e
	db #02,#e1,#20,#3a,#02,#e1,#10,#2e
	db #02,#e1,#20,#3a,#02,#e1,#00,#2e
	db #02,#e1,#20,#3a,#02,#e1,#10,#2e
	db #02,#e1,#20,#3a,#02,#e1,#00,#2e
	db #02,#e1,#20,#3a,#02,#e1,#10,#2e
	db #02,#e1,#20,#3a,#02,#e1,#00,#2e
	db #02,#e1,#20,#3a,#02,#e1,#10,#2e
	db #02,#e1,#20,#3a,#02,#e1,#00,#2e
	db #02,#e1,#20,#3a,#02,#e1,#10,#2e
	db #02,#e1,#20,#3a,#02,#e1,#00,#2e
	db #02,#e1,#20,#3a,#02,#e1,#10,#2e
	db #02,#e1,#20,#3a,#02,#e1,#00,#2e
	db #02,#e1,#20,#3a,#02,#e1,#10,#2e
	db #02,#e1,#20,#3a,#02,#e1,#00,#2e
	db #02,#e1,#20,#3a,#02,#e1,#10,#2e
	db #02,#e1,#20,#3a,#02,#e1,#00,#2e
	db #02,#e1,#20,#3a,#02,#e1,#10,#2e
	db #02,#e1,#20,#3a,#02,#e1,#00,#2e
	db #02,#e1,#20,#3a,#82,#2e,#02,#e1
	db #30,#ff,#2e,#02,#f1,#01,#3a,#02
	db #01,#2e,#82,#3a,#82,#2e,#82,#3a
	db #82,#2e,#82,#3a,#82,#35,#82,#41
	db #82,#35,#82,#41,#82,#35,#82,#41
	db #82,#35,#82,#41,#82,#35,#82,#41
	db #82,#35,#82,#41,#82,#35,#82,#41
	db #82,#35,#82,#41,#82,#33,#82,#3f
	db #82,#33,#82,#3f,#82,#33,#82,#3f
	db #82,#33,#82,#3f,#82,#35,#82,#41
	db #82,#35,#82,#41,#82,#35,#82,#41
	db #82,#35,#82,#41,#82,#ff,#ba,#e1
	db #10,#fe,#02,#fe,#01,#3a,#03,#01
	db #fe,#01,#ba,#01,#fe,#01,#3a,#83
	db #fe,#01,#bc,#01,#fe,#01,#3e,#83
	db #fe,#01,#3f,#83,#fe,#09,#3f,#83
	db #fe,#01,#3f,#83,#fe,#01,#bf,#01
	db #fe,#01,#3f,#83,#fe,#01,#bf,#01
	db #fe,#01,#3f,#83,#fe,#01,#3f,#83
	db #fe,#01,#3e,#83,#fe,#01,#3c,#83
	db #c6,#d3,#02,#ba,#10,#bc,#00,#be
	db #00,#bf,#00,#c1,#00,#c3,#00,#c5
	db #00,#c6,#00,#c8,#00,#ca,#00,#cb
	db #00,#cd,#00,#cf,#00,#d1,#00,#fe
	db #01,#c6,#d3,#05,#ff,#00,#30,#3f
	db #02,#10,#3f,#02,#00,#3f,#82,#3f
	db #82,#3e,#84,#3e,#84,#41,#82,#41
	db #82,#41,#82,#41,#82,#3a,#84,#fe
	db #04,#ff,#16,#50,#e1,#14,#ff,#00
	db #50,#ff,#2e,#02,#f1,#01,#3a,#02
	db #00,#2e,#82,#3a,#82,#2e,#82,#3a
	db #82,#2e,#82,#3a,#82,#35,#82,#41
	db #82,#35,#82,#41,#82,#35,#82,#41
	db #82,#35,#82,#41,#82,#35,#82,#41
	db #82,#35,#82,#41,#82,#35,#82,#41
	db #82,#35,#82,#41,#82,#33,#82,#3f
	db #82,#33,#82,#3f,#82,#33,#82,#3f
	db #82,#33,#82,#3f,#82,#35,#82,#41
	db #82,#35,#82,#41,#82,#35,#82,#41
	db #82,#35,#82,#41,#82,#ff,#46,#08
	db #f0,#01,#3a,#08,#00,#46,#88,#3a
	db #88,#46,#88,#3a,#88,#46,#88,#3a
	db #88,#46,#88,#3a,#88,#ff,#ba,#81
	db #00,#fe,#03,#bc,#00,#fe,#03,#be
	db #00,#fe,#03,#bf,#00,#fe,#03,#c1
	db #00,#fe,#03,#c1,#00,#fe,#03,#c3
	db #00,#fe,#01,#c3,#00,#fe,#01,#c3
	db #00,#fe,#01,#c3,#00,#fe,#01,#41
	db #82,#fe,#02,#c3,#00,#fe,#01,#c3
	db #00,#fe,#01,#c3,#00,#fe,#01,#c3
	db #00,#fe,#01,#41,#82,#fe,#02,#bf
	db #00,#fe,#01,#bf,#00,#fe,#01,#bf
	db #00,#fe,#01,#bf,#00,#fe,#01,#be
	db #00,#fe,#03,#3e,#82,#fe,#02,#c1
	db #00,#fe,#01,#c1,#00,#fe,#01,#c1
	db #00,#fe,#01,#c1,#00,#fe,#01,#3a
	db #84,#fe,#04,#ff,#3a,#04,#f0,#00
	db #3c,#04,#00,#3f,#82,#3c,#86,#37
	db #02,#e0,#12,#37,#02,#f0,#00,#37
	db #02,#e0,#12,#37,#04,#00,#3f,#02
	db #01,#3e,#84,#3f,#88,#3f,#02,#f0
	db #01,#3c,#04,#00,#3e,#82,#41,#04
	db #01,#3e,#0c,#00,#d1,#10,#cf,#00
	db #cd,#00,#cb,#00,#ca,#00,#c8,#00
	db #c6,#00,#d1,#00,#cf,#00,#cd,#00
	db #cb,#00,#ca,#00,#c8,#00,#c6,#00
	db #fe,#02,#ff,#22,#50,#e1,#14,#ff
	db #00,#40,#3a,#02,#0f,#3a,#02,#0e
	db #3a,#02,#0f,#3a,#02,#0e,#3a,#02
	db #0f,#3a,#82,#ba,#0f,#ba,#0f,#ba
	db #0f,#ba,#0f,#ff,#3a,#02,#0f,#3a
	db #02,#0e,#3a,#82,#3a,#82,#3a,#02
	db #0f,#3a,#02,#0e,#3a,#82,#3a,#82
	db #3a,#02,#0f,#3a,#02,#0e,#3a,#82
	db #3a,#82,#3a,#02,#0f,#3a,#02,#0e
	db #3a,#82,#3a,#82,#3a,#02,#0f,#3a
	db #02,#0e,#3a,#82,#3a,#82,#3a,#02
	db #0f,#3a,#02,#0e,#3a,#82,#3a,#82
	db #3a,#02,#0f,#3a,#02,#0e,#3a,#82
	db #3a,#82,#3a,#02,#0f,#3a,#02,#0e
	db #3a,#82,#3a,#82,#3a,#02,#0f,#3a
	db #02,#0e,#3a,#02,#0f,#3a,#02,#0e
	db #3a,#02,#0f,#3a,#82,#ba,#0f,#ba
	db #0f,#ba,#0f,#ba,#0f,#ff,#3a,#02
	db #0f,#3a,#02,#0e,#3a,#82,#3a,#82
	db #3a,#02,#0f,#3a,#02,#0e,#3a,#82
	db #3a,#82,#3a,#02,#0f,#3a,#82,#3a
	db #82,#3a,#02,#0e,#3a,#02,#0f,#3a
	db #02,#0e,#3a,#82,#3a,#82,#3a,#02
	db #0f,#3a,#02,#0e,#3a,#82,#3a,#82
	db #3a,#02,#0f,#3a,#82,#3a,#02,#0e
	db #3a,#82,#3a,#02,#0f,#3a,#02,#0e
	db #3a,#82,#3a,#82,#3a,#02,#0f,#3a
	db #82,#3a,#82,#3a,#92,#ff,#fe,#10
	db #3a,#02,#0f,#ba,#0f,#ba,#0f,#3a
	db #82,#3a,#82,#3a,#82,#3a,#02,#0e
	db #3a,#82,#3a,#82,#3a,#02,#0f,#3a
	db #82,#3a,#82,#3a,#02,#0e,#3a,#02
	db #0f,#3a,#02,#0e,#3a,#82,#3a,#82
	db #3a,#02,#0f,#3a,#02,#0e,#3a,#82
	db #3a,#82,#3a,#02,#0f,#3a,#02,#0e
	db #3a,#82,#3a,#82,#3a,#02,#0f,#3a
	db #02,#0e,#3a,#02,#0f,#3a,#02,#0e
	db #3a,#02,#0f,#3a,#82,#ba,#0f,#ba
	db #0f,#ba,#0f,#ba,#0f,#ff,#7f,#24
	db #bf,#24,#ff,#24,#3f,#25,#7f,#25
	db #bf,#25,#ff,#25,#3f,#26,#7f,#26
	db #bf,#26,#ff,#26,#3f,#27,#7f,#27
	db #bf,#27,#ff,#27,#3f,#28,#7f,#28
	db #bf,#28,#ff,#28,#3f,#29,#7f,#29
	db #bf,#29,#ff,#29,#3f,#2a,#7f,#2a
	db #bf,#2a,#ff,#2a,#3f,#2b,#7f,#2b
	db #bf,#2b,#ff,#2b,#3f,#2c,#7f,#2c
	db #bf,#2c,#ff,#2c,#3f,#2d,#7f,#2d
	db #bf,#2d,#ff,#2d,#3f,#2e,#7f,#2e
	db #bf,#2e,#ff,#2e,#3f,#2f,#7f,#2f
	db #bf,#2f,#ff,#2f,#3f,#30,#7f,#30
	db #bf,#30,#ff,#30,#3f,#31,#7f,#31
	db #bf,#31,#ff,#31,#3f,#32,#7f,#32
	db #bf,#32,#ff,#32,#3f,#33,#7f,#33
	db #bf,#33,#ff,#33,#3f,#34,#7f,#34
	db #bf,#34,#ff,#34,#3f,#35,#7f,#35
	db #bf,#35,#ff,#35,#3f,#36,#7f,#36
	db #bf,#36,#ff,#36,#3f,#37,#7f,#37
	db #bf,#37,#ff,#37,#3f,#38,#7f,#38
	db #bf,#38,#ff,#38,#3f,#39,#7f,#39
	db #bf,#39,#ff,#39,#3f,#3a,#7f,#3a
	db #bf,#3a,#ff,#3a,#3f,#3b,#7f,#3b
	db #bf,#3b,#ff,#3b,#3f,#3c,#7f,#3c
	db #bf,#3c,#00,#00,#00,#00,#00,#00
	db #4f,#6f,#3f,#ff,#88,#00,#13,#1f
	db #8f,#ff,#ee,#01,#ff,#ff,#ff,#8f
	db #cf,#7f,#ff
;	#2108
;	call #401c
;
.music_info
	db "Pot De Call 5 - Intro (1993)(SWAB System)()",0
	db "ST-Module",0

	read "music_end.asm"