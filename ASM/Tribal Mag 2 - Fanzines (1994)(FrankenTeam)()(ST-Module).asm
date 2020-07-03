; Music of Tribal Mag 2 - Fanzines (1994)(FrankenTeam)()(ST-Module)
; Ripped by Megachur the 07/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TRIBM2FA.BIN"
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
	ld a,#07
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
	dw l9746,l976a,l978e
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
	db #70,#ee,#23,#56,#06,#96,#86,#96
	db #66,#96,#1a,#05,#a6,#96,#e6,#96
	db #66,#96,#07,#18,#06,#96,#06,#97
	db #66,#96,#08,#18,#ec,#8e,#a0,#c0
	db #08,#66,#4d,#4f,#06,#90,#af,#a8
	db #75,#8e,#f0,#30,#09,#66,#a6,#28
	db #66,#26,#00,#00,#06,#26,#46,#26
	db #c6,#28,#00,#00,#00,#80,#00,#80
	db #00,#80,#00,#00,#86,#d8,#c6,#d8
	db #e6,#d7,#00,#00,#00,#80,#00,#80
	db #00,#80,#00,#00,#00,#80,#00,#80
	db #00,#80,#00,#00,#00,#80,#00,#80
.l95e6 equ $ + 4
	db #00,#80,#00,#00,#e6,#28,#06,#29
	db #26,#29,#26,#d9,#46,#29,#66,#29
	db #86,#29,#00,#80,#a6,#29,#c6,#29
	db #26,#97,#a6,#d9,#c6,#d9,#00,#80
	db #00,#80,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#07,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#05,#05,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#0e,#0d,#0c,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0b,#0a,#0a,#09
	db #09,#08,#07,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9746 equ $ + 4
	db #00,#00,#00,#00,#00,#b2,#97,#00
	db #d4,#97,#00,#d4,#97,#00,#d4,#97
	db #00,#d4,#97,#00,#d4,#97,#00,#d4
	db #97,#00,#d4,#97,#00,#16,#98,#00
	db #16,#98,#00,#d4,#97,#80,#46,#97
.l976a
	db #00,#60,#98,#00,#84,#98,#00,#9c
	db #98,#00,#c0,#98,#00,#ca,#98,#00
	db #e6,#98,#00,#1c,#99,#00,#5e,#99
	db #00,#fd,#99,#00,#fd,#99,#00,#a8
