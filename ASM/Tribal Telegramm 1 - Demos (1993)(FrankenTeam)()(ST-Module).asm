; Music of Tribal Telegramm 1 - Demos (1993)(FrankenTeam)()(ST-Module)
; Ripped by Megachur the 25/12/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TRIBAT1D.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #9100

	read "music_header.asm"

	jr l9104
	jr l9113
.l9104
	call l912f
	ld hl,l9552
	ld de,l911c
	ld bc,#81ff
	jp #bcd7
.l9113
	ld hl,l9552
	call #bcdd
	jp l919b
.l911c
	push ix
	call l91b7
	pop ix
	ret
	jp l912f
	jp l91b7
	jp l919b
	ld h,(hl)
	inc b
;
.init_music
.l912f
;
	ld b,#03
	ld ix,l94fe
	ld iy,l942a
	ld de,#001c
.l913c
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l913c
	ld a,#05
	ld (l91df),a
	ld a,d
	ld (l91f3),a
	inc a
	ld (l91da),a
	ld a,#38
	ld (l91e4),a
	ld a,#ff
	ld (l9426),a
	ld (l9427),a
	ld (l9428),a
	ld (l9429),a
	ld a,#0c
	ld c,d
	call l9408
	ld a,#0d
	ld c,d
	jp l9408
;
.stop_music
.l919b
;
	ld a,#07
	ld c,#3f
	call l9408
	ld a,#08
	ld c,#00
	call l9408
	ld a,#09
	ld c,#00
	call l9408
	ld a,#0a
	ld c,#00
	jp l9408
;
.play_music
.l91b7
;
	ld hl,l91da
	dec (hl)
	ld ix,l94fe
	ld bc,l950c
	call l926d
	ld ix,l951a
	ld bc,l9528
	call l926d
	ld ix,l9536
	ld bc,l9544
	call l926d
.l91da equ $ + 1
	ld a,#00
	or a
	jr nz,l91e3
.l91df equ $ + 1
	ld a,#00
	ld (l91da),a
.l91e4 equ $ + 1
.l91e3
	ld a,#00
	ld hl,l9427
	cp (hl)
	jr z,l91f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l9408
.l91f3 equ $ + 1
.l91f2
	ld a,#00
	ld hl,l9426
	cp (hl)
	jr z,l9201
	ld (hl),a
	ld c,a
	ld a,#06
	call l9408
.l9202 equ $ + 1
.l9201
	ld a,#00
	ld hl,l9428
	cp (hl)
	jr z,l9210
	ld (hl),a
	ld c,a
	ld a,#0b
	call l9408
