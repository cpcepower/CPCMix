; Music of Still The Bests (2011)(Benediction)(Ego Trip)(StArkos)
; Ripped by Megachur the 14/01/2015
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STILLTHB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2015
music_adr				equ #00ec

	read "music_header.asm"

	db #ca,#0f,#ca,#0f,#f0,#5f,#30,#01
	db #2f,#10,#30,#01,#00,#bf,#00,#a1
	db #8d,#0f,#dc,#0b,#31,#00,#01,#c3
	db #d8,#0b
;
.music_data	; data must be in byte and not in word !
;.l0106
	dw #5441,#3031,#4001,#0f42
	dw #0502,#0059,#011a,#0123
	dw #0142,#0158,#0000,#0000
	dw #0000,#1c0d,#0101,#3e00
	dw #3c21,#3838,#3434,#3030
	dw #2c2c,#2828,#2424,#2020
	dw #1c1c,#1818,#1014,#080c
	dw #0d04,#011c,#0002,#187c
	dw #0c78,#7034,#6c18,#280c
	dw #1864,#0c60,#6020,#0d18
	dw #0150,#0001,#213e,#3034
	dw #242c,#1c20,#1418,#0c10
	dw #0408,#1c0d,#2001,#0000
	dw #a900,#0001,#03e4,#03fd
	dw #040d,#aa10,#d601,#7203
	dw #8002,#aa00,#2e01,#7202
	dw #1002,#04ec,#03de,#04d5
	dw #100c,#0427,#046b,#0471
	dw #0060,#02f6,#0344,#0372
	dw #ec10,#de04,#d503,#0c04
	dw #7801,#0001,#e384,#0000
	dw #0201,#025d,#0267,#026b
	dw #0245,#025d,#0267,#026b
	dw #0241,#0259,#0267,#026b
	dw #0241,#0259,#0267,#026b
	dw #023d,#0255,#0261,#0263
	dw #023d,#0255,#0263,#0267
	dw #0241,#0259,#0267,#026b
	dw #026b,#0267,#0263,#5d61
	dw #0245,#025d,#0267,#026b
	dw #0245,#025d,#0267,#026b
	dw #0241,#0259,#0267,#026b
	dw #0241,#0259,#0267,#026b
	dw #023d,#0255,#0261,#0263
	dw #023d,#0255,#0263,#0267
	dw #0241,#0259,#0267,#026b
	dw #0241,#0259,#676b,#0063
	dw #e1b4,#0000,#0802,#0475
	dw #0a67,#026b,#0a7b,#067b
	dw #0479,#0475,#0875,#0475
	dw #0a67,#026b,#0a7b,#067b
	dw #0479,#0475,#0875,#0475
	dw #0a67,#026b,#0a7b,#067b
	dw #0479,#0475,#0875,#0475
	dw #0a67,#026b,#0a7b,#067b
	dw #0479,#0075,#e154,#0000
	dw #0203,#022d,#0245,#022d
	dw #0215,#022d,#0245,#022d
	dw #0211,#0229,#0241,#0229
	dw #0211,#0229,#0241,#0229
	dw #020d,#0225,#023d,#0225
	dw #020d,#0225,#023d,#0225
	dw #0211,#0229,#0241,#0229
	dw #0211,#0229,#0241,#0229
	dw #0215,#022d,#0245,#022d
	dw #0215,#022d,#0245,#022d
	dw #0211,#0229,#0241,#0229
	dw #0211,#0229,#0241,#0229
	dw #020d,#0225,#023d,#0225
	dw #020d,#0225,#023d,#0225
	dw #0211,#0229,#0241,#0229
	dw #0211,#0229,#0241,#0029
	dw #e384,#0000,#0601,#0245
	dw #0645,#0245,#064b,#024b
	dw #024b,#024b,#024b,#064f
	dw #024f,#064f,#024f,#0641
	dw #0241,#0241,#0241,#0241
	dw #0645,#0245,#0645,#0245
	dw #064b,#024b,#024b,#024b
	dw #024b,#064f,#024f,#024f
	dw #024f,#024f,#0641,#0241
	dw #0241,#0241,#0041,#e1b4
	dw #0000,#1202,#0283,#167b
	dw #127f,#0283,#067f,#0279
	dw #027b,#026b,#0271,#1275
	dw #0283,#167b,#127f,#0283
	dw #027f,#027b,#0279,#0275
	dw #0271,#006d,#e184,#0000
	dw #0203,#022d,#022d,#0245
	dw #022d,#022d,#024b,#0233
	dw #0233,#024b,#0233,#0233
	dw #024f,#0237,#0237,#024f
	dw #0237,#0237,#0241,#0229
	dw #0229,#0241,#0229,#0229
	dw #0245,#022d,#022d,#0245
	dw #022d,#022d,#024b,#0233
	dw #0233,#024b,#0233,#0233
	dw #024f,#0237,#0237,#024f
	dw #0237,#0237,#0241,#0229
	dw #0229,#0241,#0229,#0029
	dw #6042,#4200,#0080,#0000
	dw #e0b4,#0000,#0002,#e084
	dw #0000,#0601,#024f,#024b
	dw #0649,#063d,#1845,#60e0
	dw #4203,#0060,#60e0,#b403
	dw #00e0,#0200,#7f06,#7b02
	dw #7902,#6d06,#7506,#5400
	dw #00e0,#0300,#1f06,#1b02
	dw #1902,#0d06,#1506,#a916
	dw #6042,#e800,#0360,#6042
	dw #9c00,#00e0,#0100,#5d04
	dw #7504,#7504,#6d04,#6d04
	dw #6b04,#6b04,#4504,#4504
	dw #5d04,#5d04,#5504,#5504
	dw #5304,#5304,#5d04,#5d04
	dw #7504,#7504,#6d04,#6d04
	dw #6b04,#6b04,#4504,#4504
	dw #5d04,#5d04,#5504,#5504
	dw #5904,#5904,#cc00,#00e0
	dw #0200,#6c00,#00e0,#0300
	dw #4502,#2d02,#2d02,#4502
	dw #2d02,#2d02,#4502,#2d02
	dw #2d02,#4502,#2d02,#2d02
	dw #4502,#2d02,#2d02,#4502
	dw #2d02,#2d02,#4502,#2d02
	dw #2d02,#4502,#5d02,#2d02
	dw #4502,#2d02,#2d02,#4502
	dw #2d02,#2d02,#4502,#2d02
	dw #2d02,#4502,#2d02,#2d02
	dw #4502,#2d02,#2d02,#4502
	dw #2d02,#2d02,#4502,#5d02
	dw #4502,#5d02,#7502,#4200
	dw #0060,#8042,#0000,#4202
	dw #0800,#60e8,#4203,#0060
	dw #60e8,#4203,#0060,#6042
	dw #4200,#0080,#0c00,#6042
	dw #e000,#0360,#6042,#e000
	dw #0360
	jp l0b74	; init
	jp l050a	; play
	jp l0bc9	; stop
