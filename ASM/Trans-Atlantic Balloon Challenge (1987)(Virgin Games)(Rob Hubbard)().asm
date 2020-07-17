; Music of Trans-Atlantic Balloon Challenge (1987)(Virgin Games)(Rob Hubbard)()
; Ripped by Megachur the 28/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TRANSBCT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #9d78

	read "music_header.asm"

	jp l9d88	; init a=1 -> 4 are sound fx...
	jp l9e3d	; play
	jp l9d81	; stop
;
.stop_music
.l9d81
;
	xor a
	ld (la262),a
	jp l9eba
;
.init_music
.l9d88
;
	push af
	xor a
	ld (la262),a
	pop af
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,la263
	add hl,bc
	ld ix,l9dd9
	ld c,#21
	xor a
	ld (la0c6),a
	ld a,#03
.l9da5
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,l9da5
	inc a
	ld (l9e3c),a
	ld (la262),a
	ret
.l9dd9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.l9dfa
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.l9e1b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
.l9e3c
	db #00
;
.play_music
.l9e3d
;
	ld a,(la262)
	and a
	ret z
.l9e43 equ $ + 1
	ld a,#00
	ld (l9e90),a
	ld hl,l9e3c
	dec (hl)
	jr nz,l9e68
	ld b,(hl)
	ld ix,l9dd9
	call l9fc4
	ld ix,l9dfa
	call l9fc4
	ld ix,l9e1b
.l9e62 equ $ + 2
	call l9fc4
	ld hl,l9e3c
.l9e67 equ $ + 1
	ld (hl),#01
.l9e68
	ld ix,l9dd9
	call la07a
	ld (la1a2),hl
	ld (la1aa),a
	ld ix,l9dfa
	call la07a
	ld (la1a4),hl
	ld (la1ab),a
	ld ix,l9e1b
	call la07a
	ld (la1a6),hl
	ld (la1ac),a
.l9e90 equ $ + 1
	ld a,#00
	ld (la1a8),a
	ld hl,la1ae
	ld d,#0c
.l9e99
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l9e99
	ret
.l9eba
	ld de,#0d00	; original is ld de,#d000 should be ld de,&0d00 !!!
.l9ebd
	call l9ec7
	dec e
	jp p,l9ebd
	ld de,#073f
