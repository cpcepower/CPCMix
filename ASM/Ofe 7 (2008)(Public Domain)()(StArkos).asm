; Music of Ofe 7 (2008)(Public Domain)()(StArkos)
; Ripped by Megachur the 25/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OFE7.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #3500

	read "music_header.asm"

l3500
	db #53,#4b,#31,#30,#00,#35,#01,#32
	db #00,#1e,#35,#27,#35,#8d,#35,#90
	db #35,#1a,#35,#1e,#35,#27,#35,#8d
	db #35,#03,#c0,#00,#00,#1f,#7f,#03
	db #18,#7f,#05,#1c,#7f,#03,#20,#3d
	db #36,#3f,#36,#3d,#36,#3d,#36,#3f
	db #36,#3d,#36,#81,#36,#3f,#36,#3d
	db #36,#81,#36,#3f,#36,#3d,#36,#3d
	db #36,#3d,#36,#c3,#36,#81,#36,#3f
	db #36,#d6,#36,#81,#36,#3f,#36,#d6
	db #36,#56,#37,#3f,#36,#d6,#36,#56
	db #37,#3f,#36,#d6,#36,#88,#37,#3f
	db #36,#d6,#36,#88,#37,#3f,#36,#d6
	db #36,#3d,#36,#3d,#36,#c3,#36,#ca
	db #37,#3f,#36,#d6,#36,#ca,#37,#3f
	db #36,#d6,#36,#56,#37,#3f,#36,#d6
	db #36,#56,#37,#3f,#36,#d6,#36,#3d
	db #36,#3d,#36,#c3,#36,#20,#0c,#38
	db #a0,#35,#aa,#35,#b3,#35,#cc,#35
	db #e4,#35,#f8,#35,#04,#36,#20,#36
	db #a7,#35,#aa,#35,#ff,#37,#00,#00
	db #00,#00,#b1,#35,#b3,#35,#00,#37
	db #00,#80,#08,#a7,#35,#cc,#35,#00
	db #b7,#00,#2d,#18,#2d,#18,#2c,#0c
	db #2c,#0c,#0b,#0b,#0a,#09,#08,#07
	db #05,#03,#02,#00,#a7,#35,#e4,#35
	db #00,#b7,#00,#1f,#22,#5e,#21,#ed
	db #ff,#4e,#cc,#ff,#1d,#01,#5c,#22
	db #ad,#ff,#1a,#01,#a7,#35,#f8,#35
	db #00,#b7,#00,#1f,#21,#4f,#f9,#ff
	db #1e,#01,#4d,#e0,#ff,#4b,#b0,#ff
	db #ff,#35,#04,#36,#00,#37,#00,#1f
	db #01,#00,#00,#00,#1d,#36,#20,#36
	db #00,#37,#00,#2e,#0c,#0e,#2d,#0c
	db #0d,#2c,#0c,#0c,#2b,#0c,#0b,#2a
	db #0c,#0a,#29,#0c,#09,#28,#0c,#08
	db #39,#36,#3d,#36,#00,#37,#00,#2e
	db #0c,#0e,#2d,#0c,#0c,#2b,#0c,#0a
	db #29,#0c,#08,#27,#0c,#06,#25,#0c
	db #04,#23,#0c,#02,#00,#ca,#c2,#26
	db #80,#01,#ce,#3f,#ce,#27,#ce,#3f
	db #ce,#27,#ce,#3f,#ce,#27,#ce,#3f
	db #ce,#1f,#ce,#37,#ce,#1f,#ce,#37
	db #ce,#1f,#ce,#37,#ce,#1f,#ce,#37
	db #ce,#23,#ce,#3b,#ce,#23,#ce,#3b
	db #ce,#23,#ce,#3b,#ce,#23,#ce,#3b
	db #ce,#27,#ce,#3f,#ce,#27,#ce,#3f
	db #ce,#27,#ce,#3f,#ce,#27,#ce,#3f
	db #c2,#86,#80,#02,#ce,#8d,#ce,#95
	db #ce,#8d,#ce,#87,#ce,#8d,#ce,#95
	db #ce,#8d,#ce,#7f,#ce,#87,#ce,#8d
	db #ce,#87,#ce,#7f,#ce,#87,#ce,#8d
	db #ce,#87,#ce,#83,#ce,#8b,#ce,#91
	db #ce,#8b,#ce,#83,#ce,#8b,#ce,#91
	db #ce,#8b,#ce,#87,#ce,#8d,#ce,#95
	db #ce,#8d,#ce,#87,#ce,#95,#ce,#8d
	db #ce,#87,#c2,#50,#80,#03,#ce,#51
	db #ce,#51,#ce,#51,#ce,#51,#51,#51
	db #51,#51,#51,#ce,#51,#51,#38,#80
	db #04,#ce,#48,#80,#05,#ce,#50,#80
	db #03,#ce,#48,#80,#05,#ce,#38,#80
	db #04,#ce,#48,#80,#05,#ce,#50,#80
	db #03,#ce,#48,#80,#05,#ce,#38,#80
	db #04,#ce,#48,#80,#05,#ce,#50,#80
	db #03,#ce,#48,#80,#05,#ce,#38,#80
	db #04,#ce,#48,#80,#05,#ce,#50,#80
	db #03,#ce,#48,#80,#05,#50,#80,#03
	db #38,#80,#04,#ce,#48,#80,#05,#ce
	db #50,#80,#03,#ce,#48,#80,#05,#ce
	db #38,#80,#04,#ce,#48,#80,#05,#ce
	db #50,#80,#03,#ce,#48,#80,#05,#ce
	db #38,#80,#04,#ce,#48,#80,#05,#ce
	db #50,#80,#03,#ce,#48,#80,#05,#ce
	db #38,#80,#04,#ce,#48,#80,#05,#ce
	db #50,#80,#03,#51,#51,#51,#6e,#80
	db #06,#d2,#87,#d2,#6f,#ce,#87,#ce
	db #6f,#ce,#87,#ce,#67,#d2,#7f,#d2
	db #67,#ce,#7f,#ce,#67,#ce,#7f,#ce
	db #6b,#d2,#83,#d2,#6b,#ce,#83,#ce
	db #6b,#ce,#83,#ce,#6f,#d2,#87,#d2
	db #6f,#ce,#87,#ce,#6f,#ce,#87,#c2
	db #6e,#80,#07,#ce,#6f,#ce,#6f,#ce
	db #6f,#ce,#73,#ce,#73,#ce,#75,#ce
	db #75,#ce,#67,#ce,#67,#ce,#67,#ce
	db #67,#ce,#6b,#ce,#6b,#ce,#6f,#ce
	db #6f,#ce,#6b,#ce,#6b,#ce,#6b,#ce
	db #6b,#ce,#6f,#ce,#6f,#ce,#73,#ce
	db #73,#ce,#6f,#ce,#6f,#ce,#6f,#ce
	db #6f,#ce,#73,#ce,#73,#ce,#75,#ce
	db #75,#c2,#6e,#80,#07,#ce,#75,#ce
	db #7d,#ce,#75,#ce,#7f,#ce,#7d,#ce
	db #75,#ce,#6f,#ce,#67,#ce,#6f,#ce
	db #75,#ce,#6f,#ce,#79,#ce,#75,#ce
	db #6f,#ce,#6b,#ce,#6b,#ce,#73,#ce
	db #79,#ce,#73,#ce,#7d,#ce,#79,#ce
	db #73,#ce,#6f,#ce,#6f,#ce,#75,#ce
	db #7d,#ce,#75,#ce,#7f,#ce,#7d,#ce
	db #75,#ce,#6f,#c2,#ff
