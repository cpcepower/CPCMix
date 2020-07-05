; Music of Assault Course (1990)(Players)(Sonic Graffiti)()
; Ripped by Megachur the 01/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ASSAULTC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #0dac

	read "music_header.asm"

	jp l1386	; init music
	jp l1469	; play music
;
.l0db4 equ $ + 2
.music_end equ $ + 1
;
.l0db3 equ $ + 1
.l0db2
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#ff,#00,#00,#00,#01
	db #00,#0c,#00,#0c,#00,#00,#18,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #00,#00,#0f,#00,#00,#fc,#01,#14
	db #64,#03,#04,#00,#fc,#f8,#f4,#e8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#b8,#00,#00,#00,#00
	db #00,#0f,#0f,#00,#fe,#0d,#00,#00
	db #ff,#ff,#00,#00,#03,#06,#00,#fc
	db #f4,#f4,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#e8,#00
	db #00,#00,#00,#00,#0f,#08,#00,#ff
	db #0e,#02,#01,#ff,#ff,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #08,#00,#ff,#0c,#02,#00,#ff,#ff
	db #00,#00,#00,#01,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#08,#00,#ff,#0c,#02
	db #01,#ff,#ff,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0f,#06,#00
	db #ff,#0c,#14,#0c,#ff,#ff,#00,#00
	db #00,#03,#05,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#06,#00,#ff,#0c,#14,#08,#ff
	db #ff,#00,#00,#00,#03,#03,#07,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#0f,#06,#00,#ff,#0c
	db #14,#08,#ff,#ff,#00,#00,#00,#03
	db #04,#07,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#06
	db #00,#ff,#0c,#05,#02,#ff,#ff,#00
	db #00,#00,#03,#05,#09,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0f,#06,#00,#ff,#0c,#05,#02
	db #ff,#ff,#00,#00,#00,#03,#04,#07
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#06,#00,#ff
	db #0c,#05,#02,#ff,#ff,#00,#00,#00
	db #03,#03,#07,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#04,#0f
	db #01,#01,#ff,#0a,#14,#02,#ff,#ff
	db #00,#00,#00,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#47,#00,#00,#00
	db #00
.l0f7b
	dw l0f9f,l0fb6,l0fbb,l0fd4
	dw l0fdb,l0fde,l0fe1,l0fee
	dw l0ff5
.l0f8d
	dw l0ffc,l1017,l10e0,l113d
	dw l1160,l11ad,l120e,l123d
	dw l1248
.l0f9f
	db #fc,#00,#fb,#0b,#01,#0e,#fa,#fb
	db #01,#02,#03,#02,#fa,#05,#01,#02
.l0fb6 equ $ + 7
	db #fa,#fb,#01,#02,#fa,#05,#fe,#00
.l0fbb equ $ + 4
	db #02,#02,#14,#fe,#00,#04,#03,#02
	db #04,#02,#03,#02,#05,#02,#04,#02
	db #fa,#fb,#04,#04,#fa,#05,#05,#02
.l0fd4 equ $ + 5
	db #fa,#fb,#05,#02,#fe,#fc,#00,#fb
.l0fde equ $ + 7
.l0fdb equ $ + 4
	db #0b,#06,#02,#fe,#02,#01,#fe,#03
.l0fe1 equ $ + 2
	db #01,#fe,#fc,#00,#fb,#0b,#07,#01
.l0fee equ $ + 7
	db #06,#01,#08,#01,#06,#01,#ff,#07
.l0ff5 equ $ + 6
	db #01,#02,#01,#00,#0a,#fe,#07,#01
.l0ffc equ $ + 5
	db #04,#01,#00,#0a,#fe,#61,#00,#19
	db #10,#60,#10,#60,#10,#60,#10,#60
	db #10,#60,#10,#60,#10,#60,#10,#60
	db #10,#60,#10,#60,#10,#60,#10,#fe
