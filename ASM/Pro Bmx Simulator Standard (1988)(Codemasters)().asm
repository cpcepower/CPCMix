; Music of Pro Bmx Simulator Standard (1988)(Codemasters)()
; Ripped by Megachur the 18/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PROBMXSS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #5f62
FIRST_THEME				equ 0
LAST_THEME				equ 8

	read "music_header.asm"

	jp l5f70
	jp l602f
.l5f68
	jp l6111
	jp l65bf
.l5f6f equ $ + 1
.l5f6e
.music_end
	db #00,#00
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
	db #00
;
.play_music
.l602f
;
	call l6610
	ld a,(l5f6e)
	and a
	jp z,l608b
.l603a equ $ + 1
	ld a,#3f
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
	ld a,#05
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
	ld a,#3f
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
	db #e2,#ca,#ce,#d3,#91,#c0,#bb,#28
	db #aa,#a2,#67,#51,#79,#cf,#1d,#dc
	db #e1,#e6,#01
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
	ld a,#38
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
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l6401 equ $ + 6
.l6400 equ $ + 5
.l63fe equ $ + 3
.l63fd equ $ + 2
.l63fc equ $ + 1
.l63fb
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
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
	ld hl,l5f6f		; sound fx ?
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
	db #03,#63,#a8,#01,#90,#01,#0c,#fa
	db #10,#00,#10,#00,#ff,#ff,#06,#00
.l66d1 equ $ + 1
	db #00,#05,#02,#16,#00,#15,#00,#02
	db #fa,#02,#00,#02,#00,#01,#01,#02
.l66e2 equ $ + 2
	db #00,#00,#32,#03,#20,#03,#28,#03
	db #23,#fa,#01,#00,#01,#00,#01,#01
.l66f3 equ $ + 3
	db #ff,#00,#00,#32,#03,#a2,#02,#a8
	db #02,#23,#fa,#01,#00,#01,#00,#01
.l6704 equ $ + 4
	db #01,#ff,#00,#00,#32,#03,#f8,#01
	db #fc,#01,#23,#fa,#01,#00,#01,#00
.l6715 equ $ + 5
	db #01,#01,#ff,#00,#00,#64,#03,#51
	db #01,#54,#01,#32,#fa,#01,#00,#01
.l6726 equ $ + 6
	db #00,#01,#01,#ff,#00,#00,#14,#15
	db #80,#00,#a8,#00,#0f,#f2,#99,#00
.l6737 equ $ + 7
	db #9b,#00,#ff,#ff,#00,#00,#00,#0a
	db #06,#00,#04,#10,#04,#05,#f2,#98
	db #00,#98,#00,#ff,#ff,#05,#00,#00
.l6748
	db #0a,#04,#a0,#01,#00,#03,#0a,#fa
	db #20,#00,#18,#00,#ff,#ff,#3c,#00
.l675f equ $ + 7
.l675d equ $ + 5
.l675c equ $ + 4
.l675b equ $ + 3
.l675a equ $ + 2
.l6759 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6767 equ $ + 7
.l6766 equ $ + 6
.l6765 equ $ + 5
.l6763 equ $ + 3
.l6761 equ $ + 1
.l6760
	db #00,#00,#00,#00,#00,#00,#00,#00
.l676a equ $ + 2
.l6769 equ $ + 1
.l6768
	db #00,#00,#00,#00
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
	db #ff,#80,#1b,#34
.l678b
	db #05
	dw l68a2,l68b4,l68cc		; Desert Riding Theme
	db #06
	dw ldb68a2,ldb68bc,ldb68c6	; Dirt Biking theme
	db #06
	dw lqr67bc,lqr67f0,lqr683a	; Quarry Racing Theme
	db #06
	dw l67bc,l67be,l67c0
	db #07
	dw l6808,l680a,l680c
	db #06
	dw l6853,l6855,l6857
	db #06
	dw l688a,l688e,l6890
	db #06
	dw l6892,l6896,l6898
	db #06
	dw l689a,l689e,l68a0
.l67c0 equ $ + 4
.l67be equ $ + 2
.l67bc
	dw l67c2,l67da,l67f1
.l67c2
	db #8a,#d1,#90,#c0,#88,#01,#01,#82
	db #e0,#10,#10,#0e,#e3,#10,#e1,#09
	db #0a,#e3,#0b,#e2,#10,#0e,#10,#8e
.l67da
	db #8a,#d1,#90,#c0,#88,#01,#01,#82
	db #e0,#1c,#1c,#1a,#e3,#1c,#e1,#15