;
; #1124 - reallocated by Megachur
;
	jp l1996
	jp l1131
	jp l197a
	inc h
.l1130 equ $ + 2
.l112f equ $ + 1
	ld de,#0000
;
.play_music
.l1131
;
	xor a
	ld (l112f),a
	ld (l1961),a
.l1139 equ $ + 1
	ld a,#00
.l113b equ $ + 1
	cp #00
	jr z,l1145
	inc a
	ld (l1139),a
	jp l13d4
.l1145
	xor a
	ld (l1139),a
.l1149
	or a
	jp nc,l122b
	ld (l1253),a
	ld (l12be),a
	ld (l1329),a
	ld a,#b7
	ld (l1149),a
.l115c equ $ + 1
	ld a,#00
	sub #01
	jr nc,l1192
.l1162 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l118f
	ld b,a
	and #1f
	bit 4,a
	jr z,l1173
	or #e0
.l1173
	ld (l1260),a
	rl b
	rl b
	jr nc,l1181
	ld a,(hl)
	ld (l12cb),a
	inc hl
.l1181
	rl b
	jr nc,l118a
	ld a,(hl)
	ld (l1336),a
	inc hl
.l118a
	ld (l1162),hl
	jr l1195
.l118f
	ld (l1162),hl
.l1192
	ld (l115c),a
