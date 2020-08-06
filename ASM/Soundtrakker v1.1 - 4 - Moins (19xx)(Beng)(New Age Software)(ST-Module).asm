; Music of Soundtrakker v1.1 - 4 - Moins (19xx)(Beng)(New Age Software)(ST-Module)
; Ripped by Megachur the 05/08/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOUNDT4M.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #3de9

	read "music_header.asm"

	jp l3df4
	jp l3e7c
	jp l3e60
	db #66,#04
;
.init_music
.l3df4
;
	ld b,#03
	ld ix,l41c3
	ld iy,l40ef
	ld de,#001c
.l3e01
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
	djnz l3e01
	ld a,#06
	ld (l3ea4),a
	ld a,d
	ld (l3eb8),a
	inc a
	ld (l3e9f),a
	ld a,#38
	ld (l3ea9),a
	ld a,#ff
	ld (l40eb),a
	ld (l40ec),a
	ld (l40ed),a
	ld (l40ee),a
	ld a,#0c
	ld c,d
	call l40cd
	ld a,#0d
	ld c,d
	jp l40cd
;
.stop_music
.l3e60
;
	ld a,#07
	ld c,#3f
	call l40cd
	ld a,#08
	ld c,#00
	call l40cd
	ld a,#09
	ld c,#00
	call l40cd
	ld a,#0a
	ld c,#00
	jp l40cd
;
.play_music
.l3e7c
;
	ld hl,l3e9f
	dec (hl)
	ld ix,l41c3
	ld bc,l41d1
	call l3f32
	ld ix,l41df
	ld bc,l41ed
	call l3f32
	ld ix,l41fb
	ld bc,l4209
	call l3f32
.l3e9f equ $ + 1
	ld a,#00
	or a
	jr nz,l3ea8
.l3ea4 equ $ + 1
	ld a,#00
	ld (l3e9f),a
.l3ea9 equ $ + 1
.l3ea8
	ld a,#00
	ld hl,l40ec
	cp (hl)
	jr z,l3eb7
	ld (hl),a
	ld c,a
	ld a,#07
	call l40cd
.l3eb8 equ $ + 1
.l3eb7
	ld a,#00
	ld hl,l40eb
	cp (hl)
	jr z,l3ec6
	ld (hl),a
	ld c,a
	ld a,#06
	call l40cd
.l3ec7 equ $ + 1
.l3ec6
	ld a,#00
	ld hl,l40ed
	cp (hl)
	jr z,l3ed5
	ld (hl),a
	ld c,a
	ld a,#0b
	call l40cd
.l3ed6 equ $ + 1
.l3ed5
	ld a,#00
	ld hl,l40ee
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l40cd
.l3ee3
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l3fe3
.l3ef2
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
	jp l40cd
