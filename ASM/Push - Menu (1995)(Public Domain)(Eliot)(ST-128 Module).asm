; Music of Push - Menu (1995)(Public Domain)(Eliot)(ST-128 Module)
; Ripped by Megachur the 04/09/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PUSHMENU.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #66e0

	read "music_header.asm"

	jr l66e4
	jr l66f3
.l66e4
	call l6717
	ld hl,l6704
	ld de,l66fc
	ld bc,#81ff
	jp #bcd7
.l66f3
	ld hl,l6704
	call #bcdd
	jp l678f
.l66fc
	push ix
	call l67ab
	pop ix
	ret
.l6704
	db #f9,#b7,#fb,#b7,#00,#81,#fc,#66
	db #ff,#00
	jp l6717
	jp l67ab
	jp l678f
;
.init_music
.l6717
;
	xor a
	ld hl,l6cc2
	call l6788
	ld hl,l6cf0
	call l6788
	ld hl,l6d1e
	call l6788
	ld ix,l6cbe
	ld iy,l6d48
	ld de,#002e
	ld b,#03
.l6737
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
	djnz l6737
	ld hl,l6bd7
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
	ld (l6bd3),hl
	ld (l6bd5),hl
	ld a,#0c
	ld c,d
	call l6bb3
	ld a,#0d
	ld c,d
	jp l6bb3
.l6788
	ld b,#2a
.l678a
	ld (hl),a
	inc hl
	djnz l678a
	ret
;
.stop_music
.l678f
;
	ld a,#07
	ld c,#3f
	call l6bb3
	ld a,#08
	ld c,#00
	call l6bb3
	ld a,#09
	ld c,#00
	call l6bb3
	ld a,#0a
	ld c,#00
	jp l6bb3
;
.play_music
.l67ab
;
	ld hl,l6bd9
	dec (hl)
	ld ix,l6cbe
	ld bc,l6ccc
	call l684d
	ld ix,l6cec
	ld bc,l6cfa
	call l684d
	ld ix,l6d1a
	ld bc,l6d28
	call l684d
	ld hl,l6bd2
	ld de,l6bd9
	ld b,#06
	call l682a
	ld b,#07
	call l682a
	ld b,#0b
	call l682a
	ld b,#0d
	call l682a
	ld de,l6bd9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l6cdd
	call l6803
	ld hl,l6d0b
	call l6803
	ld hl,l6d39
