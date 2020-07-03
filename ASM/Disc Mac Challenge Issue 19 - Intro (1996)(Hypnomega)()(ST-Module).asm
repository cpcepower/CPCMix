; Music of Disc Mac Challenge Issue 19 - Intro (1996)(Hypnomega)()(ST-Module)
; Ripped by Megachur the 05/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DIMCI19I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

	jp l800b
	jp l8093
	jp l8077
	db #66,#04
;
.init_music
.l800b
;
	ld b,#03
	ld ix,l83da
	ld iy,l8306
	ld de,#001c
.l8018
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
	djnz l8018
	ld a,#06
	ld (l80bb),a
	ld a,d
	ld (l80cf),a
	inc a
	ld (l80b6),a
	ld a,#38
	ld (l80c0),a
	ld a,#ff
	ld (l8302),a
	ld (l8303),a
	ld (l8304),a
	ld (l8305),a
	ld a,#0c
	ld c,d
	call l82e4
	ld a,#0d
	ld c,d
	jp l82e4
;
.stop_music
.l8077
;
	ld a,#07
	ld c,#3f
	call l82e4
	ld a,#08
	ld c,#00
	call l82e4
	ld a,#09
	ld c,#00
	call l82e4
	ld a,#0a
	ld c,#00
	jp l82e4
;
.play_music
.l8093
;
	ld hl,l80b6
	dec (hl)
	ld ix,l83da
	ld bc,l83e8
	call l8149
	ld ix,l83f6
	ld bc,l8404
	call l8149
	ld ix,l8412
	ld bc,l8420
	call l8149
.l80b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l80bf
.l80bb equ $ + 1
	ld a,#00
	ld (l80b6),a
.l80c0 equ $ + 1
.l80bf
	ld a,#00
	ld hl,l8303
	cp (hl)
	jr z,l80ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l82e4
.l80cf equ $ + 1
.l80ce
	ld a,#00
	ld hl,l8302
	cp (hl)
	jr z,l80dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l82e4
.l80de equ $ + 1
.l80dd
	ld a,#00
	ld hl,l8304
	cp (hl)
	jr z,l80ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l82e4
.l80ed equ $ + 1
.l80ec
	ld a,#00
	ld hl,l8305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l82e4
.l80fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l81fa
.l8109
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
	jp l82e4
