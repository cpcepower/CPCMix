; Music of Otto Issue 5 - Music 4 (1997)(Public Domain)()(ST-128 Module)
; Ripped by Megachur the 27/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OTTOI5M4.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8119

	read "music_header.asm"

	jp l81af
	push ix
	call l81cb
	pop ix
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l8137
	jp l81cb
	jp l81af
;
.init_music
.l8137
;
	xor a
	ld hl,l86e2
	call l81a8
	ld hl,l8710
	call l81a8
	ld hl,l873e
	call l81a8
	ld ix,l86de
	ld iy,l8768
	ld de,#002e
	ld b,#03
.l8157
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l8157
	ld hl,l85f7
	ld (hl),#04
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l85f3),hl
	ld (l85f5),hl
	ld a,#0c
	ld c,d
	call l85d3
	ld a,#0d
	ld c,d
	jp l85d3
.l81a8
	ld b,#2a
.l81aa
	ld (hl),a
	inc hl
	djnz l81aa
	ret
;
.stop_music
.l81af
;
	ld a,#07
	ld c,#3f
	call l85d3
	ld a,#08
	ld c,#00
	call l85d3
	ld a,#09
	ld c,#00
	call l85d3
	ld a,#0a
	ld c,#00
	jp l85d3
;
.play_music
.l81cb
;
	ld hl,l85f9
	dec (hl)
	ld ix,l86de
	ld bc,l86ec
	call l826d
	ld ix,l870c
	ld bc,l871a
	call l826d
	ld ix,l873a
	ld bc,l8748
	call l826d
	ld hl,l85f2
	ld de,l85f9
	ld b,#06
	call l824a
	ld b,#07
	call l824a
	ld b,#0b
	call l824a
	ld b,#0d
	call l824a
	ld de,l85f9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l86fd
	call l8223
	ld hl,l872b
	call l8223
	ld hl,l8759
