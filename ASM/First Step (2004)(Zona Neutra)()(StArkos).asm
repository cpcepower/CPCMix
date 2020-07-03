; Music of First Step (2004)(Zona Neutra)()(StArkos)
; Ripped by Megachur the 29/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FIRSTSTE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0100

	read "music_header.asm"

.l0100
	jp l0970	; init
	jp l010d	; play
	jp l0954	; stop
	nop
.l010c equ $ + 2
.l010b equ $ + 1
	ld bc,#0000
;
.play_music
.l010d
;
	xor a
	ld (l010b),a
	ld (l093b),a
.l0115 equ $ + 1
	ld a,#00
.l0117 equ $ + 1
	cp #00
	jr z,l0121
	inc a
	ld (l0115),a
	jp l03b0
.l0121
	xor a
	ld (l0115),a
.l0125
	or a
	jp nc,l0207
	ld (l022f),a
	ld (l029a),a
	ld (l0305),a
	ld a,#b7
	ld (l0125),a
.l0138 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l016e
.l013e equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l016b
	ld b,a
	and #1f
	bit 4,a
	jr z,l014f
	or #e0
.l014f
	ld (l023c),a
	rl b
	rl b
	jr nc,l015d
	ld a,(hl)
	ld (l02a7),a
	inc hl
.l015d
	rl b
	jr nc,l0166
	ld a,(hl)
	ld (l0312),a
	inc hl
.l0166
	ld (l013e),hl
	jr l0171
.l016b
	ld (l013e),hl
.l016e
	ld (l0138),a
.l0172 equ $ + 1
.l0171
	ld a,#00
	sub #01
	jr c,l017e
	ld (l0172),a
.l017b equ $ + 1
	ld a,#00
	jr l0199
.l017f equ $ + 1
.l017e
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l018c
	ld (l017f),hl
	jr l0199
.l018c
	ld (l017b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l017f),hl
	ld (l0172),a
	ld a,b
.l0199
	ld (l0370),a
.l019d equ $ + 1
	ld hl,#0000
	ld de,l0235
	ldi
	ldi
	ld de,l02a0
	ldi
	ldi
	ld de,l030b
	ldi
	ldi
	ld (l019d),hl
.l01b8 equ $ + 1
	ld a,#00
	or a
	jr nz,l01ca
.l01bd equ $ + 1
	ld a,#00
	sub #01
	jr c,l01d8
	ld (l01bd),a
.l01c6 equ $ + 1
	ld hl,#0000
	jr l0210
.l01cb equ $ + 1
.l01ca
	ld a,#00
	sub #01
	jr c,l01d8
	ld (l01cb),a
	ld hl,(l01d9)
	jr l01fd
.l01d9 equ $ + 1
.l01d8
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l01f5
	ld (l01bd),a
	xor a
	ld (l01b8),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l01d9),hl
	ex de,hl
	ld (l01c6),hl
	jr l0210
.l01f5
	ld (l01cb),a
	ld a,#01
	ld (l01b8),a
.l01fd
	ld e,(hl)
	inc hl
	ld d,(hl)
.l0200
	inc hl
	ld (l01d9),hl
	ex de,hl
	jr l0210
.l0208 equ $ + 1
.l0207
	ld a,#00
	sub #01
	jr nc,l022b
.l020e equ $ + 1
	ld hl,#0000
.l0210
	ld a,(hl)
	inc hl
	srl a
	jr c,l0228
	srl a
	jr c,l021f
	ld (l0117),a
	jr l0227
.l021f
	ld (l010b),a
.l0223 equ $ + 1
	ld a,#01
	ld (l010c),a
.l0227
	xor a
.l0228
	ld (l020e),hl
.l022b
	ld (l0208),a
.l022f equ $ + 1
	ld a,#00
	sub #01
	jr nc,l0296
.l0235 equ $ + 1
	ld hl,#0000
.l0238 equ $ + 1
	ld bc,l0100
.l023c equ $ + 2
.l023b equ $ + 1
	ld de,#0000
.l023f equ $ + 2
	ld lx,#00
	call l04ad
	ld a,lx
	ld (l023f),a
	ld (l03ba),hl
	exx
	ld (l0235),hl
	ld a,c
	ld (l0238),a
	ld (l03b4),a
	xor a
	or hy
	jr nz,l0294
	ld (l03d7),a
	ld d,a
	ld a,e
	ld (l023b),a
	ld l,d
	ld h,l
	ld (l03b7),hl
