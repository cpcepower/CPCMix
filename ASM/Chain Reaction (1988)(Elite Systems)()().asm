; Music of Chain Reaction (1988)(Elite Systems)()()
; Ripped by Megachur the 22/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CHAINREA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #1000

	read "music_header.asm"
	
	jp l1013	; init
	jp l10c1	; play
	jp l100c	; stop
	jp l1b84
;
.stop_music
.l100c
;
	xor a
	ld (l1532),a
	jp l1178
;
.init_music
.l1013
;
	push af
	xor a
	ld (l1532),a
	pop af
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l1533
	add hl,bc
	ld ix,l1060
	ld c,#20
	ld a,#03
.l102c
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,l102c
	inc a
	ld (l10c0),a
	ld (l1532),a
	ret
.l1060
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l1080
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l10a0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.l10c0
	db #00
;
.play_music
.l10c1
;
	call l1bdb
	ld a,(l1532)
	and a
	jr z,l111c
.l10cb equ $ + 1
	ld a,#00
	ld (l1118),a
	ld hl,l10c0
	dec (hl)
	jr nz,l10f0
	ld b,(hl)
	ld ix,l1060
	call l126f
	ld ix,l1080
	call l126f
	ld ix,l10a0
	call l126f
	ld hl,l10c0
.l10ef equ $ + 1
	ld (hl),#01
.l10f0
	ld ix,l1060
	call l1316
	ld (l1442),hl
	ld (l144a),a
	ld ix,l1080
	call l1316
	ld (l1444),hl
	ld (l144b),a
	ld ix,l10a0
	call l1316
	ld (l1446),hl
	ld (l144c),a
.l1118 equ $ + 1
	ld a,#00
	ld (l1448),a
.l111c
	ld a,(l1b83)
	and a
.l1120
	jr z,l1152
	ld hl,(l1c73)
	ld (l1442),hl
	ld hl,(l1c77)
	ld (l1446),hl
	ld a,(l1c79)
	ld (l1448),a
	ld a,(l1449)
	or #2d
	ld hl,l1c7a
	and (hl)
	ld (l1449),a
	ld a,(l1c7b)
	ld (l144a),a
	ld a,(l1c7d)
	ld (l144c),a
	ld a,(l1c7f)
	ld (l144e),a
.l1152
	ld hl,l144d
	ld d,#0b
.l1157
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l1157
	ret
.l1178
	ld de,#0d00	; original is ld de,#d000 should be ld de,&0d00 !!!
.l117b
	call l1185
	dec d
	jp p,l117b
	ld de,#073f
