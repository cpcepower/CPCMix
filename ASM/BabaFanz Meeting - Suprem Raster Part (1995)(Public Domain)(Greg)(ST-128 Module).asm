; Music of BabaFanz Meeting - Suprem Raster Part (1995)(Public Domain)(Greg)(ST-128 Module)
; Ripped by Megachur the 17/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BABAFMSP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4100

	read "music_header.asm"

	jp l4109
	jp l419d
	jp l4181
;
.init_music
.l4109
;
	xor a
	ld hl,l46b4
	call l417a
	ld hl,l46e2
	call l417a
	ld hl,l4710
	call l417a
	ld ix,l46b0
	ld iy,l473a
	ld de,#002e
	ld b,#03
.l4129
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
	djnz l4129
	ld hl,l45c9
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
	ld (l45c5),hl
	ld (l45c7),hl
	ld a,#0c
	ld c,d
	call l45a5
	ld a,#0d
	ld c,d
	jp l45a5
.l417a
	ld b,#2a
.l417c
	ld (hl),a
	inc hl
	djnz l417c
	ret
;
.stop_music
.l4181
;
	ld a,#07
	ld c,#3f
	call l45a5
	ld a,#08
	ld c,#00
	call l45a5
	ld a,#09
	ld c,#00
	call l45a5
	ld a,#0a
	ld c,#00
	jp l45a5
;
.play_music
.l419d
;
	ld hl,l45cb
	dec (hl)
	ld ix,l46b0
	ld bc,l46be
	call l423f
	ld ix,l46de
	ld bc,l46ec
	call l423f
	ld ix,l470c
	ld bc,l471a
	call l423f
	ld hl,l45c4
	ld de,l45cb
	ld b,#06
	call l421c
	ld b,#07
	call l421c
	ld b,#0b
	call l421c
	ld b,#0d
	call l421c
	ld de,l45cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l46cf
	call l41f5
	ld hl,l46fd
	call l41f5
	ld hl,l472b
