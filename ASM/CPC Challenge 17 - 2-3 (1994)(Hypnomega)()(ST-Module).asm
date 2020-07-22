; Music of CPC Challenge 17 - 2-3 (1994)(Hypnomega)()(ST-Module)
; Ripped by Megachur the 24/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPCC1723.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5b0c

	read "music_header.asm"

	jr l5b10
	jr l5b1f
.l5b10
	call l5b3b
	ld hl,l5f5e
	ld de,l5b28
	ld bc,#81ff
	jp #bcd7
.l5b1f
	ld hl,l5f5e
	call #bcdd
	jp l5ba7
.l5b28
	push ix
	call l5bc3
	pop ix
	ret
	jp l5b3b
	jp l5bc3
	jp l5ba7
	db #66,#04
;
.init_music
.l5b3b
;
	ld b,#03
	ld ix,l5f0a
	ld iy,l5e36
	ld de,#001c
.l5b48
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
	djnz l5b48
	ld a,#06
	ld (l5beb),a
	ld a,d
	ld (l5bff),a
	inc a
	ld (l5be6),a
	ld a,#38
	ld (l5bf0),a
	ld a,#ff
	ld (l5e32),a
	ld (l5e33),a
	ld (l5e34),a
	ld (l5e35),a
	ld a,#0c
	ld c,d
	call l5e14
	ld a,#0d
	ld c,d
	jp l5e14
;
.stop_music
.l5ba7
;
	ld a,#07
	ld c,#3f
	call l5e14
	ld a,#08
	ld c,#00
	call l5e14
	ld a,#09
	ld c,#00
	call l5e14
	ld a,#0a
	ld c,#00
	jp l5e14
;
.play_music
.l5bc3
;
	ld hl,l5be6
	dec (hl)
	ld ix,l5f0a
	ld bc,l5f18
	call l5c79
	ld ix,l5f26
	ld bc,l5f34
	call l5c79
	ld ix,l5f42
	ld bc,l5f50
	call l5c79
.l5be6 equ $ + 1
	ld a,#00
	or a
	jr nz,l5bef
.l5beb equ $ + 1
	ld a,#00
	ld (l5be6),a
.l5bf0 equ $ + 1
.l5bef
	ld a,#00
	ld hl,l5e33
	cp (hl)
	jr z,l5bfe
	ld (hl),a
	ld c,a
	ld a,#07
	call l5e14
.l5bff equ $ + 1
.l5bfe
	ld a,#00
	ld hl,l5e32
	cp (hl)
	jr z,l5c0d
	ld (hl),a
	ld c,a
	ld a,#06
	call l5e14
.l5c0e equ $ + 1
.l5c0d
	ld a,#00
	ld hl,l5e34
	cp (hl)
	jr z,l5c1c
	ld (hl),a
	ld c,a
	ld a,#0b
	call l5e14
.l5c1d equ $ + 1
.l5c1c
	ld a,#00
	ld hl,l5e35
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l5e14
.l5c2a
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l5d2a
.l5c39
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
	jp l5e14
