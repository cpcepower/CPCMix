; Music of Ghoul's Writer Muzaxx Collector Voyage 93 (19xx)(Scorpion)()(ST Module)
; Ripped by Megachur the 04/10/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "GHOWMCV9.BIN"
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
	ld a,#06
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
	ld a,#06
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
	ld a,#14
	ld hl,l6304
	cp (hl)
	jr z,l60ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l62e4
.l60ed equ $ + 1
.l60ec
	ld a,#4c
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
	db #ff,#ff,#ff,#ff
.l6306
	dw l6742,l675a,l6772
.l630c
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
.l63da equ $ + 4
	db #00,#00,#00,#00,#8a,#77,#00,#01
	db #08,#10,#01,#18,#00,#00,#00,#df
.l63e8 equ $ + 2
	db #45,#77,#e2,#75,#22,#76,#c2,#75
	db #10,#10,#20,#00,#bc,#03,#00,#00
.l63f6
	db #dc,#77,#02,#03,#09,#10,#01,#24
.l6404 equ $ + 6
	db #00,#00,#00,#e7,#5d,#77,#e2,#74
	db #22,#75,#42,#75,#0c,#00,#20,#00
.l6412 equ $ + 4
	db #de,#01,#00,#00,#38,#78,#04,#05
	db #0a,#10,#01,#30,#00,#00,#00,#ef
.l6420 equ $ + 2
	db #75,#77,#62,#75,#a2,#75,#c2,#75
	db #00,#00,#20,#00,#ef,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6442 equ $ + 4
	db #75,#6c,#65,#2e,#dc,#6e,#dc,#6e
	db #dc,#6e,#00,#00,#e2,#64,#22,#65
	db #42,#65,#0c,#00,#25,#c2,#21,#23
	db #fc,#60,#00,#ff,#62,#65,#a2,#65
	db #c2,#65,#00,#00,#e2,#65,#22,#66
	db #c2,#65,#10,#10,#da,#6e,#a6,#6f
	db #74,#6d,#50,#30,#e4,#aa,#2b,#65
	db #dc,#5b,#b0,#18,#42,#66,#82,#66
	db #a2,#66,#00,#00,#c2,#66,#02,#67
	db #22,#67,#00,#00,#e5,#44,#dc,#6e
	db #dc,#6e,#00,#00,#dc,#6e,#dc,#6e
	db #dc,#6e,#00,#00,#dc,#6e,#dc,#6e
	db #dc,#6e,#00,#00,#dc,#6e,#dc,#6e
	db #dc,#6e,#00,#00,#dc,#6e,#dc,#6e
	db #dc,#6e,#00,#00,#dc,#6e,#dc,#6e
	db #dc,#6e,#00,#00,#dc,#6e,#dc,#6e
.l64c2 equ $ + 4
	db #dc,#6e,#00,#00,#dc,#6e,#dc,#6e
	db #dc,#6e,#dc,#6e,#dc,#6e,#dc,#6e
	db #dc,#6e,#dc,#6e,#dc,#6e,#dc,#6e
	db #dc,#6e,#dc,#6e,#dc,#6e,#dc,#6e
	db #dc,#6e,#dc,#6e,#00,#00,#32,#00
	db #64,#00,#91,#00,#be,#00,#eb,#00
	db #22,#01,#4a,#01,#7c,#01,#a9,#01
	db #d6,#01,#08,#02,#3a,#02,#6c,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0f,#0f
	db #0f,#0e,#0e,#0d,#0c,#0a,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#fd,#ff
	db #fa,#ff,#fd,#ff,#00,#00,#03,#00
	db #06,#00,#03,#00,#00,#00,#fd,#ff
	db #fa,#ff,#fd,#ff,#00,#00,#03,#00
	db #06,#00,#03,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0d,#0e,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #80,#80,#80,#80,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#00,#00,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#2f,#00
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
.l6742 equ $ + 4
	db #00,#00,#00,#00,#00,#8a,#67,#00
	db #b3,#67,#00,#8a,#67,#00,#8a,#67
	db #00,#8a,#67,#00,#8a,#67,#00,#8a
.l675a equ $ + 4
	db #67,#80,#48,#67,#00,#dc,#67,#00
	db #df,#67,#00,#e2,#67,#00,#e2,#67
	db #00,#e2,#67,#00,#28,#68,#00,#28
