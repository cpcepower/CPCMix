; Music of Magic 1-3 (1993)(TGS)()(ST-Module)
; Ripped by Megachur the 02/10/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MAGIC13.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #53d0

	read "music_header.asm"

	jr l53d4
	jr l53e3
.l53d4
	call l53ff
	ld hl,l5822
	ld de,l53ec
	ld bc,#81ff
	jp #bcd7
.l53e3
	ld hl,l5822
	call #bcdd
	jp l546b
.l53ec
	push ix
	call l5487
	pop ix
	ret
	jp l53ff
	jp l5487
	jp l546b
	db #66,#04
;
.init_music
.l53ff
;
	ld b,#03
	ld ix,l57ce
	ld iy,l56fa
	ld de,#001c
.l540c
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
	djnz l540c
	ld a,#07
	ld (l54af),a
	ld a,d
	ld (l54c3),a
	inc a
	ld (l54aa),a
	ld a,#38
	ld (l54b4),a
	ld a,#ff
	ld (l56f6),a
	ld (l56f7),a
	ld (l56f8),a
	ld (l56f9),a
	ld a,#0c
	ld c,d
	call l56d8
	ld a,#0d
	ld c,d
	jp l56d8
;
.stop_music
.l546b
;
	ld a,#07
	ld c,#3f
	call l56d8
	ld a,#08
	ld c,#00
	call l56d8
	ld a,#09
	ld c,#00
	call l56d8
	ld a,#0a
	ld c,#00
	jp l56d8
;
.play_music
.l5487
;
	ld hl,l54aa
	dec (hl)
	ld ix,l57ce
	ld bc,l57dc
	call l553d
	ld ix,l57ea
	ld bc,l57f8
	call l553d
	ld ix,l5806
	ld bc,l5814
	call l553d
.l54aa equ $ + 1
	ld a,#00
	or a
	jr nz,l54b3
.l54af equ $ + 1
	ld a,#00
	ld (l54aa),a
.l54b4 equ $ + 1
.l54b3
	ld a,#00
	ld hl,l56f7
	cp (hl)
	jr z,l54c2
	ld (hl),a
	ld c,a
	ld a,#07
	call l56d8
.l54c3 equ $ + 1
.l54c2
	ld a,#00
	ld hl,l56f6
	cp (hl)
	jr z,l54d1
	ld (hl),a
	ld c,a
	ld a,#06
	call l56d8
.l54d2 equ $ + 1
.l54d1
	ld a,#00
	ld hl,l56f8
	cp (hl)
	jr z,l54e0
	ld (hl),a
	ld c,a
	ld a,#0b
	call l56d8
.l54e1 equ $ + 1
.l54e0
	ld a,#00
	ld hl,l56f9
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l56d8
.l54ee
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l55ee
.l54fd
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
	jp l56d8
