; Music of Amstrad Expo Magic Circus (2006)(Les Sucres En Morceaux)(Fenyx Kell)(StArkos)
; Ripped by Megachur the 24/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AMSTREMC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8150

	read "music_header.asm"

	jp l815a	; init music interrupt
	jp l817e	; stop music interrupt
.l8159 equ $ + 3
.l8158 equ $ + 2
	db #50,#81,#00,#00
.l815a
	call l8a30
	ld hl,l81a4
.l8161 equ $ + 1
	ld a,#00
.l8162
	cp (hl)
	jr z,l8169
	inc hl
	inc hl
	jr l8162
.l8169
	inc hl
	ld a,(hl)
	ld (l819d),a
	xor a
	ld (l8193),a
	ld hl,l8187
	ld bc,#8100
	ld de,l8191
	jp #bce0
.l817e
	ld hl,l8187
	call #bce6
	jp l8a0b
.l8187
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l8191
	di
.l8193 equ $ + 1
	ld a,#00
	sub #01
	jr c,l819c
	ld (l8193),a
	ret
.l819d equ $ + 1
.l819c
	ld a,#00
	ld (l8193),a
	jp l81b0
.l81a4
	dec c
	ld de,#0b19
	ld (#6405),a
	ld (bc),a
	sub (hl)
	ld bc,#002c
;
.play_music
.l81b0
;
	xor a
	ld (l8158),a
	ld (l89e9),a
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
.l81c1 equ $ + 1
	ld a,#00
.l81c3 equ $ + 1
	cp #00
	jr z,l81cd
	inc a
	ld (l81c1),a
	jp l845c
.l81cd
	xor a
	ld (l81c1),a
.l81d1
	or a
	jp nc,l82b3
	ld (l82db),a
	ld (l8346),a
	ld (l83b1),a
	ld a,#b7
	ld (l81d1),a
.l81e4 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l821a
.l81ea equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l8217
	ld b,a
	and #1f
	bit 4,a
	jr z,l81fb
	or #e0
.l81fb
	ld (l82e8),a
	rl b
	rl b
	jr nc,l8209
	ld a,(hl)
	ld (l8353),a
	inc hl
.l8209
	rl b
	jr nc,l8212
	ld a,(hl)
	ld (l83be),a
	inc hl
.l8212
	ld (l81ea),hl
	jr l821d
.l8217
	ld (l81ea),hl
.l821a
	ld (l81e4),a
.l821e equ $ + 1
.l821d
	ld a,#00
	sub #01
	jr c,l822a
	ld (l821e),a
.l8227 equ $ + 1
	ld a,#00
	jr l8245
.l822b equ $ + 1
.l822a
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l8238
	ld (l822b),hl
	jr l8245
.l8238
	ld (l8227),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l822b),hl
	ld (l821e),a
	ld a,b
.l8245
	ld (l841c),a
.l8249 equ $ + 1
	ld hl,#0000
	ld de,l82e1
	ldi
	ldi
	ld de,l834c
	ldi
	ldi
	ld de,l83b7
	ldi
	ldi
	ld (l8249),hl
.l8264 equ $ + 1
	ld a,#00
	or a
	jr nz,l8276
.l8269 equ $ + 1
	ld a,#00
	sub #01
	jr c,l8284
	ld (l8269),a
.l8272 equ $ + 1
	ld hl,#0000
	jr l82bc
.l8277 equ $ + 1
.l8276
	ld a,#00
	sub #01
	jr c,l8284
	ld (l8277),a
	ld hl,(l8285)
	jr l82a9
.l8285 equ $ + 1
.l8284
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l82a1
	ld (l8269),a
	xor a
	ld (l8264),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8285),hl
	ex de,hl
	ld (l8272),hl
	jr l82bc
.l82a1
	ld (l8277),a
	ld a,#01
	ld (l8264),a
.l82a9
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8285),hl
	ex de,hl
	jr l82bc
.l82b4 equ $ + 1
.l82b3
	ld a,#00
	sub #01
	jr nc,l82d7
.l82ba equ $ + 1
	ld hl,#0000
.l82bc
	ld a,(hl)
	inc hl
	srl a
	jr c,l82d4
	srl a
	jr c,l82cb
	ld (l81c3),a
	jr l82d3
.l82cb
	ld (l8158),a
.l82cf equ $ + 1
	ld a,#01
	ld (l8159),a
.l82d3
	xor a
.l82d4
	ld (l82ba),hl
.l82d7
	ld (l82b4),a
.l82db equ $ + 1
	ld a,#00
	sub #01
	jr nc,l8342
.l82e1 equ $ + 1
	ld hl,#0000
