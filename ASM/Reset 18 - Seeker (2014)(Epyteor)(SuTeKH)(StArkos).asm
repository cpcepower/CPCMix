; Music of Reset 18 - Seeker (2014)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 18/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RESET18S.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6000

	read "music_header.asm"

	jp l6872
	jp l600d
	jp l6856
.l600c equ $ + 3
.l600b equ $ + 2
	db #00,#60,#00,#00
;
.play_music
.l600d
;
	xor a
	ld (l600b),a
	ld (l683d),a
.l6015 equ $ + 1
	ld a,#00
.l6017 equ $ + 1
	cp #00
	jr z,l6021
	inc a
	ld (l6015),a
	jp l62b0
.l6021
	xor a
	ld (l6015),a
.l6025
	or a
	jp nc,l6107
	ld (l612f),a
	ld (l619a),a
	ld (l6205),a
	ld a,#b7
	ld (l6025),a
.l6038 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l606e
.l603e equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l606b
	ld b,a
	and #1f
	bit 4,a
	jr z,l604f
	or #e0
.l604f
	ld (l613c),a
	rl b
	rl b
	jr nc,l605d
	ld a,(hl)
	ld (l61a7),a
	inc hl
.l605d
	rl b
	jr nc,l6066
	ld a,(hl)
	ld (l6212),a
	inc hl
.l6066
	ld (l603e),hl
	jr l6071
.l606b
	ld (l603e),hl
.l606e
	ld (l6038),a
.l6072 equ $ + 1
.l6071
	ld a,#00
	sub #01
	jr c,l607e
	ld (l6072),a
.l607b equ $ + 1
	ld a,#00
	jr l6099
.l607f equ $ + 1
.l607e
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l608c
	ld (l607f),hl
	jr l6099
.l608c
	ld (l607b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l607f),hl
	ld (l6072),a
	ld a,b
.l6099
	ld (l6270),a
.l609d equ $ + 1
	ld hl,#0000
	ld de,l6135
	ldi
	ldi
	ld de,l61a0
	ldi
	ldi
	ld de,l620b
	ldi
	ldi
	ld (l609d),hl
.l60b8 equ $ + 1
	ld a,#00
	or a
	jr nz,l60ca
.l60bd equ $ + 1
	ld a,#00
	sub #01
	jr c,l60d8
	ld (l60bd),a
.l60c6 equ $ + 1
	ld hl,#0000
	jr l6110
.l60cb equ $ + 1
.l60ca
	ld a,#00
	sub #01
	jr c,l60d8
	ld (l60cb),a
	ld hl,(l60d9)
	jr l60fd
.l60d9 equ $ + 1
.l60d8
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l60f5
	ld (l60bd),a
	xor a
	ld (l60b8),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l60d9),hl
	ex de,hl
	ld (l60c6),hl
	jr l6110
.l60f5
	ld (l60cb),a
	ld a,#01
	ld (l60b8),a
.l60fd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l60d9),hl
	ex de,hl
	jr l6110
.l6108 equ $ + 1
.l6107
	ld a,#00
	sub #01
	jr nc,l612b
.l610e equ $ + 1
	ld hl,#0000
.l6110
	ld a,(hl)
	inc hl
	srl a
	jr c,l6128
	srl a
	jr c,l611f
	ld (l6017),a
	jr l6127
.l611f
	ld (l600b),a
.l6123 equ $ + 1
	ld a,#01
	ld (l600c),a
.l6127
	xor a
.l6128
	ld (l610e),hl
.l612b
	ld (l6108),a
.l612f equ $ + 1
	ld a,#00
	sub #01
	jr nc,l6196
.l6135 equ $ + 1
	ld hl,#0000
.l6138 equ $ + 1
	ld bc,#0100
.l613c equ $ + 2
.l613b equ $ + 1
	ld de,#0000
.l613f equ $ + 2
	ld lx,#00
	call l63af
	ld a,lx
	ld (l613f),a
	ld (l62ba),hl
	exx
	ld (l6135),hl
	ld a,c
	ld (l6138),a
	ld (l62b4),a
	xor a
	or hy
	jr nz,l6194
	ld (l62d7),a
	ld d,a
	ld a,e
	ld (l613b),a
	ld l,d
	ld h,l
	ld (l62b7),hl
.l6169 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l62e8
	ldi
	ldi
	ld de,l62e0
	ldi
	ldi
	ld de,l62d9
	ldi
	ld de,l62ea
	ldi
	ld a,(hl)
	inc hl
	ld (l62c9),hl
	ld hl,l683d
	or (hl)
	ld (hl),a
.l6194
	ld a,ly
.l6196
	ld (l612f),a
.l619a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l6201
.l61a0 equ $ + 1
	ld hl,#0000
.l61a3 equ $ + 1
	ld bc,#0200
.l61a7 equ $ + 2
.l61a6 equ $ + 1
	ld de,#0000
.l61aa equ $ + 2
	ld lx,#00
	call l63af
	ld a,lx
	ld (l61aa),a
	ld (l630c),hl
	exx
	ld (l61a0),hl
	ld a,c
	ld (l61a3),a
	ld (l6306),a
	xor a
	or hy
	jr nz,l61ff
	ld (l6329),a
	ld d,a
	ld a,e
	ld (l61a6),a
	ld l,d
	ld h,l
	ld (l6309),hl
.l61d4 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l633a
	ldi
	ldi
	ld de,l6332
	ldi
	ldi
	ld de,l632b
	ldi
	ld de,l633c
	ldi
	ld a,(hl)
	inc hl
	ld (l631b),hl
	ld hl,l683d
	or (hl)
	ld (hl),a
.l61ff
	ld a,ly
.l6201
	ld (l619a),a
.l6205 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l626c
.l620b equ $ + 1
	ld hl,#0000
.l620e equ $ + 1
	ld bc,#0300
.l6212 equ $ + 2
.l6211 equ $ + 1
	ld de,#0000
.l6215 equ $ + 2
	ld lx,#00
	call l63af
	ld a,lx
	ld (l6215),a
	ld (l635e),hl
	exx
	ld (l620b),hl
	ld a,c
	ld (l620e),a
	ld (l6358),a
	xor a
	or hy
	jr nz,l626a
	ld (l637b),a
	ld d,a
	ld a,e
	ld (l6211),a
	ld l,d
	ld h,l
	ld (l635b),hl
.l623f equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l638c
	ldi
	ldi
	ld de,l6384
	ldi
	ldi
	ld de,l637d
	ldi
	ld de,l638e
	ldi
	ld a,(hl)
	inc hl
	ld (l636d),hl
	ld hl,l683d
	or (hl)
	ld (hl),a
.l626a
	ld a,ly
.l626c
	ld (l6205),a
.l6270 equ $ + 1
	ld a,#00
	sub #01
	jr c,l627a
	ld (l6270),a
	jr l62b0
.l627a
	ld a,#37
	ld (l6025),a
	ld hl,(l609d)
.l6283 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l62b0
	ld (l6038),a
	ld (l6072),a
	ld (l6108),a
.l6294 equ $ + 1
	ld hl,#0000
	ld (l603e),hl
.l629a equ $ + 1
	ld hl,#0000
	ld (l607f),hl
.l62a0 equ $ + 1
	ld hl,#0000
	ld (l609d),hl
.l62a6 equ $ + 1
	ld hl,#0000
	ld (l60d9),hl
.l62ac equ $ + 1
	ld a,#00
	ld (l60b8),a
