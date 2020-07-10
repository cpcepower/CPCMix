; Music of Raster Runner (1990) Mastertronic)(Jason C. Brooke)()
; Ripped by Megachur the 19/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RASTERRU.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #b67a
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

.lb67a
	db #00,#00,#00,#91,#e7,#77,#bc,#bb
	db #bc,#ea,#ee,#0a,#ba,#ba,#bb,#02
	db #02,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb6c1 equ $ + 7
.lb6c0 equ $ + 6
.lb6bf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.play_music
;
	sub a
.lb6c4 equ $ + 1
.music_end equ $ + 1
	cp #ff
	jr z,lb701
	ld b,a
	ld hl,lb7e5
	dec (hl)
	jr nz,lb6dd
.lb6cf equ $ + 1
	ld (hl),#04
	ld ix,lb67a
	call lb872
	call lb870
	call lb870
.lb6de equ $ + 1
.lb6dd
	ld a,#00
	ld (lba3a),a
	ld ix,lb67a
	ld bc,lba3c
	call lb8f4
	ld (lba34),hl
	ld bc,lba3d
	call lb8f2
	ld (lba36),hl
	ld bc,lba3e
	call lb8f2
	ld (lba38),hl
.lb701
	sub a
	cp #00
	jr z,lb726
	ld hl,lba3d
	ld (hl),#0b
.lb70c equ $ + 1
	ld hl,#0080
	ld de,#fff9
	add hl,de
	jr c,lb717
	ld hl,#0080
.lb717
	ld (lb70c),hl
	ld de,#0038
	add hl,de
	ld (lba36),hl
	ld hl,lb6c0
	res 0,(hl)
.lb726
	sub a
.lb728 equ $ + 1
	cp #00
	jr z,lb78c
	ld hl,lb7e2
	dec (hl)
	jr nz,lb739
	ld (lba3e),a
	ld (lb728),a
	jr lb78c
.lb739
	ld de,(lb7e0)
	ld a,(lb7d9)
	or a
	jr z,lb759
	ld hl,lb7e4
	dec (hl)
	jr nz,lb759
	ld (hl),a
	ld hl,lb7da
	rrc (hl)
	ld hl,(lb7db)
	jr c,lb757
	ld hl,(lb7dd)
.lb757
	add hl,de
	ex de,hl
.lb759
	ld hl,(lb7d4)
	add hl,de
	ld a,(lb7d8)
	or a
	jr z,lb770
	ex de,hl
.lb766 equ $ + 2
	ld hl,lb7e3
	dec (hl)
	jr nz,lb76f
	ld (hl),a
	ld de,(lb7d6)
.lb76f
	ex de,hl
.lb770
	ld (lb7e0),hl
	ld a,#10
	ld (lba3e),a
	ld (lba38),hl
	ld a,l
	ld hl,lb7df
	rrc (hl)
	ld hl,lb6c1
	res 0,(hl)
	jr nc,lb78c
	inc (hl)
	ld (lba3a),a
.lb78c
	ld hl,lb6bf
	ld a,(hl)
	inc hl
	rra
	sbc a
	and #09
	ld c,a
	ld a,(hl)
	inc hl
	rra
	sbc a
	and #12
	or c
	ld c,a
	ld a,(hl)
	rra
	sbc a
	and #24
	or c
	xor #38
	ld (lba3b),a
	sub a
.lb7ab equ $ + 1
	cp #00
	ld hl,lba40
	ld c,a
	ld de,#0cf6
	jr z,lb7ba
	inc d
	inc l
	ld (lb7ab),a
.lb7ba
	ld a,#c0
.lb7bc
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
	jp p,lb7bc
	ret
.lb7db equ $ + 7
.lb7da equ $ + 6
.lb7d9 equ $ + 5
.lb7d8 equ $ + 4
.lb7d6 equ $ + 2
.lb7d4
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb7e3 equ $ + 7
.lb7e2 equ $ + 6
.lb7e0 equ $ + 4
.lb7df equ $ + 3
.lb7dd equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb7e5 equ $ + 1
.lb7e4
	db #00,#01,#dd,#79,#3d,#6d,#70,#17
	db #4f,#78,#02,#2f
	ld hl,lb701
	ex (sp),hl
