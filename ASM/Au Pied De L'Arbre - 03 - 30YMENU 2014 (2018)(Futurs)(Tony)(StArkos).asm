; Music of Au Pied De L'Arbre - 03 - 30YMENU 2014 (2018)(Futurs)(Tony)(StArkos)
; Ripped by Megachur the 28/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AUPIDL03.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

;
.init_music
;
	ret
	adc l
	adc b
	jp l800d
	jp l8868
.l800c equ $ + 3
.l800b equ $ + 2
	db #00,#80,#00,#00
;
.play_music
.l800d
;
	xor a
	ld (l800b),a
	ld (l8846),a
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
.l801e equ $ + 1
	ld a,#09
.l8020 equ $ + 1
	cp #09
	jr z,l802a
	inc a
	ld (l801e),a
	jp l82b9
.l802a
	xor a
	ld (l801e),a
.l802e
	scf
	jp nc,l8110
	ld (l8138),a
	ld (l81a3),a
	ld (l820e),a
	ld a,#b7
	ld (l802e),a
.l8041 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l8077
.l8047 equ $ + 1
	ld hl,l89c2
	ld a,(hl)
	inc hl
	srl a
	jr c,l8074
	ld b,a
	and #1f
	bit 4,a
	jr z,l8058
	or #e0
.l8058
	ld (l8145),a
	rl b
	rl b
	jr nc,l8066
	ld a,(hl)
	ld (l81b0),a
	inc hl
.l8066
	rl b
	jr nc,l806f
	ld a,(hl)
	ld (l821b),a
	inc hl
.l806f
	ld (l8047),hl
	jr l807a
.l8074
	ld (l8047),hl
.l8077
	ld (l8041),a
.l807b equ $ + 1
.l807a
	ld a,#00
	sub #01
	jr c,l8087
	ld (l807b),a
.l8084 equ $ + 1
	ld a,#00
	jr l80a2
.l8088 equ $ + 1
.l8087
	ld hl,l89c6
	ld a,(hl)
	inc hl
	srl a
	jr c,l8095
	ld (l8088),hl
	jr l80a2
.l8095
	ld (l8084),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l8088),hl
	ld (l807b),a
	ld a,b
.l80a2
	ld (l8279),a
.l80a6 equ $ + 1
	ld hl,l89d3
	ld de,l813e
	ldi
	ldi
	ld de,l81a9
	ldi
	ldi
	ld de,l8214
	ldi
	ldi
	ld (l80a6),hl
.l80c1 equ $ + 1
	ld a,#01
	or a
	jr nz,l80d3
.l80c6 equ $ + 1
	ld a,#00
	sub #01
	jr c,l80e1
	ld (l80c6),a
.l80cf equ $ + 1
	ld hl,#0000
	jr l8119
.l80d4 equ $ + 1
.l80d3
	ld a,#00
	sub #01
	jr c,l80e1
	ld (l80d4),a
	ld hl,(l80e2)
	jr l8106
.l80e2 equ $ + 1
.l80e1
	ld hl,l8a57
	ld a,(hl)
	inc hl
	srl a
	jr c,l80fe
	ld (l80c6),a
	xor a
	ld (l80c1),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l80e2),hl
	ex de,hl
	ld (l80cf),hl
	jr l8119
.l80fe
	ld (l80d4),a
	ld a,#01
	ld (l80c1),a
.l8106
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l80e2),hl
	ex de,hl
	jr l8119
.l8111 equ $ + 1
.l8110
	ld a,#00
	sub #01
	jr nc,l8134
.l8117 equ $ + 1
	ld hl,#0000
.l8119
	ld a,(hl)
	inc hl
	srl a
	jr c,l8131
	srl a
	jr c,l8128
	ld (l8020),a
	jr l8130
.l8128
	ld (l800b),a
.l812c equ $ + 1
	ld a,#03
	ld (l800c),a
.l8130
	xor a
.l8131
	ld (l8117),hl
.l8134
	ld (l8111),a
.l8138 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l819f
.l813e equ $ + 1
	ld hl,#0000
.l8141 equ $ + 1
	ld bc,#0100
.l8145 equ $ + 2
.l8144 equ $ + 1
	ld de,#0000
.l8148 equ $ + 2
	ld lx,#00
	call l83b8
	ld a,lx
	ld (l8148),a
	ld (l82c3),hl
	exx
	ld (l813e),hl
	ld a,c
	ld (l8141),a
	ld (l82bd),a
	xor a
	or hy
	jr nz,l819d
	ld (l82e0),a
	ld d,a
	ld a,e
	ld (l8144),a
	ld l,d
	ld h,l
	ld (l82c0),hl
.l8172 equ $ + 1
	ld hl,l8a78
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l82f1
	ldi
	ldi
	ld de,l82e9
	ldi
	ldi
	ld de,l82e2
	ldi
	ld de,l82f3
	ldi
	ld a,(hl)
	inc hl
	ld (l82d2),hl
	ld hl,l8846
	or (hl)
	ld (hl),a
.l819d
	ld a,ly
.l819f
	ld (l8138),a
.l81a3 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l820a
.l81a9 equ $ + 1
	ld hl,#0000
.l81ac equ $ + 1
	ld bc,#0200
.l81b0 equ $ + 2
.l81af equ $ + 1
	ld de,#0000
.l81b3 equ $ + 2
	ld lx,#00
	call l83b8
	ld a,lx
	ld (l81b3),a
	ld (l8315),hl
	exx
	ld (l81a9),hl
	ld a,c
	ld (l81ac),a
	ld (l830f),a
	xor a
	or hy
	jr nz,l8208
	ld (l8332),a
	ld d,a
	ld a,e
	ld (l81af),a
	ld l,d
	ld h,l
	ld (l8312),hl
