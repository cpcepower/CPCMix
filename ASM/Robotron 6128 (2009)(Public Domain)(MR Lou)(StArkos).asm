; Music of Robotron 6128 (2009)(Public Domain)(MR Lou)(StArkos)
; Ripped by Megachur the 21/12/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "ROBOTRON.BIN"
	ENDIF

music_date_rip_day		equ 21
music_date_rip_month	equ 12
music_date_rip_year		equ 2014
music_adr				equ &8000
first_theme				equ 0
last_theme				equ 0	; 0 -> 0

	read "music_header.asm"

	jp l800a
	jp l802e
.l8009 equ $ + 3
.l8008 equ $ + 2
	db #00,#80,#00,#00
.l800a
	call l88e0
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
	jp l88bb
.l8037
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
;
.play_music
.l8041	; play ?!
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
	ld (l8899),a
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
	call l840b
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
	ld hl,l8899
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
	call l840b
	ld a,lx
	ld (l8206),a
	ld (l8368),hl
	exx
	ld (l81fc),hl
	ld a,c
	ld (l81ff),a
	ld (l8362),a
	xor a
	or hy
	jr nz,l825b
	ld (l8385),a
	ld d,a
	ld a,e
	ld (l8202),a
	ld l,d
	ld h,l
	ld (l8365),hl
.l8230 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l8396
	ldi
	ldi
	ld de,l838e
	ldi
	ldi
	ld de,l8387
	ldi
	ld de,l8398
	ldi
	ld a,(hl)
	inc hl
	ld (l8377),hl
	ld hl,l8899
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
	call l840b
	ld a,lx
	ld (l8271),a
	ld (l83ba),hl
	exx
	ld (l8267),hl
	ld a,c
	ld (l826a),a
	ld (l83b4),a
	xor a
	or hy
	jr nz,l82c6
	ld (l83d7),a
	ld d,a
	ld a,e
	ld (l826d),a
	ld l,d
	ld h,l
	ld (l83b7),hl
.l829b equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l83e8
	ldi
	ldi
	ld de,l83e0
	ldi
	ldi
	ld de,l83d9
	ldi
	ld de,l83ea
	ldi
	ld a,(hl)
	inc hl
	ld (l83c9),hl
	ld hl,l8899
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
	ld hl,l8899
.l8310 equ $ + 1
	ld d,#00
	exx
.l8313 equ $ + 1
	ld hl,#0000
.l8316 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8313),hl
	ld (l8546),hl
	ld a,(l819b)
	ld lx,a
.l8325 equ $ + 1
	ld hl,#0000
	ld iy,l8734
	ld a,(l8333)
	call l84a0
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
	ld (l8407),a
	exx
.l8362 equ $ + 1
	ld d,#00
	exx
.l8365 equ $ + 1
	ld hl,#0000
.l8368 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8365),hl
	ld (l8546),hl
	ld a,(l8206)
	ld lx,a
.l8377 equ $ + 1
	ld hl,#0000
	ld iy,l8785
	ld a,(l8385)
	call l84a0
	ex de,hl
.l8385 equ $ + 1
	ld a,#00
.l8387 equ $ + 1
	cp #00
	jr z,l838d
	inc a
	jr l83aa
.l838e equ $ + 1
.l838d
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l83a6
.l8396 equ $ + 1
	ld de,#0000
.l8398
	or a
	jr c,l83a6
.l839c equ $ + 1
	ld hl,#0000
	ld (l838e),hl
	dec a
	ld (l8387),a
	inc a
.l83a6
	ld (l8377),de
.l83aa
	ld (l8385),a
	ld a,hx
	ld (l8404),a
	exx
.l83b4 equ $ + 1
	ld d,#00
	exx
.l83b7 equ $ + 1
	ld hl,#0000
.l83ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l83b7),hl
	ld (l8546),hl
	ld a,(l8271)
	ld lx,a
.l83c9 equ $ + 1
	ld hl,#0000
	ld iy,l87d6
	ld a,(l83d7)
	call l84a0
	ex de,hl
.l83d7 equ $ + 1
	ld a,#00
.l83d9 equ $ + 1
	cp #00
	jr z,l83df
	inc a
	jr l83fc
.l83e0 equ $ + 1
.l83df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l83f8
.l83e8 equ $ + 1
	ld de,#0000
.l83ea
	or a
	jr c,l83f8
.l83ee equ $ + 1
	ld hl,#0000
	ld (l83e0),hl
	dec a
	ld (l83d9),a
	inc a
.l83f8
	ld (l83c9),de
.l83fc
	ld (l83d7),a
	ld a,hx
	sla a
.l8404 equ $ + 1
	or #00
	rla
.l8407 equ $ + 1
	or #00
	jp l8729
.l840b
	ld a,(hl)
	inc hl
	srl a
	jr c,l8444
	cp #60
	jr nc,l844c
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l8424
	and #0f
	ld c,a
.l8424
	rl b
	jr nc,l842a
	ld e,(hl)
	inc hl
.l842a
	rl b
	jr nc,l843c
.l842e
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l8438
	dec h
.l8438
	ld ly,#00
	ret
.l843c
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l8444
	ld hy,#00
	add d
	ld lx,a
	jr l843c
.l844c
	ld hy,#01
	sub #60
	jr z,l846d
	dec a
	jr z,l8484
	dec a
	jr z,l8476
	dec a
	jr z,l842e
	dec a
	jr z,l8480
	dec a
	jr z,l8495
	dec a
	jr z,l848c
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l846d
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l8476
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l8480
	ld c,(hl)
	inc hl
	jr l842e
