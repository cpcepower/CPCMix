; Music of CPC Meuuuhting Plissken (2008)(Public Domain)(Pulkomandy)(StArkos)
; Ripped by Megachur the 16/02/2016
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "CPCMEUUP.BIN"
	ENDIF

music_date_rip_day		equ 16
music_date_rip_month	equ 02
music_date_rip_year		equ 2016
music_adr				equ &8000

	read "music_header.asm"

	jp l800a
	jp l802e
	nop
	add b
.l8008
	nop
.l8009
	nop
.l800a
	call l88de
	ld hl,l8054
.l8011 equ $ + 1
	ld a,#00
.l8012
	cp (hl)
	jr z,l8019
	inc hl
	inc hl
	jr l8012
.l8019
	inc hl
	ld a,(hl)
	ld (l804d),a
	xor a
	ld (l8043),a
	ld hl,l8037
	ld bc,l8100
	ld de,l8041
	jp #bce0
.l802e
	ld hl,l8037
	call #bce6
	jp l88b9
.l8037
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
;
.play_music
.l8041
;
	di
.l8043 equ $ + 1
	ld a,#00
	sub #01
	jr c,l804c
	ld (l8043),a
	ret
.l804d equ $ + 1
.l804c
	ld a,#00
	ld (l8043),a
	jp l8060
.l8054
	dec c
	ld de,#0b19
	ld (#6405),a
	ld (bc),a
	sub (hl)
	ld bc,#002c
.l8060
	xor a
	ld (l8008),a
	ld (l8897),a
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
.l8071 equ $ + 1
	ld a,#00
.l8073 equ $ + 1
	cp #00
	jr z,l807d
	inc a
	ld (l8071),a
	jp l830c
.l807d
	xor a
	ld (l8071),a
.l8081
	or a
	jp nc,l8163
	ld (l818b),a
	ld (l81f6),a
	ld (l8261),a
	ld a,#b7
	ld (l8081),a
.l8094 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l80ca
.l809a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l80c7
	ld b,a
	and #1f
	bit 4,a
	jr z,l80ab
	or #e0
.l80ab
	ld (l8198),a
	rl b
	rl b
	jr nc,l80b9
	ld a,(hl)
	ld (l8203),a
	inc hl
.l80b9
	rl b
	jr nc,l80c2
	ld a,(hl)
	ld (l826e),a
	inc hl
.l80c2
	ld (l809a),hl
	jr l80cd
.l80c7
	ld (l809a),hl
.l80ca
	ld (l8094),a
.l80ce equ $ + 1
.l80cd
	ld a,#00
	sub #01
	jr c,l80da
	ld (l80ce),a
.l80d7 equ $ + 1
	ld a,#00
	jr l80f5
.l80db equ $ + 1
.l80da
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l80e8
	ld (l80db),hl
	jr l80f5
.l80e8
	ld (l80d7),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l80db),hl
	ld (l80ce),a
	ld a,b
.l80f5
	ld (l82cc),a
.l80f9 equ $ + 1
	ld hl,#0000
	ld de,l8191
	ldi
.l8100
	ldi
	ld de,l81fc
	ldi
	ldi
	ld de,l8267
	ldi
	ldi
	ld (l80f9),hl
.l8114 equ $ + 1
	ld a,#00
	or a
	jr nz,l8126
.l8119 equ $ + 1
	ld a,#00
	sub #01
	jr c,l8134
	ld (l8119),a
.l8122 equ $ + 1
	ld hl,#0000
	jr l816c
.l8127 equ $ + 1
.l8126
	ld a,#00
	sub #01
	jr c,l8134
	ld (l8127),a
	ld hl,(l8135)
	jr l8159
.l8135 equ $ + 1
.l8134
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l8151
	ld (l8119),a
	xor a
	ld (l8114),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8135),hl
	ex de,hl
	ld (l8122),hl
	jr l816c
.l8151
	ld (l8127),a
	ld a,#01
	ld (l8114),a
.l8159
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8135),hl
	ex de,hl
	jr l816c
.l8164 equ $ + 1
.l8163
	ld a,#00
	sub #01
	jr nc,l8187
.l816a equ $ + 1
	ld hl,#0000
.l816c
	ld a,(hl)
	inc hl
	srl a
	jr c,l8184
	srl a
	jr c,l817b
	ld (l8073),a
	jr l8183
