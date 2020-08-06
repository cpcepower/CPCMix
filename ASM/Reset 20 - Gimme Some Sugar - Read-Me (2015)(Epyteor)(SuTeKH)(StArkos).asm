; Music of Reset 20 - Gimme Some Sugar - Read-Me (2015)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 22/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "R20GSSRM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
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
;
.SK10_data
;
	db #53,#4b,#31,#30
	db #00,#8a,#01,#32,#00,#1e,#8a,#20
	db #8a,#32,#8a,#35,#8a,#1a,#8a,#1e
	db #8a,#20,#8a,#32,#8a,#05,#c0,#00
	db #00,#03,#7f,#02,#a2,#8a,#04,#8b
	db #7f,#8b,#a2,#8a,#04,#8b,#7f,#8b
	db #00,#8c,#62,#8c,#e2,#8c,#04,#63
	db #8d,#41,#8a,#4b,#8a,#56,#8a,#7a
	db #8a,#86,#8a,#96,#8a,#48,#8a,#4b
	db #8a,#ff,#37,#00,#00,#00,#00,#54
	db #8a,#56,#8a,#00,#37,#00,#1c,#03
	db #81,#0f,#48,#8a,#7a,#8a,#00,#b7
	db #00,#1c,#05,#3f,#30,#0c,#3e,#2f
	db #0d,#3d,#2e,#10,#1c,#2d,#3b,#2c
	db #0f,#3a,#2b,#0e,#19,#2a,#38,#29
	db #0e,#37,#28,#09,#16,#27,#81,#8a
	db #86,#8a,#00,#37,#00,#0d,#2d,#04
	db #2d,#07,#48,#8a,#96,#8a,#00,#b7
	db #00,#0d,#2d,#0c,#0c,#2c,#0c,#0b
	db #2b,#0c,#9d,#8a,#a2,#8a,#00,#37
	db #00,#0d,#2d,#05,#2d,#09,#44,#81
	db #01,#ce,#45,#ce,#48,#80,#02,#ce
	db #44,#80,#01,#ce,#45,#ce,#48,#80
	db #02,#ce,#48,#80,#01,#ce,#4b,#ce
	db #45,#ce,#45,#ce,#48,#80,#02,#ce
	db #44,#80,#01,#ce,#45,#ce,#48,#80
	db #02,#ce,#48,#80,#01,#ce,#4b,#ce
	db #45,#ce,#45,#ce,#48,#80,#02,#ce
	db #44,#80,#01,#ce,#45,#ce,#48,#80
	db #02,#ce,#48,#80,#01,#ce,#4b,#ce
	db #45,#ce,#45,#ce,#48,#80,#02,#ce
	db #44,#80,#01,#ce,#45,#ce,#48,#80
	db #02,#ce,#48,#80,#01,#ce,#4b,#c2
	db #d0,#74,#81,#03,#c4,#01,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#74,#01
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #c4,#05,#70,#01,#c4,#01,#c4,#02
	db #c4,#03,#74,#01,#c4,#01,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#74,#01
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #c4,#05,#7a,#01,#c4,#01,#c4,#02
	db #c4,#03,#74,#01,#c4,#01,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#74,#01
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #c4,#05,#70,#01,#c4,#01,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#c4,#06
	db #c4,#07,#c4,#08,#c4,#09,#c4,#0a
	db #c4,#0b,#c4,#0c,#c4,#0d,#c4,#0e
	db #c4,#0f,#c2,#5c,#83,#04,#64,#0b
	db #6a,#03,#74,#0b,#7c,#03,#82,#0b
	db #8c,#03,#94,#0b,#9a,#03,#94,#0b
	db #8c,#03,#82,#0b,#7c,#03,#74,#0b
	db #6a,#03,#64,#0b,#5c,#03,#64,#0b
	db #6a,#03,#74,#0b,#7c,#03,#82,#0b
	db #8c,#03,#94,#0b,#9a,#03,#94,#0b
	db #8c,#03,#82,#0b,#7c,#03,#74,#0b
	db #6a,#03,#64,#0b,#5c,#03,#64,#0b
	db #6a,#03,#74,#0b,#7c,#03,#82,#0b
	db #8c,#03,#94,#0b,#9a,#03,#94,#0b
	db #8c,#03,#82,#0b,#7c,#03,#74,#0b
	db #6a,#03,#64,#0b,#5c,#03,#64,#0b
	db #6a,#03,#74,#0b,#7c,#03,#82,#0b
	db #8c,#03,#94,#0b,#9a,#03,#94,#0b
	db #8c,#03,#82,#0b,#7c,#03,#74,#0b
	db #6a,#03,#64,#0b,#40,#81,#01,#ce
	db #41,#ce,#48,#80,#02,#ce,#40,#80
	db #01,#ce,#41,#ce,#48,#80,#02,#ce
	db #3c,#80,#01,#ce,#3f,#ce,#41,#ce
	db #41,#ce,#48,#80,#02,#ce,#40,#80
	db #01,#ce,#41,#ce,#48,#80,#02,#ce
	db #3c,#80,#01,#ce,#3f,#ce,#45,#ce
	db #45,#ce,#48,#80,#02,#ce,#44,#80
	db #01,#ce,#45,#ce,#48,#80,#02,#ce
	db #48,#80,#01,#ce,#4b,#ce,#45,#ce
	db #45,#ce,#48,#80,#02,#ce,#44,#80
	db #01,#ce,#45,#ce,#48,#80,#02,#ce
	db #48,#80,#01,#ce,#4b,#c2,#d0,#70
	db #81,#03,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#70,#01,#c4,#01
	db #c4,#02,#c4,#03,#c4,#04,#c4,#05
	db #6c,#01,#c4,#01,#c4,#02,#c4,#03
	db #70,#01,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#70,#01,#c4,#01
	db #c4,#02,#c4,#03,#c4,#04,#c4,#05
	db #76,#81,#05,#c4,#01,#c4,#02,#c4
	db #03,#74,#81,#03,#c4,#01,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#74,#01
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #c4,#05,#70,#01,#c4,#01,#70,#01
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #c4,#05,#c4,#06,#c4,#07,#c4,#08
	db #c4,#09,#c4,#0a,#c4,#0b,#c4,#0c
	db #c4,#0d,#c4,#0e,#c4,#0f,#58,#83
	db #04,#60,#0b,#66,#03,#70,#0b,#78
	db #03,#7e,#0b,#88,#03,#90,#0b,#96
	db #03,#90,#0b,#88,#03,#7e,#0b,#78
	db #03,#70,#0b,#66,#03,#60,#0b,#58
	db #03,#60,#0b,#66,#03,#70,#0b,#78
	db #03,#7e,#0b,#88,#03,#90,#0b,#96
	db #03,#90,#0b,#88,#03,#7e,#0b,#78
	db #03,#70,#0b,#66,#03,#60,#0b,#5c
	db #03,#64,#0b,#6a,#03,#74,#0b,#7c
	db #03,#82,#0b,#8c,#03,#94,#0b,#9a
	db #03,#94,#0b,#8c,#03,#82,#0b,#7c
	db #03,#74,#0b,#6a,#03,#64,#0b,#5c
	db #03,#64,#0b,#6a,#03,#74,#0b,#7c
	db #03,#82,#0b,#8c,#03,#94,#0b,#9a
	db #03,#94,#0b,#8c,#03,#82,#0b,#7c
	db #03,#74,#0b,#6a,#03,#64,#0b,#ff
	db #00,#00,#00,#00,#1a,#c1,#04,#1a
	db #ee,#7c,#f0,#1a,#7b,#05,#1a,#bc
	db #97,#1a,#1e,#0a,#1a,#ef,#b2,#1a
	db #09,#a4,#bd,#1a,#90,#cd,#1a,#7c
	db #fe,#c0,#c7,#19,#07,#19,#bb,#e7
	db #34,#c1,#0b,#1a,#ee,#02,#76,#88
	db #1a,#0c,#f7,#1a,#70,#1d,#1a,#ff
	db #15,#20,#06,#67,#bc,#81,#c8,#7c
	db #16,#0d,#20,#ee,#38,#1c,#88,#c9
	db #af,#b0,#08,#87,#32,#5f,#02,#b0
	db #87,#4a,#3d,#bc,#46,#ee,#46,#a0
	db #61,#6e,#3e,#3f,#c2,#98,#21,#4d
	db #06,#b9,#ee,#40,#23,#81,#11,#4d
	db #03,#07,#11,#e1,#b9,#ae,#8d,#e2
	db #bd,#8b,#9e,#06,#5f,#69,#ec,#cb
	db #94,#a0,#d9,#72,#9a,#06,#a0,#e5
	db #06,#a6,#06,#c5,#84,#e7,#9d,#dd
	db #9f,#39,#80,#a7,#3f,#ed,#01,#22
	db #83,#82,#7e,#e6,#cf,#fa,#2a,#b4
	db #1d,#08,#ac,#82,#44,#2a,#42,#22
	db #d4,#02,#3f,#5e,#82,#87,#8a,#eb
	db #01,#07,#fd,#bd,#db,#3b,#f3,#3b
	db #8b,#09,#22,#e8,#08,#3a,#05,#74
	db #ae,#eb,#cd,#1b,#e1,#09,#ee,#82
	db #03,#40,#a7,#d1,#53,#92,#03,#8c
	db #e0,#0b,#66,#32,#07,#fe,#9d,#9b
	db #c0,#21,#2e,#89,#44,#7e,#e0,#47
	db #b1,#9b,#23,#45,#a3,#12,#10,#f9
	db #bd,#4a,#f0,#38,#e2,#38,#f3,#86
	db #94,#36,#44,#87,#c6,#60,#95,#99
	db #87,#8a,#e5,#e4,#28,#e3,#ac,#bf
	db #b3,#bc,#b0,#0e,#be,#ba,#bd,#0e
	db #bd,#80,#cb,#80,#c0,#b8,#d6,#e3
	db #86,#b6,#63,#38,#81,#9f,#ef,#b6
	db #0a,#11,#ff,#f2,#28,#d9,#a2,#a5
	db #8c,#89,#d8,#a6,#bf,#9a,#8b,#84
	db #49,#8f,#24,#8e,#92,#8d,#e0,#49
	db #c7,#24,#a8,#eb,#88,#b8,#8d,#e8
	db #83,#03,#b7,#ea,#82,#96,#ef,#ad
	db #1f,#00,#00,#d9,#01,#53,#4b,#31
	db #30,#00,#8a,#b3,#25,#d3,#80,#8a
	db #20,#8a,#32,#8a,#0e,#35,#8a,#1a
	db #8a,#09,#48,#05,#c0,#1c,#03,#7f
	db #01,#02,#a2,#8a,#04,#8b,#7f,#8b
	db #05,#c8,#00,#8c,#62,#00,#8c,#e2
	db #8c,#04,#63,#8d,#41,#8a,#00,#4b
	db #8a,#56,#8a,#7a,#8a,#86,#8a,#18
	db #96,#8a,#48,#0b,#ff,#6b,#37,#4a
	db #54,#13,#10,#00,#09,#1c,#03,#81
	db #55,#0f,#14,#1c,#9c,#10,#0a,#05
	db #3f,#30,#00,#0c,#3e,#2f,#0d,#3d
	db #2e,#10,#1c,#00,#2d,#3b,#2c,#0f
	db #3a,#2b,#0e,#19,#06,#2a,#38,#29
	db #0e,#37,#da,#83,#16,#27,#81,#3e
	db #30,#2e,#0d,#2d,#13,#04,#2d,#07
	db #2f,#96,#2f,#60,#0b,#0c,#0c,#2c
	db #0c,#03,#0b,#2b,#0c,#9d,#8a,#a2
	db #1b,#90,#05,#2d,#09,#44,#00,#81
	db #01,#ce,#45,#ce,#48,#80,#02,#1d
	db #ce,#44,#80,#09,#d3,#03,#09,#4b
	db #0b,#3f,#17,#84,#00,#c2,#d0,#74
	db #81,#03,#c4,#01,#c4,#20,#02,#c4
	db #05,#04,#c4,#05,#74,#78,#01,#0b
	db #ba,#70,#0b,#f3,#13,#f3,#0b,#7d
	db #7a,#1f,#cf,#70,#0b,#20,#c4,#06
	db #c4,#07,#00,#c4,#08,#c4,#09,#c4
	db #0a,#c4,#0b,#00,#c4,#0c,#c4,#0d
	db #c4,#0e,#c4,#0f,#01,#c2,#5c,#83
	db #04,#64,#0b,#6a,#3f,#00,#0b,#7c
	db #03,#82,#0b,#8c,#03,#19,#94,#0b
	db #9a,#03,#07,#55,#0b,#0f,#13,#17
	db #47,#1b,#5c,#03,#1f,#f3,#a9,#40
	db #dd,#44,#41,#8b,#b0,#40,#76,#80
	db #09,#3c,#c6,#09,#3f,#0b,#7c,#17
	db #b2,#dd,#fa,#09,#70,#dd,#73,#97
	db #91,#37,#6c,#0b,#5e,#13,#7e,#0b
	db #62,#76,#81,#05,#de,#5a,#9f,#9f
	db #ae,#e3,#5e,#f4,#58,#e2,#82,#60
	db #0b,#66,#64,#00,#0b,#78,#03,#7e
	db #0b,#88,#03,#90,#32,#0b,#96,#03
	db #07,#aa,#0b,#0f,#13,#17,#99,#1b
	db #58,#03,#1f,#f5,#cb,#e2,#ef,#ad
	db #ff,#9c,#7f,#00,#ff,#e0,#00,#00
	db #00,#00,#00,#00
;
.init_music		; added by Megachur
;
	ld de,SK10_data
	jp real_init_music
;
.music_info
	db "Reset 20 - Gimme Some Sugar - Read-Me (2015)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
