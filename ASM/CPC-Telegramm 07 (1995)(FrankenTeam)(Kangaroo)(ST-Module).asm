; Music of CPC-Telegramm 07 (1995)(FrankenTeam)(Kangaroo)(ST-Module)
; Ripped by Megachur the 13/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPC07FUN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 13
MUSIC_DATE_RIP_MONTH	equ 03
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
	dw l8762,l879b,l87d4
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
	db #75,#6c,#65,#2e,#dc,#7e,#dc,#7e
	db #dc,#7e,#00,#00,#e2,#84,#22,#85
	db #42,#85,#00,#00,#dc,#7e,#dc,#7e
	db #dc,#7e,#00,#00,#62,#85,#a2,#85
	db #c2,#85,#00,#00,#e2,#85,#22,#86
	db #c2,#85,#08,#18,#dc,#7e,#dc,#7e
	db #dc,#7e,#00,#00,#e2,#85,#42,#86
	db #c2,#85,#08,#18,#62,#86,#a2,#86
	db #c2,#85,#00,#00,#dc,#7e,#dc,#7e
	db #dc,#7e,#00,#00,#62,#86,#c2,#86
	db #c2,#85,#08,#00,#b8,#9d,#dc,#7e
	db #b8,#9d,#dc,#1e,#e2,#86,#22,#87
	db #42,#87,#00,#00,#1e,#a6,#b8,#9d
	db #3e,#a6,#dc,#1e,#b8,#9d,#b8,#9d
	db #b8,#9d,#dc,#1e,#b8,#9d,#b8,#9d
	db #b8,#9d,#dc,#1e,#b8,#9d,#b8,#9d
.l84c2 equ $ + 4
	db #dc,#7e,#30,#00,#3c,#7f,#6c,#7f
	db #9c,#7f,#cc,#7f,#fc,#7f,#2c,#80
	db #5c,#80,#8c,#80,#bc,#80,#ec,#80
	db #1c,#81,#4c,#81,#7c,#81,#ac,#81
	db #dc,#81,#fc,#81,#00,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0c,#0b,#0a,#08,#07,#07,#08,#08
	db #09,#09,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #03,#02,#02,#02,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#0c,#0b,#0a,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0e,#0d,#0c,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0a,#0a,#09
	db #09,#08,#08,#07,#06,#05,#03,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0f,#0e
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#00,#00,#2f,#00
	db #5e,#00,#8d,#00,#bc,#00,#eb,#00
	db #1a,#01,#49,#01,#78,#01,#a7,#01
	db #d6,#01,#05,#02,#34,#02,#63,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#06,#0c,#12
	db #18,#1e,#04,#0a,#10,#16,#1c,#02
	db #08,#0e,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8762 equ $ + 4
	db #00,#00,#00,#00,#00,#0d,#88,#00
	db #10,#88,#00,#13,#88,#00,#39,#88
	db #00,#5f,#88,#00,#8d,#88,#00,#5f
	db #88,#00,#8d,#88,#00,#be,#88,#00
	db #ec,#88,#00,#be,#88,#00,#ec,#88
	db #00,#5f,#88,#00,#5f,#88,#00,#5f
	db #88,#00,#5f,#88,#00,#5f,#88,#00
.l879b equ $ + 5
	db #5f,#88,#80,#6e,#87,#00,#1d,#89
	db #00,#2d,#89,#00,#37,#89,#00,#47
	db #89,#00,#51,#89,#00,#62,#89,#00
	db #51,#89,#00,#62,#89,#00,#73,#89
	db #00,#a0,#89,#00,#73,#89,#00,#a0
	db #89,#00,#cf,#89,#00,#cf,#89,#00
	db #10,#8a,#00,#20,#8a,#00,#10,#8a
