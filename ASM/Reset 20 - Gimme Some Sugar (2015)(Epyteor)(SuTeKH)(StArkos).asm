; Music of Reset 20 - Gimme Some Sugar (2015)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 22/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RES20GSS.BIN"
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
	ld a,#03
.l8017 equ $ + 1
	cp #03
	jr z,l8021
	inc a
	ld (l8015),a
	jp l82b0
.l8021
	xor a
	ld (l8015),a
.l8025
	scf
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
	ld hl,l8a1a
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
	ld hl,l8a1e
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
	ld hl,l8a20
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
	ld hl,l8aa4
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
	ld hl,l8aa7
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
	ld hl,l8aa7
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
	ld hl,l8aa7
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
	ld de,l8aa4
	xor a
	sbc hl,de
	jr nz,l82b0
	ld (l8038),a
	ld (l8072),a
	ld (l8108),a
.l8294 equ $ + 1
	ld hl,l8a1a
	ld (l803e),hl
.l829a equ $ + 1
	ld hl,l8a1e
	ld (l807f),hl
.l82a0 equ $ + 1
	ld hl,l8a20
	ld (l809d),hl
.l82a6 equ $ + 1
	ld hl,l8aa4
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
	ld hl,l8ac2
	ld iy,l86d8
	ld a,(l82d7)
	call l8444
	ex de,hl
.l82d7 equ $ + 1
	ld a,#00
.l82d9 equ $ + 1
	cp #ff
	jr z,l82df
	inc a
	jr l82fc
.l82e0 equ $ + 1
.l82df
	ld hl,l8ac5
	xor a
	sbc hl,de
	jr nz,l82f8
.l82e8 equ $ + 1
	ld de,l8ac2
.l82ea
	or a
	jr c,l82f8
.l82ee equ $ + 1
	ld hl,l8ac5
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
	ld hl,l8ac2
	ld iy,l8729
	ld a,(l8329)
	call l8444
	ex de,hl
.l8329 equ $ + 1
	ld a,#00
.l832b equ $ + 1
	cp #ff
	jr z,l8331
	inc a
	jr l834e
.l8332 equ $ + 1
.l8331
	ld hl,l8ac5
	xor a
	sbc hl,de
	jr nz,l834a
.l833a equ $ + 1
	ld de,l8ac2
.l833c
	or a
	jr c,l834a
.l8340 equ $ + 1
	ld hl,l8ac5
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
	ld hl,l8ac2
	ld iy,l877a
	ld a,(l837b)
	call l8444
	ex de,hl
.l837b equ $ + 1
	ld a,#00
.l837d equ $ + 1
	cp #ff
	jr z,l8383
	inc a
	jr l83a0
.l8384 equ $ + 1
.l8383
	ld hl,l8ac5
	xor a
	sbc hl,de
	jr nz,l839c
.l838c equ $ + 1
	ld de,l8ac2
.l838e
	or a
	jr c,l839c
.l8392 equ $ + 1
	ld hl,l8ac5
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
	cp #ff
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
	cp #ff
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
	cp #ff
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
	cp #ff
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
	cp #ff
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
	cp #ff
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
	cp #ff
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
	cp #ff
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
	cp #ff
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
	cp #ff
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
	cp #ff
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
	cp #ff
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
	cp #ff
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
.l8a00
;
	db #53,#4b,#31,#30
	db #00,#8a,#01,#32,#00,#1e,#8a,#20
	db #8a,#a4,#8a,#a7,#8a,#1a,#8a,#1e
.l8a1a equ $ + 6
	db #8a,#20,#8a,#a4,#8a,#03,#c0,#00
.l8a20 equ $ + 4
.l8a1e equ $ + 2
	db #00,#29,#7f,#15,#63,#8b,#e4,#8b
	db #66,#8c,#a8,#8c,#29,#8d,#9d,#8d
	db #63,#8b,#e1,#8d,#63,#8e,#a8,#8c
	db #d1,#8e,#45,#8f,#63,#8b,#b3,#8f
	db #18,#90,#8c,#90,#0d,#91,#6c,#91
	db #63,#8b,#b3,#8f,#18,#90,#e0,#91
	db #61,#92,#af,#92,#63,#8b,#e4,#8b
	db #63,#8e,#a8,#8c,#29,#8d,#45,#8f
	db #63,#8b,#23,#93,#e3,#93,#a8,#8c
	db #57,#94,#45,#8f,#63,#8b,#23,#93
	db #e3,#93,#e0,#91,#17,#95,#d7,#95
	db #63,#8b,#e1,#8d,#63,#8e,#a8,#8c
	db #d1,#8e,#45,#8f,#63,#8b,#b3,#8f
	db #18,#90,#8c,#90,#0d,#91,#6c,#91
	db #63,#8b,#b3,#8f,#18,#90,#e0,#91
	db #61,#92,#af,#92,#63,#8b,#23,#93
	db #e3,#93,#e0,#91,#17,#95,#d7,#95
.l8aa7 equ $ + 3
.l8aa4
	db #2a,#4b,#96,#bb,#8a,#c5,#8a,#d8
	db #8a,#eb,#8a,#f3,#8a,#02,#8b,#1a
	db #8b,#32,#8b,#46,#8b,#4f,#8b,#c2
.l8ac2 equ $ + 6
	db #8a,#c5,#8a,#ff,#37,#00,#00,#00
