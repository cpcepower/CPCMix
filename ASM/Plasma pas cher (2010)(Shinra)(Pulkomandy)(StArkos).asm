; Music of Plasma pas cher (2010)(Shinra)(Pulkomandy)(StArkos)
; Ripped by Megachur the 14/12/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PLASMAPC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #8080

	read "music_header.asm"

	jp l88f0
	jp l808d
	jp l88d4
.l808c equ $ + 3
.l808b equ $ + 2
	db #80,#80,#00,#00
;
.play_music
.l808d
;
	xor a
	ld (l808b),a
	ld (l88bb),a
.l8095 equ $ + 1
	ld a,#00
.l8097 equ $ + 1
	cp #00
	jr z,l80a1
	inc a
	ld (l8095),a
	jp l8330
.l80a1
	xor a
	ld (l8095),a
.l80a5
	or a
	jp nc,l8187
	ld (l81af),a
	ld (l821a),a
	ld (l8285),a
	ld a,#b7
	ld (l80a5),a
.l80b8 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l80ee
.l80be equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l80eb
	ld b,a
	and #1f
	bit 4,a
	jr z,l80cf
	or #e0
.l80cf
	ld (l81bc),a
	rl b
	rl b
	jr nc,l80dd
	ld a,(hl)
	ld (l8227),a
	inc hl
.l80dd
	rl b
	jr nc,l80e6
	ld a,(hl)
	ld (l8292),a
	inc hl
.l80e6
	ld (l80be),hl
	jr l80f1
.l80eb
	ld (l80be),hl
.l80ee
	ld (l80b8),a
.l80f2 equ $ + 1
.l80f1
	ld a,#00
	sub #01
	jr c,l80fe
	ld (l80f2),a
.l80fb equ $ + 1
	ld a,#00
	jr l8119
.l80ff equ $ + 1
.l80fe
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l810c
	ld (l80ff),hl
	jr l8119
.l810c
	ld (l80fb),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l80ff),hl
	ld (l80f2),a
	ld a,b
.l8119
	ld (l82f0),a
.l811d equ $ + 1
	ld hl,#0000
	ld de,l81b5
	ldi
	ldi
	ld de,l8220
	ldi
	ldi
	ld de,l828b
	ldi
	ldi
	ld (l811d),hl
.l8138 equ $ + 1
	ld a,#00
	or a
	jr nz,l814a
.l813d equ $ + 1
	ld a,#00
	sub #01
	jr c,l8158
	ld (l813d),a
.l8146 equ $ + 1
	ld hl,#0000
	jr l8190
.l814b equ $ + 1
.l814a
	ld a,#00
	sub #01
	jr c,l8158
	ld (l814b),a
	ld hl,(l8159)
	jr l817d
.l8159 equ $ + 1
.l8158
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l8175
	ld (l813d),a
	xor a
	ld (l8138),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8159),hl
	ex de,hl
	ld (l8146),hl
	jr l8190
.l8175
	ld (l814b),a
	ld a,#01
	ld (l8138),a
.l817d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8159),hl
	ex de,hl
	jr l8190
.l8188 equ $ + 1
.l8187
	ld a,#00
	sub #01
	jr nc,l81ab
.l818e equ $ + 1
	ld hl,#0000
.l8190
	ld a,(hl)
	inc hl
	srl a
	jr c,l81a8
	srl a
	jr c,l819f
	ld (l8097),a
	jr l81a7
.l819f
	ld (l808b),a
.l81a3 equ $ + 1
	ld a,#01
	ld (l808c),a
.l81a7
	xor a
.l81a8
	ld (l818e),hl
.l81ab
	ld (l8188),a
.l81af equ $ + 1
	ld a,#00
	sub #01
	jr nc,l8216
.l81b5 equ $ + 1
	ld hl,#0000
.l81b8 equ $ + 1
	ld bc,#0100
.l81bc equ $ + 2
.l81bb equ $ + 1
	ld de,#0000
.l81bf equ $ + 2
	ld lx,#00
	call l842d
	ld a,lx
	ld (l81bf),a
	ld (l833a),hl
	exx
	ld (l81b5),hl
	ld a,c
	ld (l81b8),a
	ld (l8334),a
	xor a
	or hy
	jr nz,l8214
	ld (l8357),a
	ld d,a
	ld a,e
	ld (l81bb),a
	ld l,d
	ld h,l
	ld (l8337),hl
.l81e9 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l8368
	ldi
	ldi
	ld de,l8360
	ldi
	ldi
	ld de,l8359
	ldi
	ld de,l836a
	ldi
	ld a,(hl)
	inc hl
	ld (l8349),hl
	ld hl,l88bb
	or (hl)
	ld (hl),a
.l8214
	ld a,ly
.l8216
	ld (l81af),a
.l821a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l8281
.l8220 equ $ + 1
	ld hl,#0000
.l8223 equ $ + 1
	ld bc,#0200
.l8227 equ $ + 2
.l8226 equ $ + 1
	ld de,#0000
.l822a equ $ + 2
	ld lx,#00
	call l842d
	ld a,lx
	ld (l822a),a
	ld (l838b),hl
	exx
	ld (l8220),hl
	ld a,c
	ld (l8223),a
	ld (l8385),a
	xor a
	or hy
	jr nz,l827f
	ld (l83a8),a
	ld d,a
	ld a,e
	ld (l8226),a
	ld l,d
	ld h,l
	ld (l8388),hl
