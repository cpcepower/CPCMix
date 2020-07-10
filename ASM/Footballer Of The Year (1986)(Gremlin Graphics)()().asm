; Music of Footballer Of The Year (1986)(Gremlin Graphics)()()
; Ripped by Megachur the 16/12/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FOOTBOTY.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #7ec8

	read "music_header.asm"

.l7ec8
	push bc
	ld b,a
	ld a,c
	ld c,b
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	ret
	ld a,(l803c)
	or a
	ret nz
	ld a,(hl)
	inc hl
	ld (l7f0e),a
	ld (l8038),hl
	ld a,#01
	ld (l803c),a
	ret
	ld c,#07
	ld a,(l7fb5)
	and #f7
	ld (l7fb5),a
	call l7ec8
	ld c,#06
.l7f0e equ $ + 1
	ld a,#1f
	call l7ec8
	ld a,(de)
	inc de
	push af
	ld a,(de)
	inc de
	ld (l7f34),a
	pop af
	ld (l8038),de
	inc a
	call z,l7f3d
	call l7f5a
.l7f26
	ld c,#01
	ld a,d
	call l7ec8
	dec c
	ld a,e
	call l7ec8
	ld c,#08
.l7f34 equ $ + 1
	ld a,#00
	call l7ec8
	ld c,#0e
	jp l7ec8
.l7f3d
	ld (l803c),a
	ld (l7f34),a
	inc a
	ret
	db #05,#0c,#05,#0c,#05,#0c,#06,#0c
	db #06,#0c,#06,#0c,#07,#0c,#07,#0c
	db #07,#0c,#0c,#0c,#ff
.l7f5a
	dec a
	jr z,l7f5f
	add #0c
.l7f5f
	ld hl,l7fb6
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ret
	ld a,(l803d)
	or a
	ret nz
	ld (l803a),hl
	ld a,#01
	ld (l803d),a
	ret
	ld a,(de)
	inc de
	push af
	ld a,(de)
	inc de
	ld (l803a),de
	ld (l7f34),a
	pop af
	inc a
	jr nz,l7f90
	ld (l803d),a
	ld (l7f34),a
	inc a
.l7f90
	call l7f5a
	ld c,#0b
	xor a
	call l7ec8
	inc c
	ld a,#03
	call l7ec8
	inc c
	ld a,#09
	call l7ec8
	ld c,#07
	ld a,(l7fb5)
	or #08
	ld (l7fb5),a
	call l7ec8
	jp l7f26
.l7fb6 equ $ + 1
.l7fb5
	db #38,#00,#00
	dw #04fc,#04b4,#0470,#0431
	dw #03f4,#03bc,#0386,#0353
	dw #0324,#02f6,#02cc,#02a4
	dw #027e,#025a,#0238,#0218
	dw #01fa,#01de,#01c3,#01aa
	dw #0192,#017b,#0166,#0152
	dw #013f,#012d,#011c,#010c
	dw #00fd,#00ef,#00e1,#00d5
	dw #00c9,#00be,#00b3,#00a9
	dw #009f,#0096,#008e,#0086
	dw #007f,#0077,#0071,#006a
	dw #0064,#005f,#0059,#0054
	dw #0050,#004b,#0047,#0043
	dw #003f,#003c,#0038,#0035
	dw #0032,#002f,#002d,#002a
	dw #0028,#0026,#0024,#0022
.l803d equ $ + 5
.l803c equ $ + 4
.l803a equ $ + 2
.l8038
	db #00,#00,#00,#00,#00,#00,#01,#50
.l8041 equ $ + 1
	jp #780b
	or c
	jr nz,l8041
	ret
	push de
	push bc
	push af
	push hl
	call l8169
	ld hl,#0400
	call l8170
	call l8067
	dec h
	dec h
	call l8170
	call l8067
	call l8160
	pop hl
	pop af
	pop bc
	pop de
	ret
