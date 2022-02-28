; Music of Crazy Cows - Main Part (1993)(Public Domain)(JaySoft)(ST-Module)
; Ripped by Megachur the 03/01/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CRAZYCMP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #8b0b

	read "music_header.asm"

	jr l8b0f	; init music interrupt
	jr l8b1e	; stop music interrupt
.l8b0f
	call l8b3a
	ld hl,l8f5d
	ld de,l8b27
	ld bc,#81ff
	jp #bcd7
.l8b1e
	ld hl,l8f5d
	call #bcdd
	jp l8ba6
.l8b27
	push ix
	call l8bc2
	pop ix
	ret
	jp l8b3a	; init
	jp l8bc2	; play
	jp l8ba6	; stop
	db #66,#04
;
.init_music
.l8b3a
;
	ld b,#03
	ld ix,l8f09
	ld iy,l8e35
	ld de,#001c
.l8b47
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
	djnz l8b47
	ld a,#07
	ld (l8bea),a
	ld a,d
	ld (l8bfe),a
	inc a
	ld (l8be5),a
	ld a,#38
	ld (l8bef),a
	ld a,#ff
	ld (l8e31),a
	ld (l8e32),a
	ld (l8e33),a
	ld (l8e34),a
	ld a,#0c
	ld c,d
	call l8e13
	ld a,#0d
	ld c,d
	jp l8e13
;
.stop_music
.l8ba6
;
	ld a,#07
	ld c,#3f
	call l8e13
	ld a,#08
	ld c,#00
	call l8e13
	ld a,#09
	ld c,#00
	call l8e13
	ld a,#0a
	ld c,#00
	jp l8e13
;
.play_music
.l8bc2
;
	ld hl,l8be5
	dec (hl)
	ld ix,l8f09
	ld bc,l8f17
	call l8c78
	ld ix,l8f25
	ld bc,l8f33
	call l8c78
	ld ix,l8f41
	ld bc,l8f4f
	call l8c78
.l8be5 equ $ + 1
	ld a,#00
	or a
	jr nz,l8bee
.l8bea equ $ + 1
	ld a,#00
	ld (l8be5),a
.l8bef equ $ + 1
.l8bee
	ld a,#00
	ld hl,l8e32
	cp (hl)
	jr z,l8bfd
	ld (hl),a
	ld c,a
	ld a,#07
	call l8e13
.l8bfe equ $ + 1
.l8bfd
	ld a,#00
	ld hl,l8e31
	cp (hl)
	jr z,l8c0c
	ld (hl),a
	ld c,a
	ld a,#06
	call l8e13
.l8c0d equ $ + 1
.l8c0c
	ld a,#00
	ld hl,l8e33
	cp (hl)
	jr z,l8c1b
	ld (hl),a
	ld c,a
	ld a,#0b
	call l8e13
.l8c1c equ $ + 1
.l8c1b
	ld a,#00
	ld hl,l8e34
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l8e13
.l8c29
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l8d29
.l8c38
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
	jp l8e13