.l8ac5 equ $ + 1
	db #00,#cc,#8a,#d8,#8a,#00,#37,#00
	db #4d,#01,#00,#4d,#01,#00,#4d,#ff
	db #ff,#4d,#ff,#ff,#df,#8a,#eb,#8a
	db #00,#37,#00,#4f,#ff,#ff,#4f,#ff
	db #ff,#4f,#01,#00,#4f,#01,#00,#f2
	db #8a,#f3,#8a,#00,#37,#00,#0f,#c2
	db #8a,#02,#8b,#00,#b7,#00,#0f,#0f
	db #0f,#0f,#0e,#0e,#0d,#0c,#c2,#8a
	db #1a,#8b,#00,#b7,#00,#1f,#67,#d5
	db #00,#1f,#65,#52,#01,#1e,#63,#aa
	db #01,#0f,#0e,#0e,#0d,#0c,#c2,#8a
	db #32,#8b,#00,#b7,#00,#1f,#7f,#c3
	db #01,#1f,#60,#f1,#01,#1e,#60,#a4
	db #02,#0f,#0e,#0e,#0d,#0c,#45,#8b
	db #46,#8b,#00,#37,#00,#1f,#7f,#c3
	db #01,#1f,#60,#f1,#01,#1e,#60,#a4
	db #02,#0d,#4e,#8b,#4f,#8b,#00,#37
	db #00,#0b,#0f,#62,#8b,#63,#8b,#00
	db #37,#00,#1f,#67,#d5,#00,#1f,#65
	db #52,#01,#1e,#63,#aa,#01,#0d,#78
	db #83,#01,#86,#0b,#7e,#03,#78,#07
	db #86,#03,#7e,#03,#78,#03,#86,#07
	db #7e,#03,#78,#0b,#86,#03,#7e,#07
	db #78,#03,#86,#03,#7e,#03,#78,#07
	db #86,#03,#7e,#0b,#78,#03,#86,#07
	db #7e,#03,#78,#0b,#86,#03,#7e,#07
	db #78,#03,#86,#03,#7e,#03,#78,#07
	db #86,#03,#7e,#03,#78,#03,#86,#07
	db #74,#03,#82,#0b,#7a,#03,#74,#07
	db #82,#03,#7a,#03,#74,#03,#82,#07
	db #7a,#03,#74,#0b,#82,#03,#7a,#07
	db #74,#03,#82,#03,#7a,#03,#74,#07
	db #82,#03,#7a,#0b,#74,#03,#82,#07
	db #7a,#03,#74,#0b,#82,#03,#7a,#07
	db #74,#03,#82,#03,#7a,#03,#74,#07
	db #82,#03,#7a,#03,#74,#03,#82,#07
	db #60,#81,#02,#d6,#5d,#66,#89,#03
	db #60,#81,#02,#6e,#89,#03,#66,#81
	db #02,#78,#89,#03,#6e,#81,#02,#66
	db #89,#03,#78,#81,#02,#d2,#6f,#78
	db #89,#03,#66,#81,#02,#d2,#61,#ce
	db #5d,#ce,#61,#74,#89,#03,#66,#81
	db #02,#6a,#89,#03,#74,#81,#02,#66
	db #89,#03,#6a,#81,#02,#66,#89,#03
	db #74,#81,#02,#62,#89,#03,#6a,#81
	db #02,#62,#89,#03,#66,#81,#02,#6a
	db #89,#03,#62,#81,#02,#d2,#5d,#6a
	db #89,#03,#62,#81,#02,#74,#89,#03
	db #6a,#81,#02,#60,#89,#03,#7a,#81
	db #02,#74,#89,#03,#78,#81,#02,#6a
	db #89,#03,#74,#81,#02,#62,#89,#03
	db #6a,#81,#02,#5c,#89,#03,#74,#81
	db #02,#c2,#30,#81,#04,#ce,#31,#ce
	db #49,#ce,#31,#ce,#31,#ce,#49,#ce
	db #31,#ce,#31,#ce,#49,#ce,#31,#ce
	db #31,#ce,#49,#ce,#31,#ce,#31,#ce
	db #49,#ce,#37,#ce,#2d,#ce,#2d,#ce
	db #45,#ce,#2d,#ce,#2d,#ce,#45,#ce
	db #2d,#ce,#2d,#ce,#45,#ce,#2d,#ce
	db #2d,#ce,#45,#ce,#2d,#ce,#2d,#ce
	db #45,#ce,#33,#c2,#78,#83,#01,#86
	db #0b,#7e,#03,#78,#07,#86,#03,#7e
	db #03,#78,#03,#86,#07,#7e,#03,#78
	db #0b,#86,#03,#7e,#07,#78,#03,#86
	db #03,#7e,#03,#78,#07,#86,#03,#7e
	db #0b,#78,#03,#86,#07,#7e,#03,#78
	db #0b,#86,#03,#7e,#07,#78,#03,#86
	db #03,#7e,#03,#78,#07,#86,#03,#7e
	db #03,#78,#03,#86,#07,#6e,#03,#7c
	db #0b,#76,#03,#6e,#07,#7c,#03,#76
	db #03,#6e,#03,#7c,#07,#76,#03,#6e
	db #0b,#7c,#03,#76,#07,#6e,#03,#7c
	db #03,#76,#03,#6e,#07,#7c,#03,#76
	db #0b,#6e,#03,#7c,#07,#76,#03,#6e
	db #0b,#7c,#03,#76,#07,#6e,#03,#7c
	db #03,#76,#03,#6e,#07,#7c,#03,#76
	db #03,#6e,#03,#7c,#07,#60,#81,#02
	db #d6,#5d,#66,#89,#03,#60,#81,#02
	db #6e,#89,#03,#66,#81,#02,#78,#89
	db #03,#6e,#81,#02,#66,#89,#03,#78
	db #81,#02,#d2,#6f,#78,#89,#03,#66
	db #81,#02,#d2,#61,#ce,#5d,#ce,#61
	db #74,#89,#03,#66,#81,#02,#6a,#89
	db #03,#64,#01,#6e,#09,#5e,#01,#6e
	db #09,#64,#01,#6e,#09,#76,#01,#6e
	db #09,#7c,#01,#6e,#09,#76,#01,#6e
	db #09,#6e,#01,#5e,#09,#64,#01,#5e
	db #09,#64,#01,#6e,#09,#5e,#01,#6e
	db #09,#64,#01,#6e,#09,#76,#01,#6e
	db #09,#7c,#01,#6e,#09,#76,#01,#6e
	db #09,#6e,#01,#5e,#09,#64,#01,#5e
	db #09,#30,#81,#04,#ce,#31,#ce,#49
	db #ce,#31,#ce,#31,#ce,#49,#ce,#31
	db #ce,#31,#ce,#49,#ce,#31,#ce,#31
	db #ce,#49,#ce,#31,#ce,#31,#ce,#49
	db #ce,#37,#ce,#27,#ce,#27,#ce,#3f
	db #ce,#27,#ce,#27,#ce,#3f,#ce,#27
	db #ce,#27,#ce,#3f,#ce,#27,#ce,#27
	db #ce,#3f,#ce,#27,#ce,#27,#ce,#3f
	db #ce,#2e,#80,#05,#2f,#78,#81,#02
	db #d6,#8d,#7e,#89,#03,#78,#81,#02
	db #8c,#89,#03,#7c,#81,#02,#78,#89
	db #03,#86,#81,#02,#7e,#89,#03,#78
	db #81,#02,#d2,#87,#7e,#89,#03,#78
	db #81,#02,#d2,#79,#ce,#7f,#ce,#87
	db #74,#89,#03,#66,#81,#02,#6a,#89
	db #03,#8c,#81,#02,#7e,#89,#03,#82
	db #81,#02,#7e,#89,#03,#8c,#81,#02
	db #7e,#89,#03,#82,#81,#02,#7e,#89
	db #03,#8c,#81,#02,#78,#89,#03,#82
	db #81,#02,#d2,#63,#74,#89,#03,#66
	db #81,#02,#74,#89,#03,#6a,#81,#02
	db #7a,#89,#03,#74,#81,#02,#82,#89
	db #03,#62,#81,#02,#74,#89,#03,#66
	db #81,#02,#74,#89,#03,#6a,#81,#02
	db #7a,#89,#03,#74,#81,#02,#c2,#30
	db #81,#06,#ce,#30,#80,#04,#ce,#49
	db #ce,#30,#80,#06,#ce,#30,#80,#05
	db #ce,#48,#80,#04,#ce,#31,#ce,#30
	db #80,#06,#ce,#48,#80,#04,#ce,#30
	db #80,#06,#ce,#30,#80,#04,#ce,#49
	db #ce,#30,#80,#05,#ce,#30,#80,#04
	db #ce,#49,#ce,#36,#80,#06,#ce,#2d
	db #ce,#2c,#80,#04,#ce,#45,#ce,#2c
	db #80,#06,#ce,#2c,#80,#05,#ce,#44
	db #80,#04,#ce,#2d,#ce,#2c,#80,#06
	db #ce,#44,#80,#04,#ce,#2c,#80,#06
	db #ce,#2c,#80,#04,#ce,#45,#ce,#2c
	db #80,#05,#ce,#2c,#80,#04,#ce,#45
	db #ce,#32,#80,#06,#c2,#78,#81,#02
	db #d6,#7f,#8c,#89,#03,#78,#81,#02
	db #86,#89,#03,#8c,#81,#02,#7e,#89
	db #03,#86,#81,#02,#7e,#89,#03,#78
	db #81,#02,#d2,#87,#7e,#89,#03,#78
	db #81,#02,#d2,#79,#ce,#6f,#ce,#67
	db #70,#89,#03,#60,#81,#02,#6a,#89
	db #03,#64,#01,#6e,#09,#6e,#01,#6e
	db #09,#76,#01,#6e,#09,#7c,#01,#6e
	db #09,#86,#01,#6e,#09,#7c,#01,#6e
	db #09,#76,#01,#5e,#09,#6e,#01,#5e
	db #09,#7c,#01,#6e,#09,#86,#01,#6e
	db #09,#8e,#01,#6e,#09,#94,#01,#6e
	db #09,#9e,#01,#6e,#09,#94,#01,#6e
	db #09,#8e,#01,#5e,#09,#86,#01,#5e
	db #09,#30,#81,#06,#ce,#30,#80,#04
	db #ce,#49,#ce,#30,#80,#06,#ce,#30
	db #80,#05,#ce,#48,#80,#04,#ce,#31
	db #ce,#30,#80,#06,#ce,#48,#80,#04
	db #ce,#30,#80,#06,#ce,#30,#80,#04
	db #ce,#49,#ce,#30,#80,#05,#ce,#30
	db #80,#04,#ce,#49,#ce,#36,#80,#06
	db #ce,#27,#ce,#26,#80,#04,#ce,#3f
	db #ce,#26,#80,#06,#ce,#26,#80,#05
	db #ce,#3e,#80,#04,#ce,#27,#ce,#26
	db #80,#06,#ce,#3e,#80,#04,#ce,#26
	db #80,#06,#ce,#26,#80,#04,#ce,#3f
	db #ce,#26,#80,#05,#ce,#26,#80,#04
	db #ce,#3f,#ce,#2e,#80,#06,#c2,#60
	db #81,#02,#d8,#60,#83,#03,#60,#80
	db #02,#60,#85,#03,#60,#80,#02,#60
	db #87,#03,#60,#80,#02,#60,#89,#03
	db #60,#80,#02,#d4,#60,#8b,#03,#60
	db #80,#02,#d6,#60,#8d,#03,#c4,#07
	db #c4,#08,#c4,#09,#c4,#0a,#c4,#0b
	db #6a,#91,#02,#c4,#07,#c4,#06,#c4
	db #05,#c4,#04,#c4,#03,#c4,#02,#c4
	db #01,#c4,#00,#d2,#60,#80,#03,#c6
	db #f9,#63,#ce,#c6,#01,#61,#5d,#ce
	db #5c,#80,#02,#ce,#53,#d2,#52,#c0
	db #03,#f4,#c6,#f4,#c6,#f5,#c6,#f5
	db #c6,#f5,#c6,#f5,#30,#81,#07,#ce
	db #30,#85,#08,#ce,#31,#ce,#30,#81
	db #07,#ce,#30,#80,#09,#ce,#30,#85
	db #08,#ce,#31,#ce,#30,#81,#07,#ce
	db #30,#85,#08,#ce,#30,#81,#07,#ce
	db #30,#85,#08,#ce,#31,#ce,#30,#81
	db #09,#ce,#30,#80,#07,#ce,#30,#85
	db #08,#ce,#30,#81,#07,#ce,#2d,#ce
	db #2c,#85,#08,#ce,#2d,#ce,#2c,#81
	db #07,#ce,#2c,#80,#09,#ce,#2c,#80
	db #07,#ce,#2c,#85,#08,#ce,#2c,#81
	db #07,#ce,#2c,#85,#08,#ce,#2c,#81
	db #07,#ce,#2c,#85,#08,#ce,#2c,#81
	db #07,#ce,#2c,#80,#09,#ce,#2c,#85
	db #08,#ce,#2c,#81,#09,#ce,#2d,#c2
	db #6e,#83,#01,#7c,#0b,#74,#03,#6e
	db #07,#7c,#03,#74,#03,#6e,#03,#7c
	db #07,#74,#03,#6e,#0b,#7c,#03,#74
	db #07,#6e,#03,#7c,#03,#74,#03,#6e
	db #07,#7c,#03,#74,#0b,#6e,#03,#7c
	db #07,#74,#03,#6e,#0b,#7c,#03,#74
	db #07,#6e,#03,#7c,#03,#74,#03,#6e
	db #07,#7c,#03,#74,#03,#6e,#03,#7c
	db #07,#6a,#03,#78,#0b,#70,#03,#6a
	db #07,#78,#03,#70,#03,#6a,#03,#78
	db #07,#70,#03,#6a,#0b,#78,#03,#70
	db #07,#6a,#03,#78,#03,#70,#03,#6a
	db #07,#78,#03,#70,#0b,#6a,#03,#78
	db #07,#70,#03,#6a,#0b,#78,#03,#70
	db #07,#6a,#03,#78,#03,#70,#03,#6a
	db #07,#78,#03,#70,#03,#6a,#03,#78
	db #07,#64,#81,#02,#d8,#64,#83,#03
	db #64,#80,#02,#64,#85,#03,#64,#80
	db #02,#64,#87,#03,#64,#80,#02,#64
	db #89,#03,#64,#80,#02,#d4,#64,#8b
	db #03,#64,#80,#02,#d6,#64,#8d,#03
	db #c4,#07,#c4,#08,#c4,#09,#c4,#0a
	db #c4,#0b,#78,#91,#02,#c4,#07,#c4
	db #06,#c4,#05,#c4,#04,#c4,#03,#c4
	db #02,#c4,#01,#c4,#00,#d2,#6e,#80
	db #03,#c6,#fa,#71,#ce,#c6,#04,#6f
	db #6b,#ce,#6a,#80,#02,#ce,#61,#d2
	db #71,#ce,#6b,#ce,#61,#60,#80,#04
	db #26,#81,#07,#ce,#26,#85,#08,#ce
	db #27,#ce,#26,#81,#07,#ce,#26,#80
	db #09,#ce,#26,#85,#08,#ce,#27,#ce
	db #26,#81,#07,#ce,#26,#85,#08,#ce
	db #26,#81,#07,#ce,#26,#85,#08,#ce
	db #27,#ce,#26,#81,#09,#ce,#26,#80
	db #07,#ce,#26,#85,#08,#ce,#26,#81
	db #07,#ce,#23,#ce,#22,#85,#08,#ce
	db #23,#ce,#22,#81,#07,#ce,#22,#80
	db #09,#ce,#22,#80,#07,#ce,#22,#85
	db #08,#ce,#22,#81,#07,#ce,#22,#85
	db #08,#ce,#22,#81,#07,#ce,#22,#85
	db #08,#ce,#22,#81,#07,#ce,#22,#80
	db #09,#ce,#22,#85,#08,#ce,#22,#81
	db #09,#ce,#23,#c2,#78,#83,#01,#86
	db #0b,#7e,#03,#78,#07,#86,#03,#7e
	db #03,#78,#03,#86,#07,#7e,#03,#78
	db #0b,#86,#03,#7e,#07,#78,#03,#86
	db #03,#7e,#03,#78,#07,#86,#03,#7e
	db #0b,#78,#03,#86,#07,#7e,#03,#78
	db #0b,#86,#03,#7e,#07,#78,#03,#86
	db #03,#7e,#03,#78,#07,#86,#03,#7e
	db #03,#78,#03,#86,#07,#6a,#03,#78
	db #0b,#70,#03,#6a,#07,#78,#03,#70
	db #03,#6a,#03,#78,#07,#70,#03,#6a
	db #0b,#78,#03,#70,#07,#6a,#03,#78
	db #03,#70,#03,#6a,#07,#78,#03,#70
	db #0b,#6a,#03,#78,#07,#70,#03,#6a
	db #0b,#78,#03,#70,#07,#6a,#03,#78
	db #03,#70,#03,#6a,#07,#78,#03,#70
	db #03,#6a,#03,#78,#07,#60,#81,#02
	db #d8,#60,#83,#03,#60,#80,#02,#60
	db #85,#03,#60,#80,#02,#60,#87,#03
	db #60,#80,#02,#60,#89,#03,#60,#80
	db #02,#d4,#60,#8b,#03,#60,#80,#02
	db #d6,#60,#8d,#03,#c4,#07,#c4,#08
	db #c4,#09,#c4,#0a,#c4,#0b,#c4,#0c
	db #c4,#0d,#c4,#0e,#c4,#0f,#f4,#60
	db #c1,#04,#1f,#c6,#1f,#60,#40,#1f
	db #c6,#1f,#c6,#1f,#c6,#1f,#5c,#40
	db #1f,#c6,#1f,#30,#81,#07,#ce,#30
	db #85,#08,#ce,#31,#ce,#30,#81,#07
	db #ce,#30,#80,#09,#ce,#30,#85,#08
	db #ce,#31,#ce,#30,#81,#07,#ce,#30
	db #85,#08,#ce,#30,#81,#07,#ce,#30
	db #85,#08,#ce,#31,#ce,#30,#81,#09
	db #ce,#30,#80,#07,#ce,#30,#85,#08
	db #ce,#30,#81,#07,#ce,#23,#ce,#22
	db #85,#08,#ce,#23,#ce,#22,#81,#07
	db #ce,#22,#80,#09,#ce,#22,#80,#07
	db #ce,#22,#85,#08,#ce,#22,#81,#07
	db #ce,#22,#85,#08,#ce,#22,#81,#07
	db #ce,#22,#85,#08,#ce,#22,#81,#07
	db #ce,#22,#80,#09,#ce,#22,#85,#08
	db #ce,#22,#81,#09,#ce,#23,#c2,#6e
	db #81,#02,#60,#89,#03,#66,#81,#02
	db #6e,#89,#03,#60,#81,#02,#66,#89
	db #03,#6e,#81,#02,#60,#89,#03,#66
	db #81,#02,#6e,#89,#03,#60,#81,#02
	db #66,#89,#03,#6e,#81,#02,#60,#89
	db #03,#66,#81,#02,#6e,#89,#03,#60
	db #81,#02,#66,#89,#03,#6e,#81,#02
	db #60,#89,#03,#66,#81,#02,#6e,#89
	db #03,#60,#81,#02,#66,#89,#03,#6e
	db #81,#02,#60,#89,#03,#66,#81,#02
	db #6e,#89,#03,#60,#81,#02,#66,#89
	db #03,#6e,#81,#02,#60,#89,#03,#6a
	db #81,#02,#5c,#89,#03,#62,#81,#02
	db #6a,#89,#03,#5c,#81,#02,#62,#89
	db #03,#6a,#81,#02,#5c,#89,#03,#62
	db #81,#02,#6a,#89,#03,#5c,#81,#02
	db #62,#89,#03,#6a,#81,#02,#5c,#89
	db #03,#62,#81,#02,#6a,#89,#03,#5c
	db #81,#02,#62,#89,#03,#6a,#81,#02
	db #5c,#89,#03,#62,#81,#02,#6a,#89
	db #03,#5c,#81,#02,#62,#89,#03,#6a
	db #81,#02,#5c,#89,#03,#62,#81,#02
	db #6a,#89,#03,#5c,#81,#02,#62,#89
	db #03,#6a,#81,#02,#5c,#89,#03,#30
	db #81,#07,#ce,#30,#80,#04,#ce,#49
	db #ce,#30,#80,#07,#ce,#30,#80,#09
	db #ce,#48,#80,#04,#ce,#31,#ce,#30
	db #80,#07,#ce,#48,#80,#04,#ce,#30
	db #80,#07,#ce,#30,#80,#04,#ce,#49
	db #ce,#30,#80,#09,#ce,#30,#80,#07
	db #ce,#48,#80,#04,#ce,#36,#80,#07
	db #ce,#2d,#ce,#2c,#80,#04,#ce,#45
	db #ce,#2c,#80,#07,#ce,#2c,#80,#09
	db #ce,#44,#80,#07,#ce,#2c,#80,#04
	db #ce,#2c,#80,#07,#ce,#44,#80,#04
	db #ce,#2c,#80,#07,#ce,#2c,#80,#04
	db #ce,#44,#80,#07,#ce,#2c,#80,#09
	db #ce,#2c,#80,#04,#ce,#44,#80,#09
	db #ce,#33,#c2,#6e,#81,#02,#60,#89
	db #03,#66,#81,#02,#6e,#89,#03,#60
	db #81,#02,#66,#89,#03,#6e,#81,#02
	db #60,#89,#03,#66,#81,#02,#6e,#89
	db #03,#60,#81,#02,#66,#89,#03,#6e
	db #81,#02,#60,#89,#03,#66,#81,#02
	db #6e,#89,#03,#60,#81,#02,#66,#89
	db #03,#6e,#81,#02,#60,#89,#03,#66
	db #81,#02,#6e,#89,#03,#60,#81,#02
	db #66,#89,#03,#6e,#81,#02,#60,#89
	db #03,#66,#81,#02,#6e,#89,#03,#60
	db #81,#02,#66,#89,#03,#6e,#81,#02
	db #60,#89,#03,#6e,#81,#02,#5e,#89
	db #03,#64,#81,#02,#6e,#89,#03,#5e
	db #81,#02,#64,#89,#03,#6e,#81,#02
	db #5e,#89,#03,#64,#81,#02,#6e,#89
	db #03,#5e,#81,#02,#64,#89,#03,#6e
	db #81,#02,#5e,#89,#03,#64,#81,#02
	db #6e,#89,#03,#5e,#81,#02,#64,#89
	db #03,#6e,#81,#02,#5e,#89,#03,#64
	db #81,#02,#6e,#89,#03,#5e,#81,#02
	db #64,#89,#03,#6e,#81,#02,#5e,#89
	db #03,#64,#81,#02,#6e,#89,#03,#5e
	db #81,#02,#64,#89,#03,#6e,#81,#02
	db #5e,#89,#03,#6e,#81,#02,#60,#89
	db #03,#66,#81,#02,#6e,#89,#03,#60
	db #81,#02,#66,#89,#03,#6e,#81,#02
	db #60,#89,#03,#66,#81,#02,#6e,#89
	db #03,#60,#81,#02,#66,#89,#03,#6e
	db #81,#02,#60,#89,#03,#66,#81,#02
	db #6e,#89,#03,#60,#81,#02,#66,#89
	db #03,#6e,#81,#02,#60,#89,#03,#66
	db #81,#02,#6e,#89,#03,#60,#81,#02
	db #66,#89,#03,#6e,#81,#02,#60,#89
	db #03,#66,#81,#02,#6e,#89,#03,#60
	db #81,#02,#66,#89,#03,#6e,#81,#02
	db #60,#89,#03,#60,#81,#02,#52,#89
	db #03,#58,#81,#02,#60,#89,#03,#52
	db #81,#02,#58,#89,#03,#60,#81,#02
	db #52,#89,#03,#58,#81,#02,#60,#89
	db #03,#52,#81,#02,#58,#89,#03,#60
	db #81,#02,#52,#89,#03,#58,#81,#02
	db #60,#89,#03,#52,#81,#02,#58,#89
	db #03,#60,#81,#02,#52,#89,#03,#58
	db #81,#02,#60,#89,#03,#52,#81,#02
	db #58,#89,#03,#60,#81,#02,#52,#89
	db #03,#58,#81,#02,#60,#89,#03,#52
	db #81,#02,#58,#89,#03,#60,#81,#02
	db #52,#89,#03,#30,#81,#07,#ce,#30
	db #80,#04,#ce,#49,#ce,#30,#80,#07
	db #ce,#30,#80,#09,#ce,#48,#80,#04
	db #ce,#31,#ce,#30,#80,#07,#ce,#48
	db #80,#04,#ce,#30,#80,#07,#ce,#30
	db #80,#04,#ce,#49,#ce,#30,#80,#09
	db #ce,#30,#80,#07,#ce,#48,#80,#04
	db #ce,#36,#80,#07,#ce,#23,#ce,#22
	db #80,#04,#ce,#3b,#ce,#22,#80,#07
	db #ce,#22,#80,#09,#ce,#3a,#80,#07
	db #ce,#22,#80,#04,#ce,#22,#80,#07
	db #ce,#3a,#80,#04,#ce,#22,#80,#07
	db #ce,#22,#80,#04,#ce,#3a,#80,#07
	db #ce,#22,#80,#09,#ce,#22,#80,#04
	db #ce,#3a,#80,#09,#ce,#29,#c2,#ff
	db #00,#00,#00,#00,#dd,#7d,#32,#3f
	db #02,#81,#22,#ba,#82,#d9,#22,#ac
	db #24,#79,#e1,#52,#27,#b4,#b4,#40
	db #fd,#b4,#20,#39,#00,#32,#d7,#82
	db #57,#7b,#32,#3b,#81,#08,#6a,#65
	db #22,#b7,#cb,#81,#a7,#8a,#eb,#29
	db #19,#5d,#02,#66,#6f,#11,#e8,#82
	db #cb,#38,#72,#e0,#06,#d9,#63,#82
	db #04,#ea,#04,#23,#f9,#14,#c9,#26
	db #fd,#82,#b6,#77,#fd,#50,#79,#2f
	db #6a,#bc,#02,#6a,#d1,#aa,#6a,#0c
	db #83,#6a,#31,#a0,#6a,#a3,#6a,#1c
	db #06,#83,#6a,#98,#29,#83,#6a,#a6
	db #d3,#6a,#09,#83,#6a,#c8,#3a,#83
	db #e1,#63,#32,#06,#cb,#2b,#06,#07
	db #11,#3c,#83,#6a,#07,#1b,#83,#6a
	db #73,#d4,#79,#6a,#3c,#03,#6a,#c3
	db #15,#82,#22,#5e,#6a,#24,#f4,#83
	db #6a,#0e,#82,#32,#58,#6a,#a6,#7b
	db #6a,#98,#11,#82,#6a,#5b,#f3,#6a
	db #72,#8c,#63,#84,#e5,#06,#7d,#6a
	db #ae,#8e,#6a,#5e,#6d,#6a,#14,#bc
	db #93,#a4,#a9,#05,#db,#c0,#18,#36
	db #3e,#37,#a4,#c7,#4c,#2a,#ca,#11
	db #98,#a9,#af,#ed,#14,#52,#20,#26
	db #9b,#93,#f7,#92,#e4,#94,#d5,#94
	db #aa,#94,#9a,#94,#89,#94,#82,#93
	db #ed,#93,#cc,#93,#a6,#94,#3b,#b2
	db #e6,#4a,#08,#16,#00,#d9,#ab,#c8
	db #a8,#c4,#19,#d7,#a0,#22,#ea,#84
	db #48,#3a,#fd,#dd,#00,#6f,#21,#c2
	db #8a,#fd,#21,#d8,#86,#48,#3a,#f3
	db #cd,#10,#44,#84,#eb,#2a,#fe,#ff
	db #28,#03,#03,#3c,#18,#1d,#21,#c5
	db #5c,#82,#11,#11,#1e,#18,#b7,#38
	db #0b,#0d,#22,#90,#f6,#3d,#32,#90
	db #f3,#3c,#ed,#49,#53,#ec,#a0,#38
	db #dd,#11,#7c,#32,#ab,#e2,#79,#51
	db #49,#be,#51,#b2,#e4,#74,#51,#29
	db #24,#87,#3a,#da,#fb,#51,#a4,#dd
	db #a4,#51,#da,#c9,#51,#d3,#27,#87
	db #31,#51,#a8,#51,#e9,#a5,#26,#51
	db #c9,#cb,#51,#d2,#7a,#51,#7d,#7b
	db #51,#f2,#c4,#4d,#51,#7d,#51,#92
	db #ba,#ee,#52,#51,#04,#cb,#27,#f6
	db #00,#17,#02,#c3,#2b,#cd,#86,#9e
	db #80,#33,#fe,#60,#30,#0c,#37,#fd
	db #26,#00,#52,#00,#46,#23,#78,#1f
	db #30,#03,#e6,#0f,#5a,#4f,#ea,#16
	db #02,#5e,#f0,#a8,#0e,#22,#d9,#6f
	db #41,#26,#2e,#30,#01,#25,#fd,#c8
	db #32,#c9,#86,#37,#07,#79,#2e,#20
	db #18,#f0,#07,#01,#d6,#60,#28,#09
	db #1a,#3d,#28,#2e,#02,#1d,#02,#24
	db #d2,#02,#21,#02,#33,#81,#02,#27
	db #3d,#d9,#fd,#6f,#2b,#8c,#c9,#3e
	db #e5,#08,#4e,#08,#97,#38,#09,#24
	db #18,#aa,#0a,#ff,#73,#d9,#1e,#92
	db #68,#78,#b4,#91,#8a,#c9,#0d,#38
	db #1e,#00,#13,#c0,#77,#7b,#c2,#fa
	db #84,#00,#cb,#63,#28,#5d,#7e,#cb
	db #77,#28,#0c,#25,#16,#08,#23,#8f
	db #13,#28,#e5,#02,#cb,#87,#cb,#9a
	db #7b,#9b,#21,#d9,#92,#d9,#8c,#15
	db #bb,#00,#77,#36,#dd,#62,#7e,#8c
	db #05,#00,#23,#04,#18,#1b,#23,#c9
	db #1d,#23,#05,#16,#01,#cb,#6f,#28
	db #ec,#8f,#82,#24,#53,#18,#2a,#0f
	db #d6,#bb,#20,#36,#36,#00,#16,#16
	db #09,#18,#f5,#57,#18,#1e,#28,#f1
	db #1a,#20,#26,#08,#cb,#6b,#28,#44
	db #04,#92,#18,#82,#0e,#cb,#73,#28
	db #06,#ce,#f5,#18,#c1,#5c,#24,#85
	db #a1,#02,#38,#02,#3e,#5f,#e5,#87
	db #89,#50,#01,#0d,#22,#86,#09,#c1
	db #46,#46,#a8,#00,#cb,#2c,#cb,#1d
	db #09,#19,#fd,#48,#75,#90,#74,#18
	db #1b,#e1,#c9,#c0,#02,#07,#7b,#d9
	db #e6,#40,#98,#a0,#d9,#7b,#f6,#08
	db #18,#e6,#09,#57,#65,#10,#94,#ce
	db #0b,#e6,#03,#87,#c6,#f6,#80,#36
	db #88,#cb,#5b,#28,#09,#8c,#ec,#8d
	db #c3,#48,#18,#50,#62,#60,#78,#28
	db #19,#0b,#cb,#70,#e3,#61,#13,#e7
	db #85,#93,#88,#80,#48,#85,#f9,#e6
	db #08,#0e,#32,#91,#85,#f6,#89,#c2
	db #f2,#04,#4b,#87,#1d,#45,#a2,#93
	db #12,#53,#8a,#3e,#e5,#2a,#8f,#11
	db #8a,#c9,#4d,#44,#c7,#9a,#0c,#80
	db #31,#6f,#20,#72,#79,#fd,#71,#88
	db #97,#70,#1b,#91,#d2,#7b,#e1,#34
	db #f5,#c2,#9b,#85,#79,#75,#34,#cb
	db #38,#d5,#f8,#02,#11,#4f,#fb,#2e
	db #03,#8f,#fa,#d7,#83,#61,#1b,#88
	db #3a,#84,#10,#b7,#28,#2d,#44,#3a
	db #83,#5f,#d4,#33,#cf,#91,#58,#33
	db #21,#7c,#17,#02,#28,#47,#fc,#c4
	db #09,#f7,#77,#80,#18,#23,#4a,#e5
	db #b7,#1c,#8e,#e1,#71,#b2,#7e,#4c
	db #93,#6c,#4d,#98,#93,#ee,#0e,#00
	db #18,#0e,#4d,#0d,#8e,#0c,#da,#0b
	db #00,#2f,#0b,#8f,#0a,#f7,#09,#68
	db #09,#00,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#00,#0c,#07,#a7,#06,#47
	db #06,#ed,#05,#00,#98,#05,#47,#05
	db #fc,#04,#b4,#04,#00,#70,#04,#31
	db #04,#f4,#03,#bc,#03,#00,#86,#03
	db #53,#03,#24,#03,#f6,#02,#12,#cc
	db #02,#a4,#99,#08,#02,#5a,#02,#ea
	db #80,#18,#02,#fa,#01,#de,#01,#00
	db #c3,#01,#aa,#01,#92,#01,#7b,#01
	db #00,#66,#01,#52,#01,#3f,#01,#2d
	db #01,#00,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#14,#e1,#00,#d5,#af,#00
	db #00,#be,#00,#b3,#00,#a9,#00,#00
	db #9f,#00,#96,#00,#8e,#00,#86,#00
	db #28,#7f,#00,#94,#88,#89,#6a,#00
	db #00,#64,#00,#5f,#00,#59,#00,#54
	db #00,#00,#50,#00,#4b,#00,#47,#00
	db #43,#00,#00,#3f,#00,#3c,#00,#38
	db #00,#35,#00,#88,#9f,#2f,#00,#02
	db #2d,#00,#2a,#00,#28,#00,#c1,#40
	db #24,#00,#22,#00,#52,#20,#f7,#0b
	db #1c,#00,#1b,#da,#11,#00,#ee,#58
	db #e7,#15,#02,#00,#14,#00,#13,#00
	db #12,#eb,#d3,#84,#c0,#67,#06,#f4
	db #d9,#02,#01,#c0,#f6,#1e,#80,#d9
	db #dc,#d8,#40,#15,#1d,#ed,#51,#d9
	db #ed,#49,#24,#ed,#71,#04,#79,#02
	db #59,#87,#07,#32,#da,#86,#1a,#6f
	db #01,#1a,#77,#f5,#1a,#83,#08,#1a
	db #dc,#10,#87,#ed,#1a,#02,#1a,#ee
	db #2b,#f0,#1a,#7b,#03,#1a,#bc,#46
	db #1a,#1e,#09,#1a,#ef,#61,#1a,#07
	db #04,#1a,#bb,#7c,#1a,#c1,#05,#1a
	db #ee,#97,#f0,#1a,#7b,#0a,#1a,#bc
	db #b2,#1a,#26,#a4,#f6,#1a,#4e,#cd
	db #1a,#7c,#19,#1e,#07,#19,#ef,#e7
	db #34,#07,#0b,#1a,#b9,#02,#88,#1a
	db #db,#0c,#1a,#dd,#1d,#1a,#c8,#20
	db #06,#67,#ac,#bc,#0f,#c8,#7c,#16
	db #0d,#20,#70,#38,#88,#c9,#af,#e0
	db #b0,#87,#32,#42,#5f,#02,#b0,#87
	db #3d,#bc,#52,#ee,#32,#a0,#33,#6e
	db #0c,#3e,#3f,#c2,#c2,#21,#06,#b9
	db #6a,#ee,#02,#23,#81,#11,#03,#07
	db #6d,#11,#e1,#ae,#cc,#6d,#e2,#8b
	db #ec,#f2,#06,#69,#fe,#ec,#5e,#94
	db #a0,#cb,#9a,#06,#97,#a0,#06,#2e
	db #a6,#06,#2f,#84,#3e,#9d,#e9,#9f
	db #80,#a7,#c9,#ed,#f8,#22,#0f,#83
	db #82,#7e,#e6,#cf,#d5,#2a,#1d,#08
	db #a2,#ac,#82,#2a,#42,#22,#22,#d4
	db #02,#3f,#82,#87,#f4,#eb,#01,#55
	db #07,#fd,#db,#e9,#f3,#d9,#8b,#d8
	db #22,#4b,#e8,#08,#3a,#05,#ae,#a6
	db #eb,#1b,#68,#e1,#ee,#44,#82,#03
	db #40,#83,#03,#92,#c6,#03,#e0,#0b
	db #33,#32,#07,#fe,#4e,#9b,#e0,#21
	db #2e,#22,#89,#7e,#e0,#2d,#47,#23
	db #6c,#45,#1a,#12,#10,#f9,#bd,#51
	db #f0,#e2,#c1,#f3,#86,#94,#c1,#44
	db #87,#c6,#b1,#95,#87,#9b,#84,#e5
	db #51,#e4,#45,#e3,#bf,#65,#bc,#98
	db #b0,#75,#be,#bd,#d0,#bd,#80,#cb
	db #75,#80,#c0,#d6,#c7,#86,#1b,#b6
	db #1f,#38,#81,#9f,#78,#b6,#11,#51
	db #ff,#f2,#d9,#45,#a5,#14,#8c,#4d
	db #d8,#bf,#34,#8b,#d2,#84,#49,#8f
	db #8e,#24,#8d,#92,#e0,#49,#c7,#a8
	db #27,#88,#5c,#b8,#6c,#e8,#03,#1f
	db #b7,#ea,#82,#96,#78,#ad,#00,#fe
	db #00,#c8,#53,#4b,#05,#31,#30,#00
	db #8a,#01,#e3,#9e,#ee,#79,#ea,#e6
	db #e7,#cf,#de,#fc,#72,#09,#03,#40
	db #c0,#1c,#29,#7f,#15,#63,#8b,#00
	db #e4,#8b,#66,#8c,#a8,#8c,#29,#8d
	db #24,#9d,#8d,#0b,#e1,#03,#8e,#82
	db #0b,#d1,#8e,#45,#8f,#0b,#00,#b3
	db #8f,#18,#90,#8c,#90,#0d,#91,#39
	db #6c,#91,#0b,#03,#e0,#91,#61,#92
	db #af,#92,#2f,#76,#23,#2f,#d0,#23
	db #23,#93,#e3,#93,#8e,#0b,#57,#94
	db #0b,#e0,#23,#17,#95,#d7,#95,#fc
	db #47,#5f,#2f,#10,#2a,#4b,#96,#bb
	db #78,#8a,#96,#d8,#00,#8a,#eb,#8a
	db #f3,#8a,#02,#8b,#1a,#00,#8b,#32
	db #8b,#46,#8b,#4f,#8b,#c2,#c2,#13
	db #ff,#37,#c4,#35,#cc,#1b,#88,#00
	db #09,#4d,#01,#e0,#02,#ff,#ff,#c6
	db #02,#df,#2c,#62,#12,#4f,#09,#db
	db #02,#15,#02,#19,#f2,#3d,#12,#8a
	db #0f,#37,#43,#aa,#b9,#07,#c0,#00
	db #0e,#0e,#0d,#0c,#9a,#0e,#1a,#0e
	db #1f,#26,#67,#d5,#03,#65,#ad,#46
	db #1e,#63,#b9,#5d,#17,#5a,#66,#17
	db #7f,#c8,#cb,#1f,#60,#4c,#f1,#17
	db #60,#e1,#b8,#17,#66,#45,#7c,#46
	db #79,#17,#91,#0d,#4e,#8e,#98,#13
	db #0b,#22,#0f,#62,#fc,#e3,#1c,#4c
	db #c8,#0d,#78,#00,#83,#01,#86,#0b
	db #7e,#03,#78,#07,#d3,#ac,#05,#34
	db #b2,#63,#07,#05,#0b,#0b,#18,#07
	db #0b,#03,#e9,#17,#0b,#17,#f3,#70
	db #2f,#74,#00,#03,#82,#0b,#7a,#03
	db #74,#07,#82,#64,#03,#05,#0b,#07
	db #c6,#05,#0b,#0b,#6b,#17,#03,#17
	db #a7,#0b,#17,#cd,#2f,#c0,#60,#81
	db #02,#06,#d6,#5d,#66,#89,#03,#07
	db #24,#6e,#05,#66,#05,#78,#96,#05
	db #6e,#05,#11,#23,#78,#05,#d2,#6f
	db #0d,#18,#66,#07,#61,#07,#ce,#5d
	db #ce,#61,#74,#0b,#05,#6a,#89,#37
	db #1f,#c3,#6a,#05,#8c,#0b,#70,#62
	db #0b,#62,#ed,#1d,#62,#2f,#8e,#5d
	db #07,#5c,#74,#19,#17,#60,#89,#6b
	db #0b,#0e,#78,#3d,#f9,#31,#70,#5c
	db #0b,#c2,#01,#30,#81,#04,#ce,#31
	db #ce,#49,#03,#9f,#05,#28,#37,#ce
	db #2d,#c7,#01,#45,#05,#d0,#33,#4b
	db #c2,#c4,#f0,#00,#6e,#03,#7c,#0b
	db #76,#88,#f6,#07,#7c,#64,#03,#05
	db #0b,#07,#c6,#05,#0b,#0b,#6b,#17
	db #03,#17,#a7,#0b,#17,#cd,#2f,#c4
	db #c4,#be,#98,#64,#01,#6e,#33,#09
	db #5e,#03,#07,#58,#76,#03,#7c,#e8
	db #07,#6e,#01,#66,#5e,#13,#03,#fd
	db #1f,#b2,#b6,#f8,#2c,#27,#01,#7d
	db #3f,#05,#00,#2e,#80,#05,#2f,#78
	db #8c,#b7,#23,#8d,#7e,#a5,#84,#8c
	db #05,#7c,#8e,#b7,#17,#86,#05,#11
	db #27,#d2,#87,#07,#40,#79,#ce,#7f
	db #ce,#87,#8f,#b7,#07,#8c,#1f,#0e
	db #82,#05,#3d,#0b,#9c,#78,#0b,#1c
	db #d2,#63,#2b,#cf,#fc,#29,#7a,#e4
	db #e1,#82,#8e,#4d,#fb,#17,#4e,#fc
	db #02,#06,#ce,#30,#80,#04,#af,#32
	db #05,#d1,#09,#05,#ce,#48,#0d,#8e
	db #31,#0d,#37,#09,#15,#9e,#1f,#5d
	db #05,#09,#32,#36,#13,#f8,#66,#2c
	db #0b,#32,#45,#05,#0b,#a6,#03,#19
	db #44,#0d,#6d,#13,#0d,#09,#bc,#15
	db #f2,#1f,#05,#e9,#09,#32,#13,#23
	db #c2,#ef,#51,#7f,#e9,#98,#07,#86
	db #8e,#bd,#e3,#ef,#e3,#09,#6f,#ce
	db #67,#70,#cd,#e2,#a7,#7a,#4f,#6e
	db #83,#92,#86,#8b,#7c,#13,#5e,#8b
	db #c7,#13,#6c,#8e,#03,#63,#94,#03
	db #9e,#07,#aa,#0f,#1b,#a7,#17,#a7
	db #63,#e1,#f5,#66,#a3,#64,#26,#0b
	db #a7,#d5,#05,#0b,#03,#4c,#19,#3e
	db #0d,#db,#13,#0d,#09,#79,#15,#e5
	db #1f,#05,#09,#d2,#2e,#e1,#32,#b3
	db #30,#d8,#60,#44,#83,#ba,#80,#b1
	db #f5,#85,#05,#c3,#87,#05,#86,#89
	db #05,#8d,#d4,#60,#8b,#06,#00,#d6
	db #60,#8d,#03,#c4,#07,#c4,#08,#00
	db #c4,#09,#c4,#0a,#c4,#0b,#6a,#91
	db #60,#02,#0c,#06,#c4,#05,#14,#c4
	db #04,#c4,#16,#0b,#01,#10,#c4,#00
	db #d2,#24,#03,#c6,#f9,#05,#63,#ce
	db #c6,#01,#61,#b0,#48,#5c,#30,#ce
	db #53,#02,#d2,#52,#c0,#03,#f4,#c6
	db #01,#73,#f5,#01,#d2,#12,#07,#a8
	db #22,#85,#08,#c4,#37,#09,#4f,#80
	db #09,#0d,#3c,#09,#f3,#1f,#67,#09
	db #1f,#15,#8c,#a2,#e6,#09,#66,#05
	db #0b,#31,#2c,#37,#2c,#1b,#9b,#11
	db #0f,#c7,#07,#be,#1f,#f0,#0b,#09
	db #8b,#31,#c2,#6e,#e3,#99,#7c,#c8
	db #96,#f3,#ab,#74,#f3,#63,#05,#19
	db #0b,#0b,#8b,#7c,#74,#17,#0b,#f9
	db #17,#b8,#2f,#5e,#6a,#fb,#28,#70
	db #f9,#bc,#fb,#cb,#05,#fb,#cc,#05
	db #66,#0b,#0b,#17,#ba,#03,#17,#7c
	db #0b,#17,#dc,#2f,#25,#64,#d9,#0a
	db #64,#83,#8e,#24,#8f,#38,#64,#85
	db #05,#71,#87,#05,#a0,#49,#d9,#28
	db #64,#69,#8b,#06,#d6,#64,#d9,#2e
	db #69,#78,#d9,#78,#92,#6e,#d9,#84
	db #fa,#71,#d9,#80,#04,#6f,#6b,#ce
	db #6a,#94,#d9,#24,#61,#d2,#0c,#6b
	db #05,#60,#99,#bf,#26,#f1,#18,#26
	db #8c,#ed,#9c,#e2,#d8,#09,#fb,#cf
	db #0d,#2c,#09,#f3,#1f,#67,#09,#1f
	db #15,#88,#23,#ce,#22,#cc,#09,#05
	db #c6,#0b,#22,#37,#4e,#03,#07,#11
	db #38,#0f,#f7,#07,#de,#1f,#0b,#16
	db #09,#31,#b7,#bf,#03,#d3,#2f,#bf
	db #ad,#5f,#a0,#c4,#00,#0c,#c4,#0d
	db #c4,#0e,#c4,#0f,#f4,#07,#60,#c1
	db #04,#1f,#c6,#e2,#8c,#40,#04,#d6
	db #01,#5c,#08,#d7,#96,#ec,#cb,#c2
	db #ec,#bb,#6e,#de,#86,#66,#f7,#f0
	db #60,#de,#f1,#3f,#11,#8d,#f6,#a6
	db #59,#62,#89,#c3,#5c,#b8,#dc,#bf
	db #11,#87,#96,#a9,#71,#fd,#99,#b3
	db #67,#9d,#3b,#67,#07,#9d,#5e,#1f
	db #2f,#09,#15,#0c,#9f,#9b,#07,#81
	db #e5,#aa,#7c,#b8,#44,#07,#71,#04
	db #0f,#83,#bc,#f2,#0f,#44,#eb,#1f
	db #0b,#99,#07,#33,#b3,#2f,#d0,#62
	db #05,#5e,#96,#f3,#17,#84,#5e,#05
	db #64,#fe,#11,#3e,#bf,#3f,#9f,#c4
	db #0b,#52,#05,#58,#e1,#0b,#52,#05
	db #3f,#58,#11,#8f,#9f,#f3,#d9,#b4
	db #a1,#c5,#09,#3b,#9f,#b3,#1b,#8e
	db #3a,#07,#2d,#11,#0f,#75,#3a,#07
	db #0f,#bc,#17,#da,#c7,#ec,#0b,#07
	db #29,#19,#c2,#ff,#00,#00,#00,#ff
	db #ff,#00,#00,#00
;
; #a03d
; ld de,#8a00
; call #8000
;
.init_music		; added by Megachur
;
	ld de,l8a00
	jp real_init_music
;
.music_info
	db "Reset 20 - Gimme Some Sugar (2015)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