.l82e4 equ $ + 1
	ld bc,#0100
.l82e8 equ $ + 2
.l82e7 equ $ + 1
	ld de,#0000
.l82eb equ $ + 2
	ld lx,#00
	call l855b
	ld a,lx
	ld (l82eb),a
	ld (l8466),hl
	exx
	ld (l82e1),hl
	ld a,c
	ld (l82e4),a
	ld (l8460),a
	xor a
	or hy
	jr nz,l8340
	ld (l8483),a
	ld d,a
	ld a,e
	ld (l82e7),a
	ld l,d
	ld h,l
	ld (l8463),hl
.l8315 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l8494
	ldi
	ldi
	ld de,l848c
	ldi
	ldi
	ld de,l8485
	ldi
	ld de,l8496
	ldi
	ld a,(hl)
	inc hl
	ld (l8475),hl
	ld hl,l89e9
	or (hl)
	ld (hl),a
.l8340
	ld a,ly
.l8342
	ld (l82db),a
.l8346 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l83ad
.l834c equ $ + 1
	ld hl,#0000
.l834f equ $ + 1
	ld bc,#0200
.l8353 equ $ + 2
.l8352 equ $ + 1
	ld de,#0000
.l8356 equ $ + 2
	ld lx,#00
	call l855b
	ld a,lx
	ld (l8356),a
	ld (l84b8),hl
	exx
	ld (l834c),hl
	ld a,c
	ld (l834f),a
	ld (l84b2),a
	xor a
	or hy
	jr nz,l83ab
	ld (l84d5),a
	ld d,a
	ld a,e
	ld (l8352),a
	ld l,d
	ld h,l
	ld (l84b5),hl
.l8380 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l84e6
	ldi
	ldi
	ld de,l84de
	ldi
	ldi
	ld de,l84d7
	ldi
	ld de,l84e8
	ldi
	ld a,(hl)
	inc hl
	ld (l84c7),hl
	ld hl,l89e9
	or (hl)
	ld (hl),a
.l83ab
	ld a,ly
.l83ad
	ld (l8346),a
.l83b1 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l8418
.l83b7 equ $ + 1
	ld hl,#0000
.l83ba equ $ + 1
	ld bc,#0300
.l83be equ $ + 2
.l83bd equ $ + 1
	ld de,#0000
.l83c1 equ $ + 2
	ld lx,#00
	call l855b
	ld a,lx
	ld (l83c1),a
	ld (l850a),hl
	exx
	ld (l83b7),hl
	ld a,c
	ld (l83ba),a
	ld (l8504),a
	xor a
	or hy
	jr nz,l8416
	ld (l8527),a
	ld d,a
	ld a,e
	ld (l83bd),a
	ld l,d
	ld h,l
	ld (l8507),hl
.l83eb equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l8538
	ldi
	ldi
	ld de,l8530
	ldi
	ldi
	ld de,l8529
	ldi
	ld de,l853a
	ldi
	ld a,(hl)
	inc hl
	ld (l8519),hl
	ld hl,l89e9
	or (hl)
	ld (hl),a
.l8416
	ld a,ly
.l8418
	ld (l83b1),a
.l841c equ $ + 1
	ld a,#00
	sub #01
	jr c,l8426
	ld (l841c),a
	jr l845c
.l8426
	ld a,#37
	ld (l81d1),a
	ld hl,(l8249)
.l842f equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l845c
	ld (l81e4),a
	ld (l821e),a
	ld (l82b4),a
.l8440 equ $ + 1
	ld hl,#0000
	ld (l81ea),hl
.l8446 equ $ + 1
	ld hl,#0000
	ld (l822b),hl
.l844c equ $ + 1
	ld hl,#0000
	ld (l8249),hl
.l8452 equ $ + 1
	ld hl,#0000
	ld (l8285),hl
.l8458 equ $ + 1
	ld a,#00
	ld (l8264),a
.l845c
	ld hl,l89e9
.l8460 equ $ + 1
	ld d,#00
	exx
.l8463 equ $ + 1
	ld hl,#0000
.l8466 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8463),hl
	ld (l8696),hl
	ld a,(l82eb)
	ld lx,a
.l8475 equ $ + 1
	ld hl,#0000
	ld iy,l8884
	ld a,(l8483)
	call l85f0
	ex de,hl
.l8483 equ $ + 1
	ld a,#00
.l8485 equ $ + 1
	cp #00
	jr z,l848b
	inc a
	jr l84a8
.l848c equ $ + 1
.l848b
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l84a4
.l8494 equ $ + 1
	ld de,#0000
.l8496
	or a
	jr c,l84a4
