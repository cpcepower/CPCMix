; Music of Tintin on the Moon (1989)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 02/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TINTIOTM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #1196

	read "music_header.asm"

;
.init_music
.l1196
;
	ld hl,l15f6
	ld (hl),#00
	ld de,l15f7
	ld bc,#0128
	ldir
	ld a,(l1805)
	ld (l171f),a
	ld bc,l1804
	ld hl,(l1806)
	add hl,bc
	ld (l1722),hl
	ld hl,(l1808)
	add hl,bc
	ld (l1724),hl
	ld hl,(l180a)
	add hl,bc
	ld (l15fb),hl
	ld hl,(l180c)
	add hl,bc
	ld (l1636),hl
	ld hl,(l180e)
	add hl,bc
	ld (l1671),hl
	ld hl,l1810
	ld (l1720),hl
	ld hl,l15f0
	push hl
	ld de,l15f6
	ld bc,#0005
	ldir
	pop hl
	push hl
	ld de,l1631
	ld c,#05
	ldir
	pop hl
	ld de,l166c
	ld c,#05
	ldir
	ld c,#38
.l11f4
	ld a,#07
.l11f6
	push af
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
	pop af
	ret
;
.play_music	;.l1218
;
	ld a,#08
	ld (l15ee),a
	cpl
	ld (l15ef),a
	ld ix,l1727
	ld b,#03
	ld hl,l168b
