; Music of Fuck Oeuf ! - Main Part (2005)(Futurs')(Zik)(ST-128 Module)
; Ripped by Megachur the 03/01/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FUCKOEMP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2021
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
	ld (hl),#09
	inc hl
	ld (hl),#20
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
	ld (hl),#20
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
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l5478
	ld (ix+#1e),a
	jp l51e0
	dec b
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
	dec b
	jr l538b
	inc b
.l538b
	call l5478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l51e0
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
	call l5478
	ld (ix+#1e),a
	jp l51e0
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
	ld a,(hl)
	inc hl
	ld (l54c9),a
	jp l51e0
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
	dw #5353,#5366,#5365,#538a
	dw #5387,#539a,#53ab,#53d3
	dw #53ed,#53d3,#5407,#5410
.l54ee equ $ + 6
	dw #5432,#543a,#5459,#0000
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
.l55b4 equ $ + 4
.l55b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l55be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l55cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l55de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l55e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l55ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l55fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l560c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l5610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l561a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l562b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l563a equ $ + 2
	db #00,#00,#80,#57,#95,#57,#aa,#57
.l5640
	db #e0,#56,#20,#57,#40,#57,#40,#00
	db #f2,#1f,#a1,#9a,#5c,#9a,#00,#30
	db #f2,#99,#d2,#de,#5c,#10,#cf,#cf
	db #a1,#df,#a1,#df,#16,#dc,#cc,#cc
	db #26,#53,#95,#2a,#4e,#6e,#7c,#f4
	db #18,#d3,#15,#53,#98,#dc,#cc,#c9
	db #95,#1b,#6e,#24,#8e,#bd,#c6,#c3
	db #9e,#d9,#a8,#39,#06,#5b,#68,#cc
	db #9e,#dc,#9e,#dc,#9e,#dc,#cc,#cc
	db #ee,#2f,#05,#43,#05,#55,#cf,#cf
	db #a1,#df,#a1,#df,#a1,#df,#cf,#cf
	db #a1,#df,#a1,#df,#a1,#df,#9a,#30
	db #02,#75,#a1,#df,#a1,#aa,#30,#30
	db #02,#40,#a1,#df,#a1,#df,#30,#30
	db #02,#df,#a1,#df,#a1,#df,#cf,#cf
	db #a1,#df,#a1,#df,#16,#dc,#cc,#cc
.l56c0
	db #60,#57,#e1,#a9,#06,#17,#28,#0c
	db #30,#6e,#42,#35,#7b,#d6,#9b,#17
	db #4e,#c0,#7f,#d3,#98,#dc,#9e,#d9
	db #59,#39,#06,#5b,#a8,#65,#9e,#dc
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#01,#00,#00,#00,#ff,#ff
	db #01,#00,#ff,#ff,#01,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0e,#0f,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#bf,#57,#00,#da,#57,#00,#3b
	db #58,#00,#9c,#58,#00,#fd,#58,#00
	db #32,#59,#80,#80,#57,#00,#68,#59
	db #00,#86,#59,#00,#ba,#59,#00,#ba
	db #59,#00,#ed,#59,#00,#ed,#59,#80
	db #95,#57,#00,#0c,#5a,#00,#2b,#5a
	db #00,#5b,#5a,#00,#9b,#5a,#00,#e1
	db #5a,#00,#06,#5b,#80,#aa,#57,#01
	db #30,#3b,#00,#02,#3b,#0b,#45,#3d
	db #00,#02,#3d,#0b,#45,#3b,#00,#02
	db #3b,#0b,#45,#36,#00,#02,#36,#0b
	db #95,#ff,#28,#0f,#10,#0d,#09,#01
	db #0d,#0e,#01,#0d,#09,#01,#ad,#0d
	db #0e,#0d,#09,#01,#0d,#0e,#01,#0d
	db #09,#01,#ac,#0d,#0e,#0d,#09,#01
	db #0d,#0e,#01,#0d,#09,#01,#aa,#0d
	db #0e,#0d,#09,#01,#0d,#0e,#01,#0d
	db #09,#01,#a8,#0d,#0e,#0d,#09,#01
	db #0d,#0e,#01,#0d,#09,#01,#0d,#0e
	db #01,#0d,#09,#01,#0d,#0e,#01,#0d
	db #09,#01,#ad,#0d,#0e,#0d,#09,#01
	db #0d,#0e,#01,#0d,#09,#01,#ac,#0d
	db #0e,#aa,#0d,#09,#af,#0d,#0e,#0d
	db #09,#01,#ff,#a8,#0d,#0e,#0d,#09
	db #01,#0d,#0e,#01,#0d,#09,#01,#ad
	db #0d,#0e,#0d,#09,#01,#0d,#0e,#01
	db #0d,#09,#01,#ac,#0d,#0e,#0d,#09
	db #01,#0d,#0e,#01,#0d,#09,#01,#aa
	db #0d,#0e,#0d,#09,#01,#0d,#0e,#01
	db #0d,#09,#01,#a8,#0d,#0e,#0d,#09
	db #01,#0d,#0e,#01,#0d,#09,#01,#0d
	db #0e,#01,#0d,#09,#01,#0d,#0e,#01
	db #0d,#09,#01,#ad,#0d,#0e,#0d,#09
	db #01,#0d,#0e,#01,#0d,#09,#01,#ac
	db #0d,#0e,#aa,#0d,#09,#af,#0d,#0e
	db #0d,#09,#01,#ff,#a8,#0d,#0e,#0d
	db #09,#01,#0d,#0e,#01,#0d,#09,#01
	db #ad,#0d,#0e,#0d,#09,#01,#0d,#0e
	db #01,#0d,#09,#01,#ac,#0d,#0e,#0d
	db #09,#01,#0d,#0e,#01,#0d,#09,#01
	db #aa,#0d,#0e,#0d,#09,#01,#0d,#0e
	db #01,#0d,#09,#01,#a8,#0d,#0e,#0d
	db #09,#01,#0d,#0e,#01,#0d,#09,#01
	db #0d,#0e,#01,#0d,#09,#01,#0d,#0e
	db #01,#0d,#09,#01,#ad,#0d,#0e,#0d
	db #09,#01,#0d,#0e,#01,#0d,#09,#01
	db #ac,#0d,#0e,#aa,#0d,#09,#b4,#0d
	db #0e,#b3,#0d,#09,#ff,#28,#0d,#07
	db #02,#0d,#05,#02,#0d,#07,#02,#0d
	db #05,#02,#2d,#0d,#07,#02,#0d,#05
	db #02,#0d,#07,#02,#0d,#05,#02,#2c
	db #0d,#07,#02,#0d,#05,#02,#0d,#07
	db #02,#0d,#05,#02,#2a,#0d,#07,#02
	db #0d,#05,#02,#0d,#07,#02,#0d,#05
	db #02,#ff,#28,#0d,#07,#02,#0d,#05
	db #02,#0d,#07,#02,#0d,#05,#02,#0d
	db #07,#02,#0d,#05,#02,#0d,#07,#02
	db #0d,#05,#02,#2d,#0d,#07,#02,#0d
	db #05,#02,#0d,#07,#02,#0d,#05,#02
	db #2c,#0d,#07,#02,#2a,#0d,#05,#02
	db #2f,#0d,#07,#02,#0d,#05,#02,#ff
	db #0d,#08,#01,#01,#20,#38,#00,#02
	db #38,#0b,#45,#39,#00,#02,#39,#0b
	db #45,#38,#00,#02,#38,#0b,#45,#3b
	db #00,#02,#3b,#0b,#95,#ff,#0d,#0e
	db #02,#c4,#0e,#33,#38,#0b,#31,#c5
	db #0e,#44,#39,#0b,#31,#c4,#0e,#33
	db #38,#0b,#31,#c2,#0e,#55,#36,#0b
	db #31,#c4,#0e,#33,#38,#0b,#31,#c5
	db #0e,#44,#39,#0b,#31,#c4,#0e,#33
	db #38,#0b,#31,#c2,#0e,#55,#36,#0b
	db #11,#ff,#00,#02,#c4,#0e,#33,#38
	db #0b,#31,#c5,#0e,#44,#39,#0b,#31
	db #c4,#0e,#33,#38,#0b,#31,#c2,#0e
	db #55,#36,#0b,#31,#c4,#0e,#33,#38
	db #0b,#31,#c5,#0e,#44,#39,#0b,#31
	db #c4,#0e,#33,#38,#0b,#31,#c2,#0e
	db #55,#36,#0b,#11,#ff,#00,#04,#44
	db #0e,#33,#02,#38,#0b,#61,#45,#0e
	db #44,#02,#39,#0b,#61,#44,#0e,#33
	db #02,#38,#0b,#61,#42,#0e,#55,#02
	db #36,#0b,#21,#ff,#28,#00,#02,#2c
	db #0b,#66,#2d,#0b,#46,#28,#00,#02
	db #2c,#0b,#46,#2a,#00,#02,#23,#0b
	db #36,#09,#00,#04,#2f,#00,#02,#09
	db #00,#03,#ff,#00,#01,#b8,#00,#b6
	db #00,#34,#00,#04,#b6,#00,#b8,#00
	db #b7,#00,#b8,#00,#b7,#00,#b8,#00
	db #3b,#00,#04,#b8,#00,#b6,#00,#34
	db #00,#02,#b4,#00,#36,#00,#03,#b7
	db #00,#37,#01,#12,#36,#00,#02,#3b
	db #00,#03,#ff,#c4,#00,#c5,#00,#c4
	db #00,#40,#00,#02,#c2,#00,#c4,#00
	db #c5,#00,#c7,#00,#c5,#00,#c4,#00
	db #45,#00,#02,#42,#01,#21,#44,#00
	db #02,#c4,#00,#c5,#00,#c4,#00,#c0
	db #00,#c2,#00,#c4,#00,#c9,#00,#47
	db #01,#11,#c9,#00,#47,#01,#12,#c4
	db #00,#42,#01,#11,#40,#01,#22,#42
	db #01,#12,#ff,#44,#01,#11,#c7,#00
	db #44,#01,#11,#40,#01,#22,#c2,#00
	db #44,#01,#11,#3b,#01,#22,#bd,#00
	db #c0,#00,#c2,#00,#c2,#03,#22,#c2
	db #00,#c0,#00,#bd,#00,#3b,#01,#22
	db #c4,#07,#21,#c5,#07,#00,#c7,#00
	db #cc,#00,#cb,#00,#cc,#00,#d0,#07
	db #21,#d1,#07,#00,#50,#01,#11,#4c
	db #01,#12,#49,#01,#12,#47,#01,#33
	db #ff,#50,#00,#02,#4c,#00,#02,#47
	db #00,#02,#49,#00,#04,#47,#00,#02
	db #49,#00,#02,#47,#00,#02,#cc,#00
	db #cb,#00,#c7,#00,#c5,#00,#c4,#00
	db #c0,#00,#42,#00,#0a,#ff,#50,#00
	db #02,#51,#00,#02,#53,#00,#02,#3b
	db #0b,#11,#40,#0b,#12,#34,#0b,#13
	db #44,#0b,#14,#40,#0b,#15,#47,#0b
	db #14,#44,#0b,#13,#49,#0b,#12,#47
	db #0b,#11,#44,#0b,#10,#4c,#00,#02
	db #4b,#00,#02,#47,#00,#02,#49,#07
	db #11,#04,#47,#07,#11,#03,#07,#00
	db #03,#ff
;
.music_info
	db "Fuck Oeuf ! - Main Part (2005)(Futurs')(Zik)",0
	db "ST-128 Module",0

	read "music_end.asm"
