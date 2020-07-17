; Music of Vindicator, The - Part 2 (1988)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 04/07/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "VINDICP2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #28ab
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
.real_init_music
;
	ld hl,l2e38
	ld b,#00
	ld (hl),b
	ld hl,l3003
	add hl,bc
	ld a,(hl)
	ld (l298c),a
	inc hl
	ld ix,l28fc
	ld c,#21
	ld a,#03
.l28c2
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,l28c2
	ld (l2c2b),a
	inc a
	ld (l295f),a
	ld (l2e37),a
	ret
.l28fc
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.l291d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.l293e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
.l295f
	db #00
;
.play_music
;
	call l2e88
	ld a,(l2e37)
	and a
	jp z,l29bc
.l296b equ $ + 1
	ld a,#00
	ld (l29b8),a
	ld hl,l295f
	dec (hl)
	jr nz,l2990
	ld b,(hl)
	ld ix,l28fc
	call l2b3a
	ld ix,l291d
	call l2b3a
	ld ix,l293e
	call l2b3a
.l298c equ $ + 1
	ld a,#01
	ld (l295f),a
.l2990
	ld ix,l28fc
	call l2bf8
	ld (l2d08),hl
	ld (l2d10),a
	ld ix,l291d
	call l2bf8
	ld (l2d0a),hl
	ld (l2d11),a
	ld ix,l293e
	call l2bf8
	ld (l2d0c),hl
	ld (l2d12),a
.l29b8 equ $ + 1
	ld a,#00
	ld (l2d0e),a
.l29bc
	ld a,(l2e38)
	and a
	jr z,l29ec
	ld hl,(l2d15)
	ld (l2d08),hl
	ld hl,(l2d19)
	ld (l2d0c),hl
	ld a,(l2d1b)
	ld (l2d0e),a
	ld a,(l2d0f)
.l29d7
	or #2d
	ld hl,l2d1c
	and (hl)
	ld (l2d0f),a
	ld a,(l2d1d)
	ld (l2d10),a
	ld a,(l2d1f)
	ld (l2d12),a
.l29ec
	ld a,(l2e37)
	ld hl,l2e38
	or (hl)
	ret z
	ld hl,l2d13
	ld d,#0b
.l29f9
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l29f9
	ret
.l2a1a
	ld de,#0d00
.l2a1d
	call l2a27
	dec d
	jp p,l2a1d
	ld de,#073f
