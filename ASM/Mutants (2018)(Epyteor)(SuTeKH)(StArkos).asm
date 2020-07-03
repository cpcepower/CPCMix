; Music of Mutants (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 16/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MUTANTS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
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
	db #00,#21,#8a,#25,#8a,#6d,#8a,#73
	db #8a,#1d,#8a,#22,#8a,#2b,#8a,#70
	db #8a,#03,#c0,#00,#00,#c0,#00,#00
	db #13,#02,#7f,#09,#3e,#fc,#8a,#02
	db #8b,#02,#8b,#04,#8b,#98,#8b,#ee
	db #8b,#f8,#8b,#98,#8b,#ee,#8b,#04
	db #8b,#98,#8b,#ee,#8b,#f8,#8b,#98
	db #8b,#ee,#8b,#a0,#8c,#12,#8d,#71
	db #8d,#7a,#8d,#f2,#8d,#4f,#8e,#58
	db #8e,#e5,#8e,#40,#8f,#84,#8f,#ff
	db #8f,#56,#90,#d6,#90,#5a,#91,#b1
	db #91,#84,#8f,#ff,#8f,#56,#90,#30
	db #92,#5a,#91,#b1,#91,#00,#75,#92
	db #14,#75,#92,#83,#8a,#8d,#8a,#96
	db #8a,#b1,#8a,#c8,#8a,#d5,#8a,#e2
	db #8a,#ef,#8a,#8a,#8a,#8d,#8a,#ff
	db #37,#00,#00,#00,#00,#95,#8a,#96
	db #8a,#00,#37,#00,#0a,#0f,#9d,#8a
	db #b1,#8a,#00,#37,#00,#4f,#ff,#ff
	db #4f,#fe,#ff,#4f,#ff,#ff,#0f,#4f
	db #01,#00,#4f,#02,#00,#4f,#01,#00
	db #0f,#c0,#8a,#c8,#8a,#00,#37,#00
	db #2f,#05,#2f,#05,#2e,#11,#2e,#11
	db #2d,#05,#2d,#05,#2d,#11,#2d,#11
	db #cf,#8a,#d5,#8a,#00,#37,#00,#0f
	db #2f,#03,#2f,#07,#0f,#dc,#8a,#e2
	db #8a,#00,#37,#00,#0f,#2f,#04,#2f
	db #07,#0f,#e9,#8a,#ef,#8a,#00,#37
	db #00,#0f,#2f,#09,#2f,#05,#0f,#f6
	db #8a,#fc,#8a,#00,#37,#00,#0f,#2f
	db #0a,#2f,#07,#0f,#62,#83,#01,#62
	db #80,#02,#ca,#c2,#7a,#83,#01,#7a
	db #80,#02,#c4,#02,#ce,#72,#83,#01
	db #72,#80,#02,#6c,#80,#01,#6c,#80
	db #02,#c4,#02,#ce,#6c,#83,#01,#6c
	db #80,#02,#80,#80,#01,#80,#80,#02
	db #c4,#02,#ce,#7a,#83,#01,#7a,#80
	db #02,#c4,#02,#ce,#72,#83,#01,#72
	db #80,#02,#6c,#80,#01,#6c,#80,#02
	db #c4,#02,#ce,#7a,#83,#01,#7a,#80
	db #02,#c4,#02,#ce,#68,#83,#01,#68
	db #80,#02,#6a,#80,#01,#6a,#80,#02
	db #6c,#80,#01,#6c,#80,#02,#72,#80
	db #01,#72,#80,#02,#76,#80,#01,#76
	db #80,#02,#d0,#7a,#80,#01,#7a,#80
	db #02,#80,#80,#01,#80,#80,#02,#6c
	db #80,#01,#6c,#80,#02,#c4,#02,#ce
	db #c4,#03,#ce,#c4,#04,#ce,#c4,#05
	db #ce,#c4,#06,#ce,#c4,#07,#ce,#c4
	db #08,#ce,#62,#83,#01,#62,#80,#02
	db #32,#83,#03,#ce,#c4,#02,#ce,#c4
	db #03,#ce,#c4,#04,#d6,#36,#03,#ce
	db #39,#ce,#c4,#02,#ce,#c4,#03,#ce
	db #32,#03,#ce,#c4,#02,#ce,#36,#03
	db #ce,#c4,#02,#ce,#38,#03,#ce,#c4
	db #02,#ce,#40,#03,#ce,#3d,#ce,#c4
	db #02,#ce,#c4,#03,#ce,#3c,#03,#ce
	db #c4,#02,#ce,#38,#03,#ce,#3d,#ce
	db #c4,#02,#ce,#c4,#03,#ce,#3c,#03
	db #ce,#c4,#02,#ce,#3c,#03,#ce,#3d
	db #ce,#3b,#ce,#c4,#02,#c2,#6c,#87
	db #04,#e6,#72,#80,#05,#ee,#77,#c2
	db #7a,#83,#01,#7a,#80,#02,#c4,#02
	db #ce,#72,#83,#01,#72,#80,#02,#6c
	db #80,#01,#6c,#80,#02,#c4,#02,#ce
	db #6c,#83,#01,#6c,#80,#02,#80,#80
	db #01,#80,#80,#02,#c4,#02,#ce,#7a
	db #83,#01,#7a,#80,#02,#c4,#02,#ce
	db #72,#83,#01,#72,#80,#02,#6c,#80
	db #01,#6c,#80,#02,#c4,#02,#ce,#7a
	db #83,#01,#7a,#80,#02,#c4,#02,#ce
	db #68,#83,#01,#68,#80,#02,#6a,#80
	db #01,#6a,#80,#02,#6c,#80,#01,#6c
	db #80,#02,#5e,#80,#01,#5e,#80,#02
	db #60,#80,#01,#60,#80,#02,#62,#80
	db #01,#62,#80,#02,#54,#80,#01,#54
	db #80,#02,#5a,#80,#01,#5a,#80,#02
	db #5e,#80,#01,#5e,#80,#02,#54,#80
	db #01,#54,#80,#02,#5e,#80,#01,#5e
	db #80,#02,#62,#80,#01,#62,#80,#02
	db #54,#80,#01,#54,#80,#02,#5a,#80
	db #01,#5a,#80,#02,#c4,#02,#ce,#5e
	db #83,#01,#5e,#80,#02,#c4,#02,#c2
	db #58,#83,#01,#58,#80,#02,#c4,#02
	db #ce,#c4,#03,#ce,#c4,#04,#ce,#c4
	db #05,#ce,#c4,#06,#ce,#c4,#07,#ce
	db #c4,#08,#ce,#c4,#09,#ce,#c4,#0a
	db #ce,#c4,#0b,#ce,#c4,#0c,#ce,#58
	db #83,#01,#58,#80,#02,#c4,#02,#ce
	db #5a,#83,#01,#5a,#80,#02,#c4,#02
	db #ce,#5e,#83,#01,#5e,#80,#02,#c4
	db #02,#ce,#c4,#03,#ce,#c4,#04,#ce
	db #c4,#05,#ce,#c4,#06,#ce,#c4,#07
	db #ce,#c4,#08,#ce,#c4,#09,#ce,#c4
	db #0a,#ce,#c4,#0b,#ce,#c4,#0c,#ce
	db #5a,#83,#01,#5a,#80,#02,#c4,#02
	db #ce,#5c,#83,#01,#5c,#80,#02,#c4
	db #02,#c2,#36,#83,#03,#ce,#c4,#02
	db #ce,#c4,#03,#ce,#36,#03,#ce,#c4
	db #02,#ce,#c4,#03,#ce,#36,#03,#ce
	db #c4,#02,#ce,#c4,#03,#ce,#36,#03
	db #ce,#37,#ce,#c4,#02,#ce,#36,#03
	db #ce,#c4,#02,#ce,#32,#03,#ce,#c4
	db #02,#ce,#2e,#03,#ce,#c4,#02,#ce
	db #c4,#03,#ce,#2e,#03,#ce,#c4,#02
	db #ce,#c4,#03,#ce,#2e,#03,#ce,#c4
	db #02,#ce,#c4,#03,#ce,#2e,#03,#ce
	db #2f,#ce,#c4,#02,#ce,#2e,#03,#ce
	db #c4,#02,#ce,#2c,#03,#ce,#c4,#02
	db #c2,#70,#87,#04,#c0,#1e,#68,#80
	db #05,#c2,#62,#83,#01,#62,#80,#02
	db #c4,#02,#ce,#c4,#03,#ce,#c4,#04
	db #ce,#c4,#05,#ce,#c4,#06,#ce,#c4
	db #07,#ce,#c4,#08,#ce,#c4,#09,#ce
	db #c4,#0a,#ce,#c4,#0b,#ce,#c4,#0c
	db #ce,#5a,#83,#01,#5a,#80,#02,#5c
	db #80,#01,#5c,#80,#02,#62,#80,#01
	db #62,#80,#02,#c4,#02,#ce,#66,#83
	db #01,#66,#80,#02,#c4,#02,#ce,#c4
	db #03,#ce,#c4,#04,#ce,#6c,#83,#01
	db #6c,#80,#02,#c4,#02,#ce,#70,#83
	db #01,#70,#80,#02,#6c,#80,#01,#6c
	db #80,#02,#c4,#02,#ce,#c4,#03,#ce
	db #c4,#04,#ce,#c4,#05,#ce,#c4,#06
	db #ce,#c4,#07,#ce,#c4,#08,#ce,#c4
	db #09,#c2,#32,#83,#03,#ce,#c4,#02
	db #ce,#c4,#03,#ce,#32,#03,#ce,#c4
	db #02,#ce,#c4,#03,#ce,#32,#03,#ce
	db #c4,#02,#ce,#c4,#03,#ce,#32,#03
	db #ce,#33,#ce,#c4,#02,#ce,#c4,#03
	db #ce,#2e,#03,#ce,#c4,#02,#ce,#c4
	db #03,#ce,#c4,#04,#ce,#2c,#03,#ce
	db #c4,#02,#ce,#2c,#03,#ce,#c4,#02
	db #ce,#c4,#03,#ce,#2c,#03,#ce,#c4
	db #02,#ce,#c4,#03,#ce,#2c,#03,#ce
	db #2d,#ce,#c4,#02,#ce,#2c,#03,#ce
	db #2d,#ce,#2d,#ce,#c4,#02,#c2,#6c
	db #87,#05,#c0,#1e,#66,#80,#04,#c2
	db #6c,#83,#01,#6c,#80,#02,#c4,#02
	db #ce,#c4,#03,#ce,#c4,#04,#ce,#62
	db #83,#01,#62,#80,#02,#66,#80,#01
	db #66,#80,#02,#6c,#80,#01,#6c,#80
	db #02,#70,#80,#01,#70,#80,#02,#6c
	db #80,#01,#6c,#80,#02,#c4,#02,#ce
	db #c4,#03,#ce,#c4,#04,#ce,#6c,#83
	db #01,#6c,#80,#02,#70,#80,#01,#70
	db #80,#02,#76,#80,#01,#76,#80,#02
	db #7a,#80,#01,#7a,#80,#02,#76,#80
	db #01,#76,#80,#02,#c4,#02,#ce,#c4
	db #03,#ce,#c4,#04,#ce,#c4,#05,#ce
	db #c4,#06,#ce,#c4,#07,#ce,#c4,#08
	db #ce,#c4,#09,#ce,#c4,#0a,#ce,#c4
	db #0b,#ce,#76,#83,#01,#76,#80,#02
	db #76,#80,#01,#76,#80,#02,#7e,#80
	db #01,#7e,#80,#02,#84,#80,#01,#84
	db #80,#02,#c4,#02,#c2,#2e,#83,#03
	db #ce,#2f,#ce,#c4,#02,#ce,#2e,#03
	db #ce,#c4,#02,#ce,#2e,#03,#ce,#2f
	db #ce,#c4,#02,#ce,#c4,#03,#ce,#c4
	db #04,#ce,#2e,#03,#ce,#c4,#02,#ce
	db #c4,#03,#ce,#32,#03,#ce,#c4,#02
	db #ce,#c4,#03,#ce,#3c,#03,#ce,#3d
	db #ce,#c4,#02,#ce,#3c,#03,#ce,#c4
	db #02,#ce,#3c,#03,#ce,#3d,#ce,#c4
	db #02,#ce,#c4,#03,#ce,#c4,#04,#ce
	db #3c,#03,#ce,#c4,#02,#ce,#3c,#03
	db #ce,#33,#ce,#39,#ce,#c4,#02,#c2
	db #68,#87,#05,#c0,#1e,#5e,#05,#c4
	db #03,#c4,#02,#c4,#03,#c4,#04,#c4
	db #05,#c4,#02,#c4,#03,#c4,#04,#c4
	db #05,#c4,#02,#c4,#03,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#c4,#06,#c4
	db #07,#c4,#08,#ce,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#c4,#02,#c4,#03
	db #c4,#02,#c4,#03,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#8a,#83,#01,#8a
	db #80,#02,#c4,#02,#ce,#c4,#03,#ce
	db #c4,#04,#ce,#c4,#05,#ce,#c4,#06
	db #ce,#c4,#07,#ce,#c4,#08,#ce,#c4
	db #09,#ce,#c4,#0a,#ce,#c4,#0b,#ce
	db #76,#83,#01,#76,#80,#02,#76,#80
	db #01,#76,#80,#02,#7e,#80,#01,#7e
	db #80,#02,#84,#80,#01,#84,#80,#02
	db #c4,#02,#ce,#8a,#83,#01,#8a,#80
	db #02,#c4,#02,#ce,#c4,#03,#ce,#c4
	db #04,#ce,#88,#83,#01,#88,#80,#02
	db #c4,#02,#ce,#c4,#03,#ce,#c4,#04
	db #ce,#84,#83,#01,#84,#80,#02,#c4
	db #02,#ce,#c4,#03,#ce,#c4,#04,#ce
	db #80,#83,#01,#80,#80,#02,#c4,#02
	db #ce,#c4,#03,#ce,#c4,#04,#c2,#3c
	db #83,#03,#ce,#3d,#ce,#c4,#02,#ce
	db #3c,#03,#ce,#c4,#02,#ce,#3c,#03
	db #ce,#3d,#ce,#c4,#02,#ce,#c4,#03
	db #ce,#c4,#04,#ce,#3c,#03,#ce,#c4
	db #02,#ce,#3c,#03,#ce,#33,#ce,#39
	db #ce,#c4,#02,#ce,#3c,#03,#ce,#3d
	db #ce,#c4,#02,#ce,#3c,#03,#ce,#c4
	db #02,#ce,#3d,#ce,#3d,#ce,#c4,#02
	db #ce,#c4,#03,#ce,#c4,#04,#ce,#3c
	db #03,#ce,#c4,#02,#ce,#3d,#ce,#33
	db #ce,#39,#ce,#c4,#02,#c2,#5e,#85
	db #06,#c4,#03,#c4,#02,#c4,#03,#c4
	db #04,#c4,#05,#c4,#02,#c4,#03,#c4
	db #04,#c4,#05,#c4,#02,#c4,#03,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#c4
	db #06,#c4,#07,#c4,#08,#ce,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#c4,#02
	db #c4,#03,#c4,#02,#c4,#03,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#5e,#85
	db #07,#c4,#03,#c4,#02,#c4,#03,#c4
	db #04,#c4,#05,#c4,#02,#c4,#03,#c4
	db #04,#c4,#05,#c4,#02,#c4,#03,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#c4
	db #06,#c4,#07,#c4,#08,#ce,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#c4,#02
	db #c4,#03,#c4,#02,#c4,#03,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#84,#83
	db #01,#84,#80,#02,#c4,#02,#ce,#7a
	db #83,#01,#7a,#80,#02,#7e,#80,#01
	db #7e,#80,#02,#c4,#02,#ce,#c4,#03
	db #ce,#c4,#04,#ce,#c4,#05,#ce,#c4
	db #06,#ce,#c4,#07,#ce,#c4,#08,#ce
	db #c4,#09,#ce,#6c,#83,#01,#6c,#80
	db #02,#70,#80,#01,#70,#80,#02,#76
	db #80,#01,#76,#80,#02,#7a,#80,#01
	db #7a,#80,#02,#76,#80,#01,#76,#80
	db #02,#c4,#02,#ce,#c4,#03,#ce,#c4
	db #04,#ce,#c4,#05,#ce,#c4,#06,#ce
	db #c4,#07,#ce,#c4,#08,#ce,#c4,#09
	db #ce,#c4,#0a,#ce,#c4,#0b,#ce,#76
	db #83,#01,#76,#80,#02,#76,#80,#01
	db #76,#80,#02,#7e,#80,#01,#7e,#80
	db #02,#84,#80,#01,#84,#80,#02,#c4
	db #02,#c2,#3c,#83,#03,#ce,#3d,#ce
	db #c4,#02,#ce,#3c,#03,#ce,#c4,#02
	db #ce,#3c,#03,#ce,#3d,#ce,#c4,#02
	db #ce,#c4,#03,#ce,#c4,#04,#ce,#3c
	db #03,#ce,#c4,#02,#ce,#3c,#03,#ce
	db #33,#ce,#39,#ce,#c4,#02,#ce,#3c
	db #03,#ce,#3d,#ce,#c4,#02,#ce,#3c
	db #03,#ce,#c4,#02,#ce,#3d,#ce,#3d
	db #ce,#c4,#02,#ce,#c4,#03,#ce,#c4
	db #04,#ce,#3c,#03,#ce,#c4,#02,#ce
	db #3d,#ce,#33,#ce,#39,#ce,#c4,#02
	db #c2,#5e,#85,#05,#c4,#03,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#c4,#02
	db #c4,#03,#c4,#02,#c4,#03,#c4,#04
	db #c4,#05,#c4,#06,#c4,#07,#c4,#08
	db #ce,#c4,#02,#c4,#03,#c4,#04,#c4
	db #05,#c4,#02,#c4,#03,#c4,#02,#c4
	db #03,#c4,#02,#c4,#03,#c4,#04,#c4
	db #05,#c4,#02,#c4,#03,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#c4,#02,#c4
	db #03,#c4,#02,#c4,#03,#c4,#04,#c4
	db #05,#c4,#06,#c4,#07,#c4,#08,#ce
	db #c4,#02,#c4,#03,#c4,#04,#c4,#05
	db #c4,#02,#c4,#03,#c4,#02,#c4,#03
	db #c4,#02,#c4,#03,#c4,#04,#c4,#05
	db #84,#83,#01,#84,#80,#02,#c4,#02
	db #ce,#7a,#83,#01,#7a,#80,#02,#7e
	db #80,#01,#7e,#80,#02,#c4,#02,#ce
	db #c4,#03,#ce,#c4,#04,#ce,#c4,#05
	db #ce,#c4,#06,#ce,#c4,#07,#ce,#c4
	db #08,#ce,#c4,#09,#ce,#6c,#83,#01
	db #6c,#80,#02,#70,#80,#01,#70,#80
	db #02,#76,#80,#01,#76,#80,#02,#7a
	db #80,#01,#7a,#80,#02,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #60,#57,#50,#4f,#fc,#ee,#4e,#5c
	db #35,#48,#77,#be,#87,#0d,#39,#4e
	db #a1,#1b,#1f,#51,#94,#42,#7a,#d8
	db #73,#52,#24,#b9,#f7,#80,#cd,#db
	db #fb,#aa,#fb,#2c,#ff,#f7,#ea,#d8
	db #15,#a4,#97,#83,#b2,#8e,#56,#e0
	db #d8,#ec,#e7,#85,#da,#a6,#cb,#e9
	db #d3,#c3,#90,#f8,#a7,#6e,#e3,#5c
	db #50,#de,#b8,#7f,#50,#e1,#16,#a9
	db #ad,#1c,#3a,#44,#26,#8d,#e9,#c9
	db #00,#9a,#58,#ec,#dd,#f1,#e6,#ed
	db #38,#8c,#90,#df,#b3,#2a,#b5,#63
	db #c0,#d2,#b6,#92,#e3,#77,#0d,#2b
	db #e6,#59,#fc,#2f,#ad,#cc,#6f,#8e
	db #1a,#f9,#8a,#54,#49,#98,#36,#9a
	db #38,#96,#b9,#63,#ed,#bf,#fd,#f4
	db #e6,#d0,#23,#a0,#6b,#87,#8a,#33
	db #b7,#93,#6a,#be,#9a,#5e,#6d,#35
	db #23,#54,#ce,#3c,#6c,#00,#bd,#5d
	db #e3,#cd,#ae,#e5,#c3,#71,#c6,#cb
	db #e0,#be,#7c,#2f,#f5,#52,#88,#59
	db #a0,#28,#02,#e4,#e3,#95,#24,#f0
	db #9e,#cf,#a8,#2b,#54,#a8,#d8,#57
	db #03,#ab,#1b,#4d,#fe,#e9,#07,#71
	db #4b,#f6,#1c,#73,#af,#a4,#9f,#f1
	db #e5,#1c,#c7,#80,#11,#d4,#c7,#fb
	db #f3,#0c,#89,#f8,#a1,#df,#f3,#65
	db #a1,#8a,#67,#d2,#ac,#fb,#67,#b3
	db #ac,#e4,#75,#94,#3e,#25,#54,#fc
	db #fd,#24,#f8,#7a,#75,#ca,#50,#cc
	db #a0,#b3,#b9,#6c,#f1,#11,#e7,#4c
	db #7a,#8e,#5b,#80,#3c,#7c,#4b,#b4
	db #28,#54,#9a,#c4,#54,#de,#6b,#a0
	db #e6,#b9,#9d,#c2,#ee,#5f,#fa,#db
	db #7e,#f8,#f1,#ef,#40,#c1,#f7,#c4
	db #45,#a3,#ef,#ad,#e2,#56,#9b,#38
	db #a6,#ee,#e6,#a1,#7a,#a8,#ad,#d1
	db #10,#ed,#cc,#83,#96,#9c,#b4,#e5
	db #b8,#9d,#dc,#ca,#b5,#c9,#29,#59
	db #b6,#c6,#c6,#a1,#ae,#53,#e4,#2a
	db #9e,#5f,#b2,#9f,#d3,#cd,#11,#32
	db #c1,#22,#22,#83,#a2,#33,#01,#ab
	db #05,#01,#06,#9f,#79,#a6,#e5,#b2
	db #05,#cf,#79,#94,#da,#df,#47,#aa
	db #e2,#83,#b9,#ae,#a0,#68,#61,#9e
	db #e3,#12,#9b,#de,#6c,#f3,#51,#06
	db #51,#a2,#a2,#f3,#00,#04,#c7,#02
	db #00,#05,#fb,#c3,#0f,#0f,#0a,#18
	db #23,#a1,#8f,#d9,#ef,#88,#9a,#9e
	db #a3,#79,#37,#e5,#19,#56,#6a,#93
	db #83,#dd,#a5,#35,#00,#fe,#1a,#28
	db #ed,#e5,#50,#54,#c4,#aa,#60,#fd
	db #04,#ee,#44,#aa,#cd,#09,#f2,#a6
	db #0a,#fd,#13,#f1,#00,#09,#ad,#fd
	db #d2,#ce,#1d,#af,#1e,#1d,#9f,#af
	db #9c,#7f,#e1,#79,#05,#fe,#db,#7f
	db #e1,#e1,#e3,#00,#1d,#97,#ff,#1d
	db #a9,#7d,#01,#1d,#d7,#4f,#7a,#13
	db #41,#36,#c3,#d7,#ff,#06,#aa,#c3
	db #c3,#be,#14,#04,#66,#4f,#0f,#46
	db #b7,#6f,#06,#1d,#4f,#00,#1d,#1c
	db #15,#f9,#1d,#79,#ce,#d1,#ff,#03
	db #31,#ff,#24,#8a,#20,#8b,#ff,#00
	db #1b,#83,#28,#55,#09,#3b,#ee,#8e
	db #1d,#f7,#3e,#6d,#39,#39,#e3,#1d
	db #3b,#9c,#00,#5f,#28,#96,#95,#cd
	db #65,#85,#cf,#03,#ab,#72,#92,#1c
	db #14,#e2,#ef,#8b,#ae,#de,#d6,#e7
	db #8e,#ef,#05,#b7,#e3,#f8,#89,#0d
	db #c9,#e9,#a0,#3d,#c8,#aa,#40,#55
	db #f9,#ae,#04,#27,#e4,#aa,#f5,#e4
	db #ca,#8e,#90,#38,#cd,#02,#4e,#55
	db #aa,#69,#f9,#1e,#41,#41,#77,#7e
	db #ed,#c6,#f5,#26,#da,#2f,#e7,#33
	db #82,#1e,#41,#d5,#80,#aa,#88,#ad
	db #fe,#8c,#a8,#33,#11,#28,#aa,#28
	db #90,#ea,#11,#ec,#08,#84,#ae,#6b
	db #80,#8f,#86,#c0,#ef,#8a,#aa,#03
	db #d3,#9e,#7f,#e6,#f8,#3d,#f5,#ea
	db #bd,#ba,#ec,#bd,#ed,#8d,#d9,#fb
	db #03,#a9,#5f,#67,#00,#d1,#86,#86
	db #a0,#f1,#b4,#fd,#6e,#52,#4f,#6a
	db #9b,#7e,#ac,#c7,#a6,#cc,#41,#eb
	db #03,#00,#e2,#60,#03,#d2,#a0,#8e
	db #9b,#f3,#90,#73,#c2,#9e,#51,#79
	db #ee,#7a,#c1,#f5,#49,#c5,#00,#c3
	db #00,#03,#4a,#fc,#b9,#82,#53,#e3
	db #22,#96,#d7,#9f,#73,#90,#ba,#de
	db #cf,#e6,#4a,#a8,#94,#b3,#e5,#39
	db #bd,#dc,#7c,#4d,#13,#4b,#c7,#00
	db #9b,#08,#be,#ed,#53,#46,#01,#c5
	db #fb,#91,#1d,#e1,#9b,#a3,#ce,#b3
	db #ac,#a1,#75,#d0,#bb,#4f,#b1,#9e
	db #91,#9a,#db,#88,#cf,#d9,#d0,#f3
	db #02,#44,#47,#41,#4c,#db,#cf,#fd
	db #d9,#00,#06,#88,#cf,#a7,#dd,#c1
	db #da,#4f,#78,#ed,#c4,#dc,#e4,#ee
	db #e0,#73,#ca,#78,#06,#8e,#f9,#33
	db #06,#be,#96,#e4,#75,#03,#fc,#ab
	db #28,#57,#c1,#52,#d7,#42,#60,#45
	db #f3,#f7,#bf,#a3,#f7,#ff,#62,#93
	db #41,#cb,#fd,#f2,#9d,#3b,#8e,#e9
	db #73,#ef,#c6,#f0,#9c,#a9,#b4,#2b
	db #d7,#2b,#87,#87,#03,#a9,#67,#ed
	db #31,#ad,#ab,#a9,#39,#ff,#1d,#f0
	db #4f,#03,#e6,#4b,#b9,#58,#95,#ba
	db #8e,#96,#2b,#e7,#1c,#50,#a4,#c5
	db #b6,#3b,#72,#e8,#57,#87,#27,#03
	db #52,#e7,#37,#07,#cf,#b2,#f8,#23
	db #01,#95,#3b,#00,#f4,#de,#95,#b6
	db #bd,#b2,#c7,#04,#50,#df,#ba,#e7
	db #34,#a6,#73,#f4,#1a,#56,#5a,#a9
	db #ad,#71,#79,#23,#d3,#a0,#56,#8b
	db #0c,#43,#3d,#97,#7f,#a8,#87,#fc
	db #ad,#b1,#eb,#1d,#bb,#fc,#94,#37
	db #e9,#ca,#9f,#39,#d6,#54,#f4,#50
	db #c6,#d0,#22,#56,#a7,#b6,#bd,#51
	db #01,#ac,#c5,#2a,#3a,#66,#4a,#43
	db #09,#56,#52,#f0,#d3,#eb,#07,#8e
	db #44,#3d,#aa,#63,#9e,#d2,#82,#37
	db #b0,#b8,#b6,#fb,#a3,#d6,#6f,#05
	db #fd,#dc,#05,#b5,#bb,#ac,#a5,#8c
	db #97,#8c,#e0,#7a,#a1,#8f,#7b,#f2
	db #5f,#9f,#be,#e5,#cf,#8e,#75,#f8
	db #39,#70,#33,#a9,#8f,#cb,#2a,#63
	db #f2,#9e,#46,#63,#8f,#3f,#bf,#9a
	db #12,#de,#36,#4d,#ee,#c1,#23,#cd
	db #8f,#f4,#c8,#92,#ef,#fb,#ea,#c5
	db #de,#fd,#e6,#93,#38,#f0,#52,#7f
	db #a0,#ed,#87,#00,#5d,#fd,#9f,#bd
	db #c6,#63,#b2,#a8,#09,#9d,#32,#ab
	db #e9,#9a,#cc,#66,#9e,#a2,#3f,#fd
	db #63,#85,#8a,#85,#e9,#a0,#cd,#5c
	db #af,#f4,#b2,#5f,#f0,#a0,#cf,#50
	db #33,#9e,#bf,#94,#af,#a0,#aa,#e6
	db #9e,#b3,#50,#2f,#f8,#3f,#b2,#79
	db #7a,#fd,#bf,#c1,#07,#22,#33,#11
	db #fd,#f7,#06,#03,#11,#22,#22,#17
	db #8e,#44,#15,#a9,#e3,#d7,#53,#12
	db #94,#d6,#ab,#33,#d7,#1d,#35,#a0
	db #68,#01,#9e,#1a,#50,#9e,#ed,#67
	db #ca,#a3,#f3,#51,#fa,#e9,#04,#00
	db #04,#17,#a2,#f3,#02,#ae,#ff,#7f
	db #00,#ff,#ff,#00,#00,#00,#00,#00
	db #80,#12,#00,#00,#00,#c3,#72,#88
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
	db #8a,#b3,#6c,#e8,#8a,#00,#25,#8a
	db #6d,#8a,#73,#8a,#1d,#8a,#00,#22
	db #8a,#2b,#8a,#70,#8a,#03,#c0,#b0
	db #1c,#02,#13,#02,#01,#7f,#09,#3e
	db #fc,#8a,#02,#8b,#01,#00,#04,#8b
	db #98,#8b,#ee,#8b,#f8,#e3,#05,#0b
	db #cc,#a0,#8c,#00,#12,#8d,#71,#8d
	db #7a,#8d,#f2,#8d,#00,#4f,#8e,#58
	db #8e,#e5,#8e,#40,#8f,#00,#84,#8f
	db #ff,#8f,#56,#90,#d6,#90,#0e,#5a
	db #91,#b1,#91,#0b,#4d,#30,#92,#0b
	db #08,#00,#75,#92,#14,#02,#83,#8a
	db #00,#8d,#8a,#96,#8a,#b1,#8a,#c8
	db #8a,#02,#d5,#8a,#e2,#8a,#ef,#8a
	db #00,#88,#0f,#ff,#37,#8c,#d6,#95
	db #17,#21,#00,#09,#0a,#0f,#9d,#1e
	db #98,#08,#4f,#14,#ff,#ff,#4f,#e9
	db #67,#05,#df,#49,#01,#0c,#02,#02
	db #46,#05,#0f,#c0,#37,#61,#1a,#2f
	db #05,#01,#11,#2e,#11,#01,#2d,#05
	db #01,#89,#11,#01,#cf,#4c,#98,#16
	db #0f,#03,#2f,#03,#2f,#07,#0f,#dc
	db #57,#38,#0c,#63,#04,#0c,#e9,#62
	db #38,#0c,#41,#09,#31,#0f,#f6,#8a
	db #fc,#0c,#cb,#0a,#19,#00,#62,#83
	db #01,#62,#80,#02,#12,#ca,#c2,#7a
	db #07,#7a,#07,#09,#c4,#02,#ce,#72
	db #08,#72,#08,#0b,#6c,#80,#01,#02
	db #0e,#4d,#6c,#83,#08,#56,#80,#0e
	db #02,#0e,#fc,#26,#fe,#17,#09,#68
	db #08,#68,#08,#27,#6a,#17,#6a,#1d
	db #76,#26,#29,#a8,#76,#05,#02,#02
	db #d0,#b7,#24,#27,#4e,#9f,#3c,#02
	db #c4,#03,#02,#49,#04,#02,#05,#02
	db #06,#02,#22,#07,#02,#08,#ce,#95
	db #39,#ab,#87,#18,#3a,#1e,#27,#d6
	db #36,#05,#39,#0d,#4e,#32,#16,#1c
	db #36,#05,#38,#38,#05,#4e,#40,#05
	db #3d,#1c,#9d,#3c,#16,#fa,#10,#b5
	db #3c,#10,#3b,#09,#80,#c2,#6c,#87
	db #04,#e6,#88,#90,#05,#ee,#47,#77
	db #f3,#f3,#49,#5e,#05,#5e,#05,#25
	db #60,#05,#60,#05,#c8,#14,#cb,#6a
	db #54,#05,#b8,#02,#9c,#9d,#05,#5a
	db #1d,#f3,#11,#0b,#cf,#23,#c3,#56
	db #86,#5e,#83,#1a,#c6,#b1,#24,#58
	db #08,#58,#a8,#bc,#c4,#c4,#09,#02
	db #0a,#91,#02,#0b,#02,#0c,#ce,#26
	db #e0,#5a,#bd,#08,#41,#7e,#38,#ef
	db #2f,#04,#5c,#08,#5c,#e1,#71,#36
	db #f9,#2e,#0f,#36,#08,#8d,#37,#ff
	db #2e,#33,#8b,#cb,#2e,#1c,#bf,#08
	db #91,#2f,#22,#e2,#2c,#d2,#05,#c2
	db #70,#82,#61,#c0,#1e,#68,#83,#32
	db #c2,#e7,#79,#8f,#a0,#c6,#8a,#9a
	db #9d,#36,#aa,#59,#c4,#32,#66,#14
	db #66,#f2,#3b,#9e,#b4,#71,#0e,#70
	db #08,#29,#70,#dc,#ec,#94,#59,#c2
	db #d9,#e2,#32,#f8,#08,#d1,#33,#c4
	db #ef,#41,#88,#2c,#bf,#f1,#df,#11
	db #08,#37,#2d,#19,#52,#07,#2d,#e0
	db #99,#45,#05,#dd,#9a,#12,#04,#08
	db #47,#83,#83,#a4,#ec,#73,#18,#46
	db #b6,#c7,#9e,#31,#a7,#47,#aa,#c5
	db #35,#cf,#1a,#36,#b5,#cd,#b4,#b3
	db #0b,#cc,#ab,#bd,#a9,#76,#3b,#76
	db #29,#da,#7e,#05,#8a,#02,#02,#84
	db #05,#02,#9d,#d2,#27,#2e,#83,#88
	db #d2,#96,#7b,#e5,#4c,#2e,#85,#2f
	db #02,#3c,#c0,#da,#b7,#bd,#2f,#2d
	db #0f,#13,#05,#33,#92,#f0,#c2,#46
	db #68,#f0,#95,#5e,#05,#1c,#0b,#03
	db #88,#04,#99,#bd,#07,#3b,#0b,#45
	db #06,#ab,#aa,#1b,#1a,#ef,#0f,#d2
	db #8a,#b9,#24,#8a,#dd,#7e,#cb,#ce
	db #3e,#d9,#88,#0e,#3c,#88,#0e,#ba
	db #cc,#eb,#26,#0e,#94,#80,#0e,#80
	db #f1,#0e,#71,#c2,#f6,#eb,#1f,#93
	db #97,#2e,#cf,#3d,#2a,#85,#3d,#95
	db #2d,#91,#5e,#85,#f1,#4b,#91,#ed
	db #cf,#3f,#07,#3f,#dc,#8f,#f4,#0c
	db #a7,#e6,#b0,#59,#97,#e0,#9e,#f4
	db #9f,#96,#97,#da,#e6,#29,#ec,#f7
	db #7e,#0b,#09,#d9,#7e,#c8,#ff,#00
	db #f0,#00,#ff,#00,#ff,#80,#00,#00
; #a052
; ld de,#8a00
; call #8000
;
.init_music
	ld de,l8a00
	jp real_init_music
;
;
.music_info
	db "Mutants (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
