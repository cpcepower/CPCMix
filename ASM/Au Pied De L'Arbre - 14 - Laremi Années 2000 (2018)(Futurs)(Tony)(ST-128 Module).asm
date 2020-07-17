; Music of Au Pied De L'Arbre - 14 - Laremi Années 2000 (2018)(Futurs)(Tony)(ST-128 Module)
; Ripped by Megachur the 28/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AUPIDL14.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 07
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
	ld (hl),#30
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
	ld (hl),#30
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
	dw #000f
.l85b4	equ $ + 4
.l85b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l85be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l85e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l85ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l860c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l8610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l861a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l862b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l863a equ $ + 2
	db #00,#00,#a0,#87,#b8,#87,#d0,#87
.l8640
	db #e0,#86,#20,#87,#40,#87,#00,#00
	db #76,#bf,#32,#c7,#32,#c8,#80,#88
	db #53,#40,#a9,#82,#48,#ff,#34,#81
	db #84,#81,#32,#c7,#72,#c8,#c0,#88
	db #e0,#86,#60,#87,#40,#87,#00,#00
	db #e0,#86,#80,#87,#40,#87,#00,#00
	db #d7,#42,#76,#bf,#76,#bf,#a4,#7f
	db #a4,#7f,#32,#c7,#d2,#c8,#40,#87
	db #d7,#45,#f2,#c8,#32,#c9,#80,#89
	db #d2,#3f,#72,#c9,#b2,#c9,#00,#8a
	db #d2,#3f,#a4,#7f,#a4,#7f,#d2,#3f
	db #a4,#7f,#f2,#c9,#12,#ca,#d2,#3f
	db #a4,#7f,#a4,#7f,#a4,#7f,#d2,#3f
	db #a4,#7f,#a4,#7f,#a4,#7f,#d2,#3f
	db #a4,#7f,#d2,#3f,#d1,#3f,#01,#00
	db #d2,#3f,#d3,#3f,#d1,#3f,#00,#00
