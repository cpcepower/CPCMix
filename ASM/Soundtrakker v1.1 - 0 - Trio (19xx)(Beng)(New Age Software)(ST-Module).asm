; Music of Soundtrakker v1.1 - 0 - Trio (19xx)(Beng)(New Age Software)(ST-Module)
; Ripped by Megachur the 05/08/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOUNDT0T.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #1000

	read "music_header.asm"

	jp l100b
	jp l1093
	jp l1077
	db #66,#04
;
.init_music
.l100b
;
	ld b,#03
	ld ix,l13da
	ld iy,l1306
	ld de,#001c
.l1018
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l1018
	ld a,#06
	ld (l10bb),a
	ld a,d
	ld (l10cf),a
	inc a
	ld (l10b6),a
	ld a,#38
	ld (l10c0),a
	ld a,#ff
	ld (l1302),a
	ld (l1303),a
	ld (l1304),a
	ld (l1305),a
	ld a,#0c
	ld c,d
	call l12e4
	ld a,#0d
	ld c,d
	jp l12e4
;
.stop_music
.l1077
;
	ld a,#07
	ld c,#3f
	call l12e4
	ld a,#08
	ld c,#00
	call l12e4
	ld a,#09
	ld c,#00
	call l12e4
	ld a,#0a
	ld c,#00
	jp l12e4
;
.play_music
.l1093
;
	ld hl,l10b6
	dec (hl)
	ld ix,l13da
	ld bc,l13e8
	call l1149
	ld ix,l13f6
	ld bc,l1404
	call l1149
	ld ix,l1412
	ld bc,l1420
	call l1149
.l10b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l10bf
.l10bb equ $ + 1
	ld a,#00
	ld (l10b6),a
.l10c0 equ $ + 1
.l10bf
	ld a,#00
	ld hl,l1303
	cp (hl)
	jr z,l10ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l12e4
.l10cf equ $ + 1
.l10ce
	ld a,#00
	ld hl,l1302
	cp (hl)
	jr z,l10dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l12e4
.l10de equ $ + 1
.l10dd
	ld a,#00
	ld hl,l1304
	cp (hl)
	jr z,l10ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l12e4
.l10ed equ $ + 1
.l10ec
	ld a,#00
	ld hl,l1305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l12e4
