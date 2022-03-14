; Music of Bugs Party 2 - Part 3 (1994)(Bugs)(Epsilon)(ST-128 Module)
; Ripped by Megachur the 03/03/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BUGSP2P3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #4e71

	read "music_header.asm"

	jp l4e7a
	jp l4f0e
	jp l4ef2
;
.init_music
.l4e7a
;
	xor a
	ld hl,l5425
	call l4eeb
	ld hl,l5453
	call l4eeb
	ld hl,l5481
	call l4eeb
	ld ix,l5421
	ld iy,l54ab
	ld de,#002e
	ld b,#03
.l4e9a
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
	djnz l4e9a
	ld hl,l533a
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
	ld (l5336),hl
	ld (l5338),hl
	ld a,#0c
	ld c,d
	call l5316
	ld a,#0d
	ld c,d
	jp l5316
.l4eeb
	ld b,#2a
.l4eed
	ld (hl),a
	inc hl
	djnz l4eed
	ret
;
.stop_music
.l4ef2
;
	ld a,#07
	ld c,#3f
	call l5316
	ld a,#08
	ld c,#00
	call l5316
	ld a,#09
	ld c,#00
	call l5316
	ld a,#0a
	ld c,#00
	jp l5316
;
.play_music
.l4f0e
;
	ld hl,l533c
	dec (hl)
	ld ix,l5421
	ld bc,l542f
	call l4fb0
	ld ix,l544f
	ld bc,l545d
	call l4fb0
	ld ix,l547d
	ld bc,l548b
	call l4fb0
	ld hl,l5335
	ld de,l533c
	ld b,#06
	call l4f8d
	ld b,#07
	call l4f8d
	ld b,#0b
	call l4f8d
	ld b,#0d
	call l4f8d
	ld de,l533c
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l5440
	call l4f66
	ld hl,l546e
	call l4f66
	ld hl,l549c
