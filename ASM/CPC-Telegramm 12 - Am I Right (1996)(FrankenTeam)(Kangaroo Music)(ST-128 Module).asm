; Music of CPC-Telegramm 12 - Am I Right (1996)(FrankenTeam)(Kangaroo Music)(ST-128 Module)
; Ripped by Megachur the 17/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPC12AIR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

	jp l8009
	jp l809d
	jp l8081
;
.init_music
.l8009
;
	xor a
	ld hl,l85b4
	call l807a
	ld hl,l85e2
	call l807a
	ld hl,l8610
	call l807a
	ld ix,l85b0
	ld iy,l863a
	ld de,#002e
	ld b,#03
.l8029
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
	djnz l8029
	ld hl,l84c9
	ld (hl),#07
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l84c5),hl
	ld (l84c7),hl
	ld a,#0c
	ld c,d
	call l84a5
	ld a,#0d
	ld c,d
	jp l84a5
.l807a
	ld b,#2a
.l807c
	ld (hl),a
	inc hl
	djnz l807c
	ret
;
.stop_music
.l8081
;
	ld a,#07
	ld c,#3f
	call l84a5
	ld a,#08
	ld c,#00
	call l84a5
	ld a,#09
	ld c,#00
	call l84a5
	ld a,#0a
	ld c,#00
	jp l84a5
;
.play_music
.l809d
;
	ld hl,l84cb
	dec (hl)
	ld ix,l85b0
	ld bc,l85be
	call l813f
	ld ix,l85de
	ld bc,l85ec
	call l813f
	ld ix,l860c
	ld bc,l861a
	call l813f
	ld hl,l84c4
	ld de,l84cb
	ld b,#06
	call l811c
	ld b,#07
	call l811c
	ld b,#0b
	call l811c
	ld b,#0d
	call l811c
	ld de,l84cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l85cf
	call l80f5
	ld hl,l85fd
	call l80f5
	ld hl,l862b