.l62b0
	ld hl,l683d
.l62b4 equ $ + 1
	ld d,#00
	exx
.l62b7 equ $ + 1
	ld hl,#0000
.l62ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l62b7),hl
	ld (l64ea),hl
	ld a,(l613f)
	ld lx,a
.l62c9 equ $ + 1
	ld hl,#0000
	ld iy,l66d8
	ld a,(l62d7)
	call l6444
	ex de,hl
.l62d7 equ $ + 1
	ld a,#00
.l62d9 equ $ + 1
	cp #00
	jr z,l62df
	inc a
	jr l62fc
.l62e0 equ $ + 1
.l62df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l62f8
.l62e8 equ $ + 1
	ld de,#0000
.l62ea
	or a
	jr c,l62f8
.l62ee equ $ + 1
	ld hl,#0000
	ld (l62e0),hl
	dec a
	ld (l62d9),a
	inc a
.l62f8
	ld (l62c9),de
.l62fc
	ld (l62d7),a
	ld a,hx
	ld (l63ab),a
	exx
.l6306 equ $ + 1
	ld d,#00
	exx
.l6309 equ $ + 1
	ld hl,#0000
.l630c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l6309),hl
	ld (l64ea),hl
	ld a,(l61aa)
	ld lx,a
.l631b equ $ + 1
	ld hl,#0000
	ld iy,l6729
	ld a,(l6329)
	call l6444
	ex de,hl
.l6329 equ $ + 1
	ld a,#00
.l632b equ $ + 1
	cp #00
	jr z,l6331
	inc a
	jr l634e
.l6332 equ $ + 1
.l6331
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l634a
.l633a equ $ + 1
	ld de,#0000
.l633c
	or a
	jr c,l634a
.l6340 equ $ + 1
	ld hl,#0000
	ld (l6332),hl
	dec a
	ld (l632b),a
	inc a
.l634a
	ld (l631b),de
.l634e
	ld (l6329),a
	ld a,hx
	ld (l63a8),a
	exx
.l6358 equ $ + 1
	ld d,#00
	exx
.l635b equ $ + 1
	ld hl,#0000
.l635e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l635b),hl
	ld (l64ea),hl
	ld a,(l6215)
	ld lx,a
.l636d equ $ + 1
	ld hl,#0000
	ld iy,l677a
	ld a,(l637b)
	call l6444
	ex de,hl
.l637b equ $ + 1
	ld a,#00
.l637d equ $ + 1
	cp #00
	jr z,l6383
	inc a
	jr l63a0
.l6384 equ $ + 1
.l6383
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l639c
.l638c equ $ + 1
	ld de,#0000
.l638e
	or a
	jr c,l639c
.l6392 equ $ + 1
	ld hl,#0000
	ld (l6384),hl
	dec a
	ld (l637d),a
	inc a
.l639c
	ld (l636d),de
.l63a0
	ld (l637b),a
	ld a,hx
	sla a
.l63a8 equ $ + 1
	or #00
	rla
.l63ab equ $ + 1
	or #00
	jp l66cd
.l63af
	ld a,(hl)
	inc hl
	srl a
	jr c,l63e8
	cp #60
	jr nc,l63f0
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l63c8
	and #0f
	ld c,a
.l63c8
	rl b
	jr nc,l63ce
	ld e,(hl)
	inc hl
.l63ce
	rl b
	jr nc,l63e0
.l63d2
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l63dc
	dec h
.l63dc
	ld ly,#00
	ret
.l63e0
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l63e8
	ld hy,#00
	add d
	ld lx,a
	jr l63e0
.l63f0
	ld hy,#01
	sub #60
	jr z,l6411
	dec a
	jr z,l6428
	dec a
	jr z,l641a
	dec a
	jr z,l63d2
	dec a
	jr z,l6424
	dec a
	jr z,l6439
	dec a
	jr z,l6430
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l6411
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l641a
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l6424
	ld c,(hl)
	inc hl
	jr l63d2
.l6428
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l6430
	ld a,(hl)
	inc hl
	ld (l600b),a
	ld a,b
	ld (l600c),a
.l6439
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l6444
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l64fa
	bit 4,e
	jr z,l64ac
	ld a,(hl)
	bit 6,a
	jr z,l6479
	ld d,#08
	inc hl
	and #1f
	jr z,l6460
	ld (l67cb),a
	res 3,d
.l6460
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l6469
	xor a
.l6469
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l6479
	ld (l67cb),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l6495
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l648e
	xor a
