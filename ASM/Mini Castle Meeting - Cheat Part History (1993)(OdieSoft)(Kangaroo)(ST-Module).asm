; Music of Mini Castle Meeting - Cheat Part History (1993)(OdieSoft)(Kangaroo)(ST-Module)
; Ripped by Megachur the 02/03/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MINCMCPH.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #1600

	read "music_header.asm"

	jp l160b
	jp l1693
	jp l1677
	db #66,#04
;
.init_music
.l160b
;
	ld b,#03
	ld ix,l19da
	ld iy,l1906
	ld de,#001c
.l1618
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
	djnz l1618
	ld a,#05
	ld (l16bb),a
	ld a,d
	ld (l16cf),a
	inc a
	ld (l16b6),a
	ld a,#38
	ld (l16c0),a
	ld a,#ff
	ld (l1902),a
	ld (l1903),a
	ld (l1904),a
	ld (l1905),a
	ld a,#0c
	ld c,d
	call l18e4
	ld a,#0d
	ld c,d
	jp l18e4
;
.stop_music
.l1677
;
	ld a,#07
	ld c,#3f
	call l18e4
	ld a,#08
	ld c,#00
	call l18e4
	ld a,#09
	ld c,#00
	call l18e4
	ld a,#0a
	ld c,#00
	jp l18e4
;
.play_music
.l1693
;
	ld hl,l16b6
	dec (hl)
	ld ix,l19da
	ld bc,l19e8
	call l1749
	ld ix,l19f6
	ld bc,l1a04
	call l1749
	ld ix,l1a12
	ld bc,l1a20
	call l1749
.l16b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l16bf
.l16bb equ $ + 1
	ld a,#00
	ld (l16b6),a
.l16c0 equ $ + 1
.l16bf
	ld a,#00
	ld hl,l1903
	cp (hl)
	jr z,l16ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l18e4
.l16cf equ $ + 1
.l16ce
	ld a,#00
	ld hl,l1902
	cp (hl)
	jr z,l16dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l18e4
.l16de equ $ + 1
.l16dd
	ld a,#00
	ld hl,l1904
	cp (hl)
	jr z,l16ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l18e4
.l16ed equ $ + 1
.l16ec
	ld a,#00
	ld hl,l1905
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l18e4
.l16fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l17fa
.l1709
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
	jp l18e4
