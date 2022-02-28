; Music of Phortem - Theme 1 (2013)(Condense)(DMA-SC)(AYC)
; Ripped by Megachur the 29/12/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PHORTET1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #5100

	read "music_header.asm"

	jp l5106	; init music
	jp l5144	; play music
;
.init_music
.l5106
;
	xor a
	ld (l0004),a
	ld hl,(l5800)
	ld (l5382),hl
	ld (l55af),hl
	ld a,#0e
	ld (l572f),a
	ld hl,l57d2
	ld (hl),#40
	inc hl
	ld (hl),#04
	ld hl,l5800
	ld (l57d0),hl
	call l55ae
	call l55b5
	call l563c
	call l563b
	call l56d8
	call l5155
	ld a,(l572f)
.l513b
	push af
	call l5331
	pop af
	dec a
	jr nz,l513b
	ret
;
.play_music
.l5144
;
	ld hl,l0003
	inc (hl)
	inc l
	ld a,(hl)
	or a
	jp nz,l5155
	call l5331
	call l519b
	ret
.l5155
	ld b,#0e
	ld c,#0d
	xor a
.l515a
	push bc
	call l5163
	pop bc
	dec c
	djnz l515a
	ret
.l5163
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	out (c),c
	db #ed,#71 ; out (c),0
	ld b,#f4
	out (c),a
	ld bc,#f680
	out (c),c
	db #ed,#71 ; out (c),0
	ret
.l517a
	ld a,(hl)
	cp #00
	jr z,l5190
	ld (l0000),a
.l5182
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l5190
	inc c
.l5191
	inc de
	ld a,d
	and #03
	ld d,a
	ld (l51a6),de
	ret
.l519b
	ld de,#c080
	ld hl,#f4f6
	ld b,l
	out (c),d
	exx
.l51a6 equ $ + 1
	ld de,#0000
	ld l,e
	ld b,#f4
	ld c,#00
.l51ad
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
	db #00,#00,#00,#00
.l5332 equ $ + 1
.l5331
	ld a,#00
	or a
	jr z,l5342
	xor a
	ld (l5332),a
	call l5106
	ld a,#01
	ld (l0004),a
.l5342
	ld (l5360),sp
	ld a,(l572f)
	dec a
.l534c equ $ + 2
	ld hx,#00
	ld iy,l5354
.l5352 equ $ + 1
	jp l5404
.l5354
	ld hl,(l5352)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (l5352),de
.l5360 equ $ + 1
	ld sp,#0000
	ret
	inc c
	ld d,h
.l5366 equ $ + 1
.l5365
	ld hl,#0000
	ld c,l
	ld d,#00
	ld a,(l572f)
	ld e,a
	or a
	sbc hl,de
	ld (l5366),hl
	dec a
	jp nc,l5404
	ld b,d		; reset/end music
	ld de,l53a2
	ld (l5352),de
.l5382 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5366),hl
	ld a,c
	ld (l53b8),a
	ld (l53a3),a
	ld hl,(l51a6)
	add hl,bc
	ld a,(l572f)
	ld c,a
	add hl,bc
	ld a,h
	and #03
	ld (l534c),a
	ld a,l
	ld (l53d0),a
.l53a3 equ $ + 1
.l53a2
	ld a,#00
	dec a
	jp m,l53af
	ld iy,l53b4
.l53ad equ $ + 1
.l53ac
	jp l5404
.l53af
	ld a,(l572f)
	jr l53ba
.l53b4
	ld a,(l572f)
.l53b8 equ $ + 1
	ld b,#00
	sub b
.l53ba
	ld hl,l5332
	ld (hl),#01
	ld hl,(l53ad)
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	inc de
	inc de
	inc de
	ld hl,#0001
	add hl,de
	ex de,hl
.l53d0 equ $ + 1
	ld (hl),#00
	inc hl
	ex de,hl
	ldi
	ldi
	ldi
	ldi
	ld iy,l53e2
	dec a
	jr l53ac
.l53e2
	ld hl,(l53ad)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld hl,#ac9c
	add hl,de
	jr c,l53f9
	ld hl,l5365
	ld (l5352),de
	ld de,l5404
.l53f9
	ld (l53ad),de
	ld sp,(l5360)
	ret
	inc c
	ld d,h
.l5404
	ld sp,l5730
.l5408 equ $ + 1
	jp l5517
	inc d
	ld d,h
	ld sp,l573a
	jp l5496
	inc e
	ld d,h
	ld sp,l5744
	jp l5517
	inc h
	ld d,h
	ld sp,l574e
	jp l5496
	inc l
	ld d,h
	ld sp,l5758
	jp l5517
	inc (hl)
	ld d,h
	ld sp,l5762
	jp l5496
	inc a
	ld d,h
	ld sp,l576c
	jp l5496
	ld b,h
	ld d,h
	ld sp,l5776
	jp l5496
	ld c,h
	ld d,h
	ld sp,l5780
	jp l5496
	ld d,h
	ld d,h
	ld sp,l578a
	jp l5496
	ld e,h
	ld d,h
	ld sp,l5794
	jp l5496
	ld h,h
	ld d,h
	ld sp,l579e
	jp l5496
	ld l,h
	ld d,h
	ld sp,l57a8
	jp l5496
	ld h,l
	ld d,e
	ld sp,l57b2
	jp l5496
	ld a,h
	ld d,h
	ld sp,l57bc
	jp l5496
	inc b
	ld d,h
	ld sp,l57c6
	jp l5496
.l5482
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc e
	ex af,af'
	dec a
	exx
	jp p,l54af
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l5496
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l54ac
	exx
	ld d,a
	exx
	add b
	jr nc,l54ef
	ex af,af'
.l54a4
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l54a4
	ex af,af'
.l54ac
	exx
	pop bc
	pop hl
.l54af
	sla c
	jr nz,l54b7
	ld c,(hl)
	inc hl
	sll c
.l54b7
	jr nc,l5482
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l54d4
	ex af,af'
	ld a,b
	exx
	ld b,a
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
.l54c9
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l54c9
	ex af,af'
	exx
	jr l54af
.l54d4
	ex af,af'
	ld a,d
	exx
	ld b,a
	inc b
	exx
	ld a,(hl)
	inc hl
	push hl
	push bc
	exx
	add c
	ld l,a
.l54e1
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	djnz l54e1
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l54ef
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l54f7
	ld a,(hl)
	ld (de),a
	inc l
	inc e
	djnz l54f7
	push hl
	push de
	jp (iy)
.l5501
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc de
	res 2,d
	ex af,af'
	dec a
	exx
	jp p,l5534
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l5517
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l5531
	exx
	ld d,a
	exx
	add b
	jr nc,l5598
	ex af,af'
.l5525
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l5525
	ex af,af'
.l5531
	exx
	pop bc
	pop hl
.l5534
	sla c
	jr nz,l553c
	ld c,(hl)
	inc hl
	sll c
.l553c
	jr nc,l5501
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l556b
	ex af,af'
	ld a,b
	exx
	ld b,a
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
	ld a,d
	res 0,a
	res 1,a
	exx
	adc (hl)
	add hx
	and #fb
	inc hl
	exx
	ld h,a
.l555c
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l555c
	ex af,af'
	exx
	jr l5534
.l556b
	ex af,af'
	ld a,d
	exx
	ld b,a
	inc b
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
	ld a,d
	res 0,a
	res 1,a
	exx
	adc (hl)
	add hx
	and #fb
	inc hl
	push hl
	push bc
	exx
	ld h,a
.l5586
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	djnz l5586
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l5598
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l55a0
	ld a,(hl)
	ld (de),a
	inc hl
	res 2,h
	inc de
	res 2,d
	djnz l55a0
	push hl
	push de
	jp (iy)
.l55af equ $ + 1
.l55ae
	ld hl,#0000
	ld (l5366),hl
	ret
.l55b5
	ld hl,l57d2
	ld d,#40
	exx
	ld hl,(l57d0)
	inc hl
	inc hl
	push hl
	ld de,#0003
	ld a,(l572f)
	ld b,a
	ld c,#00
.l55ca
	ld a,(hl)
	cp #01
	jr z,l55db
	exx
	ld (hl),d
	inc hl
	ld (hl),#04
	dec hl
	ld a,d
	add #08
	ld d,a
	exx
	inc c
.l55db
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l55ca
	ld hl,l57d2
	ld d,#40
	ld b,#03
	exx
	pop hl
	push hl
	ld de,#0003
	ld a,(l572f)
	ld b,a
.l55f3
	ld a,(hl)
	cp #04
	jr z,l5610
	exx
	ld a,b
	inc a
	and #03
	ld b,a
	jr nz,l5609
	ld a,c
	or a
	jr z,l5609
	dec c
	ld a,d
	add #04
	ld d,a
.l5609
	ld (hl),d
	inc hl
	ld (hl),#01
	dec hl
	inc d
	exx
.l5610
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l55f3
	ld hl,l5408
	ld bc,#0007
	exx
	pop hl
	ld de,#0003
	ld a,(l572f)
	ld b,a
.l5626
	ld a,(hl)
	cp #01
	exx
	ld de,l5496
	jr z,l5632
	ld de,l5517
.l5632
	ld (hl),e
	inc hl
	ld (hl),d
	add hl,bc
	exx
	add hl,de
	djnz l5626
	ret
.l563b
	ret
.l563c
	ld hl,l57d2
	ld de,l51ad
	ld b,(hl)
	inc hl
	ld a,(hl)
	inc hl
	cp #01
	call z,l56bd
	call nz,l56ca
	ld b,#0d
.l5650
	push bc
	call l569a
	ld b,(hl)
	inc hl
	ld a,(hl)
	cp #04
	call z,l56ca
	jr z,l5673
	dec hl
	dec hl
	cp (hl)
	call nz,l56bd
	jr nz,l5671
	dec hl
	ld a,(hl)
	inc hl
	sub b
	inc a
	call z,l56c5
	call nz,l56bd
.l5671
	inc hl
	inc hl
.l5673
	inc hl
	pop bc
	djnz l5650
	ex de,hl
	ld (hl),#7e
	inc hl
	ld (hl),#3c
	inc hl
	ld (hl),#28
	inc hl
	ld (hl),#0f
	inc hl
	ld (hl),#3d
	inc hl
	ex de,hl
	ld hl,l5182
	ld bc,#000f
	ldir
	dec de
	ld hl,l5191
	ld bc,#000a
	ldir
	ret
.l569a
	push hl
	ld hl,l517a
	ldi
	ldi
	ld b,d
	ld c,#ff
	ld a,e
	ldi
	ldi
	ldi
	ldi
	ld (de),a
	inc de
	ld a,b
	ld (de),a
	inc de
	ld hl,l5182
	ld bc,#000f
	ldir
	pop hl
	ret
.l56bd
	ex de,hl
	ld (hl),#26
	inc hl
	ld (hl),b
	inc hl
	ex de,hl
	ret
.l56c5
	ld a,#24
	ld (de),a
	inc de
	ret
.l56ca
	ex de,hl
	ld (hl),#3e
	inc hl
	ld (hl),b
	inc hl
	ld (hl),#b2
	inc hl
	ld (hl),#67
	inc hl
	ex de,hl
	ret
.l56d8
	ld hl,l5365
	ld (l5352),hl
	ld hl,l5404
	ld (l53ad),hl
	xor a
	ld (l534c),a
	ld hl,#0000
	ld (l51a6),hl
	call l56f2
	ret
.l56f2
	ld hl,l57d2
	exx
	ld a,(l572f)
	ld b,a
	ld de,(l57d0)
	inc de
	inc de
	ld hl,l5730
.l5703
	push bc
	exx
	ld a,(hl)
	inc hl
	inc hl
	exx
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#40
	inc hl
	inc hl
	ex de,hl
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	push hl
	add hl,bc
	ld b,h
	ld c,l
	pop hl
	inc hl
	ex de,hl
	ld (hl),c
	inc hl
	ld (hl),b
	inc hl
	pop bc
	djnz l5703
	ret
.l5730 equ $ + 1
.l572f
	db #0e,#00,#00,#00,#00,#00,#00,#00