.l1196 equ $ + 1
.l1195
	ld a,#00
	sub #01
	jr c,l11a2
	ld (l1196),a
.l119f equ $ + 1
	ld a,#00
	jr l11bd
.l11a3 equ $ + 1
.l11a2
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l11b0
	ld (l11a3),hl
	jr l11bd
.l11b0
	ld (l119f),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l11a3),hl
	ld (l1196),a
	ld a,b
.l11bd
	ld (l1394),a
.l11c1 equ $ + 1
	ld hl,#0000
	ld de,l1259
	ldi
	ldi
	ld de,l12c4
	ldi
	ldi
	ld de,l132f
	ldi
	ldi
	ld (l11c1),hl
.l11dc equ $ + 1
	ld a,#00
	or a
	jr nz,l11ee
.l11e1 equ $ + 1
	ld a,#00
	sub #01
	jr c,l11fc
	ld (l11e1),a
.l11ea equ $ + 1
	ld hl,#0000
	jr l1234
.l11ef equ $ + 1
.l11ee
	ld a,#00
	sub #01
	jr c,l11fc
	ld (l11ef),a
	ld hl,(l11fd)
	jr l1221
.l11fd equ $ + 1
.l11fc
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l1219
	ld (l11e1),a
	xor a
	ld (l11dc),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l11fd),hl
	ex de,hl
	ld (l11ea),hl
	jr l1234
.l1219
	ld (l11ef),a
	ld a,#01
	ld (l11dc),a
.l1221
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l11fd),hl
	ex de,hl
	jr l1234
.l122c equ $ + 1
.l122b
	ld a,#00
	sub #01
	jr nc,l124f
.l1232 equ $ + 1
	ld hl,#0000
.l1234
	ld a,(hl)
	inc hl
	srl a
	jr c,l124c
	srl a
	jr c,l1243
	ld (l113b),a
	jr l124b
.l1243
	ld (l112f),a
.l1247 equ $ + 1
	ld a,#01
	ld (l1130),a
.l124b
	xor a
.l124c
	ld (l1232),hl
.l124f
	ld (l122c),a
.l1253 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l12ba
.l1259 equ $ + 1
	ld hl,#0000
.l125c equ $ + 1
	ld bc,#0100
.l1260 equ $ + 2
.l125f equ $ + 1
	ld de,#0000
.l1263 equ $ + 2
	ld lx,#00
	call l14d3
	ld a,lx
	ld (l1263),a
	ld (l13de),hl
	exx
	ld (l1259),hl
	ld a,c
	ld (l125c),a
	ld (l13d8),a
	xor a
	or hy
	jr nz,l12b8
	ld (l13fb),a
	ld d,a
	ld a,e
	ld (l125f),a
	ld l,d
	ld h,l
	ld (l13db),hl