.l849a equ $ + 1
	ld hl,#0000
	ld (l848c),hl
	dec a
	ld (l8485),a
	inc a
.l84a4
	ld (l8475),de
.l84a8
	ld (l8483),a
	ld a,hx
	ld (l8557),a
	exx
.l84b2 equ $ + 1
	ld d,#00
	exx
.l84b5 equ $ + 1
	ld hl,#0000
.l84b8 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l84b5),hl
	ld (l8696),hl
	ld a,(l8356)
	ld lx,a
.l84c7 equ $ + 1
	ld hl,#0000
	ld iy,l88d5
	ld a,(l84d5)
	call l85f0
	ex de,hl
.l84d5 equ $ + 1
	ld a,#00
.l84d7 equ $ + 1
	cp #00
	jr z,l84dd
	inc a
	jr l84fa
.l84de equ $ + 1
.l84dd
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l84f6
.l84e6 equ $ + 1
	ld de,#0000
.l84e8
	or a
	jr c,l84f6
.l84ec equ $ + 1
	ld hl,#0000
	ld (l84de),hl
	dec a
	ld (l84d7),a
	inc a
.l84f6
	ld (l84c7),de
.l84fa
	ld (l84d5),a
	ld a,hx
	ld (l8554),a
	exx
.l8504 equ $ + 1
	ld d,#00
	exx
.l8507 equ $ + 1
	ld hl,#0000
.l850a equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8507),hl
	ld (l8696),hl
	ld a,(l83c1)
	ld lx,a
.l8519 equ $ + 1
	ld hl,#0000
	ld iy,l8926
	ld a,(l8527)
	call l85f0
	ex de,hl
.l8527 equ $ + 1
	ld a,#00
.l8529 equ $ + 1
	cp #00
	jr z,l852f
	inc a
	jr l854c
.l8530 equ $ + 1
.l852f
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l8548
.l8538 equ $ + 1
	ld de,#0000
.l853a
	or a
	jr c,l8548
.l853e equ $ + 1
	ld hl,#0000
	ld (l8530),hl
	dec a
	ld (l8529),a
	inc a
.l8548
	ld (l8519),de
.l854c
	ld (l8527),a
	ld a,hx
	sla a
.l8554 equ $ + 1
	or #00
	rla
.l8557 equ $ + 1
	or #00
	jp l8879
.l855b
	ld a,(hl)
	inc hl
	srl a
	jr c,l8594
	cp #60
	jr nc,l859c
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l8574
	and #0f
	ld c,a
.l8574
	rl b
	jr nc,l857a
	ld e,(hl)
	inc hl
.l857a
	rl b
	jr nc,l858c
.l857e
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l8588
	dec h
.l8588
	ld ly,#00
	ret
.l858c
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l8594
	ld hy,#00
	add d
	ld lx,a
	jr l858c
.l859c
	ld hy,#01
	sub #60
	jr z,l85bd
	dec a
	jr z,l85d4
	dec a
	jr z,l85c6
	dec a
	jr z,l857e
	dec a
	jr z,l85d0
	dec a
	jr z,l85e5
	dec a
	jr z,l85dc
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l85bd
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l85c6
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l85d0
	ld c,(hl)
	inc hl
	jr l857e
.l85d4
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l85dc
	ld a,(hl)
	inc hl
	ld (l8158),a
	ld a,b
	ld (l8159),a
.l85e5
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l85f0
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l86a6
	bit 4,e
	jr z,l8658
	ld a,(hl)
	bit 6,a
	jr z,l8625
	ld d,#08
	inc hl
	and #1f
	jr z,l860c
	ld (l8977),a
	res 3,d
.l860c
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l8615
	xor a
.l8615
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l8625
	ld (l8977),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l8641
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l863a
	xor a
