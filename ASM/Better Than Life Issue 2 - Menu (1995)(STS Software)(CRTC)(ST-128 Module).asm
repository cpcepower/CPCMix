; Music of Better Than Life Issue 2 - Menu (1995)(STS Software)(CRTC)(ST-128 Module)
; Ripped by Megachur the 27/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BETTLI2M.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #a400

	read "music_header.asm"

	jp la433	; init
	jp la5a1	; play
	jp la4b5	; stop
	jp la416	; sound fx
	ld bc,la804
	ld de,la820
	ld hl,la83c
	ret
.la416
	ld ix,la848
	ld (la5cc),ix
	ld (ix+#0a),#00
	ld (ix+#0b),#20
	ld (ix+#0e),#01
	ld (ix+#0f),d
	ld a,e
	and #f0
	jp la6b4
;
.real_init_music
.la433
;
	ld iy,la861
.la437
	dec e
	jr z,la444
	ld c,(iy+#00)
	ld b,(iy+#01)
	add iy,bc
	jr la437
.la444
	ld b,#03
	ld ix,la7f4
	ld de,#001c
.la44d
	inc iy
	inc iy
	ld (ix-#06),#01
	ld (ix+#09),#00
	ld (ix+#0b),#ff
	ld (ix+#0c),#00
	ld (ix+#0d),#0f
	ld (ix+#0e),#01
	ld l,(iy+#00)
	ld (ix-#02),l
	ld h,(iy+#01)
	ld (ix-#01),h
	ld a,(hl)
	ld (ix-#05),a
	inc hl
	ld a,(hl)
	ld (ix-#04),a
	inc hl
	ld a,(hl)
	ld (ix-#03),a
	add ix,de
	djnz la44d
	ld a,#01
	ld (la5a2),a
	ld a,(iy+#04)
	ld (la5bf),a
	ld e,#05
	add iy,de
	ld (la85b),iy
	ld a,#38
	ld (la5e9),a
	ld hl,la85d
	ld b,#04
.la4a4
	ld (hl),#ff
	inc hl
	djnz la4a4
	ld a,#0c
	ld c,d
	call la60a
	ld a,#0d
	ld c,d
	call la60a
;
.stop_music
.la4b5
;
	ld a,#08
	ld c,#00
	call la60a
	ld a,#09
	ld c,#00
	call la60a
	ld a,#0a
	ld c,#00
	call la60a
	ld a,#07
	ld c,#1f
.la4cf equ $ + 1
	jp la60a
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
	dw #000f,#000e,#000d,#000c
	dw #000c,#000b,#000a,#0000
;
.play_music
.la5a1
;
.la5a2 equ $ + 1
	ld a,#00
	dec a
	ld (la5a2),a
	jr nz,la5c3
	ld ix,la7f4
	call la628
	ld ix,la810
	call la628
	ld ix,la82c
	call la628
.la5bf equ $ + 1
	ld a,#00
	ld (la5a2),a
.la5c3
	ld ix,la7f4
	call la738
.la5cc equ $ + 2
	ld ix,la810
	call la738
	ld ix,la82c
	call la738
	ld hl,la85d
.la5dc equ $ + 1
	ld a,#00
	cp (hl)
	jr z,la5e7
	ld (hl),a
	ld c,a
	ld a,#06
	call la60a
.la5e7
	inc hl
.la5e9 equ $ + 1
	ld a,#00
	cp (hl)
	jr z,la5f4
	ld (hl),a
	ld c,a
	ld a,#07
	call la60a
.la5f4
	inc hl
.la5f6 equ $ + 1
	ld a,#00
	cp (hl)
	jr z,la601
	ld (hl),a
	ld c,a
	ld a,#0b
	call la60a
.la601
	inc hl
.la603 equ $ + 1
	ld a,#00
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
.la60a
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
.la628
	dec (ix-#06)
	ret nz
	ld l,(ix-#04)
	ld h,(ix-#03)
.la632
	ld a,(hl)
	or a
	jr z,la682
	cp #fe
	jr z,la673
	cp #ff
	jr z,la68f
	bit 7,a
	jr nz,la665
	ld (ix+#0f),a
	inc hl
	ld e,(hl)
	bit 7,e
	jr nz,la650
	inc hl
	ld a,(hl)
	call la6b4
.la650
	res 7,e
.la652
	inc hl
	ld (ix-#04),l
	ld (ix-#03),h
	ld (ix+#0a),#00
	ld (ix+#0b),#20
	ld (ix-#06),e
	ret
.la665
	and #7f
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	call la6b4
	ld e,#01
	jr la652
.la673
	ld c,#00
	ld (ix+#0b),#ff
	ld (ix+#10),c
	ld a,(ix-#08)
	call la60a
.la682
	inc hl
	ld a,(hl)
	ld (ix-#06),a
	inc hl
	ld (ix-#04),l
	ld (ix-#03),h
	ret
.la68f
	ld l,(ix-#02)
	ld h,(ix-#01)
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	cp #80
	jr nz,la6a2
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
.la6a2
	ld (ix-#02),l
	ld (ix-#01),h
	ld a,(hl)
	inc hl
	ld (ix-#05),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp la632
.la6b4
	ld b,a
	and #f0
	cp (ix+#0e)
	jr z,la6e2
	push de
	push hl
	ld (ix+#0e),a
	ld hl,(la85b)
	rrca
	add #20
	ld e,a
	ld d,#00
	add hl,de
	push ix
	pop de
	ld c,#08
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop hl
	pop de
.la6e2
	ld a,b
	and #0f
	ret z
	cp #0f
	jr z,la70a
	cp #0d
	jr z,la724
	cp #0b
	jr z,la72a
	cp #01
	jr z,la730
	cp #08
	ret c
	ld (ix+#0c),#10
	ld (ix+#09),#00
	ld (la603),a
	inc hl
	ld a,(hl)
	ld (la5f6),a
	ret
.la70a
	ld (ix+#0c),#00
	inc hl
	ld a,(hl)
	push hl
	add a
	ld c,a
	ld b,#00
	ld hl,(la85b)
	add hl,bc
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	pop hl
	ret
.la724
	inc hl
	ld a,(hl)
	ld (la5bf),a
	ret
.la72a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	ret
.la730
	xor a
	ld (ix+#09),a
	ld (ix+#0c),a
	ret
.la738
	ld a,(ix+#0b)
	cp #ff
	ret z
	ld e,(ix+#0a)
	ld d,#00
	ld a,(ix+#09)
	or a
	jr z,la74f
	ld h,a
	ld l,(ix+#08)
	add hl,de
	ld a,(hl)
.la74f
	add (ix+#0f)
	add (ix-#05)
	ld c,a
	ld b,d
	ld hl,la4cf
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#04)
	ld h,(ix+#05)
	add hl,de
	add hl,de
	push de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	pop de
	add hl,bc
	ld a,(ix-#09)
	ld c,l
	call la60a
	ld a,(ix-#09)
	inc a
	ld c,h
	call la60a
	ld (ix+#11),l
	ld (ix+#12),h
	ld l,(ix+#00)
	ld h,(ix+#01)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,la7a3
	ld c,(ix+#0d)
	cp c
	jr c,la796
	ld a,c
.la796
	ld (ix+#10),a
	or (ix+#0c)
	ld c,a
	ld a,(ix-#08)
	call la60a
.la7a3
	ld l,(ix+#02)
	ld h,(ix+#03)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,la7c5
	ld c,(ix-#07)
	or a
	jr z,la7bc
	ld (la5dc),a
	ld a,c
	sub #40
	ld c,a
.la7bc
	ld hl,la7c4
	ld (hl),c
	ld hl,la5e9
.la7c4 equ $ + 1
	set 0,(hl)
.la7c5
	dec (ix+#0b)
	jr nz,la7e1
	ld a,(ix+#07)
	or a
	jr z,la7da
	ld (ix+#0b),a
	ld a,(ix+#06)
	ld (ix+#0a),a
	ret
.la7da
	ld hl,la810
	ld (la5cc),hl
	ret
.la7e1
	inc e
	ld (ix+#0a),e
	ret
	db #a4,#43,#52,#54,#43,#00,#08,#de
.la7f4 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la804 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#02,#09,#e6,#00,#00,#00,#00
.la810 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la820 equ $ + 2
	db #00,#00,#00,#00,#00,#04,#0a,#ee
.la82c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la83c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#02,#09,#e6,#00,#00,#00,#00
.la848 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
.la85d equ $ + 7
.la85b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.la861 equ $ + 3
	db #00,#00,#00,#ac,#0b,#a5,#b2,#1d
	db #b3,#95,#b3,#c4,#06,#06,#25,#b2
	db #45,#b2,#65,#b2,#85,#b2,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#25,#af
	db #45,#af,#65,#af,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#a5,#af
	db #43,#af,#43,#af,#1a,#06,#00,#00
	db #00,#00,#00,#00,#00,#00,#c5,#af
	db #e5,#af,#05,#b0,#00,#00,#45,#b0
	db #42,#af,#65,#b0,#16,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#a5,#b0
	db #c5,#b0,#43,#af,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#e5,#b0
	db #43,#af,#05,#b1,#16,#0a,#e5,#b0
	db #43,#af,#45,#b1,#16,#0a,#85,#b1
	db #a5,#b1,#c5,#b1,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#05,#b2
	db #43,#af,#c5,#b1,#00,#00,#fe,#20
	db #ff,#3d,#02,#00,#38,#82,#3d,#82
	db #38,#82,#3b,#81,#3d,#82,#38,#82
	db #38,#81,#36,#82,#38,#82,#34,#82
	db #33,#81,#34,#83,#31,#88,#ff,#38
	db #20,#2f,#00,#ff,#3d,#02,#01,#b8
	db #0b,#0f,#bd,#0b,#0c,#bd,#0b,#0f
	db #b8,#0b,#0c,#b8,#0b,#0f,#bd,#0b
	db #0c,#bb,#0b,#0f,#bd,#0b,#0f,#bd
	db #0b,#0a,#b8,#0b,#0f,#bd,#0b,#0c
	db #b8,#0b,#0f,#b6,#0b,#0f,#bd,#0b
	db #0a,#b8,#0b,#0f,#b6,#0b,#0c,#b4
	db #0b,#0f,#b8,#0b,#0c,#b3,#0b,#0f
	db #b4,#0b,#0f,#b8,#0b,#0a,#b3,#0b
	db #0c,#31,#02,#0b,#0f,#b3,#0b,#0a
	db #31,#03,#0b,#0c,#31,#02,#0b,#0a
	db #ff,#19,#03,#50,#19,#81,#2a,#02
	db #40,#19,#02,#50,#1c,#83,#1c,#81
	db #2a,#02,#40,#1c,#02,#50,#1e,#83
	db #1e,#81,#2a,#02,#40,#1e,#02,#50
	db #20,#82,#1e,#82,#2a,#02,#40,#1b
	db #02,#50,#ff,#00,#20,#ff,#3d,#02
	db #0b,#0f,#b8,#0b,#0f,#bd,#0b,#0c
	db #bd,#0b,#0f,#b8,#0b,#0c,#b8,#0b
	db #0f,#bd,#0b,#0c,#bb,#0b,#0f,#bd
	db #0b,#0f,#bd,#0b,#0a,#b8,#0b,#0f
	db #bd,#0b,#0c,#b8,#0b,#0f,#b6,#0b
	db #0f,#bd,#0b,#0a,#b8,#0b,#0f,#b6
	db #0b,#0c,#b4,#0b,#0f,#b8,#0b,#0c
	db #b3,#0b,#0f,#b4,#0b,#0f,#b8,#0b
	db #0a,#b3,#0b,#0c,#31,#02,#0b,#0f
	db #b3,#0b,#0a,#b1,#0b,#0c,#3b,#04
	db #ab,#0f,#ff,#3d,#08,#a0,#3f,#82
	db #40,#82,#3f,#82,#3d,#82,#38,#84
	db #38,#84,#39,#82,#38,#82,#36,#84
	db #ff,#34,#10,#2f,#02,#33,#90,#ff
	db #34,#10,#a0,#33,#90,#ff,#21,#03
	db #50,#21,#81,#2a,#02,#40,#21,#02
	db #50,#21,#83,#21,#81,#2a,#02,#40
	db #21,#02,#50,#20,#83,#20,#81,#2a
	db #02,#40,#20,#02,#50,#20,#82,#1e
	db #82,#2a,#02,#40,#1b,#02,#50,#ff
	db #39,#10,#a0,#38,#84,#3c,#84,#3d
	db #84,#3f,#84,#ff,#38,#02,#0f,#03
	db #38,#81,#31,#02,#0f,#03,#31,#81
	db #38,#82,#38,#82,#31,#84,#31,#82
	db #38,#82,#38,#81,#31,#82,#31,#81
	db #38,#82,#39,#82,#38,#82,#36,#82
	db #38,#82,#ff,#38,#02,#0f,#03,#38
	db #81,#31,#02,#0f,#03,#31,#81,#38
	db #82,#38,#82,#31,#84,#31,#82,#38
	db #82,#38,#81,#31,#82,#31,#81,#38
	db #82,#36,#82,#34,#82,#33,#82,#2f
	db #82,#ff,#2d,#08,#a1,#31,#84,#34
	db #84,#38,#90,#ff,#2d,#08,#a0,#31
	db #84,#34,#84,#3d,#88,#3c,#88,#ff
	db #39,#10,#a0,#38,#84,#30,#84,#31
	db #84,#33,#84,#ff,#21,#03,#50,#21
	db #81,#2a,#02,#40,#21,#02,#50,#21
	db #83,#21,#81,#2a,#02,#40,#21,#02
	db #50,#20,#83,#20,#81,#2a,#02,#40
	db #20,#02,#50,#20,#82,#1e,#82,#20
	db #81,#1e,#81,#1c,#81,#1b,#81,#ff
	db #31,#03,#0b,#0f,#31,#03,#0b,#0c
	db #31,#02,#0b,#0f,#33,#82,#b3,#0b
	db #0c,#b4,#0b,#0f,#b3,#0b,#0a,#b4
	db #0b,#0c,#b3,#0b,#0f,#b4,#0b,#0a
	db #b3,#0b,#0c,#b4,#0b,#0f,#b3,#0b
	db #0a,#b4,#0b,#0c,#b3,#0b,#0f,#b4
	db #0b,#0a,#b3,#0b,#0c,#b4,#0b,#0f
	db #b3,#0b,#0a,#b4,#0b,#0c,#b3,#0b
	db #0f,#b4,#0b,#0a,#b3,#0b,#0c,#b4
	db #0b,#0f,#b3,#0b,#0a,#b4,#0b,#0c
	db #ff,#19,#02,#50,#19,#81,#19,#81
	db #a9,#40,#19,#02,#50,#19,#81,#1c
	db #82,#1c,#81,#1c,#81,#a9,#40,#1c
	db #02,#50,#1c,#81,#17,#82,#17,#81
	db #17,#81,#a9,#40,#17,#02,#50,#17
	db #81,#14,#82,#14,#81,#14,#81,#a9
	db #40,#9b,#50,#a9,#40,#97,#50,#ff
	db #34,#03,#0b,#0f,#34,#03,#0b,#0c
	db #34,#02,#0b,#0f,#36,#82,#b6,#0b
	db #0c,#b8,#0b,#0f,#b6,#0b,#0a,#b8
	db #0b,#0c,#b6,#0b,#0f,#b8,#0b,#0a
	db #b6,#0b,#0c,#b8,#0b,#0f,#b6,#0b
	db #0a,#b8,#0b,#0c,#b6,#0b,#0f,#b8
	db #0b,#0a,#b6,#0b,#0c,#b8,#0b,#0f
	db #b6,#0b,#0a,#b8,#0b,#0c,#b6,#0b
	db #0f,#b8,#0b,#0a,#b6,#0b,#0c,#b8
	db #0b,#0f,#b6,#0b,#0a,#b8,#0b,#0c
	db #ff,#34,#03,#0b,#0f,#34,#03,#0b
	db #0c,#34,#02,#0b,#0f,#36,#82,#b6
	db #0b,#0c,#b8,#0b,#0f,#b6,#0b,#0a
	db #b8,#0b,#0c,#b6,#0b,#0f,#b8,#0b
	db #0a,#b6,#0b,#0c,#b8,#0b,#0f,#b6
	db #0b,#0a,#b8,#0b,#0c,#b6,#0b,#0f
	db #b8,#0b,#0a,#b6,#0b,#0c,#b8,#0b
	db #0f,#b6,#0b,#0a,#b8,#0b,#0c,#bb
	db #0b,#0f,#b8,#0b,#0a,#bb,#0b,#0c
	db #c0,#0b,#0f,#bb,#0b,#0a,#c0,#0b
	db #0c,#ff,#3c,#10,#2f,#00,#3d,#10
	db #2f,#01,#ff,#3c,#02,#0b,#0f,#b5
	db #0b,#0f,#bc,#0b,#0c,#bc,#0b,#0f
	db #b5,#0b,#0c,#b5,#0b,#0f,#bc,#0b
	db #0c,#ba,#0b,#0f,#bc,#0b,#0f,#b5
	db #0b,#0c,#b5,#0b,#0f,#bc,#0b,#0c
	db #b5,#0b,#0f,#ba,#0b,#0f,#bc,#0b
	db #0a,#bc,#0b,#0f,#ba,#0b,#0c,#b8
	db #0b,#0f,#bc,#0b,#0c,#b7,#0b,#0f
	db #b8,#0b,#0f,#bc,#0b,#0a,#b7,#0b
	db #0c,#35,#02,#0b,#0f,#b7,#0b,#0a
	db #35,#03,#0b,#0f,#35,#82,#ff,#9d
	db #50,#1d,#81,#1d,#81,#1b,#81,#29
	db #02,#40,#20,#02,#50,#22,#82,#20
	db #81,#1f,#81,#a9,#40,#a0,#50,#1d
	db #82,#1d,#81,#1d,#81,#1d,#81,#1b
	db #81,#29,#02,#40,#20,#02,#50,#1b
	db #82,#1d,#81,#20,#81,#a9,#40,#9f
	db #50,#1d,#82,#ff,#3c,#02,#0b,#0f
	db #b5,#0b,#0f,#bc,#0b,#0c,#bc,#0b
	db #0f,#b5,#0b,#0c,#b5,#0b,#0f,#bc
	db #0b,#0c,#ba,#0b,#0f,#bc,#0b,#0f
	db #b5,#0b,#0c,#b5,#0b,#0f,#bc,#0b
	db #0c,#b5,#0b,#0f,#ba,#0b,#0f,#bc
	db #0b,#0a,#bc,#0b,#0f,#ba,#0b,#0c
	db #b8,#0b,#0f,#bc,#0b,#0c,#b7,#0b
	db #0f,#b8,#0b,#0f,#bc,#0b,#0a,#b7
	db #0b,#0c,#41,#02,#0b,#0f,#b7,#0b
	db #0a,#41,#03,#0b,#0c,#41,#02,#0b
	db #0a,#ff,#3c,#10,#2f,#00,#3d,#08
	db #2f,#01,#3c,#08,#2f,#00,#ff,#3c
	db #02,#0b,#0f,#b5,#0b,#0f,#bc,#0b
	db #0c,#bc,#0b,#0f,#b5,#0b,#0c,#b5
	db #0b,#0f,#bc,#0b,#0c,#ba,#0b,#0f
	db #bc,#0b,#0f,#b5,#0b,#0c,#b5,#0b
	db #0f,#bc,#0b,#0c,#b5,#0b,#0f,#ba
	db #0b,#0f,#bc,#0b,#0a,#bc,#0b,#0f
	db #ba,#0b,#0c,#b8,#0b,#0f,#bc,#0b
	db #0c,#b7,#0b,#0f,#b8,#0b,#0f,#bc
	db #0b,#0a,#b7,#0b,#0c,#35,#04,#0b
	db #0f,#2c,#02,#f0,#2a,#81,#29,#81
	db #ff,#9d,#50,#1d,#81,#1d,#81,#1b
	db #81,#29,#02,#40,#20,#02,#50,#22
	db #82,#20,#81,#1f,#81,#a9,#40,#a0
	db #50,#1d,#82,#1d,#81,#1d,#81,#1d
	db #81,#1b,#81,#29,#02,#40,#20,#02
	db #50,#68,#08,#71,#ff,#3c,#10,#2f
	db #00,#3d,#08,#2f,#01,#fe,#08,#ff
	db #25,#04,#f0,#2e,#81,#2c,#81,#29
	db #84,#25,#82,#2e,#84,#25,#83,#25
	db #81,#2c,#81,#2a,#82,#29,#83,#25
	db #82,#2e,#84,#ff,#41,#04,#a0,#3c
	db #84,#3f,#84,#3a,#84,#3d,#84,#38
	db #84,#3c,#84,#3d,#82,#3c,#82,#ff
	db #a5,#b0,#9d,#50,#1b,#81,#1b,#81
	db #a9,#40,#ac,#b0,#29,#81,#9b,#50
	db #20,#81,#20,#81,#a5,#b0,#9b,#50
	db #a9,#40,#9b,#50,#18,#81,#18,#81
	db #a5,#b0,#9d,#50,#1d,#81,#a5,#b0
	db #a9,#40,#aa,#b0,#9d,#50,#a9,#b0
	db #9d,#50,#1d,#81,#a5,#b0,#9d,#50
	db #a9,#40,#9d,#50,#1d,#81,#1d,#81
	db #ff,#35,#04,#a0,#30,#84,#33,#84
	db #2e,#84,#31,#84,#2c,#84,#30,#84
	db #2c,#82,#29,#82,#ff,#11,#02,#91
	db #1d,#82,#11,#81,#1d,#82,#11,#81
	db #1e,#82,#11,#81,#1b,#82,#0f,#81
	db #24,#82,#11,#82,#1d,#82,#11,#81
	db #1d,#82,#11,#81,#1e,#82,#11,#81
	db #1b,#82,#11,#81,#18,#82,#ff,#35
	db #02,#0b,#0f,#b7,#0b,#0a,#b5,#0b
	db #0c,#3c,#02,#0b,#0f,#b5,#0b,#0a
	db #bc,#0b,#0c,#3d,#02,#0b,#0f,#bc
	db #0b,#0a,#bd,#0b,#0c,#3c,#02,#0b
	db #0f,#b8,#0b,#0f,#3c,#02,#0b,#0c
	db #b8,#0b,#0c,#3c,#02,#0b,#0a,#38
	db #82,#38,#02,#0b,#0f,#ba,#0b,#0f
	db #b8,#0b,#0c,#b8,#0b,#0f,#ba,#0b
	db #0c,#b7,#0b,#0f,#b8,#0b,#0c,#ba
	db #0b,#0a,#b7,#0b,#0c,#ff,#11,#02
	db #a1,#1d,#82,#11,#81,#1d,#82,#11
	db #81,#1e,#82,#11,#81,#1b,#82,#0f
	db #81,#18,#82,#11,#82,#1d,#82,#11
	db #81,#1d,#82,#11,#81,#1e,#82,#11
	db #81,#1b,#82,#11,#81,#18,#82,#ff
	db #49,#02,#0b,#0f,#c9,#0b,#0a,#c9
	db #0b,#0c,#3d,#02,#0b,#0f,#c9,#0b
	db #0a,#bd,#0b,#0c,#44,#02,#0b,#0f
	db #c7,#0b,#0f,#c4,#0b,#0c,#c9,#0b
	db #0f,#c7,#0b,#0c,#bd,#0b,#0f,#c9
	db #0b,#0c,#c7,#0b,#0a,#bd,#0b,#0c
	db #3d,#02,#0b,#0f,#bd,#0b,#0a,#bd
	db #0b,#0c,#3d,#02,#0b,#0f,#c4,#0b
	db #0f,#bd,#0b,#0c,#c7,#0b,#0f,#c4
	db #0b,#0c,#c9,#0b,#0f,#c7,#0b,#0c
	db #c4,#0b,#0a,#c9,#0b,#0c,#ff,#0f
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
	db #0b,#0a,#0a,#09,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #03,#02,#02,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0b
	db #0b,#0b,#0b,#0c,#0c,#0c,#0c,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#0a
	db #0a,#09,#09,#08,#08,#06,#05,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0d
	db #0d,#0d,#0d,#0d,#0c,#0b,#0a,#09
	db #08,#06,#06,#07,#08,#09,#0a,#09
	db #08,#09,#0a,#09,#08,#08,#09,#0a
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#00
	db #00,#20,#00,#40,#00,#60,#00,#a0
	db #00,#e0,#00,#00,#00,#20,#00,#40
	db #00,#60,#00,#a0,#00,#e0,#00,#00
	db #00,#20,#00,#40,#00,#60,#00,#80
	db #00,#a0,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#01,#00,#01,#00,#0f
	db #0f,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#0a,#0a,#09,#09
	db #09,#09,#09,#09,#08,#08,#07,#07
	db #07,#06,#06,#05,#05,#00,#00,#11
	db #04,#08,#02,#0d,#02,#15,#05,#0a
	db #0f,#06,#03,#0d,#16,#04,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#0f
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0d,#0d,#0d,#0d,#0d,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#ff
	db #ff,#fe,#ff,#ff,#ff,#00,#00,#01
	db #00,#02,#00,#01,#00,#00,#00,#00
	db #00,#01,#00,#02,#00,#03,#00,#02
	db #00,#01,#00,#ff,#ff,#fe,#ff,#fd
	db #ff,#fe,#ff,#ff,#ff,#02,#00,#03
	db #00,#04,#00,#03,#00,#02,#00,#0f
	db #0f,#0f,#0f,#0f,#0e,#0e,#0d,#0c
	db #0a,#06,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#1c
	db #0d,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#32,#00,#64,#00,#91,#00,#be
	db #00,#eb,#00,#22,#01,#4a,#01,#7c
	db #01,#a9,#01,#d6,#01,#08,#02,#3a
	db #02,#6c,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #0f,#0f,#0f,#0f,#0e,#0e,#0d,#0c
	db #09,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#fc,#fc,#f9,#f9,#00,#00,#fc
	db #fc,#f9,#f9,#00,#00,#fc,#fc,#f9
	db #f9,#00,#00,#fc,#fc,#f9,#f9,#00
	db #00,#fc,#fc,#f9,#f9,#00,#00,#00
	db #00,#fb,#fb,#f8,#f8,#00,#00,#fb
	db #fb,#f8,#f8,#00,#00,#fb,#fb,#f8
	db #f8,#00,#00,#fb,#fb,#f8,#f8,#00
	db #00,#fb,#fb,#f8,#f8,#00,#00,#00
	db #00,#fd,#fd,#f9,#f9,#00,#00,#fd
	db #fd,#f9,#f9,#00,#00,#fd,#fd,#f9
	db #f9,#00,#00,#fd,#fd,#f9,#f9,#00
	db #00,#fd,#fd,#f9,#f9,#00,#00,#0c
	db #00,#00,#0c,#0c,#00,#00,#0c,#0c
	db #00,#00,#0c,#0c,#00,#00,#0c,#0c
	db #00,#00,#0c,#0c,#00,#00,#0c,#0c
	db #00,#00,#0c,#0c,#00,#00,#0c,#00
	db #0c,#a9,#00,#2d,#a9,#00,#2d,#a9
	db #00,#b1,#a9,#00,#2d,#a9,#00,#1f
	db #aa,#00,#2d,#a9,#00,#1f,#aa,#00
	db #1f,#aa,#00,#2d,#a9,#00,#2d,#a9
	db #00,#1f,#aa,#00,#1f,#aa,#00,#2d
	db #a9,#00,#1f,#aa,#00,#2d,#a9,#00
	db #1f,#aa,#00,#1f,#aa,#00,#2d,#a9
	db #00,#2d,#a9,#00,#2d,#a9,#00,#2d
	db #a9,#00,#28,#ac,#00,#28,#ac,#02
	db #28,#ac,#02,#10,#ad,#00,#9b,#ad
	db #00,#9b,#ad,#02,#9b,#ad,#02,#9b
	db #ad,#02,#28,#ac,#02,#28,#ac,#02
	db #28,#ac,#02,#28,#ac,#00,#2b,#ae
	db #00,#2b,#ae,#02,#28,#ac,#02,#28
	db #ac,#02,#2d,#a9,#80,#ab,#b2,#00
	db #0f,#a9,#00,#32,#a9,#00,#32,#a9
	db #00,#b4,#a9,#00,#09,#aa,#00,#26
	db #aa,#00,#09,#aa,#00,#56,#aa,#00
	db #56,#aa,#00,#62,#aa,#00,#89,#aa
	db #00,#b0,#aa,#00,#ba,#aa,#00,#09
	db #aa,#00,#26,#aa,#00,#09,#aa,#00
	db #56,#aa,#00,#c6,#aa,#00,#fe,#aa
	db #00,#fe,#aa,#00,#86,#ab,#00,#d7
	db #ab,#00,#31,#ac,#00,#ba,#ac,#02
	db #31,#ac,#02,#1d,#ad,#00,#a6,#ad
	db #00,#a6,#ad,#02,#a6,#ad,#02,#a6
	db #ad,#02,#c2,#ad,#02,#b1,#a9,#02
	db #17,#ae,#02,#b1,#a9,#00,#55,#ae
	db #00,#55,#ae,#02,#55,#ae,#02,#55
	db #ae,#02,#32,#a9,#80,#23,#b3,#00
	db #0c,#a9,#00,#0c,#a9,#00,#87,#a9
	db #00,#87,#a9,#00,#87,#a9,#00,#2c
	db #aa,#00,#87,#a9,#00,#2c,#aa,#00
	db #2c,#aa,#00,#87,#a9,#00,#87,#a9
	db #00,#2c,#aa,#00,#2c,#aa,#00,#87
	db #a9,#00,#2c,#aa,#00,#87,#a9,#00
	db #2c,#aa,#00,#d2,#aa,#00,#4f,#ab
	db #00,#4f,#ab,#00,#4f,#ab,#00,#4f
	db #ab,#00,#85,#ac,#00,#85,#ac,#02
	db #85,#ac,#02,#6f,#ad,#00,#6f,#ad
	db #00,#6f,#ad,#02,#6f,#ad,#02,#6f
	db #ad,#02,#d6,#ad,#02,#d6,#ad,#02
	db #d6,#ad,#02,#d6,#ad,#00,#a4,#ae
	db #00,#a4,#ae,#02,#d6,#ad,#02,#d6
	db #ad,#02,#ce,#ae,#80,#9b,#b3,#00
	db #00
;
.init_music	; added by Megachur
;
	ld e,#01
	jp real_init_music
;
.music_info
	db "Better Than Life Issue 2 - Menu (1995)(STS Software)(CRTC)",0
	db "ST-128 Module",0

	read "music_end.asm"