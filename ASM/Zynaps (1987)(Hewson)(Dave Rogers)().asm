; Music of Zynaps (1987)(Hewson)(Dave Rogers)()
; Ripped by Megachur the 01/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ZYNAPS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #7968

	read "music_header.asm"

	jp l7a25	; init
	jp l7a0f	; stop
	jp l7a60	; play

	ld a,#0e
	jr l79bb
	ld a,#0f
	ld b,#10
	jr l79c0
	ld a,#11
	jr l79c4
	ld a,#12
	jr l79c4
	ld a,#13
	jr l79c4
	ld a,#14
	jr l79b7
	ld a,#1a
	ld b,#1b
	jr l79c0
	ld a,#16
	jr l79c4
	ld a,#17
	jr l79c4
	ld a,#18
	jr l79c4
	ld a,#19
	jr l79c4
	ld a,#0f
	jr l79c4
	ld a,#10
	jr l79c4
	ld a,#1c
	jr l79c4
	ld a,#1d
	jr l79c4
	ld a,#1e
	ld b,#1f
	jr l79c0
.l79b7
	ld b,#15
	jr l79c0
.l79bb
	ld c,a
	ld a,#01
	jr l79cd
.l79c0
	call l79c4
	ld a,b
.l79c4
	ld c,a
	ld a,(l7c9b)
	xor #01
	ld (l7c9b),a
.l79cd
	ld ix,l7c9c
	cp #02
	jr c,l79e1
	ld ix,l7cc9
	cp #03
	jr c,l79e1
	ld ix,l7cf6
