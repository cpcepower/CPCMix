; Music of X-treme Issue 1 - Intro (1993)(Symbiosis)(Kangaroo)(ST-Module)
; Ripped by Megachur the 27/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XTREMI1I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4b00

	read "music_header.asm"

	jp l4b0b
	jp l4b93
	jp l4b77
	db #66,#04
;
.init_music
.l4b0b
;
	ld b,#03
	ld ix,l4eda
	ld iy,l4e06
	ld de,#001c
.l4b18
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
	djnz l4b18
	ld a,#06
	ld (l4bbb),a
	ld a,d
	ld (l4bcf),a
	inc a
	ld (l4bb6),a
	ld a,#38
	ld (l4bc0),a
	ld a,#ff
	ld (l4e02),a
	ld (l4e03),a
	ld (l4e04),a
	ld (l4e05),a
	ld a,#0c
	ld c,d
	call l4de4
	ld a,#0d
	ld c,d
	jp l4de4
;
.stop_music
.l4b77
;
	ld a,#07
	ld c,#3f
	call l4de4
	ld a,#08
	ld c,#00
	call l4de4
	ld a,#09
	ld c,#00
	call l4de4
	ld a,#0a
	ld c,#00
	jp l4de4
;
.play_music
.l4b93
;
	ld hl,l4bb6
	dec (hl)
	ld ix,l4eda
	ld bc,l4ee8
	call l4c49
	ld ix,l4ef6
	ld bc,l4f04
	call l4c49
	ld ix,l4f12
	ld bc,l4f20
	call l4c49
.l4bb6 equ $ + 1
	ld a,#01
	or a
	jr nz,l4bbf
.l4bbb equ $ + 1
	ld a,#06
	ld (l4bb6),a
.l4bc0 equ $ + 1
.l4bbf
	ld a,#38
	ld hl,l4e03
	cp (hl)
	jr z,l4bce
	ld (hl),a
	ld c,a
	ld a,#07
	call l4de4
.l4bcf equ $ + 1
.l4bce
	ld a,#00
	ld hl,l4e02
	cp (hl)
	jr z,l4bdd
	ld (hl),a
	ld c,a
	ld a,#06
	call l4de4
.l4bde equ $ + 1
.l4bdd
	ld a,#00
	ld hl,l4e04
	cp (hl)
	jr z,l4bec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l4de4
.l4bed equ $ + 1
.l4bec
	ld a,#00
	ld hl,l4e05
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l4de4
.l4bfa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l4cfa
.l4c09
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
	jp l4de4