.l817b
	ld (l8008),a
.l817f equ $ + 1
	ld a,#01
	ld (l8009),a
.l8183
	xor a
.l8184
	ld (l816a),hl
.l8187
	ld (l8164),a
.l818b equ $ + 1
	ld a,#00
	sub #01
	jr nc,l81f2
.l8191 equ $ + 1
	ld hl,#0000
.l8194 equ $ + 1
	ld bc,#0100
.l8198 equ $ + 2
.l8197 equ $ + 1
	ld de,#0000
.l819b equ $ + 2
	ld lx,#00
	call l8409
	ld a,lx
	ld (l819b),a
	ld (l8316),hl
	exx
	ld (l8191),hl
	ld a,c
	ld (l8194),a
	ld (l8310),a
	xor a
	or hy
	jr nz,l81f0
	ld (l8333),a
	ld d,a
	ld a,e
	ld (l8197),a
	ld l,d
	ld h,l
	ld (l8313),hl
.l81c5 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l8344
	ldi
	ldi
	ld de,l833c
	ldi
	ldi
	ld de,l8335
	ldi
	ld de,l8346
	ldi
	ld a,(hl)
	inc hl
	ld (l8325),hl
	ld hl,l8897
	or (hl)
	ld (hl),a
.l81f0
	ld a,ly
.l81f2
	ld (l818b),a
.l81f6 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l825d
.l81fc equ $ + 1
	ld hl,#0000
.l81ff equ $ + 1
	ld bc,#0200
.l8203 equ $ + 2
.l8202 equ $ + 1
	ld de,#0000
.l8206 equ $ + 2
	ld lx,#00
	call l8409
	ld a,lx
	ld (l8206),a
	ld (l8367),hl
	exx
	ld (l81fc),hl
	ld a,c
	ld (l81ff),a
	ld (l8361),a
	xor a
	or hy
	jr nz,l825b
	ld (l8384),a
	ld d,a
	ld a,e
	ld (l8202),a
	ld l,d
	ld h,l
	ld (l8364),hl
.l8230 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l8395
	ldi
	ldi
	ld de,l838d
	ldi
	ldi
	ld de,l8386
	ldi
	ld de,l8397
	ldi
	ld a,(hl)
	inc hl
	ld (l8376),hl
	ld hl,l8897
	or (hl)
	ld (hl),a
.l825b
	ld a,ly
.l825d
	ld (l81f6),a
.l8261 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l82c8
.l8267 equ $ + 1
	ld hl,#0000
.l826a equ $ + 1
	ld bc,#0300
.l826e equ $ + 2
.l826d equ $ + 1
	ld de,#0000
.l8271 equ $ + 2
	ld lx,#00
	call l8409
	ld a,lx
	ld (l8271),a
	ld (l83b8),hl
	exx
	ld (l8267),hl
	ld a,c
	ld (l826a),a
	ld (l83b2),a
	xor a
	or hy
	jr nz,l82c6
	ld (l83d5),a
	ld d,a
	ld a,e
	ld (l826d),a
	ld l,d
	ld h,l
	ld (l83b5),hl
.l829b equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l83e6
	ldi
	ldi
	ld de,l83de
	ldi
	ldi
	ld de,l83d7
	ldi
	ld de,l83e8
	ldi
	ld a,(hl)
	inc hl
	ld (l83c7),hl
	ld hl,l8897
	or (hl)
	ld (hl),a
.l82c6
	ld a,ly
.l82c8
	ld (l8261),a
.l82cc equ $ + 1
	ld a,#00
	sub #01
	jr c,l82d6
	ld (l82cc),a
	jr l830c
.l82d6
	ld a,#37
	ld (l8081),a
	ld hl,(l80f9)
.l82df equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l830c
	ld (l8094),a
	ld (l80ce),a
	ld (l8164),a
.l82f0 equ $ + 1
	ld hl,#0000
	ld (l809a),hl
.l82f6 equ $ + 1
	ld hl,#0000
	ld (l80db),hl
.l82fc equ $ + 1
	ld hl,#0000
	ld (l80f9),hl
.l8302 equ $ + 1
	ld hl,#0000
	ld (l8135),hl
.l8308 equ $ + 1
	ld a,#00
	ld (l8114),a
.l830c
	ld hl,l8897
.l8310 equ $ + 1
	ld d,#00
	exx
.l8313 equ $ + 1
	ld hl,#0000
