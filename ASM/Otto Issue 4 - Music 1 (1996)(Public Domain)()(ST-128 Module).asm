; Music of Otto Issue 4 - Music 1 (1996)(Public Domain)()(ST-128 Module)
; Ripped by Megachur the 27/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OTTOI4M1.BIN"
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
	ld (hl),#05
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
	db #00,#00,#ae,#8b,#fc,#8b,#4a,#8c
.l876e
	db #0e,#88,#4e,#88,#6e,#88,#80,#00
	db #8e,#88,#ce,#88,#ee,#88,#00,#00
	db #0e,#89,#4e,#89,#6e,#89,#08,#18
	db #8e,#89,#ce,#89,#6e,#89,#14,#0c
	db #ee,#89,#2e,#8a,#6e,#89,#48,#00
	db #4e,#8a,#8e,#8a,#ae,#8a,#09,#00
	db #ce,#8a,#0e,#8b,#6e,#89,#00,#00
	db #4e,#8a,#2e,#8b,#6e,#89,#00,#00
	db #ff,#40,#00,#41,#00,#41,#ff,#ff
	db #ff,#40,#00,#41,#00,#41,#ff,#ff
	db #ff,#40,#00,#41,#00,#41,#ff,#ff
	db #ff,#40,#00,#41,#00,#41,#ff,#ff
	db #4e,#8b,#8e,#8b,#6e,#89,#00,#00
	db #ff,#40,#00,#41,#00,#41,#ff,#ff
	db #ff,#40,#00,#41,#00,#41,#ff,#ff
	db #ff,#40,#00,#41,#00,#41,#ff,#ff
