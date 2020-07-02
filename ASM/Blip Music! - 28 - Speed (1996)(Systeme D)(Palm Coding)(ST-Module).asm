; Music of Blip Music! - 28 - Speed (1996)(Systeme D)(Palm Coding)(ST-Module)
; Ripped by Megachur the 23/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLIPMU28.BIN"
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
	ld a,#05
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
	dw l7ea2,l7eba,l7ed2
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
	db #e2,#7c,#22,#7d,#42,#7d,#08,#18
	db #62,#7d,#a2,#7d,#42,#7d,#00,#00
	db #62,#7d,#c2,#7d,#e2,#7d,#00,#00
	db #62,#7d,#02,#7e,#22,#7e,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#b8,#ed,#94,#64,#b8,#ed
	db #94,#64,#b8,#ed,#be,#f3,#c2,#7f
	db #9e,#f4,#dc,#76,#be,#f6,#dd,#76
	db #de,#f6,#fe,#f6,#1e,#f7,#62,#80
	db #5e,#f7,#7e,#f7,#9e,#f7,#dd,#76
	db #b8,#ed,#b8,#ed,#b8,#ed,#dc,#76
	db #b9,#ed,#b9,#ed,#dc,#76,#00,#00
.l7cc2
	db #42,#7e,#62,#7e,#82,#7e,#dc,#76
	db #dc,#76,#dc,#76,#dc,#76,#dc,#76
	db #dc,#76,#dc,#76,#dc,#76,#dc,#76
	db #dc,#76,#dc,#76,#dc,#76,#dc,#76
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #0b,#0b,#0c,#0c,#0d,#0d,#0c,#0c
	db #0d,#0d,#0e,#0e,#0d,#0d,#0c,#0c
	db #0d,#0d,#0e,#0e,#0d,#0d,#0c,#0c
	db #0d,#0d,#0e,#0e,#0d,#0d,#0c,#0c
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
	db #0e,#0d,#0c,#0c,#0b,#0b,#0a,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#04,#03,#01,#00,#00,#00
	db #0f,#00,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #06,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#00,#00,#00,#00,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#05,#fd,#00,#05,#fd,#00,#05
	db #fd,#00,#05,#fd,#00,#05,#fd,#00
	db #05,#fd,#00,#05,#fd,#00,#05,#fd
	db #00,#05,#fd,#00,#05,#fd,#00,#05
	db #00,#04,#fb,#00,#04,#fb,#00,#04
	db #fb,#00,#04,#fb,#00,#04,#fb,#00
	db #04,#fb,#00,#04,#fb,#00,#04,#fb
	db #00,#04,#fb,#00,#04,#fb,#00,#04
	db #00,#03,#fc,#00,#03,#fc,#00,#03
	db #fc,#00,#03,#fc,#00,#03,#fc,#00
	db #03,#fc,#00,#03,#fc,#00,#03,#fc
	db #00,#03,#fc,#00,#03,#fc,#00,#03
.l7ea2
	db #00,#98,#7f,#00,#69,#7f,#00,#c6
	db #7f,#00,#f5,#7f,#00,#f5,#7f,#00
	db #f5,#7f,#00,#fd,#80,#80,#a8,#7e
.l7eba
	db #00,#92,#81,#00,#92,#81,#00,#a4
	db #81,#00,#81,#81,#00,#3c,#82,#00
	db #3c,#82,#00,#75,#82,#80,#c0,#7e