.l5517
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l552c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l552c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l5550
.l553d
	ld a,(l54aa)
	or a
	jp nz,l55ee
	dec (ix+#06)
	jp nz,l55ee
	ld l,(ix+#00)
	ld h,(ix+#01)
.l5550
	ld a,(hl)
	or a
	jr z,l54ee
	cp #fe
	jr z,l54fd
	cp #ff
	jr z,l5517
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l5700
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l558c
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l558c
	and #7f
	ld (ix+#06),a
	jr l55df
.l558c
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l55a0
	ld (ix+#05),a
	ld (ix+#0a),d
.l55a0
	add a
	add a
	add a
	ld e,a
	ld hl,l5836
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
	jr z,l55df
	cp #f0
	jp z,l5694
	cp #d0
	jp z,l56b0
	cp #b0
	jp z,l56b8
	cp #80
	jp nc,l56c0
	cp #10
	jr nz,l55df
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l55df
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l55ee
	ld a,(ix+#17)
	or a
	jr nz,l5602
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l5602
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l562d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l5700
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l562d
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
	call l56d8
	ld c,h
	ld a,(ix+#03)
	call l56d8
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l566b
	and #0f
	sub (ix+#0a)
	jr nc,l5661
	xor a
.l5661
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l56d8
.l566b
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
	jr z,l5688
	ld b,a
	ld a,c
	ld (l54c3),a
	ld a,b
	sub #40
.l5688
	ld (l568f),a
	ld a,(l54b4)
.l568f equ $ + 1
	bit 0,a
	ld (l54b4),a
	ret
.l5694
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l58b6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l55df
.l56b0
	inc hl
	ld a,(hl)
	ld (l54af),a
	jp l55df
.l56b8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l55df
.l56c0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l54e1),a
	inc hl
	ld a,(hl)
	ld (l54d2),a
	jp l55df
.l56d8
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
.l56f9 equ $ + 3
.l56f8 equ $ + 2
.l56f7 equ $ + 1
.l56f6
	db #ff,#ff,#ff,#ff
.l56fa
	dw l5a56,l5a6b,l5a80
.l5700
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
.l57ce equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l57dc equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57ea
	db #00,#00,#02,#03,#09,#00,#00,#00
.l57f8 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5806 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l5814 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5822
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l5836 equ $ + 4
	db #75,#6c,#65,#2e,#d6,#58,#16,#59
	db #36,#59,#00,#00,#d6,#58,#56,#59
	db #36,#59,#00,#00,#76,#59,#b6,#59
	db #d6,#59,#00,#00,#cf,#52,#f1,#e4
	db #40,#b1,#23,#56,#f3,#53,#e0,#52
	db #d9,#d0,#23,#4e,#d6,#58,#f6,#59
	db #36,#59,#0b,#15,#d8,#8e,#1f,#59
	db #d0,#3f,#b0,#18,#bc,#51,#70,#83
	db #d8,#28,#4d,#4f,#d6,#52,#7f,#6b
	db #45,#51,#f0,#30,#d9,#28,#d0,#52
	db #d0,#52,#00,#00,#d0,#52,#d0,#52
	db #d0,#52,#00,#00,#d0,#52,#d0,#52
	db #d0,#52,#00,#00,#d0,#52,#d0,#52
	db #d0,#52,#00,#00,#d0,#52,#d0,#52
	db #d0,#52,#00,#00,#d0,#52,#d0,#52
	db #d0,#52,#00,#00,#d0,#52,#d0,#52
.l58b6 equ $ + 4
	db #d0,#52,#00,#00,#16,#5a,#d0,#52
	db #36,#5a,#d0,#52,#d0,#52,#d0,#52
	db #d0,#52,#d0,#52,#d0,#52,#d0,#52
	db #d0,#52,#d0,#52,#d0,#52,#d0,#52
	db #d0,#52,#d0,#52,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#09,#08,#08,#08,#08,#08,#07
	db #06,#04,#03,#02,#00,#00,#30,#00
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
	db #01,#01,#01,#00,#06,#06,#06,#07
	db #07,#07,#08,#08,#08,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#f7,#00,#fb,#f7
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #f7,#00,#fb,#f7,#00,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#00,#fb,#f8,#00
	db #fb,#f8,#00,#fb,#f8,#00,#fb,#f8
	db #00,#fb,#f8,#00,#fb,#f8,#00,#fb
	db #f8,#00,#fb,#f8,#00,#fb,#f8,#00
.l5a56 equ $ + 4
	db #fb,#f8,#00,#fb,#00,#95,#5a,#00
	db #06,#5b,#00,#95,#5a,#00,#06,#5b
	db #00,#95,#5a,#00,#95,#5a,#80,#56
.l5a6b equ $ + 1
	db #5a,#00,#77,#5b,#00,#9f,#5b,#00
	db #77,#5b,#00,#9f,#5b,#00,#cf,#5b
.l5a80 equ $ + 6
	db #00,#cf,#5b,#80,#6b,#5a,#00,#ff
	db #5b,#00,#4c,#5c,#00,#ff,#5b,#00
	db #4c,#5c,#00,#ff,#5b,#00,#ff,#5b
	db #80,#80,#5a,#37,#02,#15,#43,#02
	db #f5,#00,#37,#02,#15,#43,#02,#f5
	db #00,#37,#02,#15,#43,#02,#f5,#00
	db #37,#02,#15,#43,#02,#f5,#00,#37
	db #02,#15,#43,#02,#f5,#00,#37,#02
	db #15,#43,#02,#f5,#00,#37,#02,#15
	db #43,#02,#f5,#00,#37,#02,#15,#43
	db #02,#f5,#00,#33,#02,#15,#3f,#02
	db #f5,#02,#33,#02,#15,#3f,#02,#f5
	db #02,#33,#02,#15,#3f,#02,#f5,#02
	db #33,#02,#15,#3f,#02,#f5,#02,#35
	db #02,#15,#41,#02,#f5,#02,#35,#02
	db #15,#41,#02,#f5,#02,#35,#02,#15
	db #41,#02,#f5,#02,#35,#02,#15,#41
	db #02,#f5,#02,#ff,#37,#02,#15,#43
	db #02,#f5,#00,#37,#02,#15,#43,#02
	db #f5,#00,#37,#02,#15,#43,#02,#f5
	db #00,#37,#02,#15,#43,#02,#f5,#00
	db #37,#02,#15,#43,#02,#f5,#00,#37
	db #02,#15,#43,#02,#f5,#00,#37,#02
	db #15,#43,#02,#f5,#00,#37,#02,#15
	db #43,#02,#f5,#00,#33,#02,#15,#3f
	db #02,#f5,#02,#33,#02,#15,#3f,#02
	db #f5,#02,#33,#02,#15,#3f,#02,#f5
	db #02,#33,#02,#15,#3f,#02,#f5,#02
	db #35,#02,#15,#41,#02,#f5,#02,#35
	db #02,#15,#41,#02,#f5,#02,#35,#02
	db #15,#41,#02,#f5,#02,#35,#02,#15
	db #41,#02,#f5,#02,#ff,#43,#02,#01
	db #41,#82,#3e,#82,#3a,#82,#3c,#82
	db #be,#01,#37,#8b,#b7,#01,#b5,#01
	db #37,#82,#37,#82,#37,#82,#3a,#88
	db #b7,#01,#b5,#01,#37,#82,#37,#82
	db #37,#82,#30,#92,#ff,#43,#02,#01
	db #41,#82,#3e,#82,#3a,#82,#3c,#82
	db #be,#01,#37,#8b,#b7,#01,#b5,#01
	db #37,#82,#37,#82,#37,#82,#3a,#88
	db #b7,#01,#b5,#01,#37,#82,#37,#82
	db #37,#82,#30,#88,#b2,#01,#b0,#01
	db #b2,#01,#35,#87,#ff,#3e,#04,#01
	db #3e,#84,#3e,#83,#3f,#83,#3e,#88
	db #b7,#01,#b5,#01,#37,#82,#37,#82
	db #37,#82,#3a,#88,#b7,#01,#b5,#01
	db #37,#82,#37,#82,#37,#82,#3c,#84
	db #3a,#84,#37,#82,#35,#82,#37,#82
	db #3a,#82,#39,#82,#ff,#2b,#04,#00
	db #3a,#02,#02,#29,#02,#00,#2b,#84
	db #3a,#03,#02,#a9,#00,#ab,#00,#2b
	db #82,#ab,#00,#3a,#02,#02,#29,#02
	db #00,#2b,#84,#ba,#02,#ad,#00,#2e
	db #82,#27,#84,#3a,#02,#02,#26,#02
	db #00,#27,#84,#3a,#02,#02,#a4,#00
	db #a7,#00,#29,#82,#29,#82,#3a,#02
	db #02,#a9,#00,#ab,#00,#24,#82,#a4
	db #00,#a6,#00,#ba,#02,#ab,#00,#2d
	db #82,#ff,#2b,#04,#00,#3a,#02,#02
	db #29,#02,#00,#2b,#84,#3a,#03,#02
	db #a9,#00,#ab,#00,#2b,#82,#ab,#00
	db #3a,#02,#02,#29,#02,#00,#2b,#84
	db #ba,#02,#ad,#00,#2e,#82,#27,#84
	db #3a,#02,#02,#26,#02,#00,#27,#84
	db #3a,#02,#02,#a4,#00,#a7,#00,#29
	db #82,#29,#82,#3a,#02,#02,#a9,#00
	db #ab,#00,#24,#82,#a4,#00,#a6,#00
	db #ba,#02,#ab,#00,#2d,#82,#ff
;
.music_info
	db "Magic 1-3 (1993)(TGS)()",0
	db "ST-Module",0

	read "music_end.asm"