.l0509
	db #00
;
.play_music
.l050a
;
	xor a
	ld (l0509),a
.l050f equ $ + 1
	ld a,#01
	dec a
	jp nz,l06db
.l0515 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0581
.l051a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l0528
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l0528
	rra
	jr nc,l0530
	ld de,l05d1
	ldi
.l0530
	rra
	jr nc,l0538
	ld de,l0636
	ldi
.l0538
	rra
	jr nc,l0540
	ld de,l069b
	ldi
.l0540
	ld de,l05b0
	ldi
	ldi
	ld de,l0615
	ldi
	ldi
	ld de,l067a
	ldi
	ldi
	rra
	jr nc,l055d
	ld de,l0580
	ldi
.l055d
	rra
	jr nc,l0568
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l056c),de
.l0568
	ld (l051a),hl
.l056c equ $ + 1
	ld hl,#0000
	ld (l058a),hl
	ld a,#01
	ld (l0585),a
	ld (l05ab),a
	ld (l0610),a
	ld (l0675),a
.l0580 equ $ + 1
	ld a,#01
.l0581
	ld (l0515),a
.l0585 equ $ + 1
	ld a,#01
	dec a
	jr nz,l05a7
.l058a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l05a4
	srl a
	jr nz,l0598
	ld a,(hl)
	inc hl
.l0598
	jr nc,l059f
	ld (l0509),a
	jr l05a2
.l059f
	ld (l06da),a
.l05a2
	ld a,#01
.l05a4
	ld (l058a),hl
.l05a7
	ld (l0585),a
.l05ab equ $ + 1
	ld a,#01
	dec a
	jr nz,l060c
.l05b0 equ $ + 1
	ld hl,#0000
	call l0a20
	ld (l05b0),hl
	jr c,l060c
	ld a,d
	rra
	jr nc,l05c3
	and #0f
	ld (l075d),a
