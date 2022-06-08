; Music of Dracula Fanz Issue 5 - Menu B Cheat Part (1995)(Dracula Fanz Team)()(ST-Module)
; Ripped by Megachur the 28/05/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DRFI5MBC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 05
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
	ld a,#05
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
	db #00,#38,#00,#00
.l432a
	dw l45a6,l45f1,l463c
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
	db #00,#00,#00,#00,#c9,#46,#00,#01
	db #08,#00,#04,#24,#00,#00,#00,#df
.l440c equ $ + 2
	db #b5,#45,#06,#45,#46,#45,#66,#45
	db #07,#00,#01,#1f,#de,#01,#00,#00
.l441a
	db #55,#48,#02,#03,#09,#00,#01,#32
.l4428 equ $ + 6
	db #00,#00,#00,#e7,#00,#46,#06,#45
	db #46,#45,#66,#45,#07,#00,#01,#1f
.l4436 equ $ + 4
	db #d5,#00,#00,#00,#8a,#49,#04,#05
	db #0a,#00,#02,#37,#00,#00,#00,#ef
.l4444 equ $ + 2
	db #4b,#46,#06,#45,#46,#45,#66,#45
	db #07,#00,#01,#1f,#9f,#00,#00,#00
.l4452
	db #00,#00,#00,#00,#00,#81,#1c,#40
	db #ff,#00,#53,#54,#2d,#4d,#6f,#64
.l4466 equ $ + 4
	db #75,#6c,#65,#2e,#06,#45,#46,#45
	db #66,#45,#07,#00,#06,#45,#86,#45
	db #66,#45,#00,#00,#49,#92,#45,#f3
	db #20,#41,#00,#ff,#ff,#3e,#21,#d1
	db #70,#9d,#23,#56,#23,#40,#10,#3f
	db #09,#bd,#23,#4e,#fe,#3e,#ca,#3f
	db #98,#3d,#50,#30,#08,#7b,#4f,#45
	db #00,#2c,#b0,#18,#ec,#3d,#a0,#6f
	db #08,#15,#4d,#4f,#06,#3f,#af,#57
	db #75,#3d,#f0,#30,#09,#15,#e6,#85
	db #66,#85,#08,#18,#e6,#ff,#26,#00
	db #46,#00,#00,#00,#00,#76,#00,#76
	db #00,#76,#00,#00,#00,#76,#00,#76
	db #00,#76,#00,#00,#00,#76,#00,#76
	db #00,#76,#00,#00,#00,#76,#00,#76
	db #00,#76,#00,#00,#00,#76,#00,#76
.l44e6 equ $ + 4
	db #00,#76,#00,#00,#06,#86,#26,#86
	db #46,#86,#c6,#3e,#66,#86,#66,#c4
	db #86,#c4,#00,#76,#00,#76,#00,#76
	db #00,#76,#00,#76,#00,#76,#00,#76
	db #00,#76,#00,#76,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0c,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0a,#08
	db #06,#04,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#09,#08,#08,#08,#08,#08,#07
.l45a6 equ $ + 4
	db #06,#04,#02,#00,#00,#87,#46,#00
	db #91,#46,#00,#9d,#46,#00,#b0,#46
	db #00,#c2,#46,#00,#d4,#46,#00,#9d
	db #46,#00,#b0,#46,#00,#c2,#46,#00
	db #d4,#46,#00,#e8,#46,#00,#0a,#47
	db #00,#e8,#46,#00,#58,#47,#01,#87
	db #46,#01,#91,#46,#01,#9d,#46,#01
	db #b0,#46,#01,#c2,#46,#01,#d4,#46
	db #01,#e8,#46,#01,#0a,#47,#01,#e8
.l45f1 equ $ + 7
	db #46,#01,#58,#47,#80,#a6,#45,#00
	db #6c,#47,#00,#ad,#47,#00,#ee,#47
	db #00,#1a,#48,#00,#45,#48,#00,#71
	db #48,#00,#ee,#47,#00,#1a,#48,#00
	db #45,#48,#00,#71,#48,#00,#a4,#48
	db #00,#c6,#48,#00,#a4,#48,#00,#14
	db #49,#01,#6c,#47,#01,#ad,#47,#01
	db #ee,#47,#01,#1a,#48,#01,#45,#48
	db #01,#71,#48,#01,#a4,#48,#01,#c6
	db #48,#01,#a4,#48,#01,#14,#49,#80
