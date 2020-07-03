; Music of Netherworld - Amiga Title by Nigel Pritchard (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 17/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "NEAMTBNP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
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
	dw #86d8,#86f3,#8729,#8744
	dw #877a,#8795,#87cb,#870e
	dw #875f,#87b0,#8800,#881b
	dw #8836,#8038,#8072,#80bd
	dw #80cb,#8108,#82d7,#8329
	dw #837b,#8138,#81a3,#820e
	dw #ff11,#86da,#86f5,#872b
	dw #8746,#877c,#8797,#87cd
	dw #87e7,#8710,#8761,#87b2
	dw #8802,#881d,#8838,#82d9
	dw #832b,#837d,#b703,#82ea
	dw #833c,#838e
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
	db #00,#1e,#8a,#20,#8a,#40,#8b,#43
	db #8b,#1a,#8a,#1e,#8a,#20,#8a,#40
	db #8b,#02,#c0,#00,#00,#5d,#7f,#2f
	db #30,#8c,#46,#8c,#78,#8c,#9a,#8c
	db #46,#8c,#78,#8c,#bc,#8c,#d9,#8c
	db #0b,#8d,#2d,#8d,#5c,#8d,#8e,#8d
	db #97,#8d,#46,#8c,#c8,#8d,#ea,#8d
	db #46,#8c,#c8,#8d,#18,#8e,#48,#8e
	db #7a,#8e,#84,#8e,#5c,#8d,#b3,#8e
	db #ba,#8e,#c3,#8e,#db,#8e,#fd,#8e
	db #01,#8f,#19,#8f,#3b,#8f,#c3,#8e
	db #5d,#8f,#61,#8f,#68,#8f,#86,#8f
	db #30,#8c,#46,#8c,#78,#8c,#9a,#8c
	db #46,#8c,#78,#8c,#bc,#8c,#d9,#8c
	db #0b,#8d,#2d,#8d,#5c,#8d,#8e,#8d
	db #97,#8d,#46,#8c,#c8,#8d,#ea,#8d
	db #46,#8c,#c8,#8d,#18,#8e,#48,#8e
	db #7a,#8e,#84,#8e,#5c,#8d,#b3,#8e
	db #ba,#8e,#c3,#8e,#db,#8e,#fd,#8e
	db #01,#8f,#19,#8f,#3b,#8f,#c3,#8e
	db #5d,#8f,#61,#8f,#68,#8f,#86,#8f
	db #8a,#8f,#9e,#8f,#d0,#8f,#8a,#8f
	db #9e,#8f,#d0,#8f,#f2,#8f,#48,#8e
	db #09,#90,#2b,#90,#5c,#8d,#3c,#90
	db #8a,#8f,#9e,#8f,#d0,#8f,#8a,#8f
	db #9e,#8f,#d0,#8f,#f2,#8f,#48,#8e
	db #09,#90,#5e,#90,#5c,#8d,#3c,#90
	db #30,#8c,#46,#8c,#78,#8c,#9a,#8c
	db #46,#8c,#78,#8c,#bc,#8c,#d9,#8c
	db #0b,#8d,#2d,#8d,#5c,#8d,#8e,#8d
	db #97,#8d,#46,#8c,#c8,#8d,#ea,#8d
	db #46,#8c,#c8,#8d,#18,#8e,#48,#8e
	db #7a,#8e,#84,#8e,#5c,#8d,#b3,#8e
	db #ba,#8e,#c3,#8e,#db,#8e,#fd,#8e
	db #01,#8f,#19,#8f,#3b,#8f,#c3,#8e
	db #5d,#8f,#61,#8f,#68,#8f,#86,#8f
	db #8a,#8f,#9e,#8f,#d0,#8f,#8a,#8f
	db #9e,#8f,#d0,#8f,#f2,#8f,#48,#8e
	db #09,#90,#2b,#90,#5c,#8d,#3c,#90
	db #5e,#6d,#90,#51,#8b,#5b,#8b,#7c
	db #8b,#c7,#8b,#f3,#8b,#12,#8c,#21
	db #8c,#58,#8b,#5b,#8b,#ff,#37,#00
	db #00,#00,#00,#64,#8b,#7c,#8b,#00
	db #37,#00,#2f,#0c,#0f,#0e,#0e,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0f,#58,#8b,#c7,#8b
	db #00,#b7,#00,#1a,#05,#0f,#2f,#0c
	db #2e,#0c,#0e,#0e,#2d,#0c,#2d,#0c
	db #0d,#0c,#2c,#0c,#2c,#0c,#0b,#0b
	db #2b,#0c,#2a,#0c,#0a,#0a,#29,#0c
	db #29,#0c,#09,#08,#28,#0c,#28,#0c
	db #07,#07,#27,#0c,#26,#0c,#06,#06
	db #25,#0c,#25,#0c,#05,#04,#24,#0c
	db #24,#0c,#03,#03,#23,#0c,#22,#0c
	db #02,#02,#21,#0c,#21,#0c,#01,#58
	db #8b,#f3,#8b,#00,#b7,#00,#1a,#05
	db #3e,#27,#0c,#1d,#27,#3c,#26,#0c
	db #1b,#26,#3a,#25,#0c,#19,#25,#38
	db #24,#0c,#17,#24,#36,#23,#0c,#15
	db #23,#34,#22,#0c,#13,#22,#32,#21
	db #0c,#11,#21,#fa,#8b,#12,#8c,#00
	db #37,#00,#4f,#ff,#ff,#4f,#ff,#ff
	db #4e,#01,#00,#4e,#01,#00,#4d,#ff
	db #ff,#4d,#ff,#ff,#4e,#01,#00,#4e
	db #01,#00,#19,#8c,#21,#8c,#00,#37
	db #00,#0e,#0e,#2d,#0c,#0d,#0c,#2c
	db #0c,#28,#8c,#30,#8c,#00,#37,#00
	db #0f,#0f,#0f,#0f,#0e,#0e,#0e,#0e
	db #6a,#81,#01,#da,#6b,#da,#69,#d2
	db #6b,#d2,#6f,#d2,#69,#e2,#6b,#d2
	db #69,#d2,#6b,#d2,#69,#c2,#34,#81
	db #02,#d2,#35,#d2,#4c,#80,#03,#d2
	db #34,#80,#02,#d2,#31,#d2,#35,#d2
	db #4c,#80,#03,#d2,#34,#80,#02,#d2
	db #31,#d2,#31,#d2,#4c,#80,#03,#d2
	db #30,#80,#02,#d2,#3f,#d2,#31,#d2
	db #4c,#80,#03,#d2,#30,#80,#02,#c2
	db #8a,#8b,#04,#d2,#95,#d2,#83,#d2
	db #8b,#d2,#7d,#d2,#83,#d2,#8b,#d2
	db #95,#d2,#87,#d2,#91,#d2,#81,#d2
	db #87,#d2,#79,#d2,#81,#d2,#87,#d2
	db #91,#c2,#6a,#81,#01,#d2,#6f,#d2
	db #73,#d2,#6f,#da,#6b,#d2,#69,#d2
	db #65,#d2,#61,#da,#65,#d2,#61,#d2
	db #65,#d2,#69,#da,#c4,#02,#c4,#04
	db #c4,#06,#c4,#08,#6a,#81,#01,#da
	db #6b,#da,#69,#d2,#6b,#da,#c4,#02
	db #c4,#04,#c4,#06,#c4,#08,#68,#01
	db #da,#69,#da,#65,#d2,#61,#da,#69
	db #c2,#2c,#81,#02,#d2,#2d,#d2,#4c
	db #80,#03,#d2,#2c,#80,#02,#d2,#2d
	db #d2,#2d,#d2,#4c,#80,#03,#d2,#2c
	db #80,#02,#d2,#31,#d2,#31,#d2,#4c
	db #80,#03,#d2,#30,#80,#02,#d2,#2d
	db #d2,#31,#d2,#4c,#80,#03,#d2,#30
	db #80,#02,#c2,#82,#8b,#04,#d2,#91
	db #d2,#7d,#d2,#83,#d2,#75,#d2,#7d
	db #d2,#83,#d2,#95,#d2,#87,#d2,#91
	db #d2,#81,#d2,#87,#d2,#79,#d2,#81
	db #d2,#87,#d2,#91,#c2,#68,#81,#01
	db #d2,#6b,#d2,#69,#d2,#65,#d2,#69
	db #d8,#c4,#01,#c4,#02,#c4,#03,#c4
	db #04,#c4,#05,#68,#0d,#c4,#07,#c4
	db #08,#c4,#09,#68,#01,#d2,#73,#d2
	db #63,#d2,#69,#d2,#5b,#d2,#63,#d2
	db #51,#d2,#5b,#c2,#2a,#81,#02,#d2
	db #2b,#d2,#4c,#80,#03,#d2,#2a,#80
	db #02,#d2,#2b,#d2,#2b,#d2,#4c,#80
	db #03,#d2,#2a,#80,#02,#d2,#33,#d2
	db #33,#d2,#4c,#80,#03,#d2,#32,#80
	db #02,#d2,#33,#d2,#33,#d2,#4c,#80
	db #03,#d2,#32,#80,#02,#c2,#8a,#8b
	db #04,#c0,#1e,#8b,#ea,#87,#c2,#6a
	db #81,#05,#d2,#c4,#01,#d2,#6a,#01
	db #d2,#c4,#01,#d2,#68,#01,#d2,#6a
	db #01,#d2,#6e,#01,#d2,#68,#01,#d2
	db #c4,#01,#d2,#c4,#02,#d2,#c4,#03
	db #d2,#c4,#04,#d2,#c4,#05,#d2,#c4
	db #06,#d2,#c4,#07,#d2,#c4,#08,#c2
	db #7c,#8b,#04,#d2,#83,#d2,#81,#d2
	db #83,#d2,#7d,#d2,#83,#d2,#81,#d2
	db #83,#d2,#79,#d2,#81,#d2,#7d,#d2
	db #81,#d2,#79,#d2,#81,#d2,#7d,#d2
	db #81,#c2,#72,#81,#05,#d2,#c4,#01
	db #d2,#72,#01,#d2,#c4,#01,#d2,#6e
	db #01,#d2,#73,#d2,#75,#d2,#6f,#d2
	db #c4,#01,#d2,#c4,#02,#d2,#c4,#03
	db #d2,#c4,#04,#d2,#c4,#05,#d2,#c4
	db #06,#d2,#c4,#07,#d2,#c4,#08,#c2
	db #74,#81,#05,#d2,#c4,#01,#d2,#c4
	db #02,#d2,#78,#01,#d2,#7d,#d2,#c4
	db #01,#d2,#82,#01,#d2,#c4,#01,#d2
	db #86,#01,#d2,#c4,#01,#d2,#82,#01
	db #d2,#c4,#01,#d2,#80,#01,#d2,#c4
	db #01,#d2,#7c,#01,#d2,#c4,#01,#c2
	db #2c,#81,#02,#d2,#2d,#d2,#4c,#80
	db #03,#d2,#2c,#80,#02,#d2,#2d,#d2
	db #2d,#d2,#4c,#80,#03,#d2,#2c,#80
	db #02,#d2,#31,#d2,#31,#d2,#4c,#80
	db #03,#d2,#30,#80,#02,#d2,#31,#d2
	db #31,#d2,#4c,#80,#03,#d2,#30,#80
	db #02,#c2,#80,#8b,#04,#ea,#83,#ea
	db #81,#ea,#7d,#c2,#7a,#81,#05,#d2
	db #c4,#01,#d2,#c4,#02,#d2,#c4,#03
	db #d2,#c4,#04,#d2,#c4,#05,#d2,#c4
	db #06,#d2,#c4,#07,#d2,#7a,#01,#d2
	db #7d,#d2,#7f,#d2,#81,#d2,#78,#40
	db #ff,#ce,#c6,#ff,#ce,#7b,#d2,#73
	db #d2,#73,#c2,#8a,#8b,#04,#c0,#1e
	db #87,#c2,#7c,#85,#06,#c0,#32,#81
	db #d2,#83,#c2,#2c,#81,#02,#e2,#2d
	db #d2,#2d,#da,#4c,#80,#03,#da,#2c
	db #80,#02,#e2,#2d,#d2,#2d,#da,#4c
	db #80,#03,#c2,#74,#8b,#04,#d2,#7d
	db #d2,#7b,#d2,#7d,#d2,#83,#d2,#7d
	db #d2,#7b,#d2,#7d,#d2,#75,#d2,#83
	db #d2,#81,#d2,#83,#d2,#7d,#d2,#75
	db #d2,#73,#d2,#75,#c2,#80,#85,#06
	db #c2,#30,#81,#02,#e2,#31,#d2,#31
	db #da,#4c,#80,#03,#da,#30,#80,#02
	db #e2,#31,#d2,#31,#da,#4c,#80,#03
	db #c2,#60,#8b,#04,#d2,#69,#d2,#67
	db #d2,#69,#d2,#6f,#d2,#69,#d2,#67
	db #d2,#69,#d2,#61,#d2,#6f,#d2,#6d
	db #d2,#6f,#d2,#69,#d2,#61,#d2,#6f
	db #d2,#61,#c2,#8c,#85,#06,#d2,#8b
	db #d2,#8d,#d2,#91,#d2,#95,#d2,#91
	db #d2,#95,#d2,#99,#d2,#9b,#d2,#99
	db #d2,#9b,#d2,#9f,#d2,#a3,#d2,#9f
	db #d2,#a3,#d2,#a5,#c2,#74,#8b,#04
	db #c2,#a2,#85,#06,#c0,#2e,#9f,#c2
	db #2a,#81,#02,#e2,#2b,#d2,#2b,#da
	db #4c,#80,#03,#da,#2a,#80,#02,#e2
	db #2b,#d2,#2b,#d2,#4c,#80,#03,#d2
	db #4d,#ce,#4d,#d2,#4d,#c2,#8a,#8b
	db #04,#c2,#c4,#04,#c4,#06,#c4,#08
	db #c4,#0a,#8a,#85,#06,#d2,#83,#d2
	db #7d,#d2,#8b,#da,#83,#c2,#34,#81
	db #02,#d2,#35,#d2,#4c,#80,#03,#d2
	db #34,#80,#02,#d2,#35,#d2,#35,#d2
	db #4c,#80,#03,#d2,#34,#80,#02,#d2
	db #35,#d2,#35,#d2,#4c,#80,#03,#d2
	db #34,#80,#02,#d2,#31,#d2,#31,#d2
	db #4c,#80,#03,#d2,#30,#80,#02,#c2
	db #72,#8b,#04,#d2,#7d,#d2,#6b,#d2
	db #73,#d2,#65,#d2,#6b,#d2,#73,#d2
	db #7d,#d2,#73,#d2,#7d,#d2,#6b,#d2
	db #73,#d2,#61,#d2,#69,#d2,#6f,#d2
	db #79,#c2,#d4,#8c,#85,#06,#d2,#8b
	db #d2,#8d,#d2,#83,#d2,#7d,#ea,#87
	db #d2,#85,#d2,#87,#d2,#81,#d2,#79
	db #c2,#6a,#8b,#04,#d2,#75,#d2,#65
	db #d2,#6b,#d2,#75,#d2,#65,#d2,#6b
	db #d2,#75,#d2,#6f,#d2,#79,#d2,#69
	db #d2,#6f,#d2,#61,#d2,#69,#d2,#6f
	db #d2,#79,#c2,#7a,#85,#06,#c0,#1e
	db #7d,#d2,#7b,#d2,#73,#d2,#69,#d2
	db #65,#d2,#63,#c2,#68,#8b,#04,#d2
	db #73,#d2,#63,#d2,#69,#d2,#73,#d2
	db #63,#d2,#69,#d2,#73,#d2,#69,#d2
	db #73,#d2,#63,#d2,#69,#d2,#73,#d2
	db #63,#d2,#69,#d2,#73,#c2,#7a,#85
	db #06,#c0,#1e,#8b,#ea,#8b,#d2,#87
	db #d2,#83,#d2,#81,#c2,#ff,#00,#00
	db #9f,#37,#51,#80,#e7,#f0,#d6,#c4
	db #cc,#92,#71,#32,#79,#cc,#f9,#39
	db #d1,#5c,#6d,#00,#4e,#9c,#1c,#71
	db #50,#b5,#fb,#84,#4a,#ee,#12,#00
	db #6e,#7f,#c0,#66,#c7,#b2,#ea,#b9
	db #c0,#06,#01,#2a,#01,#03,#d7,#f1
	db #02,#41,#82,#b4,#fd,#07,#82,#41
	db #55,#4f,#18,#4a,#de,#e2,#4f,#94
	db #34,#eb,#c3,#b1,#01,#4c,#41,#04
	db #99,#22,#49,#af,#aa,#e1,#34,#2d
	db #48,#75,#47,#20,#d8,#2f,#02,#9a
	db #d6,#14,#bc,#37,#8b,#ec,#8f,#01
	db #3b,#33,#b1,#ee,#e8,#99,#8e,#ee
	db #2b,#d0,#8f,#f7,#db,#05,#00,#30
	db #07,#44,#6c,#26,#00,#b4,#8a,#ad
	db #c9,#47,#cc,#89,#a3,#05,#c0,#53
	db #00,#bc,#ac,#b5,#8d,#0f,#17,#37
	db #9d,#e2,#c9,#7b,#e6,#f9,#a5,#91
	db #30,#53,#82,#82,#dd,#08,#ab,#e1
	db #18,#dd,#e9,#8b,#4b,#4d,#9f,#ad
	db #9b,#92,#b3,#02,#30,#c7,#6c,#c0
	db #cb,#50,#8e,#5c,#4e,#1f,#33,#4c
	db #93,#d5,#8e,#c5,#b7,#72,#a8,#11
	db #a9,#2a,#02,#9f,#aa,#eb,#00,#d5
	db #d0,#01,#2b,#7e,#03,#af,#63,#4e
	db #30,#ee,#60,#20,#88,#f0,#b5,#a3
	db #ac,#4e,#00,#bf,#10,#75,#30,#0c
	db #48,#e3,#dc,#e4,#6f,#8a,#4d,#a5
	db #23,#a3,#92,#3b,#3f,#f3,#3b,#87
	db #6a,#c0,#80,#75,#f4,#76,#15,#f9
	db #f4,#15,#eb,#23,#03,#00,#81,#01
	db #17,#3f,#01,#49,#f5,#4f,#9b,#50
	db #a1,#17,#de,#a0,#44,#d0,#b4,#2d
	db #fa,#e4,#ab,#1b,#10,#f5,#ca,#00
	db #a1,#33,#4b,#ad,#00,#38,#0a,#24
	db #e2,#49,#30,#67,#20,#01,#c0,#52
	db #23,#20,#f5,#54,#2a,#73,#b3,#70
	db #15,#24,#3f,#2a,#d6,#52,#3f,#00
	db #a7,#d2,#84,#8e,#29,#94,#d2,#6c
	db #88,#52,#24,#50,#40,#c9,#52,#88
	db #50,#fb,#ac,#29,#50,#73,#00,#4b
	db #a4,#1a,#1e,#76,#0a,#e2,#7b,#a3
	db #1a,#04,#10,#a5,#95,#57,#fc,#8f
	db #8d,#db,#73,#09,#df,#07,#65,#88
	db #28,#fd,#31,#50,#4c,#c8,#2a,#25
	db #17,#33,#fc,#79,#82,#23,#f5,#39
	db #d7,#37,#e2,#c7,#3b,#cf,#38,#91
	db #cf,#cf,#8a,#ce,#fe,#f4,#a3,#3d
	db #10,#ca,#a1,#24,#0c,#18,#96,#29
	db #14,#c1,#24,#04,#bb,#cf,#5e,#e6
	db #f0,#de,#ae,#d6,#7c,#54,#3f,#a8
	db #1d,#80,#20,#35,#0a,#0c,#14,#f6
	db #fc,#b1,#04,#5d,#08,#bb,#1e,#b8
	db #1d,#80,#ef,#45,#d1,#39,#e4,#a8
	db #f3,#00,#f6,#6f,#0f,#04,#08,#1c
	db #14,#d1,#5c,#04,#ab,#00,#c7,#3d
	db #fd,#8f,#e3,#ce,#57,#1f,#04,#fb
	db #af,#ff,#f5,#df,#fc,#e2,#09,#db
	db #0d,#1c,#4a,#c2,#d2,#f9,#72,#54
	db #47,#20,#aa,#b7,#96,#2c,#46,#fd
	db #b3,#7f,#1f,#b6,#70,#00,#2d,#3c
	db #14,#4f,#14,#e7,#4f,#55,#f3,#e7
	db #04,#7a,#07,#fd,#b7,#b5,#03,#1d
	db #14,#00,#f0,#c9,#f5,#f3,#25,#3d
	db #b2,#f9,#48,#3e,#ff,#ad,#12,#f3
	db #af,#5f,#09,#3f,#59,#cc,#55,#15
	db #6d,#05,#55,#c8,#ab,#d5,#03,#e2
	db #ad,#73,#c1,#cb,#00,#d2,#96,#90
	db #5f,#a7,#7e,#5f,#fc,#1b,#0f,#5b
	db #04,#05,#97,#01,#00,#cf,#e4,#5b
	db #01,#99,#00,#fd,#ff,#9b,#a6,#7c
	db #39,#de,#e1,#c3,#80,#fb,#d5,#ff
	db #e5,#83,#ff,#c3,#07,#ed,#07,#33
	db #94,#d7,#23,#1b,#d4,#c7,#19,#4d
	db #54,#c2,#e3,#06,#ae,#bd,#f0,#f8
	db #6e,#d4,#0c,#ed,#e3,#d7,#5e,#17
	db #28,#8c,#31,#32,#d7,#37,#cb,#ae
	db #b9,#ef,#fb,#05,#33,#aa,#63,#d1
	db #f3,#b4,#d7,#0f,#33,#05,#3b,#38
	db #1a,#6f,#aa,#02,#d6,#9a,#98,#8a
	db #55,#15,#26,#c5,#05,#d7,#05,#2f
	db #ac,#54,#1e,#d2,#a0,#1a,#af,#b3
	db #0d,#60,#c7,#33,#ff,#02,#5f,#c8
	db #98,#45,#a8,#e7,#0b,#05,#5a,#00
	db #17,#82,#38,#fc,#41,#11,#6f,#eb
	db #42,#5d,#19,#42,#4a,#9e,#ab,#99
	db #11,#08,#b5,#b0,#c4,#ca,#78,#66
	db #64,#42,#46,#a1,#72,#4b,#54,#8f
	db #94,#08,#8b,#f0,#51,#a8,#4b,#87
	db #8b,#82,#02,#63,#ae,#95,#48,#d1
	db #d8,#87,#ed,#00,#e3,#eb,#af,#ac
	db #f7,#c6,#9f,#9a,#ed,#99,#b1,#6c
	db #b3,#01,#aa,#dd,#2b,#48,#da,#58
	db #f6,#a8,#bc,#fd,#8d,#84,#d3,#1f
	db #de,#de,#2a,#3d,#f1,#c9,#54,#04
	db #d5,#f7,#f1,#f6,#fb,#51,#d7,#07
	db #16,#0d,#da,#59,#83,#03,#a0,#55
	db #50,#d8,#44,#e1,#e2,#f5,#00,#ff
	db #52,#a3,#db,#e3,#43,#4e,#78,#09
	db #fb,#c8,#ae,#f3,#da,#d9,#fc,#b3
	db #da,#17,#81,#63,#fb,#f8,#dc,#48
	db #10,#c8,#0c,#a5,#df,#82,#5c,#85
	db #80,#c8,#44,#f0,#40,#88,#c4,#04
	db #e4,#fa,#cc,#aa,#d7,#e8,#f9,#6e
	db #6f,#82,#8f,#08,#ae,#cc,#4e,#c8
	db #50,#a8,#ce,#4d,#b3,#07,#f3,#9a
	db #f0,#51,#ce,#00,#36,#58,#50,#9c
	db #8d,#f0,#82,#c7,#55,#96,#a4,#05
	db #88,#39,#d8,#88,#4e,#7b,#d7,#b8
	db #28,#54,#ad,#e2,#17,#e2,#c5,#aa
	db #58,#e2,#4d,#98,#3b,#d9,#53,#d2
	db #4f,#ab,#e2,#05,#e6,#5c,#e9,#33
	db #a6,#51,#aa,#f2,#18,#cc,#5c,#dd
	db #c1,#2d,#93,#fa,#e4,#b7,#eb,#b7
	db #9a,#ef,#9c,#d9,#a2,#ab,#c1,#75
	db #b0,#c9,#54,#d1,#5d,#a7,#54,#dd
	db #8f,#00,#2b,#56,#4e,#83,#00,#7a
	db #de,#cf,#8c,#71,#2d,#50,#f0,#d0
	db #bf,#ab,#ba,#e4,#29,#aa,#c3,#ef
	db #5d,#a8,#51,#91,#d7,#c3,#34,#d7
	db #82,#d4,#2b,#a8,#2c,#5d,#73,#ba
	db #9c,#4a,#cc,#18,#c3,#0a,#dd,#e9
	db #1c,#f0,#44,#6a,#96,#46,#e2,#e4
	db #b7,#75,#67,#90,#10,#95,#43,#03
	db #17,#02,#f4,#5e,#3d,#3f,#a9,#40
	db #b0,#69,#9b,#65,#b2,#87,#41,#4c
	db #16,#61,#1a,#59,#16,#7e,#97,#cb
	db #4a,#83,#ee,#a0,#fa,#50,#5d,#04
	db #eb,#d3,#01,#df,#ac,#05,#c7,#ef
	db #1e,#b9,#60,#3f,#33,#e6,#b4,#29
	db #ef,#ba,#c2,#6b,#f9,#fa,#b6,#48
	db #56,#ee,#36,#82,#70,#88,#a0,#e4
	db #e5,#11,#55,#15,#f0,#8d,#e8,#0f
	db #cf,#bd,#2c,#9e,#b7,#ef,#0b,#3b
	db #37,#e7,#6e,#b0,#b8,#c6,#90,#a4
	db #93,#a3,#02,#9b,#31,#03,#c3,#86
	db #8c,#fa,#de,#8f,#44,#9c,#50,#ad
	db #91,#28,#a6,#bb,#c5,#80,#08,#ba
	db #75,#24,#30,#32,#00,#1e,#c0,#d7
	db #8e,#3a,#4c,#81,#55,#10,#02,#b3
	db #8e,#c4,#9f,#67,#da,#a9,#00,#02
	db #b1,#1a,#aa,#91,#c4,#aa,#a8,#11
	db #2b,#03,#d7,#13,#04,#4e,#81,#30
	db #ba,#20,#a3,#40,#6c,#e0,#e4,#46
	db #88,#a5,#07,#a0,#24,#60,#60,#cb
	db #a3,#14,#af,#f8,#fd,#b0,#dc,#e6
	db #3d,#37,#2f,#e1,#39,#f5,#90,#20
	db #40,#80,#75,#8e,#a5,#a1,#4d,#55
	db #17,#2a,#ac,#f8,#01,#2f,#02,#02
	db #49,#fc,#84,#2b,#3f,#03,#0c,#42
	db #72,#0c,#50,#94,#e2,#87,#4c,#15
	db #f0,#50,#b4,#52,#51,#d5,#1c,#e9
	db #de,#e6,#b9,#4b,#d4,#c2,#b1,#cf
	db #90,#75,#60,#04,#8a,#9d,#b9,#24
	db #c0,#70,#10,#d1,#4f,#55,#28,#01
	db #9f,#19,#d8,#2b,#00,#94,#4f,#bb
	db #fa,#95,#44,#6c,#83,#4a,#c7,#58
	db #d5,#e4,#a3,#af,#0e,#1a,#16,#27
	db #15,#37,#37,#3e,#c0,#5c,#3c,#fe
	db #a5,#28,#24,#74,#28,#c2,#20,#a5
	db #35,#14,#8c,#7d,#78,#06,#7b,#bb
	db #9f,#11,#67,#14,#88,#58,#08,#44
	db #47,#33,#3f,#93,#ae,#6f,#8e,#83
	db #48,#f4,#d9,#de,#e2,#cd,#bb,#f0
	db #3a,#b6,#dd,#7e,#00,#5f,#a1,#cf
	db #ca,#41,#88,#40,#24,#97,#fc,#4e
	db #b1,#c4,#88,#04,#e7,#ba,#aa,#e8
	db #d5,#54,#a5,#cd,#f8,#56,#bc,#40
	db #09,#1e,#2d,#cc,#d7,#a0,#ec,#a5
	db #a4,#ac,#4f,#28,#45,#93,#00,#ce
	db #ff,#f8,#cd,#f3,#c6,#88,#fc,#00
	db #91,#04,#d8,#89,#1f,#aa,#17,#28
	db #bd,#76,#ee,#4e,#cc,#4f,#cd,#11
	db #ac,#71,#5e,#87,#37,#f4,#e7,#03
	db #1f,#f8,#9c,#06,#eb,#0e,#20,#47
	db #cf,#c0,#56,#85,#57,#32,#3f,#fb
	db #07,#05,#0f,#3d,#fc,#b1,#51,#64
	db #00,#cf,#e1,#1b,#1e,#00,#0a,#0a
	db #28,#28,#5d,#a5,#29,#c1,#41,#55
	db #c0,#c0,#ef,#f9,#f0,#f9,#00,#bb
	db #0b,#ac,#f6,#07,#51,#02,#cf,#bf
	db #00,#04,#92,#54,#e8,#9f,#80,#98
	db #4a,#2f,#0f,#5f,#f3,#a7,#f3,#b8
	db #9c,#5f,#56,#6f,#03,#55,#56,#ce
	db #bf,#03,#1f,#d1,#fc,#e6,#1f,#3f
	db #05,#ad,#af,#d5,#6d,#da,#8e,#08
	db #bf,#00,#03,#fd,#ff,#36,#8f,#f0
	db #72,#88,#05,#c3,#0d,#80,#c3,#56
	db #c6,#13,#f2,#80,#af,#32,#0b,#80
	db #32,#04,#3d,#88,#3e,#00,#fe,#e4
	db #41,#07,#3c,#32,#15,#17,#14,#b0
	db #82,#13,#06,#b7,#04,#d2,#07,#81
	db #32,#2f,#02,#9a,#80,#02,#05,#82
	db #3e,#b7,#32,#25,#40,#80,#22,#d6
	db #01,#30,#31,#21,#80,#32,#7e,#23
	db #cb,#3f,#38,#25,#00,#47,#e6,#1f
	db #cb,#67,#28,#02,#f6,#02,#e0,#32
	db #3c,#81,#cb,#10,#01,#01,#30,#05
	db #7e,#32,#a7,#81,#23,#08,#c8,#12
	db #82,#23,#06,#22,#3e,#80,#18,#06
	db #04,#1c,#32,#38,#39,#06,#38,#07
	db #32,#72,#08,#1d,#18,#1b,#40,#88
	db #05,#22,#7f,#20,#0d,#32,#16,#7b
	db #80,#47,#0e,#0a,#60,#1d,#78,#32
	db #70,#60,#82,#1d,#11,#35,#81,#23
	db #ed,#a0,#01,#11,#a0,#06,#93,#0b
	db #82,#06,#4c,#22,#9d,#3c,#1c,#b7
	db #20,#0e,#4a,#06,#16,#32,#bd,#80
	db #28,#1c,#18,#46,#0d,#01,#08,#32
	db #cb,#80,#2a,#d9,#4b,#3b,#25,#59
	db #64,#14,#1e,#c2,#40,#b8,#80,#5e
	db #23,#56,#a0,#59,#18,#eb,#22,#c6
	db #80,#b0,#76,#24,#3e,#01,#f2,#14
	db #23,#18,#09,#cf,#87,#1e,#34,#68
	db #12,#92,#d2,#32,#17,#29,#a4,#4e
	db #90,#c4,#29,#0c,#42,#22,#44,#0e
	db #fb,#08,#70,#81,#26,#62,#c4,#26
	db #01,#01,#11,#80,#05,#dd,#2e,#00
	db #cd,#af,#83,#00,#dd,#7d,#32,#3f
	db #81,#22,#ba,#82,#22,#d9,#22,#ac
	db #45,#79,#e1,#27,#24,#b4,#b4,#06
	db #fd,#b4,#20,#39,#32,#90,#c0,#57
	db #7b,#32,#3b,#81,#08,#6a,#65,#22
	db #b7,#cb,#d1,#eb,#29,#19,#5d,#02
	db #66,#6f,#11,#e8,#82,#cb,#38,#72
	db #e0,#06,#d9,#63,#82,#04,#ea,#04
	db #23,#f9,#14,#c9,#26,#fd,#82,#b6
	db #77,#fd,#50,#79,#2f,#6a,#bc,#02
	db #6a,#d1,#aa,#6a,#0c,#83,#6a,#49
	db #90,#6a,#23,#a3,#6a,#06,#83,#6a
	db #93,#29,#83,#6a,#1a,#a6,#6a,#09
	db #79,#83,#6a,#1c,#3a,#83,#63,#39
	db #32,#06,#31,#2b,#83,#04,#3c,#04
	db #98,#6a,#1b,#76,#83,#6a,#9a,#f3
	db #6a,#79,#03,#6a,#86,#15,#82,#22
	db #5e,#6a,#49,#f4,#6a,#07,#0e,#82
	db #32,#58,#6a,#4d,#7b,#6a,#31,#11
	db #82,#6a,#5b,#6a,#e6,#8c,#e5,#63
	db #84,#06,#cb,#7d,#6a,#5c,#8e,#6a
	db #bc,#6d,#6a,#29,#bc,#27,#a4,#64
	db #da,#98,#db,#18,#36,#29,#3e,#37
	db #c7,#13,#2a,#ca,#60,#71,#af,#ed
	db #52,#29,#20,#26,#9b,#27,#f7,#25
	db #e4,#32,#54,#aa,#93,#05,#5c,#7f
	db #05,#5b,#22,#05,#a6,#35,#3b,#b2
	db #39,#4a,#82,#16,#00,#d9,#99,#96
	db #02,#4a,#19,#d7,#04,#22,#ea,#84
	db #3a,#fd,#86,#dd,#6f,#11,#02,#fd
	db #21,#d8,#86,#3a,#f3,#40,#cd,#44
	db #84,#eb,#ae,#c1,#01,#03,#3c,#18
	db #1d,#21,#5c,#cb,#11,#2d,#06,#b7
	db #38,#0b,#47,#c8,#f6,#3d,#48,#32
	db #f3,#3c,#24,#ed,#53,#ec,#9c,#a0
	db #08,#dd,#7c,#32,#ab,#e2,#bc,#51
	db #a4,#be,#d7,#51,#aa,#51,#62,#29
	db #87,#3a,#da,#4f,#51,#ba,#dd,#4a
	db #51,#da,#4c,#51,#92,#d3,#87,#73
	db #51,#1e,#a8,#51,#8e,#5b,#51,#24
	db #cb,#e9,#51,#7a,#51,#3e,#7b,#51
	db #f6,#84,#51,#36,#7d,#51,#ba,#49
	db #ee,#48,#51,#cb,#27,#75,#f6,#9b
	db #02,#0a,#c3,#cd,#86,#9e,#e0,#33
	db #fe,#03,#60,#30,#37,#fd,#26,#00
	db #52,#00,#46,#23,#78,#1f,#30,#03
	db #16,#e6,#0f,#4f,#ea,#8a,#02,#ce
	db #b1,#05,#0e,#22,#08,#d9,#6f,#26
	db #2e,#30,#01,#26,#25,#fd,#c8,#46
	db #c9,#86,#ef,#07,#2e,#24,#18,#f0
	db #07,#01,#01,#d6,#60,#28,#1a,#3d
	db #28,#2e,#02,#24,#1d,#02,#d2,#02
	db #21,#90,#02,#33,#02,#27,#3d,#d9
	db #46,#fd,#a0,#b3,#c9,#3e,#08,#96
	db #4e,#08,#5c,#38,#09,#91,#18,#aa
	db #0a,#ff,#d9,#1e,#cd,#92,#a5,#9c
	db #d6,#91,#33,#fd,#0d,#80,#6e,#13
	db #30,#77,#7b,#c2,#00,#fa,#84,#cb
	db #63,#28,#5d,#7e,#cb,#03,#77,#28
	db #25,#16,#08,#23,#8f,#02,#28,#05
	db #e5,#c0,#87,#cb,#9a,#7b,#88,#9b
	db #d9,#92,#45,#d9,#8c,#bb,#40,#77
	db #36,#dd,#23,#62,#7e,#05,#00,#23
	db #04,#06,#1b,#23,#c9,#1d,#01,#23
	db #16,#01,#cb,#6f,#28,#ec,#63,#82
	db #24,#d4,#18,#2a,#f5,#0f,#88,#bb
	db #36,#36,#f0,#ab,#09,#18,#58,#f5
	db #57,#18,#28,#78,#f1,#1a,#81,#26
	db #08,#cb,#6b,#28,#04,#92,#12,#18
	db #0e,#0b,#cb,#73,#28,#06,#ce,#d5
	db #18,#c1,#70,#85,#90,#a1,#38,#02
	db #09,#3e,#5f,#e5,#87,#89,#40,#01
	db #0d,#86,#09,#89,#c1,#46,#a8,#18
	db #cb,#01,#2c,#cb,#1d,#09,#19,#fd
	db #75,#90,#20,#74,#1b,#e1,#60,#c9
	db #c0,#07,#0a,#7b,#d9,#e6,#40,#98
	db #80,#d9,#7b,#f6,#08,#e6,#09,#62
	db #57,#65,#10,#ce,#50,#e6,#03,#2e
	db #87,#c6,#f6,#02,#36,#88,#cb,#5b
	db #28,#09,#ec,#32,#c3,#35,#18,#50
	db #20,#62,#60,#78,#28,#0b,#cb,#65
	db #70,#e3,#13,#86,#e7,#85,#93,#21
	db #80,#85,#f9,#20,#e6,#0e,#32,#22
	db #91,#85,#f6,#24,#c2,#f2,#04,#4b
	db #87,#75,#a2,#14,#93,#48,#53,#8a
	db #fb,#94,#2a,#8f,#47,#8a,#26,#4d
	db #44,#c7,#6a,#0c,#31,#02,#6f,#20
	db #72,#79,#fd,#71,#97,#22,#70,#1b
	db #d2,#44,#7b,#e1,#d3,#f5,#08,#9b
	db #85,#79,#75,#cb,#38,#d3,#d5,#02
	db #e0,#44,#4f,#fb,#03,#bb,#8f,#a5
	db #e9,#83,#84,#1b,#88,#3a,#84,#41
	db #b7,#28,#2d,#3a,#83,#13,#5f,#33
	db #51,#cf,#91,#61,#33,#21,#17,#02
	db #f0,#a3,#47,#fc,#11,#09,#f7,#dc
	db #80,#61,#23,#e5,#b7,#28,#8e,#72
	db #e1,#71,#7e,#c9,#4c,#93,#b2,#4d
	db #93,#60,#ee,#0e,#18,#0e,#00,#4d
	db #0d,#8e,#0c,#da,#0b,#2f,#0b,#00
	db #8f,#0a,#f7,#09,#68,#09,#e1,#08
	db #00,#61,#08,#e9,#07,#77,#07,#0c
	db #07,#00,#a7,#06,#47,#06,#ed,#05
	db #98,#05,#00,#47,#05,#fc,#04,#b4
	db #04,#70,#04,#00,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#00,#53,#03,#24
	db #03,#f6,#02,#cc,#02,#48,#a4,#99
	db #02,#22,#5a,#02,#ea,#00,#18,#02
	db #fa,#01,#de,#01,#c3,#01,#00,#aa
	db #01,#92,#01,#7b,#01,#66,#01,#00
	db #52,#01,#3f,#01,#2d,#01,#1c,#01
	db #00,#0c,#01,#fd,#00,#ef,#00,#e1
	db #00,#50,#d5,#af,#00,#00,#be,#00
	db #b3,#00,#a9,#00,#9f,#00,#00,#96
	db #00,#8e,#00,#86,#00,#7f,#00,#a2
	db #94,#89,#20,#6a,#00,#64,#00,#1f
	db #5f,#00,#59,#a2,#80,#50,#00,#4b
	db #00,#47,#07,#00,#43,#00,#3f,#00
	db #87,#c1,#38,#00,#35,#00,#9f,#10
	db #2f,#00,#2d,#1e,#00,#2a,#00,#e3
	db #3f,#26,#ba,#05,#22,#00,#20,#f7
	db #20,#1c,#00,#1b,#b1,#da,#00,#ee
	db #15,#e7,#8f,#15,#cb,#82,#00,#13
	db #00,#12,#eb,#d0,#10,#00,#00,#67
	db #06,#f4,#d9,#01,#c0,#f6,#1e,#2d
	db #80,#d9,#dc,#84,#15,#1d,#ed,#02
	db #51,#d9,#ed,#49,#ed,#71,#04,#48
	db #79,#02,#59,#07,#32,#da,#76,#86
	db #1a,#01,#f7,#1a,#78,#f5,#1a,#3d
	db #08,#1a,#ce,#10,#87,#1a,#de,#02
	db #1a,#ef,#2b,#1a,#07,#03,#1a,#bb
	db #46,#1a,#c1,#09,#1a,#ee,#61,#f0
	db #1a,#7b,#04,#1a,#bc,#7c,#1a,#1e
	db #05,#1a,#ef,#97,#1a,#07,#0a,#1a
	db #bb,#b2,#1a,#c1,#06,#1a,#ee,#cd
	db #86,#1a,#7c,#fe,#c0,#19,#3d,#07
	db #19,#de,#e7,#34,#0f,#0b,#1a,#73
	db #02,#88,#1a,#b7,#0c,#1a,#bb,#1d
	db #1a,#80,#ff,#20,#06,#67,#ac,#bc
	db #0f,#c8,#7c,#16,#0d,#20,#70,#38
	db #88,#c9,#af,#e0,#b0,#87,#32,#42
	db #5f,#02,#b0,#87,#3d,#bc,#52,#ee
	db #32,#a0,#33,#6e,#0c,#3e,#3f,#c2
	db #c2,#21,#06,#b9,#6a,#ee,#02,#23
	db #81,#11,#03,#07,#6d,#11,#e1,#ae
	db #cc,#6d,#e2,#8b,#ec,#f2,#06,#69
	db #fe,#ec,#5e,#94,#a0,#cb,#9a,#06
	db #97,#a0,#06,#2e,#a6,#06,#2f,#84
	db #3e,#9d,#e9,#9f,#80,#a7,#c9,#ed
	db #f8,#22,#0f,#83,#82,#7e,#e6,#cf
	db #d5,#2a,#1d,#08,#a2,#ac,#82,#2a
	db #42,#22,#22,#d4,#02,#3f,#82,#87
	db #f4,#eb,#01,#55,#07,#fd,#db,#e9
	db #f3,#d9,#8b,#d8,#22,#4b,#e8,#08
	db #3a,#05,#ae,#a6,#eb,#1b,#68,#e1
	db #ee,#84,#4f,#53,#40,#83,#03,#92
	db #c6,#03,#e0,#0b,#33,#32,#07,#fe
	db #4e,#9b,#e0,#21,#2e,#22,#89,#7e
	db #e0,#2d,#47,#23,#6c,#45,#1a,#12
	db #10,#f9,#bd,#51,#f0,#e2,#c1,#f3
	db #86,#94,#c1,#44,#87,#c6,#b1,#95
	db #87,#9b,#84,#e5,#51,#e4,#45,#e3
	db #bf,#65,#bc,#98,#b0,#75,#be,#bd
	db #d0,#bd,#80,#cb,#75,#80,#c0,#d6
	db #c7,#86,#1b,#b6,#1f,#38,#81,#9f
	db #78,#b6,#11,#51,#ff,#f2,#d9,#45
	db #a5,#14,#8c,#4d,#d8,#bf,#34,#8b
	db #d2,#84,#49,#8f,#8e,#24,#8d,#92
	db #e0,#49,#c7,#a8,#27,#88,#5c,#b8
	db #6c,#e8,#03,#1f,#b7,#ea,#82,#96
	db #78,#ad,#00,#fe,#00,#c8,#53,#4b
	db #09,#31,#30,#00,#8a,#b3,#2c,#d3
	db #00,#8a,#20,#8a,#40,#8b,#43,#8b
	db #1a,#72,#8a,#09,#02,#40,#c0,#1c
	db #5d,#7f,#2f,#30,#8c,#07,#46,#8c
	db #78,#8c,#9a,#05,#00,#bc,#8c,#d9
	db #8c,#0b,#00,#8d,#2d,#8d,#5c,#8d
	db #8e,#8d,#97,#43,#8d,#11,#c8,#8d
	db #ea,#05,#80,#18,#8e,#48,#8e,#08
	db #7a,#8e,#84,#8e,#17,#b3,#8e,#00
	db #ba,#8e,#c3,#8e,#db,#8e,#fd,#8e
	db #02,#01,#8f,#19,#8f,#3b,#8f,#0b
	db #00,#5d,#8f,#61,#8f,#68,#8f,#86
	db #8f,#fe,#47,#1c,#8a,#8f,#1d,#9e
	db #8f,#d0,#05,#10,#f2,#8f,#2f,#09
	db #90,#2b,#47,#90,#2f,#3c,#90,#17
	db #c2,#5e,#e3,#17,#77,#f9,#f0,#5e
	db #6d,#90,#51,#00,#8b,#5b,#8b,#7c
	db #8b,#c7,#8b,#f3,#03,#8b,#12,#8c
	db #21,#8c,#58,#0d,#09,#ff,#37,#da
	db #56,#64,#15,#20,#00,#09,#2f,#0c
	db #0f,#0e,#93,#00,#0d,#00,#0c,#00
	db #d9,#0f,#2a,#56,#34,#c2,#04,#00
	db #1a,#05,#0f,#23,#2e,#45,#0c,#23
	db #2d,#0c,#01,#25,#30,#2c,#01,#0b
	db #0b,#00,#2b,#0c,#2a,#0c,#0a,#0a
	db #29,#0c,#82,#01,#09,#08,#28,#0c
	db #01,#00,#07,#07,#27,#0c,#26,#0c
	db #06,#06,#20,#25,#0c,#01,#05,#04
	db #24,#0c,#80,#01,#03,#03,#23,#0c
	db #22,#0c,#09,#02,#02,#21,#0c,#01
	db #01,#4a,#5c,#7d,#4a,#21,#3e,#26
	db #1d,#27,#3c,#29,#08,#1b,#26,#3a
	db #28,#19,#25,#42,#38,#27,#17,#24
	db #36,#28,#10,#15,#23,#34,#2b,#13
	db #22,#32,#84,#2a,#11,#21,#fa,#a7
	db #64,#97,#60,#4f,#ff,#ff,#c1,#02
	db #4e,#01,#00,#02,#89,#4d,#08,#4d
	db #0b,#da,#19,#c4,#33,#1e,#23,#8e
	db #63,#8c,#46,#28,#8c,#30,#0e,#b2
	db #0f,#00,#c6,#30,#0e,#6a,#00,#81
	db #01,#da,#6b,#da,#69,#d2,#6b,#05
	db #d2,#6f,#d2,#69,#e2,#05,#09,#a0
	db #69,#c2,#34,#81,#02,#00,#d2,#35
	db #d2,#4c,#80,#03,#d2,#34,#4f,#80
	db #09,#31,#0b,#4b,#01,#0b,#58,#30
	db #0b,#3f,#f1,#0b,#00,#c2,#8a,#8b
	db #04,#d2,#95,#d2,#83,#0e,#d2,#8b
	db #d2,#7d,#05,#20,#0b,#87,#d2,#91
	db #d2,#63,#81,#05,#79,#05,#83,#91
	db #c2,#69,#31,#63,#73,#03,#34,#da
	db #65,#65,#d2,#33,#61,#da,#03,#07
	db #00,#69,#da,#c4,#02,#c4,#04,#08
	db #c4,#06,#c4,#08,#8b,#f0,#f0,#11
	db #56,#68,#10,#1e,#2a,#c4,#92,#2c
	db #8c,#92,#70,#2d,#6e,#2c,#6f,#80
	db #09,#0b,#8c,#92,#79,#a3,#2d,#92
	db #c9,#82,#92,#18,#91,#8e,#8e,#1c
	db #75,#05,#47,#92,#c2,#68,#8c,#92
	db #8e,#8c,#43,#69,#d8,#c4,#01,#74
	db #18,#03,#76,#05,#08,#68,#0d,#c4
	db #07,#7a,#c4,#09,#a3,#7c,#ad,#18
	db #63,#1e,#5b,#c4,#05,#51,#05,#c2
	db #46,#2a,#82,#38,#2b,#5e,#63,#2a
	db #6a,#2b,#0b,#c9,#33,#01,#9a,#0b
	db #32,#f5,#0b,#95,#95,#04,#c0,#1e
	db #8b,#ea,#87,#fc,#60,#05,#d2,#c4
	db #8d,#4f,#6a,#01,#05,#70,#68,#08
	db #6e,#e3,#08,#0e,#2a,#77,#02,#2e
	db #ac,#79,#02,#23,#24,#06,#d2,#7c
	db #d2,#7d,#c2,#a2,#ea,#0f,#46,#83
	db #a6,#4e,#03,#7d,#07,#a3,#b4,#6b
	db #0b,#03,#07,#a3,#c2,#72,#52,#97
	db #72,#43,#08,#6e,#ab,#d8,#e6,#9f
	db #6f,#4f,#43,#74,#2d,#9c,#1b,#4d
	db #78,#05,#7d,#0a,#70,#82,#38,#86
	db #78,#01,#0b,#b8,#80,#05,#6c,#7c
	db #05,#ee,#be,#37,#0b,#91,#c2,#80
	db #b1,#10,#ea,#83,#ea,#07,#81,#ea
	db #7d,#c2,#7a,#6b,#84,#87,#7b,#35
	db #7a,#7a,#7f,#bf,#18,#78,#09,#40
	db #ff,#ce,#c6,#02,#7b,#b4,#18,#73
	db #96,#a4,#51,#87,#f1,#04,#85,#06
	db #c0,#32,#e8,#66,#7a,#b1,#e2,#70
	db #da,#58,#8c,#da,#70,#ee,#0b,#c2
	db #29,#92,#4a,#3e,#33,#95,#90,#e5
	db #07,#75,#a2,#2e,#14,#09,#fe,#64
	db #82,#51,#42,#c2,#30,#3d,#91,#96
	db #9c,#3d,#46,#96,#76,#0b,#c2,#64
	db #60,#3d,#ca,#cc,#67,#03,#74,#6f
	db #07,#61,#c7,#09,#6d,#0d,#1a,#09
	db #61,#2a,#c2,#8c,#3d,#b8,#c5,#8d
	db #a3,#23,#95,#03,#81,#99,#d2,#9b
	db #03,#c0,#9f,#d2,#a3,#e1,#03,#a5
	db #81,#1a,#c2,#46,#a2,#a6,#14,#2e
	db #9f,#8b,#aa,#e2,#81,#4e,#66,#19
	db #2a,#66,#8d,#4d,#8a,#4d,#ce,#4d
	db #03,#d2,#35,#c2,#c1,#5c,#8c,#c4
	db #0a,#8a,#56,#8d,#a2,#16,#8b,#da
	db #83,#d7,#ec,#35,#f9,#0b,#a5,#d5
	db #cd,#72,#f4,#1c,#23,#6b,#de,#1c
	db #65,#05,#4e,#0b,#73,#0f,#91,#61
	db #ca,#c0,#79,#c2,#d4,#8e,#b7,#f1
	db #64,#ea,#d5,#52,#85,#d9,#b2,#a4
	db #92,#f1,#8c,#38,#71,#75,#34,#05
	db #de,#2c,#71,#32,#38,#da,#7a,#c9
	db #31,#1e,#c8,#2b,#4b,#5a,#82,#ac
	db #63,#8e,#ca,#32,#f1,#e7,#05,#b7
	db #69,#0f,#af,#32,#35,#cf,#49,#6d
	db #87,#f9,#53,#c2,#ff,#94,#4f,#00
	db #ff,#f8,#00,#00,#00,#00,#00,#00
; #a035
; ld de,#8a00
; call #8000
;
.init_music
;
	ld de,l8a00
	jp real_init_music
;
.music_info
	db "Netherworld - Amiga Title by Nigel Pritchard (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