.l8254 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l83b9
	ldi
	ldi
	ld de,l83b1
	ldi
	ldi
	ld de,l83aa
	ldi
	ld de,l83bb
	ldi
	ld a,(hl)
	inc hl
	ld (l839a),hl
	ld hl,l88bb
	or (hl)
	ld (hl),a
.l827f
	ld a,ly
.l8281
	ld (l821a),a
.l8285 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l82ec
.l828b equ $ + 1
	ld hl,#0000
.l828e equ $ + 1
	ld bc,#0300
.l8292 equ $ + 2
.l8291 equ $ + 1
	ld de,#0000
.l8295 equ $ + 2
	ld lx,#00
	call l842d
	ld a,lx
	ld (l8295),a
	ld (l83dc),hl
	exx
	ld (l828b),hl
	ld a,c
	ld (l828e),a
	ld (l83d6),a
	xor a
	or hy
	jr nz,l82ea
	ld (l83f9),a
	ld d,a
	ld a,e
	ld (l8291),a
	ld l,d
	ld h,l
	ld (l83d9),hl
.l82bf equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l840a
	ldi
	ldi
	ld de,l8402
	ldi
	ldi
	ld de,l83fb
	ldi
	ld de,l840c
	ldi
	ld a,(hl)
	inc hl
	ld (l83eb),hl
	ld hl,l88bb
	or (hl)
	ld (hl),a
.l82ea
	ld a,ly
.l82ec
	ld (l8285),a
.l82f0 equ $ + 1
	ld a,#00
	sub #01
	jr c,l82fa
	ld (l82f0),a
	jr l8330
.l82fa
	ld a,#37
	ld (l80a5),a
	ld hl,(l811d)
.l8303 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l8330
	ld (l80b8),a
	ld (l80f2),a
	ld (l8188),a
.l8314 equ $ + 1
	ld hl,#0000
	ld (l80be),hl
.l831a equ $ + 1
	ld hl,#0000
	ld (l80ff),hl
.l8320 equ $ + 1
	ld hl,#0000
	ld (l811d),hl
.l8326 equ $ + 1
	ld hl,#0000
	ld (l8159),hl
.l832c equ $ + 1
	ld a,#00
	ld (l8138),a
.l8330
	ld hl,l88bb
.l8334 equ $ + 1
	ld d,#00
	exx
.l8337 equ $ + 1
	ld hl,#0000
.l833a equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8337),hl
	ld (l8568),hl
	ld a,(l81bf)
	ld lx,a
.l8349 equ $ + 1
	ld hl,#0000
	ld iy,l8756
	ld a,(l8357)
	call l84c2
	ex de,hl
.l8357 equ $ + 1
	ld a,#00
.l8359 equ $ + 1
	cp #00
	jr z,l835f
	inc a
	jr l837c
.l8360 equ $ + 1
.l835f
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l8378
.l8368 equ $ + 1
	ld de,#0000
.l836a
	or a
	jr c,l8378
.l836e equ $ + 1
	ld hl,#0000
	ld (l8360),hl
	dec a
	ld (l8359),a
	inc a
.l8378
	ld (l8349),de
.l837c
	ld (l8357),a
	ld a,hx
	ld (l8429),a
.l8385 equ $ + 1
	ld d,#00
	exx
.l8388 equ $ + 1
	ld hl,#0000
.l838b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8388),hl
	ld (l8568),hl
	ld a,(l822a)
	ld lx,a
.l839a equ $ + 1
	ld hl,#0000
	ld iy,l87a7
	ld a,(l83a8)
	call l84c2
	ex de,hl
.l83a8 equ $ + 1
	ld a,#00
.l83aa equ $ + 1
	cp #00
	jr z,l83b0
	inc a
	jr l83cd
.l83b1 equ $ + 1
.l83b0
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l83c9
.l83b9 equ $ + 1
	ld de,#0000
.l83bb
	or a
	jr c,l83c9
.l83bf equ $ + 1
	ld hl,#0000
	ld (l83b1),hl
	dec a
	ld (l83aa),a
	inc a
.l83c9
	ld (l839a),de
.l83cd
	ld (l83a8),a
	ld a,hx
	ld (l8426),a
.l83d6 equ $ + 1
	ld d,#00
	exx
.l83d9 equ $ + 1
	ld hl,#0000
.l83dc equ $ + 1
	ld de,#0000
	add hl,de
	ld (l83d9),hl
	ld (l8568),hl
	ld a,(l8295)
	ld lx,a
.l83eb equ $ + 1
	ld hl,#0000
	ld iy,l87f8
	ld a,(l83f9)
	call l84c2
	ex de,hl
.l83f9 equ $ + 1
	ld a,#00
.l83fb equ $ + 1
	cp #00
	jr z,l8401
	inc a
	jr l841e
.l8402 equ $ + 1
.l8401
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l841a
.l840a equ $ + 1
	ld de,#0000
.l840c
	or a
	jr c,l841a
.l8410 equ $ + 1
	ld hl,#0000
	ld (l8402),hl
	dec a
	ld (l83fb),a
	inc a
.l841a
	ld (l83eb),de
.l841e
	ld (l83f9),a
	ld a,hx
	sla a
.l8426 equ $ + 1
	or #00
	rla
.l8429 equ $ + 1
	or #00
	jp l874b
