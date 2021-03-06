; Music of Robocop Animation (1993)(Crack'n'Rom)()(ST-Module)
; Ripped by Megachur the 24/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ROBOCOPA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8833

	read "music_header.asm"

	call l8872
	ld hl,#be80
	ld de,l8843
	ld bc,#8000
	call #bcd7
	ret
.l8843
	push af
	push iy
	push ix
	push hl
	push de
	push bc
	call l8875
	pop bc
	pop de
	pop hl
	pop ix
	pop iy
	pop af
	ret
	ld hl,#be80
	call #bcdd
	call #bca7
	ret
	db #2a,#00,#00,#fc,#fc,#00,#00,#fc
	db #fc,#00,#00,#fc,#fc,#00,#00,#fc
	db #fc
.l8872
	jp l887d
.l8875
	jp l8905
	jp l88e9
	db #66,#04
;
.init_music
.l887d
;
	ld b,#03
	ld ix,l8c4c
	ld iy,l8b78
	ld de,#001c
.l888a
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
	djnz l888a
	ld a,#06
	ld (l892d),a
	ld a,d
	ld (l8941),a
	inc a
	ld (l8928),a
	ld a,#38
	ld (l8932),a
	ld a,#ff
	ld (l8b74),a
	ld (l8b75),a
	ld (l8b76),a
	ld (l8b77),a
	ld a,#0c
	ld c,d
	call l8b56
	ld a,#0d
	ld c,d
	jp l8b56
;
.stop_music
.l88e9
;
	ld a,#07
	ld c,#3f
	call l8b56
	ld a,#08
	ld c,#00
	call l8b56
	ld a,#09
	ld c,#00
	call l8b56
	ld a,#0a
	ld c,#00
	jp l8b56
;
.play_music
.l8905
;
	ld hl,l8928
	dec (hl)
	ld ix,l8c4c
	ld bc,l8c5a
	call l89bb
	ld ix,l8c68
	ld bc,l8c76
	call l89bb
	ld ix,l8c84
	ld bc,l8c92
	call l89bb
.l8928 equ $ + 1
	ld a,#05
	or a
	jr nz,l8931
.l892d equ $ + 1
	ld a,#06
	ld (l8928),a
.l8932 equ $ + 1
.l8931
	ld a,#38
	ld hl,l8b75
	cp (hl)
	jr z,l8940
	ld (hl),a
	ld c,a
	ld a,#07
	call l8b56
.l8941 equ $ + 1
.l8940
	ld a,#01
	ld hl,l8b74
	cp (hl)
	jr z,l894f
	ld (hl),a
	ld c,a
	ld a,#06
	call l8b56
.l8950 equ $ + 1
.l894f
	ld a,#00
	ld hl,l8b76
	cp (hl)
	jr z,l895e
	ld (hl),a
	ld c,a
	ld a,#0b
	call l8b56
.l895f equ $ + 1
.l895e
	ld a,#00
	ld hl,l8b77
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l8b56
.l896c
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l8a6c
.l897b
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
	jp l8b56