.l67f1 equ $ + 7
	db #16,#e3,#17,#e2,#1c,#1a,#1c,#8a
	db #d1,#90,#c0,#88,#01,#02,#82,#e0
	db #28,#28,#26,#e3,#28,#e1,#21,#22
	db #e3,#23,#e2,#28,#26,#28
.l6808
	dw l680e
.l680a
	dw l681e
.l680c
	dw l683a
.l680e
	db #8a,#d1,#90,#c0,#88,#01,#01,#82
	db #e2,#13,#11,#e5,#0c,#e3,#8f,#8e
.l681e
	db #8a,#d4,#90,#c0,#88,#02,#02,#82
	db #e2,#84,#01,#0a,#26,#84,#ff,#0a
	db #24,#e5,#28,#e1,#84,#0f,#01,#1f
.l683a equ $ + 4
	db #84,#0f,#01,#1f,#8a,#d1,#90,#88
	db #01,#01,#82,#e2,#c1,#2b,#29,#e5
	db #30,#e1,#d9,#84,#0f,#01,#8d,#24
	db #84,#0f,#01,#8d,#24
.l6857 equ $ + 4
.l6855 equ $ + 2
.l6853
	dw l6859,l686a,l687a
.l6859
	db #8a,#d1,#90,#c0,#88,#01,#01,#82
	db #e0,#18,#18,#18,#18,#18,#e9,#16
.l686a equ $ + 1
	db #8e,#8a,#d1,#90,#c0,#88,#01,#01
	db #82,#e0,#24,#24,#24,#24,#24,#e9
.l687a equ $ + 1
	db #22,#8a,#d4,#c0,#90,#88,#01,#02
	db #82,#e0,#2b,#2b,#2b,#2b,#2b,#e9
	db #29
.l6890 equ $ + 6
.l688e equ $ + 4
.l688a
	dw l6a91,l6859,l686a,l687a
.l6898 equ $ + 6
.l6896 equ $ + 4
.l6892
	dw l6a94,l6859,l686a,l687a
.l68a0 equ $ + 6
.l689e equ $ + 4
.l689a
	dw l6a97,l6859,l686a,l687a
.l68a2
	dw l68d8,l68eb,l68eb,l68eb
	dw l6933,l6933,l6933,l6933
.l68b4 equ $ + 2
	dw l6a8f,l6944,l6944,l695f
	dw l6974
	dw l6974,l6974,l6974,l6974
	dw l6974
.l68cc equ $ + 6
	dw l6974,l6974,#0000,l69b2
	dw l69f4,l69f4,l6a25,l6a6c
	dw #0000
.l68d8
	db #c0,#91,#ff,#80,#d4,#8a,#88,#04
	db #08,#82,#84,#01,#01,#0c,#84,#01
.l68eb equ $ + 3
	db #01,#0a,#87,#90,#8a,#88,#01,#01
	db #d1,#e1,#0b,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0c,#0c,#0c,#0f,#0f
	db #10,#10,#10,#11,#11,#11,#11,#11
	db #11,#11,#10,#11,#11,#11,#11,#11
	db #11,#11,#10,#11,#11,#11,#11,#11
	db #11,#11,#10,#11,#11,#11,#10,#10
.l6933 equ $ + 3
	db #0f,#0f,#87,#0b,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0b,#0c,#0c,#0c,#0c
.l6944 equ $ + 4
	db #0c,#0c,#0c,#87,#91,#8b,#d8,#c0
	db #e1,#3f,#27,#3f,#27,#3f,#27,#3f
	db #27,#3f,#27,#3f,#27,#e0,#3f,#27
.l695f equ $ + 7
	db #3f,#27,#3f,#27,#3f,#27,#87,#e1
	db #3f,#27,#3f,#27,#3f,#27,#3f,#27
	db #3f,#27,#3f,#27,#3f,#27,#e0,#3f
.l6974 equ $ + 4
	db #27,#3f,#27,#87,#e1,#3f,#27,#d2
	db #8d,#3f,#d8,#27,#3f,#27,#d2,#8d
	db #3f,#d8,#27,#3f,#27,#d2,#8d,#3f
	db #d8,#27,#3f,#27,#d2,#8d,#3f,#d8
	db #27,#3f,#27,#d2,#8d,#3f,#d8,#27
	db #3f,#27,#d2,#8d,#3f,#d8,#27,#3f
	db #27,#d2,#8d,#3f,#d8,#27,#3f,#27
	db #e0,#8d,#3f,#8d,#27,#8d,#3f,#8d
