; Music of Bmx Simulator 2 (1989)(Codemasters)(The Oliver Twins)()
; Ripped by Megachur the 20/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BMXSIMU2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #5f62
FIRST_THEME				equ 0
LAST_THEME				equ 6

	read "music_header.asm"

	jp l5f70	; init
	jp l602f	; play
.l5f68
	jp l6111	; stop
	jp l65bf
.l5f6f equ $ + 1
.l5f6e
.music_end
	db #01,#00
;
.init_music
.l5f70
;
	ld hl,l5f6e
	ld (hl),#00
	inc hl
	ld (hl),#00
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l678b
	add hl,bc
	ld a,(hl)
	ld (l605b),a
	inc hl
	ld ix,l5fcb
	ld c,#21
	ld a,#03
.l5f91
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
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
	jr nz,l5f91
	ld (l6315),a
	inc a
	ld (l602e),a
	ld (l5f6e),a
	ret
.l5fcb
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.l5fec
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.l600d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
.l602e
	db #04
;
.play_music
.l602f
;
	call l6610
	ld a,(l5f6e)
	and a
	jp z,l608b
.l603a equ $ + 1
	ld a,#2f
	ld (l6087),a
	ld hl,l602e
	dec (hl)
	jr nz,l605f
	ld b,(hl)
	ld ix,l5fcb
	call l6222
	ld ix,l5fec
	call l6222
	ld ix,l600d
	call l6222
.l605b equ $ + 1
	ld a,#06
	ld (l602e),a
.l605f
	ld ix,l5fcb
	call l62e2
	ld (l63f3),hl
	ld (l63fb),a
	ld ix,l5fec
	call l62e2
	ld (l63f5),hl
	ld (l63fc),a
	ld ix,l600d
	call l62e2
	ld (l63f7),hl
	ld (l63fd),a
.l6087 equ $ + 1
	ld a,#27
	ld (l63f9),a
.l608b
	ld a,(l5f6f)
	and a
	jr z,l60bb
	ld hl,(l6400)
	ld (l63f3),hl
	ld hl,(l6404)
	ld (l63f7),hl
	ld a,(l6406)
	ld (l63f9),a
	ld a,(l63fa)
.l60a6
	or #2d
	ld hl,l6407
	and (hl)
	ld (l63fa),a
	ld a,(l6408)
	ld (l63fb),a
	ld a,(l640a)
	ld (l63fd),a
.l60bb
	ld a,(l5f6e)
	ld hl,l5f6f
	or (hl)
	ret z
	ld hl,l63fe
	ld d,#0b
.l60c8
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
	jp p,l60c8
	ret
.l60e9
	ld de,#0b00
.l60ec
	call l60f6
	dec d
	jp p,l60ec
	ld de,#073f
