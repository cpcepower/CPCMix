; Music of Solomon's Key 3 - End (1994)(Public Domain)(Eliot)(ST-128 Module)
; Ripped by Megachur the 09/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOLOMK3E.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #78f7

	read "music_header.asm"

	jr l78fb
	jr l790a
.l78fb
	call l792e
	ld hl,l791b
	ld de,l7913
	ld bc,l81ff
	jp #bcd7
.l790a
	ld hl,l791b
	call #bcdd
	jp l79a6
.l7913
	push ix
	call l79c2
	pop ix
	ret
.l791b
	db #00,#00,#00,#00,#00,#81,#13,#79
	db #ff,#00
	jp l792e
	jp l79c2
	jp l79a6
;
.init_music
.l792e
;
	xor a
	ld hl,l7ed9
	call l799f
	ld hl,l7f07
	call l799f
	ld hl,l7f35
	call l799f
	ld ix,l7ed5
	ld iy,l7f5f
	ld de,#002e
	ld b,#03
.l794e
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
	djnz l794e
	ld hl,l7dee
	ld (hl),#05
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l7dea),hl
	ld (l7dec),hl
	ld a,#0c
	ld c,d
	call l7dca
	ld a,#0d
	ld c,d
	jp l7dca
.l799f
	ld b,#2a
.l79a1
	ld (hl),a
	inc hl
	djnz l79a1
	ret
;
.stop_music
.l79a6
;
	ld a,#07
	ld c,#3f
	call l7dca
	ld a,#08
	ld c,#00
	call l7dca
	ld a,#09
	ld c,#00
	call l7dca
	ld a,#0a
	ld c,#00
	jp l7dca
;
.play_music
.l79c2
;
	ld hl,l7df0
	dec (hl)
	ld ix,l7ed5
	ld bc,l7ee3
	call l7a64
	ld ix,l7f03
	ld bc,l7f11
	call l7a64
	ld ix,l7f31
	ld bc,l7f3f
	call l7a64
	ld hl,l7de9
	ld de,l7df0
	ld b,#06
	call l7a41
	ld b,#07
	call l7a41
	ld b,#0b
	call l7a41
	ld b,#0d
	call l7a41
	ld de,l7df0
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l7ef4
	call l7a1a
	ld hl,l7f22
	call l7a1a
	ld hl,l7f50