.l41f5
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
	jr nz,l420a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l420a
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
.l421c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l45a5
.l4227
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l45a5
.l423f
	ld a,(l45cb)
	or a
	jp nz,l42f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l42f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4227
	or a
	jp z,l42ec
	ld r,a
	and #7f
	cp #10
	jr c,l42c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l443f
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
	jr z,l42a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l42a0
	rrca
	ld c,a
	ld hl,l4740
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
	jr z,l42bf
	ld (ix+#1e),b
.l42bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l42e0
.l42c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l45d0
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
.l42e0
	ld a,d
	or a
	jr nz,l42ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l42ee
.l42ec
	ld a,(hl)
	inc hl
.l42ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l42f7
	ld a,(ix+#17)
	or a
	jr nz,l430d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l430d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4323
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4323
	ld a,(ix+#0d)
	or a
	jr z,l4331
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l434f
.l4331
	ld a,(ix+#1a)
	or a
	jp z,l4356
	ld c,a
	cp #03
	jr nz,l433e
	xor a
.l433e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l434f
	ld a,(ix+#18)
	dec c
	jr z,l434f
	ld a,(ix+#19)
.l434f
	add (ix+#07)
	ld b,d
	call l443f
.l4356
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l437e
	dec (ix+#1b)
	jr nz,l437e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l43b6
.l437e
	ld a,(ix+#29)
	or a
	jr z,l43b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l43ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l43a4
	ld (ix+#29),#ff
	jr l43ad
.l43a4
	cp (ix+#2b)
	jr nz,l43ad
	ld (ix+#29),#01
.l43ad
	ld b,d
	or a
	jp p,l43b3
	dec b
.l43b3
	ld c,a
	jr l43c1
.l43b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l43c1
	pop hl
	bit 7,(ix+#14)
	jr z,l43ca
	ld h,d
	ld l,d
.l43ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l45a5
	ld c,h
	ld a,(ix+#02)
	call l45a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l441d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l440c
	dec (ix+#09)
	jr nz,l440c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4404
	xor a
	jr l4409
.l4404
	cp #10
	jr nz,l4409
	dec a
.l4409
	ld (ix+#1e),a
.l440c
	ld a,b
	sub (ix+#1e)
	jr nc,l4413
	xor a
.l4413
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l45a5
.l441d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l45cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l443b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l443b
	ld (l45cc),hl
	ret
.l443f
	ld hl,l45ee
	cp #61
	jr nc,l4449
	add a
	ld c,a
	add hl,bc
.l4449
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l4453
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l4578
	ld (ix+#1e),a
	jp l42e0
.l4465
	dec b
.l4466
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l4471
	neg
.l4471
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
	jp l42e0
.l4487
	dec b
	jr l448b
.l448a
	inc b
.l448b
	call l4578
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l42e0
.l449a
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
	jp l455d
.l44ab
	ld a,(hl)
	inc hl
	or a
	jr z,l44cd
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
.l44cd
	ld (ix+#29),a
	jp l42e0
.l44d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l45cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l45ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l42e0
.l44ed
	ld a,(hl)
	or a
	jr z,l44fe
	call l457a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l42e0
.l44fe
	ld hl,#0101
	ld (l45ca),hl
	jp l42e0
.l4507
	call l4578
	ld (ix+#1e),a
	jp l42e0
.l4510
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l4589
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l4589
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l42e0
.l4532
	ld a,(hl)
	inc hl
	ld (l45c9),a
	jp l42e0
.l453a
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
	jp l42e0
.l4559
	call l4578
	add a
.l455d
	ld b,#00
	ld c,a
	push hl
	ld hl,l47c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l42e0
.l4578
	ld a,(hl)
	inc hl
.l457a
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
.l4589
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l4740
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l45a5
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
.l45c4
	ret
.l45cc equ $ + 7
.l45cb equ $ + 6
.l45ca equ $ + 5
.l45c9 equ $ + 4
.l45c7 equ $ + 2
.l45c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45cf equ $ + 2
.l45ce equ $ + 1
	db #38,#00,#00
.l45d0
	dw l4453,l4466,l4465,l448a
	dw l4487,l449a,l44ab,l44d3
	dw l44ed,l44d3,l4507,l4510
	dw l4532,l453a,l4559
.l45ee
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
.l46b0 equ $ + 2
	dw #000f,#0008
.l46b4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l46be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46cf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l46e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4710 equ $ + 6
.l470c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l471a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l472b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4740 equ $ + 6
.l473a
	db #00,#4a,#4e,#4a,#9c,#4a,#1e,#05
	db #d2,#00,#d2,#00,#00,#00,#e0,#47
	db #20,#48,#40,#48,#40,#00,#60,#48
	db #a0,#48,#c0,#48,#c0,#00,#e0,#48
	db #20,#49,#40,#49,#c0,#00,#d7,#05
	db #d7,#05,#d3,#01,#11,#ff,#d1,#f0
	db #5f,#06,#d3,#10,#bd,#d3,#d7,#05
	db #d3,#01,#05,#78,#ff,#ff,#60,#49
	db #a0,#49,#40,#48,#40,#00,#60,#49
	db #c0,#49,#e0,#49,#c0,#00,#d3,#01
	db #17,#06,#17,#46,#45,#45,#17,#46
	db #d3,#05,#d3,#05,#01,#05,#d3,#01
	db #d3,#01,#d3,#01,#01,#00,#d2,#00
	db #4b,#f6,#c3,#f6,#f1,#f5,#95,#06
	db #d2,#57,#5f,#06,#05,#05,#57,#b8
	db #d3,#05,#d3,#05,#05,#05,#07,#4e
.l47c0 equ $ + 6
	db #d3,#01,#d2,#01,#00,#01,#17,#46
	db #d3,#05,#d3,#01,#d3,#01,#d3,#01
	db #d7,#05,#d7,#45,#d7,#05,#17,#46
	db #d2,#00,#d2,#00,#d2,#00,#d2,#00
	db #d0,#ff,#d0,#ff,#d0,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#90,#01
	db #d0,#01,#10,#02,#50,#02,#90,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0f
	db #0f,#0f,#0e,#0e,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#fd,#00
	db #2f,#01,#61,#01,#93,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0e,#0d,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#08,#00
	db #00,#00,#06,#06,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0d,#0d,#0c,#0c,#0b,#0b,#0b
	db #0a,#0a,#09,#09,#09,#08,#08,#07
	db #07,#07,#06,#06,#05,#05,#05,#04
	db #04,#03,#03,#03,#02,#02,#0e,#0c
	db #0a,#08,#06,#04,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#01,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#ea
	db #4a,#00,#ea,#4a,#00,#48,#4b,#00
	db #48,#4b,#00,#ea,#4a,#00,#ea,#4a
	db #00,#90,#4b,#00,#90,#4b,#00,#ea
	db #4a,#00,#ea,#4a,#00,#f2,#4b,#00
	db #f2,#4b,#00,#ea,#4a,#00,#ea,#4a
	db #00,#26,#4c,#00,#97,#4c,#00,#08
	db #4d,#00,#08,#4d,#00,#3a,#4e,#00
	db #3a,#4e,#00,#ad,#4e,#00,#48,#4b
	db #00,#ea,#4a,#00,#ea,#4a,#00,#0a
	db #4f,#80,#06,#4a,#00,#69,#4f,#00
	db #b8,#4f,#00,#c2,#4e,#00,#c2,#4e
	db #00,#04,#50,#00,#04,#50,#00,#48
	db #4b,#00,#48,#4b,#00,#04,#50,#00
	db #04,#50,#00,#48,#4b,#00,#48,#4b
	db #00,#04,#50,#00,#04,#50,#00,#4c
	db #50,#00,#4c,#50,#00,#7d,#50,#00
	db #7d,#50,#00,#7d,#50,#00,#7d,#50
	db #00,#f2,#50,#00,#c2,#4e,#00,#04
	db #50,#00,#04,#50,#00,#10,#51,#80
	db #54,#4a,#00,#2e,#51,#00,#7c,#51
	db #00,#fd,#51,#00,#fd,#51,#00,#7e
	db #52,#00,#7e,#52,#00,#7e,#52,#00
	db #7e,#52,#00,#7e,#52,#00,#7e,#52
	db #00,#fd,#51,#00,#fd,#51,#00,#7e
	db #52,#00,#7e,#52,#00,#ff,#52,#00
	db #80,#53,#00,#01,#54,#00,#01,#54
	db #00,#82,#54,#00,#82,#54,#00,#03
	db #55,#00,#fd,#51,#00,#7e,#52,#00
	db #7e,#52,#00,#25,#55,#80,#a2,#4a
	db #46,#70,#02,#46,#70,#02,#46,#70
	db #02,#c9,#70,#c6,#70,#c9,#70,#c6
	db #70,#cb,#70,#c6,#70,#4b,#70,#02
	db #46,#70,#02,#44,#70,#02,#46,#70
	db #02,#46,#70,#02,#cd,#70,#c6,#70
	db #cd,#70,#c6,#70,#ce,#70,#c6,#70
	db #ce,#70,#c6,#70,#cd,#70,#cd,#70
	db #49,#70,#02,#46,#70,#02,#cd,#70
	db #c6,#70,#d2,#70,#c4,#70,#c6,#70
	db #c4,#70,#c1,#70,#c4,#70,#41,#70
	db #02,#48,#70,#02,#46,#70,#02,#46
	db #70,#02,#46,#70,#0c,#ff,#2e,#10
	db #04,#3a,#10,#03,#2c,#10,#02,#b8
	db #10,#29,#10,#02,#35,#10,#02,#2c
	db #10,#02,#2e,#10,#04,#3a,#10,#05
	db #a9,#10,#35,#10,#02,#38,#10,#02
	db #3a,#10,#02,#2a,#10,#04,#36,#10
	db #03,#2c,#10,#02,#b8,#10,#29,#10
	db #02,#2c,#10,#02,#2e,#10,#02,#3a
	db #10,#09,#b8,#10,#35,#10,#02,#33
	db #10,#02,#31,#10,#02,#ff,#00,#02
	db #4a,#10,#02,#4a,#10,#02,#ca,#10
	db #4b,#10,#02,#cb,#10,#4b,#10,#02
	db #4b,#10,#02,#4b,#10,#02,#4b,#10
	db #02,#4a,#10,#02,#4a,#10,#02,#ca
	db #10,#4b,#10,#02,#c8,#10,#46,#10
	db #02,#4a,#10,#02,#41,#10,#02,#41
	db #10,#02,#46,#10,#02,#46,#10,#02
	db #46,#10,#02,#c6,#10,#48,#10,#02
	db #48,#10,#02,#48,#10,#02,#c8,#10
	db #48,#10,#02,#4a,#10,#02,#4a,#10
	db #02,#4a,#10,#02,#c8,#10,#4a,#10
	db #02,#4a,#10,#02,#4a,#10,#03,#ff
	db #52,#70,#02,#52,#70,#02,#52,#70
	db #02,#50,#70,#02,#50,#70,#02,#50
	db #70,#04,#4d,#70,#02,#4d,#70,#02
	db #4d,#70,#04,#4b,#70,#02,#4b,#70
	db #02,#4b,#70,#02,#49,#70,#02,#49
	db #70,#02,#49,#70,#02,#46,#70,#02
	db #46,#70,#1c,#ff,#49,#10,#02,#c9
	db #10,#44,#10,#02,#c4,#10,#49,#10
	db #02,#c9,#10,#44,#10,#02,#c4,#10
	db #c9,#10,#c9,#10,#c4,#10,#c4,#10
	db #c9,#10,#49,#10,#02,#c4,#10,#44
	db #10,#02,#c9,#10,#49,#10,#02,#44
	db #10,#02,#c4,#10,#c9,#10,#c9,#10
	db #c9,#10,#c9,#10,#44,#10,#02,#c9
	db #10,#44,#10,#02,#c4,#10,#49,#10
	db #02,#c9,#10,#44,#10,#02,#c4,#10
	db #c9,#10,#c9,#10,#c4,#10,#c4,#10
	db #49,#10,#02,#c9,#10,#44,#10,#02
	db #c4,#10,#49,#10,#02,#c9,#10,#44
	db #10,#02,#c4,#10,#c9,#10,#c9,#10
	db #c9,#10,#c9,#10,#ff,#49,#10,#02
	db #bd,#10,#44,#10,#02,#b8,#10,#49
	db #10,#02,#bd,#10,#44,#10,#02,#b8
	db #10,#c9,#10,#bd,#10,#c4,#10,#b8
	db #10,#49,#10,#02,#bd,#10,#44,#10
	db #02,#b8,#10,#49,#10,#02,#bd,#10
	db #44,#10,#02,#b8,#10,#c9,#10,#c9
	db #10,#c4,#10,#b8,#10,#49,#10,#02
	db #bd,#10,#44,#10,#02,#b8,#10,#49
	db #10,#02,#bd,#10,#44,#10,#02,#b8
	db #10,#c9,#10,#bd,#10,#c4,#10,#b8
	db #10,#49,#10,#02,#bd,#10,#44,#10
	db #02,#b8,#10,#49,#10,#02,#bd,#10
	db #44,#10,#02,#b8,#10,#c9,#10,#c9
	db #10,#c4,#10,#bd,#10,#ff,#bd,#10
	db #c1,#10,#c4,#10,#c1,#10,#bf,#10
	db #3d,#10,#02,#bf,#10,#c4,#10,#c1
	db #10,#44,#10,#02,#41,#10,#02,#3f
	db #10,#02,#bd,#10,#c1,#10,#c4,#10
	db #c1,#10,#bf,#10,#3d,#10,#02,#bd
	db #10,#c4,#10,#c1,#10,#44,#10,#02
	db #41,#10,#02,#3f,#10,#02,#bd,#10
	db #c2,#10,#c4,#10,#c2,#10,#bf,#10
	db #3d,#10,#02,#bf,#10,#c4,#10,#c2
	db #10,#44,#10,#02,#42,#10,#02,#3f
	db #10,#02,#bd,#10,#c2,#10,#c4,#10
	db #c2,#10,#bf,#10,#3d,#10,#02,#bf
	db #10,#c4,#10,#c2,#10,#44,#10,#02
	db #42,#10,#02,#3f,#10,#02,#ff,#44
	db #7b,#15,#44,#7b,#15,#44,#7b,#15
	db #44,#7b,#15,#44,#7b,#15,#44,#7b
	db #15,#44,#7b,#15,#44,#7b,#15,#44
	db #7b,#15,#44,#7b,#15,#44,#7b,#15
	db #44,#7b,#15,#44,#7b,#15,#44,#7b
	db #15,#44,#7b,#15,#44,#7b,#15,#44
	db #7b,#15,#44,#7b,#15,#44,#7b,#15
	db #44,#7b,#15,#39,#7b,#15,#39,#7b
	db #15,#39,#7b,#15,#39,#7b,#15,#39
	db #7b,#15,#39,#7b,#15,#39,#7b,#15
	db #44,#7b,#15,#44,#7b,#15,#34,#7b
	db #15,#44,#7b,#15,#44,#7b,#15,#44
	db #7b,#15,#44,#7b,#15,#44,#7b,#15
	db #44,#7b,#15,#44,#7b,#15,#44,#7b
	db #15,#40,#7b,#15,#44,#7b,#15,#44
	db #7b,#15,#40,#7b,#15,#40,#7b,#15
	db #44,#7b,#15,#44,#7b,#15,#44,#7b
	db #15,#44,#7b,#15,#44,#7b,#15,#3f
	db #7b,#15,#44,#7b,#15,#3f,#7b,#15
	db #44,#7b,#15,#44,#7b,#15,#44,#7b
	db #15,#44,#7b,#15,#44,#7b,#15,#44
	db #7b,#15,#39,#7b,#15,#39,#7b,#15
	db #44,#7b,#15,#39,#7b,#15,#44,#7b
	db #15,#39,#7b,#15,#39,#7b,#15,#ff
	db #c9,#10,#c1,#10,#c4,#10,#44,#10
	db #02,#bd,#10,#c9,#10,#c1,#10,#c4
	db #10,#c4,#10,#41,#10,#02,#49,#10
	db #02,#44,#10,#02,#c9,#10,#c1,#10
	db #c4,#10,#44,#10,#02,#bd,#10,#c9
	db #10,#c1,#10,#c4,#10,#c4,#10,#41
	db #10,#02,#c9,#10,#c9,#10,#44,#10
	db #02,#c9,#10,#c2,#10,#c4,#10,#44
	db #10,#02,#bd,#10,#c9,#10,#c2,#10
	db #c4,#10,#c4,#10,#42,#10,#02,#49
	db #10,#02,#44,#10,#02,#c9,#10,#c2
	db #10,#c4,#10,#44,#10,#02,#bd,#10
	db #c9,#10,#c2,#10,#c4,#10,#c4,#10
	db #42,#10,#02,#c9,#10,#c9,#10,#44
	db #10,#02,#ff,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#37,#ff
	db #3a,#70,#04,#46,#70,#03,#38,#70
	db #02,#c4,#70,#35,#70,#02,#41,#70
	db #02,#38,#70,#02,#3a,#70,#04,#46
	db #70,#05,#b5,#70,#41,#70,#02,#44
	db #70,#02,#46,#70,#02,#36,#70,#04
	db #42,#70,#03,#38,#70,#02,#c4,#70
	db #35,#70,#02,#38,#70,#02,#3a,#70
	db #02,#46,#70,#09,#c4,#70,#41,#70
	db #02,#3f,#70,#02,#3d,#70,#02,#ff
	db #46,#10,#02,#46,#10,#02,#46,#10
	db #02,#c9,#10,#c6,#10,#c9,#10,#c6
	db #10,#cb,#10,#c6,#10,#cb,#10,#46
	db #10,#02,#46,#10,#02,#44,#10,#02
	db #c6,#10,#46,#10,#02,#cd,#10,#c6
	db #10,#cd,#10,#c6,#10,#ce,#10,#c6
	db #10,#ce,#10,#c6,#10,#cd,#10,#cd
	db #10,#49,#10,#02,#46,#10,#02,#cd
	db #10,#c6,#10,#d2,#10,#c4,#10,#c6
	db #10,#c4,#10,#c1,#10,#c4,#10,#41
	db #10,#02,#48,#10,#02,#46,#10,#02
	db #46,#10,#02,#46,#10,#0c,#ff,#2e
	db #1b,#42,#31,#1b,#32,#2e,#1b,#22
	db #2e,#1b,#12,#33,#1b,#22,#2e,#1b
	db #22,#2c,#1b,#22,#2e,#1b,#42,#35
	db #1b,#32,#2e,#1b,#22,#2e,#1b,#12
	db #36,#1b,#22,#35,#1b,#22,#31,#1b
	db #22,#2e,#1b,#22,#35,#1b,#22,#3a
	db #1b,#22,#2e,#1b,#12,#2c,#1b,#22
	db #2c,#1b,#12,#29,#1b,#22,#30,#1b
	db #22,#2e,#1b,#22,#2e,#1b,#22,#2e
	db #1b,#22,#2e,#1b,#c2,#ff,#2e,#1b
	db #42,#31,#1b,#32,#2e,#1b,#22,#2e
	db #1b,#12,#33,#1b,#22,#2e,#1b,#22
	db #2c,#1b,#22,#2e,#1b,#42,#35,#1b
	db #32,#2e,#1b,#22,#2e,#1b,#12,#36
	db #1b,#22,#35,#1b,#22,#31,#1b,#22
	db #2e,#1b,#22,#35,#1b,#22,#3a,#1b
	db #22,#2e,#1b,#12,#2c,#1b,#22,#2c
	db #1b,#12,#29,#1b,#22,#30,#1b,#22
	db #2e,#1b,#22,#2e,#1b,#22,#2e,#1b
	db #e2,#ff,#2e,#70,#04,#3a,#70,#03
	db #2c,#70,#02,#b8,#70,#29,#70,#02
	db #35,#70,#02,#2c,#70,#02,#2e,#70
	db #04,#3a,#70,#05,#a9,#70,#35,#70
	db #02,#38,#70,#02,#3a,#70,#02,#2a
	db #70,#04,#36,#70,#03,#2c,#70,#02
	db #b8,#70,#29,#70,#02,#2c,#70,#02
	db #2e,#70,#02,#3a,#70,#09,#b8,#70
	db #35,#70,#02,#33,#70,#02,#31,#70
	db #02,#ff,#3d,#10,#04,#49,#10,#06
	db #49,#10,#04,#49,#10,#02,#3a,#10
	db #04,#46,#10,#06,#46,#10,#04,#46
	db #10,#02,#3b,#10,#04,#47,#10,#06
	db #47,#10,#04,#47,#10,#02,#38,#10
	db #04,#44,#10,#06,#44,#10,#04,#44
	db #10,#02,#ff,#3d,#10,#03,#c9,#10
	db #49,#10,#08,#3d,#10,#04,#3a,#10
	db #03,#c6,#10,#46,#10,#08,#3a,#10
	db #04,#3b,#10,#03,#c7,#10,#47,#10
	db #08,#47,#10,#04,#38,#10,#03,#c4
	db #10,#44,#10,#08,#38,#10,#04,#ff
	db #3a,#70,#04,#46,#70,#03,#38,#70
	db #02,#c4,#70,#35,#70,#02,#41,#70
	db #02,#38,#70,#02,#3a,#70,#04,#46
	db #70,#05,#b5,#70,#41,#70,#02,#44
	db #70,#02,#46,#70,#02,#36,#70,#04
	db #42,#70,#03,#38,#70,#02,#c4,#70
	db #41,#70,#02,#38,#70,#02,#3a,#70
	db #02,#46,#70,#09,#c4,#70,#41,#70
	db #02,#3f,#70,#02,#3d,#70,#02,#ff
	db #3a,#10,#0f,#3a,#10,#02,#3a,#10
	db #0f,#3a,#10,#0f,#3a,#10,#02,#3a
	db #10,#08,#b8,#10,#35,#10,#02,#33
	db #10,#02,#31,#10,#02,#ff,#3a,#10
	db #0e,#38,#10,#02,#3a,#10,#10,#36
	db #10,#0e,#38,#10,#02,#3a,#10,#09
	db #b8,#10,#35,#10,#02,#33,#10,#02
	db #31,#10,#02,#ff,#00,#03,#47,#3b
	db #44,#47,#3b,#34,#47,#3b,#24,#47
	db #3b,#14,#47,#3b,#24,#47,#3b,#24
	db #47,#3b,#24,#47,#3b,#44,#47,#3b
	db #34,#47,#3b,#24,#47,#3b,#14,#47
	db #3b,#24,#47,#3b,#24,#47,#3b,#24
	db #47,#3b,#24,#47,#3b,#24,#47,#3b
	db #24,#47,#3b,#14,#47,#3b,#24,#47
	db #3b,#14,#47,#3b,#24,#47,#3b,#24
	db #47,#3b,#24,#47,#3b,#24,#47,#3b
	db #b4,#ff
;
.music_info
	db "BabaFanz Meeting - Suprem Raster Part (1995)(Public Domain)(Greg)",0
	db "ST-128 Module",0

	read "music_end.asm"
