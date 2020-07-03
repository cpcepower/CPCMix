; Music of Space Dodger XL - Menu (1994)(Sleepwalker PDS)(Joe Moulding)(ST-Module)
; Ripped by Megachur the 17/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SPACEDXM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #873c

	read "music_header.asm"

	jr l8740
	jr l874f
.l8740
	call l876b
	ld hl,l8b8e
	ld de,l8758
	ld bc,#81ff
	jp #bcd7
.l874f
	ld hl,l8b8e
	call #bcdd
	jp l87d7
.l8758
	push ix
	call l87f3
	pop ix
	ret
	jp l876b
	jp l87f3
	jp l87d7
	db #66,#04
;
.init_music
.l876b
;
	ld b,#03
	ld ix,l8b3a
	ld iy,l8a66
	ld de,#001c
.l8778
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
	djnz l8778
	ld a,#05
	ld (l881b),a
	ld a,d
	ld (l882f),a
	inc a
	ld (l8816),a
	ld a,#38
	ld (l8820),a
	ld a,#ff
	ld (l8a62),a
	ld (l8a63),a
	ld (l8a64),a
	ld (l8a65),a
	ld a,#0c
	ld c,d
	call l8a44
	ld a,#0d
	ld c,d
	jp l8a44
;
.stop_music
.l87d7
;
	ld a,#07
	ld c,#3f
	call l8a44
	ld a,#08
	ld c,#00
	call l8a44
	ld a,#09
	ld c,#00
	call l8a44
	ld a,#0a
	ld c,#00
	jp l8a44
;
.play_music
.l87f3
;
	ld hl,l8816
	dec (hl)
	ld ix,l8b3a
	ld bc,l8b48
	call l88a9
	ld ix,l8b56
	ld bc,l8b64
	call l88a9
	ld ix,l8b72
	ld bc,l8b80
	call l88a9
.l8816 equ $ + 1
	ld a,#00
	or a
	jr nz,l881f
.l881b equ $ + 1
	ld a,#00
	ld (l8816),a
.l8820 equ $ + 1
.l881f
	ld a,#00
	ld hl,l8a63
	cp (hl)
	jr z,l882e
	ld (hl),a
	ld c,a
	ld a,#07
	call l8a44
.l882f equ $ + 1
.l882e
	ld a,#00
	ld hl,l8a62
	cp (hl)
	jr z,l883d
	ld (hl),a
	ld c,a
	ld a,#06
	call l8a44
.l883e equ $ + 1
.l883d
	ld a,#00
	ld hl,l8a64
	cp (hl)
	jr z,l884c
	ld (hl),a
	ld c,a
	ld a,#0b
	call l8a44
.l884d equ $ + 1
.l884c
	ld a,#00
	ld hl,l8a65
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l8a44
.l885a
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l895a
.l8869
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
	jp l8a44
