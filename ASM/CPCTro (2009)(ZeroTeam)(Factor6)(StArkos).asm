; Music of CPCTro (2009)(ZeroTeam)(Factor6)(StArkos)
; Ripped by Megachur the 28/02/2015
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPCTRO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2015
music_adr				equ #1200

	read "music_header.asm"

	jp l1a70	; init music
	jp l120d	; play music
	jp l1a54	; stop music

.l120c equ $ + 3
.l120b equ $ + 2
	db #00,#12,#00,#00
;
.play_music
.l120d
;
	xor a
	ld (l120b),a
	ld (l1a3b),a
.l1215 equ $ + 1
	ld a,#00
.l1217 equ $ + 1
	cp #00
	jr z,l1221
	inc a
	ld (l1215),a
	jp l14b0
.l1221
	xor a
	ld (l1215),a
.l1225
	or a
	jp nc,l1307
	ld (l132f),a
	ld (l139a),a
	ld (l1405),a
	ld a,#b7
	ld (l1225),a
.l1238 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l126e
.l123e equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l126b
	ld b,a
	and #1f
	bit 4,a
	jr z,l124f
	or #e0
.l124f
	ld (l133c),a
	rl b
	rl b
	jr nc,l125d
	ld a,(hl)
	ld (l13a7),a
	inc hl
.l125d
	rl b
	jr nc,l1266
	ld a,(hl)
	ld (l1412),a
	inc hl
.l1266
	ld (l123e),hl
	jr l1271
.l126b
	ld (l123e),hl
.l126e
	ld (l1238),a
.l1272 equ $ + 1
.l1271
	ld a,#00
	sub #01
	jr c,l127e
	ld (l1272),a
.l127b equ $ + 1
	ld a,#00
	jr l1299
.l127f equ $ + 1
.l127e
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l128c
	ld (l127f),hl
	jr l1299
.l128c
	ld (l127b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l127f),hl
	ld (l1272),a
	ld a,b
.l1299
	ld (l1470),a
.l129d equ $ + 1
	ld hl,#0000
	ld de,l1335
	ldi
	ldi
	ld de,l13a0
	ldi
	ldi
	ld de,l140b
	ldi
	ldi
	ld (l129d),hl
.l12b8 equ $ + 1
	ld a,#00
	or a
	jr nz,l12ca
.l12bd equ $ + 1
	ld a,#00
	sub #01
	jr c,l12d8
	ld (l12bd),a
.l12c6 equ $ + 1
	ld hl,#0000
	jr l1310
.l12cb equ $ + 1
.l12ca
	ld a,#00
	sub #01
	jr c,l12d8
	ld (l12cb),a
	ld hl,(l12d9)
	jr l12fd
.l12d9 equ $ + 1
.l12d8
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l12f5
	ld (l12bd),a
	xor a
	ld (l12b8),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l12d9),hl
	ex de,hl
	ld (l12c6),hl
	jr l1310
.l12f5
	ld (l12cb),a
	ld a,#01
	ld (l12b8),a
.l12fd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l12d9),hl
	ex de,hl
	jr l1310
.l1308 equ $ + 1
.l1307
	ld a,#00
	sub #01
	jr nc,l132b
.l130e equ $ + 1
	ld hl,#0000
.l1310
	ld a,(hl)
	inc hl
	srl a
	jr c,l1328
	srl a
	jr c,l131f
	ld (l1217),a
	jr l1327
.l131f
	ld (l120b),a
.l1323 equ $ + 1
	ld a,#01
	ld (l120c),a
.l1327
	xor a
.l1328
	ld (l130e),hl
.l132b
	ld (l1308),a
.l132f equ $ + 1
	ld a,#00
	sub #01
	jr nc,l1396
.l1335 equ $ + 1
	ld hl,#0000
.l1338 equ $ + 1
	ld bc,#0100
.l133c equ $ + 2
.l133b equ $ + 1
	ld de,#0000
.l133f equ $ + 2
	ld lx,#00
	call l15ad
	ld a,lx
	ld (l133f),a
	ld (l14ba),hl
	exx
	ld (l1335),hl
	ld a,c
	ld (l1338),a
	ld (l14b4),a
	xor a
	or hy
	jr nz,l1394
	ld (l14d7),a
	ld d,a
	ld a,e
	ld (l133b),a
	ld l,d
	ld h,l
	ld (l14b7),hl
.l1369 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l14e8
	ldi
	ldi
	ld de,l14e0
	ldi
	ldi
	ld de,l14d9
	ldi
	ld de,l14ea
	ldi
	ld a,(hl)
	inc hl
	ld (l14c9),hl
	ld hl,l1a3b
	or (hl)
	ld (hl),a
.l1394
	ld a,ly
.l1396
	ld (l132f),a
.l139a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l1401
.l13a0 equ $ + 1
	ld hl,#0000
.l13a3 equ $ + 1
	ld bc,#0200
.l13a7 equ $ + 2
.l13a6 equ $ + 1
	ld de,#0000
.l13aa equ $ + 2
	ld lx,#00
	call l15ad
	ld a,lx
	ld (l13aa),a
	ld (l150b),hl
	exx
	ld (l13a0),hl
	ld a,c
	ld (l13a3),a
	ld (l1505),a
	xor a
	or hy
	jr nz,l13ff
	ld (l1528),a
	ld d,a
	ld a,e
	ld (l13a6),a
	ld l,d
	ld h,l
	ld (l1508),hl
.l13d4 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l1539
	ldi
	ldi
	ld de,l1531
	ldi
	ldi
	ld de,l152a
	ldi
	ld de,l153b
	ldi
	ld a,(hl)
	inc hl
	ld (l151a),hl
	ld hl,l1a3b
	or (hl)
	ld (hl),a
.l13ff
	ld a,ly
.l1401
	ld (l139a),a
.l1405 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l146c
.l140b equ $ + 1
	ld hl,#0000
.l140e equ $ + 1
	ld bc,#0300
.l1412 equ $ + 2
.l1411 equ $ + 1
	ld de,#0000
