; Music of Wizard Willy (1989)(Codemasters)()()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "WIZARDWI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #51b7
FIRST_THEME				equ 1
LAST_THEME				equ 1

	read "music_header.asm"

	jp l526f        ; play music
.l51ba
	db #00
.l51bb
	db #00,#00,#00,#00,#00,#00
.l51c1
	db #00,#00,#00,#00,#00,#00,#0a,#42
	db #42,#33,#31,#0d
.l51cd
	db #0a,#09,#48,#45,#58,#20,#43,#30
	db #43,#30,#43,#30
.l51d9
	db #43,#30,#30,#43,#34,#32,#39,#34
	db #43,#33,#38,#31
.l51e5
	db #30,#39,#43,#31,#46,#46,#36,#38
	db #30,#36,#43,#31,#44,#37,#42,#45
	db #38,#34,#39,#34,#43,#33
.l51fb
	db #44,#37,#38,#34,#34,#32,#43,#33
	db #45,#42,#38,#31,#34,#38,#33,#43
	db #43,#32,#36,#38,#34,#38,#33,#43
	db #0d,#0a,#09,#48,#45,#58,#20,#43
	db #30,#43,#32,#34,#38,#43,#30,#39
	db #34,#43,#32,#34,#38,#43,#30,#44
;
.stop_music
;
	ld a,#80
	ld (l51c1),a
	ld (l51cd),a
	ld (l51d9),a
	ld (l51e5),a
	xor a
	ld (l51ba),a
	ld b,#0d
.l523f
	ld c,b
	call l5873
	djnz l523f
	ld a,#3f
	ld c,#07
	call l5873
	ld (l595b),a
	ld hl,#0040
	ld (l55d5),hl
	ld (l55d7),hl
	ld (l55d9),hl
	ld (l55db),hl
	ld a,#80
	ld (l589d),a
	ld (l58b5),a
	ld (l58cd),a
	ld (l58e5),a
	ret
.l526e equ $ + 1
.l526d
	db #00,#00
;
.play_music
.l526f
;
	nop
	push ix
	push iy
	push hl
	push de
	push bc
	push af
	ld a,(l526d)
	ld b,a
	or a
	jr z,l52a7
	jp p,l5294
	ld a,(l526e)
	or a
	jr z,l528e
	ld hl,l526e
	inc (hl)
	jr l52a7
.l528e
	ld a,b
	ld (l526e),a
	jr l52aa
.l5294
	ld a,(l526e)
	or a
	jr z,l52a0
	ld hl,l526e
	dec (hl)
	jr l52a7
.l52a0
	ld a,b
	ld (l526e),a
	call l52bb
.l52a7
	call l52bb
.l52aa
	call l5629
	pop af
	pop bc
	pop de
	pop hl
	pop iy
	pop ix
	ret
.l52ba equ $ + 4
	db #00,#00,#04,#00,#00
.l52bb
	ld a,(l51ba)
	bit 7,a
	jr z,l5326
	and #1f
	cp #02
	jr nc,l5326
;
.init_music
;
	ld (l51ba),a
	ld e,a
	add a
	add a
	add e
	add a
	ld hl,l5974
	add l
	ld l,a
	add h
	sub l
	ld h,a
	push hl
	pop iy
	ld hl,l51fb
	ld ix,l51bb
	ld b,#04