.l463c equ $ + 2
	db #f1,#45,#00,#3f,#49,#00,#42,#49
	db #00,#45,#49,#00,#61,#49,#00,#7f
	db #49,#00,#3f,#49,#00,#45,#49,#00
	db #61,#49,#00,#7f,#49,#00,#3f,#49
	db #00,#9d,#49,#00,#bf,#49,#00,#9d
	db #49,#00,#0d,#4a,#01,#3f,#49,#01
	db #42,#49,#01,#45,#49,#01,#61,#49
	db #01,#7f,#49,#01,#3f,#49,#01,#9d
	db #49,#01,#bf,#49,#01,#9d,#49,#01
	db #0d,#4a,#80,#3c,#46,#3a,#08,#00
	db #38,#88,#37,#88,#33,#88,#ff,#2e
	db #08,#00,#2c,#88,#2b,#08,#01,#27
	db #08,#00,#ff,#2e,#04,#01,#29,#04
	db #00,#2e,#84,#29,#84,#44,#84,#2c
	db #84,#27,#84,#27,#84,#ff,#2e,#04
	db #01,#29,#84,#2e,#84,#29,#84,#2c
	db #84,#2c,#84,#29,#84,#29,#84,#ff
	db #2e,#04,#00,#29,#84,#2e,#84,#29
	db #84,#2c,#84,#2c,#84,#27,#84,#27
	db #84,#ff,#27,#04,#00,#28,#84,#29
	db #84,#2b,#84,#24,#84,#29,#84,#22
	db #82,#29,#82,#22,#84,#ff,#29,#02
	db #00,#2b,#82,#2c,#82,#2d,#82,#2e
	db #82,#2c,#82,#29,#82,#26,#82,#2e
	db #82,#30,#82,#31,#82,#32,#82,#33
	db #82,#32,#82,#33,#82,#32,#82,#ff
	db #29,#02,#00,#2b,#82,#2c,#82,#2d
	db #82,#2e,#82,#2c,#82,#29,#82,#26
	db #82,#26,#84,#24,#82,#22,#84,#2e
	db #84,#fe,#02,#ff,#29,#02,#00,#2b
	db #82,#2c,#82,#2d,#82,#2e,#82,#2c
	db #82,#29,#82,#26,#82,#ae,#00,#fe
	db #01,#b0,#00,#fe,#01,#b1,#00,#fe
	db #01,#b2,#00,#fe,#01,#b3,#00,#fe
	db #01,#b2,#00,#fe,#01,#b3,#00,#fe
	db #01,#b2,#00,#fe,#01,#ff,#33,#04
	db #00,#34,#84,#35,#84,#37,#84,#30
	db #84,#35,#84,#2e,#82,#35,#82,#2e
	db #84,#ff,#c6,#00,#ba,#00,#c1,#00
	db #c6,#00,#ba,#00,#c1,#00,#c6,#00
	db #ba,#00,#c1,#00,#c6,#00,#ba,#00
	db #c1,#00,#c6,#00,#ba,#00,#c1,#00
	db #c6,#00,#ba,#00,#bf,#00,#c6,#00
	db #ba,#00,#bf,#00,#c6,#00,#ba,#00
	db #bf,#00,#c6,#00,#ba,#00,#bf,#00
	db #c6,#00,#ba,#00,#bf,#00,#c6,#00
	db #ba,#00,#ff,#c6,#00,#ba,#00,#c1
	db #00,#c6,#00,#ba,#00,#c1,#00,#c6
	db #00,#ba,#00,#c1,#00,#c6,#00,#ba
	db #00,#c1,#00,#c6,#00,#ba,#00,#c1
	db #00,#c6,#00,#ba,#01,#bf,#00,#c6
	db #00,#ba,#00,#bf,#00,#c6,#00,#ba
	db #00,#bf,#00,#c6,#00,#ba,#00,#bf
	db #00,#c6,#00,#ba,#00,#bf,#00,#c6
	db #00,#ba,#00,#ff,#00,#01,#ba,#00
	db #bc,#00,#ba,#00,#bc,#00,#3e,#82
	db #ba,#00,#bc,#00,#ba,#00,#bc,#00
	db #3e,#84,#bb,#00,#3c,#82,#44,#82
	db #44,#82,#44,#82,#c3,#01,#c1,#01
	db #3f,#82,#3f,#03,#00,#bc,#00,#ff
	db #be,#01,#ba,#01,#bc,#01,#ba,#01
	db #bc,#01,#3e,#82,#ba,#01,#bc,#01
	db #ba,#01,#bc,#01,#3e,#84,#bb,#01
	db #3c,#82,#3c,#82,#3c,#82,#3c,#82
	db #b9,#01,#b7,#01,#35,#82,#35,#83
	db #bc,#01,#ff,#be,#00,#ba,#00,#bc
	db #00,#ba,#00,#bc,#00,#3e,#82,#ba
	db #00,#bc,#00,#ba,#00,#bc,#00,#3e
	db #04,#01,#bb,#00,#3c,#82,#44,#82
	db #44,#82,#44,#82,#c3,#00,#c1,#00
	db #3f,#82,#3f,#83,#c3,#00,#ff,#00
	db #01,#c2,#00,#c3,#00,#c5,#00,#c8
	db #00,#c6,#00,#c5,#00,#c3,#00,#c1
	db #00,#c0,#00,#c1,#00,#c2,#00,#c3
	db #00,#c1,#00,#bf,#00,#be,#00,#bc
	db #00,#bb,#00,#bc,#00,#be,#00,#c1
	db #00,#bf,#00,#be,#00,#bc,#00,#3a
	db #88,#ff,#35,#02,#00,#37,#82,#38
	db #82,#39,#82,#3a,#82,#38,#82,#35
	db #82,#32,#82,#3e,#82,#3f,#82,#40
	db #82,#41,#82,#43,#82,#41,#82,#43
	db #82,#41,#82,#ff,#35,#02,#00,#37
	db #82,#38,#82,#39,#82,#3a,#82,#38
	db #82,#35,#82,#32,#82,#35,#84,#3a
	db #82,#3a,#84,#3a,#84,#fe,#02,#ff
	db #35,#02,#00,#37,#82,#38,#82,#39
	db #82,#3a,#82,#38,#82,#35,#82,#32
	db #82,#be,#00,#fe,#01,#bf,#00,#fe
	db #01,#c0,#00,#fe,#01,#c1,#00,#fe
	db #01,#c3,#00,#fe,#01,#c1,#00,#fe
	db #01,#c3,#00,#fe,#01,#c1,#00,#fe
	db #01,#ff,#fe,#01,#cf,#00,#c6,#00
	db #c3,#00,#cf,#00,#cc,#00,#c6,#00
	db #c3,#00,#cd,#00,#c6,#00,#c1,#00
	db #4f,#82,#4f,#83,#ca,#00,#c6,#00
	db #ca,#00,#c6,#00,#ca,#00,#c6,#00
	db #48,#82,#46,#88,#ff,#00,#20,#ff
	db #00,#20,#ff,#00,#02,#41,#02,#00
	db #c1,#00,#41,#83,#41,#82,#c1,#00
	db #41,#85,#3f,#82,#48,#82,#48,#82
	db #48,#82,#46,#84,#46,#84,#ff,#41
	db #02,#01,#41,#82,#c1,#01,#41,#83
	db #41,#82,#41,#82,#c1,#01,#41,#83
	db #3f,#82,#3f,#82,#3f,#82,#3f,#82
	db #3c,#84,#3c,#84,#ff,#41,#02,#00
	db #41,#82,#c1,#00,#41,#83,#41,#82
	db #41,#82,#c1,#00,#41,#83,#3f,#82
	db #48,#82,#48,#82,#48,#82,#46,#84
	db #46,#84,#ff,#45,#02,#00,#46,#82
	db #47,#82,#48,#82,#4a,#82,#48,#82
	db #45,#82,#41,#82,#4a,#82,#4b,#82
	db #4c,#82,#4d,#82,#4f,#82,#4d,#82
	db #4f,#82,#4d,#82,#ff,#45,#02,#00
	db #46,#82,#47,#82,#48,#82,#4a,#82
	db #48,#82,#45,#82,#41,#82,#3e,#84
	db #3f,#82,#3e,#84,#46,#84,#fe,#02
	db #ff,#45,#02,#00,#46,#82,#47,#82
	db #48,#82,#4a,#82,#48,#82,#45,#82
	db #41,#82,#ca,#00,#fe,#01,#cb,#00
	db #fe,#01,#cc,#00,#fe,#01,#cd,#00
	db #fe,#01,#cf,#00,#fe,#01,#cd,#00
	db #fe,#01,#cf,#00,#fe,#01,#cd,#00
	db #fe,#01,#ff,#fe,#0b,#47,#02,#00
	db #47,#83,#40,#84,#3f,#84,#3e,#88
	db #ff

;
.music_info
	db "Dracula Fanz Issue 5 - Menu B Cheat Part (1995)(Dracula Fanz Team)()",0
	db "ST-Module",0

	read "music_end.asm"
