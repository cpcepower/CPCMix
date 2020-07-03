; Music of Tribal Mag 2 - Hardware (1994)(FrankenTeam)()(ST-Module)
; Ripped by Megachur the 07/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TRIBM2HA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
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
	db #66,#04
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
	ld a,#04
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
.l9429 equ $ + 3
.l9428 equ $ + 2
.l9427 equ $ + 1
.l9426
	db #ff,#ff,#ff,#ff
.l942a
	dw l9686,l96a7,l96c8
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
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l9566 equ $ + 4
	db #75,#6c,#65,#2e,#06,#96,#46,#96
	db #66,#96,#00,#00,#00,#90,#45,#de
	db #54,#b0,#4e,#4f,#49,#e3,#45,#44
	db #20,#92,#00,#ff,#ff,#8f,#21,#22
	db #70,#ee,#23,#56,#23,#91,#10,#90
	db #09,#0e,#23,#4e,#fe,#8f,#ca,#90
	db #98,#8e,#50,#30,#08,#cc,#4f,#96
	db #00,#7d,#b0,#18,#ec,#8e,#a0,#c0
	db #08,#66,#4d,#4f,#06,#90,#af,#a8
	db #75,#8e,#f0,#30,#09,#66,#46,#47
	db #66,#47,#00,#00,#00,#60,#00,#60
	db #00,#60,#00,#00,#00,#60,#00,#60
	db #00,#60,#00,#00,#86,#b8,#c6,#b8
	db #e6,#b7,#00,#00,#00,#60,#00,#60
	db #00,#60,#00,#00,#00,#60,#00,#60
	db #00,#60,#00,#00,#00,#60,#00,#60
.l95e6 equ $ + 4
	db #00,#60,#00,#00,#a6,#d7,#e6,#b8
	db #06,#b9,#26,#b9,#46,#b9,#00,#60
	db #46,#68,#00,#60,#66,#b9,#00,#60
	db #86,#b9,#a6,#b9,#c6,#b9,#00,#60
	db #00,#60,#00,#60,#00,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0c,#0b,#0a,#08,#07,#07,#08,#08
	db #09,#09,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #03,#02,#02,#02,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9686 equ $ + 4
	db #00,#00,#00,#00,#07,#e9,#96,#07
	db #01,#97,#07,#19,#97,#07,#31,#97
	db #07,#49,#97,#07,#61,#97,#07,#79
	db #97,#07,#91,#97,#07,#a9,#97,#07
.l96a7 equ $ + 5
	db #bf,#97,#80,#86,#96,#07,#d7,#97
	db #07,#f1,#97,#07,#0b,#98,#07,#25
	db #98,#07,#3f,#98,#07,#59,#98,#07
	db #73,#98,#07,#8d,#98,#07,#a9,#98
