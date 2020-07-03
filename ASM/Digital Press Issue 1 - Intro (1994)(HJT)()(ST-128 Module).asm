; Music of Digital Press Issue 1 - Intro (1994)(HJT)()(ST-128 Module)
; Ripped by Megachur the 26/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DIGIPI1I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #2977

	read "music_header.asm"

	jp l2980
	jp l2a14
	jp l29f8
;
.init_music
.l2980
;
	xor a
	ld hl,l2f1c
	call l29f1
	ld hl,l2f4a
	call l29f1
	ld hl,l2f78
	call l29f1
	ld ix,l2f18
	ld iy,l2fa2
	ld de,#002e
	ld b,#03
.l29a0
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
	djnz l29a0
	ld hl,l2e31
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
	ld (l2e2d),hl
	ld (l2e2f),hl
	ld a,#0c
	ld c,d
	call l2e0d
	ld a,#0d
	ld c,d
	jp l2e0d
.l29f1
	ld b,#2a
.l29f3
	ld (hl),a
	inc hl
	djnz l29f3
	ret
;
.stop_music
.l29f8
;
	ld a,#07
	ld c,#3f
	call l2e0d
	ld a,#08
	ld c,#00
	call l2e0d
	ld a,#09
	ld c,#00
	call l2e0d
	ld a,#0a
	ld c,#00
	jp l2e0d
;
.play_music
.l2a14
;
	ld hl,l2e33
	dec (hl)
	ld ix,l2f18
	ld bc,l2f26
	call l2ab6
	ld ix,l2f46
	ld bc,l2f54
	call l2ab6
	ld ix,l2f74
	ld bc,l2f82
	call l2ab6
	ld hl,l2e2c
	ld de,l2e33
	ld b,#06
	call l2a93
	ld b,#07
	call l2a93
	ld b,#0b
	call l2a93
	ld b,#0d
	call l2a93
	ld de,l2e33
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l2f37
	call l2a6c
	ld hl,l2f65
	call l2a6c
	ld hl,l2f93
