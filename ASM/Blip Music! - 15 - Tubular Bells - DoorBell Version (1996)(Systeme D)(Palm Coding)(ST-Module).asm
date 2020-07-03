; Music of Blip Music! - 15 - Tubular Bells - DoorBell Version (1996)(Systeme D)(Palm Coding)(ST-Module)
; Ripped by Megachur the 23/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLIPMU15.BIN"
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
	dw l8262,l82bc,l8316
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
	db #e2,#7c,#22,#7d,#42,#7d,#10,#10
	db #e2,#7c,#62,#7d,#42,#7d,#10,#10
	db #82,#7d,#c2,#7d,#e2,#7d,#00,#00
	db #02,#7e,#42,#7e,#42,#7d,#00,#00
	db #62,#7e,#a2,#7e,#42,#7d,#08,#18
	db #82,#7d,#c2,#7e,#42,#7d,#00,#00
	db #82,#7d,#e2,#7e,#42,#7d,#18,#00
	db #02,#7f,#42,#7f,#42,#7d,#08,#00
	db #62,#7f,#a2,#7f,#42,#7d,#00,#00
	db #82,#7d,#c2,#7f,#e2,#7f,#00,#00
	db #62,#7f,#02,#80,#42,#7d,#00,#00
	db #82,#7d,#22,#80,#42,#80,#00,#00
	db #62,#80,#a2,#80,#c2,#80,#00,#01
	db #e2,#80,#22,#81,#42,#81,#00,#00
	db #82,#7d,#62,#81,#82,#81,#00,#00
	db #b8,#ed,#b8,#ed,#dd,#76,#00,#00
.l7cc2
	db #a2,#81,#c2,#81,#e2,#81,#02,#82
	db #22,#82,#42,#82,#dd,#76,#dc,#76
	db #dc,#76,#dc,#76,#db,#76,#dc,#76
	db #dc,#76,#dc,#76,#dd,#76,#dc,#76
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0d,#0e,#0d,#0c,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #17,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #0e,#0f,#0f,#0f,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #0a,#0a,#0b,#0b,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0d,#0b,#09,#08,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#03,#02,#02
	db #02,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0c,#0b,#0a,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#05,#04,#04
	db #04,#03,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #09,#08,#08,#08,#08,#07,#07,#07
	db #07,#06,#06,#06,#05,#04,#02,#00
	db #00,#00,#fd,#ff,#fa,#ff,#fd,#ff
	db #00,#00,#03,#00,#06,#00,#03,#00
	db #00,#00,#fd,#ff,#fa,#ff,#fd,#ff
	db #00,#00,#03,#00,#06,#00,#03,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0d,#0e,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#08,#07,#06,#05,#04,#03
	db #02,#01,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#08,#07,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#00,#00,#00,#00,#00
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0e,#0f,#0f,#0f,#0e,#0e,#0e
	db #0d,#0c,#0c,#0b,#0b,#0a,#09,#09
	db #08,#08,#08,#80,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #0f,#0d,#0b,#09,#07,#05,#03,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #38,#00,#60,#00,#b0,#00,#18,#01
	db #48,#01,#80,#01,#c8,#01,#10,#02
	db #58,#02,#b0,#02,#00,#00,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
	db #06,#03,#01,#00,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#0b,#0a
	db #0a,#09,#09,#08,#07,#06,#06,#06
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #0f,#00,#00,#00,#00,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#03,#fb,#00,#03,#fb,#00,#03
	db #fb,#00,#03,#fb,#00,#03,#fb,#00
	db #03,#fb,#00,#03,#fb,#00,#03,#fb
	db #00,#03,#fb,#00,#03,#fb,#00,#03
	db #00,#f9,#00,#f9,#00,#f9,#00,#f9
	db #00,#f9,#00,#f9,#00,#f9,#00,#f9
	db #00,#f9,#00,#f9,#00,#f9,#00,#f9
	db #00,#f9,#00,#f9,#00,#f9,#00,#f9
	db #00,#fd,#00,#fd,#00,#fd,#00,#fd
	db #00,#fd,#00,#fd,#00,#fd,#00,#fd
	db #00,#fd,#00,#fd,#00,#fd,#00,#fd
	db #00,#fd,#00,#fd,#00,#fd,#00,#fd
	db #00,#f7,#00,#f7,#00,#f7,#00,#f7
	db #00,#f7,#00,#f7,#00,#f7,#00,#f7
	db #00,#f7,#00,#f7,#00,#f7,#00,#f7
	db #00,#f7,#00,#f7,#00,#f7,#00,#f7
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
.l8262
	db #00,#70,#83,#00,#88,#83,#00,#70
	db #83,#00,#a0,#83,#00,#e3,#83,#00
	db #b9,#83,#00,#28,#84,#00,#4b,#84
	db #00,#49,#85,#00,#65,#85,#00,#91
	db #85,#00,#e5,#85,#00,#e5,#85,#00
	db #e5,#85,#00,#aa,#85,#00,#aa,#85
	db #00,#1b,#86,#00,#96,#84,#00,#a0
	db #84,#fe,#28,#85,#00,#e3,#83,#00
	db #71,#84,#00,#71,#84,#00,#a0,#83
	db #00,#b3,#84,#00,#d3,#84,#00,#b3
	db #84,#00,#d3,#84,#00,#02,#85,#80
