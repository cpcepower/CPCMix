; Music of Electric Monk Intro 2 Song 3 (1992)(TGS)(The Electric Monk)(ST-Module)
; Ripped by Megachur the 29/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ELEMI2S3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #5116

	read "music_header.asm"

	jp l5121
	jp l51a9
	jp l518d
	ld h,(hl)
	inc b
;
.init_music
.l5121
;
	ld b,#03
	ld ix,l54f0
	ld iy,l541c
	ld de,#001c
.l512e
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
	djnz l512e
	ld a,#08
	ld (l51d1),a
	ld a,d
	ld (l51e5),a
	inc a
	ld (l51cc),a
	ld a,#38
	ld (l51d6),a
	ld a,#ff
	ld (l5418),a
	ld (l5419),a
	ld (l541a),a
	ld (l541b),a
	ld a,#0c
	ld c,d
	call l53fa
	ld a,#0d
	ld c,d
	jp l53fa
;
.stop_music
.l518d
;
	ld a,#07
	ld c,#3f
	call l53fa
	ld a,#08
	ld c,#00
	call l53fa
	ld a,#09
	ld c,#00
	call l53fa
	ld a,#0a
	ld c,#00
	jp l53fa
;
.play_music
.l51a9
;
	ld hl,l51cc
	dec (hl)
	ld ix,l54f0
	ld bc,l54fe
	call l525f
	ld ix,l550c
	ld bc,l551a
	call l525f
	ld ix,l5528
	ld bc,l5536
	call l525f
.l51cc equ $ + 1
	ld a,#00
	or a
	jr nz,l51d5
.l51d1 equ $ + 1
	ld a,#00
	ld (l51cc),a
.l51d6 equ $ + 1
.l51d5
	ld a,#00
	ld hl,l5419
	cp (hl)
	jr z,l51e4
	ld (hl),a
	ld c,a
	ld a,#07
	call l53fa
.l51e5 equ $ + 1
.l51e4
	ld a,#00
	ld hl,l5418
	cp (hl)
	jr z,l51f3
	ld (hl),a
	ld c,a
	ld a,#06
	call l53fa
.l51f4 equ $ + 1
.l51f3
	ld a,#00
	ld hl,l541a
	cp (hl)
	jr z,l5202
	ld (hl),a
	ld c,a
	ld a,#0b
	call l53fa
.l5203 equ $ + 1
.l5202
	ld a,#00
	ld hl,l541b
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l53fa
.l5210
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l5310
.l521f
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
	jp l53fa