.l842d
	ld a,(hl)
	inc hl
	srl a
	jr c,l8466
	cp #60
	jr nc,l846e
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l8446
	and #0f
	ld c,a
.l8446
	rl b
	jr nc,l844c
	ld e,(hl)
	inc hl
.l844c
	rl b
	jr nc,l845e
.l8450
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l845a
	dec h
.l845a
	ld ly,#00
	ret
.l845e
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l8466
	ld hy,#00
	add d
	ld lx,a
	jr l845e
.l846e
	ld hy,#01
	sub #60
	jr z,l848f
	dec a
	jr z,l84a6
	dec a
	jr z,l8498
	dec a
	jr z,l8450
	dec a
	jr z,l84a2
	dec a
	jr z,l84b7
	dec a
	jr z,l84ae
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l848f
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l8498
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l84a2
	ld c,(hl)
	inc hl
	jr l8450
.l84a6
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l84ae
	ld a,(hl)
	inc hl
	ld (l808b),a
	ld a,b
	ld (l808c),a
.l84b7
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l84c2
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l8578
	bit 4,e
	jr z,l852a
	ld a,(hl)
	bit 6,a
	jr z,l84f7
	ld d,#08
	inc hl
	and #1f
	jr z,l84de
	ld (l8849),a
	res 3,d
.l84de
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l84e7
	xor a
.l84e7
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l84f7
	ld (l8849),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l8513
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l850c
	xor a
.l850c
	ld (iy+#36),a
	ld hx,d
	jr l853d
.l8513
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l851c
	xor a
.l851c
	ld (iy+#36),a
.l851f
	ld hx,d
	ret
.l8522
	ld (iy+#36),#00
	ld d,#09
	jr l851f
.l852a
	ld d,#08
	ld a,e
	and #0f
	jr z,l8522
	exx
	sub d
	exx
	jr nc,l8537
	xor a
.l8537
	ld (iy+#36),a
	ld hx,#08
.l853d
	bit 5,e
	jr z,l8545
	ld a,(hl)
	inc hl
	jr l8546
.l8545
	xor a
.l8546
	bit 6,e
	jr z,l8550
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l8553
.l8550
	ld de,#0000
.l8553
	add lx
	cp #60
	jr c,l855b
	ld a,#60
.l855b
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l868b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l8568 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l8578
	or a
	jr nz,l8582
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l8582
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
	ld (l88b4),a
	bit 3,e
	jr z,l85a4
	ld a,(hl)
	inc hl
	ld (l8849),a
	res 3,d
	jr l85a4
.l85a4
	ld hx,d
	xor a
	bit 7,b
	jr z,l85b6
	bit 6,b
	jr z,l85b1
	ld a,(hl)
	inc hl
.l85b1
	ld (l8665),a
	ld a,#01
.l85b6
	ld (l85fe),a
	ld a,b
	rra
	and #0e
	ld (l860f),a
	bit 4,e
	jp nz,l8670
	bit 1,e
	jr z,l85cd
	ld a,(hl)
	inc hl
	jr l85ce
.l85cd
	xor a
.l85ce
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l85db
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l85de
.l85db
	ld de,#0000
.l85de
	add lx
	cp #60
	jr c,l85e6
	ld a,#60
.l85e6
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l868b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l8568)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l85fe equ $ + 1
	ld a,#00
	or a
	jr nz,l860e
	ex af,af'
	bit 5,a
	jr nz,l8679
.l8607
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l860f equ $ + 1
.l860e
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l8619),a
	ld a,c
.l8619 equ $ + 1
	jr l861a
.l861a
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
	jr nc,l8633
	inc bc
.l8633
	ld a,c
	ld (l887e),a
	ld a,b
	ld (l8899),a
	ld a,(l85fe)
	or a
	jr z,l866e
	ld a,(l860f)
	ld e,a
	srl a
	add e
	ld (l864d),a
	ld a,b
.l864d equ $ + 1
	jr l864e
.l864e
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
.l8665 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l866e
	pop hl
	ret
.l8670
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l8607
.l8679
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l887e),a
	inc hl
	ld a,(hl)
	ld (l8899),a
	inc hl
	ret
.l868b
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
.l874b
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l8756 equ $ + 1
	ld a,#00
.l8758 equ $ + 1
	cp #00
	jr z,l8770
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
	ld (l8758),a
	exx
.l8771 equ $ + 1
.l8770
	ld a,#00
.l8773 equ $ + 1
	cp #00
	jr z,l878b
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
	ld (l8773),a
	exx
.l878c equ $ + 1
.l878b
	ld a,#00
.l878e equ $ + 1
	cp #00
	jr z,l87a6
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
	ld (l878e),a
	exx
.l87a7 equ $ + 1
.l87a6
	ld a,#00
.l87a9 equ $ + 1
	cp #00
	jr z,l87c1
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
	ld (l87a9),a
	exx
.l87c2 equ $ + 1
.l87c1
	ld a,#00
.l87c4 equ $ + 1
	cp #00
	jr z,l87dc
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
	ld (l87c4),a
	exx
.l87dd equ $ + 1
.l87dc
	ld a,#00
.l87df equ $ + 1
	cp #00
	jr z,l87f7
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
	ld (l87df),a
	exx
.l87f8 equ $ + 1
.l87f7
	ld a,#00
.l87fa equ $ + 1
	cp #00
	jr z,l8812
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
	ld (l87fa),a
	exx
.l8813 equ $ + 1
.l8812
	ld a,#00
.l8815 equ $ + 1
	cp #00
	jr z,l882d
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
	ld (l8815),a
	exx
.l882e equ $ + 1
.l882d
	ld a,#00
.l8830 equ $ + 1
	cp #00
	jr z,l8848
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
	ld (l8830),a
	exx
.l8849 equ $ + 1
.l8848
	ld a,#00
.l884b equ $ + 1
	cp #00
	jr z,l8863
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
	ld (l884b),a
	exx
.l8863
	ld a,h
.l8865 equ $ + 1
	cp #c0
	jr z,l887d
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
	ld (l8865),a
	exx
.l887e equ $ + 1
.l887d
	ld a,#00
.l8880 equ $ + 1
	cp #00
	jr z,l8898
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
	ld (l8880),a
	exx
.l8899 equ $ + 1
.l8898
	ld a,#00
.l889b equ $ + 1
	cp #00
	jr z,l88b3
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
	ld (l889b),a
	exx
.l88b4 equ $ + 1
.l88b3
	ld a,#00
.l88b6 equ $ + 1
	cp #ff
	jr nz,l88bf
	ld h,a
.l88bb equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l88bf
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
	ld (l88b6),a
	ret
;
.stop_music
.l88d4
;
	xor a
	ld (l878c),a
	ld (l87dd),a
	ld (l882e),a
	dec a
	ld (l878e),a
	ld (l87df),a
	ld (l8830),a
	ld (l8865),a
	ld a,#3f
	jp l874b
;
.real_init_music
.l88f0
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l81a3),a
	ld de,#0003
	add hl,de
	ld de,l80ff
	ldi
	ldi
	ld de,l811d
	ldi
	ldi
	ld de,l8159
	ldi
	ldi
	ld de,l81e9
	ldi
	ldi
	ld de,l8314
	ldi
	ldi
	ld de,l831a
	ldi
	ldi
	ld de,l8320
	ldi
	ldi
	ld de,l8326
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l8097),a
	ld (l8095),a
	ld (l80be),hl
	ld hl,(l8159)
	ld (l8303),hl
	ld a,(hl)
	and #01
	ld (l8138),a
	ld hl,(l8326)
	ld a,(hl)
	and #01
	ld (l832c),a
	ld hl,(l81e9)
	ld (l8254),hl
	ld (l82bf),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l8349),hl
	ld (l839a),hl
	ld (l83eb),hl
	ld (l8368),hl
	ld (l83b9),hl
	ld (l840a),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l836e),de
	ld (l83bf),de
	ld (l8410),de
	ld (l8360),de
	ld (l83b1),de
	ld (l8402),de
	ld a,#37
	ld (l80a5),a
	ld hl,l89ac