.l81dd equ $ + 1
	ld hl,l8a78
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l8343
	ldi
	ldi
	ld de,l833b
	ldi
	ldi
	ld de,l8334
	ldi
	ld de,l8345
	ldi
	ld a,(hl)
	inc hl
	ld (l8324),hl
	ld hl,l8846
	or (hl)
	ld (hl),a
.l8208
	ld a,ly
.l820a
	ld (l81a3),a
.l820e equ $ + 1
	ld a,#00
	sub #01
	jr nc,l8275
.l8214 equ $ + 1
	ld hl,#0000
.l8217 equ $ + 1
	ld bc,#0300
.l821b equ $ + 2
.l821a equ $ + 1
	ld de,#0000
.l821e equ $ + 2
	ld lx,#00
	call l83b8
	ld a,lx
	ld (l821e),a
	ld (l8367),hl
	exx
	ld (l8214),hl
	ld a,c
	ld (l8217),a
	ld (l8361),a
	xor a
	or hy
	jr nz,l8273
	ld (l8384),a
	ld d,a
	ld a,e
	ld (l821a),a
	ld l,d
	ld h,l
	ld (l8364),hl
.l8248 equ $ + 1
	ld hl,l8a78
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
	ld hl,l8846
	or (hl)
	ld (hl),a
.l8273
	ld a,ly
.l8275
	ld (l820e),a
.l8279 equ $ + 1
	ld a,#00
	sub #01
	jr c,l8283
	ld (l8279),a
	jr l82b9
.l8283
	ld a,#37
	ld (l802e),a
	ld hl,(l80a6)
.l828c equ $ + 1
	ld de,l8a57
	xor a
	sbc hl,de
	jr nz,l82b9
	ld (l8041),a		; reset music
	ld (l807b),a
	ld (l8111),a
.l829d equ $ + 1
	ld hl,l89c2
	ld (l8047),hl
.l82a3 equ $ + 1
	ld hl,l89c6
	ld (l8088),hl
.l82a9 equ $ + 1
	ld hl,l89d3
	ld (l80a6),hl
.l82af equ $ + 1
	ld hl,l8a57
	ld (l80e2),hl
.l82b5 equ $ + 1
	ld a,#01
	ld (l80c1),a
.l82b9
	ld hl,l8846
.l82bd equ $ + 1
	ld d,#00
	exx
.l82c0 equ $ + 1
	ld hl,#0000
.l82c3 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l82c0),hl
	ld (l84f3),hl
	ld a,(l8148)
	ld lx,a
.l82d2 equ $ + 1
	ld hl,l8a9d
	ld iy,l86e1
	ld a,(l82e0)
	call l844d
	ex de,hl
.l82e0 equ $ + 1
	ld a,#00
.l82e2 equ $ + 1
	cp #ff
	jr z,l82e8
	inc a
	jr l8305
.l82e9 equ $ + 1
.l82e8
	ld hl,l8aa0
	xor a
	sbc hl,de
	jr nz,l8301
.l82f1 equ $ + 1
	ld de,l8a9d
.l82f3
	or a
	jr c,l8301
.l82f7 equ $ + 1
	ld hl,l8aa0
	ld (l82e9),hl
	dec a
	ld (l82e2),a
	inc a
.l8301
	ld (l82d2),de
.l8305
	ld (l82e0),a
	ld a,hx
	ld (l83b4),a
	exx
.l830f equ $ + 1
	ld d,#00
	exx
.l8312 equ $ + 1
	ld hl,#0000
.l8315 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8312),hl
	ld (l84f3),hl
	ld a,(l81b3)
	ld lx,a
.l8324 equ $ + 1
	ld hl,l8a9d
	ld iy,l8732
	ld a,(l8332)
	call l844d
	ex de,hl
.l8332 equ $ + 1
	ld a,#00
.l8334 equ $ + 1
	cp #ff
	jr z,l833a
	inc a
	jr l8357
.l833b equ $ + 1
.l833a
	ld hl,l8aa0
	xor a
	sbc hl,de
	jr nz,l8353
.l8343 equ $ + 1
	ld de,l8a9d
.l8345
	or a
	jr c,l8353
.l8349 equ $ + 1
	ld hl,l8aa0
	ld (l833b),hl
	dec a
	ld (l8334),a
	inc a
.l8353
	ld (l8324),de
.l8357
	ld (l8332),a
	ld a,hx
	ld (l83b1),a
	exx
.l8361 equ $ + 1
	ld d,#00
	exx
.l8364 equ $ + 1
	ld hl,#0000
.l8367 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8364),hl
	ld (l84f3),hl
	ld a,(l821e)
	ld lx,a
.l8376 equ $ + 1
	ld hl,l8a9d
	ld iy,l8783
	ld a,(l8384)
	call l844d
	ex de,hl
.l8384 equ $ + 1
	ld a,#00
.l8386 equ $ + 1
	cp #ff
	jr z,l838c
	inc a
	jr l83a9
.l838d equ $ + 1
.l838c
	ld hl,l8aa0
	xor a
	sbc hl,de
	jr nz,l83a5
.l8395 equ $ + 1
	ld de,l8a9d
.l8397
	or a
	jr c,l83a5
.l839b equ $ + 1
	ld hl,l8aa0
	ld (l838d),hl
	dec a
	ld (l8386),a
	inc a
.l83a5
	ld (l8376),de
