; Music of Greek Meeting 2 - Part 11-1 (1995)(Chaos)(Catloc)(ST-128 Module)
; Ripped by Megachur the 02/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GREEM2P11.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0300

	read "music_header.asm"

	jp l0309
	jp l039d
	jp l0381
;
.init_music
.l0309
;
	xor a
	ld hl,l08b4
	call l037a
	ld hl,l08e2
	call l037a
	ld hl,l0910
	call l037a
	ld ix,l08b0
	ld iy,l093a
	ld de,#002e
	ld b,#03
.l0329
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
	djnz l0329
	ld hl,l07c9
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
	ld (l07c5),hl
	ld (l07c7),hl
	ld a,#0c
	ld c,d
	call l07a5
	ld a,#0d
	ld c,d
	jp l07a5
.l037a
	ld b,#2a
.l037c
	ld (hl),a
	inc hl
	djnz l037c
	ret
;
.stop_music
.l0381
;
	ld a,#07
	ld c,#3f
	call l07a5
	ld a,#08
	ld c,#00
	call l07a5
	ld a,#09
	ld c,#00
	call l07a5
	ld a,#0a
	ld c,#00
	jp l07a5
;
.play_music
.l039d
;
	ld hl,l07cb
	dec (hl)
	ld ix,l08b0
	ld bc,l08be
	call l043f
	ld ix,l08de
	ld bc,l08ec
	call l043f
	ld ix,l090c
	ld bc,l091a
	call l043f
	ld hl,l07c4
	ld de,l07cb
	ld b,#06
	call l041c
	ld b,#07
	call l041c
	ld b,#0b
	call l041c
	ld b,#0d
	call l041c
	ld de,l07cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l08cf
	call l03f5
	ld hl,l08fd
	call l03f5
	ld hl,l092b
