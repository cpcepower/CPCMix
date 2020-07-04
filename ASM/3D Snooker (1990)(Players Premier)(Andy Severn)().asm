; Music of 3D Snooker (1990)(Players Premier)(Sonic Graffiti & Andy Severn)()
; Ripped by Megachur the 26/02/2015
; $VER 1.5

IFDEF FILENAME_WRITE
	write "3DSNOOKE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2015
music_adr				equ #1000

	read "music_header.asm"
	
	jp l1143	; init music
	jp l1226	; play music
.l100a equ $ + 4
.l1009 equ $ + 3
.l1008 equ $ + 2
.l1007 equ $ + 1
.l1006
	db #00,#01,#00,#00,#00,#00,#00,#00
.l1015 equ $ + 7
	db #00,#00,#30,#30,#30,#30,#00,#0f
.l1019 equ $ + 3
.l1018 equ $ + 2
.l1017 equ $ + 1
.l1016
	db #00,#00,#00,#00,#00
.l101b
	ld a,(l1017)
	and a
	ld b,a
	ret z
	ld a,(l1019)
	cp #80
	jp z,l1044
	ld a,(l1018)
	dec a
	ld (l1018),a
	ret nz
	ld a,(l1019)
	ld (l1018),a
	ld a,(l1015)
	add b
	bit 4,a
	jp nz,l1053
	ld (l1015),a
	ret
.l1044
	ld a,b
	cp #01
	ld a,#0f
	jp z,l104d
	xor a
.l104d
	ld (l1015),a
	jp l1053
.l1053
	xor a
	ld (l1017),a
	ld a,(l1016)
	and a
	jp nz,l11f2
	ret
.l105f
	ld a,#00
	ld (l1015),a
	ld a,#01
.l1066
	ld (l1017),a
	inc hl
	ld a,(hl)
	ld (l1019),a
	ld (l1018),a
	inc hl
	jp l15a2
.l1075
	ld a,#0f
	ld (l1015),a
	ld a,#ff
	jp l1066
.l107f
	ld a,h
	push af
	ld c,l
	cp #07
	jp nz,l108b
	res 7,c
	res 6,c
.l108b
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	pop af
	out (c),a
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	out (c),c
	xor a
	ld b,#f6
	out (c),a
	ret
.l10ad equ $ + 7
.l10ac equ $ + 6
.l10a7 equ $ + 1
.l10a6
	db #00,#01,#00,#00,#00,#00,#00,#f8
.l10b3 equ $ + 5
.l10b1 equ $ + 3
.l10b0 equ $ + 2
.l10af equ $ + 1
.l10ae
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
	db #0c,#05,#00,#08,#01,#ff,#00,#00
	db #00,#01,#08,#00,#00,#04,#00,#00
	db #00,#00,#00,#f7,#14,#0a,#01,#00
	db #00,#08,#04,#f1,#19,#01,#f1,#19
	db #00,#0a,#00,#02,#00,#fe,#00,#00
.l10e2 equ $ + 4
.l10e0 equ $ + 2
.l10de
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #01,#01,#02,#01,#ff,#00,#00,#02
	db #03,#09,#00,#00,#01,#00,#00,#00
	db #00,#00,#ef,#ff,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l110d equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1111 equ $ + 3
.l110f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#0f,#0a
	db #01,#02,#02,#ff,#00,#00,#04,#05
	db #0a,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#df,#ff,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l113c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
;
.init_music
.l1143
;
	ld a,#0f
	ld (l1015),a
	xor a
	ld (l1017),a
	ld (l1016),a
	call l11fa
	ld a,(l1009)
	cp #ff
	jp nz,l115e
	inc a
	ld (l1009),a
.l115e
	ld a,#01
	ld (l10b3),a
	ld (l10e2),a
	ld (l1111),a
	xor a
	ld (l1008),a
	push ix
	ld ix,l10b1
	ld a,(l1009)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,l19c9
	add hl,de
	ld (l118f),hl
	inc hl
	inc hl
	ld (l1199),hl
	inc hl
	inc hl
	ld (l11a3),hl
.l118f equ $ + 1
	ld hl,(l19f1)
	call l11c8
	ld ix,l10e0
