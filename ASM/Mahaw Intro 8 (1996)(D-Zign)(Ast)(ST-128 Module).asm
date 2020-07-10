; Music of Mahaw Intro 8 (1996)(D-Zign)(Ast)(ST-128 Module)
; Ripped by Megachur the 04/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MAHAWIN8.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #6e6f

	read "music_header.asm"

	jp l6e78
	jp l6f0c
	jp l6ef0
;
.init_music
.l6e78
;
	xor a
	ld hl,l7423
	call l6ee9
	ld hl,l7451
	call l6ee9
	ld hl,l747f
	call l6ee9
	ld ix,l741f
	ld iy,l74a9
	ld de,#002e
	ld b,#03
.l6e98
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
	djnz l6e98
	ld hl,l7338
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
	ld (l7334),hl
	ld (l7336),hl
	ld a,#0c
	ld c,d
	call l7314
	ld a,#0d
	ld c,d
	jp l7314
.l6ee9
	ld b,#2a
.l6eeb
	ld (hl),a
	inc hl
	djnz l6eeb
	ret
;
.stop_music
.l6ef0
;
	ld a,#07
	ld c,#3f
	call l7314
	ld a,#08
	ld c,#00
	call l7314
	ld a,#09
	ld c,#00
	call l7314
	ld a,#0a
	ld c,#00
	jp l7314
;
.play_music
.l6f0c
;
	ld hl,l733a
	dec (hl)
	ld ix,l741f
	ld bc,l742d
	call l6fae
	ld ix,l744d
	ld bc,l745b
	call l6fae
	ld ix,l747b
	ld bc,l7489
	call l6fae
	ld hl,l7333
	ld de,l733a
	ld b,#06
	call l6f8b
	ld b,#07
	call l6f8b
	ld b,#0b
	call l6f8b
	ld b,#0d
	call l6f8b
	ld de,l733a
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l743e
	call l6f64
	ld hl,l746c
	call l6f64
	ld hl,l749a
