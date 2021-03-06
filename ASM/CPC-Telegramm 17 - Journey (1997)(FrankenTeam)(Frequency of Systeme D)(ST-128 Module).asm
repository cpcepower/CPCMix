; Music of CPC-Telegramm 17 - Journey (1997)(FrankenTeam)(Frequency of Systeme D)(ST-128 Module)
; Ripped by Megachur the 17/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPC17JOU.BIN"
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
	db #40,#8a,#dc,#8a,#78,#8b,#e0,#86
	db #20,#87,#40,#87,#00,#00,#60,#87
	db #a0,#87,#c0,#87,#00,#00,#e0,#87
	db #20,#88,#40,#88,#00,#00,#e0,#87
	db #60,#88,#40,#88,#00,#00,#e0,#87
	db #80,#88,#40,#88,#00,#00,#e0,#87
	db #a0,#88,#40,#88,#1d,#03,#e0,#87
	db #c0,#88,#e0,#88,#00,#00,#00,#89
	db #40,#89,#40,#88,#00,#00,#d2,#3f
	db #a4,#1f,#a4,#1f,#d2,#df,#d2,#3f
	db #a4,#1f,#a4,#1f,#d2,#df,#d2,#3f
	db #72,#69,#92,#69,#e0,#29,#d2,#69
	db #f2,#69,#12,#6a,#d2,#df,#a4,#1f
	db #a4,#1f,#a4,#1f,#d2,#df,#a4,#1f
	db #a4,#1f,#a4,#1f,#d2,#df,#a4,#1f
	db #d2,#3f,#22,#40,#90,#00,#a2,#40
