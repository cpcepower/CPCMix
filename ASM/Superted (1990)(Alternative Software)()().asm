; Music of Superted (1990)(Alternative Software)()()
; Ripped by Megachur the 05/02/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SUPERTED.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #aaf8

	read "music_header.asm"

	jp lab1b	; play
	jp lad9f	; init ?
	jp lad19	; sound fx
	jp lab65

.lab0b equ $ + 7
.lab06 equ $ + 2
	db #08,#08,#01,#c9,#c9,#c9,#01,#91
.lab0c
	ld hl,#0000
	ld (lab21),hl
	ld c,#07
	ld a,#2a
	call laebf
	jr lab23
;
.play_music
.lab1b
;
	push af
	push bc
	push de
	push hl
	push ix
.lab21
	jr lab0c
.lab23
	call ladab
	call lad62
	ld hl,lac81
	ld a,(hl)
	ld bc,(lab0b)
	sub c
	ld (hl),a
	sbc a
	ld (lac80),a
	jr nc,lab3d
	ld a,#f0
	add (hl)
	ld (hl),a
.lab3d
	call lac82
	ld ix,lab7d
	call labb3
	ld ix,lab8f
	call labb3
	ld ix,laba1
	call labb3
	sub a
	ld (lac80),a
	ld c,#00
	call laee9
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.lab65
	push af
	push bc
	push de
	push hl
	sub a
	ld (lab06),a
	ld hl,lafdd
	ld (lad0f),hl
	call laddc
	pop hl
	pop de
.lab78
	pop bc
	pop af
	ret
.lab7d equ $ + 2
.lab7b
	db #ff,#ff,#0a
	dw laeb0
.lab86 equ $ + 6
.lab85 equ $ + 5
.lab83 equ $ + 3
	db #00,#04,#0a,#92,#b2,#17,#18
.lab87
	dw lafff
.lab8e equ $ + 5
.lab8b equ $ + 2
.lab8a equ $ + 1
	db #01,#01,#00,#00,#00,#00
.lab8f
	dw lab7b
.lab98 equ $ + 7
.lab97 equ $ + 6
.lab95 equ $ + 4
	db #00,#00,#00,#08,#52,#b1,#17,#18
.lab99
	dw lafe5
.laba1 equ $ + 6
.laba0 equ $ + 5
.lab9d equ $ + 2
.lab9c equ $ + 1
	db #01,#01,#00,#08,#00,#00,#4f,#b0
.labaa equ $ + 7
.laba9 equ $ + 6
.laba7 equ $ + 4
	db #16,#fc,#02,#09,#95,#b2,#0b,#0c
	dw lab78
.labb2 equ $ + 5
.labaf equ $ + 2
.labae equ $ + 1
	db #02,#01,#00,#05,#00,#00