.l6803
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
	jr nz,l6818
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l6818
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
.l682a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6bb3
.l6835
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6bb3
.l684d
	ld a,(l6bd9)
	or a
	jp nz,l6905
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6905
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6835
	or a
	jp z,l68fa
	ld r,a
	and #7f
	cp #10
	jr c,l68d5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l6a4d
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
	jr z,l68ae
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l68ae
	rrca
	ld c,a
	ld hl,l6d4e
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
	jr z,l68cd
	ld (ix+#1e),b
.l68cd
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l68ee
.l68d5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l6bde
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
.l68ee
	ld a,d
	or a
	jr nz,l68fc
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l68fc
.l68fa
	ld a,(hl)
	inc hl
.l68fc
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6905
	ld a,(ix+#17)
	or a
	jr nz,l691b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l691b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6931
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6931
	ld a,(ix+#0d)
	or a
	jr z,l693f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l695d
.l693f
	ld a,(ix+#1a)
	or a
	jp z,l6964
	ld c,a
	cp #03
	jr nz,l694c
	xor a
.l694c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l695d
	ld a,(ix+#18)
	dec c
	jr z,l695d
	ld a,(ix+#19)
.l695d
	add (ix+#07)
	ld b,d
	call l6a4d
.l6964
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l698c
	dec (ix+#1b)
	jr nz,l698c
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l69c4
.l698c
	ld a,(ix+#29)
	or a
	jr z,l69c4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l69bb
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l69b2
	ld (ix+#29),#ff
	jr l69bb
.l69b2
	cp (ix+#2b)
	jr nz,l69bb
	ld (ix+#29),#01
.l69bb
	ld b,d
	or a
	jp p,l69c1
	dec b
.l69c1
	ld c,a
	jr l69cf
.l69c4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l69cf
	pop hl
	bit 7,(ix+#14)
	jr z,l69d8
	ld h,d
	ld l,d
.l69d8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6bb3
	ld c,h
	ld a,(ix+#02)
	call l6bb3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6a2b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l6a1a
	dec (ix+#09)
	jr nz,l6a1a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6a12
	xor a
	jr l6a17
.l6a12
	cp #10
	jr nz,l6a17
	dec a
.l6a17
	ld (ix+#1e),a
.l6a1a
	ld a,b
	sub (ix+#1e)
	jr nc,l6a21
	xor a
.l6a21
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6bb3
.l6a2b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l6bda)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l6a49
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l6a49
	ld (l6bda),hl
	ret
.l6a4d
	ld hl,l6bfc
	cp #61
	jr nc,l6a57
	add a
	ld c,a
	add hl,bc
.l6a57
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l6a61
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6b86
	ld (ix+#1e),a
	jp l68ee
.l6a73
	dec b
.l6a74
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l6a7f
	neg
.l6a7f
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
	jp l68ee
.l6a95
	dec b
	jr l6a99
.l6a98
	inc b
.l6a99
	call l6b86
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l68ee
.l6aa8
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
	jp l6b6b
.l6ab9
	ld a,(hl)
	inc hl
	or a
	jr z,l6adb
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
.l6adb
	ld (ix+#29),a
	jp l68ee
.l6ae1
	dec hl
	ld a,(hl)
	and #0f
	ld (l6bdd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l6bdc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l68ee
.l6afb
	ld a,(hl)
	or a
	jr z,l6b0c
	call l6b88
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l68ee
.l6b0c
	ld hl,#0101
	ld (l6bd8),hl
	jp l68ee
.l6b15
	call l6b86
	ld (ix+#1e),a
	jp l68ee
.l6b1e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6b97
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6b97
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l68ee
.l6b40
	ld a,(hl)
	inc hl
	ld (l6bd7),a
	jp l68ee
.l6b48
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
	jp l68ee
.l6b67
	call l6b86
	add a
.l6b6b
	ld b,#00
	ld c,a
	push hl
	ld hl,l6dce
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l68ee
.l6b86
	ld a,(hl)
	inc hl
.l6b88
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
.l6b97
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6d4e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l6bb3
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
.l6bd2
	ret
.l6bda equ $ + 7
.l6bd9 equ $ + 6
.l6bd8 equ $ + 5
.l6bd7 equ $ + 4
.l6bd5 equ $ + 2
.l6bd3
	db #01,#38,#0c,#0a,#04,#15,#01,#01
.l6bdd equ $ + 2
.l6bdc equ $ + 1
	db #38,#0c,#0a
.l6bde
	dw l6a61,l6a74,l6a73,l6a98
	dw l6a95,l6aa8,l6ab9,l6ae1
	dw l6afb,l6ae1,l6b15,l6b1e
	dw l6b40,l6b48,l6b67
.l6bfc
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
.l6cc2 equ $ + 4
.l6cbe
	db #08,#00,#01,#08,#be,#00,#10,#34
.l6ccc equ $ + 6
	db #00,#00,#00,#00,#00,#00,#6e,#6f
	db #2e,#70,#4e,#6f,#16,#0a,#04,#1c
.l6cdd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #0b,#71,#5a,#70,#00,#d0,#00,#00
.l6cec equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l6cf0 equ $ + 2
	db #03,#10,#f6,#02,#10,#1c,#00,#00
.l6cfa equ $ + 4
	db #00,#00,#00,#00,#ce,#6f,#0e,#70
	db #4e,#6f,#14,#09,#04,#1c,#00,#00
.l6d0b equ $ + 5
	db #00,#00,#00,#00,#00,#01,#0e,#72
	db #7b,#70,#00,#b0,#00,#00,#00,#00
.l6d1a equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l6d1e
	db #7b,#01,#00,#28,#00,#00,#00,#00
.l6d28 equ $ + 2
	db #00,#00,#ce,#6f,#0e,#70,#4e,#6f
	db #14,#09,#04,#1c,#00,#00,#00,#00
.l6d39 equ $ + 3
	db #00,#00,#00,#01,#3b,#73,#9c,#70
	db #00,#b0,#00,#00,#00,#00,#00,#00
.l6d48 equ $ + 2
	db #01,#01,#4e,#70,#6f,#70,#90,#70
.l6d4e
	db #ee,#6d,#2e,#6e,#4e,#6e,#80,#00
	db #6e,#6e,#ae,#6e,#ce,#6e,#00,#00
	db #35,#52,#b8,#69,#61,#36,#3c,#80
	db #ad,#8a,#c0,#73,#bf,#72,#f4,#d7
	db #bf,#72,#e5,#83,#65,#60,#b4,#c0
	db #bd,#70,#b5,#69,#bd,#6a,#fc,#f8
	db #bf,#72,#ad,#d6,#e9,#23,#74,#f4
	db #b5,#24,#b5,#68,#be,#68,#f5,#ff
	db #ee,#6e,#2e,#6f,#4e,#6f,#40,#00
	db #1d,#08,#c0,#73,#7d,#0a,#fc,#fe
	db #6e,#6f,#ae,#6f,#4e,#6f,#16,#0a
	db #ce,#6f,#0e,#70,#4e,#6f,#14,#09
	db #ad,#5b,#a5,#70,#81,#d0,#d6,#40
	db #6e,#6f,#2e,#70,#4e,#6f,#16,#0a
	db #af,#3b,#e5,#a7,#b7,#7c,#67,#c9
	db #c1,#73,#f5,#87,#e5,#77,#24,#04
.l6dce
	db #e5,#77,#c1,#73,#c1,#73,#e5,#73
	db #e5,#73,#b7,#6a,#ad,#38,#bd,#6a
	db #bf,#72,#e1,#73,#e1,#73,#c1,#73
	db #c1,#73,#f1,#a3,#e5,#a7,#e1,#a3
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
	db #00,#b1,#70,#00,#b4,#70,#00,#b4
	db #70,#00,#b4,#70,#00,#b4,#70,#00
	db #36,#71,#00,#36,#71,#00,#b4,#70
	db #00,#36,#71,#00,#b4,#70,#80,#4e
	db #70,#00,#b4,#70,#00,#b8,#71,#00
	db #b8,#71,#00,#b8,#71,#00,#b8,#71
	db #00,#b8,#71,#00,#b8,#71,#00,#39
	db #72,#00,#b8,#71,#00,#39,#72,#80
	db #6f,#70,#00,#ca,#72,#00,#e5,#72
	db #00,#66,#73,#00,#e5,#72,#00,#66
	db #73,#00,#f7,#73,#00,#f7,#73,#00
	db #68,#74,#00,#f7,#73,#00,#68,#74
	db #80,#90,#70,#00,#40,#ff,#b8,#da
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
	db #fe,#01,#ff,#00,#77,#00,#00,#ee
	db #ff,#cc,#33,#ff,#ff,#ee,#77,#ff
	db #ff,#ff,#ff,#ff,#77,#ff,#ff,#ee
	db #77,#ff,#ff,#ee,#33,#ff,#ff,#cc
	db #11,#ff,#ff,#88,#11,#ff,#ff,#88
	db #33,#ff,#ff,#cc,#77,#ff,#ff,#ee
	db #77,#ff,#ff,#ee,#ff,#ff,#ff,#ff
	db #ff,#ee,#77,#ff,#ff,#cc,#33,#ff
;
.music_info
	db "Push - Menu (1995)(Public Domain)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"