.l8995
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l89aa
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l89aa
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l89ce
.l89bb
	ld a,(l8928)
	or a
	jp nz,l8a6c
	dec (ix+#06)
	jp nz,l8a6c
	ld l,(ix+#00)
	ld h,(ix+#01)
.l89ce
	ld a,(hl)
	or a
	jr z,l896c
	cp #fe
	jr z,l897b
	cp #ff
	jr z,l8995
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l8b7e
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l8a0a
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l8a0a
	and #7f
	ld (ix+#06),a
	jr l8a5d
.l8a0a
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l8a1e
	ld (ix+#05),a
	ld (ix+#0a),d
.l8a1e
	add a
	add a
	add a
	ld e,a
	ld hl,l8cb4
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
	jr z,l8a5d
	cp #f0
	jp z,l8b12
	cp #d0
	jp z,l8b2e
	cp #b0
	jp z,l8b36
	cp #80
	jp nc,l8b3e
	cp #10
	jr nz,l8a5d
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l8a5d
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l8a6c
	ld a,(ix+#17)
	or a
	jr nz,l8a80
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l8a80
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l8aab
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l8b7e
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l8aab
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
	call l8b56
	ld c,h
	ld a,(ix+#03)
	call l8b56
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l8ae9
	and #0f
	sub (ix+#0a)
	jr nc,l8adf
	xor a
.l8adf
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l8b56
.l8ae9
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
	jr z,l8b06
	ld b,a
	ld a,c
	ld (l8941),a
	ld a,b
	sub #40
.l8b06
	ld (l8b0d),a
	ld a,(l8932)
.l8b0d equ $ + 1
	set 5,a
	ld (l8932),a
	ret
.l8b12
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l8d34
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l8a5d
.l8b2e
	inc hl
	ld a,(hl)
	ld (l892d),a
	jp l8a5d
.l8b36
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l8a5d
.l8b3e
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l895f),a
	inc hl
	ld a,(hl)
	ld (l8950),a
	jp l8a5d
.l8b56
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
.l8b77 equ $ + 3
.l8b76 equ $ + 2
.l8b75 equ $ + 1
.l8b74
	db #01,#38,#00,#00
.l8b78
	dw l9094,l90c4,l90f4
.l8b7e
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
.l8c4c
	db #26,#91,#00,#01,#08,#06,#02,#47
.l8c5a equ $ + 6
	db #00,#00,#00,#df,#ac,#90,#14,#8e
	db #94,#8e,#b4,#8e,#00,#00,#0e,#12
.l8c68 equ $ + 4
	db #4b,#00,#d4,#8f,#d5,#91,#02,#03
	db #09,#05,#01,#19,#00,#00,#00,#e7
.l8c76 equ $ + 2
	db #dc,#90,#14,#8e,#54,#8e,#74,#8e
	db #00,#00,#02,#1e,#86,#03,#34,#90
.l8c84
	db #71,#94,#04,#05,#0a,#09,#02,#44
.l8c92 equ $ + 6
	db #00,#00,#00,#ef,#0c,#91,#14,#8f
	db #54,#8f,#b4,#8e,#08,#18,#02,#1e
	db #4b,#00,#34,#00,#00,#00,#00,#00
	db #00,#81,#6a,#88,#ff,#00
	db #53,#54,#2d,#4d,#6f,#64,#75,#6c
.l8cb4 equ $ + 2
	db #65,#2e,#54,#8d,#94,#8d,#b4,#8d
	db #00,#00,#54,#8d,#d4,#8d,#f4,#8d
	db #00,#00,#4e,#87,#4e,#87,#4e,#87
	db #00,#00,#4e,#87,#4e,#87,#4e,#87
	db #00,#00,#4e,#87,#4e,#87,#4e,#87
	db #00,#00,#14,#8e,#54,#8e,#74,#8e
	db #00,#00,#14,#8e,#94,#8e,#b4,#8e
	db #00,#00,#14,#8e,#d4,#8e,#f4,#8e
	db #00,#00,#14,#8e,#54,#8e,#b4,#8e
	db #00,#00,#14,#8f,#54,#8f,#b4,#8e
	db #08,#18,#74,#8f,#b4,#8f,#b4,#8e
	db #18,#08,#4e,#87,#4e,#87,#4e,#87
	db #00,#00,#4e,#87,#4e,#87,#4e,#87
	db #00,#00,#4e,#87,#4e,#87,#4e,#87
	db #00,#00,#4e,#87,#4e,#87,#4e,#87
	db #00,#00,#4e,#87,#4e,#87,#4e,#87
.l8d34 equ $ + 2
	db #00,#00,#4e,#87,#d4,#8f,#f4,#8f
	db #14,#90,#4e,#87,#4e,#87,#4e,#87
	db #34,#90,#54,#90,#4e,#87,#74,#90
	db #4e,#87,#4e,#87,#4e,#87,#4e,#87
	db #4e,#87,#80,#00,#00,#01,#80,#01
	db #00,#02,#80,#02,#00,#03,#00,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0f,#0e,#0e,#0d,#0a
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#06,#00,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0f,#0e,#0e,#0d,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#06,#00,#00,#00,#00,#00
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
	db #00,#00,#0f,#0f,#0e,#0d,#0c,#0b
	db #0b,#0b,#0a,#09,#08,#07,#06,#05
	db #04,#03,#02,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0d,#0e,#0f,#0e,#0d,#0c
	db #0b,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0d,#0e,#0c,#0a,#09,#08
	db #08,#07,#07,#06,#06,#05,#05,#05
	db #04,#04,#04,#03,#03,#03,#02,#02
	db #02,#02,#01,#01,#01,#01,#00,#00
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#08,#0a,#0d,#0c,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fc,#ff,#fb,#ff,#fa,#ff,#f9,#ff
	db #f8,#ff,#f6,#ff,#f7,#ff,#f7,#ff
	db #f7,#ff,#f8,#ff,#f7,#ff,#f7,#ff
	db #f7,#ff,#09,#0b,#0d,#0c,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#f8,#fd,#00,#f8,#fd,#00
	db #f8,#fd,#00,#f8,#fd,#00,#f8,#fd
	db #00,#f8,#fd,#00,#f8,#fd,#00,#f8
	db #fd,#00,#f8,#fd,#00,#f8,#fd,#00
	db #f8,#fd,#f9,#fd,#00,#f9,#fd,#00
	db #f9,#fd,#00,#f9,#fd,#00,#f9,#fd
	db #00,#f9,#fd,#00,#f9,#fd,#00,#f9
	db #fd,#00,#f9,#fd,#00,#f9,#fd,#00
	db #f9,#fd,#f7,#fc,#00,#f7,#fc,#00
	db #f7,#fc,#00,#f7,#fc,#00,#f7,#fc
	db #00,#f7,#fc,#00,#f7,#fc,#00,#f7
	db #fc,#00,#f7,#fc,#00,#f7,#fc,#00
	db #f7,#fc,#0c,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#f8,#fb,#00,#f8,#fb,#00
	db #f8,#fb,#00,#f8,#fb,#00,#f8,#fb
	db #00,#f8,#fb,#00,#f8,#fb,#00,#f8
	db #fb,#00,#f8,#fb,#00,#f8,#fb,#00
	db #f8,#fb,#f9,#fc,#00,#f9,#fc,#00
	db #f9,#fc,#00,#f9,#fc,#00,#f9,#fc
	db #00,#f9,#fc,#00,#f9,#fc,#00,#f9
	db #fc,#00,#f9,#fc,#00,#f9,#fc,#00
.l9094 equ $ + 2
	db #f9,#fc,#00,#cc,#91,#00,#cf,#91
	db #00,#24,#91,#00,#24,#91,#00,#24
	db #91,#00,#60,#91,#00,#60,#91,#00
	db #24,#91,#00,#24,#91,#00,#24,#91
	db #00,#24,#91,#00,#cf,#91,#00,#cf
	db #91,#00,#24,#91,#00,#24,#91,#80
.l90c4 equ $ + 2
	db #97,#90,#00,#9e,#92,#00,#27,#93
	db #00,#d2,#91,#00,#d2,#91,#00,#d2
	db #91,#00,#5c,#92,#00,#5c,#92,#00
	db #d2,#91,#00,#d2,#91,#00,#d2,#91
	db #00,#d2,#91,#00,#27,#93,#00,#27
	db #93,#00,#d2,#91,#00,#d2,#91,#80
.l90f4 equ $ + 2
	db #c7,#90,#00,#3e,#95,#00,#b1,#93
	db #00,#b1,#93,#00,#33,#94,#00,#6e
	db #94,#00,#a1,#94,#00,#a1,#94,#00
	db #6e,#94,#00,#6e,#94,#00,#33,#94
	db #00,#33,#94,#00,#b1,#93,#00,#b1
	db #93,#00,#b1,#93,#00,#b1,#93,#80
	db #f7,#90,#00,#02,#4e,#02,#f6,#0a
	db #4e,#02,#06,#4e,#82,#4f,#04,#f6
	db #08,#4e,#02,#f6,#0a,#4e,#02,#06
	db #4c,#02,#f6,#02,#4c,#04,#06,#4e
	db #04,#f6,#03,#4c,#08,#f6,#02,#49
	db #02,#f6,#0a,#49,#04,#06,#49,#86
	db #49,#82,#49,#82,#4a,#04,#f6,#02
	db #4a,#04,#06,#4c,#86,#ff,#3e,#02
	db #00,#56,#02,#f6,#01,#3b,#02,#11
	db #56,#02,#f6,#01,#3e,#02,#00,#51
	db #02,#06,#3b,#02,#11,#51,#02,#f6
	db #01,#3e,#02,#00,#4f,#02,#06,#3b
	db #02,#11,#4f,#02,#f6,#01,#3e,#02
	db #00,#51,#02,#06,#3b,#02,#11,#51
	db #02,#f6,#01,#3e,#02,#00,#56,#02
	db #06,#3b,#02,#11,#56,#02,#f6,#01
	db #3e,#02,#00,#51,#02,#06,#3b,#02
	db #11,#51,#02,#f6,#01,#3e,#02,#00
	db #4f,#02,#06,#3b,#02,#11,#4f,#02
	db #f6,#01,#be,#00,#51,#02,#06,#d1
	db #06,#bb,#11,#d1,#f6,#01,#51,#02
	db #06,#ff,#00,#40,#ff,#00,#40,#ff
	db #a3,#f5,#07,#a3,#05,#af,#05,#a3
	db #05,#bb,#11,#a3,#f8,#07,#af,#05
	db #a3,#05,#a3,#05,#a3,#05,#af,#05
	db #a3,#05,#bb,#11,#a3,#f8,#07,#af
	db #05,#a3,#05,#a1,#05,#a1,#05,#ad
	db #05,#a1,#05,#bb,#11,#a1,#f8,#07
	db #ad,#05,#a1,#05,#a1,#05,#a1,#05
	db #ad,#05,#a1,#05,#bb,#11,#a1,#f8
	db #07,#ad,#05,#a1,#05,#9e,#05,#9e
	db #05,#aa,#05,#9e,#05,#bb,#11,#9e
	db #f8,#07,#aa,#05,#9e,#05,#9e,#05
	db #9e,#05,#aa,#05,#9e,#05,#bb,#11
	db #9e,#f8,#07,#aa,#05,#9e,#05,#9f
	db #05,#9f,#05,#ab,#05,#9f,#05,#bb
	db #11,#9f,#f8,#07,#ab,#05,#9f,#05
	db #a1,#05,#a1,#05,#ad,#05,#a1,#05
	db #bb,#11,#a1,#f8,#07,#ad,#05,#a1
	db #05,#ff,#26,#03,#08,#a6,#08,#26
	db #82,#26,#82,#21,#83,#a1,#08,#21
	db #82,#21,#82,#1f,#83,#9f,#08,#1f
	db #82,#1f,#82,#21,#83,#a1,#08,#21
	db #82,#21,#82,#26,#83,#a6,#08,#26
	db #82,#26,#82,#21,#83,#a1,#08,#21
	db #82,#21,#82,#1f,#83,#9f,#08,#1f
	db #82,#1f,#82,#21,#83,#a1,#08,#21
	db #82,#21,#82,#ff,#a3,#f5,#07,#a3
	db #05,#af,#05,#a3,#05,#a3,#05,#a3
	db #f8,#07,#af,#05,#a3,#05,#a3,#05
	db #a3,#05,#af,#05,#a3,#05,#af,#05
	db #a3,#f8,#07,#af,#05,#a3,#05,#a1
	db #05,#a1,#05,#ad,#05,#a1,#05,#ad
	db #05,#a1,#f8,#07,#ad,#05,#a1,#05
	db #a1,#05,#a1,#05,#ad,#05,#a1,#05
	db #ad,#05,#a1,#f8,#07,#ad,#05,#a1
	db #05,#9e,#05,#9e,#05,#aa,#05,#9e
	db #05,#aa,#05,#aa,#05,#aa,#05,#9e
	db #05,#9e,#05,#9e,#05,#aa,#05,#9e
	db #05,#aa,#05,#9e,#f8,#07,#aa,#05
	db #9e,#05,#9f,#05,#9f,#05,#ab,#05
	db #9f,#05,#ab,#05,#9f,#f8,#07,#ab
	db #05,#9f,#05,#a1,#05,#a1,#05,#ad
	db #05,#a1,#05,#ad,#05,#a1,#f8,#07
	db #ad,#05,#a1,#05,#ff,#a3,#f5,#07
	db #a3,#05,#af,#05,#a3,#05,#bb,#11
	db #a3,#f8,#07,#af,#05,#a3,#05,#a3
	db #05,#a3,#05,#af,#05,#a3,#05,#bb
	db #11,#a3,#f8,#07,#af,#05,#a3,#05
	db #a1,#05,#a1,#05,#ad,#05,#a1,#05
	db #bb,#11,#a1,#f8,#07,#ad,#05,#a1
	db #05,#a1,#05,#a1,#05,#ad,#05,#a1
	db #05,#bb,#11,#a1,#f8,#07,#ad,#05
	db #a1,#05,#9e,#05,#9e,#05,#aa,#05
	db #9e,#05,#bb,#11,#9e,#f8,#07,#aa
	db #05,#9e,#05,#9e,#05,#9e,#05,#aa
	db #05,#9e,#05,#bb,#11,#9e,#f8,#07
	db #aa,#05,#9e,#05,#9f,#05,#9f,#05
	db #ab,#05,#9f,#05,#bb,#11,#9f,#f8
	db #07,#ab,#05,#9f,#05,#a1,#05,#a1
	db #05,#ad,#05,#a1,#05,#bb,#11,#a1
	db #f8,#07,#ad,#05,#a1,#05,#ff,#c7
	db #f7,#07,#ca,#07,#ce,#07,#ca,#07
	db #c7,#07,#ca,#07,#ce,#07,#ca,#07
	db #c7,#07,#ca,#07,#ce,#07,#ca,#07
	db #c7,#07,#ca,#07,#ce,#07,#ca,#07
	db #c5,#07,#c9,#07,#cc,#07,#c9,#07
	db #c5,#07,#c9,#07,#cc,#07,#c9,#07
	db #c5,#07,#c9,#07,#cc,#07,#c9,#07
	db #c5,#07,#c9,#07,#cc,#07,#c9,#07
	db #c2,#07,#c5,#07,#c9,#07,#c5,#07
	db #c2,#07,#c5,#07,#c9,#07,#c5,#07
	db #c2,#07,#c5,#07,#c9,#07,#c5,#07
	db #c2,#07,#c5,#07,#c9,#07,#c5,#07
	db #ca,#07,#c9,#07,#c7,#07,#c9,#07
	db #ca,#07,#c9,#07,#c7,#07,#c9,#07
	db #cc,#07,#c9,#07,#c5,#07,#c9,#07
	db #cc,#07,#c9,#07,#c5,#07,#c9,#07
	db #ff,#47,#04,#19,#4a,#02,#09,#47
	db #82,#4a,#82,#4c,#04,#0a,#4e,#08
	db #09,#cc,#09,#ca,#09,#4c,#86,#cc
	db #09,#ce,#09,#4f,#82,#4e,#82,#4c
	db #82,#4a,#82,#47,#86,#cc,#09,#ce
	db #09,#4f,#82,#4e,#82,#4c,#82,#4a
	db #82,#ce,#09,#cf,#09,#ce,#09,#cf
	db #09,#4c,#84,#ff,#4e,#02,#19,#fe
	db #02,#4e,#02,#09,#47,#82,#47,#82
	db #49,#82,#4a,#84,#51,#82,#51,#84
	db #53,#82,#4c,#88,#cc,#09,#fe,#01
	db #cc,#09,#fe,#01,#4c,#82,#4e,#82
	db #4c,#82,#4a,#82,#47,#82,#45,#82
	db #47,#88,#4a,#84,#49,#84,#ff,#ca
	db #b6,#05,#ce,#06,#d1,#b6,#03,#d6
	db #06,#da,#b6,#01,#d6,#06,#d1,#b6
	db #00,#ce,#06,#ca,#b6,#01,#ce,#06
	db #d1,#b6,#02,#d6,#06,#da,#b6,#03
	db #d6,#06,#51,#02,#b6,#04,#c7,#b6
	db #05,#ca,#06,#cf,#b6,#03,#d3,#06
	db #d6,#b6,#01,#d3,#06,#cf,#b6,#00
	db #ca,#06,#c7,#b6,#01,#ca,#06,#cf
	db #b6,#02,#d3,#06,#d6,#b6,#03,#d3
	db #06,#4f,#02,#b6,#04,#c5,#b6,#05
	db #ca,#06,#ce,#b6,#03,#d1,#06,#d6
	db #b6,#01,#d1,#06,#ce,#b6,#00,#ca
	db #06,#c5,#b6,#01,#ca,#06,#ce,#b6
	db #02,#d1,#06,#d6,#b6,#03,#d1,#06
	db #4e,#02,#b6,#04,#c3,#b6,#05,#c7
	db #06,#ca,#b6,#03,#cf,#06,#d3,#b6
	db #01,#cf,#06,#ca,#b6,#00,#c7,#06
	db #c3,#b6,#01,#c7,#06,#ca,#b6,#02
	db #cf,#06,#d3,#b6,#03,#cf,#06,#4a
	db #02,#b6,#04,#ff,#00,#40,#ff
;
.music_info
	db "Robocop Animation (1993)(Crack'n'Rom)()",0
	db "ST-Module",0

	read "music_end.asm"
