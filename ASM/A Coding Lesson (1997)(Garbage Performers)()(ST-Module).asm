; Music of A Coding Lesson (1997)(Garbage Performers)()(ST-Module)
; Ripped by Megachur the 01/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ACODINGL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #727f

	read "music_header.asm"

	jp l728a
	jp l7312
	jp l72f6

	ld h,(hl)
	inc b
;
.init_music
.l728a
;
	ld b,#03
	ld ix,l7659
	ld iy,l7585
	ld de,#001c
.l7297
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
	djnz l7297
	ld a,#04
	ld (l733a),a
	ld a,d
	ld (l734e),a
	inc a
	ld (l7335),a
	ld a,#38
	ld (l733f),a
	ld a,#ff
	ld (l7581),a
	ld (l7582),a
	ld (l7583),a
	ld (l7584),a
	ld a,#0c
	ld c,d
	call l7563
	ld a,#0d
	ld c,d
	jp l7563
;
.stop_music
.l72f6
;
	ld a,#07
	ld c,#3f
	call l7563
	ld a,#08
	ld c,#00
	call l7563
	ld a,#09
	ld c,#00
	call l7563
	ld a,#0a
	ld c,#00
	jp l7563
;
.play_music
.l7312
;
	ld hl,l7335
	dec (hl)
	ld ix,l7659
	ld bc,l7667
	call l73c8
	ld ix,l7675
	ld bc,l7683
	call l73c8
	ld ix,l7691
	ld bc,l769f
	call l73c8
.l7335 equ $ + 1
	ld a,#03
	or a
	jr nz,l733e
.l733a equ $ + 1
	ld a,#04
	ld (l7335),a
.l733f equ $ + 1
.l733e
	ld a,#28
	ld hl,l7582
	cp (hl)
	jr z,l734d
	ld (hl),a
	ld c,a
	ld a,#07
	call l7563
.l734e equ $ + 1
.l734d
	ld a,#01
	ld hl,l7581
	cp (hl)
	jr z,l735c
	ld (hl),a
	ld c,a
	ld a,#06
	call l7563
.l735d equ $ + 1
.l735c
	ld a,#3c
	ld hl,l7583
	cp (hl)
	jr z,l736b
	ld (hl),a
	ld c,a
	ld a,#0b
	call l7563
.l736c equ $ + 1
.l736b
	ld a,#58
	ld hl,l7584
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l7563
.l7379
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l7479
.l7388
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
	jp l7563
