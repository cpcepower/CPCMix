; Music of Epsilon Tome 2 - Intro (1996)(Power System)(Epsilon)(ST-128 Module)
; Ripped by Megachur the 31/03/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EPSILT2I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 31
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2022
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
	add b
	add e
	add h
	add l
	add (hl)
	add h
.l81e0
	ld a,d
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
	db #e0,#88,#13,#89,#46,#89,#e0,#86
	db #20,#87,#40,#87,#00,#00,#d2,#3f
	db #a4,#3f,#a4,#3f,#d2,#ff,#13,#3c
	db #32,#88,#72,#88,#c0,#48,#52,#40
	db #a0,#3c,#a0,#3c,#bf,#4b,#d4,#3f
	db #a4,#3f,#a4,#3f,#d2,#ff,#60,#87
	db #a0,#87,#c0,#87,#c0,#00,#e0,#87
	db #20,#88,#40,#88,#00,#00,#d2,#3f
	db #a4,#3f,#a4,#3f,#d7,#fb,#60,#88
	db #a0,#88,#c0,#88,#80,#00,#ce,#3c
	db #a0,#3c,#91,#8b,#d4,#ff,#d2,#3f
	db #a4,#3f,#a4,#3f,#d2,#ff,#a4,#3f
	db #a4,#3f,#a4,#3f,#d2,#ff,#a4,#82
	db #27,#40,#a4,#3f,#d2,#ff,#a4,#3f
	db #a4,#3f,#a9,#3b,#a1,#cb,#2b,#0f
	db #52,#40,#d2,#40,#80,#01,#d2,#41
