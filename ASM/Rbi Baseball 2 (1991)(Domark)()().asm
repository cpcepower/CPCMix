; Music of Rbi Baseball 2 (1991)(Domark)()()
; Ripped by Megachur the 20/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RBIBASE2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #12f1

	read "music_header.asm"

	jp l1387        ; play music
	jp l1314        ; init music
	jp l130e
	xor a
	ld (l1361),a
	ld d,#08
	call l1c48
	ld d,#09
	call l1c48
	ld d,#0a
	call l1c48
	ret
.l130e
	ld (l1364),a
	jp l1387
;
.init_music
.l1314
;
	ld hl,l1cae             ; added by Megachur
	ld a,(hl)
	ld (l1360),a
	inc hl
	ld a,(hl)
	ld (l135f),a
	inc hl
	ld (l137c),hl
	ld (l1362),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l136c),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l136e),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1370),de
	xor a
	ld (l1384),a
	ld (l1385),a
	ld (l1386),a
	ld (l137a),a
	ld (l1366),a
	ld (l1367),a
	ld (l1368),a
	inc a
	ld (l1361),a
	ld a,(l137b)
	ld (l136b),a
	jp l1387
.l1360 equ $ + 1
.l135f
	db #09,#03
.l1368 equ $ + 7
.l1367 equ $ + 6
.l1366 equ $ + 5
.l1364 equ $ + 3
.l1362 equ $ + 1
.music_end
.l1361
	db #00,#00,#00,#00,#00,#01,#00,#00
.l1370 equ $ + 7
.l136e equ $ + 5
.l136c equ $ + 3
.l136b equ $ + 2
.l1369
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1375 equ $ + 4
.l1374 equ $ + 3
.l1372 equ $ + 1
	db #00,#00,#00,#00,#00
.l1376
	dw l1c6e
.l1378
	dw l1641
.l1381 equ $ + 7
.l1380 equ $ + 6
.l137e equ $ + 4
.l137c equ $ + 2
.l137b equ $ + 1
.l137a
	db #00,#40,#00,#00,#00,#00,#00,#00
.l1386 equ $ + 4
.l1385 equ $ + 3
.l1384 equ $ + 2
.l1382
	db #00,#00,#00,#00,#00
;
.play_music
.l1387
;
	ld a,(l1361)
	or a
	ret z
	ld a,(l1364)
	or a
	jr z,l13b3
	ex af,af'
	ld a,(l1369)
	or a
	jr z,l139f
	dec a
	ld (l1369),a
	jr l13b3
.l139f
	ex af,af'
	ld (l1369),a
	ld a,(l135f)
	dec a
	ld (l135f),a
	cp #ff
	jr nz,l13b3
	xor a
	ld (l1361),a
	ret
.l13b3
	ld a,(l137a)
	or a
	jr z,l13c0
	dec a
	ld (l137a),a
	jp l1512
.l13c0
	ld a,(l1360)
	ld (l137a),a
	ld a,(l136b)
	dec a
	ld (l136b),a
	or a
	jr nz,l1415
	ld a,(l137b)
	ld (l136b),a
	ld hl,(l1362)
	ld de,#0006
	add hl,de
.l13dd
	ld (l1362),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,d
	or a
	jr nz,l1401
	ld a,e
	cp #ff
	jr nz,l13f2
	xor a
	ld (l1361),a
	ret
.l13f2
	ld l,a
	ld h,#00
	add hl,hl
	push hl
	add hl,hl
	pop de
	add hl,de
	ld de,(l137c)
	add hl,de
	jr l13dd
.l1401
	ld (l136c),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l136e),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1370),de
.l1415
	ld a,(l1384)
	or a
	jr z,l1421
	dec a
	ld (l1384),a
	jr l1431
.l1421
	ld hl,(l136c)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l136c),hl
	ex de,hl
	ld a,#00
	call l146d