.l8316 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8313),hl
	ld (l8544),hl
	ld a,(l819b)
	ld lx,a
.l8325 equ $ + 1
	ld hl,#0000
	ld iy,l8732
	ld a,(l8333)
	call l849e
	ex de,hl
.l8333 equ $ + 1
	ld a,#00
.l8335 equ $ + 1
	cp #00
	jr z,l833b
	inc a
	jr l8358
.l833c equ $ + 1
.l833b
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l8354
.l8344 equ $ + 1
	ld de,#0000
.l8346
	or a
	jr c,l8354
.l834a equ $ + 1
	ld hl,#0000
	ld (l833c),hl
	dec a
	ld (l8335),a
	inc a
.l8354
	ld (l8325),de
.l8358
	ld (l8333),a
	ld a,hx
	ld (l8405),a
.l8361 equ $ + 1
	ld d,#00
	exx
.l8364 equ $ + 1
	ld hl,#0000
.l8367 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8364),hl
	ld (l8544),hl
	ld a,(l8206)
	ld lx,a
.l8376 equ $ + 1
	ld hl,#0000
	ld iy,l8783
	ld a,(l8384)
	call l849e
	ex de,hl
.l8384 equ $ + 1
	ld a,#00
.l8386 equ $ + 1
	cp #00
	jr z,l838c
	inc a
	jr l83a9
.l838d equ $ + 1
.l838c
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l83a5
.l8395 equ $ + 1
	ld de,#0000
.l8397
	or a
	jr c,l83a5
.l839b equ $ + 1
	ld hl,#0000
	ld (l838d),hl
	dec a
	ld (l8386),a
	inc a
.l83a5
	ld (l8376),de
.l83a9
	ld (l8384),a
	ld a,hx
	ld (l8402),a
.l83b2 equ $ + 1
	ld d,#00
	exx
.l83b5 equ $ + 1
	ld hl,#0000
.l83b8 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l83b5),hl
	ld (l8544),hl
	ld a,(l8271)
	ld lx,a
.l83c7 equ $ + 1
	ld hl,#0000
	ld iy,l87d4
	ld a,(l83d5)
	call l849e
	ex de,hl
.l83d5 equ $ + 1
	ld a,#00
.l83d7 equ $ + 1
	cp #00
	jr z,l83dd
	inc a
	jr l83fa
.l83de equ $ + 1
.l83dd
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l83f6
.l83e6 equ $ + 1
	ld de,#0000
.l83e8
	or a
	jr c,l83f6
.l83ec equ $ + 1
	ld hl,#0000
	ld (l83de),hl
	dec a
	ld (l83d7),a
	inc a
.l83f6
	ld (l83c7),de
.l83fa
	ld (l83d5),a
	ld a,hx
	sla a
.l8402 equ $ + 1
	or #00
	rla
.l8405 equ $ + 1
	or #00
	jp l8727
.l8409
	ld a,(hl)
	inc hl
	srl a
	jr c,l8442
	cp #60
	jr nc,l844a
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l8422
	and #0f
	ld c,a
.l8422
	rl b
	jr nc,l8428
	ld e,(hl)
	inc hl
.l8428
	rl b
	jr nc,l843a
.l842c
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l8436
	dec h
.l8436
	ld ly,#00
	ret
.l843a
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l8442
	ld hy,#00
	add d
	ld lx,a
	jr l843a
.l844a
	ld hy,#01
	sub #60
	jr z,l846b
	dec a
	jr z,l8482
	dec a
	jr z,l8474
	dec a
	jr z,l842c
	dec a
	jr z,l847e
	dec a
	jr z,l8493
	dec a
	jr z,l848a
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l846b
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l8474
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l847e
	ld c,(hl)
	inc hl
	jr l842c
.l8482
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l848a
	ld a,(hl)
	inc hl
	ld (l8008),a
	ld a,b
	ld (l8009),a
.l8493
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l849e
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l8554
	bit 4,e
	jr z,l8506
	ld a,(hl)
	bit 6,a
	jr z,l84d3
	ld d,#08
	inc hl
	and #1f
	jr z,l84ba
	ld (l8825),a
	res 3,d
.l84ba
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l84c3
	xor a
.l84c3
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l84d3
	ld (l8825),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l84ef
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l84e8
	xor a