.l8123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l8138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l8138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l815c
.l8149
	ld a,(l80b6)
	or a
	jp nz,l81fa
	dec (ix+#06)
	jp nz,l81fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l815c
	ld a,(hl)
	or a
	jr z,l80fa
	cp #fe
	jr z,l8109
	cp #ff
	jr z,l8123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l830c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l8198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l8198
	and #7f
	ld (ix+#06),a
	jr l81eb
.l8198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l81ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l81ac
	add a
	add a
	add a
	ld e,a
	ld hl,l8442
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
	jr z,l81eb
	cp #f0
	jp z,l82a0
	cp #d0
	jp z,l82bc
	cp #b0
	jp z,l82c4
	cp #80
	jp nc,l82cc
	cp #10
	jr nz,l81eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l81eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l81fa
	ld a,(ix+#17)
	or a
	jr nz,l820e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l820e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l8239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l830c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l8239
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
	call l82e4
	ld c,h
	ld a,(ix+#03)
	call l82e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l8277
	and #0f
	sub (ix+#0a)
	jr nc,l826d
	xor a
.l826d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l82e4
.l8277
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
	jr z,l8294
	ld b,a
	ld a,c
	ld (l80cf),a
	ld a,b
	sub #40
.l8294
	ld (l829b),a
	ld a,(l80c0)
.l829b equ $ + 1
	bit 0,a
	ld (l80c0),a
	ret
.l82a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l84c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l81eb
.l82bc
	inc hl
	ld a,(hl)
	ld (l80bb),a
	jp l81eb
.l82c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l81eb
.l82cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l80ed),a
	inc hl
	ld a,(hl)
	ld (l80de),a
	jp l81eb
.l82e4
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
.l8305 equ $ + 3
.l8304 equ $ + 2
.l8303 equ $ + 1
.l8302
	db #ff,#ff,#ff,#ff
.l8306
	dw l86e2,l8724,l8766
.l830c
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
.l83da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l83e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l83f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l8404 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8412 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l8420 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l8442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#84,#22,#85
	db #42,#85,#08,#00,#62,#85,#a2,#85
	db #c2,#85,#00,#00,#e2,#85,#22,#86
	db #42,#85,#10,#10,#e2,#84,#42,#86
	db #62,#86,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
.l84c2 equ $ + 4
	db #dc,#5e,#00,#00,#82,#86,#a2,#86
	db #c2,#86,#dc,#5e,#dc,#5e,#dc,#5e
	db #dc,#5e,#dc,#5e,#dc,#5e,#dc,#5e
	db #dc,#5e,#dc,#5e,#dc,#5e,#dc,#5e
	db #dc,#5e,#dc,#5e,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#09,#08,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0f,#0d,#0b,#09
	db #07,#05,#04,#06,#08,#06,#04,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#07,#0b,#0f,#13
	db #17,#1b,#1f,#13,#08,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#03,#07,#0c
	db #00,#03,#07,#0c,#00,#03,#07,#0c
	db #00,#03,#07,#0c,#00,#03,#07,#0c
	db #00,#03,#07,#0c,#00,#03,#07,#0c
	db #00,#03,#07,#0c,#00,#04,#07,#0c
	db #00,#04,#07,#0c,#00,#04,#07,#0c
	db #00,#04,#07,#0c,#00,#04,#07,#0c
	db #00,#04,#07,#0c,#00,#04,#07,#0c
.l86e2 equ $ + 4
	db #00,#04,#07,#0c,#00,#a8,#87,#00
	db #fc,#87,#00,#fc,#87,#00,#28,#88
	db #00,#48,#88,#00,#fc,#87,#00,#64
	db #88,#00,#84,#88,#00,#b2,#88,#00
	db #b2,#88,#00,#b2,#88,#00,#e4,#88
	db #00,#06,#89,#00,#2d,#89,#00,#b6
	db #89,#00,#38,#8a,#00,#b9,#8a,#00
	db #3a,#8b,#00,#b9,#8a,#00,#bb,#8b
.l8724 equ $ + 6
	db #00,#04,#8c,#80,#e2,#86,#00,#53
	db #8c,#00,#5b,#8c,#00,#5b,#8c,#00
	db #af,#8c,#00,#af,#8c,#00,#01,#8d
	db #00,#62,#8d,#00,#c3,#8d,#00,#62
	db #8d,#00,#62,#8d,#00,#62,#8d,#00
	db #24,#8e,#00,#8d,#8e,#00,#f6,#8e
	db #00,#1f,#8f,#00,#30,#8f,#00,#41
	db #8f,#00,#a2,#8f,#00,#41,#8f,#00
	db #03,#90,#00,#85,#90,#80,#24,#87
.l8766
	db #00,#06,#91,#00,#88,#91,#00,#88
	db #91,#00,#09,#92,#00,#8a,#92,#00
	db #0b,#93,#00,#8a,#92,#00,#8a,#92
	db #00,#8c,#93,#00,#c0,#93,#00,#21
	db #94,#00,#aa,#94,#00,#21,#94,#00
	db #33,#95,#00,#ad,#95,#00,#bf,#95
	db #00,#d1,#95,#00,#e3,#95,#00,#09
	db #96,#00,#23,#96,#00,#6e,#96,#80
	db #66,#87,#27,#02,#f0,#00,#33,#02
	db #00,#36,#82,#b3,#00,#b6,#00,#a7
	db #00,#b6,#00,#33,#82,#36,#82,#33
	db #82,#25,#82,#31,#82,#35,#82,#b1
	db #00,#b5,#00,#a5,#00,#b5,#00,#31
	db #82,#35,#82,#31,#82,#22,#82,#2e
	db #82,#31,#82,#ae,#00,#b1,#00,#a2
	db #00,#b1,#00,#2e,#82,#31,#82,#2e
	db #82,#23,#82,#2f,#82,#33,#82,#af
	db #00,#b3,#00,#a3,#00,#b3,#00,#2f
	db #82,#33,#82,#2f,#82,#ff,#52,#06
	db #02,#50,#82,#52,#83,#50,#83,#4e
	db #82,#50,#86,#4e,#82,#50,#83,#4e
	db #83,#4d,#82,#4e,#86,#4d,#82,#4e
	db #83,#4d,#83,#49,#82,#4e,#86,#4d
	db #82,#4e,#82,#4d,#82,#ce,#02,#50
	db #83,#ff,#52,#08,#f2,#00,#53,#04
	db #02,#52,#84,#50,#8c,#4e,#82,#50
	db #82,#52,#86,#52,#82,#53,#82,#52
	db #82,#53,#82,#4e,#8f,#ce,#02,#50
	db #82,#ff,#52,#08,#f2,#00,#53,#04
	db #02,#52,#84,#50,#8c,#4e,#82,#50
	db #82,#52,#86,#52,#82,#53,#82,#52
	db #82,#53,#82,#4e,#92,#ff,#52,#08
	db #f2,#00,#53,#04,#02,#52,#84,#50
	db #8c,#4e,#82,#50,#82,#52,#86,#52
	db #82,#53,#82,#52,#82,#53,#82,#4e
	db #8f,#ce,#02,#50,#82,#ff,#52,#03
	db #02,#50,#83,#4e,#82,#49,#83,#4e
	db #83,#52,#82,#50,#83,#4e,#83,#4d
	db #82,#4e,#83,#4d,#83,#4e,#82,#52
	db #83,#50,#83,#4e,#82,#4b,#83,#4e
	db #83,#52,#82,#50,#83,#4e,#83,#4b
	db #82,#4e,#88,#ff,#52,#03,#02,#50
	db #83,#4e,#82,#49,#83,#4e,#83,#52
	db #82,#50,#83,#4e,#83,#4d,#82,#4e
	db #83,#4d,#83,#4e,#82,#52,#83,#50
	db #83,#4e,#82,#4b,#83,#4e,#83,#52
	db #82,#50,#83,#4e,#83,#4b,#82,#4e
	db #83,#4e,#83,#50,#82,#ff,#55,#0a
	db #02,#57,#83,#d5,#02,#57,#82,#55
	db #84,#53,#82,#52,#84,#4e,#86,#55
	db #8a,#57,#83,#d5,#02,#57,#82,#55
	db #84,#53,#82,#52,#84,#50,#86,#ff
	db #53,#02,#02,#52,#84,#4e,#84,#49
	db #84,#4b,#90,#49,#82,#53,#82,#52
	db #84,#4e,#84,#49,#84,#4b,#84,#55
	db #02,#00,#d5,#00,#55,#82,#55,#83
	db #53,#82,#d2,#00,#53,#83,#ff,#2e
	db #03,#c2,#3c,#b1,#c2,#32,#aa,#f1
	db #00,#b1,#c2,#32,#36,#02,#c2,#26
	db #2e,#03,#c2,#3c,#b1,#c2,#32,#aa
	db #f1,#00,#b1,#c2,#32,#36,#02,#c2
	db #26,#2f,#03,#c2,#38,#b1,#c2,#32
	db #a5,#f3,#00,#b1,#c2,#32,#36,#02
	db #c2,#26,#2f,#03,#c2,#38,#b3,#c2
	db #2d,#a5,#f1,#00,#b3,#c2,#2d,#36
	db #02,#c2,#26,#33,#03,#c2,#2d,#b6
	db #c2,#26,#a7,#f1,#00,#b6,#c2,#26
	db #3a,#02,#c2,#1e,#33,#03,#c2,#2d
	db #b6,#c2,#26,#a7,#f1,#00,#b6,#c2
	db #26,#3a,#02,#c2,#1e,#36,#03,#c2
	db #26,#b8,#c2,#22,#a3,#f1,#00,#b8
	db #c2,#22,#3d,#02,#c2,#19,#36,#03
	db #c2,#26,#b8,#c2,#22,#a3,#f1,#00
	db #b8,#c2,#22,#3d,#02,#c2,#19,#ff
	db #aa,#f1,#00,#aa,#02,#b6,#02,#aa
	db #01,#aa,#03,#aa,#02,#b6,#02,#aa
	db #02,#aa,#01,#aa,#02,#b6,#02,#aa
	db #02,#aa,#03,#aa,#02,#b6,#02,#aa
	db #02,#a5,#01,#a5,#02,#b1,#02,#a5
	db #01,#a5,#03,#a5,#02,#b1,#02,#a5
	db #02,#a5,#01,#a5,#02,#b1,#02,#a5
	db #02,#a5,#03,#a5,#02,#b1,#02,#a5
	db #02,#a7,#01,#a7,#02,#b3,#02,#a7
	db #02,#a7,#03,#a7,#02,#b3,#02,#a7
	db #02,#a7,#01,#a7,#02,#b3,#02,#a7
	db #02,#a7,#03,#a7,#02,#b3,#02,#a7
	db #02,#a3,#01,#a3,#02,#af,#02,#a3
	db #01,#a3,#03,#a3,#02,#af,#02,#a3
	db #02,#a3,#01,#a3,#02,#af,#02,#a3
	db #02,#a3,#03,#a3,#02,#af,#02,#a3
	db #02,#ff,#aa,#01,#aa,#02,#b6,#02
	db #aa,#01,#aa,#03,#aa,#02,#b6,#02
	db #aa,#02,#aa,#01,#aa,#02,#b6,#02
	db #aa,#02,#aa,#03,#aa,#02,#b6,#02
	db #aa,#02,#a5,#01,#a5,#02,#b1,#02
	db #a5,#01,#a5,#03,#a5,#02,#b1,#02
	db #a5,#02,#a5,#01,#a5,#02,#b1,#02
	db #a5,#02,#a5,#03,#a5,#02,#b1,#02
	db #a5,#02,#a7,#01,#a7,#02,#b3,#02
	db #a7,#02,#a7,#03,#a7,#02,#b3,#02
	db #a7,#02,#a7,#01,#a7,#02,#b3,#02
	db #a7,#02,#a7,#03,#a7,#02,#b3,#02
	db #a7,#02,#a3,#01,#a3,#02,#af,#02
	db #a3,#01,#a3,#03,#a3,#02,#af,#02
	db #a3,#02,#a3,#01,#a3,#02,#af,#02
	db #a3,#02,#a3,#03,#a3,#02,#af,#02
	db #a3,#02,#ff,#a7,#01,#a7,#02,#b3
	db #02,#a7,#02,#a7,#01,#a7,#02,#b3
	db #02,#a7,#02,#a7,#01,#a7,#02,#b3
	db #02,#a7,#02,#a7,#03,#a7,#02,#b3
	db #02,#a7,#02,#a5,#01,#a5,#02,#b1
	db #02,#a5,#01,#a5,#03,#a5,#02,#b1
	db #02,#a5,#02,#a5,#01,#a5,#02,#b1
	db #02,#a5,#02,#a5,#03,#a5,#02,#b1
	db #02,#a5,#02,#a3,#01,#a3,#02,#af
	db #02,#a3,#02,#a3,#03,#a3,#02,#af
	db #02,#a3,#02,#a3,#01,#a3,#02,#af
	db #02,#a3,#02,#a3,#01,#a3,#02,#af
	db #02,#a3,#02,#aa,#01,#aa,#02,#b6
	db #02,#aa,#02,#aa,#03,#aa,#02,#b6
	db #02,#aa,#02,#a9,#01,#a9,#02,#b5
	db #02,#a9,#02,#a9,#03,#a9,#02,#b5
	db #02,#a9,#02,#ff,#a7,#01,#a7,#02
	db #b3,#02,#a7,#02,#a7,#01,#a7,#02
	db #b3,#02,#a7,#02,#a7,#01,#a7,#02
	db #b3,#02,#a7,#02,#a7,#03,#a7,#02
	db #b3,#02,#a7,#02,#a5,#01,#a5,#02
	db #b1,#02,#a5,#01,#a5,#03,#a5,#02
	db #b1,#02,#a5,#02,#a5,#01,#a5,#02
	db #b1,#02,#a5,#02,#a5,#03,#a5,#02
	db #b1,#02,#a5,#02,#a3,#01,#a3,#02
	db #af,#02,#a3,#02,#a3,#03,#a3,#02
	db #af,#02,#a3,#02,#a3,#01,#a3,#02
	db #af,#02,#a3,#02,#a3,#01,#a3,#02
	db #af,#02,#a3,#02,#aa,#01,#aa,#02
	db #b6,#02,#aa,#02,#aa,#03,#aa,#02
	db #b6,#02,#aa,#02,#a9,#01,#a9,#02
	db #b5,#02,#a9,#02,#a9,#03,#a9,#02
	db #b5,#02,#a9,#02,#ff,#42,#02,#02
	db #41,#02,#02,#3f,#02,#02,#3d,#02
	db #02,#3f,#04,#02,#41,#02,#02,#3d
	db #04,#02,#3a,#02,#02,#3d,#02,#02
	db #3a,#02,#02,#3d,#02,#02,#3f,#06
	db #02,#42,#02,#02,#41,#02,#02,#3f
	db #02,#02,#3d,#02,#02,#3f,#04,#02
	db #46,#02,#02,#44,#04,#02,#42,#02
	db #02,#41,#02,#02,#42,#02,#02,#41
	db #04,#02,#3d,#04,#02,#ff,#42,#02
	db #b2,#00,#41,#02,#b2,#01,#3f,#82
	db #3d,#82,#3f,#04,#b2,#02,#41,#82
	db #3d,#04,#b2,#03,#3a,#82,#3d,#02
	db #b2,#04,#3a,#82,#3d,#02,#b2,#05
	db #3f,#86,#42,#02,#b2,#06,#41,#82
	db #3f,#02,#b2,#07,#3d,#82,#3f,#04
	db #b2,#08,#46,#02,#b2,#09,#44,#04
	db #b2,#0a,#42,#02,#b2,#0b,#41,#02
	db #b2,#0c,#42,#82,#41,#04,#b2,#0d
	db #3d,#04,#b2,#0e,#ff,#a7,#b2,#0f
	db #26,#3f,#f2,#00,#ff,#27,#02,#f0
	db #00,#33,#02,#00,#36,#82,#b3,#00
	db #b6,#00,#a7,#00,#b6,#00,#33,#82
	db #36,#82,#33,#82,#25,#82,#31,#82
	db #35,#82,#b1,#00,#b5,#00,#a5,#00
	db #b5,#00,#31,#82,#35,#82,#31,#82
	db #22,#82,#2e,#82,#31,#82,#ae,#00
	db #b1,#00,#a2,#00,#b1,#00,#2e,#82
	db #31,#82,#2e,#82,#23,#82,#2f,#82
	db #33,#82,#af,#00,#b3,#00,#a3,#00
	db #b3,#00,#2f,#82,#33,#82,#2f,#82
	db #ff,#2a,#02,#00,#36,#82,#3a,#82
	db #b6,#00,#ba,#00,#aa,#00,#ba,#00
	db #36,#82,#3a,#82,#36,#82,#25,#82
	db #31,#82,#35,#82,#b1,#00,#b5,#00
	db #a5,#00,#b5,#00,#31,#82,#35,#82
	db #31,#82,#27,#82,#33,#82,#36,#82
	db #b3,#00,#b6,#00,#a7,#00,#b6,#00
	db #33,#82,#36,#82,#33,#82,#23,#82
	db #2f,#82,#33,#82,#af,#00,#b3,#00
	db #a3,#00,#b3,#00,#2f,#82,#33,#82
	db #2f,#82,#ff,#cb,#f0,#01,#4b,#02
	db #00,#cb,#00,#4b,#82,#cb,#00,#4b
	db #82,#cb,#00,#4b,#82,#cb,#00,#4b
	db #82,#cb,#00,#c9,#f0,#02,#49,#02
	db #00,#c9,#00,#49,#82,#c9,#00,#49
	db #82,#c9,#00,#49,#82,#c9,#00,#49
	db #82,#c9,#00,#c6,#f0,#01,#46,#02
	db #00,#c6,#00,#46,#82,#c6,#00,#46
	db #82,#c6,#00,#46,#82,#c6,#00,#46
	db #82,#c6,#00,#c7,#f0,#02,#47,#02
	db #00,#c7,#00,#47,#82,#c7,#00,#47
	db #82,#c7,#00,#47,#82,#c7,#00,#47
	db #82,#c7,#00,#ff,#ce,#f0,#02,#4e
	db #02,#00,#ce,#00,#4e,#82,#ce,#00
	db #4e,#82,#ce,#00,#4e,#82,#ce,#00
	db #4e,#82,#ce,#00,#c9,#f0,#02,#49
	db #02,#00,#c9,#00,#49,#82,#c9,#00
	db #49,#82,#c9,#00,#49,#82,#c9,#00
	db #49,#82,#c9,#00,#cb,#f0,#01,#4b
	db #02,#00,#cb,#00,#4b,#82,#cb,#00
	db #4b,#82,#cb,#00,#4b,#82,#cb,#00
	db #4b,#82,#cb,#00,#c7,#f0,#02,#47
	db #02,#00,#c7,#00,#47,#82,#c7,#00
	db #47,#82,#c7,#00,#47,#82,#c7,#00
	db #47,#82,#c7,#00,#ff,#ce,#f0,#02
	db #4e,#02,#00,#ce,#00,#4e,#82,#ce
	db #00,#4e,#82,#ce,#00,#4e,#82,#ce
	db #00,#4e,#82,#ce,#00,#c9,#f0,#02
	db #49,#02,#00,#c9,#00,#49,#82,#c9
	db #00,#49,#82,#c9,#00,#49,#82,#c9
	db #00,#49,#82,#c9,#00,#cb,#f0,#01
	db #4b,#02,#00,#cb,#00,#4b,#82,#cb
	db #00,#4b,#82,#cb,#00,#4b,#82,#cb
	db #00,#4b,#82,#cb,#00,#c7,#f0,#02
	db #47,#02,#00,#c7,#00,#47,#82,#c7
	db #00,#47,#82,#c7,#00,#47,#82,#c7
	db #00,#47,#82,#c7,#00,#ff,#ce,#f3
	db #02,#4e,#02,#00,#ce,#00,#4e,#82
	db #ce,#00,#ce,#00,#ce,#03,#ce,#00
	db #4e,#82,#ce,#00,#4e,#82,#ce,#00
	db #c9,#f3,#02,#49,#02,#00,#c9,#00
	db #49,#82,#c9,#00,#c9,#00,#c9,#03
	db #c9,#00,#49,#82,#c9,#00,#49,#82
	db #c9,#00,#cb,#f3,#01,#4b,#02,#00
	db #cb,#00,#4b,#82,#cb,#00,#cb,#00
	db #cb,#03,#cb,#00,#4b,#82,#cb,#00
	db #4b,#82,#cb,#00,#c7,#f3,#02,#47
	db #02,#00,#c7,#00,#47,#82,#c7,#00
	db #c7,#00,#c7,#03,#c7,#00,#47,#82
	db #c7,#00,#47,#82,#c7,#00,#ff,#ce
	db #f3,#02,#4e,#02,#00,#ce,#00,#4e
	db #82,#ce,#00,#ce,#00,#ce,#03,#ce
	db #00,#4e,#82,#ce,#00,#4e,#82,#ce
	db #00,#c9,#f3,#02,#49,#02,#00,#c9
	db #00,#49,#82,#c9,#00,#c9,#00,#c9
	db #03,#c9,#00,#49,#82,#c9,#00,#49
	db #82,#c9,#00,#cb,#f3,#01,#4b,#02
	db #00,#cb,#00,#4b,#82,#cb,#00,#cb
	db #00,#cb,#03,#cb,#00,#4b,#82,#cb
	db #00,#4b,#82,#cb,#00,#c7,#f3,#02
	db #47,#02,#00,#c7,#00,#47,#82,#c7
	db #00,#c7,#00,#c7,#03,#c7,#00,#47
	db #82,#c7,#00,#47,#82,#c7,#00,#ff
	db #55,#0e,#f2,#00,#52,#02,#02,#50
	db #0c,#b2,#00,#ce,#02,#50,#83,#52
	db #10,#b2,#00,#c9,#02,#4b,#02,#b2
	db #00,#4b,#03,#02,#c9,#02,#4e,#82
	db #4e,#82,#c9,#02,#4e,#82,#50,#82
	db #ff,#36,#10,#c2,#4c,#31,#10,#c2
	db #32,#33,#10,#c2,#2d,#2f,#10,#c2
	db #38,#ff,#36,#10,#c2,#4c,#31,#10
	db #c2,#32,#33,#10,#c2,#2d,#2f,#10
	db #c2,#38,#ff,#42,#02,#c2,#13,#41
	db #02,#c2,#14,#3f,#02,#c2,#16,#3d
	db #02,#c2,#19,#3f,#04,#c2,#16,#41
	db #02,#c2,#14,#3d,#04,#c2,#19,#3a
	db #02,#c2,#1e,#3d,#02,#c2,#19,#3a
	db #02,#c2,#1e,#3d,#02,#c2,#19,#3f
	db #06,#c2,#16,#42,#02,#c2,#13,#41
	db #02,#c2,#14,#3f,#02,#c2,#16,#3d
	db #02,#c2,#19,#3f,#04,#c2,#16,#46
	db #02,#c2,#1e,#44,#04,#c2,#11,#42
	db #02,#c2,#13,#41,#02,#c2,#14,#42
	db #02,#c2,#13,#41,#04,#c2,#14,#3d
	db #04,#c2,#19,#ff,#42,#02,#c2,#13
	db #41,#02,#c2,#14,#3f,#02,#c2,#16
	db #3d,#02,#c2,#19,#3f,#04,#c2,#16
	db #41,#02,#c2,#14,#3d,#04,#c2,#19
	db #3a,#02,#c2,#1e,#3d,#02,#c2,#19
	db #3a,#02,#c2,#1e,#3d,#02,#c2,#19
	db #3f,#06,#c2,#16,#42,#02,#c2,#13
	db #41,#02,#c2,#14,#3f,#02,#c2,#16
	db #3d,#02,#c2,#19,#3f,#04,#c2,#16
	db #46,#02,#c2,#1e,#44,#04,#c2,#11
	db #42,#02,#c2,#13,#41,#02,#c2,#14
	db #42,#02,#c2,#13,#41,#04,#c2,#14
	db #3d,#04,#c2,#19,#ff,#a7,#f1,#00
	db #a7,#02,#b3,#02,#a7,#02,#a7,#01
	db #a7,#02,#b3,#02,#a7,#02,#a7,#01
	db #a7,#02,#b3,#02,#a7,#02,#a7,#03
	db #a7,#02,#b3,#02,#a7,#02,#a5,#01
	db #a5,#02,#b1,#02,#a5,#01,#a5,#03
	db #a5,#02,#b1,#02,#a5,#02,#a5,#01
	db #a5,#02,#b1,#02,#a5,#02,#a5,#03
	db #a5,#02,#b1,#02,#a5,#02,#a3,#01
	db #a3,#02,#af,#02,#a3,#02,#a3,#03
	db #a3,#02,#af,#02,#a3,#02,#a3,#01
	db #a3,#02,#af,#02,#a3,#02,#a3,#01
	db #a3,#02,#af,#02,#a3,#02,#aa,#01
	db #aa,#02,#b6,#02,#aa,#02,#aa,#03
	db #aa,#02,#b6,#02,#aa,#02,#a9,#01
	db #a9,#02,#b5,#02,#a9,#02,#a9,#03
	db #a9,#02,#b5,#02,#a9,#02,#ff,#a7
	db #01,#a7,#02,#b3,#02,#a7,#02,#a7
	db #01,#a7,#02,#b3,#02,#a7,#02,#a7
	db #01,#a7,#02,#b3,#02,#a7,#02,#a7
	db #03,#a7,#02,#b3,#02,#a7,#02,#a5
	db #01,#a5,#02,#b1,#02,#a5,#01,#a5
	db #03,#a5,#02,#b1,#02,#a5,#02,#a5
	db #01,#a5,#02,#b1,#02,#a5,#02,#a5
	db #03,#a5,#02,#b1,#02,#a5,#02,#a3
	db #01,#a3,#02,#af,#02,#a3,#02,#a3
	db #03,#a3,#02,#af,#02,#a3,#02,#a3
	db #01,#a3,#02,#af,#02,#a3,#02,#a3
	db #01,#a3,#02,#af,#02,#a3,#02,#aa
	db #01,#aa,#02,#b6,#02,#aa,#02,#aa
	db #03,#aa,#02,#b6,#02,#aa,#02,#a9
	db #01,#a9,#02,#b5,#02,#a9,#02,#a9
	db #03,#a9,#02,#b5,#02,#a9,#02,#ff
	db #a7,#f1,#00,#a7,#02,#b3,#02,#a7
	db #01,#a7,#03,#a7,#02,#b3,#02,#a7
	db #02,#a7,#01,#a7,#02,#b3,#02,#a7
	db #02,#a7,#03,#a7,#02,#b3,#02,#a7
	db #02,#a5,#01,#a5,#02,#b1,#02,#a5
	db #01,#a5,#03,#a5,#02,#b1,#02,#a5
	db #02,#a5,#01,#a5,#02,#b1,#02,#a5
	db #02,#a5,#03,#a5,#02,#b1,#02,#a5
	db #02,#a2,#01,#a2,#02,#ae,#02,#a2
	db #02,#a2,#03,#a2,#02,#ae,#02,#a2
	db #02,#a2,#01,#a2,#02,#ae,#02,#a2
	db #02,#a2,#03,#a2,#02,#ae,#02,#a2
	db #02,#a3,#01,#a3,#02,#af,#02,#a3
	db #01,#a3,#03,#a3,#02,#af,#02,#a3
	db #02,#a3,#01,#a3,#02,#af,#02,#a3
	db #02,#a3,#03,#a3,#02,#af,#02,#a3
	db #02,#ff,#a7,#01,#a7,#02,#b3,#02
	db #a7,#01,#a7,#03,#a7,#02,#b3,#02
	db #a7,#02,#a7,#01,#a7,#02,#b3,#02
	db #a7,#02,#a7,#03,#a7,#02,#b3,#02
	db #a7,#02,#a5,#01,#a5,#02,#b1,#02
	db #a5,#01,#a5,#03,#a5,#02,#b1,#02
	db #a5,#02,#a5,#01,#a5,#02,#b1,#02
	db #a5,#02,#a5,#03,#a5,#02,#b1,#02
	db #a5,#02,#a2,#01,#a2,#02,#ae,#02
	db #a2,#02,#a2,#03,#a2,#02,#ae,#02
	db #a2,#02,#a2,#01,#a2,#02,#ae,#02
	db #a2,#02,#a2,#03,#a2,#02,#ae,#02
	db #a2,#02,#a3,#01,#a3,#02,#af,#02
	db #a3,#01,#a3,#03,#a3,#02,#af,#02
	db #a3,#02,#a3,#01,#a3,#02,#af,#02
	db #a3,#02,#a3,#03,#a3,#02,#af,#02
	db #a3,#02,#ff,#aa,#01,#aa,#02,#b6
	db #02,#aa,#01,#aa,#03,#aa,#02,#b6
	db #02,#aa,#02,#aa,#01,#aa,#02,#b6
	db #02,#aa,#02,#aa,#03,#aa,#02,#b6
	db #02,#aa,#02,#a5,#01,#a5,#02,#b1
	db #02,#a5,#01,#a5,#03,#a5,#02,#b1
	db #02,#a5,#02,#a5,#01,#a5,#02,#b1
	db #02,#a5,#02,#a5,#03,#a5,#02,#b1
	db #02,#a5,#02,#a7,#01,#a7,#02,#b3
	db #02,#a7,#02,#a7,#03,#a7,#02,#b3
	db #02,#a7,#02,#a7,#01,#a7,#02,#b3
	db #02,#a7,#02,#a7,#03,#a7,#02,#b3
	db #02,#a7,#02,#a3,#01,#a3,#02,#af
	db #02,#a3,#01,#a3,#03,#a3,#02,#af
	db #02,#a3,#02,#a3,#01,#a3,#02,#af
	db #02,#a3,#02,#a3,#03,#a3,#02,#af
	db #02,#a3,#02,#ff,#aa,#01,#aa,#02
	db #b6,#02,#aa,#01,#aa,#03,#aa,#02
	db #b6,#02,#aa,#02,#aa,#01,#aa,#02
	db #b6,#02,#aa,#02,#aa,#03,#aa,#02
	db #b6,#02,#aa,#02,#a5,#01,#a5,#02
	db #b1,#02,#a5,#01,#a5,#03,#a5,#02
	db #b1,#02,#a5,#02,#a5,#01,#a5,#02
	db #b1,#02,#a5,#02,#a5,#03,#a5,#02
	db #b1,#02,#a5,#02,#a7,#01,#a7,#02
	db #b3,#02,#a7,#02,#a7,#03,#a7,#02
	db #b3,#02,#a7,#02,#a7,#01,#a7,#02
	db #b3,#02,#a7,#02,#a7,#03,#a7,#02
	db #b3,#02,#a7,#02,#a3,#01,#a3,#02
	db #af,#02,#a3,#01,#a3,#03,#a3,#02
	db #af,#02,#a3,#02,#a3,#01,#a3,#02
	db #af,#02,#a3,#02,#a3,#03,#a3,#02
	db #af,#02,#a3,#02,#ff,#a7,#01,#a7
	db #02,#b3,#02,#a7,#01,#a7,#03,#a7
	db #02,#b3,#02,#a7,#02,#a7,#01,#a7
	db #02,#b3,#02,#a7,#02,#a7,#03,#a7
	db #02,#b3,#02,#a7,#02,#a5,#01,#a5
	db #02,#b1,#02,#a5,#01,#a5,#03,#a5
	db #02,#b1,#02,#a5,#02,#a5,#01,#a5
	db #02,#b1,#02,#a5,#02,#a5,#03,#a5
	db #02,#b1,#02,#a5,#02,#a2,#01,#a2
	db #02,#ae,#02,#a2,#02,#a2,#03,#a2
	db #02,#ae,#02,#a2,#02,#a2,#01,#a2
	db #02,#ae,#02,#a2,#02,#a2,#03,#a2
	db #02,#ae,#02,#a2,#02,#a3,#01,#a3
	db #02,#af,#02,#a3,#01,#a3,#03,#a3
	db #02,#af,#02,#a3,#02,#a3,#01,#a3
	db #02,#af,#02,#a3,#02,#a3,#03,#a3
	db #02,#af,#02,#a3,#02,#ff,#00,#01
	db #52,#03,#02,#50,#83,#4e,#82,#49
	db #83,#4e,#83,#52,#82,#50,#83,#4e
	db #83,#4d,#82,#4e,#83,#4d,#83,#4e
	db #82,#52,#83,#50,#83,#4e,#82,#4b
	db #83,#4e,#83,#52,#82,#50,#83,#4e
	db #83,#4b,#82,#4e,#83,#4e,#83,#d0
	db #02,#ff,#2e,#03,#c2,#3c,#31,#03
	db #c2,#32,#36,#02,#c2,#26,#2e,#03
	db #c2,#3c,#31,#03,#c2,#32,#36,#02
	db #c2,#26,#2f,#03,#c2,#38,#31,#03
	db #c2,#32,#36,#02,#c2,#26,#2f,#03
	db #c2,#38,#33,#03,#c2,#2d,#36,#02
	db #c2,#26,#33,#03,#c2,#2d,#36,#03
	db #c2,#26,#3a,#02,#c2,#1e,#33,#03
	db #c2,#2d,#36,#03,#c2,#26,#3a,#02
	db #c2,#1e,#36,#03,#c2,#26,#38,#03
	db #c2,#22,#3d,#02,#c2,#19,#36,#03
	db #c2,#26,#38,#03,#c2,#22,#3d,#02
	db #c2,#19,#ff,#2e,#03,#c2,#3c,#b1
	db #c2,#32,#aa,#f1,#00,#b1,#c2,#32
	db #36,#02,#c2,#26,#2e,#03,#c2,#3c
	db #b1,#c2,#32,#aa,#f1,#00,#b1,#c2
	db #32,#36,#02,#c2,#26,#2f,#03,#c2
	db #38,#b1,#c2,#32,#a5,#f3,#00,#b1
	db #c2,#32,#36,#02,#c2,#26,#2f,#03
	db #c2,#38,#b3,#c2,#2d,#a5,#f1,#00
	db #b3,#c2,#2d,#36,#02,#c2,#26,#33
	db #03,#c2,#2d,#b6,#c2,#26,#a7,#f1
	db #00,#b6,#c2,#26,#3a,#02,#c2,#1e
	db #33,#03,#c2,#2d,#b6,#c2,#26,#a7
	db #f1,#00,#b6,#c2,#26,#3a,#02,#c2
	db #1e,#36,#03,#c2,#26,#b8,#c2,#22
	db #a3,#f1,#00,#b8,#c2,#22,#3d,#02
	db #c2,#19,#36,#03,#c2,#26,#b8,#c2
	db #22,#a3,#f1,#00,#b8,#c2,#22,#3d
	db #02,#c2,#19,#ff,#2e,#03,#c2,#3c
	db #b1,#c2,#32,#aa,#f1,#00,#b1,#c2
	db #32,#36,#02,#c2,#26,#2e,#03,#c2
	db #3c,#b1,#c2,#32,#aa,#f1,#00,#b1
	db #c2,#32,#36,#02,#c2,#26,#2f,#03
	db #c2,#38,#b1,#c2,#32,#a5,#f3,#00
	db #b1,#c2,#32,#36,#02,#c2,#26,#2f
	db #03,#c2,#38,#b3,#c2,#2d,#a5,#f1
	db #00,#b3,#c2,#2d,#36,#02,#c2,#26
	db #33,#03,#c2,#2d,#b6,#c2,#26,#a7
	db #f1,#00,#b6,#c2,#26,#3a,#02,#c2
	db #1e,#33,#03,#c2,#2d,#b6,#c2,#26
	db #a7,#f1,#00,#b6,#c2,#26,#3a,#02
	db #c2,#1e,#36,#03,#c2,#26,#b8,#c2
	db #22,#a3,#f1,#00,#b8,#c2,#22,#3d
	db #02,#c2,#19,#36,#03,#c2,#26,#b8
	db #c2,#22,#a3,#f1,#00,#b8,#c2,#22
	db #3d,#02,#c2,#19,#ff,#ce,#f3,#02
	db #4e,#02,#b0,#01,#ce,#00,#4e,#82
	db #ce,#00,#ce,#00,#ce,#03,#ce,#b0
	db #01,#4e,#02,#00,#ce,#00,#4e,#82
	db #ce,#00,#c9,#f3,#02,#49,#02,#b0
	db #02,#c9,#00,#49,#82,#c9,#00,#c9
	db #00,#c9,#03,#c9,#b0,#02,#49,#02
	db #00,#c9,#00,#49,#82,#c9,#00,#cb
	db #f3,#01,#4b,#02,#b0,#03,#cb,#00
	db #4b,#82,#cb,#00,#cb,#00,#cb,#03
	db #cb,#b0,#03,#4b,#02,#00,#cb,#00
	db #4b,#82,#cb,#00,#c7,#f3,#02,#47
	db #02,#b0,#04,#c7,#b0,#04,#47,#82
	db #c7,#b0,#04,#c7,#b0,#04,#c7,#03
	db #c7,#b0,#04,#47,#02,#b0,#05,#c7
	db #b0,#05,#47,#82,#c7,#00,#ff,#4e
	db #10,#f2,#00,#50,#0c,#b2,#00,#52
	db #04,#02,#4e,#90,#4b,#8c,#49,#84
	db #ff,#4e,#10,#f2,#00,#50,#06,#02
	db #55,#84,#53,#82,#52,#84,#52,#90
	db #4e,#90,#ff,#4e,#10,#02,#4e,#86
	db #4d,#86,#49,#84,#4b,#90,#49,#86
	db #47,#86,#46,#84,#ff,#4e,#10,#02
	db #4e,#86,#4d,#86,#49,#84,#4b,#8e
	db #4e,#82,#d2,#02,#d0,#02,#4e,#82
	db #d2,#02,#d0,#02,#4e,#82,#d5,#02
	db #d3,#02,#52,#82,#d5,#02,#d3,#02
	db #52,#82,#ff,#4e,#02,#02,#4d,#82
	db #4b,#82,#49,#82,#4b,#84,#4d,#82
	db #49,#8c,#4b,#86,#47,#8c,#49,#82
	db #46,#8e,#49,#84,#ff,#00,#01,#42
	db #02,#02,#41,#02,#02,#3f,#02,#02
	db #3d,#02,#02,#3f,#04,#02,#41,#02
	db #02,#3d,#04,#02,#3a,#02,#02,#3d
	db #02,#02,#3a,#02,#02,#3d,#02,#02
	db #3f,#06,#02,#42,#02,#02,#41,#02
	db #02,#3f,#02,#02,#3d,#02,#02,#3f
	db #04,#02,#46,#02,#02,#44,#04,#02
	db #42,#02,#02,#41,#02,#02,#42,#02
	db #02,#41,#04,#02,#3d,#03,#02,#ff
	db #00,#01,#42,#02,#b2,#00,#41,#02
	db #b2,#01,#3f,#82,#3d,#82,#3f,#04
	db #b2,#02,#41,#82,#3d,#04,#b2,#03
	db #3a,#82,#3d,#02,#b2,#04,#3a,#82
	db #3d,#02,#b2,#05,#3f,#86,#42,#02
	db #b2,#06,#41,#82,#3f,#02,#b2,#07
	db #3d,#82,#3f,#04,#b2,#08,#46,#02
	db #b2,#09,#44,#04,#b2,#0a,#42,#02
	db #b2,#0b,#41,#02,#b2,#0c,#42,#82
	db #41,#04,#b2,#0d,#3d,#03,#b2,#0e
	db #ff
;
.music_info
	db "Disc Mac Challenge Issue 19 - Intro (1996)(Hypnomega)()",0
	db "ST-Module",0

	read "music_end.asm"
