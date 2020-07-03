; Music of X-Files - Cheat of Cheat Part (1996)(Mortel)(Epsilon)(ST-128 Module)
; Ripped by Megachur the 26/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XFILCOCP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #69ea

	read "music_header.asm"

	jp l69f3
	jp l6a87
	jp l6a6b
;
.init_music
.l69f3
;
	xor a
	ld hl,l6f9e
	call l6a64
	ld hl,l6fcc
	call l6a64
	ld hl,l6ffa
	call l6a64
	ld ix,l6f9a
	ld iy,l7024
	ld de,#002e
	ld b,#03
.l6a13
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
	djnz l6a13
	ld hl,l6eb3
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
	ld (l6eaf),hl
	ld (l6eb1),hl
	ld a,#0c
	ld c,d
	call l6e8f
	ld a,#0d
	ld c,d
	jp l6e8f
.l6a64
	ld b,#2a
.l6a66
	ld (hl),a
	inc hl
	djnz l6a66
	ret
;
.stop_music
.l6a6b
;
	ld a,#07
	ld c,#3f
	call l6e8f
	ld a,#08
	ld c,#00
	call l6e8f
	ld a,#09
	ld c,#00
	call l6e8f
	ld a,#0a
	ld c,#00
	jp l6e8f
;
.play_music
.l6a87
;
	ld hl,l6eb5
	dec (hl)
	ld ix,l6f9a
	ld bc,l6fa8
	call l6b29
	ld ix,l6fc8
	ld bc,l6fd6
	call l6b29
	ld ix,l6ff6
	ld bc,l7004
	call l6b29
	ld hl,l6eae
	ld de,l6eb5
	ld b,#06
	call l6b06
	ld b,#07
	call l6b06
	ld b,#0b
	call l6b06
	ld b,#0d
	call l6b06
	ld de,l6eb5
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l6fb9
	call l6adf
	ld hl,l6fe7
	call l6adf
	ld hl,l7015
