; Music of Abadia del Crimen (1988)(Opera Soft)()()
; Ripped by Megachur the 03/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ABADIADC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #0f96

	read "music_header.asm"

.l0f9c equ $ + 6
.l0f9b equ $ + 5
.l0f9a equ $ + 4
.l0f99 equ $ + 3
.l0f98 equ $ + 2
.l0f97 equ $ + 1
.l0f96
	db #00,#00,#01,#00,#00,#00,#00,#00
.l0fa0 equ $ + 2
	db #08,#09,#36,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
.l0fae
	db #00,#00,#00,#00,#00,#00,#00,#02
.l0fba equ $ + 4
.l0fb8 equ $ + 2
	db #09,#12,#36,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0fc6
	db #00,#00,#00,#00,#00,#00,#00,#04
.l0fd2 equ $ + 4
.l0fd0 equ $ + 2
	db #0a,#24,#36,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0fde
	db #00,#1e,#04,#20,#c7,#21,#f5
.l0fe5
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	ld hl,l1480	; sound fx
	jr l103f
	ld hl,l1496
	jr l104b
	ld hl,l13fe
	jr l1034
	ld hl,l14f3
	jr l103f
	ld hl,l14ba
	jr l103f
	ld hl,l1560
	jr l1045
	ld hl,l14e7
	jr l1045
	ld hl,l14b1
	jr l104b
	ld hl,l149f
	jr l1045
	ld hl,l1550
	jr l1045
	ld hl,l14a8
	jr l1045