.l128d equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l140c
	ldi
	ldi
	ld de,l1404
	ldi
	ldi
	ld de,l13fd
	ldi
	ld de,l140e
	ldi
	ld a,(hl)
	inc hl
	ld (l13ed),hl
	ld hl,l1961
	or (hl)
	ld (hl),a
.l12b8
	ld a,ly
.l12ba
	ld (l1253),a
.l12be equ $ + 1
	ld a,#00
	sub #01
	jr nc,l1325
.l12c4 equ $ + 1
	ld hl,#0000
.l12c7 equ $ + 1
	ld bc,#0200
.l12cb equ $ + 2
.l12ca equ $ + 1
	ld de,#0000
.l12ce equ $ + 2
	ld lx,#00
	call l14d3
	ld a,lx
	ld (l12ce),a
	ld (l1430),hl
	exx
	ld (l12c4),hl
	ld a,c
	ld (l12c7),a
	ld (l142a),a
	xor a
	or hy
	jr nz,l1323
	ld (l144d),a
	ld d,a
	ld a,e
	ld (l12ca),a
	ld l,d
	ld h,l
	ld (l142d),hl
.l12f8 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l145e
	ldi
	ldi
	ld de,l1456
	ldi
	ldi
	ld de,l144f
	ldi
	ld de,l1460
	ldi
	ld a,(hl)
	inc hl
	ld (l143f),hl
	ld hl,l1961
	or (hl)
	ld (hl),a
.l1323
	ld a,ly
.l1325
	ld (l12be),a
.l1329 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l1390
.l132f equ $ + 1
	ld hl,#0000
.l1332 equ $ + 1
	ld bc,#0300
.l1336 equ $ + 2
.l1335 equ $ + 1
	ld de,#0000
.l1339 equ $ + 2
	ld lx,#00
	call l14d3
	ld a,lx
	ld (l1339),a
	ld (l1482),hl
	exx
	ld (l132f),hl
	ld a,c
	ld (l1332),a
	ld (l147c),a
	xor a
	or hy
	jr nz,l138e
	ld (l149f),a
	ld d,a
	ld a,e
	ld (l1335),a
	ld l,d
	ld h,l
	ld (l147f),hl
.l1363 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l14b0
	ldi
	ldi
	ld de,l14a8
	ldi
	ldi
	ld de,l14a1
	ldi
	ld de,l14b2
	ldi
	ld a,(hl)
	inc hl
	ld (l1491),hl
	ld hl,l1961
	or (hl)
	ld (hl),a
.l138e
	ld a,ly
.l1390
	ld (l1329),a
.l1394 equ $ + 1
	ld a,#00
	sub #01
	jr c,l139e
	ld (l1394),a
	jr l13d4
.l139e
	ld a,#37
	ld (l1149),a
	ld hl,(l11c1)
.l13a7 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l13d4
	ld (l115c),a
	ld (l1196),a
	ld (l122c),a
.l13b8 equ $ + 1
	ld hl,#0000
	ld (l1162),hl
.l13be equ $ + 1
	ld hl,#0000
	ld (l11a3),hl
.l13c4 equ $ + 1
	ld hl,#0000
	ld (l11c1),hl
.l13ca equ $ + 1
	ld hl,#0000
	ld (l11fd),hl
.l13d0 equ $ + 1
	ld a,#00
	ld (l11dc),a
.l13d4
	ld hl,l1961
.l13d8 equ $ + 1
	ld d,#00
	exx
.l13db equ $ + 1
	ld hl,#0000
.l13de equ $ + 1
	ld de,#0000
	add hl,de
	ld (l13db),hl
	ld (l160e),hl
	ld a,(l1263)
	ld lx,a
.l13ed equ $ + 1
	ld hl,#0000
	ld iy,l17fc
	ld a,(l13fb)
	call l1568
	ex de,hl
.l13fb equ $ + 1
	ld a,#00