.l87d4 equ $ + 6
	db #00,#20,#8a,#80,#a7,#87,#00,#28
	db #8a,#00,#28,#8a,#00,#28,#8a,#00
	db #28,#8a,#00,#28,#8a,#00,#28,#8a
	db #00,#28,#8a,#00,#28,#8a,#00,#28
	db #8a,#00,#28,#8a,#00,#28,#8a,#00
	db #28,#8a,#00,#28,#8a,#00,#28,#8a
	db #00,#28,#8a,#00,#28,#8a,#00,#28
	db #8a,#00,#28,#8a,#80,#e0,#87,#00
	db #20,#ff,#00,#20,#ff,#24,#02,#03
	db #a4,#03,#24,#82,#a4,#03,#24,#82
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #22,#82,#a2,#03,#22,#82,#a2,#03
	db #22,#82,#22,#82,#22,#82,#22,#82
	db #22,#82,#ff,#24,#02,#03,#a4,#03
	db #24,#82,#a4,#03,#24,#82,#20,#82
	db #20,#82,#20,#82,#20,#82,#22,#82
	db #a2,#03,#22,#82,#a2,#03,#22,#82
	db #1f,#82,#1f,#82,#1f,#82,#1f,#82
	db #ff,#24,#02,#03,#a4,#03,#a4,#03
	db #ba,#0b,#a4,#03,#24,#82,#20,#82
	db #20,#82,#3a,#02,#0b,#20,#02,#03
	db #22,#82,#a2,#03,#a2,#03,#ba,#0b
	db #a2,#03,#22,#82,#22,#82,#22,#82
	db #3a,#02,#0b,#22,#02,#03,#ff,#24
	db #02,#03,#a4,#03,#a4,#03,#ba,#0b
	db #a4,#03,#24,#82,#20,#82,#20,#82
	db #3a,#02,#0b,#20,#02,#03,#22,#82
	db #a2,#03,#a2,#03,#ba,#0b,#a2,#03
	db #22,#82,#9f,#03,#ba,#0b,#1f,#02
	db #03,#3a,#02,#0b,#1f,#02,#03,#ff
	db #24,#02,#03,#a4,#03,#a4,#03,#ba
	db #0b,#a4,#03,#24,#82,#20,#82,#20
	db #82,#3a,#02,#0b,#20,#02,#03,#22
	db #82,#a2,#03,#a2,#03,#ba,#0b,#a2
	db #03,#22,#82,#22,#82,#22,#82,#3a
	db #02,#0b,#22,#02,#03,#ff,#24,#02
	db #03,#a4,#03,#a4,#03,#ba,#0b,#a4
	db #03,#24,#82,#20,#82,#20,#82,#3a
	db #02,#0b,#20,#02,#03,#22,#82,#a2
	db #03,#a2,#03,#ba,#0b,#a2,#03,#22
	db #82,#9f,#03,#ba,#0b,#1f,#02,#03
	db #3a,#02,#0b,#1f,#02,#03,#ff,#30
	db #0c,#04,#30,#82,#32,#82,#33,#84
	db #32,#84,#2e,#82,#2b,#86,#ff,#30
	db #0c,#04,#30,#82,#37,#82,#35,#90
	db #ff,#3c,#0c,#04,#3c,#82,#3e,#82
	db #3f,#84,#3e,#84,#3a,#82,#37,#86
	db #ff,#3c,#0c,#04,#3c,#82,#43,#82
	db #41,#90,#ff,#c3,#09,#3c,#8d,#bc
	db #09,#c3,#09,#44,#84,#43,#84,#3f
	db #84,#41,#84,#ff,#c3,#09,#3c,#8b
	db #3a,#82,#3c,#8c,#bc,#09,#be,#09
	db #3f,#82,#3e,#82,#ff,#c3,#03,#c1
	db #03,#bf,#03,#be,#03,#3f,#82,#3c
	db #82,#41,#82,#44,#82,#c3,#03,#c1
	db #03,#bf,#03,#be,#03,#41,#82,#3a
	db #82,#be,#03,#c1,#03,#bf,#03,#be
	db #03,#3f,#82,#3e,#82,#3a,#82,#3c
	db #82,#ff,#c3,#03,#c1,#03,#bf,#03
	db #be,#03,#3f,#82,#3c,#82,#41,#82
	db #44,#82,#c3,#03,#c1,#03,#bf,#03
	db #be,#03,#46,#82,#c6,#03,#c8,#03
	db #4a,#82,#46,#82,#4d,#82,#4f,#82
	db #cb,#03,#ca,#03,#c8,#03,#c6,#03
	db #ff,#c3,#07,#c6,#07,#c8,#07,#c3
	db #07,#c6,#07,#c8,#07,#c3,#07,#c6
	db #07,#cb,#07,#ca,#07,#c8,#07,#c6
	db #07,#c8,#07,#c3,#07,#c1,#07,#bf
	db #07,#c1,#07,#c6,#07,#ca,#07,#c1
	db #07,#c6,#07,#ca,#07,#c1,#07,#c6
	db #07,#cb,#07,#ca,#07,#c8,#07,#c6
	db #07,#c8,#07,#ca,#07,#c6,#07,#c8
	db #07,#ff,#3c,#0c,#06,#3c,#82,#3e
	db #82,#3f,#84,#3e,#84,#3a,#84,#37
	db #84,#ff,#3c,#0c,#06,#43,#82,#41
	db #92,#ff,#30,#02,#01,#37,#82,#37
	db #82,#30,#82,#2c,#82,#33,#82,#33
	db #82,#2c,#82,#2e,#82,#35,#82,#35
	db #82,#2e,#82,#2b,#82,#32,#82,#2b
	db #82,#32,#82,#ff
;
.music_info
	db "CPC-Telegramm 07 (1995)(FrankenTeam)(Kangaroo)",0
	db "ST-Module - Funny",0

	read "music_end.asm"