.l648e
	ld (iy+#36),a
	ld hx,d
	jr l64bf
.l6495
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l649e
	xor a
.l649e
	ld (iy+#36),a
.l64a1
	ld hx,d
	ret
.l64a4
	ld (iy+#36),#00
	ld d,#09
	jr l64a1
.l64ac
	ld d,#08
	ld a,e
	and #0f
	jr z,l64a4
	exx
	sub d
	exx
	jr nc,l64b9
	xor a
.l64b9
	ld (iy+#36),a
	ld hx,#08
.l64bf
	bit 5,e
	jr z,l64c7
	ld a,(hl)
	inc hl
	jr l64c8
.l64c7
	xor a
.l64c8
	bit 6,e
	jr z,l64d2
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l64d5
.l64d2
	ld de,#0000
.l64d5
	add lx
	cp #60
	jr c,l64dd
	ld a,#5f
.l64dd
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l660d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l64ea equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l64fa
	or a
	jr nz,l6504
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l6504
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
	ld (l6836),a
	bit 3,e
	jr z,l6526
	ld a,(hl)
	inc hl
	ld (l67cb),a
	res 3,d
	jr l6526
.l6526
	ld hx,d
	xor a
	bit 7,b
	jr z,l6538
	bit 6,b
	jr z,l6533
	ld a,(hl)
	inc hl
.l6533
	ld (l65e7),a
	ld a,#01
.l6538
	ld (l6580),a
	ld a,b
	rra
	and #0e
	ld (l6591),a
	bit 4,e
	jp nz,l65f2
	bit 1,e
	jr z,l654f
	ld a,(hl)
	inc hl
	jr l6550
.l654f
	xor a
.l6550
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l655d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l6560
.l655d
	ld de,#0000
.l6560
	add lx
	cp #60
	jr c,l6568
	ld a,#5f
.l6568
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l660d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l64ea)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l6580 equ $ + 1
	ld a,#00
	or a
	jr nz,l6590
	ex af,af'
	bit 5,a
	jr nz,l65fb
.l6589
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l6591 equ $ + 1
.l6590
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l659b),a
	ld a,c
.l659b equ $ + 1
	jr l659c
.l659c
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
	jr nc,l65b5
	inc bc
.l65b5
	ld a,c
	ld (l6800),a
	ld a,b
	ld (l681b),a
	ld a,(l6580)
	or a
	jr z,l65f0
	ld a,(l6591)
	ld e,a
	srl a
	add e
	ld (l65cf),a
	ld a,b
.l65cf equ $ + 1
	jr l65d0
.l65d0
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
.l65e7 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l65f0
	pop hl
	ret
.l65f2
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l6589
.l65fb
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l6800),a
	inc hl
	ld a,(hl)
	ld (l681b),a
	inc hl
	ret
.l660d
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
.l66cd
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l66d8 equ $ + 1
	ld a,#00
.l66da equ $ + 1
	cp #00
	jr z,l66f2
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
	ld (l66da),a
	exx
.l66f3 equ $ + 1
.l66f2
	ld a,#00
.l66f5 equ $ + 1
	cp #00
	jr z,l670d
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
	ld (l66f5),a
	exx
.l670e equ $ + 1
.l670d
	ld a,#00
.l6710 equ $ + 1
	cp #00
	jr z,l6728
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
	ld (l6710),a
	exx
.l6729 equ $ + 1
.l6728
	ld a,#00
.l672b equ $ + 1
	cp #00
	jr z,l6743
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
	ld (l672b),a
	exx
.l6744 equ $ + 1
.l6743
	ld a,#00
.l6746 equ $ + 1
	cp #00
	jr z,l675e
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
	ld (l6746),a
	exx
.l675f equ $ + 1
.l675e
	ld a,#00
.l6761 equ $ + 1
	cp #00
	jr z,l6779
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
	ld (l6761),a
	exx
.l677a equ $ + 1
.l6779
	ld a,#00
.l677c equ $ + 1
	cp #00
	jr z,l6794
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
	ld (l677c),a
	exx
.l6795 equ $ + 1
.l6794
	ld a,#00
.l6797 equ $ + 1
	cp #00
	jr z,l67af
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
	ld (l6797),a
	exx
.l67b0 equ $ + 1
.l67af
	ld a,#00
.l67b2 equ $ + 1
	cp #00
	jr z,l67ca
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
	ld (l67b2),a
	exx
.l67cb equ $ + 1
.l67ca
	ld a,#00
.l67cd equ $ + 1
	cp #00
	jr z,l67e5
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
	ld (l67cd),a
	exx
.l67e5
	ld a,h
.l67e7 equ $ + 1
	cp #c0
	jr z,l67ff
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
	ld (l67e7),a
	exx
.l6800 equ $ + 1
.l67ff
	ld a,#00
.l6802 equ $ + 1
	cp #00
	jr z,l681a
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
	ld (l6802),a
	exx
.l681b equ $ + 1
.l681a
	ld a,#00
.l681d equ $ + 1
	cp #00
	jr z,l6835
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
	ld (l681d),a
	exx
.l6836 equ $ + 1
.l6835
	ld a,#00
.l6838 equ $ + 1
	cp #ff
	jr nz,l6841
	ld h,a
.l683d equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l6841
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
	ld (l6838),a
	ret
;
.stop_music
.l6856
;
	xor a
	ld (l670e),a
	ld (l675f),a
	ld (l67b0),a
	dec a
	ld (l6710),a
	ld (l6761),a
	ld (l67b2),a
	ld (l67e7),a
	ld a,#3f
	jp l66cd
;
.real_init_music
.l6872
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l6123),a
	ld de,#0003
	add hl,de
	ld de,l607f
	ldi
	ldi
	ld de,l609d
	ldi
	ldi
	ld de,l60d9
	ldi
	ldi
	ld de,l6169
	ldi
	ldi
	ld de,l6294
	ldi
	ldi
	ld de,l629a
	ldi
	ldi
	ld de,l62a0
	ldi
	ldi
	ld de,l62a6
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l6017),a
	ld (l6015),a
	ld (l603e),hl
	ld hl,(l60d9)
	ld (l6283),hl
	ld a,(hl)
	and #01
	ld (l60b8),a
	ld hl,(l62a6)
	ld a,(hl)
	and #01
	ld (l62ac),a
	ld hl,(l6169)
	ld (l61d4),hl
	ld (l623f),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l62c9),hl
	ld (l631b),hl
	ld (l636d),hl
	ld (l62e8),hl
	ld (l633a),hl
	ld (l638c),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l62ee),de
	ld (l6340),de
	ld (l6392),de
	ld (l62e0),de
	ld (l6332),de
	ld (l6384),de
	ld a,#37
	ld (l6025),a
	ld hl,l692e
.l691e
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l6925
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l6925
	jr l691e
.l692e
	jr l6930
.l6930
	dw l66d8,l66f3,l6729,l6744
	dw l677a,l6795,l67cb,l670e
	dw l675f,l67b0,l6800,l681b
	dw l6836,l6038,l6072,l60bd
	dw l60cb,l6108,l62d7,l6329
	dw l637b,l6138,l61a3,l620e
	dw #ff11,l66da,l66f5,l672b
	dw l6746,l677c,l6797,l67cd
	dw l67e7,l6710,l6761,l67b2
	dw l6802,l681d,l6838,l62d9
	dw l632b,l637d,#b703,l62ea
	dw l633c,l638e,#0000

	ds #6a00-$,#00

