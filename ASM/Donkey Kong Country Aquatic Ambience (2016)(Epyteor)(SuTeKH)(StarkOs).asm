; Music of Donkey Kong Country Aquatic Ambience (2016)(Epyteor)(SuTeKH)(StarkOs)
; Ripped by Megachur the 14/03/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DONKKCAA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #8000

	read "music_header.asm"

	jp l8872
	jp l800d
	jp l8856
.l800c equ $ + 3
.l800b equ $ + 2
	db #00,#80,#00,#00
;
.play_music
.l800d
;
	xor a
	ld (l800b),a
	ld (l883d),a
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
	call l83af
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
	ld hl,l883d
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
	call l83af
	ld a,lx
	ld (l81aa),a
	ld (l830c),hl
	exx
	ld (l81a0),hl
	ld a,c
	ld (l81a3),a
	ld (l8306),a
	xor a
	or hy
	jr nz,l81ff
	ld (l8329),a
	ld d,a
	ld a,e
	ld (l81a6),a
	ld l,d
	ld h,l
	ld (l8309),hl
.l81d4 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l833a
	ldi
	ldi
	ld de,l8332
	ldi
	ldi
	ld de,l832b
	ldi
	ld de,l833c
	ldi
	ld a,(hl)
	inc hl
	ld (l831b),hl
	ld hl,l883d
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
	call l83af
	ld a,lx
	ld (l8215),a
	ld (l835e),hl
	exx
	ld (l820b),hl
	ld a,c
	ld (l820e),a
	ld (l8358),a
	xor a
	or hy
	jr nz,l826a
	ld (l837b),a
	ld d,a
	ld a,e
	ld (l8211),a
	ld l,d
	ld h,l
	ld (l835b),hl
.l823f equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l838c
	ldi
	ldi
	ld de,l8384
	ldi
	ldi
	ld de,l837d
	ldi
	ld de,l838e
	ldi
	ld a,(hl)
	inc hl
	ld (l836d),hl
	ld hl,l883d
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
	ld hl,l883d
.l82b4 equ $ + 1
	ld d,#00
	exx
.l82b7 equ $ + 1
	ld hl,#0000
.l82ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l82b7),hl
	ld (l84ea),hl
	ld a,(l813f)
	ld lx,a
.l82c9 equ $ + 1
	ld hl,#0000
	ld iy,l86d8
	ld a,(l82d7)
	call l8444
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
	ld (l83ab),a
	exx
.l8306 equ $ + 1
	ld d,#00
	exx
.l8309 equ $ + 1
	ld hl,#0000
.l830c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8309),hl
	ld (l84ea),hl
	ld a,(l81aa)
	ld lx,a
.l831b equ $ + 1
	ld hl,#0000
	ld iy,l8729
	ld a,(l8329)
	call l8444
	ex de,hl
.l8329 equ $ + 1
	ld a,#00
.l832b equ $ + 1
	cp #00
	jr z,l8331
	inc a
	jr l834e
.l8332 equ $ + 1
.l8331
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l834a
.l833a equ $ + 1
	ld de,#0000
.l833c
	or a
	jr c,l834a
.l8340 equ $ + 1
	ld hl,#0000
	ld (l8332),hl
	dec a
	ld (l832b),a
	inc a
.l834a
	ld (l831b),de
.l834e
	ld (l8329),a
	ld a,hx
	ld (l83a8),a
	exx
.l8358 equ $ + 1
	ld d,#00
	exx
.l835b equ $ + 1
	ld hl,#0000
.l835e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l835b),hl
	ld (l84ea),hl
	ld a,(l8215)
	ld lx,a
.l836d equ $ + 1
	ld hl,#0000
	ld iy,l877a
	ld a,(l837b)
	call l8444
	ex de,hl
.l837b equ $ + 1
	ld a,#00
.l837d equ $ + 1
	cp #00
	jr z,l8383
	inc a
	jr l83a0
.l8384 equ $ + 1
.l8383
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l839c
.l838c equ $ + 1
	ld de,#0000
.l838e
	or a
	jr c,l839c
.l8392 equ $ + 1
	ld hl,#0000
	ld (l8384),hl
	dec a
	ld (l837d),a
	inc a
.l839c
	ld (l836d),de
.l83a0
	ld (l837b),a
	ld a,hx
	sla a
.l83a8 equ $ + 1
	or #00
	rla
.l83ab equ $ + 1
	or #00
	jp l86cd
.l83af
	ld a,(hl)
	inc hl
	srl a
	jr c,l83e8
	cp #60
	jr nc,l83f0
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l83c8
	and #0f
	ld c,a
.l83c8
	rl b
	jr nc,l83ce
	ld e,(hl)
	inc hl
.l83ce
	rl b
	jr nc,l83e0
.l83d2
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l83dc
	dec h
.l83dc
	ld ly,#00
	ret
.l83e0
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l83e8
	ld hy,#00
	add d
	ld lx,a
	jr l83e0
.l83f0
	ld hy,#01
	sub #60
	jr z,l8411
	dec a
	jr z,l8428
	dec a
	jr z,l841a
	dec a
	jr z,l83d2
	dec a
	jr z,l8424
	dec a
	jr z,l8439
	dec a
	jr z,l8430
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l8411
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l841a
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l8424
	ld c,(hl)
	inc hl
	jr l83d2
.l8428
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l8430
	ld a,(hl)
	inc hl
	ld (l800b),a
	ld a,b
	ld (l800c),a
.l8439
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l8444
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l84fa
	bit 4,e
	jr z,l84ac
	ld a,(hl)
	bit 6,a
	jr z,l8479
	ld d,#08
	inc hl
	and #1f
	jr z,l8460
	ld (l87cb),a
	res 3,d
.l8460
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l8469
	xor a
.l8469
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l8479
	ld (l87cb),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l8495
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l848e
	xor a