.l4c23
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l4c38
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l4c38
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l4c5c
.l4c49
	ld a,(l4bb6)
	or a
	jp nz,l4cfa
	dec (ix+#06)
	jp nz,l4cfa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l4c5c
	ld a,(hl)
	or a
	jr z,l4bfa
	cp #fe
	jr z,l4c09
	cp #ff
	jr z,l4c23
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l4e0c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l4c98
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l4c98
	and #7f
	ld (ix+#06),a
	jr l4ceb
.l4c98
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l4cac
	ld (ix+#05),a
	ld (ix+#0a),d
.l4cac
	add a
	add a
	add a
	ld e,a
	ld hl,l4f42
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
	jr z,l4ceb
	cp #f0
	jp z,l4da0
	cp #d0
	jp z,l4dbc
	cp #b0
	jp z,l4dc4
	cp #80
	jp nc,l4dcc
	cp #10
	jr nz,l4ceb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l4ceb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l4cfa
	ld a,(ix+#17)
	or a
	jr nz,l4d0e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l4d0e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l4d39
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l4e0c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l4d39
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
	call l4de4
	ld c,h
	ld a,(ix+#03)
	call l4de4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4d77
	and #0f
	sub (ix+#0a)
	jr nc,l4d6d
	xor a
.l4d6d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l4de4
.l4d77
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
	jr z,l4d94
	ld b,a
	ld a,c
	ld (l4bcf),a
	ld a,b
	sub #40
.l4d94
	ld (l4d9b),a
	ld a,(l4bc0)
.l4d9b equ $ + 1
	set 5,a
	ld (l4bc0),a
	ret
.l4da0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l4fc2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l4ceb
.l4dbc
	inc hl
	ld a,(hl)
	ld (l4bbb),a
	jp l4ceb
.l4dc4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l4ceb
.l4dcc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l4bed),a
	inc hl
	ld a,(hl)
	ld (l4bde),a
	jp l4ceb
.l4de4
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
.l4e05 equ $ + 3
.l4e04 equ $ + 2
.l4e03 equ $ + 1
.l4e02
	db #ff,#ff,#ff,#ff
.l4e06
	dw l51a2,l51c0,l51de
.l4e0c
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
.l4eda equ $ + 4
	db #00,#00,#00,#00,#fc,#51,#00,#01
	db #08,#10,#01,#20,#00,#00,#00,#df
.l4ee8 equ $ + 2
	db #a5,#51,#e2,#4f,#22,#50,#42,#50
	db #00,#00,#01,#1f,#5a,#02,#00,#00
.l4ef6
	db #81,#52,#02,#03,#09,#10,#01,#33
.l4f04 equ $ + 6
	db #00,#00,#00,#e7,#c3,#51,#e2,#4f
	db #62,#50,#42,#50,#00,#00,#1f,#01
.l4f12 equ $ + 4
	db #c9,#00,#00,#00,#58,#54,#04,#05
	db #0a,#10,#01,#42,#00,#00,#00,#ef
.l4f20 equ $ + 2
	db #e1,#51,#e2,#4f,#02,#51,#42,#50
	db #0b,#15,#13,#0d,#54,#00,#62,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l4f42 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#4f,#22,#50
	db #42,#50,#00,#00,#e2,#4f,#62,#50
	db #42,#50,#00,#00,#82,#50,#c2,#50
	db #e2,#50,#00,#00,#db,#49,#fd,#db
	db #4c,#a8,#23,#56,#ff,#4a,#ec,#49
	db #e5,#c7,#23,#4e,#e2,#4f,#02,#51
	db #42,#50,#0b,#15,#e4,#85,#2b,#50
	db #dc,#36,#b0,#18,#c8,#48,#7c,#7a
	db #e4,#1f,#4d,#4f,#e2,#49,#8b,#62
	db #51,#48,#f0,#30,#e2,#4f,#22,#51
	db #42,#50,#00,#00,#94,#c7,#b8,#88
	db #94,#c7,#b8,#7d,#b8,#88,#dc,#49
	db #1e,#90,#62,#46,#5e,#90,#b8,#88
	db #b8,#88,#dc,#3e,#b8,#88,#b8,#88
	db #b8,#88,#dc,#3e,#b8,#88,#b8,#88
	db #b8,#88,#dc,#3e,#b8,#88,#b8,#88
.l4fc2 equ $ + 4
	db #dc,#49,#00,#00,#42,#51,#62,#51
	db #82,#51,#dc,#49,#dc,#49,#dc,#49
	db #dc,#49,#dc,#49,#dc,#49,#dc,#49
	db #dc,#49,#dc,#49,#dc,#49,#dc,#49
	db #dc,#49,#dc,#49,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0b,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#09,#07
	db #05,#03,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#08,#08,#08
	db #08,#08,#07,#07,#07,#07,#07,#06
	db #05,#03,#02,#01,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #03,#02,#01,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#05,#05,#05,#06
	db #06,#06,#07,#07,#07,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#0d,#0f,#0d,#0b
	db #09,#07,#05,#03,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#fc,#f9,#00
	db #fc,#f9,#00,#fc,#f9,#00,#fc,#f9
	db #00,#fc,#f9,#00,#fc,#f9,#00,#fc
	db #f9,#00,#fc,#f9,#00,#fc,#f9,#00
	db #fc,#f9,#00,#fc,#00,#fd,#f9,#00
	db #fd,#f9,#00,#fd,#f9,#00,#fd,#f9
	db #00,#fd,#f9,#00,#fd,#f9,#00,#fd
	db #f9,#00,#fd,#f9,#00,#fd,#f9,#00
	db #fd,#f9,#00,#fd,#00,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#f7,#00,#fb,#f7
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #f7,#00,#fb,#f7,#00,#fb,#f7,#00
.l51a2 equ $ + 4
	db #fb,#f7,#00,#fb,#00,#fc,#51,#00
	db #ff,#51,#00,#40,#52,#00,#40,#52
	db #00,#ff,#51,#00,#ff,#51,#00,#ff
	db #51,#00,#ff,#51,#00,#ff,#51,#80
.l51c0 equ $ + 2
	db #a8,#51,#00,#81,#52,#00,#8f,#52
	db #00,#9d,#52,#00,#9d,#52,#00,#38
	db #53,#00,#38,#53,#00,#c9,#53,#00
	db #c9,#53,#00,#38,#53,#80,#c6,#51
.l51de
	db #00,#58,#54,#00,#67,#54,#00,#58
	db #54,#00,#58,#54,#00,#58,#54,#00
	db #58,#54,#00,#58,#54,#00,#58,#54
	db #00,#58,#54,#80,#e4,#51,#00,#40
	db #ff,#25,#03,#00,#a5,#00,#3a,#02
	db #02,#25,#04,#00,#25,#82,#3a,#04
	db #02,#28,#03,#00,#a8,#00,#3a,#02
	db #02,#28,#04,#00,#28,#82,#3a,#04
	db #02,#2a,#03,#00,#aa,#00,#3a,#02
	db #02,#2a,#04,#00,#2a,#82,#3a,#04
	db #02,#25,#03,#00,#a5,#00,#3a,#02
	db #02,#25,#04,#00,#25,#82,#3a,#04
	db #02,#ff,#25,#03,#00,#a5,#00,#3a
	db #02,#02,#25,#04,#00,#25,#82,#3a
	db #04,#02,#28,#03,#00,#a8,#00,#3a
	db #02,#02,#28,#04,#00,#28,#82,#3a
	db #04,#02,#2a,#03,#00,#aa,#00,#3a
	db #02,#02,#2a,#04,#00,#2a,#82,#3a
	db #04,#02,#25,#03,#00,#a5,#00,#3a
	db #02,#02,#25,#04,#00,#25,#82,#3a
	db #04,#02,#ff,#00,#10,#49,#04,#01
	db #47,#84,#44,#82,#42,#84,#3d,#a2
	db #ff,#00,#10,#49,#04,#01,#47,#84
	db #44,#82,#42,#84,#3d,#a2,#ff,#bb
	db #b1,#00,#bd,#b1,#00,#c0,#b1,#05
	db #bb,#b1,#00,#3d,#82,#bb,#b1,#00
	db #40,#82,#bb,#b1,#03,#3d,#02,#b1
	db #00,#bb,#b1,#05,#bd,#b1,#03,#3d
	db #02,#b1,#00,#c0,#b1,#00,#3d,#02
	db #b1,#03,#c2,#b1,#00,#3d,#02,#b1
	db #05,#44,#02,#b1,#00,#c0,#b1,#00
	db #44,#02,#b1,#03,#c0,#b1,#03,#44
	db #02,#b1,#05,#40,#02,#b1,#00,#c2
	db #b1,#00,#40,#02,#b1,#03,#c5,#b1
	db #00,#40,#02,#b1,#05,#44,#02,#b1
	db #00,#c2,#b1,#00,#c4,#b1,#03,#c2
	db #b1,#00,#c2,#b1,#03,#c4,#b1,#00
	db #c2,#b1,#03,#c5,#b1,#00,#c4,#b1
	db #03,#bd,#b1,#00,#c5,#b1,#03,#c4
	db #b1,#05,#bd,#b1,#00,#45,#02,#b1
	db #05,#3b,#02,#b1,#00,#bd,#b1,#00
	db #3b,#02,#b1,#03,#bd,#b1,#03,#40
	db #02,#b1,#00,#bd,#b1,#05,#c0,#b1
	db #03,#ff,#c9,#b1,#00,#bd,#b1,#03
	db #c2,#b1,#05,#c9,#b1,#03,#47,#02
	db #b1,#00,#c9,#b1,#05,#c7,#b1,#03
	db #44,#02,#b1,#00,#c2,#b1,#00,#44
	db #02,#b1,#03,#c2,#b1,#03,#3d,#02
	db #b1,#00,#c2,#b1,#05,#3d,#03,#b1
	db #03,#3d,#03,#b1,#05,#3d,#03,#b1
	db #06,#bd,#b1,#00,#c2,#b1,#00,#c4
	db #b1,#00,#c0,#b1,#00,#c2,#b1,#00
	db #c4,#b1,#00,#c9,#b1,#00,#c2,#b1
	db #03,#c4,#b1,#03,#c9,#b1,#03,#c7
	db #b1,#00,#c4,#b1,#05,#c9,#b1,#05
	db #c7,#b1,#03,#44,#02,#b1,#00,#c0
	db #b1,#00,#44,#02,#b1,#03,#c0,#b1
	db #03,#3d,#02,#b1,#00,#c0,#b1,#05
	db #3d,#03,#b1,#03,#3d,#03,#b1,#05
	db #3d,#03,#b1,#06,#3d,#82,#c2,#b1
	db #00,#c4,#b1,#00,#bd,#b1,#00,#c2
	db #b1,#03,#ff,#bb,#b9,#00,#bd,#b9
	db #00,#bb,#b9,#03,#bb,#b9,#00,#bd
	db #b9,#00,#bb,#b9,#05,#bb,#b9,#00
	db #40,#82,#bb,#b9,#03,#3d,#02,#b9
	db #00,#bb,#b9,#00,#3d,#82,#bb,#b9
	db #03,#40,#02,#b9,#00,#bb,#b9,#05
	db #42,#03,#b9,#00,#44,#83,#c4,#b9
	db #03,#c2,#b9,#00,#c0,#b9,#00,#bd
	db #b9,#00,#c2,#b9,#03,#c0,#b9,#00
	db #bd,#b9,#03,#c2,#b9,#00,#c0,#b9
	db #03,#bd,#b9,#05,#c2,#b9,#00,#40
	db #02,#b9,#05,#c0,#b9,#00,#42,#82
	db #c0,#b9,#03,#44,#02,#b9,#00,#c2
	db #b9,#00,#c4,#b9,#03,#c0,#b9,#00
	db #c2,#b9,#03,#c9,#b9,#00,#c0,#b9
	db #03,#c2,#b9,#05,#c4,#b9,#00,#40
	db #02,#b9,#05,#42,#03,#b9,#00,#44
	db #83,#40,#82,#c2,#b9,#00,#c0,#b9
	db #03,#ff,#50,#10,#f5,#00,#53,#10
	db #f5,#01,#4c,#90,#49,#10,#f5,#02
	db #ff,#50,#10,#f5,#00,#53,#10,#f5
	db #01,#4c,#90,#49,#10,#f5,#02,#ff
;
.music_info
	db "X-treme Issue 1 - Intro (1993)(Symbiosis)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
