; Music of Rainbow Meeting Demo - 3 - Juggler's Part - 1 (1994)(POW!)()(ST-128 Module)
; Ripped by Megachur the 26/10/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RAMD3JP1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7000

	read "music_header.asm"

	jr l7004
	jr l7013
.l7004
	call l7037
	ld hl,l7024
	ld de,l701c
	ld bc,#81ff
	jp #bcd7
.l7013
	ld hl,l7024
	call #bcdd
	jp l70af
.l701c
	push ix
	call l70cb
	pop ix
	ret
.l7024
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l7037
	jp l70cb
	jp l70af
;
.init_music
.l7037
;
	xor a
	ld hl,l75e2
	call l70a8
	ld hl,l7610
	call l70a8
	ld hl,l763e
	call l70a8
	ld ix,l75de
	ld iy,l7668
	ld de,#002e
	ld b,#03
.l7057
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
	djnz l7057
	ld hl,l74f7
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
	ld (l74f3),hl
	ld (l74f5),hl
	ld a,#0c
	ld c,d
	call l74d3
	ld a,#0d
	ld c,d
	jp l74d3
.l70a8
	ld b,#2a
.l70aa
	ld (hl),a
	inc hl
	djnz l70aa
	ret
;
.stop_music
.l70af
;
	ld a,#07
	ld c,#3f
	call l74d3
	ld a,#08
	ld c,#00
	call l74d3
	ld a,#09
	ld c,#00
	call l74d3
	ld a,#0a
	ld c,#00
	jp l74d3
;
.play_music
.l70cb
;
	ld hl,l74f9
	dec (hl)
	ld ix,l75de
	ld bc,l75ec
	call l716d
	ld ix,l760c
	ld bc,l761a
	call l716d
	ld ix,l763a
	ld bc,l7648
	call l716d
	ld hl,l74f2
	ld de,l74f9
	ld b,#06
	call l714a
	ld b,#07
	call l714a
	ld b,#0b
	call l714a
	ld b,#0d
	call l714a
	ld de,l74f9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l75fd
	call l7123
	ld hl,l762b
	call l7123
	ld hl,l7659
