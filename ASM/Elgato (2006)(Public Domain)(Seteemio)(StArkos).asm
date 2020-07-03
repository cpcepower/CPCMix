; Music of Elgato (2006)(Public Domain)(Seteemio)(StArkos)
; Ripped by Megachur the 27/12/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "ELGATO.BIN"
	ENDIF

music_date_rip_day		equ 27
music_date_rip_month	equ 12
music_date_rip_year		equ 2014
music_adr				equ &9000

	read "music_header.asm"

	jp l9870
	jp l900d
	jp l9854
.l900c equ $ + 3
.l900b equ $ + 2
	db #00,#90,#00,#00
;
.play_music
.l900d
;
	xor a
	ld (l900b),a
	ld (l983b),a
.l9015 equ $ + 1
	ld a,#00
.l9017 equ $ + 1
	cp #00
	jr z,l9021
	inc a
	ld (l9015),a
	jp l92b0
.l9021
	xor a
	ld (l9015),a
.l9025
	or a
	jp nc,l9107
	ld (l912f),a
	ld (l919a),a
	ld (l9205),a
	ld a,#b7
	ld (l9025),a
.l9038 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l906e
.l903e equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l906b
	ld b,a
	and #1f
	bit 4,a
	jr z,l904f
	or #e0
.l904f
	ld (l913c),a
	rl b
	rl b
	jr nc,l905d
	ld a,(hl)
	ld (l91a7),a
	inc hl
.l905d
	rl b
	jr nc,l9066
	ld a,(hl)
	ld (l9212),a
	inc hl
.l9066
	ld (l903e),hl
	jr l9071
.l906b
	ld (l903e),hl
.l906e
	ld (l9038),a
.l9072 equ $ + 1
.l9071
	ld a,#00
	sub #01
	jr c,l907e
	ld (l9072),a
.l907b equ $ + 1
	ld a,#00
	jr l9099
.l907f equ $ + 1
.l907e
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l908c
	ld (l907f),hl
	jr l9099
.l908c
	ld (l907b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l907f),hl
	ld (l9072),a
	ld a,b
.l9099
	ld (l9270),a
.l909d equ $ + 1
	ld hl,#0000
	ld de,l9135
	ldi
	ldi
	ld de,l91a0
	ldi
	ldi
	ld de,l920b
	ldi
	ldi
	ld (l909d),hl
.l90b8 equ $ + 1
	ld a,#00
	or a
	jr nz,l90ca
.l90bd equ $ + 1
	ld a,#00
	sub #01
	jr c,l90d8
	ld (l90bd),a
.l90c6 equ $ + 1
	ld hl,#0000
	jr l9110
.l90cb equ $ + 1
.l90ca
	ld a,#00
	sub #01
	jr c,l90d8
	ld (l90cb),a
	ld hl,(l90d9)
	jr l90fd
.l90d9 equ $ + 1
.l90d8
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l90f5
	ld (l90bd),a
	xor a
	ld (l90b8),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l90d9),hl
	ex de,hl
	ld (l90c6),hl
	jr l9110
.l90f5
	ld (l90cb),a
	ld a,#01
	ld (l90b8),a
.l90fd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l90d9),hl
	ex de,hl
	jr l9110
.l9108 equ $ + 1
.l9107
	ld a,#00
	sub #01
	jr nc,l912b
.l910e equ $ + 1
	ld hl,#0000
.l9110
	ld a,(hl)
	inc hl
	srl a
	jr c,l9128
	srl a
	jr c,l911f
	ld (l9017),a
	jr l9127
.l911f
	ld (l900b),a
.l9123 equ $ + 1
	ld a,#01
	ld (l900c),a
.l9127
	xor a
.l9128
	ld (l910e),hl
.l912b
	ld (l9108),a
.l912f equ $ + 1
	ld a,#00
	sub #01
	jr nc,l9196
.l9135 equ $ + 1
	ld hl,#0000
.l9138 equ $ + 1
	ld bc,#0100
.l913c equ $ + 2
.l913b equ $ + 1
	ld de,#0000
.l913f equ $ + 2
	ld lx,#00
	call l93ad
	ld a,lx
	ld (l913f),a
	ld (l92ba),hl
	exx
	ld (l9135),hl
	ld a,c
	ld (l9138),a
	ld (l92b4),a
	xor a
	or hy
	jr nz,l9194
	ld (l92d7),a
	ld d,a
	ld a,e
	ld (l913b),a
	ld l,d
	ld h,l
	ld (l92b7),hl
