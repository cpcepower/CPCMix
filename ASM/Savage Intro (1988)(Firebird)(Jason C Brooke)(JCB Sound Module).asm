; Music of Savage Intro (1988)(Firebird)(Jason C Brooke)(JCB Sound Module)
; Ripped by Megachur the 20/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SAVAGEIN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #0110

	read "music_header.asm"

;
.play_music
;
	push ix
	ld a,#00
.l0115 equ $ + 1
	add #00
	ld (l0115),a
	jr c,l016d
	ld ix,l041c
	ld a,(l02e4)
	or a
	jr z,l013e
.l0126 equ $ + 1
	ld a,#00
	add #00
.l012a equ $ + 1
	add #00
	ld (l012a),a
	jr nc,l013e
	ld b,#00
	call l0206
	call l0204
	call l0204
	ld lx,l041c	;#1c
.l013f equ $ + 1
.l013e
	ld a,#00
	ld (l014d),a
	call l02e1
	call l02df
	call l02df
.l014d equ $ + 1
	ld a,#00
	ld c,#06
	call l03aa
	ld hl,l041e
	ld a,#fe
	or (hl)
	dec l
	ld c,(hl)
	dec l
	rr c
	rla
	ld c,(hl)
	rr c
	rla
	ld c,a
	add a
	add a
	add a
	xor c
	ld c,#07
	call l03aa
.l016d
	pop ix
	ret
;
.stop_music
.l0170
;
	sub a
	ld (l02e4),a
	push bc
	push de
	ld e,#08
	call l03a9
	call l03a8
	call l03a8
	pop de
	pop bc
	ret
