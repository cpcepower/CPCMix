; Music of Lazertag (1987)(U.S. Gold)(Jason C. Brooke)()
; Ripped by Megachur the 16/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LAZERTAG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #9d16
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

;
.play_music
;
	sub a
.music_end equ $ + 1
.l9d18 equ $ + 1
	cp #00
	push ix
	jr z,l9d57
	ld b,a
	ld ix,la064
	ld hl,la0a9
	dec (hl)
	jr nz,l9d36
	ld (hl),#05
	call l9ef5
	call l9ef3
	call l9ef3
	ld lx,la064; #64
.l9d37 equ $ + 1
.l9d36
	ld a,#00
	ld (la0b0),a
	ld bc,la0b2
	call l9f81
	ld (la0aa),hl
	ld bc,la0b3
	call l9f7f
	ld (la0ac),hl
	ld bc,la0b4
	call l9f7f
	ld (la0ae),hl
	sub a
.l9d58 equ $ + 1
.l9d57
	cp #00
	jr z,l9dbc
	ld hl,la060
	dec (hl)
	jr nz,l9d69
	ld (la0b4),a
	ld (l9d58),a
	jr l9dbc
.l9d69
	ld de,(la05e)
	ld a,(la057)
	or a
	jr z,l9d89
	ld hl,la062
	dec (hl)
	jr nz,l9d89
	ld (hl),a
	ld hl,la058
	rrc (hl)
	ld hl,(la059)
	jr c,l9d87
	ld hl,(la05b)
.l9d87
	add hl,de
	ex de,hl
.l9d89
	ld hl,(la052)
	add hl,de
	ld a,(la056)
	or a
	jr z,l9da0
	ex de,hl
	ld hl,la061
	dec (hl)
	jr nz,l9d9f
	ld (hl),a
	ld de,(la054)
.l9d9f
	ex de,hl
.l9da0
	ld (la05e),hl
	ld a,#10
	ld (la0b4),a
	ld (la0ae),hl
	ld a,l
	ld hl,la05d
	rrc (hl)
	ld hl,la066
	res 0,(hl)
	jr nc,l9dbc
	inc (hl)
	ld (la0b0),a
.l9dbc
	ld hl,la066
	ld a,#fe
	or (hl)
	dec l
	ld c,(hl)
	dec l
	rr c
	rla
	ld c,(hl)
	rr c
	rla
	ld c,a
	add a
	add a
	add a
	xor c
	ld (la0b1),a
	sub a
.l9dd6 equ $ + 1
	cp #00
	ld hl,la0b6
	ld c,a
	ld de,#0cf6
	jr z,l9de5
	inc d
	inc l
	ld (l9dd6),a
.l9de5
	ld a,#c0
.l9de7
	ld b,#f4
	out (c),d
	ld b,e
	out (c),a
	rlca
	out (c),c
	dec b
	outd
	ld b,e
	out (c),a
	rrca
	out (c),c
	dec d
	jp p,l9de7
	pop ix
.l9e00
	ret
;
.init_music
;
	push bc
	push de
	push hl
	ld hl,la064
	push hl
	ld bc,#0044
	ld de,la065
	ld (hl),b
	ldir
	ld hl,la2b2
	add a
	ld c,a
	add hl,bc
	add hl,bc
	add hl,bc
	ex (sp),ix
	sub a
	ld (l9d18),a
	inc a
	ld (de),a
	ld bc,#0301