.l5c53
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l5c68
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l5c68
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l5c8c
.l5c79
	ld a,(l5be6)
	or a
	jp nz,l5d2a
	dec (ix+#06)
	jp nz,l5d2a
	ld l,(ix+#00)
	ld h,(ix+#01)
.l5c8c
	ld a,(hl)
	or a
	jr z,l5c2a
	cp #fe
	jr z,l5c39
	cp #ff
	jr z,l5c53
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l5e3c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l5cc8
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l5cc8
	and #7f
	ld (ix+#06),a
	jr l5d1b
.l5cc8
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l5cdc
	ld (ix+#05),a
	ld (ix+#0a),d
.l5cdc
	add a
	add a
	add a
	ld e,a
	ld hl,l5f72
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
	jr z,l5d1b
	cp #f0
	jp z,l5dd0
	cp #d0
	jp z,l5dec
	cp #b0
	jp z,l5df4
	cp #80
	jp nc,l5dfc
	cp #10
	jr nz,l5d1b
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l5d1b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l5d2a
	ld a,(ix+#17)
	or a
	jr nz,l5d3e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l5d3e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l5d69
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l5e3c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l5d69
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
	call l5e14
	ld c,h
	ld a,(ix+#03)
	call l5e14
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5da7
	and #0f
	sub (ix+#0a)
	jr nc,l5d9d
	xor a
.l5d9d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l5e14
.l5da7
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
	jr z,l5dc4
	ld b,a
	ld a,c
	ld (l5bff),a
	ld a,b
	sub #40
.l5dc4
	ld (l5dcb),a
	ld a,(l5bf0)
.l5dcb equ $ + 1
	bit 0,a
	ld (l5bf0),a
	ret
.l5dd0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l5ff2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l5d1b
.l5dec
	inc hl
	ld a,(hl)
	ld (l5beb),a
	jp l5d1b
.l5df4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l5d1b
.l5dfc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l5c1d),a
	inc hl
	ld a,(hl)
	ld (l5c0e),a
	jp l5d1b
.l5e14
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
.l5e35 equ $ + 3
.l5e34 equ $ + 2
.l5e33 equ $ + 1
.l5e32
	db #ff,#ff,#ff,#ff
.l5e36
	dw l6292,l62b0,l62ce
.l5e3c
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
.l5f0a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l5f18 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f26
	db #00,#00,#02,#03,#09,#00,#00,#00
.l5f34 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f42 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l5f50 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f5e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l5f72 equ $ + 4
	db #75,#6c,#65,#2e,#12,#60,#52,#60
	db #72,#60,#00,#00,#12,#60,#92,#60
	db #72,#60,#00,#00,#b2,#60,#f2,#60
	db #12,#61,#00,#00,#32,#61,#72,#61
	db #72,#60,#18,#07,#0c,#5a,#0c,#5a
	db #0c,#5a,#00,#00,#12,#60,#92,#61
	db #72,#60,#0b,#15,#0c,#5a,#0c,#5a
	db #0c,#5a,#00,#00,#12,#60,#b2,#61
	db #d2,#61,#00,#00,#0c,#5a,#0c,#5a
	db #0c,#5a,#00,#00,#0c,#5a,#ea,#3e
	db #ea,#3e,#00,#00,#ea,#3e,#ea,#3e
	db #ea,#3e,#00,#00,#ea,#3e,#ea,#3e
	db #ea,#3e,#00,#00,#ea,#3e,#ea,#3e
	db #ea,#3e,#00,#00,#ea,#3e,#ea,#3e
	db #ea,#3e,#00,#00,#ea,#3e,#ea,#3e
	db #ea,#3e,#00,#00,#ea,#3e,#ea,#3e
.l5ff2 equ $ + 4
	db #ea,#3e,#00,#00,#f2,#61,#90,#08
	db #ea,#3e,#12,#62,#32,#62,#52,#62
	db #72,#62,#ea,#3e,#ea,#3e,#ea,#3e
	db #ea,#3e,#ea,#3e,#ea,#3e,#ea,#3e
	db #ea,#3e,#ea,#3e,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0b,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#09,#07
	db #05,#03,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#08,#08,#08
	db #08,#08,#07,#07,#07,#07,#07,#06
	db #05,#03,#02,#01,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #03,#02,#01,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0e,#0e,#0e,#0d
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#07
	db #05,#07,#09,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#09
	db #09,#09,#09,#09,#07,#07,#07,#08
	db #08,#08,#09,#09,#09,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0d,#0a,#07,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#f7,#00,#fb,#f7
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #f7,#00,#fb,#f7,#00,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#00,#05,#08,#00
	db #05,#08,#00,#05,#08,#00,#05,#08
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #08,#00,#05,#08,#00,#05,#08,#00
	db #05,#08,#00,#05,#00,#fd,#f8,#00
	db #fd,#f8,#00,#fd,#f8,#00,#fd,#f8
	db #00,#fd,#f8,#00,#fd,#f8,#00,#fd
	db #f8,#00,#fd,#f8,#00,#fd,#f8,#00
	db #fd,#f8,#00,#fd,#00,#fc,#f9,#00
	db #fc,#f9,#00,#fc,#f9,#00,#fc,#f9
	db #00,#fc,#f9,#00,#fc,#f9,#00,#fc
	db #f9,#00,#fc,#f9,#00,#fc,#f9,#00
	db #fc,#f9,#00,#fc,#00,#fd,#f9,#00
	db #fd,#f9,#00,#fd,#f9,#00,#fd,#f9
	db #00,#fd,#f9,#00,#fd,#f9,#00,#fd
	db #f9,#00,#fd,#f9,#00,#fd,#f9,#00
.l6292 equ $ + 4
	db #fd,#f9,#00,#fd,#00,#ec,#62,#00
	db #f0,#62,#00,#51,#63,#00,#f0,#62
	db #00,#b2,#63,#00,#27,#64,#00,#b2
	db #63,#00,#f0,#62,#00,#51,#63,#80
.l62b0 equ $ + 2
	db #95,#62,#00,#9c,#64,#00,#a1,#64
	db #00,#a6,#64,#00,#a1,#64,#00,#ab
	db #64,#00,#c0,#64,#00,#d5,#64,#00
	db #a1,#64,#00,#a6,#64,#80,#b3,#62
.l62ce
	db #00,#da,#64,#00,#9b,#65,#00,#5b
	db #66,#00,#9b,#65,#00,#1c,#67,#00
	db #5b,#66,#00,#5b,#66,#00,#9b,#65
	db #00,#5b,#66,#80,#d1,#62,#22,#40
	db #03,#ff,#a2,#01,#22,#82,#a2,#01
	db #3a,#02,#02,#22,#02,#01,#a2,#01
	db #22,#82,#a2,#01,#3a,#02,#02,#22
	db #02,#01,#a2,#01,#22,#82,#a2,#01
	db #3a,#02,#02,#22,#02,#01,#a2,#01
	db #22,#82,#a2,#01,#3a,#02,#02,#22
	db #02,#01,#a2,#01,#22,#82,#a2,#01
	db #3a,#02,#02,#22,#02,#01,#a2,#01
	db #22,#82,#a2,#01,#3a,#02,#02,#22
	db #02,#01,#a2,#01,#22,#82,#a2,#01
	db #3a,#02,#02,#22,#02,#01,#a2,#01
	db #22,#82,#a2,#01,#3a,#02,#02,#22
	db #02,#01,#ff,#9e,#01,#1e,#82,#9e
	db #01,#3a,#02,#02,#1e,#02,#01,#9e
	db #01,#1e,#82,#9e,#01,#3a,#02,#02
	db #1e,#02,#01,#9e,#01,#1e,#82,#9e
	db #01,#3a,#02,#02,#1e,#02,#01,#9e
	db #01,#1e,#82,#9e,#01,#3a,#02,#02
	db #1e,#02,#01,#9e,#01,#1e,#82,#9e
	db #01,#3a,#02,#02,#1e,#02,#01,#9e
	db #01,#1e,#82,#9e,#01,#3a,#02,#02
	db #1e,#02,#01,#9e,#01,#1e,#82,#9e
	db #01,#3a,#02,#02,#1e,#02,#01,#9e
	db #01,#1e,#82,#9e,#01,#3a,#02,#02
	db #1e,#02,#01,#ff,#a2,#01,#a2,#01
	db #c1,#f1,#03,#a2,#11,#3a,#02,#02
	db #41,#02,#f1,#03,#a2,#11,#22,#02
	db #01,#a2,#01,#3a,#02,#02,#22,#02
	db #01,#a2,#01,#a2,#01,#c1,#f1,#03
	db #a2,#11,#3a,#02,#02,#41,#02,#f1
	db #03,#a2,#11,#22,#02,#01,#a2,#01
	db #3a,#02,#02,#22,#02,#01,#a2,#01
	db #a2,#01,#c1,#f1,#03,#a2,#11,#3a
	db #02,#02,#41,#02,#f1,#03,#a2,#11
	db #22,#02,#01,#a2,#01,#3a,#02,#02
	db #22,#02,#01,#a2,#01,#a2,#01,#c1
	db #f1,#03,#a2,#11,#3a,#02,#02,#41
	db #02,#f1,#03,#a2,#11,#22,#02,#01
	db #a2,#01,#3a,#02,#02,#22,#02,#01
	db #ff,#9e,#01,#9e,#01,#c6,#f1,#00
	db #9e,#11,#3a,#02,#02,#46,#02,#f1
	db #00,#9e,#11,#1e,#02,#01,#9e,#01
	db #3a,#02,#02,#1e,#02,#01,#9e,#01
	db #9e,#01,#c6,#f1,#00,#9e,#11,#3a
	db #02,#02,#46,#02,#f1,#00,#9e,#11
	db #1e,#02,#01,#9e,#01,#3a,#02,#02
	db #1e,#02,#01,#9e,#01,#9e,#01,#c6
	db #f1,#00,#9e,#11,#3a,#02,#02,#46
	db #02,#f1,#00,#9e,#11,#1e,#02,#01
	db #9e,#01,#3a,#02,#02,#1e,#02,#01
	db #9e,#01,#9e,#01,#c6,#f1,#00,#9e
	db #11,#3a,#02,#02,#46,#02,#f1,#00
	db #9e,#11,#1e,#02,#01,#9e,#01,#3a
	db #02,#02,#1e,#02,#01,#ff,#22,#40
	db #a0,#1e,#ff,#22,#40,#a0,#1e,#ff
	db #1e,#40,#a0,#13,#ff,#55,#10,#f5
	db #04,#54,#08,#f5,#05,#50,#08,#f5
	db #06,#52,#18,#f5,#00,#54,#08,#f5
	db #05,#ff,#55,#10,#f5,#04,#54,#08
	db #f5,#05,#50,#08,#f5,#06,#52,#18
	db #f5,#00,#54,#08,#f5,#05,#ff,#59
	db #40,#f5,#05,#ff,#cd,#b7,#06,#c6
	db #b7,#09,#cb,#b7,#06,#cd,#b7,#09
	db #c9,#b7,#06,#cb,#b7,#09,#c6,#b7
	db #06,#c9,#b7,#09,#cd,#b7,#06,#c6
	db #b7,#09,#cb,#b7,#06,#cd,#b7,#09
	db #c9,#b7,#06,#cb,#b7,#09,#c6,#b7
	db #06,#c9,#b7,#09,#cd,#b7,#05,#c6
	db #b7,#09,#cb,#b7,#05,#cd,#b7,#07
	db #c9,#b7,#05,#cb,#b7,#07,#c6,#b7
	db #05,#c9,#b7,#07,#cd,#b7,#05,#c6
	db #b7,#07,#cb,#b7,#05,#cd,#b7,#07
	db #c9,#b7,#05,#cb,#b7,#07,#c6,#b7
	db #05,#c9,#b7,#07,#cd,#b7,#03,#c6
	db #b7,#07,#cb,#b7,#03,#cd,#b7,#05
	db #c9,#b7,#03,#cb,#b7,#05,#c6,#b7
	db #03,#c9,#b7,#05,#cd,#b7,#02,#c6
	db #b7,#05,#cb,#b7,#02,#cd,#b7,#04
	db #c9,#b7,#02,#cb,#b7,#04,#c6,#b7
	db #02,#c9,#b7,#04,#cd,#b7,#01,#c6
	db #b7,#04,#cb,#b7,#01,#cd,#b7,#03
	db #c9,#b7,#01,#cb,#b7,#03,#c6,#b7
	db #01,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#02
	db #c9,#b7,#00,#cb,#b7,#02,#c6,#b7
	db #00,#c9,#b7,#02,#ff,#cd,#17,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#ff,#cd,#b7,#00
	db #c6,#b7,#03,#cb,#b7,#00,#cd,#b7
	db #03,#c9,#b7,#00,#cb,#b7,#03,#c6
	db #b7,#00,#c9,#b7,#03,#cd,#b7,#00
	db #c6,#b7,#03,#cb,#b7,#00,#cd,#b7
	db #03,#c9,#b7,#00,#cb,#b7,#03,#c6
	db #b7,#00,#c9,#b7,#03,#cd,#b7,#00
	db #c6,#b7,#03,#cb,#b7,#00,#cd,#b7
	db #03,#c9,#b7,#00,#cb,#b7,#03,#c6
	db #b7,#00,#c9,#b7,#03,#cd,#b7,#00
	db #c6,#b7,#03,#cb,#b7,#00,#cd,#b7
	db #03,#c9,#b7,#00,#cb,#b7,#03,#c6
	db #b7,#00,#c9,#b7,#03,#cd,#b7,#00
	db #c6,#b7,#03,#cb,#b7,#00,#cd,#b7
	db #03,#c9,#b7,#00,#cb,#b7,#03,#c6
	db #b7,#00,#c9,#b7,#03,#cd,#b7,#00
	db #c6,#b7,#03,#cb,#b7,#00,#cd,#b7
	db #03,#c9,#b7,#00,#cb,#b7,#03,#c6
	db #b7,#00,#c9,#b7,#03,#cd,#b7,#00
	db #c6,#b7,#03,#cb,#b7,#00,#cd,#b7
	db #03,#c9,#b7,#00,#cb,#b7,#03,#c6
	db #b7,#00,#c9,#b7,#03,#cd,#b7,#00
	db #c6,#b7,#03,#cb,#b7,#00,#cd,#b7
	db #03,#c9,#b7,#00,#cb,#b7,#03,#c6
	db #b7,#00,#c9,#b7,#03,#ff,#cd,#b7
	db #00,#c6,#b7,#03,#cb,#b7,#00,#cd
	db #b7,#03,#c9,#b7,#00,#cb,#b7,#03
	db #c6,#b7,#00,#c9,#b7,#03,#cd,#b7
	db #00,#c6,#b7,#03,#cb,#b7,#00,#cd
	db #b7,#03,#c9,#b7,#00,#cb,#b7,#03
	db #c6,#b7,#00,#c9,#b7,#03,#cd,#b7
	db #00,#c6,#b7,#03,#cb,#b7,#00,#cd
	db #b7,#03,#c9,#b7,#00,#cb,#b7,#03
	db #c6,#b7,#00,#c9,#b7,#03,#cd,#b7
	db #00,#c6,#b7,#03,#cb,#b7,#00,#cd
	db #b7,#03,#c9,#b7,#00,#cb,#b7,#03
	db #c6,#b7,#00,#c9,#b7,#03,#cd,#b7
	db #00,#c6,#b7,#03,#cb,#b7,#00,#cd
	db #b7,#03,#c9,#b7,#00,#cb,#b7,#03
	db #c6,#b7,#00,#c9,#b7,#03,#cd,#b7
	db #00,#c6,#b7,#03,#cb,#b7,#00,#cd
	db #b7,#03,#c9,#b7,#00,#cb,#b7,#03
	db #c6,#b7,#00,#c9,#b7,#03,#cd,#b7
	db #00,#c6,#b7,#03,#cb,#b7,#00,#cd
	db #b7,#03,#c9,#b7,#00,#cb,#b7,#03
	db #c6,#b7,#00,#c9,#b7,#03,#cd,#b7
	db #00,#c6,#b7,#03,#cb,#b7,#00,#cd
	db #b7,#03,#c9,#b7,#00,#cb,#b7,#03
	db #c6,#b7,#00,#c9,#b7,#03,#ff
;
.music_info
	db "CPC Challenge 17 - 2-3 (1994)(Hypnomega)()",0
	db "ST-Module",0

	read "music_end.asm"