.l83a9
	ld (l8384),a
	ld a,hx
	sla a
.l83b1 equ $ + 1
	or #00
	rla
.l83b4 equ $ + 1
	or #00
	jp l86d6
.l83b8
	ld a,(hl)
	inc hl
	srl a
	jr c,l83f1
	cp #60
	jr nc,l83f9
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l83d1
	and #0f
	ld c,a
.l83d1
	rl b
	jr nc,l83d7
	ld e,(hl)
	inc hl
.l83d7
	rl b
	jr nc,l83e9
.l83db
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l83e5
	dec h
.l83e5
	ld ly,#00
	ret
.l83e9
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l83f1
	ld hy,#00
	add d
	ld lx,a
	jr l83e9
.l83f9
	ld hy,#01
	sub #60
	jr z,l841a
	dec a
	jr z,l8431
	dec a
	jr z,l8423
	dec a
	jr z,l83db
	dec a
	jr z,l842d
	dec a
	jr z,l8442
	dec a
	jr z,l8439
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l841a
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l8423
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l842d
	ld c,(hl)
	inc hl
	jr l83db
.l8431
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l8439
	ld a,(hl)
	inc hl
	ld (l800b),a
	ld a,b
	ld (l800c),a
.l8442
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l844d
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l8503
	bit 4,e
	jr z,l84b5
	ld a,(hl)
	bit 6,a
	jr z,l8482
	ld d,#08
	inc hl
	and #1f
	jr z,l8469
	ld (l87d4),a
	res 3,d
.l8469
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l8472
	xor a
.l8472
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l8482
	ld (l87d4),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l849e
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l8497
	xor a
.l8497
	ld (iy+#36),a
	ld hx,d
	jr l84c8
.l849e
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l84a7
	xor a
.l84a7
	ld (iy+#36),a
.l84aa
	ld hx,d
	ret
.l84ad
	ld (iy+#36),#00
	ld d,#09
	jr l84aa
.l84b5
	ld d,#08
	ld a,e
	and #0f
	jr z,l84ad
	exx
	sub d
	exx
	jr nc,l84c2
	xor a
.l84c2
	ld (iy+#36),a
	ld hx,#08
.l84c8
	bit 5,e
	jr z,l84d0
	ld a,(hl)
	inc hl
	jr l84d1
.l84d0
	xor a
.l84d1
	bit 6,e
	jr z,l84db
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l84de
.l84db
	ld de,#0000
.l84de
	add lx
	cp #60
	jr c,l84e6
	ld a,#5f
.l84e6
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l8616
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l84f3 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l8503
	or a
	jr nz,l850d
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l850d
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
	ld (l883f),a
	bit 3,e
	jr z,l852f
	ld a,(hl)
	inc hl
	ld (l87d4),a
	res 3,d
	jr l852f
.l852f
	ld hx,d
	xor a
	bit 7,b
	jr z,l8541
	bit 6,b
	jr z,l853c
	ld a,(hl)
	inc hl
.l853c
	ld (l85f0),a
	ld a,#01
.l8541
	ld (l8589),a
	ld a,b
	rra
	and #0e
	ld (l859a),a
	bit 4,e
	jp nz,l85fb
	bit 1,e
	jr z,l8558
	ld a,(hl)
	inc hl
	jr l8559
.l8558
	xor a
.l8559
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l8566
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l8569
.l8566
	ld de,#0000
.l8569
	add lx
	cp #60
	jr c,l8571
	ld a,#5f
.l8571
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l8616
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l84f3)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l8589 equ $ + 1
	ld a,#00
	or a
	jr nz,l8599
	ex af,af'
	bit 5,a
	jr nz,l8604
.l8592
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l859a equ $ + 1
.l8599
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l85a4),a
	ld a,c
.l85a4 equ $ + 1
	jr l85a5
.l85a5
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
	jr nc,l85be
	inc bc
.l85be
	ld a,c
	ld (l8809),a
	ld a,b
	ld (l8824),a
	ld a,(l8589)
	or a
	jr z,l85f9
	ld a,(l859a)
	ld e,a
	srl a
	add e
	ld (l85d8),a
	ld a,b
.l85d8 equ $ + 1
	jr l85d9
.l85d9
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
.l85f0 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l85f9
	pop hl
	ret
.l85fb
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l8592
.l8604
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l8809),a
	inc hl
	ld a,(hl)
	ld (l8824),a
	inc hl
	ret
.l8616
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
.l86d6
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l86e1 equ $ + 1
	ld a,#00
.l86e3 equ $ + 1
	cp #ff
	jr z,l86fb
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
	ld (l86e3),a
	exx
.l86fb
	ld a,#00
.l86fe equ $ + 1
	cp #ff
	jr z,l8716
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
	ld (l86fe),a
	exx
.l8717 equ $ + 1
.l8716
	ld a,#00
.l8719 equ $ + 1
	cp #ff
	jr z,l8731
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
	ld (l8719),a
	exx
.l8732 equ $ + 1
.l8731
	ld a,#00
.l8734 equ $ + 1
	cp #ff
	jr z,l874c
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
	ld (l8734),a
	exx
.l874c
	ld a,#00
.l874f equ $ + 1
	cp #ff
	jr z,l8767
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
	ld (l874f),a
	exx
.l8768 equ $ + 1
.l8767
	ld a,#00
.l876a equ $ + 1
	cp #ff
	jr z,l8782
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
	ld (l876a),a
	exx
.l8783 equ $ + 1
.l8782
	ld a,#00
.l8785 equ $ + 1
	cp #ff
	jr z,l879d
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
	ld (l8785),a
	exx
.l879d
	ld a,#00
.l87a0 equ $ + 1
	cp #ff
	jr z,l87b8
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
	ld (l87a0),a
	exx
.l87b9 equ $ + 1
.l87b8
	ld a,#00
.l87bb equ $ + 1
	cp #ff
	jr z,l87d3
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
	ld (l87bb),a
	exx
.l87d4 equ $ + 1
.l87d3
	ld a,#00
.l87d6 equ $ + 1
	cp #ff
	jr z,l87ee
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
	ld (l87d6),a
	exx
.l87ee
	ld a,h
.l87f0 equ $ + 1
	cp #ff
	jr z,l8808
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
	ld (l87f0),a
	exx
.l8809 equ $ + 1
.l8808
	ld a,#00
.l880b equ $ + 1
	cp #ff
	jr z,l8823
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
	ld (l880b),a
	exx
.l8824 equ $ + 1
.l8823
	ld a,#00
.l8826 equ $ + 1
	cp #ff
	jr z,l883e
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
	ld (l8826),a
	exx
.l883f equ $ + 1
.l883e
	ld a,#00
.l8841 equ $ + 1
	cp #ff
	jr nz,l884b
	ld h,a
.l8846 equ $ + 1
	ld a,#00
	or a
	jr z,l885f
	ld a,h
.l884b
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
	ld (l8841),a
.l885f
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
;
.stop_music
.l8868
;
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l8717),a
	ld (l8768),a
	ld (l87b9),a
	dec a
	ld (l8719),a
	ld (l876a),a
	ld (l87bb),a
	ld (l87f0),a
	ld a,#3f
	jp l86d6
