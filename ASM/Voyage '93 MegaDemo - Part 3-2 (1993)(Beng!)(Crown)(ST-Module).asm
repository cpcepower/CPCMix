; Music of Voyage '93 MegaDemo - Part 3-2 (1993)(Beng!)(Crown)(ST-Module)
; Ripped by Megachur the 01/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "VO93MP32.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6a00

	read "music_header.asm"

	jp l6a0b
	jp l6a93
	jp l6a77
	db #66,#04
;
.init_music
.l6a0b
;
	ld b,#03
	ld ix,l6dda
	ld iy,l6d06
	ld de,#001c
.l6a18
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
	djnz l6a18
	ld a,#06
	ld (l6abb),a
	ld a,d
	ld (l6acf),a
	inc a
	ld (l6ab6),a
	ld a,#38
	ld (l6ac0),a
	ld a,#ff
	ld (l6d02),a
	ld (l6d03),a
	ld (l6d04),a
	ld (l6d05),a
	ld a,#0c
	ld c,d
	call l6ce4
	ld a,#0d
	ld c,d
	jp l6ce4
;
.stop_music
.l6a77
;
	ld a,#07
	ld c,#3f
	call l6ce4
	ld a,#08
	ld c,#00
	call l6ce4
	ld a,#09
	ld c,#00
	call l6ce4
	ld a,#0a
	ld c,#00
	jp l6ce4
;
.play_music
.l6a93
;
	ld hl,l6ab6
	dec (hl)
	ld ix,l6dda
	ld bc,l6de8
	call l6b49
	ld ix,l6df6
	ld bc,l6e04
	call l6b49
	ld ix,l6e12
	ld bc,l6e20
	call l6b49
.l6ab6 equ $ + 1
	ld a,#00
	or a
	jr nz,l6abf
.l6abb equ $ + 1
	ld a,#00
	ld (l6ab6),a
.l6ac0 equ $ + 1
.l6abf
	ld a,#00
	ld hl,l6d03
	cp (hl)
	jr z,l6ace
	ld (hl),a
	ld c,a
	ld a,#07
	call l6ce4
.l6acf equ $ + 1
.l6ace
	ld a,#00
	ld hl,l6d02
	cp (hl)
	jr z,l6add
	ld (hl),a
	ld c,a
	ld a,#06
	call l6ce4
.l6ade equ $ + 1
.l6add
	ld a,#00
	ld hl,l6d04
	cp (hl)
	jr z,l6aec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l6ce4
.l6aed equ $ + 1
.l6aec
	ld a,#00
	ld hl,l6d05
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l6ce4
.l6afa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l6bfa
.l6b09
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
	jp l6ce4
