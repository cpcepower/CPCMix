; Music of Christmas 2001 - Part 2 - Music 2 (2002)(Brothers)(FG Brain)(ST-128 Module)
; Ripped by Megachur the 03/09/2017
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "CHR2P2M2.BIN"
	ENDIF

music_date_rip_day		equ 03
music_date_rip_month	equ 09
music_date_rip_year		equ 2017
music_adr				equ &4c42

	read "music_header.asm"

	jp l4c4b
	jp l4cdf
	jp l4cc3
;
.init_music
.l4c4b
;
	xor a
	ld hl,l51f6
	call l4cbc
	ld hl,l5224
	call l4cbc
	ld hl,l5252
	call l4cbc
	ld ix,l51f2
	ld iy,l527c
	ld de,#002e
	ld b,#03
.l4c6b
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
	djnz l4c6b
	ld hl,l510b
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
	ld (l5107),hl
	ld (l5109),hl
	ld a,#0c
	ld c,d
	call l50e7
	ld a,#0d
	ld c,d
	jp l50e7
.l4cbc
	ld b,#2a
.l4cbe
	ld (hl),a
	inc hl
	djnz l4cbe
	ret
;
.stop_music
.l4cc3
;
	ld a,#07
	ld c,#3f
	call l50e7
	ld a,#08
	ld c,#00
	call l50e7
	ld a,#09
	ld c,#00
	call l50e7
	ld a,#0a
	ld c,#00
	jp l50e7
;
.play_music
.l4cdf
;
	ld hl,l510d
	dec (hl)
	ld ix,l51f2
	ld bc,l5200
	call l4d81
	ld ix,l5220
	ld bc,l522e
	call l4d81
	ld ix,l524e
	ld bc,l525c
	call l4d81
	ld hl,l5106
	ld de,l510d
	ld b,#06
	call l4d5e
	ld b,#07
	call l4d5e
	ld b,#0b
	call l4d5e
	ld b,#0d
	call l4d5e
	ld de,l510d
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l5211
	call l4d37
	ld hl,l523f
	call l4d37
	ld hl,l526d