.l86c0 equ $ + 6
	db #e2,#40,#22,#41,#90,#01,#60,#89
	db #80,#89,#a0,#89,#c0,#89,#e0,#89
	db #00,#8a,#20,#8a,#d2,#3f,#d2,#3f
	db #d2,#3f,#d2,#3f,#d2,#3f,#d2,#3f
	db #d2,#3f,#d2,#3f,#d2,#3f,#00,#00
	db #50,#00,#90,#00,#d0,#00,#10,#01
	db #50,#01,#90,#01,#d0,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #60,#00,#b0,#00,#f0,#00,#20,#01
	db #40,#01,#50,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0b,#09,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#16,#01
	db #03,#01,#03,#01,#01,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0f,#0e,#0c,#09,#05,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#08,#0f
	db #0f,#0f,#0e,#0e,#0e,#0d,#0d,#0d
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#08
	db #06,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09,#0f
	db #0e,#0d,#0c,#0b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#0b,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0f,#0e
	db #0d,#06,#80,#80,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#f0,#ff
	db #d0,#ff,#a0,#ff,#60,#ff,#10,#ff
	db #b0,#fe,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#02,#02,#02,#03,#03,#03,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#01,#01
	db #02,#02,#03,#03,#04,#04,#05,#05
	db #06,#06,#07,#07,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#01,#01
	db #02,#02,#03,#03,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#14,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#14
	db #8c,#00,#43,#8c,#00,#71,#8c,#00
	db #d4,#8c,#00,#71,#8c,#00,#37,#8d
	db #00,#c2,#8d,#00,#c2,#8d,#00,#71
	db #8c,#00,#d4,#8c,#00,#71,#8c,#00
	db #37,#8d,#00,#c2,#8d,#00,#c2,#8d
	db #00,#99,#8d,#00,#c2,#8d,#00,#99
	db #8d,#00,#c2,#8d,#00,#c2,#8d,#00
	db #c2,#8d,#00,#4b,#8e,#00,#d4,#8e
	db #00,#35,#8f,#00,#35,#8f,#00,#68
	db #8f,#00,#68,#8f,#00,#71,#8c,#00
	db #d4,#8c,#00,#71,#8c,#00,#37,#8d
	db #00,#c2,#8d,#00,#c2,#8d,#00,#71
	db #8c,#00,#d4,#8c,#00,#71,#8c,#00
	db #37,#8d,#00,#99,#8d,#00,#c2,#8d
	db #00,#99,#8d,#00,#c2,#8d,#00,#c2
	db #8d,#00,#c2,#8d,#00,#4b,#8e,#00
	db #d4,#8e,#00,#35,#8f,#00,#35,#8f
	db #00,#68,#8f,#00,#68,#8f,#00,#9b
	db #8f,#00,#9b,#8f,#00,#9b,#8f,#80
	db #40,#8a,#00,#9e,#8f,#00,#00,#90
	db #00,#61,#90,#00,#e3,#90,#00,#61
	db #90,#00,#64,#91,#00,#65,#92,#00
	db #65,#92,#00,#61,#90,#00,#e3,#90
	db #00,#61,#90,#00,#64,#91,#00,#65
	db #92,#00,#65,#92,#00,#e5,#91,#00
	db #65,#92,#00,#e5,#91,#00,#65,#92
	db #00,#e7,#92,#00,#e7,#92,#00,#77
	db #93,#00,#f7,#93,#00,#80,#94,#00
	db #80,#94,#00,#e2,#94,#00,#e2,#94
	db #00,#61,#90,#00,#e3,#90,#00,#61
	db #90,#00,#64,#91,#00,#65,#92,#00
	db #65,#92,#00,#61,#90,#00,#e3,#90
	db #00,#61,#90,#00,#64,#91,#00,#e5
	db #91,#00,#65,#92,#00,#e5,#91,#00
	db #65,#92,#00,#e7,#92,#00,#e7,#92
	db #00,#77,#93,#00,#f7,#93,#00,#80
	db #94,#00,#80,#94,#00,#e2,#94,#00
	db #e2,#94,#00,#9b,#8f,#00,#9b,#8f
	db #00,#9b,#8f,#80,#dc,#8a,#00,#44
	db #95,#00,#4c,#95,#00,#54,#95,#00
	db #d6,#95,#00,#54,#95,#00,#54,#95
	db #00,#54,#95,#00,#54,#95,#00,#54
	db #95,#00,#d6,#95,#00,#54,#95,#00
	db #54,#95,#00,#54,#95,#00,#54,#95
	db #00,#54,#95,#00,#54,#95,#00,#54
	db #95,#00,#54,#95,#00,#54,#95,#00
	db #54,#95,#00,#4b,#8e,#00,#58,#96
	db #00,#35,#8f,#00,#35,#8f,#00,#bb
	db #96,#00,#bb,#96,#00,#54,#95,#00
	db #d6,#95,#00,#54,#95,#00,#54,#95
	db #00,#54,#95,#00,#54,#95,#00,#54
	db #95,#00,#d6,#95,#00,#54,#95,#00
	db #54,#95,#00,#54,#95,#00,#54,#95
	db #00,#54,#95,#00,#54,#95,#00,#54
	db #95,#00,#54,#95,#00,#4b,#8e,#00
	db #58,#96,#00,#35,#8f,#00,#35,#8f
	db #00,#bb,#96,#00,#bb,#96,#00,#9b
	db #8f,#00,#9b,#8f,#00,#9b,#8f,#80
	db #78,#8b,#44,#31,#00,#10,#45,#30
	db #02,#45,#30,#02,#44,#30,#04,#42
	db #30,#03,#40,#30,#03,#42,#30,#0e
	db #3b,#30,#02,#3f,#30,#02,#44,#30
	db #02,#44,#30,#02,#42,#30,#04,#40
	db #30,#03,#3f,#30,#03,#40,#30,#02
	db #ff,#44,#30,#10,#45,#30,#02,#45
	db #30,#02,#44,#30,#04,#42,#30,#03
	db #40,#30,#03,#42,#30,#0e,#3b,#30
	db #02,#3f,#30,#02,#44,#30,#02,#44
	db #30,#02,#42,#30,#04,#40,#30,#03
	db #3f,#30,#03,#40,#30,#02,#ff,#00
	db #02,#3d,#31,#20,#bd,#30,#bf,#30
	db #40,#30,#02,#44,#30,#02,#40,#30
	db #02,#44,#3b,#22,#40,#30,#02,#44
	db #3b,#20,#44,#30,#02,#47,#30,#02
	db #c0,#30,#44,#30,#02,#40,#3b,#12
	db #44,#30,#02,#40,#3b,#14,#c4,#30
	db #40,#30,#02,#42,#3b,#20,#42,#30
	db #02,#44,#30,#02,#c2,#30,#40,#30
	db #02,#3f,#30,#02,#40,#3b,#22,#3f
	db #30,#03,#40,#3b,#20,#40,#30,#02
	db #42,#30,#02,#c0,#30,#3f,#30,#02
	db #3d,#30,#03,#3c,#5f,#25,#44,#51
	db #20,#ff,#00,#02,#3d,#31,#20,#bd
	db #30,#bf,#30,#40,#30,#02,#44,#30
	db #02,#40,#30,#02,#44,#3b,#22,#40
	db #30,#02,#44,#3b,#20,#44,#30,#02
	db #47,#30,#02,#c0,#30,#44,#30,#02
	db #40,#3b,#12,#44,#30,#02,#40,#3b
	db #14,#c4,#30,#40,#30,#02,#40,#3b
	db #20,#40,#30,#02,#42,#30,#02,#c0
	db #30,#3f,#30,#02,#3d,#30,#02,#3f
	db #3b,#22,#3d,#30,#03,#42,#3b,#20
	db #42,#30,#02,#42,#30,#02,#c4,#30
	db #42,#30,#05,#55,#4f,#12,#d0,#40
	db #cc,#40,#c9,#40,#ff,#00,#02,#3d
	db #31,#20,#bd,#30,#bf,#30,#40,#30
	db #02,#44,#30,#02,#40,#30,#02,#44
	db #3b,#22,#40,#30,#02,#44,#3b,#20
	db #44,#30,#02,#47,#30,#02,#c0,#30
	db #44,#30,#02,#40,#3b,#12,#44,#30
	db #02,#40,#3b,#14,#c4,#30,#40,#30
	db #02,#40,#3b,#20,#40,#30,#02,#42
	db #30,#02,#c0,#30,#3f,#30,#02,#3d
	db #30,#02,#3f,#3b,#22,#3d,#30,#03
	db #42,#3b,#20,#42,#30,#02,#42,#30
	db #02,#c4,#30,#42,#30,#05,#cc,#50
	db #c0,#50,#cb,#50,#bf,#50,#ff,#49
	db #51,#80,#48,#5f,#83,#49,#51,#70
	db #48,#5f,#94,#4e,#51,#a0,#4c,#50
	db #02,#4b,#50,#02,#4c,#50,#02,#49
	db #50,#0a,#55,#4f,#11,#d7,#40,#d8
	db #40,#d5,#40,#d7,#40,#d8,#40,#ff
	db #55,#4f,#12,#d0,#40,#cc,#40,#d5
	db #40,#d0,#40,#cc,#40,#d5,#40,#d0
	db #40,#4c,#4b,#13,#d5,#40,#d0,#40
	db #cc,#40,#d5,#40,#d0,#40,#cc,#40
	db #ce,#40,#58,#4b,#10,#d3,#40,#d0
	db #40,#d8,#40,#d3,#40,#d0,#40,#d8
	db #40,#d3,#40,#50,#4b,#13,#d8,#40
	db #d3,#40,#d0,#40,#d8,#40,#d3,#40
	db #d0,#40,#d1,#40,#57,#4b,#10,#d3
	db #40,#ce,#40,#d7,#40,#d3,#40,#ce
	db #40,#d7,#40,#d3,#40,#4e,#4b,#13
	db #d7,#40,#d3,#40,#ce,#40,#d7,#40
	db #d3,#40,#ce,#40,#d7,#40,#55,#4b
	db #10,#d2,#40,#ce,#40,#d5,#40,#d2
	db #40,#ce,#40,#d5,#40,#d2,#40,#ce
	db #40,#40,#31,#10,#bf,#30,#c0,#30
	db #c2,#30,#c0,#30,#bf,#30,#c0,#30
	db #ff,#55,#4f,#16,#d0,#40,#cc,#40
	db #d5,#40,#d0,#40,#cc,#40,#d5,#40
	db #d0,#40,#4c,#4b,#13,#d5,#40,#d0
	db #40,#cc,#40,#d5,#40,#d0,#40,#cc
	db #40,#ce,#40,#58,#4b,#10,#d3,#40
	db #d0,#40,#d8,#40,#d3,#40,#d0,#40
	db #d8,#40,#d3,#40,#50,#4b,#13,#d8
	db #40,#d3,#40,#d0,#40,#d8,#40,#d3
	db #40,#d0,#40,#d1,#40,#57,#4b,#10
	db #d3,#40,#ce,#40,#d7,#40,#d3,#40
	db #ce,#40,#d7,#40,#d3,#40,#4e,#4b
	db #13,#d7,#40,#d3,#40,#ce,#40,#d7
	db #40,#d3,#40,#ce,#40,#d7,#40,#55
	db #4b,#10,#d2,#40,#ce,#40,#d5,#40
	db #d2,#40,#ce,#40,#d5,#40,#d2,#40
	db #ce,#40,#40,#31,#10,#bf,#30,#c0
	db #30,#c2,#30,#c0,#30,#bf,#30,#c0
	db #30,#ff,#55,#4f,#22,#4c,#40,#02
	db #50,#40,#02,#55,#4b,#22,#4c,#40
	db #02,#50,#40,#02,#55,#4b,#24,#4c
	db #40,#02,#58,#4b,#20,#50,#40,#02
	db #53,#40,#02,#58,#4b,#22,#50,#40
	db #02,#53,#40,#02,#58,#4b,#24,#50
	db #40,#02,#57,#4b,#20,#4e,#40,#02
	db #53,#40,#02,#57,#4b,#22,#4e,#40
	db #02,#53,#40,#02,#57,#4b,#24,#4e
	db #40,#02,#55,#4b,#20,#4e,#40,#02
	db #52,#40,#02,#55,#4b,#22,#4e,#40
	db #02,#52,#40,#02,#55,#4b,#24,#4e
	db #4b,#22,#ff,#00,#03,#68,#7a,#06
	db #02,#fe,#03,#68,#7a,#03,#02,#fe
	db #0a,#68,#7a,#06,#02,#fe,#02,#68
	db #7a,#06,#02,#fe,#0a,#66,#7a,#05
	db #02,#fe,#02,#66,#7a,#05,#02,#fe
	db #0a,#64,#7a,#06,#02,#fe,#02,#64
	db #7a,#09,#02,#fe,#06,#ff,#00,#02
	db #68,#78,#06,#02,#fe,#02,#68,#78
	db #03,#02,#fe,#0a,#68,#7a,#06,#02
	db #fe,#02,#68,#7a,#06,#02,#fe,#0a
	db #66,#78,#05,#02,#fe,#02,#66,#78
	db #05,#02,#fe,#0a,#64,#7a,#06,#02
	db #fe,#02,#64,#7a,#09,#02,#fe,#08
	db #ff,#00,#40,#ff,#38,#0d,#06,#02
	db #34,#21,#20,#44,#10,#02,#34,#20
	db #02,#38,#00,#02,#34,#20,#02,#44
	db #10,#02,#34,#20,#02,#38,#00,#02
	db #3b,#20,#02,#44,#10,#02,#3b,#20
	db #02,#38,#00,#02,#3b,#20,#02,#44
	db #10,#02,#3b,#20,#02,#38,#00,#02
	db #36,#20,#02,#44,#10,#02,#36,#20
	db #02,#38,#00,#02,#36,#20,#02,#44
	db #10,#02,#36,#20,#02,#38,#00,#02
	db #3b,#20,#02,#44,#10,#02,#3b,#20
	db #02,#38,#00,#02,#3b,#20,#02,#44
	db #10,#02,#3b,#20,#02,#ff,#38,#00
	db #02,#34,#20,#02,#44,#10,#02,#34
	db #20,#02,#38,#00,#02,#34,#20,#02
	db #44,#10,#02,#34,#20,#02,#38,#00
	db #02,#3b,#20,#02,#44,#10,#02,#3b
	db #20,#02,#38,#00,#02,#3b,#20,#02
	db #44,#10,#02,#3b,#20,#02,#38,#00
	db #02,#36,#20,#02,#44,#10,#02,#36
	db #20,#02,#38,#00,#02,#36,#20,#02
	db #44,#10,#02,#36,#20,#02,#38,#00
	db #02,#3b,#20,#02,#44,#10,#02,#3b
	db #20,#02,#38,#00,#02,#3b,#20,#02
	db #44,#10,#02,#3b,#20,#02,#ff,#b8
	db #0d,#06,#d0,#60,#d0,#60,#d0,#60
	db #c4,#10,#d0,#60,#d0,#60,#f4,#60
	db #b8,#00,#d0,#60,#d0,#60,#f4,#60
	db #c4,#10,#d0,#60,#d0,#60,#f4,#60
	db #b8,#00,#d0,#60,#d0,#60,#d0,#60
	db #c4,#10,#d0,#60,#d0,#60,#f4,#60
	db #b8,#00,#d0,#60,#d0,#60,#f4,#60
	db #c4,#10,#d0,#60,#d0,#60,#f4,#60
	db #b8,#00,#ce,#60,#ce,#60,#ce,#60
	db #c4,#10,#ce,#60,#ce,#60,#f4,#60
	db #b8,#00,#ce,#60,#ce,#60,#f4,#60
	db #c4,#10,#ce,#60,#ce,#60,#f4,#60
	db #b8,#00,#cc,#60,#cc,#60,#cc,#60
	db #c4,#10,#cc,#60,#cc,#60,#f4,#60
	db #b8,#00,#cc,#60,#cc,#60,#f4,#60
	db #c4,#10,#b8,#00,#f4,#60,#c4,#10
	db #ff,#b8,#00,#d0,#60,#d0,#60,#d0
	db #60,#c4,#10,#d0,#60,#d0,#60,#f4
	db #60,#b8,#00,#d0,#60,#d0,#60,#f4
	db #60,#c4,#10,#d0,#60,#d0,#60,#f4
	db #60,#b8,#00,#d0,#60,#d0,#60,#d0
	db #60,#c4,#10,#d0,#60,#d0,#60,#f4
	db #60,#b8,#00,#d0,#60,#d0,#60,#f4
	db #60,#c4,#10,#d0,#60,#d0,#60,#f4
	db #60,#b8,#00,#ce,#60,#ce,#60,#ce
	db #60,#c4,#10,#ce,#60,#ce,#60,#f4
	db #60,#b8,#00,#ce,#60,#ce,#60,#f4
	db #60,#c4,#10,#ce,#60,#ce,#60,#f4
	db #60,#b8,#00,#cc,#60,#cc,#60,#cc
	db #60,#c4,#10,#cc,#60,#cc,#60,#f4
	db #60,#b8,#00,#cc,#60,#cc,#60,#f4
	db #60,#c4,#10,#b8,#00,#f4,#60,#c4
	db #10,#ff,#b8,#00,#d0,#60,#d0,#60
	db #d0,#60,#c4,#10,#d0,#60,#d0,#60
	db #f4,#60,#b8,#00,#d0,#60,#d0,#60
	db #f4,#60,#c4,#10,#d0,#60,#d0,#60
	db #f4,#60,#b8,#00,#d0,#60,#d0,#60
	db #d0,#60,#c4,#10,#d0,#60,#d0,#60
	db #f4,#60,#b8,#00,#d0,#60,#d0,#60
	db #f4,#60,#c4,#10,#d0,#60,#d0,#60
	db #f4,#60,#b8,#00,#ce,#60,#ce,#60
	db #ce,#60,#c4,#10,#ce,#60,#ce,#60
	db #f4,#60,#b8,#00,#ce,#60,#ce,#60
	db #f4,#60,#c4,#10,#ce,#60,#ce,#60
	db #f4,#60,#b8,#00,#cc,#60,#cc,#60
	db #cc,#60,#c4,#10,#cc,#60,#cc,#60
	db #f4,#60,#b8,#00,#cc,#60,#cc,#60
	db #f4,#60,#c4,#10,#b8,#00,#c4,#10
	db #c4,#10,#ff,#b8,#00,#d0,#60,#d0
	db #60,#d0,#60,#c4,#10,#d0,#60,#d0
	db #60,#f4,#60,#b8,#00,#d0,#60,#d0
	db #60,#f4,#60,#c4,#10,#d0,#60,#d0
	db #60,#f4,#60,#b8,#00,#d0,#60,#d0
	db #60,#d0,#60,#c4,#10,#d0,#60,#d0
	db #60,#f4,#60,#b8,#00,#d0,#60,#d0
	db #60,#f4,#60,#c4,#10,#d0,#60,#d0
	db #60,#f4,#60,#b8,#00,#ce,#60,#ce
	db #60,#ce,#60,#c4,#10,#ce,#60,#ce
	db #60,#f4,#60,#b8,#00,#ce,#60,#ce
	db #60,#f4,#60,#c4,#10,#ce,#60,#ce
	db #60,#f4,#60,#b8,#00,#cc,#60,#cc
	db #60,#cc,#60,#c4,#10,#cc,#60,#cc
	db #60,#f4,#60,#b8,#00,#cc,#60,#cc
	db #60,#f4,#60,#c4,#10,#44,#10,#02
	db #c4,#10,#ff,#b8,#0d,#06,#d0,#60
	db #d0,#60,#d5,#60,#c4,#10,#d5,#60
	db #d0,#60,#d0,#60,#b8,#00,#f4,#60
	db #f4,#60,#f4,#60,#c4,#10,#f4,#60
	db #f4,#60,#f4,#60,#b8,#00,#d0,#60
	db #d0,#60,#d3,#60,#c4,#10,#d3,#60
	db #d0,#60,#d0,#60,#b8,#00,#f4,#60
	db #f4,#60,#f4,#60,#c4,#10,#f4,#60
	db #f4,#60,#f4,#60,#b8,#00,#ce,#60
	db #ce,#60,#d3,#60,#c4,#10,#d3,#60
	db #d3,#60,#ce,#60,#b8,#00,#f4,#60
	db #f4,#60,#f4,#60,#c4,#10,#f4,#60
	db #f4,#60,#f4,#60,#b8,#00,#c9,#60
	db #c9,#60,#cc,#60,#c4,#10,#cc,#60
	db #c9,#60,#c9,#60,#b8,#00,#c9,#60
	db #c9,#60,#cc,#60,#c4,#10,#cc,#60
	db #cb,#60,#c4,#10,#ff,#b8,#00,#d0
	db #60,#e8,#7a,#06,#50,#61,#10,#c4
	db #10,#d0,#60,#e8,#7a,#03,#74,#61
	db #10,#b8,#00,#d0,#60,#d0,#60,#f4
	db #60,#c4,#10,#d0,#60,#d0,#60,#f4
	db #60,#b8,#00,#d0,#60,#e8,#7a,#06
	db #50,#61,#10,#c4,#10,#d0,#60,#e8
	db #7a,#06,#74,#61,#10,#b8,#00,#d0
	db #60,#d0,#60,#f4,#60,#c4,#10,#d0
	db #60,#d0,#60,#f4,#60,#b8,#00,#ce
	db #60,#e6,#7a,#05,#4e,#61,#10,#c4
	db #10,#ce,#60,#e6,#7a,#05,#74,#61
	db #10,#b8,#00,#ce,#60,#ce,#60,#f4
	db #60,#c4,#10,#ce,#60,#ce,#60,#f4
	db #60,#b8,#00,#cc,#60,#e4,#7a,#06
	db #4c,#61,#10,#c4,#10,#cc,#60,#e4
	db #7a,#09,#74,#61,#10,#b8,#00,#cc
	db #60,#cc,#60,#f4,#60,#c4,#10,#44
	db #10,#02,#c4,#10,#ff,#b8,#00,#d0
	db #60,#d0,#60,#d0,#60,#c4,#10,#d0
	db #60,#d0,#60,#f4,#60,#b8,#00,#d0
	db #60,#d0,#60,#f4,#60,#c4,#10,#d0
	db #60,#d0,#60,#f4,#60,#b8,#00,#d0
	db #60,#d0,#60,#d0,#60,#c4,#10,#d0
	db #60,#d0,#60,#f4,#60,#b8,#00,#d0
	db #60,#d0,#60,#f4,#60,#c4,#10,#d0
	db #60,#d0,#60,#f4,#60,#b8,#00,#ce
	db #60,#ce,#60,#ce,#60,#c4,#10,#ce
	db #60,#ce,#60,#f4,#60,#b8,#00,#ce
	db #60,#ce,#60,#f4,#60,#c4,#10,#ce
	db #60,#ce,#60,#f4,#60,#b8,#00,#cc
	db #60,#cc,#60,#cc,#60,#c4,#10,#cc
	db #60,#cc,#60,#f4,#60,#b8,#00,#cc
	db #60,#cc,#60,#f4,#60,#c4,#10,#c4
	db #10,#38,#00,#02,#ff,#55,#3f,#12
	db #d0,#30,#cc,#30,#d5,#30,#d0,#30
	db #cc,#30,#d5,#30,#d0,#30,#4c,#3b
	db #13,#d5,#30,#d0,#30,#cc,#30,#d5
	db #30,#d0,#30,#cc,#30,#ce,#30,#58
	db #3b,#10,#d3,#30,#d0,#30,#d8,#30
	db #d3,#30,#d0,#30,#d8,#30,#d3,#30
	db #50,#3b,#13,#d8,#30,#d3,#30,#d0
	db #30,#d8,#30,#d3,#30,#d0,#30,#d1
	db #30,#57,#3b,#10,#d3,#30,#ce,#30
	db #d7,#30,#d3,#30,#ce,#30,#d7,#30
	db #d3,#30,#4e,#3b,#13,#d7,#30,#d3
	db #30,#ce,#30,#d7,#30,#d3,#30,#ce
	db #30,#d7,#30,#55,#3b,#10,#d2,#30
	db #ce,#30,#d5,#30,#d2,#30,#ce,#30
	db #55,#3b,#13,#d2,#30,#ce,#30,#d5
	db #30,#d2,#30,#ce,#30,#d5,#30,#d2
	db #30,#ce,#30,#d7,#30,#ff,#38,#0d
	db #03,#02,#49,#61,#20,#49,#60,#02
	db #49,#60,#02,#44,#10,#02,#49,#60
	db #02,#49,#60,#02,#38,#00,#02,#38
	db #00,#02,#44,#10,#02,#49,#60,#02
	db #38,#00,#02,#44,#10,#02,#49,#60
	db #02,#38,#00,#02,#49,#60,#02,#38
	db #00,#02,#49,#60,#02,#49,#60,#02
	db #49,#60,#02,#44,#10,#02,#49,#60
	db #02,#49,#60,#02,#49,#60,#02,#38
	db #00,#02,#44,#10,#02,#49,#60,#02
	db #38,#00,#02,#44,#10,#02,#44,#10
	db #02,#38,#00,#02,#38,#00,#02,#ff
	db #38,#0d,#03,#02,#49,#61,#20,#49
	db #60,#02,#49,#60,#02,#44,#10,#02
	db #49,#60,#02,#49,#60,#02,#38,#00
	db #02,#38,#00,#02,#44,#10,#02,#49
	db #60,#02,#38,#00,#02,#44,#10,#02
	db #49,#60,#02,#38,#00,#02,#49,#60
	db #02,#38,#00,#02,#49,#60,#02,#49
	db #60,#02,#49,#60,#02,#44,#10,#02
	db #49,#60,#02,#49,#60,#02,#49,#60
	db #02,#38,#00,#02,#44,#10,#02,#49
	db #60,#02,#38,#00,#02,#44,#10,#02
	db #44,#10,#02,#44,#10,#02,#44,#10
	db #02,#ff,#40,#51,#00,#10,#3b,#50
	db #30,#ff,#40,#5f,#00,#10,#3b,#50
	db #30,#ff,#31,#2f,#11,#b1,#20,#bd
	db #20,#b1,#20,#b1,#20,#bd,#20,#b1
	db #20,#b1,#20,#bd,#20,#b1,#20,#b1
	db #20,#bd,#20,#b1,#20,#b1,#20,#bd
	db #20,#b1,#20,#b4,#20,#b4,#20,#c0
	db #20,#b4,#20,#b4,#20,#c0,#20,#b4
	db #20,#b4,#20,#c0,#20,#b4,#20,#b4
	db #20,#c0,#20,#b4,#20,#b4,#20,#c0
	db #20,#b4,#20,#af,#20,#af,#20,#bb
	db #20,#af,#20,#af,#20,#bb,#20,#af
	db #20,#af,#20,#bb,#20,#af,#20,#af
	db #20,#bb,#20,#af,#20,#af,#20,#bb
	db #20,#af,#20,#aa,#20,#aa,#20,#b6
	db #20,#aa,#20,#aa,#20,#b6,#20,#aa
	db #20,#aa,#20,#b6,#20,#aa,#20,#aa
	db #20,#b6,#20,#aa,#20,#aa,#20,#b6
	db #20,#aa,#20,#ff,#31,#2f,#11,#b1
	db #20,#bd,#20,#b1,#20,#b1,#20,#bd
	db #20,#b1,#20,#b1,#20,#bd,#20,#b1
	db #20,#b1,#20,#bd,#20,#b1,#20,#b1
	db #20,#bd,#20,#b1,#20,#b4,#20,#b4
	db #20,#c0,#20,#b4,#20,#b4,#20,#c0
	db #20,#b4,#20,#b4,#20,#c0,#20,#b4
	db #20,#b4,#20,#c0,#20,#b4,#20,#b4
	db #20,#c0,#20,#b4,#20,#af,#20,#af
	db #20,#bb,#20,#af,#20,#af,#20,#bb
	db #20,#af,#20,#af,#20,#bb,#20,#af
	db #20,#af,#20,#bb,#20,#af,#20,#af
	db #20,#bb,#20,#af,#20,#ad,#20,#ad
	db #20,#b9,#20,#ad,#20,#ad,#20,#b9
	db #20,#ad,#20,#ad,#20,#b9,#20,#ad
	db #20,#ad,#20,#b9,#20,#ad,#20,#ad
	db #20,#b9,#20,#ad,#20,#ff,#00,#01
	db #50,#4f,#22,#55,#4b,#21,#4c,#40
	db #02,#50,#40,#02,#55,#4b,#23,#4c
	db #40,#02,#50,#40,#02,#4e,#40,#02
	db #53,#4b,#20,#58,#4b,#21,#50,#40
	db #02,#53,#40,#02,#58,#4b,#23,#50
	db #40,#02,#53,#40,#02,#51,#40,#02
	db #53,#4b,#20,#57,#4b,#21,#4e,#40
	db #02,#53,#40,#02,#57,#4b,#23,#4e
	db #40,#02,#53,#40,#02,#57,#40,#02
	db #52,#4b,#20,#55,#4b,#21,#4e,#40
	db #02,#52,#40,#02,#55,#4b,#23,#4e
	db #40,#02,#52,#40,#02,#57,#4b,#12
	db #ff,#00,#03,#68,#7a,#06,#02,#fe
	db #03,#68,#7a,#03,#02,#fe,#0a,#68
	db #78,#06,#02,#fe,#02,#68,#78,#06
	db #02,#fe,#0a,#66,#7a,#05,#02,#fe
	db #02,#66,#7a,#05,#02,#fe,#0a,#64
	db #78,#06,#02,#fe,#02,#64,#78,#09
	db #02,#fe,#06,#ff
;
.music_info
	db "CPC-Telegramm 17 - Journey (1997)(FrankenTeam)(Frequency of Systeme D)",0
	db "ST-128 Module",0

	read "music_end.asm"