.l69b2 equ $ + 2
	db #27,#87,#8a,#c0,#88,#01,#02,#82
	db #da,#e3,#84,#1e,#01,#1c,#84,#1e
	db #01,#1c,#84,#1e,#01,#1c,#84,#1e
	db #01,#1c,#84,#1e,#01,#1c,#84,#1e
	db #01,#1c,#e0,#84,#1e,#01,#1f,#84
	db #1e,#01,#1f,#84,#1e,#01,#1f,#84
	db #1e,#01,#1f,#84,#1e,#01,#1f,#84
	db #1e,#01,#1f,#84,#1e,#01,#1f,#84
.l69f4 equ $ + 4
	db #1e,#01,#1f,#87,#8a,#c0,#88,#01
	db #02,#82,#da,#e3,#80,#84,#1e,#01
	db #8d,#1c,#80,#84,#1e,#01,#8d,#1c
	db #80,#84,#1e,#01,#8d,#1c,#80,#e0
	db #84,#1e,#01,#8d,#1f,#84,#1e,#01
	db #8d,#1f,#84,#1e,#01,#8d,#1f,#84
.l6a25 equ $ + 5
	db #1e,#01,#8d,#1f,#87,#8a,#88,#01
	db #01,#db,#e1,#12,#13,#13,#13,#13
	db #13,#13,#13,#12,#13,#13,#13,#13
	db #13,#13,#13,#12,#13,#13,#13,#13
	db #13,#13,#13,#12,#13,#13,#13,#16
	db #16,#17,#17,#17,#18,#18,#18,#18
	db #18,#18,#18,#17,#18,#18,#18,#18
	db #18,#18,#18,#17,#18,#18,#18,#18
	db #18,#18
	db #18,#17,#18,#18,#18,#17,#17,#16
.l6a6c equ $ + 2
	db #16,#87,#d1,#ff,#c4,#30,#8f,#35
	db #8f,#88,#03,#03,#c0,#84,#01,#78
	db #30,#84,#01,#78,#2e,#29,#84,#01
	db #01,#8f,#88,#01,#01,#d1,#ff,#c4
.l6a91 equ $ + 7
.l6a8f equ $ + 5
	db #30,#8f,#8f,#8f,#87,#8e,#87,#89
.l6a97 equ $ + 5
.l6a94 equ $ + 2
	db #02,#87,#89,#05,#87,#89,#07,#87

; Dirt Biking theme

.ldb68a2
	dw ldb68d8,ldb6907,ldb6907,ldb6907
	dw ldb6907,ldb692d,ldb692d,ldb6907
	dw ldb6907,ldb694e,ldb694e,ldb6a82
	dw #0000
.ldb68bc
	dw ldb698f,ldb698f,ldb698f,ldb69b3
	dw #0000
.ldb68c6
	dw ldb69d8,ldb69d8,ldb69d8,ldb69d8
	dw ldb69fd,ldb6a31,ldb69fd,ldb6a62
	dw #0000
.ldb68d8
	db #8a,#c0,#91,#d7,#88,#02,#04,#82
	db #ff,#18,#f7,#8f,#e0,#d4,#84,#1e
	db #01,#1f,#84,#1e,#01,#1f,#84,#1e
	db #01,#1f,#84,#1e,#01,#1f,#84,#1e
	db #01,#1c,#84,#1e,#01,#1c,#84,#1e
.ldb6907 equ $ + 7
	db #01,#1c,#84,#1e,#01,#1c,#87,#90
	db #88,#01,#01,#d6,#0c,#18,#18,#0c
	db #18,#18,#0c,#18,#0c,#18,#18,#0c
	db #18,#18,#0c,#18,#0c,#18,#18,#0c
	db #18,#18,#0c,#18,#0f,#1b,#1b,#0f
.ldb692d equ $ + 5
	db #11,#1d,#1d,#11,#87,#11,#1d,#1d
	db #11,#1d,#1d,#11,#1d,#11,#1d,#1d
	db #11,#1d,#1d,#11,#1d,#11,#1d,#1d
	db #11,#1d,#1d,#11,#1d,#13,#1f,#1f
.ldb694e equ $ + 6
	db #13,#0f,#1b,#1b,#0f,#87,#14,#20
	db #20,#14,#20,#20,#14,#20,#14,#20
	db #20,#14,#20,#20,#14,#20,#0f,#1b
	db #1b,#0f,#1b,#1b,#0f,#1b,#0f,#1b
	db #1b,#0f,#1b,#1b,#0f,#1b,#16,#22
	db #22,#16,#22,#22,#16,#22,#16,#22
	db #22,#16,#16,#22,#22,#16,#16,#22
	db #22,#16,#22,#22,#16,#22,#16,#22