.l1017
	db #61,#04,#25,#03,#61,#05,#25,#03
	db #25,#03,#61,#04,#25,#03,#61,#05
	db #25,#03,#25,#03,#61,#04,#25,#03
	db #25,#03,#25,#03,#61,#05,#25,#03
	db #25,#03,#61,#04,#25,#03,#61,#05
	db #25,#03,#25,#03,#61,#04,#25,#03
	db #25,#03,#25,#03,#61,#05,#25,#03
	db #25,#03,#61,#04,#25,#03,#61,#05
	db #25,#03,#25,#03,#61,#04,#25,#03
	db #25,#03,#25,#03,#61,#05,#25,#03
	db #25,#03,#61,#04,#25,#03,#61,#05
	db #25,#03,#25,#03,#61,#04,#25,#03
	db #25,#03,#2a,#03,#61,#05,#2a,#03
	db #2a,#03,#61,#04,#2a,#03,#61,#05
	db #2a,#03,#2a,#03,#61,#04,#2a,#03
	db #2a,#03,#2a,#03,#61,#05,#2a,#03
	db #2a,#03,#61,#04,#2a,#03,#61,#05
	db #2a,#03,#2a,#03,#61,#04,#20,#03
	db #61,#05,#20,#03,#61,#04,#23,#03
	db #61,#05,#23,#03,#23,#03,#61,#04
	db #23,#03,#61,#05,#23,#03,#23,#03
	db #61,#04,#23,#03,#23,#03,#23,#03
	db #61,#05,#23,#03,#23,#03,#61,#04
	db #23,#03,#61,#05,#23,#03,#23,#03
	db #61,#04,#24,#03,#61,#05,#24,#03
.l10e0 equ $ + 1
	db #fe,#61,#01,#31,#06,#31,#06,#61
	db #02,#31,#09,#61,#01,#31,#06,#31
	db #03,#31,#06,#61,#02,#31,#0c,#61
	db #01,#31,#06,#31,#06,#61,#02,#31
	db #03,#61,#01,#31,#06,#31,#06,#3d
	db #06,#3a,#03,#38,#06,#33,#06,#61
	db #01,#31,#06,#31,#06,#61,#02,#31
	db #09,#61,#01,#31,#06,#31,#03,#31
	db #06,#61,#02,#31,#0c,#61,#01,#31
	db #06,#3d,#09,#3a,#09,#31,#03,#35
	db #03,#31,#06,#61,#02,#31,#03,#31
.l113d equ $ + 6
	db #03,#31,#03,#31,#03,#fe,#61,#06
	db #44,#10,#60,#10,#60,#10,#60,#10
	db #60,#10,#60,#10,#61,#07,#44,#10
	db #60,#10,#60,#10,#61,#06,#47,#10
	db #60,#08,#61,#08,#47,#10,#60,#08
.l1160 equ $ + 1
	db #fe,#61,#05,#44,#06,#42,#09,#3d
	db #03,#3f,#03,#40,#09,#42,#06,#40
	db #06,#3d,#06,#44,#06,#42,#06,#47
	db #03,#44,#03,#42,#03,#44,#03,#61
	db #00,#19,#10,#60,#08,#61,#05,#49
	db #06,#47,#06,#44,#06,#47,#06,#49
	db #03,#47,#06,#44,#06,#42,#06,#44
	db #06,#44,#03,#40,#03,#3d,#03,#3d
	db #06,#44,#06,#40,#03,#3d,#03,#3d
.l11ad equ $ + 6
	db #06,#3b,#06,#3d,#06,#fe,#61,#09
	db #44,#06,#44,#06,#44,#03,#44,#06
	db #44,#06,#44,#03,#44,#06,#44,#06
	db #61,#0a,#44,#06,#61,#09,#44,#06
	db #44,#06,#44,#03,#44,#06,#44,#06
	db #44,#03,#44,#06,#44,#06,#61,#0a
	db #44,#06,#61,#09,#40,#06,#40,#06
	db #40,#03,#40,#06,#40,#06,#40,#03
	db #40,#03,#40,#03,#40,#06,#61,#0b
	db #44,#06,#61,#09,#42,#06,#42,#06
	db #42,#03,#42,#06,#42,#06,#42,#03
	db #42,#03,#42,#03,#42,#03,#42,#03