.l03f5
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
	jr nz,l040a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l040a
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
.l041c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l07a5
.l0427
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l07a5
.l043f
	ld a,(l07cb)
	or a
	jp nz,l04f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l04f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l0427
	or a
	jp z,l04ec
	ld r,a
	and #7f
	cp #10
	jr c,l04c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l063f
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
	jr z,l04a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l04a0
	rrca
	ld c,a
	ld hl,l0940
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
	jr z,l04bf
	ld (ix+#1e),b
.l04bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l04e0
.l04c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l07d0
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
	add a
.l04e0
	ld a,d
	or a
	jr nz,l04ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l04ee
.l04ec
	ld a,(hl)
	inc hl
.l04ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l04f7
	ld a,(ix+#17)
	or a
	jr nz,l050d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l050d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l0523
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l0523
	ld a,(ix+#0d)
	or a
	jr z,l0531
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l054f
.l0531
	ld a,(ix+#1a)
	or a
	jp z,l0556
	ld c,a
	cp #03
	jr nz,l053e
	xor a
.l053e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l054f
	ld a,(ix+#18)
	dec c
	jr z,l054f
	ld a,(ix+#19)
.l054f
	add (ix+#07)
	ld b,d
	call l063f
.l0556
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l057e
	dec (ix+#1b)
	jr nz,l057e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l05b6
.l057e
	ld a,(ix+#29)
	or a
	jr z,l05b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l05ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l05a4
	ld (ix+#29),#ff
	jr l05ad
.l05a4
	cp (ix+#2b)
	jr nz,l05ad
	ld (ix+#29),#01
.l05ad
	ld b,d
	or a
	jp p,l05b3
	dec b
.l05b3
	ld c,a
	jr l05c1
.l05b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l05c1
	pop hl
	bit 7,(ix+#14)
	jr z,l05ca
	ld h,d
	ld l,d
.l05ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l07a5
	ld c,h
	ld a,(ix+#02)
	call l07a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l061d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l060c
	dec (ix+#09)
	jr nz,l060c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l0604
	xor a
	jr l0609
.l0604
	cp #10
	jr nz,l0609
	dec a
.l0609
	ld (ix+#1e),a
.l060c
	ld a,b
	sub (ix+#1e)
	jr nc,l0613
	xor a
.l0613
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l07a5
.l061d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l07cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l063b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l063b
	ld (l07cc),hl
	ret
.l063f
	ld hl,l07ee
	cp #61
	jr nc,l0649
	add a
	ld c,a
	add hl,bc
.l0649
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l0653
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l0778
	ld (ix+#1e),a
	jp l04e0
.l0665
	dec b
.l0666
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l0671
	neg
.l0671
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
	jp l04e0
.l0687
	dec b
	jr l068b
.l068a
	inc b
.l068b
	call l0778
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l04e0
.l069a
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
	jp l075d
.l06ab
	ld a,(hl)
	inc hl
	or a
	jr z,l06cd
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
.l06cd
	ld (ix+#29),a
	jp l04e0
.l06d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l07cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l07ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l04e0
.l06ed
	ld a,(hl)
	or a
	jr z,l06fe
	call l077a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l04e0
.l06fe
	ld hl,#0101
	ld (l07ca),hl
	jp l04e0
.l0707
	call l0778
	ld (ix+#1e),a
	jp l04e0
.l0710
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l0789
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l0789
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l04e0
.l0732
	ld a,(hl)
	inc hl
	ld (l07c9),a
	jp l04e0
.l073a
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
	jp l04e0
.l0759
	call l0778
	add a
.l075d
	ld b,#00
	ld c,a
	push hl
	ld hl,l09c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l04e0
.l0778
	ld a,(hl)
	inc hl
.l077a
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
.l0789
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l0940
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l07a5
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
.l07c4
	ret
.l07cc equ $ + 7
.l07cb equ $ + 6
.l07ca equ $ + 5
.l07c9 equ $ + 4
.l07c7 equ $ + 2
.l07c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l07cf equ $ + 2
.l07ce equ $ + 1
	db #38,#00,#00
.l07d0
	dw l0653,l0666,l0665,l068a
	dw l0687,l069a,l06ab,l06d3
	dw l06ed,l06d3,l0707,l0710
	dw l0732,l073a,l0759
.l07ee
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
.l08b4 equ $ + 4
.l08b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l08be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l08cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l08de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l08e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l08ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l08fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l090c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l0910
	db #00,#00,#00,#00,#00,#00,#00,#00
.l091a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l092b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l093a equ $ + 2
	db #00,#00,#40,#0c,#5e,#0c,#7c,#0c
.l0940
	db #a4,#82,#92,#ce,#d2,#ce,#20,#0c
	db #e0,#09,#20,#0a,#40,#0a,#00,#00
	db #60,#0a,#a0,#0a,#40,#0a,#00,#00
	db #e0,#09,#c0,#0a,#40,#0a,#20,#00
	db #e0,#09,#e0,#0a,#40,#0a,#20,#00
	db #24,#83,#86,#03,#76,#45,#a4,#66
	db #d2,#cc,#76,#45,#76,#45,#f2,#cc
	db #a4,#82,#76,#45,#5a,#46,#a4,#92
	db #62,#83,#76,#76,#a4,#85,#52,#c3
	db #00,#0b,#40,#0b,#60,#0b,#80,#00
	db #80,#0b,#c0,#0b,#e0,#0b,#c0,#00
	db #a4,#85,#a4,#85,#a4,#85,#00,#0d
	db #e0,#09,#00,#0c,#20,#0c,#9a,#06
	db #a4,#85,#a4,#85,#a4,#85,#d2,#c2
	db #a4,#85,#d2,#c2,#52,#c3,#40,#01
	db #72,#c4,#12,#c5,#ba,#c5,#00,#00
.l09c0
	db #d2,#c2,#d2,#c2,#d2,#c2,#d2,#c2
	db #d2,#c2,#d2,#c2,#d2,#c2,#d2,#c2
	db #d2,#c2,#d2,#c2,#d2,#c2,#d2,#c2
	db #d2,#c2,#d2,#c2,#d2,#c2,#d2,#c2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#0a,#0b,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#00
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#0a,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#05,#00
	db #90,#01,#e0,#01,#30,#02,#80,#02
	db #d0,#02,#20,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0f,#0f,#0f,#0f,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0d,#0b,#09,#07,#05,#03,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#9a,#0c,#00,#fb,#0c,#00,#5c
	db #0d,#00,#5c,#0d,#00,#5c,#0d,#00
	db #5c,#0d,#00,#5c,#0d,#00,#5c,#0d
	db #00,#dd,#0d,#80,#43,#0c,#00,#5b
	db #0e,#00,#5b,#0e,#00,#5b,#0e,#00
	db #f0,#0e,#00,#f0,#0e,#00,#2e,#0f
	db #00,#2e,#0f,#00,#83,#0f,#00,#83
	db #0f,#80,#61,#0c,#00,#d8,#0f,#00
	db #f9,#0f,#00,#1e,#10,#00,#5b,#0e
	db #00,#5b,#0e,#00,#5b,#0e,#00,#5b
	db #0e,#00,#5b,#0e,#00,#5b,#0e,#80
	db #7f,#0c,#28,#9b,#2f,#73,#cb,#2f
	db #28,#9b,#2f,#73,#cb,#2f,#28,#9b
	db #2f,#73,#cb,#2f,#28,#9b,#2f,#73
	db #cb,#2f,#28,#9b,#2f,#73,#cb,#2f
	db #28,#9b,#2f,#73,#cb,#2f,#28,#9b
	db #2f,#73,#cb,#2f,#28,#9b,#2f,#73
	db #cb,#2f,#28,#9b,#2f,#73,#cb,#2f
	db #28,#9b,#2f,#73,#cb,#2f,#28,#9b
	db #2f,#73,#cb,#2f,#28,#9b,#2f,#73
	db #cb,#2f,#28,#9b,#2f,#73,#cb,#2f
	db #28,#9b,#2f,#73,#cb,#2f,#28,#9b
	db #2f,#73,#cb,#2f,#28,#9b,#2f,#73
	db #cb,#2f,#ff,#28,#90,#02,#73,#c0
	db #02,#28,#90,#02,#73,#c0,#02,#28
	db #90,#02,#73,#c0,#02,#28,#90,#02
	db #73,#c0,#02,#28,#90,#02,#73,#c0
	db #02,#28,#90,#02,#73,#c0,#02,#28
	db #90,#02,#73,#c0,#02,#28,#90,#02
	db #73,#c0,#02,#28,#90,#02,#73,#c0
	db #02,#28,#90,#02,#73,#c0,#02,#28
	db #90,#02,#73,#c0,#02,#28,#90,#02
	db #73,#c0,#02,#28,#90,#02,#73,#c0
	db #02,#28,#90,#02,#73,#c0,#02,#28
	db #90,#02,#73,#c0,#02,#28,#90,#02
	db #73,#c0,#02,#ff,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#a8,#90,#e7,#c0
	db #f3,#c0,#e7,#c0,#ff,#a8,#90,#e7
	db #c0,#f3,#c0,#e7,#c0,#a8,#90,#e7
	db #c0,#f3,#c0,#e7,#c0,#a8,#90,#e7
	db #c0,#f3,#c0,#e7,#c0,#a8,#90,#e7
	db #c0,#f3,#c0,#e7,#c0,#a8,#90,#e7
	db #c0,#f3,#c0,#e7,#c0,#a8,#90,#e7
	db #c0,#f3,#c0,#e7,#c0,#a8,#90,#e7
	db #c0,#f3,#c0,#e7,#c0,#a8,#90,#e7
	db #c0,#f3,#c0,#e7,#c0,#a8,#90,#e7
	db #c0,#f3,#c0,#e7,#c0,#a8,#90,#e7
	db #c0,#f3,#c0,#e7,#c0,#a8,#90,#e7
	db #c0,#f3,#c0,#e7,#c0,#a8,#90,#e7
	db #c0,#f3,#c0,#e7,#c0,#b8,#a0,#b8
	db #a0,#b8,#a0,#b8,#a0,#38,#a0,#02
	db #b8,#a0,#38,#a0,#02,#b8,#a0,#b8
	db #a0,#b8,#a0,#b8,#a0,#b8,#a0,#38
	db #a0,#02,#ff,#bd,#1a,#12,#fe,#02
	db #bd,#1a,#12,#fe,#01,#bd,#1a,#12
	db #fe,#01,#bd,#1a,#12,#40,#1a,#0f
	db #02,#3d,#1a,#12,#02,#c0,#1a,#0f
	db #fe,#01,#c4,#1a,#0c,#fe,#01,#b9
	db #1a,#16,#fe,#02,#b9,#1a,#16,#fe
	db #01,#b9,#1a,#16,#fe,#01,#b9,#1a
	db #16,#bb,#1a,#14,#fe,#01,#b8,#1a
	db #18,#fe,#01,#bb,#1a,#14,#fe,#01
	db #bf,#1a,#10,#fe,#01,#bd,#1a,#12
	db #fe,#02,#bd,#1a,#12,#fe,#01,#bd
	db #1a,#12,#fe,#01,#bd,#1a,#12,#40
	db #1a,#0f,#02,#3d,#1a,#12,#02,#c0
	db #1a,#0f,#fe,#01,#c4,#1a,#0c,#fe
	db #01,#b9,#1a,#16,#fe,#02,#b9,#1a
	db #16,#fe,#01,#b9,#1a,#16,#fe,#01
	db #b9,#1a,#16,#bb,#1a,#14,#fe,#01
	db #b8,#1a,#18,#fe,#01,#bb,#1a,#14
	db #fe,#01,#bf,#1a,#10,#fe,#01,#ff
	db #00,#02,#3d,#41,#30,#3d,#40,#03
	db #3d,#40,#04,#3d,#40,#06,#39,#40
	db #03,#39,#40,#03,#3b,#40,#03,#3b
	db #40,#03,#3b,#40,#04,#3d,#40,#03
	db #3d,#40,#03,#3d,#40,#03,#3d,#40
	db #03,#3d,#40,#04,#39,#40,#03,#39
	db #40,#02,#b9,#40,#3b,#40,#03,#3b
	db #40,#03,#3b,#40,#02,#ff,#3d,#20
	db #02,#3d,#20,#02,#40,#20,#02,#3d
	db #20,#02,#44,#20,#02,#3d,#20,#02
	db #42,#20,#02,#40,#20,#04,#39,#20
	db #02,#3d,#20,#02,#39,#20,#04,#3b
	db #20,#02,#3f,#20,#02,#3b,#20,#02
	db #3d,#20,#02,#3d,#20,#02,#40,#20
	db #02,#3d,#20,#02,#44,#20,#02,#3d
	db #20,#02,#42,#20,#02,#40,#20,#04
	db #39,#20,#02,#3d,#20,#02,#39,#20
	db #04,#3b,#20,#02,#3f,#20,#02,#3b
	db #20,#02,#ff,#00,#02,#49,#30,#02
	db #4c,#30,#02,#49,#30,#02,#4c,#30
	db #03,#4e,#30,#03,#50,#30,#04,#50
	db #30,#02,#c9,#30,#49,#30,#02,#50
	db #30,#02,#50,#30,#02,#c9,#30,#c9
	db #30,#c9,#30,#49,#30,#04,#49,#30
	db #02,#4c,#30,#02,#49,#30,#02,#4c
	db #30,#03,#4e,#30,#03,#50,#30,#04
	db #50,#30,#02,#c9,#30,#49,#30,#02
	db #50,#30,#02,#50,#30,#02,#c9,#30
	db #c9,#30,#c9,#30,#49,#30,#02,#ff
	db #01,#00,#30,#b8,#a0,#b8,#a0,#b8
	db #a0,#b8,#a0,#38,#a0,#02,#b8,#a0
	db #38,#a0,#02,#b8,#a0,#b8,#a0,#b8
	db #a0,#b8,#a0,#b8,#a0,#38,#a0,#02
	db #ff,#00,#2f,#ad,#a0,#ad,#a0,#ad
	db #a0,#ad,#a0,#ad,#a0,#ad,#a0,#ad
	db #a0,#ad,#a0,#ad,#a0,#ad,#a0,#ad
	db #a0,#ad,#a0,#ad,#a0,#ad,#a0,#ad
	db #a0,#ad,#a0,#ad,#a0,#ff,#00,#40
	db #ff
;
.music_info
	db "Greek Meeting 2 - Part 11-1 (1995)(Chaos)(Catloc)",0
	db "ST-128 Module",0

	read "music_end.asm"