.l0269 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l03e8
	ldi
	ldi
	ld de,l03e0
	ldi
	ldi
	ld de,l03d9
	ldi
	ld de,l03ea
	ldi
	ld a,(hl)
	inc hl
	ld (l03c9),hl
	ld hl,l093b
	or (hl)
	ld (hl),a
.l0294
	ld a,ly
.l0296
	ld (l022f),a
.l029a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l0301
.l02a0 equ $ + 1
	ld hl,#0000
.l02a3 equ $ + 1
	ld bc,l0200
.l02a7 equ $ + 2
.l02a6 equ $ + 1
	ld de,#0000
.l02aa equ $ + 2
	ld lx,#00
	call l04ad
	ld a,lx
	ld (l02aa),a
	ld (l040b),hl
	exx
	ld (l02a0),hl
	ld a,c
	ld (l02a3),a
	ld (l0405),a
	xor a
	or hy
	jr nz,l02ff
	ld (l0428),a
	ld d,a
	ld a,e
	ld (l02a6),a
	ld l,d
	ld h,l
	ld (l0408),hl
.l02d4 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l0439
	ldi
	ldi
	ld de,l0431
	ldi
	ldi
	ld de,l042a
	ldi
	ld de,l043b
	ldi
	ld a,(hl)
	inc hl
	ld (l041a),hl
	ld hl,l093b
	or (hl)
	ld (hl),a
.l0300 equ $ + 1
.l02ff
	ld a,ly
.l0301
	ld (l029a),a
.l0305 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l036c
.l030b equ $ + 1
	ld hl,#0000
.l030e equ $ + 1
	ld bc,l0300
.l0312 equ $ + 2
.l0311 equ $ + 1
	ld de,#0000
.l0315 equ $ + 2
	ld lx,#00
	call l04ad
	ld a,lx
	ld (l0315),a
	ld (l045c),hl
	exx
	ld (l030b),hl
	ld a,c
	ld (l030e),a
	ld (l0456),a
	xor a
	or hy
	jr nz,l036a
	ld (l0479),a
	ld d,a
	ld a,e
	ld (l0311),a
	ld l,d
	ld h,l
	ld (l0459),hl
.l033f equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l048a
	ldi
	ldi
	ld de,l0482
	ldi
	ldi
	ld de,l047b
	ldi
	ld de,l048c
	ldi
	ld a,(hl)
	inc hl
	ld (l046b),hl
	ld hl,l093b
	or (hl)
	ld (hl),a
.l036a
	ld a,ly
.l036c
	ld (l0305),a
.l0370 equ $ + 1
	ld a,#00
	sub #01
	jr c,l037a
	ld (l0370),a
	jr l03b0
.l037a
	ld a,#37
	ld (l0125),a
	ld hl,(l019d)
.l0383 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l03b0
	ld (l0138),a
	ld (l0172),a
	ld (l0208),a
.l0394 equ $ + 1
	ld hl,#0000
	ld (l013e),hl
.l039a equ $ + 1
	ld hl,#0000
	ld (l017f),hl
.l03a0 equ $ + 1
	ld hl,#0000
	ld (l019d),hl
.l03a6 equ $ + 1
	ld hl,#0000
	ld (l01d9),hl
.l03ac equ $ + 1
	ld a,#00
	ld (l01b8),a
.l03b0
	ld hl,l093b
.l03b4 equ $ + 1
	ld d,#00
	exx
.l03b7 equ $ + 1
	ld hl,#0000
.l03ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l03b7),hl
	ld (l05e8),hl
	ld a,(l023f)
	ld lx,a
.l03c9 equ $ + 1
	ld hl,#0000
	ld iy,l07d6
	ld a,(l03d7)
	call l0542
	ex de,hl
.l03d7 equ $ + 1
	ld a,#00
.l03d9 equ $ + 1
	cp #00
	jr z,l03df
	inc a
	jr l03fc
.l03e0 equ $ + 1
.l03df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l03f8
.l03e8 equ $ + 1
	ld de,#0000
.l03ea
	or a
	jr c,l03f8
.l03ee equ $ + 1
	ld hl,#0000
	ld (l03e0),hl
	dec a
	ld (l03d9),a
	inc a
.l03f8
	ld (l03c9),de
