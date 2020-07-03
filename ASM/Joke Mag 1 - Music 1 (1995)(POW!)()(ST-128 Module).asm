; Music of Joke Mag 1 - Music 1 (1995)(POW!)()(ST-128 Module)
; Ripped by Megachur the 20/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JOKEM1M1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6802

	read "music_header.asm"

	jr l6806
	jr l6815
.l6806
	call l6839
	ld hl,l6826
	ld de,l681e
	ld bc,#81ff
	jp #bcd7
.l6815
	ld hl,l6826
	call #bcdd
	jp l68b1
.l681e
	push ix
	call l68cd
	pop ix
.l6826 equ $ + 1
	db #c9,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
	jp l6839
	jp l68cd
	jp l68b1
;
.init_music
.l6839
;
	xor a
	ld hl,l6de4
	call l68aa
	ld hl,l6e12
	call l68aa
	ld hl,l6e40
	call l68aa
	ld ix,l6de0
	ld iy,l6e6a
	ld de,#002e
	ld b,#03
.l6859
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
	djnz l6859
	ld hl,l6cf9
	ld (hl),#06
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l6cf5),hl
	ld (l6cf7),hl
	ld a,#0c
	ld c,d
	call l6cd5
	ld a,#0d
	ld c,d
	jp l6cd5
.l68aa
	ld b,#2a
.l68ac
	ld (hl),a
	inc hl
	djnz l68ac
	ret
;
.stop_music
.l68b1
;
	ld a,#07
	ld c,#3f
	call l6cd5
	ld a,#08
	ld c,#00
	call l6cd5
	ld a,#09
	ld c,#00
	call l6cd5
	ld a,#0a
	ld c,#00
	jp l6cd5
;
.play_music
.l68cd
;
	ld hl,l6cfb
	dec (hl)
	ld ix,l6de0
	ld bc,l6dee
	call l696f
	ld ix,l6e0e
	ld bc,l6e1c
	call l696f
	ld ix,l6e3c
	ld bc,l6e4a
	call l696f
	ld hl,l6cf4
	ld de,l6cfb
	ld b,#06
	call l694c
	ld b,#07
	call l694c
	ld b,#0b
	call l694c
	ld b,#0d
	call l694c
	ld de,l6cfb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l6dff
	call l6925
	ld hl,l6e2d
	call l6925
	ld hl,l6e5b