.l9e24
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#24),c
	ld (ix+#09),e
	ld (ix+#0c),d
	ld (ix+#0f),#02
	ld a,(de)
	ld (ix+#03),a
	inc e
	ld a,(de)
	ld (ix+#06),a
	inc lx
	djnz l9e24
	ld a,c
	ld (l9d18),a
	pop ix
	pop hl
	pop de
	pop bc
	ret
	push bc
	push de
	push hl
	add a
	ld c,a
	add a
	add a
	ld b,#00
	ld hl,la632
	add hl,bc
	ld c,a
	add hl,bc
	add hl,bc
	ld de,la052
	ld c,#0f
	sub a
	ld (l9d58),a
	ldir
	ld c,#03
	ld de,la0b5
	ldir
	ld hl,(la056)
	ld (la061),hl
	ld a,#01
	ld (l9d58),a
	ld (l9dd6),a
	pop hl
	pop de
	pop bc
	ret
	db #c4
	db #3e
	db #61
	db #64
	db #13
	db #4a
	db #67
	db #31
	db #2b
;
.stop_music
;
	sub a
	ld (l9d18),a
	ld (la0b2),a
	ld (la0b3),a
	ld (la0b4),a
	ret
	ld c,(ix+#0f)
	ld l,(ix+#09)
	ld h,(ix+#0c)
	add hl,bc
	ld a,(hl)
	inc l
	or (hl)
	jr nz,l9ea9
	sbc hl,bc
	ld c,b
.l9ea9
	ld d,(hl)
	dec l
	ld e,(hl)
	inc c
	inc c
	ld (ix+#0f),c
	jr l9f08
	ld (ix+#2a),a
	jr l9f08
	ld a,(de)
	inc de
	ld (ix+#3f),a
	jr l9f08
	ld a,(de)
	inc de
	ld (ix+#1e),a
	set 3,(ix+#42)
	ld a,(de)
	inc de
	ld (ix+#21),a
	jr l9f08
	ld a,(de)
	inc de
	ld (ix+#39),a
	ld a,(de)
	inc de
	ld (ix+#3c),a
	add a
	ld (ix+#36),a
	set 4,(ix+#42)
	jr l9f08
	set 7,(ix+#42)
	set 6,(ix+#42)
	jr l9f08
	set 1,(ix+#42)
	jr l9f08
.l9ef3
	inc lx
.l9ef5
	dec (ix+#24)
	ld a,(ix+#42)
	jr nz,l9f38
	and #30
	ld (ix+#42),a
	ld e,(ix+#03)
	ld d,(ix+#06)
.l9f08
	ld a,(de)
	inc de
	cp #b0
	jr c,l9f2c
	add #20
	jr c,l9f21
	add #20
	jr c,l9f27
	ld c,a
	ld hl,la124
	add hl,bc
	ld c,(hl)
	ld (ix+#18),c
	jr l9f08
.l9f21
	inc a
	ld (ix+#27),a
	jr l9f08
.l9f27
	ld (ix+#33),a
	jr l9f08
.l9f2c
	or a
	jp p,l9f4a
	ld c,a
	ld hl,l9e00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l9f38
	add a
	ret p
	sbc a
	or #01
	add (ix+#2a)
	ld (ix+#2a),a
	ret
	ld (ix+#30),#f0
	jr l9f72
.l9f4a
	ld (ix+#12),b
	ld (ix+#15),b
	bit 7,(ix+#2a)
	ld (ix+#2a),a
	jr nz,l9f5f
	ld (ix+#30),b
	ld (ix+#2d),b
.l9f5f
	ld c,(ix+#18)
	ld (ix+#1b),c
	ld c,b
	sub #54
	jr c,l9f6f
	ld c,#02
	ld (l9d37),a
.l9f6f
	ld (ix+#00),c
.l9f72
	ld a,(ix+#27)
	ld (ix+#24),a
	ld (ix+#06),d
	ld (ix+#03),e
	ret
.l9f7f
	inc lx
.l9f81
	ld d,#00
	ld a,(ix+#30)
	cp #f0
	jr nc,l9fa5
	sub #10
	ld (ix+#30),a
	jr nc,l9fa5
	ld hl,la221
	ld e,(ix+#33)
	add hl,de
	ld a,(hl)
	add (ix+#2d)
	ld e,a
	add hl,de
	ld a,(hl)
	inc (ix+#2d)
	ld (ix+#30),a
.l9fa5
	or #f0
	inc a
	add #0f
	jr c,l9fad
	sub a
.l9fad
	ld (bc),a
	ld hl,la217
	ld e,(ix+#1b)
	inc e
	add hl,de
	ld a,(hl)
	or a
	jp p,l9fc0
	ld e,(ix+#18)
	and #7f
.l9fc0
	ld (ix+#1b),e
	add (ix+#2a)
	add (ix+#3f)
	add a
	ld hl,la0b8
	ld e,a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld c,(ix+#42)
	bit 4,c
	jr z,la004
	sub a
	or (ix+#39)
	jr nz,l9fe1
	inc a
	and c
.l9fe1
	ld b,(ix+#36)
	ld l,a
	ld a,(ix+#3c)
	bit 5,c
	jr nz,l9ff3
	sub l
	jr nz,l9ff9
	set 5,c
	jr l9ff9
.l9ff3
	add l
	cp b
	jr nz,l9ff9
	res 5,c
.l9ff9
	ld (ix+#3c),a
	srl b
	sub b
	ld l,a
	sbc a
	ld h,a
	add hl,de
	ex de,hl
.la004
	ld a,c
	xor #01
	ld (ix+#42),a
	bit 3,c
	jr z,la02f
	ld b,(ix+#21)
	djnz la02c
	ld c,(ix+#1e)
	bit 7,c
	jr z,la01b
	dec b
.la01b
	ld l,(ix+#12)
	ld h,(ix+#15)
	add hl,bc
	ld (ix+#12),l
	ld (ix+#15),h
	add hl,de
	ex de,hl
	jr la02f
.la02c
	ld (ix+#21),b
.la02f
	cpl
	and #03
	ld a,(ix+#00)
	ld c,a
	res 0,c
	rra
	jr nz,la042
	ld hl,la0b0
	ld (hl),#10
	or #01
.la042
	or c
	bit 2,(ix+#42)
	jr z,la04d
	res 1,(ix+#42)
.la04d
	ld (ix+#00),a
	ex de,hl
	ret
.la059 equ $ + 7
.la058 equ $ + 6
.la057 equ $ + 5
.la056 equ $ + 4
.la054 equ $ + 2
.la052
	db #00,#00,#00,#00,#00,#00,#00,#00
.la061 equ $ + 7
.la060 equ $ + 6
.la05e equ $ + 4
.la05d equ $ + 3
.la05b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.la062
	db #00,#00
.la066 equ $ + 2
.la065 equ $ + 1
.la064
	db #54,#68,#69,#73,#20,#41,#59,#20
	db #6d,#75,#73,#69,#63,#20,#6d,#6f
	db #64,#75,#6c,#65,#20,#69,#73,#20
	db #63,#6f,#70,#79,#72,#69,#67,#68
	db #74,#20,#31,#39,#38,#37,#20,#4a
	db #61,#73,#2e,#43,#2e,#42,#72,#6f
	db #6f,#6b,#65,#2e,#20,#2d,#50,#72
	db #65,#70,#61,#72,#65,#20,#74,#6f
.la0a9 equ $ + 5
	db #20,#64,#69,#65,#21,#2d
.la0b1 equ $ + 7
.la0b0 equ $ + 6
.la0ae equ $ + 4
.la0ac equ $ + 2
.la0aa
	db #00,#00,#00,#00,#00,#00,#00,#00
.la0b6 equ $ + 4
.la0b5 equ $ + 3
.la0b4 equ $ + 2
.la0b3 equ $ + 1
.la0b2
	db #00,#00,#00,#00,#00,#00
.la0b8
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
.la124 equ $ + 4
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
.la160
	dw la2c2,la2d9,la2d9,la2d9
	dw la2d9,la2d9,la2d9,la3e9
	dw la42e,la42e,la440,la4c7
	dw la4ec,la4ec,la52b,la2d9
	dw la2d9,la2d9,la2d9,#0000
.la188
	dw la3cf,la3cf,la359,la324
	dw la324,la3a9,la3a9,la3fe
	dw la476,la476,la476,la486
	dw la4d4,la493,la493,la51d
	dw la324,la324,la3a9,la3a9
	dw #0000
.la1b2
	dw la2cc,la2be,la3cf
	dw la359,la359,la359,la359
	dw la419,la461,la461,la461
	dw la461,la4e1,la4e1,la491
	dw la493,la51d,la357,la359
	dw la359,la359,#0000
.la1de
	dw la58a
	dw la5ba,la58c,la5c5,la58c
	dw la5ba,la58c,la5c5,#0000
.la1f0
	dw la544,la575,la546,la57f
	dw la546,la575,la546,la57f
	dw #0000
.la202
	dw la5cf,la60c,la5d1,la61e
	dw la5d1,la60c,la5d1,la61e
	dw #0000
.la217 equ $ + 3
	db #00,#01,#04,#07,#80,#00,#03,#87
.la221 equ $ + 5
	db #00,#04,#87,#00,#8c,#0d,#1d,#21
	db #2f,#3f,#48,#51,#55,#5d,#61,#71
	db #76,#80,#1d,#1c,#1b,#3a,#e9,#e9
	db #e9,#79,#58,#57,#56,#55,#54,#53
	db #52,#51,#f0,#1b,#1a,#19,#18,#f7
	db #4e,#4d,#4c,#4b,#4a,#49,#48,#57
	db #56,#55,#54,#53,#52,#51,#f0,#ec
	db #ed,#ec,#ec,#eb,#eb,#ea,#ea,#e9
	db #e9,#e8,#e8,#e7,#e7,#e6,#e6,#f5
	db #0a,#08,#06,#05,#08,#06,#05,#04
	db #03,#f2,#1d,#1c,#2b,#2a,#29,#28
	db #27,#26,#25,#f4,#0d,#0a,#05,#01
	db #f0,#1d,#0c,#0b,#0a,#19,#08,#07
	db #06,#f5,#1e,#1d,#1c,#1b,#fa,#21
	db #22,#43,#44,#45,#46,#57,#58,#59
	db #5a,#5b,#5a,#59,#58,#57,#46,#f5
	db #7d,#7c,#7b,#7a,#79,#f8,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #f0,#1d,#1c,#1b,#2a,#f9
.la2b2
	dw la160,la188,la1b2
	dw la1de,la1f0,la202
.la2c2 equ $ + 4
.la2be
	db #ff,#80,#80,#84,#85,#04
	db #0c,#b0,#c3,#ff,#09,#88,#09,#84
.la2cc
	db #85,#07,#0e,#b0,#c3,#ff,#09,#81
.la2d9 equ $ + 5
	db #ff,#28,#88,#09,#84,#85,#01,#02
	db #c5,#e1,#b0,#15,#b1,#21,#c6,#b0
	db #6b,#c5,#15,#b1,#21,#b0,#15,#c6
	db #b0,#6b,#c5,#13,#11,#b2,#1d,#c6
	db #b0,#6b,#c5,#11,#b2,#1d,#b0,#11
	db #c6,#b0,#6b,#c5,#10,#0e,#b1,#1a
	db #c6,#b0,#6b,#c5,#0e,#b1,#1a,#b0
	db #0e,#c6,#b0,#6b,#c5,#0c,#0a,#b2
	db #16,#c6,#b0,#6b,#c5,#0a,#b2,#18
	db #b0,#0c,#c6,#6b,#c5,#b2,#18,#84
.la324
	db #85,#00,#01,#b0,#c8,#e1,#83,#2d
	db #2d,#2b,#e3,#2d,#e1,#29,#28,#83
	db #28,#2b,#2d,#30,#83,#34,#82,#34
	db #82,#32,#82,#2e,#e0,#2b,#29,#e1
	db #29,#26,#24,#26,#29,#26,#24,#26
	db #83,#25,#22,#29,#22,#82,#25,#22
.la359 equ $ + 5
.la357 equ $ + 3
	db #28,#2b,#84,#87,#00,#85,#01,#01
	db #b0,#c7,#e1,#21,#e0,#24,#24,#e1
	db #24,#e0,#24,#24,#e1,#21,#e0,#24
	db #24,#e1,#24,#e0,#24,#24,#e1,#21
	db #e0,#26,#26,#e1,#26,#e0,#26,#26
	db #e1,#29,#28,#26,#24,#e1,#21,#e0
	db #24,#24,#e1,#24,#e0,#24,#24,#e1
	db #21,#e0,#24,#24,#e1,#24,#e0,#24
	db #24,#e1,#22,#e0,#26,#26,#e1,#26
	db #e0,#26,#26,#e1,#22,#e0,#26,#26
.la3a9 equ $ + 5
	db #29,#28,#26,#24,#84,#b0,#c8,#e1
	db #30,#2d,#30,#2d,#30,#2d,#30,#31
	db #e3,#32,#e1,#34,#e9,#35,#e1,#35
	db #34,#32,#2d,#30,#2d,#30,#2d,#e3
	db #32,#e1,#34,#e1,#35,#e3,#37,#e1
.la3cf equ $ + 3
	db #34,#32,#84,#c4,#85,#00,#01,#b0
	db #e5,#2d,#32,#e3,#30,#e5,#2d,#32
	db #e3,#30,#e5,#2d,#32,#e3,#30,#e5
.la3e9 equ $ + 5
	db #2e,#32,#e3,#30,#84,#b3,#e1,#15
	db #e3,#80,#e1,#15,#ef,#c9,#09,#c5
	db #e1,#15,#80,#15,#e3,#13,#b0,#fd
.la3fe equ $ + 2
	db #80,#84,#e1,#2d,#e3,#80,#e1,#2d
	db #ef,#80,#e1,#2d,#80,#2d,#2b,#e3
	db #c2,#85,#02,#04,#13,#07,#13,#07
.la419 equ $ + 5
	db #13,#07,#13,#07,#84,#b1,#e1,#21
	db #e3,#80,#e1,#21,#ef,#c9,#04,#c8
	db #e1,#21,#80,#21,#e3,#b2,#1f,#fd
.la42e equ $ + 2
	db #80,#84,#e1,#13,#10,#13,#10,#16
	db #10,#15,#10,#13,#10,#13,#10,#15
.la440 equ $ + 4
	db #10,#16,#10,#84,#15,#10,#15,#10
	db #18,#10,#17,#10,#15,#10,#15,#10
	db #17,#10,#18,#10,#17,#10,#17,#10
	db #1a,#10,#19,#10,#17,#10,#17,#10
.la461 equ $ + 5
	db #19,#10,#1a,#10,#84,#c5,#85,#45
	db #0c,#e3,#10,#e4,#10,#e3,#10,#e2
	db #10,#e3,#10,#e2,#10,#e3,#10,#e4
.la476 equ $ + 2
	db #10,#84,#c9,#b3,#ea,#86,#04,#c4
	db #e1,#40,#e2,#40,#c9,#b3,#ef,#86
.la486 equ $ + 2
	db #04,#84,#ff,#ca,#b0,#85,#05,#05
.la493 equ $ + 7
.la491 equ $ + 5
	db #81,#01,#03,#40,#84,#87,#0c,#cc
	db #b0,#85,#01,#02,#e5,#28,#e1,#27
	db #26,#23,#28,#e3,#27,#e1,#26,#23
	db #e9,#80,#e5,#24,#e1,#23,#21,#24
	db #23,#e3,#24,#e1,#23,#21,#e9,#80
	db #e5,#28,#e1,#27,#26,#23,#28,#e3
	db #27,#e1,#26,#23,#e9,#80,#ef,#24
.la4c7 equ $ + 3
	db #88,#23,#84,#85,#04,#0c,#b0,#c3
	db #ff,#09,#81,#01,#01,#88,#09,#84
.la4d4
	db #85,#07,#0e,#b0,#c3,#ff,#09,#81
.la4e1 equ $ + 5
	db #01,#01,#88,#09,#84,#cb,#b3,#85
	db #02,#04,#e7,#15,#15,#15,#15,#84
.la4ec
	db #85,#02,#04,#c5,#e5,#10,#10,#e3
	db #10,#e5,#10,#10,#e3,#0c,#e5,#09
	db #09,#e3,#09,#e5,#09,#09,#e3,#0c
	db #e5,#10,#10,#e3,#10,#e5,#10,#10
	db #e3,#0c,#e5,#09,#09,#e3,#09,#e1
	db #07,#10,#07,#10,#07,#10,#07,#10
.la51d equ $ + 1
	db #84,#c5,#85,#00,#01,#b1,#e3,#2d
.la52b equ $ + 7
	db #e1,#28,#e3,#2d,#f5,#80,#84,#c5
	db #85,#01,#02,#b3,#e3,#15,#e1,#10
	db #e5,#15,#b0,#e3,#09,#cc,#e1,#15
	db #09,#10,#09,#11,#09,#10,#07,#84
.la546 equ $ + 2
.la544
	db #87,#00,#c0,#85,#01,#02,#b0,#ed
	db #2f,#e1,#2c,#e3,#2d,#2c,#e1,#2d
	db #e5,#2f,#ff,#25,#e3,#2d,#e1,#2c
	db #e3,#2d,#e5,#2c,#e3,#2c,#25,#e7
	db #25,#e3,#2d,#e1,#2c,#e3,#2d,#e5
	db #2c,#e3,#2c,#2a,#e1,#28,#e5,#2a
.la575 equ $ + 1
	db #84,#e9,#2c,#e1,#2a,#28,#e7,#2a
.la57f equ $ + 3
	db #e9,#80,#84,#e7,#2c,#80,#e5,#2c
.la58a equ $ + 6
	db #2d,#e3,#2f,#87,#02,#84,#87,#00
.la58c
	db #c2,#85,#02,#04,#b0,#e5,#10,#08
	db #e3,#0b,#e3,#10,#08,#0b,#10,#e5
	db #12,#e9,#0d,#e3,#12,#e1,#14,#e9
	db #15,#e5,#12,#15,#e3,#0d,#e5,#12
	db #15,#e3,#0d,#e5,#0b,#0f,#e3,#12
.la5ba equ $ + 6
	db #e5,#0b,#0f,#e3,#12,#84,#e3,#10
	db #08,#0b,#10,#e5,#0b,#0f,#e3,#0b
.la5c5 equ $ + 1
	db #84,#ef,#10,#e5,#14,#15,#e3,#17
.la5d1 equ $ + 5
.la5cf equ $ + 3
	db #87,#02,#84,#87,#00,#c1,#85,#00
	db #01,#b0,#e5,#2c,#e7,#28,#e1,#23
	db #e3,#28,#23,#e1,#25,#e5,#23,#e1
	db #21,#2a,#2d,#2a,#31,#2a,#36,#31
	db #80,#2a,#2d,#2a,#31,#2a,#36,#31
	db #e3,#2a,#e1,#28,#e9,#25,#e3,#23
	db #21,#1e,#21,#e3,#2a,#e1,#27,#e3
	db #23,#e5,#23,#e5,#27,#e9,#23,#84
.la60c
	db #e1,#80,#2f,#34,#2f,#80,#2f,#34
	db #2f,#80,#2f,#33,#2f,#36,#2f,#3b
.la61e equ $ + 2
	db #36,#84,#e1,#80,#2f,#34,#2f,#3b
	db #2f,#34,#2f,#23,#28,#23,#25,#28
	db #25,#27,#2a,#87,#02,#84
.la632
	db #32,#00,#96,#00,#00,#01,#55,#23
	db #00,#dd,#7f,#00,#96,#00,#0c,#a0
	db #0f,#09,#f1,#7f,#a0,#00,#06,#01
	db #55,#03,#00,#fd,#7f,#00,#aa,#00
	db #18,#a0,#0f,#09,#06,#00,#a0,#00
	db #0e,#01,#55,#01,#00,#ff,#7f,#00
	db #9b,#00,#1c,#a0,#0f,#09,#0c,#00
	db #46,#00,#00,#01,#55,#05,#00,#fb
	db #7f,#00,#46,#00,#18,#a0,#0f,#09
	db #00,#5e,#0c,#0c
;
; #a064
; db "This AY music module is copyright 1987 Jas.C.Brooke. -Prepare to die!-"
;
.music_info
	db "Lazertag (1987)(U.S. Gold)(Jason C. Brooke)",0
	db "This AY music module is copyright 1987 Jas.C.Brooke. -Prepare to die!-",0

	read "music_end.asm"