.l120e equ $ + 7
	db #42,#03,#61,#0a,#42,#03,#fe,#61
	db #03,#25,#09,#31,#03,#61,#00,#25
	db #06,#61,#05,#23,#03,#24,#03,#25
	db #06,#31,#06,#28,#06,#2a,#06,#25
	db #09,#31,#03,#61,#00,#25,#06,#61
	db #05,#24,#03,#23,#03,#2a,#06,#28
.l123d equ $ + 6
	db #06,#31,#06,#25,#06,#fe,#61,#0c
	db #49,#12,#60,#12,#60,#06,#61,#01
.l124d equ $ + 6
.l124c equ $ + 5
.l124b equ $ + 4
.l1248 equ $ + 1
	db #fe,#fd,#11,#fe,#00,#00,#00,#00
	db #00,#00,#00,#00,#30,#30,#30,#30
.l125c equ $ + 5
.l125b equ $ + 4
.l125a equ $ + 3
.l1259 equ $ + 2
.l1258 equ $ + 1
	db #00,#0f,#00,#00,#00,#00,#00
.l125e
	ld a,(l125a)
	and a
	ld b,a
	ret z
	ld a,(l125c)
	cp #80
	jp z,l1287
	ld a,(l125b)
	dec a
	ld (l125b),a
	ret nz
	ld a,(l125c)
	ld (l125b),a
	ld a,(l1258)
	add b
	bit 4,a
	jp nz,l1296
	ld (l1258),a
	ret
.l1287
	ld a,b
	cp #01
	ld a,#0f
	jp z,l1290
	xor a
.l1290
	ld (l1258),a
	jp l1296
.l1296
	xor a
	ld (l125a),a
	ld a,(l1259)
	and a
	jp nz,l1435
	ret
.l12a2
	ld a,#00
	ld (l1258),a
	ld a,#01
.l12a9
	ld (l125a),a
	inc hl
	ld a,(hl)
	ld (l125c),a
	ld (l125b),a
	inc hl
	jp l17e9
.l12b8
	ld a,#0f
	ld (l1258),a
	ld a,#ff
	jp l12a9
.l12c2
	ld a,h
	push af
	ld c,l
	cp #07
	jp nz,l12ce
	res 7,c
	res 6,c
.l12ce
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	pop af
	out (c),a
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	out (c),c
	xor a
	ld b,#f6
	out (c),a
	ret
.l12f0 equ $ + 7
.l12ef equ $ + 6
.l12ea equ $ + 1
.l12e9
	db #00,#01,#00,#00,#00,#00,#00,#f8
.l12f6 equ $ + 5
.l12f4 equ $ + 3
.l12f3 equ $ + 2
.l12f2 equ $ + 1
.l12f1
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
	db #0c,#05,#00,#08,#01,#ff,#00,#00
	db #00,#01,#08,#00,#00,#04,#00,#00
	db #00,#00,#00,#f7,#14,#0a,#01,#00
	db #00,#08,#04,#9f,#0f,#01,#9f,#0f
	db #00,#0a,#00,#02,#00,#fe,#00,#00
.l1325 equ $ + 4
.l1323 equ $ + 2
.l1321
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #01,#01,#02,#01,#ff,#00,#00,#02
	db #03,#09,#00,#00,#01,#00,#00,#00
	db #00,#00,#ef,#ff,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1350 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1354 equ $ + 3
.l1352 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#0f,#0a
	db #01,#02,#02,#ff,#00,#00,#04,#05
	db #0a,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#df,#ff,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l137f equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
;
.init_music
.l1386
;
	ld a,#0f
	ld (l1258),a
	xor a
	ld (l125a),a
	ld (l1259),a
	call l143d
	ld a,(l124c)
	cp #ff
	jp nz,l13a1
	inc a
	ld (l124c),a
.l13a1
	ld a,#01
	ld (l12f6),a
	ld (l1325),a
	ld (l1354),a
	xor a
	ld (l124b),a
	push ix
	ld ix,l12f4
	ld a,(l124c)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,l0f7b
	add hl,de
	ld (l13d2),hl
	inc hl
	inc hl
	ld (l13dc),hl
	inc hl
	inc hl
	ld (l13e6),hl
