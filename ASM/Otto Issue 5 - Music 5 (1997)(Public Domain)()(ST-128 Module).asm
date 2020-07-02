; Music of Otto Issue 5 - Music 5 (1997)(Public Domain)()(ST-128 Module)
; Ripped by Megachur the 27/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OTTOI5M5.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8100

	read "music_header.asm"

	jr l8104
	jr l8113
.l8104
	call l8137
	ld hl,l8124
	ld de,l811c
	ld bc,l81ff
	jp #bcd7
.l8113
	ld hl,l8124
	call #bcdd
	jp l81af
.l811c
	push ix
	call l81cb
	pop ix
	ret
.l8124
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
.l81ff
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
	db #00,#00,#6e,#8a,#8f,#8a,#b0,#8a
.l876e
	db #0e,#88,#4e,#88,#6e,#88,#80,#00
	db #8e,#88,#ce,#88,#ee,#88,#00,#00
	db #8e,#8c,#ce,#8c,#ee,#8c,#08,#18
	db #0e,#ca,#4e,#ca,#6e,#ca,#14,#0c
	db #8e,#ca,#ce,#ca,#6e,#ca,#48,#00
	db #8e,#4c,#ce,#4c,#ee,#4c,#09,#00
	db #00,#45,#00,#45,#00,#45,#00,#00
	db #ee,#ca,#2e,#cb,#6e,#ca,#00,#00
	db #0e,#89,#4e,#89,#6e,#89,#40,#00
	db #4e,#cb,#8e,#cb,#ae,#cb,#00,#00
	db #8e,#89,#ce,#89,#6e,#89,#16,#0a
	db #ee,#89,#2e,#8a,#6e,#89,#14,#09
	db #4e,#8e,#8e,#8e,#ee,#8c,#00,#00
	db #8e,#89,#4e,#8a,#6e,#89,#16,#0a
	db #ee,#0b,#2e,#0c,#6e,#0b,#16,#0a
	db #00,#45,#00,#45,#00,#45,#00,#00