.l86c0
	db #d1,#3f,#d3,#3f,#d2,#3f,#d3,#3f
	db #d1,#3f,#d2,#3f,#d1,#3f,#d3,#3f
	db #d2,#3f,#d3,#3f,#d1,#3f,#d2,#3f
	db #d1,#3f,#d3,#3f,#d2,#3f,#d3,#3f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0a,#0a,#0a,#0a,#0a,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#06,#0c,#08,#06,#04,#03,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #00,#e8,#87,#00,#e8,#87,#00,#49
	db #88,#00,#e8,#87,#00,#49,#88,#00
	db #49,#88,#00,#49,#88,#80,#a3,#87
	db #00,#aa,#88,#00,#b3,#88,#00,#44
	db #89,#00,#b3,#88,#00,#44,#89,#00
	db #44,#89,#00,#44,#89,#80,#bb,#87
	db #00,#d5,#89,#00,#d8,#89,#00,#d8
	db #89,#00,#d8,#89,#00,#d8,#89,#00
	db #21,#8a,#00,#21,#8a,#80,#d3,#87
	db #bd,#40,#c2,#40,#c4,#40,#bd,#40
	db #c2,#40,#c4,#40,#bd,#40,#c2,#40
	db #c4,#40,#bd,#40,#c2,#40,#c4,#40
	db #bd,#40,#c2,#40,#c4,#40,#bd,#40
	db #c2,#40,#c4,#40,#bd,#40,#c2,#40
	db #c4,#40,#bd,#40,#c2,#40,#c4,#40
	db #bd,#40,#c2,#40,#c4,#40,#bd,#40
	db #c2,#40,#c4,#40,#bd,#40,#c2,#40
	db #c4,#40,#bd,#40,#c2,#40,#c4,#40
	db #bd,#40,#c2,#40,#c4,#40,#bd,#40
	db #c2,#40,#c4,#40,#bd,#40,#c2,#40
	db #c4,#40,#bd,#40,#c2,#40,#c4,#40
	db #ff,#bd,#40,#c2,#40,#c4,#40,#bd
	db #40,#c2,#40,#c4,#40,#bd,#40,#c2
	db #40,#c4,#40,#bd,#40,#c2,#40,#c4
	db #40,#bd,#40,#c4,#40,#c5,#40,#bd
	db #40,#c4,#40,#c5,#40,#bd,#40,#c4
	db #40,#c5,#40,#bd,#40,#c4,#40,#c5
	db #40,#bd,#40,#c2,#40,#c9,#40,#bd
	db #40,#c2,#40,#c9,#40,#bd,#40,#c2
	db #40,#c9,#40,#bd,#40,#c2,#40,#c9
	db #40,#bd,#40,#c2,#40,#c9,#40,#bd
	db #40,#c4,#40,#cb,#40,#bf,#40,#c4
	db #40,#c7,#40,#c0,#40,#c4,#40,#c7
	db #40,#ff,#00,#0b,#09,#00,#1d,#31
	db #50,#08,#ff,#b1,#58,#12,#b1,#58
	db #12,#b1,#58,#12,#b1,#58,#12,#b1
	db #58,#12,#b1,#58,#12,#b1,#58,#12
	db #b1,#58,#12,#b1,#58,#12,#b1,#58
	db #12,#b1,#58,#12,#b1,#58,#12,#ad
	db #58,#0f,#ad,#58,#0f,#ad,#58,#0f
	db #ad,#58,#0f,#ad,#58,#0f,#ad,#58
	db #0f,#ad,#58,#0f,#ad,#58,#0f,#ad
	db #58,#0f,#ad,#58,#0f,#ad,#58,#0f
	db #ad,#58,#0f,#aa,#58,#12,#aa,#58
	db #12,#aa,#58,#12,#aa,#58,#12,#aa
	db #58,#12,#aa,#58,#12,#aa,#58,#12
	db #aa,#58,#12,#aa,#58,#12,#aa,#58
	db #12,#aa,#58,#12,#aa,#58,#12,#aa
	db #58,#12,#aa,#58,#12,#aa,#58,#12
	db #aa,#58,#12,#aa,#58,#12,#aa,#58
	db #12,#aa,#58,#12,#aa,#58,#12,#aa
	db #58,#12,#aa,#58,#12,#aa,#58,#12
	db #aa,#58,#12,#ff,#b1,#58,#12,#08
	db #12,#01,#08,#12,#01,#08,#12,#01
	db #08,#12,#01,#08,#12,#01,#08,#12
	db #01,#08,#12,#01,#08,#12,#01,#08
	db #12,#01,#08,#12,#01,#08,#12,#01
	db #ad,#58,#0f,#08,#0f,#01,#08,#0f
	db #01,#08,#0f,#01,#08,#0f,#01,#08
	db #0f,#01,#08,#0f,#01,#08,#0f,#01
	db #08,#0f,#01,#08,#0f,#01,#08,#0f
	db #01,#08,#0f,#01,#aa,#58,#12,#08
	db #12,#01,#08,#12,#01,#08,#12,#01
	db #08,#12,#01,#08,#12,#01,#08,#12
	db #01,#08,#12,#01,#08,#12,#01,#08
	db #12,#01,#08,#12,#01,#08,#12,#01
	db #08,#12,#01,#08,#12,#01,#08,#12
	db #01,#08,#12,#01,#ac,#58,#18,#08
	db #18,#01,#08,#18,#01,#08,#18,#01
	db #08,#18,#01,#08,#18,#01,#08,#18
	db #01,#08,#18,#01,#ff,#00,#30,#ff
	db #49,#00,#02,#55,#00,#02,#61,#00
	db #02,#5c,#00,#02,#58,#00,#02,#55
	db #00,#02,#4c,#00,#02,#58,#00,#02
	db #64,#00,#02,#5f,#00,#02,#58,#00
	db #02,#4c,#00,#02,#4e,#00,#02,#5a
	db #00,#02,#66,#00,#02,#61,#00,#02
	db #5a,#00,#02,#4e,#00,#02,#49,#00
	db #02,#4e,#00,#02,#50,#00,#02,#54
	db #00,#02,#58,#00,#02,#57,#00,#02
	db #ff,#c9,#00,#cc,#00,#d0,#00,#d5
	db #00,#d0,#00,#cc,#00,#c9,#00,#c4
	db #00,#c0,#00,#c4,#00,#c9,#00,#cc
	db #00,#d1,#00,#cc,#00,#cb,#00,#c9
	db #00,#c5,#00,#c9,#00,#cc,#00,#d1
	db #00,#d5,#00,#d1,#00,#d0,#00,#cc
	db #00,#c9,#00,#ce,#00,#d1,#00,#d5
	db #00,#da,#00,#d5,#00,#d1,#00,#ce
	db #00,#cb,#00,#c9,#00,#c8,#00,#c5
	db #00,#c4,#00,#c2,#00,#c0,#00,#c2
	db #00,#c4,#00,#c8,#00,#cb,#00,#ce
	db #00,#d0,#00,#cc,#00,#c9,#00,#c7
	db #00,#ff,#00,#00,#00,#00,#00,#00

;
.music_info
	db "Au Pied De L'Arbre - 14 - Laremi Annees 2000 (2018)(Futurs)(Tony)",0
	db "ST-128 Module",0

	read "music_end.asm"
