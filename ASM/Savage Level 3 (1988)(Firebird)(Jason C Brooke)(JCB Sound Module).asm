; Music of Savage Level 3 (1988)(Firebird)(Jason C Brooke)(JCB Sound Module)
; Ripped by Megachur the 20/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SAVAGEL3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #0110
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.play_music
;
	sub a
.l0112 equ $ + 1
.music_end equ $ + 1
	cp #00
	push ix
	jr z,l0151
	ld b,a
	ld ix,l047c
	ld hl,l04c1
	dec (hl)
	jr nz,l0130
.l0123 equ $ + 1
	ld (hl),#01
	call l030a
	call l0308
	call l0308
	ld lx,l047c	;#7c
.l0131 equ $ + 1
.l0130
	ld a,#00
	ld (l04c8),a
	ld bc,l04ca
	call l0396
	ld (l04c2),hl
	ld bc,l04cb
	call l0394
	ld (l04c4),hl
	ld bc,l04cc
	call l0394
	ld (l04c6),hl
.l0150
	sub a
.l0152 equ $ + 1
.l0151
	cp #00
	jr z,l01b6
	ld hl,l0475
	dec (hl)
	jr nz,l0163
	ld (l04cc),a
	ld (l0152),a
	jr l01b6
.l0163
	ld de,(l0473)
	ld a,(l046c)
	or a
	jr z,l0183
	ld hl,l0477
	dec (hl)
	jr nz,l0183
	ld (hl),a
	ld hl,l046d
	rrc (hl)
	ld hl,(l046e)
	jr c,l0181
	ld hl,(l0470)
.l0181
	add hl,de
	ex de,hl
.l0183
	ld hl,(l0467)
	add hl,de
	ld a,(l046b)
	or a
	jr z,l019a
	ex de,hl
	ld hl,l0476
	dec (hl)
	jr nz,l0199
	ld (hl),a
	ld de,(l0469)
.l0199
	ex de,hl
.l019a
	ld (l0473),hl
	ld a,#10
	ld (l04cc),a
	ld (l04c6),hl
	ld a,l
	ld hl,l0472
	rrc (hl)
	ld hl,l047e
	res 0,(hl)
	jr nc,l01b6
	inc (hl)
	ld (l04c8),a
.l01b6
	ld hl,l047e
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
	ld (l04c9),a
	sub a
.l01d0 equ $ + 1
	cp #00
	ld hl,l04ce
	ld c,a
	ld de,#0cf6
	jr z,l01df
	inc d
	inc l
	ld (l01d0),a
.l01df
	ld a,#c0
.l01e1
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
	jp p,l01e1
	pop ix
	ret
;
.init_music	;01fb
;
	push bc
	push de
	push hl
;.l01ff equ $ + 1
	ld de,l047d
	ld bc,#0044
	ld hl,l0112
	push hl
	ld (hl),b
	ld hl,l047c
	push hl
	ld (hl),b
	ldir
	ld hl,l057f
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld (l0123),a
	ex (sp),ix
	ld bc,#0301
	ld a,c
	ld (de),a
