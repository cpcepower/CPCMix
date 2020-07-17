; Music of Au Pied De L'Arbre - 01 - Etwal 2014 (2018)(Futurs)(Tony)(StArkos)
; Ripped by Megachur the 28/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AUPIDL01.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

;
.init_music
;
	db #c9,#8d,#88	; jp l888d init

	jp l800d	; play
	jp l8868	; stop
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
	ld a,#00
.l8020 equ $ + 1
	cp #04
	jr z,l802a
	inc a
	ld (l801e),a
	jp l82b9
.l802a
	xor a
	ld (l801e),a
.l802e
	or a
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
	ld hl,l89ca
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
	ld hl,l89d7
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
	ld a,#00
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
	ld hl,l8a8b
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
	ld a,#01
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
	ld hl,l8a8e
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
	ld hl,l8a8e
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
	ld hl,l8a8e
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
	ld de,l8a8b
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
	ld hl,l89ca
	ld (l8088),hl
.l82a9 equ $ + 1
	ld hl,l89d7
	ld (l80a6),hl
.l82af equ $ + 1
	ld hl,l8a8b
	ld (l80e2),hl
.l82b5 equ $ + 1
	ld a,#00
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
	ld hl,l8aab
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
	ld hl,l8aae
	xor a
	sbc hl,de
	jr nz,l8301
.l82f1 equ $ + 1
	ld de,l8aab
.l82f3
	or a
	jr c,l8301
.l82f7 equ $ + 1
	ld hl,l8aae
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
	ld hl,l8aab
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
	ld hl,l8aae
	xor a
	sbc hl,de
	jr nz,l8353
.l8343 equ $ + 1
	ld de,l8aab
.l8345
	or a
	jr c,l8353
.l8349 equ $ + 1
	ld hl,l8aae
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
	ld hl,l8aab
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
	ld hl,l8aae
	xor a
	sbc hl,de
	jr nz,l83a5
.l8395 equ $ + 1
	ld de,l8aab
.l8397
	or a
	jr c,l83a5
.l839b equ $ + 1
	ld hl,l8aae
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
	db #ed,#71 ; db #ed,#71 ; out (c),0
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
	db #30,#a8,#89,#01,#32,#00,#ca,#89
	db #d7,#89,#8b,#8a,#8e,#8a,#c2,#89
	db #ca,#89,#d7,#89,#8b,#8a
.l89c2 equ $ + 1
	db #04,#c0,#00,#00,#31,#18,#01,#00
.l89ca equ $ + 1
	db #01,#7f,#02,#3e,#7f,#0c,#4e,#7e
.l89d7 equ $ + 6
	db #1e,#6e,#3f,#01,#7f,#06,#6d,#8c
	db #af,#8c,#07,#8d,#6d,#8c,#af,#8c
	db #08,#8d,#4a,#8d,#ba,#8d,#c6,#8d
	db #4a,#8d,#ce,#8d,#d7,#8d,#4a,#8d
	db #de,#8d,#ed,#8d,#4a,#8d,#f9,#8d
	db #08,#8e,#4a,#8d,#de,#8d,#ed,#8d
	db #4a,#8d,#0f,#8e,#1e,#8e,#4a,#8d
	db #30,#8e,#39,#8e,#48,#8e,#9a,#8e
	db #a1,#8e,#48,#8e,#ab,#8e,#b8,#8e
	db #48,#8e,#c4,#8e,#d4,#8e,#e2,#8e
	db #26,#8f,#42,#8f,#50,#8f,#7a,#8f
	db #8a,#8f,#50,#8f,#b0,#8f,#8a,#8f
	db #50,#8f,#7a,#8f,#8a,#8f,#50,#8f
	db #b0,#8f,#8a,#8f,#c2,#8f,#f0,#8f
	db #10,#90,#c2,#8f,#f0,#8f,#10,#90
	db #53,#90,#5f,#90,#63,#90,#76,#90
	db #be,#90,#c7,#90,#e5,#90,#be,#90
	db #4f,#91,#e5,#90,#be,#90,#4f,#91
	db #e5,#90,#af,#8c,#07,#8d,#e5,#90
	db #af,#8c,#5b,#91,#b8,#91,#af,#8c
	db #5b,#91,#b8,#91,#af,#8c,#22,#92
	db #b8,#91,#af,#8c,#69,#92,#b8,#91
	db #af,#8c,#69,#92,#07,#8d,#af,#8c