.l6f64
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
	jr nz,l6f79
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l6f79
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
.l6f8b
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l7314
.l6f96
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l7314
.l6fae
	ld a,(l733a)
	or a
	jp nz,l7066
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l7066
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6f96
	or a
	jp z,l705b
	ld r,a
	and #7f
	cp #10
	jr c,l7036
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l71ae
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
	jr z,l700f
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l700f
	rrca
	ld c,a
	ld hl,l74af
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
	jr z,l702e
	ld (ix+#1e),b
.l702e
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l704f
.l7036
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l733f
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
.l704f
	ld a,d
	or a
	jr nz,l705d
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l705d
.l705b
	ld a,(hl)
	inc hl
.l705d
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l7066
	ld a,(ix+#17)
	or a
	jr nz,l707c
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l707c
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l7092
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l7092
	ld a,(ix+#0d)
	or a
	jr z,l70a0
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l70be
.l70a0
	ld a,(ix+#1a)
	or a
	jp z,l70c5
	ld c,a
	cp #03
	jr nz,l70ad
	xor a
.l70ad
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l70be
	ld a,(ix+#18)
	dec c
	jr z,l70be
	ld a,(ix+#19)
.l70be
	add (ix+#07)
	ld b,d
	call l71ae
.l70c5
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l70ed
	dec (ix+#1b)
	jr nz,l70ed
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l7125
.l70ed
	ld a,(ix+#29)
	or a
	jr z,l7125
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l711c
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l7113
	ld (ix+#29),#ff
	jr l711c
.l7113
	cp (ix+#2b)
	jr nz,l711c
	ld (ix+#29),#01
.l711c
	ld b,d
	or a
	jp p,l7122
	dec b
.l7122
	ld c,a
	jr l7130
.l7125
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l7130
	pop hl
	bit 7,(ix+#14)
	jr z,l7139
	ld h,d
	ld l,d
.l7139
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l7314
	ld c,h
	ld a,(ix+#02)
	call l7314
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l718c
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l717b
	dec (ix+#09)
	jr nz,l717b
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l7173
	xor a
	jr l7178
.l7173
	cp #10
	jr nz,l7178
	dec a
.l7178
	ld (ix+#1e),a
.l717b
	ld a,b
	sub (ix+#1e)
	jr nc,l7182
	xor a
.l7182
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l7314
.l718c
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l733b)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l71aa
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l71aa
	ld (l733b),hl
	ret
.l71ae
	ld hl,l735d
	cp #61
	jr nc,l71b8
	add a
	ld c,a
	add hl,bc
.l71b8
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l71c2
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l72e7
	ld (ix+#1e),a
	jp l704f
.l71d4
	dec b
.l71d5
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l71e0
	neg
.l71e0
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
	jp l704f
.l71f6
	dec b
	jr l71fa
.l71f9
	inc b
.l71fa
	call l72e7
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l704f
.l7209
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
	jp l72cc
.l721a
	ld a,(hl)
	inc hl
	or a
	jr z,l723c
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
.l723c
	ld (ix+#29),a
	jp l704f
.l7242
	dec hl
	ld a,(hl)
	and #0f
	ld (l733e),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l733d),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l704f
.l725c
	ld a,(hl)
	or a
	jr z,l726d
	call l72e9
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l704f
.l726d
	ld hl,#0101
	ld (l7339),hl
	jp l704f
.l7276
	call l72e7
	ld (ix+#1e),a
	jp l704f
.l727f
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l72f8
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l72f8
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l704f
.l72a1
	ld a,(hl)
	inc hl
	ld (l7338),a
	jp l704f
.l72a9
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
	jp l704f
.l72c8
	call l72e7
	add a
.l72cc
	ld b,#00
	ld c,a
	push hl
	ld hl,l752f
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l704f
.l72e7
	ld a,(hl)
	inc hl
.l72e9
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
.l72f8
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l74af
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l7314
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
.l7333
	ret
.l733b equ $ + 7
.l733a equ $ + 6
.l7339 equ $ + 5
.l7338 equ $ + 4
.l7336 equ $ + 2
.l7334
	db #00,#38,#00,#00,#06,#0b,#03,#00
.l733e equ $ + 2
.l733d equ $ + 1
	db #38,#00,#00
.l733f
	dw l71c2,l71d5,l71d4,l71f9
	dw l71f6,l7209,l721a,l7242
	dw l725c,l7242,l7276,l727f
.l735c equ $ + 5
	dw l72a1,l72a9,l72c8
.l735d
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
.l741f equ $ + 2
	dw #000f,#0008
.l7423 equ $ + 2
	db #01,#08,#8e,#00,#00,#39,#00,#00
.l742d equ $ + 4
	db #00,#00,#2f,#78,#cf,#76,#0f,#77
	db #af,#75,#48,#00,#04,#1c,#00,#00
.l743e equ $ + 5
	db #00,#00,#00,#00,#00,#01,#b6,#79
	db #b2,#78,#00,#30,#00,#00,#00,#00
.l744d equ $ + 4
	db #00,#00,#01,#01,#09,#02,#03,#10
.l7451
	db #00,#00,#00,#00,#00,#00,#00,#00
.l745b equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l746c equ $ + 3
	db #00,#00,#00,#04,#3f,#7b,#e8,#78
	db #00,#ff,#00,#00,#00,#00,#00,#00
.l747f equ $ + 6
.l747b equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7489
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l749a equ $ + 1
	db #00,#0c,#a5,#7b,#1e,#79,#00,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
.l74af equ $ + 6
.l74a9
	db #af,#78,#e5,#78,#1b,#79,#4f,#75
	db #8f,#75,#af,#75,#1a,#06,#cf,#75
	db #0f,#76,#2f,#76,#80,#00,#4f,#76
	db #8f,#76,#af,#76,#9a,#06,#cf,#76
	db #0f,#77,#af,#75,#48,#00,#41,#2e
	db #cc,#44,#0a,#45,#c8,#16,#2f,#77
	db #6f,#77,#8f,#77,#c0,#00,#41,#2e
	db #0e,#45,#0a,#45,#c9,#16,#41,#2e
	db #0a,#45,#0a,#45,#c9,#16,#4f,#76
	db #af,#77,#af,#75,#00,#00,#cf,#77
	db #0f,#78,#af,#75,#08,#18,#41,#2e
	db #f8,#4d,#58,#8e,#37,#60,#98,#8e
	db #ca,#44,#0a,#45,#c9,#16,#0a,#45
	db #0a,#85,#0a,#45,#c9,#16,#0a,#45
	db #0a,#85,#0a,#35,#c9,#16,#0a,#45
	db #41,#2e,#73,#2e,#64,#00,#d2,#2e
.l752f equ $ + 6
	db #ff,#2e,#2c,#2f,#22,#01,#2f,#78
	db #4f,#78,#ea,#2f,#6f,#78,#8f,#78
	db #7b,#30,#ad,#30,#41,#2e,#41,#2e
	db #41,#2e,#41,#2e,#41,#2e,#41,#2e
	db #41,#2e,#41,#2e,#41,#2e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#ff,#ff,#ff,#ff,#00,#00
	db #00,#00,#01,#00,#01,#00,#0f,#0c
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#90,#01
	db #e0,#01,#30,#02,#80,#02,#d0,#02
	db #20,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#0e
	db #0e,#0e,#0d,#0d,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#08,#00
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
	db #00,#00,#00,#00,#00,#00,#0d,#0b
	db #09,#07,#05,#03,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#0f,#0e
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#00,#00
	db #65,#01,#3e,#01,#00,#00,#c3,#04
	db #65,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0c,#0b,#0a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#06,#07,#07,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0e,#0d,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#08,#08,#07,#06,#05
	db #04,#03,#02,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#0c,#0c
	db #0d,#0d,#0e,#0e,#0d,#0d,#0e,#0e
	db #0f,#0f,#0e,#0e,#0d,#0d,#0e,#0e
	db #0f,#0f,#0e,#0e,#0d,#0d,#0e,#0e
	db #0f,#0f,#0e,#0e,#0d,#0d,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#00,#51
	db #79,#00,#51,#79,#00,#51,#79,#00
	db #cb,#79,#00,#cb,#79,#00,#cb,#79
	db #00,#cb,#79,#00,#cb,#79,#00,#c1
	db #7a,#00,#cb,#79,#00,#cb,#79,#00
	db #46,#7a,#00,#46,#7a,#00,#cb,#79
	db #00,#c1,#7a,#00,#cb,#79,#00,#c1
	db #7a,#80,#b8,#78,#00,#3c,#7b,#00
	db #4d,#7b,#00,#4d,#7b,#00,#4d,#7b
	db #00,#4d,#7b,#00,#4d,#7b,#00,#4d
	db #7b,#00,#4d,#7b,#00,#4d,#7b,#00
	db #4d,#7b,#00,#4d,#7b,#00,#4d,#7b
	db #00,#4d,#7b,#00,#4d,#7b,#00,#4d
	db #7b,#00,#4d,#7b,#00,#4d,#7b,#80
	db #ee,#78,#00,#a3,#7b,#00,#a6,#7b
	db #00,#a6,#7b,#00,#bc,#7d,#00,#bc
	db #7d,#00,#2e,#7c,#00,#2e,#7c,#00
	db #a0,#7d,#00,#ae,#7d,#00,#2e,#7c
	db #00,#2e,#7c,#00,#e7,#7c,#00,#e7
	db #7c,#00,#a0,#7d,#00,#ae,#7d,#00
	db #a0,#7d,#00,#ae,#7d,#80,#24,#79
	db #49,#3f,#10,#fe,#01,#c9,#30,#fe
	db #01,#c9,#30,#c9,#30,#fe,#02,#c9
	db #30,#c9,#30,#fe,#01,#c9,#30,#fe
	db #01,#c9,#30,#c9,#30,#c9,#30,#c9
	db #30,#fe,#01,#c9,#30,#fe,#01,#c9
	db #30,#c9,#30,#fe,#02,#c9,#30,#c9
	db #30,#fe,#01,#c9,#30,#fe,#01,#c9
	db #30,#c9,#30,#c9,#30,#c9,#30,#fe
	db #01,#c9,#30,#fe,#01,#c9,#30,#c9
	db #30,#fe,#02,#c9,#30,#c9,#30,#fe
	db #01,#c9,#30,#fe,#01,#c9,#30,#c9
	db #30,#c9,#30,#c9,#30,#fe,#01,#c9
	db #30,#fe,#01,#c9,#30,#c9,#30,#fe
	db #02,#c9,#30,#c9,#30,#fe,#01,#c9
	db #30,#fe,#01,#c9,#30,#c9,#30,#c9
	db #30,#ff,#49,#3f,#10,#fe,#01,#c9
	db #30,#fe,#01,#c9,#30,#c9,#30,#fe
	db #02,#c9,#30,#c9,#30,#fe,#01,#c9
	db #30,#fe,#01,#c9,#30,#c9,#30,#c9
	db #30,#c9,#30,#fe,#01,#c9,#30,#fe
	db #01,#c9,#30,#c9,#30,#fe,#02,#c9
	db #30,#c9,#30,#fe,#01,#c9,#30,#fe
	db #01,#c9,#30,#c9,#30,#c9,#30,#47
	db #3f,#11,#fe,#01,#c7,#30,#fe,#01
	db #c7,#30,#c7,#30,#fe,#02,#c7,#30
	db #c7,#30,#fe,#01,#c7,#30,#fe,#01
	db #c7,#30,#c7,#30,#c7,#30,#c7,#30
	db #fe,#01,#c7,#30,#fe,#01,#c7,#30
	db #c7,#30,#fe,#02,#c7,#30,#c7,#30
	db #fe,#01,#c7,#30,#fe,#01,#c7,#30
	db #c7,#30,#c7,#30,#ff,#4b,#3f,#10
	db #fe,#01,#cb,#30,#fe,#01,#cb,#30
	db #cb,#30,#fe,#02,#cb,#30,#cb,#30
	db #fe,#01,#cb,#30,#fe,#01,#cb,#30
	db #cb,#30,#cb,#30,#cb,#30,#fe,#01
	db #cb,#30,#fe,#01,#cb,#30,#cb,#30
	db #fe,#02,#cb,#30,#cb,#30,#fe,#01
	db #cb,#30,#fe,#01,#cb,#30,#cb,#30
	db #cb,#30,#49,#3f,#11,#fe,#01,#c9
	db #30,#fe,#01,#c9,#30,#c9,#30,#fe
	db #02,#c9,#30,#c9,#30,#fe,#01,#c9
	db #30,#fe,#01,#c9,#30,#c9,#30,#c9
	db #30,#c9,#30,#fe,#01,#c9,#30,#fe
	db #01,#c9,#30,#c9,#30,#fe,#02,#c9
	db #30,#c9,#30,#fe,#01,#c9,#30,#fe
	db #01,#c9,#30,#c9,#30,#c9,#30,#ff
	db #45,#3f,#11,#fe,#01,#c5,#30,#fe
	db #01,#c5,#30,#c5,#30,#fe,#02,#c5
	db #30,#c5,#30,#fe,#01,#c5,#30,#fe
	db #01,#c5,#30,#c5,#30,#c5,#30,#c5
	db #30,#fe,#01,#c5,#30,#fe,#01,#c5
	db #30,#c5,#30,#fe,#02,#c5,#30,#c5
	db #30,#fe,#01,#c5,#30,#fe,#01,#c5
	db #30,#c5,#30,#c5,#30,#47,#3f,#11
	db #fe,#01,#c7,#30,#fe,#01,#c7,#30
	db #c7,#30,#fe,#02,#c7,#30,#c7,#30
	db #fe,#01,#c7,#30,#fe,#01,#c7,#30
	db #c7,#30,#c7,#30,#c7,#30,#fe,#01
	db #c7,#30,#fe,#01,#c7,#30,#c7,#30
	db #fe,#02,#c7,#30,#c7,#30,#fe,#01
	db #c7,#30,#fe,#01,#c7,#30,#c7,#30
	db #c7,#30,#ff,#0d,#06,#38,#28,#10
	db #03,#a8,#50,#a8,#10,#a8,#50,#a8
	db #50,#a8,#50,#ff,#a8,#10,#28,#20
	db #03,#a8,#50,#28,#20,#03,#a8,#10
	db #28,#20,#03,#a8,#50,#28,#20,#03
	db #a8,#10,#28,#20,#03,#a8,#50,#28
	db #20,#03,#a8,#10,#28,#20,#03,#a8
	db #50,#28,#20,#03,#a8,#10,#28,#20
	db #03,#a8,#50,#28,#20,#03,#a8,#10
	db #28,#20,#03,#a8,#50,#28,#20,#03
	db #a8,#10,#28,#20,#03,#a8,#50,#28
	db #20,#03,#a8,#10,#28,#20,#02,#a8
	db #50,#a8,#10,#a8,#50,#a8,#50,#a8
	db #50,#ff,#00,#40,#ff,#c9,#06,#40
	db #0b,#10,#0b,#11,#0b,#11,#0b,#12
	db #0b,#12,#0b,#13,#0b,#13,#0b,#14
	db #0b,#14,#0b,#15,#0b,#15,#4b,#0b
	db #10,#0b,#10,#0b,#11,#0b,#11,#4c
	db #0b,#10,#0b,#10,#0b,#11,#0b,#11
	db #0b,#12,#0b,#12,#0b,#13,#0b,#13
	db #0b,#14,#0b,#14,#0b,#15,#0b,#15
	db #50,#0b,#10,#0b,#10,#0b,#11,#0b
	db #11,#51,#0b,#10,#0b,#10,#0b,#11
	db #0b,#11,#0b,#12,#0b,#12,#0b,#13
	db #0b,#13,#0b,#14,#0b,#14,#0b,#15
	db #0b,#15,#50,#0b,#10,#0b,#10,#0b
	db #11,#0b,#11,#49,#0b,#10,#0b,#10
	db #0b,#11,#0b,#11,#0b,#12,#0b,#12
	db #0b,#13,#0b,#13,#0b,#14,#0b,#14
	db #0b,#15,#0b,#15,#0b,#16,#0b,#16
	db #fe,#01,#0b,#10,#ff,#c9,#86,#30
	db #47,#8b,#13,#44,#8b,#15,#49,#8b
	db #10,#47,#8b,#13,#44,#8b,#15,#49
	db #8b,#10,#47,#8b,#13,#44,#8b,#15
	db #49,#8b,#10,#47,#8b,#13,#44,#8b
	db #15,#49,#8b,#10,#47,#8b,#13,#44
	db #8b,#15,#49,#8b,#10,#47,#8b,#13
	db #44,#8b,#15,#49,#8b,#10,#47,#8b
	db #13,#44,#8b,#15,#49,#8b,#10,#47
	db #8b,#13,#44,#8b,#15,#49,#8b,#10
	db #47,#8b,#13,#44,#8b,#15,#49,#8b
	db #10,#47,#8b,#13,#44,#8b,#35,#47
	db #8b,#10,#45,#8b,#13,#42,#8b,#15
	db #47,#8b,#10,#45,#8b,#13,#42,#8b
	db #15,#47,#8b,#10,#45,#8b,#13,#42
	db #8b,#15,#47,#8b,#10,#45,#8b,#13
	db #42,#8b,#15,#47,#8b,#10,#45,#8b
	db #13,#42,#8b,#15,#47,#8b,#10,#45
	db #8b,#13,#42,#8b,#15,#47,#8b,#10
	db #45,#8b,#13,#42,#8b,#15,#47,#8b
	db #10,#45,#8b,#13,#42,#8b,#15,#47
	db #8b,#10,#45,#8b,#13,#42,#8b,#15
	db #47,#8b,#10,#45,#8b,#13,#42,#8b
	db #15,#0b,#10,#fe,#01,#ff,#cb,#86
	db #30,#49,#8b,#13,#46,#8b,#15,#4b
	db #8b,#10,#49,#8b,#13,#46,#8b,#15
	db #4b,#8b,#10,#49,#8b,#13,#46,#8b
	db #15,#4b,#8b,#10,#49,#8b,#13,#46
	db #8b,#15,#4b,#8b,#10,#49,#8b,#13
	db #46,#8b,#15,#4b,#8b,#10,#49,#8b
	db #13,#46,#8b,#15,#4b,#8b,#10,#49
	db #8b,#13,#46,#8b,#15,#4b,#8b,#10
	db #49,#8b,#13,#46,#8b,#15,#4b,#8b
	db #10,#49,#8b,#13,#46,#8b,#15,#4b
	db #8b,#10,#49,#8b,#13,#46,#8b,#35
	db #49,#8b,#10,#47,#8b,#13,#44,#8b
	db #15,#49,#8b,#10,#47,#8b,#13,#44
	db #8b,#15,#49,#8b,#10,#47,#8b,#13
	db #44,#8b,#15,#49,#8b,#10,#47,#8b
	db #13,#44,#8b,#15,#49,#8b,#10,#47
	db #8b,#13,#44,#8b,#15,#49,#8b,#10
	db #47,#8b,#13,#44,#8b,#15,#49,#8b
	db #10,#47,#8b,#13,#44,#8b,#15,#49
	db #8b,#10,#47,#8b,#13,#44,#8b,#15
	db #49,#8b,#10,#47,#8b,#13,#44,#8b
	db #15,#49,#8b,#10,#47,#8b,#13,#44
	db #8b,#15,#0b,#10,#fe,#01,#ff,#49
	db #86,#40,#10,#49,#80,#10,#47,#80
	db #10,#47,#80,#10,#ff,#45,#86,#40
	db #10,#45,#80,#10,#47,#80,#10,#47
	db #80,#10,#ff
;
.music_info
	db "Mahaw Intro 8 (1996)(D-Zign)(Ast)",0
	db "ST-128 Module",0

	read "music_end.asm"