.l84e8
	ld (iy+#36),a
	ld hx,d
	jr l8519
.l84ef
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l84f8
	xor a
.l84f8
	ld (iy+#36),a
.l84fb
	ld hx,d
	ret
.l84fe
	ld (iy+#36),#00
	ld d,#09
	jr l84fb
.l8506
	ld d,#08
	ld a,e
	and #0f
	jr z,l84fe
	exx
	sub d
	exx
	jr nc,l8513
	xor a
.l8513
	ld (iy+#36),a
	ld hx,#08
.l8519
	bit 5,e
	jr z,l8521
	ld a,(hl)
	inc hl
	jr l8522
.l8521
	xor a
.l8522
	bit 6,e
	jr z,l852c
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l852f
.l852c
	ld de,#0000
.l852f
	add lx
	cp #60
	jr c,l8537
	ld a,#60
.l8537
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l8667
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l8544 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l8554
	or a
	jr nz,l855e
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l855e
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
	ld (l8890),a
	bit 3,e
	jr z,l8580
	ld a,(hl)
	inc hl
	ld (l8825),a
	res 3,d
	jr l8580
.l8580
	ld hx,d
	xor a
	bit 7,b
	jr z,l8592
	bit 6,b
	jr z,l858d
	ld a,(hl)
	inc hl
.l858d
	ld (l8641),a
	ld a,#01
.l8592
	ld (l85da),a
	ld a,b
	rra
	and #0e
	ld (l85eb),a
	bit 4,e
	jp nz,l864c
	bit 1,e
	jr z,l85a9
	ld a,(hl)
	inc hl
	jr l85aa
.l85a9
	xor a
.l85aa
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l85b7
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l85ba
.l85b7
	ld de,#0000
.l85ba
	add lx
	cp #60
	jr c,l85c2
	ld a,#60
.l85c2
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l8667
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l8544)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l85da equ $ + 1
	ld a,#00
	or a
	jr nz,l85ea
	ex af,af'
	bit 5,a
	jr nz,l8655
.l85e3
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l85eb equ $ + 1
.l85ea
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l85f5),a
	ld a,c
.l85f5 equ $ + 1
	jr l85f6
.l85f6
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
	jr nc,l860f
	inc bc
.l860f
	ld a,c
	ld (l885a),a
	ld a,b
	ld (l8875),a
	ld a,(l85da)
	or a
	jr z,l864a
	ld a,(l85eb)
	ld e,a
	srl a
	add e
	ld (l8629),a
	ld a,b
.l8629 equ $ + 1
	jr l862a
.l862a
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
.l8641 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l864a
	pop hl
	ret
.l864c
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l85e3
.l8655
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l885a),a
	inc hl
	ld a,(hl)
	ld (l8875),a
	inc hl
	ret
.l8667
	xor #0e
	jr l8679
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
.l8679
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
	jr c,l86ad
	jr l86af
.l86af equ $ + 2
.l86ad
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
	jr c,l86fb
.l86fb
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
	jr l8719
.l8719
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
.l8727
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l8732 equ $ + 1
	ld a,#00
.l8734 equ $ + 1
	cp #00
	jr z,l874c
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
	ld (l8734),a
	exx
.l874d equ $ + 1
.l874c
	ld a,#00
.l874f equ $ + 1
	cp #00
	jr z,l8767
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
	ld (l874f),a
	exx
.l8768 equ $ + 1
.l8767
	ld a,#00
.l876a equ $ + 1
	cp #00
	jr z,l8782
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
	ld (l876a),a
	exx
.l8783 equ $ + 1
.l8782
	ld a,#00
.l8785 equ $ + 1
	cp #00
	jr z,l879d
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
	ld (l8785),a
	exx
.l879e equ $ + 1
.l879d
	ld a,#00
.l87a0 equ $ + 1
	cp #00
	jr z,l87b8
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
	ld (l87a0),a
	exx
.l87b9 equ $ + 1
.l87b8
	ld a,#00
.l87bb equ $ + 1
	cp #00
	jr z,l87d3
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
	ld (l87bb),a
	exx
.l87d4 equ $ + 1
.l87d3
	ld a,#00
.l87d6 equ $ + 1
	cp #00
	jr z,l87ee
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
	ld (l87d6),a
	exx
.l87ef equ $ + 1
.l87ee
	ld a,#00
.l87f1 equ $ + 1
	cp #00
	jr z,l8809
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
	ld (l87f1),a
	exx
.l880a equ $ + 1
.l8809
	ld a,#00
.l880c equ $ + 1
	cp #00
	jr z,l8824
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
	ld (l880c),a
	exx
.l8825 equ $ + 1
.l8824
	ld a,#00
.l8827 equ $ + 1
	cp #00
	jr z,l883f
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
	ld (l8827),a
	exx
.l883f
	ld a,h
.l8841 equ $ + 1
	cp #c0
	jr z,l8859
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
	ld (l8841),a
	exx
.l885a equ $ + 1
.l8859
	ld a,#00
.l885c equ $ + 1
	cp #00
	jr z,l8874
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
	ld (l885c),a
	exx
.l8875 equ $ + 1
.l8874
	ld a,#00
.l8877 equ $ + 1
	cp #00
	jr z,l888f
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
	ld (l8877),a
	exx
.l8890 equ $ + 1
.l888f
	ld a,#00
.l8892 equ $ + 1
	cp #ff
	jr nz,l889c
	ld h,a
.l8897 equ $ + 1
	ld a,#00
	or a
	jr z,l88b0
	ld a,h
.l889c
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
	ld (l8892),a
.l88b0
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
;
.stop_music
.l88b9
;
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l8768),a
	ld (l87b9),a
	ld (l880a),a
	dec a
	ld (l876a),a
	ld (l87bb),a
	ld (l880c),a
	ld (l8841),a
	ld a,#3f
	jp l8727