.l1415 equ $ + 2
	ld lx,#00
	call l15ad
	ld a,lx
	ld (l1415),a
	ld (l155c),hl
	exx
	ld (l140b),hl
	ld a,c
	ld (l140e),a
	ld (l1556),a
	xor a
	or hy
	jr nz,l146a
	ld (l1579),a
	ld d,a
	ld a,e
	ld (l1411),a
	ld l,d
	ld h,l
	ld (l1559),hl
.l143f equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l158a
	ldi
	ldi
	ld de,l1582
	ldi
	ldi
	ld de,l157b
	ldi
	ld de,l158c
	ldi
	ld a,(hl)
	inc hl
	ld (l156b),hl
	ld hl,l1a3b
	or (hl)
	ld (hl),a
.l146a
	ld a,ly
.l146c
	ld (l1405),a
.l1470 equ $ + 1
	ld a,#00
	sub #01
	jr c,l147a
	ld (l1470),a
	jr l14b0
.l147a
	ld a,#37
	ld (l1225),a
	ld hl,(l129d)
.l1483 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l14b0
	ld (l1238),a
	ld (l1272),a
	ld (l1308),a
.l1494 equ $ + 1
	ld hl,#0000
	ld (l123e),hl
.l149a equ $ + 1
	ld hl,#0000
	ld (l127f),hl
.l14a0 equ $ + 1
	ld hl,#0000
	ld (l129d),hl
.l14a6 equ $ + 1
	ld hl,#0000
	ld (l12d9),hl
.l14ac equ $ + 1
	ld a,#00
	ld (l12b8),a
.l14b0
	ld hl,l1a3b
.l14b4 equ $ + 1
	ld d,#00
	exx
.l14b7 equ $ + 1
	ld hl,#0000
.l14ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l14b7),hl
	ld (l16e8),hl
	ld a,(l133f)
	ld lx,a
.l14c9 equ $ + 1
	ld hl,#0000
	ld iy,l18d6
	ld a,(l14d7)
	call l1642
	ex de,hl
.l14d7 equ $ + 1
	ld a,#00
.l14d9 equ $ + 1
	cp #00
	jr z,l14df
	inc a
	jr l14fc
.l14e0 equ $ + 1
.l14df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l14f8
.l14e8 equ $ + 1
	ld de,#0000
.l14ea
	or a
	jr c,l14f8
.l14ee equ $ + 1
	ld hl,#0000
	ld (l14e0),hl
	dec a
	ld (l14d9),a
	inc a
.l14f8
	ld (l14c9),de
.l14fc
	ld (l14d7),a
	ld a,hx
	ld (l15a9),a
.l1505 equ $ + 1
	ld d,#00
	exx
.l1508 equ $ + 1
	ld hl,#0000
.l150b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l1508),hl
	ld (l16e8),hl
	ld a,(l13aa)
	ld lx,a
.l151a equ $ + 1
	ld hl,#0000
	ld iy,l1927
	ld a,(l1528)
	call l1642
	ex de,hl
.l1528 equ $ + 1
	ld a,#00
.l152a equ $ + 1
	cp #00
	jr z,l1530
	inc a
	jr l154d
.l1531 equ $ + 1
.l1530
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l1549
.l1539 equ $ + 1
	ld de,#0000
.l153b
	or a
	jr c,l1549
.l153f equ $ + 1
	ld hl,#0000
	ld (l1531),hl
	dec a
	ld (l152a),a
	inc a
.l1549
	ld (l151a),de
.l154d
	ld (l1528),a
	ld a,hx
	ld (l15a6),a
.l1556 equ $ + 1
	ld d,#00
	exx
.l1559 equ $ + 1
	ld hl,#0000
.l155c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l1559),hl
	ld (l16e8),hl
	ld a,(l1415)
	ld lx,a
.l156b equ $ + 1
	ld hl,#0000
	ld iy,l1978
	ld a,(l1579)
	call l1642
	ex de,hl
.l1579 equ $ + 1
	ld a,#00
.l157b equ $ + 1
	cp #00
	jr z,l1581
	inc a
	jr l159e
.l1582 equ $ + 1
.l1581
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l159a
.l158a equ $ + 1
	ld de,#0000
.l158c
	or a
	jr c,l159a
.l1590 equ $ + 1
	ld hl,#0000
	ld (l1582),hl
	dec a
	ld (l157b),a
	inc a
.l159a
	ld (l156b),de
.l159e
	ld (l1579),a
	ld a,hx
	sla a
.l15a6 equ $ + 1
	or #00
	rla
.l15a9 equ $ + 1
	or #00
	jp l18cb
.l15ad
	ld a,(hl)
	inc hl
	srl a
	jr c,l15e6
	cp #60
	jr nc,l15ee
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l15c6
	and #0f
	ld c,a
.l15c6
	rl b
	jr nc,l15cc
	ld e,(hl)
	inc hl
.l15cc
	rl b
	jr nc,l15de
.l15d0
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l15da
	dec h
.l15da
	ld ly,#00
	ret
.l15de
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l15e6
	ld hy,#00
	add d
	ld lx,a
	jr l15de
.l15ee
	ld hy,#01
	sub #60
	jr z,l160f
	dec a
	jr z,l1626
	dec a
	jr z,l1618
	dec a
	jr z,l15d0
	dec a
	jr z,l1622
	dec a
	jr z,l1637
	dec a
	jr z,l162e
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l160f
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l1618
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l1622
	ld c,(hl)
	inc hl
	jr l15d0
.l1626
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l162e
	ld a,(hl)
	inc hl
	ld (l120b),a
	ld a,b
	ld (l120c),a
.l1637
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l1642
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l16f8
	bit 4,e
	jr z,l16aa
	ld a,(hl)
	bit 6,a
	jr z,l1677
	ld d,#08
	inc hl
	and #1f
	jr z,l165e
	ld (l19c9),a
	res 3,d
.l165e
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l1667
	xor a
.l1667
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l1677
	ld (l19c9),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l1693
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l168c
	xor a
