; Music of Horrific SlideShow (2006)Public Domain)(Seteemio)(StArkos)
; Ripped by Megachur the 12/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HORRIFIS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #8000

	read "music_header.asm"

	db #00,#00,#00,#00,#00,#00,#00,#00
.l800c equ $ + 4
.l800b equ $ + 3
	db #00,#00,#80,#00,#00
;
.play_music
.l800d
;
	xor a
	ld (l800b),a
	ld (l883b),a
.l8015 equ $ + 1
	ld a,#00
.l8017 equ $ + 1
	cp #00
	jr z,l8021
	inc a
	ld (l8015),a
	jp l82b0
.l8021
	xor a
	ld (l8015),a
.l8025
	or a
	jp nc,l8107
	ld (l812f),a
	ld (l819a),a
	ld (l8205),a
	ld a,#b7
	ld (l8025),a
.l8038 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l806e
.l803e equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l806b
	ld b,a
	and #1f
	bit 4,a
	jr z,l804f
	or #e0
.l804f
	ld (l813c),a
	rl b
	rl b
	jr nc,l805d
	ld a,(hl)
	ld (l81a7),a
	inc hl
.l805d
	rl b
	jr nc,l8066
	ld a,(hl)
	ld (l8212),a
	inc hl
.l8066
	ld (l803e),hl
	jr l8071
.l806b
	ld (l803e),hl
.l806e
	ld (l8038),a
.l8072 equ $ + 1
.l8071
	ld a,#00
	sub #01
	jr c,l807e
	ld (l8072),a
.l807b equ $ + 1
	ld a,#00
	jr l8099
.l807f equ $ + 1
.l807e
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l808c
	ld (l807f),hl
	jr l8099
.l808c
	ld (l807b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l807f),hl
	ld (l8072),a
	ld a,b
.l8099
	ld (l8270),a
.l809d equ $ + 1
	ld hl,#0000
	ld de,l8135
	ldi
	ldi
	ld de,l81a0
	ldi
	ldi
	ld de,l820b
	ldi
	ldi
	ld (l809d),hl
.l80b8 equ $ + 1
	ld a,#00
	or a
	jr nz,l80ca
.l80bd equ $ + 1
	ld a,#00
	sub #01
	jr c,l80d8
	ld (l80bd),a
.l80c6 equ $ + 1
	ld hl,#0000
	jr l8110
.l80cb equ $ + 1
.l80ca
	ld a,#00
	sub #01
	jr c,l80d8
	ld (l80cb),a
	ld hl,(l80d9)
	jr l80fd
.l80d9 equ $ + 1
.l80d8
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l80f5
	ld (l80bd),a
	xor a
	ld (l80b8),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l80d9),hl
	ex de,hl
	ld (l80c6),hl
	jr l8110
.l80f5
	ld (l80cb),a
	ld a,#01
	ld (l80b8),a
.l80fd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l80d9),hl
	ex de,hl
	jr l8110
.l8108 equ $ + 1
.l8107
	ld a,#00
	sub #01
	jr nc,l812b
.l810e equ $ + 1
	ld hl,#0000
.l8110
	ld a,(hl)
	inc hl
	srl a
	jr c,l8128
	srl a
	jr c,l811f
	ld (l8017),a
	jr l8127
.l811f
	ld (l800b),a
.l8123 equ $ + 1
	ld a,#01
	ld (l800c),a
.l8127
	xor a
.l8128
	ld (l810e),hl
.l812b
	ld (l8108),a
.l812f equ $ + 1
	ld a,#00
	sub #01
	jr nc,l8196
.l8135 equ $ + 1
	ld hl,#0000
.l8138 equ $ + 1
	ld bc,#0100
.l813c equ $ + 2
.l813b equ $ + 1
	ld de,#0000
.l813f equ $ + 2
	ld lx,#00
	call l83ad
	ld a,lx
	ld (l813f),a
	ld (l82ba),hl
	exx
	ld (l8135),hl
	ld a,c
	ld (l8138),a
	ld (l82b4),a
	xor a
	or hy
	jr nz,l8194
	ld (l82d7),a
	ld d,a
	ld a,e
	ld (l813b),a
	ld l,d
	ld h,l
	ld (l82b7),hl
.l8169 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l82e8
	ldi
	ldi
	ld de,l82e0
	ldi
	ldi
	ld de,l82d9
	ldi
	ld de,l82ea
	ldi
	ld a,(hl)
	inc hl
	ld (l82c9),hl
	ld hl,l883b
	or (hl)
	ld (hl),a
