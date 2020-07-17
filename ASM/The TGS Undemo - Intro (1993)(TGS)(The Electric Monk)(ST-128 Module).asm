; Music of The TGS Undemo - Intro (1993)(TGS)(The Electric Monk)(ST-128 Module)
; Ripped by Megachur the 29/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THETGSUI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0040

	read "music_header.asm"

	jp l0049
	jp l00dd
	jp l00c1
;
.init_music
.l0049
;
	xor a
	ld hl,l05f4
	call l00ba
	ld hl,l0622
	call l00ba
	ld hl,l0650
	call l00ba
	ld ix,l05f0
	ld iy,l067a
	ld de,#002e
	ld b,#03
.l0069
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l0069
	ld hl,l0509
	ld (hl),#04
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l0505),hl
	ld (l0507),hl
	ld a,#0c
	ld c,d
	call l04e5
	ld a,#0d
	ld c,d
	jp l04e5
.l00ba
	ld b,#2a
.l00bc
	ld (hl),a
	inc hl
	djnz l00bc
	ret
;
.stop_music
.l00c1
;
	ld a,#07
	ld c,#3f
	call l04e5
	ld a,#08
	ld c,#00
	call l04e5
	ld a,#09
	ld c,#00
	call l04e5
	ld a,#0a
	ld c,#00
	jp l04e5
;
.play_music
.l00dd
;
	ld hl,l050b
	dec (hl)
	ld ix,l05f0
	ld bc,l05fe
	call l017f
	ld ix,l061e
	ld bc,l062c
	call l017f
	ld ix,l064c
	ld bc,l065a
	call l017f
.l0101 equ $ + 2
	ld hl,l0504
	ld de,l050b
	ld b,#06
	call l015c
	ld b,#07
	call l015c
	ld b,#0b
	call l015c
	ld b,#0d
	call l015c
	ld de,l050b
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l060f
	call l0135
	ld hl,l063d
	call l0135
	ld hl,l066b
.l0135
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l014a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l014a
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l015c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l04e5
.l0167
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld e,l
	ld (hl),d
	rla
	ld e,l
	ld (hl),d
	dec d
	ld c,d
	ld e,l
	ld a,(hl)
	nop
	jp l04e5