.l7a1a
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
	jr nz,l7a2f
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l7a2f
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
.l7a41
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l7dca
.l7a4c
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l7dca
.l7a64
	ld a,(l7df0)
	or a
	jp nz,l7b1c
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l7b1c
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l7a4c
	or a
	jp z,l7b11
	ld r,a
	and #7f
	cp #10
	jr c,l7aec
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l7c64
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
	jr z,l7ac5
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l7ac5
	rrca
	ld c,a
	ld hl,l7f65
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
	jr z,l7ae4
	ld (ix+#1e),b
.l7ae4
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l7b05
.l7aec
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l7df5
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
.l7b05
	ld a,d
	or a
	jr nz,l7b13
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l7b13
.l7b11
	ld a,(hl)
	inc hl
.l7b13
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l7b1c
	ld a,(ix+#17)
	or a
	jr nz,l7b32
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l7b32
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l7b48
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l7b48
	ld a,(ix+#0d)
	or a
	jr z,l7b56
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l7b74
.l7b56
	ld a,(ix+#1a)
	or a
	jp z,l7b7b
	ld c,a
	cp #03
	jr nz,l7b63
	xor a
.l7b63
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l7b74
	ld a,(ix+#18)
	dec c
	jr z,l7b74
	ld a,(ix+#19)
.l7b74
	add (ix+#07)
	ld b,d
	call l7c64
.l7b7b
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l7ba3
	dec (ix+#1b)
	jr nz,l7ba3
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l7bdb
.l7ba3
	ld a,(ix+#29)
	or a
	jr z,l7bdb
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l7bd2
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l7bc9
	ld (ix+#29),#ff
	jr l7bd2
.l7bc9
	cp (ix+#2b)
	jr nz,l7bd2
	ld (ix+#29),#01
.l7bd2
	ld b,d
	or a
	jp p,l7bd8
	dec b
.l7bd8
	ld c,a
	jr l7be6
.l7bdb
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l7be6
	pop hl
	bit 7,(ix+#14)
	jr z,l7bef
	ld h,d
	ld l,d
.l7bef
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l7dca
	ld c,h
	ld a,(ix+#02)
	call l7dca
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7c42
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l7c31
	dec (ix+#09)
	jr nz,l7c31
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l7c29
	xor a
	jr l7c2e
.l7c29
	cp #10
	jr nz,l7c2e
	dec a
.l7c2e
	ld (ix+#1e),a
.l7c31
	ld a,b
	sub (ix+#1e)
	jr nc,l7c38
	xor a
.l7c38
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l7dca
.l7c42
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l7df1)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l7c60
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l7c60
	ld (l7df1),hl
	ret
.l7c64
	ld hl,l7e13
	cp #61
	jr nc,l7c6e
	add a
	ld c,a
	add hl,bc
.l7c6e
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l7c78
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l7d9d
	ld (ix+#1e),a
	jp l7b05
.l7c8a
	dec b
.l7c8b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l7c96
	neg
.l7c96
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
	jp l7b05
.l7cac
	dec b
	jr l7cb0
.l7caf
	inc b
.l7cb0
	call l7d9d
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l7b05
.l7cbf
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
	jp l7d82
.l7cd0
	ld a,(hl)
	inc hl
	or a
	jr z,l7cf2
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
.l7cf2
	ld (ix+#29),a
	jp l7b05
.l7cf8
	dec hl
	ld a,(hl)
	and #0f
	ld (l7df4),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l7df3),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l7b05
.l7d12
	ld a,(hl)
	or a
	jr z,l7d23
	call l7d9f
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l7b05
.l7d23
	ld hl,#0101
	ld (l7def),hl
	jp l7b05
.l7d2c
	call l7d9d
	ld (ix+#1e),a
	jp l7b05
.l7d35
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l7dae
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l7dae
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l7b05
.l7d57
	ld a,(hl)
	inc hl
	ld (l7dee),a
	jp l7b05
.l7d5f
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
	jp l7b05
.l7d7e
	call l7d9d
	add a
.l7d82
	ld b,#00
	ld c,a
	push hl
	ld hl,l7fe5
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l7b05
.l7d9d
	ld a,(hl)
	inc hl
.l7d9f
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
.l7dae
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l7f65
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l7dca
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
.l7de9
	ret
.l7df1 equ $ + 7
.l7df0 equ $ + 6
.l7def equ $ + 5
.l7dee equ $ + 4
.l7dec equ $ + 2
.l7dea
	db #06,#18,#00,#00,#05,#07,#05,#06
.l7df4 equ $ + 2
.l7df3 equ $ + 1
	db #18,#00,#00
.l7df5
	dw l7c78,l7c8b,l7c8a,l7caf
	dw l7cac,l7cbf,l7cd0,l7cf8
	dw l7d12,l7cf8,l7d2c,l7d35
	dw l7d57,l7d5f,l7d7e
.l7e13
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
.l7ed9 equ $ + 4
.l7ed5
	db #08,#00,#01,#08,#a4,#02,#00,#1d
.l7ee3 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#05,#81
	db #e5,#81,#65,#81,#00,#00,#01,#1f
.l7ef4 equ $ + 7
	db #01,#0f,#03,#00,#00,#00,#00,#02
	db #6f,#82,#08,#82,#00,#40,#00,#00
.l7f03 equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l7f07 equ $ + 2
	db #03,#10,#ef,#00,#00,#30,#00,#00
.l7f11 equ $ + 4
	db #00,#00,#00,#00,#85,#81,#c5,#81
	db #65,#81,#00,#00,#01,#1f,#00,#00
.l7f22 equ $ + 5
	db #00,#00,#00,#00,#01,#02,#d0,#82
	db #0e,#82,#00,#30,#00,#00,#00,#00
.l7f31 equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l7f35
	db #ef,#00,#00,#30,#00,#00,#00,#00
.l7f3f equ $ + 2
	db #00,#00,#05,#81,#c5,#81,#65,#80
	db #00,#00,#01,#1f,#00,#00,#00,#00
.l7f50 equ $ + 3
	db #00,#00,#00,#02,#40,#83,#14,#82
	db #00,#30,#00,#00,#00,#00,#00,#00
.l7f5f equ $ + 2
	db #01,#01,#05,#82,#0b,#82,#11,#82
.l7f65
	db #05,#80,#45,#80,#65,#80,#07,#00
	db #85,#80,#c5,#80,#e5,#80,#1a,#00
	db #05,#81,#45,#81,#65,#81,#00,#00
	db #85,#81,#c5,#81,#65,#81,#00,#00
	db #05,#81,#e5,#81,#65,#81,#00,#00
	db #6e,#66,#40,#86,#40,#86,#d1,#1f
	db #6e,#66,#40,#86,#40,#86,#d1,#1f
	db #7d,#ae,#5d,#af,#dd,#ae,#00,#00
	db #6e,#66,#40,#86,#40,#86,#d1,#1f
	db #6e,#66,#40,#86,#40,#86,#d1,#1f
	db #6e,#66,#40,#86,#40,#86,#d1,#1f
	db #40,#86,#40,#86,#40,#86,#d1,#1f
	db #40,#86,#40,#86,#41,#86,#d2,#1f
	db #41,#86,#41,#86,#41,#86,#d2,#1f
	db #41,#86,#ef,#66,#6f,#67,#80,#01
	db #6f,#68,#ef,#68,#6f,#69,#00,#04
.l7fe5
	db #6f,#66,#6f,#66,#6f,#66,#6f,#66
	db #6f,#66,#6f,#66,#6f,#66,#6f,#66
	db #6f,#66,#6f,#66,#6f,#66,#6f,#66
	db #6f,#66,#6f,#66,#6f,#66,#6f,#66
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0f,#0e,#0e,#0d,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #0d,#0d,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#07,#05,#03
	db #01,#00,#00,#00,#00,#00,#00,#00
.l81ff equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#17,#82,#80,#05,#82,#00,#79
	db #82,#80,#0b,#82,#00,#da,#82,#80
	db #11,#82,#28,#4e,#1f,#02,#34,#40
	db #02,#28,#40,#02,#34,#40,#02,#28
	db #40,#02,#34,#40,#02,#28,#40,#02
	db #34,#40,#02,#28,#40,#02,#34,#40
	db #02,#28,#40,#02,#34,#40,#02,#28
	db #40,#02,#34,#40,#02,#28,#40,#02
	db #34,#40,#02,#2f,#40,#02,#3b,#40
	db #02,#2f,#40,#02,#3b,#40,#02,#2f
	db #40,#02,#3b,#40,#02,#2f,#40,#02
	db #3b,#40,#02,#2d,#40,#02,#39,#40
	db #02,#2d,#40,#02,#39,#40,#02,#2d
	db #40,#02,#39,#40,#02,#2d,#40,#02
	db #39,#40,#02,#ff,#3d,#3b,#21,#3d
	db #30,#02,#3d,#30,#02,#3d,#30,#02
	db #3d,#30,#02,#3d,#30,#02,#3d,#30
	db #02,#3d,#30,#02,#3d,#30,#02,#3d
	db #30,#02,#3d,#30,#02,#3d,#30,#02
	db #3d,#30,#02,#3d,#30,#02,#3d,#30
	db #02,#3d,#30,#02,#42,#30,#02,#42
	db #30,#02,#42,#30,#02,#42,#30,#02
	db #42,#30,#02,#42,#30,#02,#42,#30
	db #02,#42,#30,#02,#40,#30,#02,#40
	db #30,#02,#40,#30,#02,#40,#30,#02
	db #40,#30,#02,#40,#30,#02,#40,#30
	db #02,#40,#30,#02,#ff,#40,#3c,#20
	db #02,#44,#30,#02,#45,#3c,#21,#02
	db #46,#30,#02,#40,#3c,#20,#02,#44
	db #30,#02,#45,#3c,#21,#02,#46,#30
	db #02,#40,#3c,#20,#02,#44,#30,#02
	db #45,#3c,#21,#02,#46,#30,#02,#40
	db #3c,#20,#02,#44,#30,#02,#45,#3c
	db #21,#02,#46,#30,#02,#40,#3c,#20
	db #02,#45,#30,#02,#46,#3c,#21,#02
	db #49,#30,#02,#40,#3c,#20,#02,#45
	db #30,#02,#46,#3c,#21,#02,#49,#30
	db #02,#40,#3c,#20,#02,#45,#30,#02
	db #46,#3c,#21,#02,#49,#30,#02,#40
	db #3c,#20,#02,#45,#30,#02,#46,#3c
	db #21,#02,#49,#30,#02,#ff,#00,#17
	db #82,#80,#05,#82,#00,#79,#82,#80
	db #0b,#82,#00,#da,#82,#80,#11,#82
	db #28,#4e,#1f,#02,#34,#40,#02,#28
	db #40,#02,#34,#40,#02,#28,#40,#fd
	db #06,#1a,#82,#fd,#06,#1a,#82,#fd
	db #16,#1a,#82,#09,#2f,#40,#02,#3b
	db #40,#02,#2f,#40,#02,#3b,#fd,#06
	db #46,#82,#fd,#08,#46,#82,#09,#2d
	db #40,#02,#39,#40,#02,#2d,#40,#02
	db #39,#fd,#06,#5e,#82,#fd,#08,#5e
	db #82,#03,#ff,#3d,#3b,#21,#fd,#2d
	db #98,#78,#06,#42,#30,#02,#42,#30
	db #02,#42,#fd,#06,#a7,#82,#fd,#0b
	db #a7,#82,#06,#40,#30,#02,#40,#30
	db #02,#40,#fd,#06,#bf,#82,#fd,#0b
	db #bf,#82,#0e,#ff,#40,#3c,#20,#02
	db #44,#30,#02,#45,#3c,#21,#02,#46
	db #30,#02,#fd,#0d,#da,#82,#00,#02
	db #fd,#0e,#da,#82,#fd,#12,#da,#82
	db #07,#45,#30,#02,#46,#3c,#21,#02
	db #49,#fd,#0d,#10,#83,#00,#49,#fd
	db #0e,#10,#83,#fd,#10,#10,#83,#01
	db #ff
;
.music_info
	db "Solomon's Key 3 - End (1994)(Public Domain)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"