.l13fd equ $ + 1
	cp #00
	jr z,l1403
	inc a
	jr l1420
.l1404 equ $ + 1
.l1403
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l141c
.l140c equ $ + 1
	ld de,#0000
.l140e
	or a
	jr c,l141c
.l1412 equ $ + 1
	ld hl,#0000
	ld (l1404),hl
	dec a
	ld (l13fd),a
	inc a
.l141c
	ld (l13ed),de
.l1420
	ld (l13fb),a
	ld a,hx
	ld (l14cf),a
	exx
.l142a equ $ + 1
	ld d,#00
	exx
.l142d equ $ + 1
	ld hl,#0000
.l1430 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l142d),hl
	ld (l160e),hl
	ld a,(l12ce)
	ld lx,a
.l143f equ $ + 1
	ld hl,#0000
	ld iy,l184d
	ld a,(l144d)
	call l1568
	ex de,hl
.l144d equ $ + 1
	ld a,#00
.l144f equ $ + 1
	cp #00
	jr z,l1455
	inc a
	jr l1472
.l1456 equ $ + 1
.l1455
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l146e
.l145e equ $ + 1
	ld de,#0000
.l1460
	or a
	jr c,l146e
.l1464 equ $ + 1
	ld hl,#0000
	ld (l1456),hl
	dec a
	ld (l144f),a
	inc a
.l146e
	ld (l143f),de
.l1472
	ld (l144d),a
	ld a,hx
	ld (l14cc),a
	exx
.l147c equ $ + 1
	ld d,#00
	exx
.l147f equ $ + 1
	ld hl,#0000
.l1482 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l147f),hl
	ld (l160e),hl
	ld a,(l1339)
	ld lx,a
.l1491 equ $ + 1
	ld hl,#0000
	ld iy,l189e
	ld a,(l149f)
	call l1568
	ex de,hl
.l149f equ $ + 1
	ld a,#00
.l14a1 equ $ + 1
	cp #00
	jr z,l14a7
	inc a
	jr l14c4
.l14a8 equ $ + 1
.l14a7
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l14c0
.l14b0 equ $ + 1
	ld de,#0000
.l14b2
	or a
	jr c,l14c0
.l14b6 equ $ + 1
	ld hl,#0000
	ld (l14a8),hl
	dec a
	ld (l14a1),a
	inc a
.l14c0
	ld (l1491),de
.l14c4
	ld (l149f),a
	ld a,hx
	sla a
.l14cc equ $ + 1
	or #00
	rla
.l14cf equ $ + 1
	or #00
	jp l17f1
.l14d3
	ld a,(hl)
	inc hl
	srl a
	jr c,l150c
	cp #60
	jr nc,l1514
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l14ec
	and #0f
	ld c,a
.l14ec
	rl b
	jr nc,l14f2
	ld e,(hl)
	inc hl
.l14f2
	rl b
	jr nc,l1504
.l14f6
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l1500
	dec h
.l1500
	ld ly,#00
	ret
.l1504
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l150c
	ld hy,#00
	add d
	ld lx,a
	jr l1504
.l1514
	ld hy,#01
	sub #60
	jr z,l1535
	dec a
	jr z,l154c
	dec a
	jr z,l153e
	dec a
	jr z,l14f6
	dec a
	jr z,l1548
	dec a
	jr z,l155d
	dec a
	jr z,l1554
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l1535
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l153e
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l1548
	ld c,(hl)
	inc hl
	jr l14f6
.l154c
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l1554
	ld a,(hl)
	inc hl
	ld (l112f),a
	ld a,b
	ld (l1130),a
.l155d
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l1568
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l161e
	bit 4,e
	jr z,l15d0
	ld a,(hl)
	bit 6,a
	jr z,l159d
	ld d,#08
	inc hl
	and #1f
	jr z,l1584
	ld (l18ef),a
	res 3,d
.l1584
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l158d
	xor a
.l158d
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l159d
	ld (l18ef),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l15b9
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l15b2
	xor a