.l4d37
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
	jr nz,l4d4c
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l4d4c
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
.l4d5e
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l50e7
.l4d69
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l50e7
.l4d81
	ld a,(l510d)
	or a
	jp nz,l4e39
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l4e39
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4d69
	or a
	jp z,l4e2e
	ld r,a
	and #7f
	cp #10
	jr c,l4e09
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l4f81
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
	jr z,l4de2
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l4de2
	rrca
	ld c,a
	ld hl,l5282
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
	jr z,l4e01
	ld (ix+#1e),b
.l4e01
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l4e22
.l4e09
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l5112
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add e
	add h
	add l
	add (hl)
	add h
.l4e22
	ld a,d
	or a
	jr nz,l4e30
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l4e30
.l4e2e
	ld a,(hl)
	inc hl
.l4e30
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l4e39
	ld a,(ix+#17)
	or a
	jr nz,l4e4f
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l4e4f
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4e65
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4e65
	ld a,(ix+#0d)
	or a
	jr z,l4e73
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l4e91
.l4e73
	ld a,(ix+#1a)
	or a
	jp z,l4e98
	ld c,a
	cp #03
	jr nz,l4e80
	xor a
.l4e80
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l4e91
	ld a,(ix+#18)
	dec c
	jr z,l4e91
	ld a,(ix+#19)
.l4e91
	add (ix+#07)
	ld b,d
	call l4f81
.l4e98
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l4ec0
	dec (ix+#1b)
	jr nz,l4ec0
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l4ef8
.l4ec0
	ld a,(ix+#29)
	or a
	jr z,l4ef8
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l4eef
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l4ee6
	ld (ix+#29),#ff
	jr l4eef
.l4ee6
	cp (ix+#2b)
	jr nz,l4eef
	ld (ix+#29),#01
.l4eef
	ld b,d
	or a
	jp p,l4ef5
	dec b
.l4ef5
	ld c,a
	jr l4f03
.l4ef8
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l4f03
	pop hl
	bit 7,(ix+#14)
	jr z,l4f0c
	ld h,d
	ld l,d
.l4f0c
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l50e7
	ld c,h
	ld a,(ix+#02)
	call l50e7
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4f5f
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l4f4e
	dec (ix+#09)
	jr nz,l4f4e
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4f46
	xor a
	jr l4f4b
.l4f46
	cp #10
	jr nz,l4f4b
	dec a
.l4f4b
	ld (ix+#1e),a
.l4f4e
	ld a,b
	sub (ix+#1e)
	jr nc,l4f55
	xor a
.l4f55
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l50e7
.l4f5f
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l510e)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l4f7d
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l4f7d
	ld (l510e),hl
	ret
.l4f81
	ld hl,l5130
	cp #61
	jr nc,l4f8b
	add a
	ld c,a
	add hl,bc
.l4f8b
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l4f95
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l50ba
	ld (ix+#1e),a
	jp l4e22
.l4fa7
	dec b
.l4fa8
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l4fb3
	neg
.l4fb3
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
	jp l4e22
.l4fc9
	dec b
	jr l4fcd
.l4fcc
	inc b
.l4fcd
	call l50ba
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l4e22
.l4fdc
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
	jp l509f
.l4fed
	ld a,(hl)
	inc hl
	or a
	jr z,l500f
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
.l500f
	ld (ix+#29),a
	jp l4e22
.l5015
	dec hl
	ld a,(hl)
	and #0f
	ld (l5111),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l5110),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l4e22
.l502f
	ld a,(hl)
	or a
	jr z,l5040
	call l50bc
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l4e22
.l5040
	ld hl,#0101
	ld (l510c),hl
	jp l4e22
.l5049
	call l50ba
	ld (ix+#1e),a
	jp l4e22
.l5052
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l50cb
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l50cb
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l4e22
.l5074
	ld a,(hl)
	inc hl
	ld (l510b),a
	jp l4e22
.l507c
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
	jp l4e22
.l509b
	call l50ba
	add a
.l509f
	ld b,#00
	ld c,a
	push hl
	ld hl,l5302
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l4e22
.l50ba
	ld a,(hl)
	inc hl
.l50bc
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
.l50cb
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l5282
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l50e7
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
.l5106
	ret
.l510e equ $ + 7
.l510d equ $ + 6
.l510c equ $ + 5
.l510b equ $ + 4
.l5109 equ $ + 2
.l5107
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5111 equ $ + 2
.l5110 equ $ + 1
	db #38,#00,#00
.l5112
	dw l4f95,l4fa8,l4fa7,l4fcc
	dw l4fc9,l4fdc,l4fed,l5015
	dw l502f,l5015,l5049,l5052
	dw l5074,l507c,l509b
.l5130
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
.l51f2 equ $ + 2
	dw #000f,#0008
.l51f6 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l5200 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5211 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5220 equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l5224
	db #00,#00,#00,#00,#00,#00,#00,#00
.l522e equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l523f equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5252 equ $ + 6
.l524e equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l525c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l526d equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5282 equ $ + 6
.l527c
	db #a2,#55,#c6,#55,#ea,#55,#14,#0c
	db #14,#0c,#14,#0c,#00,#00,#22,#53
	db #62,#53,#82,#53,#00,#00,#14,#0c
	db #14,#0c,#14,#0c,#00,#00,#14,#0c
	db #14,#0c,#14,#0c,#00,#00,#14,#0c
	db #14,#0c,#14,#0c,#00,#00,#14,#0c
	db #14,#0c,#14,#0c,#00,#00,#a2,#53
	db #e2,#53,#02,#54,#00,#00,#22,#54
	db #62,#54,#82,#54,#18,#07,#a2,#54
	db #e2,#54,#82,#54,#18,#07,#02,#55
	db #42,#55,#62,#55,#08,#18,#14,#0c
	db #14,#0c,#14,#0c,#00,#00,#14,#0c
	db #14,#0c,#14,#0c,#00,#00,#14,#0c
	db #14,#0c,#14,#0c,#00,#00,#14,#0c
	db #14,#0c,#14,#0c,#00,#00,#14,#0c
	db #14,#0c,#14,#0c,#00,#00,#14,#0c
.l5302 equ $ + 6
	db #14,#0c,#14,#0c,#00,#00,#14,#0c
	db #82,#55,#14,#0c,#14,#0c,#14,#0c
	db #14,#0c,#14,#0c,#14,#0c,#14,#0c
	db #14,#0c,#14,#0c,#14,#0c,#14,#0c
	db #14,#0c,#14,#0c,#14,#0c,#00,#00
	db #80,#00,#40,#01,#a0,#01,#40,#02
	db #e8,#02,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#38,#00
	db #60,#00,#b0,#00,#18,#01,#48,#01
	db #80,#01,#c8,#01,#10,#02,#58,#02
	db #b0,#02,#00,#00,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0e,#0d,#0c,#0b,#09,#07,#06,#03
	db #01,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#06
	db #06,#05,#04,#04,#03,#02,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0e,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#0a,#09
	db #09,#09,#08,#08,#08,#07,#07,#07
	db #06,#06,#06,#05,#05,#05,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0b,#0a
	db #09,#07,#05,#07,#09,#0b,#0b,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#09,#09,#09,#09,#09,#02,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#02,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#02,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#02,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#0d,#0d
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#18
	db #24,#00,#18,#24,#00,#18,#24,#00
	db #18,#24,#00,#18,#24,#00,#18,#24
	db #00,#18,#24,#00,#18,#24,#00,#18
	db #24,#00,#18,#24,#00,#18,#00,#0e
	db #56,#00,#70,#56,#00,#70,#56,#00
	db #70,#56,#00,#70,#56,#00,#70,#56
	db #00,#70,#56,#00,#70,#56,#00,#70
	db #56,#00,#70,#56,#00,#70,#56,#80
	db #a8,#55,#00,#d2,#56,#00,#d5,#56
	db #00,#1c,#57,#00,#d5,#56,#00,#1c
	db #57,#00,#67,#57,#00,#c8,#57,#00
	db #d5,#56,#00,#1c,#57,#00,#29,#58
	db #00,#29,#58,#80,#cc,#55,#00,#d2
	db #56,#00,#8a,#58,#00,#d2,#56,#00
	db #8d,#58,#00,#af,#58,#00,#af,#58
	db #00,#af,#58,#00,#8d,#58,#00,#af
	db #58,#00,#0f,#59,#00,#0f,#59,#80
	db #f0,#55,#34,#81,#20,#34,#80,#02
	db #34,#80,#02,#34,#80,#02,#39,#80
	db #02,#39,#80,#02,#39,#80,#02,#39
	db #80,#02,#3b,#80,#02,#3b,#80,#02
	db #3b,#80,#02,#3b,#80,#02,#39,#80
	db #02,#39,#80,#02,#b9,#80,#bb,#80
	db #39,#80,#02,#34,#80,#02,#34,#80
	db #02,#34,#80,#02,#34,#80,#02,#39
	db #80,#02,#39,#80,#02,#39,#80,#02
	db #39,#80,#02,#3b,#80,#02,#3b,#80
	db #02,#3b,#80,#02,#3b,#80,#02,#39
	db #80,#02,#39,#80,#02,#39,#80,#02
	db #39,#80,#02,#ff,#34,#80,#02,#34
	db #80,#02,#34,#80,#02,#34,#80,#02
	db #39,#80,#02,#39,#80,#02,#39,#80
	db #02,#39,#80,#02,#3b,#80,#02,#3b
	db #80,#02,#3b,#80,#02,#3b,#80,#02
	db #39,#80,#02,#39,#80,#02,#b9,#80
	db #bb,#80,#39,#80,#02,#34,#80,#02
	db #34,#80,#02,#34,#80,#02,#34,#80
	db #02,#39,#80,#02,#39,#80,#02,#39
	db #80,#02,#39,#80,#02,#3b,#80,#02
	db #3b,#80,#02,#3b,#80,#02,#3b,#80
	db #02,#39,#80,#02,#39,#80,#02,#39
	db #80,#02,#39,#80,#02,#ff,#fe,#40
	db #ff,#00,#02,#50,#70,#03,#4c,#70
	db #03,#49,#70,#03,#4c,#70,#03,#4e
	db #70,#04,#4e,#70,#04,#4e,#70,#02
	db #50,#70,#02,#4e,#70,#02,#4c,#70
	db #02,#ce,#70,#4c,#70,#03,#50,#70
	db #03,#4c,#70,#03,#49,#70,#03,#4c
	db #70,#03,#4e,#70,#04,#4e,#70,#02
	db #4e,#70,#02,#4e,#70,#02,#50,#70
	db #03,#50,#70,#03,#4e,#70,#02,#ff
	db #4c,#70,#02,#50,#70,#03,#4c,#70
	db #03,#49,#70,#03,#4c,#70,#03,#4e
	db #70,#04,#4e,#70,#02,#4e,#70,#02
	db #4c,#70,#02,#50,#70,#02,#4e,#70
	db #02,#cc,#70,#4e,#70,#02,#4c,#70
	db #03,#50,#70,#04,#4c,#70,#02,#49
	db #70,#03,#4c,#70,#03,#4e,#70,#04
	db #4e,#70,#02,#4e,#70,#02,#4c,#70
	db #02,#4b,#70,#03,#49,#70,#03,#4b
	db #70,#02,#ff,#34,#8f,#21,#38,#80
	db #02,#3b,#80,#02,#38,#80,#02,#36
	db #80,#02,#39,#80,#02,#3d,#80,#02
	db #39,#80,#02,#3b,#80,#02,#3d,#80
	db #02,#3b,#80,#02,#3d,#80,#02,#3b
	db #80,#02,#39,#80,#02,#38,#80,#02
	db #36,#80,#02,#34,#80,#02,#38,#80
	db #02,#3b,#80,#02,#38,#80,#02,#36
	db #80,#02,#39,#80,#02,#3d,#80,#02
	db #39,#80,#02,#3b,#80,#02,#3d,#80
	db #02,#3b,#80,#02,#3d,#80,#02,#3f
	db #80,#02,#40,#80,#02,#42,#80,#02
	db #3f,#80,#02,#ff,#40,#8f,#21,#44
	db #80,#02,#47,#80,#02,#44,#80,#02
	db #42,#80,#02,#45,#80,#02,#49,#80
	db #02,#45,#80,#02,#47,#80,#02,#49
	db #80,#02,#47,#80,#02,#49,#80,#02
	db #47,#80,#02,#45,#80,#02,#44,#80
	db #02,#42,#80,#02,#40,#80,#02,#44
	db #80,#02,#47,#80,#02,#44,#80,#02
	db #42,#80,#02,#45,#80,#02,#49,#80
	db #02,#45,#80,#02,#47,#80,#02,#49
	db #80,#02,#47,#80,#02,#49,#80,#02
	db #4b,#80,#02,#4c,#80,#02,#4e,#80
	db #02,#4b,#80,#02,#ff,#4c,#71,#20
	db #4c,#70,#02,#50,#70,#02,#53,#70
	db #02,#51,#70,#02,#53,#70,#02,#55
	db #70,#02,#58,#70,#02,#5a,#70,#02
	db #57,#70,#02,#53,#70,#02,#57,#70
	db #02,#58,#70,#02,#5a,#70,#02,#58
	db #70,#02,#57,#70,#02,#58,#70,#02
	db #53,#70,#02,#50,#70,#02,#53,#70
	db #02,#51,#70,#02,#55,#70,#02,#58
	db #70,#02,#55,#70,#02,#57,#70,#02
	db #57,#70,#02,#57,#70,#02,#58,#70
	db #02,#5a,#70,#02,#5c,#70,#02,#5d
	db #70,#02,#5a,#70,#02,#ff,#00,#40
	db #ff,#40,#10,#08,#40,#10,#08,#40
	db #10,#08,#40,#10,#06,#40,#10,#02
	db #40,#10,#08,#40,#10,#08,#40,#10
	db #04,#40,#10,#04,#40,#10,#04,#40
	db #10,#04,#ff,#40,#10,#02,#40,#60
	db #02,#40,#10,#02,#40,#60,#02,#40
	db #10,#02,#40,#60,#02,#40,#10,#02
	db #40,#60,#02,#40,#10,#02,#40,#60
	db #02,#40,#10,#02,#40,#60,#02,#40
	db #10,#02,#40,#60,#02,#c0,#10,#40
	db #60,#03,#40,#10,#02,#40,#60,#02
	db #40,#10,#02,#40,#60,#02,#40,#10
	db #02,#40,#60,#02,#40,#10,#02,#40
	db #60,#02,#40,#10,#02,#40,#60,#02
	db #40,#10,#02,#40,#60,#02,#40,#10
	db #02,#40,#60,#02,#40,#10,#02,#40
	db #60,#02,#ff,#44,#9f,#21,#40,#61
	db #20,#40,#10,#02,#40,#60,#02,#45
	db #9f,#21,#40,#61,#20,#40,#10,#02
	db #40,#60,#02,#42,#9f,#21,#40,#61
	db #20,#40,#10,#02,#40,#60,#02,#45
	db #9f,#21,#40,#61,#20,#42,#9f,#11
	db #40,#61,#30,#44,#9f,#21,#40,#61
	db #20,#40,#10,#02,#40,#60,#02,#45
	db #9f,#21,#40,#61,#20,#40,#10,#02
	db #40,#60,#02,#42,#9f,#21,#40,#60
	db #02,#40,#10,#02,#40,#60,#02,#45
	db #9f,#21,#40,#60,#02,#40,#10,#02
	db #40,#60,#02,#ff
;
.music_info
	db "Christmas 2001 - Part 2 - Music 2 (2002)(Brothers)(FG Brain)",0
	db "ST-128 Module",0

	read "music_end.asm"
