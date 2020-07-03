; Music of Savage Level 2 (1988)(Firebird)(Jason C Brooke)(JCB Sound Module)
; Ripped by Megachur the 20/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SAVAGEL2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #0110
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.play_music
;
	push ix
	sub a
.l0114 equ $ + 1
.music_end equ $ + 1
	cp #00
	jr z,l0152
	ld b,a
	ld ix,l049c
.l011d equ $ + 1
	ld a,#00
.l011f equ $ + 1
	add #00
	ld (l011f),a
	jr nc,l0131
	call l0294
	call l0292
	call l0292
	ld lx,l049c	;#9c
.l0132 equ $ + 1
.l0131
	ld a,#00
	ld (l059e),a
	ld bc,l05a0
	call l0320
	ld (l0598),hl
	ld bc,l05a1
	call l031e
	ld (l059a),hl
	ld bc,l05a2
	call l031e
	ld (l059c),hl
.l0151
	sub a
.l0153 equ $ + 1
.l0152
	cp #00
	jr z,l01b1
	ld hl,l0495
	dec (hl)
	jr nz,l0164
	ld (l05a2),a
	ld (l0153),a
	jr l01b1
.l0164
	ld de,(l0489)
	ld hl,l0497
	dec (hl)
	jr nz,l0181
	ld a,(l0492)
	ld (hl),a
	ld hl,l0493
;.l0176 equ $ + 1
	rrc (hl)
	ld hl,(l048d)
	jr c,l017f
	ld hl,(l048f)
.l017f
	add hl,de
	ex de,hl
.l0181
	ld hl,(l0487)
	add hl,de
	ex de,hl
	ld hl,l0496
	dec (hl)
	jr nz,l0194
	ld a,(l0491)
	ld (hl),a
	ld de,(l048b)
.l0194
	ex de,hl
	ld (l0489),hl
	ld a,#10
	ld (l05a2),a
	ld (l059c),hl
	ld a,l
	ld hl,l0494
	rrc (hl)
	ld hl,l049e
	res 0,(hl)
	jr nc,l01b1
	inc (hl)
	ld (l059e),a
.l01b1
	ld hl,l049e
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
	ld (l059f),a
	ld hl,l05a4
	sub a
.l01ce equ $ + 1
	cp #00
	ld c,a
	ld de,#0cf6
	jr z,l01da
	inc d
	inc l
	ld (l01ce),a
.l01da
	ld a,#c0
.l01dc
	ld b,#f4
	out (c),d
	ld b,e
	out (c),a
	rlca
	out (c),c
	dec b
	outd
	ld b,e
	out (c),a
	rrca
	out (c),c
	dec d
	jp p,l01dc
	pop ix
	ret
;
.jumps_table
;
	db #ed
	db #87
	db #53
	db #7b
	db #7e
	db #1b
	db #64
	db #8f
	db #06
	db #45
	db #88
	db #82
	db #3d
	db #30
	ld hl,l0151
	ex (sp),hl
