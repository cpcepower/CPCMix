; Music of Rainbow Meeting Demo - 2 - No Return Part (1994)(POW!)()(ST-Module)
; Ripped by Megachur the 26/10/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RAMD2NRP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2019
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
	ld (hl),#30
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
	ld (hl),#30
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
	add l
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
	db #00,#00,#00,#00,#00,#00,#00,#00
.l14cf equ $ + 2
.l14ce equ $ + 1
	db #38,#00,#00
.l14d0
	dw l1353,l1366,l1365,l138a
	dw l1387,l139a,l13ab,l13d3
	dw l13ed,l13d3,l1407,l1410
.l14ee equ $ + 6
	dw l1432,l143a,l1459,#0000
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04b4
	dw #0470,#0431,#03f4,#03bc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010,#000f
.l15b4 equ $ + 4
.l15b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l15be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l15cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l15de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l15e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l15ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l15fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l160c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l1610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l161a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l162b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l163a
	dw l1920,l1935,l194a
.l1640
	db #e0,#16,#20,#17,#40,#17,#00,#00
	db #60,#17,#a0,#17,#c0,#17,#00,#00
	db #d2,#cf,#d2,#cf,#d2,#cf,#00,#00
	db #d2,#cf,#d2,#cf,#d2,#cf,#00,#00
	db #d2,#cf,#d2,#cf,#d2,#cf,#00,#00
	db #d2,#cf,#d2,#cf,#d2,#cf,#00,#00
	db #e0,#17,#20,#18,#40,#18,#0b,#15
	db #e0,#17,#60,#18,#40,#18,#00,#00
	db #d2,#cf,#d2,#cf,#d2,#cf,#00,#00
	db #80,#18,#c0,#18,#40,#18,#08,#18
	db #d2,#cf,#d2,#cf,#d2,#cf,#00,#00
	db #d2,#cf,#d2,#cf,#d2,#cf,#00,#00
	db #d2,#cf,#d2,#cf,#d2,#cf,#00,#00
	db #d2,#cf,#d2,#cf,#d2,#cf,#00,#00
	db #d2,#cf,#d2,#cf,#d2,#cf,#00,#00
	db #d2,#cf,#d2,#cf,#d2,#cf,#00,#00
.l16c0
	db #d2,#cf,#d2,#cf,#e0,#18,#00,#19
	db #d2,#cf,#d2,#cf,#d2,#cf,#d2,#cf
	db #d2,#cf,#d2,#cf,#d2,#cf,#d2,#cf
	db #d2,#cf,#d2,#cf,#d2,#cf,#d2,#cf
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0b,#0a,#0a,#09,#06,#00,#00
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
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#08
	db #08,#07,#07,#06,#05,#04,#04,#04
	db #04,#03,#02,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#07,#07,#07,#08,#08
	db #08,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#09
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #0b,#0a,#09,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
.l1920
	db #00,#5f,#19,#00,#c0,#19,#00,#c0
	db #19,#00,#c0,#19,#00,#c0,#19,#00
.l1935 equ $ + 5
	db #c0,#19,#80,#26,#19,#00,#21,#1a
	db #00,#2b,#1a,#00,#64,#1a,#00,#9d
	db #1a,#00,#9d,#1a,#00,#64,#1a,#80
.l194a equ $ + 2
	db #3b,#19,#00,#b3,#1a,#00,#b3,#1a
	db #00,#b6,#1a,#00,#b6,#1a,#00,#b6
	db #1a,#00,#b6,#1a,#80,#50,#19,#a8
	db #70,#a8,#70,#a8,#70,#ab,#70,#ab
	db #70,#ab,#70,#ad,#70,#ad,#70,#ad
	db #70,#ae,#70,#ae,#70,#af,#70,#a8
	db #70,#a8,#70,#a8,#70,#ab,#70,#ab
	db #70,#ab,#70,#ad,#70,#ad,#70,#ad
	db #70,#ae,#70,#ae,#70,#af,#70,#a8
	db #70,#a8,#70,#a8,#70,#ab,#70,#ab
	db #70,#ab,#70,#ad,#70,#ad,#70,#ad
	db #70,#ae,#70,#ae,#70,#af,#70,#a8
	db #70,#a8,#70,#a8,#70,#ab,#70,#ab
	db #70,#ab,#70,#ad,#70,#ad,#70,#ad
	db #70,#ae,#70,#ae,#70,#af,#70,#ff
	db #c0,#00,#a8,#70,#a8,#70,#c0,#10
	db #ab,#70,#ab,#70,#c0,#00,#ad,#70
	db #ad,#70,#c0,#10,#ae,#70,#af,#70
	db #c0,#00,#a8,#70,#a8,#70,#c0,#10
	db #ab,#70,#ab,#70,#c0,#00,#ad,#70
	db #ad,#70,#c0,#10,#ae,#70,#af,#70
	db #c0,#00,#a8,#70,#a8,#70,#c0,#10
	db #ab,#70,#ab,#70,#c0,#00,#ad,#70
	db #ad,#70,#c0,#10,#ae,#70,#af,#70
	db #c0,#00,#a8,#70,#a8,#70,#c0,#10
	db #ab,#70,#ab,#70,#c0,#00,#ad,#70
	db #ad,#70,#c0,#10,#ae,#70,#af,#70
	db #ff,#00,#2c,#c0,#10,#3d,#10,#02
	db #b9,#10,#ff,#43,#70,#02,#40,#70
	db #03,#c0,#70,#45,#70,#02,#c7,#70
	db #45,#70,#02,#c3,#70,#47,#70,#03
	db #45,#70,#02,#c3,#70,#45,#70,#02
	db #47,#70,#04,#43,#70,#02,#40,#70
	db #03,#c0,#70,#43,#70,#03,#42,#70
	db #02,#40,#70,#09,#bf,#10,#3b,#10
	db #02,#b6,#10,#ff,#43,#70,#02,#40
	db #70,#03,#c0,#70,#45,#70,#02,#c7
	db #70,#45,#70,#02,#c3,#70,#47,#70
	db #03,#45,#70,#02,#c3,#70,#45,#70
	db #02,#47,#70,#04,#43,#70,#02,#40
	db #70,#03,#c0,#70,#43,#70,#03,#42
	db #70,#02,#40,#70,#09,#bf,#10,#39
	db #10,#02,#b6,#10,#ff,#4f,#90,#06
	db #4e,#90,#06,#4c,#90,#06,#4a,#90
	db #03,#47,#90,#03,#4c,#90,#12,#4e
	db #90,#06,#ff,#00,#30,#ff,#4c,#6f
	db #02,#2a,#4a,#6f,#63,#ff
;
.music_info
	db "Rainbow Meeting Demo - 2 - No Return Part (1994)(POW!)()",0
	db "ST-Module",0

	read "music_end.asm"
