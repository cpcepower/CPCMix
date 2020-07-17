; Music of Warhawk (1988) (Firebird)(Rob Hubbard)()
; Ripped by Megachur the 22/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "WARHAWK.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #1000

	read "music_header.asm"

	jp l1013	; init
	jp l10c2	; play
	jp l100c	; stop
	jp l1b03
;
.stop_music
.l100c
;
	xor a
	ld (l1536),a
	jp l1178
;
.init_music
.l1013
;
	xor a
	ld (l1536),a
	ld b,#00
	ld hl,l1537
	ld ix,l105b
	ld c,#22
	ld a,#03
.l1024
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
	ld (ix+#20),b
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
	jr nz,l1024
	inc a
	ld (l10c1),a
	ld (l1536),a
	ret
.l105b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l107d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l109f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
.l10c1
	db #00
;
.play_music
.l10c2
;
	call l1b03
	ld a,(l1536)
	and a
	ret z
.l10cb equ $ + 1
	ld a,#00
	ld (l1118),a
	ld hl,l10c1
	dec (hl)
	jr nz,l10f0
	ld b,(hl)

	ld ix,l105b
	call l1282

	ld ix,l107d
	call l1282

	ld ix,l109f
	call l1282
	ld hl,l10c1
.l10ef equ $ + 1
	ld (hl),#01
.l10f0
	ld ix,l105b
	call l1338
	ld (l145b),hl
	ld (l1463),a
	ld ix,l107d
	call l1338
	ld (l145d),hl
	ld (l1464),a
	ld ix,l109f
	call l1338
	ld (l145f),hl
	ld (l1465),a
.l1118 equ $ + 1
	ld a,#00
	ld (l1461),a
	ld a,(l1aab)
	and a
.l1120
	jr z,l1152
	ld hl,(l1b9b)
	ld (l145b),hl
	ld hl,(l1b9f)
	ld (l145f),hl
	ld a,(l1ba1)
	ld (l1461),a
	ld a,(l1462)
	or #2d
	ld hl,l1ba2
	and (hl)
	ld (l1462),a
	ld a,(l1ba3)
	ld (l1463),a
	ld a,(l1ba5)
	ld (l1465),a
	ld a,(l1ba7)
	ld (l1467),a
.l1152
	ld hl,l1466
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
	ld de,#0d00	; original is ld de,#d000 should be ld de,#0d00 !!!
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
;
.jumps_table
;
	db l126d-$	; #cd
	db l1256-$	; #b5
	db l125b-$	; #b9
	db l1261-$	; #be
	db l1220-$	; #7c
	db l1250-$	; #ab
	db l124c-$	; #a6
	db l11ba-$	; #13
	db l123d-$	; #95
	db l1236-$	; #8d
	db l11fc-$	; #52
	db l11e7-$	; #3c
	db l1210-$	; #64
	db l1267-$	; #ba
	db l11b2-$	; #04
	db l1270-$	; #c1
	db l1276-$	; #c6
	db l127c-$	; #cb
.l11b2
	xor a
	ld (l1536),a
	pop hl
	jp l1178
.l11ba
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
	jr nz,l11dc
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l11dc
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l1294
.l11e7
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,l1440
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l1294
.l11fc
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l1440
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l1294
.l1210
	ld hl,l1440
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l1294
.l1220
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l1294
.l1236
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l1294
.l123d
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l1294
.l124c
	set 7,(ix+#00)
.l1250
	set 3,(ix+#00)
	jr l1294
.l1256
	ld (ix+#1d),b
	jr l1294
.l125b
	ld (ix+#1d),#40
	jr l1294
.l1261
	ld (ix+#1d),#c0
	jr l1294
.l1267
	set 1,(ix+#00)
	jr l1294
.l126d
	ld (ix+#13),b
.l1270
	res 5,(ix+#00)
	jr l12ca
.l1276
	set 4,(ix+#00)
	jr l1294
.l127c
	set 0,(ix+#1f)
	jr l1294
.l1282
	dec (ix+#10)
	jr nz,l12d7
	ld (ix+#00),b
	res 0,(ix+#1f)
	ld e,(ix+#01)
	ld d,(ix+#02)
.l1294
	ld a,(de)
	inc de
	and a
	jp m,l12e8
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l12a6
	ld (l10cb),a
.l12a6
	bit 4,(ix+#00)
	jr nz,l12ca
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	res 4,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l12ca
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l12d7
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l12e4
	inc (ix+#12)
	ret
.l12e4
	dec (ix+#12)
	ret
.l12e8
	cp #b8
	jr c,l1330
	add #20
	jr c,l1314
	add #10
	jr c,l131b
	add #10
	jr nc,l130d
	ld c,a
	ld hl,l1510
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr l1294
.l130d
	add #09
	ld (l10ef),a
	jr l1294
.l1314
	inc a
	ld (ix+#11),a
	jp l1294
.l131b
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
	jp l1294
.l1330
	ld hl,jumps_table-#80	; l1120
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l1338
	ld c,(ix+#00)
	bit 5,c
	jr z,l1383
	ld a,(ix+#16)
	sub #10
	jr nc,l136b
	bit 6,c
	jr z,l1370
	add (ix+#13)
	jr nc,l1350
	sbc a
.l1350
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l1366
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l1383
.l1366
	ld (ix+#18),a
	jr l1383
.l136b
	ld (ix+#16),a
	jr l1383
.l1370
	cpl
	sub #0f
	add (ix+#13)
	jr c,l1379
	sub a
.l1379
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l1383
	res 5,c
.l1383
	ld a,(ix+#20)
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,l139c
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l139c
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l1468
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l13fe
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l13c7
	bit 0,c
	jr nz,l13e5
.l13c7
	bit 5,l
	jr nz,l13d7
	sub (ix+#1b)
	jr nc,l13e2
	set 5,(ix+#1d)
	sub a
	jr l13e2
.l13d7
	add (ix+#1b)
	cp b
	jr c,l13e2
	res 5,(ix+#1d)
	ld a,b
.l13e2
	ld (ix+#1c),a
.l13e5
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l13f0
	dec d
.l13f0
	add #a0
	jr c,l13fc
.l13f4
	sla e
	rl d
	add #18
	jr nc,l13f4
.l13fc
	add hl,de
	ex de,hl
.l13fe
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l1429
	ld b,(ix+#0e)
	djnz l1426
	ld c,(ix+#0d)
	bit 7,c
	jr z,l1415
	dec b
.l1415
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l1429
.l1426
	ld (ix+#0e),b
.l1429
	bit 0,(ix+#1f)
	jr z,l143c
	res 0,(ix+#1f)
	ld a,#00
	ld (l1118),a
	ld a,#07
	jr l144d
.l143c
	cpl
	and #03
.l1440 equ $ + 1
	ld a,#38
	jr nz,l144d
	ld a,(l10cb)
	xor #08
	ld (l1118),a
	ld a,#07
.l144d
	ld hl,l1462
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l1462 equ $ + 7
.l1461 equ $ + 6
.l145f equ $ + 4
.l145d equ $ + 2
.l145b
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l1467 equ $ + 4
.l1466 equ $ + 3
.l1465 equ $ + 2
.l1464 equ $ + 1
.l1463
	db #0f,#0f,#0f,#00,#00
.l1468
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
.l1510
	db #07,#08,#0a,#0c,#0e,#16,#18,#00
	db #87,#00,#02,#87,#00,#03,#87,#00
	db #09,#87,#00,#00,#02,#02,#04,#04
	db #05,#05,#87,#00,#05,#87,#0c,#00
	db #00,#00,#00,#00,#00,#87
.l1536
.music_end
	db #00
.l1537
	dw l153d,l162f,l159b
.l153d
	dw l172d,l1a83,l1a92,l1a92
	dw l172d,l174f,l172d,l175b
	dw l1a1a,l1761,l1761,l1761
	dw l176e,l178b,l179a,l178b
	dw l17a5,l17b0,l17b0,l17c6
	dw l17c6,l17b0,l17b0,l17c6
	dw l17d9,l17d9,l17ee,l17ee
	dw l19c6,l19c6,l19c6,l19c6
	dw l19c6,l19c6,l19c6,l19c6
	dw l19e2,l19e2,l19fe,l19fe
	dw l1a95,l1a95,l1a95,l1a9e
	dw l1a92,l1a92,#0000
.l159b
	dw l1a92,l172d,l1a83,l1a92
	dw l191a,l191a,l191a,l191a
	dw l191a,l191a,l191a,l191a
	dw l1a38,l1944,l1944,l1944
	dw l1944,l1944,l1944,l1944
	dw l1944,l191a,l191a,l191a
	dw l191a,l191a,l191a,l191a
	dw l191a,l191a,l191a,l191a
	dw l191a,l191a,l191a,l191a
	dw l1960,l1960,l1960,l1960
	dw l197c,l197c,l197c,l197c
	dw l197c,l197c,l197c,l197c
	dw l197c,l197c,l197c,l197c
	dw l197c,l197c,l197c,l197c
	dw l197c,l197c,l197c,l197c
	dw l197c,l197c,l197c,l197c
	dw l19a1,l19a1,l19a1,l19a1
	dw l191a,l1a95,l1a92,l1a9e
	dw l1a92,#0000
.l162f
	dw l1a92,l1a92,l172d,l1a83
	dw l184e,l184e,l186a,l186a
	dw l1880,l1880,l184e,l184e
	dw l184e,l184e,l186a,l186a
	dw l1880,l1880,l184e,l184e
	dw l184e,l186a,l186a,l184e
	dw l184e,l186a,l1880,l184e
	dw l1896,l1896,l186a,l186a
	dw l1896,l1896,l186a,l186a
	dw l1896,l1896,l186a,l186a
	dw l1896,l1896,l186a,l186a
	dw l18ac,l18ac,l184e,l184e
	dw l18c2,l18c2,l1880,l1880
	dw l18ac,l18ac,l184e,l184e
	dw l18c2,l18c2,l1880,l1880
	dw l184e,l184e,l18ac,l18ac
	dw l186a,l186a,l1880,l1880
	dw l184e,l184e,l18ac,l18ac
	dw l186a,l186a,l18d8,l18d8
	dw l18d8,l18d8,l18ee,l18ee
	dw l18ee,l18d8,l18d8,l18d8
	dw l18ac,l18ac,l18ac,l1904
	dw l1904,l1904,l18ee,l18ee
	dw l18ee,l18d8,l18d8,l18d8
	dw l18ac,l18ac,l18ac,l1904
	dw l1904,l1904,l18ee,l18ee
	dw l18ee,l18d8,l18d8,l18d8
	dw l18ac,l1904,l1904,l18ee
	dw l18ee,l18ee,l18c2,l18c2
	dw l18c2,l1880,l1880,l1880
	dw l1880,l1a95,l1a95,l1a92
	dw l1a92,l1a9e,#0000
.l172d
	db #bb,#c0,#8a,#df,#00,#41,#05,#e5
	db #36,#88,#01,#01,#82,#37,#32,#33
	db #e3,#32,#2e,#e5,#2d,#e5,#2e,#f3
	db #26,#e5,#27,#26,#30,#2d,#e3,#33
.l174f equ $ + 2
	db #32,#87,#e5,#31,#ef,#32,#c3,#e1
.l175b equ $ + 6
	db #2e,#31,#30,#2f,#2e,#87,#e5,#2d
.l1761 equ $ + 4
	db #2e,#f3,#2b,#87,#c1,#f7,#35,#e3
	db #c2,#35,#c1,#35,#ef,#35,#c2,#34
.l176e equ $ + 1
	db #87,#f7,#c1,#35,#e3,#c2,#35,#c1
	db #35,#ef,#35,#e0,#c2,#34,#35,#36
	db #37,#38,#39,#3a,#3b,#3c,#3d,#3e
.l178b equ $ + 6
	db #3f,#40,#41,#42,#43,#87,#c0,#ef
	db #37,#e7,#3a,#3f,#f7,#3e,#e7,#3a
.l179a equ $ + 5
	db #f7,#3d,#e7,#39,#87,#f5,#3c,#e1
	db #c3,#27,#2a,#e1,#29,#28,#27,#87
.l17a5
	db #f5,#3e,#e1,#c3,#2a,#2d,#e1,#2c
.l17b0 equ $ + 3
	db #2b,#2a,#87,#e1,#c6,#31,#32,#30
	db #32,#e1,#2e,#32,#2d,#e3,#2b,#e1
	db #32,#30,#32,#e1,#2e,#32,#2d,#2b
.l17c6 equ $ + 1
	db #87,#e1,#36,#37,#35,#37,#33,#37
	db #32,#e3,#30,#e1,#37,#35,#37,#33
.l17d9 equ $ + 4
	db #37,#32,#30,#87,#e1,#35,#36,#33
	db #36,#e1,#32,#36,#31,#e3,#30,#e1
	db #36,#35,#e1,#36,#33,#36,#31,#30
.l17ee equ $ + 1
	db #87,#c0,#e1,#84,#19,#01,#52,#84
	db #19,#01,#52,#e5,#2e,#36,#35,#ef
	db #3d,#e1,#c3,#31,#34,#33,#32,#31
	db #c0,#e1,#84,#19,#01,#52,#84,#19
	db #01,#52,#e5,#c0,#2e,#36,#35,#ef
	db #38,#e1,#c3,#33,#36,#35,#34,#33
	db #c0,#e1,#84,#19,#01,#52,#84,#19
	db #01,#52,#e5,#c0,#2e,#31,#30,#ef
	db #33,#e1,#c3,#37,#3a,#39,#38,#37
	db #c0,#e1,#84,#19,#01,#52,#84,#19
	db #01,#52,#e5,#c0,#2d,#36,#35,#ef
	db #3c,#e1,#c3,#39,#3c,#3b,#3a,#39
.l184e equ $ + 1
	db #87,#8a,#df,#00,#41,#04,#c0,#e1
	db #91,#13,#91,#1f,#8b,#8d,#07,#8a
	db #91,#13,#91,#1f,#91,#13,#8b,#8d
.l186a equ $ + 5
	db #07,#8a,#91,#1f,#87,#e1,#91,#0c
	db #91,#18,#8b,#8d,#07,#8a,#91,#0c
	db #91,#18,#91,#0c,#8b,#8d,#07,#8a
.l1880 equ $ + 3
	db #91,#18,#87,#e1,#91,#0e,#91,#1a
	db #8b,#8d,#07,#8a,#91,#0e,#91,#1a
	db #91,#0e,#8b,#8d,#07,#8a,#91,#1a
.l1896 equ $ + 1
	db #87,#e1,#91,#0d,#91,#19,#8b,#8d
	db #07,#8a,#91,#0d,#91,#19,#91,#0d
.l18ac equ $ + 7
	db #8b,#8d,#07,#8a,#91,#19,#87,#e1
	db #91,#0f,#91,#1b,#8b,#8d,#07,#8a
	db #91,#0f,#91,#1b,#91,#0f,#8b,#8d
.l18c2 equ $ + 5
	db #07,#8a,#91,#1b,#87,#e1,#91,#15
	db #91,#21,#8b,#8d,#07,#8a,#91,#15
	db #91,#21,#91,#15,#8b,#8d,#07,#8a
.l18d8 equ $ + 3
	db #91,#21,#87,#e1,#91,#14,#91,#20
	db #8b,#8d,#07,#8a,#91,#14,#91,#20
	db #91,#14,#8b,#8d,#07,#8a,#91,#20
.l18ee equ $ + 1
	db #87,#e1,#91,#16,#91,#22,#8b,#8d
	db #07,#8a,#91,#16,#91,#22,#91,#16
.l1904 equ $ + 7
	db #8b,#8d,#07,#8a,#91,#22,#87,#e1
	db #91,#11,#91,#1d,#8b,#8d,#07,#8a
	db #91,#11,#91,#1d,#91,#11,#8b,#8d
.l191a equ $ + 5
	db #07,#8a,#91,#1d,#87,#c0,#de,#00
	db #11,#0f,#e1,#8c,#4f,#4f,#8a,#2e
	db #8c,#4f,#8a,#2d,#2e,#8c,#4f,#8a
	db #2b,#8c,#4f,#8a,#2b,#e3,#2e,#e1
	db #2d,#2e,#df,#00,#41,#03,#84,#14
.l1944 equ $ + 7
	db #01,#2b,#84,#14,#01,#2b,#87,#df
	db #00,#11,#0f,#8a,#c6,#e1,#25,#24
	db #1f,#e3,#25,#e1,#24,#1f,#e3,#25
	db #e1,#24,#1f,#e3,#25,#e1,#24,#1f
.l1960 equ $ + 3
	db #25,#c0,#87,#de,#00,#11,#0f,#e1
	db #8c,#4f,#8a,#2e,#30,#8c,#4f,#2e
	db #2c,#df,#00,#41,#03,#8a,#84,#14
.l197c equ $ + 7
	db #01,#2b,#84,#14,#01,#2b,#87,#df
	db #00,#11,#0f,#e1,#8a,#c1,#2e,#2e
	db #c2,#2e,#8c,#c0,#46,#8a,#c1,#2e
	db #c0,#8c,#46,#8a,#c2,#2e,#c1,#2e
	db #c0,#8c,#46,#8a,#c1,#2e,#c2,#2e
.l19a1 equ $ + 4
	db #c0,#8c,#46,#87,#df,#00,#11,#0f
	db #e1,#8a,#c1,#30,#30,#c2,#30,#8c
	db #c0,#3e,#8a,#c1,#30,#c0,#8c,#3e
	db #8a,#c2,#30,#c1,#30,#c0,#8c,#3e
	db #8a,#c1,#30,#c2,#30,#c0,#8c,#3e
.l19c6 equ $ + 1
	db #87,#e1,#c5,#8a,#35,#35,#35,#84
	db #3c,#01,#52,#35,#84,#3c,#01,#52
	db #35,#35,#84,#3c,#01,#52,#35,#35
.l19e2 equ $ + 5
	db #84,#3c,#01,#52,#87,#e1,#c1,#8a
	db #37,#37,#37,#84,#3c,#01,#52,#37
	db #84,#3c,#01,#52,#37,#37,#84,#3c
	db #01,#52,#37,#37,#84,#3c,#01,#52
.l19fe equ $ + 1
	db #87,#e1,#c2,#8a,#36,#36,#36,#84
	db #3c,#01,#52,#36,#84,#3c,#01,#52
	db #36,#36,#84,#3c,#01,#52,#36,#36
.l1a1a equ $ + 5
	db #84,#3c,#01,#52,#87,#c6,#e5,#26
	db #2e,#e3,#26,#ef,#27,#e5,#27,#30
	db #e3,#2d,#ef,#2e,#e5,#2b,#35,#e3
	db #32,#ef,#33,#e5,#2a,#30,#e3,#2d
.l1a38 equ $ + 3
	db #ef,#2b,#87,#c0,#e3,#8a,#22,#e1
	db #43,#2b,#43,#43,#e3,#22,#e3,#24
	db #e1,#43,#24,#43,#43,#e3,#24,#e3
	db #24,#e1,#43,#2d,#43,#43,#e3,#2a
	db #e3,#2b,#e1,#43,#2b,#43,#43,#e3
	db #2b,#e3,#2f,#e1,#43,#32,#43,#43
	db #e3,#2f,#e3,#30,#e1,#43,#30,#43
	db #43,#e3,#30,#e3,#26,#e1,#43,#2d
	db #43,#43,#e3,#2a,#e3,#26,#e1,#43
.l1a83 equ $ + 6
	db #26,#43,#43,#e3,#26,#87,#e5,#2d
	db #2e,#eb,#2b,#ef,#90,#37,#ff,#90
.l1a92 equ $ + 5
	db #43,#f7,#90,#43,#87,#e0,#8f,#87
.l1a95
	db #df,#00,#11,#01,#8a,#c4,#ef,#3e
.l1a9e equ $ + 1
	db #87,#ff,#84,#ff,#10,#1f,#84,#ff
	db #01,#24,#87,#ff,#80,#87
.l1aab
	db #00
.l1aac
	ld hl,l1aab
	ld (hl),#00
	ld hl,l1ba8
	add a
	add l
	ld l,a
	jr nc,l1aba
	inc h
.l1aba
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l1c53
.l1ac2
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l1ac2
	ld a,(l1c54)
	ld (l1c64),a
	ld hl,(l1c55)
	ld (l1b9b),hl
	ld de,(l1c57)
	ld (l1b9f),de
	ld a,l
	ld (l1ba1),a
	ld a,(l1c5a)
	ld (l1ba2),a
	ld a,(l1c59)
	ld e,a
	ld d,#0c
	call l1185
	ld a,(l1c63)
	ld e,a
	ld d,#0d
	call l1185
	ld hl,l1aab
	inc (hl)
	ret
.l1afd
	ld (l1aab),a
	jp l1178
.l1b03
	call l1c66
	ld a,(l1aab)
	and a
	ret z
	ld a,(l1c53)
	and a
	jr z,l1afd
	dec a
	ld (l1c53),a
	ld a,(l1c64)
	and a
	jr nz,l1b4a
	ld a,(l1c61)
	and a
	ret z
	dec a
	ld (l1c61),a
	ld a,(l1c54)
	ld (l1c64),a
	ld a,(l1c62)
	and a
	jr z,l1b33
	ld a,(l1c81)
.l1b33
	ld b,a
	ld a,(l1c55)
	add b
	ld (l1b9b),a
	ld a,(l1c56)
	add b
	and #0f
	ld (l1b9c),a
	ld hl,(l1c57)
	ld (l1b9f),hl
.l1b4a
	ld hl,l1c64
	dec (hl)
	ld a,(l1c5f)
	and a
	jr z,l1b71
	jp p,l1b64
	ld hl,(l1b9b)
	ld de,(l1c5b)
	add hl,de
	ld (l1b9b),hl
	jr l1b71
.l1b64
	ld hl,(l1b9b)
	ld de,(l1c5b)
	and a
	sbc hl,de
	ld (l1b9b),hl
.l1b71
	ld a,(l1c60)
	and a
	jr z,l1b94
	jp p,l1b87
	ld hl,(l1b9f)
	ld de,(l1c5d)
	add hl,de
	ld (l1b9f),hl
	jr l1b94
.l1b87
	ld hl,(l1b9f)
	ld de,(l1c5d)
	and a
	sbc hl,de
	ld (l1b9f),hl
.l1b94
	ld a,(l1b9b)
	ld (l1ba1),a
	ret
.l1ba2 equ $ + 7
.l1ba1 equ $ + 6
.l1b9f equ $ + 4
.l1b9c equ $ + 1
.l1b9b
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l1ba7 equ $ + 4
.l1ba5 equ $ + 2
.l1ba3
	db #10,#00,#10,#00,#ff
.l1ba8
	dw l1bba,l1bcb,l1bdc,l1bed
	dw l1bfe,l1c0f,l1c20,l1c31
	dw l1c42
.l1bba
	db #3c,#46,#80,#00,#a0,#00,#28,#f2
	db #29,#00,#11,#00,#ff,#ff,#0a,#00
	db #00
.l1bcb
	db #3c,#02,#80,#00,#85,#00,#28,#f2
	db #13,#00,#10,#00,#ff,#ff,#14,#00
	db #00
.l1bdc
	db #2d,#07,#08,#00,#10,#00,#14,#fa
	db #18,#00,#10,#00,#ff,#01,#05,#00
	db #00
.l1bed
	db #55,#0a,#40,#00,#3b,#00,#1e,#fa
	db #01,#00,#02,#00,#01,#ff,#0a,#00
	db #00
.l1bfe
	db #32,#1a,#b8,#00,#98,#00,#1e,#d7
	db #03,#00,#04,#00,#01,#01,#03,#01
	db #00
.l1c0f
	db #64,#04,#42,#00,#7c,#00,#28,#fa
	db #09,#00,#11,#00,#ff,#ff,#3c,#00
	db #00
.l1c20
	db #3c,#06,#8f,#00,#7f,#00,#1e,#fa
	db #01,#00,#01,#00,#01,#01,#08,#00
	db #00
.l1c31
	db #78,#05,#8a,#00,#80,#00,#30,#fa
	db #16,#00,#12,#00,#01,#01,#2d,#00
	db #00
.l1c42
	db #46,#48,#02,#01,#08,#01,#28,#fa
	db #08,#00,#06,#00,#01,#01,#0f,#00
	db #00
.l1c5a equ $ + 7
.l1c59 equ $ + 6
.l1c57 equ $ + 4
.l1c56 equ $ + 3
.l1c55 equ $ + 2
.l1c54 equ $ + 1
.l1c53
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1c62 equ $ + 7
.l1c61 equ $ + 6
.l1c60 equ $ + 5
.l1c5f equ $ + 4
.l1c5d equ $ + 2
.l1c5b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1c64 equ $ + 1
.l1c63
	db #00,#00,#00
.l1c66
	ld a,(l1c81)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l1c84
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l1c84 equ $+3
.l1c81
	db #ff,#80,#1b,#34
;
.music_info
	db "Warhawk (1988) (Firebird)(Rob Hubbard)",0
	db "",0

	read "music_end.asm"
