; Music of Dracula Fanz Issue 5 - Edito (1995)(Dracula Fanz Team)(Epsilon)(ST-128 Module)
; Ripped by Megachur the 28/05/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DRFI5EDI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 05
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
.l55b0 equ $ + 2
	dw #000f,#0008
.l55b4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l55be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l55cf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l55de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l55e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l55ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l55fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5610 equ $ + 6
.l560c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l561a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l562b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5640 equ $ + 6
.l563a
	db #e0,#58,#13,#59,#46,#59,#e0,#56
	db #20,#57,#40,#57,#00,#00,#d2,#0f
	db #d2,#0f,#d2,#0f,#00,#00,#d2,#0f
	db #d2,#0f,#d2,#0f,#00,#00,#d2,#0f
	db #d2,#0f,#d2,#0f,#00,#00,#d2,#0f
	db #d2,#0f,#d2,#0f,#00,#00,#60,#57
	db #a0,#57,#c0,#57,#c0,#00,#e0,#57
	db #20,#58,#40,#58,#00,#00,#d2,#0f
	db #d2,#0f,#d2,#0f,#00,#00,#60,#58
	db #a0,#58,#c0,#58,#80,#00,#d2,#0f
	db #d2,#0f,#d2,#0f,#00,#00,#d2,#0f
	db #d2,#0f,#d2,#0f,#00,#00,#d2,#0f
	db #d2,#0f,#d2,#0f,#00,#00,#d2,#0f
	db #d2,#0f,#d2,#0f,#00,#00,#d2,#0f
	db #d2,#0f,#d2,#0f,#00,#00,#d2,#0f
	db #d2,#0f,#d2,#0f,#00,#00,#d2,#0f
.l56c0 equ $ + 6
	db #d2,#0f,#d2,#0f,#00,#00,#d2,#0f
	db #d2,#0f,#d2,#0f,#d2,#0f,#d2,#0f
	db #d2,#0f,#d2,#0f,#d2,#0f,#d2,#0f
	db #d2,#0f,#d2,#0f,#d2,#0f,#d2,#0f
	db #d2,#0f,#d2,#0f,#d2,#0f,#80,#00
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
	db #5b,#00,#1b,#5b,#00,#d1,#5a,#00
	db #d1,#5a,#00,#87,#5a,#00,#87,#5a
	db #00,#3d,#5a,#00,#3d,#5a,#00,#9d
	db #5b,#00,#9d,#5b,#00,#79,#59,#00
	db #79,#59,#00,#db,#5b,#00,#db,#5b
	db #00,#db,#59,#00,#db,#59,#80,#e0
	db #58,#00,#25,#5c,#00,#25,#5c,#00
	db #25,#5c,#00,#25,#5c,#00,#25,#5c
	db #00,#25,#5c,#00,#25,#5c,#00,#25
	db #5c,#00,#25,#5c,#00,#25,#5c,#00
	db #25,#5c,#00,#25,#5c,#00,#25,#5c
	db #00,#25,#5c,#00,#25,#5c,#00,#25
	db #5c,#80,#13,#59,#00,#a6,#5c,#00
	db #a6,#5c,#00,#a6,#5c,#00,#a6,#5c
	db #00,#a6,#5c,#00,#a6,#5c,#00,#a6
	db #5c,#00,#a6,#5c,#00,#a6,#5c,#00
	db #a6,#5c,#00,#a6,#5c,#00,#a6,#5c
	db #00,#a6,#5c,#00,#a6,#5c,#00,#a6
	db #5c,#00,#a6,#5c,#80,#46,#59,#40
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
	db "Dracula Fanz Issue 5 - Edito (1995)(Dracula Fanz Team)(Epsilon)",0
	db "ST-128 Module",0

	read "music_end.asm"
