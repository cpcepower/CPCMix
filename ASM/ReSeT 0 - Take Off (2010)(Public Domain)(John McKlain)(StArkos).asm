; Music of ReSeT 0 - Take Off (2010)(Public Domain)(John McKlain)(StArkos)
; Ripped by Megachur the 19/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RESET0TO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0178

	read "music_header.asm"

	jp l07ec
	jp l0182
	jp l0841
.l0181
	db #00
;
.play_music
.l0182
;
	xor a
	ld (l0181),a
.l0187 equ $ + 1
	ld a,#01
	dec a
	jp nz,l0353
.l018d equ $ + 1
	ld a,#01
	dec a
	jr nz,l01f9
.l0192 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l01a0
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l01a0
	rra
	jr nc,l01a8
	ld de,l0249
	ldi
.l01a8
	rra
	jr nc,l01b0
	ld de,l02ae
	ldi
.l01b0
	rra
	jr nc,l01b8
	ld de,l0313
	ldi
.l01b8
	ld de,l0228
	ldi
	ldi
	ld de,l028d
	ldi
	ldi
	ld de,l02f2
	ldi
	ldi
	rra
	jr nc,l01d5
	ld de,l01f8
	ldi
.l01d5
	rra
	jr nc,l01e0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l01e4),de
.l01e0
	ld (l0192),hl
.l01e4 equ $ + 1
	ld hl,#0000
	ld (l0202),hl
	ld a,#01
	ld (l01fd),a
	ld (l0223),a
	ld (l0288),a
	ld (l02ed),a
.l01f8 equ $ + 1
	ld a,#01
.l01f9
	ld (l018d),a
.l01fd equ $ + 1
	ld a,#01
	dec a
	jr nz,l021f
.l0202 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l021c
	srl a
	jr nz,l0210
	ld a,(hl)
	inc hl
.l0210
	jr nc,l0217
	ld (l0181),a
	jr l021a
.l0217
	ld (l0352),a
.l021a
	ld a,#01
.l021c
	ld (l0202),hl
.l021f
	ld (l01fd),a
.l0223 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0284
.l0228 equ $ + 1
	ld hl,#0000
	call l0698
	ld (l0228),hl
	jr c,l0284
	ld a,d
	rra
	jr nc,l023b
	and #0f
	ld (l03d5),a
.l023b
	rl d
	jr nc,l0243
	ld (l03c3),ix
.l0243
	rl d
	jr nc,l0282
	ld a,e
.l0249 equ $ + 1
	add #00
	ld (l03d4),a
	ld hl,#0000
	ld (l03c0),hl
	rl d
	jr c,l0262
.l0258 equ $ + 1
	ld hl,#0000
	ld a,(l03e5)
	ld (l03dd),a
	jr l027f
.l0262
	ld l,b
	add hl,hl
.l0265 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l03e5),a
	ld (l03dd),a
	ld a,(hl)
	or a
	jr z,l027b
	ld (l04c3),a
.l027b
	inc hl
	ld (l0258),hl
.l027f
	ld (l03d7),hl
.l0282
	ld a,#01
.l0284
	ld (l0223),a
.l0288 equ $ + 1
	ld a,#01
	dec a
	jr nz,l02e9
.l028d equ $ + 1
	ld hl,#0000
	call l0698
	ld (l028d),hl
	jr c,l02e9
	ld a,d
	rra
	jr nc,l02a0
	and #0f
	ld (l03a1),a
.l02a0
	rl d
	jr nc,l02a8
	ld (l038f),ix
.l02a8
	rl d
	jr nc,l02e7
	ld a,e
.l02ae equ $ + 1
	add #00
	ld (l03a0),a
	ld hl,#0000
	ld (l038c),hl
	rl d
	jr c,l02c7
.l02bd equ $ + 1
	ld hl,#0000
	ld a,(l03b1)
	ld (l03a9),a
	jr l02e4
.l02c7
	ld l,b
	add hl,hl
.l02ca equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l03b1),a
	ld (l03a9),a
	ld a,(hl)
	or a
	jr z,l02e0
	ld (l04c3),a
.l02e0
	inc hl
	ld (l02bd),hl
.l02e4
	ld (l03a3),hl
.l02e7
	ld a,#01
.l02e9
	ld (l0288),a
.l02ed equ $ + 1
	ld a,#01
	dec a
	jr nz,l034e
.l02f2 equ $ + 1
	ld hl,#0000
	call l0698
	ld (l02f2),hl
	jr c,l034e
	ld a,d
	rra
	jr nc,l0305
.l0300
	and #0f
	ld (l0370),a
.l0305
	rl d
	jr nc,l030d
	ld (l035e),ix
.l030d
	rl d
	jr nc,l034c
	ld a,e
.l0313 equ $ + 1
	add #00
	ld (l036f),a
	ld hl,#0000
	ld (l035b),hl
	rl d
	jr c,l032c
.l0322 equ $ + 1
	ld hl,#0000
	ld a,(l0380)
	ld (l0378),a
	jr l0349
.l032c
	ld l,b
	add hl,hl
.l032f equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l0380),a
	ld (l0378),a
	ld a,(hl)
	or a
	jr z,l0345
	ld (l04c3),a
.l0345
	inc hl
	ld (l0322),hl
.l0349
	ld (l0372),hl
.l034c
	ld a,#01
.l034e
	ld (l02ed),a
.l0352 equ $ + 1
	ld a,#01
.l0353
	ld (l0187),a
	ld iy,l04da
.l035b equ $ + 1
	ld hl,#0000
.l035e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l035b),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l0370 equ $ + 2
.l036f equ $ + 1
	ld de,#0000
.l0372 equ $ + 1
	ld hl,#0000
	call l04e5
.l0378 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0381
	ld (l0372),hl
.l0380 equ $ + 1
	ld a,#06
.l0381
	ld (l0378),a
	ld a,lx
	ex af,af'
	ld iy,l04d8
.l038c equ $ + 1
	ld hl,#0000
.l038f equ $ + 1
	ld de,#0000
	add hl,de
	ld (l038c),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l03a1 equ $ + 2
.l03a0 equ $ + 1
	ld de,#0000
.l03a3 equ $ + 1
	ld hl,#0000
	call l04e5
.l03a9 equ $ + 1
	ld a,#01
	dec a
	jr nz,l03b2
	ld (l03a3),hl
.l03b1 equ $ + 1
	ld a,#06
.l03b2
	ld (l03a9),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l04d6
.l03c0 equ $ + 1
	ld hl,#0000
.l03c3 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l03c0),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l03d5 equ $ + 2
.l03d4 equ $ + 1
	ld de,#0000