.l80f5
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
	jr nz,l810a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l810a
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
.l811c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l84a5
.l8127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l84a5
.l813f
	ld a,(l84cb)
	or a
	jp nz,l81f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l81f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l8127
	or a
	jp z,l81ec
	ld r,a
	and #7f
	cp #10
	jr c,l81c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l833f
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
	jr z,l81a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l81a0
	rrca
	ld c,a
	ld hl,l8640
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
	jr z,l81bf
	ld (ix+#1e),b
.l81bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l81e0
.l81c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l84d0
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
.l81e0 equ $ + 1
	ld (hl),#7a
	or a
	jr nz,l81ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l81ee
.l81ec
	ld a,(hl)
	inc hl
.l81ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l81f7
	ld a,(ix+#17)
	or a
	jr nz,l820d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l820d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l8223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l8223
	ld a,(ix+#0d)
	or a
	jr z,l8231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l824f
.l8231
	ld a,(ix+#1a)
	or a
	jp z,l8256
	ld c,a
	cp #03
	jr nz,l823e
	xor a
.l823e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l824f
	ld a,(ix+#18)
	dec c
	jr z,l824f
	ld a,(ix+#19)
.l824f
	add (ix+#07)
	ld b,d
	call l833f
.l8256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l827e
	dec (ix+#1b)
	jr nz,l827e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l82b6
.l827e
	ld a,(ix+#29)
	or a
	jr z,l82b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l82ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l82a4
	ld (ix+#29),#ff
	jr l82ad
.l82a4
	cp (ix+#2b)
	jr nz,l82ad
	ld (ix+#29),#01
.l82ad
	ld b,d
	or a
	jp p,l82b3
	dec b
.l82b3
	ld c,a
	jr l82c1
.l82b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l82c1
	pop hl
	bit 7,(ix+#14)
	jr z,l82ca
	ld h,d
	ld l,d
.l82ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l84a5
	ld c,h
	ld a,(ix+#02)
	call l84a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l831d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l830c
	dec (ix+#09)
	jr nz,l830c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l8304
	xor a
	jr l8309
.l8304
	cp #10
	jr nz,l8309
	dec a
.l8309
	ld (ix+#1e),a
.l830c
	ld a,b
	sub (ix+#1e)
	jr nc,l8313
	xor a
.l8313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l84a5
.l831d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l84cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l833b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l833b
	ld (l84cc),hl
	ret
.l833f
	ld hl,l84ee
	cp #61
	jr nc,l8349
	add a
	ld c,a
	add hl,bc
.l8349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l8353
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l8478
	ld (ix+#1e),a
	jp l81e0
.l8365
	dec b
.l8366
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l8371
	neg
.l8371
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
	jp l81e0
.l8387
	dec b
	jr l838b
.l838a
	inc b
.l838b
	call l8478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l81e0
.l839a
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
	jp l845d
.l83ab
	ld a,(hl)
	inc hl
	or a
	jr z,l83cd
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
.l83cd
	ld (ix+#29),a
	jp l81e0
.l83d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l84cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l84ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l81e0
.l83ed
	ld a,(hl)
	or a
	jr z,l83fe
	call l847a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l81e0
.l83fe
	ld hl,#0101
	ld (l84ca),hl
	jp l81e0
.l8407
	call l8478
	ld (ix+#1e),a
	jp l81e0
.l8410
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l8489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l8489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l81e0
.l8432
	ld a,(hl)
	inc hl
	ld (l84c9),a
	jp l81e0
.l843a
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
	jp l81e0
.l8459
	call l8478
	add a
.l845d
	ld b,#00
	ld c,a
	push hl
	ld hl,l86c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l81e0
.l8478
	ld a,(hl)
	inc hl
.l847a
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
.l8489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l8640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l84a5
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
.l84c4
	ret
.l84cc equ $ + 7
.l84cb equ $ + 6
.l84ca equ $ + 5
.l84c9 equ $ + 4
.l84c7 equ $ + 2
.l84c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l84cf equ $ + 2
.l84ce equ $ + 1
	db #38,#00,#00
.l84d0
	dw l8353,l8366,l8365,l838a
	dw l8387,l839a,l83ab,l83d3
	dw l83ed,l83d3,l8407,l8410
	dw l8432,l843a,l8459
.l84ee
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
.l85b0 equ $ + 2
	dw #000f,#0008
.l85b4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l85be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85cf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l85e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8610 equ $ + 6
.l860c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l861a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l862b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8640 equ $ + 6
.l863a
	db #20,#89,#6b,#89,#b6,#89,#e0,#86
	db #20,#87,#40,#87,#00,#00,#e0,#86
	db #60,#87,#40,#87,#00,#00,#80,#87
	db #c0,#87,#e0,#87,#00,#00,#d2,#3f
	db #92,#68,#d2,#68,#c0,#27,#d9,#57
	db #a4,#1f,#a4,#1f,#d2,#df,#e0,#86
	db #00,#88,#40,#87,#0b,#15,#e0,#86
	db #20,#88,#40,#87,#0e,#12,#d2,#3f
	db #a4,#1f,#a4,#1f,#d2,#df,#d2,#3f
	db #a4,#1f,#a4,#1f,#d2,#df,#d2,#3f
	db #a4,#1f,#a4,#1f,#d2,#df,#d2,#3f
	db #a4,#1f,#f2,#68,#40,#29,#32,#69
	db #a4,#1f,#a4,#1f,#80,#29,#72,#69
	db #92,#69,#a4,#1f,#d2,#df,#b2,#69
	db #a4,#1f,#a4,#1f,#00,#2a,#f2,#69
	db #d2,#3f,#02,#40,#60,#00,#62,#40
.l86c0 equ $ + 6
	db #92,#40,#c2,#40,#20,#01,#40,#88
	db #60,#88,#80,#88,#a0,#88,#c0,#88
	db #e0,#88,#00,#89,#72,#42,#a2,#42
	db #d2,#42,#f2,#42,#12,#43,#32,#43
	db #42,#43,#52,#43,#62,#43,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#0b,#0b,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #09,#07,#05,#03,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#0b
	db #0b,#0b,#0a,#0a,#0a,#0a,#0a,#09
	db #09,#09,#09,#09,#08,#08,#08,#08
	db #08,#07,#06,#04,#03,#02,#00,#00
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#70,#03
	db #80,#03,#90,#03,#a0,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0d,#0c,#0c,#0c,#0b,#0b,#0b
	db #0a,#0a,#0a,#09,#09,#09,#08,#08
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#01,#00,#05,#00
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#06,#06
	db #06,#07,#07,#07,#08,#08,#08,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #0a,#0a,#0b,#0b,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#00,#fd
	db #f8,#00,#fd,#f8,#00,#fd,#f8,#00
	db #fd,#f8,#00,#fd,#f8,#00,#fd,#f8
	db #00,#fd,#f8,#00,#fd,#f8,#00,#fd
	db #f8,#00,#fd,#f8,#00,#fd,#00,#fd
	db #f9,#00,#fd,#f9,#00,#fd,#f9,#00
	db #fd,#f9,#00,#fd,#f9,#00,#fd,#f9
	db #00,#fd,#f9,#00,#fd,#f9,#00,#fd
	db #f9,#00,#fd,#f9,#00,#fd,#00,#fc
	db #f7,#00,#fc,#f7,#00,#fc,#f7,#00
	db #fc,#f7,#00,#fc,#f7,#00,#fc,#f7
	db #00,#fc,#f7,#00,#fc,#f7,#00,#fc
	db #f7,#00,#fc,#f7,#00,#fc,#00,#fd
	db #f8,#00,#fd,#f8,#00,#fd,#f8,#00
	db #fd,#f8,#00,#fd,#f8,#00,#fd,#f8
	db #00,#fd,#f8,#00,#fd,#f8,#00,#fd
	db #f8,#00,#fd,#f8,#00,#fd,#00,#fd
	db #f9,#00,#fd,#f9,#00,#fd,#f9,#00
	db #fd,#f9,#00,#fd,#f9,#00,#fd,#f9
	db #00,#fd,#f9,#00,#fd,#f9,#00,#fd
	db #f9,#00,#fd,#f9,#00,#fd,#00,#fb
	db #f8,#00,#fb,#f8,#00,#fb,#f8,#00
	db #fb,#f8,#00,#fb,#f8,#00,#fb,#f8
	db #00,#fb,#f8,#00,#fb,#f8,#00,#fb
	db #f8,#00,#fb,#f8,#00,#fb,#00,#fb
	db #f7,#00,#fb,#f7,#00,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#f7,#00,#fb,#f7
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #f7,#00,#fb,#f7,#00,#fb,#00,#01
	db #8a,#00,#01,#8a,#00,#04,#8a,#00
	db #17,#8a,#00,#28,#8a,#00,#04,#8a
	db #00,#17,#8a,#00,#28,#8a,#00,#39
	db #8a,#00,#42,#8a,#00,#39,#8a,#00
	db #42,#8a,#00,#4b,#8a,#00,#5e,#8a
	db #00,#28,#8a,#00,#39,#8a,#00,#42
	db #8a,#00,#39,#8a,#00,#42,#8a,#00
	db #71,#8a,#00,#82,#8a,#00,#91,#8a
	db #00,#2e,#8b,#00,#2e,#8b,#80,#26
	db #89,#00,#cb,#8b,#00,#08,#8c,#00
	db #81,#8c,#00,#f7,#8c,#00,#67,#8d
	db #00,#bd,#8d,#00,#f7,#8c,#00,#35
	db #8e,#00,#91,#8e,#00,#2e,#8f,#00
	db #91,#8e,#00,#b9,#8f,#00,#3b,#90
	db #00,#75,#90,#00,#be,#90,#00,#91
	db #8e,#00,#2e,#8f,#00,#91,#8e,#00
	db #b9,#8f,#00,#2e,#8b,#00,#2e,#8b
	db #00,#20,#91,#00,#55,#91,#00,#8d
	db #91,#80,#71,#89,#00,#e9,#91,#00
	db #52,#92,#00,#c3,#92,#00,#4c,#93
	db #00,#d5,#93,#00,#c3,#92,#00,#4c
	db #93,#00,#d5,#93,#00,#5e,#94,#00
	db #e7,#94,#00,#5e,#94,#00,#e7,#94
	db #00,#70,#95,#00,#f9,#95,#00,#82
	db #96,#00,#5e,#94,#00,#e7,#94,#00
	db #5e,#94,#00,#e7,#94,#00,#0b,#97
	db #00,#0b,#97,#00,#70,#95,#00,#f9
	db #95,#00,#82,#96,#80,#bc,#89,#00
	db #40,#ff,#5a,#5f,#00,#10,#5a,#5f
	db #81,#57,#5f,#82,#55,#5f,#01,#10
	db #55,#5f,#00,#10,#ff,#57,#5f,#02
	db #10,#59,#5f,#02,#10,#5a,#5f,#00
	db #10,#57,#5f,#02,#10,#ff,#55,#5f
	db #04,#10,#55,#5f,#03,#10,#53,#5f
	db #03,#10,#52,#5f,#02,#10,#ff,#55
	db #5f,#05,#20,#52,#5f,#02,#20,#ff
	db #54,#5f,#02,#20,#59,#5f,#02,#20
	db #ff,#4e,#5f,#05,#10,#4e,#5f,#c1
	db #4b,#5f,#42,#49,#5f,#01,#10,#4d
	db #5f,#02,#10,#ff,#53,#5f,#05,#10
	db #55,#5f,#05,#10,#57,#5f,#c6,#52
	db #5f,#42,#50,#5f,#01,#10,#ff,#55
	db #5f,#04,#10,#55,#5f,#03,#10,#53
	db #5f,#05,#10,#52,#5f,#02,#10,#ff
	db #55,#5f,#01,#10,#5a,#5f,#81,#5c
	db #5f,#81,#5e,#5f,#02,#20,#ff,#4e
	db #11,#10,#49,#1b,#13,#55,#1b,#13
	db #4e,#1b,#13,#4e,#1b,#10,#55,#1b
	db #15,#4e,#1b,#15,#4e,#1b,#13,#4e
	db #1b,#20,#4e,#1b,#15,#4e,#1b,#30
	db #49,#1b,#10,#55,#1b,#10,#4e,#1b
	db #10,#49,#1b,#13,#55,#1b,#13,#4e
	db #1b,#13,#4e,#1b,#10,#55,#1b,#15
	db #4e,#1b,#15,#4e,#1b,#13,#4e,#1b
	db #20,#4e,#1b,#15,#4e,#1b,#30,#49
	db #1b,#10,#55,#1b,#10,#4e,#1b,#10
	db #4e,#1b,#13,#55,#1b,#13,#4e,#1b
	db #13,#4e,#1b,#10,#55,#1b,#15,#4e
	db #1b,#15,#4e,#1b,#13,#4e,#1b,#20
	db #4e,#1b,#15,#4e,#1b,#30,#49,#1b
	db #10,#55,#1b,#10,#4e,#1b,#10,#49
	db #1b,#13,#55,#1b,#13,#4e,#1b,#13
	db #4e,#1b,#10,#55,#1b,#15,#4e,#1b
	db #15,#4e,#1b,#13,#4e,#1b,#20,#4e
	db #1b,#15,#4e,#1b,#30,#49,#1b,#10
	db #55,#1b,#10,#ff,#4e,#1b,#10,#49
	db #1b,#13,#55,#1b,#13,#4e,#1b,#13
	db #4e,#1b,#10,#55,#1b,#15,#4e,#1b
	db #15,#4e,#1b,#13,#4e,#1b,#20,#4e
	db #1b,#15,#4e,#1b,#30,#49,#1b,#10
	db #55,#1b,#10,#4e,#1b,#10,#49,#1b
	db #13,#55,#1b,#13,#4e,#1b,#13,#4e
	db #1b,#10,#55,#1b,#15,#4e,#1b,#15
	db #4e,#1b,#13,#4e,#1b,#20,#4e,#1b
	db #15,#4e,#1b,#30,#49,#1b,#10,#55
	db #1b,#10,#4e,#1b,#10,#4e,#1b,#13
	db #55,#1b,#13,#4e,#1b,#13,#4e,#1b
	db #10,#55,#1b,#15,#4e,#1b,#15,#4e
	db #1b,#13,#4e,#1b,#20,#4e,#1b,#15
	db #4e,#1b,#30,#49,#1b,#10,#55,#1b
	db #10,#4e,#1b,#10,#49,#1b,#13,#55
	db #1b,#13,#4e,#1b,#13,#4e,#1b,#10
	db #55,#1b,#15,#4e,#1b,#15,#4e,#1b
	db #13,#4e,#1b,#20,#4e,#1b,#15,#4e
	db #1b,#30,#49,#1b,#10,#55,#1b,#10
	db #ff,#55,#1b,#42,#55,#10,#04,#55
	db #10,#03,#55,#10,#03,#49,#10,#02
	db #55,#10,#04,#55,#10,#04,#55,#10
	db #03,#55,#10,#03,#49,#10,#02,#55
	db #10,#04,#55,#10,#04,#55,#10,#03
	db #55,#10,#03,#49,#10,#02,#55,#10
	db #04,#55,#10,#04,#55,#10,#03,#55
	db #10,#03,#49,#10,#02,#ff,#55,#1b
	db #10,#49,#1b,#23,#55,#1b,#13,#55
	db #1b,#20,#55,#1b,#15,#55,#1b,#13
	db #55,#1b,#20,#55,#1b,#15,#55,#1b
	db #30,#49,#1b,#20,#55,#1b,#10,#49
	db #1b,#23,#55,#1b,#13,#55,#1b,#20
	db #55,#1b,#15,#55,#1b,#13,#55,#1b
	db #20,#55,#1b,#15,#55,#1b,#30,#49
	db #1b,#20,#55,#1b,#10,#49,#1b,#23
	db #55,#1b,#13,#55,#1b,#20,#55,#1b
	db #15,#55,#1b,#13,#55,#1b,#20,#55
	db #1b,#13,#55,#1b,#30,#49,#1b,#20
	db #55,#1b,#10,#49,#1b,#23,#55,#1b
	db #13,#55,#1b,#20,#55,#1b,#15,#55
	db #1b,#13,#55,#1b,#20,#55,#1b,#15
	db #55,#1b,#30,#49,#1b,#20,#ff,#46
	db #1b,#30,#46,#1b,#13,#46,#1b,#20
	db #46,#1b,#15,#46,#1b,#33,#46,#1b
	db #20,#46,#1b,#10,#46,#1b,#13,#46
	db #1b,#10,#46,#1b,#13,#46,#1b,#15
	db #46,#1b,#13,#47,#1b,#20,#46,#1b
	db #15,#47,#1b,#33,#47,#1b,#35,#47
	db #1b,#17,#49,#1b,#20,#47,#1b,#20
	db #46,#1b,#10,#47,#1b,#23,#46,#1b
	db #13,#46,#1b,#20,#46,#1b,#15,#46
	db #1b,#13,#49,#1b,#20,#46,#1b,#10
	db #49,#1b,#23,#46,#1b,#13,#41,#1b
	db #20,#46,#1b,#15,#41,#1b,#33,#41
	db #1b,#35,#41,#1b,#37,#3d,#1b,#20
	db #44,#1b,#10,#3d,#1b,#13,#42,#1b
	db #10,#44,#1b,#13,#ff,#3d,#1b,#15
	db #42,#1b,#13,#44,#1b,#25,#42,#1b
	db #85,#46,#1b,#20,#44,#1b,#10,#46
	db #1b,#23,#44,#1b,#13,#46,#1b,#25
	db #44,#1b,#45,#44,#1b,#20,#46,#1b
	db #10,#44,#1b,#13,#47,#1b,#10,#46
	db #1b,#13,#46,#1b,#10,#47,#1b,#13
	db #46,#1b,#15,#46,#1b,#13,#47,#1b
	db #25,#46,#1b,#65,#41,#1b,#20,#3d
	db #1b,#10,#41,#1b,#13,#44,#1b,#10
	db #3d,#1b,#13,#42,#1b,#10,#44,#1b
	db #13,#3d,#1b,#15,#42,#1b,#13,#44
	db #1b,#25,#42,#1b,#45,#3f,#1b,#20
	db #3b,#1b,#10,#3f,#1b,#13,#3d,#1b
	db #10,#3b,#1b,#13,#ff,#3f,#1b,#15
	db #3d,#1b,#13,#3b,#1b,#25,#3d,#1b
	db #65,#3d,#1b,#20,#42,#1b,#10,#3d
	db #1b,#13,#41,#1b,#10,#42,#1b,#13
	db #3d,#1b,#15,#41,#1b,#13,#42,#1b
	db #25,#41,#1b,#25,#41,#1b,#20,#41
	db #1b,#10,#41,#1b,#13,#3f,#1b,#10
	db #41,#1b,#13,#41,#1b,#10,#3f,#1b
	db #13,#44,#1b,#10,#41,#1b,#13,#3f
	db #1b,#15,#44,#1b,#13,#42,#1b,#20
	db #44,#1b,#15,#42,#1b,#33,#42,#1b
	db #05,#18,#ff,#00,#04,#46,#1b,#20
	db #46,#1b,#10,#46,#1b,#13,#46,#1b
	db #10,#46,#1b,#13,#46,#1b,#15,#46
	db #1b,#13,#46,#1b,#20,#49,#1b,#10
	db #46,#1b,#23,#49,#1b,#13,#47,#1b
	db #20,#49,#1b,#15,#47,#1b,#33,#47
	db #1b,#45,#49,#1b,#20,#47,#1b,#10
	db #49,#1b,#13,#46,#1b,#10,#47,#1b
	db #13,#49,#1b,#15,#46,#1b,#13,#46
	db #1b,#20,#46,#1b,#15,#46,#1b,#13
	db #49,#1b,#20,#46,#1b,#10,#49,#1b
	db #23,#46,#1b,#13,#41,#1b,#20,#46
	db #1b,#15,#41,#1b,#33,#41,#1b,#35
	db #41,#1b,#36,#3d,#1b,#20,#44,#1b
	db #10,#3d,#1b,#13,#42,#1b,#10,#44
	db #1b,#13,#ff,#3f,#1b,#15,#3d,#1b
	db #13,#3b,#1b,#25,#3d,#1b,#65,#3d
	db #1b,#20,#42,#1b,#10,#3d,#1b,#13
	db #41,#1b,#10,#42,#1b,#13,#3d,#1b
	db #15,#41,#1b,#13,#42,#1b,#25,#41
	db #1b,#25,#41,#1b,#20,#41,#1b,#10
	db #41,#1b,#13,#3f,#1b,#10,#41,#1b
	db #13,#41,#1b,#10,#3f,#1b,#13,#44
	db #1b,#10,#41,#1b,#13,#3f,#1b,#15
	db #44,#1b,#13,#42,#1b,#20,#44,#1b
	db #15,#42,#1b,#33,#42,#1b,#05,#16
	db #44,#1b,#10,#42,#1b,#10,#ff,#44
	db #1b,#10,#44,#1b,#13,#42,#1b,#10
	db #44,#1b,#10,#44,#1b,#15,#42,#1b
	db #10,#46,#1b,#20,#44,#1b,#10,#46
	db #1b,#23,#44,#1b,#13,#46,#1b,#25
	db #44,#1b,#10,#42,#1b,#10,#44,#1b
	db #10,#44,#1b,#13,#46,#1b,#10,#48
	db #1b,#10,#44,#1b,#15,#49,#1b,#10
	db #44,#1b,#20,#49,#1b,#13,#44,#1b
	db #23,#49,#1b,#15,#44,#1b,#25,#46
	db #1b,#10,#44,#1b,#10,#46,#1b,#10
	db #46,#1b,#13,#46,#1b,#10,#46,#1b
	db #10,#46,#1b,#13,#44,#1b,#10,#47
	db #1b,#10,#46,#1b,#15,#46,#1b,#10
	db #47,#1b,#23,#46,#1b,#13,#47,#1b
	db #25,#46,#1b,#10,#44,#1b,#10,#47
	db #1b,#10,#46,#1b,#13,#46,#1b,#10
	db #46,#1b,#10,#46,#1b,#13,#44,#1b
	db #10,#46,#1b,#10,#46,#1b,#15,#44
	db #1b,#13,#46,#1b,#23,#44,#1b,#15
	db #46,#1b,#45,#ff,#48,#1b,#10,#44
	db #1b,#13,#48,#1b,#10,#48,#1b,#10
	db #44,#1b,#15,#46,#1b,#10,#49,#1b
	db #20,#48,#1b,#10,#49,#1b,#23,#48
	db #1b,#13,#49,#1b,#25,#48,#1b,#10
	db #46,#1b,#10,#49,#1b,#10,#48,#1b
	db #13,#48,#1b,#10,#48,#1b,#10,#48
	db #1b,#15,#46,#1b,#10,#48,#1b,#23
	db #48,#1b,#10,#48,#1b,#25,#49,#1b
	db #30,#4b,#1b,#20,#4d,#1b,#10,#4b
	db #1b,#13,#49,#1b,#10,#49,#1b,#10
	db #4b,#1b,#15,#46,#1b,#10,#46,#1b
	db #20,#44,#1b,#10,#46,#1b,#23,#44
	db #1b,#13,#46,#1b,#25,#44,#1b,#25
	db #46,#1b,#20,#44,#1b,#10,#44,#1b
	db #20,#42,#1b,#10,#44,#1b,#23,#41
	db #1b,#10,#44,#1b,#25,#41,#1b,#33
	db #44,#1b,#10,#42,#1b,#10,#ff,#48
	db #1b,#20,#48,#1b,#10,#48,#1b,#20
	db #46,#1b,#10,#49,#1b,#20,#48,#1b
	db #10,#49,#1b,#23,#48,#1b,#13,#49
	db #1b,#25,#48,#1b,#10,#46,#1b,#10
	db #49,#1b,#10,#48,#1b,#13,#48,#1b
	db #10,#48,#1b,#10,#48,#1b,#15,#46
	db #1b,#10,#48,#1b,#23,#48,#1b,#10
	db #48,#1b,#25,#49,#1b,#30,#4b,#1b
	db #20,#4d,#1b,#10,#4b,#1b,#13,#49
	db #1b,#10,#49,#1b,#10,#4b,#1b,#15
	db #46,#1b,#10,#46,#1b,#20,#44,#1b
	db #10,#46,#1b,#23,#44,#1b,#13,#46
	db #1b,#25,#44,#1b,#25,#46,#1b,#20
	db #44,#1b,#10,#44,#1b,#20,#42,#1b
	db #10,#44,#1b,#23,#41,#1b,#10,#44
	db #1b,#25,#41,#1b,#33,#41,#1b,#25
	db #ff,#46,#6b,#a0,#44,#6b,#20,#46
	db #6b,#20,#47,#6b,#c0,#49,#6b,#20
	db #47,#6b,#20,#46,#6b,#40,#55,#1b
	db #24,#53,#1b,#24,#52,#1b,#44,#44
	db #6b,#20,#42,#6b,#20,#41,#6b,#40
	db #50,#1b,#24,#4e,#1b,#24,#4d,#1b
	db #44,#3f,#6b,#20,#3d,#6b,#20,#3f
	db #6b,#20,#ff,#3f,#60,#0a,#41,#60
	db #02,#42,#60,#02,#44,#60,#04,#4d
	db #1b,#24,#4e,#1b,#23,#50,#1b,#43
	db #42,#60,#02,#44,#60,#02,#46,#60
	db #04,#4e,#1b,#24,#50,#1b,#24,#52
	db #1b,#44,#44,#60,#02,#42,#60,#02
	db #44,#60,#04,#50,#1b,#24,#4e,#1b
	db #24,#4d,#1b,#44,#3f,#1b,#20,#3b
	db #1b,#10,#3f,#1b,#13,#3d,#1b,#10
	db #3b,#1b,#13,#ff,#3f,#1b,#15,#3d
	db #1b,#13,#3b,#1b,#25,#3d,#1b,#35
	db #3d,#1b,#37,#3d,#1b,#20,#42,#1b
	db #10,#3d,#1b,#13,#41,#1b,#10,#42
	db #1b,#13,#3d,#1b,#15,#41,#1b,#13
	db #42,#1b,#25,#41,#1b,#25,#41,#1b
	db #20,#41,#1b,#10,#41,#1b,#13,#3f
	db #1b,#10,#41,#1b,#13,#41,#1b,#10
	db #3f,#1b,#13,#44,#1b,#10,#41,#1b
	db #13,#3f,#1b,#15,#44,#1b,#13,#42
	db #1b,#20,#44,#1b,#15,#42,#1b,#33
	db #42,#1b,#35,#42,#1b,#07,#13,#44
	db #1b,#10,#42,#1b,#10,#ff,#46,#68
	db #15,#0a,#44,#68,#18,#02,#46,#68
	db #15,#02,#47,#68,#14,#0c,#49,#68
	db #12,#02,#47,#68,#14,#02,#46,#68
	db #15,#0c,#44,#68,#18,#02,#42,#68
	db #1b,#02,#41,#68,#1c,#0c,#3f,#68
	db #1f,#02,#3d,#68,#23,#02,#3f,#68
	db #1f,#02,#ff,#3f,#68,#1f,#0a,#41
	db #68,#1c,#02,#42,#68,#1b,#02,#44
	db #68,#18,#0c,#42,#68,#1b,#02,#44
	db #68,#18,#02,#46,#68,#15,#0c,#44
	db #68,#18,#02,#42,#68,#1b,#02,#44
	db #68,#18,#0c,#3f,#11,#20,#3b,#1b
	db #10,#3f,#1b,#13,#3d,#1b,#10,#3b
	db #1b,#13,#ff,#3f,#1b,#15,#3d,#1b
	db #13,#3b,#1b,#25,#3d,#1b,#35,#3d
	db #1b,#37,#3d,#1b,#20,#42,#1b,#10
	db #3d,#1b,#13,#41,#1b,#10,#42,#1b
	db #13,#3d,#1b,#15,#41,#1b,#13,#42
	db #1b,#25,#41,#1b,#25,#41,#1b,#20
	db #41,#1b,#10,#41,#1b,#13,#3f,#1b
	db #10,#41,#1b,#13,#41,#1b,#10,#3f
	db #1b,#13,#44,#1b,#10,#41,#1b,#13
	db #3f,#1b,#15,#44,#1b,#13,#42,#1b
	db #20,#44,#1b,#15,#42,#1b,#33,#42
	db #1b,#35,#42,#1b,#07,#15,#ff,#2e
	db #00,#02,#ae,#00,#2e,#00,#02,#ae
	db #00,#2e,#00,#02,#2e,#00,#02,#ae
	db #00,#2e,#00,#02,#ae,#00,#2e,#00
	db #02,#2f,#00,#02,#af,#00,#2f,#00
	db #02,#af,#00,#2f,#00,#02,#2f,#00
	db #02,#af,#00,#2f,#00,#02,#af,#00
	db #2f,#00,#02,#33,#00,#02,#b3,#00
	db #33,#00,#02,#b3,#00,#33,#00,#02
	db #33,#00,#02,#b3,#00,#33,#00,#02
	db #b3,#00,#33,#00,#02,#2f,#00,#02
	db #af,#00,#2f,#00,#02,#af,#00,#2f
	db #00,#02,#2f,#00,#02,#af,#00,#2f
	db #00,#02,#af,#00,#2f,#00,#02,#ff
	db #2e,#00,#02,#ae,#00,#ae,#00,#c0
	db #20,#ae,#00,#2e,#00,#02,#2e,#00
	db #02,#ae,#00,#ae,#00,#c0,#20,#ae
	db #00,#2e,#00,#02,#2f,#00,#02,#af
	db #00,#af,#00,#c0,#20,#af,#00,#2f
	db #00,#02,#2f,#00,#02,#af,#00,#af
	db #00,#c0,#20,#af,#00,#2f,#00,#02
	db #33,#00,#02,#b3,#00,#b3,#00,#c0
	db #20,#b3,#00,#33,#00,#02,#33,#00
	db #02,#b3,#00,#b3,#00,#c0,#20,#b3
	db #00,#33,#00,#02,#2f,#00,#02,#af
	db #00,#af,#00,#c0,#20,#af,#00,#2f
	db #00,#02,#2f,#00,#02,#af,#00,#af
	db #00,#c0,#20,#af,#00,#2f,#00,#02
	db #ff,#2e,#00,#02,#ae,#00,#ae,#00
	db #40,#2b,#10,#ae,#00,#ae,#00,#40
	db #2b,#13,#2e,#01,#20,#ae,#00,#ae
	db #00,#40,#2b,#10,#ae,#00,#ae,#00
	db #40,#2b,#13,#2f,#00,#02,#af,#00
	db #af,#00,#40,#2b,#10,#af,#00,#af
	db #00,#40,#2b,#13,#2f,#00,#02,#af
	db #00,#af,#00,#40,#2b,#10,#af,#00
	db #af,#00,#40,#2b,#13,#33,#00,#02
	db #b3,#00,#b3,#00,#40,#2b,#10,#b3
	db #00,#b3,#00,#40,#2b,#13,#33,#00
	db #02,#b3,#00,#b3,#00,#40,#2b,#10
	db #b3,#00,#b3,#00,#40,#2b,#13,#31
	db #00,#02,#b1,#00,#b1,#00,#40,#2b
	db #10,#b1,#00,#b1,#00,#40,#2b,#13
	db #31,#00,#02,#b1,#00,#b1,#00,#40
	db #2b,#10,#b1,#00,#b1,#00,#40,#2b
	db #13,#ff,#2f,#00,#02,#af,#00,#af
	db #00,#40,#2b,#10,#af,#00,#af,#00
	db #40,#2b,#13,#2f,#01,#20,#af,#00
	db #af,#00,#40,#2b,#10,#af,#00,#af
	db #00,#40,#2b,#13,#31,#00,#02,#b1
	db #00,#b1,#00,#40,#2b,#10,#b1,#00
	db #b1,#00,#40,#2b,#13,#31,#00,#02
	db #b1,#00,#b1,#00,#40,#2b,#10,#b1
	db #00,#b1,#00,#40,#2b,#13,#33,#00
	db #02,#b3,#00,#b3,#00,#40,#2b,#10
	db #b3,#00,#b3,#00,#40,#2b,#13,#33
	db #00,#02,#b3,#00,#b3,#00,#40,#2b
	db #10,#b3,#00,#b3,#00,#40,#2b,#13
	db #2f,#00,#02,#af,#00,#af,#00,#40
	db #2b,#10,#af,#00,#af,#00,#40,#2b
	db #13,#2f,#00,#02,#af,#00,#af,#00
	db #40,#2b,#10,#af,#00,#af,#00,#40
	db #2b,#13,#ff,#2e,#00,#02,#ae,#00
	db #ae,#00,#40,#2b,#10,#ae,#00,#ae
	db #00,#40,#2b,#13,#2e,#01,#20,#ae
	db #00,#ae,#00,#40,#2b,#10,#ae,#00
	db #ae,#00,#40,#2b,#13,#31,#00,#02
	db #b1,#00,#b1,#00,#40,#2b,#10,#b1
	db #00,#b1,#00,#40,#2b,#13,#31,#00
	db #02,#b1,#00,#b1,#00,#40,#2b,#10
	db #b1,#00,#b1,#00,#40,#2b,#13,#2f
	db #00,#02,#af,#00,#af,#00,#40,#2b
	db #10,#af,#00,#af,#00,#40,#2b,#13
	db #2f,#00,#02,#af,#00,#af,#00,#40
	db #2b,#10,#af,#00,#af,#00,#40,#2b
	db #13,#2a,#00,#02,#aa,#00,#aa,#00
	db #40,#2b,#10,#aa,#00,#aa,#00,#40
	db #2b,#13,#2a,#00,#02,#aa,#00,#aa
	db #00,#40,#2b,#10,#aa,#00,#aa,#00
	db #40,#2b,#13,#ff,#25,#00,#02,#a5
	db #00,#a5,#00,#40,#2b,#10,#a5,#00
	db #a5,#00,#40,#2b,#13,#25,#01,#20
	db #a5,#00,#a5,#00,#40,#2b,#10,#a5
	db #00,#a5,#00,#40,#2b,#13,#25,#00
	db #02,#a5,#00,#a5,#00,#40,#2b,#10
	db #a5,#00,#a5,#00,#40,#2b,#13,#25
	db #00,#02,#a5,#00,#a5,#00,#40,#2b
	db #10,#a5,#00,#a5,#00,#40,#2b,#13
	db #2a,#00,#02,#aa,#00,#aa,#00,#40
	db #2b,#10,#aa,#00,#aa,#00,#40,#2b
	db #13,#2a,#00,#02,#aa,#00,#aa,#00
	db #40,#2b,#10,#aa,#00,#aa,#00,#40
	db #2b,#13,#2a,#00,#02,#aa,#00,#aa
	db #00,#40,#2b,#10,#aa,#00,#aa,#00
	db #40,#2b,#13,#2a,#00,#02,#aa,#00
	db #aa,#00,#40,#2b,#10,#aa,#00,#aa
	db #00,#40,#2b,#13,#ff,#2c,#00,#02
	db #ac,#00,#ac,#00,#40,#2b,#10,#ac
	db #00,#ac,#00,#40,#2b,#13,#2c,#01
	db #20,#ac,#00,#ac,#00,#40,#2b,#10
	db #ac,#00,#ac,#00,#40,#2b,#13,#2c
	db #00,#02,#ac,#00,#ac,#00,#40,#2b
	db #10,#ac,#00,#ac,#00,#40,#2b,#13
	db #2c,#00,#02,#ac,#00,#ac,#00,#40
	db #2b,#10,#ac,#00,#ac,#00,#40,#2b
	db #13,#31,#00,#02,#b1,#00,#b1,#00
	db #40,#2b,#10,#b1,#00,#b1,#00,#40
	db #2b,#13,#31,#00,#02,#b1,#00,#b1
	db #00,#40,#2b,#10,#b1,#00,#b1,#00
	db #40,#2b,#13,#31,#00,#02,#b1,#00
	db #b1,#00,#40,#2b,#10,#b1,#00,#b1
	db #00,#40,#2b,#13,#31,#00,#02,#b1
	db #00,#b1,#00,#40,#2b,#10,#b1,#00
	db #b1,#00,#40,#2b,#13,#ff,#2e,#00
	db #02,#ae,#00,#ae,#00,#40,#2b,#10
	db #ae,#00,#ae,#00,#40,#2b,#13,#2e
	db #01,#20,#ae,#00,#ae,#00,#40,#2b
	db #10,#ae,#00,#ae,#00,#40,#2b,#13
	db #2f,#00,#02,#af,#00,#af,#00,#40
	db #2b,#10,#af,#00,#af,#00,#40,#2b
	db #13,#2f,#00,#02,#af,#00,#af,#00
	db #40,#2b,#10,#af,#00,#af,#00,#40
	db #2b,#13,#2a,#00,#02,#aa,#00,#aa
	db #00,#40,#2b,#10,#aa,#00,#aa,#00
	db #40,#2b,#13,#2a,#00,#02,#aa,#00
	db #aa,#00,#40,#2b,#10,#aa,#00,#aa
	db #00,#40,#2b,#13,#25,#00,#02,#a5
	db #00,#a5,#00,#40,#2b,#10,#a5,#00
	db #a5,#00,#40,#2b,#13,#25,#00,#02
	db #a5,#00,#a5,#00,#40,#2b,#10,#a5
	db #00,#a5,#00,#40,#2b,#13,#ff,#2f
	db #00,#02,#af,#00,#af,#00,#40,#2b
	db #10,#af,#00,#af,#00,#40,#2b,#13
	db #2f,#01,#20,#af,#00,#af,#00,#40
	db #2b,#10,#af,#00,#af,#00,#40,#2b
	db #13,#31,#00,#02,#b1,#00,#b1,#00
	db #40,#2b,#10,#b1,#00,#b1,#00,#40
	db #2b,#13,#31,#00,#02,#b1,#00,#b1
	db #00,#40,#2b,#10,#b1,#00,#b1,#00
	db #40,#2b,#13,#33,#00,#02,#b3,#00
	db #b3,#00,#40,#2b,#10,#b3,#00,#b3
	db #00,#40,#2b,#13,#33,#00,#02,#b3
	db #00,#b3,#00,#40,#2b,#10,#b3,#00
	db #b3,#00,#40,#2b,#13,#31,#00,#02
	db #b1,#00,#b1,#00,#40,#2b,#10,#b1
	db #00,#b1,#00,#40,#2b,#13,#31,#00
	db #02,#b1,#00,#b1,#00,#40,#2b,#10
	db #b1,#00,#b1,#00,#40,#2b,#13,#ff
	db #2a,#00,#02,#aa,#00,#aa,#00,#40
	db #2b,#10,#aa,#00,#aa,#00,#40,#2b
	db #13,#2a,#01,#20,#aa,#00,#aa,#00
	db #40,#2b,#10,#aa,#00,#aa,#00,#40
	db #2b,#13,#2e,#00,#02,#ae,#00,#ae
	db #00,#40,#2b,#10,#ae,#00,#ae,#00
	db #40,#2b,#13,#2e,#00,#02,#ae,#00
	db #ae,#00,#40,#2b,#10,#ae,#00,#ae
	db #00,#40,#2b,#13,#2f,#00,#02,#af
	db #00,#af,#00,#40,#2b,#10,#af,#00
	db #af,#00,#40,#2b,#13,#2f,#00,#02
	db #af,#00,#af,#00,#40,#2b,#10,#af
	db #00,#af,#00,#40,#2b,#13,#2a,#00
	db #02,#aa,#00,#aa,#00,#40,#2b,#10
	db #aa,#00,#aa,#00,#40,#2b,#13,#2a
	db #00,#02,#aa,#00,#aa,#00,#40,#2b
	db #10,#aa,#00,#aa,#00,#40,#2b,#13
	db #ff,#2a,#10,#02,#aa,#10,#aa,#10
	db #40,#2b,#10,#aa,#10,#aa,#10,#40
	db #2b,#13,#2a,#11,#20,#aa,#10,#aa
	db #10,#40,#2b,#10,#aa,#10,#aa,#10
	db #40,#2b,#13,#2a,#10,#02,#aa,#10
	db #aa,#10,#40,#2b,#10,#aa,#10,#aa
	db #10,#40,#2b,#13,#2a,#10,#02,#aa
	db #10,#aa,#10,#40,#2b,#10,#aa,#10
	db #aa,#10,#40,#2b,#13,#2a,#10,#02
	db #aa,#10,#aa,#10,#40,#2b,#10,#aa
	db #10,#aa,#10,#40,#2b,#13,#2a,#10
	db #02,#aa,#10,#aa,#10,#40,#2b,#10
	db #aa,#10,#aa,#10,#40,#2b,#13,#2a
	db #10,#02,#aa,#10,#aa,#10,#40,#2b
	db #10,#aa,#10,#aa,#10,#40,#2b,#13
	db #2a,#10,#02,#aa,#10,#aa,#10,#40
	db #2b,#10,#aa,#10,#aa,#10,#40,#2b
	db #13,#ff,#00,#00,#00,#00,#00,#00
;
.music_info
	db "CPC-Telegramm 12 - Am I Right (1996)(FrankenTeam)(Kangaroo Music)",0
	db "ST-128 Module",0

	read "music_end.asm"