.l122a
	ld a,(hl)
	cp (ix+#00)
	jr c,l1233
	ld a,(ix+#00)
.l1233
	ld c,a
	ld a,b
	add #07
	call l11f6
	ld de,#003b
	and a
	sbc hl,de
	inc ix
	djnz l122a
	ld hl,l171f
	dec (hl)
	ld ix,l15f6
	xor a
.l124d
	ld (l1726),a
	ld a,(ix+#07)
	or a
	jp nz,l149f
.l1257
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l1261
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,l12a7
	ld l,(ix+#01)
	ld h,(ix+#02)
.l1272
	ld a,(hl)
	cp #ff
	jr nz,l1286
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	jp l1272
.l1286
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l1720)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	push bc
	pop hl
	ld bc,l1804
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l1261
.l12a7
	bit 7,a
	jr nz,l130a
	ld hl,l1730
	or a
	jr z,l12b4
	add (ix+#20)
.l12b4
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld e,(hl)
	ld (ix+#36),e
	ld (ix+#38),e
	inc hl
	ld e,(hl)
	ld (ix+#37),e
	ld (ix+#39),e
	ld (ix+#0a),b
	ld (ix+#21),b
	ld (ix+#1f),b
	push ix
	pop hl
	ld c,#0b
	add hl,bc
	ex de,hl
	ld a,(l1726)
	inc a
	ld hl,l1693
	ld c,#14
.l12e1
	add hl,bc
	dec a
	jr nz,l12e1
	ldir
	push ix
	pop hl
	ld c,#22
	add hl,bc
	ex de,hl
	ld a,(l1726)
	inc a
	ld hl,l16cf
	ld c,#14
.l12f7
	add hl,bc
	dec a
	jr nz,l12f7
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l148b
.l130a
	bit 6,a
	jr nz,l134f
	bit 5,a
	jr z,l133c
	push af
	xor a
	ld (l172a),a
	pop af
.l1318
	and #1f
	ld b,a
	ld a,(l15ed)
	push hl
	jr z,l1327
	ld hl,l15ef
	and (hl)
	jr l132b
.l1327
	ld hl,l15ee
	or (hl)
.l132b
	ld (l15ed),a
	pop hl
	ld c,a
	call l11f4
	ld c,b
	ld a,#06
	call l11f6
	jp l148b
.l133c
	and #1f
	ld hl,l17f8
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l148b
.l134f
	bit 5,a
	jr nz,l13b7
	add a
	add a
	add a
	ld hl,(l1722)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld c,#0a
	add hl,bc
	ld (hl),b
	inc hl
.l1366
	ld a,(de)
	bit 7,a
	jr nz,l1378
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l1390
.l1378
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#ff
	bit 7,a
	jr nz,l138a
	ld b,#01
.l138a
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l1390
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,l1366
	ld bc,#0014
	ld (ix+#0a),b
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l1693
	ld a,(l1726)
	inc a
.l13ad
	add hl,bc
	dec a
	jr nz,l13ad
	ex de,hl
	ldir
	jp l148b
.l13b7
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	and #1f
	jr z,l1408
	dec a
	jr z,l1413
	dec a
	jr z,l140f
	ld a,(hl)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l172a),a
	ld a,(hl)
	and #3f
	ld (l172c),a
	ld (l172f),a
	ld b,a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l172d),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l172a
	or (hl)
	ld (hl),a
	ld (l172b),a
	ld a,b
	ld hl,l172d
	cp (hl)
	ld a,#ff
	jr nc,l1401
	ld a,#01
.l1401
	ld (l172e),a
	ld a,b
	jp l1318
.l1408
	ld a,(hl)
	ld (ix+#20),a
	jp l148b
.l140f
	ld a,#02
	jr l1415
.l1413
	ld a,#01
.l1415
	ld (ix+#09),a
	ld a,(hl)
	or a
	jr z,l1481
	add a
	add a
	add a
	ld hl,(l1724)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld c,#21
	add hl,bc
	ld (hl),b
	inc hl
.l142f
	ld a,(de)
	bit 7,a
	jr nz,l1443
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	neg
	ld (hl),a
	jp l145b
.l1443
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#01
	bit 7,a
	jr nz,l1455
	ld b,#ff
.l1455
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l145b
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,l142f
	ld bc,#0014
	ld (ix+#21),b
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l16cf
	ld a,(l1726)
	inc a
.l1478
	add hl,bc
	dec a
	jr nz,l1478
	ex de,hl
	ldir
	jr l1485
.l1481
	xor a
	ld (ix+#09),a
.l1485
	ld a,(ix+#09)
	ld (ix+#3a),a
.l148b
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l1257
.l149f
	ld a,(l171f)
	or a
	jr nz,l14a8
	dec (ix+#07)
.l14a8
	ld a,(ix+#0a)
	cp #04
	jr z,l14ef
	push ix
	pop hl
	ld b,a
	add a
	add a
	add b
	add #0b
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jr nz,l14d3
	dec (hl)
	jr nz,l14c7
	inc (ix+#0a)
.l14c7
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jr l14ef
.l14d3
	dec (hl)
	jr nz,l14e7
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	dec hl
	jr l14e9
.l14e7
	inc hl
	inc hl
.l14e9
	dec (hl)
	jr nz,l14ef
	inc (ix+#0a)
.l14ef
	ld a,(ix+#09)
	or a
	jp z,l1588
	push ix
	pop hl
	ld a,(ix+#21)
	ld b,a
	add a
	add a
	add b
	add #22
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jr nz,l152c
	dec (hl)
	jr nz,l1511
	inc (ix+#21)
.l1511
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l151c
	inc b
.l151c
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l1559
.l152c
	dec (hl)
	jr nz,l1551
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	push hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l153f
	inc b
.l153f
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l1553
.l1551
	inc hl
	inc hl
.l1553
	dec (hl)
	jr nz,l1559
	inc (ix+#21)
.l1559
	ld a,(ix+#21)
	cp #04
	jr nz,l1588
	ld a,(ix+#09)
	cp #02
	jr nz,l156d
	xor a
	ld (ix+#09),a
	jr l1588
.l156d
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l1726)
	inc a
	ld hl,l16cf
	ld c,#14
.l1582
	add hl,bc
	dec a
	jr nz,l1582
	ldir
.l1588
	ld c,(ix+#36)
	ld a,(l1726)
	add a
	call l11f6
	ld c,(ix+#37)
	inc a
	call l11f6
	ld bc,#003b
	add ix,bc
	ld a,(l15ee)
	rlc a
	ld (l15ee),a
	cpl
	ld (l15ef),a
	ld a,(l1726)
	inc a
	cp #03
	jp nz,l124d
	ld hl,l172a
	ld a,(hl)
	and a
	jr z,l15e2
	dec (hl)
	jr nz,l15e2
	ld a,(l172b)
	ld (hl),a
	ld hl,l172f
	ld a,(l172e)
	add (hl)
	ld (hl),a
	ld c,a
	ld hl,l172c
	cp (hl)
	jr z,l15d6
	ld hl,l172d
	cp (hl)
	jr nz,l15dd
.l15d6
	ld hl,l172e
	ld a,(hl)
	xor #fe
	ld (hl),a
.l15dd
	ld a,#06
	call l11f6
.l15e2
	ld hl,l171f
	ld a,(hl)
	and a
	ret nz
	ld a,(l1805)
	ld (hl),a
	ret
.l15f0 equ $ + 3
.l15ef equ $ + 2
.l15ee equ $ + 1
.l15ed
	db #38,#00,#00,#00,#f5,#15,#f5,#15
	db #ff
.l15f6
	db #00
.l15f7
	db #00,#00,#00,#00
.l15fb
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l1631
	db #00,#00,#00,#00,#00
.l1636
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l166c
	db #00,#00,#00,#00,#00
.l1671
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l168b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1693
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l16cf
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
.l1724 equ $ + 7
.l1722 equ $ + 5
.l1720 equ $ + 3
.l171f equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l172c equ $ + 7
.l172b equ $ + 6
.l172a equ $ + 5
.l1727 equ $ + 2
.l1726 equ $ + 1
	db #00,#00,#0f,#0f,#0f,#00,#00,#00
.l172d
	db #00
.l172e
	db #00
.l172f
	db #00
.l1730
	dw #0000,#0c9c,#0be7,#0b3c
	dw #0a9b,#0a02,#0973,#08eb
	dw #086b,#07f2,#0780,#0714
	dw #06ae,#064e,#05f4,#059e
	dw #054d,#0501,#0469,#0475
	dw #0435,#03f9,#03c0,#038a
	dw #0357,#0327,#02fa,#02cf
	dw #02a7,#0281,#025d,#023b
	dw #021b,#01fc,#01e0,#01c5
	dw #01ac,#0194,#017d,#0168
	dw #0153,#0140,#012e,#011d
	dw #010d,#00fe,#00f0,#00e2
	dw #00d6,#00ca,#00be,#00b4
	dw #00aa,#00a0,#0097,#008f
	dw #0087,#007f,#0078,#0071
	dw #006b,#0065,#005f,#005a
	dw #0055,#0050,#004c,#0047
	dw #0043,#0040,#003c,#0039
	dw #0035,#0032,#0030,#002d
	dw #002a,#0028,#0026,#0024
	dw #0022,#0020,#001e,#001c
	dw #001b,#0019,#0018,#0016
	dw #0015,#0014,#0013,#0012
	dw #0011,#0010,#000f,#000e
	dw #000d,#000c,#000b,#000a
.l17f8
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l1804
	db #00
.l180c equ $ + 7
.l180a equ $ + 5
.l1808 equ $ + 3
.l1806 equ $ + 1
.l1805
	db #02,#d8,#07,#d8,#08,#72,#00,#91
	db #00
.l180e
	db #b0,#00
.l1810
	db #cf,#00,#ed,#00,#0f,#01,#2d,#01
	db #4f,#01,#6d,#01,#8f,#01,#a5,#01
	db #bb,#01,#fd,#01,#3f,#02,#5f,#02
	db #7f,#02,#9f,#02,#bf,#02,#df,#02
	db #ff,#02,#1f,#03,#60,#03,#a1,#03
	db #e2,#03,#23,#04,#64,#04,#a5,#04
	db #e6,#04,#04,#05,#22,#05,#40,#05
	db #65,#05,#79,#05,#9e,#05,#b2,#05
	db #c6,#05,#da,#05,#ee,#05,#0c,#06
	db #2a,#06,#41,#06,#58,#06,#6f,#06
	db #86,#06,#9d,#06,#b4,#06,#cb,#06
	db #fb,#06,#1d,#07,#48,#07,#7c,#07
	db #93,#07,#aa,#07,#c1,#07,#00,#01
	db #00,#03,#02,#05,#06,#00,#01,#00
	db #03,#02,#05,#0a,#0b,#0c,#0d,#0e
	db #0f,#10,#0e,#0f,#10,#11,#12,#13
	db #14,#15,#16,#17,#ff,#18,#18,#18
	db #19,#19,#1a,#1b,#18,#18,#18,#19
	db #19,#1a,#1e,#1f,#20,#21,#18,#22
	db #23,#18,#22,#23,#24,#25,#26,#27
	db #28,#29,#2a,#ff,#2b,#2b,#2b,#2b
	db #2b,#2b,#2c,#2b,#2b,#2b,#2b,#2b
	db #2b,#2f,#30,#31,#32,#2b,#2b,#2b
	db #2b,#2b,#2b,#2e,#2e,#2e,#2e,#2e
	db #2e,#2e,#ff,#e0,#00,#a0,#c1,#e1
	db #05,#82,#2d,#c2,#2d,#2d,#c1,#2d
	db #c2,#2f,#c1,#30,#c2,#32,#c1,#30
	db #c2,#2f,#c1,#2d,#c2,#2d,#c1,#2d
	db #ff,#e0,#00,#a0,#c1,#e1,#05,#82
	db #2d,#34,#39,#c6,#e1,#04,#84,#38
	db #c1,#e1,#05,#82,#37,#c6,#e1,#04
	db #84,#36,#c1,#e1,#05,#82,#35,#34
	db #30,#2f,#ff,#e0,#05,#a0,#c1,#e1
	db #05,#82,#2d,#c2,#2d,#2d,#c1,#2d
	db #c2,#2f,#c1,#30,#c2,#32,#c1,#30
	db #c2,#2f,#c1,#2d,#c2,#2d,#c1,#2d
	db #ff,#e0,#00,#a0,#c1,#e1,#05,#82
	db #32,#39,#3e,#c6,#e1,#04,#84,#3d
	db #c1,#e1,#05,#82,#3c,#c6,#e1,#04
	db #84,#3b,#c1,#e1,#05,#82,#39,#35
	db #34,#32,#ff,#e0,#07,#a0,#c1,#e1
	db #05,#82,#2d,#c2,#2d,#2d,#c1,#2d
	db #c2,#2f,#c1,#30,#c2,#32,#c1,#30
	db #c2,#2f,#c1,#2d,#c2,#2d,#c1,#2d
	db #ff,#e0,#00,#a0,#c1,#e1,#05,#82
	db #34,#3b,#40,#c6,#e1,#04,#84,#3d
	db #c1,#e1,#05,#82,#38,#c6,#e1,#04
	db #84,#3b,#c1,#e1,#05,#82,#3d,#38
	db #36,#34,#ff,#e0,#00,#a0,#c1,#e1
	db #05,#82,#15,#1a,#1f,#24,#29,#2e
	db #33,#38,#3d,#42,#47,#4c,#87,#51
	db #ff,#e0,#00,#a0,#c8,#e1,#07,#80
	db #30,#82,#36,#3c,#36,#30,#2a,#30
	db #36,#3c,#36,#30,#83,#2a,#ff,#e0
	db #00,#a0,#c1,#e2,#04,#80,#2d,#e1
	db #05,#2d,#c2,#2d,#c3,#2d,#c4,#2d
	db #c5,#2d,#c3,#2d,#c6,#e1,#04,#2d
	db #c1,#2f,#c9,#e2,#05,#2f,#c1,#e2
	db #04,#30,#c6,#30,#c5,#e2,#05,#32
	db #c4,#32,#c3,#30,#c2,#30,#c1,#2f
	db #c2,#2f,#c1,#2d,#c2,#2d,#c3,#2d
	db #c4,#2d,#c5,#2d,#c6,#e1,#04,#2d
	db #ff,#e0,#05,#a0,#c1,#e2,#04,#80
	db #2d,#e1,#05,#2d,#c2,#2d,#c3,#2d
	db #c4,#2d,#c5,#2d,#c3,#2d,#c6,#e1
	db #04,#2d,#c1,#2f,#c9,#e2,#05,#2f
	db #c1,#e2,#04,#30,#c6,#30,#c5,#e2
	db #05,#32,#c4,#32,#c3,#30,#c2,#30
	db #c1,#2f,#c2,#2f,#c1,#2d,#c2,#2d
	db #c3,#2d,#c4,#2d,#c5,#2d,#c6,#e1
	db #04,#2d,#ff,#e0,#00,#a0,#c8,#e1
	db #07,#80,#15,#1a,#1f,#1a,#1f,#24
	db #1f,#24,#29,#24,#29,#2e,#29,#2e
	db #33,#2e,#33,#38,#33,#38,#3d,#38
	db #3d,#42,#ff,#e0,#02,#a0,#c8,#e1
	db #07,#80,#15,#1a,#1f,#1a,#1f,#24
	db #1f,#24,#29,#24,#29,#2e,#29,#2e
	db #33,#2e,#33,#38,#33,#38,#3d,#38
	db #3d,#42,#ff,#e0,#05,#a0,#c8,#e1
	db #07,#80,#15,#1a,#1f,#1a,#1f,#24
	db #1f,#24,#29,#24,#29,#2e,#29,#2e
	db #33,#2e,#33,#38,#33,#38,#3d,#38
	db #3d,#42,#ff,#e0,#07,#a0,#c8,#e1
	db #07,#80,#15,#1a,#1f,#1a,#1f,#24
	db #1f,#24,#29,#24,#29,#2e,#29,#2e
	db #33,#2e,#33,#38,#33,#38,#3d,#38
	db #3d,#42,#ff,#e0,#00,#a0,#c8,#e1
	db #07,#80,#2d,#28,#2d,#30,#29,#30
	db #34,#2d,#34,#39,#30,#39,#40,#3f
	db #3e,#3c,#3b,#3a,#39,#38,#37,#36
	db #35,#34,#ff,#e0,#00,#a0,#c8,#e1
	db #07,#80,#32,#2f,#32,#35,#32,#35
	db #37,#34,#37,#3b,#37,#3b,#3e,#37
	db #3e,#41,#37,#41,#40,#37,#40,#30
	db #37,#3c,#ff,#e0,#00,#a0,#c8,#e1
	db #07,#80,#3e,#37,#3e,#37,#32,#37
	db #3c,#35,#3c,#35,#30,#3c,#3b,#32
	db #3b,#37,#35,#2d,#2b,#2d,#2f,#30
	db #31,#32,#ff,#e0,#00,#a0,#c1,#e1
	db #05,#82,#2d,#c2,#32,#c1,#37,#c2
	db #3c,#c1,#37,#c2,#32,#80,#2d,#c8
	db #e1,#07,#28,#c2,#e2,#05,#32,#c8
	db #e1,#07,#2d,#c2,#e2,#05,#37,#c8
	db #e1,#07,#32,#c2,#e2,#05,#3c,#c8
	db #e1,#07,#37,#c2,#e2,#05,#2b,#c8
	db #e1,#07,#32,#c2,#e2,#05,#2d,#c8
	db #e1,#07,#21,#ff,#e0,#01,#a0,#c1
	db #e1,#05,#82,#2d,#c2,#32,#c1,#37
	db #c2,#3c,#c1,#37,#c2,#32,#80,#2d
	db #c8,#e1,#07,#28,#c2,#e2,#05,#32
	db #c8,#e1,#07,#2d,#c2,#e2,#05,#37
	db #c8,#e1,#07,#32,#c2,#e2,#05,#3c
	db #c8,#e1,#07,#37,#c2,#e2,#05,#2b
	db #c8,#e1,#07,#32,#c2,#e2,#05,#2d
	db #c8,#e1,#07,#21,#ff,#e0,#02,#a0
	db #c1,#e1,#05,#82,#2d,#c2,#32,#c1
	db #37,#c2,#3c,#c1,#37,#c2,#32,#80
	db #2d,#c8,#e1,#07,#28,#c2,#e2,#05
	db #32,#c8,#e1,#07,#2d,#c2,#e2,#05
	db #37,#c8,#e1,#07,#32,#c2,#e2,#05
	db #3c,#c8,#e1,#07,#37,#c2,#e2,#05
	db #2b,#c8,#e1,#07,#32,#c2,#e2,#05
	db #2d,#c8,#e1,#07,#21,#ff,#e0,#03
	db #a0,#c1,#e1,#05,#82,#2d,#c2,#32
	db #c1,#37,#c2,#3c,#c1,#37,#c2,#32
	db #80,#2d,#c8,#e1,#07,#28,#c2,#e2
	db #05,#32,#c8,#e1,#07,#2d,#c2,#e2
	db #05,#37,#c8,#e1,#07,#32,#c2,#e2
	db #05,#3c,#c8,#e1,#07,#37,#c2,#e2
	db #05,#2b,#c8,#e1,#07,#32,#c2,#e2
	db #05,#2d,#c8,#e1,#07,#21,#ff,#e0
	db #04,#a0,#c1,#e1,#05,#82,#2d,#c2
	db #32,#c1,#37,#c2,#3c,#c1,#37,#c2
	db #32,#80,#2e,#c8,#e1,#07,#29,#c2
	db #e2,#05,#33,#c8,#e1,#07,#2e,#c2
	db #e2,#05,#38,#c8,#e1,#07,#33,#c2
	db #e2,#05,#3d,#c8,#e1,#07,#38,#c2
	db #e2,#05,#2c,#c8,#e1,#07,#33,#c2
	db #e2,#05,#2e,#c8,#e1,#07,#22,#ff
	db #e0,#06,#a0,#c1,#e1,#05,#82,#2d
	db #c2,#32,#c1,#37,#c2,#3c,#c1,#37
	db #c2,#32,#80,#2e,#c8,#e1,#07,#29
	db #c2,#e2,#05,#33,#c8,#e1,#07,#2e
	db #c2,#e2,#05,#38,#c8,#e1,#07,#33
	db #c2,#e2,#05,#3d,#c8,#e1,#07,#38
	db #c2,#e2,#05,#2c,#c8,#e1,#07,#33
	db #c2,#e2,#05,#2e,#c8,#e1,#07,#22
	db #ff,#e0,#08,#a0,#c1,#e1,#05,#82
	db #2d,#c2,#32,#c1,#37,#c2,#3d,#c1
	db #38,#c2,#33,#80,#2f,#c8,#e1,#07
	db #2a,#c2,#e2,#05,#34,#c8,#e1,#07
	db #2f,#c2,#e2,#05,#39,#c8,#e1,#07
	db #34,#c2,#e2,#05,#3f,#c8,#e1,#07
	db #3a,#c2,#e2,#05,#2e,#c8,#e1,#07
	db #35,#c2,#e2,#05,#30,#c8,#e1,#07
	db #24,#ff,#e0,#00,#a0,#c6,#e1,#04
	db #84,#21,#c1,#82,#2d,#c6,#84,#21
	db #c1,#82,#2d,#c6,#84,#21,#c1,#82
	db #2d,#c6,#84,#21,#c1,#82,#2d,#ff
	db #e0,#fc,#a0,#c6,#e1,#04,#84,#21
	db #c1,#82,#2d,#c6,#84,#21,#c1,#82
	db #2d,#c6,#84,#21,#c1,#82,#2d,#c6
	db #84,#21,#c1,#82,#2d,#ff,#e0,#fb
	db #a0,#c6,#e1,#04,#84,#21,#c1,#82
	db #2d,#c6,#84,#21,#c1,#82,#2d,#c6
	db #84,#21,#c1,#82,#2d,#c6,#84,#21
	db #c1,#82,#2d,#ff,#e0,#f4,#a0,#c1
	db #e2,#04,#80,#21,#82,#26,#2b,#30
	db #35,#3a,#3f,#44,#49,#4e,#53,#83
	db #58,#82,#2d,#c2,#e2,#05,#2d,#c3
	db #2d,#c2,#2d,#c1,#2d,#e2,#04,#2d
	db #ff,#e0,#00,#a0,#c7,#e1,#04,#82
	db #36,#3c,#42,#3c,#36,#36,#36,#3c
	db #42,#3c,#36,#36,#ff,#e0,#f4,#a0
	db #c1,#e2,#04,#80,#21,#82,#26,#2b
	db #30,#35,#3a,#3f,#44,#49,#4e,#53
	db #83,#58,#82,#2d,#c2,#e2,#05,#2d
	db #c3,#2d,#c2,#2d,#c1,#2d,#e2,#04
	db #2d,#ff,#e0,#f4,#a0,#c1,#e2,#04
	db #82,#21,#26,#2b,#30,#35,#3a,#3f
	db #44,#49,#4e,#53,#58,#ff,#e0,#f6
	db #a0,#c1,#e2,#04,#82,#21,#26,#2b
	db #30,#35,#3a,#3f,#44,#49,#4e,#53
	db #58,#ff,#e0,#f9,#a0,#c1,#e2,#04
	db #82,#21,#26,#2b,#30,#35,#3a,#3f
	db #44,#49,#4e,#53,#58,#ff,#e0,#fb
	db #a0,#c1,#e2,#04,#82,#21,#26,#2b
	db #30,#35,#3a,#3f,#44,#49,#4e,#53
	db #58,#ff,#e0,#00,#a0,#c6,#e1,#04
	db #84,#23,#c1,#82,#2f,#c6,#84,#24
	db #c1,#82,#30,#c6,#84,#26,#c1,#82
	db #32,#c6,#84,#28,#c1,#82,#34,#ff
	db #e0,#00,#a0,#c6,#e1,#04,#84,#26
	db #c1,#82,#32,#c6,#84,#29,#c1,#82
	db #35,#c6,#84,#37,#c1,#82,#35,#c6
	db #84,#34,#c1,#82,#32,#ff,#e0,#00
	db #a0,#c1,#e2,#04,#80,#2d,#82,#32
	db #37,#3c,#37,#32,#2d,#32,#37,#3c
	db #37,#32,#80,#2d,#ff,#e0,#01,#a0
	db #c1,#e2,#04,#80,#2d,#82,#32,#37
	db #3c,#37,#32,#2d,#32,#37,#3c,#37
	db #32,#80,#2d,#ff,#e0,#02,#a0,#c1
	db #e2,#04,#80,#2d,#82,#32,#37,#3c
	db #37,#32,#2d,#32,#37,#3c,#37,#32
	db #80,#2d,#ff,#e0,#03,#a0,#c1,#e2
	db #04,#80,#2d,#82,#32,#37,#3c,#37
	db #32,#2d,#32,#37,#3c,#37,#32,#80
	db #2d,#ff,#e0,#04,#a0,#c1,#e2,#04
	db #80,#2d,#82,#32,#37,#3c,#37,#32
	db #2d,#33,#38,#3d,#38,#33,#80,#2e
	db #ff,#e0,#06,#a0,#c1,#e2,#04,#80
	db #2d,#82,#32,#37,#3c,#37,#32,#2d
	db #33,#38,#3d,#38,#33,#80,#2e,#ff
	db #e0,#08,#a0,#c1,#e2,#04,#80,#2d
	db #82,#32,#37,#3c,#38,#33,#2e,#34
	db #39,#3e,#3a,#35,#80,#30,#ff,#e0
	db #00,#a1,#cf,#e2,#00,#82,#00,#a2
	db #d0,#00,#a1,#cf,#00,#a5,#d1,#e1
	db #02,#32,#a2,#d0,#e2,#00,#00,#a1
	db #ce,#00,#cf,#00,#a2,#d0,#00,#a1
	db #ce,#00,#a5,#d1,#e1,#02,#32,#a1
	db #cf,#e2,#00,#00,#ce,#00,#ff,#e0
	db #00,#a0,#c6,#e1,#04,#84,#2d,#82
	db #28,#84,#30,#82,#29,#84,#33,#82
	db #2c,#84,#36,#82,#2f,#a5,#d1,#e1
	db #02,#3c,#3b,#84,#37,#82,#34,#32
	db #ff,#e0,#f9,#a0,#c1,#e2,#04,#80
	db #59,#c0,#83,#59,#c1,#80,#59,#c0
	db #59,#c1,#59,#c0,#85,#59,#c1,#80
	db #59,#c0,#59,#c1,#59,#c0,#59,#c1
	db #59,#c0,#59,#a5,#d1,#e1,#02,#84
	db #39,#82,#39,#ff,#e0,#00,#a1,#cf
	db #e2,#00,#80,#00,#a2,#d0,#82,#00
	db #a1,#ce,#00,#a5,#d1,#e1,#02,#32
	db #a1,#cf,#e2,#00,#00,#a2,#d0,#00
	db #a1,#cf,#00,#a2,#d0,#00,#a1,#ce
	db #00,#a5,#d1,#e1,#02,#32,#a1,#cf
	db #e2,#00,#00,#a2,#d0,#83,#00,#ff
	db #e0,#02,#a0,#c6,#e1,#04,#84,#2d
	db #82,#28,#84,#30,#82,#29,#84,#33
	db #82,#2c,#84,#36,#82,#2f,#ff,#e0
	db #02,#a0,#c6,#e1,#04,#84,#2d,#82
	db #28,#84,#30,#82,#29,#84,#33,#82
	db #2c,#84,#36,#82,#2f,#ff,#e0,#05
	db #a0,#c6,#e1,#04,#84,#2d,#82,#28
	db #84,#30,#82,#29,#84,#33,#82,#2c
	db #84,#36,#82,#2f,#ff,#e0,#07,#a0
	db #c6,#e1,#04,#84,#2d,#82,#28,#84
	db #30,#82,#29,#84,#33,#82,#2c,#84
	db #36,#82,#2f,#ff,#0f,#00,#0f,#00
	db #0f,#00,#0f,#00,#01,#0f,#0f,#ff
	db #01,#00,#01,#00,#01,#0d,#0d,#ff
	db #01,#00,#01,#00,#01,#0b,#0b,#ff
	db #01,#00,#01,#00,#01,#09,#09,#ff
	db #01,#00,#01,#00,#01,#07,#07,#ff
	db #01,#00,#01,#00,#01,#0f,#82,#88
	db #08,#00,#83,#a1,#01,#0a,#01,#00
	db #03,#00,#84,#a8,#01,#0c,#01,#00
	db #03,#00,#18,#00,#01,#0e,#01,#00
	db #03,#00,#01,#00,#01,#0e,#01,#00
	db #03,#00,#87,#e2,#01,#0e,#01,#00
	db #82,#9c,#62,#00,#01,#0f,#07,#00
	db #84,#bc,#01,#00,#01,#0f,#04,#ff
	db #08,#00,#88,#d3,#01,#0a,#01,#00
	db #01,#f6,#01,#00,#01,#0c,#01,#00
	db #01,#f4,#01,#00,#01,#0e,#01,#00
	db #01,#f2,#01,#00,#01,#0f,#0f,#ff
	db #01,#00,#01,#00,#01,#0d,#0d,#ff
	db #01,#00,#01,#00,#01,#0b,#0b,#ff
	db #01,#00,#01,#00,#01,#09,#09,#ff
	db #01,#00,#01,#00,#01,#0e,#01,#00
	db #01,#f2,#01,#00,#01,#0c,#91,#e3
	db #a1,#63,#a1,#63,#82,#14,#0c,#00
	db #01,#00,#82,#94,#01,#0d,#04,#ff
	db #08,#00,#8a,#d3,#01,#0b,#04,#ff
	db #08,#00,#8c,#d3,#01,#09,#04,#ff
	db #08,#00,#95,#d3,#01,#07,#04,#ff
	db #08,#00,#9e,#da,#01,#0d,#03,#00
	db #08,#ff,#05,#00,#01,#0e,#86,#92
	db #89,#89,#82,#92,#01,#0f,#02,#00
	db #0c,#ff,#0c,#01,#01,#0d,#0c,#ff
	db #0d,#01,#0e,#ff,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#84,#08
	db #82,#88,#84,#08,#01,#00,#01,#3c
	db #03,#ec,#01,#ef,#86,#86,#01,#f1
	db #01,#2b,#01,#e5,#01,#01,#02,#01
	db #02,#fe,#01,#02,#01,#00,#02,#01
	db #02,#fe,#02,#01,#85,#0a,#03,#fd
	db #85,#0a,#01,#05,#01,#00,#82,#02
	db #02,#ff,#82,#02,#06,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#63
	db #02,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#63
	db #02,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#63
	db #02,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#63
	db #02,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff
;
.music_info
	db "Tintin on the Moon (1989)(Infogrames)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"
