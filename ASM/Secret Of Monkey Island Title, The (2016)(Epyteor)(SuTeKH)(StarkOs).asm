; Music of Secret Of Monkey Island Title, The (2016)(Epyteor)(SuTeKH)(StarkOs)
; Ripped by Megachur the 14/03/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SECROMIT.BIN"
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
	db #00,#22,#8a,#2f,#8a,#7d,#8a,#a2
	db #8a,#1e,#8a,#26,#8a,#47,#8a,#94
	db #8a,#04,#c0,#00,#00,#05,#c0,#00
	db #00,#0f,#7f,#01,#76,#5e,#5e,#6a
	db #62,#7f,#01,#70,#6e,#7e,#7c,#ed
	db #8b,#fd,#8b,#12,#8c,#16,#8c,#30
	db #8c,#49,#8c,#51,#8c,#6c,#8c,#7d
	db #8c,#86,#8c,#ca,#8c,#fc,#8c,#00
	db #8d,#3d,#8d,#72,#8d,#c6,#8d,#07
	db #8e,#4b,#8e,#b8,#8e,#f4,#8e,#1e
	db #8f,#83,#8f,#c5,#8f,#f7,#8f,#78
	db #90,#b2,#90,#fc,#90,#53,#91,#95
	db #91,#dd,#91,#4d,#92,#89,#92,#dc
	db #92,#46,#93,#81,#93,#cc,#93,#dc
	db #93,#14,#94,#5b,#94,#04,#63,#94
	db #06,#65,#94,#03,#67,#94,#6a,#94
	db #04,#65,#94,#01,#6d,#94,#fe,#65
	db #94,#e0,#65,#94,#04,#65,#94,#03
	db #67,#94,#6a,#94,#04,#65,#94,#01
	db #6d,#94,#ba,#8a,#c4,#8a,#dd,#8a
	db #f8,#8a,#11,#8b,#2b,#8b,#40,#8b
	db #4d,#8b,#73,#8b,#99,#8b,#ae,#8b
	db #bc,#8b,#c1,#8a,#c4,#8a,#ff,#37
	db #00,#00,#00,#00,#cb,#8a,#dd,#8a
	db #00,#37,#00,#4f,#fa,#ff,#4f,#fa
	db #ff,#4f,#fa,#ff,#4f,#02,#00,#4f
	db #02,#00,#4f,#02,#00,#c1,#8a,#f8
	db #8a,#02,#b7,#00,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#02,#01,#01
	db #ff,#8a,#11,#8b,#00,#37,#00,#4f
	db #fc,#ff,#4f,#fc,#ff,#4f,#fc,#ff
	db #4f,#04,#00,#4f,#04,#00,#4f,#04
	db #00,#c1,#8a,#2b,#8b,#00,#b7,#00
	db #0a,#3a,#25,#0c,#09,#29,#0c,#08
	db #27,#0c,#06,#25,#0c,#04,#23,#0c
	db #02,#21,#0c,#c1,#8a,#40,#8b,#00
	db #b7,#00,#3b,#3f,#08,#2a,#04,#08
	db #28,#fc,#26,#f8,#24,#f4,#22,#f0
	db #47,#8b,#4d,#8b,#00,#37,#00,#0f
	db #0f,#2f,#0c,#2f,#0c,#c1,#8a,#73
	db #8b,#00,#b7,#00,#0d,#2d,#03,#2c
	db #07,#2c,#0c,#2b,#07,#2b,#03,#0a
	db #2a,#03,#29,#07,#28,#0c,#27,#07
	db #26,#03,#05,#24,#03,#23,#07,#22
	db #0c,#21,#07,#c1,#8a,#99,#8b,#00
	db #b7,#00,#0d,#2d,#04,#2c,#07,#2c
	db #0c,#2b,#07,#2b,#04,#0a,#2a,#04
	db #29,#07,#28,#0c,#27,#07,#26,#04
	db #05,#24,#04,#23,#07,#22,#0c,#21
	db #07,#c1,#8a,#ae,#8b,#00,#b7,#00
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#05,#04,#03,#02,#01,#b6,#8b
	db #bc,#8b,#00,#37,#00,#0c,#0e,#2e
	db #0c,#2e,#0c,#0e,#c1,#8a,#ed,#8b
	db #00,#b7,#00,#4a,#ff,#ff,#4a,#ff
	db #ff,#49,#ff,#ff,#49,#ff,#ff,#48
	db #ff,#ff,#48,#ff,#ff,#48,#ff,#ff
	db #47,#ff,#ff,#46,#ff,#ff,#45,#ff
	db #ff,#44,#ff,#ff,#43,#ff,#ff,#42
	db #ff,#ff,#41,#ff,#ff,#38,#9b,#01
	db #c4,#0b,#c4,#09,#c4,#08,#c4,#07
	db #c4,#06,#c4,#05,#c2,#ca,#c0,#1d
	db #98,#80,#02,#8f,#87,#85,#dc,#7d
	db #d2,#81,#d2,#85,#d2,#7d,#d2,#81
	db #d2,#77,#38,#8b,#03,#c2,#c0,#2f
	db #c4,#06,#ce,#c4,#07,#ce,#c4,#08
	db #ce,#c4,#09,#ce,#c4,#0a,#ce,#c4
	db #0b,#ce,#c4,#0c,#ce,#c4,#0d,#c2
	db #e6,#6e,#80,#04,#d2,#73,#d2,#77
	db #d2,#50,#80,#05,#ce,#51,#ce,#51
	db #d0,#51,#d8,#64,#80,#02,#e2,#63
	db #c2,#f6,#3e,#8b,#03,#c0,#1a,#43
	db #c2,#ce,#3e,#9b,#01,#ce,#c4,#0b
	db #ce,#c4,#09,#ce,#c4,#08,#ce,#c4
	db #07,#ce,#c4,#06,#ce,#c4,#05,#d8
	db #47,#ea,#4d,#c2,#d0,#64,#81,#02
	db #de,#69,#de,#6d,#d4,#6f,#d4,#73
	db #d6,#77,#d6,#7d,#c2,#e4,#3e,#8b
	db #03,#e8,#39,#e0,#35,#c2,#38,#81
	db #06,#c4,#01,#c4,#02,#c4,#03,#68
	db #81,#07,#ce,#69,#d6,#69,#ce,#69
	db #ce,#34,#80,#06,#c4,#01,#c4,#02
	db #c4,#03,#64,#81,#08,#ce,#65,#ce
	db #38,#80,#06,#c4,#01,#c4,#02,#c4
	db #03,#68,#81,#07,#ce,#69,#d6,#69
	db #ce,#69,#ce,#34,#80,#06,#c4,#01
	db #c4,#02,#c4,#03,#64,#81,#08,#ce
	db #65,#c2,#98,#81,#09,#ce,#81,#ce
	db #87,#ce,#81,#ce,#8f,#ce,#87,#ce
	db #81,#ce,#6f,#ce,#65,#ce,#7d,#ce
	db #85,#ce,#7d,#ce,#69,#ce,#77,#ce
	db #81,#ce,#77,#ce,#8f,#ce,#87,#ce
	db #81,#ce,#77,#ce,#65,#ce,#7d,#ce
	db #85,#ce,#7d,#c2,#80,#81,#04,#c2
	db #38,#81,#06,#c4,#01,#c4,#02,#c4
	db #03,#68,#81,#07,#ce,#69,#d6,#69
	db #ce,#69,#ce,#34,#80,#06,#c4,#01
	db #c4,#02,#c4,#03,#64,#81,#08,#ce
	db #65,#ce,#30,#80,#06,#c4,#01,#c4
	db #02,#c4,#03,#60,#81,#08,#ce,#61
	db #ce,#8e,#80,#04,#d2,#87,#d2,#87
	db #d2,#87,#ce,#8f,#c2,#68,#81,#09
	db #ce,#81,#ce,#87,#ce,#81,#ce,#8f
	db #ce,#87,#ce,#81,#ce,#77,#ce,#65
	db #ce,#7d,#ce,#85,#ce,#7d,#ce,#79
	db #ce,#81,#ce,#87,#ce,#91,#d6,#77
	db #ce,#77,#ce,#34,#80,#06,#c4,#01
	db #c4,#02,#c4,#04,#76,#81,#09,#ce
	db #77,#c2,#c4,#0f,#da,#68,#81,#0a
	db #c4,#01,#c4,#02,#c4,#03,#68,#01
	db #c4,#01,#6e,#01,#c4,#01,#6c,#01
	db #c4,#01,#68,#01,#c4,#01,#64,#01
	db #c4,#01,#c4,#02,#c4,#03,#68,#01
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #c4,#05,#c4,#06,#c4,#07,#c4,#08
	db #c4,#09,#c4,#0a,#c4,#0b,#64,#01
	db #c4,#01,#c4,#02,#c4,#03,#64,#01
	db #c4,#01,#60,#01,#c4,#01,#5e,#01
	db #c4,#01,#64,#01,#c4,#01,#8a,#81
	db #04,#d2,#8b,#d2,#87,#e2,#68,#80
	db #07,#ce,#69,#ce,#38,#80,#06,#c4
	db #01,#c4,#02,#c4,#03,#68,#81,#07
	db #ce,#69,#ce,#34,#80,#06,#c4,#01
	db #c4,#02,#c4,#03,#64,#81,#08,#ce
	db #65,#ce,#30,#80,#06,#c4,#01,#c4
	db #02,#c4,#03,#60,#81,#08,#ce,#61
	db #ce,#8e,#80,#04,#d2,#87,#c2,#34
	db #81,#06,#c4,#01,#c4,#02,#c4,#03
	db #78,#81,#09,#ce,#79,#ce,#38,#80
	db #06,#c4,#01,#c4,#02,#c4,#03,#76
	db #81,#09,#ce,#77,#ce,#73,#ce,#77
	db #ce,#77,#ce,#77,#ce,#69,#ce,#81
	db #ce,#87,#ce,#81,#ce,#8f,#ce,#87
	db #ce,#81,#ce,#77,#ce,#61,#ce,#81
	db #ce,#87,#ce,#81,#ce,#91,#ce,#87
	db #ce,#81,#c2,#60,#81,#0a,#c4,#01
	db #c4,#02,#c4,#03,#60,#01,#c4,#01
	db #c4,#02,#c4,#03,#5e,#01,#c4,#01
	db #c4,#02,#c4,#03,#c4,#04,#c4,#05
	db #c4,#06,#c4,#07,#c4,#08,#c4,#09
	db #c4,#0a,#c4,#0b,#68,#01,#c4,#01
	db #c4,#02,#c4,#03,#68,#01,#c4,#01
	db #c4,#02,#c4,#03,#68,#01,#c4,#01
	db #6e,#01,#c4,#01,#6c,#01,#c4,#01
	db #68,#01,#c4,#01,#64,#01,#c4,#01
	db #c4,#02,#c4,#03,#68,#01,#c4,#01
	db #c4,#02,#c4,#03,#c4,#04,#c4,#05
	db #c4,#06,#c4,#07,#c4,#08,#c4,#09
	db #c4,#0a,#c4,#0b,#c4,#0c,#c4,#0d
	db #d0,#86,#80,#04,#d6,#8f,#ce,#8b
	db #d2,#8b,#d2,#34,#80,#06,#c4,#01
	db #c4,#02,#c4,#03,#64,#81,#08,#ce
	db #65,#d6,#65,#ce,#65,#ce,#3e,#80
	db #06,#c4,#01,#c4,#02,#c4,#03,#6e
	db #81,#08,#ce,#6f,#ce,#3c,#80,#06
	db #c4,#01,#c4,#02,#c4,#03,#64,#81
	db #08,#ce,#65,#c2,#78,#81,#09,#ce
	db #81,#ce,#87,#ce,#81,#ce,#91,#ce
	db #87,#ce,#81,#ce,#79,#ce,#6f,#ce
	db #95,#8b,#95,#8b,#95,#da,#95,#ce
	db #95,#ce,#8f,#87,#8f,#87,#8f,#d2
	db #8b,#85,#8b,#85,#8b,#c2,#6c,#81
	db #0a,#c4,#01,#6e,#01,#c4,#01,#c4
	db #02,#c4,#03,#6e,#01,#c4,#01,#c4
	db #02,#c4,#03,#72,#01,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#c4
	db #06,#c4,#07,#6c,#01,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#6e
	db #01,#c4,#01,#6c,#01,#c4,#01,#68
	db #01,#c4,#01,#64,#01,#c4,#01,#6c
	db #01,#c4,#01,#6e,#01,#c4,#01,#c4
	db #02,#c4,#03,#6e,#01,#c4,#01,#c4
	db #02,#c4,#03,#6c,#01,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#c4
	db #06,#c4,#07,#38,#80,#06,#d2,#68
	db #80,#07,#ce,#69,#d6,#64,#80,#08
	db #ce,#65,#ce,#30,#80,#06,#d2,#60
	db #80,#08,#ce,#61,#ce,#34,#80,#06
	db #d2,#64,#80,#08,#ce,#65,#ce,#38
	db #80,#06,#d2,#68,#80,#07,#ce,#69
	db #d6,#64,#80,#08,#ce,#65,#ce,#30
	db #80,#06,#d2,#60,#80,#08,#ce,#61
	db #d6,#61,#ce,#61,#c2,#98,#80,#09
	db #8f,#99,#8f,#99,#d2,#95,#8b,#95
	db #8b,#95,#da,#8f,#87,#8f,#ce,#8b
	db #7d,#8b,#7d,#8b,#d2,#99,#8f,#99
	db #8f,#99,#d2,#95,#8b,#95,#8b,#95
	db #d2,#91,#87,#91,#87,#91,#ce,#87
	db #ce,#91,#87,#91,#87,#91,#c2,#68
	db #81,#0a,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#6e,#01,#c4,#01
	db #6c,#01,#c4,#01,#68,#01,#c4,#01
	db #64,#01,#c4,#01,#6c,#01,#c4,#01
	db #6e,#01,#c4,#01,#c4,#02,#c4,#03
	db #6e,#01,#c4,#01,#c4,#02,#c4,#03
	db #6c,#01,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#c4,#06,#c4,#07
	db #68,#01,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#6e,#01,#c4,#01
	db #6c,#01,#c4,#01,#68,#01,#c4,#01
	db #64,#01,#c4,#01,#c4,#02,#c4,#03
	db #68,#01,#c4,#01,#c4,#02,#c4,#03
	db #68,#01,#c4,#01,#c4,#02,#c4,#03
	db #68,#01,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#c4,#06,#c4,#07
	db #ce,#78,#81,#0b,#d2,#6f,#d2,#6f
	db #d6,#77,#ce,#73,#d2,#73,#d2,#38
	db #80,#06,#c4,#01,#c4,#02,#c4,#03
	db #68,#81,#07,#ce,#69,#d6,#69,#ce
	db #69,#d6,#64,#80,#08,#ce,#65,#ce
	db #38,#80,#06,#c4,#01,#c4,#02,#c4
	db #03,#68,#81,#07,#ce,#69,#d6,#69
	db #ce,#69,#ce,#30,#81,#06,#c4,#01
	db #c4,#02,#c4,#03,#6e,#81,#09,#ce
	db #6f,#d6,#77,#ce,#77,#ce,#34,#80
	db #06,#c4,#01,#c4,#02,#c4,#03,#78
	db #81,#09,#ce,#79,#ce,#77,#ce,#81
	db #ce,#87,#ce,#81,#ce,#8f,#ce,#87
	db #ce,#81,#ce,#77,#ce,#65,#ce,#7d
	db #ce,#85,#ce,#7d,#ce,#69,#ce,#81
	db #ce,#87,#ce,#81,#ce,#8f,#ce,#87
	db #ce,#81,#ce,#77,#d6,#68,#81,#0a
	db #c4,#01,#c4,#02,#c4,#03,#64,#01
	db #c4,#01,#60,#01,#c4,#01,#5e,#01
	db #c4,#01,#64,#01,#c4,#01,#60,#01
	db #c4,#01,#c4,#02,#c4,#03,#60,#01
	db #c4,#01,#c4,#02,#c4,#03,#5e,#01
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #c4,#05,#c4,#06,#c4,#07,#c4,#08
	db #c4,#09,#c4,#0a,#c4,#0b,#c4,#0c
	db #c4,#0d,#c4,#0e,#c4,#0f,#d4,#34
	db #81,#06,#c4,#01,#c4,#02,#c4,#03
	db #c4,#0f,#c2,#ce,#34,#81,#06,#c4
	db #01,#c4,#02,#c4,#03,#64,#81,#08
	db #ce,#65,#ce,#78,#80,#0b,#ce,#69
	db #ce,#6f,#ce,#69,#ce,#6f,#ce,#61
	db #ce,#69,#ce,#61,#ce,#6f,#ce,#61
	db #ce,#69,#ce,#61,#ce,#77,#ce,#65
	db #ce,#6f,#ce,#65,#ce,#6f,#ce,#65
	db #ce,#6f,#ce,#65,#ce,#6f,#ce,#65
	db #ce,#6f,#ce,#65,#c2,#ce,#64,#81
	db #09,#ce,#7d,#ce,#85,#ce,#7d,#ce
	db #79,#ce,#81,#ce,#87,#ce,#91,#d6
	db #87,#ce,#87,#ce,#30,#80,#06,#c4
	db #01,#c4,#02,#c4,#03,#86,#81,#09
	db #ce,#87,#ce,#3e,#80,#06,#c4,#01
	db #c4,#02,#c4,#03,#7c,#81,#09,#ce
	db #7d,#d6,#7d,#ce,#7d,#ce,#3e,#80
	db #06,#c4,#01,#c4,#02,#c4,#03,#7c
	db #81,#09,#ce,#7d,#c2,#ce,#5e,#81
	db #0a,#c4,#01,#c4,#02,#c4,#03,#64
	db #01,#c4,#01,#c4,#02,#c4,#03,#68
	db #01,#c4,#01,#c4,#02,#c4,#03,#6e
	db #01,#c4,#01,#c4,#0f,#ce,#6e,#01
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #c4,#05,#c4,#06,#c4,#07,#60,#01
	db #c4,#01,#76,#01,#c4,#01,#72,#01
	db #c4,#01,#78,#01,#c4,#01,#64,#01
	db #c4,#01,#c4,#02,#c4,#03,#6e,#01
	db #c4,#01,#c4,#0f,#ce,#6e,#01,#c4
	db #01,#c4,#02,#c4,#03,#c4,#04,#c4
	db #05,#c4,#06,#c4,#07,#5e,#01,#c4
	db #01,#c4,#02,#c4,#03,#6e,#01,#c4
	db #01,#c4,#02,#c4,#03,#72,#81,#0b
	db #ce,#65,#ce,#6d,#ce,#65,#ce,#6d
	db #ce,#65,#ce,#61,#ce,#6d,#ce,#6f
	db #ce,#6d,#ce,#69,#ce,#6d,#ce,#9e
	db #80,#04,#ce,#77,#ce,#7d,#ce,#77
	db #ce,#7d,#ce,#77,#ce,#7d,#ce,#77
	db #ce,#7d,#ce,#77,#ce,#7d,#ce,#77
	db #ce,#7d,#ce,#77,#ce,#7d,#ce,#77
	db #c2,#34,#81,#06,#c4,#01,#c4,#02
	db #c4,#03,#94,#81,#09,#ce,#95,#d6
	db #95,#ce,#95,#ce,#34,#80,#06,#c4
	db #01,#c4,#02,#c4,#03,#94,#81,#09
	db #ce,#95,#ce,#38,#80,#06,#c4,#01
	db #c4,#02,#c4,#03,#80,#81,#09,#ce
	db #81,#d6,#81,#ce,#81,#ce,#38,#80
	db #06,#c4,#01,#c4,#02,#c4,#03,#80
	db #81,#09,#ce,#81,#ce,#38,#80,#06
	db #c4,#01,#c4,#02,#c4,#03,#80,#81
	db #09,#ce,#81,#c2,#60,#81,#0a,#c4
	db #01,#c4,#02,#c4,#03,#64,#01,#c4
	db #01,#c4,#0f,#ce,#64,#01,#c4,#01
	db #c4,#02,#c4,#03,#c4,#04,#c4,#05
	db #64,#01,#c4,#01,#64,#01,#c4,#01
	db #72,#01,#c4,#01,#6e,#01,#c4,#01
	db #72,#01,#c4,#01,#6e,#01,#c4,#0f
	db #d0,#6c,#01,#c4,#0f,#d0,#68,#01
	db #c4,#01,#c4,#02,#c4,#03,#5e,#01
	db #c4,#01,#c4,#02,#c4,#03,#5e,#01
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #c4,#05,#c4,#06,#c4,#07,#54,#01
	db #c4,#01,#c4,#02,#c4,#03,#56,#01
	db #c4,#01,#c4,#02,#c4,#03,#6a,#81
	db #08,#d2,#6b,#ce,#6b,#ce,#3a,#80
	db #06,#c4,#01,#c4,#02,#c4,#03,#c4
	db #04,#c4,#0f,#d8,#6a,#81,#08,#ce
	db #6b,#d6,#34,#80,#06,#c4,#01,#c4
	db #02,#c4,#03,#8e,#81,#04,#d2,#87
	db #d2,#87,#d6,#87,#ce,#85,#d2,#87
	db #d2,#85,#ce,#87,#ce,#81,#ce,#87
	db #c2,#3a,#81,#06,#c4,#01,#82,#81
	db #09,#ce,#9b,#ce,#91,#ce,#91,#ce
	db #8b,#ce,#9b,#ce,#a3,#ce,#8b,#ce
	db #91,#ce,#9b,#ce,#8b,#ce,#91,#ce
	db #91,#ce,#a3,#ce,#9b,#ce,#38,#80
	db #06,#c4,#01,#c4,#02,#c4,#03,#86
	db #81,#09,#ce,#87,#ce,#38,#80,#06
	db #c4,#01,#c4,#02,#c4,#03,#86,#81
	db #09,#ce,#87,#d6,#87,#ce,#87,#d6
	db #87,#ce,#87,#c2,#42,#8f,#03,#ce
	db #c4,#05,#ce,#c4,#03,#c0,#1a,#3f
	db #c0,#1a,#3d,#c2,#30,#81,#06,#c4
	db #01,#c4,#02,#c4,#03,#60,#81,#07
	db #ce,#61,#ce,#3e,#80,#06,#c4,#01
	db #c4,#02,#c4,#03,#60,#81,#07,#ce
	db #61,#d6,#61,#ce,#61,#d6,#61,#d2
	db #72,#80,#04,#d2,#6d,#d2,#6d,#d6
	db #6d,#ce,#69,#d2,#6d,#d2,#69,#ce
	db #6d,#ce,#65,#c2,#7e,#81,#09,#ce
	db #79,#ce,#91,#ce,#87,#ce,#9f,#ce
	db #87,#ce,#91,#ce,#97,#ce,#79,#ce
	db #87,#ce,#91,#ce,#87,#ce,#9f,#ce
	db #91,#ce,#97,#ce,#91,#ce,#3c,#80
	db #06,#c4,#01,#c4,#02,#c4,#03,#84
	db #81,#09,#ce,#85,#ce,#34,#80,#06
	db #c4,#01,#c4,#02,#c4,#03,#84,#81
	db #09,#ce,#85,#d6,#85,#ce,#85,#d6
	db #85,#ce,#85,#3e,#87,#03,#ea,#49
	db #ea,#4d,#c2,#14,#ff,#10,#ff,#10
	db #7b,#04,#04,#10,#ff,#10,#79,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #10,#2c,#7d,#35,#21,#e0,#f5,#ff
	db #45,#00,#c3,#72,#88,#c3,#0d,#80
	db #0b,#c3,#56,#88,#00,#ac,#40,#af
	db #32,#0b,#80,#00,#32,#3d,#88,#3e
	db #00,#fe,#00,#28,#08,#07,#3c,#32
	db #15,#17,#b0,#82,#a0,#13,#06,#b7
	db #d2,#07,#81,#24,#32,#2f,#02,#9a
	db #02,#05,#02,#82,#3e,#b7,#32,#25
	db #80,#22,#04,#d6,#01,#30,#31,#21
	db #32,#7e,#00,#23,#cb,#3f,#38,#25
	db #47,#e6,#1f,#01,#cb,#67,#28,#02
	db #f6,#e0,#32,#fc,#91,#cb,#10,#01
	db #00,#30,#05,#7e,#32,#a7,#81,#23
	db #e4,#08,#12,#82,#03,#23,#22,#3e
	db #80,#18,#06,#04,#0e,#32,#38,#39
	db #03,#38,#07,#32,#72,#08,#0e,#18
	db #1b,#40,#c4,#05,#22,#7f,#20,#0d
	db #0b,#32,#7b,#80,#47,#0e,#0a,#30
	db #1d,#78,#32,#30,#70,#82,#1d,#11
	db #35,#11,#81,#ed,#a0,#01,#11,#a0
	db #06,#c9,#0b,#82,#06,#a6,#22,#9d
	db #3c,#0e,#b7,#20,#0e,#4a,#03,#16
	db #32,#bd,#80,#28,#0e,#18,#46,#0d
	db #00,#08,#32,#cb,#80,#2a,#d9,#9d
	db #4b,#25,#59,#b2,#14,#1e,#c2,#20
	db #b8,#80,#5e,#23,#50,#56,#59,#18
	db #eb,#22,#c6,#58,#80,#76,#24,#3e
	db #79,#01,#14,#11,#18,#09,#cf,#c3
	db #1e,#34,#b4,#12,#92,#69,#32,#17
	db #29,#4d,#4e,#0b,#29,#44,#0c,#42
	db #22,#0e,#fb,#47,#08,#81,#26,#0c
	db #62,#26,#48,#01,#01,#11,#05,#dd
	db #2e,#00,#00,#cd,#af,#83,#dd,#7d
	db #32,#3f,#02,#81,#22,#ba,#82,#d9
	db #22,#ac,#24,#79,#e1,#52,#27,#b4
	db #b4,#40,#fd,#b4,#20,#39,#00,#32
	db #d7,#82,#57,#7b,#32,#3b,#81,#08
	db #6a,#65,#22,#b7,#cb,#d1,#eb,#29
	db #19,#5d,#02,#66,#6f,#11,#e8,#82
	db #cb,#38,#72,#e0,#06,#d9,#63,#82
	db #04,#ea,#04,#23,#f9,#14,#c9,#26
	db #fd,#82,#b6,#77,#fd,#50,#79,#2f
	db #6a,#bc,#02,#6a,#d1,#aa,#6a,#0c
	db #83,#6a,#31,#a0,#6a,#a3,#6a,#1c
	db #06,#83,#6a,#98,#29,#83,#6a,#a6
	db #d3,#6a,#09,#83,#6a,#c8,#3a,#83
	db #e1,#63,#32,#06,#c9,#2b,#83,#04
	db #87,#3c,#83,#6a,#07,#1b,#83,#6a
	db #6f,#9a,#6a,#37,#03,#6a,#98,#15
	db #82,#22,#64,#5e,#6a,#f4,#90,#6a
	db #0e,#82,#32,#74,#58,#6a,#7b,#d3
	db #6a,#11,#82,#6a,#1e,#5b,#6a,#6e
	db #8c,#63,#5c,#84,#06,#b5,#7d,#6a
	db #8e,#6a,#cb,#6d,#6a,#c2,#bc,#92
	db #a4,#75,#05,#db,#38,#18,#14,#36
	db #3e,#37,#c7,#89,#2a,#ca,#b0,#71
	db #af,#ed,#14,#52,#20,#26,#9b,#93
	db #f7,#92,#e4,#99,#54,#aa,#49,#05
	db #ae,#7f,#05,#2d,#22,#05,#9a,#a6
	db #3b,#9c,#b2,#c1,#4a,#16,#00,#d9
	db #99,#4b,#02,#25,#19,#d7,#02,#22
	db #ea,#84,#3a,#fd,#43,#dd,#6f,#11
	db #01,#fd,#21,#d8,#86,#3a,#f3,#20
	db #cd,#44,#84,#57,#eb,#c1,#00,#03
	db #3c,#18,#1d,#21,#e5,#5c,#11,#2d
	db #83,#b7,#38,#0b,#47,#64,#f6,#24
	db #3d,#32,#f3,#12,#3c,#ed,#53,#ec
	db #4e,#a0,#04,#dd,#7c,#32,#ab,#e2
	db #5e,#51,#52,#be,#6b,#51,#aa,#51
	db #b1,#29,#87,#3a,#da,#27,#51,#dd
	db #dd,#25,#51,#da,#26,#51,#49,#d3
	db #87,#39,#51,#8f,#a8,#51,#47,#5b
	db #51,#12,#cb,#74,#51,#7a,#9f,#51
	db #7b,#51,#7b,#84,#51,#1b,#7d,#51
	db #ba,#24,#ee,#a4,#51,#cb,#3a,#27
	db #f6,#e6,#85,#02,#c3,#cd,#86,#9e
	db #70,#33,#01,#fe,#60,#30,#37,#fd
	db #26,#00,#52,#80,#46,#23,#78,#1f
	db #30,#0b,#03,#e6,#0f,#4f,#ea,#42
	db #02,#5e,#f0,#d5,#0e,#22,#08,#d9
	db #6f,#26,#2e,#30,#01,#26,#25,#fd
	db #c8,#46,#c9,#86,#ef,#07,#2e,#24
	db #18,#f0,#07,#01,#01,#d6,#60,#28
	db #1a,#3d,#28,#2e,#02,#25,#1d,#02
	db #d2,#02,#d1,#21,#28,#33,#02,#04
	db #27,#3d,#d9,#fd,#a0,#6b,#c9,#3e
	db #39,#08,#65,#4e,#08,#38,#09,#c9
	db #18,#aa,#0a,#1c,#ff,#d9,#1e,#da
	db #92,#2d,#78,#91,#18,#fd,#0d,#1e
	db #71,#00,#13,#77,#80,#7b,#c2,#fa
	db #84,#cb,#00,#63,#28,#5d,#7e,#cb
	db #77,#28,#25,#18,#16,#08,#23,#8f
	db #16,#28,#05,#e5,#04,#87,#cb,#9a
	db #7b,#9b,#42,#d9,#92,#d9,#8c,#2a
	db #bb,#01,#77,#36,#dd,#62,#7e,#05
	db #18,#00,#23,#04,#1b,#30,#23,#c9
	db #1d,#23,#16,#0b,#01,#cb,#6f,#28
	db #ec,#1e,#82,#24,#a7,#18,#2a,#0f
	db #ac,#bb,#40,#36,#36,#00,#16,#09
	db #2c,#18,#f5,#57,#18,#3c,#28,#f1
	db #1a,#40,#26,#08,#cb,#6b,#28,#04
	db #45,#7e,#9e,#0e,#05,#cb,#73,#28
	db #06,#ce,#ea,#18,#c1,#b8,#48,#85
	db #a1,#38,#04,#02,#3e,#5f,#e5,#87
	db #89,#a0,#01,#0d,#86,#44,#09,#c1
	db #46,#8c,#a8,#00,#cb,#2c,#cb,#1d
	db #09,#19,#fd,#75,#90,#90,#74,#1b
	db #30,#e1,#c9,#c0,#05,#07,#7b,#d9
	db #e6,#40,#98,#40,#d9,#7b,#f6,#08
	db #e6,#31,#09,#57,#65,#10,#ce,#28
	db #e6,#17,#03,#87,#c6,#f6,#01,#36
	db #88,#cb,#5b,#28,#09,#ec,#19,#c3
	db #1a,#18,#90,#50,#62,#60,#78,#28
	db #0b,#32,#cb,#70,#e3,#c3,#13,#e7
	db #85,#93,#10,#80,#85,#90,#f9,#e6
	db #0e,#11,#32,#91,#85,#f6,#12,#c2
	db #f2,#04,#4b,#87,#3a,#8a,#a2,#93
	db #24,#53,#8a,#7d,#ca,#2a,#8f,#23
	db #8a,#93,#4d,#44,#c7,#35,#0c,#31
	db #01,#6f,#20,#72,#79,#fd,#71,#97
	db #11,#70,#1b,#d2,#22,#7b,#e1,#69
	db #f5,#84,#9b,#85,#79,#75,#cb,#3e
	db #38,#1f,#02,#14,#4f,#fb,#4b,#03
	db #8f,#89,#00,#88,#83,#84,#1b,#88
	db #3a,#84,#41,#b7,#28,#2d,#3a,#83
	db #13,#5f,#33,#51,#cf,#91,#61,#33
	db #21,#17,#02,#f0,#a3,#47,#fc,#11
	db #09,#f7,#dc,#80,#61,#23,#e5,#b7
	db #28,#8e,#72,#e1,#71,#7e,#c9,#4c
	db #93,#b2,#4d,#93,#60,#ee,#0e,#18
	db #0e,#00,#4d,#0d,#8e,#0c,#da,#0b
	db #2f,#0b,#00,#8f,#0a,#f7,#09,#68
	db #09,#e1,#08,#00,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#00,#a7,#06,#47
	db #06,#ed,#05,#98,#05,#00,#47,#05
	db #fc,#04,#b4,#04,#70,#04,#00,#31
	db #04,#f4,#03,#bc,#03,#86,#03,#00
	db #53,#03,#24,#03,#f6,#02,#cc,#02
	db #48,#a4,#99,#02,#22,#5a,#02,#ea
	db #00,#18,#02,#fa,#01,#de,#01,#c3
	db #01,#00,#aa,#01,#92,#01,#7b,#01
	db #66,#01,#00,#52,#01,#3f,#01,#2d
	db #01,#1c,#01,#00,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#50,#d5,#af,#00
	db #00,#be,#00,#b3,#00,#a9,#00,#9f
	db #00,#00,#96,#00,#8e,#00,#86,#00
	db #7f,#00,#a2,#94,#89,#20,#6a,#00
	db #64,#00,#00,#5f,#00,#59,#00,#54
	db #00,#50,#00,#00,#4b,#00,#47,#00
	db #43,#00,#3f,#00,#02,#3c,#00,#38
	db #00,#35,#00,#9f,#20,#2f,#00,#2d
	db #00,#58,#2a,#ac,#00,#91,#c1,#24
	db #9c,#61,#00,#20,#f7,#48,#1c,#2c
	db #00,#1b,#da,#45,#00,#ee,#e7,#60
	db #15,#00,#14,#0b,#00,#13,#00,#12
	db #eb,#40,#10,#00,#67,#06,#00,#f4
	db #d9,#01,#c0,#f6,#1e,#80,#d9,#b6
	db #dc,#10,#15,#1d,#ed,#51,#d9,#09
	db #ed,#49,#ed,#71,#04,#79,#02,#21
	db #59,#07,#32,#da,#86,#1a,#db,#01
	db #1a,#dd,#f5,#1a,#e0,#08,#f7,#1a
	db #3b,#10,#87,#1a,#7b,#02,#1a,#bc
	db #2b,#1a,#1e,#03,#1a,#ef,#46,#1a
	db #07,#09,#1a,#bb,#61,#1a,#c1,#04
	db #1a,#ee,#7c,#f0,#1a,#7b,#05,#1a
	db #bc,#97,#1a,#1e,#0a,#1a,#ef,#b2
	db #1a,#07,#06,#1a,#ba,#cd,#1a,#18
	db #7c,#fe,#c0,#19,#07,#f7,#19,#78
	db #e7,#34,#3d,#0b,#1a,#ce,#02,#88
	db #1a,#de,#0c,#1a,#ee,#1d,#1a,#02
	db #ff,#20,#06,#67,#bc,#b0,#c8,#7c
	db #3d,#16,#0d,#20,#c3,#38,#88,#c9
	db #af,#b0,#81,#87,#32,#5f,#02,#09
	db #b0,#87,#3d,#bc,#48,#ee,#c8,#a0
	db #cc,#6e,#33,#3e,#3f,#c2,#09,#21
	db #06,#b9,#a8,#ee,#09,#23,#81,#11
	db #03,#07,#11,#e1,#b7,#ae,#31,#e2
	db #b7,#8b,#b3,#06,#cb,#69,#ec,#f9
	db #7b,#94,#a0,#2e,#9a,#06,#5c,#a0
	db #06,#b8,#a6,#06,#bc,#84,#fb,#9d
	db #9f,#a7,#80,#a7,#27,#ed,#e0,#22
	db #83,#82,#3f,#7e,#e6,#cf,#56,#2a
	db #1d,#08,#88,#ac,#82,#2a,#42,#22
	db #d4,#8b,#02,#3f,#82,#87,#d1,#eb
	db #01,#07,#fd,#57,#db,#a7,#f3,#67
	db #8b,#61,#22,#e8,#08,#2e,#3a,#05
	db #ae,#99,#eb,#1b,#e1,#a1,#ee,#82
	db #03,#13,#40,#83,#03,#92,#03,#18
	db #e0,#0b,#32,#cd,#07,#fe,#3b,#9b
	db #80,#21,#2e,#89,#7e,#88,#e0,#47
	db #23,#b4,#6c,#45,#12,#10,#69,#f9
	db #bd,#f0,#47,#e2,#07,#f3,#86,#94
	db #06,#44,#87,#c6,#c6,#95,#87,#9b
	db #11,#e5,#45,#e4,#e3,#15,#bf,#96
	db #bc,#61,#b0,#be,#d7,#bd,#41,#bd
	db #80,#cb,#80,#c0,#d7,#d6,#1c,#86
	db #6c,#b6,#38,#7d,#81,#9f,#b6,#e1
	db #11,#ff,#f2,#45,#d9,#14,#a5,#51
	db #8c,#d8,#34,#bf,#d3,#8b,#49,#84
	db #8f,#24,#8e,#92,#8d,#49,#e0,#c7
	db #24,#a8,#9d,#88,#71,#b8,#e8,#b0
	db #03,#b7,#ea,#7d,#82,#96,#ad,#e5
	db #a4,#df,#00,#d8,#81,#53,#4b,#31
	db #30,#00,#8a,#b3,#25,#d7,#80,#8a
	db #2f,#8a,#7d,#8a,#00,#a2,#8a,#1e
	db #8a,#26,#8a,#47,#8a,#09,#94,#8a
	db #04,#c0,#1c,#05,#03,#80,#0f,#7f
	db #01,#76,#5e,#10,#5e,#6a,#62,#06
	db #70,#6e,#7e,#00,#7c,#ed,#8b,#fd
	db #8b,#12,#8c,#16,#00,#8c,#30,#8c
	db #49,#8c,#51,#8c,#6c,#00,#8c,#7d
	db #8c,#86,#8c,#ca,#8c,#fc,#00,#8c
	db #00,#8d,#3d,#8d,#72,#8d,#c6,#00
	db #8d,#07,#8e,#4b,#8e,#b8,#8e,#f4
	db #00,#8e,#1e,#8f,#83,#8f,#c5,#8f
	db #f7,#00,#8f,#78,#90,#b2,#90,#fc
	db #90,#53,#00,#91,#95,#91,#dd,#91
	db #4d,#92,#89,#00,#92,#dc,#92,#46
	db #93,#81,#93,#cc,#00,#93,#dc,#93
	db #14,#94,#5b,#94,#04,#00,#63,#94
	db #06,#65,#94,#03,#67,#94,#50,#6a
	db #0a,#07,#01,#6d,#94,#49,#fe,#05
	db #e0,#02,#04,#13,#e8,#ba,#00,#8a
	db #c4,#8a,#dd,#8a,#f8,#8a,#11,#00
	db #8b,#2b,#8b,#40,#8b,#4d,#8b,#73
	db #00,#8b,#99,#8b,#ae,#8b,#bc,#8b
	db #c1,#c2,#17,#ff,#37,#c3,#35,#cb
	db #1f,#88,#00,#09,#4f,#fa,#74,#ff
	db #02,#02,#73,#00,#02,#22,#40,#36
	db #02,#b7,#00,#0a,#0a,#00,#09,#09
	db #08,#08,#07,#07,#06,#06,#00,#05
	db #05,#04,#04,#03,#03,#02,#02,#19
	db #01,#01,#ff,#4f,#33,#a7,#fc,#ff
	db #02,#47,#04,#00,#02,#32,#33,#2b
	db #18,#c0,#33,#3a,#25,#0c,#09,#6c
	db #29,#9a,#27,#20,#0c,#06,#08,#04
	db #23,#0c,#02,#26,#21,#0c,#19,#40
	db #19,#80,#3b,#3f,#08,#2a,#04,#08
	db #28,#00,#fc,#26,#f8,#24,#f4,#22
	db #f0,#47,#8c,#91,#c0,#47,#0f,#0f
	db #2f,#0c,#a6,#01,#21,#73,#21,#80
	db #0d,#2d,#03,#2c,#07,#2c,#0c,#00
	db #2b,#07,#2b,#03,#0a,#2a,#03,#29
	db #00,#07,#28,#0c,#27,#07,#26,#03
	db #05,#d0,#a7,#23,#07,#09,#22,#0c
	db #21,#07,#25,#99,#25,#cb,#04,#25
	db #a2,#04,#0a,#50,#e9,#25,#04,#25
	db #3b,#04,#25,#89,#e4,#00,#bb,#1e
	db #48,#05,#b8,#a2,#b6,#46,#b6,#f7
	db #60,#6d,#0c,#0e,#2e,#49,#0c,#01
	db #0e,#22,#ed,#22,#a3,#4a,#ff,#ff
	db #02,#1c,#49,#02,#3b,#48,#02,#49
	db #47,#02,#46,#02,#45,#02,#24,#44
	db #02,#43,#02,#42,#90,#02,#41,#02
	db #38,#9b,#01,#00,#c4,#0b,#c4,#09
	db #c4,#08,#c4,#07,#00,#c4,#06,#c4
	db #05,#c2,#ca,#c0,#1d,#00,#98,#80
	db #02,#8f,#87,#85,#dc,#7d,#06,#d2
	db #81,#d2,#85,#d2,#05,#80,#77,#38
	db #8b,#03,#c2,#c0,#2f,#92,#1f,#ce
	db #24,#ce,#29,#91,#02,#09,#02,#0a
	db #ce,#36,#48,#02,#0c,#02,#0d,#c2
	db #02,#e6,#6e,#80,#04,#d2,#73,#25
	db #02,#d2,#50,#80,#05,#ce,#51,#01
	db #09,#d0,#51,#d8,#64,#42,#e2,#83
	db #e1,#f6,#3e,#37,#01,#c0,#1a,#43
	db #c2,#ce,#3e,#64,#70,#2e,#09,#e3
	db #3d,#43,#30,#49,#05,#d8,#00,#47
	db #ea,#4d,#c2,#d0,#64,#81,#02,#00
	db #de,#69,#de,#6d,#d4,#6f,#d4,#73
	db #03,#d6,#77,#d6,#7d,#c2,#e4,#33
	db #01,#e8,#39,#e0,#35,#c2,#ab,#64
	db #8e,#51,#9a,#02,#02,#c4,#03,#68
	db #81,#30,#08,#69,#d6,#69,#ce,#01
	db #34,#80,#ea,#12,#34,#8b,#46,#65
	db #ce,#dd,#3e,#21,#e1,#c2,#98,#81
	db #71,#0c,#81,#ce,#87,#03,#70,#8f
	db #05,#6f,#c1,#35,#7d,#ce,#85,#03
	db #93,#2a,#77,#0f,#1d,#77,#17,#3b
	db #77,#17,#0f,#c2,#80,#81,#04,#79
	db #c2,#76,#30,#0e,#60,#c1,#0e,#61
	db #ce,#8e,#ff,#18,#87,#d8,#01,#4e
	db #c2,#68,#f6,#72,#78,#77,#72,#38
	db #79,#17,#45,#91,#e5,#13,#9d,#4f
	db #98,#04,#76,#2e,#77,#09,#c2,#c4
	db #0f,#da,#37,#0a,#74,#d2,#01,#07
	db #63,#6e,#03,#6c,#03,#34,#0b,#64
	db #01,#f1,#17,#da,#07,#33,#ba,#49
	db #a9,#c4,#07,#b1,#e4,#b5,#d3,#33
	db #0b,#1f,#bd,#07,#63,#60,#03,#5e
	db #33,#a2,#8a,#81,#94,#24,#8b,#92
	db #42,#e2,#68,#80,#c4,#32,#ab,#5d
	db #a3,#cf,#f0,#c9,#c2,#34,#86,#6d
	db #78,#a3,#18,#79,#f1,#41,#8e,#b2
	db #0c,#ce,#73,#03,#d4,#01,#69,#ed
	db #7b,#3a,#61,#0f,#6a,#91,#05,#c2
	db #4f,#75,#0a,#58,#a5,#1d,#23,#5e
	db #c5,#e6,#47,#68,#e5,#b4,#85,#be
	db #7d,#89,#55,#88,#11,#d0,#86,#b7
	db #22,#d6,#87,#8a,#f4,#01,#8f,#df
	db #54,#d6,#e1,#53,#01,#3e,#12,#b6
	db #6e,#12,#50,#88,#3c,#a7,#a9,#58
	db #e3,#d8,#b8,#f2,#8c,#ef,#8c,#22
	db #95,#8b,#01,#15,#da,#95,#ce,#01
	db #8e,#99,#01,#56,#30,#85,#01,#c2
	db #6c,#8d,#d2,#8d,#9a,#e3,#4b,#07
	db #a4,#72,#96,#7b,#3c,#6c,#0f,#a3
	db #c6,#df,#0b,#7d,#3f,#de,#6c,#3f
	db #d2,#ec,#89,#d2,#b8,#e1,#d6,#c9
	db #64,#a0,#f4,#d2,#27,#60,#80,#9b
	db #59,#34,#09,#13,#cf,#23,#d0,#d6
	db #4b,#61,#03,#c2,#c4,#84,#09,#8f
	db #99,#01,#d2,#8e,#c4,#63,#be,#24
	db #97,#61,#7d,#01,#d2,#99,#15,#e2
	db #d2,#32,#91,#87,#01,#93,#b7,#07
	db #6b,#b9,#11,#0a,#b4,#fb,#b3,#9b
	db #e7,#bb,#3f,#5f,#07,#bf,#3f,#69
	db #ce,#84,#85,#0b,#d2,#6f,#01,#a1
	db #69,#cd,#85,#01,#de,#7f,#0c,#e8
	db #75,#f7,#7f,#11,#30,#81,#dc,#3e
	db #13,#c7,#2d,#6f,#e2,#d2,#be,#ba
	db #5f,#77,#95,#cd,#bf,#5e,#c9,#d6
	db #85,#70,#b7,#cf,#7a,#c1,#ee,#c9
	db #be,#fa,#89,#d2,#c4,#0e,#d1,#e5
	db #d4,#bf,#b8,#5a,#0b,#81,#78,#0c
	db #5b,#f0,#26,#78,#80,#8d,#93,#79
	db #6f,#03,#86,#61,#05,#5d,#03,#07
	db #c6,#99,#be,#6f,#03,#1a,#41,#38
	db #63,#09,#c8,#b5,#03,#01,#5f,#b9
	db #83,#86,#1e,#15,#87,#e4,#e2,#7c
	db #dd,#2d,#ce,#33,#2d,#12,#d6,#47
	db #47,#5e,#e0,#9c,#86,#f9,#cf,#d6
	db #02,#0f,#ce,#6e,#d7,#3d,#a3,#ef
	db #59,#76,#03,#e2,#5a,#78,#9f,#cd
	db #2f,#2e,#99,#5e,#99,#6e,#f3,#d3
	db #46,#c1,#3a,#6d,#03,#63,#61,#05
	db #6f,#03,#18,#69,#03,#9e,#ba,#ad
	db #ed,#31,#7d,#03,#f4,#e7,#81,#8a
	db #94,#ba,#30,#95,#d6,#bd,#89,#9f
	db #d5,#0e,#12,#29,#8a,#c5,#80,#bf
	db #7a,#d6,#91,#97,#81,#12,#ed,#0e
	db #ed,#90,#9e,#28,#64,#be,#e5,#64
	db #be,#1e,#5a,#0b,#64,#8e,#e9,#9e
	db #6e,#07,#25,#0f,#d0,#c8,#64,#04
	db #68,#9f,#f7,#69,#ff,#f7,#74,#54
	db #0f,#56,#e9,#07,#6a,#e8,#30,#d2
	db #6b,#ce,#91,#01,#3a,#80,#de,#28
	db #19,#0f,#d8,#15,#13,#23,#d6,#c5
	db #c0,#8e,#81,#e6,#b9,#27,#ca,#18
	db #85,#07,#85,#ae,#83,#34,#f9,#46
	db #3a,#f7,#a3,#82,#af,#19,#9b,#8d
	db #93,#01,#8b,#07,#19,#a3,#05,#09
	db #5b,#07,#05,#01,#52,#0d,#09,#38
	db #f9,#7d,#7d,#0e,#69,#9b,#74,#03
	db #c2,#42,#3d,#8f,#03,#ea,#2f,#02
	db #87,#c4,#3f,#02,#3d,#5b,#c2,#a8
	db #82,#60,#bb,#d1,#61,#9c,#4e,#3c
	db #0e,#62,#b8,#c6,#03,#d2,#72,#fe
	db #e2,#6d,#01,#4e,#d6,#a6,#64,#07
	db #aa,#ed,#fe,#0b,#7e,#c4,#63,#ac
	db #15,#9f,#fb,#4a,#ce,#63,#97,#0d
	db #87,#0f,#ad,#0d,#6b,#91,#d0,#8b
	db #84,#2a,#22,#c9,#7a,#34,#0e,#1c
	db #d6,#85,#03,#83,#3e,#87,#03,#ea
	db #49,#f6,#f0,#14,#ff,#43,#10,#01
	db #7b,#04,#04,#05,#07,#79,#04,#00
	db #00,#b7,#00,#ff,#fc,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #3e,#01,#cd,#0e,#bc,#06,#00,#48
	db #cd,#38,#bc,#af,#06,#00,#48,#f5
	db #cd,#32,#bc,#f1,#3c,#fe,#10,#20
	db #f3,#cd,#e3,#a0,#76,#76,#76,#cd
	db #e3,#a0,#76,#21,#78,#7b,#11,#00
	db #c0,#cd,#eb,#a0,#21,#d0,#89,#11
	db #00,#40,#cd,#eb,#a0,#11,#00,#8a
	db #cd,#00,#80,#01,#b8,#00,#c5,#cd
	db #ce,#a0,#c1,#0b,#78,#b1,#20,#f6
	db #01,#0c,#bc,#3e,#10,#ed,#49,#04
	db #ed,#79,#01,#b0,#01,#c5,#cd,#ce
	db #a0,#01,#01,#7f,#3e,#5c,#ed,#49
	db #ed,#79,#01,#02,#7f,#3e,#4e,#ed
	db #49,#ed,#79,#01,#03,#7f,#3e,#43
	db #ed,#49,#ed,#79,#c1,#0b,#78,#b1
	db #20,#db,#01,#00,#02,#c5,#cd,#ce
	db #a0,#01,#01,#7f,#3e,#54,#ed,#49
	db #ed,#79,#01,#02,#7f,#3e,#54,#ed
	db #49,#ed,#79,#01,#03,#7f,#3e,#54
	db #ed,#49,#ed,#79,#c1,#0b,#78,#b1
	db #20,#db,#01,#0c,#bc,#3e,#30,#ed
	db #49,#04,#ed,#79,#cd,#ce,#a0,#01
	db #01,#7f,#3e,#44,#ed,#49,#ed,#79
	db #01,#02,#7f,#3e,#4d,#ed,#49,#ed
	db #79,#01,#03,#7f,#3e,#4a,#ed,#49
	db #ed,#79,#76,#76,#18,#de,#cd,#e3
	db #a0,#f3,#d9,#08,#f5,#c5,#d5,#e5
	db #cd,#03,#80,#e1,#d1,#c1,#f1,#08
	db #d9,#fb,#c9,#06,#f5,#ed,#78,#1f
	db #30,#fb,#c9,#f3,#d9,#c5,#e5,#d5
	db #d9,#cd,#fb,#a0,#d9,#d1,#e1,#c1
	db #d9,#fb,#c9,#23,#23,#23,#23,#3e
	db #80,#d9,#11,#01,#00,#d9,#87,#20
	db #03,#7e,#23,#17,#38,#22,#ed,#a0
	db #87,#20,#03,#7e,#23,#17,#38,#18
	db #ed,#a0,#87,#20,#03,#7e,#23,#17
	db #38,#0e,#ed,#a0,#87,#20,#03,#7e
	db #23,#17,#38,#04,#ed,#a0,#18,#d6
	db #4e,#23,#06,#00,#cb,#79,#28,#22
	db #87,#20,#03,#7e,#23,#17,#cb,#10
	db #87,#20,#03,#7e,#23,#17,#cb,#10
	db #87,#20,#03,#7e,#23,#17,#cb,#10
	db #87,#20,#03,#7e,#23,#17,#38,#02
	db #cb,#b9,#03,#d9,#62,#6b,#43,#d9
	db #87,#20,#03,#7e,#23,#17,#d9,#30
	db #0d,#04,#18,#f3,#d9,#87,#20,#03
	db #7e,#23,#17,#d9,#ed,#6a,#10,#f4
	db #23,#d9,#d8,#e5,#d9,#e5,#d9,#62
	db #6b,#ed,#42,#c1,#ed,#b0,#e1,#87
	db #20,#03,#7e,#23,#17,#38,#a1,#ed
	db #a0,#87,#20,#03,#7e,#23,#17,#38
	db #97,#ed,#a0,#c3,#06,#a1
;
.init_music		; #a035 - added by Megachur
;
	ld de,l8a00
	jp real_init_music
;
;
.music_info
	db "The Secret Of Monkey Island Title (2016)(Epyteor)(SuTeKH)",0
	db "StarkOs",0

	read "music_end.asm"