.l9169 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l92e8
	ldi
	ldi
	ld de,l92e0
	ldi
	ldi
	ld de,l92d9
	ldi
	ld de,l92ea
	ldi
	ld a,(hl)
	inc hl
	ld (l92c9),hl
	ld hl,l983b
	or (hl)
	ld (hl),a
.l9194
	ld a,ly
.l9196
	ld (l912f),a
.l919a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l9201
.l91a0 equ $ + 1
	ld hl,#0000
.l91a3 equ $ + 1
	ld bc,#0200
.l91a7 equ $ + 2
.l91a6 equ $ + 1
	ld de,#0000
.l91aa equ $ + 2
	ld lx,#00
	call l93ad
	ld a,lx
	ld (l91aa),a
	ld (l930b),hl
	exx
	ld (l91a0),hl
	ld a,c
	ld (l91a3),a
	ld (l9305),a
	xor a
	or hy
	jr nz,l91ff
	ld (l9328),a
	ld d,a
	ld a,e
	ld (l91a6),a
	ld l,d
	ld h,l
	ld (l9308),hl
.l91d4 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l9339
	ldi
	ldi
	ld de,l9331
	ldi
	ldi
	ld de,l932a
	ldi
	ld de,l933b
	ldi
	ld a,(hl)
	inc hl
	ld (l931a),hl
	ld hl,l983b
	or (hl)
	ld (hl),a
.l91ff
	ld a,ly
.l9201
	ld (l919a),a
.l9205 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l926c
.l920b equ $ + 1
	ld hl,#0000
.l920e equ $ + 1
	ld bc,#0300
.l9212 equ $ + 2
.l9211 equ $ + 1
	ld de,#0000
.l9215 equ $ + 2
	ld lx,#00
	call l93ad
	ld a,lx
	ld (l9215),a
	ld (l935c),hl
	exx
	ld (l920b),hl
	ld a,c
	ld (l920e),a
	ld (l9356),a
	xor a
	or hy
	jr nz,l926a
	ld (l9379),a
	ld d,a
	ld a,e
	ld (l9211),a
	ld l,d
	ld h,l
	ld (l9359),hl
.l923f equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l938a
	ldi
	ldi
	ld de,l9382
	ldi
	ldi
	ld de,l937b
	ldi
	ld de,l938c
	ldi
	ld a,(hl)
	inc hl
	ld (l936b),hl
	ld hl,l983b
	or (hl)
	ld (hl),a
.l926a
	ld a,ly
.l926c
	ld (l9205),a
.l9270 equ $ + 1
	ld a,#00
	sub #01
	jr c,l927a
	ld (l9270),a
	jr l92b0
.l927a
	ld a,#37
	ld (l9025),a
	ld hl,(l909d)
.l9283 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l92b0
	ld (l9038),a
	ld (l9072),a
	ld (l9108),a
.l9294 equ $ + 1
	ld hl,#0000
	ld (l903e),hl
.l929a equ $ + 1
	ld hl,#0000
	ld (l907f),hl
.l92a0 equ $ + 1
	ld hl,#0000
	ld (l909d),hl
.l92a6 equ $ + 1
	ld hl,#0000
	ld (l90d9),hl
.l92ac equ $ + 1
	ld a,#00
	ld (l90b8),a
.l92b0
	ld hl,l983b
.l92b4 equ $ + 1
	ld d,#00
	exx
.l92b7 equ $ + 1
	ld hl,#0000
.l92ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l92b7),hl
	ld (l94e8),hl
	ld a,(l913f)
	ld lx,a
.l92c9 equ $ + 1
	ld hl,#0000
	ld iy,l96d6
	ld a,(l92d7)
	call l9442
	ex de,hl
.l92d7 equ $ + 1
	ld a,#00
.l92d9 equ $ + 1
	cp #00
	jr z,l92df
	inc a
	jr l92fc
.l92e0 equ $ + 1
.l92df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l92f8
.l92e8 equ $ + 1
	ld de,#0000
.l92ea
	or a
	jr c,l92f8
.l92ee equ $ + 1
	ld hl,#0000
	ld (l92e0),hl
	dec a
	ld (l92d9),a
	inc a
.l92f8
	ld (l92c9),de
.l92fc
	ld (l92d7),a
	ld a,hx
	ld (l93a9),a
.l9305 equ $ + 1
	ld d,#00
	exx
.l9308 equ $ + 1
	ld hl,#0000
.l930b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9308),hl
	ld (l94e8),hl
	ld a,(l91aa)
	ld lx,a
