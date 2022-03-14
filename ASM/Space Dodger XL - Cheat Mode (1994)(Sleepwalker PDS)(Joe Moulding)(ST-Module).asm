; Music of Space Dodger XL - Cheat Mode (1994)(Sleepwalker PDS)(Joe Moulding)(ST-Module)
; Ripped by Megachur the 17/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SPACDXCM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #6a4b

	read "music_header.asm"

	jr l6a4f
	jr l6a5e
.l6a4f
	call l6a7a
	ld hl,l6e9d
	ld de,l6a67
	ld bc,l81ff
	jp #bcd7
.l6a5e
	ld hl,l6e9d
	call #bcdd
	jp l6ae6
.l6a67
	push ix
	call l6b02
	pop ix
	ret
	jp l6a7a
	jp l6b02
	jp l6ae6
	ld h,(hl)
	inc b
;
.init_music
.l6a7a
;
	ld b,#03
	ld ix,l6e49
	ld iy,l6d75
	ld de,#001c
.l6a87
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
	djnz l6a87
	ld a,#06
	ld (l6b2a),a
	ld a,d
	ld (l6b3e),a
	inc a
	ld (l6b25),a
	ld a,#38
	ld (l6b2f),a
	ld a,#ff
	ld (l6d71),a
	ld (l6d72),a
	ld (l6d73),a
	ld (l6d74),a
	ld a,#0c
	ld c,d
	call l6d53
	ld a,#0d
	ld c,d
	jp l6d53
;
.stop_music
.l6ae6
;
	ld a,#07
	ld c,#3f
	call l6d53
	ld a,#08
	ld c,#00
	call l6d53
	ld a,#09
	ld c,#00
	call l6d53
	ld a,#0a
	ld c,#00
	jp l6d53
;
.play_music
.l6b02
;
	ld hl,l6b25
	dec (hl)
	ld ix,l6e49
	ld bc,l6e57
	call l6bb8
	ld ix,l6e65
	ld bc,l6e73
	call l6bb8
	ld ix,l6e81
	ld bc,l6e8f
	call l6bb8
.l6b25 equ $ + 1
	ld a,#01
	or a
	jr nz,l6b2e
.l6b2a equ $ + 1
	ld a,#06
	ld (l6b25),a
.l6b2f equ $ + 1
.l6b2e
	ld a,#18
	ld hl,l6d72
	cp (hl)
	jr z,l6b3d
	ld (hl),a
	ld c,a
	ld a,#07
	call l6d53
.l6b3e equ $ + 1
.l6b3d
	ld a,#01
	ld hl,l6d71
	cp (hl)
	jr z,l6b4c
	ld (hl),a
	ld c,a
	ld a,#06
	call l6d53
.l6b4d equ $ + 1
.l6b4c
	ld a,#00
	ld hl,l6d73
	cp (hl)
	jr z,l6b5b
	ld (hl),a
	ld c,a
	ld a,#0b
	call l6d53
.l6b5c equ $ + 1
.l6b5b
	ld a,#00
	ld hl,l6d74
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l6d53
.l6b69
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l6c69
.l6b78
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
	jp l6d53