.l8194
	ld a,ly
.l8196
	ld (l812f),a
.l819a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l8201
.l81a0 equ $ + 1
	ld hl,#0000
.l81a3 equ $ + 1
	ld bc,#0200
.l81a7 equ $ + 2
.l81a6 equ $ + 1
	ld de,#0000
.l81aa equ $ + 2
	ld lx,#00
	call l83ad
	ld a,lx
	ld (l81aa),a
	ld (l830b),hl
	exx
	ld (l81a0),hl
	ld a,c
	ld (l81a3),a
	ld (l8305),a
	xor a
	or hy
	jr nz,l81ff
	ld (l8328),a
	ld d,a
	ld a,e
	ld (l81a6),a
	ld l,d
	ld h,l
	ld (l8308),hl
.l81d4 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l8339
	ldi
	ldi
	ld de,l8331
	ldi
	ldi
	ld de,l832a
	ldi
	ld de,l833b
	ldi
	ld a,(hl)
	inc hl
	ld (l831a),hl
	ld hl,l883b
	or (hl)
	ld (hl),a
.l81ff
	ld a,ly
.l8201
	ld (l819a),a
.l8205 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l826c
.l820b equ $ + 1
	ld hl,#0000
.l820e equ $ + 1
	ld bc,#0300
.l8212 equ $ + 2
.l8211 equ $ + 1
	ld de,#0000
.l8215 equ $ + 2
	ld lx,#00
	call l83ad
	ld a,lx
	ld (l8215),a
	ld (l835c),hl
	exx
	ld (l820b),hl
	ld a,c
	ld (l820e),a
	ld (l8356),a
	xor a
	or hy
	jr nz,l826a
	ld (l8379),a
	ld d,a
	ld a,e
	ld (l8211),a
	ld l,d
	ld h,l
	ld (l8359),hl
.l823f equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l838a
	ldi
	ldi
	ld de,l8382
	ldi
	ldi
	ld de,l837b
	ldi
	ld de,l838c
	ldi
	ld a,(hl)
	inc hl
	ld (l836b),hl
	ld hl,l883b
	or (hl)
	ld (hl),a
.l826a
	ld a,ly
.l826c
	ld (l8205),a
.l8270 equ $ + 1
	ld a,#00
	sub #01
	jr c,l827a
	ld (l8270),a
	jr l82b0
.l827a
	ld a,#37
	ld (l8025),a
	ld hl,(l809d)
.l8283 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l82b0
	ld (l8038),a
	ld (l8072),a
	ld (l8108),a
.l8294 equ $ + 1
	ld hl,#0000
	ld (l803e),hl
.l829a equ $ + 1
	ld hl,#0000
	ld (l807f),hl
.l82a0 equ $ + 1
	ld hl,#0000
	ld (l809d),hl
.l82a6 equ $ + 1
	ld hl,#0000
	ld (l80d9),hl
.l82ac equ $ + 1
	ld a,#00
	ld (l80b8),a
.l82b0
	ld hl,l883b
.l82b4 equ $ + 1
	ld d,#00
	exx
.l82b7 equ $ + 1
	ld hl,#0000
.l82ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l82b7),hl
	ld (l84e8),hl
	ld a,(l813f)
	ld lx,a
.l82c9 equ $ + 1
	ld hl,#0000
	ld iy,l86d6
	ld a,(l82d7)
	call l8442
	ex de,hl
.l82d7 equ $ + 1
	ld a,#00
.l82d9 equ $ + 1
	cp #00
	jr z,l82df
	inc a
	jr l82fc
.l82e0 equ $ + 1
.l82df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l82f8
.l82e8 equ $ + 1
	ld de,#0000
.l82ea
	or a
	jr c,l82f8
.l82ee equ $ + 1
	ld hl,#0000
	ld (l82e0),hl
	dec a
	ld (l82d9),a
	inc a
.l82f8
	ld (l82c9),de
.l82fc
	ld (l82d7),a
	ld a,hx
	ld (l83a9),a
.l8305 equ $ + 1
	ld d,#00
	exx
.l8308 equ $ + 1
	ld hl,#0000
.l830b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8308),hl
	ld (l84e8),hl
	ld a,(l81aa)
	ld lx,a
.l831a equ $ + 1
	ld hl,#0000
	ld iy,l8727
	ld a,(l8328)
	call l8442
	ex de,hl
