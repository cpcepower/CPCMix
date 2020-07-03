; Music of The Last Ninja 3 (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 07/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THELASN3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 05
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
	db #00,#1e,#8a,#27,#8a,#bd,#8a,#c0
	db #8a,#1a,#8a,#1e,#8a,#27,#8a,#bd
	db #8a,#05,#c0,#00,#00,#2f,#7f,#09
	db #3e,#7f,#08,#3e,#7f,#02,#1e,#76
	db #8e,#78,#8e,#8a,#8e,#76,#8e,#78
	db #8e,#8a,#8e,#cc,#8e,#78,#8e,#8a
	db #8e,#11,#8f,#78,#8e,#8a,#8e,#57
	db #8f,#78,#8e,#8a,#8e,#a0,#8f,#78
	db #8e,#8a,#8e,#cc,#8e,#78,#8e,#8a
	db #8e,#11,#8f,#78,#8e,#8a,#8e,#57
	db #8f,#78,#8e,#8a,#8e,#a0,#8f,#78
	db #8e,#8a,#8e,#de,#8f,#e2,#8f,#f1
	db #8f,#1c,#90,#7e,#90,#82,#90,#b2
	db #90,#14,#91,#3c,#91,#1c,#90,#7e
	db #90,#82,#90,#b2,#90,#14,#91,#3c
	db #91,#70,#91,#7e,#90,#d2,#91,#1c
	db #90,#7e,#90,#82,#90,#b2,#90,#14
	db #91,#3c,#91,#70,#91,#7e,#90,#d2
	db #91,#b2,#90,#54,#92,#5b,#92,#8d
	db #92,#7e,#90,#c6,#92,#1c,#90,#7e
	db #90,#82,#90,#b2,#90,#14,#91,#3c
	db #91,#70,#91,#7e,#90,#d2,#91,#fd
	db #92,#16,#93,#2f,#93,#30,#3c,#93
	db #e6,#8a,#f0,#8a,#15,#8b,#b4,#8b
	db #d3,#8b,#ee,#8b,#0d,#8c,#28,#8c
	db #53,#8c,#72,#8c,#97,#8c,#fe,#8c
	db #6e,#8d,#b5,#8d,#d0,#8d,#f2,#8d
	db #29,#8e,#4e,#8e,#57,#8e,#ed,#8a
	db #f0,#8a,#ff,#37,#00,#00,#00,#00
	db #fd,#8a,#15,#8b,#00,#37,#00,#2a
	db #11,#2d,#0d,#2f,#09,#2e,#05,#2e
	db #05,#2e,#05,#2d,#05,#2d,#05,#2d
	db #05,#2c,#05,#2c,#05,#2c,#05,#2d
	db #05,#2d,#05,#2d,#05,#ed,#8a,#b4
	db #8b,#00,#b7,#01,#6f,#fb,#ff,#ff
	db #6d,#fb,#ff,#ff,#6c,#fb,#ff,#ff
	db #6b,#fb,#01,#00,#6a,#fb,#01,#00
	db #69,#fb,#01,#00,#68,#fb,#ff,#ff
	db #68,#fb,#ff,#ff,#67,#fb,#ff,#ff
	db #67,#fb,#01,#00,#66,#fb,#01,#00
	db #66,#fb,#01,#00,#65,#fb,#ff,#ff
	db #65,#fb,#ff,#ff,#65,#fb,#ff,#ff
	db #64,#fb,#01,#00,#64,#fb,#01,#00
	db #64,#fb,#01,#00,#64,#fb,#ff,#ff
	db #63,#fb,#ff,#ff,#63,#fb,#ff,#ff
	db #63,#fb,#01,#00,#63,#fb,#01,#00
	db #63,#fb,#01,#00,#62,#fb,#ff,#ff
	db #62,#fb,#ff,#ff,#62,#fb,#ff,#ff
	db #62,#fb,#01,#00,#62,#fb,#01,#00
	db #62,#fb,#01,#00,#61,#fb,#ff,#ff
	db #61,#fb,#ff,#ff,#61,#fb,#ff,#ff
	db #61,#fb,#01,#00,#61,#fb,#01,#00
	db #61,#fb,#01,#00,#61,#fb,#ff,#ff
	db #61,#fb,#ff,#ff,#c7,#8b,#d3,#8b
	db #00,#37,#00,#2a,#11,#2d,#05,#2f
	db #11,#2e,#05,#2d,#05,#2d,#05,#2c
	db #05,#2c,#05,#2c,#05,#2b,#05,#2b
	db #05,#2b,#05,#e2,#8b,#ee,#8b,#00
	db #37,#00,#2c,#05,#2c,#05,#2c,#04
	db #2b,#04,#2b,#03,#2b,#03,#2c,#03
	db #2c,#03,#2c,#03,#2b,#03,#f5,#8b
	db #0d,#8c,#00,#37,#00,#6c,#05,#fe
	db #ff,#6c,#05,#fc,#ff,#6c,#05,#fe
	db #ff,#6b,#05,#02,#00,#6b,#05,#04
	db #00,#6b,#05,#02,#00,#1c,#8c,#28
	db #8c,#00,#37,#00,#2c,#05,#2c,#05
	db #2c,#06,#2b,#06,#2b,#07,#2b,#07
	db #2c,#07,#2c,#07,#2c,#07,#2b,#07
	db #3b,#8c,#53,#8c,#00,#37,#00,#2a
	db #11,#2d,#05,#2f,#11,#2e,#05,#2d
	db #05,#2d,#11,#2c,#11,#2c,#05,#2c
	db #05,#2b,#11,#2b,#11,#2b,#05,#2c
	db #05,#2c,#11,#2c,#11,#2b,#05,#2b
	db #05,#2b,#11,#66,#8c,#72,#8c,#00
	db #37,#00,#2c,#05,#2c,#05,#2c,#06
	db #2b,#06,#2b,#07,#2b,#07,#2c,#08
	db #2c,#08,#2c,#08,#2b,#08,#2b,#08
	db #2b,#08,#7f,#8c,#97,#8c,#00,#37
	db #00,#2a,#ed,#2d,#f9,#2f,#05,#2e
	db #05,#2e,#05,#2e,#05,#2d,#05,#2d
	db #05,#2d,#05,#2c,#05,#2c,#05,#2c
	db #05,#2d,#05,#2d,#05,#2d,#05,#ce
	db #8c,#fe,#8c,#00,#37,#00,#2d,#05
	db #2d,#05,#2d,#04,#2e,#04,#2e,#03
	db #2e,#03,#6d,#03,#fe,#ff,#6d,#03
	db #fc,#ff,#6d,#03,#fe,#ff,#6c,#03
	db #02,#00,#6c,#03,#04,#00,#6c,#03
	db #02,#00,#2d,#03,#2d,#03,#2d,#04
	db #2e,#04,#2e,#05,#2e,#05,#6d,#05
	db #fe,#ff,#6d,#05,#fc,#ff,#6d,#05
	db #fe,#ff,#6c,#05,#02,#00,#6c,#05
	db #04,#00,#6c,#05,#02,#00,#6d,#05
	db #fe,#ff,#6d,#05,#fc,#ff,#6d,#05
	db #fe,#ff,#6e,#05,#02,#00,#6e,#05
	db #04,#00,#6e,#05,#02,#00,#ed,#8a
	db #6e,#8d,#00,#b7,#00,#2d,#05,#2d
	db #04,#2d,#03,#2e,#02,#2e,#01,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#0d,#2d
	db #01,#2d,#01,#2e,#02,#2e,#02,#2e
	db #03,#2d,#03,#2d,#03,#2d,#03,#2c
	db #03,#2c,#03,#2c,#03,#2d,#03,#2d
	db #03,#2d,#04,#2e,#04,#2e,#05,#2e
	db #05,#2d,#05,#2d,#05,#2d,#05,#2c
	db #05,#2c,#05,#2c,#05,#2d,#05,#2d
	db #05,#2d,#04,#2e,#04,#2e,#03,#2e
	db #03,#2d,#03,#2d,#03,#2d,#03,#2c
	db #03,#2c,#03,#2c,#03,#2d,#03,#2d
	db #02,#2d,#02,#2e,#01,#2e,#01,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#ed,#8a
	db #b5,#8d,#02,#b7,#00,#1f,#01,#1f
	db #02,#1f,#03,#1f,#04,#1f,#05,#1f
	db #06,#1f,#07,#1f,#08,#1f,#09,#1f
	db #0a,#1f,#0b,#1f,#0c,#1f,#0d,#1f
	db #0e,#1f,#0f,#1f,#10,#1f,#11,#1f
	db #12,#1e,#13,#1e,#14,#1d,#15,#1d
	db #16,#1c,#17,#1c,#18,#1b,#19,#1b
	db #1a,#1a,#1b,#1a,#1c,#19,#1d,#17
	db #1e,#15,#1f,#13,#1d,#cd,#8d,#d0
	db #8d,#00,#37,#00,#1a,#05,#82,#16
	db #05,#82,#16,#05,#83,#16,#05,#83
	db #16,#05,#83,#16,#05,#83,#13,#05
	db #ed,#8a,#f2,#8d,#00,#b7,#00,#1a
	db #05,#3f,#26,#0c,#1e,#27,#3d,#28
	db #0c,#1c,#29,#3b,#2a,#0c,#1a,#2b
	db #3a,#2c,#0c,#19,#2d,#39,#2e,#0c
	db #18,#2f,#05,#8e,#29,#8e,#00,#37
	db #00,#6d,#05,#fc,#ff,#6d,#05,#f8
	db #ff,#6d,#05,#fc,#ff,#6c,#05,#04
	db #00,#6c,#05,#08,#00,#6c,#05,#fc
	db #ff,#6d,#05,#fc,#ff,#6d,#05,#f8
	db #ff,#6d,#05,#fc,#ff,#6e,#05,#04
	db #00,#6e,#05,#08,#00,#6e,#05,#04
	db #00,#ed,#8a,#4e,#8e,#00,#b7,#00
	db #2f,#fe,#2e,#fe,#2d,#fe,#2c,#fe
	db #2b,#fe,#2a,#fe,#29,#fe,#28,#fe
	db #27,#fe,#26,#fe,#25,#fe,#24,#fe
	db #23,#fe,#22,#fe,#21,#fe,#ed,#8a
	db #57,#8e,#00,#b7,#00,#1a,#05,#74
	db #8e,#76,#8e,#00,#37,#00,#2d,#05
	db #2d,#04,#2d,#03,#2c,#02,#2c,#01
	db #2c,#01,#2d,#01,#2d,#01,#2d,#02
	db #2e,#03,#2e,#04,#2e,#05,#ca,#c2
	db #22,#81,#01,#fa,#1f,#d2,#29,#d2
	db #23,#d6,#1f,#ce,#23,#ea,#1f,#d2
	db #29,#c2,#8c,#89,#02,#89,#85,#7f
	db #7b,#7f,#85,#89,#8d,#89,#85,#7f
	db #7b,#7f,#85,#89,#8d,#89,#85,#7f
	db #7b,#7f,#85,#89,#8d,#89,#85,#7f
	db #7b,#7f,#85,#89,#8d,#89,#85,#7f
	db #7b,#7f,#85,#89,#8d,#89,#85,#7f
	db #7b,#7f,#85,#89,#8d,#89,#85,#7f
	db #7b,#7f,#85,#89,#8d,#89,#85,#7f
	db #7b,#7f,#85,#89,#52,#83,#03,#d2
	db #61,#ce,#60,#80,#04,#ce,#60,#80
	db #03,#ce,#60,#80,#05,#de,#66,#80
	db #03,#ce,#6b,#ce,#61,#d2,#5d,#ce
	db #59,#ce,#5d,#d2,#5d,#ce,#5c,#80
	db #06,#ce,#52,#80,#03,#52,#80,#05
	db #d8,#c4,#02,#c4,#03,#c4,#04,#c4
	db #05,#48,#87,#03,#ce,#4e,#05,#ce
	db #52,#03,#ce,#59,#ce,#5d,#ce,#59
	db #c2,#60,#83,#03,#d2,#61,#ce,#60
	db #80,#04,#ce,#60,#80,#03,#60,#80
	db #05,#e0,#66,#80,#03,#ce,#66,#80
	db #06,#ce,#66,#80,#03,#ce,#61,#ce
	db #5d,#ce,#59,#ce,#5d,#ce,#61,#ce
	db #5d,#ce,#59,#ce,#53,#52,#80,#05
	db #d6,#c4,#02,#ce,#c4,#03,#ce,#c4
	db #04,#66,#83,#07,#ce,#6b,#ce,#67
	db #ce,#61,#ce,#5d,#ce,#59,#c2,#5c
	db #83,#03,#d2,#5d,#ce,#5c,#80,#04
	db #ce,#5c,#80,#03,#5c,#80,#05,#e0
	db #5c,#80,#03,#ce,#5c,#80,#06,#ce
	db #5c,#80,#03,#ce,#59,#ce,#53,#ce
	db #4f,#ce,#53,#d2,#53,#ce,#52,#80
	db #08,#ce,#52,#80,#03,#ce,#52,#80
	db #05,#ce,#60,#87,#09,#ce,#60,#80
	db #0a,#d4,#c4,#04,#ce,#c4,#05,#ce
	db #c4,#06,#60,#83,#03,#d2,#67,#c2
	db #5c,#83,#03,#d2,#5d,#ce,#5c,#80
	db #04,#ce,#5c,#80,#03,#5c,#80,#05
	db #e0,#5c,#80,#03,#ce,#5c,#80,#06
	db #ce,#5c,#80,#03,#ce,#59,#ce,#53
	db #ce,#4f,#ce,#53,#d2,#53,#ce,#52
	db #80,#08,#ce,#52,#80,#03,#52,#80
	db #05,#d0,#6a,#87,#09,#ce,#6a,#80
	db #0a,#da,#6a,#80,#0b,#c2,#30,#89
	db #0c,#c2,#22,#81,#01,#c0,#1a,#7c
	db #c0,#0d,#04,#c6,#04,#c6,#04,#c6
	db #04,#8c,#8b,#02,#89,#85,#7e,#0d
	db #7b,#7f,#84,#0f,#89,#8d,#88,#11
	db #85,#7f,#7a,#13,#7f,#85,#88,#15
	db #8d,#89,#84,#17,#7f,#7b,#7e,#19
	db #85,#89,#8c,#1b,#89,#85,#7e,#1d
	db #7b,#7f,#ca,#c2,#60,#81,#0d,#67
	db #6b,#53,#48,#80,#0e,#ce,#52,#80
	db #0d,#6b,#53,#53,#6b,#53,#48,#80
	db #0e,#ce,#66,#80,#0d,#71,#61,#67
	db #6b,#53,#48,#80,#0e,#ce,#52,#80
	db #0d,#6b,#53,#53,#6b,#53,#48,#80
	db #0e,#ce,#52,#80,#0d,#53,#61,#67
	db #6b,#53,#48,#80,#0e,#ce,#52,#80
	db #0d,#6b,#71,#53,#6b,#53,#48,#80
	db #0e,#ce,#66,#80,#0d,#71,#61,#67
	db #6b,#53,#48,#80,#0e,#ce,#52,#80
	db #0d,#71,#53,#6b,#67,#6b,#48,#80
	db #0e,#ce,#52,#80,#0d,#53,#22,#81
	db #01,#c2,#30,#83,#07,#ce,#37,#d2
	db #3b,#d2,#3b,#ce,#41,#ce,#45,#ce
	db #49,#d2,#49,#d2,#45,#ce,#41,#ce
	db #3b,#ce,#37,#ce,#31,#ce,#37,#d2
	db #3b,#d2,#49,#ce,#4f,#ce,#49,#ce
	db #53,#d2,#53,#ce,#4f,#ce,#49,#d2
	db #45,#c2,#4a,#81,#0d,#4b,#63,#4b
	db #48,#80,#0e,#ce,#4a,#80,#0d,#63
	db #4b,#4b,#63,#4b,#48,#80,#0e,#ce
	db #62,#80,#0d,#67,#6b,#67,#63,#4b
	db #48,#80,#0e,#ce,#4a,#80,#0d,#63
	db #4b,#4b,#63,#4b,#48,#80,#0e,#ce
	db #62,#80,#0d,#67,#45,#45,#45,#5d
	db #48,#80,#0e,#ce,#44,#80,#0d,#5d
	db #5d,#45,#5d,#45,#48,#80,#0e,#ce
	db #44,#80,#0d,#5d,#75,#45,#5d,#45
	db #48,#80,#0e,#ce,#44,#80,#0d,#5d
	db #45,#71,#75,#45,#48,#80,#0e,#ce
	db #5c,#80,#0d,#45,#22,#81,#01,#c0
	db #1a,#1f,#d2,#33,#32,#80,#0f,#d8
	db #c4,#01,#ce,#c4,#02,#ce,#c4,#03
	db #ce,#c4,#04,#ce,#c4,#05,#ce,#c4
	db #06,#ce,#30,#83,#01,#d2,#2c,#05
	db #d2,#28,#07,#c2,#30,#83,#07,#ce
	db #37,#d2,#3b,#d2,#3b,#ce,#41,#ce
	db #45,#ce,#49,#d2,#49,#d2,#45,#ce
	db #41,#ce,#3b,#ce,#37,#ce,#31,#ce
	db #37,#d2,#3b,#d2,#49,#ce,#4f,#ce
	db #49,#ce,#53,#d2,#53,#ce,#4f,#ce
	db #59,#ce,#57,#ce,#53,#ce,#4f,#c2
	db #62,#81,#0d,#67,#6b,#53,#48,#80
	db #0e,#ce,#52,#80,#0d,#6b,#53,#53
	db #6b,#53,#48,#80,#0e,#ce,#66,#80
	db #0d,#71,#61,#67,#6b,#53,#48,#80
	db #0e,#ce,#52,#80,#0d,#6b,#53,#53
	db #6b,#53,#48,#80,#0e,#ce,#52,#80
	db #0d,#53,#61,#67,#6b,#53,#48,#80
	db #0e,#ce,#52,#80,#0d,#6b,#53,#53
	db #6b,#53,#48,#80,#0e,#ce,#66,#80
	db #0d,#71,#61,#67,#6b,#53,#48,#80
	db #0e,#ce,#52,#80,#0d,#6b,#53,#53
	db #6b,#53,#48,#80,#0e,#ce,#52,#80
	db #0d,#53,#52,#83,#03,#ce,#c4,#02
	db #52,#80,#04,#4e,#80,#06,#c4,#03
	db #ce,#52,#80,#04,#4e,#80,#06,#c4
	db #04,#ce,#52,#80,#04,#4e,#80,#06
	db #c4,#05,#ce,#52,#80,#04,#4e,#80
	db #06,#c4,#06,#ce,#52,#80,#04,#4e
	db #80,#06,#c4,#08,#ce,#52,#80,#04
	db #4e,#80,#06,#c4,#09,#ce,#52,#80
	db #04,#4e,#80,#06,#c4,#0a,#ce,#52
	db #80,#04,#4e,#80,#06,#c4,#0c,#ce
	db #52,#80,#04,#4e,#80,#06,#e0,#5e
	db #c1,#10,#3f,#5a,#40,#3f,#c6,#3f
	db #c6,#3f,#c6,#3f,#56,#40,#3f,#52
	db #40,#3f,#c6,#3f,#56,#40,#3f,#c6
	db #3f,#50,#40,#3f,#c6,#3f,#52,#40
	db #3f,#c6,#3f,#50,#40,#3f,#4c,#40
	db #3f,#48,#40,#3f,#32,#81,#01,#c0
	db #1e,#45,#c2,#52,#83,#09,#d6,#49
	db #ce,#53,#ce,#57,#ce,#59,#ce,#5d
	db #ce,#61,#d0,#5d,#d0,#59,#ce,#61
	db #d0,#5d,#d0,#59,#ce,#67,#d0,#61
	db #d0,#67,#ce,#6b,#d0,#61,#d0,#67
	db #ce,#71,#d0,#6f,#d0,#6b,#ce,#71
	db #d0,#6f,#d0,#67,#c2,#60,#81,#0d
	db #67,#6b,#53,#48,#80,#0e,#ce,#52
	db #80,#0d,#6b,#53,#53,#6b,#53,#48
	db #80,#0e,#ce,#66,#80,#0d,#71,#48
	db #80,#0e,#48,#05,#48,#09,#48,#0d
	db #48,#11,#48,#13,#48,#17,#48,#1b
	db #d0,#48,#89,#11,#48,#0d,#48,#01
	db #48,#05,#48,#09,#48,#01,#6a,#83
	db #09,#ce,#c4,#02,#6a,#80,#12,#c4
	db #03,#ce,#c4,#04,#6b,#c4,#05,#ce
	db #c4,#06,#6b,#c4,#07,#ce,#c4,#08
	db #6b,#c4,#09,#ce,#c4,#0a,#6b,#c4
	db #0b,#ce,#c4,#0c,#6b,#c4,#0d,#ce
	db #c4,#0e,#6b,#78,#c0,#0d,#04,#c6
	db #04,#c6,#04,#c6,#04,#52,#83,#09
	db #ce,#c4,#0f,#ce,#52,#07,#ce,#c4
	db #0f,#ce,#52,#0b,#ce,#c4,#0f,#ce
	db #52,#0f,#ce,#c4,#0f,#c2,#22,#81
	db #01,#ce,#c4,#0f,#ce,#22,#05,#ce
	db #c4,#0f,#ce,#22,#09,#ce,#c4,#0f
	db #ce,#22,#0d,#ce,#c4,#0f,#c2,#74
	db #8b,#02,#d2,#74,#0d,#d2,#74,#0f
	db #d2,#74,#11,#c2,#ff,#00,#00,#00
	db #08,#b7,#09,#08,#6e,#0a,#08,#dd
	db #0c,#08,#00,#e0,#5e,#c1,#10,#3f
	db #5a,#40,#38,#3f,#c6,#01,#47,#56
	db #08,#52,#40,#07,#33,#04,#50,#04
	db #5d,#52,#09,#24,#4c,#02,#48,#02
	db #32,#94,#bf,#4d,#1e,#a8,#88,#11
	db #09,#d6,#fe,#19,#f8,#19,#b2,#6c
	db #07,#d0,#5d,#d0,#59,#05,#44,#67
	db #d0,#07,#67,#b3,#ad,#05,#80,#71
	db #d0,#6f,#d0,#70,#6b,#05,#67,#a7
	db #f0,#ab,#07,#17,#48,#aa,#00,#09
	db #48,#0d,#48,#11,#48,#13,#01,#48
	db #17,#48,#1b,#d0,#48,#89,#09,#4e
	db #0d,#01,#15,#0a,#01,#6a,#6a,#f3
	db #32,#f1,#a4,#12,#a8,#f0,#6b,#9e
	db #a8,#29,#05,#9d,#a2,#db,#b1,#05
	db #19,#0a,#05,#24,#0b,#05,#0c,#05
	db #0d,#85,#05,#0e,#6b,#78,#8b,#b8
	db #46,#a1,#49,#10,#0f,#6c,#07,#05
	db #c3,#0b,#05,#8a,#02,#05,#b5,#b3
	db #d3,#0c,#22,#05,#05,#87,#09,#05
	db #0d,#0d,#18,#58,#74,#bd,#d2,#24
	db #74,#0d,#02,#0f,#02,#11,#17,#c2
	db #ff,#00,#00,#00,#ff,#fc,#00,#00
;
; #9422
; ld de,#8a00
; call #8000
;
.init_music		; added by Megachur
;
	ld de,l8a00
	jp real_init_music
;
.music_info
	db "The Last Ninja 3 (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
