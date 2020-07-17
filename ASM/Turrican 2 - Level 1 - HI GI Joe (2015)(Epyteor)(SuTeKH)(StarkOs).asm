; Music of Turrican 2 - Level 1 - HI GI Joe (2015)(Epyteor)(SuTeKH)(StarkOs)
; Ripped by Megachur the 29/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TU2L1HGJ.BIN"
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
	db #00,#1e,#8a,#20,#8a,#44,#8a,#47
	db #8a,#1a,#8a,#1e,#8a,#20,#8a,#44
	db #8a,#03,#c0,#00,#00,#09,#7f,#05
	db #f6,#8a,#38,#8b,#45,#8b,#f6,#8a
	db #6b,#8b,#78,#8b,#f6,#8a,#a2,#8b
	db #cc,#8b,#f6,#8a,#a2,#8b,#cc,#8b
	db #1e,#8c,#60,#8c,#cc,#8b,#1e,#8c
	db #60,#8c,#cc,#8b,#0a,#8a,#8c,#53
	db #8a,#5d,#8a,#67,#8a,#80,#8a,#97
	db #8a,#bf,#8a,#5a,#8a,#5d,#8a,#ff
	db #37,#00,#00,#00,#00,#65,#8a,#67
	db #8a,#00,#37,#00,#00,#80,#16,#6e
	db #8a,#80,#8a,#00,#37,#00,#4c,#fc
	db #ff,#4c,#fc,#ff,#4c,#fc,#ff,#4c
	db #04,#00,#4c,#04,#00,#4c,#04,#00
	db #5a,#8a,#97,#8a,#00,#b7,#00,#3f
	db #3f,#0c,#2e,#08,#2d,#04,#0c,#2b
	db #fc,#2a,#f8,#29,#f4,#28,#f0,#5a
	db #8a,#bf,#8a,#00,#b7,#00,#3f,#2c
	db #0c,#3e,#2b,#0d,#3d,#2a,#10,#1c
	db #29,#3b,#28,#0f,#3a,#27,#0e,#19
	db #26,#38,#25,#0e,#37,#24,#09,#16
	db #23,#35,#22,#0e,#34,#21,#09,#5a
	db #8a,#f6,#8a,#00,#b7,#00,#0f,#08
	db #2f,#0c,#28,#0c,#0e,#07,#2e,#0c
	db #27,#0c,#0d,#06,#2d,#0c,#26,#0c
	db #0c,#05,#2c,#0c,#25,#0c,#0b,#04
	db #2b,#0c,#24,#0c,#0a,#03,#2a,#0c
	db #23,#0c,#09,#02,#29,#0c,#22,#0c
	db #08,#01,#28,#0c,#21,#0c,#64,#81
	db #01,#ce,#65,#ce,#7d,#ce,#65,#ce
	db #65,#ce,#7d,#ce,#65,#ce,#7d,#ce
	db #67,#ce,#61,#ce,#7f,#ce,#61,#ce
	db #61,#ce,#79,#ce,#61,#ce,#79,#ce
	db #65,#ce,#65,#ce,#7d,#ce,#65,#ce
	db #65,#ce,#7d,#ce,#65,#ce,#7d,#ce
	db #67,#ce,#61,#ce,#7f,#ce,#61,#ce
	db #61,#ce,#79,#ce,#61,#ce,#79,#c2
	db #4c,#81,#02,#c0,#1d,#c4,#02,#52
	db #01,#c0,#1d,#c4,#02,#30,#81,#03
	db #d2,#31,#d2,#31,#d2,#31,#d2,#31
	db #d2,#31,#d2,#31,#d2,#31,#ce,#31
	db #ce,#31,#d2,#31,#d2,#31,#d2,#31
	db #d2,#31,#d2,#31,#d2,#31,#d2,#31
	db #ce,#31,#c2,#56,#81,#02,#c0,#1d
	db #c4,#02,#5a,#01,#c0,#1d,#c4,#02
	db #30,#81,#03,#d2,#31,#d2,#31,#d2
	db #31,#d2,#31,#d2,#31,#d2,#31,#d2
	db #31,#ce,#31,#ce,#31,#d2,#31,#d2
	db #31,#d2,#31,#d2,#31,#d2,#31,#d2
	db #48,#80,#04,#49,#49,#49,#49,#49
	db #49,#49,#64,#81,#05,#d2,#73,#d2
	db #65,#ce,#75,#d2,#65,#ce,#73,#d2
	db #65,#ce,#6f,#d2,#65,#ce,#73,#d2
	db #65,#d2,#73,#d2,#65,#ce,#7d,#d2
	db #65,#ce,#79,#d2,#65,#ce,#75,#d2
	db #65,#ce,#6f,#c2,#30,#81,#03,#d2
	db #48,#80,#04,#d2,#30,#80,#03,#ce
	db #48,#80,#04,#ce,#30,#80,#03,#ce
	db #48,#80,#04,#ce,#30,#80,#03,#d2
	db #31,#ce,#48,#80,#04,#ce,#30,#80
	db #03,#d2,#31,#ce,#31,#ce,#31,#d2
	db #48,#80,#04,#d2,#30,#80,#03,#ce
	db #48,#80,#04,#ce,#30,#80,#03,#ce
	db #48,#80,#04,#ce,#30,#80,#03,#d2
	db #31,#ce,#48,#80,#04,#ce,#30,#80
	db #03,#d2,#31,#ce,#31,#c2,#6a,#81
	db #01,#ce,#6b,#ce,#83,#ce,#6b,#ce
	db #6b,#ce,#83,#ce,#6b,#ce,#83,#ce
	db #6d,#ce,#67,#ce,#85,#ce,#67,#ce
	db #67,#ce,#7f,#ce,#67,#ce,#7f,#ce
	db #6b,#ce,#6b,#ce,#83,#ce,#6b,#ce
	db #6b,#ce,#83,#ce,#6b,#ce,#83,#ce
	db #6d,#ce,#67,#ce,#85,#ce,#67,#ce
	db #67,#ce,#7f,#ce,#67,#ce,#7f,#c2
	db #6a,#81,#05,#d2,#79,#d2,#6b,#ce
	db #7b,#d2,#6b,#ce,#79,#d2,#6b,#ce
	db #75,#d2,#6b,#ce,#79,#d2,#6b,#d2
	db #79,#d2,#6b,#ce,#83,#d2,#6b,#ce
	db #7f,#d2,#6b,#ce,#7b,#d2,#6b,#ce
	db #75,#c2,#ff,#00,#00,#00,#00,#00
	db #3c,#6c,#91,#59,#ff,#b0,#67,#28
	db #07,#13,#d3,#94,#ac,#eb,#ec,#e2
	db #fc,#00,#6f,#a8,#05,#af,#fa,#4d
	db #a7,#c7,#21,#b9,#22,#f9,#27,#d8
	db #88,#1c,#0b,#ac,#0c,#97,#c2,#64
	db #19,#da,#e0,#84,#c0,#a8,#f7,#a3
	db #90,#28,#80,#de,#60,#05,#69,#94
	db #e1,#c8,#68,#81,#a7,#cf,#3c,#50
	db #44,#fc,#39,#e8,#e1,#49,#a8,#6d
	db #bc,#30,#d9,#05,#c3,#00,#e0,#01
	db #1f,#87,#0f,#82,#f9,#b9,#4f,#05
	db #87,#01,#0f,#f4,#cf,#43,#1b,#05
	db #02,#eb,#79,#53,#40,#00,#d4,#6f
	db #c0,#39,#fc,#f9,#7b,#34,#00,#01
	db #82,#89,#19,#e1,#a0,#a7,#ce,#05
	db #0b,#43,#02,#9d,#f9,#8b,#b9,#76
	db #d2,#78,#ff,#00,#95,#48,#76,#df
	db #74,#2d,#76,#20,#02,#0a,#4e,#74
	db #e4,#4d,#03,#74,#10,#de,#0f,#10
	db #07,#20,#b8,#00,#21,#19,#28,#00
	db #fd,#a7,#d6,#e2,#33,#b8,#b3,#df
	db #f1,#28,#0b,#bf,#fb,#b4,#c7,#bf
	db #f9,#cf,#0c,#1c,#1c,#52,#d9,#7f
	db #00,#de,#65,#c3,#82,#00,#03,#6e
	db #01,#00,#d7,#05,#11,#07,#2e,#41
	db #07,#b7,#21,#23,#cf,#0f,#6e,#1b
	db #15,#de,#82,#1f,#1c,#00,#fb,#5d
	db #bc,#22,#00,#99,#33,#0d,#8d,#5a
	db #33,#76,#22,#17,#11,#e7,#11,#04
	db #33,#03,#05,#24,#0f,#11,#ab,#7d
	db #86,#cc,#88,#01,#cf,#00,#cc,#01
	db #0d,#13,#b9,#00,#05,#e7,#1b,#0d
	db #3d,#25,#a5,#b6,#f9,#4f,#da,#f8
	db #98,#62,#f2,#63,#99,#c1,#00,#f8
	db #87,#36,#c0,#e7,#26,#d6,#3c,#2f
	db #b9,#14,#81,#33,#a3,#a7,#4a,#dd
	db #eb,#f2,#84,#00,#ef,#4d,#fc,#e3
	db #28,#39,#d5,#50,#39,#48,#61,#94
	db #02,#28,#54,#85,#d1,#7c,#bc,#88
	db #91,#84,#fc,#2d,#e5,#ed,#c3,#94
	db #46,#e4,#37,#54,#a8,#e9,#0f,#62
	db #c0,#82,#c8,#d3,#bf,#f1,#31,#79
	db #a8,#2c,#0a,#b9,#4c,#0c,#40,#46
	db #78,#00,#f8,#1c,#38,#b9,#08,#b8
	db #6f,#11,#1c,#b5,#97,#0c,#bc,#a3
	db #54,#8a,#ed,#f5,#5f,#b7,#69,#a8
	db #4f,#f0,#02,#26,#84,#0c,#5c,#b9
	db #1b,#11,#a8,#3c,#1c,#a1,#9d,#c8
	db #98,#3b,#1c,#fe,#f0,#b1,#42,#8c
	db #ed,#dc,#73,#0e,#a0,#f9,#47,#1f
	db #28,#26,#bb,#47,#57,#2c,#4c,#fc
	db #90,#6b,#8c,#bc,#b9,#47,#2c,#a4
	db #bf,#8a,#c9,#76,#24,#26,#52,#47
	db #57,#22,#a8,#36,#19,#04,#36,#19
	db #11,#4c,#59,#cf,#49,#c2,#ec,#39
	db #00,#63,#ce,#0c,#a8,#db,#55,#b4
	db #f2,#24,#69,#9c,#5e,#7c,#cc,#13
	db #73,#9a,#c7,#1a,#25,#33,#b8,#7f
	db #d5,#2f,#06,#b3,#a3,#c7,#62,#b5
	db #67,#28,#35,#df,#4c,#33,#06,#dd
	db #74,#06,#26,#33,#62,#ac,#8c,#e7
	db #df,#56,#92,#d2,#33,#4c,#bc,#24
	db #14,#7c,#cc,#f8,#50,#64,#98,#b4
	db #6d,#15,#54,#76,#89,#31,#5c,#bc
	db #9c,#49,#b8,#26,#e8,#97,#ea,#8e
	db #c9,#99,#a4,#51,#ed,#4d,#fc,#8d
	db #91,#39,#54,#11,#3c,#6c,#ae,#4f
	db #d8,#c1,#17,#34,#9c,#06,#76,#14
	db #94,#31,#14,#bd,#ea,#3c,#c7,#00
	db #28,#05,#3f,#c6,#e9,#26,#15,#b9
	db #22,#94,#51,#8e,#bd,#21,#54,#ac
	db #ae,#fe,#53,#90,#c8,#48,#48,#84
	db #a4,#93,#f7,#a3,#93,#f9,#ef,#af
	db #e3,#05,#88,#ae,#f8,#52,#33,#fb
	db #93,#cf,#8f,#48,#50,#11,#fc,#bc
	db #76,#bb,#fa,#3c,#47,#bc,#97,#67
	db #41,#03,#00,#80,#01,#87,#27,#f9
	db #b0,#a1,#4f,#c6,#05,#07,#01,#0f
	db #4b,#02,#1b,#8b,#a0,#55,#c6,#a6
	db #a1,#84,#c0,#c0,#db,#47,#be,#f8
	db #46,#e5,#4f,#f0,#b1,#27,#0f,#00
	db #c1,#4b,#01,#4e,#0b,#f0,#03,#52
	db #4a,#05,#91,#43,#02,#43,#16,#c5
	db #1e,#58,#7a,#30,#0f,#7c,#76,#3c
	db #42,#6f,#00,#e6,#7e,#de,#27,#10
	db #a8,#01,#b9,#0a,#31,#aa,#63,#09
	db #b9,#10,#5d,#b8,#10,#4f,#09,#74
	db #fd,#b7,#10,#0c,#7f,#00,#b3,#63
	db #33,#02,#36,#e2,#f8,#c9,#05,#cd
	db #61,#22,#d1,#2b,#10,#93,#05,#36
	db #05,#73,#1f,#1c,#2b,#df,#3d,#de
	db #fe,#52,#3c,#0c,#08,#01,#dc,#08
	db #11,#3a,#08,#0d,#9e,#0b,#08,#1d
	db #9c,#1b,#fb,#21,#ef,#12,#3f,#86
	db #40,#ff,#00,#1a,#03,#56,#02,#00
	db #03,#01,#ed,#00,#05,#11,#72,#07
	db #01,#e7,#07,#21,#2f,#09,#23,#3d
	db #31,#b7,#11,#05,#31,#9f,#09,#1e
	db #0d,#7d,#00,#45,#0f,#0a,#0f,#03
	db #05,#9c,#00,#33,#00,#02,#03,#0d
	db #05,#00,#05,#db,#13,#09,#11,#77
	db #04,#1f,#9c,#0f,#8f,#ab,#b1,#a8
	db #01,#73,#00,#07,#9a,#ce,#6e,#05
	db #13,#6b,#0e,#00,#11,#c7,#07,#e1
	db #9f,#d6,#e4,#cf,#54,#3c,#fa,#78
	db #bf,#9c,#e0,#5b,#62,#d1,#e2,#5b
	db #38,#88,#67,#ac,#c4,#76,#e3,#98
	db #3e,#dd,#33,#a5,#a7,#51,#dc,#36
	db #b6,#21,#99,#ec,#4d,#39,#19,#e0
	db #96,#48,#5c,#87,#03,#84,#1c,#36
	db #82,#5e,#d3,#70,#88,#fc,#89,#b5
	db #ac,#09,#79,#79,#72,#86,#7c,#50
	db #9c,#e6,#66,#02,#93,#dc,#f3,#7a
	db #a9,#7d,#84,#af,#ca,#a8,#8b,#f2
	db #99,#d0,#7c,#fc,#3d,#28,#54,#d2
	db #07,#9c,#fc,#00,#98,#a3,#8c,#e6
	db #cf,#df,#64,#14,#a8,#47,#ac,#fa
	db #1c,#ff,#3d,#33,#b7,#87,#5c,#4f
	db #c1,#d5,#d8,#bc,#ec,#c1,#3d,#a8
	db #26,#b5,#9f,#9b,#e7,#f0,#f9,#fe
	db #9c,#38,#73,#6f,#4c,#0e,#a0,#e7
	db #ab,#22,#66,#1a,#bf,#5c,#a6,#22
	db #a0,#78,#8c,#bb,#39,#23,#ac,#1c
	db #9e,#dd,#fc,#9f,#14,#cf,#54,#1a
	db #ee,#47,#28,#a8,#45,#19,#04,#36
	db #6a,#59,#54,#0b,#44,#54,#d4,#0c
	db #3d,#5c,#14,#b1,#62,#f7,#8e,#9f
	db #a3,#4f,#4c,#1c,#24,#64,#23,#33
	db #28,#3c,#51,#cc,#39,#f4,#f1,#df
	db #73,#e0,#c4,#a6,#6c,#fb,#91,#9f
	db #a2,#22,#b9,#91,#e6,#37,#b8,#ed
	db #b4,#3f,#c8,#8e,#1e,#12,#33,#c6
	db #71,#fb,#e0,#b4,#d0,#63,#08,#6f
	db #6f,#4f,#e6,#c4,#cc,#c8,#75,#4e
	db #ea,#8c,#27,#9c,#14,#c7,#93,#ac
	db #84,#e2,#f7,#0c,#55,#bc,#d4,#f2
	db #ed,#00,#51,#c3,#e0,#7c,#c0,#94
	db #60,#39,#58,#28,#3c,#7c,#47,#cc
	db #a1,#c1,#b1,#2c,#45,#83,#f7,#16
	db #47,#7a,#1b,#b8,#28,#04,#e7,#05
	db #17,#d2,#a6,#30,#22,#14,#78,#33
	db #d7,#1c,#92,#36,#ac,#f4,#be,#4d
	db #7e,#ee,#8b,#48,#70,#4a,#df,#38
	db #af,#f9,#e3,#05,#9f,#00,#84,#b9
	db #33,#4f,#76,#cf,#0b,#1c,#8a,#70
	db #08,#fc,#fc,#39,#e8,#4a,#14,#fc
	db #57,#bc,#c4,#83,#f0,#00,#c0,#00
	db #43,#3f,#27,#82,#f9,#73,#4f,#05
	db #07,#01,#87,#83,#1b,#9f,#ae,#f9
	db #11,#62,#c0,#8d,#47,#c3,#35,#b9
	db #cd,#8f,#bb,#1d,#05,#c3,#00,#e5
	db #95,#f9,#f5,#00,#4a,#72,#05,#03
	db #bb,#5f,#18,#c7,#fa,#58,#8d,#8d
	db #3c,#14,#e2,#fe,#9d,#74,#82,#22
	db #22,#01,#94,#95,#d9,#0a,#0b,#20
	db #09,#35,#76,#10,#74,#10,#dd,#c7
	db #12,#b4,#6e,#10,#0c,#ff,#00,#67
	db #f3,#f9,#da,#f9,#e2,#fb,#05,#93
	db #fd,#c7,#f2,#e7,#f9,#f3,#f6,#fb
	db #0c,#9c,#1c,#4f,#11,#00,#00,#f9
	db #48,#cc,#88,#f3,#01,#7a,#88,#11
	db #4f,#0b,#88,#1d,#4d,#1b,#75,#88
	db #05,#21,#e3,#03,#9e,#33,#1c,#40
	db #7f,#00,#95,#bc,#82,#00,#1c,#c3
	db #01,#51,#11,#03,#41,#00,#05,#be
	db #11,#7d,#0d,#b3,#41,#0b,#4d,#eb
	db #5c,#22,#01,#00,#33,#33,#07,#95
	db #ad,#05,#ad,#dd,#6b,#33,#05,#22
	db #11,#9d,#0d,#e7,#19,#07,#bd,#23
	db #fe,#00,#44,#fc,#14,#f7,#b3,#87
	db #df,#cd,#b0,#77,#6f,#62,#db,#3f
	db #00,#73,#36,#88,#73,#ac,#3e,#27
	db #76,#ad,#1e,#4f,#ef,#33,#ae,#be
	db #51,#d3,#33,#68,#b4,#e3,#84,#5c
	db #4d,#bf,#f8,#bc,#c3,#e2,#fb,#03
	db #f3,#8f,#af,#6f,#9b,#84,#e8,#48
	db #84,#b5,#64,#05,#d4,#f1,#42,#39
	db #11,#62,#97,#db,#18,#c3,#e5,#65
	db #36,#49,#37,#6b,#1e,#28,#f3,#e8
	db #c9,#c9,#54,#54,#82,#d8,#7c,#87
	db #0b,#7c,#14,#26,#af,#c8,#b9,#9a
	db #cf,#af,#9f,#0c,#af,#e0,#e8,#f4
	db #b3,#bd,#75,#8e,#32,#31,#84,#2e
	db #d7,#49,#88,#77,#f4,#d4,#f5,#d8
	db #70,#26,#b5,#76,#db,#53,#0b,#9d
	db #cf,#b4,#de,#7c,#2e,#42,#cb,#63
	db #0e,#9e,#4f,#38,#df,#fc,#cf,#7e
	db #28,#a6,#27,#11,#03,#dc,#dd,#22
	db #1c,#9e,#3d,#d5,#fc,#6e,#1e,#e5
	db #f8,#33,#f1,#bd,#39,#2a,#6f,#3b
	db #86,#e7,#8f,#ea,#bc,#42,#f5,#c2
	db #7f,#3c,#c8,#3f,#aa,#76,#a9,#0c
	db #1c,#14,#3c,#4a,#6c,#1c,#24,#04
	db #33,#c5,#64,#cc,#13,#63,#be,#53
	db #f7,#19,#dc,#b1,#36,#88,#5c,#a4
	db #a4,#e8,#04,#3c,#11,#a8,#b9,#5c
	db #e6,#6b,#28,#f8,#e9,#88,#e5,#33
	db #a0,#db,#98,#23,#d4,#14,#52,#33
	db #9b,#23,#08,#ec,#22,#a0,#7e,#0c
	db #e6,#23,#6c,#c8,#af,#00,#46,#66
	db #78,#53,#aa,#36,#46,#1d,#f7,#8e
	db #d1,#8e,#3c,#d3,#51,#a9,#7c,#a6
	db #c0,#8c,#bc,#88,#b4,#3c,#7c,#7c
	db #4c,#50,#11,#96,#84,#4c,#a8,#89
	db #4f,#a8,#47,#86,#29,#7f,#80,#ec
	db #1b,#05,#17,#e6,#3c,#dd,#e8,#15
	db #28,#76,#62,#96,#4c,#ba,#ac,#9f
	db #e7,#64,#62,#df,#44,#5c,#33,#e2
	db #51,#94,#f2,#df,#29,#af,#c7,#05
	db #1f,#00,#0c,#83,#4a,#76,#9b,#ca
	db #e5,#3c,#50,#0f,#14,#76,#f9,#ab
	db #ab,#87,#3c,#2f,#c6,#43,#0e,#4b
	db #82,#28,#e1,#4f,#30,#05,#01,#87
	db #4b,#83,#83,#ca,#39,#15,#b9,#c0
	db #c0,#ee,#e6,#14,#f6,#4a,#3b,#41
	db #03,#00,#38,#02,#02,#1a,#9d,#8a
	db #c3,#05,#03,#01,#18,#c1,#a0,#31
	db #ea,#7c,#8f,#8d,#93,#00,#f9,#4b
	db #8c,#28,#aa,#86,#01,#b8,#b9,#b8
	db #0a,#89,#00,#10,#a8,#07,#b8,#10
	db #b6,#0f,#0d,#64,#02,#09,#54,#37
	db #74,#22,#10,#0c,#7f,#00,#b3,#fe
	db #dc,#3c,#02,#69,#96,#77,#03,#0a
	db #7c,#05,#b7,#02,#fd,#ff,#e5,#0b
	db #dd,#cc,#00,#5e,#54,#e3,#66,#03
	db #00,#f1,#11,#bd,#96,#11,#ee,#0c
	db #11,#ef,#03,#1d,#2e,#00,#05,#fc
	db #35,#1d,#00,#35,#73,#25,#33,#c6
	db #f7,#1e,#01,#6c,#08,#22,#cf,#05
	db #11,#1c,#0f,#7a,#08,#21,#73,#1f
	db #05,#be,#0f,#3e,#1d,#7f,#00,#ce
	db #bc,#02,#00,#1b,#03,#01,#11,#93
	db #05,#01,#05,#72,#19,#07,#ed,#11
	db #03,#1f,#d6,#11,#fd,#4d,#6b,#0a
	db #01,#00,#90,#00,#0f,#00,#05,#e1
	db #0d,#00,#03,#96,#09,#1a,#ef,#07
	db #1f,#3a,#07,#0f,#ce,#05,#0f,#6f
	db #29,#00,#e4,#8d,#54,#36,#b9,#78
	db #43,#36,#0c,#c0,#a8,#f6,#bd,#df
	db #94,#4b,#84,#11,#fb,#b3,#88,#67
	db #28,#17,#c4,#bc,#f8,#63,#07,#39
	db #48,#c0,#51,#d8,#39,#bf,#4a,#b3
	db #3b,#4d,#7d,#14,#f8,#10,#79,#f3
	db #03,#84,#0c,#2c,#06,#3c,#e3,#d8
	db #96,#d5,#ac,#06,#47,#a5,#8c,#21
	db #0c,#4f,#48,#2b,#a8,#7b,#8a,#92
	db #22,#c0,#84,#4a,#49,#5c,#37,#28
	db #4c,#36,#4e,#84,#26,#d4,#f3,#5f
	db #f0,#02,#cc,#3c,#fc,#28,#7c,#34
	db #f3,#eb,#c9,#2f,#83,#43,#8c,#0c
	db #af,#f7,#c8,#f3,#8c,#62,#ac,#48
	db #44,#0f,#3c,#2c,#c0,#28,#92,#4b
	db #69,#c9,#a7,#a8,#4e,#bc,#1f,#5c
	db #f4,#aa,#9f,#1a,#26,#81,#3b,#76
	db #8a,#6f,#0b,#af,#d7,#cc,#c3,#32
	db #66,#fe,#8e,#7f,#80,#37,#68,#4f
	db #30,#12,#cc,#8c,#8b,#c5,#67,#10
	db #11,#08,#5c,#fc,#7c,#3d,#ac,#1c
	db #4f,#ec,#c1,#44,#14,#1e,#cc,#fc
	db #86,#c8,#00,#de,#ad,#36,#3b,#cc
	db #36,#60,#a3,#17,#42,#36,#b9,#dc
	db #ac,#1e,#a2,#0e,#c0,#2f,#1c,#28
	db #25,#86,#9c,#2c,#8a,#66,#05,#10
	db #06,#8c,#8c,#88,#33,#64,#36,#6c
	db #7c,#f2,#3e,#19,#19,#36,#b8,#2b
	db #45,#8f,#5c,#af,#63,#c1,#71,#22
	db #10,#89,#54,#a5,#0d,#33,#14,#e7
	db #e7,#f4,#97,#a7,#ef,#d6,#df,#84
	db #23,#20,#33,#26,#84,#ca,#24,#59
	db #97,#4b,#6c,#3a,#ec,#a7,#00,#b1
	db #66,#4c,#7d,#91,#ac,#cb,#bc,#8d
	db #f5,#39,#d1,#4f,#72,#33,#a1,#42
	db #14,#e8,#f6,#46,#62,#79,#1f,#14
	db #7c,#ae,#ed,#45,#b2,#d9,#9e,#f9
	db #7a,#fa,#53,#94,#c1,#29,#3d,#08
	db #8f,#8d,#05,#f7,#54,#4d,#22,#91
	db #d9,#e2,#94,#07,#8b,#aa,#50,#d1
	db #33,#b9,#10,#c0,#b9,#3c,#29,#36
	db #a8,#f6,#e3,#fe,#f9,#f9,#05,#ef
	db #ee,#8e,#84,#31,#33,#9b,#44,#fb
	db #54,#f5,#e0,#fc,#36,#fc,#39,#4a
	db #99,#3c,#64,#a4,#39,#33,#0f,#00
	db #2e,#82,#43,#83,#fd,#f9,#70,#00
	db #05,#01,#0e,#43,#83,#01,#87,#17
	db #02,#33,#27,#4b,#02,#b8,#bc,#c5
	db #76,#62,#d4,#e9,#24,#9e,#bd,#2e
	db #f0,#00,#c6,#a0,#02,#3c,#00,#b9
	db #28,#05,#3c,#03,#50,#18,#3d,#30
	db #8e,#14,#fc,#82,#ff,#82,#06,#33
	db #39,#22,#02,#0e,#39,#39,#28,#08
	db #64,#9a,#5e,#39,#d1,#7f,#f9,#4e
	db #36,#05,#f8,#02,#7f,#00,#00,#ca
	db #2c,#22,#00,#39,#11,#00,#03,#cf
	db #00,#11,#2d,#0c,#9b,#03,#33,#03
	db #0f,#e1,#0d,#37,#33,#15,#05,#37
	db #23,#0b,#77,#09,#0f,#73,#19,#17
	db #63,#10,#cc,#88,#01,#cc,#88,#00
	db #f7,#11,#9e,#0f,#88,#0f,#d8,#25
	db #88,#f1,#25,#f5,#2f,#97,#cc,#f2
	db #d2,#c3,#82,#01,#b9,#00,#05,#71
	db #41,#0d,#13,#ae,#41,#19,#b7,#11
	db #00,#8d,#07,#5c,#00,#0d,#21,#e7
	db #0a,#00,#f2,#3c,#ff,#be,#00,#e3
	db #62,#48,#94,#f7,#bd,#cf,#36,#d4
	db #4b,#c2,#1b,#36,#c0,#c0,#88,#ed
	db #cc,#c9,#0f,#be,#f7,#bb,#c3,#9c
	db #84,#e7,#d2,#d3,#d4,#4a,#ee,#e1
	db #a5,#7c,#4d,#d8,#11,#2c,#84,#fb
	db #f4,#d5,#83,#39,#0c,#00,#3a,#8b
	db #f3,#c5,#b2,#72,#b5,#27,#ac,#89
	db #1a,#99,#e4,#26,#dd,#c6,#7c,#a8
	db #48,#24,#7c,#c0,#00,#48,#86,#35
	db #bc,#11,#1c,#0b,#31,#bc,#ad,#1f
	db #62,#bb,#3c,#54,#bf,#43,#cc,#45
	db #3c,#54,#28,#f8,#c3,#9c,#b9,#df
	db #d5,#4c,#d3,#cb,#a0,#f0,#9c,#14
	db #14,#5c,#28,#5b,#83,#79,#f5,#0f
	db #7a,#96,#47,#28,#33,#c0,#51,#bf
	db #d3,#ae,#04,#01,#5c,#a8,#26,#1c
	db #11,#b9,#db,#db,#0b,#7e,#af,#bf
	db #4c,#f0,#70,#42,#8c,#1c,#fe,#80
	db #b7,#4f,#cf,#d3,#12,#4f,#9c,#28
	db #e0,#ca,#2d,#03,#23,#dc,#fc,#b9
	db #3d,#4f,#e5,#ff,#7c,#e0,#2c,#bc
	db #7c,#91,#88,#a2,#4c,#8c,#dc,#3b
	db #36,#8f,#54,#84,#7c,#87,#3f,#b6
	db #11,#c0,#e8,#b8,#0e,#c0,#61,#08
	db #44,#48,#1c,#6f,#45,#b2,#80,#24
	db #b0,#70,#88,#67,#33,#64,#ae,#d9
	db #7c,#00,#f0,#64,#7e,#b8,#b1,#72
	db #4a,#a1,#44,#cb,#c0,#ba,#48,#e9
	db #7f,#22,#f8,#4e,#14,#21,#7f,#e4
	db #7e,#a7,#9e,#fa,#3f,#fc,#08,#19
	db #0c,#c9,#ca,#2d,#4b,#2f,#14,#6c
	db #3a,#50,#85,#66,#72,#b3,#c0,#c3
	db #fc,#55,#1e,#3c,#91,#6f,#a5,#de
	db #bc,#ec,#b3,#18,#c0,#36,#26,#54
	db #14,#49,#7c,#9e,#8b,#ee,#f4,#17
	db #de,#88,#5c,#f6,#a9,#9c,#8f,#ae
	db #f6,#33,#40,#e8,#04,#05,#9a,#90
	db #78,#2f,#56,#d9,#11,#94,#82,#6f
	db #55,#69,#8c,#a5,#c1,#84,#c0,#d4
	db #22,#f4,#e7,#f1,#bc,#c7,#28,#50
	db #af,#f1,#05,#c7,#00,#c4,#54,#65
	db #76,#42,#9d,#24,#88,#78,#0a,#14
	db #76,#fc,#a2,#2d,#8f,#d0,#05,#c3
	db #ec,#00,#82,#43,#7f,#0a,#f9,#0e
	db #00,#05,#47,#43,#83,#01,#1a,#82
	db #02,#fc,#5c,#cc,#33,#b9,#55,#f9
	db #6f,#7d,#00,#da,#c0,#00,#80,#d3
	db #04,#3c,#28,#af,#ff,#d5,#61,#02
	db #39,#33,#28,#98,#f9,#05,#bb,#10
	db #b3,#f9,#af,#fd,#0f,#14,#33,#36
	db #af,#d9,#c1,#b3,#08,#02,#3f,#4f
	db #17,#46,#30,#02,#14,#36,#eb,#08
	db #3e,#73,#43,#4f,#cb,#4c,#9f,#4f
	db #c8,#ff,#00,#8b,#05,#0a,#0a,#0f
	db #8e,#98,#05,#05,#db,#09,#02,#11
	db #33,#05,#0d,#ad,#1d,#ab,#04,#1f
	db #06,#0f,#77,#1c,#19,#73,#05,#35
	db #ac,#08,#e3,#17,#06,#ae,#17,#36
	db #ad,#c6,#00,#54,#b3,#e6,#03,#6e
	db #00,#2e,#58,#04,#97,#78,#0f,#66
	db #10,#04,#bc,#a8,#11,#1d,#00,#05
	db #ef,#01,#09,#7e,#00,#11,#ae,#ee
	db #0c,#7a,#08,#01,#71,#11,#00,#67
	db #05,#07,#1d,#11,#ee,#0b,#16,#ec
	db #09,#cc,#bf,#56,#03,#51,#02,#01
	db #00,#01,#00,#05,#db,#03,#13,#87
	db #01,#19,#5c,#17,#e6,#00,#07,#a7
	db #00,#0d,#01,#2f,#5f,#72,#b9,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #90,#0c,#00,#00,#00,#c3,#72,#88
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
	db #44,#8a,#47,#8a,#1a,#8a,#e4,#09
	db #03,#c0,#c4,#b3,#00,#7f,#05,#f6
	db #8a,#38,#8b,#45,#8b,#86,#05,#6b
	db #8b,#78,#05,#0e,#a2,#8b,#cc,#05
	db #83,#1e,#8c,#60,#8c,#05,#b0,#0a
	db #8a,#8c,#53,#00,#8a,#5d,#8a,#67
	db #8a,#80,#8a,#97,#0c,#8a,#bf,#8a
	db #5a,#0b,#35,#ff,#37,#5c,#65,#13
	db #8c,#00,#09,#19,#80,#16,#6e,#1b
	db #09,#83,#4c,#fc,#ff,#02,#a5,#04
	db #0b,#02,#c5,#2c,#32,#51,#c6,#eb
	db #70,#3f,#0c,#2e,#00,#08,#2d,#04
	db #0c,#2b,#fc,#2a,#f8,#0a,#29,#f4
	db #28,#f0,#16,#47,#d0,#16,#2c,#0c
	db #3e,#2b,#00,#0d,#3d,#2a,#10,#1c
	db #29,#3b,#28,#00,#0f,#3a,#27,#0e
	db #19,#26,#38,#25,#00,#0e,#37,#24
	db #09,#16,#23,#35,#22,#09,#0e,#34
	db #21,#09,#27,#f6,#27,#a0,#0f,#08
	db #2f,#0c,#28,#00,#0c,#0e,#07,#2e
	db #0c,#27,#0c,#0d,#01,#06,#2d,#0c
	db #26,#0c,#0c,#05,#3a,#00,#25,#0c
	db #0b,#04,#2b,#0c,#24,#00,#0c,#0a
	db #03,#2a,#0c,#23,#0c,#09,#0d,#02
	db #29,#0c,#22,#eb,#10,#01,#27,#21
	db #0c,#64,#03,#81,#01,#ce,#65,#ce
	db #7d,#03,#39,#05,#81,#03,#67,#ce
	db #61,#ce,#7f,#03,#93,#01,#79,#03
	db #87,#65,#1f,#da,#c2,#01,#4c,#81
	db #02,#c0,#1d,#c4,#02,#dd,#96,#05
	db #83,#30,#81,#03,#d2,#31,#01,#cd
	db #ce,#01,#9e,#11,#e7,#c2,#56,#32
	db #2f,#5a,#32,#c4,#0e,#48,#80,#04
	db #49,#00,#62,#ab,#08,#05,#d2,#73
	db #d2,#83,#99,#75,#03,#07,#ae,#6f
	db #07,#78,#13,#63,#7d,#03,#79,#1b
	db #a3,#6f,#c2,#53,#70,#37,#d2,#30
	db #18,#80,#03,#ce,#07,#ce,#f2,#07
	db #cf,#5f,#09,#1d,#69,#fc,#27,#42
	db #c2,#6a,#a7,#50,#6b,#ce,#67,#83
	db #03,#05,#32,#03,#6d,#89,#51,#85
	db #03,#94,#01,#8d,#9a,#03,#6b,#fb
	db #1f,#72,#41,#bd,#28,#a1,#a6,#19
	db #7b,#03,#6b,#07,#75,#07,#9e,#13
	db #18,#83,#03,#7f,#e8,#1b,#75,#c2
	db #57,#ff,#8f,#1f,#00,#ff,#f0,#00
;
.init_music		;	org #a02f - added by Megachur
;
	ld de,music_data	; #8a00
	jp real_init_music
;
.music_info
	db "Turrican 2 - Level 1 - HI GI Joe (2015)(Epyteor)(SuTeKH)",0
	db "StarkOs",0

	read "music_end.asm"
