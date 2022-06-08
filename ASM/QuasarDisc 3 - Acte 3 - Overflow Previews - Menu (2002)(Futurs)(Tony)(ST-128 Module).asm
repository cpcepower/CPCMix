; Music of QuasarDisc 3 - Acte 3 - Overflow Previews - Menu (2002)(Futurs)(Tony)(ST-128 Module)
; Ripped by Megachur the 05/06/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "QU3A3OPM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #6000

	read "music_header.asm"

	jr l6004	; init music interruption
	jr l6013	; stop music interruption
.l6004
	call l6037
	ld hl,l6024
	ld de,l601c
	ld bc,#81ff
	jp #bcd7
.l6013
	ld hl,l6024
	call #bcdd
	jp l60af
.l601c
	push ix
	call l60cb
	pop ix
	ret
.l6024
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00

	jp l6037
	jp l60cb
	jp l60af
;
.init_music
.l6037
;
	xor a
	ld hl,l65e2
	call l60a8
	ld hl,l6610
	call l60a8
	ld hl,l663e
	call l60a8
	ld ix,l65de
	ld iy,l6668
	ld de,#002e
	ld b,#03
.l6057
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
	djnz l6057
	ld hl,l64f7
	ld (hl),#06
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l64f3),hl
	ld (l64f5),hl
	ld a,#0c
	ld c,d
	call l64d3
	ld a,#0d
	ld c,d
	jp l64d3
.l60a8
	ld b,#2a
.l60aa
	ld (hl),a
	inc hl
	djnz l60aa
	ret
;
.stop_music
.l60af
;
	ld a,#07
	ld c,#3f
	call l64d3
	ld a,#08
	ld c,#00
	call l64d3
	ld a,#09
	ld c,#00
	call l64d3
	ld a,#0a
	ld c,#00
	jp l64d3
;
.play_music
.l60cb
;
	ld hl,l64f9
	dec (hl)
	ld ix,l65de
	ld bc,l65ec
	call l616d
	ld ix,l660c
	ld bc,l661a
	call l616d
	ld ix,l663a
	ld bc,l6648
	call l616d
	ld hl,l64f2
	ld de,l64f9
	ld b,#06
	call l614a
	ld b,#07
	call l614a
	ld b,#0b
	call l614a
	ld b,#0d
	call l614a
	ld de,l64f9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l65fd
	call l6123
	ld hl,l662b
	call l6123
	ld hl,l6659