.l1199 equ $ + 1
	ld hl,(l1a16)
	call l11c8
	ld ix,l110f
.l11a3 equ $ + 1
	ld hl,(l1a19)
	call l11c8
	ld a,#01
	ld (l1007),a
	ld h,#07
	ld l,#f8
	call l107f
	ld a,(l1009)
	cp #01
	pop ix
	ret
.l11bc
	halt
	call l1226
	ld a,(l1007)
	and a
	jp nz,l11bc
	ret
.l11c8
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call l16bf
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ret
.l11f2
	call l11fa
	xor a
	ld (l1007),a
	ret
.l11fa
	ld h,#07
	ld l,#ff
	call l107f
	ld hl,l10a6
	ld de,l10a7
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#f8
	ld (l10ad),a
.l1213
	ld b,#0b
	ld h,#00
	ld de,l10a6
.l121a
	ld a,(de)
	ld l,a
	push bc
	call l107f
	pop bc
	inc h
	inc de
	djnz l121a
	ret
;
.play_music
.l1226
;
	ld a,(l1006)
	and a
	jp z,l1259
	ld b,a
	xor a
	ld (l1006),a
	ld a,b
	cp #ff
	jp z,l11f2
	cp #fe
	jp nz,l1252
;
.stop_music
;
	ld a,#01
	ld (l1016),a
	ld a,#ff
	ld (l1017),a
	ld a,#0a
	ld (l1019),a
	ld (l1018),a
	jp l1259
.l1252
	dec a
	ld (l1009),a
	jp l1143