.ldb698f equ $ + 7
	db #22,#16,#16,#22,#22,#16,#87,#90
	db #c0,#d1,#e2,#8a,#84,#1e,#01,#24
	db #e0,#84,#1e,#01,#24,#db,#e3,#8b
	db #8d,#3f,#d1,#e1,#8a,#84,#1e,#01
	db #24,#84,#1e,#01,#24,#db,#e3,#8b
.ldb69b3 equ $ + 3
	db #8d,#27,#87,#d4,#e2,#8a,#84,#1e
	db #01,#24,#e0,#84,#1e,#01,#24,#db
	db #e1,#8b,#8d,#3f,#d4,#8a,#84,#1e
	db #01,#24,#84,#1e,#01,#24,#db,#e1
	db #8b,#3f,#e0,#3f,#3f,#3f,#3f,#87
.ldb69d8
	db #8b,#d0,#c0,#e0,#41,#41,#41,#41
	db #41,#41,#41,#41,#41,#41,#41,#41
	db #41,#41,#41,#41,#41,#41,#41,#41
	db #41,#41,#41,#41,#41,#41,#41,#41
.ldb69fd equ $ + 5
	db #41,#41,#41,#41,#87,#8a,#c0,#d1
	db #88,#02,#03,#82,#e5,#2b,#2a,#e3
	db #29,#ef,#24,#d6,#e0,#88,#01,#02
	db #24,#22,#23,#24,#27,#24,#26,#27
	db #29,#24,#27,#29,#2b,#29,#2b,#2e
	db #30,#2e,#2b,#2a,#2b,#2a,#29,#27
	db #2a,#27,#29,#26,#27,#22,#24,#25
.ldb6a31 equ $ + 1
	db #87,#d1,#88,#02,#03,#e5,#27,#24
	db #e3,#22,#ef,#24,#d6,#e0,#88,#01
	db #02,#22,#24,#22,#24,#22,#24,#22
	db #23,#24,#22,#24,#22,#24,#22,#24
	db #22,#24,#22,#1f,#1b,#24,#22,#1f
	db #1b,#24,#22,#1f,#1b,#24,#1f,#1b
	db #18,#87
.ldb6a62
	db #d1,#88,#01,#02,#e5,#33,#32,#e3
	db #2e,#e7,#2b,#e1,#2b,#e3,#2c,#e1
	db #2b,#ff,#29,#e5,#33,#32,#e3,#2e
	db #ef,#84,#ff,#30,#2b,#ff,#2e,#87
.ldb6a87 equ $ + 5
.ldb6a84 equ $ + 2
.ldb6a82
	db #8e,#87,#89,#02,#87,#89,#05,#87
.ldb6a8a
	db #89,#07,#87
	
; Quarry Racing Theme

.lqr67bc
	dw lqr6856,lqr6856,lqr6856,lqr6880
	dw lqr68a8,lqr68a8,lqr68a8,lqr68a8
	dw lqr68db,lqr68db,lqr68db,lqr68db
	dw lqr68a8,lqr68a8,lqr68a8,lqr68a8
	dw lqr68a8,lqr68a8,lqr68a8,lqr68a8
	dw lqr68a8,lqr68a8,lqr68a8,lqr68a8
.lqr67f0 equ $ + 4
	dw lqr6aea,#0000,lqr6923,lqr6923
	dw lqr6923,lqr694d,lqr6856,lqr6856
	dw lqr6856,lqr6880,lqr6856,lqr6856
	dw lqr6856,lqr6880,lqr6856,lqr6856
	dw lqr6856,lqr6880,lqr6856,lqr6856
	dw lqr6856,lqr6880,lqr6856,lqr6856
	dw lqr6856,lqr6880,lqr6856,lqr6856
	dw lqr6856,lqr6880,lqr6856,lqr6856
	dw lqr6856,lqr6880,lqr6880,lqr6880
.lqr683a equ $ + 6
	dw lqr6880,lqr6880,#0000,lqr697a
	dw lqr68c0,lqr68c0,lqr68c0,lqr68c0
	dw lqr6989,lqr697a,lqr69c4,lqr69ef
	dw lqr68c0,lqr68c0,lqr68c0,lqr68c0
	dw #0000