;
.stop_music
;
	sub a
	ld (lb6c4),a
	ld (lba3c),a
	ld (lba3d),a
	ld (lba3e),a
	ret
	ld c,(ix+#0f)
	ld l,(ix+#09)
	ld h,(ix+#0c)
	add hl,bc
	ld a,(hl)
	inc l
	or (hl)
	jr nz,lb814
	sbc hl,bc
	ld c,b
.lb814
	ld d,(hl)
	dec l
	ld e,(hl)
	inc c
	inc c
	ld (ix+#0f),c
	jr lb885
	ld a,(de)
	inc de
	ld (ix+#42),a
	jr lb885
	ld a,(de)
	inc de
	ld (ix+#12),b
	ld (ix+#15),b
	ld (ix+#1e),a
	set 2,(ix+#00)
	ld a,(de)
	inc de
	ld (ix+#21),a
	jr lb885
	ld a,(de)
	inc de
	ld (ix+#3c),a
	ld a,(de)
	inc de
	add a
	ld (ix+#39),a
	ld c,#40
	jr nc,lb84c
	ld c,#50
.lb84c
	srl a
	ld (ix+#3f),a
	ld (ix+#00),c
	jr lb885
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lb885
	ld (ix+#00),b
	jr lb885
	ld a,(de)
	inc de
	ld (lb9af),a
	set 1,(ix+#00)
	jr lb885
.lb870
	inc ix
.lb872
	dec (ix+#24)
	ld a,(ix+#00)
	jr nz,lb8b5
	and #70
	ld (ix+#00),a
	ld e,(ix+#03)
	ld d,(ix+#06)
.lb885
	ld a,(de)
	inc de
	cp #b0
	jr c,lb8a9
	add #20
	jr c,lb89e
	add #20
	jr c,lb8a4
	ld c,a
	ld hl,lba80
	add hl,bc
	ld c,(hl)
	ld (ix+#18),c
	jr lb885
.lb89e
	inc a
	ld (ix+#27),a
	jr lb885
.lb8a4
	ld (ix+#36),a
	jr lb885
.lb8a9
	or a
	jp p,lb8c9
	ld c,a
	ld hl,lb766
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb8b5
	bit 3,a
	ret z
	add a
	sbc a
	or #01
	add (ix+#2a)
	ld (ix+#2a),a
	ret
	ld (ix+#33),#f0
	jr lb8e5
.lb8c9
	ld (ix+#2a),a
	ld (ix+#33),b
	ld (ix+#30),b
	ld c,(ix+#18)
	ld (ix+#1b),c
	ld c,b
	sub #54
	jr c,lb8e2
	ld c,#02
	ld (lb6de),a
.lb8e2
	ld (ix+#45),c
.lb8e5
	ld a,(ix+#27)
	ld (ix+#24),a
	ld (ix+#06),d
	ld (ix+#03),e
	ret
.lb8f2
	inc ix
.lb8f4
	ld d,#00
	ld a,(ix+#33)
	cp #f0
	jr nc,lb918
	sub #10
	ld (ix+#33),a
	jr nc,lb918
	ld hl,lbb83
	ld e,(ix+#36)
	add hl,de
	ld a,(hl)
	add (ix+#30)
	ld e,a
	add hl,de
	ld a,(hl)
	inc (ix+#30)
	ld (ix+#33),a
.lb918
	and #0f
	ld (bc),a
	ld hl,lbb76
	ld e,(ix+#1b)
	inc e
	add hl,de
	ld a,(hl)
	or a
	jp p,lb92d
	ld e,(ix+#18)
	and #7f
.lb92d
	ld (ix+#1b),e
	add (ix+#2a)
	add (ix+#42)
	add a
	ld hl,lba42
	ld e,a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld c,(ix+#00)
	bit 6,c
	jr z,lb974
	ld b,(ix+#39)
	ld a,c
	cpl
	and #11
	ld a,(ix+#3f)
	jr z,lb96c
	bit 5,c
	jr nz,lb960
	sub (ix+#3c)
	jr nc,lb969
	set 5,c
	sub a
	jr lb969
.lb960
	add (ix+#3c)
	cp b
	jr c,lb969
	res 5,c
	ld a,b
.lb969
	ld (ix+#3f),a
.lb96c
	srl b
	sub b
	ld l,a
	sbc a
	ld h,a
	add hl,de
	ex de,hl
.lb974
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lb99f
	ld b,(ix+#21)
	djnz lb99c
	ld c,(ix+#1e)
	bit 7,c
	jr z,lb98b
	dec b
.lb98b
	ld l,(ix+#12)
	ld h,(ix+#15)
	add hl,bc
	ld (ix+#12),l
	ld (ix+#15),h
	add hl,de
	ex de,hl
	jr lb99f
.lb99c
	ld (ix+#21),b
.lb99f
	cpl
	and #03
	ld a,(ix+#45)
	ld c,a
	res 0,c
	rra
	jr nz,lb9b2
	ld hl,lba3a
.lb9af equ $ + 1
	ld (hl),#10
	or #01
.lb9b2
	or c
	ld (ix+#45),a
	ex de,hl
	ret
	add a
	ld c,a
	add a
	add a
	ld b,#00
	ld hl,lbf39
	add hl,bc
	ld c,a
	add hl,bc
	add hl,bc
	ld de,lb7d4
	ld c,#0f
	sub a
	ld (lb728),a
	ldir
	ld c,#03
	ld de,lba3f
	ldir
	ld hl,(lb7d8)
	ld (lb7e3),hl
	ld a,#01
	ld (lb728),a
	ld (lb7ab),a
	ret
;
.init_music
;
	ld c,a
	ld b,#00
	add a
	add c
	add a
	add c
	ld c,a
	ld hl,lbbd2
	add hl,bc
	ld a,(hl)
	inc hl
	ld (lb6cf),a
	ld ix,lb67a
	sub a
	ld (lb6c4),a
	inc a
	ld (lb7e5),a
	ld a,#02
.lba05
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#24),#01
	ld (ix+#00),b
	ld (ix+#42),b
	ld (ix+#09),e
	ld (ix+#0c),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#0f),#02
	pop hl
	ld (ix+#03),e
	ld (ix+#06),d
	inc ix
	dec a
	jp p,lba05
	ld (lb6c4),a
	ret
.lba3a equ $ + 7
.lba38 equ $ + 5
.lba36 equ $ + 3
.lba34 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lba3b
	db #3f
.lba40 equ $ + 4
.lba3f equ $ + 3
.lba3e equ $ + 2
.lba3d equ $ + 1
.lba3c
	db #00,#00,#00,#00,#00,#00
.lba42
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
.lba80 equ $ + 6
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
.lbaee equ $ + 4
.lbaea
	dw lbc91,#0000,lbbe7,lbbe7
	dw lbbe7,lbc01,lbc1a,lbcce
	dw lbcce,lbd26,lbcf0,lbcf0
	dw lbcf0,lbcf0,lbe0e,#0000
.lbb0a
	dw lbc77,lbc77,lbc77,lbc77
	dw lbc77,lbc77,lbc77,lbc77
	dw lbc77,lbc77,lbc77,lbc01
	dw lbcf0,lbcf0,lbcf0,lbcf0
	dw lbcf0,lbcf0,lbcf0,lbcf0
	dw lbda8,lbda8,lbda8,lbda8
	dw lbda8,lbda8,lbda8,lbda8
	dw lbda8,lbda8,lbda8,lbda8
	dw lbda8,lbda8,lbda8,lbda8
	dw lbdd8,lbdd8,#0000
.lbb58
	dw lbe6d,#0000
.lbb5c
	dw lbeac,#0000
.lbb60	
	dw lbecd
.lbb68 equ $ + 6
.lbb64 equ $ + 2
	dw #0000,lbf13,#0000,lbefe
.lbb6c equ $ + 2
	dw #0000,lbef1,#0000
.lbb76 equ $ + 6
	db #00,#01,#05,#09,#0c,#0c,#0c,#80
	db #24,#2e,#28,#ab,#00,#00,#00,#8c
.lbb83 equ $ + 3
	db #00,#07,#84,#10,#10,#18,#1e,#25
	db #27,#2e,#36,#3d,#46,#45,#44,#43
	db #42,#41,#40,#1e,#1c,#1a,#18,#16
	db #15,#14,#13,#12,#f0,#0b,#0a,#09
	db #07,#05,#03,#f0,#2b
	db #2a,#19,#18,#17,#15,#13,#f0,#0b
	db #0a,#f9,#09,#0a,#2b,#3a,#49,#58
	db #67,#f6,#64,#65,#66,#77,#a8,#77
	db #66,#65,#f4,#0c,#0a,#08,#0b,#09
	db #07,#06,#f5,#0a,#05,#09,#05,#08
	db #05,#07,#05
	db #06,#f5
.lbbd2
	db #04
	dw lbaea,lbaee,lbb0a
	db #04
	dw lbb58,lbb5c,lbb60
	db #04
	dw lbb64,lbb68,lbb6c
.lbbe7
	db #ef,#c4,#b0,#86,#02,#02,#82,#06
	db #0c,#3e,#c3,#86,#03,#06,#e3,#1f
	db #1f,#e1,#1f,#1f,#e3,#82,#06,#04
.lbc01 equ $ + 2
	db #1f,#85,#ef,#c4,#86,#02,#02,#82
	db #04,#0c,#3e,#c3,#86,#03,#06,#e3
	db #23,#23,#e1,#23,#24,#e3,#82,#7a
.lbc1a equ $ + 3
	db #04,#26,#85,#c5,#86,#01,#01,#e1
	db #2f,#30,#32,#2e,#2f,#30,#32,#2d
	db #2e,#2f,#2b,#29,#2b,#2d,#29,#26
	db #ff,#82,#7f,#30,#26,#e1,#32,#34
	db #35,#32,#2f,#30,#32,#2d,#2e,#2f
	db #2b,#29,#2b,#2d,#29,#26,#ff,#82
	db #7f,#30,#26,#e1,#2f,#2d,#2b,#2f
	db #2d,#2b,#29,#28,#2b,#29,#28,#26
	db #25,#26,#29,#28,#ff,#82,#7f,#30
	db #26,#e1,#2f,#30,#32,#2e,#2f,#30
	db #32,#2d,#2e,#2f,#2b,#29,#2b,#2d
	db #29,#2b,#ff,#82,#01,#30,#2b,#85
.lbc77
	db #ef,#b0,#c4,#86,#02,#03,#82,#06
	db #0c,#3e,#c3,#86,#02,#06,#e3,#1f
	db #1f,#e1,#1f,#1f,#e3,#82,#06,#04
.lbc91 equ $ + 2
	db #1f,#85,#e1,#b2,#c0,#07,#c1
	db #07,#b1,#07,#b2,#07,#07,#07,#b1
	db #07,#b2,#07,#c0,#07,#c1,#07,#b1
	db #07,#b2,#07,#07,#07,#b1,#07,#b2
	db #07,#c0,#07,#c1,#07,#b1,#07,#b2
	db #07,#07,#07,#b1,#07,#b2,#07,#c0
	db #07,#c1,#07,#b1,#07,#b2,#07,#07
	db #07,#b1,#07,#c2,#e0,#60,#60,#85
.lbcce
	db #c6,#81,#ef,#2f,#e7,#30,#32,#ef
	db #2f,#2b,#29,#e7,#2b,#2d,#ff,#26
	db #ef,#2f,#e7,#30,#32,#ef,#35,#32
	db #37,#e7,#39,#3b,#ff,#82,#02,#40
.lbcf0 equ $ + 2
	db #37,#85,#86,#01,#01,#c3,#e1,#1d
	db #1f,#c2,#59,#c3,#1f,#1d,#1f,#c2
	db #59,#c3,#1f,#1d,#1f,#c2,#59,#c3
	db #1f,#1d,#1f,#c2,#59,#c3,#1f,#1d
	db #1f,#c2,#59,#c3,#1f,#1c,#1d,#c2
	db #59,#c3,#1d,#1a,#1a,#c2,#59,#c3
	db #1a,#1a,#1a,#c2,#59,#c3,#1a,#85
.lbd26
	db #e1,#c8,#30,#32,#2f,#2b,#2d,#2f
	db #2b,#29,#29,#2b,#29,#2b,#e7,#82
	db #03,#08,#26,#e1,#2f,#2d,#2b,#2f
	db #2f,#2b,#29,#2f,#29,#28,#29,#2b
	db #e7,#82,#7d,#08,#29,#e1,#30,#32
	db #2f,#2b,#2d,#2f,#2b,#29,#29,#2b
	db #29,#2b,#e7,#82,#03,#08,#26,#e1
	db #2f,#2d,#2b,#2f,#2f,#2b,#29,#2f
	db #29,#28,#29,#2b,#e7,#82,#7d,#08
	db #29,#e0,#2f,#30,#31,#32,#2f,#30
	db #31,#32,#f7,#82,#03,#18,#35,#e0
	db #2f,#30,#31,#32,#2f,#30,#31,#32
	db #f7,#82,#03,#18,#35,#e0,#2f,#30
	db #31,#32,#2f,#30,#31,#32,#f7,#82
	db #03,#18,#37,#e0,#37,#35,#34,#32
	db #37,#35,#34,#32,#f7,#82,#03,#18
.lbda8 equ $ + 2
	db #2f,#85,#e1,#c2,#86,#03,#02,#87
	db #07,#63,#54,#63,#63,#c0,#82,#1e
	db #01,#1f,#82,#1e,#01,#1f,#e3,#82
	db #14,#01,#1f,#e1,#c2,#87,#07,#63
	db #54,#63,#63,#c0,#82,#1e,#01,#1f
	db #82,#1e,#01,#1f,#e3,#82,#14,#01
.lbdd8 equ $ + 2
	db #1f,#85,#c7,#81,#e1,#29,#2b,#29
	db #2f,#2b,#29,#26,#28,#29,#2b,#29
	db #2f,#2b,#29,#28,#26,#29,#28,#29
	db #26,#2b,#29,#28,#26,#23,#21,#26
	db #24,#2f,#2b,#2d,#2f,#e7,#26,#e1
	db #2b,#29,#2b,#26,#ef,#2b,#e1,#26
	db #29,#28,#26,#e7,#23,#ef,#26,#85
.lbe0e
	db #c7,#81,#e1,#32,#2f,#30,#32,#e3
	db #2f,#2b,#e1,#30,#2f,#30,#32,#e7
	db #2f,#e1,#2f,#30,#2f,#2d,#e3,#2f
	db #2b,#e1,#29,#2b,#2d,#29,#e7,#26
	db #2b,#e3,#2d,#e1,#2f,#30,#ef,#2f
	db #e1,#2d,#e5,#2f,#e3,#29,#26,#ef
	db #2b,#e1,#32,#2f,#30,#32,#e3,#2f
	db #2b,#e1,#30,#2f,#30,#32,#e7,#2f
	db #e1,#2f,#30,#2f,#2d,#e3,#2f,#2b
	db #e1,#29,#2b,#2d,#29,#e7,#26,#2b
	db #e3,#2d,#e1,#2f,#30,#ef,#2f,#e7
.lbe6d equ $ + 7
	db #32,#e3,#35,#37,#ef,#37,#85,#e1
	db #b0,#c0,#0c,#c3,#18,#c2,#5b,#0c
	db #c0,#18,#c5,#0c,#c2,#5b,#c5,#0c
	db #c0,#0c,#c3,#18,#c2,#5b,#0c,#c0
	db #18,#c5,#0c,#c2,#5b,#c5,#0c,#c0
	db #11,#c3,#1d,#c2,#5b,#11,#c0,#1d
	db #c5,#11,#c2,#5b,#c5,#11,#c0,#0c
	db #c3,#18,#c2,#5b,#0c,#c0,#18,#c5
.lbeac equ $ + 6
	db #0c,#c2,#5b,#c5,#13,#85,#c5,#b0
	db #e1,#28,#29,#e7,#2b,#e3,#28,#e7
	db #2b,#28,#29,#2d,#ef,#2b,#e1,#34
	db #32,#e7,#30,#e3,#34,#e7,#30,#2b
.lbecd equ $ + 7
	db #eb,#2d,#e3,#32,#ef,#30,#85,#c2
	db #b3,#e1,#24,#24,#5b,#24,#24,#24
	db #5b,#24,#24,#24,#5b,#24,#24,#24
	db #5b,#24,#29,#29,#5b,#29,#29,#29
	db #5b,#29,#24,#24,#5b,#24,#24,#24
.lbef1 equ $ + 3
	db #5b,#24,#85,#c4,#b0,#86,#01,#01
	db #e7,#23,#24,#ed,#26,#e1,#24,#88
.lbefe
	db #c5,#b0,#e3,#2b,#e1,#2b,#2b,#e3
	db #28,#e1,#2b,#e3,#2b,#2d,#e1,#2b
.lbf13 equ $ + 5
	db #2d,#2b,#2d,#2b,#88,#c0,#86,#01
	db #01,#e1,#b0,#13,#13,#c3,#b3,#2b
	db #c0,#b0,#13,#e1,#b0,#0c,#0c,#c3
	db #b3,#24,#c0,#b0,#0c,#e1,#b0,#0e
	db #0e,#c3,#b3,#26,#c0,#b0,#0e,#c7
.lbf39 equ $ + 3
	db #e7,#0e,#88,#e2,#7f,#00,#00,#14
	db #01,#ab,#e2,#ff,#1e,#00,#ff,#00
	db #00,#50,#34,#21,#09,#1e,#00,#00
	db #00,#14,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#32,#88,#13,#09,#01
	db #00,#0f,#00,#0f,#00,#00,#00,#00
	db #00,#00,#ff,#0d,#00,#64,#b0,#36
	db #09,#01,#00,#10,#00,#10,#01,#55
	db #00,#00,#ff,#ff,#ff,#0f,#00,#30
	db #88,#13,#09,#31,#00,#7f,#00,#05
	db #01,#96,#d3,#7f,#c9,#7f,#00,#7d
	db #00,#32,#ac,#0d,#0d,#ff,#7f,#0d
	db #00,#0a,#00,#00,#00,#00,#00,#00
	db #ff,#0d,#00,#3c,#94,#11,#0d,#fc
	db #7f,#f0,#00,#00,#01,#aa,#d8,#7f
	db #28,#00,#00,#f0,#00,#1e,#88,#13
	db #09,#00,#00,#de,#00,#04,#00,#00
	db #00,#00,#00,#00,#55,#a6,#00,#10
	db #5e,#01,#08,#00,#00,#2c,#01,#03
	db #01,#55,#d6,#7f,#28,#00,#00,#40
	db #01,#14,#d0,#07,#09,#fa,#7f,#dc
	db #00,#14,#00,#00,#00,#00,#00,#00
	db #00,#db,#00,#46,#10,#27,#09,#14
	db #00,#2d,#00,#04,#00,#00,#00,#00
	db #00,#00,#00,#2d,#00,#28,#a0,#0f
	db #09,#de,#30
;
.music_info
	db "Raster Runner (1990) Mastertronic)(Jason C. Brooke)",0
	db "",0

	read "music_end.asm"