.l3f0c
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l3f21
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l3f21
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l3f45
.l3f32
	ld a,(l3e9f)
	or a
	jp nz,l3fe3
	dec (ix+#06)
	jp nz,l3fe3
	ld l,(ix+#00)
	ld h,(ix+#01)
.l3f45
	ld a,(hl)
	or a
	jr z,l3ee3
	cp #fe
	jr z,l3ef2
	cp #ff
	jr z,l3f0c
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l40f5
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l3f81
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l3f81
	and #7f
	ld (ix+#06),a
	jr l3fd4
.l3f81
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l3f95
	ld (ix+#05),a
	ld (ix+#0a),d
.l3f95
	add a
	add a
	add a
	ld e,a
	ld hl,l422b
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
	jr z,l3fd4
	cp #f0
	jp z,l4089
	cp #d0
	jp z,l40a5
	cp #b0
	jp z,l40ad
	cp #80
	jp nc,l40b5
	cp #10
	jr nz,l3fd4
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l3fd4
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l3fe3
	ld a,(ix+#17)
	or a
	jr nz,l3ff7
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l3ff7
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l4022
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l40f5
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l4022
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
	call l40cd
	ld c,h
	ld a,(ix+#03)
	call l40cd
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4060
	and #0f
	sub (ix+#0a)
	jr nc,l4056
	xor a
.l4056
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l40cd
.l4060
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
	jr z,l407d
	ld b,a
	ld a,c
	ld (l3eb8),a
	ld a,b
	sub #40
.l407d
	ld (l4084),a
	ld a,(l3ea9)
.l4084 equ $ + 1
	bit 0,a
	ld (l3ea9),a
	ret
.l4089
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l42ab
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l3fd4
.l40a5
	inc hl
	ld a,(hl)
	ld (l3ea4),a
	jp l3fd4
.l40ad
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l3fd4
.l40b5
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l3ed6),a
	inc hl
	ld a,(hl)
	ld (l3ec7),a
	jp l3fd4
.l40cd
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
.l40ee equ $ + 3
.l40ed equ $ + 2
.l40ec equ $ + 1
.l40eb
	db #ff,#ff,#ff,#ff
.l40ef
	dw l464b,l466f,l4693
.l40f5
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
.l41c3 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l41d1 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l41df
	db #00,#00,#02,#03,#09,#00,#00,#00
.l41ed equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l41fb equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l4209 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l422b equ $ + 4
	db #75,#6c,#65,#2e,#cb,#42,#0b,#43
	db #2b,#43,#00,#00,#4b,#43,#8b,#43
	db #ab,#43,#00,#00,#0e,#90,#0a,#f1
	db #e5,#3e,#00,#ff,#c4,#3c,#e6,#ce
	db #35,#9b,#23,#56,#cb,#43,#0b,#44
	db #2b,#44,#00,#00,#c3,#3c,#8f,#3d
	db #5d,#3b,#50,#30,#cd,#78,#14,#43
	db #c5,#29,#b0,#18,#cb,#43,#4b,#44
	db #2b,#43,#18,#07,#6b,#44,#ab,#44
	db #2b,#43,#18,#07,#cb,#44,#0b,#45
	db #2b,#45,#00,#00,#4b,#45,#8b,#45
	db #ab,#45,#00,#00,#cb,#45,#0b,#46
	db #2b,#46,#00,#00,#be,#6d,#bf,#6d
	db #be,#6d,#f8,#30,#bc,#6d,#bb,#6d
	db #bc,#6d,#f8,#30,#be,#6d,#bf,#6d
	db #be,#6d,#f8,#30,#bc,#6d,#bb,#6d
.l42ab equ $ + 4
	db #c4,#3c,#fe,#ff,#c4,#3c,#c5,#3c
	db #c6,#3c,#c7,#3c,#c6,#3c,#c5,#3c
	db #c4,#3c,#c3,#3c,#c4,#3c,#c5,#3c
	db #c6,#3c,#c7,#3c,#c6,#3c,#c5,#3c
	db #c4,#3c,#c3,#3c,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#02,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#80,#00
	db #40,#01,#a0,#01,#40,#02,#e8,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#07,#06,#06
	db #06,#05,#05,#05,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0d,#0c,#0b,#0a,#08
	db #06,#08,#0a,#0c,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#00,#00,#40,#00
	db #80,#00,#c0,#00,#00,#01,#40,#01
	db #80,#01,#c0,#01,#00,#02,#40,#02
	db #80,#02,#c0,#02,#00,#03,#40,#03
	db #80,#03,#c0,#03,#00,#04,#40,#04
	db #80,#04,#c0,#04,#00,#05,#40,#05
	db #80,#05,#c0,#05,#00,#06,#40,#06
	db #80,#06,#c0,#06,#00,#07,#40,#07
	db #80,#07,#c0,#07,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#03,#00,#00,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#30,#00
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
	db #00,#00,#00,#00,#04,#06,#07,#09
	db #0c,#11,#17,#1d,#15,#10,#0c,#09
	db #06,#05,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#05,#00,#06,#00
	db #08,#00,#0a,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#d4,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0c,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#03,#02,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
.l464b equ $ + 4
	db #01,#01,#01,#01,#00,#b7,#46,#00
	db #b7,#46,#00,#38,#47,#00,#b7,#46
	db #00,#b7,#46,#00,#b7,#46,#00,#b7
	db #46,#00,#b9,#47,#00,#3a,#48,#00
	db #ae,#48,#00,#ae,#48,#80,#51,#46
.l466f
	db #00,#f5,#48,#00,#f5,#48,#00,#0b
	db #49,#00,#39,#49,#00,#39,#49,#00
	db #84,#49,#00,#84,#49,#00,#05,#4a
	db #00,#86,#4a,#00,#fa,#4a,#00,#fa
.l4693 equ $ + 4
	db #4a,#80,#75,#46,#00,#7b,#4b,#00
	db #7b,#4b,#00,#98,#4b,#00,#7b,#4b
	db #00,#7b,#4b,#00,#7b,#4b,#00,#7b
	db #4b,#00,#7b,#4b,#00,#b5,#4b,#00
	db #d5,#4b,#00,#d5,#4b,#80,#99,#46
	db #bd,#08,#b6,#08,#b6,#08,#bd,#08
	db #b6,#08,#b6,#08,#bd,#08,#b6,#08
	db #bb,#08,#b4,#08,#b4,#08,#bb,#08
	db #b4,#08,#b4,#08,#bb,#08,#b4,#08
	db #b9,#08,#b2,#08,#b2,#08,#b9,#08
	db #b5,#08,#b6,#08,#b8,#08,#b9,#08
	db #b6,#08,#af,#08,#af,#08,#b6,#08
	db #b9,#08,#b1,#08,#b1,#08,#b9,#08
	db #b6,#08,#b1,#08,#b1,#08,#b6,#08
	db #b9,#08,#b6,#08,#b9,#08,#b6,#08
	db #b6,#08,#af,#08,#b1,#08,#b2,#08
	db #b1,#08,#af,#08,#b1,#08,#b4,#08
	db #b6,#08,#b9,#08,#b6,#08,#b4,#08
	db #b6,#08,#b1,#08,#b4,#08,#b6,#08
	db #b4,#08,#b4,#08,#b6,#08,#b9,#08
	db #b6,#08,#b1,#08,#b4,#08,#b6,#08
	db #ff,#bd,#08,#b6,#08,#b6,#08,#bd
	db #08,#b6,#08,#b6,#08,#bd,#08,#b6
	db #08,#bb,#08,#b4,#08,#b4,#08,#bb
	db #08,#b4,#08,#b4,#08,#bb,#08,#b4
	db #08,#b9,#08,#b2,#08,#b2,#08,#b9
	db #08,#b5,#08,#b6,#08,#b8,#08,#b9
	db #08,#b6,#08,#af,#08,#af,#08,#b6
	db #08,#b9,#08,#b1,#08,#b1,#08,#b9
	db #08,#b6,#08,#b1,#08,#b1,#08,#b6
	db #08,#b9,#08,#b6,#08,#b9,#08,#b6
	db #08,#b6,#08,#af,#08,#b1,#08,#b2
	db #08,#b1,#08,#af,#08,#b1,#08,#b4
	db #08,#b6,#08,#b9,#08,#b6,#08,#b4
	db #08,#b6,#08,#b1,#08,#b4,#08,#b6
	db #08,#b4,#08,#b4,#08,#b6,#08,#b9
	db #08,#b6,#08,#b1,#08,#b4,#08,#b6
	db #08,#ff,#b6,#08,#b9,#08,#bb,#08
	db #bd,#08,#b6,#08,#b9,#08,#bb,#08
	db #bd,#08,#bb,#08,#b8,#08,#b4,#08
	db #bb,#08,#b8,#08,#b4,#08,#b6,#08
	db #b8,#08,#b9,#08,#b6,#08,#b2,#08
	db #b9,#08,#b8,#08,#b5,#08,#b1,#08
	db #b5,#08,#b6,#08,#b9,#08,#b6,#08
	db #bd,#08,#b9,#08,#b6,#08,#bb,#08
	db #bd,#08,#b6,#08,#b1,#08,#b4,#08
	db #af,#08,#b1,#08,#ad,#08,#af,#08
	db #ac,#08,#aa,#08,#ad,#08,#af,#08
	db #b1,#08,#b6,#08,#b9,#08,#bb,#08
	db #bd,#08,#b6,#08,#b9,#08,#bb,#08
	db #bd,#08,#b6,#08,#b9,#08,#b8,#08
	db #b4,#08,#b6,#08,#b9,#08,#bb,#08
	db #bd,#08,#b6,#08,#b9,#08,#b8,#08
	db #b4,#08,#ff,#b6,#08,#b9,#08,#bb
	db #08,#bd,#08,#b6,#08,#b9,#08,#bb
	db #08,#bd,#08,#bb,#08,#b8,#08,#b4
	db #08,#bb,#08,#b8,#08,#b4,#08,#b6
	db #08,#b8,#08,#b9,#08,#b6,#08,#b2
	db #08,#b9,#08,#b8,#08,#b5,#08,#b1
	db #08,#b5,#08,#b6,#08,#b9,#08,#b6
	db #08,#bd,#08,#b9,#08,#b6,#08,#bb
	db #08,#bd,#08,#b6,#08,#b1,#08,#b4
	db #08,#af,#08,#b1,#08,#ad,#08,#af
	db #08,#ac,#08,#aa,#08,#ad,#08,#af
	db #08,#b1,#08,#b6,#08,#b9,#08,#bb
	db #08,#bd,#08,#b6,#08,#b9,#08,#bb
	db #08,#bd,#08,#b6,#08,#b9,#08,#b8
	db #08,#b4,#08,#2e,#08,#01,#ff,#2a
	db #02,#18,#2a,#82,#28,#02,#18,#28
	db #82,#2a,#02,#18,#2a,#82,#25,#02
	db #18,#28,#02,#18,#2a,#02,#18,#2a
	db #82,#28,#02,#18,#28,#82,#2a,#07
	db #18,#fe,#01,#2a,#82,#2a,#82,#28
	db #02,#18,#28,#82,#2a,#02,#18,#2a
	db #82,#25,#02,#18,#28,#02,#18,#2a
	db #02,#18,#2a,#82,#28,#02,#18,#25
	db #02,#18,#1e,#08,#18,#ff,#2a,#08
	db #17,#28,#08,#17,#26,#04,#17,#25
	db #04,#17,#23,#04,#17,#21,#04,#17
	db #1e,#20,#17,#ff,#2e,#06,#09,#2e
	db #82,#2e,#87,#ae,#09,#2e,#82,#ae
	db #09,#2e,#82,#ae,#09,#2e,#82,#2e
	db #82,#2e,#82,#2e,#82,#ae,#09,#ae
	db #09,#2e,#86,#2e,#82,#2e,#88,#2e
	db #86,#2e,#82,#2e,#83,#2e,#83,#2e
	db #82,#ff,#2e,#04,#09,#46,#02,#0a
	db #2e,#02,#09,#2e,#84,#46,#02,#0a
	db #c6,#0a,#ae,#09,#2e,#82,#ae,#09
	db #ae,#09,#c6,#0a,#ae,#09,#2e,#82
	db #2e,#82,#2e,#82,#46,#02,#0a,#ae
	db #09,#ae,#09,#2e,#84,#46,#02,#0a
	db #46,#82,#2e,#04,#09,#46,#04,#0a
	db #2e,#04,#09,#46,#02,#0a,#c6,#0a
	db #c6,#0a,#2e,#03,#09,#ae,#09,#46
	db #02,#0a,#46,#82,#ff,#ae,#09,#da
	db #04,#da,#04,#da,#04,#c6,#0a,#da
	db #04,#ae,#09,#da,#04,#ae,#09,#da
	db #04,#da,#04,#da,#04,#c6,#0a,#da
	db #04,#c6,#0a,#ae,#09,#ae,#09,#da
	db #04,#ae,#09,#ae,#09,#c6,#0a,#ae
	db #09,#ae,#09,#da,#04,#ae,#09,#da
	db #04,#ae,#09,#da,#04,#c6,#0a,#da
	db #04,#ae,#09,#ae,#09,#ae,#09,#da
	db #04,#da,#04,#da,#04,#c6,#0a,#da
	db #04,#c6,#0a,#da,#04,#ae,#09,#da
	db #04,#da,#04,#da,#04,#c6,#0a,#da
	db #04,#da,#04,#da,#04,#ae,#09,#da
	db #04,#da,#04,#da,#04,#c6,#0a,#da
	db #04,#c6,#0a,#c6,#0a,#ae,#09,#da
	db #04,#da,#04,#ae,#09,#c6,#0a,#da
	db #04,#c6,#0a,#da,#04,#ff,#ae,#09
	db #da,#04,#da,#04,#da,#04,#c6,#0a
	db #da,#04,#ae,#09,#da,#04,#ae,#09
	db #da,#04,#da,#04,#da,#04,#c6,#0a
	db #da,#04,#c6,#0a,#ae,#09,#ae,#09
	db #da,#04,#ae,#09,#ae,#09,#c6,#0a
	db #ae,#09,#ae,#09,#da,#04,#ae,#09
	db #da,#04,#ae,#09,#da,#04,#c6,#0a
	db #da,#04,#ae,#09,#ae,#09,#ae,#09
	db #da,#04,#da,#04,#da,#04,#c6,#0a
	db #da,#04,#c6,#0a,#da,#04,#ae,#09
	db #da,#04,#da,#04,#da,#04,#c6,#0a
	db #da,#04,#da,#04,#da,#04,#ae,#09
	db #da,#04,#da,#04,#da,#04,#c6,#0a
	db #da,#04,#c6,#0a,#c6,#0a,#ae,#09
	db #da,#04,#da,#04,#ae,#09,#c6,#0a
	db #da,#04,#c6,#0a,#da,#04,#ff,#ae
	db #09,#da,#04,#da,#04,#da,#04,#c6
	db #0a,#da,#04,#ae,#09,#da,#04,#ae
	db #09,#da,#04,#da,#04,#da,#04,#c6
	db #0a,#da,#04,#c6,#0a,#ae,#09,#ae
	db #09,#da,#04,#ae,#09,#ae,#09,#c6
	db #0a,#ae,#09,#ae,#09,#da,#04,#ae
	db #09,#da,#04,#ae,#09,#da,#04,#c6
	db #0a,#da,#04,#ae,#09,#ae,#09,#ae
	db #09,#da,#04,#da,#04,#da,#04,#c6
	db #0a,#da,#04,#c6,#0a,#da,#04,#ae
	db #09,#da,#04,#da,#04,#da,#04,#c6
	db #0a,#da,#04,#da,#04,#da,#04,#ae
	db #09,#da,#04,#da,#04,#da,#04,#c6
	db #0a,#da,#04,#c6,#0a,#c6,#0a,#3c
	db #08,#09,#ff,#ae,#09,#da,#04,#da
	db #0b,#da,#04,#ae,#0a,#da,#04,#da
	db #04,#ae,#09,#da,#04,#da,#04,#ae
	db #09,#da,#04,#ae,#0a,#da,#04,#ae
	db #0a,#da,#04,#ae,#09,#da,#04,#da
	db #0b,#da,#04,#ae,#0a,#da,#04,#da
	db #04,#ae,#09,#da,#04,#ae,#09,#ae
	db #09,#da,#04,#ae,#0a,#da,#04,#da
	db #0b,#da,#04,#ae,#09,#da,#04,#da
	db #0b,#da,#04,#ae,#0a,#da,#04,#da
	db #04,#ae,#09,#da,#04,#da,#04,#ae
	db #09,#da,#04,#ae,#0a,#da,#04,#ae
	db #09,#da,#04,#ae,#09,#da,#04,#ae
	db #09,#da,#04,#ae,#0a,#ae,#09,#da
	db #04,#ae,#09,#ae,#09,#da,#04,#ae
	db #0a,#da,#04,#ae,#0a,#da,#04,#ae
	db #0a,#da,#04,#ff,#2a,#08,#c0,#13
	db #28,#08,#c0,#15,#26,#04,#c0,#10
	db #25,#04,#c0,#19,#23,#04,#c0,#13
	db #21,#04,#c0,#10,#1e,#20,#c0,#13
	db #ff,#2a,#08,#c0,#13,#28,#08,#c0
	db #15,#26,#04,#c0,#10,#25,#04,#c0
	db #19,#23,#04,#c0,#13,#21,#04,#c0
	db #10,#1e,#20,#c0,#13,#ff,#2a,#08
	db #c0,#13,#28,#08,#c0,#15,#26,#04
	db #c0,#10,#25,#04,#c0,#19,#23,#04
	db #c0,#13,#21,#04,#c0,#10,#1e,#18
	db #c0,#13,#48,#08,#1a,#ff,#2a,#02
	db #c8,#13,#2a,#82,#28,#02,#c8,#15
	db #28,#82,#2a,#02,#c8,#13,#2a,#82
	db #25,#02,#c8,#19,#28,#02,#c8,#15
	db #2a,#02,#c8,#13,#2a,#82,#28,#02
	db #c8,#15,#28,#82,#2a,#07,#c8,#13
	db #fe,#01,#2a,#82,#2a,#82,#28,#02
	db #c8,#15,#28,#82,#2a,#02,#c8,#13
	db #2a,#82,#25,#02,#c8,#19,#28,#02
	db #c8,#15,#2a,#02,#c8,#13,#2a,#82
	db #28,#02,#c8,#15,#25,#02,#c8,#19
	db #1e,#08,#c8,#26,#ff
;
.music_info
	db "Soundtrakker v1.1 - 4 - Moins (19xx)(Beng)(New Age Software)",0
	db "ST-Module",0

	read "music_end.asm"