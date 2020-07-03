; Music of Walthery Slide Show - Main Part (19xx)(Mortel)()(ST-128 Module)
; Ripped by Megachur the 25/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "WALTHSSMP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8c00

	read "music_header.asm"

	jp l8c09
	jp l8c9d
	jp l8c81
;
.init_music
.l8c09
;
	xor a
	ld hl,l91b4
	call l8c7a
	ld hl,l91e2
	call l8c7a
	ld hl,l9210
	call l8c7a
	ld ix,l91b0
	ld iy,l923a
	ld de,#002e
	ld b,#03
.l8c29
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
	djnz l8c29
	ld hl,l90c9
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
	ld (l90c5),hl
	ld (l90c7),hl
	ld a,#0c
	ld c,d
	call l90a5
	ld a,#0d
	ld c,d
	jp l90a5
.l8c7a
	ld b,#2a
.l8c7c
	ld (hl),a
	inc hl
	djnz l8c7c
	ret
;
.stop_music
.l8c81
;
	ld a,#07
	ld c,#3f
	call l90a5
	ld a,#08
	ld c,#00
	call l90a5
	ld a,#09
	ld c,#00
	call l90a5
	ld a,#0a
	ld c,#00
	jp l90a5
;
.play_music
.l8c9d
;
	ld hl,l90cb
	dec (hl)
	ld ix,l91b0
	ld bc,l91be
	call l8d3f
	ld ix,l91de
	ld bc,l91ec
	call l8d3f
	ld ix,l920c
	ld bc,l921a
	call l8d3f
	ld hl,l90c4
	ld de,l90cb
	ld b,#06
	call l8d1c
	ld b,#07
	call l8d1c
	ld b,#0b
	call l8d1c
	ld b,#0d
	call l8d1c
	ld de,l90cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l91cf
	call l8cf5
	ld hl,l91fd
	call l8cf5
	ld hl,l922b
