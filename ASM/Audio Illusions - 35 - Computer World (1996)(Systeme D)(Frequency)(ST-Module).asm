; Music of Audio Illusions - 35 - Computer World (1996)(Systeme D)(Frequency)(ST-Module)
; Ripped by Megachur the 26/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AUDIOI35.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4b8b

	read "music_header.asm"

	jr l4b8f
	jr l4b9e
.l4b8f
	call l4bba
	ld hl,l4fdd
	ld de,l4ba7
	ld bc,#81ff
	jp #bcd7
.l4b9e
	ld hl,l4fdd
	call #bcdd
	jp l4c26
.l4ba7
	push ix
	call l4c42
	pop ix
	ret
	jp l4bba
	jp l4c42
	jp l4c26
	db #66,#04
;
.init_music
.l4bba
;
	ld b,#03
	ld ix,l4f89
	ld iy,l4eb5
	ld de,#001c
.l4bc7
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
	djnz l4bc7
	ld a,#07
	ld (l4c6a),a
	ld a,d
	ld (l4c7e),a
	inc a
	ld (l4c65),a
	ld a,#38
	ld (l4c6f),a
	ld a,#ff
	ld (l4eb1),a
	ld (l4eb2),a
	ld (l4eb3),a
	ld (l4eb4),a
	ld a,#0c
	ld c,d
	call l4e93
	ld a,#0d
	ld c,d
	jp l4e93
;
.stop_music
.l4c26
;
	ld a,#07
	ld c,#3f
	call l4e93
	ld a,#08
	ld c,#00
	call l4e93
	ld a,#09
	ld c,#00
	call l4e93
	ld a,#0a
	ld c,#00
	jp l4e93
;
.play_music
.l4c42
;
	ld hl,l4c65
	dec (hl)
	ld ix,l4f89
	ld bc,l4f97
	call l4cf8
	ld ix,l4fa5
	ld bc,l4fb3
	call l4cf8
	ld ix,l4fc1
	ld bc,l4fcf
	call l4cf8
.l4c65 equ $ + 1
	ld a,#00
	or a
	jr nz,l4c6e
.l4c6a equ $ + 1
	ld a,#00
	ld (l4c65),a
.l4c6f equ $ + 1
.l4c6e
	ld a,#00
	ld hl,l4eb2
	cp (hl)
	jr z,l4c7d
	ld (hl),a
	ld c,a
	ld a,#07
	call l4e93
.l4c7e equ $ + 1
.l4c7d
	ld a,#00
	ld hl,l4eb1
	cp (hl)
	jr z,l4c8c
	ld (hl),a
	ld c,a
	ld a,#06
	call l4e93
.l4c8d equ $ + 1
.l4c8c
	ld a,#00
	ld hl,l4eb3
	cp (hl)
	jr z,l4c9b
	ld (hl),a
	ld c,a
	ld a,#0b
	call l4e93
.l4c9c equ $ + 1
.l4c9b
	ld a,#00
	ld hl,l4eb4
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l4e93
.l4ca9
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l4da9
.l4cb8
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
	jp l4e93
