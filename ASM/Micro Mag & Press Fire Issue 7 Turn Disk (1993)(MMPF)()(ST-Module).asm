; Music of Micro Mag & Press Fire Issue 7 Turn Disk (1993)(MMPF)()(ST-Module)
; Ripped by Megachur the 08/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MMPFI7TD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
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
	ld a,#01
	or a
	jr nz,l10bf
.l10bb equ $ + 1
	ld a,#06
	ld (l10b6),a
.l10c0 equ $ + 1
.l10bf
	ld a,#30
	ld hl,l1303
	cp (hl)
	jr z,l10ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l12e4
.l10cf equ $ + 1
.l10ce
	ld a,#04
	ld hl,l1302
	cp (hl)
	jr z,l10dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l12e4
.l10de equ $ + 1
.l10dd
	ld a,#18
	ld hl,l1304
	cp (hl)
	jr z,l10ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l12e4
.l10ed equ $ + 1
.l10ec
	ld a,#8c
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
	set 5,a
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
	db #04,#30,#18,#8c
.l1306
	dw l16c2,l16dd,l16f8
.l130c
	dw #0eee,#0e18,#0d06,#ff8e
	dw #0bda,#0b01,#0a8f,#09f7
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
	db #00,#00,#00,#00,#4d,#17,#00,#01
	db #08,#06,#01,#3c,#00,#00,#00,#df
.l13e8 equ $ + 2
	db #c5,#16,#e2,#15,#22,#16,#42,#16
	db #00,#00,#06,#1a,#77,#00,#00,#00
.l13f6
	db #2e,#1a,#02,#03,#09,#08,#08,#37
.l1404 equ $ + 6
	db #00,#00,#00,#e7,#e0,#16,#62,#16
	db #a2,#16,#42,#15,#18,#07,#1c,#03
.l1412 equ $ + 4
	db #9f,#00,#00,#00,#12,#1b,#04,#05
	db #0a,#08,#04,#1c,#00,#10,#00,#ef
.l1420 equ $ + 2
	db #fb,#16,#62,#16,#a2,#16,#42,#15
	db #18,#07,#1c,#03,#f6,#02,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l1442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#14,#22,#15
	db #42,#15,#00,#00,#62,#15,#a2,#15
	db #c2,#15,#00,#00,#25,#62,#21,#c3
	db #fc,#10,#00,#ff,#db,#0e,#fd,#a0
	db #4c,#6d,#23,#56,#ff,#0f,#ec,#0e
	db #e5,#8c,#23,#4e,#da,#0e,#a6,#0f
	db #74,#0d,#50,#30,#e2,#15,#22,#16
	db #42,#16,#00,#00,#c8,#0d,#7c,#3f
	db #e4,#e4,#4d,#4f,#62,#16,#a2,#16
	db #42,#15,#18,#07,#e5,#e4,#b8,#1d
	db #94,#2c,#b8,#1d,#94,#2c,#b8,#1d
	db #94,#2c,#b8,#1d,#b8,#1d,#dc,#0e
	db #b8,#1d,#c2,#16,#be,#25,#de,#25
	db #fe,#25,#42,#17,#b8,#1d,#b8,#1d
	db #b8,#1d,#dc,#0e,#b8,#1d,#b8,#1d
	db #b8,#1d,#dc,#0e,#b8,#1d,#b8,#1d
.l14c2 equ $ + 4
	db #dc,#0e,#ff,#ff,#da,#0e,#db,#0e
	db #dc,#0e,#dd,#0e,#de,#0e,#dd,#0e
	db #dc,#0e,#db,#0e,#da,#0e,#db,#0e
	db #dc,#0e,#dd,#0e,#de,#0e,#dd,#0e
	db #dc,#0e,#db,#0e,#ff,#ff,#fe,#ff
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
	db #00,#00,#00,#00,#00,#00,#80,#00
	db #40,#01,#a0,#01,#40,#02,#e8,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#38,#00,#60,#00
	db #b0,#00,#18,#01,#48,#01,#80,#01
	db #c8,#01,#10,#02,#58,#02,#b0,#02
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0c,#0b,#09,#07,#06,#03,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#05
	db #04,#04,#03,#02,#01,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0e,#0d,#0c,#0a
	db #08,#0a,#0c,#0e,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0c