.l168c
	ld (iy+#36),a
	ld hx,d
	jr l16bd
.l1693
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l169c
	xor a
.l169c
	ld (iy+#36),a
.l169f
	ld hx,d
	ret
.l16a2
	ld (iy+#36),#00
	ld d,#09
	jr l169f
.l16aa
	ld d,#08
	ld a,e
	and #0f
	jr z,l16a2
	exx
	sub d
	exx
	jr nc,l16b7
	xor a
.l16b7
	ld (iy+#36),a
	ld hx,#08
.l16bd
	bit 5,e
	jr z,l16c5
	ld a,(hl)
	inc hl
	jr l16c6
.l16c5
	xor a
.l16c6
	bit 6,e
	jr z,l16d0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l16d3
.l16d0
	ld de,#0000
.l16d3
	add lx
	cp #60
	jr c,l16db
	ld a,#60
.l16db
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l180b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l16e8 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l16f8
	or a
	jr nz,l1702
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l1702
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
	ld (l1a34),a
	bit 3,e
	jr z,l1724
	ld a,(hl)
	inc hl
	ld (l19c9),a
	res 3,d
	jr l1724
.l1724
	ld hx,d
	xor a
	bit 7,b
	jr z,l1736
	bit 6,b
	jr z,l1731
	ld a,(hl)
	inc hl
.l1731
	ld (l17e5),a
	ld a,#01
.l1736
	ld (l177e),a
	ld a,b
	rra
	and #0e
	ld (l178f),a
	bit 4,e
	jp nz,l17f0
	bit 1,e
	jr z,l174d
	ld a,(hl)
	inc hl
	jr l174e
.l174d
	xor a
.l174e
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l175b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l175e
.l175b
	ld de,#0000
.l175e
	add lx
	cp #60
	jr c,l1766
	ld a,#60
.l1766
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l180b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l16e8)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l177e equ $ + 1
	ld a,#00
	or a
	jr nz,l178e
	ex af,af'
	bit 5,a
	jr nz,l17f9
.l1787
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l178f equ $ + 1
.l178e
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l1799),a
	ld a,c
.l1799 equ $ + 1
	jr l179a
.l179a
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
	jr nc,l17b3
	inc bc
.l17b3
	ld a,c
	ld (l19fe),a
	ld a,b
	ld (l1a19),a
	ld a,(l177e)
	or a
	jr z,l17ee
	ld a,(l178f)
	ld e,a
	srl a
	add e
	ld (l17cd),a
	ld a,b
.l17cd equ $ + 1
	jr l17ce
.l17ce
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
.l17e5 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l17ee
	pop hl
	ret
.l17f0
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l1787
.l17f9
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l19fe),a
	inc hl
	ld a,(hl)
	ld (l1a19),a
	inc hl
	ret
.l180b
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
.l18cb
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l18d6 equ $ + 1
	ld a,#00
.l18d8 equ $ + 1
	cp #00
	jr z,l18f0
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
	ld (l18d8),a
	exx
.l18f1 equ $ + 1
.l18f0
	ld a,#00
.l18f3 equ $ + 1
	cp #00
	jr z,l190b
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
	ld (l18f3),a
	exx
.l190c equ $ + 1
.l190b
	ld a,#00
.l190e equ $ + 1
	cp #00
	jr z,l1926
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
	ld (l190e),a
	exx
.l1927 equ $ + 1
.l1926
	ld a,#00
.l1929 equ $ + 1
	cp #00
	jr z,l1941
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
	ld (l1929),a
	exx
.l1942 equ $ + 1
.l1941
	ld a,#00
.l1944 equ $ + 1
	cp #00
	jr z,l195c
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
	ld (l1944),a
	exx
.l195d equ $ + 1
.l195c
	ld a,#00
.l195f equ $ + 1
	cp #00
	jr z,l1977
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
	ld (l195f),a
	exx
.l1978 equ $ + 1
.l1977
	ld a,#00
.l197a equ $ + 1
	cp #00
	jr z,l1992
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
	ld (l197a),a
	exx
.l1993 equ $ + 1
.l1992
	ld a,#00
.l1995 equ $ + 1
	cp #00
	jr z,l19ad
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
	ld (l1995),a
	exx
.l19ae equ $ + 1
.l19ad
	ld a,#00
.l19b0 equ $ + 1
	cp #00
	jr z,l19c8
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
	ld (l19b0),a
	exx
.l19c9 equ $ + 1
.l19c8
	ld a,#00
.l19cb equ $ + 1
	cp #00
	jr z,l19e3
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
	ld (l19cb),a
	exx
.l19e3
	ld a,h
.l19e5 equ $ + 1
	cp #c0
	jr z,l19fd
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
	ld (l19e5),a
	exx
.l19fe equ $ + 1
.l19fd
	ld a,#00
.l1a00 equ $ + 1
	cp #00
	jr z,l1a18
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
	ld (l1a00),a
	exx
.l1a19 equ $ + 1
.l1a18
	ld a,#00
.l1a1b equ $ + 1
	cp #00
	jr z,l1a33
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
	ld (l1a1b),a
	exx
.l1a34 equ $ + 1
.l1a33
	ld a,#00
.l1a36 equ $ + 1
	cp #ff
	jr nz,l1a3f
	ld h,a
.l1a3b equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l1a3f
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
	ld (l1a36),a
	ret
;
.stop_music
.l1a54
;
	xor a
	ld (l190c),a
	ld (l195d),a
	ld (l19ae),a
	dec a
	ld (l190e),a
	ld (l195f),a
	ld (l19b0),a
	ld (l19e5),a
	ld a,#3f
	jp l18cb
.l1a70
;
.real_init_music
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l1323),a
	ld de,#0003
	add hl,de
	ld de,l127f
	ldi
	ldi
	ld de,l129d
	ldi
	ldi
	ld de,l12d9
	ldi
	ldi
	ld de,l1369
	ldi
	ldi
	ld de,l1494
	ldi
	ldi
	ld de,l149a
	ldi
	ldi
	ld de,l14a0
	ldi
	ldi
	ld de,l14a6
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l1217),a
	ld (l1215),a
	ld (l123e),hl
	ld hl,(l12d9)
	ld (l1483),hl
	ld a,(hl)
	and #01
	ld (l12b8),a
	ld hl,(l14a6)
	ld a,(hl)
	and #01
	ld (l14ac),a
	ld hl,(l1369)
	ld (l13d4),hl
	ld (l143f),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l14c9),hl
	ld (l151a),hl
	ld (l156b),hl
	ld (l14e8),hl
	ld (l1539),hl
	ld (l158a),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l14ee),de
	ld (l153f),de
	ld (l1590),de
	ld (l14e0),de
	ld (l1531),de
	ld (l1582),de
	ld a,#37
	ld (l1225),a
	ld hl,l1b2c