.l52e4
	ld (ix+#06),#88
	ld e,(iy+#00)
	ld d,(iy+#01)
	inc iy
	inc iy
	ld a,e
	or d
	jr z,l530c
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#06),#01
	ld (ix+#04),#00
	ld (ix+#05),#00
	ld (ix+#08),#00
.l530c
	ld (ix+#02),l
	ld (ix+#03),h
	ld de,#0010
	add hl,de
	ld de,#000c
	add ix,de
	djnz l52e4
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld (l526d),hl
.l5326
	ld ix,l51bb
	ld iy,l5893
	xor a
	ld (l52ba),a
.l5332
	bit 7,(ix+#06)
	jr z,l534a
	bit 6,(ix+#06)
	jp nz,l5419
	set 7,(iy+#0a)
	set 6,(iy+#0a)
	jp l5419
.l534a
	bit 5,(ix+#06)
	jp nz,l53ef
.l5351
	ld a,(ix+#06)
	bit 1,a
	jr nz,l535c
	set 7,(iy+#0a)
.l535c
	and #fc
	ld (ix+#06),a
.l5361
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	inc hl
	bit 7,a
	jp nz,l542e
	ld c,a
	ld e,(ix+#0a)
	ld d,(ix+#0b)
	ld a,(de)
	inc de
	ld b,a
	set 1,(ix+#06)
	or a
	jr z,l53d6
.l537f
	inc de
	inc de
	ld a,(de)
	inc de
	sub c
	jp z,l5394
	jr nc,l538f
	ld a,(de)
	sub c
	jr nc,l5394
	jr z,l5394
.l538f
	inc de
	djnz l537f
	jr l53d6
.l5394
	dec de
	ld a,(de)
	res 1,(ix+#06)
	sub c
	neg
	ld c,a
	dec de
	ld a,(de)
	dec de
	add c
	ld (ix+#09),a
	ld c,a
	push hl
	ld a,(l52ba)
	add a
	ld hl,l55d5
	add l
	ld l,a
	adc h
	sub l
	ld h,a
	ld a,(de)
	ld (hl),#81
	inc hl
	ld (hl),a
	ld hl,l5515
	ld a,c
	add a
	add l
	ld l,a
	adc h
	sub l
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#05),e
	ld (iy+#06),d
	pop hl
	ld a,(hl)
	ld (iy+#07),a
	ld a,(ix+#08)
	ld (iy+#08),a
.l53d6
	ld d,(ix+#08)
	ld e,(hl)
	inc hl
	ld (ix+#08),#00
	ld (ix+#04),e
	ld (ix+#05),d
	ld (ix+#00),l
	ld (ix+#01),h
	set 5,(ix+#06)
.l53ef
	ld l,(ix+#04)
	ld a,(ix+#05)
	or l
	jp z,l5351
	ld h,(ix+#05)
	dec hl
	ld (ix+#04),l
	ld (ix+#05),h
	ld a,h
	or l
	jr nz,l5419
	res 5,(ix+#06)
	res 0,(ix+#06)
	bit 1,(ix+#06)
	jr nz,l5415
.l5415
	res 1,(ix+#06)
.l5419
	ld de,#000c
	add ix,de
	ld de,#0018
	add iy,de
	ld hl,l52ba
	inc (hl)
	ld a,(hl)
	cp #04
	jp nz,l5332
	ret
.l542e
	and #0f
	add a
	ld de,l543f
	add e
	ld e,a
	adc d
	sub e
	ld d,a
	ex de,hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l543f
	dw l545f,l5467,l5474,l5493
	dw l54ac,l54c9,l54eb,l54ff
	dw l5361,l5361,l5361,l5361
	dw l5361,l5361,l5361,l550d
.l545f
	ex de,hl
	set 1,(ix+#06)
	jp l53d6
.l5467
	ex de,hl
	ld a,(hl)
	ld (ix+#00),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
	jp l5361
.l5474
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#00),e
	ld (ix+#01),d
	ld e,(ix+#02)
	ld d,(ix+#03)
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
	dec hl
	ld (ix+#02),l
	ld (ix+#03),h
	jp l5361
.l5493
	ld l,(ix+#02)
	ld h,(ix+#03)
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#02),l
	ld (ix+#03),h
	ld (ix+#00),e
	ld (ix+#01),d
	jp l5361
.l54ac
	ld a,(de)
	inc de
	ld l,(ix+#02)
	ld h,(ix+#03)
	ld (hl),d
	dec hl
	ld (hl),e
	dec hl
	ld (hl),a
	dec hl
	ld (ix+#02),l
	ld (ix+#03),h
	ld (ix+#00),e
	ld (ix+#01),d
	jp l5361
.l54c9
	ld l,(ix+#02)
	ld h,(ix+#03)
	inc hl
	ld a,(hl)
	inc hl
	inc hl
	dec a
	jr z,l54dc
	ld d,(hl)
	dec hl
	ld e,(hl)
	dec hl
	ld (hl),a
	dec hl
.l54dc
	ld (ix+#02),l
	ld (ix+#03),h
	ld (ix+#00),e
	ld (ix+#01),d
	jp l5361
.l54eb
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#0a),e
	ld (ix+#0b),d
	jp l5361
.l54ff
	ld a,(de)
	inc de
	ld (ix+#08),a
	ld (ix+#00),e
	ld (ix+#01),d
	jp l5361
.l550d
	ex de,hl
	set 7,(ix+#06)
	jp l5419
.l5515
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fb
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
.l55d5
	nop
	nop
.l55d7
	nop
	nop
.l55d9
	nop
	nop
.l55db
	nop
	nop
.l55dd
	push af
	push bc
	push de
	push hl
	push ix
	ld a,(iy+#01)
	and #0f
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l58f3
	add hl,de
	add l
	ld l,a
	adc h
	sub l
	ld h,a
	push ix
	pop de
	set 7,(ix+#0a)
	ld bc,#0005
	ldir
	bit 0,(iy+#00)
	jr z,l5614
	inc hl
	inc hl
	inc hl
	inc hl
	inc de
	inc de
	inc de
	inc de
	jr l5619
.l5614
	ld bc,#0004
	ldir
.l5619
	ld bc,#0008
	ldir
	ld (ix+#0a),#20
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l5629
	ld a,#08
	ld (l5959),a
	ld a,#01
	ld (l595a),a
	xor a
	ld (l595c),a
	ld ix,l5893
	ld iy,l55d5
.l563f
	bit 7,(iy+#00)
	jr z,l564c
	call l55dd
	res 7,(iy+#00)
.l564c
	bit 7,(ix+#0a)
	jr z,l566e
	bit 6,(ix+#0a)
	jp nz,l5849
	set 6,(ix+#0a)
	ld hl,l5959
	ld a,(hl)
	inc hl
	or (hl)
	inc hl
	or (hl)
	ld c,#07
	ld (hl),a
	call l5873
	jp l5849
.l566e
	ld a,(l595c)
	cp #03
	jr nz,l5677
	ld a,#02
.l5677
	add a
	ld c,a
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld a,h
	or l
	jr nz,l5691
	ld a,(l595a)
	ld hl,l595b
	or (hl)
	ld (hl),a
	res 4,(ix+#0a)
	jr l56a7
.l5691
	ld a,l
	call l5873
	inc c
	ld a,h
	call l5873
	ld a,(l595a)
	ld hl,l595b
	cpl
	and (hl)
	ld (hl),a
	set 4,(ix+#0a)
.l56a7
	ld a,(ix+#02)
	or a
	jr nz,l56bb
	res 3,(ix+#0a)
	ld a,(l5959)
	ld hl,l595b
	or (hl)
	ld (hl),a
	jr l56cd
.l56bb
	ld c,#06
	call l5873
	set 3,(ix+#0a)
	ld a,(l5959)
	cpl
	ld hl,l595b
	and (hl)
	ld (hl),a
.l56cd
	bit 5,(ix+#0a)
	jr z,l5747
	res 5,(ix+#0a)
	ld a,(ix+#03)
	ld (ix+#11),a
	ld a,(ix+#04)
	ld (ix+#12),a
	ld a,(l595c)
	cp #02
	jr c,l570a
	ld a,#02
	add a
	ld c,a
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld a,h
	or l
	jr z,l570a
	ld a,l
	call l5873
	inc c
	ld a,h
	call l5873
	ld a,(l595a)
	ld hl,l595b
	cpl
	and (hl)
	ld (hl),a
.l570a
	ld (ix+#13),#01
	ld a,(ix+#09)
	or (ix+#0a)
	jr nz,l5725
	ld a,(ix+#00)
	ld (ix+#11),a
	ld a,(ix+#01)
	ld (ix+#12),a
	inc (ix+#13)
.l5725
	ld (ix+#15),#00
	ld (ix+#14),#00
	ld a,(l595c)
	cp #03
	jr nz,l5736
	ld a,#02
.l5736
	add #08
	ld c,a
	ld a,(ix+#12)
	call l5873
	ld c,#07
	ld a,(l595b)
	call l5873
.l5747
	res 6,(ix+#0a)
	ld b,(ix+#15)
	ld c,(ix+#14)
	ld a,b
	or c
	jr z,l575f
	dec bc
	ld (ix+#14),c
	ld (ix+#15),b
	jp l5837
.l575f
	ld a,(l595c)
	cp #03
	jr nz,l5768
	ld a,#02
.l5768
	add #08
	ld c,a
	ld e,(ix+#11)
	ld d,(ix+#12)
	ld b,(ix+#13)
	dec b
	jr z,l5789
	dec b
	jr z,l57ab
	dec b
	jp z,l5825
	dec b
	jp z,l580c
	set 7,(ix+#0a)
	jp l5849
.l5789
	ld a,(ix+#09)
	add e
	ld e,a
	ld a,(ix+#0a)
	add d
	ld d,a
	ld l,(ix+#00)
	ld h,(ix+#01)
	and a
	sbc hl,de
	jr c,l57ce
	ld (ix+#11),e
	ld (ix+#12),d
	ld a,d
	call l5873
	jp l5837
.l57ab
	ld a,(ix+#09)
	sub e
	ld e,a
	ld a,(ix+#0a)
	sbc d
	ld d,a
	jr c,l57eb
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	and a
	sbc hl,de
	jr c,l57eb
	ld (ix+#11),e
	ld (ix+#12),d
	ld a,d
	call l5873
	jr l5837
.l57ce
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (ix+#11),l
	ld (ix+#12),h
	inc (ix+#13)
	ld a,(ix+#0b)
	or (ix+#0b)
	jr z,l57eb
	ld a,h
	call l5873
	jr l5837
.l57eb
	inc (ix+#13)
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	ld (ix+#11),l
	ld (ix+#12),h
	ld a,h
	call l5873
	ld a,(ix+#08)
	ld (ix+#15),a
	ld a,(ix+#07)
	ld (ix+#14),a
	jr l5837
.l580c
	ld a,(ix+#11)
	sub (ix+#0f)
	ld (ix+#11),a
	ld a,(ix+#12)
	sbc (ix+#10)
	ld (ix+#12),a
	jr c,l582a
	call l5873
	jr l5837
.l5825
	inc (ix+#13)
	jr l5837
.l582a
	inc (ix+#13)
	xor a
	ld (ix+#11),a
	ld (ix+#12),a
	call l5873
.l5837
	ld a,(l595c)
	cp #03
	jr nz,l5840
	ld a,#02
.l5840
	add #08
	ld c,a
	ld a,(ix+#12)
	call l5873
.l5849
	ld de,#0018
	add ix,de
	inc iy
	inc iy
	ld hl,l5959
	sla (hl)
	inc hl
	sla (hl)
	inc hl
	inc hl
	inc (hl)
	ld a,(hl)
	cp #04
	ret z
	cp #03
	jp nz,l563f
	ld a,#20
	ld (l5959),a
	ld a,#04
	ld (l595a),a
	jp l563f
.l5873
	push af
	push bc
	push de
	ld e,a
	ld b,#f4
	out (c),c
	ld bc,#f600
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	pop de
	pop bc
	pop af
	ret
.l5893
	db #45,#30,#30,#33,#36,#30,#30,#33
.l589d equ $ + 2
	db #45,#0d,#0a,#0d,#0a,#4c,#49,#53
	db #54,#4a,#52,#31,#09,#44,#57,#20
	db #42,#59,#54,#45,#38,#2c,#42,#59
.l58b5 equ $ + 2
	db #54,#45,#31,#2c,#42,#59,#54,#45
	db #32,#2c,#42,#59,#54,#45,#33,#2c
	db #42,#59,#54,#45,#34,#2c,#42,#59
.l58cd equ $ + 2
	db #54,#45,#35,#2c,#42,#59,#54,#45
	db #36,#2c,#42,#59,#54,#45,#37,#2c
	db #42,#59,#54,#45,#38,#0d,#0a,#0d
.l58e5 equ $ + 2
	db #0a,#4c,#49,#53,#54,#4a,#52,#09
	db #44,#57,#20,#42,#59,#54,#45,#53
.l58f3
	db #00,#0f,#00,#00,#0f,#00,#00,#00
	db #00,#00,#00,#99,#00,#00,#00,#00
	db #00,#00,#08,#0e,#00,#0f,#00,#00
	db #00,#00,#00,#00,#99,#01,#00,#00
	db #00,#00,#00,#0f,#01,#00,#0f,#00
	db #00,#00,#00,#00,#00,#55,#00,#00
	db #00,#00,#00,#00,#0f,#04,#00,#0f
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#00,#00,#00,#00,#0f,#00,#00
	db #0a,#00,#00,#00,#00,#40,#00,#10
	db #00,#e0,#0b,#3c,#00,#00,#0f,#00
	db #00,#05,#00,#00,#00,#00,#80,#02
.l595a equ $ + 7
.l5959 equ $ + 6
	db #11,#00,#e0,#0b,#5f,#00,#00,#00
.l595b
	db #00
.l595c
	db #00
.l595d
	db #03,#01,#0c,#24,#24,#02,#58,#28
	db #28,#01,#38,#29,#34
.l596f equ $ + 5
.l596a
	db #01,#05,#0c,#24,#5c,#01,#04,#18
	db #24,#40
.l5974
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #e7,#00
	dw l5988,l598e,l5994,l599a
	dw #0000
.l5988
	db #f6
	dw l596a
	db #f1
	dw l5b8c
.l598e
	db #f6
	dw l596a
	db #f1
	dw l5cb7
.l5994
	db #f6
	dw l595d
	db #f1
	dw l59a0
.l599a
	db #f6
	dw l596f
	db #f1
	dw l5a23
.l59a0
	db #f4,#08,#f2
	dw l59b8
	db #f5,#f4,#07,#f2
	dw l59c9
	db #f2
	dw l59f6
	db #f2
	dw l59f6
	db #f2
	dw l59f6
	db #f5,#f1
	dw l59a0
.l59b8
	db #24,#06,#f0,#12,#24,#06,#f0,#12
	db #24,#06,#f0,#12,#24,#06,#f0,#12
.l59c9 equ $ + 1
	db #f3,#24,#00,#26,#06,#f0,#06,#27
	db #02,#f0,#04,#27,#03,#f0,#03,#28
	db #0a,#f0,#02,#27,#04,#f0,#02,#24
	db #06,#f0,#06,#24,#06,#27,#05,#f0
	db #07,#28,#09,#f0,#03,#2e,#02,#f0
.l59f6 equ $ + 6
	db #04,#2e,#04,#f0,#02,#f3,#24,#0a
	db #f0,#02,#27,#02,#f0,#04,#27,#03
	db #f0,#03,#28,#0a,#f0,#02,#27,#03
	db #f0,#03,#24,#05,#f0,#07,#24,#05
	db #f0,#01,#27,#04,#f0,#08,#28,#08
	db #f0,#04,#2e,#02,#f0,#04,#2e,#03
	db #f0,#03,#f3
.l5a23
	db #f2
	dw l5a41
	db #f2
	dw l5a41
	db #f2
	dw l5a41
	db #f2
	dw l5a41
	db #f2
	dw l5ac2
	db #f2
	dw l5ac2
	db #f2
	dw l5b39
	db #f2
	dw l5b39
	db #f2
	dw l5b39
	db #f1
	dw l5a23
.l5a41
	db #30,#06,#f0,#06,#30,#06,#f0,#06
	db #30,#06,#f0,#06,#30,#06,#30,#06
	db #f0,#06,#30,#06,#f0,#06,#30,#06
	db #30,#06,#f0,#06,#30,#06,#f0,#06
	db #33,#06,#f0,#06,#33,#06,#f0,#06
	db #33,#06,#f0,#06,#33,#06,#33,#06
	db #f0,#06,#33,#06,#f0,#06,#33,#06
	db #33,#06,#f0,#06,#33,#06,#f0,#06
	db #2e,#06,#f0,#06,#2e,#06,#f0,#06
	db #2e,#06,#f0,#06,#2e,#06,#2e,#06
	db #f0,#06,#2e,#06,#f0,#06,#2e,#06
	db #2e,#06,#f0,#06,#2e,#06,#f0,#06
	db #2b,#06,#f0,#06,#2b,#06,#f0,#06
	db #2b,#06,#f0,#06,#2b,#06,#2b,#06
	db #f0,#06,#2b,#06,#f0,#06,#2b,#06
	db #2b,#06,#f0,#06,#2b,#06,#f0,#06
.l5ac2 equ $ + 1
	db #f3,#2c,#06,#f0,#06,#2c,#06,#f0
	db #06,#2c,#06,#f0,#06,#2c,#06,#2c
	db #06,#f0,#06,#2c,#06,#f0,#06,#2c
	db #06,#2c,#06,#f0,#06,#2c,#06,#2c
	db #06,#2e,#06,#f0,#06,#2e,#06,#f0
	db #06,#2e,#06,#f0,#06,#2e,#06,#2e
	db #06,#f0,#06,#2e,#06,#f0,#06,#2e
	db #06,#2e,#06,#f0,#06,#2e,#06,#f0
	db #06,#2b,#06,#f0,#06,#2b,#06,#f0
	db #06,#2b,#06,#f0,#06,#2b,#06,#2b
	db #06,#f0,#06,#2b,#06,#f0,#06,#2b
	db #06,#2b,#06,#f0,#06,#2b,#06,#f0
	db #06,#30,#0c,#3c,#06,#f0,#06,#32
	db #0c,#3e,#06,#f0,#06,#33,#0c,#3f
	db #06,#f0,#06,#37,#0c,#37,#0c,#f3
.l5b39
	db #2c,#0f,#f0,#03,#30,#06,#f0,#0c
	db #33,#07,#f0,#17,#2c,#06,#30,#06
	db #33,#05,#f0,#0d,#2e,#0c,#f0,#06
	db #32,#07,#f0,#0b,#35,#07,#f0,#17
	db #2e,#06,#32,#06,#35,#06,#f0,#0c
	db #30,#11,#f0,#01,#33,#06,#f0,#0c
	db #37,#07,#f0,#17,#30,#06,#33,#06
	db #37,#07,#f0,#0b,#30,#0f,#f0,#03
	db #33,#05,#f0,#0d,#37,#07,#f0,#17
	db #30,#06,#33,#05,#f0,#07,#37,#06
.l5b8c equ $ + 3
	db #f0,#06,#f3,#f0,#01,#48,#5e,#f0
	db #01,#4b,#24,#4a,#18,#48,#22,#f0
	db #02,#46,#48,#48,#0b,#f0,#01,#43
	db #60,#f0,#0c,#48,#40,#f0,#08,#48
	db #0a,#f0,#02,#4a,#09,#f0,#03,#4b
	db #12,#f0,#06,#4b,#0b,#f0,#02,#4a
	db #18,#48,#17,#46,#53,#48,#0d,#f0
	db #01,#43,#64,#f0,#07,#48,#42,#f0
	db #06,#48,#0c,#4a,#0c,#4b,#12,#f0
	db #06,#4b,#0c,#4a,#18,#48,#18,#46
	db #3c,#f0,#18,#46,#0c,#48,#0c,#4a
	db #12,#f0,#06,#4a,#06,#f0,#06,#48
	db #06,#f0,#12,#47,#12,#f0,#06,#48
	db #42,#f0,#12,#48,#0c,#4a,#0c,#4b
	db #12,#f0,#06,#4b,#0c,#4a,#12,#f0
	db #06,#48,#1e,#f0,#06,#4f,#24,#4d
	db #06,#4b,#06,#4d,#24,#4b,#06,#4a
	db #06,#4b,#1e,#f0,#06,#4b,#06,#4a
	db #06,#4b,#18,#4a,#12,#f0,#06,#f4
	db #02,#50,#1d,#f0,#07,#50,#07,#f0
	db #05,#4f,#09,#f0,#03,#4d,#0f,#f0
	db #09,#4a,#29,#f0,#07,#4a,#07,#f0
	db #05,#4b,#07,#f0,#05,#4d,#11,#f0
	db #07,#4f,#29,#f0,#07,#4d,#06,#f0
	db #06,#4b,#07,#f0,#05,#4a,#10,#f0
	db #08,#48,#54,#f0,#18,#f5,#f4,#03
	db #48,#12,#4a,#12,#4b,#07,#f0,#05
	db #48,#10,#f0,#02,#4a,#12,#4b,#06
	db #f0,#06,#4a,#0e,#f0,#04,#4b,#07
	db #f0,#0b,#4d,#06,#f0,#06,#4a,#0d
	db #f0,#05,#4b,#09,#f0,#09,#4d,#06
	db #f0,#06,#4b,#0b,#f0,#07,#4d,#0a
	db #f0,#08,#4f,#06,#f0,#06,#4b,#09
	db #f0,#09,#4d,#08,#f0,#0a,#4f,#06
	db #f0,#06,#4b,#0b,#f0,#07,#4d,#09
	db #f0,#09,#4f,#07,#f0,#05,#4d,#0b
	db #f0,#07,#4b,#0b,#f0,#07,#4a,#08
.l5cb7 equ $ + 6
	db #f0,#04,#f5,#f1,#8c,#5b,#f0,#01
	db #48,#02,#f0,#09,#48,#03,#f0,#09
	db #4b,#04,#f0,#08,#48,#04,#f0,#02
	db #4d,#04,#f0,#08,#4d,#04,#f0,#08
	db #48,#04,#f0,#02,#4b,#04,#f0,#08
	db #48,#03,#f0,#09,#f4,#07,#48,#05
	db #f0,#07,#48,#04,#f0,#08,#4b,#04
	db #f0,#08,#48,#03,#f0,#03,#4d,#04
	db #f0,#08,#4d,#04,#f0,#08,#48,#04
	db #f0,#02,#4b,#04,#f0,#08,#48,#04
	db #f0,#08,#f5,#f4,#02,#48,#06,#f0
	db #06,#48,#06,#f0,#06,#54,#06,#f0
	db #06,#48,#06,#54,#06,#f0,#06,#54
	db #06,#f0,#06,#48,#06,#54,#06,#f0
	db #06,#48,#06,#f0,#06,#4b,#06,#f0
	db #06,#4b,#06,#f0,#06,#57,#06,#f0
	db #06,#4b,#06,#57,#06,#f0,#06,#57
	db #06,#f0,#06,#4b,#06,#57,#06,#f0
	db #06,#4b,#06,#f0,#06,#46,#06,#f0
	db #06,#46,#06,#f0,#06,#52,#06,#f0
	db #06,#46,#06,#52,#06,#f0,#06,#52
	db #06,#f0,#06,#46,#06,#52,#06,#f0
	db #06,#46,#06,#f0,#06,#43,#06,#f0
	db #06,#43,#06,#f0,#06,#4f,#06,#f0
	db #06,#43,#06,#4f,#06,#f0,#06,#4f
	db #06,#f0,#06,#43,#06,#4f,#06,#f0
	db #06,#43,#06,#f0,#06,#f5,#f4,#02
	db #48,#1e,#f0,#06,#48,#0c,#46,#0c
	db #44,#18,#41,#2a,#f0,#06,#41,#0c
	db #43,#0c,#44,#12,#f0,#06,#46,#2a
	db #f0,#06,#44,#0c,#43,#0c,#41,#18
	db #40,#5a,#f0,#12,#f5,#f4,#02,#4b
	db #12,#4d,#12,#4f,#0c,#4b,#12,#4d
	db #12,#4f,#0c,#4d,#12,#4f,#12,#50
	db #0a,#f0,#02,#4d,#12,#4f,#12,#50
	db #0b,#f0,#01,#4f,#12,#50,#12,#52
	db #0c,#4f,#12,#50,#12,#52,#0c,#4f
	db #12,#50,#12,#52,#0c,#50,#12,#4f
	db #12,#4d,#0c,#f5,#54,#54,#52,#06
	db #50,#06,#52,#54,#50,#06,#4f,#06
	db #50,#54,#4f,#06,#4d,#05,#f0,#01
	db #4f,#60,#f1,#b7,#5c,#00,#00,#84
	db #ef,#5d,#46,#9a,#46,#d6,#46,#13
	db #47,#92,#47,#d1,#47,#52,#47,#00
	db #8e,#f8,#8e,#40,#8e,#80,#8e,#bc
	db #8e,#38,#8f,#78,#8f,#b8,#8f,#00
	db #ae,#80,#96,#c0,#96,#71,#ae,#00
	db #97,#40,#97,#80,#97,#c0,#97,#3f
	db #c6,#ba,#c6,#7c,#9e,#bb,#9e,#f8
	db #9e,#60,#9f,#9f,#9f,#b5,#fe,#9e
	db #a7,#3a,#a6,#79,#a6,#b9,#a6,#30
	db #a7,#64,#a7,#f8,#a6,#00,#a6,#00
	db #96,#40,#96,#31,#ae,#a5,#ae,#00
	db #ce,#9c,#af,#e5,#ae,#21,#af,#3f
	db #b6,#7b,#b6,#b7,#b6,#33,#b7,#b2
	db #b7,#f3,#b6,#72,#b7,#00,#b6,#00
	db #be,#40,#be,#80,#be,#bf,#be,#ff
	db #be,#3f,#bf,#7f,#bf,#be,#bf,#7a
	db #c6,#f5,#c6,#00,#9e,#3f,#9e,#00
	db #c6,#34,#c7,#73,#c7,#ae,#c7,#7b
	db #ce,#5d,#af,#3e,#ce,#ed,#de,#3a
	db #cf,#79,#cf,#b8,#cf,#fb,#ce,#7e
	db #de,#7f,#d6,#f7,#d6,#36,#d7,#75
	db #d7,#40,#d6,#b8,#d6,#18,#e7,#ad
	db #de,#26,#df,#66,#df,#9e,#df,#3f
	db #de,#00,#d6,#bb,#ce,#00,#de,#00
	db #e6,#b5,#d7,#68,#e6,#3c,#e6,#a8
	db #e6,#e8,#e6,#57,#e7,#95,#e7,#00
	db #ee,#40,#ee,#59,#ef,#80,#ee,#ad
	db #ee,#19,#ef,#00,#f6,#40,#f6,#7f
	db #f6,#be,#f6,#fe,#f6,#3e,#f7,#a8
	db #ef,#d9,#ee,#7e,#f7,#be,#f7,#3c
	db #fe,#78,#fe,#f5,#fe,#35,#ff,#75
	db #ff,#38,#9f,#b4,#ff,#00,#fe,#00
	db #86,#7d,#86,#f8,#86,#40,#86,#bd
	db #86,#b4,#87,#37,#87,#77,#87,#e6
	db #44,#22,#45,#9e,#45,#de,#45,#62
	db #45,#1e,#46,#06,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#40,#80,#00
	db #00,#00,#00,#81,#42,#00,#00,#00
	db #c0,#06,#09,#80,#00,#40,#03,#18
	db #09,#80,#00,#81,#0c,#71,#24,#80
	db #00,#81,#18,#74,#24,#80,#00,#c0
	db #06,#71,#24,#80,#00,#00,#81,#18
	db #09,#80,#00,#00,#40,#06,#09,#80
	db #00,#00,#00,#81,#42,#00,#00,#00
	db #00,#40,#80,#00,#00
;
; #05df
;call #522b
;ld a,#81
;ld (#51ba),a	;init
;
.music_info
	db "Wizard Willy (1989)(Codemasters)()",0
	db "",0

	read "music_end.asm"