.l03fc
	ld (l03d7),a
	ld a,hx
	ld (l04a9),a
.l0405 equ $ + 1
	ld d,#00
	exx
.l0408 equ $ + 1
	ld hl,#0000
.l040b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l0408),hl
	ld (l05e8),hl
	ld a,(l02aa)
	ld lx,a
.l041a equ $ + 1
	ld hl,#0000
	ld iy,l0827
	ld a,(l0428)
	call l0542
	ex de,hl
.l0428 equ $ + 1
	ld a,#00
.l042a equ $ + 1
	cp #00
	jr z,l0430
	inc a
	jr l044d
.l0431 equ $ + 1
.l0430
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l0449
.l0439 equ $ + 1
	ld de,#0000
.l043b
	or a
	jr c,l0449
.l043f equ $ + 1
	ld hl,#0000
	ld (l0431),hl
	dec a
	ld (l042a),a
	inc a
.l0449
	ld (l041a),de
.l044d
	ld (l0428),a
	ld a,hx
	ld (l04a6),a
.l0456 equ $ + 1
	ld d,#00
	exx
.l0459 equ $ + 1
	ld hl,#0000
.l045c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l0459),hl
	ld (l05e8),hl
	ld a,(l0315)
	ld lx,a
.l046b equ $ + 1
	ld hl,#0000
	ld iy,l0878
	ld a,(l0479)
	call l0542
	ex de,hl
.l0479 equ $ + 1
	ld a,#00
.l047b equ $ + 1
	cp #00
	jr z,l0481
	inc a
	jr l049e
.l0482 equ $ + 1
.l0481
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l049a
.l048a equ $ + 1
	ld de,#0000
.l048c
	or a
	jr c,l049a
.l0490 equ $ + 1
	ld hl,#0000
	ld (l0482),hl
	dec a
	ld (l047b),a
	inc a
.l049a
	ld (l046b),de
.l049e
	ld (l0479),a
	ld a,hx
	sla a
.l04a6 equ $ + 1
	or #00
	rla
.l04a9 equ $ + 1
	or #00
	jp l07cb
.l04ad
	ld a,(hl)
	inc hl
	srl a
	jr c,l04e6
	cp #60
	jr nc,l04ee
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l04c6
	and #0f
	ld c,a
.l04c6
	rl b
	jr nc,l04cc
	ld e,(hl)
	inc hl
.l04cc
	rl b
	jr nc,l04de
.l04d0
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l04da
	dec h
.l04da
	ld ly,#00
	ret
.l04de
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l04e6
	ld hy,#00
	add d
	ld lx,a
	jr l04de
.l04ee
	ld hy,#01
	sub #60
	jr z,l050f
	dec a
	jr z,l0526
	dec a
	jr z,l0518
	dec a
	jr z,l04d0
	dec a
	jr z,l0522
	dec a
	jr z,l0537
	dec a
	jr z,l052e
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l050f
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l0518
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l0522
	ld c,(hl)
	inc hl
	jr l04d0
.l0526
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l052e
	ld a,(hl)
	inc hl
	ld (l010b),a
	ld a,b
	ld (l010c),a
.l0537
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l0542
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l05f8
	bit 4,e
	jr z,l05aa
	ld a,(hl)
	bit 6,a
	jr z,l0577
	ld d,#08
	inc hl
	and #1f
	jr z,l055e
	ld (l08c9),a
	res 3,d
.l055e
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l0567
	xor a
.l0567
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l0577
	ld (l08c9),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l0593
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l058c
	xor a
