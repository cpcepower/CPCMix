; Music of Welcom-X 2 - Le Retour Menu (1993)(Public Domain)(Chany)(ST-128 Module)
; Ripped by Megachur the 05/10/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "WELX2LRM.BIN"
	ENDIF

music_date_rip_day		equ 05
music_date_rip_month	equ 10
music_date_rip_year		equ 2014
music_adr				equ &522e

	read "music_header.asm"

	jp l5237
	jp l52cb
	jp l52af
;
.init_music
.l5237
;
	xor a
	ld hl,l57e2
	call l52a8
	ld hl,l5810
	call l52a8
	ld hl,l583e
	call l52a8
	ld ix,l57de
	ld iy,l5868
	ld de,#002e
	ld b,#03
.l5257
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
	djnz l5257
	ld hl,l56f7
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
	ld (l56f3),hl
	ld (l56f5),hl
	ld a,#0c
	ld c,d
	call l56d3
	ld a,#0d
	ld c,d
	jp l56d3
.l52a8
	ld b,#2a
.l52aa
	ld (hl),a
	inc hl
	djnz l52aa
	ret
;
.stop_music
.l52af
;
	ld a,#07
	ld c,#3f
	call l56d3
	ld a,#08
	ld c,#00
	call l56d3
	ld a,#09
	ld c,#00
	call l56d3
	ld a,#0a
	ld c,#00
	jp l56d3
;
.play_music
.l52cb
;
	ld hl,l56f9
	dec (hl)
	ld ix,l57de
	ld bc,l57ec
	call l536d
	ld ix,l580c
	ld bc,l581a
	call l536d
	ld ix,l583a
	ld bc,l5848
	call l536d
	ld hl,l56f2
	ld de,l56f9
	ld b,#06
	call l534a
	ld b,#07
	call l534a
	ld b,#0b
	call l534a
	ld b,#0d
	call l534a
	ld de,l56f9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l57fd
	call l5323
	ld hl,l582b
	call l5323
	ld hl,l5859