.l03d7 equ $ + 1
	ld hl,#0000
	call l04e5
.l03dd equ $ + 1
	ld a,#01
	dec a
	jr nz,l03e6
	ld (l03d7),hl
.l03e5 equ $ + 1
	ld a,#06
.l03e6
	ld (l03dd),a
	ex af,af'
	or lx
.l03ec
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l04d6
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
.l04c3 equ $ + 1
	cp #ff
	ret z
	ld (l04c3),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l04d6
	nop
	nop
.l04d8
	nop
	nop
.l04da
	nop
	nop
.l04dc
	nop
.l04dd
	nop
	nop
	nop
	nop
	nop
.l04e2
	nop
	nop
.l04e4
	nop
.l04e5
	ld b,(hl)
	inc hl
	rr b
	jp c,l0543
	rr b
	jr c,l0513
	ld a,b
	and #0f
	jr nz,l04fc
	ld (iy+#07),a
	ld lx,#09
	ret
.l04fc
	ld lx,#08
	sub d
	jr nc,l0503
	xor a
.l0503
	ld (iy+#07),a
	rr b
	call l066c
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l0513
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l0523
	ld (l04dc),a
	ld lx,#00
.l0523
	ld a,b
	and #0f
	sub d
	jr nc,l052a
	xor a
.l052a
	ld (iy+#07),a
	bit 5,c
	jr nz,l0534
	inc lx
	ret
.l0534
	rr b
	bit 6,c
	call l065e
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l0543
	rr b
	jr nc,l0556
	ld a,(l03dd)
	ld c,a
	ld a,(l03e5)
	cp c
	jr nz,l0556
	ld a,#fe
	ld (l04c3),a
.l0556
	bit 1,b
	jp nz,l060f
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l04e4),a
	bit 0,b
	jr z,l05c5
	bit 2,b
	call l065e
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l0585),a
	ld a,b
	exx
.l0585 equ $ + 1
	jr l0586
.l0586
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
	jr nc,l05a5
	inc hl
.l05a5
	bit 5,a
	jr z,l05b5
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
.l05b5
	ld (l04e2),hl
	exx
.l05b9
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l04dc),a
	ld lx,#00
	ret
.l05c5
	bit 2,b
	call l065e
	ld (l04e2),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l05d9),a
	ld a,b
	exx
.l05d9 equ $ + 1
	jr l05da
.l05da
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
	jr z,l0606
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
.l0606
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l05b9
.l060f
	bit 0,b
	jr z,l061a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l04e5
.l061a
	ld (iy+#07),#10
	bit 5,b
	jr nz,l0627
	ld lx,#09
	jr l063a
.l0627
	ld lx,#08
	ld hx,e
	bit 2,b
	call l065e
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l063a
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l04e4),a
	rr b
	rr b
	bit 2,b
	call l065e
	ld (l04e2),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l04dc),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l065e
	jr z,l066c
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
.l066c
	bit 4,b
	jr z,l067c
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
.l067c
	ld a,e
	bit 3,b
	jr z,l0689
	add (hl)
	inc hl
	cp #90
	jr c,l0689
	ld a,#8f
.l0689
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l06cc
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l0698
	ld a,(hl)
	inc hl
	srl a
	jr c,l06bf
	sub #20
	jr c,l06c9
	jr z,l06bb
	dec a
	ld e,a
.l06a6
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l06b4
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l06b4
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l06bb
	ld e,(hl)
	inc hl
	jr l06a6
.l06bf
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l06c9
	add #20
	ret
.l06cc
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
.l07ec
;
	ld hl,#0009
	add hl,de
	ld de,l0352
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l0265),hl
	ld (l02ca),hl
	ld (l032f),hl
	add hl,bc
	ld de,l01f8
	ldi
	ld de,l0249
	ldi
	ld de,l02ae
	ldi
	ld de,l0313
	ldi
	ld de,l01e4
	ldi
	ldi
	ld (l0192),hl
	ld a,#01
	ld (l0187),a
	ld (l018d),a
	ld a,#ff
	ld (l04e4),a
	ld hl,(l0265)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l03d7),hl
	ld (l03a3),hl
	ld (l0372),hl
	ret
;
.stop_music
.l0841
;
	ld hl,l04dd
	ld bc,l0300
.l0847
	ld (hl),c
	inc hl
	djnz l0847
	ld a,#3f
	jp l03ec

	ds #0850-$,#00