.l05c3
	rl d
	jr nc,l05cb
	ld (l074b),ix
.l05cb
	rl d
	jr nc,l060a
	ld a,e
.l05d1 equ $ + 1
	add #00
	ld (l075c),a
	ld hl,#0000
	ld (l0748),hl
	rl d
	jr c,l05ea
.l05e0 equ $ + 1
	ld hl,#0000
	ld a,(l076d)
	ld (l0765),a
	jr l0607
.l05ea
	ld l,b
	add hl,hl
.l05ed equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l076d),a
	ld (l0765),a
	ld a,(hl)
	or a
	jr z,l0603
	ld (l084b),a
.l0603
	inc hl
	ld (l05e0),hl
.l0607
	ld (l075f),hl
.l060a
	ld a,#01
.l060c
	ld (l05ab),a
.l0610 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0671
.l0615 equ $ + 1
	ld hl,#0000
	call l0a20
	ld (l0615),hl
	jr c,l0671
	ld a,d
	rra
	jr nc,l0628
	and #0f
	ld (l0729),a
.l0628
	rl d
	jr nc,l0630
	ld (l0717),ix
.l0630
	rl d
	jr nc,l066f
	ld a,e
.l0636 equ $ + 1
	add #00
	ld (l0728),a
	ld hl,#0000
	ld (l0714),hl
	rl d
	jr c,l064f
.l0645 equ $ + 1
	ld hl,#0000
	ld a,(l0739)
	ld (l0731),a
	jr l066c
.l064f
	ld l,b
	add hl,hl
.l0652 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l0739),a
	ld (l0731),a
	ld a,(hl)
	or a
	jr z,l0668
	ld (l084b),a
.l0668
	inc hl
	ld (l0645),hl
.l066c
	ld (l072b),hl
.l066f
	ld a,#01
.l0671
	ld (l0610),a
.l0675 equ $ + 1
	ld a,#01
	dec a
	jr nz,l06d6
.l067a equ $ + 1
	ld hl,#0000
	call l0a20
	ld (l067a),hl
	jr c,l06d6
	ld a,d
	rra
	jr nc,l068d
	and #0f
	ld (l06f8),a
.l068d
	rl d
	jr nc,l0695
	ld (l06e6),ix
.l0695
	rl d
	jr nc,l06d4
	ld a,e
.l069b equ $ + 1
	add #00
	ld (l06f7),a
	ld hl,#0000
	ld (l06e3),hl
	rl d
	jr c,l06b4
.l06aa equ $ + 1
	ld hl,#0000
	ld a,(l0708)
	ld (l0700),a
	jr l06d1
.l06b4
	ld l,b
	add hl,hl
.l06b7 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l0708),a
	ld (l0700),a
	ld a,(hl)
	or a
	jr z,l06cd
	ld (l084b),a
.l06cd
	inc hl
	ld (l06aa),hl
.l06d1
	ld (l06fa),hl
.l06d4
	ld a,#01
.l06d6
	ld (l0675),a
.l06da equ $ + 1
	ld a,#01
.l06db
	ld (l050f),a
	ld iy,l0862
.l06e3 equ $ + 1
	ld hl,#0000
.l06e6 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l06e3),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l06f8 equ $ + 2
.l06f7 equ $ + 1
	ld de,#0000
.l06fa equ $ + 1
	ld hl,#0000
	call l086d
.l0700 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0709
	ld (l06fa),hl
.l0708 equ $ + 1
	ld a,#06
.l0709
	ld (l0700),a
	ld a,lx
	ex af,af'
	ld iy,l0860
.l0714 equ $ + 1
	ld hl,#0000
.l0717 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l0714),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l0729 equ $ + 2
.l0728 equ $ + 1
	ld de,#0000
.l072b equ $ + 1
	ld hl,#0000
	call l086d
.l0731 equ $ + 1
	ld a,#01
	dec a
	jr nz,l073a
	ld (l072b),hl
.l0739 equ $ + 1
	ld a,#06
.l073a
	ld (l0731),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l085e
.l0748 equ $ + 1
	ld hl,#0000
.l074b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l0748),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l075d equ $ + 2
.l075c equ $ + 1
	ld de,#0000
.l075f equ $ + 1
	ld hl,#0000
	call l086d
.l0765 equ $ + 1
	ld a,#01
	dec a
	jr nz,l076e
	ld (l075f),hl