.l931a equ $ + 1
	ld hl,#0000
	ld iy,l9727
	ld a,(l9328)
	call l9442
	ex de,hl
.l9328 equ $ + 1
	ld a,#00
.l932a equ $ + 1
	cp #00
	jr z,l9330
	inc a
	jr l934d
.l9331 equ $ + 1
.l9330
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l9349
.l9339 equ $ + 1
	ld de,#0000
.l933b
	or a
	jr c,l9349
.l933f equ $ + 1
	ld hl,#0000
	ld (l9331),hl
	dec a
	ld (l932a),a
	inc a
.l9349
	ld (l931a),de
.l934d
	ld (l9328),a
	ld a,hx
	ld (l93a6),a
.l9356 equ $ + 1
	ld d,#00
	exx
.l9359 equ $ + 1
	ld hl,#0000
.l935c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9359),hl
	ld (l94e8),hl
	ld a,(l9215)
	ld lx,a
.l936b equ $ + 1
	ld hl,#0000
	ld iy,l9778
	ld a,(l9379)
	call l9442
	ex de,hl
.l9379 equ $ + 1
	ld a,#00
.l937b equ $ + 1
	cp #00
	jr z,l9381
	inc a
	jr l939e
.l9382 equ $ + 1
.l9381
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l939a
.l938a equ $ + 1
	ld de,#0000
.l938c
	or a
	jr c,l939a
.l9390 equ $ + 1
	ld hl,#0000
	ld (l9382),hl
	dec a
	ld (l937b),a
	inc a
.l939a
	ld (l936b),de
.l939e
	ld (l9379),a
	ld a,hx
	sla a
.l93a6 equ $ + 1
	or #00
	rla
.l93a9 equ $ + 1
	or #00
	jp l96cb
.l93ad
	ld a,(hl)
	inc hl
	srl a
	jr c,l93e6
	cp #60
	jr nc,l93ee
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l93c6
	and #0f
	ld c,a
.l93c6
	rl b
	jr nc,l93cc
	ld e,(hl)
	inc hl
.l93cc
	rl b
	jr nc,l93de
.l93d0
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l93da
	dec h
.l93da
	ld ly,#00
	ret
.l93de
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l93e6
	ld hy,#00
	add d
	ld lx,a
	jr l93de
.l93ee
	ld hy,#01
	sub #60
	jr z,l940f
	dec a
	jr z,l9426
	dec a
	jr z,l9418
	dec a
	jr z,l93d0
	dec a
	jr z,l9422
	dec a
	jr z,l9437
	dec a
	jr z,l942e
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l940f
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l9418
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l9422
	ld c,(hl)
	inc hl
	jr l93d0
.l9426
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l942e
	ld a,(hl)
	inc hl
	ld (l900b),a
	ld a,b
	ld (l900c),a
.l9437
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l9442
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l94f8
	bit 4,e
	jr z,l94aa
	ld a,(hl)
	bit 6,a
	jr z,l9477
	ld d,#08
	inc hl
	and #1f
	jr z,l945e
	ld (l97c9),a
	res 3,d
.l945e
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l9467
	xor a
.l9467
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l9477
	ld (l97c9),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l9493
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l948c
	xor a
