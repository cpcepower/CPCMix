; Music of Blip Music! - 04 - Chicago (1996)(Systeme D)(Palm Coding)(ST-Module)
; Ripped by Megachur the 23/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLIPMU04.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7800

	read "music_header.asm"

	jp l780b
	jp l7893
	jp l7877
	db #66,#04
;
.init_music
.l780b
;
	ld b,#03
	ld ix,l7bda
	ld iy,l7b06
	ld de,#001c
.l7818
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
	djnz l7818
	ld a,#06
	ld (l78bb),a
	ld a,d
	ld (l78cf),a
	inc a
	ld (l78b6),a
	ld a,#38
	ld (l78c0),a
	ld a,#ff
	ld (l7b02),a
	ld (l7b03),a
	ld (l7b04),a
	ld (l7b05),a
	ld a,#0c
	ld c,d
	call l7ae4
	ld a,#0d
	ld c,d
	jp l7ae4
;
.stop_music
.l7877
;
	ld a,#07
	ld c,#3f
	call l7ae4
	ld a,#08
	ld c,#00
	call l7ae4
	ld a,#09
	ld c,#00
	call l7ae4
	ld a,#0a
	ld c,#00
	jp l7ae4
;
.play_music
.l7893
;
	ld hl,l78b6
	dec (hl)
	ld ix,l7bda
	ld bc,l7be8
	call l7949
	ld ix,l7bf6
	ld bc,l7c04
	call l7949
	ld ix,l7c12
	ld bc,l7c20
	call l7949
.l78b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l78bf
.l78bb equ $ + 1
	ld a,#00
	ld (l78b6),a
.l78c0 equ $ + 1
.l78bf
	ld a,#00
	ld hl,l7b03
	cp (hl)
	jr z,l78ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l7ae4
.l78cf equ $ + 1
.l78ce
	ld a,#00
	ld hl,l7b02
	cp (hl)
	jr z,l78dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l7ae4
.l78de equ $ + 1
.l78dd
	ld a,#00
	ld hl,l7b04
	cp (hl)
	jr z,l78ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l7ae4
.l78ed equ $ + 1
.l78ec
	ld a,#00
	ld hl,l7b05
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l7ae4
.l78fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l79fa
.l7909
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
	jp l7ae4
