; Music of Jukebox 1 - Abyss (2003)(RoundSoft)(Napo)(ST-128 Module)
; Ripped by Megachur the 21/02/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JUKEBO11.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #464a

	read "music_header.asm"

	db #04,#00,#26,#30,#30,#30
	jr l4654
	jr l4663
.l4654
	call l4687
	ld hl,l4674
	ld de,l466c
	ld bc,#81ff
	jp #bcd7
.l4663
	ld hl,l4674
	call #bcdd
	jp l46ff
.l466c
	push ix
	call l471b
	pop ix
	ret
.l4674
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l4687
	jp l471b
	jp l46ff
;
.init_music
.l4687
;
	xor a
	ld hl,l4c32
	call l46f8
	ld hl,l4c60
	call l46f8
	ld hl,l4c8e
	call l46f8
	ld ix,l4c2e
	ld iy,l4cb8
	ld de,#002e
	ld b,#03
.l46a7
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
	djnz l46a7
	ld hl,l4b47
	ld (hl),#09
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l4b43),hl
	ld (l4b45),hl
	ld a,#0c
	ld c,d
	call l4b23
	ld a,#0d
	ld c,d
	jp l4b23
.l46f8
	ld b,#2a
.l46fa
	ld (hl),a
	inc hl
	djnz l46fa
	ret
;
.stop_music
.l46ff
;
	ld a,#07
	ld c,#3f
	call l4b23
	ld a,#08
	ld c,#00
	call l4b23
	ld a,#09
	ld c,#00
	call l4b23
	ld a,#0a
	ld c,#00
	jp l4b23
;
.play_music
.l471b
;
	ld hl,l4b49
	dec (hl)
	ld ix,l4c2e
	ld bc,l4c3c
	call l47bd
	ld ix,l4c5c
	ld bc,l4c6a
	call l47bd
	ld ix,l4c8a
	ld bc,l4c98
	call l47bd
	ld hl,l4b42
	ld de,l4b49
	ld b,#06
	call l479a
	ld b,#07
	call l479a
	ld b,#0b
	call l479a
	ld b,#0d
	call l479a
	ld de,l4b49
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l4c4d
	call l4773
	ld hl,l4c7b
	call l4773
	ld hl,l4ca9