.l6b92
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l6ba7
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l6ba7
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l6bcb
.l6bb8
	ld a,(l6b25)
	or a
	jp nz,l6c69
	dec (ix+#06)
	jp nz,l6c69
	ld l,(ix+#00)
	ld h,(ix+#01)
.l6bcb
	ld a,(hl)
	or a
	jr z,l6b69
	cp #fe
	jr z,l6b78
	cp #ff
	jr z,l6b92
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l6d7b
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l6c07
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l6c07
	and #7f
	ld (ix+#06),a
	jr l6c5a
.l6c07
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l6c1b
	ld (ix+#05),a
	ld (ix+#0a),d
.l6c1b
	add a
	add a
	add a
	ld e,a
	ld hl,l6eb1
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
	jr z,l6c5a
	cp #f0
	jp z,l6d0f
	cp #d0
	jp z,l6d2b
	cp #b0
	jp z,l6d33
	cp #80
	jp nc,l6d3b
	cp #10
	jr nz,l6c5a
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l6c5a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l6c69
	ld a,(ix+#17)
	or a
	jr nz,l6c7d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l6c7d
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l6ca8
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l6d7b
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l6ca8
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
	call l6d53
	ld c,h
	ld a,(ix+#03)
	call l6d53
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6ce6
	and #0f
	sub (ix+#0a)
	jr nc,l6cdc
	xor a
.l6cdc
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l6d53
.l6ce6
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
	jr z,l6d03
	ld b,a
	ld a,c
	ld (l6b3e),a
	ld a,b
	sub #40
.l6d03
	ld (l6d0a),a
	ld a,(l6b2f)
.l6d0a equ $ + 1
	res 5,a
	ld (l6b2f),a
	ret
.l6d0f
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l6f31
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l6c5a
.l6d2b
	inc hl
	ld a,(hl)
	ld (l6b2a),a
	jp l6c5a
.l6d33
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l6c5a
.l6d3b
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l6b5c),a
	inc hl
	ld a,(hl)
	ld (l6b4d),a
	jp l6c5a
.l6d53
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
.l6d74 equ $ + 3
.l6d73 equ $ + 2
.l6d72 equ $ + 1
.l6d71
	db #01,#18,#00,#00
.l6d75
	dw l71b1,l71ba,l71c3
.l6d7b
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
	db #00,#00,#00,#00
.l6e49
	db #09,#72,#00,#01,#08,#04,#10,#33
.l6e57 equ $ + 6
	db #00,#00,#00,#df,#b4,#71,#d1,#6f
	db #11,#70,#31,#70,#08,#18,#1e,#02
.l6e65 equ $ + 4
	db #c9,#00,#00,#00,#53,#72,#02,#03
	db #09,#07,#10,#27,#00,#00,#00,#e7
.l6e73 equ $ + 2
	db #bd,#71,#51,#70,#91,#70,#b1,#70
	db #08,#14,#0a,#12,#92,#01,#00,#00
.l6e81
	db #e9,#72,#04,#05,#0a,#0c,#01,#21
.l6e8f equ $ + 6
	db #00,#00,#03,#ef,#c6,#71,#51,#6f
	db #71,#71,#91,#71,#00,#00,#06,#1a
.l6e9d equ $ + 4
	db #38,#02,#00,#00,#00,#00,#00,#00
	db #00,#81,#67,#6a,#ff,#00
	db #53,#54,#2d,#4d,#6f,#64,#75,#6c
	db #65,#2e
.l6eb1
	dw l6f51,l6f91,l6fb1,#0000
	dw #694b,#694b,#694b,#0000
	dw #694b,#694b,#694b,#0000
	dw #694b,#694b,#694b,#0000
	dw l6fd1,l7011,l7031,#1808
	dw #694b,#694b,#694b,#0000
	dw #694b,#694b,#694b,#0000
	dw l7051,l7091,l70b1,#1408
	dw #694b,#694b,#694b,#0000
	dw #694b,#a84b,#a84b,#0000
	dw l70d1,l7111,l7031,#1808
	dw l6fd1,l7131,l7151,#0000
	dw l6f51,l7171,l7191,#0000
	db #4b,#a8,#4b,#a8,#4b,#a8,#00,#00
	db #4b,#a8,#4b,#a8,#4b,#a8,#00,#00
	db #4b,#a8,#4b,#a8,#4b,#a8,#00,#00
.l6f31
	db #4b,#a8,#4b,#a8,#4b,#a8,#4b,#a8
	db #4b,#a8,#4b,#a8,#4b,#a8,#4b,#a8
	db #4b,#a8,#4b,#a8,#4b,#a8,#4b,#a8
	db #4b,#a8,#4b,#a8,#4b,#a8,#4b,#a8
.l6f51
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6f91
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
.l6fb1
	db #04,#06,#07,#09,#0c,#11,#17,#1d
	db #15,#10,#0c,#09,#06,#05,#04,#04
	db #03,#03,#03,#02,#02,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6fd1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7011
	db #0c,#0e,#0e,#0d,#0c,#0b,#0a,#09
	db #09,#09,#0a,#0a,#0a,#09,#09,#09
	db #0a,#0a,#0a,#09,#09,#09,#0a,#0a
	db #0a,#09,#09,#09,#0a,#0a,#0a,#09
.l7031
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7051
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
.l7091
	db #0d,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
.l70b1
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l70d1
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
.l7111
	db #0b,#0b,#0b,#0a,#0a,#0a,#0b,#0b
	db #0b,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#0b,#0b,#0b,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#0b,#0b
.l7131
	db #0f,#00,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
.l7151
	db #06,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7171
	db #0f,#0f,#0e,#0e,#0d,#0c,#0b,#0a
	db #0a,#09,#09,#08,#07,#06,#06,#06
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7191
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
.l71b1
	db #00,#00,#72,#00,#0e,#72,#80,#b1
.l71ba equ $ + 1
	db #71,#00,#4a,#72,#00,#58,#72,#80
.l71c3 equ $ + 2
	db #ba,#71,#00,#91,#72,#00,#91,#72
	db #80,#c3,#71,#22,#06,#04,#2e,#86
	db #2e,#84,#1f,#86,#2b,#86,#2b,#84
	db #20,#86,#2c,#86,#2c,#84,#1d,#86
	db #29,#86,#29,#84,#ff,#22,#06,#04
	db #2e,#86,#2e,#84,#25,#86,#31,#86
	db #31,#84,#20,#86,#2c,#86,#2c,#84
	db #1d,#86,#29,#86,#29,#84,#ff,#3a
	db #18,#04,#41,#84,#3c,#84,#3d,#98
	db #41,#84,#3c,#84,#ff,#38,#20,#04
	db #3d,#90,#3f,#90,#ff,#3a,#04,#07
	db #3a,#84,#3a,#84,#39,#82,#3a,#86
	db #3a,#84,#3a,#84,#3c,#84,#3e,#84
	db #3e,#84,#3e,#84,#3f,#82,#3c,#92
	db #ff,#3a,#04,#07,#3a,#84,#3a,#84
	db #3c,#82,#3a,#8a,#35,#88,#38,#82
	db #3a,#82,#3c,#88,#3a,#82,#35,#92
	db #ff,#2e,#18,#07,#35,#84,#30,#84
	db #31,#98,#35,#84,#30,#84,#ff,#2c
	db #20,#07,#31,#90,#33,#90,#ff,#37
	db #06,#bb,#03,#37,#02,#0b,#37,#84
	db #37,#84,#37,#86,#37,#82,#37,#84
	db #37,#84,#37,#86,#37,#82,#37,#84
	db #37,#84,#37,#86,#37,#82,#37,#84
	db #37,#84,#ff,#fe,#40,#ff,#46,#10
	db #0a,#41,#90,#48,#90,#45,#90,#ff
	db #ab,#bc,#03,#ab,#0c,#ab,#0c,#ab
	db #0c,#ab,#00,#ab,#bc,#03,#ab,#0c
	db #ab,#0c,#ab,#0c,#ab,#0c,#ab,#0c
	db #ab,#0c,#ab,#00,#ab,#bc,#03,#ab
	db #0c,#ab,#0c,#ab,#0c,#ab,#0c,#ab
	db #0c,#ab,#0c,#ab,#00,#ab,#bc,#03
	db #ab,#0c,#ab,#0c,#ab,#0c,#ab,#0c
	db #ab,#0c,#ab,#0c,#ab,#00,#ab,#bc
	db #03,#ab,#0c,#ab,#0c,#ab,#0c,#ab
	db #0c,#ab,#0c,#ab,#0c,#ab,#00,#ab
	db #bc,#03,#ab,#0c,#ab,#0c,#ab,#0c
	db #ab,#0c,#ab,#0c,#ab,#0c,#ab,#00
	db #ab,#bc,#03,#ab,#0c,#ab,#0c,#ab
	db #0c,#ab,#0c,#ab,#0c,#ab,#0c,#ab
	db #00,#ab,#bc,#03,#ab,#0c,#ab,#0c
	db #ab,#0c,#ab,#0c,#ab,#0c,#ab,#0c
	db #ab,#00,#ab,#bc,#03,#ab,#0c,#ab
	db #0c,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#cd,#3b,#00,#3b
	db #3b,#e1,#11,#3e,#00,#19,#11,#00
	db #c0,#eb,#01,#19,#00,#18,#1d,#05
	db #f8,#3e,#e5,#04,#d5,#77,#11,#00
	db #08,#19,#30,#0d,#11,#50,#c0,#19
	db #0d,#20,#06,#0e,#19,#11,#31,#f8
	db #19,#10,#ea,#d1,#1a,#13,#fe,#e5
	db #20,#e1,#1a,#13,#47,#fe,#04,#38
	db #d6,#1a,#13,#18,#d7,#e5,#ff,#00
	db #e5,#ff,#00,#e5,#ff,#00,#e5,#ff
	db #00,#e5,#ff,#00,#e5,#ff,#00,#e5
	db #ff,#00,#e5,#ff,#00,#e5,#ff,#00
	db #e5,#ff,#00,#e5,#ff,#00,#e5,#ff
	db #00,#e5,#ff,#00,#e5,#ff,#00,#e5
	db #ff,#00,#e5,#ff,#00,#e5,#ff,#00
	db #e5,#ff,#00,#e5,#ff,#00,#e5,#ff
	db #00,#e5,#17,#00,#01,#03,#e5,#06
	db #00,#c0,#80,#c0,#40,#c0,#e5,#b9
	db #00,#01,#12,#21,#03,#e5,#06,#00
	db #e5,#05,#40,#e5,#b7,#00,#01,#12
	db #30,#70,#83,#e5,#09,#00,#40,#40
	db #e5,#b6,#00,#01,#12,#30,#70,#f0
	db #f0,#03,#e5,#08,#00,#c0,#40,#00
	db #c0,#e5,#8c,#00,#e5,#05,#11,#e5
	db #11,#33,#e5,#05,#11,#e5,#0c,#00
	db #01,#12,#30,#70,#f0,#f0,#f0,#e1
	db #02,#e5,#09,#00,#40,#40,#e5,#86
	db #00,#11,#11,#11,#e5,#06,#33,#e5
	db #05,#22,#32,#22,#32,#32,#e5,#05
	db #30,#e5,#04,#32,#e5,#05,#22,#e5
	db #06,#33,#11,#11,#11,#00,#00,#00
	db #01,#12,#30,#70,#e5,#05,#f0,#83
	db #e5,#09,#00,#c0,#40,#00,#c0,#e5
	db #81,#00,#11,#11,#e5,#04,#33,#22
	db #22,#22,#e5,#09,#00,#10,#e5,#09
	db #30,#20,#20,#00,#10,#e5,#08,#00
	db #22,#22,#22,#e5,#04,#33,#11,#03
	db #70,#e5,#07,#f0,#03,#e5,#09,#00
	db #e5,#05,#40,#e5,#7d,#00,#11,#e5
	db #04,#33,#22,#22,#e5,#0c,#00,#10
	db #10,#e5,#07,#30,#20,#30,#e5,#12
	db #00,#22,#22,#03,#12,#e5,#07,#f0
	db #c3,#e5,#0a,#00,#c0,#40,#40,#c0
	db #e5,#7b,#00,#11,#33,#33,#33,#22
	db #22,#00,#00,#e5,#0d,#01,#21,#e5
	db #08,#30,#20,#00,#00,#10,#10,#e5
	db #11,#00,#01,#03,#70,#e5,#07,#f0
	db #03,#e5,#0a,#00,#e5,#04,#40,#e5
	db #79,#00,#11,#33,#33,#33,#22,#00
	db #01,#03,#12,#12,#e5,#0e,#30,#12
	db #12,#12,#21,#30,#30,#00,#20,#00
	db #10,#20,#e5,#13,#00,#03,#30,#e5
	db #07,#f0,#e1,#03,#e5,#0a,#00,#40
	db #40,#40,#c0,#e5,#78,#00,#11,#33
	db #33,#22,#00,#01,#12,#30,#30,#70
	db #70,#e5,#0e,#f0,#70,#70,#70,#30
	db #12,#03,#01,#e5,#16,#00,#03,#12
	db #e5,#08,#f0,#83,#33,#11,#e5,#09
	db #00,#40,#40,#40,#80,#e5,#77,#00
	db #11,#33,#33,#22,#01,#03,#12,#70
	db #e5,#16,#f0,#70,#30,#03,#01,#e5
	db #14,#00,#01,#03,#70,#e5,#08,#f0
	db #03,#33,#33,#11,#e5,#0a,#00,#40
	db #e5,#78,#00,#33,#33,#33,#01,#03
	db #30,#70,#e5,#08,#f0,#e5,#05,#e1
	db #e5,#0c,#f0,#30,#03,#e5,#14,#00
	db #03,#30,#e5,#08,#f0,#e1,#12,#33
	db #33,#33,#e5,#08,#00,#c0,#c0,#40
	db #c0,#e5,#77,#00,#33,#33,#00,#03
	db #03,#e5,#07,#f0,#e1,#d2,#92,#e5
	db #04,#b0,#92,#d2,#e1,#e5,#0b,#f0
	db #12,#03,#e5,#12,#00,#03,#12,#e5
	db #09,#f0,#83,#30,#30,#33,#33,#33
	db #e5,#06,#00,#e5,#05,#40,#e5,#77
	db #00,#33,#33,#00,#03,#30,#e5,#06
	db #f0,#c3,#b0,#e5,#05,#30,#20,#30
	db #10,#83,#e1,#e5,#0a,#f0,#70,#03
	db #e5,#0f,#00,#20,#01,#01,#12,#70
	db #e5,#08,#f0,#e1,#03,#30,#31,#33
	db #33,#22,#e5,#06,#00,#e5,#05,#40
	db #e5,#77,#00,#33,#33,#00,#03,#e5
	db #06,#f0,#e1,#12,#e5,#05,#30,#20
	db #20,#00,#00,#10,#83,#e5,#0b,#f0
	db #30,#03,#e5,#0b,#00,#01,#01,#03
	db #12,#12,#30,#70,#e5,#08,#f0,#e1
	db #83,#30,#20,#33,#33,#33,#e5,#08
	db #00,#40,#80,#80,#40,#e5,#78,#00
	db #33,#00,#03,#e5,#06,#f0,#83,#e5
	db #06,#30,#e5,#05,#00,#02,#e1,#e5
	db #0b,#f0,#03,#01,#e5,#05,#00,#01
	db #01,#03,#12,#12,#30,#30,#30,#70
	db #70,#e5,#08,#f0,#e1,#c2,#82,#30
	db #00,#11,#33,#33,#e5,#0a,#00,#40
	db #40,#e5,#7a,#00,#01,#03,#e5,#05
	db #f0,#e1,#12,#30,#30,#30,#20,#10
	db #00,#10,#20,#e5,#04,#00,#83,#e5
	db #0b,#f0,#30,#30,#e5,#05,#12,#30
	db #30,#30,#70,#70,#e5,#0a,#f0,#e1
	db #e1,#d2,#a0,#20,#00,#11,#33,#33
	db #33,#e5,#0a,#00,#c0,#40,#00,#c0
	db #e5,#78,#00,#01,#03,#12,#e5,#05
	db #f0,#83,#30,#20,#20,#20,#00,#00
	db #10,#e5,#06,#00,#02,#e1,#e5,#0c
	db #f0,#e5,#05,#70,#e5,#0a,#f0,#e1
	db #e1,#e1,#d2,#d2,#92,#80,#20,#00
	db #11,#33,#33,#33,#22,#e5,#0b,#00
	db #e5,#04,#40,#e5,#78,#00,#03,#30
	db #70,#e5,#04,#f0,#c3,#33,#11,#11
	db #00,#00,#20,#e5,#09,#00,#82,#c3
	db #e1,#e5,#12,#f0,#e1,#e1,#e1,#c3
	db #d2,#d2,#d2,#92,#a0,#a0,#00,#00
	db #11,#11,#33,#33,#33,#22,#22,#e5
	db #0d,#00,#40,#e5,#7b,#00,#03,#e5
	db #05,#f0,#e1,#02,#22,#e5,#04,#33
	db #11,#11,#e5,#0a,#00,#83,#e1,#e1
	db #e5,#0a,#f0,#e1,#e1,#e1,#d2,#d2
	db #d2,#b0,#b0,#b0,#30,#30,#30,#20
	db #00,#11,#11,#e5,#04,#33,#22,#22
	db #e5,#8b,#00,#03,#12,#e5,#05,#f0
	db #83,#e5,#04,#00,#22,#22,#e5,#05
	db #33,#e5,#04,#11,#e5,#04,#00,#80
	db #82,#c2,#e5,#04,#e1,#c2,#e5,#04
	db #d2,#b0,#b0,#b0,#e5,#04,#30,#e5
	db #04,#31,#e5,#05,#33,#22,#22,#e5
	db #13,#00,#e5,#05,#40,#e5,#77,#00
	db #03,#70,#e5,#04,#f0,#c3,#e5,#0a
	db #00,#e5,#04,#22,#e5,#08,#33,#e5
	db #04,#31,#b1,#31,#31,#31,#e5,#0b
	db #33,#e5,#04,#22,#e5,#18,#00,#c0
	db #40,#c0,#e5,#79,#00,#03,#f0,#f0
	db #f0,#e1,#c3,#02,#e5,#13,#00,#e5
	db #11,#22,#e5,#21,#00,#e5,#05,#40
	db #e5,#77,#00,#03,#f0,#e1,#c3,#82
	db #e5,#47,#00,#c0,#40,#40,#40,#c0
	db #e5,#77,#00,#03,#c3,#82,#e5,#49
	db #00,#40,#40,#40,#00,#40,#e5,#77
	db #00,#02,#e5,#4b,#00,#80,#00,#80
	db #80,#80,#e5,#ff,#00,#e5,#ff,#00
	db #e5,#ff,#00,#e5,#ff,#00,#e5,#ff
	db #00,#e5,#ff,#00,#e5,#ff,#00,#e5
	db #ff,#00,#e5,#ff,#00,#e5,#ff,#00
	db #e5,#ff,#00,#e5,#ff,#00,#e5,#ff
	db #00,#e5,#ff,#00,#e5,#ff,#00,#e5
	db #ff,#00,#e5,#ff,#00,#e5,#ff,#00
	db #e5,#ff,#00,#e5,#ff,#00,#e5,#ff
	db #00,#e5,#ff,#00,#e5,#36,#00,#e5
	db #00,#00,#cd,#3b,#00,#3b,#3b,#e1
	db #11,#26,#00,#19,#06,#00,#11,#00
	db #c0,#18,#05,#ed,#b0,#cb,#7a,#c8
	db #4e,#0d,#cb,#b9,#0c,#cb,#7e,#23
	db #28,#f1,#7e,#23,#41,#12,#13,#10
	db #fc,#18,#ea,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#d3,#00,#01
	db #05,#86,#0f,#82,#00,#8f,#0f,#16
	db #05,#0f,#0f,#05,#0f,#0f,#00,#0f
	db #0f,#0a,#00,#0f,#0f,#00,#00,#0f
	db #0f,#0a,#00,#05,#0f,#05,#89,#0f
	db #01,#0a,#83,#00,#01,#05,#84,#0f
	db #01,#05,#83,#0f,#82,#00,#01,#05
	db #84,#0f,#84,#00,#01,#01,#87,#03
	db #82,#00,#8c,#03,#01,#02,#85,#03
	db #01,#01,#89,#03,#82,#00,#85,#03
	db #02,#02,#01,#87,#03,#03,#01,#03
	db #03,#83,#00,#03,#01,#03,#02,#8d
	db #03,#85,#00,#87,#3c,#82,#00,#84
	db #3c,#01,#28,#84,#3c,#02,#28,#14
	db #91,#3c,#82,#00,#84,#3c,#82,#00
	db #01,#14,#84,#3c,#01,#00,#84,#3c
	db #01,#28,#83,#00,#01,#14,#86,#3c
	db #04,#28,#14,#3c,#28,#85,#3c,#84
	db #00,#01,#10,#96,#30,#06,#20,#00
	db #10,#30,#30,#10,#84,#30,#01,#10
	db #88,#30,#01,#20,#8f,#30,#82,#00
	db #06,#10,#30,#30,#20,#00,#10,#8a
	db #30,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#c3
	db #00,#11,#18,#0e,#06,#01,#03,#08
	db #09,#0d,#0f,#13,#1a,#0c,#10,#04
	db #0a,#00,#b4,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#f1,#00,#87
	db #c3,#82,#00,#92,#c3,#04,#41,#c3
	db #c3,#41,#83,#c3,#0c,#00,#c3,#c3
	db #00,#00,#c3,#c3,#82,#00,#c3,#c3
	db #41,#89,#c3,#01,#82,#83,#00,#01
	db #41,#88,#c3,#02,#82,#00,#85,#c3
	db #84,#00,#03,#54,#fc,#a8,#83,#00
	db #82,#fc,#82,#00,#83,#fc,#82,#00
	db #83,#fc,#82,#00,#03,#54,#fc,#a8
	db #85,#fc,#01,#54,#89,#fc,#82,#00
	db #85,#fc,#0c,#00,#54,#fc,#fc,#a8
	db #00,#00,#fc,#fc,#54,#fc,#fc,#83
	db #00,#03,#54,#fc,#a8,#89,#fc,#01
	db #a8,#88,#00,#87,#f0,#82,#00,#84
	db #f0,#01,#a0,#84,#f0,#02,#a0,#50
	db #84,#f0,#01,#50,#8c,#f0,#82,#00
	db #84,#f0,#03,#a0,#00,#50,#84,#f0
	db #01,#00,#84,#f0,#84,#00,#01,#50
	db #84,#f0,#01,#50,#84,#f0,#01,#a0
	db #85,#f0,#84,#00,#01,#44,#96,#cc
	db #06,#88,#00,#44,#cc,#cc,#44,#84
	db #cc,#01,#44,#88,#cc,#02,#88,#44
	db #8e,#cc,#82,#00,#06,#44,#cc,#cc
	db #88,#00,#44,#8a,#cc,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#c5
	db #00,#87,#c3,#82,#00,#92,#c3,#01
	db #41,#86,#c3,#0c,#82,#c3,#c3,#00
	db #00,#c3,#c3,#82,#41,#c3,#c3,#41
	db #8a,#c3,#83,#00,#01,#41,#89,#c3
	db #01,#00,#85,#c3,#84,#00,#03,#54
	db #fc,#a8,#83,#00,#82,#fc,#82,#00
	db #83,#fc,#82,#00,#83,#fc,#82,#00
	db #01,#54,#87,#fc,#01,#54,#89,#fc
	db #82,#00,#84,#fc,#08,#a8,#00,#54
	db #fc,#fc,#a8,#00,#00,#85,#fc,#83
	db #00,#01,#54,#8b,#fc,#01,#a8,#88
	db #00,#01,#50,#86,#f0,#82,#00,#83
	db #f0,#82,#00,#83,#f0,#82,#00,#01
	db #50,#83,#f0,#02,#a0,#50,#8c,#f0
	db #82,#00,#85,#f0,#07,#00,#50,#f0
	db #f0,#a0,#00,#00,#84,#f0,#84,#00
	db #01,#50,#83,#f0,#02,#a0,#50,#84
	db #f0,#02,#a0,#50,#84,#f0,#84,#00
	db #01,#44,#96,#cc,#06,#88,#00,#44
	db #cc,#cc,#44,#84,#cc,#01,#44,#88
	db #cc,#02,#88,#00,#8e,#cc,#82,#00
	db #06,#44,#cc,#cc,#88,#00,#44,#8a
	db #cc,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#c5,#00,#87,#c3,#82
	db #00,#92,#c3,#01,#41,#86,#c3,#08
	db #82,#c3,#c3,#00,#00,#c3,#c3,#82
	db #83,#c3,#01,#41,#8a,#c3,#83,#00
	db #01,#41,#89,#c3,#01,#00,#85,#c3
	db #84,#00,#01,#54,#84,#fc,#05,#00
	db #fc,#fc,#00,#00,#84,#fc,#01,#a8
	db #84,#fc,#02,#a8,#54,#87,#fc,#01
	db #54,#84,#fc,#01,#54,#84,#fc,#82
	db #00,#84,#fc,#82,#00,#01,#54,#84
	db #fc,#01,#00,#85,#fc,#83,#00,#01
	db #54,#86,#fc,#02,#a8,#54,#86,#fc
	db #88,#00,#01,#50,#89,#f0,#82,#00
	db #83,#f0,#82,#00,#06,#50,#f0,#f0
	db #a0,#00,#50,#93,#f0,#07,#a0,#50
	db #f0,#f0,#a0,#00,#00,#84,#f0,#01
	db #a0,#83,#00,#06,#50,#f0,#f0,#a0
	db #00,#50,#84,#f0,#06,#a0,#00,#00
	db #50,#f0,#f0,#84,#00,#01,#44,#96
	db #cc,#06,#88,#00,#00,#cc,#88,#00
	db #84,#cc,#01,#44,#88,#cc,#02,#88
	db #00,#8a,#cc,#01,#88,#83,#cc,#82
	db #00,#06,#44,#cc,#cc,#88,#00,#44
	db #8a,#cc,#80,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#c4,#00,#01,#41
	db #87,#c3,#82,#00,#92,#c3,#01,#41
	db #89,#c3,#82,#00,#86,#c3,#01,#41
	db #8a,#c3,#83,#00,#01,#41,#8f,#c3
	db #84,#00,#01,#54,#84,#fc,#05,#a8
	db #fc,#fc,#00,#00,#84,#fc,#01,#a8
	db #84,#fc,#02,#a8,#54,#87,#fc,#01
	db #54,#84,#fc,#01,#54,#84,#fc,#82
	db #00,#83,#fc,#04,#a8,#00,#00,#54
	db #84,#fc,#01,#00,#85,#fc,#83,#00
	db #01,#54,#86,#fc,#02,#a8,#54,#86
	db #fc,#01,#a8,#87,#00,#01,#50,#93
	db #f0,#03,#a0,#00,#50,#94,#f0,#01
	db #50,#8a,#f0,#83,#00,#06,#50,#f0
	db #f0,#a0,#00,#50,#84,#f0,#06,#a0
	db #00,#00,#50,#f0,#f0,#84,#00,#01
	db #44,#84,#cc,#01,#88,#91,#cc,#06
	db #88,#00,#00,#cc,#88,#00,#84,#cc
	db #01,#44,#88,#cc,#03,#88,#00,#44
	db #89,#cc,#01,#88,#83,#cc,#08,#88
	db #00,#44,#cc,#cc,#88,#00,#44,#84
	db #cc,#01,#44,#84,#cc,#01,#88,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#c4,#00,#01,#01,#87,#03,#82
	db #00,#92,#03,#01,#01,#89,#03,#82
	db #00,#86,#03,#01,#01,#8a,#03,#83
	db #00,#01,#01,#8f,#03,#84,#00,#01
	db #14,#87,#3c,#82,#00,#84,#3c,#01
	db #28,#84,#3c,#02,#28,#14,#8c,#3c
	db #01,#14,#84,#3c,#82,#00,#83,#3c
	db #83,#00,#01,#14,#84,#3c,#01,#00
	db #85,#3c,#83,#00,#01,#14,#86,#3c
	db #02,#28,#14,#87,#3c,#84,#00,#01
	db #10,#96,#30,#06,#20,#00,#10,#30
	db #30,#10,#9c,#30,#83,#00,#06,#10
	db #30,#30,#20,#00,#10,#8a,#30,#84
	db #00,#01,#04,#84,#0c,#01,#08,#91
	db #0c,#06,#08,#00,#00,#0c,#08,#00
	db #84,#0c,#01,#04,#88,#0c,#03,#08
	db #00,#04,#89,#0c,#0c,#08,#04,#0c
	db #0c,#08,#00,#04,#0c,#0c,#08,#00
	db #04,#83,#0c,#02,#08,#04,#84,#0c
	db #01,#08,#80,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#c4,#00,#01,#01
	db #87,#03,#82,#00,#92,#03,#01,#01
	db #89,#03,#82,#00,#86,#03,#01,#01
	db #8a,#03,#83,#00,#01,#01,#8f,#03
	db #84,#00,#01,#14,#87,#3c,#82,#00
	db #84,#3c,#01,#28,#84,#3c,#02,#28
	db #14,#91,#3c,#82,#00,#83,#3c,#83
	db #00,#01,#14,#84,#3c,#01,#00,#85
	db #3c,#83,#00,#01,#14,#86,#3c,#02
	db #28,#14,#87,#3c,#84,#00,#01,#10
	db #96,#30,#06,#20,#00,#10,#30,#30
	db #10,#9c,#30,#09,#20,#00,#00,#10
	db #30,#30,#20,#00,#10,#8a,#30,#84
	db #00,#01,#04,#84,#0c,#01,#00,#91
	db #0c,#0b,#08,#00,#00,#04,#00,#00
	db #04,#04,#0c,#0c,#04,#88,#0c,#03
	db #08,#00,#04,#89,#0c,#0c,#08,#04
	db #0c,#0c,#08,#00,#04,#0c,#0c,#08
	db #00,#04,#83,#0c,#02,#00,#04,#84
	db #0c,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#f6,#00,#01,#04,#86,#0c,#82
	db #00,#8e,#0c,#17,#08,#04,#0c,#0c
	db #04,#0c,#0c,#00,#04,#0c,#00,#00
	db #0c,#0c,#00,#00,#0c,#0c,#08,#00
	db #00,#0c,#04,#89,#0c,#84,#00,#01
	db #04,#83,#0c,#04,#08,#04,#0c,#0c
	db #83,#00,#01,#04,#84,#0c,#84,#00
	db #01,#01,#87,#03,#82,#00,#8c,#03
	db #01,#02,#85,#03,#01,#01,#89,#03
	db #82,#00,#86,#03,#01,#01,#87,#03
	db #03,#01,#03,#03,#83,#00,#03,#01
	db #03,#02,#8d,#03,#84,#00,#01,#14
	db #87,#3c,#82,#00,#84,#3c,#01,#28
	db #84,#3c,#02,#28,#14,#91,#3c,#82
	db #00,#83,#3c,#04,#28,#00,#00,#14
	db #84,#3c,#01,#00,#85,#3c,#83,#00
	db #01,#14,#86,#3c,#02,#28,#14,#87
	db #3c,#84,#00,#01,#10,#96,#30,#06
	db #20,#00,#10,#30,#30,#10,#84,#30
	db #01,#10,#97,#30,#09,#20,#00,#00
	db #10,#30,#30,#20,#00,#10,#8a,#30
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #c1,#00,#01,#00,#00,#cd,#3b,#00
	db #3b,#3b,#e1,#11,#3e,#00,#19,#11
	db #00,#c0,#eb,#01,#19,#00,#18,#1d
	db #05,#f8,#3e,#e5,#04,#d5,#77,#11
	db #00,#08,#19,#30,#0d,#11,#50,#c0
	db #19,#0d,#20,#06,#0e,#19,#11,#31
	db #f8,#19,#10,#ea,#d1,#1a,#13,#fe
	db #e5,#20,#e1,#1a,#13,#47,#fe,#04
	db #38,#d6,#1a,#13,#18,#d7,#e5,#ff
	db #00,#e5,#ff,#00,#e5,#ff,#00,#e5
	db #ff,#00,#e5,#ff,#00,#e5,#ff,#00
	db #e5,#ff,#00,#e5,#ea,#00,#e5,#04
	db #10,#e5,#04,#70,#e5,#04,#10,#e5
	db #08,#00,#e5,#04,#70,#e5,#04,#10
	db #e5,#ac,#00,#e5,#04,#f0,#e5,#04
	db #80,#e5,#04,#e0,#e5,#04,#70,#e5
	db #04,#00,#e5,#04,#80,#e5,#04,#f0
	db #e5,#ac,#00,#e5,#04,#f0,#e5,#04
	db #10,#e5,#04,#00,#e5,#04,#e0,#e5
	db #04,#70,#e5,#04,#10,#e5,#04,#f0
	db #e5,#05,#00,#30,#20,#30,#20,#20
	db #e5,#a2,#00,#e5,#04,#80,#e5,#04
	db #e0,#e5,#08,#00,#e5,#04,#80,#e5
	db #04,#e0,#e5,#04,#80,#e5,#05,#00
	db #f0,#00,#f0,#e5,#a4,#00,#e5,#1c
	db #70,#e5,#05,#00,#e5,#05,#80,#e5
	db #a2,#00,#e5,#04,#f0,#e5,#08,#80
	db #e5,#04,#f0,#e5,#0c,#80,#e5,#ac
	db #00,#e5,#04,#f0,#e5,#08,#10,#e5
	db #04,#f0,#e5,#11,#00,#30,#20,#30
	db #00,#30,#e5,#a2,#00,#e5,#04,#80
	db #e5,#08,#e0,#e5,#04,#80,#e5,#11
	db #00,#f0,#00,#f0,#00,#f0,#e5,#ae
	db #00,#e5,#08,#10,#e5,#08,#70,#e5
	db #05,#00,#a0,#20,#a0,#a0,#b0,#e5
	db #4c,#00,#0c,#0c,#0c,#0d,#0f,#0e
	db #0c,#e5,#4f,#00,#e5,#04,#10,#e5
	db #08,#70,#e5,#04,#e0,#e5,#04,#f0
	db #e5,#08,#80,#e5,#09,#00,#f0,#e5
	db #4c,#00,#e5,#04,#06,#0e,#0e,#06
	db #e5,#4f,#00,#e5,#04,#80,#e5,#08
	db #e0,#e5,#04,#70,#e5,#04,#f0,#e5
	db #08,#10,#e5,#05,#00,#30,#20,#30
	db #20,#b0,#e5,#4e,#00,#0d,#0e,#0c
	db #0c,#0c,#e5,#5b,#00,#e5,#08,#80
	db #e5,#08,#e0,#e5,#05,#00,#f0,#00
	db #f0,#00,#f0,#e5,#4e,#00,#0c,#e5
	db #53,#00,#e5,#04,#10,#e5,#14,#70
	db #e5,#04,#10,#e5,#05,#00,#b0,#a0
	db #b0,#20,#b0,#e5,#17,#00,#11,#11
	db #e5,#09,#00,#e5,#07,#11,#e5,#0a
	db #00,#e5,#05,#11,#e5,#14,#00,#06
	db #00,#0e,#e5,#04,#06,#e5,#4f,#00
	db #e5,#04,#f0,#e5,#14,#80,#e5,#04
	db #f0,#e5,#05,#00,#f0,#00,#f0,#00
	db #f0,#e5,#12,#00,#22,#77,#77,#dd
	db #ff,#88,#88,#e5,#09,#00,#ff,#88
	db #88,#ff,#88,#88,#ff,#e5,#09,#00
	db #ff,#e5,#05,#88,#ff,#e5,#13,#00
	db #03,#03,#07,#03,#03,#03,#01,#e5
	db #4f,#00,#e5,#04,#f0,#e5,#04,#10
	db #e5,#0c,#00,#e5,#04,#10,#e5,#04
	db #f0,#e5,#05,#00,#b0,#a0,#b0,#20
	db #a0,#e5,#15,#00,#88,#88,#cc,#cc
	db #e5,#09,#00,#88,#cc,#cc,#88,#cc
	db #cc,#88,#e5,#09,#00,#88,#cc,#00
	db #00,#00,#cc,#88,#e5,#15,#00,#0c
	db #00,#00,#00,#0c,#e5,#0a,#00,#01
	db #00,#00,#00,#01,#e5,#40,#00,#e5
	db #04,#80,#e5,#04,#e0,#e5,#0c,#00
	db #e5,#04,#e0,#e5,#04,#80,#e5,#05
	db #00,#f0,#00,#f0,#e5,#19,#00,#cc
	db #cc,#e5,#0e,#00,#cc,#cc,#e5,#0e
	db #00,#cc,#cc,#e5,#13,#00,#06,#06
	db #0f,#06,#06,#06,#03,#e5,#09,#00
	db #0f,#08,#0c,#07,#01,#08,#0f,#e5
	db #3f,#00,#e5,#1c,#70,#e5,#05,#00
	db #a0,#a0,#a0,#20,#30,#e5,#4e,#00
	db #08,#01,#01,#01,#08,#e5,#09,#00
	db #09,#0c,#00,#00,#08,#0c,#08,#e5
	db #3f,#00,#e5,#04,#f0,#e5,#08,#80
	db #e5,#04,#f0,#e5,#08,#80,#e5,#04
	db #f0,#e5,#07,#00,#40,#40,#f0,#e5
	db #4e,#00,#0f,#08,#0f,#08,#0f,#e5
	db #09,#00,#e5,#07,#0c,#e5,#3f,#00
	db #e5,#04,#f0,#e5,#08,#00,#e5,#04
	db #e0,#e5,#08,#00,#e5,#04,#f0,#e5
	db #05,#00,#b0,#80,#b0,#a0,#b0,#e5
	db #12,#00,#e5,#07,#33,#e5,#09,#00
	db #33,#e5,#05,#11,#33,#e5,#09,#00
	db #e5,#07,#33,#e5,#15,#00,#09,#0d
	db #0d,#01,#09,#e5,#0b,#00,#07,#0c
	db #0f,#0c,#07,#e5,#3f,#00,#e5,#04
	db #80,#e5,#14,#00,#e5,#04,#80,#e5
	db #05,#00,#f0,#00,#f0,#00,#f0,#e5
	db #12,#00,#ff,#11,#11,#ff,#e5,#0c
	db #00,#cc,#e5,#05,#88,#cc,#e5,#09
	db #00,#ff,#11,#11,#ff,#66,#33,#11
	db #e5,#15,#00,#0f,#e5,#04,#08,#e5
	db #0b,#00,#0c,#06,#0e,#00,#0c,#e5
	db #60,#00,#e5,#04,#a0,#b0,#e5,#12
	db #00,#33,#99,#99,#e5,#04,#11,#e5
	db #0b,#00,#ff,#e5,#04,#cc,#e5,#0a
	db #00,#88,#99,#33,#33,#33,#99,#e5
	db #15,#00,#08,#e5,#04,#0c,#e5,#0b
	db #00,#07,#0c,#0f,#0c,#07,#e5,#64
	db #00,#f0,#e5,#12,#00,#e5,#05,#88
	db #99,#88,#e5,#0b,#00,#cc,#e5,#04
	db #66,#e5,#0b,#00,#ff,#11,#ff,#00
	db #ff,#e5,#25,#00,#0c,#06,#0e,#00
	db #0c,#e5,#60,#00,#20,#20,#30,#20
	db #a0,#e5,#14,#00,#ff,#00,#ff,#88
	db #ff,#e5,#0b,#00,#77,#cc,#77,#00
	db #77,#e5,#09,#00,#11,#11,#33,#99
	db #99,#11,#e5,#14,#00,#e5,#07,#03
	db #e5,#0b,#00,#0f,#0c,#0c,#0f,#0c
	db #0c,#e5,#5f,#00,#10,#60,#80,#60
	db #10,#e5,#14,#00,#99,#dd,#cc,#cc
	db #cc,#e5,#0b,#00,#cc,#00,#cc,#66
	db #cc,#e5,#09,#00,#88,#88,#ee,#88
	db #88,#88,#ee,#e5,#15,#00,#0f,#01
	db #01,#01,#0f,#e5,#0b,#00,#0c,#06
	db #06,#0c,#e5,#40,#00,#e5,#1c,#70
	db #e5,#05,#00,#30,#20,#30,#20,#30
	db #e5,#14,#00,#88,#88,#dd,#77,#33
	db #ee,#e5,#08,#00,#66,#66,#ff,#66
.l81ff equ $ + 6
	db #66,#66,#33,#e5,#0b,#00,#e5,#04
	db #66,#33,#e5,#15,#00,#03,#0b,#09
	db #08,#00,#01,#e5,#0a,#00,#0c,#0c
	db #0d,#0f,#06,#e5,#3f,#00,#e5,#04
	db #f0,#e5,#14,#80,#e5,#04,#f0,#e5
	db #05,#00,#f0,#00,#c0,#00,#f0,#e5
	db #14,#00,#cc,#cc,#88,#88,#e5,#0c
	db #00,#99,#11,#11,#11,#99,#e5,#0b
	db #00,#e5,#04,#33,#ff,#e5,#15,#00
	db #01,#01,#0b,#0f,#06,#0c,#e5,#0a
	db #00,#06,#06,#06,#0e,#0c,#e5,#3f
	db #00,#e5,#04,#f0,#e5,#14,#10,#e5
	db #04,#f0,#e5,#05,#00,#b0,#20,#20
	db #20,#a0,#e5,#24,#00,#bb,#cc,#88
	db #88,#88,#e5,#0b,#00,#66,#77,#66
	db #66,#66,#e5,#15,#00,#08,#08,#e5
	db #0e,#00,#07,#00,#07,#0c,#07,#e5
	db #3f,#00,#e5,#04,#80,#e5,#14,#e0
	db #e5,#04,#80,#e5,#05,#00,#f0,#e5
	db #18,#00,#11,#33,#33,#11,#00,#11
	db #e5,#0a,#00,#99,#11,#11,#11,#e5
	db #0c,#00,#ee,#e5,#29,#00,#0c,#06
	db #0e,#06,#0e,#e5,#3f,#00,#e5,#04
	db #10,#e5,#14,#70,#e5,#04,#10,#e5
	db #05,#00,#80,#e5,#18,#00,#ff,#11
	db #11,#ff,#11,#ff,#e5,#0a,#00,#e5
	db #04,#88,#ff,#e5,#0b,#00,#77,#e5
	db #04,#66,#e5,#17,#00,#06,#06,#03
	db #e5,#09,#00,#0e,#e5,#06,#06,#e5
	db #3f,#00,#e5,#04,#f0,#e5,#14,#80
	db #e5,#04,#f0,#e5,#1e,#00,#99,#88
	db #99,#bb,#99,#e5,#0b,#00,#cc,#dd
	db #dd,#dd,#cc,#e5,#0b,#00,#ee,#e5
	db #04,#33,#e5,#13,#00,#e5,#06,#03
	db #0e,#e5,#09,#00,#e5,#04,#06,#07
	db #06,#06,#e5,#3f,#00,#e5,#04,#f0
	db #e5,#14,#10,#e5,#04,#f0,#e5,#05
	db #00,#30,#20,#30,#20,#20,#e5,#14
	db #00,#ff,#11,#ff,#11,#ff,#e5,#0b
	db #00,#ff,#88,#88,#88,#ff,#e5,#25
	db #00,#03,#06,#06,#06,#03,#e5,#0b
	db #00,#06,#0c,#08,#0c,#06,#e5,#3f
	db #00,#e5,#04,#80,#e5,#14,#e0,#e5
	db #04,#80,#e5,#05,#00,#f0,#00,#f0
	db #e5,#16,#00,#11,#e5,#04,#bb,#e5
	db #0b,#00,#99,#cc,#00,#cc,#88,#e5
	db #25,#00,#0e,#03,#03,#03,#0e,#e5
	db #0b,#00,#03,#06,#07,#06,#03,#e5
	db #3f,#00,#e5,#1c,#70,#e5,#05,#00
	db #b0,#a0,#a0,#20,#30,#e5,#14,#00
	db #bb,#ff,#55,#11,#11,#e5,#09,#00
	db #cc,#cc,#ff,#cc,#cc,#cc,#77,#e5
	db #09,#00,#66,#66,#ff,#66,#66,#66
	db #33,#e5,#15,#00,#03,#06,#07,#06
	db #03,#e5,#0b,#00,#0e,#03,#0f,#00
	db #0e,#e5,#3f,#00,#e5,#04,#f0,#e5
	db #14,#80,#e5,#04,#f0,#e5,#05,#00
	db #f0,#00,#00,#00,#f0,#e5,#14,#00
	db #11,#bb,#bb,#bb,#99,#e5,#09,#00
	db #11,#00,#33,#e5,#04,#11,#e5,#0b
	db #00,#88,#11,#11,#11,#88,#e5,#15
	db #00,#0e,#03,#0f,#00,#0e,#e5,#0b
	db #00,#06,#07,#06,#06,#06,#e5,#3f
	db #00,#e5,#04,#f0,#e5,#14,#10,#e5
	db #04,#f0,#e5,#05,#00,#30,#a0,#b0
	db #80,#30,#e5,#14,#00,#ff,#11,#ff
	db #00,#ff,#e5,#09,#00,#88,#00,#88
	db #99,#99,#99,#88,#e5,#0b,#00,#ff
	db #88,#88,#88,#ff,#e5,#25,#00,#0e
	db #e5,#43,#00,#e5,#04,#80,#e5,#14
	db #e0,#e5,#04,#80,#e5,#05,#00,#f0
	db #00,#f0,#00,#f0,#e5,#15,#00,#88
	db #88,#e5,#0d,#00,#ff,#88,#88,#88
	db #ff,#e5,#0b,#00,#88,#cc,#cc,#cc
	db #88,#e5,#69,#00,#e5,#04,#10,#e5
	db #14,#70,#e5,#04,#10,#e5,#05,#00
	db #80,#00,#80,#80,#80,#e5,#24,#00
	db #99,#dd,#dd,#dd,#99,#e5,#23,#00
	db #0c,#0e,#0f,#0f,#0d,#0c,#0c,#e5
	db #4f,#00,#e5,#04,#f0,#e5,#14,#80
	db #e5,#04,#f0,#e5,#2e,#00,#ff,#e5
	db #04,#88,#e5,#0b,#00,#11,#e5,#04
	db #33,#e5,#13,#00,#06,#0e,#0e,#0e
	db #06,#06,#06,#e5,#09,#00,#0f,#0c
	db #0c,#0f,#0c,#0c,#0c,#e5,#3f,#00
	db #e5,#04,#f0,#e5,#04,#10,#e5,#04
	db #00,#e5,#04,#70,#e5,#08,#10,#e5
	db #04,#f0,#e5,#05,#00,#30,#20,#30
	db #20,#20,#e5,#24,#00,#88,#dd,#cc
	db #cc,#cc,#e5,#0b,#00,#bb,#ff,#55
	db #11,#11,#e5,#15,#00,#07,#0c,#0c
	db #0c,#07,#e5,#09,#00,#0c,#06,#06
	db #0c,#e5,#42,#00,#e5,#04,#80,#e5
	db #04,#e0,#e5,#04,#00,#e5,#0c,#e0
	db #e5,#04,#80,#e5,#05,#00,#f0,#00
	db #f0,#e5,#26,#00,#ff,#88,#ff,#00
	db #ff,#e5,#0b,#00,#11,#bb,#bb,#bb
	db #99,#e5,#15,#00,#0c,#06,#06,#06
	db #0c,#e5,#09,#00,#0f,#e5,#05,#0c
	db #0f,#e5,#3f,#00,#e5,#1c,#70,#e5
	db #05,#00,#b0,#a0,#a0,#20,#20,#e5
	db #24,#00,#88,#00,#88,#cc,#88,#e5
	db #0b,#00,#ff,#11,#ff,#00,#ff,#e5
	db #15,#00,#e5,#04,#0c,#07,#e5,#09
	db #00,#0c,#e5,#05,#06,#0c,#e5,#3f
	db #00,#e5,#04,#f0,#e5,#08,#80,#e5
	db #04,#f0,#e5,#08,#80,#e5,#04,#f0
	db #e5,#05,#00,#f0,#e5,#38,#00,#33
	db #bb,#bb,#33,#33,#e5,#15,#00,#e5
	db #04,#06,#0e,#e5,#09,#00,#07,#0c
	db #06,#03,#00,#0c,#07,#e5,#3f,#00
	db #e5,#04,#f0,#e5,#08,#00,#e5,#04
	db #e0,#e5,#08,#00,#e5,#04,#f0,#e5
	db #05,#00,#b0,#20,#20,#20,#30,#e5
	db #34,#00,#ff,#e5,#04,#11,#e5,#13
	db #00,#0e,#e5,#06,#06,#e5,#09,#00
	db #0c,#06,#00,#08,#0c,#06,#0c,#e5
	db #3f,#00,#e5,#04,#80,#e5,#14,#00
	db #e5,#04,#80,#e5,#05,#00,#f0,#00
	db #00,#00,#f0,#e5,#34,#00,#33,#bb
	db #bb,#bb,#99,#e5,#15,#00,#03,#06
	db #06,#06,#03,#e5,#4f,#00,#e5,#1c
	db #70,#e5,#05,#00,#b0,#a0,#a0,#a0
	db #b0,#e5,#34,#00,#e5,#04,#11,#ff
	db #e5,#13,#00,#03,#03,#0f,#03,#03
	db #03,#0f,#e5,#4f,#00,#e5,#04,#f0
	db #e5,#08,#80,#e5,#04,#f0,#e5,#04
	db #90,#e5,#08,#80,#e5,#05,#00,#f0
	db #00,#00,#00,#f0,#e5,#34,#00,#e5
	db #05,#88,#e5,#13,#00,#03,#00,#07
	db #e5,#04,#03,#e5,#4f,#00,#e5,#04
	db #f0,#e5,#08,#10,#e5,#04,#f0,#e5
	db #04,#e0,#e5,#04,#70,#e5,#04,#10
	db #e5,#05,#00,#20,#a0,#a0,#a0,#30
	db #e5,#4e,#00,#e5,#05,#03,#e5,#4f
	db #00,#e5,#04,#80,#e5,#08,#e0,#e5
	db #04,#80,#e5,#04,#00,#e5,#04,#80
	db #e5,#04,#e0,#e5,#09,#00,#f0,#e5
	db #4e,#00,#0f,#e5,#04,#01,#e5,#70
	db #00,#b0,#a0,#a0,#a0,#b0,#e5,#4e
	db #00,#01,#0b,#0b,#09,#08,#01,#e5
	db #6f,#00,#f0,#00,#00,#00,#f0,#e5
	db #4e,#00,#0f,#01,#01,#0f,#01,#0f
	db #e5,#6f,#00,#b0,#00,#00,#00,#80
	db #e5,#4e,#00,#e5,#05,#08,#e5,#70
	db #00,#f0,#e5,#04,#40,#e5,#a2,#00
	db #e5,#04,#70,#e5,#04,#10,#e5,#08
	db #00,#e5,#04,#10,#e5,#08,#70,#e5
	db #05,#00,#b0,#00,#00,#00,#30,#e5
	db #a2,#00,#e5,#04,#80,#e5,#04,#e0
	db #e5,#08,#70,#e5,#04,#e0,#e5,#08
	db #80,#e5,#05,#00,#f0,#40,#40,#40
	db #f0,#e5,#a2,#00,#e5,#04,#10,#e5
	db #04,#70,#e5,#08,#e0,#e5,#04,#70
	db #e5,#08,#10,#e5,#05,#00,#b0,#20
	db #20,#20,#b0,#e5,#a2,#00,#e5,#04
	db #e0,#e5,#04,#80,#e5,#08,#00,#e5
	db #04,#80,#e5,#08,#e0,#e5,#05,#00
	db #f0,#00,#00,#00,#f0,#e5,#a2,#00
	db #e5,#1c,#10,#e5,#05,#00,#b0,#e5
	db #04,#a0,#e5,#a2,#00,#e5,#18,#e0
	db #e5,#04,#f0,#e5,#06,#00,#80,#40
	db #20,#10,#e5,#ba,#00,#e5,#04,#f0
	db #e5,#05,#00,#e5,#05,#80,#e5,#ba
	db #00,#e5,#04,#e0,#e5,#ff,#00,#e5
	db #ff,#00,#e5,#ff,#00,#e5,#ff,#00
	db #e5,#ff,#00,#e5,#ff,#00,#e5,#ff
	db #00,#e5,#ff,#00,#e5,#71,#00,#e5
	db #00,#00,#00
;
.music_info
	db "Space Dodger XL - Cheat Mode (1994)(Sleepwalker PDS)(Joe Moulding)",0
	db "ST-Module",0

	read "music_end.asm"