.l076d equ $ + 1
	ld a,#06
.l076e
	ld (l0765),a
	ex af,af'
	or lx
.l0774
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l085e
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	ld a,(hl)
.l084b equ $ + 1
	cp #ff
	ret z
	ld (l084b),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l085e
	nop
	nop
.l0860
	nop
	nop
.l0862
	nop
	nop
.l0864
	nop
.l0865
	nop
	nop
	nop
	nop
	nop
.l086a
	nop
	nop
.l086c
	nop
.l086d
	ld b,(hl)
	inc hl
	rr b
	jp c,l08cb
	rr b
	jr c,l089b
	ld a,b
	and #0f
	jr nz,l0884
	ld (iy+#07),a
	ld lx,#09
	ret
.l0884
	ld lx,#08
	sub d
	jr nc,l088b
	xor a
.l088b
	ld (iy+#07),a
	rr b
	call l09f4
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l089b
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l08ab
	ld (l0864),a
	ld lx,#00
.l08ab
	ld a,b
	and #0f
	sub d
	jr nc,l08b2
	xor a
.l08b2
	ld (iy+#07),a
	bit 5,c
	jr nz,l08bc
	inc lx
	ret
.l08bc
	rr b
	bit 6,c
	call l09e6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l08cb
	rr b
	jr nc,l08de
	ld a,(l0765)
	ld c,a
	ld a,(l076d)
	cp c
	jr nz,l08de
	ld a,#fe
	ld (l084b),a
.l08de
	bit 1,b
	jp nz,l0997
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l086c),a
	bit 0,b
	jr z,l094d
	bit 2,b
	call l09e6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l090d),a
	ld a,b
	exx
.l090d equ $ + 1
	jr l090e
.l090e
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l092d
	inc hl
.l092d
	bit 5,a
	jr z,l093d
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l093d
	ld (l086a),hl
	exx
.l0941
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l0864),a
	ld lx,#00
	ret
.l094d
	bit 2,b
	call l09e6
	ld (l086a),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l0961),a
	ld a,b
	exx
.l0961 equ $ + 1
	jr l0962
.l0962
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,l098e
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l098e
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l0941
.l0997
	bit 0,b
	jr z,l09a2
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l086d
.l09a2
	ld (iy+#07),#10
	bit 5,b
	jr nz,l09af
	ld lx,#09
	jr l09c2
.l09af
	ld lx,#08
	ld hx,e
	bit 2,b
	call l09e6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l09c2
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l086c),a
	rr b
	rr b
	bit 2,b
	call l09e6
	ld (l086a),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l0864),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l09e6
	jr z,l09f4
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.l09f4
	bit 4,b
	jr z,l0a04
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.l0a04
	ld a,e
	bit 3,b
	jr z,l0a11
	add (hl)
	inc hl
	cp #90
	jr c,l0a11
	ld a,#8f
.l0a11
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l0a54
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l0a20
	ld a,(hl)
	inc hl
	srl a
	jr c,l0a47
	sub #20
	jr c,l0a51
	jr z,l0a43
	dec a
	ld e,a
.l0a2e
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l0a3c
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l0a3c
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l0a43
	ld e,(hl)
	inc hl
	jr l0a2e
.l0a47
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l0a51
	add #20
	ret
.l0a54
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
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l0b74
;
	ld hl,#0009
	add hl,de
	ld de,l06da
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l05ed),hl
	ld (l0652),hl
	ld (l06b7),hl
	add hl,bc
	ld de,l0580
	ldi
	ld de,l05d1
	ldi
	ld de,l0636
	ldi
	ld de,l069b
	ldi
	ld de,l056c
	ldi
	ldi
	ld (l051a),hl
	ld a,#01
	ld (l050f),a
	ld (l0515),a
	ld a,#ff
	ld (l086c),a
	ld hl,(l05ed)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l075f),hl
	ld (l072b),hl
	ld (l06fa),hl
	ret
;
.stop_music
.l0bc9
;
	ld hl,l0865
	ld bc,#0300
.l0bcf
	ld (hl),c
	inc hl
	djnz l0bcf
	ld a,#3f
	jp l0774
;
.init_music	; #0f87 - added by Megachur
;
	ld de,music_data	; ld de,l0106
	jp real_init_music
;
.music_info
	db "Still The Bests (2011)(Benediction)(Ego Trip)",0
	db "StArkos",0

	read "music_end.asm"
