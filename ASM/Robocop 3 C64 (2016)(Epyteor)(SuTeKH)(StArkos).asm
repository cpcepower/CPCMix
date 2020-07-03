; Music of Robocop 3 C64 (2016)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 16/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ROBOCO3C.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
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
.l8000
	db #53,#4b,#31,#30,#00,#8a,#01,#32
	db #00,#90,#8a,#95,#8a,#17,#8d,#d4
	db #8d,#1e,#8a,#93,#8a,#d7,#8a,#d1
	db #8d,#02,#c0,#00,#00,#13,#c0,#00
	db #00,#01,#3c,#bc,#05,#b8,#00,#01
	db #3c,#01,#00,#01,#3c,#bc,#05,#b8
	db #00,#01,#3c,#01,#00,#01,#3c,#01
	db #38,#01,#3c,#01,#00,#01,#3c,#01
	db #38,#01,#3c,#01,#00,#01,#bc,#fe
	db #bc,#00,#38,#01,#bc,#fe,#bc,#00
	db #00,#01,#bc,#fe,#bc,#00,#38,#01
	db #00,#05,#3c,#01,#38,#01,#3c,#01
	db #00,#01,#bc,#fe,#bc,#00,#38,#01
	db #00,#05,#bc,#fe,#bc,#00,#38,#01
	db #bc,#fe,#bc,#00,#00,#01,#bc,#fe
	db #bc,#00,#38,#01,#bc,#fe,#bc,#00
	db #00,#01,#3c,#01,#38,#01,#00,#05
	db #bc,#fe,#bc,#00,#38,#01,#00,#01
	db #3f,#09,#34,#3f,#5f,#75,#90,#97
	db #90,#b6,#90,#b8,#90,#da,#90,#b6
	db #90,#fc,#90,#1e,#91,#b6,#90,#40
	db #91,#62,#91,#b6,#90,#84,#91,#9c
	db #91,#b6,#90,#b5,#91,#ca,#91,#b6
	db #90,#e0,#91,#f2,#91,#b6,#90,#05
	db #92,#18,#92,#b6,#90,#2d,#92,#38
	db #92,#b6,#90,#3d,#92,#5f,#92,#b6
	db #90,#81,#92,#9e,#92,#b6,#90,#bb
	db #92,#d7,#92,#dd,#92,#bb,#92,#e1
	db #92,#e7,#92,#bb,#92,#d7,#92,#dd
	db #92,#bb,#92,#e1,#92,#e7,#92,#bb
	db #92,#d7,#92,#dd,#92,#bb,#92,#e1
	db #92,#e7,#92,#bb,#92,#d7,#92,#dd
	db #92,#bb,#92,#ed,#92,#f2,#92,#bb
	db #92,#d7,#92,#dd,#92,#bb,#92,#e1
	db #92,#e7,#92,#bb,#92,#d7,#92,#dd
	db #92,#bb,#92,#e1,#92,#e7,#92,#bb
	db #92,#d7,#92,#dd,#92,#bb,#92,#e1
	db #92,#e7,#92,#bb,#92,#d7,#92,#dd
	db #92,#bb,#92,#ed,#92,#f2,#92,#bb
	db #92,#f7,#92,#dd,#92,#bb,#92,#19
	db #93,#b6,#90,#bb,#92,#f7,#92,#b6
	db #90,#bb,#92,#19,#93,#b6,#90,#bb
	db #92,#f7,#92,#b6,#90,#bb,#92,#19
	db #93,#b6,#90,#bb,#92,#f7,#92,#b6
	db #90,#bb,#92,#19,#93,#3f,#93,#bb
	db #92,#6e,#93,#b6,#90,#bb,#92,#94
	db #93,#b6,#90,#bb,#92,#6e,#93,#b6
	db #90,#bb,#92,#94,#93,#b6,#90,#bb
	db #92,#6e,#93,#b6,#90,#bb,#92,#94
	db #93,#b6,#90,#bb,#92,#6e,#93,#b6
	db #90,#bb,#92,#94,#93,#be,#93,#bb
	db #92,#6e,#93,#c7,#93,#bb,#92,#94
	db #93,#e5,#93,#bb,#92,#6e,#93,#01
	db #94,#bb,#92,#2f,#94,#59,#94,#bb
	db #92,#6d,#94,#93,#94,#bb,#92,#bb
	db #94,#e5,#94,#bb,#92,#6e,#93,#1b
	db #95,#bb,#92,#2f,#94,#56,#95,#bb
	db #92,#6e,#93,#87,#95,#bb,#92,#94
	db #93,#87,#95,#bb,#92,#6e,#93,#b8
	db #95,#bb,#92,#2f,#94,#eb,#95,#bb
	db #92,#6d,#94,#24,#96,#bb,#92,#bb
	db #94,#57,#96,#8e,#96,#aa,#96,#d0
	db #96,#06,#97,#22,#97,#44,#97,#bb
	db #92,#f7,#92,#dd,#92,#bb,#92,#19
	db #93,#b6,#90,#bb,#92,#f7,#92,#b6
	db #90,#bb,#92,#19,#93,#b6,#90,#bb
	db #92,#f7,#92,#b6,#90,#bb,#92,#19
	db #93,#b6,#90,#bb,#92,#f7,#92,#b6
	db #90,#bb,#92,#19,#93,#3f,#93,#bb
	db #92,#6e,#93,#b6,#90,#bb,#92,#94
	db #93,#b6,#90,#bb,#92,#6e,#93,#b6
	db #90,#bb,#92,#2f,#94,#b6,#90,#bb
	db #92,#6d,#94,#b6,#90,#bb,#92,#bb
	db #94,#b6,#90,#8e,#96,#aa,#96,#b6
	db #90,#06,#97,#22,#97,#b6,#90,#bb
	db #92,#6e,#93,#78,#97,#bb,#92,#94
	db #93,#9b,#97,#bb,#92,#6e,#93,#bb
	db #97,#bb,#92,#2f,#94,#e3,#97,#bb
	db #92,#6d,#94,#03,#98,#bb,#92,#bb
	db #94,#37,#98,#bb,#92,#6e,#93,#5d
	db #98,#bb,#92,#2f,#94,#85,#98,#bb
	db #92,#6e,#93,#99,#98,#bb,#92,#94
	db #93,#c0,#98,#bb,#92,#6e,#93,#e0
	db #98,#bb,#92,#2f,#94,#f9,#98,#bb
	db #92,#6d,#94,#19,#99,#bb,#92,#bb
	db #94,#3f,#99,#bb,#92,#6e,#93,#63
	db #99,#bb,#92,#2f,#94,#94,#99,#bb
	db #92,#6e,#93,#a4,#99,#bb,#92,#94
	db #93,#b7,#99,#bb,#92,#6e,#93,#d3
	db #99,#bb,#92,#94,#93,#e6,#99,#bb
	db #92,#6e,#93,#02,#9a,#bb,#92,#94
	db #93,#26,#9a,#8e,#96,#aa,#96,#47
	db #9a,#06,#97,#22,#97,#67,#9a,#bb
	db #92,#6e,#93,#a4,#99,#bb,#92,#94
	db #93,#b7,#99,#bb,#92,#6e,#93,#d3
	db #99,#bb,#92,#2f,#94,#e6,#99,#bb
	db #92,#6d,#94,#02,#9a,#bb,#92,#bb
	db #94,#26,#9a,#8e,#96,#aa,#96,#47
	db #9a,#06,#97,#22,#97,#67,#9a,#dc
	db #80,#9a,#01,#00,#00,#02,#80,#9a
	db #01,#00,#00,#02,#80,#9a,#01,#00
	db #00,#02,#80,#9a,#01,#00,#00,#02
	db #80,#9a,#01,#00,#00,#02,#80,#9a
	db #01,#00,#00,#0e,#80,#9a,#02,#00
	db #00,#03,#80,#9a,#00,#00,#02,#80
	db #9a,#01,#00,#00,#02,#80,#9a,#01
	db #00,#00,#02,#80,#9a,#02,#00,#00
	db #03,#80,#9a,#00,#00,#0e,#80,#9a
	db #02,#00,#00,#03,#80,#9a,#00,#00
	db #02,#80,#9a,#01,#00,#00,#02,#80
	db #9a,#01,#00,#00,#1a,#80,#9a,#01
	db #00,#00,#02,#80,#9a,#01,#00,#00
	db #02,#80,#9a,#01,#00,#00,#02,#80
	db #9a,#01,#00,#00,#02,#80,#9a,#01
	db #00,#00,#02,#80,#9a,#01,#00,#00
	db #0e,#80,#9a,#02,#00,#00,#03,#80
	db #9a,#00,#00,#02,#80,#9a,#01,#00
	db #00,#02,#80,#9a,#01,#00,#00,#1a
	db #80,#9a,#02,#00,#00,#03,#80,#9a
	db #00,#00,#02,#80,#9a,#01,#00,#00
	db #02,#80,#9a,#01,#00,#00,#02,#80
	db #9a,#02,#00,#00,#03,#80,#9a,#00
	db #00,#be,#80,#9a,#08,#8e,#12,#8e
	db #1a,#8e,#24,#8e,#45,#8e,#06,#8f
	db #1d,#8f,#38,#8f,#42,#8f,#69,#8f
	db #74,#8f,#7f,#8f,#9e,#8f,#a6,#8f
	db #b6,#8f,#c6,#8f,#d6,#8f,#e6,#8f
	db #f6,#8f,#06,#90,#1d,#90,#2a,#90
	db #37,#90,#4e,#90,#5b,#90,#68,#90
	db #0f,#8e,#12,#8e,#ff,#37,#00,#00
	db #00,#00,#19,#8e,#1a,#8e,#00,#37
	db #00,#0f,#21,#8e,#24,#8e,#00,#37
	db #00,#4f,#ff,#ff,#2b,#8e,#45,#8e
	db #00,#37,#00,#4f,#ff,#ff,#4f,#fe
	db #ff,#4f,#fe,#ff,#4f,#ff,#ff,#0f
	db #4f,#01,#00,#4f,#02,#00,#4f,#02
	db #00,#4f,#01,#00,#0f,#0f,#8e,#06
	db #8f,#00,#b7,#00,#3d,#21,#0a,#3d
	db #21,#ff,#3d,#22,#fb,#3d,#22,#08
	db #3d,#23,#09,#3c,#23,#09,#3c,#24
	db #09,#3c,#24,#fb,#3c,#25,#08,#3c
	db #25,#08,#3b,#26,#08,#3b,#26,#09
	db #3b,#27,#09,#3b,#27,#09,#3b,#28
	db #08,#3a,#28,#09,#3a,#29,#09,#3a
	db #29,#09,#3a,#2a,#fb,#3a,#2a,#08
	db #39,#2b,#08,#39,#2b,#08,#39,#2c
	db #09,#39,#2c,#09,#39,#2d,#09,#38
	db #2d,#08,#38,#2e,#09,#38,#2e,#09
	db #38,#2f,#09,#38,#2f,#fb,#37,#30
	db #08,#37,#30,#08,#37,#31,#08,#37
	db #31,#09,#37,#32,#09,#36,#32,#09
	db #36,#33,#08,#36,#33,#09,#36,#34
	db #09,#36,#34,#09,#35,#35,#fb,#35
	db #35,#08,#35,#36,#08,#35,#36,#08
	db #35,#37,#09,#34,#37,#09,#34,#38
	db #09,#34,#38,#08,#34,#39,#09,#34
	db #39,#09,#33,#3a,#09,#33,#3a,#fb
	db #33,#3b,#08,#33,#3b,#08,#33,#3c
	db #08,#32,#3c,#09,#32,#3d,#09,#32
	db #3d,#09,#32,#3e,#08,#32,#3e,#09
	db #31,#3f,#09,#31,#3f,#09,#13,#8f
	db #1d,#8f,#00,#37,#00,#0d,#0d,#2c
	db #0c,#2c,#0c,#2b,#07,#2b,#02,#0b
	db #0b,#2b,#0c,#2b,#0c,#36,#8f,#38
	db #8f,#00,#37,#00,#1b,#05,#1f,#60
	db #fd,#00,#1e,#60,#aa,#01,#1e,#60
	db #fa,#01,#1d,#60,#7e,#02,#80,#16
	db #40,#8f,#42,#8f,#00,#37,#00,#00
	db #80,#16,#0f,#8e,#69,#8f,#00,#b7
	db #00,#1b,#05,#3f,#2a,#0a,#3e,#29
	db #0b,#3d,#28,#07,#3c,#27,#04,#3b
	db #26,#06,#3a,#25,#0b,#39,#24,#0c
	db #38,#23,#0a,#37,#22,#06,#36,#21
	db #08,#72,#8f,#74,#8f,#00,#37,#00
	db #1b,#05,#80,#16,#7e,#8f,#7f,#8f
	db #00,#37,#00,#00,#0f,#0e,#0d,#86
	db #8f,#9e,#8f,#00,#37,#00,#4d,#ff
	db #ff,#4d,#ff,#ff,#4d,#ff,#ff,#4d
	db #ff,#ff,#4d,#01,#00,#4d,#01,#00
	db #4d,#01,#00,#4d,#01,#00,#a5,#8f
	db #a6,#8f,#00,#37,#00,#0d,#ae,#8f
	db #b6,#8f,#00,#37,#00,#00,#0d,#2d
	db #05,#2d,#05,#2d,#05,#0d,#be,#8f
	db #c6,#8f,#00,#37,#00,#00,#0d,#2d
	db #09,#2d,#09,#2d,#09,#0d,#ce,#8f
	db #d6,#8f,#00,#37,#00,#00,#0d,#2d
	db #07,#2d,#07,#2d,#07,#0d,#de,#8f
	db #e6,#8f,#00,#37,#00,#00,#0d,#2d
	db #08,#2d,#08,#2d,#08,#0d,#ee,#8f
	db #f6,#8f,#00,#37,#00,#00,#0d,#2d
	db #04,#2d,#04,#2d,#04,#0d,#fe,#8f
	db #06,#90,#00,#37,#00,#00,#0d,#2d
	db #03,#2d,#03,#2d,#03,#0d,#13,#90
	db #1d,#90,#00,#37,#00,#0d,#0d,#2c
	db #0c,#2c,#0c,#2b,#07,#2b,#04,#0b
	db #0b,#2b,#0c,#2b,#0c,#25,#90,#2a
	db #90,#00,#37,#00,#00,#0d,#2d,#03
	db #2d,#07,#32,#90,#37,#90,#00,#37
	db #00,#00,#0d,#2d,#03,#2d,#08,#44
	db #90,#4e,#90,#00,#37,#00,#0d,#0d
	db #2c,#0c,#2c,#0c,#2b,#08,#2b,#05
	db #0b,#0b,#2b,#0c,#2b,#0c,#56,#90
	db #5b,#90,#00,#37,#00,#00,#0d,#2d
	db #03,#2d,#06,#63,#90,#68,#90,#00
	db #37,#00,#00,#0d,#2d,#05,#2d,#08
	db #70,#90,#75,#90,#00,#37,#00,#00
	db #0d,#2d,#04,#2d,#07,#b8,#85,#01
	db #ce,#b7,#ce,#af,#ce,#a9,#ce,#b7
	db #ce,#af,#ce,#a9,#ce,#a5,#ce,#af
	db #ce,#a9,#ce,#a5,#ce,#a1,#ce,#a9
	db #ce,#a1,#ce,#9f,#ce,#97,#c2,#ca
	db #d4,#b8,#8f,#02,#ce,#b7,#ce,#af
	db #ce,#a9,#ce,#b7,#ce,#af,#ce,#a9
	db #ce,#a5,#ce,#af,#ce,#a9,#ce,#a5
	db #ce,#a1,#ce,#a9,#ce,#a1,#ca,#c2
	db #a0,#85,#01,#ce,#9f,#ce,#97,#ce
	db #91,#ce,#9f,#ce,#97,#ce,#91,#ce
	db #8d,#ce,#97,#ce,#91,#ce,#8d,#ce
	db #89,#ce,#91,#ce,#8d,#ce,#89,#ce
	db #87,#c2,#ce,#9e,#8f,#02,#ce,#97
	db #ce,#a1,#ce,#9f,#ce,#97,#ce,#91
	db #ce,#9f,#ce,#97,#ce,#91,#ce,#8d
	db #ce,#97,#ce,#91,#ce,#8d,#ce,#89
	db #ce,#91,#ce,#8d,#88,#85,#01,#ce
	db #7f,#ce,#79,#ce,#89,#ce,#7f,#ce
	db #79,#ce,#8d,#ce,#87,#ce,#89,#ce
	db #83,#ce,#79,#ce,#89,#ce,#83,#ce
	db #79,#ce,#87,#ce,#89,#c2,#ce,#88
	db #8f,#02,#ce,#87,#ce,#89,#ce,#7f
	db #ce,#79,#ce,#89,#ce,#7f,#ce,#79
	db #ce,#8d,#ce,#87,#ce,#89,#ce,#83
	db #ce,#79,#ce,#89,#ce,#83,#ce,#79
	db #8c,#85,#01,#ce,#7f,#ce,#75,#ce
	db #89,#ce,#7f,#ce,#75,#ce,#8d,#ce
	db #7f,#ce,#89,#ce,#7f,#ce,#75,#ce
	db #87,#ce,#89,#ce,#87,#ce,#83,#ce
	db #7f,#c2,#ce,#86,#8f,#02,#ce,#89
	db #ce,#8d,#ce,#7f,#ce,#75,#ce,#89
	db #ce,#7f,#ce,#75,#ce,#8d,#ce,#7f
	db #ce,#87,#ce,#7f,#ce,#75,#ce,#87
	db #ce,#89,#ce,#87,#82,#85,#01,#d0
	db #7b,#d0,#71,#d0,#87,#d0,#7b,#d0
	db #71,#d0,#89,#d0,#7b,#d0,#71,#d0
	db #89,#d0,#7b,#c2,#ce,#82,#8f,#02
	db #ce,#7f,#ce,#83,#d0,#7b,#d0,#71
	db #d0,#87,#d0,#7b,#d0,#71,#d0,#89
	db #d0,#7b,#d0,#71,#c2,#ce,#70,#85
	db #01,#d0,#87,#d0,#7b,#d0,#83,#d0
	db #7b,#d0,#81,#d2,#79,#d2,#6f,#d2
	db #83,#c2,#88,#8f,#02,#d0,#7b,#d0
	db #71,#d0,#87,#d0,#7b,#d0,#83,#d0
	db #7b,#d0,#81,#d2,#79,#d2,#6f,#c2
	db #78,#85,#01,#d2,#6f,#d2,#87,#d2
	db #81,#d2,#79,#d2,#89,#d2,#83,#d2
	db #79,#c2,#d0,#82,#8f,#02,#d2,#79
	db #d2,#6f,#d2,#87,#d2,#81,#d2,#79
	db #d2,#89,#d2,#83,#c2,#8c,#85,#01
	db #d4,#87,#d4,#93,#d4,#91,#d4,#97
	db #c6,#ff,#c6,#ff,#c6,#ff,#9b,#c2
	db #d0,#78,#8f,#02,#d4,#8d,#d4,#87
	db #d4,#93,#d4,#91,#d4,#97,#c6,#ff
	db #c6,#ff,#c6,#ff,#9b,#9a,#85,#03
	db #c0,#1a,#a0,#80,#01,#9b,#97,#91
	db #d6,#82,#8f,#04,#c2,#8e,#85,#01
	db #8d,#89,#83,#9b,#97,#91,#8f,#8d
	db #89,#83,#7f,#91,#8f,#8d,#89,#83
	db #7f,#79,#77,#8d,#89,#83,#7f,#79
	db #77,#75,#71,#89,#83,#7f,#79,#ce
	db #a0,#8f,#02,#9b,#97,#91,#8f,#8d
	db #89,#83,#9b,#97,#91,#8f,#8d,#89
	db #83,#7f,#91,#8f,#8d,#89,#83,#7f
	db #79,#77,#8d,#89,#83,#7f,#79,#77
	db #75,#76,#85,#01,#75,#71,#6b,#83
	db #7f,#79,#77,#75,#71,#6b,#67,#7f
	db #79,#77,#75,#71,#6b,#67,#61,#79
	db #77,#75,#71,#6b,#67,#61,#70,#8f
	db #02,#89,#83,#7f,#79,#77,#75,#71
	db #6b,#83,#7f,#79,#77,#75,#71,#6b
	db #67,#7f,#79,#77,#75,#71,#6b,#67
	db #61,#79,#77,#6a,#81,#05,#ce,#6b
	db #ce,#6b,#d2,#6b,#d2,#6a,#05,#ce
	db #6a,#01,#d2,#6a,#05,#ce,#6a,#01
	db #d2,#6a,#05,#d2,#6a,#01,#c2,#52
	db #81,#06,#e0,#ca,#c2,#4c,#81,#04
	db #c2,#c0,#19,#4e,#81,#06,#c2,#c0
	db #19,#4c,#80,#04,#c2,#fc,#58,#80
	db #06,#c2,#fc,#4c,#80,#04,#c2,#52
	db #81,#06,#d2,#52,#80,#07,#ce,#6b
	db #ce,#ca,#ce,#6a,#80,#07,#ce,#53
	db #d2,#4e,#80,#06,#d2,#52,#80,#07
	db #d2,#ca,#d2,#4e,#80,#07,#ce,#51
	db #c2,#52,#81,#06,#d2,#52,#80,#07
	db #ce,#6b,#ce,#ca,#ce,#6a,#80,#07
	db #ce,#53,#d2,#6a,#80,#06,#d2,#c6
	db #20,#c6,#20,#c6,#20,#c6,#20,#ca
	db #d2,#5c,#80,#07,#ce,#59,#c2,#d0
	db #4c,#9d,#08,#ce,#4c,#1b,#ce,#4c
	db #19,#ce,#4c,#17,#ce,#4c,#15,#ce
	db #4c,#13,#ce,#4c,#11,#ce,#4c,#0f
	db #ce,#4c,#0d,#ce,#4c,#0b,#ce,#4c
	db #09,#ce,#4c,#07,#ce,#4c,#05,#ce
	db #4c,#03,#ce,#4c,#01,#c2,#52,#81
	db #06,#d2,#52,#80,#09,#ce,#6b,#ce
	db #4c,#80,#08,#ce,#6a,#80,#09,#ce
	db #53,#d2,#4e,#80,#06,#d2,#52,#80
	db #09,#d2,#4c,#80,#08,#d2,#4e,#80
	db #09,#ce,#51,#c2,#52,#81,#06,#d2
	db #52,#80,#09,#ce,#6b,#ce,#4c,#80
	db #08,#ce,#6a,#80,#09,#ce,#53,#d2
	db #6a,#80,#06,#d2,#c6,#20,#c6,#20
	db #c6,#20,#c6,#20,#4c,#80,#08,#d2
	db #5c,#80,#09,#ce,#59,#c2,#f4,#4c
	db #81,#08,#da,#4d,#ce,#4d,#c2,#88
	db #81,#0a,#d2,#82,#05,#d2,#82,#01
	db #d2,#7f,#c6,#fc,#c6,#fd,#ce,#82
	db #80,#0b,#da,#78,#80,#0a,#ce,#82
	db #05,#ce,#7e,#01,#c2,#7e,#81,#0b
	db #d2,#82,#85,#0a,#d2,#7f,#d2,#79
	db #d2,#6b,#d2,#78,#01,#ce,#6a,#05
	db #ce,#7e,#01,#d2,#83,#ce,#7e,#05
	db #c2,#88,#81,#0a,#c6,#fb,#8c,#80
	db #0c,#ce,#88,#85,#0a,#d2,#88,#01
	db #d2,#8c,#05,#d2,#82,#01,#c6,#fa
	db #86,#80,#0c,#ce,#86,#80,#0b,#d2
	db #88,#80,#0a,#ce,#86,#05,#ce,#82
	db #01,#c6,#fa,#86,#80,#0b,#c2,#4e
	db #81,#06,#d2,#4e,#80,#09,#ce,#67
	db #ce,#4c,#80,#08,#ce,#66,#80,#09
	db #ce,#4f,#d2,#66,#80,#06,#d2,#c6
	db #20,#c6,#20,#c6,#20,#c6,#20,#4c
	db #80,#08,#d2,#52,#80,#09,#ce,#49
	db #c2,#ce,#86,#81,#0b,#f0,#78,#80
	db #0a,#ce,#86,#05,#ce,#7e,#01,#d2
	db #83,#ce,#7e,#05,#c2,#4a,#81,#06
	db #d2,#4a,#80,#09,#ce,#63,#ce,#4c
	db #80,#08,#ce,#62,#80,#09,#ce,#4b
	db #d2,#48,#80,#06,#d2,#4a,#80,#09
	db #d2,#4c,#80,#08,#d2,#48,#80,#09
	db #ce,#41,#c2,#88,#81,#0a,#d2,#82
	db #05,#d2,#7e,#01,#ce,#82,#05,#ce
	db #7e,#01,#c6,#f9,#82,#80,#0c,#ce
	db #82,#80,#0b,#d2,#78,#80,#0a,#ce
	db #86,#05,#ce,#7e,#01,#d2,#83,#ce
	db #7e,#05,#c2,#4a,#81,#06,#d2,#4a
	db #80,#09,#ce,#63,#ce,#4c,#80,#08
	db #ce,#62,#80,#09,#ce,#4b,#d2,#62
	db #80,#06,#d2,#c6,#20,#c6,#20,#c6
	db #20,#c6,#20,#4c,#80,#08,#d2,#4a
	db #80,#09,#ce,#4d,#c2,#8c,#81,#0a
	db #c6,#fc,#90,#80,#0c,#ce,#90,#80
	db #0b,#d2,#96,#80,#0a,#ce,#90,#05
	db #ce,#8e,#01,#c6,#03,#8c,#80,#0c
	db #ce,#8c,#80,#0b,#d2,#88,#80,#0a
	db #ce,#8c,#05,#ce,#88,#01,#c6,#fb
	db #8c,#80,#0c,#ce,#88,#80,#0a,#ce
	db #8c,#05,#c2,#8c,#81,#0a,#c6,#fc
	db #90,#80,#0c,#ce,#82,#80,#0a,#ce
	db #90,#05,#ce,#7e,#01,#c6,#f9,#82
	db #80,#0c,#ce,#82,#80,#0b,#d2,#7e
	db #80,#0a,#c6,#f9,#82,#80,#0c,#ce
	db #88,#80,#0a,#ce,#82,#05,#ce,#88
	db #01,#c6,#fb,#8c,#80,#0c,#ce,#8e
	db #80,#0a,#ce,#8c,#05,#c2,#8e,#81
	db #0a,#c6,#fe,#90,#80,#0c,#ce,#82
	db #80,#0a,#ce,#90,#05,#ce,#7e,#01
	db #c6,#f9,#82,#80,#0c,#ce,#7e,#80
	db #0a,#ce,#82,#05,#ce,#7e,#01,#c6
	db #f9,#83,#d6,#7e,#80,#0d,#ce,#c4
	db #01,#ce,#78,#01,#ce,#ca,#c2,#7e
	db #81,#0d,#ce,#c4,#01,#ce,#c4,#02
	db #ce,#c4,#03,#ce,#c4,#04,#ce,#c4
	db #05,#ce,#78,#01,#ce,#c4,#01,#ce
	db #c4,#02,#ce,#c4,#03,#ce,#78,#09
	db #ce,#c4,#05,#ce,#7e,#01,#ce,#c4
	db #01,#ce,#78,#01,#ce,#7e,#09,#c2
	db #7e,#81,#0e,#ce,#c4,#01,#ce,#c4
	db #02,#ce,#c4,#03,#ce,#7e,#81,#0f
	db #ce,#7e,#80,#0e,#ce,#7f,#ce,#c4
	db #01,#ce,#c4,#02,#ce,#c4,#03,#ce
	db #7e,#81,#0f,#ce,#7e,#80,#0e,#ce
	db #7f,#ce,#c4,#01,#ce,#c4,#02,#ce
	db #c4,#03,#c2,#7e,#81,#0f,#ce,#7e
	db #80,#0e,#ce,#7e,#80,#0d,#ce,#c4
	db #01,#ce,#7e,#81,#0f,#ce,#c4,#01
	db #ce,#7e,#81,#0d,#ce,#7e,#80,#0f
	db #ce,#7e,#80,#10,#ce,#c4,#01,#ce
	db #7e,#81,#0f,#ce,#c4,#01,#ce,#7e
	db #81,#0d,#ce,#c4,#01,#ce,#74,#01
	db #ce,#7e,#09,#c2,#7a,#81,#11,#ce
	db #c4,#01,#ce,#7a,#01,#ce,#7a,#09
	db #ce,#7a,#01,#ce,#7a,#09,#ce,#7a
	db #01,#ce,#78,#80,#12,#ce,#c4,#01
	db #ce,#c4,#02,#ce,#7a,#81,#11,#ce
	db #78,#80,#12,#ce,#83,#ce,#c4,#01
	db #ce,#86,#01,#ce,#82,#09,#c2,#82
	db #81,#12,#ce,#c4,#01,#ce,#7a,#81
	db #11,#ce,#82,#80,#12,#ce,#7a,#80
	db #11,#ce,#c4,#01,#ce,#78,#81,#12
	db #ce,#7a,#80,#11,#ce,#c4,#01,#ce
	db #c4,#01,#ce,#7e,#01,#ce,#7a,#09
	db #ce,#82,#81,#12,#ce,#c4,#01,#ce
	db #86,#01,#ce,#82,#09,#c2,#60,#81
	db #13,#ce,#61,#ce,#61,#d2,#61,#d2
	db #60,#05,#ce,#60,#01,#d2,#60,#05
	db #ce,#60,#01,#d2,#60,#05,#d2,#60
	db #01,#c2,#48,#81,#06,#d2,#48,#80
	db #09,#ce,#61,#ce,#4c,#80,#08,#ce
	db #60,#80,#09,#ce,#49,#d2,#44,#80
	db #06,#d2,#48,#80,#09,#d2,#4c,#80
	db #08,#d2,#44,#80,#09,#ce,#47,#c2
	db #82,#81,#14,#ce,#c4,#01,#ce,#82
	db #80,#15,#ce,#82,#80,#14,#ce,#83
	db #ce,#c4,#01,#ce,#82,#81,#15,#ce
	db #82,#80,#14,#ce,#83,#ce,#c4,#01
	db #ce,#82,#81,#15,#ce,#82,#80,#14
	db #ce,#83,#ce,#c4,#01,#ce,#82,#81
	db #15,#ce,#82,#80,#14,#c2,#60,#81
	db #16,#ce,#61,#ce,#61,#d2,#61,#d2
	db #60,#05,#ce,#60,#01,#d2,#60,#05
	db #ce,#60,#01,#d2,#60,#05,#d2,#60
	db #01,#c2,#48,#81,#06,#d2,#48,#80
	db #09,#ce,#61,#ce,#4c,#80,#08,#ce
	db #60,#80,#09,#ce,#49,#d2,#60,#80
	db #06,#d2,#4c,#80,#08,#d2,#4d,#ce
	db #4d,#ce,#4d,#c2,#80,#81,#15,#ce
	db #c4,#01,#ce,#c4,#02,#ce,#c4,#03
	db #ce,#80,#81,#17,#ce,#c4,#01,#ce
	db #c4,#02,#ce,#c4,#03,#ce,#78,#81
	db #18,#ce,#c4,#01,#ce,#c4,#02,#ce
	db #c4,#03,#ce,#78,#81,#19,#ce,#c4
	db #01,#ce,#c4,#02,#ce,#c4,#03,#c2
	db #66,#81,#0a,#c6,#f2,#6a,#80,#0c
	db #ce,#6a,#80,#0b,#d2,#66,#80,#0a
	db #c6,#f2,#6a,#80,#0c,#ce,#66,#80
	db #0a,#c6,#f2,#6a,#80,#0c,#ce,#6a
	db #80,#0b,#c2,#66,#85,#0a,#c6,#f2
	db #6a,#80,#0c,#ce,#66,#81,#0a,#d2
	db #6b,#d2,#71,#d2,#71,#c6,#f6,#74
	db #80,#0c,#ce,#70,#80,#0a,#d2,#71
	db #d2,#6b,#c2,#74,#81,#0a,#c6,#fd
	db #76,#80,#0c,#ce,#76,#80,#0b,#d2
	db #74,#80,#0a,#d2,#71,#d2,#71,#c6
	db #f6,#74,#80,#0c,#ce,#74,#80,#0b
	db #d2,#78,#80,#0a,#ce,#74,#05,#ce
	db #70,#01,#c2,#70,#81,#0b,#d2,#6a
	db #80,#0a,#d2,#67,#c6,#f2,#6a,#80
	db #0c,#ce,#6a,#80,#0b,#d2,#66,#80
	db #0a,#c6,#f2,#6b,#ce,#79,#d2,#7f
	db #d2,#79,#c2,#7e,#81,#0a,#c6,#f9
	db #82,#80,#0c,#ce,#82,#80,#0b,#d2
	db #7e,#80,#0a,#c6,#f9,#82,#80,#0c
	db #ce,#82,#80,#0b,#ce,#76,#80,#0a
	db #c6,#05,#74,#80,#0c,#ce,#74,#80
	db #0b,#ce,#70,#80,#0a,#d2,#6b,#d2
	db #7f,#c6,#f9,#82,#80,#0c,#c2,#82
	db #81,#0b,#da,#7e,#80,#0a,#c6,#f9
	db #82,#80,#0c,#ce,#82,#80,#0b,#ce
	db #76,#80,#0a,#c6,#05,#74,#80,#0c
	db #ce,#74,#80,#0b,#ce,#70,#80,#0a
	db #d2,#75,#d2,#77,#c2,#76,#81,#0a
	db #c6,#fb,#78,#80,#0c,#ce,#78,#80
	db #0b,#d2,#7e,#80,#0a,#ce,#78,#05
	db #ce,#76,#01,#c6,#05,#74,#80,#0c
	db #ce,#74,#80,#0b,#d2,#70,#80,#0a
	db #d2,#6b,#d2,#67,#c2,#6a,#81,#0a
	db #d2,#78,#05,#d2,#75,#d2,#71,#d2
	db #6b,#d2,#7e,#01,#d2,#83,#d2,#89
	db #c2,#88,#81,#0a,#c6,#fb,#8c,#80
	db #0c,#ce,#8c,#80,#0b,#d2,#8e,#80
	db #0a,#c6,#03,#8c,#80,#0c,#ce,#8c
	db #80,#0b,#d2,#88,#80,#0a,#d2,#7f
	db #d2,#83,#d2,#89,#c6,#fb,#8d,#c2
	db #8c,#81,#0b,#da,#8e,#80,#0a,#c6
	db #03,#8c,#80,#0c,#ce,#8c,#80,#0b
	db #d2,#88,#80,#0a,#d2,#7f,#d2,#83
	db #d2,#97,#c6,#fd,#9a,#80,#0c,#c2
	db #9a,#81,#0b,#da,#96,#80,#0a,#da
	db #8f,#c6,#fe,#90,#80,#0c,#ce,#90
	db #80,#0b,#d2,#96,#80,#0a,#d2,#8f
	db #c2,#8c,#85,#0a,#d2,#8c,#01,#d2
	db #89,#ce,#8c,#05,#ce,#88,#01,#c6
	db #fb,#8c,#80,#0c,#ce,#8c,#80,#0b
	db #d2,#82,#80,#0a,#d2,#89,#d2,#8d
	db #c2,#8c,#81,#0a,#c6,#fe,#8e,#80
	db #0c,#ce,#8c,#80,#0a,#ce,#8e,#05
	db #ce,#88,#01,#d2,#8d,#c6,#fe,#8e
	db #80,#0c,#ce,#8c,#80,#0a,#ce,#8f
	db #ce,#89,#d2,#8d,#d2,#91,#c2,#88
	db #81,#0a,#c6,#fb,#8d,#ce,#89,#d2
	db #83,#ce,#88,#05,#ce,#7e,#01,#d2
	db #7e,#80,#0b,#d2,#82,#80,#0a,#ce
	db #7e,#01,#ce,#88,#05,#d2,#8d,#ce
	db #88,#05,#c2,#8e,#81,#0a,#c6,#fe
	db #90,#80,#0c,#ce,#90,#80,#0b,#d2
	db #96,#80,#0a,#d2,#96,#80,#0b,#ce
	db #9a,#80,#0a,#ce,#8f,#c6,#fe,#90
	db #80,#0c,#ce,#88,#80,#0a,#d2,#83
	db #ce,#88,#05,#ce,#96,#01,#c6,#fd
	db #9a,#80,#0c,#c2,#9a,#81,#0b,#f2
	db #8c,#80,#0a,#ce,#91,#ce,#97,#d2
	db #9b,#ce,#97,#c2,#9e,#81,#0a,#c6
	db #ff,#a0,#80,#0c,#ce,#a0,#80,#0b
	db #f2,#9a,#80,#0a,#d2,#a1,#c2,#9a
	db #81,#0a,#d2,#83,#d2,#89,#d2,#8d
	db #d2,#8d,#c6,#fe,#8e,#80,#0c,#ce
	db #8c,#80,#0a,#ce,#8d,#c6,#fe,#89
	db #d2,#83,#c2,#9a,#81,#0a,#c6,#fd
	db #9e,#80,#0c,#ce,#9e,#80,#0b,#f2
	db #96,#80,#0a,#d2,#9f,#c2,#96,#81
	db #0a,#d2,#83,#d2,#89,#d2,#8d,#d2
	db #8d,#c6,#fe,#8e,#80,#0c,#ce,#8c
	db #80,#0a,#ce,#8d,#c6,#fe,#89,#d2
	db #83,#c2,#96,#81,#0a,#c6,#fd,#9a
	db #80,#0c,#ce,#9a,#80,#0b,#d2,#96
	db #80,#0a,#d2,#93,#d2,#97,#d2,#93
	db #d2,#91,#ce,#92,#05,#ce,#8e,#01
	db #c6,#03,#8c,#80,#0c,#c2,#8c,#81
	db #0b,#d2,#88,#80,#0a,#d2,#8f,#ce
	db #88,#05,#ce,#88,#01,#c6,#fb,#8c
	db #80,#0c,#ce,#8c,#80,#0b,#d2,#90
	db #80,#0a,#d2,#97,#d2,#9b,#c2,#9a
	db #81,#0a,#c6,#fd,#9f,#ce,#9e,#80
	db #0b,#d2,#a0,#80,#0a,#d2,#9b,#c6
	db #fd,#9f,#ce,#9e,#80,#0b,#d2,#9a
	db #80,#0a,#d2,#99,#d2,#93,#c2,#8c
	db #81,#0a,#c6,#fc,#90,#80,#0c,#ce
	db #90,#80,#0b,#da,#78,#80,#0a,#d2
	db #81,#d2,#83,#d2,#87,#d2,#91,#c2
	db #ff
;
; #a034
; ld de,#8a00
; call #8000
;
.init_music
;
	ld de,l8000
	jp real_init_music
;
.music_info
	db "Robocop 3 C64 (2016)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