.l8328 equ $ + 1
	ld a,#00
.l832a equ $ + 1
	cp #00
	jr z,l8330
	inc a
	jr l834d
.l8331 equ $ + 1
.l8330
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l8349
.l8339 equ $ + 1
	ld de,#0000
.l833b
	or a
	jr c,l8349
.l833f equ $ + 1
	ld hl,#0000
	ld (l8331),hl
	dec a
	ld (l832a),a
	inc a
.l8349
	ld (l831a),de
.l834d
	ld (l8328),a
	ld a,hx
	ld (l83a6),a
.l8356 equ $ + 1
	ld d,#00
	exx
.l8359 equ $ + 1
	ld hl,#0000
.l835c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8359),hl
	ld (l84e8),hl
	ld a,(l8215)
	ld lx,a
.l836b equ $ + 1
	ld hl,#0000
	ld iy,l8778
	ld a,(l8379)
	call l8442
	ex de,hl
.l8379 equ $ + 1
	ld a,#00
.l837b equ $ + 1
	cp #00
	jr z,l8381
	inc a
	jr l839e
.l8382 equ $ + 1
.l8381
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l839a
.l838a equ $ + 1
	ld de,#0000
.l838c
	or a
	jr c,l839a
.l8390 equ $ + 1
	ld hl,#0000
	ld (l8382),hl
	dec a
	ld (l837b),a
	inc a
.l839a
	ld (l836b),de
.l839e
	ld (l8379),a
	ld a,hx
	sla a
.l83a6 equ $ + 1
	or #00
	rla
.l83a9 equ $ + 1
	or #00
	jp l86cb
.l83ad
	ld a,(hl)
	inc hl
	srl a
	jr c,l83e6
	cp #60
	jr nc,l83ee
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l83c6
	and #0f
	ld c,a
.l83c6
	rl b
	jr nc,l83cc
	ld e,(hl)
	inc hl
.l83cc
	rl b
	jr nc,l83de
.l83d0
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l83da
	dec h
.l83da
	ld ly,#00
	ret
.l83de
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l83e6
	ld hy,#00
	add d
	ld lx,a
	jr l83de
.l83ee
	ld hy,#01
	sub #60
	jr z,l840f
	dec a
	jr z,l8426
	dec a
	jr z,l8418
	dec a
	jr z,l83d0
	dec a
	jr z,l8422
	dec a
	jr z,l8437
	dec a
	jr z,l842e
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l840f
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l8418
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l8422
	ld c,(hl)
	inc hl
	jr l83d0
.l8426
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l842e
	ld a,(hl)
	inc hl
	ld (l800b),a
	ld a,b
	ld (l800c),a
.l8437
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l8442
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l84f8
	bit 4,e
	jr z,l84aa
	ld a,(hl)
	bit 6,a
	jr z,l8477
	ld d,#08
	inc hl
	and #1f
	jr z,l845e
	ld (l87c9),a
	res 3,d
.l845e
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l8467
	xor a
.l8467
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l8477
	ld (l87c9),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l8493
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l848c
	xor a
