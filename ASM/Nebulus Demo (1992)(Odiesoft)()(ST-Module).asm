; Music of Nebulus Demo (1992)(Odiesoft)()(ST-Module)
; Ripped by Megachur the 10/06/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "NEBULUSD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2018
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
	ld a,#08
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
	dw l8662,l866b,l8674
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
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l83da
	db #00,#00,#00,#01,#08,#00,#00,#00
.l83e8 equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l83f6 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l8404 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8412
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l8420 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
	db #53,#54,#2d,#4d,#6f,#64,#75,#6c
	db #65,#2e
.l8442
	dw l84e2,l8522,l8542,#0000
	db #dc,#7e,#8b,#2b,#85,#26,#a4,#a0
	db #79,#19,#73,#13,#6d,#0d,#8b,#88
	db #61,#01,#5a,#fa,#54,#f4,#72,#6f
	db #62,#85,#a2,#85,#42,#85,#08,#18
	db #e2,#84,#c2,#85,#42,#85,#00,#00
	db #19,#ba,#14,#b4,#0f,#af,#2e,#2c
	db #05,#a6,#01,#a2,#fd,#9d,#1d,#1b
	db #e2,#85,#22,#86,#42,#85,#00,#00
	db #e8,#89,#dc,#7e,#dc,#7e,#00,#00
	db #dc,#7e,#dc,#7e,#dc,#7e,#00,#00
	db #dc,#7e,#dc,#7e,#dc,#7e,#00,#00
	db #dc,#7e,#dc,#7e,#dc,#7e,#00,#00
	db #dc,#7e,#dc,#7e,#dc,#7e,#00,#00
	db #dc,#7e,#dc,#7e,#dc,#7e,#00,#00
	db #dc,#7e,#dc,#7e,#dc,#7e,#00,#00
.l84c2
	db #dc,#7e,#42,#86,#dc,#7e,#dc,#7e
	db #dc,#7e,#dc,#7e,#dc,#7e,#dc,#7e
	db #dc,#7e,#dc,#7e,#dc,#7e,#dc,#7e
	db #dc,#7e,#dc,#7e,#dc,#7e,#dc,#7e
.l84e2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8522
	db #0f,#0e,#0d,#0c,#0b,#0b,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#09,#07,#05,#03,#02,#00
.l8542
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #09,#0a,#0b,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0e,#0d,#0c,#0b,#0a,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#01
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #03,#00,#03,#00,#04,#00,#04,#00
	db #05,#00,#05,#00,#06,#00,#06,#00
	db #07,#00,#07,#00,#08,#00,#08,#00
	db #09,#00,#09,#00,#0a,#00,#0a,#00
	db #0b,#00,#0b,#00,#0c,#00,#0c,#00
	db #0d,#00,#0d,#00,#0e,#00,#0e,#00
	db #0f,#00,#0f,#00,#10,#00,#10,#00
	db #0c,#0c,#0c,#0c,#0c,#0c,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
.l8662
	db #00,#7d,#86,#00,#80,#86,#80,#62
.l866b equ $ + 1
	db #86,#00,#83,#86,#00,#c5,#86,#80
.l8674 equ $ + 2
	db #6b,#86,#00,#ee,#86,#00,#3d,#87
	db #80,#74,#86,#00,#40,#ff,#00,#40
	db #ff,#4d,#0e,#04,#cb,#04,#ca,#04
	db #4b,#82,#ca,#04,#46,#82,#c4,#04
	db #46,#84,#46,#82,#4a,#82,#4d,#82
	db #4b,#82,#ca,#04,#4b,#82,#ca,#04
	db #cb,#04,#ca,#04,#46,#86,#c4,#04
	db #c1,#04,#c4,#04,#c6,#04,#46,#82
	db #46,#82,#c4,#04,#c1,#04,#4d,#82
	db #4d,#82,#cb,#04,#ca,#04,#c6,#04
	db #c4,#04,#ff,#4d,#0e,#04,#cb,#04
	db #ca,#04,#4b,#82,#ca,#04,#46,#82
	db #c4,#04,#46,#84,#46,#82,#4a,#82
	db #4d,#82,#52,#90,#52,#02,#08,#50
	db #82,#4e,#82,#4c,#83,#4a,#83,#48
	db #82,#fe,#02,#ff,#46,#02,#f5,#01
	db #c6,#05,#46,#84,#c6,#05,#46,#82
	db #c6,#05,#46,#82,#c6,#05,#46,#82
	db #46,#82,#c6,#05,#46,#84,#c6,#05
	db #46,#82,#c6,#05,#46,#82,#c6,#05
	db #46,#82,#44,#02,#f5,#01,#c4,#05
	db #44,#84,#c4,#05,#44,#82,#c4,#05
	db #44,#82,#c4,#05,#44,#82,#44,#82
	db #c4,#05,#44,#84,#c4,#05,#44,#82
	db #c4,#05,#44,#82,#c4,#05,#c4,#05
	db #c4,#05,#ff,#4b,#02,#f5,#01,#cb
	db #05,#4b,#84,#cb,#05,#4b,#82,#cb
	db #05,#4b,#82,#cb,#05,#4b,#82,#4b
	db #82,#cb,#05,#4b,#84,#cb,#05,#4b
	db #82,#cb,#05,#4b,#82,#cb,#05,#4b
	db #82,#46,#02,#f5,#01,#c6,#05,#46
	db #84,#c6,#05,#46,#82,#c6,#05,#46
	db #82,#c6,#05,#46,#82,#46,#82,#c6
	db #05,#46,#84,#c6,#05,#46,#82,#c6
	db #05,#46,#82,#c6,#05,#46,#82,#ff
;
.music_info
	db "Nebulus Demo (1992)(Odiesoft)()",0
	db "ST-Module",0

	read "music_end.asm"