.l0850
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#fa,#01,#78,#08,#81,#08
	db #93,#08,#ac,#08,#c7,#08,#ee,#08
	db #02,#09,#22,#09,#4f,#09,#75,#09
	db #8a,#09,#be,#09,#d3,#09,#35,#0a
	db #00,#00,#00,#00,#00,#00,#0d,#7a
	db #08,#01,#00,#74,#f4,#34,#ec,#ff
	db #ff,#f4,#ac,#ff,#ff,#68,#f4,#20
	db #0d,#7a,#08,#01,#00,#fe,#31,#e0
	db #ff,#0f,#fc,#e0,#ff,#0c,#f4,#e0
	db #ff,#07,#f4,#e0,#ff,#05,#ac,#e0
	db #ff,#0d,#7a,#08,#01,#00,#07,#2c
	db #05,#2c,#27,#2c,#f4,#25,#2c,#f4
	db #25,#2c,#f4,#25,#2c,#f4,#25,#2c
	db #f4,#25,#2c,#f4,#0d,#7a,#08,#01
	db #00,#fe,#2b,#1f,#00,#0f,#fa,#2b
	db #1f,#00,#0c,#f6,#2b,#1f,#00,#07
	db #f2,#2b,#1f,#00,#05,#ae,#2b,#1f
	db #00,#2a,#0b,#26,#0c,#22,#0c,#1e
	db #0d,#1a,#0d,#0d,#7a,#08,#01,#00
	db #fe,#2b,#1f,#00,#0f,#fa,#2b,#1f
	db #00,#0c,#f6,#2b,#1f,#00,#07,#0d
	db #f0,#08,#01,#00,#38,#78,#f4,#74
	db #f4,#f4,#ff,#ff,#f4,#f4,#ff,#ff
	db #f4,#74,#f4,#74,#f4,#f4,#01,#00
	db #f4,#f4,#01,#00,#f4,#74,#f4,#0d
	db #07,#09,#03,#00,#74,#18,#74,#f4
	db #70,#18,#70,#f4,#6c,#18,#6c,#f4
	db #68,#18,#68,#f4,#64,#18,#64,#f4
	db #60,#18,#60,#f4,#5c,#18,#5c,#f4
	db #58,#18,#58,#f4,#54,#18,#54,#f4
	db #50,#18,#50,#f4,#0d,#7a,#08,#01
	db #00,#fe,#31,#e0,#ff,#0f,#fc,#e0
	db #ff,#0c,#f4,#e0,#ff,#07,#f4,#e0
	db #ff,#05,#05,#2c,#05,#2c,#05,#2c
	db #05,#2c,#05,#2c,#05,#2c,#05,#2c
	db #05,#2c,#0d,#7a,#08,#03,#00,#89
	db #1c,#08,#00,#89,#1c,#08,#00,#89
	db #1c,#08,#00,#89,#1c,#08,#00,#0d
	db #7a,#08,#01,#00,#7c,#0f,#7c,#0e
	db #7c,#0d,#7c,#0c,#7c,#0b,#7c,#0a
	db #7c,#09,#7c,#08,#7c,#07,#7c,#06
	db #7c,#05,#7c,#04,#7c,#03,#7c,#02
	db #7c,#01,#3c,#7c,#ff,#7c,#fe,#7c
	db #fd,#7c,#fc,#7c,#fb,#7c,#fa,#7c
	db #f9,#7c,#f8,#0d,#7a,#08,#01,#00
	db #89,#1e,#a9,#00,#89,#1e,#7d,#00
	db #89,#1e,#a9,#00,#89,#1e,#7d,#00
	db #0d,#c0,#09,#02,#00,#10,#98,#fe
	db #ff,#20,#a8,#02,#00,#28,#ac,#fe
	db #ff,#30,#b4,#02,#00,#34,#b8,#fe
	db #ff,#3c,#bc,#02,#00,#3c,#bc,#fe
	db #ff,#3c,#bc,#02,#00,#38,#b8,#fe
	db #ff,#38,#b8,#02,#00,#38,#b8,#fe
	db #ff,#34,#b4,#02,#00,#34,#b4,#fe
	db #ff,#30,#b0,#02,#00,#30,#b0,#fe
	db #ff,#30,#b0,#02,#00,#2c,#a8,#fe
	db #ff,#28,#a4,#fe,#ff,#24,#a4,#02
	db #00,#20,#9c,#fe,#ff,#18,#98,#02
	db #00,#14,#94,#fe,#ff,#0c,#88,#02
	db #00,#08,#0d,#7a,#08,#01,#00,#78
	db #f4,#78,#f4,#74,#f4,#f4,#ff,#ff
	db #f4,#f4,#ff,#ff,#f4,#74,#f4,#74
	db #f4,#f4,#01,#00,#f4,#f4,#01,#00
	db #f4,#74,#f4,#0d,#3b,#0a,#40,#00
	db #00,#00,#f9,#0a,#00,#77,#0e,#ab
	db #0d,#85,#0e,#00,#0f,#0e,#5f,#0d
	db #40,#0e,#00,#93,#0e,#b9,#15,#0e
	db #0f,#00,#fa,#0a,#69,#0b,#20,#0c
	db #00,#fa,#0a,#69,#0b,#20,#0c,#00
	db #98,#10,#b9,#15,#85,#0c,#00,#06
	db #11,#b9,#15,#f1,#0c,#00,#fa,#0a
	db #69,#0b,#20,#0c,#00,#74,#11,#e4
	db #11,#98,#12,#00,#98,#10,#b9,#15
	db #85,#0c,#00,#bc,#13,#0c,#17,#28
	db #14,#00,#94,#14,#bd,#17,#17,#15
	db #00,#08,#13,#70,#16,#80,#13,#00
	db #d0,#0f,#4d,#0f,#35,#10,#00,#fa
	db #0a,#69,#0b,#20,#0c,#00,#98,#10
	db #b9,#15,#4a,#15,#00,#bc,#13,#0c
	db #17,#28,#14,#00,#e7,#18,#0c,#17
	db #bd,#18,#00,#13,#19,#0c,#17,#5d
	db #19,#00,#13,#19,#53,#18,#a4,#19
	db #00,#25,#1a,#2f,#1a,#3b,#1a,#00
	db #45,#1a,#45,#1a,#45,#1a,#01,#5c
	db #0a,#00,#b8,#e1,#00,#00,#01,#79
	db #b8,#49,#b8,#41,#79,#b8,#49,#b8
	db #41,#7d,#b8,#49,#bc,#41,#b8,#4b
	db #bc,#41,#b8,#4f,#bc,#41,#7f,#7d
	db #b8,#43,#79,#b8,#49,#b8,#41,#79
	db #b8,#49,#b8,#41,#7d,#b8,#49,#bc
	db #41,#b8,#4b,#bc,#41,#b8,#4f,#bc
	db #41,#7f,#7d,#b0,#43,#71,#b0,#49
	db #b0,#41,#71,#b0,#49,#b0,#41,#7d
	db #b0,#49,#bc,#41,#b0,#4b,#bc,#41
	db #b0,#4f,#bc,#41,#7f,#7d,#b8,#40
	db #79,#b8,#49,#b8,#41,#79,#b8,#49
	db #b8,#41,#77,#b8,#49,#b6,#41,#b8
	db #4b,#b6,#41,#b8,#4f,#b6,#41,#7f
	db #7d,#6c,#e1,#00,#00,#02,#6c,#47
	db #88,#60,#03,#6c,#61,#02,#8a,#60
	db #04,#88,#60,#03,#6c,#67,#02,#6c
	db #41,#88,#60,#03,#8a,#60,#04,#88
	db #60,#03,#6c,#60,#02,#8a,#60,#04
	db #88,#60,#03,#8a,#67,#04,#8a,#41
	db #6c,#60,#02,#6c,#47,#88,#60,#03
	db #6c,#61,#02,#8a,#60,#04,#88,#60
	db #03,#6c,#67,#02,#6c,#41,#88,#60
	db #03,#8a,#60,#04,#88,#60,#03,#6c
	db #60,#02,#8a,#60,#04,#88,#60,#03
	db #8a,#67,#04,#8a,#41,#6c,#60,#02
	db #6c,#47,#80,#60,#03,#6c,#61,#02
	db #8a,#60,#04,#80,#60,#03,#6c,#67
	db #02,#6c,#41,#80,#60,#03,#8a,#60
	db #04,#80,#60,#03,#6c,#60,#02,#8a
	db #60,#04,#80,#60,#03,#8a,#67,#04
	db #8a,#41,#6c,#60,#02,#6c,#47,#88
	db #60,#03,#6c,#61,#02,#8a,#60,#04
	db #88,#60,#03,#6c,#67,#02,#6c,#41
	db #86,#60,#03,#8a,#60,#04,#86,#60
	db #03,#6c,#60,#02,#8a,#60,#04,#86
	db #60,#03,#8a,#63,#05,#8a,#61,#04
	db #cc,#e5,#00,#00,#06,#91,#cc,#4b
	db #cc,#45,#91,#cc,#4b,#cc,#45,#91
	db #cc,#4b,#cc,#45,#91,#cc,#4b,#cc
	db #45,#91,#95,#97,#cc,#40,#91,#cc
	db #4b,#cc,#45,#91,#cc,#4b,#cc,#45
	db #91,#cc,#4b,#cc,#45,#91,#cc,#4b
	db #de,#45,#9b,#97,#95,#87,#89,#c6
	db #4b,#c6,#45,#89,#c6,#4b,#c6,#45
	db #89,#c6,#4b,#c6,#45,#89,#c6,#4b
	db #c6,#45,#89,#8d,#91,#95,#97,#d4
	db #4b,#d4,#45,#97,#d4,#4b,#d4,#45
	db #97,#d4,#4b,#d4,#45,#97,#d4,#4b
	db #d4,#45,#97,#9b,#9f,#de,#e5,#00
	db #00,#06,#9f,#de,#4b,#de,#45,#9f
	db #de,#4b,#de,#45,#9b,#de,#4b,#da
	db #45,#de,#4f,#da,#45,#9b,#da,#4b
	db #da,#45,#9b,#9f,#9f,#de,#4b,#de
	db #45,#9f,#de,#4b,#de,#45,#9b,#de
	db #4b,#da,#45,#de,#4f,#da,#45,#9b
	db #da,#4b,#da,#45,#9b,#97,#97,#da
	db #4b,#d6,#45,#97,#d6,#4f,#d6,#45
	db #9b,#d6,#4b,#da,#45,#d6,#4f,#da
	db #45,#9b,#da,#4b,#da,#45,#9b,#97
	db #97,#d6,#4b,#d6,#45,#97,#d6,#4f
	db #d6,#45,#95,#d6,#4b,#d4,#45,#d6
	db #4f,#d4,#45,#95,#d4,#4b,#d4,#45
	db #95,#de,#e5,#00,#00,#06,#9f,#de
	db #4b,#de,#45,#9f,#de,#4b,#de,#45
	db #9b,#de,#4b,#da,#45,#de,#4f,#da
	db #45,#9b,#da,#4b,#da,#45,#97,#da
	db #4f,#d6,#45,#da,#4b,#d6,#45,#97
	db #d6,#4b,#d6,#45,#9b,#d6,#4b,#da
	db #45,#d6,#4f,#da,#45,#9b,#da,#4b
	db #da,#45,#9f,#a1,#a1,#e0,#4b,#e0
	db #45,#a1,#e0,#4f,#e4,#45,#9f,#e4
	db #4b,#de,#45,#e4,#4f,#de,#45,#9f
	db #de,#4b,#e0,#45,#9f,#9b,#9b,#da
	db #4b,#da,#45,#9b,#da,#4f,#da,#45
	db #9f,#da,#4b,#de,#45,#da,#4f,#de
	db #45,#9f,#de,#4b,#de,#45,#9f,#a0
	db #e0,#00,#00,#01,#79,#61,#61,#61
	db #79,#61,#79,#a0,#4b,#b8,#41,#61
	db #61,#61,#79,#61,#61,#61,#79,#61
	db #61,#61,#79,#61,#79,#a0,#4b,#b8
	db #41,#61,#61,#61,#79,#91,#a9,#59
	db #71,#59,#59,#59,#71,#59,#71,#98
	db #4b,#b0,#41,#59,#59,#59,#71,#59
	db #59,#57,#6f,#57,#57,#57,#6f,#57
	db #6f,#96,#4b,#ae,#41,#57,#57,#57
	db #6f,#87,#9f,#a0,#ef,#00,#00,#01
	db #b8,#40,#a0,#40,#a0,#40,#a0,#4d
	db #b8,#40,#a0,#40,#b8,#40,#a0,#4f
	db #b8,#4b,#a0,#40,#a0,#40,#a0,#49
	db #b8,#40,#a0,#40,#a0,#40,#a0,#47
	db #b8,#40,#a0,#40,#a0,#40,#a0,#45
	db #b8,#40,#a0,#40,#b8,#40,#a0,#4b
	db #b8,#43,#a0,#40,#a0,#40,#a0,#41
	db #79,#91,#a9,#61,#79,#61,#61,#61
	db #79,#61,#79,#a0,#4b,#b8,#41,#61
	db #61,#61,#79,#61,#61,#61,#79,#61
	db #61,#61,#79,#61,#79,#a0,#4b,#b8
	db #41,#61,#61,#61,#79,#91,#a9,#d0
	db #e7,#00,#00,#07,#0a,#d0,#4f,#08
	db #e8,#4b,#08,#cc,#47,#0a,#cc,#4f
	db #08,#c8,#4b,#08,#c6,#47,#0a,#c6
	db #4f,#12,#42,#00,#04,#c2,#4b,#08
	db #c6,#47,#02,#42,#00,#8a,#69,#04
	db #8a,#47,#8a,#45,#8a,#43,#8a,#41
	db #42,#80,#00,#00,#04,#d0,#6b,#07
	db #42,#00,#06,#e8,#47,#08,#e8,#4f
	db #08,#cc,#4b,#0a,#c8,#47,#0a,#c8
	db #4f,#08,#c6,#4b,#08,#42,#00,#c6
	db #53,#0c,#c2,#47,#0a,#c2,#4f,#06
	db #8a,#6b,#04,#c6,#60,#07,#8a,#67
	db #04,#8a,#45,#8a,#43,#8a,#41,#42
	db #80,#00,#00,#3e,#d0,#69,#01,#a9
	db #04,#d0,#4f,#a9,#00,#42,#60,#00
	db #42,#80,#00,#00,#3e,#02,#d0,#6d
	db #01,#a9,#00,#d0,#e1,#00,#00,#01
	db #79,#d0,#4b,#b8,#45,#d0,#4b,#b8
	db #41,#d0,#40,#b8,#40,#d0,#4b,#b8
	db #45,#d0,#4b,#b8,#45,#d0,#41,#b8
	db #45,#d0,#41,#79,#d0,#40,#79,#d0
	db #4b,#b8,#45,#d0,#4b,#b8,#41,#d0
	db #40,#b8,#40,#d0,#4b,#b8,#45,#d0
	db #4b,#b8,#45,#d0,#41,#b8,#45,#d0
	db #41,#79,#c8,#40,#71,#c8,#4b,#b0
	db #45,#c8,#4b,#b0,#41,#c8,#40,#b0
	db #40,#c8,#4b,#b0,#45,#c8,#4b,#b0
	db #45,#c8,#41,#b0,#45,#c8,#41,#71
	db #c2,#40,#6b,#c2,#4b,#aa,#45,#c2
	db #4b,#aa,#41,#c2,#40,#aa,#40,#c6
	db #4b,#ae,#45,#c6,#4b,#ae,#45,#c6
	db #41,#8a,#60,#04,#4b,#4b,#de,#e7
	db #00,#00,#06,#42,#05,#26,#42,#80
	db #01,#00,#42,#00,#42,#00,#42,#07
	db #42,#00,#42,#00,#42,#09,#42,#00
	db #42,#00,#42,#0b,#42,#00,#e0,#c5
	db #00,#00,#16,#a5,#06,#9b,#0c,#42
	db #80,#fd,#ff,#42,#00,#42,#80,#ff
	db #ff,#42,#80,#00,#00,#02,#de,#49
	db #da,#47,#d6,#45,#95,#70,#e1,#00
	db #00,#08,#42,#00,#42,#00,#02,#8a
	db #60,#04,#02,#6c,#60,#02,#70,#60
	db #08,#42,#00,#02,#31,#02,#8a,#60
	db #04,#6c,#60,#02,#04,#70,#60,#08
	db #42,#00,#42,#00,#02,#8a,#60,#04
	db #02,#6c,#60,#02,#70,#60,#08,#42
	db #00,#02,#31,#42,#00,#70,#60,#09
	db #42,#80,#03,#00,#42,#00,#42,#00
	db #68,#e0,#00,#00,#08,#42,#00,#42
	db #00,#02,#8a,#60,#04,#02,#6c,#60
	db #02,#68,#60,#08,#42,#00,#02,#68
	db #40,#02,#8a,#60,#04,#6c,#60,#02
	db #04,#62,#60,#08,#42,#00,#42,#00
	db #02,#8a,#60,#04,#02,#6c,#60,#02
	db #62,#60,#08,#02,#42,#00,#27,#02
	db #8a,#60,#05,#8a,#60,#04,#4b,#4b
	db #42,#80,#00,#00,#04,#b4,#61,#01
	db #02,#b4,#47,#75,#02,#b4,#40,#02
	db #b4,#4b,#b4,#41,#02,#b4,#47,#d4
	db #41,#97,#d4,#47,#97,#d4,#4b,#b4
	db #41,#02,#b4,#47,#b4,#41,#02,#b4
	db #47,#02,#b4,#4d,#02,#b4,#51,#d0
	db #47,#d0,#4b,#d0,#4f,#06,#ae,#41
	db #02,#ae,#47,#6f,#02,#ae,#40,#02
	db #ae,#4b,#ae,#41,#02,#ae,#47,#d4
	db #41,#97,#d4,#47,#97,#d4,#4b,#a6
	db #41,#02,#a6,#47,#a6,#41,#02,#a6
	db #47,#02,#a6,#4d,#02,#a6,#51,#c6
	db #47,#c6,#4b,#c6,#4f,#b8,#e1,#00
	db #00,#01,#79,#91,#b8,#47,#b8,#41
	db #79,#b8,#47,#b8,#41,#b8,#47,#b8
	db #41,#91,#b8,#47,#b8,#41,#79,#b8
	db #47,#b8,#4b,#b8,#41,#79,#91,#b8
	db #47,#b8,#41,#79,#b8,#47,#b8,#41
	db #b8,#47,#b8,#41,#79,#75,#91,#06
	db #b0,#40,#71,#89,#b0,#47,#b0,#41
	db #71,#b0,#47,#b0,#41,#b0,#47,#b0
	db #41,#89,#b0,#47,#b0,#41,#71,#b0
	db #47,#b0,#4b,#aa,#41,#6b,#83,#aa
	db #47,#aa,#41,#6b,#aa,#47,#aa,#41
	db #ae,#47,#ae,#41,#6f,#6b,#87,#00
	db #b8,#e1,#00,#00,#01,#79,#b8,#49
	db #b8,#41,#79,#b8,#49,#b4,#41,#79
	db #b4,#49,#b8,#41,#b4,#4b,#b8,#41
	db #79,#b8,#49,#b4,#41,#79,#b4,#49
	db #b8,#41,#b4,#4b,#b8,#41,#79,#b8
	db #49,#b4,#41,#79,#b4,#49,#b8,#41
	db #b4,#4b,#b8,#41,#79,#b8,#49,#b8
	db #41,#7d,#7f,#7f,#be,#49,#be,#41
	db #7f,#be,#49,#c2,#41,#7d,#c2,#49
	db #bc,#41,#c2,#4b,#bc,#41,#7d,#bc
	db #49,#bc,#41,#7d,#7f,#7f,#be,#49
	db #be,#41,#7f,#be,#4b,#c2,#41,#7d
	db #c2,#49,#bc,#41,#c2,#4b,#bc,#41
	db #7d,#bc,#49,#bc,#41,#7d,#b8,#e1
	db #00,#00,#01,#79,#b8,#49,#b8,#41
	db #79,#b8,#49,#b8,#41,#7d,#bc,#49
	db #bc,#41,#bc,#4b,#bc,#41,#7d,#bc
	db #49,#bc,#41,#7f,#be,#49,#be,#41
	db #be,#4b,#be,#41,#7f,#be,#49,#be
	db #41,#89,#c8,#49,#c8,#41,#c8,#4b
	db #c8,#41,#89,#c8,#49,#c8,#41,#89
	db #7f,#7f,#be,#49,#be,#41,#7f,#be
	db #49,#c2,#41,#7d,#c2,#49,#bc,#41
	db #c2,#4b,#bc,#41,#7d,#bc,#49,#bc
	db #41,#7d,#7f,#7f,#be,#49,#be,#41
	db #7f,#be,#4b,#c2,#41,#7d,#c2,#49
	db #bc,#41,#c2,#4b,#bc,#41,#7d,#bc
	db #49,#bc,#41,#7d,#b8,#e1,#00,#00
	db #01,#79,#b8,#49,#b8,#41,#79,#b8
	db #49,#b8,#41,#7d,#b8,#49,#bc,#41
	db #b8,#4b,#bc,#41,#50,#65,#0a,#06
	db #b8,#63,#01,#79,#b8,#49,#b8,#41
	db #79,#b8,#49,#b8,#41,#7d,#b8,#49
	db #bc,#41,#b8,#4b,#bc,#41,#42,#00
	db #02,#88,#60,#09,#02,#b0,#63,#01
	db #71,#b0,#49,#b0,#41,#71,#b0,#49
	db #b0,#41,#7d,#b0,#49,#bc,#41,#b0
	db #4b,#bc,#41,#b0,#4f,#bc,#41,#7f
	db #7d,#b8,#40,#79,#b8,#49,#b8,#41
	db #79,#b8,#49,#b8,#41,#77,#b8,#49
	db #b6,#41,#b8,#4b,#b6,#41,#b8,#4f
	db #b6,#41,#7f,#7d,#6c,#e1,#00,#00
	db #02,#6c,#47,#88,#60,#03,#6c,#61
	db #02,#8a,#60,#04,#88,#60,#03,#6c
	db #67,#02,#6c,#41,#88,#60,#03,#8a
	db #60,#04,#88,#60,#03,#6c,#60,#02
	db #8a,#60,#04,#42,#00,#42,#00,#42
	db #00,#6c,#60,#02,#6c,#47,#88,#60
	db #03,#6c,#61,#02,#8a,#60,#04,#88
	db #60,#03,#6c,#67,#02,#6c,#41,#88
	db #60,#03,#8a,#60,#04,#88,#60,#03
	db #6c,#60,#02,#8a,#60,#04,#4b,#8a
	db #60,#05,#8a,#60,#04,#6c,#60,#02
	db #6c,#47,#80,#60,#03,#6c,#61,#02
	db #8a,#60,#04,#80,#60,#03,#6c,#67
	db #02,#6c,#41,#80,#60,#03,#8a,#60
	db #04,#80,#60,#03,#6c,#60,#02,#8a
	db #60,#04,#80,#60,#03,#8a,#67,#04
	db #8a,#41,#6c,#60,#02,#6c,#47,#88
	db #60,#03,#6c,#61,#02,#8a,#60,#04
	db #88,#60,#03,#6c,#67,#02,#6c,#41
	db #86,#60,#03,#8a,#60,#04,#86,#60
	db #03,#6c,#60,#02,#8a,#60,#04,#86
	db #60,#03,#8a,#65,#05,#8a,#61,#04
	db #cc,#e5,#00,#00,#06,#91,#cc,#4b
	db #cc,#45,#91,#cc,#4b,#cc,#45,#91
	db #cc,#4b,#cc,#45,#91,#cc,#4b,#68
	db #65,#0a,#42,#00,#42,#00,#42,#00
	db #cc,#60,#06,#91,#cc,#4b,#cc,#45
	db #91,#cc,#4b,#cc,#45,#91,#cc,#4b
	db #cc,#45,#91,#cc,#4b,#a0,#60,#09
	db #42,#00,#42,#00,#42,#00,#c6,#60
	db #06,#89,#c6,#40,#c6,#45,#89,#c6
	db #4b,#c6,#45,#89,#c6,#4b,#c6,#45
	db #89,#c6,#4b,#c6,#45,#89,#8d,#91
	db #95,#97,#d4,#4b,#d4,#45,#97,#d4
	db #4b,#d4,#45,#97,#d4,#4b,#d4,#45
	db #97,#d4,#4b,#d4,#45,#97,#9b,#9f
	db #b8,#e1,#00,#00,#01,#b8,#49,#c6
	db #41,#c6,#49,#be,#41,#be,#49,#b8
	db #41,#b8,#49,#c8,#41,#c8,#49,#c2
	db #41,#c2,#49,#b8,#41,#b8,#49,#c6
	db #41,#c6,#49,#b8,#41,#b8,#49,#c6
	db #41,#c6,#49,#be,#41,#be,#49,#b8
	db #41,#b8,#49,#a0,#61,#0b,#06,#42
	db #60,#00,#06,#be,#60,#01,#be,#49
	db #cc,#41,#cc,#49,#c4,#41,#c4,#49
	db #be,#41,#be,#49,#ce,#41,#ce,#49
	db #c8,#41,#c8,#49,#be,#41,#be,#49
	db #cc,#41,#cc,#49,#b6,#41,#b6,#49
	db #c4,#41,#c4,#49,#bc,#41,#bc,#49
	db #b6,#41,#b6,#49,#ce,#41,#02,#ce
	db #45,#02,#ce,#49,#02,#ce,#4f,#00
	db #b8,#e5,#00,#00,#0c,#42,#00,#42
	db #00,#42,#00,#08,#e8,#60,#07,#0e
	db #be,#60,#0c,#0e,#88,#60,#0b,#06
	db #42,#60,#00,#04,#42,#00,#c2,#60
	db #0c,#42,#00,#0c,#f2,#60,#07,#06
	db #42,#00,#42,#00,#02,#42,#00,#b6
	db #60,#0c,#0e,#e6,#60,#07,#06,#42
	db #00,#42,#00,#00,#b8,#e1,#00,#00
	db #01,#79,#b8,#49,#b8,#41,#79,#b8
	db #49,#b8,#41,#7d,#bc,#49,#bc,#41
	db #bc,#4b,#bc,#41,#7d,#bc,#49,#bc
	db #41,#7f,#be,#49,#be,#41,#be,#4b
	db #be,#41,#7f,#be,#49,#be,#41,#89
	db #c8,#49,#c8,#41,#c8,#4b,#c8,#41
	db #89,#c8,#49,#c8,#41,#89,#7f,#7f
	db #be,#49,#be,#41,#7f,#be,#49,#c2
	db #41,#7d,#c2,#49,#bc,#41,#c2,#4b
	db #bc,#41,#7d,#bc,#49,#bc,#41,#7d
	db #7f,#7f,#be,#49,#be,#41,#7f,#be
	db #4b,#c2,#41,#7d,#c2,#49,#bc,#41
	db #c2,#4b,#bc,#41,#50,#65,#0a,#00
	db #de,#e5,#00,#00,#06,#9f,#de,#4b
	db #de,#45,#9f,#de,#4b,#de,#45,#9b
	db #de,#4b,#da,#45,#de,#4f,#da,#45
	db #9b,#da,#4b,#da,#45,#97,#da,#4f
	db #d6,#45,#da,#4b,#d6,#45,#97,#d6
	db #4b,#d6,#45,#9b,#d6,#4b,#da,#45
	db #d6,#4f,#da,#45,#9b,#da,#4b,#da
	db #45,#9f,#a1,#a1,#e0,#4b,#e0,#45
	db #a1,#e0,#4f,#e4,#45,#9f,#e4,#4b
	db #de,#45,#e4,#4f,#de,#45,#9f,#de
	db #4b,#e0,#45,#9f,#9b,#9b,#da,#4b
	db #da,#45,#9b,#da,#4f,#da,#45,#9f
	db #da,#4b,#de,#45,#da,#4f,#de,#45
	db #68,#60,#0a,#00,#b8,#e1,#00,#00
	db #01,#b8,#49,#c6,#41,#c6,#49,#be
	db #41,#be,#49,#b8,#41,#b8,#49,#c8
	db #41,#c8,#49,#c2,#41,#c2,#49,#b8
	db #41,#b8,#49,#c6,#41,#c6,#49,#b8
	db #41,#b8,#49,#c6,#41,#c6,#49,#be
	db #41,#be,#49,#b8,#41,#b8,#49,#c8
	db #41,#c8,#49,#c2,#41,#c2,#49,#b8
	db #41,#b8,#49,#c6,#41,#c6,#49,#be
	db #41,#be,#49,#cc,#41,#cc,#49,#c4
	db #41,#c4,#49,#be,#41,#be,#49,#ce
	db #41,#ce,#49,#c8,#41,#c8,#49,#be
	db #41,#be,#49,#cc,#41,#cc,#49,#b6
	db #41,#b6,#49,#c4,#41,#c4,#49,#bc
	db #41,#bc,#49,#b6,#41,#b6,#49,#c6
	db #41,#c6,#49,#c0,#41,#c0,#49,#b6
	db #41,#b6,#49,#c4,#41,#c4,#49,#b8
	db #e5,#00,#00,#0c,#42,#00,#42,#00
	db #42,#00,#08,#e8,#60,#07,#0e,#be
	db #60,#0c,#0e,#ee,#60,#07,#0c,#42
	db #00,#c2,#60,#0c,#42,#00,#0c,#f2
	db #60,#07,#06,#42,#00,#42,#00,#02
	db #42,#00,#b6,#60,#0c,#0e,#e6,#60
	db #07,#00,#de,#e5,#00,#00,#06,#9f
	db #de,#4b,#de,#45,#9f,#de,#4b,#de
	db #45,#9b,#de,#4b,#da,#45,#de,#4f
	db #da,#45,#9b,#da,#4b,#da,#45,#97
	db #da,#4f,#d6,#45,#da,#53,#d6,#45
	db #97,#d6,#4b,#da,#45,#95,#da,#4b
	db #d4,#45,#da,#4f,#d4,#45,#95,#d4
	db #4b,#d6,#45,#95,#91,#91,#d0,#4b
	db #d0,#45,#91,#d0,#4f,#d0,#45,#95
	db #d0,#4b,#d4,#45,#d0,#4f,#d4,#45
	db #95,#d4,#4b,#d6,#45,#95,#91,#91
	db #d0,#4b,#d0,#45,#91,#d0,#4f,#d4
	db #45,#8f,#d4,#4b,#ce,#45,#d4,#4f
	db #ce,#45,#8f,#ce,#4b,#ce,#45,#ce
	db #4d,#6c,#e1,#00,#00,#02,#6c,#47
	db #88,#60,#03,#6c,#61,#02,#8a,#60
	db #04,#88,#60,#03,#6c,#67,#02,#6c
	db #41,#88,#60,#03,#8a,#60,#04,#88
	db #60,#03,#6c,#60,#02,#8a,#60,#04
	db #88,#60,#03,#8a,#67,#04,#8a,#41
	db #6c,#60,#02,#6c,#47,#88,#60,#03
	db #6c,#61,#02,#8a,#60,#04,#88,#60
	db #03,#6c,#67,#02,#6c,#41,#88,#60
	db #03,#8a,#60,#04,#88,#60,#03,#6c
	db #60,#02,#8a,#60,#04,#88,#60,#03
	db #8a,#67,#04,#8a,#41,#6c,#60,#02
	db #6c,#47,#80,#60,#03,#6c,#61,#02
	db #8a,#60,#04,#80,#60,#03,#6c,#67
	db #02,#6c,#41,#80,#60,#03,#8a,#60
	db #04,#80,#60,#03,#6c,#60,#02,#8a
	db #60,#04,#80,#60,#03,#8a,#67,#04
	db #8a,#41,#6c,#60,#02,#6c,#47,#7a
	db #60,#03,#6c,#61,#02,#8a,#60,#04
	db #7a,#60,#03,#6c,#67,#02,#6c,#41
	db #7e,#60,#03,#8a,#60,#04,#7e,#60
	db #03,#6c,#60,#02,#8a,#60,#04,#7e
	db #60,#03,#8a,#60,#05,#8a,#60,#04
	db #6c,#e1,#00,#00,#02,#88,#60,#03
	db #6c,#65,#02,#a0,#60,#03,#49,#42
	db #00,#6c,#60,#02,#6c,#43,#8a,#61
	db #04,#42,#00,#88,#60,#03,#8a,#67
	db #04,#88,#60,#03,#61,#8a,#6b,#04
	db #a0,#60,#03,#6c,#61,#02,#88,#60
	db #03,#6c,#65,#02,#a0,#60,#03,#49
	db #42,#00,#6c,#60,#02,#6c,#43,#8a
	db #61,#04,#02,#8a,#47,#02,#72,#61
	db #0a,#02,#42,#00,#02,#6c,#60,#02
	db #76,#60,#03,#6c,#65,#02,#8e,#60
	db #03,#37,#42,#00,#6c,#60,#02,#6c
	db #43,#8a,#61,#04,#42,#00,#76,#60
	db #03,#8a,#67,#04,#76,#60,#03,#4f
	db #8a,#6b,#04,#8e,#60,#03,#6c,#61
	db #02,#86,#60,#03,#6c,#65,#02,#9e
	db #60,#03,#47,#42,#00,#6c,#60,#02
	db #6c,#43,#8a,#61,#04,#02,#8a,#47
	db #6c,#61,#02,#8a,#65,#05,#8a,#63
	db #04,#8a,#41,#4b,#6c,#e1,#00,#00
	db #02,#6c,#47,#88,#60,#03,#6c,#61
	db #02,#8a,#60,#04,#88,#60,#03,#6c
	db #67,#02,#6c,#41,#88,#60,#03,#8a
	db #60,#04,#88,#60,#03,#6c,#60,#02
	db #8a,#60,#04,#88,#60,#03,#8a,#67
	db #04,#8a,#41,#6c,#60,#02,#6c,#47
	db #88,#60,#03,#6c,#61,#02,#8a,#60
	db #04,#88,#60,#03,#6c,#67,#02,#6c
	db #41,#88,#60,#03,#8a,#60,#04,#88
	db #60,#03,#6c,#60,#02,#8a,#60,#04
	db #88,#60,#03,#8a,#67,#04,#8a,#41
	db #6c,#60,#02,#6c,#47,#80,#60,#03
	db #6c,#61,#02,#8a,#60,#04,#80,#60
	db #03,#6c,#67,#02,#6c,#41,#80,#60
	db #03,#8a,#60,#04,#80,#60,#03,#6c
	db #60,#02,#8a,#60,#04,#80,#60,#03
	db #8a,#67,#04,#8a,#41,#6c,#60,#02
	db #6c,#47,#7a,#60,#03,#6c,#61,#02
	db #8a,#60,#04,#7a,#60,#03,#6c,#67
	db #02,#6c,#41,#7e,#60,#03,#8a,#60
	db #04,#7e,#60,#03,#8a,#60,#05,#8a
	db #60,#04,#42,#00,#00,#6c,#e1,#00
	db #00,#02,#88,#60,#03,#6c,#65,#02
	db #a0,#60,#03,#49,#42,#00,#6c,#60
	db #02,#6c,#43,#8a,#61,#04,#42,#00
	db #88,#60,#03,#8a,#67,#04,#88,#60
	db #03,#61,#8a,#6b,#04,#a0,#60,#03
	db #6c,#61,#02,#88,#60,#03,#6c,#65
	db #02,#a0,#60,#03,#49,#42,#00,#6c
	db #60,#02,#6c,#43,#8a,#61,#04,#02
	db #8a,#47,#02,#8a,#4b,#02,#8a,#4d
	db #02,#6c,#61,#02,#76,#60,#03,#6c
	db #65,#02,#8e,#60,#03,#37,#42,#00
	db #6c,#60,#02,#6c,#43,#8a,#61,#04
	db #42,#00,#76,#60,#03,#8a,#67,#04
	db #76,#60,#03,#4f,#8a,#6b,#04,#8e
	db #60,#03,#6c,#61,#02,#86,#60,#03
	db #6c,#65,#02,#9e,#60,#03,#47,#42
	db #00,#6c,#60,#02,#6c,#43,#8a,#61
	db #04,#02,#8a,#47,#02,#8a,#4b,#02
	db #8a,#4d,#00,#6c,#e1,#00,#00,#02
	db #02,#6c,#45,#02,#6c,#49,#02,#6c
	db #4d,#02,#8a,#61,#04,#02,#8a,#45
	db #02,#8a,#49,#02,#8a,#4d,#02,#6c
	db #61,#02,#02,#6c,#45,#02,#6c,#49
	db #02,#6c,#4d,#02,#8a,#61,#04,#02
	db #8a,#45,#02,#8a,#49,#02,#8a,#4d
	db #02,#6c,#61,#02,#02,#6c,#45,#02
	db #6c,#49,#02,#6c,#4d,#02,#8a,#61
	db #04,#02,#8a,#45,#02,#8a,#49,#02
	db #8a,#4d,#02,#6c,#61,#02,#02,#6c
	db #45,#02,#6c,#49,#02,#6c,#4d,#02
	db #8a,#61,#04,#02,#8a,#45,#02,#8a
	db #49,#02,#8a,#4d,#00,#e8,#e5,#00
	db #00,#07,#0a,#e8,#49,#0a,#e8,#4d
	db #06,#de,#45,#0a,#de,#49,#0a,#de
	db #4d,#06,#e0,#45,#0a,#e0,#49,#0a
	db #e0,#4d,#06,#d4,#45,#0a,#d4,#49
	db #02,#d6,#45,#0a,#d6,#49,#00,#42
	db #80,#00,#00,#04,#e8,#67,#07,#0a
	db #e8,#4b,#0a,#e8,#4f,#06,#de,#47
	db #0a,#de,#4b,#0a,#de,#4f,#06,#e0
	db #47,#0a,#e0,#4b,#0a,#e0,#51,#06
	db #d4,#47,#08,#42,#00,#d4,#4f,#02
	db #d6,#47,#00,#e8,#e5,#00,#00,#07
	db #04,#e8,#47,#04,#e8,#49,#04,#e8
	db #4b,#04,#e8,#4d,#04,#e8,#4f,#de
	db #45,#04,#de,#47,#04,#de,#49,#04
	db #de,#4b,#04,#de,#4d,#04,#de,#4f
	db #e0,#45,#04,#e0,#47,#04,#e0,#49
	db #04,#e0,#4b,#04,#e0,#4d,#04,#e0
	db #51,#d4,#47,#04,#d4,#49,#04,#d4
	db #4b,#02,#d6,#47,#42,#00,#02,#d6
	db #49,#04,#d6,#4b,#00,#d6,#e5,#00
	db #00,#06,#95,#91,#97,#95,#91,#97
	db #95,#91,#97,#95,#91,#97,#95,#97
	db #95,#97,#95,#91,#97,#95,#91,#97
	db #95,#91,#97,#95,#91,#97,#95,#97
	db #95,#9b,#97,#95,#9b,#97,#95,#9b
	db #97,#95,#9b,#97,#95,#9b,#97,#9b
	db #97,#9b,#97,#95,#9b,#97,#95,#91
	db #97,#95,#91,#8d,#95,#91,#42,#00
	db #42,#00,#42,#00,#b8,#e5,#00,#00
	db #06,#04,#be,#60,#0d,#42,#00,#42
	db #00,#b8,#40,#42,#00,#d0,#40,#42
	db #00,#42,#00,#b8,#47,#42,#00,#42
	db #00,#be,#40,#42,#00,#b8,#40,#42
	db #00,#42,#00,#be,#40,#42,#00,#42
	db #00,#b8,#49,#42,#00,#d0,#40,#42
	db #00,#42,#00,#b8,#40,#42,#00,#42
	db #00,#be,#40,#42,#00,#b8,#4b,#42
	db #00,#42,#00,#be,#40,#42,#00,#42
	db #00,#b8,#40,#42,#00,#d0,#4d,#42
	db #00,#42,#00,#b8,#40,#42,#00,#42
	db #00,#be,#4f,#42,#00,#b8,#40,#42
	db #00,#42,#00,#be,#51,#42,#00,#42
	db #00,#b8,#40,#42,#00,#d0,#53,#42
	db #00,#42,#00,#b8,#55,#42,#00,#42
	db #00,#be,#57,#42,#00,#b8,#e5,#00
	db #00,#07,#3e,#42,#60,#00,#00,#42
	db #80,#00,#00,#d0,#65,#07,#3c,#42
	db #60,#00,#00,#e8,#e5,#00,#00,#07
	db #3e,#42,#60,#00,#00,#42,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
; #0143
; ld de,#0850
; call #07ec
;
.init_music		; added by Megachur
;
	ld de,l0850
	jp real_init_music
;
.music_info
	db "ReSeT 0 - Take Off (2010)(Public Domain)(John McKlain)",0
	db "StArkos",0

	read "music_end.asm"