.l6925
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
	jr nz,l693a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l693a
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
.l694c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6cd5
.l6957
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6cd5
.l696f
	ld a,(l6cfb)
	or a
	jp nz,l6a27
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6a27
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6957
	or a
	jp z,l6a1c
	ld r,a
	and #7f
	cp #10
	jr c,l69f7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l6b6f
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
	jr z,l69d0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l69d0
	rrca
	ld c,a
	ld hl,l6e70
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
	jr z,l69ef
	ld (ix+#1e),b
.l69ef
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l6a10
.l69f7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l6d00
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
	add (hl)
	add a
	add a
	add h
	add l
.l6a10
	ld a,d
	or a
	jr nz,l6a1e
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l6a1e
.l6a1c
	ld a,(hl)
	inc hl
.l6a1e
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6a27
	ld a,(ix+#17)
	or a
	jr nz,l6a3d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l6a3d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6a53
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6a53
	ld a,(ix+#0d)
	or a
	jr z,l6a61
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l6a7f
.l6a61
	ld a,(ix+#1a)
	or a
	jp z,l6a86
	ld c,a
	cp #03
	jr nz,l6a6e
	xor a
.l6a6e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l6a7f
	ld a,(ix+#18)
	dec c
	jr z,l6a7f
	ld a,(ix+#19)
.l6a7f
	add (ix+#07)
	ld b,d
	call l6b6f
.l6a86
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l6aae
	dec (ix+#1b)
	jr nz,l6aae
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l6ae6
.l6aae
	ld a,(ix+#29)
	or a
	jr z,l6ae6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l6add
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l6ad4
	ld (ix+#29),#ff
	jr l6add
.l6ad4
	cp (ix+#2b)
	jr nz,l6add
	ld (ix+#29),#01
.l6add
	ld b,d
	or a
	jp p,l6ae3
	dec b
.l6ae3
	ld c,a
	jr l6af1
.l6ae6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l6af1
	pop hl
	bit 7,(ix+#14)
	jr z,l6afa
	ld h,d
	ld l,d
.l6afa
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6cd5
	ld c,h
	ld a,(ix+#02)
	call l6cd5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6b4d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l6b3c
	dec (ix+#09)
	jr nz,l6b3c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6b34
	xor a
	jr l6b39
.l6b34
	cp #10
	jr nz,l6b39
	dec a
.l6b39
	ld (ix+#1e),a
.l6b3c
	ld a,b
	sub (ix+#1e)
	jr nc,l6b43
	xor a
.l6b43
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6cd5
.l6b4d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l6cfc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l6b6b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l6b6b
	ld (l6cfc),hl
	ret
.l6b6f
	ld hl,l6d1e
	cp #61
	jr nc,l6b79
	add a
	ld c,a
	add hl,bc
.l6b79
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l6b83
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6ca8
	ld (ix+#1e),a
	jp l6a10
.l6b95
	dec b
.l6b96
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l6ba1
	neg
.l6ba1
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
	jp l6a10
.l6bb7
	dec b
	jr l6bbb
.l6bba
	inc b
.l6bbb
	call l6ca8
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l6a10
.l6bca
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
	jp l6c8d
.l6bdb
	ld a,(hl)
	inc hl
	or a
	jr z,l6bfd
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
.l6bfd
	ld (ix+#29),a
	jp l6a10
.l6c03
	dec hl
	ld a,(hl)
	and #0f
	ld (l6cff),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l6cfe),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l6a10
.l6c1d
	ld a,(hl)
	or a
	jr z,l6c2e
	call l6caa
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l6a10
.l6c2e
	ld hl,#0101
	ld (l6cfa),hl
	jp l6a10
.l6c37
	call l6ca8
	ld (ix+#1e),a
	jp l6a10
.l6c40
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6cb9
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6cb9
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l6a10
.l6c62
	ld a,(hl)
	inc hl
	ld (l6cf9),a
	jp l6a10
.l6c6a
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
	jp l6a10
.l6c89
	call l6ca8
	add a
.l6c8d
	ld b,#00
	ld c,a
	push hl
	ld hl,l6ef0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l6a10
.l6ca8
	ld a,(hl)
	inc hl
.l6caa
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
.l6cb9
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6e70
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l6cd5
	di
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
	ei
.l6cf4
	ret
.l6cfc equ $ + 7
.l6cfb equ $ + 6
.l6cfa equ $ + 5
.l6cf9 equ $ + 4
.l6cf7 equ $ + 2
.l6cf5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6cff equ $ + 2
.l6cfe equ $ + 1
	db #38,#00,#00
.l6d00
	dw l6b83,l6b96,l6b95,l6bba
	dw l6bb7,l6bca,l6bdb,l6c03
	dw l6c1d,l6c03,l6c37,l6c40
	dw l6c62,l6c6a,l6c89
.l6d1e
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
.l6de4 equ $ + 4
.l6de0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l6dee equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6dff equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e0e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l6e12 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l6e1c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e2d equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e3c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l6e40
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e4a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e5b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e6a equ $ + 2
	db #00,#00,#b0,#71,#c2,#71,#d4,#71
.l6e70
	db #02,#a4,#42,#a4,#62,#a4,#00,#00
	db #10,#6f,#50,#6f,#70,#6f,#00,#00
	db #82,#a4,#e2,#a4,#62,#a4,#00,#00
	db #82,#a4,#02,#a5,#62,#a4,#18,#07
	db #90,#6f,#d0,#6f,#f0,#6f,#08,#18
	db #c2,#32,#c0,#8d,#0b,#ae,#87,#1a
	db #90,#6f,#10,#70,#f0,#6f,#0b,#15
	db #45,#73,#fc,#00,#a7,#51,#77,#ff
	db #90,#6f,#30,#70,#f0,#6f,#00,#00
	db #50,#70,#90,#70,#f0,#6f,#08,#18
	db #b0,#70,#90,#70,#f0,#6f,#10,#10
	db #d9,#6a,#db,#6c,#0b,#6e,#d2,#d3
	db #f0,#70,#30,#71,#f0,#6f,#00,#00
	db #e7,#78,#e9,#7a,#eb,#7c,#ff,#e1
	db #ee,#7f,#f0,#81,#f2,#83,#e8,#f0
	db #f5,#86,#f6,#ae,#48,#ab,#3c,#b4
.l6ef0
	db #c7,#49,#e2,#a5,#50,#71,#22,#a6
	db #70,#71,#62,#a6,#11,#2b,#90,#71
	db #c0,#9d,#8b,#9c,#0e,#9f,#10,#a1
	db #12,#a3,#14,#a0,#13,#7d,#84,#7d
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#08
	db #08,#07,#07,#06,#05,#04,#04,#04
	db #04,#03,#02,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0c,#0b,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#07,#07,#07,#08,#08
	db #08,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#0b,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #0b,#0a,#09,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #07,#00,#07,#00,#06,#00,#06,#00
	db #05,#00,#05,#00,#04,#00,#04,#00
	db #03,#00,#03,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#02,#00,#04,#00,#06,#00
	db #08,#00,#0a,#00,#0c,#00,#0e,#00
	db #10,#00,#12,#00,#14,#00,#16,#00
	db #18,#00,#1a,#00,#1c,#00,#1e,#00
	db #20,#00,#22,#00,#24,#00,#26,#00
	db #28,#00,#2a,#00,#2c,#00,#2e,#00
	db #30,#00,#32,#00,#34,#00,#36,#00
	db #38,#00,#3a,#00,#3c,#00,#3e,#00
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#00,#00
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #09,#00,#05,#09,#00,#05,#09,#00
	db #05,#09,#00,#05,#09,#00,#05,#09
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #00,#e6,#71,#00,#e9,#71,#00,#e9
	db #71,#00,#01,#72,#00,#01,#72,#80
	db #b3,#71,#00,#3d,#72,#00,#7e,#72
	db #00,#7e,#72,#00,#7e,#72,#00,#7e
	db #72,#80,#c5,#71,#00,#cb,#72,#00
	db #cb,#72,#00,#cb,#72,#00,#cb,#72
	db #00,#cb,#72,#80,#d7,#71,#00,#40
	db #ff,#4a,#90,#10,#49,#90,#06,#4a
	db #90,#05,#c9,#c0,#49,#90,#04,#45
	db #90,#06,#47,#90,#12,#49,#a0,#08
	db #ff,#c7,#80,#c9,#80,#ca,#80,#cc
	db #80,#4e,#80,#0a,#ce,#80,#ce,#c0
	db #4c,#80,#06,#c9,#80,#c9,#c0,#4a
	db #80,#03,#c9,#80,#49,#c0,#02,#45
	db #80,#02,#47,#80,#0e,#c7,#80,#c7
	db #c0,#4c,#80,#03,#4a,#80,#03,#49
	db #80,#03,#4a,#80,#03,#c9,#80,#c9
	db #c0,#45,#80,#02,#ff,#af,#40,#af
	db #40,#af,#40,#ad,#40,#2f,#40,#02
	db #aa,#40,#2f,#40,#09,#ad,#40,#ad
	db #40,#ad,#40,#a8,#40,#2d,#40,#02
	db #a8,#40,#2d,#40,#09,#ab,#40,#ab
	db #40,#ab,#40,#a6,#40,#2b,#40,#02
	db #a6,#40,#2b,#40,#09,#aa,#40,#aa
	db #40,#aa,#40,#a5,#40,#2a,#40,#02
	db #a5,#40,#2a,#40,#09,#ff,#af,#40
	db #af,#40,#af,#40,#ad,#40,#40,#10
	db #02,#aa,#40,#2f,#40,#05,#40,#10
	db #04,#ad,#40,#ad,#40,#ad,#40,#a8
	db #40,#40,#10,#02,#a8,#40,#2d,#40
	db #05,#40,#10,#04,#ab,#40,#ab,#40
	db #ab,#40,#a6,#40,#40,#10,#02,#a6
	db #40,#2b,#40,#05,#40,#10,#04,#aa
	db #40,#aa,#40,#aa,#40,#a5,#40,#40
	db #10,#02,#a5,#40,#2a,#40,#05,#40
	db #10,#04,#ff,#4e,#6f,#04,#10,#4e
	db #6f,#02,#10,#4a,#6f,#07,#10,#49
	db #6f,#07,#10,#ff,#00
;
.music_info
	db "Joke Mag 1 - Music 1 (1995)(POW!)()",0
	db "ST-128 Module",0

	read "music_end.asm"
