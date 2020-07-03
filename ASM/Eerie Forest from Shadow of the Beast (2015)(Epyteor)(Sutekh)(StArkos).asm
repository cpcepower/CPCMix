; Music of Eerie Forest from Shadow of the Beast (2015)(Epyteor)(Sutekh)(StArkos)
; Ripped by Megachur the 06/02/2015
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "ERFFSOTB.BIN"
	ENDIF

music_date_rip_day		equ 06
music_date_rip_month	equ 02
music_date_rip_year		equ 2015
music_adr				equ &8000

	read "music_header.asm"

	jp l8872
	jp l800d
	jp l8856
	db #00,#80
.l800b
	db #00
.l800c
	db #00
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
	ld c,l
	dec c
	adc (hl)
	inc c
	jp c,#2f0b
	dec bc
	adc a
	ld a,(bc)
	rst #30
	add hl,bc
	ld l,b
	add hl,bc
.l861f
	pop hl
	ex af,af'
	ld h,c
	ex af,af'
	jp (hl)
	rlca
	ld (hl),a
	rlca
	inc c
	rlca
	and a
	ld b,#47
	ld b,#ed
	dec b
	sbc b
	dec b
	ld b,a
	dec b
	call m,#b404
	inc b
	ld (hl),b
	inc b
	ld sp,#f404
	inc bc
	cp h
	inc bc
	add (hl)
	inc bc
	ld d,e
	inc bc
	inc h
	inc bc
	or #02
	call z,#a402
	ld (bc),a
	ld a,(hl)
	ld (bc),a
	ld e,d
	ld (bc),a
	jr c,l8653
	jr l8655
.l8655 equ $ + 2
.l8653
	jp m,#de01
	ld bc,#01c3
	xor d
	ld bc,#0192
	ld a,e
	ld bc,#0166
	ld d,d
	ld bc,#013f
	dec l
	ld bc,#011c
	inc c
	ld bc,#00fd
	rst #28
	nop
	pop hl
	nop
	push de
	nop
	ret
	nop
	cp (hl)
	nop
	or e
	nop
	xor c
	nop
	sbc a
	nop
	sub (hl)
	nop
	adc (hl)
	nop
	add (hl)
	nop
	ld a,a
	nop
	ld (hl),a
	nop
	ld (hl),c
	nop
	ld l,d
	nop
	ld h,h
	nop
	ld e,a
	nop
	ld e,c
	nop
	ld d,h
	nop
	ld d,b
	nop
	ld c,e
	nop
	ld b,a
	nop
	ld b,e
	nop
	ccf
	nop
	inc a
	nop
	jr c,l86a1