.l5323
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
	jr nz,l5338
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l5338
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
.l534a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l56d3
.l5355
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l56d3
.l536d
	ld a,(l56f9)
	or a
	jp nz,l5425
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l5425
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5355
	or a
	jp z,l541a
	ld r,a
	and #7f
	cp #10
	jr c,l53f5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l556d
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
	jr z,l53ce
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l53ce
	rrca
	ld c,a
	ld hl,l586e
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
	jr z,l53ed
	ld (ix+#1e),b
.l53ed
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l540e
.l53f5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l56fe
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
.l540e
	ld a,d
	or a
	jr nz,l541c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l541c
.l541a
	ld a,(hl)
	inc hl
.l541c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l5425
	ld a,(ix+#17)
	or a
	jr nz,l543b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l543b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5451
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5451
	ld a,(ix+#0d)
	or a
	jr z,l545f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l547d
.l545f
	ld a,(ix+#1a)
	or a
	jp z,l5484
	ld c,a
	cp #03
	jr nz,l546c
	xor a
.l546c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l547d
	ld a,(ix+#18)
	dec c
	jr z,l547d
	ld a,(ix+#19)
.l547d
	add (ix+#07)
	ld b,d
	call l556d
.l5484
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l54ac
	dec (ix+#1b)
	jr nz,l54ac
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l54e4
.l54ac
	ld a,(ix+#29)
	or a
	jr z,l54e4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l54db
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l54d2
	ld (ix+#29),#ff
	jr l54db
.l54d2
	cp (ix+#2b)
	jr nz,l54db
	ld (ix+#29),#01
.l54db
	ld b,d
	or a
	jp p,l54e1
	dec b
.l54e1
	ld c,a
	jr l54ef
.l54e4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l54ef
	pop hl
	bit 7,(ix+#14)
	jr z,l54f8
	ld h,d
	ld l,d
.l54f8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l56d3
	ld c,h
	ld a,(ix+#02)
	call l56d3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l554b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l553a
	dec (ix+#09)
	jr nz,l553a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5532
	xor a
	jr l5537
.l5532
	cp #10
	jr nz,l5537
	dec a
.l5537
	ld (ix+#1e),a
.l553a
	ld a,b
	sub (ix+#1e)
	jr nc,l5541
	xor a
.l5541
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l56d3
.l554b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l56fa)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l5569
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l5569
	ld (l56fa),hl
	ret
.l556d
	ld hl,l571c
	cp #61
	jr nc,l5577
	add a
	ld c,a
	add hl,bc
.l5577
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l5581
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l56a6
	ld (ix+#1e),a
	jp l540e
.l5593
	dec b
.l5594
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l559f
	neg
.l559f
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
	jp l540e
.l55b5
	dec b
	jr l55b9
.l55b8
	inc b
.l55b9
	call l56a6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l540e
.l55c8
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
	jp l568b
.l55d9
	ld a,(hl)
	inc hl
	or a
	jr z,l55fb
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
.l55fb
	ld (ix+#29),a
	jp l540e
.l5601
	dec hl
	ld a,(hl)
	and #0f
	ld (l56fd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l56fc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l540e
.l561b
	ld a,(hl)
	or a
	jr z,l562c
	call l56a8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l540e
.l562c
	ld hl,#0101
	ld (l56f8),hl
	jp l540e
.l5635
	call l56a6
	ld (ix+#1e),a
	jp l540e
.l563e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l56b7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l56b7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l540e
.l5660
	ld a,(hl)
	inc hl
	ld (l56f7),a
	jp l540e
.l5668
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
	jp l540e
.l5687
	call l56a6
	add a
.l568b
	ld b,#00
	ld c,a
	push hl
	ld hl,l58ee
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l540e
.l56a6
	ld a,(hl)
	inc hl
.l56a8
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
.l56b7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l586e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l56d3
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
.l56f2
	ret
.l56fa equ $ + 7
.l56f9 equ $ + 6
.l56f8 equ $ + 5
.l56f7 equ $ + 4
.l56f5 equ $ + 2
.l56f3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56fd equ $ + 2
.l56fc equ $ + 1
	db #38,#00,#00
.l56fe
	dw l5581,l5594,l5593,l55b8
	dw l55b5,l55c8,l55d9,l5601
	dw l561b,l5601,l5635,l563e
	dw l5660,l5668,l5687
.l571c
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
.l57de equ $ + 2
	dw #000f,#0008
.l57e2 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l57ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l580c equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l5810
	db #00,#00,#00,#00,#00,#00,#00,#00
.l581a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l582b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l583e equ $ + 6
.l583a equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5848
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5859 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l586e equ $ + 6
.l5868
	db #4e,#5b,#81,#5b,#b4,#5b,#00,#12
	db #60,#6c,#c0,#6c,#40,#5a,#00,#12
	db #d2,#23,#d2,#23,#d2,#11,#0e,#59
	db #4e,#59,#6e,#59,#00,#00,#8e,#59
	db #ce,#59,#ee,#59,#00,#00,#0e,#5a
	db #4e,#5a,#6e,#5a,#08,#18,#8e,#5a
	db #ce,#5a,#6e,#5a,#00,#00,#8e,#5a
	db #ee,#5a,#6e,#5a,#00,#00,#00,#12
	db #d2,#23,#d2,#23,#d2,#11,#8e,#5a
	db #ee,#5a,#0e,#5b,#00,#00,#00,#12
	db #d2,#23,#d2,#23,#d2,#11,#00,#12
	db #d2,#23,#d2,#23,#d2,#11,#d2,#23
	db #00,#6d,#d2,#23,#d2,#11,#d2,#23
	db #d2,#23,#d2,#23,#d2,#11,#d2,#23
	db #d2,#23,#d2,#23,#d2,#11,#d2,#23
	db #38,#12,#60,#12,#b0,#00,#18,#13
.l58ee equ $ + 6
	db #48,#13,#80,#13,#c8,#01,#10,#14
	db #58,#14,#b0,#14,#00,#12,#2e,#5b
	db #00,#12,#00,#12,#00,#12,#00,#12
	db #00,#12,#00,#12,#00,#12,#00,#12
	db #00,#12,#00,#12,#00,#12,#38,#00
	db #60,#00,#b0,#00,#18,#01,#48,#01
	db #80,#01,#c8,#01,#10,#02,#58,#02
	db #b0,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0d,#0c,#0b,#09,#07,#06,#03
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#80,#00
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
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#0a,#0a
	db #0b,#0b,#0c,#0c,#0b,#0b,#0c,#0c
	db #0d,#0d,#0c,#0c,#0b,#0b,#0c,#0c
	db #0d,#0d,#0c,#0c,#0b,#0b,#0c,#0c
	db #0d,#0d,#0c,#0c,#0b,#0b,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#07,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#07,#07,#06,#06,#05,#04,#03
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#02,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#00,#e7
	db #5b,#00,#e7,#5b,#00,#e7,#5b,#00
	db #e7,#5b,#00,#e7,#5b,#00,#68,#5c
	db #00,#e9,#5c,#00,#68,#5c,#00,#e9
	db #5c,#00,#e7,#5b,#00,#e7,#5b,#00
	db #e7,#5b,#00,#e7,#5b,#00,#e7,#5b
	db #00,#e7,#5b,#00,#e7,#5b,#80,#4e
	db #5b,#00,#6a,#5d,#00,#6a,#5d,#00
	db #6d,#5d,#00,#ad,#5d,#00,#ad,#5d
	db #00,#e1,#5d,#00,#12,#5e,#00,#e1
	db #5d,#00,#12,#5e,#00,#43,#5e,#00
	db #43,#5e,#00,#6a,#5d,#00,#83,#5e
	db #00,#ca,#5e,#00,#83,#5e,#00,#ca
	db #5e,#80,#81,#5b,#00,#fd,#5e,#00
	db #fd,#5e,#00,#fd,#5e,#00,#fd,#5e
	db #00,#fd,#5e,#00,#7f,#5f,#00,#01
	db #60,#00,#7f,#5f,#00,#01,#60,#00
	db #fd,#5e,#00,#fd,#5e,#00,#fd,#5e
	db #00,#fd,#5e,#00,#fd,#5e,#00,#fd
	db #5e,#00,#fd,#5e,#80,#b4,#5b,#49
	db #6f,#24,#31,#51,#10,#b1,#50,#49
	db #6f,#24,#31,#51,#10,#b1,#50,#49
	db #6f,#24,#31,#51,#10,#b1,#50,#49
	db #6f,#24,#31,#51,#10,#b1,#50,#45
	db #6f,#24,#2d,#51,#10,#ad,#50,#45
	db #6f,#24,#2d,#51,#10,#ad,#50,#45
	db #6f,#24,#2d,#51,#10,#ad,#50,#45
	db #6f,#24,#2d,#51,#10,#ad,#50,#47
	db #6f,#24,#2f,#51,#10,#af,#50,#47
	db #6f,#24,#2f,#51,#10,#af,#50,#47
	db #6f,#24,#2f,#51,#10,#af,#50,#47
	db #6f,#24,#2f,#51,#10,#af,#50,#44
	db #6f,#24,#2c,#51,#10,#ac,#50,#44
	db #6f,#24,#2c,#51,#10,#ac,#50,#44
	db #6f,#24,#2c,#51,#10,#ac,#50,#44
	db #6f,#24,#2c,#51,#10,#ac,#50,#ff
	db #49,#6f,#24,#31,#51,#10,#b1,#50
	db #49,#6f,#24,#31,#51,#10,#b1,#50
	db #49,#6f,#24,#31,#51,#10,#b1,#50
	db #49,#6f,#24,#31,#51,#10,#b1,#50
	db #4e,#6f,#24,#36,#51,#10,#b6,#50
	db #4e,#6f,#24,#36,#51,#10,#b6,#50
	db #4e,#6f,#24,#36,#51,#10,#b6,#50
	db #4e,#6f,#24,#36,#51,#10,#b6,#50
	db #47,#6f,#24,#2f,#51,#10,#af,#50
	db #47,#6f,#24,#2f,#51,#10,#af,#50
	db #47,#6f,#24,#2f,#51,#10,#af,#50
	db #47,#6f,#24,#2f,#51,#10,#af,#50
	db #4c,#6f,#24,#34,#51,#10,#b4,#50
	db #4c,#6f,#24,#34,#51,#10,#b4,#50
	db #4c,#6f,#24,#34,#51,#10,#b4,#50
	db #4c,#6f,#24,#34,#51,#10,#b4,#50
	db #ff,#45,#6f,#24,#2d,#51,#10,#ad
	db #50,#45,#6f,#24,#2d,#51,#10,#ad
	db #50,#45,#6f,#24,#2d,#51,#10,#ad
	db #50,#45,#6f,#24,#2d,#51,#10,#ad
	db #50,#4b,#6f,#24,#33,#51,#10,#b3
	db #50,#4b,#6f,#24,#33,#51,#10,#b3
	db #50,#4b,#6f,#24,#33,#51,#10,#b3
	db #50,#4b,#6f,#24,#33,#51,#10,#b3
	db #50,#44,#6f,#24,#2c,#51,#10,#ac
	db #50,#44,#6f,#24,#2c,#51,#10,#ac
	db #50,#44,#6f,#24,#2c,#51,#10,#ac
	db #50,#44,#6f,#24,#2c,#51,#10,#ac
	db #50,#49,#6f,#24,#31,#51,#10,#b1
	db #50,#49,#6f,#24,#31,#51,#10,#b1
	db #50,#49,#6f,#24,#31,#51,#10,#b1
	db #50,#49,#6f,#24,#31,#51,#10,#b1
	db #50,#ff,#fe,#40,#ff,#55,#41,#60
	db #55,#40,#04,#55,#40,#02,#57,#40
	db #02,#58,#40,#02,#51,#40,#06,#51
	db #40,#04,#51,#40,#02,#55,#40,#02
	db #53,#40,#02,#4e,#40,#06,#4e,#40
	db #04,#4e,#40,#02,#50,#40,#02,#51
	db #40,#02,#53,#40,#04,#51,#40,#04
	db #53,#40,#02,#51,#40,#02,#50,#40
	db #02,#4e,#40,#02,#ff,#55,#40,#06
	db #55,#40,#04,#58,#40,#02,#57,#40
	db #02,#53,#40,#02,#51,#40,#06,#51
	db #40,#04,#51,#40,#02,#53,#40,#02
	db #55,#40,#02,#4e,#40,#06,#4e,#40
	db #04,#4e,#40,#04,#50,#40,#02,#51
	db #40,#06,#50,#40,#06,#51,#40,#04
	db #ff,#49,#40,#0e,#47,#40,#02,#45
	db #40,#04,#44,#40,#02,#42,#40,#04
	db #44,#40,#02,#45,#40,#02,#47,#40
	db #02,#47,#40,#0e,#45,#40,#02,#44
	db #40,#04,#42,#40,#02,#40,#40,#04
	db #42,#40,#02,#44,#40,#02,#45,#40
	db #02,#ff,#45,#40,#0e,#44,#40,#02
	db #42,#40,#04,#40,#40,#02,#3f,#40
	db #04,#40,#40,#02,#42,#40,#02,#44
	db #40,#02,#44,#40,#0e,#42,#40,#02
	db #40,#40,#04,#3f,#40,#02,#3d,#40
	db #04,#3f,#40,#02,#40,#40,#02,#42
	db #40,#02,#ff,#58,#40,#02,#57,#40
	db #04,#55,#40,#04,#57,#40,#02,#58
	db #40,#02,#5a,#40,#02,#5a,#40,#02
	db #58,#40,#04,#57,#40,#04,#58,#40
	db #02,#5a,#40,#04,#5a,#40,#02,#58
	db #40,#04,#57,#40,#04,#58,#40,#02
	db #5a,#40,#04,#5c,#40,#02,#5a,#40
	db #04,#58,#40,#04,#57,#40,#02,#55
	db #40,#04,#ff,#49,#50,#02,#49,#50
	db #02,#49,#50,#03,#49,#50,#02,#49
	db #50,#02,#c9,#50,#4b,#50,#02,#4c
	db #50,#02,#4e,#50,#04,#4c,#50,#04
	db #4b,#50,#04,#49,#50,#04,#47,#50
	db #02,#47,#50,#02,#47,#50,#03,#47
	db #50,#02,#47,#50,#02,#c7,#50,#49
	db #50,#02,#4b,#50,#02,#4c,#50,#04
	db #4b,#50,#04,#49,#50,#04,#4b,#50
	db #04,#ff,#49,#50,#02,#49,#50,#02
	db #49,#50,#03,#49,#50,#02,#c9,#50
	db #4c,#40,#02,#4b,#40,#02,#47,#40
	db #02,#45,#40,#10,#4c,#40,#04,#4b
	db #40,#02,#49,#40,#0a,#4e,#40,#04
	db #4c,#40,#02,#4b,#40,#04,#4c,#40
	db #02,#4b,#40,#04,#ff,#34,#31,#20
	db #50,#8f,#14,#cc,#60,#49,#21,#20
	db #50,#8f,#14,#cc,#60,#34,#31,#20
	db #50,#8f,#14,#cc,#60,#49,#21,#20
	db #50,#8f,#14,#cc,#60,#34,#31,#20
	db #4c,#8f,#14,#c9,#60,#49,#21,#20
	db #4c,#8f,#14,#c9,#60,#34,#31,#20
	db #4c,#8f,#14,#c9,#60,#49,#21,#20
	db #4c,#8f,#14,#c9,#60,#34,#31,#20
	db #4e,#8f,#14,#cb,#60,#49,#21,#20
	db #4e,#8f,#14,#cb,#60,#34,#31,#20
	db #4e,#8f,#14,#cb,#60,#49,#21,#20
	db #4e,#8f,#14,#cb,#60,#34,#31,#20
	db #4b,#8f,#14,#c7,#60,#49,#21,#20
	db #4b,#8f,#14,#c7,#60,#34,#31,#20
	db #4b,#8f,#14,#c7,#60,#49,#21,#20
	db #4b,#8f,#14,#49,#21,#10,#ff,#34
	db #31,#20,#50,#6f,#14,#cc,#60,#49
	db #21,#20,#50,#6f,#14,#cc,#60,#34
	db #31,#20,#50,#6f,#14,#cc,#60,#49
	db #21,#20,#50,#6f,#14,#cc,#60,#34
	db #31,#20,#55,#6f,#14,#d1,#60,#49
	db #21,#20,#55,#6f,#14,#d1,#60,#34
	db #31,#20,#55,#6f,#14,#d1,#60,#49
	db #21,#20,#55,#6f,#14,#d1,#60,#34
	db #31,#20,#4e,#6f,#14,#cb,#60,#49
	db #21,#20,#4e,#6f,#14,#cb,#60,#34
	db #31,#20,#4e,#6f,#14,#cb,#60,#49
	db #21,#20,#4e,#6f,#14,#cb,#60,#34
	db #31,#20,#53,#6f,#14,#d0,#60,#49
	db #21,#20,#53,#6f,#14,#d0,#60,#34
	db #31,#20,#53,#6f,#14,#d0,#60,#49
	db #21,#20,#53,#6f,#14,#49,#21,#10
	db #ff,#34,#31,#20,#4c,#6f,#14,#c9
	db #60,#49,#21,#20,#4c,#6f,#14,#c9
	db #60,#34,#31,#20,#4c,#6f,#14,#c9
	db #60,#49,#21,#20,#4c,#6f,#14,#c9
	db #60,#34,#31,#20,#51,#6f,#14,#ce
	db #60,#49,#21,#20,#51,#6f,#14,#ce
	db #60,#34,#31,#20,#51,#6f,#14,#ce
	db #60,#49,#21,#20,#51,#6f,#14,#ce
	db #60,#34,#31,#20,#4b,#8f,#14,#c7
	db #60,#49,#21,#20,#4b,#8f,#14,#c7
	db #60,#34,#31,#20,#4b,#8f,#14,#c7
	db #60,#49,#21,#20,#4b,#8f,#14,#49
	db #21,#10,#34,#31,#20,#50,#8f,#14
	db #cc,#60,#49,#21,#20,#50,#8f,#14
	db #cc,#60,#34,#31,#20,#50,#8f,#14
	db #cc,#60,#49,#21,#20,#50,#8f,#14
	db #49,#21,#10,#ff
;
.music_info
	db "Welcom-X 2 - Le Retour Menu (1993)(Public Domain)(Chany)",0
	db "ST-128 Module",0

	read "music_end.asm"
