; Music of Audio Illusions - 17 - Hardware FX II (1996)(Systeme D)(Frequency)(ST-Module)
; Ripped by Megachur the 26/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AUDIOI17.BIN"
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
	dw l47c6,l47ed,l4814
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
	db #86,#45,#c6,#45,#e6,#45,#00,#00
	db #00,#3f,#18,#7b,#7e,#3e,#18,#18
	db #18,#57,#18,#57,#18,#57,#ff,#7e
	db #3c,#57,#10,#6f,#70,#3e,#ff,#70
	db #06,#46,#46,#46,#66,#46,#18,#07
	db #86,#46,#c6,#46,#66,#46,#00,#00
	db #ff,#3f,#00,#3f,#ff,#3e,#7e,#3c
	db #18,#3f,#80,#1f,#f8,#3d,#f8,#e0
	db #80,#3f,#66,#05,#66,#04,#00,#00
	db #86,#46,#e6,#46,#66,#46,#00,#00
	db #86,#46,#06,#47,#66,#46,#00,#00
	db #26,#47,#66,#47,#66,#46,#00,#00
	db #06,#42,#e6,#43,#06,#44,#00,#00
	db #06,#42,#26,#44,#46,#44,#00,#00
	db #00,#33,#00,#33,#00,#33,#00,#00
.l44e6
	db #86,#05,#86,#47,#86,#86,#a6,#47
	db #e6,#44,#06,#45,#26,#45,#46,#45
	db #00,#33,#00,#33,#00,#33,#00,#33
	db #00,#33,#00,#33,#00,#33,#00,#33
	db #00,#00,#50,#00,#90,#00,#d0,#00
	db #10,#01,#50,#01,#90,#01,#d0,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #07,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#60,#00,#b0,#00,#f0,#00
	db #20,#01,#40,#01,#50,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0b,#09,#0a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #11,#02,#03,#04,#05,#0b,#04,#1f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#ff,#ff,#ff,#ff
	db #0f,#0e,#0e,#0d,#0d,#0e,#0e,#0f
	db #0e,#0e,#0d,#0d,#0e,#0e,#0f,#0e
	db #0e,#0d,#0d,#0e,#0e,#0f,#0e,#0e
	db #0d,#0d,#0e,#0e,#0f,#0e,#0e,#0d
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
	db #0f,#0f,#0e,#0e,#0d,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#00
	db #0e,#0e,#0e,#0e,#0d,#0d,#0d,#0d
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#09,#09,#09,#09
	db #08,#08,#08,#08,#07,#07,#07,#07
	db #0f,#0f,#0e,#03,#04,#05,#06,#07
	db #80,#80,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#fd,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0c,#00,#00,#0c,#00,#00
	db #0c,#00,#00,#0c,#00,#00,#0c,#00
	db #00,#0c,#00,#00,#0c,#00,#00,#0c
	db #00,#00,#0c,#00,#00,#0c,#00,#00
.l47c6
	db #00,#3b,#48,#00,#3b,#48,#00,#92
	db #48,#00,#92,#48,#00,#c2,#48,#00
	db #3b,#48,#00,#3b,#48,#00,#92,#48
	db #00,#92,#48,#00,#c2,#48,#00,#16
.l47ed equ $ + 7
	db #49,#00,#8b,#49,#80,#c6,#47,#00
	db #c1,#49,#00,#c1,#49,#00,#50,#4a
	db #00,#50,#4a,#00,#de,#4a,#00,#c1
	db #49,#00,#c1,#49,#00,#50,#4a,#00
	db #50,#4a,#00,#de,#4a,#00,#5f,#4b