.l8223
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l8238
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l8238
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l824a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l85d3
.l8255
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l85d3
.l826d
	ld a,(l85f9)
	or a
	jp nz,l8325
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l8325
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l8255
	or a
	jp z,l831a
	ld r,a
	and #7f
	cp #10
	jr c,l82f5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l846d
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l82ce
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l82ce
	rrca
	ld c,a
	ld hl,l876e
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l82ed
	ld (ix+#1e),b
.l82ed
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l830e
.l82f5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l85fe
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add e
	add h
	add l
	add (hl)
	add h
.l830e
	ld a,d
	or a
	jr nz,l831c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l831c
.l831a
	ld a,(hl)
	inc hl
.l831c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l8325
	ld a,(ix+#17)
	or a
	jr nz,l833b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l833b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l8351
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l8351
	ld a,(ix+#0d)
	or a
	jr z,l835f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l837d
.l835f
	ld a,(ix+#1a)
	or a
	jp z,l8384
	ld c,a
	cp #03
	jr nz,l836c
	xor a
.l836c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l837d
	ld a,(ix+#18)
	dec c
	jr z,l837d
	ld a,(ix+#19)
.l837d
	add (ix+#07)
	ld b,d
	call l846d
.l8384
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l83ac
	dec (ix+#1b)
	jr nz,l83ac
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l83e4
.l83ac
	ld a,(ix+#29)
	or a
	jr z,l83e4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l83db
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l83d2
	ld (ix+#29),#ff
	jr l83db
.l83d2
	cp (ix+#2b)
	jr nz,l83db
	ld (ix+#29),#01
.l83db
	ld b,d
	or a
	jp p,l83e1
	dec b
.l83e1
	ld c,a
	jr l83ef
.l83e4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l83ef
	pop hl
	bit 7,(ix+#14)
	jr z,l83f8
	ld h,d
	ld l,d
.l83f8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l85d3
	ld c,h
	ld a,(ix+#02)
	call l85d3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l844b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l843a
	dec (ix+#09)
	jr nz,l843a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l8432
	xor a
	jr l8437
.l8432
	cp #10
	jr nz,l8437
	dec a
.l8437
	ld (ix+#1e),a
.l843a
	ld a,b
	sub (ix+#1e)
	jr nc,l8441
	xor a
.l8441
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l85d3
.l844b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l85fa)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l8469
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l8469
	ld (l85fa),hl
	ret
.l846d
	ld hl,l861c
	cp #61
	jr nc,l8477
	add a
	ld c,a
	add hl,bc
.l8477
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l8481
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l85a6
	ld (ix+#1e),a
	jp l830e
.l8493
	dec b
.l8494
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l849f
	neg
.l849f
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l830e
.l84b5
	dec b
	jr l84b9
.l84b8
	inc b
.l84b9
	call l85a6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l830e
.l84c8
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l858b
.l84d9
	ld a,(hl)
	inc hl
	or a
	jr z,l84fb
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l84fb
	ld (ix+#29),a
	jp l830e
.l8501
	dec hl
	ld a,(hl)
	and #0f
	ld (l85fd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l85fc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l830e
.l851b
	ld a,(hl)
	or a
	jr z,l852c
	call l85a8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l830e
.l852c
	ld hl,#0101
	ld (l85f8),hl
	jp l830e
.l8535
	call l85a6
	ld (ix+#1e),a
	jp l830e
.l853e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l85b7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l85b7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l830e
.l8560
	ld a,(hl)
	inc hl
	ld (l85f7),a
	jp l830e
.l8568
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l830e
.l8587
	call l85a6
	add a
.l858b
	ld b,#00
	ld c,a
	push hl
	ld hl,l87ee
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l830e
.l85a6
	ld a,(hl)
	inc hl
.l85a8
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l85b7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l876e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l85d3
	di
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
	ei
.l85f2
	ret
.l85fa equ $ + 7
.l85f9 equ $ + 6
.l85f8 equ $ + 5
.l85f7 equ $ + 4
.l85f5 equ $ + 2
.l85f3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85fd equ $ + 2
.l85fc equ $ + 1
	db #38,#00,#00
.l85fe
	dw l8481,l8494,l8493,l84b8
	dw l84b5,l84c8,l84d9,l8501
	dw l851b,l8501,l8535,l853e
	dw l8560,l8568,l8587
.l861c
	dw #0000,#0e18,#0d4d,#0c8e
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
.l86e2 equ $ + 4
.l86de
	db #08,#00,#01,#08,#00,#00,#00,#00
.l86ec equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l86fd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l870c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l8710 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l871a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l872b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l873a equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l873e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8748 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8759 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8768 equ $ + 2
	db #00,#00,#8e,#8b,#a3,#8b,#b8,#8b
.l876e
	db #0e,#88,#4e,#88,#6e,#88,#80,#00
	db #8e,#88,#ce,#88,#ee,#88,#00,#00
	db #8e,#4b,#ce,#4b,#ee,#4b,#08,#18
	db #0e,#89,#4e,#89,#6e,#89,#14,#0c
	db #8e,#89,#ce,#89,#6e,#89,#48,#00
	db #8e,#0b,#ce,#0b,#ee,#0b,#09,#00
	db #00,#04,#00,#04,#00,#04,#00,#00
	db #ee,#89,#2e,#8a,#6e,#89,#00,#00
	db #8e,#ca,#ce,#ca,#6e,#ca,#40,#00
	db #4e,#8a,#8e,#8a,#ae,#8a,#00,#00
	db #00,#04,#00,#04,#00,#04,#00,#00
	db #ee,#89,#ce,#8a,#6e,#89,#14,#09
	db #4e,#4d,#8e,#4d,#ee,#4b,#00,#00
	db #ee,#8a,#2e,#8b,#6e,#89,#16,#0a
	db #ee,#ca,#2e,#cb,#6e,#ca,#16,#0a
	db #00,#04,#00,#04,#00,#04,#00,#00
.l87ee
	db #00,#04,#00,#04,#4e,#8b,#6e,#8b
	db #00,#04,#00,#04,#4e,#cb,#00,#04
	db #8e,#4e,#6e,#cb,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #90,#01,#e0,#01,#30,#02,#80,#02
	db #d0,#02,#20,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#17,#00,#2f,#00,#47,#00
	db #5e,#00,#75,#00,#8d,#00,#a4,#00
	db #bc,#00,#d3,#00,#eb,#00,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0a
	db #09,#07,#05,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#01,#01,#02,#01,#01
	db #02,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#fe,#ff
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#03,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0c,#0d,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0f,#0e,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#06,#04,#03
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #80,#00,#b0,#00,#e0,#00,#10,#01
	db #40,#01,#70,#01,#a0,#01,#d0,#01
	db #00,#02,#00,#02,#30,#02,#60,#02
	db #70,#02,#80,#02,#90,#02,#a0,#02
	db #b0,#02,#b0,#02,#c0,#02,#e0,#02
	db #e0,#02,#e0,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#01,#00,#00
	db #01,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0d,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #02,#02,#02,#04,#06,#07,#00,#02
	db #02,#02,#04,#06,#07,#00,#02,#02
	db #02,#04,#06,#07,#00,#02,#02,#02
	db #04,#06,#07,#00,#02,#02,#02,#04
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#fb,#fb
	db #f8,#f8,#00,#00,#fb,#fb,#f8,#f8
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #00,#1e,#8c,#00,#64,#8c,#00,#64
	db #8c,#00,#d0,#8b,#00,#d0,#8b,#00
	db #d0,#8b,#80,#8e,#8b,#00,#23,#8d
	db #00,#94,#8d,#00,#94,#8d,#00,#b2
	db #8c,#00,#b2,#8c,#00,#b2,#8c,#80
	db #a3,#8b,#00,#10,#8e,#00,#92,#8e
	db #00,#92,#8e,#00,#05,#8e,#00,#05
	db #8e,#00,#05,#8e,#80,#b8,#8b,#00
	db #40,#ff,#53,#d1,#10,#d2,#d0,#d1
	db #d0,#d0,#d0,#cf,#d0,#ce,#d0,#cd
	db #d0,#cc,#d0,#cb,#d0,#ca,#d0,#c9
	db #d0,#c8,#d0,#47,#d0,#0c,#d5,#d0
	db #d6,#d0,#d7,#d0,#d8,#d0,#d9,#d0
	db #da,#d0,#db,#d0,#dc,#d0,#d7,#d0
	db #d8,#d0,#d9,#d0,#da,#d0,#db,#d0
	db #dc,#d0,#dd,#d0,#de,#d0,#df,#d0
	db #e0,#d0,#e1,#d0,#e3,#d0,#e5,#d0
	db #e6,#d0,#e7,#d0,#68,#d0,#11,#ff
	db #50,#31,#20,#50,#30,#02,#55,#30
	db #02,#53,#30,#02,#55,#30,#02,#50
	db #30,#06,#50,#30,#02,#58,#30,#02
	db #55,#30,#04,#53,#30,#02,#55,#30
	db #02,#55,#30,#02,#53,#30,#02,#50
	db #30,#08,#55,#30,#02,#58,#30,#02
	db #57,#30,#02,#55,#30,#02,#58,#30
	db #02,#5a,#30,#02,#57,#30,#02,#58
	db #30,#02,#55,#30,#08,#ff,#44,#10
	db #02,#c4,#00,#c4,#00,#44,#10,#02
	db #45,#10,#02,#50,#df,#33,#50,#d0
	db #03,#50,#d0,#02,#53,#d0,#02,#55
	db #d0,#02,#58,#d0,#02,#55,#d0,#02
	db #57,#d0,#02,#53,#d0,#02,#50,#d0
	db #02,#50,#d0,#06,#50,#d0,#04,#55
	db #d0,#02,#58,#d0,#02,#57,#d0,#02
	db #53,#d0,#02,#55,#d0,#02,#50,#d0
	db #09,#dc,#10,#dc,#10,#d0,#10,#d0
	db #10,#c4,#10,#ff,#3b,#3c,#b0,#02
	db #47,#30,#02,#3b,#3c,#b1,#02,#3b
	db #30,#02,#47,#3c,#b0,#02,#3b,#30
	db #02,#3b,#3c,#b9,#02,#47,#30,#02
	db #3b,#3c,#b0,#02,#3b,#30,#02,#47
	db #3c,#b1,#02,#3b,#30,#02,#3b,#3c
	db #b0,#02,#47,#30,#02,#3b,#3c,#b9
	db #02,#3b,#30,#02,#4b,#3c,#b0,#02
	db #3f,#30,#02,#3f,#3c,#b1,#02,#4b
	db #30,#02,#3f,#3c,#b0,#02,#3f,#30
	db #02,#4b,#3c,#b9,#02,#3f,#30,#02
	db #3f,#3c,#b0,#02,#4b,#30,#02,#3f
	db #3c,#b1,#02,#3f,#30,#02,#4b,#3c
	db #b0,#02,#3f,#30,#02,#3f,#3c,#b9
	db #02,#4b,#30,#02,#ff,#38,#3c,#b0
	db #02,#44,#30,#02,#38,#3c,#b1,#02
	db #38,#30,#02,#44,#3c,#b0,#02,#38
	db #30,#02,#38,#3c,#b9,#02,#44,#30
	db #02,#38,#3c,#b0,#02,#38,#30,#02
	db #44,#3c,#b1,#02,#38,#30,#02,#3b
	db #3c,#b0,#02,#47,#30,#02,#3b,#3c
	db #b9,#02,#3b,#30,#02,#47,#3c,#b0
	db #02,#3b,#30,#02,#3b,#3c,#b1,#02
	db #47,#30,#02,#3d,#3c,#b0,#02,#3d
	db #30,#02,#49,#3c,#b9,#02,#3d,#30
	db #02,#3d,#3c,#b0,#02,#49,#30,#02
	db #3d,#3c,#b1,#02,#3d,#30,#02,#49
	db #3c,#b0,#02,#3d,#30,#02,#3d,#3c
	db #b9,#02,#49,#30,#02,#ff,#38,#3c
	db #b0,#02,#44,#30,#02,#38,#3c,#b1
	db #02,#38,#30,#02,#44,#3c,#b0,#02
	db #38,#30,#02,#38,#3c,#b9,#02,#44
	db #30,#02,#38,#3c,#b0,#02,#38,#30
	db #02,#44,#3c,#b1,#02,#38,#30,#02
	db #38,#3c,#b0,#02,#44,#30,#02,#38
	db #3c,#b1,#02,#38,#30,#02,#44,#3c
	db #b0,#02,#38,#30,#02,#38,#3c,#b9
	db #02,#44,#30,#02,#38,#3c,#b0,#02
	db #38,#30,#02,#44,#3c,#b1,#02,#38
	db #30,#02,#38,#3c,#b0,#02,#44,#30
	db #02,#38,#3c,#b9,#02,#38,#30,#02
	db #44,#3c,#b0,#02,#38,#30,#02,#38
	db #3c,#b1,#02,#44,#30,#02,#ff,#53
	db #df,#02,#18,#55,#d0,#08,#57,#d0
	db #20,#ff,#d0,#46,#23,#fe,#01,#d0
	db #40,#d0,#40,#fe,#01,#d0,#40,#d0
	db #40,#fe,#01,#d0,#40,#d0,#40,#d0
	db #40,#fe,#01,#d0,#40,#d0,#40,#d0
	db #40,#fe,#01,#d0,#40,#d0,#40,#fe
	db #01,#d0,#40,#fe,#01,#d0,#40,#d0
	db #40,#fe,#01,#d3,#40,#fe,#01,#d3
	db #40,#d3,#40,#fe,#01,#d3,#40,#fe
	db #01,#d3,#40,#d3,#40,#d3,#40,#fe
	db #01,#d3,#40,#d3,#40,#fe,#01,#d3
	db #40,#fe,#01,#d5,#40,#fe,#01,#d5
	db #40,#d5,#40,#fe,#01,#d5,#40,#d5
	db #40,#fe,#01,#d5,#40,#fe,#01,#d5
	db #40,#d5,#40,#d5,#40,#fe,#01,#d5
	db #40,#fe,#01,#d5,#40,#d5,#40,#fe
	db #01,#d5,#40,#d5,#40,#fe,#01,#d5
	db #40,#fe,#01,#ff,#dc,#d6,#20,#db
	db #d0,#da,#d0,#d9,#d0,#d8,#d0,#d7
	db #d0,#d6,#d0,#d5,#d0,#d4,#d0,#d3
	db #d0,#d2,#d0,#d1,#d0,#50,#d0,#04
	db #50,#76,#25,#08,#50,#76,#24,#08
	db #50,#76,#23,#08,#50,#76,#22,#08
	db #50,#76,#21,#08,#50,#76,#20,#08
	db #ff
;
.music_info
	db "Otto Issue 5 - Music 4 (1997)(Public Domain)()",0
	db "ST-128 Module",0

	read "music_end.asm"