.l8484
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l848c
	ld a,(hl)
	inc hl
	ld (l8008),a
	ld a,b
	ld (l8009),a
.l8495
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l84a0
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l8556
	bit 4,e
	jr z,l8508
	ld a,(hl)
	bit 6,a
	jr z,l84d5
	ld d,#08
	inc hl
	and #1f
	jr z,l84bc
	ld (l8827),a
	res 3,d
.l84bc
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l84c5
	xor a
.l84c5
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l84d5
	ld (l8827),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l84f1
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l84ea
	xor a
.l84ea
	ld (iy+#36),a
	ld hx,d
	jr l851b
.l84f1
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l84fa
	xor a
.l84fa
	ld (iy+#36),a
.l84fd
	ld hx,d
	ret
.l8500
	ld (iy+#36),#00
	ld d,#09
	jr l84fd
.l8508
	ld d,#08
	ld a,e
	and #0f
	jr z,l8500
	exx
	sub d
	exx
	jr nc,l8515
	xor a
.l8515
	ld (iy+#36),a
	ld hx,#08
.l851b
	bit 5,e
	jr z,l8523
	ld a,(hl)
	inc hl
	jr l8524
.l8523
	xor a
.l8524
	bit 6,e
	jr z,l852e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l8531
.l852e
	ld de,#0000
.l8531
	add lx
	cp #60
	jr c,l8539
	ld a,#5f
.l8539
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l8669
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l8546 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l8556
	or a
	jr nz,l8560
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l8560
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
	ld (l8892),a
	bit 3,e
	jr z,l8582
	ld a,(hl)
	inc hl
	ld (l8827),a
	res 3,d
	jr l8582
.l8582
	ld hx,d
	xor a
	bit 7,b
	jr z,l8594
	bit 6,b
	jr z,l858f
	ld a,(hl)
	inc hl
.l858f
	ld (l8643),a
	ld a,#01
.l8594
	ld (l85dc),a
	ld a,b
	rra
	and #0e
	ld (l85ed),a
	bit 4,e
	jp nz,l864e
	bit 1,e
	jr z,l85ab
	ld a,(hl)
	inc hl
	jr l85ac
.l85ab
	xor a
.l85ac
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l85b9
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l85bc
.l85b9
	ld de,#0000
.l85bc
	add lx
	cp #60
	jr c,l85c4
	ld a,#5f
.l85c4
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l8669
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l8546)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l85dc equ $ + 1
	ld a,#00
	or a
	jr nz,l85ec
	ex af,af'
	bit 5,a
	jr nz,l8657
.l85e5
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l85ed equ $ + 1
.l85ec
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l85f7),a
	ld a,c
.l85f7 equ $ + 1
	jr l85f8
.l85f8
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
	jr nc,l8611
	inc bc
.l8611
	ld a,c
	ld (l885c),a
	ld a,b
	ld (l8877),a
	ld a,(l85dc)
	or a
	jr z,l864c
	ld a,(l85ed)
	ld e,a
	srl a
	add e
	ld (l862b),a
	ld a,b
.l862b equ $ + 1
	jr l862c
.l862c
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
.l8643 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l864c
	pop hl
	ret
.l864e
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l85e5
.l8657
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l885c),a
	inc hl
	ld a,(hl)
	ld (l8877),a
	inc hl
	ret
.l8669
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
.l8729
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l8734 equ $ + 1
	ld a,#00
.l8736 equ $ + 1
	cp #00
	jr z,l874e
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
	ld (l8736),a
	exx
.l874e
	ld a,#00
.l8751 equ $ + 1
	cp #00
	jr z,l8769
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
	ld (l8751),a
	exx
.l876a equ $ + 1
.l8769
	ld a,#00
.l876c equ $ + 1
	cp #00
	jr z,l8784
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
	ld (l876c),a
	exx
.l8785 equ $ + 1
.l8784
	ld a,#00
.l8787 equ $ + 1
	cp #00
	jr z,l879f
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
	ld (l8787),a
	exx
.l879f
	ld a,#00
.l87a2 equ $ + 1
	cp #00
	jr z,l87ba
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
	ld (l87a2),a
	exx
.l87bb equ $ + 1
.l87ba
	ld a,#00
.l87bd equ $ + 1
	cp #00
	jr z,l87d5
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
	ld (l87bd),a
	exx
.l87d6 equ $ + 1
.l87d5
	ld a,#00
.l87d8 equ $ + 1
	cp #00
	jr z,l87f0
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
	ld (l87d8),a
	exx
.l87f0
	ld a,#00
.l87f3 equ $ + 1
	cp #00
	jr z,l880b
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
	ld (l87f3),a
	exx
.l880c equ $ + 1
.l880b
	ld a,#00
.l880e equ $ + 1
	cp #00
	jr z,l8826
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
	ld (l880e),a
	exx
.l8827 equ $ + 1
.l8826
	ld a,#00
.l8829 equ $ + 1
	cp #00
	jr z,l8841
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
	ld (l8829),a
	exx
.l8841
	ld a,h
.l8843 equ $ + 1
	cp #c0
	jr z,l885b
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
	ld (l8843),a
	exx
.l885c equ $ + 1
.l885b
	ld a,#00
.l885e equ $ + 1
	cp #00
	jr z,l8876
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
	ld (l885e),a
	exx
.l8877 equ $ + 1
.l8876
	ld a,#00
.l8879 equ $ + 1
	cp #00
	jr z,l8891
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
	ld (l8879),a
	exx
.l8892 equ $ + 1
.l8891
	ld a,#00
.l8894 equ $ + 1
	cp #ff
	jr nz,l889e
	ld h,a
.l8899 equ $ + 1
	ld a,#00
	or a
	jr z,l88b2
	ld a,h
.l889e
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
	ld (l8894),a
.l88b2
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
;
.stop_music
.l88bb
;
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l876a),a
	ld (l87bb),a
	ld (l880c),a
	dec a
	ld (l876c),a
	ld (l87bd),a
	ld (l880e),a
	ld (l8843),a
	ld a,#3f
	jp l8729