.l8883
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l8898
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l8898
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l88bc
.l88a9
	ld a,(l8816)
	or a
	jp nz,l895a
	dec (ix+#06)
	jp nz,l895a
	ld l,(ix+#00)
	ld h,(ix+#01)
.l88bc
	ld a,(hl)
	or a
	jr z,l885a
	cp #fe
	jr z,l8869
	cp #ff
	jr z,l8883
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l8a6c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l88f8
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l88f8
	and #7f
	ld (ix+#06),a
	jr l894b
.l88f8
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l890c
	ld (ix+#05),a
	ld (ix+#0a),d
.l890c
	add a
	add a
	add a
	ld e,a
	ld hl,l8ba2
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
	jr z,l894b
	cp #f0
	jp z,l8a00
	cp #d0
	jp z,l8a1c
	cp #b0
	jp z,l8a24
	cp #80
	jp nc,l8a2c
	cp #10
	jr nz,l894b
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l894b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l895a
	ld a,(ix+#17)
	or a
	jr nz,l896e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l896e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l8999
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l8a6c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l8999
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
	call l8a44
	ld c,h
	ld a,(ix+#03)
	call l8a44
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l89d7
	and #0f
	sub (ix+#0a)
	jr nc,l89cd
	xor a
.l89cd
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l8a44
.l89d7
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
	jr z,l89f4
	ld b,a
	ld a,c
	ld (l882f),a
	ld a,b
	sub #40
.l89f4
	ld (l89fb),a
	ld a,(l8820)
.l89fb equ $ + 1
	bit 0,a
	ld (l8820),a
	ret
.l8a00
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l8c22
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l894b
.l8a1c
	inc hl
	ld a,(hl)
	ld (l881b),a
	jp l894b
.l8a24
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l894b
.l8a2c
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l884d),a
	inc hl
	ld a,(hl)
	ld (l883e),a
	jp l894b
.l8a44
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
.l8a65 equ $ + 3
.l8a64 equ $ + 2
.l8a63 equ $ + 1
.l8a62
	db #ff,#ff,#ff,#ff
.l8a66
	dw l8e82,l8ea9,l8ed0
.l8a6c
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
.l8b3a
	db #00,#00,#00,#01,#08,#00,#00,#00
.l8b48 equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8b56 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l8b64 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8b72
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l8b80 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8b8e equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
	db #53,#54,#2d,#4d,#6f,#64,#75,#6c
	db #65,#2e
.l8ba2
	dw l8c42,l8c82,l8ca2,#0000
	dw #863c,#863c,#863c,#0000
	dw l8cc2,l8d02,l8d22,#0000
	dw #863c,#863c,#863c,#0000
	dw l8cc2,l8d42,l8d22,#1808
	dw #863c,#863c,#863c,#0000
	dw #863c,#863c,#863c,#0000
	dw #863c,#863c,#863c,#0000
	dw l8cc2,l8d62,l8d82,#0000
	dw #863c,#863c,#863c,#0000
	dw l8da2,l8de2,l8d22,#1808
	dw l8cc2,l8d62,l8d82,#0000
	dw #863c,#863c,#863c,#0000
	dw l8e02,l8e42,l8d22,#0000
	dw #863c,#863c,#863c,#0000
	dw #863c,#863c,#863c,#0000
.l8c22
	dw l8e62,#863c,#863c,#863c
	dw #863c,#863c,#863c,#863c
	dw #863c,#863c,#863c,#863c
	dw #863c,#863c,#863c,#863c
.l8c42
	dw #0000
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#70,#03
	db #80,#03,#90,#03,#a0,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8c82 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0a,#0a
	db #09,#09,#08,#07,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#02,#00
.l8ca2 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#04,#06
	db #07,#09,#0c,#11,#17,#1d,#15,#10
	db #0c,#09,#06,#05,#04,#04,#03,#03
	db #03,#02,#02,#02,#01,#00,#00,#00
.l8cc2 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8d02 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#0e,#0d
	db #0c,#0c,#0b,#0b,#0a,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#08,#08,#07,#07,#06,#06,#05
.l8d22 equ $ + 6
	db #04,#03,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8d42 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#0c,#0e
	db #0e,#0d,#0c,#0b,#0a,#09,#09,#09
	db #0a,#0a,#0a,#09,#09,#09,#0a,#0a
	db #0a,#09,#09,#09,#0a,#0a,#0a,#09
.l8d62 equ $ + 6
	db #09,#09,#0a,#0a,#0a,#09,#0f,#00
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
.l8d82 equ $ + 6
	db #80,#80,#80,#80,#80,#80,#06,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8da2 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
.l8de2 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#0b,#0b
	db #0b,#0a,#0a,#0a,#0b,#0b,#0b,#0c
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#0a
	db #0b,#0b,#0b,#0c,#0c,#0c,#0b,#0b
.l8e02 equ $ + 6
	db #0b,#0a,#0a,#0a,#0b,#0b,#00,#00
	db #fd,#ff,#fa,#ff,#fd,#ff,#00,#00
	db #03,#00,#06,#00,#03,#00,#00,#00
	db #fd,#ff,#fa,#ff,#fd,#ff,#00,#00
	db #03,#00,#06,#00,#03,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8e42 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#0c,#0d
	db #0e,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8e62 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8e82 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#f7
	db #8e,#00,#f7,#8e,#00,#21,#8f,#00
	db #21,#8f,#00,#a5,#8f,#00,#a5,#8f
	db #00,#26,#90,#00,#26,#90,#00,#0d
	db #8f,#00,#0d,#8f,#00,#a7,#90,#00
.l8ea9 equ $ + 5
	db #a7,#90,#80,#82,#8e,#00,#bd,#90
	db #00,#bd,#90,#00,#79,#91,#00,#79
	db #91,#00,#c0,#91,#00,#c0,#91,#00
	db #c0,#91,#00,#c0,#91,#00,#40,#91
	db #00,#40,#91,#00,#04,#92,#00,#04
.l8ed0 equ $ + 4
	db #92,#80,#a9,#8e,#00,#30,#92,#00
	db #30,#92,#00,#30,#92,#00,#30,#92
	db #00,#f5,#92,#00,#f5,#92,#00,#36
	db #93,#00,#36,#93,#00,#71,#92,#00
	db #71,#92,#00,#4c,#93,#00,#4c,#93
	db #80,#d0,#8e,#37,#0a,#ba,#00,#35
	db #02,#0a,#37,#82,#3a,#88,#3c,#86
	db #3a,#84,#3c,#8c,#3a,#82,#35,#92
	db #ff,#37,#0a,#0a,#35,#82,#37,#82
	db #3a,#88,#3c,#86,#3a,#84,#3c,#8c
	db #3a,#82,#35,#92,#ff,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#ff,#00,#40
	db #ff,#ab,#0d,#ae,#0d,#b2,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ae,#0d,#b2,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ae,#0d,#b2,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ae,#0d,#b2,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#a9,#0d,#ad,#0d,#b0,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#ad,#0d,#b0,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#ad,#0d,#b0,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#ad,#0d,#b0,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#ff,#ab,#0d,#ae,#0d,#b2,#0d
	db #ab,#0d,#ab,#0d,#ab,#0d,#ab,#0d
	db #ab,#0d,#ab,#0d,#ae,#0d,#b2,#0d
	db #ab,#0d,#ab,#0d,#ab,#0d,#ab,#0d
	db #ab,#0d,#ab,#0d,#ae,#0d,#b2,#0d
	db #ab,#0d,#ab,#0d,#ab,#0d,#ab,#0d
	db #ab,#0d,#ab,#0d,#ae,#0d,#b2,#0d
	db #ab,#0d,#ab,#0d,#ab,#0d,#ab,#0d
	db #ab,#0d,#a9,#0d,#ad,#0d,#b0,#0d
	db #a9,#0d,#a9,#0d,#a9,#0d,#a9,#0d
	db #a9,#0d,#a9,#0d,#ad,#0d,#b0,#0d
	db #a9,#0d,#a9,#0d,#a9,#0d,#a9,#0d
	db #a9,#0d,#a9,#0d,#ad,#0d,#b0,#0d
	db #a9,#0d,#a9,#0d,#a9,#0d,#a9,#0d
	db #a9,#0d,#a9,#0d,#ad,#0d,#b0,#0d
	db #a9,#0d,#a9,#0d,#a9,#0d,#a9,#0d
	db #a9,#0d,#ff,#3e,#04,#04,#3e,#82
	db #3a,#84,#3a,#82,#37,#94,#29,#84
	db #35,#82,#32,#84,#3a,#82,#37,#94
	db #ff,#ab,#fd,#00,#ab,#bd,#00,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#ff,#43,#02,#f2,#00
	db #41,#02,#02,#43,#82,#41,#82,#3e
	db #82,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#43,#02,#02
	db #41,#82,#43,#82,#41,#82,#46,#88
	db #48,#82,#46,#82,#48,#82,#46,#82
	db #43,#88,#41,#82,#3f,#82,#41,#82
	db #3f,#82,#3c,#88,#ff,#2b,#02,#fd
	db #00,#2b,#02,#0d,#2b,#82,#2b,#82
	db #2b,#82,#2b,#82,#2b,#82,#2b,#82
	db #2b,#82,#2b,#82,#2b,#82,#2b,#82
	db #2b,#82,#2b,#82,#2b,#82,#2b,#82
	db #29,#82,#29,#82,#29,#82,#29,#82
	db #29,#82,#29,#82,#29,#82,#29,#82
	db #29,#82,#29,#82,#29,#82,#29,#82
	db #29,#82,#29,#82,#29,#82,#29,#82
	db #ff,#00,#40,#ff,#32,#02,#fd,#00
	db #2b,#02,#0d,#32,#82,#2b,#82,#2b
	db #82,#32,#82,#32,#82,#2b,#82,#32
	db #82,#2b,#82,#32,#82,#2b,#82,#2b
	db #82,#32,#82,#32,#82,#2b,#82,#30
	db #82,#29,#82,#30,#82,#29,#82,#29
	db #82,#30,#82,#30,#82,#29,#82,#30
	db #82,#29,#82,#30,#82,#29,#82,#29
	db #82,#30,#82,#30,#82,#29,#82,#ff
	db #43,#02,#f2,#00,#41,#02,#02,#43
	db #82,#41,#82,#3e,#88,#43,#82,#41
	db #82,#43,#82,#41,#82,#46,#88,#48
	db #82,#46,#82,#48,#82,#4a,#82,#43
	db #88,#41,#82,#3f,#82,#41,#82,#3f
	db #82,#3c,#88,#ff,#1f,#04,#bb,#02
	db #1f,#06,#b0,#02,#1f,#02,#b8,#02
	db #1f,#04,#b0,#02,#1f,#04,#b8,#02
	db #1f,#06,#b0,#02,#1f,#02,#b8,#02
	db #22,#04,#b0,#02,#1f,#04,#b8,#02
	db #22,#06,#b0,#02,#1f,#02,#b8,#02
	db #22,#04,#b0,#02,#1f,#04,#b8,#02
	db #22,#06,#b0,#02,#1f,#02,#b8,#02
	db #22,#04,#b0,#02,#ff,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#ab,#0d,#ab
	db #0d,#ab,#0d,#ab,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#a9,#0d,#a9
	db #0d,#a9,#0d,#a9,#0d,#ff,#00,#40
	db #ff,#1f,#04,#bb,#02,#1f,#06,#b0
	db #02,#1f,#02,#b8,#02,#1f,#04,#b0
	db #02,#1f,#04,#b8,#02,#1f,#06,#b0
	db #02,#1f,#02,#b8,#02,#1f,#04,#b0
	db #02,#1f,#04,#b8,#02,#22,#06,#b0
	db #02,#1f,#02,#b8,#02,#22,#04,#b0
	db #02,#1f,#04,#b8,#02,#22,#06,#b0
	db #02,#1f,#02,#b8,#02,#22,#04,#b0
	db #02,#ff,#43,#0a,#b4,#00,#41,#02
	db #04,#43,#82,#46,#88,#48,#86,#46
	db #84,#48,#8c,#46,#82,#41,#92,#ff
	db #2b,#04,#bb,#02,#2b,#06,#b0,#02
	db #2b,#02,#b8,#02,#2b,#04,#b0,#02
	db #2b,#04,#b8,#02,#2b,#06,#b0,#02
	db #2b,#02,#b8,#02,#22,#04,#b0,#02
	db #2b,#04,#b8,#02,#22,#06,#b0,#02
	db #2b,#02,#b8,#02,#22,#04,#b0,#02
	db #2b,#04,#b8,#02,#22,#06,#b0,#02
	db #2b,#02,#b8,#02,#37,#02,#b0,#02
	db #b7,#00,#b7,#00,#ff
;
.music_info
	db "Space Dodger XL - Menu (1994)(Sleepwalker PDS)(Joe Moulding)",0
	db "ST-Module",0

	read "music_end.asm"
