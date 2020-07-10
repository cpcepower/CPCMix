; Music of Rainbow Islands (1989)(Ocean Software)(Steve Turner)()
; Ripped by Megachur the 19/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RAINBOWI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #614f
FIRST_THEME				equ 1
LAST_THEME				equ 5

	read "music_header.asm"

.l6150 equ $ + 1
.l614f
	db #00,#00,#00
.l6153 equ $ + 1
.l6152
	db #81,#00	; theme = 81-85 03 05
;
.play_music
;
	ld hl,l6152
	ld a,(hl)
	and a
	jr z,l6168
	ld (hl),#00
	inc hl
	ld (hl),#00
	bit 7,a
	jr z,l6165
	ld (hl),a
.l6165
	call l639a
.l6168
	ld hl,l614f
	ld b,(hl)
	ld (hl),#00
	ld hl,l6b37
	ld a,(hl)
	and a
	jr z,l6186
	ld a,b
	cp #0d
	jr c,l6181
	ld a,(hl)
	cp #0d
	jr nc,l6186
	jr l618d
.l6181
	cp (hl)
	jr z,l6186
	jr nc,l618d
.l6186
	ld a,b
	ld (l6b38),a
	ld (l6150),a
.l618d
	ld hl,(l6b76)
	jp (hl)
.l6191
	ld ix,l6b08
	xor a