.l848c
	ld (iy+#36),a
	ld hx,d
	jr l84bd
.l8493
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l849c
	xor a
.l849c
	ld (iy+#36),a
.l849f
	ld hx,d
	ret
.l84a2
	ld (iy+#36),#00
	ld d,#09
	jr l849f
.l84aa
	ld d,#08
	ld a,e
	and #0f
	jr z,l84a2
	exx
	sub d
	exx
	jr nc,l84b7
	xor a
.l84b7
	ld (iy+#36),a
	ld hx,#08
.l84bd
	bit 5,e
	jr z,l84c5
	ld a,(hl)
	inc hl
	jr l84c6
.l84c5
	xor a
.l84c6
	bit 6,e
	jr z,l84d0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l84d3
.l84d0
	ld de,#0000
.l84d3
	add lx
	cp #60
	jr c,l84db
	ld a,#60
.l84db
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l860b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l84e8 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l84f8
	or a
	jr nz,l8502
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l8502
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
	ld (l8834),a
	bit 3,e
	jr z,l8524
	ld a,(hl)
	inc hl
	ld (l87c9),a
	res 3,d
	jr l8524
.l8524
	ld hx,d
	xor a
	bit 7,b
	jr z,l8536
	bit 6,b
	jr z,l8531
	ld a,(hl)
	inc hl
.l8531
	ld (l85e5),a
	ld a,#01
.l8536
	ld (l857e),a
	ld a,b
	rra
	and #0e
	ld (l858f),a
	bit 4,e
	jp nz,l85f0
	bit 1,e
	jr z,l854d
	ld a,(hl)
	inc hl
	jr l854e
.l854d
	xor a
.l854e
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l855b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l855e
.l855b
	ld de,#0000
.l855e
	add lx
	cp #60
	jr c,l8566
	ld a,#60
.l8566
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l860b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l84e8)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l857e equ $ + 1
	ld a,#00
	or a
	jr nz,l858e
	ex af,af'
	bit 5,a
	jr nz,l85f9
.l8587
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l858f equ $ + 1
.l858e
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l8599),a
	ld a,c
.l8599 equ $ + 1
	jr l859a
.l859a
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
	jr nc,l85b3
	inc bc
.l85b3
	ld a,c
	ld (l87fe),a
	ld a,b
	ld (l8819),a
	ld a,(l857e)
	or a
	jr z,l85ee
	ld a,(l858f)
	ld e,a
	srl a
	add e
	ld (l85cd),a
	ld a,b
.l85cd equ $ + 1
	jr l85ce
.l85ce
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
.l85e5 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l85ee
	pop hl
	ret
.l85f0
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l8587
.l85f9
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l87fe),a
	inc hl
	ld a,(hl)
	ld (l8819),a
	inc hl
	ret
.l860b
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
.l86cb
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l86d6 equ $ + 1
	ld a,#00
.l86d8 equ $ + 1
	cp #00
	jr z,l86f0
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
	ld (l86d8),a
	exx
.l86f1 equ $ + 1
.l86f0
	ld a,#00
.l86f3 equ $ + 1
	cp #00
	jr z,l870b
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
	ld (l86f3),a
	exx
.l870c equ $ + 1
.l870b
	ld a,#00
.l870e equ $ + 1
	cp #00
	jr z,l8726
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
	ld (l870e),a
	exx
.l8727 equ $ + 1
.l8726
	ld a,#00
.l8729 equ $ + 1
	cp #00
	jr z,l8741
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
	ld (l8729),a
	exx
.l8742 equ $ + 1
.l8741
	ld a,#00
.l8744 equ $ + 1
	cp #00
	jr z,l875c
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
	ld (l8744),a
	exx
.l875d equ $ + 1
.l875c
	ld a,#00
.l875f equ $ + 1
	cp #00
	jr z,l8777
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
	ld (l875f),a
	exx
.l8778 equ $ + 1
.l8777
	ld a,#00
.l877a equ $ + 1
	cp #00
	jr z,l8792
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
	ld (l877a),a
	exx
.l8793 equ $ + 1
.l8792
	ld a,#00
.l8795 equ $ + 1
	cp #00
	jr z,l87ad
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
	ld (l8795),a
	exx
.l87ae equ $ + 1
.l87ad
	ld a,#00
.l87b0 equ $ + 1
	cp #00
	jr z,l87c8
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
	ld (l87b0),a
	exx
.l87c9 equ $ + 1
.l87c8
	ld a,#00
.l87cb equ $ + 1
	cp #00
	jr z,l87e3
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
	ld (l87cb),a
	exx
.l87e3
	ld a,h
.l87e5 equ $ + 1
	cp #c0
	jr z,l87fd
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
	ld (l87e5),a
	exx
.l87fe equ $ + 1
.l87fd
	ld a,#00
.l8800 equ $ + 1
	cp #00
	jr z,l8818
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
	ld (l8800),a
	exx
.l8819 equ $ + 1
.l8818
	ld a,#00
.l881b equ $ + 1
	cp #00
	jr z,l8833
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
	ld (l881b),a
	exx
.l8834 equ $ + 1
.l8833
	ld a,#00
.l8836 equ $ + 1
	cp #ff
	jr nz,l883f
	ld h,a
.l883b equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l883f
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
	ld (l8836),a
	ret
;
.stop_music
;
	xor a
	ld (l870c),a
	ld (l875d),a
	ld (l87ae),a
	dec a
	ld (l870e),a
	ld (l875f),a
	ld (l87b0),a
	ld (l87e5),a
	ld a,#3f
	jp l86cb
;
.real_init_music
.l8870
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l8123),a
	ld de,#0003
	add hl,de
	ld de,l807f
	ldi
	ldi
	ld de,l809d
	ldi
	ldi
	ld de,l80d9
	ldi
	ldi
	ld de,l8169
	ldi
	ldi
	ld de,l8294
	ldi
	ldi
	ld de,l829a
	ldi
	ldi
	ld de,l82a0
	ldi
	ldi
	ld de,l82a6
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l8017),a
	ld (l8015),a
	ld (l803e),hl
	ld hl,(l80d9)
	ld (l8283),hl
	ld a,(hl)
	and #01
	ld (l80b8),a
	ld hl,(l82a6)
	ld a,(hl)
	and #01
	ld (l82ac),a
	ld hl,(l8169)
	ld (l81d4),hl
	ld (l823f),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l82c9),hl
	ld (l831a),hl
	ld (l836b),hl
	ld (l82e8),hl
	ld (l8339),hl
	ld (l838a),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l82ee),de
	ld (l833f),de
	ld (l8390),de
	ld (l82e0),de
	ld (l8331),de
	ld (l8382),de
	ld a,#37
	ld (l8025),a
	ld hl,l892c