;
.real_init_music
.l88de
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l817f),a
	inc hl
	ld a,(hl)
	ld (l8011),a
	inc hl
	inc hl
	ld de,l80db
	ldi
	ldi
	ld de,l80f9
	ldi
	ldi
	ld de,l8135
	ldi
	ldi
	ld de,l81c5
	ldi
	ldi
	ld de,l82f0
	ldi
	ldi
	ld de,l82f6
	ldi
	ldi
	ld de,l82fc
	ldi
	ldi
	ld de,l8302
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l8073),a
	ld (l8071),a
	ld (l809a),hl
	ld hl,(l8135)
	ld (l82df),hl
	ld a,(hl)
	and #01
	ld (l8114),a
	ld hl,(l8302)
	ld a,(hl)
	and #01
	ld (l8308),a
	ld hl,(l81c5)
	ld (l8230),hl
	ld (l829b),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l8325),hl
	ld (l8376),hl
	ld (l83c7),hl
	ld (l8344),hl
	ld (l8395),hl
	ld (l83e6),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l834a),de
	ld (l839b),de
	ld (l83ec),de
	ld (l833c),de
	ld (l838d),de
	ld (l83de),de
	ld a,#37
	ld (l8081),a
	ld hl,l899d
.l898d
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l8994
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l8994
	jr l898d
.l899d
	jr l899f
.l899f
	dw l8732,l874d,l8783,l879e
	dw l87d4,l87ef,l8825,l8768
	dw l87b9,l880a,l885a,l8875
	dw l8890,l8094,l80ce,l8119
	dw l8127,l8164,l8333,l8384
	dw l83d5,l8194,l81ff,l826a
	dw #ff11,l8734,l874f,l8785
	dw l87a0,l87d6,l87f1,l8827
	dw l8841,l876a,l87bb,l880c
	dw l885c,l8877,l8892,l8335
	dw l8386,l83d7,#b703,l8346
	dw l8397,l83e8
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
	db #00,#00,#00,#00,#00