.l2a27
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	ret
;
.stop_music
.l2a42
;
	xor a
	ld (l2e37),a
	ld (l2e38),a
	call l2a1a
	xor a
	ld (l2d10),a
	ld (l2d11),a
	ld (l2d12),a
	ret
	db #c9
	db #b1
	db #b5
	db #ba
	db #78
	db #a7
	db #a2
	db #0f
	db #91
	db #89
	db #4e
	db #38
	db #60
	db #b6
	db #04
	db #c3
	db #c8
	db #cd
	pop hl
	jp l2a42
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l2a8f
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l2a8f
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l2b48
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,l2cd4
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l2b48
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,l2cd4
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l2b48
	ld hl,l2cd4
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l2b48
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l2b48
	ld a,(de)
	inc de
	ld (l2c2b),a
	jr l2b48
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l2b48
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l2b48
	ld (ix+#1d),b
	jr l2b48
	ld (ix+#1d),#40
	jr l2b48
	ld (ix+#1d),#c0
	jr l2b48
	set 1,(ix+#00)
	jr l2b48
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l2b77
	res 5,(ix+#00)
	jr l2b77
	ld (ix+#1f),#ff
	jr l2b48
	ld (ix+#1f),b
	jr l2b48
.l2b3a
	dec (ix+#10)
	jr nz,l2b92
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l2b48
	ld a,(de)
	inc de
	and a
	jp m,l2ba3
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l2b5a
	ld (l296b),a
.l2b5a
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
	set 5,(ix+#00)
.l2b77
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	ret z
	ld a,(l2e38)
	and a
	ret nz
	ld (ix+#1f),#ff
	ret
.l2b92
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l2b9f
	inc (ix+#12)
	ret
.l2b9f
	dec (ix+#12)
	ret
.l2ba3
	cp #b8
	jr c,l2bf0
	add #20
	jr c,l2bd1
	add #10
	jr c,l2bd8
	add #10
	jr nc,l2bc9
	ld c,a
	ld hl,l2d21
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l2b48
.l2bc9
	add #09
	ld (l298c),a
	jp l2b48
.l2bd1
	inc a
	ld (ix+#11),a
	jp l2b48
.l2bd8
	ld hl,l2d60
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp l2b48
.l2bf0
	ld hl,l29d7
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l2bf8
	ld c,(ix+#00)
	bit 5,c
	jr z,l2c2a
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l2c24
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l2c24
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l2c24
	ld a,(ix+#18)
	ld (ix+#13),a
.l2c2b equ $ + 1
.l2c2a
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l2c44
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l2c44
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lff22
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l2ca5
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l2c6e
	bit 0,c
	jr nz,l2c8c
.l2c6e
	bit 5,l
	jr nz,l2c7e
	sub (ix+#1b)
	jr nc,l2c89
	set 5,(ix+#1d)
	sub a
	jr l2c89
.l2c7e
	add (ix+#1b)
	cp b
	jr c,l2c89
	res 5,(ix+#1d)
	ld a,b
.l2c89
	ld (ix+#1c),a
.l2c8c
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l2c97
	dec d
.l2c97
	add #a0
	jr c,l2ca3
.l2c9b
	sla e
	rl d
	add #18
	jr nc,l2c9b
.l2ca3
	add hl,de
	ex de,hl
.l2ca5
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l2cd0
	ld b,(ix+#0e)
	djnz l2ccd
	ld c,(ix+#0d)
	bit 7,c
	jr z,l2cbc
	dec b
.l2cbc
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l2cd0
.l2ccd
	ld (ix+#0e),b
.l2cd0
	cpl
	and #03
.l2cd4 equ $ + 1
	ld a,#38
	jr nz,l2ce1
	ld a,(l296b)
	xor #08
	ld (l29b8),a
	ld a,#07
.l2ce1
	ld hl,l2d0f
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l2d03
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#20)
	and #38
	cpl
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l29b8),a
.l2d03
	ex de,hl
	ld a,(ix+#13)
	ret
.l2d0f equ $ + 7
.l2d0e equ $ + 6
.l2d0c equ $ + 4
.l2d0a equ $ + 2
.l2d08
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l2d16 equ $ + 6
.l2d15 equ $ + 5
.l2d13 equ $ + 3
.l2d12 equ $ + 2
.l2d11 equ $ + 1
.l2d10
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l2d1f equ $ + 7
.l2d1d equ $ + 5
.l2d1c equ $ + 4
.l2d1b equ $ + 3
.l2d19 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
.l2d21 equ $ + 1
	db #00,#0e,#0e,#13,#16,#18,#19,#1c
	db #1d,#1f,#22,#24,#26,#29,#2f,#80
	db #0c,#00,#00,#18,#00,#80,#0c,#00
	db #08,#80,#18,#0c,#80,#00,#8c,#18
	db #00,#0c,#80,#00,#83,#00,#03,#87
	db #00,#03,#07,#8c,#00,#05,#8c,#00
	db #04,#8c,#0c,#00,#00,#80,#18,#00
	db #00,#00,#00,#00,#80,#04,#07,#8c
.l2d60
	dw l2d77,l2d87,l2d8d,l2da0
	dw l2dc2,l2dcc,l2df6,l2dfb
	dw l2e0f,l2e24,l2e27
.l2d77 equ $ + 1
	db #01,#0f,#0d,#0c,#0b,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#87
.l2d8d equ $ + 7
.l2d87 equ $ + 1
	db #04,#0f,#0a,#08,#06,#87,#02,#0e
	db #0e,#0f,#0e,#0c,#0b,#03,#08,#08
	db #08,#08,#08,#05,#04,#03,#02,#01
.l2da0 equ $ + 2
	db #87,#01,#0f,#0e,#0d,#0c,#0b,#0d
	db #0c,#0b,#0a,#09,#09,#08,#07,#07
	db #06,#07,#06,#05,#04,#04,#04,#04
	db #04,#03,#04,#04,#03,#02,#01,#02
.l2dc2 equ $ + 4
	db #01,#00,#87,#09,#0f,#0e,#0d,#0c
.l2dcc equ $ + 6
	db #0b,#08,#09,#0a,#87,#00,#0f,#0e
	db #0d,#0c,#0b,#0d,#0c,#0b,#0a,#09
	db #0b,#0a,#09,#08,#07,#09,#08,#07
	db #06,#05,#07,#06,#05,#04,#03,#05
	db #04,#03,#02,#01,#04,#03,#02,#01
	db #03,#02,#01,#02,#01,#00,#87,#02
.l2dfb equ $ + 5
.l2df6
	db #0b,#0c,#0d,#87,#01,#0f,#0e,#0e
	db #0e,#0d,#0b,#0a,#06,#09,#08,#07
	db #08,#09,#08,#07,#06,#05,#04,#87
.l2e0f equ $ + 1
	db #02,#0f,#0d,#0a,#09,#09,#08,#09
	db #07,#09,#07,#09,#07,#09,#07,#09
.l2e24 equ $ + 6
	db #07,#09,#07,#09,#87,#00,#0c,#87
.l2e27 equ $ + 1
	db #02,#0f,#0d,#0c,#0b,#0a,#09,#0b
	db #0a,#06,#05,#04,#03,#02,#01,#00
.l2e38 equ $ + 2
.music_end equ $ + 1
.l2e37 equ $ + 1
	db #87,#00,#00
	ld hl,l2e38
	ld (hl),#00
	ld hl,l2f26
	add a
	add l
	ld l,a
	jr nc,l2e47
	inc h
.l2e47
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld bc,#0011
	ld hl,l2fd1
	ex de,hl
	ldir
	ld a,(l2fd2)
	ld (l2fe2),a
	ld hl,(l2fd3)
	ld (l2d15),hl
	ld de,(l2fd5)
	ld (l2d19),de
	ld a,l
	ld (l2d1b),a
	ld a,(l2fd8)
	ld (l2d1c),a
	ld a,(l2fd7)
	ld e,a
	ld d,#0c
	call l2a27
	ld a,(l2fe1)
	ld e,a
	ld d,#0d
	call l2a27
	ld hl,l2e38
	inc (hl)
	ret
.l2e88
	call l2fe4
	ld a,(l2e38)
	and a
	ret z
	ld a,(l2fd1)
	and a
	jr nz,l2e9c
	ld (l2e38),a
	jp l2a1a
.l2e9c
	dec a
	ld (l2fd1),a
	ld a,(l2fe2)
	and a
	jr nz,l2ed5
	ld a,(l2fdf)
	and a
	ret z
	dec a
	ld (l2fdf),a
	ld a,(l2fd2)
	ld (l2fe2),a
	ld a,(l2fe0)
	and a
	jr z,l2ebe
	ld a,(l2fff)
.l2ebe
	ld b,a
	ld a,(l2fd3)
	add b
	ld (l2d15),a
	ld a,(l2fd4)
	add b
	and #0f
	ld (l2d16),a
	ld hl,(l2fd5)
	ld (l2d19),hl
.l2ed5
	ld hl,l2fe2
	dec (hl)
	ld a,(l2fdd)
	and a
	jr z,l2efc
	jp p,l2eef
	ld hl,(l2d15)
	ld de,(l2fd9)
	add hl,de
	ld (l2d15),hl
	jr l2efc
.l2eef
	ld hl,(l2d15)
	ld de,(l2fd9)
	and a
	sbc hl,de
	ld (l2d15),hl
.l2efc
	ld a,(l2fde)
	and a
	jr z,l2f1f
	jp p,l2f12
	ld hl,(l2d19)
	ld de,(l2fdb)
	add hl,de
	ld (l2d19),hl
	jr l2f1f
.l2f12
	ld hl,(l2d19)
	ld de,(l2fdb)
	and a
	sbc hl,de
	ld (l2d19),hl
.l2f1f
	ld a,(l2d15)
	ld (l2d1b),a
	ret
.l2f26
	dw l2f38,l2f49,l2f5a,l2f6b
	dw l2f7c,l2f8d,l2f9e,l2faf
	dw l2fc0
.l2f38
	db #05,#ff,#09,#00,#02,#00,#0a,#f3
	db #08,#04,#00,#04,#01,#01,#ff,#00
.l2f49 equ $ + 1
	db #00,#03,#46,#00,#03,#80,#03,#14
	db #d3,#05,#00,#02,#00,#ff,#ff,#0a
.l2f5a equ $ + 2
	db #00,#00,#07,#03,#04,#00,#0b,#20
	db #0f,#fa,#10,#00,#08,#04,#ff,#01
.l2f6b equ $ + 3
	db #0a,#00,#00,#0f,#ff,#10,#00,#12
	db #00,#19,#fa,#01,#00,#01,#00,#ff
.l2f7c equ $ + 4
	db #ff,#00,#00,#00,#3c,#07,#c4,#00
	db #8b,#01,#19,#f2,#78,#00,#78,#00
.l2f8d equ $ + 5
	db #ff,#ff,#0a,#00,#00,#3c,#0a,#14
	db #00,#0b,#07,#19,#f2,#40,#00,#03
.l2f9e equ $ + 6
	db #00,#ff,#ff,#0a,#00,#00,#3c,#ff
	db #00,#02,#00,#02,#32,#fa,#08,#00
.l2faf equ $ + 7
	db #09,#00,#01,#01,#02,#00,#00,#02
	db #ff,#28,#00,#0b,#00,#32,#fa,#02
	db #00,#02,#00,#ff,#ff,#0a,#00,#00
.l2fc0
	db #05,#ff,#00,#01,#03,#01,#32,#fa
	db #24,#00,#29,#00,#ff,#ff,#01,#00
.l2fd7 equ $ + 7
.l2fd5 equ $ + 5
.l2fd4 equ $ + 4
.l2fd3 equ $ + 3
.l2fd2 equ $ + 2
.l2fd1 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2fdf equ $ + 7
.l2fde equ $ + 6
.l2fdd equ $ + 5
.l2fdb equ $ + 3
.l2fd9 equ $ + 1
.l2fd8
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2fe2 equ $ + 2
.l2fe1 equ $ + 1
.l2fe0
	db #00,#00,#00,#00
.l2fe4
	ld a,(l2fff)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l3002
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l3002 equ $ + 3
.l2fff
	db #ff,#80,#1b,#34
.l3003
	db #01
	dw l301f,l3023,l3027
	db #01
	dw l302d,l3031,l3037
	db #03
	dw l303b,l303f,l304b
	db #01
	dw l304f,l307b,l30bb
.l3023 equ $ + 4
.l301f
	dw l314b,#0000,l316e,#0000
.l302d equ $ + 6
.l3027
	dw l3191,l31b4,#0000,l31d9
.l3031 equ $ + 2
	dw #0000,l31f7,l31d9,#0000
.l303b equ $ + 4
.l3037
	dw l31fa,#0000,l3218,#0000
.l303f
	dw l3142,l3142,l3142,l3142
.l304b equ $ + 4
	dw l3227,#0000,l323c,#0000
.l304f
	dw l324e,l324e,l324e,l32a9
	dw l324e,l324e,l32a9,l32c7
	dw l32c7,l32a9,l32c7,l32c7
	dw l3302,l3302,l3146,l333c
	dw l333c,l333c,l3375,l3375
.l307b equ $ + 4
	dw l3146,#0000,l3384,l3384
	dw l3384,l33df,l33df,l33f0
	dw l33f0,l33df,l33df,l3421
	dw l3421,l3421,l3421,l33df
	dw l33df,l3421,l3421,l3421
	dw l3421,l3440,l3440,l3146
	dw l347b,l349b,l347b,l349b
	dw l347b,l349b,l34bb,l34bb
.l30bb equ $ + 4
	dw l34c7,#0000,l34d0,l34d0
	dw l34d0,l34d0,l34d0,l34d0
	dw l34e0,l34e0,l3503,l3522
	dw l3541,l3541,l3146,l3146
	dw l34e0,l34e0,l3503,l3522
	dw l3541,l3541,l34e0,l34e0
	dw l3503,l3522,l3541,l3541
	dw l3146,l3146,l34e0,l34e0
	dw l3503,l3522,l34e0,l34e0
	dw l3503,l3522,l3421,l34e0
	dw l34e0,l3503,l3522,l34e0
	dw l34e0,l3503,l3522,l3560
	dw l3560,l3560,l3560,l3146
	dw l357f,l357f,l3596,l3596
	dw l357f,l357f,l3596,l3596
	dw l357f,l357f,l3596,l3596
	dw l357f,l357f,l3146,#0000
.l3146 equ $ + 7
.l3142 equ $ + 3
	db #ff,#80,#87,#ff,#80,#80,#87,#ff
.l314b equ $ + 4
	db #80,#80,#80,#87,#8a,#81,#c4,#90
	db #d0,#eb,#39,#32,#37,#e5,#32,#eb
	db #35,#e5,#34,#eb,#32,#34,#30,#eb
	db #39,#32,#37,#e5,#32,#eb,#35,#e5
.l316e equ $ + 7
	db #34,#eb,#32,#37,#39,#30,#8e,#8a
	db #81,#c4,#90,#d0,#eb,#45,#3e,#43
	db #e5,#3e,#eb,#41,#e5,#40,#eb,#3e
	db #40,#3c,#eb,#45,#3e,#43,#e5,#3e
	db #eb,#41,#e5,#40,#eb,#3e,#43,#45
.l3191 equ $ + 2
	db #34,#8e,#8a,#88,#01,#01,#82,#c0
	db #90,#d1,#e5,#1a,#1a,#c3,#eb,#32
	db #d5,#8b,#3f,#d1,#8a,#c0,#1a,#c3
	db #32,#d1,#c0,#1a,#d5,#c3,#8b,#27
.l31b4 equ $ + 5
	db #d1,#8a,#c0,#1a,#87,#8a,#88,#01
	db #01,#82,#c0,#90,#d1,#e5,#18,#18
	db #c3,#eb,#30,#d5,#8b,#3f,#d1,#8a
	db #c0,#18,#c3,#30,#d1,#c0,#18,#d5
	db #c3,#8b,#27,#d1,#8a,#c0,#18,#eb
.l31d9 equ $ + 2
	db #80,#8e,#8a,#81,#c0,#88,#01,#02
	db #82,#90,#d2,#e5,#39,#37,#ef,#36
	db #f1,#34,#eb,#32,#f1,#30,#32,#ff
	db #36,#e3,#80,#ff,#32,#80,#80,#8e
.l31fa equ $ + 3
.l31f7
	db #e2,#80,#87,#8a,#81,#c0,#88,#01
	db #01,#82,#90,#d1,#e5,#21,#1f,#ef
	db #1e,#f1,#1c,#eb,#1a,#f1,#18,#1a
	db #ff,#1e,#e1,#80,#ff,#1a,#80,#80
.l3218 equ $ + 1
	db #8e,#8a,#81,#c4,#90,#e1,#d0,#25
	db #2c,#31,#2a,#2c,#31,#2a,#2c,#87
.l3227
	db #8a,#88,#01,#01,#82,#c0,#d4,#ff
	db #31,#8f,#81,#c6,#31,#8f,#c7,#31
.l323c equ $ + 5
	db #8f,#c8,#31,#8f,#87,#8a,#88,#01
	db #02,#82,#c0,#90,#d6,#ff,#25,#8f
.l324e equ $ + 7
	db #2d,#8f,#2a,#8f,#2c,#8f,#87,#c9
	db #8a,#81,#d1,#90,#f7,#2b,#eb,#2b
	db #f7,#2b,#e5,#2b,#eb,#2b,#e5,#2b
	db #eb,#2b,#f7,#2b,#eb,#2b,#f7,#2b
	db #e5,#2b,#eb,#2b,#e5,#2b,#eb,#2b
	db #f7,#2e,#eb,#2e,#f7,#2e,#e5,#2e
	db #eb,#2e,#e5,#2e,#eb,#2e,#ca,#f7
	db #29,#eb,#29,#f7,#29,#e5,#29,#eb
	db #29,#e5,#29,#eb,#29,#f7,#2b,#eb
	db #2b,#f7,#2b,#e5,#2b,#eb,#2b,#e5
	db #2b,#eb,#2b,#f7,#2b,#eb,#2b,#f7
	db #2b,#e5,#2b,#eb,#2b,#e5,#2b,#eb
.l32a9 equ $ + 2
	db #2b,#87,#c9,#f7,#2b,#eb,#2b,#f7
	db #2b,#e5,#2b,#eb,#2b,#e5,#2b,#eb
	db #2b,#f7,#2b,#eb,#2b,#f7,#2b,#e5
	db #2b,#eb,#2b,#e5,#2b,#eb,#2b,#87
.l32c7
	db #c9,#f7,#2b,#eb,#2b,#f7,#2b,#e5
	db #2b,#eb,#2b,#e5,#2b,#eb,#2b,#f7
	db #2b,#eb,#2b,#f7,#2b,#e5,#2b,#eb
	db #2b,#e5,#2b,#eb,#2b,#f7,#2e,#eb
	db #2e,#f7,#2e,#e5,#2e,#eb,#2e,#e5
	db #2e,#eb,#2e,#ca,#f7,#29,#eb,#29
	db #f7,#29,#e5,#29,#eb,#29,#e5,#29
.l3302 equ $ + 3
	db #eb,#29,#87,#c9,#f7,#2b,#eb,#2b
	db #f7,#2b,#e5,#2b,#eb,#2b,#e5,#2b
	db #eb,#2b,#f7,#2b,#eb,#2b,#f7,#2b
	db #e5,#2b,#eb,#2b,#e5,#2b,#eb,#2b
	db #f7,#2e,#eb,#2e,#f7,#2e,#e5,#2e
	db #eb,#2e,#e5,#2e,#eb,#2e,#f7,#30
	db #eb,#30,#f7,#30,#e5,#30,#eb,#30
.l333c equ $ + 5
	db #e5,#30,#eb,#30,#87,#f7,#37,#eb
	db #37,#f7,#37,#e5,#37,#eb,#37,#e5
	db #37,#eb,#37,#f7,#37,#eb,#37,#f7
	db #37,#e5,#37,#eb,#37,#e5,#37,#eb
	db #37,#f7,#35,#eb,#35,#f7,#35,#e5
	db #35,#eb,#35,#e5,#35,#eb,#35,#f7
	db #35,#eb,#35,#f7,#35,#e5,#35,#eb
.l3375 equ $ + 6
	db #35,#e5,#35,#eb,#35,#87,#f7,#37
	db #eb,#37,#f7,#37,#e5,#37,#eb,#37
.l3384 equ $ + 5
	db #e5,#37,#eb,#37,#87,#c9,#8a,#81
	db #d1,#90,#f7,#30,#eb,#30,#f7,#30
	db #e5,#30,#eb,#30,#e5,#30,#eb,#30
	db #f7,#30,#eb,#30,#f7,#30,#e5,#30
	db #eb,#30,#e5,#30,#eb,#30,#f7,#35
	db #eb,#35,#f7,#35,#e5,#35,#eb,#35
	db #e5,#35,#eb,#35,#ca,#f7,#30,#eb
	db #30,#f7,#30,#e5,#30,#eb,#30,#e5
	db #30,#eb,#30,#f7,#30,#eb,#30,#f7
	db #30,#e5,#30,#eb,#30,#e5,#30,#eb
	db #30,#f7,#30,#eb,#30,#f7,#30,#e5
	db #30,#eb,#30,#e5,#30,#eb,#30,#87
.l33df
	db #c9,#d1,#f7,#30,#eb,#30,#f7,#30
	db #e5,#30,#eb,#30,#e5,#30,#eb,#30
.l33f0 equ $ + 1
	db #87,#cb,#d7,#f7,#34,#32,#eb,#34
	db #ff,#30,#e3,#8f,#f7,#34,#eb,#34
	db #f7,#35,#ff,#37,#e3,#8f,#f7,#33
	db #eb,#33,#f7,#2e,#eb,#30,#f7,#33
	db #35,#eb,#39,#37,#e5,#39,#f1,#37
	db #f7,#39,#ff,#37,#8f,#8f,#8f,#8f
.l3421 equ $ + 2
	db #8f,#87,#c4,#da,#eb,#37,#30,#35
	db #e5,#30,#eb,#33,#e5,#32,#eb,#30
	db #32,#2e,#eb,#37,#30,#35,#e5,#30
	db #eb,#33,#e5,#32,#eb,#30,#35,#37
.l3440 equ $ + 1
	db #87,#c9,#d1,#f7,#32,#eb,#32,#f7
	db #32,#e5,#32,#eb,#32,#e5,#32,#eb
	db #32,#f7,#32,#eb,#32,#f7,#32,#e5
	db #32,#eb,#32,#e5,#32,#eb,#32,#f7
	db #35,#eb,#35,#f7,#35,#e5,#35,#eb
	db #35,#e5,#35,#eb,#35,#f7,#37,#eb
	db #37,#f7,#37,#e5,#37,#eb,#35,#e5
.l347b equ $ + 4
	db #37,#eb,#37,#87,#81,#c0,#d8,#91
	db #eb,#37,#38,#37,#88,#01,#01,#82
	db #38,#8f,#81,#30,#33,#35,#37,#38
	db #37,#88,#01,#01,#82,#35,#8f,#81
.l349b equ $ + 4
	db #30,#33,#30,#87,#81,#c0,#d8,#91
	db #eb,#35,#36,#35,#88,#01,#01,#82
	db #36,#8f,#81,#2e,#31,#33,#35,#36
	db #35,#88,#01,#01,#82,#33,#8f,#81
.l34bb equ $ + 4
	db #2e,#31,#2e,#87,#d1,#ff,#3c,#e3
	db #8f,#ff,#3c,#e3,#8f,#f7,#3c,#87
.l34c7
	db #88,#01,#01,#82,#ff,#3c,#8f,#8f
	db #87
.l34d0
	db #8a,#88,#01,#01,#83,#c0,#90,#d9
	db #ff,#18,#8f,#8f,#8f,#8f,#8f,#87
.l34e0
	db #8a,#88,#01,#01,#82,#c0,#90,#d1
	db #e5,#18,#18,#c3,#eb,#30,#d5,#8b
	db #3f,#d1,#8a,#c0,#18,#c3,#30,#d1
	db #c0,#18,#d5,#c3,#8b,#27,#d1,#8a
.l3503 equ $ + 3
	db #c0,#18,#87,#8a,#c0,#90,#d1,#e5
	db #1b,#1b,#c3,#eb,#33,#d5,#8b,#3f
	db #d1,#8a,#c0,#1b,#c3,#33,#d1,#c0
	db #1b,#d5,#c3,#8b,#27,#d1,#8a,#c0
.l3522 equ $ + 2
	db #1b,#87,#8a,#c0,#90,#d1,#e5,#1d
	db #1d,#c3,#eb,#35,#d5,#8b,#3f,#d1
	db #8a,#c0,#1d,#c3,#35,#d1,#c0,#1d
	db #d5,#c3,#8b,#27,#d1,#8a,#c0,#1d
.l3541 equ $ + 1
	db #87,#8a,#c0,#90,#d1,#e5,#1f,#1f
	db #c3,#eb,#37,#d5,#8b,#3f,#d1,#8a
	db #c0,#1f,#c3,#37,#d1,#c0,#1f,#d5
	db #c3,#8b,#27,#d1,#8a,#c0,#1f,#87
.l3560
	db #c4,#d1,#eb,#43,#3c,#41,#e5,#3c
	db #eb,#3f,#e5,#3e,#eb,#3c,#3e,#3a
	db #eb,#43,#3c,#41,#e5,#3c,#eb,#3f
.l357f equ $ + 7
	db #e5,#3e,#eb,#3c,#41,#43,#87,#8a
	db #c0,#88,#01,#01,#82,#90,#d1,#f7
	db #18,#eb,#18,#24,#f7,#d5,#8b,#3f
.l3596 equ $ + 6
	db #8a,#d1,#eb,#16,#18,#87,#f7,#16
	db #eb,#16,#22,#f7,#d5,#8b,#3f,#8a
	db #d1,#eb,#14,#16,#87
.lff22
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
;
.init_music		; added by Megachur
;
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	jp real_init_music
;
.music_info
	db "The Vindicator - Part 2 (1988)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
