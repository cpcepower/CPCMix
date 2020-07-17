; Music of Turrican 2 - Level 1 - The Desert Rocks (2015)(Sutekh)(Epyteor)(STarkOs)
; Ripped by Megachur the 12/09/2015
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TU2L1TDR.BIN"
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
	db #00,#22,#8a,#2b,#8a,#fd,#8a,#06
	db #8b,#1e,#8a,#24,#8a,#43,#8a,#03
	db #8b,#04,#c0,#00,#00,#05,#c0,#00
	db #00,#3b,#7f,#03,#7f,#0d,#6e,#4e
	db #7f,#0d,#3e,#d9,#8d,#f1,#8d,#f2
	db #8d,#21,#8e,#63,#8e,#77,#8e,#a4
	db #8e,#f1,#8d,#24,#8f,#55,#8f,#f1
	db #8d,#77,#8e,#d5,#8f,#4f,#90,#6f
	db #90,#90,#90,#0a,#91,#1b,#91,#d5
	db #8f,#2b,#91,#51,#91,#72,#91,#ec
	db #91,#12,#92,#a4,#8e,#3e,#92,#24
	db #8f,#55,#8f,#3e,#92,#77,#8e,#a4
	db #8e,#63,#8e,#24,#8f,#55,#8f,#63
	db #8e,#77,#8e,#4a,#92,#c4,#92,#e4
	db #92,#05,#93,#7f,#93,#96,#93,#d5
	db #8f,#ac,#93,#cf,#93,#90,#90,#f1
	db #93,#14,#94,#d5,#8f,#36,#94,#b4
	db #94,#72,#91,#35,#95,#b6,#95,#37
	db #96,#4d,#96,#54,#96,#74,#96,#f1
	db #8d,#f1,#8d,#74,#96,#86,#96,#91
	db #96,#9b,#96,#ad,#96,#b8,#96,#c2
	db #96,#d4,#96,#df,#96,#e9,#96,#0d
	db #97,#18,#97,#d5,#8f,#86,#96,#91
	db #96,#22,#97,#ad,#96,#b8,#96,#9c
	db #97,#d4,#96,#df,#96,#16,#98,#0d
	db #97,#18,#97,#90,#98,#f1,#8d,#10
	db #99,#41,#99,#c1,#99,#e1,#99,#a4
	db #8e,#3e,#92,#24,#8f,#55,#8f,#63
	db #8e,#77,#8e,#d9,#8d,#f1,#8d,#f2
	db #8d,#21,#8e,#63,#8e,#77,#8e,#0c
	db #9a,#f1,#8d,#77,#8e,#fe,#4c,#9a
	db #fa,#4c,#9a,#3c,#4c,#9a,#24,#8b
	db #2e,#8b,#41,#8b,#54,#8b,#a4,#8b
	db #f4,#8b,#44,#8c,#50,#8c,#a0,#8c
	db #b6,#8c,#c1,#8c,#d7,#8c,#1a,#8d
	db #3f,#8d,#96,#8d,#2b,#8b,#2e,#8b
	db #ff,#37,#00,#00,#00,#00,#2b,#8b
	db #41,#8b,#00,#b7,#00,#1f,#67,#c3
	db #01,#1e,#60,#fa,#01,#1d,#60,#a4
	db #02,#2b,#8b,#54,#8b,#00,#b7,#00
	db #1f,#67,#d5,#00,#1e,#65,#52,#01
	db #1d,#63,#aa,#01,#2b,#8b,#a4,#8b
	db #00,#b7,#00,#0e,#2f,#05,#2e,#09
	db #0e,#2e,#05,#2d,#09,#0d,#2d,#05
	db #2c,#09,#0c,#2c,#05,#2b,#09,#0b
	db #2b,#05,#2a,#09,#0a,#2a,#05,#29
	db #09,#09,#29,#05,#28,#09,#08,#28
	db #05,#27,#09,#07,#27,#05,#26,#09
	db #06,#26,#05,#25,#09,#05,#25,#05
	db #24,#09,#04,#24,#05,#23,#09,#03
	db #23,#05,#22,#09,#02,#22,#05,#21
	db #09,#01,#21,#05,#2b,#8b,#f4,#8b
	db #00,#b7,#00,#0e,#2f,#03,#2e,#08
	db #0e,#2e,#03,#2d,#08,#0d,#2d,#03
	db #2c,#08,#0c,#2c,#03,#2b,#08,#0b
	db #2b,#03,#2a,#08,#0a,#2a,#03,#29
	db #08,#09,#29,#03,#28,#08,#08,#28
	db #03,#27,#08,#07,#27,#03,#26,#08
	db #06,#26,#03,#25,#08,#05,#25,#03
	db #24,#08,#04,#24,#03,#23,#08,#03
	db #23,#03,#22,#08,#02,#22,#03,#21
	db #08,#01,#21,#03,#2b,#8b,#44,#8c
	db #00,#b7,#00,#0e,#2f,#04,#2e,#07
	db #0e,#2e,#04,#2d,#07,#0d,#2d,#04
	db #2c,#07,#0c,#2c,#04,#2b,#07,#0b
	db #2b,#04,#2a,#07,#0a,#2a,#04,#29
	db #07,#09,#29,#04,#28,#07,#08,#28
	db #04,#27,#07,#07,#27,#04,#26,#07
	db #06,#26,#04,#25,#07,#05,#25,#04
	db #24,#07,#04,#24,#04,#23,#07,#03
	db #23,#04,#22,#07,#02,#22,#04,#21
	db #07,#01,#21,#04,#2b,#8b,#50,#8c
	db #00,#b7,#00,#0f,#0f,#0e,#0d,#0c
	db #2b,#8b,#a0,#8c,#00,#b7,#00,#0e
	db #2f,#03,#2e,#07,#0e,#2e,#03,#2d
	db #07,#0d,#2d,#03,#2c,#07,#0c,#2c
	db #03,#2b,#07,#0b,#2b,#03,#2a,#07
	db #0a,#2a,#03,#29,#07,#09,#29,#03
	db #28,#07,#08,#28,#03,#27,#07,#07
	db #27,#03,#26,#07,#06,#26,#03,#25
	db #07,#05,#25,#03,#24,#07,#04,#24
	db #03,#23,#07,#03,#23,#03,#22,#07
	db #02,#22,#03,#21,#07,#01,#21,#03
	db #b3,#8c,#b6,#8c,#00,#37,#00,#1f
	db #67,#c3,#01,#1e,#60,#fa,#01,#1d
	db #60,#a4,#02,#82,#16,#06,#be,#8c
	db #c1,#8c,#00,#37,#00,#00,#82,#16
	db #06,#d4,#8c,#d7,#8c,#00,#37,#00
	db #1f,#67,#d5,#00,#1e,#65,#52,#01
	db #1d,#63,#aa,#01,#82,#16,#06,#2b
	db #8b,#1a,#8d,#00,#b7,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#2b,#8b,#3f,#8d,#00,#b7
	db #00,#0f,#0f,#2e,#0c,#2e,#0c,#0d
	db #0d,#2c,#0c,#2c,#0c,#0b,#0b,#2a
	db #0c,#29,#0c,#08,#07,#26,#0c,#25
	db #0c,#04,#03,#22,#0c,#21,#0c,#2b
	db #8b,#96,#8d,#00,#b7,#00,#1f,#67
	db #d5,#00,#1e,#65,#52,#01,#1d,#63
	db #aa,#01,#1f,#67,#d5,#00,#1e,#65
	db #52,#01,#1d,#67,#d5,#00,#1c,#65
	db #52,#01,#1b,#63,#aa,#01,#1d,#67
	db #d5,#00,#1c,#65,#52,#01,#1b,#67
	db #d5,#00,#1a,#65,#52,#01,#19,#63
	db #aa,#01,#1b,#67,#d5,#00,#1a,#65
	db #52,#01,#19,#67,#d5,#00,#18,#65
	db #52,#01,#17,#63,#aa,#01,#19,#67
	db #d5,#00,#18,#65,#52,#01,#2b,#8b
	db #d9,#8d,#02,#b7,#00,#0f,#0f,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#0d
	db #0d,#0c,#0c,#0b,#0b,#0a,#0a,#09
	db #09,#0b,#0b,#0a,#0a,#09,#09,#08
	db #08,#07,#07,#09,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#05
	db #05,#04,#04,#03,#03,#02,#02,#01
	db #01,#48,#81,#01,#da,#49,#da,#49
	db #da,#49,#da,#49,#da,#49,#da,#49
	db #da,#49,#d2,#48,#80,#02,#ce,#49
	db #49,#c2,#d4,#62,#81,#03,#ce,#63
	db #ce,#63,#d2,#66,#80,#04,#ce,#67
	db #d2,#5e,#80,#05,#d2,#5f,#d6,#63
	db #da,#62,#80,#03,#ce,#63,#ce,#63
	db #d2,#66,#80,#04,#ce,#67,#d2,#5e
	db #80,#05,#d2,#5f,#d2,#5f,#ce,#63
	db #c2,#48,#81,#01,#d2,#48,#80,#02
	db #d2,#48,#80,#01,#d2,#48,#80,#02
	db #d2,#48,#80,#01,#d2,#48,#80,#02
	db #d2,#48,#80,#01,#d2,#48,#80,#02
	db #d2,#48,#80,#01,#d2,#48,#80,#02
	db #d2,#48,#80,#01,#d2,#48,#80,#02
	db #d2,#48,#80,#01,#d2,#48,#80,#02
	db #d2,#48,#80,#01,#d2,#48,#80,#02
	db #ce,#49,#49,#c0,#2f,#8c,#85,#06
	db #85,#7b,#85,#7b,#75,#7b,#75,#6d
	db #75,#6d,#63,#6d,#63,#5d,#55,#d4
	db #66,#81,#07,#ce,#67,#ce,#67,#d2
	db #62,#80,#05,#ce,#63,#d2,#5f,#d2
	db #5f,#d2,#5f,#ce,#63,#da,#66,#80
	db #07,#ce,#67,#ce,#67,#d2,#62,#80
	db #05,#ce,#63,#d2,#5f,#d2,#5f,#d2
	db #5f,#ce,#63,#c2,#48,#81,#08,#ce
	db #60,#80,#09,#61,#48,#80,#02,#ce
	db #48,#80,#09,#61,#48,#80,#08,#ce
	db #60,#80,#09,#61,#48,#80,#02,#ce
	db #48,#80,#09,#61,#48,#80,#08,#ce
	db #60,#80,#09,#61,#48,#80,#02,#ce
	db #48,#80,#09,#61,#48,#80,#08,#ce
	db #60,#80,#09,#61,#48,#80,#02,#ce
	db #48,#80,#09,#61,#48,#80,#08,#ce
	db #60,#80,#09,#61,#48,#80,#02,#ce
	db #48,#80,#09,#61,#48,#80,#08,#ce
	db #60,#80,#09,#61,#48,#80,#02,#ce
	db #48,#80,#09,#61,#48,#80,#08,#ce
	db #60,#80,#09,#61,#48,#80,#02,#ce
	db #48,#80,#09,#61,#48,#80,#08,#ce
	db #60,#80,#09,#61,#48,#80,#02,#ce
	db #48,#80,#0a,#61,#d4,#62,#81,#03
	db #ce,#63,#ce,#63,#d2,#66,#80,#04
	db #ce,#67,#d2,#5e,#80,#05,#d2,#5f
	db #d2,#5f,#ce,#63,#da,#62,#80,#03
	db #ce,#63,#ce,#63,#d2,#66,#80,#04
	db #ce,#67,#d2,#5e,#80,#05,#d2,#5f
	db #d2,#5f,#ce,#63,#c2,#42,#81,#08
	db #ce,#5a,#80,#09,#5b,#48,#80,#02
	db #ce,#42,#80,#09,#5b,#42,#80,#08
	db #ce,#5a,#80,#09,#5b,#48,#80,#02
	db #ce,#42,#80,#09,#5b,#42,#80,#08
	db #ce,#5a,#80,#09,#5b,#48,#80,#02
	db #ce,#42,#80,#09,#5b,#42,#80,#08
	db #ce,#5a,#80,#09,#5b,#48,#80,#02
	db #ce,#42,#80,#09,#5b,#42,#80,#08
	db #ce,#5a,#80,#09,#5b,#48,#80,#02
	db #ce,#42,#80,#09,#5b,#42,#80,#08
	db #ce,#5a,#80,#09,#5b,#48,#80,#02
	db #ce,#42,#80,#09,#5b,#42,#80,#08
	db #ce,#5a,#80,#09,#5b,#48,#80,#02
	db #ce,#42,#80,#09,#5b,#42,#80,#08
	db #ce,#5a,#80,#09,#5b,#48,#80,#02
	db #ce,#42,#80,#0a,#5b,#4c,#81,#08
	db #ce,#64,#80,#09,#ce,#48,#80,#02
	db #ce,#64,#80,#09,#ce,#4c,#80,#08
	db #ce,#65,#ce,#48,#80,#02,#ce,#64
	db #80,#09,#ce,#4c,#80,#08,#ce,#64
	db #80,#09,#ce,#48,#80,#02,#ce,#64
	db #80,#08,#ce,#4c,#80,#09,#ce,#64
	db #80,#08,#ce,#48,#80,#02,#ce,#64
	db #80,#08,#ce,#4d,#ce,#64,#80,#09
	db #ce,#48,#80,#02,#ce,#64,#80,#09
	db #ce,#4c,#80,#08,#ce,#65,#ce,#48
	db #80,#02,#ce,#64,#80,#09,#ce,#4c
	db #80,#08,#ce,#64,#80,#09,#ce,#48
	db #80,#02,#ce,#64,#80,#08,#ce,#4c
	db #80,#09,#ce,#64,#80,#08,#ce,#48
	db #80,#02,#ce,#64,#80,#08,#c2,#da
	db #66,#89,#0b,#ce,#71,#ce,#75,#d2
	db #77,#ce,#75,#d2,#71,#d2,#67,#e6
	db #67,#ce,#71,#ce,#75,#d2,#77,#ce
	db #75,#d2,#71,#d2,#67,#d6,#71,#d4
	db #66,#81,#0b,#ce,#71,#ce,#75,#d2
	db #77,#ce,#75,#d2,#71,#d2,#67,#e6
	db #67,#ce,#71,#ce,#75,#d2,#77,#ce
	db #75,#d2,#71,#d2,#67,#d6,#71,#c2
	db #4e,#81,#08,#ce,#66,#80,#09,#ce
	db #48,#80,#02,#ce,#66,#80,#09,#ce
	db #4e,#80,#08,#ce,#67,#ce,#48,#80
	db #02,#ce,#66,#80,#09,#ce,#4e,#80
	db #08,#ce,#66,#80,#09,#ce,#48,#80
	db #02,#ce,#66,#80,#08,#ce,#4e,#80
	db #09,#ce,#66,#80,#08,#ce,#48,#80
	db #02,#ce,#66,#80,#08,#ce,#4d,#ce
	db #64,#80,#09,#ce,#48,#80,#02,#ce
	db #64,#80,#09,#ce,#4c,#80,#08,#ce
	db #65,#ce,#48,#80,#02,#ce,#64,#80
	db #09,#ce,#4c,#80,#08,#ce,#64,#80
	db #09,#ce,#48,#80,#02,#ce,#64,#80
	db #08,#ce,#4c,#80,#09,#ce,#64,#80
	db #08,#ce,#48,#80,#02,#ce,#64,#80
	db #08,#c2,#d2,#68,#89,#0b,#e2,#6d
	db #ce,#69,#ce,#67,#d6,#63,#d6,#69
	db #d2,#67,#c2,#68,#81,#0b,#e2,#6d
	db #ce,#69,#ce,#67,#d6,#63,#d6,#69
	db #d2,#67,#c2,#44,#81,#0c,#ce,#41
	db #d2,#45,#d2,#41,#d2,#45,#d2,#41
	db #d2,#45,#d2,#41,#ce,#45,#d2,#45
	db #ce,#41,#d2,#45,#d2,#41,#d2,#45
	db #d2,#41,#d2,#45,#d2,#41,#ce,#45
	db #c2,#d4,#66,#80,#0b,#ce,#71,#ce
	db #75,#d2,#77,#ce,#75,#d2,#71,#d2
	db #67,#e6,#67,#ce,#71,#ce,#75,#d2
	db #77,#ce,#75,#d2,#71,#d2,#7f,#d6
	db #71,#c2,#4e,#81,#08,#ce,#66,#80
	db #09,#ce,#48,#80,#02,#ce,#66,#80
	db #09,#ce,#4e,#80,#08,#ce,#67,#ce
	db #48,#80,#02,#ce,#66,#80,#09,#ce
	db #4e,#80,#08,#ce,#66,#80,#09,#ce
	db #48,#80,#02,#ce,#66,#80,#08,#ce
	db #4e,#80,#09,#ce,#66,#80,#08,#ce
	db #48,#80,#02,#ce,#66,#80,#08,#ce
	db #4d,#ce,#64,#80,#09,#ce,#48,#80
	db #02,#ce,#64,#80,#09,#ce,#4c,#80
	db #08,#ce,#65,#ce,#48,#80,#02,#ce
	db #64,#80,#09,#ce,#4c,#80,#08,#ce
	db #64,#80,#09,#ce,#48,#80,#02,#ce
	db #64,#80,#08,#ce,#4c,#80,#09,#ce
	db #64,#80,#08,#ce,#48,#80,#02,#ce
	db #64,#80,#0a,#65,#46,#81,#0c,#ce
	db #43,#d2,#47,#d2,#43,#d2,#47,#d2
	db #43,#d2,#47,#d2,#43,#ce,#47,#d2
	db #45,#ce,#41,#d2,#45,#d2,#41,#d2
	db #45,#d2,#41,#d2,#45,#d2,#41,#ce
	db #45,#c2,#7a,#81,#0b,#ea,#7f,#d2
	db #81,#ce,#7f,#d2,#7b,#d2,#77,#ce
	db #7f,#ce,#77,#ce,#71,#ce,#67,#d6
	db #58,#85,#06,#5f,#67,#71,#5f,#67
	db #71,#77,#7f,#77,#71,#67,#77,#71
	db #67,#5f,#71,#67,#5f,#59,#c0,#37
	db #8c,#85,#06,#85,#7b,#75,#85,#7b
	db #75,#6d,#3e,#81,#08,#ce,#56,#80
	db #09,#ce,#48,#80,#02,#ce,#56,#80
	db #09,#ce,#3e,#80,#08,#ce,#57,#ce
	db #18,#80,#02,#ce,#56,#80,#09,#ce
	db #3e,#80,#08,#ce,#56,#80,#09,#ce
	db #48,#80,#02,#ce,#56,#80,#08,#ce
	db #3e,#80,#09,#ce,#56,#80,#08,#ce
	db #48,#80,#02,#ce,#56,#80,#08,#ce
	db #3f,#ce,#56,#80,#09,#ce,#48,#80
	db #02,#ce,#56,#80,#09,#ce,#3e,#80
	db #08,#ce,#57,#ce,#48,#80,#02,#ce
	db #56,#80,#09,#ce,#3e,#80,#08,#ce
	db #56,#80,#09,#ce,#48,#80,#02,#ce
	db #56,#80,#08,#ce,#3e,#80,#09,#ce
	db #56,#80,#08,#ce,#48,#80,#02,#ce
	db #56,#80,#08,#c2,#da,#70,#89,#0b
	db #ce,#7b,#ce,#7f,#d2,#81,#ce,#7f
	db #d2,#7b,#d2,#71,#e6,#71,#ce,#7b
	db #ce,#7f,#d2,#81,#ce,#7f,#d2,#7b
	db #d2,#71,#d6,#7b,#d4,#70,#81,#0b
	db #ce,#7b,#ce,#7f,#d2,#81,#ce,#7f
	db #d2,#7b,#d2,#71,#e6,#71,#ce,#7b
	db #ce,#7f,#d2,#81,#ce,#7f,#d2,#7b
	db #d2,#71,#d6,#7b,#c2,#40,#81,#08
	db #ce,#58,#80,#09,#ce,#48,#80,#02
	db #ce,#58,#80,#09,#ce,#40,#80,#08
	db #ce,#59,#ce,#48,#80,#02,#ce,#58
	db #80,#09,#ce,#40,#80,#08,#ce,#58
	db #80,#09,#ce,#48,#80,#02,#ce,#58
	db #80,#08,#ce,#40,#80,#09,#ce,#58
	db #80,#08,#ce,#48,#80,#02,#ce,#58
	db #80,#08,#ce,#3f,#ce,#56,#80,#09
	db #ce,#48,#80,#02,#ce,#56,#80,#09
	db #ce,#3e,#80,#08,#ce,#57,#ce,#48
	db #80,#02,#ce,#56,#80,#09,#ce,#3e
	db #80,#08,#ce,#56,#80,#09,#ce,#48
	db #80,#02,#ce,#56,#80,#08,#ce,#3e
	db #80,#09,#ce,#56,#80,#08,#ce,#48
	db #80,#02,#ce,#56,#80,#08,#c2,#d2
	db #72,#89,#0b,#e2,#77,#ce,#73,#ce
	db #71,#d6,#6d,#d6,#73,#d2,#73,#ce
	db #71,#ce,#6d,#ce,#71,#c2,#72,#81
	db #0b,#e2,#77,#ce,#73,#ce,#71,#d6
	db #6d,#d6,#73,#d2,#73,#ce,#71,#ce
	db #6d,#ce,#71,#c2,#d0,#70,#81,#0b
	db #d2,#71,#d2,#71,#d2,#71,#d2,#71
	db #d2,#71,#d2,#71,#d2,#71,#d2,#71
	db #d2,#71,#d2,#71,#d2,#71,#d2,#71
	db #d2,#71,#d2,#71,#d2,#71,#c2,#88
	db #81,#0b,#d2,#7f,#d2,#89,#d2,#7f
	db #d2,#85,#d2,#7f,#d2,#85,#d2,#7f
	db #d2,#83,#d2,#7b,#d2,#83,#d2,#7b
	db #d2,#85,#d2,#7f,#d2,#85,#d2,#7f
	db #c2,#d0,#72,#81,#0b,#d2,#73,#d2
	db #73,#d2,#73,#d2,#73,#d2,#73,#d2
	db #73,#d2,#73,#d2,#71,#d2,#71,#d2
	db #71,#d2,#71,#d2,#71,#d2,#71,#d2
	db #71,#d2,#71,#c2,#80,#81,#0b,#d2
	db #7f,#d2,#7b,#d2,#7f,#d2,#81,#d2
	db #85,#d2,#81,#d2,#7f,#d2,#81,#d2
	db #7f,#d2,#7b,#d2,#85,#d2,#81,#d2
	db #7f,#d2,#7b,#d2,#79,#c2,#d0,#70
	db #81,#0b,#70,#03,#70,#05,#70,#07
	db #70,#01,#70,#03,#70,#05,#70,#07
	db #70,#01,#70,#03,#70,#05,#70,#07
	db #70,#01,#70,#03,#70,#05,#70,#07
	db #70,#01,#70,#03,#70,#05,#70,#07
	db #70,#01,#70,#03,#70,#05,#70,#07
	db #70,#01,#70,#03,#70,#05,#70,#07
	db #70,#01,#70,#03,#70,#05,#70,#07
	db #70,#01,#70,#03,#70,#05,#70,#07
	db #70,#01,#70,#03,#70,#05,#70,#07
	db #70,#01,#70,#03,#70,#05,#70,#07
	db #70,#01,#70,#03,#70,#05,#70,#07
	db #70,#01,#70,#03,#70,#05,#70,#07
	db #70,#01,#70,#03,#70,#05,#70,#07
	db #70,#01,#70,#03,#70,#05,#70,#07
	db #70,#01,#70,#03,#88,#81,#0b,#88
	db #03,#88,#05,#88,#07,#7e,#01,#7e
	db #03,#7e,#05,#7e,#07,#88,#01,#88
	db #03,#88,#05,#88,#07,#7e,#01,#7e
	db #03,#7e,#05,#7e,#07,#84,#01,#84
	db #03,#84,#05,#84,#07,#7e,#01,#7e
	db #03,#7e,#05,#7e,#07,#84,#01,#84
	db #03,#84,#05,#84,#07,#7e,#01,#7e
	db #03,#7e,#05,#7e,#07,#82,#01,#82
	db #03,#82,#05,#82,#07,#7a,#01,#7a
	db #03,#7a,#05,#7a,#07,#82,#01,#82
	db #03,#82,#05,#82,#07,#7a,#01,#7a
	db #03,#7a,#05,#7a,#07,#84,#01,#84
	db #03,#84,#05,#84,#07,#7e,#01,#7e
	db #03,#7e,#05,#7e,#07,#84,#01,#84
	db #03,#84,#05,#84,#07,#7e,#01,#7e
	db #03,#7e,#05,#7e,#07,#70,#85,#0b
	db #70,#07,#72,#01,#72,#03,#72,#05
	db #72,#07,#72,#01,#72,#03,#72,#05
	db #72,#07,#72,#01,#72,#03,#72,#05
	db #72,#07,#72,#01,#72,#03,#72,#05
	db #72,#07,#72,#01,#72,#03,#72,#05
	db #72,#07,#72,#01,#72,#03,#72,#05
	db #72,#07,#72,#01,#72,#03,#72,#05
	db #72,#07,#72,#01,#72,#03,#72,#05
	db #72,#07,#70,#01,#70,#03,#70,#05
	db #70,#07,#70,#01,#70,#03,#70,#05
	db #70,#07,#70,#01,#70,#03,#70,#05
	db #70,#07,#70,#01,#70,#03,#70,#05
	db #70,#07,#70,#01,#70,#03,#70,#05
	db #70,#07,#70,#01,#70,#03,#70,#05
	db #70,#07,#70,#01,#70,#03,#70,#05
	db #70,#07,#70,#01,#70,#03,#80,#81
	db #0b,#80,#03,#80,#05,#80,#07,#7e
	db #01,#7e,#03,#7e,#05,#7e,#07,#7a
	db #01,#7a,#03,#7a,#05,#7a,#07,#7e
	db #01,#7e,#03,#7e,#05,#7e,#07,#80
	db #01,#80,#03,#80,#05,#80,#07,#84
	db #01,#84,#03,#84,#05,#84,#07,#80
	db #01,#80,#03,#80,#05,#80,#07,#7e
	db #01,#7e,#03,#7e,#05,#7e,#07,#80
	db #01,#80,#03,#80,#05,#80,#07,#7e
	db #01,#7e,#03,#7e,#05,#7e,#07,#7a
	db #01,#7a,#03,#7a,#05,#7a,#07,#84
	db #01,#84,#03,#84,#05,#84,#07,#80
	db #01,#80,#03,#80,#05,#80,#07,#7e
	db #01,#7e,#03,#7e,#05,#7e,#07,#7a
	db #01,#7a,#03,#7a,#05,#7a,#07,#78
	db #01,#78,#03,#78,#05,#78,#07,#48
	db #81,#01,#da,#49,#d6,#49,#49,#49
	db #da,#49,#da,#4c,#80,#08,#da,#4d
	db #d6,#4d,#4d,#4d,#c2,#70,#85,#0b
	db #70,#07,#ca,#c2,#48,#81,#02,#d0
	db #49,#49,#ce,#49,#ce,#48,#80,#0d
	db #d8,#48,#80,#02,#ec,#49,#d0,#49
	db #49,#ce,#49,#ce,#48,#80,#0d,#d8
	db #48,#80,#02,#c2,#4c,#81,#08,#da
	db #4d,#da,#4d,#da,#4d,#da,#4d,#da
	db #4d,#da,#4d,#da,#4d,#c2,#f4,#58
	db #81,#0e,#de,#69,#f6,#5f,#de,#67
	db #c2,#58,#81,#0e,#fa,#67,#da,#5f
	db #fa,#63,#c2,#4e,#81,#08,#da,#4f
	db #da,#4f,#da,#4f,#da,#4f,#da,#4f
	db #da,#4f,#da,#4f,#c2,#f4,#68,#80
	db #0e,#de,#71,#f6,#63,#de,#69,#c2
	db #68,#81,#0e,#fa,#6d,#da,#63,#fa
	db #67,#c2,#4c,#81,#08,#da,#4d,#da
	db #4d,#da,#4d,#da,#49,#da,#49,#da
	db #49,#da,#49,#c2,#f4,#5e,#80,#0e
	db #de,#69,#f6,#69,#de,#63,#c2,#5e
	db #81,#0e,#fa,#67,#da,#5d,#fa,#67
	db #c2,#44,#81,#08,#da,#45,#da,#45
	db #da,#45,#da,#4d,#da,#4d,#da,#49
	db #ce,#60,#80,#09,#ce,#49,#ce,#61
	db #ce,#48,#80,#08,#ce,#61,#ce,#48
	db #80,#02,#ce,#49,#49,#f4,#58,#80
	db #0e,#de,#5f,#e6,#69,#d2,#63,#c2
	db #5e,#81,#0e,#fa,#5d,#da,#67,#e6
	db #67,#c2,#4e,#81,#08,#ce,#66,#80
	db #09,#ce,#48,#80,#02,#ce,#66,#80
	db #09,#ce,#4e,#80,#08,#ce,#67,#ce
	db #48,#80,#02,#ce,#66,#80,#09,#ce
	db #4e,#80,#08,#ce,#66,#80,#09,#ce
	db #48,#80,#02,#ce,#66,#80,#08,#ce
	db #4e,#80,#09,#ce,#66,#80,#08,#ce
	db #48,#80,#02,#ce,#66,#80,#08,#ce
	db #4f,#ce,#66,#80,#09,#ce,#48,#80
	db #02,#ce,#66,#80,#09,#ce,#4e,#80
	db #08,#ce,#67,#ce,#48,#80,#02,#ce
	db #66,#80,#09,#ce,#4e,#80,#08,#ce
	db #66,#80,#09,#ce,#48,#80,#02,#ce
	db #66,#80,#08,#ce,#4e,#80,#09,#ce
	db #66,#80,#08,#ce,#48,#80,#02,#ce
	db #66,#80,#08,#c2,#4c,#81,#08,#ce
	db #64,#80,#09,#ce,#48,#80,#02,#ce
	db #64,#80,#09,#ce,#4c,#80,#08,#ce
	db #65,#ce,#48,#80,#02,#ce,#64,#80
	db #09,#ce,#4c,#80,#08,#ce,#64,#80
	db #09,#ce,#48,#80,#02,#ce,#64,#80
	db #08,#ce,#4c,#80,#09,#ce,#64,#80
	db #08,#ce,#48,#80,#02,#ce,#64,#80
	db #08,#ce,#49,#ce,#60,#80,#09,#ce
	db #48,#80,#02,#ce,#60,#80,#09,#ce
	db #48,#80,#08,#ce,#61,#ce,#48,#80
	db #02,#ce,#60,#80,#09,#ce,#48,#80
	db #08,#ce,#60,#80,#09,#ce,#48,#80
	db #02,#ce,#60,#80,#08,#ce,#48,#80
	db #09,#ce,#60,#80,#08,#ce,#48,#80
	db #02,#ce,#60,#80,#08,#c2,#44,#81
	db #08,#ce,#5c,#80,#09,#ce,#48,#80
	db #02,#ce,#5c,#80,#09,#ce,#44,#80
	db #08,#ce,#5d,#ce,#48,#80,#02,#ce
	db #5c,#80,#09,#ce,#44,#80,#08,#ce
	db #5c,#80,#09,#ce,#48,#80,#02,#ce
	db #5c,#80,#08,#ce,#44,#80,#09,#ce
	db #5c,#80,#08,#ce,#48,#80,#02,#ce
	db #5c,#80,#08,#ce,#4d,#ce,#64,#80
	db #09,#ce,#48,#80,#02,#ce,#64,#80
	db #09,#ce,#4c,#80,#08,#ce,#65,#ce
	db #48,#80,#02,#ce,#64,#80,#09,#ce
	db #48,#80,#08,#ce,#60,#80,#09,#ce
	db #48,#80,#02,#ce,#60,#80,#08,#ce
	db #48,#80,#09,#ce,#60,#80,#08,#ce
	db #48,#80,#02,#ce,#60,#80,#0a,#61
	db #44,#81,#08,#ce,#5c,#80,#09,#5d
	db #48,#80,#02,#ce,#44,#80,#09,#5d
	db #44,#80,#08,#ce,#5c,#80,#09,#5d
	db #48,#80,#02,#ce,#44,#80,#09,#5d
	db #44,#80,#08,#ce,#5c,#80,#09,#5d
	db #48,#80,#02,#ce,#44,#80,#09,#5d
	db #44,#80,#08,#ce,#5c,#80,#09,#5d
	db #48,#80,#02,#ce,#44,#80,#09,#5d
	db #44,#80,#08,#ce,#5c,#80,#09,#5d
	db #48,#80,#02,#ce,#44,#80,#09,#5d
	db #44,#80,#08,#ce,#5c,#80,#09,#5d
	db #48,#80,#02,#ce,#44,#80,#09,#5d
	db #44,#80,#08,#ce,#5c,#80,#09,#5d
	db #48,#80,#02,#ce,#44,#80,#09,#5d
	db #44,#80,#08,#ce,#5c,#80,#09,#5d
	db #48,#80,#02,#ce,#44,#80,#0a,#5d
	db #d4,#5e,#81,#03,#ce,#5f,#ce,#5f
	db #d2,#62,#80,#04,#ce,#63,#d2,#5a
	db #80,#05,#d2,#5b,#d2,#5b,#ce,#5f
	db #da,#5e,#80,#03,#ce,#5f,#ce,#5f
	db #d2,#62,#80,#04,#ce,#63,#d2,#5a
	db #80,#05,#d2,#5b,#d2,#5b,#ce,#5f
	db #c2,#3e,#81,#08,#ce,#56,#80,#09
	db #57,#48,#80,#02,#ce,#3e,#80,#09
	db #57,#3e,#80,#08,#ce,#56,#80,#09
	db #57,#48,#80,#02,#ce,#3e,#80,#09
	db #57,#3e,#80,#08,#ce,#56,#80,#09
	db #57,#48,#80,#02,#ce,#3e,#80,#09
	db #57,#3e,#80,#08,#ce,#56,#80,#09
	db #57,#48,#80,#02,#ce,#3e,#80,#09
	db #57,#3e,#80,#08,#ce,#56,#80,#09
	db #57,#48,#80,#02,#ce,#3e,#80,#09
	db #57,#3e,#80,#08,#ce,#56,#80,#09
	db #57,#48,#80,#02,#ce,#3e,#80,#09
	db #57,#3e,#80,#08,#ce,#56,#80,#09
	db #57,#48,#80,#02,#ce,#3e,#80,#09
	db #57,#3e,#80,#08,#ce,#56,#80,#09
	db #57,#48,#80,#02,#ce,#3e,#80,#0a
	db #57,#c0,#1f,#48,#81,#02,#d0,#49
	db #d0,#49,#ce,#48,#80,#0d,#d6,#48
	db #80,#02,#49,#49,#d0,#49,#d0,#49
	db #ce,#48,#80,#0d,#d6,#48,#80,#02
	db #c2,#d4,#62,#80,#07,#ce,#63,#ce
	db #63,#d2,#5e,#80,#05,#ce,#5f,#d2
	db #5b,#d2,#5b,#d6,#5f,#da,#62,#80
	db #07,#ce,#63,#ce,#63,#d2,#5e,#80
	db #05,#ce,#5f,#d2,#5b,#d2,#5b,#d2
	db #5b,#ce,#5f,#c2,#42,#80,#08,#ce
	db #5a,#80,#09,#5b,#48,#80,#02,#ce
	db #42,#80,#09,#5b,#42,#80,#08,#ce
	db #5a,#80,#09,#5b,#48,#80,#02,#ce
	db #42,#80,#09,#5b,#42,#80,#08,#ce
	db #5a,#80,#09,#5b,#48,#80,#02,#ce
	db #42,#80,#09,#5b,#42,#80,#08,#ce
	db #5a,#80,#09,#5b,#48,#80,#02,#ce
	db #42,#80,#0a,#5b,#10,#ff,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09,#04,#24,#05,#23,#09,#00,#03
	db #23,#05,#22,#09,#02,#22,#05,#0a
	db #21,#09,#01,#21,#36,#95,#33,#4f
	db #81,#03,#2e,#08,#4f,#08,#03,#2d
	db #08,#4f,#03,#2c,#42,#08,#4f,#03
	db #2b,#08,#4f,#10,#03,#2a,#08,#4f
	db #03,#29,#08,#84,#4f,#03,#28,#08
	db #4f,#03,#27,#27,#08,#4f,#03,#98
	db #90,#4f,#03,#25,#08,#b6,#4f,#9c
	db #52,#08,#4f,#4c,#08,#02,#10,#03
	db #22,#08,#4f,#03,#21,#08,#a8,#4f
	db #36,#e3,#ce,#4f,#04,#04,#2e,#07
	db #4f,#04,#21,#2d,#07,#4f,#04,#2c
	db #07,#4f,#08,#04,#2b,#07,#4f,#04
	db #2a,#42,#07,#4f,#04,#29,#07,#4f
	db #10,#04,#28,#07,#4f,#04,#27,#07
	db #84,#4f,#04,#26,#07,#4f,#04,#29
	db #25,#07,#4f,#4c,#07,#02,#08,#04
	db #23,#07,#4f,#04,#22,#42,#07,#4f
	db #04,#21,#07,#4f,#4d,#04,#4f,#50
	db #4f,#05,#0f,#0f,#0e,#0d,#0c,#0b
	db #bb,#24,#ab,#75,#5b,#8d,#03,#5b
	db #6b,#03,#5b,#03,#5b,#5a,#03,#5b
	db #03,#d6,#5b,#03,#5b,#b5,#03,#5b
	db #03,#5b,#ad,#03,#5b,#6b,#03,#5b
	db #03,#5b,#5a,#03,#5b,#03,#d2,#5b
	db #03,#b3,#89,#70,#00,#37,#97,#f1
	db #46,#82,#e3,#49,#be,#9d,#cc,#15
	db #62,#00,#0a,#d4,#a6,#73,#20,#89
	db #ff,#71,#c8,#15,#86,#a6,#ba,#8e
	db #92,#62,#93,#88,#94,#0c,#0b,#72
	db #0b,#05,#0a,#49,#0a,#f7,#05,#cc
	db #aa,#97,#7b,#05,#21,#06,#06,#05
	db #05,#05,#c8,#04,#04,#03,#72,#03
	db #05,#02,#27,#02,#01,#c5,#1c,#3f
	db #42,#94,#2e,#0c,#01,#3e,#2c,#8b
	db #c3,#40,#02,#2a,#0c,#29,#0c,#33
	db #08,#26,#0c,#25,#0c,#25,#22,#0c
	db #46,#21,#ee,#51,#9e,#fd,#3e,#de
	db #0b,#18,#07,#1c,#c6,#07,#1b,#13
	db #78,#0b,#63,#07,#1a,#07,#19,#19
	db #13,#0b,#e1,#07,#8c,#18,#07,#67
	db #17,#13,#0b,#75,#56,#ac,#48,#02
	db #be,#fd,#d0,#48,#81,#01,#da,#79
	db #49,#01,#80,#d2,#48,#80,#02,#ce
	db #49,#49,#01,#c2,#d4,#62,#81,#03
	db #ce,#63,#01,#00,#d2,#66,#80,#04
	db #ce,#67,#d2,#00,#5e,#80,#05,#d2
	db #5f,#d6,#63,#da,#3e,#62,#80,#15
	db #0a,#01,#0f,#66,#c2,#47,#39,#e7
	db #03,#07,#ea,#60,#71,#c0,#2f,#8c
	db #09,#85,#06,#85,#7b,#01,#75,#01
	db #24,#6d,#01,#63,#01,#5d,#05,#55
	db #d4,#66,#81,#07,#66,#68,#93,#76
	db #05,#74,#1c,#5f,#6c,#af,#da,#7c
	db #15,#8a,#82,#30,#08,#ce,#0d,#60
	db #80,#09,#61,#4e,#b7,#03,#07,#0f
	db #fa,#b2,#0a,#61,#b1,#5e,#38,#ae
	db #e2,#b3,#5e,#74,#42,#b0,#62,#5a
	db #40,#6b,#5b,#40,#42,#07,#2f,#03
	db #0f,#ea,#c6,#0a,#5b,#4c,#7f,#28
	db #64,#0f,#bc,#cb,#0f,#07,#58,#4c
	db #1f,#65,#f4,#0d,#f1,#1d,#ab,#0b
	db #0f,#0b,#07,#7b,#0f,#7e,#4d,#3b
	db #ca,#c2,#c1,#60,#89,#0b,#ce,#71
	db #0c,#ce,#75,#d2,#77,#03,#07,#71
	db #d2,#67,#e6,#67,#0d,#99,#d6,#71
	db #f7,#39,#1f,#f6,#11,#c2,#4e,#ba
	db #8e,#66,#60,#b5,#07,#4e,#5c,#8f
	db #67,#0d,#4f,#1d,#1a,#0b,#0f,#b7
	db #0b,#07,#0f,#b8,#ba,#fd,#b2,#d2
	db #68,#ba,#20,#e2,#6d,#ce,#69,#ac
	db #6e,#8d,#22,#d6,#69,#8c,#1e,#c2
	db #68,#81,#0f,#a0,#44,#81,#0c,#ce
	db #41,#1e,#d2,#45,#d2,#03,#05,#ce
	db #45,#05,#11,#ef,#de,#64,#87,#51
	db #e1,#f4,#a3,#7f,#e1,#fb,#a1,#0a
	db #65,#46,#c0,#18,#43,#1e,#d2,#47
	db #d2,#03,#04,#ce,#47,#c0,#7c,#48
	db #7a,#f6,#81,#ea,#7f,#d2,#81,#ce
	db #03,#23,#7b,#b5,#0a,#7f,#ce,#03
	db #bf,#29,#82,#17,#58,#c2,#0c,#5f
	db #67,#71,#02,#06,#77,#7f,#77,#71
	db #67,#02,#30,#5f,#02,#59,#c0,#5f
	db #37,#da,#0c,#75,#02,#23,#6d,#3e
	db #d7,#1d,#56,#7d,#6b,#07,#3e,#79
	db #07,#57,#ce,#18,#0d,#97,#1d,#8d
	db #0b,#0f,#5b,#0b,#07,#0f,#db,#3f
	db #3b,#e2,#7e,#48,#3b,#2d,#f4,#0a
	db #70,#f4,#44,#7b,#b0,#64,#b4,#72
	db #71,#3c,#e6,#71,#0d,#c1,#d6,#7b
	db #d4,#70,#81,#1f,#f6,#11,#c2,#40
	db #ba,#8e,#58,#60,#b5,#07,#40,#5c
	db #8f,#59,#0d,#4f,#1d,#1a,#0b,#0f
	db #b7,#0b,#07,#0f,#b8,#ba,#fd,#b2
	db #d2,#72,#f4,#92,#e1,#42,#73,#ce
	db #86,#20,#6d,#d6,#73,#d2,#c5,#07
	db #ce,#f2,#14,#a3,#1f,#72,#81,#15
	db #1a,#d0,#c7,#32,#c4,#93,#01,#ea
	db #32,#c2,#88,#21,#d5,#26,#89,#03
	db #3a,#85,#03,#46,#83,#e3,#6f,#03
	db #0f,#56,#44,#5b,#5e,#51,#01,#9e
	db #44,#ee,#80,#44,#29,#32,#a2,#4c
	db #32,#b7,#03,#07,#0f,#5d,#85,#07
	db #23,#79,#89,#80,#70,#03,#70,#05
	db #0f,#70,#07,#70,#01,#07,#ec,#63
	db #e4,#10,#88,#04,#05,#88,#07,#00
	db #7e,#01,#7e,#03,#7e,#05,#7e,#07
	db #3d,#88,#01,#0f,#40,#84,#01,#84
	db #03,#84,#05,#7d,#84,#0f,#00,#82
	db #01,#82,#03,#82,#00,#05,#82,#07
	db #7a,#01,#7a,#03,#7a,#3e,#05,#7a
	db #0f,#0f,#3f,#bc,#70,#85,#44,#0b
	db #89,#72,#03,#01,#72,#03,#72,#05
	db #72,#07,#f6,#25,#81,#f6,#e7,#a1
	db #38,#fa,#e1,#ee,#80,#91,#1e,#11
	db #b9,#df,#0f,#7e,#fc,#73,#1f,#b9
	db #1d,#f7,#0f,#1f,#ef,#3f,#ef,#2f
	db #f3,#f6,#1f,#78,#01,#01,#78,#03
	db #78,#05,#78,#07,#92,#f0,#01,#da
	db #49,#25,#d6,#49,#00,#da,#01,#f6
	db #88,#da,#12,#4d,#d6,#4d,#00,#c2
	db #97,#58,#7e,#ca,#af,#17,#02,#d0
	db #19,#f9,#d5,#e5,#85,#0d,#d8,#e9
	db #61,#ec,#49,#0e,#e8,#c2,#ec,#9e
	db #bc,#30,#01,#c0,#c2,#f4,#58,#81
	db #0e,#de,#0d,#69,#f6,#5f,#de,#e5
	db #30,#09,#fa,#67,#0d,#da,#5f,#fa
	db #63,#a8,#53,#da,#4f,#01,#ce,#26
	db #21,#68,#80,#26,#71,#f6,#63,#2a
	db #6e,#9c,#42,#26,#6d,#da,#63,#2a
	db #f2,#4d,#73,#49,#01,#26,#7d,#89
	db #4d,#a4,#69,#de,#43,#5e,#e1,#4d
	db #5d,#26,#8c,#44,#26,#71,#45,#01
	db #2a,#c7,#e0,#ec,#92,#61,#61,#ce
	db #ec,#fb,#05,#b7,#8f,#45,#a3,#86
	db #16,#38,#1b,#5f,#e6,#ec,#72,#38
	db #5d,#6e,#da,#bd,#6f,#af,#ef,#3f
	db #4f,#3b,#65,#c2,#c6,#ff,#bb,#e2
	db #1c,#ef,#0d,#07,#31,#e6,#df,#0d
	db #7e,#1d,#3a,#33,#09,#eb,#07,#0f
	db #89,#ac,#53,#ce,#5c,#1f,#ad,#07
	db #63,#44,#1b,#5d,#0d,#d3,#1d,#c6
	db #0b,#ad,#0f,#0b,#07,#ef,#0f,#a3
	db #be,#bf,#79,#b4,#0a,#61,#e9,#79
	db #5d,#0f,#ac,#44,#07,#eb,#6b,#0f
	db #fa,#61,#0a,#5d,#d4,#f8,#30,#03
	db #ce,#5f,#80,#01,#d2,#62,#80,#04
	db #ce,#63,#2c,#d2,#5a,#84,#29,#d2
	db #5b,#01,#0f,#da,#d3,#47,#17,#c8
	db #c2,#ee,#f6,#9a,#57,#40,#3e,#cd
	db #07,#f1,#eb,#0f,#fa,#60,#0a,#57
	db #c0,#1f,#b6,#ee,#2b,#01,#de,#56
	db #d6,#15,#55,#c6,#0d,#e6,#c2,#2e
	db #d4,#62,#c5,#8a,#b0,#b2,#31,#5e
	db #b2,#14,#be,#64,#b4,#62,#d6,#cc
	db #2f,#13,#82,#ca,#38,#62,#42,#5a
	db #5a,#5a,#6d,#5b,#5a,#0b,#07,#7e
	db #0f,#68,#0a,#5b,#10,#3f,#ff,#00
	db #00,#cc,#3f,#00,#ff,#e0,#00,#00
;
.init_music		;	org #a02f - added by Megachur
;
	ld de,music_data	; #8a00
	jp real_init_music
;
.music_info
	db "Turrican 2 - Level 1 - The Desert Rocks (2015)(Sutekh)(Epyteor)",0
	db "STarkOs",0

	read "music_end.asm"