;
.real_init_music
.l88e0
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
	ld (l8377),hl
	ld (l83c9),hl
	ld (l8344),hl
	ld (l8396),hl
	ld (l83e8),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l834a),de
	ld (l839c),de
	ld (l83ee),de
	ld (l833c),de
	ld (l838e),de
	ld (l83e0),de
	ld a,#37
	ld (l8081),a
	ld hl,l899f
.l898f
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l8996
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l8996
	jr l898f
.l899f
	jr l89a1
.l89a1
	db #34,#87,#4f,#87,#85,#87,#a0,#87
	db #d6,#87,#f1,#87,#27,#88,#6a,#87
	db #bb,#87,#0c,#88,#5c,#88,#77,#88
	db #92,#88,#94,#80,#ce,#80,#19,#81
	db #27,#81,#64,#81,#33,#83,#85,#83
	db #d7,#83,#94,#81,#ff,#81,#6a,#82
	db #11,#ff,#36,#87,#51,#87,#87,#87
	db #a2,#87,#d8,#87,#f3,#87,#29,#88
	db #43,#88,#6c,#87,#bd,#87,#0e,#88
	db #5e,#88,#79,#88,#94,#88,#35,#83
	db #87,#83,#d9,#83,#03,#b7,#46,#83
	db #98,#83,#ea,#83,#00,#00,#00