;
.real_init_music
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l812c),a
	ld de,#0003
	add hl,de
	ld de,l8088
	ldi
	ldi
	ld de,l80a6
	ldi
	ldi
	ld de,l80e2
	ldi
	ldi
	ld de,l8172
	ldi
	ldi
	ld de,l829d
	ldi
	ldi
	ld de,l82a3
	ldi
	ldi
	ld de,l82a9
	ldi
	ldi
	ld de,l82af
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l8020),a
	ld (l801e),a
	ld (l8047),hl
	ld hl,(l80e2)
	ld (l828c),hl
	ld a,(hl)
	and #01
	ld (l80c1),a
	ld hl,(l82af)
	ld a,(hl)
	and #01
	ld (l82b5),a
	ld hl,(l8172)
	ld (l81dd),hl
	ld (l8248),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l82d2),hl
	ld (l8324),hl
	ld (l8376),hl
	ld (l82f1),hl
	ld (l8343),hl
	ld (l8395),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l82f7),de
	ld (l8349),de
	ld (l839b),de
	ld (l82e9),de
	ld (l833b),de
	ld (l838d),de
	ld a,#37
	ld (l802e),a
	ld hl,l8949
.l8939
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l8940
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l8940
	jr l8939
.l8949
	jr l894b
.l894b
	db #e1,#86,#fc,#86,#32,#87,#4d,#87
	db #83,#87,#9e,#87,#d4,#87,#17,#87
	db #68,#87,#b9,#87,#09,#88,#24,#88
	db #3f,#88,#41,#80,#7b,#80,#c6,#80
	db #d4,#80,#11,#81,#e0,#82,#32,#83
	db #84,#83,#41,#81,#ac,#81,#17,#82
	db #11,#ff,#e3,#86,#fe,#86,#34,#87
	db #4f,#87,#85,#87,#a0,#87,#d6,#87
	db #f0,#87,#19,#87,#6a,#87,#bb,#87
	db #0b,#88,#26,#88,#41,#88,#e2,#82
	db #34,#83,#86,#83,#03,#b7,#f3,#82
	db #45,#83,#97,#83,#00,#53,#4b,#31
	db #30,#a8,#89,#03,#32,#00,#c6,#89
	db #d3,#89,#57,#8a,#78,#8a,#c2,#89
.l89c2 equ $ + 7
	db #c6,#89,#d3,#89,#57,#8a,#09,#c0
.l89c6 equ $ + 3
	db #00,#00,#29,#7f,#06,#0e,#1e,#0e
	db #7f,#05,#3e,#7e,#1f,#01,#7e,#1e
.l89d3
	db #32,#8c,#80,#8c,#d1,#8c,#13,#8d
	db #96,#8d,#d1,#8c,#13,#8d,#96,#8d
	db #d1,#8c,#13,#8d,#96,#8d,#e2,#8d
	db #13,#8d,#96,#8d,#4a,#8e,#fa,#8e
	db #7d,#8f,#e2,#8d,#fa,#8e,#7d,#8f
	db #4a,#8e,#fa,#8e,#7d,#8f,#c9,#8f
	db #fa,#8e,#7d,#8f,#e1,#8f,#f6,#8f
	db #06,#90,#e1,#8f,#32,#8c,#0f,#90
	db #72,#90,#b3,#90,#0f,#90,#09,#91
	db #4e,#91,#0f,#90,#b3,#91,#b3,#90
	db #0f,#90,#09,#91,#4e,#91,#0f,#90
	db #b3,#91,#08,#92,#0f,#90,#71,#92
	db #d4,#92,#30,#93,#55,#93,#d4,#92
	db #30,#93,#55,#93,#d4,#92,#0f,#90
	db #6f,#93,#d4,#92,#0f,#90,#6f,#93
	db #d4,#92,#0f,#90,#71,#93,#6f,#93
