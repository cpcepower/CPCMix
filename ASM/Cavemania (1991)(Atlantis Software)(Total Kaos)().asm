; Music of Cavemania (1991)(Atlantis Software)(Total Kaos)()
; Ripped by Megachur the 01/06/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CAVEMANI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #4e25
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

.l4e25
	dw l5ba9,l5bb2,l5bb7,l5bbc
	dw l5bc5,l5bca,l5bcf,l5bd8
	dw l5bdd,l5be2,l5beb,l5bf0
	dw l5bf5,l5c04,l5c0f,l5c1a
	dw l5c23,l5c28,l5c2d,l5c36
	dw l5c3b,l5c40,l5c4b,l5c52
.l4e55
	dw l53b7,l53bc,l53c9,l53e1
	dw l53eb,l5420,l5420,l5420
	dw l5421,l5422,l542b,l5434
	dw l543d,l5443,l544c,l5455
.l4e75
	dw #0000
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
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
.l4f37
	dw l547d,l5485,l548d,l54bf
	dw l54c7,l54cd,l54bf,l54c7
	dw l54cd,l54d3,l5525,l553f
	dw l556b,l55d3,l5609,l5633
.l4f5b equ $ + 4
	dw l56c1,l5715,l54c3,l54c9
	dw l54cf,l5481,l5485,l548d
	dw l556f,l55d7,l560d,l5637
.l4f73 equ $ + 4
	dw l56c3,l5719,l5785,l57ec
	dw l588d,l597e,l5a1f,l5ae4
.l4f7f
	dw l4fdf
	db #00,#88,#03,#10,#00,#00,#f1,#4f
	db #00,#ff,#00,#01,#00,#00,#fe,#4f
	db #00,#ff,#03,#00,#00,#00,#0f,#50
	db #00,#83,#01,#16,#00,#00,#20,#50
	db #00,#ff,#08,#19,#00,#00,#35,#50
	db #30,#84,#08,#19,#00,#00,#e8,#4f
	db #30,#ff,#01,#13,#00,#00,#35,#50
	db #38,#84,#08,#19,#00,#00,#df,#4f
	db #00,#ff,#00,#10,#00,#00,#3e,#50
	db #00,#ff,#01,#1d,#00,#00,#df,#4f
	db #00,#88,#03,#1d,#00,#00,#df,#4f
.l4fdf equ $ + 6
	db #00,#88,#03,#0b,#00,#00,#0c,#80
	db #02,#01,#01,#00,#00,#00,#00,#0c
	db #80,#05,#01,#01,#00,#00,#00,#00
	db #07,#01,#03,#01,#0c,#80,#08,#01
	db #01,#00,#00,#00,#00,#0e,#80,#01
	db #01,#0a,#01,#08,#01,#0e,#80,#06
	db #01,#01,#00,#00,#00,#00,#08,#01
	db #02,#01,#0a,#00,#01,#08,#0a,#80
	db #04,#01,#01,#00,#00,#00,#00,#0a
	db #80,#04,#01,#08,#80,#03,#01,#06
	db #80,#02,#01,#04,#80,#01,#01,#01
	db #00,#00,#00,#00,#0f,#80,#01,#01
	db #01,#00,#00,#00,#00,#08,#01,#02
	db #01,#0c,#00,#01,#08,#0a,#80,#04
.l504f equ $ + 6
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #0c,#18,#24,#81,#0c,#00,#00,#00
	db #86,#0c,#18,#8e,#00,#8e,#00,#01
	db #8e,#30,#18,#8e,#0c,#01,#8e,#01
.l5070 equ $ + 7
	db #0d,#01,#8e,#0c,#01,#00,#8e,#ff
	db #0f,#01,#02,#00,#00,#00,#00,#0a
	db #00,#ff,#18,#ff,#0f
.l5080 equ $ + 2
	db #01,#20,#4f,#6f,#11,#1d,#4e
	call l1b55
	ld hl,l0b74
	cp (hl)
	ret nc
	ld (hl),a
	ld a,c
	ld (l0b75),a
	ret
	call l5080
	ld a,(l0b74)
	cp #ff
	ret z
	call l50ff
	ld hl,(l0b75)
	ld h,#00
	ld de,l4e25
	add hl,de
	call l50bb
.l50ab
	ld a,#ff
	ld (l0b74),a
	ret
.l50b1
.real_init_music
	call l50ff
;call l1abe
	defs 3,0
	ld de,l4f37
	add hl,de
.l50bb
	ld ix,l0ae6
	call l50cf
	ld ix,l0b06
	call l50cf
	ld ix,l0b26
	jr l50cf