.l79e1
	ld hl,ldf4d
	ld a,c
	add a
	ld d,#00
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1e),#01
	ld (ix+#1f),#01
	xor a
	ld (ix+#27),a
	ld (l7c99),a
	ld (ix+#21),e
	ld (ix+#22),d
	ld (ix+#23),e
	ld (ix+#24),d
	ld (ix+#25),e
	ld (ix+#26),d
	ret
;
.stop_music
.l7a0f
;
	xor a
	ld (l7cba),a
	ld (l7ce7),a
	ld (l7d14),a
	ld (l7c93),a
	ld (l7c94),a
	ld (l7c95),a
	jp l7a39
;
.init_music
.l7a25
;
	ld a,#03
	ld (l7c9b),a
	ld a,#0b
	call l79bb
	ld a,#0c
	call l79c4
	ld a,#0d
	call l79c4
.l7a39
	ld a,#3f
	ld (l7c92),a
.l7a3e
	xor a
	ld hl,l7c98
	ld de,#f40d
.l7a45
	ld b,d
	out (c),e
	ld bc,#f6c0
	out (c),c
	out (c),a
	ld b,d
	ld c,(hl)
	dec hl
	out (c),c
	ld bc,#f680
	out (c),c
	out (c),a
	dec e
	jp p,l7a45
	ret
;
.play_music
.l7a60
;
	call l7a3e
	ld ix,l7c9c
	ld iy,l7c8b
	call l7a88
	call l7c51
	ld ix,l7cc9
	ld iy,l7c8d
	call l7a88
	ld ix,l7cf6
	ld iy,l7c8f
	call l7a88
	ret
.l7a88
	ld a,(ix+#1e)
	or a
	ret z
	dec (ix+#1f)
	call z,l7aa6
	ld a,(ix+#1e)
	or a
	ret z
	call l7c08
	call l7c26
	ret
.l7a9f
	inc hl
.l7aa0
	ld (ix+#22),h
	ld (ix+#21),l
.l7aa6
	ld h,(ix+#22)
	ld l,(ix+#21)
.l7aac
	ld a,(hl)
	inc hl
	ld e,(hl)
	cp #00
	jp z,l7b84
	cp #65
	jp c,l7b81
	cp #dc
	jp c,l7b7c
	cp #e4
	jr z,l7afa
	cp #e1
	jr z,l7aed
	cp #e9
	jr z,l7b3f
	cp #e8
	jr z,l7b26
	cp #ea
	jp z,l7b47
	cp #e5
	jp z,l7b50
	cp #e6
	jr z,l7b06
	cp #eb
	jr z,l7b0b
	cp #ec
	jp z,l7b11
	cp #ff
	jp z,l7b67
	jp l7b7c
.l7aed
	ld (ix+#1e),#00
	ld h,(ix+#2c)
	ld l,(ix+#2b)
	ld (hl),#00
	ret
.l7afa
	ld a,e
	ld (l7c91),a
	ld (ix+#28),#01
	inc hl
	jp l7aac
.l7b06
	ld (ix+#27),e
	jr l7a9f
.l7b0b
	ld a,e
	ld (l7c99),a
	jr l7a9f
.l7b11
	ld bc,(ldf4d)
	push bc
	ld bc,(ldf4f)
	ld (ldf4d),bc
	pop bc
	ld (ldf4f),bc
	jp l7aa0
.l7b26
	push ix
.l7b28
	ld a,e
	add a
	add ldf06	;#06
	ld e,a
	adc ldf06/#100	;#df
	sub e
	ld d,a
	ld a,(de)
	ld (ix+#18),a
	inc de
	ld a,(de)
	ld (ix+#19),a
	pop ix
	jp l7a9f
.l7b3f
	push ix
	inc ix
	inc ix
	jr l7b28
.l7b47
	push ix
	ld ix,l7ca0
	jp l7b28
.l7b50
	inc hl
	ld (ix+#24),h
	ld (ix+#23),l
	ld a,e
	add a
	add ldf4d	;#4d
	ld l,a
	adc ldf4d/#100	;#df
	sub l
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp l7aa0
.l7b67
	ld h,(ix+#24)
	ld l,(ix+#23)
	ld a,(hl)
	cp #ff
	jp nz,l7aa0
	ld h,(ix+#26)
	ld l,(ix+#25)
	jp l7aa0
.l7b7c
	and #7f
	dec hl
	ld e,#08
.l7b81
	add (ix+#27)
.l7b84
	ld (ix+#1f),e
	add a
	add lde48	;#48
	ld e,a
	adc lde48/#100	;#de
	sub e
	ld d,a
	ld a,(de)
	ld (iy+#00),a
	inc de
	ld a,(de)
	ld (iy+#01),a
	push hl
	push ix
	pop de
	ld hl,#0012
	add hl,de
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	dec hl
	dec hl
	dec hl
	dec hl
	inc de
	inc de
	ldi
	ldi
	ldi
	ldi
	ld a,#00
	ld (l7ca0),a
	ld (l7ca1),a
	ld a,(l7cb8)
	ld (l7ca6),a
	ld (l7cac),a
	ld a,(l7cb9)
	ld (l7ca7),a
	ld (l7cad),a
	ld h,(ix+#2c)
	ld l,(ix+#2b)
	ld (hl),#00
	ld a,(l7c92)
	and (ix+#2a)
	dec (ix+#28)
	jr z,l7bf2
	or (ix+#29)
.l7bf2
	ld hl,l7c99
	or (hl)
	and #3f
	ld (l7c92),a
	ld (ix+#28),#00
	pop hl
	inc hl
	ld (ix+#22),h
	ld (ix+#21),l
	ret
.l7c08
	push ix
	pop hl
	ld d,(ix+#07)
	ld e,(ix+#06)
	inc (hl)
	ld a,(de)
	sub (hl)
	ret nz
	ld (hl),a
	push hl
	ld h,(ix+#2c)
	ld l,(ix+#2b)
	inc de
	ld a,(de)
	add (hl)
	sub #80
	ld (hl),a
	pop hl
	jr l7c71
.l7c26
	inc ix
	inc ix
	push ix
	pop hl
	ld d,(ix+#07)
	ld e,(ix+#06)
	inc (hl)
	ld a,(de)
	sub (hl)
	ret nz
	ld (hl),a
	push hl
	ld h,(iy+#01)
	ld l,(iy+#00)
	inc de
	ld b,a
	ld a,(de)
	ld c,a
	add hl,bc
	ld c,#80
	sbc hl,bc
	ld (iy+#01),h
	ld (iy+#00),l
	pop hl
	jr l7c71
.l7c51
	ld ix,l7ca0
	push ix
	pop hl
	ld d,(ix+#07)
	ld e,(ix+#06)
	inc (hl)
	ld a,(de)
	sub (hl)
	ret nz
	ld (hl),a
	ld a,(l7c91)
	ld c,a
	inc de
	ld a,(de)
	add c
	sub #80
	and #0f
	ld (l7c91),a
.l7c71
	inc de
	inc hl
	inc (hl)
	ld a,(de)
	sub (hl)
	ret nz
	ld (hl),a
	inc de
	ld a,(de)
	inc a
	jp nz,l7c84
	ld d,(ix+#0d)
	ld e,(ix+#0c)
.l7c84
	ld (ix+#07),d
	ld (ix+#06),e
	ret
.l7c92 equ $ + 7
.l7c91 equ $ + 6
.l7c8f equ $ + 4
.l7c8d equ $ + 2
.l7c8b
	db #00,#00,#00,#00,#00,#00,#00,#38
.l7c99 equ $ + 6
.l7c98 equ $ + 5
.l7c95 equ $ + 2
.l7c94 equ $ + 1
.l7c93
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7ca1 equ $ + 6
.l7ca0 equ $ + 5
.l7c9c equ $ + 1
.l7c9b
	db #03,#00,#00,#00,#00,#00,#00,#00	;#00,#00,#00,#00,#00,#00,#00,#00
.l7ca7 equ $ + 4
.l7ca6 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7cad equ $ + 2
.l7cac equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7cba equ $ + 7
.l7cb9 equ $ + 6
.l7cb8 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#08,#36
	dw l7c93
.l7cc9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l7ce7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#10,#2d
	dw l7c94
.l7cf6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l7d14
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#20,#1b
	dw l7c95
	
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00

; #de40 - reallocated by Megachur
	
	db #49,#2d,#43,#60,#75,#64,#1f,#21
.lde48
	db #00,#00
	dw #101e,#0f36,#0e5c,#0d8d
	dw #0ccb,#0c13,#0b65,#0ac2
	dw #0a27,#0995,#090b,#088a
	dw #080f,#079b,#072e,#06c7
	dw #0665,#0609,#05b3,#0561
	dw #0514,#04cb,#0486,#0445
	dw #0407,#03ce,#0397,#0363
	dw #0333,#0305,#02d9,#02b0
	dw #028a,#0265,#0243,#0222
	dw #0204,#01e7,#01cb,#01b2
	dw #0199,#0182,#016d,#0158
	dw #0145,#0133,#0121,#0111
	dw #0102,#00f3,#00e6,#00d9
	dw #00cd,#00c1,#00b6,#00ac
	dw #00a2,#0099,#0091,#0089
	dw #0081,#007a,#0073,#006c
	dw #0066,#0061,#005b,#0056
	dw #0051,#004d,#0048,#0044
	dw #0040,#003d,#0039,#0036
	dw #0033,#0030,#002e,#002b
	dw #0029,#0026,#0024,#0022
	dw #0020,#001e,#001d,#001b
	dw #001a,#0018,#0017,#0016
	dw #0014,#0013
.ldf06
	dw le648,le64c,le659,le660
	dw le667,le66b,le672,le679
	dw le67d,le68a,le694,le6a1
	dw le6ab,le6b8,le6c2,le6c9
	dw le6d0,le6d7,le6e7,le6eb
	dw le6ec,le6f6,le700,le704
	dw le70e,le715,le725,le726
	dw le739,le73a,le744,#0000
	dw #0000,#0000,#0000
	db #00
.ldf4f
.ldf4d
	dw le756,lf648,lf6a5,lf6d7
	dw lf713,lf764,lf7a6,lefa3
	dw lefac,lefcd,lf7c6,lee48
	dw leeb1,lef2d,le7b6,le7c4
	dw le7d2,le7e1,le7e9,le7f1
	dw ldf95,ldfa1,ldfad,ldfb6
	dw ldfc2,ldfce,ldfdb,ldfe3
	dw ldfed,lefe7,lfe48,lfe62
	dw lfe48,lfe62,#0000
.ldf95 equ $ + 2
	db #00,#00,#e8,#0c,#ea,#1d,#e9,#07
.ldfa1 equ $ + 6
	db #e4,#0e,#23,#bc,#e1,#ff,#e8,#0c
	db #ea,#1d,#e9,#07,#e4,#0e,#29,#a8
.ldfad equ $ + 2
	db #e1,#ff,#e8,#08,#e9,#10,#35,#30
.ldfb6 equ $ + 3
	db #e1,#ff,#e8,#e8,#11,#ea,#00,#e9
.ldfc2 equ $ + 7
	db #0e,#e4,#01,#52,#63,#e1,#ff,#e8
	db #11,#ea,#00,#e9,#19,#e4,#04,#48
.ldfce equ $ + 3
	db #63,#e1,#ff,#e8,#11,#ea,#00,#e9
	db #0e,#e4,#07,#43,#63,#e1,#ff,#e9
.ldfdb
	db #e8,#06,#e9,#0f,#34,#63,#e1,#ff
.ldfe3
	db #e8,#06,#e9,#0f,#00,#02,#34,#63
.ldfed equ $ + 2
	db #e1,#ff,#e8,#08,#ea,#13,#e9,#02
	db #3d,#3c,#e1,#ff,#ea,#13,#e9,#02
	db #3d,#3c,#e1,#ff
.le648
	db #c8,#80,#c8
.le64c equ $ + 1
	db #ff,#01,#8f,#01,#02,#7f,#03,#09
.le659 equ $ + 6
	db #7f,#08,#c8,#80,#c8,#ff,#01,#96
.le660 equ $ + 5
	db #01,#01,#6a,#01,#ff,#01,#84,#03
.le667 equ $ + 4
	db #c8,#80,#c8,#ff,#01,#89,#01,#ff
.le672 equ $ + 7
.le66b
	db #01,#7c,#03,#01,#82,#03,#ff,#01
.le679 equ $ + 6
	db #8d,#01,#c8,#80,#c8,#ff,#01,#b2
.le67d equ $ + 2
	db #01,#ff,#01,#8f,#01,#01,#7f,#03
.le68a equ $ + 7
	db #01,#81,#01,#c8,#80,#c8,#ff,#01
	db #8d,#01,#02,#7f,#0d,#c8,#80,#c8
.le694 equ $ + 1
	db #ff,#01,#8d,#01,#01,#7f,#03,#03
.le6a1 equ $ + 6
	db #7f,#0a,#c8,#80,#c8,#ff,#01,#8f
	db #01,#04,#80,#01,#04,#7f,#0f,#ff
.le6ab
	db #01,#8f,#01,#0e,#80,#01,#05,#7f
.le6b8 equ $ + 5
	db #04,#0e,#7f,#0b,#ff,#01,#8f,#01
.le6c2 equ $ + 7
	db #01,#7f,#0e,#c8,#80,#c8,#ff,#01
.le6c9 equ $ + 6
	db #8e,#01,#01,#71,#01,#ff,#01,#7b
.le6d0 equ $ + 5
	db #14,#01,#df,#01,#ff,#01,#6c,#0f
.le6d7 equ $ + 4
	db #01,#8a,#0f,#ff,#01,#82,#01,#03
	db #81,#0d,#13,#80,#01,#01,#79,#01
.le6e7 equ $ + 4
	db #c8,#80,#c8,#ff,#01,#84,#28,#ff
.le6ec equ $ + 1
.le6eb
	db #ff,#01,#8c,#01,#01,#7c,#03,#c8
.le6f6 equ $ + 3
	db #80,#c8,#ff,#01,#74,#01,#01,#84
.le700 equ $ + 5
	db #03,#c8,#80,#c8,#ff,#01,#82,#01
.le704 equ $ + 1
	db #ff,#01,#89,#08,#01,#7b,#03,#01
.le70e equ $ + 3
	db #8e,#63,#ff,#01,#81,#03,#01,#7f
.le715 equ $ + 2
	db #03,#ff,#01,#b2,#01,#01,#3a,#01
	db #01,#b2,#01,#01,#58,#01,#01,#8c
.le726 equ $ + 3
.le725 equ $ + 2
	db #01,#ff,#ff,#01,#81,#01,#03,#7f
	db #01,#02,#81,#01,#04,#7f,#01,#01
.le73a equ $ + 7
.le739 equ $ + 6
	db #81,#01,#05,#7f,#01,#ff,#ff,#01
	db #81,#01,#32,#80,#01,#01,#86,#63
.le744 equ $ + 1
	db #ff,#09,#8d,#13,#17,#9b,#1f,#23
	db #a9,#2d,#31,#b5,#39,#3d,#c1,#45
.le756 equ $ + 3
	db #49,#cd,#00,#a4,#98,#a4,#98,#e4
	db #0e,#a4,#a4,#a4,#a4,#a4,#98,#a4
	db #98,#e4,#0e,#af,#a3,#af,#a3,#a8
	db #9c,#a8,#9c,#e4,#0e,#a8,#a8,#a8
	db #a8,#a8,#9c,#a8,#9c,#e4,#0e,#a8
	db #a8,#a8,#a8,#a4,#98,#a4,#98,#e4
	db #0e,#a4,#a4,#e4,#06,#a4,#e4,#06
	db #a4,#e4,#0e,#a4,#98,#a4,#98,#e4
	db #0e,#af,#a3,#af,#a3,#a8,#9c,#e4
	db #0e,#a8,#9c,#e4,#0e,#a8,#e4,#04
	db #a8,#e4,#0e,#a8,#a8,#a8,#9c,#a8
	db #9c,#e4,#0e,#a8,#a8,#a8,#a8,#ff
.le7b6 equ $ + 3
	db #ff,#ff,#00,#e8,#0a,#ea,#19,#e9
	db #17,#e4,#0e,#00,#08,#00,#20,#e1
.le7c4 equ $ + 1
	db #ff,#e8,#0e,#e9,#00,#be,#c1,#c5
.le7d2 equ $ + 7
	db #c1,#e9,#14,#4a,#18,#e1,#ff,#e8
	db #08,#e9,#02,#d3,#cd,#d3,#cd,#d3
.le7e1 equ $ + 6
	db #cd,#d3,#cd,#e1,#ff,#00,#e8,#09
.le7e9 equ $ + 6
	db #e9,#05,#40,#18,#e1,#ff,#e8,#03
.le7f1 equ $ + 6
	db #e9,#17,#3b,#60,#e1,#ff,#e8,#09
	db #ea,#05,#e9,#04,#e4,#0e,#40,#48
	db #e1,#ff,#e1,#ff
.lee48
	db #ea,#00,#e8
	db #08,#e9,#1d,#e6,#00,#21,#40,#2b
	db #c0,#e9,#18,#e5,#01,#e5,#01,#e5
	db #01,#e6,#01,#e5,#01,#e8,#0d,#e6
	db #03,#e5,#01,#e8,#08,#e9,#1d,#e6
	db #04,#e5,#04,#e6,#05,#e5,#04,#e6
	db #00,#e5,#07,#e5,#0a,#e8,#08,#e5
	db #01,#e8,#0d,#e6,#05,#e5,#01,#e6
	db #03,#e8,#06,#e5,#01,#e5,#01,#e5
	db #01,#00,#40,#e8,#08,#e9,#18,#e6
	db #00,#e5,#01,#e6,#01,#e5,#01,#e6
	db #04,#e5,#01,#e8,#0d,#e5,#01,#e8
	db #08,#e6,#0c,#e5,#04,#e6,#13,#e5
.leeb1 equ $ + 6
	db #04,#e6,#00,#e5,#07,#ff,#eb,#30
	db #e8,#08,#e9,#1d,#e6,#07,#2d,#40
	db #3c,#20,#3b,#a0,#e9,#1b,#e8,#0d
	db #e5,#01,#eb,#00,#e8,#08,#e6,#00
	db #e5,#03,#e5,#02,#e6,#01,#e5,#02
	db #e6,#03,#e5,#02,#e9,#1d,#e6,#04
	db #e5,#05,#e6,#05,#e5,#05,#e8,#0d
	db #e6,#00,#e5,#08,#e8,#03,#e9,#18
	db #e6,#0c,#e5,#01,#e9,#14,#e5,#01
	db #e9,#00,#e8,#0d,#e6,#11,#e5,#0a
	db #e6,#0f,#e8,#0e,#e5,#03,#e5,#01
	db #ec,#e5,#0a,#00,#40,#e8,#08,#e9
	db #1b,#e6,#00,#e5,#02,#e6,#01,#e5
	db #02,#e6,#04,#e5,#02,#e8,#0d,#e5
	db #0a,#e8,#08,#e9,#18,#e6,#0f,#e5
	db #04,#e6,#0c,#e5,#04,#e6,#00,#e5
.lef2d equ $ + 2
	db #08,#ff,#e8,#06,#e9,#1d,#e6,#0c
	db #39,#40,#34,#20,#32,#20,#32,#80
	db #e9,#18,#e8,#03,#e5,#01,#e6,#00
	db #e5,#03,#e5,#02,#e6,#01,#e5,#03
	db #e6,#03,#e5,#03,#e8,#08,#e9,#1d
	db #e6,#04,#e5,#06,#e6,#05,#e5,#06
	db #e6,#00,#e5,#09,#e8,#03,#e9,#18
	db #e6,#18,#e5,#0a,#e8,#03,#e5,#01
	db #e8,#0d,#e6,#11,#e5,#01,#e6,#0f
	db #e8,#0e,#00,#08,#e5,#03,#e5,#01
	db #e5,#0a,#00,#38,#e8,#03,#e6,#00
	db #e5,#03,#e6,#01,#e5,#03,#e6,#04
	db #e5,#03,#e8,#0d,#e5,#02,#e8,#08
	db #e9,#14,#e6,#13,#e5,#04,#e6,#10
	db #e5,#04,#e6,#00,#e5,#09,#ff,#04
.lefa3
	db #1e,#40,#1a,#40,#20,#40,#1c,#40
.lefac equ $ + 1
	db #ff,#c2,#c6,#c4,#c0,#c4,#c2,#bc
	db #c0,#be,#ba,#be,#bc,#b6,#ba,#b8
	db #b4,#b8,#b6,#b0,#b4,#b2,#ae,#b2
	db #b0,#aa,#ae,#ac,#a8,#ac,#aa,#a4
.lefcd equ $ + 2
	db #a8,#ff,#36,#10,#38,#10,#38,#10
	db #30,#10,#32,#10,#32,#10,#2a,#10
	db #2c,#10,#2c,#10,#24,#10,#26,#20
.lefe7 equ $ + 4
	db #28,#40,#ff,#10,#e8,#0b,#ea,#00
	db #e9,#00,#e4,#0e,#35,#2c,#e1,#ff
	db #ff,#ff,#e9,#00,#e4,#0e,#35,#2c
	db #e1,#ff,#ff,#ff
.lf648
	db #ad,#a1,#ad
	db #a1,#e4,#0e,#ad,#a8,#a4,#a8,#ad
	db #a1,#ad,#a1,#e4,#0e,#aa,#9e,#aa
	db #9e,#ab,#9f,#ab,#9f,#e4,#0e,#ab
	db #a6,#a4,#a6,#ab,#9f,#ab,#9f,#e4
	db #0e,#ab,#a6,#a4,#a6,#ad,#a1,#ad
	db #a1,#e4,#0e,#ad,#a8,#e4,#06,#a6
	db #e4,#06,#a8,#e4,#0e,#ad,#a1,#ad
	db #a1,#e4,#0e,#aa,#9e,#aa,#9e,#ab
	db #9f,#e4,#0e,#ab,#9f,#e4,#0e,#ab
	db #e4,#04,#a6,#e4,#0e,#a4,#a6,#ab
	db #9f,#ab,#9f,#e4,#0e,#aa,#a6,#a4
.lf6a5 equ $ + 2
	db #a6,#ff,#00,#10,#b9,#bb,#bc,#00
	db #28,#b9,#bb,#3c,#10,#3e,#10,#37
	db #40,#b5,#b7,#b4,#b5,#b2,#b4,#30
	db #10,#b0,#af,#b9,#bb,#bc,#00,#28
	db #bc,#be,#42,#10,#3e,#10,#43,#30
	db #00,#08,#c3,#c7,#c3,#c8,#c3,#c9
.lf6d7 equ $ + 4
	db #c3,#4a,#10,#ff,#34,#10,#39,#10
	db #40,#10,#b4,#b9,#40,#20,#36,#20
	db #32,#10,#37,#10,#3e,#10,#32,#10
	db #37,#10,#3e,#10,#32,#10,#37,#10
	db #34,#10,#39,#10,#40,#10,#c5,#c3
	db #45,#20,#36,#20,#32,#10,#37,#10
	db #3e,#10,#32,#10,#00,#08,#3e,#10
	db #32,#10,#37,#10,#00,#08,#ff,#00
.lf713
	db #26,#10,#26,#10,#26,#10,#26,#10
	db #26,#10,#26,#10,#2d,#10,#2d,#10
	db #a4,#98,#e4,#0e,#a4,#98,#a4,#a4
	db #e4,#0e,#a4,#a4,#a9,#9d,#e4,#0e
	db #a9,#9d,#a9,#a4,#e4,#0e,#ae,#a4
	db #a9,#9d,#e4,#0e,#a9,#9d,#a9,#a4
	db #e4,#0e,#a9,#a9,#e4,#0e,#ae,#a2
	db #ae,#a2,#ae,#a9,#a7,#a9,#e4,#0e
	db #a4,#ab,#e4,#0e,#a8,#ab,#e4,#0b
	db #a4,#e4,#0b,#a4,#e4,#0b,#a4,#a4
.lf764 equ $ + 1
	db #ff,#00,#10,#b9,#be,#c2,#00,#08
	db #c3,#00,#08,#c2,#c0,#be,#00,#08
	db #b9,#00,#08,#b9,#bb,#3c,#10,#b9
	db #00,#08,#b9,#00,#08,#b9,#bb,#3c
	db #10,#c1,#00,#08,#c5,#00,#08,#c6
	db #00,#08,#c5,#c3,#c1,#00,#08,#bc
	db #00,#08,#bc,#be,#bf,#be,#bc,#ba
	db #41,#20,#c0,#be,#3c,#10,#43,#18
.lf7a6 equ $ + 3
	db #00,#08,#ff,#00,#10,#b6,#b9,#be
	db #00,#08,#c0,#00,#08,#be,#bb,#b9
	db #00,#08,#21,#20,#34,#40,#39,#30
	db #ba,#00,#08,#3c,#40,#41,#40,#43
.lf7c6 equ $ + 3
	db #40,#ff,#00,#c5,#00,#08,#c5,#00
	db #08,#c5,#c0,#bc,#c0,#bc,#b9,#bc
	db #b9,#b6,#b9,#b6,#b2,#2f,#18,#b4
	db #32,#18,#b9,#37,#18,#bc,#bb,#b7
	db #b2,#af,#b0,#af,#ad,#b2,#b0,#af
	db #b4,#b2,#b0,#b6,#b4,#b2,#36,#10
	db #32,#10,#37,#40,#e8,#06,#00,#40
	db #ff,#ff,#ff
.lfe48
	db #e8,#0d,#ea
	db #01,#e9,#1d,#a4,#a9,#e4,#01,#a6
	db #a4,#a9,#a6,#a6,#2b,#28,#e4,#01
.lfe62 equ $ + 7
	db #37,#10,#e4,#01,#37,#10,#ff,#e8
	db #03,#e9,#00,#41,#02,#00,#02,#3c
	db #02,#00,#02,#ff,#ff,#00,#00,#00
	db #00,#1c,#7a,#79,#55,#f6,#5b,#7b
	db #55,#5a,#3e,#3f,#f6,#5c,#7c,#55
	db #5a,#3f,#3e,#f2,#5d,#56,#5a,#3f
	db #3e,#f2,#5e,#56,#5a,#3e,#3f,#1c
	db #5f,#7f,#56,#a0,#23,#24,#f0,#60
	db #26,#26,#26,#f0,#33,#24,#60,#26
	db #f0,#34,#24,#33,#67,#f0,#34,#24
	db #33,#67,#f0,#33,#24,#33,#67,#f0
	db #40,#26,#26,#26,#e0,#4a,#40,#26
	db #ce,#7a,#79,#57,#24,#67,#cb,#5b
	db #7b,#58,#24,#67,#fb,#5c,#7c,#58
	db #1e,#3e,#24,#3e,#f9,#5d,#58,#1f
	db #3e,#24,#3e,#c9,#5e,#58,#24,#67
	db #ce,#5f,#7f,#59,#24,#67,#80,#84
	db #c0,#85,#a5,#c0,#86,#a6,#80,#89
	db #80,#8a,#80,#8b,#80,#8c,#80,#8d
	db #80,#8e,#80,#8f,#80,#90,#80,#83
	db #00,#90,#00,#00,#00,#ff
;
.music_info
	db "Zynaps (1987)(Hewson)(Dave Rogers)",0
	db "",0

	read "music_end.asm"