.l848e
	ld (iy+#36),a
	ld hx,d
	jr l84bf
.l8495
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l849e
	xor a
.l849e
	ld (iy+#36),a
.l84a1
	ld hx,d
	ret
.l84a4
	ld (iy+#36),#00
	ld d,#09
	jr l84a1
.l84ac
	ld d,#08
	ld a,e
	and #0f
	jr z,l84a4
	exx
	sub d
	exx
	jr nc,l84b9
	xor a
.l84b9
	ld (iy+#36),a
	ld hx,#08
.l84bf
	bit 5,e
	jr z,l84c7
	ld a,(hl)
	inc hl
	jr l84c8
.l84c7
	xor a
.l84c8
	bit 6,e
	jr z,l84d2
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l84d5
.l84d2
	ld de,#0000
.l84d5
	add lx
	cp #60
	jr c,l84dd
	ld a,#5f
.l84dd
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l860d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l84ea equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l84fa
	or a
	jr nz,l8504
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l8504
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
	ld (l8836),a
	bit 3,e
	jr z,l8526
	ld a,(hl)
	inc hl
	ld (l87cb),a
	res 3,d
	jr l8526
.l8526
	ld hx,d
	xor a
	bit 7,b
	jr z,l8538
	bit 6,b
	jr z,l8533
	ld a,(hl)
	inc hl
.l8533
	ld (l85e7),a
	ld a,#01
.l8538
	ld (l8580),a
	ld a,b
	rra
	and #0e
	ld (l8591),a
	bit 4,e
	jp nz,l85f2
	bit 1,e
	jr z,l854f
	ld a,(hl)
	inc hl
	jr l8550
.l854f
	xor a
.l8550
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l855d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l8560
.l855d
	ld de,#0000
.l8560
	add lx
	cp #60
	jr c,l8568
	ld a,#5f
.l8568
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l860d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l84ea)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l8580 equ $ + 1
	ld a,#00
	or a
	jr nz,l8590
	ex af,af'
	bit 5,a
	jr nz,l85fb
.l8589
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l8591 equ $ + 1
.l8590
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l859b),a
	ld a,c
.l859b equ $ + 1
	jr l859c
.l859c
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
	jr nc,l85b5
	inc bc
.l85b5
	ld a,c
	ld (l8800),a
	ld a,b
	ld (l881b),a
	ld a,(l8580)
	or a
	jr z,l85f0
	ld a,(l8591)
	ld e,a
	srl a
	add e
	ld (l85cf),a
	ld a,b
.l85cf equ $ + 1
	jr l85d0
.l85d0
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
.l85e7 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l85f0
	pop hl
	ret
.l85f2
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l8589
.l85fb
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l8800),a
	inc hl
	ld a,(hl)
	ld (l881b),a
	inc hl
	ret
.l860d
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
.l86cd
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l86d8 equ $ + 1
	ld a,#00
.l86da equ $ + 1
	cp #00
	jr z,l86f2
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
	ld (l86da),a
	exx
.l86f3 equ $ + 1
.l86f2
	ld a,#00
.l86f5 equ $ + 1
	cp #00
	jr z,l870d
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
	ld (l86f5),a
	exx
.l870e equ $ + 1
.l870d
	ld a,#00
.l8710 equ $ + 1
	cp #00
	jr z,l8728
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
	ld (l8710),a
	exx
.l8729 equ $ + 1
.l8728
	ld a,#00
.l872b equ $ + 1
	cp #00
	jr z,l8743
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
	ld (l872b),a
	exx
.l8744 equ $ + 1
.l8743
	ld a,#00
.l8746 equ $ + 1
	cp #00
	jr z,l875e
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
	ld (l8746),a
	exx
.l875f equ $ + 1
.l875e
	ld a,#00
.l8761 equ $ + 1
	cp #00
	jr z,l8779
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
	ld (l8761),a
	exx
.l877a equ $ + 1
.l8779
	ld a,#00
.l877c equ $ + 1
	cp #00
	jr z,l8794
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
	ld (l877c),a
	exx
.l8795 equ $ + 1
.l8794
	ld a,#00
.l8797 equ $ + 1
	cp #00
	jr z,l87af
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
	ld (l8797),a
	exx
.l87b0 equ $ + 1
.l87af
	ld a,#00
.l87b2 equ $ + 1
	cp #00
	jr z,l87ca
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
	ld (l87b2),a
	exx
.l87cb equ $ + 1
.l87ca
	ld a,#00
.l87cd equ $ + 1
	cp #00
	jr z,l87e5
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
	ld (l87cd),a
	exx
.l87e5
	ld a,h
.l87e7 equ $ + 1
	cp #c0
	jr z,l87ff
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
	ld (l87e7),a
	exx
.l8800 equ $ + 1
.l87ff
	ld a,#00
.l8802 equ $ + 1
	cp #00
	jr z,l881a
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
	ld (l8802),a
	exx
.l881b equ $ + 1
.l881a
	ld a,#00
.l881d equ $ + 1
	cp #00
	jr z,l8835
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
	ld (l881d),a
	exx
.l8836 equ $ + 1
.l8835
	ld a,#00
.l8838 equ $ + 1
	cp #ff
	jr nz,l8841
	ld h,a
.l883d equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l8841
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
	ld (l8838),a
	ret
;
.stop_music
.l8856
;
	xor a
	ld (l870e),a
	ld (l875f),a
	ld (l87b0),a
	dec a
	ld (l8710),a
	ld (l8761),a
	ld (l87b2),a
	ld (l87e7),a
	ld a,#3f
	jp l86cd
;
.real_init_music
.l8872
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
	ld (l831b),hl
	ld (l836d),hl
	ld (l82e8),hl
	ld (l833a),hl
	ld (l838c),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l82ee),de
	ld (l8340),de
	ld (l8392),de
	ld (l82e0),de
	ld (l8332),de
	ld (l8384),de
	ld a,#37
	ld (l8025),a
	ld hl,l892e
.l891e
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l8925
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l8925
	jr l891e
.l892e
	jr l8930