.lqr6856
	db #90,#c0,#d1,#e2,#8a,#84,#1e,#01
	db #24,#e0,#84,#1e,#01,#24,#d3,#e3
	db #8b,#84,#1e,#01,#8d,#2b,#d1,#e1
	db #8a,#84,#1e,#01,#24,#84,#1e,#01
	db #24,#d3,#e3,#8b,#84,#1e,#01,#8d
.lqr6880 equ $ + 2
	db #2f,#87,#d4,#e2,#8a,#84,#1e,#01
	db #24,#e0,#84,#1e,#01,#24,#d3,#e1
	db #8c,#84,#1e,#01,#8d,#2b,#d4,#8a
	db #84,#1e,#01,#24,#84,#1e,#01,#24
	db #db,#e1,#8b,#3f,#e0,#3f,#3f,#3f
.lqr68a8 equ $ + 2
	db #3f,#87,#88,#01,#01,#82,#8a,#d6
	db #e0,#0c,#0c,#0c,#0c,#0f,#0f,#0a
	db #0a,#0c,#0c,#0c,#0c,#07,#07,#0a
.lqr68c0 equ $ + 2
	db #0a,#87,#90,#8a,#c0,#d6,#e0,#88
	db #01,#01,#82,#18,#18,#18,#18,#1b
	db #1b,#16,#16,#18,#18,#18,#18,#13
.lqr68db equ $ + 5
	db #13,#16,#16,#91,#87,#88,#01,#01
	db #82,#8a,#d6,#e0,#0c,#18,#18,#0c
	db #18,#18,#0c,#18,#0c,#18,#18,#0c
	db #18,#18,#0c,#18,#0c,#18,#18,#0c
	db #18,#18,#0c,#18,#0c,#18,#18,#0c
	db #18,#18,#0c,#18,#0f,#1b,#1b,#0f
	db #1b,#1b,#0f,#1b,#11,#1d,#1d,#11
	db #1d,#1d,#11,#1d,#0c,#18,#18,#0c
	db #18,#18,#0c,#18,#0c,#18,#18,#0c
.lqr6923 equ $ + 5
	db #18,#18,#0c,#18,#87,#90,#c0,#d1
	db #e2,#8a,#84,#1e,#01,#18,#e0,#84
	db #1e,#01,#18,#d3,#e3,#8c,#84,#1e
	db #01,#8d,#1f,#d1,#e1,#8a,#84,#1e
	db #01,#18,#84,#1e,#01,#18,#d3,#e3
.lqr694d equ $ + 7
	db #8c,#84,#1e,#01,#8d,#23,#87,#d4
	db #e2,#8a,#84,#1e,#01,#18,#e0,#84
	db #1e,#01,#18,#d3,#e1,#8c,#84,#1e
	db #01,#8d,#1f,#d4,#8a,#84,#1e,#01
	db #18,#84,#1e,#01,#18,#db,#e1,#8b
	db #8d,#3f,#e0,#8d,#3f,#8d,#3f,#8d
.lqr697a equ $ + 4
	db #3f,#8d,#3f,#87,#8a,#81,#d1,#ff
	db #c4,#30,#e7,#c5,#27,#c6,#29,#ef
.lqr6989 equ $ + 3
	db #c5,#24,#87,#8a,#c0,#88,#01,#02
	db #82,#d4,#e7,#37,#e3,#35,#e1,#34
	db #e5,#30,#e3,#2b,#2e,#30,#2e,#e1
	db #2e,#30,#2d,#2b,#29,#d1,#f1,#84
	db #04,#30,#2b,#d4,#e7,#37,#e3,#35
	db #e1,#34,#e5,#30,#e3,#2b,#2e,#30
	db #2e,#e1,#2e,#30,#2d,#2b,#29,#d1
.lqr69c4 equ $ + 6
	db #f1,#84,#04,#30,#28,#87,#d3,#e0
	db #c0,#82,#18,#1f,#24,#18,#24,#18
	db #1f,#24,#18,#1f,#24,#18,#24,#1f
	db #24,#2b,#24,#2b,#30,#24,#30,#24
	db #2b,#30,#24,#2b,#30,#24,#30,#2b
	db #30,#37,#d4,#e7,#3a,#39,#ef,#37
.lqr69ef equ $ + 1
	db #87,#81,#d1,#ff,#c4,#30,#8f,#88
	db #08,#08,#82,#c0,#d4,#84,#01,#0c
	db #18,#84,#01,#0c,#15,#87
.lqr6aea
	db #8e,#87
;
.music_info
	db "Pro Bmx Simulator Standard (1988)(Codemasters)",0
	db "Desert Riding, Dirt Biking, Quarry Racing - all themes merged by Megachur",0

	read "music_end.asm"