.l9211 equ $ + 1
.l9210
	ld a,#00
	ld hl,l9429
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l9408
.l921e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l931e
.l922d
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l9408
.l9247
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l925c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l925c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l9280
.l926d
	ld a,(l91da)
	or a
	jp nz,l931e
	dec (ix+#06)
	jp nz,l931e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l9280
	ld a,(hl)
	or a
	jr z,l921e
	cp #fe
	jr z,l922d
	cp #ff
	jr z,l9247
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l9430
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l92bc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l92bc
	and #7f
	ld (ix+#06),a
	jr l930f
.l92bc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l92d0
	ld (ix+#05),a
	ld (ix+#0a),d
.l92d0
	add a
	add a
	add a
	ld e,a
	ld hl,l9566
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l930f
	cp #f0
	jp z,l93c4
	cp #d0
	jp z,l93e0
	cp #b0
	jp z,l93e8
	cp #80
	jp nc,l93f0
	cp #10
	jr nz,l930f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l930f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l931e
	ld a,(ix+#17)
	or a
	jr nz,l9332
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l9332
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l935d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l9430
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l935d
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l9408
	ld c,h
	ld a,(ix+#03)
	call l9408
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l939b
	and #0f
	sub (ix+#0a)
	jr nc,l9391
	xor a
.l9391
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l9408
.l939b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l93b8
	ld b,a
	ld a,c
	ld (l91f3),a
	ld a,b
	sub #40
.l93b8
	ld (l93bf),a
	ld a,(l91e4)
.l93bf equ $ + 1
	bit 0,a
	ld (l91e4),a
	ret
.l93c4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l95e6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l930f
.l93e0
	inc hl
	ld a,(hl)
	ld (l91df),a
	jp l930f
.l93e8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l930f
.l93f0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l9211),a
	inc hl
	ld a,(hl)
	ld (l9202),a
	jp l930f
.l9408
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
.l9426
	rst #38
.l9427
	rst #38
.l9428
	rst #38
.l9429
	rst #38
.l942a
	ld b,(hl)
	sbc b
	ld h,c
	sbc b
	ld a,h
	sbc b
.l9430
	dw #0eee,#0e18,#0d4d,#0c8e
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
	dw #000f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l94fe equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l950c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l951a
	db #00,#00,#02,#03,#09,#00,#00,#00
.l9528 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9536 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l9544 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9552
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	db #53,#54,#2d,#4d,#6f,#64,#75,#6c
	db #65,#2e
.l9566
	db #06,#96,#46,#96,#66,#96,#00,#00
	db #86,#96,#c6,#96,#e6,#96,#00,#00
	db #06,#97,#46,#97,#66,#97,#00,#00
	db #ff,#8f,#21,#22,#70,#ee,#23,#56
	db #23,#91,#10,#90,#09,#0e,#23,#4e
	db #fe,#8f,#ca,#90,#98,#8e,#50,#30
	db #08,#cc,#4f,#96,#00,#7d,#b0,#18
	db #86,#97,#c6,#97,#66,#96,#18,#07
	db #e6,#97,#26,#98,#66,#96,#18,#07
	db #09,#66,#46,#b8,#66,#b6,#08,#18
	db #86,#28,#c6,#28,#66,#26,#16,#0a
	db #00,#60,#00,#60,#00,#60,#00,#00
	db #86,#b7,#66,#b8,#66,#b6,#00,#00
	db #00,#60,#00,#60,#00,#60,#00,#00
	db #00,#60,#00,#60,#00,#60,#00,#00
	db #00,#60,#00,#60,#00,#60,#00,#00
.l95e6
	db #46,#68,#46,#d7,#66,#d7,#e6,#28
	db #00,#60,#00,#60,#00,#60,#00,#60
	db #86,#68,#00,#60,#00,#60,#00,#60
	db #00,#60,#00,#60,#00,#60,#00,#60
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#40,#00,#80,#00,#c0,#00
	db #00,#01,#40,#01,#80,#01,#c0,#01
	db #00,#02,#40,#02,#80,#02,#c0,#02
	db #00,#03,#40,#03,#80,#03,#c0,#03
	db #00,#04,#40,#04,#80,#04,#c0,#04
	db #00,#05,#40,#05,#80,#05,#c0,#05
	db #00,#06,#40,#06,#80,#06,#c0,#06
	db #00,#07,#40,#07,#80,#07,#c0,#07
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#03,#00
	db #00,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #04,#06,#07,#09,#0c,#11,#17,#1d
	db #15,#10,#0c,#09,#06,#05,#04,#04
	db #03,#03,#03,#02,#02,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0e,#0e,#0e,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#07,#06,#06,#06,#05,#05,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0e,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0b,#0a,#09,#07,#05,#07,#09,#0b
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #00,#97,#98,#00,#b1,#98,#00,#b1
	db #98,#00,#d3,#98,#00,#d3,#98,#00
	db #f1,#98,#00,#33,#99,#00,#81,#99
	db #80,#49,#98,#00,#cf,#99,#00,#eb
	db #99,#00,#eb,#99,#00,#0f,#9a,#00
	db #0f,#9a,#00,#51,#9a,#00,#ae,#9a
	db #00,#51,#9a,#80,#64,#98,#00,#0b
	db #9b,#00,#1f,#9b,#00,#47,#9b,#00
	db #71,#9b,#00,#71,#9b,#00,#99,#9b
	db #00,#c3,#9b,#00,#c3,#9b,#80,#7f
	db #98,#3a,#06,#00,#46,#86,#41,#84
	db #3a,#86,#46,#86,#41,#84,#38,#86
	db #44,#86,#3f,#84,#36,#86,#42,#86
	db #3d,#84,#ff,#3a,#04,#00,#41,#84
	db #3a,#84,#41,#84,#3a,#84,#41,#84
	db #3a,#84,#41,#84,#38,#84,#3f,#84
	db #38,#84,#3f,#84,#36,#84,#3d,#84
	db #36,#84,#3d,#84,#ff,#41,#04,#07
	db #3d,#84,#3a,#8e,#3a,#82,#3d,#82
	db #41,#82,#3f,#82,#3d,#82,#3f,#88
	db #44,#86,#44,#82,#42,#84,#42,#84
	db #41,#88,#ff,#22,#02,#00,#22,#82
	db #22,#82,#22,#82,#22,#82,#22,#82
	db #22,#82,#22,#82,#22,#82,#22,#82
	db #22,#82,#22,#82,#22,#82,#22,#82
	db #22,#82,#22,#82,#20,#82,#20,#82
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #20,#82,#20,#82,#1e,#82,#1e,#82
	db #1e,#82,#1e,#82,#1e,#82,#1e,#82
	db #1e,#82,#1e,#82,#ff,#46,#02,#08
	db #22,#02,#00,#49,#02,#08,#46,#82
	db #4b,#82,#4d,#82,#22,#02,#00,#22
	db #82,#22,#82,#22,#82,#22,#82,#4d
	db #02,#08,#4e,#82,#4d,#82,#4b,#82
	db #49,#82,#4b,#82,#20,#02,#00,#48
	db #02,#08,#20,#02,#00,#44,#02,#08
	db #20,#02,#00,#20,#82,#20,#82,#46
	db #02,#08,#1e,#02,#00,#1e,#82,#49
	db #02,#08,#48,#82,#46,#82,#48,#82
	db #49,#82,#ff,#46,#02,#08,#22,#02
	db #00,#49,#02,#08,#46,#82,#4b,#82
	db #4d,#82,#22,#02,#00,#22,#82,#22
	db #82,#22,#82,#22,#82,#4d,#02,#08
	db #4e,#82,#4d,#82,#4b,#82,#49,#82
	db #50,#82,#20,#02,#00,#4b,#02,#08
	db #20,#02,#00,#48,#02,#08,#20,#02
	db #00,#20,#82,#44,#02,#08,#46,#82
	db #1e,#02,#00,#1e,#82,#49,#02,#08
	db #48,#82,#46,#82,#44,#82,#48,#82
	db #ff,#00,#02,#3d,#06,#00,#3a,#86
	db #46,#84,#3d,#86,#3a,#86,#46,#84
	db #3c,#86,#38,#86,#44,#84,#3a,#86
	db #36,#86,#42,#82,#ff,#00,#02,#3d
	db #04,#00,#46,#84,#3d,#84,#46,#84
	db #3d,#84,#46,#84,#3d,#84,#46,#84
	db #3c,#84,#44,#84,#3c,#84,#44,#84
	db #3a,#84,#42,#84,#3a,#84,#42,#82
	db #ff,#3a,#02,#00,#3d,#82,#41,#82
	db #46,#82,#3a,#82,#3d,#82,#41,#82
	db #46,#82,#3a,#82,#3d,#82,#41,#82
	db #46,#82,#3a,#82,#3d,#82,#41,#82
	db #46,#82,#38,#82,#3c,#82,#3f,#82
	db #44,#82,#38,#82,#3c,#82,#3f,#82
	db #44,#82,#36,#82,#3a,#82,#3d,#82
	db #42,#82,#36,#82,#3a,#82,#3d,#82
	db #42,#82,#ff,#2e,#02,#01,#3d,#02
	db #00,#3a,#02,#02,#2e,#02,#01,#2e
	db #82,#3d,#02,#00,#3a,#02,#02,#46
	db #02,#00,#2e,#02,#01,#3d,#02,#00
	db #3a,#02,#02,#2e,#02,#01,#2e,#82
	db #3d,#02,#00,#3a,#02,#02,#46,#02
	db #00,#2e,#02,#01,#3c,#02,#00,#3a
	db #02,#02,#2e,#02,#01,#2e,#82,#3c
	db #02,#00,#3a,#02,#02,#44,#02,#00
	db #2e,#02,#01,#3a,#02,#00,#3a,#02
	db #02,#2e,#02,#01,#2e,#82,#3a,#02
	db #00,#3a,#02,#02,#42,#02,#00,#ff
	db #2e,#02,#01,#3d,#02,#00,#3a,#02
	db #02,#2e,#02,#01,#2e,#82,#3d,#02
	db #00,#3a,#02,#02,#46,#02,#00,#2e
	db #02,#01,#3d,#02,#00,#3a,#02,#02
	db #2e,#02,#01,#2e,#82,#3d,#02,#00
	db #3a,#02,#02,#46,#02,#00,#2e,#02
	db #01,#3c,#02,#00,#3a,#02,#02,#2e
	db #02,#01,#2e,#82,#3c,#02,#00,#3a
	db #02,#02,#44,#02,#00,#2e,#02,#01
	db #3a,#02,#00,#3a,#02,#02,#2e,#02
	db #01,#2e,#82,#3a,#02,#00,#3a,#02
	db #02,#42,#02,#00,#ff,#00,#04,#41
	db #06,#00,#3d,#8a,#41,#86,#3d,#8a
	db #3f,#86,#3c,#8a,#3d,#86,#3a,#86
	db #ff,#46,#04,#08,#49,#82,#46,#82
	db #4b,#82,#4d,#8c,#4d,#82,#4e,#82
	db #4d,#82,#4b,#82,#49,#82,#4b,#84
	db #48,#84,#44,#88,#46,#86,#49,#82
	db #48,#82,#46,#82,#48,#82,#49,#82
	db #ff,#46,#04,#08,#49,#82,#46,#82
	db #4b,#82,#4d,#8c,#4d,#82,#4e,#82
	db #4d,#82,#4b,#82,#49,#82,#50,#84
	db #4b,#84,#48,#86,#44,#82,#46,#86
	db #49,#82,#48,#82,#46,#82,#44,#82
	db #48,#82,#ff,#46,#04,#08,#49,#82
	db #46,#82,#4b,#82,#4d,#8c,#4d,#82
	db #4e,#82,#4d,#82,#4b,#82,#49,#82
	db #4b,#84,#48,#84,#44,#88,#46,#86
	db #49,#82,#48,#82,#46,#82,#48,#82
	db #49,#82,#ff,#3a,#04,#00,#41,#82
	db #46,#82,#3a,#84,#41,#84,#3a,#84
	db #41,#82,#46,#82,#3a,#84,#41,#84
	db #38,#84,#3f,#82,#44,#82,#38,#84
	db #3f,#84,#36,#84,#3d,#82,#42,#82
	db #36,#84,#3d,#84,#ff,#3a,#04,#00
	db #41,#82,#46,#82,#3a,#82,#22,#82
	db #41,#84,#3a,#84,#41,#82,#46,#82
	db #3a,#84,#41,#84,#38,#84,#3f,#82
	db #44,#82,#38,#84,#3f,#82,#20,#82
	db #36,#84,#3d,#82,#42,#82,#36,#82
	db #1e,#82,#3d,#84,#ff
;
.music_info
	db "Tribal Telegramm 1 - Demos (1993)(FrankenTeam)()",0
	db "ST-Module",0

	read "music_end.asm"
