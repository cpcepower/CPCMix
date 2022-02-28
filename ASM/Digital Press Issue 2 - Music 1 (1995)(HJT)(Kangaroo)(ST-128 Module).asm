; Music of Digital Press Issue 2 - Music 1 (1995)(HJT)(Kangaroo)(ST-128 Module)
; Ripped by Megachur the 07/11/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DIGIPI21.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #1000

	read "music_header.asm"

	jp l1009
	jp l109d
	jp l1081
;
.init_music
.l1009
;
	xor a
	ld hl,l15b4
	call l107a
	ld hl,l15e2
	call l107a
	ld hl,l1610
	call l107a
	ld ix,l15b0
	ld iy,l163a
	ld de,#002e
	ld b,#03
.l1029
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
	djnz l1029
	ld hl,l14c9
	ld (hl),#06
	inc hl
	ld (hl),#20
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l14c5),hl
	ld (l14c7),hl
	ld a,#0c
	ld c,d
	call l14a5
	ld a,#0d
	ld c,d
	jp l14a5
.l107a
	ld b,#2a
.l107c
	ld (hl),a
	inc hl
	djnz l107c
	ret
;
.stop_music
.l1081
;
	ld a,#07
	ld c,#3f
	call l14a5
	ld a,#08
	ld c,#00
	call l14a5
	ld a,#09
	ld c,#00
	call l14a5
	ld a,#0a
	ld c,#00
	jp l14a5
;
.play_music
.l109d
;
	ld hl,l14cb
	dec (hl)
	ld ix,l15b0
	ld bc,l15be
	call l113f
	ld ix,l15de
	ld bc,l15ec
	call l113f
	ld ix,l160c
	ld bc,l161a
	call l113f
	ld hl,l14c4
	ld de,l14cb
	ld b,#06
	call l111c
	ld b,#07
	call l111c
	ld b,#0b
	call l111c
	ld b,#0d
	call l111c
	ld de,l14cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l15cf
	call l10f5
	ld hl,l15fd
	call l10f5
	ld hl,l162b
