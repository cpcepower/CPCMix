; Music of Panther Title Music - XL (2019)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 11/02/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PANTTMXL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2021
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
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
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
	db #00,#00,#00,#00
.l8990
	db #53,#4b,#31,#30,#90,#89,#01,#32
	db #00,#ae,#89,#b1,#89,#1d,#8a,#23
	db #8a,#aa,#89,#ae,#89,#b1,#89,#1d
	db #8a,#06,#c0,#00,#00,#21,#8e,#7f
	db #10,#a1,#8b,#bd,#8b,#c1,#8b,#4f
	db #8c,#59,#8c,#15,#8d,#57,#8d,#59
	db #8c,#15,#8d,#57,#8d,#59,#8c,#99
	db #8d,#57,#8d,#59,#8c,#99,#8d,#57
	db #8d,#db,#8d,#99,#8d,#4d,#8e,#8f
	db #8e,#01,#8f,#4d,#8e,#8f,#8e,#01
	db #8f,#51,#8f,#59,#8c,#93,#8f,#51
	db #8f,#59,#8c,#e3,#8f,#4d,#8e,#8f
	db #8e,#01,#8f,#4d,#8e,#8f,#8e,#01
	db #8f,#51,#8f,#59,#8c,#33,#90,#51
	db #8f,#59,#8c,#75,#90,#4d,#8e,#8f
	db #8e,#b7,#90,#4d,#8e,#8f,#8e,#b7
	db #90,#51,#8f,#59,#8c,#c1,#90,#51
	db #8f,#59,#8c,#c1,#90,#01,#e3,#90
	db #20,#2b,#91,#3f,#8a,#49,#8a,#51
	db #8a,#5b,#8a,#88,#8a,#97,#8a,#a6
	db #8a,#b5,#8a,#c4,#8a,#d2,#8a,#ff
	db #8a,#2b,#8b,#58,#8b,#74,#8b,#46
	db #8a,#49,#8a,#ff,#37,#00,#00,#00
	db #00,#50,#8a,#51,#8a,#00,#37,#00
	db #0f,#59,#8a,#5b,#8a,#00,#37,#00
	db #00,#80,#16,#75,#8a,#88,#8a,#00
	db #37,#00,#4a,#fe,#ff,#4f,#fc,#ff
	db #4e,#fe,#ff,#4d,#02,#00,#4c,#04
	db #00,#4b,#02,#00,#0a,#4a,#fe,#ff
	db #4a,#fc,#ff,#4a,#fe,#ff,#4a,#02
	db #00,#4a,#04,#00,#4a,#02,#00,#0a
	db #46,#8a,#97,#8a,#00,#b7,#00,#18
	db #05,#1a,#05,#1c,#05,#1c,#05,#46
	db #8a,#a6,#8a,#00,#b7,#00,#18,#14
	db #1a,#14,#1c,#14,#1c,#14,#46,#8a
	db #b5,#8a,#00,#b7,#00,#18,#0a,#1a
	db #0a,#1c,#0a,#1c,#0a,#46,#8a,#c4
	db #8a,#00,#b7,#00,#18,#0f,#1a,#0f
	db #1c,#0f,#1c,#0f,#46,#8a,#d2,#8a
	db #00,#b7,#00,#0a,#0f,#0e,#0d,#0c
	db #0b,#0a,#46,#8a,#ff,#8a,#00,#b7
	db #00,#4a,#ff,#ff,#4f,#fe,#ff,#4e
	db #ff,#ff,#4d,#01,#00,#4c,#02,#00
	db #4b,#01,#00,#0a,#4a,#ff,#ff,#49
	db #fe,#ff,#49,#ff,#ff,#48,#01,#00
	db #48,#02,#00,#47,#01,#00,#07,#46
	db #8a,#2b,#8b,#00,#b7,#00,#1a,#05
	db #3f,#2c,#04,#1e,#2d,#3d,#2f,#08
	db #3c,#2d,#04,#1b,#29,#3a,#27,#08
	db #39,#26,#04,#18,#26,#37,#25,#08
	db #36,#24,#04,#15,#23,#34,#22,#08
	db #33,#21,#04,#46,#8a,#58,#8b,#00
	db #b7,#00,#4a,#ff,#ff,#4d,#fe,#ff
	db #4f,#ff,#ff,#4f,#01,#00,#4e,#02
	db #00,#4e,#01,#00,#0d,#4d,#ff,#ff
	db #4c,#fe,#ff,#4c,#ff,#ff,#4b,#01
	db #00,#4b,#02,#00,#4a,#01,#00,#0a
	db #46,#8a,#74,#8b,#00,#b7,#00,#0a
	db #2d,#0c,#0f,#2f,#0c,#0e,#2e,#0c
	db #0d,#2d,#0c,#0c,#2c,#0c,#0b,#2b
	db #0c,#0a,#2a,#0c,#8e,#8b,#a1,#8b
	db #00,#37,#00,#4a,#ff,#ff,#4f,#fe
	db #ff,#4e,#ff,#ff,#4d,#01,#00,#4c
	db #02,#00,#4b,#01,#00,#0a,#4a,#ff
	db #ff,#4a,#fe,#ff,#4a,#ff,#ff,#4a
	db #01,#00,#4a,#02,#00,#4a,#01,#00
	db #0a,#60,#9d,#01,#c4,#0d,#c4,#0c
	db #c4,#0b,#c4,#0a,#c4,#09,#c4,#08
	db #c4,#07,#c4,#06,#c4,#05,#c4,#04
	db #c4,#03,#c4,#02,#c2,#78,#81,#02
	db #c2,#ca,#d2,#ba,#cd,#01,#04,#c8
	db #04,#04,#c8,#02,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#c6,#04,#c6,#04,#c6,#04,#48
	db #83,#03,#ea,#49,#ea,#49,#ea,#49
	db #c2,#48,#81,#04,#48,#80,#05,#48
	db #80,#06,#48,#80,#07,#48,#80,#04
	db #48,#80,#07,#48,#80,#04,#48,#80
	db #06,#48,#80,#04,#48,#80,#05,#48
	db #80,#07,#48,#80,#06,#48,#80,#04
	db #49,#48,#80,#06,#48,#80,#07,#48
	db #80,#06,#48,#80,#05,#48,#80,#07
	db #48,#80,#06,#48,#80,#04,#48,#80
	db #06,#48,#80,#04,#48,#80,#07,#48
	db #80,#06,#48,#80,#05,#48,#80,#07
	db #48,#80,#06,#48,#80,#04,#48,#80
	db #06,#48,#80,#04,#48,#80,#07,#48
	db #80,#04,#48,#80,#05,#48,#80,#06
	db #48,#80,#07,#48,#80,#04,#48,#80
	db #07,#48,#80,#04,#48,#80,#06,#48
	db #80,#04,#48,#80,#05,#48,#80,#07
	db #48,#80,#06,#48,#80,#04,#49,#48
	db #80,#06,#48,#80,#07,#48,#80,#06
	db #48,#80,#05,#48,#80,#07,#48,#80
	db #06,#48,#80,#04,#48,#80,#06,#48
	db #80,#04,#48,#80,#07,#48,#80,#06
	db #48,#80,#05,#48,#80,#07,#48,#80
	db #06,#48,#80,#04,#48,#80,#06,#48
	db #80,#04,#48,#80,#07,#60,#81,#08
	db #61,#61,#79,#61,#61,#79,#61,#61
	db #61,#61,#79,#61,#61,#79,#91,#61
	db #61,#61,#79,#61,#61,#79,#61,#61
	db #61,#61,#79,#61,#61,#79,#91,#61
	db #61,#61,#79,#61,#61,#79,#61,#61
	db #61,#61,#79,#61,#61,#79,#91,#61
	db #61,#61,#79,#61,#61,#79,#61,#61
	db #61,#61,#79,#61,#61,#79,#91,#48
	db #83,#03,#49,#49,#61,#49,#49,#61
	db #49,#49,#49,#49,#61,#49,#49,#61
	db #61,#49,#49,#49,#61,#49,#49,#61
	db #49,#49,#49,#49,#61,#49,#49,#61
	db #61,#49,#49,#49,#61,#49,#49,#61
	db #49,#49,#49,#49,#61,#49,#49,#61
	db #61,#49,#49,#49,#61,#49,#49,#61
	db #49,#49,#49,#49,#61,#49,#49,#61
	db #61,#60,#81,#09,#61,#6f,#6f,#6b
	db #6b,#6f,#6f,#61,#61,#6f,#6f,#67
	db #67,#6b,#6b,#61,#61,#6f,#6f,#6b
	db #6b,#6f,#6f,#61,#61,#6f,#6f,#67
	db #67,#6b,#6b,#61,#61,#6f,#6f,#6b
	db #6b,#6f,#6f,#61,#61,#6f,#6f,#67
	db #67,#6b,#6b,#61,#61,#6f,#6f,#6b
	db #6b,#6f,#6f,#61,#61,#6f,#6f,#67
	db #67,#6b,#6b,#60,#81,#02,#ce,#48
	db #80,#04,#49,#48,#80,#0a,#ce,#6e
	db #80,#02,#ce,#61,#ce,#48,#80,#04
	db #49,#48,#80,#0a,#ce,#6e,#80,#02
	db #ce,#61,#ce,#48,#80,#04,#49,#48
	db #80,#0a,#ce,#6e,#80,#02,#ce,#61
	db #ce,#48,#80,#04,#49,#48,#80,#0a
	db #ce,#6e,#80,#02,#ce,#61,#ce,#48
	db #80,#04,#49,#48,#80,#0a,#ce,#6e
	db #80,#02,#ce,#61,#ce,#48,#80,#04
	db #49,#48,#80,#0a,#ce,#6e,#80,#02
	db #ce,#61,#ce,#48,#80,#04,#49,#48
	db #80,#0a,#ce,#6e,#80,#02,#ce,#61
	db #ce,#48,#80,#04,#49,#48,#80,#0a
	db #ce,#6e,#80,#02,#c2,#48,#83,#03
	db #49,#49,#61,#49,#49,#61,#49,#49
	db #49,#49,#61,#49,#49,#61,#61,#49
	db #49,#49,#61,#49,#49,#61,#49,#5d
	db #5d,#5d,#75,#5d,#5d,#75,#75,#49
	db #49,#49,#61,#49,#49,#61,#49,#49
	db #49,#49,#61,#49,#49,#61,#61,#49
	db #49,#49,#61,#49,#49,#61,#49,#5d
	db #5d,#5d,#75,#5d,#5d,#75,#75,#60
	db #81,#02,#ce,#48,#80,#04,#49,#48
	db #80,#0a,#ce,#6e,#80,#02,#ce,#61
	db #ce,#48,#80,#04,#49,#48,#80,#0a
	db #ce,#6e,#80,#02,#ce,#61,#ce,#48
	db #80,#04,#49,#48,#80,#0a,#ce,#6a
	db #80,#02,#ce,#75,#ce,#48,#80,#04
	db #49,#48,#80,#0a,#ce,#6a,#80,#02
	db #ce,#61,#ce,#48,#80,#04,#49,#48
	db #80,#0a,#ce,#6e,#80,#02,#ce,#61
	db #ce,#48,#80,#04,#49,#48,#80,#0a
	db #ce,#6e,#80,#02,#ce,#61,#ce,#48
	db #80,#04,#49,#48,#80,#0a,#ce,#6a
	db #80,#02,#ce,#75,#ce,#48,#80,#04
	db #49,#48,#80,#0a,#ce,#6a,#80,#02
	db #c2,#48,#81,#0b,#ce,#61,#ce,#71
	db #ce,#6f,#ce,#49,#ce,#60,#80,#0c
	db #ce,#71,#ce,#6f,#ce,#48,#80,#0b
	db #ce,#61,#ce,#71,#ce,#6f,#ce,#5d
	db #ce,#5c,#80,#0c,#ce,#75,#ce,#79
	db #ce,#48,#80,#0b,#ce,#61,#ce,#71
	db #ce,#6f,#ce,#49,#ce,#60,#80,#0c
	db #ce,#71,#ce,#6f,#ce,#48,#80,#0b
	db #ce,#61,#ce,#71,#ce,#6f,#ce,#5d
	db #ce,#5c,#80,#0c,#ce,#75,#ce,#6f
	db #c2,#4e,#83,#03,#4f,#4f,#67,#4f
	db #4f,#67,#4f,#4f,#4f,#4f,#67,#4f
	db #4f,#67,#67,#4b,#4b,#4b,#63,#4b
	db #4b,#63,#4b,#4b,#4b,#4b,#63,#4b
	db #4b,#63,#63,#55,#55,#55,#6d,#55
	db #55,#6d,#55,#55,#55,#55,#6d,#55
	db #55,#6d,#6d,#57,#57,#57,#6f,#57
	db #57,#6f,#57,#57,#57,#57,#6f,#57
	db #57,#6f,#6f,#4e,#81,#0b,#ce,#67
	db #ce,#75,#ce,#71,#ce,#4f,#ce,#66
	db #80,#0c,#ce,#75,#ce,#71,#ce,#4a
	db #80,#0b,#ce,#63,#ce,#71,#ce,#6d
	db #ce,#4b,#ce,#62,#80,#0c,#ce,#71
	db #ce,#6d,#ce,#54,#80,#0b,#ce,#6d
	db #ce,#7b,#ce,#6d,#ce,#55,#ce,#6c
	db #80,#0c,#ce,#7b,#ce,#6d,#ce,#56
	db #80,#0b,#ce,#6f,#ce,#7d,#ce,#6f
	db #ce,#57,#ce,#6e,#80,#0c,#ce,#7d
	db #ce,#6f,#c2,#4e,#81,#0b,#ce,#67
	db #ce,#75,#ce,#71,#ce,#4f,#ce,#66
	db #80,#0c,#ce,#75,#ce,#71,#ce,#4a
	db #80,#0b,#ce,#63,#ce,#71,#ce,#6d
	db #ce,#4b,#ce,#62,#80,#0c,#ce,#71
	db #ce,#6d,#ce,#54,#80,#0b,#ce,#6d
	db #ce,#7b,#ce,#6d,#ce,#55,#ce,#6c
	db #80,#0c,#ce,#7b,#ce,#6d,#ce,#56
	db #80,#0b,#ce,#6f,#ce,#7d,#ce,#6f
	db #ce,#7d,#ce,#6e,#80,#0c,#ce,#7d
	db #ce,#7f,#c2,#4e,#81,#0b,#67,#75
	db #71,#4f,#67,#75,#71,#4f,#67,#75
	db #71,#4f,#67,#75,#71,#4b,#63,#71
	db #6d,#4b,#63,#59,#6d,#4b,#63,#59
	db #6d,#4b,#63,#71,#6d,#55,#6d,#7b
	db #6d,#55,#6d,#7b,#6d,#55,#6d,#7b
	db #6d,#55,#6d,#7b,#6d,#57,#6f,#7d
	db #6f,#57,#6f,#7d,#6f,#57,#6f,#7d
	db #6f,#57,#6f,#7d,#6f,#4e,#81,#0b
	db #67,#75,#71,#4f,#67,#75,#71,#4f
	db #67,#75,#71,#4f,#67,#75,#71,#4b
	db #63,#71,#6d,#4b,#63,#59,#6d,#4b
	db #63,#59,#6d,#4b,#63,#71,#6d,#55
	db #6d,#7b,#6d,#55,#6d,#7b,#6d,#55
	db #6d,#7b,#6d,#55,#6d,#7b,#6d,#57
	db #57,#6f,#6f,#7d,#7d,#6f,#6f,#7d
	db #7d,#6f,#6f,#7d,#7d,#7f,#7f,#78
	db #81,#0d,#fa,#8d,#da,#79,#fa,#75
	db #c2,#7e,#81,#03,#ea,#7b,#ea,#6d
	db #ea,#6f,#d2,#c6,#03,#c6,#03,#c6
	db #03,#c6,#03,#c6,#03,#c6,#03,#c6
	db #03,#c6,#03,#c6,#03,#c6,#03,#c6
	db #03,#c6,#03,#0c,#08,#0c,#08,#0c
	db #08,#0c,#08,#0c,#08,#0c,#08,#0c
	db #08,#0c,#08,#0c,#08,#0c,#08,#0c
	db #08,#0c,#08,#0c,#08,#0c,#08,#0c
	db #08,#0c,#08,#0c,#08,#0c,#08,#0c
	db #08,#0c,#08,#0c,#08,#0c,#08,#0c
	db #08,#0c,#08,#0c,#08,#0c,#08,#0c
	db #08,#0c,#08,#0c,#08,#0c,#08,#0c
	db #08,#0c,#08,#0c,#08,#0c,#08,#0c
	db #08,#0c,#08,#18,#ff,#00,#00,#00
	db #a7,#0c,#08,#01,#f0,#a7,#18,#ff
	db #e6,#67,#00,#ff,#fc,#00,#00,#00
;
;	 #9173
;	ld de,#8990
;	call #8000
;
.init_music		; added by Megachur
;
	ld de,l8990
	jp real_init_music
;
.music_info
	db "Panther Title Music - XL (2019)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
