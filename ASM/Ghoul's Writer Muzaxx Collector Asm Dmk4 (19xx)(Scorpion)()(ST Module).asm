; Music of Ghoul's Writer Muzaxx Collector Asm Dmk4 (19xx)(Scorpion)()(ST Module)
; Ripped by Megachur the 04/10/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "GHOWMCAD.BIN"
	ENDIF

music_date_rip_day		equ 04
music_date_rip_month	equ 10
music_date_rip_year		equ 2014
music_adr				equ &6000

	read "music_header.asm"

	jp l600b
	jp l6093
	jp l6077
	ld h,(hl)
	inc b
;
.init_music
.l600b
;
	ld b,#03
	ld ix,l63da
	ld iy,l6306
	ld de,#001c
.l6018
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
	djnz l6018
	ld a,#05
	ld (l60bb),a
	ld a,d
	ld (l60cf),a
	inc a
	ld (l60b6),a
	ld a,#38
	ld (l60c0),a
	ld a,#ff
	ld (l6302),a
	ld (l6303),a
	ld (l6304),a
	ld (l6305),a
	ld a,#0c
	ld c,d
	call l62e4
	ld a,#0d
	ld c,d
	jp l62e4
;
.stop_music
.l6077
;
	ld a,#07
	ld c,#3f
	call l62e4
	ld a,#08
	ld c,#00
	call l62e4
	ld a,#09
	ld c,#00
	call l62e4
	ld a,#0a
	ld c,#00
	jp l62e4
;
.play_music
.l6093
;
	ld hl,l60b6
	dec (hl)
	ld ix,l63da
	ld bc,l63e8
	call l6149
	ld ix,l63f6
	ld bc,l6404
	call l6149
	ld ix,l6412
	ld bc,l6420
	call l6149
.l60b6 equ $ + 1
	ld a,#01
	or a
	jr nz,l60bf
.l60bb equ $ + 1
	ld a,#05
	ld (l60b6),a
.l60c0 equ $ + 1
.l60bf
	ld a,#38
	ld hl,l6303
	cp (hl)
	jr z,l60ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l62e4
.l60cf equ $ + 1
.l60ce
	ld a,#00
	ld hl,l6302
	cp (hl)
	jr z,l60dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l62e4
.l60de equ $ + 1
.l60dd
	ld a,#00
	ld hl,l6304
	cp (hl)
	jr z,l60ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l62e4
.l60ed equ $ + 1
.l60ec
	ld a,#00
	ld hl,l6305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l62e4
.l60fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l61fa
.l6109
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
	jp l62e4