.l50cf
	xor a
	ld (ix+#09),a
	ld (ix+#02),a
	ld (ix+#0a),a
	ld (ix+#00),a
	ld a,(hl)
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld (ix+#0c),#01
	ret
;
.l50eb
;
;call l1abe
	defs 3,0
	ld l,#00
	jp l545a
	call l50eb
.l50f6
	call l511b
	jr nz,l50f6
	ret
;call l1abe
	defs 3,0
.l50ff
	xor a
	ld (l0af2),a
	ld (l0b12),a
	ld (l0b32),a
	ld (l0b50),a
	ld a,#0f
	ld (l0b4c),a
	ld (l0b4f),a
	ld a,#38
	ld (l0b58),a
	jr l50ab
.l511b
	ld a,(l0af2)
	ld hl,l0b12
	or (hl)
	ld hl,l0b32
	or (hl)
	ret
;
.play_music
;
	ld a,(l0aea)
	cp #06
	jr nz,l5133
	ld a,#38
	ld (l0b58),a
.l5133
	ld ix,l0ae6
	ld iy,(l0aed)
	call l51de
	ld (l0aed),iy
	ld ix,l0b06
	ld iy,(l0b0d)
	call l51de
	ld (l0b0d),iy
	ld ix,l0b26
	ld iy,(l0b2d)
	call l51de
	ld (l0b2d),iy
	call l5387
	ld hl,(l0af7)
	ld (l0b51),hl
	ld hl,(l0b17)
	ld (l0b53),hl
	ld hl,(l0b37)
	ld (l0b55),hl
	ld a,(l0b01)
	call l519d
	ld (l0b59),a
	ld a,(l0b21)
	call l519d
	ld (l0b5a),a
	ld a,(l0b41)
	call l519d
	ld (l0b5b),a
	call l51a4
	ld hl,l0b49
	dec (hl)
	ret p
	ld a,(l0b48)
	ld (hl),a
	ret
.l519d
	ld hl,l0b4c
	sub (hl)
	ret nc
	xor a
	ret
.l51a4
	ld hl,l0b60
	ld a,#0f
.l51a9
	push af
	ld c,(hl)
	call l51b5
	dec hl
	pop af
	dec a
	jp p,l51a9
	ret
.l51b5
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
	ret
.l51d3
	xor a
	ld (ix+#0c),a
	ld (ix+#11),a
	ld (ix+#12),a
	ret
.l51de
	bit 0,(ix+#0c)
	jr z,l51d3
	ld a,(l0b49)
	and a
	jr nz,l51f3
	ld a,(ix+#09)
	and a
	jr z,l5212
	dec (ix+#09)
.l51f3
	ld a,(ix+#0b)
	and a
	ret z
	call l5317
	call l5285
	jp l52b5
.l5201
	and #1f
	ld l,a
	ld de,l4e55
	call l1b4b
	call l19fd
	bit 0,(ix+#0c)
	ret z
.l5212
	ld a,(iy+#00)
	inc iy
	bit 7,a
	jr z,l5201
	and #7f
	jr z,l522b
	cp #7f
	jr nz,l5228
	ld a,(ix+#0e)
	and #7f
.l5228
	add (ix+#0a)
.l522b
	ld (ix+#0b),a
	ld l,a
	ld de,l4e75
	call l1b4b
	ld (ix+#11),l
	ld (ix+#12),h
	ld a,(ix+#00)
	and a
	jr nz,l5246
	ld a,(iy+#00)
	inc iy
.l5246
	ld (ix+#09),a
	ld (ix+#10),#00
	ld l,(ix+#04)
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l4f7f
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ex de,hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	call l536a
	pop hl
	ld a,(hl)
	and a
	jr z,l526f
	ld (l0b58),a
.l526f
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	ld (ix+#1c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	ld (ix+#10),#ff
	jp l51f3
.l5285
	ld a,(ix+#0d)
	and a
	ret z
	ld l,a
	ld h,#00
	ld de,l504f
	add hl,de
	ld a,(hl)
	bit 7,a
	jr z,l52a0
	and #7f
	ld (ix+#0d),a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
.l52a0
	inc (ix+#0d)
	add (ix+#0b)
	ld l,a
	ld l,a
	ld de,l4e75
	call l1b4b
	ld (ix+#11),l
	ld (ix+#12),h
	ret
.l52b5
	ld a,(ix+#0f)
	cp #ff
	ret z
	cp #80
	jr z,l52c3
	dec (ix+#0f)
	ret
.l52c3
	ld a,(ix+#0b)
	add (ix+#1c)
	ld l,a
	ld de,l4e75
	call l1b4b
	push hl
	ld l,(ix+#0b)
	ld de,l4e75
	call l1b4b
	ex de,hl
	pop hl
	and a
	sbc hl,de
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	inc (ix+#10)
	bit 2,(ix+#10)
	jr z,l5309
	ld e,(ix+#11)
	ld d,(ix+#12)
	ex de,hl
	and a
	sbc hl,de
	ld (ix+#11),l
	ld (ix+#12),h
	ret
.l5309
	ld e,(ix+#11)
	ld d,(ix+#12)
	add hl,de
	ld (ix+#11),l
	ld (ix+#12),h
	ret
.l5317
	ld a,(ix+#16)
	and a
	jr z,l534b
	dec (ix+#17)
	ret nz
	ld a,(ix+#18)
	ld (ix+#17),a
	bit 7,(ix+#16)
	jr nz,l533c
	ld a,(ix+#1b)
	add (ix+#19)
	ld (ix+#1b),a
	cp (ix+#1a)
	ret c
	jr l535a
.l533c
	ld a,(ix+#1b)
	sub (ix+#19)
	ld (ix+#1b),a
	cp (ix+#1a)
	ret nz
	jr l535a
.l534b
	ld a,(ix+#17)
	or (ix+#19)
	ret z
	dec (ix+#19)
	ret nz
	dec (ix+#17)
	ret nz
.l535a
	ld a,(ix+#1a)
	ld (ix+#1b),a
	ld l,(ix+#14)
	ld h,(ix+#15)
	inc hl
	inc hl
	inc hl
	inc hl
.l536a
	ld (ix+#14),l
	ld (ix+#15),h
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	ld a,(hl)
	ld (ix+#17),a
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1a),a
	ret
.l5387
	ld a,(l0b4c)
	ld hl,l0b4f
	cp (hl)
	ret z
	ld hl,l0b4d
	dec (hl)
	ret p
	ld a,(l0b4e)
	ld (hl),a
	ld a,(l0b50)
	ld hl,l0b4c
	add (hl)
	ld (hl),a
	and #0f
	sub #0f
	jp z,l50ff
	ret
.l53a8
	ld e,(iy+#00)
	ld d,(iy+#01)
	inc iy
	inc iy
	ret
.l53b3
	push de
	pop iy
	ret
.l53b7
	ld (ix+#0c),#00
	ret
.l53bc
	ld l,(iy+#00)
	ld de,l4f5b
	call l1b4b
	push hl
	pop iy
	ret
.l53c9
	ld l,(iy+#00)
	inc iy
	push iy
	pop de
	ld (ix+#05),e
	ld (ix+#06),d
	ld de,l4f73
	call l1b4b
	push hl
	pop iy
	ret
.l53e1
	ld e,(ix+#05)
	ld d,(ix+#06)
	push de
	pop iy
	ret
.l53eb
	bit 0,(ix+#02)
	jr z,l5402
	ld a,(ix+#01)
	and a
	jr z,l5414
	dec (ix+#01)
	inc iy
	call l53a8
	jp l53b3
.l5402
	set 0,(ix+#02)
	ld a,(iy+#00)
	inc iy
	ld (ix+#01),a
	call l53a8
	jp l53b3
.l5414
	res 0,(ix+#02)
	ld a,(iy+#00)
	inc iy
	jp l53a8
.l5420
	ret
.l5421
	ret
.l5422
	ld a,(iy+#00)
	inc iy
	ld (ix+#04),a
	ret
.l542b
	ld a,(iy+#00)
	inc iy
	ld (ix+#00),a
	ret
.l5434
	ld a,(iy+#00)
	inc iy
	ld (l0b48),a
	ret
.l543d
	ld a,(iy+#00)
	inc iy
	ret
.l5443
	ld a,(iy+#00)
	inc iy
	ld (ix+#0a),a
	ret
.l544c
	ld a,(iy+#00)
	inc iy
	ld (ix+#0e),a
	ret
.l5455
	ld l,(iy+#00)
	inc iy
.l545a
	ld h,#00
	add hl,hl
	add hl,hl
	ld de,l5070
	add hl,de
	ld a,(hl)
	cp #ff
	jr z,l546a
	ld (l0b4c),a
.l546a
	inc hl
	ld a,(hl)
	ld (l0b4f),a
	inc hl
	ld a,(hl)
	ld (l0b50),a
	inc hl
	ld a,(hl)
	ld (l0b4d),a
	ld (l0b4e),a
	ret
.l5481 equ $ + 4
.l547d
	db #0b,#00,#0f,#01,#02,#00,#01,#03
.l5485
	db #09,#0a,#02,#01,#02,#03,#01,#04
.l548d
	db #09,#00,#02,#05,#09,#09,#02,#04
	db #09,#0a,#02,#02,#09,#09,#02,#05
	db #09,#0a,#02,#04,#09,#0b,#02,#02
	db #09,#0a,#02,#05,#09,#0b,#02,#04
	db #09,#00,#02,#02,#09,#0b,#02,#05
	db #09,#00,#02,#04,#09,#09,#02,#02
.l54c3 equ $ + 6
.l54bf equ $ + 2
	db #01,#05,#0b,#00,#0f,#01,#02,#00
.l54c9 equ $ + 4
.l54c7 equ $ + 2
	db #01,#00,#09,#0a,#02,#01,#01,#01
.l54d3 equ $ + 6
.l54cf equ $ + 2
.l54cd
	db #09,#0b,#02,#04,#01,#02,#0b,#00
	db #0f,#01,#09,#06,#a5,#0b,#ac,#05
	db #a9,#0b,#09,#05,#b5,#05,#09,#06
	db #ac,#0b,#a7,#0b,#b0,#05,#09,#05
	db #b3,#05,#09,#06,#a7,#0b,#ae,#05
	db #ab,#0b,#09,#05,#b3,#05,#09,#06
	db #ae,#0b,#a9,#0b,#a6,#05,#09,#05
	db #b5,#05,#09,#06,#a9,#0b,#b0,#05
	db #ad,#0b,#09,#05,#b5,#05,#09,#06
	db #b0,#0b,#ab,#0b,#a8,#05,#09,#05
	db #b7,#05,#0a,#2f,#09,#06,#aa,#00
.l5525
	db #0a,#0b,#09,#0a,#a5,#a9,#ac,#a7
	db #ac,#b0,#a7,#ab,#ae,#a6,#a9,#ae
	db #a9,#ad,#b0,#a8,#ab,#b0,#0a,#2f
.l553f equ $ + 2
	db #ae,#00,#0a,#05,#09,#0b,#b5,#b8
	db #b1,#b5,#b8,#b5,#bc,#b3,#b8,#bc
	db #b8,#b3,#b3,#b7,#ba,#b7,#b3,#ba
	db #b5,#ba,#b5,#b2,#ba,#b5,#bc,#b9
	db #b5,#bc,#b9,#b5,#b4,#b7,#bc,#b4
.l556b equ $ + 6
	db #b7,#bc,#0a,#2f,#bd,#00,#0b,#01
.l556f equ $ + 2
	db #0f,#02,#09,#06,#a5,#05,#b1,#0b
	db #aa,#05,#09,#05,#b6,#05,#09,#06
	db #ae,#0b,#a5,#05,#a9,#0b,#b5,#05
	db #a9,#05,#09,#05,#b5,#05,#09,#06
	db #a9,#05,#ae,#0b,#ac,#05,#b8,#05
	db #a9,#0b,#09,#05,#b5,#05,#09,#06
	db #ac,#0b,#ac,#05,#b0,#05,#bc,#0b
	db #a9,#05,#09,#05,#b5,#05,#09,#06
	db #b0,#05,#ac,#0b,#a7,#0b,#b3,#05
	db #a7,#05,#09,#05,#b3,#05,#09,#06
	db #ac,#0b,#a7,#05,#ae,#05,#ba,#0b
	db #a9,#05,#09,#05,#b5,#05,#09,#06
.l55d3 equ $ + 6
	db #ae,#0b,#ae,#05,#01,#06,#09,#0a
.l55d7 equ $ + 2
	db #0a,#05,#a5,#aa,#ae,#aa,#a5,#aa
	db #ae,#aa,#a9,#ae,#a9,#a5,#a9,#ae
	db #a9,#a5,#ac,#a9,#a5,#a9,#ac,#a9
	db #a5,#a9,#a9,#b0,#a9,#ac,#a9,#b0
	db #a9,#ac,#b0,#a7,#ac,#a7,#b0,#a7
	db #ac,#a7,#ae,#a9,#a5,#a9,#ae,#a9
.l5609 equ $ + 4
	db #a5,#a9,#01,#07,#09,#00,#0a,#07
.l560d
	db #b1,#b6,#ba,#b1,#ba,#b6,#b1,#b5
	db #ba,#b1,#ba,#b5,#b1,#b5,#b8,#b1
	db #b8,#b5,#bc,#b5,#b8,#bc,#b8,#b5
	db #bc,#b3,#b8,#bc,#b8,#b3,#b1,#b5
.l5633 equ $ + 6
	db #ba,#b1,#ba,#b5,#01,#08,#0b,#00
.l5637 equ $ + 2
	db #0f,#02,#09,#06,#a0,#0b,#9a,#05
	db #9d,#05,#9a,#0b,#09,#05,#b8,#05
	db #09,#06,#9d,#0b,#9a,#05,#a0,#05
	db #9a,#0b,#9d,#05,#09,#05,#b8,#05
	db #09,#06,#9d,#05,#09,#06,#9b,#05
	db #9f,#0b,#a2,#0b,#9f,#05,#09,#05
	db #ba,#05,#09,#06,#9b,#05,#9f,#0b
	db #9b,#0b,#9f,#05,#a2,#05,#09,#05
	db #ba,#05,#09,#06,#9b,#05,#09,#06
	db #9a,#05,#a0,#0b,#9a,#05,#9d,#0b
	db #09,#05,#b8,#05,#09,#06,#9a,#05
	db #9d,#05,#9a,#0b,#a0,#0b,#9d,#05
	db #09,#05,#b8,#05,#09,#06,#9f,#05
	db #09,#06,#9f,#05,#9b,#0b,#9f,#05
	db #a2,#0b,#09,#05,#ba,#05,#09,#06
	db #9f,#0b,#9b,#05,#9f,#0b,#9b,#05
	db #a2,#05,#09,#05,#ba,#05,#09,#06
.l56c3 equ $ + 6
.l56c1 equ $ + 4
	db #9b,#05,#01,#09,#09,#0a,#b2,#0b
	db #b8,#0b,#b2,#05,#b5,#0b,#b2,#05
	db #b5,#0b,#b8,#05,#b5,#05,#b8,#0b
	db #b2,#0b,#b7,#0b,#b3,#05,#ba,#0b
	db #b7,#0b,#ba,#05,#b3,#0b,#ba,#05
	db #b3,#0b,#ba,#05,#b3,#0b,#b2,#05
	db #b5,#0b,#b8,#0b,#b2,#05,#b5,#0b
	db #b8,#05,#b5,#05,#b8,#0b,#b2,#0b
	db #b5,#0b,#b3,#05,#ba,#0b,#b7,#0b
	db #b3,#05,#b7,#0b,#b3,#0b,#b7,#0b
	db #ba,#05,#b3,#0b,#ba,#05,#01,#0a
.l5719 equ $ + 4
.l5715
	db #09,#09,#0d,#f4,#c4,#05,#c1,#05
	db #be,#05,#c4,#05,#be,#05,#c4,#05
	db #c1,#05,#be,#05,#c1,#05,#c4,#0b
	db #c1,#05,#c4,#0b,#be,#05,#c4,#05
	db #c3,#05,#c6,#05,#bf,#05,#c3,#0b
	db #c6,#05,#bf,#05,#c3,#05,#c6,#0b
	db #c3,#05,#c6,#05,#bf,#05,#c3,#05
	db #c6,#05,#bf,#05,#be,#05,#c1,#0b
	db #be,#05,#c4,#05,#be,#05,#c4,#0b
	db #be,#0b,#c4,#0b,#c1,#05,#c4,#0b
	db #be,#05,#bf,#05,#c6,#0b,#bf,#05
	db #c3,#05,#bf,#05,#c3,#05,#c6,#05
	db #c3,#0b,#bf,#05,#c3,#05,#bf,#05
	db #c3,#05,#bf,#05,#c6,#05,#01,#0b
.l5785
	db #09,#06,#a2,#11,#a9,#05,#09,#05
	db #b5,#0b,#09,#06,#ae,#0b,#a9,#0b
	db #b5,#0b,#09,#05,#b5,#05,#09,#06
	db #ae,#05,#a9,#0b,#9e,#11,#ae,#05
	db #09,#05,#b6,#0b,#09,#06,#aa,#0b
	db #a5,#0b,#9e,#0b,#09,#05,#b6,#0b
	db #09,#06,#aa,#0b,#9b,#11,#aa,#05
	db #09,#05,#b6,#0b,#09,#06,#ae,#0b
	db #aa,#0b,#b6,#0b,#09,#05,#b6,#05
	db #09,#06,#a7,#0b,#aa,#05,#a0,#11
	db #ac,#05,#09,#05,#b8,#0b,#09,#06
	db #ac,#0b,#b0,#0b,#a0,#0b,#09,#05
.l57ec equ $ + 7
	db #b8,#0b,#09,#06,#ac,#0b,#03,#ba
	db #11,#b1,#05,#b5,#05,#b1,#05,#ba
	db #0b,#b5,#0b,#b1,#05,#b5,#0b,#ba
	db #05,#b1,#0b,#b1,#05,#ba,#11,#b1
	db #05,#ba,#0b,#b6,#0b,#b1,#0b,#b6
	db #0b,#b1,#05,#ba,#05,#b6,#05,#ba
	db #05,#b3,#05,#ba,#11,#b6,#0b,#b3
	db #05,#ba,#05,#b3,#0b,#b6,#0b,#b3
	db #05,#b6,#0b,#bc,#0b,#b3,#05,#b8
	db #0b,#bc,#11,#b3,#05,#b8,#05,#b3
	db #0b,#bc,#0b,#b3,#05,#b8,#05,#b5
	db #0b,#b1,#05,#ba,#05,#b5,#05,#b1
	db #0b,#ba,#0b,#b1,#05,#b5,#0b,#b1
	db #05,#ba,#11,#b1,#0b,#b6,#0b,#b1
	db #05,#b6,#05,#ba,#0b,#b6,#05,#ba
	db #05,#b1,#05,#ba,#11,#b6,#0b,#ba
	db #05,#b3,#0b,#b6,#0b,#b3,#05,#b3
	db #0b,#b6,#05,#b3,#05,#ba,#11,#b6
	db #0b,#b3,#05,#bc,#05,#b3,#0b,#bc
	db #0b,#b3,#05,#b8,#05,#b3,#05,#b8
	db #11,#bc,#0b,#b3,#0b,#b8,#05,#03
.l588d
	db #b5,#0b,#b1,#05,#ba,#05,#ba,#0b
	db #b5,#0b,#b1,#05,#ba,#05,#ba,#05
	db #b5,#05,#ba,#0b,#ba,#0b,#b6,#05
	db #ae,#05,#b1,#0b,#ba,#0b,#ae,#0b
	db #b1,#0b,#ba,#05,#ae,#05,#ba,#0b
	db #b1,#0b,#b6,#11,#b3,#0b,#b6,#05
	db #ba,#0b,#b6,#0b,#b3,#05,#b6,#05
	db #ba,#05,#b6,#05,#ba,#0b,#ac,#0b
	db #b3,#05,#ac,#05,#b0,#0b,#b8,#0b
	db #b0,#17,#b8,#05,#ac,#05,#b8,#0b
	db #ba,#0b,#b5,#17,#b1,#05,#ba,#05
	db #ba,#0b,#ba,#0b,#b1,#05,#ba,#05
	db #ba,#05,#b5,#05,#ba,#0b,#ae,#0b
	db #b6,#05,#ae,#05,#b1,#0b,#ba,#0b
	db #b1,#11,#b1,#05,#ba,#05,#ae,#05
	db #b3,#05,#ba,#0b,#b6,#17,#b3,#05
	db #b6,#05,#ba,#0b,#b3,#0b,#b3,#05
	db #b3,#05,#ba,#05,#b0,#05,#b8,#0b
	db #ac,#0b,#b3,#05,#ac,#05,#b0,#05
	db #ac,#05,#b8,#0b,#b0,#17,#b8,#05
	db #b1,#05,#ba,#05,#ba,#0b,#b5,#17
	db #ba,#05,#b5,#05,#ba,#0b,#ba,#0b
	db #b1,#05,#ba,#05,#b1,#0b,#ba,#0b
	db #ae,#0b,#b6,#05,#ae,#05,#ba,#05
	db #ae,#05,#ba,#0b,#b1,#17,#b6,#05
	db #b3,#05,#b6,#05,#ba,#0b,#b6,#11
	db #b3,#05,#ba,#05,#b6,#05,#ba,#0b
	db #b6,#0b,#b3,#05,#ac,#05,#b0,#0b
	db #b8,#0b,#ac,#0b,#b5,#05,#b0,#05
	db #b8,#05,#a9,#05,#b8,#0b,#b0,#11
.l597e equ $ + 1
	db #03,#b5,#0b,#b1,#05,#ba,#0b,#ba
	db #05,#ba,#0b,#ba,#0b,#b5,#0b,#b1
	db #05,#ba,#05,#ba,#0b,#ae,#0b,#b1
	db #0b,#ba,#05,#ae,#05,#ba,#0b,#b1
	db #0b,#b6,#05,#ae,#05,#b1,#0b,#ba
	db #0b,#b3,#0b,#b6,#05,#ae,#05,#b3
	db #0b,#ba,#0b,#ae,#0b,#b3,#0b,#ba
	db #05,#ae,#05,#ba,#0b,#b8,#0b,#b8
	db #05,#b0,#05,#b8,#0b,#b0,#0b,#b3
	db #0b,#b8,#0b,#b3,#05,#b8,#05,#b0
	db #0b,#b5,#0b,#b1,#05,#ba,#0b,#b5
	db #05,#ba,#0b,#b1,#0b,#b5,#05,#ae
	db #05,#b1,#0b,#ba,#0b,#ae,#0b,#b1
	db #0b,#ba,#05,#ae,#05,#ba,#0b,#ba
	db #0b,#b6,#05,#b1,#05,#ba,#0b,#b1
	db #0b,#b3,#0b,#b6,#0b,#b3,#05,#b3
	db #05,#ba,#0b,#ae,#0b,#b3,#0b,#ba
	db #05,#ae,#05,#ba,#0b,#b0,#0b,#b3
	db #05,#ac,#05,#b0,#0b,#b8,#0b,#b3
	db #0b,#b8,#0b,#b3,#05,#b8,#05,#b0
.l5a1f equ $ + 2
	db #0b,#03,#0a,#05,#c1,#bd,#c1,#c6
	db #bd,#c1,#c6,#bd,#bd,#c1,#c6,#bd
	db #c6,#c1,#bd,#c6,#c2,#c6,#c2,#bd
	db #c6,#c2,#c6,#bd,#c2,#c6,#c2,#bd
	db #c6,#c2,#bd,#c6,#bf,#c2,#bf,#c6
	db #bf,#c2,#c6,#bf,#c2,#bf,#c2,#bf
	db #c6,#c2,#bf,#c6,#bf,#c4,#c8,#bf
	db #c4,#bc,#bf,#c4,#bc,#c4,#c8,#bf
	db #c4,#bc,#c4,#bf,#bd,#c1,#bd,#c6
	db #bd,#c1,#c6,#bd,#c1,#bd,#c1,#c6
	db #bd,#c1,#c6,#bd,#c2,#c6,#bd,#c2
	db #c6,#bd,#c2,#c6,#c2,#c6,#c2,#bd
	db #c6,#c2,#bd,#c6,#c2,#bf,#c2,#bf
	db #c6,#c2,#bf,#c6,#bf,#c2,#c6,#bf
	db #c6,#c2,#bf,#c6,#bc,#c4,#c8,#bf
	db #c4,#bc,#c4,#bf,#bf,#c4,#bf,#bc
	db #c4,#bf,#c4,#bc,#bd,#c1,#c6,#bd
	db #c6,#c1,#bd,#c6,#c1,#bd,#c1,#c6
	db #bd,#c1,#c6,#bd,#c2,#c6,#c2,#bd
	db #c6,#c2,#bd,#c6,#c2,#c6,#c2,#bd
	db #c6,#c2,#c6,#bd,#c2,#bf,#c2,#bf
	db #c6,#c2,#bf,#c6,#bf,#c2,#bf,#c6
	db #bf,#c2,#c6,#bf,#bc,#c4,#c8,#c1
	db #c4,#bc,#c4,#c1,#c1,#c4,#c8,#c1
.l5ae4 equ $ + 7
	db #c4,#bc,#c1,#c4,#0a,#00,#03,#0a
	db #05,#bd,#c1,#bd,#c1,#c6,#bd,#c1
	db #c6,#c1,#c6,#bd,#c6,#c1,#bd,#c6
	db #bd,#bd,#c2,#c6,#c2,#bd,#c6,#c2
	db #c6,#c6,#c2,#bd,#c6,#c2,#bd,#c6
	db #c2,#bf,#bf,#c2,#bf,#c6,#bf,#c2
	db #c6,#bf,#c2,#bf,#c6,#c2,#bf,#c6
	db #c2,#c4,#bf,#c4,#c8,#bf,#c4,#bc
	db #bf,#c4,#c8,#bf,#c4,#bc,#c4,#bf
	db #bc,#bd,#bd,#c1,#bd,#c6,#bd,#c1
	db #c6,#bd,#c1,#c6,#bd,#c1,#c6,#bd
	db #c1,#c6,#c2,#c6,#bd,#c2,#c6,#bd
	db #c2,#c6,#c2,#bd,#c6,#c2,#bd,#c6
	db #c2,#c6,#c2,#bf,#c2,#bf,#c6,#c2
	db #bf,#c2,#c6,#bf,#c6,#c2,#bf,#c6
	db #bf,#bf,#bc,#c4,#c8,#bf,#c4,#bc
	db #c4,#c4,#bf,#bc,#c4,#bf,#c4,#bc
	db #bf,#c6,#bd,#c1,#c6,#bd,#c6,#c1
	db #bd,#bd,#c1,#c6,#bd,#c1,#c6,#bd
	db #c1,#c6,#c2,#c6,#c2,#bd,#c6,#c2
	db #bd,#c6,#c2,#bd,#c6,#c2,#c6,#bd
	db #c2,#c6,#c2,#bf,#c2,#bf,#c6,#c2
	db #bf,#c2,#bf,#c6,#bf,#c2,#c6,#bf
	db #bf,#c1,#bc,#c4,#c8,#c1,#c4,#bc
	db #c4,#c4,#c8,#c1,#c4,#bc,#c1,#c4
.l5ba9 equ $ + 4
	db #c1,#0a,#00,#03,#0b,#00,#0f,#01
.l5bb2 equ $ + 5
	db #09,#0a,#ac,#05,#00,#09,#0a,#b8
.l5bbc equ $ + 7
.l5bb7 equ $ + 2
	db #05,#00,#09,#0a,#b0,#05,#00,#0b
	db #00,#0f,#01,#09,#06,#a7,#01,#00
.l5bca equ $ + 5
.l5bc5
	db #09,#00,#a9,#01,#00,#09,#09,#aa
.l5bcf equ $ + 2
	db #01,#00,#0b,#00,#0f,#01,#09,#06
.l5bd8 equ $ + 3
	db #a9,#02,#00,#09,#0a,#a9,#02,#00
.l5be2 equ $ + 5
.l5bdd
	db #09,#0a,#b5,#02,#00,#0b,#00,#0f
.l5beb equ $ + 6
	db #01,#09,#09,#b8,#0b,#00,#09,#0a
.l5bf0 equ $ + 3
	db #bd,#0b,#00,#09,#00,#b1,#0b,#00
.l5bf5
	db #0b,#00,#0f,#01,#09,#06,#ac,#02
.l5c04 equ $ + 7
	db #9d,#01,#9d,#01,#9d,#01,#00,#09
	db #00,#ac,#02,#9d,#01,#9d,#01,#9d
.l5c0f equ $ + 2
	db #01,#00,#09,#00,#b8,#02,#a9,#01
.l5c1a equ $ + 5
	db #a9,#01,#a9,#01,#00,#0b,#00,#0f
.l5c23 equ $ + 6
	db #01,#09,#06,#c1,#0b,#00,#09,#00
.l5c28 equ $ + 3
	db #c2,#0b,#00,#09,#00,#c3,#0b,#00
.l5c2d
	db #0b,#00,#0f,#01,#09,#06,#bd,#0b
.l5c3b equ $ + 6
.l5c36 equ $ + 1
	db #00,#09,#05,#99,#0b,#00,#09,#05
.l5c40 equ $ + 3
	db #a8,#0b,#00,#0b,#00,#0f,#01,#09
.l5c4b equ $ + 6
	db #06,#b1,#05,#b8,#0b,#00,#09,#0a
.l5c52 equ $ + 5
	db #b3,#05,#b9,#0b,#00,#09,#00,#c0
	db #05,#ba,#0b,#00
.l0aed equ $ + 7
.l0aea equ $ + 4
.l0ae6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0af2 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0af7 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b01 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b0d equ $ + 7
.l0b06
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b12 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b17 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b21 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b2d equ $ + 7
.l0b26
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b32 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b37 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b41 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b4d equ $ + 7
.l0b4c equ $ + 6
.l0b49 equ $ + 3
.l0b48 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#0f,#00
.l0b55 equ $ + 7
.l0b53 equ $ + 5
.l0b51 equ $ + 3
.l0b50 equ $ + 2
.l0b4f equ $ + 1
.l0b4e
	db #00,#0f,#00,#00,#00,#00,#00,#00
.l0b5b equ $ + 5
.l0b5a equ $ + 4
.l0b59 equ $ + 3
.l0b58 equ $ + 2
	db #00,#01,#38,#00,#00,#00,#00,#00
.l0b60 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b75 equ $ + 7
.l0b74 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#ff,#00
.l19fd
	jp (hl)
.l1b4b
	ld h,#00
	add hl,hl
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,e
	ld h,d
	ret
.l1b55
	ld h,#00
	add hl,de
	ld a,(hl)
	and a
	ret
;
.init_music	; added by Megachur
;
	or a
	jr nz,init_music_6_3
	ld hl,6*0
	jr init_music_a
init_music_6_3
	dec a
	jr nz,init_music_6_4
	ld hl,6*3
	jr init_music_a
init_music_6_4
	dec a
	jr nz,init_music_6_5
	ld hl,6*4
	jr init_music_a
init_music_6_5
	ld hl,6*5
init_music_a
	 jp real_init_music	; a = 6*0,6*3,6*4,6*5
;
; #1a0a
; call #5127	; play
;
; #1637
; call #50ff
; call #1f93
; ld hl,#0000
; call #50b1
;
.music_info
	db "Cavemania (1991)(Atlantis Software)(Total Kaos)",0
	db "",0

	read "music_end.asm"