.l60f6
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
;
.stop_music
.l6111
;
	xor a
	ld (l5f6e),a
	ld (l5f6f),a
	call l60e9
	xor a
	ld (l63fb),a
	ld (l63fc),a
	ld (l63fd),a
	ret
	db #e2
	db #ca
	db #ce
	db #d3
	db #91
	db #c0
	db #bb
	db #28
	db #aa
	db #a2
	db #67
	db #51
	db #79
	db #cf
	db #1d
	db #dc
	pop hl
	and #01
	ld a,(de)
	ld (ix+#03),a
	ld l,a
	inc de
	ld a,(de)
	ld (ix+#04),a
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	jp l6230
	pop hl
	jp l5f68
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
	jr nz,l6177
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l6177
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l6230
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,l63be
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l6230
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,l63be
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l6230
	ld hl,l63be
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l6230
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l6230
	ld a,(de)
	inc de
	ld (l6315),a
	jr l6230
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l6230
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l6230
	ld (ix+#1d),b
	jr l6230
	ld (ix+#1d),#40
	jr l6230
	ld (ix+#1d),#c0
	jr l6230
	set 1,(ix+#00)
	jr l6230
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l625f
	set 5,(ix+#00)
	jr l625f
	ld (ix+#1f),#ff
	jr l6230
	ld (ix+#1f),b
	jr l6230
.l6222
	dec (ix+#10)
	jr nz,l627c
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l6230
	ld a,(de)
	inc de
	and a
	jp m,l628d
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l6242
	ld (l603a),a
.l6242
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
	set 5,(ix+#00)
.l625f
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l627b
	ld a,(l5f6f)
	and a
	jr nz,l627b
	ld (ix+#1f),#ff
.l627b
	ret
.l627c
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l6289
	inc (ix+#12)
	ret
.l6289
	dec (ix+#12)
	ret
.l628d
	cp #b8
	jr c,l62da
	add #20
	jr c,l62bb
	add #10
	jr c,l62c2
	add #10
	jr nc,l62b3
	ld c,a
	ld hl,l64cc
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l6230
.l62b3
	add #09
	ld (l605b),a
	jp l6230
.l62bb
	inc a
	ld (ix+#11),a
	jp l6230
.l62c2
	ld hl,l64e9
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp l6230
.l62da
	ld hl,l60a6
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l62e2
	ld c,(ix+#00)
	bit 5,c
	jr z,l6314
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l630e
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l630e
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l630e
	ld a,(ix+#18)
	ld (ix+#13),a
.l6315 equ $ + 1
.l6314
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l632e
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l632e
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l640c
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l638f
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l6358
	bit 0,c
	jr nz,l6376
.l6358
	bit 5,l
	jr nz,l6368
	sub (ix+#1b)
	jr nc,l6373
	set 5,(ix+#1d)
	sub a
	jr l6373
.l6368
	add (ix+#1b)
	cp b
	jr c,l6373
	res 5,(ix+#1d)
	ld a,b
.l6373
	ld (ix+#1c),a
.l6376
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l6381
	dec d
.l6381
	add #a0
	jr c,l638d
.l6385
	sla e
	rl d
	add #18
	jr nc,l6385
.l638d
	add hl,de
	ex de,hl
.l638f
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l63ba
	ld b,(ix+#0e)
	djnz l63b7
	ld c,(ix+#0d)
	bit 7,c
	jr z,l63a6
	dec b
.l63a6
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l63ba
.l63b7
	ld (ix+#0e),b
.l63ba
	cpl
	and #03
.l63be equ $ + 1
	ld a,#2a
	jr nz,l63cb
	ld a,(l603a)
	xor #08
	ld (l6087),a
	ld a,#07
.l63cb
	ld hl,l63fa
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l63ee
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#20)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l6087),a
.l63ee
	ex de,hl
	ld a,(ix+#13)
	ret
.l63fa equ $ + 7
.l63f9 equ $ + 6
.l63f7 equ $ + 4
.l63f5 equ $ + 2
.l63f3
	db #db,#01,#8c,#01,#5e,#00,#27,#2a
.l6401 equ $ + 6
.l6400 equ $ + 5
.l63fe equ $ + 3
.l63fd equ $ + 2
.l63fc equ $ + 1
.l63fb
	db #0f,#0b,#0f,#00,#00,#00,#00,#00
.l640a equ $ + 7
.l6408 equ $ + 5
.l6407 equ $ + 4
.l6406 equ $ + 3
.l6404 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l640c
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
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.l64cc
	db #07,#07,#09,#0b,#0d,#10,#13,#80
	db #00,#04,#87,#07,#0c,#90,#04,#07
	db #8c,#00,#04,#07,#8c,#07,#0c,#10
	db #93,#04,#07,#0c,#90
.l64e9
	dw l6502,l6507,l650e,l6520
	dw l654a,l654e,l6578,l6580
	dw l6593,l6598,l65a4,l65b4
.l6507 equ $ + 6
.l6502 equ $ + 1
	db #01,#0d,#0a,#05,#87,#03,#0f,#0f
.l650e equ $ + 5
	db #0e,#0d,#0c,#87,#01,#0f,#0e,#0c
	db #0b,#0d,#0c,#0a,#09,#0b,#0a,#08
.l6520 equ $ + 7
	db #07,#09,#08,#06,#05,#87,#01,#0f
	db #0e,#0d,#0c,#0b,#0d,#0c,#0b,#0a
	db #09,#0b,#0a,#09,#08,#07,#09,#08
	db #07,#06,#05,#07,#06,#05,#04,#03
	db #05,#04,#03,#02,#01,#04,#03,#02
	db #01,#03,#02,#01,#02,#01,#00,#87
.l654e equ $ + 5
.l654a equ $ + 1
	db #0a,#0f,#0e,#87,#02,#0f,#0e,#0d
	db #0c,#0b,#0d,#0c,#0b,#0a,#09,#0b
	db #0a,#09,#08,#07,#09,#08,#07,#06
	db #05,#07,#06,#05,#04,#03,#05,#04
	db #03,#02,#01,#04,#03,#02,#01,#03
.l6578 equ $ + 7
	db #02,#01,#02,#01,#00,#87,#01,#0f
.l6580 equ $ + 7
	db #0f,#0e,#0b,#05,#03,#87,#06,#09
	db #09,#09,#0a,#0a,#0a,#0b,#0b,#0b
	db #0c,#0c,#0d,#0d,#0e,#0f,#0e,#0d
.l6598 equ $ + 7
.l6593 equ $ + 2
	db #87,#01,#0f,#0e,#01,#87,#01,#0d
	db #0c,#0b,#0a,#09,#08,#0a,#09,#08
.l65a4 equ $ + 3
	db #07,#87,#01,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l65b4 equ $ + 3
	db #01,#87,#01,#0f,#0e,#0d,#0c,#0b
	db #09,#07,#05,#03,#01,#87
.l65bf
	ld hl,l5f6f
	ld (hl),#00
	ld hl,l66ae
	add a
	add l
	ld l,a
	jr nc,l65cd
	inc h
.l65cd
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l6759
.l65d5
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l65d5
	ld a,(l675a)
	ld (l676a),a
	ld hl,(l675b)
	ld (l6400),hl
	ld de,(l675d)
	ld (l6404),de
	ld a,l
	ld (l6406),a
	ld a,(l6760)
	ld (l6407),a
	ld a,(l675f)
	ld e,a
	ld d,#0c
	call l60f6
	ld a,(l6769)
	ld e,a
	ld d,#0d
	call l60f6
	ld hl,l5f6f
	inc (hl)
	ret
.l6610
	call l676c
	ld a,(l5f6f)
	and a
	ret z
	ld a,(l6759)
	and a
	jr nz,l6624
	ld (l5f6f),a
	jp l60e9
.l6624
	dec a
	ld (l6759),a
	ld a,(l676a)
	and a
	jr nz,l665d
	ld a,(l6767)
	and a
	ret z
	dec a
	ld (l6767),a
	ld a,(l675a)
	ld (l676a),a
	ld a,(l6768)
	and a
	jr z,l6646
	ld a,(l6787)
.l6646
	ld b,a
	ld a,(l675b)
	add b
	ld (l6400),a
	ld a,(l675c)
	add b
	and #0f
	ld (l6401),a
	ld hl,(l675d)
	ld (l6404),hl
.l665d
	ld hl,l676a
	dec (hl)
	ld a,(l6765)
	and a
	jr z,l6684
	jp p,l6677
	ld hl,(l6400)
	ld de,(l6761)
	add hl,de
	ld (l6400),hl
	jr l6684
.l6677
	ld hl,(l6400)
	ld de,(l6761)
	and a
	sbc hl,de
	ld (l6400),hl
.l6684
	ld a,(l6766)
	and a
	jr z,l66a7
	jp p,l669a
	ld hl,(l6404)
	ld de,(l6763)
	add hl,de
	ld (l6404),hl
	jr l66a7
.l669a
	ld hl,(l6404)
	ld de,(l6763)
	and a
	sbc hl,de
	ld (l6404),hl
.l66a7
	ld a,(l6400)
	ld (l6406),a
	ret
.l66ae
	dw l66c0,l66d1,l66e2,l66f3
	dw l6704,l6715,l6726,l6737
	dw l6748
.l66c0
	db #03,#63
	db #a8,#01,#90,#01,#0c,#fa,#10,#00
.l66d1 equ $ + 7
	db #10,#00,#ff,#ff,#06,#00,#00,#05
	db #02,#16,#00,#15,#00,#02,#fa,#02
	db #00,#02,#00,#01,#01,#02,#00,#00
.l66e2
	db #32,#03,#20,#03,#28,#03,#23,#fa
	db #01,#00,#01,#00,#01,#01,#ff,#00
.l66f3 equ $ + 1
	db #00,#32,#03,#a2,#02,#a8,#02,#23
	db #fa,#01,#00,#01,#00,#01,#01,#ff
.l6704 equ $ + 2
	db #00,#00,#32,#03,#f8,#01,#fc,#01
	db #23,#fa,#01,#00,#01,#00,#01,#01
.l6715 equ $ + 3
	db #ff,#00,#00,#64,#03,#51,#01,#54
	db #01,#32,#fa,#01,#00,#01,#00,#01
.l6726 equ $ + 4
	db #01,#ff,#00,#00,#14,#15,#80,#00
	db #a8,#00,#0f,#f2,#99,#00,#9b,#00
.l6737 equ $ + 5
	db #ff,#ff,#00,#00,#00,#0a,#06,#00
	db #04,#10,#04,#05,#f2,#98,#00,#98
.l6748 equ $ + 6
	db #00,#ff,#ff,#05,#00,#00,#0a,#04
	db #a0,#01,#00,#03,#0a,#fa,#20,#00
	db #18,#00,#ff,#ff,#3c
.l675d equ $ + 6
.l675c equ $ + 5
.l675b equ $ + 4
.l675a equ $ + 3
.l6759 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6766 equ $ + 7
.l6765 equ $ + 6
.l6763 equ $ + 4
.l6761 equ $ + 2
.l6760 equ $ + 1
.l675f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l676a equ $ + 3
.l6769 equ $ + 2
.l6768 equ $ + 1
.l6767
	db #00,#00,#00,#00,#00
.l676c
	ld a,(l6787)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l678a
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l678a equ $ + 3
.l6787
	db #21,#d4,#c7,#6e
.l678b
	db #06
	dw l67bc,l67f0,l683a
	db #06
	dw l6a04,l6a06,l6a08
	db #07
	dw l6a50,l6a52,l6a54
	db #06
	dw l6a9b,l6a9d,l6a9f
	db #06
	dw l6ad2,l6ad6,l6ad8
	db #06
	dw l6ada,l6ade,l6ae0
	db #06
	dw l6ae2,l6ae6,l6ae8
.l67bc
	dw l6856,l6856,l6856,l6880
	dw l68a8,l68a8,l68a8,l68a8
	dw l68db,l68db,l68db,l68db
	dw l68a8,l68a8,l68a8,l68a8
	dw l68a8,l68a8,l68a8,l68a8
	dw l68a8,l68a8,l68a8,l68a8
	dw l6aea,#0000
.l67f0
	dw l6923,l6923,l6923,l694d
	dw l6856,l6856,l6856,l6880
	dw l6856,l6856,l6856,l6880
	dw l6856,l6856,l6856,l6880
	dw l6856,l6856,l6856,l6880
	dw l6856,l6856,l6856,l6880
	dw l6856,l6856,l6856,l6880
	dw l6856,l6856,l6856,l6880
	dw l6880,l6880,l6880,l6880
	dw #0000
.l683a
	dw l697a,l68c0,l68c0,l68c0
	dw l68c0,l6989,l697a,l69c4
	dw l69ef,l68c0,l68c0,l68c0
	dw l68c0,#0000
.l6856
	db #90,#c0,#d1,#e2,#8a,#84,#1e,#01
	db #24,#e0,#84,#1e,#01,#24,#d3,#e3
	db #8b,#84,#1e,#01,#8d,#2b,#d1,#e1
	db #8a,#84,#1e,#01,#24,#84,#1e,#01
	db #24,#d3,#e3,#8b,#84,#1e,#01,#8d
	db #2f,#87
.l6880
	db #d4,#e2,#8a,#84,#1e,#01,#24,#e0
	db #84,#1e,#01,#24,#d3,#e1,#8c,#84
	db #1e,#01,#8d,#2b,#d4,#8a,#84,#1e
	db #01,#24,#84,#1e,#01,#24,#db,#e1
	db #8b,#3f,#e0,#3f,#3f,#3f,#3f,#87
.l68a8
	db #88,#01,#01,#82,#8a,#d6,#e0,#0c
	db #0c,#0c,#0c,#0f,#0f,#0a,#0a,#0c
	db #0c,#0c,#0c,#07,#07,#0a,#0a,#87
.l68c0
	db #90,#8a,#c0,#d6,#e0,#88,#01,#01
	db #82,#18,#18,#18,#18,#1b,#1b,#16
	db #16,#18,#18,#18,#18,#13,#13,#16
	db #16,#91,#87
.l68db
	db #88,#01,#01,#82,#8a,#d6,#e0,#0c
	db #18,#18,#0c,#18,#18,#0c,#18,#0c
	db #18,#18,#0c,#18,#18,#0c,#18,#0c
	db #18,#18,#0c,#18,#18,#0c,#18,#0c
	db #18,#18,#0c,#18,#18,#0c,#18,#0f
	db #1b,#1b,#0f,#1b,#1b,#0f,#1b,#11
	db #1d,#1d,#11,#1d,#1d,#11,#1d,#0c
	db #18,#18,#0c,#18,#18,#0c,#18,#0c
	db #18,#18,#0c,#18,#18,#0c,#18,#87
.l6923
	db #90,#c0,#d1,#e2,#8a,#84,#1e,#01
	db #18,#e0,#84,#1e,#01,#18,#d3,#e3
	db #8c,#84,#1e,#01,#8d,#1f,#d1,#e1
	db #8a,#84,#1e,#01,#18,#84,#1e,#01
	db #18,#d3,#e3,#8c,#84,#1e,#01,#8d
	db #23,#87
.l694d
	db #d4,#e2,#8a,#84,#1e,#01,#18,#e0
	db #84,#1e,#01,#18,#d3,#e1,#8c,#84
	db #1e,#01,#8d,#1f,#d4,#8a,#84,#1e
	db #01,#18,#84,#1e,#01,#18,#db,#e1
	db #8b,#8d,#3f,#e0,#8d,#3f,#8d,#3f
	db #8d,#3f,#8d,#3f,#87
.l697a
	db #8a,#81,#d1,#ff,#c4,#30,#e7,#c5
	db #27,#c6,#29,#ef,#c5,#24,#87
.l6989
	db #8a,#c0,#88,#01,#02,#82,#d4,#e7
	db #37,#e3,#35,#e1,#34,#e5,#30,#e3
	db #2b,#2e,#30,#2e,#e1,#2e,#30,#2d
	db #2b,#29,#d1,#f1,#84,#04,#30,#2b
	db #d4,#e7,#37,#e3,#35,#e1,#34,#e5
	db #30,#e3,#2b,#2e,#30,#2e,#e1,#2e
	db #30,#2d,#2b,#29,#d1,#f1,#84,#04
	db #30,#28,#87
.l69c4
	db #d3,#e0,#c0,#82,#18,#1f,#24,#18
	db #24,#18,#1f,#24,#18,#1f,#24,#18
	db #24,#1f,#24,#2b,#24,#2b,#30,#24
	db #30,#24,#2b,#30,#24,#2b,#30,#24
	db #30,#2b,#30,#37,#d4,#e7,#3a,#39
	db #ef,#37,#87
.l69ef
	db #81,#d1,#ff,#c4,#30,#8f,#88,#08
	db #08,#82,#c0,#d4,#84,#01,#0c,#18
	db #84,#01,#0c,#15,#87
.l6a04
	dw l6a0a
.l6a06
	dw l6a22
.l6a08
	dw l6a39
.l6a0a
	db #8a,#d1,#90,#c0,#88,#01,#01,#82
	db #e0,#10,#10,#0e,#e3,#10,#e1,#09
	db #0a,#e3,#0b,#e2,#10,#0e,#10,#8e
.l6a22
	db #8a,#d1,#90,#c0,#88,#01,#01,#82
	db #e0,#1c,#1c,#1a,#e3,#1c,#e1,#15
	db #16,#e3,#17,#e2,#1c,#1a,#1c
.l6a39
	db #8a,#d1,#90,#c0,#88,#01,#02,#82
	db #e0,#28,#28,#26,#e3,#28,#e1,#21
	db #22,#e3,#23,#e2,#28,#26,#28
.l6a50
	dw l6a56
.l6a52
	dw l6a66
.l6a54
	dw l6a82
.l6a56
	db #8a,#d1,#90,#c0,#88,#01,#01,#82
	db #e2,#13,#11,#e5,#0c,#e3,#8f,#8e
.l6a66
	db #8a,#d4,#90,#c0,#88,#02,#02,#82
	db #e2,#84,#01,#0a,#26,#84,#ff,#0a
	db #24,#e5,#28,#e1,#84,#0f,#01,#1f
	db #84,#0f,#01,#1f
.l6a82
	db #8a,#d1,#90,#88,#01,#01,#82,#e2
	db #c1,#2b,#29,#e5,#30,#e1,#d9,#84
	db #0f,#01,#8d,#24,#84,#0f,#01,#8d
	db #24
.l6a9b
	dw l6aa1
.l6a9d
	dw l6ab2
.l6a9f
	dw l6ac2
.l6aa1
	db #8a,#d1,#90,#c0,#88,#01,#01,#82
	db #e0,#18,#18,#18,#18,#18,#e9,#16
	db #8e
.l6ab2
	db #8a,#d1,#90,#c0,#88,#01,#01,#82
	db #e0,#24,#24,#24,#24,#24,#e9,#22
.l6ac2
	db #8a,#d4,#c0,#90,#88,#01,#02,#82
	db #e0,#2b,#2b,#2b,#2b,#2b,#e9,#29
.l6ad2
	dw l6aec,l6aa1
.l6ad6
	dw l6ab2
.l6ad8
	dw l6ac2
.l6ada
	dw l6aef,l6aa1
.l6ade
	dw l6ab2
.l6ae0
	dw l6ac2
.l6ae2
	dw l6af2,l6aa1
.l6ae6
	dw l6ab2
.l6ae8
	dw l6ac2
.l6aea
	db #8e,#87
.l6aec
	db #89,#02,#87
.l6aef
	db #89,#05,#87
.l6af2
	db #89,#07,#87
;
.music_info
	db "Bmx Simulator 2 (1989)(Codemasters)(The Oliver Twins)",0
	db "",0

	read "music_end.asm"
