; Music of Black Land - Introduction Music 3 (1995)(Bollaware)(V. Schreithuller)(ST-128 Module)
; Ripped by Megachur the 22/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLACLIM3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9980

	read "music_header.asm"

	jr l9984
	jr l9993
.l9984
	call l99b7
	ld hl,l99a4
	ld de,l999c
	ld bc,#81ff
	jp #bcd7
.l9993
	ld hl,l99a4
	call #bcdd
	jp l9a2f
.l999c
	push ix
	call l9a4b
	pop ix
	ret
.l99a4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l99b7
	jp l9a4b
	jp l9a2f
;
.init_music
.l99b7
;
	xor a
	ld hl,l9f62
	call l9a28
	ld hl,l9f90
	call l9a28
	ld hl,l9fbe
	call l9a28
	ld ix,l9f5e
	ld iy,l9fe8
	ld de,#002e
	ld b,#03
.l99d7
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l99d7
	ld hl,l9e77
	ld (hl),#0e
	inc hl
	ld (hl),#20
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l9e73),hl
	ld (l9e75),hl
	ld a,#0c
	ld c,d
	call l9e53
	ld a,#0d
	ld c,d
	jp l9e53
.l9a28
	ld b,#2a
.l9a2a
	ld (hl),a
	inc hl
	djnz l9a2a
	ret
;
.stop_music
.l9a2f
;
	ld a,#07
	ld c,#3f
	call l9e53
	ld a,#08
	ld c,#00
	call l9e53
	ld a,#09
	ld c,#00
	call l9e53
	ld a,#0a
	ld c,#00
	jp l9e53
;
.play_music
.l9a4b
;
	ld hl,l9e79
	dec (hl)
	ld ix,l9f5e
	ld bc,l9f6c
	call l9aed
	ld ix,l9f8c
	ld bc,l9f9a
	call l9aed
	ld ix,l9fba
	ld bc,l9fc8
	call l9aed
	ld hl,l9e72
	ld de,l9e79
	ld b,#06
	call l9aca
	ld b,#07
	call l9aca
	ld b,#0b
	call l9aca
	ld b,#0d
	call l9aca
	ld de,l9e79
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l9f7d
	call l9aa3
	ld hl,l9fab
	call l9aa3
	ld hl,l9fd9