.l6b23
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l6b38
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l6b38
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l6b5c
.l6b49
	ld a,(l6ab6)
	or a
	jp nz,l6bfa
	dec (ix+#06)
	jp nz,l6bfa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l6b5c
	ld a,(hl)
	or a
	jr z,l6afa
	cp #fe
	jr z,l6b09
	cp #ff
	jr z,l6b23
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l6d0c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l6b98
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l6b98
	and #7f
	ld (ix+#06),a
	jr l6beb
.l6b98
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l6bac
	ld (ix+#05),a
	ld (ix+#0a),d
.l6bac
	add a
	add a
	add a
	ld e,a
	ld hl,l6e42
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
	jr z,l6beb
	cp #f0
	jp z,l6ca0
	cp #d0
	jp z,l6cbc
	cp #b0
	jp z,l6cc4
	cp #80
	jp nc,l6ccc
	cp #10
	jr nz,l6beb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l6beb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l6bfa
	ld a,(ix+#17)
	or a
	jr nz,l6c0e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l6c0e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l6c39
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l6d0c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l6c39
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
	call l6ce4
	ld c,h
	ld a,(ix+#03)
	call l6ce4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6c77
	and #0f
	sub (ix+#0a)
	jr nc,l6c6d
	xor a
.l6c6d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l6ce4
.l6c77
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
	jr z,l6c94
	ld b,a
	ld a,c
	ld (l6acf),a
	ld a,b
	sub #40
.l6c94
	ld (l6c9b),a
	ld a,(l6ac0)
.l6c9b equ $ + 1
	bit 0,a
	ld (l6ac0),a
	ret
.l6ca0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l6ec2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l6beb
.l6cbc
	inc hl
	ld a,(hl)
	ld (l6abb),a
	jp l6beb
.l6cc4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l6beb
.l6ccc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l6aed),a
	inc hl
	ld a,(hl)
	ld (l6ade),a
	jp l6beb
.l6ce4
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
.l6d05 equ $ + 3
.l6d04 equ $ + 2
.l6d03 equ $ + 1
.l6d02
	db #ff,#ff,#ff,#ff
.l6d06
	dw l7002,l7017,l702c
.l6d0c
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
.l6dda equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l6de8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6df6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l6e04 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e12 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l6e20 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6e42 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#6e,#22,#6f
	db #42,#6f,#00,#00,#dc,#68,#dc,#68
	db #dc,#68,#00,#00,#dc,#68,#dc,#68
	db #dc,#68,#00,#00,#dc,#68,#dc,#68
	db #dc,#68,#00,#00,#dc,#68,#dc,#68
	db #dc,#68,#00,#00,#dc,#68,#dc,#68
	db #dc,#68,#00,#00,#62,#6f,#a2,#6f
	db #c2,#6f,#00,#00,#e2,#6e,#e2,#6f
	db #42,#6f,#18,#07,#dc,#68,#dc,#68
	db #dc,#68,#00,#00,#dc,#68,#c8,#d3
	db #d4,#3c,#28,#d4,#34,#3d,#88,#d4
	db #94,#3d,#d8,#d4,#b7,#d1,#da,#68
	db #b7,#d1,#02,#71,#fe,#d9,#1e,#da
	db #3e,#da,#dc,#68,#b7,#d1,#b6,#d1
	db #5e,#da,#dc,#68,#7e,#da,#9e,#da
	db #be,#da,#dc,#68,#b7,#d1,#b6,#d1
.l6ec2 equ $ + 4
	db #5c,#69,#00,#01,#5c,#6a,#dc,#6a
	db #5c,#6b,#dc,#6b,#dc,#6c,#dc,#68
	db #dc,#68,#dc,#68,#dc,#68,#dc,#68
	db #dc,#68,#dc,#68,#dc,#68,#dc,#68
	db #dc,#68,#dc,#68,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#38,#00,#60,#00
	db #b0,#00,#18,#01,#48,#01,#80,#01
	db #c8,#01,#10,#02,#58,#02,#b0,#02
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0c,#0b,#09,#07,#06,#03,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#05
	db #04,#04,#03,#02,#01,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#07,#06,#06
.l7002 equ $ + 4
	db #06,#05,#05,#05,#00,#41,#70,#00
	db #c2,#70,#00,#c2,#70,#00,#41,#70
	db #00,#41,#70,#00,#41,#70,#80,#05
.l7017 equ $ + 1
	db #70,#00,#43,#71,#00,#5c,#71,#00
	db #5c,#71,#00,#75,#71,#00,#8e,#71
.l702c equ $ + 6
	db #00,#8e,#71,#80,#1a,#70,#00,#a7
	db #71,#00,#aa,#71,#00,#aa,#71,#00
	db #da,#71,#00,#1a,#72,#00,#1a,#72
	db #80,#2f,#70,#a2,#00,#ae,#00,#a2
	db #00,#ae,#00,#c6,#06,#ae,#00,#a2
	db #00,#ae,#00,#a5,#00,#b1,#00,#a5
	db #00,#b1,#00,#c6,#06,#b1,#00,#a5
	db #00,#b1,#00,#a0,#00,#ac,#00,#a0
	db #00,#ac,#00,#c6,#06,#ac,#00,#a0
	db #00,#ac,#00,#a2,#00,#ae,#00,#a2
	db #00,#ae,#00,#c6,#06,#ae,#00,#a2
	db #00,#ae,#00,#a2,#00,#ae,#00,#a2
	db #00,#ae,#00,#c6,#06,#ae,#00,#a2
	db #00,#ae,#00,#a5,#00,#b1,#00,#a5
	db #00,#b1,#00,#c6,#06,#b1,#00,#a5
	db #00,#b1,#00,#a0,#00,#ac,#00,#a0
	db #00,#ac,#00,#c6,#06,#ac,#00,#a0
	db #00,#ac,#00,#a2,#00,#ae,#00,#a2
	db #00,#ae,#00,#c6,#06,#ae,#00,#a2
	db #00,#ae,#00,#ff,#a2,#00,#ae,#00
	db #a2,#00,#ae,#00,#c6,#06,#ae,#00
	db #a2,#00,#ae,#00,#a5,#00,#b1,#00
	db #a5,#00,#b1,#00,#c6,#06,#b1,#00
	db #a5,#00,#b1,#00,#a0,#00,#ac,#00
	db #a0,#00,#ac,#00,#c6,#06,#ac,#00
	db #a0,#00,#ac,#00,#a2,#00,#ae,#00
	db #a2,#00,#ae,#00,#c6,#06,#ae,#00
	db #a2,#00,#ae,#00,#a2,#00,#ae,#00
	db #a2,#00,#ae,#00,#c6,#06,#ae,#00
	db #a2,#00,#ae,#00,#a5,#00,#b1,#00
	db #a5,#00,#b1,#00,#c6,#06,#b1,#00
	db #a5,#00,#b1,#00,#a0,#00,#ac,#00
	db #a0,#00,#ac,#00,#c6,#06,#ac,#00
	db #a0,#00,#ac,#00,#a2,#00,#ae,#00
	db #a2,#00,#ae,#00,#c6,#06,#ae,#00
	db #a2,#00,#ae,#00,#ff,#46,#08,#77
	db #44,#08,#07,#48,#88,#46,#88,#46
	db #88,#44,#88,#48,#82,#c9,#07,#48
	db #83,#44,#82,#46,#88,#ff,#46,#08
	db #77,#44,#08,#07,#48,#88,#46,#88
	db #46,#88,#44,#88,#48,#82,#c9,#07
	db #48,#83,#44,#82,#46,#88,#ff,#46
	db #08,#77,#44,#08,#07,#48,#88,#46
	db #88,#46,#88,#44,#88,#48,#82,#c9
	db #07,#48,#83,#44,#82,#46,#88,#ff
	db #46,#08,#77,#44,#08,#07,#48,#88
	db #46,#88,#46,#88,#44,#88,#48,#82
	db #c9,#07,#48,#83,#44,#82,#46,#88
	db #ff,#00,#40,#ff,#00,#02,#41,#02
	db #00,#41,#82,#bf,#00,#41,#89,#c1
	db #00,#3f,#83,#3d,#82,#bc,#00,#3a
	db #83,#ba,#00,#bc,#00,#3d,#82,#3f
	db #82,#41,#83,#3d,#83,#3d,#84,#3d
	db #82,#3f,#82,#41,#82,#3d,#83,#3c
	db #83,#3a,#8a,#ff,#2e,#06,#00,#ae
	db #00,#b0,#00,#31,#82,#35,#82,#38
	db #82,#3a,#84,#3a,#82,#b8,#00,#3a
	db #82,#35,#82,#b5,#00,#38,#82,#38
	db #82,#35,#82,#35,#82,#35,#82,#b3
	db #00,#35,#82,#31,#82,#b1,#00,#b3
	db #00,#b5,#00,#38,#82,#35,#82,#33
	db #82,#35,#82,#b3,#00,#31,#82,#30
	db #83,#2e,#86,#ff,#b5,#00,#ba,#00
	db #ba,#00,#b5,#00,#bc,#00,#b5,#00
	db #3d,#82,#3c,#82,#ba,#00,#38,#83
	db #ba,#00,#bc,#00,#bc,#00,#bd,#00
	db #3a,#82,#ba,#00,#bc,#00,#b8,#00
	db #bd,#00,#35,#82,#3c,#82,#3a,#82
	db #38,#82,#ba,#00,#b5,#00,#bc,#00
	db #ba,#00,#b5,#00,#3d,#82,#bd,#00
	db #bc,#00,#b5,#00,#ba,#00,#b8,#00
	db #3a,#82,#b8,#00,#ba,#00,#b8,#00
	db #bc,#00,#b5,#00,#ba,#00,#b5,#00
	db #bc,#00,#b8,#00,#3d,#82,#bc,#00
	db #bc,#00,#ba,#00,#3d,#82,#3c,#82
	db #ff
;
.music_info
	db "Voyage '93 MegaDemo - Part 3-2 (1993)(Beng!)(Crown)",0
	db "ST-Module",0

	read "music_end.asm"
