; Music of Thing On A Spring C64 (2016)(Epyteor)(SuTeKH)(StarkOs)
; Ripped by Megachur the 05/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THINOASC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
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
	xor #0e
	jr l861f
	dw #0d4d,#0c8e,#0bda,#0b2f
.l861f equ $ + 6
	dw #0a8f,#09f7,#0968,#08e1
	dw #0861,#07e9,#0777,#070c
	dw #06a7,#0647,#05ed,#0598
	dw #0547,#04fc,#04b4,#0470
	dw #0431,#03f4,#03bc,#0386
	dw #0353,#0324,#02f6,#02cc
	dw #02a4,#027e,#025a,#0238
	dw #0218,#01fa,#01de,#01c3
	dw #01aa,#0192,#017b,#0166
	dw #0152,#013f,#012d,#011c
	dw #010c,#00fd,#00ef,#00e1
	dw #00d5,#00c9,#00be,#00b3
	dw #00a9,#009f,#0096,#008e
	dw #0086,#007f,#0077,#0071
	dw #006a,#0064,#005f,#0059
	dw #0054,#0050,#004b,#0047
	dw #0043,#003f,#003c,#0038
	dw #0035,#0032,#002f,#002d
	dw #002a,#0028,#0026,#0024
	dw #0022,#0020,#001e,#001c
	dw #001b,#0019,#0018,#0016
	dw #0015,#0014,#0013,#0012
	dw #0011,#0010
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
	db #00,#8a,#01,#32,#00,#1e,#8a,#34
	db #8a,#fa,#8a,#00,#8b,#1a,#8a,#1e
	db #8a,#34,#8a,#fa,#8a,#05,#c0,#00
	db #00,#3f,#7e,#4e,#7f,#06,#4e,#7f
	db #02,#6e,#7f,#06,#4e,#7f,#01,#3e
	db #7e,#3e,#7e,#3f,#01,#7f,#01,#1e
	db #77,#8d,#c1,#8d,#81,#8e,#cd,#8e
	db #f9,#8e,#66,#8f,#90,#8f,#c9,#8f
	db #09,#90,#4b,#90,#c9,#8f,#84,#90
	db #c2,#90,#c9,#8f,#f5,#90,#37,#91
	db #c9,#8f,#7b,#91,#c3,#91,#c1,#8d
	db #0b,#92,#5b,#92,#a5,#92,#62,#93
	db #77,#8d,#ae,#93,#81,#8e,#cd,#8e
	db #6c,#94,#66,#8f,#d9,#94,#1f,#95
	db #9f,#95,#d9,#94,#1f,#95,#9f,#95
	db #d9,#94,#1f,#95,#9f,#95,#e5,#95
	db #20,#96,#71,#96,#ac,#96,#c9,#8f
	db #09,#90,#e5,#96,#c9,#8f,#84,#90
	db #c2,#90,#c9,#8f,#f5,#90,#37,#91
	db #1f,#97,#7b,#91,#c3,#91,#c1,#8d
	db #0b,#92,#5b,#92,#a5,#92,#62,#93
	db #77,#8d,#ae,#93,#81,#8e,#cd,#8e
	db #6c,#94,#66,#8f,#d9,#94,#1f,#95
	db #9f,#95,#d9,#94,#1f,#95,#9f,#95
	db #61,#97,#82,#97,#c2,#97,#e3,#97
	db #39,#98,#89,#98,#eb,#98,#4c,#99
	db #74,#99,#d9,#94,#1f,#95,#9f,#95
	db #61,#97,#82,#97,#c2,#97,#61,#97
	db #82,#97,#c2,#97,#d9,#94,#1f,#95
	db #9f,#95,#d9,#94,#1f,#95,#9f,#95
	db #96,#99,#ab,#99,#c0,#99,#3e,#c4
	db #99,#01,#c6,#99,#38,#8b,#42,#8b
	db #4e,#8b,#56,#8b,#67,#8b,#70,#8b
	db #7b,#8b,#86,#8b,#a2,#8b,#c1,#8b
	db #da,#8b,#2c,#8c,#39,#8c,#43,#8c
	db #62,#8c,#81,#8c,#b7,#8c,#c6,#8c
	db #d5,#8c,#e4,#8c,#f3,#8c,#02,#8d
	db #11,#8d,#20,#8d,#35,#8d,#44,#8d
	db #52,#8d,#69,#8d,#3f,#8b,#42,#8b
	db #ff,#37,#00,#00,#00,#00,#3f,#8b
	db #4e,#8b,#00,#b7,#00,#0d,#0a,#07
	db #04,#01,#55,#8b,#56,#8b,#00,#37
	db #00,#0f,#3f,#8b,#67,#8b,#00,#b7
	db #00,#1a,#05,#18,#05,#16,#04,#14
	db #03,#12,#02,#3f,#8b,#70,#8b,#00
	db #b7,#00,#1a,#01,#3f,#8b,#7b,#8b
	db #00,#b7,#00,#1a,#08,#18,#06,#3f
	db #8b,#86,#8b,#00,#b7,#00,#1a,#06
	db #18,#04,#3f,#8b,#a2,#8b,#00,#b7
	db #00,#00,#80,#16,#80,#16,#80,#16
	db #80,#16,#80,#16,#80,#16,#80,#16
	db #80,#16,#80,#16,#80,#16,#af,#8b
	db #c1,#8b,#00,#37,#00,#0f,#0e,#0e
	db #0d,#0d,#0c,#4b,#ff,#ff,#4b,#ff
	db #ff,#4b,#ff,#ff,#4b,#01,#00,#4b
	db #01,#00,#4b,#01,#00,#3f,#8b,#da
	db #8b,#00,#b7,#00,#3d,#3f,#0c,#2f
	db #08,#2d,#04,#0b,#29,#fc,#27,#f8
	db #25,#f4,#23,#f0,#21,#ec,#3f,#8b
	db #2c,#8c,#00,#b7,#00,#3d,#23,#0c
	db #3f,#23,#0d,#3e,#24,#10,#1e,#24
	db #3d,#25,#0f,#3d,#25,#0e,#1c,#26
	db #3c,#26,#0e,#3b,#27,#09,#1b,#27
	db #3a,#28,#0e,#39,#28,#09,#19,#29
	db #38,#29,#0e,#38,#2a,#09,#17,#2a
	db #37,#2b,#0e,#36,#2b,#09,#16,#2c
	db #35,#2c,#0e,#35,#2d,#09,#14,#2d
	db #34,#2e,#0e,#33,#2e,#09,#13,#2f
	db #32,#2f,#0e,#32,#30,#09,#11,#30
	db #3f,#8b,#39,#8c,#00,#b7,#00,#0f
	db #0e,#0d,#0c,#0b,#0a,#41,#8c,#43
	db #8c,#00,#37,#00,#00,#80,#16,#50
	db #8c,#62,#8c,#00,#37,#00,#09,#0a
	db #0b,#0c,#0d,#0d,#4e,#ff,#ff,#4e
	db #ff,#ff,#4e,#ff,#ff,#4e,#01,#00
	db #4e,#01,#00,#4e,#01,#00,#79,#8c
	db #81,#8c,#00,#37,#00,#29,#fd,#2a
	db #fd,#2b,#09,#2b,#09,#2c,#fd,#2c
	db #fd,#2d,#09,#2d,#09,#2d,#fd,#2d
	db #fd,#2d,#09,#2d,#09,#3f,#8b,#b7
	db #8c,#00,#b7,#00,#00,#80,#16,#80
	db #16,#80,#16,#80,#16,#80,#16,#80
	db #16,#80,#16,#80,#16,#80,#16,#80
	db #16,#80,#16,#84,#16,#fe,#ff,#84
	db #16,#fe,#ff,#84,#16,#fe,#ff,#84
	db #16,#02,#00,#84,#16,#02,#00,#84
	db #16,#02,#00,#3f,#8b,#c6,#8c,#00
	db #b7,#00,#3d,#3f,#08,#2c,#04,#0b
	db #2a,#fc,#3f,#8b,#d5,#8c,#00,#b7
	db #00,#2c,#04,#1a,#05,#2c,#04,#2c
	db #04,#3f,#8b,#e4,#8c,#00,#b7,#00
	db #2c,#04,#1a,#07,#2c,#04,#2c,#04
	db #3f,#8b,#f3,#8c,#00,#b7,#00,#2c
	db #03,#1a,#10,#2c,#03,#2c,#03,#3f
	db #8b,#02,#8d,#00,#b7,#00,#2c,#01
	db #1a,#08,#2c,#01,#2c,#01,#3f,#8b
	db #11,#8d,#00,#b7,#00,#2c,#fc,#1a
	db #03,#2c,#fc,#2c,#fc,#3f,#8b,#20
	db #8d,#00,#b7,#00,#2c,#01,#1a,#05
	db #2c,#01,#2c,#01,#33,#8d,#35,#8d
	db #00,#37,#00,#1d,#7f,#c3,#01,#1f
	db #60,#fa,#01,#1d,#60,#a4,#02,#80
	db #16,#3f,#8b,#44,#8d,#00,#b7,#00
	db #2f,#04,#2b,#04,#27,#04,#21,#04
	db #3f,#8b,#52,#8d,#00,#b7,#00,#0f
	db #1a,#05,#18,#03,#0d,#0c,#61,#8d
	db #69,#8d,#00,#37,#00,#0f,#2e,#0c
	db #0e,#0d,#2d,#0c,#0c,#0b,#2b,#0c
	db #0b,#0b,#2b,#0c,#0b,#3f,#8b,#77
	db #8d,#00,#b7,#00,#0d,#0b,#09,#07
	db #05,#03,#01,#b0,#85,#01,#ce,#99
	db #ce,#b1,#ce,#99,#b1,#ce,#99,#b1
	db #ce,#99,#ce,#b1,#ce,#b1,#ce,#99
	db #ce,#b1,#ce,#99,#b1,#d4,#4e,#c7
	db #02,#ed,#c6,#ed,#c6,#ed,#c4,#0f
	db #b0,#85,#01,#ce,#99,#ce,#b1,#ce
	db #99,#b1,#ce,#99,#b1,#ce,#99,#ce
	db #b1,#ce,#b1,#ce,#99,#ce,#b1,#ce
	db #99,#b1,#d4,#52,#c7,#02,#ed,#c6
	db #ed,#c6,#ed,#c4,#0f,#48,#81,#03
	db #48,#80,#04,#48,#80,#05,#48,#80
	db #06,#48,#80,#04,#48,#80,#05,#48
	db #80,#06,#48,#80,#04,#48,#80,#03
	db #48,#80,#04,#48,#80,#05,#48,#80
	db #06,#48,#80,#04,#48,#80,#05,#48
	db #80,#06,#48,#80,#04,#48,#80,#03
	db #48,#80,#04,#48,#80,#05,#48,#80
	db #06,#48,#80,#04,#48,#80,#05,#48
	db #80,#06,#48,#80,#04,#48,#80,#03
	db #48,#80,#04,#48,#80,#05,#48,#80
	db #06,#48,#80,#04,#48,#80,#05,#48
	db #80,#06,#48,#80,#04,#48,#80,#03
	db #48,#80,#04,#48,#80,#05,#48,#80
	db #06,#48,#80,#04,#48,#80,#05,#48
	db #80,#06,#48,#80,#04,#48,#80,#03
	db #48,#80,#04,#48,#80,#05,#48,#80
	db #06,#48,#80,#04,#48,#80,#05,#48
	db #80,#06,#48,#80,#04,#48,#80,#03
	db #48,#80,#04,#48,#80,#05,#48,#80
	db #06,#48,#80,#04,#48,#80,#05,#48
	db #80,#06,#48,#80,#04,#48,#80,#03
	db #48,#80,#04,#48,#80,#05,#48,#80
	db #06,#48,#80,#04,#48,#80,#05,#48
	db #80,#06,#48,#80,#04,#68,#81,#07
	db #ce,#69,#ce,#6f,#71,#69,#ce,#69
	db #ce,#65,#ce,#63,#ce,#69,#ce,#69
	db #ce,#69,#ce,#6f,#71,#65,#69,#ca
	db #d2,#48,#c7,#02,#ed,#c6,#ed,#c6
	db #ed,#c4,#0f,#68,#81,#07,#ce,#69
	db #ce,#6f,#71,#69,#ce,#69,#ce,#65
	db #ce,#63,#ce,#69,#ce,#69,#ce,#69
	db #ce,#6f,#71,#65,#69,#ca,#d2,#4c
	db #c7,#02,#ed,#c6,#ed,#c6,#ed,#c4
	db #0f,#b0,#85,#01,#ce,#99,#ce,#b1
	db #ce,#99,#b1,#ce,#99,#b1,#ce,#99
	db #ce,#b1,#ce,#b1,#ce,#99,#ce,#b1
	db #ce,#99,#b1,#52,#81,#08,#53,#ce
	db #53,#55,#55,#ce,#55,#57,#57,#ce
	db #57,#59,#59,#ce,#59,#48,#81,#03
	db #48,#80,#04,#48,#80,#05,#48,#80
	db #06,#48,#80,#04,#48,#80,#05,#48
	db #80,#06,#48,#80,#04,#48,#80,#03
	db #48,#80,#04,#48,#80,#05,#48,#80
	db #06,#48,#80,#04,#48,#80,#05,#48
	db #80,#06,#48,#80,#04,#30,#80,#09
	db #d2,#48,#80,#0a,#d2,#78,#c7,#0b
	db #1f,#78,#c0,#02,#1f,#c6,#1f,#78
	db #c0,#0b,#1f,#70,#40,#1f,#70,#c0
	db #02,#1f,#c6,#1f,#70,#c0,#0b,#1f
	db #6c,#40,#1f,#6c,#c0,#02,#1f,#c6
	db #1f,#6c,#c0,#0b,#1f,#66,#40,#1f
	db #66,#c0,#02,#1f,#c6,#1f,#66,#c0
	db #0b,#1f,#68,#81,#07,#ce,#69,#ce
	db #6f,#71,#69,#ce,#69,#ce,#65,#ce
	db #63,#ce,#69,#ce,#69,#ce,#69,#ce
	db #6f,#71,#65,#69,#6b,#6b,#ce,#6b
	db #6d,#6d,#ce,#6d,#6f,#6f,#ce,#6f
	db #71,#71,#ce,#71,#78,#81,#08,#7b
	db #81,#ce,#81,#ce,#79,#81,#85,#81
	db #79,#ce,#77,#73,#d0,#79,#7b,#81
	db #ce,#81,#81,#7b,#81,#8b,#8b,#87
	db #ce,#81,#d0,#81,#81,#85,#8b,#ce
	db #8b,#ce,#8b,#ce,#85,#ce,#81,#ce
	db #79,#ce,#77,#73,#e2,#c4,#01,#ce
	db #c4,#02,#ce,#c4,#03,#30,#81,#09
	db #d2,#48,#80,#0a,#d2,#30,#80,#09
	db #d2,#48,#80,#0a,#d2,#30,#80,#09
	db #d2,#48,#80,#0a,#d2,#30,#80,#09
	db #d2,#48,#80,#0a,#d2,#30,#80,#09
	db #d2,#48,#80,#0a,#d2,#30,#80,#09
	db #d2,#48,#80,#0a,#d2,#30,#80,#09
	db #d2,#48,#80,#0a,#d2,#30,#80,#09
	db #d2,#48,#80,#0a,#c2,#72,#81,#07
	db #ce,#73,#ce,#7b,#81,#85,#81,#73
	db #ce,#73,#ce,#6d,#6f,#71,#ce,#73
	db #ce,#73,#ce,#7b,#81,#85,#81,#73
	db #ce,#73,#ce,#85,#83,#81,#71,#73
	db #ce,#73,#ce,#7b,#81,#85,#81,#73
	db #ce,#73,#ce,#6d,#6f,#71,#ce,#73
	db #ce,#8b,#ce,#6d,#ce,#85,#ce,#6f
	db #ce,#87,#ce,#71,#ce,#89,#c2,#78
	db #81,#08,#7b,#81,#ce,#81,#ce,#7b
	db #81,#85,#81,#79,#ce,#77,#73,#d0
	db #79,#7b,#81,#ce,#85,#ce,#7b,#81
	db #c4,#0f,#d4,#80,#01,#85,#87,#89
	db #89,#87,#85,#81,#ce,#7b,#81,#ce
	db #81,#7f,#7d,#79,#ce,#77,#73,#e2
	db #c4,#01,#ce,#c4,#02,#ce,#c4,#03
	db #72,#81,#07,#ce,#73,#ce,#7b,#81
	db #85,#81,#73,#ce,#73,#ce,#6d,#6f
	db #71,#ce,#73,#ce,#73,#ce,#7b,#81
	db #85,#81,#73,#ce,#73,#ce,#85,#83
	db #81,#71,#69,#ce,#69,#ce,#71,#77
	db #7b,#77,#69,#ce,#69,#ce,#63,#65
	db #67,#ce,#73,#ce,#73,#ce,#7b,#81
	db #85,#81,#72,#80,#0c,#c2,#80,#81
	db #0d,#d0,#81,#85,#81,#87,#89,#d4
	db #85,#ce,#7b,#ce,#81,#ce,#81,#ce
	db #83,#85,#7b,#81,#d8,#c4,#0f,#ce
	db #80,#01,#d0,#81,#85,#81,#87,#89
	db #d4,#85,#ce,#83,#ce,#85,#ce,#85
	db #ce,#85,#81,#7b,#73,#d8,#c4,#0f
	db #c2,#68,#81,#07,#ce,#69,#ce,#71
	db #77,#7b,#77,#69,#ce,#69,#ce,#63
	db #65,#67,#ce,#73,#ce,#73,#ce,#7b
	db #81,#85,#81,#73,#ce,#73,#ce,#85
	db #83,#81,#71,#69,#ce,#69,#ce,#71
	db #77,#7b,#77,#69,#ce,#69,#ce,#63
	db #65,#67,#ce,#73,#ce,#73,#ce,#7b
	db #81,#85,#81,#73,#ce,#73,#ce,#71
	db #ce,#6f,#c2,#72,#81,#0d,#75,#7b
	db #ce,#7b,#ce,#75,#7b,#89,#87,#85
	db #ce,#85,#83,#81,#ce,#7f,#ce,#7f
	db #ce,#7f,#7d,#7f,#77,#d8,#c4,#0f
	db #ce,#6e,#01,#71,#77,#ce,#77,#ce
	db #71,#77,#81,#7f,#7d,#ce,#81,#83
	db #85,#89,#8b,#ce,#8b,#ce,#85,#81
	db #7b,#ce,#81,#ce,#c6,#fe,#c6,#fe
	db #c6,#fe,#c6,#fe,#c4,#0f,#c2,#6c
	db #81,#07,#ce,#6d,#ce,#75,#7b,#7f
	db #7b,#6d,#ce,#6d,#ce,#67,#69,#6b
	db #ce,#77,#ce,#77,#ce,#7f,#85,#89
	db #85,#77,#ce,#77,#ce,#89,#87,#85
	db #75,#69,#ce,#69,#ce,#71,#77,#7b
	db #77,#69,#ce,#69,#ce,#63,#65,#67
	db #ce,#73,#ce,#73,#ce,#79,#7b,#85
	db #ce,#69,#ce,#72,#c0,#0c,#fa,#c6
	db #fa,#c6,#fa,#c6,#fa,#ca,#c2,#60
	db #81,#0e,#ce,#61,#ce,#80,#80,#0d
	db #7f,#81,#7f,#81,#85,#ce,#81,#d0
	db #7d,#ce,#60,#80,#0e,#ce,#61,#ce
	db #7a,#80,#0d,#79,#7b,#79,#7b,#7d
	db #ce,#7b,#d0,#79,#ce,#64,#80,#0e
	db #ce,#65,#ce,#76,#80,#0d,#75,#77
	db #75,#77,#7b,#ce,#77,#ce,#75,#73
	db #ce,#71,#ce,#71,#ce,#73,#73,#d0
	db #75,#ce,#75,#ce,#77,#77,#c2,#72
	db #81,#07,#ce,#73,#ce,#7a,#80,#08
	db #79,#7b,#79,#7b,#7d,#ce,#7b,#d0
	db #77,#ce,#72,#80,#07,#ce,#73,#ce
	db #72,#80,#08,#71,#73,#71,#73,#77
	db #ce,#73,#d0,#73,#ce,#76,#80,#07
	db #ce,#77,#ce,#70,#80,#08,#6f,#71
	db #6f,#71,#73,#ce,#71,#ce,#6f,#6d
	db #ce,#80,#80,#07,#ce,#81,#ce,#85
	db #84,#80,#0f,#d0,#86,#80,#07,#ce
	db #87,#ce,#89,#88,#80,#0f,#c2,#60
	db #81,#0e,#ce,#61,#ce,#80,#80,#0d
	db #7f,#81,#7f,#81,#85,#ce,#81,#d0
	db #7d,#ce,#60,#80,#0e,#ce,#61,#ce
	db #7a,#80,#0d,#79,#7b,#79,#7b,#7d
	db #ce,#7b,#d0,#79,#ce,#64,#80,#0e
	db #ce,#65,#ce,#76,#80,#0d,#75,#77
	db #75,#77,#7b,#ce,#77,#ce,#75,#77
	db #ce,#79,#79,#ce,#79,#7b,#7b,#ce
	db #7b,#7d,#7d,#ce,#7d,#7f,#7f,#ce
	db #7f,#48,#81,#03,#48,#80,#04,#48
	db #80,#05,#48,#80,#06,#48,#80,#04
	db #48,#80,#05,#48,#80,#06,#48,#80
	db #04,#48,#80,#03,#48,#80,#04,#48
	db #80,#05,#48,#80,#06,#48,#80,#04
	db #48,#80,#05,#48,#80,#06,#48,#80
	db #04,#48,#80,#03,#48,#80,#04,#48
	db #80,#05,#48,#80,#06,#48,#80,#04
	db #48,#80,#05,#48,#80,#06,#48,#80
	db #04,#48,#80,#03,#48,#80,#04,#48
	db #80,#05,#48,#80,#06,#48,#80,#04
	db #48,#80,#05,#48,#80,#06,#48,#80
	db #04,#48,#80,#03,#48,#80,#04,#48
	db #80,#05,#48,#80,#06,#48,#80,#04
	db #48,#80,#05,#48,#80,#06,#48,#80
	db #04,#48,#80,#03,#48,#80,#04,#48
	db #80,#05,#48,#80,#06,#48,#80,#04
	db #48,#80,#05,#48,#80,#06,#48,#80
	db #04,#7a,#c7,#02,#1f,#7a,#40,#1f
	db #c6,#1f,#7a,#40,#1f,#74,#40,#1f
	db #74,#40,#1f,#c6,#1f,#74,#40,#1f
	db #6c,#40,#1f,#6c,#40,#1f,#c6,#1f
	db #6c,#40,#1f,#66,#40,#1f,#66,#40
	db #1f,#c6,#1f,#66,#40,#1f,#72,#81
	db #07,#ce,#73,#ce,#7a,#80,#08,#79
	db #7b,#79,#7b,#7d,#ce,#7b,#d0,#77
	db #ce,#72,#80,#07,#ce,#73,#ce,#72
	db #80,#08,#71,#73,#71,#73,#77,#ce
	db #73,#d0,#73,#ce,#76,#80,#07,#ce
	db #77,#ce,#70,#80,#08,#6f,#71,#6f
	db #71,#73,#ce,#71,#ce,#6f,#6d,#ce
	db #78,#80,#07,#79,#ce,#79,#7b,#7b
	db #ce,#7b,#7d,#7d,#ce,#7d,#7f,#7f
	db #ce,#7f,#30,#81,#10,#a8,#80,#11
	db #78,#80,#12,#32,#80,#10,#a8,#80
	db #11,#78,#80,#12,#34,#80,#10,#a8
	db #80,#11,#78,#80,#12,#36,#80,#10
	db #a8,#80,#11,#78,#80,#12,#38,#80
	db #10,#a8,#80,#11,#78,#80,#12,#5e
	db #80,#13,#61,#a8,#80,#11,#78,#80
	db #12,#62,#80,#13,#a8,#80,#11,#78
	db #80,#12,#64,#80,#13,#a8,#80,#11
	db #78,#80,#12,#66,#80,#13,#a8,#80
	db #11,#78,#80,#12,#68,#80,#13,#a8
	db #80,#11,#78,#80,#12,#6a,#80,#13
	db #78,#80,#14,#a8,#80,#11,#78,#80
	db #12,#7a,#80,#14,#a8,#80,#11,#78
	db #80,#12,#7c,#80,#14,#a8,#80,#11
	db #78,#80,#12,#7e,#80,#14,#a8,#80
	db #11,#78,#80,#12,#80,#80,#14,#a8
	db #80,#11,#78,#80,#12,#82,#80,#14
	db #90,#80,#15,#a8,#80,#11,#78,#80
	db #12,#92,#80,#15,#a8,#80,#11,#78
	db #80,#12,#94,#80,#15,#a8,#80,#11
	db #78,#80,#12,#96,#80,#15,#a8,#80
	db #11,#78,#80,#12,#98,#80,#15,#a8
	db #80,#11,#78,#80,#12,#9a,#80,#15
	db #90,#80,#16,#a8,#80,#11,#78,#80
	db #12,#92,#80,#16,#a8,#80,#11,#78
	db #80,#12,#94,#80,#16,#a8,#80,#11
	db #78,#80,#12,#96,#80,#16,#a8,#80
	db #11,#78,#80,#12,#98,#80,#16,#a8
	db #80,#11,#78,#80,#12,#9a,#80,#16
	db #30,#80,#09,#d2,#48,#80,#0a,#d2
	db #78,#c7,#0b,#1f,#78,#c0,#02,#1f
	db #c6,#1f,#78,#c0,#0b,#1f,#70,#40
	db #1f,#70,#c0,#02,#1f,#c6,#1f,#70
	db #c0,#0b,#1f,#6c,#40,#1f,#6c,#c0
	db #02,#1f,#c6,#1f,#6c,#c0,#0b,#1f
	db #66,#40,#1f,#66,#c0,#02,#1f,#c6
	db #1f,#66,#c0,#0b,#1f,#78,#81,#0d
	db #7b,#81,#ce,#81,#ce,#7b,#81,#85
	db #85,#83,#81,#c4,#0f,#d2,#78,#01
	db #7b,#81,#ce,#81,#ce,#7b,#81,#c4
	db #0f,#78,#01,#d0,#77,#73,#c4,#0f
	db #ce,#78,#01,#7b,#81,#ce,#81,#ce
	db #7b,#81,#85,#85,#83,#81,#c4,#0f
	db #d2,#78,#01,#7b,#81,#ce,#81,#ce
	db #7b,#81,#8b,#8b,#85,#8b,#d0,#c4
	db #02,#c4,#04,#72,#81,#17,#ce,#72
	db #80,#07,#ce,#48,#80,#0a,#78,#80
	db #07,#7b,#ce,#76,#80,#17,#ce,#72
	db #80,#07,#ce,#48,#80,#0a,#ce,#68
	db #80,#07,#6d,#72,#80,#17,#ce,#72
	db #80,#07,#ce,#48,#80,#0a,#78,#80
	db #07,#7b,#ce,#76,#80,#17,#ce,#72
	db #80,#07,#ce,#48,#80,#0a,#ce,#68
	db #80,#07,#6d,#72,#80,#17,#ce,#72
	db #80,#07,#ce,#48,#80,#0a,#78,#80
	db #07,#7b,#ce,#76,#80,#17,#ce,#72
	db #80,#07,#ce,#48,#80,#0a,#ce,#68
	db #80,#07,#6d,#72,#80,#17,#ce,#72
	db #80,#07,#ce,#48,#80,#0a,#78,#80
	db #07,#7b,#ce,#76,#80,#17,#ce,#72
	db #80,#07,#ce,#48,#80,#0a,#ce,#68
	db #80,#07,#6d,#66,#81,#08,#69,#6f
	db #ce,#6f,#ce,#69,#6f,#73,#73,#71
	db #6f,#c4,#0f,#d2,#66,#01,#69,#6f
	db #ce,#6f,#ce,#69,#6f,#c4,#0f,#66
	db #01,#d0,#65,#63,#c4,#0f,#ce,#66
	db #01,#69,#6f,#ce,#6f,#ce,#69,#6f
	db #73,#73,#71,#6f,#c4,#0f,#d2,#66
	db #01,#69,#6f,#ce,#6f,#ce,#69,#6f
	db #7b,#7b,#73,#5b,#d0,#c4,#02,#c4
	db #04,#78,#81,#0d,#7b,#81,#ce,#81
	db #ce,#7b,#81,#85,#85,#83,#81,#ce
	db #81,#85,#89,#8b,#8b,#89,#87,#d0
	db #85,#85,#83,#81,#d0,#7f,#7f,#7d
	db #7b,#d0,#79,#79,#77,#73,#c4,#02
	db #c4,#04,#60,#81,#18,#5f,#5d,#5b
	db #59,#57,#55,#53,#51,#53,#55,#57
	db #59,#5b,#5d,#5f,#72,#81,#17,#ce
	db #72,#80,#07,#ce,#48,#80,#0a,#78
	db #80,#07,#7b,#ce,#76,#80,#17,#ce
	db #72,#80,#07,#ce,#48,#80,#0a,#ce
	db #68,#80,#07,#6d,#72,#80,#17,#ce
	db #72,#80,#07,#ce,#48,#80,#0a,#78
	db #80,#07,#7b,#ce,#76,#80,#17,#ce
	db #72,#80,#07,#ce,#48,#80,#0a,#ce
	db #68,#80,#07,#6d,#72,#80,#17,#ce
	db #72,#80,#07,#ce,#48,#80,#0a,#72
	db #80,#0c,#d0,#69,#c2,#66,#81,#08
	db #69,#6f,#ce,#6f,#ce,#69,#6f,#73
	db #73,#71,#6f,#ce,#6f,#71,#7b,#7b
	db #7b,#79,#77,#d0,#77,#77,#75,#73
	db #d0,#6d,#6d,#6b,#69,#d0,#67,#67
	db #65,#63,#c4,#02,#c4,#04,#38,#81
	db #19,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #78,#81,#1a,#7b,#81,#ce,#81,#ce
	db #79,#81,#85,#81,#79,#ce,#77,#73
	db #d0,#79,#7b,#81,#ce,#81,#81,#7b
	db #81,#8b,#8b,#87,#ce,#81,#d0,#81
	db #81,#85,#8b,#ce,#8b,#ce,#8b,#ce
	db #85,#ce,#81,#ce,#79,#ce,#77,#73
	db #e2,#c4,#01,#ce,#c4,#02,#ce,#c4
	db #03,#78,#85,#1a,#7b,#81,#ce,#81
	db #ce,#7b,#81,#85,#81,#79,#ce,#77
	db #73,#d0,#79,#7b,#81,#ce,#85,#ce
	db #7b,#81,#ce,#c4,#0f,#d2,#80,#01
	db #85,#87,#89,#89,#87,#85,#81,#ce
	db #7b,#81,#ce,#81,#7f,#7d,#79,#ce
	db #77,#73,#e2,#c4,#01,#ce,#c4,#02
	db #ce,#c4,#03,#30,#81,#09,#d2,#48
	db #80,#0a,#d2,#30,#80,#09,#d2,#48
	db #80,#0a,#d2,#30,#80,#09,#d2,#48
	db #80,#0a,#d2,#30,#80,#09,#d2,#48
	db #80,#0a,#d2,#30,#80,#09,#d2,#48
	db #80,#0a,#d2,#30,#80,#09,#d2,#48
	db #80,#0a,#d2,#38,#80,#19,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#39,#8a,#81,#1a
	db #8b,#85,#ce,#8b,#81,#85,#8b,#91
	db #8b,#8f,#85,#8b,#ce,#81,#87,#ce
	db #81,#85,#7b,#81,#ce,#73,#79,#ce
	db #73,#77,#6d,#73,#8b,#c2,#72,#81
	db #17,#ce,#72,#80,#07,#ce,#48,#80
	db #0a,#78,#80,#07,#7b,#ce,#76,#80
	db #17,#ce,#72,#80,#07,#ce,#48,#80
	db #0a,#ce,#68,#80,#07,#6d,#72,#80
	db #17,#ce,#72,#80,#07,#ce,#48,#80
	db #0a,#78,#80,#07,#7b,#ce,#76,#80
	db #17,#ce,#72,#80,#07,#ce,#48,#80
	db #0a,#ce,#68,#80,#07,#6d,#7a,#81
	db #08,#7b,#73,#ce,#7b,#6f,#73,#7b
	db #7f,#7b,#7d,#73,#7b,#ce,#6f,#77
	db #ce,#6f,#73,#69,#6f,#ce,#63,#67
	db #ce,#63,#65,#5b,#63,#7b,#c2,#c4
	db #0f,#c0,#20,#78,#c7,#02,#1f,#c6
	db #1f,#72,#40,#1f,#78,#40,#1f,#72
	db #40,#1f,#c6,#1f,#78,#40,#1f,#c6
	db #1f,#78,#40,#1f,#c6,#1f,#72,#40
	db #1f,#78,#40,#1f,#72,#40,#1f,#c6
	db #1f,#72,#c0,#1b,#1f,#c6,#1f,#78
	db #c0,#02,#1f,#c6,#1f,#72,#40,#1f
	db #78,#40,#1f,#72,#40,#1f,#c6,#1f
	db #78,#40,#1f,#c6,#1f,#78,#40,#1f
	db #c6,#1f,#72,#40,#1f,#78,#40,#1f
	db #72,#40,#1f,#c6,#1f,#50,#81,#19
	db #ce,#b0,#85,#01,#ce,#b1,#ce,#99
	db #b1,#ce,#99,#b1,#ce,#99,#ce,#b1
	db #ce,#50,#81,#19,#ce,#b0,#85,#01
	db #ce,#b1,#ce,#99,#b1,#ce,#99,#b1
	db #ce,#99,#ce,#b1,#ce,#50,#81,#19
	db #ce,#b0,#85,#01,#ce,#b1,#ce,#99
	db #b1,#ce,#99,#b1,#ce,#99,#ce,#b1
	db #ce,#50,#81,#19,#ce,#b0,#85,#01
	db #ce,#b1,#ce,#99,#b1,#ce,#99,#b1
	db #ce,#99,#ce,#b1,#c2,#38,#81,#19
	db #38,#0b,#38,#01,#38,#0b,#38,#01
	db #38,#0b,#38,#01,#38,#0b,#38,#01
	db #38,#0b,#38,#01,#38,#0b,#38,#01
	db #38,#0b,#38,#01,#38,#0b,#38,#01
	db #38,#0b,#38,#01,#38,#0b,#38,#01
	db #38,#0b,#38,#01,#38,#0b,#38,#01
	db #38,#0b,#38,#01,#38,#0b,#38,#01
	db #38,#0b,#38,#01,#38,#0b,#38,#01
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#72
	db #c7,#1b,#1f,#c6,#1f,#78,#c0,#02
	db #1f,#c6,#1f,#72,#40,#1f,#78,#40
	db #1f,#72,#40,#1f,#c6,#1f,#78,#40
	db #1f,#c6,#1f,#78,#40,#1f,#c6,#1f
	db #72,#40,#1f,#78,#40,#1f,#72,#40
	db #1f,#c6,#1f,#78,#c0,#0b,#1f,#78
	db #c0,#02,#1f,#c6,#1f,#78,#c0,#0b
	db #1f,#70,#40,#1f,#70,#c0,#02,#1f
	db #c6,#1f,#70,#c0,#0b,#1f,#6c,#40
	db #1f,#6c,#c0,#02,#1f,#c6,#1f,#6c
	db #c0,#0b,#1f,#66,#40,#1f,#66,#c0
	db #02,#1f,#c6,#1f,#66,#c0,#0b,#1f
	db #50,#81,#19,#ce,#b0,#85,#01,#ce
	db #b1,#ce,#99,#b1,#ce,#99,#b1,#ce
	db #99,#ce,#b1,#ce,#50,#81,#19,#ce
	db #b0,#85,#01,#ce,#b1,#ce,#99,#b1
	db #ce,#99,#b1,#ce,#99,#ce,#b1,#c2
	db #38,#81,#19,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#2a,#81,#0e,#ce,#c4,#02
	db #c4,#04,#c4,#06,#c4,#08,#c4,#0a
	db #c4,#0c,#c4,#0e,#c4,#0f,#c2,#42
	db #81,#0e,#ce,#c4,#02,#c4,#04,#c4
	db #06,#c4,#08,#c4,#0a,#c4,#0c,#c4
	db #0e,#c4,#0f,#c2,#34,#81,#0a,#c2
	db #14,#ff,#14,#0f,#1c,#ff
;
.init_music		; #a063 - added by Megachur
;
	ld de,l8a00
	jp real_init_music
;
.music_info
	db "Thing On A Spring C64 (2016)(Epyteor)(SuTeKH)",0
	db "StarkOs",0

	read "music_end.asm"