.l948c
	ld (iy+#36),a
	ld hx,d
	jr l94bd
.l9493
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l949c
	xor a
.l949c
	ld (iy+#36),a
.l949f
	ld hx,d
	ret
.l94a2
	ld (iy+#36),#00
	ld d,#09
	jr l949f
.l94aa
	ld d,#08
	ld a,e
	and #0f
	jr z,l94a2
	exx
	sub d
	exx
	jr nc,l94b7
	xor a
.l94b7
	ld (iy+#36),a
	ld hx,#08
.l94bd
	bit 5,e
	jr z,l94c5
	ld a,(hl)
	inc hl
	jr l94c6
.l94c5
	xor a
.l94c6
	bit 6,e
	jr z,l94d0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l94d3
.l94d0
	ld de,#0000
.l94d3
	add lx
	cp #60
	jr c,l94db
	ld a,#60
.l94db
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l960b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l94e8 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l94f8
	or a
	jr nz,l9502
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l9502
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
	ld (l9834),a
	bit 3,e
	jr z,l9524
	ld a,(hl)
	inc hl
	ld (l97c9),a
	res 3,d
	jr l9524
.l9524
	ld hx,d
	xor a
	bit 7,b
	jr z,l9536
	bit 6,b
	jr z,l9531
	ld a,(hl)
	inc hl
.l9531
	ld (l95e5),a
	ld a,#01
.l9536
	ld (l957e),a
	ld a,b
	rra
	and #0e
	ld (l958f),a
	bit 4,e
	jp nz,l95f0
	bit 1,e
	jr z,l954d
	ld a,(hl)
	inc hl
	jr l954e
.l954d
	xor a
.l954e
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l955b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l955e
.l955b
	ld de,#0000
.l955e
	add lx
	cp #60
	jr c,l9566
	ld a,#60
.l9566
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l960b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l94e8)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l957e equ $ + 1
	ld a,#00
	or a
	jr nz,l958e
	ex af,af'
	bit 5,a
	jr nz,l95f9
.l9587
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l958f equ $ + 1
.l958e
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l9599),a
	ld a,c
.l9599 equ $ + 1
	jr l959a
.l959a
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
	jr nc,l95b3
	inc bc
.l95b3
	ld a,c
	ld (l97fe),a
	ld a,b
	ld (l9819),a
	ld a,(l957e)
	or a
	jr z,l95ee
	ld a,(l958f)
	ld e,a
	srl a
	add e
	ld (l95cd),a
	ld a,b
.l95cd equ $ + 1
	jr l95ce
.l95ce
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
.l95e5 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l95ee
	pop hl
	ret
.l95f0
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l9587
.l95f9
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l97fe),a
	inc hl
	ld a,(hl)
	ld (l9819),a
	inc hl
	ret
.l960b
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
.l96cb
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l96d6 equ $ + 1
	ld a,#00
.l96d8 equ $ + 1
	cp #00
	jr z,l96f0
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
	ld (l96d8),a
	exx
.l96f1 equ $ + 1
.l96f0
	ld a,#00
.l96f3 equ $ + 1
	cp #00
	jr z,l970b
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
	ld (l96f3),a
	exx
.l970c equ $ + 1
.l970b
	ld a,#00
.l970e equ $ + 1
	cp #00
	jr z,l9726
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
	ld (l970e),a
	exx
.l9727 equ $ + 1
.l9726
	ld a,#00
.l9729 equ $ + 1
	cp #00
	jr z,l9741
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
	ld (l9729),a
	exx
.l9742 equ $ + 1
.l9741
	ld a,#00
.l9744 equ $ + 1
	cp #00
	jr z,l975c
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
	ld (l9744),a
	exx
.l975d equ $ + 1
.l975c
	ld a,#00
.l975f equ $ + 1
	cp #00
	jr z,l9777
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
	ld (l975f),a
	exx
.l9778 equ $ + 1
.l9777
	ld a,#00
.l977a equ $ + 1
	cp #00
	jr z,l9792
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
	ld (l977a),a
	exx
.l9793 equ $ + 1
.l9792
	ld a,#00
.l9795 equ $ + 1
	cp #00
	jr z,l97ad
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
	ld (l9795),a
	exx
.l97ae equ $ + 1
.l97ad
	ld a,#00
.l97b0 equ $ + 1
	cp #00
	jr z,l97c8
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
	ld (l97b0),a
	exx
.l97c9 equ $ + 1
.l97c8
	ld a,#00
.l97cb equ $ + 1
	cp #00
	jr z,l97e3
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
	ld (l97cb),a
	exx
.l97e3
	ld a,h
.l97e5 equ $ + 1
	cp #c0
	jr z,l97fd
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
	ld (l97e5),a
	exx
.l97fe equ $ + 1
.l97fd
	ld a,#00
.l9800 equ $ + 1
	cp #00
	jr z,l9818
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
	ld (l9800),a
	exx
.l9819 equ $ + 1
.l9818
	ld a,#00
.l981b equ $ + 1
	cp #00
	jr z,l9833
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
	ld (l981b),a
	exx
.l9834 equ $ + 1
.l9833
	ld a,#00
.l9836 equ $ + 1
	cp #ff
	jr nz,l983f
	ld h,a
.l983b equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l983f
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
	ld (l9836),a
	ret
;
.stop_music
.l9854
;
	xor a
	ld (l970c),a
	ld (l975d),a
	ld (l97ae),a
	dec a
	ld (l970e),a
	ld (l975f),a
	ld (l97b0),a
	ld (l97e5),a
	ld a,#3f
	jp l96cb
;
.real_init_music
.l9870
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l9123),a
	ld de,#0003
	add hl,de
	ld de,l907f
	ldi
	ldi
	ld de,l909d
	ldi
	ldi
	ld de,l90d9
	ldi
	ldi
	ld de,l9169
	ldi
	ldi
	ld de,l9294
	ldi
	ldi
	ld de,l929a
	ldi
	ldi
	ld de,l92a0
	ldi
	ldi
	ld de,l92a6
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l9017),a
	ld (l9015),a
	ld (l903e),hl
	ld hl,(l90d9)
	ld (l9283),hl
	ld a,(hl)
	and #01
	ld (l90b8),a
	ld hl,(l92a6)
	ld a,(hl)
	and #01
	ld (l92ac),a
	ld hl,(l9169)
	ld (l91d4),hl
	ld (l923f),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l92c9),hl
	ld (l931a),hl
	ld (l936b),hl
	ld (l92e8),hl
	ld (l9339),hl
	ld (l938a),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l92ee),de
	ld (l933f),de
	ld (l9390),de
	ld (l92e0),de
	ld (l9331),de
	ld (l9382),de
	ld a,#37
	ld (l9025),a
	ld hl,l992c