.l863a
	ld (iy+#36),a
	ld hx,d
	jr l866b
.l8641
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l864a
	xor a
.l864a
	ld (iy+#36),a
.l864d
	ld hx,d
	ret
.l8650
	ld (iy+#36),#00
	ld d,#09
	jr l864d
.l8658
	ld d,#08
	ld a,e
	and #0f
	jr z,l8650
	exx
	sub d
	exx
	jr nc,l8665
	xor a
.l8665
	ld (iy+#36),a
	ld hx,#08
.l866b
	bit 5,e
	jr z,l8673
	ld a,(hl)
	inc hl
	jr l8674
.l8673
	xor a
.l8674
	bit 6,e
	jr z,l867e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l8681
.l867e
	ld de,#0000
.l8681
	add lx
	cp #60
	jr c,l8689
	ld a,#60
.l8689
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l87b9
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l8696 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l86a6
	or a
	jr nz,l86b0
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l86b0
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
	ld (l89e2),a
	bit 3,e
	jr z,l86d2
	ld a,(hl)
	inc hl
	ld (l8977),a
	res 3,d
	jr l86d2
.l86d2
	ld hx,d
	xor a
	bit 7,b
	jr z,l86e4
	bit 6,b
	jr z,l86df
	ld a,(hl)
	inc hl
.l86df
	ld (l8793),a
	ld a,#01
.l86e4
	ld (l872c),a
	ld a,b
	rra
	and #0e
	ld (l873d),a
	bit 4,e
	jp nz,l879e
	bit 1,e
	jr z,l86fb
	ld a,(hl)
	inc hl
	jr l86fc
.l86fb
	xor a
.l86fc
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l8709
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l870c
.l8709
	ld de,#0000
.l870c
	add lx
	cp #60
	jr c,l8714
	ld a,#60
.l8714
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l87b9
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l8696)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l872c equ $ + 1
	ld a,#00
	or a
	jr nz,l873c
	ex af,af'
	bit 5,a
	jr nz,l87a7
.l8735
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l873d equ $ + 1
.l873c
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l8747),a
	ld a,c
.l8747 equ $ + 1
	jr l8748
.l8748
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
	jr nc,l8761
	inc bc
.l8761
	ld a,c
	ld (l89ac),a
	ld a,b
	ld (l89c7),a
	ld a,(l872c)
	or a
	jr z,l879c
	ld a,(l873d)
	ld e,a
	srl a
	add e
	ld (l877b),a
	ld a,b
.l877b equ $ + 1
	jr l877c
.l877c
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
.l8793 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l879c
	pop hl
	ret
.l879e
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l8735
.l87a7
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l89ac),a
	inc hl
	ld a,(hl)
	ld (l89c7),a
	inc hl
	ret
.l87b9
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
.l8879
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l8884 equ $ + 1
	ld a,#00
.l8886 equ $ + 1
	cp #00
	jr z,l889e
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
	ld (l8886),a
	exx
.l889f equ $ + 1
.l889e
	ld a,#00
.l88a1 equ $ + 1
	cp #00
	jr z,l88b9
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
	ld (l88a1),a
	exx
.l88ba equ $ + 1
.l88b9
	ld a,#00
.l88bc equ $ + 1
	cp #00
	jr z,l88d4
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
	ld (l88bc),a
	exx
.l88d5 equ $ + 1
.l88d4
	ld a,#00
.l88d7 equ $ + 1
	cp #00
	jr z,l88ef
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
	ld (l88d7),a
	exx
.l88f0 equ $ + 1
.l88ef
	ld a,#00
.l88f2 equ $ + 1
	cp #00
	jr z,l890a
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
	ld (l88f2),a
	exx
.l890b equ $ + 1
.l890a
	ld a,#00
.l890d equ $ + 1
	cp #00
	jr z,l8925
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
	ld (l890d),a
	exx
.l8926 equ $ + 1
.l8925
	ld a,#00
.l8928 equ $ + 1
	cp #00
	jr z,l8940
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
	ld (l8928),a
	exx
.l8941 equ $ + 1
.l8940
	ld a,#00
.l8943 equ $ + 1
	cp #00
	jr z,l895b
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
	ld (l8943),a
	exx
.l895c equ $ + 1
.l895b
	ld a,#00
.l895e equ $ + 1
	cp #00
	jr z,l8976
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
	ld (l895e),a
	exx
.l8977 equ $ + 1
.l8976
	ld a,#00
.l8979 equ $ + 1
	cp #00
	jr z,l8991
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
	ld (l8979),a
	exx
.l8991
	ld a,h
.l8993 equ $ + 1
	cp #c0
	jr z,l89ab
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
	ld (l8993),a
	exx
.l89ac equ $ + 1
.l89ab
	ld a,#00
.l89ae equ $ + 1
	cp #00
	jr z,l89c6
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
	ld (l89ae),a
	exx
.l89c7 equ $ + 1
.l89c6
	ld a,#00
.l89c9 equ $ + 1
	cp #00
	jr z,l89e1
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
	ld (l89c9),a
	exx
.l89e2 equ $ + 1
.l89e1
	ld a,#00
.l89e4 equ $ + 1
	cp #ff
	jr nz,l89ee
	ld h,a
.l89e9 equ $ + 1
	ld a,#00
	or a
	jr z,l8a02
	ld a,h
.l89ee
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
	ld (l89e4),a
.l8a02
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
.l8a0b
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l88ba),a
	ld (l890b),a
	ld (l895c),a
	dec a
	ld (l88bc),a
	ld (l890d),a
	ld (l895e),a
	ld (l8993),a
	ld a,#3f
	jp l8879
