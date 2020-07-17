; Music of Tree Issue 1 - Part 3-2 (1999)(Brothers)(FG Brain)(ST-128 Module)
; Ripped by Megachur the 08/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TREEI132.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #4cd5

	read "music_header.asm"

	jp l4cde
	jp l4d72
	jp l4d56
;
.init_music
.l4cde
;
	xor a
	ld hl,l5289
	call l4d4f
	ld hl,l52b7
	call l4d4f
	ld hl,l52e5
	call l4d4f
	ld ix,l5285
	ld iy,l530f
	ld de,#002e
	ld b,#03
.l4cfe
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
	djnz l4cfe
	ld hl,l519e
	ld (hl),#07
	inc hl
	ld (hl),#20
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l519a),hl
	ld (l519c),hl
	ld a,#0c
	ld c,d
	call l517a
	ld a,#0d
	ld c,d
	jp l517a
.l4d4f
	ld b,#2a
.l4d51
	ld (hl),a
	inc hl
	djnz l4d51
	ret
;
.stop_music
.l4d56
;
	ld a,#07
	ld c,#3f
	call l517a
	ld a,#08
	ld c,#00
	call l517a
	ld a,#09
	ld c,#00
	call l517a
	ld a,#0a
	ld c,#00
	jp l517a
;
.play_music
.l4d72
;
	ld hl,l51a0
	dec (hl)
	ld ix,l5285
	ld bc,l5293
	call l4e14
	ld ix,l52b3
	ld bc,l52c1
	call l4e14
	ld ix,l52e1
	ld bc,l52ef
	call l4e14
	ld hl,l5199
	ld de,l51a0
	ld b,#06
	call l4df1
	ld b,#07
	call l4df1
	ld b,#0b
	call l4df1
	ld b,#0d
	call l4df1
	ld de,l51a0
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l52a4
	call l4dca
	ld hl,l52d2
	call l4dca
	ld hl,l5300