.l6a00
	db #53,#4b,#31,#30,#00,#6a,#01,#32
	db #00,#21,#6a,#24,#6a,#02,#6b,#0b
	db #6b,#1e,#6a,#23,#6a,#fc,#6a,#08
	db #6b,#03,#c0,#00,#00,#45,#c0,#00
	db #00,#7f,#23,#00,#f9,#6b,#31,#6c
	db #35,#6c,#6a,#6c,#9e,#6c,#a5,#6c
	db #da,#6c,#31,#6c,#42,#6d,#b1,#6d
	db #9e,#6c,#19,#6e,#da,#6c,#31,#6c
	db #42,#6d,#b1,#6d,#9e,#6c,#19,#6e
	db #da,#6c,#31,#6c,#82,#6e,#b1,#6d
	db #9e,#6c,#c9,#6e,#0e,#6f,#8f,#6f
	db #82,#6e,#07,#70,#88,#70,#c9,#6e
	db #f2,#70,#8f,#6f,#82,#6e,#7a,#71
	db #88,#70,#c9,#6e,#f2,#70,#8f,#6f
	db #03,#72,#7a,#71,#88,#70,#84,#72
	db #f2,#70,#8f,#6f,#03,#72,#7a,#71
	db #88,#70,#84,#72,#f2,#70,#05,#73
	db #85,#73,#7a,#71,#fb,#73,#71,#74
	db #f2,#70,#05,#73,#85,#73,#7a,#71
	db #fb,#73,#e8,#74,#f2,#70,#8f,#6f
	db #03,#72,#7a,#71,#88,#70,#84,#72
	db #f2,#70,#8f,#6f,#03,#72,#53,#75
	db #d6,#75,#84,#72,#40,#76,#31,#6c
	db #03,#72,#c1,#76,#9e,#6c,#84,#72
	db #40,#76,#31,#6c,#03,#72,#c1,#76
	db #9e,#6c,#84,#72,#f2,#70,#8f,#6f
	db #82,#6e,#7a,#71,#88,#70,#c9,#6e
	db #f2,#70,#8f,#6f,#82,#6e,#7a,#71
	db #88,#70,#c9,#6e,#42,#77,#ca,#77
	db #46,#78,#42,#77,#ca,#77,#46,#78
	db #af,#78,#37,#79,#ad,#79,#18,#7a
	db #9b,#7a,#07,#7b,#74,#7b,#74,#7b
	db #74,#7b,#fe,#75,#7b,#ba,#75,#7b
	db #00,#75,#7b,#27,#6b,#31,#6b,#3d
	db #6b,#49,#6b,#51,#6b,#6a,#6b,#76
	db #6b,#82,#6b,#8e,#6b,#9a,#6b,#a6
	db #6b,#af,#6b,#c6,#6b,#e3,#6b,#2e
	db #6b,#31,#6b,#ff,#37,#00,#00,#00
	db #00,#3c,#6b,#3d,#6b,#00,#37,#00
	db #0f,#0e,#0d,#0c,#0b,#48,#6b,#49
	db #6b,#00,#37,#00,#0f,#0f,#0f,#0f
	db #0b,#50,#6b,#51,#6b,#00,#37,#00
	db #0f,#58,#6b,#6a,#6b,#00,#37,#00
	db #4f,#ff,#ff,#4f,#ff,#ff,#4f,#ff
	db #ff,#4f,#01,#00,#4f,#01,#00,#4f
	db #01,#00,#71,#6b,#76,#6b,#00,#37
	db #00,#0d,#2d,#03,#2d,#07,#7d,#6b
	db #82,#6b,#00,#37,#00,#0d,#2d,#03
	db #2d,#05,#89,#6b,#8e,#6b,#00,#37
	db #00,#0d,#2d,#03,#2d,#08,#95,#6b
	db #9a,#6b,#00,#37,#00,#0d,#2d,#04
	db #2d,#07,#a1,#6b,#a6,#6b,#00,#37
	db #00,#0d,#2d,#04,#2d,#08,#ad,#6b
	db #af,#6b,#00,#37,#00,#81,#16,#2e
	db #6b,#c6,#6b,#00,#b7,#00,#3f,#35
	db #0c,#2f,#08,#2e,#04,#0d,#2b,#fc
	db #2a,#f8,#29,#f4,#28,#f0,#2e,#6b
	db #e3,#6b,#00,#b7,#00,#3f,#25,#0c
	db #3f,#21,#0d,#3e,#22,#10,#1e,#23
	db #3b,#25,#0c,#3b,#21,#0d,#3a,#22
	db #10,#1a,#23,#f6,#6b,#f9,#6b,#00
	db #37,#00,#4f,#ff,#ff,#4e,#ff,#ff
	db #4d,#ff,#ff,#4c,#ff,#ff,#4b,#ff
	db #ff,#64,#81,#01,#d2,#60,#80,#02
	db #d2,#72,#80,#01,#d2,#65,#d2,#56
	db #80,#02,#d2,#72,#80,#01,#d2,#65
	db #d2,#4c,#80,#02,#d2,#64,#80,#01
	db #d2,#60,#80,#02,#d2,#72,#80,#01
	db #d2,#65,#d2,#56,#80,#02,#d2,#72
	db #80,#01,#d2,#65,#d2,#60,#80,#02
	db #c2,#34,#81,#02,#c2,#d0,#72,#81
	db #01,#d2,#65,#d2,#5a,#80,#02,#d2
	db #72,#80,#01,#d2,#65,#d2,#52,#80
	db #02,#d2,#72,#80,#01,#d2,#5b,#d2
	db #73,#d2,#65,#d2,#5a,#80,#02,#d2
	db #72,#80,#01,#d2,#65,#d2,#60,#80
	db #02,#d2,#72,#80,#01,#d2,#64,#80
	db #02,#c2,#64,#81,#01,#d2,#60,#80
	db #02,#d2,#74,#80,#01,#d2,#65,#d2
	db #52,#80,#02,#d2,#74,#80,#01,#d2
	db #65,#d2,#64,#80,#02,#d2,#69,#d2
	db #5a,#80,#01,#d2,#51,#d2,#64,#80
	db #02,#d2,#5a,#80,#01,#d2,#51,#d2
	db #68,#80,#02,#d2,#65,#c2,#44,#81
	db #02,#c0,#1e,#43,#c2,#d0,#74,#81
	db #01,#d2,#65,#d2,#5c,#80,#02,#d2
	db #74,#80,#01,#d2,#65,#d2,#5c,#80
	db #02,#d2,#74,#80,#01,#d2,#69,#d2
	db #51,#d2,#62,#80,#02,#d2,#5a,#80
	db #01,#d2,#51,#d2,#68,#80,#02,#d2
	db #5a,#80,#01,#d2,#51,#d2,#68,#80
	db #02,#c2,#64,#81,#01,#ce,#73,#ce
	db #60,#80,#02,#ce,#64,#80,#01,#ce
	db #73,#ce,#5a,#80,#02,#ce,#64,#80
	db #01,#ce,#73,#ce,#56,#80,#02,#ce
	db #64,#80,#01,#ce,#73,#ce,#52,#80
	db #02,#ce,#64,#80,#01,#ce,#73,#ce
	db #4c,#80,#02,#ce,#5a,#80,#01,#ce
	db #65,#ce,#73,#ce,#60,#80,#02,#ce
	db #64,#80,#01,#ce,#73,#ce,#5a,#80
	db #02,#ce,#64,#80,#01,#ce,#73,#ce
	db #56,#80,#02,#ce,#64,#80,#01,#ce
	db #73,#ce,#60,#80,#02,#ce,#64,#80
	db #01,#ce,#73,#ce,#60,#80,#02,#ce
	db #65,#c2,#80,#c1,#03,#fc,#83,#82
	db #80,#04,#ce,#c4,#01,#ce,#c4,#02
	db #ce,#80,#81,#03,#c4,#04,#82,#07
	db #ce,#7a,#41,#fc,#7d,#7c,#80,#04
	db #ce,#c4,#01,#ce,#c4,#02,#ce,#c4
	db #03,#ce,#c4,#04,#ce,#c4,#05,#ce
	db #c4,#06,#ce,#7c,#81,#03,#c4,#03
	db #80,#01,#7c,#07,#80,#41,#fc,#83
	db #81,#ce,#82,#07,#ce,#84,#41,#fe
	db #87,#80,#07,#ce,#82,#01,#86,#09
	db #80,#01,#ce,#83,#c4,#04,#7e,#41
	db #fd,#81,#7d,#80,#09,#ce,#7d,#70
	db #41,#fb,#73,#72,#80,#04,#ce,#c4
	db #01,#ce,#c4,#02,#ce,#7c,#81,#03
	db #81,#64,#81,#01,#ce,#75,#ce,#60
	db #80,#02,#ce,#64,#80,#01,#ce,#75
	db #ce,#5c,#80,#02,#ce,#64,#80,#01
	db #ce,#75,#ce,#52,#80,#02,#ce,#64
	db #80,#01,#ce,#75,#ce,#5c,#80,#02
	db #ce,#64,#80,#01,#ce,#75,#ce,#64
	db #80,#02,#ce,#69,#ce,#69,#ce,#50
	db #80,#01,#ce,#5b,#ce,#62,#80,#02
	db #ce,#50,#80,#01,#ce,#5b,#ce,#64
	db #80,#02,#ce,#50,#80,#01,#ce,#5b
	db #ce,#68,#80,#02,#ce,#50,#80,#01
	db #ce,#5b,#ce,#68,#80,#02,#ce,#50
	db #80,#01,#ce,#64,#80,#02,#ce,#69
	db #c2,#80,#c1,#03,#fc,#83,#82,#80
	db #04,#ce,#c4,#01,#ce,#c4,#02,#ce
	db #80,#81,#03,#c4,#04,#83,#ce,#7a
	db #41,#fc,#7d,#7c,#80,#04,#ce,#c4
	db #01,#ce,#c4,#02,#ce,#c4,#03,#ce
	db #c4,#04,#ce,#c4,#05,#ce,#c4,#06
	db #ce,#7c,#81,#03,#c4,#04,#80,#01
	db #7c,#07,#7e,#41,#fd,#81,#73,#ce
	db #80,#09,#ce,#c4,#03,#ce,#72,#09
	db #ce,#80,#0b,#ce,#80,#01,#c4,#02
	db #8a,#01,#87,#8b,#ce,#c4,#04,#ce
	db #86,#01,#ce,#c4,#04,#ce,#82,#01
	db #ce,#c4,#04,#ce,#80,#01,#ce,#c4
	db #04,#c2,#7c,#81,#05,#7c,#07,#d0
	db #7c,#01,#ce,#7c,#07,#d2,#7c,#81
	db #06,#7c,#07,#d0,#7c,#01,#ce,#7c
	db #07,#ce,#7c,#81,#07,#7c,#07,#7c
	db #81,#05,#ce,#7c,#07,#de,#7c,#01
	db #7c,#07,#d0,#7c,#01,#ce,#7c,#07
	db #d2,#7c,#81,#06,#7c,#07,#d0,#7c
	db #01,#ce,#7c,#07,#ce,#7c,#81,#07
	db #7c,#07,#7c,#81,#05,#ce,#7c,#07
	db #c2,#74,#81,#08,#74,#07,#d0,#74
	db #01,#ce,#74,#07,#d2,#74,#01,#74
	db #07,#d0,#74,#01,#ce,#74,#07,#ce
	db #74,#01,#74,#07,#74,#01,#ce,#74
	db #07,#de,#72,#01,#72,#07,#d0,#72
	db #01,#ce,#72,#07,#d2,#72,#81,#09
	db #72,#07,#d0,#72,#81,#08,#ce,#72
	db #07,#ce,#72,#81,#09,#72,#07,#72
	db #81,#08,#ce,#72,#07,#c2,#64,#81
	db #01,#64,#09,#72,#01,#64,#09,#60
	db #01,#72,#09,#64,#01,#60,#09,#72
	db #01,#64,#09,#5a,#01,#72,#09,#64
	db #01,#5a,#09,#72,#01,#64,#09,#56
	db #01,#72,#09,#64,#01,#56,#09,#72
	db #01,#64,#09,#52,#01,#72,#09,#64
	db #01,#52,#09,#72,#01,#64,#09,#4c
	db #01,#72,#09,#5a,#01,#4c,#09,#64
	db #01,#5a,#09,#72,#01,#64,#09,#60
	db #01,#72,#09,#64,#01,#60,#09,#72
	db #01,#64,#09,#5a,#01,#72,#09,#64
	db #01,#5a,#09,#72,#01,#64,#09,#56
	db #01,#72,#09,#64,#01,#56,#09,#72
	db #01,#64,#09,#60,#01,#72,#09,#64
	db #01,#60,#09,#72,#01,#64,#09,#60
	db #01,#72,#09,#64,#01,#60,#09,#34
	db #81,#02,#ce,#64,#80,#0a,#ce,#30
	db #80,#02,#ce,#4c,#80,#0a,#ca,#62
	db #80,#0a,#65,#34,#80,#02,#ce,#5e
	db #80,#0a,#61,#65,#ce,#34,#80,#02
	db #ce,#64,#80,#0a,#ce,#30,#80,#02
	db #ce,#4c,#80,#0a,#ca,#64,#80,#0a
	db #ce,#34,#80,#02,#ce,#5e,#80,#0a
	db #61,#65,#ce,#34,#80,#02,#ce,#64
	db #80,#0a,#ce,#30,#80,#02,#ce,#4c
	db #80,#0a,#ca,#62,#80,#0a,#65,#34
	db #80,#02,#ce,#5e,#80,#0a,#61,#65
	db #ce,#34,#80,#02,#ce,#64,#80,#0a
	db #ce,#30,#80,#02,#ce,#4c,#80,#0a
	db #ca,#64,#80,#0a,#ce,#34,#80,#02
	db #ce,#5e,#80,#0a,#61,#65,#c2,#64
	db #81,#01,#64,#09,#74,#01,#64,#09
	db #60,#01,#74,#09,#64,#01,#60,#09
	db #74,#01,#64,#09,#5c,#01,#74,#09
	db #64,#01,#5c,#09,#74,#01,#64,#09
	db #52,#01,#74,#09,#64,#01,#6a,#09
	db #74,#01,#64,#09,#5c,#01,#74,#09
	db #64,#01,#5c,#09,#74,#01,#64,#09
	db #64,#01,#74,#09,#68,#01,#64,#09
	db #68,#01,#6a,#09,#50,#01,#68,#09
	db #5a,#01,#50,#09,#62,#01,#5e,#09
	db #50,#01,#62,#09,#5a,#01,#68,#09
	db #64,#01,#5a,#09,#50,#01,#64,#09
	db #5a,#01,#50,#09,#68,#01,#5a,#09
	db #50,#01,#68,#09,#5a,#01,#50,#09
	db #68,#01,#5a,#09,#50,#01,#68,#09
	db #64,#01,#50,#09,#68,#01,#64,#09
	db #44,#81,#02,#ce,#5c,#80,#0a,#ce
	db #4c,#80,#02,#ce,#45,#ce,#68,#80
	db #0a,#6b,#44,#80,#02,#ce,#62,#80
	db #0a,#65,#5d,#ce,#44,#80,#02,#ce
	db #5c,#80,#0a,#ce,#4c,#80,#02,#ce
	db #45,#ce,#6a,#80,#0a,#ce,#44,#80
	db #02,#ce,#64,#80,#0a,#ce,#5d,#ce
	db #42,#80,#02,#ce,#5a,#80,#0a,#ce
	db #4a,#80,#02,#ce,#43,#ce,#68,#80
	db #0a,#ce,#5d,#ce,#5b,#ce,#69,#ce
	db #42,#80,#02,#ce,#5a,#80,#0a,#ce
	db #4a,#80,#02,#ce,#43,#ce,#68,#80
	db #0a,#ce,#6b,#ca,#50,#80,#0a,#ce
	db #53,#ca,#30,#81,#0b,#ce,#72,#81
	db #01,#64,#09,#60,#01,#72,#09,#64
	db #01,#60,#09,#48,#81,#0c,#ce,#5a
	db #81,#01,#72,#09,#64,#01,#5a,#09
	db #72,#01,#64,#09,#30,#81,#0b,#ce
	db #64,#81,#01,#56,#09,#72,#01,#64
	db #09,#52,#01,#72,#09,#48,#81,#0c
	db #ce,#72,#81,#01,#64,#09,#4c,#01
	db #72,#09,#5a,#01,#4c,#09,#30,#81
	db #0b,#ce,#72,#81,#01,#64,#09,#60
	db #01,#72,#09,#64,#01,#60,#09,#48
	db #81,#0c,#ce,#5a,#81,#01,#72,#09
	db #64,#01,#5a,#09,#72,#01,#64,#09
	db #30,#81,#0b,#ce,#64,#81,#01,#56
	db #09,#72,#01,#64,#09,#60,#01,#72
	db #09,#30,#81,#0c,#ce,#72,#81,#01
	db #64,#09,#60,#01,#72,#09,#30,#81
	db #0c,#c2,#30,#81,#0b,#ce,#74,#81
	db #01,#64,#09,#60,#01,#74,#09,#64
	db #01,#60,#09,#48,#81,#0c,#ce,#5c
	db #81,#01,#74,#09,#64,#01,#5c,#09
	db #74,#01,#64,#09,#30,#81,#0b,#ce
	db #64,#81,#01,#6a,#09,#74,#01,#64
	db #09,#5c,#01,#74,#09,#48,#81,#0c
	db #ce,#74,#81,#01,#64,#09,#64,#01
	db #74,#09,#68,#01,#64,#09,#30,#81
	db #0b,#ce,#50,#81,#01,#68,#09,#5a
	db #01,#50,#09,#62,#01,#5e,#09,#48
	db #81,#0c,#ce,#5a,#81,#01,#68,#09
	db #64,#01,#5a,#09,#50,#01,#64,#09
	db #30,#81,#0b,#ce,#68,#81,#01,#5a
	db #09,#50,#01,#68,#09,#5a,#01,#50
	db #09,#48,#81,#0c,#ce,#50,#81,#01
	db #48,#89,#0c,#48,#01,#48,#09,#48
	db #01,#48,#09,#7c,#81,#0d,#7c,#09
	db #64,#01,#7c,#09,#80,#01,#64,#09
	db #82,#01,#80,#09,#7c,#01,#82,#09
	db #64,#01,#7c,#09,#82,#01,#64,#09
	db #86,#01,#82,#09,#7c,#01,#86,#09
	db #64,#01,#7c,#09,#86,#01,#64,#09
	db #8a,#01,#86,#09,#82,#01,#8a,#09
	db #86,#01,#82,#09,#80,#01,#86,#09
	db #82,#01,#80,#09,#7c,#01,#7c,#09
	db #64,#01,#7c,#09,#80,#01,#64,#09
	db #82,#01,#80,#09,#7c,#01,#82,#09
	db #64,#01,#7c,#09,#82,#01,#64,#09
	db #86,#01,#82,#09,#7c,#01,#86,#09
	db #64,#01,#7c,#09,#86,#01,#64,#09
	db #8a,#01,#86,#09,#82,#01,#8a,#09
	db #86,#01,#82,#09,#80,#01,#86,#09
	db #82,#01,#80,#09,#7c,#81,#0d,#7c
	db #09,#64,#01,#7c,#09,#80,#01,#64
	db #09,#82,#01,#80,#09,#7c,#01,#82
	db #09,#64,#01,#7c,#09,#82,#01,#64
	db #09,#86,#01,#82,#09,#7c,#01,#86
	db #09,#64,#01,#7c,#09,#86,#01,#64
	db #09,#8a,#01,#86,#09,#82,#01,#8a
	db #09,#86,#01,#82,#09,#80,#01,#86
	db #09,#82,#01,#80,#09,#7a,#01,#7c
	db #09,#72,#01,#7a,#09,#7a,#01,#72
	db #09,#7c,#01,#7a,#09,#80,#01,#7c
	db #09,#72,#01,#80,#09,#7a,#01,#72
	db #09,#7c,#01,#7a,#09,#80,#01,#7c
	db #09,#72,#01,#80,#09,#7c,#01,#72
	db #09,#80,#01,#7c,#09,#82,#01,#80
	db #09,#80,#01,#82,#09,#7c,#01,#80
	db #09,#7a,#01,#7c,#09,#34,#81,#02
	db #ce,#64,#80,#0a,#ce,#30,#80,#02
	db #ce,#4c,#80,#0a,#ca,#7c,#80,#05
	db #ce,#34,#80,#02,#ce,#5e,#80,#0a
	db #61,#7c,#80,#05,#ce,#34,#80,#02
	db #ce,#64,#80,#0a,#ce,#30,#80,#02
	db #ce,#4c,#80,#0a,#ca,#7c,#80,#05
	db #ce,#34,#80,#02,#ce,#5e,#80,#0a
	db #61,#7c,#80,#05,#ce,#34,#80,#02
	db #ce,#64,#80,#0a,#ce,#30,#80,#02
	db #ce,#4c,#80,#0a,#ca,#7c,#80,#05
	db #ce,#34,#80,#02,#ce,#5e,#80,#0a
	db #61,#7c,#80,#05,#ce,#34,#80,#02
	db #ce,#64,#80,#0a,#ce,#30,#80,#02
	db #ce,#4c,#80,#0a,#ca,#7c,#80,#05
	db #ce,#34,#80,#02,#ce,#5e,#80,#0a
	db #61,#7c,#80,#05,#c2,#7a,#c1,#03
	db #fc,#7d,#7c,#80,#04,#d2,#78,#81
	db #03,#7c,#03,#82,#01,#86,#03,#82
	db #01,#80,#03,#7c,#01,#78,#03,#7c
	db #01,#80,#03,#80,#41,#fc,#83,#81
	db #c4,#04,#7a,#41,#fc,#7d,#7c,#80
	db #04,#d0,#c4,#01,#ce,#c4,#02,#ce
	db #c4,#03,#86,#89,#03,#8a,#07,#8a
	db #03,#7c,#01,#82,#03,#8a,#01,#86
	db #03,#7c,#01,#82,#03,#86,#01,#82
	db #03,#7c,#01,#80,#03,#82,#01,#80
	db #03,#72,#01,#7c,#03,#80,#01,#80
	db #40,#fc,#83,#82,#80,#04,#d2,#80
	db #80,#03,#c4,#04,#7a,#41,#fc,#7d
	db #73,#7c,#09,#7c,#01,#72,#09,#80
	db #01,#7c,#09,#44,#81,#02,#ce,#5c
	db #80,#0a,#ce,#4c,#80,#02,#ce,#45
	db #ce,#74,#80,#08,#ce,#44,#80,#02
	db #ce,#62,#80,#0a,#65,#74,#80,#08
	db #ce,#44,#80,#02,#ce,#5c,#80,#0a
	db #ce,#4c,#80,#02,#ce,#45,#ce,#74
	db #80,#08,#ce,#44,#80,#02,#ce,#64
	db #80,#0a,#ce,#74,#80,#08,#ce,#42
	db #80,#02,#ce,#5a,#80,#0a,#ce,#4a
	db #80,#02,#ce,#43,#ce,#72,#80,#08
	db #ce,#5c,#80,#0a,#ce,#5b,#ce,#72
	db #80,#08,#ce,#42,#80,#02,#ce,#5a
	db #80,#0a,#ce,#4a,#80,#02,#ce,#43
	db #ce,#72,#80,#08,#ce,#6a,#80,#0a
	db #ca,#50,#80,#0a,#ce,#72,#80,#08
	db #c2,#80,#c3,#03,#fc,#7c,#01,#74
	db #03,#82,#01,#7c,#03,#74,#01,#82
	db #03,#7c,#01,#74,#03,#82,#01,#7c
	db #03,#74,#01,#82,#03,#7c,#01,#74
	db #03,#7c,#01,#74,#03,#6a,#01,#64
	db #03,#6a,#01,#64,#03,#74,#01,#6a
	db #03,#74,#01,#7a,#40,#fc,#7d,#c4
	db #04,#ce,#80,#41,#fc,#83,#82,#80
	db #04,#ce,#7c,#c0,#03,#f9,#81,#80
	db #80,#04,#ce,#c4,#01,#ce,#c4,#02
	db #ce,#c4,#03,#ce,#c4,#04,#ce,#c4
	db #05,#ce,#c4,#06,#ce,#70,#c1,#03
	db #fb,#73,#72,#80,#04,#ce,#c4,#01
	db #ce,#c4,#02,#ce,#c4,#03,#ce,#c4
	db #04,#ce,#c4,#05,#ce,#c4,#06,#c2
	db #82,#81,#03,#ce,#7d,#82,#09,#74
	db #01,#7c,#09,#82,#01,#74,#09,#7c
	db #01,#82,#09,#74,#01,#7c,#09,#82
	db #01,#ce,#7d,#82,#09,#74,#01,#7c
	db #09,#82,#01,#74,#09,#7c,#01,#82
	db #09,#74,#01,#7c,#09,#7a,#41,#fc
	db #7d,#7c,#80,#04,#ce,#75,#d2,#7c
	db #c0,#03,#f9,#81,#80,#80,#04,#d0
	db #c4,#01,#ce,#c4,#02,#ce,#c4,#03
	db #ce,#c4,#04,#ce,#c4,#05,#8a,#81
	db #03,#87,#8b,#8a,#80,#04,#ce,#c4
	db #01,#ce,#c4,#02,#ce,#c4,#03,#ce
	db #c4,#04,#ce,#c4,#05,#ce,#c4,#06
	db #ce,#c4,#07,#30,#81,#0b,#ce,#74
	db #81,#01,#64,#09,#60,#01,#74,#09
	db #64,#01,#60,#09,#48,#81,#0c,#ce
	db #5c,#81,#01,#74,#09,#64,#01,#5c
	db #09,#74,#01,#64,#09,#30,#81,#0b
	db #ce,#64,#81,#01,#6a,#09,#74,#01
	db #64,#09,#5c,#01,#74,#09,#48,#81
	db #0c,#ce,#74,#81,#01,#64,#09,#64
	db #01,#74,#09,#68,#01,#64,#09,#30
	db #81,#0b,#ce,#50,#81,#01,#68,#09
	db #5a,#01,#50,#09,#62,#01,#5e,#09
	db #48,#81,#0c,#ce,#5a,#81,#01,#68
	db #09,#64,#01,#5a,#09,#50,#01,#64
	db #09,#30,#81,#0b,#ce,#68,#81,#01
	db #5a,#09,#50,#01,#68,#09,#5a,#01
	db #50,#09,#48,#81,#0c,#48,#05,#48
	db #09,#48,#0d,#48,#11,#c2,#44,#81
	db #02,#ce,#5c,#80,#0a,#ce,#4c,#80
	db #02,#ce,#45,#ce,#68,#80,#0a,#6b
	db #44,#80,#02,#ce,#62,#80,#0a,#65
	db #5d,#ce,#44,#80,#02,#ce,#5c,#80
	db #0a,#ce,#4c,#80,#02,#ce,#45,#ce
	db #6a,#80,#0a,#ce,#44,#80,#02,#ce
	db #64,#80,#0a,#ce,#5d,#ce,#42,#80
	db #02,#ce,#5a,#80,#0a,#ce,#4a,#80
	db #02,#ce,#43,#ce,#68,#80,#0a,#ce
	db #5d,#ce,#5b,#ce,#69,#ce,#42,#80
	db #02,#ce,#5a,#80,#0a,#ce,#4a,#80
	db #02,#ce,#43,#ce,#72,#80,#0a,#ca
	db #5a,#80,#0a,#ca,#4c,#80,#02,#c2
	db #7a,#89,#0d,#7c,#11,#7c,#09,#7c
	db #11,#64,#09,#7c,#11,#80,#09,#64
	db #11,#82,#09,#80,#11,#7c,#09,#82
	db #11,#64,#09,#7c,#11,#82,#09,#64
	db #11,#86,#09,#82,#11,#7c,#09,#86
	db #11,#64,#09,#7c,#11,#86,#09,#64
	db #11,#8a,#09,#86,#11,#82,#09,#8a
	db #11,#86,#09,#82,#11,#80,#09,#86
	db #11,#82,#09,#80,#11,#7c,#09,#7c
	db #11,#64,#09,#7c,#11,#80,#09,#64
	db #11,#82,#09,#80,#11,#7c,#09,#82
	db #11,#64,#09,#7c,#11,#82,#09,#64
	db #11,#86,#09,#82,#11,#7c,#09,#86
	db #11,#64,#09,#7c,#11,#86,#09,#64
	db #11,#8a,#09,#86,#11,#82,#09,#8a
	db #11,#86,#09,#82,#11,#80,#09,#86
	db #11,#82,#89,#0d,#80,#11,#7c,#09
	db #7c,#11,#64,#09,#7c,#11,#80,#09
	db #64,#11,#82,#09,#80,#11,#7c,#09
	db #82,#11,#64,#09,#7c,#11,#82,#09
	db #64,#11,#86,#09,#82,#11,#7c,#09
	db #86,#11,#64,#09,#7c,#11,#86,#09
	db #64,#11,#8a,#09,#86,#11,#82,#09
	db #8a,#11,#86,#09,#82,#11,#80,#09
	db #86,#11,#82,#09,#80,#11,#7a,#09
	db #7c,#11,#72,#09,#7a,#11,#7a,#09
	db #72,#11,#7c,#09,#7a,#11,#80,#09
	db #7c,#11,#72,#09,#80,#11,#7a,#09
	db #72,#11,#7c,#09,#7a,#11,#80,#09
	db #7c,#11,#72,#09,#80,#11,#7c,#09
	db #72,#11,#80,#09,#7c,#11,#82,#09
	db #80,#11,#80,#09,#82,#11,#7c,#09
	db #80,#11,#30,#81,#0b,#ce,#72,#81
	db #01,#64,#09,#60,#01,#72,#09,#64
	db #01,#60,#09,#48,#81,#0c,#ce,#5a
	db #81,#01,#72,#09,#64,#01,#5a,#09
	db #72,#01,#64,#09,#30,#81,#0b,#ce
	db #64,#81,#01,#56,#09,#72,#01,#64
	db #09,#52,#01,#72,#09,#48,#81,#0c
	db #ce,#72,#81,#01,#64,#09,#4c,#01
	db #72,#09,#5a,#01,#4c,#09,#30,#81
	db #0b,#ce,#74,#81,#01,#64,#09,#60
	db #01,#74,#09,#64,#01,#60,#09,#48
	db #81,#0c,#ce,#5c,#81,#01,#74,#09
	db #64,#01,#5c,#09,#74,#01,#64,#09
	db #30,#81,#0b,#ce,#64,#81,#01,#6a
	db #09,#74,#01,#64,#09,#5c,#01,#74
	db #09,#30,#81,#0c,#ce,#74,#81,#01
	db #64,#09,#64,#01,#74,#09,#68,#01
	db #64,#09,#34,#81,#02,#ce,#64,#80
	db #0a,#ce,#30,#80,#02,#ce,#4c,#80
	db #0a,#ca,#7c,#80,#05,#ce,#34,#80
	db #02,#ce,#5e,#80,#0a,#61,#7c,#80
	db #05,#ce,#34,#80,#02,#ce,#64,#80
	db #0a,#ce,#30,#80,#02,#ce,#4c,#80
	db #0a,#ca,#7c,#80,#05,#ce,#34,#80
	db #02,#ce,#5e,#80,#0a,#61,#7c,#80
	db #05,#ce,#44,#80,#02,#ce,#5c,#80
	db #0a,#ce,#4c,#80,#02,#ce,#45,#ce
	db #74,#80,#08,#ce,#44,#80,#02,#ce
	db #62,#80,#0a,#65,#74,#80,#08,#ce
	db #44,#80,#02,#ce,#5c,#80,#0a,#ce
	db #4c,#80,#02,#ce,#45,#ce,#74,#80
	db #08,#ce,#44,#80,#02,#ce,#64,#80
	db #0a,#ce,#74,#80,#08,#c2,#7a,#c1
	db #03,#fc,#7d,#73,#ce,#8b,#c4,#0f
	db #82,#01,#c4,#0f,#7c,#41,#f9,#81
	db #7d,#ce,#8b,#c4,#0f,#82,#01,#c4
	db #0f,#7a,#41,#fc,#7d,#73,#ce,#8b
	db #c4,#0f,#82,#01,#c4,#0f,#7c,#41
	db #f9,#81,#7d,#ce,#8b,#c4,#0f,#82
	db #01,#c4,#0f,#7a,#41,#fc,#7d,#73
	db #ce,#8b,#c4,#0f,#82,#01,#c4,#0f
	db #7c,#41,#f9,#81,#7d,#ce,#81,#c4
	db #0f,#82,#01,#c4,#0f,#80,#41,#fc
	db #83,#7d,#ce,#81,#c4,#0f,#82,#01
	db #c4,#0f,#7e,#41,#fd,#81,#7d,#ce
	db #79,#c4,#0f,#7c,#01,#c4,#0f,#30
	db #81,#0b,#ce,#50,#81,#01,#68,#09
	db #5a,#01,#50,#09,#62,#01,#5e,#09
	db #48,#81,#0c,#ce,#5a,#81,#01,#68
	db #09,#68,#01,#5a,#09,#50,#01,#68
	db #09,#30,#81,#0b,#ce,#50,#81,#01
	db #68,#09,#5a,#01,#50,#09,#62,#01
	db #5e,#09,#48,#81,#0c,#ce,#5a,#81
	db #01,#68,#09,#68,#01,#5a,#09,#50
	db #01,#68,#09,#30,#81,#0b,#ce,#74
	db #81,#01,#64,#09,#60,#01,#74,#09
	db #64,#01,#60,#09,#48,#81,#0c,#ce
	db #5c,#81,#01,#74,#09,#64,#01,#5c
	db #09,#74,#01,#64,#09,#30,#81,#0b
	db #ce,#64,#81,#01,#6a,#09,#74,#01
	db #64,#09,#5c,#01,#74,#09,#30,#81
	db #0c,#ce,#74,#81,#01,#64,#09,#64
	db #01,#74,#09,#68,#01,#64,#09,#42
	db #81,#02,#ce,#5a,#80,#0a,#ce,#4a
	db #80,#02,#ce,#43,#ce,#72,#80,#08
	db #ce,#5c,#80,#0a,#ce,#5b,#ce,#72
	db #80,#08,#ce,#42,#80,#02,#ce,#5a
	db #80,#0a,#ce,#4a,#80,#02,#ce,#43
	db #ce,#72,#80,#08,#ce,#6a,#80,#0a
	db #ca,#50,#80,#0a,#ce,#72,#80,#08
	db #ce,#44,#80,#02,#ce,#5c,#80,#0a
	db #ce,#4c,#80,#02,#ce,#45,#ce,#74
	db #80,#08,#ce,#44,#80,#02,#ce,#62
	db #80,#0a,#65,#74,#80,#08,#ce,#44
	db #80,#02,#ce,#5c,#80,#0a,#ce,#4c
	db #80,#02,#ce,#45,#ce,#74,#80,#08
	db #ce,#44,#80,#02,#ce,#64,#80,#0a
	db #ce,#74,#80,#08,#c2,#7c,#c1,#03
	db #f9,#81,#73,#ce,#8b,#c4,#0f,#82
	db #01,#c4,#0f,#80,#01,#ce,#83,#c4
	db #0f,#80,#01,#c4,#0f,#82,#01,#c4
	db #0f,#7c,#41,#f9,#81,#73,#ce,#8b
	db #c4,#0f,#82,#01,#c4,#0f,#80,#01
	db #ce,#83,#c4,#0f,#80,#01,#c4,#0f
	db #82,#01,#c4,#0f,#7a,#41,#fc,#7d
	db #73,#ce,#8b,#c4,#0f,#82,#01,#c4
	db #0f,#7c,#41,#f9,#81,#7d,#ce,#8b
	db #c4,#0f,#82,#01,#c4,#0f,#80,#41
	db #fc,#83,#7d,#ce,#81,#c4,#0f,#82
	db #01,#c4,#0f,#7e,#41,#fd,#81,#7d
	db #ce,#79,#c4,#0f,#7c,#01,#c4,#0f
	db #30,#81,#0b,#ce,#50,#81,#01,#68
	db #09,#5a,#01,#50,#09,#62,#01,#5e
	db #09,#48,#81,#0c,#ce,#5a,#81,#01
	db #68,#09,#68,#01,#5a,#09,#50,#01
	db #68,#09,#30,#81,#0b,#ce,#50,#81
	db #01,#68,#09,#5a,#01,#50,#09,#62
	db #01,#5e,#09,#48,#81,#0c,#ce,#5a
	db #81,#01,#68,#09,#68,#01,#5a,#09
	db #50,#01,#68,#09,#30,#81,#0b,#ce
	db #72,#81,#01,#64,#09,#60,#01,#72
	db #09,#64,#01,#60,#09,#48,#81,#0c
	db #ce,#5a,#81,#01,#72,#09,#64,#01
	db #5a,#09,#72,#01,#64,#09,#30,#81
	db #0b,#ce,#64,#81,#01,#56,#09,#72
	db #01,#64,#09,#52,#01,#72,#09,#30
	db #81,#0c,#48,#05,#48,#09,#48,#0d
	db #48,#11,#c2,#42,#81,#02,#ce,#5a
	db #80,#0a,#ce,#4a,#80,#02,#ce,#43
	db #ce,#72,#80,#08,#ce,#5c,#80,#0a
	db #ce,#5b,#ce,#72,#80,#08,#ce,#42
	db #80,#02,#ce,#5a,#80,#0a,#ce,#4a
	db #80,#02,#ce,#43,#ce,#72,#80,#08
	db #ce,#6a,#80,#0a,#ca,#50,#80,#0a
	db #ce,#72,#80,#08,#ce,#34,#80,#02
	db #ce,#64,#80,#0a,#ce,#30,#80,#02
	db #ce,#4d,#ce,#7c,#80,#05,#ce,#34
	db #80,#02,#ce,#5e,#80,#0a,#61,#7c
	db #80,#05,#ce,#34,#80,#02,#ce,#64
	db #80,#0a,#ce,#30,#80,#02,#ce,#4d
	db #ce,#7c,#80,#05,#ce,#ca,#c2,#7c
	db #c1,#03,#f9,#81,#73,#ce,#8b,#c4
	db #0f,#82,#01,#c4,#0f,#80,#01,#ce
	db #83,#c4,#0f,#80,#01,#c4,#0f,#82
	db #01,#c4,#0f,#80,#01,#c4,#0f,#82
	db #01,#c4,#0f,#80,#01,#c4,#0f,#82
	db #01,#c4,#0f,#80,#01,#82,#03,#80
	db #01,#82,#03,#80,#01,#82,#03,#80
	db #01,#82,#03,#7a,#41,#fc,#7d,#7c
	db #80,#04,#d0,#c4,#01,#ce,#c4,#02
	db #ce,#c4,#03,#ce,#c4,#04,#ce,#c4
	db #05,#ce,#c4,#06,#ce,#c4,#07,#ce
	db #c4,#08,#ce,#c4,#09,#ce,#c4,#0a
	db #ce,#c4,#0b,#ce,#c4,#0c,#ce,#c4
	db #0d,#ce,#c4,#0e,#ca,#ff
;
; #8019
; ld de,#6a00
; call #6000
;
;
.init_music		; added by Megachur
;
	ld de,l6a00
	jp real_init_music
;
.music_info
	db "Reset 18 - Seeker (2014)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