.l7923
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l7938
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l7938
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l795c
.l7949
	ld a,(l78b6)
	or a
	jp nz,l79fa
	dec (ix+#06)
	jp nz,l79fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l795c
	ld a,(hl)
	or a
	jr z,l78fa
	cp #fe
	jr z,l7909
	cp #ff
	jr z,l7923
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l7b0c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l7998
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l7998
	and #7f
	ld (ix+#06),a
	jr l79eb
.l7998
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l79ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l79ac
	add a
	add a
	add a
	ld e,a
	ld hl,l7c42
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
	jr z,l79eb
	cp #f0
	jp z,l7aa0
	cp #d0
	jp z,l7abc
	cp #b0
	jp z,l7ac4
	cp #80
	jp nc,l7acc
	cp #10
	jr nz,l79eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l79eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l79fa
	ld a,(ix+#17)
	or a
	jr nz,l7a0e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l7a0e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l7a39
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l7b0c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l7a39
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
	call l7ae4
	ld c,h
	ld a,(ix+#03)
	call l7ae4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7a77
	and #0f
	sub (ix+#0a)
	jr nc,l7a6d
	xor a
.l7a6d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l7ae4
.l7a77
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
	jr z,l7a94
	ld b,a
	ld a,c
	ld (l78cf),a
	ld a,b
	sub #40
.l7a94
	ld (l7a9b),a
	ld a,(l78c0)
.l7a9b equ $ + 1
	bit 0,a
	ld (l78c0),a
	ret
.l7aa0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l7cc2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l79eb
.l7abc
	inc hl
	ld a,(hl)
	ld (l78bb),a
	jp l79eb
.l7ac4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l79eb
.l7acc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l78ed),a
	inc hl
	ld a,(hl)
	ld (l78de),a
	jp l79eb
.l7ae4
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
.l7b05 equ $ + 3
.l7b04 equ $ + 2
.l7b03 equ $ + 1
.l7b02
	db #ff,#ff,#ff,#ff
.l7b06
	dw l7fe2,l800c,l8036
.l7b0c
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
.l7bda
	db #00,#00,#00,#01,#08,#00,#00,#00
.l7be8 equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7bf6 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l7c04 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7c12
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l7c20 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l7c42
	db #e2,#7c,#22,#7d,#42,#7d,#00,#00
	db #62,#7d,#a2,#7d,#42,#7d,#1a,#05
	db #62,#7d,#c2,#7d,#42,#7d,#00,#00
	db #62,#7d,#e2,#7d,#42,#7d,#00,#00
	db #62,#7d,#02,#7e,#22,#7e,#00,#00
	db #42,#7e,#82,#7e,#a2,#7e,#00,#00
	db #62,#7d,#c2,#7e,#42,#7d,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #62,#7d,#e2,#7e,#42,#7d,#00,#00
	db #02,#7f,#42,#7f,#62,#7f,#00,#00
	db #1e,#f4,#dc,#76,#9e,#f6,#02,#80
	db #1e,#f4,#dc,#76,#b8,#ed,#dc,#76
	db #b6,#ed,#b8,#ed,#b8,#ed,#dc,#76
	db #b6,#ed,#b8,#ed,#b8,#ed,#dc,#76
	db #b6,#ed,#b8,#ed,#b8,#ed,#dc,#76
	db #b6,#ed,#b8,#ed,#dd,#76,#00,#00
.l7cc2
	db #82,#7f,#a2,#7f,#db,#76,#c2,#7f
	db #dc,#76,#dc,#76,#dd,#76,#dc,#76
	db #dc,#76,#dc,#76,#db,#76,#dc,#76
	db #dc,#76,#dc,#76,#dd,#76,#dc,#76
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#05,#05
	db #03,#08,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #0e,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #38,#00,#60,#00,#b0,#00,#18,#01
	db #48,#01,#80,#01,#c8,#01,#10,#02
	db #58,#02,#b0,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
	db #06,#03,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#05,#04,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0a,#0a,#09,#09,#08,#08,#07
	db #06,#05,#03,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#32,#00,#64,#00,#91,#00
	db #be,#00,#eb,#00,#22,#01,#4a,#01
	db #7c,#01,#a9,#01,#d6,#01,#08,#02
	db #3a,#02,#6c,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0d
	db #0c,#0a,#06,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#07,#0c,#00,#07,#0c,#00,#07
	db #0c,#00,#07,#0c,#00,#07,#0c,#00
	db #07,#0c,#00,#07,#0c,#00,#07,#0c
	db #00,#07,#0c,#00,#07,#0c,#00,#07
	db #0c,#00,#00,#13,#07,#07,#18,#0c
	db #0c,#1f,#13,#13,#0c,#00,#00,#13
	db #07,#07,#18,#0c,#0c,#1f,#13,#13
	db #0c,#00,#00,#13,#07,#07,#18,#0c
	db #0c,#00,#0c,#00,#0c,#00,#0c,#00
	db #0c,#00,#0c,#00,#0c,#00,#0c,#00
	db #0c,#00,#0c,#00,#0c,#00,#0c,#00
	db #0c,#00,#0c,#00,#0c,#00,#0c,#00
.l7fe2
	db #00,#60,#80,#00,#64,#80,#00,#64
	db #80,#00,#93,#80,#00,#93,#80,#00
	db #ad,#80,#00,#ad,#80,#00,#c6,#80
	db #00,#01,#81,#00,#76,#81,#00,#76
	db #81,#00,#b5,#81,#00,#76,#81,#80
.l800c equ $ + 2
	db #e5,#7f,#00,#f4,#81,#00,#1b,#82
	db #00,#1b,#82,#00,#9c,#82,#00,#9c
	db #82,#00,#1b,#82,#00,#1b,#82,#00
	db #1b,#82,#00,#1b,#82,#00,#1b,#82
	db #00,#1b,#82,#00,#1b,#82,#00,#6d
.l8036 equ $ + 4
	db #83,#80,#0f,#80,#00,#70,#83,#00
	db #93,#83,#00,#93,#83,#00,#b6,#83
	db #00,#b6,#83,#00,#d8,#83,#00,#d8
	db #83,#00,#2e,#84,#00,#44,#84,#00
	db #92,#84,#00,#92,#84,#00,#cd,#84
	db #00,#cd,#84,#80,#39,#80,#2b,#40
	db #18,#ff,#43,#02,#f2,#00,#43,#02
	db #02,#3e,#8c,#24,#02,#10,#24,#02
	db #00,#1f,#82,#24,#82,#27,#82,#27
	db #86,#43,#02,#f2,#00,#43,#02,#02
	db #3e,#8c,#24,#02,#10,#24,#02,#00
	db #1f,#82,#24,#82,#27,#82,#27,#86
	db #ff,#4f,#10,#f1,#00,#48,#10,#01
	db #4f,#02,#02,#4f,#82,#4a,#8c,#4f
	db #82,#4f,#82,#4a,#82,#56,#05,#03
	db #56,#85,#ff,#4f,#0e,#f1,#00,#c3
	db #01,#b7,#01,#48,#0e,#f1,#00,#bc
	db #01,#b0,#01,#4a,#8e,#be,#01,#b2
	db #01,#4a,#90,#ff,#2b,#04,#11,#2b
	db #02,#01,#ab,#01,#2e,#82,#ab,#01
	db #2e,#82,#2b,#84,#24,#84,#24,#82
	db #a4,#01,#27,#82,#a4,#01,#27,#82
	db #24,#84,#2b,#84,#2b,#82,#ab,#01
	db #2e,#82,#ab,#01,#2e,#82,#2b,#84
	db #24,#84,#24,#82,#a4,#01,#27,#82
	db #a4,#01,#27,#82,#24,#84,#ff,#2b
	db #04,#01,#2b,#82,#ab,#01,#2e,#82
	db #ab,#01,#2e,#82,#2b,#84,#24,#84
	db #24,#82,#a4,#01,#27,#82,#a4,#01
	db #27,#82,#24,#84,#2b,#84,#2b,#82
	db #ab,#01,#2e,#82,#ab,#01,#2e,#82
	db #2b,#84,#24,#84,#24,#82,#a4,#01
	db #27,#82,#a6,#01,#2a,#82,#26,#84
	db #ff,#2b,#04,#11,#2b,#02,#01,#ab
	db #01,#2e,#82,#ab,#01,#2e,#82,#2b
	db #84,#24,#84,#24,#82,#a4,#01,#27
	db #82,#a4,#01,#27,#82,#24,#84,#2b
	db #84,#2b,#82,#ab,#01,#2e,#82,#ab
	db #01,#2e,#82,#2b,#84,#24,#84,#24
	db #82,#a4,#01,#27,#82,#a4,#01,#27
	db #82,#24,#84,#ff,#37,#04,#f1,#03
	db #37,#03,#01,#b7,#01,#3a,#82,#37
	db #02,#f1,#03,#3e,#02,#01,#3c,#84
	db #3c,#84,#3c,#82,#35,#82,#35,#82
	db #32,#82,#b2,#01,#b2,#01,#37,#84
	db #37,#83,#b7,#01,#3a,#82,#37,#82
	db #3e,#82,#3c,#84,#3c,#84,#3c,#82
	db #35,#82,#35,#82,#36,#82,#b6,#01
	db #b6,#01,#ff,#37,#04,#f1,#03,#37
	db #03,#01,#b7,#01,#3a,#82,#37,#02
	db #f1,#03,#3e,#02,#01,#3c,#84,#3c
	db #84,#3c,#82,#35,#82,#35,#82,#32
	db #82,#b2,#01,#b2,#01,#37,#84,#37
	db #83,#b7,#01,#3a,#82,#37,#82,#3e
	db #82,#3c,#84,#3c,#84,#3c,#82,#35
	db #82,#35,#82,#36,#82,#b6,#01,#b6
	db #01,#ff,#6d,#04,#14,#6d,#04,#04
	db #6d,#84,#6d,#84,#6d,#84,#6d,#84
	db #6d,#84,#6d,#84,#6d,#88,#6d,#88
	db #6d,#88,#6d,#82,#ed,#04,#ed,#04
	db #ed,#04,#ed,#04,#ed,#04,#ed,#04
	db #ff,#ae,#09,#ed,#04,#ed,#04,#ed
	db #04,#ba,#05,#ed,#04,#ae,#09,#ed
	db #04,#ed,#04,#ae,#09,#ed,#04,#ed
	db #04,#ba,#05,#ed,#04,#ba,#05,#ba
	db #05,#ae,#09,#ed,#04,#ed,#04,#ed
	db #04,#ba,#05,#ed,#04,#ae,#09,#ed
	db #04,#ed,#04,#ae,#09,#ae,#09,#ed
	db #04,#ba,#05,#ed,#04,#ba,#05,#ed
	db #04,#ae,#09,#ed,#04,#ed,#04,#ae
	db #09,#ba,#05,#ed,#04,#ae,#09,#ed
	db #04,#ed,#04,#ae,#09,#ed,#04,#ed
	db #04,#ba,#05,#ed,#04,#ae,#09,#ed
	db #04,#ae,#09,#ed,#04,#ae,#09,#ae
	db #09,#ba,#05,#ae,#09,#ae,#09,#ed
	db #04,#ae,#09,#ed,#04,#ae,#09,#ed
	db #04,#ba,#05,#ed,#04,#ba,#05,#ba
	db #05,#ff,#ae,#09,#ed,#04,#ed,#04
	db #ed,#04,#ba,#05,#ed,#04,#ae,#09
	db #ed,#04,#ed,#04,#ae,#09,#ed,#04
	db #ed,#04,#ba,#05,#ed,#04,#ba,#05
	db #ba,#05,#ae,#09,#ed,#04,#ed,#04
	db #ed,#04,#ba,#05,#ed,#04,#ae,#09
	db #ed,#04,#ed,#04,#ae,#09,#ae,#09
	db #ed,#04,#ba,#05,#ed,#04,#ba,#05
	db #ed,#04,#ae,#09,#ed,#04,#ed,#04
	db #ae,#09,#ba,#05,#ed,#04,#ae,#09
	db #ed,#04,#ed,#04,#ae,#09,#ed,#04
	db #ed,#04,#ba,#05,#ed,#04,#ae,#09
	db #ed,#04,#ae,#09,#ed,#04,#ae,#09
	db #ae,#09,#ba,#05,#ae,#09,#ae,#09
	db #ed,#04,#ae,#09,#ed,#04,#ae,#09
	db #ed,#04,#ba,#05,#ed,#04,#ba,#05
	db #ba,#05,#ff,#2b,#02,#06,#ae,#06
	db #ab,#06,#2b,#82,#ae,#06,#2e,#82
	db #ab,#06,#26,#82,#2e,#82,#ab,#06
	db #ae,#06,#30,#82,#a4,#06,#a7,#06
	db #2b,#82,#30,#82,#2b,#82,#27,#82
	db #24,#82,#a7,#06,#a9,#06,#2b,#82
	db #ab,#06,#ae,#06,#2e,#82,#ae,#06
	db #2e,#83,#29,#82,#2b,#82,#26,#82
	db #2b,#82,#30,#82,#ab,#06,#30,#82
	db #2b,#82,#b0,#06,#2b,#82,#2b,#82
	db #2b,#82,#ff,#00,#40,#ff,#2b,#0a
	db #11,#2d,#02,#01,#2e,#84,#30,#82
	db #2e,#84,#2d,#84,#2e,#82,#2d,#84
	db #2b,#8a,#2d,#82,#2e,#84,#30,#82
	db #2e,#84,#2d,#84,#2e,#82,#32,#84
	db #ff,#2b,#0a,#11,#2d,#02,#01,#2e
	db #84,#30,#82,#2e,#84,#2d,#84,#2e
	db #82,#2d,#84,#2b,#8a,#2d,#82,#2e
	db #84,#30,#82,#2e,#84,#2d,#84,#2e
	db #82,#32,#84,#ff,#2b,#0a,#01,#2d
	db #82,#2e,#84,#30,#82,#2e,#84,#2d
	db #84,#2e,#82,#2d,#84,#2b,#8a,#2d
	db #82,#2e,#84,#30,#82,#2e,#84,#2d
	db #84,#2e,#82,#32,#84,#ff,#c3,#b2
	db #02,#c3,#02,#43,#82,#3e,#82,#3a
	db #82,#b7,#02,#b7,#02,#37,#82,#3a
	db #82,#be,#02,#be,#02,#bf,#02,#bf
	db #02,#3f,#82,#3f,#82,#37,#82,#b3
	db #02,#b3,#02,#33,#82,#3a,#82,#3f
	db #82,#be,#02,#be,#02,#3e,#82,#39
	db #82,#36,#82,#b2,#02,#b2,#02,#32
	db #82,#36,#82,#39,#82,#b9,#02,#b9
	db #02,#39,#82,#32,#82,#39,#82,#3e
	db #82,#3e,#82,#be,#02,#be,#02,#be
	db #02,#be,#02,#ff,#37,#06,#01,#37
	db #84,#35,#82,#32,#84,#30,#86,#30
	db #84,#2e,#82,#30,#84,#32,#84,#2b
	db #9c,#ff,#37,#06,#01,#37,#84,#35
	db #82,#32,#84,#30,#86,#30,#84,#2e
	db #82,#30,#84,#32,#84,#2b,#86,#2b
	db #84,#2b,#82,#2b,#84,#37,#84,#36
	db #84,#32,#02,#f1,#03,#b2,#01,#b2
	db #01,#ff,#6d,#04,#04,#6d,#84,#6d
	db #84,#6d,#84,#6d,#84,#6d,#84,#6d
	db #84,#6d,#84,#6d,#88,#6d,#88,#6d
	db #88,#6d,#82,#ed,#04,#ed,#04,#ed
	db #04,#ed,#04,#ed,#04,#ed,#04,#ff
	db #2b,#04,#11,#2b,#02,#01,#ab,#01
	db #2e,#82,#ab,#01,#2e,#82,#2b,#84
	db #24,#84,#24,#82,#a4,#01,#27,#82
	db #a9,#01,#24,#82,#26,#84,#2b,#84
	db #2b,#82,#ab,#01,#2e,#82,#ab,#01
	db #2e,#82,#2b,#84,#24,#84,#24,#82
	db #a4,#01,#27,#82,#a9,#01,#24,#82
	db #26,#84,#ff,#37,#0e,#f1,#01,#30
	db #0a,#01,#35,#84,#32,#84,#37,#8e
	db #30,#8a,#35,#84,#32,#84,#ff,#95
	db #7e,#80,#a1,#84,#00,#00,#02,#d2
	db #02,#c6,#02,#c1,#02,#c1,#02,#d4
	db #02,#d4,#02,#d4,#02,#c5,#02,#d4
	db #02,#bc,#02,#d4,#02,#c1,#02,#d4
	db #02,#c5,#02,#d4,#02,#c8,#02,#d9
	db #02,#c5,#02,#ff,#b7,#03,#b2,#04
	db #d2,#02,#d2,#02,#d2,#02,#b2,#04
	db #d2,#02,#b2,#04,#d2,#02,#b2,#04
	db #d2,#02,#d2,#02,#d2,#02,#b2,#04
	db #cf,#02,#b2,#04,#ba,#03,#b5,#04
	db #d2,#02,#d2,#02,#d2,#02,#b5,#04
	db #d2,#02,#b5,#04,#d2,#02,#b5,#04
	db #d2,#02,#b5,#04,#d2,#02,#b5,#04
	db #cd,#02,#b5,#04,#b5,#03,#b0,#04
	db #d2,#02,#d2,#02,#d2,#02,#b0,#04
	db #d2,#02,#b0,#04,#d2,#02,#b0,#04
	db #d2,#02,#b0,#04,#d2,#02,#d2,#02
	db #cf,#02,#b0,#04,#b3,#03,#b7,#04
	db #d2,#02,#d2,#02,#d2,#02,#b7,#04
	db #d2,#02,#b7,#04,#d2,#02,#b0,#04
	db #d2,#02,#d2,#02,#d2,#02,#b0,#04
	db #cd,#02,#b0,#04,#ff,#c3,#02,#c3
	db #02,#d2,#02,#d2,#02,#d2,#02,#c6
	db #02,#d2,#02,#be,#02,#d2,#02,#c3
	db #02,#d2,#02,#c6,#02,#d2,#02,#ca
	db #02,#cf,#02,#c6,#02,#bf,#02,#bf
	db #02,#d2,#02,#d2,#02,#d2,#02,#c3
	db #02,#d2,#02,#ba,#02,#d2,#02,#bf
	db #02,#d2,#02,#c3,#02,#d2,#02,#c6
	db #02,#cd,#02,#c3,#02,#c1,#02,#c1
	db #02,#d2,#02,#d2,#02,#d2,#02,#c6
	db #02,#d2,#02,#ba,#02,#d2,#02,#c1
	db #02,#d2,#02,#c6,#02,#d2,#02,#ca
	db #02,#cf,#02,#c6,#02,#c1,#02,#c1
	db #02,#d2,#02,#d2,#02,#d2,#02,#c5
	db #02,#d2,#02,#bc,#02,#d2,#02,#c1
	db #02,#d2,#02,#c5,#02,#d2,#02,#c8
	db #02,#cd,#02,#c5,#02,#ff

;
.music_info
	db "Blip Music! - 04 - Chicago (1996)(Systeme D)(Palm Coding)",0
	db "ST-Module",0

	read "music_end.asm"
