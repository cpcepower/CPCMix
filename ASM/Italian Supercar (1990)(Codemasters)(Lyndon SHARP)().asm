; Music of Italian Supercar (1990)(Codemasters)(Lyndon SHARP)()
; Ripped by Megachur the 20/03/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ITALIANS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #66e1
FIRST_THEME				equ 1
LAST_THEME				equ 4

	read "music_header.asm"

.l66e4 equ $ + 3
.l66e3 equ $ + 2
.music_end equ $ + 1
.l66e2 equ $ + 1
.l66e1
	db #01,#00,#00,#00,#00
;
.real_init_music
.l66e6
;
	ld iy,l6cd6
	add a
	ld b,a
	add a
	add b
	ld d,#00
	ld e,a
	add iy,de
	ld a,#01
	ld (l69fa),a
	ld (l69fb),a
	ld hl,l6a12
	ld de,l6a13
	ld bc,#0059
	ld (hl),#00
	ldir
	ld b,#03
	ld ix,l6a12
.l670e
	ld l,(iy+#00)
	ld h,(iy+#01)
	inc iy
	inc iy
	ld (ix+#00),l
	ld (ix+#01),h
	ld c,#01
.l6720
	ld a,(hl)
	inc hl
	or a
	jp p,l6730
	sub #28
	and #7f
	ld (ix+#11),a
	inc c
	jr l6720
.l6730
	and #7f
	add a
	ld d,#00
	ld e,a
	ld hl,l6cee
	add hl,de
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	ld (ix+#02),c
	ld de,#001e
	add ix,de
	djnz l670e
	ret
;
.stop_music
.l674e
;
	ld hl,#0000
	xor a
	ld (l6a05),hl
	ld (l6a04),a
	ld (l66e2),a
	ret
;
.play_music
.l675c
;
	ld a,(l66e1)
	or a
	jr z,l677a
	jp m,l6772
	ld (l66e2),a
	dec a
	call l66e6
	xor a
	ld (l66e1),a
	jr l677a
.l6772
	call l674e
	ld (l66e1),a
	jr l67d4
.l677a
	ld a,(l66e2)
	or a
	jr z,l67d4
	ld a,(l69fa)
	dec a
	ld (l69fa),a
	jp p,l67a5
	ld ix,l6a12
	call l6808
	ld ix,l6a30
	call l6808
	ld ix,l6a4e
	call l6808
	ld a,(l69fb)
	ld (l69fa),a
.l67a5
	ld ix,l6a12
	call l692f
	ld (l69fc),hl
	ld a,b
	ld (l6a04),a
	ld ix,l6a30
	call l692f
	ld (l69fe),hl
	ld a,b
	ld (l6a05),a
	ld ix,l6a4e
	call l692f
	ld (l6a00),hl
	ld a,b
	ld (l6a06),a
	ld a,#38
	ld (l6a03),a
.l67d4
	call l70b9
	ld b,#0b
	ld hl,l6a07
	ld de,l69fc
	ld c,#00
.l67e1
	ld a,(de)
	cp (hl)
	jr z,l6802
	ld (hl),a
	push bc
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	ld a,(hl)
	out (c),a
	ld b,#f6
	xor a
	out (c),a
	pop bc
.l6802
	inc c
	inc hl
	inc de
	djnz l67e1
	ret
.l6808
	dec (ix+#09)
	ret p
.l680c
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	push hl
	pop iy
	ld a,(iy+#00)
	inc iy
	cp #ff
	jr nz,l6878
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld d,#00
	ld e,(ix+#02)
	add hl,de
	inc (ix+#02)
	ld a,(hl)
	inc hl
	cp #fe
	jr nz,l683a
	pop hl
	call l674e
	jp l67d4
.l683a
	cp #ff
	jr nz,l6857
	ld (ix+#02),#01
	ld l,(ix+#00)
	ld h,(ix+#01)
	bit 7,(hl)
	jr z,l6856
	ld a,(hl)
	inc hl
	sub #a8
	ld (ix+#11),a
	inc (ix+#02)
.l6856
	ld a,(hl)
.l6857
	bit 7,a
	jr z,l6865
	sub #a8
	ld (ix+#11),a
	ld a,(hl)
	inc hl
	inc (ix+#02)
.l6865
	add a
	ld hl,l6cee
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	jr l680c
.l6878
	cp #c0
	jr c,l68d8
	and #1f
	add a
	ld hl,l6ba7
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld b,(hl)
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#17),a
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1c),a
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ld (ix+#12),l
	ld (ix+#13),h
	ld a,b
	add a
	ld d,#00
	ld e,a
	ld hl,l6b2e
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	ld (ix+#10),a
	ld (ix+#14),a
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#0e),l
	ld (ix+#0f),h
	ld a,(iy+#00)
	inc iy
.l68d8
	cp #80
	jr c,l68ee
	and #3f
	ld (ix+#09),a
	ld (ix+#1b),a
	ld a,(iy+#00)
	ld (ix+#15),a
	inc iy
	jr l68f7
.l68ee
	ld (ix+#15),a
	ld a,(ix+#1b)
	ld (ix+#09),a
.l68f7
	set 6,(ix+#1a)
	push iy
	pop hl
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld a,(ix+#07)
	ld (ix+#06),a
	ld a,(ix+#14)
	ld (ix+#10),a
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	ld a,(ix+#12)
	ld (ix+#04),a
	ld a,(ix+#13)
	ld (ix+#05),a
	ld a,(ix+#1c)
	ld (ix+#1d),a
	ret
.l692f
	dec (ix+#10)
	jr nz,l695a
	ld a,(ix+#14)
	ld (ix+#10),a
.l693a
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	inc (ix+#0e)
	jr nz,l6948
	inc (ix+#0f)
.l6948
	ld a,(hl)
	inc a
	jr nz,l6960
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	jr l693a
.l695a
	ld l,(ix+#0e)
	ld h,(ix+#0f)
.l6960
	ld a,(hl)
	add (ix+#15)
	add (ix+#11)
	sub #24
	jp p,l696d
	xor a
.l696d
	ld hl,l6a6c
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld c,#00
	ld b,(ix+#1a)
	bit 6,b
	jr z,l69c9
	ld d,(ix+#17)
	ld e,(ix+#19)
	bit 7,b
	jr nz,l6990
	bit 0,b
	jr z,l69be
.l6990
	ld a,(ix+#1d)
	or a
	jr z,l699b
	dec (ix+#1d)
	jr l69d1
.l699b
	bit 5,b
	jr nz,l69ae
	ld a,e
	sub (ix+#18)
	ld e,a
	jr nc,l69bb
	set 5,(ix+#1a)
	ld e,#00
	jr l69bb
.l69ae
	ld a,e
	add (ix+#18)
	ld e,a
	cp d
	jr c,l69bb
	res 5,(ix+#1a)
	ld e,d
.l69bb
	ld (ix+#19),e
.l69be
	srl d
	ld a,e
	sub d
	ld e,a
	ld d,#00
	jr nc,l69c8
	dec d
.l69c8
	add hl,de
.l69c9
	ld a,(ix+#1a)
	xor #01
	ld (ix+#1a),a
.l69d1
	ld e,(ix+#04)
	ld d,(ix+#05)
	push de
	pop iy
	dec (ix+#06)
	jr nz,l69f6
	ld a,(ix+#07)
	ld (ix+#06),a
	ld a,(iy+#01)
	inc a
	jr z,l69f6
	inc iy
	push iy
	pop de
	ld (ix+#04),e
	ld (ix+#05),d
.l69f6
	ld b,(iy+#00)
	ret
.l6a00 equ $ + 6
.l69fe equ $ + 4
.l69fc equ $ + 2
.l69fb equ $ + 1
.l69fa
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6a07 equ $ + 5
.l6a06 equ $ + 4
.l6a05 equ $ + 3
.l6a04 equ $ + 2
.l6a03 equ $ + 1
.l6a02
	db #00,#38,#00,#00,#00,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
.l6a13 equ $ + 1
.l6a12
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6a30 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#ca,#85
	db #24,#24,#82,#24,#23,#24,#85,#24
	db #24,#82,#23,#24,#23,#85,#24,#29
	db #29,#82,#29,#28,#29,#85,#2b,#2b
.l6a4e equ $ + 4
	db #2b,#82,#2b,#2d,#2d,#ff,#c1,#82
	db #18,#00,#00,#29,#0e,#5d,#0d,#9c
	db #0c,#e7,#0b,#3c,#0b,#9b,#0a,#02
	db #0a,#73,#09,#eb,#08,#6b,#08,#f2
.l6a6c equ $ + 2
	db #07,#00,#00,#00
	dw #0e29,#0d5d,#0c9c,#0be7
	dw #0b3c,#0a9b,#0a02,#0973
	dw #08eb,#086b,#07f2,#0780
	dw #0714,#06ae,#064e,#05f4
	dw #059e,#054d,#0501,#04b9
	dw #0475,#0435,#03f9,#03c0
	dw #038a,#0357,#0327,#02fa
	dw #02cf,#02a7,#0281,#025d
	dw #023b,#021b,#01fc,#01e0
	dw #01c5,#01ac,#0194,#017d
	dw #0168,#0153,#0140,#012e
	dw #011d,#010d,#00fe,#00f0
	dw #00e2,#00d6,#00ca,#00be
	dw #00b4,#00aa,#00a0,#0097
	dw #008f,#0087,#007f,#0078
	dw #0071,#006b,#0065,#005f
	dw #005a,#0055,#0050,#004c
	dw #0047,#0043,#0040,#003c
	dw #0039,#0035,#0032,#0030
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010,#000f
.l6b2e
	dw l6b48,l6b4e,l6b5a,l6b5d
	dw l6b73,l6b78,l6b7c,l6b82
	dw l6b88,l6b8d,l6b93,l6b9b
	dw l6ba1
.l6b4e equ $ + 6
.l6b48
	db #01,#00,#00,#00,#00,#ff,#01,#14
	db #13,#12,#11,#10,#0f,#0e,#0d,#0c
.l6b5d equ $ + 5
.l6b5a equ $ + 2
	db #0a,#ff,#01,#00,#ff,#03,#00,#01
	db #02,#03,#04,#05,#06,#07,#08,#09
	db #0a,#09,#08,#07,#06,#05,#04,#03
.l6b73 equ $ + 3
	db #02,#01,#ff,#01,#00,#0c,#18,#ff
.l6b7c equ $ + 4
.l6b78
	db #01,#00,#0c,#ff,#02,#00,#03,#08
.l6b82 equ $ + 2
	db #0c,#ff,#01,#00,#05,#09,#0c,#ff
.l6b8d equ $ + 5
.l6b88
	db #01,#00,#0c,#18,#ff,#01,#00,#05
.l6b93 equ $ + 3
	db #08,#0c,#ff,#01,#0c,#07,#18,#00
.l6b9b equ $ + 3
	db #0c,#07,#ff,#01,#00,#04,#07,#0c
.l6ba1 equ $ + 1
	db #ff,#01,#00,#00,#00,#00,#ff
.l6ba7
	dw #6bc9,#6bd0,#6be3,#6bf6
	dw #6c0b,#6c1b,#6c2b,#6c3a
	dw #6c49,#6c59,#6c66,#6c74
	dw #6c7e,#6c8f,#6ca0,#6cb9
	dw #6cca
	db #00,#04,#00,#00,#00,#00,#ff,#01
	db #04,#00,#00,#00,#0f,#0f,#0f,#0e
	db #0e,#0e,#0c,#0b,#09,#07,#05,#03
	db #01,#ff,#02,#01,#08,#08,#08,#0f
	db #0f,#0f,#0f,#0f,#0e,#0c,#0a,#08
	db #07,#05,#03,#01,#ff,#03,#14,#00
	db #00,#00,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#ff,#00,#02,#00,#00,#00,#0f
	db #0f,#0e,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#ff,#05,#02,#08,#08,#08,#0f
	db #0f,#0e,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#ff,#05,#03,#00,#00,#00,#0f
	db #0e,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #ff,#00,#03,#08,#02,#06,#0f,#0e
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#ff
	db #02,#04,#00,#00,#00,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#ff
	db #08,#03,#00,#00,#00,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#ff,#04,#02,#00
	db #00,#00,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#ff,#09,#04,#00,#00,#00
	db #0e,#0c,#09,#08,#ff,#06,#03,#00
	db #00,#00,#0f,#0f,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0a,#ff,#0b,#03
	db #08,#10,#10,#0e,#0f,#0f,#0e,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#ff,#0c
	db #08,#1c,#02,#01,#01,#03,#04,#06
	db #08,#0a,#0c,#0e,#0f,#0f,#0f,#0e
	db #0c,#0a,#08,#06,#04,#03,#01,#ff
	db #0c,#0a,#04,#08,#40,#0e,#0f,#0f
	db #0e,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #ff,#00,#04,#09,#10,#14,#0f,#0f
	db #0e,#0d,#0c,#0b,#ff
.l6cd6
	dw l6d0c,l6d26,l6d38,l6d52
	dw l6d55,l6d58,l6d5b,l6d5e
	dw l6d61,l6d64,l6d67,l6d6a
.l6cee
	dw l6d6d,l6d71,l6dc3,l6e15
	dw l6e29,l6e53,l6e73,l6e97
	dw l6edc,l6f21,l6f4b,l6f8b
	dw l6fcd,l6feb,l700a
.l6d0c
	db #cc,#01,#d8,#04,#04,#04,#04,#04
	db #04,#04,#04,#09,#09,#09,#09,#04
	db #04,#04,#04,#04,#04,#09,#09,#09
.l6d26 equ $ + 2
	db #09,#ff,#d8,#02,#05,#05,#05,#05
	db #07,#08,#0a,#0a,#05,#05,#07,#08
.l6d38 equ $ + 4
	db #c0,#0b,#0b,#ff,#c4,#03,#cc,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
.l6d52 equ $ + 6
	db #06,#06,#06,#06,#06,#ff,#c0,#0c
.l6d5b equ $ + 7
.l6d58 equ $ + 4
.l6d55 equ $ + 1
	db #fe,#cc,#0c,#fe,#d8,#0c,#fe,#c0
.l6d61 equ $ + 5
.l6d5e equ $ + 2
	db #0d,#fe,#cc,#0d,#fe,#d8,#0d,#fe
.l6d6a equ $ + 6
.l6d67 equ $ + 3
.l6d64
	db #c0,#0e,#fe,#cc,#0e,#fe,#d8,#0e
.l6d71 equ $ + 5
.l6d6d equ $ + 1
	db #fe,#c0,#bf,#00,#ff,#c2,#85,#18
	db #82,#18,#18,#85,#18,#82,#18,#18
	db #85,#18,#82,#18,#18,#85,#18,#82
	db #18,#18,#85,#1d,#82,#1d,#1d,#85
	db #1d,#82,#1d,#1d,#85,#1d,#82,#1d
	db #1d,#85,#1d,#82,#1d,#1d,#85,#22
	db #82,#22,#22,#85,#22,#82,#22,#22
	db #85,#22,#82,#22,#22,#85,#22,#82
	db #22,#22,#85,#27,#82,#27,#27,#85
	db #27,#82,#27,#27,#85,#27,#82,#27
.l6dc3 equ $ + 7
	db #27,#85,#27,#82,#27,#27,#ff,#c4
	db #85,#18,#82,#18,#18,#85,#18,#82
	db #18,#18,#85,#18,#82,#18,#18,#85
	db #18,#82,#18,#18,#85,#1d,#82,#1d
	db #1d,#85,#1d,#82,#1d,#1d,#85,#1d
	db #82,#1d,#1d,#85,#1d,#82,#1d,#1d
	db #85,#22,#82,#22,#22,#85,#22,#82
	db #22,#22,#85,#22,#82,#22,#22,#85
	db #22,#82,#22,#22,#85,#27,#82,#27
	db #27,#85,#27,#82,#27,#27,#85,#27
	db #82,#27,#27,#85,#27,#82,#27,#27
.l6e15 equ $ + 1
	db #ff,#c3,#97,#18,#18,#18,#18,#18
	db #18,#18,#c1,#82,#1e,#00,#1e,#00
.l6e29 equ $ + 5
	db #29,#29,#29,#00,#ff,#c2,#85,#18
	db #82,#18,#18,#85,#24,#82,#18,#85
	db #18,#82,#18,#18,#18,#85,#24,#82
	db #18,#18,#85,#1d,#82,#1d,#1d,#85
	db #1d,#82,#1d,#85,#1f,#82,#1f,#1f
.l6e53 equ $ + 7
	db #1f,#85,#1f,#82,#1d,#1d,#ff,#ca
	db #85,#24,#24,#82,#24,#23,#24,#85
	db #24,#24,#82,#23,#24,#23,#85,#24
	db #29,#29,#82,#29,#28,#29,#85,#2b
.l6e73 equ $ + 7
	db #2b,#2b,#82,#2b,#2d,#2d,#ff,#c1
	db #82,#18,#00,#18,#18,#23,#00,#23
	db #23,#18,#00,#18,#18,#23,#23,#23
	db #00,#82,#18,#00,#18,#18,#23,#00
	db #23,#23,#18,#00,#18,#23,#23,#00
.l6e97 equ $ + 3
	db #23,#00,#ff,#c9,#85,#30,#30,#82
	db #30,#34,#35,#85,#37,#37,#37,#82
	db #37,#35,#34,#37,#30,#35,#30,#34
	db #30,#35,#85,#32,#82,#32,#32,#85
	db #32,#82,#32,#32,#32,#85,#30,#30
	db #82,#30,#34,#35,#85,#37,#35,#34
	db #82,#35,#85,#30,#82,#32,#30,#32
	db #34,#35,#34,#35,#37,#32,#85,#32
	db #82,#32,#85,#32,#82,#32,#32,#ff
.l6edc
	db #c9,#85,#34,#35,#37,#82,#35,#85
	db #34,#82,#35,#85,#34,#82,#32,#34
	db #32,#34,#85,#35,#34,#32,#82,#30
	db #85,#34,#32,#82,#32,#85,#32,#82
	db #32,#32,#85,#34,#35,#37,#82,#35
	db #85,#34,#82,#34,#85,#37,#82,#37
	db #35,#34,#37,#85,#35,#37,#39,#82
	db #3b,#85,#39,#82,#3b,#85,#37,#82
.l6f21 equ $ + 5
	db #37,#37,#85,#37,#ff,#c2,#85,#1a
	db #82,#1a,#1a,#85,#26,#82,#1a,#85
	db #1a,#82,#1a,#1a,#1a,#85,#26,#82
	db #1a,#1a,#85,#1d,#82,#1d,#1d,#85
	db #1d,#82,#1d,#85,#1f,#82,#1f,#1f
.l6f4b equ $ + 7
	db #1f,#85,#1f,#82,#1d,#1d,#ff,#c9
	db #82,#32,#30,#32,#30,#85,#32,#82
	db #30,#85,#32,#30,#2d,#82,#2d,#2f
	db #2d,#85,#30,#30,#82,#30,#2f,#30
	db #85,#2b,#2b,#2b,#82,#2b,#2f,#30
	db #85,#32,#32,#82,#32,#32,#34,#32
	db #35,#85,#34,#32,#82,#32,#34,#32
	db #88,#35,#35,#85,#35,#82,#34,#85
.l6f8b equ $ + 7
	db #32,#32,#82,#32,#85,#32,#ff,#ca
	db #85,#3e,#3e,#82,#3e,#40,#41,#85
	db #43,#41,#40,#82,#41,#85,#3e,#82
	db #41,#43,#40,#41,#3e,#40,#3c,#3e
	db #41,#43,#40,#41,#3e,#40,#3c,#3e
	db #85,#3e,#3e,#82,#3e,#3c,#3e,#85
	db #39,#41,#40,#82,#3c,#85,#3e,#82
	db #35,#37,#34,#35,#32,#34,#30,#32
	db #35,#37,#34,#35,#32,#34,#30,#32
.l6fcd equ $ + 1
	db #ff,#c9,#85,#18,#18,#82,#18,#18
	db #18,#85,#1d,#1d,#82,#1d,#85,#1d
	db #1d,#1f,#1f,#82,#1d,#1d,#1d,#85
.l6feb equ $ + 7
	db #18,#18,#82,#18,#85,#18,#ff,#ca
	db #82,#18,#1f,#24,#18,#1f,#24,#18
	db #1f,#1b,#1f,#27,#1b,#1f,#27,#1b
	db #1f,#1d,#24,#29,#1b,#1f,#27,#18
.l700a equ $ + 6
	db #1b,#18,#18,#18,#18,#ff,#c9,#82
	db #18,#85,#24,#82,#18,#85,#22,#82
	db #18,#85,#1f,#82,#18,#1d,#1e,#1d
	db #1b,#18,#18,#ff
.l7020
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#09,#00,#00,#00
.l7037 equ $ + 7
	db #00,#01,#01,#01,#01,#01,#01,#00
	db #00,#43,#70,#5e,#70,#6e,#70,#79
	db #70,#80,#70,#01,#05,#07,#05,#04
	db #05,#01,#02,#14,#05,#fe,#02,#07
	db #0a,#04,#ff,#01,#02,#32,#07,#14
	db #04,#fc,#01,#07,#02,#06,#08,#0f
	db #00,#02,#00,#04,#ff,#01,#07,#03
	db #00,#01,#00,#07,#03,#06,#08,#0f
	db #00,#0f,#00,#04,#01,#01,#07,#05
	db #06,#01,#09,#02,#0a,#07,#01,#06
	db #01,#00,#07,#01,#06
.l7085
	push ix
	pop hl
	ld d,h
	ld e,l
	inc de
	ld (hl),#00
	ld bc,#0016
	ldir
	add a
	ld d,#00
	ld e,a
	ld hl,l7037
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#02),l
	ld (ix+#03),h
	ld (ix+#07),#01
	ret
.l70b9
	ld ix,l7020
	ld a,(l66e3)
	or a
	jr z,l70ce
	dec a
	ld (l66e4),a
	call l7085
	xor a
	ld (l66e3),a
.l70ce
	ld a,(ix+#0c)
	cp #09
	ret z
	call l7101
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld (l69fe),hl
	ld a,(ix+#0a)
	ld (l6a05),a
	bit 3,(ix+#0c)
	jr nz,l70f2
	ld a,(ix+#0b)
	ld (l6a02),a
.l70f2
	ld a,(ix+#0c)
	add a
	ld b,a
	ld a,(l6a03)
	and #ed
	or b
	ld (l6a03),a
	ret
.l7101
	dec (ix+#07)
	jp nz,l71a1
	ld l,(ix+#02)
	ld h,(ix+#03)
.l710d
	ld a,(hl)
	inc hl
	ld b,(hl)
	inc hl
	or a
	jr z,l715b
	dec a
	jr z,l7165
	dec a
	jr z,l716a
	dec a
	jr z,l716f
	dec a
	jr z,l7180
	dec a
	jr z,l718c
	dec a
	jr z,l7198
	dec a
	jr z,l7147
	dec a
	jr z,l713c
	dec (ix+#06)
	jr z,l7139
	ld l,(ix+#04)
	ld h,(ix+#05)
	jr l710d
.l7139
	dec hl
	jr l710d
.l713c
	ld (ix+#04),l
	ld (ix+#05),h
	ld (ix+#06),b
	jr l7153
.l7147
	ld (ix+#07),b
	ld (ix+#02),l
	ld (ix+#03),h
	jr l71a1
.l7152
	inc hl
.l7153
	ld (ix+#02),l
	ld (ix+#03),h
	jr l710d
.l715b
	ld (ix+#09),b
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	jr l7153
.l7165
	ld (ix+#0a),b
	jr l7153
.l716a
	ld (ix+#0b),b
	jr l7153
.l716f
	ld (ix+#0e),b
	ld a,(hl)
	ld (ix+#0d),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	ld (ix+#12),a
	jr l7152
.l7180
	ld (ix+#0f),b
	ld a,(hl)
	ld (ix+#13),a
	ld (ix+#14),a
	jr l7152
.l718c
	ld (ix+#10),b
	ld a,(hl)
	ld (ix+#15),a
	ld (ix+#16),a
	jr l7152
.l7198
	ld (ix+#0c),#09
	xor a
	ld (l66e4),a
	ret
.l71a1
	dec (ix+#11)
	jr nz,l71bf
	ld a,(ix+#12)
	ld (ix+#11),a
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld e,(ix+#0d)
	ld d,(ix+#0e)
	add hl,de
	ld (ix+#08),l
	ld (ix+#09),h
.l71bf
	dec (ix+#13)
	jr nz,l71dd
	ld a,(ix+#14)
	ld (ix+#13),a
	ld a,(ix+#0a)
	add (ix+#0f)
	jp p,l71d4
	xor a
.l71d4
	cp #10
	jr c,l71da
	ld a,#0f
.l71da
	ld (ix+#0a),a
.l71dd
	dec (ix+#15)
	jr nz,l71f1
	ld a,(ix+#16)
	ld (ix+#15),a
	ld a,(ix+#0b)
	add (ix+#10)
	ld (ix+#0b),a
.l71f1
	ret
	ld a,#ff
;
.init_music	; added by Megachur
;
	ld (l66e1),a
	jp l675c
;
.music_info
	db "Italian Supercar (1990)(Codemasters)(Lyndon SHARP)",0
	db "",0

	read "music_end.asm"