.l6196
	ld (l6b74),a
	ld a,(ix+#0d)
	and a
	jr z,l6213
	ld (ix+#0c),a
	dec a
	ld hl,l6a24
	add a
	ld c,a
	add a
	add c
	ld e,a
	xor a
	ld (ix+#0d),a
	ld d,a
	add hl,de
	add hl,de
	ld bc,#000c
	push ix
	pop de
	ldir
	ld a,(ix+#0b)
	add a
	add a
	add a
	ld l,a
	ld h,#00
	ld de,l69cc
	add hl,de
	ld bc,#0008
	push hl
	push ix
	pop hl
	ld de,#0010
	add hl,de
	ex de,hl
	pop hl
	ldir
	ld a,(ix+#04)
	ld (ix+#20),a
	ld a,(ix+#09)
	ld (ix+#21),a
	ld a,(ix+#06)
	bit 2,a
	jr nz,l61f5
	ld a,(ix+#00)
	ld (ix+#07),a
	ld a,(ix+#01)
	ld (ix+#08),a
.l61f5
	ld (ix+#1f),#00
	ld a,(l6b73)
	or (ix+#0e)
	ld d,a
	ld a,(ix+#16)
	and (ix+#0e)
	cpl
	and d
	ld (l6b73),a
	ld d,a
	ld a,#07
	call l6345
	jr l621a
.l6213
	ld a,(ix+#0c)
	and a
	jp z,l6336
.l621a
	ld a,(ix+#17)
	dec a
	jr z,l6242
	dec a
	jr z,l622b
	dec a
	jr z,l6259
	ld c,(ix+#15)
	jr l6236
.l622b
	dec (ix+#12)
	jr nz,l6233
	inc (ix+#17)
.l6233
	ld c,(ix+#13)
.l6236
	ld a,(ix+#1f)
	sub c
	jp c,l632d
	ld (ix+#1f),a
	jr l6263
.l6242
	dec (ix+#10)
	jr nz,l624a
	inc (ix+#17)
.l624a
	ld a,(ix+#11)
	add (ix+#1f)
	jr nc,l6254
	ld a,#ff
.l6254
	ld (ix+#1f),a
	jr l6263
.l6259
	dec (ix+#14)
	jr nz,l6277
	inc (ix+#17)
	jr l6277
.l6263
	ld a,(ix+#1f)
	srl a
	srl a
	srl a
	srl a
	ld d,a
	ld a,(l6b74)
	add #08
	call l6345
.l6277
	ld l,(ix+#00)
	ld h,(ix+#01)
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld a,(l6b74)
	add a
	ld e,a
	ld d,l
	call l6345
	inc e
	ld d,h
	ld a,e
	call l6345
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(ix+#1d)
	and a
	jr nz,l62ad
	ld e,(ix+#02)
	ld d,(ix+#03)
	add hl,de
	jr l62bf
.l62ad
	ld b,a
	ld e,(ix+#1e)
	ld d,(ix+#1f)
	ex de,hl
	and a
	sbc hl,de
.l62b8
	sra h
	rr l
	djnz l62b8
	add hl,de
.l62bf
	dec (ix+#21)
	jr nz,l6336
	ld a,(ix+#09)
	ld (ix+#21),a
	ld (ix+#00),l
	ld (ix+#01),h
	dec (ix+#04)
	jp nz,l6336
	dec (ix+#05)
	jr nz,l62e2
	ld (ix+#0c),#00
	jp l632d
.l62e2
	ld a,(ix+#06)
	and a
	jr z,l6325
	bit 2,a
	jr nz,l62f2
	bit 1,a
	jr z,l6312
	jr nz,l6306
.l62f2
	ld l,(ix+#07)
	ld h,(ix+#08)
	ld a,(ix+#00)
	ld (ix+#07),a
	ld a,(ix+#01)
	ld (ix+#08),a
	jr l631f
.l6306
	ld hl,#0000
	xor a
	sbc hl,de
	ld (ix+#02),l
	ld (ix+#03),h
.l6312
	ld a,(ix+#06)
	bit 0,a
	jr z,l6325
	ld l,(ix+#07)
	ld h,(ix+#08)
.l631f
	ld (ix+#00),l
	ld (ix+#01),h
.l6325
	ld a,(ix+#20)
	ld (ix+#04),a
	jr l6336
.l632d
	call l637f
	ld a,(ix+#0a)
	ld (ix+#0d),a
.l6336
	ld bc,#0023
	add ix,bc
	ld a,(l6b74)
	inc a
	cp #03
	jp nz,l6196
	ret
.l6345
	ld b,#f4
	out (c),a
	inc b
	inc b
	ld a,#c0
	out (c),a
	xor a
	out (c),a
	dec b
	dec b
	out (c),d
	inc b
	inc b
	ld a,#80
	out (c),a
	xor a
	out (c),a
	ret
.l6360
	ld hl,l6191
	ld (l6b76),hl
	ld b,#f7
	ld a,#82
	out (c),a
	xor a
	ld ix,l6b08
	call l637f
	ld ix,l6b2b
	call l637f
	ld ix,l6b4e
.l637f
	ld a,(l6b73)
	or (ix+#0e)
	ld (l6b73),a
	ld d,a
	ld a,#07
	call l6345
	xor a
	ld (ix+#0c),a
	ld (ix+#0d),a
	ld (ix+#1d),a
	ret
.l6399
	nop
.l639a
	dec a
	and #7f
	ld (l64fa),a
	call l6360
	ld a,(l64fa)
	ld e,a
	ld d,#00
	ld hl,l6585
	add hl,de
	ld a,(hl)
	ld (l6514),a
	ld (l6399),a
	ld hl,l658a
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld (l6b71),hl
	ld hl,l63c7
	ld (l6b76),hl
	ret
.l63c7
	ld ix,l6b08
	ld b,#03
.l63cd
	ld hl,(l6b71)
	ld a,(hl)
	cp #ff
	jp z,l64e2
	inc hl
	ld (l6b71),hl
	add a
	ld e,a
	ld d,#00
	ld hl,l6523
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#18),e
	ld (ix+#19),d
	ld (ix+#1c),#01
	ld de,#0023
	add ix,de
	djnz l63cd
	ld hl,l63fc
	ld (l6b76),hl
.l63fc
	ld hl,l6399
	dec (hl)
	jp nz,l6191
	ld a,(l6514)
	ld (hl),a
	ld ix,l6b08
	xor a
.l640c
	ld (l6513),a
	dec (ix+#1c)
	jp nz,l64d1
	ld l,(ix+#18)
	ld h,(ix+#19)
.l641b
	ld a,(hl)
	inc hl
	and a
	jr z,l6444
	cp #c0
	jr c,l6473
	cp #cf
	jr c,l6459
	jr z,l644a
	cp #e0
	jr c,l6439
	cp #f0
	jr c,l646a
	and #0f
	ld (ix+#1d),a
	jr l641b
.l6439
	and #0f
	ld (ix+#18),l
	ld (ix+#19),h
	jp l64c7
.l6444
	ld hl,(l6b71)
	jp l63c7
.l644a
	ld a,(ix+#1a)
	ld (ix+#1c),a
	ld (ix+#18),l
	ld (ix+#19),h
	jp l64d1
.l6459
	and #0f
	ld c,a
	ld b,#00
	ex de,hl
	ld hl,l6515
	add hl,bc
	ld a,(hl)
	ex de,hl
	ld (ix+#1a),a
	jr l641b
.l646a
	and #0f
	add #0c
	ld (ix+#1b),a
	jr l641b
.l6473
	ld (ix+#18),l
	ld (ix+#19),h
	ld c,a
	rrca
	rrca
	rrca
	and #1e
	ld l,a
	ld h,#00
	ld de,l64fb
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,c
	and #07
	jr z,l6495
.l648e
	srl d
	rr e
	dec a
	jr nz,l648e
.l6495
	ld a,(ix+#1b)
	ld hl,l6a24
	add a
	ld c,a
	add a
	add c
	ld c,a
	ld b,#00
	add hl,bc
	add hl,bc
	ld a,(ix+#1d)
	and a
	jr z,l64bb
	ld c,(ix+#1e)
	ld b,(ix+#1f)
	ld (hl),c
	inc hl
	ld (hl),b
	ld (ix+#1e),e
	ld (ix+#1f),d
	jr l64c4
.l64bb
	ld (hl),e
	ld (ix+#1e),e
	inc hl
	ld (hl),d
	ld (ix+#1f),d
.l64c4
	ld a,(ix+#1b)
.l64c7
	inc a
	ld (ix+#0d),a
	ld a,(ix+#1a)
	ld (ix+#1c),a
.l64d1
	ld bc,#0023
	add ix,bc
	ld a,(l6513)
	inc a
	cp #03
	jp nz,l640c
	jp l6191
.l64e2
	ld a,(l6153)
	and a
	jr z,l64ee
	ld (l6152),a
	jp l6191
.l64ee
	call l6360
	ld b,#f7
	ld a,#92
	out (c),a
	jp l6191
.l64fb equ $ + 1
.l64fa
	db #00,#70,#77,#c0,#70,#70,#6a,#70
	db #64,#d0,#5e,#80,#59,#70,#54,#c0
	db #4f,#40,#4d,#00,#47,#10,#43,#40
.l6515 equ $ + 3
.l6514 equ $ + 2
.l6513 equ $ + 1
	db #3f,#00,#00,#01,#02,#03,#04,#06
	db #08,#09,#0a,#0b,#0c,#0e,#10,#18
	db #20
.l6523
	dw l65e4,l65e5,l6608,l662e
	dw l6651,l666f,l667a,l6681
	dw l66a2,l66d3,l66f9,l671d
	dw l6732,l6743,l6749,l6771
	dw l67a1,l67c9,l67f1,l680a
	dw l681d,l6824,l6848,l6852
	dw l685f,l6867,l686e,l6873
	dw l6878,l687d,l6882,l6882
	dw l6887,l6891,l689f,l68a8
	dw l68b0,l68b5,l68c3,l68cf
	dw l68d3,l68fc,l690f,l6934
	dw l6950,l697b,l6996,l69ac
	dw l69b8
.l658a equ $ + 5
.l6585
	db #03,#02,#03,#03,#06,#94,#65,#b3
	db #65,#d8,#65,#dc,#65,#e0,#65,#01
	db #08,#0f,#03,#0a,#11,#04,#0b,#12
	db #05,#0c,#13,#06,#0d,#14,#01,#08
	db #0f,#02,#09,#10,#01,#08,#0f,#03
	db #0a,#11,#07,#0e,#15,#ff,#18,#17
	db #16,#18,#17,#16,#19,#17,#16,#1a
	db #17,#16,#19,#17,#16,#1b,#17,#16
	db #1c,#20,#21,#1d,#20,#21,#1a,#17
	db #16,#1f,#17,#16,#22,#23,#24,#25
	db #26,#27,#ff,#28,#29,#2a,#ff,#2b
.l65e4 equ $ + 7
	db #2c,#2d,#ff,#2e,#2f,#30,#ff,#00
.l65e5
	db #f0,#c9,#e0,#55,#56,#c4,#46,#c3
	db #06,#c1,#26,#c3,#46,#c4,#56,#c1
	db #26,#c4,#cf,#c3,#a5,#c1,#06,#c3
	db #26,#c4,#16,#c1,#06,#c8,#cf,#cf
.l6608 equ $ + 3
	db #c1,#06,#00,#c3,#a5,#c1,#06,#c3
	db #a5,#c1,#95,#c3,#75,#c4,#06,#c1
	db #95,#c4,#cf,#c3,#55,#c1,#75,#c3
	db #95,#c4,#a5,#c1,#75,#c4,#cf,#95
	db #a5,#c3,#b5,#c1,#06,#c9,#cf,#cf
.l662e equ $ + 1
	db #00,#c3,#a5,#c1,#06,#c3,#a5,#c1
	db #95,#c3,#75,#c4,#06,#c1,#95,#c4
	db #cf,#c3,#55,#c1,#75,#c3,#95,#c4
	db #a5,#c1,#75,#c4,#cf,#25,#45,#c3
.l6651 equ $ + 4
	db #75,#c1,#55,#00,#c4,#cf,#55,#45
	db #35,#25,#55,#a5,#26,#06,#c3,#95
	db #c4,#55,#05,#c1,#a4,#c4,#cf,#c4
	db #25,#55,#c3,#95,#c1,#75,#c9,#cf
.l666f equ $ + 2
	db #cf,#00,#06,#b5,#a5,#c7,#b5,#c1
.l667a equ $ + 5
	db #06,#c9,#cf,#cf,#00,#c3,#cf,#c5
.l6681 equ $ + 4
	db #46,#c9,#46,#00,#c9,#cf,#c3,#15
	db #c1,#55,#c3,#85,#c1,#75,#c9,#cf
	db #c3,#45,#c1,#75,#c3,#a5,#c1,#95
	db #c9,#cf,#c3,#95,#c1,#a5,#c4,#06
.l66a2 equ $ + 5
	db #c7,#56,#ca,#56,#00,#e1,#c4,#52
	db #c3,#53,#c1,#52,#c3,#22,#c4,#23
	db #c1,#22,#c4,#91,#c3,#92,#c1,#91
	db #c3,#91,#c4,#92,#c1,#91,#c4,#71
	db #c3,#72,#c1,#71,#c3,#01,#c4,#02
	db #c1,#02,#c4,#91,#c3,#92,#c1,#91
.l66d3 equ $ + 6
	db #c3,#22,#c4,#23,#c1,#22,#c4,#71
	db #c3,#72,#c1,#71,#c3,#01,#c4,#02
	db #c1,#02,#c4,#91,#c3,#92,#c1,#91
	db #c3,#22,#c4,#23,#c1,#22,#c4,#71
	db #91,#a1,#c3,#b1,#c1,#02,#c9,#cf
.l66f9 equ $ + 4
	db #c3,#02,#c5,#02,#c4,#71,#c3,#72
	db #c1,#71,#c3,#01,#c4,#02,#c1,#02
	db #c4,#91,#c3,#92,#c1,#91,#c3,#22
	db #c4,#23,#c1,#22,#c4,#71,#c3,#72
	db #c1,#71,#c3,#01,#c4,#02,#c1,#52
.l671d
	db #c4,#cf,#52,#42,#32,#a1,#02,#22
	db #a1,#52,#72,#92,#52,#71,#91,#b1
.l6732 equ $ + 5
	db #71,#02,#22,#42,#02,#c2,#cf,#c9
	db #02,#c6,#b1,#c2,#cf,#c9,#a1,#c4
.l6743 equ $ + 6
	db #b1,#c2,#02,#c9,#cf,#cf,#c3,#cf
.l6749 equ $ + 4
	db #c5,#02,#c9,#02,#c3,#cf,#c1,#22
	db #c4,#22,#22,#c3,#22,#c1,#42,#c3
	db #cf,#c1,#42,#c4,#42,#42,#c3,#42
	db #c1,#52,#c3,#cf,#c1,#52,#c4,#52
	db #52,#52,#c7,#52,#c4,#52,#c1,#02
.l6771 equ $ + 4
	db #c3,#22,#c1,#42,#e2,#c4,#05,#c3
	db #05,#c1,#05,#c3,#05,#c1,#05,#c4
	db #05,#05,#c3,#05,#c1,#05,#c3,#05
	db #c1,#05,#c4,#05,#e3,#a4,#c3,#a4
	db #c1,#a4,#e2,#c3,#05,#c1,#05,#c4
	db #05,#05,#c3,#05,#c1,#05,#c3,#05
.l67a1 equ $ + 4
	db #c1,#05,#c4,#05,#e3,#c4,#a4,#c3
	db #a4,#c1,#a4,#e2,#c3,#05,#c1,#05
	db #c4,#05,#05,#c3,#05,#c1,#05,#c3
	db #05,#c1,#05,#c4,#05,#e3,#c7,#a4
	db #c4,#a4,#c9,#a4,#e4,#c5,#55,#e5
.l67c9 equ $ + 4
	db #c3,#45,#c5,#45,#e3,#c4,#a4,#c3
	db #a4,#c1,#a4,#c3,#a4,#c4,#a4,#c1
	db #a4,#e2,#c4,#05,#c3,#05,#c1,#05
	db #c3,#05,#c4,#05,#c1,#05,#e3,#c4
	db #a4,#c3,#a4,#c1,#a4,#e2,#c3,#54
.l67f1 equ $ + 4
	db #c4,#54,#c1,#54,#c7,#05,#cf,#cf
	db #e3,#a4,#ca,#a4,#e2,#c4,#05,#05
	db #cf,#cf,#e3,#c7,#a4,#ca,#a4,#e4
.l680a equ $ + 5
	db #c4,#55,#e5,#c9,#45,#e2,#c2,#cf
	db #c9,#05,#c6,#b4,#c2,#cf,#c9,#a4
	db #c4,#b4,#c2,#05,#c9,#e2,#cf,#cf
.l6824 equ $ + 7
.l681d
	db #c3,#cf,#c5,#e5,#45,#c9,#45,#c3
	db #25,#c1,#25,#c4,#25,#25,#c3,#25
	db #c1,#25,#e5,#c3,#45,#c1,#45,#c4
	db #45,#45,#c3,#45,#c1,#45,#c3,#55
	db #c1,#55,#c4,#55,#55,#55,#e2,#c7
.l6848 equ $ + 3
	db #05,#ca,#05,#e6,#c4,#b4,#b4,#a4
.l6852 equ $ + 5
	db #a4,#94,#94,#a4,#a4,#e1,#c4,#42
	db #b2,#43,#92,#23,#43,#c2,#63,#13
.l685f equ $ + 2
	db #c4,#72,#f0,#e1,#c9,#42,#cf,#cf
.l6867 equ $ + 2
	db #cf,#00,#e0,#c9,#45,#cf,#65,#75
.l6873 equ $ + 6
.l686e equ $ + 1
	db #00,#26,#cf,#16,#95,#00,#26,#cf
.l6878 equ $ + 3
	db #16,#cf,#00,#65,#cf,#85,#95,#00
.l6882 equ $ + 5
.l687d
	db #46,#cf,#36,#b5,#00,#06,#b5,#75
.l6887 equ $ + 2
	db #95,#00,#e7,#c4,#15,#15,#05,#05
.l6891 equ $ + 4
	db #b4,#b4,#05,#05,#e1,#c4,#62,#13
	db #63,#b2,#43,#53,#c2,#83,#c2,#33
.l689f equ $ + 2
	db #c4,#92,#e0,#c5,#cf,#b5,#a5,#95
.l68a8 equ $ + 3
	db #85,#75,#00,#c5,#e1,#cf,#b2,#a2
.l68b0 equ $ + 3
	db #92,#82,#72,#c9,#cf,#cf,#cf,#cf
.l68b5
	db #e0,#c2,#65,#55,#45,#35,#25,#15
.l68c3 equ $ + 6
	db #05,#b4,#c9,#cf,#cf,#00,#c2,#62
	db #52,#42,#32,#22,#12,#02,#b1,#c9
.l68d3 equ $ + 6
.l68cf equ $ + 2
	db #cf,#cf,#cf,#cf,#cf,#cf,#f0,#c3
	db #e1,#52,#e0,#c1,#06,#c3,#95,#c1
	db #06,#c3,#46,#c1,#56,#c3,#06,#c1
	db #95,#c4,#75,#c3,#a5,#c4,#95,#c5
	db #45,#c4,#55,#75,#c3,#95,#c1,#55
.l68fc equ $ + 7
	db #c3,#46,#c1,#56,#c9,#cf,#00,#e1
	db #c9,#52,#02,#52,#c3,#cf,#c5,#22
	db #c4,#71,#91,#a1,#c3,#02,#c1,#52
.l690f equ $ + 2
	db #c9,#cf,#c3,#e1,#52,#e7,#c4,#94
	db #c1,#a4,#c3,#05,#c1,#25,#c3,#45
	db #c1,#55,#c4,#45,#c3,#25,#c9,#05
	db #c1,#b4,#c4,#a4,#05,#c3,#25,#c1
.l6934 equ $ + 7
	db #a4,#c3,#74,#c1,#94,#c9,#cf,#f0
	db #e0,#c4,#55,#c3,#55,#c4,#55,#26
	db #06,#95,#55,#c5,#25,#c4,#55,#55
	db #c3,#55,#c1,#75,#c4,#95,#c7,#55
.l6950 equ $ + 3
	db #ca,#56,#00,#e1,#c4,#b1,#c3,#b2
	db #c1,#b1,#c3,#02,#c4,#03,#c1,#91
	db #c3,#91,#c4,#92,#c1,#91,#c3,#22
	db #c4,#23,#c1,#22,#c4,#71,#c3,#72
	db #c1,#71,#c3,#02,#c4,#03,#c1,#02
.l697b equ $ + 6
	db #c4,#52,#c3,#02,#ca,#52,#e4,#c4
	db #94,#c3,#94,#c4,#94,#94,#e5,#74
	db #74,#74,#c5,#74,#c4,#e3,#b4,#b4
	db #c3,#b4,#c5,#b4,#e5,#c7,#94,#ca
.l6996 equ $ + 1
	db #94,#f0,#e0,#c0,#06,#06,#c1,#a5
	db #95,#06,#c0,#a5,#a5,#c1,#95,#75
.l69ac equ $ + 7
	db #46,#56,#06,#95,#c5,#55,#00,#e1
	db #c5,#03,#c3,#23,#43,#c1,#53,#03
.l69b8 equ $ + 3
	db #92,#c5,#52,#e7,#c0,#a4,#94,#c1
	db #74,#54,#94,#c0,#74,#74,#c1,#54
.l69cc equ $ + 7
	db #44,#05,#05,#94,#54,#c5,#04,#01
	db #e0,#02,#10,#06,#02,#07,#01,#01
	db #f0,#02,#10,#0a,#04,#07,#01,#02
	db #7c,#03,#18,#06,#03,#07,#01,#03
	db #e0,#04,#10,#08,#1e,#07,#01,#04
	db #e0,#04,#10,#01,#06,#07,#01,#04
	db #e0,#04,#04,#06,#74,#3f,#01,#04
	db #e0,#04,#10,#12,#06,#07,#01,#09
	db #80,#01,#10,#18,#04,#3f,#01,#04
	db #44,#04,#10,#09,#06,#07,#01,#35
	db #e0,#03,#25,#01,#04,#3f,#01,#04
.l6a24 equ $ + 7
	db #4e,#04,#10,#70,#10,#07,#01,#40
	db #04,#a0,#ff,#01,#ff,#00,#00,#00
	db #01,#00,#03,#68,#01,#00,#00,#01
	db #ff,#04,#38,#01,#02,#00,#04,#10
	db #03,#00,#01,#03,#ff,#02,#00,#00
	db #04,#00,#06,#90,#04,#00,#00,#01
	db #ff,#04,#50,#02,#06,#00,#06,#10
	db #06,#00,#70,#14,#ff,#01,#00,#00
	db #01,#00,#07,#10,#06,#6e,#ff,#08
	db #ff,#00,#00,#00,#02,#00,#04,#00
	db #14,#a0,#7f,#01,#ff,#00,#00,#00
	db #01,#00,#06,#00,#03,#80,#00,#09
	db #ff,#01,#00,#00,#03,#00,#0a,#00
	db #df,#00,#00,#ff,#ff,#00,#00,#20
	db #01,#00,#05,#00,#80,#f1,#79,#00
	db #ff,#00,#00,#00,#01,#00,#09,#00
	db #06,#06,#00,#ff,#ff,#00,#00,#00
	db #01,#00,#08,#30,#09,#f4,#ff,#20
	db #ff,#01,#00,#00,#01,#00,#0a,#80
	db #08,#04,#00,#04,#ff,#03,#00,#00
	db #01,#00,#00,#00,#bd,#00,#00,#08
	db #ff,#00,#00,#00,#01,#00,#01,#80
	db #08,#00,#00,#01,#ff,#04,#e1,#08
	db #01,#00,#02,#80,#08,#00,#00,#01
	db #ff,#04,#f7,#09,#01,#00,#02,#80
	db #08,#00,#00,#01,#ff,#04,#06,#a6
	db #01,#00,#02,#80,#08,#00,#00,#01
	db #ff,#04,#77,#07,#01,#00,#02,#80
	db #08,#04,#00,#04,#ff,#03,#00,#00
.l6b08 equ $ + 3
	db #01,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b2b equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b38 equ $ + 3
.l6b37 equ $ + 2
	db #00,#00,#00,#00,#12,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b4e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b74 equ $ + 7
.l6b73 equ $ + 6
.l6b71 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#3f,#00
.l6b76 equ $ + 1
.l6b75
	db #06,#91,#61
;
.init_music    		; added by Megachur
;
	add #80
	ld (l6152),a    ; added by Megachur
	jp play_music
;
.music_info
	db "Rainbow Islands (1989)(Ocean Software)(Steve Turner)",0
	db "",0

	read "music_end.asm"