.l7123
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
	jr nz,l7138
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l7138
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
.l714a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l74d3
.l7155
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l74d3
.l716d
	ld a,(l74f9)
	or a
	jp nz,l7225
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l7225
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l7155
	or a
	jp z,l721a
	ld r,a
	and #7f
	cp #10
	jr c,l71f5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l736d
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
	jr z,l71ce
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l71ce
	rrca
	ld c,a
	ld hl,l766e
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
	jr z,l71ed
	ld (ix+#1e),b
.l71ed
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l720e
.l71f5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l74fe
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
	add (hl)
	add a
	add a
	add h
	add l
.l720e
	ld a,d
	or a
	jr nz,l721c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l721c
.l721a
	ld a,(hl)
	inc hl
.l721c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l7225
	ld a,(ix+#17)
	or a
	jr nz,l723b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l723b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l7251
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l7251
	ld a,(ix+#0d)
	or a
	jr z,l725f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l727d
.l725f
	ld a,(ix+#1a)
	or a
	jp z,l7284
	ld c,a
	cp #03
	jr nz,l726c
	xor a
.l726c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l727d
	ld a,(ix+#18)
	dec c
	jr z,l727d
	ld a,(ix+#19)
.l727d
	add (ix+#07)
	ld b,d
	call l736d
.l7284
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l72ac
	dec (ix+#1b)
	jr nz,l72ac
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l72e4
.l72ac
	ld a,(ix+#29)
	or a
	jr z,l72e4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l72db
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l72d2
	ld (ix+#29),#ff
	jr l72db
.l72d2
	cp (ix+#2b)
	jr nz,l72db
	ld (ix+#29),#01
.l72db
	ld b,d
	or a
	jp p,l72e1
	dec b
.l72e1
	ld c,a
	jr l72ef
.l72e4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l72ef
	pop hl
	bit 7,(ix+#14)
	jr z,l72f8
	ld h,d
	ld l,d
.l72f8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l74d3
	ld c,h
	ld a,(ix+#02)
	call l74d3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l734b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l733a
	dec (ix+#09)
	jr nz,l733a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l7332
	xor a
	jr l7337
.l7332
	cp #10
	jr nz,l7337
	dec a
.l7337
	ld (ix+#1e),a
.l733a
	ld a,b
	sub (ix+#1e)
	jr nc,l7341
	xor a
.l7341
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l74d3
.l734b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l74fa)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l7369
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l7369
	ld (l74fa),hl
	ret
.l736d
	ld hl,l751c
	cp #61
	jr nc,l7377
	add a
	ld c,a
	add hl,bc
.l7377
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l74a6
	ld (ix+#1e),a
	jp l720e
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l739f
	neg
.l739f
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
	jp l720e
	dec b
	jr l73b9
	inc b
.l73b9
	call l74a6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l720e
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
	jp l748b
	ld a,(hl)
	inc hl
	or a
	jr z,l73fb
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
.l73fb
	ld (ix+#29),a
	jp l720e
	dec hl
	ld a,(hl)
	and #0f
	ld (l74fd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l74fc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l720e
	ld a,(hl)
	or a
	jr z,l742c
	call l74a8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l720e
.l742c
	ld hl,#0101
	ld (l74f8),hl
	jp l720e
	call l74a6
	ld (ix+#1e),a
	jp l720e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l74b7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l74b7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l720e
	ld a,(hl)
	inc hl
	ld (l74f7),a
	jp l720e
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
	jp l720e
	call l74a6
	add a
.l748b
	ld b,#00
	ld c,a
	push hl
	ld hl,l76ee
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l720e
.l74a6
	ld a,(hl)
	inc hl
.l74a8
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
.l74b7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l766e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l74d3
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
.l74f2
	ret
.l74fa equ $ + 7
.l74f9 equ $ + 6
.l74f8 equ $ + 5
.l74f7 equ $ + 4
.l74f5 equ $ + 2
.l74f3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l74fd equ $ + 2
.l74fc equ $ + 1
	db #38,#00,#00
.l74fe
	db #81,#73,#94,#73,#93,#73,#b8,#73
	db #b5,#73,#c8,#73,#d9,#73,#01,#74
	db #1b,#74,#01,#74,#35,#74,#3e,#74
	db #60,#74,#68,#74,#87,#74
.l751c
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
.l75e2 equ $ + 4
.l75de
	db #08,#00,#01,#08,#00,#00,#00,#00
.l75ec equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l75fd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l760c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l7610 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l761a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l762b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l763a equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l763e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7648 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7659 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l766e equ $ + 6
.l7668
	dw l79ae,l79bd,l79cc,l770e
	dw l774e,l776e,#0000,l778e
	dw l77ce,l77ee,#0000
	db #00,#30,#00,#30,#00,#30,#00,#00
	db #0e,#78,#4e,#78,#6e,#78,#00,#00
	db #8e,#78,#ce,#78,#ee,#78,#08,#18
	db #00,#30,#00,#30,#00,#30,#00,#00
	db #00,#30,#00,#30,#00,#30,#00,#00
	db #8e,#78,#0e,#79,#2e,#79,#00,#00
	db #00,#30,#00,#30,#00,#30,#00,#00
	db #00,#30,#00,#30,#00,#30,#00,#00
	db #4e,#79,#8e,#79,#ee,#78,#18,#08
	db #00,#30,#00,#30,#00,#30,#00,#00
	db #00,#30,#00,#30,#00,#30,#00,#00
	db #00,#30,#00,#30,#00,#30,#00,#00
	db #00,#30,#00,#30,#00,#30,#00,#00
	db #00,#30,#00,#30,#00,#30,#00,#00
.l76ee
	db #00,#30,#00,#30,#00,#30,#00,#30
	db #00,#30,#00,#30,#00,#30,#00,#30
	db #00,#30,#00,#30,#00,#30,#00,#30
	db #00,#30,#00,#30,#00,#30,#00,#30
.l770e
	db #00,#00,#40,#00,#80,#00,#c0,#00
	db #00,#01,#40,#01,#80,#01,#c0,#01
	db #00,#02,#40,#02,#80,#02,#c0,#02
	db #00,#03,#40,#03,#80,#03,#c0,#03
	db #00,#04,#40,#04,#80,#04,#c0,#04
	db #00,#05,#40,#05,#80,#05,#c0,#05
	db #00,#06,#40,#06,#80,#06,#c0,#06
	db #00,#07,#40,#07,#80,#07,#c0,#07
.l774e
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#03,#00
.l776e
	db #00,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
.l778e
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l77ce
	db #0f,#0f,#0e,#0e,#0d,#0c,#0b,#0a
	db #0a,#09,#09,#08,#07,#06,#06,#06
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l77ee
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#0c,#00,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0a,#06,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#00,#00,#00
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
	db #0f,#0e,#0e,#0d,#0d,#0c,#0b,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#fd,#ff,#fc,#ff
	db #fb,#ff,#fa,#ff,#f9,#ff,#f8,#ff
	db #f6,#ff,#f7,#ff,#f7,#ff,#f7,#ff
	db #f8,#ff,#f7,#ff,#f7,#ff,#f7,#ff
	db #09,#0b,#0d,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
.l79ae
	db #00,#db,#79,#00,#e2,#79,#00,#db
.l79bd equ $ + 7
	db #79,#00,#e2,#79,#80,#ae,#79,#00
	db #e9,#79,#00,#02,#7a,#00,#e9,#79
.l79cc equ $ + 6
	db #00,#02,#7a,#80,#bd,#79,#00,#1b
	db #7a,#00,#ac,#7a,#00,#1b,#7a,#00
	db #ac,#7a,#80,#cc,#79,#28,#40,#20
	db #2b,#40,#20,#ff,#26,#40,#20,#28
	db #40,#20,#ff,#28,#a0,#10,#34,#00
	db #02,#34,#00,#02,#40,#10,#0c,#2b
	db #a0,#10,#34,#00,#02,#34,#00,#02
	db #40,#10,#0c,#ff,#26,#a0,#10,#34
	db #00,#02,#34,#00,#02,#40,#10,#0c
	db #28,#a0,#10,#34,#00,#02,#34,#00
	db #02,#40,#10,#0c,#ff,#40,#7b,#20
	db #4c,#7b,#20,#48,#7b,#20,#47,#7b
	db #20,#43,#7b,#20,#40,#7b,#20,#48
	db #7b,#21,#47,#7b,#21,#43,#7b,#22
	db #40,#7b,#22,#48,#7b,#23,#47,#7b
	db #23,#43,#7b,#22,#40,#7b,#22,#48
	db #7b,#25,#47,#7b,#25,#43,#7b,#16
	db #72,#3b,#16,#5d,#3b,#16,#72,#3b
	db #15,#70,#3b,#15,#6f,#3b,#14,#6d
	db #3b,#14,#68,#3b,#13,#6b,#3b,#13
	db #61,#3b,#12,#5f,#3b,#12,#69,#3b
	db #11,#68,#3b,#11,#74,#3b,#10,#70
	db #3b,#10,#60,#3b,#10,#5e,#3b,#10
	db #66,#3b,#10,#5e,#3b,#10,#70,#3b
	db #10,#5f,#3b,#10,#72,#3b,#10,#70
	db #3b,#10,#5f,#3b,#11,#5d,#3b,#11
	db #74,#3b,#12,#62,#3b,#12,#64,#3b
	db #13,#68,#3b,#13,#66,#3b,#14,#64
	db #3b,#14,#69,#3b,#15,#ff,#3e,#7b
	db #20,#4a,#7b,#20,#45,#7b,#20,#42
	db #7b,#20,#3e,#7b,#20,#39,#7b,#20
	db #45,#7b,#21,#42,#7b,#21,#3e,#7b
	db #22,#39,#7b,#22,#45,#7b,#23,#42
	db #7b,#23,#3e,#7b,#22,#39,#7b,#22
	db #45,#7b,#25,#42,#7b,#25,#3e,#7b
	db #16,#72,#3b,#16,#5f,#3b,#16,#68
	db #3b,#15,#72,#3b,#15,#5f,#3b,#14
	db #69,#3b,#14,#5d,#3b,#13,#72,#3b
	db #13,#64,#3b,#12,#5e,#3b,#12,#69
	db #3b,#11,#68,#3b,#11,#6d,#3b,#10
	db #70,#3b,#10,#67,#3b,#10,#73,#3b
	db #10,#71,#3b,#10,#6e,#3b,#10,#67
	db #3b,#10,#6b,#3b,#10,#62,#3b,#11
	db #5b,#3b,#11,#5d,#3b,#12,#5f,#3b
	db #12,#5a,#3b,#13,#58,#3b,#13,#5d
	db #3b,#14,#66,#3b,#14,#5f,#3b,#15
	db #61,#3b,#15,#68,#3b,#1f,#ff
;
.music_info
	db "Rainbow Meeting Demo - 3 - Juggler's Part - 1 (1994)(POW!)()",0
	db "ST-128 Module",0

	read "music_end.asm"