.l058c
	ld (iy+#36),a
	ld hx,d
	jr l05bd
.l0593
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l059c
	xor a
.l059c
	ld (iy+#36),a
.l059f
	ld hx,d
	ret
.l05a2
	ld (iy+#36),#00
	ld d,#09
	jr l059f
.l05aa
	ld d,#08
	ld a,e
	and #0f
	jr z,l05a2
	exx
	sub d
	exx
	jr nc,l05b7
	xor a
.l05b7
	ld (iy+#36),a
	ld hx,#08
.l05bd
	bit 5,e
	jr z,l05c5
	ld a,(hl)
	inc hl
	jr l05c6
.l05c5
	xor a
.l05c6
	bit 6,e
	jr z,l05d0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l05d3
.l05d0
	ld de,#0000
.l05d3
	add lx
	cp #60
	jr c,l05db
	ld a,#60
.l05db
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l070b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l05e8 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l05f8
	or a
	jr nz,l0602
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l0602
	ld a,e
	or #08
	and #09
	ld d,a
	ld (iy+#36),#10
	ld b,(hl)
	inc hl
	ld a,b
	and #03
	add a
	add #08
	ld (l0934),a
	bit 3,e
	jr z,l0624
	ld a,(hl)
	inc hl
	ld (l08c9),a
	res 3,d
	jr l0624
.l0624
	ld hx,d
	xor a
	bit 7,b
	jr z,l0636
	bit 6,b
	jr z,l0631
	ld a,(hl)
	inc hl
.l0631
	ld (l06e5),a
	ld a,#01
.l0636
	ld (l067e),a
	ld a,b
	rra
	and #0e
	ld (l068f),a
	bit 4,e
	jp nz,l06f0
	bit 1,e
	jr z,l064d
	ld a,(hl)
	inc hl
	jr l064e
.l064d
	xor a
.l064e
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l065b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l065e
.l065b
	ld de,#0000
.l065e
	add lx
	cp #60
	jr c,l0666
	ld a,#60
.l0666
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l070b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l05e8)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l067e equ $ + 1
	ld a,#00
	or a
	jr nz,l068e
	ex af,af'
	bit 5,a
	jr nz,l06f9
.l0687
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l068f equ $ + 1
.l068e
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l0699),a
	ld a,c
.l0699 equ $ + 1
	jr l069a
.l069a
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	ld c,a
	jr nc,l06b3
	inc bc
.l06b3
	ld a,c
	ld (l08fe),a
	ld a,b
	ld (l0919),a
	ld a,(l067e)
	or a
	jr z,l06ee
	ld a,(l068f)
	ld e,a
	srl a
	add e
	ld (l06cd),a
	ld a,b
.l06cd equ $ + 1
	jr l06ce
.l06ce
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	ld b,a
.l06e5 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l06ee
	pop hl
	ret
.l06f0
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l0687
.l06f9
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l08fe),a
	inc hl
	ld a,(hl)
	ld (l0919),a
	inc hl
	ret
.l070b
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
.l07cb
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l07d6 equ $ + 1
	ld a,#00
.l07d8 equ $ + 1
	cp #00
	jr z,l07f0
	ld d,#00
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l07d8),a
	exx
.l07f1 equ $ + 1
.l07f0
	ld a,#00
.l07f3 equ $ + 1
	cp #00
	jr z,l080b
	ld d,#01
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l07f3),a
	exx
.l080c equ $ + 1
.l080b
	ld a,#00
.l080e equ $ + 1
	cp #00
	jr z,l0826
	ld d,#08
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l080e),a
	exx
.l0827 equ $ + 1
.l0826
	ld a,#00
.l0829 equ $ + 1
	cp #00
	jr z,l0841
	ld d,#02
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l0829),a
	exx
.l0842 equ $ + 1
.l0841
	ld a,#00
.l0844 equ $ + 1
	cp #00
	jr z,l085c
	ld d,#03
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l0844),a
	exx
.l085d equ $ + 1
.l085c
	ld a,#00
.l085f equ $ + 1
	cp #00
	jr z,l0877
	ld d,#09
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l085f),a
	exx
.l0878 equ $ + 1
.l0877
	ld a,#00
.l087a equ $ + 1
	cp #00
	jr z,l0892
	ld d,#04
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l087a),a
	exx
.l0893 equ $ + 1
.l0892
	ld a,#00
.l0895 equ $ + 1
	cp #00
	jr z,l08ad
	ld d,#05
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l0895),a
	exx
.l08ae equ $ + 1
.l08ad
	ld a,#00
.l08b0 equ $ + 1
	cp #00
	jr z,l08c8
	ld d,#0a
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l08b0),a
	exx
.l08c9 equ $ + 1
.l08c8
	ld a,#00
.l08cb equ $ + 1
	cp #00
	jr z,l08e3
	ld d,#06
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l08cb),a
	exx
.l08e3
	ld a,h
.l08e5 equ $ + 1
	cp #c0
	jr z,l08fd
	ld d,#07
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l08e5),a
	exx
.l08fe equ $ + 1
.l08fd
	ld a,#00
.l0900 equ $ + 1
	cp #00
	jr z,l0918
	ld d,#0b
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l0900),a
	exx