.l6772 equ $ + 4
	db #68,#80,#60,#67,#00,#38,#68,#00
	db #3b,#68,#00,#bc,#68,#00,#3d,#69
	db #00,#3d,#69,#00,#3b,#68,#00,#3b
	db #68,#80,#78,#67,#22,#10,#c4,#14
	db #25,#08,#c4,#19,#27,#02,#c4,#16
	db #28,#02,#c4,#15,#27,#02,#c4,#16
	db #25,#02,#c4,#19,#22,#10,#c4,#14
	db #25,#08,#c4,#19,#20,#04,#c4,#16
	db #21,#04,#c4,#1f,#ff,#22,#10,#c4
	db #14,#25,#08,#c4,#19,#27,#02,#c4
	db #16,#28,#02,#c4,#15,#27,#02,#c4
	db #16,#25,#02,#c4,#19,#22,#10,#c4
	db #14,#25,#08,#c4,#19,#20,#04,#c4
	db #16,#21,#04,#c4,#1f,#ff,#00,#40
	db #ff,#00,#40,#ff,#2e,#02,#01,#2e
	db #02,#08,#2e,#02,#07,#2e,#02,#01
	db #2e,#83,#2e,#83,#2e,#82,#2e,#82
	db #2e,#02,#08,#2e,#02,#07,#2e,#02
	db #01,#2e,#83,#2e,#83,#2e,#82,#2e
	db #82,#2e,#02,#08,#2e,#02,#07,#2e
	db #02,#01,#2e,#83,#2e,#83,#2e,#82
	db #2e,#82,#2e,#02,#08,#2e,#02,#07
	db #2e,#02,#01,#2e,#83,#2e,#83,#2e
	db #82,#ff,#46,#0e,#04,#52,#82,#50
	db #88,#4d,#83,#50,#83,#4b,#82,#4d
	db #a0,#ff,#00,#40,#ff,#ba,#03,#b5
	db #03,#ae,#03,#b5,#03,#ba,#03,#b5
	db #03,#ae,#03,#b5,#03,#ba,#03,#b5
	db #03,#ae,#03,#b5,#03,#ba,#03,#b5
	db #03,#ae,#03,#b5,#03,#bd,#03,#b8
	db #03,#b5,#03,#b8,#03,#bd,#03,#b8
	db #03,#b5,#03,#b8,#03,#bf,#03,#ba
	db #03,#b7,#03,#ba,#03,#bf,#03,#ba
	db #03,#b7,#03,#ba,#03,#c1,#03,#bd
	db #03,#ba,#03,#c1,#03,#bd,#03,#ba
	db #03,#c1,#03,#bd,#03,#ba,#03,#c1
	db #03,#bd,#03,#ba,#03,#c1,#03,#bd
	db #03,#ba,#03,#c1,#03,#bf,#03,#c1
	db #03,#ba,#03,#c1,#03,#bf,#03,#c1
	db #03,#ba,#03,#c1,#03,#bd,#03,#bf
	db #03,#c1,#03,#bd,#03,#bf,#03,#c1
	db #03,#c4,#03,#c1,#03,#ff,#ba,#03
	db #b5,#03,#ae,#03,#b5,#03,#ba,#03
	db #b5,#03,#ae,#03,#b5,#03,#ba,#03
	db #b5,#03,#ae,#03,#b5,#03,#ba,#03
	db #b5,#03,#ae,#03,#b5,#03,#bd,#03
	db #b8,#03,#b5,#03,#b8,#03,#bd,#03
	db #b8,#03,#b5,#03,#b8,#03,#bf,#03
	db #ba,#03,#b7,#03,#ba,#03,#bf,#03
	db #ba,#03,#b7,#03,#ba,#03,#c1,#03
	db #bd,#03,#ba,#03,#c1,#03,#bd,#03
	db #ba,#03,#c1,#03,#bd,#03,#ba,#03
	db #c1,#03,#bd,#03,#ba,#03,#c1,#03
	db #bd,#03,#ba,#03,#c1,#03,#bf,#03
	db #c1,#03,#ba,#03,#c1,#03,#bf,#03
	db #c1,#03,#ba,#03,#c1,#03,#bd,#03
	db #bf,#03,#c1,#03,#bd,#03,#bf,#03
	db #c1,#03,#c4,#03,#c1,#03,#ff,#46
	db #0e,#04,#46,#82,#4d,#88,#4b,#83
	db #49,#83,#4b,#82,#4d,#82,#46,#84
	db #46,#84,#46,#82,#4b,#84,#49,#84
	db #4b,#82,#48,#84,#49,#82,#48,#84
	db #ff,#02,#07,#3c,#82,#3a,#82,#ff
	db #4e,#04,#fd,#01,#3a,#02,#10,#3c
	db #02,#00,#3d,#82,#3c,#82,#3a,#82
	db #41,#82,#4d,#08,#fd,#02,#4d,#88
	db #4d,#04,#fd,#03,#3a,#02,#10,#3c
	db #02,#00,#3d,#82,#3c,#82,#3a,#82
	db #3f,#82,#4b,#04,#fd,#05,#3f,#04
	db #10,#3f,#02,#00,#41,#84,#3d,#82
	db #ff,#4e,#04,#fd,#01,#3a,#02,#17
	db #3c,#02,#07,#3d,#82,#3c,#82,#3a
	db #82,#41,#82,#4d,#08,#fd,#02,#4d
	db #88,#4d,#04,#fd,#03,#3a,#02,#17
	db #3c,#02,#07,#3d,#82,#3c,#82,#3a
	db #82,#3f,#82,#4b,#04,#fd,#05,#3f
	db #04,#17,#3f,#02,#07,#41,#84,#3d
	db #82,#ff,#4e,#04,#fd,#01,#3a,#02
	db #17,#3c,#02,#07,#3d,#82,#3c,#82
	db #3a,#82,#41,#82,#4d,#08,#fd,#02
	db #4d,#88,#4d,#04,#fd,#03,#3a,#02
	db #17,#3c,#02,#07,#3d,#82,#3c,#82
	db #3a,#82,#3f,#82,#4b,#04,#fd,#05
	db #3f,#04,#17,#3f,#02,#07,#41,#84
	db #3d,#82,#ff,#3d,#08,#08,#3d,#88
	db #3d,#88,#3d,#88,#3d,#88,#3d,#88
	db #3c,#88,#3c,#88,#ff,#2e,#04,#11
	db #16,#04,#03,#4e,#04,#fd,#01,#16
	db #02,#03,#2e,#02,#01,#2e,#84,#16
	db #08,#03,#16,#82,#2e,#02,#01,#2e
	db #84,#16,#04,#03,#4b,#04,#fd,#04
	db #16,#04,#03,#2e,#04,#01,#16,#02
	db #03,#2e,#02,#01,#4b,#03,#fd,#05
	db #96,#03,#2e,#04,#01,#ff,#2e,#02
	db #11,#22,#02,#08,#22,#82,#22,#82
	db #4e,#02,#fd,#01,#22,#02,#18,#22
	db #02,#08,#2e,#02,#01,#2e,#82,#25
	db #02,#08,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#2e,#02,#01,#2e
	db #82,#20,#02,#08,#20,#82,#20,#82
	db #4b,#02,#fd,#04,#20,#02,#18,#20
	db #02,#08,#20,#82,#2e,#02,#01,#20
	db #02,#08,#20,#82,#2e,#02,#01,#4b
	db #02,#fd,#05,#20,#02,#18,#20,#02
	db #08,#20,#82,#ff,#2e,#02,#11,#22
	db #02,#00,#22,#82,#22,#82,#4e,#02
	db #fd,#01,#22,#02,#10,#22,#02,#00
	db #2e,#02,#01,#2e,#82,#25,#02,#00
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#2e,#02,#01,#2e,#82,#20
	db #02,#00,#20,#82,#20,#82,#4b,#02
	db #fd,#04,#20,#02,#10,#20,#02,#00
	db #20,#82,#2e,#02,#01,#20,#02,#00
	db #c5,#01,#c5,#01,#c1,#01,#c1,#01
	db #bf,#f1,#05,#bf,#11,#be,#01,#be
	db #01,#bc,#01,#bc,#01,#ba,#01,#ba
	db #01,#ff,#42,#08,#08,#42,#88,#41
	db #88,#41,#88,#41,#88,#3f,#88,#3f
	db #88,#3f,#88,#ff,#42,#04,#08,#52
	db #02,#b0,#00,#50,#02,#00,#52,#82
	db #4d,#82,#50,#82,#52,#82,#50,#82
	db #4d,#82,#4b,#82,#4d,#82,#46,#02
	db #b0,#01,#49,#02,#00,#4b,#82,#4d
	db #82,#46,#02,#b0,#02,#49,#02,#00
	db #4b,#82,#4d,#82,#46,#02,#b0,#03
	db #49,#02,#00,#4b,#82,#4d,#82,#46
	db #02,#b0,#04,#49,#02,#00,#4b,#82
	db #4d,#82,#46,#82,#49,#82,#4b,#82
	db #4d,#82,#ff,#42,#04,#08,#52,#02
	db #b0,#00,#50,#02,#00,#52,#82,#4d
	db #82,#50,#82,#52,#82,#50,#82,#4d
	db #82,#4b,#82,#4d,#82,#46,#02,#b0
	db #01,#49,#02,#00,#4b,#82,#4d,#82
	db #46,#02,#b0,#02,#49,#02,#00,#4b
	db #82,#4d,#82,#46,#02,#b0,#03,#49
	db #02,#00,#4b,#82,#4d,#82,#46,#02
	db #b0,#04,#49,#02,#00,#4b,#82,#4d
	db #82,#46,#82,#49,#82,#4b,#82,#4d
	db #82,#ff,#a4,#ea,#1b,#a4,#ea,#1b
	db #96,#1c,#96,#1c,#a4,#ea,#1b,#a4
	db #ea,#1b,#96,#1c,#96,#1c,#a4,#ea
	db #1b,#a4,#ea,#1b,#b0,#8a,#09,#96
	db #1c,#a4,#ea,#1b,#a4,#ea,#1b,#96
	db #1c,#96,#1b,#a9,#ea,#28,#a9,#ea
	db #28,#96,#1c,#96,#1c,#a9,#ea,#28
	db #a9,#ea,#28,#b5,#8a,#0a,#96,#1c
	db #ab,#ea,#24,#ab,#ea,#24,#b7,#8a
	db #09,#b7,#ea,#12,#bf,#1e,#ab,#ea
	db #24,#bf,#1e,#b7,#ea,#12,#ff,#a2
	db #ea,#1e,#a2,#ea,#1e,#96,#1c,#96
	db #1c,#a2,#ea,#1e,#a2,#ea,#1e,#96
	db #1c,#96,#1c,#a2,#ea,#1e,#a2,#ea
	db #1e,#ae,#ea,#1e,#96,#1c,#a4,#ea
	db #1b,#a4,#ea,#1b,#96,#1c,#96,#1b
	db #a5,#ea,#19,#a5,#ea,#19,#96,#1c
	db #96,#1c,#a5,#ea,#19,#a5,#ea,#19
	db #96,#1c,#b1,#ea,#19,#a5,#ea,#19
	db #96,#1c,#b1,#ea,#19,#96,#1c,#9e
	db #ea,#26,#9e,#ea,#26,#aa,#ea,#26
	db #96,#1b,#a0,#ea,#21,#a0,#ea,#21
	db #96,#1c,#96,#1c,#a0,#ea,#21,#a0
	db #ea,#21,#96,#1c,#96,#1c,#a0,#ea
	db #21,#a0,#ea,#21,#ac,#ea,#21,#96
	db #1c,#a0,#ea,#21,#96,#1b,#96,#1c
	db #ac,#ea,#21,#a0,#ea,#21,#a0,#ea
	db #21,#96,#1c,#96,#1c,#a0,#ea,#21
	db #a0,#ea,#21,#ac,#ea,#21,#96,#1c
	db #a0,#ea,#21,#a0,#ea,#21,#bf,#1e
	db #b5,#18,#a0,#ea,#21,#bf,#1e,#ac
	db #ea,#21,#b2,#18,#ff,#9c,#ea,#2a
	db #9c,#ea,#2a,#96,#1c,#96,#1c,#9c
	db #ea,#2a,#9c,#ea,#2a,#96,#1c,#96
	db #1c,#9c,#ea,#2a,#9c,#ea,#2a,#a8
	db #8a,#0e,#96,#1c,#9c,#ea,#2a,#9c
	db #ea,#2a,#96,#1c,#96,#1b,#9f,#ea
	db #23,#9f,#ea,#23,#96,#1c,#96,#1c
	db #9f,#ea,#23,#9f,#ea,#23,#96,#1c
	db #ab,#ea,#23,#a4,#ea,#1b,#96,#1c
	db #b0,#8a,#1b,#96,#1c,#a4,#ea,#1b
	db #a4,#ea,#1b,#b0,#8a,#1b,#96,#1b
	db #a6,#ea,#2f,#a6,#ea,#2f,#96,#1c
	db #96,#1c,#a6,#ea,#2f,#a6,#ea,#2f
	db #96,#1c,#96,#1c,#a6,#ea,#2f,#a6
	db #ea,#2f,#b2,#8a,#0c,#96,#1c,#a6
	db #ea,#2f,#a6,#ea,#2f,#96,#1c,#96
	db #1b,#a6,#ea,#2f,#a6,#ea,#2f,#96
	db #1c,#96,#1c,#a6,#ea,#2f,#a6,#ea
	db #2f,#b2,#8a,#0c,#96,#1c,#a6,#ea
	db #2f,#a6,#ea,#2f,#3f,#02,#1e,#a6
	db #ea,#2f,#a6,#ea,#2f,#b2,#8a,#0c
	db #96,#1b,#ff,#a0,#ea,#21,#a0,#ea
	db #21,#96,#1c,#96,#1c,#a0,#ea,#21
	db #a0,#ea,#21,#96,#1c,#96,#1c,#9f
	db #ea,#24,#9f,#ea,#24,#ab,#ea,#24
	db #96,#1c,#9f,#ea,#24,#9f,#ea,#24
	db #96,#1c,#96,#1b,#a4,#ea,#1b,#a4
	db #ea,#1b,#96,#1c,#96,#1c,#a4,#ea
	db #1b,#a4,#ea,#1b,#96,#1c,#b0,#ea
	db #1b,#a4,#ea,#1b,#a4,#ea,#1b,#b0
	db #ea,#1b,#96,#1c,#a4,#ea,#1b,#b0
	db #ea,#1b,#a2,#ea,#1e,#96,#1b,#a0
	db #ea,#21,#a0,#ea,#21,#96,#1c,#96
	db #1c,#a0,#ea,#21,#a0,#ea,#21,#96
	db #1c,#96,#1c,#9f,#ea,#24,#9f,#ea
	db #24,#ab,#ea,#24,#96,#1c,#9f,#ea
	db #24,#9f,#ea,#24,#96,#1c,#96,#1b
	db #98,#ea,#36,#98,#ea,#36,#96,#1c
	db #96,#1c,#98,#ea,#36,#98,#ea,#36
	db #a4,#ea,#36,#96,#1c,#98,#ea,#36
	db #96,#1c,#a4,#ea,#36,#a4,#ea,#36
	db #98,#ea,#36,#bf,#1e,#a4,#ea,#36
	db #96,#1b,#ff,#a0,#ea,#21,#a0,#ea
	db #21,#96,#1c,#96,#1c,#a0,#ea,#21
	db #a0,#ea,#21,#96,#1c,#96,#1c,#9f
	db #ea,#24,#9f,#ea,#24,#ab,#ea,#24
	db #96,#1c,#9f,#ea,#24,#9f,#ea,#24
	db #96,#1c,#96,#1b,#a4,#ea,#1b,#a4
	db #ea,#1b,#96,#1c,#96,#1c,#a4,#ea
	db #1b,#a4,#ea,#1b,#96,#1c,#b0,#ea
	db #1b,#a4,#ea,#1b,#a4,#ea,#1b,#b0
	db #ea,#1b,#96,#1c,#a4,#ea,#1b,#b0
	db #ea,#1b,#a2,#ea,#1e,#96,#1b,#a0
	db #ea,#21,#a0,#ea,#21,#96,#1c,#96
	db #1c,#a0,#ea,#21,#a0,#ea,#21,#96
	db #1c,#96,#1c,#9f,#ea,#24,#9f,#ea
	db #24,#ab,#ea,#24,#96,#1c,#9f,#ea
	db #24,#9f,#ea,#24,#96,#1c,#96,#1b
	db #a9,#ea,#28,#a9,#ea,#28,#96,#1c
	db #b5,#ea,#14,#a9,#ea,#28,#a9,#ea
	db #28,#b5,#ea,#14,#96,#1c,#a9,#ea
	db #28,#a9,#ea,#28,#bf,#1e,#b5,#ea
	db #14,#bf,#1e,#bf,#1e,#b5,#ea,#14
	db #b5,#ea,#14,#ff,#00,#40,#ff,#54
	db #02,#f2,#01,#54,#02,#02,#54,#83
	db #52,#82,#52,#82,#d2,#02,#54,#82
	db #cd,#02,#cf,#02,#52,#82,#52,#82
	db #52,#83,#4f,#82,#4f,#82,#cf,#02
	db #4d,#82,#4d,#82,#54,#02,#f2,#01
	db #54,#02,#02,#54,#83,#52,#82,#52
	db #82,#d2,#02,#54,#82,#cd,#02,#cf
	db #02,#52,#82,#52,#82,#52,#83,#4f
	db #82,#4f,#82,#cf,#02,#4d,#82,#4d
	db #82,#ff,#48,#04,#f2,#01,#4f,#02
	db #02,#cb,#02,#4d,#89,#4d,#82,#4d
	db #84,#4b,#82,#ca,#02,#4b,#82,#4a
	db #83,#46,#82,#48,#89,#d4,#f3,#02
	db #d2,#03,#d4,#03,#d2,#03,#d2,#03
	db #cf,#03,#cd,#03,#48,#02,#f2,#01
	db #4b,#02,#02,#4d,#82,#4b,#82,#d2
	db #02,#4f,#82,#4d,#82,#4f,#83,#ff
	db #48,#04,#f2,#01,#4f,#02,#02,#cb
	db #02,#4d,#89,#4d,#82,#4d,#84,#4b
	db #82,#ca,#02,#4b,#82,#4a,#83,#46
	db #82,#48,#89,#d4,#f3,#02,#d2,#03
	db #d4,#03,#d2,#03,#d2,#03,#cf,#03
	db #cd,#03,#48,#02,#f2,#01,#4b,#02
	db #02,#4d,#82,#4b,#82,#ca,#02,#4b
	db #82,#4d,#82,#cf,#02,#d2,#02,#d4
	db #02,#ff,#4d,#04,#f2,#02,#4d,#02
	db #02,#cd,#02,#49,#8b,#4d,#82,#4d
	db #82,#4d,#82,#ce,#02,#4d,#83,#4b
	db #82,#49,#82,#48,#84,#48,#82,#cb
	db #02,#50,#92,#96,#1c,#b5,#18,#96
	db #1c,#b3,#18,#96,#1c,#b3,#18,#96
	db #1b,#ff,#54,#02,#f5,#06,#4c,#02
	db #05,#4f,#82,#d1,#05,#4f,#8b,#4f
	db #82,#cf,#05,#51,#82,#4f,#82,#4a
	db #82,#cb,#05,#4c,#82,#4c,#82,#4a
	db #90,#4c,#03,#f2,#01,#4a,#03,#02
	db #4f,#82,#51,#88,#ff,#48,#08,#f2
	db #07,#4b,#08,#02,#4d,#83,#4f,#83
	db #4d,#82,#4b,#82,#48,#86,#4b,#88
	db #4a,#88,#4b,#89,#d4,#f3,#02,#d4
	db #03,#d4,#03,#52,#82,#54,#82,#ff
	db #48,#08,#f2,#07,#4b,#08,#02,#4d
	db #83,#4f,#83,#4d,#82,#4b,#82,#48
	db #86,#4b,#88,#4f,#88,#4d,#89,#cd
	db #f3,#02,#cd,#03,#cd,#03,#4f,#82
	db #52,#82,#ff,#b0,#1d,#96,#0c,#96
	db #0c,#96,#0c,#3f,#02,#0e,#96,#0c
	db #96,#0c,#b0,#0d,#96,#0c,#b0,#0d
	db #96,#0c,#3f,#02,#0e,#96,#0c,#96
	db #0b,#b0,#0d,#96,#0c,#96,#0c,#96
	db #0c,#3f,#02,#0e,#96,#0c,#b0,#0d
	db #b0,#0d,#96,#0c,#b0,#0d,#96,#0c
	db #bf,#0e,#3f,#82,#96,#0b,#b0,#0d
	db #96,#0c,#96,#0c,#96,#0c,#3f,#02
	db #0e,#96,#0c,#96,#0c,#b0,#0d,#96
	db #0c,#b0,#0d,#96,#0c,#bf,#0e,#96
	db #0b,#96,#0c,#96,#0b,#b0,#0d,#96
	db #0c,#96,#0c,#96,#0c,#3f,#02,#0e
	db #b0,#0d,#96,#0c,#b0,#0d,#96,#0c
	db #bf,#0e,#b0,#0d,#bf,#0e,#bf,#0e
	db #bf,#0e,#96,#0b,#ff,#b0,#1d,#96
	db #0c,#96,#0c,#96,#0c,#3f,#02,#0e
	db #96,#0c,#96,#0c,#b0,#0d,#96,#0c
	db #b0,#0d,#96,#0c,#3f,#02,#0e,#96
	db #0c,#96,#0b,#b0,#0d,#96,#0c,#96
	db #0c,#96,#0c,#3f,#02,#0e,#96,#0c
	db #b0,#0d,#b0,#0d,#96,#0c,#b0,#0d
	db #96,#0c,#bf,#0e,#3f,#82,#96,#0b
	db #b0,#0d,#96,#0c,#96,#0c,#96,#0c
	db #3f,#02,#0e,#96,#0c,#96,#0c,#b0
	db #0d,#96,#0c,#b0,#0d,#96,#0c,#bf
	db #0e,#96,#0b,#96,#0c,#96,#0b,#b0
	db #0d,#96,#0c,#96,#0c,#96,#0c,#3f
	db #02,#0e,#b0,#0d,#96,#0c,#b0,#0d
	db #96,#0c,#3f,#02,#0e,#bf,#0e,#bf
	db #0e,#bf,#0e,#96,#0b,#ff,#b0,#1d
	db #96,#1c,#b0,#8a,#09,#b0,#ea,#1b
	db #3f,#02,#1e,#b0,#8a,#09,#b0,#ea
	db #1b,#b0,#1d,#96,#1c,#b0,#1d,#b0
	db #ea,#1b,#3f,#02,#1e,#b0,#8a,#09
	db #b0,#ea,#1b,#b0,#1d,#96,#1c,#ae
	db #8a,#0a,#ae,#ea,#1e,#3f,#02,#1e
	db #ae,#8a,#0a,#b0,#1d,#b0,#1d,#96
	db #1c,#b0,#1d,#b7,#ea,#12,#bf,#1e
	db #3f,#82,#a9,#ea,#28,#b0,#1d,#96
	db #1c,#b0,#8a,#09,#b0,#ea,#1b,#3f
	db #02,#1e,#b0,#8a,#09,#b0,#ea,#1b
	db #b0,#1d,#96,#1c,#b0,#1d,#b0,#ea
	db #1b,#bf,#1e,#96,#1b,#b0,#8a,#09
	db #b0,#ea,#1b,#b0,#1d,#96,#1c,#b5
	db #8a,#0a,#b5,#ea,#14,#3f,#02,#1e
	db #b0,#1d,#b5,#ea,#14,#b0,#1d,#96
	db #1c,#3f,#02,#1e,#ab,#ea,#24,#bf
	db #1e,#bf,#1e,#96,#1b,#ff,#b0,#1d
	db #96,#1c,#b0,#8a,#09,#b0,#ea,#1b
	db #3f,#02,#1e,#b0,#8a,#09,#b0,#ea
	db #1b,#b0,#1d,#96,#1c,#b0,#1d,#b0
	db #ea,#1b,#3f,#02,#1e,#b0,#8a,#09
	db #b0,#ea,#1b,#b0,#1d,#96,#1c,#ae
	db #8a,#0a,#ae,#ea,#1e,#3f,#02,#1e
	db #ae,#8a,#0a,#b0,#1d,#b0,#1d,#96
	db #1c,#b0,#1d,#b7,#ea,#12,#bf,#1e
	db #3f,#82,#a9,#ea,#28,#b0,#1d,#96
	db #1c,#b0,#8a,#09,#b0,#ea,#1b,#3f
	db #02,#1e,#b0,#8a,#09,#b0,#ea,#1b
	db #b0,#1d,#96,#1c,#b0,#1d,#b0,#ea
	db #1b,#bf,#1e,#96,#1b,#b0,#8a,#09
	db #b0,#ea,#1b,#b0,#1d,#96,#1c,#b5
	db #8a,#0a,#b5,#ea,#14,#3f,#02,#1e
	db #b0,#1d,#b5,#ea,#14,#b0,#1d,#96
	db #1c,#3f,#02,#1e,#ab,#ea,#24,#bf
	db #1e,#b7,#8a,#09,#96,#1b,#ff,#b0
	db #1d,#96,#0c,#ae,#ea,#1e,#ae,#ea
	db #1e,#3f,#02,#1e,#ae,#ea,#1e,#ae
	db #ea,#1e,#b0,#1d,#96,#1c,#b0,#1d
	db #ae,#ea,#1e,#3f,#02,#1e,#b0,#ea
	db #1b,#b0,#ea,#1b,#b0,#1d,#96,#1c
	db #b1,#ea,#19,#b1,#ea,#19,#3f,#02
	db #1e,#b1,#ea,#19,#b0,#1d,#b0,#1d
	db #a5,#ea,#19,#b0,#1d,#b1,#ea,#19
	db #bf,#1e,#3f,#82,#aa,#ea,#26,#b0
	db #1d,#96,#1c,#ac,#ea,#21,#ac,#ea
	db #21,#3f,#02,#1e,#ac,#ea,#21,#ac
	db #ea,#21,#b0,#1d,#96,#1c,#b0,#1d
	db #ac,#ea,#21,#bf,#1e,#a0,#ea,#21
	db #ac,#ea,#21,#96,#1b,#b0,#1d,#96
	db #1c,#ac,#ea,#21,#ac,#ea,#21,#3f
	db #02,#1e,#b0,#1d,#ac,#ea,#21,#b0
	db #1d,#b5,#18,#ac,#ea,#21,#ac,#ea
	db #21,#bf,#1e,#a0,#ea,#21,#bf,#1e
	db #ac,#ea,#21,#ff,#b0,#1d,#96,#1c
	db #a8,#8a,#0e,#a8,#ea,#2a,#3f,#02
	db #1e,#a8,#8a,#0e,#a8,#ea,#2a,#b0
	db #1d,#96,#1c,#b0,#1d,#a8,#ea,#2a
	db #3f,#02,#1e,#a6,#8a,#10,#a6,#ea
	db #2f,#b0,#1d,#96,#1c,#ab,#8a,#12
	db #ab,#ea,#23,#3f,#02,#1e,#ab,#8a
	db #12,#b0,#1d,#b0,#1d,#a4,#ea,#1b
	db #b0,#1d,#b0,#ea,#1b,#bf,#1e,#3f
	db #82,#b0,#ea,#1b,#b0,#1d,#96,#1c
	db #b2,#8a,#0c,#b2,#ea,#18,#3f,#02
	db #1e,#b2,#8a,#0c,#b2,#ea,#18,#b0
	db #1d,#96,#1c,#b0,#1d,#b2,#ea,#18
	db #bf,#1e,#96,#1b,#b2,#8a,#0c,#b2
	db #ea,#18,#b0,#1d,#96,#1c,#b2,#8a
	db #0c,#b2,#ea,#18,#3f,#02,#1e,#b0
	db #1d,#b2,#ea,#18,#b0,#1d,#b0,#1d
	db #b2,#8a,#0c,#b2,#ea,#18,#bf,#1e
	db #bf,#1e,#bf,#1e,#b2,#ea,#18,#ff
	db #b0,#1d,#96,#1c,#ac,#ea,#21,#ac
	db #ea,#21,#3f,#02,#1e,#ac,#ea,#21
	db #ac,#ea,#21,#b0,#1d,#96,#1c,#b0
	db #1d,#ab,#ea,#24,#3f,#02,#1e,#ab
	db #ea,#24,#ab,#ea,#24,#b0,#1d,#96
	db #1c,#b0,#ea,#1b,#b0,#ea,#1b,#3f
	db #02,#1e,#b0,#ea,#1b,#b0,#1d,#b0
	db #1d,#96,#1c,#b0,#1d,#b0,#ea,#1b
	db #bf,#1e,#3f,#82,#ae,#ea,#1e,#b0
	db #1d,#96,#1c,#ac,#ea,#21,#ac,#ea
	db #21,#3f,#02,#1e,#ac,#ea,#21,#ac
	db #ea,#21,#b0,#1d,#96,#1c,#b0,#1d
	db #ab,#ea,#24,#bf,#1e,#96,#1b,#ab
	db #ea,#24,#ab,#ea,#24,#b0,#1d,#96
	db #1c,#a4,#ea,#36,#a4,#ea,#36,#3f
	db #02,#1e,#b0,#1d,#a4,#ea,#36,#b0
	db #1d,#98,#ea,#36,#bf,#1e,#b0,#1d
	db #bf,#1e,#98,#ea,#36,#bf,#1e,#a4
	db #ea,#36,#ff,#b0,#1d,#96,#1c,#ac
	db #ea,#21,#ac,#ea,#21,#3f,#02,#1e
	db #ac,#ea,#21,#ac,#ea,#21,#b0,#1d
	db #96,#1c,#b0,#1d,#ab,#ea,#24,#3f
	db #02,#1e,#ab,#ea,#24,#ab,#ea,#24
	db #b0,#1d,#96,#1c,#b0,#ea,#1b,#b0
	db #ea,#1b,#3f,#02,#1e,#b0,#ea,#1b
	db #b0,#1d,#b0,#1d,#96,#1c,#b0,#1d
	db #b0,#ea,#1b,#bf,#1e,#3f,#82,#ae
	db #ea,#1e,#b0,#1d,#96,#1c,#ac,#ea
	db #21,#ac,#ea,#21,#3f,#02,#1e,#ac
	db #ea,#21,#ac,#ea,#21,#b0,#1d,#96
	db #1c,#b0,#1d,#ab,#ea,#24,#bf,#1e
	db #96,#1b,#ab,#ea,#24,#ab,#ea,#24
	db #b0,#1d,#96,#1c,#b5,#ea,#14,#b0
	db #1d,#bf,#1e,#b0,#1d,#b0,#1d,#b5
	db #ea,#14,#bf,#1e,#b0,#1d,#b5,#ea
	db #14,#b0,#1d,#a9,#ea,#28,#a9,#ea
	db #28,#bf,#1e,#bf,#1e,#ff,#00,#0f
	db #0f,#0f,#00,#a9,#b4,#03,#ff,#3c
	db #08,#17,#3c,#06,#08,#3c,#02,#09
	db #3c,#08,#07,#3c,#08,#08,#3c,#08
	db #07,#3c,#86,#3c,#02,#09,#3c,#08
	db #07,#3c,#88,#ff,#3a,#08,#17,#3a
	db #06,#08,#3a,#02,#09,#3a,#08,#07
	db #3a,#08,#08,#3a,#08,#07,#3a,#06
	db #08,#3a,#02,#09,#3a,#08,#07,#3a
	db #08,#08,#ff,#3a,#08,#17,#3a,#06
	db #08,#3a,#02,#09,#3a,#08,#07,#3a
	db #08,#08,#3a,#08,#07,#3a,#06,#08
	db #3a,#02,#09,#3a,#08,#07,#3a,#08
	db #08,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#3c,#88,#3c,#86,#fd,#08
	db #bb,#7d,#07,#ff,#fe,#40,#ff,#a8
	db #f4,#01,#30,#c8,#e9,#19,#c0,#c9
	db #70,#cd,#f7,#b7,#53,#66,#10,#aa
	db #c7,#f7,#8c,#53,#cc,#f0,#44,#f0
	db #d0,#ad,#b4,#f0,#4f,#12,#f0,#bc
	db #59,#00,#d9,#1e,#e9,#c9,#f0,#3c
	db #a1,#ee,#37,#e1,#d2,#f7,#70,#b4
	db #01,#10,#f7,#4c,#00,#04,#00,#b6
	db #e1,#f0,#01,#f0,#de,#78,#87,#78
	db #f1,#88,#05,#12,#01,#0f,#7f,#04
	db #78,#f7,#04,#d2,#04,#78,#f0,#f3
	db #9c,#c3,#09,#cc,#26,#80,#05,#00
	db #10,#b4,#e6,#70,#b4,#e3,#58,#8f
	db #05,#10,#07,#09,#c7,#f0,#b4,#66
	db #f0,#0f,#22,#77,#cc,#15,#17,#00
	db #44,#25,#1a,#f3,#bc,#3c,#32,#88
	db #04,#c0,#22,#24,#c4,#30,#d2,#f1
	db #0f,#b4,#8b,#23,#f0,#4c,#f0,#1a
	db #f4,#09,#1b,#f4,#22,#52,#16,#04
	db #43,#1a,#f1,#ad,#e2,#09,#33,#22
	db #30,#78,#cc,#45,#f0,#47,#1e,#1a
	db #f0,#e1,#cc
	db #4d,#50,#09,#47,#f3,#04,#30,#f0
	db #80,#22,#16,#10,#2c,#03,#7c,#32
	db #69,#69,#52,#00,#30,#14,#79,#cc
	db #10,#08,#a5,#50,#97,#88,#68,#70
	db #63,#50,#e6,#04,#c0,#00,#06,#aa
	db #6f,#f7,#71,#be,#09,#5a,#09,#e2
	db #aa,#77,#61,#0f,#10,#19,#c3,#3e
	db #87,#1a,#79,#00,#61,#31,#68,#c4
	db #23,#30,#29,#c2,#01,#6f,#f3,#10
	db #11,#7f,#09,#bd,#3e,#f0,#9f,#52
	db #93,#04,#a5,#1a,#12,#c3,#0f,#78
	db #91,#12,#1e,#68,#f0,#94,#10,#20
	db #c2,#04,#08,#05,#b4,#f3,#8e,#36
	db #00,#ff,#fc,#50,#5b,#22,#d2,#8c
	db #91,#00,#43,#5e,#68,#36,#01,#1f
	db #c9,#83,#6a,#00,#50,#be,#00,#44
	db #05,#13,#3c,#f3,#ee,#04,#77,#ff
	db #50,#38,#a3,#42,#b4,#c2,#03,#bf
	db #f8,#69,#10,#19,#00,#2f,#fe,#50
	db #dc,#00,#a1,#05,#45,#22,#05,#2f
	db #f1,#ff,#04,#33,#c4,#e7,#32,#ee
	db #22,#70,#79,#e9,#a7,#01,#04,#fe
	db #f0,#f0,#ff,#00,#06,#57,#ff,#0a
	db #f8,#f0,#f3,#cc,#06,#a0,#06,#00
	db #4f,#22,#10,#5f,#ff,#15,#0d,#15
	db #15,#66,#88,#10,#06,#f0,#e1,#05
	db #10,#77,#ec,#18,#0d,#06,#11,#18
	db #1f,#10,#42,#ad,#10,#11,#10,#bf
	db #18,#1a,#33,#15,#43,#ee,#1b,#00
	db #01,#0f,#1f,#32,#2a,#e9,#18,#33
	db #21,#ff,#23,#10,#40,#2a,#fe,#10
	db #26,#43,#44,#45,#46,#46,#fe,#f7
	db #40,#06,#30,#15,#0f,#4e,#4f,#50
	db #f9,#51,#52,#53,#54,#4e,#1e,#04
	db #10,#7f,#37,#4f,#03,#5c,#5d,#5e
	db #5f,#60,#ef,#61,#5d,#1b,#b7,#62
	db #66,#67,#68,#4f,#08,#06,#10,#3f
	db #68,#6e,#6f,#5c,#49,#84,#06,#34
	db #7f,#5c,#a2,#aa,#78,#ab,#03,#e0
	db #78,#b8,#5e,#e2,#7c,#5e,#f5,#77
	db #7d,#5d,#7b,#aa,#5d,#e1,#34,#28
	db #e1,#7e,#5c,#55,#8d,#55,#74,#f0
	db #7f,#d5,#8e,#5f,#93,#5c,#92,#8d
	db #90,#ab,#03,#f1,#8e,#55,#5f,#c3
	db #02,#03,#d8,#15,#a0,#f7,#43,#5f
	db #f1,#ff,#fc,#be,#03,#f3,#43,#0a
	db #04,#26,#a0,#87,#1d,#f0,#d2,#5b
	db #a9,#a1,#09,#f0,#a7,#ff,#43,#b5
	db #5d,#a4,#b6,#af,#0b,#44,#84,#0a
	db #c3,#a5,#a5,#3f,#ad,#f0,#af,#59
	db #af,#0a,#e3,#c9,#cd,#af,#be,#5f
	db #5b,#a7,#ca,#e1,#ce,#cd,#f0,#d2
	db #d5,#69,#bc,#1d,#4e,#bf,#5d,#5f
	db #5f,#03,#72,#d7,#df,#e3,#df,#78
	db #f4,#5d,#f1,#1f,#5f,#7c,#d3,#e4
	db #b8,#ea,#e4,#ed,#1f,#f0,#2f,#af
	db #a0,#03,#c9,#f6,#cd,#4f,#ad,#cd
	db #bc,#b6,#87,#cf,#d8,#01,#27,#af
	db #f0,#03,#e1,#af,#06,#07,#07,#0c
	db #f8,#f0,#f3,#ff,#0a,#03,#f0,#0f
	db #19,#0f,#f0,#e1,#11,#11,#78,#87
	db #15,#f5,#12,#0f,#14,#19,#3c,#0f
	db #f0,#18,#ff,#19,#15,#1e,#1f,#0f
	db #11,#13,#15,#7f,#1e,#04,#15,#1f
	db #1c,#2c,#2d,#22,#1f,#1e,#c3,#0f
	db #2a,#25,#03,#16,#2e,#ff,#35,#2e
	db #1f,#33,#19,#25,#2e,#11,#6c,#3c
	db #33,#2a,#ff,#45,#1f,#5a,#5a,#3e
	db #78,#f0,#48,#49,#0f,#4c,#1f,#d2
	db #fe,#4c,#48,#4a,#47,#53,#4d,#48
	db #d3,#55,#5f,#5a,#5e,#0f,#a5,#5e
	db #e1,#5e,#7d,#a5,#1f,#61,#63,#61
	db #61,#b4,#1b,#c7,#64,#62,#f0,#a5
	db #b4,#21,#34,#4e,#ef,#56,#48,#50
	db #5a,#51,#71,#75,#52,#8f,#55,#5a
	db #f0,#d2,#03,#48,#60,#5e,#ff,#03
	db #ee,#1d,#42,#03,#f6,#03,#ee,#17
	db #42,#03,#f6,#03,#ee,#1d,#42,#02
	db #f6,#03,#ee,#1d,#ff,#ee,#17,#3a
	db #03,#f6,#00,#ee,#1d,#3a,#03,#f6
	db #00,#ee,#17,#3a,#03,#f6,#00,#ee
	db #1d,#3a,#03,#f6,#00,#ee,#17,#3a
	db #03,#f6,#00,#ee,#1d,#3a,#03,#f6
	db #00,#ee,#17,#3a,#03,#f6,#00,#ee
	db #1d,#3a,#03,#f6,#00,#ee,#17,#33
	db #03,#f6,#02,#ee,#1d,#33,#03,#f6
	db #02,#ee,#17,#33,#03,#f6,#02,#ee
	db #1d,#33,#03,#f6,#02,#ee,#17,#33
	db #03,#f6,#01,#ee,#1d,#33,#03,#f6
	db #01,#ee,#17,#33,#03,#f6,#01,#ee
	db #1d,#33,#02,#f6,#01,#ee,#1d,#ff
	db #ee,#17,#2e,#03,#f6,#00,#ee,#1d
	db #2e,#03,#f6,#00,#ee,#17,#2e,#03
	db #f6,#00,#ee,#1d,#2e,#03,#f6,#00
	db #ee,#17,#2e,#03,#f6,#00,#ee,#1d
	db #2e,#03,#f6,#00,#ee,#17,#2e,#03
	db #f6,#00,#ee,#1d,#2e,#03,#f6,#00
	db #ee,#17,#33,#03,#f6,#02,#ee,#1d
	db #33,#03,#f6,#02,#ee,#17,#33,#03
	db #f6,#02,#ee,#1d,#33,#03,#f6,#02
	db #ee,#17,#b3,#f6,#01,#ee,#1d,#b3
	db #f6,#01,#ee,#1d,#b3,#f6,#01,#ee
	db #17,#ee,#0d,#ee,#07,#ee,#0d,#33
	db #02,#f6,#01,#ee,#1d,#33,#02,#f6
	db #01,#ee,#1d,#ff,#ee,#17,#3c,#03
	db #f6,#00,#ee,#1d,#3c,#03,#f6,#00
	db #ee,#17,#3c,#03,#f6,#00,#ee,#1d
	db #3c,#03,#f6,#00,#ee,#17,#38,#03
	db #f6,#02,#ee,#1d,#38,#03,#f6,#02
	db #ee,#17,#38,#03,#f6,#01,#ee,#1d
	db #38,#03,#f6,#01,#ee,#17,#3c,#03
	db #f6,#00,#ee,#1d,#3c,#03,#f6,#00
	db #ee,#17,#3c,#03,#f6,#00,#ee,#1d
	db #3c,#03,#f6,#00,#ee,#17,#37,#03
	db #f6,#02,#ee,#1d,#b7,#f6,#02,#38
	db #02,#f6,#01,#ee,#17,#38,#03,#f6
	db #01,#ee,#1d,#38,#02,#f6,#01,#ee
	db #1d,#ff,#b6,#b6,#0f,#36,#0f,#f6
	db #03,#36,#02,#b6,#09,#36,#02,#b6
	db #08,#36,#02,#b6,#07,#36,#82,#36
	db #02,#b6,#06,#36,#82,#36,#02,#b6
	db #05,#36,#82,#36,#18,#b6,#04,#36
	db #02,#b6,#03,#36,#02,#b6,#02,#36
	db #82,#36,#02,#b6,#01,#ff,#ee,#17
	db #2e,#03,#f6,#02,#ee,#1d,#2e,#03
	db #f6,#02,#ee,#17,#2e,#03,#f6,#02
	db #ee,#1d,#2e,#03,#f6,#02,#ee,#17
	db #2e,#03,#f6,#02,#ee,#1d,#2e,#03
	db #f6,#02,#ee,#17,#2e,#03,#f6,#02
	db #ee,#1d,#2e,#03,#f6,#02,#ee,#17
	db #2e,#03,#f6,#01,#ee,#1d,#2e,#03
	db #f6,#01,#ee,#17,#2e,#03,#f6,#01
	db #ee,#1d,#2e,#03,#f6,#01,#ee,#17
	db #2e,#03,#f6,#01,#ee,#1d,#2e,#03
	db #f6,#01,#ee,#17,#2e,#03,#f6,#01
	db #ee,#1d,#2e,#03,#f6,#01,#ff,#ee
	db #17,#3a,#03,#f6,#02,#ee,#1d,#3a
	db #03,#f6,#02,#ee,#17,#3a,#03,#f6
	db #02,#ee,#1d,#3a,#03,#f6,#02,#ee
	db #17,#3a,#03,#f6,#02,#ee,#1d,#3a
	db #03,#f6,#02,#ee,#17,#3a,#03,#f6
	db #02,#ee,#1d,#3a,#03,#f6,#02,#ee
	db #17,#3a,#03,#f6,#01,#ee,#1d,#3a
	db #03,#f6,#01,#ee,#17,#3a,#03,#f6
	db #01,#ee,#1d,#3a,#03,#f6,#01,#ee
	db #17,#3a,#03,#f6,#01,#ee,#1d,#3a
	db #03,#f6,#01,#ee,#17,#3a,#03,#f6
	db #01,#ee,#1d,#3a,#02,#f6,#01,#ee
	db #1d,#ff,#3a,#10,#f6,#00,#36,#10
	db #f6,#03,#3a,#10,#f6,#02,#38,#10
	db #f6,#01,#ff,#3a,#10,#f6,#00,#36
	db #10,#f6,#03,#3a,#10,#f6,#02,#38
	db #10,#f6,#01,#ff,#ee,#17,#3a,#03
	db #f6,#00,#ee,#1d,#3a,#03,#f6,#00
	db #ee,#17,#3a,#03,#f6,#00,#ee,#1d
	db #3a,#03,#f6,#00,#ee,#17,#36,#03
	db #f6,#03,#ee,#1d,#36,#03,#f6,#03
	db #ee,#17,#36,#03,#f6,#03,#ee,#1d
	db #36,#03,#f6,#03,#ee,#17,#3a,#03
	db #f6,#02,#ee,#1d,#3a,#03,#f6,#02
	db #ee,#17,#3a,#03,#f6,#02,#ee,#1d
	db #3a,#03,#f6,#02,#ee,#17,#38,#03
	db #f6,#01,#ee,#1d,#38,#03,#f6,#01
	db #ee,#17,#38,#03,#f6,#01,#ee,#1d
	db #38,#02,#f6,#01,#ee,#1d,#ff,#ee
	db #17,#3a,#03,#f6,#00,#ee,#1d,#3a
	db #03,#f6,#00,#ee,#17,#3a,#03,#f6
	db #00,#ee,#1d,#3a,#03,#f6,#00,#ee
	db #17,#36,#03,#f6,#03,#ee,#1d,#36
	db #03,#f6,#03,#ee,#17,#36,#03,#f6
	db #03,#ee,#1d,#36,#03,#f6,#03,#ee
	db #17,#3a,#03,#f6,#02,#ee,#1d,#3a
	db #03,#f6,#02,#ee,#17,#3a,#03,#f6
	db #02,#ee,#1d,#3a,#03,#f6,#02,#ee
	db #17,#38,#03,#f6,#01,#ee,#1d,#38
	db #03,#f6,#01,#ee,#17,#38,#03,#f6
	db #01,#ee,#1d,#38,#02,#f6,#01,#ee
	db #1d,#ff,#ee,#17,#2e,#03,#f6,#02
	db #ee,#1d,#2e,#03,#f6,#02,#ee,#17
	db #2e,#03,#f6,#02,#ee,#1d,#2e,#03
	db #f6,#02,#ee,#17,#2e,#03,#f6,#02
	db #ee,#1d,#2e,#03,#f6,#02,#ee,#17
	db #2e,#03,#f6,#02,#ee,#1d,#2e,#02
	db #f6,#02,#ee,#1d,#ee,#17,#2e,#0f
	db #f6,#01,#ae,#b6,#01,#ae,#b6,#02
	db #ae,#b6,#03,#ae,#b6,#04,#ae,#b6
	db #05,#ae,#b6,#06,#ae,#b6,#08,#ae
	db #b6,#0a,#2e,#07,#b6,#0f,#fe,#01
	db #ff,#3a,#20,#f6,#00,#38,#20,#f6
	db #01,#ff,#3f,#20,#f6,#00,#3a,#a0
	db #ff
;
.music_info
	db "Ghoul's Writer Muzaxx Collector Voyage 93 (19xx)(Scorpion)()",0
	db "ST Module",0

	read "music_end.asm"