;
.jumps_table
;
	db #d4
	db #30
	db #4e
	db #62
	db #65
	db #0f
	db #74
	db #06
	db #41
	db #6b
	db #65
	db #39
	db #2c
	pop hl
	sub a
	ld (l02e4),a
	jr l013e
	ld a,(ix+#15)
	ld l,(ix+#09)
	ld h,(ix+#0c)
	add #02
	cp (ix+#0f)
	jr c,l01ab
	ld a,(ix+#12)
.l01ab
	ld c,a
	add hl,bc
	ld e,(hl)
	inc l
	ld d,(hl)
	ld (ix+#15),a
	jr l021c
	ld a,(de)
	ld (ix+#45),a
	inc de
	jr l021c
	ld a,(de)
	ld (ix+#51),a
	inc de
	ld a,(de)
	ld (ix+#54),a
	inc de
	jr l021c
	ld (ix+#33),a
	jr l021c
	ld a,(de)
	inc de
	ld (ix+#4b),a
	jr l021c
	ld a,(de)
	inc de
	ld (ix+#24),a
	ld a,(de)
	inc de
	ld (ix+#27),a
	ld a,(de)
	inc de
	ld (ix+#2a),a
	set 3,(ix+#4e)
	jr l021c
	set 7,(ix+#4e)
	set 6,(ix+#4e)
	jr l021c
	ld a,(de)
	inc de
	ld (l038f),a
	ld (ix+#4e),#06
	jr l021c
	ld (ix+#4e),#02
	jr l021c
.l0204
	inc lx
.l0206
	dec (ix+#2d)
	ld a,(ix+#4e)
	jr nz,l024c
	and #30
	ld (ix+#4e),a
	ld (ix+#33),a
	ld e,(ix+#03)
	ld d,(ix+#06)
.l021c
	ld a,(de)
	inc de
	cp #b0
	jr c,l0240
	add #20
	jr c,l0235
	add #20
	jr c,l023b
	ld c,a
	ld hl,l0527
	add hl,bc
	ld c,(hl)
	ld (ix+#1e),c
	jr l021c
.l0235
	inc a
	ld (ix+#30),a
	jr l021c
.l023b
	ld (ix+#3c),a
	jr l021c
.l0240
	or a
	jp p,l0260
	ld c,a
	ld hl,jumps_table-&80	;l0104
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l024c
	add a
	ret p
	sbc a
	or #01
	add (ix+#33)
	ld (ix+#33),a
	ret
	ld (ix+#39),b
	ld (ix+#3f),b
	jr l029c
.l0260
	ld c,(ix+#45)
	ld (ix+#42),c
	ld hl,l0662
	add hl,bc
	ld c,(hl)
	ld (ix+#48),c
	ld c,(ix+#51)
	ld (ix+#18),c
	ld c,(ix+#54)
	ld (ix+#1b),c
	bit 7,(ix+#33)
	ld (ix+#33),a
	jr nz,l028f
	ld c,(ix+#1e)
	ld (ix+#21),c
	ld c,(ix+#3c)
	call l02a9
.l028f
	ld c,b
	sub #54
	jr c,l0299
	ld c,#02
	ld (l013f),a
.l0299
	ld (ix+#00),c
.l029c
	ld a,(ix+#30)
	ld (ix+#2d),a
	ld (ix+#06),d
	ld (ix+#03),e
	ret
.l02a9
	ld hl,l0628
	add hl,bc
	ld c,(hl)
	ld (ix+#36),c
	ld (ix+#39),#01
	ld (ix+#3f),b
	ret
	ld c,(ix+#5d)
.l02bc
	ld hl,l0632
	ld e,(ix+#36)
	sub a
	ld d,a
	cp (ix+#39)
	ret z
	add hl,de
	ld a,(hl)
	add (ix+#3f)
	ld (ix+#3f),a
	dec (ix+#39)
	ret nz
	inc hl
	ld a,(hl)
	ld (ix+#39),a
	inc e
	inc e
	ld (ix+#36),e
	ret
.l02df
	inc lx
.l02e1
	sub a
	ld b,a
.l02e4 equ $ + 1
.music_end equ $ + 1
	cp #00
	ld c,(ix+#5d)
	jp z,l03aa
	call l02bc
	ld a,(ix+#3f)
	scf
	adc #ff
	jr c,l02f7
	sub a
.l02f7
	rra
	rra
	rra
	rra
	and #0f
	call l03aa
;.l0301 equ $ + 1
	ld hl,l061a
	ld e,(ix+#21)
	inc e
	add hl,de
	ld a,(hl)
	or a
	jp p,l0316
	inc a
	jr z,l0319
	ld e,(ix+#1e)
	dec a
	and #7f
.l0316
	ld (ix+#21),e
.l0319
	add (ix+#33)
	add (ix+#4b)
	add a
	ld hl,l047c
	ld e,a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld hl,l0663
	ld c,(ix+#42)
	ld b,#00
	add hl,bc
	ld a,(hl)
	dec (ix+#48)
	jr nz,l034d
	inc hl
	inc c
	inc c
	push af
	sub a
	or (hl)
	jr nz,l0346
	inc hl
	ld c,(hl)
	ld hl,l0662
	add hl,bc
	ld a,(hl)
.l0346
	ld (ix+#42),c
	ld (ix+#48),a
	pop af
.l034d
	ld c,a
	add a
	sbc a
	ld b,a
	ld l,(ix+#18)
	ld h,(ix+#1b)
	add hl,bc
	ld b,(ix+#2a)
	djnz l036c
	bit 3,(ix+#4e)
	jr z,l036f
	ld c,(ix+#24)
	ld b,(ix+#27)
	add hl,bc
	jr l036f
.l036c
	ld (ix+#2a),b
.l036f
	ld (ix+#18),l
	ld (ix+#1b),h
	add hl,de
	ex de,hl
	ld a,(ix+#4e)
	xor #01
	ld (ix+#4e),a
	cpl
	and #03
	ld a,(ix+#00)
	ld c,a
	res 0,c
	rra
	jr nz,l0392
	ld hl,l014d
.l038f equ $ + 1
	ld (hl),#10
	or #01
.l0392
	or c
	bit 2,(ix+#4e)
	jr z,l039d
	res 1,(ix+#4e)
.l039d
	ld (ix+#00),a
	ld a,e
	ld e,(ix+#5a)
	call l03a9
	ld a,d
.l03a8
	inc e
.l03a9
	ld c,e
.l03aa
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	out (c),c
	ld c,#00
	out (c),c
	ld b,#f4
	out (c),a
	ld b,#f6
	ld a,#81
	out (c),a
	out (c),c
	ret
;
.init_music	;&3c4
;
	push af
	call l0170
	pop af
	push bc
	push de
	push hl
	ld de,l041d
	ld bc,#0059
	ld hl,l041c
	push hl
	ld (hl),b
	ldir
	ld hl,l060a
	ld a,(hl)
	inc hl
	ld (l0126),a
	ex (sp),ix
	ld bc,#0301
	ld a,#ff
	ld (l012a),a
.l03eb
	ld a,(hl)
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#2d),c
	ld (ix+#09),e
	ld (ix+#0c),d
	ld a,(de)
	ld (ix+#03),a
	inc e
	ld a,(de)
	ld (ix+#06),a
	inc lx
	djnz l03eb
	pop ix
	ld hl,l02e4
	ld (hl),c
	pop hl
	pop de
	pop bc
	ret
.l041e equ $ + 5
.l041d equ $ + 4
.l041c equ $ + 3
	db "   SND Module (C) 1986-1988 Jas.C.Brooke. Latest revision 6th September 1988. Prepare to die."
	db #00,#02,#04,#08,#09,#0a
.l047c
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
.l0527 equ $ + 3
.l0524
	dw l06b2,l06b2,l06b2,l06b2
	dw l06b2,l06b2,l06b2,l06b2
	dw l06b2,l06b2,l08a3,l08a3
	dw l09e1,l08a3,l08a3,l0a36
	dw l06b2,l06b2,l06b2,l06b2
	dw l06eb,l06eb,l06eb,l06eb
	dw l06eb,l06eb,l06e9,l06eb
	dw l06b2,l06b2,l06b2,l06b2
	dw l06b2,l06b2,l06eb,l06eb
	dw l06eb,l06eb,l0acf
.l0572
	dw l09cb
	dw l09cb,l09cb,l09cb,l0746
	dw l0746,l0746,l076c,l07f9
	dw l07f9,l092d,l092d,l09c4
	dw l09cf,l09cb,l09cb,l09cb
	dw l092d,l092d,l0a6e,l0a9c
	dw l0a9c,l0792,l0792,l07e2
	dw l07e2,l07e0,l07e2,l0746
	dw l0746,l0a9c,l0a9c,l0792
	dw l0792,l0ae3
.l05b8
	dw l06ac,l0741
	dw l0746,l0746,l076c,l0828
	dw l0960,l0960,l09a4,l0960
	dw l0960,l0a84,l09cb,l09cb
	dw l09cb,l09cb,l0746,l0746
	dw l0717,l0717,l0717,l0717
	dw l09cb,l09cb,l09cb,l09cb
	dw l09cb,l09cb,l09cb,l09c9
	dw l0746,l0746,l0746,l0746
	dw l0746,l0746,l0717,l0717
	dw l0717,l0717
	dw l0aef
.l060a
	db #32,#4e,#04
	dw l0524
	db #46,#08
	dw l0572
	db #52,#02
	dw l05b8
	db #00,#01,#04
.l061a
	db #07,#80,#00,#04,#87,#00,#03,#87
	db #00,#0c,#0c,#00,#0c,#ff
.l0628
	db #00,#04,#0c,#10,#14,#18,#1e,#24
	db #28,#2c
.l0632
	db #b4,#0d,#fa,#00,#ff,#02,#00,#04
	db #f8,#08,#fa,#00,#b4,#0a,#ee,#00
	db #a0,#10,#f6,#00,#c0,#10,#f4,#00
	db #fe,#02,#fb,#0a,#f4,#00,#ff,#02
	db #ec,#13,#fc,#00,#c8,#0a,#f6,#00
	db #f0,#0f,#f0,#00,#78,#06,#fc,#00
.l0662
	db #01
.l0663
	db #fe,#02,#01,#01,#01,#02,#ff,#01
	db #01,#00,#04,#01,#04,#04,#ff,#01
	db #01,#03,#ff,#01,#02,#00,#10,#02
	db #03,#06,#fe,#02,#03,#00,#18,#01
	db #fd,#03,#01,#01,#02,#01,#fe,#02
	db #00,#01,#fe,#01,#02,#01,#00,#00
	db #20,#02,#01,#04,#ff,#04,#01,#04
	db #ff,#04,#01,#04,#fe,#04,#02,#04
	db #fc,#04,#04,#04,#fe,#04,#02,#00
	db #44
.l06ac
	db #ff,#80,#80,#80,#80,#85
.l06b2
	db #b0,#81,#00,#c5,#e3,#13,#c8,#8a
	db #00,#86,#72,#e1,#54,#c5,#13,#10
	db #86,#0e,#e3,#13,#c8,#86,#72,#e1
	db #54,#c5,#13,#10,#86,#0e,#e3,#11
	db #c8,#86,#72,#e1,#54,#c5,#11,#0e
	db #86,#0c,#e3,#11,#c8,#86,#72,#c5
	db #e1,#11,#10,#11,#86,#12,#85
.l06e9
	db #88,#02
.l06eb
	db #c5,#e3,#13,#86,#13,#e1,#54,#e3
	db #13,#e1,#86,#17,#e3,#1a,#86,#1a
	db #e1,#54,#e3,#1a,#e1,#86,#1a,#e3
	db #11,#86,#11,#e1,#54,#e3,#11,#e1
	db #86,#11,#e3,#11,#86,#18,#e1,#54
	db #18,#11,#12,#85
.l0717
	db #c4,#81,#00,#e1,#b1,#2b,#2b,#2b
	db #2b,#2b,#2b,#2b,#83,#2b,#b2,#26
	db #26,#26,#26,#26,#26,#26,#84,#26
	db #b1,#29,#29,#29,#29,#29,#29,#29
	db #54,#29,#29,#29,#29,#29,#29,#29
	db #54,#85
.l0741
	db #88,#00,#8c,#fe,#7f
.l0746
	db #c4,#81,#00,#e1,#b1,#2b,#2b,#2b
	db #2b,#2b,#2b,#2b,#2b,#2b,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#29,#29,#29
	db #29,#29,#29,#29,#29,#29,#29,#29
	db #29,#29,#29,#29,#2a,#85
.l076c
	db #2b,#2b,#2b,#2b,#2b,#2b,#2b,#2b
	db #2b,#2b,#2b,#2b,#2b,#2b,#2b,#2a
	db #29,#29,#29,#29,#29,#29,#29,#29
	db #e1,#83,#29,#83,#29,#80,#83,#29
	db #e3,#83,#26,#83,#24,#85
.l0792
	db #81,#32,#c2,#e1,#5f,#c6,#2b,#2b
	db #e3,#2b,#e1,#29,#28,#eb,#26,#e1
	db #26,#26,#26,#e3,#29,#e1,#28,#e3
	db #29,#e1,#28,#29,#28,#e3,#29,#e1
	db #28,#e3,#29,#e1,#28,#29,#28,#c2
	db #e1,#5f,#c6,#26,#26,#e3,#26,#e1
	db #24,#e3,#23,#e9,#21,#e1,#21,#21
	db #21,#e3,#21,#e1,#1f,#e3,#1d,#e1
	db #1c,#1a,#18,#e3,#21,#e1,#1f,#e3
	db #21,#e1,#24,#23,#21,#85
.l07e0
	db #88,#02
.l07e2
	db #c3,#e1,#5f,#c6,#e9,#2b,#e1,#29
	db #28,#ef,#26,#c3,#e1,#5f,#c6,#e9
	db #29,#e1,#28,#26,#ef,#24,#85
.l07f9
	db #b0,#c7,#81,#0c,#e3,#26,#26,#26
	db #e1,#24,#e5,#26,#26,#e3,#26,#e1
	db #26,#e3,#26,#e1,#24,#e9,#24,#ef
	db #80,#e3,#26,#24,#26,#e1,#26,#e5
	db #26,#e3,#24,#26,#e1,#28,#e5,#26
	db #e1,#24,#e9,#24,#ef,#80,#85
.l0828
	db #b0,#c7,#81,#0c,#e3,#23,#23,#23
	db #e1,#1f,#e5,#23,#23,#e3,#23,#e1
	db #1f,#e3,#23,#e1,#21,#e9,#21,#ef
	db #80,#e3,#23,#1f,#23,#e1,#23,#e5
	db #1f,#e3,#1f,#23,#e1,#23,#e5,#23
	db #e1,#1d,#e9,#1d,#ef,#80,#81,#00
	db #e1,#1f,#1f,#80,#1f,#1f,#1f,#80
	db #1f,#1f,#1f,#80,#1f,#1f,#1f,#80
	db #1f,#1d,#1d,#80,#1d,#1d,#1d,#80
	db #1d,#1d,#1d,#80,#1d,#1d,#1d,#80
	db #1d,#1f,#1f,#80,#1f,#1f,#1f,#80
	db #1f,#1f,#1f,#80,#1f,#1f,#1f,#80
	db #1f,#1d,#1d,#80,#1d,#1d,#1d,#80
	db #1d,#8a,#07,#1d,#89,#1d,#80,#89
	db #1d,#89,#1d,#89,#1d,#c8,#5b,#c5
	db #89,#1d,#85
.l08a3
	db #e1,#81,#18,#8a,#03,#c5,#13,#13
	db #c8,#5f,#c5,#89,#13,#89,#13,#89
	db #13,#c8,#5f,#c5,#13,#89,#13,#13
	db #c8,#5f,#c5,#89,#13,#89,#13,#89
	db #13,#c8,#5f,#c5,#0e,#89,#10,#10
	db #c8,#5f,#c5,#89,#10,#89,#10,#89
	db #10,#c8,#5f,#c5,#10,#89,#10,#10
	db #c8,#5f,#c5,#89,#10,#89,#10,#89
	db #10,#c8,#5f,#c5,#10,#89,#17,#89
	db #17,#c8,#5f,#c5,#89,#17,#89,#17
	db #89,#17,#c8,#5f,#c5,#89,#17,#89
	db #17,#89,#17,#c8,#5f,#c5,#89,#17
	db #89,#17,#89,#17,#c8,#5f,#c5,#89
	db #17,#89,#18,#89,#18,#c8,#5f,#c5
	db #89,#18,#89,#18,#18,#c8,#5f,#c5
	db #89,#18,#89,#1a,#1a,#c8,#5f,#c5
	db #1a,#89,#1a,#1a,#c8,#5f,#c5,#89
	db #1a,#85
.l092d
	db #c6,#e3,#23,#e1,#23,#e3,#24,#e1
	db #23,#23,#e5,#24,#e3,#23,#24,#23
	db #23,#e1,#23,#e3,#24,#e1,#23,#24
	db #26,#e3,#28,#e1,#28,#e5,#28,#e3
	db #24,#eb,#23,#ef,#80,#e3,#23,#eb
	db #21,#e3,#24,#26,#e1,#26,#e5,#26
	db #e3,#21,#85
.l0960
	db #e1,#c6,#23,#1f,#23,#1f,#24,#23
	db #1f,#24,#1f,#24,#23,#1f,#24,#1f
	db #23,#1f,#23,#1f,#23,#24,#1f,#23
	db #24,#26,#28,#1f,#28,#1f,#28,#23
	db #e3,#24,#23,#21,#1e,#1b,#e1,#23
	db #23,#21,#e3,#1e,#e1,#1e,#1c,#1b
	db #21,#1c,#21,#1c,#21,#1c,#24,#21
	db #26,#21,#26,#21,#1e,#1a,#e3,#21
	db #85,#b0,#88,#02
.l09a4
	db #e3,#1f,#81,#20,#c9,#f3,#1f,#e5
	db #1e,#e1,#1c,#f7,#1f,#e5,#1c,#e1
	db #1a,#f7,#1f,#e7,#1f,#1f,#e2,#1f
	db #1e,#e1,#1c,#e7,#1e,#84,#1f,#85
.l09c4
	db #e3,#1f,#e1,#c2,#85
.l09c9
	db #88,#02
.l09cb
	db #e1,#c2,#54,#54
.l09cf
	db #54,#54,#c3,#54,#54,#54,#54,#c2
	db #54,#54,#54,#54,#54,#c3,#54,#54
	db #54,#85
.l09e1
	db #c5,#81,#00,#e3,#8a,#00,#13,#89
	db #13,#e2,#89,#13,#89,#13,#e1,#13
	db #e3,#13,#89,#13,#e2,#89,#12,#89
	db #12,#e1,#10,#e3,#13,#89,#13,#e2
	db #89,#13,#89,#13,#e1,#13,#e3,#13
	db #89,#13,#e2,#89,#10,#89,#0f,#e1
	db #0e,#e3,#13,#13,#c2,#13,#13,#c5
	db #13,#13,#c2,#13,#13,#13,#89,#13
	db #e2,#89,#13,#89,#12,#e1,#10,#e3
	db #8a,#00,#12,#89,#12,#e2,#89,#10
	db #89,#10,#e1,#0e,#85
.l0a36
	db #1c,#1c,#c8,#5f,#c5,#1c,#89,#1c
	db #1c,#c8,#5f,#c5,#89,#1c,#13,#13
	db #c8,#5f,#c5,#89,#13,#10,#10,#c8
	db #5f,#c5,#89,#1a,#15,#15,#c8,#5f
	db #c5,#89,#15,#15,#15,#c8,#5f,#c5
	db #89,#15,#15,#15,#c8,#5f,#c5,#89
	db #15,#15,#15,#89,#15,#89,#15,#85
.l0a6e
	db #e3,#28,#e1,#28,#e5,#28,#e3,#2a
	db #2b,#e1,#2a,#e5,#28,#e3,#26,#82
	db #06,#00,#44,#ff,#25,#85
.l0a84
	db #e1,#28,#23,#28,#23,#1c,#23,#2a
	db #21,#2b,#1f,#2a,#28,#1f,#23,#26
	db #21,#82,#05,#00,#3c,#ff,#25,#85
.l0a9c
	db #c6,#b0,#81,#20,#e1,#23,#e3,#23
	db #e5,#23,#80,#e1,#23,#23,#e3,#23
	db #e1,#24,#e3,#23,#ef,#21,#80,#e1
	db #23,#8b,#e3,#22,#e5,#23,#80,#e1
	db #23,#24,#e3,#23,#e1,#24,#e3,#23
	db #e3,#21,#e1,#1d,#82,#fd,#7f,#3c
	db #f9,#18,#85
.l0acf
	db #ef,#c6,#82,#04,#00,#01,#23,#e3
	db #c3,#89,#5b,#89,#5b,#89,#5b,#89
	db #5b,#88,#00,#85
.l0ae3
	db #ff,#c6,#81,#00,#82,#03,#00,#01
	db #23,#88,#00,#85
.l0aef
	db #ff,#c6,#b0,#82,#03,#00,#04,#23
	db #85
;
; #0419
; db "   SND Module (C) 1986-1988 Jas.C.Brooke. Latest revision 6th September 1988. Prepare to die."
;
.music_info
	db "Savage Intro (1988)(Firebird)(Jason C Brooke)",0
	db "SND Module (C) 1986-1988 Jas.C.Brooke. Latest revision 6th September 1988. Prepare to die.",0

	read "music_end.asm"