.l4dca
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
	jr nz,l4ddf
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l4ddf
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
.l4df1
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l517a
.l4dfc
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l517a
.l4e14
	ld a,(l51a0)
	or a
	jp nz,l4ecc
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l4ecc
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4dfc
	or a
	jp z,l4ec1
	ld r,a
	and #7f
	cp #10
	jr c,l4e9c
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l5014
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
	jr z,l4e75
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l4e75
	rrca
	ld c,a
	ld hl,l5315
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
	jr z,l4e94
	ld (ix+#1e),b
.l4e94
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l4eb5
.l4e9c
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l51a5
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
.l4eb5
	ld a,d
	or a
	jr nz,l4ec3
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l4ec3
.l4ec1
	ld a,(hl)
	inc hl
.l4ec3
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l4ecc
	ld a,(ix+#17)
	or a
	jr nz,l4ee2
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l4ee2
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4ef8
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4ef8
	ld a,(ix+#0d)
	or a
	jr z,l4f06
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l4f24
.l4f06
	ld a,(ix+#1a)
	or a
	jp z,l4f2b
	ld c,a
	cp #03
	jr nz,l4f13
	xor a
.l4f13
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l4f24
	ld a,(ix+#18)
	dec c
	jr z,l4f24
	ld a,(ix+#19)
.l4f24
	add (ix+#07)
	ld b,d
	call l5014
.l4f2b
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l4f53
	dec (ix+#1b)
	jr nz,l4f53
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l4f8b
.l4f53
	ld a,(ix+#29)
	or a
	jr z,l4f8b
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l4f82
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l4f79
	ld (ix+#29),#ff
	jr l4f82
.l4f79
	cp (ix+#2b)
	jr nz,l4f82
	ld (ix+#29),#01
.l4f82
	ld b,d
	or a
	jp p,l4f88
	dec b
.l4f88
	ld c,a
	jr l4f96
.l4f8b
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l4f96
	pop hl
	bit 7,(ix+#14)
	jr z,l4f9f
	ld h,d
	ld l,d
.l4f9f
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l517a
	ld c,h
	ld a,(ix+#02)
	call l517a
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4ff2
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l4fe1
	dec (ix+#09)
	jr nz,l4fe1
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4fd9
	xor a
	jr l4fde
.l4fd9
	cp #10
	jr nz,l4fde
	dec a
.l4fde
	ld (ix+#1e),a
.l4fe1
	ld a,b
	sub (ix+#1e)
	jr nc,l4fe8
	xor a
.l4fe8
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l517a
.l4ff2
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l51a1)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l5010
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l5010
	ld (l51a1),hl
	ret
.l5014
	ld hl,l51c3
	cp #61
	jr nc,l501e
	add a
	ld c,a
	add hl,bc
.l501e
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l5028
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l514d
	ld (ix+#1e),a
	jp l4eb5
.l503a
	dec b
.l503b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l5046
	neg
.l5046
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
	jp l4eb5
.l505c
	dec b
	jr l5060
.l505f
	inc b
.l5060
	call l514d
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l4eb5
.l506f
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
	jp l5132
.l5080
	ld a,(hl)
	inc hl
	or a
	jr z,l50a2
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
.l50a2
	ld (ix+#29),a
	jp l4eb5
.l50a8
	dec hl
	ld a,(hl)
	and #0f
	ld (l51a4),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l51a3),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l4eb5
.l50c2
	ld a,(hl)
	or a
	jr z,l50d3
	call l514f
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l4eb5
.l50d3
	ld hl,#0101
	ld (l519f),hl
	jp l4eb5
.l50dc
	call l514d
	ld (ix+#1e),a
	jp l4eb5
.l50e5
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l515e
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l515e
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l4eb5
.l5107
	ld a,(hl)
	inc hl
	ld (l519e),a
	jp l4eb5
.l510f
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
	jp l4eb5
.l512e
	call l514d
	add a
.l5132
	ld b,#00
	ld c,a
	push hl
	ld hl,l5395
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l4eb5
.l514d
	ld a,(hl)
	inc hl
.l514f
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
.l515e
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l5315
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
.l517a equ $ + 5
	db #6f,#64,#75,#6c,#65,#f3
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
.l5199
	ret
.l51a1 equ $ + 7
.l51a0 equ $ + 6
.l519f equ $ + 5
.l519e equ $ + 4
.l519c equ $ + 2
.l519a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l51a4 equ $ + 2
.l51a3 equ $ + 1
	db #38,#00,#00
.l51a5
	dw l5028,l503b,l503a,l505f
	dw l505c,l506f,l5080,l50a8
	dw l50c2,l50a8,l50dc,l50e5
	dw l5107,l510f,l512e
.l51c3
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
.l5285 equ $ + 2
	dw #000f,#0008
.l5289 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l5293 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l52a4 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l52b3 equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l52b7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l52c1 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l52d2 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l52e5 equ $ + 6
.l52e1 equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l52ef
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5300 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5315 equ $ + 6
.l530f
	db #15,#56,#45,#56,#75,#56,#a7,#0c
	db #a7,#0c,#a7,#0c,#00,#00,#b5,#53
	db #f5,#53,#15,#54,#00,#00,#a7,#0c
	db #a7,#0c,#a7,#0c,#00,#00,#a7,#0c
	db #a7,#0c,#a7,#0c,#00,#00,#a7,#0c
	db #a7,#0c,#a7,#0c,#00,#00,#35,#54
	db #75,#54,#95,#54,#14,#0c,#a7,#0c
	db #a7,#0c,#a7,#0c,#00,#00,#b5,#54
	db #f5,#54,#15,#55,#00,#00,#b5,#54
	db #35,#55,#15,#55,#00,#00,#a7,#0c
	db #a7,#0c,#a7,#0c,#00,#00,#a7,#0c
	db #a7,#0c,#a7,#0c,#00,#00,#a7,#0c
	db #a7,#0c,#a7,#0c,#00,#00,#a7,#0c
	db #a7,#0c,#a7,#0c,#00,#00,#a7,#0c
	db #a7,#0c,#a7,#0c,#00,#00,#a7,#0c
	db #a7,#0c,#a7,#0c,#00,#00,#a7,#0c
.l5395 equ $ + 6
	db #a7,#0c,#a7,#0c,#00,#00,#55,#55
	db #75,#55,#95,#55,#b5,#55,#d5,#55
	db #f5,#55,#a7,#0c,#a7,#0c,#a7,#0c
	db #a7,#0c,#a7,#0c,#a7,#0c,#a7,#0c
	db #a7,#0c,#a7,#0c,#a7,#0c,#00,#00
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#70,#03
	db #80,#03,#90,#03,#a0,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0d,#0c,#0c,#0b,#0a,#09,#09
	db #08,#08,#08,#07,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#02,#00
	db #00,#00,#00,#00,#00,#00,#04,#06
	db #07,#09,#0c,#11,#17,#1d,#15,#10
	db #0c,#09,#06,#05,#04,#04,#03,#03
	db #03,#02,#02,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#fe,#ff,#fe,#ff
	db #00,#00,#00,#00,#00,#00,#02,#00
	db #03,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#00,#00,#0f,#0e
	db #0e,#0d,#0d,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #0a,#0b,#0b,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0d,#0c,#0b,#0b,#0a,#0a,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#05,#05,#05,#05,#04,#04
	db #04,#04,#03,#03,#03,#03,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#86,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #05,#05,#08,#08,#00,#00,#05,#05
	db #08,#08,#00,#00,#05,#05,#08,#08
	db #00,#00,#05,#05,#08,#08,#00,#00
	db #05,#05,#08,#08,#00,#00,#00,#00
	db #04,#04,#09,#09,#00,#00,#04,#04
	db #09,#09,#00,#00,#04,#04,#09,#09
	db #00,#00,#04,#04,#09,#09,#00,#00
	db #04,#04,#09,#09,#00,#00,#00,#00
	db #04,#04,#07,#07,#00,#00,#04,#04
	db #07,#07,#00,#00,#04,#04,#07,#07
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #04,#04,#07,#07,#00,#00,#00,#00
	db #05,#05,#09,#09,#00,#00,#05,#05
	db #09,#09,#00,#00,#05,#05,#09,#09
	db #00,#00,#05,#05,#09,#09,#00,#00
	db #05,#05,#09,#09,#00,#00,#00,#00
	db #03,#03,#08,#08,#00,#00,#03,#03
	db #08,#08,#00,#00,#03,#03,#08,#08
	db #00,#00,#03,#03,#08,#08,#00,#00
	db #03,#03,#08,#08,#00,#00,#00,#a5
	db #56,#00,#a5,#56,#00,#d0,#56,#00
	db #a5,#56,#00,#d0,#56,#00,#a5,#56
	db #00,#d0,#56,#00,#a5,#56,#00,#d0
	db #56,#00,#a5,#56,#00,#d0,#56,#00
	db #a5,#56,#00,#d0,#56,#00,#a5,#56
	db #00,#d0,#56,#80,#1e,#56,#00,#ff
	db #56,#00,#02,#57,#00,#4b,#57,#00
	db #92,#57,#00,#d7,#57,#00,#92,#57
	db #00,#d7,#57,#00,#92,#57,#00,#d7
	db #57,#00,#92,#57,#00,#d7,#57,#00
	db #92,#57,#00,#d7,#57,#00,#92,#57
	db #00,#d7,#57,#80,#4e,#56,#00,#ff
	db #56,#00,#ff,#56,#00,#ff,#56,#00
	db #1a,#58,#00,#31,#58,#00,#4c,#58
	db #00,#65,#58,#00,#8e,#58,#00,#b8
	db #58,#00,#df,#58,#00,#08,#59,#00
	db #2f,#59,#00,#ff,#56,#00,#2f,#59
	db #00,#ff,#56,#80,#7e,#56,#42,#7f
	db #21,#42,#70,#02,#3e,#7f,#32,#3e
	db #70,#03,#3e,#70,#02,#42,#7f,#21
	db #3e,#7f,#22,#42,#7f,#21,#42,#70
	db #02,#3e,#7f,#32,#3e,#70,#03,#3e
	db #70,#02,#42,#7f,#21,#3e,#7f,#22
	db #ff,#45,#7f,#23,#45,#70,#02,#40
	db #7f,#34,#40,#70,#02,#40,#70,#02
	db #c0,#70,#42,#7f,#25,#40,#7f,#24
	db #42,#7f,#21,#42,#70,#02,#3e,#7f
	db #32,#44,#7f,#25,#44,#7f,#25,#c4
	db #70,#46,#70,#02,#46,#70,#02,#ff
	db #00,#20,#ff,#23,#88,#28,#02,#23
	db #88,#28,#02,#23,#88,#28,#02,#a3
	db #88,#28,#28,#88,#1e,#02,#28,#88
	db #1e,#02,#a8,#88,#1e,#26,#88,#22
	db #02,#a6,#88,#22,#a8,#88,#1e,#23
	db #88,#28,#02,#23,#88,#28,#02,#23
	db #88,#28,#02,#a3,#88,#28,#28,#88
	db #1e,#02,#28,#88,#1e,#02,#a8,#88
	db #1e,#26,#88,#22,#02,#a6,#88,#22
	db #a8,#88,#1e,#ff,#21,#88,#2c,#02
	db #21,#88,#2c,#02,#21,#88,#2c,#02
	db #a1,#88,#2c,#26,#88,#22,#02,#26
	db #88,#22,#02,#a6,#88,#22,#25,#88
	db #24,#02,#a5,#88,#24,#a6,#88,#22
	db #23,#88,#28,#02,#23,#88,#28,#02
	db #23,#88,#28,#02,#a3,#88,#28,#28
	db #88,#1e,#02,#28,#88,#1e,#02,#a8
	db #88,#1e,#2a,#88,#1b,#02,#2a,#88
	db #1b,#02,#ff,#23,#88,#28,#02,#23
	db #88,#28,#02,#40,#11,#20,#a3,#88
	db #28,#28,#88,#1e,#02,#28,#88,#1e
	db #02,#a8,#88,#1e,#40,#11,#20,#a6
	db #88,#22,#a8,#88,#1e,#23,#88,#28
	db #02,#23,#88,#28,#02,#40,#11,#20
	db #a3,#88,#28,#28,#88,#1e,#02,#28
	db #88,#1e,#02,#a8,#88,#1e,#40,#11
	db #20,#a6,#88,#22,#a8,#88,#1e,#ff
	db #21,#88,#2c,#02,#21,#88,#2c,#02
	db #40,#11,#20,#a1,#88,#2c,#26,#88
	db #22,#02,#26,#88,#22,#02,#a6,#88
	db #22,#40,#11,#20,#a5,#88,#24,#a6
	db #88,#22,#23,#88,#28,#02,#23,#88
	db #28,#02,#40,#11,#20,#a3,#88,#28
	db #28,#88,#1e,#02,#28,#88,#1e,#02
	db #a8,#88,#1e,#40,#11,#20,#2a,#88
	db #1b,#02,#ff,#47,#70,#0a,#c5,#70
	db #c7,#70,#40,#70,#02,#42,#70,#02
	db #45,#70,#03,#42,#70,#03,#47,#70
	db #0a,#ff,#4a,#70,#03,#49,#70,#03
	db #45,#70,#06,#42,#70,#04,#47,#70
	db #08,#ce,#70,#4d,#70,#02,#4c,#70
	db #03,#4e,#70,#02,#ff,#47,#70,#0a
	db #c0,#70,#c2,#70,#c5,#70,#4a,#70
	db #03,#47,#70,#08,#4e,#70,#03,#4d
	db #70,#03,#4c,#70,#02,#ff,#47,#70
	db #03,#4a,#70,#03,#4d,#70,#02,#4e
	db #70,#03,#4d,#70,#03,#4a,#70,#02
	db #47,#70,#03,#4a,#70,#03,#4d,#70
	db #02,#4e,#70,#02,#d1,#70,#d0,#70
	db #4f,#70,#02,#4e,#70,#02,#ff,#42
	db #5f,#10,#47,#50,#02,#49,#50,#03
	db #47,#50,#02,#4a,#50,#03,#49,#50
	db #03,#47,#50,#02,#c2,#50,#47,#50
	db #02,#49,#50,#03,#47,#50,#02,#4a
	db #50,#03,#49,#50,#03,#47,#50,#02
	db #ff,#42,#5f,#10,#47,#50,#02,#49
	db #50,#03,#47,#50,#02,#4c,#50,#03
	db #4a,#50,#03,#49,#50,#02,#c5,#50
	db #47,#50,#02,#47,#50,#05,#c5,#50
	db #c7,#50,#c7,#50,#47,#50,#05,#ff
	db #c7,#50,#4a,#50,#02,#4c,#50,#03
	db #4a,#50,#02,#4e,#50,#03,#4d,#50
	db #03,#4a,#50,#02,#c7,#50,#4a,#50
	db #02,#4c,#50,#03,#4a,#50,#02,#4e
	db #50,#03,#4c,#50,#03,#4a,#50,#02
	db #ff,#47,#5f,#10,#4c,#50,#02,#4e
	db #50,#03,#4c,#50,#02,#4f,#50,#03
	db #4e,#50,#03,#4c,#50,#02,#c5,#50
	db #47,#50,#02,#47,#50,#05,#c5,#50
	db #c7,#50,#c7,#50,#47,#50,#05,#ff
	db #fe,#20,#ff
;
.music_info
	db "Tree Issue 1 - Part 3-2 (1999)(Brothers)(FG Brain)",0
	db "ST-128 Module",0

	read "music_end.asm"