.l9000
	db #53,#4b,#31,#30,#00,#90,#01,#32
	db #00,#41,#90,#43,#90,#af,#90,#b2
	db #90,#1a,#90,#41,#90,#43,#90,#af
	db #90,#05,#c0,#00,#00,#07,#fc,#fe
	db #fe,#c0,#00,#00,#fc,#fe,#fe,#c0
	db #00,#00,#c0,#fe,#fe,#c0,#00,#00
	db #fc,#fe,#fe,#c0,#00,#00,#fc,#fe
	db #fe,#c0,#00,#00,#3c,#00,#fc,#fe
	db #fe,#7f,#11,#0e,#91,#50,#91,#e0
	db #91,#0e,#91,#50,#91,#e0,#91,#61
	db #92,#50,#91,#e0,#91,#ad,#92,#50
	db #91,#e0,#91,#0e,#91,#50,#91,#e0
	db #91,#0e,#91,#50,#91,#e0,#91,#0e
	db #91,#50,#91,#e0,#91,#0e,#91,#50
	db #91,#e0,#91,#ff,#92,#50,#91,#e0
	db #91,#4e,#93,#50,#91,#e0,#91,#0e
	db #91,#50,#91,#e0,#91,#0e,#91,#50
	db #91,#e0,#91,#81,#93,#50,#91,#e0
	db #91,#81,#93,#50,#91,#e0,#91,#0e
	db #91,#50,#91,#e0,#91,#0e,#91,#50
	db #91,#e0,#91,#b3,#93,#50,#91,#e0
	db #91,#b3,#93,#50,#91,#e0,#91,#22
	db #04,#94,#bc,#90,#c6,#90,#d2,#90
	db #db,#90,#f3,#90,#c3,#90,#c6,#90
	db #ff,#37,#00,#00,#00,#00,#d1,#90
	db #d2,#90,#00,#37,#00,#0f,#0e,#0d
	db #0c,#0b,#d9,#90,#db,#90,#00,#37
	db #00,#80,#10,#c3,#90,#f3,#90,#04
	db #b7,#00,#1f,#3f,#3b,#3f,#03,#38
	db #3f,#05,#36,#3f,#07,#33,#3f,#09
	db #31,#3f,#0b,#c3,#90,#0e,#91,#00
	db #b7,#00,#1f,#01,#1e,#01,#1d,#01
	db #1c,#01,#1b,#01,#1a,#01,#19,#01
	db #15,#01,#13,#01,#11,#01,#42,#81
	db #01,#2b,#43,#2b,#43,#2b,#43,#2b
	db #45,#2d,#45,#2d,#45,#2d,#3f,#27
	db #3f,#27,#43,#2b,#43,#2b,#43,#2b
	db #45,#2d,#45,#2d,#45,#2d,#3f,#27
	db #3f,#27,#43,#2b,#43,#2b,#43,#2b
	db #45,#2d,#45,#2d,#45,#2d,#3f,#27
	db #3f,#27,#43,#2b,#43,#2b,#43,#2b
	db #45,#2d,#45,#2d,#45,#2d,#3f,#27
	db #6e,#87,#01,#ce,#72,#81,#02,#ce
	db #72,#87,#01,#72,#81,#02,#ce,#72
	db #87,#01,#74,#81,#02,#ce,#74,#87
	db #01,#74,#81,#02,#ce,#74,#87,#01
	db #6e,#81,#02,#ce,#6e,#87,#01,#ce
	db #72,#81,#02,#ce,#72,#87,#01,#72
	db #81,#02,#ce,#72,#87,#01,#74,#81
	db #02,#ce,#74,#87,#01,#74,#81,#02
	db #ce,#74,#87,#01,#6e,#81,#02,#ce
	db #6e,#87,#01,#ce,#72,#81,#02,#ce
	db #72,#87,#01,#72,#81,#02,#ce,#72
	db #87,#01,#74,#81,#02,#ce,#74,#87
	db #01,#74,#81,#02,#ce,#74,#87,#01
	db #6e,#81,#02,#ce,#6e,#87,#01,#ce
	db #72,#81,#02,#ce,#72,#87,#01,#72
	db #81,#02,#ce,#72,#87,#01,#74,#81
	db #02,#ce,#74,#87,#01,#74,#81,#02
	db #ce,#74,#87,#01,#6e,#81,#02,#c2
	db #42,#81,#01,#5a,#07,#5a,#07,#72
	db #01,#5a,#07,#5a,#07,#72,#01,#5a
	db #07,#5a,#07,#74,#01,#5a,#07,#5a
	db #07,#74,#01,#5a,#07,#5a,#07,#3e
	db #01,#42,#01,#5a,#07,#5a,#07,#72
	db #01,#5a,#07,#5a,#07,#72,#01,#5a
	db #07,#5a,#07,#74,#01,#5a,#07,#5a
	db #07,#74,#01,#5a,#07,#5a,#07,#3e
	db #01,#42,#01,#5a,#07,#5a,#07,#72
	db #01,#5a,#07,#5a,#07,#72,#01,#5a
	db #07,#5a,#07,#74,#01,#5a,#07,#5a
	db #07,#74,#01,#5a,#07,#5a,#07,#3e
	db #01,#42,#01,#5a,#07,#5a,#07,#72
	db #01,#5a,#07,#5a,#07,#72,#01,#5a
	db #07,#5a,#07,#74,#01,#5a,#07,#5a
	db #07,#74,#01,#5a,#07,#5a,#07,#3e
	db #01,#60,#81,#03,#d0,#2a,#80,#01
	db #43,#2b,#43,#2b,#45,#2d,#45,#2d
	db #45,#2d,#3f,#27,#60,#80,#03,#d0
	db #2a,#80,#01,#43,#2b,#43,#2b,#45
	db #2d,#45,#2d,#45,#2d,#3f,#27,#60
	db #80,#03,#d0,#2a,#80,#01,#43,#2b
	db #43,#2b,#45,#2d,#45,#2d,#45,#2d
	db #3f,#27,#60,#80,#03,#d0,#2a,#80
	db #01,#43,#2b,#43,#2b,#45,#2d,#45
	db #2d,#45,#2d,#3f,#27,#42,#81,#01
	db #2b,#18,#80,#04,#19,#19,#19,#19
	db #19,#19,#2c,#80,#01,#45,#2d,#45
	db #2d,#3f,#27,#3f,#27,#18,#80,#04
	db #19,#19,#19,#19,#19,#19,#2c,#80
	db #01,#45,#2d,#45,#2d,#3f,#27,#3f
	db #27,#18,#80,#04,#19,#19,#19,#19
	db #19,#19,#2c,#80,#01,#45,#2d,#45
	db #2d,#3f,#27,#3f,#27,#18,#80,#04
	db #19,#19,#19,#19,#19,#19,#2c,#80
	db #01,#45,#2d,#45,#2d,#3f,#27,#8a
	db #81,#01,#8a,#03,#8a,#05,#8a,#07
	db #8a,#09,#42,#01,#d0,#a2,#01,#42
	db #01,#d0,#a2,#05,#42,#01,#d0,#8a
	db #01,#8a,#03,#8a,#05,#8a,#07,#8a
	db #09,#42,#01,#d0,#86,#01,#42,#01
	db #d0,#86,#05,#42,#01,#d0,#8a,#01
	db #8a,#03,#8a,#05,#8a,#07,#8a,#09
	db #42,#01,#d0,#a4,#01,#44,#01,#d0
	db #9e,#01,#42,#01,#d0,#8a,#01,#8d
	db #8b,#87,#8b,#d2,#43,#c2,#26,#81
	db #01,#3f,#57,#6f,#87,#d2,#89,#d2
	db #83,#d2,#27,#3f,#57,#6f,#87,#d2
	db #8d,#d2,#87,#d2,#23,#3b,#53,#6b
	db #83,#d2,#89,#d2,#83,#d2,#87,#89
	db #87,#83,#87,#88,#03,#87,#83,#87
	db #88,#05,#87,#83,#87,#88,#07,#87
	db #83,#5a,#80,#01,#73,#5b,#73,#5b
	db #d2,#5d,#75,#5d,#75,#5d,#d2,#5b
	db #73,#5b,#73,#5b,#d2,#5d,#75,#5d
	db #75,#5d,#d2,#5b,#73,#5b,#73,#5b
	db #d2,#5d,#75,#5d,#75,#5d,#d2,#5b
	db #73,#5b,#73,#5b,#d2,#5d,#75,#5d
	db #75,#5d,#c2,#8a,#81,#01,#c4,#07
	db #d0,#8a,#03,#c4,#07,#d0,#8a,#05
	db #c4,#07,#d0,#8a,#07,#c4,#07,#d0
	db #8a,#01,#c4,#07,#d0,#8a,#03,#c4
	db #07,#d0,#8a,#05,#c4,#07,#d0,#8a
	db #07,#c4,#07,#d0,#86,#01,#c4,#07
	db #d0,#86,#03,#c4,#07,#d0,#86,#05
	db #c4,#07,#d0,#86,#07,#c4,#07,#d0
	db #86,#01,#c4,#07,#d0,#86,#03,#c4
	db #07,#d0,#86,#05,#c4,#07,#d0,#86
	db #07,#c4,#07,#c2,#ff
;
.init_music
;
	ld de,l9000
	jp real_init_music
;
.music_info
	db "CPC Meuuuhting Plissken (2008)(Public Domain)(Pulkomandy)",0
	db "StArkos",0

	read "music_end.asm"