.l86a1
	dec (hl)
	nop
	ld (#2f00),a
	nop
	dec l
	nop
	ld hl,(#2800)
	nop
	ld h,#00
	inc h
	nop
	ld (#2000),hl
	nop
	ld e,#00
	inc e
	nop
	dec de
	nop
	add hl,de
	nop
	jr l86bf
.l86bf
	ld d,#00
	dec d
	nop
	inc d
	nop
	inc de
	nop
	ld (de),a
	nop
	ld de,#1000
	nop
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
	db #18,#00,#d8,#86,#f3,#86,#29,#87
	db #44,#87,#7a,#87,#95,#87,#cb,#87
	db #0e,#87,#5f,#87,#b0,#87,#00,#88
	db #1b,#88,#36,#88,#38,#80,#72,#80
	db #bd,#80,#cb,#80,#08,#81,#d7,#82
	db #29,#83,#7b,#83,#38,#81,#a3,#81
	db #0e,#82,#11,#ff,#da,#86,#f5,#86
	db #2b,#87,#46,#87,#7c,#87,#97,#87
	db #cd,#87,#e7,#87,#10,#87,#61,#87
	db #b2,#87,#02,#88,#1d,#88,#38,#88
	db #d9,#82,#2b,#83,#7d,#83,#03,#b7
	db #ea,#82,#3c,#83,#8e,#83,#00,#00
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
	db #00,#00
.l8a00
	db #53,#4b,#31,#30,#00,#8a,#01,#32
	db #00,#22,#8a,#26,#8a,#e0,#8a,#e9
	db #8a,#1e,#8a,#24,#8a,#56,#8a,#e6
	db #8a,#03,#c0,#00,#00,#0d,#c0,#00
	db #00,#2b,#7f,#07,#7f,#16,#8a,#8c
	db #e4,#8c,#e6,#8c,#3e,#8d,#e4,#8c
	db #98,#8d,#8a,#8c,#f0,#8d,#e6,#8c
	db #3e,#8d,#03,#8e,#98,#8d,#1d,#8e
	db #9e,#8e,#ee,#8e,#00,#8f,#81,#8f
	db #d1,#8f,#1d,#8e,#9e,#8e,#ee,#8e
	db #00,#8f,#fd,#8f,#d1,#8f,#1d,#8e
	db #53,#90,#a5,#90,#00,#8f,#c3,#90
	db #15,#91,#1d,#8e,#53,#90,#a5,#90
	db #00,#8f,#37,#91,#15,#91,#89,#91
	db #0a,#92,#5c,#92,#7e,#92,#ff,#92
	db #5c,#92,#51,#93,#37,#91,#d2,#93
	db #1d,#8e,#53,#90,#f4,#93,#00,#8f
	db #c3,#90,#4f,#94,#1d,#8e,#53,#90
	db #f4,#93,#00,#8f,#37,#91,#4f,#94
	db #ae,#94,#53,#90,#df,#94,#13,#95
	db #44,#95,#96,#95,#ae,#94,#53,#90
	db #df,#94,#13,#95,#d0,#95,#22,#96
	db #5a,#96,#53,#90,#68,#96,#9c,#96
	db #44,#95,#a6,#96,#5a,#96,#53,#90
	db #68,#96,#e0,#96,#ea,#96,#3c,#97
	db #1d,#8e,#53,#90,#ee,#8e,#00,#8f
	db #c3,#90,#d1,#8f,#1d,#8e,#53,#90
	db #ee,#8e,#00,#8f,#c3,#90,#d1,#8f
	db #fe,#83,#97,#f2,#83,#97,#2c,#83
	db #97,#f9,#8a,#03,#8b,#12,#8b,#31
	db #8b,#44,#8b,#50,#8b,#5b,#8c,#73
	db #8c,#00,#8b,#03,#8b,#ff,#37,#00
	db #00,#00,#00,#0a,#8b,#12,#8b,#00
	db #37,#00,#2e,#fd,#2e,#fd,#2e,#09
	db #2e,#09,#19,#8b,#31,#8b,#00,#37
	db #00,#6e,#fd,#fc,#ff,#6e,#fd,#fc
	db #ff,#6e,#fd,#fc,#ff,#6e,#fd,#fe
	db #ff,#6e,#fd,#fe,#ff,#6e,#fd,#fe
	db #ff,#41,#8b,#44,#8b,#00,#37,#00
	db #3f,#3f,#f4,#3e,#3f,#f4,#3d,#3f
	db #f4,#82,#16,#fd,#4d,#8b,#50,#8b
	db #00,#37,#00,#1c,#03,#82,#16,#fd
	db #00,#8b,#5b,#8c,#00,#b7,#00,#6b
	db #09,#ff,#ff,#6d,#09,#ff,#ff,#6f
	db #fd,#ff,#ff,#6f,#fd,#fe,#ff,#6e
	db #fd,#fe,#ff,#6e,#fd,#fe,#ff,#6e
	db #fd,#ff,#ff,#6e,#fd,#ff,#ff,#6e
	db #fd,#ff,#ff,#6d,#fd,#fe,#ff,#6d
	db #fd,#fe,#ff,#6d,#fd,#fe,#ff,#6d
	db #fd,#ff,#ff,#6d,#fd,#ff,#ff,#6c
	db #fd,#ff,#ff,#6c,#fd,#fe,#ff,#6c
	db #fd,#fe,#ff,#6c,#fd,#fe,#ff,#6c
	db #fd,#ff,#ff,#6b,#fd,#ff,#ff,#6b
	db #fd,#ff,#ff,#6b,#fd,#fe,#ff,#6b
	db #fd,#fe,#ff,#6b,#fd,#fe,#ff,#6a
	db #fd,#ff,#ff,#6a,#fd,#ff,#ff,#6a
	db #fd,#ff,#ff,#6a,#fd,#fe,#ff,#6a
	db #fd,#fe,#ff,#69,#fd,#fe,#ff,#69
	db #fd,#ff,#ff,#69,#fd,#ff,#ff,#69
	db #fd,#ff,#ff,#68,#fd,#fe,#ff,#68
	db #fd,#fe,#ff,#68,#fd,#fe,#ff,#68
	db #fd,#ff,#ff,#67,#fd,#ff,#ff,#67
	db #fd,#ff,#ff,#67,#fd,#fe,#ff,#67
	db #fd,#fe,#ff,#66,#fd,#fe,#ff,#66
	db #fd,#ff,#ff,#66,#fd,#ff,#ff,#66
	db #fd,#ff,#ff,#65,#fd,#fe,#ff,#65
	db #fd,#fe,#ff,#65,#fd,#fe,#ff,#65
	db #fd,#ff,#ff,#64,#fd,#ff,#ff,#64
	db #fd,#ff,#ff,#64,#fd,#fe,#ff,#64
	db #fd,#fe,#ff,#63,#fd,#fe,#ff,#63
	db #fd,#ff,#ff,#63,#fd,#ff,#ff,#63
	db #fd,#ff,#ff,#62,#fd,#fe,#ff,#62
	db #fd,#fe,#ff,#62,#fd,#fe,#ff,#62
	db #fd,#ff,#ff,#61,#fd,#ff,#ff,#61
	db #fd,#ff,#ff,#61,#fd,#fe,#ff,#61
	db #fd,#fe,#ff,#70,#8c,#73,#8c,#00
	db #37,#00,#3f,#21,#08,#3f,#23,#04
	db #1e,#25,#3e,#27,#fc,#3d,#29,#f8
	db #82,#16,#fd,#7a,#8c,#8a,#8c,#00
	db #37,#00,#6e,#fd,#ff,#ff,#6e,#fd
	db #ff,#ff,#6e,#09,#ff,#ff,#6e,#09
	db #ff,#ff,#66,#83,#01,#ce,#c4,#03
	db #ce,#c4,#05,#ce,#66,#03,#ce,#71
	db #ce,#c4,#03,#ce,#c4,#05,#ce,#70
	db #03,#ce,#67,#ce,#c4,#03,#ce,#c4
	db #05,#ce,#66,#03,#ce,#71,#ce,#c4
	db #03,#ce,#c4,#05,#ce,#70,#03,#ce
	db #67,#ce,#c4,#03,#ce,#c4,#05,#ce
	db #66,#03,#ce,#71,#ce,#c4,#03,#ce
	db #c4,#05,#ce,#70,#03,#ce,#67,#ce
	db #c4,#03,#ce,#c4,#05,#ce,#66,#03
	db #ce,#71,#ce,#c4,#03,#ce,#c4,#05
	db #ce,#70,#03,#c2,#ca,#c2,#d0,#c4
	db #05,#ce,#76,#83,#01,#ce,#c4,#03
	db #ce,#c4,#05,#ce,#76,#03,#ce,#7f
	db #ce,#c4,#03,#ce,#c4,#05,#ce,#7e
	db #03,#ce,#77,#ce,#c4,#03,#ce,#c4
	db #05,#ce,#76,#03,#ce,#7f,#ce,#c4
	db #03,#ce,#c4,#05,#ce,#7e,#03,#ce
	db #77,#ce,#c4,#03,#ce,#c4,#05,#ce
	db #76,#03,#ce,#7f,#ce,#c4,#03,#ce
	db #c4,#05,#ce,#7e,#03,#ce,#77,#ce
	db #c4,#03,#ce,#c4,#05,#ce,#76,#03
	db #ce,#7b,#ce,#c4,#03,#c2,#66,#83
	db #01,#ce,#c4,#03,#ce,#c4,#05,#ce
	db #66,#03,#ce,#75,#ce,#c4,#03,#ce
	db #c4,#05,#ce,#74,#03,#ce,#67,#ce
	db #c4,#03,#ce,#c4,#05,#ce,#66,#03
	db #ce,#75,#ce,#c4,#03,#ce,#c4,#05
	db #ce,#74,#03,#ce,#67,#ce,#c4,#03
	db #ce,#c4,#05,#ce,#66,#03,#ce,#75
	db #ce,#c4,#03,#ce,#c4,#05,#ce,#74
	db #03,#ce,#67,#ce,#c4,#03,#ce,#c4
	db #05,#ce,#66,#03,#ce,#75,#ce,#c4
	db #03,#ce,#c4,#05,#ce,#74,#03,#c2
	db #d0,#c4,#05,#ce,#74,#83,#01,#ce
	db #c4,#03,#ce,#c4,#05,#ce,#74,#03
	db #ce,#7f,#ce,#c4,#03,#ce,#c4,#05
	db #ce,#7e,#03,#ce,#75,#ce,#c4,#03
	db #ce,#c4,#05,#ce,#74,#03,#ce,#7f
	db #ce,#c4,#03,#ce,#c4,#05,#ce,#7e
	db #03,#ce,#75,#ce,#c4,#03,#ce,#c4
	db #05,#ce,#74,#03,#ce,#7f,#ce,#c4
	db #03,#ce,#c4,#05,#ce,#7e,#03,#ce
	db #75,#ce,#c4,#03,#ce,#c4,#05,#ce
	db #74,#03,#ce,#7b,#ce,#c4,#03,#c2
	db #66,#8b,#02,#d0,#c4,#04,#d0,#c4
	db #03,#d0,#c4,#02,#d0,#c4,#01,#d2
	db #c4,#00,#c2,#c0,#2f,#c6,#02,#ce
	db #c6,#02,#ce,#c6,#02,#ce,#c6,#03
	db #ce,#c6,#03,#ce,#c6,#03,#ce,#c6
	db #03,#ce,#c6,#03,#c2,#66,#83,#01
	db #c4,#03,#66,#03,#c4,#03,#76,#03
	db #c4,#03,#76,#03,#c4,#03,#70,#03
	db #c4,#03,#70,#03,#c4,#03,#7e,#03
	db #c4,#03,#7e,#03,#c4,#03,#66,#03
	db #c4,#03,#66,#03,#c4,#03,#76,#03
	db #c4,#03,#76,#03,#c4,#03,#70,#03
	db #c4,#03,#70,#03,#c4,#03,#7e,#03
	db #c4,#03,#7e,#03,#c4,#03,#66,#03
	db #c4,#03,#66,#03,#c4,#03,#76,#03
	db #c4,#03,#76,#03,#c4,#03,#70,#03
	db #c4,#03,#70,#03,#c4,#03,#7e,#03
	db #c4,#03,#7e,#03,#c4,#03,#66,#03
	db #c4,#03,#66,#03,#c4,#03,#76,#03
	db #c4,#03,#76,#03,#c4,#03,#70,#03
	db #c4,#03,#70,#03,#c4,#03,#7e,#03
	db #c4,#03,#7e,#03,#c4,#03,#58,#81
	db #03,#d2,#58,#80,#04,#ce,#59,#ce
	db #58,#80,#03,#d2,#58,#80,#04,#ce
	db #59,#ce,#58,#80,#03,#d2,#58,#80
	db #04,#ce,#59,#ce,#58,#80,#03,#d2
	db #58,#80,#04,#ce,#59,#ce,#58,#80
	db #03,#d2,#58,#80,#04,#ce,#59,#ce
	db #58,#80,#03,#d2,#58,#80,#04,#ce
	db #59,#ce,#58,#80,#03,#d2,#58,#80
	db #04,#ce,#59,#ce,#58,#80,#03,#d2
	db #58,#80,#04,#ce,#59,#c2,#88,#81
	db #05,#da,#7f,#da,#7b,#da,#7f,#da
	db #89,#da,#7f,#da,#7b,#da,#77,#c2
	db #66,#83,#01,#c4,#03,#66,#03,#c4
	db #03,#74,#03,#c4,#03,#74,#03,#c4
	db #03,#6c,#03,#c4,#03,#6c,#03,#c4
	db #03,#7e,#03,#c4,#03,#7e,#03,#c4
	db #03,#66,#03,#c4,#03,#66,#03,#c4
	db #03,#74,#03,#c4,#03,#74,#03,#c4
	db #03,#6c,#03,#c4,#03,#6c,#03,#c4
	db #03,#7e,#03,#c4,#03,#7e,#03,#c4
	db #03,#66,#03,#c4,#03,#66,#03,#c4
	db #03,#74,#03,#c4,#03,#74,#03,#c4
	db #03,#6c,#03,#c4,#03,#6c,#03,#c4
	db #03,#7e,#03,#c4,#03,#7e,#03,#c4
	db #03,#66,#03,#c4,#03,#66,#03,#c4
	db #03,#74,#03,#c4,#03,#74,#03,#c4
	db #03,#6c,#03,#c4,#03,#6c,#03,#c4
	db #03,#7e,#03,#c4,#03,#7e,#03,#c4
	db #03,#66,#81,#03,#d2,#66,#80,#04
	db #ce,#67,#ce,#66,#80,#03,#d2,#66
	db #80,#04,#ce,#67,#ce,#66,#80,#03
	db #d2,#66,#80,#04,#ce,#67,#ce,#66
	db #80,#03,#d2,#66,#80,#04,#ce,#67
	db #ce,#66,#80,#03,#d2,#66,#80,#04
	db #ce,#67,#ce,#66,#80,#03,#d2,#66
	db #80,#04,#ce,#67,#ce,#66,#80,#03
	db #d2,#66,#80,#04,#ce,#67,#ce,#66
	db #80,#03,#d2,#66,#80,#04,#ce,#67
	db #c2,#66,#8b,#02,#d0,#c4,#04,#d0
	db #c4,#03,#d0,#c4,#02,#d0,#c4,#01
	db #d2,#c4,#00,#c0,#1e,#c6,#02,#ce
	db #c6,#02,#ce,#c6,#02,#ce,#c6,#02
	db #ce,#c6,#03,#ce,#c6,#03,#ce,#c6
	db #03,#ce,#c6,#03,#c2,#66,#81,#03
	db #d2,#66,#80,#04,#ce,#67,#ce,#66
	db #80,#03,#d2,#66,#80,#04,#ce,#67
	db #ce,#66,#80,#03,#d2,#66,#80,#04
	db #ce,#67,#ce,#66,#80,#03,#d2,#66
	db #80,#04,#ce,#67,#ce,#66,#80,#03
	db #d2,#66,#80,#04,#ce,#67,#ce,#66
	db #80,#03,#d2,#66,#80,#04,#ce,#67
	db #ce,#66,#80,#03,#d2,#66,#80,#04
	db #ce,#67,#ce,#66,#80,#03,#ce,#66
	db #80,#06,#ce,#66,#80,#04,#ce,#66
	db #80,#06,#c2,#58,#81,#03,#d2,#58
	db #80,#04,#ce,#59,#ce,#58,#80,#06
	db #d2,#58,#80,#04,#ce,#59,#ce,#58
	db #80,#03,#d2,#58,#80,#04,#ce,#59
	db #ce,#58,#80,#06,#d2,#58,#80,#04
	db #ce,#58,#80,#03,#ce,#59,#d2,#58
	db #80,#04,#ce,#59,#ce,#58,#80,#06
	db #d2,#58,#80,#04,#ce,#59,#ce,#58
	db #80,#03,#d2,#58,#80,#04,#ce,#59
	db #ce,#58,#80,#06,#d2,#58,#80,#04
	db #ce,#58,#80,#03,#c2,#88,#81,#05
	db #d2,#7f,#d2,#7b,#d2,#7f,#ce,#7b
	db #d6,#77,#e2,#89,#d2,#7f,#d2,#7b
	db #d2,#7f,#ce,#7b,#d6,#77,#d2,#75
	db #d2,#71,#c2,#66,#81,#03,#d2,#66
	db #80,#04,#ce,#67,#ce,#66,#80,#06
	db #d2,#66,#80,#04,#ce,#67,#ce,#66
	db #80,#03,#d2,#66,#80,#04,#ce,#67
	db #ce,#66,#80,#06,#d2,#66,#80,#04
	db #ce,#66,#80,#03,#ce,#67,#d2,#66
	db #80,#04,#ce,#67,#ce,#66,#80,#06
	db #d2,#66,#80,#04,#ce,#67,#ce,#66
	db #80,#03,#d2,#66,#80,#04,#ce,#67
	db #ce,#66,#80,#06,#d2,#66,#80,#04
	db #ce,#66,#80,#03,#c2,#74,#81,#05
	db #d2,#77,#d2,#75,#d2,#77,#ce,#75
	db #d6,#67,#d2,#69,#d2,#67,#d2,#75
	db #d2,#77,#d2,#75,#d2,#77,#ce,#75
	db #d6,#67,#d2,#81,#d2,#7f,#c2,#4e
	db #81,#03,#d2,#4e,#80,#04,#ce,#4f
	db #ce,#4e,#80,#06,#d2,#4e,#80,#04
	db #ce,#4f,#ce,#4e,#80,#03,#d2,#4e
	db #80,#04,#ce,#4f,#ce,#4e,#80,#06
	db #d2,#4e,#80,#04,#ce,#4e,#80,#03
	db #ce,#4f,#d2,#4e,#80,#04,#ce,#4f
	db #ce,#4e,#80,#06,#d2,#4e,#80,#04
	db #ce,#4f,#ce,#4e,#80,#03,#d2,#4e
	db #80,#04,#ce,#4f,#ce,#4e,#80,#06
	db #d2,#4e,#80,#04,#ce,#4e,#80,#03
	db #c2,#6c,#83,#01,#c4,#03,#6c,#03
	db #c4,#03,#76,#03,#c4,#03,#76,#03
	db #c4,#03,#6c,#03,#c4,#03,#6c,#03
	db #c4,#03,#84,#03,#c4,#03,#84,#03
	db #c4,#03,#6c,#03,#c4,#03,#6c,#03
	db #c4,#03,#76,#03,#c4,#03,#76,#03
	db #c4,#03,#6c,#03,#c4,#03,#6c,#03
	db #c4,#03,#84,#03,#c4,#03,#84,#03
	db #c4,#03,#6c,#03,#c4,#03,#6c,#03
	db #c4,#03,#76,#03,#c4,#03,#76,#03
	db #c4,#03,#6c,#03,#c4,#03,#6c,#03
	db #c4,#03,#84,#03,#c4,#03,#84,#03
	db #c4,#03,#6c,#03,#c4,#03,#6c,#03
	db #c4,#03,#76,#03,#c4,#03,#76,#03
	db #c4,#03,#6c,#03,#c4,#03,#6c,#03
	db #c4,#03,#84,#03,#c4,#03,#84,#03
	db #c4,#03,#54,#81,#03,#d2,#54,#80
	db #04,#ce,#55,#ce,#54,#80,#06,#d2
	db #54,#80,#04,#ce,#55,#ce,#54,#80
	db #03,#d2,#54,#80,#04,#ce,#55,#ce
	db #54,#80,#06,#d2,#54,#80,#04,#ce
	db #54,#80,#03,#ce,#55,#d2,#54,#80
	db #04,#ce,#55,#ce,#54,#80,#06,#d2
	db #54,#80,#04,#ce,#55,#ce,#54,#80
	db #03,#d2,#54,#80,#04,#ce,#55,#ce
	db #54,#80,#06,#d2,#54,#80,#04,#ce
	db #54,#80,#03,#c2,#74,#81,#05,#d2
	db #77,#d2,#75,#d2,#77,#ce,#75,#d6
	db #71,#d2,#6d,#d2,#71,#d2,#75,#d2
	db #77,#d2,#75,#d2,#77,#ce,#75,#d6
	db #71,#d2,#6d,#d2,#71,#c2,#68,#83
	db #01,#c4,#03,#68,#03,#c4,#03,#76
	db #03,#c4,#03,#76,#03,#c4,#03,#68
	db #03,#c4,#03,#68,#03,#c4,#03,#80
	db #03,#c4,#03,#80,#03,#c4,#03,#68
	db #03,#c4,#03,#68,#03,#c4,#03,#76
	db #03,#c4,#03,#76,#03,#c4,#03,#68
	db #03,#c4,#03,#68,#03,#c4,#03,#80
	db #03,#c4,#03,#80,#03,#c4,#03,#68
	db #03,#c4,#03,#68,#03,#c4,#03,#76
	db #03,#c4,#03,#76,#03,#c4,#03,#68
	db #03,#c4,#03,#68,#03,#c4,#03,#80
	db #03,#c4,#03,#80,#03,#c4,#03,#68
	db #03,#c4,#03,#68,#03,#c4,#03,#76
	db #03,#c4,#03,#76,#03,#c4,#03,#68
	db #03,#c4,#03,#68,#03,#c4,#03,#80
	db #03,#c4,#03,#80,#03,#c4,#03,#50
	db #81,#03,#d2,#50,#80,#04,#ce,#51
	db #ce,#50,#80,#06,#d2,#50,#80,#04
	db #ce,#51,#ce,#50,#80,#03,#d2,#50
	db #80,#04,#ce,#51,#ce,#50,#80,#06
	db #d2,#50,#80,#04,#ce,#50,#80,#03
	db #ce,#51,#d2,#50,#80,#04,#ce,#51
	db #ce,#50,#80,#06,#d2,#50,#80,#04
	db #ce,#51,#ce,#50,#80,#03,#d2,#50
	db #80,#04,#ce,#51,#ce,#50,#80,#06
	db #d2,#50,#80,#04,#ce,#50,#80,#03
	db #c2,#66,#83,#01,#c4,#03,#66,#03
	db #c4,#03,#74,#03,#c4,#03,#74,#03
	db #c4,#03,#66,#03,#c4,#03,#66,#03
	db #c4,#03,#7e,#03,#c4,#03,#7e,#03
	db #c4,#03,#66,#03,#c4,#03,#66,#03
	db #c4,#03,#74,#03,#c4,#03,#74,#03
	db #c4,#03,#66,#03,#c4,#03,#66,#03
	db #c4,#03,#7e,#03,#c4,#03,#7e,#03
	db #c4,#03,#66,#03,#c4,#03,#66,#03
	db #c4,#03,#74,#03,#c4,#03,#74,#03
	db #c4,#03,#66,#03,#c4,#03,#66,#03
	db #c4,#03,#7e,#03,#c4,#03,#7e,#03
	db #c4,#03,#66,#03,#c4,#03,#66,#03
	db #c4,#03,#74,#03,#c4,#03,#74,#03
	db #c4,#03,#66,#03,#c4,#03,#66,#03
	db #c4,#03,#7e,#03,#c4,#03,#7e,#03
	db #c4,#03,#74,#81,#05,#d2,#77,#d2
	db #75,#d2,#77,#ce,#75,#d6,#71,#d2
	db #6f,#d2,#71,#d2,#75,#d2,#77,#d2
	db #75,#d2,#77,#ce,#75,#d6,#67,#d2
	db #85,#d2,#7f,#c2,#88,#81,#07,#ce
	db #c4,#01,#ce,#7e,#01,#ce,#c4,#01
	db #ce,#7a,#01,#ce,#c4,#01,#ce,#7e
	db #01,#ce,#7b,#ce,#c4,#01,#ce,#7a
	db #01,#c4,#01,#76,#01,#d2,#c4,#01
	db #ce,#c4,#03,#ce,#c4,#05,#d2,#88
	db #01,#ce,#c4,#01,#ce,#7e,#01,#ce
	db #c4,#01,#ce,#7a,#01,#ce,#c4,#01
	db #ce,#7e,#01,#ce,#7b,#ce,#c4,#01
	db #ce,#7a,#01,#c4,#01,#76,#01,#ce
	db #c4,#01,#ce,#74,#01,#ce,#c4,#01
	db #ce,#70,#01,#ce,#c4,#01,#c2,#74
	db #81,#07,#ce,#c4,#01,#ce,#76,#01
	db #ce,#c4,#01,#ce,#74,#01,#ce,#c4
	db #01,#ce,#76,#01,#ce,#75,#ce,#c4
	db #01,#ce,#c4,#03,#ce,#66,#01,#ce
	db #c4,#01,#ce,#68,#01,#ce,#c4,#01
	db #ce,#66,#01,#ce,#c4,#01,#ce,#74
	db #01,#ce,#c4,#01,#ce,#76,#01,#ce
	db #c4,#01,#ce,#74,#01,#ce,#c4,#01
	db #ce,#76,#01,#ce,#75,#ce,#c4,#01
	db #ce,#c4,#03,#ce,#66,#01,#ce,#c4
	db #01,#ce,#80,#01,#ce,#c4,#01,#ce
	db #7e,#01,#ce,#c4,#01,#c2,#76,#81
	db #01,#d2,#c4,#01,#d2,#c4,#02,#d2
	db #74,#01,#d2,#c4,#01,#d2,#c4,#02
	db #d2,#70,#01,#d2,#c4,#01,#d2,#76
	db #01,#d2,#c4,#01,#d2,#c4,#02,#d2
	db #7a,#01,#d2,#c4,#01,#d2,#c4,#02
	db #d2,#7e,#01,#d2,#c4,#01,#c2,#58
	db #81,#01,#d2,#c4,#01,#d2,#c4,#02
	db #d2,#c4,#03,#d2,#c4,#04,#d2,#c4
	db #05,#d2,#c4,#06,#d2,#58,#01,#ce
	db #63,#ce,#67,#d2,#c4,#01,#d2,#c4
	db #02,#d2,#c4,#03,#d2,#c4,#04,#d2
	db #c4,#05,#d2,#c4,#06,#d2,#66,#01
	db #ce,#69,#c2,#80,#81,#01,#d2,#c4
	db #01,#d2,#c4,#02,#d2,#c4,#03,#d2
	db #84,#01,#d2,#c4,#01,#d2,#c4,#02
	db #d2,#c4,#03,#d2,#80,#01,#d2,#c4
	db #01,#d2,#c4,#02,#d2,#c4,#03,#d2
	db #7e,#01,#d2,#c4,#01,#d2,#c4,#02
	db #d2,#c4,#03,#c2,#62,#81,#03,#d2
	db #62,#80,#04,#ce,#63,#ce,#62,#80
	db #06,#d2,#62,#80,#04,#ce,#63,#ce
	db #62,#80,#03,#d2,#62,#80,#04,#ce
	db #63,#ce,#62,#80,#06,#d2,#62,#80
	db #04,#ce,#62,#80,#03,#ce,#63,#d2
	db #62,#80,#04,#ce,#63,#ce,#62,#80
	db #06,#d2,#62,#80,#04,#ce,#63,#ce
	db #62,#80,#03,#d2,#62,#80,#04,#ce
	db #63,#ce,#62,#80,#06,#d2,#62,#80
	db #04,#ce,#62,#80,#03,#c2,#6c,#81
	db #01,#d2,#c4,#01,#d2,#c4,#02,#d2
	db #c4,#03,#d2,#c4,#04,#d2,#c4,#05
	db #d2,#c4,#06,#d2,#68,#01,#ce,#67
	db #ce,#63,#d2,#c4,#01,#d2,#c4,#02
	db #c6,#fe,#ce,#c6,#fe,#c4,#03,#c6
	db #fe,#ce,#c6,#fe,#66,#01,#d2,#c4
	db #01,#d2,#c4,#02,#d2,#c4,#03,#c2
	db #62,#81,#03,#d2,#62,#80,#04,#ce
	db #63,#ce,#62,#80,#06,#d2,#62,#80
	db #04,#ce,#63,#ce,#62,#80,#03,#d2
	db #62,#80,#04,#ce,#63,#ce,#62,#80
	db #06,#d2,#62,#80,#04,#ce,#62,#80
	db #03,#ce,#4f,#d2,#4e,#80,#04,#ce
	db #4f,#ce,#4e,#80,#06,#d2,#4e,#80
	db #04,#ce,#4f,#ce,#4e,#80,#03,#d2
	db #4e,#80,#04,#ce,#4f,#ce,#4e,#80
	db #06,#d2,#4e,#80,#04,#ce,#4e,#80
	db #03,#c2,#6c,#81,#01,#d2,#c4,#01
	db #d2,#c4,#02,#d2,#c4,#03,#d2,#c4
	db #04,#d2,#c4,#05,#d2,#c4,#06,#d2
	db #6c,#01,#ce,#71,#ce,#75,#d2,#c4
	db #01,#d2,#c4,#02,#d0,#c6,#ff,#c4
	db #03,#c6,#ff,#ce,#c6,#ff,#76,#01
	db #d2,#c4,#01,#d2,#c4,#02,#d2,#c4
	db #03,#c2,#76,#81,#05,#e2,#75,#e2
	db #71,#da,#77,#e2,#7b,#e2,#7f,#c2
	db #70,#81,#01,#d2,#c4,#01,#d2,#c4
	db #02,#d2,#c4,#03,#d2,#c4,#04,#d2
	db #c4,#05,#d2,#c4,#06,#d2,#70,#01
	db #ce,#7b,#ce,#7f,#d2,#c4,#01,#d2
	db #c4,#02,#d2,#c4,#03,#d2,#c4,#04
	db #d2,#c4,#05,#d2,#c4,#06,#d2,#7e
	db #01,#ce,#81,#c2,#80,#81,#05,#ea
	db #85,#ea,#81,#ea,#7f,#c2,#84,#81
	db #01,#d2,#c4,#01,#d2,#c4,#02,#d2
	db #c4,#03,#d2,#c4,#04,#d2,#c4,#05
	db #d2,#c4,#06,#d2,#80,#01,#ce,#7f
	db #ce,#7b,#d2,#c4,#01,#d2,#c4,#02
	db #c6,#ff,#ce,#c6,#ff,#c4,#03,#c6
	db #ff,#ce,#c6,#ff,#7e,#01,#d2,#c4
	db #01,#d2,#c4,#02,#d2,#c4,#03,#c2
	db #80,#81,#05,#ea,#85,#ea,#89,#ea
	db #7f,#c2,#62,#81,#03,#d2,#62,#80
	db #04,#ce,#63,#ce,#62,#80,#06,#d2
	db #62,#80,#04,#ce,#63,#ce,#62,#80
	db #03,#d2,#62,#80,#04,#ce,#63,#ce
	db #62,#80,#06,#d2,#62,#80,#04,#ce
	db #62,#80,#03,#ce,#67,#d2,#66,#80
	db #04,#ce,#67,#ce,#66,#80,#06,#d2
	db #66,#80,#04,#ce,#67,#ce,#66,#80
	db #03,#d2,#66,#80,#04,#ce,#67,#ce
	db #66,#80,#06,#d2,#66,#80,#04,#ce
	db #66,#80,#03,#c2,#84,#81,#01,#d2
	db #c4,#01,#d2,#c4,#02,#d2,#c4,#03
	db #d2,#c4,#04,#d2,#c4,#05,#d2,#c4
	db #06,#d2,#84,#01,#ce,#89,#ce,#7f
	db #d6,#c4,#01,#d2,#c4,#02,#c6,#01
	db #ce,#c6,#01,#c4,#03,#c6,#01,#ce
	db #c6,#01,#c4,#04,#c6,#01,#ce,#c6
	db #01,#c4,#05,#c6,#01,#ce,#c6,#01
	db #c4,#06,#c6,#01,#ce,#c6,#01,#c4
	db #07,#c6,#01,#08,#0c,#08,#0c,#08
	db #0c,#08,#0c,#08,#0c,#08,#0c,#08
	db #0c,#08,#0c,#08,#0c,#08,#0c,#08
	db #0c,#08,#0c,#08,#0c,#08,#0c,#08
	db #0c,#08,#0c,#08,#0c,#08,#0c,#08
	db #0c,#08,#0c,#08,#0c,#08,#0c,#08
	db #0c,#08,#0c,#08,#0c,#08,#0c,#08
	db #0c,#08,#0c,#08,#0c,#08,#0c,#08
	db #0c,#08,#0c,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.init_music
;
	;	org #a049
	ld de,l8a00
	jp real_init_music
;
.music_info
	db "Eerie Forest from Shadow of the Beast (2015)(Epyteor)(Sutekh)",0
	db "StArkos",0

	read "music_end.asm"