;
.real_init_music
.l8a30
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l82cf),a
	inc hl
	ld a,(hl)
	ld (l8161),a
	inc hl
	inc hl
	ld de,l822b
	ldi
	ldi
	ld de,l8249
	ldi
	ldi
	ld de,l8285
	ldi
	ldi
	ld de,l8315
	ldi
	ldi
	ld de,l8440
	ldi
	ldi
	ld de,l8446
	ldi
	ldi
	ld de,l844c
	ldi
	ldi
	ld de,l8452
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l81c3),a
	ld (l81c1),a
	ld (l81ea),hl
	ld hl,(l8285)
	ld (l842f),hl
	ld a,(hl)
	and #01
	ld (l8264),a
	ld hl,(l8452)
	ld a,(hl)
	and #01
	ld (l8458),a
	ld hl,(l8315)
	ld (l8380),hl
	ld (l83eb),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l8475),hl
	ld (l84c7),hl
	ld (l8519),hl
	ld (l8494),hl
	ld (l84e6),hl
	ld (l8538),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l849a),de
	ld (l84ec),de
	ld (l853e),de
	ld (l848c),de
	ld (l84de),de
	ld (l8530),de
	ld a,#37
	ld (l81d1),a
	ld hl,l8aef
.l8adf
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l8ae6
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l8ae6
	jr l8adf
.l8aef
	jr l8af1
.l8af1
	dw l8884,l889f,l88d5,l88f0
	dw l8926,l8941,l8977,l88ba
	dw l890b,l895c,l89ac,l89c7
	dw l89e2,l81e4,l821e,l8269
	dw l8277,l82b4,l8483,l84d5
	dw l8527,l82e4,l834f,l83ba
	dw #ff11,l8886,l88a1,l88d7
	dw l88f2,l8928,l8943,l8979
	dw l8993,l88bc,l890d,l895e
	dw l89ae,l89c9,l89e4,l8485
	dw l84d7,l8529,#b703,l8496
	dw l84e8,l853a,#0000
	db #00
