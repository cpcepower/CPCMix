; Music of Turrican 2 - Level 2 - The Great Bath (2015)(Epyteor)(SuTeKH)(StarkOs)
; Ripped by Megachur the 12/09/2015
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TU2L2TGB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2015
music_adr				equ #8000

	read "music_header.asm"

	jp l8872	; init music
	jp l800d	; play
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
.music_data
	db #53,#4b,#31,#30,#00,#8a,#01,#32
	db #00,#1e,#8a,#20,#8a,#7a,#8a,#7d
	db #8a,#1a,#8a,#1e,#8a,#20,#8a,#7a
	db #8a,#06,#c0,#00,#00,#1b,#7f,#0e
	db #57,#8b,#99,#8b,#b1,#8b,#f3,#8b
	db #35,#8c,#4c,#8c,#8e,#8c,#d0,#8c
	db #e8,#8c,#57,#8b,#99,#8b,#2a,#8d
	db #f3,#8b,#35,#8c,#54,#8d,#8e,#8c
	db #d0,#8c,#7a,#8d,#57,#8b,#99,#8b
	db #2a,#8d,#f3,#8b,#35,#8c,#54,#8d
	db #8e,#8c,#d0,#8c,#99,#8d,#b9,#8d
	db #fb,#8d,#13,#8e,#3c,#8e,#7e,#8e
	db #95,#8e,#c3,#8e,#05,#8f,#1d,#8f
	db #57,#8b,#99,#8b,#2a,#8d,#f3,#8b
	db #35,#8c,#54,#8d,#8e,#8c,#d0,#8c
	db #99,#8d,#1c,#47,#8f,#87,#8a,#91
	db #8a,#b4,#8a,#e5,#8a,#24,#8b,#8e
	db #8a,#91,#8a,#ff,#37,#00,#00,#00
	db #00,#8e,#8a,#b4,#8a,#00,#b7,#00
	db #2b,#fa,#2d,#fa,#2d,#06,#2c,#06
	db #2c,#fa,#2b,#fa,#2b,#06,#2a,#06
	db #2a,#fa,#29,#fa,#29,#06,#28,#06
	db #28,#fa,#27,#fa,#e3,#8a,#e5,#8a
	db #00,#37,#00,#2f,#fa,#2e,#fa,#2d
	db #fa,#2d,#fa,#2d,#fa,#2d,#fa,#2d
	db #fa,#2c,#fa,#2c,#fa,#2c,#fa,#2c
	db #fa,#2c,#fa,#2c,#fa,#2c,#fa,#2b
	db #fa,#2b,#fa,#2b,#fa,#2b,#fa,#2b
	db #fa,#2b,#fa,#2b,#fa,#8e,#8a,#24
	db #8b,#00,#b7,#00,#6b,#fa,#ff,#ff
	db #6d,#fa,#ff,#ff,#6d,#06,#ff,#ff
	db #6c,#06,#ff,#ff,#6c,#fa,#ff,#ff
	db #6b,#fa,#ff,#ff,#6b,#06,#ff,#ff
	db #6a,#06,#ff,#ff,#6a,#fa,#ff,#ff
	db #69,#fa,#ff,#ff,#69,#06,#ff,#ff
	db #68,#06,#ff,#ff,#68,#fa,#ff,#ff
	db #67,#fa,#ff,#ff,#55,#8b,#57,#8b
	db #00,#37,#00,#2e,#fa,#2f,#fa,#2f
	db #fa,#2f,#fa,#2f,#fa,#2e,#fa,#2e
	db #fa,#2e,#fa,#2e,#fa,#2d,#fa,#2d
	db #fa,#2d,#fa,#2d,#fa,#2c,#fa,#2c
	db #fa,#2c,#fa,#2c,#fa,#2b,#fa,#2b
	db #fa,#2b,#fa,#2b,#fa,#2a,#fa,#6e
	db #81,#01,#ce,#79,#ce,#7f,#ce,#79
	db #ce,#7f,#ce,#79,#ce,#6f,#ce,#75
	db #ce,#7d,#ce,#75,#ce,#7d,#ce,#75
	db #ce,#71,#ce,#79,#ce,#7f,#ce,#79
	db #ce,#7f,#ce,#79,#ce,#67,#ce,#6f
	db #ce,#75,#ce,#6f,#ce,#75,#ce,#6f
	db #ce,#6f,#ce,#79,#ce,#7f,#ce,#79
	db #ce,#7f,#ce,#79,#ce,#71,#ce,#79
	db #c2,#48,#81,#02,#da,#49,#d2,#3f
	db #da,#3f,#d2,#41,#da,#41,#d2,#4f
	db #da,#4f,#d2,#49,#da,#49,#d2,#41
	db #c2,#ca,#6e,#87,#03,#ce,#79,#ce
	db #7f,#ce,#79,#ce,#7f,#ce,#79,#ce
	db #6f,#ce,#75,#ce,#7d,#ce,#75,#ce
	db #7d,#ce,#75,#ce,#71,#ce,#79,#ce
	db #7f,#ce,#79,#ce,#7f,#ce,#79,#ce
	db #67,#ce,#6f,#ce,#75,#ce,#6f,#ce
	db #75,#ce,#6f,#ce,#6f,#ce,#79,#ce
	db #7f,#ce,#79,#ce,#7f,#ce,#79,#ce
	db #71,#ce,#79,#7e,#81,#01,#ce,#79
	db #ce,#7f,#ce,#79,#ce,#75,#ce,#7d
	db #ce,#83,#ce,#7d,#ce,#83,#ce,#7d
	db #ce,#77,#ce,#7d,#ce,#83,#ce,#7d
	db #ce,#83,#ce,#7d,#ce,#79,#ce,#7f
	db #ce,#87,#ce,#7f,#ce,#87,#ce,#7f
	db #ce,#75,#ce,#7d,#ce,#83,#ce,#7d
	db #ce,#83,#ce,#7d,#ce,#73,#ce,#79
	db #ce,#83,#ce,#79,#c2,#d4,#40,#81
	db #02,#d2,#45,#da,#45,#d2,#47,#da
	db #47,#d2,#49,#da,#49,#d2,#45,#da
	db #45,#d2,#43,#c2,#ce,#7e,#87,#03
	db #ce,#79,#ce,#7f,#ce,#79,#ce,#75
	db #ce,#7d,#ce,#83,#ce,#7d,#ce,#83
	db #ce,#7d,#ce,#77,#ce,#7d,#ce,#83
	db #ce,#7d,#ce,#83,#ce,#7d,#ce,#79
	db #ce,#7f,#ce,#87,#ce,#7f,#ce,#87
	db #ce,#7f,#ce,#75,#ce,#7d,#ce,#83
	db #ce,#7d,#ce,#83,#ce,#7d,#ce,#73
	db #ce,#79,#ce,#83,#ce,#79,#82,#81
	db #01,#ce,#79,#ce,#71,#ce,#79,#ce
	db #7f,#ce,#79,#ce,#7f,#ce,#79,#ce
	db #67,#ce,#6f,#ce,#75,#ce,#6f,#ce
	db #75,#ce,#6f,#ce,#75,#ce,#7d,#ce
	db #83,#ce,#7d,#ce,#83,#ce,#7d,#ce
	db #6f,#ce,#79,#ce,#7f,#ce,#79,#ce
	db #7f,#ce,#79,#ce,#79,#ce,#7f,#ce
	db #87,#ce,#7f,#ce,#87,#ce,#7f,#c2
	db #42,#81,#02,#d2,#41,#da,#41,#d2
	db #37,#da,#37,#d2,#45,#da,#45,#d2
	db #49,#da,#49,#d2,#49,#da,#49,#c2
	db #ce,#82,#87,#03,#ce,#79,#ce,#71
	db #ce,#79,#ce,#7f,#ce,#79,#ce,#7f
	db #ce,#79,#ce,#67,#ce,#6f,#ce,#75
	db #ce,#6f,#ce,#75,#ce,#6f,#ce,#75
	db #ce,#7d,#ce,#83,#ce,#7d,#ce,#83
	db #ce,#7d,#ce,#6f,#ce,#79,#ce,#7f
	db #ce,#79,#ce,#7f,#ce,#79,#ce,#79
	db #ce,#7f,#ce,#87,#ce,#7f,#ce,#87
	db #ce,#7f,#66,#81,#04,#d2,#6b,#d2
	db #6f,#d2,#65,#da,#c4,#01,#c4,#02
	db #d0,#66,#01,#d2,#6b,#ce,#67,#ce
	db #65,#ce,#61,#ce,#5d,#da,#c4,#01
	db #c4,#02,#d0,#66,#01,#d2,#6b,#d2
	db #6f,#d2,#71,#c2,#6e,#81,#04,#d2
	db #67,#d2,#6b,#da,#c4,#01,#c4,#02
	db #d0,#6e,#01,#da,#c4,#01,#c4,#02
	db #d0,#66,#01,#d2,#6b,#d2,#6f,#d2
	db #67,#d2,#6b,#d2,#6f,#d2,#67,#d2
	db #6b,#c2,#6e,#81,#04,#d2,#61,#da
	db #c4,#01,#c4,#02,#d0,#5c,#01,#d2
	db #67,#d2,#6f,#d2,#6b,#d2,#67,#d2
	db #65,#d2,#61,#da,#c4,#01,#c4,#02
	db #c2,#d0,#6e,#81,#04,#ce,#61,#da
	db #c4,#01,#c4,#02,#d0,#5c,#01,#d2
	db #67,#d6,#6f,#ce,#6b,#d2,#67,#d2
	db #65,#d2,#61,#da,#c4,#01,#c4,#02
	db #c2,#7c,#81,#01,#ce,#85,#ce,#8b
	db #ce,#85,#ce,#8b,#ce,#85,#ce,#75
	db #ce,#7d,#ce,#83,#ce,#7d,#ce,#83
	db #ce,#7d,#ce,#7d,#ce,#85,#ce,#8b
	db #ce,#85,#ce,#8b,#ce,#85,#ce,#75
	db #ce,#7d,#ce,#83,#ce,#7d,#ce,#83
	db #ce,#7d,#ce,#7d,#ce,#85,#ce,#8b
	db #ce,#85,#ce,#8b,#ce,#85,#ce,#75
	db #ce,#7d,#c2,#4c,#81,#02,#da,#4d
	db #d2,#45,#da,#45,#d2,#4d,#da,#4d
	db #d2,#45,#da,#45,#d2,#4d,#da,#4d
	db #d2,#45,#c2,#6c,#81,#04,#d2,#6f
	db #d2,#73,#d2,#6b,#d2,#6b,#ce,#69
	db #ce,#65,#d2,#6d,#d2,#6f,#d2,#73
	db #d2,#75,#d2,#7d,#d2,#c4,#01,#c4
	db #02,#6a,#01,#ce,#6d,#d2,#6f,#d2
	db #73,#d2,#6b,#c2,#82,#81,#01,#ce
	db #7d,#ce,#83,#ce,#7d,#ce,#73,#ce
	db #7b,#ce,#81,#ce,#7b,#ce,#81,#ce
	db #7b,#ce,#73,#ce,#7b,#ce,#81,#ce
	db #7b,#ce,#81,#ce,#7b,#ce,#7b,#ce
	db #81,#ce,#89,#ce,#81,#ce,#89,#ce
	db #81,#ce,#7b,#ce,#81,#ce,#89,#ce
	db #81,#ce,#89,#ce,#81,#ce,#6d,#ce
	db #75,#ce,#7b,#ce,#75,#c2,#d4,#44
	db #81,#02,#d2,#43,#da,#43,#d2,#43
	db #da,#43,#d2,#4b,#da,#4b,#d2,#4b
	db #da,#4b,#d2,#3d,#c2,#6a,#81,#04
	db #ce,#69,#ce,#65,#d2,#63,#d2,#69
	db #d2,#c4,#01,#c4,#02,#72,#01,#ce
	db #75,#d2,#73,#d2,#69,#d2,#71,#d2
	db #7b,#d2,#69,#d2,#6d,#d2,#71,#d2
	db #c4,#01,#c4,#02,#72,#01,#ce,#75
	db #d2,#7b,#c2,#7a,#81,#01,#ce,#75
	db #ce,#6d,#ce,#75,#ce,#7b,#ce,#75
	db #ce,#7b,#ce,#75,#ce,#75,#ce,#7b
	db #ce,#83,#ce,#7b,#ce,#83,#ce,#7b
	db #ce,#75,#ce,#7b,#ce,#83,#ce,#7b
	db #ce,#83,#ce,#7b,#ce,#7d,#ce,#83
	db #ce,#8b,#ce,#83,#ce,#8b,#ce,#83
	db #ce,#7b,#ce,#83,#ce,#89,#ce,#83
	db #ce,#89,#ce,#83,#c2,#3c,#81,#02
	db #d2,#3d,#da,#3d,#d2,#45,#da,#45
	db #d2,#45,#da,#45,#d2,#4d,#da,#4d
	db #d2,#4b,#da,#4b,#c2,#6c,#81,#04
	db #d2,#71,#d2,#75,#d2,#c4,#01,#c4
	db #02,#78,#01,#ce,#7b,#d2,#83,#d2
	db #75,#d2,#79,#d2,#7b,#d2,#71,#d2
	db #6b,#da,#c4,#01,#c4,#02,#d0,#6a
	db #01,#da,#c4,#01,#c4,#02,#c2,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fc,#9f,#99,#28,#1a,#ee,#11,#28
	db #a8,#45,#c6,#04,#5a,#36,#59,#54
	db #91,#0b,#54,#d4,#12,#0c,#5c,#81
	db #94,#0e,#f7,#51,#9f,#d4,#4f,#4c
	db #6c,#1c,#24,#23,#33,#8a,#28,#3c
	db #cc,#39,#f4,#3e,#3b,#73,#e0,#f8
	db #8d,#a6,#92,#fb,#9f,#34,#22,#b9
	db #46,#91,#e6,#fc,#b8,#33,#fe,#c8
	db #78,#1e,#49,#33,#c6,#fb,#c6,#e0
	db #d1,#d0,#8d,#08,#6f,#bf,#4f,#e6
	db #11,#cc,#c8,#d7,#4e,#a8,#8c,#9c
	db #14,#9e,#c7,#4f,#ac,#84,#e2,#dd
	db #0c,#fe,#ea,#6b,#d4,#e0,#db,#00
	db #51,#c3,#c0,#7c,#c0,#94,#39,#60
	db #26,#54,#3c,#7c,#cc,#8f,#a1,#82
	db #b1,#58,#89,#83,#76,#47,#be,#1b
	db #ae,#28,#04,#39,#05,#f4,#17,#8c
	db #a6,#1e,#22,#14,#33,#d7,#24,#1c
	db #36,#ac,#f4,#af,#4d,#9f,#ee,#a2
	db #48,#70,#f7,#4a,#eb,#38,#f9,#f8
	db #e7,#05,#00,#e1,#13,#b9,#33,#76
	db #cf,#c2,#1c,#8a,#dc,#02,#fc,#fc
	db #39,#e8,#4a,#15,#14,#fc,#bc,#c4
	db #e0,#f0,#f0,#00,#0f,#00,#43,#27
	db #82,#f9,#dc,#4f,#c1,#05,#01,#87
	db #83,#1b,#e7,#ae,#fe,#48,#62,#8f
	db #91,#d4,#c3,#cd,#b9,#73,#8f,#6e
	db #c7,#05,#c3,#00,#79,#95,#32,#28
	db #3a,#4a,#e5,#05,#03,#5f,#77,#18
	db #fa,#8e,#aa,#14,#ea,#9b,#14,#e2
	db #fd,#3a,#74,#82,#44,#22,#01,#76
	db #e6,#0a,#0b,#4d,#20,#09,#76,#10
	db #ce,#0b,#10,#68,#c7,#93,#b4,#10
	db #77,#0c,#00,#fa,#af,#c3,#cf,#e6
	db #cf,#eb,#9b,#22,#05,#92,#2b,#f4
	db #fb,#dd,#fa,#36,#9b,#13,#36,#09
	db #19,#8e,#39,#1c,#2e,#05,#20,#37
	db #0d,#0a,#8c,#21,#7f,#00,#00,#c8
	db #e7,#cc,#88,#01,#9b,#88,#11,#d2
	db #0b,#7a,#88,#1d,#6b,#1b,#88,#05
	db #af,#21,#1c,#03,#f0,#33,#e3,#40
	db #00,#fc,#ad,#82,#00,#e0,#c3,#e2
	db #01,#11,#9b,#03,#41,#17,#19,#9c
	db #0f,#ee,#07,#00,#71,#17,#09,#bf
	db #4d,#5a,#22,#01,#e1,#00,#33,#07
	db #9d,#95,#6d,#05,#d0,#6b,#33,#05
	db #5c,#22,#11,#ef,#0d,#19,#3d,#07
	db #ef,#23,#00,#f2,#2c,#fc,#dd,#78
	db #74,#d3,#fb,#c6,#12,#d8,#62,#a8
	db #fc,#4b,#36,#36,#88,#e6,#ac,#7c
	db #4e,#76,#ad,#3d,#4f,#df,#33,#ae
	db #7d,#51,#a7,#33,#68,#b4,#c7,#84
	db #5c,#4d,#7f,#f8,#79,#c3,#fb,#c5
	db #03,#8f,#e6,#af,#df,#9b,#08,#e8
	db #48,#84,#b5,#c9,#05,#d4,#42,#e2
	db #11,#73,#62,#97,#b7,#18,#86,#e5
	db #ca,#36,#49,#37,#d7,#1e,#28,#f3
	db #d1,#c9,#93,#54,#54,#82,#b1,#7c
	db #0b,#0f,#7c,#14,#26,#af,#b2,#d1
	db #f4,#ce,#3f,#4c,#0c,#af,#c1,#e8
	db #b3,#e9,#75,#7a,#8e,#64,#31,#84
	db #5c,#d7,#92,#88,#ef,#d4,#e9,#d8
	db #ea,#26,#7a,#1c,#da,#e1,#3b,#0c
	db #8c,#af,#f9,#b6,#ed,#5c,#42,#cb
	db #c7,#0e,#3c,#4f,#71,#df,#cf,#f8
	db #28,#fc,#a6,#4e,#11,#03,#dc,#dd
	db #44,#1c,#9e,#7b,#ab,#fc,#6e,#1e
	db #e5,#f2,#e0,#62,#a8,#39,#2a,#df
	db #3b,#86,#cf,#8f,#d5,#bc,#42,#c2
	db #ea,#3c,#fe,#c8,#7e,#aa,#ec,#a9
	db #22,#1c,#14,#fb,#9b,#46,#1c,#24
	db #04,#31,#33,#64,#cc,#13,#6f,#63
	db #53,#bd,#19,#dc,#ec,#62,#36,#5c
	db #a4,#29,#e8,#01,#3c,#11,#a8,#b9
	db #5c,#e6,#1a,#28,#fa,#f8,#88,#79
	db #76,#33,#a0,#c8,#98,#d4,#d4,#14
	db #33,#9b,#86,#08,#33,#6f,#46,#c8
	db #91,#14,#6c,#c8,#d7,#00,#a3,#66
	db #78,#29,#aa,#9b,#46,#1d,#7b,#8e
	db #e8,#9e,#8e,#69,#51,#a9,#be,#a6
	db #46,#c0,#bc,#44,#b4,#3c,#3e,#7c
	db #4c,#50,#08,#96,#c2,#4c,#a8,#89
	db #27,#a8,#47,#c3,#29,#3f,#80,#ec
	db #8d,#05,#f3,#17,#60,#3c,#34,#22
	db #28,#76,#54,#62,#96,#00,#a7,#58
	db #e7,#d9,#62,#df,#11,#5c,#33,#e2
	db #14,#94,#7c,#b7,#29,#af,#f1,#05
	db #c7,#00,#c3,#83,#12,#76,#9b,#b2
	db #e5,#8f,#50,#03,#14,#76,#f9,#ea
	db #ab,#e1,#3c,#2f,#f1,#83,#43,#4b
	db #82,#28,#e1,#4f,#8c,#05,#12,#01
	db #87,#83,#83,#f2,#85,#39,#b9,#c0
	db #c0,#ee,#79,#bd,#14,#4a,#8e,#41
	db #03,#00,#ce,#02,#02,#1a,#1c,#28
	db #05,#9e,#03,#01,#18,#0f,#a0,#31
	db #54,#7c,#8d,#7c,#9f,#00,#ca,#59
	db #8c,#aa,#44,#01,#b8,#34,#b9,#b8
	db #0a,#00,#10,#4d,#a8,#07,#b8,#10
	db #5c,#b9,#11,#10,#43,#09,#54,#74
	db #22,#10,#77,#0c,#00,#fa,#af,#df
	db #df,#02,#2f,#d5,#ce,#15,#1c,#00
	db #10,#fa,#1f,#e7,#16,#10,#7c,#21
	db #ff,#fd,#fc,#8d,#dd,#79,#00,#8b
	db #54,#e3,#cc,#03,#de,#00,#11,#1c
	db #fc,#11,#6e,#0c,#11,#ef,#03,#1d
	db #2e,#00,#05,#fc,#35,#39,#11,#73
	db #a8,#11,#33,#ce,#f7,#1e,#01,#6c
	db #08,#22,#cf,#05,#11,#1c,#0f,#7a
	db #08,#21,#73,#1f,#05,#be,#0f,#3e
	db #1d,#7f,#00,#ce,#bc,#02,#00,#1b
	db #03,#01,#11,#93,#05,#01,#17,#5c
	db #00,#11,#eb,#21,#03,#1e,#78,#17
	db #df,#09,#4d,#ad,#0a,#01,#72,#00
	db #00,#1c,#0f,#00,#05,#0d,#32,#00
	db #03,#09,#dd,#1a,#07,#e7,#1f,#07
	db #59,#0f,#05,#0f,#cd,#29,#00,#fc
	db #91,#54,#36,#b9,#af,#08,#36,#0c
	db #c0,#77,#a8,#f6,#bb,#94,#4b,#f0
	db #9f,#11,#b3,#6c,#88,#28,#f8,#17
	db #9f,#bc,#63,#00,#39,#48,#c0,#fb
	db #51,#17,#39,#4a,#b3,#e7,#4d,#6f
	db #14,#f8,#af,#10,#f3,#30,#03,#0c
	db #2c,#9c,#06,#3c,#d8,#7a,#96,#a8
	db #ac,#06,#a5,#f1,#89,#21,#0c,#48
	db #2b,#a8,#7b,#f1,#44,#92,#c0,#49
	db #84,#4a,#5c,#37,#28,#4c,#30,#36
	db #4e,#26,#d4,#8b,#f3,#f0,#e0,#cc
	db #3c,#fc,#28,#5e,#7c,#34,#eb,#65
	db #c9,#83,#e8,#8c,#7e,#0c,#af,#fe
	db #c8,#6c,#8c,#ac,#41,#48,#44,#3c
	db #2c,#c0,#28,#92,#e9,#69,#74,#c9
	db #a8,#f7,#4e,#9e,#1f,#5c,#aa,#93
	db #1a,#26,#81,#e7,#76,#8a,#6d,#0b
	db #af,#fa,#cc,#e6,#c3,#5f,#66,#8e
	db #cf,#80,#e6,#68,#e6,#4f,#12,#11
	db #cc,#8c,#c5,#62,#67,#11,#08,#07
	db #5c,#fc,#7c,#ac,#1c,#4f,#bd,#c1
	db #88,#14,#1e,#cc,#fc,#65,#54,#d2
	db #de,#15,#36,#3b,#b9,#36,#60,#94
	db #17,#42,#36,#75,#b9,#dc,#1e,#94
	db #0e,#c0,#45,#1c,#28,#25,#86,#f3
	db #2c,#8a,#8c,#05,#c0,#10,#8c,#8c
	db #88,#33,#c6,#64,#6c,#7c,#c7,#f2
	db #c3,#19,#25,#36,#b8,#71,#45,#5c
	db #af,#ec,#6e,#c1,#31,#22,#10,#54
	db #a5,#21,#33,#14,#e7,#bc,#f2,#f4
	db #fd,#a7,#d6,#fb,#84,#e4,#20,#33
	db #79,#26,#84,#24,#52,#59,#4b,#6c
	db #3a,#f4,#ec,#f6,#00,#32,#66,#4c
	db #7d,#ac,#39,#7e,#bc,#8d,#a9,#39
	db #d1,#ee,#48,#33,#a1,#14,#48,#e8
	db #f6,#62,#c3,#79,#14,#7c,#ae,#fd
	db #b6,#45,#d9,#53,#f9,#cf,#fa,#4a
	db #94,#78,#27,#29,#08,#8f,#b1,#05
	db #be,#54,#e9,#22,#91,#bc,#d9,#51
	db #94,#07,#aa,#7a,#50,#22,#33,#b9
	db #05,#c0,#b9,#3c,#36,#a8,#f6,#3c
	db #7f,#f9,#df,#05,#3d,#ee,#f1,#c6
	db #84,#28,#33,#9b,#8a,#fb,#f5,#9c
	db #06,#fc,#fc,#39,#4a,#c7,#99,#8c
	db #a4,#87,#33,#0f,#00,#25,#82,#43
	db #83,#df,#f9,#ae,#00,#05,#01,#01
	db #43,#83,#01,#87,#17,#c0,#33,#27
	db #4b,#57,#02,#b8,#98,#76,#62,#d4
	db #a4,#e9,#97,#9e,#a5,#f0,#00,#d8
	db #a0,#02,#3c,#d7,#00,#28,#05,#27
	db #03,#50,#18,#87,#30,#b1,#14,#fc
	db #f9,#cf,#ef,#e3,#33,#39,#22,#02
	db #07,#39,#39,#28,#08,#33,#94,#3f
	db #36,#e4,#8f,#dd,#de,#0a,#37,#16
	db #0b,#38,#05,#ce,#16,#10,#f9,#21
	db #7f,#00,#00,#c8,#ec,#22,#00,#39
	db #11,#00,#03,#cf,#00,#11,#2d,#0c
	db #9b,#03,#33,#03,#0f,#e0,#33,#b7
	db #01,#15,#05,#37,#23,#0b,#77,#09
	db #0f,#73,#19,#17,#63,#10,#cc,#88
	db #01,#cc,#88,#00,#f7,#11,#9e,#0f
	db #88,#0f,#d8,#25,#88,#f1,#25,#f5
	db #2f,#97,#cc,#f2,#d2,#c3,#82,#01
	db #b9,#00,#05,#71,#41,#0d,#13,#ae
	db #41,#19,#b7,#11,#00,#8d,#07,#5c
	db #00,#0d,#21,#e7,#0a,#00,#f2,#3c
	db #ff,#be,#00,#e3,#62,#48,#94,#f7
	db #bd,#cf,#36,#d4,#4b,#c2,#1b,#36
	db #c0,#c0,#88,#ec,#3c,#de,#c9,#7d
	db #f7,#77,#c3,#39,#84,#cf,#d2,#a7
	db #d4,#4a,#dd,#a5,#c3,#7c,#4d,#b1
	db #11,#2c,#84,#f4,#f7,#d5,#0e,#39
	db #b9,#4e,#fe,#be,#b7,#fc,#f9,#44
	db #28,#b5,#ac,#e3,#89,#99,#5c,#9b
	db #26,#c6,#b1,#b5,#ef,#00,#84,#7c
	db #c0,#00,#48,#86,#35,#bc,#11,#1c
	db #0b,#3f,#bc,#af,#1f,#62,#bb,#3c
	db #54,#bf,#43,#cc,#45,#3c,#54,#28
	db #f8,#c3,#9c,#b9,#df,#d5,#4c,#d3
	db #ca,#66,#85,#0c,#14,#14,#28,#5b
	db #83,#c7,#f5,#97,#0f,#96,#a4,#28
	db #33,#8c,#cf,#ef,#bc,#81,#5c,#04
	db #80,#5c,#a8,#26,#1c,#11,#76,#b9
	db #db,#df,#0b,#af,#af,#4c,#f0,#dc
	db #42,#3f,#8c,#1c,#80,#ad,#4f,#f4
	db #cf,#d3,#12,#9c,#28,#e0,#f2,#2d
	db #88,#03,#dc,#fc,#b9,#cf,#4f,#79
	db #ff,#5f,#e0,#0b,#bc,#7c,#91,#13
	db #bc,#45,#8c,#3b,#72,#36,#54,#1f
	db #84,#7c,#28,#b6,#a8,#c0,#e8,#dc
	db #0e,#30,#c0,#08,#44,#48,#1c,#a2
	db #6f,#b2,#92,#80,#b0,#38,#33,#88
	db #33,#64,#ae,#ec,#7c,#f8,#00,#32
	db #7e,#b8,#58,#a5,#72,#a1,#22,#cb
	db #5d,#c0,#48,#e9,#3f,#22,#f8,#a7
	db #14,#21,#2f,#3c,#a7,#e2,#fa,#78
	db #fc,#fc,#23,#19,#0c,#c9,#28,#2d
	db #4b,#14,#6c,#be,#3a,#50,#16,#66
	db #72,#cf,#c0,#0c,#fc,#55,#79,#3c
	db #91,#ae,#bf,#7b,#bc,#b3,#b0,#c0
	db #36,#61,#26,#54,#14,#7c,#9e,#27
	db #8b,#bb,#c9,#17,#48,#bf,#22,#f6
	db #a6,#9c,#3f,#ae,#d8,#40,#e8,#ce
	db #04,#05,#69,#90,#e0,#bc,#56,#d9
	db #45,#94,#82,#55,#be,#69,#29,#33
	db #a8,#09,#c0,#d4,#ba,#1e,#39,#f1
	db #f3,#1f,#28,#50,#af,#c7,#05,#1f
	db #00,#11,#54,#76,#42,#94,#9d,#8f
	db #3c,#ea,#70,#28,#76,#fc,#a2,#b7
	db #8f,#43,#05,#c3,#00,#b1,#82,#43
	db #0a,#f9,#fc,#39,#00,#05,#1e,#43
	db #83,#01,#1a,#09,#02,#fc,#73,#31
	db #33,#b9,#55,#28,#fb,#6f,#88,#c0
	db #d6,#00,#80,#04,#9f,#3c,#28,#af
	db #fe,#99,#02,#16,#39,#33,#c1,#79
	db #fc,#05,#b2,#d6,#a4,#33,#36,#ab
	db #ef,#a3,#ef,#0a,#1b,#16,#02,#67
	db #05,#08,#1f,#c0,#bd,#0a,#ff,#af
	db #cb,#29,#c9,#14,#36,#08,#d4,#e3
	db #a3,#33,#65,#8f,#4f,#3e,#6c,#7f
	db #f4,#8e,#4f,#39,#0a,#f9,#4f,#7f
	db #00,#e3,#51,#0a,#0a,#0f,#8e,#66
	db #05,#36,#05,#09,#02,#cc,#11,#05
	db #eb,#0d,#1d,#6a,#04,#1f,#06,#dd
	db #0f,#1c,#dc,#19,#05,#eb,#35,#08
	db #38,#17,#eb,#06,#17,#8d,#ad,#b3
	db #00,#93,#8c,#88,#33,#03,#00,#72
	db #2e,#04,#c3,#97,#0f,#c3,#10,#35
	db #04,#a8,#11,#e0,#00,#ef,#05,#01
	db #7b,#09,#f0,#00,#8f,#ae,#73,#0c
	db #08,#01,#d3,#11,#8b,#00,#17,#9e
	db #08,#16,#00,#04,#09,#f8,#23,#cb
	db #cc,#f5,#65,#03,#02,#01,#00,#1d
	db #01,#00,#05,#b8,#03,#13,#75,#01
	db #19,#17,#ce,#00,#6a,#07,#00,#0d
	db #75,#01,#2f,#72,#fb,#9f,#00,#ff
	db #f0,#00,#00,#00,#00,#00,#00,#00
	db #50,#0f,#00,#00,#00,#c3,#72,#88
	db #c3,#0d,#80,#c3,#56,#00,#88,#00
	db #80,#00,#00,#af,#32,#0b,#00,#80
	db #32,#3d,#88,#3e,#00,#fe,#00,#04
	db #28,#07,#3c,#32,#15,#17,#b0,#50
	db #82,#13,#06,#b7,#d2,#07,#12,#81
	db #32,#2f,#02,#9a,#02,#01,#05,#82
	db #3e,#b7,#32,#25,#80,#22,#02,#d6
	db #01,#30,#31,#21,#32,#00,#7e,#23
	db #cb,#3f,#38,#25,#47,#e6,#00,#1f
	db #cb,#67,#28,#02,#f6,#e0,#32,#08
	db #3c,#81,#cb,#10,#01,#30,#05,#07
	db #7e,#32,#a7,#81,#23,#08,#20,#12
	db #82,#23,#22,#3e,#18,#80,#18,#06
	db #04,#32,#70,#38,#39,#38,#18,#07
	db #32,#72,#08,#18,#76,#1b,#40,#05
	db #20,#22,#7f,#20,#0d,#32,#7b,#80
	db #59,#47,#0e,#0a,#1d,#81,#78,#32
	db #70,#82,#1d,#80,#11,#35,#81,#ed
	db #a0,#8e,#01,#11,#a0,#06,#4d,#0b
	db #82,#06,#30,#22,#9d,#3c,#b7,#20
	db #70,#0e,#4a,#16,#18,#32,#bd,#80
	db #28,#18,#70,#46,#0d,#08,#04,#32
	db #cb,#80,#2a,#d9,#4b,#25,#ed,#59
	db #14,#1e,#91,#c2,#02,#b8,#80,#5e
	db #23,#56,#59,#82,#18,#eb,#22,#c6
	db #80,#76,#c3,#24,#3e,#01,#14,#c8
	db #18,#09,#8e,#cf,#1d,#1e,#34,#a3
	db #12,#92,#4a,#32,#17,#29,#4e,#6a
	db #0b,#29,#0c,#42,#22,#22,#0e,#fb
	db #38,#08,#81,#26,#62,#62,#26,#01
	db #01,#40,#11,#05,#dd,#2e,#00,#cd
	db #af,#00,#83,#dd,#7d,#32,#3f,#81
	db #22,#ba,#11,#82,#d9,#22,#ac,#22
	db #79,#e1,#92,#27,#b4,#b4,#00,#fd
	db #b4,#20,#39,#32,#d7,#82,#00,#57
	db #7b,#32,#3b,#81,#6a,#65,#22,#46
	db #b7,#cb,#88,#eb,#29,#19,#5d,#66
	db #6f,#11,#11,#e8,#82,#cb,#c3,#e0
	db #06,#93,#d9,#82,#04,#19,#ea,#04
	db #f9,#18,#c9,#a4,#26,#fd,#13,#b6
	db #77,#fd,#50,#2f,#6a,#cd,#02,#6a
	db #e6,#aa,#89,#6a,#0c,#83,#6a,#a0
	db #6a,#88,#a3,#6a,#06,#83,#e4,#6a
	db #29,#83,#c6,#6a,#a6,#6a,#9e,#09
	db #83,#6a,#47,#3a,#83,#63,#0e,#32
	db #06,#4c,#2b,#83,#04,#38,#3c,#83
	db #6a,#3b,#1b,#83,#6a,#79,#9a,#6a
	db #bc,#03,#6a,#c3,#15,#82,#22,#5e
	db #6a,#24,#f4,#83,#6a,#0e,#82,#32
	db #58,#6a,#a6,#7b,#6a,#98,#11,#82
	db #6a,#5b,#f3,#6a,#72,#8c,#63,#84
	db #e5,#06,#7d,#6a,#ae,#8e,#6a,#5e
	db #6d,#6a,#14,#bc,#93,#a4,#a9,#05
	db #db,#c0,#18,#36,#3e,#37,#a4,#c7
	db #4d,#2a,#ca,#71,#80,#af,#ed,#52
	db #20,#26,#a4,#9b,#9c,#f7,#94,#e4
	db #ca,#54,#aa,#4d,#05,#71,#7f,#05
	db #22,#6c,#05,#a6,#d4,#3b,#b2,#e6
	db #4a,#0a,#16,#00,#d9,#99,#59,#02
	db #19,#d7,#28,#22,#12,#ea,#84,#3a
	db #fd,#18,#dd,#6f,#11,#fd,#09,#21
	db #d8,#86,#3a,#f3,#02,#cd,#44,#84
	db #eb,#c1,#b8,#07,#03,#3c,#18,#1d
	db #21,#5c,#2c,#11,#2d,#1b,#b7,#38
	db #0b,#47,#f6,#21,#3d,#32,#f3,#20
	db #3c,#ed,#53,#92,#ec,#a0,#70,#dd
	db #7c,#22,#32,#ab,#e2,#f2,#51,#93
	db #be,#51,#5d,#aa,#51,#89,#29,#87
	db #3a,#da,#3e,#51,#e9,#dd,#29,#51
	db #da,#32,#51,#d3,#49,#87,#cc,#51
	db #7a,#a8,#51,#38,#5b,#51,#93,#cb
	db #51,#a4,#7a,#51,#7b,#fb,#51,#d8
	db #84,#51,#7d,#d9,#51,#ba,#25,#ee
	db #20,#51,#cb,#27,#f6,#00,#42,#17
	db #02,#c3,#cd,#86,#9e,#b8,#00,#33
	db #fe,#60,#30,#37,#fd,#26,#00,#c0
	db #52,#46,#23,#78,#1f,#05,#30,#03
	db #e6,#0f,#4f,#ea,#a2,#02,#ce,#ac
	db #05,#42,#0e,#22,#d9,#6f,#26,#2e
	db #09,#30,#01,#25,#fd,#c8,#91,#c9
	db #86,#bb,#07,#2e,#c9,#18,#f0,#07
	db #00,#01,#d6,#60,#28,#1a,#3d,#28
	db #49,#2e,#02,#1d,#02,#d2,#02,#24
	db #21,#02,#33,#02,#27,#11,#3d,#d9
	db #fd,#a0,#ac,#c9,#3e,#e5,#08,#4e
	db #08,#97,#38,#09,#24,#18,#aa,#0a
	db #ff,#73,#d9,#1e,#92,#69,#9c,#75
	db #91,#8c,#fd,#0d,#38,#1e,#00,#13
	db #c0,#77,#7b,#c2,#fa,#84,#00,#cb
	db #63,#28,#5d,#7e,#cb,#77,#28,#0c
	db #25,#16,#08,#23,#8f,#0b,#28,#05
	db #e5,#02,#87,#cb,#9a,#7b,#9b,#21
	db #d9,#92,#d9,#8c,#15,#bb,#00,#77
	db #36,#dd,#62,#7e,#8c,#05,#00,#23
	db #04,#18,#1b,#23,#c9,#1d,#23,#05
	db #16,#01,#cb,#6f,#28,#ec,#8f,#82
	db #24,#53,#18,#2a,#0f,#d6,#bb,#20
	db #36,#36,#00,#16,#16,#09,#18,#f5
	db #57,#18,#1e,#28,#f1,#1a,#20,#26
	db #08,#cb,#6b,#28,#22,#04,#7e,#9e
	db #82,#0e,#cb,#73,#28,#06,#ce,#f5
	db #18,#c1,#5c,#24,#85,#a1,#02,#38
	db #02,#3e,#5f,#e5,#87,#89,#50,#01
	db #0d,#22,#86,#09,#c1,#46,#46,#a8
	db #00,#cb,#2c,#cb,#1d,#09,#19,#fd
	db #48,#75,#90,#74,#18,#1b,#e1,#c9
	db #c0,#02,#07,#7b,#d9,#e6,#40,#98
	db #a0,#d9,#7b,#f6,#08,#18,#e6,#09
	db #57,#65,#10,#94,#ce,#0b,#e6,#03
	db #87,#c6,#f6,#80,#36,#88,#cb,#5b
	db #28,#09,#8c,#ec,#8d,#c3,#48,#18
	db #50,#62,#60,#78,#28,#19,#0b,#cb
	db #70,#e3,#61,#13,#e7,#85,#93,#88
	db #80,#48,#85,#f9,#e6,#08,#0e,#32
	db #91,#85,#f6,#89,#c2,#f2,#04,#4b
	db #87,#1d,#45,#a2,#93,#12,#53,#8a
	db #3e,#e5,#2a,#8f,#11,#8a,#c9,#4d
	db #44,#c7,#9a,#0c,#80,#31,#6f,#20
	db #72,#79,#fd,#71,#88,#97,#70,#1b
	db #91,#d2,#7b,#e1,#34,#f5,#c2,#9b
	db #85,#79,#75,#1f,#cb,#38,#1f,#02
	db #0a,#4f,#fb,#25,#03,#8f,#c4,#00
	db #88,#83,#c2,#1b,#88,#3a,#84,#20
	db #b7,#28,#2d,#3a,#89,#83,#5f,#33
	db #a8,#cf,#91,#b0,#33,#21,#17,#f8
	db #02,#51,#47,#fc,#88,#09,#f7,#ee
	db #80,#30,#23,#e5,#94,#b7,#39,#8e
	db #e1,#71,#64,#7e,#4c,#93,#d9,#4d
	db #93,#30,#ee,#0e,#18,#00,#0e,#4d
	db #0d,#8e,#0c,#da,#0b,#2f,#00,#0b
	db #8f,#0a,#f7,#09,#68,#09,#e1,#00
	db #08,#61,#08,#e9,#07,#77,#07,#0c
	db #00,#07,#a7,#06,#47,#06,#ed,#05
	db #98,#00,#05,#47,#05,#fc,#04,#b4
	db #04,#70,#00,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#00,#03,#53,#03,#24
	db #03,#f6,#02,#cc,#24,#02,#a4,#99
	db #11,#02,#5a,#02,#ea,#00,#18,#02
	db #fa,#01,#de,#01,#c3,#00,#01,#aa
	db #01,#92,#01,#7b,#01,#66,#00,#01
	db #52,#01,#3f,#01,#2d,#01,#1c,#00
	db #01,#0c,#01,#fd,#00,#ef,#00,#e1
	db #28,#00,#d5,#af,#00,#00,#be,#00
	db #b3,#00,#a9,#00,#9f,#00,#00,#96
	db #00,#8e,#00,#86,#00,#7f,#51,#00
	db #94,#89,#10,#6a,#00,#64,#00,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #00,#4b,#00,#47,#00,#43,#00,#3f
	db #01,#00,#3c,#00,#38,#00,#35,#00
	db #9f,#10,#2f,#00,#2d,#2c,#00,#2a
	db #ac,#48,#00,#c1,#24,#b0,#9c,#00
	db #20,#a4,#f7,#16,#1c,#00,#1b,#da
	db #6d,#f4,#96,#40,#00,#15,#00,#05
	db #14,#00,#13,#00,#12,#eb,#a0,#10
	db #00,#67,#00,#06,#f4,#d9,#01,#c0
	db #f6,#1e,#80,#5b,#d9,#dc,#08,#15
	db #1d,#ed,#51,#04,#d9,#ed,#49,#ed
	db #71,#04,#79,#90,#02,#59,#07,#32
	db #da,#86,#ed,#1a,#01,#1a,#ee,#f5
	db #f0,#1a,#7b,#08,#1a,#9d,#10,#87
	db #1a,#bd,#02,#1a,#de,#2b,#1a,#0f
	db #03,#1a,#77,#46,#1a,#83,#09,#1a
	db #dd,#61,#1a,#e0,#04,#f7,#1a,#78
	db #7c,#1a,#3d,#05,#1a,#de,#97,#1a
	db #0f,#0a,#1a,#77,#b2,#1a,#83,#06
	db #1a,#dd,#cd,#1a,#0c,#7c,#fe,#c0
	db #19,#7b,#07,#19,#bc,#e7,#34,#1e
	db #0b,#1a,#e7,#02,#88,#1a,#6f,#0c
	db #1a,#77,#1d,#1a,#01,#ff,#20,#06
	db #67,#bc,#58,#c8,#1e,#7c,#16,#0d
	db #20,#e1,#38,#88,#c9,#af,#b0,#c0
	db #87,#32,#5f,#84,#02,#b0,#87,#3d
	db #bc,#a4,#ee,#64,#a0,#66,#6e,#19
	db #3e,#3f,#c2,#84,#21,#06,#b9,#d4
	db #ee,#04,#23,#81,#11,#03,#07,#11
	db #db,#e1,#ae,#98,#db,#e2,#8b,#d9
	db #e5,#06,#69,#ec,#fc,#bd,#94,#a0
	db #97,#9a,#06,#2e,#a0,#06,#5c,#a6
	db #06,#5e,#84,#7d,#9d,#9f,#d3,#80
	db #a7,#93,#ed,#f0,#22,#83,#1f,#82
	db #7e,#e6,#cf,#ab,#2a,#1d,#08,#44
	db #ac,#82,#2a,#42,#22,#45,#d4,#02
	db #3f,#82,#87,#e8,#eb,#01,#07,#ab
	db #fd,#db,#d3,#f3,#b3,#8b,#b0,#22
	db #e8,#bc,#08,#96,#74,#22,#ae,#eb
	db #cd,#1b,#e1,#08,#ee,#82,#03,#40
	db #83,#98,#03,#92,#03,#e0,#cf,#0b
	db #aa,#46,#53,#fe,#9d,#9b,#c0,#21
	db #2e,#89,#44,#7e,#e0,#47,#5a,#23
	db #6c,#45,#12,#34,#10,#f9,#bd,#a3
	db #f0,#e2,#83,#f3,#86,#94,#83,#44
	db #87,#c6,#63,#95,#87,#9b,#08,#e5
	db #a2,#e4,#8a,#e3,#bf,#cb,#bc,#30
	db #b0,#eb,#be,#bd,#a0,#bd,#80,#cb
	db #80,#eb,#c0,#d6,#8e,#86,#36,#b6
	db #3e,#38,#81,#9f,#f0,#b6,#11,#ff
	db #a2,#f2,#d9,#8a,#a5,#28,#8c,#9a
	db #d8,#bf,#69,#8b,#a4,#84,#92,#8f
	db #8e,#49,#8d,#24,#e0,#92,#c7,#a8
	db #4e,#88,#b8,#b8,#d8,#e8,#03,#b7
	db #3e,#ea,#82,#96,#f1,#ad,#00,#00
	db #fd,#90,#53,#4b,#31,#12,#30,#00
	db #8a,#b3,#58,#d3,#8a,#00,#20,#8a
	db #7a,#8a,#7d,#8a,#1a,#8a,#e4,#09
	db #06,#c0,#80,#1c,#1b,#7f,#0e,#57
	db #8b,#99,#00,#8b,#b1,#8b,#f3,#8b
	db #35,#8c,#4c,#01,#8c,#8e,#8c,#d0
	db #8c,#e8,#8c,#11,#a6,#2a,#8d,#11
	db #9a,#54,#8d,#11,#7a,#7b,#8d,#11
	db #80,#99,#8d,#b9,#8d,#fb,#8d,#13
	db #00,#8e,#3c,#8e,#7e,#8e,#95,#8e
	db #c3,#07,#8e,#05,#8f,#1d,#8f,#23
	db #c2,#1c,#00,#47,#8f,#87,#8a,#91
	db #8a,#b4,#8a,#06,#e5,#8a,#24,#8b
	db #8e,#09,#11,#ff,#37,#90,#b5,#09
	db #11,#d7,#40,#00,#2b,#fa,#44,#2d
	db #01,#06,#2c,#01,#fa,#44,#2b,#01
	db #06,#2a,#01,#fa,#44,#29,#01,#06
	db #28,#01,#fa,#18,#27,#fa,#e3,#32
	db #00,#86,#2c,#2f,#fa,#2e,#24,#f4
	db #01,#2c,#f4,#01,#7a,#2b,#01,#56
	db #53,#61,#53,#03,#6b,#fa,#ff,#ff
	db #6d,#03,#53,#06,#03,#6c,#03,#71
	db #0b,#6b,#03,#b8,#0b,#6a,#dc,#03
	db #0b,#6e,#69,#03,#0b,#37,#68,#03
	db #0b,#18,#67,#03,#55,#45,#8b,#bd
	db #6f,#93,#6d,#2f,#01,#ab,#09,#01
	db #9f,#7b,#7e,#6f,#e2,#ac,#01,#6e
	db #81,#01,#ce,#79,#ce,#7f,#03,#d0
	db #6f,#ce,#75,#3a,#ce,#7d,#03,#79
	db #71,#17,#38,#67,#19,#e6,#03,#01
	db #f1,#17,#c0,#23,#c2,#48,#81,#02
	db #00,#da,#49,#d2,#3f,#da,#3f,#d2
	db #41,#00,#da,#41,#d2,#4f,#da,#4f
	db #d2,#49,#c0,#0f,#41,#c2,#ca,#6e
	db #3f,#87,#03,#5a,#75,#7e,#9b,#1e
	db #1a,#36,#83,#e9,#03,#77,#0b,#e5
	db #1d,#ae,#87,#03,#bc,#23,#d9,#73
	db #19,#07,#44,#9b,#d4,#44,#40,#9c
	db #d2,#01,#45,#da,#45,#d2,#47,#da
	db #47,#96,#1c,#68,#0b,#43,#c2,#ce
	db #47,#7e,#9a,#87,#59,#eb,#23,#82
	db #9a,#88,#c7,#f9,#fc,#30,#e3,#d3
	db #cf,#54,#c8,#c2,#42,#8c,#99,#95
	db #b0,#11,#37,#da,#37,#95,#c4,#9d
	db #6e,#03,#44,#9b,#82,#8e,#9b,#3f
	db #5a,#68,#66,#81,#00,#04,#d2,#6b
	db #d2,#6f,#d2,#65,#da,#07,#c4,#01
	db #c4,#02,#d0,#d9,#56,#0d,#42,#03
	db #65,#ce,#61,#ce,#5d,#11,#c7,#1f
	db #09,#71,#c2,#fc,#a5,#29,#67,#0b
	db #15,#c9,#6e,#01,#1d,#e9,#17,#9c
	db #05,#f0,#25,#61,#e5,#1b,#5c,#1b
	db #54,#11,#15,#19,#67,#ba,#5d,#13
	db #55,#c2,#38,#1f,#5b,#1f,#e2,#d6
	db #8b,#96,#1f,#d1,#7c,#aa,#28,#85
	db #3a,#ce,#8b,#03,#8f,#bf,#37,#7d
	db #17,#e2,#94,#c2,#4c,#e1,#89,#4d
	db #a4,#61,#4d,#07,#e6,#c2,#46,#6c
	db #98,#44,#8c,#73,#8c,#8e,#88,#e0
	db #69,#ce,#9c,#70,#6d,#0d,#06,#75
	db #d2,#7d,#d2,#78,#ae,#6a,#76,#10
	db #62,#c1,#9d,#ad,#9e,#be,#c7,#7b
	db #ce,#81,#03,#5e,#0b,#7a,#05,#89
	db #eb,#03,#0b,#cd,#6d,#80,#18,#7b
	db #a8,#03,#c8,#4e,#44,#ae,#0e,#43
	db #da,#43,#03,#07,#4b,#da,#4b,#03
	db #02,#3d,#c2,#6a,#fa,#33,#79,#47
	db #63,#d2,#69,#73,#0a,#72,#67,#7e
	db #a1,#71,#0c,#71,#d2,#7b,#05,#93
	db #7f,#71,#16,#c4,#7b,#c2,#33,#7a
	db #81,#07,#52,#be,#03,#35,#05,#83
	db #03,#d7,#0b,#9c,#ac,#6b,#8b,#03
	db #ad,#11,#8b,#8a,#03,#82,#c2,#3c
	db #85,#30,#3d,#da,#4b,#3d,#83,#12
	db #87,#dc,#89,#64,#89,#b1,#6a,#5a
	db #63,#6c,#78,#a6,#64,#7b,#83,#0c
	db #23,#79,#83,#13,#71,#dd,#dc,#8d
	db #93,#8d,#cb,#ff,#cf,#5b,#ff,#00
	db #ff,#80,#00,#00,#00,#00,#00,#00
;
.init_music		;	org #a02f - added by Megachur
;
	ld de,music_data	; #8a00
	jp real_init_music
;
.music_info
	db "Turrican 2 - Level 2 - The Great Bath (2015)(Epyteor)(SuTeKH)",0
	db "StarkOs",0

	read "music_end.asm"