.l8a00
	db #53
	db #4b,#31,#30,#00,#8a,#01,#64,#00
	db #22,#8a,#26,#8a,#6e,#8a,#74,#8a
	db #1e,#8a,#24,#8a,#32,#8a,#71,#8a
	db #0a,#c0,#00,#00,#01,#c0,#00,#00
	db #11,#7f,#01,#7f,#09,#ff,#8b,#9b
	db #8c,#1b,#8d,#ff,#8b,#1c,#8d,#96
	db #8d,#c0,#8d,#9b,#8c,#68,#8e,#df
	db #8e,#9b,#8c,#68,#8e,#c0,#8d,#9b
	db #8c,#68,#8e,#87,#8f,#28,#90,#94
	db #90,#ef,#90,#90,#91,#10,#92,#87
	db #92,#28,#93,#9e,#93,#09,#94,#8b
	db #94,#1b,#8d,#e7,#94,#8b,#94,#1b
	db #8d,#e7,#94,#70,#95,#ff,#8b,#e8
	db #95,#6d,#96,#ff,#8b,#02,#db,#96
	db #12,#db,#96,#a0,#8a,#aa,#8a,#b6
	db #8a,#c2,#8a,#ce,#8a,#da,#8a,#e3
	db #8a,#ef,#8a,#07,#8b,#1f,#8b,#3c
	db #8b,#4a,#8b,#58,#8b,#66,#8b,#74
	db #8b,#85,#8b,#a6,#8b,#b1,#8b,#bc
	db #8b,#e1,#8b,#eb,#8b,#f6,#8b,#a7
	db #8a,#aa,#8a,#ff,#37,#00,#00,#00
	db #00,#a7,#8a,#b6,#8a,#00,#b7,#00
	db #2f,#07,#2f,#03,#0f,#a7,#8a,#c2
	db #8a,#00,#b7,#00,#0f,#2f,#03,#2f
	db #07,#a7,#8a,#ce,#8a,#00,#b7,#00
	db #2f,#06,#2f,#03,#0f,#a7,#8a,#da
	db #8a,#00,#b7,#00,#0f,#2f,#03,#2f
	db #06,#e1,#8a,#e3,#8a,#00,#37,#01
	db #80,#08,#a7,#8a,#ef,#8a,#02,#b7
	db #00,#a0,#1c,#01,#00,#00,#05,#8b
	db #07,#8b,#00,#37,#01,#a2,#1c,#24
	db #01,#00,#a2,#1c,#24,#01,#00,#a2
	db #1c,#24,#01,#00,#80,#08,#1d,#8b
	db #1f,#8b,#00,#37,#01,#a2,#1c,#1e
	db #01,#00,#a2,#1c,#1e,#01,#00,#a2
	db #1c,#1e,#01,#00,#80,#08,#a7,#8a
	db #3c,#8b,#00,#b7,#00,#3f,#26,#0c
	db #2f,#0a,#2d,#09,#2d,#08,#2b,#05
	db #2b,#04,#29,#03,#27,#02,#27,#01
	db #26,#01,#06,#a7,#8a,#4a,#8b,#00
	db #b7,#00,#2f,#0c,#2f,#07,#2f,#03
	db #0f,#a7,#8a,#58,#8b,#00,#b7,#00
	db #0f,#2f,#03,#2f,#06,#2f,#0c,#a7
	db #8a,#66,#8b,#00,#b7,#00,#0f,#2f
	db #03,#2f,#07,#2f,#0c,#a7,#8a,#74
	db #8b,#00,#b7,#00,#2f,#0c,#2f,#06
	db #2f,#03,#0f,#a7,#8a,#85,#8b,#01
	db #b7,#00,#1a,#01,#19,#01,#18,#01
	db #17,#01,#16,#01,#a7,#8a,#a6,#8b
	db #00,#b7,#00,#3f,#2b,#0c,#3e,#2a
	db #0d,#3d,#29,#10,#3c,#28,#09,#1b
	db #27,#39,#26,#09,#37,#25,#0e,#15
	db #24,#13,#23,#11,#22,#ad,#8b,#b1
	db #8b,#00,#37,#01,#a0,#1c,#13,#00
	db #b8,#8b,#bc,#8b,#00,#37,#01,#a0
	db #1c,#1b,#00,#d3,#8b,#e1,#8b,#00
	db #37,#00,#1f,#21,#1e,#21,#5d,#21
	db #ff,#ff,#5c,#21,#fe,#ff,#4b,#ff
	db #ff,#0c,#4d,#01,#00,#0e,#4d,#ff
	db #ff,#4c,#fe,#ff,#4b,#ff,#ff,#0c
	db #e8,#8b,#eb,#8b,#00,#37,#00,#80
	db #0f,#00,#f2,#8b,#f6,#8b,#00,#37
	db #00,#a0,#1e,#09,#00,#fd,#8b,#ff
	db #8b,#00,#37,#00,#80,#03,#64,#8f
	db #01,#ce,#64,#8f,#02,#64,#9d,#01
	db #64,#0d,#64,#9b,#02,#64,#0d,#64
	db #9b,#01,#64,#0b,#64,#99,#02,#64
	db #0b,#64,#99,#01,#64,#09,#64,#97
	db #02,#64,#09,#64,#97,#01,#64,#87
	db #03,#64,#95,#02,#64,#87,#04,#64
	db #95,#03,#64,#05,#64,#93,#04,#64
	db #05,#64,#93,#03,#64,#03,#64,#91
	db #04,#64,#03,#64,#91,#03,#64,#01
	db #64,#8f,#04,#64,#01,#64,#8f,#03
	db #64,#03,#64,#91,#04,#64,#83,#02
	db #64,#91,#03,#64,#85,#01,#64,#93
	db #02,#64,#05,#64,#93,#01,#64,#07
	db #64,#95,#02,#64,#07,#64,#95,#01
	db #64,#09,#64,#97,#02,#64,#09,#64
	db #97,#01,#64,#0b,#64,#99,#02,#64
	db #8b,#04,#64,#99,#01,#64,#8d,#03
	db #64,#9b,#04,#64,#0d,#64,#9b,#03
	db #64,#0f,#64,#9d,#04,#ce,#64,#9d
	db #03,#c2,#1c,#80,#05,#ce,#7c,#80
	db #06,#ce,#1c,#80,#05,#ce,#7c,#80
	db #06,#ce,#1c,#80,#07,#ce,#22,#80
	db #05,#ca,#22,#80,#05,#ca,#22,#80
	db #05,#ca,#28,#80,#05,#ce,#7c,#80
	db #06,#ce,#28,#80,#05,#ce,#7c,#80
	db #06,#ce,#28,#80,#08,#ce,#26,#80
	db #05,#ca,#26,#80,#05,#ca,#26,#80
	db #05,#ca,#1c,#80,#05,#ce,#7c,#80
	db #06,#ce,#1c,#80,#05,#ce,#7c,#80
	db #06,#ce,#1c,#80,#07,#ce,#22,#80
	db #05,#ca,#22,#80,#05,#ca,#22,#80
	db #05,#ca,#28,#80,#05,#ce,#7c,#80
	db #06,#ce,#28,#80,#05,#ce,#7c,#80
	db #06,#ce,#28,#80,#08,#ce,#26,#80
	db #05,#ca,#26,#80,#05,#ca,#26,#80
	db #05,#ca,#c2,#1c,#80,#05,#ce,#7c
	db #80,#06,#ce,#1c,#80,#05,#ce,#7c
	db #80,#06,#ce,#1c,#80,#07,#ce,#22
	db #80,#05,#ca,#22,#80,#05,#ca,#22
	db #80,#05,#ca,#28,#80,#05,#ce,#7c
	db #80,#06,#ce,#28,#80,#05,#ce,#7c
	db #80,#06,#ce,#28,#80,#08,#ce,#26
	db #80,#05,#ca,#26,#80,#05,#ca,#26
	db #80,#05,#ca,#1c,#80,#05,#ce,#7c
	db #80,#06,#ce,#1c,#80,#05,#ce,#7c
	db #80,#06,#ce,#1c,#80,#07,#ce,#22
	db #80,#05,#ca,#22,#80,#05,#ca,#22
	db #80,#05,#ca,#28,#80,#05,#ce,#7c
	db #80,#06,#d2,#7d,#ce,#28,#80,#08
	db #ce,#26,#80,#05,#ca,#26,#80,#05
	db #ca,#26,#80,#05,#ca,#30,#80,#09
	db #d2,#31,#d2,#31,#d2,#31,#ce,#31
	db #ce,#31,#d2,#31,#d2,#31,#ce,#31
	db #ce,#31,#ce,#31,#ce,#31,#d2,#31
	db #d2,#31,#d2,#31,#ce,#31,#ce,#31
	db #de,#31,#ce,#31,#ce,#31,#c2,#64
	db #81,#0a,#64,#8f,#0b,#64,#81,#0c
	db #64,#8f,#0a,#64,#01,#64,#8f,#0c
	db #64,#01,#64,#8f,#0a,#64,#01,#64
	db #8f,#0c,#64,#01,#64,#8f,#0a,#64
	db #01,#64,#8f,#0c,#64,#01,#64,#8f
	db #0a,#64,#81,#0d,#64,#8f,#0c,#64
	db #81,#0b,#64,#8f,#0d,#64,#01,#64
	db #8f,#0b,#64,#01,#64,#8f,#0d,#64
	db #01,#64,#8f,#0b,#64,#01,#64,#8f
	db #0d,#64,#01,#64,#8f,#0b,#64,#01
	db #64,#8f,#0d,#64,#01,#64,#8d,#0b
	db #64,#81,#0c,#64,#8d,#0d,#64,#81
	db #0a,#64,#8d,#0c,#64,#01,#64,#8d
	db #0a,#64,#01,#64,#8d,#0c,#64,#01
	db #64,#8d,#0a,#64,#01,#64,#8d,#0c
	db #64,#01,#64,#8d,#0a,#64,#01,#64
	db #8b,#0c,#64,#81,#0b,#64,#8b,#0a
	db #64,#81,#0d,#64,#8b,#0b,#64,#01
	db #64,#8b,#0d,#64,#01,#64,#8b,#0b
	db #64,#01,#64,#8b,#0d,#64,#01,#64
	db #8b,#0b,#64,#01,#64,#8b,#0d,#30
	db #81,#09,#ce,#78,#80,#0e,#ce,#60
	db #80,#0f,#ce,#78,#80,#0e,#ce,#30
	db #80,#09,#ce,#30,#09,#ce,#60,#81
	db #0f,#ce,#30,#80,#09,#ce,#31,#ce
	db #78,#80,#0e,#ce,#60,#80,#0f,#ce
	db #78,#80,#0e,#ce,#30,#80,#09,#ce
	db #60,#80,#0f,#ce,#60,#09,#ce,#30
	db #81,#09,#ce,#31,#ce,#78,#80,#0e
	db #ce,#60,#80,#0f,#ce,#78,#80,#0e
	db #ce,#30,#80,#09,#ce,#30,#09,#ce
	db #60,#81,#0f,#ce,#30,#80,#09,#ce
	db #31,#ce,#78,#80,#0e,#ce,#60,#80
	db #0f,#ce,#78,#80,#0e,#ce,#60,#80
	db #0f,#ce,#30,#80,#09,#ce,#60,#80
	db #0f,#ce,#30,#80,#09,#c2,#64,#81
	db #0a,#64,#8b,#0b,#64,#81,#0c,#64
	db #8b,#0a,#64,#03,#64,#8d,#0c,#64
	db #03,#64,#8d,#0a,#64,#05,#64,#8d
	db #0c,#64,#05,#64,#8d,#0a,#64,#07
	db #64,#8b,#0c,#64,#07,#64,#8b,#0a
	db #64,#89,#0d,#64,#89,#0c,#64,#89
	db #0b,#64,#89,#0d,#64,#07,#64,#85
	db #0b,#64,#07,#64,#85,#0d,#64,#09
	db #64,#83,#0b,#64,#09,#64,#83,#0d
	db #64,#0b,#64,#81,#0b,#64,#0b,#64
	db #81,#0d,#64,#0b,#64,#81,#0b,#64
	db #8b,#0c,#64,#81,#0d,#64,#83,#0a
	db #64,#89,#0c,#64,#03,#64,#89,#0a
	db #64,#05,#64,#87,#0c,#64,#05,#64
	db #87,#0a,#64,#09,#64,#89,#0c,#64
	db #09,#64,#89,#0a,#64,#05,#64,#87
	db #0c,#64,#85,#0b,#64,#87,#0a,#64
	db #83,#0d,#64,#89,#0b,#64,#03,#64
	db #89,#0d,#64,#01,#64,#8b,#0b,#64
	db #01,#64,#8b,#0d,#64,#01,#64,#8d
	db #0b,#64,#01,#64,#8d,#0d,#64,#81
	db #0a,#64,#8b,#0b,#64,#81,#0c,#64
	db #8b,#0a,#64,#03,#64,#8d,#0c,#64
	db #03,#64,#8d,#0a,#64,#05,#64,#8d
	db #0c,#64,#05,#64,#8d,#0a,#64,#07
	db #64,#8b,#0c,#64,#07,#64,#8b,#0a
	db #64,#89,#0d,#64,#89,#0c,#64,#89
	db #0b,#64,#89,#0d,#64,#07,#64,#85
	db #0b,#64,#07,#64,#85,#0d,#64,#09
	db #64,#83,#0b,#64,#09,#64,#83,#0d
	db #64,#0b,#64,#81,#0b,#64,#0b,#64
	db #81,#0d,#64,#0b,#64,#81,#0b,#64
	db #8b,#0c,#64,#81,#0d,#64,#83,#0a
	db #64,#89,#0c,#64,#03,#64,#89,#0a
	db #64,#05,#64,#87,#0c,#64,#05,#64
	db #87,#0a,#64,#09,#64,#89,#0c,#64
	db #09,#64,#89,#0a,#64,#05,#64,#87
	db #0c,#64,#89,#0b,#64,#8b,#0a,#64
	db #8d,#0d,#64,#8f,#0b,#64,#11,#64
	db #93,#0d,#64,#15,#64,#97,#0b,#64
	db #19,#64,#9b,#0d,#64,#1d,#c2,#1c
	db #80,#05,#ce,#7c,#80,#06,#ce,#1c
	db #80,#05,#ce,#7c,#80,#06,#ce,#1c
	db #80,#07,#ce,#22,#80,#05,#ca,#22
	db #80,#05,#ca,#22,#80,#05,#ca,#28
	db #80,#05,#ce,#7c,#80,#06,#ce,#28
	db #80,#05,#ce,#7c,#80,#06,#ce,#28
	db #80,#08,#ce,#26,#80,#05,#ca,#26
	db #80,#05,#ca,#26,#80,#05,#ca,#1c
	db #80,#05,#ce,#7c,#80,#06,#ce,#1c
	db #80,#05,#ce,#7c,#80,#06,#ce,#1c
	db #80,#07,#ce,#22,#80,#05,#ca,#22
	db #80,#05,#ca,#22,#80,#05,#ca,#28
	db #80,#05,#ce,#7c,#80,#06,#d2,#7d
	db #ce,#65,#c2,#30,#81,#09,#ce,#78
	db #80,#0e,#ce,#60,#80,#0f,#ce,#78
	db #80,#0e,#ce,#30,#80,#09,#ce,#30
	db #09,#ce,#60,#81,#0f,#ce,#30,#80
	db #09,#ce,#31,#ce,#78,#80,#0e,#ce
	db #60,#80,#0f,#ce,#78,#80,#0e,#ce
	db #30,#80,#09,#ce,#60,#80,#0f,#ce
	db #60,#09,#ce,#30,#81,#09,#ce,#31
	db #ce,#78,#80,#0e,#ce,#60,#80,#0f
	db #ce,#78,#80,#0e,#ce,#30,#80,#09
	db #ce,#30,#09,#ce,#60,#81,#0f,#ce
	db #30,#80,#09,#ce,#31,#c2,#5c,#81
	db #0a,#5c,#8f,#0c,#5c,#01,#5c,#8f
	db #0a,#5c,#01,#5c,#8f,#0c,#5c,#01
	db #5c,#8f,#0a,#5c,#01,#5c,#8f,#0c
	db #62,#01,#62,#8f,#0a,#62,#01,#62
	db #8f,#0c,#62,#01,#62,#8f,#0a,#64
	db #01,#64,#8f,#0c,#64,#01,#64,#8f
	db #0a,#64,#01,#60,#8f,#0c,#64,#01
	db #64,#8f,#0a,#64,#01,#64,#8f,#0c
	db #5a,#01,#5a,#8f,#0a,#5a,#01,#5a
	db #8f,#0c,#5a,#01,#5a,#8f,#0a,#5c
	db #01,#5c,#8d,#0c,#5c,#01,#5c,#8d
	db #0a,#5c,#01,#5c,#8d,#0c,#5c,#01
	db #5c,#8d,#0a,#5c,#01,#5c,#8d,#0c
	db #62,#01,#62,#8d,#0a,#62,#01,#62
	db #8d,#0c,#62,#01,#62,#8d,#0a,#64
	db #01,#64,#8b,#0c,#64,#01,#64,#8b
	db #0a,#64,#01,#64,#8b,#0c,#64,#01
	db #64,#8b,#0a,#64,#01,#64,#8b,#0c
	db #5a,#01,#5a,#8b,#0a,#5a,#01,#5a
	db #8b,#0c,#5a,#01,#5a,#8b,#0a,#2c
	db #80,#05,#ce,#7c,#80,#06,#ce,#2c
	db #80,#05,#ce,#7c,#80,#06,#ce,#2c
	db #80,#07,#ce,#32,#80,#10,#ca,#32
	db #80,#10,#ca,#32,#80,#10,#ca,#34
	db #80,#11,#ce,#7c,#80,#06,#ce,#34
	db #80,#11,#ce,#7c,#80,#06,#ce,#34
	db #80,#08,#ce,#2a,#80,#05,#ca,#2a
	db #80,#05,#ca,#2a,#80,#05,#ca,#2c
	db #80,#05,#ce,#7c,#80,#06,#ce,#2c
	db #80,#05,#ce,#7c,#80,#06,#ce,#2c
	db #80,#07,#ce,#32,#80,#10,#ca,#32
	db #80,#10,#ca,#32,#80,#10,#ca,#34
	db #80,#11,#ce,#7c,#80,#06,#ce,#34
	db #80,#11,#ce,#7c,#80,#06,#ce,#34
	db #80,#08,#ce,#2a,#80,#05,#ca,#2a
	db #80,#05,#ca,#2a,#80,#05,#ca,#30
	db #81,#09,#ce,#78,#80,#0e,#ce,#60
	db #80,#0f,#ce,#78,#80,#0e,#ce,#30
	db #80,#09,#ce,#30,#09,#ce,#60,#81
	db #0f,#ce,#30,#80,#09,#ce,#31,#ce
	db #78,#80,#0e,#ce,#60,#80,#0f,#ce
	db #78,#80,#0e,#ce,#30,#80,#09,#ce
	db #60,#80,#0f,#ce,#60,#09,#ce,#30
	db #81,#09,#ce,#31,#ce,#78,#80,#0e
	db #ce,#60,#80,#0f,#ce,#78,#80,#0e
	db #ce,#30,#80,#09,#ce,#30,#09,#ce
	db #60,#81,#0f,#ce,#30,#80,#09,#ce
	db #31,#ce,#78,#80,#0e,#ce,#60,#80
	db #0f,#ce,#78,#80,#0e,#ce,#60,#80
	db #0f,#ce,#30,#80,#09,#ce,#60,#80
	db #0f,#ce,#30,#80,#09,#c2,#5c,#81
	db #0a,#5c,#8b,#0c,#5c,#01,#5c,#8b
	db #0a,#5c,#03,#5c,#8d,#0c,#5c,#03
	db #5c,#8d,#0a,#5c,#05,#5c,#8d,#0c
	db #62,#05,#62,#8d,#0a,#62,#07,#62
	db #8b,#0c,#62,#07,#62,#8b,#0a,#64
	db #09,#64,#89,#0c,#64,#09,#64,#89
	db #0a,#64,#07,#64,#85,#0c,#64,#07
	db #64,#85,#0a,#64,#09,#64,#83,#0c
	db #5a,#09,#5a,#83,#0a,#5a,#0b,#5a
	db #81,#0c,#5a,#0b,#5a,#81,#0a,#5c
	db #0b,#5c,#81,#0c,#5c,#0b,#5c,#81
	db #0a,#5c,#03,#5c,#89,#0c,#5c,#03
	db #5c,#89,#0a,#5c,#05,#5c,#87,#0c
	db #62,#05,#62,#87,#0a,#62,#09,#62
	db #89,#0c,#62,#09,#62,#89,#0a,#64
	db #05,#64,#87,#0c,#64,#05,#64,#87
	db #0a,#64,#03,#64,#89,#0c,#64,#03
	db #64,#89,#0a,#64,#01,#64,#8b,#0c
	db #64,#05,#64,#8d,#0a,#64,#09,#64
	db #8f,#0c,#64,#0d,#64,#91,#0a,#2c
	db #80,#05,#ce,#7c,#80,#06,#ce,#2c
	db #80,#05,#ce,#7c,#80,#06,#ce,#2c
	db #80,#07,#ce,#32,#80,#10,#ca,#32
	db #80,#10,#ca,#32,#80,#10,#ca,#34
	db #80,#11,#ce,#7c,#80,#06,#ce,#34
	db #80,#11,#ce,#7c,#80,#06,#ce,#34
	db #80,#08,#ce,#2a,#80,#05,#ca,#2a
	db #80,#05,#ca,#2a,#80,#05,#ca,#2c
	db #80,#05,#ce,#7c,#80,#06,#ce,#2c
	db #80,#05,#ce,#7c,#80,#06,#ce,#2c
	db #80,#07,#ce,#32,#80,#10,#ca,#32
	db #80,#10,#ca,#32,#80,#10,#ca,#34
	db #80,#11,#ce,#7c,#80,#06,#ce,#34
	db #80,#11,#ce,#7c,#80,#06,#ce,#34
	db #80,#08,#ce,#ca,#c2,#30,#81,#09
	db #ce,#78,#80,#0e,#ce,#60,#80,#0f
	db #ce,#78,#80,#0e,#ce,#30,#80,#09
	db #ce,#30,#09,#ce,#60,#81,#0f,#ce
	db #30,#80,#09,#ce,#31,#ce,#78,#80
	db #0e,#ce,#60,#80,#0f,#ce,#78,#80
	db #0e,#ce,#30,#80,#09,#ce,#60,#80
	db #0f,#ce,#60,#09,#ce,#30,#81,#09
	db #ce,#31,#ce,#78,#80,#0e,#ce,#60
	db #80,#0f,#ce,#78,#80,#0e,#ce,#30
	db #80,#09,#ce,#30,#09,#ce,#60,#81
	db #0f,#ce,#30,#80,#09,#ce,#31,#ce
	db #78,#80,#0e,#ce,#60,#80,#0f,#ce
	db #78,#80,#0e,#ce,#60,#80,#0f,#c2
	db #64,#93,#02,#64,#15,#64,#81,#12
	db #c4,#0f,#64,#0d,#c4,#0f,#64,#0f
	db #c4,#0f,#72,#01,#c4,#0f,#72,#0d
	db #c4,#0f,#72,#0f,#c4,#0f,#72,#11
	db #c4,#0f,#72,#13,#c4,#0f,#70,#01
	db #c4,#0f,#70,#0d,#c4,#0f,#70,#0f
	db #c4,#0f,#70,#01,#c4,#0f,#70,#0d
	db #c4,#0f,#70,#01,#c4,#0f,#70,#0d
	db #c4,#0f,#70,#0f,#c4,#0f,#64,#01
	db #c4,#0f,#64,#0d,#c4,#0f,#64,#0f
	db #c4,#0f,#72,#01,#c4,#0f,#72,#0d
	db #c4,#0f,#72,#0f,#c4,#0f,#72,#11
	db #c4,#0f,#72,#13,#c4,#0f,#74,#01
	db #c4,#0f,#74,#0d,#c4,#0f,#74,#0f
	db #c4,#0f,#70,#01,#c4,#0f,#70,#0d
	db #c4,#0f,#70,#01,#c4,#0f,#70,#0d
	db #c4,#0f,#30,#81,#09,#ce,#7c,#80
	db #06,#ce,#7c,#95,#12,#ce,#7c,#81
	db #06,#ce,#65,#d6,#94,#97,#12,#ce
	db #30,#81,#09,#ce,#7c,#80,#06,#ce
	db #7c,#97,#12,#ce,#7c,#81,#06,#ce
	db #65,#ce,#7c,#95,#12,#ce,#ca,#d2
	db #30,#81,#09,#ce,#7c,#80,#06,#ce
	db #7c,#97,#12,#ce,#7c,#81,#06,#ce
	db #65,#d6,#94,#97,#12,#ce,#30,#81
	db #09,#ce,#7c,#80,#06,#ce,#7c,#97
	db #12,#ce,#7c,#81,#06,#ce,#65,#ce
	db #94,#97,#12,#ce,#ca,#c2,#70,#8f
	db #12,#c4,#0f,#64,#01,#c4,#0f,#64
	db #0d,#c4,#0f,#64,#0f,#c4,#0f,#72
	db #01,#c4,#0f,#72,#0d,#c4,#0f,#72
	db #0f,#c4,#0f,#72,#11,#60,#81,#0e
	db #72,#93,#12,#60,#81,#0e,#70,#81
	db #12,#c4,#0f,#70,#0d,#c4,#0f,#70
	db #0f,#c4,#0f,#70,#01,#c4,#0f,#70
	db #0d,#c4,#0f,#70,#01,#c4,#0f,#70
	db #0d,#c4,#0f,#70,#0f,#c4,#0f,#64
	db #01,#c4,#0f,#64,#0d,#c4,#0f,#64
	db #0f,#c4,#0f,#72,#01,#c4,#0f,#72
	db #0d,#c4,#0f,#72,#0f,#c4,#0f,#72
	db #11,#60,#81,#0e,#72,#93,#12,#60
	db #81,#0e,#74,#81,#12,#c4,#0f,#74
	db #0d,#c4,#0f,#74,#0f,#c4,#0f,#70
	db #01,#c4,#0f,#70,#0d,#c4,#0f,#70
	db #01,#c4,#0f,#70,#0d,#c4,#0f,#30
	db #81,#09,#ce,#7c,#80,#06,#ce,#7c
	db #95,#12,#ce,#7c,#81,#06,#ce,#65
	db #ce,#ac,#80,#13,#ce,#ac,#80,#14
	db #ce,#94,#97,#12,#ce,#30,#81,#09
	db #ce,#7c,#80,#06,#ce,#7c,#97,#12
	db #ce,#7c,#81,#06,#ce,#65,#ce,#7c
	db #95,#12,#ce,#94,#81,#13,#ce,#7c
	db #80,#15,#ce,#30,#80,#09,#ce,#7c
	db #80,#06,#ce,#7c,#97,#12,#ce,#7c
	db #81,#06,#ce,#65,#ce,#94,#80,#13
	db #ce,#94,#80,#15,#ce,#94,#97,#12
	db #ce,#30,#81,#09,#ce,#7c,#80,#06
	db #ce,#7c,#97,#12,#ce,#7c,#81,#06
	db #ce,#65,#ce,#7c,#97,#12,#ce,#64
	db #81,#15,#ce,#7c,#80,#14,#c2,#70
	db #8f,#12,#c4,#0f,#64,#01,#c4,#0f
	db #64,#0d,#c4,#0f,#64,#0f,#c4,#0f
	db #72,#01,#c4,#0f,#72,#0d,#c4,#0f
	db #72,#0f,#c4,#0f,#72,#11,#60,#81
	db #0e,#72,#93,#12,#60,#81,#0e,#70
	db #81,#12,#c4,#0f,#70,#0d,#c4,#0f
	db #70,#0f,#c4,#0f,#70,#01,#c4,#0f
	db #70,#0d,#c4,#0f,#70,#01,#c4,#0f
	db #70,#0d,#c4,#0f,#70,#0f,#c4,#0f
	db #64,#01,#c4,#0f,#64,#0d,#c4,#0f
	db #64,#0f,#c4,#0f,#72,#01,#c4,#0f
	db #72,#0d,#c4,#0f,#72,#0f,#c4,#0f
	db #72,#11,#c4,#0f,#72,#13,#c4,#0f
	db #74,#01,#c4,#0f,#74,#0d,#c4,#0f
	db #74,#0f,#c4,#0f,#70,#01,#c4,#0f
	db #70,#0d,#c4,#0f,#70,#0f,#c4,#0f
	db #70,#11,#c4,#0f,#30,#80,#09,#ce
	db #7c,#80,#06,#ce,#7c,#95,#12,#ce
	db #7c,#81,#06,#ce,#65,#ce,#ac,#80
	db #13,#ce,#ac,#80,#14,#ce,#94,#97
	db #12,#ce,#30,#81,#09,#ce,#7c,#80
	db #06,#ce,#7c,#97,#12,#ce,#7c,#81
	db #06,#ce,#65,#ce,#7c,#95,#12,#ce
	db #94,#81,#13,#ce,#7c,#80,#15,#ce
	db #30,#80,#09,#ce,#7c,#80,#06,#ce
	db #7c,#97,#12,#ce,#7c,#81,#06,#ce
	db #65,#ce,#94,#80,#13,#ce,#94,#80
	db #15,#ce,#94,#97,#12,#ce,#30,#81
	db #09,#ce,#7c,#80,#06,#ce,#7c,#97
	db #12,#ce,#7c,#81,#06,#ce,#65,#ce
	db #ca,#c2,#ff,#00,#00
;
.init_music
;
		ld de,l8a00	; #8a00
		jp real_init_music
;
.music_info
	db "Robotron 6128 (2009)(Public Domain)(MR Lou)",0
	db "StArkos",0

	read "music_end.asm"