.l5239
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l524e
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l524e
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l5272
.l525f
	ld a,(l51cc)
	or a
	jp nz,l5310
	dec (ix+#06)
	jp nz,l5310
	ld l,(ix+#00)
	ld h,(ix+#01)
.l5272
	ld a,(hl)
	or a
	jr z,l5210
	cp #fe
	jr z,l521f
	cp #ff
	jr z,l5239
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l5422
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l52ae
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l52ae
	and #7f
	ld (ix+#06),a
	jr l5301
.l52ae
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l52c2
	ld (ix+#05),a
	ld (ix+#0a),d
.l52c2
	add a
	add a
	add a
	ld e,a
	ld hl,l5558
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
	jr z,l5301
	cp #f0
	jp z,l53b6
	cp #d0
	jp z,l53d2
	cp #b0
	jp z,l53da
	cp #80
	jp nc,l53e2
	cp #10
	jr nz,l5301
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l5301
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l5310
	ld a,(ix+#17)
	or a
	jr nz,l5324
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l5324
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l534f
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l5422
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l534f
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
	call l53fa
	ld c,h
	ld a,(ix+#03)
	call l53fa
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l538d
	and #0f
	sub (ix+#0a)
	jr nc,l5383
	xor a
.l5383
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l53fa
.l538d
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
	jr z,l53aa
	ld b,a
	ld a,c
	ld (l51e5),a
	ld a,b
	sub #40
.l53aa
	ld (l53b1),a
	ld a,(l51d6)
.l53b1 equ $ + 1
	bit 0,a
	ld (l51d6),a
	ret
.l53b6
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l55d8
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l5301
.l53d2
	inc hl
	ld a,(hl)
	ld (l51d1),a
	jp l5301
.l53da
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l5301
.l53e2
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l5203),a
	inc hl
	ld a,(hl)
	ld (l51f4),a
	jp l5301
.l53fa
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
.l541b equ $ + 3
.l541a equ $ + 2
.l5419 equ $ + 1
.l5418
	db #ff,#ff,#ff,#ff
.l541c
	dw l56f8,l571c,l5740
.l5422
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
.l54f0 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l54fe equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l550c
	db #00,#00,#02,#03,#09,#00,#00,#00
.l551a equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5528 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l5536 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l5558 equ $ + 4
	db #75,#6c,#65,#2e,#f2,#4f,#f2,#4f
	db #f2,#4f,#00,#00,#f2,#4f,#f2,#4f
	db #f2,#4f,#00,#00,#f8,#55,#38,#56
	db #58,#56,#1a,#00,#f2,#4f,#f2,#4f
	db #f2,#4f,#00,#00,#78,#56,#b8,#56
	db #d8,#56,#08,#18,#f2,#4f,#f2,#4f
	db #f2,#4f,#00,#00,#f2,#4f,#f2,#4f
	db #f2,#4f,#00,#00,#f2,#4f,#f2,#4f
	db #f2,#4f,#00,#00,#f2,#4f,#f2,#4f
	db #f2,#4f,#00,#00,#f2,#4f,#ce,#8e
	db #c8,#d4,#d6,#84,#c8,#d4,#ce,#8e
	db #c8,#d4,#d6,#84,#eb,#95,#f2,#4f
	db #ec,#95,#fa,#45,#ed,#95,#ec,#95
	db #ec,#95,#fa,#45,#eb,#95,#ec,#95
	db #ec,#95,#fa,#45,#ed,#95,#ec,#95
	db #ec,#95,#fa,#45,#eb,#95,#ec,#95
.l55d8 equ $ + 4
	db #f2,#4f,#00,#00,#f2,#4f,#f2,#4f
	db #f2,#4f,#f2,#4f,#f2,#4f,#f2,#4f
	db #f2,#4f,#f2,#4f,#f2,#4f,#f2,#4f
	db #f2,#4f,#f2,#4f,#f2,#4f,#f2,#4f
	db #f2,#4f,#f2,#4f,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0a,#0a,#09,#09
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0a,#0a,#0b,#0b
	db #0c,#0c,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56f8 equ $ + 4
	db #00,#00,#00,#00,#00,#64,#57,#00
	db #95,#57,#00,#64,#57,#00,#64,#57
	db #00,#64,#57,#00,#64,#57,#00,#95
	db #57,#00,#64,#57,#00,#64,#57,#00
	db #c6,#57,#00,#ca,#57,#80,#f8,#56
.l571c
	db #00,#d5,#57,#00,#db,#57,#00,#e3
	db #57,#00,#e9,#57,#00,#f5,#57,#00
	db #d5,#57,#00,#db,#57,#00,#e3,#57
	db #00,#e9,#57,#00,#f1,#57,#00,#f9
.l5740 equ $ + 4
	db #57,#80,#1c,#57,#00,#fd,#57,#00
	db #0a,#58,#00,#19,#58,#00,#26,#58
	db #00,#36,#58,#00,#fd,#57,#00,#0a
	db #58,#00,#19,#58,#00,#26,#58,#00
	db #30,#58,#00,#3a,#58,#80,#40,#57
	db #ba,#02,#22,#82,#22,#82,#a2,#02
	db #22,#84,#16,#82,#ba,#02,#22,#82
	db #22,#82,#a2,#02,#22,#84,#16,#82
	db #ba,#02,#22,#82,#22,#82,#a2,#02
	db #22,#84,#16,#82,#ba,#02,#22,#82
	db #22,#82,#a2,#02,#22,#84,#16,#82
	db #ff,#ba,#02,#22,#82,#22,#82,#a2
	db #02,#22,#84,#16,#82,#ba,#02,#22
	db #82,#22,#82,#a2,#02,#22,#84,#16
	db #82,#ba,#02,#22,#82,#22,#82,#a2
	db #02,#22,#84,#16,#82,#ba,#02,#22
	db #82,#22,#82,#a2,#02,#22,#84,#16
	db #82,#ff,#2e,#30,#04,#ff,#00,#18
	db #2e,#14,#04,#22,#02,#02,#22,#82
	db #ff,#2e,#18,#04,#25,#98,#ff,#2e
	db #18,#04,#31,#8c,#30,#8c,#ff,#2e
	db #18,#04,#27,#98,#ff,#25,#18,#04
	db #25,#8c,#24,#8c,#ff,#52,#30,#04
	db #ff,#2e,#30,#04,#ff,#4e,#30,#04
	db #ff,#c6,#04,#c8,#04,#49,#92,#48
	db #82,#44,#82,#3d,#98,#ff,#c6,#04
	db #c8,#04,#49,#92,#48,#82,#44,#82
	db #4d,#8c,#4b,#8c,#ff,#c6,#04,#c8
	db #04,#49,#92,#48,#82,#44,#82,#3f
	db #98,#ff,#3d,#16,#04,#3a,#82,#41
	db #8c,#3f,#8c,#ff,#2e,#18,#04,#50
	db #98,#ff,#3a,#30,#04,#ff,#00
	db #18,#4d,#18,#04,#ff,#00
;
.music_info
	db "Electric Monk Intro 2 Song 3 (1992)(TGS)(The Electric Monk)",0
	db "ST-Module",0

	read "music_end.asm"