.l7ed2
	db #00,#b4,#83,#00,#9a,#83,#00,#b7
	db #83,#00,#18,#84,#00,#f4,#82,#00
	db #f4,#82,#00,#b0,#84,#80,#d8,#7e
	db #b2,#f1,#00,#9f,#11,#ab,#01,#9f
	db #01,#2b,#82,#9f,#01,#ab,#01,#b2
	db #f1,#00,#9f,#11,#ab,#01,#9f,#01
	db #2b,#82,#9f,#01,#ab,#01,#b2,#f1
	db #01,#9a,#11,#a6,#01,#9a,#01,#26
	db #82,#9a,#01,#a6,#01,#b2,#f1,#01
	db #9a,#11,#a6,#01,#9a,#01,#a6,#01
	db #b2,#f1,#01,#9a,#01,#a6,#01,#b0
	db #f1,#00,#9d,#11,#a9,#01,#9d,#01
	db #29,#82,#9d,#01,#a9,#01,#b0,#f1
	db #00,#9d,#11,#a9,#01,#9d,#01,#29
	db #82,#9d,#01,#a9,#01,#b2,#f1,#02
	db #a2,#11,#ae,#01,#a2,#01,#2e,#82
	db #a2,#01,#ae,#01,#b1,#f1,#02,#a1
	db #11,#ad,#01,#a1,#01,#ad,#01,#b1
	db #f1,#02,#a1,#11,#ad,#01,#ff,#37
	db #04,#b3,#01,#37,#02,#b2,#02,#37
	db #03,#b3,#02,#b7,#b3,#03,#37,#02
	db #b2,#04,#37,#14,#b3,#04,#37,#04
	db #b3,#01,#37,#02,#b2,#02,#37,#03
	db #b3,#02,#b7,#b3,#03,#37,#02,#b2
	db #04,#37,#14,#b3,#04,#ff,#37,#04
	db #13,#37,#02,#b2,#02,#37,#03,#b3
	db #02,#b7,#b3,#03,#37,#02,#b2,#03
	db #37,#14,#b3,#03,#37,#04,#b3,#01
	db #37,#02,#b2,#02,#37,#03,#b3,#02
	db #b7,#b3,#03,#37,#02,#b2,#03,#37
	db #14,#b3,#03,#ff,#37,#04,#b3,#01
	db #37,#02,#b2,#02,#37,#03,#b3,#02
	db #b7,#b3,#03,#37,#02,#b2,#04,#37
	db #14,#b3,#04,#37,#04,#b3,#01,#37
	db #02,#b2,#02,#37,#03,#b3,#02,#b7
	db #b3,#03,#37,#02,#b2,#04,#37,#14
	db #b3,#04,#ff,#b2,#f1,#00,#9f,#11
	db #ab,#01,#9f,#01,#2b,#82,#9f,#01
	db #ab,#01,#b2,#f1,#00,#9f,#11,#ab
	db #01,#9f,#01,#2b,#82,#9f,#01,#ab
	db #01,#b2,#f1,#01,#9a,#11,#a6,#01
	db #9a,#01,#26,#82,#9a,#01,#a6,#01
	db #b2,#f1,#01,#9a,#11,#a6,#01,#9a
	db #01,#a6,#01,#b2,#f1,#01,#9a,#11
	db #a6,#01,#b0,#f1,#00,#9d,#11,#a9
	db #01,#9d,#01,#29,#82,#9d,#01,#a9
	db #01,#b0,#f1,#00,#9d,#11,#a9,#01
	db #9d,#01,#29,#82,#9d,#01,#a9,#01
	db #b2,#f1,#02,#a2,#11,#ae,#01,#a2
	db #01,#2e,#82,#a2,#01,#ae,#01,#b1
	db #f1,#02,#a1,#11,#ad,#01,#a1,#01
	db #ad,#01,#b1,#f1,#02,#a1,#11,#ad
	db #01,#ff,#00,#01,#bb,#b0,#00,#bb
	db #b0,#01,#bb,#b0,#02,#bb,#b0,#03
	db #3b,#82,#bb,#b0,#00,#b9,#00,#b9
	db #b0,#02,#bb,#b0,#00,#b9,#00,#b9
	db #b0,#02,#bc,#b0,#00,#bc,#b0,#02
	db #bb,#b0,#00,#bb,#b0,#02,#b7,#b0
	db #00,#b7,#b0,#01,#b7,#b0,#02,#b7
	db #b0,#03,#b7,#b0,#04,#37,#11,#b0
	db #05,#b9,#b0,#00,#b9,#b0,#02,#ba
	db #b0,#00,#ba,#b0,#01,#ba,#b0,#02
	db #ba,#b0,#03,#bc,#b0,#00,#bc,#b0
	db #01,#bc,#b0,#02,#bc,#b0,#03,#be
	db #b0,#00,#be,#b0,#01,#be,#b0,#02
	db #be,#b0,#03,#3e,#02,#b0,#05,#bd
	db #b0,#00,#bd,#b0,#02,#be,#b0,#00
	db #be,#b0,#02,#bb,#b0,#00,#bb,#b0
	db #02,#bc,#b0,#00,#bc,#b0,#01,#bd
	db #b0,#02,#ff,#00,#01,#bb,#b0,#00
	db #bb,#b0,#01,#bb,#b0,#02,#bb,#b0
	db #03,#3b,#82,#bb,#b0,#00,#b9,#00
	db #b9,#b0,#02,#bb,#b0,#00,#b9,#00
	db #b9,#b0,#02,#bc,#b0,#00,#bc,#b0
	db #02,#bb,#b0,#00,#bb,#b0,#02,#b7
	db #b0,#00,#b7,#b0,#01,#b7,#b0,#02
	db #b7,#b0,#03,#b7,#b0,#04,#37,#11
	db #b0,#05,#b9,#b0,#00,#b9,#b0,#02
	db #ba,#b0,#00,#ba,#b0,#01,#ba,#b0
	db #02,#ba,#b0,#03,#bc,#b0,#00,#bc
	db #b0,#01,#bc,#b0,#02,#bc,#b0,#03
	db #be,#b0,#00,#be,#b0,#01,#be,#b0
	db #02,#be,#b0,#03,#3e,#02,#b0,#05
	db #bd,#b0,#00,#bd,#b0,#02,#be,#b0
	db #00,#be,#b0,#02,#bb,#b0,#00,#bb
	db #b0,#02,#3c,#03,#b0,#00,#ff,#1f
	db #10,#e0,#12,#fe,#20,#22,#08,#e0
	db #1e,#21,#07,#e0,#10,#93,#10,#ff
	db #1f,#10,#e0,#12,#fe,#10,#1f,#10
	db #00,#22,#08,#e0,#1e,#21,#08,#e0
	db #10,#ff,#1f,#10,#e0,#12,#fe,#20
	db #22,#08,#e0,#1e,#21,#08,#e0,#10
	db #ff,#a6,#10,#a6,#b0,#06,#9f,#00
	db #a6,#b0,#05,#a6,#00,#9f,#b0,#04
	db #a6,#00,#9f,#b0,#03,#a6,#00,#a6
	db #00,#9f,#b0,#02,#a6,#00,#a6,#00
	db #9f,#00,#a6,#00,#9f,#00,#a2,#00
	db #a2,#00,#9b,#00,#a2,#00,#a2,#00
	db #9b,#00,#a2,#00,#9b,#00,#a2,#00
	db #a2,#00,#9b,#00,#a2,#00,#a2,#00
	db #9b,#00,#a2,#00,#9b,#00,#9f,#00
	db #9f,#00,#98,#00,#9f,#00,#9f,#00
	db #98,#00,#9f,#00,#98,#00,#9f,#00
	db #9f,#00,#98,#00,#9f,#00,#9f,#00
	db #98,#00,#9f,#00,#98,#00,#a1,#00
	db #a1,#00,#9a,#00,#a1,#00,#a1,#00
	db #9a,#00,#a1,#00,#9a,#00,#a1,#00
	db #a1,#00,#9a,#00,#a1,#00,#a1,#b0
	db #03,#9a,#00,#a1,#b0,#05,#9a,#b0
	db #06,#ff,#37,#04,#b3,#01,#37,#02
	db #b2,#02,#37,#03,#b3,#02,#b7,#b3
	db #03,#37,#02,#b2,#04,#37,#14,#b3
	db #04,#37,#04,#b3,#01,#37,#02,#b2
	db #02,#37,#03,#b3,#02,#b7,#b3,#03
	db #37,#02,#b2,#04,#37,#04,#b3,#04
	db #22,#08,#e0,#1e,#21,#07,#e0,#10
	db #93,#10,#ff,#b2,#f1,#00,#9f,#11
	db #ab,#01,#9f,#01,#2b,#82,#9f,#01
	db #ab,#01,#b2,#f1,#00,#9f,#11,#ab
	db #01,#9f,#01,#2b,#82,#9f,#01,#ab
	db #01,#b7,#f1,#02,#9b,#11,#a7,#01
	db #9b,#01,#27,#82,#9b,#01,#a7,#01
	db #b7,#f1,#02,#9b,#11,#a7,#01,#9b
	db #01,#a7,#01,#b7,#f1,#02,#9b,#11
	db #a7,#01,#b7,#f1,#00,#98,#11,#a4
	db #01,#98,#01,#24,#82,#98,#01,#a4
	db #01,#b7,#f1,#00,#98,#11,#a4,#01
	db #98,#01,#24,#82,#98,#01,#a4,#01
	db #b2,#f1,#01,#a6,#11,#b2,#01,#a6
	db #01,#32,#82,#a6,#01,#b2,#01,#b2
	db #f1,#01,#a6,#11,#b2,#01,#a6,#01
	db #b2,#01,#b2,#f1,#01,#a6,#11,#b2
	db #01,#ff,#be,#b0,#00,#be,#b0,#01
	db #be,#b0,#02,#be,#b0,#03,#3e,#82
	db #bb,#b0,#01,#be,#00,#c3,#00,#c3
	db #b0,#02,#be,#b0,#00,#c3,#00,#c3
	db #b0,#02,#be,#b0,#00,#c3,#00,#c3
	db #b0,#02,#c3,#b0,#00,#c3,#b0,#01
	db #c3,#b0,#02,#c2,#b0,#00,#c2,#b0
	db #01,#c2,#b0,#02,#c0,#b0,#00,#c0
	db #b0,#02,#c2,#b0,#00,#c2,#b0,#01
	db #c2,#b0,#02,#be,#b0,#00,#be,#b0
	db #01,#be,#b0,#02,#c2,#b0,#00,#c2
	db #b0,#02,#c6,#b0,#00,#c6,#b0,#01
	db #c6,#b0,#02,#c5,#b0,#00,#c5,#b0
	db #01,#c5,#b0,#02,#c3,#b0,#00,#c3
	db #b0,#02,#c5,#b0,#00,#c5,#b0,#02
	db #c1,#b0,#00,#c5,#00,#c5,#b0,#02
	db #c1,#b0,#00,#c5,#00,#c1,#00,#be
	db #00,#be,#b0,#01,#be,#b0,#02,#be
	db #b0,#03,#3e,#06,#b0,#04,#c0,#b0
	db #00,#c0,#b0,#02,#be,#b0,#00,#c0
	db #00,#c0,#b0,#01,#c0,#b0,#02,#ff
	db #b2,#f1,#00,#fe,#0f,#b2,#f1,#01
	db #fe,#0f,#b0,#f1,#00,#fe,#0f,#b2
	db #f1,#02,#fe,#07,#b1,#f1,#02,#fe
	db #07,#ff,#fe,#40,#ff,#b2,#f1,#00
	db #1f,#02,#11,#1f,#03,#01,#1f,#82
	db #b2,#f1,#00,#1f,#02,#11,#1f,#03
	db #01,#1f,#82,#b2,#f1,#01,#1a,#02
	db #11,#1a,#03,#01,#1a,#82,#b2,#f1
	db #01,#1a,#02,#11,#1a,#02,#01,#b2
	db #f1,#01,#1a,#02,#11,#b0,#f1,#00
	db #1d,#02,#11,#1d,#03,#01,#1d,#82
	db #b0,#f1,#00,#1d,#02,#11,#1d,#03
	db #01,#1d,#82,#b2,#f1,#02,#22,#02
	db #11,#22,#03,#01,#22,#82,#b1,#f1
	db #02,#21,#02,#11,#21,#02,#01,#b1
	db #f1,#02,#21,#02,#11,#ff,#00,#34
	db #3e,#04,#01,#3d,#84,#3d,#82,#bd
	db #01,#bd,#01,#ff,#bb,#b0,#00,#bb
	db #b0,#01,#bb,#b0,#02,#bb,#b0,#03
	db #3b,#82,#bb,#b0,#00,#b9,#00,#b9
	db #b0,#02,#bb,#b0,#00,#b9,#00,#b9
	db #b0,#02,#bc,#b0,#00,#bc,#b0,#02
	db #bb,#b0,#00,#bb,#b0,#02,#b7,#b0
	db #00,#b7,#b0,#01,#b7,#b0,#02,#b7
	db #b0,#03,#b7,#b0,#04,#37,#11,#b0
	db #05,#b9,#b0,#00,#b9,#b0,#02,#ba
	db #b0,#00,#ba,#b0,#01,#ba,#b0,#02
	db #ba,#b0,#03,#bc,#b0,#00,#bc,#b0
	db #01,#bc,#b0,#02,#bc,#b0,#03,#be
	db #b0,#00,#be,#b0,#01,#be,#b0,#02
	db #be,#b0,#03,#3e,#02,#b0,#05,#bd
	db #b0,#00,#bd,#b0,#02,#be,#b0,#00
	db #be,#b0,#02,#bb,#b0,#00,#bb,#b0
	db #02,#bc,#b0,#00,#bc,#b0,#01,#bd
	db #b0,#02,#bd,#b0,#03,#ff,#bb,#b0
	db #00,#bb,#b0,#01,#bb,#b0,#02,#bb
	db #b0,#03,#3b,#82,#bb,#b0,#00,#b9
	db #00,#b9,#b0,#02,#bb,#b0,#00,#b9
	db #00,#b9,#b0,#02,#bc,#b0,#00,#bc
	db #b0,#02,#bb,#b0,#00,#bb,#b0,#02
	db #b7,#b0,#00,#b7,#b0,#01,#b7,#b0
	db #02,#b7,#b0,#03,#b7,#b0,#04,#37
	db #11,#b0,#05,#b9,#b0,#00,#b9,#b0
	db #02,#ba,#b0,#00,#ba,#b0,#01,#ba
	db #b0,#02,#ba,#b0,#03,#bc,#b0,#00
	db #bc,#b0,#01,#bc,#b0,#02,#bc,#b0
	db #03,#be,#b0,#00,#be,#b0,#01,#be
	db #b0,#02,#be,#b0,#03,#3e,#02,#b0
	db #05,#bd,#b0,#00,#bd,#b0,#02,#be
	db #b0,#00,#be,#b0,#02,#bb,#b0,#00
	db #bb,#b0,#02,#bc,#b0,#00,#bc,#b0
	db #01,#bd,#b0,#02,#bd,#b0,#03,#ff
;
.music_info
	db "Blip Music! - 28 - Speed (1996)(Systeme D)(Palm Coding)",0
	db "ST-Module",0

	read "music_end.asm"