.l13d2 equ $ + 1
	ld hl,(l0f9f)
	call l140b
	ld ix,l1323
.l13dc equ $ + 1
	ld hl,(l0fb6)
	call l140b
	ld ix,l1352
.l13e6 equ $ + 1
	ld hl,(l0fbb)
	call l140b
	ld a,#01
	ld (l0db3),a
	ld h,#07
	ld l,#f8
	call l12c2
	ld a,(l124c)
	cp #01
	pop ix
	ret
.l13ff		; test player
	halt
	call l1469
	ld a,(l0db3)
	and a
	jp nz,l13ff
	ret
.l140b
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call l1906
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ret
.l1435
	call l143d
	xor a
	ld (l0db3),a
	ret
.l143d
	ld h,#07
	ld l,#ff
	call l12c2
	ld hl,l12e9
	ld de,l12ea
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#f8
	ld (l12f0),a
.l1456
	ld b,#0b
	ld h,#00
	ld de,l12e9
.l145d
	ld a,(de)
	ld l,a
	push bc
	call l12c2
	pop bc
	inc h
	inc de
	djnz l145d
	ret
;
.play_music
.l1469
;
	ld a,(l0db2)
	and a
	jp z,l149c
	ld b,a
	xor a
	ld (l0db2),a
	ld a,b
	cp #ff
	jp z,l1435
	cp #fe
	jp nz,l1495
	ld a,#01
	ld (l1259),a
	ld a,#ff
	ld (l125a),a
	ld a,#0a
	ld (l125c),a
	ld (l125b),a
	jp l149c
.l1495
	dec a
	ld (l124c),a
	jp l1386
