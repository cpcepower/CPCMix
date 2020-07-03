; Music of Blip Music! - 32 - Autumn Breeze (1996)(Systeme D)(Palm Coding)(ST-Module)
; Ripped by Megachur the 23/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLIPMU32.BIN"
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
	dw l8002,l8035,l8068
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
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #62,#7d,#a2,#7d,#42,#7d,#08,#18
	db #62,#7d,#c2,#7d,#42,#7d,#08,#18
	db #e2,#7d,#22,#7e,#42,#7d,#00,#00
	db #42,#7e,#82,#7e,#42,#7d,#10,#10
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #e2,#7d,#a2,#7e,#42,#7d,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #c2,#7e,#02,#7f,#22,#7f,#00,#00
	db #42,#7f,#82,#7f,#a2,#7f,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
.l7cc2
	db #c2,#7f,#e2,#7f,#dc,#76,#dc,#76
	db #dc,#76,#dc,#76,#dc,#76,#dc,#76
	db #dc,#76,#dc,#76,#dc,#76,#dc,#76
	db #dc,#76,#dc,#76,#dc,#76,#dc,#76
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0b,#0a,#09
	db #09,#08,#08,#07,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #0c,#0c,#0b,#0b,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#0b,#0b,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0d,#0b,#0a,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#05,#04,#04
	db #04,#03,#03,#03,#02,#02,#02,#02
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#00,#00,#00
	db #05,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
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
	db #06,#06,#06,#05,#04,#04,#03,#02
	db #01,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#03,#07,#00,#03,#0c,#00,#03
	db #07,#00,#03,#0c,#00,#03,#07,#00
	db #03,#0c,#00,#03,#07,#00,#03,#0c
	db #00,#03,#07,#00,#03,#0c,#00,#03
	db #00,#04,#07,#00,#04,#0c,#00,#04
	db #07,#00,#04,#0c,#00,#04,#07,#00
	db #04,#0c,#00,#04,#07,#00,#04,#0c
	db #00,#04,#07,#00,#04,#0c,#00,#04
	l8002
	db #00,#f0,#80,#00,#04,#81,#00,#18
	db #81,#00,#26,#81,#00,#31,#81,#00
	db #f0,#80,#00,#9b,#80,#00,#af,#80
	db #00,#c3,#80,#00,#d1,#80,#00,#dc
	db #80,#00,#9b,#80,#00,#45,#81,#00
	db #59,#81,#00,#6d,#81,#00,#81,#81
	l8035 equ $ + 3
	db #80,#11,#80,#00,#0b,#82,#00,#0f
	db #82,#00,#12,#82,#00,#0f,#82,#00
	db #0f,#82,#00,#fd,#81,#00,#95,#81
	db #00,#ad,#81,#00,#cd,#81,#00,#e2
	db #81,#00,#ec,#81,#00,#15,#82,#00
	db #25,#82,#00,#3f,#82,#00,#51,#82
	l8068 equ $ + 6
	db #00,#61,#82,#80,#44,#80,#00,#c7
	db #82,#00,#cb,#82,#00,#ce,#82,#00
	db #cb,#82,#00,#cb,#82,#00,#c4,#82
	db #00,#72,#82,#00,#72,#82,#00,#72
	db #82,#00,#72,#82,#00,#98,#82,#00
	db #cb,#82,#00,#d1,#82,#00,#d1,#82
	db #00,#d1,#82,#00,#f7,#82,#80,#77
	db #80,#b7,#b4,#05,#b7,#f4,#00,#b7
	db #b4,#02,#37,#1b,#b4,#01,#b7,#b4
	db #03,#b7,#b4,#04,#ff,#ba,#b4,#05
	db #ba,#f4,#00,#ba,#b4,#02,#3a,#1b
	db #b4,#01,#ba,#b4,#03,#ba,#b4,#04
	db #ff,#be,#b4,#05,#be,#f4,#00,#be
	db #b4,#02,#3e,#1d,#b4,#01,#ff,#3e
	db #1e,#b4,#01,#be,#b4,#03,#be,#b4
	db #04,#ff,#c3,#b4,#05,#c3,#f4,#00
	db #c3,#b4,#02,#43,#1b,#b4,#01,#c3
	db #b4,#03,#c3,#b4,#04,#ff,#b7,#b4
	db #05,#b7,#f4,#00,#b7,#b4,#02,#37
	db #1b,#b4,#01,#b7,#b4,#03,#b7,#b4
	db #04,#ff,#ba,#b4,#05,#ba,#f4,#00
	db #ba,#b4,#02,#3a,#1b,#b4,#01,#ba
	db #b4,#03,#ba,#b4,#04,#ff,#be,#b4
	db #05,#be,#f4,#00,#be,#b4,#02,#3e
	db #1d,#b4,#01,#ff,#3e,#1e,#b3,#01
	db #be,#b4,#03,#be,#b4,#04,#ff,#c3
	db #b4,#05,#c3,#f4,#00,#c3,#b4,#02
	db #43,#1b,#b4,#01,#c3,#b4,#03,#c3
	db #b4,#04,#ff,#b3,#b4,#05,#b3,#f4
	db #01,#b3,#b4,#02,#33,#1b,#b4,#01
	db #b3,#b4,#03,#b3,#b4,#04,#ff,#bc
	db #b6,#05,#bc,#f6,#01,#bc,#b6,#02
	db #3c,#1b,#b6,#01,#bc,#b6,#03,#bc
	db #b6,#04,#ff,#b5,#b6,#05,#b5,#f6
	db #01,#b5,#b6,#02,#35,#1b,#b6,#01
	db #b5,#b6,#03,#b5,#b6,#04,#ff,#be
	db #b6,#05,#be,#f6,#01,#be,#b6,#02
	db #3e,#1b,#b6,#01,#be,#b6,#03,#be
	db #b6,#04,#ff,#37,#10,#b6,#02,#37
	db #04,#b6,#03,#37,#04,#b6,#04,#37
	db #04,#b6,#05,#3a,#02,#b6,#02,#39
	db #02,#06,#ff,#3a,#0e,#b6,#02,#3a
	db #02,#b6,#03,#3a,#02,#b6,#04,#3a
	db #02,#b6,#05,#3a,#04,#b6,#06,#3a
	db #02,#b6,#02,#35,#02,#06,#3d,#82
	db #3c,#82,#ff,#3e,#10,#b6,#02,#3e
	db #04,#b6,#03,#3e,#04,#b6,#04,#3e
	db #04,#b6,#05,#3e,#04,#b6,#0f,#ff
	db #00,#18,#3e,#04,#b6,#01,#41,#04
	db #06,#ff,#43,#18,#b6,#02,#43,#04
	db #b6,#03,#43,#02,#b6,#04,#43,#02
	db #b6,#0f,#ff,#fe,#18,#37,#02,#b6
	db #02,#32,#02,#06,#3a,#82,#39,#82
	db #ff,#37,#20,#18,#ff,#00,#20,#ff
	db #00,#20,#ff,#00,#1a,#b7,#b5,#01
	db #b7,#05,#b5,#05,#b5,#05,#b7,#05
	db #b7,#05,#ff,#33,#10,#b6,#02,#33
	db #04,#b6,#03,#33,#04,#b6,#04,#33
	db #04,#b6,#05,#ba,#b5,#01,#ba,#05
	db #b9,#05,#b9,#05,#ff,#3c,#10,#b6
	db #02,#3a,#08,#b6,#03,#39,#04,#b6
	db #02,#3a,#82,#39,#02,#06,#ff,#35
	db #10,#b6,#02,#35,#08,#b5,#03,#39
	db #04,#b6,#02,#3c,#04,#06,#ff,#3e
	db #18,#b4,#02,#3e,#04,#b4,#03,#3e
	db #02,#b4,#04,#3e,#02,#b4,#0f,#ff
	db #2b,#04,#ba,#02,#2b,#02,#0a,#2b
	db #82,#5b,#04,#bb,#02,#2b,#02,#ba
	db #02,#2b,#02,#0a,#2b,#84,#2b,#82
	db #2b,#82,#5b,#04,#bb,#02,#2b,#02
	db #ba,#02,#2b,#02,#0a,#ff,#2b,#04
	db #ba,#02,#2b,#02,#0a,#2b,#82,#5b
	db #04,#bb,#02,#2b,#02,#ba,#02,#2b
	db #02,#0a,#2b,#04,#ba,#03,#2b,#02
	db #ba,#04,#2b,#02,#ba,#0f,#5b,#04
	db #bb,#05,#2b,#02,#ba,#06,#2b,#02
	db #0a,#ff,#fe,#20,#ff,#37,#20,#18
	db #ff,#00,#20,#ff,#00,#20,#ff,#2b
	db #04,#ba,#02,#2b,#02,#0a,#2b,#82
	db #5b,#04,#bb,#02,#2b,#02,#ba,#02
	db #2b,#02,#0a,#2b,#84,#2b,#82,#2b
	db #82,#5b,#04,#bb,#02,#2b,#02,#ba
	db #02,#2b,#02,#0a,#ff,#2b,#04,#ba
	db #02,#2b,#02,#0a,#2b,#82,#5b,#04
	db #bb,#02,#2b,#02,#ba,#02,#2b,#02
	db #0a,#2b,#04,#ba,#03,#2b,#02,#ba
	db #04,#2b,#02,#ba,#0f,#5b,#04,#bb
	db #05,#2b,#02,#ba,#06,#2b,#02,#0a
	db #ff
;
.music_info
	db "Blip Music! - 32 - Autumn Breeze (1996)(Systeme D)(Palm Coding)",0
	db "ST-Module",0

	read "music_end.asm"