.l8067
	ld bc,#03e8
	jp l8041
	ld hl,#0578
	ld de,#00c8
	call l80bb
	ld hl,#0300
	ld de,#0064
	call l80bb
	ld hl,#00fa
	ld de,#0064
	jp l80bb
	ld a,(#6b53)
	add #02
	ld b,a
	call l80cc
	ld hl,(#6b54)
.l8094
	djnz l8094
	ld de,#0050
	xor a
	sbc hl,de
	ret c
	jr l8094
	call l8169
	ld d,#c8
	ld a,#05
.l80a6
	ld c,#01
	call l7ec8
.l80ab
	djnz l80ab
	xor #04
	dec d
	jr nz,l80a6
	jp l8160
.l80b5
	ld hl,#0800
	ld de,#0800
.l80bb
	call l8169
.l80be
	call l8170
.l80c1
	djnz l80c1
	dec hl
	dec de
	ld a,d
	or e
	jr nz,l80be
	jp l8160
.l80cc
	ld a,b
	ld c,#01
	call l7ec8
	ld c,#08
	ld de,#0640
	jp l818a
	push af
	ex af,af'
	push af
	push bc
	push de
	push hl
	call #266f
	jr c,l810a
	ld c,#0a
	ld de,#012c
	call l818a
	ld bc,#0ed8
	call l8041
	ld c,#0a
	xor a
	call l7ec8
	ld bc,#01f4
.l80fc
	push bc
	ld a,#2f
	call #7c93
	pop bc
	jr z,l810a
	dec bc
	ld a,b
	or c
	jr nz,l80fc
.l810a
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	pop af
	ret
	push af
	ex af,af'
	push af
	push bc
	push de
	push hl
	call #266f
	jr c,l810a
	ld hl,#05dc
.l811f
	call l8170
	ld c,#08
	ld de,#04b0
	call l818a
	ld bc,#00c8
	jp l80fc
	push af
	ex af,af'
	push af
	push bc
	push de
	push hl
	call #266f
	jr c,l810a
	ld hl,#0960
	jr l811f
	call l8143
.l8143
	call l8149
	call l8149
.l8149
	ld hl,#0400
	call l8169
.l814f
	call l8170
	dec hl
	ld a,h
	or l
	jr nz,l814f
.l8157
	call l8170
	inc hl
	ld a,h
	cp #04
	jr nz,l8157
.l8160
	ld c,#08
	xor a
	call l7ec8
	jp l81a3
.l8169
	ld c,#08
	ld a,#0f
	jp l7ec8
.l8170
	ld c,#00
	ld a,l
	call l7ec8
	inc c
	ld a,h
	jp l7ec8
	jp l80b5
	ld a,#02
	ld c,#01
	call l7ec8
	ld c,#09
	ld de,#01f4
.l818a
	push bc
	ld c,#0b
	ld a,e
	call l7ec8
	inc c
	ld a,d
	call l7ec8
	ld a,#09
	ld c,#0d
	call l7ec8
	pop bc
	ld a,#10
	call l7ec8
.l81a3
	ld c,#0e
	xor a
	jp l7ec8
;
.stop_music
;
	ld c,#07
	ld a,#1c
	call l7ec8
	inc c
	xor a
	call l7ec8
	inc c
	call l7ec8
	inc c
	call l7ec8
	jp l81a3
	jp l81f7
	jp l88f3
.l81c6
	call l81cd
	ld a,#0e
	ld c,#00
.l81cd
	push bc
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	ret
.l81ed
	nop
.l81ee
	jp l8236
	ld l,(ix+#00)
	ld h,(ix+#01)
;
.init_music
.l81f7
;
	ld hl,l8905
	push hl
	ld hl,l8875
	ld de,l8876
	ld bc,#007d
	ld (hl),#00
	ldir
	pop hl
	ld (l8801),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld a,l
	ld (l888c),a
	ld a,h
	ld (l888d),a
	push hl
	add hl,de
	ld a,l
	ld (l88b6),a
	ld a,h
	ld (l88b7),a
	pop hl
	add hl,bc
	ld a,l
	ld (l88e0),a
	ld a,h
	ld (l88e1),a
	ld a,#01
	ld (l81ed),a
	ret
.l8236
	ld a,(l81ed)
	or a
	ret z
	xor a
	ld (l8804),a
	ld ix,l8875
	call l825b
	ld a,#01
	ld (l8804),a
	ld ix,l889f
	call l825b
	ld a,#02
	ld (l8804),a
	ld ix,l88c9
.l825b
	ld a,(ix+#00)
	or a
	jr z,l82d3
	dec (ix+#00)
	ld a,(ix+#08)
	or a
	jr z,l8270
	dec a
	ld (ix+#08),a
	jr l8285
.l8270
	ld a,(ix+#0a)
	or a
	jr z,l827c
	dec a
	ld (ix+#0a),a
	jr l8285
.l827c
	ld a,(ix+#09)
	ld (ix+#0a),a
	inc (ix+#0b)
.l8285
	ld a,(ix+#01)
	and #03
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l881d
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call l8344
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(ix+#11)
	add h
	ld h,a
	ld (ix+#0d),h
	ld a,(ix+#01)
	srl a
	srl a
	srl a
	and #07
	ld b,a
	call nz,l854d
	ld a,(ix+#01)
	rlca
	rlca
	and #03
	ld b,a
	call nz,l84ec
	call l8510
	ld a,(ix+#02)
	and #03
	call nz,l8532
	call l83b6
	call l8345
	ret
.l82d3
	ld a,(ix+#16)
	ld (ix+#24),a
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,(hl)
	or a
	jp z,l85a1
	bit 7,a
	jp nz,l85b9
	cp #1a
	jp nc,l8301
	push hl
	pop iy
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l8823
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call l8344
.l8301
	ld l,(ix+#17)
	ld h,(ix+#18)
	inc hl
	inc hl
	ld (ix+#17),l
	ld (ix+#18),h
	ld a,(l8804)
	or a
	jp nz,l825b
	ld de,(l8801)
	push hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	inc hl
	inc hl
	add hl,de
	ex de,hl
	pop hl
	or a
	sbc hl,de
	jp c,l825b
	xor a
	ld (l81ed),a
	ld c,#08
	xor a
	call l7ec8
	inc c
	xor a
	call l7ec8
	inc c
	xor a
	call l7ec8
	ld c,#0e
	jp l7ec8
.l8344
	jp (hl)
.l8345
	ld a,(ix+#28)
	bit 7,a
	ld c,#00
	jr z,l8350
	ld c,#ff
.l8350
	add l
	ld l,a
	ld a,h
	adc c
	ld h,a
	ld a,(l8804)
	add a
	ld e,a
	ld c,l
	call l81c6
	ld a,e
	inc a
	ld c,h
	call l81c6
	ld a,(ix+#06)
	ld c,a
	ld a,(l8804)
	add #08
	call l81c6
	bit 2,(ix+#02)
	jr z,l837e
	ld c,(ix+#20)
	ld a,#06
	call l81c6
.l837e
	bit 6,(ix+#02)
	jr z,l83aa
	ld c,(ix+#21)
	ld a,#0b
	call l81c6
	ld c,(ix+#22)
	ld a,#0c
	call l81c6
	ld a,(ix+#02)
	and #03
	jr z,l83aa
	ld a,(ix+#24)
	and #80
	jr nz,l83aa
	ld c,(ix+#23)
	ld a,#0d
	call l81c6
.l83aa
	ld a,(l8803)
	or #80
	ld c,a
	ld a,#07
	call l81c6
	ret
.l83b6
	call l83ef
	ld a,(ix+#24)
	and #80
	ret nz
	ld a,(ix+#0c)
	or (ix+#0d)
	call z,l845c
	bit 2,(ix+#02)
	call nz,l840d
	bit 3,(ix+#02)
	call nz,l8476
	bit 4,(ix+#02)
	call nz,l8461
	bit 5,(ix+#02)
	jr z,l83e7
	ld (ix+#06),#10
.l83e7
	bit 6,(ix+#02)
	call nz,l842d
	ret
.l83ef
	ld a,(l8804)
	ld d,#08
	ld e,#01
.l83f6
	or a
	jr z,l8400
	dec a
	rlc d
	rlc e
	jr l83f6
.l8400
	ld a,e
	xor #ff
	ld e,a
	ld a,(l8803)
	and e
	or d
	ld (l8803),a
	ret
.l840d
	ld a,(ix+#0c)
	or (ix+#0d)
	ret z
	ld a,(l8804)
	ld d,#08
.l8419
	or a
	jr z,l8421
	dec a
	rlc d
	jr l8419
.l8421
	ld a,d
	xor #ff
	ld d,a
	ld a,(l8803)
	and d
	ld (l8803),a
	ret
.l842d
	ld (ix+#21),l
	ld (ix+#22),h
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	ret
.l845c
	xor a
	ld (ix+#06),a
	ret
.l8461
	ld a,(l8804)
	ld d,#01
.l8466
	or a
	jr z,l846e
	dec a
	rlc d
	jr l8466
.l846e
	ld a,(l8803)
	or d
	ld (l8803),a
	ret
.l8476
	push hl
	ld b,#06
.l8479
	srl h
	rr l
	djnz l8479
	ld a,l
	pop hl
	ld (ix+#20),a
	ret
.l8485
	dec (ix+#27)
	ret nz
	ld a,(ix+#25)
	ld (ix+#27),a
	ld a,(ix+#04)
	srl a
	srl a
	srl a
	srl a
	add (ix+#06)
	cp (ix+#03)
	jr c,l84ac
	inc (ix+#01)
	ld a,(ix+#03)
	ld (ix+#27),#01
.l84ac
	ld (ix+#06),a
	ret
.l84b0
	dec (ix+#27)
	ret nz
	ld a,(ix+#26)
	ld (ix+#27),a
	ld a,(ix+#04)
	and #0f
	ld b,a
	ld c,(ix+#05)
	srl c
	srl c
	srl c
	srl c
	ld a,(ix+#03)
	cp c
	jr nc,l84d2
	ld c,a
.l84d2
	ld a,(ix+#06)
	sub b
	jr c,l84db
	cp c
	jr nc,l84df
.l84db
	inc (ix+#01)
	ld a,c
.l84df
	ld (ix+#06),a
.l84e2
	ret
.l84e3
	ld a,(ix+#01)
	xor #04
	ld (ix+#01),a
	ret
.l84ec
	ld a,(ix+#0a)
	or a
	call z,l84e3
	ld a,b
	cp #02
	jr nz,l8503
	ld a,(ix+#01)
	and #04
	ret z
	srl h
	rr l
	ret
.l8503
	ld a,(ix+#01)
	and #04
	ret z
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	ret
.l8510
	ld a,(ix+#08)
	or a
	ret nz
	ld a,(ix+#0a)
	or a
	ret nz
	ld a,(ix+#0b)
	bit 0,a
	ret z
	and #03
	cp #02
	jr c,l852c
	ld a,(ix+#19)
	add l
	ld l,a
	ret
.l852c
	ld a,l
	sub (ix+#19)
	ld l,a
	ret
.l8532
	cp #01
	jr z,l8537
	ret
.l8537
	ld a,(ix+#24)
	and #7f
	jr nz,l8549
	ld a,(ix+#24)
	xor #80
	or (ix+#16)
	ld (ix+#24),a
.l8549
	dec (ix+#24)
	ret
.l854d
	ld a,(ix+#08)
	or a
	ret nz
	ld a,b
	cp #01
	jr z,l8572
	ld e,(ix+#10)
	ld d,#00
	cp #03
	jr nz,l856a
	ld a,e
	cpl
	add #01
	ld e,a
	ld a,d
	cpl
	adc #00
	ld d,a
.l856a
	add hl,de
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.l8572
	push hl
	ld c,(ix+#10)
	ld b,#00
	ld e,(ix+#0e)
	ld d,(ix+#0f)
	or a
	sbc hl,de
	pop hl
	ret z
	jr c,l8591
	or a
	sbc hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr nc,l859a
	jr l8599
.l8591
	add hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr c,l859a
.l8599
	ex de,hl
.l859a
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.l85a1
	ld (ix+#0c),#00
	ld (ix+#0d),#00
.l85a9
	inc hl
	ld a,(hl)
	cp #ff
	jp z,l8628
	ld (ix+#00),a
	call l8637
	jp l8301
.l85b9
	push hl
	res 7,a
	call l85f0
	add (ix+#15)
	ld b,#00
.l85c4
	cp #0c
	jr c,l85cd
	sub #0c
	inc b
	jr l85c4
.l85cd
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l8805
	add hl,de
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld a,b
	or a
	jr z,l85a9
.l85e3
	srl (ix+#0d)
	rr (ix+#0c)
	djnz l85e3
	jp l85a9
.l85f0
	push af
	ld a,(ix+#29)
	or a
	jr z,l8626
	pop af
	push af
	add (ix+#29)
	ld b,#00
.l85fe
	cp #0c
	jr c,l8607
	sub #0c
	inc b
	jr l85fe
.l8607
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l8805
	add hl,de
	ld a,(hl)
	ld (ix+#0e),a
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	ld a,b
	or a
	jr z,l8626
.l861c
	srl (ix+#0f)
	rr (ix+#0e)
	djnz l861c
.l8626
	pop af
	ret
.l8628
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	jp l8301
.l8637
	ld (ix+#06),#00
	ld a,(ix+#07)
	ld (ix+#08),a
	ld a,(ix+#01)
	and #fc
	ld (ix+#01),a
	ld (ix+#27),#01
	ret
.l864e
	ld a,(iy+#01)
	bit 7,a
	jr z,l865b
	and #0f
	ld (ix+#03),a
	ret
.l865b
	push ix
	and #0f
	ld ix,l8875
	ld (ix+#03),a
	ld ix,l889f
	ld (ix+#03),a
	ld ix,l88c9
	ld (ix+#03),a
	pop ix
	ret
.l8677
	push hl
	push de
	push bc
	ld a,(iy+#01)
	srl a
	srl a
	srl a
	srl a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l8855
	add hl,de
	ld c,(hl)
	sla c
	sla c
	sla c
	sla c
	inc hl
	ld a,(hl)
	ld (ix+#25),a
	ld a,(iy+#01)
	and #0f
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l8855
	add hl,de
	ld a,(hl)
	and #0f
	or c
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	ld (ix+#27),#01
	pop bc
	pop de
	pop hl
	ret
.l86bc
	ld a,(iy+#01)
	res 6,(ix+#02)
	bit 7,a
	jr z,l86cf
	set 6,(ix+#02)
	set 5,(ix+#02)
.l86cf
	res 7,a
	or a
	jr z,l86e0
	set 2,(ix+#02)
	cp #20
	jr nc,l86e9
	ld (ix+#20),a
	ret
.l86e0
	ld a,(ix+#02)
	and #03
	ld (ix+#02),a
	ret
.l86e9
	set 3,(ix+#02)
	cp #21
	ret c
	set 4,(ix+#02)
	bit 6,a
	ret z
	res 6,a
	res 4,a
	ld (ix+#20),a
	ret
.l86ff
	ret
.l8700
	ld a,(iy+#01)
	or a
	jr z,l8714
	ld (ix+#16),a
	ld a,(ix+#02)
	and #fc
	or #01
	ld (ix+#02),a
	ret
.l8714
	ld a,(ix+#02)
	and #fc
	ld (ix+#02),a
	res 7,(ix+#24)
	ld (ix+#16),#00
	ret
.l8725
	ld a,(iy+#01)
	ld (ix+#09),a
	ld (ix+#0a),a
	ret
.l872f
	ret
.l8730
	ld a,(iy+#01)
	and #03
	rrca
	rrca
	ld b,a
	ld a,(ix+#01)
	and #3f
	or b
	ld (ix+#01),a
	ret
.l8742
	ld a,(iy+#01)
	ld (ix+#07),a
	ret
.l8749
	ld a,(iy+#01)
	ld (ix+#05),a
	ret
.l8750
	ld a,(iy+#01)
	xor #ff
	srl a
	srl a
	srl a
	srl a
	srl a
	srl a
	ld (ix+#19),a
	ret
.l8765
	ld a,(iy+#01)
	ld (ix+#11),a
	ret
.l876c
	ld a,(iy+#01)
	ld (ix+#10),a
	ret
.l8773
	ret
.l8774
	ld a,(iy+#01)
	and #07
	ld b,a
	sla b
	sla b
	sla b
	ld a,(ix+#01)
	and #c7
	or b
	ld (ix+#01),a
	ret
.l878a
	ld a,(ix+#1c)
	or a
	jr nz,l8793
	ld a,(iy+#01)
.l8793
	dec a
	ld (ix+#1c),a
	ret z
	ld a,(ix+#1a)
	ld (ix+#17),a
	ld a,(ix+#1b)
	ld (ix+#18),a
	ret
.l87a5
	ld a,(ix+#17)
	ld (ix+#1a),a
	ld a,(ix+#18)
	ld (ix+#1b),a
	ret
.l87b2
	ld a,(ix+#1f)
	or a
	jr nz,l87bb
	ld a,(iy+#01)
.l87bb
	dec a
	ld (ix+#1f),a
	ret z
	ld a,(ix+#1d)
	ld (ix+#17),a
	ld a,(ix+#1e)
	ld (ix+#18),a
	ret
.l87cd
	ld a,(ix+#17)
	ld (ix+#1d),a
	ld a,(ix+#18)
	ld (ix+#1e),a
	ret
.l87da
	ld a,(iy+#01)
	ld (ix+#15),a
	ret
.l87e1
	ld a,(iy+#01)
	ld (ix+#23),a
	ret
.l87e8
	ld a,(iy+#01)
	ld (ix+#28),a
	ret
.l87ef
	ret
.l87f0
	ld a,(iy+#01)
	add (ix+#15)
	ld (ix+#15),a
	ret
.l87fa
	ld a,(iy+#01)
	ld (ix+#29),a
	ret
.l8805 equ $ + 4
.l8804 equ $ + 3
.l8803 equ $ + 2
.l8801
	db #00,#00,#00,#00,#dd,#0e,#07,#0e
	db #3e,#0d,#80,#0c,#cc,#0b,#23,#0b
	db #83,#0a,#ec,#09,#5d,#09,#d6,#08
	db #57,#08,#e0,#07
.l8823 equ $ + 6
.l881d
	dw l8485,l84b0,l84e2,l864e
	dw l8677,l86bc,l86ff,l8700
	dw l8725,l872f,l8730,l8742
	dw l8749,l8750,l8765,l876c
	dw l8773,l8774,l878a,l87a5
	dw l87b2,l87cd,l87da,l87e1
	dw l87e8,l87ef,l87f0,l87fa
.l8855
	db #0f,#01,#0d,#01,#0b,#01,#09,#01
	db #07,#01,#05,#01,#03,#01,#02,#01
	db #01,#01,#01,#0a,#01,#1e,#01,#46
	db #01,#6e,#01,#b4,#01,#dc,#01,#ff
.l8876 equ $ + 1
.l8875
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l888c equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l888d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l889f equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l88b7 equ $ + 2
.l88b6 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l88c9 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l88e1 equ $ + 4
.l88e0 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
;
.play_music
.l88f3
;
	ld a,(l81ed)
	and a
	call z,l81f7
	ld bc,#07b7
.l88fd
	dec bc
	ld a,b
	or c
	jr nz,l88fd
	jp l81ee
.l8905
	db #e6,#01,#18,#04,#01,#0e,#02,#2b
	db #0a,#2c,#13,#01,#11,#01,#9f,#06
	db #9f,#06,#9f,#06,#98,#0c,#a4,#0c
	db #a4,#06,#a4,#0c,#a4,#0c,#a4,#0c
	db #a4,#06,#a4,#06,#10,#02,#14,#fd
	db #12,#02,#14,#00,#9f,#06,#9f,#06
	db #9f,#06,#02,#18,#11,#00,#98,#0c
	db #10,#06,#98,#06,#98,#06,#9a,#06
	db #9c,#06,#13,#01,#11,#01,#9d,#0c
	db #9d,#0c,#a9,#0c,#a9,#06,#9d,#0c
	db #9d,#0c,#9d,#06,#a9,#0c,#a9,#0c
	db #10,#02,#14,#fd,#12,#02,#14,#00
	db #11,#01,#02,#2c,#98,#0c,#98,#0c
	db #9a,#0c,#9a,#06,#9c,#0c,#9c,#0c
	db #9c,#06,#9d,#0c,#9d,#0c,#14,#07
	db #10,#02,#14,#00,#13,#01,#11,#01
	db #a6,#0c,#a4,#0c,#9a,#0c,#a1,#0c
	db #10,#04,#14,#fe,#12,#02,#14,#00
	db #13,#01,#11,#01,#a4,#06,#a4,#0c
	db #a4,#06,#18,#ff,#10,#06,#14,#00
	db #a4,#1e,#9f,#06,#9f,#06,#9f,#06
	db #12,#02,#11,#01,#a2,#0c,#a2,#0c
	db #a1,#06,#a1,#0c,#9f,#1e,#9f,#18
	db #10,#04,#13,#01,#11,#01,#98,#0c
	db #98,#06,#98,#06,#a2,#06,#a4,#0c
	db #a2,#0c,#9f,#0c,#9f,#0c,#9d,#06
	db #9c,#06,#98,#06,#10,#02,#14,#fd
	db #12,#02,#14,#00,#11,#01,#98,#0c
	db #98,#0c,#9a,#0c,#9a,#06,#9c,#0c
	db #9c,#0c,#9c,#06,#9d,#0c,#9d,#0c
	db #14,#07,#10,#02,#14,#00,#13,#01
	db #11,#01,#93,#0c,#9f,#0c,#10,#03
	db #93,#0c,#9d,#06,#9f,#06,#12,#04
	db #14,#fd,#13,#01,#11,#01,#9f,#06
	db #9f,#06,#a9,#06,#ab,#0c,#ab,#06
	db #a6,#06,#9f,#06,#10,#03,#9f,#06
	db #a6,#06,#ab,#06,#a9,#06,#a6,#06
	db #a4,#06,#a3,#06,#9f,#06,#12,#02
	db #14,#00,#13,#01,#11,#01,#98,#0c
	db #a4,#0c,#10,#04,#18,#fe,#12,#03
	db #14,#00,#11,#01,#93,#0c,#9f,#0c
	db #10,#02,#11,#01,#97,#0c,#a3,#0c
	db #10,#02,#00,#c8,#00,#b8,#13,#01
	db #0d,#0a,#11,#01,#0f,#04,#bc,#06
	db #bc,#06,#bc,#06,#be,#0c,#bc,#0c
	db #bc,#06,#14,#fc,#10,#02,#14,#00
	db #12,#03,#13,#01,#11,#01,#c3,#06
	db #10,#04,#18,#fe,#12,#04,#14,#00
	db #13,#01,#11,#01,#0f,#00,#a6,#0c
	db #a4,#0c,#9a,#0c,#a1,#0c,#10,#04
	db #14,#fe,#12,#02,#14,#00,#02,#18
	db #11,#01,#a6,#0c,#10,#10,#11,#01
	db #a4,#0c,#10,#10,#13,#01,#02,#19
	db #11,#01,#a4,#0c,#a4,#0c,#a2,#0c
	db #a2,#06,#a1,#0c,#a1,#0c,#a1,#06
	db #9f,#0c,#9f,#0c,#14,#f9,#10,#02
	db #14,#00,#12,#02,#11,#01,#a2,#0c
	db #a2,#0c,#a1,#06,#a1,#0c,#a0,#0c
	db #a0,#0c,#a0,#06,#9f,#06,#9f,#06
	db #9f,#06,#9f,#06,#10,#02,#98,#0c
	db #98,#0c,#9f,#06,#9f,#0c,#a4,#24
	db #00,#01,#01,#0e,#02,#29,#0a,#2c
	db #13,#01,#11,#01,#16,#0a,#9f,#06
	db #9f,#06,#9f,#06,#98,#0c,#16,#00
	db #b7,#0c,#b5,#06,#b5,#0c,#b4,#0c
	db #b4,#0c,#b4,#06,#b5,#06,#10,#02
	db #14,#fd,#12,#02,#14,#00,#02,#19
	db #0a,#5f,#bc,#06,#be,#06,#c0,#06
	db #c3,#60,#14,#05,#11,#01,#b7,#ff
	db #08,#01,#c0,#0c,#be,#0c,#bc,#0c
	db #bb,#06,#bc,#0c,#b7,#0c,#b7,#0c
	db #b7,#06,#bc,#06,#be,#06,#c0,#0c
	db #be,#0c,#bc,#06,#bb,#0c,#bc,#36
	db #14,#02,#10,#02,#02,#18,#08,#02
	db #14,#00,#11,#01,#ab,#0c,#ab,#0c
	db #ad,#0c,#ad,#06,#b0,#0c,#b0,#0c
	db #b0,#06,#b0,#0c,#b0,#0c,#14,#07
	db #10,#02,#c2,#ff,#14,#00,#13,#01
	db #11,#01,#08,#01,#be,#06,#be,#06
	db #bc,#06,#be,#0c,#be,#0c,#be,#06
	db #10,#04,#14,#fe,#12,#02,#14,#00
	db #13,#01,#11,#01,#08,#02,#c0,#0c
	db #c0,#0c,#be,#0c,#be,#06,#be,#0c
	db #be,#0c,#be,#06,#bc,#0c,#bc,#0c
	db #bc,#0c,#bc,#0c,#be,#0c,#be,#06
	db #bc,#36,#12,#02,#11,#01,#be,#0c
	db #be,#0c,#be,#06,#be,#0c,#be,#0c
	db #be,#0c,#be,#06,#b2,#0c,#b2,#0c
	db #10,#04,#cc,#ff,#13,#01,#11,#01
	db #08,#01,#c8,#06,#c8,#06,#c8,#06
	db #c8,#0c,#c8,#0c,#c8,#06,#10,#04
	db #14,#fd,#12,#02,#14,#00,#11,#01
	db #08,#02,#ab,#0c,#ab,#0c,#ad,#0c
	db #ad,#06,#b0,#0c,#b0,#0c,#b0,#06
	db #b0,#0c,#b0,#0c,#14,#07,#10,#02
	db #14,#00,#13,#01,#11,#01,#c7,#06
	db #c7,#06,#c5,#06,#c3,#0c,#c5,#0c
	db #c7,#0c,#c7,#06,#c8,#06,#ca,#06
	db #c8,#06,#c7,#06,#c3,#06,#be,#06
	db #c7,#06,#c7,#06,#c5,#06,#c3,#0c
	db #c5,#0c,#c7,#0c,#c7,#06,#c8,#06
	db #ca,#06,#c8,#18,#10,#02,#14,#fd
	db #12,#02,#14,#00,#11,#01,#08,#02
	db #b0,#0c,#b0,#0c,#b0,#0c,#b0,#06
	db #b4,#0c,#b4,#0c,#b4,#06,#b4,#0c
	db #b4,#0c,#18,#fe,#10,#03,#14,#fb
	db #b0,#06,#b0,#06,#b0,#06,#b0,#0c
	db #b0,#06,#b0,#06,#b0,#06,#b4,#06
	db #b4,#06,#b4,#06,#b4,#0c,#b4,#06
	db #b4,#06,#b4,#06,#02,#08,#0a,#0e
	db #00,#c0,#11,#00,#03,#21,#98,#0c
	db #98,#06,#98,#06,#bc,#0c,#bc,#06
	db #bc,#06,#98,#06,#98,#06,#98,#06
	db #98,#06,#bc,#0c,#bc,#0c,#10,#06
	db #03,#00,#c2,#ff,#14,#00,#13,#01
	db #11,#01,#08,#01,#be,#06,#be,#06
	db #bc,#06,#be,#0c,#be,#0c,#be,#06
	db #10,#04,#14,#fe,#12,#02,#14,#00
	db #14,#00,#13,#01,#11,#01,#be,#06
	db #be,#06,#bc,#06,#be,#0c,#be,#0c
	db #be,#06,#10,#04,#14,#fe,#12,#02
	db #14,#00,#11,#01,#c3,#0c,#c3,#0c
	db #c3,#0c,#c3,#06,#c1,#0c,#c1,#0c
	db #c1,#06,#c1,#0c,#c1,#0c,#c5,#0c
	db #c5,#0c,#c3,#0c,#c3,#06,#c3,#0c
	db #c3,#0c,#c3,#06,#c3,#0c,#c3,#0c
	db #10,#02,#11,#01,#02,#29,#08,#00
	db #b5,#0c,#b5,#0c,#b6,#06,#b6,#0c
	db #b0,#0c,#b0,#0c,#b0,#06,#af,#06
	db #9f,#06,#9f,#06,#9f,#06,#10,#02
	db #b4,#0c,#b4,#0c,#b2,#06,#b2,#0c
	db #b4,#24,#00,#01,#01,#0e,#02,#26
	db #0a,#2c,#13,#01,#11,#01,#16,#14
	db #9f,#06,#9f,#06,#9f,#06,#98,#0c
	db #16,#00,#b4,#0c,#ad,#06,#ad,#0c
	db #ab,#0c,#ab,#0c,#ab,#06,#ad,#06
	db #10,#02,#14,#fd,#12,#02,#14,#00
	db #02,#19,#0a,#5f,#c0,#06,#c1,#06
	db #c3,#06,#c6,#60,#14,#05,#13,#01
	db #c3,#0c,#c1,#0c,#c0,#0c,#be,#06
	db #c0,#0c,#bc,#0c,#bc,#0c,#be,#06
	db #c0,#06,#c1,#06,#c3,#0c,#c1,#0c
	db #c0,#06,#be,#0c,#c0,#36,#14,#02
	db #12,#02,#02,#18,#08,#02,#14,#00
	db #11,#01,#c0,#0c,#c0,#0c,#c2,#0c
	db #c2,#06,#c3,#0c,#c3,#0c,#c3,#06
	db #c5,#0c,#c5,#0c,#14,#07,#10,#02
	db #14,#00,#11,#01,#08,#02,#ca,#06
	db #ca,#06,#c8,#06,#ca,#0c,#ca,#0c
	db #08,#00,#ce,#0c,#ce,#06,#cf,#06
	db #d1,#06,#cf,#06,#ce,#06,#ca,#06
	db #c8,#06,#08,#02,#ca,#06,#ca,#06
	db #c8,#06,#ca,#0c,#ca,#0c,#08,#00
	db #ce,#0c,#cf,#06,#ce,#06,#ca,#06
	db #c8,#18,#14,#fe,#10,#02,#14,#00
	db #11,#01,#08,#02,#cf,#0c,#cf,#0c
	db #cf,#0c,#cf,#06,#cd,#0c,#cd,#0c
	db #cd,#06,#cd,#0c,#cd,#0c,#cb,#0c
	db #cb,#0c,#cf,#0c,#cf,#06,#d4,#36
	db #10,#02,#11,#01,#c1,#0c,#c1,#0c
	db #c5,#06,#c5,#0c,#c7,#0c,#c7,#0c
	db #c7,#06,#c8,#06,#c8,#06,#c7,#06
	db #c3,#06,#10,#02,#c6,#0c,#c6,#0c
	db #ca,#06,#ca,#0c,#c7,#0c,#c7,#0c
	db #c7,#06,#c8,#06,#c8,#06,#c7,#06
	db #c3,#06,#c6,#06,#c8,#06,#ca,#06
	db #c6,#06,#c9,#06,#ca,#06,#cc,#06
	db #ce,#06,#cf,#06,#d1,#06,#d3,#06
	db #d4,#06,#d6,#06,#d4,#06,#d3,#06
	db #cf,#06,#02,#55,#0a,#5f,#13,#01
	db #08,#00,#cf,#0c,#cd,#0c,#cc,#06
	db #cc,#06,#ca,#06,#cc,#0c,#c8,#0c
	db #c8,#0c,#ca,#06,#cc,#06,#cd,#06
	db #cf,#0c,#cd,#0c,#cc,#06,#ca,#0c
	db #cc,#36,#14,#fd,#12,#02,#14,#00
	db #11,#01,#08,#02,#c0,#0c,#c0,#0c
	db #c2,#0c,#c2,#06,#c3,#0c,#c3,#0c
	db #c3,#06,#c5,#0c,#c5,#0c,#14,#07
	db #10,#02,#14,#00,#13,#01,#11,#01
	db #ca,#06,#ca,#06,#c8,#06,#c7,#0c
	db #c8,#0c,#ca,#0c,#ca,#06,#cc,#06
	db #cf,#06,#cc,#06,#ca,#06,#c7,#06
	db #c3,#06,#ca,#06,#ca,#06,#c8,#06
	db #c7,#0c,#c8,#0c,#ca,#0c,#ca,#06
	db #cc,#06,#cf,#06,#cd,#18,#10,#02
	db #14,#35,#12,#02,#14,#00,#11,#01
	db #08,#02,#b0,#0c,#b0,#0c,#b4,#0c
	db #b4,#06,#b7,#0c,#b7,#0c,#b7,#06
	db #bc,#0c,#bc,#0c,#18,#fe,#10,#03
	db #14,#fb,#b0,#06,#b0,#06,#b0,#06
	db #b4,#0c,#b4,#06,#b5,#06,#b4,#06
	db #b7,#06,#b7,#06,#b7,#06,#ba,#0c
	db #ba,#06,#bc,#06,#be,#06,#0a,#0d
	db #14,#00,#02,#07,#08,#00,#11,#01
	db #d4,#0c,#d4,#0c,#d4,#0c,#d4,#06
	db #d4,#0c,#d4,#0c,#d4,#06,#d4,#0c
	db #d4,#0c,#10,#08,#13,#01,#11,#01
	db #08,#02,#ca,#06,#ca,#06,#c8,#06
	db #ca,#0c,#ca,#0c,#08,#00,#ce,#0c
	db #ce,#06,#cf,#06,#d1,#06,#cf,#06
	db #ce,#06,#ca,#06,#c8,#06,#08,#02
	db #ca,#06,#ca,#06,#c8,#06,#ca,#0c
	db #ca,#0c,#08,#00,#ce,#0c,#cf,#06
	db #ce,#06,#ca,#06,#c8,#18,#14,#fe
	db #10,#02,#14,#00,#12,#02,#11,#01
	db #cc,#0c,#cc,#0c,#ca,#0c,#ca,#06
	db #c8,#0c,#c8,#0c,#c8,#06,#c8,#0c
	db #c8,#0c,#c8,#0c,#c8,#0c,#c6,#0c
	db #c6,#06,#c7,#0c,#c7,#0c,#c7,#06
	db #c8,#0c,#c8,#0c,#10,#02,#11,#01
	db #02,#26,#08,#00,#be,#0c,#be,#0c
	db #be,#06,#be,#0c,#bf,#0c,#bf,#0c
	db #bc,#06,#be,#06,#93,#06,#93,#06
	db #93,#06,#10,#02,#c3,#0c,#c3,#0c
	db #c1,#06,#c1,#0c,#c3,#24,#00,#01
	db #00,#00
;
.music_info
	db "Footballer Of The Year (1986)(Gremlin Graphics)()",0
	db "",0

	read "music_end.asm"