.labb3
	call lac12
	dec (ix+#0d)
	ret nz
	ld a,(ix+#0c)
	ld (ix+#0d),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	inc hl
	inc a
	jr z,lac03
	dec a
	ld c,(ix+#05)
	call laeb8
	ld a,(hl)
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	ld a,(ix+#0f)
	and #03
	jr z,labee
	ld a,#1f
	sub b
	ld c,#06
	bit 2,(ix+#0f)
	call nz,laebf
.labee
	ld a,(ix+#02)
	add (ix+#03)
	ld (ix+#02),a
	add b
	call lae10
	ex de,hl
	ld c,(ix+#04)
	call laeab
	ret
.lac03
	bit 1,(ix+#0f)
	ret z
	res 1,(ix+#0f)
	ld (ix+#0e),a
	jp laebf
.lac12
	ld a,(lac80)
	or a
	ret z
	dec (ix+#08)
	ret nz
	ld a,(ix+#09)
	ld (ix+#08),a
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld a,(hl)
	inc a
	ret z
	inc hl
	dec a
	ld (ix+#06),l
	ld (ix+#07),h
	or a
	ret z
	bit 1,(ix+#0f)
	ret nz
	bit 0,(ix+#0f)
	jr nz,lac64
	rlca
	rlca
	ld hl,lae35
	add (hl)
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	add (hl)
	inc hl
	ld (ix+#02),a
.lac50
	call laea6
	ld (ix+#0d),#01
	ld (ix+#0c),e
	ld (ix+#03),d
	ld (ix+#00),l
	ld (ix+#01),h
	ret
.lac64
	dec a
	rlca
	rlca
	ld c,a
	ld b,#00
	ld hl,lb03d
	add hl,bc
	call laea6
	ld a,(hl)
	ld c,#07
	call laebf
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#02),a
	ex de,hl
	jr lac50
.lac81 equ $ + 1
.lac80
	db #00,#06
.lac82
	ld a,(lab85)
	dec a
	ret nz
	ld hl,(lab83)
	ld a,(hl)
	inc a
	ret nz
	ld hl,(lad0f)
.lac90
	inc hl
	ld a,(hl)
	dec hl
	cp #00
	jr nz,lacb9
	ld a,(hl)
	inc hl
	inc hl
	cp #0b
	jr z,lace8
	cp #34
	jr z,lacdb
	cp #0d
	jr z,lacf8
	cp #c9
	jr z,lad09
	cp #35
	jr z,lad00
	ld hl,lafdd
	ld (lad0f),hl
	sub a
	ld (lab06),a
	ret
.lacb9
	call lad13
	ld (lab86),a
	ld (lab83),de
	call lad13
	ld (lab98),a
	ld (lab95),de
	call lad13
	ld (labaa),a
	ld (laba7),de
	ld (lad0f),hl
	ret
.lacdb
	call laea6
	ex de,hl
	ld (lad11),de
	ld (lad0f),hl
	jr lac90
.lace8
	call laea6
	ld (lab87),de
	call laea6
	ld (lab99),de
	jr lac90
.lacf8
	ld a,(hl)
	ld (lae35),a
	inc hl
	inc hl
	jr lac90
.lad00
	ld a,(hl)
	ld (lab0b),a
	inc hl
	inc hl
	jp lac90
.lad09
	ld hl,(lad11)
	jp lac90
.lad11 equ $ + 2
.lad0f
	db #9c,#b0,#dd
	xor a
.lad13
	call laea6
	ld a,(de)
	inc de
	ret
.lad19
	push af
	push bc
	push de
	push hl
	push ix
	call lad29
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.lad29
	dec a
	cp #08
	ret nc
	ld c,a
	rlca
	rlca
	add c
	add c
	ld c,a
	ld b,#00
	ld hl,laf11
	add hl,bc
	ld a,(hl)
	inc hl
	ld ix,lab7d
	cp #01
	jr z,lad4f
	ld ix,lab8f
	cp #02
	jr z,lad4f
	ld ix,laba1
.lad4f
	ld a,(hl)
	cp (ix+#0e)
	ret c
	ld (ix+#11),#00
	ld (ix+#0e),a
	ld (ix+#10),l
	ld (ix+#11),h
	ret
.lad62
	ld ix,lab7d
	call lad74
	ld ix,lab8f
	call lad74
	ld ix,laba1
.lad74
	ld h,(ix+#11)
	ld a,h
	or a
	ret z
	ld (ix+#11),#00
	ld l,(ix+#10)
	dec hl
	dec hl
	ld a,(hl)
	ld (ix+#02),a
	dec hl
	ld a,(hl)
	dec hl
	dec hl
	ld c,#07
	bit 2,(ix+#0f)
	call nz,laebf
	set 1,(ix+#0f)
	call laea6
	ex de,hl
	jp lac50
;
.init_music
.lad9f
;
	push af
	ld a,#01
	ld (lab06),a
	ld (ladaa),a
	pop af
	ret
.ladaa
	db #00
.ladab
	ld a,(ladaa)
	or a
	ret z
	ld de,lb076
	ld (lad0f),de
	ld a,#01
	ld (lab85),a
	ld (lab97),a
	ld (laba9),a
	ld (lab8a),a
	ld (lab9c),a
	ld (labae),a
	ld a,#38
	ld c,#07
	call laebf
	sub a
	ld (lac80),a
	ld (lac81),a
	ld (ladaa),a
.laddc
	ld hl,lab7b
	ld (lab83),hl
	ld (lab95),hl
	ld (laba7),hl
	ld (lab7d),hl
	ld (lab8f),hl
	ld (laba1),hl
	sub a
	ld (lab8b),a
	ld (lab9d),a
	ld (labaf),a
	ld (lab8e),a
	ld (laba0),a
	ld (labb2),a
	ld c,#08
	sub a
	ld h,a
	ld l,a
	call laebf
	inc c
	jp laeab
.lae10
	push af
	push bc
	push hl
	ld b,#02
	sub #04
.lae17
	cp #30
	jr c,lae20
	sub #30
	inc b
	jr lae17
.lae20
	ld l,a
	ld h,#00
	add hl,hl
	ld de,lae36
	add hl,de
	call laea6
.lae2b
	srl d
	rr e
	djnz lae2b
	pop hl
	pop bc
	pop af
	ret
.lae35
	db #7a
.lae36
	dw #0eee,#0eb7,#0e81,#0e4b
	dw #0e17,#0de3,#0db0,#0d7e
	dw #0d4d,#0d1c,#0cec,#0cbc
	dw #0c8d,#0c5f,#0c32,#0c05
	dw #0bd9,#0bae,#0b83,#0b58
	dw #0b2f,#0b06,#0add,#0ab5
	dw #0a8e,#0a67,#0a41,#0a1b
	dw #09f6,#09d2,#09ae,#098a
	dw #0967,#0945,#0923,#0901
	dw #08e0,#08bf,#089f,#0880
	dw #0861,#0842,#0823,#0806
	dw #07e8,#07cb,#07ae,#0792
	ld hl,(#2b45)
	ld (#3b33),hl
	ld a,(#223b)
	ld d,d
	jr nc,laeec
	ld c,e
	ld c,(hl)
	ld b,a
	ld e,e
.laea6
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ret
.laeab
	push af
	ld a,l
	call laebf
.laeb0
	inc c
	ld a,h
	call laebf
	dec c
	pop af
	ret
.laeb8
	or a
	jr z,laebf
	srl a
	add #08
.laebf
	push af
	push bc
	call laed7
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #80
	out (c),a
	xor #80
	out (c),a
	pop bc
	pop af
	ret
.laed7
	push af
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	in a,(c)
	or c
	out (c),a
	xor c
	out (c),a
	pop af
	ret
.laee9
	push bc
	push af
	push bc
.laeec
	ld c,#0e
	call laed7
	pop bc
	pop af
	ld b,#f7
	ld a,#92
	out (c),a
	push bc
	set 6,c
	ld b,#f6
	out (c),c
	ld b,#f4
	in a,(c)
	pop bc
	push af
	ld a,#82
	out (c),a
	pop af
	pop bc
	ret
.laf11 equ $ + 4
	dw laf3d,#c038,#0101,laf86
	dw #002a,#0100,lafa9,#9038
	dw #0101,lafa9,#c038,#0101
	dw lafb6,#c038,#0101,lafb6
	dw #f038,#0101,lafc3,#5a28
	dw #0100,lafcc
.laf3d equ $ + 4
	db #28,#5a,#00,#01,#01,#00,#0f,#0e
	db #0c,#0a,#09,#06,#06,#02,#03,#00
	db #0a,#0e,#06,#0a,#04,#06,#02,#02
	db #01,#00,#06,#0e,#03,#0a,#02,#06
	db #01,#02,#01,#00,#03,#0e,#02,#0a
	db #02,#06,#01,#02,#01,#00,#02,#0e
	db #01,#0a,#01,#06,#01,#02,#01,#00
	db #02,#0e,#01,#0a,#01,#06,#01,#02
	db #01,#00,#01,#0e,#01,#0a,#01,#06
.laf86 equ $ + 5
	db #01,#02,#00,#00,#ff,#03,#00,#0f
	db #0f,#05,#0c,#0c,#0a,#08,#10,#06
	db #0c,#08,#08,#06,#0a,#04,#08,#03
	db #09,#02,#09,#02,#07,#01,#06,#01
	db #08,#01,#06,#01,#07,#00,#00,#ff
.lafa9
	db #02,#00,#0f,#01,#0a,#ff,#05,#01
.lafb6 equ $ + 5
	db #03,#ff,#00,#00,#ff,#02,#fc,#0f
	db #00,#0a,#00,#05,#00,#03,#00,#00
.lafc3 equ $ + 2
	db #00,#ff,#01,#00,#0a,#00,#05,#00
.lafcc equ $ + 3
	db #00,#00,#ff,#02,#00,#0a,#0f,#05
	db #0a,#03,#08,#02,#05,#01,#05,#01
.lafdd equ $ + 4
	db #05,#00,#00,#ff,#00,#00,#01,#00
.lafe5 equ $ + 4
	db #00,#00,#01,#ff,#a0,#01,#00,#06
	db #00,#04,#00,#03,#00,#02,#00,#02
	db #00,#01,#00,#01,#00,#01,#00,#01
.lafff equ $ + 6
	db #00,#01,#00,#00,#00,#ff,#00,#01
	db #00,#08,#01,#0c,#ff,#07,#00,#05
	db #00,#04,#00,#03,#ff,#03,#00,#03
	db #01,#03,#00,#03,#ff,#03,#00,#03
	db #01,#03,#00,#03,#ff,#02,#00,#02
	db #01,#02,#00,#02,#ff,#02,#00,#02
	db #01,#01,#00,#01,#ff,#01,#00,#01
	db #01,#01,#00,#01,#ff,#01,#00,#01
	db #01,#00
	db #01,#ff
.lb03d
	dw lb049,#1e28,lb058,#3c2a
	dw lb067
.lb049 equ $ + 2
	db #28,#4a,#02,#fc,#06,#14,#03,#12
	db #02,#0f,#01,#0f,#01,#0f,#00,#00
.lb058 equ $ + 1
	db #ff,#02,#f8,#0a,#1e,#05,#18,#01
	db #14,#01,#0a,#00,#00,#00,#01,#ff
.lb067
	db #01,#00,#08,#0f,#03,#08,#02,#04
.lb076 equ $ + 7
	db #02,#04,#01,#04,#00,#00,#ff,#35
	db #00,#91,#00,#0d,#00,#7a,#00,#0b
	db #00,#ff,#af,#e5,#af
	dw lb27c,lb150,lb293,lb281
	dw lb150,lb293,lb286,lb150
	dw lb293,lb290,lb150,lb293
	dw #0034,lb206,lb251,lb26a
	dw lb296,lb256,lb26a,lb2a0
	dw #0034,lb206,lb259,lb26a
	dw lb296,lb25e,lb26a,lb2a0
	dw #000d,#0086,lb153,lb166
	dw lb296,lb230,lb166,lb29b
	dw lb235,lb16b,lb296,lb156
	dw lb16b,lb29b,lb243,lb166
	dw lb296,lb159,lb166,lb29b
	dw lb15d,lb170,lb296,lb163
	dw lb170,lb29b,#000d,#007a
	dw lb195,lb1b8,lb296,#0034
	dw lb175,lb1af,lb1c7,lb296
	dw lb1b3,lb1c7,lb29b,lb1f7
	dw lb1cc,lb296,lb150,lb1cc
	dw lb29b,lb1fd,lb1d1,lb296
	dw lb203,lb1d1,lb29b,#000d
	dw #0076,lb1e0,lb1b8,lb296
	dw #0034,lb175,lb1e4,lb1c7
	dw lb296,lb1e7,lb1c7,lb29b
	dw lb1ea,lb1d6,lb296,lb1f4
	dw lb1db,lb2a5,lb1f4,lb1f4
	dw lb150,#0000
.lb156 equ $ + 6
.lb153 equ $ + 3
.lb150
	db #18,#00,#ff,#18,#06,#ff,#18,#0f
.lb15d equ $ + 5
.lb159 equ $ + 1
	db #ff,#0c,#00,#0a,#ff,#06,#08,#00
.lb166 equ $ + 6
.lb163 equ $ + 3
	db #00,#04,#ff,#18,#0f,#ff,#06,#12
.lb16b equ $ + 3
	db #12,#12,#12,#06,#14,#14,#14,#14
.lb170
	db #06,#10,#10,#10,#10
.lb175
	dw #b198,#b1b8,#b29b,#b19d
	dw #b1bd,#b296,#b1a1,#b1bd
	dw #b29b,#b1a6,#b1c2,#b296
	dw #b1aa,#b1c2,#b29b
.lb195 equ $ + 2
	db #c9,#00,#18,#09,#ff,#08,#09,#0b
	db #0d,#ff,#0c,#0b,#07,#ff,#08,#07
	db #09,#0b,#ff,#0c,#0c,#09,#ff,#08
.lb1af equ $ + 4
	db #09,#0b,#0d,#ff,#0c,#0e,#0b,#ff
.lb1b8 equ $ + 5
.lb1b3
	db #08,#0b,#0d,#0e,#ff,#06,#15,#15
	db #15,#15,#06,#17,#17,#17,#17,#06
.lb1c7 equ $ + 4
	db #18,#18,#18,#18,#06,#1a,#1a,#1a
.lb1d1 equ $ + 6
.lb1cc equ $ + 1
	db #1a,#06,#1c,#1c,#00,#1c,#06,#1b
.lb1d6 equ $ + 3
	db #1b,#00,#1b,#06,#1c,#1c,#1c,#1c
.lb1e0 equ $ + 5
.lb1db
	db #06,#00,#1c,#1c,#1c,#0c,#10,#09
.lb1ea equ $ + 7
.lb1e7 equ $ + 4
.lb1e4 equ $ + 1
	db #ff,#18,#0e,#ff,#18,#13,#ff,#03
	db #15,#00,#00,#00,#00,#00,#13,#13
.lb1f7 equ $ + 4
.lb1f4 equ $ + 1
	db #ff,#18,#15,#ff,#06,#10,#00,#00
.lb1fd equ $ + 2
	db #10,#ff,#06,#0f,#00,#00,#0f,#ff
.lb203
	db #18,#0f,#ff
.lb206
	dw lb22c,lb261,lb296,lb230
	dw lb261,lb29b,lb235,lb26a
	dw lb296,lb239,lb26a,lb29b
	dw lb243,lb261,lb296,lb24d
	dw lb261,lb29b
.lb230 equ $ + 6
.lb22c equ $ + 2
	db #c9,#00,#0c,#0d,#06,#ff,#08,#06
.lb239 equ $ + 7
.lb235 equ $ + 3
	db #08,#0a,#ff,#0c,#08,#04,#ff,#03
	db #0f,#00,#00,#00,#00,#00,#0d,#0b
.lb243 equ $ + 1
	db #ff,#03,#0d,#00,#00,#06,#06,#00
.lb251 equ $ + 7
.lb24d equ $ + 3
	db #00,#00,#ff,#0c,#00,#0a,#ff,#08
.lb259 equ $ + 7
.lb256 equ $ + 4
	db #0b,#00,#08,#ff,#18,#0f,#ff,#08
.lb261 equ $ + 7
.lb25e equ $ + 4
	db #0b,#0a,#0b,#ff,#18,#08,#ff,#03
	db #0d,#00,#0d,#00,#0d,#00,#0d,#0d
.lb26a
	db #03,#0f,#00,#0f,#00,#0f,#0f,#0f
	db #0f,#03,#10,#00,#10,#00,#10,#00
.lb281 equ $ + 7
.lb27c equ $ + 2
	db #10,#10,#08,#01,#06,#0b,#ff,#08
.lb286 equ $ + 4
	db #08,#0f,#0d,#ff,#03,#0d,#00,#00
.lb290 equ $ + 6
	db #00,#00,#00,#0d,#0d,#ff,#18,#0d
.lb296 equ $ + 4
.lb293 equ $ + 1
	db #ff,#0c,#01,#01,#06,#01,#03,#02
.lb2a0 equ $ + 6
.lb29b equ $ + 1
	db #03,#06,#01,#01,#02,#03,#06,#01
.lb2a5 equ $ + 3
	db #01,#01,#01,#06,#01,#01,#01,#00
	db #0c,#0c,#0c,#0c,#0c,#0c,#00,#00
	db #00,#00,#00,#3f,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.music_info
	db "Superted (1990)(Alternative Software)()",0
	db "",0

	read "music_end.asm"