.l8930
	dw l86d8,l86f3,l8729,l8744
	dw l877a,l8795,l87cb,l870e
	dw l875f,l87b0,l8800,l881b
	dw l8836,l8038,l8072,l80bd
	dw l80cb,l8108,l82d7,l8329
	dw l837b,l8138,l81a3,l820e
	dw #ff11,l86da,l86f5,l872b
	dw l8746,l877c,l8797,l87cd
	dw l87e7,l8710,l8761,l87b2
	dw l8802,l881d,l8838,l82d9
	dw l832b,l837d,#b703,l82ea
	dw l833c,l838e
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l8a00
	db #53,#4b,#31,#30,#00,#8a,#01,#32
	db #00,#1e,#8a,#20,#8a,#8c,#8a,#8f
	db #8a,#1a,#8a,#1e,#8a,#20,#8a,#8c
	db #8a,#05,#c0,#00,#00,#21,#7f,#11
	db #40,#8b,#91,#8b,#ef,#8b,#40,#8c
	db #91,#8c,#ef,#8c,#40,#8b,#91,#8b
	db #ef,#8b,#40,#8c,#91,#8c,#ef,#8c
	db #40,#8d,#91,#8d,#ed,#8d,#3e,#8e
	db #8f,#8e,#ed,#8e,#3e,#8f,#91,#8b
	db #88,#8f,#03,#90,#91,#8c,#2a,#90
	db #ab,#90,#91,#8b,#fa,#90,#7b,#91
	db #91,#8c,#2a,#90,#40,#8d,#91,#8d
	db #ed,#8d,#3e,#8e,#8f,#8e,#ed,#8e
	db #3e,#8f,#91,#8b,#88,#8f,#03,#90
	db #91,#8c,#2a,#90,#ab,#90,#91,#8b
	db #fa,#90,#7b,#91,#91,#8c,#2a,#90
	db #40,#8d,#91,#8d,#ed,#8d,#3e,#8e
	db #8f,#8e,#ed,#8e,#22,#a6,#91,#9f
	db #8a,#a9,#8a,#b6,#8a,#c9,#8a,#db
	db #8a,#0d,#8b,#15,#8b,#27,#8b,#a6
	db #8a,#a9,#8a,#ff,#37,#00,#00,#00
	db #00,#b0,#8a,#b6,#8a,#00,#37,#00
	db #0d,#0d,#2d,#f4,#2d,#f4,#a6,#8a
	db #c9,#8a,#00,#b7,#00,#1a,#05,#81
	db #16,#81,#16,#81,#16,#81,#16,#81
	db #16,#a6,#8a,#db,#8a,#00,#b7,#00
	db #1a,#05,#2c,#03,#2c,#07,#0c,#2c
	db #03,#2c,#07,#a6,#8a,#0d,#8b,#00
	db #b7,#00,#1a,#05,#3f,#28,#0c,#3e
	db #28,#0d,#3d,#27,#10,#1c,#27,#3b
	db #26,#0f,#3a,#26,#0e,#1a,#25,#39
	db #25,#0e,#39,#24,#09,#18,#24,#38
	db #23,#0e,#37,#23,#09,#17,#22,#36
	db #22,#0e,#36,#21,#09,#14,#8b,#15
	db #8b,#00,#37,#00,#0f,#a6,#8a,#27
	db #8b,#00,#b7,#00,#1a,#05,#2c,#04
	db #2c,#07,#0c,#2c,#04,#2c,#07,#2e
	db #8b,#40,#8b,#00,#37,#00,#4f,#ff
	db #ff,#4f,#fe,#ff,#4f,#ff,#ff,#4f
	db #01,#00,#4f,#02,#00,#4f,#01,#00
	db #7c,#83,#01,#c4,#07,#d0,#74,#03
	db #c4,#07,#d0,#7c,#03,#c4,#07,#d0
	db #74,#03,#c4,#07,#d0,#7c,#03,#c4
	db #07,#d0,#74,#03,#c4,#07,#d0,#7c
	db #03,#c4,#07,#d0,#74,#03,#c4,#07
	db #d0,#7c,#03,#c4,#07,#d0,#74,#03
	db #c4,#07,#d0,#7c,#03,#c4,#07,#d0
	db #74,#03,#c4,#07,#d0,#7c,#03,#c4
	db #07,#d0,#74,#03,#c4,#07,#d0,#7c
	db #03,#c4,#07,#d0,#74,#03,#c4,#07
	db #c2,#60,#81,#02,#ce,#61,#ce,#78
	db #80,#03,#d2,#48,#80,#04,#ce,#60
	db #8b,#05,#ce,#78,#81,#03,#ce,#79
	db #ce,#60,#80,#02,#ce,#61,#ce,#78
	db #80,#03,#d2,#48,#80,#04,#ce,#60
	db #8b,#05,#ce,#78,#81,#03,#ce,#5c
	db #80,#02,#ce,#61,#ce,#61,#ce,#78
	db #80,#03,#d2,#48,#80,#04,#ce,#60
	db #8b,#05,#ce,#78,#81,#03,#ce,#79
	db #ce,#60,#80,#02,#ce,#61,#ce,#78
	db #80,#03,#d2,#48,#80,#04,#ce,#60
	db #8b,#05,#ce,#78,#81,#03,#c2,#d0
	db #7e,#83,#01,#c4,#07,#d0,#6e,#03
	db #c4,#07,#d0,#7e,#03,#c4,#07,#d0
	db #6e,#03,#c4,#07,#d0,#7e,#03,#c4
	db #07,#d0,#6e,#03,#c4,#07,#d0,#7e
	db #03,#c4,#07,#d0,#6e,#03,#c4,#07
	db #d0,#7e,#03,#c4,#07,#d0,#6e,#03
	db #c4,#07,#d0,#7e,#03,#c4,#07,#d0
	db #6e,#03,#c4,#07,#d0,#7e,#03,#c4
	db #07,#d0,#6e,#03,#c4,#07,#d0,#7e
	db #03,#c4,#07,#d0,#6e,#03,#c4,#07
	db #78,#83,#01,#c4,#07,#d0,#66,#03
	db #c4,#07,#d0,#70,#03,#c4,#07,#d0
	db #66,#03,#c4,#07,#d0,#78,#03,#c4
	db #07,#d0,#66,#03,#c4,#07,#d0,#70
	db #03,#c4,#07,#d0,#66,#03,#c4,#07
	db #d0,#78,#03,#c4,#07,#d0,#66,#03
	db #c4,#07,#d0,#70,#03,#c4,#07,#d0
	db #66,#03,#c4,#07,#d0,#78,#03,#c4
	db #07,#d0,#66,#03,#c4,#07,#d0,#70
	db #03,#c4,#07,#d0,#66,#03,#c4,#07
	db #c2,#58,#81,#02,#ce,#59,#ce,#70
	db #80,#06,#d2,#48,#80,#04,#ce,#58
	db #8b,#05,#ce,#70,#81,#06,#ce,#71
	db #ce,#58,#80,#02,#ce,#59,#ce,#70
	db #80,#06,#d2,#48,#80,#04,#ce,#58
	db #8b,#05,#ce,#70,#81,#06,#d2,#58
	db #80,#02,#ce,#59,#ce,#70,#80,#06
	db #d2,#48,#80,#04,#ce,#58,#8b,#05
	db #ce,#70,#81,#06,#ce,#71,#ce,#58
	db #80,#02,#ce,#59,#ce,#70,#80,#06
	db #d2,#48,#80,#04,#ce,#58,#8b,#05
	db #ce,#70,#81,#06,#ce,#71,#c2,#d0
	db #74,#83,#01,#c4,#07,#d0,#6a,#03
	db #c4,#07,#d0,#6e,#03,#c4,#07,#d0
	db #60,#03,#c4,#07,#d0,#74,#03,#c4
	db #07,#d0,#6a,#03,#c4,#07,#d0,#6e
	db #03,#c4,#07,#d0,#60,#03,#c4,#07
	db #d0,#74,#03,#c4,#07,#d0,#6a,#03
	db #c4,#07,#d0,#6e,#03,#c4,#07,#d0
	db #60,#03,#c4,#07,#d0,#74,#03,#c4
	db #07,#d0,#6a,#03,#c4,#07,#d0,#6e
	db #03,#c4,#07,#d0,#60,#03,#c4,#07
	db #70,#83,#01,#c4,#07,#d0,#60,#03
	db #c4,#07,#d0,#70,#03,#c4,#07,#d0
	db #74,#03,#c4,#07,#d0,#70,#03,#c4
	db #07,#d0,#60,#03,#c4,#07,#d0,#70
	db #03,#c4,#07,#d0,#74,#03,#c4,#07
	db #d0,#70,#03,#c4,#07,#d0,#60,#03
	db #c4,#07,#d0,#70,#03,#c4,#07,#d0
	db #74,#03,#c4,#07,#d0,#70,#03,#c4
	db #07,#d0,#60,#03,#c4,#07,#d0,#70
	db #03,#c4,#07,#d0,#74,#03,#c4,#07
	db #c2,#52,#81,#02,#ce,#53,#ce,#6a
	db #80,#03,#d2,#48,#80,#04,#ce,#52
	db #8b,#05,#ce,#6a,#81,#03,#ce,#6b
	db #ce,#52,#80,#02,#ce,#53,#ce,#6a
	db #80,#03,#d2,#48,#80,#04,#ce,#52
	db #8b,#05,#ce,#6a,#81,#03,#d2,#52
	db #80,#02,#ce,#53,#ce,#6a,#80,#03
	db #d2,#48,#80,#04,#ce,#52,#8b,#05
	db #ce,#6a,#81,#03,#ce,#6b,#ce,#52
	db #80,#02,#ce,#53,#ce,#6a,#80,#03
	db #d2,#48,#80,#04,#ce,#52,#8b,#05
	db #ce,#6a,#81,#03,#c2,#d0,#6e,#83
	db #01,#c4,#07,#d0,#66,#03,#c4,#07
	db #d0,#6e,#03,#c4,#07,#d0,#6a,#03
	db #c4,#07,#d0,#6e,#03,#c4,#07,#d0
	db #66,#03,#c4,#07,#d0,#6e,#03,#c4
	db #07,#d0,#6a,#03,#c4,#07,#d0,#6e
	db #03,#c4,#07,#d0,#66,#03,#c4,#07
	db #d0,#6e,#03,#c4,#07,#d0,#6a,#03
	db #c4,#07,#d0,#6e,#03,#c4,#07,#d0
	db #66,#03,#c4,#07,#d0,#6e,#03,#c4
	db #07,#d0,#6a,#03,#c4,#07,#7e,#83
	db #01,#c4,#07,#d0,#6e,#03,#c4,#07
	db #d0,#78,#03,#c4,#07,#d0,#64,#03
	db #c4,#07,#d0,#7e,#03,#c4,#07,#d0
	db #6e,#03,#c4,#07,#d0,#78,#03,#c4
	db #07,#d0,#64,#03,#c4,#07,#d0,#7e
	db #03,#c4,#07,#d0,#6e,#03,#c4,#07
	db #d0,#78,#03,#c4,#07,#d0,#64,#03
	db #c4,#07,#d0,#7e,#03,#c4,#07,#d0
	db #6e,#03,#c4,#07,#d0,#78,#03,#c4
	db #07,#d0,#64,#03,#c4,#07,#c2,#64
	db #81,#02,#ce,#65,#ce,#64,#80,#06
	db #d2,#48,#80,#04,#ce,#64,#8b,#05
	db #ce,#64,#81,#06,#ce,#65,#ce,#64
	db #80,#02,#ce,#65,#ce,#64,#80,#06
	db #d2,#48,#80,#04,#ce,#64,#8b,#05
	db #ce,#64,#81,#06,#d2,#64,#80,#02
	db #ce,#65,#ce,#64,#80,#06,#d2,#48
	db #80,#04,#ce,#64,#8b,#05,#ce,#64
	db #81,#06,#ce,#65,#ce,#64,#80,#02
	db #ce,#65,#ce,#64,#80,#06,#d2,#48
	db #80,#04,#ce,#64,#8b,#05,#ce,#64
	db #81,#06,#ce,#65,#c2,#d0,#7c,#83
	db #01,#c4,#07,#d0,#74,#03,#c4,#07
	db #d0,#74,#03,#c4,#07,#d0,#6a,#03
	db #c4,#07,#d0,#7c,#03,#c4,#07,#d0
	db #74,#03,#c4,#07,#d0,#74,#03,#c4
	db #07,#d0,#6a,#03,#c4,#07,#d0,#7c
	db #03,#c4,#07,#d0,#74,#03,#c4,#07
	db #d0,#74,#03,#c4,#07,#d0,#6a,#03
	db #c4,#07,#d0,#7c,#03,#c4,#07,#d0
	db #74,#03,#c4,#07,#d0,#74,#03,#c4
	db #07,#d0,#6a,#03,#c4,#07,#7c,#83
	db #01,#c4,#07,#d0,#74,#03,#c4,#07
	db #d0,#78,#c1,#05,#fb,#7d,#7c,#80
	db #07,#ce,#78,#80,#05,#ce,#6f,#ce
	db #6e,#80,#07,#ea,#c4,#02,#ce,#c4
	db #03,#c4,#07,#7c,#81,#05,#ce,#79
	db #ce,#7d,#ce,#7f,#7e,#80,#07,#ce
	db #c4,#07,#7e,#c1,#05,#fc,#83,#ce
	db #82,#80,#07,#d0,#7e,#80,#05,#ce
	db #7d,#d2,#75,#ce,#74,#80,#07,#c2
	db #d0,#7e,#83,#01,#c4,#07,#d0,#6e
	db #03,#c4,#07,#7c,#03,#c4,#07,#7e
	db #03,#c4,#07,#74,#03,#c4,#07,#6e
	db #03,#c4,#07,#7c,#03,#c4,#07,#7e
	db #03,#c4,#07,#74,#03,#c4,#07,#6e
	db #03,#c4,#07,#7c,#03,#c4,#07,#7e
	db #03,#c4,#07,#74,#03,#c4,#07,#6e
	db #03,#c4,#07,#7c,#03,#c4,#07,#7e
	db #03,#c4,#07,#74,#03,#c4,#07,#6e
	db #03,#c4,#07,#7c,#03,#c4,#07,#7e
	db #03,#c4,#07,#74,#03,#c4,#07,#6e
	db #03,#c4,#07,#7c,#03,#c4,#07,#7e
	db #03,#c4,#07,#74,#03,#c4,#07,#6e
	db #03,#c4,#07,#7c,#03,#c4,#07,#7e
	db #03,#c4,#07,#74,#03,#c4,#07,#6e
	db #03,#c4,#07,#d4,#c4,#01,#ce,#c4
	db #02,#c4,#07,#74,#81,#05,#d2,#79
	db #ce,#67,#ce,#66,#80,#07,#f2,#c4
	db #01,#ce,#c4,#02,#c4,#07,#74,#81
	db #05,#d2,#79,#ce,#67,#ce,#66,#80
	db #07,#c2,#78,#83,#01,#c4,#07,#74
	db #03,#c4,#07,#66,#03,#c4,#07,#6a
	db #03,#c4,#07,#70,#03,#c4,#07,#6e
	db #03,#c4,#07,#66,#03,#c4,#07,#60
	db #03,#c4,#07,#78,#03,#c4,#07,#74
	db #03,#c4,#07,#66,#03,#c4,#07,#6a
	db #03,#c4,#07,#70,#03,#c4,#07,#6e
	db #03,#c4,#07,#66,#03,#c4,#07,#60
	db #03,#c4,#07,#78,#03,#c4,#07,#74
	db #03,#c4,#07,#66,#03,#c4,#07,#6a
	db #03,#c4,#07,#70,#03,#c4,#07,#6e
	db #03,#c4,#07,#66,#03,#c4,#07,#60
	db #03,#c4,#07,#78,#03,#c4,#07,#74
	db #03,#c4,#07,#66,#03,#c4,#07,#6a
	db #03,#c4,#07,#70,#03,#c4,#07,#6e
	db #03,#c4,#07,#66,#03,#c4,#07,#60
	db #03,#c4,#07,#d4,#c4,#01,#ce,#c4
	db #02,#c4,#07,#78,#c1,#05,#fb,#7d
	db #7c,#80,#07,#ce,#78,#80,#05,#ce
	db #6f,#ce,#6e,#80,#07,#ea,#c4,#01
	db #ce,#c4,#02,#c4,#07,#7c,#81,#05
	db #ce,#79,#ce,#7d,#ce,#7f,#7e,#80
	db #07,#ce,#c4,#07,#7e,#c1,#05,#fc
	db #83,#ce,#82,#80,#07,#d0,#86,#80
	db #05,#ce,#8d,#ce,#8c,#80,#07,#ce
	db #78,#80,#05,#ce,#78,#80,#07,#d0
	db #c4,#01,#7c,#83,#01,#c4,#07,#7e
	db #03,#c4,#07,#74,#03,#c4,#07,#6e
	db #03,#c4,#07,#7c,#03,#c4,#07,#7e
	db #03,#c4,#07,#74,#03,#c4,#07,#6e
	db #03,#c4,#07,#7c,#03,#c4,#07,#7e
	db #03,#c4,#07,#74,#03,#c4,#07,#6e
	db #03,#c4,#07,#7c,#03,#c4,#07,#7e
	db #03,#c4,#07,#74,#03,#c4,#07,#6e
	db #03,#c4,#07,#7c,#03,#c4,#07,#7e
	db #03,#c4,#07,#74,#03,#c4,#07,#6e
	db #03,#c4,#07,#7c,#03,#c4,#07,#7e
	db #03,#c4,#07,#74,#03,#c4,#07,#6e
	db #03,#c4,#07,#7c,#03,#c4,#07,#7e
	db #03,#c4,#07,#74,#03,#c4,#07,#6e
	db #03,#c4,#07,#7c,#03,#c4,#07,#7e
	db #03,#c4,#07,#74,#03,#c4,#07,#6e
	db #03,#c4,#07,#66,#81,#05,#ce,#66
	db #80,#07,#d2,#c4,#01,#c4,#07,#74
	db #81,#05,#d2,#79,#ce,#67,#ce,#66
	db #80,#07,#f2,#c4,#01,#ce,#c4,#02
	db #c4,#07,#74,#81,#05,#d2,#79,#ce
	db #67,#ce,#66,#80,#07,#c2,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #8f,#b9,#7a,#03,#07,#e7,#0d,#7a
	db #e0,#46,#d0,#bd,#6f,#4c,#56,#2e
	db #10,#41,#99,#40,#00,#c4,#19,#00
	db #92,#62,#10,#5f,#3c,#e0,#10,#60
	db #63,#8c,#51,#c0,#b9,#ed,#b7,#1d
	db #cb,#ff,#c5,#bd,#19,#86,#24,#8c
	db #9c,#58,#a3,#50,#c1,#a4,#40,#b7
	db #b0,#90,#71,#10,#5f,#be,#ec,#23
	db #10,#c0,#d1,#d0,#bf,#1f,#04,#f3
	db #fd,#34,#5c,#a8,#67,#0c,#68,#50
	db #a7,#f1,#8d,#bf,#9c,#49,#30,#61
	db #b2,#c0,#1a,#c1,#3c,#d1,#c0,#bf
	db #e3,#93,#2b,#b7,#4f,#1f,#20,#6d
	db #f0,#47,#a7,#c0,#14,#d0,#a2,#b5
	db #6c,#b9,#00,#cb,#49,#60,#c4,#9d
	db #f9,#31,#10,#13,#60,#dd,#ae,#12
	db #f9,#f4,#ff,#8d,#4d,#d0,#5e,#56
	db #40,#96,#a9,#40,#cf,#9e,#06,#23
	db #bd,#35,#5f,#70,#c1,#45,#c2,#10
	db #01,#3f,#d3,#48,#47,#00,#c1,#85
	db #15,#10,#23,#80,#bf,#d6,#81,#76
	db #be,#3e,#74,#d0,#a4,#6d,#f3,#6b
	db #40,#3d,#99,#b0,#26,#da,#ad,#a0
	db #28,#e1,#a5,#01,#00,#85,#2d,#01
	db #a5,#87,#1e,#b7,#5b,#ef,#b4,#51
	db #c3,#21,#13,#80,#a5,#0f,#2d,#0e
	db #97,#ff,#5a,#f7,#f8,#bb,#00,#2a
	db #ff,#2d,#60,#aa,#62,#92,#3a,#4d
	db #a5,#bb,#b3,#1b,#44,#82,#1f,#1f
	db #5f,#03,#e5,#a6,#04,#1f,#79,#bd
	db #df,#ad,#f1,#aa,#2d,#00,#c5,#5d
	db #0d,#04,#5f,#e3,#bf,#4c,#a5,#10
	db #9d,#e7,#3c,#33,#ff,#00,#72,#3b
	db #a1,#30,#e1,#c1,#10,#85,#10,#31
	db #59,#5f,#df,#df,#57,#ff,#02,#b5
	db #9a,#63,#de,#1b,#5e,#d3,#6e,#d7
	db #c1,#2d,#87,#78,#44,#6f,#2d,#97
	db #bf,#7e,#42,#5f,#56,#50,#9f,#02
	db #4a,#ff,#cf,#7f,#cc,#06,#44,#46
	db #07,#ae,#4c,#5b,#0f,#5e,#ce,#14
	db #5f,#8b,#1f,#bc,#c0,#ec,#07,#2d
	db #91,#5e,#4f,#bd,#3b,#0f,#cd,#cd
	db #1e,#b7,#7f,#2f,#00,#25,#11,#5f
	db #ff,#d9,#02,#42,#65,#56,#01,#14
	db #d2,#57,#6d,#99,#63,#7f,#61,#5f
	db #db,#98,#9f,#1c,#92,#57,#b0,#ac
	db #4e,#fb,#74,#d6,#03,#1e,#84,#be
	db #49,#13,#4f,#a5,#14,#a0,#ae,#01
	db #72,#78,#1f,#7d,#88,#2e,#7a,#59
	db #10,#fc,#5f,#b2,#57,#7f,#98,#4a
	db #53,#dd,#76,#e9,#4d,#02,#7b,#4f
	db #fc,#d7,#b9,#1c,#d3,#bf,#d5,#00
	db #f1,#53,#b5,#38,#00,#a5,#88,#c7
	db #ad,#a5,#6f,#0e,#f1,#e1,#3e,#10
	db #24,#d9,#96,#f8,#95,#88,#ea,#54
	db #f8,#7f,#ff,#fd,#fb,#37,#00,#0d
	db #42,#48,#e0,#78,#5e,#80,#10,#c8
	db #20,#01,#20,#30,#08,#00,#80,#b0
	db #a0,#05,#b0,#f0,#0e,#1e,#5a,#0f
	db #f0,#9f,#51,#d2,#5a,#80,#1d,#d1
	db #a0,#f0,#91,#5f,#12,#0e,#01,#f3
	db #07,#af,#80,#3f,#cd,#f8,#74,#62
	db #00,#a0,#aa,#04,#62,#00,#60,#ab
	db #a0,#bf,#d3,#1b,#d3,#31,#e2,#66
	db #42,#01,#00,#37,#48,#09,#00,#d5
	db #60,#4c,#af,#00,#04,#2e,#00,#11
	db #80,#c2,#11,#10,#80,#da,#01,#a0
	db #b0,#e0,#f0,#3f,#00,#be,#19,#e3
	db #1e,#a8,#e0,#b9,#f7,#8f,#bf,#1f
	db #79,#83,#a9,#b7,#3d,#c3,#46,#c6
	db #5f,#c6,#02,#20,#66,#48,#8e,#30
	db #8f,#bf,#5d,#00,#47,#c0,#b9,#b4
	db #b7,#78,#4b,#ff,#c3,#fa,#c4,#42
	db #a0,#ee,#57,#c0,#3c,#65,#a0,#6c
	db #15,#64,#72,#e0,#ad,#6a,#de,#c7
	db #c1,#a1,#b0,#80,#bf,#1e,#f3,#f2
	db #f4,#9e,#70,#e0,#56,#19,#4e,#46
	db #e9,#0f,#24,#30,#a2,#a7,#4c,#df
	db #7d,#7b,#48,#30,#c0,#bf,#f1,#e2
	db #5b,#b7,#9e,#29,#df,#f0,#97,#f5
	db #29,#ee,#f5,#6c,#20,#6f,#a2,#a4
	db #c0,#73,#60,#e5,#f1,#17,#25,#84
	db #f9,#bd,#51,#8a,#d7,#2a,#84,#bb
	db #73,#b0,#14,#b1,#55,#a5,#da,#a0
	db #47,#d0,#5b,#d2,#e1,#3f,#7b,#4b
	db #e8,#b1,#1d,#76,#47,#cf,#11,#bf
	db #e9,#81,#3b,#be,#1f,#2a,#f0,#e6
	db #af,#5e,#38,#9d,#e1,#20,#9d,#5b
	db #56,#40,#01,#d2,#4a,#0a,#0a,#5a
	db #03,#5a,#1f,#7b,#db,#ef,#3c,#1d
	db #81,#d2,#4b,#78,#13,#42,#14,#1e
	db #4a,#0e,#bf,#9e,#5d,#c9,#78,#84
	db #ff,#9e,#68,#ab,#71,#5e,#d9,#78
	db #e0,#91,#32,#b0,#59,#36,#1a,#4b
	db #be,#37,#2f,#2f,#c4,#50,#1e,#07
	db #7b,#f9,#9f,#46,#cf,#b1,#c9,#6a
	db #78,#5f,#c2,#71,#95,#76,#f9,#7b
	db #23,#42,#be,#e6,#7e,#23,#f7,#20
	db #ef,#01,#ef,#af,#ef,#bf,#85,#05
	db #78,#83,#88,#5b,#8b,#53,#02,#e7
	db #e9,#52,#af,#00,#cf,#61,#00,#0f
	db #bc,#ef,#7f,#ce,#d1,#2d,#12,#5a
	db #1e,#5e,#44,#03,#5a,#2f,#c0,#51
	db #bf,#f8,#d5,#47,#5a,#58,#29,#af
	db #64,#49,#bf,#06,#7a,#a7,#21,#16
	db #28,#2f,#00,#01,#5f,#e1,#60,#c9
	db #f8,#f0,#93,#8d,#22,#03,#ba,#ba
	db #ce,#03,#89,#d3,#0c,#42,#e2,#48
	db #bf,#b7,#97,#7f,#b4,#0f,#88,#a5
	db #30,#35,#22,#0e,#82,#75,#2e,#13
	db #71,#88,#2f,#be,#f3,#31,#2f,#88
	db #f2,#c8,#01,#8f,#cc,#7c,#fb,#75
	db #d6,#03,#48,#83,#be,#48,#07,#9e
	db #5a,#38,#d2,#0f,#5e,#94,#fb,#c1
	db #02,#3f,#cb,#88,#2e,#f5,#f1,#59
	db #ff,#5f,#4f,#5f,#c5,#b3,#29,#9f
	db #fc,#c9,#8a,#5d,#48,#02,#1e,#d7
	db #ee,#ff,#3e,#48,#b9,#e2,#bf,#9e
	db #9f,#00,#8d,#9e,#58,#64,#59,#e6
	db #84,#3e,#d2,#b8,#83,#78,#5a,#2e
	db #f1,#7f,#0e,#bf,#9e,#7f,#00,#fc
	db #02,#0b,#30,#40,#40,#00,#01,#8a
	db #57,#08,#37,#06,#91,#a4,#50,#00
	db #d0,#33,#40,#50,#00,#cd,#05,#87
	db #c5,#5a,#e2,#ba,#cf,#e3,#14,#9f
	db #5e,#9a,#c0,#6f,#50,#35,#5b,#0e
	db #40,#01,#55,#10,#12,#0f,#01,#32
	db #70,#65,#59,#8f,#60,#6f,#70,#bf
	db #74,#fc,#60,#e5,#70,#59,#52,#8d
	db #50,#05,#cd,#65,#11,#c9,#0a,#0f
	db #10,#46,#23,#c0,#c2,#62,#60,#c4
	db #00,#be,#31,#40,#f1,#be,#4f,#10
	db #60,#cc,#6c,#50,#5c,#af,#66,#60
	db #ba,#10,#46,#cd,#5f,#60,#c8,#14
	db #c3,#9b,#70,#cd,#91,#bf,#8f,#40
	db #32,#3f,#84,#73,#fb,#00,#e4,#53
	db #70,#8e,#a2,#00,#82,#7b,#cd,#6f
	db #07,#de,#62,#77,#32,#5f,#ff,#55
	db #80,#60,#e5,#76,#af,#80,#60,#c9
	db #37,#f0,#50,#4b,#3f,#89,#5b,#10
	db #0a,#4b,#85,#71,#d0,#88,#10,#c4
	db #c8,#c1,#c9,#df,#e5,#10,#61,#dc
	db #f8,#ec,#c0,#7e,#49,#10,#d0,#88
	db #2c,#67,#60,#5a,#1e,#cf,#52,#55
	db #a3,#cf,#47,#08,#50,#c1,#ee,#b0
	db #33,#17,#9c,#19,#c4,#12,#60,#df
	db #fe,#4e,#5f,#c6,#bd,#c7,#b9,#47
	db #10,#70,#66,#12,#ff,#a8,#70,#00
	db #e1,#f0,#41,#a5,#00,#87,#e1,#b7
	db #d3,#be,#ab,#88,#1b,#bf,#4c,#48
	db #12,#c0,#be,#fc,#85,#f0,#4f,#b1
	db #12,#40,#98,#5c,#a3,#d1,#67,#d7
	db #72,#58,#00,#de,#c6,#01,#1f,#9f
	db #db,#ef,#3c,#f1,#2a,#01,#98,#10
	db #2d,#14,#07,#9f,#12,#86,#5f,#8e
	db #33,#f1,#ba,#0f,#81,#35,#ef,#6c
	db #f2,#73,#42,#49,#a0,#b5,#12,#a5
	db #f5,#a3,#87,#5f,#00,#16,#4f,#02
	db #5f,#03,#5f,#7f,#bd,#fd,#cf,#5f
	db #3c,#d6,#60,#87,#5f,#87,#07,#2d
	db #39,#87,#87,#8d,#f1,#ce,#77,#ff
	db #00,#d0,#7f,#02,#ed,#87,#08,#22
	db #00,#25,#9e,#58,#05,#00,#52,#7f
	db #de,#14,#63,#22,#bf,#0f,#bd,#9f
	db #ef,#0c,#9e,#e1,#0f,#5e,#98,#70
	db #e7,#e7,#ed,#c8,#67,#5f,#43,#02
	db #0d,#ef,#4f,#69,#08,#42,#5f,#4c
	db #af,#d8,#1f,#e1,#5f,#7f,#5e,#b1
	db #c3,#17,#1f,#bc,#c0,#da,#11,#c1
	db #29,#62,#87,#62,#8f,#4c,#5f,#c6
	db #8b,#f2,#00,#a7,#4f,#34,#94,#5b
	db #ef,#8e,#bf,#54,#5f,#5a,#a0,#a4
	db #04,#88,#a7,#ae,#31,#57,#7f,#ee
	db #f0,#9f,#ba,#57,#48,#4f,#85,#df
	db #a5,#60,#9a,#84,#0f,#9e,#ad,#5f
	db #d0,#af,#c6,#22,#57,#ba,#94,#95
	db #94,#97,#a6,#bb,#11,#2d,#da,#4b
	db #8c,#e3,#fe,#00,#3a,#47,#b3,#5a
	db #4c,#cf,#cc,#3f,#93,#ed,#5d,#f8
	db #ff,#00,#fb,#28,#03,#10,#79,#1a
	db #0e,#80,#c3,#72,#88,#c3,#0d,#80
	db #c3,#55,#56,#ee,#ec,#88,#af,#00
	db #32,#0b,#80,#32,#3d,#88,#3e,#00
	db #01,#fe,#00,#28,#07,#3c,#32,#15
	db #17,#14,#b0,#82,#13,#06,#b7,#04
	db #d2,#07,#81,#32,#2f,#02,#9a,#80
	db #02,#05,#82,#3e,#b7,#32,#25,#40
	db #80,#22,#d6,#01,#30,#31,#21,#80
	db #32,#7e,#23,#cb,#3f,#38,#25,#00
	db #47,#e6,#1f,#cb,#67,#28,#02,#f6
	db #02,#e0,#32,#3c,#81,#cb,#10,#01
	db #01,#30,#05,#7e,#32,#a7,#81,#23
	db #08,#c8,#12,#82,#23,#06,#22,#3e
	db #80,#18,#06,#04,#1c,#32,#38,#39
	db #06,#38,#07,#32,#72,#08,#1d,#18
	db #1b,#40,#88,#05,#22,#7f,#20,#0d
	db #32,#16,#7b,#80,#47,#0e,#0a,#60
	db #1d,#78,#32,#70,#60,#82,#1d,#11
	db #35,#81,#23,#ed,#a0,#01,#11,#a0
	db #06,#93,#0b,#82,#06,#4c,#22,#9d
	db #3c,#1c,#b7,#20,#0e,#4a,#06,#16
	db #32,#bd,#80,#28,#1c,#18,#46,#0d
	db #01,#08,#32,#cb,#80,#2a,#d9,#4b
	db #3b,#25,#59,#64,#14,#1e,#c2,#40
	db #b8,#80,#5e,#23,#56,#a0,#59,#18
	db #eb,#22,#c6,#80,#b0,#76,#24,#3e
	db #01,#f2,#14,#23,#18,#09,#cf,#87
	db #1e,#34,#68,#12,#92,#d2,#32,#17
	db #29,#a4,#4e,#90,#c4,#29,#0c,#42
	db #22,#44,#0e,#fb,#08,#70,#81,#26
	db #62,#c4,#26,#01,#01,#11,#80,#05
	db #dd,#2e,#00,#cd,#af,#83,#00,#dd
	db #7d,#32,#3f,#81,#22,#ba,#82,#22
	db #d9,#22,#ac,#45,#79,#e1,#27,#24
	db #b4,#b4,#00,#fd,#b4,#20,#39,#32
	db #d7,#82,#57,#00,#7b,#32,#3b,#81
	db #6a,#65,#22,#b7,#8d,#cb,#10,#eb
	db #29,#19,#5d,#66,#6f,#11,#23,#e8
	db #82,#cb,#87,#e0,#06,#26,#d9,#82
	db #04,#32,#ea,#04,#f9,#31,#c9,#26
	db #48,#fd,#b6,#29,#77,#fd,#50,#ec
	db #3c,#6a,#9e,#02,#6a,#68,#aa,#6a
	db #0c,#83,#98,#6a,#a0,#6a,#a3,#8e
	db #6a,#06,#83,#6a,#4c,#29,#83,#6a
	db #69,#a6,#6a,#09,#83,#6a,#e4,#3a
	db #70,#83,#63,#32,#e4,#06,#2b,#83
	db #c3,#04,#3c,#83,#6a,#83,#1b,#83
	db #6a,#b7,#9a,#6a,#9b,#03,#6a,#cc
	db #15,#82,#32,#22,#5e,#6a,#f4,#48
	db #6a,#0e,#82,#3a,#32,#58,#6a,#69
	db #7b,#6a,#11,#82,#6a,#8f,#5b,#6a
	db #37,#8c,#63,#2e,#84,#06,#5a,#7d
	db #6a,#8e,#e5,#6a,#6d,#6a,#e1,#bc
	db #49,#a4,#3a,#05,#9c,#db,#0a,#18
	db #36,#3e,#37,#c7,#44,#2a,#ca,#d8
	db #71,#af,#0a,#ed,#52,#20,#26,#9b
	db #49,#f7,#c9,#e4,#4c,#54,#a4,#aa
	db #d7,#05,#7f,#05,#16,#22,#05,#cd
	db #a6,#3b,#4e,#b2,#60,#4a,#16,#00
	db #d9,#a5,#99,#92,#02,#19,#d7,#81
	db #22,#ea,#84,#3a,#fd,#21,#dd,#6f
	db #11,#80,#fd,#21,#d8,#86,#3a,#90
	db #f3,#cd,#44,#2b,#84,#eb,#c1,#80
	db #03,#3c,#18,#1d,#72,#21,#5c,#11
	db #c1,#2d,#b7,#38,#0b,#47,#b2,#f6
	db #12,#3d,#32,#f3,#09,#3c,#ed,#53
	db #ec,#27,#a0,#02,#dd,#7c,#32,#ab
	db #e2,#2f,#51,#29,#be,#35,#51,#aa
	db #51,#d8,#29,#87,#3a,#93,#da,#51
	db #ee,#92,#dd,#51,#93,#da,#51,#24
	db #d3,#9c,#87,#c7,#51,#a8,#51,#a3
	db #5b,#51,#89,#cb,#3a,#51,#4f,#7a
	db #51,#7b,#51,#bd,#84,#51,#8d,#7d
	db #51,#92,#ba,#ee,#52,#51,#04,#cb
	db #27,#f6,#00,#17,#02,#c3,#2b,#cd
	db #86,#9e,#80,#33,#fe,#60,#30,#0c
	db #37,#fd,#26,#00,#52,#01,#46,#23
	db #78,#1f,#30,#03,#e6,#cf,#c5,#ea
	db #a1,#02,#5e,#f0,#6a,#0e,#84,#22
	db #d9,#6f,#26,#2e,#30,#13,#01,#25
	db #fd,#c8,#23,#c9,#86,#77,#07,#2e
	db #92,#18,#f0,#07,#00,#01,#d6,#60
	db #28,#1a,#3d,#28,#2e,#92,#02,#1d
	db #02,#d2,#02,#48,#21,#02,#33,#02
	db #27,#3d,#23,#d9,#fd,#a0,#59,#c9
	db #3e,#08,#cb,#4e,#08,#2e,#38,#09
	db #48,#18,#aa,#0a,#ff,#d9,#e6,#1e
	db #92,#d1,#78,#91,#68,#fd,#c3,#0d
	db #1e,#00,#13,#8c,#77,#00,#7b,#c2
	db #fa,#84,#cb,#63,#28,#5d,#00,#7e
	db #cb,#77,#28,#25,#16,#08,#23,#c0
	db #8f,#28,#05,#b0,#e5,#87,#cb,#22
	db #9a,#7b,#9b,#11,#d9,#92,#d9,#8c
	db #50,#bb,#77,#08,#36,#dd,#62,#7e
	db #05,#00,#23,#c1,#04,#1b,#23,#c9
	db #1d,#80,#23,#16,#01,#cb,#6f,#58
	db #28,#ec,#82,#f5,#24,#3d,#18,#2a
	db #0f,#62,#bb,#01,#36,#36,#00,#16
	db #09,#18,#f5,#57,#61,#18,#28,#f1
	db #1a,#e2,#26,#02,#08,#cb,#6b,#28
	db #04,#7e,#9e,#28,#0e,#cb,#73,#2f
	db #28,#06,#ce,#55,#18,#c1,#c2,#85
	db #a1,#40,#38,#02,#3e,#5f,#25,#e5
	db #87,#89,#02,#01,#0d,#86,#09,#c1
	db #24,#46,#a8,#60,#cb,#2c,#cb,#04
	db #1d,#09,#19,#fd,#75,#90,#81,#74
	db #1b,#e1,#c9,#c0,#80,#07,#7b,#d9
	db #2a,#e6,#40,#98,#01,#d9,#7b,#f6
	db #08,#e6,#09,#57,#65,#89,#10,#ce
	db #40,#e6,#03,#87,#c6,#b8,#f6,#36
	db #88,#08,#cb,#5b,#28,#09,#ec,#c8
	db #c3,#d4,#18,#50,#62,#81,#60,#78
	db #28,#0b,#cb,#70,#e3,#96,#13,#18
	db #e7,#85,#93,#84,#80,#85,#f9,#80
	db #e6,#0e,#32,#91,#85,#88,#f6,#c2
	db #f2,#91,#04,#4b,#87,#d4,#a2,#51
	db #93,#23,#53,#8a,#ee,#51,#2a,#8f
	db #8a,#1c,#99,#4d,#44,#c7,#a8,#0c
	db #31,#6f,#20,#08,#72,#79,#fd,#71
	db #97,#89,#70,#1b,#d2,#13,#7b,#e1
	db #4c,#f5,#9b,#21,#85,#79,#75,#cb
	db #38,#1f,#02,#f0,#a2,#4f,#fb,#5c
	db #03,#8f,#00,#4c,#88,#83,#1b,#22
	db #88,#3a,#84,#08,#b7,#28,#2d,#3a
	db #83,#9a,#5f,#33,#cf,#8b,#91,#33
	db #0f,#21,#17,#02,#85,#47,#fc,#18
	db #09,#8e,#f7,#e3,#80,#09,#23,#e5
	db #b7,#43,#8e,#e1,#71,#9d,#a0,#a9
	db #4c,#93,#b2,#4d,#93,#60,#ee,#0e
	db #18,#0e,#00,#4d,#0d,#8e,#0c,#da
	db #0b,#2f,#0b,#00,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#00,#61,#08,#e9
	db #07,#77,#07,#0c,#07,#00,#a7,#06
	db #47,#06,#ed,#05,#98,#05,#00,#47
	db #05,#fc,#04,#b4,#04,#70,#04,#00
	db #31,#04,#f4,#03,#bc,#03,#86,#03
	db #00,#53,#03,#24,#03,#f6,#02,#cc
	db #02,#48,#a4,#99,#02,#22,#5a,#02
	db #ea,#00,#18,#02,#fa,#01,#de,#01
	db #c3,#01,#00,#aa,#01,#92,#01,#7b
	db #01,#66,#01,#00,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#00,#0c,#01,#fd
	db #00,#ef,#00,#e1,#00,#50,#d5,#af
	db #00,#00,#be,#00,#b3,#00,#a9,#00
	db #9f,#00,#00,#96,#00,#8e,#00,#86
	db #00,#7f,#00,#a2,#94,#89,#20,#6a
	db #00,#64,#00,#00,#5f,#00,#59,#00
	db #54,#00,#50,#00,#00,#4b,#00,#47
	db #00,#43,#00,#3f,#00,#02,#3c,#00
	db #38,#00,#35,#00,#9f,#20,#2f,#00
	db #2d,#00,#58,#2a,#ac,#00,#91,#c1
	db #24,#9c,#61,#00,#20,#f7,#48,#1c
	db #2c,#00,#1b,#da,#d9,#f4,#00,#e7
	db #60,#15,#00,#14,#0b,#00,#13,#00
	db #12,#eb,#40,#10,#00,#67,#06,#00
	db #f4,#d9,#01,#c0,#f6,#1e,#80,#d9
	db #b6,#dc,#10,#15,#1d,#ed,#51,#d9
	db #09,#ed,#49,#ed,#71,#04,#79,#02
	db #21,#59,#07,#32,#da,#86,#1a,#db
	db #01,#1a,#dd,#f5,#1a,#e0,#08,#f7
	db #1a,#3b,#10,#87,#1a,#7b,#02,#1a
	db #bc,#2b,#1a,#1e,#03,#1a,#ef,#46
	db #1a,#07,#09,#1a,#bb,#61,#1a,#c1
	db #04,#1a,#ee,#7c,#f0,#1a,#7b,#05
	db #1a,#bc,#97,#1a,#1e,#0a,#1a,#ef
	db #b2,#1a,#07,#06,#1a,#ba,#cd,#1a
	db #18,#7c,#fe,#c0,#19,#07,#f7,#19
	db #78,#e7,#34,#3d,#0b,#1a,#ce,#02
	db #88,#1a,#de,#0c,#1a,#ee,#1d,#1a
	db #02,#ff,#20,#06,#67,#bc,#b0,#c8
	db #7c,#3d,#16,#0d,#20,#c3,#38,#88
	db #c9,#af,#b0,#81,#87,#32,#5f,#02
	db #09,#b0,#87,#3d,#bc,#48,#ee,#c8
	db #a0,#cc,#6e,#33,#3e,#3f,#c2,#09
	db #21,#06,#b9,#a8,#ee,#09,#23,#81
	db #11,#03,#07,#11,#e1,#b7,#ae,#31
	db #e2,#b7,#8b,#b3,#06,#cb,#69,#ec
	db #f9,#7b,#94,#a0,#2e,#9a,#06,#5c
	db #a0,#06,#b8,#a6,#06,#bc,#84,#fb
	db #9d,#9f,#a7,#80,#a7,#27,#ed,#e0
	db #22,#83,#82,#3f,#7e,#e6,#cf,#56
	db #2a,#1d,#08,#88,#ac,#82,#2a,#42
	db #22,#d4,#8b,#02,#3f,#82,#87,#d1
	db #eb,#01,#07,#fd,#57,#db,#a7,#f3
	db #67,#8b,#61,#22,#e8,#08,#2e,#3a
	db #05,#ae,#99,#eb,#1b,#e1,#a2,#ee
	db #4f,#13,#53,#40,#83,#03,#92,#03
	db #18,#e0,#0b,#32,#cd,#07,#fe,#3b
	db #9b,#80,#21,#2e,#89,#7e,#88,#e0
	db #47,#23,#b4,#6c,#45,#12,#10,#69
	db #f9,#bd,#f0,#47,#e2,#07,#f3,#86
	db #94,#06,#44,#87,#c6,#c6,#95,#87
	db #9b,#11,#e5,#45,#e4,#e3,#15,#bf
	db #96,#bc,#61,#b0,#be,#d7,#bd,#41
	db #bd,#80,#cb,#80,#c0,#d7,#d6,#1c
	db #86,#6c,#b6,#38,#7d,#81,#9f,#b6
	db #e1,#11,#ff,#f2,#45,#d9,#14,#a5
	db #51,#8c,#d8,#34,#bf,#d3,#8b,#49
	db #84,#8f,#24,#8e,#92,#8d,#49,#e0
	db #c7,#24,#a8,#9d,#88,#71,#b8,#e8
	db #b0,#03,#b7,#ea,#7d,#82,#96,#ad
	db #e3,#00,#00,#fb,#20,#53,#4b,#31
	db #30,#24,#00,#8a,#b3,#b0,#d3,#8a
	db #20,#01,#8a,#8c,#8a,#8f,#8a,#1a
	db #8a,#09,#c9,#05,#c0,#1c,#00,#21
	db #7f,#11,#40,#8b,#91,#8b,#00,#ef
	db #8b,#40,#8c,#91,#8c,#ef,#8c,#f4
	db #0b,#00,#8d,#91,#8d,#ed,#8d,#3e
	db #8e,#8f,#04,#8e,#ed,#8e,#3e,#8f
	db #17,#88,#10,#8f,#03,#90,#17,#2a
	db #90,#ab,#41,#90,#0b,#fa,#90,#7b
	db #91,#0b,#bf,#23,#9e,#22,#00,#a6
	db #91,#9f,#8a,#a9,#8a,#b6,#8a,#00
	db #c9,#8a,#db,#8a,#0d,#8b,#15,#8b
	db #18,#27,#8b,#a6,#0f,#ff,#46,#37
	db #a8,#b1,#b0,#17,#00,#09,#05,#0d
	db #0d,#2d,#f4,#01,#16,#54,#22,#fc
	db #03,#00,#1a,#05,#81,#16,#01,#b9
	db #12,#db,#12,#c8,#2c,#03,#2c,#cb
	db #ae,#04,#6b,#11,#43,#11,#80,#3f
	db #28,#0c,#3e,#00,#28,#0d,#3d,#27
	db #10,#1c,#27,#3b,#00,#26,#0f,#3a
	db #26,#0e,#1a,#25,#39,#0e,#25,#0e
	db #39,#24,#d2,#00,#24,#38,#23,#0e
	db #37,#23,#00,#09,#17,#22,#36,#22
	db #0e,#36,#21,#33,#09,#14,#73,#63
	db #15,#0f,#39,#79,#4b,#cb,#04,#4b
	db #71,#04,#2e,#f6,#16,#19,#85,#4f
	db #ff,#ff,#4f,#fa,#5a,#05,#01,#94
	db #0b,#02,#02,#05,#7c,#01,#83,#01
	db #c4,#07,#d0,#74,#03,#04,#87,#7c
	db #03,#09,#f0,#40,#c2,#60,#81,#02
	db #ce,#00,#61,#ce,#78,#80,#03,#d2
	db #48,#80,#04,#04,#ce,#60,#8b,#05
	db #0b,#81,#13,#03,#ce,#79,#09,#80
	db #17,#e3,#71,#5c,#15,#2f,#f9,#02
	db #c2,#d0,#7e,#af,#38,#69,#6e,#6e
	db #7e,#03,#09,#fc,#13,#78,#4f,#86
	db #66,#0e,#9d,#70,#03,#09,#9f,#78
	db #03,#13,#b0,#c2,#46,#58,#ff,#02
	db #59,#ce,#70,#80,#06,#b7,#38,#46
	db #58,#b7,#02,#70,#81,#06,#ce,#71
	db #09,#7c,#80,#17,#4f,#d2,#15,#93
	db #2d,#e7,#92,#17,#c2,#e3,#47,#af
	db #08,#6a,#c8,#f0,#4f,#60,#82,#87
	db #13,#ea,#b8,#70,#4f,#e1,#1d,#70
	db #22,#e1,#09,#c7,#13,#ea,#91,#c2
	db #52,#ff,#82,#53,#ce,#6a,#b7,#7a
	db #46,#52,#b9,#27,#6a,#cf,#13,#6b
	db #09,#80,#17,#e2,#7c,#d2,#15,#9f
	db #2d,#3c,#fd,#49,#6e,#ad,#f1,#47
	db #6e,#cb,#af,#13,#ea,#d3,#cd,#94
	db #cb,#f0,#64,#a7,#a5,#5f,#13,#d0
	db #23,#c2,#64,#fd,#04,#65,#ce,#64
	db #b7,#f4,#64,#8c,#b7,#9c,#11,#06
	db #11,#7c,#17,#4f,#d2,#15,#93,#2d
	db #e7,#a2,#11,#ff,#bf,#ad,#29,#cb
	db #f1,#bf,#85,#1f,#13,#d0,#f2,#4f
	db #00,#78,#c1,#05,#fb,#7d,#7c,#80
	db #07,#b4,#f2,#84,#6e,#6f,#ce,#6e
	db #09,#ea,#44,#c4,#85,#c4,#d5,#24
	db #81,#10,#8f,#70,#7d,#ce,#7f,#64
	db #7e,#1d,#b3,#a4,#28,#fc,#14,#83
	db #ce,#82,#0b,#80,#98,#29,#7d,#0a
	db #d2,#75,#ce,#74,#0b,#98,#fc,#f6
	db #67,#9b,#57,#56,#7f,#0f,#a3,#08
	db #d4,#c4,#01,#ce,#aa,#b2,#0f,#a7
	db #24,#d2,#a7,#42,#67,#ce,#66,#8e
	db #27,#f2,#12,#c2,#c2,#be,#e9,#36
	db #33,#82,#95,#6a,#fa,#5b,#3f,#d6
	db #0f,#d6,#c4,#ce,#c5,#ff,#1f,#37
	db #a7,#1d,#cb,#e9,#c7,#19,#cc,#e9
	db #bd,#0c,#86,#29,#1d,#8d,#ce,#8c
	db #33,#55,#03,#11,#31,#bb,#3c,#4b
	db #e7,#f5,#7e,#0f,#e8,#66,#ad,#c9
	db #d8,#44,#d2,#8a,#52,#fb,#f8,#0f
	db #ff,#af,#f0,#ff,#00,#ff,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #3e,#01,#cd,#0e,#bc,#06,#00,#48
	db #cd,#38,#bc,#af,#e5,#f5,#06,#00
	db #48,#cd,#32,#bc,#f1,#e1,#23,#3c
	db #fe,#10,#20,#f0,#21,#82,#a0,#3e
	db #07,#06,#bd,#ed,#a3,#04,#04,#ed
	db #a3,#3d,#20,#f7,#cd,#7a,#a0,#76
	db #76,#76,#cd,#7a,#a0,#21,#30,#78
	db #11,#a0,#01,#cd,#90,#a0,#21,#f0
	db #7f,#af,#e5,#f5,#46,#48,#cd,#32
	db #bc,#f1,#e1,#23,#3c,#fe,#10,#20
	db #f1,#11,#00,#8a,#cd,#00,#80,#cd
	db #7a,#a0,#76,#76,#76,#cd,#7a,#a0
	db #76,#cd,#7a,#a0,#f3,#d9,#08,#f5
	db #c5,#d5,#e5,#cd,#03,#80,#e1,#d1
	db #c1,#f1,#08,#d9,#fb,#76,#76,#76
	db #18,#e7,#06,#f5,#ed,#78,#1f,#30
	db #fb,#c9,#03,#58,#01,#30,#06,#23
	db #02,#32,#07,#23,#0c,#0c,#0d,#d0
	db #f3,#d9,#c5,#e5,#d5,#d9,#cd,#a0
	db #a0,#d9,#d1,#e1,#c1,#d9,#fb,#c9
	db #23,#23,#23,#23,#3e,#80,#d9,#11
	db #01,#00,#d9,#87,#20,#03,#7e,#23
	db #17,#38,#22,#ed,#a0,#87,#20,#03
	db #7e,#23,#17,#38,#18,#ed,#a0,#87
	db #20,#03,#7e,#23,#17,#38,#0e,#ed
	db #a0,#87,#20,#03,#7e,#23,#17,#38
	db #04,#ed,#a0,#18,#d6,#4e,#23,#06
	db #00,#cb,#79,#28,#22,#87,#20,#03
	db #7e,#23,#17,#cb,#10,#87,#20,#03
	db #7e,#23,#17,#cb,#10,#87,#20,#03
	db #7e,#23,#17,#cb,#10,#87,#20,#03
	db #7e,#23,#17,#38,#02,#cb,#b9,#03
	db #d9,#62,#6b,#43,#d9,#87,#20,#03
	db #7e,#23,#17,#d9,#30,#0d,#04,#18
	db #f3,#d9,#87,#20,#03,#7e,#23,#17
	db #d9,#ed,#6a,#10,#f4,#23,#d9,#d8
	db #e5,#d9,#e5,#d9,#62,#6b,#ed,#42
	db #c1,#ed,#b0,#e1,#87,#20,#03,#7e
	db #23,#17,#38,#a1,#ed,#a0,#87,#20
	db #03,#7e,#23,#17,#38,#97,#ed,#a0
	db #c3,#ab,#a0,#53,#54,#43,#00,#00
;
.init_music		; #a051 - added by Megachur
;
	ld de,l8a00
	jp real_init_music
;
;
.music_info
	db "Donkey Kong Country Aquatic Ambience (2016)(Epyteor)(SuTeKH)",0
	db "StarkOs",0

	read "music_end.asm"