.l991c
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l9923
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l9923
	jr l991c
.l992c
	jr l992e
.l992e
	dw l96d6,l96f1,l9727,l9742
	dw l9778,l9793,l97c9,l970c
	dw l975d,l97ae,l97fe,l9819
	dw l9834,l9038,l9072,l90bd
	dw l90cb,l9108,l92d7,l9328
	dw l9379,l9138,l91a3,l920e
	dw #ff11,l96d8,l96f3,l9729
	dw l9744,l977a,l9795,l97cb
	dw l97e5,l970e,l975f,l97b0
	dw l9800,l981b,l9836,l92d9
	dw l932a,l937b,#b703,l92ea
	dw l933b,l938c
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
	db #53,#4b
	db #31,#30,#00,#9a,#01,#32,#00,#1e
	db #9a,#20,#9a,#2c,#9a,#2f,#9a,#1a
	db #9a,#1e,#9a,#20,#9a,#2c,#9a,#05
	db #c0,#00,#00,#01,#7f,#01,#8d,#9a
	db #b9,#9a,#df,#9a,#e0,#9a,#06,#9b
	db #2c,#9b,#02,#2d,#9b,#35,#9a,#3f
	db #9a,#66,#9a,#3c,#9a,#3f,#9a,#ff
	db #37,#00,#00,#00,#00,#3c,#9a,#66
	db #9a,#00,#b7,#00,#0f,#0f,#0e,#0c
	db #0d,#0c,#0d,#0c,#0d,#0c,#0d,#0c
	db #0d,#0c,#0d,#0c,#0d,#0c,#0d,#0c
	db #0d,#0c,#0d,#0b,#0c,#0b,#0c,#0a
	db #0b,#0a,#0a,#09,#3c,#9a,#8d,#9a
	db #00,#b7,#00,#23,#f4,#24,#f4,#25
	db #f4,#26,#f4,#27,#f4,#28,#f4,#29
	db #f4,#2a,#f4,#2b,#f4,#2a,#f4,#29
	db #f4,#28,#f4,#27,#f4,#26,#f4,#25
	db #f4,#24,#f4,#5a,#80,#01,#d2,#59
	db #ce,#57,#ce,#55,#d2,#51,#ce,#4d
	db #ce,#4b,#ce,#5f,#ce,#5f,#ce,#5f
	db #ce,#5f,#da,#4b,#ce,#5f,#ce,#5f
	db #ce,#5f,#ce,#5f,#da,#5f,#ce,#5b
	db #ce,#59,#ce,#5f,#ce,#5b,#c2,#64
	db #80,#02,#d2,#57,#d2,#65,#d2,#57
	db #d2,#69,#d2,#57,#d2,#69,#d2,#57
	db #d2,#63,#d2,#5b,#d2,#63,#d2,#5b
	db #d2,#65,#d2,#5b,#d2,#65,#ce,#5b
	db #ce,#5f,#ce,#63,#c2,#c2,#5a,#80
	db #01,#d2,#59,#ce,#57,#ce,#55,#d2
	db #51,#ce,#4d,#ce,#4b,#ce,#5f,#ce
	db #5f,#ce,#5f,#ce,#5f,#da,#4b,#d2
	db #5f,#ce,#5b,#ce,#57,#d2,#55,#ce
	db #51,#ce,#4d,#c2,#64,#80,#02,#d2
	db #57,#d2,#65,#d2,#57,#d2,#69,#d2
	db #57,#d2,#69,#d2,#57,#d2,#63,#d2
	db #5b,#d2,#63,#d2,#5b,#d2,#65,#d2
	db #5b,#d2,#65,#ce,#5b,#ce,#5f,#ce
	db #63,#c2,#c2,#ff,#1a,#20,#20,#20
	db #20,#20,#01,#01,#00,#00,#06,#02
	db #01,#00,#00,#00,#01,#00,#02,#00
	db #3f,#00,#03,#00,#04,#00,#05,#00
	db #3f,#00,#01,#00,#31,#00,#00,#00
	db #00,#00,#1f,#00,#00,#20,#20,#20
	db #20,#20,#20,#20,#20,#0f,#0f,#0e
	db #0c,#0d,#0c,#0d,#0c,#0d,#0c,#0d
	db #0c,#0d,#0c,#0d,#0c,#0d,#0c,#0d
	db #0c,#0d,#0c,#0d,#0b,#0c,#0b,#0c
	db #0a,#0b,#0a,#0a,#09,#02,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
	db #e5,#e5,#e5,#e5,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#10,#c0,#10,#c0
	db #10,#c0,#10,#c0,#10,#c0,#00,#00
	db #10,#c0,#00,#00,#70,#70,#70,#70
	db #70,#70,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#30,#60,#30,#60
	db #70,#f0,#30,#60,#70,#f0,#30,#60
	db #30,#60,#00,#00,#00,#c0,#30,#f0
	db #70,#00,#30,#e0,#00,#70,#70,#e0
	db #10,#80,#00,#00,#70,#00,#70,#70
	db #00,#e0,#10,#c0,#30,#80,#70,#70
	db #00,#70,#00,#00,#30,#80,#60,#c0
	db #60,#c0,#30,#80,#60,#d0,#60,#60
	db #30,#b0,#00,#00,#00,#e0,#10,#c0
	db #30,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#e0,#10,#c0
	db #30,#80,#30,#80,#30,#80,#10,#c0
	db #00,#e0,#00,#00,#30,#80,#10,#c0
	db #00,#e0,#00,#e0,#00,#e0,#10,#c0
	db #30,#80,#00,#00,#10,#c0,#70,#f0
	db #70,#f0,#30,#e0,#70,#f0,#70,#f0
	db #10,#c0,#00,#00,#00,#00,#10,#c0
	db #10,#c0,#70,#f0,#10,#c0,#10,#c0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#10,#c0
	db #30,#80,#70,#00,#00,#00,#00,#00
	db #00,#00,#70,#f0,#70,#f0,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#10,#c0
	db #10,#c0,#00,#00,#00,#00,#00,#70
	db #00,#e0,#10,#c0,#30,#80,#70,#00
	db #00,#00,#00,#00,#10,#c0,#30,#e0
	db #70,#70,#60,#30,#70,#70,#30,#e0
	db #10,#c0,#00,#00,#30,#c0,#70,#c0
	db #70,#c0,#10,#c0,#10,#c0,#70,#f0
	db #70,#f0,#00,#00,#30,#e0,#30,#f0
	db #00,#e0,#10,#c0,#30,#80,#70,#f0
	db #30,#f0,#00,#00,#30,#c0,#70,#e0
	db #00,#f0,#10,#e0,#00,#f0,#70,#e0
	db #30,#c0,#00,#00,#00,#c0,#10,#80
	db #30,#00,#60,#c0,#70,#e0,#70,#e0
	db #00,#c0,#00,#00,#70,#f0,#70,#f0
	db #30,#80,#10,#c0,#00,#e0,#70,#f0
	db #70,#e0,#00,#00,#00,#e0,#10,#e0
	db #30,#80,#70,#e0,#60,#70,#70,#e0
	db #30,#c0,#00,#00,#70,#f0,#70,#f0
	db #00,#e0,#10,#c0,#30,#80,#30,#00
	db #30,#00,#00,#00,#10,#c0,#30,#e0
	db #70,#70,#30,#e0,#70,#70,#30,#e0
	db #10,#c0,#00,#00,#10,#f0,#30,#f0
	db #70,#70,#30,#f0,#10,#f0,#00,#30
	db #00,#30,#00,#00,#00,#00,#00,#00
	db #10,#c0,#10,#c0,#00,#00,#10,#c0
	db #10,#c0,#00,#00,#00,#00,#00,#00
	db #10,#c0,#10,#c0,#00,#00,#10,#c0
	db #30,#80,#70,#00,#00,#e0,#10,#c0
	db #30,#80,#70,#00,#30,#80,#10,#c0
	db #00,#e0,#00,#00,#00,#00,#00,#00
	db #70,#f0,#70,#f0,#00,#00,#70,#f0
	db #70,#f0,#00,#00,#30,#80,#10,#c0
	db #00,#e0,#00,#70,#00,#e0,#10,#c0
	db #30,#80,#00,#00,#30,#e0,#70,#70
	db #00,#e0,#10,#c0,#10,#c0,#00,#00
	db #10,#c0,#00,#00,#30,#e0,#70,#70
	db #70,#70,#70,#70,#70,#70,#70,#00
	db #30,#e0,#00,#00,#00,#80,#10,#c0
	db #30,#e0,#70,#70,#60,#30,#70,#f0
	db #60,#30,#00,#00,#70,#80,#70,#c0
	db #60,#60,#70,#c0,#60,#60,#70,#c0
	db #70,#80,#00,#00,#00,#e0,#10,#e0
	db #30,#80,#70,#00,#30,#80,#10,#f0
	db #00,#f0,#00,#00,#70,#80,#70,#c0
	db #60,#e0,#60,#70,#60,#e0,#70,#c0
	db #70,#80,#00,#00,#00,#e0,#10,#e0
	db #30,#00,#70,#e0,#30,#00,#10,#f0
	db #00,#f0,#00,#00,#70,#f0,#70,#f0
	db #60,#00,#70,#e0,#60,#00,#60,#00
	db #60,#00,#00,#00,#00,#e0,#10,#e0
	db #30,#80,#70,#30,#30,#b0,#10,#f0
	db #00,#f0,#00,#00,#60,#30,#60,#30
	db #60,#30,#70,#f0,#60,#30,#60,#30
	db #60,#30,#00,#00,#30,#e0,#30,#e0
	db #10,#c0,#10,#c0,#10,#c0,#70,#f0
	db #70,#f0,#00,#00,#00,#30,#00,#30
	db #00,#30,#00,#30,#30,#b0,#10,#f0
	db #00,#f0,#00,#00,#60,#00,#60,#e0
	db #70,#c0,#70,#80,#70,#c0,#60,#e0
	db #60,#70,#00,#00,#60,#00,#60,#00
	db #60,#00,#60,#00,#60,#00,#70,#f0
	db #70,#f0,#00,#00,#60,#30,#70,#70
	db #70,#f0,#70,#f0,#60,#b0,#60,#30
	db #60,#30,#00,#00,#70,#30,#70,#b0
	db #70,#f0,#60,#f0,#60,#70,#60,#30
	db #60,#30,#00,#00,#00,#80,#10,#c0
	db #30,#e0,#70,#70,#30,#e0,#10,#c0
	db #00,#80,#00,#00,#70,#c0,#70,#e0
	db #60,#70,#70,#e0,#70,#c0,#60,#00
	db #60,#00,#00,#00,#00,#80,#10,#c0
	db #30,#e0,#70,#70,#30,#e0,#10,#f0
	db #00,#b0,#00,#00,#70,#c0,#70,#e0
	db #60,#70,#70,#e0,#70,#c0,#60,#e0
	db #60,#70,#00,#00,#30,#e0,#70,#e0
	db #30,#80,#10,#c0,#00,#e0,#70,#f0
	db #70,#e0,#00,#00,#70,#f0,#70,#f0
	db #10,#c0,#10,#c0,#10,#c0,#10,#c0
	db #10,#c0,#00,#00,#60,#30,#60,#30
	db #60,#30,#60,#30,#70,#70,#30,#e0
	db #10,#c0,#00,#00,#60,#30,#60,#30
	db #60,#30,#70,#70,#30,#60,#10,#c0
	db #00,#80,#00,#00,#60,#30,#60,#30
	db #60,#b0,#70,#f0,#70,#f0,#70,#70
	db #60,#30,#00,#00,#30,#60,#70,#f0
	db #30,#e0,#10,#c0,#30,#e0,#70,#f0
	db #30,#60,#00,#00,#60,#30,#70,#70
	db #30,#e0,#10,#c0,#10,#c0,#10,#c0
	db #10,#c0,#00,#00,#30,#f0,#30,#f0
	db #00,#e0,#10,#c0,#30,#80,#70,#f0
	db #70,#f0,#00,#00,#70,#f0,#70,#00
	db #70,#00,#70,#00,#70,#00,#70,#00
	db #70,#f0,#00,#00,#00,#00,#70,#00
	db #30,#80,#10,#c0,#00,#e0,#00,#70
	db #00,#00,#00,#00,#70,#f0,#00,#70
	db #00,#70,#00,#70,#00,#70,#00,#70
	db #70,#f0,#00,#00,#10,#c0,#30,#e0
	db #70,#70,#60,#30,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#f0,#f0,#70,#00,#30,#80
	db #10,#c0,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #30,#e0,#00,#70,#30,#f0,#70,#70
	db #30,#f0,#00,#00,#70,#00,#70,#00
	db #70,#e0,#70,#70,#70,#70,#70,#70
	db #70,#e0,#00,#00,#00,#00,#00,#00
	db #30,#e0,#70,#70,#70,#00,#70,#70
	db #30,#e0,#00,#00,#00,#70,#00,#70
	db #30,#f0,#70,#70,#70,#70,#70,#70
	db #30,#f0,#00,#00,#00,#00,#00,#00
	db #30,#e0,#70,#70,#70,#f0,#70,#00
	db #30,#e0,#00,#00,#10,#e0,#30,#80
	db #30,#80,#70,#e0,#30,#80,#30,#80
	db #30,#80,#00,#00,#00,#00,#00,#00
	db #30,#f0,#70,#70,#70,#70,#30,#f0
	db #00,#70,#30,#e0,#70,#00,#70,#00
	db #70,#e0,#70,#70,#70,#70,#70,#70
	db #70,#70,#00,#00,#10,#c0,#00,#00
	db #30,#c0,#10,#c0,#10,#c0,#10,#c0
	db #30,#e0,#00,#00,#10,#c0,#00,#00
	db #30,#c0,#10,#c0,#10,#c0,#10,#c0
	db #10,#c0,#70,#80,#70,#00,#70,#00
	db #70,#70,#70,#e0,#70,#c0,#70,#e0
	db #70,#70,#00,#00,#30,#c0,#10,#c0
	db #10,#c0,#10,#c0,#10,#c0,#10,#c0
	db #30,#e0,#00,#00,#00,#00,#00,#00
	db #30,#60,#70,#f0,#60,#b0,#60,#b0
	db #60,#30,#00,#00,#00,#00,#00,#00
	db #70,#e0,#70,#70,#70,#70,#70,#70
	db #70,#70,#00,#00,#00,#00,#00,#00
	db #30,#e0,#70,#70,#70,#70,#70,#70
	db #30,#e0,#00,#00,#00,#00,#00,#00
	db #70,#e0,#70,#70,#70,#70,#70,#e0
	db #70,#00,#70,#00,#00,#00,#00,#00
	db #30,#f0,#70,#70,#70,#70,#30,#f0
	db #00,#70,#00,#70,#00,#00,#00,#00
	db #70,#e0,#70,#70,#70,#00,#70,#00
	db #70,#00,#00,#00,#00,#00,#00,#00
	db #30,#f0,#70,#00,#30,#e0,#00,#70
	db #70,#e0,#00,#00,#30,#80,#30,#80
	db #70,#e0,#30,#80,#30,#80,#30,#80
	db #10,#e0,#00,#00,#00,#00,#00,#00
	db #70,#70,#70,#70,#70,#70,#70,#70
	db #30,#f0,#00,#00,#00,#00,#00,#00
	db #70,#70,#70,#70,#70,#70,#30,#e0
	db #10,#c0,#00,#00,#00,#00,#00,#00
	db #60,#30,#60,#b0,#60,#b0,#70,#f0
	db #30,#60,#00,#00,#00,#00,#00,#00
	db #70,#70,#30,#e0,#10,#c0,#30,#e0
	db #70,#70,#00,#00,#00,#00,#00,#00
	db #70,#70,#70,#70,#70,#70,#30,#f0
	db #00,#70,#30,#e0,#00,#00,#00,#00
	db #70,#f0,#00,#e0,#10,#c0,#30,#80
	db #70,#f0,#00,#00,#00,#e0,#10,#c0
	db #10,#c0,#70,#80,#10,#c0,#10,#c0
	db #00,#e0,#00,#00,#10,#c0,#10,#c0
	db #10,#c0,#10,#c0,#10,#c0,#10,#c0
	db #10,#c0,#00,#00,#30,#80,#10,#c0
	db #10,#c0,#00,#f0,#10,#c0,#10,#c0
	db #30,#80,#00,#00,#30,#b0,#70,#f0
	db #60,#e0,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#10,#e0,#30,#b0
	db #30,#80,#70,#e0,#30,#80,#30,#80
	db #70,#f0,#00,#00
;
.init_music		; added by Megachur
;
	; org #870d
	ld de,music_data	; #9a00
	jp real_init_music
;
.music_info
	db "Elgato (2006)(Public Domain)(Seteemio)",0
	db "StArkos",0

	read "music_end.asm"