.l0226
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#24),c
	ld (ix+#09),e
	ld (ix+#0c),d
	ld (ix+#0f),#02
	ld a,(de)
	ld (ix+#03),a
	inc e
	ld a,(de)
	ld (ix+#06),a
	inc lx
	djnz l0226
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
	ld hl,l05fa
	add hl,bc
	ld c,a
	add hl,bc
	add hl,bc
	ld de,l0467
	ld c,#0f
	sub a
	ld (l0152),a
	ldir
	ld c,#03
	ld de,l04cd
	ldir
	ld hl,(l046b)
	ld (l0476),hl
	inc a
	ld (l0152),a
	ld (l01d0),a
	pop hl
	pop de
	pop bc
	ret
;
.jumps_table
;
	db #da
	db #74
	db #45
	db #68
	db #6b
	db #1a
	db #51
	db #7c
	db #05
	db #37
	db #75
	db #6f
	db #2f
	ld hl,l0150
	ex (sp),hl
;
.stop_music
;
	sub a
	ld (l0112),a
	ld (l04ca),a
	ld (l04cb),a
	ld (l04cc),a
	ret
	ld c,(ix+#0f)
	ld l,(ix+#09)
	ld h,(ix+#0c)
	add hl,bc
	ld a,(hl)
	inc l
	or (hl)
	jr nz,l02b0
	sbc hl,bc
	ld c,b
.l02b0
	ld d,(hl)
	dec l
	ld e,(hl)
	inc c
	inc c
	ld (ix+#0f),c
	jr l031d
	ld (ix+#2a),a
	jr l031d
	ld a,(de)
	inc de
	ld (ix+#3f),a
	jr l031d
	ld a,(de)
	inc de
	ld (ix+#1e),a
	set 3,(ix+#42)
	ld a,(de)
	inc de
	ld (ix+#21),a
	jr l031d
	ld a,(de)
	inc de
	ld (ix+#39),a
	ld a,(de)
	inc de
	ld (ix+#3c),a
	add a
	ld (ix+#36),a
	set 4,(ix+#42)
	jr l031d
	set 7,(ix+#42)
	set 6,(ix+#42)
	jr l031d
	ld (ix+#42),b
	jr l031d
	ld a,(de)
	inc de
	ld (l0454),a
;.l0301 equ $ + 3
	set 2,(ix+#42)
	set 1,(ix+#42)
	jr l031d
.l0308
	inc lx
.l030a
	dec (ix+#24)
	ld a,(ix+#42)
	jr nz,l034d
	and #30
	ld (ix+#42),a
	ld e,(ix+#03)
	ld d,(ix+#06)
.l031d
	ld a,(de)
	inc de
	cp #b0
	jr c,l0341
	add #20
	jr c,l0336
	add #20
	jr c,l033c
	ld c,a
	ld hl,l046c
	add hl,bc
	ld c,(hl)
	ld (ix+#18),c
	jr l031d
.l0336
	inc a
	ld (ix+#27),a
	jr l031d
.l033c
	ld (ix+#33),a
	jr l031d
.l0341
	or a
	jp p,l035f
	ld c,a
	ld hl,jumps_table-&80	;l01ff
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l034d
	add a
	ret p
	sbc a
	or #01
	add (ix+#2a)
	ld (ix+#2a),a
	ret
	ld (ix+#30),#f0
	jr l0387
.l035f
	ld (ix+#12),b
	ld (ix+#15),b
	bit 7,(ix+#2a)
	ld (ix+#2a),a
	jr nz,l0374
	ld (ix+#30),b
	ld (ix+#2d),b
.l0374
	ld c,(ix+#18)
	ld (ix+#1b),c
	ld c,b
	sub #54
	jr c,l0384
	ld c,#02
	ld (l0131),a
.l0384
	ld (ix+#00),c
.l0387
	ld a,(ix+#27)
	ld (ix+#24),a
	ld (ix+#06),d
	ld (ix+#03),e
	ret
.l0394
	inc lx
.l0396
	ld d,#00
	ld a,(ix+#30)
	cp #f0
	jr nc,l03ba
	sub #10
	ld (ix+#30),a
	jr nc,l03ba
	ld hl,l056b
	ld e,(ix+#33)
	add hl,de
	ld a,(hl)
	add (ix+#2d)
	ld e,a
	add hl,de
	ld a,(hl)
	inc (ix+#2d)
	ld (ix+#30),a
.l03ba
	or #f0
	add #0f
	inc a
	jr c,l03c2
	sub a
.l03c2
	ld (bc),a
	ld hl,l055e
	ld e,(ix+#1b)
	inc e
	add hl,de
	ld a,(hl)
	or a
	jp p,l03d5
	ld e,(ix+#18)
	and #7f
.l03d5
	ld (ix+#1b),e
	add (ix+#2a)
	add (ix+#3f)
	add a
	ld hl,l04d0
	ld e,a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld c,(ix+#42)
	bit 4,c
	jr z,l0419
	sub a
	or (ix+#39)
	jr nz,l03f6
	inc a
	and c
.l03f6
	ld b,(ix+#36)
	ld l,a
	ld a,(ix+#3c)
	bit 5,c
	jr nz,l0408
	sub l
	jr nz,l040e
	set 5,c
	jr l040e
.l0408
	add l
	cp b
	jr nz,l040e
	res 5,c
.l040e
	ld (ix+#3c),a
	srl b
	sub b
	ld l,a
	sbc a
	ld h,a
	add hl,de
	ex de,hl
.l0419
	ld a,c
	xor #01
	ld (ix+#42),a
	bit 3,c
	jr z,l0444
	ld b,(ix+#21)
	djnz l0441
	ld c,(ix+#1e)
	bit 7,c
	jr z,l0430
	dec b
.l0430
	ld l,(ix+#12)
	ld h,(ix+#15)
	add hl,bc
	ld (ix+#12),l
	ld (ix+#15),h
	add hl,de
	ex de,hl
	jr l0444
.l0441
	ld (ix+#21),b
.l0444
	cpl
	and #03
	ld a,(ix+#00)
	ld c,a
	res 0,c
	rra
	jr nz,l0457
	ld hl,l04c8
.l0454 equ $ + 1
	ld (hl),#10
	or #01
.l0457
	or c
	bit 2,(ix+#42)
	jr z,l0462
	res 1,(ix+#42)
.l0462
	ld (ix+#00),a
	ex de,hl
	ret
.l046e equ $ + 7
.l046d equ $ + 6
.l046c equ $ + 5
.l046b equ $ + 4
.l0469 equ $ + 2
.l0467
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0476 equ $ + 7
.l0475 equ $ + 6
.l0473 equ $ + 4
.l0472 equ $ + 3
.l0470 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0477
	db #00,#00,#00,#00,#00
.l047e equ $ + 2
.l047d equ $ + 1
.l047c
	db "This AY music module is copyright 1987 Jas.C.Brooke. -Prepare to die!"
.l04c2 equ $ + 1
.l04c1
	db "-",#00
.l04ca equ $ + 7
.l04c9 equ $ + 6
.l04c8 equ $ + 5
.l04c6 equ $ + 3
.l04c4 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l04ce equ $ + 3
.l04cd equ $ + 2
.l04cc equ $ + 1
.l04cb
	db #00,#00,#00,#00,#00
.l04d0
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
.l0548
	dw l0594
.l054a
	dw l05a4
.l054c
	dw l05ac
.l054e	
	dw l05b7
.l0550
	dw l05b5
.l0552
	dw l05cd,#0000
.l0556
	dw l05df
.l0558
	dw l05d8
	db #00,#00,#00,#01
.l055e
	db #05,#80,#0c,#0c,#00,#80,#00,#00
	db #00,#00,#02,#02,#82
.l056b
	db #03,#07,#0c,#3d,#3c,#3b,#3a,#f9
	db #1f,#2e,#2d,#2c,#2b,#fa,#3a,#3b
	db #5c,#4b,#4a,#f9
.l057f
	db #06
	dw l0548,l054e,l0550
	db #06
	dw l0548,l054a,l054c
	db #07
	dw l0552,l0556,l0558
.l0594
	db #b1,#e1,#c0,#86,#02,#04,#0b,#0b
	db #12,#0b,#09,#09,#10,#09,#e7,#0b
.l05a4
	db #e7,#c0,#86,#02,#04,#2a,#2d,#2f
.l05ac
	db #e7,#c0,#86,#02,#04,#26,#25,#26
	db #88
.l05b5
	db #89,#f4
.l05b7
	db #86,#01,#03,#c1,#e3,#2a,#e1,#28
	db #e0,#26,#2a,#e3,#28,#e0,#26,#e1
	db #25,#e0,#21,#e7,#1e,#88
.l05cd
	db #c0,#b1,#86,#02,#04,#e3,#0b,#e1
	db #0b,#0b,#85
.l05d8
	db #c2,#86,#02,#04,#ef,#23,#85
.l05df
	db #86,#01,#03,#c1,#eb,#27,#e3,#2a
	db #eb,#27,#e3,#2a,#eb,#26,#e3,#23
	db #eb,#1e,#e3,#23,#ef,#b2,#23,#b0
	db #e3,#23,#88
.l05fa
	db #fb,#7f,#f0,#00,#00,#01,#aa,#d8
	db #7f,#28,#00,#00,#f0,#00,#1e,#94
	db #11,#09,#00,#00,#aa,#00,#08,#01
	db #3f,#19,#00,#f4,#7f,#00,#55,#00
	db #0e,#a0,#0f,#09,#00,#00,#d2,#00
	db #07,#01,#3f,#19,#00,#f4,#7f,#00
	db #82,#00,#0c,#ac,#0d,#09,#28,#00
	db #50,#00,#04,#00,#00,#00,#00,#00
	db #00,#00,#5a,#00,#10,#d0,#07,#09
	db #08,#00,#f0,#00,#04,#00,#00,#00
	db #00,#00,#00,#00,#b4,#00,#18,#e8
	db #03,#0e,#05,#00,#1f,#00,#05,#01
	db #bb,#f4,#ff,#09,#00,#ff,#1e,#00
	db #50,#34,#21,#09,#08,#00,#00,#00
	db #00,#02,#a5,#f8,#ff,#08,#00,#ff
	db #00,#00,#23,#ac,#0d,#09,#01,#00
	db #10,#00,#10,#01,#b5,#02,#00,#fd
	db #ff,#ff,#0f,#00,#30,#94,#11,#09
	db #32,#00,#2c,#01,#08,#00,#00,#00
	db #00,#00,#00,#00,#fa,#00,#32,#a0
	db #0f,#09,#0a,#00,#55,#00,#07,#03
	db #aa,#0a,#00,#ee,#7f,#00,#5a,#00
	db #1c,#02,#00,#0a,#00,#00,#0d,#00
	db #00,#01,#55,#00,#00,#01,#00,#ff
	db #0d,#00,#10,#58,#02,#0e,#00,#00
	db #3b,#00,#03,#02,#aa,#e0,#7f,#20
	db #00,#33,#45,#00,#1e,#b8,#0b,#09
	db #01,#00,#1b,#00,#05,#01,#55,#ff
	db #ff,#00,#00,#ff,#19,#00,#1e,#ac
	db #0d,#09,#3e,#ff,#01,#ee,#fb
;
; &047c
; db "This AY music module is copyright 1987 Jas.C.Brooke. -Prepare to die!-"
;
.music_info
	db "Savage Level 3 (1988)(Firebird)(Jason C Brooke)",0
	db "This AY music module is copyright 1987 Jas.C.Brooke. -Prepare to die!-",0

	read "music_end.asm"
