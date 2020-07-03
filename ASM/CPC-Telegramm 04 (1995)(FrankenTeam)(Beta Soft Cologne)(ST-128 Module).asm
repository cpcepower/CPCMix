; Music of CPC-Telegramm 04 (1995)(FrankenTeam)(Beta Soft Cologne)(ST-128 Module)
; Ripped by Megachur the 11/03/2019
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "CPC04WIL.BIN"
	ENDIF

music_date_rip_day		equ 11
music_date_rip_month	equ 03
music_date_rip_year		equ 2019
music_adr				equ &19e8

	read "music_header.asm"

	jp l19f1
	jp l1a85
	jp l1a69
;
.init_music
.l19f1
;
	xor a
	ld hl,l1f9c
	call l1a62
	ld hl,l1fca
	call l1a62
	ld hl,l1ff8
	call l1a62
	ld ix,l1f98
	ld iy,l2022
	ld de,#002e
	ld b,#03
.l1a11
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l1a11
	ld hl,l1eb1
	ld (hl),#06
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l1ead),hl
	ld (l1eaf),hl
	ld a,#0c
	ld c,d
	call l1e8d
	ld a,#0d
	ld c,d
	jp l1e8d
.l1a62
	ld b,#2a
.l1a64
	ld (hl),a
	inc hl
	djnz l1a64
	ret
;
.stop_music
.l1a69
;
	ld a,#07
	ld c,#3f
	call l1e8d
	ld a,#08
	ld c,#00
	call l1e8d
	ld a,#09
	ld c,#00
	call l1e8d
	ld a,#0a
	ld c,#00
	jp l1e8d
;
.play_music
.l1a85
;
	ld hl,l1eb3
	dec (hl)
	ld ix,l1f98
	ld bc,l1fa6
	call l1b27
	ld ix,l1fc6
	ld bc,l1fd4
	call l1b27
	ld ix,l1ff4
	ld bc,l2002
	call l1b27
	ld hl,l1eac
	ld de,l1eb3
	ld b,#06
	call l1b04
	ld b,#07
	call l1b04
	ld b,#0b
	call l1b04
	ld b,#0d
	call l1b04
	ld de,l1eb3
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l1fb7
	call l1add
	ld hl,l1fe5
	call l1add
	ld hl,l2013