.l149c
	call l125e
	ld a,(l0db3)
	and a
	jr z,l14fe
	push ix
	ld ix,l12f4
	bit 7,(ix+#0c)
	call z,l14ff
	ld ix,l1323
	bit 7,(ix+#0c)
	call z,l14ff
	ld ix,l1352
	bit 7,(ix+#0c)
	call z,l14ff
	ld a,(l1258)
	cpl
	and #0f
	ld b,a
	ld a,(l124b)
	and a
	ld a,#10
	jp nz,l14e0
	ld a,(l12f1)
	sub b
	jp nc,l14e0
	xor a
.l14e0
	ld (l12f1),a
	ld a,(l12f2)
	sub b
	jp nc,l14eb
	xor a
.l14eb
	ld (l12f2),a
	ld a,(l12f3)
	sub b
	jp nc,l14f6
	xor a
.l14f6
	ld (l12f3),a
	call l1456
	pop ix
.l14fe
	ret
.l14ff
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l16a6
.l1508
	ld a,(ix+#0c)
	and #03
	jp z,l15c8
	cp #01
	jp z,l1522
	cp #02
	jp z,l1562
	cp #03
	jp z,l15ac
	jp l15f9
.l1522
	ld a,(ix+#0b)
	and a
	jr z,l152e
	dec (ix+#0b)
	jp l15f9
.l152e
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,l154f
	jr nc,l1549
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp l15f9
.l1549
	ld a,(ix+#05)
	ld (ix+#04),a
.l154f
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp l15f9
.l1562
	ld a,(ix+#25)
	and a
	jr z,l156e
	dec (ix+#25)
	jp l15f9
.l156e
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,l158d
	ld b,(ix+#26)
	cp b
	jr z,l159a
	jr c,l1594
	ld a,(ix+#09)
	ld (ix+#25),a
	jr l15f9
.l158d
	ld (ix+#04),#00
	jp l159a
.l1594
	ld a,(ix+#26)
	ld (ix+#04),a
.l159a
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr l15f9
.l15ac
	ld a,(ix+#27)
	and a
	jr z,l15b7
	dec (ix+#27)
	jr l15f9
.l15b7
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp l15f9
.l15c8
	ld a,(ix+#29)
	and a
	jr z,l15d3
	dec (ix+#29)
	jr l15f9
.l15d3
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,l15e9
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr l15f9
.l15e9
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr l15f9
.l15f9
	ld a,(ix+#04)
	ld hl,l12e9
	ld d,#00
	ld e,(ix+#0f)
	add hl,de
	ld (hl),a
	ld h,(ix+#14)
	ld l,(ix+#13)
	ld d,#00
	ld e,(ix+#10)
	add hl,de
	ld a,(ix+#03)
	push af
	ld a,(hl)
	add (ix+#03)
	ld (ix+#03),a
	call l173d
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,l1635
	ld a,(ix+#11)
	ld (ix+#10),a
.l1635
	ld a,(ix+#1a)
	cp #ff
	jr z,l1676
	and a
	jr z,l1644
	dec (ix+#1a)
	jr nz,l1676
.l1644
	dec (ix+#1f)
	jr nz,l1657
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#2e)
	xor #01
	ld (ix+#2e),a
.l1657
	ld b,#00
	ld c,(ix+#1b)
	ld h,(ix+#1d)
	ld l,(ix+#1c)
	bit 0,(ix+#2e)
	jr z,l166b
	add hl,bc
	jr l166d
.l166b
	sbc hl,bc
.l166d
	ld (ix+#1d),h
	ld (ix+#1c),l
	call l1691
.l1676
	ld a,(ix+#2b)
	call l1684
	and a
	call nz,l1691
	ld a,(ix+#02)
	ret
.l1684
	ld l,a
	ld h,#00
	bit 7,a
	ret z
	ld d,h
	ld e,l
	sbc hl,de
	sbc hl,de
	ret
.l1691
	ld b,h
	ld c,l
	ld hl,l12e9
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l16a6
	ld l,(ix+#00)
	ld h,(ix+#01)
.l16ac
	ld a,(hl)
	cp #60
	jp z,l173b
	cp #61
	jp z,l17f2
	cp #62
	jp z,l17d0
	cp #64
	jp z,l178c
	cp #65
	jp z,l17c2
	cp #fa
	jp z,l1795
	cp #fc
	jp z,l12a2
	cp #fd
	jp z,l12b8
	cp #fe
	jp z,l17d4
	cp #ff
	jp z,l17ba
	ld b,a
	ld a,(ix+#0c)
	and #fc
	or #01
	ld (ix+#0c),a
	ld (ix+#10),#00
	ld (ix+#04),#00
	ld a,b
	sub (ix+#2d)
	ld (ix+#03),a
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1e)
	srl a
	ld (ix+#1f),a
	ld (ix+#1d),#00
	ld (ix+#1c),#00
.l170f
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(l124d)
	add hl,de
	ld a,(hl)
	pop hl
	inc hl
	ld b,(ix+#2c)
	add b
	ld (ix+#2c),#00
	ld (ix+#02),a
	ld a,(ix+#07)
	ld (ix+#0b),a
	ld (ix+#00),l
	ld (ix+#01),h
	call l173d
	jp l1508
.l173b
	jr l170f
.l173d
	ld a,(ix+#17)
	and a
	call nz,l1781
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,l1965
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l12e9
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(l124b)
	and a
	ret z
	ld a,(ix+#0f)
	cp #08
	ret nz
	ld de,#00c0
	add hl,de
	ex de,hl
	ld h,#0b
	ld a,(de)
	ld l,a
	call l12c2
	inc de
	inc h
	ld a,(de)
	ld l,a
	call l12c2
	ret
.l1781
	ld a,(ix+#03)
	neg
	and #1f
	ld (l12ef),a
	ret
.l178c
	inc hl
	ld a,(hl)
	inc hl
	ld (l12ef),a
	jp l17e9
.l1795
	inc hl
	ld (ix+#2e),#01
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	bit 7,a
	jp z,l17ab
	neg
	ld (ix+#2e),#00
.l17ab
	ld (ix+#1b),a
	ld (ix+#1e),#ff
	ld (ix+#1f),#ff
	inc hl
	jp l17e9
.l17ba
	inc hl
	ld (ix+#04),#00
	jp l17e9
.l17c2
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call l12c2
	pop hl
	jp l17e9
.l17d0
	inc hl
	jp l17e9
.l17d4
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,l17e3
	jp l18f8
	jp l16ac
.l17e3
	ld l,(ix+#15)
	ld h,(ix+#16)
.l17e9
	ld (ix+#01),h
	ld (ix+#00),l
	jp l16ac
.l17f2
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	add a
	ld h,#00
	ld l,a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l0db4
	add hl,de
	ld d,#00
	add b
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	ld (ix+#2a),a
	inc hl
	ld a,(hl)
	ld (ix+#28),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld (ix+#14),h
	ld (ix+#13),l
	ld (ix+#10),#00
	ld de,#0010
	add hl,de
	ld a,(hl)
	ld (ix+#17),#00
	and a
	jp z,l187d
	ld b,a
	or #c0
	ld (l12f0),a
	ld a,b
	bit 7,a
	jp z,l187d
	cpl
	and #38
	ld (ix+#17),a
.l187d
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,l1899
	ld a,(hl)
	ld (l124b),a
	and a
	jp z,l1899
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call l12c2
	pop hl
.l1899
	pop hl
	jp l16ac
.l189d
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,#1ab5
	add hl,de
	ld (l124d),hl
	pop hl
	jp l190c
.l18b2
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2c),a
	jp l190c
.l18bb
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2b),a
	jp l190c
.l18c4
	inc hl
	ld a,(hl)
	inc hl
	ld (l1321),a
	ld (l1350),a
	ld (l137f),a
	jp l190c
.l18d3
	inc hl
	ld b,(hl)
	inc hl
	ld a,(ix+#2d)
	add b
	ld (ix+#2d),a
	jp l190c
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,l1508
	call l1435
	jp l1508
.l18f8
	call l1906
	jp l16a6
.l18fe
	pop bc
	jp l1435
.l1902
	pop bc
	jp l1386
.l1906
	ld l,(ix+#20)
	ld h,(ix+#21)
.l190c
	ld a,(hl)
	cp #f8
	jp z,l18b2
	cp #f9
	jp z,l18bb
	cp #fa
	jp z,l18d3
	cp #fb
	jp z,l18c4
	cp #fc
	jp z,l189d
	cp #fd
	jp z,l1902
	cp #fe
	jr z,l1959
	cp #ff
	jr z,l18fe
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l0f8d
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#15),e
	ld (ix+#16),d
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ret
.l1959
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr l190c
.l1965 equ $ + 4
	db #00,#00,#00,#00,#00,#00
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04d4
	dw #0470,#0431,#03f4,#03dc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #6a,#00,#64,#00,#5e,#00,#5a,#00
	db #54,#00,#4f,#00,#4a,#00,#47,#00
	db #43,#00,#3f,#00,#3b,#00,#38,#00
	db #35,#00,#32,#00,#2f,#00,#2d,#00
	db #2a,#00,#28,#00,#25,#00,#23,#00
	db #21,#00,#20,#00,#1e,#00,#1c,#00
	db #1b,#00,#19,#00,#18,#00,#16,#00
	db #15,#00,#14,#00,#13,#00,#12,#00
	db #11,#00,#10,#00,#0f,#00,#0e,#00
	db #0d,#00,#0c,#00,#0b,#00,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#04,#06,#08,#0a,#0c,#0e,#10
	db #12,#14,#16,#18,#1a,#1c,#1e,#20
	db #22,#24,#26,#28,#2a,#2c,#2e,#30
	db #32,#34,#36,#38,#3a,#3c,#3e,#40
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#cb,#ff,#af,#fb,#ef,#bf,#be
	db #fe,#ff,#bb,#eb,#aa,#eb,#fe,#00
	db #00,#00,#0c,#cf,#ff,#ef,#ea,#ef
	db #af,#ab,#ef,#be,#ef,#ab,#be,#00
	db #00,#00,#01,#15,#df,#ff,#ef,#fb
	db #ff,#be,#bb,#fe,#fb,#a9,#56,#00
	db #00,#00
;
.music_info
	db "Assault Course (1990)(Players)(Sonic Graffiti)",0
	db "",0

	read "music_end.asm"