.l6123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l6138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l6138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l615c
.l6149
	ld a,(l60b6)
	or a
	jp nz,l61fa
	dec (ix+#06)
	jp nz,l61fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l615c
	ld a,(hl)
	or a
	jr z,l60fa
	cp #fe
	jr z,l6109
	cp #ff
	jr z,l6123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l630c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l6198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l6198
	and #7f
	ld (ix+#06),a
	jr l61eb
.l6198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l61ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l61ac
	add a
	add a
	add a
	ld e,a
	ld hl,l6442
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
	jr z,l61eb
	cp #f0
	jp z,l62a0
	cp #d0
	jp z,l62bc
	cp #b0
	jp z,l62c4
	cp #80
	jp nc,l62cc
	cp #10
	jr nz,l61eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l61eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l61fa
	ld a,(ix+#17)
	or a
	jr nz,l620e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l620e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l6239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l630c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l6239
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
	call l62e4
	ld c,h
	ld a,(ix+#03)
	call l62e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6277
	and #0f
	sub (ix+#0a)
	jr nc,l626d
	xor a
.l626d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l62e4
.l6277
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
	jr z,l6294
	ld b,a
	ld a,c
	ld (l60cf),a
	ld a,b
	sub #40
.l6294
	ld (l629b),a
	ld a,(l60c0)
.l629b equ $ + 1
	set 3,a
	ld (l60c0),a
	ret
.l62a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l64c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l61eb
.l62bc
	inc hl
	ld a,(hl)
	ld (l60bb),a
	jp l61eb
.l62c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l61eb
.l62cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l60ed),a
	inc hl
	ld a,(hl)
	ld (l60de),a
	jp l61eb
.l62e4
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
.l6305 equ $ + 3
.l6304 equ $ + 2
.l6303 equ $ + 1
.l6302
	db #00,#38,#00,#00
.l6306
	dw l6742,l6760,l677e
.l630c
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
.l63da
	db #a7,#77,#00,#01,#08,#07,#02,#26
.l63e8 equ $ + 6
	db #00,#00,#00,#df,#45,#77,#e2,#75
	db #62,#76,#42,#76,#00,#00,#05,#1b
.l63f6 equ $ + 4
	db #aa,#01,#00,#00,#66,#78,#02,#03
	db #09,#10,#36,#3a,#00,#00,#00,#e7
.l6404 equ $ + 2
	db #63,#77,#e2,#75,#22,#76,#42,#76
	db #0b,#00,#02,#00,#6a,#00,#02,#00
.l6412
	db #82,#78,#04,#05,#0a,#10,#36,#16
.l6420 equ $ + 6
	db #00,#00,#00,#ef,#81,#77,#e2,#75
	db #82,#76,#42,#76,#00,#00,#02,#00
	db #31,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l6442
	db #e2,#64,#22,#65,#42,#65,#00,#00
	db #62,#65,#a2,#65,#c2,#65,#00,#00
	db #25,#c2,#21,#23,#fc,#60,#00,#ff
	db #db,#6e,#fd,#00,#4c,#cd,#23,#56
	db #ff,#6f,#ec,#6e,#e5,#ec,#23,#4e
	db #da,#6e,#a6,#6f,#74,#6d,#50,#30
	db #e2,#65,#22,#66,#42,#66,#0b,#15
	db #e2,#65,#62,#66,#42,#66,#00,#00
	db #e2,#65,#82,#66,#42,#66,#00,#00
	db #a2,#66,#e2,#66,#42,#66,#08,#18
	db #dc,#6e,#dc,#6e,#dc,#6e,#00,#00
	db #dc,#6e,#dc,#6e,#dc,#6e,#00,#00
	db #dc,#6e,#dc,#6e,#dc,#6e,#00,#00
	db #dc,#6e,#dc,#6e,#dc,#6e,#00,#00
	db #dc,#6e,#dc,#6e,#dc,#6e,#00,#00
	db #dc,#6e,#dc,#6e,#dc,#6e,#00,#00
.l64c2
	db #dc,#6e,#02,#67,#22,#67,#dc,#6e
	db #dc,#6e,#dc,#6e,#dc,#6e,#dc,#6e
	db #dc,#6e,#dc,#6e,#dc,#6e,#dc,#6e
	db #dc,#6e,#dc,#6e,#dc,#6e,#dc,#6e
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0b,#0a,#0a,#09,#06,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#08
	db #08,#07,#07,#06,#05,#04,#04,#04
	db #04,#03,#02,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#07,#07,#07,#08,#08
	db #08,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0b,#0b,#0b,#0a,#0a,#09,#09,#08
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#03,#03,#03,#03,#03
	db #0f,#0f,#0e,#0e,#0e,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0a,#0a,#0a,#09,#09,#08,#08,#07
	db #06,#05,#04,#03,#02,#01,#01,#01
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #0d,#0c,#0b,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
.l6742
	db #00,#9c,#67,#00,#9c,#67,#00,#9c
	db #67,#00,#d0,#67,#00,#d0,#67,#00
	db #fe,#67,#00,#18,#68,#00,#30,#68
.l6760 equ $ + 6
	db #00,#30,#68,#80,#48,#67,#00,#64
	db #68,#00,#67,#68,#00,#6a,#68,#00
	db #75,#68,#00,#75,#68,#00,#6a,#68
	db #00,#6a,#68,#00,#6a,#68,#00,#6a
.l677e equ $ + 4
	db #68,#80,#66,#67,#00,#80,#68,#00
	db #83,#68,#00,#83,#68,#00,#83,#68
	db #00,#83,#68,#00,#83,#68,#00,#83
	db #68,#00,#83,#68,#00,#83,#68,#80
	db #84,#67,#30,#04,#07,#30,#82,#2b
	db #82,#2e,#82,#30,#82,#30,#82,#2b
	db #82,#2e,#82,#2b,#82,#2e,#82,#37
	db #86,#2e,#82,#30,#86,#30,#82,#2b
	db #82,#2e,#82,#30,#82,#30,#82,#2b
	db #82,#2e,#82,#30,#82,#33,#82,#30
	db #86,#2e,#82,#30,#82,#ff,#3c,#04
	db #07,#37,#82,#33,#84,#33,#82,#37
	db #82,#3c,#84,#3c,#82,#3a,#82,#3c
	db #84,#3c,#82,#3a,#82,#3c,#82,#3c
	db #84,#38,#86,#38,#84,#3a,#84,#3a
	db #84,#3a,#82,#35,#82,#3a,#82,#3c
	db #82,#3e,#82,#ff,#48,#16,#09,#48
	db #82,#4b,#82,#4a,#82,#48,#82,#4b
	db #8e,#4f,#82,#4d,#84,#4a,#84,#4a
	db #82,#4b,#84,#4a,#84,#ff,#48,#16
	db #09,#48,#82,#4b,#82,#4a,#82,#48
	db #82,#4b,#8e,#4f,#82,#4d,#86,#52
	db #84,#54,#84,#56,#84,#ff,#3c,#04
	db #07,#3c,#82,#37,#82,#3a,#82,#3c
	db #82,#3c,#82,#37,#82,#3a,#82,#37
	db #82,#3a,#82,#43,#86,#3a,#82,#3c
	db #86,#3c,#82,#37,#82,#3a,#82,#3c
	db #82,#3c,#82,#37,#82,#3a,#82,#3c
	db #82,#3f,#82,#3c,#86,#3a,#82,#3c
	db #82,#ff,#fe,#40,#ff,#00,#40,#ff
	db #48,#20,#f6,#02,#44,#10,#f6,#01
	db #46,#90,#ff,#48,#20,#f6,#02,#44
	db #10,#f6,#01,#46,#90,#ff,#fe,#40
	db #ff,#30,#02,#08,#24,#82,#3a,#02
	db #01,#24,#02,#08,#30,#82,#30,#82
	db #3a,#02,#01,#30,#02,#08,#24,#82
	db #24,#82,#3a,#02,#01,#24,#02,#08
	db #30,#82,#24,#82,#3a,#02,#01,#24
	db #02,#08,#20,#82,#2c,#82,#3a,#02
	db #01,#2c,#02,#08,#2c,#82,#2c,#82
	db #3a,#02,#01,#20,#02,#08,#22,#82
	db #2e,#82,#3a,#02,#01,#22,#02,#08
	db #2e,#82,#22,#82,#3a,#02,#01,#2b
	db #02,#08,#ff,#82,#4b,#8e,#4f,#82
	db #4d,#84,#4a,#84,#4a,#82,#4b,#84
	db #4a,#84,#fd,#11,#fd,#77,#12,#86
	db #52,#84,#54,#84,#56,#84,#ff,#3c
	db #04,#07,#3c,#82,#37,#82,#3a,#82
	db #3c,#82,#fd,#06,#33,#78,#09,#37
	db #82,#3a,#82,#43,#86,#3a,#82,#3c
	db #86,#fd,#08,#33,#78,#fd,#08,#33
	db #78,#18,#3f,#82,#3c,#86,#3a,#82
	db #3c,#82,#ff,#fe,#40,#ff,#00,#40
	db #ff,#48,#20,#f6,#02,#44,#10,#f6
	db #01,#46,#90,#fd,#0a,#69,#78,#1b
	db #90,#ff,#fe,#40,#ff,#30,#02,#08
	db #24,#82,#3a,#02,#01,#24,#02,#08
	db #30,#82,#30,#82,#3a,#02,#01,#30
	db #02,#08,#24,#82,#fd,#09,#86,#78
	db #fd,#09,#99,#78,#0a,#20,#82,#2c
	db #82,#3a,#02,#01,#2c,#02,#08,#2c
	db #fd,#06,#ad,#78,#17,#20,#02,#08
	db #22,#82,#2e,#82,#3a,#02,#01,#22
	db #02,#08,#2e,#82,#22,#82,#3a,#02
	db #01,#2b,#02,#08,#ff,#ff,#11,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0d,#0c,#0b,#0a,#08
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#00,#00,#00,#04,#00,#00
	db #00,#04,#00,#00,#00,#04,#00,#00
	db #00,#04,#00,#00,#00,#04,#00,#00
	db #00,#04,#00,#00,#00,#04,#00,#00
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#07,#00,#07,#00,#07,#00,#07
	db #00,#07,#00,#07,#00,#07,#00,#07
	db #00,#07,#00,#07,#00,#07,#00,#07
	db #00,#07,#00,#07,#00,#07,#00,#07
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#14,#6f,#00,#14,#6f,#00,#14
	db #6f,#00,#14,#6f,#00,#d5,#6d,#00
	db #d5,#6d,#00,#d5,#6d,#00,#d5,#6d
	db #00,#f7,#6d,#00,#f7,#6d,#00,#f7
	db #6d,#00,#f7,#6d,#00,#1b,#6e,#00
	db #1b,#6e,#00,#1b,#6e,#00,#1b,#6e
	db #00,#91,#6e,#00,#ad,#6e,#00,#91
	db #6e,#00,#ad,#6e,#00,#91,#6e,#00
	db #ad,#6e,#00,#91,#6e,#00,#ad,#6e
	db #00,#14,#6f,#00,#14,#6f,#00,#14
	db #6f,#00,#14,#6f,#00,#18,#6f,#00
	db #18,#6f,#00,#18,#6f,#00,#18,#6f
	db #00,#18,#6f,#00,#18,#6f,#00,#18
	db #6f,#00,#18,#6f,#00,#18,#6f,#00
	db #18,#6f,#00,#18,#6f,#00,#18,#6f
	db #00,#18,#6f,#00,#18,#6f,#00,#8e
	db #6f,#00,#8e,#6f,#00,#8e,#6f,#00
	db #8e,#6f,#00,#92,#6f,#00,#92,#6f
	db #00,#92,#6f,#00,#92,#6f,#00,#d1
	db #6f,#00,#d1,#6f,#00,#f4,#6f,#00
	db #17,#70,#00,#14,#6f,#00,#14,#6f
	db #00,#d5,#6e,#00,#d5,#6e,#00,#d5
	db #6e,#00,#d5,#6e,#00,#ab,#6d,#00
	db #ab,#6d,#00,#ab,#6d,#00,#ab,#6d
	db #00,#3a,#70,#00,#3a,#70,#00,#3a
	db #70,#00,#3a,#70,#00,#3a,#70,#00
	db #3a,#70,#00,#3a,#70,#00,#3a,#70
	db #00,#64,#70,#00,#64,#70,#00,#64
	db #70,#00,#64,#70,#00,#9f,#70,#00
	db #9f,#70,#00,#9f,#70,#00,#9f,#70
	db #00,#a7,#70,#00,#a7,#70,#00,#a7
	db #70,#00,#a7,#70,#00,#a7,#70,#00
	db #a7,#70,#00,#a7,#70,#00,#a7,#70
	db #00,#ab,#6d,#00,#ab,#6d,#00,#d5
	db #6e,#00,#d5,#6e,#00,#d5,#6e,#00
	db #d5,#6e,#00,#14,#6f,#00,#14,#6f
	db #80,#42,#6a,#00,#d4,#70,#00,#d4
	db #70,#00,#d4,#70,#00,#d4,#70,#00
	db #d4,#70,#00,#d4,#70,#00,#d4,#70
	db #00,#d4,#70,#00,#f8,#70,#00,#f8
	db #70,#00,#f8,#70,#00,#f8,#70,#00
	db #d4,#70,#00,#d4,#70,#00,#d4,#70
	db #00,#d4,#70,#00,#6e,#71,#00,#92
	db #71,#00,#6e,#71,#00,#92,#71,#00
	db #6e,#71,#00,#92,#71,#00,#6e,#71
	db #00,#92,#71,#00,#c4,#71,#00,#c4
	db #71,#00,#c4,#71,#00,#c4,#71,#00
	db #a9,#71,#00,#a9,#71,#00,#a9,#71
	db #00,#a9,#71,#00,#df,#71,#00,#df
	db #71,#00,#e4,#71,#00,#e4,#71,#00
	db #df,#71,#00,#df,#71,#00,#e4,#71
	db #00,#e4,#71,#00,#e4,#71,#00,#e4
	db #71,#00,#a9,#71,#00,#a9,#71,#00
	db #a9,#71,#00,#a9,#71,#00,#a9,#71
	db #00,#a9,#71,#00,#a9,#71,#00,#a9
	db #71,#00,#e9,#71,#00,#e9,#71,#00
	db #ec,#71,#00,#1d,#72,#00,#40,#72
	db #00,#40,#72,#00,#a9,#71,#00,#a9
	db #71,#00,#a9,#71,#00,#a9,#71,#00
	db #b1,#70,#00,#b1,#70,#00,#b1,#70
	db #00,#b1,#70,#00,#63,#72,#00,#63
	db #72,#00,#63,#72,#00,#63,#72,#00
	db #63,#72,#00,#63,#72,#00,#63,#72
	db #00,#63,#72,#00,#87,#72,#00,#87
	db #72,#00,#87,#72,#00,#87,#72,#00
	db #b4,#72,#00,#b4,#72,#00,#b4,#72
	db #00,#b4,#72,#00,#e1,#72,#00,#e1
	db #72,#00,#e1,#72,#00,#e1,#72,#00
	db #e1,#72,#00,#e1,#72,#00,#e1,#72
	db #00,#e1,#72,#00,#b1,#70,#00,#b1
	db #70,#00,#a9,#71,#00,#a9,#71,#00
	db #a9,#71,#00,#a9,#71,#00,#d4,#70
	db #00,#d4,#70,#80,#65,#6b,#00,#e2
	db #73,#00,#e2,#73,#00,#e2,#73,#00
	db #e2,#73,#00,#1b,#73,#00,#1b,#73
	db #00,#1b,#73,#00,#1b,#73,#00,#48
	db #73,#00,#48,#73,#00,#48,#73,#00
	db #48,#73,#00,#55,#73,#00,#55,#73
	db #00,#55,#73,#00,#55,#73,#00,#85
	db #73,#00,#85,#73,#00,#85,#73,#00
	db #85,#73,#00,#85,#73,#00,#85,#73
	db #00,#85,#73,#00,#85,#73,#00,#0f
	db #74,#00,#0f,#74,#00,#0f,#74,#00
	db #0f,#74,#00,#3c,#74,#00,#3c,#74
	db #00,#3c,#74,#00,#3c,#74,#00,#0f
	db #74,#00,#0f,#74,#00,#0f,#74,#00
	db #0f,#74,#00,#0f,#74,#00,#0f,#74
	db #00,#0f,#74,#00,#0f,#74,#00,#0f
	db #74,#00,#0f,#74,#00,#69,#74,#00
	db #69,#74,#00,#69,#74,#00,#69,#74
	db #00,#94,#74,#00,#94,#74,#00,#94
	db #74,#00,#94,#74,#00,#c2,#74,#00
	db #c2,#74,#00,#f7,#74,#00,#c2,#74
	db #00,#c2,#74,#00,#c2,#74,#00,#b5
	db #73,#00,#b5,#73,#00,#b5,#73,#00
	db #b5,#73,#00,#0e,#73,#00,#0e,#73
	db #00,#0e,#73,#00,#0e,#73,#00,#2c
	db #75,#00,#2c,#75,#00,#2c,#75,#00
	db #2c,#75,#00,#32,#75,#00,#32,#75
	db #00,#32,#75,#00,#32,#75,#00,#4b
	db #75,#00,#4b,#75,#00,#4b,#75,#00
	db #4b,#75,#00,#76,#75,#00,#76,#75
	db #00,#76,#75,#00,#76,#75,#00,#4b
	db #75,#00,#4b,#75,#00,#4b,#75,#00
	db #4b,#75,#00,#4b,#75,#00,#4b,#75
	db #00,#4b,#75,#00,#4b,#75,#00,#0e
	db #73,#00,#0e,#73,#00,#b5,#73,#00
	db #b5,#73,#00,#b5,#73,#00,#b5,#73
	db #00,#e2,#73,#00,#e2,#73,#80,#88
	db #6c,#1f,#04,#08,#1f,#84,#2b,#04
	db #0a,#1f,#04,#08,#1f,#84,#2b,#04
	db #0a,#1f,#04,#08,#2b,#04,#0a,#1f
	db #04,#08,#2b,#04,#0a,#2b,#84,#1f
	db #04,#08,#20,#84,#20,#84,#1d,#84
	db #1d,#84,#ff,#2b,#04,#05,#2b,#84
	db #32,#84,#32,#84,#30,#84,#30,#84
	db #32,#84,#32,#84,#2b,#84,#2b,#84
	db #2e,#84,#2e,#84,#30,#84,#30,#84
	db #2e,#84,#2e,#84,#ff,#1f,#04,#dc
	db #02,#1f,#04,#0c,#2b,#84,#1f,#84
	db #1f,#84,#2b,#84,#1f,#84,#1f,#84
	db #1f,#84,#1f,#84,#2b,#84,#1f,#84
	db #1f,#84,#2b,#84,#1f,#84,#1f,#84
	db #ff,#1f,#02,#d8,#02,#1f,#02,#b8
	db #05,#2b,#02,#0a,#2b,#02,#ba,#05
	db #1f,#02,#08,#1f,#02,#b8,#05,#1f
	db #02,#b8,#00,#1f,#02,#b8,#05,#2b
	db #02,#0a,#2b,#02,#ba,#05,#1f,#02
	db #08,#1f,#02,#b8,#05,#1f,#02,#b8
	db #00,#1f,#02,#b8,#05,#2b,#02,#0a
	db #2b,#02,#ba,#05,#1f,#02,#08,#1f
	db #02,#b8,#05,#2b,#02,#0a,#2b,#02
	db #ba,#05,#1f,#02,#08,#1f,#02,#b8
	db #05,#1f,#02,#b8,#00,#1f,#02,#b8
	db #05,#2b,#02,#0a,#2b,#02,#ba,#05
	db #1f,#02,#08,#1f,#02,#b8,#05,#1f
	db #02,#b8,#00,#1f,#02,#b8,#05,#2c
	db #02,#0a,#2c,#02,#ba,#05,#ff,#1f
	db #08,#09,#37,#08,#b1,#01,#3f,#08
	db #01,#3e,#87,#1f,#09,#09,#43,#08
	db #b1,#01,#4b,#08,#b1,#03,#4a,#08
	db #b1,#02,#ff,#1f,#08,#09,#37,#08
	db #b1,#01,#3f,#08,#01,#3e,#88,#3a
	db #02,#0f,#3a,#02,#bf,#03,#3a,#02
	db #bf,#08,#3a,#02,#bf,#09,#41,#08
	db #b1,#01,#4d,#08,#b1,#02,#4f,#08
	db #b1,#03,#ff,#1f,#04,#08,#1f,#84
	db #2b,#04,#0a,#9f,#08,#bc,#b1,#01
	db #bd,#01,#be,#01,#bf,#01,#c1,#01
	db #43,#82,#2b,#04,#0a,#1f,#04,#08
	db #2b,#04,#0a,#1f,#04,#08,#2b,#04
	db #0a,#2b,#84,#9f,#08,#be,#b1,#01
	db #bf,#01,#c0,#01,#c1,#01,#c2,#01
	db #43,#82,#20,#04,#08,#1d,#84,#1d
	db #84,#ff,#1f,#40,#09,#ff,#1f,#02
	db #d8,#02,#1f,#02,#b8,#05,#2b,#02
	db #0a,#2b,#02,#ba,#05,#1f,#02,#08
	db #1f,#02,#b8,#05,#1f,#02,#b8,#00
	db #1f,#02,#b8,#05,#2b,#02,#0a,#2b
	db #02,#ba,#05,#1f,#02,#08,#1f,#02
	db #b8,#05,#1f,#02,#b8,#00,#1f,#02
	db #b8,#05,#2b,#02,#0a,#2b,#02,#ba
	db #05,#1f,#02,#08,#1f,#02,#b8,#05
	db #2b,#02,#0a,#2b,#02,#ba,#05,#1f
	db #02,#08,#1f,#02,#b8,#05,#1f,#02
	db #b8,#00,#1f,#02,#b8,#05,#2b,#02
	db #0a,#2b,#02,#ba,#05,#1f,#02,#08
	db #1f,#02,#b8,#05,#1f,#02,#b8,#00
	db #1f,#02,#b8,#05,#2c,#02,#0a,#2c
	db #02,#ba,#05,#ff,#1f,#40,#09,#ff
	db #1f,#04,#08,#1f,#84,#2b,#04,#0a
	db #9f,#08,#bc,#b1,#01,#bd,#01,#be
	db #01,#bf,#01,#c1,#01,#43,#82,#2b
	db #04,#0a,#1f,#04,#08,#2b,#04,#0a
	db #1f,#04,#08,#2b,#04,#0a,#2b,#84
	db #9f,#08,#be,#b1,#01,#bf,#01,#c0
	db #01,#c1,#01,#c2,#01,#43,#82,#20
	db #04,#08,#1d,#84,#1d,#84,#ff,#3f
	db #04,#b1,#04,#43,#84,#3e,#84,#46
	db #84,#45,#84,#41,#84,#43,#84,#3e
	db #84,#46,#84,#3f,#84,#48,#84,#3f
	db #84,#45,#84,#46,#84,#3f,#84,#3e
	db #84,#ff,#3f,#04,#b1,#05,#43,#84
	db #3e,#84,#46,#84,#45,#84,#41,#84
	db #43,#84,#3e,#84,#46,#84,#3f,#84
	db #48,#84,#3f,#84,#45,#84,#46,#84
	db #3f,#84,#3e,#84,#ff,#3f,#04,#b1
	db #05,#43,#84,#3e,#84,#46,#84,#45
	db #84,#41,#84,#43,#84,#3e,#84,#46
	db #84,#3f,#84,#48,#84,#3f,#84,#45
	db #84,#46,#84,#3f,#84,#3e,#84,#ff
	db #1f,#04,#08,#1f,#84,#2b,#04,#0a
	db #1f,#04,#08,#1f,#84,#2b,#04,#0a
	db #1f,#04,#08,#2b,#04,#0a,#1f,#04
	db #08,#2b,#04,#0a,#2b,#84,#1f,#04
	db #08,#20,#84,#20,#84,#1d,#84,#1d
	db #84,#ff,#00,#01,#2b,#04,#b8,#03
	db #37,#04,#ba,#03,#2b,#04,#b8,#03
	db #2b,#84,#37,#04,#ba,#03,#2b,#04
	db #b8,#03,#2b,#84,#37,#04,#ba,#03
	db #2b,#04,#b8,#03,#37,#04,#ba,#03
	db #2b,#04,#b8,#03,#2b,#84,#38,#04
	db #ba,#03,#2c,#04,#b8,#03,#2c,#84
	db #38,#03,#ba,#03,#ff,#1f,#20,#09
	db #1f,#90,#20,#90,#ff,#1f,#20,#d9
	db #02,#20,#10,#09,#1d,#90,#ff,#2b
	db #04,#b5,#01,#26,#84,#2e,#84,#2d
	db #84,#29,#84,#2b,#84,#26,#84,#2e
	db #84,#27,#84,#30,#84,#27,#84,#2d
	db #84,#2e,#84,#27,#84,#26,#84,#27
	db #84,#ff,#1f,#04,#dc,#02,#1f,#04
	db #0c,#2b,#84,#1f,#84,#1f,#84,#2b
	db #84,#1f,#84,#1f,#84,#1f,#84,#1f
	db #84,#2b,#84,#1f,#84,#1f,#84,#2b
	db #84,#1f,#84,#1f,#84,#ff,#1f,#02
	db #d8,#02,#1f,#02,#b8,#05,#2b,#02
	db #0a,#2b,#02,#ba,#05,#1f,#02,#08
	db #1f,#02,#b8,#05,#1f,#02,#b8,#00
	db #1f,#02,#b8,#05,#2b,#02,#0a,#2b
	db #02,#ba,#05,#1f,#02,#08,#1f,#02
	db #b8,#05,#1f,#02,#b8,#00,#1f,#02
	db #b8,#05,#2b,#02,#0a,#2b,#02,#ba
	db #05,#1f,#02,#08,#1f,#02,#b8,#05
	db #2b,#02,#0a,#2b,#02,#ba,#05,#1f
	db #02,#08,#1f,#02,#b8,#05,#1f,#02
	db #b8,#00,#1f,#02,#b8,#05,#2b,#02
	db #0a,#2b,#02,#ba,#05,#1f,#02,#08
	db #1f,#02,#b8,#05,#1f,#02,#b8,#00
	db #1f,#02,#b8,#05,#2c,#02,#0a,#2c
	db #02,#ba,#05,#ff,#1f,#04,#dc,#02
	db #1f,#04,#0c,#2b,#84,#1f,#84,#1f
	db #84,#2b,#84,#1d,#08,#09,#1f,#04
	db #0c,#1f,#84,#2b,#84,#1f,#84,#1f
	db #84,#2b,#84,#1f,#84,#1f,#84,#ff
	db #1f,#04,#dc,#02,#1f,#04,#0c,#2b
	db #84,#1f,#84,#1f,#84,#2b,#84,#1f
	db #08,#09,#1d,#9c,#1f,#84,#ff,#43
	db #04,#b1,#03,#43,#84,#3e,#88,#43
	db #84,#43,#84,#3e,#88,#43,#84,#43
	db #84,#3e,#88,#43,#84,#43,#84,#3e
	db #88,#ff,#43,#04,#b1,#03,#43,#84
	db #3e,#88,#43,#84,#43,#84,#3e,#88
	db #43,#84,#43,#84,#3e,#88,#43,#84
	db #43,#84,#3e,#88,#ff,#3e,#40,#b1
	db #05,#ff,#3c,#40,#b1,#05,#ff,#fe
	db #40,#ff,#43,#04,#b1,#09,#3e,#04
	db #b1,#07,#46,#04,#b1,#05,#45,#84
	db #41,#04,#b1,#04,#43,#04,#b1,#03
	db #3e,#84,#46,#04,#b1,#02,#3f,#04
	db #b1,#01,#48,#84,#3f,#04,#b1,#00
	db #45,#84,#46,#84,#3f,#84,#3e,#84
	db #3f,#84,#ff,#43,#04,#b1,#01,#3e
	db #84,#46,#84,#45,#84,#41,#84,#43
	db #84,#3e,#84,#46,#84,#3f,#84,#48
	db #84,#3f,#84,#45,#84,#46,#84,#3f
	db #84,#3e,#84,#3f,#84,#ff,#43,#04
	db #b1,#01,#3e,#84,#46,#84,#45,#84
	db #41,#84,#43,#84,#3e,#84,#46,#84
	db #3f,#84,#48,#84,#3f,#84,#45,#84
	db #46,#84,#3f,#84,#3e,#84,#3f,#84
	db #ff,#2b,#04,#b5,#02,#26,#04,#05
	db #2e,#84,#2d,#84,#29,#84,#2b,#84
	db #26,#84,#2e,#84,#27,#84,#30,#84
	db #27,#84,#2d,#84,#2e,#84,#27,#84
	db #26,#84,#27,#84,#ff,#2b,#04,#08
	db #37,#04,#0a,#2b,#04,#08,#2b,#84
	db #37,#04,#0a,#2b,#04,#08,#2b,#84
	db #37,#04,#0a,#2b,#04,#08,#37,#04
	db #0a,#2b,#04,#08,#2b,#84,#38,#04
	db #0a,#2c,#04,#08,#2c,#84,#38,#04
	db #0a,#ff,#2b,#04,#08,#37,#04,#0a
	db #2b,#04,#08,#2b,#84,#37,#04,#0a
	db #2b,#04,#08,#2b,#84,#37,#04,#0a
	db #2b,#04,#08,#37,#04,#0a,#2b,#04
	db #08,#2b,#84,#38,#04,#0a,#2c,#04
	db #08,#2c,#84,#38,#04,#0a,#ff,#1f
	db #04,#08,#1f,#84,#2b,#04,#0a,#1f
	db #04,#08,#1f,#84,#2b,#04,#0a,#1f
	db #04,#08,#37,#04,#0a,#20,#04,#08
	db #20,#84,#2c,#04,#0a,#20,#04,#08
	db #29,#04,#0a,#1d,#04,#08,#1d,#84
	db #29,#04,#0a,#ff,#37,#02,#b5,#04
	db #37,#02,#f5,#04,#37,#3c,#b5,#03
	db #ff,#3a,#08,#06,#3a,#04,#02,#3a
	db #04,#04,#3a,#04,#0f,#3a,#04,#bf
	db #03,#3a,#04,#bf,#05,#3a,#08,#07
	db #3a,#04,#03,#3a,#84,#3a,#02,#04
	db #3a,#82,#3a,#04,#0f,#3a,#04,#bf
	db #03,#3a,#08,#bf,#00,#ff,#37,#02
	db #b5,#02,#37,#02,#f5,#04,#37,#3c
	db #b5,#01,#ff,#3a,#04,#13,#3a,#04
	db #04,#3a,#04,#03,#3a,#04,#04,#3a
	db #04,#0f,#3a,#04,#bf,#03,#3a,#04
	db #bf,#05,#3a,#08,#07,#3a,#04,#03
	db #3a,#84,#3a,#02,#04,#3a,#82,#3a
	db #04,#0f,#3a,#04,#bf,#03,#3a,#08
	db #bf,#00,#ff,#3a,#04,#03,#3a,#04
	db #04,#3a,#04,#03,#3a,#04,#04,#3a
	db #04,#0f,#3a,#04,#bf,#03,#3a,#04
	db #bf,#05,#3a,#08,#07,#3a,#04,#03
	db #3a,#84,#3a,#02,#04,#3a,#82,#3a
	db #04,#0f,#3a,#04,#bf,#03,#3a,#08
	db #bf,#00,#ff,#3a,#08,#16,#3a,#04
	db #02,#3a,#04,#04,#3a,#04,#0f,#3a
	db #04,#bf,#03,#3a,#04,#bf,#05,#3a
	db #08,#07,#3a,#04,#03,#3a,#84,#3a
	db #02,#04,#3a,#82,#3a,#04,#0f,#3a
	db #04,#bf,#03,#3a,#08,#bf,#00,#ff
	db #3a,#08,#06,#3a,#04,#02,#3a,#04
	db #04,#3a,#04,#0f,#3a,#04,#bf,#03
	db #3a,#04,#bf,#05,#3a,#08,#07,#3a
	db #04,#03,#3a,#84,#3a,#02,#04,#3a
	db #82,#3a,#04,#0f,#3a,#04,#bf,#03
	db #3a,#08,#bf,#00,#ff,#3a,#08,#03
	db #3a,#84,#3a,#04,#04,#3a,#04,#0f
	db #3a,#04,#bf,#03,#3a,#04,#bf,#05
	db #3a,#04,#04,#3a,#84,#3a,#04,#03
	db #3a,#84,#3a,#04,#04,#3a,#04,#0f
	db #3a,#04,#bf,#03,#3a,#04,#04,#3a
	db #84,#ff,#3a,#08,#03,#3a,#84,#3a
	db #04,#04,#3a,#04,#0f,#3a,#04,#bf
	db #03,#3a,#04,#bf,#05,#3a,#04,#04
	db #3a,#84,#3a,#04,#03,#3a,#84,#3a
	db #04,#04,#3a,#04,#0f,#3a,#04,#bf
	db #03,#3a,#04,#04,#3a,#84,#ff,#3a
	db #08,#03,#3a,#84,#3a,#04,#04,#3a
	db #84,#3a,#04,#bf,#03,#3a,#04,#bf
	db #05,#3a,#84,#3a,#84,#3a,#04,#03
	db #3a,#84,#3a,#04,#04,#3a,#84,#3a
	db #04,#bf,#03,#3a,#04,#bf,#05,#3a
	db #84,#ff,#3a,#08,#13,#3a,#04,#03
	db #3a,#04,#04,#3a,#04,#0f,#3a,#04
	db #bf,#03,#3a,#04,#bf,#05,#3a,#04
	db #04,#3a,#84,#3a,#04,#03,#3a,#84
	db #3a,#04,#04,#3a,#04,#0f,#3a,#04
	db #bf,#03,#3a,#04,#04,#3a,#84,#ff
	db #2b,#04,#f8,#07,#37,#04,#b8,#01
	db #2b,#04,#f8,#08,#2b,#04,#08,#37
	db #04,#f8,#07,#2b,#04,#f8,#05,#2b
	db #04,#18,#37,#04,#f8,#07,#2b,#84
	db #37,#04,#08,#2b,#84,#2b,#04,#18
	db #37,#04,#f8,#07,#2b,#04,#08,#2b
	db #84,#37,#04,#18,#ff,#2b,#04,#f8
	db #07,#37,#04,#b8,#01,#2b,#04,#f8
	db #08,#2b,#04,#08,#37,#04,#f8,#07
	db #2b,#04,#f8,#05,#2b,#04,#18,#37
	db #04,#f8,#07,#2b,#84,#37,#04,#08
	db #2b,#84,#2b,#04,#18,#37,#04,#f8
	db #07,#2b,#04,#08,#2b,#84,#37,#04
	db #18,#ff,#1f,#30,#09,#20,#90,#ff
	db #3a,#03,#03,#1f,#0d,#09,#3a,#03
	db #03,#1f,#0d,#09,#3a,#03,#03,#1f
	db #0d,#09,#3a,#03,#03,#20,#0d,#09
	db #ff,#3a,#04,#03,#3a,#04,#04,#3a
	db #84,#3a,#04,#0b,#3a,#04,#03,#3a
	db #04,#04,#3a,#84,#3a,#84,#3a,#04
	db #03,#3a,#04,#04,#3a,#84,#3a,#04
	db #0b,#3a,#04,#03,#3a,#04,#04,#3a
	db #84,#3a,#84,#ff,#3a,#04,#03,#3a
	db #04,#04,#3a,#84,#3a,#04,#0b,#3a
	db #04,#03,#3a,#04,#04,#3a,#84,#3a
	db #84,#3a,#04,#03,#3a,#04,#04,#3a
	db #84,#3a,#04,#0b,#3a,#04,#03,#3a
	db #04,#04,#3a,#84,#3a,#84,#ff
;
.music_info
	db "Ghoul's Writer Muzaxx Collector Asm Dmk4 (19xx)(Scorpion)()",0
	db "ST Module",0

	read "music_end.asm"