.l2a6c
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
	jr nz,l2a81
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l2a81
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
.l2a93
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l2e0d
.l2a9e
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l2e0d
.l2ab6
	ld a,(l2e33)
	or a
	jp nz,l2b65
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l2b65
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l2a9e
	or a
	jp z,l2b5a
	ld r,a
	and #7f
	cp #10
	jr c,l2b3b
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l2cb1
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
	jr z,l2b14
	ld (ix+#25),a
	ld (ix+#1e),b
.l2b14
	rrca
	ld c,a
	ld hl,l2fa8
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
	jr z,l2b33
	ld (ix+#1e),b
.l2b33
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l2b4e
.l2b3b
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l2e38
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
.l2b4e
	ld a,d
	or a
	jr nz,l2b5c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l2b5c
.l2b5a
	ld a,(hl)
	inc hl
.l2b5c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l2b65
	ld a,(ix+#17)
	or a
	jr nz,l2b7b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l2b7b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l2b91
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l2b91
	ld a,(ix+#0d)
	or a
	jr z,l2b9f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l2bbd
.l2b9f
	ld a,(ix+#1a)
	or a
	jp z,l2bc4
	ld c,a
	cp #03
	jr nz,l2bac
	xor a
.l2bac
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l2bbd
	ld a,(ix+#18)
	dec c
	jr z,l2bbd
	ld a,(ix+#19)
.l2bbd
	add (ix+#07)
	ld b,d
	call l2cb1
.l2bc4
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l2bec
	dec (ix+#1b)
	jr nz,l2bec
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l2c28
.l2bec
	ld a,(ix+#29)
	or a
	jr z,l2c28
	dec (ix+#26)
	jr z,l2bfc
	ld a,(ix+#27)
	jr l2c1f
.l2bfc
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,(ix+#27)
	add (ix+#29)
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l2c16
	ld (ix+#29),#ff
	jr l2c1f
.l2c16
	cp (ix+#2b)
	jr nz,l2c1f
	ld (ix+#29),#01
.l2c1f
	ld b,d
	or a
	jp p,l2c25
	dec b
.l2c25
	ld c,a
	jr l2c33
.l2c28
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l2c33
	pop hl
	bit 7,(ix+#14)
	jr z,l2c3c
	ld h,d
	ld l,d
.l2c3c
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l2e0d
	ld c,h
	ld a,(ix+#02)
	call l2e0d
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l2c8f
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l2c7e
	dec (ix+#09)
	jr nz,l2c7e
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l2c76
	xor a
	jr l2c7b
.l2c76
	cp #10
	jr nz,l2c7b
	dec a
.l2c7b
	ld (ix+#1e),a
.l2c7e
	ld a,b
	sub (ix+#1e)
	jr nc,l2c85
	xor a
.l2c85
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l2e0d
.l2c8f
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l2e34)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l2cad
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l2cad
	ld (l2e34),hl
	ret
.l2cb1
	ld hl,l2e56
	cp #61
	jr nc,l2cbb
	add a
	ld c,a
	add hl,bc
.l2cbb
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l2cc5
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l2ded
	ld (ix+#1e),a
	jp l2b4e
.l2cd7
	dec b
.l2cd8
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l2ce3
	neg
.l2ce3
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
	jp l2b4e
.l2cf9
	dec b
	jr l2cfd
.l2cfc
	inc b
.l2cfd
	call l2ded
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l2b4e
.l2d0c
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
	jp l2dd2
.l2d1d
	ld a,(hl)
	ld (ix+#29),a
	inc hl
	or a
	jp z,l2b4e
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
	ld (ix+#29),#01
	jp l2b4e
.l2d48
	dec hl
	ld a,(hl)
	and #0f
	ld (l2e37),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l2e36),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l2b4e
.l2d62
	ld a,(hl)
	or a
	jr z,l2d73
	call l2def
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l2b4e
.l2d73
	ld hl,#0101
	ld (l2e32),hl
	jp l2b4e
.l2d7c
	call l2ded
	ld (ix+#1e),a
	jp l2b4e
.l2d85
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l2dfe
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l2dfe
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l2b4e
.l2da7
	ld a,(hl)
	inc hl
	ld (l2e31),a
	jp l2b4e
.l2daf
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
	jp l2b4e
.l2dce
	call l2ded
	add a
.l2dd2
	ld b,#00
	ld c,a
	push hl
	ld hl,l3028
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l2b4e
.l2ded
	ld a,(hl)
	inc hl
.l2def
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
.l2dfe
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l2fa8
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
.l2e0d
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
.l2e2c
	ret
.l2e34 equ $ + 7
.l2e33 equ $ + 6
.l2e32 equ $ + 5
.l2e31 equ $ + 4
.l2e2f equ $ + 2
.l2e2d
	db #01,#38,#00,#00,#06,#30,#02,#01
.l2e37 equ $ + 2
.l2e36 equ $ + 1
	db #38,#00,#00
.l2e38
	dw l2cc5,l2cd8,l2cd7,l2cfc
	dw l2cf9,l2d0c,l2d1d,l2d48
	dw l2d62,l2d48,l2d7c,l2d85
	dw l2da7,l2daf,l2dce
.l2e56
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
.l2f1c equ $ + 4
.l2f18
	db #08,#00,#01,#08,#ef,#00,#00,#30
.l2f26 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#c8,#31
	db #08,#32,#28,#32,#00,#00,#05,#1b
.l2f37 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#03,#01
	db #90,#32,#4b,#32,#00,#60,#00,#00
.l2f46 equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l2f4a equ $ + 2
	db #03,#10,#ef,#00,#00,#30,#00,#00
.l2f54 equ $ + 4
	db #00,#00,#00,#00,#48,#30,#88,#30
	db #a8,#30,#00,#00,#0b,#15,#00,#00
.l2f65 equ $ + 5
	db #00,#00,#00,#00,#00,#01,#e9,#33
	db #54,#32,#00,#00,#00,#00,#00,#00
.l2f74 equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l2f78
	db #bc,#03,#00,#18,#00,#00,#00,#00
.l2f82 equ $ + 2
	db #00,#00,#c8,#30,#08,#31,#28,#31
	db #1a,#00,#0b,#15,#00,#00,#00,#00
.l2f93 equ $ + 3
	db #00,#00,#00,#01,#9b,#34,#5d,#32
	db #00,#10,#00,#00,#00,#00,#00,#00
.l2fa2 equ $ + 2
	db #01,#01,#48,#32,#51,#32,#5a,#32
.l2fa8
	db #48,#30,#88,#30,#a8,#30,#00,#00
	db #c8,#30,#08,#31,#28,#31,#1a,#00
	db #49,#e8,#48,#e9,#48,#ea,#00,#00
	db #49,#e8,#48,#e9,#48,#ea,#00,#00
	db #48,#31,#88,#31,#a8,#31,#00,#00
	db #48,#ea,#49,#e9,#49,#e8,#ff,#ff
	db #c8,#31,#08,#32,#28,#32,#00,#00
	db #48,#ea,#49,#e9,#49,#e8,#ff,#ff
	db #48,#ea,#49,#e9,#49,#e8,#ff,#ff
	db #48,#ea,#49,#e9,#49,#e8,#ff,#ff
	db #48,#ea,#49,#e9,#49,#e8,#ff,#ff
	db #48,#ea,#49,#e9,#49,#e8,#ff,#ff
	db #48,#ea,#49,#e9,#49,#e8,#ff,#ff
	db #48,#ea,#49,#e9,#49,#e8,#ff,#ff
	db #48,#ea,#49,#e9,#49,#e8,#ff,#ff
	db #48,#ea,#49,#e9,#49,#e8,#ff,#ff
.l3028
	db #48,#ea,#49,#e9,#49,#e8,#48,#e9
	db #48,#ea,#49,#e9,#49,#e8,#48,#e9
	db #48,#ea,#49,#e9,#49,#e8,#48,#e9
	db #48,#ea,#49,#e9,#49,#e8,#48,#e9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#01,#00
	db #03,#00,#05,#00,#03,#00,#01,#00
	db #ff,#ff,#fd,#ff,#fb,#ff,#fd,#ff
	db #ff,#ff,#01,#00,#04,#00,#07,#00
	db #04,#00,#01,#00,#ff,#ff,#fc,#ff
	db #f9,#ff,#fc,#ff,#ff,#ff,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0d,#0d
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0c
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #a0,#00,#e0,#00,#00,#00,#20,#00
	db #40,#00,#60,#00,#a0,#00,#e0,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #80,#00,#a0,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#06,#05
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#06,#08,#0b,#10,#02,#00
	db #06,#08,#0b,#10,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#03,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#03,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0c,#0b,#0a,#08
	db #07,#07,#08,#08,#09,#09,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#03,#02,#02,#02
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#63,#32,#00,#1e,#33,#80,#48
	db #32,#00,#d1,#33,#00,#2b,#34,#80
	db #51,#32,#00,#7f,#34,#00,#7f,#34
	db #80,#5a,#32,#3b,#6b,#20,#3b,#6b
	db #10,#3b,#6b,#13,#3b,#6b,#10,#3b
	db #6b,#13,#3b,#6b,#10,#3b,#6b,#13
	db #3b,#6b,#10,#3b,#6b,#13,#3b,#6b
	db #10,#3b,#6b,#13,#40,#6b,#10,#3b
	db #6b,#13,#40,#6b,#10,#40,#6b,#13
	db #3d,#6b,#10,#40,#6b,#13,#3d,#6b
	db #10,#3d,#6b,#13,#3d,#6b,#10,#3d
	db #6b,#13,#3d,#6b,#10,#3d,#6b,#13
	db #3d,#6b,#10,#3d,#6b,#13,#3d,#6b
	db #10,#3d,#6b,#13,#42,#6b,#10,#3d
	db #6b,#13,#42,#6b,#10,#42,#6b,#13
	db #44,#6b,#10,#42,#6b,#13,#44,#6b
	db #13,#42,#6b,#10,#44,#6b,#10,#44
	db #6b,#13,#42,#6b,#10,#44,#6b,#13
	db #42,#6b,#10,#42,#6b,#13,#40,#6b
	db #10,#42,#6b,#13,#3b,#6b,#10,#40
	db #6b,#13,#42,#6b,#15,#3b,#6b,#13
	db #3b,#6b,#20,#3b,#6b,#10,#3b,#6b
	db #13,#3d,#6b,#10,#3b,#6b,#13,#3f
	db #6b,#10,#3d,#6b,#13,#40,#6b,#10
	db #3f,#6b,#13,#40,#6b,#10,#40,#6b
	db #13,#40,#6b,#10,#40,#6b,#13,#40
	db #6b,#15,#40,#6b,#13,#ff,#3b,#6b
	db #20,#3b,#6b,#10,#3b,#6b,#13,#3b
	db #6b,#10,#3b,#6b,#13,#3b,#6b,#10
	db #3b,#6b,#13,#3b,#6b,#10,#3b,#6b
	db #13,#3b,#6b,#10,#3b,#6b,#13,#40
	db #6b,#10,#3b,#6b,#13,#3b,#6b,#15
	db #40,#6b,#13,#3d,#6b,#20,#3d,#6b
	db #10,#3d,#6b,#13,#3d,#6b,#10,#3d
	db #6b,#13,#3d,#6b,#10,#3d,#6b,#13
	db #3d,#6b,#10,#3d,#6b,#13,#3d,#6b
	db #10,#3d,#6b,#13,#42,#6b,#10,#3d
	db #6b,#13,#3d,#6b,#15,#42,#6b,#13
	db #44,#6b,#20,#42,#6b,#13,#42,#6b
	db #10,#44,#6b,#10,#42,#6b,#15,#42
	db #6b,#10,#44,#6b,#13,#42,#6b,#10
	db #42,#6b,#13,#40,#6b,#10,#42,#6b
	db #13,#3b,#6b,#10,#40,#6b,#13,#42
	db #6b,#15,#3b,#6b,#13,#3b,#6b,#20
	db #3b,#6b,#10,#3b,#6b,#13,#3d,#6b
	db #10,#3b,#6b,#13,#3f,#6b,#10,#3d
	db #6b,#13,#40,#6b,#10,#3f,#6b,#13
	db #40,#6b,#10,#40,#6b,#13,#40,#6b
	db #10,#c0,#60,#c0,#60,#40,#6b,#13
	db #ff,#3b,#00,#02,#3b,#00,#02,#3b
	db #00,#02,#3b,#00,#02,#3b,#00,#02
	db #3b,#00,#02,#40,#00,#02,#40,#00
	db #02,#3d,#00,#02,#3d,#00,#02,#3d
	db #00,#02,#3d,#00,#02,#3d,#00,#02
	db #3d,#00,#02,#42,#00,#02,#42,#00
	db #02,#44,#00,#03,#c2,#00,#44,#00
	db #02,#42,#00,#02,#42,#00,#02,#40
	db #00,#02,#3b,#00,#04,#3b,#00,#02
	db #3b,#00,#02,#3d,#00,#02,#3f,#00
	db #02,#40,#00,#02,#40,#00,#02,#40
	db #00,#04,#ff,#3b,#00,#02,#3b,#00
	db #02,#3b,#00,#02,#3b,#00,#02,#3b
	db #00,#02,#3b,#00,#02,#40,#00,#04
	db #3d,#00,#02,#3d,#00,#02,#3d,#00
	db #02,#3d,#00,#02,#3d,#00,#02,#3d
	db #00,#02,#42,#00,#04,#44,#00,#03
	db #c2,#00,#44,#00,#02,#42,#00,#02
	db #42,#00,#02,#40,#00,#02,#3b,#00
	db #04,#3b,#00,#02,#3b,#00,#02,#3d
	db #00,#02,#3f,#00,#02,#40,#00,#02
	db #40,#00,#02,#40,#00,#04,#ff,#28
	db #10,#02,#a8,#10,#a8,#10,#b8,#40
	db #a8,#10,#28,#10,#02,#28,#10,#02
	db #a8,#10,#a8,#10,#b8,#40,#a8,#10
	db #28,#10,#02,#2d,#10,#02,#ad,#10
	db #ad,#10,#b8,#40,#ad,#10,#2d,#10
	db #02,#2d,#10,#02,#ad,#10,#ad,#10
	db #b8,#40,#ad,#10,#2d,#10,#02,#2f
	db #10,#02,#af,#10,#af,#10,#b8,#40
	db #af,#10,#2f,#10,#02,#2f,#10,#02
	db #2f,#10,#02,#38,#40,#02,#2c,#10
	db #02,#28,#10,#02,#a8,#10,#a8,#10
	db #b8,#40,#a8,#10,#28,#10,#02,#28
	db #10,#02,#a8,#10,#a8,#10,#b8,#40
	db #a8,#10,#28,#10,#02,#ff
;
.music_info
	db "Digital Press Issue 1 - Intro (1994)(HJT)()",0
	db "ST-128 Module",0

	read "music_end.asm"