.l1431
	ld a,(l1385)
	or a
	jr z,l143d
	dec a
	ld (l1385),a
	jr l144d
.l143d
	ld hl,(l136e)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l136e),hl
	ex de,hl
	ld a,#01
	call l146d
.l144d
	ld a,(l1386)
	or a
	jr z,l1459
	dec a
	ld (l1386),a
	jr l1469
.l1459
	ld hl,(l1370)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1370),hl
	ex de,hl
	ld a,#02
	call l146d
.l1469
	call l1512
	ret
.l146d
	ld (l137e),a
	ld (l1380),hl
	ld a,l
	and #7f
	ld (l1382),a
	cp #54
	jr z,l1486
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ex de,hl
.l1486
	ld a,(l1381)
	ld c,a
	and #38
	srl a
	srl a
	srl a
	and #07
	ld l,a
	ld h,#00
	ld bc,l150a
	add hl,bc
	ld a,(hl)
	ld hl,(l137e)
	ld h,#00
	ld bc,l1384
	add hl,bc
	ld (hl),a
	ld a,(l1382)
	cp #54
	jr nz,l14ae
	ret
.l14ae
	ld a,(l137e)
	ld c,a
	ld a,(l1381)
	and #07
	ex de,hl
	call l180e
	ld a,(l1380)
	and #80
	ret z
	ld e,(ix+#09)
	ld d,(ix+#0a)
	ld (ix+#09),l
	ld (ix+#0a),h
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld a,(l1381)
	and #c0
	srl a
	srl a
	srl a
	srl a
	srl a
	srl a
	or a
	jr nz,l14eb
	ld a,#01
	jr l14f2
.l14eb
	cp #03
	jr nz,l14f1
	ld a,#08
.l14f1
	add a
.l14f2
	neg
	ld c,a
	ld a,d
	cp h
	jr nz,l14fb
	ld a,e
	cp l
.l14fb
	jr c,l1501
	ld a,c
	neg
	ld c,a
.l1501
	ld (ix+#0b),c
	ld a,#01
	ld (ix+#08),a
	ret
.l150a
	nop
	ld bc,#0302
	dec b
	rlca
	rrca
	ccf
.l1512
	ld ix,l1be8
	ld b,#03
.l1518
	push bc
	call l1525
	ld de,#0020
	add ix,de
	pop bc
	djnz l1518
	ret
.l1525
	ld a,(ix+#1b)
	ld l,a
	ld h,#00
	ld de,l1366
	add hl,de
	ld a,(hl)
	or a
	ret nz
	ld a,(ix+#01)
	or a
	jr nz,l1543
	ld a,(ix+#1b)
	or #08
	ld d,a
	xor a
	call l1c48
	ret
.l1543
	cp #ff
	jr z,l154b
	dec a
	ld (ix+#01),a
.l154b
	call l168e
	call l159c
	ld a,(ix+#1d)
	add a
	add a
	add a
	or (ix+#1c)
	cpl
	and #09
	ld c,a
	ld b,#f6
	ld a,(ix+#1b)
	or a
	jr z,l156e
.l1566
	sla c
	scf
	sla b
	dec a
	jr nz,l1566
.l156e
	ld a,(l1375)
	and b
	or c
	ld (l1375),a
	ld d,#07
	call l1c48
	ld hl,(l1372)
	call l17e4
	ld a,(ix+#1b)
	add a
	ld d,a
	ld a,l
	call l1c48
	inc d
	ld a,h
	call l1c48
	ld a,(ix+#1b)
	or #08
	ld d,a
	ld a,(l1374)
	call l1c48
	ret
.l159c
	ld a,(ix+#03)
	or a
	jr z,l15f8
	ld a,(ix+#18)
	or a
	jr nz,l15f0
	ld l,(ix+#16)
	ld h,(ix+#17)
	ld a,(hl)
	or a
	jr nz,l15be
	ld a,(ix+#19)
	ld (ix+#00),a
	xor a
	ld (ix+#03),a
	jr l15fa
.l15be
	inc hl
	ld c,a
	and #0f
	cp #0f
	jr nz,l15d9
	ld a,(ix+#03)
	dec a
	add a
	add a
	add a
	add a
	ld e,a
	ld d,#00
	ld hl,(l1378)
	add hl,de
	ld a,(hl)
	ld c,a
	and #0f
.l15d9
	ld (ix+#18),a
	ld a,c
	and #f0
	srl a
	srl a
	srl a
	srl a
	ld (ix+#19),a
	ld (ix+#16),l
	ld (ix+#17),h
.l15f0
	dec (ix+#18)
	ld a,(ix+#19)
	jr l15fa
.l15f8
	ld a,#0f
.l15fa
	ld (l1374),a
	ld e,a
	ld a,#0f
	sub (ix+#00)
	neg
	add e
	cp #10
	jr c,l160b
	xor a
.l160b
	ld e,a
	ld a,(l135f)
	ld d,a
	ld a,#0f
	sub d
	neg
	add e
	cp #10
	jr c,l161b
	xor a
.l161b
	ld (l1374),a
	ld a,(ix+#05)
	ex af,af'
	or a
	ret z
	ld a,(ix+#1a)
	or a
	jr z,l162f
	dec a
	ld (ix+#1a),a
	ret
.l162f
	ld a,(ix+#04)
	ld (ix+#1a),a
	ex af,af'
	neg
	ld e,a
	ld a,(l1374)
	add e
	ld (l1374),a
	ret
.l1641
	db #f8,#e6,#d6,#c6,#b6,#a6,#96,#86
	db #76,#66,#56,#46,#36,#26,#06,#00
	db #f4,#e4,#d4,#c4,#b4,#a4,#94,#84
	db #74,#64,#54,#44,#34,#24,#04,#00
	db #f4,#e2,#d2,#c2,#b2,#a2,#92,#82
	db #72,#62,#52,#42,#32,#22,#02,#00
	db #f8,#e8,#d8,#c8,#b8,#a8,#98,#88
	db #78,#68,#58,#48,#38,#28,#08,#00
	db #f1,#e1,#d1,#c1,#a1,#91,#81,#61
	db #51,#41,#31,#21,#00
.l168e
 ld a,(ix+#08)
	or a
	jr z,l16bb
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld e,(ix+#09)
	ld d,(ix+#0a)
	ld a,h
	cp d
	jr nz,l16a8
	ld a,l
	cp e
	jr z,l16bb
.l16a8
	ld h,#00
	ld a,(ix+#0b)
	cp #11
	jr c,l16b3
	ld h,#ff
.l16b3
	ld l,a
	add hl,de
	ld (ix+#09),l
	ld (ix+#0a),h
.l16bb
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (l1372),hl
	ld a,(ix+#0e)
	or a
	jr z,l1713
	ld e,a
	ld a,(ix+#11)
	or a
	jr z,l16da
	dec a
	ld (ix+#11),a
	ld a,(ix+#1e)
	jr l1700
.l16da
	ld a,(ix+#0f)
	ld (ix+#11),a
	ld a,e
	add a
	ld l,a
	ld h,#00
	ld de,l176a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#10)
	ld a,l
	ld h,#00
	add hl,de
	inc a
	ld (ix+#10),a
	ld a,(hl)
	cp #ff
	jr nz,l1700
	xor a
	ld (ix+#10),a
.l1700
	ld l,a
	ld h,#00
	ld (ix+#1e),a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,(l1372)
	add hl,de
	ld (l1372),hl
.l1713
	ld a,(ix+#13)
	or a
	ret z
	ex af,af'
	ld a,(ix+#14)
	or a
	jr z,l1725
	dec a
	ld (ix+#14),a
	jr l1757
.l1725
	ld a,(ix+#06)
	ld (ix+#14),a
	ex af,af'
	ld l,(ix+#15)
	cp #ff
	jr z,l1743
	add l
	ld (ix+#15),a
	ld l,(ix+#07)
	cp l
	jr nz,l1757
	ld a,#ff
	ld (ix+#13),a
	ret
.l1743
	add l
	ld (ix+#15),a
	ex af,af'
	ld a,(ix+#07)
	neg
	ld l,a
	ex af,af'
	cp l
	jr nz,l1757
	ld a,#01
	ld (ix+#13),a
.l1757
	ld e,(ix+#15)
	ld d,#00
	bit 7,e
	jr z,l1762
	ld d,#ff
.l1762
	ld hl,(l1372)
	add hl,de
	ld (l1372),hl
	ret
.l176a
	db #00,#00
	dw l178a,l178d,l1790,l1794
	dw l1797,l179b,l179f,l17a4
	dw l17a7,l17ab,l17af,l17b4
	dw l17b8,l17bd,l17c2
.l178a
	db #00
.l1790 equ $ + 5
.l178d equ $ + 2
	db #03,#ff,#00,#04,#ff,#00,#03,#04
.l1797 equ $ + 4
.l1794 equ $ + 1
	db #ff,#00,#07,#ff,#00,#03,#07,#ff
.l179f equ $ + 4
.l179b
	db #00,#04,#07,#ff,#00,#03,#04,#07
.l17a7 equ $ + 4
.l17a4 equ $ + 1
	db #ff,#00,#0c,#ff,#00,#03,#0c,#ff
.l17af equ $ + 4
.l17ab
	db #00,#04,#0c,#ff,#00,#03,#04,#0c
.l17b8 equ $ + 5
.l17b4 equ $ + 1
	db #ff,#00,#07,#0c,#ff,#00,#03,#07
.l17c2 equ $ + 7
.l17bd equ $ + 2
	db #0c,#ff,#00,#04,#07,#0c,#ff,#00
	db #03,#04,#07,#0c,#ff,#01,#fd,#ff
	xor a
	ld d,#08
	call l1c48
	inc d
	call l1c48
	inc d
	call l1c48
	ld d,#07
	ld a,#c0
	call l1c48
	ld (l1375),a
	ret
.l17e4
	ld de,#0180
	add hl,de
	ld de,#0180
	ld b,#00
.l17ed
	ld a,h
	cp d
	jr nz,l17f3
	ld a,l
	cp e
.l17f3
	jr c,l17fb
	or a
	sbc hl,de
	inc b
	jr l17ed
.l17fb
	add hl,hl
	ld de,l18e8
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,b
	or a
	ret z
.l1807
	srl h
	rr l
	djnz l1807
	ret
.l180e
	ex af,af'
	ld a,c
	ld (l137e),a
	add a
	add a
	add a
	add a
	add a
	ld e,a
	ld d,#00
	ld ix,l1be8
	add ix,de
	ld e,(ix+#09)
	ld d,(ix+#0a)
	push de
	ld (ix+#09),l
	ld (ix+#0a),h
	ex af,af'
	add a
	add a
	add a
	ld e,a
	ld d,#00
	ld hl,(l1376)
	add hl,de
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#00),a
	ld a,c
	and #f0
	srl a
	srl a
	srl a
	srl a
	ld c,a
	and #01
	ld (ix+#1c),a
	ld a,c
	srl a
	ld (ix+#1d),a
	ld a,(hl)
	inc hl
	exx
	ld (ix+#03),a
	dec a
	add a
	add a
	add a
	add a
	ld hl,(l1378)
	ld e,a
	ld d,#00
	add hl,de
	ld (ix+#16),l
	ld (ix+#17),h
	xor a
	ld (ix+#18),a
	exx
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#04),a
	ld a,c
	srl a
	srl a
	srl a
	srl a
	ld (ix+#05),a
	xor a
	ld (ix+#1a),a
	ld a,(hl)
	ld b,a
	inc hl
	ld c,a
	and #0f
	ld (ix+#06),a
	ld a,c
	srl a
	srl a
	srl a
	srl a
	ld (ix+#07),a
	ld c,a
	xor a
	ld (ix+#14),a
	ld (ix+#15),a
	ld a,b
	or a
	jr z,l18b0
	ld a,#01
.l18b0
	ld (ix+#13),a
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#0e),a
	ld a,c
	srl a
	srl a
	srl a
	srl a
	ld (ix+#0f),a
	xor a
	ld (ix+#10),a
	ld (ix+#11),a
	ld a,(hl)
	inc hl
	ld (ix+#01),a
	ld a,(l137e)
	ld (ix+#1b),a
	or a
	jr z,l18e2
	ld d,#06
	ld a,(hl)
	call l1c48
.l18e2
	xor a
	ld (ix+#08),a
	pop hl
	ret
.l18e8
	dw #0fff,#0ff8,#0ff0,#0fe9
	dw #0fe2,#0fda,#0fd3,#0fcc
	dw #0fc4,#0fbd,#0fb6,#0fae
	dw #0fa7,#0fa0,#0f99,#0f92
	dw #0f8a,#0f83,#0f7c,#0f75
	dw #0f6e,#0f67,#0f60,#0f58
	dw #0f51,#0f4a,#0f43,#0f3c
	dw #0f35,#0f2e,#0f27,#0f20
	dw #0f19,#0f12,#0f0b,#0f04
	dw #0efd,#0ef6,#0ef0,#0ee9
	dw #0ee2,#0edb,#0ed4,#0ecd
	dw #0ec6,#0ec0,#0eb9,#0eb2
	dw #0eab,#0ea4,#0e9e,#0e97
	dw #0e90,#0e89,#0e83,#0e7c
	dw #0e75,#0e6f,#0e68,#0e61
	dw #0e5b,#0e54,#0e4d,#0e47
	dw #0e40,#0e3a,#0e33,#0e2d
	dw #0e26,#0e1f,#0e19,#0e12
	dw #0e0c,#0e05,#0dff,#0df8
	dw #0df2,#0dec,#0de5,#0ddf
	dw #0dd8,#0dd2,#0dcc,#0dc5
	dw #0dbf,#0db9,#0db2,#0dac
	dw #0da6,#0d9f,#0d99,#0d93
	dw #0d8c,#0d86,#0d80,#0d7a
	dw #0d73,#0d6d,#0d67,#0d61
	dw #0d5b,#0d55,#0d4e,#0d48
	dw #0d42,#0d3c,#0d36,#0d30
	dw #0d2a,#0d24,#0d1e,#0d17
	dw #0d11,#0d0b,#0d05,#0cff
	dw #0cf9,#0cf3,#0ced,#0ce7
	dw #0ce1,#0cdc,#0cd6,#0cd0
	dw #0cca,#0cc4,#0cbe,#0cb8
	dw #0cb2,#0cac,#0ca6,#0ca1
	dw #0c9b,#0c95,#0c8f,#0c89
	dw #0c84,#0c7e,#0c78,#0c72
	dw #0c6d,#0c67,#0c61,#0c5b
	dw #0c56,#0c50,#0c4a,#0c45
	dw #0c3f,#0c39,#0c34,#0c2e
	dw #0c28,#0c23,#0c1d,#0c18
	dw #0c12,#0c0c,#0c07,#0c01
	dw #0bfc,#0bf6,#0bf1,#0beb
	dw #0be6,#0be0,#0bdb,#0bd5
	dw #0bd0,#0bca,#0bc5,#0bbf
	dw #0bba,#0bb5,#0baf,#0baa
	dw #0ba4,#0b9f,#0b9a,#0b94
	dw #0b8f,#0b8a,#0b84,#0b7f
	dw #0b7a,#0b74,#0b6f,#0b6a
	dw #0b65,#0b5f,#0b5a,#0b55
	dw #0b50,#0b4a,#0b45,#0b40
	dw #0b3b,#0b36,#0b30,#0b2b
	dw #0b26,#0b21,#0b1c,#0b17
	dw #0b12,#0b0c,#0b07,#0b02
	dw #0afd,#0af8,#0af3,#0aee
	dw #0ae9,#0ae4,#0adf,#0ada
	dw #0ad5,#0ad0,#0acb,#0ac6
	dw #0ac1,#0abc,#0ab7,#0ab2
	dw #0aad,#0aa8,#0aa3,#0a9e
	dw #0a99,#0a95,#0a90,#0a8b
	dw #0a86,#0a81,#0a7c,#0a77
	dw #0a72,#0a6e,#0a69,#0a64
	dw #0a5f,#0a5a,#0a56,#0a51
	dw #0a4c,#0a47,#0a43,#0a3e
	dw #0a39,#0a34,#0a30,#0a2b
	dw #0a26,#0a22,#0a1d,#0a18
	dw #0a14,#0a0f,#0a0a,#0a06
	dw #0a01,#09fc,#09f8,#09f3
	dw #09ef,#09ea,#09e6,#09e1
	dw #09dc,#09d8,#09d3,#09cf
	dw #09ca,#09c6,#09c1,#09bd
	dw #09b8,#09b4,#09af,#09ab
	dw #09a6,#09a2,#099d,#0999
	dw #0995,#0990,#098c,#0987
	dw #0983,#097e,#097a,#0976
	dw #0971,#096d,#0969,#0964
	dw #0960,#095c,#0957,#0953
	dw #094f,#094a,#0946,#0942
	dw #093e,#0939,#0935,#0931
	dw #092d,#0928,#0924,#0920
	dw #091c,#0917,#0913,#090f
	dw #090b,#0907,#0903,#08fe
	dw #08fa,#08f6,#08f2,#08ee
	dw #08ea,#08e6,#08e1,#08dd
	dw #08d9,#08d5,#08d1,#08cd
	dw #08c9,#08c5,#08c1,#08bd
	dw #08b9,#08b5,#08b1,#08ad
	dw #08a9,#08a5,#08a1,#089d
	dw #0899,#0895,#0891,#088d
	dw #0889,#0885,#0881,#087d
	dw #0879,#0875,#0871,#086e
	dw #086a,#0866,#0862,#085e
	dw #085a,#0856,#0852,#084f
	dw #084b,#0847,#0843,#083f
	dw #083b,#0838,#0834,#0830
	dw #082c,#0829,#0825,#0821
	dw #081d,#081a,#0816,#0812
	dw #080e,#080b,#0807,#0803
.l1be8
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0100,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0200,#0000,#0000
.l1c48
	push bc
	push de
	push af
	ld c,a
	ld a,d
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
	pop af
	pop de
	pop bc
	ret
.l1c6e
	db #1d,#02,#00,#20,#00,#3c,#00,#00
	db #1d,#05,#00,#20,#00,#23,#00,#00
	db #1d,#05,#00,#00,#0c,#50,#00,#00
	db #1c,#02,#00,#11,#06,#50,#00,#00
	db #1c,#02,#00,#11,#06,#50,#00,#00
	db #2f,#03,#00,#11,#15,#19,#1f,#00
	db #3f,#05,#00,#00,#00,#19,#05,#00
	db #3f,#05,#00,#20,#00,#3c,#00,#00
.l1cae
	db #02,#0f
	dw l1e4a,l1f06,l1f06,l1e4a
	dw l1f06,l1f06,l1e4a,l1e8a
	dw l1f06,l1e4a,l1e8a,l1f06
	dw l1e4a,l1e8a,l1eb2,l1e4a
	dw l1e8a,l1edc,l1d36,l1d66
	dw l1d7e,l1d36,l1d66,l1d7e
	dw l1d36,l1d66,l1d98,l1d36
	dw l1d66,l1d98,l1d36,l1d66
	dw l1d7e,l1d36,l1d66,l1d7e
	dw l1d36,l1d66,l1d98,l1d36
	dw l1d66,l1d98,l1dca,l1dfa
	dw l1e3a,l1dca,l1dfa,l1e3a
	dw l1dca,l1dfa,l1e3a,l1dca
	dw l1dfa,l1e3a,l1e4a,l1e8a
	dw l1eb2,l1e4a,l1e8a,l1edc
	dw l1e4a,l1e8a,l1eb2,l1e4a
	dw l1e8a,l1edc
.l1d36 equ $ + 2
	db #06,#00,#0c,#1e,#18,#09,#0c,#19
	db #0c,#09,#18,#09,#0c,#09,#0a,#1e
	db #16,#09,#0a,#19,#0a,#09,#16,#09
	db #0a,#09,#05,#1e,#11,#09,#05,#19
	db #05,#09,#11,#09,#05,#09,#07,#1e
	db #13,#09,#07,#19,#07,#0e,#13,#0e
.l1d66 equ $ + 2
	db #07,#0e,#24,#23,#24,#23,#24,#1b
	db #2e,#23,#2e,#23,#2e,#1b,#29,#23
	db #29,#23,#29,#1b,#2b,#23,#2b,#23
.l1d7e equ $ + 2
	db #2b,#1b,#24,#1f,#24,#0f,#24,#0f
	db #22,#1f,#24,#0f,#24,#0f,#27,#1f
	db #24,#0f,#29,#1f,#24,#0f,#54,#18
.l1d98 equ $ + 4
	db #54,#30,#54,#30,#30,#18,#30,#08
	db #30,#08,#2e,#18,#30,#08,#30,#08
	db #b3,#d8,#30,#08,#35,#18,#30,#08
	db #54,#18,#b8,#d8,#37,#18,#35,#08
	db #33,#08,#30,#08,#54,#08,#30,#0f
	db #2e,#0f,#2b,#0f,#30,#0f,#2e,#0f
.l1dca equ $ + 6
	db #2b,#0f,#30,#0f,#2e,#0f,#07,#19
	db #07,#09,#07,#09,#07,#1e,#07,#09
	db #07,#09,#05,#19,#05,#09,#05,#09
	db #05,#1e,#05,#09,#05,#09,#0c,#19
	db #0c,#09,#0c,#09,#0c,#1e,#0c,#09
	db #0c,#09,#0c,#19,#0c,#09,#0c,#09
.l1dfa equ $ + 6
	db #0c,#1e,#0c,#0e,#0c,#0e,#37,#09
	db #32,#09,#2b,#09,#37,#09,#32,#09
	db #2b,#09,#35,#09,#32,#09,#35,#09
	db #30,#09,#29,#09,#35,#09,#30,#09
	db #29,#09,#33,#09,#30,#09,#0c,#09
	db #13,#09,#18,#09,#13,#09,#18,#09
	db #1f,#09,#18,#09,#1f,#09,#24,#09
	db #1f,#09,#24,#09,#2b,#09,#30,#09
.l1e3a equ $ + 6
	db #2b,#09,#30,#09,#37,#09,#37,#2c
	db #43,#2c,#35,#2c,#29,#2c,#18,#2c
.l1e4a equ $ + 6
	db #24,#2c,#30,#2c,#3c,#2c,#11,#09
	db #11,#09,#1d,#09,#11,#09,#11,#0e
	db #11,#09,#0f,#09,#11,#09,#11,#09
	db #11,#09,#1d,#09,#11,#09,#11,#0e
	db #11,#09,#0f,#09,#11,#09,#16,#09
	db #16,#09,#22,#09,#16,#09,#16,#0e
	db #16,#09,#0c,#09,#16,#09,#16,#09
	db #16,#09,#22,#09,#16,#09,#16,#0e
.l1e8a equ $ + 6
	db #16,#0e,#0c,#0e,#16,#0e,#35,#0a
	db #35,#0a,#35,#22,#35,#1a,#35,#0a
	db #35,#0a,#54,#18,#41,#0a,#54,#18
	db #35,#1a,#3a,#0a,#3a,#0a,#3a,#22
	db #3a,#1a,#3a,#0a,#3a,#0a,#54,#18
.l1eb2 equ $ + 6
	db #46,#0a,#54,#18,#3a,#1a,#35,#1f
	db #33,#0f,#30,#0f,#35,#1f,#33,#0f
	db #30,#0f,#c1,#d8,#3a,#18,#3c,#18
	db #b5,#d8,#24,#0f,#27,#1f,#24,#0f
	db #27,#1f,#24,#0f,#27,#1f,#24,#0f
	db #27,#1f,#24,#0f,#27,#1f,#24,#0f
.l1edc
	db #29,#0f,#2e,#1f,#29,#0f,#2e,#1f
	db #29,#0f,#2e,#1f,#29,#0f,#2e,#1f
	db #29,#0f,#2e,#1f,#24,#0f,#2e,#1a
	db #29,#1a,#3a,#1a,#35,#1a,#46,#1a
	db #41,#1a,#2e,#0a,#54,#08,#2e,#0a
.l1f06 equ $ + 2
	db #54,#08,#54,#38,#0c,#0c,#0c,#00
	db #04,#0c,#0c,#0c,#0c,#0c,#0c,#3c
	db #39,#22,#04,#0c,#0c,#0c,#0c,#0c
	db #1c,#fc,#39,#00,#0c,#0c,#0c,#0c
	db #0c,#0c,#7c,#bc,#22,#04,#0c,#0c
	db #0c,#0c,#0c,#1c,#fc,#39,#00,#0c
	db #0c,#0c,#0c,#08,#00,#fc,#bc,#00
	db #0c,#0c,#0c,#1c,#fc,#39,#7c,#fc
	db #22,#04,#0c,#0c,#7c,#fc,#00,#5c
	db #fc,#28,#04,#0c,#0c,#fc,#bc,#04
	db #1c,#fc,#a8,#04,#0c,#1c,#fc,#39
	db #00,#0c,#fc,#b9,#00,#0c,#5c,#fc
	db #bc,#22,#04,#fc,#bc,#00,#0c,#7c
	db #fc,#fc,#39,#00,#7c,#fc,#00,#0c
	db #fc,#bc,#fc,#bc,#22,#54,#fc,#00
	db #0c,#1c,#ac,#7c,#fc,#39,#54,#fc
	db #00,#0c,#0c,#2c,#1c,#fc,#bc,#76
	db #fc,#00,#0c,#0c,#0c,#0c,#7c,#fc
	db #7c,#fc,#00,#0c,#0c,#0c,#00,#1c
	db #fc,#fc,#fc,#00,#0c,#0c,#bc,#22
	db #04,#7c,#fc,#fc,#00,#0c,#0c,#fc
	db #39,#00,#54,#fc,#fc,#22,#04,#0c
	db #fc,#fc,#39,#54,#fc,#fc,#39,#00
	db #1c,#fc,#7c,#fc,#fc,#fc,#fc,#bc
	db #00,#7c,#bc,#36,#fc,#fc,#fc,#7c
	db #fc,#00,#fc,#39,#14,#fc,#fc,#bc
	db #14,#bc,#04,#7c,#28,#0c,#7c,#bc
	db #2c,#0c,#2c,#0c,#1c,#0c,#0c,#1c
	db #2c,#0c,#0c,#0c,#0c,#07,#00
;
.music_info
	db "Rbi Baseball 2 (1991)(Domark)()",0
	db "",0

	read "music_end.asm"