.l891c
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l8923
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l8923
	jr l891c
.l892c
	jr l892e
.l892e
	dw l86d6,l86f1,l8727,l8742
	dw l8778,l8793,l87c9,l870c
	dw l875d,l87ae,l87fe,l8819
	dw l8834,l8038,l8072,l80bd
	dw l80cb,l8108,l82d7,l8328
	dw l8379,l8138,l81a3,l820e
	dw #ff11,l86d8,l86f3,l8729
	dw l8744,l877a,l8795,l87cb
	dw l87e5,l870e,l875f,l87b0
	dw l8800,l881b,l8836,l82d9
	dw l832a,l837b,#b703,l82ea
	dw l833b,l838c
	db #00,#00,#00,#00,#00,#00
.l8990
	db #53,#4b,#31,#30,#90,#89,#01,#32
	db #00,#ae,#89,#b0,#89,#d4,#89,#d7
	db #89,#aa,#89,#ae,#89,#b0,#89,#d4
	db #89,#03,#c0,#00,#00,#09,#7f,#05
	db #57,#8a,#89,#8a,#90,#8a,#57,#8a
	db #89,#8a,#90,#8a,#57,#8a,#94,#8a
	db #a2,#8a,#57,#8a,#94,#8a,#a2,#8a
	db #57,#8a,#94,#8a,#a2,#8a,#57,#8a
	db #94,#8a,#a2,#8a,#0a,#a9,#8a,#e1
	db #89,#eb,#89,#01,#8a,#26,#8a,#30
	db #8a,#e8,#89,#eb,#89,#ff,#37,#00
	db #00,#00,#00,#e8,#89,#01,#8a,#00
	db #b7,#00,#0f,#0d,#0e,#0b,#0c,#09
	db #0a,#07,#08,#05,#06,#03,#04,#01
	db #02,#e8,#89,#26,#8a,#00,#b7,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#2d,#8a
	db #30,#8a,#ff,#37,#00,#00,#00,#00
	db #37,#8a,#57,#8a,#00,#37,#00,#08
	db #48,#ff,#ff,#08,#48,#01,#00,#07
	db #47,#ff,#ff,#07,#47,#01,#00,#08
	db #48,#ff,#ff,#08,#48,#01,#00,#07
	db #47,#ff,#ff,#07,#47,#01,#00,#98
	db #80,#01,#ce,#a7,#d0,#a3,#d0,#9f
	db #ce,#a3,#d0,#9f,#d0,#9d,#ce,#9f
	db #d0,#9d,#d0,#9f,#ce,#9d,#d0,#99
	db #d0,#99,#ce,#a7,#d0,#a3,#d0,#9f
	db #ce,#a3,#d0,#9f,#d0,#9d,#ce,#9f
	db #d0,#9d,#d0,#9f,#ce,#9d,#d0,#99
	db #c2,#a2,#80,#02,#c0,#1e,#a3,#c2
	db #64,#80,#03,#c2,#50,#80,#04,#ea
	db #55,#da,#57,#da,#55,#ea,#57,#da
	db #5b,#c2,#68,#80,#04,#c0,#36,#65
	db #c2,#ff,#00,#00,#00,#00,#00,#00
;
.init_music		; added by Megachur
;
	ld de,l8990
	jp real_init_music
;
.music_info
	db "Horrific SlideShow (2006)Public Domain)(Seteemio)",0
	db "StArkos",0

	read "music_end.asm"