.l9aa3
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l9ab8
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l9ab8
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l9aca
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l9e53
.l9ad5
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l9e53
.l9aed
	ld a,(l9e79)
	or a
	jp nz,l9ba5
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l9ba5
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l9ad5
	or a
	jp z,l9b9a
	ld r,a
	and #7f
	cp #10
	jr c,l9b75
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l9ced
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l9b4e
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l9b4e
	rrca
	ld c,a
	ld hl,l9fee
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l9b6d
	ld (ix+#1e),b
.l9b6d
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l9b8e
.l9b75
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l9e7e
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add b
	add b
	add e
	adc b
	adc c
.l9b8e
	ld a,d
	or a
	jr nz,l9b9c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l9b9c
.l9b9a
	ld a,(hl)
	inc hl
.l9b9c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l9ba5
	ld a,(ix+#17)
	or a
	jr nz,l9bbb
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l9bbb
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l9bd1
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l9bd1
	ld a,(ix+#0d)
	or a
	jr z,l9bdf
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l9bfd
.l9bdf
	ld a,(ix+#1a)
	or a
	jp z,l9c04
	ld c,a
	cp #03
	jr nz,l9bec
	xor a
.l9bec
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l9bfd
	ld a,(ix+#18)
	dec c
	jr z,l9bfd
	ld a,(ix+#19)
.l9bfd
	add (ix+#07)
	ld b,d
	call l9ced
.l9c04
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l9c2c
	dec (ix+#1b)
	jr nz,l9c2c
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l9c64
.l9c2c
	ld a,(ix+#29)
	or a
	jr z,l9c64
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l9c5b
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l9c52
	ld (ix+#29),#ff
	jr l9c5b
.l9c52
	cp (ix+#2b)
	jr nz,l9c5b
	ld (ix+#29),#01
.l9c5b
	ld b,d
	or a
	jp p,l9c61
	dec b
.l9c61
	ld c,a
	jr l9c6f
.l9c64
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l9c6f
	pop hl
	bit 7,(ix+#14)
	jr z,l9c78
	ld h,d
	ld l,d
.l9c78
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l9e53
	ld c,h
	ld a,(ix+#02)
	call l9e53
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9ccb
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l9cba
	dec (ix+#09)
	jr nz,l9cba
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l9cb2
	xor a
	jr l9cb7
.l9cb2
	cp #10
	jr nz,l9cb7
	dec a
.l9cb7
	ld (ix+#1e),a
.l9cba
	ld a,b
	sub (ix+#1e)
	jr nc,l9cc1
	xor a
.l9cc1
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l9e53
.l9ccb
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l9e7a)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l9ce9
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l9ce9
	ld (l9e7a),hl
	ret
.l9ced
	ld hl,l9e9c
	cp #61
	jr nc,l9cf7
	add a
	ld c,a
	add hl,bc
.l9cf7
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l9d01
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l9e26
	ld (ix+#1e),a
	jp l9b8e
.l9d13
	dec b
.l9d14
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l9d1f
	neg
.l9d1f
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l9b8e
.l9d35
	dec b
	jr l9d39
.l9d38
	inc b
.l9d39
	call l9e26
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l9b8e
.l9d48
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l9e0b
.l9d59
	ld a,(hl)
	inc hl
	or a
	jr z,l9d7b
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l9d7b
	ld (ix+#29),a
	jp l9b8e
.l9d81
	dec hl
	ld a,(hl)
	and #0f
	ld (l9e7d),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l9e7c),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l9b8e
.l9d9b
	ld a,(hl)
	or a
	jr z,l9dac
	call l9e28
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l9b8e
.l9dac
	ld hl,#0101
	ld (l9e78),hl
	jp l9b8e
.l9db5
	call l9e26
	ld (ix+#1e),a
	jp l9b8e
.l9dbe
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l9e37
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l9e37
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l9b8e
.l9de0
	ld a,(hl)
	inc hl
	ld (l9e77),a
	jp l9b8e
.l9de8
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l9b8e
.l9e07
	call l9e26
	add a
.l9e0b
	ld b,#00
	ld c,a
	push hl
	ld hl,la06e
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l9b8e
.l9e26
	ld a,(hl)
	inc hl
.l9e28
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l9e37
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l9fee
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l9e53
	nop
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
	nop
.l9e72
	ret
.l9e7a equ $ + 7
.l9e79 equ $ + 6
.l9e78 equ $ + 5
.l9e77 equ $ + 4
.l9e75 equ $ + 2
.l9e73
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9e7d equ $ + 2
.l9e7c equ $ + 1
	db #38,#00,#00
.l9e7e
	dw l9d01,l9d14,l9d13,l9d38
	dw l9d35,l9d48,l9d59,l9d81
	dw l9d9b,l9d81,l9db5,l9dbe
	dw l9de0,l9de8,l9e07
.l9e9c
	dw #0000,#0e18,#0d4d,#0c8e
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
.l9f62 equ $ + 4
.l9f5e
	db #08,#00,#01,#08,#00,#00,#00,#00
.l9f6c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9f7d equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9f8c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l9f90 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l9f9a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9fab equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9fba equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l9fbe
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9fc8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9fd9 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9fe8 equ $ + 2
	db #00,#00,#8e,#a2,#af,#a2,#d0,#a2
.l9fee
	db #65,#f2,#65,#f2,#65,#f2,#e5,#e5
	db #65,#f2,#65,#f2,#65,#f2,#e5,#e5
	db #65,#f2,#65,#f2,#65,#f2,#e5,#e5
	db #65,#f2,#65,#f2,#65,#f2,#e5,#e5
	db #8e,#a0,#ce,#a0,#ee,#a0,#08,#18
	db #0e,#a1,#4e,#a1,#ee,#a0,#00,#00
	db #6e,#a1,#ae,#a1,#ee,#a0,#08,#0f
	db #0e,#a1,#ce,#a1,#ee,#a1,#06,#00
	db #65,#f2,#65,#f2,#65,#f2,#e5,#e5
	db #8e,#fa,#0e,#fb,#6e,#fa,#1b,#00
	db #65,#f2,#65,#f2,#65,#f2,#e5,#e5
	db #65,#f2,#65,#f2,#65,#f2,#e5,#e5
	db #2e,#fb,#6e,#fb,#8e,#fb,#0c,#00
	db #0e,#a2,#4e,#a2,#6e,#a2,#00,#00
	db #2e,#fc,#6e,#fc,#8e,#fc,#00,#00
	db #65,#f2,#65,#f2,#65,#f2,#e5,#e5
.la06e
	db #65,#f2,#65,#f2,#65,#f2,#65,#f2
	db #65,#f2,#65,#f2,#65,#f2,#65,#f2
	db #65,#f2,#65,#f2,#65,#f2,#65,#f2
	db #65,#f2,#65,#f2,#65,#f2,#65,#f2
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0c,#0c,#0c,#0c,#0c,#80,#80
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0b,#0a,#0a,#0a
	db #0a,#09,#09,#09,#09,#08,#08,#08
	db #08,#07,#07,#07,#06,#06,#06,#05
	db #05,#05,#04,#04,#03,#03,#02,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0c,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0f,#0c,#09,#06,#03,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#40,#00,#80,#00,#c0,#00
	db #00,#01,#40,#01,#80,#01,#c0,#01
	db #00,#02,#40,#02,#80,#02,#c0,#02
	db #00,#03,#40,#03,#80,#03,#c0,#03
	db #00,#04,#40,#04,#80,#04,#c0,#04
	db #00,#05,#40,#05,#80,#05,#c0,#05
	db #00,#06,#40,#06,#80,#06,#c0,#06
	db #00,#07,#40,#07,#80,#07,#c0,#07
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#03,#00
	db #00,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#f1,#a2,#00,#2e,#a3,#00,#2e
	db #a3,#00,#67,#a3,#00,#67,#a3,#00
	db #c8,#a3,#00,#c8,#a3,#00,#c8,#a3
	db #00,#01,#a4,#00,#43,#a4,#80,#8e
	db #a2,#00,#81,#a4,#00,#95,#a4,#00
	db #c5,#a4,#00,#01,#a5,#00,#2c,#a5
	db #00,#61,#a5,#00,#9a,#a5,#00,#61
	db #a5,#00,#d3,#a5,#00,#34,#a6,#80
	db #af,#a2,#00,#80,#a6,#00,#b4,#a6
	db #00,#e5,#a6,#00,#16,#a7,#00,#4a
	db #a7,#00,#82,#a7,#00,#82,#a7,#00
	db #82,#a7,#00,#c4,#a7,#00,#cc,#a7
	db #80,#d0,#a2,#44,#4b,#22,#c4,#40
	db #c5,#40,#c7,#60,#c5,#40,#c4,#40
	db #c5,#60,#42,#40,#02,#c2,#60,#c4
	db #40,#c5,#60,#c4,#40,#c2,#40,#c4
	db #60,#40,#40,#02,#c0,#40,#c2,#60
	db #c4,#40,#c2,#40,#c4,#60,#c2,#40
	db #40,#40,#02,#c2,#60,#c0,#40,#bf
	db #40,#bf,#60,#c0,#40,#bf,#40,#ff
	db #34,#40,#02,#c0,#40,#fe,#01,#34
	db #40,#02,#c0,#40,#fe,#01,#34,#40
	db #02,#c0,#40,#fe,#01,#34,#40,#02
	db #c0,#40,#fe,#01,#34,#40,#02,#c0
	db #40,#fe,#01,#34,#40,#02,#c0,#40
	db #fe,#01,#34,#40,#02,#c0,#40,#fe
	db #01,#34,#40,#02,#c0,#40,#fe,#01
	db #ff,#34,#db,#10,#34,#db,#11,#34
	db #db,#12,#34,#db,#13,#34,#db,#14
	db #34,#db,#15,#34,#db,#16,#34,#db
	db #17,#28,#db,#10,#28,#db,#11,#28
	db #db,#12,#28,#db,#13,#28,#db,#14
	db #28,#db,#15,#28,#db,#16,#28,#db
	db #17,#34,#db,#10,#28,#db,#11,#28
	db #db,#12,#28,#db,#13,#28,#db,#14
	db #28,#db,#15,#28,#db,#16,#28,#db
	db #17,#28,#db,#10,#28,#db,#11,#28
	db #db,#12,#28,#db,#13,#28,#db,#14
	db #28,#db,#15,#28,#db,#16,#28,#db
	db #18,#ff,#af,#40,#b0,#40,#af,#40
	db #fe,#01,#af,#40,#b0,#40,#af,#40
	db #fe,#01,#af,#40,#b0,#40,#af,#40
	db #ad,#40,#af,#40,#fe,#03,#af,#40
	db #b0,#40,#af,#40,#fe,#01,#af,#40
	db #b0,#40,#af,#40,#fe,#01,#af,#40
	db #b0,#40,#af,#40,#ad,#40,#af,#40
	db #fe,#03,#ff,#c0,#4d,#0e,#c3,#40
	db #c2,#40,#c0,#40,#c7,#40,#c3,#40
	db #c2,#40,#c3,#40,#c0,#40,#c3,#40
	db #c2,#40,#c0,#40,#c7,#40,#c3,#40
	db #c2,#40,#c3,#40,#bc,#40,#bf,#40
	db #be,#40,#bc,#40,#c3,#40,#bf,#40
	db #be,#40,#bf,#40,#bc,#40,#bf,#40
	db #be,#40,#bc,#40,#c3,#40,#bf,#40
	db #be,#40,#bf,#40,#ff,#40,#5d,#0e
	db #02,#42,#50,#02,#47,#50,#02,#42
	db #50,#02,#40,#50,#02,#42,#50,#02
	db #47,#50,#02,#42,#50,#02,#40,#50
	db #02,#42,#50,#02,#47,#50,#02,#42
	db #50,#02,#e4,#4d,#07,#64,#4b,#12
	db #64,#4b,#15,#64,#4b,#16,#64,#4b
	db #18,#64,#4b,#1a,#64,#4b,#1c,#64
	db #4b,#1e,#ff,#31,#4d,#0e,#08,#2f
	db #40,#06,#2c,#40,#02,#2d,#40,#06
	db #39,#40,#02,#38,#40,#08,#ff,#40
	db #6d,#07,#02,#c0,#40,#c2,#40,#43
	db #40,#02,#45,#40,#02,#47,#40,#02
	db #48,#40,#02,#c7,#40,#c5,#40,#c3
	db #40,#c2,#40,#40,#40,#02,#c0,#40
	db #c2,#40,#43,#40,#02,#42,#40,#02
	db #40,#40,#04,#3f,#40,#04,#ff,#40
	db #40,#02,#cc,#40,#cb,#40,#ca,#40
	db #fe,#02,#c5,#40,#c7,#40,#c8,#40
	db #c7,#40,#c8,#40,#c7,#40,#c5,#40
	db #c3,#40,#c2,#40,#c0,#40,#fe,#01
	db #cc,#40,#fe,#01,#cb,#40,#c9,#40
	db #cb,#40,#fe,#01,#4c,#40,#02,#c7
	db #40,#c3,#40,#40,#40,#02,#d8,#40
	db #fe,#01,#ff,#34,#4d,#0e,#02,#34
	db #40,#02,#34,#40,#02,#32,#40,#02
	db #34,#40,#02,#34,#40,#02,#34,#40
	db #02,#b5,#40,#b8,#40,#34,#40,#02
	db #34,#40,#02,#34,#40,#02,#b2,#40
	db #b5,#40,#34,#40,#08,#ff,#34,#4d
	db #0e,#02,#34,#40,#02,#34,#40,#02
	db #32,#40,#02,#34,#40,#02,#34,#40
	db #02,#34,#40,#02,#b5,#40,#b8,#40
	db #34,#40,#02,#34,#40,#02,#34,#40
	db #02,#b2,#40,#b5,#40,#a8,#d0,#28
	db #d0,#02,#28,#d0,#02,#28,#d0,#02
	db #a8,#d0,#ff,#a8,#40,#a9,#40,#a8
	db #40,#fe,#01,#a8,#40,#a9,#40,#a8
	db #40,#fe,#01,#a8,#40,#a9,#40,#a8
	db #40,#a6,#40,#a8,#40,#fe,#03,#a8
	db #40,#a9,#40,#a8,#40,#fe,#01,#a8
	db #40,#a9,#40,#a8,#40,#fe,#01,#a8
	db #40,#a9,#40,#a8,#40,#a6,#40,#a8
	db #40,#fe,#03,#ff,#b7,#40,#b8,#40
	db #b7,#40,#fe,#01,#b7,#40,#b8,#40
	db #b7,#40,#fe,#01,#b7,#40,#b8,#40
	db #b7,#40,#b6,#40,#b7,#40,#fe,#03
	db #c0,#40,#c1,#40,#c0,#40,#fe,#01
	db #c0,#40,#c1,#40,#c0,#40,#fe,#01
	db #c0,#40,#c1,#40,#c0,#40,#bf,#40
	db #c0,#40,#fe,#03,#ff,#34,#db,#10
	db #34,#db,#10,#34,#db,#12,#34,#db
	db #10,#34,#db,#12,#34,#db,#10,#34
	db #db,#12,#34,#db,#10,#34,#db,#10
	db #34,#db,#10,#34,#db,#12,#34,#db
	db #10,#34,#db,#12,#34,#db,#10,#34
	db #db,#12,#34,#db,#10,#34,#db,#10
	db #34,#db,#10,#34,#db,#11,#34,#db
	db #11,#34,#db,#12,#34,#db,#12,#34
	db #db,#13,#34,#db,#13,#34,#db,#14
	db #34,#db,#14,#34,#db,#15,#34,#db
	db #15,#34,#db,#16,#34,#db,#16,#34
	db #db,#17,#34,#db,#17,#ff,#34,#4b
	db #80,#34,#4b,#10,#34,#4b,#10,#34
	db #4b,#11,#34,#4b,#11,#34,#4b,#12
	db #34,#4b,#12,#34,#4b,#14,#34,#4b
	db #14,#34,#4b,#13,#34,#4b,#13,#34
	db #4b,#15,#34,#4b,#15,#34,#4b,#16
	db #34,#4b,#16,#34,#4b,#17,#34,#4b
	db #17,#64,#4b,#10,#64,#4b,#12,#64
	db #4b,#15,#64,#4b,#16,#64,#4b,#18
	db #64,#4b,#1a,#64,#4b,#1c,#64,#4b
	db #1e,#ff,#34,#60,#02,#b4,#60,#b6
	db #60,#b8,#40,#b6,#40,#b4,#40,#b6
	db #40,#33,#60,#02,#b3,#60,#b4,#60
	db #b6,#40,#b8,#40,#b6,#40,#b4,#40
	db #31,#60,#02,#b1,#40,#b3,#40,#b4
	db #60,#b3,#40,#b1,#40,#b3,#40,#33
	db #60,#04,#36,#60,#04,#ff,#28,#50
	db #02,#2f,#50,#02,#28,#50,#02,#2f
	db #50,#02,#28,#50,#02,#2f,#50,#02
	db #28,#50,#02,#2f,#50,#02,#28,#50
	db #02,#2f,#50,#02,#28,#50,#02,#2f
	db #50,#02,#28,#50,#02,#2f,#50,#02
	db #28,#50,#02,#2f,#50,#02,#ff,#28
	db #50,#02,#2f,#50,#02,#28,#50,#02
	db #2f,#50,#02,#28,#50,#02,#2f,#50
	db #02,#28,#50,#02,#2f,#50,#02,#2f
	db #50,#02,#36,#50,#02,#2f,#50,#02
	db #36,#50,#02,#28,#50,#02,#2f,#50
	db #02,#28,#50,#02,#2f,#50,#02,#ff
	db #4c,#60,#02,#4d,#60,#02,#d0,#60
	db #cd,#40,#4c,#60,#02,#4c,#60,#02
	db #cc,#60,#ca,#40,#4c,#60,#04,#53
	db #60,#02,#51,#60,#02,#d0,#60,#cd
	db #40,#4c,#60,#02,#cc,#60,#cd,#40
	db #cc,#60,#ca,#40,#4c,#60,#02,#c0
	db #40,#be,#40,#ff,#58,#60,#02,#57
	db #60,#02,#d4,#60,#d1,#40,#53,#60
	db #02,#d3,#60,#d4,#40,#d3,#60,#d1
	db #40,#53,#60,#04,#4c,#60,#02,#cd
	db #60,#d0,#40,#d1,#40,#d0,#40,#cd
	db #40,#cc,#40,#cc,#d0,#cc,#d0,#a8
	db #d0,#cc,#d0,#a8,#d0,#cc,#d0,#a8
	db #d0,#cc,#d0,#ff,#b4,#dd,#07,#b4
	db #70,#b4,#d0,#b4,#70,#b4,#70,#b4
	db #70,#b4,#d0,#b4,#70,#b4,#70,#b4
	db #70,#b4,#d0,#b4,#70,#b4,#70,#b4
	db #70,#b4,#d0,#b4,#70,#b4,#d0,#b4
	db #70,#b4,#d0,#b4,#70,#b4,#70,#b4
	db #70,#b4,#d0,#b4,#70,#b4,#70,#b4
	db #70,#b4,#d0,#b4,#70,#b4,#70,#b4
	db #70,#b4,#d0,#b4,#70,#ff,#34,#44
	db #01,#10,#30,#40,#10,#ff,#0d,#0e
	db #01,#43,#50,#02,#40,#50,#02,#43
	db #50,#02,#43,#50,#02,#43,#50,#02
	db #40,#50,#02,#43,#50,#02,#43,#50
	db #02,#43,#50,#02,#40,#50,#02,#43
	db #50,#02,#c3,#50,#64,#4b,#10,#64
	db #4b,#12,#64,#4b,#15,#64,#4b,#16
	db #64,#4b,#18,#64,#4b,#1a,#64,#4b
	db #1c,#64,#4b,#1e,#ff
;
.music_info
	db "Black Land - Introduction Music 3 (1995)(Bollaware)(V. Schreithuller)",0
	db "ST-128 Module",0

	read "music_end.asm"