.l8a57 equ $ + 4
	db #80,#8c,#6f,#93,#01,#be,#93,#02
	db #bf,#93,#01,#be,#93,#04,#bf,#93
	db #01,#be,#93,#08,#bf,#93,#01,#be
	db #93,#04,#bf,#93,#02,#be,#93,#02
.l8a78 equ $ + 5
	db #bf,#93,#01,#be,#93,#96,#8a,#a0
	db #8a,#b5,#8a,#c7,#8a,#d0,#8a,#e5
	db #8a,#04,#8b,#23,#8b,#42,#8b,#61
	db #8b,#80,#8b,#9f,#8b,#be,#8b,#fc
	db #8b,#27,#8c,#9d,#8a,#a0,#8a,#ff
.l8aa0 equ $ + 5
.l8a9d equ $ + 2
	db #37,#00,#00,#00,#00,#9d,#8a,#b5
	db #8a,#00,#b7,#00,#1e,#0a,#2f,#14
	db #2f,#0c,#2f,#08,#2e,#04,#2d,#03
	db #2c,#02,#9d,#8a,#c7,#8a,#00,#b7
	db #00,#1e,#02,#0d,#2c,#02,#1b,#07
	db #1a,#06,#19,#07,#ce,#8a,#d0,#8a
	db #00,#37,#00,#80,#08,#9d,#8a,#e5
	db #8a,#00,#b7,#00,#1d,#23,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#9d,#8a,#04,#8b,#00,#b7
	db #00,#0e,#2e,#03,#2e,#07,#2e,#03
	db #0d,#0b,#29,#03,#29,#07,#28,#03
	db #07,#04,#24,#03,#24,#07,#23,#03
	db #01,#9d,#8a,#23,#8b,#00,#b7,#00
	db #0e,#2e,#04,#2e,#08,#2e,#04,#0d
	db #0b,#29,#04,#29,#08,#28,#04,#07
	db #04,#24,#04,#24,#08,#23,#04,#01
	db #9d,#8a,#42,#8b,#00,#b7,#00,#0e
	db #2e,#05,#2e,#09,#2e,#05,#0d,#0b
	db #29,#05,#29,#09,#28,#05,#07,#04
	db #24,#05,#24,#09,#23,#05,#01,#9d
	db #8a,#61,#8b,#00,#b7,#00,#0e,#2e
	db #06,#2e,#08,#2e,#06,#0d,#0b,#29
	db #06,#29,#08,#28,#06,#07,#04,#24
	db #06,#24,#08,#23,#06,#01,#9d,#8a
	db #80,#8b,#00,#b7,#00,#0e,#2e,#06
	db #2e,#09,#2e,#06,#0d,#0b,#29,#06
	db #29,#09,#28,#06,#07,#04,#24,#06
	db #24,#09,#23,#06,#01,#9d,#8a,#9f
	db #8b,#00,#b7,#00,#0e,#2e,#05,#2e
	db #08,#2e,#05,#0d,#0b,#29,#05,#29
	db #08,#28,#05,#07,#04,#24,#05,#24
	db #08,#23,#05,#01,#9d,#8a,#be,#8b
	db #00,#b7,#00,#0e,#2e,#04,#2e,#07
	db #2e,#04,#0d,#0b,#29,#04,#29,#07
	db #28,#04,#07,#04,#24,#04,#24,#07
	db #23,#04,#01,#ee,#8b,#fc,#8b,#00
	db #37,#00,#2e,#0c,#4e,#ff,#ff,#4e
	db #ff,#ff,#4d,#ff,#ff,#0d,#0d,#0d
	db #0c,#0c,#0c,#4c,#ff,#ff,#4b,#ff
	db #ff,#4b,#ff,#ff,#0b,#0b,#0a,#09
	db #09,#09,#48,#ff,#ff,#48,#ff,#ff
	db #48,#ff,#ff,#07,#07,#07,#07,#07
	db #47,#ff,#ff,#47,#ff,#ff,#47,#ff
	db #ff,#9d,#8a,#27,#8c,#00,#b7,#00
	db #1c,#3f,#1c,#3e,#1c,#3b,#1b,#3b
	db #1b,#39,#1b,#39,#1a,#38,#1a,#37
	db #19,#36,#19,#34,#18,#33,#16,#32
	db #14,#2f,#13,#2d,#02,#01,#00,#00
	db #00,#00,#00,#00,#2e,#8c,#32,#8c
	db #00,#37,#01,#a0,#1c,#03,#34,#30
	db #80,#01,#d2,#4c,#80,#02,#d0,#30
	db #80,#01,#31,#d2,#4c,#80,#02,#ce
	db #30,#80,#01,#ce,#31,#d2,#4c,#80
	db #02,#30,#80,#01,#ce,#31,#31,#d4
	db #34,#80,#02,#ce,#30,#80,#01,#31
	db #d2,#4c,#80,#02,#d0,#30,#80,#01
	db #31,#ce,#31,#31,#4c,#80,#02,#d0
	db #30,#80,#01,#31,#ce,#31,#31,#4c
	db #80,#02,#d2,#35,#ce,#35,#ce,#35
	db #ce,#30,#80,#01,#31,#20,#80,#03
	db #d0,#c6,#30,#50,#40,#01,#d0,#39
	db #20,#40,#01,#ce,#c6,#08,#c6,#20
	db #50,#40,#01,#d0,#39,#21,#d0,#c6
	db #30,#57,#d0,#39,#33,#d0,#c6,#30
	db #57,#d0,#4b,#31,#d0,#c6,#30,#49
	db #d0,#31,#2e,#40,#01,#d0,#c6,#30
	db #5e,#40,#01,#d0,#49,#46,#40,#01
	db #ce,#c6,#07,#c6,#f9,#ce,#c6,#07
	db #c6,#f9,#c6,#07,#2e,#40,#01,#d0
	db #c6,#30,#5e,#40,#01,#c2,#38,#80
	db #04,#3f,#47,#3f,#51,#47,#3f,#47
	db #3d,#47,#4f,#47,#55,#47,#3f,#47
	db #3f,#47,#4d,#47,#57,#4d,#47,#4d
	db #43,#4b,#51,#4b,#5b,#51,#4b,#51
	db #49,#55,#5b,#55,#61,#5b,#55,#5b
	db #47,#51,#57,#51,#5f,#57,#51,#57
	db #51,#57,#5d,#57,#63,#5d,#57,#51
	db #47,#4f,#55,#4f,#5f,#55,#4f,#55
	db #30,#81,#01,#ce,#68,#80,#05,#ce
	db #4c,#80,#02,#ce,#68,#80,#05,#30
	db #80,#01,#31,#ce,#66,#80,#06,#ce
	db #4c,#80,#02,#ce,#30,#80,#01,#ce
	db #31,#ce,#64,#80,#07,#ce,#4c,#80
	db #02,#30,#80,#01,#64,#80,#07,#30
	db #80,#01,#31,#ce,#62,#80,#08,#d0
	db #34,#80,#02,#62,#80,#08,#30,#80
	db #01,#31,#ce,#60,#80,#09,#ce,#4c
	db #80,#02,#ce,#60,#80,#09,#30,#80
	db #01,#31,#ce,#5e,#80,#0a,#30,#80
	db #01,#4c,#80,#02,#ce,#5e,#80,#0a
	db #30,#80,#01,#31,#ce,#5c,#80,#09
	db #30,#80,#01,#4c,#80,#02,#ce,#5c
	db #80,#09,#ce,#34,#80,#02,#ce,#5e
	db #80,#0b,#ce,#34,#80,#02,#ce,#30
	db #80,#01,#31,#20,#80,#03,#d0,#c6
	db #30,#51,#d0,#39,#21,#ce,#c6,#08
	db #c6,#20,#51,#ce,#66,#81,#06,#38
	db #80,#03,#21,#d0,#c6,#30,#57,#d0
	db #39,#33,#d0,#c6,#30,#57,#d0,#4b
	db #31,#d0,#c6,#30,#49,#d0,#31,#2f
	db #d0,#c6,#30,#5f,#d0,#49,#47,#ce
	db #c6,#08,#c6,#f8,#ce,#c6,#08,#c6
	db #f8,#c6,#08,#2f,#d0,#c6,#30,#5f
	db #ce,#5e,#80,#0b,#5e,#80,#03,#80
	db #81,#0c,#3e,#80,#04,#47,#3f,#51
	db #47,#3f,#47,#84,#81,#0c,#46,#80
	db #04,#4f,#47,#55,#47,#80,#80,#0c
	db #85,#87,#46,#80,#04,#4d,#47,#57
	db #4d,#47,#4d,#8a,#80,#0c,#4a,#80
	db #04,#51,#4b,#5b,#51,#86,#80,#0c
	db #8b,#8f,#54,#80,#04,#5b,#55,#61
	db #5b,#55,#5b,#8a,#80,#0c,#50,#80
	db #04,#57,#51,#5f,#57,#51,#57,#8e
	db #80,#0c,#56,#80,#04,#5d,#57,#8a
	db #80,#0c,#5c,#80,#04,#57,#51,#86
	db #80,#0c,#4e,#80,#04,#55,#4f,#84
	db #80,#0c,#54,#80,#04,#4f,#55,#86
	db #81,#0c,#3e,#80,#04,#47,#3f,#84
	db #81,#0c,#46,#80,#04,#80,#80,#0c
	db #46,#80,#04,#76,#80,#0c,#46,#80
	db #04,#4f,#47,#55,#47,#76,#81,#0c
	db #46,#80,#04,#8e,#80,#0c,#46,#80
	db #04,#80,#80,#0c,#46,#80,#04,#8e
	db #81,#0c,#4c,#80,#04,#80,#81,#0c
	db #4c,#80,#04,#8a,#80,#0c,#4a,#80
	db #04,#7a,#80,#0c,#4a,#80,#04,#8a
	db #80,#0c,#50,#80,#04,#86,#81,#0c
	db #8b,#8f,#54,#80,#04,#80,#80,#0c
	db #54,#80,#04,#8e,#81,#0c,#5a,#80
	db #04,#80,#80,#0c,#5a,#80,#04,#8a
	db #81,#0c,#50,#80,#04,#7e,#80,#0c
	db #50,#80,#04,#8a,#81,#0c,#56,#80
	db #04,#7e,#80,#0c,#56,#80,#04,#8e
	db #81,#0c,#56,#80,#04,#80,#80,#0c
	db #56,#80,#04,#8e,#80,#0c,#5c,#80
	db #04,#80,#80,#0c,#50,#80,#04,#8a
	db #80,#0c,#4e,#80,#04,#7e,#81,#0c
	db #4e,#80,#04,#8a,#81,#0c,#54,#80
	db #04,#7e,#80,#0c,#54,#80,#04,#30
	db #81,#01,#ce,#80,#80,#05,#ce,#4c
	db #80,#02,#ce,#80,#80,#05,#30,#80
	db #01,#31,#ce,#7e,#80,#06,#ce,#4c
	db #80,#02,#ce,#30,#80,#01,#ce,#31
	db #ce,#7c,#80,#07,#ce,#4c,#80,#02
	db #30,#80,#01,#7c,#80,#07,#30,#80
	db #01,#31,#ce,#7a,#80,#08,#d0,#34
	db #80,#02,#7a,#80,#08,#30,#80,#01
	db #31,#ce,#78,#80,#09,#ce,#4c,#80
	db #02,#ce,#78,#80,#09,#30,#80,#01
	db #31,#ce,#76,#80,#0a,#30,#80,#01
	db #4c,#80,#02,#ce,#76,#80,#0a,#30
	db #80,#01,#31,#ce,#74,#80,#09,#30
	db #80,#01,#4c,#80,#02,#ce,#74,#80
	db #09,#ce,#34,#80,#02,#ce,#76,#80
	db #0b,#ce,#34,#80,#02,#ce,#30,#80
	db #01,#31,#20,#80,#03,#d0,#c6,#30
	db #51,#d0,#39,#21,#ce,#c6,#08,#c6
	db #20,#51,#ce,#7e,#80,#06,#38,#80
	db #03,#21,#d0,#c6,#30,#57,#d0,#39
	db #33,#d0,#c6,#30,#57,#d0,#4b,#31
	db #d0,#c6,#30,#49,#d0,#31,#2f,#d0
	db #c6,#30,#5f,#d0,#49,#47,#ce,#c6
	db #08,#c6,#f8,#ce,#c6,#08,#c6,#f8
	db #c6,#08,#2f,#d0,#c6,#30,#5f,#ce
	db #76,#80,#0b,#5e,#80,#03,#98,#80
	db #0c,#3e,#80,#04,#8e,#80,#0c,#3e
	db #80,#04,#86,#80,#0c,#46,#80,#04
	db #8e,#80,#0c,#46,#80,#04,#7e,#81
	db #0c,#85,#8b,#91,#7e,#05,#85,#8b
	db #91,#6c,#01,#77,#7f,#85,#6c,#05
	db #77,#7f,#85,#98,#80,#0c,#ca,#8e
	db #80,#0c,#ca,#86,#80,#0c,#ca,#8e
	db #80,#0c,#ca,#20,#80,#03,#d0,#c6
	db #30,#17,#ca,#c2,#20,#80,#03,#c6
	db #01,#c6,#03,#c6,#30,#51,#ce,#c6
	db #d0,#39,#21,#ce,#c6,#08,#c6,#20
	db #57,#ce,#c6,#30,#39,#21,#ce,#c6
	db #d0,#c6,#e0,#57,#c6,#d8,#6f,#39
	db #21,#d0,#c6,#30,#76,#40,#03,#6e
	db #40,#03,#68,#40,#03,#48,#40,#03
	db #30,#40,#03,#d0,#c6,#30,#49,#ca
	db #48,#80,#03,#31,#2e,#40,#03,#d0
	db #c6,#30,#5f,#ce,#c6,#e8,#49,#47
	db #d0,#c6,#c0,#76,#40,#03,#6e,#40
	db #03,#68,#40,#03,#48,#40,#03,#2e
	db #40,#03,#d0,#c6,#30,#5f,#c2,#50
	db #83,#0c,#57,#5b,#5d,#5f,#65,#69
	db #ce,#50,#07,#57,#5b,#5d,#5f,#65
	db #69,#ce,#68,#03,#65,#5f,#5b,#57
	db #51,#d0,#68,#07,#65,#5f,#5b,#57
	db #51,#d0,#50,#03,#5f,#57,#51,#49
	db #5e,#07,#57,#51,#49,#d2,#47,#5f
	db #5f,#5f,#76,#01,#6e,#01,#d8,#72
	db #01,#6c,#01,#ce,#48,#07,#47,#c2
	db #68,#80,#0c,#d2,#4c,#80,#02,#d0
	db #30,#80,#01,#6c,#80,#0c,#d2,#4c
	db #80,#02,#ce,#30,#80,#01,#ce,#6e
	db #80,#0c,#d2,#4c,#80,#02,#30,#80
	db #01,#ce,#31,#72,#80,#0c,#d4,#34
	db #80,#02,#ce,#30,#80,#01,#76,#80
	db #0c,#d2,#4c,#80,#02,#d0,#30,#80
	db #01,#31,#ce,#31,#31,#4c,#80,#02
	db #d0,#30,#80,#01,#31,#ce,#31,#31
	db #4c,#80,#02,#d2,#35,#ce,#35,#ce
	db #35,#ce,#30,#80,#01,#31,#50,#83
	db #0c,#57,#5b,#5d,#5f,#65,#69,#ce
	db #50,#07,#57,#5b,#5d,#5f,#65,#68
	db #01,#6d,#68,#03,#65,#5f,#5b,#57
	db #51,#d0,#68,#07,#65,#5f,#5b,#57
	db #51,#6e,#01,#73,#50,#03,#5f,#57
	db #51,#49,#5e,#05,#57,#51,#72,#01
	db #d2,#46,#05,#5f,#5f,#5f,#76,#01
	db #d2,#73,#d2,#6f,#ce,#68,#05,#49
	db #6c,#01,#c2,#6e,#80,#0c,#d2,#4c
	db #80,#02,#d0,#30,#80,#01,#5e,#80
	db #0c,#d2,#4c,#80,#02,#ce,#30,#80
	db #01,#ce,#76,#80,#0c,#ce,#69,#ce
	db #4c,#80,#02,#30,#80,#01,#ce,#31
	db #72,#80,#0c,#ce,#65,#ce,#73,#34
	db #80,#02,#64,#80,#0c,#30,#80,#01
	db #76,#80,#0c,#ce,#69,#ce,#4c,#80
	db #02,#ce,#68,#80,#0c,#30,#80,#01
	db #31,#ce,#31,#31,#4c,#80,#02,#ce
	db #64,#80,#0c,#30,#80,#01,#31,#ce
	db #31,#31,#4c,#80,#02,#d2,#35,#ce
	db #35,#ce,#35,#ce,#30,#80,#01,#31
	db #50,#83,#0c,#57,#5b,#5d,#6c,#01
	db #ce,#69,#ce,#50,#07,#57,#5b,#5d
	db #5f,#65,#5e,#01,#ce,#68,#03,#65
	db #5f,#5b,#76,#01,#50,#03,#68,#01
	db #ce,#68,#07,#65,#5f,#5b,#57,#51
	db #6e,#01,#73,#50,#03,#5f,#57,#51
	db #76,#01,#5e,#05,#57,#51,#72,#01
	db #ce,#65,#ce,#72,#01,#5e,#05,#5f
	db #5f,#76,#01,#ce,#69,#ce,#77,#ce
	db #69,#ce,#73,#ce,#64,#01,#48,#05
	db #72,#01,#ce,#65,#c2,#76,#80,#0c
	db #ce,#69,#ce,#4c,#80,#02,#d0,#30
	db #80,#01,#72,#80,#0c,#ce,#65,#ce
	db #4c,#80,#02,#ce,#30,#80,#01,#ce
	db #76,#80,#0c,#ce,#69,#ce,#4c,#80
	db #02,#30,#80,#01,#ce,#31,#72,#80
	db #0c,#ce,#65,#ce,#73,#34,#80,#02
	db #6e,#80,#0c,#30,#80,#01,#76,#80
	db #0c,#ce,#69,#ce,#4c,#80,#02,#ce
	db #68,#80,#0c,#30,#80,#01,#31,#ce
	db #31,#31,#4c,#80,#02,#ce,#64,#80
	db #0c,#30,#80,#01,#31,#ce,#31,#31
	db #4c,#80,#02,#d2,#35,#ce,#35,#ce
	db #35,#ce,#30,#80,#01,#31,#50,#83
	db #0c,#56,#03,#5b,#5c,#03,#76,#01
	db #64,#03,#68,#01,#ce,#50,#07,#57
	db #5b,#5d,#72,#01,#64,#03,#6e,#01
	db #73,#68,#03,#64,#03,#5f,#5b,#76
	db #01,#50,#03,#68,#01,#ce,#68,#07
	db #64,#07,#5f,#5b,#57,#51,#ce,#72
	db #01,#50,#03,#5f,#57,#51,#76,#01
	db #5e,#05,#57,#51,#72,#01,#ce,#65
	db #ce,#72,#01,#5e,#07,#5e,#07,#5e
	db #07,#76,#01,#6e,#01,#d0,#76,#07
	db #ce,#68,#07,#ce,#72,#01,#6c,#01
	db #ce,#48,#05,#72,#07,#ce,#64,#07
	db #c2,#20,#80,#0c,#ca,#d0,#42,#80
	db #0d,#ce,#20,#80,#0c,#21,#21,#ca
	db #d0,#42,#80,#0d,#ce,#20,#80,#0c
	db #21,#21,#ca,#d0,#42,#80,#0d,#d2
	db #26,#80,#0c,#ca,#26,#80,#0c,#ca
	db #42,#80,#0d,#d2,#18,#80,#0c,#19
	db #19,#ca,#42,#80,#0d,#ca,#d0,#16
	db #80,#0c,#17,#17,#ca,#42,#80,#0d
	db #ca,#16,#80,#0c,#ca,#16,#80,#0c
	db #17,#17,#ca,#42,#80,#0d,#d2,#16
	db #80,#0c,#17,#17,#ca,#42,#80,#0d
	db #ce,#16,#80,#0c,#17,#76,#81,#0c
	db #6f,#d8,#73,#6d,#d8,#81,#77,#d4
	db #7d,#ce,#7d,#73,#d8,#77,#6f,#d8
	db #73,#6d,#d8,#77,#d0,#c6,#08,#6f
	db #d0,#c6,#08,#77,#67,#d4,#5e,#05
	db #c6,#18,#38,#80,#0e,#d2,#31,#d2
	db #2f,#da,#39,#d2,#31,#d2,#2f,#da
	db #27,#d2,#31,#d2,#2f,#da,#27,#d2
	db #31,#d2,#2f,#c2,#ca,#c2,#8e,#85
	db #0c,#ce,#80,#05,#ce,#8e,#05,#ce
	db #80,#05,#ce,#8e,#03,#ce,#86,#03
	db #8e,#03,#80,#03,#ce,#86,#03,#ce
	db #8e,#01,#ce,#87,#8f,#81,#ce,#87
	db #8b,#8f,#ce,#80,#01,#ce,#8e,#01
	db #ce,#7f,#ce,#6f,#ce,#81,#ce,#6f
	db #81,#6f,#ce,#81,#ce,#77,#81,#6f
	db #ce,#73,#ce,#6f,#ce,#81,#ce,#7d
	db #81,#6f,#ce,#6d,#ce,#7f,#ce,#77
	db #7f,#6d,#c2,#ff,#ff
;
.music_info
	db "Au Pied De L'Arbre - 03 - 30YMENU 2014 (2018)(Futurs)(Tony)",0
	db "StArkos",0

	read "music_end.asm"