.l73a2
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l73b7
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l73b7
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l73db
.l73c8
	ld a,(l7335)
	or a
	jp nz,l7479
	dec (ix+#06)
	jp nz,l7479
	ld l,(ix+#00)
	ld h,(ix+#01)
.l73db
	ld a,(hl)
	or a
	jr z,l7379
	cp #fe
	jr z,l7388
	cp #ff
	jr z,l73a2
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l758b
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l7417
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l7417
	and #7f
	ld (ix+#06),a
	jr l746a
.l7417
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l742b
	ld (ix+#05),a
	ld (ix+#0a),d
.l742b
	add a
	add a
	add a
	ld e,a
	ld hl,l76c1
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
	jr z,l746a
	cp #f0
	jp z,l751f
	cp #d0
	jp z,l753b
	cp #b0
	jp z,l7543
	cp #80
	jp nc,l754b
	cp #10
	jr nz,l746a
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l746a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l7479
	ld a,(ix+#17)
	or a
	jr nz,l748d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l748d
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l74b8
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l758b
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l74b8
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
	call l7563
	ld c,h
	ld a,(ix+#03)
	call l7563
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l74f6
	and #0f
	sub (ix+#0a)
	jr nc,l74ec
	xor a
.l74ec
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l7563
.l74f6
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
	jr z,l7513
	ld b,a
	ld a,c
	ld (l734e),a
	ld a,b
	sub #40
.l7513
	ld (l751a),a
	ld a,(l733f)
.l751a equ $ + 1
	set 5,a
	ld (l733f),a
	ret
.l751f
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l7741
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l746a
.l753b
	inc hl
	ld a,(hl)
	ld (l733a),a
	jp l746a
.l7543
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l746a
.l754b
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l736c),a
	inc hl
	ld a,(hl)
	ld (l735d),a
	jp l746a
.l7563
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
.l7584 equ $ + 3
.l7583 equ $ + 2
.l7582 equ $ + 1
.l7581
	db #01,#28,#3c,#58
.l7585
	dw l7a01,l7a52,l7aa3
.l758b
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
	db #00,#00,#00,#00
.l7659
	dw l7b69
	db #00,#01,#08,#05,#01,#24,#00,#10
.l7667 equ $ + 4
	db #00,#df,#0a,#7a,#e1,#78,#21,#79
	db #c1,#77,#00,#00,#06,#1a,#de,#01
.l7675 equ $ + 2
	db #00,#00,#cf,#7d,#02,#03,#09,#07
	db #01,#64,#00,#00,#00,#e7,#5b,#7a
.l7683
	db #e1,#78,#61,#79,#81,#79,#00,#00
.l7691 equ $ + 6
	db #06,#1a,#00,#00,#00,#00,#4b,#7f
	db #04,#05,#0a,#06,#03,#34,#00,#00
.l769f equ $ + 4
	db #00,#ef,#ac,#7a,#e1,#78,#41,#79
	db #c1,#77,#00,#00,#16,#0a,#be,#00
	db #c1,#79,#00,#00,#00,#00,#00,#81
	db #77,#72,#ff,#00,#53,#54,#2d,#4d
.l76c1 equ $ + 6
	db #6f,#64,#75,#6c,#65,#2e,#61,#77
	db #a1,#77,#c1,#77,#08,#18,#5b,#71
	db #5b,#71,#5b,#71,#00,#00,#e1,#77
	db #21,#78,#41,#78,#00,#00,#61,#78
	db #a1,#78,#c1,#78,#00,#00,#5b,#71
	db #5b,#71,#5b,#71,#00,#00,#e1,#78
	db #21,#79,#c1,#77,#00,#00,#e1,#78
	db #41,#79,#c1,#77,#00,#00,#e1,#78
	db #61,#79,#81,#79,#00,#00,#5b,#71
	db #5b,#71,#5b,#71,#00,#00,#5b,#71
	db #5b,#71,#5b,#71,#00,#00,#5b,#71
	db #5b,#71,#5b,#71,#00,#00,#5b,#71
	db #5b,#71,#5b,#71,#00,#00,#5b,#71
	db #5b,#71,#5b,#71,#00,#00,#5b,#71
	db #5b,#71,#5b,#71,#00,#00,#5b,#71
	db #5b,#71,#5b,#71,#00,#00,#5b,#71
.l7741 equ $ + 6
	db #5b,#71,#5b,#71,#00,#00,#5b,#71
	db #5b,#71,#5b,#71,#5b,#71,#5b,#71
	db #5b,#71,#5b,#71,#a1,#79,#c1,#79
	db #e1,#79,#5b,#71,#5b,#71,#5b,#71
	db #5b,#71,#5b,#71,#5b,#71,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#02,#00,#00,#00,#00,#00
	db #fe,#ff,#fe,#ff,#00,#00,#00,#00
	db #02,#00,#02,#00,#00,#00,#00,#00
	db #fe,#ff,#fe,#ff,#00,#00,#00,#00
	db #02,#00,#02,#00,#00,#00,#00,#00
	db #fe,#ff,#fe,#ff,#00,#00,#00,#00
	db #02,#00,#02,#00,#00,#00,#0e,#0e
	db #0d,#0c,#0b,#0a,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#70,#03
	db #80,#03,#90,#03,#a0,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0c,#0b,#0a,#08,#06,#03,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#05,#86
	db #87,#89,#8c,#91,#97,#9d,#95,#90
	db #8c,#89,#86,#85,#84,#84,#83,#83
	db #83,#82,#82,#82,#81,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#80,#00
	db #00,#01,#80,#01,#00,#02,#80,#02
	db #00,#03,#00,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0d,#0c,#0b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#09,#09,#09,#08,#08
	db #08,#07,#07,#06,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#0a
	db #0a,#09,#09,#08,#07,#06,#05,#04
	db #04,#03,#03,#02,#02,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#0c,#0b
	db #0b,#0a,#0a,#09,#09,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fb,#fb,#00,#00,#fb,#fb,#00,#00
	db #fb,#fb,#00,#00,#fb,#fb,#00,#00
	db #fb,#fb,#00,#00,#fb,#fb,#00,#00
	db #fb,#fb,#00,#00,#fb,#fb,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
.l7a01 equ $ + 6
	db #18,#00,#0c,#18,#00,#0c,#00,#e1
	db #7b,#00,#25,#7c,#00,#47,#7b,#00
	db #47,#7b,#00,#47,#7b,#00,#47,#7b
	db #00,#f4,#7a,#00,#f4,#7a,#00,#69
	db #7c,#00,#69,#7c,#00,#be,#7c,#00
	db #94,#7b,#00,#94,#7b,#00,#47,#7b
	db #00,#94,#7b,#00,#f4,#7a,#00,#f4
	db #7a,#00,#69,#7c,#00,#69,#7c,#00
	db #be,#7c,#00,#47,#7b,#00,#47,#7b
	db #00,#47,#7b,#00,#47,#7b,#00,#f4
.l7a52 equ $ + 7
	db #7a,#00,#f4,#7a,#80,#04,#7a,#00
	db #06,#7e,#00,#a5,#7d,#00,#a5,#7d
	db #00,#a5,#7d,#00,#a5,#7d,#00,#a5
	db #7d,#00,#e2,#7c,#00,#e2,#7c,#00
	db #a5,#7d,#00,#a5,#7d,#00,#29,#7e
	db #00,#43,#7d,#00,#43,#7d,#00,#43
	db #7d,#00,#a5,#7d,#00,#e2,#7c,#00
	db #e2,#7c,#00,#a5,#7d,#00,#a5,#7d
	db #00,#29,#7e,#00,#43,#7d,#00,#43
	db #7d,#00,#e2,#7c,#00,#e2,#7c,#00
	db #e2,#7c,#00,#e2,#7c,#80,#55,#7a
.l7aa3
	db #00,#f8,#7e,#00,#fb,#7e,#00,#3e
	db #7f,#00,#3e,#7f,#00,#3e,#7f,#00
	db #3e,#7f,#00,#5b,#7e,#00,#5b,#7e
	db #00,#5a,#7f,#00,#5a,#7f,#00,#87
	db #7f,#00,#9e,#7f,#00,#9e,#7f,#00
	db #6f,#7e,#00,#ab,#7e,#00,#5b,#7e
	db #00,#5b,#7e,#00,#5a,#7f,#00,#5a
	db #7f,#00,#87,#7f,#00,#6f,#7e,#00
	db #6f,#7e,#00,#e1,#7e,#00,#e1,#7e
	db #00,#5b,#7e,#00,#5b,#7e,#80,#a6
	db #7a,#1a,#02,#85,#30,#32,#02,#05
	db #1a,#82,#32,#82,#1d,#02,#85,#28
	db #35,#02,#05,#1d,#82,#35,#82,#1f
	db #02,#85,#24,#37,#02,#05,#1f,#82
	db #37,#82,#20,#02,#85,#22,#38,#02
	db #05,#20,#82,#38,#82,#1f,#02,#85
	db #24,#37,#02,#05,#1f,#82,#37,#82
	db #1f,#82,#37,#82,#1f,#82,#37,#82
	db #1d,#02,#85,#28,#35,#02,#05,#1d
	db #82,#35,#82,#1d,#82,#35,#82,#1d
	db #82,#35,#82,#ff,#1a,#02,#85,#30
	db #32,#02,#05,#1a,#82,#32,#82,#1a
	db #82,#32,#82,#1a,#82,#32,#82,#16
	db #02,#85,#3c,#2e,#02,#05,#16,#82
.l7b69 equ $ + 6
	db #2e,#82,#16,#82,#2e,#82,#16,#82
	db #2e,#82,#18,#02,#85,#35,#30,#02
	db #05,#18,#82,#30,#82,#18,#82,#30
	db #82,#18,#82,#30,#82,#1a,#02,#85
	db #30,#32,#02,#05,#1a,#82,#32,#82
	db #1a,#82,#32,#82,#1a,#82,#32,#82
	db #ff,#1a,#02,#85,#30,#32,#02,#05
	db #1a,#82,#32,#82,#1a,#82,#32,#82
	db #1a,#82,#32,#82,#16,#02,#85,#3c
	db #2e,#02,#05,#16,#82,#2e,#82,#16
	db #82,#2e,#82,#16,#82,#2e,#82,#18
	db #02,#85,#35,#30,#02,#05,#18,#82
	db #30,#82,#18,#82,#30,#82,#18,#82
	db #30,#82,#1a,#02,#85,#30,#32,#02
	db #05,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#ff,#1a,#02
	db #80,#30,#32,#02,#00,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#ff,#1a,#02,#80,#30,#32,#02
	db #00,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#ff,#1a,#02
	db #80,#30,#32,#02,#00,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1a,#82,#32,#82,#1a,#82,#32
	db #82,#1d,#02,#80,#28,#53,#02,#85
	db #0e,#1f,#02,#80,#24,#37,#02,#00
	db #1a,#02,#80,#30,#32,#02,#00,#1a
	db #82,#32,#82,#1a,#82,#32,#82,#1a
	db #82,#32,#82,#1a,#82,#32,#82,#1a
	db #82,#32,#82,#1f,#02,#80,#24,#53
	db #02,#85,#0e,#1d,#02,#80,#28,#35
	db #02,#00,#ff,#1a,#04,#85,#30,#32
	db #04,#05,#1a,#84,#32,#84,#1a,#84
	db #32,#84,#1a,#84,#32,#84,#1a,#84
	db #32,#84,#1a,#84,#32,#84,#1a,#84
	db #32,#84,#1a,#84,#32,#84,#ff,#3a
	db #02,#13,#6e,#02,#07,#3a,#02,#02
	db #6e,#02,#07,#3a,#02,#03,#6e,#02
	db #07,#3a,#02,#02,#6e,#02,#07,#3a
	db #02,#03,#6e,#02,#07,#3a,#02,#02
	db #6e,#02,#07,#3a,#02,#03,#6e,#02
	db #07,#3a,#02,#02,#6e,#02,#07,#3a
	db #02,#03,#6e,#02,#07,#3a,#02,#02
	db #6e,#02,#07,#3a,#02,#03,#6e,#02
	db #07,#3a,#02,#02,#6e,#02,#07,#3a
	db #02,#03,#6e,#02,#07,#3a,#02,#02
	db #6e,#02,#07,#3a,#02,#03,#3a,#02
	db #02,#3a,#82,#ba,#02,#ba,#02,#ff
	db #3a,#02,#d3,#04,#6e,#02,#07,#3a
	db #02,#02,#6e,#02,#07,#3a,#02,#03
	db #6e,#02,#07,#3a,#02,#02,#6e,#02
	db #07,#3a,#02,#03,#6e,#02,#07,#3a
	db #02,#02,#6e,#02,#07,#3a,#02,#03
	db #6e,#02,#07,#3a,#02,#02,#6e,#02
	db #07,#3a,#02,#03,#6e,#02,#07,#3a
	db #02,#02,#6e,#02,#07,#3a,#02,#03
	db #6e,#02,#07,#3a,#02,#02,#6e,#02
	db #07,#3a,#02,#03,#6e,#02,#07,#3a
	db #02,#02,#6e,#02,#07,#3a,#02,#03
	db #3a,#02,#02,#3a,#82,#ba,#02,#ba
	db #02,#ff,#3a,#02,#13,#6e,#02,#07
	db #3a,#02,#02,#6e,#02,#07,#3a,#02
	db #03,#6e,#02,#07,#3a,#02,#02,#6e
	db #02,#07,#3a,#02,#03,#6e,#02,#07
	db #3a,#02,#02,#6e,#02,#07,#3a,#02
	db #03,#6e,#02,#07,#3a,#02,#02,#6e
	db #02,#07,#3a,#02,#03,#6e,#02,#07
	db #3a,#02,#02,#6e,#02,#07,#3a,#02
	db #03,#6e,#02,#07,#3a,#02,#02,#6e
	db #02,#07,#3a,#02,#03,#6e,#02,#07
	db #3a,#02,#02,#6e,#02,#07,#3a,#02
	db #03,#3a,#02,#02,#3a,#82,#ba,#02
	db #ba,#02,#ff,#3a,#04,#13,#3a,#04
	db #03,#3a,#84,#3a,#84,#3a,#84,#3a
	db #84,#3a,#84,#3a,#84,#3a,#84,#3a
	db #84,#3a,#84,#3a,#84,#3a,#84,#3a
	db #84,#3a,#84,#3a,#84,#ff,#3a,#04
	db #d3,#02,#6c,#04,#07,#3a,#04,#02
	db #6c,#04,#07,#3a,#04,#03,#6c,#04
	db #07,#3a,#04,#02,#6c,#04,#07,#3a
	db #04,#03,#6c,#04,#07,#3a,#04,#02
	db #6c,#04,#07,#3a,#04,#03,#3a,#04
	db #02,#3a,#84,#3a,#82,#3a,#82,#ff
	db #3e,#06,#f0,#08,#41,#06,#00,#45
	db #84,#46,#86,#43,#86,#3c,#84,#3e
	db #90,#3c,#90,#ff,#3e,#04,#f6,#09
	db #41,#02,#06,#40,#82,#41,#82,#43
	db #82,#41,#82,#40,#82,#3a,#84,#41
	db #82,#40,#82,#41,#82,#43,#82,#41
	db #82,#40,#82,#3c,#84,#43,#82,#41
	db #82,#43,#82,#45,#82,#43,#82,#41
	db #82,#3e,#84,#41,#82,#40,#82,#41
	db #82,#43,#82,#41,#82,#40,#82,#ff
	db #3e,#04,#f6,#09,#41,#02,#06,#40
	db #82,#41,#82,#43,#82,#41,#82,#40
	db #82,#3a,#84,#41,#82,#40,#82,#41
	db #82,#43,#82,#41,#82,#40,#82,#3c
	db #84,#43,#82,#41,#82,#43,#82,#45
	db #82,#43,#82,#41,#82,#3e,#82,#41
	db #82,#45,#82,#4a,#8a,#ff,#45,#0c
	db #10,#46,#02,#00,#43,#82,#45,#82
	db #41,#84,#3e,#8a,#3c,#8c,#3a,#82
	db #39,#84,#41,#8e,#ff,#00,#40,#ff
	db #3e,#02,#16,#3e,#02,#06,#4a,#82
	db #3e,#82,#3e,#82,#4a,#82,#3e,#82
	db #4a,#82,#3e,#82,#3e,#82,#4a,#82
	db #3e,#82,#3e,#82,#4a,#82,#3e,#82
	db #4a,#82,#3e,#82,#3e,#82,#4a,#82
	db #3e,#82,#3e,#82,#4a,#82,#3e,#82
	db #4a,#82,#3e,#82,#3e,#82,#4a,#82
	db #3e,#82,#3e,#82,#4a,#82,#3e,#04
	db #f6,#08,#ff,#3e,#06,#f6,#08,#3e
	db #06,#06,#41,#84,#41,#86,#3e,#88
	db #3e,#82,#40,#84,#40,#84,#3e,#84
	db #3c,#82,#3e,#8e,#3e,#84,#ff,#4a
	db #08,#f6,#07,#48,#02,#f6,#08,#48
	db #04,#06,#4a,#02,#f6,#07,#32,#04
	db #f6,#09,#32,#0c,#06,#4a,#08,#f6
	db #07,#48,#02,#f6,#08,#48,#04,#06
	db #4a,#02,#f6,#07,#32,#04,#f6,#09
	db #32,#0c,#06,#ff,#4a,#10,#f6,#07
	db #48,#04,#f6,#08,#48,#08,#06,#4a
	db #04,#f6,#07,#32,#08,#f6,#09,#32
	db #18,#06,#ff,#3e,#04,#f6,#08,#41
	db #02,#06,#40,#82,#41,#82,#43,#82
	db #41,#82,#40,#82,#3a,#84,#41,#82
	db #40,#82,#41,#82,#43,#82,#41,#82
	db #40,#82,#3c,#84,#43,#82,#41,#82
	db #43,#82,#45,#82,#43,#82,#41,#82
	db #3e,#84,#41,#82,#40,#82,#41,#82
	db #43,#82,#41,#82,#40,#82,#ff,#00
	db #ff,#ff,#aa,#00,#55,#4f,#cf,#5f
	db #00,#55,#cf,#cf,#df,#00,#af,#cf
	db #cf,#8f,#aa,#ef,#df,#df,#cf,#aa
	db #ef,#cf,#cf,#cf,#aa,#ef,#cf,#cf
	db #cf,#aa,#ef,#df,#ff
;
.music_info
	db "A Coding Lesson (1997)(Garbage Performers)",0
	db "ST-Module",0

	read "music_end.asm"