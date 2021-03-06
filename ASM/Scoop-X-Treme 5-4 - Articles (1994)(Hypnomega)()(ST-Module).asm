; Music of Scoop-X-Treme 5-4 - Articles (1994)(Hypnomega)()(ST-Module)
; Ripped by Megachur the 28/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SCOXT54A.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2019
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
	dw l1742,l176f,l179c
.l130c
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #0f,#00
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
	db #42,#15,#00,#00,#dc,#0e,#dc,#0e
	db #dc,#0e,#ff,#ff,#62,#15,#a2,#15
	db #42,#15,#10,#10,#db,#0e,#dc,#0e
	db #dc,#0e,#ff,#ff,#db,#0e,#dc,#0e
	db #dc,#0e,#ff,#ff,#db,#0e,#dc,#0e
	db #dc,#0e,#ff,#ff,#c2,#15,#02,#16
	db #22,#16,#00,#00,#e2,#14,#42,#16
	db #42,#15,#18,#07,#62,#16,#a2,#16
	db #42,#15,#18,#07,#e2,#14,#c2,#16
	db #42,#15,#0b,#15,#dc,#0e,#dc,#0e
	db #dc,#0e,#00,#00,#dc,#0e,#dc,#0e
	db #dc,#0e,#00,#00,#dc,#0e,#dc,#0e
	db #dc,#0e,#00,#00,#dc,#0e,#dc,#0e
	db #dc,#0e,#00,#00,#dc,#0e,#dc,#0e
	db #dc,#0e,#00,#00,#dc,#0e,#dc,#0e
.l14c2 equ $ + 4
	db #dc,#0e,#00,#00,#dc,#0e,#e2,#16
	db #02,#17,#22,#17,#dc,#0e,#dc,#0e
	db #dc,#0e,#dc,#0e,#dc,#0e,#dc,#0e
	db #dc,#0e,#dc,#0e,#dc,#0e,#dc,#0e
	db #dc,#0e,#dc,#0e,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#07,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0d,#0c,#0b
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#38,#00,#60,#00
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
	db #09,#09,#09,#09,#06,#06,#06,#07
	db #07,#07,#08,#08,#08,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
.l1742 equ $ + 4
	db #04,#07,#00,#04,#00,#c9,#17,#00
	db #e1,#17,#00,#c9,#17,#00,#e1,#17
	db #00,#f9,#17,#00,#0d,#18,#00,#f9
	db #17,#00,#0d,#18,#00,#c9,#17,#00
	db #e1,#17,#00,#c9,#17,#00,#e1,#17
	db #00,#25,#18,#00,#a6,#18,#80,#42
.l176f equ $ + 1
	db #17,#00,#27,#19,#00,#79,#19,#00
	db #27,#19,#00,#79,#19,#00,#27,#19
	db #00,#79,#19,#00,#27,#19,#00,#79
	db #19,#00,#27,#19,#00,#79,#19,#00
	db #27,#19,#00,#79,#19,#00,#27,#19