.l4773
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
	jr nz,l4788
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l4788
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
.l479a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l4b23
.l47a5
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l4b23
.l47bd
	ld a,(l4b49)
	or a
	jp nz,l4875
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l4875
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l47a5
	or a
	jp z,l486a
	ld r,a
	and #7f
	cp #10
	jr c,l4845
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l49bd
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
	jr z,l481e
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l481e
	rrca
	ld c,a
	ld hl,l4cbe
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
	jr z,l483d
	ld (ix+#1e),b
.l483d
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l485e
.l4845
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l4b4e
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	ld sp,#3332
	inc (hl)
	dec (hl)
.l485e equ $ + 1
	ld (hl),#7a
	or a
	jr nz,l486c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l486c
.l486a
	ld a,(hl)
	inc hl
.l486c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l4875
	ld a,(ix+#17)
	or a
	jr nz,l488b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l488b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l48a1
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l48a1
	ld a,(ix+#0d)
	or a
	jr z,l48af
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l48cd
.l48af
	ld a,(ix+#1a)
	or a
	jp z,l48d4
	ld c,a
	cp #03
	jr nz,l48bc
	xor a
.l48bc
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l48cd
	ld a,(ix+#18)
	dec c
	jr z,l48cd
	ld a,(ix+#19)
.l48cd
	add (ix+#07)
	ld b,d
	call l49bd
.l48d4
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l48fc
	dec (ix+#1b)
	jr nz,l48fc
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l4934
.l48fc
	ld a,(ix+#29)
	or a
	jr z,l4934
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l492b
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l4922
	ld (ix+#29),#ff
	jr l492b
.l4922
	cp (ix+#2b)
	jr nz,l492b
	ld (ix+#29),#01
.l492b
	ld b,d
	or a
	jp p,l4931
	dec b
.l4931
	ld c,a
	jr l493f
.l4934
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l493f
	pop hl
	bit 7,(ix+#14)
	jr z,l4948
	ld h,d
	ld l,d
.l4948
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l4b23
	ld c,h
	ld a,(ix+#02)
	call l4b23
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l499b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l498a
	dec (ix+#09)
	jr nz,l498a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4982
	xor a
	jr l4987
.l4982
	cp #10
	jr nz,l4987
	dec a
.l4987
	ld (ix+#1e),a
.l498a
	ld a,b
	sub (ix+#1e)
	jr nc,l4991
	xor a
.l4991
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l4b23
.l499b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l4b4a)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l49b9
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l49b9
	ld (l4b4a),hl
	ret
.l49bd
	ld hl,l4b6c
	cp #61
	jr nc,l49c7
	add a
	ld c,a
	add hl,bc
.l49c7
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l49d1
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l4af6
	ld (ix+#1e),a
	jp l485e
.l49e3
	dec b
.l49e4
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l49ef
	neg
.l49ef
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
	jp l485e
.l4a05
	dec b
	jr l4a09
.l4a08
	inc b
.l4a09
	call l4af6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l485e
.l4a18
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
	jp l4adb
.l4a29
	ld a,(hl)
	inc hl
	or a
	jr z,l4a4b
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
.l4a4b
	ld (ix+#29),a
	jp l485e
.l4a51
	dec hl
	ld a,(hl)
	and #0f
	ld (l4b4d),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l4b4c),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l485e
.l4a6b
	ld a,(hl)
	or a
	jr z,l4a7c
	call l4af8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l485e
.l4a7c
	ld hl,#0101
	ld (l4b48),hl
	jp l485e
.l4a85
	call l4af6
	ld (ix+#1e),a
	jp l485e
.l4a8e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l4b07
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l4b07
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l485e
.l4ab0
	ld a,(hl)
	inc hl
	ld (l4b47),a
	jp l485e
.l4ab8
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
	jp l485e
.l4ad7
	call l4af6
	add a
.l4adb
	ld b,#00
	ld c,a
	push hl
	ld hl,l4d3e
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l485e
.l4af6
	ld a,(hl)
	inc hl
.l4af8
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
.l4b07
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l4cbe
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l4b23
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
.l4b42
	ret
.l4b4a equ $ + 7
.l4b49 equ $ + 6
.l4b48 equ $ + 5
.l4b47 equ $ + 4
.l4b45 equ $ + 2
.l4b43
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b4d equ $ + 2
.l4b4c equ $ + 1
	db #38,#00,#00
.l4b4e
	dw l49d1,l49e4,l49e3,l4a08
	dw l4a05,l4a18,l4a29,l4a51
	dw l4a6b,l4a51,l4a85,l4a8e
	dw l4ab0,l4ab8,l4ad7
.l4b6c
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
.l4c2e equ $ + 2
	dw #000f,#0008
.l4c32 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l4c3c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4c4d equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4c5c equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l4c60
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4c6a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4c7b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4c8e equ $ + 6
.l4c8a equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4c98
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4ca9 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4cbe equ $ + 6
.l4cb8
	db #3e,#4e,#4d,#4e,#5c,#4e,#5e,#4d
	db #9e,#4d,#be,#4d,#00,#00,#de,#4d
	db #1e,#4e,#be,#4d,#00,#00,#36,#67
	db #f6,#67,#16,#68,#00,#00,#36,#67
	db #36,#68,#56,#68,#00,#00,#36,#67
	db #76,#68,#96,#67,#00,#00,#36,#67
	db #96,#68,#96,#67,#00,#00,#3e,#79
	db #7e,#7a,#9e,#79,#01,#08,#74,#3a
	db #74,#3a,#74,#3a,#00,#00,#74,#3a
	db #74,#3a,#74,#3a,#00,#00,#74,#3a
	db #74,#3a,#74,#3a,#00,#00,#74,#3a
	db #74,#3a,#74,#3a,#00,#00,#74,#3a
	db #74,#3a,#74,#3a,#00,#00,#74,#3a
	db #74,#3a,#74,#3a,#00,#00,#74,#3a
	db #74,#3a,#74,#3a,#00,#00,#74,#3a
	db #74,#3a,#74,#3a,#00,#00,#74,#3a
.l4d3e equ $ + 6
	db #74,#3a,#74,#3a,#00,#00,#74,#3a
	db #74,#3a,#74,#3a,#74,#3a,#74,#3a
	db #74,#3a,#74,#3a,#74,#3a,#74,#3a
	db #74,#3a,#74,#3a,#74,#3a,#74,#3a
	db #74,#3a,#74,#3a,#74,#3a,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#0c,#0c
	db #0e,#0d,#0e,#0d,#0e,#0d,#0d,#0b
	db #0e,#0f,#0b,#0b,#0e,#0c,#0e,#0f
	db #0e,#0e,#0d,#0d,#0d,#0d,#0d,#0b
	db #0e,#0d,#0e,#0e,#0d,#0f,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0f,#0d
	db #0e,#0e,#0e,#0f,#0e,#0f,#0f,#0f
	db #0e,#0d,#0e,#0d,#0e,#0e,#0e,#0c
	db #0d,#0f,#0e,#0e,#0d,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#6b
	db #4e,#00,#6b,#4e,#f9,#6b,#4e,#00
	db #6b,#4e,#80,#3e,#4e,#00,#ec,#4e
	db #00,#ad,#4f,#f9,#ad,#4f,#00,#ec
	db #4e,#80,#4d,#4e,#00,#6e,#50,#00
	db #71,#50,#f9,#71,#50,#00,#c4,#50
	db #80,#5c,#4e,#b3,#10,#b5,#10,#b6
	db #10,#ba,#10,#bd,#10,#c1,#10,#c2
	db #10,#c6,#10,#c9,#10,#cd,#10,#ce
	db #10,#d2,#10,#d5,#10,#d2,#10,#ce
	db #10,#cd,#10,#cb,#10,#c7,#10,#c6
	db #10,#c2,#10,#c1,#10,#bf,#10,#bb
	db #10,#ba,#10,#b6,#10,#b5,#10,#b3
	db #10,#af,#10,#ae,#10,#aa,#10,#a9
	db #10,#a7,#10,#b3,#10,#b5,#10,#b6
	db #10,#ba,#10,#bd,#10,#c1,#10,#c2
	db #10,#c6,#10,#c9,#10,#cd,#10,#ce
	db #10,#d2,#10,#d5,#10,#d2,#10,#ce
	db #10,#cd,#10,#cb,#10,#c7,#10,#c6
	db #10,#c2,#10,#c1,#10,#bf,#10,#bb
	db #10,#ba,#10,#b6,#10,#b5,#10,#b3
	db #10,#af,#10,#ae,#10,#aa,#10,#a9
	db #10,#a7,#10,#ff,#0d,#09,#01,#33
	db #11,#13,#35,#11,#13,#36,#11,#13
	db #3a,#11,#13,#3d,#11,#13,#41,#11
	db #13,#42,#11,#13,#46,#11,#13,#49
	db #11,#13,#4d,#11,#13,#4e,#11,#13
	db #52,#11,#13,#55,#11,#13,#52,#11
	db #13,#4e,#11,#13,#4d,#11,#13,#4b
	db #11,#13,#47,#11,#13,#46,#11,#13
	db #42,#11,#13,#41,#11,#13,#3f,#11
	db #13,#3b,#11,#13,#3a,#11,#13,#36
	db #11,#13,#35,#11,#13,#33,#11,#13
	db #2f,#11,#13,#2e,#11,#13,#2a,#11
	db #13,#29,#11,#13,#27,#11,#13,#33
	db #11,#13,#35,#11,#13,#36,#11,#13
	db #3a,#11,#13,#3d,#11,#13,#41,#11
	db #13,#42,#11,#13,#46,#11,#13,#49
	db #11,#13,#4d,#11,#13,#4e,#11,#13
	db #52,#11,#13,#55,#11,#13,#52,#11
	db #13,#4e,#11,#13,#4d,#11,#13,#4b
	db #11,#13,#47,#11,#13,#46,#11,#13
	db #42,#11,#13,#41,#11,#13,#3f,#11
	db #13,#3b,#11,#13,#3a,#11,#13,#36
	db #11,#13,#35,#11,#13,#33,#11,#13
	db #2f,#11,#13,#2e,#11,#13,#2a,#11
	db #13,#29,#11,#13,#ff,#a7,#0d,#09
	db #33,#11,#13,#35,#11,#13,#36,#11
	db #13,#3a,#11,#13,#3d,#11,#13,#41
	db #11,#13,#42,#11,#13,#46,#11,#13
	db #49,#11,#13,#4d,#11,#13,#4e,#11
	db #13,#52,#11,#13,#55,#11,#13,#52
	db #11,#13,#4e,#11,#13,#4d,#11,#13
	db #4b,#11,#13,#47,#11,#13,#46,#11
	db #13,#42,#11,#13,#41,#11,#13,#3f
	db #11,#13,#3b,#11,#13,#3a,#11,#13
	db #36,#11,#13,#35,#11,#13,#33,#11
	db #13,#2f,#11,#13,#2e,#11,#13,#2a
	db #11,#13,#29,#11,#13,#27,#11,#13
	db #33,#11,#13,#35,#11,#13,#36,#11
	db #13,#3a,#11,#13,#3d,#11,#13,#41
	db #11,#13,#42,#11,#13,#46,#11,#13
	db #49,#11,#13,#4d,#11,#13,#4e,#11
	db #13,#52,#11,#13,#55,#11,#13,#52
	db #11,#13,#4e,#11,#13,#4d,#11,#13
	db #4b,#11,#13,#47,#11,#13,#46,#11
	db #13,#42,#11,#13,#41,#11,#13,#3f
	db #11,#13,#3b,#11,#13,#3a,#11,#13
	db #36,#11,#13,#35,#11,#13,#33,#11
	db #13,#2f,#11,#13,#2e,#11,#13,#2a
	db #11,#13,#29,#11,#13,#ff,#fe,#40
	db #ff,#5e,#00,#06,#dc,#00,#da,#00
	db #59,#00,#02,#55,#00,#02,#59,#00
	db #02,#5c,#00,#02,#59,#00,#02,#55
	db #00,#04,#54,#00,#02,#52,#00,#02
	db #4e,#00,#02,#50,#00,#02,#52,#00
	db #02,#5e,#00,#02,#5a,#00,#02,#59
	db #00,#02,#57,#00,#04,#5a,#00,#02
	db #5c,#00,#02,#5e,#00,#02,#5a,#00
	db #02,#59,#00,#02,#57,#00,#02,#52
	db #00,#04,#57,#00,#02,#52,#00,#02
	db #4e,#00,#02,#ff,#63,#00,#02,#5e
	db #00,#02,#5a,#00,#02,#59,#00,#02
	db #5a,#00,#02,#5e,#00,#02,#63,#00
	db #02,#5e,#00,#02,#5a,#00,#02,#59
	db #00,#02,#5a,#00,#02,#5e,#00,#02
	db #63,#00,#02,#5e,#00,#02,#5a,#00
	db #02,#5c,#00,#02,#de,#00,#da,#00
	db #de,#00,#e3,#00,#de,#00,#da,#00
	db #de,#00,#e3,#00,#de,#00,#da,#00
	db #de,#00,#e3,#00,#de,#00,#da,#00
	db #de,#00,#df,#00,#63,#00,#04,#63
	db #01,#32,#63,#01,#33,#63,#01,#34
	db #63,#01,#37,#ff
;
.music_info
	db "Jukebox 1 - Abyss (2003)(RoundSoft)(Napo)",0
	db "ST-128 Module",0

	read "music_end.asm"