.l1723
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l1738
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l1738
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l175c
.l1749
	ld a,(l16b6)
	or a
	jp nz,l17fa
	dec (ix+#06)
	jp nz,l17fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l175c
	ld a,(hl)
	or a
	jr z,l16fa
	cp #fe
	jr z,l1709
	cp #ff
	jr z,l1723
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l190c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l1798
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l1798
	and #7f
	ld (ix+#06),a
	jr l17eb
.l1798
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l17ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l17ac
	add a
	add a
	add a
	ld e,a
	ld hl,l1a42
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
	jr z,l17eb
	cp #f0
	jp z,l18a0
	cp #d0
	jp z,l18bc
	cp #b0
	jp z,l18c4
	cp #80
	jp nc,l18cc
	cp #10
	jr nz,l17eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l17eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l17fa
	ld a,(ix+#17)
	or a
	jr nz,l180e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l180e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l1839
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l190c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l1839
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
	call l18e4
	ld c,h
	ld a,(ix+#03)
	call l18e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l1877
	and #0f
	sub (ix+#0a)
	jr nc,l186d
	xor a
.l186d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l18e4
.l1877
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
	jr z,l1894
	ld b,a
	ld a,c
	ld (l16cf),a
	ld a,b
	sub #40
.l1894
	ld (l189b),a
	ld a,(l16c0)
.l189b equ $ + 1
	bit 0,a
	ld (l16c0),a
	ret
.l18a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l1ac2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l17eb
.l18bc
	inc hl
	ld a,(hl)
	ld (l16bb),a
	jp l17eb
.l18c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l17eb
.l18cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l16ed),a
	inc hl
	ld a,(hl)
	ld (l16de),a
	jp l17eb
.l18e4
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
.l1905 equ $ + 3
.l1904 equ $ + 2
.l1903 equ $ + 1
.l1902
	db #ff,#ff,#ff,#ff
.l1906
	dw l1c42,l1c54,l1c66
.l190c
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
.l19da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l19e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l19f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l1a04 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1a12 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l1a20 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l1a42 equ $ + 4
	db #75,#6c,#65,#2e,#dc,#14,#dc,#14
	db #dc,#14,#00,#00,#e2,#1a,#22,#1b
	db #42,#1b,#00,#00,#dc,#14,#dc,#14
	db #dc,#14,#00,#00,#dc,#14,#dc,#14
	db #dc,#14,#00,#00,#dc,#14,#dc,#14
	db #dc,#14,#00,#00,#dc,#14,#dc,#14
	db #dc,#14,#00,#00,#dc,#14,#dc,#14
	db #dc,#14,#00,#00,#dc,#14,#dc,#14
	db #dc,#14,#00,#00,#dc,#14,#dc,#14
	db #dc,#14,#00,#00,#62,#1b,#a2,#1b
	db #c2,#1b,#08,#18,#e2,#1b,#22,#1c
	db #c2,#1b,#00,#00,#dc,#14,#dc,#14
	db #dc,#14,#00,#00,#dc,#14,#dc,#14
	db #dc,#14,#00,#00,#dc,#14,#dc,#14
	db #dc,#14,#00,#00,#dc,#14,#dc,#14
	db #dc,#14,#00,#00,#dc,#14,#dc,#14
.l1ac2 equ $ + 4
	db #dc,#14,#00,#00,#dc,#14,#dc,#14
	db #dc,#14,#dc,#14,#dc,#14,#dc,#14
	db #dc,#14,#dc,#14,#dc,#14,#dc,#14
	db #dc,#14,#dc,#14,#dc,#14,#dc,#14
	db #dc,#14,#dc,#14,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0d,#0c,#0c
	db #0b,#0a,#09,#08,#08,#07,#07,#06
	db #05,#04,#04,#04,#04,#03,#02,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#06,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#0b,#0a,#09,#80
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#07,#07,#06,#05,#04,#03,#02
.l1c42 equ $ + 4
	db #01,#00,#00,#00,#00,#78,#1c,#00
	db #86,#1c,#00,#86,#1c,#00,#96,#1c
.l1c54 equ $ + 6
	db #00,#86,#1c,#80,#42,#1c,#00,#a4
	db #1c,#00,#d8,#1c,#00,#f8,#1c,#00
	db #10,#1d,#00,#4e,#1d,#80,#54,#1c
.l1c66
	db #00,#88,#1d,#00,#da,#1d,#00,#da
	db #1d,#00,#88,#1d,#00,#da,#1d,#80
	db #66,#1c,#46,#18,#09,#45,#88,#43
	db #94,#3e,#84,#41,#84,#43,#84,#ff
	db #3f,#18,#09,#41,#84,#46,#84,#3e
	db #90,#3c,#86,#3a,#86,#39,#84,#ff
	db #46,#18,#09,#45,#88,#43,#94,#3e
	db #84,#41,#84,#43,#84,#ff,#4a,#04
	db #0a,#46,#82,#45,#82,#46,#82,#45
	db #82,#43,#82,#43,#8a,#43,#82,#45
	db #82,#46,#82,#48,#82,#4a,#84,#46
	db #82,#45,#82,#46,#82,#45,#82,#43
	db #82,#43,#84,#43,#82,#45,#82,#46
	db #82,#48,#82,#46,#82,#45,#82,#46
	db #82,#ff,#46,#02,#0a,#45,#82,#43
	db #84,#43,#84,#41,#82,#43,#92,#46
	db #82,#45,#82,#43,#84,#43,#84,#42
	db #82,#43,#84,#3f,#84,#3e,#84,#41
	db #86,#ff,#46,#02,#0a,#45,#82,#43
	db #84,#43,#84,#41,#82,#43,#8a,#43
	db #82,#45,#82,#46,#82,#48,#82,#4a
	db #a0,#ff,#4f,#04,#0a,#4f,#82,#4d
	db #82,#4f,#82,#4a,#82,#4d,#82,#4f
	db #82,#52,#82,#4f,#82,#52,#82,#54
	db #82,#56,#82,#54,#82,#52,#82,#51
	db #82,#4f,#84,#4f,#82,#4d,#82,#4f
	db #82,#4a,#82,#4d,#82,#4f,#82,#4d
	db #82,#4a,#82,#48,#82,#4a,#82,#4d
	db #82,#4a,#82,#48,#82,#4a,#82,#ff
	db #4f,#04,#0a,#4f,#82,#4d,#82,#4f
	db #82,#51,#82,#52,#82,#54,#82,#56
	db #84,#56,#82,#57,#84,#56,#82,#54
	db #82,#56,#84,#56,#82,#54,#82,#56
	db #82,#52,#82,#56,#82,#51,#82,#56
	db #82,#4f,#82,#56,#82,#51,#82,#56
	db #82,#52,#82,#56,#82,#51,#82,#4f
	db #82,#ff,#1f,#02,#0a,#1f,#82,#3a
	db #02,#01,#1f,#02,#0a,#1f,#82,#1f
	db #82,#3a,#02,#01,#26,#02,#0a,#1f
	db #82,#1f,#82,#3a,#02,#01,#1f,#02
	db #0a,#1f,#82,#1f,#82,#3a,#02,#01
	db #26,#02,#0a,#1f,#82,#1f,#82,#3a
	db #02,#01,#1f,#02,#0a,#1f,#82,#1f
	db #82,#3a,#02,#01,#26,#02,#0a,#1f
	db #82,#1f,#82,#3a,#02,#01,#1f,#02
	db #0a,#1f,#82,#1f,#82,#3a,#02,#01
	db #26,#02,#0a,#ff,#1b,#02,#0a,#1b
	db #82,#3a,#02,#01,#22,#02,#0a,#1b
	db #82,#1b,#82,#3a,#02,#01,#22,#02
	db #0a,#1b,#82,#1b,#82,#3a,#02,#01
	db #22,#02,#0a,#1b,#82,#1b,#82,#3a
	db #02,#01,#22,#02,#0a,#1a,#82,#1a
	db #82,#3a,#02,#01,#26,#02,#0a,#1a
	db #82,#1a,#82,#3a,#02,#01,#26,#02
	db #0a,#1a,#82,#1a,#82,#3a,#02,#01
	db #26,#02,#0a,#1a,#82,#1a,#82,#3a
	db #02,#01,#26,#02,#0a,#ff,#27,#3a
	db #50,#4f,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#c9,#3e,#04,#08,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #7e,#e6,#88,#4f,#7e,#e6,#33,#07
	db #b1,#4f,#23,#7e,#e6,#88,#07,#b1
	db #12,#13,#7e,#e6,#77,#4f,#23,#7e
	db #e6,#88,#b1,#07,#12,#13,#7e,#e6
	db #77,#4f,#23,#7e,#e6,#88,#b1,#07
	db #12,#13,#7e,#e6,#77,#4f,#23,#7e
	db #e6,#88,#b1,#07,#12,#13,#7e,#e6
	db #77,#4f,#23,#7e,#e6,#88,#b1,#07
	db #12,#13,#7e,#e6,#66,#07,#4f,#23
	db #7e,#e6,#cc,#0f,#0f,#b1,#12,#13
	db #7e,#e6,#33,#4f,#23,#7e,#e6,#cc
	db #b1,#07,#07,#12,#13,#7e,#e6,#33
	db #4f,#23,#7e,#e6,#cc,#b1,#07,#07
	db #12,#13,#7e,#e6,#33,#4f,#23,#7e
	db #e6,#cc,#b1,#07,#07,#12,#13,#7e
	db #e6,#33,#4f,#23,#7e,#e6,#cc,#b1
	db #07,#07,#12,#13,#7e,#e6,#33,#07
	db #4f,#23,#7e,#e6,#88,#07,#b1,#07
	db #4f,#7e,#e6,#22,#0f,#b1,#12,#13
	db #7e,#e6,#11,#4f,#23,#7e,#e6,#ee
	db #b1,#0f,#12,#13,#7e,#e6,#11,#4f
	db #23,#7e,#e6,#ee,#b1,#0f,#12,#13
	db #7e,#e6,#11,#4f,#23,#7e,#e6,#ee
	db #b1,#0f,#12,#13,#7e,#e6,#11,#4f
	db #23,#7e,#e6,#ee,#b1,#0f,#12,#13
	db #7e,#e6,#11,#4f,#23,#7e,#e6,#ee
	db #b1,#0f,#12,#13,#23,#08,#3d,#c2
	db #e3,#1e,#c9,#3e,#08,#08,#ed,#a0
	db #ed,#a0,#7e,#e6,#cc,#4f,#7e,#e6
	db #11,#07,#b1,#4f,#23,#7e,#e6,#88
	db #07,#b1,#12,#13,#7e,#e6,#77,#4f
	db #23,#7e,#e6,#88,#b1,#07,#12,#13
	db #7e,#e6,#77,#4f,#23,#7e,#e6,#88
	db #b1,#07,#12,#13,#7e,#e6,#33,#4f
	db #23,#7e,#e6,#cc,#b1,#07,#07,#12
	db #13,#7e,#e6,#33,#4f,#23,#7e,#e6
	db #cc,#b1,#07,#07,#12,#13,#7e,#e6
	db #33,#0f,#4f,#23,#7e,#e6,#66,#b1
	db #0f,#12,#13,#7e,#e6,#11,#4f,#23
	db #7e,#e6,#ee,#b1,#0f,#12,#13,#7e
	db #e6,#11,#4f,#23,#7e,#e6,#ee,#b1
	db #0f,#12,#13,#23,#08,#3d,#c2,#cb
	db #1f,#c9,#3e,#04,#08,#ed,#a0,#7e
	db #e6,#cc,#4f,#7e,#e6,#11,#07,#b1
	db #4f,#23,#7e,#e6,#88,#07,#b1,#12
	db #13,#7e,#e6,#77,#4f,#23,#7e,#e6
	db #88,#b1,#07,#12,#13,#7e,#e6,#33
	db #4f,#23,#7e,#e6,#cc,#b1,#07,#07
	db #12,#13,#7e,#e6,#33,#4f,#23,#7e
	db #e6,#88,#b1,#4f,#7e,#e6,#22,#07
	db #b1,#07,#07,#12,#13,#7e,#e6,#11
	db #4f,#23,#7e,#e6,#ee,#b1,#0f,#12
	db #13,#7e,#e6,#11,#0f,#4f,#23,#7e
	db #e6,#77,#b1,#12,#13,#23,#7e,#e6
	db #ee,#4f,#23,#7e,#e6,#88,#07,#b1
	db #12,#13,#7e,#e6,#77,#4f,#23,#7e
	db #e6,#88,#b1,#07,#12,#13,#7e,#e6
	db #66,#4f,#23,#7e,#e6,#cc,#07,#b1
	db #07,#12,#13,#7e,#e6,#33,#4f,#23
	db #7e,#e6,#cc,#b1,#07,#07,#12,#13
	db #7e,#e6,#11,#4f,#23,#7e,#e6,#ee
	db #b1,#0f,#12,#13,#7e,#e6,#11,#4f
	db #23,#7e,#e6,#88,#b1,#4f,#7e,#e6
	db #33,#07,#b1,#0f,#12,#13,#23,#ed
	db #a0,#7e,#e6,#88,#0f,#4f,#7e,#e6
	db #33,#b1,#4f,#23,#7e,#e6,#88,#b1
	db #07,#12,#13,#7e,#e6,#77,#4f,#23
	db #7e,#e6,#44,#07,#b1,#07,#12,#13
	db #7e,#e6,#33,#4f,#23,#7e,#e6,#cc
	db #b1,#07,#07,#12,#13,#7e,#e6,#22
	db #0f,#4f,#23,#7e,#e6,#ee,#b1,#0f
	db #12,#13,#7e,#e6,#11,#4f,#23,#7e
	db #e6,#ee,#b1,#0f,#12,#13,#23,#08
	db #3d,#c2,#42,#20,#c9,#3e,#08,#08
	db #ed,#a0,#7e,#e6,#77,#4f,#23,#7e
	db #e6,#88,#b1,#07,#12,#13,#7e,#e6
	db #44,#0f,#4f,#7e,#e6,#11,#b1,#4f
	db #23,#7e,#e6,#cc,#b1,#0f,#0f,#12
	db #13,#7e,#e6,#22,#0f,#4f,#23,#7e
	db #e6,#ee,#b1,#0f,#12,#13,#7e,#e6
	db #11,#4f,#23,#7e,#e6,#88,#b1,#4f
	db #7e,#e6,#33,#07,#b1,#0f,#12,#13
	db #23,#7e,#e6,#cc,#4f,#7e,#e6,#11
	db #07,#b1,#4f,#23,#7e,#e6,#88,#07
	db #b1,#12,#13,#7e,#e6,#77,#4f,#23
	db #7e,#e6,#44,#07,#b1,#07,#12,#13
	db #7e,#e6,#33,#4f,#23,#7e,#e6,#88
	db #b1,#4f,#7e,#e6,#22,#07,#b1,#07
	db #07,#12,#13,#7e,#e6,#11,#4f,#23
	db #7e,#e6,#ee,#b1,#0f,#12,#13,#23
	db #08,#3d,#c2,#3d,#21,#c9,#3e,#04
	db #08,#7e,#e6,#ee,#4f,#23,#7e,#e6
	db #88,#07,#b1,#a0,#12,#13,#7e,#e6
	db #66,#4f,#23,#7e,#e6,#cc,#07,#b1
	db #07,#a0,#12,#13,#7e,#e6,#33,#0f
	db #4f,#23,#7e,#e6,#66,#b1,#0f,#a0
	db #12,#13,#7e,#e6,#11,#0f,#4f,#23
	db #7e,#e6,#77,#b1,#a0,#12,#13,#23
	db #7e,#e6,#88,#4f,#7e,#e6,#33,#07
	db #b1,#4f,#23,#7e,#e6,#88,#07,#b1
	db #a0,#12,#13,#7e,#e6,#33,#4f,#23
	db #7e,#e6,#88,#b1,#4f,#7e,#e6,#22
	db #07,#b1,#07,#07,#a0,#12,#13,#7e
	db #e6,#11,#4f,#23,#7e,#e6,#cc,#b1
	db #4f,#7e,#e6,#11,#07,#b1,#0f,#a0
	db #12,#13,#23,#7e,#e6,#cc,#4f,#7e
	db #e6,#11,#07,#b1,#4f,#23,#7e,#e6
	db #88,#07,#b1,#a0,#12,#13,#7e,#e6
	db #66,#4f,#23,#7e,#e6,#cc,#07,#b1
	db #07,#a0,#12,#13,#7e,#e6,#22,#0f
	db #4f,#23,#7e,#e6,#ee,#b1,#0f,#a0
	db #12,#13,#23,#7e,#a0,#12,#23,#13
	db #7e,#e6,#77,#4f,#23,#7e,#e6,#88
	db #07,#b1,#a0,#12,#13,#7e,#e6,#33
	db #4f,#23,#7e,#e6,#88,#b1,#4f,#7e
	db #e6,#22,#07,#b1,#07,#07,#a0,#12
	db #13,#7e,#e6,#11,#4f,#23,#7e,#e6
	db #88,#b1,#4f,#7e,#e6,#33,#07,#b1
	db #0f,#a0,#12,#13,#23,#7e,#e6,#88
	db #0f,#4f,#7e,#e6,#33,#b1,#4f,#23
	db #7e,#e6,#88,#b1,#07,#a0,#12,#13
	db #7e,#e6,#44,#4f,#7e,#e6,#11,#07
	db #b1,#4f,#23,#7e,#e6,#cc,#07,#b1
	db #07,#a0,#12,#13,#7e,#e6,#11,#4f
	db #23,#7e,#e6,#ee,#b1,#0f,#a0,#12
	db #23,#13,#08,#3d,#c2,#c6,#21,#c9
	db #3e,#08,#08,#7e,#e6,#cc,#0f,#4f
	db #7e,#e6,#11,#b1,#4f,#23,#7e,#e6
	db #88,#b1,#07,#a0,#12,#13,#7e,#e6
	db #44,#0f,#4f,#7e,#e6,#11,#b1,#4f
	db #23,#7e,#e6,#cc,#b1,#07,#07,#a0
	db #12,#13,#7e,#e6,#11,#4f,#23,#7e
	db #e6,#88,#b1,#0f,#4f,#7e,#e6,#33
	db #b1,#a0,#12,#23,#13,#7e,#e6,#88
	db #4f,#7e,#e6,#33,#07,#b1,#4f,#23
	db #7e,#e6,#88,#07,#b1,#a0,#12,#13
	db #7e,#e6,#33,#0f,#4f,#23,#7e,#e6
	db #66,#b1,#0f,#a0,#12,#13,#7e,#e6
	db #11,#0f,#4f,#23,#7e,#e6,#77,#b1
	db #a0,#12,#13,#23,#7e,#e6,#66,#4f
	db #23,#7e,#e6,#cc,#07,#b1,#07,#a0
	db #12,#13,#7e,#e6,#22,#0f,#4f,#23
	db #7e,#e6,#ee,#b1,#0f,#a0,#12,#13
	db #23,#08,#3d,#c2,#e0,#22,#c9,#3e
	db #04,#08,#7e,#e6,#cc,#0f,#4f,#7e
	db #e6,#11,#b1,#4f,#23,#7e,#e6,#88
	db #b1,#07,#a0,#12,#13,#7e,#e6,#33
	db #0f,#4f,#23,#7e,#e6,#66,#b1,#0f
	db #a0,#12,#23,#13,#7e,#e6,#cc,#0f
	db #4f,#7e,#e6,#11,#b1,#4f,#23,#7e
	db #e6,#88,#b1,#07,#a0,#12,#13,#7e
	db #e6,#33,#0f,#4f,#23,#7e,#e6,#88
	db #b1,#4f,#7e,#e6,#22,#07,#b1,#07
	db #07,#a0,#12,#13,#7e,#e6,#11,#0f
	db #4f,#23,#7e,#e6,#66,#b1,#4f,#23
	db #7e,#e6,#88,#07,#b1,#a0,#12,#13
	db #7e,#e6,#44,#0f,#4f,#7e,#e6,#11
	db #b1,#4f,#23,#7e,#e6,#88,#b1,#0f
	db #4f,#7e,#e6,#22,#b1,#0f,#a0,#12
	db #13,#7e,#e6,#11,#0f,#4f,#23,#7e
	db #e6,#66,#b1,#4f,#23,#7e,#e6,#88
	db #07,#b1,#a0,#12,#13,#7e,#e6,#66
	db #4f,#23,#7e,#e6,#cc,#07,#b1,#07
	db #a0,#12,#13,#7e,#e6,#11,#4f,#23
	db #7e,#e6,#88,#b1,#0f,#4f,#7e,#e6
	db #33,#b1,#a0,#12,#23,#13,#7e,#e6
	db #66,#4f,#23,#7e,#e6,#cc,#07,#b1
	db #07,#a0,#12,#13,#7e,#e6,#11,#4f
	db #23,#7e,#e6,#88,#b1,#0f,#4f,#7e
	db #e6,#33,#b1,#a0,#12,#23,#13,#7e
	db #e6,#88,#0f,#4f,#7e,#e6,#33,#b1
	db #4f,#23,#7e,#e6,#88,#b1,#07,#a0
	db #12,#13,#7e,#e6,#22,#0f,#4f,#23
	db #7e,#e6,#cc,#b1,#0f,#4f,#7e,#e6
	db #11,#b1,#a0,#12,#23,#13,#7e,#e6
	db #88,#4f,#7e,#e6,#33,#07,#b1,#4f
	db #23,#7e,#e6,#44,#07,#07,#b1,#a0
	db #12,#13,#7e,#e6,#22,#0f,#4f,#23
	db #7e,#e6,#ee,#b1,#0f,#a0,#12,#23
	db #13,#08,#3d,#c2,#6f,#23,#c9,#3e
	db #08,#08,#7e,#e6,#88,#4f,#7e,#e6
	db #33,#07,#b1,#4f,#23,#7e,#e6,#44
	db #0f,#0f,#b1,#a0,#12,#13,#7e,#e6
	db #22,#0f,#4f,#23,#7e,#e6,#cc,#b1
	db #0f,#4f,#7e,#e6,#11,#b1,#a0,#12
	db #23,#13,#7e,#e6,#66,#4f,#23,#7e
	db #e6,#cc,#07,#b1,#07,#a0,#12,#13
	db #7e,#e6,#11,#4f,#23,#7e,#e6,#88
	db #b1,#0f,#4f,#7e,#e6,#22,#b1,#4f
	db #23,#7e,#e6,#88,#07,#b1,#a0,#12
	db #13,#7e,#e6,#44,#0f,#4f,#7e,#e6
	db #11,#b1,#4f,#23,#7e,#e6,#88,#b1
	db #0f,#4f,#7e,#e6,#22,#b1,#0f,#a0
	db #12,#13,#7e,#e6,#11,#0f,#4f,#23
	db #7e,#e6,#44,#b1,#4f,#7e,#e6,#11
	db #07,#b1,#4f,#23,#7e,#e6,#88,#07
	db #b1,#a0,#12,#13,#7e,#e6,#33,#0f
	db #4f,#23,#7e,#e6,#66,#b1,#0f,#a0
	db #12,#23,#13,#08,#3d,#c2,#8f,#24
	db #c9,#3e,#04,#08,#7e,#e6,#88,#4f
	db #7e,#e6,#33,#07,#b1,#4f,#23,#7e
	db #e6,#44,#0f,#0f,#b1,#a0,#12,#13
	db #7e,#e6,#11,#4f,#23,#7e,#e6,#88
	db #b1,#0f,#4f,#7e,#e6,#22,#b1,#4f
	db #23,#7e,#e6,#88,#07,#b1,#a0,#12
	db #13,#7e,#e6,#44,#0f,#4f,#7e,#e6
	db #11,#b1,#0f,#4f,#23,#7e,#e6,#66
	db #b1,#0f,#a0,#12,#23,#13,#7e,#e6
	db #88,#4f,#7e,#e6,#22,#07,#b1,#4f
	db #23,#7e,#e6,#cc,#0f,#0f,#b1,#a0
	db #12,#13,#7e,#e6,#11,#0f,#4f,#23
	db #7e,#e6,#66,#b1,#4f,#23,#7e,#e6
	db #88,#07,#b1,#a0,#12,#13,#7e,#e6
	db #33,#0f,#4f,#23,#7e,#e6,#44,#b1
	db #0f,#4f,#7e,#e6,#11,#b1,#a0,#12
	db #13,#23,#7e,#e6,#88,#4f,#7e,#e6
	db #22,#07,#b1,#4f,#23,#7e,#e6,#88
	db #0f,#0f,#b1,#4f,#7e,#e6,#22,#0f
	db #b1,#a0,#12,#13,#7e,#e6,#11,#0f
	db #4f,#23,#7e,#e6,#44,#b1,#4f,#7e
	db #e6,#11,#07,#b1,#4f,#23,#7e,#e6
	db #88,#07,#b1,#a0,#12,#13,#7e,#e6
	db #22,#0f,#4f,#23,#7e,#e6,#cc,#b1
	db #0f,#4f,#7e,#e6,#11,#b1,#a0,#12
	db #23,#13,#7e,#e6,#66,#4f,#23,#7e
	db #e6,#88,#07,#b1,#07,#4f,#7e,#e6
	db #22,#0f,#b1,#a0,#12,#23,#13,#7e
	db #e6,#cc,#4f,#7e,#e6,#11,#07,#b1
	db #4f,#23,#7e,#e6,#44,#0f,#0f,#b1
	db #a0,#12,#13,#7e,#e6,#22,#0f,#4f
	db #23,#7e,#e6,#88,#b1,#0f,#4f,#7e
	db #e6,#33,#b1,#a0,#12,#23,#13,#7e
	db #e6,#44,#0f,#4f,#7e,#e6,#11,#b1
	db #4f,#23,#7e,#e6,#88,#b1,#0f,#4f
	db #7e,#e6,#22,#b1,#0f,#a0,#12,#23
	db #13,#08,#3d,#c2,#29,#25,#c9,#3e
	db #08,#08,#7e,#e6,#88,#4f,#7e,#e6
	db #22,#07,#b1,#4f,#23,#7e,#e6,#88
	db #0f,#0f,#b1,#4f,#7e,#e6,#22,#0f
	db #b1,#a0,#12,#23,#13,#7e,#e6,#cc
	db #4f,#7e,#e6,#11,#07,#b1,#4f,#23
	db #7e,#e6,#44,#0f,#0f,#b1,#a0,#12
	db #13,#7e,#e6,#11,#0f,#4f,#23,#7e
	db #e6,#44,#b1,#4f,#7e,#e6,#11,#07
	db #b1,#4f,#23,#7e,#e6,#88,#07,#b1
	db #a0,#12,#13,#7e,#e6,#22,#0f,#4f
	db #23,#7e,#e6,#88,#b1,#0f,#4f,#7e
	db #e6,#22,#b1,#4f,#23,#7e,#e6,#88
	db #07,#b1,#a0,#12,#13,#7e,#e6,#33
	db #0f,#4f,#23,#7e,#e6,#44,#b1,#0f
	db #4f,#7e,#e6,#11,#b1,#a0,#12,#23
	db #13,#7e,#e6,#44,#0f,#4f,#7e,#e6
	db #11,#b1,#0f,#4f,#23,#7e,#e6,#66
	db #b1,#0f,#a0,#12,#23,#13,#08,#3d
	db #c2,#4f,#26,#c9,#3e,#0b,#08,#7e
	db #e6,#88,#4f,#7e,#e6,#22,#07,#b1
	db #4f,#23,#7e,#e6,#88,#0f,#0f,#b1
	db #4f,#7e,#e6,#22,#0f,#b1,#a0,#12
	db #23,#13,#7e,#e6,#88,#4f,#7e,#e6
	db #22,#07,#b1,#4f,#23,#7e,#e6,#88
	db #0f,#0f,#b1,#4f,#7e,#e6,#22,#0f
	db #b1,#a0,#12,#23,#13,#7e,#e6,#88
	db #4f,#7e,#e6,#22,#07,#b1,#4f,#23
	db #7e,#e6,#88,#0f,#0f,#b1,#4f,#7e
	db #e6,#22,#0f,#b1,#a0,#12,#23,#13
	db #7e,#e6,#88,#4f,#7e,#e6,#22,#07
	db #b1,#4f,#23,#7e,#e6,#88,#0f,#0f
	db #b1,#4f,#7e,#e6,#22,#0f,#b1,#a0
	db #12,#23,#13,#08,#3d,#c2,#e4,#26
	db #c9,#3e,#08,#08,#7e,#e6,#44,#07
	db #4f,#7e,#e6,#11,#07,#07,#b1,#4f
	db #23,#7e,#e6,#44,#0f,#b1,#4f,#7e
	db #e6,#11,#b1,#a0,#12,#23,#13,#7e
	db #e6,#44,#07,#4f,#23,#7e,#e6,#88
	db #0f,#b1,#4f,#7e,#e6,#22,#b1,#4f
	db #23,#7e,#e6,#88,#07,#b1,#a0,#12
	db #13,#7e,#e6,#22,#0f,#4f,#23,#7e
	db #e6,#88,#b1,#0f,#4f,#7e,#e6,#11
	db #07,#b1,#4f,#23,#7e,#e6,#44,#0f
	db #0f,#b1,#a0,#12,#13,#7e,#e6,#11
	db #0f,#4f,#23,#7e,#e6,#44,#b1,#4f
	db #7e,#e6,#11,#07,#b1,#4f,#23,#7e
	db #e6,#22,#0f,#b1,#a0,#12,#23,#13
	db #7e,#e6,#88,#4f,#7e,#e6,#22,#07
	db #b1,#4f,#23,#7e,#e6,#88,#0f,#0f
	db #b1,#4f,#7e,#e6,#22,#0f,#b1,#a0
	db #12,#23,#13,#08,#3d,#c2,#59,#27
	db #c9,#af,#12,#13,#12,#13,#12,#13
	db #12,#13,#3e,#04,#08,#7e,#e6,#44
	db #07,#4f,#7e,#e6,#11,#07,#07,#b1
	db #4f,#23,#7e,#e6,#22,#b1,#4f,#23
	db #7e,#e6,#88,#07,#b1,#a0,#12,#13
	db #7e,#e6,#11,#0f,#4f,#23,#7e,#e6
	db #44,#b1,#4f,#23,#7e,#e6,#88,#0f
	db #0f,#b1,#4f,#7e,#e6,#22,#0f,#b1
	db #a0,#12,#23,#13,#7e,#e6,#88,#4f
	db #7e,#e6,#11,#07,#07,#b1,#4f,#23
	db #7e,#e6,#44,#0f,#b1,#4f,#23,#7e
	db #e6,#88,#07,#b1,#a0,#12,#13,#7e
	db #e6,#22,#07,#07,#4f,#23,#7e,#e6
	db #44,#b1,#4f,#7e,#e6,#11,#07,#b1
	db #4f,#23,#7e,#e6,#22,#0f,#b1,#a0
	db #12,#13,#23,#7e,#e6,#88,#4f,#7e
	db #e6,#22,#07,#b1,#4f,#23,#7e,#e6
	db #44,#0f,#b1,#4f,#7e,#e6,#11,#b1
	db #a0,#12,#23,#13,#7e,#e6,#22,#0f
	db #4f,#23,#7e,#e6,#88,#b1,#0f,#4f
	db #7e,#e6,#11,#07,#b1,#4f,#23,#7e
	db #e6,#44,#07,#07,#b1,#a0,#12,#23
	db #13,#7e,#e6,#88,#4f,#7e,#e6,#22
	db #07,#b1,#4f,#23,#7e,#e6,#88,#0f
	db #0f,#b1,#4f,#7e,#e6,#11,#b1,#a0
	db #12,#23,#13,#7e,#e6,#44,#07,#4f
	db #23,#7e,#e6,#88,#0f,#b1,#4f,#7e
	db #e6,#22,#b1,#4f,#23,#7e,#e6,#44
	db #0f,#0f,#b1,#a0,#12,#13,#7e,#e6
	db #11,#0f,#4f,#23,#7e,#e6,#22,#07
	db #b1,#4f,#23,#7e,#e6,#88,#0f,#0f
	db #b1,#4f,#7e,#e6,#22,#0f,#b1,#a0
	db #12,#23,#13,#08,#3d,#c2,#f2,#27
	db #12,#13,#12,#13,#12,#13,#12,#c9
	db #af,#12,#13,#12,#13,#12,#13,#12
	db #13,#12,#13,#12,#13,#12,#13,#12
	db #13,#3e,#08,#08,#7e,#e6,#44,#07
	db #4f,#23,#7e,#e6,#88,#0f,#b1,#4f
	db #7e,#e6,#11,#07,#b1,#4f,#23,#7e
	db #e6,#44,#0f,#0f,#b1,#a0,#12,#23
	db #13,#7e,#e6,#88,#4f,#7e,#e6,#11
	db #0f,#0f,#b1,#4f,#23,#7e,#e6,#22
	db #b1,#4f,#23,#7e,#e6,#88,#07,#b1
	db #a0,#12,#13,#7e,#e6,#11,#0f,#4f
	db #23,#7e,#e6,#22,#07,#b1,#4f,#23
	db #7e,#e6,#44,#0f,#b1,#4f,#7e,#e6
	db #11,#b1,#a0,#12,#23,#13,#7e,#e6
	db #22,#0f,#0f,#4f,#23,#7e,#e6,#44
	db #b1,#4f,#23,#7e,#e6,#88,#0f,#0f
	db #b1,#4f,#7e,#e6,#22,#0f,#b1,#a0
	db #12,#23,#13,#08,#3d,#c2,#09,#29
	db #12,#13,#12,#13,#12,#13,#12,#13
	db #12,#13,#12,#13,#12,#13,#12,#c9
	db #3e,#02,#08,#7e,#e6,#22,#07,#07
	db #4f,#23,#7e,#e6,#44,#b1,#4f,#23
	db #7e,#e6,#88,#0f,#0f,#b1,#4f,#7e
	db #e6,#11,#b1,#a0,#12,#23,#13,#7e
	db #e6,#22,#07,#07,#4f,#23,#7e,#e6
	db #44,#b1,#4f,#23,#7e,#e6,#88,#0f
	db #0f,#b1,#4f,#23,#7e,#e6,#88,#07
	db #b1,#a0,#12,#13,#7e,#e6,#11,#0f
	db #4f,#23,#7e,#e6,#22,#07,#b1,#4f
	db #23,#7e,#e6,#44,#0f,#b1,#4f,#23
	db #7e,#e6,#88,#07,#b1,#a0,#12,#13
	db #7e,#e6,#11,#0f,#4f,#23,#7e,#e6
	db #22,#07,#b1,#4f,#23,#7e,#e6,#22
	db #b1,#4f,#23,#7e,#e6,#44,#07,#07
	db #b1,#a0,#12,#23,#13,#7e,#e6,#88
	db #4f,#7e,#e6,#11,#07,#07,#b1,#4f
	db #23,#7e,#e6,#22,#b1,#4f,#23,#7e
	db #e6,#44,#07,#07,#b1,#a0,#12,#23
	db #13,#7e,#e6,#88,#4f,#23,#7e,#e6
	db #88,#0f,#b1,#4f,#7e,#e6,#11,#07
	db #b1,#4f,#23,#7e,#e6,#22,#0f,#b1
	db #a0,#12,#23,#13,#7e,#e6,#44,#07
	db #4f,#23,#7e,#e6,#88,#0f,#b1,#4f
	db #7e,#e6,#11,#07,#b1,#4f,#23,#7e
	db #e6,#22,#0f,#b1,#a0,#12,#23,#13
	db #7e,#e6,#22,#07,#07,#4f,#23,#7e
	db #e6,#44,#b1,#4f,#23,#7e,#e6,#88
	db #0f,#0f,#b1,#4f,#7e,#e6,#11,#b1
	db #a0,#12,#13,#23,#7e,#e6,#22,#07
	db #07,#4f,#23,#7e,#e6,#44,#b1,#4f
	db #23,#7e,#e6,#88,#07,#07,#b1,#4f
	db #23,#7e,#e6,#88,#07,#b1,#a0,#12
	db #13,#7e,#e6,#11,#0f,#4f,#23,#7e
	db #e6,#22,#07,#b1,#4f,#23,#7e,#e6
	db #44,#0f,#b1,#4f,#23,#7e,#e6,#88
	db #07,#b1,#a0,#12,#13,#7e,#e6,#11
	db #0f,#4f,#23,#7e,#e6,#22,#07,#b1
	db #4f,#23,#7e,#e6,#22,#b1,#4f,#23
	db #7e,#e6,#44,#0f,#0f,#b1,#a0,#12
	db #23,#13,#7e,#e6,#88,#4f,#7e,#e6
	db #11,#07,#07,#b1,#4f,#23,#7e,#e6
	db #22,#b1,#4f,#23,#7e,#e6,#44,#0f
	db #0f,#b1,#a0,#12,#23,#13,#7e,#e6
	db #88,#4f,#23,#7e,#e6,#88,#0f,#b1
	db #4f,#7e,#e6,#11,#07,#b1,#4f,#23
	db #7e,#e6,#22,#0f,#b1,#a0,#12,#23
	db #13,#7e,#e6,#44,#07,#4f,#23,#7e
	db #e6,#88,#0f,#b1,#4f,#7e,#e6,#11
	db #07,#b1,#4f,#23,#7e,#e6,#22,#0f
	db #b1,#a0,#12,#13,#23,#08,#3d,#c2
	db #90,#29,#c9
;
.music_info
	db "Mini Castle Meeting - Cheat Part History (1993)(OdieSoft)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
