; Music of Helikopter Jagd - Title Music (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 27/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HELIKJTM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
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
	db #53,#4b,#31,#30
	db #00,#8a,#01,#32,#00,#1e,#8a,#32
	db #8a,#e0,#8a,#e6,#8a,#1a,#8a,#1e
	db #8a,#32,#8a,#e0,#8a,#06,#c0,#00
	db #00,#37,#5f,#04,#2e,#5f,#02,#2e
	db #46,#5f,#01,#2e,#5f,#05,#2e,#5f
	db #02,#2e,#46,#5f,#01,#7e,#26,#8c
	db #28,#8c,#4c,#8c,#26,#8c,#70,#8c
	db #a2,#8c,#26,#8c,#d4,#8c,#06,#8d
	db #38,#8d,#5e,#8d,#90,#8d,#38,#8d
	db #5e,#8d,#90,#8d,#c2,#8d,#e2,#8d
	db #fc,#8d,#16,#8e,#5e,#8d,#90,#8d
	db #46,#8e,#5e,#8d,#90,#8d,#71,#8e
	db #a1,#8e,#d3,#8e,#05,#8f,#a1,#8e
	db #d3,#8e,#24,#8f,#3b,#8f,#61,#8f
	db #95,#8f,#d3,#8f,#05,#90,#3f,#90
	db #57,#90,#89,#90,#9a,#90,#a8,#90
	db #c6,#90,#d4,#90,#fc,#90,#2e,#91
	db #60,#91,#87,#91,#b9,#91,#eb,#91
	db #fc,#90,#2e,#91,#34,#92,#87,#91
	db #b9,#91,#7c,#92,#ac,#92,#de,#92
	db #10,#93,#ac,#92,#de,#92,#c2,#8d
	db #e2,#8d,#37,#93,#53,#93,#ac,#92
	db #83,#93,#b3,#93,#ac,#92,#de,#93
	db #ff,#93,#2f,#94,#61,#94,#88,#94
	db #2f,#94,#a7,#94,#bd,#94,#d4,#94
	db #fa,#94,#32,#95,#70,#95,#a2,#95
	db #e0,#95,#f8,#95,#2a,#96,#42,#96
	db #67,#96,#79,#96,#36,#9e,#96,#01
	db #a0,#96,#f8,#8a,#02,#8b,#3f,#8b
	db #94,#8b,#a6,#8b,#b8,#8b,#ca,#8b
	db #d3,#8b,#e9,#8b,#ff,#8a,#02,#8b
	db #ff,#37,#00,#00,#00,#00,#ff,#8a
	db #3f,#8b,#00,#b7,#00,#0a,#0c,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#09,#08,#08,#08,#08,#07,#07
	db #07,#07,#06,#06,#06,#06,#05,#05
	db #05,#05,#04,#04,#04,#04,#03,#03
	db #03,#03,#02,#02,#02,#02,#01,#01
	db #01,#01,#01,#ff,#8a,#94,#8b,#00
	db #b7,#00,#0e,#0e,#2e,#0c,#2d,#0c
	db #0d,#0d,#2c,#0c,#2c,#0c,#0c,#0b
	db #2b,#0c,#2b,#0c,#0a,#0a,#2a,#0c
	db #29,#0c,#09,#09,#29,#0c,#28,#0c
	db #08,#08,#28,#0c,#27,#0c,#07,#07
	db #27,#0c,#26,#0c,#06,#06,#26,#0c
	db #25,#0c,#05,#05,#25,#0c,#24,#0c
	db #04,#04,#24,#0c,#23,#0c,#03,#03
	db #23,#0c,#22,#0c,#02,#02,#22,#0c
	db #21,#0c,#01,#01,#21,#0c,#21,#0c
	db #9b,#8b,#a6,#8b,#00,#37,#00,#0f
	db #2f,#03,#2f,#07,#0f,#2f,#03,#2f
	db #07,#0f,#ad,#8b,#b8,#8b,#00,#37
	db #00,#0f,#2f,#04,#2f,#07,#0f,#2f
	db #04,#2f,#07,#0f,#bf,#8b,#ca,#8b
	db #00,#37,#00,#0f,#2f,#05,#2f,#07
	db #0f,#2f,#05,#2f,#07,#0f,#d2,#8b
	db #d3,#8b,#00,#37,#00,#0b,#0f,#da
	db #8b,#e9,#8b,#00,#37,#00,#4f,#ff
	db #ff,#4f,#ff,#ff,#4f,#ff,#ff,#4f
	db #ff,#ff,#0f,#0f,#0f,#ff,#8a,#26
	db #8c,#01,#b7,#00,#0a,#0c,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #09,#08,#08,#08,#08,#07,#07,#07
	db #07,#06,#06,#06,#06,#05,#05,#05
	db #05,#04,#04,#04,#04,#03,#03,#03
	db #03,#02,#02,#02,#02,#01,#01,#01
	db #01,#01,#ca,#c2,#2e,#81,#01,#ce
	db #2f,#ce,#25,#2b,#2f,#ce,#2f,#d2
	db #2f,#ce,#2f,#de,#2b,#ce,#2b,#ce
	db #21,#27,#2b,#ce,#2b,#d2,#2b,#ce
	db #2b,#d2,#2b,#2b,#2b,#2b,#25,#2b
	db #5e,#87,#02,#d6,#5f,#d6,#5f,#63
	db #65,#6d,#65,#63,#5f,#63,#65,#6d
	db #65,#63,#5b,#d0,#5b,#d0,#5b,#d0
	db #5b,#d0,#5b,#ce,#5b,#d2,#6d,#63
	db #65,#63,#65,#63,#2e,#81,#01,#2f
	db #2f,#47,#2f,#2f,#2f,#2f,#2f,#47
	db #2f,#2f,#2f,#2f,#2f,#47,#2f,#2f
	db #2f,#2f,#2f,#47,#2f,#2f,#2b,#2b
	db #2b,#43,#2b,#2b,#2b,#2b,#2b,#43
	db #2b,#2b,#2b,#2b,#2b,#43,#2b,#2b
	db #2b,#2b,#2b,#43,#2b,#2b,#5e,#87
	db #02,#63,#65,#6d,#63,#65,#5f,#63
	db #65,#6d,#63,#65,#5f,#63,#65,#6d
	db #63,#65,#5f,#63,#65,#6d,#63,#65
	db #5b,#5f,#63,#69,#5f,#63,#5b,#5f
	db #63,#69,#5f,#63,#5b,#5f,#63,#69
	db #5f,#63,#5b,#5f,#63,#69,#5f,#63
	db #24,#81,#01,#25,#25,#3d,#25,#25
	db #25,#25,#25,#3d,#25,#25,#25,#25
	db #25,#3d,#25,#25,#25,#25,#25,#3d
	db #25,#25,#21,#21,#21,#39,#21,#21
	db #21,#21,#21,#39,#21,#21,#21,#21
	db #21,#39,#21,#21,#21,#21,#21,#39
	db #21,#21,#54,#87,#02,#59,#5b,#63
	db #59,#5b,#55,#59,#5b,#63,#59,#5b
	db #55,#59,#5b,#63,#59,#5b,#55,#59
	db #5b,#63,#59,#5b,#51,#55,#59,#5f
	db #55,#59,#51,#55,#59,#5f,#55,#59
	db #51,#55,#59,#5f,#55,#59,#51,#55
	db #59,#5f,#55,#59,#7a,#91,#03,#ce
	db #c4,#07,#d2,#c4,#06,#d2,#c4,#05
	db #d2,#c4,#04,#d2,#c4,#03,#d6,#76
	db #80,#04,#d6,#c4,#04,#d2,#c4,#05
	db #d2,#c4,#06,#d2,#c4,#07,#d2,#c4
	db #08,#c2,#32,#81,#01,#33,#33,#4b
	db #33,#33,#33,#33,#33,#4b,#33,#33
	db #33,#33,#33,#4b,#33,#33,#33,#33
	db #33,#4b,#33,#33,#2f,#2f,#2f,#47
	db #2f,#2f,#2f,#2f,#2f,#47,#2f,#2f
	db #2f,#2f,#2f,#47,#2f,#2f,#2f,#2f
	db #2f,#47,#2f,#2f,#4a,#87,#02,#4f
	db #51,#59,#4f,#51,#4b,#4f,#51,#59
	db #4f,#51,#4b,#4f,#51,#59,#4f,#51
	db #4b,#4f,#51,#59,#4f,#51,#47,#4b
	db #4f,#55,#4b,#4f,#47,#4b,#4f,#55
	db #4b,#4f,#47,#4b,#4f,#55,#4b,#4f
	db #47,#4b,#4f,#55,#4b,#4f,#70,#91
	db #05,#c4,#07,#ce,#c4,#06,#ce,#c4
	db #05,#ce,#c4,#04,#ce,#c4,#03,#d0
	db #70,#80,#04,#d8,#c4,#04,#c4,#05
	db #c4,#06,#c4,#07,#c4,#08,#28,#81
	db #01,#29,#29,#41,#29,#29,#29,#29
	db #29,#41,#29,#29,#29,#29,#29,#41
	db #29,#29,#29,#29,#29,#41,#29,#29
	db #40,#87,#02,#37,#41,#49,#41,#49
	db #4f,#49,#4f,#59,#4f,#59,#61,#59
	db #61,#67,#61,#67,#71,#67,#71,#67
	db #61,#59,#88,#83,#06,#d0,#88,#80
	db #07,#ce,#7a,#80,#06,#7b,#d0,#7a
	db #80,#07,#e2,#88,#80,#06,#ce,#88
	db #80,#07,#84,#80,#06,#d0,#84,#80
	db #07,#ce,#76,#80,#06,#77,#d0,#76
	db #80,#07,#e2,#84,#80,#06,#ce,#84
	db #80,#07,#88,#83,#06,#d0,#88,#80
	db #07,#ce,#7a,#80,#06,#7b,#d0,#7a
	db #80,#07,#dc,#88,#80,#06,#ce,#88
	db #80,#07,#8c,#80,#06,#ce,#8c,#80
	db #07,#8e,#80,#06,#d0,#8e,#80,#07
	db #f0,#88,#80,#06,#8b,#8e,#83,#06
	db #d0,#8e,#80,#07,#ce,#80,#80,#06
	db #81,#d0,#80,#80,#07,#e2,#8e,#80
	db #06,#ce,#8e,#80,#07,#8a,#80,#06
	db #d0,#8a,#80,#07,#ce,#7c,#80,#06
	db #7d,#d0,#7c,#80,#07,#e2,#8a,#80
	db #06,#ce,#8a,#80,#07,#50,#81,#01
	db #39,#39,#39,#39,#39,#51,#39,#39
	db #39,#39,#39,#51,#39,#39,#39,#39
	db #39,#51,#39,#39,#39,#39,#39,#4d
	db #35,#35,#35,#35,#35,#4d,#35,#35
	db #35,#35,#35,#4d,#35,#35,#35,#35
	db #35,#4d,#35,#35,#35,#35,#35,#58
	db #85,#01,#51,#59,#51,#51,#51,#59
	db #51,#59,#51,#51,#51,#59,#51,#59
	db #51,#51,#51,#59,#51,#59,#51,#51
	db #51,#55,#4d,#55,#4d,#4d,#4d,#55
	db #4d,#55,#4d,#4d,#4d,#55,#4d,#55
	db #4d,#4d,#4d,#55,#4d,#55,#4d,#4d
	db #4d,#8e,#83,#06,#d0,#8e,#80,#07
	db #ce,#80,#80,#06,#81,#d0,#80,#80
	db #07,#dc,#8e,#80,#06,#ce,#8e,#80
	db #07,#92,#80,#06,#ce,#92,#80,#07
	db #92,#83,#06,#d0,#92,#80,#07,#c0
	db #19,#7a,#80,#06,#ce,#7a,#80,#07
	db #7e,#80,#06,#ce,#7e,#80,#07,#2a
	db #81,#01,#2b,#2b,#43,#2b,#2b,#2b
	db #2b,#2b,#43,#2b,#2b,#2b,#2b,#2b
	db #43,#2b,#2b,#2b,#2b,#2b,#43,#2b
	db #2b,#2b,#2b,#2b,#43,#2b,#2b,#2b
	db #2b,#2b,#43,#2b,#2b,#72,#83,#06
	db #d0,#72,#80,#07,#d0,#80,#80,#06
	db #ce,#80,#80,#07,#72,#80,#06,#ce
	db #72,#80,#07,#70,#80,#06,#d0,#70
	db #80,#07,#d0,#80,#80,#06,#ce,#80
	db #80,#07,#70,#80,#06,#ce,#70,#80
	db #07,#6e,#80,#06,#d0,#6e,#80,#07
	db #c2,#88,#83,#06,#d0,#88,#80,#07
	db #ce,#80,#80,#06,#81,#d0,#80,#80
	db #07,#dc,#88,#80,#06,#ce,#88,#80
	db #07,#8c,#80,#06,#ce,#8c,#80,#07
	db #8e,#80,#06,#ce,#8e,#80,#07,#d0
	db #80,#80,#06,#81,#d0,#80,#80,#07
	db #dc,#80,#80,#06,#ce,#80,#80,#07
	db #84,#80,#06,#ce,#84,#80,#07,#38
	db #81,#01,#39,#39,#51,#39,#39,#39
	db #39,#39,#51,#39,#39,#37,#37,#37
	db #4f,#37,#37,#37,#37,#37,#4f,#37
	db #37,#33,#33,#33,#4b,#33,#33,#33
	db #33,#33,#4b,#33,#33,#33,#33,#33
	db #4b,#33,#33,#33,#33,#33,#4b,#33
	db #33,#80,#83,#06,#d0,#80,#80,#07
	db #ce,#76,#80,#06,#77,#d0,#76,#80
	db #07,#dc,#80,#80,#06,#ce,#80,#80
	db #07,#84,#80,#06,#ce,#84,#80,#07
	db #88,#80,#06,#ce,#89,#d0,#71,#71
	db #d0,#70,#80,#07,#dc,#70,#80,#06
	db #ce,#70,#80,#07,#74,#80,#06,#ce
	db #74,#80,#07,#88,#83,#06,#d0,#88
	db #80,#07,#f4,#7e,#80,#06,#d0,#7e
	db #80,#07,#dc,#7a,#80,#06,#d0,#7a
	db #80,#07,#c2,#28,#81,#01,#29,#29
	db #41,#29,#29,#29,#29,#29,#41,#29
	db #29,#29,#29,#29,#41,#29,#29,#29
	db #29,#29,#41,#29,#29,#37,#37,#37
	db #4f,#37,#37,#37,#37,#37,#4f,#37
	db #37,#37,#37,#37,#4f,#37,#37,#37
	db #37,#37,#4f,#37,#37,#78,#83,#06
	db #d0,#78,#80,#07,#c0,#1f,#74,#80
	db #06,#d0,#74,#80,#07,#c2,#78,#83
	db #06,#d0,#78,#80,#07,#ee,#c6,#14
	db #c6,#14,#c6,#14,#28,#81,#01,#29
	db #29,#41,#29,#29,#29,#29,#29,#41
	db #29,#29,#29,#29,#29,#41,#29,#29
	db #29,#29,#29,#40,#40,#50,#c6,#50
	db #c6,#50,#70,#83,#06,#d0,#70,#80
	db #07,#ee,#c6,#14,#c6,#14,#c6,#14
	db #ca,#d0,#7a,#87,#03,#c4,#06,#c4
	db #03,#c4,#0f,#dc,#c4,#03,#c4,#06
	db #c4,#03,#c4,#0f,#dc,#72,#87,#04
	db #c4,#06,#c4,#03,#c4,#0f,#dc,#c4
	db #03,#c4,#06,#c4,#03,#c4,#0f,#c2
	db #32,#81,#01,#33,#33,#4b,#33,#33
	db #33,#33,#33,#4b,#33,#33,#33,#33
	db #33,#4b,#33,#33,#33,#33,#33,#4b
	db #33,#33,#2b,#2b,#2b,#43,#2b,#2b
	db #2b,#2b,#2b,#43,#2b,#2b,#2b,#2b
	db #2b,#43,#2b,#2b,#2b,#2b,#2b,#43
	db #2b,#2b,#4a,#87,#02,#51,#59,#63
	db #59,#51,#4b,#51,#59,#63,#59,#51
	db #4b,#51,#59,#63,#59,#51,#4b,#51
	db #59,#63,#59,#51,#43,#4b,#51,#5b
	db #51,#4b,#43,#4b,#51,#5b,#51,#4b
	db #43,#4b,#51,#5b,#51,#4b,#43,#4b
	db #51,#5b,#51,#4b,#ca,#d0,#6c,#87
	db #03,#c4,#06,#c4,#03,#c4,#0f,#dc
	db #c4,#03,#c4,#06,#c4,#03,#c4,#0f
	db #dc,#7a,#07,#c4,#06,#c4,#03,#c4
	db #0f,#dc,#c4,#03,#c4,#06,#c4,#03
	db #c4,#0f,#c2,#24,#81,#01,#25,#25
	db #3d,#25,#25,#25,#25,#25,#3d,#25
	db #25,#25,#25,#25,#3d,#25,#25,#25
	db #25,#25,#3d,#25,#25,#33,#33,#33
	db #4b,#33,#33,#33,#33,#33,#4b,#33
	db #33,#33,#33,#33,#4b,#33,#33,#33
	db #33,#33,#4b,#33,#33,#3c,#87,#02
	db #43,#4b,#55,#4b,#43,#3d,#43,#4b
	db #55,#4b,#43,#3d,#43,#4b,#55,#4b
	db #43,#3d,#43,#4b,#55,#4b,#43,#4b
	db #51,#59,#63,#59,#51,#4b,#51,#59
	db #63,#59,#51,#4b,#51,#59,#63,#59
	db #51,#4b,#51,#59,#63,#59,#51,#70
	db #83,#06,#d0,#7a,#87,#03,#c4,#06
	db #c4,#03,#80,#83,#06,#d0,#80,#80
	db #07,#d0,#7e,#80,#06,#d0,#7a,#87
	db #03,#c4,#06,#c4,#03,#7a,#83,#06
	db #7a,#80,#07,#d4,#62,#80,#06,#d0
	db #72,#87,#04,#c4,#06,#c4,#03,#7a
	db #83,#06,#7a,#80,#07,#d4,#76,#80
	db #06,#d0,#72,#87,#04,#c4,#06,#c4
	db #03,#72,#83,#06,#72,#80,#07,#c2
	db #70,#83,#06,#d0,#6c,#87,#03,#c4
	db #06,#c4,#03,#8a,#83,#06,#d0,#8a
	db #80,#07,#d0,#88,#80,#06,#d0,#6c
	db #87,#03,#c4,#06,#c4,#03,#84,#83
	db #06,#d0,#84,#80,#07,#d0,#80,#80
	db #06,#d0,#7a,#87,#03,#c4,#06,#c4
	db #03,#7a,#83,#06,#d0,#7a,#80,#07
	db #d6,#7a,#87,#03,#c4,#06,#c4,#03
	db #7a,#83,#06,#ce,#77,#ce,#73,#c2
	db #70,#83,#06,#d0,#70,#80,#07,#ce
	db #62,#80,#06,#63,#d0,#62,#80,#07
	db #e2,#70,#80,#06,#ce,#70,#80,#07
	db #6c,#80,#06,#d0,#6c,#80,#07,#ce
	db #5e,#80,#06,#5f,#d0,#5e,#80,#07
	db #e2,#6c,#80,#06,#ce,#6c,#80,#07
	db #32,#81,#01,#33,#33,#4b,#33,#33
	db #33,#33,#33,#4b,#33,#33,#33,#33
	db #33,#4b,#33,#33,#33,#33,#33,#4b
	db #33,#33,#2f,#2f,#2f,#47,#2f,#2f
	db #2f,#2f,#2f,#47,#2f,#2f,#2f,#2f
	db #2f,#47,#2f,#2f,#2f,#2f,#2f,#47
	db #2f,#2f,#4a,#87,#02,#51,#59,#63
	db #59,#51,#4b,#51,#59,#63,#59,#51
	db #4b,#51,#59,#63,#59,#51,#4b,#51
	db #59,#63,#59,#51,#47,#4f,#55,#5f
	db #55,#4f,#47,#4f,#55,#5f,#55,#4f
	db #47,#4f,#55,#5f,#55,#4f,#47,#4f
	db #55,#5f,#55,#4f,#70,#83,#06,#d0
	db #70,#80,#07,#ce,#62,#80,#06,#63
	db #d0,#62,#80,#07,#dc,#70,#80,#06
	db #ce,#70,#80,#07,#74,#80,#06,#ce
	db #74,#80,#07,#76,#80,#06,#d0,#76
	db #80,#07,#c2,#40,#87,#02,#37,#41
	db #49,#41,#49,#4f,#49,#4f,#59,#4f
	db #59,#61,#59,#61,#67,#61,#67,#71
	db #67,#71,#67,#62,#83,#06,#67,#88
	db #83,#06,#d0,#88,#80,#07,#ce,#7a
	db #80,#06,#7b,#d0,#7a,#80,#07,#e2
	db #88,#80,#06,#ce,#88,#80,#07,#84
	db #80,#06,#d0,#84,#80,#07,#ce,#76
	db #80,#06,#77,#d0,#76,#80,#07,#e2
	db #84,#80,#06,#ce,#84,#80,#07,#68
	db #83,#06,#d0,#68,#80,#07,#ce,#6c
	db #80,#06,#71,#d0,#70,#80,#07,#da
	db #74,#80,#06,#77,#d0,#76,#80,#07
	db #ce,#70,#80,#06,#6d,#d0,#6c,#80
	db #07,#ce,#68,#80,#06,#67,#d0,#66
	db #80,#07,#e4,#62,#80,#06,#5f,#88
	db #83,#06,#d0,#88,#80,#07,#ce,#7a
	db #80,#06,#7b,#d0,#7a,#80,#07,#dc
	db #88,#80,#06,#ce,#88,#80,#07,#8c
	db #80,#06,#ce,#8c,#80,#07,#8e,#80
	db #06,#d0,#8e,#80,#07,#f0,#88,#80
	db #06,#8b,#62,#83,#06,#d0,#62,#80
	db #07,#ce,#58,#80,#06,#71,#d0,#70
	db #80,#07,#da,#74,#80,#06,#77,#d0
	db #76,#80,#07,#ce,#7a,#80,#06,#7e
	db #80,#07,#c2,#8e,#83,#06,#d0,#8e
	db #80,#07,#ce,#80,#80,#06,#81,#d0
	db #80,#80,#07,#e2,#8e,#80,#06,#ce
	db #8e,#80,#07,#8a,#80,#06,#d0,#8a
	db #80,#07,#ce,#7c,#80,#06,#7d,#d0
	db #7c,#80,#07,#e2,#8a,#80,#06,#ce
	db #8a,#80,#07,#20,#81,#01,#39,#39
	db #51,#39,#39,#21,#39,#39,#51,#39
	db #39,#21,#39,#39,#51,#39,#39,#21
	db #39,#39,#51,#39,#39,#1d,#35,#35
	db #4d,#35,#35,#1d,#35,#35,#4d,#35
	db #35,#1d,#35,#35,#4d,#35,#35,#1d
	db #35,#35,#4d,#35,#35,#ca,#d0,#5e
	db #83,#06,#d0,#69,#d0,#6d,#d0,#71
	db #d0,#6d,#d0,#69,#d0,#5f,#d0,#c4
	db #03,#c4,#05,#c4,#07,#5a,#03,#d0
	db #65,#d0,#69,#d0,#6d,#d0,#69,#d0
	db #65,#d0,#5b,#c2,#8e,#83,#06,#d0
	db #8e,#80,#07,#ce,#80,#80,#06,#81
	db #d0,#80,#80,#07,#dc,#8e,#80,#06
	db #ce,#8e,#80,#07,#92,#80,#06,#ce
	db #92,#80,#07,#c4,#03,#c4,#05,#c4
	db #07,#5e,#83,#06,#d0,#69,#d0,#6d
	db #d0,#71,#d0,#69,#d0,#77,#d0,#69
	db #c2,#92,#83,#06,#d0,#92,#80,#07
	db #c0,#19,#7a,#80,#06,#ce,#7a,#80
	db #07,#7e,#80,#06,#ce,#7e,#80,#07
	db #2a,#81,#01,#2b,#2b,#43,#2b,#2b
	db #2b,#2b,#2b,#43,#2b,#2b,#2b,#2b
	db #2b,#43,#2b,#2b,#2b,#2b,#2b,#43
	db #2b,#2b,#2b,#2b,#2b,#43,#2b,#2b
	db #2b,#2b,#2b,#43,#2b,#2b,#72,#83
	db #06,#d0,#72,#80,#07,#d0,#80,#80
	db #06,#ce,#80,#80,#07,#72,#80,#06
	db #ce,#72,#80,#07,#70,#80,#06,#d0
	db #70,#80,#07,#d0,#80,#80,#06,#ce
	db #80,#80,#07,#70,#80,#06,#ce,#70
	db #80,#07,#6e,#80,#06,#d0,#6e,#80
	db #07,#d8,#68,#80,#06,#6d,#88,#83
	db #06,#d0,#88,#80,#07,#ce,#80,#80
	db #06,#81,#d0,#80,#80,#07,#dc,#88
	db #80,#06,#ce,#88,#80,#07,#8c,#80
	db #06,#ce,#8c,#80,#07,#8e,#80,#06
	db #ce,#8e,#80,#07,#d0,#80,#80,#06
	db #81,#d0,#80,#80,#07,#dc,#80,#80
	db #06,#ce,#80,#80,#07,#84,#80,#06
	db #ce,#84,#80,#07,#38,#81,#01,#39
	db #39,#51,#39,#39,#39,#39,#39,#51
	db #39,#39,#37,#37,#37,#4f,#37,#37
	db #37,#37,#37,#4f,#37,#37,#33,#33
	db #33,#4b,#33,#33,#33,#33,#33,#4b
	db #33,#33,#33,#33,#33,#4b,#33,#33
	db #33,#33,#33,#4b,#33,#33,#70,#83
	db #06,#d0,#70,#80,#07,#ce,#68,#80
	db #06,#5f,#d0,#5e,#80,#07,#dc,#68
	db #80,#06,#ce,#68,#80,#07,#6c,#80
	db #06,#ce,#6c,#80,#07,#70,#80,#06
	db #ce,#70,#80,#07,#d0,#62,#80,#06
	db #63,#d0,#62,#80,#07,#dc,#6c,#80
	db #06,#ce,#6c,#80,#07,#68,#80,#06
	db #ce,#68,#80,#07,#88,#83,#06,#d0
	db #88,#80,#07,#f4,#7e,#80,#06,#d0
	db #7e,#80,#07,#dc,#7a,#80,#06,#d0
	db #7a,#80,#07,#c2,#28,#81,#01,#29
	db #29,#41,#29,#29,#29,#29,#29,#41
	db #29,#29,#29,#29,#29,#41,#29,#29
	db #29,#29,#29,#41,#29,#29,#37,#37
	db #37,#4f,#37,#37,#37,#37,#37,#4f
	db #37,#37,#37,#37,#37,#4f,#37,#37
	db #37,#37,#37,#4f,#37,#37,#66,#83
	db #06,#d0,#66,#80,#07,#f4,#78,#80
	db #06,#d0,#78,#80,#07,#dc,#74,#80
	db #06,#d0,#74,#80,#07,#c2,#78,#83
	db #06,#d0,#78,#80,#07,#dc,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#c4,#06
	db #c4,#07,#c4,#08,#c4,#09,#c4,#0a
	db #c4,#0b,#c4,#0c,#c4,#0d,#c4,#0e
	db #c4,#0f,#c2,#40,#81,#01,#3f,#3d
	db #3b,#39,#37,#35,#33,#31,#2f,#2d
	db #2b,#28,#80,#08,#c2,#70,#83,#06
	db #d0,#70,#80,#07,#dc,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#c4,#06,#c4
	db #07,#c4,#08,#c4,#09,#c4,#0a,#c4
	db #0b,#c4,#0c,#c4,#0d,#c4,#0e,#c4
	db #0f,#c2,#18,#ff,#18,#35,#08,#ff
;
; #a050
; ld de,#8a00
; call #8000
;
.init_music		; added by Megachur
;
	ld de,l8a00
	jp real_init_music
;
.music_info
	db "Helikopter Jagd - Title Music (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