.l15b2
	ld (iy+#36),a
	ld hx,d
	jr l15e3
.l15b9
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l15c2
	xor a
.l15c2
	ld (iy+#36),a
.l15c5
	ld hx,d
	ret
.l15c8
	ld (iy+#36),#00
	ld d,#09
	jr l15c5
.l15d0
	ld d,#08
	ld a,e
	and #0f
	jr z,l15c8
	exx
	sub d
	exx
	jr nc,l15dd
	xor a
.l15dd
	ld (iy+#36),a
	ld hx,#08
.l15e3
	bit 5,e
	jr z,l15eb
	ld a,(hl)
	inc hl
	jr l15ec
.l15eb
	xor a
.l15ec
	bit 6,e
	jr z,l15f6
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l15f9
.l15f6
	ld de,#0000
.l15f9
	add lx
	cp #60
	jr c,l1601
	ld a,#60
.l1601
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l1731
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l160e equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l161e
	or a
	jr nz,l1628
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l1628
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
	ld (l195a),a
	bit 3,e
	jr z,l164a
	ld a,(hl)
	inc hl
	ld (l18ef),a
	res 3,d
	jr l164a
.l164a
	ld hx,d
	xor a
	bit 7,b
	jr z,l165c
	bit 6,b
	jr z,l1657
	ld a,(hl)
	inc hl
.l1657
	ld (l170b),a
	ld a,#01
.l165c
	ld (l16a4),a
	ld a,b
	rra
	and #0e
	ld (l16b5),a
	bit 4,e
	jp nz,l1716
	bit 1,e
	jr z,l1673
	ld a,(hl)
	inc hl
	jr l1674
.l1673
	xor a
.l1674
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l1681
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l1684
.l1681
	ld de,#0000
.l1684
	add lx
	cp #60
	jr c,l168c
	ld a,#60
.l168c
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l1731
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l160e)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l16a4 equ $ + 1
	ld a,#00
	or a
	jr nz,l16b4
	ex af,af'
	bit 5,a
	jr nz,l171f
.l16ad
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l16b5 equ $ + 1
.l16b4
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l16bf),a
	ld a,c
.l16bf equ $ + 1
	jr l16c0
.l16c0
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
	jr nc,l16d9
	inc bc
.l16d9
	ld a,c
	ld (l1924),a
	ld a,b
	ld (l193f),a
	ld a,(l16a4)
	or a
	jr z,l1714
	ld a,(l16b5)
	ld e,a
	srl a
	add e
	ld (l16f3),a
	ld a,b
.l16f3 equ $ + 1
	jr l16f4
.l16f4
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
.l170b equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l1714
	pop hl
	ret
.l1716
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l16ad
.l171f
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l1924),a
	inc hl
	ld a,(hl)
	ld (l193f),a
	inc hl
	ret
.l1731
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
.l17f1
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l17fc equ $ + 1
	ld a,#00
.l17fe equ $ + 1
	cp #00
	jr z,l1816
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
	ld (l17fe),a
	exx
.l1817 equ $ + 1
.l1816
	ld a,#00
.l1819 equ $ + 1
	cp #00
	jr z,l1831
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
	ld (l1819),a
	exx
.l1832 equ $ + 1
.l1831
	ld a,#00
.l1834 equ $ + 1
	cp #00
	jr z,l184c
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
	ld (l1834),a
	exx
.l184d equ $ + 1
.l184c
	ld a,#00
.l184f equ $ + 1
	cp #00
	jr z,l1867
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
	ld (l184f),a
	exx
.l1868 equ $ + 1
.l1867
	ld a,#00
.l186a equ $ + 1
	cp #00
	jr z,l1882
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
	ld (l186a),a
	exx
.l1883 equ $ + 1
.l1882
	ld a,#00
.l1885 equ $ + 1
	cp #00
	jr z,l189d
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
	ld (l1885),a
	exx
.l189e equ $ + 1
.l189d
	ld a,#00
.l18a0 equ $ + 1
	cp #00
	jr z,l18b8
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
	ld (l18a0),a
	exx
.l18b9 equ $ + 1
.l18b8
	ld a,#00
.l18bb equ $ + 1
	cp #00
	jr z,l18d3
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
	ld (l18bb),a
	exx
.l18d4 equ $ + 1
.l18d3
	ld a,#00
.l18d6 equ $ + 1
	cp #00
	jr z,l18ee
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
	ld (l18d6),a
	exx
.l18ef equ $ + 1
.l18ee
	ld a,#00
.l18f1 equ $ + 1
	cp #00
	jr z,l1909
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
	ld (l18f1),a
	exx
.l1909
	ld a,h
.l190b equ $ + 1
	cp #c0
	jr z,l1923
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
	ld (l190b),a
	exx
.l1924 equ $ + 1
.l1923
	ld a,#00
.l1926 equ $ + 1
	cp #00
	jr z,l193e
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
	ld (l1926),a
	exx
.l193f equ $ + 1
.l193e
	ld a,#00
.l1941 equ $ + 1
	cp #00
	jr z,l1959
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
	ld (l1941),a
	exx
.l195a equ $ + 1
.l1959
	ld a,#00
.l195c equ $ + 1
	cp #ff
	jr nz,l1965
	ld h,a
.l1961 equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l1965
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
	ld (l195c),a
	ret
;
.stop_music
.l197a
;
	xor a
	ld (l1832),a
	ld (l1883),a
	ld (l18d4),a
	dec a
	ld (l1834),a
	ld (l1885),a
	ld (l18d6),a
	ld (l190b),a
	ld a,#3f
	jp l17f1
;
.real_init_music
.l1996
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l1247),a
	ld de,#0003
	add hl,de
	ld de,l11a3
	ldi
	ldi
	ld de,l11c1
	ldi
	ldi
	ld de,l11fd
	ldi
	ldi
	ld de,l128d
	ldi
	ldi
	ld de,l13b8
	ldi
	ldi
	ld de,l13be
	ldi
	ldi
	ld de,l13c4
	ldi
	ldi
	ld de,l13ca
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l113b),a
	ld (l1139),a
	ld (l1162),hl
	ld hl,(l11fd)
	ld (l13a7),hl
	ld a,(hl)
	and #01
	ld (l11dc),a
	ld hl,(l13ca)
	ld a,(hl)
	and #01
	ld (l13d0),a
	ld hl,(l128d)
	ld (l12f8),hl
	ld (l1363),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l13ed),hl
	ld (l143f),hl
	ld (l1491),hl
	ld (l140c),hl
	ld (l145e),hl
	ld (l14b0),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l1412),de
	ld (l1464),de
	ld (l14b6),de
	ld (l1404),de
	ld (l1456),de
	ld (l14a8),de
	ld a,#37
	ld (l1149),a
	ld hl,l1a52
.l1a42
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l1a49
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l1a49
	jr l1a42
.l1a52
	jr l1a54
.l1a54
	dw l17fc,l1817,l184d,l1868
	dw l189e,l18b9,l18ef,l1832
	dw l1883,l18d4,l1924,l193f
	dw l195a,l115c,l1196,l11e1
	dw l11ef,l122c,l13fb,l144d
	dw l149f,l125c,l12c7,l1332
	dw #ff11,l17fe,l1819,l184f
	dw l186a,l18a0,l18bb,l18f1
	dw l190b,l1834,l1885,l18d6
	dw l1926,l1941,l195c,l13fd
	dw l144f,l14a1,#b703,l140e
	dw l1460,l14b2,#0000
;
; #01ac
; ld de,#3500
; call #1996
;
.init_music
;
	ld de,l3500
	jp real_init_music
;
.music_info
	db "Ofe 7 (2008)(Public Domain)()",0
	db "StArkos",0

	read "music_end.asm"
