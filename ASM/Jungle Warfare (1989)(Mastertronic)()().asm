; Music of Jungle Warfare (1989)(Mastertronic)()()
; Ripped by Megachur the 15/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JUNGLEWA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #9d22
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.init_music
;
	ld hl,#0000
	ld (la1dc),hl
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,la34b
	add hl,bc
	ld a,(hl)
	ld (l9e0b),a
	inc hl
	ld ix,l9d7b
	ld c,#21
	ld a,#03
.l9d41
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
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
	jr nz,l9d41
	ld (la045),a
	inc a
	ld (l9dde),a
	ld (la1dc),a
	ret
.l9d7b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.l9d9c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.l9dbd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
.l9dde
	db #00
;
.play_music
;
	call la22f
	ld a,(la1dc)
	and a
	jp z,l9e3b
.l9dea equ $ + 1
	ld a,#00
	ld (l9e37),a
	ld hl,l9dde
	dec (hl)
	jr nz,l9e0f
	ld b,(hl)
	ld ix,l9d7b
	call l9f7e
	ld ix,l9d9c
	call l9f7e
	ld ix,l9dbd
	call l9f7e
.l9e0b equ $ + 1
	ld a,#01
	ld (l9dde),a
.l9e0f
	ld ix,l9d7b
	call la012
	ld (la0e2),hl
	ld (la0ea),a
	ld ix,l9d9c
	call la012
	ld (la0e4),hl
	ld (la0eb),a
	ld ix,l9dbd
	call la012
	ld (la0e6),hl
	ld (la0ec),a
.l9e37 equ $ + 1
	ld a,#00
	ld (la0e8),a
.l9e3b
	ld a,(la1dd)
	and a
	jr z,l9e6b
	ld hl,(la0ef)
	ld (la0e2),hl
	ld hl,(la0f3)
	ld (la0e6),hl
	ld a,(la0f5)
	ld (la0e8),a
.l9e55 equ $ + 2
	ld a,(la0e9)
	or #2d
	ld hl,la0f6
	and (hl)
	ld (la0e9),a
	ld a,(la0f7)
	ld (la0ea),a
	ld a,(la0f9)
	ld (la0ec),a
.l9e6b
	ld a,(la1dc)
	ld hl,la1dd
	or (hl)
	ret z
	ld hl,la0ed
	ld d,#0b
.l9e78
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
	jp p,l9e78
	ret
.l9e99
	ld de,#0d00
.l9e9c
	call l9ea6
	dec d
	jp p,l9e9c
	ld de,#073f