.l8cf5
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
	jr nz,l8d0a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l8d0a
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
.l8d1c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l90a5
.l8d27
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l90a5
.l8d3f
	ld a,(l90cb)
	or a
	jp nz,l8df7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l8df7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l8d27
	or a
	jp z,l8dec
	ld r,a
	and #7f
	cp #10
	jr c,l8dc7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l8f3f
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
	jr z,l8da0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l8da0
	rrca
	ld c,a
	ld hl,l9240
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
	jr z,l8dbf
	ld (ix+#1e),b
.l8dbf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l8de0
.l8dc7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l90d0
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
.l8de0
	ld a,d
	or a
	jr nz,l8dee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l8dee
.l8dec
	ld a,(hl)
	inc hl
.l8dee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l8df7
	ld a,(ix+#17)
	or a
	jr nz,l8e0d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l8e0d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l8e23
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l8e23
	ld a,(ix+#0d)
	or a
	jr z,l8e31
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l8e4f
.l8e31
	ld a,(ix+#1a)
	or a
	jp z,l8e56
	ld c,a
	cp #03
	jr nz,l8e3e
	xor a
.l8e3e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l8e4f
	ld a,(ix+#18)
	dec c
	jr z,l8e4f
	ld a,(ix+#19)
.l8e4f
	add (ix+#07)
	ld b,d
	call l8f3f
.l8e56
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l8e7e
	dec (ix+#1b)
	jr nz,l8e7e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l8eb6
.l8e7e
	ld a,(ix+#29)
	or a
	jr z,l8eb6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l8ead
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l8ea4
	ld (ix+#29),#ff
	jr l8ead
.l8ea4
	cp (ix+#2b)
	jr nz,l8ead
	ld (ix+#29),#01
.l8ead
	ld b,d
	or a
	jp p,l8eb3
	dec b
.l8eb3
	ld c,a
	jr l8ec1
.l8eb6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l8ec1
	pop hl
	bit 7,(ix+#14)
	jr z,l8eca
	ld h,d
	ld l,d
.l8eca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l90a5
	ld c,h
	ld a,(ix+#02)
	call l90a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l8f1d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l8f0c
	dec (ix+#09)
	jr nz,l8f0c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l8f04
	xor a
	jr l8f09
.l8f04
	cp #10
	jr nz,l8f09
	dec a
.l8f09
	ld (ix+#1e),a
.l8f0c
	ld a,b
	sub (ix+#1e)
	jr nc,l8f13
	xor a
.l8f13
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l90a5
.l8f1d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l90cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l8f3b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l8f3b
	ld (l90cc),hl
	ret
.l8f3f
	ld hl,l90ee
	cp #61
	jr nc,l8f49
	add a
	ld c,a
	add hl,bc
.l8f49
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l9078
	ld (ix+#1e),a
	jp l8de0
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l8f71
	neg
.l8f71
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
	jp l8de0
	dec b
	jr l8f8b
	inc b
.l8f8b
	call l9078
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l8de0
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
	jp l905d
	ld a,(hl)
	inc hl
	or a
	jr z,l8fcd
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
.l8fcd
	ld (ix+#29),a
	jp l8de0
	dec hl
	ld a,(hl)
	and #0f
	ld (l90cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l90ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l8de0
	ld a,(hl)
	or a
	jr z,l8ffe
	call l907a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l8de0
.l8ffe
	ld hl,#0101
	ld (l90ca),hl
	jp l8de0
	call l9078
	ld (ix+#1e),a
	jp l8de0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l9089
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l9089
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l8de0
	ld a,(hl)
	inc hl
	ld (l90c9),a
	jp l8de0
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
	jp l8de0
	call l9078
	add a
.l905d
	ld b,#00
	ld c,a
	push hl
	ld hl,l92c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l8de0
.l9078
	ld a,(hl)
	inc hl
.l907a
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
.l9089
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l9240
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l90a5
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
.l90c4
	ret
.l90cc equ $ + 7
.l90cb equ $ + 6
.l90ca equ $ + 5
.l90c9 equ $ + 4
.l90c7 equ $ + 2
.l90c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l90cf equ $ + 2
.l90ce equ $ + 1
	db #38,#00,#00
.l90d0
	db #53,#8f,#66,#8f,#65,#8f,#8a,#8f
	db #87,#8f,#9a,#8f,#ab,#8f,#d3,#8f
	db #ed,#8f,#d3,#8f,#07,#90,#10,#90
	db #32,#90,#3a,#90,#59,#90
.l90ee
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
.l91b4 equ $ + 4
.l91b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l91be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l91cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l91de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l91e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l91ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l91fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l920c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l9210
	db #00,#00,#00,#00,#00,#00,#00,#00
.l921a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l922b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l923a equ $ + 2
	db #00,#00,#80,#95,#a1,#95,#c2,#95
.l9240
	db #e0,#92,#20,#93,#40,#93,#00,#00
	db #60,#93,#a0,#93,#c0,#93,#07,#00
	db #d2,#4b,#d2,#4b,#d2,#4b,#00,#00
	db #d2,#4b,#d2,#4b,#d2,#4b,#00,#00
	db #e0,#93,#20,#94,#40,#94,#1a,#00
	db #d2,#4b,#d2,#4b,#d2,#4b,#00,#00
	db #60,#94,#a0,#94,#c0,#94,#09,#00
	db #e0,#94,#20,#95,#40,#93,#01,#00
	db #d2,#4b,#d2,#4b,#d2,#4b,#00,#00
	db #d2,#4b,#d2,#4b,#d2,#4b,#00,#00
	db #d2,#4b,#d2,#4b,#d2,#4b,#00,#00
	db #d2,#4b,#d2,#4b,#d2,#4b,#00,#00
	db #d2,#4b,#d2,#4b,#d2,#4b,#00,#00
	db #d2,#4b,#d2,#4b,#d2,#4b,#00,#00
	db #d2,#4b,#d2,#4b,#d2,#4b,#00,#00
	db #d2,#4b,#d2,#4b,#d2,#4b,#00,#00
.l92c0
	db #d2,#4b,#40,#95,#60,#95,#d2,#4b
	db #d2,#4b,#d2,#4b,#d2,#4b,#d2,#4b
	db #d2,#4b,#d2,#4b,#d2,#4b,#d2,#4b
	db #d2,#4b,#d2,#4b,#d2,#4b,#d2,#4b
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0d,#0b,#09,#07,#05,#03,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0e
	db #0e,#0e,#0d,#0d,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #18,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#e3,#95,#00,#e6,#95,#00,#6b
	db #96,#00,#6b,#96,#00,#e9,#95,#00
	db #e9,#95,#00,#2b,#97,#00,#2b,#97
	db #00,#cb,#96,#00,#cb,#96,#80,#83
	db #95,#00,#74,#97,#00,#74,#97,#00
	db #74,#97,#00,#74,#97,#00,#74,#97
	db #00,#f5,#97,#00,#74,#97,#00,#74
	db #97,#00,#74,#97,#00,#74,#97,#80
	db #a4,#95,#00,#b6,#98,#00,#c9,#98
	db #00,#c9,#98,#00,#c9,#98,#00,#c9
	db #98,#00,#c9,#98,#00,#c9,#98,#00
	db #c9,#98,#00,#c9,#98,#00,#c9,#98
	db #80,#c5,#95,#00,#40,#ff,#fe,#40
	db #ff,#40,#71,#10,#fe,#01,#c0,#70
	db #fe,#01,#c7,#70,#fe,#01,#c3,#70
	db #fe,#01,#c0,#70,#fe,#01,#c7,#70
	db #fe,#01,#c3,#70,#fe,#01,#c0,#70
	db #fe,#01,#c5,#70,#fe,#01,#c5,#70
	db #fe,#01,#cc,#70,#fe,#01,#c8,#70
	db #fe,#01,#c5,#70,#fe,#01,#cc,#70
	db #fe,#01,#c8,#70,#fe,#01,#c5,#70
	db #fe,#01,#c2,#70,#fe,#01,#c2,#70
	db #fe,#01,#c9,#70,#fe,#01,#c5,#70
	db #fe,#01,#c2,#70,#fe,#01,#c9,#70
	db #fe,#01,#c5,#70,#fe,#01,#c2,#70
	db #fe,#01,#c7,#70,#fe,#01,#c7,#70
	db #fe,#01,#ce,#70,#fe,#01,#ca,#70
	db #fe,#01,#c7,#70,#fe,#01,#ce,#70
	db #fe,#01,#ca,#70,#fe,#01,#c7,#70
	db #fe,#01,#ff,#40,#0f,#11,#40,#00
	db #02,#c5,#00,#c5,#00,#c0,#00,#45
	db #00,#02,#40,#00,#02,#40,#00,#06
	db #c5,#00,#c0,#00,#c5,#00,#c0,#00
	db #45,#00,#02,#40,#00,#02,#c0,#00
	db #40,#00,#07,#c5,#00,#c0,#00,#c5
	db #00,#c0,#00,#45,#00,#02,#c5,#00
	db #c0,#00,#c5,#00,#c0,#00,#45,#00
	db #02,#40,#00,#02,#c0,#00,#c5,#00
	db #40,#00,#02,#47,#00,#02,#40,#00
	db #02,#45,#00,#02,#c0,#00,#c5,#00
	db #c0,#00,#c5,#00,#40,#00,#02,#47
	db #00,#02,#ff,#40,#71,#10,#40,#70
	db #02,#c5,#70,#c5,#70,#c0,#70,#45
	db #70,#02,#40,#70,#02,#40,#70,#06
	db #c5,#70,#c0,#70,#c5,#70,#c0,#70
	db #45,#70,#02,#40,#70,#02,#c0,#70
	db #40,#70,#07,#c5,#70,#c0,#70,#c5
	db #70,#c0,#70,#45,#70,#02,#c5,#70
	db #c0,#70,#c5,#70,#c0,#70,#45,#70
	db #02,#40,#70,#02,#c0,#70,#c5,#70
	db #40,#70,#02,#47,#70,#02,#40,#70
	db #02,#45,#70,#02,#c0,#70,#c5,#70
	db #c0,#70,#c5,#70,#40,#70,#02,#47
	db #70,#02,#ff,#4c,#0f,#22,#4c,#00
	db #02,#54,#00,#02,#53,#00,#04,#54
	db #00,#02,#53,#00,#04,#51,#00,#02
	db #51,#00,#02,#59,#00,#02,#58,#00
	db #04,#59,#00,#02,#58,#00,#04,#4e
	db #00,#02,#4e,#00,#02,#56,#00,#02
	db #55,#00,#04,#56,#00,#02,#55,#00
	db #04,#53,#00,#02,#53,#00,#02,#5b
	db #00,#02,#5a,#00,#04,#5b,#00,#02
	db #5a,#00,#04,#ff,#28,#78,#0f,#02
	db #34,#78,#0f,#02,#28,#78,#0f,#02
	db #34,#78,#0f,#02,#28,#78,#0f,#02
	db #34,#78,#0f,#02,#28,#78,#0f,#02
	db #34,#78,#0f,#02,#2d,#78,#0b,#02
	db #39,#78,#0b,#02,#2d,#78,#0b,#02
	db #39,#78,#0b,#02,#2d,#78,#0b,#02
	db #39,#78,#0b,#02,#2d,#78,#0b,#02
	db #39,#78,#0b,#02,#2a,#78,#0d,#02
	db #36,#78,#0d,#02,#2a,#78,#0d,#02
	db #36,#78,#0d,#02,#2a,#78,#0d,#02
	db #36,#78,#0d,#02,#2a,#78,#0d,#02
	db #36,#78,#0d,#02,#2f,#78,#0a,#02
	db #3b,#78,#0a,#02,#2f,#78,#0a,#02
	db #3b,#78,#0a,#02,#2f,#78,#0a,#02
	db #3b,#78,#0a,#02,#2f,#78,#0a,#02
	db #3b,#78,#0a,#02,#ff,#a8,#78,#0f
	db #40,#01,#10,#b4,#78,#0f,#40,#01
	db #10,#a8,#78,#0f,#47,#01,#10,#b4
	db #78,#0f,#43,#01,#10,#a8,#78,#0f
	db #40,#01,#10,#b4,#78,#0f,#47,#01
	db #10,#a8,#78,#0f,#43,#01,#10,#b4
	db #78,#0f,#40,#01,#10,#ad,#78,#0b
	db #45,#01,#10,#b9,#78,#0b,#45,#01
	db #10,#ad,#78,#0b,#4c,#01,#10,#b9
	db #78,#0b,#48,#01,#10,#ad,#78,#0b
	db #45,#01,#10,#b9,#78,#0b,#4c,#01
	db #10,#ad,#78,#0b,#48,#01,#10,#b9
	db #78,#0b,#45,#01,#10,#aa,#78,#0d
	db #42,#01,#10,#b6,#78,#0d,#42,#01
	db #10,#aa,#78,#0d,#49,#01,#10,#b6
	db #78,#0d,#45,#01,#10,#aa,#78,#0d
	db #42,#01,#10,#b6,#78,#0d,#49,#01
	db #10,#aa,#78,#0d,#45,#01,#10,#b6
	db #78,#0d,#42,#01,#10,#af,#78,#0a
	db #47,#01,#10,#bb,#78,#0a,#47,#01
	db #10,#af,#78,#0a,#4e,#01,#10,#bb
	db #78,#0a,#4a,#01,#10,#af,#78,#0a
	db #47,#01,#10,#bb,#78,#0a,#4e,#01
	db #10,#af,#78,#0a,#4a,#01,#10,#bb
	db #78,#0a,#47,#01,#10,#ff,#00,#38
	db #c0,#40,#c0,#40,#c0,#40,#c0,#40
	db #c0,#40,#c0,#40,#c0,#40,#c0,#40
	db #ff,#bf,#10,#f4,#60,#f4,#60,#f4
	db #60,#3f,#40,#02,#f4,#60,#f4,#60
	db #bf,#10,#f4,#60,#f4,#60,#f4,#60
	db #3f,#40,#02,#f4,#60,#f4,#60,#bf
	db #10,#f4,#60,#f4,#60,#f4,#60,#3f
	db #40,#02,#f4,#60,#f4,#60,#bf,#10
	db #f4,#60,#f4,#60,#f4,#60,#3f,#40
	db #02,#f4,#60,#bf,#40,#bf,#10,#f4
	db #60,#f4,#60,#f4,#60,#3f,#40,#02
	db #f4,#60,#f4,#60,#bf,#10,#f4,#60
	db #f4,#60,#f4,#60,#3f,#40,#02,#f4
	db #60,#f4,#60,#bf,#10,#f4,#60,#f4
	db #60,#f4,#60,#3f,#40,#02,#f4,#60
	db #f4,#60,#bf,#10,#f4,#60,#f4,#60
	db #f4,#60,#3f,#40,#02,#bf,#10,#bf
	db #40,#ff
;
.music_info
	db "Walthery Slide Show - Main Part (19xx)(Mortel)()",0
	db "ST-128 Module",0

	read "music_end.asm"
