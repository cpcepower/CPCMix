; Music of Au Pied De L'Arbre - 02 - MSX4 2014 (2018)(Futurs)(Tony)(StArkos)
; Ripped by Megachur the 28/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AUPIDL02.BIN"
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
	ld a,#05
.l8020 equ $ + 1
	cp #05
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
	ld hl,l8a39
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
	ld a,#02
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
	ld hl,l8a3c
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
	ld hl,l8a3c
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
	ld hl,l8a3c
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
	ld de,l8a39
	xor a
	sbc hl,de
	jr nz,l82b9
	ld (l8041),a
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
	ld hl,l8a39
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
	ld hl,l8a57
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
	ld hl,l8a5a
	xor a
	sbc hl,de
	jr nz,l8301
.l82f1 equ $ + 1
	ld de,l8a57
.l82f3
	or a
	jr c,l8301
.l82f7 equ $ + 1
	ld hl,l8a5a
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
	ld hl,l8a57
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
	ld hl,l8a5a
	xor a
	sbc hl,de
	jr nz,l8353
.l8343 equ $ + 1
	ld de,l8a57
.l8345
	or a
	jr c,l8353
.l8349 equ $ + 1
	ld hl,l8a5a
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
	ld hl,l8a57
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
	ld hl,l8a5a
	xor a
	sbc hl,de
	jr nz,l83a5
.l8395 equ $ + 1
	ld de,l8a57
.l8397
	or a
	jr c,l83a5
.l839b equ $ + 1
	ld hl,l8a5a
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
	db #30,#a8,#89,#02,#32,#00,#c6,#89
	db #d3,#89,#39,#8a,#3c,#8a,#c2,#89
.l89c2 equ $ + 7
	db #c6,#89,#d3,#89,#39,#8a,#05,#c0
.l89c6 equ $ + 3
	db #00,#00,#1f,#3f,#01,#7f,#02,#3e
	db #7e,#3f,#01,#7e,#3f,#04,#7f,#01
.l89d3
	db #36,#8b,#7a,#8b,#7a,#8b,#7b,#8b
	db #7a,#8b,#7a,#8b,#7b,#8b,#ff,#8b
	db #41,#8c,#7b,#8b,#ff,#8b,#c2,#8c
	db #32,#8d,#d4,#8d,#41,#8c,#32,#8d
	db #d4,#8d,#c2,#8c,#16,#8e,#ff,#8b
	db #41,#8c,#16,#8e,#d4,#8d,#c2,#8c
	db #32,#8d,#ff,#8b,#b8,#8e,#e5,#8e
	db #d4,#8d,#37,#8f,#e5,#8e,#d4,#8d
	db #b8,#8f,#f9,#8f,#d4,#8d,#b8,#8f
	db #16,#8e,#d4,#8d,#41,#90,#32,#8d
	db #d4,#8d,#41,#8c,#16,#8e,#d4,#8d
	db #41,#90,#32,#8d,#d4,#8d,#85,#90
.l8a39 equ $ + 6
	db #7b,#8b,#b8,#8e,#0e,#91,#20,#31
.l8a3c equ $ + 1
	db #91,#50,#8a,#5a,#8a,#63,#8a,#6c
	db #8a,#7e,#8a,#93,#8a,#a7,#8a,#b9
	db #8a,#ee,#8a,#2b,#8b,#57,#8a,#5a