.l1185
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	ret
	db #c0,#a8,#ac,#b1,#6f,#9e,#99,#14
	db #88,#80,#4e,#3d,#5c,#ad,#02,#ba
	xor a
	ld (l1532),a
	pop hl
	ld a,#3f
	ld (l1449),a
	ret
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l11dd
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l11dd
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l1281
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,l1427
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l1281
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l1427
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l1281
	ld hl,l1427
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	jr l1281
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l1281
	ld a,(de)
	inc de
	ld (l10cb),a
	jr l1281
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l1281
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l1281
	ld (ix+#1d),b
	jr l1281
	ld (ix+#1d),#40
	jr l1281
	ld (ix+#1d),#c0
	jr l1281
	set 1,(ix+#00)
	jr l1281
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l12a4
	set 1,(ix+#1e)
	jr l1281
.l126f
	dec (ix+#10)
	jr nz,l12b1
	ld (ix+#00),b
	set 0,(ix+#1e)
	ld e,(ix+#01)
	ld d,(ix+#02)
.l1281
	ld a,(de)
	inc de
	and a
	jp m,l12c2
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l12a4
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l12b1
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l12be
	inc (ix+#12)
	ret
.l12be
	dec (ix+#12)
	ret
.l12c2
	cp #b8
	jr c,l130e
	add #20
	jr c,l12f2
	add #10
	jr c,l12f9
	add #10
	jr nc,l12eb
	ld c,a
	ld hl,l14f4
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	set 4,(ix+#00)
	jr l1281
.l12eb
	add #09
	ld (l10ef),a
	jr l1281
.l12f2
	inc a
	ld (ix+#11),a
	jp l1281
.l12f9
	ld (ix+#19),a
	ld a,(de)
	inc de
	ld (ix+#14),a
	ld a,(de)
	inc de
	ld (ix+#15),a
	ld a,(de)
	inc de
	ld (ix+#17),a
	jp l1281
.l130e
	ld hl,l1120
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l1316
	ld c,(ix+#00)
	bit 5,c
	jr z,l1361
	ld a,(ix+#16)
	sub #10
	jr nc,l1349
	bit 6,c
	jr z,l134e
	add (ix+#13)
	jr nc,l132e
	sbc a
.l132e
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l1344
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l1361
.l1344
	ld (ix+#18),a
	jr l1361
.l1349
	ld (ix+#16),a
	jr l1361
.l134e
	cpl
	sub #0f
	add (ix+#13)
	jr c,l1357
	sub a
.l1357
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l1361
	res 5,c
.l1361
	ld a,(ix+#12)
	add #07
	bit 4,c
	jr z,l1385
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,l137d
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l137d
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
.l1385
	ld hl,l1450
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l13df
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l13a8
	bit 0,c
	jr nz,l13c6
.l13a8
	bit 5,l
	jr nz,l13b8
	sub (ix+#1b)
	jr nc,l13c3
	set 5,(ix+#1d)
	sub a
	jr l13c3
.l13b8
	add (ix+#1b)
	cp b
	jr c,l13c3
	res 5,(ix+#1d)
	ld a,b
.l13c3
	ld (ix+#1c),a
.l13c6
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l13d1
	dec d
.l13d1
	add #a0
	jr c,l13dd
.l13d5
	sla e
	rl d
	add #18
	jr nc,l13d5
.l13dd
	add hl,de
	ex de,hl
.l13df
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l140a
	ld b,(ix+#0e)
	djnz l1407
	ld c,(ix+#0d)
	bit 7,c
	jr z,l13f6
	dec b
.l13f6
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l140a
.l1407
	ld (ix+#0e),b
.l140a
	bit 1,(ix+#1e)
	jr z,l1423
	bit 0,(ix+#1e)
	jr z,l1423
	res 0,(ix+#1e)
	ld a,#00
	ld (l1118),a
	ld a,#07
	jr l1434
.l1423
	cpl
	and #03
.l1427 equ $ + 1
	ld a,#38
	jr nz,l1434
	ld a,(l10cb)
	xor #08
	ld (l1118),a
	ld a,#07
.l1434
	ld hl,l1449
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l1449 equ $ + 7
.l1448 equ $ + 6
.l1446 equ $ + 4
.l1444 equ $ + 2
.l1442
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l144e equ $ + 4
.l144d equ $ + 3
.l144c equ $ + 2
.l144b equ $ + 1
.l144a
	db #0f,#0f,#0f,#00,#00,#00
.l1450
	dw #06b0,#0640,#05ec,#0594
	dw #0544,#04f8,#04b0,#0470
	dw #042c,#03f0,#03be,#0384
	dw #0358,#0320,#02f6,#02ca
	dw #02a2,#027c,#0258,#0238
	dw #0216,#01f8,#01df,#01c2
	dw #01ac,#0190,#017b,#0165
	dw #0151,#013e,#012c,#011c
	dw #010b,#00fc,#00ef,#00e1
	dw #00d6,#00c8,#00bd,#00b2
	dw #00a8,#009f,#0096,#008e
	dw #0085,#007e,#0077,#0070
	dw #006b,#0064,#005e,#0059
	dw #0054,#004f,#004b,#0047
	dw #0042,#003f,#003b,#0038
	dw #0035,#0032,#002f,#002c
	dw #002a,#0027,#0025,#0023
	dw #0021,#001f,#001d,#001c
	dw #001a,#0019,#0017,#0016
	dw #0015,#0013,#0012,#0011
	dw #0010,#000f
.l14f4
	db #0d,#10,#13,#16,#19,#1c,#1f,#22
	db #25,#27,#2a,#2d,#2f,#00,#03,#07
	db #87,#00,#04,#07,#87,#00,#05,#07
	db #87,#00,#06,#08,#87,#07,#0c,#0f
	db #87,#07,#0c,#10,#87,#03,#07,#0c
	db #87,#04,#07,#0c,#87,#00,#0c,#87
	db #00,#03,#09,#87,#00,#03,#06,#87
.music_end equ $ + 6
.l1532 equ $ + 6
	db #00,#05,#87,#00,#07,#87,#00
.l1533
	dw l15aa,l15dc,l1626,l1555
	dw l1551,l1555,l1555,l1559
	dw l1555,l1555,l1565,l1555
.l1551 equ $ + 6
	dw l1555,l1561,l1555,l159e
.l1559 equ $ + 6
.l1555 equ $ + 2
	dw #0000,l1b80,#0000,l1595
.l1561 equ $ + 6
	dw #0000,l1589,#0000,l1579
.l1565 equ $ + 2
	dw #0000,l1569,#0000
.l1569
	db #df,#00,#31,#09,#e5,#bb,#8a,#84
	db #fc,#01,#88,#01,#01,#83,#07,#8e
.l1579
	db #df,#00,#31,#09,#e5,#bb,#8a,#84
	db #04,#01,#88,#01,#01,#83,#0c,#8e
.l1589
	db #de,#00,#81,#0c,#bb,#e7,#89,#10
.l1595 equ $ + 4
	db #8b,#8d,#00,#8e,#dd,#00,#f1,#01
.l159e equ $ + 5
	db #e1,#bf,#8c,#20,#87,#df,#00,#91
	db #05,#bd,#8a,#e5,#84,#1e,#01,#40
	db #8e
.l15aa
	dw l172c,l172c,l172c,l172c
	dw l1674,l172c,l172c,l1674
	dw l172c,l172c,l172c,l1674
	dw l172c,l172c,l16d5,l16d5
	dw l1705,l172c,l172c,l1674
	dw l16d5,l16d5,l16d5,l16d5
	dw #0000
.l15dc
	dw l17c6,l1836,l17c6,l1836
	dw l17c6,l1836,l17c6,l1836
	dw l18a4,l18a4,l17c6,l1836
	dw l17c6,l1836,l1912,l1980
	dw l1980,l17c6,l1836,l17c6
	dw l1836,l18a4,l18a4,l19eb
	dw l19eb,l1ac3,l17c6,l1836
	dw l17c6,l1836,l17c6,l1836
	dw l19eb,l19eb,l19eb,l19eb
.l1626 equ $ + 2
	dw #0000,l1749,l1749,l1749
	dw l1749,l1780,l1780,l1780
	dw l1780,l1749,l1749,l178c
	dw l17a3,l17a3,l17a3,l17a3
	dw l1749,l1749,l1780,l1780
	dw l1780,l1780,l1b80,l1b80
	dw l1b80,l1b80,l1b80,l1b80
	dw l1749,l1749,l1749,l1b80
	dw l1b80,l17af,l17af,l17af
	dw l17af,l17af,l17af,#0000
.l1674
	db #bd,#8a,#df,#00,#81,#05,#88,#01
	db #01,#82,#e1,#2a,#e1,#2a,#e1,#80
	db #e5,#2c,#e3,#80,#e1,#2a,#e1,#2a
	db #e1,#80,#e5,#2c,#e3,#80,#e1,#2a
	db #e1,#2a,#e1,#80,#e1,#2c,#e1,#80
	db #e1,#2f,#e1,#80,#e1,#2e,#e1,#80
	db #e1,#2a,#e1,#80,#e5,#27,#e3,#80
	db #e3,#2a,#e3,#2a,#e3,#2c,#e3,#80
	db #e1,#80,#e1,#2a,#e1,#2a,#e5,#2c
	db #e3,#80,#e5,#2a,#e1,#2a,#e1,#2c
	db #e1,#2f,#e1,#80,#e1,#2e,#e1,#80
	db #e1,#2a,#e1,#80,#e5,#2c,#e3,#80
.l16d5 equ $ + 1
	db #87,#82,#8a,#df,#00,#41,#0b,#e1
	db #20,#2f,#80,#20,#2f,#80,#e1,#20
	db #2f,#20,#2e,#80,#20,#e1,#2e,#80
	db #80,#80,#20,#34,#80,#e1,#1e,#33
	db #1e,#89,#07,#8d,#31,#33,#e1,#1c
	db #2c,#80,#1e,#e1,#2e,#80,#80,#80
.l1705 equ $ + 1
	db #87,#e1,#1c,#2f,#80,#1c,#2f,#80
	db #1c,#2f,#1d,#2f,#80,#1d,#2f,#80
	db #80,#80,#e1,#1a,#2f,#80,#1a,#2f
	db #80,#1a,#2f,#1e,#1e,#89,#07,#8d
	db #2e,#e1,#2c,#e3,#2e,#e3,#80,#87
.l172c
	db #bd,#81,#e1,#8a,#dc,#00,#41,#05
	db #20,#86,#44,#80,#20,#86,#44,#1e
	db #80,#20,#20,#86,#44,#80,#1e,#86
.l1749 equ $ + 5
	db #44,#20,#80,#20,#87,#8a,#df,#00
	db #81,#04,#e2,#08,#8f,#e0,#14,#e1
	db #08,#08,#e5,#80,#e1,#06,#e2,#08
	db #e0,#14,#e1,#08,#08,#80,#06,#08
	db #06,#e2,#0f,#e0,#0f,#e1,#0f,#0f
	db #80,#0f,#80,#0f,#e2,#08,#e0,#14
	db #e1,#08,#08,#80,#e0,#08,#08,#e1
.l1780 equ $ + 4
	db #06,#e1,#08,#87,#e2,#06,#e0,#06
	db #e1,#06,#06,#80,#06,#12,#06,#87
.l178c
	db #e2,#10,#e0,#10,#e1,#10,#10,#80
	db #10,#10,#10,#e2,#12,#e0,#12,#e1
.l17a3 equ $ + 7
	db #12,#12,#80,#12,#12,#12,#87,#e2
	db #0a,#e0,#0a,#e1,#0a,#0a,#80,#0a
.l17af equ $ + 3
	db #16,#0a,#87,#e2,#08,#e0,#08,#e1
	db #06,#08,#80,#06,#08,#06,#e2,#08
	db #e0,#08,#e1,#14,#08,#04,#10,#06
.l17c6 equ $ + 2
	db #12,#87,#bd,#e1,#8b,#89,#1f,#8d
	db #de,#00,#21,#09,#00,#8a,#df,#00
	db #91,#05,#c0,#20,#8b,#89,#07,#8d
	db #de,#00,#21,#09,#00,#89,#1f,#8d
	db #00,#8a,#df,#00,#91,#05,#c0,#20
	db #8b,#89,#1e,#8d,#de,#00,#21,#09
	db #00,#89,#07,#8d,#00,#8a,#df,#00
	db #91,#05,#c0,#20,#8b,#89,#1f,#8d
	db #de,#00,#21,#09,#00,#8a,#df,#00
	db #91,#05,#c1,#1e,#8b,#89,#07,#8d
	db #de,#00,#21,#09,#00,#89,#1f,#8d
	db #00,#8a,#df,#00,#91,#05,#c1,#1e
	db #8b,#89,#1f,#8d,#de,#00,#21,#09
	db #00,#89,#07,#8d,#00,#89,#1f,#8d
.l1836 equ $ + 2
	db #00,#87,#8b,#89,#1f,#8d,#de,#00
	db #21,#09,#00,#8a,#df,#00,#91,#05
	db #c0,#1b,#8b,#89,#07,#8d,#de,#00
	db #21,#09,#00,#89,#1f,#8d,#00,#8a
	db #df,#00,#91,#05,#c0,#1b,#8b,#89
	db #1f,#8d,#de,#00,#21,#09,#00,#89
	db #07,#8d,#00,#8a,#df,#00,#91,#05
	db #c0,#1b,#8b,#89,#1f,#8d,#de,#00
	db #21,#09,#00,#8a,#df,#00,#91,#05
	db #c4,#14,#8b,#89,#07,#8d,#de,#00
	db #21,#09,#00,#89,#1f,#8d,#00,#8a
	db #df,#00,#91,#05,#c4,#14,#8b,#89
	db #1f,#8d,#de,#00,#21,#09,#00,#89
	db #07,#8d,#00,#89,#1f,#8d,#00,#87
.l18a4
	db #8b,#89,#1f,#8d,#de,#00,#21,#09
	db #00,#8a,#df,#00,#91,#05,#c2,#1e
	db #8b,#89,#07,#8d,#de,#00,#21,#09
	db #00,#89,#1f,#8d,#00,#8a,#df,#00
	db #91,#05,#c2,#1e,#8b,#89,#1f,#8d
	db #de,#00,#21,#09,#00,#89,#07,#8d
	db #00,#8a,#df,#00,#91,#05,#c2,#1e
	db #8b,#89,#1f,#8d,#de,#00,#21,#09
	db #00,#8a,#df,#00,#91,#05,#c1,#1e
	db #8b,#89,#07,#8d,#de,#00,#21,#09
	db #00,#89,#1f,#8d,#00,#8a,#df,#00
	db #91,#05,#c1,#1e,#8b,#89,#1f,#8d
	db #de,#00,#21,#09,#00,#89,#07,#8d
.l1912 equ $ + 6
	db #00,#89,#1f,#8d,#00,#87,#8b,#89
	db #1f,#8d,#de,#00,#21,#09,#00,#8a
	db #df,#00,#91,#05,#c1,#1c,#8b,#89
	db #07,#8d,#de,#00,#21,#09,#00,#89
	db #1f,#8d,#00,#8a,#df,#00,#91,#05
	db #c1,#1c,#8b,#89,#1f,#8d,#de,#00
	db #21,#09,#00,#89,#07,#8d,#00,#8a
	db #df,#00,#91,#05,#c1,#1c,#8b,#89
	db #1f,#8d,#de,#00,#21,#09,#00,#8a
	db #df,#00,#91,#05,#c3,#1d,#8b,#89
	db #07,#8d,#de,#00,#21,#09,#00,#89
	db #1f,#8d,#00,#8a,#df,#00,#91,#05
	db #c3,#1d,#8b,#89,#1f,#8d,#de,#00
	db #21,#09,#00,#89,#07,#8d,#00,#89
.l1980 equ $ + 4
	db #1f,#8d,#00,#87,#8b,#89,#1f,#8d
	db #de,#00,#21,#09,#00,#8a,#df,#00
	db #91,#05,#c9,#1d,#8b,#89,#07,#8d
	db #de,#00,#21,#09,#00,#89,#1f,#8d
	db #00,#8a,#df,#00,#91,#05,#c9,#1d
	db #8b,#8d,#de,#00,#21,#09,#00,#8b
	db #89,#07,#8d,#00,#8a,#df,#00,#91
	db #05,#c9,#1d,#8b,#89,#1f,#8d,#de
	db #00,#21,#09,#00,#8a,#df,#00,#91
	db #05,#c9,#1d,#8b,#89,#07,#8d,#de
	db #00,#21,#09,#00,#89,#1f,#8d,#00
	db #8a,#df,#00,#91,#05,#c9,#1d,#8b
	db #8d,#de,#00,#21,#09,#00,#89,#07
.l19eb equ $ + 7
	db #8d,#00,#89,#1f,#8d,#00,#87,#bd
	db #e1,#df,#00,#41,#0b,#8b,#89,#1f
	db #8d,#de,#00,#21,#09,#00,#8a,#df
	db #00,#91,#05,#c4,#20,#8b,#89,#07
	db #8d,#de,#00,#21,#09,#00,#89,#1f
	db #8d,#00,#8a,#df,#00,#91,#05,#c4
	db #20,#8b,#8d,#de,#00,#21,#09,#00
	db #8b,#89,#07,#8d,#00,#8a,#df,#00
	db #91,#05,#c4,#20,#8b,#89,#1f,#8d
	db #de,#00,#21,#09,#00,#8a,#df,#00
	db #91,#05,#c5,#1e,#8b,#89,#07,#8d
	db #de,#00,#21,#09,#00,#89,#1f,#8d
	db #00,#8a,#df,#00,#91,#05,#c5,#1e
	db #8b,#8d,#de,#00,#21,#09,#00,#89
	db #07,#8d,#00,#89,#1f,#8d,#00,#8b
	db #89,#1f,#8d,#de,#00,#21,#09,#00
	db #8a,#df,#00,#91,#05,#c7,#28,#8b
	db #89,#07,#8d,#de,#00,#21,#09,#00
	db #89,#1f,#8d,#00,#8a,#df,#00,#91
	db #05,#c5,#23,#8b,#8d,#de,#00,#21
	db #09,#00,#8a,#df,#00,#91,#05,#c1
	db #2a,#c5,#23,#8b,#89,#1f,#8d,#de
	db #00,#21,#09,#00,#8a,#df,#00,#91
	db #05,#c5,#1c,#8b,#89,#07,#8d,#de
	db #00,#21,#09,#00,#89,#1f,#8d,#00
	db #8a,#df,#00,#91,#05,#c5,#1e,#8b
	db #8d,#de,#00,#21,#09,#00,#89,#07
.l1ac3 equ $ + 7
	db #8d,#00,#89,#1f,#8d,#00,#87,#8b
	db #89,#1f,#8d,#de,#00,#21,#09,#00
	db #8a,#df,#00,#91,#05,#c1,#28,#8b
	db #89,#07,#8d,#de,#00,#21,#09,#00
	db #89,#1f,#8d,#00,#8a,#df,#00,#91
	db #05,#c1,#28,#8b,#8d,#de,#00,#21
	db #09,#00,#8b,#89,#07,#8d,#00,#8a
	db #df,#00,#91,#05,#c1,#28,#8b,#89
	db #1f,#8d,#de,#00,#21,#09,#00,#8a
	db #df,#00,#91,#05,#ca,#29,#8b,#89
	db #07,#8d,#de,#00,#21,#09,#00,#89
	db #1f,#8d,#00,#8a,#df,#00,#91,#05
	db #ca,#29,#8b,#8d,#de,#00,#21,#09
	db #00,#89,#07,#8d,#00,#89,#1f,#8d
	db #00,#8b,#89,#1f,#8d,#00,#8a,#df
	db #00,#91,#05,#ca,#29,#8b,#89,#07
	db #8d,#de,#00,#21,#09,#00,#89,#1f
	db #8d,#00,#8a,#df,#00,#91,#05,#ca
	db #29,#8b,#8d,#de,#00,#21,#09,#00
	db #8b,#89,#07,#8d,#00,#8a,#df,#00
	db #91,#05,#ca,#29,#8b,#89,#1f,#8d
	db #de,#00,#21,#09,#00,#80,#8a,#df
	db #00,#91,#05,#c5,#1e,#c5,#1c,#e3
	db #c5,#1e,#8b,#89,#07,#8d,#de,#00
.l1b83 equ $ + 7
.l1b80 equ $ + 4
	db #21,#09,#00,#87,#ff,#80,#87,#00
.l1b84
	ld hl,l1b83
	ld (hl),#00
	ld hl,l1c80
	add a
	add l
	ld l,a
	jr nc,l1b92
	inc h
.l1b92
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l1cf2
.l1b9a
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l1b9a
	ld a,(l1cf3)
	ld (l1d03),a
	ld hl,(l1cf4)
	ld (l1c73),hl
	ld de,(l1cf6)
	ld (l1c77),de
	ld a,l
	ld (l1c79),a
	ld a,(l1cf9)
	ld (l1c7a),a
	ld a,(l1cf8)
	ld e,a
	ld d,#0c
	call l1185
	ld a,(l1d02)
	ld e,a
	ld d,#0d
	call l1185
	ld hl,l1b83
	inc (hl)
	ret
.l1bd5
	ld (l1b83),a
	jp l1178
.l1bdb
	call l1d05
	ld a,(l1b83)
	and a
	ret z
	ld a,(l1cf2)
	and a
	jr z,l1bd5
	dec a
	ld (l1cf2),a
	ld a,(l1d03)
	and a
	jr nz,l1c22
	ld a,(l1d00)
	and a
	ret z
	dec a
	ld (l1d00),a
	ld a,(l1cf3)
	ld (l1d03),a
	ld a,(l1d01)
	and a
	jr z,l1c0b
	ld a,(l1d20)
.l1c0b
	ld b,a
	ld a,(l1cf4)
	add b
	ld (l1c73),a
	ld a,(l1cf5)
	add b
	and #0f
	ld (l1c74),a
	ld hl,(l1cf6)
	ld (l1c77),hl
.l1c22
	ld hl,l1d03
	dec (hl)
	ld a,(l1cfe)
	and a
	jr z,l1c49
	jp p,l1c3c
	ld hl,(l1c73)
	ld de,(l1cfa)
	add hl,de
	ld (l1c73),hl
	jr l1c49
.l1c3c
	ld hl,(l1c73)
	ld de,(l1cfa)
	and a
	sbc hl,de
	ld (l1c73),hl
.l1c49
	ld a,(l1cff)
	and a
	jr z,l1c6c
	jp p,l1c5f
	ld hl,(l1c77)
	ld de,(l1cfc)
	add hl,de
	ld (l1c77),hl
	jr l1c6c
.l1c5f
	ld hl,(l1c77)
	ld de,(l1cfc)
	and a
	sbc hl,de
	ld (l1c77),hl
.l1c6c
	ld a,(l1c73)
	ld (l1c79),a
	ret
.l1c7a equ $ + 7
.l1c79 equ $ + 6
.l1c77 equ $ + 4
.l1c74 equ $ + 1
.l1c73
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l1c7f equ $ + 4
.l1c7d equ $ + 2
.l1c7b
	db #10,#00,#10,#00,#ff
.l1c80
	dw l1c8c,l1c9d,l1cae,l1cbf
	dw l1cd0,l1ce1
.l1c8c
	db #5a,#62,#80,#00,#a0,#00,#28,#f2
	db #29,#00,#11,#00,#ff,#ff,#0a,#00
.l1c9d equ $ + 1
	db #00,#14,#15,#10,#00,#28,#00,#0f
	db #fa,#19,#00,#1b,#00,#ff,#ff,#00
.l1cae equ $ + 2
	db #00,#00,#3c,#06,#28,#00,#2b,#00
	db #1e,#fa,#21,#00,#19,#00,#ff,#ff
.l1cbf equ $ + 3
	db #0a,#00,#00,#63,#0a,#40,#00,#3b
	db #00,#1e,#fa,#01,#00,#02,#00,#01
.l1cd0 equ $ + 4
	db #ff,#0a,#00,#00,#50,#10,#f8,#00
	db #d8,#00,#1e,#d7,#03,#00,#04,#00
.l1ce1 equ $ + 5
	db #01,#01,#09,#01,#00,#64,#04,#42
	db #00,#7c,#00,#28,#fa,#09,#00,#11
.l1cf3 equ $ + 7
.l1cf2 equ $ + 6
	db #00,#ff,#ff,#3c,#00,#00,#00,#00
.l1cfa equ $ + 6
.l1cf9 equ $ + 5
.l1cf8 equ $ + 4
.l1cf6 equ $ + 2
.l1cf5 equ $ + 1
.l1cf4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1d03 equ $ + 7
.l1d02 equ $ + 6
.l1d01 equ $ + 5
.l1d00 equ $ + 4
.l1cff equ $ + 3
.l1cfe equ $ + 2
.l1cfc
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l1d05
	ld a,(l1d20)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l1d23
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l1d23 equ $ +3
.l1d20
	db #ff,#80,#1b,#34
;
.music_info
	db "Chain Reaction (1988)(Elite Systems)()",0
	db "",0

	read "music_end.asm"