.l017f
	ld a,(l050b)
	or a
	jp nz,l0237
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l0237
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l0167
	or a
	jp z,l022c
	ld r,a
	and #7f
	cp #10
	jr c,l0207
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l037f
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l01e0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l01e0
	rrca
	ld c,a
	ld hl,l0680
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l01ff
	ld (ix+#1e),b
.l01ff
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l0220
.l0207
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l0510
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add (hl)
	add a
	add a
	add l
	add a
.l0220
	ld a,d
	or a
	jr nz,l022e
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l022e
.l022c
	ld a,(hl)
	inc hl
.l022e
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l0237
	ld a,(ix+#17)
	or a
	jr nz,l024d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l024d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l0263
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l0263
	ld a,(ix+#0d)
	or a
	jr z,l0271
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l028f
.l0271
	ld a,(ix+#1a)
	or a
	jp z,l0296
	ld c,a
	cp #03
	jr nz,l027e
	xor a
.l027e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l028f
	ld a,(ix+#18)
	dec c
	jr z,l028f
	ld a,(ix+#19)
.l028f
	add (ix+#07)
	ld b,d
	call l037f
.l0296
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l02be
	dec (ix+#1b)
	jr nz,l02be
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l02f6
.l02be
	ld a,(ix+#29)
	or a
	jr z,l02f6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l02ed
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l02e4
	ld (ix+#29),#ff
	jr l02ed
.l02e4
	cp (ix+#2b)
	jr nz,l02ed
	ld (ix+#29),#01
.l02ed
	ld b,d
	or a
	jp p,l02f3
	dec b
.l02f3
	ld c,a
	jr l0301
.l02f6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l0301
	pop hl
	bit 7,(ix+#14)
	jr z,l030a
	ld h,d
	ld l,d
.l030a
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l04e5
	ld c,h
	ld a,(ix+#02)
	call l04e5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l035d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l034c
	dec (ix+#09)
	jr nz,l034c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l0344
	xor a
	jr l0349
.l0344
	cp #10
	jr nz,l0349
	dec a
.l0349
	ld (ix+#1e),a
.l034c
	ld a,b
	sub (ix+#1e)
	jr nc,l0353
	xor a
.l0353
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l04e5
.l035d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l050c)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l037b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l037b
	ld (l050c),hl
	ret
.l037f
	ld hl,l052e
	cp #61
	jr nc,l0389
	add a
	ld c,a
	add hl,bc
.l0389
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l04b8
	ld (ix+#1e),a
	jp l0220
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l03b1
	neg
.l03b1
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l0220
	dec b
	jr l03cb
	inc b
.l03cb
	call l04b8
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l0220
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l049d
	ld a,(hl)
	inc hl
	or a
	jr z,l040d
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l040d
	ld (ix+#29),a
	jp l0220
	dec hl
	ld a,(hl)
	and #0f
	ld (l050f),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l050e),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l0220
	ld a,(hl)
	or a
	jr z,l043e
	call l04ba
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l0220
.l043e
	ld hl,l0101
	ld (l050a),hl
	jp l0220
	call l04b8
	ld (ix+#1e),a
	jp l0220
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l04c9
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l04c9
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l0220
	ld a,(hl)
	inc hl
	ld (l0509),a
	jp l0220
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l0220
	call l04b8
	add a
.l049d
	ld b,#00
	ld c,a
	push hl
	ld hl,l0700
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l0220
.l04b8
	ld a,(hl)
	inc hl
.l04ba
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l04c9
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l0680
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l04e5
	di
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
	ei
.l0504
	ret
.l050c equ $ + 7
.l050b equ $ + 6
.l050a equ $ + 5
.l0509 equ $ + 4
.l0507 equ $ + 2
.l0505
	db #00,#00,#00,#00,#00,#00,#00,#00
.l050f equ $ + 2
.l050e equ $ + 1
	db #38,#00,#00
.l0510
	dw #0393,#03a6,#03a5,#03ca
	dw #03c7,#03da,#03eb,#0413
	dw #042d,#0413,#0447,#0450
	dw #0472,#047a,#0499
.l052e
	dw #0000,#0e18,#0d4d,#0c8e
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
.l05f4 equ $ + 4
.l05f0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l05fe equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l060f equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l061e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l0622 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l062c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l063d equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l064c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l0650
	db #00,#00,#00,#00,#00,#00,#00,#00
.l065a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l066b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l067a equ $ + 2
	db #00,#00,#a0,#09,#bb,#09,#d6,#09
.l0680
	db #20,#07,#60,#07,#80,#07,#00,#00
	db #20,#07,#a0,#07,#80,#07,#00,#00
	db #12,#c0,#12,#c0,#12,#c0,#00,#00
	db #12,#c0,#12,#c0,#12,#c0,#00,#00
	db #12,#c0,#12,#c0,#12,#c0,#00,#00
	db #20,#07,#c0,#07,#80,#07,#0b,#15
	db #12,#c0,#12,#c0,#12,#c0,#00,#00
	db #12,#c0,#12,#c0,#12,#c0,#00,#00
	db #e0,#07,#20,#08,#40,#08,#80,#00
	db #12,#c0,#12,#c0,#12,#c0,#00,#00
	db #12,#c0,#12,#c0,#12,#c0,#00,#00
	db #20,#07,#60,#08,#80,#08,#9a,#06
	db #a0,#08,#e0,#08,#00,#09,#c0,#00
	db #12,#c0,#12,#c0,#12,#c0,#00,#00
	db #12,#c0,#12,#c0,#12,#c0,#00,#00
	db #12,#c0,#12,#c0,#12,#c0,#00,#00
.l0700
	db #20,#09,#40,#09,#60,#09,#12,#c0
	db #80,#09,#12,#c0,#12,#c0,#12,#c0
	db #12,#c0,#12,#c0,#12,#c0,#12,#c0
	db #12,#c0,#12,#c0,#12,#c0,#12,#c0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0b,#0b,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#09,#07,#05,#03,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#09,#09,#09,#09
	db #09,#08,#08,#08,#08,#08,#07,#07
	db #07,#07,#07,#06,#05,#03,#02,#01
	db #0a,#0a,#0a,#0b,#0b,#0b,#0c,#0c
	db #0c,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #90,#01,#e0,#01,#30,#02,#80,#02
	db #d0,#02,#20,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#09,#00,#04,#09,#00,#04
	db #09,#00,#04,#09,#00,#04,#09,#00
	db #04,#09,#00,#04,#09,#00,#04,#09
	db #00,#04,#09,#00,#04,#09,#00,#04
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #08,#00,#05,#08,#00,#05,#08,#00
	db #05,#08,#00,#05,#08,#00,#05,#08
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #0c,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#f1,#09,#00,#21,#0a,#00,#40
	db #0a,#00,#67,#0a,#00,#94,#0a,#00
	db #c2,#0a,#00,#94,#0a,#00,#c2,#0a
	db #80,#a0,#09,#00,#e4,#0a,#00,#e4
	db #0a,#00,#e4,#0a,#00,#e4,#0a,#00
	db #e4,#0a,#00,#e4,#0a,#00,#e4,#0a
	db #00,#e4,#0a,#80,#bb,#09,#00,#55
	db #0b,#00,#55,#0b,#00,#55,#0b,#00
	db #55,#0b,#00,#b8,#0b,#00,#b8,#0b
	db #00,#b8,#0b,#00,#b8,#0b,#80,#d6
	db #09,#00,#04,#43,#11,#40,#43,#10
	db #02,#42,#10,#02,#40,#10,#02,#40
	db #10,#14,#43,#10,#02,#43,#10,#02
	db #40,#10,#02,#43,#10,#04,#40,#10
	db #02,#43,#10,#04,#43,#10,#02,#40
	db #10,#02,#47,#10,#08,#40,#11,#20
	db #ff,#40,#10,#02,#40,#10,#02,#40
	db #10,#02,#40,#10,#02,#47,#10,#0c
	db #43,#10,#04,#43,#10,#02,#42,#10
	db #02,#40,#10,#02,#40,#10,#22,#ff
	db #00,#04,#43,#10,#02,#40,#10,#02
	db #43,#10,#02,#43,#10,#02,#40,#10
	db #02,#43,#10,#04,#40,#10,#12,#43
	db #10,#02,#43,#10,#04,#42,#10,#02
	db #40,#10,#02,#40,#10,#12,#ff,#00
	db #04,#40,#10,#02,#40,#10,#02,#40
	db #10,#02,#40,#10,#02,#40,#10,#02
	db #40,#10,#02,#4c,#10,#02,#4c,#10
	db #04,#43,#10,#04,#42,#10,#02,#40
	db #10,#02,#40,#10,#1c,#40,#1f,#24
	db #40,#10,#04,#ff,#47,#1f,#44,#47
	db #10,#04,#45,#10,#04,#43,#10,#02
	db #45,#10,#04,#43,#10,#08,#40,#10
	db #02,#40,#10,#04,#47,#10,#04,#47
	db #10,#04,#45,#10,#02,#43,#10,#04
	db #47,#10,#0c,#40,#10,#02,#40,#10
	db #04,#ff,#47,#1f,#44,#47,#10,#04
	db #45,#10,#04,#43,#10,#02,#45,#10
	db #04,#43,#10,#02,#43,#10,#02,#43
	db #10,#02,#42,#10,#02,#43,#10,#06
	db #40,#10,#20,#ff,#28,#08,#1e,#03
	db #fe,#01,#28,#08,#1e,#03,#fe,#01
	db #a6,#08,#22,#fe,#01,#28,#08,#1e
	db #03,#fe,#01,#1c,#08,#3c,#03,#fe
	db #01,#28,#08,#1e,#03,#fe,#01,#a8
	db #08,#1e,#fe,#01,#a6,#08,#22,#fe
	db #01,#a8,#08,#1e,#fe,#01,#1c,#08
	db #3c,#03,#fe,#01,#28,#08,#1e,#03
	db #fe,#01,#28,#08,#1e,#03,#fe,#01
	db #a6,#08,#22,#fe,#01,#28,#08,#1e
	db #03,#fe,#01,#1c,#08,#3c,#03,#fe
	db #01,#28,#08,#1e,#03,#fe,#01,#a8
	db #08,#1e,#fe,#01,#a6,#08,#22,#fe
	db #01,#a8,#08,#1e,#fe,#01,#1c,#08
	db #3c,#03,#fe,#01,#ff,#73,#80,#02
	db #73,#b0,#02,#73,#c0,#02,#73,#80
	db #02,#73,#b0,#02,#73,#80,#02,#73
	db #c0,#02,#73,#b0,#02,#f3,#b0,#f3
	db #b0,#73,#80,#02,#73,#c0,#02,#73
	db #b0,#02,#73,#80,#02,#73,#b0,#02
	db #73,#c0,#02,#73,#80,#02,#73,#80
	db #02,#73,#b0,#02,#73,#c0,#02,#73
	db #80,#02,#73,#b0,#02,#73,#80,#02
	db #73,#c0,#02,#73,#b0,#02,#f3,#b0
	db #f3,#b0,#73,#80,#02,#73,#c0,#02
	db #73,#b0,#02,#73,#80,#02,#73,#b0
	db #02,#73,#c0,#02,#73,#80,#02,#ff
	db #f3,#80,#43,#5f,#10,#f3,#b0,#c3
	db #50,#f3,#c0,#c3,#50,#f3,#80,#c3
	db #50,#f3,#b0,#c3,#50,#f3,#80,#c3
	db #50,#f3,#c0,#c3,#50,#f3,#b0,#c3
	db #50,#f3,#b0,#c3,#50,#f3,#80,#c3
	db #50,#f3,#c0,#c3,#50,#f3,#b0,#c3
	db #50,#f3,#80,#47,#5f,#11,#f3,#b0
	db #c7,#50,#f3,#c0,#43,#5f,#10,#f3
	db #80,#c3,#50,#f3,#80,#40,#5f,#12
	db #f3,#b0,#c0,#50,#f3,#c0,#c0,#50
	db #f3,#80,#c0,#50,#f3,#b0,#c0,#50
	db #f3,#80,#c0,#50,#f3,#c0,#c0,#50
	db #f3,#b0,#c0,#50,#f3,#b0,#c0,#50
	db #f3,#80,#c0,#50,#f3,#c0,#c0,#50
	db #f3,#b0,#c0,#50,#f3,#80,#c0,#50
	db #f3,#b0,#c0,#50,#f3,#c0,#c0,#50
	db #f3,#80,#c0,#50,#ff
;
.music_info
	db "The TGS Undemo - Intro (1993)(TGS)(The Electric Monk)",0
	db "ST-128 Module",0

	read "music_end.asm"