.l8a8e equ $ + 5
.l8a8b equ $ + 2
	db #69,#92,#3a,#ab,#92,#a4,#8a,#ae
	db #8a,#c2,#8a,#d4,#8a,#11,#8b,#3e
	db #8b,#6c,#8b,#75,#8b,#aa,#8b,#59
	db #8c,#64,#8c,#ab,#8a,#ae,#8a,#ff
.l8aae equ $ + 5
.l8aab equ $ + 2
	db #37,#00,#00,#00,#00,#ab,#8a,#c2
	db #8a,#00,#b7,#00,#0d,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
	db #03,#ab,#8a,#d4,#8a,#01,#b7,#00
	db #0f,#0e,#0d,#0c,#0b,#0b,#0a,#08
	db #06,#05,#02,#03,#8b,#11,#8b,#00
	db #37,#00,#0f
	db #4f,#ff,#ff,#4f,#ff,#ff,#4f,#ff
	db #ff,#0f,#0f,#0f,#0f,#0f,#0f,#4f
	db #ff,#ff,#4d,#ff,#ff,#4d,#ff,#ff
	db #0d,#0d,#0c,#0c,#0c,#0c,#4c,#ff
	db #ff,#4c,#ff,#ff,#4b,#ff,#ff,#0b
	db #0b,#0b,#0b,#0a,#4a,#ff,#ff,#4a
	db #ff,#ff,#4a,#ff,#ff,#ab,#8a,#3e
	db #8b,#01,#b7,#00,#2d,#03,#0d,#2c
	db #03,#0c,#2b,#03,#0a,#28,#03,#08
	db #27,#03,#07,#26,#03,#05,#23,#03
	db #01,#21,#03,#01,#21,#03,#01,#21
	db #03,#01,#21,#03,#01,#21,#03,#01
	db #21,#03,#ab,#8a,#6c,#8b,#01,#b7
	db #00,#0d,#2d,#04,#0d,#2c,#04,#0c
	db #2b,#04,#0a,#28,#04,#08,#27,#04
	db #07,#26,#04,#05,#23,#04,#01,#21
	db #04,#01,#21,#04,#01,#21,#04,#01
	db #21,#04,#01,#21,#04,#01,#21,#04
	db #73,#8b,#75,#8b,#00,#37,#00,#81
	db #0c,#ab,#8a,#aa,#8b,#05,#b7,#00
	db #1e,#1f,#5e,#3e,#00,#fe,#5e,#3b
	db #00,#fd,#5d,#3b,#00,#fb,#5d,#39
	db #00,#fa,#5d,#39,#00,#fa,#1c,#18
	db #1c,#17,#1a,#16,#1a,#14,#19,#13
	db #18,#12,#16,#0f,#14,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#ab,#8a
	db #59,#8c,#00,#b7,#00,#1f,#02,#00
	db #00,#1e,#0b,#1d,#0a,#1c,#0b,#1c
	db #0a,#1c,#09,#1c,#07,#1c,#04,#1c
	db #01,#1c,#01,#1c,#01,#1c,#01,#1c
	db #01,#1c,#01,#1c,#01,#1c,#01,#1c
	db #01,#1c,#01,#1c,#01,#1c,#01,#1c
	db #01,#1c,#01,#1c,#01,#1c,#01,#1c
	db #01,#1c,#01,#1c,#01,#1c,#01,#1c
	db #01,#1c,#01,#1c,#01,#1c,#01,#1c
	db #01,#1c,#01,#1c,#01,#1c,#01,#1c
	db #01,#1c,#01,#1c,#01,#1b,#01,#1b
	db #01,#1b,#01,#1b,#01,#1b,#01,#1b
	db #01,#1b,#01,#19,#01,#19,#01,#19
	db #01,#19,#01,#19,#01,#19,#01,#16
	db #01,#16,#01,#16,#01,#16,#01,#16
	db #01,#16,#01,#16,#01,#16,#01,#16
	db #01,#16,#01,#16,#01,#16,#01,#16
	db #01,#16,#01,#16,#01,#16,#01,#14
	db #01,#14,#01,#14,#01,#13,#01,#13
	db #01,#13,#01,#13,#01,#13,#01,#13
	db #01,#12,#01,#12,#01,#12,#01,#11
	db #01,#11,#01,#11,#01,#60,#8c,#64
	db #8c,#00,#37,#01,#a0,#1c,#03,#34
	db #6b,#8c,#6d,#8c,#00,#37,#00,#80
	db #88,#4c,#80,#01,#ce,#51,#ce,#53
	db #ce,#4d,#ce,#51,#ce,#53,#ce,#51
	db #ce,#53,#ce,#4d,#ce,#51,#ce,#53
	db #ce,#4d,#ce,#51,#ce,#53,#ce,#51
	db #ce,#53,#ce,#4d,#ce,#51,#ce,#53
	db #ce,#4d,#ce,#51,#ce,#53,#ce,#51
	db #ce,#53,#ce,#4d,#ce,#51,#ce,#53
	db #ce,#4d,#ce,#51,#ce,#53,#ce,#51
	db #ce,#53,#c2,#5a,#80,#02,#ce,#64
	db #80,#03,#d2,#6b,#ce,#5c,#80,#02
	db #ce,#68,#80,#03,#d2,#65,#ce,#5a
	db #80,#02,#ce,#6e,#80,#03,#ce,#5c
	db #80,#02,#ce,#68,#80,#03,#ce,#5a
	db #80,#02,#ce,#64,#80,#03,#d2,#65
	db #ce,#63,#ce,#65,#d2,#6b,#ce,#5c
	db #80,#02,#ce,#68,#80,#03,#d2,#65
	db #ce,#5a,#80,#02,#ce,#62,#80,#03
	db #ce,#5c,#80,#02,#ce,#64,#80,#03
	db #ce,#5a,#80,#02,#ce,#68,#80,#03
	db #d2,#6b,#c2,#c2,#52,#80,#01,#ce
	db #57,#ce,#5b,#ce,#53,#ce,#57,#ce
	db #5b,#ce,#57,#ce,#5b,#ce,#53,#ce
	db #57,#ce,#5b,#ce,#53,#ce,#57,#ce
	db #5b,#ce,#57,#ce,#5b,#ce,#53,#ce
	db #57,#ce,#5b,#ce,#53,#ce,#57,#ce
	db #5b,#ce,#57,#ce,#5b,#ce,#53,#ce
	db #57,#ce,#5b,#ce,#53,#ce,#57,#ce
	db #5b,#ce,#57,#ce,#5b,#c2,#4c,#80
	db #04,#ce,#51,#ce,#52,#80,#05,#ce
	db #4c,#80,#04,#ce,#51,#ce,#52,#80
	db #05,#ce,#50,#80,#04,#ce,#52,#80
	db #05,#ce,#4c,#80,#04,#ce,#51,#ce
	db #52,#80,#05,#ce,#4c,#80,#04,#ce
	db #51,#ce,#52,#80,#05,#ce,#50,#80
	db #04,#ce,#52,#80,#05,#ce,#4c,#80
	db #04,#ce,#51,#ce,#52,#80,#05,#ce
	db #4c,#80,#04,#ce,#51,#ce,#52,#80
	db #05,#ce,#50,#80,#04,#ce,#52,#80
	db #05,#ce,#4c,#80,#04,#ce,#51,#ce
	db #52,#80,#05,#ce,#4c,#80,#04,#ce
	db #51,#ce,#52,#80,#05,#ce,#50,#80
	db #04,#ce,#52,#80,#05,#c2,#7c,#80
	db #03,#fa,#8b,#ea,#83,#ce,#81,#ce
	db #7d,#c2,#34,#80,#06,#fa,#2b,#f2
	db #3b,#c2,#72,#80,#03,#c0,#1a,#2a
	db #80,#06,#c2,#2a,#80,#06,#c0,#19
	db #ca,#c2,#dc,#72,#85,#03,#da,#75
	db #da,#73,#ea,#73,#da,#6f,#da,#6b
	db #c2,#34,#80,#06,#c0,#1e,#2b,#c0
	db #1a,#3b,#ce,#39,#c2,#dc,#64,#80
	db #03,#da,#73,#da,#6b,#da,#65,#ea
	db #6b,#da,#69,#c2,#3a,#80,#06,#c0
	db #1e,#2b,#c2,#dc,#64,#80,#03,#da
	db #73,#da,#6b,#da,#6f,#ea,#6b,#da
	db #6f,#c2,#3a,#80,#06,#ea,#2b,#de
	db #43,#ce,#3b,#ce,#35,#ce,#2b,#ea
	db #3b,#da,#39,#c2,#72,#80,#03,#c0
	db #32,#00,#80,#07,#c2,#34,#80,#06
	db #c0,#1e,#33,#ea,#2d,#e4,#c6,#08
	db #c6,#10,#c6,#20,#56,#80,#04,#ce
	db #57,#ce,#5b,#ce,#57,#ce,#57,#ce
	db #57,#ce,#5b,#ce,#57,#ce,#57,#ce
	db #57,#ce,#5b,#ce,#57,#ce,#57,#ce
	db #57,#ce,#5b,#ce,#57,#ce,#55,#ce
	db #55,#ce,#64,#80,#05,#ce,#54,#80
	db #04,#ce,#55,#ce,#55,#ce,#64,#80
	db #05,#ce,#54,#80,#04,#ce,#55,#ce
	db #55,#ce,#64,#80,#05,#ce,#54,#80
	db #04,#ce,#55,#ce,#55,#ce,#64,#80
	db #05,#ce,#54,#80,#04,#c2,#64,#80
	db #03,#c0,#1e,#65,#c2,#ca,#ea,#56
	db #89,#03,#c0,#1e,#54,#05,#c2,#64
	db #80,#03,#c0,#34,#52,#80,#08,#ce
	db #52,#80,#07,#c2,#52,#80,#03,#ea
	db #51,#ea,#5b,#ea,#2a,#80,#09,#c2
	db #64,#80,#07,#ea,#82,#80,#08,#ea
	db #64,#80,#07,#ea,#86,#80,#08,#c2
	db #3e,#80,#09,#e2,#45,#d2,#4d,#ea
	db #25,#e2,#2d,#d2,#35,#c2,#56,#80
	db #04,#ce,#57,#ce,#5b,#ce,#57,#ce
	db #57,#ce,#57,#ce,#5b,#ce,#57,#ce
	db #57,#ce,#57,#ce,#5b,#ce,#57,#ce
	db #57,#ce,#57,#ce,#5b,#ce,#57,#ce
	db #55,#ce,#55,#ce,#64,#80,#05,#ce
	db #54,#80,#04,#ce,#55,#ce,#55,#ce
	db #64,#80,#05,#ce,#54,#80,#04,#ce
	db #5b,#ce,#5b,#d2,#65,#ce,#5b,#d2
	db #5b,#c2,#82,#80,#07,#e2,#82,#80
	db #08,#d2,#82,#80,#07,#ea,#83,#e2
	db #82,#80,#08,#d2,#82,#80,#07,#d2
	db #82,#80,#08,#da,#83,#c2,#26,#80
	db #09,#e2,#35,#d2,#3f,#ea,#2d,#ea
	db #37,#da,#3b,#c2,#56,#80,#04,#ce
	db #57,#d2,#57,#ce,#57,#d2,#57,#d2
	db #57,#ce,#57,#d2,#57,#ce,#57,#d2
	db #57,#d2,#55,#ce,#55,#d2,#55,#ce
	db #55,#d2,#55,#d2,#55,#ce,#55,#d2
	db #55,#ce,#55,#d2,#55,#c2,#6e,#80
	db #03,#ea,#6d,#da,#6f,#d6,#6d,#6f
	db #73,#ea,#79,#da,#75,#c2,#26,#80
	db #09,#d2,#1c,#80,#03,#d2,#2d,#d2
	db #27,#d2,#34,#80,#09,#d2,#2d,#d2
	db #27,#d2,#1f,#d2,#1d,#d2,#35,#d2
	db #2b,#d2,#25,#d2,#1f,#d2,#1d,#d2
	db #1b,#d2,#35,#c2,#6e,#80,#03,#e4
	db #6d,#d0,#6f,#d2,#65,#d2,#5d,#d0
	db #65,#d0,#6f,#ce,#73,#c2,#68,#80
	db #04,#ce,#69,#ce,#67,#d2,#69,#d6
	db #67,#ce,#69,#ce,#69,#ce,#67,#da
	db #67,#d2,#60,#80,#05,#ce,#61,#ce
	db #67,#d6,#66,#80,#04,#ce,#69,#ce
	db #69,#ce,#67,#d6,#67,#ce,#69,#ce
	db #69,#ce,#67,#c2,#68,#81,#03,#e2
	db #6f,#ce,#6d,#ce,#69,#d2,#6f,#ce
	db #6d,#ce,#6f,#d2,#77,#d2,#73,#d2
	db #6d,#d2,#69,#e2,#6f,#ce,#6d,#ce
	db #69,#d2,#73,#c2,#38,#80,#09,#d2
	db #50,#80,#06,#d6,#38,#80,#09,#ce
	db #50,#80,#06,#d2,#38,#80,#09,#d2
	db #50,#80,#06,#d2,#36,#80,#09,#ce
	db #4e,#80,#06,#ce,#37,#d2,#36,#80
	db #09,#d2,#4e,#80,#06,#d0,#ca,#50
	db #80,#06,#d6,#38,#80,#09,#ce,#50
	db #80,#06,#d6,#38,#80,#09,#ce,#50
	db #80,#06,#d6,#20,#80,#09,#c2,#64
	db #80,#05,#ce,#65,#d2,#65,#ce,#65
	db #d2,#65,#c2,#76,#80,#03,#c2,#50
	db #80,#06,#d2,#38,#80,#09,#d2,#20
	db #80,#06,#d0,#ca,#20,#80,#0a,#d0
	db #c6,#30,#60,#80,#05,#ce,#5a,#80
	db #04,#d2,#5b,#ce,#60,#80,#05,#ce
	db #5a,#80,#04,#d2,#5b,#ce,#60,#80
	db #05,#ce,#5a,#80,#04,#d2,#5b,#ce
	db #60,#80,#05,#ce,#5a,#80,#04,#d2
	db #5b,#ce,#60,#80,#05,#ce,#5a,#80
	db #04,#d2,#5b,#ce,#60,#80,#05,#ce
	db #5a,#80,#04,#d2,#4d,#ce,#51,#ce
	db #52,#80,#05,#ce,#4c,#80,#04,#ce
	db #51,#c2,#f4,#64,#80,#07,#fa,#34
	db #80,#08,#c2,#2a,#80,#0a,#da,#21
	db #d2,#31,#ce,#2f,#ce,#31,#da,#21
	db #e2,#39,#ce,#31,#ce,#2b,#ce,#21
	db #de,#c6,#18,#c6,#18,#c6,#18,#c6
	db #18,#4c,#80,#04,#ce,#51,#ce,#52
	db #80,#05,#ce,#4c,#80,#04,#ce,#51
	db #ce,#52,#80,#05,#ce,#56,#80,#04
	db #ce,#51,#ce,#52,#80,#05,#ce,#56
	db #80,#04,#ce,#5b,#ce,#52,#80,#05
	db #ce,#56,#80,#04,#ce,#51,#ce,#52
	db #80,#05,#ce,#4a,#80,#04,#ce,#4d
	db #ce,#51,#ce,#52,#80,#05,#ce,#4c
	db #80,#04,#ce,#51,#ce,#52,#80,#05
	db #ce,#56,#80,#04,#ce,#51,#ce,#52
	db #80,#05,#ce,#56,#80,#04,#ce,#5b
	db #ce,#52,#80,#05,#ce,#56,#80,#04
	db #ce,#51,#ce,#52,#80,#05,#ce,#4a
	db #80,#04,#c2,#5a,#87,#02,#da,#5d
	db #da,#5b,#d2,#5d,#d2,#5b,#c2,#d0
	db #6a,#80,#02,#ce,#ca,#ce,#72,#80
	db #02,#ce,#ca,#ce,#6e,#80,#02,#ce
	db #ca,#ce,#6a,#80,#02,#ce,#ca,#ce
	db #74,#80,#02,#ce,#ca,#ce,#6e,#80
	db #02,#ce,#ca,#ce,#6a,#80,#02,#ce
	db #ca,#ce,#6a,#80,#02,#ce,#69,#ce
	db #6b,#ce,#ca,#ce,#72,#80,#02,#ce
	db #ca,#ce,#6e,#80,#02,#ce,#ca,#ce
	db #6a,#80,#02,#ce,#ca,#ce,#68,#80
	db #02,#ce,#ca,#ce,#6a,#80,#02,#ce
	db #ca,#ce,#6e,#80,#02,#ce,#ca,#ce
	db #72,#80,#02,#c2,#4c,#80,#04,#4d
	db #51,#51,#52,#80,#05,#53,#4c,#80
	db #04,#4d,#51,#51,#52,#80,#05,#53
	db #56,#80,#04,#57,#51,#51,#52,#80
	db #05,#53,#56,#80,#04,#57,#5b,#5b
	db #52,#80,#05,#53,#56,#80,#04,#57
	db #51,#51,#52,#80,#05,#53,#4a,#80
	db #04,#4b,#4d,#4d,#51,#51,#52,#80
	db #05,#53,#4c,#80,#04,#4d,#51,#51
	db #52,#80,#05,#53,#56,#80,#04,#57
	db #51,#51,#52,#80,#05,#53,#56,#80
	db #04,#57,#5b,#5b,#52,#80,#05,#53
	db #56,#80,#04,#57,#51,#51,#52,#80
	db #05,#53,#4a,#80,#04,#4b,#d0,#6a
	db #80,#05,#ce,#ca,#ce,#6e,#80,#04
	db #ce,#ca,#ce,#72,#80,#04,#ce,#ca
	db #ce,#6a,#80,#05,#ce,#ca,#ce,#74
	db #80,#05,#ce,#ca,#ce,#6e,#80,#04
	db #ce,#ca,#ce,#72,#80,#04,#ce,#ca
	db #ce,#6a,#80,#05,#d2,#6b,#d2,#6e
	db #80,#04,#d2,#73,#d2,#6a,#80,#05
	db #d2,#75,#d2,#6e,#80,#04,#d2,#73
	db #d2,#6a,#80,#05,#c2,#64,#80,#04
	db #65,#65,#65,#65,#65,#65,#65,#65
	db #65,#65,#65,#65,#65,#65,#65,#7d
	db #7d,#7d,#7d,#7d,#7d,#7d,#7d,#7d
	db #7d,#7d,#7d,#7d,#7d,#7d,#7d,#6f
	db #6f,#6f,#6f,#6f,#6f,#6f,#6f,#6f
	db #6f,#6f,#6f,#6f,#6f,#6f,#6f,#87
	db #87,#87,#87,#87,#87,#87,#87,#87
	db #87,#87,#87,#87,#87,#87,#87,#ff
;
; 01 - Etwal 2014
; 02 - MSX4 2014
; 03 - 30YMenu 2014
; 04 - Bzekray 2000-2002
; 05 - BukTop Aout 2001
; 06 - FolkBulg Septembre 2001
; 07 - HA3DPabe Décembre 2001
; 08 - Hiver Années 90
; 09 - Kidjo Années 90
; 10 - Ot-Rap Juin 2001
; 11 - Wednsday 1998
; 12 - ZM96 1996
; 13 - ZM98 1998
; 14 - Laremi Années 2000
; 15 - PomPom Années 2000
; 16 - Surcing Années 2000
; 17 - Up Années 2000
;
.music_info
	db "Au Pied De L'Arbre - 01 - Etwal 2014 (2018)(Futurs)(Tony)",0
	db "StArkos",0

	read "music_end.asm"