.l1add
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l1af2
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l1af2
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l1b04
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l1e8d
.l1b0f
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l1e8d
.l1b27
	ld a,(l1eb3)
	or a
	jp nz,l1bdf
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l1bdf
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l1b0f
	or a
	jp z,l1bd4
	ld r,a
	and #7f
	cp #10
	jr c,l1baf
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l1d27
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l1b88
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l1b88
	rrca
	ld c,a
	ld hl,l2028
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l1ba7
	ld (ix+#1e),b
.l1ba7
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l1bc8
.l1baf
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l1eb8
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	ld sp,#3332
	inc (hl)
	dec (hl)
.l1bc8 equ $ + 1
	ld (hl),#7a
	or a
	jr nz,l1bd6
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l1bd6
.l1bd4
	ld a,(hl)
	inc hl
.l1bd6
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l1bdf
	ld a,(ix+#17)
	or a
	jr nz,l1bf5
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l1bf5
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l1c0b
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l1c0b
	ld a,(ix+#0d)
	or a
	jr z,l1c19
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l1c37
.l1c19
	ld a,(ix+#1a)
	or a
	jp z,l1c3e
	ld c,a
	cp #03
	jr nz,l1c26
	xor a
.l1c26
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l1c37
	ld a,(ix+#18)
	dec c
	jr z,l1c37
	ld a,(ix+#19)
.l1c37
	add (ix+#07)
	ld b,d
	call l1d27
.l1c3e
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l1c66
	dec (ix+#1b)
	jr nz,l1c66
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l1c9e
.l1c66
	ld a,(ix+#29)
	or a
	jr z,l1c9e
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l1c95
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l1c8c
	ld (ix+#29),#ff
	jr l1c95
.l1c8c
	cp (ix+#2b)
	jr nz,l1c95
	ld (ix+#29),#01
.l1c95
	ld b,d
	or a
	jp p,l1c9b
	dec b
.l1c9b
	ld c,a
	jr l1ca9
.l1c9e
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l1ca9
	pop hl
	bit 7,(ix+#14)
	jr z,l1cb2
	ld h,d
	ld l,d
.l1cb2
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l1e8d
	ld c,h
	ld a,(ix+#02)
	call l1e8d
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l1d05
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l1cf4
	dec (ix+#09)
	jr nz,l1cf4
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l1cec
	xor a
	jr l1cf1
.l1cec
	cp #10
	jr nz,l1cf1
	dec a
.l1cf1
	ld (ix+#1e),a
.l1cf4
	ld a,b
	sub (ix+#1e)
	jr nc,l1cfb
	xor a
.l1cfb
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l1e8d
.l1d05
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l1eb4)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l1d23
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l1d23
	ld (l1eb4),hl
	ret
.l1d27
	ld hl,l1ed6
	cp #61
	jr nc,l1d31
	add a
	ld c,a
	add hl,bc
.l1d31
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l1d3b
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l1e60
	ld (ix+#1e),a
	jp l1bc8
.l1d4d
	dec b
.l1d4e
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l1d59
	neg
.l1d59
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l1bc8
.l1d6f
	dec b
	jr l1d73
.l1d72
	inc b
.l1d73
	call l1e60
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l1bc8
.l1d82
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l1e45
.l1d93
	ld a,(hl)
	inc hl
	or a
	jr z,l1db5
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l1db5
	ld (ix+#29),a
	jp l1bc8
.l1dbb
	dec hl
	ld a,(hl)
	and #0f
	ld (l1eb7),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l1eb6),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l1bc8
.l1dd5
	ld a,(hl)
	or a
	jr z,l1de6
	call l1e62
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l1bc8
.l1de6
	ld hl,#0101
	ld (l1eb2),hl
	jp l1bc8
.l1def
	call l1e60
	ld (ix+#1e),a
	jp l1bc8
.l1df8
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l1e71
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l1e71
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l1bc8
.l1e1a
	ld a,(hl)
	inc hl
	ld (l1eb1),a
	jp l1bc8
.l1e22
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l1bc8
.l1e41
	call l1e60
	add a
.l1e45
	ld b,#00
	ld c,a
	push hl
	ld hl,l20a8
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l1bc8
.l1e60
	ld a,(hl)
	inc hl
.l1e62
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l1e71
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l2028
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l1e8d
	di
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
	ei
.l1eac
	ret
.l1eb4 equ $ + 7
.l1eb3 equ $ + 6
.l1eb2 equ $ + 5
.l1eb1 equ $ + 4
.l1eaf equ $ + 2
.l1ead
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1eb7 equ $ + 2
.l1eb6 equ $ + 1
	db #38,#00,#00
.l1eb8
	dw l1d3b,l1d4e,l1d4d,l1d72
	dw l1d6f,l1d82,l1d93,l1dbb
	dw l1dd5,l1dbb,l1def,l1df8
	dw l1e1a,l1e22,l1e41
.l1ed6
	dw #0000,#0e18,#0d4d,#0c8e
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
.l1f98 equ $ + 2
	dw #000f,#0008
.l1f9c equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l1fa6 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1fb7 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1fc6 equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l1fca
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1fd4 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1fe5 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1ff8 equ $ + 6
.l1ff4 equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2002
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2013 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2028 equ $ + 6
.l2022
	db #c8,#23,#e6,#23,#04,#24,#c8,#20
	db #08,#21,#28,#21,#08,#00,#48,#21
	db #88,#21,#28,#21,#08,#00,#a8,#21
	db #e8,#21,#08,#22,#00,#00,#28,#22
	db #68,#22,#88,#22,#00,#00,#a8,#22
	db #e8,#22,#28,#21,#10,#10,#c8,#20
	db #08,#23,#28,#21,#08,#18,#95,#79
	db #6a,#a3,#a2,#82,#f4,#e4,#c8,#20
	db #28,#23,#48,#23,#00,#00,#a7,#e6
	db #d6,#90,#6a,#81,#ca,#de,#d3,#e1
	db #d5,#b0,#b6,#4d,#c9,#db,#ce,#e0
	db #d1,#a4,#b9,#ec,#1f,#13,#e2,#b5
	db #cf,#a5,#e3,#58,#b9,#c5,#dc,#83
	db #cc,#41,#e5,#76,#98,#68,#b1,#7b
	db #66,#42,#c4,#42,#9c,#99,#55,#91
	db #ba,#d9,#fa,#d9,#80,#00,#7a,#da
.l20a8 equ $ + 6
	db #ba,#da,#fa,#da,#80,#01,#7a,#db
	db #68,#23,#88,#23,#3a,#dc,#7a,#dc
	db #ba,#dc,#fa,#dc,#3a,#dd,#a8,#23
	db #ba,#dd,#fa,#dd,#3a,#de,#7a,#de
	db #ba,#de,#fa,#de,#3a,#df,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#0a,#09,#09
	db #09,#09,#09,#09,#08,#07,#06,#05
	db #04,#03,#02,#01,#00,#00,#00,#00
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#70,#03
	db #80,#03,#90,#03,#a0,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#00,#00,#00,#05,#00
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#80,#00
	db #00,#01,#80,#01,#00,#02,#80,#02
	db #00,#03,#00,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0a,#0c
	db #0d,#0e,#0d,#0c,#0b,#8a,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0f,#0b
	db #07,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#22
	db #24,#00,#7f,#24,#00,#1f,#25,#00
	db #1f,#25,#00,#1f,#25,#00,#1f,#25
	db #00,#1f,#25,#00,#1f,#25,#00,#7f
	db #24,#80,#cb,#23,#00,#c0,#25,#00
	db #ca,#25,#00,#ca,#25,#00,#ca,#25
	db #00,#ca,#25,#00,#ca,#25,#00,#ca
	db #25,#00,#ca,#25,#00,#ca,#25,#80
	db #e9,#23,#00,#4c,#26,#00,#69,#26
	db #00,#c6,#26,#00,#c6,#26,#00,#27
	db #27,#00,#27,#27,#00,#c6,#26,#00
	db #c6,#26,#00,#69,#26,#80,#07,#24
	db #c2,#00,#42,#00,#02,#42,#00,#02
	db #42,#00,#02,#c2,#00,#42,#00,#06
	db #c2,#00,#c2,#00,#be,#00,#3e,#00
	db #02,#3e,#00,#02,#3e,#00,#02,#be
	db #00,#40,#00,#02,#40,#00,#02,#40
	db #00,#02,#c0,#00,#c0,#00,#c2,#00
	db #42,#00,#02,#42,#00,#02,#42,#00
	db #02,#c2,#00,#42,#00,#06,#c2,#00
	db #c2,#00,#be,#00,#3e,#00,#02,#3e
	db #00,#02,#3e,#00,#02,#be,#00,#40
	db #00,#02,#40,#00,#02,#40,#00,#02
	db #c0,#00,#c0,#00,#ff,#3d,#31,#10
	db #f4,#70,#4e,#5f,#12,#74,#71,#10
	db #bd,#20,#f4,#70,#4e,#5f,#12,#3d
	db #31,#10,#bd,#30,#f4,#70,#4e,#5f
	db #12,#74,#71,#10,#bd,#20,#f4,#70
	db #4e,#5f,#12,#3d,#21,#10,#bd,#30
	db #f4,#70,#4a,#5f,#11,#74,#71,#10
	db #bd,#20,#f4,#70,#4a,#5f,#11,#74
	db #71,#10,#bd,#30,#bd,#30,#4c,#5f
	db #11,#74,#71,#10,#bd,#20,#f4,#70
	db #4c,#5f,#11,#3d,#21,#10,#bd,#30
	db #f4,#70,#4e,#5f,#12,#74,#71,#10
	db #bd,#20,#f4,#70,#4e,#5f,#12,#3d
	db #31,#10,#bd,#30,#f4,#70,#4e,#5f
	db #12,#74,#71,#10,#bd,#20,#f4,#70
	db #4e,#5f,#12,#3d,#21,#10,#bd,#30
	db #f4,#70,#51,#5f,#11,#74,#71,#10
	db #bd,#20,#f4,#70,#51,#5f,#11,#74
	db #71,#10,#bd,#20,#bd,#20,#53,#5f
	db #11,#3d,#21,#10,#bd,#20,#f4,#70
	db #bd,#20,#bd,#20,#ff,#3d,#31,#10
	db #f4,#70,#4e,#5f,#12,#74,#71,#10
	db #bd,#20,#f4,#70,#4e,#5f,#12,#3d
	db #31,#10,#bd,#30,#f4,#70,#4e,#5f
	db #12,#74,#71,#10,#bd,#20,#f4,#70
	db #4e,#5f,#12,#3d,#21,#10,#bd,#30
	db #f4,#70,#4a,#5f,#11,#74,#71,#10
	db #bd,#20,#f4,#70,#4a,#5f,#11,#74
	db #71,#10,#bd,#30,#bd,#30,#4c,#5f
	db #11,#74,#71,#10,#bd,#20,#f4,#70
	db #4c,#5f,#11,#3d,#21,#10,#bd,#30
	db #f4,#70,#4e,#5f,#12,#74,#71,#10
	db #bd,#20,#f4,#70,#4e,#5f,#12,#3d
	db #31,#10,#bd,#30,#f4,#70,#4e,#5f
	db #12,#74,#71,#10,#bd,#20,#f4,#70
	db #4e,#5f,#12,#3d,#21,#10,#bd,#30
	db #f4,#70,#51,#5f,#11,#74,#71,#10
	db #bd,#20,#f4,#70,#51,#5f,#11,#74
	db #71,#10,#bd,#30,#bd,#20,#53,#5f
	db #11,#74,#71,#10,#bd,#20,#f4,#70
	db #3d,#21,#10,#bd,#20,#ff,#fe,#3c
	db #3d,#20,#02,#bd,#20,#bd,#20,#ff
	db #2a,#0f,#18,#aa,#00,#b6,#00,#aa
	db #00,#aa,#00,#aa,#00,#b6,#00,#aa
	db #00,#aa,#00,#aa,#00,#b6,#00,#aa
	db #00,#aa,#00,#aa,#00,#b6,#00,#aa
	db #00,#a6,#00,#a6,#00,#b2,#00,#a6
	db #00,#a6,#00,#a6,#00,#b2,#00,#a6
	db #00,#a8,#00,#a8,#00,#b4,#00,#a8
	db #00,#a8,#00,#a8,#00,#b4,#00,#a8
	db #00,#aa,#00,#aa,#00,#b6,#00,#aa
	db #00,#aa,#00,#aa,#00,#b6,#00,#aa
	db #00,#aa,#00,#aa,#00,#b6,#00,#aa
	db #00,#aa,#00,#aa,#00,#b6,#00,#aa
	db #00,#ad,#00,#ad,#00,#b9,#00,#ad
	db #00,#ad,#00,#ad,#00,#b9,#00,#ad
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#ff,#fe,#30,#b2,#00,#32,#00
	db #02,#32,#00,#02,#32,#00,#02,#b2
	db #00,#34,#00,#02,#34,#00,#02,#34
	db #00,#02,#b4,#00,#b4,#00,#ff,#c2
	db #00,#42,#00,#02,#42,#00,#02,#42
	db #00,#02,#c2,#00,#42,#00,#06,#c2
	db #00,#c2,#00,#be,#00,#3e,#00,#02
	db #3e,#00,#02,#3e,#00,#02,#be,#00
	db #40,#00,#02,#40,#00,#02,#40,#00
	db #02,#c0,#00,#c0,#00,#c2,#00,#42
	db #00,#02,#42,#00,#02,#42,#00,#02
	db #c2,#00,#42,#00,#06,#c2,#00,#c2
	db #00,#c5,#00,#45,#00,#02,#45,#00
	db #02,#45,#00,#02,#c5,#00,#47,#00
	db #02,#47,#00,#02,#47,#00,#02,#c7
	db #00,#c7,#00,#ff,#4e,#40,#02,#49
	db #40,#02,#4e,#40,#02,#51,#40,#02
	db #4e,#40,#02,#49,#40,#02,#47,#40
	db #02,#49,#40,#02,#4a,#40,#02,#45
	db #40,#02,#4e,#40,#02,#4a,#40,#02
	db #4c,#40,#02,#47,#40,#02,#50,#40
	db #02,#4c,#40,#02,#4e,#40,#02,#49
	db #40,#02,#4e,#40,#02,#51,#40,#02
	db #4e,#40,#02,#49,#40,#02,#47,#40
	db #02,#49,#40,#02,#4c,#40,#02,#49
	db #40,#02,#47,#40,#02,#49,#40,#02
	db #4e,#40,#02,#4b,#40,#02,#49,#40
	db #02,#47,#40,#02,#ff,#d1,#10,#d1
	db #10,#50,#10,#02,#51,#10,#02,#d0
	db #10,#51,#10,#03,#50,#10,#02,#4e
	db #10,#02,#d0,#10,#d0,#10,#d1,#10
	db #d1,#10,#ce,#10,#ca,#10,#d3,#10
	db #51,#10,#02,#51,#10,#02,#d1,#10
	db #50,#10,#02,#4e,#10,#02,#50,#10
	db #02,#d1,#10,#d1,#10,#50,#10,#02
	db #51,#10,#02,#d0,#10,#51,#10,#03
	db #50,#10,#02,#4e,#10,#02,#d0,#10
	db #d0,#10,#49,#10,#02,#4c,#10,#02
	db #51,#10,#02,#55,#10,#02,#4e,#10
	db #02,#53,#10,#02,#57,#10,#02,#53
	db #10,#02,#ff,#0b,#ac,#02,#bb,#08
	db #17,#0d,#2c,#17,#96,#26,#e9,#34
	db #9a,#43,#ff
;
.music_info
	db "CPC-Telegramm 04 (1995)(FrankenTeam)(Beta Soft Cologne)",0
	db "ST-128 Module - Wild P.S.G.",0

	read "music_end.asm"
