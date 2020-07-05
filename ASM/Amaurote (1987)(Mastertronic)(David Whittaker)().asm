; Music of Amaurote (1987)(Mastertronic)(David Whittaker)()
; Ripped by Megachur the 24/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AMAUROTE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b373
FIRST_THEME				equ 0
LAST_THEME				equ 7

	read "music_header.asm"
;
.init_music
.lb373
;
	ex af,af'
	xor a
	ld (lb866),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,lb867
	add hl,bc
	ld a,(hl)
	ld (lb456),a
	inc hl
	ld ix,lb3c9
	ld c,#20
	ld a,#03
.lb392
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl

	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl

	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,lb392
	ld (lb6a7),a
	inc a
	ld (lb429),a
	ld (lb866),a
	ret
.lb3c9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.lb3e9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.lb409
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.lb429
	db #00
;
.play_music	;lb42a
;
	ld a,(lb866)
	and a
	jp z,lb483

.lb432 equ $ + 1
	ld a,#00
	ld (lb47f),a
	ld hl,lb429
	dec (hl)
	jr nz,lb457
	ld b,(hl)

	ld ix,lb3c9
	call lb5bd

	ld ix,lb3e9
	call lb5bd

	ld ix,lb409
	call lb5bd

	ld hl,lb429
.lb456 equ $ + 1
	ld (hl),#01
.lb457
	ld ix,lb3c9
	call lb65b
	ld (lb76a),hl
	ld (lb772),a

	ld ix,lb3e9
.lb46a equ $ + 2
	call lb65b
	ld (lb76c),hl
	ld (lb773),a

	ld ix,lb409
	call lb65b
	ld (lb76e),hl
	ld (lb774),a

.lb47f equ $ + 1
	ld a,#00
	ld (lb770),a
.lb485 equ $ + 2
.lb483
	ld a,(lb866)
	and a
	jr nz,lb49c
	ret
;
.stop_music
;
	xor a
	ld (lb866),a
	call lb4c2
	xor a
	ld (lb772),a
	ld (lb773),a
	ld (lb774),a
	ret
.lb49c
	ld hl,lb776
	ld d,#0c
.lb4a1
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,lb4a1
	ret
.lb4c2
	ld de,#0d00	; original is ld de,#d000 should be ld de,&0d00 !!!
.lb4c5
	call lb4cf
	dec e
	jp p,lb4c5
	ld de,#073f