.l87ee
	db #ff,#40,#00,#41,#00,#41,#ff,#40
	db #ff,#40,#00,#41,#00,#41,#ff,#40
	db #ff,#40,#ff,#40,#ff,#40,#00,#41
	db #00,#41,#ff,#40,#ff,#40,#00,#41
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
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #09,#09,#0a,#0a,#0b,#0b,#0a,#0a
	db #0b,#0b,#0c,#0c,#0b,#0b,#0a,#0a
	db #0b,#0b,#0c,#0c,#0b,#0b,#0a,#0a
	db #0b,#0b,#0c,#0c,#0b,#0b,#0a,#0a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#0a,#0a,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
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
	db #0f,#0e,#0c,#0a,#08,#06,#04,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #20,#00,#40,#00,#60,#00,#80,#00
	db #a0,#00,#c0,#00,#e0,#00,#00,#01
	db #20,#01,#40,#01,#60,#01,#80,#01
	db #a0,#01,#c0,#01,#e0,#01,#00,#02
	db #20,#02,#40,#02,#60,#02,#80,#02
	db #a0,#02,#c0,#02,#e0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#80,#03
	db #a0,#03,#c0,#03,#e0,#03,#00,#04
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0e,#0e,#0f,#0f,#0f,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0a
	db #09,#08,#07,#06,#05,#03,#01,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0b,#0a,#09
	db #09,#08,#08,#07,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#98,#8c,#00,#98,#8c,#00,#a5
	db #8c,#00,#98,#8c,#00,#a5,#8c,#00
	db #b2,#8c,#00,#f9,#8c,#00,#f9,#8c
	db #00,#61,#8d,#00,#61,#8d,#00,#f9
	db #8c,#00,#c3,#8d,#00,#c3,#8d,#00
	db #f9,#8c,#00,#2b,#8e,#00,#61,#8d
	db #00,#2b,#8e,#00,#98,#8c,#00,#61
	db #8d,#00,#98,#8c,#00,#98,#8c,#00
	db #98,#8c,#00,#98,#8c,#00,#61,#8d
	db #00,#98,#8c,#80,#c3,#8b,#00,#f9
	db #8e,#00,#90,#8e,#00,#5a,#8f,#00
	db #90,#8e,#00,#5a,#8f,#00,#db,#8f
	db #00,#9c,#90,#00,#9c,#90,#00,#9c
	db #90,#00,#9c,#90,#00,#9c,#90,#00
	db #3d,#91,#00,#3d,#91,#00,#9c,#90
	db #00,#de,#91,#00,#9c,#90,#00,#de
	db #91,#00,#90,#8e,#00,#9c,#90,#00
	db #90,#8e,#00,#f9,#8e,#00,#f9,#8e
	db #00,#90,#8e,#00,#9c,#90,#00,#90
	db #8e,#80,#11,#8c,#00,#f9,#8e,#00
	db #f9,#8e,#00,#7f,#92,#00,#f9,#8e
	db #00,#7f,#92,#00,#e8,#92,#00,#4a
	db #93,#00,#4a,#93,#00,#ac,#93,#00
	db #ac,#93,#00,#4a,#93,#00,#0d,#94
	db #00,#0d,#94,#00,#4a,#93,#00,#ac
	db #93,#00,#ac,#93,#00,#ac,#93,#00
	db #f9,#8e,#00,#ac,#93,#00,#f9,#8e
	db #00,#f9,#8e,#00,#f9,#8e,#00,#f9
	db #8e,#00,#ac,#93,#00,#f9,#8e,#80
	db #5f,#8c,#44,#2a,#0c,#10,#40,#2a
	db #05,#10,#44,#2a,#0c,#20,#ff,#44
	db #3a,#06,#10,#3d,#3a,#09,#10,#42
	db #3a,#0a,#20,#ff,#50,#61,#40,#50
	db #60,#03,#50,#60,#03,#50,#60,#02
	db #50,#60,#02,#d0,#60,#d0,#60,#50
	db #60,#04,#50,#60,#03,#50,#60,#03
	db #50,#60,#02,#50,#60,#02,#d0,#60
	db #d0,#60,#50,#60,#04,#50,#60,#03
	db #50,#60,#03,#50,#60,#02,#50,#60
	db #02,#d0,#60,#50,#6b,#10,#0b,#11
	db #0b,#12,#0b,#13,#0b,#14,#0b,#15
	db #fe,#0b,#ff,#c4,#7a,#06,#d0,#70
	db #44,#70,#02,#50,#70,#02,#c4,#70
	db #50,#70,#02,#44,#70,#02,#50,#70
	db #03,#c4,#70,#d0,#70,#c4,#70,#d0
	db #70,#44,#70,#02,#50,#70,#02,#c4
	db #70,#50,#70,#02,#44,#70,#02,#50
	db #70,#03,#c4,#70,#d0,#70,#c0,#7a
	db #05,#cc,#70,#40,#70,#02,#4c,#70
	db #02,#c0,#70,#4c,#70,#02,#40,#70
	db #02,#4c,#70,#03,#c0,#70,#cc,#70
	db #c2,#7a,#09,#ce,#70,#42,#70,#02
	db #4e,#70,#02,#c2,#70,#4e,#70,#02
	db #42,#70,#02,#4e,#70,#03,#c2,#70
	db #ce,#70,#ff,#38,#3a,#06,#02,#44
	db #30,#02,#38,#30,#02,#44,#30,#02
	db #38,#30,#02,#44,#30,#02,#38,#30
	db #02,#44,#30,#02,#38,#30,#02,#44
	db #30,#02,#38,#30,#02,#44,#30,#02
	db #38,#30,#02,#44,#30,#02,#38,#30
	db #02,#44,#30,#02,#34,#30,#02,#40
	db #30,#02,#34,#30,#02,#40,#30,#02
	db #34,#30,#02,#40,#30,#02,#34,#30
	db #02,#40,#30,#02,#36,#30,#02,#42
	db #30,#02,#36,#30,#02,#42,#30,#02
	db #36,#30,#02,#42,#30,#02,#36,#30
	db #02,#42,#30,#02,#ff,#c4,#38,#0c
	db #d0,#30,#44,#30,#02,#50,#30,#02
	db #c4,#30,#50,#30,#02,#44,#30,#02
	db #50,#30,#03,#c4,#30,#d0,#30,#c4
	db #30,#d0,#30,#44,#30,#02,#50,#30
	db #02,#c4,#30,#50,#30,#02,#44,#30
	db #02,#50,#30,#03,#c4,#30,#d0,#30
	db #c0,#38,#0a,#cc,#30,#40,#30,#02
	db #4c,#30,#02,#c0,#30,#4c,#30,#02
	db #40,#30,#02,#4c,#30,#03,#c0,#30
	db #cc,#30,#c2,#38,#0d,#ce,#30,#42
	db #30,#02,#4e,#30,#02,#c2,#30,#4e
	db #30,#02,#42,#30,#02,#4e,#30,#03
	db #c2,#30,#ce,#30,#ff,#44,#38,#06
	db #02,#50,#30,#02,#44,#30,#02,#50
	db #30,#02,#44,#30,#02,#50,#30,#02
	db #44,#30,#02,#50,#30,#02,#44,#30
	db #02,#50,#30,#02,#44,#30,#02,#50
	db #30,#02,#44,#30,#02,#50,#30,#02
	db #44,#30,#02,#50,#30,#02,#49,#38
	db #09,#02,#55,#30,#02,#42,#38,#0d
	db #02,#4e,#30,#02,#42,#30,#02,#4e
	db #30,#02,#42,#30,#02,#4e,#30,#02
	db #42,#30,#02,#4e,#30,#02,#42,#30
	db #02,#4e,#30,#02,#42,#30,#02,#4e
	db #30,#02,#49,#38,#09,#02,#55,#30
	db #02,#ff,#38,#3c,#30,#02,#3d,#30
	db #02,#38,#30,#02,#3d,#30,#02,#38
	db #3c,#31,#02,#3d,#30,#02,#38,#30
	db #02,#3d,#30,#02,#34,#3c,#30,#02
	db #39,#30,#02,#34,#30,#02,#39,#30
	db #02,#34,#3c,#31,#02,#39,#30,#02
	db #34,#30,#02,#39,#30,#02,#38,#3c
	db #30,#02,#3d,#30,#02,#38,#30,#02
	db #3d,#30,#02,#38,#3c,#31,#02,#3d
	db #30,#02,#38,#30,#02,#3d,#30,#02
	db #38,#3c,#30,#02,#3d,#30,#02,#38
	db #30,#02,#3d,#30,#02,#38,#3c,#31
	db #02,#3d,#30,#02,#38,#30,#02,#3d
	db #30,#02,#ff,#44,#cb,#25,#49,#cb
	db #25,#44,#cb,#25,#49,#cb,#25,#44
	db #cb,#24,#49,#cb,#24,#44,#cb,#24
	db #49,#cb,#24,#40,#cb,#23,#45,#cb
	db #23,#40,#cb,#23,#45,#cb,#23,#40
	db #cb,#22,#45,#cb,#22,#40,#cb,#22
	db #45,#cb,#22,#44,#cb,#21,#49,#cb
	db #21,#44,#cb,#21,#49,#cb,#21,#44
	db #cb,#20,#49,#cb,#20,#44,#cb,#20
	db #49,#cb,#20,#44,#cb,#20,#49,#cb
	db #20,#44,#cb,#20,#49,#cb,#20,#44
	db #cb,#20,#49,#cb,#20,#44,#cb,#20
	db #49,#cb,#20,#ff,#c4,#c0,#b8,#20
	db #b8,#20,#b8,#20,#c9,#c0,#bd,#20
	db #bd,#20,#bd,#20,#c4,#c0,#b8,#20
	db #b8,#20,#b8,#20,#c9,#c0,#bd,#20
	db #bd,#20,#bd,#20,#c9,#c0,#bd,#20
	db #bd,#20,#bd,#20,#ce,#c0,#c2,#20
	db #c2,#20,#c2,#20,#c9,#c0,#bd,#20
	db #bd,#20,#bd,#20,#ce,#c0,#c2,#20
	db #c2,#20,#c2,#20,#ce,#c0,#c2,#20
	db #c2,#20,#c2,#20,#d3,#c0,#c7,#20
	db #c7,#20,#c7,#20,#ce,#c0,#c2,#20
	db #c2,#20,#c2,#20,#d3,#c0,#c7,#20
	db #c7,#20,#c7,#20,#ce,#c0,#c2,#20
	db #c2,#20,#c2,#20,#d3,#c0,#c7,#20
	db #c7,#20,#c7,#20,#ce,#c0,#c2,#20
	db #c2,#20,#c2,#20,#d3,#c0,#c7,#20
	db #c7,#20,#c7,#20,#ff,#44,#5b,#16
	db #44,#5b,#16,#44,#5b,#15,#44,#5b
	db #15,#44,#5b,#14,#44,#5b,#14,#44
	db #5b,#13,#44,#5b,#13,#44,#5b,#12
	db #44,#5b,#12,#44,#5b,#12,#44,#5b
	db #12,#44,#5b,#12,#44,#5b,#12,#44
	db #5b,#12,#44,#5b,#12,#44,#5b,#16
	db #44,#5b,#16,#44,#5b,#15,#44,#5b
	db #15,#44,#5b,#14,#44,#5b,#14,#44
	db #5b,#13,#44,#5b,#13,#44,#5b,#12
	db #44,#5b,#12,#44,#5b,#12,#44,#5b
	db #12,#44,#5b,#12,#44,#5b,#12,#44
	db #5b,#12,#44,#5b,#12,#44,#5b,#16
	db #44,#5b,#16,#44,#5b,#15,#44,#5b
	db #15,#44,#5b,#14,#44,#5b,#14,#44
	db #5b,#13,#44,#5b,#13,#44,#5b,#12
	db #44,#5b,#12,#44,#5b,#12,#44,#5b
	db #12,#44,#5b,#12,#44,#5b,#12,#44
	db #5b,#12,#44,#5b,#12,#44,#5b,#12
	db #44,#5b,#12,#44,#5b,#13,#44,#5b
	db #13,#44,#5b,#14,#44,#5b,#14,#44
	db #5b,#15,#44,#5b,#15,#44,#5b,#16
	db #44,#5b,#16,#44,#5b,#17,#44,#5b
	db #17,#44,#5b,#18,#44,#5b,#18,#44
	db #5b,#19,#44,#5b,#19,#ff,#ac,#4c
	db #40,#ac,#40,#b8,#4c,#40,#b8,#40
	db #ac,#4c,#40,#ac,#40,#b8,#4c,#40
	db #b8,#40,#ac,#4c,#40,#ac,#40,#b8
	db #4c,#40,#b8,#40,#ac,#4c,#40,#ac
	db #40,#b8,#4c,#40,#b8,#40,#ac,#4c
	db #40,#ac,#40,#b8,#4c,#40,#b8,#40
	db #ac,#4c,#40,#ac,#40,#b8,#4c,#40
	db #b8,#40,#ac,#4c,#40,#ac,#40,#b8
	db #4c,#40,#b8,#40,#ac,#4c,#40,#ac
	db #40,#b8,#4c,#40,#b8,#40,#a8,#4c
	db #40,#a8,#40,#b4,#4c,#40,#b4,#40
	db #a8,#4c,#40,#a8,#40,#b4,#4c,#40
	db #b4,#40,#a8,#4c,#40,#a8,#40,#b4
	db #4c,#40,#b4,#40,#a8,#4c,#40,#a8
	db #40,#b4,#4c,#40,#b4,#40,#aa,#4c
	db #40,#aa,#40,#b6,#4c,#40,#b6,#40
	db #aa,#4c,#40,#aa,#40,#b6,#4c,#40
	db #b6,#40,#aa,#4c,#40,#aa,#40,#b6
	db #4c,#40,#b6,#40,#aa,#4c,#40,#aa
	db #40,#b6,#4c,#40,#b6,#40,#ff,#ac
	db #4c,#40,#ac,#40,#b8,#4c,#41,#b8
	db #40,#ac,#4c,#40,#ac,#40,#b8,#4c
	db #45,#b8,#40,#ac,#4c,#40,#ac,#40
	db #b8,#4c,#41,#b8,#40,#ac,#4c,#40
	db #ac,#40,#b8,#4c,#45,#b8,#40,#ac
	db #4c,#40,#ac,#40,#b8,#4c,#41,#b8
	db #40,#ac,#4c,#40,#ac,#40,#b8,#4c
	db #45,#b8,#40,#ac,#4c,#40,#ac,#40
	db #b8,#4c,#41,#b8,#40,#ac,#4c,#40
	db #ac,#40,#b8,#4c,#45,#b8,#40,#a8
	db #4c,#40,#a8,#40,#b4,#4c,#41,#b4
	db #40,#a8,#4c,#40,#a8,#40,#b4,#4c
	db #45,#b4,#40,#a8,#4c,#40,#a8,#40
	db #b4,#4c,#41,#b4,#40,#a8,#4c,#40
	db #a8,#40,#b4,#4c,#45,#b4,#40,#aa
	db #4c,#40,#aa,#40,#b6,#4c,#41,#b6
	db #40,#aa,#4c,#40,#aa,#40,#b6,#4c
	db #45,#b6,#40,#aa,#4c,#40,#aa,#40
	db #b6,#4c,#41,#b6,#40,#aa,#4c,#40
	db #aa,#40,#b6,#4c,#45,#b6,#40,#ff
	db #b8,#4c,#40,#b8,#20,#c4,#4c,#40
	db #c4,#20,#b8,#4c,#40,#b8,#20,#c4
	db #4c,#40,#c4,#20,#b8,#4c,#40,#b8
	db #20,#c4,#4c,#40,#c4,#20,#b8,#4c
	db #40,#b8,#20,#c4,#4c,#40,#c4,#20
	db #b8,#4c,#40,#b8,#20,#c4,#4c,#40
	db #c4,#20,#b8,#4c,#40,#b8,#20,#c4
	db #4c,#40,#c4,#20,#b8,#4c,#40,#b8
	db #20,#c4,#4c,#40,#c4,#20,#b8,#4c
	db #40,#b8,#20,#c4,#4c,#40,#c4,#20
	db #bd,#4c,#40,#bd,#20,#c9,#4c,#40
	db #c9,#20,#b6,#4c,#40,#b6,#20,#c2
	db #4c,#40,#c2,#20,#b6,#4c,#40,#b6
	db #20,#c2,#4c,#40,#c2,#20,#b6,#4c
	db #40,#b6,#20,#c2,#4c,#40,#c2,#20
	db #b6,#4c,#40,#b6,#20,#c2,#4c,#40
	db #c2,#20,#b6,#4c,#40,#b6,#20,#c2
	db #4c,#40,#c2,#20,#b6,#4c,#40,#b6
	db #20,#c2,#4c,#40,#c2,#20,#bd,#4c
	db #40,#bd,#20,#c9,#4c,#40,#c9,#20
	db #ff,#38,#4c,#45,#02,#44,#40,#02
	db #3d,#40,#02,#49,#40,#02,#38,#4c
	db #41,#02,#44,#40,#02,#3d,#40,#02
	db #49,#40,#02,#3d,#4c,#45,#02,#49
	db #40,#02,#42,#40,#02,#4e,#40,#02
	db #3d,#4c,#41,#02,#49,#40,#02,#42
	db #40,#02,#4e,#40,#02,#42,#3c,#45
	db #02,#4e,#30,#02,#47,#30,#02,#53
	db #30,#02,#42,#3c,#41,#02,#4e,#30
	db #02,#47,#30,#02,#53,#30,#02,#42
	db #3c,#45,#02,#4e,#30,#02,#47,#30
	db #02,#53,#30,#02,#42,#3c,#41,#02
	db #4e,#30,#02,#47,#30,#02,#53,#30
	db #02,#ff,#38,#4c,#41,#02,#44,#40
	db #02,#3d,#40,#02,#49,#40,#02,#38
	db #4b,#21,#44,#4b,#21,#3d,#4b,#21
	db #49,#4b,#21,#38,#4b,#22,#44,#4b
	db #22,#3d,#4b,#22,#49,#4b,#22,#38
	db #4b,#23,#44,#4b,#23,#3d,#4b,#23
	db #49,#4b,#23,#38,#4b,#24,#44,#4b
	db #24,#3d,#4b,#24,#49,#4b,#24,#38
	db #4b,#25,#44,#4b,#25,#3d,#4b,#25
	db #49,#4b,#25,#38,#4b,#26,#44,#4b
	db #26,#3d,#4b,#26,#49,#4b,#26,#38
	db #4b,#27,#44,#4b,#27,#3d,#4b,#27
	db #49,#4b,#27,#ff,#44,#0d,#05,#02
	db #44,#50,#02,#44,#10,#02,#44,#50
	db #02,#44,#00,#02,#44,#50,#02,#44
	db #10,#02,#44,#50,#02,#44,#00,#02
	db #44,#50,#02,#44,#10,#02,#44,#50
	db #02,#44,#00,#02,#44,#50,#02,#44
	db #10,#02,#44,#50,#02,#40,#00,#02
	db #40,#50,#02,#40,#10,#02,#40,#50
	db #02,#40,#00,#02,#40,#50,#02,#40
	db #10,#02,#40,#50,#02,#42,#00,#02
	db #42,#50,#02,#42,#10,#02,#42,#50
	db #02,#42,#00,#02,#42,#50,#02,#42
	db #10,#02,#42,#00,#02,#ff,#44,#00
	db #02,#44,#50,#02,#44,#10,#02,#44
	db #50,#02,#44,#00,#02,#44,#50,#02
	db #44,#10,#02,#44,#50,#02,#44,#00
	db #02,#44,#50,#02,#44,#10,#02,#44
	db #50,#02,#44,#00,#02,#44,#50,#02
	db #44,#10,#02,#44,#50,#02,#40,#00
	db #02,#40,#50,#02,#40,#10,#02,#40
	db #50,#02,#40,#00,#02,#40,#50,#02
	db #40,#10,#02,#40,#50,#02,#42,#00
	db #02,#42,#50,#02,#42,#10,#02,#42
	db #50,#02,#42,#00,#02,#42,#50,#02
	db #42,#10,#02,#42,#00,#02,#ff,#c4
	db #c0,#d0,#c0,#c4,#c0,#d0,#c0,#c4
	db #c0,#d0,#c0,#c4,#c0,#d0,#c0,#c4
	db #c0,#d0,#c0,#c4,#c0,#d0,#c0,#c4
	db #c0,#d0,#c0,#c4,#c0,#d0,#c0,#c4
	db #c0,#d0,#c0,#c4,#c0,#d0,#c0,#c4
	db #c0,#d0,#c0,#c4,#c0,#d0,#c0,#c4
	db #c0,#d0,#c0,#c4,#c0,#d0,#c0,#c4
	db #c0,#d0,#c0,#c4,#c0,#d0,#c0,#c0
	db #c0,#cc,#c0,#c0,#c0,#cc,#c0,#c0
	db #c0,#cc,#c0,#c0,#c0,#cc,#c0,#c0
	db #c0,#cc,#c0,#c0,#c0,#cc,#c0,#c0
	db #c0,#cc,#c0,#c0,#c0,#cc,#c0,#c2
	db #c0,#ce,#c0,#c2,#c0,#ce,#c0,#c2
	db #c0,#ce,#c0,#c2,#c0,#ce,#c0,#c2
	db #c0,#ce,#c0,#c2,#c0,#ce,#c0,#c2
	db #c0,#ce,#c0,#c2,#c0,#ce,#c0,#ff
;
.music_info
	db "Otto Issue 4 - Music 1 (1996)(Public Domain)()",0
	db "ST-128 Module",0

	read "music_end.asm"