.l4cd2
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l4ce7
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l4ce7
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l4d0b
.l4cf8
	ld a,(l4c65)
	or a
	jp nz,l4da9
	dec (ix+#06)
	jp nz,l4da9
	ld l,(ix+#00)
	ld h,(ix+#01)
.l4d0b
	ld a,(hl)
	or a
	jr z,l4ca9
	cp #fe
	jr z,l4cb8
	cp #ff
	jr z,l4cd2
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l4ebb
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l4d47
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l4d47
	and #7f
	ld (ix+#06),a
	jr l4d9a
.l4d47
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l4d5b
	ld (ix+#05),a
	ld (ix+#0a),d
.l4d5b
	add a
	add a
	add a
	ld e,a
	ld hl,l4ff1
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
	jr z,l4d9a
	cp #f0
	jp z,l4e4f
	cp #d0
	jp z,l4e6b
	cp #b0
	jp z,l4e73
	cp #80
	jp nc,l4e7b
	cp #10
	jr nz,l4d9a
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l4d9a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l4da9
	ld a,(ix+#17)
	or a
	jr nz,l4dbd
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l4dbd
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l4de8
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l4ebb
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l4de8
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
	call l4e93
	ld c,h
	ld a,(ix+#03)
	call l4e93
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4e26
	and #0f
	sub (ix+#0a)
	jr nc,l4e1c
	xor a
.l4e1c
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l4e93
.l4e26
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
	jr z,l4e43
	ld b,a
	ld a,c
	ld (l4c7e),a
	ld a,b
	sub #40
.l4e43
	ld (l4e4a),a
	ld a,(l4c6f)
.l4e4a equ $ + 1
	bit 0,a
	ld (l4c6f),a
	ret
.l4e4f
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l5071
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l4d9a
.l4e6b
	inc hl
	ld a,(hl)
	ld (l4c6a),a
	jp l4d9a
.l4e73
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l4d9a
.l4e7b
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l4c9c),a
	inc hl
	ld a,(hl)
	ld (l4c8d),a
	jp l4d9a
.l4e93
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
.l4eb4 equ $ + 3
.l4eb3 equ $ + 2
.l4eb2 equ $ + 1
.l4eb1
	db #ff,#ff,#ff,#ff
.l4eb5
	dw l53b1,l53f0,l542f
.l4ebb
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
.l4f89
	db #00,#00,#00,#01,#08,#00,#00,#00
.l4f97 equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4fa5 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l4fb3 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4fc1
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l4fcf equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4fdd equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l4ff1
	db #91,#50,#d1,#50,#f1,#50,#00,#00
	db #11,#51,#51,#51,#71,#51,#00,#00
	db #91,#51,#d1,#51,#f1,#50,#19,#07
	db #f1,#51,#31,#52,#f1,#50,#00,#00
	db #8a,#4a,#8b,#4a,#8b,#4a,#ff,#ff
	db #51,#52,#91,#52,#b1,#52,#00,#00
	db #d1,#52,#11,#53,#f1,#50,#00,#00
	db #8a,#4a,#8b,#4a,#8b,#4a,#ff,#ff
	db #8a,#4a,#8b,#4a,#8b,#4a,#ff,#ff
	db #8a,#4a,#8b,#4a,#8b,#4a,#00,#00
	db #8b,#4a,#8b,#4a,#8b,#4a,#00,#00
	db #8b,#4a,#8b,#4a,#8b,#4a,#00,#00
	db #8b,#4a,#8b,#4a,#8b,#4a,#00,#00
	db #8b,#4a,#8b,#4a,#8b,#4a,#00,#00
	db #8b,#4a,#8b,#4a,#8b,#4a,#00,#00
	db #8b,#4a,#8b,#4a,#8b,#4a,#00,#00
.l5071
	db #31,#53,#51,#53,#71,#53,#91,#53
	db #8b,#4a,#8b,#4a,#8b,#4a,#8b,#4a
	db #8b,#4a,#8b,#4a,#8b,#4a,#8b,#4a
	db #8b,#4a,#8b,#4a,#8b,#4a,#8b,#4a
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09,#0c,#0f,#0f,#0e,#0e,#0d,#0c
	db #0a,#07,#03,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#10,#00,#20,#00,#30,#00
	db #40,#00,#50,#00,#60,#00,#70,#00
	db #80,#00,#90,#00,#a0,#00,#b0,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0c,#09,#05,#03,#01
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #10,#0a,#0c,#0a,#0c,#0a,#0c,#0a
	db #0c,#0a,#0c,#0a,#0c,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#ff,#ff,#ff,#ff
	db #0f,#0e,#0e,#0d,#0d,#0e,#0e,#0f
	db #0e,#0e,#0d,#0d,#0e,#0e,#0f,#0e
	db #0e,#0d,#0d,#0e,#0e,#0f,#0e,#0e
	db #0d,#0d,#0e,#0e,#0f,#0e,#0e,#0d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0d,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#50,#00,#90,#00,#d0,#00
	db #10,#01,#50,#01,#90,#01,#d0,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#80,#80,#80,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#18,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#01,#02,#02,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #00,#00,#ff,#ff,#ff,#fe,#fe,#fe
	db #fd,#fd,#fd,#fc,#fc,#fc,#fc,#fc
	db #fc,#fc,#fc,#fc,#fc,#fc,#fc,#fc
	db #fc,#fc,#fc,#fc,#fc,#fc,#fc,#fc
	db #18,#24,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l53b1
	db #00,#6e,#54,#00,#6e,#54,#00,#84
	db #54,#00,#84,#54,#00,#05,#55,#00
	db #05,#55,#00,#84,#54,#00,#84,#54
	db #00,#05,#55,#00,#05,#55,#00,#5c
	db #55,#00,#84,#54,#00,#84,#54,#00
	db #05,#55,#00,#05,#55,#00,#5c,#55
	db #00,#a1,#55,#00,#db,#55,#00,#a1
.l53f0 equ $ + 7
	db #55,#00,#db,#55,#80,#b1,#53,#00
	db #35,#56,#00,#35,#56,#00,#af,#56
	db #00,#af,#56,#00,#39,#57,#00,#39
	db #57,#00,#af,#56,#00,#af,#56,#00
	db #39,#57,#00,#39,#57,#00,#af,#56
	db #00,#af,#56,#00,#af,#56,#00,#39
	db #57,#00,#39,#57,#00,#af,#56,#00
	db #af,#56,#00,#af,#56,#00,#af,#56
.l542f equ $ + 6
	db #00,#af,#56,#80,#f0,#53,#00,#c3
	db #57,#00,#c3,#57,#00,#da,#57,#00
	db #da,#57,#00,#40,#58,#00,#40,#58
	db #00,#da,#57,#00,#da,#57,#00,#40
	db #58,#00,#40,#58,#00,#5d,#58,#00
	db #da,#57,#00,#da,#57,#00,#40,#58
	db #00,#40,#58,#00,#5d,#58,#00,#ba
	db #58,#00,#ba,#58,#00,#ba,#58,#00
	db #ba,#58,#80,#2f,#54,#2c,#0a,#13
	db #28,#06,#03,#2a,#8a,#2c,#86,#2c
	db #8a,#28,#86,#2a,#8a,#2c,#84,#45
	db #02,#01,#ff,#c4,#06,#c7,#06,#cb
	db #06,#d0,#06,#d3,#06,#d0,#06,#cb
	db #06,#c7,#06,#c0,#06,#c4,#06,#c7
	db #06,#cb,#06,#cc,#06,#cb,#06,#c7
	db #06,#c4,#06,#c2,#06,#c6,#06,#c9
	db #06,#ce,#06,#d2,#06,#ce,#06,#c9
	db #06,#c6,#06,#c4,#06,#c7,#06,#cb
	db #06,#d0,#06,#d3,#06,#d0,#06,#cb
	db #06,#c7,#06,#c4,#06,#c7,#06,#cb
	db #06,#d0,#06,#d3,#06,#d0,#06,#cb
	db #06,#c7,#06,#c0,#06,#c4,#06,#c7
	db #06,#cb,#06,#cc,#06,#cb,#06,#c7
	db #06,#c4,#06,#c2,#06,#c6,#06,#c9
	db #06,#ce,#06,#c5,#01,#ce,#06,#c9
	db #06,#c6,#06,#c4,#06,#c7,#06,#cb
	db #06,#d0,#06,#d3,#06,#d0,#06,#cb
	db #06,#c7,#06,#ff,#47,#02,#10,#c7
	db #00,#c7,#00,#c5,#01,#c7,#00,#47
	db #82,#44,#82,#c4,#00,#c4,#00,#c5
	db #01,#c4,#00,#44,#82,#46,#82,#c7
	db #00,#c6,#00,#c5,#01,#c4,#00,#42
	db #82,#47,#84,#45,#04,#01,#47,#02
	db #00,#c7,#00,#c7,#00,#c5,#01,#c7
	db #00,#47,#82,#44,#82,#c4,#00,#c4
	db #00,#c5,#01,#c4,#00,#44,#82,#46
	db #82,#c7,#00,#c6,#00,#c5,#01,#c4
	db #00,#42,#82,#44,#84,#45,#03,#01
	db #c5,#01,#ff,#44,#02,#06,#4b,#82
	db #53,#82,#4b,#82,#40,#82,#47,#82
	db #4c,#82,#47,#82,#42,#82,#49,#82
	db #52,#82,#49,#82,#44,#82,#4b,#82
	db #53,#82,#4b,#82,#44,#82,#4b,#82
	db #53,#82,#4b,#82,#40,#82,#47,#82
	db #4c,#82,#47,#82,#42,#82,#49,#82
	db #52,#82,#49,#82,#44,#82,#4b,#82
	db #d3,#06,#c5,#01,#4b,#02,#06,#ff
	db #35,#02,#f2,#01,#3b,#02,#12,#3d
	db #02,#02,#3b,#82,#3f,#82,#42,#86
	db #c4,#02,#c2,#02,#bf,#02,#c4,#02
	db #c2,#02,#bf,#02,#c4,#02,#c2,#02
	db #3f,#88,#3f,#07,#12,#3f,#09,#f2
	db #02,#3d,#03,#12,#3b,#03,#02,#33
	db #02,#f2,#01,#38,#06,#12,#45,#02
	db #01,#ff,#bf,#03,#bf,#02,#bf,#03
	db #bf,#02,#bf,#03,#bd,#02,#bb,#03
	db #ba,#02,#38,#02,#f2,#01,#b6,#12
	db #38,#05,#02,#3a,#03,#12,#3b,#03
	db #02,#33,#02,#f2,#01,#38,#04,#12
	db #b3,#02,#b6,#03,#38,#02,#02,#bb
	db #02,#ba,#03,#b8,#02,#bb,#03,#ba
	db #02,#b8,#03,#bb,#02,#ba,#03,#bd
	db #02,#bb,#03,#ba,#02,#bd,#03,#bb
	db #02,#ba,#03,#b4,#02,#bb,#03,#3f
	db #03,#f2,#01,#3f,#03,#12,#42,#02
	db #02,#44,#88,#ff,#a8,#05,#33,#02
	db #13,#b3,#03,#c5,#01,#b3,#03,#ac
	db #03,#b3,#03,#a8,#05,#2f,#02,#03
	db #af,#03,#c5,#01,#af,#03,#a8,#03
	db #af,#03,#a8,#05,#31,#02,#03,#b1
	db #03,#c5,#01,#b1,#03,#aa,#03,#b1
	db #03,#a8,#05,#b3,#03,#a8,#05,#b3
	db #03,#c5,#01,#b3,#03,#ac,#03,#b3
	db #03,#a8,#05,#33,#02,#03,#b3,#03
	db #c5,#01,#b3,#03,#ac,#03,#b3,#03
	db #a8,#05,#2f,#02,#03,#af,#03,#c5
	db #01,#af,#03,#a8,#03,#af,#03,#a8
	db #05,#31,#02,#03,#b1,#03,#c5,#01
	db #b1,#03,#aa,#03,#b1,#03,#a8,#05
	db #33,#02,#03,#b3,#03,#c5,#01,#b3
	db #03,#ac,#03,#b3,#03,#ff,#ac,#f3
	db #03,#b3,#03,#ac,#03,#b3,#03,#c5
	db #11,#b3,#f3,#03,#ac,#03,#b3,#03
	db #a8,#03,#af,#03,#a8,#03,#af,#03
	db #c5,#11,#af,#f3,#03,#a8,#03,#af
	db #03,#aa,#03,#b1,#03,#aa,#03,#b1
	db #03,#c5,#11,#b1,#f3,#03,#aa,#03
	db #b1,#03,#ac,#03,#b3,#03,#ac,#03
	db #b3,#03,#c5,#11,#b3,#f3,#03,#ac
	db #03,#b3,#03,#ac,#03,#b3,#03,#ac
	db #03,#b3,#03,#c5,#11,#b3,#f3,#03
	db #ac,#03,#b3,#03,#a8,#03,#af,#03
	db #a8,#03,#af,#03,#c5,#11,#af,#f3
	db #03,#a8,#03,#af,#03,#aa,#03,#b1
	db #03,#aa,#03,#b1,#03,#c5,#11,#b1
	db #f3,#03,#aa,#03,#b1,#03,#ac,#03
	db #b3,#03,#ac,#03,#b3,#03,#c5,#11
	db #b3,#f3,#03,#ac,#03,#b3,#03,#ff
	db #ac,#f3,#03,#b3,#03,#ac,#03,#b3
	db #03,#c5,#11,#b3,#f3,#03,#ac,#03
	db #b3,#03,#a8,#03,#af,#03,#a8,#03
	db #af,#03,#c5,#11,#af,#f3,#03,#a8
	db #03,#af,#03,#aa,#03,#b1,#03,#aa
	db #03,#b1,#03,#c5,#11,#b1,#f3,#03
	db #aa,#03,#b1,#03,#ac,#03,#b3,#03
	db #ac,#03,#b3,#03,#c5,#11,#b3,#f3
	db #03,#ac,#03,#b3,#03,#ac,#03,#b3
	db #03,#ac,#03,#b3,#03,#c5,#11,#b3
	db #f3,#03,#ac,#03,#b3,#03,#a8,#03
	db #af,#03,#a8,#03,#af,#03,#c5,#11
	db #af,#f3,#03,#a8,#03,#af,#03,#aa
	db #03,#b1,#03,#aa,#03,#b1,#03,#c5
	db #11,#b1,#f3,#03,#aa,#03,#b1,#03
	db #ac,#03,#b3,#03,#ac,#03,#b3,#03
	db #c5,#11,#b3,#f3,#03,#c5,#11,#c5
	db #11,#ff,#00,#02,#2c,#06,#13,#28
	db #0a,#03,#2a,#86,#2c,#8a,#2c,#86
	db #28,#8a,#2a,#86,#2c,#87,#c5,#01
	db #ff,#44,#02,#f0,#00,#c4,#00,#c4
	db #00,#c5,#01,#c4,#00,#44,#82,#40
	db #82,#c0,#00,#c0,#00,#c5,#01,#c0
	db #00,#40,#82,#42,#82,#c2,#00,#bf
	db #00,#c5,#01,#bf,#00,#42,#82,#47
	db #82,#c4,#00,#c4,#00,#c5,#01,#bf
	db #00,#42,#82,#44,#82,#c4,#00,#c4
	db #00,#c5,#01,#c4,#00,#44,#82,#40
	db #82,#c0,#00,#c0,#00,#c5,#01,#c0
	db #00,#c4,#00,#c0,#00,#c7,#00,#c2
	db #00,#c6,#00,#c2,#00,#c4,#00,#42
	db #82,#44,#82,#3f,#82,#c2,#00,#c5
	db #01,#44,#02,#00,#c2,#10,#ff,#44
	db #08,#b2,#01,#40,#08,#02,#42,#88
	db #44,#85,#bf,#02,#42,#82,#44,#88
	db #40,#88,#42,#88,#44,#86,#c5,#01
	db #c4,#b2,#05,#ff,#00,#01,#47,#02
	db #06,#d0,#06,#c5,#01,#50,#02,#06
	db #47,#82,#44,#82,#cb,#06,#c5,#01
	db #4b,#02,#06,#44,#82,#46,#82,#ce
	db #06,#c5,#01,#4e,#02,#06,#46,#82
	db #47,#82,#d0,#06,#c5,#01,#50,#02
	db #06,#47,#82,#47,#82,#d0,#06,#c5
	db #01,#50,#02,#06,#47,#82,#44,#82
	db #cb,#06,#c5,#01,#4b,#02,#06,#44
	db #82,#46,#82,#ce,#06,#c5,#01,#4e
	db #02,#06,#46,#82,#47,#82,#d0,#06
	db #c5,#01,#d0,#06,#c5,#01,#c7,#06
	db #ff,#47,#02,#10,#c7,#00,#c7,#00
	db #c5,#01,#c7,#00,#47,#82,#44,#82
	db #c4,#00,#c4,#00,#c5,#01,#c4,#00
	db #44,#82,#46,#82,#c7,#00,#c6,#00
	db #c5,#01,#c4,#00,#42,#82,#47,#84
	db #45,#04,#01,#47,#02,#00,#c7,#00
	db #c7,#00,#c5,#01,#c7,#00,#47,#82
	db #44,#82,#c4,#00,#c4,#00,#c5,#01
	db #c4,#00,#44,#82,#46,#82,#c7,#00
	db #c6,#00,#c5,#01,#c4,#00,#42,#82
	db #44,#84,#c5,#01,#45,#82,#c5,#01
	db #ff,#00,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #00,#ff

;
.music_info
	db "Audio Illusions - 35 - Computer World (1996)(Systeme D)(Frequency)",0
	db "ST-Module",0

	read "music_end.asm"