.l8b50
	db #53,#4b,#31,#30,#50,#8b,#01,#32
	db #00,#80,#8b,#84,#8b,#f0,#8b,#1d
	db #8c,#78,#8b,#82,#8b,#c0,#8b,#1a
	db #8c,#06,#c0,#00,#00,#01,#40,#f4
	db #01,#40,#00,#01,#18,#01,#00,#01
	db #c0,#00,#00,#01,#18,#05,#00,#01
	db #5f,#09,#5f,#07,#dc,#8c,#e6,#8c
	db #38,#8d,#3a,#8d,#3f,#8d,#38,#8d
	db #dc,#8c,#e6,#8c,#8f,#8d,#3a,#8d
	db #3f,#8d,#a9,#8d,#c3,#8d,#e6,#8c
	db #8f,#8d,#e1,#8d,#3f,#8d,#a9,#8d
	db #c3,#8d,#e6,#8c,#11,#8e,#e1,#8d
	db #3f,#8d,#43,#8e,#75,#8e,#99,#8e
	db #eb,#8e,#1d,#8f,#47,#8f,#99,#8f
	db #75,#8e,#99,#8e,#cb,#8f,#1d,#8f
	db #47,#8f,#5b,#90,#c3,#8d,#e6,#8c
	db #eb,#90,#e1,#8d,#3f,#8d,#7b,#91
	db #75,#8e,#99,#8e,#cb,#8f,#1d,#8f
	db #47,#8f,#5b,#90,#c3,#8d,#e6,#8c
	db #eb,#90,#e1,#8d,#3f,#8d,#7b,#91
	db #22,#07,#92,#01,#00,#00,#02,#07
	db #92,#01,#00,#00,#1a,#07,#92,#01
	db #00,#00,#02,#07,#92,#01,#00,#00
	db #02,#07,#92,#01,#00,#00,#02,#07
	db #92,#01,#00,#00,#fe,#07,#92,#92
	db #07,#92,#0e,#07,#92,#2f,#8c,#39
	db #8c,#48,#8c,#57,#8c,#73,#8c,#85
	db #8c,#b2,#8c,#c3,#8c,#d2,#8c,#36
	db #8c,#39,#8c,#ff,#37,#00,#00,#00
	db #00,#36,#8c,#48,#8c,#00,#b7,#00
	db #2b,#0c,#2b,#03,#2b,#07,#2b,#f8
	db #36,#8c,#57,#8c,#00,#b7,#00,#2b
	db #0c,#2b,#04,#2b,#07,#2b,#f8,#36
	db #8c,#73,#8c,#00,#b7,#01,#c2,#0b
	db #0c,#80,#0b,#80,#0b,#80,#0b,#80
	db #0b,#80,#0b,#80,#0b,#80,#0b,#81
	db #0b,#81,#0b,#7d,#8c,#85,#8c,#00
	db #37,#00,#2a,#0c,#08,#47,#ff,#ff
	db #07,#47,#01,#00,#07,#8e,#8c,#b2
	db #8c,#00,#37,#00,#0c,#0b,#4a,#01
	db #00,#4a,#fe,#ff,#4a,#02,#00,#4a
	db #ff,#ff,#4a,#01,#00,#4a,#fd,#ff
	db #4a,#02,#00,#4a,#fc,#ff,#4a,#01
	db #00,#4a,#fe,#ff,#4a,#03,#00,#4a
	db #fe,#ff,#bd,#8c,#c3,#8c,#00,#37
	db #00,#49,#ff,#ff,#09,#49,#fe,#ff
	db #49,#01,#00,#36,#8c,#d2,#8c,#00
	db #b7,#00,#09,#07,#05,#04,#03,#02
	db #01,#01,#36,#8c,#dc,#8c,#00,#b7
	db #00,#06,#08,#06,#ca,#f6,#5a,#81
	db #01,#fa,#52,#80,#02,#c2,#42,#80
	db #03,#ce,#5a,#80,#01,#ce,#5b,#ce
	db #38,#80,#03,#ce,#5a,#80,#01,#ce
	db #5b,#ce,#42,#80,#03,#ce,#5a,#80
	db #01,#ce,#5b,#ce,#38,#80,#03,#ce
	db #5a,#80,#01,#ce,#42,#80,#03,#ce
	db #3b,#ce,#52,#80,#02,#ce,#53,#ce
	db #30,#80,#03,#ce,#52,#80,#02,#ce
	db #53,#ce,#3a,#80,#03,#ce,#52,#80
	db #02,#ce,#53,#ce,#30,#80,#03,#ce
	db #52,#80,#02,#ce,#3a,#80,#03,#c2
	db #ca,#c2,#f8,#5c,#80,#02,#c2,#44
	db #80,#03,#ce,#5c,#80,#02,#ce,#5d
	db #ce,#3a,#80,#03,#ce,#5c,#80,#02
	db #ce,#5d,#ce,#44,#80,#03,#ce,#5c
	db #80,#02,#ce,#5d,#ce,#3a,#80,#03
	db #ce,#5c,#80,#02,#ce,#44,#80,#03
	db #ce,#43,#ce,#5a,#80,#01,#ce,#5b
	db #ce,#38,#80,#03,#ce,#5a,#80,#01
	db #ce,#5b,#ce,#2a,#80,#03,#ce,#5a
	db #80,#01,#ce,#5b,#ce,#38,#80,#03
	db #ce,#5a,#80,#01,#ce,#5b,#c2,#72
	db #80,#04,#d6,#79,#d6,#81,#d6,#79
	db #ce,#81,#ce,#79,#ce,#6b,#d6,#73
	db #d6,#79,#d6,#73,#ce,#79,#ce,#73
	db #c2,#74,#80,#04,#d6,#83,#d6,#8d
	db #d6,#83,#ce,#8d,#ce,#83,#ce,#69
	db #d6,#73,#d6,#81,#d6,#91,#ce,#8f
	db #ce,#8b,#c2,#42,#80,#05,#d6,#51
	db #d6,#5b,#d6,#61,#ce,#5f,#ce,#5b
	db #ce,#5b,#d6,#53,#ce,#5b,#ce,#53
	db #ce,#49,#d6,#49,#ce,#53,#ce,#5b
	db #c2,#5c,#80,#05,#d6,#53,#ce,#5d
	db #ce,#53,#ce,#4d,#ce,#53,#ce,#5d
	db #ce,#65,#ce,#61,#ce,#5d,#ce,#5b
	db #5c,#80,#06,#5b,#5d,#5b,#5d,#5b
	db #5d,#5b,#5d,#5b,#5d,#5b,#5d,#5b
	db #5d,#5b,#5d,#5b,#5d,#5b,#5d,#5b
	db #5d,#a8,#80,#07,#ce,#a7,#ce,#a3
	db #ce,#a7,#ce,#a3,#ce,#9f,#ce,#a3
	db #ce,#9f,#ce,#99,#ce,#9f,#ce,#99
	db #ce,#95,#ce,#ad,#ce,#a9,#ce,#a7
	db #ce,#a9,#ce,#a7,#ce,#a3,#ce,#a7
	db #ce,#a3,#ce,#9f,#ce,#a3,#ce,#9f
	db #ce,#99,#c2,#ac,#80,#07,#ce,#a9
	db #ce,#a5,#ce,#a9,#ce,#a5,#ce,#a3
	db #ce,#a5,#ce,#a3,#ce,#9f,#ce,#a3
	db #ce,#9f,#ce,#9b,#ce,#a9,#ce,#a5
	db #ce,#a3,#ce,#a5,#ce,#a3,#ce,#9f
	db #ce,#a3,#ce,#9f,#ce,#99,#ce,#9f
	db #ce,#99,#ce,#95,#c2,#60,#80,#05
	db #d6,#57,#ce,#61,#ce,#57,#ce,#51
	db #d6,#51,#ce,#57,#ce,#61,#ce,#65
	db #d6,#5d,#ce,#65,#ce,#5d,#ce,#53
	db #d2,#53,#ce,#53,#ce,#5d,#ce,#65
	db #c2,#48,#80,#03,#ce,#60,#80,#02
	db #ce,#61,#ce,#3e,#80,#03,#ce,#60
	db #80,#02,#ce,#61,#ce,#48,#80,#03
	db #ce,#60,#80,#02,#ce,#61,#ce,#3e
	db #80,#03,#ce,#60,#80,#02,#ce,#48
	db #80,#03,#ce,#45,#ce,#74,#80,#02
	db #ce,#75,#ce,#3a,#80,#03,#ce,#74
	db #80,#02,#ce,#75,#ce,#44,#80,#03
	db #ce,#74,#80,#02,#ce,#75,#ce,#3a
	db #80,#03,#ce,#74,#80,#02,#ce,#44
	db #80,#03,#c2,#b0,#80,#07,#ce,#ad
	db #ce,#a9,#ce,#ad,#ce,#a9,#ce,#a7
	db #ce,#a9,#ce,#a7,#ce,#a3,#ce,#a7
	db #ce,#a3,#ce,#9f,#ce,#ad,#ce,#a9
	db #ce,#a5,#ce,#a9,#ce,#a5,#ce,#a3
	db #ce,#a5,#ce,#a3,#ce,#9f,#ce,#a3
	db #ce,#9f,#ce,#9b,#c2,#64,#80,#05
	db #d6,#5b,#ce,#65,#ce,#5b,#ce,#53
	db #ce,#4d,#ce,#53,#ce,#5b,#ce,#53
	db #ce,#65,#ce,#69,#d6,#5f,#ce,#69
	db #ce,#77,#ce,#6f,#ce,#69,#ce,#5f
	db #ce,#57,#ce,#51,#ce,#49,#c2,#34
	db #80,#03,#ce,#64,#80,#01,#ce,#65
	db #ce,#2a,#80,#03,#ce,#64,#80,#01
	db #ce,#65,#ce,#34,#80,#03,#ce,#64
	db #80,#01,#ce,#65,#ce,#2a,#80,#03
	db #ce,#64,#80,#01,#ce,#34,#80,#03
	db #ce,#39,#ce,#68,#80,#01,#ce,#69
	db #ce,#2e,#80,#03,#ce,#68,#80,#01
	db #ce,#69,#ce,#38,#80,#03,#ce,#68
	db #80,#01,#ce,#69,#ce,#2e,#80,#03
	db #ce,#68,#80,#01,#ce,#38,#80,#03
	db #c2,#b2,#80,#07,#ce,#b1,#ce,#ad
	db #ce,#b1,#ce,#ad,#ce,#a9,#ce,#ad
	db #ce,#a9,#ce,#a3,#ce,#a9,#ce,#a3
	db #ce,#9f,#ce,#ad,#ce,#a9,#ce,#a7
	db #ce,#a9,#ce,#a7,#ce,#a3,#ce,#a7
	db #ce,#a3,#ce,#9f,#ce,#a3,#ce,#9f
	db #ce,#99,#c2,#b0,#80,#07,#be,#80
	db #08,#ac,#80,#07,#ba,#80,#08,#a8
	db #80,#07,#b6,#80,#08,#ac,#80,#07
	db #ba,#80,#08,#a8,#80,#07,#b2,#80
	db #08,#a6,#80,#07,#ba,#80,#08,#a8
	db #80,#07,#b6,#80,#08,#a6,#80,#07
	db #b0,#80,#08,#a2,#80,#07,#b2,#80
	db #08,#a6,#80,#07,#b6,#80,#08,#a2
	db #80,#07,#ba,#80,#08,#9e,#80,#07
	db #b2,#80,#08,#ac,#80,#07,#bc,#80
	db #08,#a8,#80,#07,#b6,#80,#08,#a4
	db #80,#07,#ba,#80,#08,#a8,#80,#07
	db #b2,#80,#08,#a4,#80,#07,#bc,#80
	db #08,#a2,#80,#07,#ba,#80,#08,#a4
	db #80,#07,#b6,#80,#08,#a2,#80,#07
	db #b0,#80,#08,#9e,#80,#07,#b2,#80
	db #08,#a2,#80,#07,#b6,#80,#08,#9e
	db #80,#07,#ba,#80,#08,#9a,#80,#07
	db #b2,#80,#08,#b2,#80,#07,#be,#80
	db #08,#b0,#80,#07,#b2,#80,#08,#ac
	db #80,#07,#b6,#80,#08,#b0,#80,#07
	db #ba,#80,#08,#ac,#80,#07,#b2,#80
	db #08,#a8,#80,#07,#ac,#80,#08,#ac
	db #80,#07,#b2,#80,#08,#a8,#80,#07
	db #b6,#80,#08,#a2,#80,#07,#ba,#80
	db #08,#a8,#80,#07,#b6,#80,#08,#a2
	db #80,#07,#b2,#80,#08,#9e,#80,#07
	db #ba,#80,#08,#ac,#80,#07,#be,#80
	db #08,#a8,#80,#07,#ac,#80,#08,#a6
	db #80,#07,#b0,#80,#08,#a8,#80,#07
	db #b2,#80,#08,#a6,#80,#07,#b6,#80
	db #08,#a2,#80,#07,#ba,#80,#08,#a6
	db #80,#07,#be,#80,#08,#a2,#80,#07
	db #b2,#80,#08,#9e,#80,#07,#ba,#80
	db #08,#a2,#80,#07,#b6,#80,#08,#9e
	db #80,#07,#b0,#80,#08,#98,#80,#07
	db #ba,#80,#08,#ac,#80,#07,#be,#80
	db #08,#a8,#80,#07,#b2,#80,#08,#a6
	db #80,#07,#b6,#80,#08,#a8,#80,#07
	db #ba,#80,#08,#a6,#80,#07,#b0,#80
	db #08,#a2,#80,#07,#be,#80,#08,#a6
	db #80,#07,#b2,#80,#08,#a2,#80,#07
	db #ba,#80,#08,#9e,#80,#07,#b0,#80
	db #08,#a2,#80,#07,#b6,#80,#08,#9e
	db #80,#07,#ba,#80,#08,#98,#80,#07
	db #be,#80,#08,#a8,#80,#07,#b6,#80
	db #08,#a6,#80,#07,#b6,#80,#08,#a2
	db #80,#07,#ba,#80,#08,#a6,#80,#07
	db #b6,#80,#08,#a2,#80,#07,#be,#80
	db #08,#9e,#80,#07,#b2,#80,#08,#a2
	db #80,#07,#ba,#80,#08,#9e,#80,#07
	db #ba,#80,#08,#98,#80,#07,#b6,#80
	db #08,#9e,#80,#07,#b2,#80,#08,#98
	db #80,#07,#b0,#80,#08,#94,#80,#07
	db #ba,#80,#08,#ac,#80,#07,#bc,#80
	db #08,#a8,#80,#07,#b0,#80,#08,#a4
	db #80,#07,#ba,#80,#08,#a8,#80,#07
	db #b2,#80,#08,#a4,#80,#07,#b6,#80
	db #08,#a2,#80,#07,#b0,#80,#08,#a4
	db #80,#07,#ba,#80,#08,#a2,#80,#07
	db #b0,#80,#08,#9e,#80,#07,#bc,#80
	db #08,#a2,#80,#07,#b0,#80,#08,#9e
	db #80,#07,#b6,#80,#08,#9a,#80,#07
	db #b0,#80,#08,#a8,#80,#07,#b2,#80
	db #08,#a6,#80,#07,#b0,#80,#08,#a2
	db #80,#07,#b6,#80,#08,#a6,#80,#07
	db #b0,#80,#08,#a2,#80,#07,#ba,#80
	db #08,#9e,#80,#07,#b0,#80,#08,#a2
	db #80,#07,#b6,#80,#08,#9e,#80,#07
	db #b0,#80,#08,#98,#80,#07,#ce,#9f
	db #b0,#80,#08,#98,#80,#07,#ba,#80
	db #08,#94,#80,#07,#b0,#80,#08,#ff
;
; Musique originale - The Stranglers / Waltzin'Black
; CALL &8150,&8B50
;
.init_music
;
	ld de,l8b50
	jp real_init_music
;
.music_info
	db "Amstrad Expo Magic Circus (2006)(Les Sucres En Morceaux)(Fenyx Kell)",0
	db "StArkos - Original Music by The Stranglers / Waltzin'Black",0

	read "music_end.asm"