.l16c2 equ $ + 4
	db #0c,#0c,#0c,#0c,#00,#13,#17,#00
	db #94,#17,#00,#15,#18,#00,#96,#18
	db #00,#17,#19,#00,#98,#19,#00,#15
.l16dd equ $ + 7
	db #18,#00,#96,#18,#80,#c2,#16,#00
	db #19,#1a,#00,#43,#1a,#00,#71,#1a
	db #00,#8e,#1a,#00,#aa,#1a,#00,#de
	db #1a,#00,#71,#1a,#00,#8e,#1a,#80
.l16f8 equ $ + 2
	db #dd,#16,#00,#0a,#1b,#00,#1d,#1b
	db #00,#30,#1b,#00,#41,#1b,#00,#52
	db #1b,#00,#67,#1b,#00,#30,#1b,#00
	db #41,#1b,#80,#f8,#16,#ba,#01,#a9
	db #00,#ba,#01,#a9,#00,#c6,#06,#a9
	db #00,#ba,#01,#c6,#06,#ba,#01,#c6
	db #06,#ba,#01,#a9,#00,#c6,#06,#a9
	db #00,#a9,#00,#a9,#00,#ba,#01,#a6
	db #00,#ba,#01,#a6,#00,#c6,#06,#a6
	db #00,#ba,#01,#c6,#06,#ba,#01,#c6
	db #06,#ba,#01,#a6,#00,#c6,#06,#a6
	db #00,#a6,#00,#a6,#00,#ba,#01,#a4
	db #00,#ba,#01,#a4,#00,#c6,#06,#a4
	db #00,#ba,#01,#c6,#06,#ba,#01,#c6
	db #06,#ba,#01,#a4,#00,#c6,#06,#a4
	db #00,#a4,#00,#a4,#00,#ba,#01,#a2
	db #00,#ba,#01,#a2,#00,#c6,#06,#a2
	db #00,#ba,#01,#c6,#06,#ba,#01,#c6
	db #06,#ba,#01,#a9,#00,#c6,#06,#a9
	db #00,#c6,#06,#c6,#06,#ff,#ba,#01
	db #a9,#00,#ba,#01,#a9,#00,#c6,#06
	db #a9,#00,#ba,#01,#c6,#06,#ba,#01
	db #c6,#06,#ba,#01,#a9,#00,#c6,#06
	db #a9,#00,#a9,#00,#a9,#00,#ba,#01
	db #a6,#00,#ba,#01,#a6,#00,#c6,#06
	db #a6,#00,#ba,#01,#c6,#06,#ba,#01
	db #c6,#06,#ba,#01,#a6,#00,#c6,#06
	db #a6,#00,#a6,#00,#a6,#00,#ba,#01
	db #a4,#00,#ba,#01,#a4,#00,#c6,#06
	db #a4,#00,#ba,#01,#c6,#06,#ba,#01
	db #c6,#06,#ba,#01,#a4,#00,#c6,#06
	db #a4,#00,#a4,#00,#a4,#00,#ba,#01
	db #a2,#00,#ba,#01,#a2,#00,#c6,#06
	db #a2,#00,#ba,#01,#c6,#06,#ba,#01
	db #c6,#06,#ba,#01,#a9,#00,#c6,#06
	db #a9,#00,#c6,#06,#c6,#06,#ff,#ba
	db #01,#a9,#00,#ba,#01,#a9,#00,#c6
	db #06,#a9,#00,#ba,#01,#c6,#06,#ba
	db #01,#c6,#06,#ba,#01,#a9,#00,#c6
	db #06,#a9,#00,#a9,#00,#a9,#00,#ba
	db #01,#a4,#00,#ba,#01,#a4,#00,#c6
	db #06,#a4,#00,#ba,#01,#c6,#06,#ba
	db #01,#c6,#06,#ba,#01,#a4,#00,#c6
	db #06,#a4,#00,#a4,#00,#a4,#00,#ba
	db #01,#a6,#00,#ba,#01,#a6,#00,#c6
	db #06,#a6,#00,#ba,#01,#c6,#06,#ba
	db #01,#c6,#06,#ba,#01,#a6,#00,#c6
	db #06,#a6,#00,#a6,#00,#a6,#00,#ba
	db #01,#a2,#00,#ba,#01,#a2,#00,#c6
	db #06,#a2,#00,#ba,#01,#c6,#06,#ba
	db #01,#c6,#06,#ba,#01,#a2,#00,#c6
	db #06,#a2,#00,#c6,#06,#c6,#06,#ff
	db #ba,#01,#a9,#00,#ba,#01,#a9,#00
	db #c6,#06,#a9,#00,#ba,#01,#c6,#06
	db #ba,#01,#c6,#06,#ba,#01,#a9,#00
	db #c6,#06,#a9,#00,#a9,#00,#a9,#00
	db #ba,#01,#a4,#00,#ba,#01,#a4,#00
	db #c6,#06,#a4,#00,#ba,#01,#c6,#06
	db #ba,#01,#c6,#06,#ba,#01,#a4,#00
	db #c6,#06,#a4,#00,#a4,#00,#a4,#00
	db #ba,#01,#a2,#00,#ba,#01,#a2,#00
	db #c6,#06,#a2,#00,#ba,#01,#c6,#06
	db #ba,#01,#c6,#06,#ba,#01,#a2,#00
	db #c6,#06,#a2,#00,#a2,#00,#a2,#00
	db #ba,#01,#a9,#00,#ba,#01,#a9,#00
	db #c6,#06,#a9,#00,#ba,#01,#c6,#06
	db #ba,#01,#c6,#06,#ba,#01,#a9,#00
	db #c6,#06,#a9,#00,#c6,#06,#c6,#06
	db #ff,#ba,#01,#a9,#00,#cb,#06,#a9
	db #00,#ba,#01,#a9,#00,#cb,#06,#a9
	db #00,#ba,#01,#a4,#00,#cb,#06,#cb
	db #06,#ba,#01,#a4,#00,#cb,#06,#a4
	db #00,#ba,#01,#a9,#00,#cb,#06,#a9
	db #00,#ba,#01,#a9,#00,#cb,#06,#a9
	db #00,#ba,#01,#a9,#00,#cb,#06,#cb
	db #06,#ba,#01,#a9,#00,#cb,#06,#a9
	db #00,#ba,#01,#a2,#00,#cb,#06,#a2
	db #00,#ba,#01,#a2,#00,#cb,#06,#a2
	db #00,#ba,#01,#a9,#00,#cb,#06,#cb
	db #06,#ba,#01,#a9,#00,#cb,#06,#a9
	db #00,#ba,#01,#a4,#00,#cb,#06,#a4
	db #00,#ba,#01,#a4,#00,#cb,#06,#a4
	db #00,#ba,#01,#a4,#00,#cb,#06,#a4
	db #00,#cb,#06,#a4,#00,#cb,#06,#a4
	db #00,#ff,#ba,#01,#a6,#00,#ca,#06
	db #a6,#00,#ba,#01,#a6,#00,#ca,#06
	db #a6,#00,#ba,#01,#a4,#00,#ca,#06
	db #ca,#06,#ba,#01,#a4,#00,#ca,#06
	db #a4,#00,#ba,#01,#a2,#00,#ca,#06
	db #a2,#00,#ba,#01,#a2,#00,#ca,#06
	db #a2,#00,#ba,#01,#a9,#00,#ca,#06
	db #ca,#06,#ba,#01,#a9,#00,#ca,#06
	db #a9,#00,#ba,#01,#a4,#00,#ca,#06
	db #a4,#00,#ba,#01,#a4,#00,#ca,#06
	db #a4,#00,#ba,#01,#a4,#00,#ca,#06
	db #a4,#00,#ba,#01,#a4,#00,#ca,#06
	db #a4,#00,#ba,#01,#a4,#00,#ca,#06
	db #a4,#00,#ba,#01,#a4,#00,#ca,#06
	db #a4,#00,#c3,#01,#c3,#01,#bf,#01
	db #bf,#01,#be,#01,#be,#01,#bc,#01
	db #bc,#01,#ff,#00,#04,#3c,#02,#08
	db #3c,#82,#3e,#83,#3c,#85,#3e,#82
	db #3c,#82,#3e,#82,#c1,#08,#41,#8d
	db #43,#82,#43,#82,#45,#83,#43,#85
	db #3e,#82,#3e,#82,#3e,#82,#bc,#08
	db #3e,#82,#41,#87,#ff,#00,#04,#3c
	db #02,#08,#3c,#82,#3e,#83,#3c,#85
	db #3e,#82,#41,#82,#41,#82,#c5,#08
	db #45,#8d,#43,#82,#43,#82,#45,#83
	db #43,#85,#3e,#82,#41,#82,#41,#82
	db #c3,#08,#41,#85,#41,#82,#c3,#08
	db #c5,#08,#ff,#00,#0c,#c5,#08,#c3
	db #08,#c1,#08,#43,#8d,#45,#82,#c3
	db #08,#41,#8d,#45,#82,#c8,#08,#4a
	db #8d,#4a,#82,#c6,#08,#c8,#08,#ff
	db #00,#02,#45,#0a,#08,#c5,#08,#c3
	db #08,#c1,#08,#43,#83,#45,#8a,#45
	db #82,#c3,#08,#41,#8d,#41,#82,#c3
	db #08,#41,#91,#ff,#00,#02,#41,#02
	db #08,#41,#82,#41,#82,#40,#82,#40
	db #82,#41,#82,#43,#82,#45,#82,#45
	db #82,#45,#82,#c3,#08,#41,#89,#46
	db #82,#46,#82,#46,#82,#c6,#08,#46
	db #83,#45,#82,#43,#82,#c1,#08,#43
	db #85,#43,#82,#c5,#08,#43,#89,#ff
	db #45,#02,#08,#45,#82,#45,#82,#45
	db #82,#43,#82,#43,#82,#43,#82,#43
	db #82,#41,#84,#41,#82,#c3,#08,#41
	db #85,#41,#82,#c1,#08,#43,#8d,#43
	db #82,#c5,#08,#46,#8d,#41,#82,#c3
	db #08,#c5,#08,#ff,#29,#10,#c8,#14
	db #26,#10,#c8,#18,#24,#10,#c8,#1b
	db #22,#08,#c8,#14,#29,#88,#ff,#29
	db #10,#c8,#14,#26,#10,#c8,#18,#24
	db #10,#c8,#1b,#22,#08,#c8,#14,#29
	db #88,#ff,#29,#10,#c8,#14,#24,#10
	db #c8,#1b,#26,#10,#c8,#18,#22,#10
	db #c8,#14,#ff,#29,#10,#c8,#14,#24
	db #10,#c8,#1b,#22,#10,#c8,#1e,#29
	db #10,#c8,#14,#ff,#29,#08,#c8,#14
	db #24,#08,#c8,#1b,#29,#10,#c8,#14
	db #22,#88,#29,#88,#24,#10,#c8,#1b
	db #ff,#26,#08,#c8,#18,#24,#08,#c8
	db #1b,#22,#08,#c8,#14,#29,#88,#24
	db #10,#c8,#1b,#24,#90,#ff
;
.music_info
	db "Micro Mag & Press Fire Issue 7 Turn Disk (1993)(MMPF)()",0
	db "ST-Module",0

	read "music_end.asm"