.l10f5
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
	jr nz,l110a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l110a
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
.l111c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l14a5
.l1127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l14a5
.l113f
	ld a,(l14cb)
	or a
	jp nz,l11f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l11f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l1127
	or a
	jp z,l11ec
	ld r,a
	and #7f
	cp #10
	jr c,l11c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l133f
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
	jr z,l11a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l11a0
	rrca
	ld c,a
	ld hl,l1640
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
	jr z,l11bf
	ld (ix+#1e),b
.l11bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l11e0
.l11c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l14d0
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
	add (hl)
	add a
	add a
	add h
	add (hl)
.l11e0
	ld a,d
	or a
	jr nz,l11ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l11ee
.l11ec
	ld a,(hl)
	inc hl
.l11ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l11f7
	ld a,(ix+#17)
	or a
	jr nz,l120d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l120d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l1223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l1223
	ld a,(ix+#0d)
	or a
	jr z,l1231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l124f
.l1231
	ld a,(ix+#1a)
	or a
	jp z,l1256
	ld c,a
	cp #03
	jr nz,l123e
	xor a
.l123e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l124f
	ld a,(ix+#18)
	dec c
	jr z,l124f
	ld a,(ix+#19)
.l124f
	add (ix+#07)
	ld b,d
	call l133f
.l1256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l127e
	dec (ix+#1b)
	jr nz,l127e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l12b6
.l127e
	ld a,(ix+#29)
	or a
	jr z,l12b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l12ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l12a4
	ld (ix+#29),#ff
	jr l12ad
.l12a4
	cp (ix+#2b)
	jr nz,l12ad
	ld (ix+#29),#01
.l12ad
	ld b,d
	or a
	jp p,l12b3
	dec b
.l12b3
	ld c,a
	jr l12c1
.l12b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l12c1
	pop hl
	bit 7,(ix+#14)
	jr z,l12ca
	ld h,d
	ld l,d
.l12ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l14a5
	ld c,h
	ld a,(ix+#02)
	call l14a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l131d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l130c
	dec (ix+#09)
	jr nz,l130c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l1304
	xor a
	jr l1309
.l1304
	cp #10
	jr nz,l1309
	dec a
.l1309
	ld (ix+#1e),a
.l130c
	ld a,b
	sub (ix+#1e)
	jr nc,l1313
	xor a
.l1313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l14a5
.l131d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l14cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l133b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l133b
	ld (l14cc),hl
	ret
.l133f
	ld hl,l14ee
	cp #61
	jr nc,l1349
	add a
	ld c,a
	add hl,bc
.l1349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l1353
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l1478
	ld (ix+#1e),a
	jp l11e0
.l1365
	dec b
.l1366
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l1371
	neg
.l1371
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
	jp l11e0
.l1387
	dec b
	jr l138b
.l138a
	inc b
.l138b
	call l1478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l11e0
.l139a
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
	jp l145d
.l13ab
	ld a,(hl)
	inc hl
	or a
	jr z,l13cd
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
.l13cd
	ld (ix+#29),a
	jp l11e0
.l13d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l14cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l14ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l11e0
.l13ed
	ld a,(hl)
	or a
	jr z,l13fe
	call l147a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l11e0
.l13fe
	ld hl,#0101
	ld (l14ca),hl
	jp l11e0
.l1407
	call l1478
	ld (ix+#1e),a
	jp l11e0
.l1410
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l1489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l1489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l11e0
.l1432
	ld a,(hl)
	inc hl
	ld (l14c9),a
	jp l11e0
.l143a
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
	jp l11e0
.l1459
	call l1478
	add a
.l145d
	ld b,#00
	ld c,a
	push hl
	ld hl,l16c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l11e0
.l1478
	ld a,(hl)
	inc hl
.l147a
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
.l1489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l1640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l14a5
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
.l14c4
	ret
.l14cc equ $ + 7
.l14cb equ $ + 6
.l14ca equ $ + 5
.l14c9 equ $ + 4
.l14c7 equ $ + 2
.l14c5
	db #06,#28,#10,#08,#06,#0b,#05,#06
.l14cf equ $ + 2
.l14ce equ $ + 1
	db #28,#10,#08
.l14d0
	dw l1353,l1366,l1365,l138a
	dw l1387,l139a,l13ab,l13d3
	dw l13ed,l13d3,l1407,l1410
	dw l1432,l143a,l1459
.l14ee
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
.l15b4 equ $ + 4
.l15b0
	db #08,#00,#01,#08,#c9,#00,#00,#33
.l15be equ $ + 6
	db #00,#00,#00,#00,#20,#19,#60,#18
	db #a0,#18,#c0,#17,#00,#00,#08,#18
.l15cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #28,#1a,#43,#19,#00,#80,#00,#00
.l15de equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l15e2 equ $ + 2
	db #03,#10,#ef,#00,#00,#30,#00,#00
.l15ec equ $ + 4
	db #00,#00,#00,#00,#e0,#16,#20,#17
	db #40,#17,#00,#00,#02,#1e,#00,#00
.l15fd equ $ + 5
	db #00,#00,#00,#00,#00,#02,#e2,#1b
	db #85,#19,#00,#10,#00,#00,#00,#00
.l160c equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l1610
	db #52,#01,#00,#2a,#00,#00,#00,#00
.l161a equ $ + 2
	db #c0,#18,#e0,#17,#20,#18,#40,#18
	db #14,#0c,#1a,#06,#00,#00,#00,#00
.l162b equ $ + 3
	db #00,#00,#00,#01,#86,#1d,#c7,#19
	db #00,#50,#00,#00,#00,#00,#00,#00
.l163a equ $ + 2
	db #01,#01,#40,#19,#82,#19,#c4,#19
.l1640
	db #d2,#cf,#d1,#cf,#d1,#cf,#00,#00
	db #e0,#16,#20,#17,#40,#17,#00,#00
	db #d2,#cf,#d6,#d3,#d2,#cf,#ff,#ff
	db #d1,#cf,#d2,#cf,#d2,#cf,#ff,#ff
	db #60,#17,#a0,#17,#c0,#17,#00,#00
	db #e0,#17,#20,#18,#40,#18,#14,#0c
	db #d1,#cf,#d2,#cf,#d2,#cf,#ff,#ff
	db #d1,#cf,#d2,#cf,#d2,#cf,#ff,#ff
	db #60,#18,#a0,#18,#c0,#17,#00,#00
	db #d1,#cf,#d2,#cf,#d2,#cf,#ff,#ff
	db #d1,#cf,#d2,#cf,#d2,#cf,#ff,#ff
	db #d1,#cf,#d2,#cf,#d2,#cf,#ff,#ff
	db #d1,#cf,#d2,#cf,#d2,#cf,#ff,#ff
	db #d1,#cf,#d2,#cf,#d2,#cf,#ff,#ff
	db #d1,#cf,#d2,#cf,#d2,#cf,#ff,#ff
	db #d1,#cf,#d2,#cf,#d2,#cf,#ff,#ff
.l16c0
	db #c0,#18,#d2,#cf,#e0,#18,#00,#19
	db #20,#19,#d2,#cf,#d2,#cf,#d1,#cf
	db #d1,#cf,#d1,#cf,#d1,#cf,#d2,#cf
	db #d2,#cf,#d1,#cf,#d1,#cf,#d2,#cf
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0c,#0b,#0a
	db #09,#09,#08,#08,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #04,#06,#07,#09,#0c,#11,#17,#1d
	db #15,#10,#0c,#09,#06,#05,#04,#04
	db #03,#03,#03,#02,#02,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0f,#0d,#0b,#08,#06,#04,#0c,#0b
	db #0a,#09,#08,#07,#06,#04,#05,#06
	db #07,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#fe,#ff
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#03,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#0a,#0a,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#86,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#05,#05,#09,#09,#00,#00
	db #05,#05,#09,#09,#00,#00,#05,#05
	db #09,#09,#00,#00,#05,#05,#09,#09
	db #00,#00,#05,#05,#09,#09,#00,#00
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #04,#04,#07,#07,#00,#00,#04,#04
	db #07,#07,#00,#00,#04,#04,#07,#07
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #00,#00,#03,#03,#08,#08,#00,#00
	db #03,#03,#08,#08,#00,#00,#03,#03
	db #08,#08,#00,#00,#03,#03,#08,#08
	db #00,#00,#03,#03,#08,#08,#00,#00
	db #00,#06,#1a,#00,#3b,#1a,#00,#70
	db #1a,#00,#70,#1a,#00,#06,#1a,#00
	db #3b,#1a,#00,#70,#1a,#00,#70,#1a
	db #00,#06,#1a,#00,#06,#1a,#00,#a8
	db #1a,#00,#a8,#1a,#00,#dd,#1a,#00
	db #06,#1a,#00,#3b,#1a,#00,#70,#1a
	db #00,#70,#1a,#00,#06,#1a,#00,#3b
	db #1a,#00,#70,#1a,#00,#70,#1a,#80
	db #4c,#19,#00,#c1,#1b,#00,#f3,#1b
	db #00,#25,#1c,#00,#25,#1c,#00,#12
	db #1b,#00,#12,#1b,#00,#6f,#1b,#00
	db #6f,#1b,#00,#12,#1b,#00,#12,#1b
	db #00,#57,#1c,#00,#57,#1c,#00,#94
	db #1c,#00,#12,#1b,#00,#12,#1b,#00
	db #6f,#1b,#00,#6f,#1b,#00,#c1,#1b
	db #00,#f3,#1b,#00,#25,#1c,#00,#25
	db #1c,#80,#8e,#19,#00,#71,#1d,#00
	db #f5,#1c,#00,#1c,#1d,#00,#9a,#1d
	db #00,#cc,#1c,#00,#f5,#1c,#00,#1c
	db #1d,#00,#44,#1d,#00,#c7,#1d,#00
	db #f1,#1d,#00,#24,#1e,#00,#66,#1e
	db #00,#a7,#1e,#00,#cc,#1c,#00,#f5
	db #1c,#00,#1c,#1d,#00,#44,#1d,#00
	db #71,#1d,#00,#f5,#1c,#00,#1c,#1d
	db #00,#9a,#1d,#80,#d0,#19,#3e,#8f
	db #24,#be,#80,#3e,#80,#02,#be,#80
	db #3e,#80,#02,#3e,#80,#02,#be,#80
	db #3e,#80,#02,#be,#80,#3e,#80,#02
	db #43,#8f,#24,#c3,#80,#43,#80,#02
	db #c3,#80,#43,#80,#02,#45,#8f,#24
	db #c5,#80,#45,#80,#02,#c5,#80,#45
	db #80,#02,#ff,#3e,#8f,#24,#be,#80
	db #3e,#80,#02,#be,#80,#3e,#80,#02
	db #3e,#80,#02,#be,#80,#3e,#80,#02
	db #be,#80,#3e,#80,#02,#46,#8f,#22
	db #c6,#80,#46,#80,#02,#c6,#80,#46
	db #80,#02,#48,#8f,#22,#c8,#80,#48
	db #80,#02,#c8,#80,#48,#80,#02,#ff
	db #3f,#8f,#23,#bf,#80,#3f,#80,#02
	db #bf,#80,#3f,#80,#02,#3f,#80,#02
	db #bf,#80,#3f,#80,#02,#bf,#80,#3f
	db #80,#02,#44,#80,#02,#c4,#80,#44
	db #80,#02,#c4,#80,#44,#80,#02,#46
	db #80,#02,#c6,#80,#46,#80,#02,#c6
	db #80,#46,#80,#02,#ff,#00,#20,#ff
	db #43,#8f,#24,#c3,#80,#43,#80,#02
	db #c3,#80,#43,#80,#02,#45,#8f,#24
	db #c5,#80,#45,#80,#02,#c5,#80,#45
	db #80,#02,#46,#8f,#22,#c6,#80,#46
	db #80,#02,#c6,#80,#46,#80,#02,#48
	db #8f,#22,#c8,#80,#48,#80,#02,#c8
	db #80,#48,#80,#02,#ff,#41,#8f,#23
	db #c1,#80,#41,#80,#02,#c1,#80,#41
	db #80,#02,#41,#80,#02,#c1,#80,#41
	db #80,#02,#c1,#80,#41,#80,#02,#41
	db #80,#02,#c1,#80,#41,#80,#02,#c1
	db #80,#41,#80,#02,#41,#80,#02,#c1
	db #80,#41,#80,#02,#c1,#80,#41,#80
	db #02,#ff,#ae,#88,#15,#ae,#88,#15
	db #c6,#88,#15,#c6,#88,#15,#40,#11
	db #10,#ae,#80,#c6,#88,#15,#c6,#88
	db #15,#ae,#88,#15,#ae,#88,#15,#c6
	db #88,#15,#c6,#88,#15,#40,#11,#10
	db #ae,#80,#c6,#88,#15,#c6,#88,#15
	db #a7,#88,#20,#a7,#88,#20,#b3,#88
	db #10,#b3,#88,#10,#40,#11,#10,#b3
	db #80,#b3,#88,#10,#b3,#88,#10,#a9
	db #88,#1c,#a9,#88,#1c,#c1,#88,#1c
	db #c1,#88,#1c,#40,#11,#10,#a9,#80
	db #c1,#88,#1c,#40,#11,#10,#ff,#b3
	db #88,#10,#b3,#80,#cb,#88,#10,#cb
	db #80,#40,#11,#10,#b3,#80,#cb,#88
	db #10,#cb,#80,#b3,#88,#10,#b3,#80
	db #cb,#88,#10,#cb,#80,#40,#11,#10
	db #b3,#80,#cb,#88,#10,#cb,#80,#ac
	db #88,#18,#ac,#80,#c4,#88,#18,#c4
	db #80,#40,#11,#10,#ac,#80,#c4,#88
	db #18,#c4,#80,#ae,#88,#15,#ae,#80
	db #c6,#88,#15,#c6,#80,#40,#11,#10
	db #ae,#80,#c6,#88,#15,#40,#11,#10
	db #ff,#2e,#41,#20,#3a,#40,#02,#40
	db #10,#02,#3a,#40,#02,#2e,#40,#02
	db #3a,#40,#02,#40,#10,#02,#3a,#40
	db #02,#33,#40,#02,#3f,#40,#02,#40
	db #10,#02,#3f,#40,#02,#29,#40,#02
	db #35,#40,#02,#40,#10,#02,#b5,#40
	db #c0,#10,#ff,#2e,#40,#02,#3a,#40
	db #02,#40,#10,#02,#3a,#40,#02,#2e
	db #40,#02,#3a,#40,#02,#40,#10,#02
	db #3a,#40,#02,#33,#40,#02,#3f,#40
	db #02,#40,#10,#02,#3f,#40,#02,#29
	db #40,#02,#35,#40,#02,#40,#10,#02
	db #b5,#40,#c0,#10,#ff,#33,#40,#02
	db #3f,#40,#02,#40,#10,#02,#3f,#40
	db #02,#33,#40,#02,#3f,#40,#02,#40
	db #10,#02,#3f,#40,#02,#38,#40,#02
	db #44,#40,#02,#40,#10,#02,#44,#40
	db #02,#2e,#40,#02,#3a,#40,#02,#40
	db #10,#02,#ba,#40,#c0,#10,#ff,#33
	db #88,#10,#02,#4b,#88,#10,#02,#40
	db #11,#20,#4b,#88,#10,#02,#29,#88
	db #1c,#02,#41,#88,#1c,#02,#40,#11
	db #20,#41,#88,#1c,#02,#2b,#88,#19
	db #02,#43,#88,#19,#02,#40,#11,#20
	db #43,#88,#19,#02,#2d,#88,#16,#02
	db #45,#88,#16,#02,#40,#11,#20,#45
	db #88,#16,#02,#ff,#29,#88,#1c,#02
	db #41,#80,#02,#40,#11,#20,#41,#88
	db #1c,#02,#29,#80,#02,#41,#80,#02
	db #40,#11,#20,#41,#88,#1c,#02,#29
	db #80,#02,#41,#80,#02,#40,#11,#20
	db #41,#88,#1c,#02,#a9,#80,#40,#11
	db #10,#41,#88,#1c,#02,#40,#11,#20
	db #40,#11,#20,#ff,#3a,#5f,#20,#3a
	db #5f,#20,#be,#50,#c1,#50,#c3,#50
	db #3a,#50,#05,#3c,#50,#04,#3a,#50
	db #05,#b7,#50,#ba,#50,#b7,#50,#3e
	db #50,#02,#3c,#50,#02,#3a,#50,#02
	db #bc,#50,#ba,#50,#ff,#00,#02,#3a
	db #50,#02,#be,#50,#c1,#50,#c3,#50
	db #41,#50,#05,#42,#50,#04,#43,#50
	db #05,#c3,#50,#c6,#50,#c3,#50,#4a
	db #50,#02,#48,#50,#02,#46,#50,#02
	db #48,#50,#02,#ff,#3f,#5f,#20,#3f
	db #50,#02,#c3,#50,#c6,#50,#c8,#50
	db #46,#50,#05,#48,#50,#04,#3f,#50
	db #05,#bc,#50,#bf,#50,#bc,#50,#c3
	db #50,#41,#50,#03,#3f,#50,#02,#c1
	db #50,#bf,#50,#ff,#00,#02,#3f,#50
	db #02,#c3,#50,#c6,#50,#c8,#50,#46
	db #50,#05,#47,#50,#04,#48,#50,#02
	db #4b,#50,#02,#c8,#50,#c6,#50,#c3
	db #50,#bf,#50,#c3,#50,#46,#50,#02
	db #c7,#50,#48,#50,#02,#46,#50,#02
	db #ff,#3a,#5f,#20,#3a,#50,#02,#be
	db #50,#c1,#50,#c3,#50,#3a,#50,#05
	db #3c,#50,#04,#3a,#50,#05,#b7,#50
	db #ba,#50,#b7,#50,#3e,#50,#02,#3c
	db #50,#02,#3a,#50,#02,#bc,#50,#ba
	db #50,#ff,#00,#02,#3f,#50,#02,#c3
	db #50,#c6,#50,#c8,#50,#46,#50,#05
	db #47,#50,#04,#48,#50,#02,#4b,#50
	db #02,#c8,#50,#c6,#50,#c3,#50,#bf
	db #50,#43,#50,#02,#43,#50,#02,#43
	db #50,#02,#c1,#50,#bf,#50,#ff,#4a
	db #50,#02,#46,#50,#02,#4a,#50,#02
	db #4d,#50,#02,#4a,#50,#02,#46,#50
	db #02,#4a,#50,#02,#4d,#50,#02,#4f
	db #50,#04,#4d,#50,#04,#ca,#50,#48
	db #50,#02,#46,#50,#03,#43,#50,#02
	db #ff,#41,#50,#02,#46,#50,#02,#4a
	db #50,#02,#4d,#50,#02,#41,#50,#02
	db #46,#50,#02,#4a,#50,#02,#4d,#50
	db #02,#4f,#50,#02,#cd,#50,#4f,#50
	db #02,#cd,#50,#4f,#50,#02,#cd,#50
	db #54,#50,#02,#d1,#50,#4d,#50,#02
	db #4b,#50,#02,#ff,#4b,#5f,#10,#c6
	db #50,#c3,#50,#c6,#50,#cb,#50,#c6
	db #50,#cf,#50,#cb,#50,#cd,#50,#c8
	db #50,#c5,#50,#c8,#50,#cd,#50,#c8
	db #50,#d1,#50,#cd,#50,#cf,#50,#cb
	db #50,#c6,#50,#cb,#50,#cf,#50,#cb
	db #50,#d2,#50,#cf,#50,#d1,#50,#cd
	db #50,#c8,#50,#cd,#50,#d1,#50,#cd
	db #50,#d4,#50,#d1,#50,#ff,#d2,#50
	db #cf,#50,#cb,#50,#cf,#50,#d2,#50
	db #cf,#50,#d7,#50,#d2,#50,#d4,#50
	db #d1,#50,#cd,#50,#d1,#50,#d4,#50
	db #d1,#50,#d9,#50,#d4,#50,#d7,#50
	db #d2,#50,#cf,#50,#d2,#50,#d7,#50
	db #d2,#50,#db,#50,#d7,#50,#d9,#50
	db #d4,#50,#d1,#50,#cd,#50,#d4,#50
	db #d1,#50,#cd,#50,#c8,#50,#ff,#51
	db #5f,#10,#cd,#50,#c8,#50,#c5,#50
	db #cd,#50,#c8,#50,#c5,#50,#c1,#50
	db #c8,#50,#c5,#50,#c1,#50,#bc,#50
	db #c5,#50,#c1,#50,#bc,#50,#b9,#50
	db #c1,#50,#bc,#50,#b9,#50,#b5,#50
	db #bc,#50,#b9,#50,#b5,#50,#b0,#50
	db #b9,#50,#b5,#50,#b0,#50,#ad,#50
	db #b5,#50,#b0,#50,#ad,#50,#a9,#50
	db #ff
;
.music_info
	db "Digital Press Issue 2 - Music 1 (1995)(HJT)(Kangaroo)",0
	db "ST-128 Module",0

	read "music_end.asm"