.l179c equ $ + 6
	db #00,#79,#19,#80,#6f,#17,#00,#cb
	db #19,#00,#d4,#19,#00,#cb,#19,#00
	db #d4,#19,#00,#db,#19,#00,#e4,#19
	db #00,#db,#19,#00,#e4,#19,#00,#cb
	db #19,#00,#d4,#19,#00,#cb,#19,#00
	db #d4,#19,#00,#eb,#19,#00,#f4,#19
	db #80,#9c,#17,#42,#08,#08,#41,#88
	db #3f,#84,#41,#84,#42,#84,#44,#84
	db #46,#96,#46,#82,#41,#83,#42,#83
	db #44,#82,#ff,#44,#08,#08,#41,#88
	db #3d,#8c,#3f,#82,#41,#82,#42,#86
	db #41,#86,#3e,#84,#3a,#86,#3e,#86
	db #41,#84,#ff,#46,#18,#07,#44,#82
	db #42,#82,#44,#82,#45,#82,#46,#98
	db #46,#83,#41,#83,#3d,#82,#ff,#44
	db #18,#07,#44,#82,#41,#82,#3d,#82
	db #41,#82,#46,#86,#47,#86,#45,#86
	db #46,#86,#44,#84,#46,#84,#ff,#c2
	db #02,#c1,#02,#bf,#02,#c1,#02,#c2
	db #02,#c1,#02,#bf,#02,#c1,#02,#c2
	db #02,#c1,#02,#bf,#02,#c1,#02,#c2
	db #02,#c1,#02,#bf,#02,#c1,#02,#c2
	db #02,#c1,#02,#bf,#02,#c1,#02,#c2
	db #02,#c1,#02,#bf,#02,#c1,#02,#c2
	db #02,#c1,#02,#bf,#02,#c1,#02,#c2
	db #02,#c4,#02,#c2,#02,#c1,#02,#c1
	db #02,#be,#02,#ba,#02,#be,#02,#c1
	db #02,#be,#02,#ba,#02,#be,#02,#c1
	db #02,#be,#02,#ba,#02,#be,#02,#c1
	db #02,#be,#02,#ba,#02,#be,#02,#c1
	db #02,#be,#02,#ba,#02,#be,#02,#c1
	db #02,#be,#02,#ba,#02,#be,#02,#c1
	db #02,#be,#02,#ba,#02,#be,#02,#c1
	db #02,#c2,#02,#c1,#02,#bd,#02,#ff
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #bf,#02,#bd,#02,#bb,#02,#bd,#02
	db #ba,#02,#be,#02,#c1,#02,#c6,#02
	db #ba,#02,#be,#02,#c1,#02,#c6,#02
	db #ba,#02,#be,#02,#c1,#02,#c6,#02
	db #ba,#02,#be,#02,#c1,#02,#c6,#02
	db #ba,#02,#be,#02,#c1,#02,#c6,#02
	db #ba,#02,#be,#02,#c1,#02,#c6,#02
	db #c4,#02,#c2,#02,#c1,#02,#c2,#02
	db #c1,#02,#be,#02,#ba,#02,#be,#02
	db #ff,#27,#02,#00,#27,#82,#3a,#02
	db #06,#2e,#02,#00,#27,#82,#27,#82
	db #3a,#02,#06,#2e,#02,#00,#27,#82
	db #27,#82,#3a,#02,#06,#2e,#02,#00
	db #27,#82,#27,#82,#3a,#02,#06,#2e
	db #02,#00,#29,#82,#29,#82,#3a,#02
	db #06,#2e,#02,#00,#29,#82,#29,#82
	db #3a,#02,#06,#2e,#02,#00,#29,#82
	db #29,#82,#3a,#02,#06,#2e,#02,#00
	db #29,#82,#29,#82,#3a,#02,#06,#2e
	db #02,#00,#ff,#2c,#02,#00,#2c,#82
	db #3a,#02,#06,#31,#02,#00,#2c,#82
	db #2c,#82,#3a,#02,#06,#31,#02,#00
	db #2c,#82,#2c,#82,#3a,#02,#06,#31
	db #02,#00,#2c,#82,#2c,#82,#3a,#02
	db #06,#31,#02,#00,#2e,#82,#2e,#82
	db #3a,#02,#06,#32,#02,#00,#2e,#82
	db #2e,#82,#3a,#02,#06,#32,#02,#00
	db #2e,#82,#32,#82,#3a,#02,#06,#2c
	db #02,#00,#2a,#82,#2c,#82,#3a,#02
	db #06,#29,#02,#00,#ff,#4b,#20,#f9
	db #01,#4a,#20,#f9,#02,#ff,#49,#20
	db #f9,#03,#46,#a0,#ff,#4b,#20,#f9
	db #01,#4a,#20,#f9,#02,#ff,#49,#20
	db #f9,#03,#46,#a0,#ff,#4b,#20,#f9
	db #01,#4a,#20,#f9,#02,#ff,#49,#20
	db #f9,#03,#46,#a0,#ff,#82,#ff
;
.music_info
	db "Scoop-X-Treme 5-4 - Articles (1994)(Hypnomega)()",0
	db "ST-Module",0

	read "music_end.asm"