.l1034
	ld ix,l0fd0
	ld a,(ix+#0e)
	and a
	ret nz
	jr l104f
.l103f
	ld ix,l0fa0
	jr l104f
.l1045
	ld ix,l0fb8
	jr l104f
.l104b
	ld ix,l0fd0
.l104f
	di
	ld (ix+#0e),#05
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#02),#01
	ei
	ret
;
.play_music_interrupt
;
	di
	push af
	ld a,(l0fae)
	push bc
	ld c,a
	ld a,(l0fc6)
	or c
	ld c,a
	ld a,(l0fde)
	or c
	and #01
	jr nz,l1079
.l1074
	pop bc
	pop af
	ei
	reti
;
.play_music
.l1079
;
	push hl
	push de
	push ix
	ld a,(l0f98)
	dec a
	cp #ff
	jr nz,l1087
	l1086 equ $ +1
	ld a,#01        		; modified by Megachur #0b
.l1087
	ld (l0f98),a
	ld a,#3f
	ld (l0f96),a
	ld ix,l0fa0
	call l114c
	ld ix,l0fb8
	call l114c
	ld ix,l0fd0
	call l114c
	ld ix,l0fa0
	call l10d0
	ld ix,l0fb8
	call l10d0
	ld ix,l0fd0
	call l10d0
	ld hl,(l0f96)
	ld a,l
	cp h
	jr z,l10c9
	ld (l0f97),a
	ld c,a
	ld a,#07
	call l134e
.l10c9
	pop ix
	pop de
	pop hl
;jp l1074 modified by Megachur
	defs 2,0
	ret
.l10d0
	ld l,(ix+#0e)
	bit 0,l
	ret z
	bit 2,l
	ret nz
	bit 7,l
	ret nz
	bit 6,l
	jr z,l10f3
	ld c,(ix+#03)
	ld a,(ix-#03)
	call l134e
	ld c,(ix+#04)
	ld a,(ix-#03)
	inc a
	call l134e
.l10f3
	bit 5,l
	jr z,l1129
	bit 4,l
	jr nz,l1106
	ld a,(ix-#02)
	ld c,(ix+#07)
	call l134e
	jr l1129
.l1106
	ld a,(l0f99)
	ld c,a
	ld a,#0b
	call l134e
	ld a,(l0f9a)
	ld c,a
	ld a,#0c
	call l134e
	ld a,(l0f9b)
	ld c,a
	ld a,#0d
	call l134e
	ld a,(ix-#02)
	ld c,#10
	call l134e
.l1129
	ld a,#07
	bit 1,l
	jr z,l1140
	ld a,#3f
	bit 3,l
	jr z,l1140
	ld a,(l0f9c)
	ld c,a
	ld a,#06
	call l134e
	ld a,#3f
.l1140
	and (ix-#01)
	ld c,a
	ld a,(l0f96)
	xor c
	ld (l0f96),a
	ret
.l114c
	ld a,(ix+#0e)
	bit 0,a
	ret z
	and #87
	ld (ix+#0e),a
	ld a,(l0f98)
	and a
	jp nz,l11f7
	dec (ix+#02)
	jp nz,l11f7
	ld (ix+#0e),#01
	ld e,(ix+#00)
	ld d,(ix+#01)
.l116e
	ld b,#06
	ld hl,l1306
.l1173
	ld a,(de)
	cp (hl)
	jr nz,l1188
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld bc,l116e
	push bc
	ex de,hl
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ex de,hl
	jp (hl)
.l1188
	inc hl
	inc hl
	inc hl
	djnz l1173
	cp #ff
	jr nz,l1196
	ld (ix+#0e),#00
	ret
.l1196
	ex de,hl
	ld b,#01
	ld (ix+#11),b
	ld (ix+#08),b
	ld (ix+#12),b
	ld (ix+#0d),b
	dec b
	ld (ix+#0c),b
	ld (ix+#09),b
	ld c,(hl)
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#02),a
	bit 7,c
	jr z,l11c4
	ld a,(hl)
	ld (l0f9c),a
	set 1,(ix+#0e)
	set 3,(ix+#0e)
	inc hl
.l11c4
	ld (ix+#07),#00
	ld (ix+#00),l
	ld (ix+#01),h
	set 7,(ix+#0e)
	ld a,c
	and #0f
	cp #0f
	ret z
	res 7,(ix+#0e)
	add a
	ld hl,l0fe5
	call l1348
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #07
	ex de,hl
	call l136c
	ld (ix+#03),l
	ld (ix+#04),h
.l11f7
	bit 7,(ix+#0e)
	ret nz
	bit 2,(ix+#0e)
	ret nz
	call l1275
	dec (ix+#11)
	ret nz
	dec (ix+#08)
	call z,l1231
	ld a,(ix+#0f)
	ld (ix+#11),a
	ld a,(ix+#13)
	ld d,#00
	bit 7,a
	jr z,l121e
	dec d
.l121e
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld e,a
	add hl,de
	ld (ix+#03),l
	ld (ix+#04),h
	set 6,(ix+#0e)
	ret
.l1231
	ld a,(ix+#09)
	ld l,(ix+#05)
	ld h,(ix+#06)
	call l1348
	ld a,(hl)
	cp #7f
	jr nz,l1252
	ld a,#ff
	ld (ix+#11),a
	ld (ix+#0f),a
	ld (ix+#08),a
	ld (ix+#13),#00
	ret
.l1252
	cp #80
	jr nz,l125c
	xor a
	ld (ix+#09),a
	jr l1231
.l125c
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#13),a
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	ld (ix+#11),a
	ld a,(ix+#09)
	add #03
	ld (ix+#09),a
	ret
.l1275
	dec (ix+#12)
	ret nz
	dec (ix+#0d)
	call z,l129b
	set 5,(ix+#0e)
	ld a,(ix+#10)
	ld (ix+#12),a
	bit 4,(ix+#0e)
	ret nz
	ld a,(ix+#07)
	add (ix+#14)
	and #0f
	ld (ix+#07),a
	ld c,a
	ret
.l129b
	ld a,(ix+#0c)
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	call l1348
	ld a,(hl)
	cp #7f
	jr nz,l12bc
	ld a,#ff
	ld (ix+#12),a
	ld (ix+#10),a
	ld (ix+#0d),a
	ld (ix+#14),#00
	ret
.l12bc
	cp #80
	jr nz,l12c6
	xor a
	ld (ix+#0c),a
	jr l129b
.l12c6
	bit 7,a
	jr z,l12ed
	and #0f
	ld (l0f9b),a
	inc hl
	ld a,(hl)
	ld (l0f99),a
	inc hl
	ld a,(hl)
	ld (l0f9a),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	ld (ix+#0d),#01
	set 4,(ix+#0e)
	ld a,(ix+#0c)
	add #04
	jr l1302
.l12ed
	ld (ix+#0d),a
	inc hl
	ld a,(hl)
	ld (ix+#14),a
	inc hl
	ld a,(hl)
	ld (ix+#10),a
	ld (ix+#12),a
	ld a,(ix+#0c)
	add #03
.l1302
	ld (ix+#0c),a
	ret
.l1306
	cp #1b
	inc de
	ld iy,(#fb13)
	add hl,sp
	inc de
	call m,l1347
	jp m,l1340
	ld sp,hl
	jr l132b
	ld d,b
	ld e,c
	ret
	ld (l0fb8),bc
	ld a,#05
	ld (l0fc6),a
	ld a,#01
	ld (l0fba),a
	ret
.l132b equ $ + 1
	ld (l0fd0),bc
	ld a,#05
	ld (l0fde),a
	ld a,#01
	ld (l0fd2),a
	ret
	ld (ix+#05),c
	ld (ix+#06),b
	ret
.l1340
	ld (ix+#0a),c
	ld (ix+#0b),b
	ret
.l1347
	ret
.l1348
	add l
	ld l,a
	adc h
	sub l
	ld h,a
	ret
.l134e
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
	ret
.l136c
	and a
	ret z
.l136e
	srl h
	rr l
	dec a
	jr nz,l136e
	ret
	ld a,#84
	ld (l0fae),a
	ld (l0fc6),a
	ld (l0fde),a
	ld c,#3f
	ld a,#07
	jp l134e
	db #01,#01,#01,#02,#ff,#01,#01,#01
	db #01,#80,#01,#01,#04,#02,#ff,#04
	db #01,#01,#04,#80,#0c,#01,#01,#0c
	db #ff,#01,#7f,#01,#ff,#02,#80,#01
	db #01,#04,#80,#01,#0f,#08,#0f,#ff
	db #0a,#7f,#0f,#01,#05,#0f,#ff,#09
	db #7f,#01,#d8,#02,#80,#01,#00,#01
	db #7f,#01,#05,#01,#7f,#01,#0f,#01
	db #01,#00,#28,#0f,#ff,#14,#7f,#05
	db #01,#02,#05,#02,#01,#05,#ff,#0f
	db #01,#00,#3c,#0a,#ff,#14,#7f,#0f
	db #01,#0f,#01,#00,#28,#0f,#ff,#0f
	db #7f,#01,#0c,#01,#01,#00,#28,#0c
	db #ff,#0a,#7f,#01,#0c,#14,#02,#ff
.l13fe equ $ + 6
	db #14,#7f,#01,#0a,#0a,#7f,#fb,#92
	db #13,#fa,#cf,#13,#59,#14,#fa,#f3
	db #13,#5b,#04,#59,#08,#fa,#cf,#13
	db #57,#10,#59,#10,#55,#10,#57,#10
	db #59,#20,#60,#20,#59,#20,#60,#20
	db #59,#08,#60,#08,#59,#10,#59,#14
	db #fa,#f3,#13,#5b,#04,#59,#08,#fa
	db #cf,#13,#57,#10,#59,#10,#55,#10
	db #57,#10,#59,#20,#65,#10,#62,#10
	db #64,#10,#60,#10,#62,#40,#65,#20
	db #67,#10,#65,#10,#64,#20,#60,#20
	db #65,#20,#62,#10,#64,#08,#65,#08
	db #64,#20,#60,#20,#65,#10,#67,#10
	db #69,#10,#6a,#10,#70,#20,#67,#20
	db #65,#06,#fa,#f3,#13,#67,#04,#65
	db #06,#fa,#cf,#13,#62,#10,#64,#10
	db #60,#10,#62,#40,#f9,#fe,#13,#ff
.l1480
	db #fb,#bd,#13,#fa,#df,#13,#fe,#8d
	db #14,#82,#50,#1a,#ff,#fb,#a3,#13
.l1496 equ $ + 6
	db #fa,#df,#13,#20,#50,#ff,#fb,#b9
.l149f equ $ + 7
	db #13,#fa,#9c,#13,#17,#04,#ff,#fb
	db #a3,#13,#fa,#cf,#13,#60,#0f,#ff
.l14a8
	db #fa,#cf,#13,#fb,#a7,#13,#7b,#0f
.l14b1 equ $ + 1
	db #ff,#fb,#88,#13,#fa,#c1,#13,#54
.l14ba equ $ + 2
	db #0a,#ff,#fb,#bd,#13,#fa,#ab,#13
	db #fe,#d2,#14,#6b,#04,#6b,#05,#6b
	db #04,#6b,#05,#6b,#04,#6b,#05,#6b
	db #0f,#ff,#fb,#bd,#13,#fa,#ab,#13
	db #76,#04,#76,#05,#76,#04,#76,#05
.l14e7 equ $ + 7
	db #76,#04,#76,#05,#76,#0f,#ff,#fb
	db #b9,#13,#fa,#b2,#13,#82,#14,#1a
.l14f3 equ $ + 3
	db #0f,#0f,#ff,#fb,#92,#13,#fa,#c5
	db #13,#fe,#3e,#15,#4b,#1e,#4f,#01
	db #fe,#47,#15,#49,#28,#4f,#04,#fe
	db #3e,#15,#4b,#1e,#4f,#01,#fe,#47
	db #15,#49,#28,#4f,#04,#fe,#3e,#15
	db #4b,#1e,#4f,#01,#fe,#47,#15,#49
	db #28,#4f,#04,#fe,#3e,#15,#4b,#1e
	db #4f,#01,#fe,#47,#15,#49,#28,#4f
	db #04,#fe,#3e,#15,#4b,#1e,#4f,#01
	db #fe,#47,#15,#49,#3c,#ff,#fb,#92
	db #13,#fa,#c5,#13,#43,#1e,#ff,#fb
	db #92,#13,#fa,#c5,#13,#43,#28,#ff
.l1550
	db #fb,#bd,#13,#fa,#e9,#13,#a2,#14
	db #1a,#a2,#14,#1a,#a0,#1e,#19,#ff
.l1560
	db #fb,#bd,#13,#fa,#e9,#13,#a0,#1e
	db #19,#ff,#00,#74,#00,#00,#00
	dw l1973,l196e,l193c,l1941
	dw l1946,l194b,l1950,l1955
	dw l195a,l1969,l1aef,l1b28
	dw l1ba0,l1ba5,l1baa,l1baf
	dw l1cb8,l1cfd,l1d23,l1d48
	dw l1f5f,l1f64,l17fe,l18a6
	dw l17f9,l18a1,l1932,l1b9b
	dw l1e0f,l1e33,l1e5f,l1e9d
	dw l1ecc,l1ed6,l1ede,l18da
	dw l1ee3,l18ef,l1f1a,l192d
	dw l1928,l191e,l1925,l1ae9
	dw l1a99,l1726,l177c,l17a4
	dw l17ae,l1ee8,l1c86,l1c96
	dw l17b8,l1903,l1f76,l18ab
	dw l1803,l18cd,l1ec6,l1ea3
	dw l1ed1,l1937,l18b1,l18bf
	dw l1f80,l1f86,l1f2b,l1f59
	dw l1d99,l1d6b,l1797,l178a
	dw l1b96,l1d9f,l1dd8,l1dfc
	dw l1e06,l1bb4,l17ef,l17f4
	dw l1897,l189c,l17bb,l17e7
	dw l1841,l186d,l1ddd,l1b91
	dw l1914,l1919,l1e01,l1f69
	dw l1ed9,l195f,l1964
	db #85,#6f,#8c,#95,#67,#c9,#7c,#d6
	db #08,#fe,#14,#d0,#57,#7d,#d6,#08
	db #fe,#10,#d0,#5f,#e5,#eb,#7d,#6c
	db #26,#00,#29,#29,#29,#29,#29,#5d
	db #54,#29,#19,#87,#5f,#87,#83,#85
	db #6f,#8c,#95,#67,#11,#80,#8d,#19
	db #c3,#67,#16,#11,#80,#07,#19,#71
	db #e1,#c9,#c5,#e5,#23,#23,#54,#5d
	db #23,#4e,#23,#46,#23,#7e,#12,#13
	db #21,#de,#1f,#7e,#12,#b9,#30,#08
	db #23,#7e,#2b,#b8,#30,#02,#47,#4e
	db #23,#13,#7e,#12,#13,#e1,#71,#23
	db #70,#eb,#c1,#71,#e1,#c9,#2a,#2c
	db #e0,#df,#de,#fd,#fc,#5f,#fe,#1b
	db #3a,#3a,#69,#39,#39,#28,#09,#29
	db #00,#2b,#0a,#2d,#00,#23,#22,#61
	db #29,#26,#25,#27,#2d,#62,#02,#63
	db #03,#6a,#06,#74,#07,#23,#22,#21
	db #29,#26,#25,#24,#2d,#37,#36,#35
	db #00,#34,#33,#32,#00,#99,#9a,#97
	db #98,#23,#21,#1b,#3a,#26,#24,#69
	db #39,#7f,#7e,#7d,#00,#58,#57,#56
	db #00,#41,#17,#16,#1a,#14,#1d,#1e
	db #40,#15,#1f,#20,#19,#12,#b2,#b2
	db #45,#13,#b4,#b5,#b3,#b1,#10,#81
	db #81,#44,#11,#83,#84,#82,#80,#1c
	db #1b,#b8,#b7,#ba,#b9,#b6,#bb,#28
	db #09,#6b,#69,#6c,#b0,#ad,#ac,#af
	db #ae,#2b,#0a,#58,#28,#51,#53,#57
	db #55,#54,#50,#52,#2b,#0a,#7f,#2b
	db #78,#7a,#7e,#7c,#7b,#77,#79,#28
.l1726 equ $ + 1
	db #09,#10,#17,#fc,#f2,#01,#6d,#84
	db #f1,#6d,#f7,#70,#02,#84,#70,#f7
	db #71,#03,#6d,#6d,#84,#71,#fc,#f9
	db #6a,#fd,#f9,#6b,#fa,#fb,#f5,#f9
	db #61,#fd,#f9,#65,#fa,#f9,#68,#80
	db #63,#80,#69,#fb,#ef,#f7,#71,#02
	db #6d,#6d,#71,#f9,#61,#fd,#f9,#65
	db #fa,#f9,#66,#80,#67,#f7,#70,#02
	db #70,#f7,#71,#6d,#6d,#84,#71,#f6
	db #f6,#f5,#fe,#fc,#f9,#62,#80,#63
.l177c equ $ + 7
	db #80,#64,#fb,#f5,#f4,#fa,#ff,#1b
	db #17,#fc,#f2,#01,#6d,#84,#f1,#6d
.l178a equ $ + 5
	db #84,#e9,#ea,#2f,#17,#b2,#16,#ec
	db #3c,#19,#f1,#6e,#6e,#01,#ec,#41
.l1797 equ $ + 2
	db #19,#ff,#a2,#16,#ec,#73,#19,#f1
.l17a4 equ $ + 7
	db #6e,#6e,#01,#ec,#6e,#19,#ff,#a6
	db #16,#ec,#6e,#19,#f5,#ec,#73,#19
.l17ae equ $ + 1
	db #ff,#b6,#16,#ec,#41,#19,#f5,#ec
.l17bb equ $ + 6
.l17b8 equ $ + 3
	db #3c,#19,#ff,#31,#1b,#ff,#49,#1b
	db #ec,#ef,#17,#f7,#70,#02,#84,#70
	db #f7,#71,#01,#84,#71,#f2,#6d,#01
	db #84,#f9,#61,#f1,#01,#84,#6d,#f2
	db #6d,#6d,#02,#ec,#91,#18,#f5,#f6
	db #f7,#6e,#6d,#f7,#6d,#00,#ec,#28
.l17e7 equ $ + 2
	db #1b,#ff,#6d,#1b,#ec,#f4,#17,#ea
.l17f4 equ $ + 7
.l17ef equ $ + 2
	db #c0,#17,#49,#1b,#ea,#05,#18,#6d
.l17f9 equ $ + 4
	db #1b,#ea,#05,#18,#88,#1b,#ea,#05
.l1803 equ $ + 6
.l17fe equ $ + 1
	db #18,#31,#1b,#ea,#05,#18,#5b,#1b
	db #f7,#71,#71,#82,#ff,#f7,#70,#6e
	db #6e,#02,#84,#70,#fc,#f9,#64,#fe
	db #f9,#69,#fa,#f9,#61,#81,#65,#80
	db #62,#fb,#f3,#fd,#fc,#f9,#66,#fe
	db #f9,#68,#fa,#f9,#61,#81,#67,#80
	db #61,#80,#62,#fb,#f3,#f4,#fa,#f9
	db #66,#fe,#f9,#68,#fa,#f9,#61,#81
.l1841 equ $ + 4
	db #67,#80,#63,#ff,#52,#1b,#ec,#97
	db #18,#f7,#71,#02,#84,#71,#f7,#70
	db #01,#84,#70,#f2,#01,#6d,#84,#f9
	db #61,#f1,#6d,#84,#01,#f2,#6d,#6d
	db #02,#ec,#75,#18,#f3,#f6,#f7,#6e
	db #6d,#f7,#6d,#00,#ec,#ef,#1a,#ff
.l186d
	db #76,#1b,#ec,#9c,#18,#ea,#46,#18
	db #a2,#16,#f7,#71,#6d,#6d,#84,#71
	db #f7,#6e,#01,#fe,#fc,#f9,#61,#fd
	db #f9,#62,#fa,#f7,#6e,#01,#6e,#fb
	db #f5,#f4,#fa,#ff,#a6,#16,#e9,#ea
.l189c equ $ + 7
.l1897 equ $ + 2
	db #77,#18,#52,#1b,#ea,#ad,#18,#76
.l18a1 equ $ + 4
	db #1b,#ea,#ad,#18,#7f,#1b,#ea,#ad
.l18ab equ $ + 6
.l18a6 equ $ + 1
	db #18,#3a,#1b,#ea,#ad,#18,#64,#1b
.l18b1 equ $ + 4
	db #e9,#ea,#05,#18,#a6,#16,#f5,#ec
	db #73,#19,#f3,#f7,#6e,#00,#ec,#6e
.l18bf equ $ + 2
	db #19,#ff,#a2,#16,#f3,#ec,#6e,#19
	db #f5,#f7,#6e,#00,#ec,#73,#19,#ff
.l18cd
	db #5b,#1b,#f7,#6d,#6d,#6e,#f7,#6e
.l18da equ $ + 5
	db #00,#ec,#ab,#18,#ff,#c2,#16,#ec
	db #e7,#18,#f7,#6e,#00,#f3,#ec,#55
	db #19,#ff,#c2,#16,#f7,#6d,#00,#ea
.l18ef equ $ + 2
	db #ca,#19,#c2,#16,#ec,#e7,#18,#f2
	db #6e,#84,#6d,#f1,#01,#6e,#6d,#f7
.l1903 equ $ + 6
	db #6e,#00,#ec,#55,#19,#ff,#c2,#16
	db #ec,#e7,#18,#f2,#6d,#01,#f1,#6d
.l1914 equ $ + 7
	db #f7,#6e,#00,#ec,#55,#19,#ff,#98
.l1919 equ $ + 4
	db #16,#ea,#20,#19,#9a,#16,#ea,#20
.l191e equ $ + 1
	db #19,#93,#16,#f9,#61,#80,#62,#ff
.l1928 equ $ + 3
.l1925
	db #ae,#16,#ff,#ae,#16,#ea,#a9,#19
.l1932 equ $ + 5
.l192d
	db #aa,#16,#ea,#90,#19,#d6,#16,#ea
.l193c equ $ + 7
.l1937 equ $ + 2
	db #8c,#19,#da,#16,#ea,#75,#19,#b2
.l1941 equ $ + 4
	db #16,#ea,#ad,#19,#b6,#16,#ea,#c6
.l194b equ $ + 6
.l1946 equ $ + 1
	db #19,#ba,#16,#ea,#90,#19,#be,#16
.l1950 equ $ + 3
	db #ea,#a9,#19,#c2,#16,#ea,#ca,#19
.l195a equ $ + 5
.l1955
	db #c6,#16,#ea,#d4,#19,#ca,#16,#ea
.l1964 equ $ + 7
.l195f equ $ + 2
	db #90,#19,#ce,#16,#ea,#90,#19,#d2
.l1969 equ $ + 4
	db #16,#ea,#a9,#19,#ca,#16,#ea,#a9
.l1973 equ $ + 6
.l196e equ $ + 1
	db #19,#a6,#16,#ea,#8c,#19,#a2,#16
	db #f7,#71,#01,#6e,#6e,#84,#71,#ef
	db #fd,#fc,#f9,#61,#fe,#f9,#62,#fa
	db #f9,#63,#fb,#f5,#f4,#fa,#ff,#e9
	db #ea,#75,#19,#f7,#71,#01,#6e,#6e
	db #84,#71,#ef,#fd,#fc,#f9,#61,#fe
	db #f9,#62,#fa,#f9,#63,#80,#64,#fb
	db #f5,#f4,#fa,#ff,#e9,#ea,#90,#19
	db #f7,#71,#01,#6e,#6e,#84,#71,#ef
	db #fd,#fc,#f9,#61,#fe,#f9,#62,#80
	db #64,#fa,#f9,#63,#fb,#f5,#f4,#fa
	db #ff,#e9,#ea,#ad,#19,#f7,#6e,#6e
	db #6d,#f7,#6d,#01,#ea,#75,#19,#e9
	db #ea,#ca,#19,#3a,#6c,#15,#a7,#28
	db #02,#3e,#ff,#cd,#70,#1a,#dd,#2a
	db #6a,#15,#dd,#23,#21,#67,#16,#22
	db #5e,#16,#01,#c7,#7f,#ed,#49,#cd
	db #0a,#1a,#01,#c0,#7f,#ed,#49,#21
	db #60,#16,#22,#5e,#16,#3a,#6c,#15
	db #a7,#ca,#b2,#4e,#c9,#dd,#7e,#00
	db #fe,#ff,#c8,#e6,#fe,#21,#6d,#15
	db #85,#6f,#8c,#95,#67,#5e,#23,#56
	db #ed,#53,#62,#1a,#dd,#7e,#01,#4f
	db #e6,#1f,#6f,#79,#07,#07,#07,#e6
	db #07,#4f,#dd,#7e,#02,#47,#e6,#1f
	db #67,#78,#07,#07,#07,#e6,#07,#47
	db #11,#00,#00,#ed,#53,#de,#1f,#dd
	db #7e,#00,#dd,#23,#dd,#23,#dd,#23
	db #e6,#01,#3e,#ff,#28,#05,#dd,#7e
	db #00,#dd,#23,#32,#dd,#1f,#e5,#21
	db #0a,#1a,#e3,#e5,#21,#00,#00,#5e
	db #23,#56,#23,#e3,#c3,#bc,#1b,#3e
	db #ff,#18,#0d,#21,#80,#8d,#11,#81
	db #8d,#36,#00,#01,#7f,#07,#ed,#b0
	db #06,#a0,#32,#8b,#1a,#21,#08,#c0
	db #c5,#e5,#54,#5d,#13,#36,#00,#01
	db #3f,#00,#ed,#b0,#e1,#cd,#4d,#3a
.l1a99 equ $ + 4
	db #c1,#10,#ed,#c9,#06,#17,#f7,#71
	db #02,#6e,#6e,#84,#71,#f7,#70,#01
	db #84,#70,#fc,#fc,#f8,#69,#fe,#f8
	db #6a,#fa,#fb,#f4,#fc,#f8,#61,#fe
	db #f8,#62,#fa,#f8,#63,#fb,#f4,#fd
	db #fc,#f8,#66,#fe,#f8,#64,#fa,#f8
	db #65,#80,#63,#fb,#f4,#f5,#fa,#f8
	db #66,#fe,#f8,#67,#fa,#f8,#68,#fb
	db #f7,#6e,#00,#fe,#f5,#f6,#fc,#f9
	db #69,#fd,#f9,#6a,#fa,#f7,#6e,#01
.l1ae9 equ $ + 4
	db #6e,#fb,#fa,#ff,#fc,#16,#e9,#ea
.l1aef equ $ + 2
	db #9b,#1a,#ea,#16,#f7,#70,#02,#6d
	db #6d,#84,#70,#f7,#71,#01,#6e,#6e
	db #84,#71,#ef,#fd,#fc,#fc,#f9,#61
	db #80,#65,#fb,#f3,#fe,#fc,#f9,#62
	db #80,#66,#80,#67,#fb,#f4,#f3,#fa
	db #f9,#63,#80,#68,#80,#69,#fb,#f4
	db #f4,#f5,#fa,#f3,#f0,#fe,#f9,#64
.l1b28 equ $ + 3
	db #f3,#fa,#ff,#f3,#16,#e9,#ea,#f1
	db #1a,#eb,#eb,#eb,#08,#76,#75,#28
	db #29,#2b,#2d,#0a,#09,#08,#75,#76
	db #2b,#2d,#28,#29,#09,#0a,#04,#04
	db #04,#01,#4e,#4d,#05,#4f,#59,#28
	db #29,#2b,#2d,#0a,#09,#05,#59,#4f
	db #2b,#2d,#28,#29,#09,#0a,#87,#88
	db #cf,#28,#29,#2b,#2d,#0a,#09,#87
	db #cf,#88,#2b,#2d,#28,#29,#09,#0a
	db #ff,#45,#44,#28,#29,#2b,#2d,#0a
	db #09,#ff,#44,#45,#2b,#2d,#28,#29
	db #09,#0a,#db,#da,#d4,#d7,#dd,#d8
	db #dc,#d9,#e2,#db,#d4,#da,#d8,#dc
.l1b91 equ $ + 4
	db #d7,#dd,#e2,#d9,#2e,#1b,#ea,#cf
.l1b9b equ $ + 6
.l1b96 equ $ + 1
	db #1b,#6d,#1b,#ea,#cf,#1b,#31,#1b
.l1ba0 equ $ + 3
	db #ea,#cf,#1b,#43,#1b,#ea,#cf,#1b
.l1baa equ $ + 5
.l1ba5
	db #46,#1b,#ea,#cf,#1b,#49,#1b,#ea
.l1bb4 equ $ + 7
.l1baf equ $ + 2
	db #cf,#1b,#5b,#1b,#ea,#cf,#1b,#88
	db #1b,#ea,#cf,#1b,#c5,#18,#0c,#c5
	db #e5,#eb,#11,#cf,#1f,#01,#0c,#00
	db #ed,#b0,#e1,#cd,#b8,#1f,#c1,#c3
	db #18,#20,#f7,#70,#02,#6e,#6e,#84
	db #70,#f7,#71,#03,#6d,#6d,#84,#71
	db #f0,#ef,#fd,#fc,#fe,#f9,#61,#80
	db #61,#f5,#f6,#fa,#f9,#61,#80,#62
	db #fb,#f4,#f3,#fa,#f5,#f4,#fe,#f9
	db #63,#f5,#fa,#ff,#d8,#95,#94,#ea
	db #d0,#dc,#db,#96,#d7,#dd,#da,#a7
	db #a5,#a3,#a1,#9f,#9d,#a6,#a4,#a2
	db #a0,#9e,#00,#93,#91,#8f,#8d,#8b
	db #89,#92,#90,#8e,#8c,#8a,#00,#5f
	db #cb,#cd,#ca,#46,#5f,#cb,#cd,#ca
	db #46,#5f,#ce,#cd,#cc,#60,#6d,#ce
	db #cd,#cc,#60,#d6,#d5,#ab,#d2,#d1
	db #a8,#28,#09,#6e,#6f,#72,#71,#70
	db #2b,#0a,#2b,#0a,#5a,#5b,#5e,#5d
	db #5c,#28,#09,#c4,#c3,#c2,#c0,#c1
	db #bf,#9b,#bc,#bd,#be,#f6,#f5,#f4
	db #f2,#f3,#f1,#9b,#ee,#ef,#f0,#e3
	db #9c,#0d,#0c,#0b,#31,#0f,#0e,#67
	db #48,#76,#08,#75,#66,#68,#65,#3b
	db #64,#41,#47,#75,#08,#76,#40,#38
	db #20,#42,#1f,#aa,#ab,#ab,#aa,#a9
	db #a8,#a8,#a9,#3f,#3e,#3d,#3c,#3a
.l1c86 equ $ + 1
	db #39,#30,#1c,#ec,#a6,#1c,#f7,#6e
	db #6d,#f7,#6d,#01,#f3,#ec,#e3,#1e
.l1c96 equ $ + 1
	db #ff,#78,#1c,#ec,#af,#1c,#f7,#6e
	db #6d,#f7,#6d,#00,#f3,#ec,#64,#1f
	db #ff,#30,#1c,#f7,#6d,#01,#ec,#de
	db #1e,#ff,#78,#1c,#f7,#6d,#00,#ec
.l1cb8 equ $ + 3
	db #5f,#1f,#ff,#48,#1c,#f7,#70,#01
	db #70,#f7,#71,#01,#71,#f0,#fe,#f7
	db #71,#08,#84,#71,#f9,#67,#80,#82
	db #fb,#80,#82,#c8,#80,#82,#c5,#80
	db #82,#c6,#80,#82,#c7,#f5,#f6,#f6
	db #f6,#f9,#61,#80,#62,#80,#63,#80
	db #64,#f5,#f6,#f6,#f9,#65,#80,#66
	db #f5,#f2,#04,#f9,#67,#80,#68,#80
	db #69,#80,#6a,#f5,#f2,#03,#fa,#ff
.l1cfd
	db #52,#1c,#e9,#f7,#70,#01,#70,#f7
	db #71,#01,#71,#f0,#fe,#f7,#71,#08
	db #84,#71,#f9,#67,#80,#82,#fb,#80
	db #82,#f7,#80,#82,#f8,#80,#82,#f9
.l1d23 equ $ + 6
	db #80,#82,#fa,#ea,#da,#1c,#48,#1c
	db #fc,#f2,#05,#84,#f7,#6f,#0a,#6f
	db #ec,#b8,#1c,#f7,#6f,#0a,#84,#6f
	db #fb,#f0,#fe,#ec,#59,#1d,#f4,#f4
	db #f4,#f5,#f5,#f5,#ec,#59,#1d,#f4
.l1d48 equ $ + 3
	db #f5,#fa,#ff,#52,#1c,#fc,#f2,#05
	db #84,#f7,#6f,#0a,#6f,#ec,#fd,#1c
	db #e9,#ea,#30,#1d,#ca,#16,#f7,#71
	db #01,#84,#71,#f9,#61,#80,#62,#80
.l1d6b equ $ + 6
	db #62,#80,#62,#80,#63,#ff,#64,#1c
	db #f6,#f5,#fc,#f9,#61,#80,#62,#80
	db #63,#fb,#f3,#f6,#fe,#fc,#f9,#61
	db #80,#62,#80,#64,#80,#65,#fb,#f3
	db #f6,#fa,#fc,#f9,#66,#80,#67,#80
	db #64,#80,#65,#fb,#f3,#f9,#6a,#80
.l1d99 equ $ + 4
	db #68,#80,#69,#ff,#6e,#1c,#e9,#ea
.l1d9f equ $ + 2
	db #6d,#1d,#de,#16,#e9,#f6,#f5,#fc
	db #f9,#61,#80,#62,#80,#63,#80,#64
	db #fb,#f3,#f6,#fe,#fc,#f9,#61,#80
	db #62,#80,#82,#43,#80,#66,#80,#67
	db #fb,#f3,#f6,#fa,#fc,#f9,#68,#80
	db #69,#80,#82,#18,#80,#66,#80,#67
	db #fb,#f3,#f9,#6a,#80,#6b,#80,#6c
.l1dd8 equ $ + 3
	db #80,#65,#ff,#5c,#1c,#ea,#df,#1d
.l1ddd
	db #5d,#1c,#fc,#f5,#f4,#e4,#ef,#1d
	db #fb,#e9,#f7,#6d,#6e,#01,#e4,#ef
	db #1d,#ff,#5c,#1c,#fe,#f9,#61,#f7
.l1dfc equ $ + 7
	db #71,#02,#84,#71,#f5,#fa,#ff,#61
.l1e01 equ $ + 4
	db #1c,#ea,#75,#19,#95,#16,#ea,#08
.l1e06 equ $ + 1
	db #1e,#5e,#1c,#f9,#61,#80,#62,#80
.l1e0f equ $ + 2
	db #63,#ff,#80,#1c,#e9,#f0,#ef,#fc
	db #f9,#61,#fe,#f9,#62,#80,#63,#80
	db #61,#fa,#fb,#f6,#f5,#fd,#fc,#f9
	db #64,#fe,#f9,#65,#80,#66,#80,#64
.l1e33 equ $ + 6
	db #fa,#fb,#f6,#f5,#fa,#ff,#f9,#1b
	db #f7,#71,#04,#84,#71,#f7,#70,#01
	db #84,#70,#fc,#f9,#69,#80,#6a,#80
	db #6b,#fb,#f5,#fc,#f9,#61,#80,#66
	db #80,#67,#80,#68,#fb,#f5,#f4,#f9
	db #61,#80,#62,#80,#63,#80,#64,#80
.l1e5f equ $ + 2
	db #65,#ff,#04,#1c,#f7,#70,#01,#84
	db #70,#f7,#71,#03,#6d,#6d,#6d,#6d
	db #84,#71,#f0,#ef,#fd,#fc,#fe,#fc
	db #f9,#61,#80,#62,#80,#62,#80,#63
	db #80,#64,#80,#65,#80,#66,#fb,#f5
	db #f4,#fc,#f9,#67,#80,#68,#80,#68
	db #80,#69,#80,#6a,#80,#6b,#fb,#f5
	db #f4,#fa,#fb,#f2,#07,#84,#fa,#ff
.l1ea3 equ $ + 6
.l1e9d
	db #10,#1c,#e9,#ea,#61,#1e,#26,#1c
	db #f7,#71,#01,#6d,#6d,#84,#71,#f0
	db #ef,#fd,#fc,#fe,#fc,#f9,#61,#80
	db #62,#80,#63,#80,#64,#80,#65,#fb
	db #f5,#f4,#fa,#fb,#f2,#05,#84,#fa
.l1ecc equ $ + 7
.l1ec6 equ $ + 1
	db #ff,#21,#1c,#e9,#ea,#a5,#1e,#1c
.l1ed1 equ $ + 4
	db #1c,#ea,#c8,#1e,#2b,#1c,#ea,#a5
.l1ed9 equ $ + 4
.l1ed6 equ $ + 1
	db #1e,#2b,#1c,#ff,#9c,#16,#ea,#75
.l1ee3 equ $ + 6
.l1ede equ $ + 1
	db #19,#30,#1c,#ea,#75,#19,#33,#1c
.l1ee8 equ $ + 3
	db #ea,#8c,#19,#3f,#1c,#f7,#71,#01
	db #71,#f0,#f7,#70,#01,#70,#fe,#fc
	db #f5,#f4,#f4,#e4,#20,#1f,#fb,#f7
	db #71,#04,#84,#71,#f9,#65,#80,#66
	db #80,#66,#80,#66,#80,#66,#80,#67
	db #80,#64,#f5,#f6,#f9,#63,#80,#69
.l1f1a equ $ + 5
	db #f5,#f2,#06,#fa,#ff,#36,#1c,#e9
	db #ea,#ea,#1e,#3f,#1c,#f7,#6d,#04
.l1f2b equ $ + 6
	db #f7,#6e,#00,#ea,#8c,#19,#3f,#1c
	db #f7,#6e,#6d,#01,#f7,#71,#01,#71
	db #f7,#70,#02,#84,#70,#fd,#f7,#6d
	db #00,#e4,#e8,#1e,#f5,#f5,#f4,#f4
	db #fc,#f7,#71,#06,#84,#71,#f7,#6d
	db #06,#f9,#68,#fe,#f9,#69,#fa,#fb
.l1f59 equ $ + 4
	db #f5,#f4,#fa,#ff,#36,#1c,#e9,#ea
.l1f64 equ $ + 7
.l1f5f equ $ + 2
	db #2d,#1f,#78,#1c,#ea,#ad,#19,#7c
.l1f69 equ $ + 4
	db #1c,#ea,#c6,#19,#9f,#16,#ea,#c6
	db #19,#2b,#0a,#49,#4a,#28,#09,#4c
.l1f76 equ $ + 1
	db #4b,#72,#1f,#ec,#86,#1f,#f3,#ec
.l1f80 equ $ + 3
	db #80,#1f,#ff,#6e,#1f,#e9,#ea,#88
.l1f86 equ $ + 1
	db #1f,#72,#1f,#f7,#6d,#6e,#6d,#f7
	db #6e,#6d,#01,#f7,#71,#01,#6d,#6d
	db #84,#71,#f7,#70,#02,#6d,#6d,#84
	db #70,#fd,#fc,#f9,#61,#fe,#f9,#62
	db #80,#62,#80,#62,#fa,#f9,#63,#80
	db #64,#f7,#6d,#01,#84,#6d,#fb,#f5
	db #f4,#fa,#ff,#fe,#ff,#c8,#cb,#3f
	db #84,#57,#85,#d6,#0f,#5f,#3e,#10
	db #82,#95,#57,#ed,#53,#de,#1f,#c9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
list

.l8000
	db #f9
	dw l8046
	db #01,#01,#04,#02,#ff,#04,#01,#01
.l8011 equ $ + 6
.l800d equ $ + 2
	db #04,#80,#01,#00,#01,#7f,#01,#0f
	db #01,#01,#00,#28,#0a,#ff,#14,#7f
.l801b
	db #01,#0f,#01,#02,#00,#28,#0a,#ff
.l8025 equ $ + 2
	db #1e,#7f,#01,#0f,#01,#01,#00,#1e
	db #0a,#ff,#0f,#7f,#05,#01,#02,#05
	db #02,#01,#05,#ff,#0f,#01,#00,#3c
	db #0a,#ff,#14,#7f,#01,#0c,#14,#02
.l8046 equ $ + 3
	db #ff,#14,#7f,#fa
	dw l8011
	db #fb
	dw l800d
	db #fe
	dw l81d8
	db #5a,#10,#59,#10,#57,#10,#59,#10
	db #52,#10,#52,#10,#57,#10,#fa
	dw l8025
	db #47,#08,#49,#08,#4a,#08,#50,#08
	db #fa
	dw l801b
	db #52,#30,#fa
	dw l8011
	db #53,#10,#fa
	dw l8025
	db #55,#08,#53,#08,#52,#08,#50,#08
	db #fa
	dw l8011
	db #52,#10,#fa
	dw l8025
	db #53,#08,#52,#08,#50,#08,#4b,#08
	db #fa
	dw l8011
	db #50,#10,#fa
	dw l8025
	db #52,#08,#50,#08,#4a,#08,#50,#08
	db #49,#08,#4a,#08,#fa
	dw l801b
	db #49,#20,#fa
	dw l8011
	db #5a,#10,#fa
	dw l8025
	db #59,#04,#5a,#04,#59,#08,#fa
	dw l8011
	db #57,#10,#59,#10,#52,#10,#52,#10
	db #57,#10,#fa
	dw l8025
	db #47,#08,#49,#08,#4a,#08,#50,#08
	db #fa
	dw l801b
	db #52,#30,#fa
	dw l8025
	db #55,#04,#53,#04,#55,#08,#57,#08
	db #55,#08,#53,#08,#52,#08,#fa
	dw l8011
	db #53,#10,#fa
	dw l8025
	db #55,#08,#53,#08,#52,#08,#50,#08
	db #fa
	dw l8011
	db #52,#10,#57,#10,#fa
	dw l8025
	db #50,#04,#52,#04,#50,#08,#fa
	dw l801b
	db #fd
	dw l82f4
	db #42,#30,#fa
	dw l8011
	db #52,#10,#fa
	dw l8025
	db #4a,#08,#50,#08,#52,#08,#54,#08
	db #fa
	dw l8011
	db #55,#10,#57,#10,#59,#10,#5a,#10
	db #fa
	dw l8025
	db #57,#08,#59,#08,#5a,#08,#57,#08
	db #fa
	dw l8011
	db #59,#10,#fa
	dw l8025
	db #57,#08,#59,#08,#fa
	dw l8011
	db #55,#10,#fa
	dw l8025
	db #45,#08,#47,#08,#49,#08,#4a,#08
	db #50,#08,#52,#08,#fa
	dw l8011
	db #53,#10,#fa
	dw l8025
	db #52,#04,#53,#04,#52,#08,#fa
	dw l8011
	db #50,#10,#55,#10,#4a,#10,#49,#10
	db #fa
	dw l801b
	db #4a,#30,#fa
	dw l8011
	db #47,#10,#fa
	dw l8025
	db #52,#08,#50,#08,#fa
	dw l8011
	db #52,#10,#47,#10,#fa
	dw l8025
	db #53,#08,#52,#08,#fa
	dw l8011
	db #53,#10,#fa
	dw l8025
	db #47,#08,#52,#08,#46,#08,#50,#08
	db #47,#08,#4a,#08,#fa
	dw l801b
	db #49,#30,#fa
	dw l8025
	db #42,#08,#44,#08,#46,#08,#47,#08
	db #49,#08,#4a,#08,#fa
	dw l8011
	db #50,#10,#4a,#10,#49,#10,#fa
	dw l8025
	db #4a,#02,#49,#02,#4a,#04,#50,#04
	db #52,#04,#fa
	dw l8011
	db #47,#10,#46,#10,#fa
	dw l801b
	db #fd
	dw l82eb
	db #4a,#30,#f9
	dw l8046
.l81d8
	db #fa
	dw l801b
	db #fb
	dw l800d
	db #37,#30,#35,#30,#36,#30,#fa
	dw l8011
	db #32,#10,#fa
	dw l8025
	db #42,#08,#40,#08,#3a,#08,#39,#08
	db #fa
	dw l801b
	db #fd
	dw l82d9
	db #37,#20,#39,#10,#3a,#20,#fa
	dw l8011
	db #37,#10,#39,#10,#36,#10,#37,#10
	db #32,#10,#fa
	dw l8025
	db #42,#08,#40,#08,#3a,#08,#39,#08
	db #fa
	dw l801b
	db #37,#30,#35,#30,#33,#30,#fa
	dw l8011
	db #32,#10,#fa
	dw l8025
	db #42,#08,#40,#08,#3b,#08,#39,#08
	db #fa
	dw l801b
	db #fe
	dw l82d0
	db #3b,#20,#fa
	dw l8011
	db #37,#10,#40,#10,#39,#10,#35,#10
	db #3a,#10,#34,#10,#fe
	dw l82e2
	db #35,#10,#3a,#10,#fa
	dw l801b
	db #2a,#20,#4a,#30,#fa
	dw l8011
	db #49,#10,#47,#10,#45,#10,#47,#10
	db #44,#10,#40,#10,#fa
	dw l801b
	db #45,#30,#fa
	dw l8011
	db #49,#10,#47,#10,#45,#10,#fa
	dw l801b
	db #47,#20,#fa
	dw l8011
	db #45,#10,#43,#10,#42,#10,#43,#10
	db #45,#10,#3a,#10,#42,#10,#40,#10
	db #fd
	dw l82c7
	db #fa
	dw l801b
	db #3b,#30,#40,#30,#fa
	dw l8011
	db #3a,#10,#39,#10,#37,#10,#42,#10
	db #fa
	dw l8025
	db #39,#08,#37,#08,#36,#08,#34,#08
	db #fa
	dw l801b
	db #32,#30,#fa
	dw l8011
	db #33,#10,#32,#10,#30,#10,#2a,#10
	db #30,#10,#32,#10,#37,#10,#fa
	dw l801b
.l82c7 equ $ + 3
	db #27,#20,#ff,#fa
	dw l801b
	db #fb
	dw l800d
.l82d0 equ $ + 3
	db #32,#30,#ff,#fa
	dw l801b
	db #fb
	dw l800d
.l82d9 equ $ + 3
	db #42,#20,#ff,#fa
	dw l801b
	db #fb
	dw l800d
.l82e2 equ $ + 3
	db #3a,#20,#ff,#fa
	dw l8011
	db #fb
	dw l800d
.l82eb equ $ + 3
	db #39,#10,#ff,#fa
	dw l801b
	db #fb
	dw l800d
.l82f4 equ $ + 3
	db #47,#30,#ff,#fa
	dw l801b
	db #fb
	dw l800d
	db #4a,#30,#ff
;
; #24d8
; ld hl,#8000
; ld a,#0b
; ld (#1086),a
; call #103f
;
; call &1376
;
.init_music
;
	ld hl,l8000
	ld a,#1		; modified by Megachur #0b
	ld (l1086),a
	jp l103f
;
.music_info
	db "Abadia del Crimen (1988)(Opera Soft)()",0
	db "",0

	read "music_end.asm"