.l899c
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l89a3
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l89a3
	jr l899c
.l89ac
	jr l89ae
.l89ae
	dw l8756,l8771,l87a7,l87c2
	dw l87f8,l8813,l8849,l878c
	dw l87dd,l882e,l887e,l8899
	dw l88b4,l80b8,l80f2,l813d
	dw l814b,l8188,l8357,l83a8
	dw l83f9,l81b8,l8223,l828e
	dw #ff11,l8758,l8773,l87a9
	dw l87c4,l87fa,l8815,l884b
	dw l8865,l878e,l87df,l8830
	dw l8880,l889b,l88b6,l8359
	dw l83aa,l83fb,#b703,l836a
	dw l83bb,l840c
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
	db #00,#00,#00,#00,#00,#00
.music_data
	db #53,#4b,#31,#30,#80,#8a,#01,#32
	db #00,#9e,#8a,#a0,#8a,#5a,#8b,#60
	db #8b,#9a,#8a,#9e,#8a,#a0,#8a,#5a
	db #8b,#03,#c0,#00,#00,#3b,#7f,#1e
	db #8d,#8c,#0f,#8d,#13,#8d,#75,#8d
	db #13,#8d,#90,#8d,#10,#8e,#22,#8e
	db #13,#8d,#9c,#8e,#bc,#8e,#38,#8f
	db #10,#8e,#22,#8e,#13,#8d,#9a,#8f
	db #bc,#8e,#38,#8f,#b8,#8f,#dc,#8f
	db #5c,#90,#be,#90,#dc,#8f,#5c,#90
	db #b8,#8f,#dc,#8f,#5c,#90,#dc,#90
	db #ee,#90,#4d,#91,#10,#8e,#22,#8e
	db #13,#8d,#9c,#8e,#bc,#8e,#38,#8f
	db #10,#8e,#22,#8e,#13,#8d,#9a,#8f
	db #bc,#8e,#38,#8f,#b8,#8f,#dc,#8f
	db #5c,#90,#be,#90,#dc,#8f,#5c,#90
	db #b8,#8f,#dc,#8f,#5c,#90,#dc,#90
	db #ee,#90,#4d,#91,#8d,#8c,#af,#91
	db #13,#8d,#23,#92,#af,#91,#13,#8d
	db #4f,#92,#af,#91,#13,#8d,#75,#92
	db #af,#91,#13,#8d,#9b,#92,#13,#8d
	db #ab,#92,#bc,#92,#13,#8d,#ca,#92
	db #d9,#92,#13,#8d,#ed,#92,#02,#93
	db #13,#8d,#12,#93,#23,#93,#27,#93
	db #13,#8d,#30,#93,#27,#93,#13,#8d
	db #72,#93,#27,#93,#13,#8d,#b4,#93
	db #27,#93,#13,#8d,#f6,#93,#28,#94
	db #3b,#94,#3a,#7b,#94,#01,#7c,#94
	db #80,#8b,#8a,#8b,#92,#8b,#9a,#8b
	db #bf,#8b,#c8,#8b,#ec,#8b,#20,#8c
	db #2f,#8c,#3b,#8c,#47,#8c,#53,#8c
	db #5e,#8c,#69,#8c,#75,#8c,#81,#8c
	db #87,#8b,#8a,#8b,#ff,#37,#00,#00
	db #00,#00,#91,#8b,#92,#8b,#00,#37
	db #00,#0f,#87,#8b,#9a,#8b,#05,#b7
	db #00,#0f,#87,#8b,#bf,#8b,#00,#b7
	db #00,#1f,#02,#1e,#02,#1d,#02,#1c
	db #02,#1b,#02,#1a,#02,#19,#02,#18
	db #02,#17,#02,#16,#02,#15,#01,#14
	db #01,#13,#01,#12,#01,#11,#01,#c6
	db #8b,#c8,#8b,#00,#37,#00,#80,#10
	db #87,#8b,#ec,#8b,#00,#b7,#00,#2f
	db #0f,#2e,#0c,#2d,#0a,#2c,#07,#2b
	db #05,#2a,#03,#09,#28,#fc,#27,#f8
	db #26,#f5,#25,#f3,#24,#f1,#23,#f1
	db #22,#f1,#21,#f1,#87,#8b,#20,#8c
	db #00,#b7,#00,#3f,#3f,#0f,#3e,#3f
	db #0e,#3d,#3f,#0d,#3c,#3f,#0c,#3b
	db #3f,#0b,#3a,#3f,#0a,#39,#3e,#09
	db #38,#3d,#08,#37,#3c,#07,#36,#3b
	db #06,#35,#3a,#05,#34,#39,#04,#33
	db #38,#03,#32,#37,#02,#31,#36,#01
	db #27,#8c,#2f,#8c,#03,#37,#00,#4f
	db #ff,#ff,#0f,#4f,#01,#00,#0f,#36
	db #8c,#3b,#8c,#00,#37,#00,#0f,#2f
	db #04,#2f,#0c,#42,#8c,#47,#8c,#00
	db #37,#00,#0f,#2f,#03,#2f,#0c,#4e
	db #8c,#53,#8c,#00,#37,#00,#0f,#2f
	db #07,#2f,#0c,#5a,#8c,#5e,#8c,#00
	db #37,#00,#0f,#2f,#04,#0f,#65,#8c
	db #69,#8c,#00,#37,#00,#0f,#0f,#2f
	db #0c,#70,#8c,#75,#8c,#00,#37,#00
	db #0f,#2f,#04,#2f,#07,#7c,#8c,#81
	db #8c,#00,#37,#00,#0f,#2f,#05,#2f
	db #07,#88,#8c,#8d,#8c,#00,#37,#00
	db #0f,#2f,#05,#2f,#0c,#26,#c1,#01
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#c6
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#c6
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#c6
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#c6
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#c6
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#c6
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#c6
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#c6
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#c6
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#c6
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#c6
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#c6
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#c6
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#c6
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#c6
	db #fb,#c6,#fb,#c6,#fb,#c6,#fb,#26
	db #81,#01,#c2,#3e,#81,#02,#ce,#3f
	db #ce,#46,#80,#03,#ce,#3e,#80,#02
	db #ce,#53,#ce,#57,#ce,#46,#80,#03
	db #ce,#3e,#80,#02,#ce,#3f,#ce,#3f
	db #ce,#46,#80,#03,#ce,#3e,#80,#02
	db #ce,#53,#ce,#57,#ce,#46,#80,#03
	db #ce,#3e,#80,#02,#ce,#3f,#ce,#3f
	db #ce,#46,#80,#03,#ce,#3e,#80,#02
	db #ce,#53,#ce,#57,#ce,#46,#80,#03
	db #ce,#3e,#80,#02,#ce,#3f,#ce,#3f
	db #ce,#5e,#80,#03,#ce,#3e,#80,#02
	db #ce,#53,#ce,#57,#ce,#46,#80,#03
	db #ce,#3e,#80,#02,#c2,#56,#80,#04
	db #c0,#22,#42,#80,#05,#d2,#43,#ce
	db #43,#d2,#43,#ce,#3b,#ce,#3b,#d2
	db #39,#d2,#39,#ce,#34,#80,#06,#c2
	db #30,#81,#05,#ce,#9e,#89,#01,#ca
	db #9e,#89,#01,#ca,#9e,#89,#01,#ca
	db #30,#81,#05,#ce,#9e,#89,#01,#ca
	db #9e,#89,#01,#ca,#9e,#89,#01,#ca
	db #30,#81,#05,#ce,#9e,#89,#01,#ca
	db #9e,#89,#01,#ca,#9e,#89,#01,#ca
	db #30,#81,#05,#ce,#9e,#89,#01,#ca
	db #9e,#89,#01,#ca,#9e,#89,#01,#ca
	db #30,#81,#05,#ce,#9e,#89,#01,#ca
	db #9e,#89,#01,#ca,#9e,#89,#01,#ca
	db #30,#81,#05,#ce,#9e,#89,#01,#ca
	db #9e,#89,#01,#ca,#9e,#89,#01,#ca
	db #30,#81,#05,#ce,#9e,#89,#01,#ca
	db #9e,#89,#01,#ca,#9e,#89,#01,#ca
	db #30,#81,#05,#ce,#9e,#89,#01,#ca
	db #9e,#89,#01,#ca,#9e,#89,#01,#ca
	db #7c,#80,#07,#fa,#79,#da,#77,#d6
	db #73,#d6,#6f,#d2,#75,#d6,#73,#d6
	db #6f,#c2,#56,#81,#08,#c4,#00,#56
	db #01,#c4,#00,#56,#01,#ce,#56,#85
	db #01,#c4,#04,#56,#81,#08,#ce,#56
	db #85,#01,#c4,#04,#56,#81,#08,#ce
	db #5a,#80,#09,#ce,#5a,#83,#01,#c4
	db #02,#5a,#81,#09,#ce,#5b,#ce,#5a
	db #83,#01,#c4,#02,#52,#81,#08,#ce
	db #52,#85,#01,#c4,#04,#52,#81,#08
	db #ce,#52,#85,#01,#c4,#04,#56,#81
	db #08,#ce,#57,#ce,#57,#ce,#56,#85
	db #01,#c4,#04,#56,#81,#08,#ce,#56
	db #85,#01,#c4,#04,#56,#81,#08,#ce
	db #50,#80,#09,#ce,#50,#85,#01,#c4
	db #04,#50,#81,#09,#ce,#51,#ce,#50
	db #85,#01,#c4,#04,#52,#01,#ce,#52
	db #05,#c4,#04,#c2,#6a,#80,#07,#ce
	db #6f,#ce,#6b,#ce,#69,#ce,#6b,#e2
	db #69,#d2,#65,#d2,#61,#d2,#65,#f2
	db #60,#80,#03,#ce,#61,#d2,#61,#ce
	db #61,#ce,#61,#c2,#52,#81,#08,#c4
	db #00,#52,#01,#c4,#00,#52,#01,#c4
	db #01,#c4,#02,#c4,#03,#52,#81,#0a
	db #c4,#01,#c4,#02,#c4,#03,#52,#01
	db #ce,#52,#81,#0b,#c4,#01,#c4,#02
	db #c4,#03,#52,#81,#08,#ce,#52,#01
	db #c4,#01,#c4,#02,#c4,#03,#52,#81
	db #0a,#c4,#01,#c4,#02,#c4,#03,#52
	db #01,#c4,#01,#c4,#02,#c4,#03,#56
	db #81,#08,#ce,#57,#ce,#56,#01,#c4
	db #01,#c4,#02,#c4,#03,#56,#01,#c4
	db #01,#c4,#02,#c4,#03,#56,#01,#ce
	db #50,#81,#09,#c4,#01,#c4,#02,#c4
	db #03,#50,#01,#ce,#50,#01,#c4,#01
	db #c4,#02,#c4,#03,#52,#81,#0c,#d2
	db #c4,#00,#c4,#01,#c4,#02,#c4,#03
	db #3a,#80,#02,#ce,#53,#ce,#42,#80
	db #03,#ce,#3a,#80,#02,#ce,#49,#ce
	db #53,#ce,#42,#80,#03,#ce,#52,#80
	db #02,#ce,#3b,#ce,#53,#ce,#42,#80
	db #03,#ce,#3a,#80,#02,#ce,#49,#ce
	db #53,#ce,#42,#80,#03,#ce,#52,#80
	db #02,#ce,#3f,#ce,#3f,#ce,#42,#80
	db #03,#ce,#3e,#80,#02,#ce,#53,#ce
	db #57,#ce,#42,#80,#03,#ce,#3e,#80
	db #02,#ce,#3f,#ce,#3f,#ce,#42,#80
	db #03,#ce,#3e,#80,#02,#ce,#53,#ce
	db #57,#ce,#42,#80,#03,#ce,#3e,#80
	db #02,#c2,#6a,#80,#07,#ce,#6f,#ce
	db #6b,#ce,#69,#ce,#6b,#e2,#69,#d2
	db #65,#d2,#79,#d2,#77,#f6,#77,#ce
	db #79,#ce,#77,#ce,#79,#ce,#73,#c2
	db #74,#81,#07,#de,#75,#ce,#75,#ce
	db #75,#ce,#73,#d6,#6f,#d6,#6b,#d2
	db #6f,#d6,#69,#d6,#61,#d2,#65,#da
	db #6a,#80,#03,#ce,#6b,#ce,#48,#80
	db #06,#49,#49,#c2,#44,#81,#0d,#ce
	db #44,#80,#08,#ce,#44,#80,#0d,#ce
	db #44,#80,#08,#ce,#44,#80,#0d,#ce
	db #44,#80,#08,#ce,#44,#80,#0d,#ce
	db #44,#80,#08,#ce,#52,#80,#0d,#ce
	db #52,#80,#08,#ce,#52,#80,#0d,#ce
	db #52,#80,#08,#ce,#52,#80,#0d,#ce
	db #52,#80,#08,#ce,#52,#80,#0d,#ce
	db #52,#80,#08,#ce,#48,#80,#0d,#ce
	db #48,#80,#08,#ce,#48,#80,#0d,#ce
	db #48,#80,#08,#ce,#48,#80,#0d,#ce
	db #48,#80,#08,#ce,#48,#80,#0d,#ce
	db #48,#80,#08,#ce,#56,#80,#0e,#ce
	db #56,#80,#0f,#ce,#56,#80,#0e,#ce
	db #56,#80,#0f,#ce,#56,#80,#0d,#ce
	db #56,#80,#08,#ce,#56,#80,#0d,#ce
	db #56,#80,#08,#c2,#44,#81,#02,#ce
	db #5d,#ce,#34,#80,#03,#ce,#44,#80
	db #02,#ce,#5d,#ce,#45,#ce,#34,#80
	db #03,#ce,#5c,#80,#02,#ce,#3b,#ce
	db #53,#ce,#34,#80,#03,#ce,#3a,#80
	db #02,#ce,#53,#ce,#3b,#ce,#34,#80
	db #03,#ce,#3a,#80,#02,#ce,#49,#ce
	db #61,#ce,#34,#80,#03,#ce,#48,#80
	db #02,#ce,#61,#ce,#49,#ce,#34,#80
	db #03,#ce,#60,#80,#02,#ce,#3f,#ce
	db #57,#ce,#34,#80,#03,#ce,#3e,#80
	db #02,#ce,#57,#ce,#3f,#ce,#34,#80
	db #03,#ce,#3e,#80,#02,#c2,#64,#80
	db #07,#de,#65,#ce,#65,#ce,#65,#ce
	db #6b,#d6,#6f,#d6,#73,#d2,#6f,#fa
	db #6a,#80,#03,#ce,#6b,#ce,#48,#80
	db #06,#49,#49,#c2,#64,#80,#07,#de
	db #65,#ce,#65,#ce,#65,#ce,#6b,#d6
	db #69,#d6,#61,#d2,#65,#c2,#44,#80
	db #0d,#ce,#44,#80,#08,#ce,#44,#80
	db #0d,#ce,#44,#80,#08,#ce,#44,#80
	db #0d,#ce,#44,#80,#08,#ce,#44,#80
	db #0d,#ce,#44,#80,#08,#ce,#52,#80
	db #0d,#ce,#52,#80,#08,#ce,#52,#80
	db #0d,#ce,#52,#80,#08,#ce,#52,#80
	db #0d,#ce,#52,#80,#08,#ce,#52,#80
	db #0d,#ce,#52,#80,#08,#ce,#4c,#80
	db #09,#ea,#60,#80,#03,#ce,#4c,#81
	db #09,#c4,#01,#c4,#02,#4c,#01,#c4
	db #01,#c4,#02,#48,#81,#06,#ce,#49
	db #ce,#49,#ce,#49,#c2,#44,#80,#02
	db #ce,#5d,#ce,#74,#80,#03,#ce,#44
	db #80,#02,#ce,#5d,#ce,#45,#ce,#74
	db #80,#03,#ce,#5c,#80,#02,#ce,#3b
	db #ce,#53,#ce,#74,#80,#03,#ce,#3a
	db #80,#02,#ce,#53,#ce,#3b,#ce,#74
	db #80,#03,#ce,#52,#80,#02,#ce,#4d
	db #ce,#65,#ce,#74,#80,#03,#ce,#4c
	db #80,#02,#ce,#65,#ce,#4d,#ce,#74
	db #80,#03,#ce,#64,#80,#02,#ce,#4d
	db #ce,#65,#ce,#74,#80,#03,#ce,#4c
	db #80,#02,#ce,#65,#ce,#4d,#ce,#74
	db #80,#03,#ce,#64,#80,#02,#c2,#52
	db #81,#08,#ce,#53,#ce,#52,#01,#c4
	db #01,#c4,#02,#c4,#03,#52,#81,#0a
	db #c4,#00,#d0,#52,#01,#ce,#52,#81
	db #0b,#c4,#01,#c4,#02,#c4,#03,#52
	db #81,#08,#ce,#52,#01,#c4,#01,#c4
	db #02,#c4,#03,#52,#81,#0a,#c4,#01
	db #c4,#02,#c4,#03,#52,#01,#c4,#01
	db #c4,#02,#c4,#03,#56,#81,#08,#ce
	db #57,#ce,#56,#01,#c4,#01,#c4,#02
	db #c4,#03,#56,#01,#c4,#01,#c4,#02
	db #c4,#03,#56,#01,#ce,#56,#01,#c4
	db #01,#c4,#02,#c4,#03,#56,#01,#ce
	db #56,#01,#c4,#01,#c4,#02,#c4,#03
	db #56,#01,#d2,#c4,#00,#c4,#01,#c4
	db #02,#c4,#03,#3e,#81,#07,#f6,#35
	db #ce,#3b,#ce,#35,#ce,#3b,#ce,#35
	db #ce,#45,#d2,#43,#d2,#3f,#dc,#c4
	db #00,#c4,#01,#c4,#02,#c4,#03,#c4
	db #04,#c4,#05,#c4,#06,#30,#81,#03
	db #ce,#31,#ce,#31,#ce,#31,#c2,#3e
	db #80,#07,#ce,#4d,#ce,#57,#ce,#3f
	db #ce,#4d,#ce,#57,#ce,#3f,#ce,#4d
	db #ce,#57,#ce,#3f,#ce,#4d,#ce,#57
	db #ce,#5d,#d2,#5b,#d2,#57,#ce,#53
	db #ce,#57,#fa,#53,#c2,#64,#80,#07
	db #ce,#6b,#ce,#65,#ea,#61,#ce,#5d
	db #ce,#65,#ce,#63,#ce,#61,#ce,#5d
	db #ce,#57,#ce,#53,#ce,#57,#ea,#50
	db #80,#03,#ce,#51,#d2,#51,#ce,#51
	db #ce,#51,#c2,#7c,#81,#07,#d2,#83
	db #ce,#87,#fe,#8d,#ce,#87,#ce,#83
	db #ce,#87,#c2,#ec,#7c,#81,#07,#d2
	db #83,#ce,#87,#fe,#8d,#ce,#87,#ce
	db #83,#ce,#87,#c2,#82,#80,#07,#d2
	db #87,#ce,#7d,#fe,#83,#d2,#87,#ce
	db #79,#c2,#ec,#82,#80,#07,#d2,#87
	db #ce,#7d,#fe,#83,#d2,#87,#ce,#79
	db #c2,#7c,#80,#07,#d2,#83,#ce,#7d
	db #ce,#83,#ce,#87,#f6,#95,#ce,#9b
	db #ce,#91,#ce,#95,#c2,#ec,#7c,#80
	db #07,#d2,#83,#ce,#7d,#ce,#83,#ce
	db #87,#f6,#95,#ce,#9b,#ce,#91,#ce
	db #95,#c2,#94,#80,#07,#ce,#91,#ce
	db #9b,#ce,#91,#fe,#83,#ce,#7d,#ce
	db #87,#c2,#ec,#94,#80,#07,#ce,#91
	db #ce,#9b,#ce,#91,#fe,#83,#ce,#7d
	db #ce,#87,#c2,#86,#80,#07,#c2,#56
	db #80,#08,#c0,#1e,#56,#80,#0a,#c2
	db #86,#80,#07,#ce,#7d,#ce,#83,#ce
	db #87,#ce,#7d,#ce,#83,#ce,#87,#ce
	db #7d,#ce,#83,#ce,#87,#ce,#7d,#ce
	db #83,#ce,#87,#ce,#7d,#ce,#83,#ce
	db #87,#ce,#7d,#ce,#83,#ce,#87,#7d
	db #83,#87,#7d,#83,#87,#7d,#83,#87
	db #7d,#83,#87,#7d,#83,#87,#7d,#83
	db #87,#7d,#83,#87,#7d,#83,#87,#7d
	db #83,#87,#86,#80,#07,#ce,#87,#ce
	db #91,#ce,#95,#ce,#87,#ce,#87,#ce
	db #91,#ce,#95,#ce,#9b,#ce,#95,#ce
	db #91,#ce,#95,#ce,#9b,#ce,#95,#ce
	db #91,#ce,#95,#ce,#9b,#9f,#83,#87
	db #9b,#9f,#83,#87,#9b,#9f,#83,#87
	db #9b,#9f,#83,#87,#a5,#a3,#9f,#a5
	db #a3,#9f,#a5,#a3,#9f,#a5,#a3,#9f
	db #a5,#a3,#9f,#a5,#9e,#80,#07,#ce
	db #95,#ce,#a5,#ce,#9f,#ce,#95,#ce
	db #a3,#ce,#9f,#ce,#95,#ce,#9b,#ce
	db #9f,#ce,#95,#ce,#a3,#ce,#9f,#ce
	db #95,#ce,#a5,#ce,#a3,#ce,#9f,#95
	db #a5,#9f,#95,#a3,#9f,#95,#9b,#9f
	db #95,#a3,#9f,#95,#a5,#9f,#9f,#95
	db #a5,#9f,#95,#a3,#9f,#95,#9b,#9f
	db #95,#a3,#9f,#95,#a5,#a3,#9e,#81
	db #07,#9f,#9b,#95,#9f,#9f,#95,#91
	db #95,#95,#91,#8d,#91,#91,#8d,#87
	db #8d,#8d,#87,#83,#87,#87,#83,#7d
	db #83,#83,#7d,#79,#7b,#7b,#79,#7b
	db #87,#d2,#83,#ce,#86,#01,#c4,#00
	db #c4,#00,#c4,#03,#ca,#c4,#00,#c2
	db #56,#81,#08,#c0,#1e,#7c,#80,#07
	db #d2,#79,#ce,#7d,#d0,#c4,#03,#ca
	db #c4,#00,#c2,#3e,#80,#02,#ce,#3f
	db #ce,#96,#80,#03,#ce,#3e,#80,#02
	db #ce,#53,#ce,#57,#ce,#96,#80,#03
	db #ce,#3e,#80,#02,#ce,#3f,#ce,#3f
	db #ce,#96,#80,#03,#ce,#3e,#80,#02
	db #ce,#53,#ce,#57,#ce,#96,#80,#03
	db #ce,#3e,#80,#02,#ce,#56,#80,#04
	db #d2,#53,#ce,#57,#d0,#c4,#03,#ca
	db #c4,#00,#c2,#ff,#5d,#3c,#1d,#0c
	db #00,#00
;
.init_music
;
	ld de,music_data	; #8a80
	jp real_init_music
;
.music_info
	db "Plasma pas cher (2010)(Shinra)(Pulkomandy)",0
	db "StArkos",0

	read "music_end.asm"