.l9ea6
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
.stop_music
.l9ec1
;
	ld hl,#0000
	ld (la1dc),hl
	call l9e99
	xor a
	ld (la0ea),a
	ld (la0eb),a
	ld (la0ec),a
	ret
	db #a3,#91,#95,#9a,#78,#8d,#8c,#0f
	db #7b,#73,#4e,#38,#60,#90,#04,#94
	db #93,#98
	pop hl
	jp l9ec1
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
	jr nz,l9f0d
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l9f0d
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l9f8b
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,la0ad
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l9f8b
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,la0ad
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l9f8b
	ld hl,la0ad
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l9f8b
	ld a,(de)
	inc de
	ld (la045),a
	jr l9f8b
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l9f8b
	ld (ix+#1d),b
	jr l9f8b
	ld (ix+#1d),#40
	jr l9f8b
	set 1,(ix+#00)
	jr l9f8b
	ld (ix+#1f),#ff
	jr l9f8b
.l9f7e
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l9f8b
	ld a,(de)
	inc de
	and a
	jp m,l9fd7
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l9f9d
	ld (l9dea),a
.l9f9d
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
	set 5,(ix+#00)
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l9fd6
	ld a,(la1dd)
	and a
	jr nz,l9fd6
	ld (ix+#1f),#ff
.l9fd6
	ret
.l9fd7
	cp #b8
	jr c,la00a
	add #20
	jr c,l9feb
	add #10
	jr c,l9ff2
	add #19
	ld (l9e0b),a
	jp l9f8b
.l9feb
	inc a
	ld (ix+#11),a
	jp l9f8b
.l9ff2
	ld hl,la197
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp l9f8b
.la00a
	ld hl,l9e55
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.la012
	ld c,(ix+#00)
	bit 5,c
	jr z,la044
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,la03e
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,la03e
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.la03e
	ld a,(ix+#18)
	ld (ix+#13),a
.la045 equ $ + 1
.la044
	ld a,#00
	add (ix+#12)
	ld hl,la0fb
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,la0a3
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,la06c
	bit 0,c
	jr nz,la08a
.la06c
	bit 5,l
	jr nz,la07c
	sub (ix+#1b)
	jr nc,la087
	set 5,(ix+#1d)
	sub a
	jr la087
.la07c
	add (ix+#1b)
	cp b
	jr c,la087
	res 5,(ix+#1d)
	ld a,b
.la087
	ld (ix+#1c),a
.la08a
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,la095
	dec d
.la095
	add #a0
	jr c,la0a1
.la099
	sla e
	rl d
	add #18
	jr nc,la099
.la0a1
	add hl,de
	ex de,hl
.la0a3
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.la0ad equ $ + 1
	ld a,#38
	jr nz,la0ba
	ld a,(l9dea)
	xor #08
	ld (l9e37),a
	ld a,#07
.la0ba
	ld hl,la0e9
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,la0dd
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#20)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l9e37),a
.la0dd
	ex de,hl
	ld a,(ix+#13)
	ret
.la0e9 equ $ + 7
.la0e8 equ $ + 6
.la0e6 equ $ + 4
.la0e4 equ $ + 2
.la0e2
	db #00,#00,#00,#00,#00,#00,#00,#3f
.la0f0 equ $ + 6
.la0ef equ $ + 5
.la0ed equ $ + 3
.la0ec equ $ + 2
.la0eb equ $ + 1
.la0ea
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.la0f9 equ $ + 7
.la0f7 equ $ + 5
.la0f6 equ $ + 4
.la0f5 equ $ + 3
.la0f3 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.la0fb
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
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
	dw #0017,#0016
.la197
	dw la1ae,la1b1,la1b9,la1ca
	dw la1ca,la1ca,la1cb,la1d0
	dw la1d0,la1d0,la1d1
.la1b1 equ $ + 4
.la1ae equ $ + 1
	db #00,#0c,#87,#03,#0f,#0e,#0d,#0c
.la1b9 equ $ + 4
	db #0b,#0a,#87,#01,#0f,#0e,#0c,#0b
	db #0d,#0c,#0a,#09,#0b,#0a,#08,#07
.la1cb equ $ + 6
.la1ca equ $ + 5
	db #09,#08,#06,#05,#87,#01,#0b,#0f
.la1d1 equ $ + 4
.la1d0 equ $ + 3
	db #0b,#08,#87,#01,#0e,#0d,#0c,#0b
.la1dc equ $ + 7
.music_end equ $ + 7
	db #0a,#09,#0b,#0a,#09,#08,#87,#00
.la1dd
	db #00
	ld hl,la1dd
	ld (hl),#00
	ld hl,la2cd
	add a
	add l
	ld l,a
	jr nc,la1ec
	inc h
.la1ec
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,la319
.la1f4
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz la1f4
	ld a,(la31a)
	ld (la32a),a
	ld hl,(la31b)
	ld (la0ef),hl
	ld de,(la31d)
	ld (la0f3),de
	ld a,l
	ld (la0f5),a
	ld a,(la320)
	ld (la0f6),a
	ld a,(la31f)
	ld e,a
	ld d,#0c
	call l9ea6
	ld a,(la329)
	ld e,a
	ld d,#0d
	call l9ea6
	ld hl,la1dd
	inc (hl)
	ret
.la22f
	call la32c
	ld a,(la1dd)
	and a
	ret z
	ld a,(la319)
	and a
	jr nz,la243
	ld (la1dd),a
	jp l9e99
.la243
	dec a
	ld (la319),a
	ld a,(la32a)
	and a
	jr nz,la27c
	ld a,(la327)
	and a
	ret z
	dec a
	ld (la327),a
	ld a,(la31a)
	ld (la32a),a
	ld a,(la328)
	and a
	jr z,la265
	ld a,(la347)
.la265
	ld b,a
	ld a,(la31b)
	add b
	ld (la0ef),a
	ld a,(la31c)
	add b
	and #0f
	ld (la0f0),a
	ld hl,(la31d)
	ld (la0f3),hl
.la27c
	ld hl,la32a
	dec (hl)
	ld a,(la325)
	and a
	jr z,la2a3
	jp p,la296
	ld hl,(la0ef)
	ld de,(la321)
	add hl,de
	ld (la0ef),hl
	jr la2a3
.la296
	ld hl,(la0ef)
	ld de,(la321)
	and a
	sbc hl,de
	ld (la0ef),hl
.la2a3
	ld a,(la326)
	and a
	jr z,la2c6
	jp p,la2b9
	ld hl,(la0f3)
	ld de,(la323)
	add hl,de
	ld (la0f3),hl
	jr la2c6
.la2b9
	ld hl,(la0f3)
	ld de,(la323)
	and a
	sbc hl,de
	ld (la0f3),hl
.la2c6
	ld a,(la0ef)
	ld (la0f5),a
	ret
.la2cd
	dw la2d5,la2e6,la2f7,la308
.la2d5
	db #63,#00,#40,#00,#20,#00,#2d,#f2
	db #01,#00,#01,#00,#ff,#ff,#ff,#00
.la2e6 equ $ + 1
	db #00,#0c,#14,#50,#00,#08,#00,#28
	db #f2,#09,#00,#09,#00,#ff,#ff,#0a
.la2f7 equ $ + 2
	db #00,#00,#0c,#06,#01,#02,#11,#02
	db #19,#f2,#c8,#00,#cc,#00,#ff,#ff
.la308 equ $ + 3
	db #ff,#00,#00,#32,#06,#81,#00,#86
	db #00,#23,#d2,#24,#00,#29,#00,#ff
.la31c equ $ + 7
.la31b equ $ + 6
.la31a equ $ + 5
.la319 equ $ + 4
	db #ff,#15,#01,#00,#00,#00,#00,#00
.la323 equ $ + 6
.la321 equ $ + 4
.la320 equ $ + 3
.la31f equ $ + 2
.la31d
	db #00,#00,#00,#00,#00,#00,#00,#00
.la32a equ $ + 5
.la329 equ $ + 4
.la328 equ $ + 3
.la327 equ $ + 2
.la326 equ $ + 1
.la325
	db #00,#00,#00,#00,#00,#00,#00
.la32c
	ld a,(la347)
	and #48
	adc #38
	sla a
	sla a
	ld hl,la34a
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.la34a equ $ + 3
.la347
	db #ff,#80,#1b,#34
.la34b
	db #04
	dw la38a,la360,la3a2
	db #04
	dw la4b4,la4b6,la4b8
	db #04
	dw la512,la514,la516
.la360
	dw la570,la3c8,la3c8,la3c8
	dw la3c8,la3e1,la3e1,la3e1
	dw la3e1,la3f2,la3f2,la573
	dw la3c8,la3c8,la3c8,la3c8
	dw la3e1,la3e1,la3e1,la3e1
	dw #0000
.la38a
	dw la570,la403,la403,la42c
	dw la42c,la451,la573,la403
	dw la403,la42c,la42c,#0000
.la3a2
	dw la4ab,la4ab,la4ab,la4ab
	dw la495,la495,la495,la495
	dw la495,la495,la495,la495
	dw la495,la495,la495,la495
	dw la495,la495,#0000
.la3c8
	db #8a,#88,#01,#01,#82,#90,#d2,#e1
	db #11,#1d,#11,#1d,#11,#1d,#11,#1d
	db #11,#1d,#11,#1d,#11,#1d,#11,#1d
.la3e1 equ $ + 1
	db #87,#0c,#18,#0c,#18,#0c,#18,#0c
	db #18,#11,#1d,#11,#1d,#11,#1d,#11
.la3f2 equ $ + 2
	db #1d,#87,#13,#1f,#13,#1f,#13,#1f
	db #13,#1f,#13,#1f,#13,#1f,#13,#1f
.la403 equ $ + 3
	db #13,#1f,#87,#8a,#88,#01,#02,#82
	db #d1,#e1,#0c,#18,#1d,#1d,#21,#e3
	db #24,#e5,#27,#e1,#1d,#1d,#21,#e3
	db #24,#e5,#26,#e1,#1d,#1d,#21,#e3
	db #24,#e5,#25,#e1,#1d,#1d,#20,#e3
.la42c equ $ + 4
	db #25,#e1,#24,#87,#d2,#88,#01,#01
	db #e1,#24,#24,#24,#e3,#28,#e5,#29
	db #e1,#21,#21,#21,#e3,#28,#e5,#29
	db #e1,#24,#24,#24,#e3,#28,#e5,#29
	db #e1,#21,#21,#21,#e3,#29,#e5,#28
.la451 equ $ + 1
	db #87,#da,#e0,#81,#0e,#13,#17,#1a
	db #13,#17,#1a,#1f,#17,#1a,#1f,#23
	db #1a,#1f,#23,#26,#1f,#23,#26,#2b
	db #23,#26,#2b,#2f,#26,#2b,#2f,#32
	db #2b,#2f,#32,#37,#1a,#1f,#23,#26
	db #1f,#23,#26,#2b,#23,#26,#2b,#2f
	db #26,#2b,#2f,#32,#2b,#2f,#32,#37
	db #2f,#32,#37,#3b,#32,#37,#3b,#3e
.la495 equ $ + 5
	db #37,#3b,#3e,#43,#87,#8b,#d6,#e7
	db #8d,#3f,#d2,#e5,#8c,#4d,#d6,#e1
	db #8d,#3f,#e7,#8d,#3f,#d2,#e3,#8c
.la4ab equ $ + 3
	db #4d,#41,#87,#ff,#8a,#88,#01,#01
	db #82,#d0,#05,#87
.la4b4
	dw la4ba
.la4b6
	dw la4d0
.la4b8
	dw la4f1
.la4ba
	db #8a,#88,#01,#01,#82,#d2,#e1,#13
	db #13,#13,#13,#13,#13,#13,#13,#15
.la4d0 equ $ + 6
	db #15,#15,#15,#e7,#26,#8e,#8a,#88
	db #01,#01,#82,#da,#e0,#0e,#13,#17
	db #1a,#13,#17,#1a,#1f,#17,#1a,#1f
	db #23,#1a,#1f,#23,#26,#1a,#1e,#21
.la4f1 equ $ + 7
	db #26,#1e,#21,#26,#2a,#e7,#2b,#8a
	db #88,#01,#01,#82,#d6,#e0,#1a,#1f
	db #23,#26,#1f,#23,#26,#2b,#23,#26
	db #2b,#2f,#26,#2b,#ec,#bf,#26,#2a
	db #2d,#32,#2a,#2d,#32,#36,#e7,#37
.la512
	dw la518
.la514
	dw la52e
.la516
	dw la54f
.la518
	db #8a,#88,#01,#01,#82,#d2,#e1,#13
	db #13,#13,#13,#13,#13,#13,#13,#15
.la52e equ $ + 6
	db #15,#15,#15,#e7,#1a,#8e,#8a,#88
	db #01,#01,#82,#da,#e0,#26,#23,#1f
	db #1a,#23,#1f,#1a,#17,#1f,#1a,#17
	db #13,#1a,#17,#13,#0e,#21,#1e,#0e
.la54f equ $ + 7
	db #16,#1e,#0e,#16,#12,#e7,#1f,#8a
	db #88,#01,#01,#82,#d6,#e0,#32,#2f
	db #2b,#26,#2f,#2b,#26,#23,#2b,#26
	db #23,#1f,#26,#23,#1f,#1a,#2d,#2a
	db #1a,#22,#2a,#1a,#22,#1e,#e7,#2b
.la570
	db #89,#00,#87
.la573
	db #89,#01,#87
;
.music_info
	db "Jungle Warfare (1989)(Mastertronic)()",0
	db "",0

	read "music_end.asm"