.l6123
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
	jr nz,l6138
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l6138
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
.l614a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l64d3
.l6155
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l64d3
.l616d
	ld a,(l64f9)
	or a
	jp nz,l6225
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6225
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6155
	or a
	jp z,l621a
	ld r,a
	and #7f
	cp #10
	jr c,l61f5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l636d
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
	jr z,l61ce
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l61ce
	rrca
	ld c,a
	ld hl,l666e
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
	jr z,l61ed
	ld (ix+#1e),b
.l61ed
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l620e
.l61f5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l64fe
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
.l620e
	ld a,d
	or a
	jr nz,l621c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l621c
.l621a
	ld a,(hl)
	inc hl
.l621c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6225
	ld a,(ix+#17)
	or a
	jr nz,l623b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l623b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6251
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6251
	ld a,(ix+#0d)
	or a
	jr z,l625f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l627d
.l625f
	ld a,(ix+#1a)
	or a
	jp z,l6284
	ld c,a
	cp #03
	jr nz,l626c
	xor a
.l626c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l627d
	ld a,(ix+#18)
	dec c
	jr z,l627d
	ld a,(ix+#19)
.l627d
	add (ix+#07)
	ld b,d
	call l636d
.l6284
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l62ac
	dec (ix+#1b)
	jr nz,l62ac
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l62e4
.l62ac
	ld a,(ix+#29)
	or a
	jr z,l62e4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l62db
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l62d2
	ld (ix+#29),#ff
	jr l62db
.l62d2
	cp (ix+#2b)
	jr nz,l62db
	ld (ix+#29),#01
.l62db
	ld b,d
	or a
	jp p,l62e1
	dec b
.l62e1
	ld c,a
	jr l62ef
.l62e4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l62ef
	pop hl
	bit 7,(ix+#14)
	jr z,l62f8
	ld h,d
	ld l,d
.l62f8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l64d3
	ld c,h
	ld a,(ix+#02)
	call l64d3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l634b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l633a
	dec (ix+#09)
	jr nz,l633a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6332
	xor a
	jr l6337
.l6332
	cp #10
	jr nz,l6337
	dec a
.l6337
	ld (ix+#1e),a
.l633a
	ld a,b
	sub (ix+#1e)
	jr nc,l6341
	xor a
.l6341
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l64d3
.l634b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l64fa)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l6369
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l6369
	ld (l64fa),hl
	ret
.l636d
	ld hl,l651c
	cp #61
	jr nc,l6377
	add a
	ld c,a
	add hl,bc
.l6377
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l6381
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l64a6
	ld (ix+#1e),a
	jp l620e
.l6393
	dec b
.l6394
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l639f
	neg
.l639f
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
	jp l620e
.l63b5
	dec b
	jr l63b9
.l63b8
	inc b
.l63b9
	call l64a6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l620e
.l63c8
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
	jp l648b
.l63d9
	ld a,(hl)
	inc hl
	or a
	jr z,l63fb
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
.l63fb
	ld (ix+#29),a
	jp l620e
.l6401
	dec hl
	ld a,(hl)
	and #0f
	ld (l64fd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l64fc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l620e
.l641b
	ld a,(hl)
	or a
	jr z,l642c
	call l64a8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l620e
.l642c
	ld hl,#0101
	ld (l64f8),hl
	jp l620e
.l6435
	call l64a6
	ld (ix+#1e),a
	jp l620e
.l643e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l64b7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l64b7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l620e
.l6460
	ld a,(hl)
	inc hl
	ld (l64f7),a
	jp l620e
.l6468
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
	jp l620e
.l6487
	call l64a6
	add a
.l648b
	ld b,#00
	ld c,a
	push hl
	ld hl,l66ee
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l620e
.l64a6
	ld a,(hl)
	inc hl
.l64a8
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
.l64b7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l666e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l64d3
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
.l64f2
	ret
.l64fa equ $ + 7
.l64f9 equ $ + 6
.l64f8 equ $ + 5
.l64f7 equ $ + 4
.l64f5 equ $ + 2
.l64f3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l64fd equ $ + 2
.l64fc equ $ + 1
	db #38,#00,#00
.l64fe
	dw l6381,l6394,l6393,l63b8
	dw l63b5,l63c8,l63d9,l6401
	dw l641b,l6401,l6435,l643e
	dw l6460,l6468,l6487
.l651c
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
.l65e2 equ $ + 4
.l65de
	db #08,#00,#01,#08,#00,#00,#00,#00
.l65ec equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l65fd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l660c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l6610 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l661a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l662b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l663a equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l663e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6648 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6659 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6668 equ $ + 2
	db #00,#00,#8e,#67,#97,#67,#a0,#67
.l666e
	db #0e,#67,#4e,#67,#6e,#67,#00,#00
	db #00,#20,#00,#20,#00,#20,#00,#00
	db #00,#20,#00,#20,#00,#20,#00,#00
	db #00,#20,#00,#20,#00,#20,#00,#00
	db #00,#20,#00,#20,#00,#20,#00,#00
	db #00,#20,#00,#20,#00,#20,#00,#00
	db #00,#20,#00,#20,#00,#20,#00,#00
	db #00,#20,#00,#20,#00,#20,#00,#00
	db #00,#20,#00,#20,#00,#20,#00,#00
	db #00,#20,#00,#20,#00,#20,#00,#00
	db #00,#20,#00,#20,#00,#20,#00,#00
	db #00,#20,#00,#20,#00,#20,#00,#00
	db #00,#20,#00,#20,#00,#20,#00,#00
	db #00,#20,#00,#20,#00,#20,#00,#00
	db #00,#20,#00,#20,#00,#20,#00,#00
	db #00,#20,#00,#20,#00,#20,#00,#00
.l66ee
	db #00,#20,#00,#20,#00,#20,#00,#20
	db #00,#20,#00,#20,#00,#20,#00,#20
	db #00,#20,#00,#20,#00,#20,#00,#20
	db #00,#20,#00,#20,#00,#20,#00,#20
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#a9,#67,#00,#a9,#67,#80,#8e
	db #67,#00,#29,#68,#00,#2c,#68,#80
	db #97,#67,#00,#ad,#68,#00,#ad,#68
	db #80,#a0,#67,#ed,#00,#e8,#00,#e4
	db #00,#e1,#00,#dc,#00,#e4,#00,#d8
	db #00,#d5,#00,#d8,#00,#dc,#00,#e1
	db #00,#e3,#00,#e0,#00,#dc,#00,#d8
	db #00,#d7,#00,#d0,#00,#d4,#00,#d7
	db #00,#d8,#00,#da,#00,#dc,#00,#dd
	db #00,#da,#00,#dc,#00,#d8,#00,#d5
	db #00,#d0,#00,#cc,#00,#c9,#00,#c4
	db #00,#c0,#00,#bd,#00,#b1,#00,#bf
	db #00,#b3,#00,#b3,#00,#c0,#00,#b4
	db #00,#c2,#00,#b6,#00,#c4,#00,#c9
	db #00,#c4,#00,#c0,#00,#bd,#00,#b8
	db #00,#b4,#00,#b1,#00,#b0,#00,#b3
	db #00,#b6,#00,#b9,#00,#b8,#00,#bc
	db #00,#bd,#00,#bf,#00,#c0,#00,#c2
	db #00,#c4,#00,#c5,#00,#c8,#00,#49
	db #00,#02,#ff,#fe,#40,#ff,#99,#00
	db #a5,#00,#b1,#00,#bd,#00,#b1,#00
	db #a5,#00,#99,#00,#a5,#00,#b1,#00
	db #bd,#00,#b1,#00,#a5,#00,#94,#00
	db #a0,#00,#ac,#00,#b8,#00,#ac,#00
	db #a0,#00,#94,#00,#a0,#00,#ac,#00
	db #b8,#00,#ad,#00,#9e,#00,#94,#00
	db #9c,#00,#aa,#00,#bf,#00,#ac,#00
	db #a0,#00,#94,#00,#a0,#00,#ac,#00
	db #b8,#00,#ac,#00,#a0,#00,#94,#00
	db #a0,#00,#ac,#00,#b8,#00,#ac,#00
	db #a0,#00,#99,#00,#a5,#00,#b1,#00
	db #bd,#00,#b1,#00,#a5,#00,#99,#00
	db #a5,#00,#b1,#00,#bd,#00,#b1,#00
	db #a5,#00,#99,#00,#a5,#00,#b1,#00
	db #bd,#00,#b1,#00,#a5,#00,#99,#00
	db #a5,#00,#b1,#00,#bd,#00,#ff,#ed
	db #00,#ed,#00,#e8,#00,#e8,#00,#e4
	db #00,#e1,#00,#e1,#00,#dc,#00,#dc
	db #00,#d8,#00,#d5,#00,#d0,#00,#d0
	db #00,#cc,#00,#c9,#00,#c9,#00,#c4
	db #00,#c4,#00,#c4,#00,#c4,#00,#c4
	db #00,#c4,#00,#c4,#00,#c4,#00,#c4
	db #00,#c4,#00,#c4,#00,#c4,#00,#c4
	db #00,#c4,#00,#c4,#00,#c4,#00,#c0
	db #00,#c4,#00,#c8,#00,#cb,#00,#ce
	db #00,#d1,#00,#d0,#00,#d4,#00,#d0
	db #00,#d5,#00,#d0,#00,#d7,#00,#d8
	db #00,#d8,#00,#d5,#00,#d5,#00,#d0
	db #00,#d0,#00,#d1,#00,#ce,#00,#cc
	db #00,#cc,#00,#cb,#00,#d0,#00,#c4
	db #00,#b8,#00,#ac,#00,#94,#00,#ce
	db #00,#cc,#00,#b1,#00,#99,#00,#ff

;
.music_info
	db "QuasarDisc 3 - Acte 3 - Overflow Previews - Menu (2002)(Futurs)(Tony)",0
	db "ST-128 Module",0

	read "music_end.asm"