.l0919 equ $ + 1
.l0918
	ld a,#00
.l091b equ $ + 1
	cp #00
	jr z,l0933
	ld d,#0c
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l091b),a
	exx
.l0934 equ $ + 1
.l0933
	ld a,#00
.l0936 equ $ + 1
	cp #ff
	jr nz,l093f
	ld h,a
.l093b equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l093f
	ld d,#0d
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l0936),a
	ret
;
.stop_music
.l0954
;
	xor a
	ld (l080c),a
	ld (l085d),a
	ld (l08ae),a
	dec a
	ld (l080e),a
	ld (l085f),a
	ld (l08b0),a
	ld (l08e5),a
	ld a,#3f
	jp l07cb
;
.real_init_music
.l0970
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l0223),a
	ld de,#0003
	add hl,de
	ld de,l017f
	ldi
	ldi
	ld de,l019d
	ldi
	ldi
	ld de,l01d9
	ldi
	ldi
	ld de,l0269
	ldi
	ldi
	ld de,l0394
	ldi
	ldi
	ld de,l039a
	ldi
	ldi
	ld de,l03a0
	ldi
	ldi
	ld de,l03a6
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l0117),a
	ld (l0115),a
	ld (l013e),hl
	ld hl,(l01d9)
	ld (l0383),hl
	ld a,(hl)
	and #01
	ld (l01b8),a
	ld hl,(l03a6)
	ld a,(hl)
	and #01
	ld (l03ac),a
	ld hl,(l0269)
	ld (l02d4),hl
	ld (l033f),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l03c9),hl
	ld (l041a),hl
	ld (l046b),hl
	ld (l03e8),hl
	ld (l0439),hl
	ld (l048a),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l03ee),de
	ld (l043f),de
	ld (l0490),de
	ld (l03e0),de
	ld (l0431),de
	ld (l0482),de
	ld a,#37
	ld (l0125),a
	ld hl,l0a2c
.l0a1c
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l0a23
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l0a23
	jr l0a1c
.l0a2c
	jr l0a2e
.l0a2e
	dw l07d6,l07f1,l0827,l0842
	dw l0878,l0893,l08c9,l080c
	dw l085d,l08ae,l08fe,l0919
	dw l0934,l0138,l0172,l01bd
	dw l01cb,l0208,l03d7,l0428
	dw l0479,l0238,l02a3,l030e
	dw #ff11,l07d8,l07f3,l0829
	dw l0844,l087a,l0895,l08cb
	dw l08e5,l080e,l085f,l08b0
	dw l0900,l091b,l0936,l03d9
	dw l042a,l047b,#b703,l03ea
	dw l043b,l048c

	ds #2000-$,0		; added by Megachur

