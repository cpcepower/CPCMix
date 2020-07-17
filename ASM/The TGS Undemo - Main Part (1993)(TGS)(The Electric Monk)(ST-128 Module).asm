; Music of The TGS Undemo - Main Part (1993)(TGS)(The Electric Monk)(ST-128 Module)
; Ripped by Megachur the 29/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THETGUMP.BIN"
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
	ld (hl),#06
	inc hl
	ld (hl),#20
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
	ld (hl),#20
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
	db #00,#00,#60,#09,#a5,#09,#ea,#09
.l0680
	db #20,#07,#60,#07,#80,#07,#80,#00
	db #a0,#07,#e0,#07,#00,#08,#c0,#00
	db #20,#08,#60,#08,#80,#08,#9a,#06
	db #1c,#ee,#5b,#0e,#66,#05,#52,#33
	db #1f,#ca,#5e,#04,#32,#02,#43,#2c
	db #38,#f7,#58,#f8,#56,#fa,#4f,#55
	db #66,#e0,#3a,#03,#3b,#ec,#43,#0d
	db #1c,#0c,#56,#e0,#5a,#0c,#2c,#49
	db #20,#08,#a0,#08,#c0,#08,#00,#00
	db #e0,#08,#20,#09,#c0,#08,#08,#18
	db #66,#08,#3d,#f1,#3b,#ec,#48,#4c
	db #1f,#ca,#64,#05,#66,#cd,#0a,#0d
	db #1c,#ee,#5b,#0e,#66,#05,#52,#34
	db #1f,#ca,#5e,#04,#32,#02,#43,#2c
	db #38,#f7,#58,#f8,#56,#fa,#4f,#55
	db #66,#e0,#3a,#03,#3b,#ec,#43,#0d