.l978e equ $ + 4
	db #99,#80,#6a,#97,#00,#3f,#9a,#00
	db #3f,#9a,#00,#3f,#9a,#00,#49,#9a
	db #00,#ca,#9a,#00,#49,#9a,#00,#49
	db #9a,#00,#49,#9a,#00,#4b,#9b,#00
	db #4b,#9b,#00,#49,#9a,#80,#8e,#97
	db #2e,#04,#00,#3a,#84,#2e,#84,#2d
	db #84,#2b,#84,#37,#84,#2b,#84,#29
	db #84,#27,#84,#33,#84,#27,#84,#26
	db #84,#24,#84,#2b,#84,#30,#84,#29
	db #84,#ff,#2e,#02,#00,#35,#82,#3a
	db #82,#35,#82,#2e,#82,#35,#82,#2d
	db #82,#35,#82,#2b,#82,#32,#82,#37
	db #82,#32,#82,#2b,#82,#32,#82,#29
	db #82,#30,#82,#27,#82,#2e,#82,#33
	db #82,#2e,#82,#27,#82,#2e,#82,#26
	db #82,#2e,#82,#24,#82,#27,#82,#2b
	db #82,#2e,#82,#30,#82,#2d,#82,#29
	db #82,#2d,#82,#ff,#46,#06,#04,#c6
	db #04,#c1,#04,#c6,#04,#4a,#82,#46
	db #82,#c1,#04,#43,#82,#43,#82,#c3
	db #04,#c1,#04,#43,#82,#c3,#04,#c1
	db #04,#c3,#04,#45,#82,#46,#82,#c5
	db #04,#43,#82,#3f,#84,#bf,#04,#c1
	db #04,#c3,#04,#3f,#83,#c1,#04,#c3
	db #04,#c1,#04,#3f,#82,#41,#87,#c5
	db #04,#c6,#04,#48,#82,#ca,#04,#48
	db #82,#c6,#04,#45,#82,#ff,#00,#02
	db #35,#04,#00,#35,#84,#35,#84,#35
	db #84,#32,#84,#32,#84,#32,#84,#30
	db #84,#2e,#84,#2e,#84,#2e,#84,#2e
	db #84,#27,#84,#2e,#84,#2d,#84,#2d
	db #82,#ff,#3e,#04,#05,#3e,#82,#3e
	db #82,#3e,#82,#3f,#82,#3e,#82,#3c
	db #82,#3a,#84,#37,#8a,#37,#82,#3a
	db #a0,#ff,#3e,#04,#05,#3e,#82,#3e
	db #82,#3e,#82,#41,#82,#3e,#82,#3c
	db #82,#3a,#84,#37,#88,#be,#05,#bc
	db #05,#ba,#05,#bc,#05,#3a,#96,#37
	db #82,#3a,#82,#3c,#86,#ff,#3e,#18
	db #05,#41,#86,#43,#9a,#45,#88,#ff
	db #46,#18,#05,#46,#82,#45,#82,#43
	db #82,#c1,#05,#43,#8f,#43,#82,#41
	db #83,#3e,#83,#3f,#82,#3c,#83,#3e
	db #83,#3c,#82,#ff,#52,#06,#04,#d2
	db #04,#d2,#04,#52,#82,#51,#82,#4f
	db #82,#4d,#82,#4d,#83,#4f,#83,#4a
	db #82,#48,#83,#4a,#83,#46,#82,#46
	db #86,#c6,#04,#c8,#04,#4a,#82,#46
	db #82,#46,#82,#4a,#82,#4d,#83,#4b
	db #83,#4a,#82,#48,#83,#4a,#83,#4b
	db #82,#ff,#4a,#06,#04,#4d,#82,#4d
	db #82,#4a,#82,#cd,#04,#4a,#83,#4f
	db #86,#4f,#82,#cf,#04,#51,#82,#52
	db #82,#d2,#04,#d1,#04,#4f,#83,#4d
	db #82,#cd,#04,#4f,#82,#4b,#82,#cd
	db #04,#4a,#82,#cb,#04,#48,#82,#ca
	db #04,#46,#82,#46,#82,#46,#82,#4a
	db #82,#48,#82,#48,#82,#c8,#04,#46
	db #82,#c8,#04,#ff,#46,#06,#04,#c6
	db #04,#c1,#04,#c6,#04,#4a,#82,#46
	db #82,#c1,#04,#43,#82,#43,#82,#c3
	db #04,#c1,#04,#43,#82,#c3,#04,#c1
	db #04,#c3,#04,#45,#82,#46,#82,#c5
	db #04,#43,#82,#3f,#84,#bf,#04,#c1
	db #04,#c3,#04,#3f,#83,#c1,#04,#c3
	db #04,#c1,#04,#3f,#82,#41,#87,#c5
	db #04,#c6,#04,#48,#82,#ca,#04,#48
	db #82,#c6,#04,#45,#82,#ff,#46,#06
	db #b4,#00,#c6,#04,#c1,#04,#c6,#04
	db #4a,#82,#46,#82,#c1,#04,#43,#82
	db #43,#02,#b4,#01,#c3,#04,#c1,#04
	db #43,#82,#c3,#04,#c1,#04,#c3,#04
	db #45,#82,#46,#82,#c5,#04,#43,#82
	db #3f,#04,#b4,#02,#bf,#04,#c1,#04
	db #c3,#04,#3f,#83,#c1,#04,#c3,#04
	db #c1,#04,#3f,#82,#41,#07,#b4,#03
	db #c5,#04,#c6,#04,#48,#02,#b4,#04
	db #ca,#04,#48,#82,#c6,#f4,#0a,#45
	db #02,#04,#ff,#4a,#06,#04,#4d,#82
	db #4d,#82,#4a,#82,#cd,#04,#4a,#83
	db #4f,#86,#4f,#82,#cf,#04,#51,#82
	db #52,#82,#d2,#04,#d1,#04,#4f,#83
	db #4d,#82,#cd,#04,#4f,#82,#4b,#82
	db #cd,#04,#4a,#82,#cb,#04,#48,#82
	db #ca,#04,#46,#82,#46,#82,#46,#82
	db #4a,#82,#48,#82,#48,#82,#c8,#04
	db #46,#82,#c8,#04,#ff,#46,#1c,#06
	db #45,#84,#46,#9c,#48,#84,#ff,#c6
	db #06,#ca,#06,#cd,#06,#ca,#06,#c6
	db #06,#ca,#06,#cd,#06,#ca,#06,#c6
	db #06,#ca,#06,#cd,#06,#ca,#06,#c6
	db #06,#ca,#06,#c5,#06,#c8,#06,#c3
	db #06,#c6,#06,#ca,#06,#c6,#06,#c3
	db #06,#c6,#06,#ca,#06,#c6,#06,#c3
	db #06,#c6,#06,#ca,#06,#c6,#06,#c3
	db #06,#c6,#06,#c5,#06,#c6,#06,#bf
	db #06,#c3,#06,#c6,#06,#c3,#06,#bf
	db #06,#c3,#06,#c6,#06,#c3,#06,#bf
	db #06,#c3,#06,#c6,#06,#c3,#06,#bf
	db #06,#c3,#06,#be,#06,#bf,#06,#bc
	db #06,#bf,#06,#c3,#06,#bf,#06,#bc
	db #06,#bf,#06,#c3,#06,#bf,#06,#c5
	db #06,#c1,#06,#bc,#06,#c1,#06,#c5
	db #06,#c1,#06,#c5,#06,#c8,#06,#ff
	db #c6,#06,#ca,#06,#cd,#06,#ca,#06
	db #c6,#06,#ca,#06,#cd,#06,#ca,#06
	db #c6,#06,#ca,#06,#cd,#06,#ca,#06
	db #c6,#06,#ca,#06,#c5,#06,#c8,#06
	db #c3,#06,#c6,#06,#ca,#06,#c6,#06
	db #c3,#06,#c6,#06,#ca,#06,#c6,#06
	db #c3,#06,#c6,#06,#ca,#06,#c6,#06
	db #c3,#06,#c6,#06,#c5,#06,#c6,#06
	db #bf,#06,#c3,#06,#c6,#06,#c3,#06
	db #bf,#06,#c3,#06,#c6,#06,#c3,#06
	db #bf,#06,#c3,#06,#c6,#06,#c3,#06
	db #bf,#06,#c3,#06,#be,#06,#bf,#06
	db #bc,#06,#bf,#06,#c3,#06,#bf,#06
	db #bc,#06,#bf,#06,#c3,#06,#bf,#06
	db #c5,#06,#c1,#06,#bc,#06,#c1,#06
	db #c5,#06,#c1,#06,#c5,#06,#c8,#06
	db #ff,#2e,#02,#00,#35,#82,#3a,#82
	db #35,#82,#2e,#82,#35,#82,#2d,#82
	db #35,#82,#2b,#82,#32,#82,#37,#82
	db #32,#82,#2b,#82,#32,#82,#29,#82
	db #30,#82,#27,#82,#2e,#82,#33,#82
	db #2e,#82,#27,#82,#2e,#82,#26,#82
	db #2e,#82,#24,#82,#27,#82,#2b,#82
	db #2e,#82,#30,#82,#2d,#82,#29,#82
	db #2d,#82,#ff
;
.music_info
	db "Tribal Mag 2 - Fanzines (1994)(FrankenTeam)()",0
	db "ST-Module",0

	read "music_end.asm"