;
; #2000
;
.l2000
	db #53,#4b,#31,#30,#00,#20,#01,#32
	db #00,#1e,#20,#24,#20,#02,#21,#0b
	db #21,#1a,#20,#1e,#20,#24,#20,#02
	db #21,#05,#c0,#00,#00,#47,#3f,#20
	db #1f,#01,#30,#7e,#8c,#21,#8d,#21
	db #8c,#21,#8c,#21,#8d,#21,#8c,#21
	db #8d,#21,#af,#21,#8d,#21,#8d,#21
	db #af,#21,#8d,#21,#8d,#21,#af,#21
	db #ef,#21,#8d,#21,#af,#21,#ef,#21
	db #0e,#22,#30,#22,#70,#22,#8d,#21
	db #af,#21,#ef,#21,#0e,#22,#30,#22
	db #70,#22,#8d,#21,#af,#21,#ef,#21
	db #91,#22,#af,#22,#cb,#22,#e7,#22
	db #03,#23,#1f,#23,#3b,#23,#8b,#23
	db #a4,#23,#3b,#23,#8b,#23,#a4,#23
	db #3b,#23,#eb,#23,#a4,#23,#3b,#23
	db #eb,#23,#a4,#23,#3b,#23,#07,#24
	db #a4,#23,#3b,#23,#26,#24,#a4,#23
	db #3b,#23,#8b,#23,#a4,#23,#3b,#23
	db #eb,#23,#a4,#23,#3b,#23,#07,#24
	db #a4,#23,#3b,#23,#26,#24,#a4,#23
	db #47,#24,#69,#24,#af,#21,#47,#24
	db #73,#24,#af,#21,#8b,#24,#c3,#24
	db #e1,#24,#23,#25,#53,#25,#73,#25
	db #8b,#24,#c3,#24,#e1,#24,#23,#25
	db #53,#25,#73,#25,#8b,#24,#ca,#25
	db #e1,#24,#23,#25,#e3,#25,#73,#25
	db #8b,#24,#ca,#25,#e1,#24,#23,#25
	db #e3,#25,#73,#25,#8b,#24,#c3,#24
	db #e1,#24,#23,#25,#53,#25,#73,#25
	db #8b,#24,#04,#26,#e1,#24,#0e,#26
	db #24,#26,#e1,#24,#8c,#21,#8c,#21
	db #8c,#21,#02,#3f,#26,#42,#40,#26
	db #00,#3f,#26,#17,#21,#21,#21,#2a
	db #21,#3f,#21,#59,#21,#6f,#21,#1e
	db #21,#21,#21,#ff,#37,#00,#00,#00
	db #00,#28,#21,#2a,#21,#05,#37,#00
	db #80,#08,#1e,#21,#3f,#21,#00,#b7
	db #00,#1e,#0a,#2f,#14,#2f,#0c,#2f
	db #08,#2e,#04,#2d,#03,#2c,#02,#1e
	db #21,#59,#21,#00,#b7,#00,#1f,#22
	db #1d,#22,#1c,#22,#1a,#22,#19,#22
	db #17,#22,#15,#22,#13,#22,#11,#22
	db #00,#1e,#21,#6f,#21,#00,#b7,#00
	db #0f,#0f,#0e,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#1e
	db #21,#8c,#21,#00,#b7,#00,#80,#08
	db #80,#08,#80,#08,#80,#08,#80,#08
	db #80,#08,#80,#08,#80,#08,#80,#08
	db #80,#08,#80,#08,#c2,#30,#80,#01
	db #49,#31,#31,#33,#31,#31,#33,#31
	db #49,#31,#31,#33,#31,#49,#33,#31
	db #33,#31,#31,#33,#31,#31,#49,#31
	db #33,#31,#31,#33,#31,#49,#33,#18
	db #80,#02,#ce,#30,#80,#03,#ce,#18
	db #80,#02,#ce,#30,#80,#03,#ce,#18
	db #80,#02,#ce,#30,#80,#03,#ce,#18
	db #80,#02,#ce,#30,#80,#03,#ce,#18
	db #80,#02,#ce,#30,#80,#03,#ce,#18
	db #80,#02,#ce,#30,#80,#03,#ce,#18
	db #80,#02,#ce,#30,#80,#03,#ce,#18
	db #80,#02,#ce,#30,#80,#03,#c2,#6e
	db #80,#04,#87,#ce,#71,#89,#ce,#6f
	db #87,#d4,#6b,#83,#85,#83,#7f,#83
	db #ce,#6f,#87,#ce,#61,#79,#ce,#79
	db #75,#6f,#75,#6f,#75,#79,#22,#80
	db #01,#3b,#23,#23,#25,#23,#23,#25
	db #23,#3b,#23,#23,#25,#23,#23,#25
	db #23,#3b,#23,#23,#25,#23,#23,#25
	db #23,#3b,#23,#23,#25,#23,#23,#25
	db #18,#80,#02,#ce,#48,#80,#03,#ce
	db #18,#80,#02,#ce,#48,#80,#03,#ce
	db #18,#80,#02,#ce,#48,#80,#03,#ce
	db #18,#80,#02,#ce,#48,#80,#03,#ce
	db #18,#80,#02,#ce,#48,#80,#03,#ce
	db #18,#80,#02,#ce,#48,#80,#03,#ce
	db #18,#80,#02,#ce,#48,#80,#03,#ce
	db #18,#80,#02,#48,#80,#03,#ce,#49
	db #6a,#80,#04,#83,#ce,#7f,#ce,#79
	db #61,#ce,#7b,#7f,#7b,#79,#7b,#79
	db #75,#7b,#ce,#61,#63,#ce,#61,#63
	db #d0,#7b,#79,#75,#79,#7b,#79,#75
	db #79,#64,#80,#04,#65,#ce,#63,#ce
	db #63,#63,#ce,#61,#61,#ce,#5d,#5b
	db #ce,#6b,#ce,#65,#65,#ce,#63,#ce
	db #63,#63,#ce,#61,#d2,#63,#c2,#82
	db #80,#04,#83,#ce,#83,#ce,#83,#87
	db #ce,#8b,#83,#ce,#7d,#79,#d2,#83
	db #83,#ce,#83,#ce,#83,#87,#ce,#8b
	db #d2,#9b,#c2,#74,#80,#04,#75,#ce
	db #77,#ce,#77,#77,#ce,#79,#79,#ce
	db #75,#73,#d2,#75,#75,#ce,#77,#ce
	db #77,#77,#ce,#79,#d2,#7b,#c2,#64
	db #80,#04,#65,#ce,#63,#ce,#63,#63
	db #ce,#61,#61,#ce,#63,#65,#d2,#5f
	db #5f,#ce,#5f,#ce,#5d,#5f,#ce,#6b
	db #d2,#81,#c2,#82,#80,#04,#83,#ce
	db #83,#ce,#83,#87,#ce,#8b,#83,#ce
	db #7d,#79,#d2,#8b,#8b,#ce,#8b,#ce
	db #83,#8b,#ce,#91,#d2,#79,#c2,#74
	db #80,#04,#75,#ce,#77,#ce,#77,#77
	db #ce,#79,#79,#ce,#73,#6d,#d2,#6f
	db #6f,#ce,#71,#ce,#6f,#71,#ce,#6f
	db #d2,#8d,#c2,#60,#80,#04,#30,#80
	db #01,#ce,#68,#80,#04,#30,#80,#01
	db #ce,#6e,#80,#04,#30,#80,#01,#6a
	db #80,#04,#30,#80,#01,#ce,#64,#80
	db #04,#30,#80,#01,#ce,#5e,#80,#04
	db #30,#80,#01,#60,#80,#04,#30,#80
	db #01,#ce,#68,#80,#04,#30,#80,#01
	db #ce,#6e,#80,#04,#22,#80,#01,#72
	db #80,#04,#22,#80,#01,#ce,#6a,#80
	db #04,#22,#80,#01,#ce,#64,#80,#04
	db #30,#80,#01,#78,#80,#04,#79,#79
	db #79,#75,#75,#75,#73,#6b,#d0,#65
	db #d6,#79,#ce,#79,#79,#79,#7d,#79
	db #73,#d0,#6b,#c2,#30,#80,#02,#7c
	db #80,#04,#ce,#30,#80,#03,#30,#80
	db #02,#ce,#30,#80,#03,#ce,#30,#80
	db #02,#82,#80,#04,#ce,#48,#80,#03
	db #30,#80,#02,#ce,#48,#80,#03,#ce
	db #30,#80,#02,#72,#80,#04,#ce,#48
	db #80,#03,#30,#80,#02,#ce,#48,#80
	db #03,#ce,#30,#80,#02,#d0,#48,#80
	db #03,#30,#80,#02,#8a,#80,#04,#48
	db #80,#03,#c2,#6e,#80,#04,#ce,#75
	db #ce,#75,#ce,#75,#75,#73,#d0,#73
	db #d0,#79,#ce,#6f,#ce,#75,#ce,#75
	db #ce,#75,#75,#73,#d0,#73,#c2,#6e
	db #80,#04,#d0,#6f,#ce,#6f,#73,#75
	db #79,#d0,#79,#ce,#73,#73,#73,#6f
	db #6f,#6f,#6f,#6f,#6f,#73,#75,#79
	db #d0,#79,#ce,#73,#73,#73,#6e,#80
	db #04,#75,#ce,#6f,#ce,#6f,#73,#75
	db #79,#79,#ce,#79,#ce,#75,#73,#75
	db #79,#83,#ce,#81,#7d,#79,#ce,#73
	db #6b,#ce,#6b,#69,#6b,#83,#c2,#60
	db #80,#04,#ce,#65,#ce,#69,#ce,#6b
	db #ce,#6f,#ce,#73,#ce,#75,#ce,#79
	db #ce,#61,#ce,#65,#ce,#69,#ce,#6b
	db #ce,#6f,#ce,#73,#ce,#6b,#ce,#6f
	db #c2,#48,#80,#01,#e2,#31,#d2,#49
	db #e2,#31,#c2,#48,#80,#01,#e2,#31
	db #d2,#49,#ce,#45,#ce,#43,#ce,#3f
	db #ce,#3b,#ce,#39,#ce,#72,#80,#04
	db #79,#75,#7d,#80,#80,#04,#b3,#ce
	db #3a,#80,#05,#82,#80,#04,#48,#80
	db #05,#31,#ce,#86,#80,#04,#b3,#ce
	db #3a,#80,#05,#8c,#80,#04,#48,#80
	db #05,#31,#49,#3b,#b2,#80,#04,#ce
	db #3a,#80,#05,#43,#49,#47,#49,#78
	db #80,#04,#7d,#79,#30,#80,#05,#39
	db #3f,#ce,#57,#78,#80,#04,#79,#ce
	db #79,#ce,#7d,#79,#ce,#83,#d0,#81
	db #ce,#7d,#79,#ce,#83,#d0,#81,#ce
	db #7d,#79,#ce,#75,#d0,#69,#d0,#69
	db #c2,#30,#80,#02,#78,#80,#04,#ce
	db #30,#80,#03,#30,#80,#02,#74,#80
	db #04,#30,#80,#02,#30,#80,#03,#30
	db #80,#02,#8a,#80,#04,#91,#30,#80
	db #03,#30,#80,#02,#ce,#31,#30,#80
	db #03,#30,#80,#02,#90,#80,#04,#ce
	db #73,#30,#80,#02,#6e,#80,#04,#6b
	db #ce,#6f,#d0,#6f,#30,#80,#02,#d0
	db #60,#80,#03,#30,#80,#05,#a8,#80
	db #04,#ce,#30,#80,#05,#39,#ce,#3f
	db #ce,#31,#a8,#80,#04,#ce,#30,#80
	db #05,#39,#ce,#3f,#ce,#31,#a8,#80
	db #04,#ce,#30,#80,#05,#35,#ce,#39
	db #ce,#3b,#78,#80,#04,#ce,#75,#73
	db #ce,#6f,#c2,#74,#80,#04,#75,#ce
	db #75,#ce,#79,#75,#ce,#81,#d0,#7d
	db #ce,#79,#75,#ce,#81,#d0,#7d,#ce
	db #79,#75,#ce,#73,#81,#ce,#7d,#79
	db #ce,#75,#c2,#30,#80,#02,#86,#80
	db #04,#30,#80,#03,#82,#80,#04,#30
	db #80,#02,#80,#80,#04,#30,#80,#02
	db #30,#80,#03,#30,#80,#02,#d0,#82
	db #80,#04,#30,#80,#02,#80,#80,#04
	db #30,#80,#02,#30,#80,#03,#30,#80
	db #02,#30,#80,#03,#ce,#8c,#80,#04
	db #30,#80,#02,#86,#80,#04,#30,#80
	db #02,#30,#80,#03,#30,#80,#02,#30
	db #80,#03,#ce,#30,#80,#02,#30,#80
	db #03,#30,#80,#02,#30,#80,#03,#30
	db #80,#02,#82,#80,#04,#73,#d2,#6f
	db #d2,#81,#83,#81,#83,#81,#83,#81
	db #83,#d0,#81,#ce,#83,#81,#ce,#7d
	db #d2,#79,#c2,#80,#80,#04,#81,#ce
	db #83,#87,#ce,#8b,#ce,#8d,#7d,#81
	db #7d,#81,#7d,#81,#7d,#81,#d0,#7d
	db #ce,#83,#81,#ce,#79,#79,#ce,#7b
	db #7d,#ce,#81,#c2,#78,#80,#04,#d2
	db #7b,#d2,#7d,#d2,#81,#c2,#78,#80
	db #04,#83,#ce,#79,#83,#ce,#79,#83
	db #ce,#79,#83,#d8,#8b,#ce,#8b,#ce
	db #8b,#8b,#8b,#8b,#82,#80,#04,#8b
	db #ce,#83,#8b,#ce,#83,#8b,#ce,#83
	db #8b,#ce,#91,#93,#95,#99,#9b,#9b
	db #ce,#9b,#ce,#9b,#9b,#9b,#9b,#ff
	db #06,#05,#06,#05,#06,#05,#06,#05
	db #06,#05,#06,#05,#06,#05,#06,#ff
; #80db
; ld de,#2000
; call #0100
;
.init_music
;
	ld de,l2000
	jp real_init_music
;
.music_info
	db "First Step (2004)(Zona Neutra)()",0
	db "StArkos",0

	read "music_end.asm"
