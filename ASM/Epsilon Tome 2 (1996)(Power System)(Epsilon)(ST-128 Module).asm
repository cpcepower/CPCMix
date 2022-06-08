; Music of Epsilon Tome 2 (1996)(Power System)(Epsilon)(ST-128 Module)
; Ripped by Megachur the 31/03/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EPSILOT2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 31
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #5000

	read "music_header.asm"

	jp l5009
	jp l509d
	jp l5081
;
.init_music
.l5009
;
	xor a
	ld hl,l55b4
	call l507a
	ld hl,l55e2
	call l507a
	ld hl,l5610
	call l507a
	ld ix,l55b0
	ld iy,l563a
	ld de,#002e
	ld b,#03
.l5029
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
	djnz l5029
	ld hl,l54c9
	ld (hl),#0c
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l54c5),hl
	ld (l54c7),hl
	ld a,#0c
	ld c,d
	call l54a5
	ld a,#0d
	ld c,d
	jp l54a5
.l507a
	ld b,#2a
.l507c
	ld (hl),a
	inc hl
	djnz l507c
	ret
;
.stop_music
.l5081
;
	ld a,#07
	ld c,#3f
	call l54a5
	ld a,#08
	ld c,#00
	call l54a5
	ld a,#09
	ld c,#00
	call l54a5
	ld a,#0a
	ld c,#00
	jp l54a5
;
.play_music
.l509d
;
	ld hl,l54cb
	dec (hl)
	ld ix,l55b0
	ld bc,l55be
	call l513f
	ld ix,l55de
	ld bc,l55ec
	call l513f
	ld ix,l560c
	ld bc,l561a
	call l513f
	ld hl,l54c4
	ld de,l54cb
	ld b,#06
	call l511c
	ld b,#07
	call l511c
	ld b,#0b
	call l511c
	ld b,#0d
	call l511c
	ld de,l54cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l55cf
	call l50f5
	ld hl,l55fd
	call l50f5
	ld hl,l562b