.l4814 equ $ + 6
	db #00,#d4,#4b,#80,#ed,#47,#00,#07
	db #4c,#00,#07,#4c,#00,#88,#4c,#00
	db #88,#4c,#00,#09,#4d,#00,#07,#4c
	db #00,#07,#4c,#00,#88,#4c,#00,#88
	db #4c,#00,#09,#4d,#00,#8a,#4d,#00
	db #0b,#4e,#80,#14,#48,#6e,#02,#8c
	db #08,#6e,#02,#0c,#6e,#82,#ee,#0c
	db #6e,#82,#ee,#0c,#6e,#82,#6e,#82
	db #6e,#82,#6e,#02,#8c,#09,#6e,#02
	db #0c,#6e,#82,#ee,#0c,#6e,#82,#ee
	db #0c,#6e,#82,#6e,#82,#6e,#82,#6e
	db #02,#8c,#07,#6e,#02,#0c,#6e,#82
	db #ee,#0c,#6e,#82,#ee,#0c,#6e,#82
	db #6e,#82,#6e,#82,#6e,#02,#8c,#08
	db #6e,#02,#0c,#6e,#82,#ee,#0c,#6e
	db #82,#ee,#0c,#6e,#82,#6e,#82,#6e
	db #02,#8c,#09,#ff,#40,#0d,#15,#be
	db #05,#c0,#05,#c1,#05,#43,#82,#41
	db #82,#c0,#05,#c1,#05,#c0,#05,#c1
	db #05,#40,#82,#39,#02,#0a,#39,#82
	db #37,#02,#05,#40,#84,#45,#84,#47
	db #84,#48,#84,#4c,#84,#48,#84,#4f
	db #84,#4d,#84,#ff,#39,#02,#fb,#03
	db #39,#02,#0b,#45,#82,#b9,#0b,#39
	db #82,#b9,#0b,#39,#82,#45,#82,#b9
	db #0b,#b9,#0b,#37,#82,#37,#82,#43
	db #82,#b7,#0b,#37,#82,#b7,#0b,#37
	db #82,#43,#82,#b7,#0b,#b7,#0b,#34
	db #82,#34,#82,#40,#82,#b4,#0b,#34
	db #82,#b4,#0b,#34,#82,#40,#82,#b4
	db #0b,#b4,#0b,#35,#82,#35,#82,#41
	db #82,#b5,#0b,#b5,#0b,#35,#82,#35
	db #82,#c1,#0b,#35,#82,#c1,#0b,#ff
	db #ad,#1a,#af,#0a,#b0,#0a,#34,#82
	db #b4,#0a,#b0,#0a,#af,#0a,#ad,#0a
	db #af,#0a,#b0,#0a,#34,#82,#b4,#0a
	db #b0,#0a,#af,#0a,#b0,#0a,#b2,#0a
	db #b4,#0a,#37,#82,#b7,#0a,#b4,#0a
	db #b2,#0a,#b0,#0a,#b2,#0a,#b4,#0a
	db #37,#82,#b7,#0a,#b4,#0a,#b2,#0a
	db #b9,#0a,#b7,#0a,#b9,#0a,#3c,#82
	db #bc,#0a,#b9,#0a,#b7,#0a,#b9,#0a
	db #b7,#0a,#b9,#0a,#3c,#82,#bc,#0a
	db #b9,#0a,#b7,#0a,#bc,#0a,#bc,#0a
	db #bc,#0a,#bb,#0a,#bb,#0a,#b9,#0a
	db #b9,#0a,#b7,#0a,#b7,#0a,#b5,#0a
	db #b5,#0a,#b4,#0a,#b4,#0a,#b2,#0a
	db #b2,#0a,#bb,#0a,#ff,#39,#02,#0a
	db #3c,#83,#40,#82,#3b,#82,#3b,#82
	db #40,#83,#3c,#82,#3c,#82,#40,#83
	db #43,#82,#3e,#82,#3e,#82,#43,#83
	db #40,#82,#45,#82,#45,#83,#48,#82
	db #43,#82,#43,#82,#48,#83,#45,#82
	db #48,#82,#48,#84,#45,#84,#41,#84
	db #3e,#82,#ff,#c0,#ba,#00,#c5,#fa
	db #01,#c8,#0a,#cc,#0a,#c0,#ba,#01
	db #c5,#0a,#c8,#0a,#cc,#0a,#c0,#ba
	db #02,#c5,#0a,#c8,#0a,#cc,#0a,#c0
	db #ba,#01,#c5,#0a,#c8,#0a,#cc,#0a
	db #c0,#ba,#00,#c3,#0a,#c8,#0a,#cc
	db #0a,#c0,#ba,#01,#c3,#0a,#c8,#0a
	db #cc,#0a,#c0,#ba,#02,#c3,#0a,#c8
	db #0a,#cc,#0a,#c0,#ba,#01,#c3,#0a
	db #c8,#0a,#cc,#0a,#c5,#ba,#00,#c7
	db #0a,#c8,#0a,#cc,#0a,#c5,#ba,#01
	db #c7,#0a,#c8,#0a,#cc,#0a,#c5,#ba
	db #02,#c7,#0a,#c8,#0a,#cc,#0a,#c5
	db #ba,#01,#c7,#0a,#c8,#0a,#cc,#0a
	db #be,#ba,#00,#c1,#0a,#c5,#0a,#ca
	db #0a,#c0,#0a,#c5,#0a,#c8,#0a,#cc
	db #0a,#c1,#0a,#c5,#0a,#ca,#0a,#cd
	db #0a,#c3,#0a,#c7,#0a,#ca,#0a,#cf
	db #0a,#ff,#c0,#ba,#00,#c5,#1a,#c8
	db #0a,#cc,#0a,#c0,#ba,#01,#c5,#0a
	db #c8,#0a,#cc,#0a,#c0,#ba,#02,#c5
	db #0a,#c8,#0a,#cc,#0a,#c0,#ba,#01
	db #c5,#0a,#c8,#0a,#cc,#0a,#c0,#ba
	db #00,#c3,#0a,#c8,#0a,#cc,#0a,#c0
	db #ba,#01,#c3,#0a,#c8,#0a,#cc,#0a
	db #c0,#ba,#02,#c3,#0a,#c8,#0a,#cc
	db #0a,#c0,#ba,#01,#c3,#0a,#c8,#0a
	db #cc,#0a,#c5,#ba,#00,#c7,#0a,#c8
	db #0a,#cc,#0a,#c5,#ba,#01,#c7,#0a
	db #c8,#0a,#cc,#0a,#c5,#ba,#02,#c7
	db #0a,#c8,#0a,#cc,#0a,#c5,#ba,#01
	db #c7,#0a,#c8,#0a,#cc,#0a,#be,#ba
	db #00,#c1,#0a,#c5,#0a,#ca,#0a,#c0
	db #0a,#c5,#0a,#c8,#0a,#cc,#0a,#c1
	db #0a,#c5,#0a,#ca,#0a,#cd,#0a,#c3
	db #0a,#c7,#0a,#ca,#0a,#cf,#0a,#ff
	db #ad,#0b,#b9,#0b,#ad,#0b,#b9,#0b
	db #ad,#0b,#b9,#0b,#ad,#0b,#b9,#0b
	db #ad,#0b,#ad,#0b,#b9,#0b,#ad,#0b
	db #ad,#0b,#b9,#0b,#ad,#0b,#b9,#0b
	db #ab,#0b,#b7,#0b,#ab,#0b,#b7,#0b
	db #ab,#0b,#b7,#0b,#ab,#0b,#b7,#0b
	db #ab,#0b,#ab,#0b,#b7,#0b,#ab,#0b
	db #ab,#0b,#b7,#0b,#ab,#0b,#b7,#0b
	db #a8,#0b,#b4,#0b,#a8,#0b,#b4,#0b
	db #a8,#0b,#b4,#0b,#a8,#0b,#b4,#0b
	db #a8,#0b,#a8,#0b,#b4,#0b,#a8,#0b
	db #a8,#0b,#b4,#0b,#a8,#0b,#b4,#0b
	db #a9,#0b,#b5,#0b,#a9,#0b,#b5,#0b
	db #a9,#0b,#b5,#0b,#a9,#0b,#b5,#0b
	db #a9,#0b,#a9,#0b,#b5,#0b,#a9,#0b
	db #a9,#0b,#b5,#0b,#a9,#0b,#b5,#0b
	db #ff,#b9,#0a,#bb,#0a,#bc,#0a,#40
	db #82,#c0,#0a,#bc,#0a,#bb,#0a,#b9
	db #0a,#bb,#0a,#bc,#0a,#40,#82,#c0
	db #0a,#bc,#0a,#bb,#0a,#bc,#0a,#be
	db #0a,#c0,#0a,#43,#82,#c3,#0a,#c0
	db #0a,#be,#0a,#bc,#0a,#be,#0a,#c0
	db #0a,#43,#82,#c3,#0a,#c0,#0a,#be
	db #0a,#c5,#0a,#c3,#0a,#c5,#0a,#48
	db #82,#c8,#0a,#c5,#0a,#c3,#0a,#c5
	db #0a,#c3,#0a,#c5,#0a,#48,#82,#c8
	db #0a,#c5,#0a,#c3,#0a,#c8,#0a,#c8
	db #0a,#c8,#0a,#c7,#0a,#c7,#0a,#c5
	db #0a,#c5,#0a,#c3,#0a,#c3,#0a,#c1
	db #0a,#c1,#0a,#c0,#0a,#c0,#0a,#be
	db #0a,#be,#0a,#af,#0a,#ff,#00,#01
	db #3b,#02,#06,#40,#83,#3c,#82,#39
	db #82,#3c,#83,#40,#82,#3b,#82,#3e
	db #82,#43,#83,#40,#82,#3c,#82,#40
	db #83,#43,#82,#3e,#82,#43,#82,#48
	db #83,#45,#82,#45,#82,#45,#84,#45
	db #06,#0a,#47,#84,#43,#84,#40,#84
	db #ff,#a6,#10,#ad,#06,#b9,#06,#ad
	db #06,#be,#01,#b9,#06,#ad,#06,#b9
	db #06,#a6,#00,#ad,#06,#b9,#06,#ad
	db #06,#be,#01,#b9,#06,#ad,#06,#b9
	db #06,#a6,#00,#ab,#06,#b7,#06,#ab
	db #06,#be,#01,#b7,#06,#ab,#06,#b7
	db #06,#a6,#00,#ab,#06,#b7,#06,#ab
	db #06,#be,#01,#b7,#06,#ab,#06,#b7
	db #06,#a6,#00,#a8,#06,#b4,#06,#a8
	db #06,#be,#01,#b4,#06,#a8,#06,#b4
	db #06,#a6,#00,#a8,#06,#b4,#06,#a8
	db #06,#be,#01,#b4,#06,#a8,#06,#b4
	db #06,#a6,#00,#a9,#06,#b5,#06,#a9
	db #06,#be,#01,#b5,#06,#a9,#06,#b5
	db #06,#a6,#00,#a9,#06,#a6,#00,#a9
	db #06,#be,#01,#a9,#06,#a9,#06,#b5
	db #06,#ff,#a6,#10,#ad,#06,#b9,#06
	db #ad,#06,#be,#01,#b9,#06,#ad,#06
	db #b9,#06,#a6,#00,#ad,#06,#b9,#06
	db #ad,#06,#be,#01,#b9,#06,#ad,#06
	db #b9,#06,#a6,#00,#ab,#06,#b7,#06
	db #ab,#06,#be,#01,#b7,#06,#ab,#06
	db #b7,#06,#a6,#00,#ab,#06,#b7,#06
	db #ab,#06,#be,#01,#b7,#06,#ab,#06
	db #b7,#06,#a6,#00,#a8,#06,#b4,#06
	db #a8,#06,#be,#01,#b4,#06,#a8,#06
	db #b4,#06,#a6,#00,#a8,#06,#b4,#06
	db #a8,#06,#be,#01,#b4,#06,#a8,#06
	db #b4,#06,#a6,#00,#a9,#06,#b5,#06
	db #a9,#06,#be,#01,#b5,#06,#a9,#06
	db #b5,#06,#a6,#00,#a9,#06,#a6,#00
	db #a9,#06,#be,#01,#a9,#06,#a9,#06
	db #b5,#06,#ff,#a6,#10,#ad,#06,#b9
	db #06,#ad,#06,#be,#01,#b9,#06,#ad
	db #06,#b9,#06,#a6,#00,#ad,#06,#b9
	db #06,#ad,#06,#be,#01,#b9,#06,#ad
	db #06,#b9,#06,#a6,#00,#ab,#06,#b7
	db #06,#ab,#06,#be,#01,#b7,#06,#ab
	db #06,#b7,#06,#a6,#00,#ab,#06,#b7
	db #06,#ab,#06,#be,#01,#b7,#06,#ab
	db #06,#b7,#06,#a6,#00,#a8,#06,#b4
	db #06,#a8,#06,#be,#01,#b4,#06,#a8
	db #06,#b4,#06,#a6,#00,#a8,#06,#b4
	db #06,#a8,#06,#be,#01,#b4,#06,#a8
	db #06,#b4,#06,#a6,#00,#a9,#06,#b5
	db #06,#a9,#06,#be,#01,#b5,#06,#a9
	db #06,#b5,#06,#a6,#00,#a9,#06,#a6
	db #00,#a9,#06,#be,#01,#be,#01,#a9
	db #06,#be,#01,#ff,#a6,#10,#ad,#06
	db #b9,#06,#ad,#06,#be,#01,#b9,#06
	db #ad,#06,#b9,#06,#a6,#00,#ad,#06
	db #b9,#06,#ad,#06,#be,#01,#b9,#06
	db #ad,#06,#b9,#06,#a6,#00,#a8,#06
	db #b4,#06,#a8,#06,#be,#01,#b4,#06
	db #a8,#06,#b4,#06,#a6,#00,#a8,#06
	db #b4,#06,#a8,#06,#be,#01,#b4,#06
	db #a8,#06,#b4,#06,#a6,#00,#a9,#06
	db #b5,#06,#a9,#06,#be,#01,#b5,#06
	db #a9,#06,#b5,#06,#a6,#00,#a9,#06
	db #b5,#06,#a9,#06,#be,#01,#b5,#06
	db #a9,#06,#b5,#06,#a6,#00,#a4,#06
	db #b0,#06,#a4,#06,#be,#01,#b0,#06
	db #a4,#06,#b0,#06,#a6,#00,#a4,#06
	db #b0,#06,#a4,#06,#be,#01,#af,#06
	db #a3,#06,#af,#06,#ff,#a6,#10,#ad
	db #06,#b9,#06,#ad,#06,#be,#01,#b9
	db #06,#ad,#06,#b9,#06,#a6,#00,#ad
	db #06,#b9,#06,#ad,#06,#be,#01,#b9
	db #06,#ad,#06,#b9,#06,#a6,#00,#a8
	db #06,#b4,#06,#a8,#06,#be,#01,#b4
	db #06,#a8,#06,#b4,#06,#a6,#00,#a8
	db #06,#b4,#06,#a8,#06,#be,#01,#b4
	db #06,#a8,#06,#b4,#06,#a6,#00,#a9
	db #06,#b5,#06,#a9,#06,#be,#01,#b5
	db #06,#a9,#06,#b5,#06,#a6,#00,#a9
	db #06,#b5,#06,#a9,#06,#be,#01,#b5
	db #06,#a9,#06,#b5,#06,#a6,#00,#a4
	db #06,#b0,#06,#a4,#06,#be,#01,#b0
	db #06,#a4,#06,#b0,#06,#a6,#00,#a4
	db #06,#b0,#06,#a4,#06,#be,#01,#af
	db #06,#a3,#06,#af,#06,#ff
;
.music_info
	db "Audio Illusions - 17 - Hardware FX II (1996)(Systeme D)(Frequency)",0
	db "ST-Module",0

	read "music_end.asm"