.l6adf
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
	jr nz,l6af4
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l6af4
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
.l6b06
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6e8f
.l6b11
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6e8f
.l6b29
	ld a,(l6eb5)
	or a
	jp nz,l6be1
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6be1
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6b11
	or a
	jp z,l6bd6
	ld r,a
	and #7f
	cp #10
	jr c,l6bb1
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l6d29
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
	jr z,l6b8a
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l6b8a
	rrca
	ld c,a
	ld hl,l702a
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
	jr z,l6ba9
	ld (ix+#1e),b
.l6ba9
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l6bca
.l6bb1
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l6eba
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
	add e
	add h
	add l
	add (hl)
	add h
.l6bca
	ld a,d
	or a
	jr nz,l6bd8
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l6bd8
.l6bd6
	ld a,(hl)
	inc hl
.l6bd8
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6be1
	ld a,(ix+#17)
	or a
	jr nz,l6bf7
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l6bf7
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6c0d
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6c0d
	ld a,(ix+#0d)
	or a
	jr z,l6c1b
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l6c39
.l6c1b
	ld a,(ix+#1a)
	or a
	jp z,l6c40
	ld c,a
	cp #03
	jr nz,l6c28
	xor a
.l6c28
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l6c39
	ld a,(ix+#18)
	dec c
	jr z,l6c39
	ld a,(ix+#19)
.l6c39
	add (ix+#07)
	ld b,d
	call l6d29
.l6c40
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l6c68
	dec (ix+#1b)
	jr nz,l6c68
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l6ca0
.l6c68
	ld a,(ix+#29)
	or a
	jr z,l6ca0
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l6c97
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l6c8e
	ld (ix+#29),#ff
	jr l6c97
.l6c8e
	cp (ix+#2b)
	jr nz,l6c97
	ld (ix+#29),#01
.l6c97
	ld b,d
	or a
	jp p,l6c9d
	dec b
.l6c9d
	ld c,a
	jr l6cab
.l6ca0
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l6cab
	pop hl
	bit 7,(ix+#14)
	jr z,l6cb4
	ld h,d
	ld l,d
.l6cb4
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6e8f
	ld c,h
	ld a,(ix+#02)
	call l6e8f
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6d07
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l6cf6
	dec (ix+#09)
	jr nz,l6cf6
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6cee
	xor a
	jr l6cf3
.l6cee
	cp #10
	jr nz,l6cf3
	dec a
.l6cf3
	ld (ix+#1e),a
.l6cf6
	ld a,b
	sub (ix+#1e)
	jr nc,l6cfd
	xor a
.l6cfd
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6e8f
.l6d07
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l6eb6)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l6d25
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l6d25
	ld (l6eb6),hl
	ret
.l6d29
	ld hl,l6ed8
	cp #61
	jr nc,l6d33
	add a
	ld c,a
	add hl,bc
.l6d33
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l6d3d
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6e62
	ld (ix+#1e),a
	jp l6bca
.l6d4f
	dec b
.l6d50
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l6d5b
	neg
.l6d5b
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
	jp l6bca
.l6d71
	dec b
	jr l6d75
.l6d74
	inc b
.l6d75
	call l6e62
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l6bca
.l6d84
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
	jp l6e47
.l6d95
	ld a,(hl)
	inc hl
	or a
	jr z,l6db7
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
.l6db7
	ld (ix+#29),a
	jp l6bca
.l6dbd
	dec hl
	ld a,(hl)
	and #0f
	ld (l6eb9),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l6eb8),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l6bca
.l6dd7
	ld a,(hl)
	or a
	jr z,l6de8
	call l6e64
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l6bca
.l6de8
	ld hl,#0101
	ld (l6eb4),hl
	jp l6bca
.l6df1
	call l6e62
	ld (ix+#1e),a
	jp l6bca
.l6dfa
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6e73
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6e73
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l6bca
.l6e1c
	ld a,(hl)
	inc hl
	ld (l6eb3),a
	jp l6bca
.l6e24
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
	jp l6bca
.l6e43
	call l6e62
	add a
.l6e47
	ld b,#00
	ld c,a
	push hl
	ld hl,l70aa
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l6bca
.l6e62
	ld a,(hl)
	inc hl
.l6e64
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
.l6e73
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l702a
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l6e8f
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
.l6eae
	ret
.l6eb6 equ $ + 7
.l6eb5 equ $ + 6
.l6eb4 equ $ + 5
.l6eb3 equ $ + 4
.l6eb1 equ $ + 2
.l6eaf
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6eb9 equ $ + 2
.l6eb8 equ $ + 1
	db #38,#00,#00
.l6eba
	dw l6d3d,l6d50,l6d4f,l6d74
	dw l6d71,l6d84,l6d95,l6dbd
	dw l6dd7,l6dbd,l6df1,l6dfa
	dw l6e1c,l6e24,l6e43
.l6ed8
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
.l6f9e equ $ + 4
.l6f9a
	db #08,#00,#01,#08,#00,#00,#00,#00
.l6fa8 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6fb9 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6fc8 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l6fcc equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l6fd6 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6fe7 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6ff6 equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l6ffa
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7004 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7015 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7024 equ $ + 2
	db #00,#00,#6a,#73,#8b,#73,#ac,#73
.l702a
	db #ca,#70,#0a,#71,#2a,#71,#00,#00
	db #4a,#71,#8a,#71,#aa,#71,#00,#00
	db #ca,#71,#0a,#72,#2a,#72,#9a,#06
	db #ca,#70,#4a,#72,#2a,#71,#00,#00
	db #6a,#72,#aa,#72,#ca,#72,#c0,#00
	db #ea,#72,#2a,#73,#2a,#71,#08,#18
	db #bb,#29,#bc,#29,#bc,#29,#ff,#ff
	db #bb,#29,#bc,#29,#bc,#29,#ff,#ff
	db #bb,#29,#bc,#29,#bc,#29,#ff,#ff
	db #bb,#29,#bc,#29,#bc,#29,#ff,#ff
	db #bb,#29,#bc,#29,#bc,#29,#ff,#ff
	db #bb,#29,#bc,#29,#bc,#29,#ff,#ff
	db #bb,#29,#bc,#29,#bc,#29,#ff,#ff
	db #bb,#29,#bc,#29,#bc,#29,#ff,#ff
	db #bb,#29,#bc,#29,#bc,#29,#ff,#ff
	db #bb,#29,#bc,#29,#bc,#29,#ff,#ff
.l70aa
	db #4a,#73,#bc,#29,#bc,#29,#bb,#29
	db #bb,#29,#bc,#29,#bc,#29,#bb,#29
	db #bb,#29,#bb,#29,#bb,#29,#bc,#29
	db #bc,#29,#bb,#29,#bb,#29,#bc,#29
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#02,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
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
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #09,#0a,#0b,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #00,#cd,#73,#00,#8d,#74,#00,#8d
	db #74,#00,#8d,#74,#00,#ee,#74,#00
	db #ee,#74,#00,#4f,#75,#00,#4f,#75
	db #00,#ee,#74,#00,#ee,#74,#80,#6a
	db #73,#00,#cd,#73,#00,#b0,#75,#00
	db #b0,#75,#00,#b0,#75,#00,#70,#76
	db #00,#70,#76,#00,#30,#77,#00,#30
	db #77,#00,#70,#76,#00,#70,#76,#80
	db #8b,#73,#00,#cd,#73,#00,#b0,#75
	db #00,#f0,#77,#00,#f0,#77,#00,#50
	db #78,#00,#50,#78,#00,#06,#79,#00
	db #b0,#78,#00,#50,#78,#00,#50,#78
	db #80,#ac,#73,#37,#31,#10,#0b,#13
	db #37,#3b,#13,#43,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#37,#3b,#13,#43
	db #3b,#13,#35,#3b,#13,#31,#2b,#10
	db #41,#3b,#13,#41,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#35,#3b,#13,#41
	db #3b,#13,#32,#3b,#13,#31,#2b,#10
	db #3e,#3b,#13,#3e,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#32,#3b,#13,#3e
	db #3b,#13,#33,#3b,#13,#31,#2b,#10
	db #3f,#3b,#13,#3f,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#33,#3b,#13,#3f
	db #3b,#13,#37,#3b,#13,#31,#2b,#10
	db #43,#3b,#13,#43,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#37,#3b,#13,#43
	db #3b,#13,#35,#3b,#13,#31,#2b,#10
	db #41,#3b,#13,#41,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#35,#3b,#13,#41
	db #3b,#13,#32,#3b,#13,#31,#2b,#10
	db #3e,#3b,#13,#3e,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#32,#3b,#13,#3e
	db #3b,#13,#33,#3b,#13,#31,#2b,#10
	db #3f,#3b,#13,#3f,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#33,#3b,#13,#3f
	db #3b,#13,#ff,#28,#11,#20,#43,#0f
	db #20,#43,#0f,#20,#43,#0f,#20,#28
	db #11,#20,#41,#0f,#20,#41,#0f,#20
	db #41,#0f,#20,#28,#11,#20,#3e,#0f
	db #20,#3e,#0f,#20,#3e,#0f,#20,#28
	db #11,#20,#3f,#0f,#20,#3f,#0f,#20
	db #3f,#0f,#20,#28,#11,#20,#43,#0f
	db #20,#43,#0f,#20,#43,#0f,#20,#28
	db #11,#20,#41,#0f,#20,#41,#0f,#20
	db #41,#0f,#20,#28,#11,#20,#3e,#0f
	db #20,#3e,#0f,#20,#3e,#0f,#20,#28
	db #11,#20,#3f,#0f,#20,#3f,#0f,#20
	db #3f,#0f,#20,#ff,#28,#11,#20,#45
	db #0f,#20,#45,#0f,#20,#45,#0f,#20
	db #28,#11,#20,#43,#0f,#20,#43,#0f
	db #20,#43,#0f,#20,#28,#11,#20,#40
	db #0f,#20,#40,#0f,#20,#40,#0f,#20
	db #28,#11,#20,#41,#0f,#20,#41,#0f
	db #20,#41,#0f,#20,#28,#11,#20,#45
	db #0f,#20,#45,#0f,#20,#45,#0f,#20
	db #28,#11,#20,#43,#0f,#20,#43,#0f
	db #20,#43,#0f,#20,#28,#11,#20,#40
	db #0f,#20,#40,#0f,#20,#40,#0f,#20
	db #28,#11,#20,#41,#0f,#20,#41,#0f
	db #20,#41,#0f,#20,#ff,#28,#11,#20
	db #41,#0f,#20,#41,#0f,#20,#41,#0f
	db #20,#28,#11,#20,#43,#0f,#20,#43
	db #0f,#20,#43,#0f,#20,#28,#11,#20
	db #41,#0f,#20,#41,#0f,#20,#41,#0f
	db #20,#28,#11,#20,#43,#0f,#20,#43
	db #0f,#20,#43,#0f,#20,#28,#11,#20
	db #41,#0f,#20,#41,#0f,#20,#41,#0f
	db #20,#28,#11,#20,#43,#0f,#20,#43
	db #0f,#20,#43,#0f,#20,#28,#11,#20
	db #41,#0f,#20,#41,#0f,#20,#41,#0f
	db #20,#28,#11,#20,#43,#0f,#20,#43
	db #0f,#20,#43,#0f,#20,#ff,#37,#3b
	db #13,#0b,#13,#37,#3b,#13,#43,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#37
	db #3b,#13,#43,#3b,#13,#35,#3b,#13
	db #31,#2b,#10,#41,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#32,#3b,#13
	db #31,#2b,#10,#3e,#3b,#13,#3e,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#32
	db #3b,#13,#3e,#3b,#13,#33,#3b,#13
	db #31,#2b,#10,#3f,#3b,#13,#3f,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#33
	db #3b,#13,#3f,#3b,#13,#37,#3b,#13
	db #31,#2b,#10,#43,#3b,#13,#43,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#37
	db #3b,#13,#43,#3b,#13,#35,#3b,#13
	db #31,#2b,#10,#41,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#32,#3b,#13
	db #31,#2b,#10,#3e,#3b,#13,#3e,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#32
	db #3b,#13,#3e,#3b,#13,#33,#3b,#13
	db #31,#2b,#10,#3f,#3b,#13,#3f,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#33
	db #3b,#13,#3f,#3b,#13,#ff,#39,#3b
	db #13,#0b,#13,#39,#3b,#13,#45,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#39
	db #3b,#13,#45,#3b,#13,#37,#3b,#13
	db #31,#2b,#10,#43,#3b,#13,#43,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#37
	db #3b,#13,#43,#3b,#13,#34,#3b,#13
	db #31,#2b,#10,#40,#3b,#13,#40,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#34
	db #3b,#13,#34,#3b,#13,#35,#3b,#13
	db #31,#2b,#10,#41,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#39,#3b,#13
	db #31,#2b,#10,#45,#3b,#13,#45,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#39
	db #3b,#13,#45,#3b,#13,#37,#3b,#13
	db #31,#2b,#10,#43,#3b,#13,#43,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#37
	db #3b,#13,#43,#3b,#13,#34,#3b,#13
	db #31,#2b,#10,#40,#3b,#13,#40,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#34
	db #3b,#13,#40,#3b,#13,#35,#3b,#13
	db #31,#2b,#10,#41,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#ff,#35,#3b
	db #13,#0b,#13,#35,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#37,#3b,#13
	db #31,#2b,#10,#43,#3b,#13,#43,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#37
	db #3b,#13,#43,#3b,#13,#35,#3b,#13
	db #31,#2b,#10,#41,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#37,#3b,#13
	db #31,#2b,#10,#43,#3b,#13,#43,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#37
	db #3b,#13,#43,#3b,#13,#35,#3b,#13
	db #31,#2b,#10,#35,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#37,#3b,#13
	db #31,#2b,#10,#43,#3b,#13,#43,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#37
	db #3b,#13,#43,#3b,#13,#35,#3b,#13
	db #31,#2b,#10,#35,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#3b,#3b,#13
	db #31,#2b,#10,#47,#3b,#13,#47,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#3b
	db #3b,#13,#47,#3b,#13,#ff,#46,#5b
	db #60,#46,#5b,#10,#b1,#20,#43,#5b
	db #10,#45,#5b,#10,#43,#5b,#10,#b1
	db #20,#41,#5b,#10,#b1,#20,#40,#5b
	db #10,#41,#5b,#70,#3e,#5b,#10,#b1
	db #20,#3f,#5b,#10,#41,#5b,#10,#41
	db #5b,#10,#43,#5b,#50,#45,#5b,#10
	db #46,#5b,#50,#46,#5b,#10,#b1,#20
	db #46,#5b,#10,#48,#5b,#10,#45,#5b
	db #10,#b1,#20,#43,#5b,#10,#b1,#20
	db #40,#5b,#10,#41,#5b,#90,#43,#5b
	db #40,#02,#12,#01,#02,#12,#01,#02
	db #12,#01,#02,#12,#01,#ff,#48,#5b
	db #60,#48,#5b,#10,#b1,#20,#45,#5b
	db #10,#47,#5b,#10,#45,#5b,#10,#b1
	db #20,#43,#5b,#10,#b1,#20,#42,#5b
	db #10,#43,#5b,#70,#40,#5b,#10,#b1
	db #20,#41,#5b,#10,#43,#5b,#10,#43
	db #5b,#10,#45,#5b,#50,#47,#5b,#10
	db #48,#5b,#50,#48,#5b,#10,#b1,#20
	db #48,#5b,#10,#4a,#5b,#10,#47,#5b
	db #10,#b1,#20,#45,#5b,#10,#b1,#20
	db #42,#5b,#10,#43,#5b,#90,#45,#5b
	db #40,#02,#12,#01,#02,#12,#01,#02
	db #12,#01,#02,#12,#01,#ff,#3c,#5b
	db #30,#40,#5b,#30,#41,#5b,#20,#41
	db #5b,#10,#43,#5b,#20,#45,#5b,#10
	db #47,#5b,#10,#43,#5b,#20,#43,#5b
	db #10,#45,#5b,#60,#43,#5b,#20,#47
	db #5b,#60,#47,#5b,#20,#48,#5b,#40
	db #47,#5b,#10,#b1,#20,#45,#5b,#10
	db #b1,#20,#45,#5b,#10,#47,#5b,#30
	db #43,#5b,#40,#41,#5b,#40,#45,#5b
	db #40,#45,#5b,#10,#47,#5b,#10,#44
	db #5b,#20,#43,#5b,#10,#45,#5b,#10
	db #47,#5b,#20,#ff,#3c,#5b,#30,#40
	db #5b,#30,#41,#5b,#20,#41,#5b,#10
	db #43,#5b,#20,#45,#5b,#10,#47,#5b
	db #10,#43,#5b,#20,#43,#5b,#10,#45
	db #5b,#60,#43,#5b,#20,#47,#5b,#60
	db #47,#5b,#20,#48,#5b,#40,#47,#5b
	db #10,#b1,#20,#45,#5b,#10,#b1,#20
	db #45,#5b,#10,#47,#5b,#30,#43,#5b
	db #40,#40,#5b,#10,#41,#5b,#30,#40
	db #5b,#10,#b1,#20,#3c,#5b,#10,#b1
	db #20,#3c,#5b,#10,#3e,#5b,#30,#02
	db #12,#01,#02,#12,#01,#02,#12,#01
	db #02,#12,#01,#ff
;
.music_info
	db "X-Files - Cheat of Cheat Part (1996)(Mortel)(Epsilon)",0
	db "ST-128 Module",0

	read "music_end.asm"