.l82bc equ $ + 2
	db #6e,#82,#00,#54,#86,#00,#66,#86
	db #00,#54,#86,#00,#66,#86,#00,#a6
	db #86,#00,#78,#86,#00,#a6,#86,#00
	db #d4,#86,#00,#a6,#86,#00,#a6,#86
	db #00,#a6,#86,#00,#97,#87,#00,#97
	db #87,#00,#be,#87,#00,#70,#87,#00
	db #70,#87,#00,#ec,#87,#00,#d4,#86
	db #00,#a6,#86,#fe,#29,#87,#00,#a6
	db #86,#00,#a6,#86,#00,#a6,#86,#00
	db #66,#86,#00,#a6,#86,#00,#78,#86
	db #00,#a6,#86,#00,#78,#86,#00,#f2
.l8316 equ $ + 4
	db #86,#80,#c8,#82,#00,#f6,#87,#00
	db #f9,#87,#00,#f6,#87,#00,#fe,#87
	db #00,#23,#88,#00,#23,#88,#00,#23
	db #88,#00,#23,#88,#00,#23,#88,#00
	db #23,#88,#00,#57,#88,#00,#0a,#89
	db #00,#0a,#89,#00,#1b,#89,#00,#f9
	db #88,#00,#f9,#88,#00,#2c,#89,#00
	db #57,#88,#00,#23,#88,#fe,#23,#88
	db #00,#23,#88,#00,#23,#88,#00,#23
	db #88,#00,#fe,#87,#00,#5a,#88,#00
	db #8e,#88,#00,#5a,#88,#00,#8e,#88
	db #00,#c5,#88,#80,#22,#83,#52,#04
	db #b5,#03,#51,#04,#05,#4f,#82,#51
	db #82,#4d,#82,#4f,#84,#51,#84,#4d
	db #82,#4f,#84,#4f,#84,#ff,#52,#04
	db #b5,#03,#51,#04,#05,#4f,#82,#51
	db #82,#4d,#82,#4f,#84,#51,#84,#4d
	db #82,#4f,#84,#51,#84,#ff,#52,#04
	db #15,#51,#04,#b5,#03,#4f,#02,#05
	db #51,#82,#4d,#82,#54,#84,#52,#84
	db #51,#82,#52,#84,#51,#84,#ff,#2b
	db #02,#13,#26,#02,#b3,#00,#2b,#84
	db #c3,#86,#24,#fe,#01,#c5,#85,#10
	db #fe,#01,#c1,#85,#14,#fe,#01,#2b
	db #04,#1c,#2b,#04,#bc,#00,#4d,#02
	db #05,#2b,#04,#0c,#2b,#04,#bc,#02
	db #ff,#2b,#02,#b3,#00,#26,#02,#03
	db #2b,#04,#b3,#00,#43,#04,#ba,#02
	db #4d,#02,#05,#4f,#84,#51,#04,#b5
	db #02,#4d,#82,#4f,#04,#05,#4f,#04
	db #b5,#02,#ff,#2b,#02,#13,#26,#02
	db #b3,#00,#2b,#84,#4f,#02,#b6,#02
	db #51,#02,#05,#4d,#82,#2b,#04,#bc
	db #00,#2b,#84,#4d,#02,#05,#2b,#04
	db #0c,#2b,#04,#bc,#02,#ff,#43,#08
	db #14,#43,#04,#07,#c3,#04,#c5,#04
	db #46,#82,#48,#82,#4a,#02,#b4,#02
	db #4d,#02,#07,#4a,#82,#4d,#82,#4f
	db #82,#3e,#02,#b4,#02,#41,#02,#04
	db #ff,#2b,#08,#b0,#03,#37,#04,#b0
	db #07,#37,#04,#b0,#06,#37,#04,#b0
	db #05,#37,#04,#b0,#04,#37,#02,#b0
	db #03,#c1,#b3,#02,#c1,#03,#41,#02
	db #b3,#01,#46,#02,#b3,#00,#ff,#43
	db #02,#17,#43,#02,#b7,#02,#43,#82
	db #43,#02,#07,#37,#84,#35,#02,#c3
	db #0a,#37,#04,#c3,#09,#39,#04,#c3
	db #08,#35,#02,#c3,#0a,#37,#04,#c3
	db #09,#37,#84,#ff,#2b,#18,#b0,#03
	db #4a,#06,#04,#4b,#82,#ff,#4a,#10
	db #04,#46,#02,#07,#43,#08,#04,#43
	db #02,#b7,#00,#45,#02,#07,#46,#82
	db #ff,#46,#04,#b7,#02,#45,#04,#07
	db #43,#82,#45,#82,#41,#82,#43,#84
	db #45,#84,#35,#02,#00,#37,#82,#3e
	db #02,#06,#37,#02,#00,#3e,#02,#06
	db #ff,#2b,#02,#13,#26,#02,#b3,#00
	db #2b,#84,#4f,#02,#b6,#02,#51,#02
	db #05,#4d,#82,#2b,#02,#b3,#00,#2b
	db #02,#03,#26,#02,#b3,#00,#2b,#02
	db #03,#4d,#02,#05,#2e,#04,#b9,#00
	db #2d,#02,#09,#2b,#02,#b1,#08,#ff
	db #52,#02,#15,#4a,#02,#05,#51,#02
	db #b5,#03,#4a,#02,#05,#4f,#82,#51
	db #82,#4d,#82,#54,#82,#4a,#82,#52
	db #82,#4a,#82,#51,#82,#52,#82,#4a
	db #82,#51,#82,#4a,#82,#ff,#50,#04
	db #b7,#02,#4f,#04,#07,#4d,#82,#4f
	db #82,#4b,#82,#4d,#84,#4f,#84,#4b
	db #02,#b7,#00,#4d,#03,#f7,#00,#fe
	db #01,#4d,#03,#07,#93,#15,#ff,#43
	db #0a,#14,#c1,#04,#be,#04,#41,#82
	db #43,#82,#3e,#86,#bc,#04,#ba,#04
	db #3c,#82,#bc,#04,#ba,#04,#3c,#82
	db #3e,#82,#ff,#37,#0a,#14,#b9,#04
	db #ba,#04,#bc,#04,#be,#04,#bf,#04
	db #c1,#04,#43,#82,#ba,#04,#bc,#04
	db #be,#04,#bf,#04,#c1,#04,#c3,#04
	db #45,#82,#ba,#04,#bc,#04,#be,#04
	db #c1,#04,#c3,#04,#c5,#04,#ff,#46
	db #02,#04,#c3,#04,#fe,#01,#43,#8c
	db #43,#0a,#0d,#c3,#0d,#c3,#0c,#c3
	db #0d,#c3,#0c,#c3,#0d,#c3,#0c,#ff
	db #43,#02,#f0,#01,#3e,#02,#15,#45
	db #02,#f0,#02,#3e,#02,#15,#43,#02
	db #f0,#01,#45,#02,#f0,#02,#41,#02
	db #f0,#03,#43,#02,#f0,#02,#3e,#02
	db #15,#45,#02,#f0,#04,#3e,#02,#15
	db #41,#02,#f0,#03,#43,#02,#f0,#02
	db #3e,#02,#15,#43,#02,#f0,#02,#3e
	db #02,#15,#ff,#4f,#02,#f7,#01,#4a
	db #02,#15,#51,#02,#17,#4a,#02,#17
	db #4f,#02,#17,#51,#02,#17,#4d,#02
	db #17,#4f,#02,#f7,#02,#4a,#02,#15
	db #51,#02,#f7,#04,#4a,#02,#15,#4d
	db #02,#17,#4f,#02,#f7,#02,#4a,#02
	db #15,#4f,#02,#f7,#02,#4a,#02,#15
	db #ff,#43,#02,#f0,#01,#3e,#02,#15
	db #45,#02,#f0,#02,#3e,#02,#15,#43
	db #02,#f0,#01,#45,#02,#f0,#02,#41
	db #02,#f0,#03,#41,#02,#f0,#05,#3e
	db #02,#15,#46,#02,#f0,#03,#3e,#02
	db #15,#45,#02,#f0,#02,#52,#02,#10
	db #3e,#02,#15,#51,#02,#10,#3e,#02
	db #15,#ff,#fe,#02,#4a,#04,#b5,#05
	db #4a,#0a,#05,#4a,#84,#4a,#86,#4a
	db #84,#4a,#82,#ff,#00,#02,#4a,#04
	db #b5,#05,#4a,#0a,#05,#4a,#84,#4a
	db #86,#4a,#84,#4a,#82,#ff,#52,#02
	db #b6,#00,#4a,#02,#05,#51,#02,#06
	db #4a,#02,#05,#4f,#02,#06,#51,#82
	db #4d,#82,#4f,#82,#4a,#02,#05,#51
	db #02,#06,#4a,#02,#05,#4d,#02,#06
	db #4f,#82,#4a,#02,#05,#51,#02,#06
	db #4a,#02,#05,#ff,#52,#02,#b6,#00
	db #4a,#02,#05,#51,#02,#06,#4a,#02
	db #05,#4f,#02,#06,#51,#82,#4d,#82
	db #4f,#82,#4a,#02,#05,#51,#02,#06
	db #4a,#02,#05,#4d,#02,#06,#4f,#82
	db #4a,#02,#05,#4f,#02,#06,#4a,#02
	db #05,#ff,#43,#08,#b4,#01,#4f,#02
	db #05,#51,#82,#4d,#82,#54,#82,#4a
	db #82,#52,#82,#4a,#82,#51,#82,#52
	db #82,#4a,#82,#51,#82,#4a,#82,#ff
	db #2b,#04,#b1,#07,#2b,#04,#b1,#06
	db #2b,#02,#b1,#05,#2b,#02,#b1,#04
	db #2b,#02,#b1,#03,#2b,#02,#b1,#01
	db #2b,#02,#b1,#09,#2b,#02,#b1,#08
	db #2b,#02,#b0,#07,#2b,#02,#b0,#06
	db #2b,#02,#b0,#03,#2b,#02,#b0,#01
	db #2b,#02,#b0,#00,#2b,#82,#ff,#c4
	db #13,#fe,#01,#bc,#87,#1b,#fe,#01
	db #c3,#13,#fe,#01,#bc,#87,#1b,#fe
	db #01,#c1,#13,#fe,#01,#c3,#13,#fe
	db #01,#bf,#13,#fe,#01,#c1,#13,#fe
	db #01,#bc,#87,#1b,#fe,#01,#c3,#13
	db #fe,#01,#bc,#87,#1b,#fe,#01,#bf
	db #13,#fe,#01,#c1,#13,#fe,#01,#bc
	db #87,#1b,#fe,#01,#c1,#13,#fe,#01
	db #bc,#87,#1b,#93,#15,#ff,#2b,#03
	db #b0,#00,#fe,#07,#ab,#00,#fe,#01
	db #ab,#00,#fe,#01,#ab,#00,#fe,#01
	db #29,#83,#fe,#01,#a9,#00,#fe,#01
	db #a9,#00,#fe,#01,#29,#83,#fe,#01
	db #29,#83,#fe,#01,#ff,#2b,#03,#b0
	db #00,#fe,#07,#ab,#00,#fe,#01,#ab
	db #00,#fe,#01,#ab,#00,#fe,#01,#29
	db #83,#fe,#01,#a9,#00,#fe,#01,#a9
	db #00,#fe,#01,#29,#83,#fe,#01,#29
	db #83,#fe,#01,#ff,#37,#0a,#e0,#12
	db #39,#02,#83,#20,#3a,#02,#83,#1e
	db #3c,#02,#83,#1b,#3e,#04,#83,#18
	db #3e,#02,#e3,#18,#3e,#02,#83,#18
	db #41,#02,#83,#14,#3e,#02,#83,#18
	db #41,#02,#83,#14,#c3,#83,#12,#93
	db #15,#ff,#00,#18,#3a,#04,#b9,#00
	db #39,#04,#09,#ff,#fe,#20,#ff,#2b
	db #20,#b0,#0a,#ff,#2b,#08,#b0,#08
	db #2b,#04,#b0,#07,#2b,#04,#b0,#06
	db #2b,#04,#b0,#05,#2b,#04,#b0,#04
	db #2b,#02,#b0,#03,#2b,#02,#b0,#02
	db #2b,#02,#b0,#01,#2b,#02,#b0,#00
	db #ff,#4f,#02,#be,#00,#4f,#02,#0e
	db #4f,#82,#4f,#82,#43,#02,#bb,#00
	db #37,#02,#b2,#03,#37,#02,#02,#37
	db #02,#be,#00,#37,#02,#0e,#37,#82
	db #37,#02,#bb,#00,#2b,#02,#0e,#43
	db #02,#bb,#00,#2b,#02,#b2,#03,#2b
	db #02,#02,#2b,#82,#ff,#00,#20,#ff
	db #4f,#02,#be,#00,#4f,#02,#0e,#4f
	db #82,#4f,#82,#43,#02,#bb,#00,#37
	db #02,#b2,#03,#37,#02,#02,#37,#02
	db #be,#00,#37,#02,#0e,#37,#82,#37
	db #02,#bb,#00,#2b,#02,#0e,#43,#02
	db #bb,#00,#2b,#02,#b2,#03,#2b,#02
	db #02,#2b,#82,#ff,#37,#02,#b0,#00
	db #32,#02,#00,#37,#82,#4f,#02,#0e
	db #43,#02,#bb,#00,#37,#02,#b2,#03
	db #37,#02,#02,#b7,#b0,#00,#fe,#01
	db #37,#02,#00,#32,#82,#37,#02,#b0
	db #00,#2b,#02,#0e,#3a,#02,#b0,#00
	db #2b,#02,#b2,#03,#39,#02,#00,#2b
	db #02,#02,#ff,#4f,#02,#be,#00,#4f
	db #02,#0e,#4f,#82,#4f,#82,#4f,#02
	db #b8,#00,#37,#02,#b2,#03,#37,#02
	db #02,#37,#02,#be,#00,#37,#02,#0e
	db #37,#82,#37,#02,#bb,#00,#2b,#02
	db #0e,#43,#02,#bb,#00,#2b,#02,#b2
	db #03,#2b,#02,#02,#2b,#82,#ff,#2b
	db #08,#0d,#37,#02,#0c,#fe,#06,#2b
	db #08,#0d,#37,#02,#0c,#fe,#06,#ff
	db #2b,#08,#0d,#37,#02,#0c,#fe,#06
	db #2b,#08,#0d,#37,#02,#0c,#fe,#06
	db #ff,#2b,#08,#0d,#37,#02,#0c,#fe
	db #06,#2b,#08,#0d,#37,#02,#0c,#fe
	db #06,#ff,#2b,#08,#bd,#00,#43,#02
	db #bc,#00,#fe,#06,#2b,#02,#0d,#37
	db #02,#0e,#37,#02,#bb,#00,#2b,#02
	db #0e,#43,#02,#bb,#00,#2b,#02,#b2
	db #03,#2b,#02,#02,#2b,#82,#ff
;
.music_info
	db "Blip Music! - 15 - Tubular Bells - DoorBell Version (1996)(Systeme D)(Palm Coding)",0
	db "ST-Module",0

	read "music_end.asm"