.l8c52
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l8c67
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l8c67
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l8c8b
.l8c78
	ld a,(l8be5)
	or a
	jp nz,l8d29
	dec (ix+#06)
	jp nz,l8d29
	ld l,(ix+#00)
	ld h,(ix+#01)
.l8c8b
	ld a,(hl)
	or a
	jr z,l8c29
	cp #fe
	jr z,l8c38
	cp #ff
	jr z,l8c52
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l8e3b
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l8cc7
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l8cc7
	and #7f
	ld (ix+#06),a
	jr l8d1a
.l8cc7
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l8cdb
	ld (ix+#05),a
	ld (ix+#0a),d
.l8cdb
	add a
	add a
	add a
	ld e,a
	ld hl,l8f71
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
	jr z,l8d1a
	cp #f0
	jp z,l8dcf
	cp #d0
	jp z,l8deb
	cp #b0
	jp z,l8df3
	cp #80
	jp nc,l8dfb
	cp #10
	jr nz,l8d1a
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l8d1a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l8d29
	ld a,(ix+#17)
	or a
	jr nz,l8d3d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l8d3d
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l8d68
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l8e3b
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l8d68
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
	call l8e13
	ld c,h
	ld a,(ix+#03)
	call l8e13
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l8da6
	and #0f
	sub (ix+#0a)
	jr nc,l8d9c
	xor a
.l8d9c
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l8e13
.l8da6
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
	jr z,l8dc3
	ld b,a
	ld a,c
	ld (l8bfe),a
	ld a,b
	sub #40
.l8dc3
	ld (l8dca),a
	ld a,(l8bef)
.l8dca equ $ + 1
	bit 0,a
	ld (l8bef),a
	ret
.l8dcf
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l8ff1
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l8d1a
.l8deb
	inc hl
	ld a,(hl)
	ld (l8bea),a
	jp l8d1a
.l8df3
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l8d1a
.l8dfb
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l8c1c),a
	inc hl
	ld a,(hl)
	ld (l8c0d),a
	jp l8d1a
.l8e13
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
.l8e34 equ $ + 3
.l8e33 equ $ + 2
.l8e32 equ $ + 1
.l8e31
	db #ff,#ff,#ff,#ff
.l8e35
	dw l9231,l924f,l926d
.l8e3b
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
.l8f09 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l8f17 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f25
	db #00,#00,#02,#03,#09,#00,#00,#00
.l8f33 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f41 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l8f4f equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f5d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l8f71 equ $ + 4
	db #75,#6c,#65,#2e,#0b,#8a,#0b,#8a
	db #0b,#8a,#00,#00,#0b,#8a,#0b,#8a
	db #0b,#8a,#00,#00,#0b,#8a,#0b,#8a
	db #0b,#8a,#00,#00,#11,#90,#51,#90
	db #71,#90,#08,#00,#91,#90,#d1,#90
	db #f1,#90,#00,#00,#0b,#8a,#0b,#8a
	db #0b,#8a,#00,#00,#0b,#8a,#0b,#8a
	db #0b,#8a,#00,#00,#11,#91,#51,#91
	db #71,#90,#00,#00,#91,#90,#71,#91
	db #91,#91,#00,#00,#11,#90,#b1,#91
	db #71,#90,#08,#00,#91,#0f,#51,#11
	db #31,#11,#00,#00,#d1,#91,#11,#92
	db #71,#90,#00,#00,#0b,#09,#0b,#09
	db #0b,#09,#00,#00,#0b,#09,#0b,#09
	db #0b,#09,#00,#00,#0b,#09,#0b,#09
	db #0b,#09,#00,#00,#0b,#09,#0b,#09
.l8ff1 equ $ + 4
	db #0b,#09,#00,#00,#0b,#09,#0b,#09
	db #0b,#09,#0b,#09,#0b,#09,#0b,#09
	db #0b,#09,#0b,#09,#0b,#09,#0b,#09
	db #0b,#09,#0b,#09,#0b,#09,#0b,#09
	db #0b,#09,#0b,#09,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0c,#0c,#0c,#0c,#0c,#0b,#0b
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#09,#08,#07,#06,#06
	db #05,#05,#04,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0f,#0d,#0b,#09
	db #07,#05,#04,#06,#08,#06,#04,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#07,#0b,#0f,#13
	db #17,#1b,#1f,#13,#08,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#64,#00
	db #c8,#00,#2c,#01,#90,#01,#f4,#01
	db #58,#02,#bc,#02,#20,#03,#84,#03
	db #e8,#03,#4c,#04,#b0,#04,#14,#05
	db #78,#05,#dc,#05,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
	db #03,#03,#02,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0a,#06,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0b,#0b,#0b,#0b,#0b,#0a,#0a
	db #0a,#0a,#0a,#0a,#09,#09,#09,#09
	db #09,#09,#08,#07,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#fd,#ff
	db #fa,#ff,#fd,#ff,#00,#00,#03,#00
	db #06,#00,#03,#00,#00,#00,#fd,#ff
	db #fa,#ff,#fd,#ff,#00,#00,#03,#00
	db #06,#00,#03,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0e,#0e,#0e
	db #0e,#0d,#0c,#0b,#0a,#09,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9231 equ $ + 4
	db #00,#00,#00,#00,#00,#ea,#92,#00
	db #8b,#92,#00,#9a,#92,#00,#8b,#92
	db #00,#9a,#92,#00,#8b,#92,#00,#a9
	db #92,#00,#a9,#92,#00,#8b,#92,#80
.l924f equ $ + 2
	db #34,#92,#00,#34,#93,#00,#37,#93
	db #00,#ff,#92,#00,#ed,#92,#00,#ff
	db #92,#00,#41,#93,#00,#09,#93,#00
	db #09,#93,#00,#41,#93,#80,#52,#92
.l926d
	db #00,#8e,#93,#00,#8e,#93,#00,#8e
	db #93,#00,#4d,#93,#00,#8e,#93,#00
	db #10,#94,#00,#cf,#93,#00,#cf,#93
	db #00,#10,#94,#80,#70,#92,#a2,#09
	db #24,#8d,#27,#84,#29,#82,#2b,#82
	db #27,#82,#26,#88,#ff,#a2,#09,#24
	db #8d,#27,#84,#29,#82,#2b,#82,#27
	db #82,#26,#88,#ff,#a2,#09,#a4,#09
	db #a2,#09,#a7,#09,#a2,#09,#a4,#09
	db #a2,#09,#a6,#09,#a2,#09,#a4,#09
	db #a2,#09,#a7,#09,#a2,#09,#a4,#09
	db #a2,#09,#a6,#09,#a2,#09,#a4,#09
	db #a2,#09,#a7,#09,#a2,#09,#a4,#09
	db #a2,#09,#a6,#09,#a2,#09,#a4,#09
	db #a2,#09,#a7,#09,#a2,#09,#a4,#09
	db #a2,#09,#a6,#09,#ff,#00,#20,#ff
	db #3f,#04,#03,#41,#82,#43,#82,#3e
	db #84,#3c,#8e,#3e,#82,#43,#82,#3c
	db #82,#ff,#3f,#1a,#03,#3e,#82,#43
	db #82,#3c,#82,#ff,#b2,#0b,#b5,#0b
	db #b3,#0b,#b5,#0b,#b2,#0b,#b3,#0b
	db #b2,#0b,#b7,#0b,#33,#82,#35,#82
	db #b2,#0b,#33,#83,#b2,#0b,#b5,#0b
	db #b3,#0b,#b5,#0b,#b2,#0b,#b3,#0b
	db #b2,#0b,#b7,#0b,#32,#88,#ff,#00
	db #20,#ff,#00,#1a,#3e,#02,#03,#43
	db #82,#3c,#82,#ff,#3f,#04,#03,#41
	db #82,#43,#82,#3e,#84,#3c,#94,#ff
	db #95,#07,#a1,#08,#a1,#08,#a1,#08
	db #9d,#04,#a1,#08,#a1,#08,#a1,#08
	db #95,#07,#a1,#08,#95,#07,#a1,#08
	db #9d,#04,#a1,#08,#95,#07,#a1,#08
	db #a1,#08,#a1,#08,#95,#07,#a1,#08
	db #9d,#04,#a1,#08,#a1,#08,#95,#07
	db #a1,#08,#95,#07,#95,#07,#a1,#08
	db #9d,#04,#a1,#08,#a1,#08,#a1,#08
	db #ff,#95,#07,#a1,#08,#a1,#08,#a1
	db #08,#9d,#04,#a1,#08,#a1,#08,#a1
	db #08,#95,#07,#a1,#08,#95,#07,#a1
	db #08,#9d,#04,#a1,#08,#95,#07,#a1
	db #08,#a1,#08,#a1,#08,#95,#07,#a1
	db #08,#9d,#04,#a1,#08,#a1,#08,#95
	db #07,#a1,#08,#95,#07,#95,#07,#a1
	db #08,#9d,#04,#a1,#08,#a1,#08,#a1
	db #08,#ff,#95,#07,#9d,#04,#95,#07
	db #9d,#04,#95,#07,#9d,#04,#95,#07
	db #9d,#04,#95,#07,#9d,#04,#95,#07
	db #9d,#04,#95,#07,#9d,#04,#95,#07
	db #9d,#04,#95,#07,#9d,#04,#95,#07
	db #9d,#04,#95,#07,#9d,#04,#95,#07
	db #9d,#04,#95,#07,#9d,#04,#95,#07
	db #9d,#04,#9d,#04,#9d,#04,#9d,#04
	db #9d,#04,#ff,#95,#07,#a1,#08,#a1
	db #08,#a1,#08,#9d,#04,#a1,#08,#a1
	db #08,#a1,#08,#95,#07,#a1,#08,#95
	db #07,#a1,#08,#9d,#04,#a1,#08,#95
	db #07,#a1,#08,#95,#07,#9d,#04,#95
	db #07,#9d,#04,#95,#07,#9d,#04,#95
	db #07,#9d,#04,#95,#07,#9d,#04,#95
	db #07,#9d,#04,#9d,#04,#9d,#04,#9d
	db #04,#9d,#04,#ff
;
.music_info
	db "Crazy Cows - Main Part (1993)(Public Domain)(JaySoft)",0
	db "ST-Module",0

	read "music_end.asm"