.lb4cf
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	ret
;
.jumps_table
;
	db #ca
	db #b2
	db #b6
	db #bb
	db #79
	db #a8
	db #a3
	db #10
	db #92
	db #8a
	db #4f
	db #39
	db #61
	db #b7
	db #01
	xor a
	ld (lb866),a
	pop hl
	jp lb4c2

	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,lb523
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb523
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb5cb

	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,lb74f
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb5cb

	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,lb74f
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb5cb

	ld hl,lb74f
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr lb5cb
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lb5cb

	ld a,(de)
	inc de
	ld (lb6a7),a
	jr lb5cb

	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr lb5cb

	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lb5cb

	ld (ix+#1d),b
	jr lb5cb

	ld (ix+#1d),#40
	jr lb5cb

	ld (ix+#1d),#c0
	jr lb5cb

	set 1,(ix+#00)
	jr lb5cb

	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb5f7

.lb5bd
	dec (ix+#10)
	jr nz,lb604
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb5cb
	ld a,(de)
	inc de
	and a
	jp m,lb615
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb5dd
	ld (lb432),a
.lb5dd
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.lb5f7
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.lb604
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lb611
	inc (ix+#12)
	ret
.lb611
	dec (ix+#12)
	ret
.lb615
	cp #c0
	jr c,lb653
	add #20
	jr c,lb638
	add #10
	jr c,lb63e
	add #10
	ld c,a
	ld hl,lb81f
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr lb5cb
.lb638
	inc a
	ld (ix+#11),a
	jr lb5cb
.lb63e
	ld (ix+#19),a
	ld a,(de)
	inc de
	ld (ix+#14),a
	ld a,(de)
	inc de
	ld (ix+#15),a
	ld a,(de)
	inc de
	ld (ix+#17),a
	jp lb5cb
.lb653
	ld hl,jumps_table-&80	;lb46a
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb65b
	ld c,(ix+#00)
	bit 5,c
	jr z,lb6a6
	ld a,(ix+#16)
	sub #10
	jr nc,lb68e
	bit 6,c
	jr z,lb693
	add (ix+#13)
	jr nc,lb673
	sbc a
.lb673
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,lb689
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr lb6a6
.lb689
	ld (ix+#18),a
	jr lb6a6
.lb68e
	ld (ix+#16),a
	jr lb6a6
.lb693
	cpl
	sub #0f
	add (ix+#13)
	jr c,lb69c
	sub a
.lb69c
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,lb6a6
	res 5,c
.lb6a7 equ $ + 1
.lb6a6
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
.lb6b2
	ld a,(hl)
	cp #87
	jr c,lb6be
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.lb6be
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lb75f
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb720
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb6e9
	bit 0,c
	jr nz,lb707
.lb6e9
	bit 5,l
	jr nz,lb6f9
	sub (ix+#1b)
	jr nc,lb704
	set 5,(ix+#1d)
	sub a
	jr lb704
.lb6f9
	add (ix+#1b)
	cp b
	jr c,lb704
	res 5,(ix+#1d)
	ld a,b
.lb704
	ld (ix+#1c),a
.lb707
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb712
	dec d
.lb712
	add #a0
	jr c,lb71e
.lb716
	sla e
	rl d
	add #18
	jr nc,lb716
.lb71e
	add hl,de
	ex de,hl
.lb720
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lb74b
	ld b,(ix+#0e)
	djnz lb748
	ld c,(ix+#0d)
	bit 7,c
	jr z,lb737
	dec b
.lb737
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lb74b
.lb748
	ld (ix+#0e),b
.lb74b
	cpl
	and #03
.lb74f equ $ + 1
	ld a,#38
	jr nz,lb75c
	ld a,(lb432)
	xor #08
	ld (lb47f),a
	ld a,#07
.lb75c
	ld hl,lb771
.lb75f
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.lb771 equ $ + 7
.lb770 equ $ + 6
.lb76e equ $ + 4
.lb76c equ $ + 2
.lb76a
	db #00,#00,#00,#00,#00,#00,#00,#3f
.lb772
	db #0f
.lb773
	db #0f
.lb774
	db #0f,#00
.lb776
	db #00
	defw #077c,#0708,#06b0,#0640
	defw #05ec,#0594,#0544,#04f8
	defw #04b0,#0470,#042c,#03f0
	defw #03be,#0384,#0358,#0320
	defw #02f6,#02ca,#02a2,#027c
	defw #0258,#0238,#0216,#01f8
	defw #01df,#01c2,#01ac,#0190
	defw #017b,#0165,#0151,#013e
	defw #012c,#011c,#010b,#00fc
	defw #00ef,#00e1,#00d6,#00c8
	defw #00bd,#00b2,#00a8,#009f
	defw #0096,#008e,#0085,#007e
	defw #0077,#0070,#006b,#0064
	defw #005e,#0059,#0054,#004f
	defw #004b,#0047,#0042,#003f
	defw #003b,#0038,#0035,#0032
	defw #002f,#002c,#002a,#0027
	defw #0025,#0023,#0021,#001f
	defw #001d,#001c,#001a,#0019
	defw #0017,#0016,#0015,#0013
	defw #0012,#0011,#0010,#000f
.lb81f
	db #0f,#10,#13,#16,#19,#1d,#20,#23
	db #26,#29,#2b,#2d,#2f,#31,#33,#00
	db #87,#00,#03,#07,#87,#00,#04,#07
	db #87,#00,#02,#07,#87,#00,#04,#07
	db #0c,#87,#07,#0c,#0f,#87,#07,#0c
	db #10,#87,#03,#07,#0c,#87,#04,#07
	db #0c,#87,#00,#0c,#87,#00,#03,#87
	db #00,#04,#87,#00,#05,#87,#00,#07
	db #87,#00,#00,#00,#00,#0c,#87
.lb866
.music_end
	db #00
.lb867
	db #06
	dw lb89f,lb8df,lb91f
	db #06
	dw lbc1a,lbc2c,lbc36
	db #05
	dw lbd1d,lbd2b,lbd2f
	db #03
	dw lbdfe,lbe02,lbe06
	db #03
	dw lbe92,lbe96,lbe9a
	db #02
	dw lbefe,lbf02,lbf06
	db #03
	dw lbf50,lbf54,lbf58
	db #02
	dw lbf9a,lbf9e,lbfa2
.lb89f
	dw lb95f,lb9a1,lb974,lb9c0
	dw lb974,lb9c0,lb9d7,lb9d7
	dw lb9d7,lb9f4,lb9f4,lba04
	dw lba19,lba32,lba54,lba54
	dw lba54,lba54,lba54,lba54
	dw lba54,lba54,lba54,lba54
	dw lba54,lba54,lba54,lba54
	dw lba54,lba54
;	dw lmend	; added by Megachur for music end detection
	dw lbff5,#0000
.lb8df
	dw lba76,lba8d,lb974,lbab4
	dw lb974,lbab4,lbacb,lbacb
	dw lbacb,lbae8,lbae8,lbafa
	dw lbb0f,lbb27,lbb60,lbb60
	dw lbb60,lbb60,lbb60,lbb60
	dw lbb60,lbb60,lbb60,lbb60
	dw lbb60,lbb60,lbb60,lbb60
	dw lbb60,lbb60
;	dw lmend	; added by Megachur for music end detection
	dw lbff5,#0000
.lb91f
	dw lbb49,lbb6d,lbb60,lbb94
	dw lbb60,lbb94,lbbab,lbbab
	dw lbbab,lbbc8,lbbc8,lbbd9
	dw lbbf2,lbc0a,lba54,lba54
	dw lba54,lba54,lba54,lba54
	dw lba54,lba54,lba54,lba54
	dw lba54,lba54,lba54,lba54
	dw lba54,lba54
;	dw lmend	; added by Megachur for music end detection
	dw lbff5,#0000
.lb95f
	db #88,#02,#04,#82,#c0,#8a,#db,#21
	db #51,#47,#e5,#35,#f1,#41,#e5,#35
.lb974 equ $ + 5
	db #f1,#45,#ff,#35,#87,#e1,#8b,#c0
	db #df,#00,#11,#06,#01,#de,#00,#11
	db #06,#04,#dd,#00,#11,#06,#08,#dc
	db #00,#11,#06,#0c,#db,#00,#11,#06
	db #11,#da,#00,#11,#06,#16,#d9,#00
	db #11,#06,#1a,#d7,#00,#11,#06,#f1
.lb9a1 equ $ + 2
	db #1f,#87,#88,#01,#02,#82,#c0,#8a
	db #d8,#21,#51,#47,#f7,#46,#d6,#21
	db #51,#47,#f7,#46,#d4,#21,#51,#47
	db #f7,#46,#d2,#21,#51,#45,#ff,#46
.lb9c0 equ $ + 1
	db #87,#88,#01,#02,#82,#c0,#8a,#db
	db #21,#51,#47,#e5,#46,#f1,#48,#e5
	db #22,#f1,#24,#e5,#16,#f9,#18,#87
.lb9d7
	db #88,#01,#01,#82,#c0,#8a,#e3,#d9
	db #21,#51,#47,#59,#d7,#21,#51,#47
	db #59,#d5,#21,#51,#47,#59,#f3,#d3
.lb9f4 equ $ + 5
	db #21,#51,#47,#59,#87,#88,#02,#04
	db #82,#ce,#8a,#db,#21,#41,#47,#e5
.lba04 equ $ + 5
	db #44,#3e,#f3,#33,#87,#88,#02,#04
	db #82,#c0,#8a,#db,#21,#41,#47,#e3
	db #42,#3d,#eb,#41,#e7,#85,#13,#85
.lba19 equ $ + 2
	db #13,#87,#88,#01,#01,#82,#c0,#8a
	db #db,#21,#51,#47,#e9,#4d,#4a,#f3
	db #48,#88,#01,#02,#82,#e9,#41,#3e
.lba32 equ $ + 3
	db #f3,#3c,#87,#88,#01,#01,#82,#c0
	db #8a,#db,#21,#71,#47,#e4,#48,#4f
	db #e9,#4d,#e4,#48,#4f,#e9,#4d,#88
	db #01,#02,#e4,#3c,#43,#e9,#41,#e4
.lba54 equ $ + 5
	db #3c,#43,#e9,#41,#87,#88,#01,#02
	db #82,#c0,#8a,#df,#00,#11,#07,#e1
	db #11,#11,#8c,#11,#8a,#11,#11,#8c
	db #11,#8a,#11,#8c,#11,#8a,#11,#11
.lba76 equ $ + 7
	db #11,#11,#11,#11,#11,#11,#87,#88
	db #02,#04,#82,#c0,#8a,#db,#21,#51
	db #47,#e1,#80,#f5,#3a,#e1,#80,#f5
.lba8d equ $ + 6
	db #3d,#e1,#80,#fd,#3a,#87,#88,#01
	db #02,#82,#c0,#8a,#d8,#21,#51,#47
	db #e1,#80,#f5,#4e,#d6,#21,#51,#47
	db #e1,#80,#f5,#4e,#d4,#21,#51,#47
	db #e1,#80,#f5,#4e,#d2,#21,#51,#45
.lbab4 equ $ + 5
	db #e1,#80,#fd,#4e,#87,#88,#01,#02
	db #82,#c0,#8a,#db,#21,#51,#47,#e1
	db #80,#f5,#45,#e1,#80,#f5,#21,#e1
.lbacb equ $ + 4
	db #80,#fd,#15,#87,#88,#01,#01,#82
	db #c0,#8a,#e3,#d9,#21,#51,#47,#5a
	db #d7,#21,#51,#47,#5a,#d5,#21,#51
	db #47,#5a,#f3,#d3,#21,#51,#47,#5a
.lbae8 equ $ + 1
	db #87,#88,#02,#04,#82,#ce,#8a,#db
	db #21,#41,#47,#e1,#80,#e5,#43,#38
.lbafa equ $ + 3
	db #f1,#32,#87,#88,#02,#04,#82,#c0
	db #8a,#db,#21,#41,#47,#e3,#46,#42
	db #eb,#45,#e7,#85,#17,#85,#17,#87
.lbb0f
	db #88,#01,#01,#82,#c0,#8a,#db,#21
	db #51,#47,#e9,#50,#4f,#f3,#4b,#88
	db #01,#02,#e9,#44,#43,#f3,#3f,#87
.lbb27
	db #88,#01,#01,#82,#c0,#8a,#db,#21
	db #71,#47,#e4,#4b,#52,#e9,#50,#e4
	db #4c,#53,#e9,#51,#88,#01,#02,#e4
	db #3f,#46,#e9,#44,#e4,#40,#47,#e9
.lbb49 equ $ + 2
	db #45,#87,#88,#02,#04,#82,#c0,#8a
	db #db,#21,#51,#47,#e3,#80,#f3,#42
	db #e3,#80,#f3,#46,#e3,#80,#fb,#41
.lbb60 equ $ + 1
	db #87,#88,#01,#02,#82,#8a,#d7,#00
.lbb6d equ $ + 6
	db #f1,#01,#ff,#c0,#5e,#87,#88,#01
	db #02,#82,#c0,#8a,#d8,#21,#51,#47
	db #e3,#80,#f3,#4d,#d6,#21,#51,#47
	db #e3,#80,#f3,#4d,#d4,#21,#51,#47
	db #e3,#80,#f3,#4d,#d2,#21,#51,#45
.lbb94 equ $ + 5
	db #e3,#80,#fb,#4d,#87,#88,#01,#02
	db #82,#c0,#8a,#db,#21,#51,#47,#e3
	db #80,#f3,#49,#e3,#80,#f3,#25,#e3
.lbbab equ $ + 4
	db #80,#fb,#19,#87,#88,#01,#01,#82
	db #c0,#8a,#e3,#d9,#21,#51,#47,#5b
	db #d7,#21,#51,#47,#5b,#d5,#21,#51
	db #47,#5b,#f3,#d3,#21,#51,#47,#5b
.lbbc8 equ $ + 1
	db #87,#88,#02,#04,#82,#ce,#8a,#db
	db #21,#41,#47,#e3,#80,#e5,#3f,#f5
.lbbd9 equ $ + 2
	db #37,#87,#88,#01,#01,#82,#c0,#8a
	db #dd,#00,#51,#07,#e3,#cb,#4e,#cc
	db #49,#eb,#cb,#4d,#c0,#e7,#85,#1a
.lbbf2 equ $ + 3
	db #85,#1a,#87,#88,#01,#01,#82,#c0
	db #8a,#db,#21,#51,#47,#e9,#54,#52
	db #f3,#4f,#88,#01,#01,#e9,#48,#46
	db #f3,#43,#87
.lbc0a
	db #88,#01,#01,#82,#c0,#8a,#df,#00
	db #81,#08,#f3,#5c,#5b,#5c,#5b,#87
.lbc1a
	dw lbc40,lbc40,lbc60,lbc60
	dw lbc7c,lbc7c,lbc40,lbc40
;	dw lmend	; added by Megachur for music end detection
	dw #0000
.lbc2c
	dw lbc98,lbcb4,lbcd0,lbcec
	dw #0000
.lbc36
	dw lbd08,lbd18,lbd08,lbd18
	dw #0000
.lbc40
	db #88,#01,#02,#e1,#82,#df,#00,#11
	db #04,#c0,#8a,#1e,#1e,#8b,#8d,#27
	db #8a,#1e,#1e,#1e,#8b,#8d,#33,#dc
	db #00,#11,#04,#81,#8c,#c4,#4e,#87
.lbc60
	db #82,#df,#00,#11,#04,#c0,#8a,#17
	db #17,#8b,#8d,#27,#8a,#17,#17,#17
	db #8b,#8d,#33,#dc,#00,#11,#04,#81
	db #8c,#c4,#53,#87
.lbc7c
	db #82,#df,#00,#11,#04,#c0,#8a,#1c
	db #1c,#8b,#8d,#27,#8a,#1c,#1c,#1c
	db #8b,#8d,#33,#dc,#00,#11,#04,#81
	db #8c,#c4,#4c,#87
.lbc98
	db #88,#01,#02,#82,#8a,#dd,#00,#12
	db #04,#e1,#cd,#42,#42,#42,#42,#42
	db #42,#42,#42,#42,#42,#42,#42,#42
	db #42,#42,#42,#87
.lbcb4
	db #88,#01,#02,#82,#8a,#dd,#00,#12
	db #04,#e1,#ca,#44,#44,#44,#44,#44
	db #44,#44,#44,#44,#44,#44,#44,#44
	db #44,#44,#44,#87
.lbcd0
	db #88,#01,#02,#82,#8a,#dd,#00,#12
	db #04,#e1,#cd,#40,#40,#40,#40,#40
	db #40,#40,#40,#40,#40,#40,#40,#40
	db #40,#40,#40,#87
.lbcec
	db #88,#02,#02,#82,#8a,#dd,#00,#12
	db #04,#e1,#cc,#3d,#3d,#3d,#3d,#3d
	db #3d,#3d,#3d,#3d,#3d,#3d,#3d,#3d
	db #3d,#3d,#3d,#87
.lbd08
	db #88,#01,#01,#82,#ce,#e7,#8a,#da
	db #51,#21,#36,#53,#52,#51,#50,#87
.lbd18
	db #53,#52,#50,#4e,#87
.lbd1d
	dw lbd51,lbd51,lbd51,lbd6b
	dw lbd6b,lbd6b,#0000
.lbd2b
	dw lbd7b,#0000
.lbd2f
	dw lbff8,lbd88,lbd9f,lbdaf
	dw lbdbf,lbd9f,lbdcf,lbddf
	dw lbffb,lbd88,lbd9f,lbdaf
	dw lbdbf,lbd9f,lbdcf,lbddf
;	dw lmend	; added by Megachur for music end detection
	dw #0000
.lbd51
	db #88,#02,#04,#82,#e1,#df,#00,#12
	db #02,#c0,#8a,#1a,#26,#8b,#8d,#33
	db #8a,#26,#1a,#8c,#8d,#27,#8a,#1a
.lbd6b equ $ + 2
	db #26,#87,#8a,#0e,#1a,#8b,#8d,#33
	db #8a,#1a,#0e,#8c,#8d,#27,#8a,#0e
.lbd7b equ $ + 2
	db #1a,#87,#88,#01,#02,#82,#8a,#d8
.lbd88 equ $ + 7
	db #00,#f1,#01,#ef,#c9,#4a,#87,#88
	db #01,#01,#82,#8a,#c9,#e1,#de,#00
	db #11,#08,#3e,#dd,#00,#11,#08,#3e
.lbd9f equ $ + 6
	db #dc,#00,#11,#08,#3e,#87,#de,#00
	db #11,#08,#39,#dd,#00,#11,#08,#39
.lbdaf equ $ + 6
	db #dc,#00,#11,#08,#39,#87,#de,#00
	db #11,#08,#3a,#dd,#00,#11,#08,#3a
.lbdbf equ $ + 6
	db #dc,#00,#11,#08,#3a,#87,#de,#00
	db #11,#08,#37,#dd,#00,#11,#08,#37
.lbdcf equ $ + 6
	db #dc,#00,#11,#08,#37,#87,#de,#00
	db #11,#08,#31,#dd,#00,#11,#08,#31
.lbddf equ $ + 6
	db #dc,#00,#11,#08,#31,#87,#de,#00
	db #11,#08,#32,#dd,#00,#11,#08,#32
	db #dc,#00,#11,#08,#32,#db,#00,#11
	db #08,#32,#da,#00,#11,#08,#32,#d9
	db #00,#11,#08,#32,#87
.lbdfe
	dw lbe0a,#0000
.lbe02
	dw lbe38,#0000
.lbe06
	dw lbe65,#0000
.lbe0a
	db #88,#01,#01,#82,#8a,#c0,#e1,#df
	db #00,#11,#08,#4f,#4f,#4d,#4d,#4b
	db #4b,#48,#48,#43,#43,#41,#41,#3f
	db #3f,#3c,#3c,#2b,#2b,#29,#29,#27
	db #27,#24,#24,#df,#00,#91,#05,#ef
	db #84,#14,#18,#2b,#8e,#87
.lbe38
	db #88,#01,#01,#82,#8a,#c0,#e1,#df
	db #00,#11,#08,#52,#52,#50,#50,#4f
	db #4f,#4b,#4b,#46,#46,#44,#44,#43
	db #43,#3f,#3f,#2e,#2e,#2c,#2c,#2b
	db #2b,#27,#27,#df,#00,#91,#05,#ef
	db #84,#14,#18,#24,#87
.lbe65
	db #88,#01,#01,#82,#8a,#c0,#e1,#df
	db #00,#11,#08,#54,#54,#54,#54,#54
	db #54,#54,#54,#48,#48,#48,#48,#48
	db #48,#48,#48,#30,#30,#30,#30,#30
	db #30,#30,#30,#df,#00,#71,#05,#ef
	db #84,#14,#18,#18,#87
.lbe92
	dw lbe9e,#0000
.lbe96
	dw lbebd,#0000
.lbe9a
	dw lbee0,#0000
.lbe9e
	db #88,#01,#01,#82,#8a,#c0,#e1,#dd
	db #00,#11,#07,#24,#24,#26,#26,#28
	db #28,#29,#29,#2b,#2b,#2d,#2f,#df
	db #00,#11,#02,#e7,#30,#8e,#87
.lbebd
	db #88,#01,#01,#82,#8a,#e1,#df,#00
	db #11,#07,#c8,#30,#30,#c2,#37,#37
	db #c1,#39,#39,#c8,#35,#35,#37,#37
	db #c6,#35,#37,#df,#00,#11,#02,#e7
	db #c8,#3c,#87
.lbee0
	db #88,#01,#01,#82,#8a,#c0,#e1,#dd
	db #00,#11,#07,#3c,#3c,#3e,#3e,#40
	db #40,#41,#41,#43,#43,#45,#47,#df
	db #00,#11,#02,#e7,#48,#87
.lbefe
	dw lbf0a,#0000
.lbf02
	dw lbf22,#0000
.lbf06
	dw lbf39,#0000
.lbf0a
	db #88,#02,#02,#82,#8a,#c0,#df,#00
	db #11,#05,#e2,#31,#30,#31,#e8,#30
	db #e2,#2c,#2b,#2c,#e8,#2b,#8e,#87
.lbf22
	db #88,#02,#02,#82,#8a,#c0,#df,#00
	db #11,#05,#e2,#34,#33,#34,#e8,#33
	db #e2,#2f,#2e,#2f,#e8,#2e,#87
.lbf39
	db #88,#02,#02,#82,#8a,#c0,#df,#00
	db #11,#05,#e2,#38,#37,#38,#e8,#37
	db #e2,#27,#26,#27,#e8,#26,#87
.lbf50
	dw lbf5c,#0000
.lbf54
	dw lbf71,#0000
.lbf58
	dw lbf85,#0000
.lbf5c
	db #88,#01,#01,#82,#8a,#c0,#df,#00
	db #41,#05,#e3,#3f,#e1,#3e,#3f,#3e
	db #3f,#e7,#3c,#8e,#87
.lbf71
	db #88,#01,#01,#82,#8a,#c0,#df,#00
	db #41,#05,#e3,#44,#e1,#43,#44,#43
	db #44,#e7,#43,#87
.lbf85
	db #88,#01,#01,#82,#8a,#c0,#df,#00
	db #21,#06,#e3,#43,#e1,#44,#45,#46
	db #47,#e7,#c9,#48,#87
.lbf9a
	dw lbfa6,#0000
.lbf9e
	dw lbfc1,#0000
.lbfa2
	dw lbfdb,#0000
.lbfa6
	db #88,#01,#01,#82,#8a,#c0,#df,#00
	db #11,#08,#e1,#3c,#48,#3c,#48,#3c
	db #48,#3c,#48,#3c,#48,#3c,#48,#ef
.lbfc1 equ $ + 3
	db #3b,#8e,#87,#88,#01,#01,#82,#8a
	db #c0,#df,#00,#11,#08,#e1,#3f,#4b
	db #3f,#4b,#3f,#4b,#3f,#4b,#3f,#4b
.lbfdb equ $ + 5
	db #3f,#4b,#ef,#47,#87,#88,#01,#01
	db #82,#8a,#c0,#df,#00,#12,#04,#e1
	db #54,#54,#54,#54,#54,#54,#54,#54
	db #54,#54,#54,#54,#ef,#53,#87
.lbff5
	db #ef,#90,#93
.lbff8
	db #50,#77,#87
.lbffb
	db #89,#0c,#87

; #7a4b	- play music
;
; call #b42a
; ld a,(#b866)
; or a
; call z,#9385
; ret

; #9385
; ld a,(#9384)
; ld (#9384),a
; and #07
; call #b373
; ret
;.lmend
;	db &8e,&87
;
.music_info
	db "Amaurote (1987)(Mastertronic)(David Whittaker)",0
	db "",0

	read "music_end.asm"