.l86c0 equ $ + 6
	db #52,#42,#d2,#42,#00,#04,#d2,#3f
	db #d2,#3f,#d2,#3f,#d2,#3f,#d2,#3f
	db #d2,#3f,#d2,#3f,#d2,#3f,#d2,#3f
	db #d2,#3f,#d2,#3f,#d2,#3f,#d2,#3f
	db #d2,#3f,#d2,#3f,#d2,#3f,#80,#00
	db #00,#01,#80,#01,#00,#02,#80,#02
	db #00,#03,#00,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #65,#01,#3e,#01,#00,#00,#c3,#04
	db #65,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0d,#0c,#0b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#07,#00
	db #00,#07,#08,#08,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0e,#0d,#0e,#0d,#0d,#0d,#0d
	db #0b,#0c,#0d,#0c,#0c,#0b,#0c,#0b
	db #0b,#0a,#0b,#09,#0a,#08,#09,#08
	db #07,#05,#02,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0c,#07
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#03,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#1b
	db #8b,#00,#1b,#8b,#00,#d1,#8a,#00
	db #d1,#8a,#00,#87,#8a,#00,#87,#8a
	db #00,#3d,#8a,#00,#3d,#8a,#00,#9d
	db #8b,#00,#9d,#8b,#00,#79,#89,#00
	db #79,#89,#00,#db,#8b,#00,#db,#8b
	db #00,#db,#89,#00,#db,#89,#80,#e0
	db #88,#00,#25,#8c,#00,#25,#8c,#00
	db #25,#8c,#00,#25,#8c,#00,#25,#8c
	db #00,#25,#8c,#00,#25,#8c,#00,#25
	db #8c,#00,#25,#8c,#00,#25,#8c,#00
	db #25,#8c,#00,#25,#8c,#00,#25,#8c
	db #00,#25,#8c,#00,#25,#8c,#00,#25
	db #8c,#80,#13,#89,#00,#a6,#8c,#00
	db #a6,#8c,#00,#a6,#8c,#00,#a6,#8c
	db #00,#a6,#8c,#00,#a6,#8c,#00,#a6
	db #8c,#00,#a6,#8c,#00,#a6,#8c,#00
	db #a6,#8c,#00,#a6,#8c,#00,#a6,#8c
	db #00,#a6,#8c,#00,#a6,#8c,#00,#a6
	db #8c,#00,#a6,#8c,#80,#46,#89,#40
	db #6e,#0c,#02,#43,#60,#02,#40,#60
	db #02,#43,#60,#02,#47,#60,#02,#43
	db #60,#02,#40,#60,#02,#43,#60,#02
	db #43,#60,#02,#47,#60,#02,#43,#60
	db #02,#47,#60,#02,#4a,#60,#02,#47
	db #60,#02,#43,#60,#02,#47,#60,#02
	db #47,#60,#02,#4a,#60,#02,#47,#60
	db #02,#4a,#60,#02,#4e,#60,#02,#4a
	db #60,#02,#47,#60,#02,#4a,#60,#02
	db #45,#60,#02,#48,#60,#02,#45,#60
	db #02,#48,#60,#02,#4c,#60,#02,#48
	db #60,#02,#45,#60,#02,#48,#60,#02
	db #ff,#40,#6e,#0c,#02,#4c,#60,#02
	db #47,#60,#02,#45,#60,#02,#4c,#60
	db #02,#47,#60,#02,#45,#60,#02,#4c
	db #60,#02,#43,#60,#02,#4f,#60,#02
	db #4a,#60,#02,#48,#60,#02,#4f,#60
	db #02,#4a,#60,#02,#48,#60,#02,#4f
	db #60,#02,#47,#60,#02,#53,#60,#02
	db #4e,#60,#02,#4c,#60,#02,#53,#60
	db #02,#4e,#60,#02,#4c,#60,#02,#53
	db #60,#02,#45,#60,#02,#51,#60,#02
	db #4c,#60,#02,#4a,#60,#02,#51,#60
	db #02,#4c,#60,#02,#4a,#60,#02,#51
	db #60,#02,#ff,#4c,#6e,#0c,#04,#40
	db #60,#04,#4c,#60,#02,#40,#60,#02
	db #4c,#60,#02,#53,#60,#02,#4f,#60
	db #04,#43,#60,#04,#4f,#60,#02,#43
	db #60,#02,#4f,#60,#02,#56,#60,#02
	db #53,#60,#04,#47,#60,#04,#53,#60
	db #02,#47,#60,#02,#53,#60,#02,#52
	db #60,#02,#51,#60,#04,#45,#60,#04
	db #51,#60,#02,#45,#60,#02,#51,#60
	db #02,#54,#60,#02,#ff,#4c,#6e,#0c
	db #06,#4c,#60,#02,#40,#60,#02,#4c
	db #60,#02,#4c,#60,#02,#40,#60,#02
	db #4f,#60,#06,#4f,#60,#02,#43,#60
	db #02,#4f,#60,#02,#4f,#60,#02,#43
	db #60,#02,#53,#60,#06,#53,#60,#02
	db #47,#60,#02,#53,#60,#02,#53,#60
	db #02,#47,#60,#02,#51,#60,#06,#51
	db #60,#02,#45,#60,#02,#51,#60,#02
	db #51,#60,#02,#45,#60,#02,#ff,#4c
	db #6e,#0c,#06,#4c,#60,#02,#4c,#60
	db #02,#4c,#60,#02,#4c,#60,#02,#4c
	db #60,#02,#4f,#60,#06,#4f,#60,#02
	db #4f,#60,#02,#4f,#60,#02,#4f,#60
	db #02,#4f,#60,#02,#53,#60,#06,#53
	db #60,#02,#53,#60,#02,#53,#60,#02
	db #53,#60,#02,#53,#60,#02,#51,#60
	db #06,#51,#60,#02,#51,#60,#02,#51
	db #60,#02,#51,#60,#02,#51,#60,#02
	db #ff,#c0,#6e,#0c,#fe,#01,#c0,#60
	db #fe,#01,#cc,#60,#fe,#01,#c0,#60
	db #fe,#01,#c0,#60,#fe,#01,#c0,#60
	db #fe,#01,#cc,#60,#fe,#01,#c0,#60
	db #fe,#01,#c3,#60,#fe,#01,#c3,#60
	db #fe,#01,#cf,#60,#fe,#01,#c3,#60
	db #fe,#01,#c3,#60,#fe,#01,#c3,#60
	db #fe,#01,#cf,#60,#fe,#01,#c3,#60
	db #fe,#01,#c7,#60,#fe,#01,#c7,#60
	db #fe,#01,#d3,#60,#fe,#01,#c7,#60
	db #fe,#01,#c7,#60,#fe,#01,#c7,#60
	db #fe,#01,#d3,#60,#fe,#01,#c7,#60
	db #fe,#01,#c5,#60,#fe,#01,#c5,#60
	db #fe,#01,#d1,#60,#fe,#01,#c5,#60
	db #fe,#01,#c5,#60,#fe,#01,#c5,#60
	db #fe,#01,#d1,#60,#fe,#01,#c5,#60
	db #fe,#01,#ff,#40,#6e,#0c,#04,#3b
	db #60,#06,#40,#60,#02,#3b,#60,#02
	db #40,#60,#02,#43,#60,#04,#3e,#60
	db #06,#43,#60,#02,#3e,#60,#02,#43
	db #60,#02,#47,#60,#04,#42,#60,#06
	db #47,#60,#02,#42,#60,#02,#47,#60
	db #02,#45,#60,#04,#40,#60,#06,#45
	db #60,#02,#40,#60,#02,#45,#60,#02
	db #ff,#4c,#6e,#0c,#04,#4c,#60,#02
	db #40,#60,#04,#4c,#60,#02,#40,#60
	db #02,#4c,#60,#02,#4f,#60,#04,#4f
	db #60,#02,#43,#60,#04,#4f,#60,#02
	db #43,#60,#02,#4f,#60,#02,#53,#60
	db #04,#53,#60,#02,#47,#60,#04,#53
	db #60,#02,#47,#60,#02,#53,#60,#02
	db #51,#60,#04,#51,#60,#02,#45,#60
	db #04,#51,#60,#02,#45,#60,#02,#51
	db #60,#02,#ff,#28,#68,#1e,#02,#34
	db #68,#1e,#02,#28,#68,#1e,#02,#34
	db #68,#1e,#02,#28,#68,#1e,#02,#34
	db #68,#1e,#02,#28,#68,#1e,#02,#34
	db #68,#1e,#02,#2b,#68,#19,#02,#37
	db #68,#19,#02,#2b,#68,#19,#02,#37
	db #68,#19,#02,#2b,#68,#19,#02,#37
	db #68,#19,#02,#2b,#68,#19,#02,#37
	db #68,#19,#02,#2f,#68,#14,#02,#3b
	db #68,#14,#02,#2f,#68,#14,#02,#3b
	db #68,#14,#02,#2f,#68,#14,#02,#3b
	db #68,#14,#02,#2f,#68,#14,#02,#3b
	db #68,#14,#02,#2d,#68,#16,#02,#39
	db #68,#0b,#02,#2d,#68,#16,#02,#39
	db #68,#0b,#02,#2d,#68,#16,#02,#39
	db #68,#0b,#02,#2d,#68,#16,#02,#39
	db #68,#0b,#02,#ff,#bf,#00,#f4,#80
	db #f4,#80,#f4,#80,#bf,#50,#f4,#80
	db #f4,#80,#f4,#80,#bf,#00,#f4,#80
	db #f4,#80,#f4,#80,#bf,#50,#f4,#80
	db #f4,#80,#f4,#80,#bf,#00,#f4,#80
	db #f4,#80,#f4,#80,#bf,#50,#f4,#80
	db #f4,#80,#f4,#80,#bf,#00,#f4,#80
	db #f4,#80,#f4,#80,#bf,#50,#f4,#80
	db #f4,#80,#f4,#80,#bf,#00,#f4,#80
	db #f4,#80,#f4,#80,#bf,#50,#f4,#80
	db #f4,#80,#f4,#80,#bf,#00,#f4,#80
	db #f4,#80,#f4,#80,#bf,#50,#f4,#80
	db #f4,#80,#f4,#80,#bf,#50,#f4,#80
	db #f4,#80,#f4,#80,#bf,#50,#f4,#80
	db #bf,#50,#f4,#80,#bf,#50,#bf,#50
	db #bf,#50,#f4,#80,#bf,#50,#bf,#50
	db #bf,#50,#bf,#50,#ff

;
.music_info
	db "Epsilon Tome 2 - Intro (1996)(Power System)(Epsilon)",0
	db "ST-128 Module",0

	read "music_end.asm"