.l0700
	db #40,#09,#56,#e0,#5a,#0c,#3e,#09
	db #60,#14,#57,#12,#47,#cd,#1c,#0c
	db #56,#e0,#3a,#09,#60,#14,#71,#10
	db #66,#08,#3d,#f1,#3b,#ec,#5a,#0c
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0f,#0f,#0f,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0c,#8b,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#2f,#0a,#00,#32,#0a,#00,#3e
	db #0a,#00,#2f,#0a,#00,#3e,#0a,#00
	db #41,#0a,#00,#47,#0a,#00,#84,#0a
	db #00,#c5,#0a,#00,#d1,#0a,#00,#3e
	db #0a,#00,#2f,#0a,#00,#df,#0a,#00
	db #f8,#0a,#00,#1b,#0b,#00,#1b,#0b
	db #00,#1b,#0b,#00,#1b,#0b,#00,#7c
	db #0b,#00,#c0,#0b,#00,#3e,#0a,#00
	db #03,#0c,#80,#66,#09,#00,#2f,#0a
	db #00,#32,#0c,#00,#42,#0c,#00,#83
	db #0c,#00,#42,#0c,#00,#83,#0c,#00
	db #42,#0c,#00,#83,#0c,#00,#42,#0c
	db #00,#83,#0c,#00,#42,#0c,#00,#83
	db #0c,#00,#42,#0c,#00,#83,#0c,#00
	db #42,#0c,#00,#83,#0c,#00,#42,#0c
	db #00,#83,#0c,#00,#42,#0c,#00,#83
	db #0c,#00,#03,#0c,#00,#c4,#0c,#80
	db #ab,#09,#00,#21,#0d,#00,#52,#0d
	db #00,#7d,#0d,#00,#7d,#0d,#00,#7d
	db #0d,#00,#7d,#0d,#00,#7d,#0d,#00
	db #7d,#0d,#00,#7d,#0d,#00,#7d,#0d
	db #00,#7d,#0d,#00,#7d,#0d,#00,#7d
	db #0d,#00,#7d,#0d,#00,#7d,#0d,#00
	db #7d,#0d,#00,#7d,#0d,#00,#7d,#0d
	db #00,#7d,#0d,#00,#7d,#0d,#00,#3e
	db #0a,#00,#2f,#0a,#80,#f0,#09,#00
	db #20,#ff,#00,#1b,#cc,#00,#4c,#00
	db #02,#cc,#00,#a8,#00,#ff,#fe,#20
	db #ff,#00,#1c,#4a,#90,#04,#ff,#4c
	db #90,#02,#ce,#90,#cf,#90,#d3,#90
	db #cf,#90,#ce,#90,#4c,#90,#02,#cc
	db #90,#ce,#90,#cf,#90,#d3,#90,#cf
	db #90,#ce,#90,#ca,#90,#4c,#90,#02
	db #ce,#90,#cf,#90,#d3,#90,#cf,#90
	db #ce,#90,#4c,#90,#02,#cc,#90,#ce
	db #90,#cf,#90,#d2,#90,#ce,#90,#d1
	db #90,#cf,#90,#ff,#cc,#90,#ce,#90
	db #cf,#90,#cc,#90,#ce,#90,#cf,#90
	db #d1,#90,#ce,#90,#cf,#90,#d1,#90
	db #d3,#90,#cf,#90,#d1,#90,#d3,#90
	db #d4,#90,#d1,#90,#d3,#90,#cf,#90
	db #d1,#90,#ce,#90,#cf,#90,#cc,#90
	db #d1,#90,#ce,#90,#cf,#90,#cc,#90
	db #ce,#90,#cb,#90,#cc,#90,#c7,#90
	db #c8,#90,#c3,#90,#ff,#00,#18,#42
	db #90,#03,#43,#90,#03,#42,#90,#02
	db #ff,#40,#90,#19,#58,#9f,#10,#fe
	db #02,#58,#9f,#10,#fe,#03,#ff,#58
	db #91,#80,#5a,#90,#03,#5b,#90,#03
	db #5a,#90,#02,#58,#90,#08,#56,#90
	db #03,#53,#90,#03,#56,#90,#02,#ff
	db #58,#90,#08,#5a,#90,#03,#5b,#90
	db #03,#5d,#90,#02,#5f,#90,#05,#e0
	db #90,#df,#90,#dd,#90,#df,#90,#03
	db #21,#01,#df,#90,#02,#11,#01,#5f
	db #90,#04,#ff,#da,#92,#11,#02,#11
	db #01,#02,#11,#01,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#02,#11
	db #01,#02,#11,#01,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#02,#11
	db #01,#02,#11,#01,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#02,#11
	db #01,#02,#11,#01,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #02,#11,#01,#ff,#cc,#90,#ca,#90
	db #c7,#90,#ca,#90,#fe,#01,#cc,#90
	db #fe,#01,#ca,#90,#cc,#90,#ca,#90
	db #cc,#90,#ca,#90,#cc,#93,#12,#03
	db #12,#01,#4c,#90,#02,#cc,#90,#ca
	db #90,#c7,#90,#ca,#90,#fe,#01,#cc
	db #90,#fe,#01,#c7,#90,#cc,#90,#ca
	db #90,#cc,#90,#ca,#90,#cc,#90,#02
	db #14,#01,#02,#13,#01,#c7,#90,#ff
	db #cc,#90,#ca,#90,#c7,#90,#ca,#90
	db #fe,#01,#cc,#90,#fe,#01,#ca,#90
	db #cc,#90,#ca,#90,#cc,#90,#ca,#90
	db #cc,#93,#12,#03,#12,#01,#4c,#90
	db #02,#c5,#90,#c3,#90,#c0,#90,#c3
	db #90,#fe,#01,#c5,#90,#fe,#01,#c3
	db #90,#c5,#90,#c3,#90,#c5,#90,#c3
	db #90,#c5,#92,#11,#02,#12,#01,#40
	db #90,#02,#ff,#34,#20,#03,#b4,#20
	db #34,#20,#02,#34,#20,#02,#34,#20
	db #03,#b4,#20,#34,#20,#02,#34,#20
	db #02,#34,#20,#03,#b4,#20,#34,#20
	db #02,#34,#20,#02,#b4,#20,#b4,#20
	db #34,#20,#02,#34,#20,#02,#34,#20
	db #02,#ff,#00,#18,#cc,#00,#4c,#00
	db #02,#b4,#00,#34,#00,#02,#34,#00
	db #02,#ff,#b4,#80,#a8,#80,#b4,#80
	db #a8,#80,#b4,#80,#a8,#80,#ab,#80
	db #a8,#80,#b2,#80,#a8,#80,#af,#80
	db #b6,#80,#ad,#80,#ab,#80,#b7,#80
	db #ab,#80,#ad,#80,#ab,#80,#b4,#80
	db #a8,#80,#b4,#80,#a8,#80,#b4,#80
	db #a8,#80,#b2,#80,#ad,#80,#ab,#80
	db #b6,#80,#aa,#80,#ab,#80,#b7,#80
	db #ad,#80,#ff,#b4,#80,#a8,#80,#b4
	db #80,#a8,#80,#b4,#80,#a8,#80,#ab
	db #80,#a8,#80,#b2,#80,#ab,#80,#a8
	db #80,#b6,#80,#ad,#80,#ab,#80,#b7
	db #80,#ad,#80,#af,#80,#ab,#80,#ad
	db #80,#b0,#80,#ad,#80,#b0,#80,#af
	db #80,#ad,#80,#ab,#80,#ab,#80,#a8
	db #80,#b4,#80,#a8,#80,#b4,#80,#a8
	db #80,#b4,#80,#ff,#00,#02,#34,#8b
	db #1e,#28,#8b,#1e,#34,#8b,#1d,#28
	db #8b,#1d,#2b,#8b,#1c,#28,#8b,#1c
	db #32,#8b,#1b,#2b,#8b,#1b,#28,#8b
	db #1a,#36,#8b,#1a,#2d,#8b,#19,#2b
	db #8b,#19,#37,#8b,#18,#2d,#8b,#18
	db #2f,#8b,#17,#2b,#8b,#17,#2d,#8b
	db #16,#30,#8b,#16,#2d,#8b,#15,#30
	db #8b,#15,#2f,#8b,#14,#2d,#8b,#14
	db #2b,#8b,#13,#2b,#8b,#13,#28,#8b
	db #12,#34,#8b,#12,#28,#8b,#11,#34
	db #8b,#11,#28,#8b,#10,#34,#8b,#10
	db #ff,#28,#0b,#4e,#28,#1b,#2d,#28
	db #0b,#1c,#28,#0b,#2b,#28,#0b,#1a
	db #28,#0b,#29,#28,#1b,#28,#28,#0b
	db #27,#28,#0b,#46,#28,#1b,#25,#28
	db #0b,#14,#28,#0b,#23,#28,#0b,#12
	db #28,#0b,#21,#28,#1b,#20,#28,#1b
	db #20,#ff,#28,#00,#04,#28,#10,#02
	db #a8,#00,#28,#00,#02,#a8,#00,#28
	db #00,#02,#28,#10,#02,#28,#00,#02
	db #28,#00,#04,#28,#10,#04,#a8,#00
	db #28,#00,#02,#a8,#00,#28,#00,#02
	db #a8,#00,#a8,#00,#ff,#28,#00,#04
	db #28,#10,#02,#a8,#00,#28,#00,#02
	db #a8,#00,#28,#00,#02,#28,#10,#02
	db #28,#00,#02,#28,#00,#04,#28,#10
	db #02,#a8,#00,#28,#00,#02,#a8,#00
	db #28,#00,#02,#28,#10,#02,#28,#10
	db #02,#ff
;
.music_info
	db "The TGS Undemo - Main Part (1993)(TGS)(The Electric Monk)",0
	db "ST-128 Module",0

	read "music_end.asm"