.l4f66
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
	jr nz,l4f7b
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l4f7b
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
.l4f8d
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l5316
.l4f98
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l5316
.l4fb0
	ld a,(l533c)
	or a
	jp nz,l5068
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l5068
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4f98
	or a
	jp z,l505d
	ld r,a
	and #7f
	cp #10
	jr c,l5038
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l51b0
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
	jr z,l5011
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l5011
	rrca
	ld c,a
	ld hl,l54b1
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
	jr z,l5030
	ld (ix+#1e),b
.l5030
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l5051
.l5038
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l5341
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
.l5051
	ld a,d
	or a
	jr nz,l505f
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l505f
.l505d
	ld a,(hl)
	inc hl
.l505f
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l5068
	ld a,(ix+#17)
	or a
	jr nz,l507e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l507e
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5094
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5094
	ld a,(ix+#0d)
	or a
	jr z,l50a2
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l50c0
.l50a2
	ld a,(ix+#1a)
	or a
	jp z,l50c7
	ld c,a
	cp #03
	jr nz,l50af
	xor a
.l50af
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l50c0
	ld a,(ix+#18)
	dec c
	jr z,l50c0
	ld a,(ix+#19)
.l50c0
	add (ix+#07)
	ld b,d
	call l51b0
.l50c7
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l50ef
	dec (ix+#1b)
	jr nz,l50ef
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l5127
.l50ef
	ld a,(ix+#29)
	or a
	jr z,l5127
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l511e
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l5115
	ld (ix+#29),#ff
	jr l511e
.l5115
	cp (ix+#2b)
	jr nz,l511e
	ld (ix+#29),#01
.l511e
	ld b,d
	or a
	jp p,l5124
	dec b
.l5124
	ld c,a
	jr l5132
.l5127
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l5132
	pop hl
	bit 7,(ix+#14)
	jr z,l513b
	ld h,d
	ld l,d
.l513b
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l5316
	ld c,h
	ld a,(ix+#02)
	call l5316
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l518e
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l517d
	dec (ix+#09)
	jr nz,l517d
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5175
	xor a
	jr l517a
.l5175
	cp #10
	jr nz,l517a
	dec a
.l517a
	ld (ix+#1e),a
.l517d
	ld a,b
	sub (ix+#1e)
	jr nc,l5184
	xor a
.l5184
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l5316
.l518e
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l533d)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l51ac
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l51ac
	ld (l533d),hl
	ret
.l51b0
	ld hl,l535f
	cp #61
	jr nc,l51ba
	add a
	ld c,a
	add hl,bc
.l51ba
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l51c4
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l52e9
	ld (ix+#1e),a
	jp l5051
.l51d6
	dec b
.l51d7
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l51e2
	neg
.l51e2
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
	jp l5051
.l51f8
	dec b
	jr l51fc
.l51fb
	inc b
.l51fc
	call l52e9
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l5051
.l520b
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
	jp l52ce
.l521c
	ld a,(hl)
	inc hl
	or a
	jr z,l523e
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
.l523e
	ld (ix+#29),a
	jp l5051
.l5244
	dec hl
	ld a,(hl)
	and #0f
	ld (l5340),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l533f),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l5051
.l525e
	ld a,(hl)
	or a
	jr z,l526f
	call l52eb
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l5051
.l526f
	ld hl,#0101
	ld (l533b),hl
	jp l5051
.l5278
	call l52e9
	ld (ix+#1e),a
	jp l5051
.l5281
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l52fa
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l52fa
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l5051
.l52a3
	ld a,(hl)
	inc hl
	ld (l533a),a
	jp l5051
.l52ab
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
	jp l5051
.l52ca
	call l52e9
	add a
.l52ce
	ld b,#00
	ld c,a
	push hl
	ld hl,l5531
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l5051
.l52e9
	ld a,(hl)
	inc hl
.l52eb
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
.l52fa
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l54b1
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	ld d,e
	ld d,h
	dec l
	ld sp,#3832
	jr nz,l535e
	ld l,a
	ld h,h
	ld (hl),l
	ld l,h
	ld h,l
.l5316
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
.l5335
	ret
.l533d equ $ + 7
.l533c equ $ + 6
.l533b equ $ + 5
.l533a equ $ + 4
.l5338 equ $ + 2
.l5336
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5340 equ $ + 2
.l533f equ $ + 1
	db #38,#00,#00
.l5341
	dw l51c4,l51d7,l51d6,l51fb
	dw l51f8,l520b,l521c,l5244
	dw l525e,l5244,l5278,l5281
.l535e equ $ + 5
	dw l52a3,l52ab,l52ca
.l535f
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
.l5425 equ $ + 4
.l5421
	db #08,#00,#01,#08,#00,#00,#00,#00
.l542f equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5440 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l544f equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l5453 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l545d equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l546e equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l547d equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l5481
	db #00,#00,#00,#00,#00,#00,#00,#00
.l548b equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l549c equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l54ab equ $ + 2
	db #00,#00,#11,#58,#47,#58,#7d,#58
.l54b1
	db #51,#55,#91,#55,#b1,#55,#07,#00
	db #d1,#55,#11,#56,#31,#56,#1a,#00
	db #51,#56,#91,#56,#b1,#56,#08,#00
	db #51,#56,#d1,#56,#f1,#56,#09,#00
	db #51,#56,#11,#57,#b1,#56,#10,#00
	db #31,#57,#71,#57,#91,#57,#00,#00
	db #b1,#57,#f1,#57,#b1,#56,#00,#00
	db #13,#0e,#e6,#0d,#e7,#0d,#a5,#ff
	db #17,#0e,#e8,#0d,#14,#0e,#d0,#ff
	db #42,#0e,#a3,#57,#e3,#57,#c0,#49
	db #43,#0e,#23,#58,#14,#0e,#d0,#ff
	db #14,#0e,#15,#0e,#16,#0e,#d4,#ff
	db #16,#0e,#15,#0e,#14,#0e,#d0,#ff
	db #14,#0e,#15,#0e,#16,#0e,#d4,#ff
	db #16,#0e,#42,#0e,#41,#0e,#ff,#ff
	db #43,#0e,#44,#0e,#45,#0e,#01,#00
.l5531
	db #43,#0e,#42,#0e,#41,#0e,#42,#0e
	db #43,#0e,#44,#0e,#45,#0e,#44,#0e
	db #43,#0e,#42,#0e,#41,#0e,#42,#0e
	db #43,#0e,#44,#0e,#45,#0e,#44,#0e
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
	db #0f,#0f,#0e,#0d,#0c,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0d,#0b,#09,#07,#05,#03,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0b,#0b,#0a,#09,#07,#05,#02,#00
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
	db #00,#00,#fc,#ff,#fd,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#07,#06,#04,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#b3,#58,#00,#b3,#58,#00,#b3
	db #58,#00,#34,#59,#00,#b3,#58,#00
	db #b3,#58,#00,#b3,#58,#00,#34,#59
	db #00,#b3,#58,#00,#b3,#58,#00,#34
	db #59,#00,#b3,#58,#00,#b3,#58,#00
	db #b3,#58,#00,#b3,#58,#00,#b3,#58
	db #00,#f4,#59,#80,#11,#58,#00,#75
	db #5a,#00,#75,#5a,#00,#75,#5a,#00
	db #75,#5a,#00,#75,#5a,#00,#75,#5a
	db #00,#75,#5a,#00,#75,#5a,#00,#75
	db #5a,#00,#75,#5a,#00,#75,#5a,#00
	db #75,#5a,#00,#75,#5a,#00,#75,#5a
	db #00,#75,#5a,#00,#75,#5a,#00,#b3
	db #58,#80,#47,#58,#00,#34,#59,#00
	db #f6,#5a,#00,#f6,#5a,#00,#57,#5b
	db #00,#62,#5b,#00,#f4,#59,#00,#f4
	db #59,#00,#57,#5b,#00,#9b,#5b,#00
	db #9b,#5b,#00,#57,#5b,#00,#f6,#5a
	db #00,#f6,#5a,#00,#62,#5b,#00,#f4
	db #59,#00,#9b,#5b,#00,#f4,#59,#80
	db #7d,#58,#a8,#20,#b4,#20,#a8,#20
	db #b4,#20,#a8,#20,#b4,#20,#a8,#20
	db #b4,#20,#a8,#20,#b4,#20,#a8,#20
	db #b4,#20,#a8,#20,#b4,#20,#a8,#20
	db #a8,#20,#aa,#20,#b6,#20,#aa,#20
	db #b6,#20,#aa,#20,#b6,#20,#aa,#20
	db #b6,#20,#aa,#20,#b6,#20,#aa,#20
	db #b6,#20,#aa,#20,#b6,#20,#aa,#20
	db #aa,#20,#ad,#20,#b9,#20,#ad,#20
	db #b9,#20,#ad,#20,#b9,#20,#ad,#20
	db #b9,#20,#ad,#20,#b9,#20,#ad,#20
	db #b9,#20,#ad,#20,#b9,#20,#ad,#20
	db #ad,#20,#ac,#20,#b8,#20,#ac,#20
	db #b8,#20,#ac,#20,#b8,#20,#ac,#20
	db #b8,#20,#ac,#20,#b8,#20,#ac,#20
	db #b8,#20,#ac,#20,#b8,#20,#ac,#20
	db #ac,#20,#ff,#28,#21,#16,#34,#21
	db #15,#28,#21,#14,#34,#21,#13,#28
	db #21,#12,#b4,#20,#28,#21,#10,#34
	db #21,#10,#28,#21,#10,#34,#21,#10
	db #28,#21,#11,#34,#21,#12,#28,#21
	db #13,#34,#21,#14,#28,#21,#15,#28
	db #21,#16,#2a,#21,#16,#36,#21,#15
	db #2a,#21,#14,#36,#21,#13,#2a,#21
	db #12,#36,#21,#11,#2a,#21,#10,#36
	db #21,#10,#2a,#21,#10,#36,#21,#10
	db #2a,#21,#11,#36,#21,#12,#2a,#21
	db #13,#36,#21,#14,#2a,#21,#15,#2a
	db #21,#16,#2d,#21,#16,#39,#21,#15
	db #2d,#21,#14,#39,#21,#13,#2d,#21
	db #12,#39,#21,#11,#2d,#21,#10,#39
	db #21,#10,#2d,#21,#10,#39,#21,#10
	db #2d,#21,#11,#39,#21,#12,#2d,#21
	db #13,#39,#21,#14,#2d,#21,#15,#2d
	db #21,#16,#2c,#21,#16,#38,#21,#15
	db #2c,#21,#14,#38,#21,#13,#2c,#21
	db #12,#38,#21,#11,#2c,#21,#10,#38
	db #21,#10,#2c,#21,#10,#38,#21,#11
	db #2c,#21,#12,#38,#21,#13,#2c,#21
	db #14,#38,#21,#15,#2c,#21,#16,#2c
	db #21,#17,#ff,#b4,#40,#b4,#40,#b8
	db #40,#bb,#40,#bf,#40,#bb,#40,#b8
	db #40,#b4,#40,#b4,#40,#b8,#40,#bb
	db #40,#bf,#40,#bb,#40,#b8,#40,#b4
	db #40,#b4,#40,#b6,#40,#b6,#40,#b9
	db #40,#bd,#40,#c0,#40,#bd,#40,#b9
	db #40,#b6,#40,#b6,#40,#b9,#40,#bd
	db #40,#c0,#40,#bd,#40,#b9,#40,#b9
	db #40,#b9,#40,#b9,#40,#b9,#40,#bd
	db #40,#c0,#40,#c4,#40,#c0,#40,#bd
	db #40,#b9,#40,#b9,#40,#bd,#40,#c0
	db #40,#c4,#40,#c0,#40,#bd,#40,#b9
	db #40,#b9,#40,#b8,#40,#b8,#40,#bb
	db #40,#bf,#40,#c2,#40,#bf,#40,#bb
	db #40,#b8,#40,#b8,#40,#bb,#40,#bf
	db #40,#c2,#40,#bf,#40,#bb,#40,#b8
	db #40,#b8,#40,#ff,#bb,#00,#f4,#30
	db #f4,#30,#f4,#30,#bb,#10,#f4,#30
	db #f4,#30,#f4,#30,#bb,#00,#f4,#30
	db #bb,#00,#f4,#30,#bb,#10,#f4,#30
	db #f4,#30,#f4,#30,#bb,#00,#f4,#30
	db #f4,#30,#f4,#30,#bb,#10,#f4,#30
	db #f4,#30,#f4,#30,#bb,#00,#f4,#30
	db #bb,#00,#f4,#30,#bb,#10,#f4,#30
	db #f4,#30,#f4,#30,#bb,#00,#f4,#30
	db #f4,#30,#f4,#30,#bb,#10,#f4,#30
	db #f4,#30,#f4,#30,#bb,#00,#f4,#30
	db #bb,#00,#f4,#30,#bb,#10,#f4,#30
	db #f4,#30,#f4,#30,#bb,#00,#f4,#30
	db #f4,#30,#f4,#30,#bb,#10,#f4,#30
	db #f4,#30,#f4,#30,#bb,#00,#f4,#30
	db #bb,#00,#f4,#30,#bb,#10,#f4,#30
	db #bb,#00,#bb,#10,#ff,#c4,#40,#44
	db #40,#02,#c4,#40,#c5,#40,#45,#40
	db #02,#c5,#40,#c7,#40,#45,#40,#02
	db #c7,#40,#4c,#40,#04,#c5,#40,#45
	db #40,#02,#c5,#40,#c7,#40,#47,#40
	db #02,#c5,#40,#c7,#40,#45,#40,#02
	db #c7,#40,#4e,#40,#04,#c2,#40,#42
	db #40,#02,#c2,#40,#c4,#40,#44,#40
	db #02,#c4,#40,#c5,#40,#44,#40,#02
	db #c5,#40,#4b,#40,#04,#c5,#40,#45
	db #40,#02,#c5,#40,#c7,#40,#47,#40
	db #02,#c7,#40,#c9,#40,#47,#40,#02
	db #c9,#40,#4c,#40,#04,#ff,#fe,#3a
	db #39,#50,#03,#b9,#50,#39,#50,#02
	db #ff,#40,#60,#02,#c0,#60,#45,#60
	db #02,#47,#60,#02,#40,#60,#09,#42
	db #60,#02,#c2,#60,#47,#60,#02,#49
	db #60,#02,#42,#60,#09,#45,#60,#02
	db #c5,#60,#4b,#60,#02,#4c,#60,#02
	db #45,#60,#09,#44,#60,#02,#c4,#60
	db #49,#60,#02,#4b,#60,#02,#44,#60
	db #09,#ff,#ce,#40,#cb,#40,#c7,#40
	db #ce,#40,#cb,#40,#c7,#40,#ce,#40
	db #cb,#40,#c7,#40,#ce,#40,#cb,#40
	db #c7,#40,#ce,#40,#cb,#40,#c7,#40
	db #cb,#40,#cc,#40,#c9,#40,#c5,#40
	db #cc,#40,#c9,#40,#c5,#40,#cc,#40
	db #c9,#40,#c5,#40,#cc,#40,#c9,#40
	db #c5,#40,#cc,#40,#c9,#40,#45,#40
	db #02,#d0,#40,#cc,#40,#c9,#40,#d0
	db #40,#cc,#40,#c9,#40,#d0,#40,#cc
	db #40,#c9,#40,#d0,#40,#cc,#40,#c9
	db #40,#d0,#40,#cc,#40,#c9,#40,#cc
	db #40,#ce,#40,#cb,#40,#c7,#40,#ce
	db #40,#cb,#40,#c7,#40,#ce,#40,#cb
	db #40,#c7,#40,#ce,#40,#cb,#40,#c7
	db #40,#ce,#40,#cb,#40,#47,#40,#02
	db #ff
;
.music_info
	db "Bugs Party 2 - Part 3 (1994)(Bugs)(Epsilon)",0
	db "ST-128 Module",0

	read "music_end.asm"