.stop_music
;
	sub a
	ld (l0114),a
	ld (l05a0),a
	ld (l05a1),a
	ld (l05a2),a
	ret
	ld a,(ix+#15)
	ld l,(ix+#09)
	ld h,(ix+#0c)
	add #02
	cp (ix+#0f)
	jr c,l0229
	ld a,(ix+#12)
.l0229
	ld c,a
	add hl,bc
	ld e,(hl)
	inc l
	ld d,(hl)
	ld (ix+#15),a
	jr l02a7
	ld a,(de)
	ld (ix+#4e),a
	inc de
	ld a,(de)
	ld (ix+#51),a
	inc de
	jr l02a7
	ld (ix+#33),a
	jr l02a7
	ld a,(de)
	inc de
	ld (ix+#48),a
	jr l02a7
	ld a,(de)
	inc de
	ld (ix+#24),a
	ld a,(de)
	inc de
	ld (ix+#27),a
	ld a,(de)
	inc de
	ld (ix+#2a),a
	set 3,(ix+#4b)
	jr l02a7
	ld a,(de)
	inc de
	ld (ix+#42),a
	ld a,(de)
	inc de
	ld (ix+#45),a
	add a
	ld (ix+#3f),a
	set 4,(ix+#4b)
	jr l02a7
	set 7,(ix+#4b)
	set 6,(ix+#4b)
	jr l02a7
	ld (ix+#4b),b
	jr l02a7
	ld a,(de)
	inc de
	ld (l03e0),a
	set 2,(ix+#4b)
	set 1,(ix+#4b)
	jr l02a7
.l0292
	inc lx
.l0294
	dec (ix+#2d)
	ld a,(ix+#4b)
	jr nz,l02d7
	and #30
	ld (ix+#4b),a
	ld e,(ix+#03)
	ld d,(ix+#06)
.l02a7
	ld a,(de)
	inc de
	cp #b0
	jr c,l02cb
	add #20
	jr c,l02c0
	add #20
	jr c,l02c6
	ld c,a
	ld hl,l062d
	add hl,bc
	ld c,(hl)
	ld (ix+#1e),c
	jr l02a7
.l02c0
	inc a
	ld (ix+#30),a
	jr l02a7
.l02c6
	ld (ix+#3c),a
	jr l02a7
.l02cb
	or a
	jp p,l02e9
	ld c,a
	ld hl,jumps_table-&80	; l0176
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l02d7
	add a
	ret p
	sbc a
	or #01
	add (ix+#33)
	ld (ix+#33),a
	ret
	ld (ix+#39),#f0
	jr l0311
.l02e9
	ld (ix+#18),b
	ld (ix+#1b),b
	bit 7,(ix+#33)
	ld (ix+#33),a
	jr nz,l02fe
	ld (ix+#39),b
	ld (ix+#36),b
.l02fe
	ld c,(ix+#1e)
;.l0301
	ld (ix+#21),c
	ld c,b
	sub #54
	jr c,l030e
	ld c,#02
	ld (l0132),a
.l030e
	ld (ix+#00),c
.l0311
	ld a,(ix+#30)
	ld (ix+#2d),a
	ld (ix+#06),d
	ld (ix+#03),e
	ret
.l031e
	inc lx
.l0320
	ld d,#00
	ld a,(ix+#39)
	cp #f0
	jr nc,l0344
	sub #10
	ld (ix+#39),a
	jr nc,l0344
	ld hl,l073a
	ld e,(ix+#3c)
	add hl,de
	ld a,(hl)
	add (ix+#36)
	ld e,a
	add hl,de
	ld a,(hl)
	inc (ix+#36)
	ld (ix+#39),a
.l0344
	or #f0
	add #0f
	inc a
	jr c,l034c
	sub a
.l034c
	ld (bc),a
	ld hl,l0722
	ld e,(ix+#21)
	inc e
	add hl,de
	ld a,(hl)
	or a
	jp p,l0363
	inc a
	jr z,l0366
	ld e,(ix+#1e)
	dec a
	and #7f
.l0363
	ld (ix+#21),e
.l0366
	add (ix+#33)
	add (ix+#48)
	add a
	ld hl,l04f0
	ld e,a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld c,(ix+#4b)
	bit 4,c
	jr z,l03a7
	sub a
	or (ix+#42)
	jr nz,l0384
	inc a
	and c
.l0384
	ld b,(ix+#3f)
	ld l,a
	ld a,(ix+#45)
	bit 5,c
	jr nz,l0396
	sub l
	jr nz,l039c
	set 5,c
	jr l039c
.l0396
	add l
	cp b
	jr nz,l039c
	res 5,c
.l039c
	ld (ix+#45),a
	srl b
	sub b
	ld l,a
	sbc a
	ld h,a
	add hl,de
	ex de,hl
.l03a7
	ld a,c
	xor #01
	ld (ix+#4b),a
	bit 3,c
	jr z,l03d0
	ld b,(ix+#2a)
	djnz l03cd
	ld c,(ix+#24)
	ld b,(ix+#27)
	ld l,(ix+#18)
	ld h,(ix+#1b)
	add hl,bc
	ld (ix+#18),l
	ld (ix+#1b),h
	add hl,de
	ex de,hl
	jr l03d0
.l03cd
	ld (ix+#2a),b
.l03d0
	cpl
	and #03
	ld a,(ix+#00)
	ld c,a
	res 0,c
	rra
	jr nz,l03e3
	ld hl,l059e
.l03e0 equ $ + 1
	ld (hl),#10
	or #01
.l03e3
	or c
	bit 2,(ix+#4b)
	jr z,l03ee
	res 1,(ix+#4b)
.l03ee
	ld (ix+#00),a
	ld l,(ix+#4e)
	ld h,(ix+#51)
	add hl,de
	ret
;
.init_music	;&3f9
;
	push bc
	push de
	push hl
	ld de,l049d
	ld bc,#0053
	ld hl,l0114
	push hl
	ld (hl),b
	ld hl,l049c
	push hl
	ld (hl),b
	ldir
	ld hl,l06f6
	ld c,a
	add a
	add c
	add a
	add a
	add c
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld (l011d),a
	ex (sp),ix
	ld bc,&0301
	ld a,#ff
	ld (l011f),a
.l0428
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
	djnz l0428
	pop ix
	pop hl
	ld (hl),c
	pop hl
	pop de
	pop bc
	ret
	push bc
	push de
	push hl
	add a
	ld c,a
	add a
	add a
	ld b,#00
	ld hl,l0b21
	add hl,bc
	ld c,a
	add hl,bc
	add hl,bc
	ld de,l0487
	ld c,#0f
	sub a
	ld (l0153),a
	ldir
	ld c,#03
	ld de,l05a3
	ldir
	ld hl,(l0491)
	ld (l0496),hl
	inc a
	ld (l0153),a
	ld (l01ce),a
	pop hl
	pop de
	pop bc
	ret
.l048d equ $ + 6
.l048b equ $ + 4
.l0489 equ $ + 2
.l0487
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0496 equ $ + 7
.l0495 equ $ + 6
.l0494 equ $ + 5
.l0493 equ $ + 4
.l0492 equ $ + 3
.l0491 equ $ + 2
.l048f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l049c equ $ + 5
.l0497
	db #00,#00,#00,#00,#00
	db "T"
.l049e equ $ + 1
.l049d
	db "he SND sound module (C) Jas.C.Brooke. Latest version 16th June 1988. (Born in 1986)"
.l04f0
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
.l059f equ $ + 7
.l059e equ $ + 6
.l059c equ $ + 4
.l059a equ $ + 2
.l0598
	db #00,#00,#00,#00,#00,#00,#00,#00
.l05a4 equ $ + 4
.l05a3 equ $ + 3
.l05a2 equ $ + 2
.l05a1 equ $ + 1
.l05a0
	db #00,#00,#00,#00,#00,#00
.l05a6
	dw l07e7,l07b8,l07a6,l07ba
	dw l07af,l07ba,l07b2,l07ba
	dw l07b8,l07b5,l07ba,l07af
	dw l07ba,l07b8,l07b8,l07a6
	dw l07ba,l07af,l07ba,l07b2
	dw l07ba,l07b8,l07b5,l07ba
	dw l07af,l07ba,l07b8,l07b8
	dw l07a6,l07ba,l07af,l07ba
	dw l07b2,l07ba,l07b8,l07b5
	dw l07ba,l07af,l07ba,l07b8
	dw l07b8,l07b5,l07ba,l07a6
	dw l07d3,l07af,l07d3,l07b2
	dw l07ba,l07b8,l07b5,l07ba
	dw l07a6,l07d3,l07af,l07d3
	dw l07b8,l08eb,l08eb,l08eb
	dw l0902,l0902,l08eb,l0902
.l062d equ $ + 7
	dw l091a,l08eb,l08eb,l08eb
	dw l0902,l0902,l08eb,l0902
	dw l091a,l07b8,l07b5,l07ba
	dw l07a6,l07d3,l07af,l07d3
	dw l07b2,l07ba,l07b8,l07b5
	dw l07ba,l07a6,l07d3,l07af
	dw l07d3,l07b8,l0a89,l0a89
	dw l0a89,l0a89
.l0662
	dw l07e9,l0833
	dw l0833,l08c6,l098e,l0943
	dw l0943,l0943,l0943,l0943
	dw l0943,l0943,l0943,l098e
	dw l0a48,l0a38,l0a38,l0a38
	dw l0a62
.l0688
	dw l080c,l080b,l080b
	dw l081a,l0882,l0882,l08c3
	dw l095f,l095f,l095f,l095f
	dw l095f,l095f,l095f,l095f
	dw l095f,l095f,l095f,l095f
	dw l0a71,l0a71,l095f,l0a71
	dw l095f,l0a71,l095f,l095f
	dw l095f,l095f,l095f,l095f
	dw l095f,l095f,l0a71,l0a71
	dw l0a71,l0a98,l0a71,l0a71
	dw l0a71,l0a98,l0a71,l0a71
	dw l0a71,l0a98,l0a71,l0a71
	dw l0a71,l0a98
.l06ea
	dw l0ab8
.l06ec
	dw l0ac9
.l06ee
	dw l0ab5
.l06f0
	dw l0ade
.l06f2
	dw l0af9
.l06f4
	dw l0b0d
.l06f6
	db #40,#bc,#02
	dw l05a6
	db #26,#02
	dw l0662
	db #62,#08
	dw l0688
	db #40,#02,#00
	dw l06ea
	db #02,#00
	dw l06ec
	db #02,#00
	dw l06ee
	db #40,#02,#00
	dw l06f0
	db #02,#00
	dw l06f2
	db #02,#00
	dw l06f4
	db #00,#01,#06,#0a,#11
.l0722
	db #14,#80,#0c,#00,#0c,#0c,#ff,#0f
	db #07,#0a,#80,#0c,#00,#0c,#0c,#00
	db #0c,#ff,#00,#07,#84,#00,#07,#83
.l073a
	db #0e,#18,#1e,#24,#25,#2e,#36,#3a
	db #3d,#47,#4e,#4e,#4f,#50,#0c,#0b
	db #2d,#0b,#0a,#1b,#0a,#49,#16,#12
	db #f0,#0d,#2e,#1c,#1b,#0a,#19,#f0
	db #0a,#09,#05,#03,#02,#11,#f0,#0f
	db #0e,#0d,#0c,#0a,#09,#06,#14,#13
	db #12,#21,#f0,#0b,#1e,#0d,#1c,#1b
	db #1a,#19,#08,#f7,#0c,#1d,#1c,#1b
	db #fa,#2c,#1b,#1a,#f9,#0d,#0c,#0b
	db #0a,#09,#08,#07,#05,#04,#02,#f0
	db #1e,#1d,#1c,#2b,#ec,#eb,#ea,#f9
	db #2f,#0f,#2e,#0e,#2d,#0d,#2c,#1b
	db #2a,#19,#18,#19,#18,#17,#16,#15
	db #14,#13,#12,#f1
.l07a6
	db #89,#fc,#85,#89,#fd,#85,#89,#f9
	db #85
.l07af
	db #89,#fe,#85
.l07b2
	db #89,#fb,#85
.l07b5
	db #89,#03,#85
.l07b8
	db #89,#00
.l07ba
	db #e1,#b0,#86,#02,#04,#8b,#04,#c5
	db #09,#8a,#15,#c4,#65,#c5,#8a,#09
	db #8a,#09,#8a,#15,#c4,#65,#c5,#8a
	db #09
.l07d3
	db #8a,#09,#8a,#15,#c4,#65,#c5,#8a
	db #09,#8a,#09,#8a,#15,#c4,#65,#c5
	db #84,#8a,#07,#85
.l07e7
	db #89,#f4
.l07e9
	db #86,#01,#01,#b1,#c0,#e3,#1c,#1c
	db #1c,#e1,#1c,#e3,#1d,#1c,#e1,#1c
	db #e3,#1f,#21,#1c,#1c,#1c,#e1,#1c
	db #c1,#28,#28,#80,#e3,#28,#28,#e1
	db #80,#85
.l080b
	db #65
.l080c
	db #e1,#c2,#65,#65,#c4,#61,#c2,#65
	db #65,#65,#c4,#61,#c2,#85
.l081a
	db #b2,#e1,#c1,#86,#01,#01,#8b,#0d
	db #1c,#8a,#1c,#80,#e3,#8a,#1c,#8a
	db #e1,#1c,#e1,#c2,#65,#e0,#61,#61
	db #85
.l0833
	db #c6,#b0,#86,#01,#02,#e3,#29,#e1
	db #28,#f1,#28,#e3,#2d,#2b,#2b,#e1
	db #29,#f5,#29,#e3,#2a,#fb,#2b,#e3
	db #26,#ef,#28,#86,#3f,#19,#82,#04
	db #00,#04,#8c,#28,#86,#01,#02,#e1
	db #26,#e3,#24,#f1,#24,#e3,#26,#28
	db #26,#e1,#24,#f5,#24,#e3,#25,#ef
	db #26,#86,#08,#10,#8c,#eb,#26,#86
	db #01,#02,#e3,#1f,#ef,#21,#e7,#b1
	db #82,#20,#00,#04,#21,#80,#85
.l0882
	db #c7,#b0,#86,#01,#02,#e3,#24,#e1
	db #24,#f1,#24,#e3,#28,#26,#24,#e1
	db #24,#f9,#24,#fb,#23,#e3,#23,#ef
	db #24,#86,#1f,#19,#82,#04,#00,#04
	db #8c,#28,#86,#01,#02,#e1,#21,#e3
	db #21,#f1,#21,#e3,#21,#20,#1f,#e1
	db #1f,#f9,#1f,#fb,#1f,#e3,#1c,#ef
	db #1c,#e7,#82,#18,#00,#01,#21,#80
	db #85
.l08c3
	db #86,#02,#06
.l08c6
	db #b0,#fb,#2d,#e1,#28,#2b,#fb,#2d
	db #e1,#26,#28,#fb,#29,#e1,#26,#27
	db #ff,#28,#fb,#28,#e1,#2b,#29,#fb
	db #28,#e1,#2b,#28,#f9,#26,#e1,#26
	db #24,#23,#ff,#21,#85
.l08eb
	db #c1,#81,#e3,#82,#50,#00,#01,#1f
	db #82,#50,#00,#01,#1f,#82,#50,#00
	db #01,#1f,#e1,#c8,#58,#58,#85
.l0902
	db #c1,#e3,#82,#50,#00,#01,#1f,#82
	db #50,#00,#01,#1f,#e1,#82,#50,#00
	db #01,#1f,#e3,#c8,#58,#e1,#58,#85
.l091a
	db #c1,#e3,#82,#50,#00,#01,#1f,#82
	db #50,#00,#01,#1f,#e1,#82,#50,#00
	db #01,#1f,#8b,#04,#82,#50,#00,#01
	db #1f,#c8,#58,#e0,#8a,#82,#50,#00
	db #01,#1f,#8a,#82,#50,#00,#01,#1f
	db #85
.l0943
	db #e1,#c8,#58,#58,#c4,#5b,#c8,#58
	db #58,#58,#c4,#5b,#c8,#58,#58,#58
	db #c4,#5b,#c8,#58,#58,#c4,#5b,#c8
	db #58,#c4,#5b,#85
.l095f
	db #c1,#81,#e3,#82,#50,#00,#01,#28
	db #c4,#5b,#e1,#82,#28,#00,#01,#1c
	db #82,#28,#00,#01,#1c,#e3,#c4,#5b
	db #e3,#82,#50,#00,#01,#28,#c4,#5b
	db #e1,#82,#28,#00,#01,#1c,#82,#28
	db #00,#01,#1c,#c4,#5b,#5b,#85
.l098e
	db #c8,#b5,#e3,#21,#e1,#21,#e3,#21
	db #e1,#21,#21,#21,#e3,#21,#e1,#21
	db #e3,#21,#e1,#21,#21,#21,#b4,#e3
	db #24,#e1,#24,#e3,#24,#e1,#24,#24
	db #24,#e3,#24,#e1,#24,#e3,#24,#e1
	db #24,#24,#24,#e3,#1d,#e1,#1d,#e3
	db #1d,#e1,#1d,#1d,#1d,#e3,#1f,#e1
	db #1f,#e3,#1f,#e1,#1f,#1f,#1f,#b5
	db #e3,#1c,#e1,#1c,#e3,#1c,#e1,#1c
	db #1c,#1c,#e3,#1c,#e1,#1c,#e3,#1c
	db #e1,#1c,#1c,#1c,#b5,#e3,#21,#e1
	db #21,#e3,#21,#e1,#21,#21,#21,#e3
	db #21,#e1,#21,#e3,#21,#e1,#21,#21
	db #21,#b4,#e3,#24,#e1,#24,#e3,#24
	db #e1,#24,#24,#24,#e3,#24,#e1,#24
	db #e3,#24,#e1,#24,#24,#24,#e3,#1d
	db #e1,#1d,#e3,#1d,#e1,#1d,#1d,#1d
	db #e3,#1f,#e1,#1f,#e3,#1f,#e1,#1f
	db #1f,#1f,#b5,#e3,#21,#e1,#21,#e3
	db #21,#e1,#21,#21,#21,#e3,#21,#e1
	db #21,#e3,#21,#b1,#c4,#e1,#28,#24
	db #21,#85
.l0a38
	db #c0,#e3,#2d,#c8,#eb,#80,#e3,#2d
	db #e1,#2d,#e3,#2d,#e1,#2d,#2d,#2d
.l0a48
	db #b4,#c0,#e3,#29,#c8,#e1,#29,#e3
	db #29,#e1,#29,#29,#29,#c0,#e3,#2b
	db #c8,#e1,#2b,#e3,#2b,#e1,#2b,#2b
	db #2b,#85
.l0a62
	db #c1,#e3,#2d,#eb,#80,#b3,#e5,#8a
	db #21,#8a,#21,#e3,#8a,#21,#85
.l0a71
	db #c1,#e3,#82,#50,#00,#01,#8a,#28
	db #e1,#c4,#61,#e3,#82,#50,#00,#01
	db #8a,#28,#e1,#c4,#5b,#5b,#5b,#85
.l0a89
	db #c9,#b0,#86,#04,#08,#ef,#11,#13
	db #15,#86,#10,#20,#8c,#15,#85
.l0a98
	db #c1,#e1,#82,#50,#00,#01,#8a,#28
	db #82,#50,#00,#01,#28,#e1,#c4,#61
	db #e3,#82,#50,#00,#01,#8a,#28,#e1
	db #c3,#5b,#5b,#5b,#85
.l0ab5
	db #8d,#fe,#7f
.l0ab8
	db #c6,#86,#02,#04,#e5,#21,#24,#e3
	db #21,#e0,#26,#8c,#25,#f0,#8c,#26
	db #88
.l0ac9
	db #c6,#86,#03,#06,#e3,#15,#e1,#15
	db #e3,#18,#e1,#18,#e3,#15,#ec,#84
	db #1a,#e5,#8c,#26,#88
.l0ade
	db #c1,#86,#02,#04,#e1,#8b,#04,#15
	db #21,#80,#15,#8a,#10,#1c,#80,#10
	db #8a,#14,#20,#80,#14,#8a,#12,#1e
	db #80,#12,#85
.l0af9
	db #c6,#86,#01,#02,#e3,#2d,#2c,#2f
	db #e1,#2c,#e5,#2f,#e3,#2c,#e1,#31
	db #2f,#2d,#2c,#85
.l0b0d
	db #c7,#86,#01,#02,#e3,#28,#28,#28
	db #e1,#28,#e5,#27,#e3,#23,#e1,#25
	db #2a,#25,#2a,#85
.l0b21
	db #3c,#00,#f5,#00,#11,#00,#f5,#7f
	db #80,#00,#0c,#01,#55,#00,#3c,#00
	db #10,#09,#00,#00,#12,#00,#0f,#00
	db #0c,#00,#f4,#ff,#09,#01,#55,#ff
	db #23,#00,#0c,#09,#05,#00,#12,#00
	db #0f,#00,#0c,#00,#f4,#ff,#09,#01
	db #55,#ff,#32,#00,#10,#09,#04,#00
	db #0d,#00,#0b,#00,#05,#00,#fb,#ff
	db #0a,#01,#55,#ff,#46,#00,#14,#09
	db #3c,#00,#f5,#00,#09,#01,#0b,#00
	db #f5,#7f,#08,#01,#55,#00,#20,#00
	db #0c,#09,#04,#00,#3a,#00,#3a,#00
	db #15,#00,#e8,#7f,#00,#01,#55,#00
	db #0f,#00,#08,#09,#06,#00,#3a,#00
	db #3a,#00,#11,#00,#ea,#7f,#00,#01
	db #55,#00,#15,#00,#09,#09,#03,#00
	db #3a,#00,#3a,#00,#20,#00,#e5,#7f
	db #00,#01,#55,#00,#18,#00,#08,#09
	db #28,#00,#eb,#00,#e7,#00,#09,#00
	db #f7,#7f,#06,#03,#55,#00,#12,#d0
	db #07,#09,#04,#00,#2c,#01,#c2,#01
	db #00,#00,#00,#00,#02,#01,#55,#08
	db #04,#90,#01,#09,#04,#00,#01,#00
	db #14,#00,#00,#00,#fc,#ff,#12,#01
	db #80,#ff,#14,#dc,#05,#0e,#3e,#ff
	db #01,#ee,#fb
;
; "The SND sound module (C) Jas.C.Brooke. Latest version 16th June 1988. (Born in 1986)"
;	
; call #0454	; choose sound fx
;
.music_info
	db "Savage Level 2 (1988)(Firebird)(Jason C Brooke)",0
	db "The SND sound module (C) Jas.C.Brooke. Latest version 16th June 1988. (Born in 1986)",0

	read "music_end.asm"