.l9ec7
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	ret
	db #cd
	db #b5
	db #b9
	db #be
	db #7c
	db #ab
	db #a6
	db #13
	db #95
	db #8d
	db #52
	db #3c
	db #64
	db #ba
	db #04
	db #c1
	db #c6
	db #cb
	xor a
	ld (la262),a
	pop hl
	jp l9eba
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l9f1e
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l9f1e
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l9fd6
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,la187
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l9fd6
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,la187
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l9fd6
	ld hl,la187
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l9fd6
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l9fd6
	ld a,(de)
	inc de
	ld (la0c6),a
	jr l9fd6
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l9fd6
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l9fd6
	ld (ix+#1d),b
	jr l9fd6
	ld (ix+#1d),#40
	jr l9fd6
	ld (ix+#1d),#c0
	jr l9fd6
	set 1,(ix+#00)
	jr l9fd6
	ld (ix+#13),b
	res 5,(ix+#00)
	jr la00c
	set 4,(ix+#00)
	jr l9fd6
	set 1,(ix+#1f)
	jr l9fd6
.l9fc4
	dec (ix+#10)
	jr nz,la019
	ld (ix+#00),b
	set 0,(ix+#1f)
	ld e,(ix+#01)
	ld d,(ix+#02)
.l9fd6
	ld a,(de)
	inc de
	and a
	jp m,la02a
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l9fe8
	ld (l9e43),a
.l9fe8
	bit 4,(ix+#00)
	jr nz,la00c
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	res 4,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.la00c
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.la019
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,la026
	inc (ix+#12)
	ret
.la026
	dec (ix+#12)
	ret
.la02a
	cp #b8
	jr c,la072
	add #20
	jr c,la056
	add #10
	jr c,la05d
	add #10
	jr nc,la04f
	ld c,a
	ld hl,la258
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr l9fd6
.la04f
	add #09
	ld (l9e67),a
	jr l9fd6
.la056
	inc a
	ld (ix+#11),a
	jp l9fd6
.la05d
	ld (ix+#19),a
	ld a,(de)
	inc de
	ld (ix+#14),a
	ld a,(de)
	inc de
	ld (ix+#15),a
	ld a,(de)
	inc de
	ld (ix+#17),a
	jp l9fd6
.la072
	ld hl,l9e62
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.la07a
	ld c,(ix+#00)
	bit 5,c
	jr z,la0c5
	ld a,(ix+#16)
	sub #10
	jr nc,la0ad
	bit 6,c
	jr z,la0b2
	add (ix+#13)
	jr nc,la092
	sbc a
.la092
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,la0a8
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr la0c5
.la0a8
	ld (ix+#18),a
	jr la0c5
.la0ad
	ld (ix+#16),a
	jr la0c5
.la0b2
	cpl
	sub #0f
	add (ix+#13)
	jr c,la0bb
	sub a
.la0bb
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,la0c5
	res 5,c
.la0c6 equ $ + 1
.la0c5
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,la0dd
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.la0dd
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,la1b0
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,la13f
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,la108
	bit 0,c
	jr nz,la126
.la108
	bit 5,l
	jr nz,la118
	sub (ix+#1b)
	jr nc,la123
	set 5,(ix+#1d)
	sub a
	jr la123
.la118
	add (ix+#1b)
	cp b
	jr c,la123
	res 5,(ix+#1d)
	ld a,b
.la123
	ld (ix+#1c),a
.la126
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,la131
	dec d
.la131
	add #a0
	jr c,la13d
.la135
	sla e
	rl d
	add #18
	jr nc,la135
.la13d
	add hl,de
	ex de,hl
.la13f
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,la16a
	ld b,(ix+#0e)
	djnz la167
	ld c,(ix+#0d)
	bit 7,c
	jr z,la156
	dec b
.la156
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr la16a
.la167
	ld (ix+#0e),b
.la16a
	bit 1,(ix+#1f)
	jr z,la183
	bit 0,(ix+#1f)
	jr z,la183
	res 0,(ix+#1f)
	ld a,#00
	ld (l9e90),a
	ld a,#07
	jr la194
.la183
	cpl
	and #03
.la187 equ $ + 1
	ld a,#38
	jr nz,la194
	ld a,(l9e43)
	xor #08
	ld (l9e90),a
	ld a,#07
.la194
	ld hl,la1a9
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.la1a9 equ $ + 7
.la1a8 equ $ + 6
.la1a6 equ $ + 4
.la1a4 equ $ + 2
.la1a2
	db #00,#00,#00,#00,#00,#00,#00,#3f
.la1ae equ $ + 4
.la1ac equ $ + 2
.la1ab equ $ + 1
.la1aa
	db #0f,#0f,#0f,#00,#00,#00
.la1b0
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
.la258
	db #02,#03,#00,#87,#00,#0c,#00,#00
	db #00,#87
.la262
.music_end
	db #00
.la263
	dw la281,la299,la2f7
	dw la534,la51f,la51f
	dw la536,la53a,la51f
	dw la570,la570,la51f
	dw la572,la572,la51f
.la281
	dw la355,la3a6,la3d1,la401
	dw la401,la41d,la3dd,la438
	dw la438,la450,la450,#0000
.la299
	dw la4b1,la4b1,la4b1,la4b1
	dw la4b1,la4b1,la4b1,la4b1
	dw la4b1,la4b1,la4cc,la4cc
	dw la4cc,la4cc,la4f0,la4b1
	dw la4b1,la4de,la4de,la4b1
	dw la4b1,la4de,la4de,la4cc
	dw la4cc,la4b1,la4b1,la4b1
	dw la4b1,la506,la4b1,la4b1
	dw la4cc,la4cc,la4b1,la4b1
	dw la4cc,la4cc,la4de,la4b1
	dw la4de,la4b1,la4de,la4b1
	dw la4de,la4b1,#0000
.la2f7
	dw la463,la463,la475,la475
	dw la463,la463,la475,la475
	dw la47f,la47f,la489,la489
	dw la493,la493,la3e9,la47f
	dw la47f,la49d,la49d,la47f
	dw la47f,la49d,la49d,la4a7
	dw la4a7,la475,la475,la47f
	dw la47f,la3f5,la475,la475
	dw la489,la489,la475,la475
	dw la489,la489,la493,la463
	dw la475,la475,la493,la463
	dw la475,la475,#0000
.la355
	db #ba,#c1,#8a,#de,#00,#31,#05,#88
	db #01,#01,#82,#eb,#80,#e0,#29,#2d
	db #30,#34,#e3,#35,#34,#34,#30,#30
	db #2d,#2d,#2b,#2b,#eb,#2d,#ec,#80
	db #e0,#2b,#30,#32,#e7,#35,#e3,#34
	db #ff,#37,#e3,#80,#eb,#80,#e0,#29
	db #2d,#30,#34,#e3,#35,#34,#34,#30
	db #30,#2d,#2d,#2b,#2b,#e7,#2d,#e1
	db #2b,#29,#e4,#28,#e5,#29,#e4,#2b
	db #e7,#24,#e3,#26,#ff,#28,#e3,#80
	db #87
.la3a6
	db #ec,#80,#e0,#2d,#30,#34,#e3,#35
	db #34,#34,#30,#30,#2d,#2d,#2b,#2b
	db #eb,#2d,#ec,#80,#e0,#29,#2e,#32
	db #e7,#34,#e3,#32,#fb,#35,#e3,#32
	db #34,#e7,#35,#37,#34,#e3,#32,#30
	db #ff,#32,#87
.la3d1
	db #e3,#80,#43,#43,#42,#3e,#3b,#ff
	db #39,#e7,#8f,#87
.la3dd
	db #e3,#80,#45,#45,#44,#40,#3d,#ff
	db #3b,#e7,#8f,#87
.la3e9
	db #e3,#0e,#40,#40,#3e,#3b,#37,#ff
	db #36,#e7,#8f,#87
.la3f5
	db #e3,#10,#42,#42,#40,#3d,#39,#ff
	db #38,#e7,#8f,#87
.la401
	db #c0,#f7,#30,#e3,#3b,#37,#39,#39
	db #80,#80,#80,#80,#2f,#30,#f7,#2f
	db #e3,#36,#32,#34,#34,#80,#80,#80
	db #34,#34,#80,#87
.la41d
	db #ef,#c1,#26,#e7,#2a,#2f,#f7,#2a
	db #e7,#23,#ef,#24,#e7,#28,#2b,#ff
	db #2b,#eb,#2d,#e3,#2f,#e7,#30,#2f
	db #ff,#2d,#87
.la438
	db #e3,#c0,#35,#34,#ef,#37,#e7,#34
	db #e3,#35,#34,#ef,#37,#e7,#34,#35
	db #e3,#34,#f5,#32,#8f,#e7,#80,#87
.la450
	db #f7,#c1,#32,#e3,#34,#35,#f7,#30
	db #e3,#2e,#2d,#eb,#30,#f5,#2b,#8f
	db #e7,#80,#87
.la463
	db #ba,#c0,#8a,#df,#00,#21,#04,#91
	db #e3,#11,#18,#1d,#18,#11,#18,#1f
	db #1d,#87
.la475
	db #e3,#0c,#13,#18,#13,#0c,#13,#1a
	db #18,#87
.la47f
	db #e3,#15,#1c,#21,#1c,#15,#1c,#24
	db #1c,#87
.la489
	db #e3,#16,#1d,#22,#1d,#16,#1d,#24
	db #22,#87
.la493
	db #e3,#13,#1a,#1f,#1a,#13,#1a,#22
	db #1f,#87
.la49d
	db #e3,#10,#17,#1c,#17,#10,#17,#1f
	db #1c,#87
.la4a7
	db #e3,#17,#12,#23,#12,#17,#12,#1a
	db #23,#87
.la4b1
	db #df,#00,#01,#10,#c0,#8b,#e3,#8d
	db #1f,#8a,#e7,#88,#01,#01,#24,#83
	db #e3,#24,#8b,#8d,#08,#8d,#0c,#8a
	db #24,#24,#87
.la4cc
	db #8b,#e3,#8d,#1f,#8a,#e7,#26,#e3
	db #26,#8b,#8d,#08,#8d,#0c,#8a,#26
	db #26,#87
.la4de
	db #8b,#e3,#8d,#1f,#8a,#e7,#2b,#e3
	db #2b,#8b,#8d,#08,#8d,#0c,#8a,#2b
	db #2b,#87
.la4f0
	db #e3,#26,#26,#26,#26,#26,#8b,#8d
	db #08,#8d,#0c,#80,#f3,#80,#e3,#8d
	db #08,#8d,#0c,#8d,#0c,#87
.la506
	db #e3,#28,#28,#28,#28,#28,#8b,#8d
	db #08,#8d,#0c,#80,#f3,#80,#e3,#8d
	db #08,#8d,#0c,#8d,#0c,#87
.la51c
	db #ff,#80,#87
.la51f
	dw la51c,#0000
.la523
	db #ba,#c0,#dc,#00,#01,#0f,#8a,#e3
	db #84,#fc,#01,#48,#84,#fc,#01,#48
	db #8e
.la536 equ $ + 2
.la534
	dw la523,la53e,#0000
.la53a
	dw la549,#0000
.la53e
	db #dd,#00,#01,#03,#8c,#c0,#bf,#ff
	db #8d,#1e,#87
.la549
	db #de,#00,#01,#01,#8a,#c0,#88,#04
	db #04,#83,#ff,#07,#87
.la556
	db #df,#00,#01,#07,#8c,#c0,#bc,#88
	db #02,#04,#82,#f3,#84,#06,#06,#43
	db #8e
.la567
	db #dc,#13,#71,#2d,#bd,#8b,#e7,#1f
	db #8e
.la572	equ $ +2
.la570
	dw la556,la567,#0000
;
.music_info
	db "Trans-Atlantic Balloon Challenge (1987)(Virgin Games)(Rob Hubbard)",0
	db "",0

	read "music_end.asm"