.l1259
	call l101b
	ld a,(l1007)
	and a
	jr z,l12bb
	push ix
	ld ix,l10b1
	bit 7,(ix+#0c)
	call z,l12bc
	ld ix,l10e0
	bit 7,(ix+#0c)
	call z,l12bc
	ld ix,l110f
	bit 7,(ix+#0c)
	call z,l12bc
	ld a,(l1015)
	cpl
	and #0f
	ld b,a
	ld a,(l1008)
	and a
	ld a,#10
	jp nz,l129d
	ld a,(l10ae)
	sub b
	jp nc,l129d
	xor a
.l129d
	ld (l10ae),a
	ld a,(l10af)
	sub b
	jp nc,l12a8
	xor a
.l12a8
	ld (l10af),a
	ld a,(l10b0)
	sub b
	jp nc,l12b3
	xor a
.l12b3
	ld (l10b0),a
	call l1213
	pop ix
.l12bb
	ret
.l12bc
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l1463
.l12c5
	ld a,(ix+#0c)
	and #03
	jp z,l1385
	cp #01
	jp z,l12df
	cp #02
	jp z,l131f
	cp #03
	jp z,l1369
	jp l13b6
.l12df
	ld a,(ix+#0b)
	and a
	jr z,l12eb
	dec (ix+#0b)
	jp l13b6
.l12eb
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,l130c
	jr nc,l1306
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp l13b6
.l1306
	ld a,(ix+#05)
	ld (ix+#04),a
.l130c
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp l13b6
.l131f
	ld a,(ix+#25)
	and a
	jr z,l132b
	dec (ix+#25)
	jp l13b6
.l132b
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,l134a
	ld b,(ix+#26)
	cp b
	jr z,l1357
	jr c,l1351
	ld a,(ix+#09)
	ld (ix+#25),a
	jr l13b6
.l134a
	ld (ix+#04),#00
	jp l1357
.l1351
	ld a,(ix+#26)
	ld (ix+#04),a
.l1357
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr l13b6
.l1369
	ld a,(ix+#27)
	and a
	jr z,l1374
	dec (ix+#27)
	jr l13b6
.l1374
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp l13b6
.l1385
	ld a,(ix+#29)
	and a
	jr z,l1390
	dec (ix+#29)
	jr l13b6
.l1390
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,l13a6
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr l13b6
.l13a6
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr l13b6
.l13b6
	ld a,(ix+#04)
	ld hl,l10a6
	ld d,#00
	ld e,(ix+#0f)
	add hl,de
	ld (hl),a
	ld h,(ix+#14)
	ld l,(ix+#13)
	ld d,#00
	ld e,(ix+#10)
	add hl,de
	ld a,(ix+#03)
	push af
	ld a,(hl)
	add (ix+#03)
	ld (ix+#03),a
	call l14f6
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,l13f2
	ld a,(ix+#11)
	ld (ix+#10),a
.l13f2
	ld a,(ix+#1a)
	cp #ff
	jr z,l1433
	and a
	jr z,l1401
	dec (ix+#1a)
	jr nz,l1433
.l1401
	dec (ix+#1f)
	jr nz,l1414
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#2e)
	xor #01
	ld (ix+#2e),a
.l1414
	ld b,#00
	ld c,(ix+#1b)
	ld h,(ix+#1d)
	ld l,(ix+#1c)
	bit 0,(ix+#2e)
	jr z,l1428
	add hl,bc
	jr l142a
.l1428
	sbc hl,bc
.l142a
	ld (ix+#1d),h
	ld (ix+#1c),l
	call l144e
.l1433
	ld a,(ix+#2b)
	call l1441
	and a
	call nz,l144e
	ld a,(ix+#02)
	ret
.l1441
	ld l,a
	ld h,#00
	bit 7,a
	ret z
	ld d,h
	ld e,l
	sbc hl,de
	sbc hl,de
	ret
.l144e
	ld b,h
	ld c,l
	ld hl,l10a6
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l1463
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (ix+#10),#00
.l146d
	ld a,(hl)
	cp #60
	jp z,l14f4
	cp #61
	jp z,l15ab
	cp #62
	jp z,l1589
	cp #64
	jp z,l1545
	cp #65
	jp z,l157b
	cp #fa
	jp z,l154e
	cp #fc
	jp z,l105f
	cp #fd
	jp z,l1075
	cp #fe
	jp z,l158d
	cp #ff
	jp z,l1573
	ld b,a
	ld a,(ix+#0c)
	and #fc
	or #01
	ld (ix+#0c),a
	ld a,b
	sub (ix+#2d)
	ld (ix+#03),a
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1e)
	srl a
	ld (ix+#1f),a
	ld (ix+#1d),#00
	ld (ix+#1c),#00
.l14c8
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(l100a)
	add hl,de
	ld a,(hl)
	pop hl
	inc hl
	ld b,(ix+#2c)
	add b
	ld (ix+#2c),#00
	ld (ix+#02),a
	ld a,(ix+#07)
	ld (ix+#0b),a
	ld (ix+#00),l
	ld (ix+#01),h
	call l14f6
	jp l12c5
.l14f4
	jr l14c8
.l14f6
	ld a,(ix+#17)
	and a
	call nz,l153a
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,l171e
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l10a6
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(l1008)
	and a
	ret z
	ld a,(ix+#0f)
	cp #08
	ret nz
	ld de,#00c0
	add hl,de
	ex de,hl
	ld h,#0b
	ld a,(de)
	ld l,a
	call l107f
	inc de
	inc h
	ld a,(de)
	ld l,a
	call l107f
	ret
.l153a
	ld a,(ix+#03)
	neg
	and #1f
	ld (l10ac),a
	ret
.l1545
	inc hl
	ld a,(hl)
	inc hl
	ld (l10ac),a
	jp l15a2
.l154e
	inc hl
	ld (ix+#2e),#01
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	bit 7,a
	jp z,l1564
	neg
	ld (ix+#2e),#00
.l1564
	ld (ix+#1b),a
	ld (ix+#1e),#ff
	ld (ix+#1f),#ff
	inc hl
	jp l15a2
.l1573
	inc hl
	ld (ix+#04),#00
	jp l15a2
.l157b
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call l107f
	pop hl
	jp l15a2
.l1589
	inc hl
	jp l15a2
.l158d
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,l159c
	jp l16b1
	jp l146d
.l159c
	ld l,(ix+#15)
	ld h,(ix+#16)
.l15a2
	ld (ix+#01),h
	ld (ix+#00),l
	jp l146d
.l15ab
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	add a
	ld h,#00
	ld l,a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l188e
	add hl,de
	ld d,#00
	add b
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	ld (ix+#2a),a
	inc hl
	ld a,(hl)
	ld (ix+#28),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld (ix+#14),h
	ld (ix+#13),l
	ld (ix+#10),#00
	ld de,#0010
	add hl,de
	ld a,(hl)
	ld (ix+#17),#00
	and a
	jp z,l1636
	ld b,a
	or #c0
	ld (l10ad),a
	ld a,b
	bit 7,a
	jp z,l1636
	cpl
	and #38
	ld (ix+#17),a
.l1636
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,l1652
	ld a,(hl)
	ld (l1008),a
	and a
	jp z,l1652
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call l107f
	pop hl
.l1652
	pop hl
	jp l146d
.l1656
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,l186e
	add hl,de
	ld (l100a),hl
	pop hl
	jp l16c5
.l166b
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2c),a
	jp l16c5
.l1674
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2b),a
	jp l16c5
.l167d
	inc hl
	ld a,(hl)
	inc hl
	ld (l10de),a
	ld (l110d),a
	ld (l113c),a
	jp l16c5
.l168c
	inc hl
	ld b,(hl)
	inc hl
	ld a,(ix+#2d)
	add b
	ld (ix+#2d),a
	jp l16c5
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,l12c5
	call l11f2
	jp l12c5
.l16b1
	call l16bf
	jp l1463
.l16b7
	pop bc
	jp l11f2
.l16bb
	pop bc
	jp l1143
.l16bf
	ld l,(ix+#20)
	ld h,(ix+#21)
.l16c5
	ld a,(hl)
	cp #f8
	jp z,l166b
	cp #f9
	jp z,l1674
	cp #fa
	jp z,l168c
	cp #fb
	jp z,l167d
	cp #fc
	jp z,l1656
	cp #fd
	jp z,l16bb
	cp #fe
	jr z,l1712
	cp #ff
	jr z,l16b7
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l19cf
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#15),e
	ld (ix+#16),d
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ret
.l1712
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr l16c5
.l171e equ $ + 4
	db #00,#00,#00,#00,#00,#00
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04d4
	dw #0470,#0431,#03f4,#03dc
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
	dw #0012,#0011,#0010
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #6a,#00,#64,#00,#5e,#00,#5a,#00
	db #54,#00,#4f,#00,#4a,#00,#47,#00
	db #43,#00,#3f,#00,#3b,#00,#38,#00
	db #35,#00,#32,#00,#2f,#00,#2d,#00
	db #2a,#00,#28,#00,#25,#00,#23,#00
	db #21,#00,#20,#00,#1e,#00,#1c,#00
	db #1b,#00,#19,#00,#18,#00,#16,#00
	db #15,#00,#14,#00,#13,#00,#12,#00
	db #11,#00,#10,#00,#0f,#00,#0e,#00
	db #0d,#00,#0c,#00,#0b,#00,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l186e
	db #02,#04,#06,#08,#0a,#0c,#0e,#10
	db #12,#14,#16,#18,#1a,#1c,#1e,#20
	db #22,#24,#26,#28,#2a,#2c,#2e,#30
	db #32,#34,#36,#38,#3a,#3c,#3e,#40
.l188e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#ff,#00,#00,#00,#01,#00,#0c
	db #00,#0c,#00,#00,#18,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#00,#ff
	db #0c,#04,#00,#fe,#ff,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #0f,#00,#fe,#0d,#01,#00,#fe,#ff
	db #00,#00,#03,#06,#00,#fc,#f4,#f4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#e8,#00,#00,#00
	db #00,#00,#0f,#03,#00,#ff,#0c,#05
	db #07,#ff,#09,#01,#02,#00,#01,#f4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0f,#0f,#00
	db #00,#0f,#00,#00,#fc,#01,#14,#64
	db #03,#04,#00,#fc,#f8,#f4,#e8,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#b8,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#05
	db #00,#ff,#0c,#05,#03,#ff,#09,#01
	db #02,#00,#01,#f4,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0c,#06,#00,#fe,#0a,#00,#00
	db #fc,#ff,#00,#00,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ea,#00
	db #00,#00,#00
.l19cf equ $ + 6
.l19c9
	dw l19f1,l1a16,l1a19,l1a40
	dw #0000,#0000,#0000,l1a45
	dw l1a5c,l1a8d,l1aa5,l1ada
	dw l1b3f,#0000,#0000,#0000
	dw #0000,#0000,#0000,l1b59
.l19f1
	db #fc,#00,#fb,#0c,#06,#02,#07,#01
	db #fa,#fb,#08,#01,#06,#02,#07,#01
	db #08,#01,#fa,#05,#07,#01,#fa,#fb
	db #08,#01,#04,#02,#fa,#02,#04,#02
.l1a16 equ $ + 5
	db #fa,#02,#10,#01,#fe,#05,#ff,#fe
.l1a19
	db #04,#04,#fa,#fb,#04,#04,#06,#01
	db #09,#01,#06,#01,#09,#01,#06,#01
	db #09,#01,#06,#01,#09,#01,#fa,#05
	db #04,#02,#fa,#fb,#04,#06,#fa,#02
.l1a40 equ $ + 7
	db #04,#02,#fa,#03,#04,#04,#fe,#61
.l1a45 equ $ + 4
	db #00,#60,#10,#fe,#61,#01,#25,#06
	db #25,#03,#29,#09,#2c,#09,#2e,#09
	db #31,#06,#31,#03,#2e,#09,#2c,#09
.l1a5c equ $ + 3
	db #29,#09,#fe,#61,#04,#25,#06,#61
	db #08,#49,#03,#49,#06,#49,#03,#61
	db #02,#2e,#06,#61,#08,#49,#03,#49
	db #06,#49,#03,#61,#04,#25,#06,#61
	db #08,#49,#03,#49,#06,#49,#03,#61
	db #02,#2e,#06,#61,#08,#49,#03,#49
.l1a8d equ $ + 4
	db #06,#49,#03,#fe,#61,#00,#25,#06
	db #25,#03,#29,#09,#2c,#09,#2e,#09
	db #31,#06,#31,#03,#2e,#09,#2c,#09
.l1aa5 equ $ + 4
	db #29,#09,#fe,#fe,#61,#07,#44,#06
	db #44,#10,#60,#10,#60,#04,#44,#03
	db #46,#06,#48,#03,#48,#06,#48,#03
	db #46,#09,#44,#06,#44,#10,#60,#0e
	db #48,#03,#46,#03,#44,#03,#48,#03
	db #46,#03,#44,#03,#48,#03,#46,#03
	db #44,#03,#48,#03,#46,#03,#44,#03
.l1ada equ $ + 1
	db #fe,#61,#07,#44,#06,#44,#10,#60
	db #10,#60,#04,#44,#03,#46,#06,#48
	db #03,#48,#06,#48,#03,#46,#09,#44
	db #06,#44,#10,#60,#0e,#46,#09,#44
	db #09,#41,#09,#fa,#00,#fe,#3f,#06
	db #fa,#00,#00,#41,#12,#60,#12,#60
	db #12,#60,#12,#60,#03,#48,#03,#46
	db #03,#44,#03,#48,#03,#46,#03,#44
	db #03,#48,#03,#46,#03,#44,#03,#48
	db #03,#46,#03,#44,#03,#48,#03,#46
	db #03,#44,#03,#48,#03,#46,#03,#44
	db #03,#48,#03,#46,#03,#44,#03,#48
.l1b3f equ $ + 6
	db #03,#46,#03,#44,#03,#fe,#61,#00
	db #25,#06,#25,#03,#29,#09,#2c,#09
	db #2e,#09,#61,#01,#31,#06,#31,#03
	db #2e,#09,#2c,#09,#29,#09,#fe,#fe
.l1b59
	db #61,#03,#49,#12,#46,#12,#44,#12
	db #41,#12,#3d,#12,#60,#12,#60,#12
	db #60,#12,#60,#12,#60,#12,#60,#12
	db #60,#12,#60,#12,#60,#12,#60,#12
	db #60,#12,#fe,#00
;
;	#70be
;	call #1000	init music
;
.music_info
	db "3D Snooker (1990)(Players Premier)(Sonic Graffiti & Andy Severn)()",0
	db "",0

	read "music_end.asm"