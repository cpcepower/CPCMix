; Music of Thrust C64 Loading Screen (2017)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 01/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THRUSCLS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
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
	db #00,#1e,#8a,#2d,#8a,#11,#8b,#14
	db #8b,#1a,#8a,#1e,#8a,#2d,#8a,#11
	db #8b,#05,#c0,#00,#00,#49,#7f,#04
	db #3e,#7f,#09,#3e,#7f,#03,#3e,#7f
	db #09,#3e,#7f,#03,#3e,#98,#8c,#18
	db #8d,#5c,#8d,#5e,#8d,#18,#8d,#5c
	db #8d,#de,#8d,#18,#8d,#5e,#8e,#5e
	db #8e,#18,#8d,#95,#8e,#5e,#8e,#f5
	db #8e,#95,#8e,#59,#8f,#75,#8f,#97
	db #8f,#5e,#8e,#b9,#8f,#41,#90,#5e
	db #8e,#b9,#8f,#ac,#90,#5e,#8e,#b9
	db #8f,#1c,#91,#5e,#8e,#b9,#8f,#1c
	db #91,#5e,#8e,#7c,#91,#e0,#91,#5e
	db #8e,#7c,#91,#3c,#92,#ab,#92,#cf
	db #92,#33,#93,#57,#93,#7a,#93,#de
	db #93,#14,#94,#37,#94,#9b,#94,#bf
	db #94,#ea,#94,#4e,#95,#7b,#95,#75
	db #8f,#97,#95,#b9,#95,#dd,#95,#65
	db #96,#b9,#95,#dd,#95,#d0,#96,#b9
	db #95,#dd,#95,#d0,#96,#b9,#95,#dd
	db #95,#30,#97,#7b,#95,#75,#8f,#97
	db #95,#5e,#8e,#98,#8c,#95,#8e,#5e
	db #8e,#5e,#8d,#95,#8e,#5e,#8e,#78
	db #97,#95,#8e,#5e,#8e,#be,#97,#95
	db #8e,#5e,#8e,#04,#98,#95,#8e,#5e
	db #8e,#68,#98,#95,#8e,#5e,#8e,#04
	db #98,#cc,#98,#5e,#8e,#68,#98,#02
	db #99,#5e,#8e,#b9,#8f,#4a,#99,#5e
	db #8e,#b9,#8f,#66,#99,#7b,#95,#75
	db #8f,#97,#95,#b9,#95,#dd,#95,#65
	db #96,#8a,#99,#ae,#99,#36,#9a,#8a
	db #99,#ae,#99,#a1,#9a,#8a,#99,#ae
	db #99,#a1,#9a,#01,#9b,#1d,#9b,#3b
	db #9b,#4a,#57,#9b,#32,#8b,#3c,#8b
	db #45,#8b,#58,#8b,#87,#8b,#a6,#8b
	db #c5,#8b,#fc,#8b,#11,#8c,#1c,#8c
	db #35,#8c,#46,#8c,#52,#8c,#6f,#8c
	db #7b,#8c,#39,#8b,#3c,#8b,#ff,#37
	db #00,#00,#00,#00,#44,#8b,#45,#8b
	db #00,#37,#00,#0a,#0f,#39,#8b,#58
	db #8b,#00,#b7,#00,#1f,#65,#c3,#01
	db #1e,#60,#fa,#01,#1d,#60,#a4,#02
	db #39,#8b,#87,#8b,#00,#b7,#00,#1a
	db #05,#3f,#28,#0c,#1e,#27,#3d,#27
	db #0c,#1c,#26,#3b,#26,#0c,#1a,#25
	db #39,#25,#0c,#18,#24,#37,#24,#0c
	db #16,#23,#35,#23,#0c,#14,#22,#33
	db #22,#0c,#12,#21,#31,#21,#0c,#39
	db #8b,#a6,#8b,#00,#b7,#00,#2c,#fd
	db #2b,#fd,#2a,#fd,#29,#fd,#28,#fd
	db #27,#fd,#26,#fd,#25,#fd,#24,#fd
	db #23,#fd,#22,#fd,#21,#fd,#39,#8b
	db #c5,#8b,#00,#b7,#00,#2c,#fd,#2c
	db #09,#2b,#09,#2b,#fd,#2a,#09,#2a
	db #09,#29,#fd,#29,#09,#28,#09,#28
	db #fd,#27,#09,#27,#09,#39,#8b,#fc
	db #8b,#00,#b7,#00,#6c,#fd,#ff,#ff
	db #6b,#fd,#ff,#ff,#6a,#fd,#ff,#ff
	db #69,#fd,#ff,#ff,#68,#fd,#ff,#ff
	db #67,#fd,#ff,#ff,#66,#fd,#ff,#ff
	db #65,#fd,#ff,#ff,#64,#fd,#ff,#ff
	db #63,#fd,#ff,#ff,#62,#fd,#ff,#ff
	db #61,#fd,#ff,#ff,#0f,#8c,#11,#8c
	db #00,#37,#00,#1f,#65,#c3,#01,#1e
	db #60,#fa,#01,#1d,#60,#a4,#02,#80
	db #13,#1a,#8c,#1c,#8c,#00,#37,#00
	db #1a,#05,#80,#13,#23,#8c,#35,#8c
	db #00,#37,#00,#4f,#ff,#ff,#4f,#ff
	db #ff,#4f,#ff,#ff,#4f,#01,#00,#4f
	db #01,#00,#4f,#01,#00,#3c,#8c,#46
	db #8c,#00,#37,#00,#0f,#2f,#0c,#2f
	db #0c,#0c,#2c,#0c,#2c,#0c,#4d,#8c
	db #52,#8c,#00,#37,#00,#0c,#2c,#07
	db #2c,#03,#59,#8c,#6f,#8c,#00,#37
	db #00,#4c,#ff,#ff,#6c,#07,#ff,#ff
	db #6c,#03,#ff,#ff,#4c,#01,#00,#6c
	db #07,#01,#00,#6c,#03,#01,#00,#76
	db #8c,#7b,#8c,#00,#37,#00,#0c,#2c
	db #07,#2c,#04,#82,#8c,#98,#8c,#00
	db #37,#00,#4c,#ff,#ff,#6c,#07,#ff
	db #ff,#6c,#04,#ff,#ff,#4c,#01,#00
	db #6c,#07,#01,#00,#6c,#04,#01,#00
	db #42,#85,#01,#c6,#fc,#c6,#08,#c6
	db #f8,#c6,#08,#c6,#f8,#c6,#08,#c6
	db #f8,#c6,#08,#c6,#f8,#c6,#08,#c6
	db #f8,#c6,#08,#c6,#f8,#c6,#08,#c6
	db #f8,#c6,#08,#c6,#f8,#c6,#08,#c6
	db #f8,#c6,#08,#c6,#f8,#c6,#08,#c6
	db #f8,#c6,#08,#c6,#f8,#c6,#08,#c6
	db #f8,#c6,#08,#c6,#f8,#c6,#08,#c6
	db #f8,#49,#c6,#fc,#c6,#08,#c6,#f8
	db #c6,#08,#c6,#f8,#c6,#08,#c6,#f8
	db #c6,#08,#c6,#f8,#c6,#08,#c6,#f8
	db #c6,#08,#c6,#f8,#c6,#08,#c6,#f8
	db #c6,#08,#c6,#f8,#c6,#08,#c6,#f8
	db #c6,#08,#c6,#f8,#c6,#08,#c6,#f8
	db #c6,#08,#c6,#f8,#c6,#08,#c6,#f8
	db #c6,#08,#c6,#f8,#c6,#08,#c6,#f8
	db #48,#81,#02,#d2,#48,#80,#03,#d0
	db #48,#80,#02,#49,#d2,#48,#80,#03
	db #d2,#48,#80,#02,#d2,#48,#80,#03
	db #d0,#48,#80,#02,#49,#d2,#48,#80
	db #03,#d2,#48,#80,#02,#d2,#48,#80
	db #03,#d0,#48,#80,#02,#49,#d2,#48
	db #80,#03,#d2,#48,#80,#02,#d2,#48
	db #80,#03,#d0,#48,#80,#02,#49,#d2
	db #48,#80,#03,#c2,#ca,#c2,#3a,#85
	db #01,#c6,#fc,#c6,#08,#c6,#f8,#c6
	db #08,#c6,#f8,#c6,#08,#c6,#f8,#c6
	db #08,#c6,#f8,#c6,#08,#c6,#f8,#c6
	db #08,#c6,#f8,#c6,#08,#c6,#f8,#c6
	db #08,#c6,#f8,#c6,#08,#c6,#f8,#c6
	db #08,#c6,#f8,#c6,#08,#c6,#f8,#c6
	db #08,#c6,#f8,#c6,#08,#c6,#f8,#c6
	db #08,#c6,#f8,#c6,#08,#c6,#f8,#35
	db #c6,#fc,#c6,#08,#c6,#f8,#c6,#08
	db #c6,#f8,#c6,#08,#c6,#f8,#c6,#08
	db #c6,#f8,#c6,#08,#c6,#f8,#c6,#08
	db #c6,#f8,#c6,#08,#c6,#f8,#c6,#08
	db #c6,#f8,#c6,#08,#c6,#f8,#c6,#08
	db #c6,#f8,#c6,#08,#c6,#f8,#c6,#08
	db #c6,#f8,#c6,#08,#c6,#f8,#c6,#08
	db #c6,#f8,#c6,#08,#c6,#f8,#30,#85
	db #01,#c6,#fc,#c6,#08,#c6,#f8,#c6
	db #08,#c6,#f8,#c6,#08,#c6,#f8,#c6
	db #08,#c6,#f8,#c6,#08,#c6,#f8,#c6
	db #08,#c6,#f8,#c6,#08,#c6,#f8,#c6
	db #08,#c6,#f8,#c6,#08,#c6,#f8,#c6
	db #08,#c6,#f8,#c6,#08,#c6,#f8,#c6
	db #08,#c6,#f8,#c6,#08,#c6,#f8,#c6
	db #08,#c6,#f8,#c6,#08,#c6,#f8,#2b
	db #c6,#fc,#c6,#08,#c6,#f8,#c6,#08
	db #c6,#f8,#c6,#08,#c6,#f8,#c6,#08
	db #c6,#f8,#c6,#08,#c6,#f8,#c6,#08
	db #c6,#f8,#c6,#08,#c6,#f8,#c6,#08
	db #c6,#f8,#c6,#08,#c6,#f8,#c6,#08
	db #c6,#f8,#c6,#08,#c6,#f8,#c6,#08
	db #c6,#f8,#c6,#08,#c6,#f8,#c6,#08
	db #c6,#f8,#c6,#08,#c6,#f8,#ca,#ce
	db #6e,#81,#04,#79,#ce,#7f,#87,#d2
	db #79,#79,#79,#87,#83,#7f,#d0,#6f
	db #79,#ce,#7f,#87,#d2,#79,#79,#79
	db #87,#83,#7f,#d0,#6f,#79,#ce,#7f
	db #87,#d2,#79,#79,#79,#87,#83,#7f
	db #d0,#6f,#79,#ce,#7f,#87,#d2,#79
	db #79,#79,#87,#83,#7f,#78,#81,#05
	db #ce,#86,#80,#06,#91,#87,#97,#87
	db #7f,#79,#ce,#78,#80,#05,#ce,#82
	db #80,#06,#87,#8d,#91,#78,#80,#05
	db #ce,#86,#80,#06,#91,#87,#97,#87
	db #7f,#79,#ce,#78,#80,#05,#ce,#82
	db #80,#06,#87,#8d,#91,#78,#80,#05
	db #ce,#86,#80,#06,#91,#87,#97,#87
	db #7f,#79,#ce,#78,#80,#05,#ce,#82
	db #80,#06,#87,#8d,#91,#78,#80,#05
	db #ce,#86,#80,#06,#91,#87,#97,#87
	db #7f,#79,#ce,#78,#80,#05,#ce,#82
	db #80,#06,#87,#8d,#91,#5a,#81,#07
	db #ce,#5a,#80,#08,#ce,#48,#80,#03
	db #d0,#5a,#80,#07,#5b,#d2,#48,#80
	db #03,#ce,#5a,#80,#08,#ce,#5a,#80
	db #07,#ce,#5a,#80,#08,#ce,#48,#80
	db #03,#d0,#5a,#80,#07,#5b,#d2,#48
	db #80,#03,#ce,#5a,#80,#08,#ce,#5a
	db #80,#07,#ce,#5a,#80,#08,#ce,#48
	db #80,#03,#d0,#5a,#80,#07,#5b,#d2
	db #48,#80,#03,#ce,#5a,#80,#08,#ce
	db #5a,#80,#07,#ce,#5a,#80,#08,#ce
	db #48,#80,#03,#d0,#5a,#80,#07,#5b
	db #d2,#48,#80,#03,#ce,#5a,#80,#08
	db #c2,#78,#81,#04,#ce,#79,#ce,#79
	db #ce,#79,#ce,#79,#79,#79,#ce,#79
	db #ce,#79,#79,#ce,#79,#79,#ce,#79
	db #ce,#79,#ce,#79,#c2,#5a,#81,#07
	db #ce,#5b,#ce,#5b,#ce,#5b,#ce,#5b
	db #5b,#5b,#ce,#5b,#ce,#5b,#5b,#ce
	db #5b,#5b,#ce,#5b,#ce,#5b,#ce,#5b
	db #d2,#48,#80,#03,#49,#49,#49,#60
	db #81,#04,#ce,#61,#ce,#61,#ce,#61
	db #ce,#61,#61,#61,#ce,#61,#ce,#61
	db #61,#ce,#61,#61,#ce,#61,#ce,#61
	db #ce,#61,#d2,#90,#81,#05,#87,#7f
	db #79,#5a,#81,#07,#ce,#56,#80,#08
	db #5b,#48,#80,#03,#ce,#5a,#80,#08
	db #48,#80,#02,#5a,#80,#07,#ce,#56
	db #80,#08,#5b,#48,#80,#03,#ce,#5a
	db #80,#08,#ce,#60,#80,#07,#ce,#5e
	db #80,#08,#61,#48,#80,#03,#ce,#60
	db #80,#08,#48,#80,#02,#60,#80,#07
	db #ce,#5e,#80,#08,#61,#48,#80,#03
	db #ce,#60,#80,#08,#ce,#52,#80,#07
	db #ce,#50,#80,#08,#53,#48,#80,#03
	db #ce,#52,#80,#08,#48,#80,#02,#52
	db #80,#07,#ce,#50,#80,#08,#53,#48
	db #80,#03,#ce,#52,#80,#08,#ce,#64
	db #80,#07,#ce,#60,#80,#08,#65,#48
	db #80,#03,#ce,#64,#80,#08,#48,#80
	db #02,#64,#80,#07,#ce,#60,#80,#08
	db #65,#48,#80,#03,#ce,#64,#80,#08
	db #c2,#72,#85,#01,#c4,#03,#72,#80
	db #09,#d2,#76,#85,#01,#c4,#03,#76
	db #80,#09,#d2,#78,#85,#01,#c4,#03
	db #78,#80,#09,#ce,#80,#85,#01,#c4
	db #03,#80,#80,#09,#d2,#7c,#85,#01
	db #c4,#03,#7c,#80,#09,#d2,#78,#85
	db #01,#c4,#03,#78,#80,#09,#ce,#72
	db #85,#01,#c4,#03,#72,#80,#09,#d2
	db #78,#85,#01,#c4,#03,#78,#80,#09
	db #d2,#82,#85,#01,#81,#7d,#79,#7d
	db #c4,#03,#7c,#80,#09,#ce,#7c,#85
	db #01,#c4,#03,#7c,#80,#09,#ce,#78
	db #85,#01,#c4,#03,#7c,#05,#c4,#03
	db #7c,#80,#09,#c2,#72,#85,#01,#c4
	db #03,#72,#80,#09,#d2,#78,#85,#01
	db #c4,#03,#78,#80,#09,#d2,#80,#85
	db #01,#c4,#03,#80,#80,#09,#ce,#86
	db #85,#01,#c4,#03,#86,#80,#09,#d2
	db #82,#85,#01,#c4,#03,#82,#80,#09
	db #d2,#80,#85,#01,#c4,#03,#80,#80
	db #09,#ce,#78,#85,#01,#c4,#03,#78
	db #80,#09,#d2,#80,#85,#01,#c4,#03
	db #80,#80,#09,#ce,#82,#85,#01,#c4
	db #03,#82,#80,#09,#d2,#7c,#85,#01
	db #c4,#03,#7c,#80,#09,#ce,#7c,#85
	db #01,#c4,#03,#7c,#80,#09,#ce,#78
	db #85,#01,#c4,#03,#76,#05,#c4,#03
	db #76,#80,#09,#c2,#72,#85,#0a,#ce
	db #c4,#03,#c4,#04,#80,#05,#ce,#73
	db #ce,#79,#ce,#81,#ce,#73,#ce,#81
	db #ce,#87,#ce,#c4,#03,#c4,#04,#c4
	db #05,#c4,#06,#82,#05,#ce,#c4,#03
	db #c4,#04,#c4,#05,#c4,#06,#80,#05
	db #ce,#c4,#03,#c4,#04,#78,#05,#ce
	db #c4,#03,#c4,#04,#82,#05,#ce,#73
	db #ce,#79,#ce,#83,#ce,#81,#ce,#83
	db #ce,#7d,#ce,#c4,#03,#c4,#04,#c4
	db #05,#c4,#06,#78,#05,#ce,#c4,#03
	db #c4,#04,#c4,#05,#ce,#7c,#05,#ce
	db #c4,#03,#c4,#04,#5a,#81,#07,#ce
	db #5a,#80,#08,#ce,#48,#80,#03,#d0
	db #5a,#80,#07,#5b,#d2,#48,#80,#03
	db #ce,#5a,#80,#08,#ce,#64,#80,#07
	db #ce,#64,#80,#08,#ce,#48,#80,#03
	db #d0,#64,#80,#07,#65,#d2,#48,#80
	db #03,#ce,#64,#80,#08,#ce,#56,#80
	db #07,#ce,#56,#80,#08,#ce,#48,#80
	db #03,#d0,#56,#80,#07,#57,#d2,#48
	db #80,#03,#ce,#56,#80,#08,#ce,#60
	db #80,#07,#ce,#60,#80,#08,#ce,#48
	db #80,#03,#d0,#60,#80,#07,#61,#d2
	db #48,#80,#03,#ce,#60,#80,#08,#c2
	db #c4,#05,#c4,#06,#80,#85,#01,#c4
	db #03,#7c,#05,#79,#c4,#03,#72,#05
	db #c4,#03,#72,#80,#09,#d0,#6e,#85
	db #01,#c4,#03,#72,#05,#c4,#03,#ca
	db #ce,#80,#85,#01,#c4,#03,#7c,#05
	db #79,#c4,#03,#7c,#05,#c4,#03,#7c
	db #80,#09,#d8,#ca,#ce,#7c,#85,#01
	db #c4,#03,#78,#05,#77,#c4,#03,#76
	db #80,#09,#78,#85,#01,#c4,#03,#78
	db #80,#09,#ce,#76,#85,#01,#c4,#03
	db #72,#05,#c4,#03,#6e,#05,#c4,#03
	db #6e,#80,#09,#c2,#ca,#ce,#80,#85
	db #01,#c4,#03,#7c,#05,#79,#c4,#03
	db #72,#05,#c4,#03,#72,#80,#09,#d0
	db #78,#85,#01,#c4,#03,#80,#05,#c4
	db #03,#80,#80,#09,#ce,#8a,#85,#01
	db #c4,#03,#86,#05,#83,#c4,#03,#82
	db #80,#09,#7c,#85,#01,#c4,#03,#7c
	db #89,#09,#c4,#05,#c4,#06,#c4,#07
	db #c4,#08,#c4,#09,#ca,#ce,#86,#85
	db #01,#c4,#03,#82,#05,#81,#c4,#03
	db #82,#05,#c4,#03,#82,#80,#09,#d0
	db #86,#85,#01,#c4,#03,#86,#80,#09
	db #ce,#82,#85,#01,#c4,#03,#82,#80
	db #09,#d6,#80,#85,#01,#c4,#03,#80
	db #80,#09,#c2,#ca,#ce,#78,#81,#05
	db #d0,#79,#d4,#79,#d0,#79,#d4,#79
	db #d0,#79,#d4,#79,#d0,#79,#d4,#75
	db #d0,#75,#d4,#75,#d0,#75,#d4,#75
	db #d0,#75,#d4,#75,#d0,#75,#c2,#64
	db #81,#07,#ce,#64,#80,#08,#ce,#48
	db #80,#03,#d0,#64,#80,#07,#65,#d2
	db #48,#80,#03,#ce,#64,#80,#08,#ce
	db #64,#80,#07,#ce,#64,#80,#08,#ce
	db #48,#80,#03,#d0,#64,#80,#07,#65
	db #d2,#48,#80,#03,#ce,#64,#80,#08
	db #ce,#60,#80,#07,#ce,#60,#80,#08
	db #ce,#48,#80,#03,#d0,#60,#80,#07
	db #61,#d2,#48,#80,#03,#ce,#60,#80
	db #08,#ce,#60,#80,#07,#ce,#60,#80
	db #08,#ce,#48,#80,#03,#d0,#60,#80
	db #07,#61,#d2,#48,#80,#03,#ce,#60
	db #80,#08,#c2,#7c,#85,#01,#c4,#03
	db #7c,#80,#09,#f6,#80,#85,#01,#c4
	db #03,#80,#80,#09,#ce,#82,#85,#01
	db #c4,#03,#82,#80,#09,#ce,#78,#85
	db #01,#c4,#03,#78,#80,#09,#c2,#d0
	db #7e,#81,#05,#d0,#7f,#d4,#7f,#d0
	db #7f,#d4,#7f,#d0,#7f,#d4,#7f,#d0
	db #7f,#d4,#83,#d0,#83,#d4,#83,#d0
	db #83,#d4,#83,#d0,#83,#d4,#83,#d0
	db #83,#c2,#6a,#81,#07,#ce,#6a,#80
	db #08,#ce,#48,#80,#03,#d0,#6a,#80
	db #07,#6b,#d2,#48,#80,#03,#ce,#6a
	db #80,#08,#ce,#6a,#80,#07,#ce,#6a
	db #80,#08,#ce,#48,#80,#03,#d0,#6a
	db #80,#07,#6b,#d2,#48,#80,#03,#ce
	db #6a,#80,#08,#ce,#64,#80,#07,#ce
	db #64,#80,#08,#ce,#48,#80,#03,#d0
	db #64,#80,#07,#65,#d2,#48,#80,#03
	db #ce,#64,#80,#08,#ce,#64,#80,#07
	db #ce,#64,#80,#08,#ce,#48,#80,#03
	db #d0,#64,#80,#07,#65,#d2,#48,#80
	db #03,#ce,#64,#80,#08,#c2,#78,#85
	db #01,#c4,#03,#78,#80,#09,#f6,#7c
	db #85,#01,#c4,#03,#7c,#80,#09,#ce
	db #80,#85,#01,#c4,#03,#80,#80,#09
	db #ce,#76,#85,#01,#c4,#03,#76,#80
	db #09,#e6,#6e,#81,#05,#71,#73,#75
	db #77,#79,#7b,#7d,#7f,#81,#83,#85
	db #87,#89,#8b,#8d,#d0,#7e,#81,#05
	db #d0,#7f,#d4,#7f,#d0,#7f,#d4,#7f
	db #d0,#7f,#d4,#7f,#d0,#7f,#d4,#87
	db #d0,#87,#d4,#87,#d0,#87,#d4,#87
	db #d0,#87,#d4,#87,#d0,#87,#c2,#5a
	db #81,#07,#ce,#5a,#80,#08,#ce,#48
	db #80,#03,#d0,#5a,#80,#07,#5b,#d2
	db #48,#80,#03,#ce,#5a,#80,#08,#ce
	db #5a,#80,#07,#ce,#5a,#80,#08,#ce
	db #48,#80,#03,#d0,#5a,#80,#07,#5b
	db #d2,#48,#80,#03,#ce,#5a,#80,#08
	db #ce,#60,#80,#07,#ce,#60,#80,#08
	db #ce,#48,#80,#03,#d0,#60,#80,#07
	db #61,#d2,#48,#80,#03,#ce,#60,#80
	db #08,#ce,#60,#80,#07,#ce,#60,#80
	db #08,#ce,#48,#80,#03,#d0,#60,#80
	db #07,#61,#d2,#48,#80,#03,#ce,#60
	db #80,#08,#c2,#78,#85,#01,#c4,#03
	db #78,#80,#09,#f6,#80,#85,#01,#c4
	db #03,#80,#80,#09,#ce,#82,#85,#01
	db #c4,#03,#82,#80,#09,#ce,#80,#85
	db #01,#c4,#03,#80,#80,#09,#c2,#d0
	db #7e,#81,#05,#d0,#7f,#d4,#7f,#d0
	db #7f,#d4,#7f,#d0,#7f,#d4,#7f,#d0
	db #7f,#d4,#83,#d0,#83,#d4,#83,#d0
	db #83,#d0,#6f,#71,#73,#75,#77,#79
	db #7b,#7d,#7f,#81,#83,#85,#87,#89
	db #8b,#8d,#6a,#81,#07,#ce,#6a,#80
	db #08,#ce,#48,#80,#03,#d0,#6a,#80
	db #07,#6b,#d2,#48,#80,#03,#ce,#6a
	db #80,#08,#ce,#6a,#80,#07,#ce,#6a
	db #80,#08,#ce,#48,#80,#03,#d0,#6a
	db #80,#07,#6b,#d2,#48,#80,#03,#ce
	db #6a,#80,#08,#ce,#6e,#80,#07,#ce
	db #6e,#80,#08,#ce,#48,#80,#03,#d0
	db #6e,#80,#07,#6f,#d2,#48,#80,#03
	db #ce,#6e,#80,#08,#ce,#6e,#80,#07
	db #ce,#6e,#80,#08,#ce,#48,#80,#03
	db #d0,#6e,#80,#07,#6f,#d2,#48,#80
	db #03,#ce,#6e,#80,#08,#c2,#82,#85
	db #01,#c4,#03,#82,#80,#09,#f6,#86
	db #85,#01,#c4,#03,#86,#80,#09,#ce
	db #8a,#85,#01,#c4,#03,#8a,#80,#09
	db #ce,#86,#85,#01,#c4,#03,#86,#80
	db #09,#e6,#7c,#85,#01,#c4,#03,#7c
	db #80,#09,#c2,#90,#81,#04,#ce,#91
	db #ce,#91,#ce,#91,#ce,#91,#91,#91
	db #ce,#91,#ce,#91,#91,#ce,#91,#91
	db #ce,#91,#ce,#91,#ce,#91,#c2,#78
	db #81,#04,#ce,#79,#ce,#79,#ce,#79
	db #ce,#79,#79,#79,#ce,#79,#ce,#79
	db #79,#ce,#79,#79,#ce,#79,#ce,#79
	db #ce,#79,#d2,#90,#80,#05,#89,#7f
	db #79,#78,#81,#0b,#c4,#01,#78,#80
	db #0c,#e6,#7e,#81,#0d,#c4,#01,#7e
	db #80,#0e,#e6,#70,#81,#0d,#c4,#01
	db #70,#80,#0e,#e6,#6a,#81,#0b,#c4
	db #01,#6a,#80,#0c,#c2,#60,#81,#07
	db #ce,#5c,#80,#08,#61,#48,#80,#03
	db #ce,#60,#80,#08,#48,#80,#02,#60
	db #80,#07,#ce,#5c,#80,#08,#61,#48
	db #80,#03,#ce,#60,#80,#08,#ce,#66
	db #80,#07,#ce,#64,#80,#08,#67,#48
	db #80,#03,#ce,#66,#80,#08,#48,#80
	db #02,#66,#80,#07,#ce,#64,#80,#08
	db #67,#48,#80,#03,#ce,#66,#80,#08
	db #ce,#58,#80,#07,#ce,#56,#80,#08
	db #59,#48,#80,#03,#ce,#58,#80,#08
	db #48,#80,#02,#58,#80,#07,#ce,#56
	db #80,#08,#59,#48,#80,#03,#ce,#58
	db #80,#08,#ce,#6a,#80,#07,#ce,#66
	db #80,#08,#6b,#48,#80,#03,#ce,#6a
	db #80,#08,#48,#80,#02,#6a,#80,#07
	db #ce,#66,#80,#08,#6b,#48,#80,#03
	db #ce,#6a,#80,#08,#c2,#78,#85,#01
	db #c4,#03,#78,#80,#09,#d2,#7c,#85
	db #01,#c4,#03,#7c,#80,#09,#d2,#7e
	db #85,#01,#c4,#03,#7e,#80,#09,#ce
	db #86,#85,#01,#c4,#03,#86,#80,#09
	db #d2,#82,#85,#01,#c4,#03,#82,#80
	db #09,#d2,#7e,#85,#01,#c4,#03,#7e
	db #80,#09,#ce,#78,#85,#01,#c4,#03
	db #78,#80,#09,#d2,#7e,#85,#01,#c4
	db #03,#7e,#80,#09,#d2,#88,#85,#01
	db #87,#83,#7f,#83,#c4,#03,#82,#80
	db #09,#ce,#82,#85,#01,#c4,#03,#82
	db #80,#09,#ce,#7e,#85,#01,#c4,#03
	db #82,#05,#c4,#03,#82,#80,#09,#c2
	db #78,#85,#0a,#ce,#c4,#03,#c4,#04
	db #86,#05,#ce,#79,#ce,#7f,#ce,#87
	db #ce,#79,#ce,#87,#ce,#8d,#ce,#c4
	db #03,#c4,#04,#c4,#05,#c4,#06,#88
	db #05,#ce,#c4,#03,#c4,#04,#c4,#05
	db #c4,#06,#86,#05,#ce,#c4,#03,#c4
	db #04,#7e,#05,#ce,#c4,#03,#c4,#04
	db #88,#05,#ce,#79,#ce,#7f,#ce,#89
	db #ce,#87,#ce,#89,#ce,#83,#ce,#c4
	db #03,#c4,#04,#c4,#05,#c4,#06,#7e
	db #05,#ce,#c4,#03,#c4,#04,#c4,#05
	db #ce,#82,#05,#ce,#c4,#03,#c4,#04
	db #78,#85,#01,#c4,#03,#78,#80,#09
	db #d2,#7c,#85,#01,#c4,#03,#7c,#80
	db #09,#d2,#7e,#85,#01,#c4,#03,#7e
	db #80,#09,#ce,#74,#85,#01,#c4,#03
	db #74,#80,#09,#e6,#78,#85,#01,#c4
	db #03,#78,#80,#09,#d2,#7c,#85,#01
	db #c4,#03,#7c,#80,#09,#d2,#7e,#85
	db #01,#c4,#03,#7e,#80,#09,#ce,#82
	db #85,#01,#c4,#03,#82,#80,#09,#c2
	db #5a,#81,#08,#ce,#5b,#ce,#ca,#d0
	db #5a,#80,#08,#5b,#d2,#ca,#ce,#5a
	db #80,#08,#ce,#5b,#ce,#5b,#ce,#ca
	db #d0,#5a,#80,#08,#5b,#d2,#ca,#ce
	db #5a,#80,#08,#ce,#61,#ce,#61,#ce
	db #ca,#d0,#60,#80,#08,#61,#d2,#ca
	db #ce,#60,#80,#08,#ce,#61,#ce,#61
	db #ce,#ca,#d0,#60,#80,#08,#61,#d2
	db #ca,#ce,#60,#80,#08,#c2,#52,#81
	db #08,#ce,#53,#ce,#ca,#d0,#52,#80
	db #08,#53,#d2,#ca,#ce,#52,#80,#08
	db #ce,#53,#ce,#53,#ce,#ca,#d0,#52
	db #80,#08,#53,#d2,#ca,#ce,#52,#80
	db #08,#ce,#65,#ce,#65,#ce,#ca,#d0
	db #64,#80,#08,#65,#d2,#ca,#ce,#64
	db #80,#08,#ce,#65,#ce,#65,#ce,#ca
	db #d0,#64,#80,#08,#65,#d2,#ca,#ce
	db #64,#80,#08,#c2,#5a,#81,#07,#ce
	db #5a,#80,#08,#ce,#48,#80,#03,#d0
	db #5a,#80,#07,#5b,#d2,#48,#80,#03
	db #ce,#5a,#80,#08,#ce,#5a,#80,#07
	db #ce,#5a,#80,#08,#ce,#48,#80,#03
	db #d0,#5a,#80,#07,#5b,#d2,#48,#80
	db #03,#ce,#5a,#80,#08,#ce,#60,#80
	db #07,#ce,#60,#80,#08,#ce,#48,#80
	db #03,#d0,#60,#80,#07,#61,#d2,#48
	db #80,#03,#ce,#60,#80,#08,#ce,#60
	db #80,#07,#ce,#60,#80,#08,#ce,#48
	db #80,#03,#d0,#60,#80,#07,#61,#d2
	db #48,#80,#03,#ce,#60,#80,#08,#c2
	db #52,#81,#07,#ce,#52,#80,#08,#ce
	db #48,#80,#03,#d0,#52,#80,#07,#53
	db #d2,#48,#80,#03,#ce,#52,#80,#08
	db #ce,#52,#80,#07,#ce,#52,#80,#08
	db #ce,#48,#80,#03,#d0,#52,#80,#07
	db #53,#d2,#48,#80,#03,#ce,#52,#80
	db #08,#ce,#64,#80,#07,#ce,#64,#80
	db #08,#ce,#48,#80,#03,#d0,#64,#80
	db #07,#65,#d2,#48,#80,#03,#ce,#64
	db #80,#08,#ce,#64,#80,#07,#ce,#64
	db #80,#08,#ce,#48,#80,#03,#d0,#64
	db #80,#07,#65,#d2,#48,#80,#03,#ce
	db #64,#80,#08,#c2,#72,#85,#01,#c4
	db #03,#72,#80,#09,#de,#78,#85,#01
	db #c4,#03,#78,#80,#09,#ce,#80,#85
	db #01,#c4,#03,#80,#80,#09,#e6,#72
	db #85,#01,#c4,#03,#72,#80,#09,#de
	db #78,#85,#01,#c4,#03,#78,#80,#09
	db #ce,#80,#85,#01,#c4,#03,#80,#80
	db #09,#c2,#86,#85,#01,#c4,#03,#86
	db #80,#09,#de,#80,#85,#01,#c4,#03
	db #80,#80,#09,#ce,#7c,#85,#01,#c4
	db #03,#7c,#80,#09,#e6,#86,#85,#01
	db #c4,#03,#86,#80,#09,#de,#80,#85
	db #01,#c4,#03,#80,#80,#09,#ce,#7c
	db #85,#01,#c4,#03,#7c,#80,#09,#d6
	db #78,#85,#01,#c4,#03,#78,#80,#09
	db #ce,#7c,#85,#01,#c4,#03,#7c,#80
	db #09,#c2,#72,#85,#01,#c4,#03,#72
	db #80,#09,#c0,#1c,#78,#85,#01,#c4
	db #03,#78,#80,#09,#e6,#7c,#85,#01
	db #c4,#03,#7c,#80,#09,#c2,#86,#85
	db #01,#c4,#03,#86,#80,#09,#e6,#80
	db #85,#01,#c4,#03,#80,#80,#09,#e6
	db #78,#85,#01,#c4,#03,#78,#80,#09
	db #e6,#72,#85,#01,#c4,#03,#72,#80
	db #09,#c2,#7e,#81,#0b,#c4,#01,#7e
	db #80,#0c,#e6,#84,#81,#0d,#c4,#01
	db #84,#80,#0e,#e6,#76,#81,#0d,#c4
	db #01,#76,#80,#0e,#e6,#70,#81,#0b
	db #c4,#01,#70,#80,#0c,#c2,#66,#81
	db #07,#ce,#62,#80,#08,#67,#48,#80
	db #03,#ce,#66,#80,#08,#48,#80,#02
	db #66,#80,#07,#ce,#62,#80,#08,#67
	db #48,#80,#03,#ce,#66,#80,#08,#ce
	db #6c,#80,#07,#ce,#6a,#80,#08,#6d
	db #48,#80,#03,#ce,#6c,#80,#08,#48
	db #80,#02,#6c,#80,#07,#ce,#6a,#80
	db #08,#6d,#48,#80,#03,#ce,#6c,#80
	db #08,#ce,#5e,#80,#07,#ce,#5c,#80
	db #08,#5f,#48,#80,#03,#ce,#5e,#80
	db #08,#48,#80,#02,#5e,#80,#07,#ce
	db #5c,#80,#08,#5f,#48,#80,#03,#ce
	db #5e,#80,#08,#ce,#70,#80,#07,#ce
	db #6c,#80,#08,#71,#48,#80,#03,#ce
	db #70,#80,#08,#48,#80,#02,#70,#80
	db #07,#ce,#6c,#80,#08,#71,#48,#80
	db #03,#ce,#70,#80,#08,#c2,#7e,#85
	db #01,#c4,#03,#7e,#80,#09,#d2,#82
	db #85,#01,#c4,#03,#82,#80,#09,#d2
	db #84,#85,#01,#c4,#03,#84,#80,#09
	db #ce,#8c,#85,#01,#c4,#03,#8c,#80
	db #09,#d2,#88,#85,#01,#c4,#03,#88
	db #80,#09,#d2,#84,#85,#01,#c4,#03
	db #84,#80,#09,#ce,#7e,#85,#01,#c4
	db #03,#7e,#80,#09,#d2,#84,#85,#01
	db #c4,#03,#84,#80,#09,#d2,#8e,#85
	db #01,#8d,#89,#85,#89,#c4,#03,#88
	db #80,#09,#ce,#88,#85,#01,#c4,#03
	db #88,#80,#09,#ce,#84,#85,#01,#c4
	db #03,#88,#05,#c4,#03,#88,#80,#09
	db #c2,#7e,#85,#0a,#ce,#c4,#03,#c4
	db #04,#8c,#05,#ce,#7f,#ce,#85,#ce
	db #8d,#ce,#7f,#ce,#8d,#ce,#93,#ce
	db #c4,#03,#c4,#04,#c4,#05,#c4,#06
	db #8e,#05,#ce,#c4,#03,#c4,#04,#c4
	db #05,#c4,#06,#8c,#05,#ce,#c4,#03
	db #c4,#04,#84,#05,#ce,#c4,#03,#c4
	db #04,#8e,#05,#ce,#7f,#ce,#85,#ce
	db #8f,#ce,#8d,#ce,#8f,#ce,#89,#ce
	db #c4,#03,#c4,#04,#c4,#05,#c4,#06
	db #84,#05,#ce,#c4,#03,#c4,#04,#c4
	db #05,#ce,#88,#05,#ce,#c4,#03,#c4
	db #04,#96,#81,#04,#ce,#97,#ce,#97
	db #ce,#97,#ce,#97,#97,#97,#ce,#97
	db #ce,#97,#97,#ce,#97,#97,#ce,#97
	db #ce,#97,#ce,#97,#c2,#60,#80,#07
	db #ce,#61,#ce,#61,#ce,#61,#ce,#61
	db #61,#61,#ce,#61,#ce,#61,#61,#ce
	db #61,#61,#ce,#61,#ce,#61,#ce,#61
	db #d2,#ca,#c2,#7e,#81,#04,#ce,#7f
	db #ce,#7f,#ce,#7f,#ce,#7f,#7f,#7f
	db #ce,#7f,#ce,#7f,#7f,#ce,#7f,#7f
	db #ce,#7f,#ce,#7f,#ce,#7f,#c2,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #5e,#82,#65,#5f,#0f,#b6,#0b,#21
	db #fb,#11,#2b,#ce,#69,#0f,#29,#1b
	db #71,#0f,#0b,#6f,#21,#11,#b2,#c2
	db #91,#fc,#2f,#b5,#c1,#84,#08,#a9
	db #84,#8f,#46,#8c,#08,#af,#8c,#ac
	db #99,#08,#88,#1a,#e7,#35,#e1,#11
	db #d9,#d2,#8e,#08,#07,#8d,#89,#85
	db #89,#27,#0e,#ce,#30,#dc,#ce,#1e
	db #5d,#90,#0c,#c6,#6a,#5f,#d0,#2b
	db #8c,#ff,#2e,#9e,#5e,#85,#ca,#52
	db #05,#03,#93,#a0,#fc,#17,#8e,#d0
	db #e2,#8c,#e5,#0a,#84,#06,#cb,#8e
	db #2f,#96,#8f,#2d,#4f,#03,#89,#24
	db #05,#84,#d0,#f8,#63,#8a,#4d,#96
	db #e9,#47,#97,#01,#2e,#97,#05,#78
	db #02,#dd,#01,#bf,#23,#f6,#1c,#61
	db #01,#b9,#61,#05,#e3,#02,#01,#6c
	db #ba,#9c,#b0,#9c,#39,#7f,#01,#b9
	db #7f,#05,#e3,#02,#01,#47,#c2,#ff
	db #00,#00,#5f,#00,#ff,#f0,#00,#00
;
.init_music		; added by Megachur
;
	ld de,l8a00
	jp real_init_music
;
.music_info
	db "Thrust C64 Loading Screen (2017)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
