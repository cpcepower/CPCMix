; Music of Yogi Bear (1987)(Piranha)()()
; Ripped by Megachur the 29/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "YOGIBEAR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #5e70
FIRST_THEME				equ 1
LAST_THEME				equ 3	; 1 -> 3

	read "music_header.asm"

;
.real_play_music
;
	ld ix,l9381
	call l5e92
	ld ix,l93b0
	call l5e92
	ld ix,l93df
	call l5e92
	call l5f9f
	ld a,(l9380)
	dec a
	and #03
	ld (l9380),a
	ret
.l5e92
	ld a,(ix+#01)
	and a
	jr z,l5ec1
	ld a,(ix+#2d)
	and a
	jr nz,l5ea7
	ld a,(ix+#0f)
	and a
	jr z,l5ecf
	dec (ix+#0f)
.l5ea7
	ld a,(ix+#2a)
	and a
	jr z,l5eb6
	call l5f32
	call l6051
	call l6085
.l5eb6
	dec (ix+#2d)
	ret p
	ld a,(ix+#2e)
	ld (ix+#2d),a
	ret
.l5ec1
	xor a
	ld (ix+#01),a
	ld (ix+#0e),a
	ld (ix+#12),a
	ld (ix+#13),a
	ret
.l5ecf
	call l6131
	cp #80
	jr c,l5f19
	and #7f
	ld (ix+#2a),a
	add a
	ld e,a
	ld d,#00
	ld hl,l6a87
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#12),e
	ld (ix+#13),d
	ld a,d
	or e
	jr z,l5ef3
	ld a,(ix+#0d)
.l5ef3
	ld (ix+#0e),a
	ld a,(ix+#29)
	and a
	call z,l6131
	ld (ix+#0f),a
	ld (ix+#02),#00
	ld a,(ix+#04)
	ld (ix+#03),a
	ld e,(ix+#2c)
	ld d,#00
	ld hl,l615c
	add hl,de
	ld a,(hl)
	ld (ix+#2b),a
	jr l5ea7
.l5f19
	add a
	and #3f
	ld e,a
	ld d,#00
	ld hl,l6a61
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call l5f31
	ld a,(ix+#01)
	and a
	jr nz,l5ecf
	ret
.l5f31
	jp (hl)
.l5f32
	ld a,(ix+#0e)
	and a
	ret z
	dec (ix+#03)
	ret nz
	ld l,(ix+#02)
	sla l
	ld h,#00
	ld de,l6a59
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp (hl)
.l5f4b
	ld a,(ix+#0e)
	cp (ix+#06)
	jr z,l5f60
	add (ix+#05)
	ld (ix+#0e),a
	ld a,(ix+#04)
	ld (ix+#03),a
	ret
.l5f60
	ld (ix+#02),#01
.l5f64
	ld a,(ix+#0e)
	cp (ix+#09)
	jr z,l5f79
	add (ix+#08)
	ld (ix+#0e),a
	ld a,(ix+#07)
	ld (ix+#03),a
	ret
.l5f79
	ld (ix+#02),#02
.l5f7d
	ld a,(ix+#0f)
	cp (ix+#0a)
	jr c,l5f8a
	ld (ix+#03),#01
	ret
.l5f8a
	ld (ix+#02),#03
.l5f8e
	ld a,(ix+#0e)
	add (ix+#0c)
	ret m
	ld (ix+#0e),a
	ld a,(ix+#0b)
	ld (ix+#03),a
	ret
.l5f9f
	ld hl,(l9393)
	ld (l940e),hl
	ld hl,(l93c2)
	ld (l9410),hl
	ld hl,(l93f1)
	ld (l9412),hl
	ld a,(l9397)
	ld (l9414),a
	ld de,l6168
	ld hl,(l940b)
	ld h,#00
	add hl,de
	ld a,(hl)
	add a
	ld hl,(l93dc)
	ld h,#00
	add hl,de
	or (hl)
	add a
	ld hl,(l93ad)
	ld h,#00
	add hl,de
	or (hl)
	cpl
	and #3f
	ld (l9415),a
	ld a,(l938f)
	ld (l9416),a
	ld a,(l93be)
	ld (l9417),a
	ld a,(l93ed)
	ld (l9418),a
	ret
;
.init_music
;
	ld hl,l937f
	cp (hl)
	ret z
	ld (hl),a
	ld l,a
	ld h,#00
	add hl,hl
	ld e,l
	ld d,#00
	add hl,hl
	add hl,de
	ld de,l6244
	add hl,de
	ex de,hl
	xor a
	ld (l9382),a
	ld (l93b1),a
	ld (l93e0),a
	push ix
	ld ix,l9381
	call l602d
	ld ix,l93b0
	call l602d
	ld ix,l93df
	call l602d
	pop ix
	ld a,#01
	ld (l9382),a
	ld (l93b1),a
	ld (l93e0),a
	ret
.l602d
	ld a,(de)
	inc de
	ld l,a
	ld a,(de)
	inc de
	ld h,a
	or l
	ret z
	ld (ix+#10),l
	ld (ix+#11),h
	ld (ix+#0f),#00
	ld (ix+#2d),#00
	push ix
	pop hl
	ld bc,#0019
	add hl,bc
	ld (ix+#17),l
	ld (ix+#18),h
	ret
.l6051
	ld a,(ix+#2b)
	and a
	ret z
	ld e,a
	ld d,#00
	ld hl,l61ec
	add hl,de
	ld a,(hl)
	and a
	jp p,l606d
	and #7f
	ld (ix+#2b),a
	ld e,a
	ld hl,l61ec
	add hl,de
	ld a,(hl)
.l606d
	inc (ix+#2b)
	add (ix+#2a)
	add a
	ld e,a
	ld d,#00
	ld hl,l6a87
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#12),e
	ld (ix+#13),d
	ret
.l6085
	ld a,(l9380)
	and a
	ret nz
	ld e,(ix+#2c)
	ld d,#00
	ld hl,l6150
	add hl,de
	ld a,(hl)
	and a
	ret z
	ld a,(ix+#12)
	xor #01
	ld (ix+#12),a
	ret
.l609f
	ld (ix+#01),#00
	ret
.l60a4		; reinit music !
	call l6131
	add a
	ld e,a
	ld d,#00
	ld hl,l61f8
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	call l6149
	ret
.l60b6
	call l6131
	add a
	ld e,a
	ld d,#00
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,(ix+#10)
	ld (hl),a
	inc hl
	ld a,(ix+#11)
	ld (hl),a
	inc hl
	ld (ix+#17),l
	ld (ix+#18),h
	ld hl,l620a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	call l6149
	ret
.l60de
	ld l,(ix+#17)
	ld h,(ix+#18)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (ix+#17),l
	ld (ix+#18),h
	call l6149
	ret
.l60f2
	call l6131
	ld (ix+#29),a
	ret
.l60f9
	call l6131
	ld (ix+#2c),a
	ld l,a
	ld h,#00
	add hl,hl
	ld e,l
	ld d,h
	add hl,hl
	add hl,hl
	add hl,de
	ld de,l6174
	add hl,de
	ex de,hl
	push ix
	pop hl
	ld bc,#0004
	add hl,bc
	ex de,hl
	ld bc,#000a
	ldir
	ret
.l611b
	call l6131
	ld (ix+#15),a
	ret
.l6122
	call l6131
	ld (ix+#16),a
	ret
.l6129
	call l6131
	ld (ix+#2e),a
	ret
.l6130
	ret
.l6131
	ld l,(ix+#10)
	ld h,(ix+#11)
	ld a,(hl)
	inc hl
	ld (ix+#10),l
	ld (ix+#11),h
	ret
	call l6131
	ld e,a
	call l6131
	ld d,a
	ret
.l6149
	ld (ix+#10),e
	ld (ix+#11),d
	ret
.l6150
	db #00,#00,#00,#00,#25,#24,#24,#00
.l615c equ $ + 4
	db #23,#00,#00,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#07,#00
.l6168
	db #09,#01,#01,#01,#01,#01,#01,#09
.l6174 equ $ + 4
	db #01,#01,#09,#01,#01,#01,#0f,#01
	db #ff,#00,#ff,#01,#ff,#0e,#01,#01
	db #0f,#01,#fe,#07,#00,#01,#ff,#0e
	db #01,#01,#0f,#01,#ff,#00,#ff,#01
	db #ff,#0e,#01,#01,#0f,#01,#fd,#00
	db #ff,#01,#ff,#0e,#01,#01,#0f,#01
	db #ff,#0c,#00,#01,#ff,#0e,#01,#01
	db #0f,#01,#ff,#0c,#00,#01,#ff,#0e
	db #00,#00,#09,#00,#00,#09,#00,#01
	db #ff,#09,#01,#01,#0f,#2b,#ff,#04
	db #ff,#08,#ff,#05,#01,#01,#0f,#04
	db #ff,#00,#ff,#01,#ff,#0e,#01,#01
	db #0f,#01,#ff,#00,#ff,#01,#ff,#0e
	db #01,#01,#0f,#02,#ff,#00,#ff,#01
	db #ff,#0e,#01,#01,#0c,#01,#fe,#04
.l61ec equ $ + 4
	db #00,#01,#ff,#0b,#00,#80,#00,#01
	db #07,#10,#82,#00,#01,#02,#0a,#87
.l61f8
	dw l625d,l62af,l6341,l625d
	dw l62af,l6341,l63d1,l63f3
.l620a equ $ + 2
	dw l641a,l643c,l643c,l643d
	dw l6441,l6441,l6441,l6441
	dw l6441,l6441,l6441,l6441
	dw l6441,l6442,l6467,l646b
	dw l6490,l64b5,l64ca,l64d7
	dw l64ec,l64f2,l6507,l651b
	dw l652f,l6543,l655a,l6590
.l6244 equ $ + 4
	dw l65c8,l65e4,l625c,l625c
	dw l625c,l625d,l62af,l6341
	dw l625d,l62af,l6341,l63d1
	dw l63f3,l641a
.l625d equ $ + 1
.l625c
	db #00,#12,#03,#02,#13,#02,#02,#02
	db #11,#02,#13,#02,#13,#02,#13,#02
	db #13,#02,#15,#02,#16,#02,#17,#02
	db #18,#02,#19,#02,#18,#02,#13,#02
	db #13,#02,#13,#02,#02,#02,#11,#02
	db #15,#02,#16,#02,#17,#02,#18,#02
	db #19,#02,#18,#02,#1a,#02,#1b,#02
	db #1b,#02,#1a,#02,#1c,#02,#15,#02
	db #16,#02,#17,#02,#18,#02,#19,#02
	db #18,#02,#1b,#02,#1b,#02,#1a,#02
.l62af equ $ + 3
	db #1a,#01,#00,#12,#03,#02,#0d,#02
	db #02,#02,#13,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
	db #10,#02,#14,#02,#10,#02,#12,#02
.l6341 equ $ + 5
	db #10,#02,#14,#01,#01,#12,#03,#02
	db #0c,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
	db #0f,#02,#0c,#02,#0c,#02,#0e,#02
.l63d1 equ $ + 5
	db #0f,#02,#0c,#01,#02,#12,#03,#0b
	db #04,#0a,#01,#c4,#c2,#c1,#c4,#c2
	db #c1,#c4,#c2,#c4,#c2,#c1,#c4,#c2
	db #c1,#c4,#c2,#c6,#c4,#c2,#c6,#c8
.l63f3 equ $ + 7
	db #c6,#c4,#c8,#0a,#0f,#c1,#00,#12
	db #03,#0b,#02,#0a,#01,#99,#99,#a5
	db #99,#a5,#a5,#99,#a5,#96,#96,#a2
	db #96,#a2,#a2,#96,#a2,#92,#92,#9e
	db #92,#94,#94,#a0,#94,#99,#99,#a5
	db #99,#a5,#a5,#99,#a5,#00
.l641a
	db #12,#03,#0b,#04,#0a,#01,#c1,#bf
	db #bd,#c1,#bf,#bd,#c1,#bf,#c1,#bf
	db #bd,#c1,#bf,#bd,#c1,#bf,#c2,#c1
	db #bf,#c2,#c4,#c2,#c1,#c4,#0a,#0f
.l6441 equ $ + 7
.l643d equ $ + 3
.l643c equ $ + 2
	db #bd,#00,#03,#0a,#0f,#80,#03,#03
.l6442
	db #0a,#01,#0b,#09,#9e,#9e,#0b,#00
	db #ae,#0b,#09,#9b,#99,#99,#0b,#00
	db #ae,#0b,#09,#9b,#9e,#9e,#0b,#00
	db #ae,#0b,#09,#9b,#99,#99,#0b,#00
.l6467 equ $ + 5
	db #ae,#0b,#09,#9b,#03,#0a,#0f,#80
.l646b equ $ + 1
	db #03,#0a,#01,#0b,#09,#a0,#a0,#0b
	db #00,#ae,#0b,#09,#9d,#9b,#9b,#0b
	db #00,#ae,#0b,#09,#9d,#a0,#a0,#0b
	db #00,#ae,#0b,#09,#9d,#9b,#9b,#0b
.l6490 equ $ + 6
	db #00,#ae,#0b,#09,#9d,#03,#0a,#01
	db #0b,#09,#99,#99,#0b,#00,#ae,#0b
	db #09,#96,#94,#94,#0b,#00,#ae,#0b
	db #09,#96,#99,#99,#0b,#00,#ae,#0b
	db #09,#96,#94,#94,#0b,#00,#ae,#0b
.l64b5 equ $ + 3
	db #09,#96,#03,#0a,#01,#0b,#0b,#bd
	db #c9,#c9,#c9,#bd,#c9,#bd,#c9,#bd
	db #c9,#c9,#c9,#bd,#c9,#bd,#c9,#03
.l64ca
	db #0a,#01,#0b,#00,#80,#ae,#ae,#80
.l64d7 equ $ + 5
	db #ad,#ad,#ac,#ac,#03,#0a,#01,#0b
	db #0b,#bc,#c8,#c8,#c8,#bc,#c8,#bc
	db #c8,#bc,#c8,#c8,#c8,#bc,#c8,#bc
.l64ec equ $ + 2
	db #c8,#03,#0a,#1f,#0b,#00,#80,#03
.l64f2
	db #0a,#01,#0b,#0b,#b6,#c2,#c2,#c2
	db #b6,#c2,#b6,#c2,#b6,#c2,#c2,#c2
.l6507 equ $ + 5
	db #b6,#c2,#b6,#c2,#03,#0a,#01,#0b
	db #04,#b1,#b6,#b8,#ba,#b8,#b6,#b1
	db #0a,#05,#b6,#0a,#03,#b4,#b3,#b1
.l651b equ $ + 1
	db #03,#0a,#01,#0b,#04,#b3,#b8,#ba
	db #bc,#ba,#b8,#b3,#0a,#05,#b8,#0a
.l652f equ $ + 5
	db #03,#b6,#b5,#b3,#03,#0a,#01,#0b
	db #04,#b8,#bd,#bf,#c1,#bf,#bd,#b8
	db #0a,#05,#bd,#0a,#03,#bb,#ba,#b8
.l6543 equ $ + 1
	db #03,#0a,#01,#0b,#04,#ba,#ba,#b3
	db #b3,#b8,#b8,#b1,#b1,#0b,#05,#ba
	db #ba,#b3,#b3,#b8,#b8,#b1,#b1,#03
.l655a
	db #0a,#01,#0b,#04,#b1,#b1,#80,#b1
	db #b1,#80,#b1,#b1,#80,#80,#0a,#03
	db #bb,#ba,#b8,#0a,#01,#b3,#b3,#80
	db #b3,#b3,#80,#b3,#b3,#80,#80,#0a
	db #03,#bd,#bc,#ba,#0a,#01,#b8,#b8
	db #80,#b8,#b8,#80,#b8,#b8,#80,#80
.l6590 equ $ + 6
	db #0a,#03,#bb,#ba,#b8,#03,#0a,#01
	db #0b,#04,#bd,#bd,#ba,#ba,#b6,#b6
	db #b1,#b1,#b6,#b6,#ba,#ba,#bd,#bd
	db #c1,#c1,#c2,#c2,#bf,#bf,#bc,#bc
	db #b8,#b8,#b8,#b8,#bc,#bc,#bf,#bf
	db #c2,#c2,#c1,#c1,#bd,#bd,#b8,#b8
	db #b5,#b5,#bd,#bd,#c1,#c1,#c4,#c4
.l65c8 equ $ + 6
	db #c1,#c1,#0a,#1f,#c2,#03,#0a,#07
	db #0b,#04,#c2,#c1,#c2,#c1,#0a,#03
	db #c2,#0a,#1b,#bf,#0a,#07,#bd,#bc
	db #bd,#0a,#03,#b9,#b8,#b6,#0a,#1b
.l65e4 equ $ + 2
	db #b6,#03,#0a,#0f,#0b,#08,#bd,#bf
	db #bc,#bc,#bd,#b9,#b6,#b6,#03
.l65f1
	ld ix,l6783
	call l6646
	ld ix,l6797
	call l6646
	ld ix,l67ab
	call l6646
	ld hl,(l6789)
	ld (l940e),hl
	ld hl,(l679d)
	ld (l9410),hl
	ld hl,(l67b1)
	ld (l9412),hl
	ld a,(l678e)
	ld (l9414),a
	ld a,(l67ae)
	add a
	ld c,a
	ld a,(l679a)
	or c
	add a
	ld c,a
	ld a,(l6786)
	or c
	cpl
	and #3f
	ld (l9415),a
	ld a,(l6787)
	ld (l9416),a
	ld a,(l679b)
	ld (l9417),a
	ld a,(l67af)
	ld (l9418),a
	ret
.l6646
	ld a,(ix+#10)
	and a
	jr z,l6678
	ld (ix+#11),a
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	push hl
	ld de,l6869
	add hl,de
	push ix
	pop de
	ld bc,#0008
	ldir
	pop bc
	ld hl,l6921
	add hl,bc
	ld bc,#0008
	ldir
	ld (ix+#10),#00
	ld (ix+#12),#00
	ld (ix+#13),#00
.l6678
	ld a,(ix+#05)
	and a
	jr z,l6681
	dec (ix+#05)
.l6681
	ld a,(ix+#11)
	and a
	jr z,l6699
	ld l,(ix+#0a)
	ld de,l66bf
	call l66b6
	ld l,(ix+#0c)
	ld de,l66cb
	call l66b6
.l6699
	ld a,(ix+#05)
	and a
	ret nz
	dec (ix+#00)
	ret nz
	ld a,(ix+#02)
	ld (ix+#00),a
	ld a,(ix+#04)
	add (ix+#01)
	jp p,l66b2
	xor a
.l66b2
	ld (ix+#04),a
	ret
.l66b6
	ld h,#00
	add hl,hl
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp (hl)
.l66bf
	dw l66db,l66dc,l66f1,l66db
.l66cb equ $ + 4
	dw l66db,l66db,l66db,l6706
	dw l66db,l672f,l66db,l66db
	dw l66db,l671e
.l66db
	ret
.l66dc
	ld a,(ix+#05)
	and (ix+#09)
	ret nz
	ld a,(ix+#06)
	sub (ix+#08)
	ld (ix+#06),a
	ret nc
	dec (ix+#07)
	ret
.l66f1
	ld a,(ix+#05)
	and (ix+#09)
	ret nz
	ld a,(ix+#06)
	add (ix+#08)
	ld (ix+#06),a
	ret nc
	inc (ix+#07)
	ret
.l6706
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld (ix+#06),h
	ld (ix+#07),l
	ld a,(ix+#05)
	and #03
	xor (ix+#0b)
	ld (ix+#0b),a
	ret
.l671e
	ld a,(ix+#05)
	and (ix+#09)
	ret nz
	ld a,(ix+#06)
	dec a
	xor #02
	ld (ix+#06),a
	ret
.l672f
	ld a,(ix+#12)
	and a
	jr z,l6739
	dec (ix+#12)
	ret
.l6739
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	ld e,(ix+#13)
	ld d,#00
	add hl,de
	ld a,(hl)
	ld (ix+#12),a
	ld (ix+#05),a
	sub #03
	jr c,l6755
	jr z,l6755
	ld (ix+#05),a
.l6755
	ld (ix+#04),#0f
	inc hl
	ld l,(hl)
	ld h,#00
	ld de,l69d9
	add hl,de
	ld l,(hl)
	ld h,#00
	add hl,hl
	ld de,l6a87
	add hl,de
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	ld (ix+#07),a
	inc (ix+#13)
	inc (ix+#13)
	ld a,(ix+#13)
	sub (ix+#0f)
	ret nz
	ld (ix+#13),a
	ret
.l6789 equ $ + 6
.l6787 equ $ + 4
.l6786 equ $ + 3
.l6783
	db #00,#00,#00,#00,#00,#00,#00,#00
.l678e equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l679a equ $ + 7
.l6797 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l679d equ $ + 2
.l679b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l67b1 equ $ + 6
.l67af equ $ + 4
.l67ae equ $ + 3
.l67ab
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#07,#20,#07,#20
	db #07,#23,#07,#25,#07,#26,#07,#26
	db #07,#27,#07,#27,#07,#30,#07,#30
	db #07,#27,#07,#27,#07,#26,#07,#26
	db #07,#25,#07,#23,#0f,#27,#0f,#32
	db #0f,#22,#0f,#29,#0f,#27,#0f,#32
	db #07,#22,#07,#28,#0f,#29,#07,#30
	db #07,#34,#07,#37,#07,#39,#07,#37
	db #07,#35,#07,#34,#07,#32,#07,#30
	db #07,#34,#07,#37,#07,#39,#07,#37
	db #07,#35,#07,#34,#07,#32,#07,#27
	db #07,#2b,#07,#32,#07,#34,#07,#32
	db #07,#30,#07,#2b,#07,#29,#07,#25
	db #07,#29,#07,#30,#07,#32,#07,#30
	db #07,#2a,#07,#29,#07,#27,#0a,#27
	db #0a,#22,#0a,#24,#14,#27,#0a,#22
	db #0a,#24,#0a,#22,#0a,#27,#0a,#22
	db #0a,#24,#14,#27,#0a,#22,#0a,#24
	db #0a,#22,#0a,#25,#0a,#20,#0a,#22
	db #14,#25,#0a,#20,#0a,#22,#0a,#20
	db #0a,#25,#0a,#20,#0a,#22,#14,#25
.l6869 equ $ + 6
	db #0a,#20,#0a,#22,#0a,#20,#01,#ff
	db #01,#00,#00,#00,#00,#00,#01,#ff
	db #01,#01,#0f,#00,#00,#00,#01,#ff
	db #01,#01,#0a,#00,#00,#00,#01,#ff
	db #01,#01,#0f,#00,#00,#00,#01,#ff
	db #01,#01,#0f,#00,#00,#00,#01,#ff
	db #01,#01,#0f,#00,#00,#00,#01,#ff
	db #01,#01,#0f,#00,#00,#00,#01,#ff
	db #01,#01,#0c,#0a,#15,#00,#01,#ff
	db #01,#01,#0f,#0a,#3f,#00,#01,#fd
	db #01,#01,#0f,#0b,#ef,#00,#01,#fd
	db #01,#01,#0f,#0a,#c9,#00,#01,#fd
	db #01,#01,#0f,#0a,#86,#00,#01,#ff
	db #01,#01,#0f,#0a,#64,#00,#01,#f9
	db #01,#01,#0f,#0a,#fa,#01,#01,#fb
	db #01,#01,#0f,#0f,#7f,#00,#02,#ff
	db #02,#01,#0f,#30,#0c,#01,#01,#ff
	db #01,#01,#0f,#0f,#c9,#00,#01,#fb
	db #01,#01,#0f,#0f,#71,#00,#01,#fe
	db #01,#09,#0f,#0a,#12,#00,#01,#ff
	db #01,#09,#0f,#0a,#01,#00,#02,#ff
	db #02,#09,#0f,#01,#28,#00,#02,#ff
	db #02,#09,#0f,#01,#28,#00,#01,#ff
.l6921 equ $ + 6
	db #01,#09,#0f,#02,#ef,#00,#00,#00
	db #00,#00,#00,#bf,#67,#00,#00,#00
	db #00,#15,#03,#31,#68,#38,#00,#00
	db #00,#00,#03,#df,#67,#80,#00,#00
	db #00,#15,#03,#bf,#67,#20,#00,#00
	db #00,#10,#03,#df,#67,#12,#00,#00
	db #00,#45,#03,#f1,#67,#40,#00,#00
	db #00,#30,#03,#31,#68,#3e,#01,#01
	db #01,#00,#00,#bf,#67,#00,#40,#00
	db #02,#00,#07,#bf,#67,#00,#0c,#01
	db #01,#00,#07,#bf,#67,#00,#0b,#00
	db #01,#00,#00,#00,#00,#00,#08,#00
	db #02,#05,#00,#00,#00,#00,#01,#01
	db #01,#00,#00,#00,#00,#00,#1a,#00
	db #02,#00,#00,#00,#00,#00,#09,#00
	db #02,#00,#07,#00,#00,#00,#00,#00
	db #00,#01,#01,#00,#00,#00,#01,#01
	db #02,#01,#00,#00,#00,#00,#0c,#03
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #00,#08,#00,#bf,#67,#00,#00,#00
	db #00,#10,#01,#bf,#67,#00,#01,#00
	db #01,#01,#00,#00,#00,#00,#01,#00
	db #02,#01,#00,#00,#00,#00,#11,#00
.l69d9 equ $ + 6
	db #02,#1f,#00,#00,#00,#00,#01,#02
	db #03,#04,#05,#05,#07,#08,#09,#0a
	db #0b,#0c,#00,#00,#00,#00,#0d,#0e
	db #0f,#10,#11,#12,#13,#14,#15,#16
	db #17,#18,#00,#00,#00,#00,#19,#1a
	db #1b,#1c,#1d,#1e,#1f,#20,#21,#22
	db #23,#24,#00,#00,#00,#00,#25,#26
	db #27,#28,#29,#2a,#2b,#2c,#2d,#2e
	db #2f,#30,#00,#00,#00,#00,#31,#32
	db #33,#34,#35,#35,#37,#38,#39,#3a
	db #3b,#3c,#00,#00,#00,#00,#3d,#3e
	db #3f,#40,#41,#42,#43,#44,#45,#46
	db #47,#48,#00,#00,#00,#00,#49,#4a
	db #4b,#4c,#4d,#4e,#4f,#50,#51,#52
	db #53,#54,#00,#00,#00,#00,#55,#56
	db #57,#58,#59,#5a,#5b,#5c,#5d,#5e
	db #5f,#60,#00,#00,#00,#00
.l6a59
	dw l5f4b,l5f64,l5f7d,l5f8e
.l6a61
	dw l609f,l60a4,l60b6,l60de
	dw l6130,l6130,l6130,l6130
	dw l6130,l6130,l60f2,l60f9
	dw l6130,l6130,l6130,l611b
.l6a87 equ $ + 6
	dw l6130,l6122,l6129,#0000
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a6,#0647
	dw #05ed,#0597,#0547,#04fb
	dw #04b4,#0470,#0430,#03f4
	dw #03bb,#0386,#0353,#0323
	dw #02f6,#02cb,#02a3,#027d
	dw #025a,#0238,#0218,#01fa
	dw #01dd,#01c3,#01a9,#0191
	dw #017b,#0165,#0151,#013e
	dw #012d,#011c,#010c,#00fd
	dw #00ee,#00e1,#00d4,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0086,#007e
	dw #0077,#0070,#006a,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0043,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
	;
.send_data_to_ay
.l6c0e
	;
	ld hl,l940e
	ld c,#00
	ld b,#0b
.l6c15
	ld a,(hl)
	push bc
	push af
	ld b,#f4
	out (c),c
	ld b,#f6
	in a,(c)
	and #30
	ld c,a
	or #c0
	out (c),a
	out (c),c
	pop af
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	and #30
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	inc c
	inc hl
	djnz l6c15
	ret

	;org &937f
.l937f
	db #00,#00
.l9382 equ $ + 2
.l9381 equ $ + 1
.l9380
	db #00,#01,#00,#00,#00,#00,#00,#00
.l938f equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9397 equ $ + 7
.l9393 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #9a,#93,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l93ad equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l93b1 equ $ + 1
.l93b0
	db #02,#00,#00,#00,#00,#00,#00,#00
.l93be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l93c2 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#c9
	db #93,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l93df equ $ + 7
.l93dc equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#03
.l93e0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l93ed equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l93f1 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#f8,#93
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l940e equ $ + 6
.l940b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9417 equ $ + 7
.l9416 equ $ + 6
.l9415 equ $ + 5
.l9414 equ $ + 4
.l9412 equ $ + 2
.l9410
	db #00,#00,#00,#00,#00,#3f,#00,#00
.l9418
	db #00,#00,#5c,#32,#01,#01,#7a,#32
	db #01,#01,#d6,#32,#01,#01,#de,#32
	db #01,#01,#fb,#32,#01,#01,#07,#34
	db #01,#01,#37,#34,#01,#01,#80,#34
	db #01,#01,#98,#34,#01,#01,#c2,#34
	db #01,#01,#cf,#34,#01,#01,#e2,#34
	db #01,#01,#e5,#34,#01,#01,#e7,#34
	db #01,#01,#20,#35,#01,#01,#28,#35
	db #01,#01,#55,#35,#01,#01,#05,#23
	db #7f,#87,#a4,#19,#49,#92,#aa,#09
	db #16,#29,#2c,#2e,#67,#6f,#9c
;
; #6bd7
; ld hl,#8fde
; call #6bf4	; set couleurs
; call #6c0e	; play music
; ret
;
.play_music	; added by Megachur
;
	call real_play_music
	jp send_data_to_ay
;
.music_info
	db "Yogi Bear (1987)(Piranha)()",0
	db "",0

	read "music_end.asm"