.l10fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l11fa
.l1109
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l12e4
.l1123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l1138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l1138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l115c
.l1149
	ld a,(l10b6)
	or a
	jp nz,l11fa
	dec (ix+#06)
	jp nz,l11fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l115c
	ld a,(hl)
	or a
	jr z,l10fa
	cp #fe
	jr z,l1109
	cp #ff
	jr z,l1123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l130c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l1198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l1198
	and #7f
	ld (ix+#06),a
	jr l11eb
.l1198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l11ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l11ac
	add a
	add a
	add a
	ld e,a
	ld hl,l1442
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l11eb
	cp #f0
	jp z,l12a0
	cp #d0
	jp z,l12bc
	cp #b0
	jp z,l12c4
	cp #80
	jp nc,l12cc
	cp #10
	jr nz,l11eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l11eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l11fa
	ld a,(ix+#17)
	or a
	jr nz,l120e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l120e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l1239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l130c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l1239
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l12e4
	ld c,h
	ld a,(ix+#03)
	call l12e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l1277
	and #0f
	sub (ix+#0a)
	jr nc,l126d
	xor a
.l126d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l12e4
.l1277
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l1294
	ld b,a
	ld a,c
	ld (l10cf),a
	ld a,b
	sub #40
.l1294
	ld (l129b),a
	ld a,(l10c0)
.l129b equ $ + 1
	bit 0,a
	ld (l10c0),a
	ret
.l12a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l14c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l11eb
.l12bc
	inc hl
	ld a,(hl)
	ld (l10bb),a
	jp l11eb
.l12c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l11eb
.l12cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l10ed),a
	inc hl
	ld a,(hl)
	ld (l10de),a
	jp l11eb
.l12e4
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
.l1305 equ $ + 3
.l1304 equ $ + 2
.l1303 equ $ + 1
.l1302
	db #ff,#ff,#ff,#ff
.l1306
	dw l17c2,l17ef,l181c
.l130c
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
	dw #000f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l13da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l13e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l13f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l1404 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1412 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l1420 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l1442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#14,#22,#15
	db #42,#15,#00,#00,#dc,#0e,#21,#5d
	db #30,#2f,#4e,#4f,#62,#15,#a2,#15
	db #c2,#15,#00,#00,#e2,#15,#22,#16
	db #42,#16,#00,#00,#62,#16,#a2,#16
	db #c2,#16,#00,#00,#e2,#15,#e2,#16
	db #02,#17,#00,#00,#e4,#4a,#2b,#15
	db #dc,#fb,#b0,#18,#62,#16,#22,#17
	db #42,#15,#18,#07,#42,#17,#82,#17
	db #42,#15,#18,#07,#e5,#e4,#b8,#5c
	db #94,#6b,#b8,#1d,#94,#6b,#b8,#5c
	db #94,#6b,#b8,#1d,#b7,#5c,#da,#4d
	db #b7,#5c,#dc,#0e,#b9,#5c,#ba,#5c
	db #b9,#5c,#dc,#0e,#7e,#65,#b6,#5c
	db #b7,#5c,#dc,#0e,#b9,#5c,#ba,#5c
	db #b9,#5c,#dc,#0e,#b7,#5c,#b6,#5c
.l14c2 equ $ + 4
	db #db,#4d,#fe,#ff,#db,#4d,#dc,#4d
	db #dd,#4d,#de,#4d,#dd,#4d,#dc,#4d
	db #a2,#17,#da,#4d,#db,#4d,#dc,#4d
	db #dd,#4d,#de,#4d,#dd,#4d,#dc,#4d
	db #db,#4d,#da,#4d,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#40,#00
	db #80,#00,#c0,#00,#00,#01,#40,#01
	db #80,#01,#c0,#01,#00,#02,#40,#02
	db #80,#02,#c0,#02,#00,#03,#40,#03
	db #80,#03,#c0,#03,#00,#04,#40,#04
	db #80,#04,#c0,#04,#00,#05,#40,#05
	db #80,#05,#c0,#05,#00,#06,#40,#06
	db #80,#06,#c0,#06,#00,#07,#40,#07
	db #80,#07,#c0,#07,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#03,#00,#00,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0a,#0a,#09,#09
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#04,#06,#07,#09
	db #0c,#11,#17,#1d,#15,#10,#0c,#09
	db #06,#05,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0d,#0c,#0c
	db #0b,#0a,#09,#08,#08,#07,#07,#06
	db #05,#04,#04,#04,#04,#03,#02,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#06,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#07,#06,#06
	db #06,#05,#05,#05,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0e,#0e,#0e,#0d
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#07
	db #05,#07,#09,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
.l17c2 equ $ + 4
	db #00,#0c,#00,#0c,#00,#49,#18,#00
	db #72,#18,#00,#bf,#18,#00,#bf,#18
	db #00,#0c,#19,#00,#0c,#19,#00,#bf
	db #18,#00,#bf,#18,#00,#bf,#18,#00
	db #bf,#18,#00,#bf,#18,#00,#bf,#18
	db #00,#bf,#18,#00,#bf,#18,#80,#c5
.l17ef equ $ + 1
	db #17,#00,#4b,#19,#00,#4b,#19,#00
	db #b3,#19,#00,#b3,#19,#00,#34,#1a
	db #00,#34,#1a,#00,#4f,#1a,#00,#69
	db #1a,#00,#83,#1a,#00,#83,#1a,#00
	db #4f,#1a,#00,#69,#1a,#00,#c2,#1a
.l181c equ $ + 6
	db #00,#c2,#1a,#80,#f2,#17,#00,#e0
	db #1a,#00,#e3,#1a,#00,#14,#1b,#00
	db #14,#1b,#00,#45,#1b,#00,#45,#1b
	db #00,#6c,#1b,#00,#7d,#1b,#00,#14
	db #1b,#00,#14,#1b,#00,#6c,#1b,#00
	db #7d,#1b,#00,#8e,#1b,#00,#8e,#1b
	db #80,#1f,#18,#00,#20,#2e,#04,#02
	db #3a,#02,#03,#2e,#02,#02,#2e,#02
	db #05,#2e,#02,#02,#3a,#02,#03,#2e
	db #02,#02,#2e,#84,#3a,#02,#03,#2e
	db #02,#02,#2e,#02,#05,#2e,#02,#02
	db #3a,#04,#03,#ff,#2e,#04,#02,#3a
	db #02,#03,#2e,#02,#02,#2e,#02,#05
	db #2e,#02,#02,#3a,#02,#03,#2e,#02
	db #02,#2e,#84,#3a,#02,#03,#2e,#02
	db #02,#2e,#02,#05,#2e,#02,#02,#3a
	db #04,#03,#2e,#04,#02,#3a,#02,#03
	db #2e,#02,#02,#2e,#02,#05,#2e,#02
	db #02,#3a,#02,#03,#2e,#02,#02,#2e
	db #84,#3a,#02,#03,#2e,#02,#02,#2e
	db #02,#05,#2e,#02,#02,#3a,#04,#03
	db #ff,#2e,#04,#02,#3a,#02,#03,#2e
	db #02,#02,#2e,#02,#05,#2e,#02,#02
	db #3a,#02,#03,#2e,#02,#02,#2e,#84
	db #3a,#02,#03,#2e,#02,#02,#2e,#02
	db #05,#2e,#02,#02,#3a,#04,#03,#2e
	db #04,#02,#3a,#02,#03,#2e,#02,#02
	db #2e,#02,#05,#2e,#02,#02,#3a,#02
	db #03,#2e,#02,#02,#2e,#84,#3a,#02
	db #03,#2e,#02,#02,#2e,#02,#05,#2e
	db #02,#02,#3a,#04,#03,#ff,#44,#02
	db #18,#41,#02,#08,#41,#82,#bf,#08
	db #41,#83,#3f,#82,#41,#82,#44,#82
	db #43,#82,#44,#82,#43,#82,#3f,#82
	db #3c,#83,#3f,#83,#41,#82,#44,#82
	db #41,#82,#41,#82,#bf,#08,#41,#83
	db #3f,#82,#41,#82,#44,#82,#47,#82
	db #46,#82,#44,#82,#46,#82,#44,#83
	db #3f,#83,#41,#82,#ff,#2e,#02,#05
	db #5f,#02,#04,#2e,#02,#05,#5f,#02
	db #04,#5f,#82,#df,#04,#df,#04,#2e
	db #02,#05,#df,#04,#df,#04,#ae,#05
	db #df,#04,#df,#04,#df,#04,#ae,#05
	db #df,#04,#df,#04,#df,#04,#df,#04
	db #df,#04,#df,#04,#df,#04,#2e,#04
	db #05,#2e,#82,#5f,#02,#04,#2e,#02
	db #05,#5f,#02,#04,#5f,#82,#df,#04
	db #df,#04,#2e,#02,#05,#df,#04,#df
	db #04,#ae,#05,#df,#04,#df,#04,#df
	db #04,#ae,#05,#df,#04,#df,#04,#df
	db #04,#df,#04,#df,#04,#df,#04,#df
	db #04,#2e,#04,#05,#ff,#c1,#08,#c3
	db #08,#c4,#08,#c3,#08,#c1,#08,#c3
	db #08,#c4,#08,#c1,#08,#c3,#08,#c4
	db #08,#c3,#08,#c1,#08,#c3,#08,#c4
	db #08,#c1,#08,#c4,#08,#c1,#08,#c3
	db #08,#c4,#08,#c1,#08,#c3,#08,#c4
	db #08,#c3,#08,#c1,#08,#c4,#08,#c3
	db #08,#c1,#08,#c3,#08,#c4,#08,#c6
	db #08,#c4,#08,#c3,#08,#c4,#08,#c3
	db #08,#c1,#08,#c3,#08,#c4,#08,#c1
	db #08,#c3,#08,#c4,#08,#c6,#08,#c4
	db #08,#c6,#08,#c8,#08,#c6,#08,#c4
	db #08,#c3,#08,#c1,#08,#c3,#08,#bf
	db #08,#c1,#08,#c3,#08,#c4,#08,#c3
	db #08,#c1,#08,#c3,#08,#bc,#08,#c0
	db #08,#c1,#08,#c3,#08,#c4,#08,#c3
	db #08,#c1,#08,#c3,#08,#ff,#41,#06
	db #17,#3c,#06,#07,#41,#84,#3f,#84
	db #3f,#82,#3c,#86,#3f,#84,#3e,#84
	db #3e,#82,#3c,#84,#3a,#84,#3c,#92
	db #ff,#41,#06,#08,#3c,#86,#41,#84
	db #3f,#84,#3f,#82,#3c,#86,#3f,#84
	db #3e,#84,#3e,#82,#3c,#84,#3a,#84
	db #3c,#92,#ff,#41,#06,#08,#3c,#86
	db #41,#84,#3f,#84,#3f,#82,#3c,#86
	db #3f,#84,#3e,#84,#3e,#82,#3c,#84
	db #3a,#84,#41,#92,#ff,#44,#02,#18
	db #41,#02,#08,#41,#82,#bf,#08,#41
	db #83,#3f,#82,#41,#82,#44,#82,#43
	db #82,#44,#82,#43,#82,#3f,#82,#3c
	db #83,#3f,#83,#41,#82,#44,#82,#41
	db #82,#41,#82,#bf,#08,#41,#83,#3f
	db #82,#41,#82,#44,#82,#47,#82,#46
	db #82,#44,#82,#46,#82,#44,#83,#3f
	db #83,#41,#82,#ff,#45,#0e,#f8,#06
	db #45,#02,#08,#43,#8e,#43,#82,#46
	db #8c,#48,#82,#46,#82,#45,#84,#43
	db #84,#41,#82,#43,#82,#41,#82,#43
	db #82,#ff,#fe,#40,#ff,#29,#0e,#c0
	db #14,#29,#82,#27,#06,#c0,#16,#27
	db #82,#24,#03,#c0,#1b,#27,#03,#c0
	db #16,#28,#02,#c0,#15,#29,#0e,#c0
	db #14,#29,#82,#27,#06,#c0,#16,#27
	db #82,#24,#03,#c0,#1b,#27,#03,#c0
	db #16,#28,#02,#c0,#15,#ff,#29,#0e
	db #c0,#14,#29,#82,#27,#06,#c0,#16
	db #27,#82,#24,#03,#c0,#1b,#27,#03
	db #c0,#16,#28,#02,#c0,#15,#29,#0e
	db #c0,#14,#29,#82,#27,#06,#c0,#16
	db #27,#82,#24,#03,#c0,#1b,#27,#03
	db #c0,#16,#28,#02,#c0,#15,#ff,#35
	db #06,#18,#30,#06,#08,#35,#84,#33
	db #82,#35,#82,#37,#82,#33,#84,#32
	db #82,#33,#84,#b2,#08,#ae,#08,#b0
	db #08,#32,#83,#33,#82,#32,#82,#30
	db #82,#2e,#82,#35,#92,#ff,#29,#10
	db #c8,#14,#24,#10,#c8,#1b,#22,#10
	db #c8,#1e,#29,#10,#c8,#14,#ff,#29
	db #10,#c8,#14,#24,#10,#c8,#1b,#22
	db #10,#c8,#1e,#29,#10,#c8,#14,#ff
	db #29,#10,#c8,#14,#24,#10,#c8,#1b
	db #22,#10,#c8,#1e,#24,#10,#c8,#1b
	db #ff
;
.music_info
	db "Soundtrakker v1.1 - 0 - Trio (19xx)(Beng)(New Age Software)",0
	db "ST-Module",0

	read "music_end.asm"