.l8a5a equ $ + 7
.l8a57 equ $ + 4
	db #8a,#ff,#37,#00,#00,#00,#00,#61
	db #8a,#63,#8a,#00,#37,#00,#81,#0c
	db #6a,#8a,#6c,#8a,#00,#37,#00,#80
	db #88,#57,#8a,#7e,#8a,#00,#b7,#00
	db #1e,#02,#0d,#2c,#02,#1b,#07,#1a
	db #06,#19,#07,#57,#8a,#93,#8a,#00
	db #b7,#00,#1e,#0a,#2f,#14,#2f,#0c
	db #2f,#08,#2e,#04,#2d,#03,#2c,#02
	db #57,#8a,#a7,#8a,#00,#b7,#00,#0b
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
	db #04,#03,#02,#01,#57,#8a,#b9,#8a
	db #01,#b7,#00,#0f,#0e,#0d,#0c,#0b
	db #0b,#0a,#08,#06,#05,#02,#57,#8a
	db #ee,#8a,#05,#b7,#00,#1e,#1f,#5e
	db #3e,#00,#fe,#5e,#3b,#00,#fd,#5d
	db #3b,#00,#fb,#5d,#39,#00,#fa,#5d
	db #39,#00,#fa,#1c,#18,#1c,#17,#1a
	db #16,#1a,#14,#19,#13,#18,#12,#16
	db #0f,#14,#0d,#00,#00,#00,#00,#00
	db #00,#00,#00,#1d,#8b,#2b,#8b,#00
	db #37,#00,#0f,#4f,#ff,#ff,#4f,#ff
	db #ff,#4f,#ff,#ff,#0f,#0f,#0f,#0f
	db #0f,#0f,#4f,#ff,#ff,#4d,#ff,#ff
	db #4d,#ff,#ff,#0d,#0d,#0c,#0c,#0c
	db #0c,#4c,#ff,#ff,#4c,#ff,#ff,#4b
	db #ff,#ff,#0b,#0b,#0b,#0b,#0a,#4a
	db #ff,#ff,#4a,#ff,#ff,#4a,#ff,#ff
	db #32,#8b,#36,#8b,#00,#37,#01,#a0
	db #1c,#03,#34,#22,#80,#01,#ca,#22
	db #80,#01,#22,#80,#02,#ca,#22,#80
	db #02,#22,#80,#01,#23,#ca,#22,#80
	db #02,#22,#80,#01,#23,#ca,#ce,#22
	db #80,#01,#22,#80,#02,#20,#80,#01
	db #ca,#20,#80,#01,#20,#80,#02,#ca
	db #ce,#20,#80,#01,#20,#80,#02,#1c
	db #80,#01,#ca,#1c,#80,#01,#1c,#80
	db #02,#ca,#ce,#1c,#80,#01,#1d,#c2
	db #26,#80,#01,#ca,#26,#80,#01,#26
	db #80,#02,#46,#80,#03,#ce,#26,#80
	db #01,#27,#ca,#26,#80,#02,#26,#80
	db #01,#27,#46,#80,#03,#ce,#26,#80
	db #01,#26,#80,#02,#26,#80,#01,#ca
	db #26,#80,#01,#26,#80,#02,#46,#80
	db #03,#ce,#26,#80,#01,#26,#80,#02
	db #26,#80,#01,#ca,#26,#80,#01,#26
	db #80,#02,#46,#80,#03,#ce,#26,#80
	db #01,#27,#27,#d6,#27,#27,#ca,#26
	db #80,#02,#26,#80,#01,#27,#46,#80
	db #03,#ce,#26,#80,#01,#26,#80,#02
	db #26,#80,#01,#ce,#27,#26,#80,#02
	db #46,#80,#03,#ce,#26,#80,#01,#26
	db #80,#02,#26,#80,#01,#ca,#26,#80
	db #01,#26,#80,#02,#46,#80,#03,#ce
	db #26,#80,#01,#27,#1c,#80,#04,#ce
	db #80,#80,#05,#d2,#81,#d0,#1c,#80
	db #04,#1d,#d2,#80,#80,#05,#d2,#81
	db #d2,#1c,#80,#04,#1d,#d0,#80,#80
	db #05,#d2,#18,#80,#04,#ce,#1d,#ce
	db #80,#80,#05,#d2,#81,#d0,#1c,#80
	db #04,#1d,#d2,#80,#80,#05,#d2,#81
	db #d2,#1c,#80,#04,#1d,#d0,#80,#80
	db #05,#d2,#18,#80,#04,#c2,#64,#8d
	db #06,#56,#0d,#64,#0d,#5e,#0d,#64
	db #0b,#56,#0b,#64,#0b,#56,#0b,#60
	db #0b,#52,#09,#60,#09,#50,#09,#60
	db #09,#52,#07,#60,#07,#52,#07,#60
	db #07,#5a,#05,#60,#05,#56,#05,#60
	db #05,#5a,#03,#5e,#03,#56,#03,#52
	db #03,#5a,#01,#52,#01,#56,#01,#4c
	db #01,#5a,#01,#52,#01,#56,#01,#5a
	db #03,#52,#03,#56,#03,#4c,#03,#5a
	db #05,#52,#05,#56,#05,#5a,#05,#5e
	db #07,#56,#07,#5a,#07,#52,#07,#5e
	db #09,#56,#09,#5a,#09,#52,#09,#56
	db #0b,#4c,#0b,#52,#0b,#56,#0b,#5a
	db #09,#52,#09,#56,#09,#4c,#07,#56
	db #07,#4c,#07,#52,#07,#56,#05,#5a
	db #05,#52,#05,#56,#05,#4c,#05,#52
	db #87,#06,#50,#07,#52,#07,#50,#05
	db #52,#05,#4c,#05,#52,#05,#4c,#05
	db #50,#03,#48,#03,#50,#03,#48,#03
	db #50,#03,#48,#01,#50,#01,#48,#01
	db #4c,#01,#46,#01,#4c,#01,#46,#03
	db #48,#03,#42,#05,#46,#05,#3e,#05
	db #3a,#05,#42,#05,#3e,#05,#3e,#03
	db #3a,#03,#42,#03,#3e,#03,#3e,#09
	db #3a,#09,#42,#09,#3e,#09,#3e,#05
	db #3a,#05,#42,#05,#3e,#05,#3e,#03
	db #3a,#03,#42,#03,#3e,#01,#3e,#05
	db #3a,#05,#42,#05,#3e,#03,#3e,#03
	db #3a,#03,#42,#03,#3e,#07,#3e,#0b
	db #3a,#0b,#42,#0b,#3e,#0b,#c2,#22
	db #80,#01,#46,#80,#03,#22,#80,#01
	db #22,#80,#02,#46,#80,#03,#22,#80
	db #02,#22,#80,#01,#23,#46,#80,#03
	db #22,#80,#02,#22,#80,#01,#23,#46
	db #80,#03,#ce,#22,#80,#01,#22,#80
	db #02,#20,#80,#01,#46,#80,#03,#20
	db #80,#01,#20,#80,#02,#46,#80,#03
	db #ce,#20,#80,#01,#20,#80,#02,#1c
	db #80,#01,#46,#80,#03,#1c,#80,#01
	db #1c,#80,#02,#46,#80,#03,#ce,#1c
	db #80,#01,#1d,#1d,#46,#80,#03,#1c
	db #80,#01,#1c,#80,#02,#46,#80,#03
	db #1c,#80,#02,#1c,#80,#01,#1c,#80
	db #02,#46,#80,#03,#18,#80,#01,#19
	db #19,#46,#80,#03,#ce,#18,#80,#02
	db #18,#80,#01,#1d,#1d,#1c,#80,#02
	db #1c,#80,#01,#46,#80,#03,#ce,#1c
	db #80,#02,#1c,#80,#01,#1d,#46,#80
	db #03,#1c,#80,#01,#1c,#80,#02,#46
	db #80,#03,#ce,#1c,#80,#01,#1c,#80
	db #02,#1c,#80,#04,#ce,#80,#80,#05
	db #d2,#81,#d0,#1c,#80,#04,#1d,#d2
	db #80,#80,#05,#d2,#81,#d2,#1c,#80
	db #04,#1d,#d0,#80,#80,#05,#d2,#18
	db #80,#04,#ce,#1d,#ce,#80,#80,#05
	db #d2,#81,#d0,#1c,#80,#04,#1d,#d2
	db #80,#80,#05,#d2,#81,#d2,#1c,#80
	db #04,#1d,#d0,#80,#80,#05,#d2,#18
	db #80,#04,#c2,#26,#80,#01,#46,#80
	db #03,#26,#80,#01,#26,#80,#02,#46
	db #80,#03,#ce,#26,#80,#01,#27,#46
	db #80,#03,#26,#80,#02,#26,#80,#01
	db #27,#46,#80,#03,#ce,#26,#80,#01
	db #26,#80,#02,#26,#80,#01,#46,#80
	db #03,#26,#80,#01,#26,#80,#02,#46
	db #80,#03,#ce,#26,#80,#01,#26,#80
	db #02,#26,#80,#01,#46,#80,#03,#26
	db #80,#01,#26,#80,#02,#46,#80,#03
	db #ce,#26,#80,#01,#27,#27,#46,#80
	db #03,#26,#80,#01,#26,#80,#02,#46
	db #80,#03,#ce,#26,#80,#01,#27,#46
	db #80,#03,#26,#80,#02,#26,#80,#01
	db #27,#46,#80,#03,#ce,#26,#80,#01
	db #26,#80,#02,#26,#80,#01,#46,#80
	db #03,#26,#80,#01,#26,#80,#02,#46
	db #80,#03,#ce,#26,#80,#01,#26,#80
	db #02,#26,#80,#01,#46,#80,#03,#26
	db #80,#01,#26,#80,#02,#46,#80,#03
	db #ce,#26,#80,#01,#27,#c0,#21,#80
	db #87,#05,#d2,#80,#07,#da,#80,#07
	db #ce,#b6,#9d,#07,#c4,#09,#c4,#08
	db #c4,#07,#c4,#06,#c4,#0f,#c4,#04
	db #c4,#03,#c4,#02,#c4,#02,#c4,#01
	db #c4,#01,#c4,#01,#c4,#00,#c4,#00
	db #c4,#00,#34,#80,#02,#d2,#46,#80
	db #03,#ce,#34,#80,#02,#ce,#2b,#d2
	db #46,#80,#03,#ce,#2a,#80,#02,#ce
	db #39,#d2,#46,#80,#03,#ce,#38,#80
	db #02,#ce,#21,#d2,#46,#80,#03,#ce
	db #20,#80,#02,#ce,#35,#d2,#46,#80
	db #03,#ce,#34,#80,#02,#ce,#2b,#d2
	db #46,#80,#03,#ce,#2a,#80,#02,#ce
	db #39,#d2,#46,#80,#03,#ce,#38,#80
	db #02,#ce,#2f,#d2,#46,#80,#03,#ce
	db #2e,#80,#02,#c2,#7c,#81,#06,#72
	db #0b,#6a,#0b,#72,#01,#64,#01,#6a
	db #0b,#64,#01,#6a,#0b,#68,#0b,#72
	db #0b,#68,#01,#60,#0b,#5a,#01,#60
	db #0b,#68,#01,#72,#0b,#6e,#01,#76
	db #01,#6e,#0b,#7c,#01,#76,#0b,#6e
	db #01,#76,#01,#68,#0b,#6c,#01,#66
	db #01,#76,#0b,#66,#01,#72,#0b,#66
	db #0b,#6c,#0b,#66,#01,#72,#0b,#6c
	db #01,#64,#0b,#6c,#01,#64,#01,#5a
	db #0b,#64,#01,#5a,#0b,#60,#01,#5a
	db #01,#68,#0b,#60,#01,#5a,#0b,#60
	db #01,#50,#01,#56,#01,#5e,#01,#64
	db #0b,#68,#01,#6e,#01,#76,#0b,#7c
	db #01,#84,#0b,#7c,#01,#64,#01,#5e
	db #0b,#56,#01,#54,#0b,#4c,#0b,#46
	db #01,#3e,#0b,#3c,#01,#4c,#83,#06
	db #64,#09,#4c,#03,#64,#03,#4c,#09
	db #64,#03,#4c,#09,#64,#03,#4a,#09
	db #68,#03,#4a,#09,#68,#03,#4a,#03
	db #68,#09,#4a,#03,#68,#09,#58,#03
	db #5e,#09,#58,#03,#5e,#03,#58,#09
	db #5e,#03,#58,#09,#5e,#03,#58,#09
	db #5e,#03,#58,#09,#5e,#03,#58,#03
	db #5e,#09,#58,#03,#5e,#03,#1c,#80
	db #01,#ca,#1c,#80,#01,#1c,#80,#02
	db #46,#80,#03,#ce,#1c,#80,#01,#1d
	db #ca,#28,#80,#02,#28,#80,#01,#29
	db #46,#80,#03,#ce,#28,#80,#01,#28
	db #80,#02,#1c,#80,#01,#ca,#20,#80
	db #01,#20,#80,#02,#38,#80,#01,#ce
	db #21,#38,#80,#02,#20,#80,#01,#ca
	db #20,#80,#01,#20,#80,#02,#46,#80
	db #03,#ce,#38,#80,#01,#21,#54,#c5
	db #08,#f9,#ce,#52,#85,#06,#50,#05
	db #52,#09,#4c,#05,#52,#09,#4c,#05
	db #50,#09,#48,#05,#50,#09,#48,#05
	db #50,#05,#48,#09,#50,#05,#56,#89
	db #09,#52,#05,#c6,#18,#4c,#85,#06
	db #46,#05,#48,#09,#42,#05,#46,#09
	db #3e,#05,#3a,#09,#42,#05,#3e,#09
	db #3e,#05,#3a,#05,#42,#09,#3e,#05
	db #3e,#05,#6c,#c7,#08,#fc,#56,#8d
	db #06,#64,#0d,#5e,#0d,#64,#0b,#56
	db #0b,#64,#0b,#56,#0b,#70,#c7,#08
	db #fd,#52,#89,#06,#60,#09,#50,#09
	db #60,#09,#52,#07,#60,#07,#52,#07
	db #72,#c5,#08,#fe,#5a,#85,#06,#60
	db #05,#56,#05,#60,#05,#5a,#03,#5e
	db #03,#56,#03,#52,#03,#5a,#01,#52
	db #01,#56,#01,#4c,#01,#5a,#01,#52
	db #01,#56,#01,#5a,#03,#52,#03,#56
	db #03,#4c,#03,#5a,#05,#52,#05,#56
	db #05,#5a,#05,#5e,#07,#56,#07,#5a
	db #07,#52,#07,#5e,#09,#56,#09,#5a
	db #09,#52,#09,#56,#0b,#4c,#0b,#52
	db #0b,#56,#0b,#5a,#09,#52,#09,#56
	db #09,#4c,#07,#56,#07,#4c,#07,#52
	db #07,#56,#05,#5a,#05,#52,#05,#56
	db #05,#4c,#05,#dc,#b6,#9d,#07,#c4
	db #09,#c4,#08,#c4,#07,#c4,#06,#c4
	db #0f,#c4,#04,#c4,#03,#c4,#02,#c4
	db #02,#c4,#01,#c4,#01,#c4,#01,#c4
	db #00,#c4,#00,#c4,#00,#c2,#ff,#ce
	db #52,#80,#05,#ce,#56,#80,#04,#ce
	db #5b,#ce,#52,#80,#05,#ce,#56,#80
	db #04,#ce,#51,#ce,#52,#80,#05,#ce
	db #4a,#80,#04,#c2,#5a,#87,#02,#da
	db #5d,#da,#5b,#d2,#5d,#d2,#5b,#c2
	db #d0,#6a,#80,#02,#ce,#ca,#ce,#72
	db #80,#02,#ce,#ca,#ce,#6e,#80,#02
	db #ce,#ca,#ce,#6a,#80,#02,#ce,#ca
	db #ce,#74,#80,#02,#ce,#ca,#ce,#6e
	db #80,#02,#ce,#ca,#ce,#6a,#80,#02
	db #ce,#ca,#ce,#6a,#80,#02,#ce,#69
	db #ce,#6b,#ce,#ca,#ce,#72,#80,#02
	db #ce,#ca,#ce,#6e,#80,#02,#ce,#ca
	db #ce,#6a,#80,#02,#ce,#ca,#ce,#68
	db #80,#02,#ce,#ca,#ce,#6a,#80,#02
	db #ce,#ca,#ce,#6e,#80,#02,#ce,#ca
	db #ce,#72,#80,#02,#c2,#4c,#80,#04
	db #4d,#51,#51,#52,#80,#05,#53,#4c
	db #80,#04,#4d,#51,#51,#52,#80,#05
	db #53,#56,#80,#04,#57,#51,#51,#52
	db #80,#05,#53,#56,#80,#04,#57,#5b
	db #5b,#52,#80,#05,#53,#56,#80,#04
	db #57,#51,#51,#52,#80,#05,#53,#4a
	db #80,#04,#4b,#4d,#4d,#51,#51,#52
	db #80,#05,#53,#4c,#80,#04,#4d,#51
	db #51,#52,#80,#05,#53,#56,#80,#04
	db #57,#51,#51,#52,#80,#05,#53,#56
	db #80,#04,#57,#5b,#5b,#52,#80,#05
	db #53,#56,#80,#04,#57,#51,#51,#52
	db #80,#05,#53,#4a,#80,#04,#4b,#d0
	db #6a,#80,#05,#ce,#ca,#ce,#6e,#80
	db #04,#ce,#ca,#ce,#72,#80,#04,#ce
	db #ca,#ce,#6a,#80,#05,#ce,#ca,#ce
	db #74,#80,#05,#ce,#ca,#ce,#6e,#80
	db #04,#ce,#ca,#ce,#72,#80,#04,#ce
	db #ca,#ce,#6a,#80,#05,#d2,#6b,#d2
	db #6e,#80,#04,#d2,#73,#d2,#6a,#80
	db #05,#d2,#75,#d2,#6e,#80,#04,#d2
	db #73,#d2,#6a,#80,#05,#c2,#64,#80
	db #04,#65,#65,#65,#65,#65,#65,#65
	db #65,#65,#65,#65,#65,#65,#65,#65
	db #7d,#7d,#7d,#7d,#7d,#7d,#7d,#7d
	db #7d,#7d,#7d,#7d,#7d,#7d,#7d,#7d
	db #6f,#6f,#6f,#6f,#6f,#6f,#6f,#6f
	db #6f,#6f,#6f,#6f,#6f,#6f,#6f,#6f
	db #87,#87,#87,#87,#87,#87,#87,#87
	db #87,#87,#87,#87,#87,#87,#87,#87
	db #ff

;
.music_info
	db "Au Pied De L'Arbre - 02 - MSX4 2014 (2018)(Futurs)(Tony)",0
	db "StArkos",0

	read "music_end.asm"