.l573a equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5744 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l574e equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5758 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5762 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l576c equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5776 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5780 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l578a equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5794 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l579e equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57a8 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57b2 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57bc equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57c6 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57d2 equ $ + 3
.l57d0 equ $ + 1
	db #00,#00,#00,#40,#04,#c4,#01,#c8
	db #04,#c5,#01,#d0,#04,#c6,#01,#c7
	db #01,#cc,#01,#cd,#01,#ce,#01,#cf
	db #01,#d4,#01,#d5,#01,#d6,#01,#d7
	db #01,#d8,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l5800
	dw #2aa0
	db #01,#2e,#00,#01,#bd,#08,#04,#d4
	db #09,#01,#38,#10,#01,#31,#14,#01
	db #f3,#15,#01,#74,#17,#01,#ff,#18
	db #01,#10,#1b,#01,#64,#1e,#01,#ee
	db #1f,#01,#f6,#21,#01,#50,#22,#01
	db #aa,#22,#ff,#ff,#ff,#ff,#ff,#ff
	db #00,#99,#f6,#00,#6a,#d5,#ea,#0c
	db #e8,#0b,#5f,#be,#d2,#3c,#2c,#59
	db #b3,#dd,#6c,#66,#f6,#90,#e8,#3b
	db #e1,#c3,#9c,#f6,#b4,#be,#7b,#f6
	db #c0,#58,#0b,#f4,#72,#9f,#3f,#99
	db #f6,#80,#43,#86,#de,#8c,#dc,#2b
	db #50,#9f,#ea,#d4,#3e,#47,#8e,#de
	db #ec,#dc,#5b,#e8,#af,#e8,#d3,#f4
	db #62,#6a,#7c,#d5,#dd,#70,#dc,#0f
	db #f4,#b7,#e8,#94,#e8,#c4,#b3,#66
	db #95,#f6,#f5,#71,#e1,#f6,#01,#a7
	db #f5,#0c,#53,#fb,#18,#f5,#d6,#0c
	db #ee,#2a,#d0,#42,#ee,#78,#bc,#fb
	db #9c,#77,#fb,#a2,#f5,#f4,#9c,#f4
	db #b3,#f4,#a8,#40,#0c,#31,#f5,#8c
	db #18,#fb,#98,#f5,#d6,#8c,#ee,#aa
	db #d0,#c2,#ca,#aa,#38,#fb,#40,#70
	db #fb,#46,#5f,#fc,#f5,#4c,#7e,#fb
	db #58,#d6,#4c,#ee,#6a,#d0,#82,#ca
	db #6a,#af,#f4,#40,#a7,#f5,#0c,#53
	db #fb,#18,#ee,#0c,#ed,#1d,#e8,#12
	db #d7,#d0,#43,#ee,#79,#bc,#fb,#9d
	db #77,#fb,#a3,#f4,#9d,#f4,#b4,#eb
	db #f4,#a9,#d0,#6d,#70,#3d,#31,#f5
	db #8d,#18,#fb,#99,#d6,#8d,#ea,#ee
	db #ab,#d0,#c3,#ca,#ab,#38,#fb,#41
	db #70,#fb,#47,#fc,#bf,#f5,#4d,#7e
	db #fb,#59,#d6,#4d,#ee,#6b,#d0,#83
	db #d6,#6b,#fa,#47,#c0,#fa,#fa,#f4
	db #41,#47,#8c,#8a,#8c,#8e,#91,#10
	db #92,#91,#8e,#e5,#0e,#50,#9d,#9b
	db #9d,#04,#9f,#a2,#a3,#a2,#9f,#e5
	db #32,#50,#ad,#00,#ba,#bc,#be,#c1
	db #c2,#c1,#be,#bc,#80,#fe,#57,#59
	db #b1,#af,#b1,#b3,#b6,#b7,#3d,#b6
	db #b3,#9d,#62,#ee,#0d,#fe,#de,#fc
	db #d9,#91,#fb,#d6,#e0,#fe,#ea,#fc
	db #d5,#db,#30,#43,#84,#82,#84,#86
	db #0e,#89,#8a,#89,#86,#fd,#17,#f4
	db #16,#e8,#26,#43,#f6,#f5,#ce,#e8
	db #f2,#ee,#cd,#fa,#74,#59,#bd,#8a
	db #f0,#be,#5f,#00,#bc,#ba,#bc,#be
	db #c1,#c2,#c1,#be,#80,#fd,#d7,#6a
	db #d3,#d1,#d3,#d5,#d8,#d9,#37,#d8
	db #d5,#c1,#e3,#f3,#e2,#c8,#fa,#dc
	db #fc,#da,#f4,#82,#c0,#b8,#82,#f4
	db #4e,#47,#8c,#8a,#8c,#8e,#91,#10
	db #92,#91,#8e,#f1,#a3,#50,#9d,#9b
	db #9d,#07,#9f,#a2,#a3,#a2,#9f,#f1
	db #bb,#e8,#4e,#f4,#ba,#20,#4f,#8d
	db #f5,#ac,#89,#8a,#89,#86,#84,#1c
	db #82,#84,#86,#fd,#03,#e8,#a2,#d0
	db #1e,#3c,#75,#01,#73,#75,#77,#7a
	db #7b,#7a,#77,#fd,#57,#00,#3b,#68
	db #66,#68,#6a,#6d,#6e,#6d,#60,#6a
	db #9d,#63,#ac,#0e,#77,#6a,#5d,#5c
	db #59,#04,#57,#55,#57,#59,#5c,#f2
	db #24,#2f,#5d,#01,#5b,#5d,#5f,#62
	db #63,#62,#5f,#f1,#3b,#7b,#35,#e9
	db #b3,#f3,#16,#f5,#6f,#e8,#6a,#7a
	db #fb,#93,#fe,#9f,#d8,#fc,#92,#fe
	db #9d,#6d,#fe,#a8,#f8,#62,#35,#78
	db #86,#c0,#bb,#d1,#ac,#f3,#50,#9d
	db #9b,#9d,#9f,#a2,#14,#a3,#a2,#9f
	db #f0,#50,#8d,#f6,#45,#47,#9c,#00
	db #aa,#b1,#b3,#b6,#b7,#b6,#b3,#b1
	db #68,#af,#cf,#76,#e8,#4f,#59,#e9
	db #94,#5f,#bc,#ba,#02,#bc,#be,#c1
	db #c2,#c1,#be,#f1,#e0,#5f,#00,#cc
	db #da,#ec,#ef,#f2,#f3,#f2,#ef,#00
	db #ed,#eb,#ed,#6a,#d3,#d1,#d3,#d5
	db #08,#d8,#d9,#d8,#d5,#f1,#04,#8e
	db #1c,#47,#70,#1c,#fe,#1c,#fa,#1b
	db #fa,#23,#9f,#3f,#50,#3f,#e1,#fe
	db #2e,#fa,#2d,#fa,#35,#86,#0c,#43
	db #0c,#fe,#40,#fc,#fa,#3f,#fa,#47
	db #e8,#1b,#f4,#57,#fa,#71,#dc,#1b
	db #b3,#66,#21,#59,#66,#fe,#a0,#d5
	db #aa,#6a,#aa,#fe,#a6,#c2,#fa,#9f
	db #fa,#93,#be,#7b,#5f,#7b,#fe,#b8
	db #ef,#1f,#de,#77,#de,#fe,#be,#fa
	db #b7,#fa,#ab,#f4,#cb,#40,#1b,#ff
	db #fa,#89,#f4,#89,#fa,#83,#fa,#ad
	db #fa,#b5,#e8,#4d,#ee,#a1,#a6,#89
	db #7f,#66,#fa,#14,#fb,#7e,#f3,#4b
	db #fa,#65,#fa,#5c,#fa,#64,#fa,#7d
	db #ff,#fa,#6e,#fa,#76,#ee,#0d,#e8
	db #5c,#f4,#98,#fa,#b2,#dc,#fb,#ee
	db #bc,#c0,#ee,#1f,#f4,#f2,#86,#0a
	db #08,#0a,#0c,#0f,#10,#10,#0f,#0c
	db #f0,#11,#fa,#eb,#ed,#ef,#04,#f2
	db #f3,#f2,#ef,#ed,#fe,#2a,#6a,#d3
	db #01,#d1,#d3,#d5,#d8,#d9,#d8,#d5
	db #f1,#35,#00,#5f,#bc,#ba,#bc,#be
	db #c1,#c2,#c1,#40,#be,#f1,#4d,#5e
	db #b1,#af,#b1,#b3,#b6,#1d,#b7,#b6
	db #b3,#f0,#65,#e9,#4d,#e8,#34,#77
	db #fd,#31,#c0,#f8,#2c,#f4,#b0,#77
	db #e9,#e3,#e1,#df,#de,#6e,#db,#ef
	db #9b,#ac,#d4,#59,#f4,#6d,#f5,#89
	db #f4,#30,#50,#00,#9d,#9b,#9d,#9f
	db #a2,#a3,#a2,#9f,#c8,#f1,#55,#f4
	db #48,#5a,#a1,#f5,#5e,#92,#92,#91
	db #03,#8e,#8c,#8a,#8c,#8e,#91,#fe
	db #86,#e8,#54,#2f,#4f,#ad,#f6,#6e
	db #5f,#f9,#41,#f8,#40,#d4,#bc,#e7
	db #b4,#f0,#f5,#6d,#e8,#f0,#f3,#30
	db #f5,#31,#5a,#d1,#ef,#0a,#01,#0c
	db #0f,#10,#0f,#0c,#0a,#08,#b7,#47
	db #00,#77,#ed,#eb,#ed,#ef,#f2,#f3
	db #f2,#40,#ef,#fd,#99,#77,#dd,#d1
	db #d3,#d5,#d8,#0c,#d9,#d8,#d5,#d3
	db #da,#a6,#f4,#2c,#5a,#a1,#00,#9b
	db #9d,#9f,#a2,#a3,#a2,#9f,#9d,#ae
	db #fd,#e2,#b2,#f6,#3a,#b6,#fb,#25
	db #fe,#fd,#fc,#24,#bc,#e4,#fb,#99
	db #fe,#09,#fc,#a0,#ed,#86,#e9,#7d
	db #85,#fa,#ab,#f6,#9a,#6a,#e9,#bd
	db #5f,#fb,#f9,#c2,#fb,#ff,#f4,#51
	db #c0,#f4,#d4,#f4,#69,#47,#8c,#8a
	db #8c,#8e,#91,#13,#92,#91,#8e,#f1
	db #7e,#48,#9c,#f5,#e2,#f4,#9a,#60
	db #ad,#d2,#67,#ac,#d5,#3c,#75,#73
	db #75,#77,#08,#7a,#7b,#7a,#77,#fc
	db #32,#6d,#6e,#6d,#05,#6a,#68,#66
	db #68,#6a,#fd,#3e,#50,#f4,#9e,#68
	db #92,#f6,#23,#f3,#65,#a6,#f6,#a3
	db #5f,#bc,#ba,#03,#bc,#be,#c1,#c2
	db #c1,#be,#fc,#7a,#f5,#ba,#d9,#f3
	db #49,#f5,#96,#4f,#f5,#ae,#dc,#c5
	db #48,#9c,#f6,#9b,#c8,#f3,#31,#e9
	db #ea,#3c,#85,#f6,#cf,#2d,#57,#55
	db #02,#57,#59,#5c,#5d,#5c,#59,#f1
	db #16,#2f,#00,#5d,#5b,#5d,#5f,#62
	db #63,#62,#5f,#80,#f1,#2e,#30,#61
	db #63,#68,#6a,#6d,#6e,#08,#6d,#6a
	db #68,#66,#6e,#48,#d5,#35,#d5,#e1
	db #fe,#e2,#fa,#e3,#f4,#e1,#77,#ef
	db #3c,#ef,#fe,#fa,#e1,#fa,#fb,#f4
	db #f9,#fa,#ed,#d5,#aa,#6a,#aa,#fe
	db #18,#f1,#f4,#11,#7c,#23,#fe,#a9
	db #f5,#a3,#de,#77,#de,#fe,#ba,#de
	db #fe,#bb,#fb,#bb,#ef,#fb,#c0,#fa
	db #c6,#76,#23,#e2,#56,#b3,#1c,#66
	db #59,#66,#fe,#7b,#ee,#7a,#58,#d2
	db #ef,#de,#38,#77,#de,#fe,#3b,#ee
	db #3a,#58,#92,#b3,#66,#59,#60,#66
	db #fe,#fb,#ee,#fa,#47,#8c,#8a,#8c
	db #8e,#08,#91,#92,#91,#8e,#e5,#13
	db #6a,#d3,#d1,#02,#d3,#d5,#d8,#d9
	db #d8,#d5,#fd,#37,#6a,#0c,#c3,#b1
	db #a3,#95,#f9,#2f,#f4,#12,#50,#9d
	db #01,#9b,#9d,#9f,#a2,#a3,#a2,#9f
	db #fd,#5b,#00,#59,#b1,#af,#b1,#b3
	db #b6,#b7,#b6,#7f,#b3,#fd,#67,#f4
	db #5a,#fa,#76,#f4,#36,#fa,#88,#f4
	db #66,#f4,#9a,#00,#5f,#bc,#ba,#bc
	db #be,#c1,#c2,#c1,#57,#be,#fd,#af
	db #5e,#f4,#9f,#a6,#f6,#78,#f4,#ae
	db #f4,#d6,#d0,#f1,#36,#eb,#99,#5a
	db #e9,#d3,#5f,#dc,#fa,#1a,#01,#1c
	db #1f,#20,#1f,#1c,#1a,#18,#cf,#29
	db #e7,#fa,#ea,#fe,#67,#fc,#f2,#d3
	db #c8,#fc,#1c,#fe,#73,#fc,#22,#68
	db #c1,#fe,#96,#fe,#7c,#b6,#f9,#03
	db #59,#c1,#cf,#80,#f7,#ed,#47,#8c
	db #8a,#8c,#8e,#91,#92,#2c,#91,#8e
	db #e5,#94,#50,#f9,#cb,#fc,#ca,#50
	db #8d,#00,#7b,#75,#77,#7a,#7b,#7a
	db #77,#75,#40,#73,#fe,#c6,#6d,#6e
	db #6d,#6a,#68,#66,#3b,#68,#6a,#fd
	db #d0,#f4,#93,#f4,#b7,#3c,#fc,#cc
	db #f8,#c8,#80,#fb,#f8,#43,#84,#82
	db #84,#86,#89,#8a,#3f,#89,#86,#f7
	db #06,#ee,#93,#f4,#e7,#fa,#2d,#fe
	db #7b,#fe,#85,#49,#b3,#f9,#80,#b3
	db #a6,#f6,#2f,#4f,#8d,#ea,#9d,#fc
	db #f4,#29,#fe,#53,#f0,#07,#fa,#81
	db #ee,#29,#f9,#4d,#9b,#97,#86,#fe
	db #a9,#98,#97,#94,#8f,#ef,#18,#e9
	db #b9,#1a,#01,#18,#1a,#1c,#1f,#20
	db #1f,#1c,#fd,#d8,#00,#6a,#d3,#d1
	db #d3,#d5,#d8,#d9,#d8,#40,#d5,#fd
	db #e4,#5f,#bc,#ba,#bc,#be,#c1,#14
	db #c2,#c1,#be,#fd,#f0,#5e,#f4,#3c
	db #c6,#d7,#f8,#fb,#ea,#fc,#e7,#ee
	db #17,#ee,#1d,#f4,#e3,#6a,#c3,#b1
	db #3b,#a3,#95,#f9,#30,#f4,#13,#f4
	db #8f,#59,#f5,#fc,#ee,#8f,#fb,#f4
	db #37,#fa,#89,#f4,#67,#f4,#9b,#e7
	db #ef,#a6,#f6,#79,#f4,#af,#e8,#f4
	db #d7,#f1,#37,#eb,#9a,#5a,#e9,#d4
	db #5f,#dc,#fa,#00,#1a,#1c,#1f,#20
	db #1f,#1c,#1a,#18,#d8,#cf,#2a,#f3
	db #85,#c8,#f6,#1d,#f4,#97,#59,#c1
	db #cf,#e0,#f7,#66,#e8,#97,#b8,#a3
	db #50,#9d,#9b,#9d,#9f,#08,#a2,#a3
	db #a2,#9f,#f1,#f4,#4f,#8d,#8a,#01
	db #8c,#8e,#91,#92,#91,#8e,#8c,#fe
	db #0d,#77,#8c,#fb,#ec,#fe,#1c,#fc
	db #eb,#b1,#fb,#e8,#fe,#28,#fc,#ef
	db #53,#b6,#fc,#63,#d8,#f9,#8c,#6a
	db #c3,#fa,#29,#fb,#eb,#5f,#a6,#f6
	db #01,#5f,#f9,#74,#f8,#73,#fe,#5c
	db #ee,#93,#f4,#87,#80,#d0,#7c,#35
	db #68,#66,#68,#6a,#6d,#6e,#21,#6d
	db #6a,#9d,#b5,#8e,#1c,#47,#1c,#fe
	db #21,#c3,#fa,#20,#fa,#28,#9f,#3f
	db #50,#3f,#fe,#33,#fa,#32,#87,#fa
	db #3a,#86,#0c,#43,#0c,#fe,#45,#fa
	db #44,#fa,#4c,#f0,#e8,#20,#f4,#5c
	db #fa,#76,#dc,#20,#b3,#66,#59,#66
	db #87,#fe,#a5,#d5,#aa,#6a,#aa,#fe
	db #ab,#fa,#a4,#fa,#98,#08,#be,#7b
	db #5f,#7b,#fe,#bd,#ef,#de,#77,#7f
	db #de,#fe,#c3,#fa,#bc,#fa,#b0,#f4
	db #d0,#40,#20,#fa,#8e,#f4,#8e,#ff
	db #fa,#88,#fa,#b2,#fa,#ba,#e8,#52
	db #ee,#a6,#a0,#8e,#fa,#82,#f4,#50
	db #ff,#fa,#6a,#fa,#60,#fa,#68,#fa
	db #4e,#f4,#4e,#ee,#12,#e8,#60,#f4
	db #9c,#f7,#fa,#b6,#e8,#36,#fe,#d4
	db #f6,#8c,#7b,#ee,#c0,#ee,#24,#f4
	db #f7,#00,#86,#0a,#08,#0a,#0c,#0f
	db #10,#0f,#40,#0c,#f0,#16,#fa,#eb
	db #ed,#ef,#f2,#f3,#10,#f2,#ef,#ed
	db #fe,#2f,#6a,#d3,#d1,#d3,#04,#d5
	db #d8,#d9,#d8,#d5,#f1,#3a,#5f,#bc
	db #01,#ba,#bc,#be,#c1,#c2,#c1,#be
	db #f1,#52,#00,#5e,#b1,#af,#b1,#b3
	db #b6,#b7,#b6,#77,#b3,#f0,#6a,#e9
	db #52,#e8,#39,#77,#fd,#36,#f8,#31
	db #f4,#b5,#01,#77,#e9,#e3,#e1,#df
	db #de,#db,#ef,#a0,#b8,#ac,#d9,#59
	db #f4,#72,#f5,#8e,#f4,#35,#50,#9d
	db #9b,#03,#9d,#9f,#a2,#a3,#a2,#9f
	db #f1,#5a,#f4,#4d,#20,#5a,#a1,#f5
	db #63,#92,#92,#91,#8e,#8c,#0c,#8a
	db #8c,#8e,#91,#fe,#8b,#e8,#59,#4f
	db #ad,#bf,#f6,#73,#5f,#f9,#46,#f8
	db #45,#d4,#c1,#e7,#b9,#f5,#72,#e8
	db #f5,#c0,#f3,#35,#f5,#36,#5a,#d1
	db #ef,#0a,#0c,#0f,#04,#10,#0f,#0c
	db #0a,#08,#b7,#4c,#77,#ed,#01,#eb
	db #ed,#ef,#f2,#f3,#f2,#ef,#fd,#9e
	db #00,#77,#dd,#d1,#d3,#d5,#d8,#d9
	db #d8,#30,#d5,#d3,#da,#ab,#f4,#31
	db #5a,#a1,#9b,#9d,#02,#9f,#a2,#a3
	db #a2,#9f,#9d,#fd,#e7,#b2,#e9,#f6
	db #3f,#f4,#19,#f4,#9d,#86,#e9,#82
	db #85,#fa,#f6,#0b,#7c,#6a,#e9,#c2
	db #f4,#fd,#f4,#55,#f4,#d9,#f4,#6d
	db #b6,#8c,#01,#8a,#8c,#8e,#91,#92
	db #91,#8e,#fd,#82,#71,#8c,#fb,#86
	db #fe,#92,#fc,#85,#91,#48,#9c,#f5
	db #e7,#ac,#f4,#9f,#ad,#ea,#6b,#47
	db #f5,#82,#a0,#ce,#3c,#75,#01,#73
	db #75,#77,#7a,#7b,#7a,#77,#fc,#37
	db #00,#6d,#6e,#6d,#6a,#68,#66,#68
	db #6a,#ad,#fd,#43,#50,#f4,#a3,#92
	db #f6,#28,#f3,#69,#a6,#f6,#a8,#00
	db #5f,#bc,#ba,#bc,#be,#c1,#c2,#c1
	db #7b,#be,#fc,#7f,#f5,#bf,#f3,#4e
	db #f5,#9b,#4f,#f5,#b3,#dc,#ca,#39
	db #48,#9c,#f6,#a0,#f3,#36,#e9,#ef
	db #3c,#85,#f6,#d4,#00,#2d,#57,#55
	db #57,#59,#5c,#5d,#5c,#40,#59,#f1
	db #1b,#2f,#5d,#5b,#5d,#5f,#62,#10
	db #63,#62,#5f,#f1,#33,#30,#61,#63
	db #68,#01,#6a,#6d,#6e,#6d,#6a,#68
	db #66,#6e,#4d,#1c,#d5,#35,#d5,#fe
	db #e7,#fa,#e8,#f4,#e6,#77,#ef,#3e
	db #3c,#ef,#fe,#ff,#fa,#00,#f4,#fe
	db #e8,#e6,#b9,#22,#35,#c0,#fe,#6a
	db #d8,#77,#00,#bf,#71,#00,#01,#f6
	db #90,#db,#77,#dc,#90,#70,#24,#c4
	db #44,#00,#af,#b5,#bb,#af,#01,#f6
	db #f5,#f4,#e9,#06,#f5,#0c,#03,#fb
	db #18,#f7,#d6,#0c,#ee,#2a,#d0,#42
	db #e8,#78,#07,#fb,#a2,#f4,#9c,#f4
	db #b3,#d7,#f4,#a8,#40,#0c,#04,#f5
	db #8c,#02,#fb,#98,#d6,#8c,#ee,#aa
	db #eb,#d0,#c2,#00,#aa,#fe,#09,#06
	db #f5,#0c,#03,#fb,#18,#ee,#0c,#f7
	db #ed,#1d,#e8,#12,#d0,#43,#e8,#79
	db #07,#fb,#a3,#f4,#9d,#f4,#b4,#eb
	db #f4,#a9,#ca,#6d,#76,#43,#04,#f5
	db #8d,#02,#fb,#99,#d6,#8d,#f7,#ee
	db #ab,#d0,#c3,#00,#ab,#fe,#0a,#00
	db #00,#0d,#00,#0d,#00,#0d,#f7,#00
	db #0d,#00,#0d,#00,#0d,#f2,#0d,#01
	db #fe,#1b,#fe,#1c,#f8,#1b,#ff,#fa
	db #1f,#ba,#1d,#f6,#5b,#d2,#43,#dc
	db #a7,#c4,#71,#00,#4d,#c9,#bf,#ff
	db #e8,#e4,#58,#9b,#f1,#f2,#ea,#12
	db #fd,#5a,#00,#2b,#00,#2b,#e5,#2b
	db #7e,#01,#b0,#47,#6f,#cd,#86,#98
	db #00,#a2,#00,#a2,#8b,#a2,#01,#ff
	db #fe,#17,#fe,#18,#f3,#11,#64,#24
	db #5d,#23,#00,#63,#56,#63,#00,#12
	db #bb,#ea,#12,#01,#c8,#29,#39,#62
	db #51,#28,#01,#f6,#d8,#0b,#e3,#bb
	db #ae,#d7,#01,#c8,#2a,#39,#63,#09
	db #29,#01,#fe,#20,#fe,#21,#ff,#f8
	db #20,#fa,#24,#ba,#22,#f6,#60,#d2
	db #48,#dc,#ac,#c4,#76,#00,#52,#fe
	db #2e,#b2,#cc,#83,#ea,#17,#fe,#14
	db #00,#2f,#00,#2f,#e4,#2f,#01,#fc
	db #b0,#4c,#70,#d3,#87,#9d,#00,#a5
	db #00,#a5,#06,#a5,#00,#92,#ea,#00
	db #00,#8e,#1c,#ea,#18,#00,#d5,#aa
	db #f6,#30,#00,#be,#73,#7b,#f6,#3c
	db #00,#e8,#17,#00,#a0,#47,#00,#71
	db #e1,#ea,#c0,#00,#ac,#17,#00,#33
	db #b3,#66,#f6,#2c,#01,#dc,#07,#01
	db #9f,#3f,#f6,#5c,#01,#f4,#4f,#01
	db #9c,#f4,#67,#01,#47,#8e,#ea,#80
	db #01,#e8,#7f,#01,#f4,#2b,#01,#5f
	db #be,#e6,#ea,#bc,#01,#f4,#5b,#01
	db #e8,#bb,#01,#50,#9f,#ea,#f8,#01
	db #f4,#fb,#00,#6a,#72,#d5,#ea,#1c
	db #02,#f4,#af,#01,#e8,#1b,#02,#59
	db #b3,#ea,#58,#02,#e1,#6e,#c3,#f5
	db #70,#02,#e9,#c0,#00,#e1,#f4,#33
	db #02,#f4,#57,#02,#f4,#a0,#02,#1c
	db #78,#38,#f6,#b9,#02,#f4,#0f,#02
	db #d0,#ef,#00,#f2,#c4,#02,#6a,#aa
	db #aa,#47,#6a,#fa,#0c,#03,#8e,#1c
	db #47,#fc,#7d,#01,#fb,#19,#03,#fa
	db #20,#03,#03,#9f,#3f,#50,#3f,#3f
	db #50,#fa,#2a,#03,#fa,#32,#03,#03
	db #86,#0c,#43,#0c,#0c,#43,#fa,#3c
	db #03,#fa,#44,#03,#e3,#e8,#18,#03
	db #fa,#54,#03,#d0,#0c,#03,#b3,#66
	db #59,#fd,#9e,#02,#fa,#72,#03,#c0
	db #fa,#9c,#03,#fa,#90,#03,#be,#7b
	db #5f,#7b,#7b,#5f,#03,#ef,#de,#77
	db #de,#de,#77,#fa,#b4,#03,#f4,#9c
	db #03,#81,#46,#12,#03,#0c,#18,#86
	db #18,#18,#86,#fa,#8c,#00,#ff,#fa
	db #86,#00,#fa,#98,#00,#fa,#a0,#00
	db #fa,#80,#00,#fa,#aa,#00,#fa,#b2
	db #00,#e8,#4a,#00,#ee,#9e,#00,#c0
	db #a0,#86,#00,#fa,#7a,#00,#3f,#7e
	db #9f,#7e,#7e,#9f,#ff,#fa,#4c,#01
	db #f4,#2c,#00,#fa,#60,#01,#fa,#46
	db #01,#fa,#6a,#01,#fa,#72,#01,#ee
	db #0a,#01,#e8,#58,#01,#fe,#fa,#94
	db #01,#f4,#4c,#01,#dc,#f8,#00,#ee
	db #b8,#01,#ee,#1c,#01,#f4,#ee,#01
	db #dc,#2c,#00,#50,#f1,#f5,#f5,#01
	db #00,#3b,#03,#00,#3b,#00,#23,#3b
	db #01,#d5,#b3,#8e,#fd,#19,#01,#5c
	db #a7,#fb,#1f,#01,#53,#fb,#25,#01
	db #fa,#1f,#01,#f4,#0d,#01,#ef,#be
	db #7e,#9f,#fd,#3d,#01,#fa,#2b,#01
	db #ee,#1f,#01,#fa,#3d,#01,#f4,#6b
	db #00,#d0,#0d,#01,#d5,#3f,#b3,#86
	db #fd,#9d,#01,#e8,#43,#01,#fa,#79
	db #01,#e2,#61,#01,#51,#1e,#01,#f4
	db #ed,#03,#15,#0c,#d5,#b3,#fd,#9a
	db #02,#31,#fb,#a0,#02,#18,#fb,#a6
	db #02,#de,#fa,#a0,#02,#f2,#8e,#02
	db #be,#fd,#be,#02,#fa,#ac,#02,#ed
	db #a0,#02,#fb,#bf,#02,#1c,#06,#38
	db #8e,#38,#38,#8e,#fa,#e2,#02,#ce
	db #8e,#02,#9f,#f8,#fd,#1e,#03,#e6
	db #c4,#02,#fc,#fc,#02,#f4,#82,#02
	db #f4,#ad,#00,#3f,#0c,#d5,#ae,#fd
	db #5a,#03,#fc,#fb,#60,#03,#7e,#fb
	db #66,#03,#fa,#60,#03,#f4,#4e,#03
	db #66,#3c,#1c,#ef,#fd,#7e,#03,#fa
	db #6c,#03,#ee,#60,#03,#fa,#7e,#03
	db #66,#cc,#0f,#b3,#cc,#cc,#b3,#fa
	db #a2,#03,#d0,#4e,#03,#fa,#3c,#03
	db #e8,#84,#03,#ff,#fa,#dc,#02,#f4
	db #a2,#03,#2e,#0d,#01,#46,#e0,#01
	db #fd,#60,#01,#fd,#e1,#03,#00,#9f
	db #02,#00,#9f,#03,#eb,#05,#9f,#00
	db #da,#fb,#01,#7e,#c1,#01,#b3,#fb
	db #8a,#00,#77,#fa,#44,#01,#fb,#da
	db #02,#71,#9f,#fa,#50,#01,#4c,#5b
	db #02,#f4,#13,#01,#86,#6a,#59,#fd
	db #1c,#02,#c7,#f4,#0d,#01,#ee,#0d
	db #01,#86,#6a,#5f,#fd,#40,#02,#f4
	db #25,#01,#f4,#28,#02,#ed,#fa,#40
	db #02,#e8,#e3,#00,#da,#1c,#02,#50
	db #fd,#a0,#02,#fa,#8e,#02,#bc,#fb
	db #ac,#02,#c6,#fa,#89,#00,#fa,#ac
	db #02,#77,#5f,#50,#fd,#be,#02,#e8
	db #23,#00,#6a,#3f,#59,#47,#fd,#dc
	db #02,#fa,#71,#00,#fa,#d6,#02,#f4
	db #e2,#02,#fa,#f4,#02,#fa,#be,#02
	db #f1,#f4,#65,#00,#fa,#fa,#02,#fa
	db #0c,#03,#be,#be,#02,#6a,#59,#43
	db #fd,#60,#03,#81,#f4,#06,#03,#b3
	db #66,#59,#66,#66,#59,#fa,#6c,#03
	db #81,#fa,#3c,#03,#be,#7b,#5f,#7b
	db #7b,#5f,#f4,#24,#03,#ff,#fa,#90
	db #03,#fa,#1e,#03,#ee,#ac,#02,#f4
	db #90,#03,#fa,#7c,#02,#fa,#ae,#03
	db #ee,#a2,#03,#fa,#5e,#02,#03,#fd
	db #fa,#7f,#fa,#fa,#7f,#fa,#e4,#03
	db #d0,#90,#03,#1f,#77,#5f,#47,#fd
	db #20,#00,#e8,#c6,#03,#ee,#1e,#03
	db #64,#10,#02,#f4,#ce,#00,#df,#f9
	db #cd,#00,#fb,#bd,#00,#59,#fa,#f3
	db #00,#fa,#05,#01,#00,#10,#02,#00
	db #10,#03,#60,#10,#00,#02,#3f,#7e
	db #9f,#7e,#7e,#9f,#fa,#b1,#03,#9f
	db #2b,#86,#6a,#fd,#bd,#03,#fc,#fb
	db #c3,#03,#7e,#fb,#c9,#03,#fa,#c3
	db #03,#f8,#f4,#b1,#03,#fa,#5d,#03
	db #fa,#cf,#03,#ee,#c3,#03,#fa,#9f
	db #03,#66,#cc,#b3,#18,#cc,#cc,#b3
	db #fa,#05,#00,#f4,#67,#02,#8e,#6a
	db #59,#fe,#fd,#1d,#00,#f4,#11,#00
	db #fa,#4f,#02,#fa,#34,#00,#ee,#17
	db #00,#fa,#39,#03,#fa,#35,#00,#cc
	db #fd,#f5,#59,#00,#fa,#41,#00,#fa
	db #5f,#00,#c4,#11,#00,#fa,#8e,#00
	db #f9,#a7,#00,#70,#f5,#ba,#00,#1d
	db #8e,#6a,#5f,#fd,#c6,#00,#fa,#4d
	db #00,#6a,#11,#00,#98,#fb,#68,#01
	db #fe,#f4,#1a,#01,#f4,#e7,#03,#fa
	db #a1,#01,#fa,#f3,#03,#64,#11,#00
	db #f4,#16,#02,#22,#ba,#00,#d5,#07
	db #aa,#6a,#aa,#aa,#6a,#f4,#be,#02
	db #fa,#18,#03,#fa,#d6,#02,#ff,#fa
	db #2a,#03,#ee,#18,#03,#fa,#8e,#02
	db #fa,#3c,#03,#fa,#f4,#02,#f4,#3c
	db #03,#f4,#ac,#02,#ca,#18,#03,#81
	db #fa,#90,#03,#ef,#de,#77,#de,#de
	db #77,#fa,#40,#02,#f0,#fa,#b4,#03
	db #ee,#46,#02,#70,#18,#03,#f3,#e7
	db #02,#66,#59,#66,#66,#2f,#59,#59
	db #fa,#00,#03,#b3,#fb,#75,#00,#00
	db #06,#03,#9e,#c7,#00,#f4,#69,#00
	db #e8,#fa,#81,#00,#00,#7b,#00,#68
	db #7b,#01,#31,#fb,#93,#03,#0c,#18
	db #86,#05,#18,#18,#86,#86,#6a,#fd
	db #86,#03,#59,#f4,#93,#03,#de,#f4
	db #a5,#03,#ee,#99,#03,#b4,#fb,#cf
	db #03,#f9,#bd,#03,#fb,#db,#03,#f8
	db #bd,#03,#5f,#d8,#fc,#e7,#03,#fb
	db #ed,#03,#77,#fb,#f3,#03,#fa,#c1
	db #02,#9f,#77,#5f,#f5,#fd,#ff,#03
	db #fa,#0f,#03,#fa,#f9,#03,#fa,#05
	db #00,#bc,#fb,#0c,#00,#77,#fa,#18
	db #00,#b0,#fb,#00,#00,#5f,#fa,#f3
	db #03,#fa,#12,#00,#be,#7b,#5f,#7b
	db #31,#7b,#5f,#fa,#7b,#03,#fa,#36
	db #00,#77,#5f,#50,#fd,#48,#00,#e3
	db #fa,#c9,#03,#40,#d3,#02,#f4,#d8
	db #00,#d5,#b3,#8e,#fd,#20,#01,#f4
	db #a9,#02,#c7,#f4,#c6,#00,#fa,#38
	db #01,#ef,#be,#9f,#fd,#44,#01,#fa
	db #32,#01,#ee,#26,#01,#f1,#fa,#44
	db #01,#fa,#0b,#00,#fa,#68,#01,#d0
	db #14,#01,#d5,#b3,#86,#fd,#a4,#01
	db #f8,#e8,#4a,#01,#fa,#80,#01,#c4
	db #68,#01,#70,#44,#01,#f4,#b7,#03
	db #0c,#d5,#b3,#d8,#fd,#a0,#02,#fa
	db #4e,#00,#18,#fb,#ac,#02,#ee,#b1
	db #03,#0c,#d5,#be,#f0,#fd,#c4,#02
	db #fa,#b2,#02,#ed,#a6,#02,#fb,#c5
	db #02,#1c,#38,#8e,#38,#37,#38,#8e
	db #fa,#e8,#02,#ce,#94,#02,#9f,#fd
	db #24,#03,#e6,#ca,#02,#fc,#02,#03
	db #81,#f4,#88,#02,#3f,#7e,#9f,#7e
	db #7e,#9f,#f9,#54,#03,#3e,#0c,#d5
	db #fd,#60,#03,#fa,#fc,#00,#fa,#0e
	db #01,#fa,#66,#03,#f4,#54,#03,#66
	db #3c,#1c,#ef,#fd,#84,#03,#fa,#72
	db #03,#ee,#66,#03,#fa,#84,#03,#66
	db #cc,#75,#b3,#fc,#f4,#00,#fb,#a9
	db #03,#dc,#54,#03,#fc,#fb,#bb,#03
	db #9f,#fa,#d9,#03,#f9,#fa,#42,#03
	db #e8,#8a,#03,#fa,#e2,#02,#f4,#a8
	db #03,#f4,#18,#03,#86,#6a,#fd,#07
	db #01,#63,#59,#f4,#12,#03,#ee,#12
	db #03,#86,#6a,#5f,#fd,#45,#00,#f4
	db #2a,#03,#fd,#f4,#2d,#00,#fa,#45
	db #00,#e8,#e8,#02,#da,#21,#00,#fc
	db #0a,#01,#fa,#93,#00,#bc,#fb,#b1
	db #00,#c6,#fa,#4e,#03,#fa,#b1,#00
	db #77,#5f,#50,#fd,#c3,#00,#e8,#28
	db #02,#6a,#3f,#59,#47,#fd,#e1,#00
	db #fa,#76,#02,#fa,#db,#00,#f4,#e7
	db #00,#fa,#f9,#00,#fa,#c3,#00,#f1
	db #f4,#6a,#02,#fa,#ff,#00,#fa,#11
	db #01,#be,#c3,#00,#6a,#59,#43,#fd
	db #65,#01,#81,#f4,#0b,#01,#b3,#66
	db #59,#66,#66,#59,#fa,#71,#01,#81
	db #fa,#41,#01,#be,#7b,#5f,#7b,#7b
	db #5f,#f4,#29,#01,#ff,#fa,#95,#01
	db #fa,#23,#01,#ee,#b1,#00,#f4,#95
	db #01,#fa,#81,#00,#fa,#b3,#01,#ee
	db #a7,#01,#fa,#63,#00,#03,#fd,#fa
	db #7f,#fa,#fa,#7f,#fa,#e9,#01,#d0
	db #95,#01,#1f,#77,#5f,#47,#fd,#25
	db #02,#e8,#cb,#01,#ee,#23,#01,#64
	db #15,#00,#ec,#91,#02,#ef,#fc,#c3
	db #02,#f3,#18,#03,#89,#56,#02,#31
	db #fa,#7c,#03,#00,#93,#00,#00,#93
	db #01,#de,#53,#03,#02,#3f,#7e,#9f
	db #7e,#7e,#9f,#fa,#b6,#01,#9f,#2b
	db #86,#6a,#fd,#c2,#01,#fc,#fb,#c8
	db #01,#7e,#fb,#ce,#01,#fa,#c8,#01
	db #f8,#f4,#b6,#01,#fa,#62,#01,#fa
	db #d4,#01,#ee,#c8,#01,#fa,#a4,#01
	db #66,#cc,#b3,#11,#cc,#cc,#b3,#fa
	db #0a,#02,#aa,#53,#d5,#fd,#58,#00
	db #0c,#53,#a7,#aa,#a7,#fc,#1d,#02
	db #84,#23,#02,#00,#bf,#e9,#00,#01
	db #ea,#18,#f4,#17,#e8,#2f,#e8,#23
	db #ab,#53,#95,#00,#fc,#b8,#fb,#f3
	db #67,#d0,#7f,#d1,#b4,#64,#7f,#c3
	db #1a,#01,#02,#ff,#f6,#b9,#f3,#94
	db #dd,#c5,#f3,#70,#f3,#f5,#fd,#00
	db #fd,#b6,#ee,#0e,#f8,#fa,#1c,#be
	db #1a,#c4,#0e,#c4,#a4,#5a,#26,#01
	db #02,#00,#7f,#02,#fe,#8d,#fa,#8c
	db #ac,#d8,#00,#8c,#de,#da,#e8,#08
	db #ea,#ea,#f0,#9f,#db,#da,#61,#b8
	db #63,#7e,#4b,#01,#02,#00,#02,#fe
	db #fe,#8e,#fa,#8d,#ac,#d9,#00,#8d
	db #de,#db,#f5,#09,#fb,#19,#06,#bf
	db #fb,#1f,#03,#fb,#25,#fa,#1f,#e8
	db #0d,#ed,#1f,#fa,#5b,#83,#02,#87
	db #51,#1e,#01,#02,#00,#02,#fe,#8f
	db #f9,#8e,#fc,#87,#3f,#00,#04,#fb
	db #a0,#fe,#97,#fc,#a7,#fa,#a0,#e8
	db #8e,#ed,#a0,#ff,#fb,#bf,#f3,#b2
	db #ad,#8f,#e7,#82,#fb,#49,#e1,#00
	db #f5,#5b,#ed,#60,#fd,#ee,#49,#d0
	db #4f,#dd,#1f,#f4,#d2,#f4,#42,#fa
	db #19,#06,#fb,#20,#7f,#03,#fb,#26
	db #fa,#20,#e8,#0e,#ed,#20,#fa,#5c
	db #f4,#33,#00,#0f,#87,#e1,#0f,#01
	db #02,#00,#02,#fe,#8f,#fa,#8e,#fb
	db #80,#bf,#fe,#9e,#04,#fb,#a1,#fe
	db #97,#fc,#a8,#fa,#a1,#f4,#8e,#fb
	db #86,#ff,#f9,#a0,#ed,#a1,#fb,#c0
	db #f3,#b3,#e9,#b4,#c4,#a7,#e8,#82
	db #fc,#4c,#ff,#fe,#5c,#e1,#01,#f5
	db #5c,#ed,#61,#ee,#4a,#d0,#50,#dd
	db #20,#f4,#d3,#d7,#f4,#43,#fa,#1a
	db #06,#fb,#21,#03,#fb,#27,#fa,#21
	db #e8,#0f,#f8,#ed,#21,#fa,#5d,#f4
	db #34,#00,#10,#e1,#10,#01,#02,#00
	db #73,#02,#fe,#90,#f9,#8f,#fc,#88
	db #00,#04,#fb,#a1,#fe,#98,#ff,#fc
	db #a8,#fa,#a1,#e8,#8f,#ed,#a1,#fb
	db #c0,#f3,#b3,#ad,#90,#f3,#53,#ff
	db #fb,#1a,#f9,#4f,#fc,#8c,#fe,#5d
	db #e1,#01,#f5,#5d,#ed,#62,#fb,#81
	db #ff,#e7,#e3,#dc,#5d,#dd,#20,#e8
	db #a4,#fa,#1b,#f4,#ce,#ee,#ce,#f4
	db #1c,#ef,#ee,#22,#fa,#40,#b8,#04
	db #03,#fb,#ac,#fd,#00,#fd,#bf,#f9
	db #ac,#fd,#f9,#5e,#fc,#b4,#ed,#c4
	db #fb,#dc,#ed,#ac,#ef,#d1,#06,#f5
	db #06,#fc,#fa,#fa,#f9,#0c,#59,#bf
	db #fa,#ae,#ed,#a2,#8f,#7f,#01,#02
	db #3b,#00,#02,#fe,#51,#fa,#50,#fa
	db #5b,#04,#fb,#62,#fa,#56,#ff,#f4
	db #62,#ee,#56,#ee,#62,#f9,#3f,#f5
	db #75,#b8,#50,#f3,#97,#fa,#f3,#df
	db #fa,#05,#64,#50,#03,#fb,#ad,#fe
	db #9a,#fe,#b3,#fe,#b4,#f9,#ad,#fd
	db #f9,#5f,#fc,#b5,#ed,#c5,#fb,#dd
	db #ed,#ad,#ef,#d2,#06,#f5,#07,#fc
	db #fa,#fb,#f9,#0d,#59,#c0,#fa,#af
	db #ed,#a3,#8f,#80,#01,#02,#3b,#00
	db #02,#fe,#52,#fa,#51,#fa,#5c,#04
	db #fb,#63,#fa,#57,#ff,#f4,#63,#ee
	db #57,#ee,#63,#f9,#40,#f5,#76,#e8
	db #75,#fe,#ba,#fc,#ca,#ef,#dc,#6f
	db #f4,#c9,#ee,#9f,#06,#f5,#11,#fa
	db #ff,#f4,#11,#fa,#39,#ff,#fa,#34
	db #ee,#17,#f4,#2f,#fa,#f3,#fa,#5e
	db #fa,#41,#fa,#5f,#c4,#11,#fd,#fa
	db #8e,#f9,#a7,#f4,#e7,#fa,#a1,#f4
	db #95,#70,#17,#05,#fb,#68,#ff,#f4
	db #1a,#ee,#ba,#c4,#2c,#a0,#08,#f4
	db #0a,#fa,#28,#ee,#7a,#f4,#2e,#bc
	db #70,#98,#05,#fb,#e8,#f4,#9a,#ee
	db #3a,#f4,#ac,#00,#01,#ff,#fe,#18
	db #fe,#19,#f4,#be,#fa,#18,#fa,#d6
	db #f9,#18,#ef,#19,#f4,#30,#fe,#f9
	db #a0,#f5,#3d,#b2,#0c,#f9,#00,#f5
	db #9d,#f3,#d6,#71,#19,#00,#7f,#05
	db #fb,#69,#fa,#2c,#fa,#5d,#ee,#ba
	db #c4,#2c,#a0,#08,#ee,#c9,#ef,#ee
	db #7b,#fa,#2f,#6a,#93,#05,#fb,#e9
	db #f4,#9b,#ee,#3b,#c4,#ad,#fb,#a0
	db #89,#ee,#49,#ee,#fb,#fa,#af,#6a
	db #13,#05,#fb,#69,#f4,#1b,#ef,#ee
	db #bb,#fa,#6f,#fa,#7b,#01,#fe,#74
	db #fd,#73,#fa,#9e,#f4,#93,#fd,#f4
	db #a5,#ee,#99,#f4,#b1,#fa,#51,#f4
	db #bd,#fa,#db,#07,#fb,#f3,#fb,#f4
	db #81,#f4,#51,#fa,#05,#fe,#e0,#f0
	db #59,#00,#fa,#f3,#f4,#05,#df,#ee
	db #7b,#fa,#3c,#06,#fb,#54,#f4,#42
	db #f4,#54,#f4,#30,#ee,#5a,#fd,#f4
	db #72,#fe,#e4,#fc,#9d,#f4,#7e,#fa
	db #9c,#ca,#54,#05,#fb,#ea,#ff,#f4
	db #9c,#ee,#3c,#f3,#9c,#e9,#7f,#f3
	db #b4,#ef,#1b,#ed,#26,#fa,#62,#e1
	db #f4,#39,#00,#15,#e1,#15,#01,#02
	db #00,#02,#fe,#95,#cf,#f9,#94,#fc
	db #8d,#00,#04,#fb,#a6,#fe,#9d,#fc
	db #ad,#fa,#a6,#ff,#e8,#94,#ed,#a6
	db #fb,#c5,#f3,#b8,#ad,#95,#e7,#88
	db #fb,#4f,#e1,#06,#ff,#f5,#61,#ed
	db #66,#ee,#4f,#dd,#55,#fe,#cb,#fc
	db #bc,#fe,#da,#fb,#da,#ff,#dc,#24
	db #e8,#a8,#fa,#20,#f4,#72,#ee,#72
	db #f4,#21,#ee,#27,#fa,#45,#bf,#b8
	db #09,#03,#fb,#b1,#fd,#05,#fd,#c3
	db #f9,#b1,#f9,#63,#fc,#b9,#f7,#ed
	db #c9,#fb,#e1,#ed,#b1,#ef,#d6,#06
	db #f5,#0b,#fa,#ff,#f9,#11,#f0,#59
	db #c4,#fa,#b3,#ed,#a7,#8f,#84,#01
	db #02,#00,#02,#ef,#fe,#56,#fa,#55
	db #fa,#60,#04,#fb,#67,#fa,#5b,#f4
	db #67,#ee,#5b,#fe,#ee,#67,#f9,#44
	db #f5,#7a,#2e,#55,#f9,#5c,#fa,#7c
	db #e2,#33,#03,#ff,#fb,#b2,#fe,#9f
	db #fe,#b8,#fe,#b9,#f9,#b2,#f9,#63
	db #fc,#ba,#ed,#ca,#ef,#fb,#e2,#ed
	db #b2,#ef,#d7,#06,#f5,#0c,#fa,#00
	db #f9,#12,#59,#c5,#e1,#fa,#b4,#ed
	db #a8,#8f,#85,#01,#02,#00,#02,#fe
	db #57,#df,#fa,#56,#fa,#61,#04,#fb
	db #68,#fa,#5c,#f4,#68,#ee,#5c,#ee
	db #68,#ff,#f9,#45,#f5,#7b,#e8,#7a
	db #fe,#bf,#fc,#cf,#dc,#74,#f4,#ce
	db #ed,#a4,#c3,#fe,#43,#fd,#42,#03
	db #06,#01,#06,#fc,#1d,#84,#23,#00
	db #92,#f6,#00,#d5,#aa,#de,#0c,#59
	db #b3,#de,#30,#47,#4c,#8e,#ea,#54
	db #b3,#66,#ea,#6c,#e8,#53,#9f,#3f
	db #9e,#ea,#9c,#6a,#d5,#e9,#b4,#a1
	db #0c,#e8,#2a,#d0,#13,#50,#73,#9f
	db #e9,#74,#e9,#9c,#e8,#73,#be,#7b
	db #f6,#bc,#dc,#ef,#32,#b3,#66,#ea
	db #ec,#e8,#c7,#d5,#aa,#f6,#1c,#5f
	db #7c,#be,#dd,#28,#f5,#bc,#f4,#56
	db #e7,#27,#f5,#1c,#aa,#6a,#67,#d5
	db #de,#89,#f4,#eb,#8e,#1c,#ea,#b9
	db #dc,#88,#e8,#d0,#0f,#c3,#70,#a7
	db #c3,#fd,#0f,#fa,#0d,#ac,#18,#d1
	db #0d,#7f,#a4,#fe,#73,#eb,#9e,#e7
	db #72,#47,#0d,#fa,#5c,#58,#cc,#ee
	db #1c,#ff,#58,#86,#e8,#dc,#f3,#46
	db #ec,#a1,#f6,#26,#ed,#b3,#ef,#ad
	db #f4,#ee,#ff,#f3,#0c,#ee,#ad,#fb
	db #74,#e7,#55,#ca,#3e,#ef,#98,#b1
	db #85,#b3,#74,#ff,#dc,#45,#64,#e5
	db #ed,#e1,#53,#94,#dc,#c5,#64,#65
	db #ed,#61,#ec,#98,#ff,#66,#27,#dc
	db #46,#c4,#46,#a0,#22,#ed,#e2,#53
	db #95,#dc,#c6,#64,#66,#ff,#ed,#62
	db #53,#15,#db,#46,#64,#e6,#ed,#e3
	db #ef,#1a,#64,#a7,#dc,#c7,#fb,#64
	db #67,#ed,#63,#53,#16,#dc,#47,#64
	db #e7,#a7,#ee,#e4,#52,#95,#ff,#dc
	db #98,#ed,#04,#e3,#a5,#e1,#04,#dc
	db #17,#e8,#53,#f5,#83,#d6,#28,#ff
	db #82,#28,#ee,#54,#bd,#18,#95,#fb
	db #ee,#ae,#e7,#72,#6b,#91,#ed,#8c
	db #ff,#f5,#c9,#fd,#f8,#f6,#b3,#6a
	db #50,#ee,#2f,#fa,#a1,#d6,#29,#82
	db #29,#ff,#ee,#55,#bd,#19,#95,#fc
	db #ee,#af,#e7,#73,#6b,#92,#ee,#d5
	db #e1,#99,#ff,#f4,#06,#ef,#94,#ed
	db #ff,#ef,#ac,#d5,#99,#cb,#24,#fd
	db #ad,#f0,#91,#ff,#f3,#e1,#5f,#18
	db #ee,#1a,#00,#cc,#d3,#cc,#ee,#7d
	db #d1,#ca,#81,#3a,#fe,#e3,#49,#ca
	db #36,#52,#0c,#3f,#b9,#00,#7b,#00
	db #7b,#1e,#7b,#a7,#ff,#ee,#be,#52
	db #6f,#d0,#7e,#f3,#4e,#ef,#e5,#e7
	db #9c,#f4,#eb,#d6,#91,#fe,#ef,#69
	db #b1,#2c,#53,#1b,#dc,#4c,#64,#ec
	db #ed,#e8,#83,#9b,#a7,#ff,#ee,#79
	db #e2,#8a,#dc,#9c,#ed,#09,#e3,#a9
	db #e1,#09,#dc,#1c,#e8,#58,#ff,#f5
	db #88,#d6,#2d,#82,#2d,#ee,#59,#bd
	db #1d,#95,#00,#ee,#b3,#e7,#77,#ff
	db #6b,#96,#ee,#d9,#bd,#9d,#b3,#80
	db #fd,#87,#e4,#cf,#ee,#33,#e7,#f7
	db #ff,#89,#16,#e8,#1e,#fa,#4e,#ee
	db #5a,#bd,#1e,#95,#01,#ee,#b4,#e7
	db #78,#f8,#6b,#97,#ee,#da,#dc,#0e
	db #f4,#16,#8e,#2d,#00,#bf,#f5,#00
	db #01,#de,#0c,#f4,#00,#cf,#3a,#d0
	db #18,#b9,#6c,#b7,#23,#fc,#a0,#2b
	db #c5,#9c,#40,#67,#cf,#26,#cf,#4b
	db #dc,#8a,#04,#06,#f7,#fc,#cc,#fa
	db #0d,#ac,#18,#d1,#0d,#02,#fe,#73
	db #eb,#9e,#e7,#72,#ff,#47,#0d,#fa
	db #5c,#58,#cc,#ee,#1c,#58,#86,#e8
	db #dc,#f3,#46,#ec,#a1,#ff,#f6,#26
	db #ed,#b3,#ef,#ad,#f4,#ee,#f3,#0c
	db #ee,#ad,#fb,#74,#e7,#55,#ff,#ca
	db #3e,#ef,#98,#b1,#85,#b3,#74,#dc
	db #45,#64,#e5,#ed,#e1,#53,#94,#ff
	db #dc,#c5,#64,#65,#ed,#61,#ec,#98
	db #66,#27,#dc,#46,#c4,#46,#a0,#22
	db #ff,#ed,#e2,#53,#95,#dc,#c6,#64
	db #66,#ed,#62,#53,#15,#db,#46,#64
	db #e6,#ff,#ed,#e3,#ef,#1a,#64,#a7
	db #dc,#c7,#64,#67,#ed,#63,#53,#16
	db #dc,#47,#bf,#64,#e7,#06,#ee,#e4
	db #52,#95,#dc,#98,#ed,#04,#e3,#a5
	db #e1,#04,#ff,#dc,#17,#e8,#53,#f5
	db #83,#d6,#28,#82,#28,#ee,#54,#bd
	db #18,#95,#fb,#ff,#ee,#ae,#e7,#72
	db #6b,#91,#ed,#8c,#f5,#c9,#fd,#f8
	db #f6,#b3,#6a,#50,#ff,#ee,#2f,#fa
	db #a1,#d6,#29,#82,#29,#ee,#55,#bd
	db #19,#95,#fc,#ee,#af,#ff,#e7,#73
	db #6b,#92,#ee,#d5,#e1,#99,#f4,#06
	db #ef,#94,#ed,#ff,#ef,#ac,#ff,#d5
	db #99,#cb,#24,#fd,#ad,#f0,#91,#f3
	db #e1,#5f,#18,#ee,#1a,#00,#cc,#ff
	db #d3,#cc,#ee,#7d,#d1,#ca,#81,#3a
	db #e3,#49,#ca,#36,#52,#0c,#3f,#b9
	db #ef,#00,#7b,#00,#7b,#1e,#7b,#06
	db #ee,#be,#52,#6f,#d0,#7e,#f3,#4e
	db #ff,#ef,#e5,#e7,#9c,#f4,#eb,#d6
	db #91,#ef,#69,#b1,#2c,#53,#1b,#dc
	db #4c,#ef,#64,#ec,#ed,#e8,#83,#9b
	db #06,#ee,#79,#e2,#8a,#dc,#9c,#ed
	db #09,#ff,#e3,#a9,#e1,#09,#dc,#1c
	db #e8,#58,#f5,#88,#d6,#2d,#82,#2d
	db #ee,#59,#ff,#bd,#1d,#95,#00,#ee
	db #b3,#e7,#77,#6b,#96,#ee,#d9,#bd
	db #9d,#b3,#80,#ff,#fd,#87,#e4,#cf
	db #ee,#33,#e7,#f7,#89,#16,#e8,#1e
	db #fa,#4e,#ee,#5a,#ff,#bd,#1e,#95
	db #01,#ee,#b4,#e7,#78,#6b,#97,#ee
	db #da,#dc,#0e,#f4,#16,#80,#8e,#2d
	db #00,#f1,#00,#00,#00,#00,#00,#00
	db #65,#00,#05,#02,#0b,#e5,#9e,#1f
	db #00,#03,#05,#fc,#98,#f4,#bb,#47
	db #0d,#e2,#5c,#88,#a3,#ff,#e8,#86
	db #fa,#1c,#4c,#7a,#e8,#34,#ee,#dc
	db #f9,#f4,#fa,#1e,#ee,#47,#ff,#f9
	db #19,#f4,#19,#f5,#49,#e1,#06,#fa
	db #73,#f5,#68,#ee,#55,#e7,#61,#ff
	db #b9,#50,#f9,#d9,#7d,#3e,#dc,#45
	db #64,#e5,#ca,#e1,#76,#b7,#dc,#c5
	db #df,#64,#65,#dc,#61,#00,#ee,#86
	db #76,#37,#dc,#46,#e7,#16,#7d,#ff
	db #fe,#ca,#e2,#76,#b8,#dc,#c6,#64
	db #66,#ca,#62,#76,#38,#e8,#46,#0b
	db #ff,#f4,#5f,#64,#e6,#ca,#e3,#76
	db #b9,#dc,#c7,#64,#67,#ca,#63,#76
	db #39,#ff,#dc,#47,#64,#e7,#f9,#42
	db #ed,#20,#59,#9c,#dc,#98,#fa,#04
	db #e2,#aa,#ff,#f4,#3a,#ed,#28,#e8
	db #5f,#e8,#23,#e8,#53,#f5,#83,#d6
	db #28,#82,#28,#ff,#fa,#65,#f4,#5a
	db #bd,#18,#95,#fb,#e8,#f6,#d6,#a8
	db #82,#a8,#fa,#e5,#ff,#f3,#da,#fa
	db #f3,#e7,#ab,#71,#57,#e8,#77,#d6
	db #29,#82,#29,#fa,#66,#ff,#f4,#5b
	db #bd,#19,#95,#fc,#e8,#f7,#d6,#a9
	db #82,#a9,#fa,#e6,#f4,#db,#fe,#e1
	db #99,#f4,#06,#e9,#dc,#dc,#4b,#f4
	db #5e,#e2,#9f,#d0,#29,#00,#ff,#ef
	db #5a,#f9,#f8,#ed,#5f,#6b,#24,#ee
	db #1a,#00,#cc,#d3,#cc,#e9,#83,#ff
	db #d6,#b8,#fa,#9a,#ee,#ee,#99,#52
	db #ef,#6d,#be,#2a,#52,#0c,#3f,#b9
	db #ef,#00,#7b,#00,#7b,#24,#7b,#0b
	db #dd,#b8,#63,#7a,#ca,#78,#e2,#9c
	db #ff,#e2,#4e,#ee,#49,#e1,#9c,#ef
	db #e5,#ee,#5c,#e7,#68,#b9,#57,#76
	db #3e,#ff,#dc,#4c,#64,#ec,#ca,#e8
	db #9a,#be,#db,#23,#dc,#9c,#fa,#09
	db #e2,#ae,#ff,#f4,#3f,#ed,#2d,#e8
	db #64,#e8,#28,#e8,#58,#f5,#88,#d6
	db #2d,#82,#2d,#ff,#fa,#6a,#f4,#5f
	db #bd,#1d,#95,#00,#e8,#fb,#d6,#ad
	db #82,#ad,#fa,#ea,#ef,#f4,#df,#bd
	db #9d,#b3,#80,#00,#fa,#e6,#f3,#7c
	db #e8,#58,#f5,#28,#ff,#d6,#2d,#a0
	db #2d,#e8,#1e,#fa,#4e,#fa,#6b,#f4
	db #60,#bd,#1e,#95,#01,#ff,#e8,#fc
	db #d6,#ae,#82,#ae,#fa,#eb,#f4,#e0
	db #dc,#0e,#f4,#e6,#8e,#2d,#3f,#ab
	db #f6,#00,#3a,#f5,#0b,#38,#ef,#17
	db #3c,#fb,#29,#ee,#17,#bf,#e8,#1d
	db #39,#ef,#59,#e2,#2f,#dc,#65,#c4
	db #ac,#b8,#29,#fa,#0d,#ff,#f4,#36
	db #e2,#83,#d0,#31,#e8,#90,#dc,#79
	db #e2,#49,#5e,#8b,#db,#2c,#ff,#fa
	db #8e,#f4,#b7,#e1,#6f,#d3,#3a,#fa
	db #f2,#fa,#ee,#b0,#1b,#d0,#0c,#6f
	db #18,#fe,#9c,#e5,#57,#1c,#fd,#ba
	db #f2,#b8,#46,#0c,#fa,#5c,#ff,#58
	db #cc,#fa,#1c,#4c,#7a,#e8,#34,#f4
	db #46,#fa,#11,#fa,#fa,#f9,#0c,#ff
	db #f4,#dd,#fa,#1f,#f4,#f4,#ee,#ac
	db #f4,#dc,#fa,#49,#ee,#3d,#f4,#67
	db #ff,#ee,#55,#ee,#12,#d6,#49,#ee
	db #97,#e8,#b5,#7c,#3d,#dc,#45,#64
	db #e5,#ff,#ee,#f3,#52,#93,#dc,#c5
	db #64,#65,#ee,#73,#f4,#97,#fc,#cc
	db #fb,#b2,#ff,#f7,#b8,#6f,#30,#dc
	db #46,#e8,#16,#7c,#fe,#ee,#f4,#52
	db #94,#dc,#c6,#ff,#64,#66,#ee,#74
	db #52,#14,#e8,#46,#fc,#5d,#fa,#8b
	db #e5,#13,#7c,#fe,#ff,#ee,#f5,#ee
	db #19,#64,#a7,#dc,#c7,#64,#67,#ee
	db #75,#52,#15,#dc,#47,#ff,#64,#e7
	db #fc,#2a,#fa,#1c,#f7,#41,#52,#95
	db #dc,#98,#fa,#04,#e2,#aa,#ff,#f4
	db #3a,#ee,#28,#e8,#5e,#e8,#22,#e8
	db #52,#f4,#82,#d6,#28,#82,#28,#ff
	db #ee,#54,#be,#18,#94,#fa,#e8,#f6
	db #d6,#a8,#82,#a8,#ee,#d4,#fd,#f1
	db #ff,#fc,#f5,#fb,#ed,#fc,#e5,#f4
	db #fc,#6d,#53,#e8,#77,#d6,#29,#82
	db #29,#ff,#ee,#55,#be,#19,#94,#fb
	db #e8,#f7,#d6,#a9,#82,#a9,#ee,#d5
	db #e2,#99,#cf,#f4,#05,#f6,#ed,#3e
	db #3e,#fd,#fc,#f9,#fc,#fe,#2d,#fa
	db #17,#ff,#f6,#2f,#f8,#15,#fa,#52
	db #fa,#f9,#fa,#5e,#e2,#a5,#d6,#23
	db #fc,#7c,#ff,#f7,#5c,#f5,#5a,#f9
	db #7c,#f4,#e1,#6a,#17,#f6,#5c,#fe
	db #5a,#f6,#1a,#ff,#f8,#5a,#54,#cc
	db #ec,#d8,#94,#8c,#f4,#a6,#f6,#c3
	db #f2,#6e,#f4,#c2,#ff,#f4,#82,#fa
	db #ca,#fa,#9a,#f4,#76,#de,#4c,#e6
	db #80,#d0,#88,#ee,#6c,#ff,#be,#2a
	db #64,#0c,#fc,#55,#fa,#23,#f7,#60
	db #f5,#4b,#5d,#c5,#dc,#c9,#ff,#00
	db #8d,#00,#8d,#36,#8d,#fc,#04,#fa
	db #e4,#ee,#0f,#5b,#72,#ca,#78,#ff
	db #f4,#4e,#ee,#e4,#e8,#9c,#f4,#20
	db #d6,#90,#ee,#68,#ee,#5c,#ee,#1a
	db #ff,#d6,#50,#52,#1a,#dc,#4c,#64
	db #ec,#ee,#fa,#82,#9a,#fc,#c5,#f7
	db #d0,#ff,#dc,#84,#dc,#9c,#fa,#09
	db #e2,#ae,#f4,#3f,#ee,#2d,#e8,#63
	db #e8,#27,#ff,#e8,#57,#f4,#87,#d6
	db #2d,#82,#2d,#ee,#59,#be,#1d,#94
	db #ff,#e8,#fb,#ff,#d6,#ad,#82,#ad
	db #ee,#d9,#be,#9d,#be,#7f,#fc,#74
	db #f7,#7f,#fb,#5e,#ff,#fc,#7a,#eb
	db #e8,#e8,#1b,#d6,#2d,#ac,#2d,#e2
	db #e2,#f4,#18,#ee,#5a,#ff,#be,#1e
	db #94,#00,#e8,#fc,#d6,#ae,#82,#ae
	db #ee,#da,#dc,#0e,#fa,#16,#aa,#b3
	db #27,#3d,#fc,#73,#3d,#f9,#7a,#3f
	db #e3,#82,#00,#aa,#f6,#00,#0e,#fd
	db #0b,#0d,#fd,#0f,#0c,#fe,#13,#0b
	db #a8,#fe,#16,#0a,#fe,#19,#09,#fe
	db #1c,#08,#08,#07,#40,#07,#d0,#0b
	db #06,#05,#04,#03,#02,#01,#ff,#f5
	db #00,#e1,#04,#f4,#53,#f4,#6b,#dc
	db #23,#d0,#8f,#7c,#2f,#b8,#43,#ff
	db #d0,#97,#68,#8b,#cb,#fe,#f4,#b7
	db #d0,#33,#f4,#dc,#f0,#f4,#00,#0f
	db #fb,#00,#0f,#00,#0f,#00,#0f,#00
	db #0f,#03,#0f,#0f,#fd,#0d,#ec,#f9
	db #7f,#0d,#f5,#25,#e8,#0d,#f4,#1f
	db #f4,#31,#e2,#31,#e2,#7e,#f4,#25
	db #bd,#f4,#a8,#0c,#e9,#b5,#e7,#61
	db #dc,#25,#ee,#e6,#0b,#fb,#1c,#ff
	db #d6,#f2,#ee,#5b,#e8,#c1,#db,#c1
	db #dd,#9a,#f4,#3a,#d0,#0a,#d0,#9a
	db #fb,#e8,#e2,#c4,#d6,#e2,#be,#f4
	db #3c,#fa,#a7,#0c,#f5,#ae,#ca,#a2
	db #ff,#e2,#48,#b2,#4e,#e2,#f0,#c4
	db #1a,#f4,#de,#e8,#c6,#be,#1a,#ee
	db #1b,#f7,#e8,#c2,#b8,#2e,#e7,#f1
	db #fa,#95,#0b,#fb,#ad,#d0,#ce,#dc
	db #e2,#ff,#f1,#07,#f7,#15,#f4,#76
	db #f4,#2a,#fa,#ad,#ee,#3c,#f4,#b3
	db #b8,#9b,#fe,#f4,#5b,#f4,#73,#f4
	db #2b,#c4,#af,#e8,#4f,#fe,#06,#fe
	db #66,#0d,#95,#fe,#36,#0a,#09,#fe
	db #22,#08,#fe,#25,#07,#fe,#28,#7f
	db #06,#c4,#1b,#fa,#63,#fd,#55,#fd
	db #56,#fa,#57,#d0,#3f,#dc,#a5,#eb
	db #ca,#6f,#00,#45,#c2,#a5,#06,#fb
	db #32,#0c,#fa,#44,#fb,#f0,#f5,#fe
	db #54,#fd,#39,#56,#99,#f4,#f2,#0f
	db #fd,#10,#0e,#e1,#14,#fe,#f4,#10
	db #fd,#4e,#f7,#42,#dc,#34,#dc,#6f
	db #a0,#34,#dc,#f3,#0d,#ef,#e9,#18
	db #e8,#c4,#fa,#30,#0b,#fb,#4e,#e2
	db #ac,#ee,#4e,#d0,#88,#ff,#d0,#c4
	db #e8,#24,#f4,#e4,#d0,#84,#e8,#20
	db #d0,#4f,#f4,#fc,#ee,#e4,#7f,#0b
	db #fb,#9e,#dc,#44,#cf,#8c,#f4,#e1
	db #f1,#f9,#df,#2f,#dc,#11,#f7,#b8
	db #41,#e8,#a0,#d0,#89,#e8,#e8,#0d
	db #e9,#01,#f4,#b9,#dc,#b9,#ff,#ac
	db #31,#e8,#25,#e8,#91,#fa,#cc,#fa
	db #13,#ac,#a9,#dc,#15,#ac,#50,#f6
	db #fa,#03,#ee,#aa,#ee,#f1,#fa,#ce
	db #0b,#f5,#d5,#fe,#48,#0d,#f6,#fe
	db #e2,#fe,#02,#fe,#d4,#fe,#e8,#0a
	db #f7,#e4,#fe,#f4,#09,#ff,#e2,#e1
	db #fd,#a3,#f7,#02,#f9,#17,#7d,#24
	db #fc,#1c,#f2,#a5,#f8,#b9,#fd,#77
	db #24,#00,#4a,#6d,#4a,#fe,#de,#f0
	db #e2,#e3,#c5,#0f,#fd,#12,#dd,#fe
	db #0c,#ee,#17,#0d,#f5,#2a,#f4,#12
	db #fa,#36,#0c,#fb,#48,#ff,#ee,#42
	db #f4,#3c,#ee,#60,#ee,#54,#ee,#7e
	db #ee,#2a,#ee,#90,#f4,#c5,#df,#ee
	db #84,#f4,#b4,#0b,#fb,#f0,#e2,#d2
	db #e2,#fc,#dc,#31,#ee,#a2,#ff,#e7
	db #bf,#f4,#20,#e2,#20,#ee,#56,#e2
	db #8d,#f4,#c3,#e8,#db,#e8,#08,#f7
	db #d0,#05,#e8,#cf,#fa,#35,#f4,#35
	db #0b,#fb,#71,#e2,#53,#e2,#7d,#9f
	db #d8,#b2,#0d,#0d,#f4,#a1,#e8,#dd
	db #e2,#41,#f2,#cf,#f6,#2c,#ff,#f4
	db #13,#dc,#e3,#e8,#5b,#e8,#89,#f4
	db #85,#ee,#2b,#d6,#f5,#fa,#b5,#bf
	db #f4,#b5,#0b,#fb,#f1,#e2,#d3,#e2
	db #fd,#dc,#32,#ee,#a3,#e8,#c1,#ff
	db #f4,#21,#ca,#21,#f4,#1b,#f4,#ce
	db #f4,#57,#e8,#57,#e7,#1b,#f4,#0c
	db #bf,#ee,#ff,#0b,#fb,#36,#e2,#63
	db #f4,#1e,#e2,#54,#cc,#83,#ec,#df
	db #f5,#f1,#cc,#f7,#da,#fa,#36,#ee
	db #e9,#0a,#e9,#fc,#09,#f5,#14,#bd
	db #fe,#7b,#0d,#fe,#21,#fe,#e3,#fe
	db #13,#fe,#27,#08,#fe,#2a,#5f,#07
	db #fe,#2d,#06,#c4,#20,#fa,#68,#fd
	db #5a,#fd,#5b,#fa,#5c,#fb,#d0,#44
	db #dc,#aa,#ca,#74,#00,#4a,#32,#aa
	db #0c,#fb,#c7,#fe,#dd,#d7,#fc,#ce
	db #cf,#71,#0f,#fd,#15,#0e,#e1,#19
	db #f4,#15,#fe,#d7,#fb,#f6,#46,#dc
	db #39,#dc,#74,#a0,#39,#dc,#f8,#0d
	db #e9,#1d,#e8,#c9,#bf,#fa,#35,#0b
	db #fb,#53,#e2,#b1,#ee,#53,#d0,#8d
	db #d0,#c9,#e8,#29,#fd,#f4,#e9,#d0
	db #89,#e8,#25,#d0,#54,#f4,#01,#ee
	db #e9,#0b,#fb,#a3,#ff,#dc,#49,#d0
	db #91,#f4,#e5,#e8,#fd,#e8,#3d,#dc
	db #15,#dc,#45,#fc,#68,#fb,#f7,#f4
	db #e8,#5d,#e8,#a5,#d0,#8e,#e8,#ed
	db #0d,#e9,#06,#f3,#75,#ff,#dd,#bf
	db #ac,#36,#e8,#2a,#e8,#96,#fa,#d1
	db #fa,#18,#ac,#ae,#dc,#1a,#fb,#ac
	db #55,#fa,#08,#ee,#af,#ee,#f6,#fa
	db #d3,#0b,#f5,#da,#fe,#4d,#7b,#0d
	db #fe,#e7,#fe,#07,#fe,#d9,#fe,#ed
	db #0a,#f7,#e9,#fe,#f9,#76,#09,#d0
	db #e6,#f7,#25,#fe,#35,#08,#f7,#31
	db #fe,#41,#07,#db,#f7,#3d,#fe,#4d
	db #06,#f7,#49,#fe,#59,#05,#fa,#58
	db #fe,#62,#5a,#04,#fe,#65,#03,#fd
	db #67,#fe,#6b,#02,#fe,#6e,#01,#b8
	db #fe,#71,#00,#fd,#73,#fe,#77,#db
	db #7a,#00,#aa,#ea,#00,#0e,#fd,#17
	db #0d,#fd,#1b,#0c,#fe,#1f,#0b,#a8
	db #fe,#22,#0a,#fe,#25,#09,#fe,#28
	db #08,#08,#07,#7f,#07,#f4,#17,#e8
	db #2f,#e8,#23,#70,#53,#d0,#3b,#b8
	db #fb,#d0,#2b,#ff,#dc,#43,#c4,#a3
	db #88,#a3,#fc,#3e,#fc,#73,#d7,#22
	db #b8,#a0,#e8,#88,#6d,#0f,#fe,#03
	db #fe,#0d,#0c,#f4,#0c,#fe,#f5,#09
	db #fe,#1f,#57,#08,#fe,#22,#07,#fe
	db #25,#06,#c4,#18,#e8,#60,#c4,#42
	db #ff,#dc,#b4,#00,#1e,#bc,#1e,#1c
	db #c2,#fa,#f4,#e8,#ac,#fe,#23,#fc
	db #fc,#5f,#06,#fb,#19,#0c,#f9,#1f
	db #fd,#37,#fe,#29,#9a,#7c,#c4,#9d
	db #fa,#d6,#e2,#00,#49,#02,#a9,#fa
	db #f5,#f4,#b3,#0e,#fd,#19,#0d,#ff
	db #fe,#15,#ef,#1f,#dc,#0d,#f6,#54
	db #fe,#41,#e8,#a7,#a0,#19,#fc,#9c
	db #ff,#fe,#bf,#45,#1e,#00,#3a,#00
	db #3a,#00,#3a,#fc,#5d,#fe,#80,#45
	db #df,#ff,#00,#fb,#00,#fb,#18,#fb
	db #fd,#1b,#fd,#1c,#fe,#1e,#f2,#45
	db #55,#98,#ff,#dc,#a4,#f6,#16,#e0
	db #d2,#f4,#28,#00,#fe,#00,#fe,#66
	db #fe,#f6,#97,#ff,#fe,#e4,#fd,#f4
	db #fb,#f5,#fd,#e5,#56,#4e,#00,#59
	db #00,#59,#ea,#7d,#fa,#dc,#6f,#f0
	db #f2,#f2,#a3,#ee,#f3,#fa,#1b,#0c
	db #fd,#29,#00,#7f,#00,#ee,#23,#de
	db #e1,#e2,#3f,#b8,#21,#9f,#68,#b6
	db #ca,#ea,#4a,#f0,#56,#ca,#40,#d4
	db #ea,#ca,#f0,#aa,#0d,#0c,#0b,#0a
	db #ff,#f2,#06,#f8,#1a,#f6,#28,#ee
	db #1a,#e8,#26,#00,#08,#f2,#2b,#fc
	db #5e,#ff,#51,#b9,#00,#c9,#00,#c9
	db #0c,#c9,#fe,#10,#fa,#19,#fc,#01
	db #4b,#68,#bf,#ca,#7e,#0f,#fe,#0b
	db #fd,#03,#fa,#14,#ec,#e4,#d8,#10
	db #f5,#ee,#7f,#0d,#f4,#38,#00,#14
	db #00,#14,#9c,#14,#fd,#c2,#fd,#bd
	db #fe,#bf,#ff,#fa,#da,#b9,#85,#f6
	db #1b,#e0,#76,#f4,#2d,#00,#03,#00
	db #03,#00,#03,#ff,#e2,#03,#fc,#5c
	db #fe,#67,#f8,#4a,#f8,#7d,#55,#d6
	db #00,#e2,#74,#e2,#fa,#ee,#8c,#e2
	db #bc,#d8,#9e,#f6,#00,#f6,#2f,#0c
	db #f5,#3a,#0b,#aa,#f5,#46,#0a,#f5
	db #52,#09,#f5,#5e,#08,#f5,#6a,#06
	db #a0,#f5,#76,#00,#e3,#82,#00,#aa
	db #f6,#00,#0e,#fd,#0b,#0d,#fd,#0f
	db #0c,#fe,#13,#0b,#a8,#fe,#16,#0a
	db #fe,#19,#09,#fe,#1c,#08,#08,#07
	db #01,#07,#06,#05,#04,#03,#02,#01
	db #be,#05,#ff,#88,#53,#b8,#23,#f4
	db #07,#f4,#36,#b8,#13,#c4,#73,#c4
	db #ef,#88,#a3,#f8,#fc,#62,#fc,#67
	db #cb,#22,#d0,#4b,#dc,#3f,#0f,#0f
	db #0d,#7e,#0a,#fe,#f2,#fa,#0c,#ac
	db #17,#d0,#0c,#fd,#f5,#e5,#57,#0d
	db #7f,#09,#fe,#eb,#f2,#b8,#46,#0c
	db #fa,#5c,#58,#cc,#fa,#1c,#4c,#7a
	db #ff,#e8,#34,#f4,#46,#fa,#11,#fa
	db #fa,#fe,#0b,#fb,#0e,#f4,#dd,#fa
	db #1f,#7f,#09,#f5,#f5,#ee,#ac,#f4
	db #dc,#fa,#49,#ee,#3d,#f4,#67,#ee
	db #55,#ff,#f4,#12,#d0,#43,#ee,#97
	db #e8,#b5,#7c,#3d,#dc,#45,#64,#e5
	db #ee,#f3,#ff,#52,#93,#dc,#c5,#64
	db #65,#ee,#73,#f9,#d2,#fb,#c8,#fe
	db #cc,#fb,#cf,#ff,#f5,#b6,#6f,#30
	db #dc,#46,#e8,#16,#7c,#fe,#ee,#f4
	db #52,#94,#dc,#c6,#fd,#64,#66,#ee
	db #74,#52,#14,#f4,#76,#fe,#69,#f6
	db #6c,#00,#fb,#5f,#ff,#5d,#df,#ee
	db #f5,#ee,#19,#64,#a7,#dc,#c7,#64
	db #67,#ee,#75,#52,#15,#ff,#dc,#47
	db #64,#e7,#fe,#2a,#fb,#2d,#fb,#20
	db #f9,#43,#52,#95,#dc,#98,#ff,#fa
	db #04,#e2,#aa,#f4,#3a,#ee,#28,#e8
	db #5e,#e8,#22,#e8,#52,#f4,#82,#ff
	db #d6,#28,#82,#28,#ee,#54,#be,#18
	db #94,#fa,#e8,#f6,#d6,#a8,#82,#a8
	db #ff,#ee,#d4,#fd,#f1,#fc,#f5,#fb
	db #ed,#fe,#e5,#fc,#e8,#fd,#fe,#d2
	db #ac,#ff,#94,#7a,#e8,#77,#d6,#29
	db #82,#29,#ee,#55,#be,#19,#94,#fb
	db #e8,#f7,#ff,#d6,#a9,#82,#a9,#ee
	db #d5,#e2,#99,#f4,#05,#f4,#ed,#fa
	db #2e,#f4,#0b,#ff,#e8,#2f,#f4,#29
	db #e2,#a5,#d6,#23,#fe,#9a,#f6,#9d
	db #fd,#88,#f7,#b1,#ff,#f9,#9a,#f4
	db #e1,#6a,#17,#e2,#0e,#00,#cc,#d4
	db #cc,#f4,#a6,#ee,#c3,#fe,#dc,#be
	db #fa,#9a,#f4,#ac,#94,#4c,#ee,#6c
	db #be,#2a,#64,#0c,#00,#ff,#fb,#57
	db #fe,#5b,#f5,#5e,#52,#ba,#dc,#c9
	db #00,#8d,#00,#8d,#36,#8d,#7f,#00
	db #fb,#06,#fe,#fe,#f6,#d1,#f8,#17
	db #59,#70,#ca,#78,#f4,#4e,#ff,#ee
	db #e4,#e8,#9c,#f4,#20,#d6,#90,#ee
	db #68,#ee,#5c,#ee,#1a,#d6,#50,#ff
	db #52,#1a,#dc,#4c,#64,#ec,#ee,#fa
	db #82,#9a,#fe,#c5,#f6,#92,#db,#83
	db #ff,#dc,#9c,#fa,#09,#e2,#ae,#f4
	db #3f,#ee,#2d,#e8,#63,#e8,#27,#e8
	db #57,#ff,#f4,#87,#d6,#2d,#82,#2d
	db #ee,#59,#be,#1d,#94,#ff,#e8,#fb
	db #d6,#ad,#ff,#82,#ad,#ee,#d9,#be
	db #9d,#be,#7f,#fe,#74,#fc,#77,#f9
	db #81,#fb,#5e,#7f,#00,#f9,#7c,#e3
	db #52,#f4,#27,#d6,#2d,#ac,#2d,#e2
	db #e2,#f4,#18,#ff,#ee,#5a,#be,#1e
	db #94,#00,#e8,#fc,#d6,#ae,#82,#ae
	db #ee,#da,#dc,#0e,#c0,#fa,#16,#88
	db #27,#00,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#e0
	db #00,#00,#00,#00,#61,#00,#00,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#e0,#00,#00,#00
	db #00,#61,#00,#ff,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#e0,#00,#00,#00,#00,#61,#00

.l0000
	db #00
	db #00
	db #00
.l0003
	db #00
.l0004
	db #00
;
; #009a
; call #5100	; init
;
.music_info
	db "Phortem - Theme 1 (2013)(Condense)(DMA-SC)",0
	db "AYC",0

	read "music_end.asm"