.l87ee
	db #00,#45,#00,#45,#4e,#cc,#6e,#cc
	db #00,#45,#00,#45,#4e,#0c,#00,#45
	db #8e,#8f,#6e,#0c,#00,#45,#00,#45
	db #00,#45,#00,#45,#00,#45,#00,#45
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
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #0e,#0d,#0c,#0b,#0a,#0c,#0b,#0a
	db #09,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#07,#06,#05,#04
	db #03,#02,#02,#02,#02,#02,#02,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0b,#0b,#0b,#0c,#0c,#0c,#0c,#0c
	db #0b,#0b,#0b,#0b,#0b,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0d,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #00,#d1,#8a,#00,#d4,#8a,#00,#d4
	db #8a,#00,#d4,#8a,#00,#d4,#8a,#00
	db #56,#8b,#00,#56,#8b,#00,#d4,#8a
	db #00,#56,#8b,#00,#d4,#8a,#80,#6e
	db #8a,#00,#d4,#8a,#00,#d8,#8b,#00
	db #d8,#8b,#00,#d8,#8b,#00,#d8,#8b
	db #00,#d8,#8b,#00,#d8,#8b,#00,#59
	db #8c,#00,#d8,#8b,#00,#59,#8c,#80
	db #8f,#8a,#00,#ea,#8c,#00,#05,#8d
	db #00,#86,#8d,#00,#05,#8d,#00,#86
	db #8d,#00,#17,#8e,#00,#17,#8e,#00
	db #88,#8e,#00,#17,#8e,#00,#88,#8e
	db #80,#b0,#8a,#00,#40,#ff,#b8,#da
	db #0c,#fe,#01,#c4,#d0,#fe,#01,#b8
	db #d0,#fe,#01,#c4,#d0,#fe,#01,#b8
	db #d0,#fe,#01,#c4,#d0,#fe,#01,#b8
	db #d0,#fe,#01,#c4,#d0,#fe,#01,#b8
	db #d0,#fe,#01,#c4,#d0,#fe,#01,#b8
	db #d0,#fe,#01,#c4,#d0,#fe,#01,#b8
	db #d0,#fe,#01,#c4,#d0,#fe,#01,#b8
	db #d0,#fe,#01,#c4,#d0,#fe,#01,#b8
	db #d0,#fe,#01,#c4,#d0,#fe,#01,#b8
	db #d0,#fe,#01,#c4,#d0,#fe,#01,#b8
	db #d0,#fe,#01,#c4,#d0,#fe,#01,#b8
	db #d0,#fe,#01,#c4,#d0,#fe,#01,#b8
	db #d0,#fe,#01,#c4,#d0,#fe,#01,#b8
	db #d0,#fe,#01,#c4,#d0,#fe,#01,#b8
	db #d0,#fe,#01,#c4,#d0,#fe,#01,#b8
	db #d0,#fe,#01,#c4,#d0,#fe,#01,#ff
	db #b8,#8a,#0c,#fe,#01,#c4,#80,#fe
	db #01,#b8,#80,#fe,#01,#c4,#80,#fe
	db #01,#b8,#80,#fe,#01,#c4,#80,#fe
	db #01,#b8,#80,#fe,#01,#c4,#80,#fe
	db #01,#b8,#80,#fe,#01,#c4,#80,#fe
	db #01,#b8,#80,#fe,#01,#c4,#80,#fe
	db #01,#b8,#80,#fe,#01,#c4,#80,#fe
	db #01,#b8,#80,#fe,#01,#c4,#80,#fe
	db #01,#b8,#80,#fe,#01,#c4,#80,#fe
	db #01,#b8,#80,#fe,#01,#c4,#80,#fe
	db #01,#b8,#80,#fe,#01,#c4,#80,#fe
	db #01,#b8,#80,#fe,#01,#c4,#80,#fe
	db #01,#b8,#80,#fe,#01,#c4,#80,#fe
	db #01,#b8,#80,#fe,#01,#c4,#80,#fe
	db #01,#b8,#80,#fe,#01,#c4,#80,#fe
	db #01,#b8,#80,#fe,#01,#c4,#80,#fe
	db #01,#ff,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ac,#b0,#fe,#01,#ac,#b0
	db #fe,#01,#ff,#b8,#bc,#a0,#fe,#01
	db #b8,#b0,#fe,#01,#b8,#bc,#a1,#fe
	db #01,#b8,#b0,#fe,#01,#b8,#bc,#a0
	db #fe,#01,#b8,#b0,#fe,#01,#b8,#bc
	db #a1,#fe,#01,#b8,#b0,#fe,#01,#b8
	db #bc,#a0,#fe,#01,#b8,#b0,#fe,#01
	db #b8,#bc,#a1,#fe,#01,#b8,#b0,#fe
	db #01,#b8,#bc,#a0,#fe,#01,#b8,#b0
	db #fe,#01,#b8,#bc,#a1,#fe,#01,#b8
	db #b0,#fe,#01,#b8,#bc,#a0,#fe,#01
	db #b8,#b0,#fe,#01,#b8,#bc,#a1,#fe
	db #01,#b8,#b0,#fe,#01,#b8,#bc,#a0
	db #fe,#01,#b8,#b0,#fe,#01,#b8,#bc
	db #a1,#fe,#01,#b8,#b0,#fe,#01,#b8
	db #bc,#a0,#fe,#01,#b8,#b0,#fe,#01
	db #b8,#bc,#a1,#fe,#01,#b8,#b0,#fe
	db #01,#b8,#bc,#a0,#fe,#01,#b8,#b0
	db #fe,#01,#b8,#bc,#a1,#fe,#01,#b8
	db #b0,#fe,#01,#ff,#00,#30,#38,#8b
	db #22,#44,#8b,#22,#38,#8b,#22,#44
	db #8b,#22,#38,#8b,#22,#44,#8b,#22
	db #38,#8b,#22,#44,#8b,#22,#ff,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ff
	db #ac,#bc,#b0,#fe,#01,#b8,#b0,#fe
	db #01,#ac,#bc,#b1,#fe,#01,#b8,#b0
	db #fe,#01,#ac,#bc,#b0,#fe,#01,#b8
	db #b0,#fe,#01,#ac,#bc,#b1,#fe,#01
	db #b8,#b0,#fe,#01,#ac,#bc,#b0,#fe
	db #01,#b8,#b0,#fe,#01,#ac,#bc,#b1
	db #fe,#01,#b8,#b0,#fe,#01,#ac,#bc
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #bc,#b1,#fe,#01,#b8,#b0,#fe,#01
	db #ac,#bc,#b0,#fe,#01,#b8,#b0,#fe
	db #01,#ac,#bc,#b1,#fe,#01,#b8,#b0
	db #fe,#01,#ac,#bc,#b0,#fe,#01,#b8
	db #b0,#fe,#01,#ac,#bc,#b1,#fe,#01
	db #b8,#b0,#fe,#01,#ac,#bc,#b0,#fe
	db #01,#b8,#b0,#fe,#01,#ac,#bc,#b1
	db #fe,#01,#b8,#b0,#fe,#01,#ac,#bc
	db #b0,#fe,#01,#b8,#b0,#fe,#01,#ac
	db #bc,#b1,#fe,#01,#b8,#b0,#fe,#01
	db #ff,#b8,#d0,#fe,#01,#b8,#d0,#fe
	db #03,#b8,#d0,#fe,#01,#b9,#d0,#fe
	db #01,#b8,#d0,#fe,#01,#b9,#d0,#fe
	db #01,#b8,#d0,#fe,#01,#b8,#d0,#fe
	db #01,#b8,#d0,#fe,#03,#b8,#d0,#fe
	db #01,#b9,#d0,#fe,#01,#b8,#d0,#fe
	db #01,#b9,#d0,#fe,#01,#b8,#d0,#fe
	db #01,#b8,#d0,#fe,#01,#b8,#d0,#fe
	db #03,#b8,#d0,#fe,#01,#b9,#d0,#fe
	db #01,#b8,#d0,#fe,#01,#b9,#d0,#fe
	db #01,#b8,#d0,#fe,#01,#b8,#d0,#fe
	db #01,#b8,#d0,#fe,#03,#b8,#d0,#fe
	db #01,#b9,#d0,#fe,#01,#b8,#d0,#fe
	db #01,#b9,#d0,#fe,#01,#b8,#d0,#fe
	db #01,#ff,#c4,#b0,#fe,#01,#c4,#b0
	db #fe,#03,#c4,#b0,#fe,#01,#c5,#b0
	db #fe,#01,#c4,#b0,#fe,#01,#c5,#b0
	db #fe,#01,#c4,#b0,#fe,#01,#c4,#b0
	db #fe,#01,#c4,#b0,#fe,#03,#c4,#b0
	db #fe,#01,#c5,#b0,#fe,#01,#c4,#b0
	db #fe,#01,#c5,#b0,#fe,#01,#c4,#b0
	db #fe,#01,#c4,#b0,#fe,#01,#c4,#b0
	db #fe,#03,#c4,#b0,#fe,#01,#c5,#b0
	db #fe,#01,#c4,#b0,#fe,#01,#c5,#b0
	db #fe,#01,#c4,#b0,#fe,#01,#c4,#b0
	db #fe,#01,#c4,#b0,#fe,#03,#c4,#b0
	db #fe,#01,#c5,#b0,#fe,#01,#c4,#b0
	db #fe,#01,#c5,#b0,#fe,#01,#c4,#b0
	db #fe,#01,#ff
;
.music_info
	db "Otto Issue 5 - Music 5 (1997)(Public Domain)()",0
	db "ST-128 Module",0

	read "music_end.asm"