.l96c8 equ $ + 6
	db #07,#c5,#98,#80,#a7,#96,#07,#df
	db #98,#07,#f7,#98,#07,#0f,#99,#07
	db #27,#99,#07,#3f,#99,#07,#57,#99
	db #07,#6f,#99,#07,#87,#99,#07,#9d
	db #99,#07,#b5,#99,#80,#c8,#96,#00
	db #06,#3a,#06,#00,#3a,#86,#32,#86
	db #3e,#86,#3e,#86,#37,#86,#37,#86
	db #2e,#86,#3c,#86,#3c,#84,#ff,#2d
	db #06,#00,#3c,#86,#3c,#86,#30,#86
	db #3f,#86,#3f,#86,#35,#86,#35,#86
	db #2e,#86,#3a,#86,#3a,#84,#ff,#2e
	db #06,#00,#3e,#86,#3e,#86,#32,#86
	db #43,#86,#43,#86,#34,#86,#34,#86
	db #2e,#86,#37,#86,#37,#84,#ff,#2d
	db #06,#00,#39,#86,#39,#86,#30,#86
	db #3c,#86,#3c,#88,#35,#84,#32,#86
	db #2d,#86,#35,#86,#35,#84,#ff,#2b
	db #06,#00,#35,#88,#3a,#86,#32,#86
	db #32,#86,#24,#86,#34,#86,#34,#86
	db #2b,#86,#3a,#86,#3a,#82,#ff,#29
	db #06,#00,#35,#86,#35,#86,#2d,#86
	db #39,#86,#39,#86,#32,#86,#32,#86
	db #29,#86,#35,#86,#35,#84,#ff,#27
	db #06,#00,#37,#86,#37,#86,#2b,#86
	db #3c,#86,#3c,#86,#30,#86,#30,#86
	db #27,#86,#33,#86,#33,#84,#ff,#26
	db #06,#00,#35,#88,#3a,#86,#2e,#86
	db #2e,#86,#26,#86,#2e,#86,#2e,#84
	db #26,#86,#2e,#86,#2e,#84,#ff,#24
	db #08,#00,#33,#86,#33,#86,#2b,#86
	db #2b,#86,#1d,#86,#2d,#88,#33,#86
	db #29,#86,#29,#86,#ff,#00,#06,#2e
	db #06,#00,#2e,#86,#26,#86,#32,#86
	db #32,#86,#26,#86,#29,#86,#24,#86
	db #2e,#86,#33,#84,#ff,#00,#02,#32
	db #06,#00,#3e,#86,#3e,#86,#35,#86
	db #35,#86,#2e,#86,#3c,#86,#3c,#86
	db #30,#86,#3f,#86,#3f,#82,#ff,#00
	db #02,#30,#06,#00,#3f,#86,#3f,#86
	db #35,#86,#35,#86,#2e,#86,#3a,#86
	db #3a,#86,#32,#86,#3e,#86,#3e,#82
	db #ff,#00,#02,#32,#06,#00,#43,#86
	db #43,#86,#37,#86,#37,#86,#2e,#86
	db #37,#86,#37,#86,#30,#86,#3c,#86
	db #3c,#82,#ff,#00,#02,#30,#06,#00
	db #3c,#86,#3c,#86,#35,#86,#35,#86
	db #2d,#84,#32,#88,#35,#86,#2e,#86
	db #3a,#86,#3a,#82,#ff,#00,#02,#2e
	db #06,#00,#3a,#84,#35,#84,#2b,#86
	db #35,#86,#35,#86,#2b,#86,#3a,#86
	db #3a,#86,#30,#86,#30,#86,#ff,#00
	db #02,#2d,#06,#00,#39,#86,#39,#86
	db #30,#86,#30,#86,#29,#86,#35,#86
	db #35,#86,#2c,#86,#3b,#86,#3b,#82
	db #ff,#00,#02,#2b,#06,#00,#3c,#86
	db #3c,#86,#30,#86,#30,#86,#27,#86
	db #33,#86,#33,#86,#2a,#86,#39,#86
	db #39,#82,#ff,#00,#02,#29,#06,#00
	db #3a,#84,#35,#84,#26,#86,#35,#86
	db #35,#86,#27,#86,#33,#86,#33,#84
	db #27,#86,#33,#86,#33,#82,#ff,#00
	db #02,#27,#04,#00,#2e,#84,#2b,#86
	db #24,#86,#2e,#86,#2e,#86,#21,#86
	db #33,#84,#2d,#84,#1d,#86,#2d,#86
	db #2d,#84,#ff,#00,#02,#26,#06,#00
	db #32,#86,#32,#86,#29,#86,#29,#86
	db #2e,#86,#22,#86,#26,#86,#27,#86
	db #30,#86,#35,#82,#ff,#2e,#04,#00
	db #35,#86,#35,#86,#2e,#86,#3a,#86
	db #3a,#86,#30,#86,#3f,#86,#3f,#86
	db #37,#86,#37,#86,#ff,#00,#04,#35
	db #06,#00,#35,#86,#2d,#86,#3c,#86
	db #3c,#86,#32,#86,#3e,#86,#3e,#86
	db #35,#86,#35,#86,#ff,#00,#04,#37
	db #06,#00,#37,#86,#2e,#86,#3e,#86
	db #3e,#86,#30,#86,#3c,#86,#3c,#86
	db #34,#86,#34,#86,#ff,#00,#04,#35
	db #06,#00,#35,#86,#2d,#86,#39,#86
	db #39,#86,#2e,#86,#3a,#86,#3a,#86
	db #32,#86,#32,#86,#ff,#00,#04,#32
	db #06,#00,#32,#88,#2e,#86,#3a,#86
	db #3a,#86,#30,#86,#30,#86,#24,#86
	db #34,#86,#34,#84,#ff,#00,#04,#30
	db #06,#00,#30,#86,#29,#86,#35,#86
	db #35,#86,#2c,#86,#3b,#86,#3b,#86
	db #32,#86,#32,#86,#ff,#00,#04,#30
	db #06,#00,#30,#86,#27,#86,#37,#86
	db #37,#86,#2a,#86,#39,#86,#39,#86
	db #30,#86,#30,#86,#ff,#00,#04,#2e
	db #06,#00,#2e,#88,#29,#86,#3a,#86
	db #3a,#86,#2b,#86,#2b,#8a,#2b,#86
	db #2b,#86,#ff,#00,#04,#2b,#08,#00
	db #2e,#86,#27,#86,#33,#86,#33,#86
	db #29,#86,#29,#88,#21,#86,#33,#86
	db #33,#82,#ff,#22,#04,#00,#29,#86
	db #29,#86,#22,#86,#2e,#86,#2e,#86
	db #29,#86,#2e,#86,#22,#86,#2b,#86
	db #32,#86,#ff
;
.music_info
	db "Tribal Mag 2 - Hardware (1994)(FrankenTeam)()",0
	db "ST-Module",0

	read "music_end.asm"
