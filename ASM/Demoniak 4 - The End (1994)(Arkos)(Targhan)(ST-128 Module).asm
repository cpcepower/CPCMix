; Music of Demoniak 4 - The End (1994)(Arkos)(Targhan)(ST-128 Module)
; Ripped by Megachur the 01/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DEMON4TE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5cba

	read "music_header.asm"

	jp l5cc3
	jp l5d57
	jp l5d3b
;
.init_music
.l5cc3
;
	xor a
	ld hl,l626e
	call l5d34
	ld hl,l629c
	call l5d34
	ld hl,l62ca
	call l5d34
	ld ix,l626a
	ld iy,l62f4
	ld de,#002e
	ld b,#03
.l5ce3
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
	djnz l5ce3
	ld hl,l6183
	ld (hl),#08
	inc hl
	ld (hl),#30
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l617f),hl
	ld (l6181),hl
	ld a,#0c
	ld c,d
	call l615f
	ld a,#0d
	ld c,d
	jp l615f
.l5d34
	ld b,#2a
.l5d36
	ld (hl),a
	inc hl
	djnz l5d36
	ret
;
.stop_music
.l5d3b
;
	ld a,#07
	ld c,#3f
	call l615f
	ld a,#08
	ld c,#00
	call l615f
	ld a,#09
	ld c,#00
	call l615f
	ld a,#0a
	ld c,#00
	jp l615f
;
.play_music
.l5d57
;
	ld hl,l6185
	dec (hl)
	ld ix,l626a
	ld bc,l6278
	call l5df9
	ld ix,l6298
	ld bc,l62a6
	call l5df9
	ld ix,l62c6
	ld bc,l62d4
	call l5df9
	ld hl,l617e
	ld de,l6185
	ld b,#06
	call l5dd6
	ld b,#07
	call l5dd6
	ld b,#0b
	call l5dd6
	ld b,#0d
	call l5dd6
	ld de,l6185
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#30
	ld hl,l6289
	call l5daf
	ld hl,l62b7
	call l5daf
	ld hl,l62e5