.l1b1c
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l1b23
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l1b23
	jr l1b1c
.l1b2c
	jr l1b2e
.l1b2e
	dw l18d6,l18f1,l1927,l1942
	dw l1978,l1993,l19c9,l190c
	dw l195d,l19ae,l19fe,l1a19
	dw l1a34,l1238,l1272,l12bd
	dw l12cb,l1308,l14d7,l1528
	dw l1579,l1338,l13a3,l140e
	dw #ff11,l18d8,l18f3,l1929
	dw l1944,l197a,l1995,l19cb
	dw l19e5,l190e,l195f,l19b0
	dw l1a00,l1a1b,l1a36,l14d9
	dw l152a,l157b,#b703,l14ea
	dw l153b,l158c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l1c00
	db #53,#4b,#31,#30,#00,#1c,#01,#32
	db #00,#22,#1c,#30,#1c,#1a,#1d,#23
	db #1d,#1e,#1c,#24,#1c,#48,#1c,#20
	db #1d,#05,#c0,#00,#00,#05,#c0,#00
	db #00,#43,#7f,#03,#7f,#08,#3e,#7e
	db #3e,#7f,#04,#3e,#7e,#3e,#7f,#0e
	db #cb,#1f,#cd,#1f,#cb,#1f,#cb,#1f
	db #cd,#1f,#4d,#20,#cb,#1f,#cd,#1f
	db #59,#20,#b5,#20,#cd,#1f,#cd,#20
	db #21,#21,#cd,#1f,#59,#20,#21,#21
	db #cd,#1f,#b9,#21,#ef,#21,#cd,#1f
	db #59,#20,#ef,#21,#cd,#1f,#cd,#20
	db #21,#21,#cd,#1f,#59,#20,#21,#21
	db #cd,#1f,#b9,#21,#23,#22,#cd,#1f
	db #59,#20,#23,#22,#cd,#1f,#cd,#20
	db #9c,#22,#09,#23,#89,#23,#d3,#23
	db #0e,#24,#4e,#24,#9c,#22,#09,#23
	db #89,#23,#d3,#23,#0e,#24,#4e,#24
	db #21,#21,#cd,#1f,#82,#24,#21,#21
	db #cd,#1f,#b9,#21,#23,#22,#cd,#1f
	db #59,#20,#23,#22,#cd,#1f,#cd,#20
	db #9c,#22,#09,#23,#89,#23,#d3,#23
	db #0e,#24,#4e,#24,#9c,#22,#09,#23
	db #89,#23,#d3,#23,#0e,#24,#4e,#24
	db #09,#25,#45,#25,#c5,#25,#09,#25
	db #45,#25,#c5,#25,#09,#25,#cd,#1f
	db #e0,#25,#09,#25,#cd,#1f,#e0,#25
	db #71,#26,#bd,#26,#3d,#27,#3f,#27
	db #95,#27,#15,#28,#17,#28,#3c,#28
	db #e0,#25,#b6,#28,#cd,#1f,#f0,#28
	db #b6,#28,#cd,#1f,#f0,#28,#b6,#28
	db #cd,#1f,#f0,#28,#b6,#28,#cd,#1f
	db #f0,#28,#12,#29,#cd,#1f,#59,#20
	db #12,#29,#cd,#1f,#cd,#20,#62,#29
	db #cd,#1f,#59,#20,#62,#29,#cd,#1f
	db #cd,#20,#fe,#b2,#29,#fa,#b2,#29
	db #44,#b2,#29,#47,#1d,#51,#1d,#61
	db #1d,#6c,#1d,#7f,#1d,#97,#1d,#af
	db #1d,#bf,#1d,#c9,#1d,#e1,#1d,#06
	db #1e,#19,#1e,#21,#1f,#37,#1f,#49
	db #1f,#5b,#1f,#9a,#1f,#b4,#1f,#4e
	db #1d,#51,#1d,#ff,#37,#00,#00,#00
	db #00,#5f,#1d,#61,#1d,#00,#37,#00
	db #1f,#05,#0f,#2e,#10,#2d,#08,#80
	db #08,#6a,#1d,#6c,#1d,#00,#37,#00
	db #1d,#03,#80,#08,#7d,#1d,#7f,#1d
	db #00,#37,#00,#1f,#05,#2f,#18,#2f
	db #16,#1e,#05,#1d,#05,#80,#08,#4e
	db #1d,#97,#1d,#00,#b7,#00,#1f,#05
	db #0f,#2f,#fe,#1e,#05,#1d,#05,#1c
	db #05,#1b,#05,#19,#05,#18,#05,#4e
	db #1d,#af,#1d,#01,#b7,#00,#2e,#13
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#4e
	db #1d,#bf,#1d,#00,#b7,#00,#0a,#0a
	db #09,#08,#07,#06,#05,#04,#02,#c8
	db #1d,#c9,#1d,#00,#37,#00,#1d,#24
	db #0d,#4e,#1d,#e1,#1d,#00,#b7,#00
	db #0f,#2f,#fe,#2f,#fc,#2f,#fa,#2f
	db #f8,#2f,#f6,#2f,#f4,#2f,#f2,#2e
	db #f0,#04,#1e,#06,#1e,#00,#37,#00
	db #2e,#13,#2f,#0c,#0f,#4f,#01,#00
	db #0f,#4f,#ff,#ff,#0f,#4f,#01,#00
	db #0e,#4d,#ff,#ff,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#04,#4e,#1d
	db #19,#1e,#00,#b7,#00,#0f,#0f,#0f
	db #0f,#08,#08,#08,#08,#08,#08,#08
	db #08,#4e,#1d,#21,#1f,#00,#b7,#00
	db #0f,#2f,#0c,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#00,#00,#00
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
	db #00,#4e,#1d,#37,#1f,#00,#b7,#00
	db #1f,#05,#0f,#2e,#fe,#2d,#fc,#2c
	db #fa,#2b,#f8,#2a,#f0,#29,#ee,#44
	db #1f,#49,#1f,#00,#37,#00,#1f,#24
	db #2e,#03,#2d,#07,#0d,#2d,#03,#2d
	db #07,#56,#1f,#5b,#1f,#00,#37,#00
	db #1f,#24,#2e,#04,#2d,#07,#0d,#2d
	db #04,#2d,#07,#4e,#1d,#9a,#1f,#00
	db #b7,#00,#1e,#03,#1d,#03,#1d,#04
	db #1d,#04,#1c,#05,#1c,#05,#1b,#05
	db #1b,#05,#1a,#05,#19,#05,#19,#05
	db #18,#05,#18,#05,#17,#05,#17,#05
	db #16,#05,#16,#05,#15,#05,#15,#05
	db #14,#05,#14,#05,#13,#05,#13,#05
	db #12,#05,#12,#05,#11,#05,#11,#05
	db #10,#05,#4e,#1d,#b4,#1f,#00,#b7
	db #00,#1f,#02,#1e,#02,#1c,#02,#1a
	db #02,#18,#02,#16,#02,#14,#02,#12
	db #02,#10,#02,#00,#4e,#1d,#cb,#1f
	db #00,#b7,#00,#2f,#0c,#0d,#2b,#f6
	db #29,#f8,#27,#f0,#25,#ec,#23,#e8
	db #21,#ff,#00,#ca,#c2,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#03
	db #ce,#3e,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#03
	db #ce,#3e,#80,#02,#ce,#2c,#80,#01
	db #ce,#44,#80,#02,#ce,#2c,#80,#03
	db #ce,#44,#80,#02,#ce,#1e,#80,#01
	db #ce,#36,#80,#02,#ce,#22,#80,#03
	db #ce,#3a,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#03
	db #ce,#3e,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#03
	db #ce,#3e,#80,#02,#ce,#2c,#80,#01
	db #ce,#44,#80,#02,#ce,#2c,#80,#03
	db #ce,#44,#80,#02,#ce,#1e,#80,#01
	db #ce,#36,#80,#02,#ce,#22,#80,#03
	db #ce,#56,#80,#04,#57,#ca,#ca,#c0
	db #39,#6a,#80,#05,#ce,#64,#80,#06
	db #c2,#6e,#80,#05,#d2,#6e,#80,#06
	db #ce,#6b,#ce,#6f,#d6,#6a,#89,#05
	db #ce,#6e,#80,#06,#ce,#6e,#87,#05
	db #ce,#6a,#80,#06,#ce,#6a,#85,#05
	db #ce,#6e,#80,#06,#ce,#6e,#83,#05
	db #ce,#6b,#ce,#6a,#80,#06,#ce,#6e
	db #80,#05,#d2,#6e,#80,#06,#ce,#6b
	db #ce,#6f,#d6,#6a,#89,#05,#ce,#6e
	db #80,#06,#ce,#6e,#87,#05,#ce,#6a
	db #80,#06,#ce,#6a,#85,#05,#ce,#6e
	db #80,#06,#ce,#6e,#83,#05,#ce,#6b
	db #ce,#64,#80,#06,#c2,#ca,#ca,#c0
	db #34,#3e,#c0,#07,#e0,#c6,#e0,#c6
	db #e0,#c6,#f0,#c6,#f0,#c6,#f0,#c6
	db #f0,#c6,#f0,#c6,#f0,#6e,#81,#05
	db #d2,#6e,#80,#06,#ce,#6b,#ce,#6f
	db #d6,#6a,#89,#05,#ce,#6e,#80,#06
	db #ce,#6e,#87,#05,#ce,#6a,#80,#06
	db #ce,#6a,#85,#05,#ce,#6e,#80,#06
	db #ce,#6e,#83,#05,#ce,#6b,#ce,#6e
	db #80,#06,#ce,#6e,#80,#05,#d2,#6e
	db #80,#06,#ce,#6b,#ce,#6f,#d6,#6a
	db #89,#05,#ce,#6e,#80,#06,#ce,#6e
	db #87,#05,#ce,#5a,#80,#08,#ce,#5b
	db #5b,#57,#57,#ce,#53,#ce,#51,#49
	db #49,#6e,#80,#09,#ce,#65,#6e,#80
	db #06,#6a,#80,#09,#64,#80,#06,#6e
	db #80,#09,#6a,#80,#06,#6e,#80,#09
	db #ce,#65,#6e,#80,#06,#6a,#80,#09
	db #64,#80,#06,#6e,#80,#09,#6a,#80
	db #06,#6e,#80,#09,#ce,#65,#6e,#80
	db #06,#6a,#80,#09,#64,#80,#06,#6e
	db #80,#09,#6a,#80,#06,#74,#80,#09
	db #75,#73,#74,#80,#06,#6e,#80,#09
	db #ce,#6b,#6e,#80,#06,#6e,#80,#09
	db #ce,#65,#6e,#80,#06,#6a,#80,#09
	db #64,#80,#06,#6e,#80,#09,#6a,#80
	db #06,#6e,#80,#09,#ce,#65,#6e,#80
	db #06,#6a,#80,#09,#64,#80,#06,#6e
	db #80,#09,#6a,#80,#06,#6e,#80,#09
	db #ce,#65,#6e,#80,#06,#6a,#80,#09
	db #64,#80,#06,#6e,#80,#09,#6a,#80
	db #06,#74,#80,#09,#75,#73,#74,#80
	db #06,#6e,#80,#09,#ce,#6b,#6e,#80
	db #06,#ca,#ce,#86,#81,#0a,#ce,#87
	db #ce,#83,#ce,#87,#d2,#7d,#d2,#87
	db #ce,#87,#ce,#87,#ce,#83,#8d,#ce
	db #8d,#8b,#ce,#87,#83,#d4,#87,#ce
	db #87,#ce,#83,#ce,#87,#d2,#7d,#d2
	db #87,#ce,#87,#ce,#87,#ce,#83,#8d
	db #ce,#8d,#8b,#ce,#87,#83,#c2,#ea
	db #6a,#80,#0b,#83,#6b,#7f,#6b,#7d
	db #6a,#80,#06,#65,#56,#80,#0b,#6f
	db #57,#6b,#65,#6a,#80,#06,#65,#ce
	db #6b,#65,#e8,#6a,#80,#0b,#83,#6b
	db #7f,#6b,#7d,#82,#80,#06,#7d,#56
	db #80,#0b,#6f,#57,#6b,#65,#6a,#80
	db #06,#65,#c2,#6e,#80,#09,#ce,#6b
	db #6e,#80,#06,#6e,#80,#09,#6a,#80
	db #06,#6a,#80,#09,#6e,#80,#06,#6e
	db #80,#09,#6a,#80,#06,#6a,#80,#09
	db #6e,#80,#06,#74,#80,#09,#6a,#80
	db #06,#ce,#6a,#80,#0b,#83,#6b,#7f
	db #6b,#7d,#6a,#80,#06,#65,#56,#80
	db #0b,#6f,#53,#6b,#65,#6a,#80,#06
	db #65,#6a,#80,#09,#ce,#6f,#ce,#6b
	db #6a,#80,#06,#6e,#80,#09,#6e,#80
	db #06,#6a,#80,#09,#6a,#80,#06,#64
	db #80,#09,#64,#80,#06,#ce,#6b,#65
	db #d0,#6a,#80,#0b,#83,#6b,#7f,#6b
	db #7d,#82,#80,#06,#7d,#56,#80,#0b
	db #6f,#53,#6b,#65,#6a,#80,#06,#65
	db #6a,#80,#09,#c2,#48,#80,#0c,#d2
	db #56,#81,#09,#ce,#56,#80,#06,#ce
	db #52,#80,#09,#ce,#56,#80,#06,#ce
	db #52,#80,#09,#ce,#52,#80,#06,#ce
	db #56,#80,#09,#ce,#6e,#81,#0d,#66
	db #8d,#0e,#6e,#81,#0d,#66,#8d,#0e
	db #6e,#81,#0d,#66,#8d,#0e,#6a,#01
	db #d0,#6e,#81,#0d,#6a,#8d,#0e,#d0
	db #6e,#8d,#0d,#ca,#ce,#78,#81,#0d
	db #ca,#78,#80,#0d,#ce,#ca,#d2,#78
	db #80,#0d,#ca,#78,#80,#0d,#ce,#ca
	db #d2,#78,#80,#0d,#ca,#78,#80,#0d
	db #79,#ca,#ce,#74,#80,#0e,#d0,#78
	db #81,#0d,#74,#8d,#0e,#d0,#78,#8d
	db #0d,#26,#80,#01,#ce,#3e,#80,#02
	db #ce,#26,#80,#03,#ce,#3e,#80,#02
	db #ce,#22,#80,#01,#ce,#3a,#80,#02
	db #ce,#22,#80,#03,#ce,#3a,#80,#02
	db #ce,#26,#80,#01,#ce,#3e,#80,#02
	db #ce,#26,#80,#03,#ce,#3e,#80,#02
	db #ce,#26,#80,#01,#ce,#3e,#80,#02
	db #ce,#26,#80,#03,#ce,#3e,#80,#02
	db #ce,#30,#80,#01,#ce,#48,#80,#02
	db #ce,#30,#80,#03,#ce,#48,#80,#02
	db #ce,#30,#80,#01,#ce,#48,#80,#02
	db #ce,#30,#80,#03,#ce,#48,#80,#02
	db #ce,#30,#80,#01,#ce,#48,#80,#02
	db #ce,#30,#80,#03,#ce,#48,#80,#02
	db #ce,#30,#80,#01,#ce,#48,#80,#02
	db #ce,#30,#80,#03,#ce,#48,#80,#02
	db #c2,#78,#81,#0f,#d2,#3e,#85,#09
	db #d2,#3b,#d2,#3b,#d2,#3f,#ee,#86
	db #81,#05,#ce,#87,#86,#80,#06,#82
	db #80,#05,#86,#80,#06,#86,#80,#05
	db #82,#80,#06,#ce,#87,#d0,#82,#80
	db #05,#ce,#87,#82,#80,#06,#82,#80
	db #05,#86,#80,#06,#86,#80,#05,#83
	db #ce,#86,#80,#06,#8c,#80,#05,#ce
	db #8c,#80,#06,#8a,#80,#05,#ce,#8a
	db #80,#06,#c2,#ca,#ce,#7c,#81,#0d
	db #ca,#7c,#81,#0d,#7c,#01,#ce,#ca
	db #7c,#8d,#0d,#7c,#0d,#7c,#01,#ca
	db #7c,#81,#0d,#7c,#01,#ce,#ca,#7c
	db #8d,#0d,#7c,#0d,#7e,#81,#0e,#ca
	db #7e,#81,#0e,#7e,#01,#ce,#ca,#7e
	db #8d,#0e,#7e,#0d,#6a,#01,#ca,#6a
	db #81,#0e,#6a,#01,#ce,#ca,#1c,#80
	db #01,#ce,#34,#80,#02,#ce,#1c,#80
	db #03,#ce,#34,#80,#02,#ce,#1c,#80
	db #01,#ce,#34,#80,#02,#ce,#1c,#80
	db #03,#ce,#34,#80,#02,#ce,#1e,#80
	db #01,#ce,#36,#80,#02,#ce,#1e,#80
	db #03,#ce,#36,#80,#02,#ce,#22,#80
	db #01,#ce,#3a,#80,#02,#ce,#22,#80
	db #03,#ce,#48,#80,#04,#49,#ca,#ce
	db #4c,#80,#05,#ce,#65,#ce,#4d,#ce
	db #65,#d6,#87,#ce,#7d,#ce,#79,#64
	db #80,#06,#74,#80,#05,#60,#80,#06
	db #72,#80,#05,#75,#72,#80,#06,#74
	db #80,#05,#73,#74,#80,#06,#6e,#80
	db #05,#72,#80,#06,#6a,#80,#05,#6e
	db #80,#06,#ca,#ce,#52,#81,#07,#c6
	db #10,#57,#c6,#10,#c8,#01,#10,#c8
	db #03,#10,#c4,#05,#c4,#07,#52,#01
	db #c6,#10,#57,#c6,#10,#c8,#01,#10
	db #c8,#03,#10,#c4,#05,#c4,#07,#52
	db #01,#c6,#10,#57,#c6,#10,#c8,#01
	db #10,#c8,#03,#10,#c4,#05,#c4,#07
	db #52,#01,#c6,#10,#57,#c6,#10,#c8
	db #01,#10,#c8,#03,#10,#c4,#05,#c4
	db #07,#52,#01,#c6,#10,#57,#c6,#10
	db #c8,#01,#10,#c8,#03,#10,#c4,#05
	db #c4,#07,#52,#01,#c6,#10,#57,#c6
	db #10,#c8,#01,#10,#c8,#03,#10,#c4
	db #05,#c4,#07,#52,#01,#c6,#10,#57
	db #c6,#10,#c8,#01,#10,#c8,#03,#10
	db #c4,#05,#c4,#07,#52,#01,#c6,#10
	db #57,#c6,#10,#c8,#01,#10,#c8,#03
	db #10,#ca,#ce,#6e,#81,#0d,#6f,#6f
	db #6f,#6f,#6f,#d0,#6f,#6e,#0f,#d0
	db #6e,#0f,#ca,#d0,#60,#87,#04,#d2
	db #61,#d2,#61,#61,#61,#61,#d0,#6e
	db #81,#0d,#6f,#6f,#6f,#6f,#6f,#6f
	db #6f,#d0,#6f,#6e,#0f,#d0,#6e,#0f
	db #ca,#d0,#60,#87,#04,#d2,#61,#d2
	db #61,#61,#61,#61,#c2,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#2c,#80,#01
	db #ce,#44,#80,#02,#ce,#2c,#80,#01
	db #ce,#44,#80,#02,#ce,#1e,#80,#01
	db #ce,#36,#80,#02,#ce,#22,#80,#01
	db #ce,#3a,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#2c,#80,#01
	db #ce,#44,#80,#02,#ce,#2c,#80,#01
	db #ce,#44,#80,#02,#ce,#1e,#80,#01
	db #ce,#36,#80,#02,#ce,#22,#80,#01
	db #ce,#3a,#80,#02,#c2,#d0,#7c,#87
	db #07,#7d,#7d,#7d,#7d,#7d,#d0,#7d
	db #ca,#f4,#7c,#80,#07,#7d,#7d,#7d
	db #7d,#7d,#7d,#7d,#d0,#7d,#ca,#c2
	db #6e,#c3,#07,#fa,#c6,#fa,#c6,#fa
	db #c6,#fa,#6e,#40,#fa,#c6,#fa,#c6
	db #fa,#c6,#fa,#6e,#40,#fa,#c6,#fa
	db #c6,#fa,#c6,#fa,#6e,#40,#fa,#c6
	db #fa,#c6,#fa,#c6,#fa,#6e,#40,#fa
	db #c6,#fa,#c6,#fa,#c6,#fa,#6e,#40
	db #fa,#c6,#fa,#c6,#fa,#c6,#fa,#6e
	db #40,#fa,#c6,#fa,#c6,#fa,#c6,#fa
	db #6e,#40,#fa,#c6,#fa,#c6,#fa,#c6
	db #fa,#6e,#40,#fa,#c6,#fa,#c6,#fa
	db #c6,#fa,#6e,#40,#fa,#c6,#fa,#c6
	db #fa,#c6,#fa,#6e,#40,#fa,#c6,#fa
	db #c6,#fa,#c6,#fa,#6e,#40,#fa,#c6
	db #fa,#c6,#fa,#c6,#fa,#6e,#40,#fa
	db #c6,#fa,#c6,#fa,#c6,#fa,#6e,#40
	db #fa,#c6,#fa,#c6,#fa,#c6,#fa,#6e
	db #40,#fa,#c6,#fa,#c6,#fa,#c6,#fa
	db #6e,#40,#fa,#c6,#fa,#c6,#fa,#c6
	db #fa,#6e,#81,#0d,#ce,#ca,#ce,#6a
	db #80,#0e,#ce,#6e,#80,#0d,#ce,#ca
	db #d6,#6a,#80,#0e,#ce,#6e,#80,#0d
	db #ca,#6e,#80,#0d,#ce,#6a,#80,#0e
	db #ce,#6e,#80,#0d,#ce,#ca,#da,#6e
	db #80,#0d,#ce,#ca,#ce,#6a,#80,#0e
	db #ce,#6e,#80,#0d,#ce,#ca,#d6,#6a
	db #80,#0e,#ce,#6e,#80,#0d,#ca,#6e
	db #80,#0d,#ce,#6a,#80,#0e,#ce,#6e
	db #80,#0d,#ce,#ca,#c2,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#03
	db #ce,#3e,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#03
	db #ce,#3e,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#03
	db #ce,#3e,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#03
	db #ce,#3e,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#03
	db #ce,#3e,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#03
	db #ce,#3e,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#03
	db #ce,#3e,#80,#02,#ce,#26,#80,#01
	db #ce,#3e,#80,#02,#ce,#26,#80,#03
	db #ce,#3e,#80,#02,#c2,#ca,#c2,#ca
	db #ce,#78,#80,#0d,#ca,#78,#80,#0d
	db #79,#ca,#d2,#78,#80,#0d,#ca,#78
	db #80,#0d,#79,#ca,#d2,#78,#80,#0d
	db #ca,#78,#80,#0d,#79,#ca,#d2,#78
	db #80,#0d,#ca,#78,#80,#0d,#79,#ca
	db #d2,#7c,#80,#0d,#ca,#7c,#80,#0d
	db #ce,#ca,#d2,#7c,#80,#0d,#ca,#7c
	db #80,#0d,#ce,#ca,#d2,#7e,#80,#0e
	db #ca,#7e,#80,#0e,#ca,#7e,#80,#0e
	db #ca,#82,#80,#0e,#d0,#ca,#82,#80
	db #0e,#d0,#86,#80,#0d,#30,#80,#01
	db #ce,#48,#80,#02,#ce,#30,#80,#03
	db #ce,#48,#80,#02,#ce,#30,#80,#01
	db #ce,#48,#80,#02,#ce,#30,#80,#03
	db #ce,#48,#80,#02,#ce,#30,#80,#01
	db #ce,#48,#80,#02,#ce,#30,#80,#03
	db #ce,#48,#80,#02,#ce,#30,#80,#01
	db #ce,#48,#80,#02,#ce,#30,#80,#03
	db #ce,#48,#80,#02,#ce,#1c,#80,#01
	db #ce,#34,#80,#02,#ce,#1c,#80,#03
	db #ce,#34,#80,#02,#ce,#1c,#80,#01
	db #ce,#34,#80,#02,#ce,#1c,#80,#03
	db #ce,#34,#80,#02,#ce,#1e,#80,#01
	db #ce,#36,#80,#02,#ce,#1e,#80,#03
	db #ce,#36,#80,#02,#ce,#22,#80,#01
	db #ce,#3a,#80,#02,#ce,#22,#80,#03
	db #ce,#52,#80,#04,#53,#ca,#c2,#ca
	db #c0,#2e,#48,#c0,#07,#fa,#c6,#fa
	db #c6,#fa,#c6,#fa,#c6,#fa,#c6,#fa
	db #c6,#fa,#c6,#fa,#c6,#fa,#c6,#fa
	db #c6,#fa,#c6,#fa,#c6,#fa,#c6,#fa
	db #c6,#fa,#c6,#fa,#48,#80,#0c,#ce
	db #78,#80,#10,#ce,#56,#80,#04,#ce
	db #78,#80,#10,#ce,#48,#80,#0c,#ce
	db #78,#80,#10,#ce,#56,#80,#04,#ce
	db #78,#80,#10,#ce,#48,#80,#0c,#ce
	db #78,#80,#10,#ce,#56,#80,#04,#ce
	db #78,#80,#10,#ce,#48,#80,#0c,#ce
	db #78,#80,#10,#ce,#56,#80,#04,#ce
	db #48,#80,#0c,#ce,#49,#ce,#78,#80
	db #10,#ce,#56,#80,#04,#ce,#78,#80
	db #10,#ce,#48,#80,#0c,#ce,#78,#80
	db #10,#ce,#56,#80,#04,#ce,#78,#80
	db #10,#ce,#48,#80,#0c,#ce,#78,#80
	db #10,#ce,#56,#80,#04,#ce,#78,#80
	db #10,#ce,#48,#80,#0c,#ce,#56,#80
	db #04,#57,#57,#57,#57,#57,#86,#80
	db #11,#ce,#87,#ce,#87,#87,#d0,#87
	db #d2,#87,#d2,#87,#ce,#87,#ce,#87
	db #87,#d0,#87,#d2,#87,#d0,#6e,#80
	db #0b,#7d,#6f,#79,#6f,#75,#6f,#79
	db #7d,#74,#80,#06,#79,#7d,#d4,#6e
	db #80,#0b,#7d,#6f,#79,#6f,#75,#6f
	db #79,#6f,#6e,#80,#06,#79,#6f,#c2
	db #ca,#c0,#20,#6e,#80,#06,#7d,#6f
	db #79,#6f,#75,#6f,#79,#7d,#79,#7d
	db #ce,#79,#7d,#d0,#6f,#7d,#6f,#79
	db #6f,#75,#6f,#79,#6f,#ce,#79,#6f
	db #ce,#79,#7c,#80,#0b,#83,#87,#7d
	db #83,#87,#7d,#83,#87,#7c,#80,#06
	db #83,#87,#7d,#83,#87,#ce,#7c,#80
	db #0b,#83,#87,#7d,#83,#87,#7d,#83
	db #87,#7c,#80,#06,#83,#87,#7d,#83
	db #87,#ce,#7c,#80,#0b,#83,#87,#7d
	db #83,#87,#7d,#83,#87,#7c,#80,#06
	db #83,#87,#7d,#83,#87,#ce,#7c,#80
	db #0b,#83,#87,#7d,#83,#87,#7d,#83
	db #87,#7c,#80,#06,#83,#87,#7d,#83
	db #87,#c2,#64,#80,#0b,#6b,#6f,#65
	db #6b,#6f,#65,#6b,#6f,#64,#80,#06
	db #6b,#6f,#65,#6b,#6f,#ce,#64,#80
	db #0b,#6b,#6f,#65,#6b,#6f,#65,#6b
	db #6f,#64,#80,#06,#6b,#6f,#65,#6b
	db #6f,#ce,#64,#80,#0b,#6b,#6f,#65
	db #6b,#6f,#65,#6b,#6f,#64,#80,#06
	db #6b,#6f,#65,#6b,#6f,#ce,#64,#80
	db #0b,#6b,#6f,#65,#6b,#6f,#65,#6b
	db #6f,#64,#80,#06,#6b,#6f,#65,#6b
	db #6f,#c2,#ff,#ff,#ff
;
.init_music		; #3060 - reallocated by Megachur
;
	ld de,l1c00
	jp real_init_music
;
.music_info
	db "CPCTro (2009)(ZeroTeam)(Factor6)",0
	db "StArkos",0

	read "music_end.asm"