.l50f5
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
	jr nz,l510a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l510a
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
.l511c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l54a5
.l5127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l54a5
.l513f
	ld a,(l54cb)
	or a
	jp nz,l51f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l51f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5127
	or a
	jp z,l51ec
	ld r,a
	and #7f
	cp #10
	jr c,l51c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l533f
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
	jr z,l51a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l51a0
	rrca
	ld c,a
	ld hl,l5640
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
	jr z,l51bf
	ld (ix+#1e),b
.l51bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l51e0
.l51c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l54d0
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
.l51e0
	ld a,d
	or a
	jr nz,l51ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l51ee
.l51ec
	ld a,(hl)
	inc hl
.l51ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l51f7
	ld a,(ix+#17)
	or a
	jr nz,l520d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l520d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5223
	ld a,(ix+#0d)
	or a
	jr z,l5231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l524f
.l5231
	ld a,(ix+#1a)
	or a
	jp z,l5256
	ld c,a
	cp #03
	jr nz,l523e
	xor a
.l523e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l524f
	ld a,(ix+#18)
	dec c
	jr z,l524f
	ld a,(ix+#19)
.l524f
	add (ix+#07)
	ld b,d
	call l533f
.l5256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l527e
	dec (ix+#1b)
	jr nz,l527e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l52b6
.l527e
	ld a,(ix+#29)
	or a
	jr z,l52b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l52ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l52a4
	ld (ix+#29),#ff
	jr l52ad
.l52a4
	cp (ix+#2b)
	jr nz,l52ad
	ld (ix+#29),#01
.l52ad
	ld b,d
	or a
	jp p,l52b3
	dec b
.l52b3
	ld c,a
	jr l52c1
.l52b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l52c1
	pop hl
	bit 7,(ix+#14)
	jr z,l52ca
	ld h,d
	ld l,d
.l52ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l54a5
	ld c,h
	ld a,(ix+#02)
	call l54a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l531d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l530c
	dec (ix+#09)
	jr nz,l530c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5304
	xor a
	jr l5309
.l5304
	cp #10
	jr nz,l5309
	dec a
.l5309
	ld (ix+#1e),a
.l530c
	ld a,b
	sub (ix+#1e)
	jr nc,l5313
	xor a
.l5313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l54a5
.l531d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l54cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l533b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l533b
	ld (l54cc),hl
	ret
.l533f
	ld hl,l54ee
	cp #61
	jr nc,l5349
	add a
	ld c,a
	add hl,bc
.l5349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l5353
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l5478
	ld (ix+#1e),a
	jp l51e0
.l5365
	dec b
.l5366
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l5371
	neg
.l5371
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
	jp l51e0
.l5387
	dec b
	jr l538b
.l538a
	inc b
.l538b
	call l5478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l51e0
.l539a
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
	jp l545d
.l53ab
	ld a,(hl)
	inc hl
	or a
	jr z,l53cd
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
.l53cd
	ld (ix+#29),a
	jp l51e0
.l53d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l54cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l54ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l51e0
.l53ed
	ld a,(hl)
	or a
	jr z,l53fe
	call l547a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l51e0
.l53fe
	ld hl,#0101
	ld (l54ca),hl
	jp l51e0
.l5407
	call l5478
	ld (ix+#1e),a
	jp l51e0
.l5410
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l5489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l5489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l51e0
.l5432
	ld a,(hl)
	inc hl
	ld (l54c9),a
	jp l51e0
.l543a
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
	jp l51e0
.l5459
	call l5478
	add a
.l545d
	ld b,#00
	ld c,a
	push hl
	ld hl,l56c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l51e0
.l5478
	ld a,(hl)
	inc hl
.l547a
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
.l5489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l5640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l54a5
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
.l54c4
	ret
.l54cc equ $ + 7
.l54cb equ $ + 6
.l54ca equ $ + 5
.l54c9 equ $ + 4
.l54c7 equ $ + 2
.l54c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l54cf equ $ + 2
.l54ce equ $ + 1
	db #38,#00,#00
.l54d0
	dw l5353,l5366,l5365,l538a
	dw l5387,l539a,l53ab,l53d3
	dw l53ed,l53d3,l5407,l5410
	dw l5432,l543a,l5459
.l54ee
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
.l55b0
	db #08,#00
	db #01,#08
.l55b4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l55be equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l55cf equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l55e2 equ $ + 6
.l55de equ $ + 2
	db #00,#00,#09,#02,#03,#10,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l55ec
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l55fd equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5610 equ $ + 4
.l560c
	db #0a,#04,#05,#20,#00,#00,#00,#00
.l561a equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l562b equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l563a equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#59
.l5640 equ $ + 4
	db #21,#59,#42,#59,#d2,#0f,#d2,#0f
	db #d2,#0f,#00,#00,#e0,#56,#20,#57
	db #40,#57,#40,#00,#d2,#0f,#d2,#0f
	db #d2,#0f,#00,#00,#60,#57,#a0,#57
	db #c0,#57,#c0,#00,#d2,#0f,#d2,#0f
	db #d2,#0f,#00,#00,#d2,#0f,#d2,#0f
	db #d2,#0f,#00,#00,#d2,#0f,#d2,#0f
	db #d2,#0f,#00,#00,#e0,#57,#20,#58
	db #40,#58,#80,#00,#d2,#0f,#d2,#0f
	db #d2,#0f,#00,#00,#d2,#0f,#d2,#0f
	db #d2,#0f,#00,#00,#60,#58,#a0,#58
	db #40,#57,#18,#08,#d2,#0f,#d2,#0f
	db #d2,#0f,#00,#00,#e0,#57,#c0,#58
	db #e0,#58,#80,#00,#d2,#0f,#d2,#0f
	db #d2,#0f,#00,#00,#d2,#0f,#d2,#0f
	db #d2,#0f,#00,#00,#d2,#0f,#d2,#0f
.l56c0 equ $ + 4
	db #d2,#0f,#00,#00,#d2,#0f,#d2,#0f
	db #d2,#0f,#d2,#0f,#d2,#0f,#d2,#0f
	db #d2,#0f,#d2,#0f,#d2,#0f,#d2,#0f
	db #d2,#0f,#d2,#0f,#d2,#0f,#d2,#0f
	db #d2,#0f,#d2,#0f,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#0f,#0f,#0f,#0f
	db #0e,#0e,#0e,#0e,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#08,#05,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#65,#01
	db #3e,#01,#00,#00,#c3,#04,#65,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0c
	db #0b,#0a,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#06
	db #07,#07,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0c,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#03,#02,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#08,#08,#08,#08,#07
	db #07,#07,#07,#07,#0c,#0c,#0c,#0c
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#02,#02,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#63,#59,#00
	db #63,#59,#00,#63,#59,#00,#63,#59
	db #00,#63,#59,#00,#63,#59,#00,#63
	db #59,#00,#63,#59,#00,#63,#59,#00
	db #63,#59,#80,#03,#59,#00,#24,#5a
	db #00,#24,#5a,#00,#27,#5a,#00,#27
	db #5a,#00,#83,#5a,#00,#83,#5a,#00
	db #27,#5a,#00,#27,#5a,#00,#9c,#5a
	db #00,#9c,#5a,#80,#24,#59,#00,#24
	db #5a,#00,#9f,#5a,#00,#9f,#5a,#00
	db #9f,#5a,#00,#9f,#5a,#00,#9f,#5a
	db #00,#9f,#5a,#00,#9f,#5a,#00,#30
	db #5b,#00,#30,#5b,#80,#45,#59,#31
	db #11,#10,#31,#1b,#11,#31,#1b,#13
	db #31,#1b,#15,#38,#1b,#10,#38,#1b
	db #11,#38,#1b,#13,#38,#1b,#15,#31
	db #1b,#10,#31,#1b,#11,#31,#1b,#13
	db #31,#1b,#15,#38,#1b,#10,#38,#1b
	db #11,#38,#1b,#13,#38,#1b,#15,#2d
	db #1b,#10,#2d,#1b,#11,#2d,#1b,#13
	db #2d,#1b,#15,#34,#1b,#10,#34,#1b
	db #11,#34,#1b,#13,#34,#1b,#15,#2d
	db #1b,#10,#2d,#1b,#11,#2d,#1b,#13
	db #2d,#1b,#15,#34,#1b,#10,#34,#1b
	db #11,#34,#1b,#13,#34,#1b,#15,#31
	db #1b,#10,#31,#1b,#11,#31,#1b,#13
	db #31,#1b,#15,#38,#1b,#10,#38,#1b
	db #11,#38,#1b,#13,#38,#1b,#15,#31
	db #1b,#10,#31,#1b,#11,#31,#1b,#13
	db #31,#1b,#15,#38,#1b,#10,#38,#1b
	db #11,#38,#1b,#13,#38,#1b,#15,#2d
	db #1b,#10,#2d,#1b,#11,#2d,#1b,#13
	db #2d,#1b,#15,#34,#1b,#10,#34,#1b
	db #11,#34,#1b,#13,#34,#1b,#15,#2f
	db #1b,#10,#2f,#1b,#11,#2f,#1b,#13
	db #2f,#1b,#15,#36,#1b,#10,#36,#1b
	db #11,#36,#1b,#13,#36,#1b,#15,#ff
	db #00,#40,#ff,#55,#a1,#10,#d5,#a0
	db #d5,#a0,#d3,#a0,#53,#a0,#04,#55
	db #a0,#02,#d5,#a0,#d5,#a0,#d3,#a0
	db #53,#a0,#03,#d1,#a0,#d1,#a0,#51
	db #a0,#02,#d1,#a0,#53,#a0,#03,#d1
	db #a0,#51,#a0,#02,#d1,#a0,#53,#a0
	db #04,#d5,#a0,#d5,#a0,#d5,#a0,#d3
	db #a0,#53,#a0,#04,#55,#a0,#02,#d5
	db #a0,#d5,#a0,#d3,#a0,#53,#a0,#03
	db #d1,#a0,#d1,#a0,#51,#a0,#02,#d1
	db #a0,#53,#a0,#03,#d1,#a0,#51,#a0
	db #02,#d1,#a0,#53,#a0,#04,#ff,#25
	db #10,#08,#25,#10,#08,#21,#10,#08
	db #21,#10,#08,#25,#10,#08,#25,#10
	db #08,#21,#10,#08,#23,#10,#08,#ff
	db #fe,#40,#ff,#4b,#3b,#10,#4b,#3b
	db #11,#4b,#cb,#12,#4b,#cb,#13,#4b
	db #7b,#14,#4b,#7b,#35,#4b,#3b,#10
	db #4b,#3b,#11,#4b,#cb,#12,#4b,#cb
	db #13,#4b,#7b,#14,#4b,#7b,#35,#4b
	db #3b,#10,#4b,#3b,#11,#4b,#cb,#12
	db #4b,#cb,#13,#4b,#7b,#14,#4b,#7b
	db #35,#4b,#3b,#10,#4b,#3b,#11,#4b
	db #cb,#12,#4b,#cb,#13,#4b,#7b,#14
	db #4b,#7b,#35,#4b,#3b,#10,#4b,#3b
	db #11,#4b,#cb,#12,#4b,#cb,#13,#4b
	db #7b,#14,#4b,#7b,#35,#4b,#3b,#10
	db #4b,#3b,#11,#4b,#cb,#12,#4b,#cb
	db #13,#4b,#7b,#14,#4b,#7b,#35,#4b
	db #3b,#10,#4b,#3b,#11,#4b,#cb,#12
	db #4b,#cb,#13,#4b,#7b,#14,#4b,#7b
	db #35,#4b,#3b,#10,#4b,#3b,#11,#4b
	db #cb,#12,#4b,#cb,#13,#4b,#7b,#14
	db #4b,#7b,#35,#ff,#31,#1b,#10,#31
	db #1b,#11,#31,#1b,#12,#31,#1b,#13
	db #31,#1b,#14,#31,#1b,#35,#31,#1b
	db #10,#31,#1b,#11,#31,#1b,#12,#31
	db #1b,#13,#31,#1b,#14,#31,#1b,#35
	db #2d,#1b,#10,#2d,#1b,#11,#2d,#1b
	db #12,#2d,#1b,#13,#2d,#1b,#14,#2d
	db #1b,#35,#2d,#1b,#10,#2d,#1b,#11
	db #2d,#1b,#12,#2d,#1b,#13,#2d,#1b
	db #14,#2d,#1b,#35,#31,#1b,#10,#31
	db #1b,#11,#31,#1b,#12,#31,#1b,#13
	db #31,#1b,#14,#31,#1b,#35,#31,#1b
	db #10,#31,#1b,#11,#31,#1b,#12,#31
	db #1b,#13,#31,#1b,#14,#31,#1b,#35
	db #2d,#1b,#10,#2d,#1b,#11,#2d,#1b
	db #12,#2d,#1b,#13,#2d,#1b,#14,#2d
	db #1b,#35,#2f,#1b,#10,#2f,#1b,#11
	db #2f,#1b,#12,#2f,#1b,#13,#2f,#1b
	db #14,#2f,#1b,#35,#ff

;
.music_info
	db "Epsilon Tome 2 (1996)(Power System)(Epsilon)",0
	db "ST-128 Module",0

	read "music_end.asm"