.l5daf
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
	jr nz,l5dc4
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l5dc4
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
.l5dd6
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l615f
.l5de1
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l615f
.l5df9
	ld a,(l6185)
	or a
	jp nz,l5eb1
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l5eb1
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5de1
	or a
	jp z,l5ea6
	ld r,a
	and #7f
	cp #10
	jr c,l5e81
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l5ff9
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
	jr z,l5e5a
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l5e5a
	rrca
	ld c,a
	ld hl,l62fa
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
	jr z,l5e79
	ld (ix+#1e),b
.l5e79
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l5e9a
.l5e81
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l618a
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
.l5e9a
	ld a,d
	or a
	jr nz,l5ea8
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l5ea8
.l5ea6
	ld a,(hl)
	inc hl
.l5ea8
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l5eb1
	ld a,(ix+#17)
	or a
	jr nz,l5ec7
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l5ec7
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5edd
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5edd
	ld a,(ix+#0d)
	or a
	jr z,l5eeb
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l5f09
.l5eeb
	ld a,(ix+#1a)
	or a
	jp z,l5f10
	ld c,a
	cp #03
	jr nz,l5ef8
	xor a
.l5ef8
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l5f09
	ld a,(ix+#18)
	dec c
	jr z,l5f09
	ld a,(ix+#19)
.l5f09
	add (ix+#07)
	ld b,d
	call l5ff9
.l5f10
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l5f38
	dec (ix+#1b)
	jr nz,l5f38
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l5f70
.l5f38
	ld a,(ix+#29)
	or a
	jr z,l5f70
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l5f67
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l5f5e
	ld (ix+#29),#ff
	jr l5f67
.l5f5e
	cp (ix+#2b)
	jr nz,l5f67
	ld (ix+#29),#01
.l5f67
	ld b,d
	or a
	jp p,l5f6d
	dec b
.l5f6d
	ld c,a
	jr l5f7b
.l5f70
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l5f7b
	pop hl
	bit 7,(ix+#14)
	jr z,l5f84
	ld h,d
	ld l,d
.l5f84
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l615f
	ld c,h
	ld a,(ix+#02)
	call l615f
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5fd7
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l5fc6
	dec (ix+#09)
	jr nz,l5fc6
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5fbe
	xor a
	jr l5fc3
.l5fbe
	cp #10
	jr nz,l5fc3
	dec a
.l5fc3
	ld (ix+#1e),a
.l5fc6
	ld a,b
	sub (ix+#1e)
	jr nc,l5fcd
	xor a
.l5fcd
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l615f
.l5fd7
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l6186)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l5ff5
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l5ff5
	ld (l6186),hl
	ret
.l5ff9
	ld hl,l61a8
	cp #61
	jr nc,l6003
	add a
	ld c,a
	add hl,bc
.l6003
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l600d
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6132
	ld (ix+#1e),a
	jp l5e9a
.l601f
	dec b
.l6020
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l602b
	neg
.l602b
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
	jp l5e9a
.l6041
	dec b
	jr l6045
.l6044
	inc b
.l6045
	call l6132
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l5e9a
.l6054
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
	jp l6117
.l6065
	ld a,(hl)
	inc hl
	or a
	jr z,l6087
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
.l6087
	ld (ix+#29),a
	jp l5e9a
.l608d
	dec hl
	ld a,(hl)
	and #0f
	ld (l6189),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l6188),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l5e9a
.l60a7
	ld a,(hl)
	or a
	jr z,l60b8
	call l6134
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l5e9a
.l60b8
	ld hl,#0101
	ld (l6184),hl
	jp l5e9a
.l60c1
	call l6132
	ld (ix+#1e),a
	jp l5e9a
.l60ca
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6143
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6143
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l5e9a
.l60ec
	ld a,(hl)
	inc hl
	ld (l6183),a
	jp l5e9a
.l60f4
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
	jp l5e9a
.l6113
	call l6132
	add a
.l6117
	ld b,#00
	ld c,a
	push hl
	ld hl,l637a
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l5e9a
.l6132
	ld a,(hl)
	inc hl
.l6134
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
.l6143
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l62fa
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l615f
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
.l617e
	ret
.l6186 equ $ + 7
.l6185 equ $ + 6
.l6184 equ $ + 5
.l6183 equ $ + 4
.l6181 equ $ + 2
.l617f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6189 equ $ + 2
.l6188 equ $ + 1
	db #38,#00,#00
.l618a
	dw l600d,l6020,l601f,l6044
	dw l6041,l6054,l6065,l608d
	dw l60a7,l608d,l60c1,l60ca
	dw l60ec,l60f4,l6113
.l61a8
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
.l626e equ $ + 4
.l626a
	db #08,#00,#01,#08,#00,#00,#00,#00
.l6278 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6289 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6298 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l629c equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l62a6 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62b7 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62c6 equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l62ca
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62d4 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62e5 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62f4 equ $ + 2
	db #00,#00,#5a,#66,#96,#66,#d2,#66
.l62fa
	db #9a,#63,#da,#63,#fa,#63,#00,#00
	db #9a,#63,#1a,#64,#fa,#63,#00,#00
	db #9a,#63,#3a,#64,#fa,#63,#14,#0c
	db #9a,#63,#5a,#64,#fa,#63,#1d,#03
	db #7a,#64,#3a,#64,#fa,#63,#00,#00
	db #9a,#63,#ba,#64,#fa,#63,#00,#00
	db #da,#64,#1a,#65,#fa,#63,#00,#00
	db #3a,#65,#7a,#65,#9a,#65,#c0,#00
	db #9a,#63,#ba,#65,#fa,#63,#00,#00
	db #8b,#1c,#53,#47,#50,#47,#c4,#2a
	db #8b,#1c,#9e,#90,#be,#90,#c4,#2a
	db #de,#90,#4f,#47,#50,#47,#c4,#2a
	db #4f,#47,#4f,#47,#50,#47,#c4,#2a
	db #4f,#47,#4f,#47,#50,#47,#c4,#2a
	db #fe,#90,#8c,#1c,#8c,#1c,#00,#00
	db #8c,#1c,#8c,#1c,#8c,#1c,#00,#00
.l637a
	db #da,#65,#fa,#65,#8c,#1c,#1a,#66
	db #8c,#1c,#8c,#1c,#8c,#1c,#8c,#1c
	db #8c,#1c,#8c,#1c,#8c,#1c,#8c,#1c
	db #8c,#1c,#8c,#1c,#8c,#1c,#3a,#66
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#0a,#09,#09,#09,#09,#09,#08
	db #08,#80,#80,#80,#80,#80,#80,#80
	db #0f,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #03,#04,#04,#05,#05,#05,#06,#06
	db #06,#07,#07,#07,#08,#08,#08,#09
	db #09,#09,#0a,#0a,#0a,#0b,#0b,#0b
	db #0c,#0c,#0c,#0d,#0e,#0f,#0f,#0f
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #03,#00,#03,#00,#04,#00,#04,#00
	db #05,#00,#05,#00,#06,#00,#06,#00
	db #07,#00,#07,#00,#08,#00,#08,#00
	db #09,#00,#09,#00,#0a,#00,#0a,#00
	db #0b,#00,#0b,#00,#0c,#00,#0c,#00
	db #0d,#00,#0d,#00,#0e,#00,#0e,#00
	db #0f,#00,#0f,#00,#10,#00,#10,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #16,#00,#12,#00,#0e,#00,#0a,#00
	db #06,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0e,#0d,#0d,#0c,#0c
	db #0c,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#07,#07,#06,#06,#06
	db #06,#05,#05,#05,#04,#04,#03,#03
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
	db #0f,#0f,#0e,#0d,#0d,#0c,#0b,#0b
	db #0a,#09,#09,#08,#07,#07,#06,#05
	db #05,#04,#03,#03,#02,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #00,#00,#00,#00,#ff,#ff,#ff,#ff
	db #fd,#fd,#fd,#fd,#00,#00,#00,#00
	db #ff,#ff,#ff,#ff,#fd,#fd,#fd,#fd
	db #00,#00,#00,#00,#ff,#ff,#ff,#ff
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0e,#67,#00,#8e,#67,#00,#8e
	db #67,#00,#8e,#67,#00,#8e,#67,#00
	db #8e,#67,#00,#8e,#67,#00,#8e,#67
	db #00,#8e,#67,#00,#ef,#67,#01,#f6
	db #67,#01,#41,#68,#01,#f6,#67,#01
	db #41,#68,#01,#f6,#67,#01,#41,#68
	db #01,#f6,#67,#01,#41,#68,#00,#ef
	db #67,#80,#5a,#66,#00,#d2,#68,#00
	db #d6,#68,#00,#df,#68,#00,#df,#68
	db #00,#df,#68,#00,#df,#68,#00,#df
	db #68,#00,#df,#68,#00,#df,#68,#00
	db #ea,#68,#01,#d2,#68,#01,#ef,#68
	db #01,#f2,#68,#01,#ef,#68,#01,#0d
	db #69,#01,#3d,#69,#01,#49,#69,#01
	db #92,#69,#00,#ea,#68,#80,#96,#66
	db #00,#ef,#68,#00,#a8,#69,#00,#df
	db #69,#00,#1c,#6a,#00,#40,#6a,#00
	db #57,#6a,#00,#6d,#6a,#00,#ce,#6a
	db #00,#e3,#6a,#00,#ea,#68,#01,#f4
	db #6a,#01,#3a,#6b,#01,#52,#6b,#01
	db #3a,#6b,#01,#99,#6b,#01,#3a,#6b
	db #01,#f4,#6a,#01,#3a,#6b,#00,#ea
	db #68,#80,#d2,#66,#db,#06,#fa,#59
	db #0b,#1a,#54,#0b,#1a,#51,#0b,#19
	db #54,#0b,#19,#59,#0b,#19,#5b,#0b
	db #18,#59,#0b,#18,#54,#0b,#18,#51
	db #0b,#17,#54,#0b,#17,#59,#0b,#17
	db #5b,#0b,#16,#59,#0b,#16,#54,#0b
	db #16,#51,#0b,#15,#54,#0b,#15,#59
	db #0b,#15,#5b,#0b,#14,#59,#0b,#14
	db #54,#0b,#14,#51,#0b,#13,#54,#0b
	db #13,#59,#0b,#13,#5b,#0b,#12,#59
	db #0b,#12,#55,#0b,#12,#50,#0b,#11
	db #55,#0b,#11,#59,#0b,#11,#5b,#0b
	db #10,#d9,#00,#d5,#00,#d0,#00,#d5
	db #00,#d9,#00,#db,#00,#d9,#00,#d7
	db #00,#d2,#00,#d7,#00,#d9,#00,#db
	db #00,#d9,#00,#d7,#00,#d2,#00,#d7
	db #00,#d9,#00,#ff,#db,#00,#d9,#00
	db #d4,#00,#d1,#00,#d4,#00,#d9,#00
	db #db,#00,#d9,#00,#d4,#00,#d1,#00
	db #d4,#00,#d9,#00,#db,#00,#d9,#00
	db #d4,#00,#d1,#00,#d4,#00,#d9,#00
	db #db,#00,#d9,#00,#d4,#00,#d1,#00
	db #d4,#00,#d9,#00,#db,#00,#d9,#00
	db #d5,#00,#d0,#00,#d5,#00,#d9,#00
	db #db,#00,#d9,#00,#d5,#00,#d0,#00
	db #d5,#00,#d9,#00,#db,#00,#d9,#00
	db #d7,#00,#d2,#00,#d7,#00,#d9,#00
	db #db,#00,#d9,#00,#d7,#00,#d2,#00
	db #d7,#00,#d9,#00,#ff,#41,#5f,#10
	db #0d,#02,#2f,#ff,#28,#61,#20,#28
	db #60,#02,#74,#70,#02,#28,#60,#02
	db #28,#60,#02,#28,#60,#02,#74,#70
	db #02,#a8,#60,#a8,#60,#28,#60,#02
	db #28,#60,#02,#74,#70,#02,#28,#60
	db #02,#2d,#60,#02,#2c,#60,#02,#74
	db #70,#02,#28,#60,#02,#21,#60,#02
	db #21,#60,#02,#74,#70,#02,#21,#60
	db #02,#21,#60,#02,#21,#60,#02,#74
	db #70,#02,#a3,#60,#a3,#60,#ff,#a3
	db #6d,#02,#0d,#03,#01,#0d,#03,#01
	db #0d,#02,#01,#0d,#03,#01,#0d,#03
	db #01,#a3,#6d,#02,#0d,#03,#01,#0d
	db #03,#01,#0d,#02,#01,#0d,#03,#01
	db #0d,#03,#01,#f4,#7d,#02,#0d,#03
	db #01,#0d,#03,#01,#0d,#02,#01,#0d
	db #03,#01,#0d,#03,#01,#a3,#6d,#02
	db #0d,#03,#01,#0d,#03,#01,#0d,#02
	db #01,#0d,#03,#01,#0d,#03,#01,#a8
	db #6d,#02,#0d,#03,#01,#0d,#03,#01
	db #0d,#02,#01,#0d,#03,#01,#0d,#03
	db #01,#a7,#6d,#02,#0d,#03,#01,#0d
	db #03,#01,#0d,#02,#01,#0d,#03,#01
	db #0d,#03,#01,#f4,#7d,#02,#0d,#03
	db #01,#0d,#03,#01,#0d,#02,#01,#0d
	db #03,#01,#0d,#03,#01,#a3,#6d,#02
	db #0d,#03,#01,#0d,#03,#01,#0d,#02
	db #01,#0d,#03,#01,#0d,#03,#01,#ff
	db #0d,#08,#30,#ff,#00,#16,#3d,#3f
	db #e0,#3f,#20,#0c,#ff,#41,#2f,#00
	db #18,#3d,#20,#0c,#3f,#20,#0c,#ff
	db #41,#5f,#00,#30,#ff,#00,#30,#ff
	db #44,#21,#00,#14,#45,#20,#02,#47
	db #20,#04,#45,#20,#02,#44,#20,#02
	db #40,#20,#0e,#c2,#20,#c4,#20,#42
	db #20,#02,#ff,#44,#21,#00,#14,#45
	db #20,#02,#47,#20,#04,#4c,#20,#04
	db #cc,#20,#ce,#20,#4c,#20,#03,#4c
	db #2b,#10,#4c,#2b,#12,#4c,#2b,#14
	db #4c,#2b,#16,#4c,#2b,#14,#4c,#2b
	db #12,#4c,#2b,#30,#4e,#20,#02,#50
	db #20,#02,#ff,#00,#0c,#4e,#20,#0c
	db #4c,#20,#06,#4e,#20,#12,#ff,#ce
	db #2d,#08,#cc,#20,#c7,#20,#c4,#20
	db #c7,#20,#cc,#20,#ce,#20,#cc,#20
	db #ce,#20,#cc,#20,#c7,#20,#c4,#20
	db #c7,#20,#cc,#20,#ce,#20,#cc,#20
	db #ce,#20,#cc,#20,#c7,#20,#c4,#20
	db #c7,#20,#cc,#20,#ce,#20,#cc,#20
	db #ce,#20,#cc,#20,#c7,#20,#c4,#20
	db #c7,#20,#cc,#20,#ce,#20,#d0,#20
	db #53,#20,#0e,#d1,#20,#d0,#20,#ff
	db #4e,#20,#1e,#34,#20,#03,#36,#20
	db #03,#34,#20,#03,#2f,#20,#03,#2c
	db #20,#03,#2a,#20,#03,#ff,#35,#11
	db #60,#35,#10,#02,#35,#10,#02,#b5
	db #10,#b5,#10,#35,#10,#06,#b5,#10
	db #b5,#10,#35,#10,#02,#b5,#10,#b5
	db #10,#35,#10,#06,#35,#10,#02,#35
	db #10,#02,#b5,#10,#b5,#10,#35,#10
	db #06,#b5,#10,#b5,#10,#35,#10,#02
	db #b5,#10,#b5,#10,#ff,#35,#10,#06
	db #35,#10,#02,#35,#10,#02,#b5,#10
	db #b5,#10,#35,#10,#06,#b5,#10,#b5
	db #10,#35,#10,#02,#b5,#10,#b5,#10
	db #35,#10,#06,#35,#1b,#20,#35,#1b
	db #21,#35,#1b,#11,#35,#1b,#12,#35
	db #1b,#62,#35,#1b,#13,#35,#1b,#14
	db #35,#1b,#25,#35,#1b,#16,#35,#1b
	db #17,#ff,#59,#20,#0e,#5b,#20,#02
	db #5c,#20,#02,#5b,#20,#06,#5c,#20
	db #02,#59,#20,#0c,#d7,#20,#d4,#20
	db #d2,#20,#d0,#20,#d0,#03,#24,#52
	db #20,#04,#d1,#22,#22,#ff,#4d,#20
	db #13,#cf,#20,#d0,#20,#d2,#20,#d4
	db #20,#d7,#20,#59,#20,#0d,#5c,#2f
	db #51,#5e,#21,#60,#ff,#65,#20,#18
	db #65,#4b,#41,#5d,#4b,#43,#57,#4b
	db #45,#53,#4b,#46,#50,#4b,#47,#4d
	db #4b,#48,#ff,#d4,#20,#d2,#20,#cd
	db #20,#d2,#20,#d4,#20,#d9,#20,#d4
	db #20,#d2,#20,#cd,#20,#d2,#20,#d4
	db #20,#d9,#20,#d4,#20,#d2,#20,#cd
	db #20,#d2,#20,#d4,#20,#d9,#20,#d4
	db #20,#d2,#20,#cd,#20,#d2,#20,#d4
	db #20,#d9,#20,#d4,#20,#d2,#20,#cd
	db #20,#d2,#20,#d4,#20,#d9,#20,#d4
	db #20,#d2,#20,#cd,#20,#d2,#20,#d4
	db #20,#d9,#20,#d4,#20,#d2,#20,#cd
	db #20,#d2,#20,#d4,#20,#d9,#20,#d4
	db #20,#d2,#20,#cd,#20,#d2,#20,#d4
	db #20,#d9,#20,#ff,#51,#20,#10,#52
	db #20,#02,#54,#20,#03,#d2,#20,#51
	db #20,#02,#4d,#20,#0c,#4f,#20,#0c
	db #ff,#51,#20,#10,#52,#20,#02,#54
	db #20,#04,#d9,#20,#db,#20,#59,#20
	db #18,#ff,#40,#8f,#23,#42,#8f,#23
	db #40,#8f,#23,#42,#8f,#23,#44,#8f
	db #23,#42,#8f,#23,#44,#8f,#23,#40
	db #8f,#43,#40,#80,#02,#42,#80,#02
	db #40,#80,#02,#47,#80,#02,#45,#80
	db #02,#44,#80,#02,#40,#80,#02,#40
	db #80,#02,#42,#80,#02,#40,#80,#02
	db #42,#80,#02,#44,#80,#02,#42,#80
	db #02,#44,#80,#02,#40,#80,#02,#ff
	db #00,#06,#40,#8f,#63,#42,#8f,#63
	db #40,#8f,#63,#47,#8f,#63,#45,#8f
	db #63,#44,#8f,#63,#40,#8f,#63,#ff
	db #40,#8d,#08,#02,#42,#8f,#23,#40
	db #8f,#23,#42,#8f,#23,#44,#8f,#23
	db #42,#8f,#23,#44,#8f,#23,#40,#8f
	db #43,#40,#80,#02,#42,#80,#02,#40
	db #80,#02,#47,#80,#02,#45,#80,#02
	db #44,#80,#02,#40,#80,#02,#40,#80
	db #02,#42,#80,#02,#40,#80,#02,#42
	db #80,#02,#44,#80,#02,#42,#80,#02
	db #44,#80,#02,#40,#80,#02,#ff,#40
	db #8d,#08,#02,#42,#80,#02,#40,#80
	db #02,#42,#80,#02,#44,#80,#02,#42
	db #80,#02,#44,#80,#02,#40,#80,#04
	db #40,#80,#02,#42,#80,#02,#40,#80
	db #02,#47,#80,#02,#45,#80,#02,#44
	db #80,#02,#40,#80,#02,#40,#80,#02
	db #42,#80,#02,#40,#80,#02,#42,#80
	db #02,#44,#80,#02,#42,#80,#02,#44
	db #80,#02,#40,#80,#02,#ff
;
.music_info
	db "Demoniak 4 - The End (1994)(Arkos)(Targhan)",0
	db "ST-128 Module",0

	read "music_end.asm"
