; Music of Digital Press Issue 2 - Music 3 (1995)(HJT)(Kangaroo)(ST-128 Module)
; Ripped by Megachur the 07/11/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DIGIPI23.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #2990

	read "music_header.asm"

	jp l2999
	jp l2a2d
	jp l2a11
;
.init_music
.l2999
;
	xor a
	ld hl,l2f44
	call l2a0a
	ld hl,l2f72
	call l2a0a
	ld hl,l2fa0
	call l2a0a
	ld ix,l2f40
	ld iy,l2fca
	ld de,#002e
	ld b,#03
.l29b9
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
	djnz l29b9
	ld hl,l2e59
	ld (hl),#06
	inc hl
	ld (hl),#20
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l2e55),hl
	ld (l2e57),hl
	ld a,#0c
	ld c,d
	call l2e35
	ld a,#0d
	ld c,d
	jp l2e35
.l2a0a
	ld b,#2a
.l2a0c
	ld (hl),a
	inc hl
	djnz l2a0c
	ret
;
.stop_music
.l2a11
;
	ld a,#07
	ld c,#3f
	call l2e35
	ld a,#08
	ld c,#00
	call l2e35
	ld a,#09
	ld c,#00
	call l2e35
	ld a,#0a
	ld c,#00
	jp l2e35
;
.play_music
.l2a2d
;
	ld hl,l2e5b
	dec (hl)
	ld ix,l2f40
	ld bc,l2f4e
	call l2acf
	ld ix,l2f6e
	ld bc,l2f7c
	call l2acf
	ld ix,l2f9c
	ld bc,l2faa
	call l2acf
	ld hl,l2e54
	ld de,l2e5b
	ld b,#06
	call l2aac
	ld b,#07
	call l2aac
	ld b,#0b
	call l2aac
	ld b,#0d
	call l2aac
	ld de,l2e5b
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l2f5f
	call l2a85
	ld hl,l2f8d
	call l2a85
	ld hl,l2fbb
.l2a85
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
	jr nz,l2a9a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l2a9a
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
.l2aac
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l2e35
.l2ab7
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l2e35
.l2acf
	ld a,(l2e5b)
	or a
	jp nz,l2b87
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l2b87
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l2ab7
	or a
	jp z,l2b7c
	ld r,a
	and #7f
	cp #10
	jr c,l2b57
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l2ccf
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
	jr z,l2b30
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l2b30
	rrca
	ld c,a
	ld hl,l2fd0
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
	jr z,l2b4f
	ld (ix+#1e),b
.l2b4f
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l2b70
.l2b57
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l2e60
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
	add (hl)
.l2b70
	ld a,d
	or a
	jr nz,l2b7e
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l2b7e
.l2b7c
	ld a,(hl)
	inc hl
.l2b7e
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l2b87
	ld a,(ix+#17)
	or a
	jr nz,l2b9d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l2b9d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l2bb3
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l2bb3
	ld a,(ix+#0d)
	or a
	jr z,l2bc1
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l2bdf
.l2bc1
	ld a,(ix+#1a)
	or a
	jp z,l2be6
	ld c,a
	cp #03
	jr nz,l2bce
	xor a
.l2bce
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l2bdf
	ld a,(ix+#18)
	dec c
	jr z,l2bdf
	ld a,(ix+#19)
.l2bdf
	add (ix+#07)
	ld b,d
	call l2ccf
.l2be6
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l2c0e
	dec (ix+#1b)
	jr nz,l2c0e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l2c46
.l2c0e
	ld a,(ix+#29)
	or a
	jr z,l2c46
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l2c3d
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l2c34
	ld (ix+#29),#ff
	jr l2c3d
.l2c34
	cp (ix+#2b)
	jr nz,l2c3d
	ld (ix+#29),#01
.l2c3d
	ld b,d
	or a
	jp p,l2c43
	dec b
.l2c43
	ld c,a
	jr l2c51
.l2c46
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l2c51
	pop hl
	bit 7,(ix+#14)
	jr z,l2c5a
	ld h,d
	ld l,d
.l2c5a
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l2e35
	ld c,h
	ld a,(ix+#02)
	call l2e35
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l2cad
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l2c9c
	dec (ix+#09)
	jr nz,l2c9c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l2c94
	xor a
	jr l2c99
.l2c94
	cp #10
	jr nz,l2c99
	dec a
.l2c99
	ld (ix+#1e),a
.l2c9c
	ld a,b
	sub (ix+#1e)
	jr nc,l2ca3
	xor a
.l2ca3
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l2e35
.l2cad
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l2e5c)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l2ccb
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l2ccb
	ld (l2e5c),hl
	ret
.l2ccf
	ld hl,l2e7e
	cp #61
	jr nc,l2cd9
	add a
	ld c,a
	add hl,bc
.l2cd9
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l2ce3
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l2e08
	ld (ix+#1e),a
	jp l2b70
.l2cf5
	dec b
.l2cf6
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l2d01
	neg
.l2d01
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
	jp l2b70
.l2d17
	dec b
	jr l2d1b
.l2d1a
	inc b
.l2d1b
	call l2e08
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l2b70
.l2d2a
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
	jp l2ded
.l2d3b
	ld a,(hl)
	inc hl
	or a
	jr z,l2d5d
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
.l2d5d
	ld (ix+#29),a
	jp l2b70
.l2d63
	dec hl
	ld a,(hl)
	and #0f
	ld (l2e5f),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l2e5e),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l2b70
.l2d7d
	ld a,(hl)
	or a
	jr z,l2d8e
	call l2e0a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l2b70
.l2d8e
	ld hl,#0101
	ld (l2e5a),hl
	jp l2b70
.l2d97
	call l2e08
	ld (ix+#1e),a
	jp l2b70
.l2da0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l2e19
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l2e19
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l2b70
.l2dc2
	ld a,(hl)
	inc hl
	ld (l2e59),a
	jp l2b70
.l2dca
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
	jp l2b70
.l2de9
	call l2e08
	add a
.l2ded
	ld b,#00
	ld c,a
	push hl
	ld hl,l3050
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l2b70
.l2e08
	ld a,(hl)
	inc hl
.l2e0a
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
.l2e19
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l2fd0
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l2e35
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
.l2e54
	ret
.l2e5c equ $ + 7
.l2e5b equ $ + 6
.l2e5a equ $ + 5
.l2e59 equ $ + 4
.l2e57 equ $ + 2
.l2e55
	db #01,#38,#00,#00,#06,#15,#05,#01
.l2e5f equ $ + 2
.l2e5e equ $ + 1
	db #38,#00,#00
.l2e60
	dw l2ce3,l2cf6,l2cf5,l2d1a
	dw l2d17,l2d2a,l2d3b,l2d63
	dw l2d7d,l2d63,l2d97,l2da0
	dw l2dc2,l2dca,l2de9
.l2e7e
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
.l2f44 equ $ + 4
.l2f40
	db #08,#00,#01,#08,#86,#03,#00,#19
.l2f4e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#d0,#31
	db #10,#32,#30,#32,#16,#0a,#08,#18
.l2f5f equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #49,#35,#42,#33,#00,#50,#00,#00
.l2f6e equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l2f72 equ $ + 2
	db #03,#10,#77,#00,#00,#3c,#00,#00
.l2f7c equ $ + 4
	db #00,#00,#00,#00,#50,#32,#90,#32
	db #d0,#30,#16,#0a,#20,#00,#00,#00
.l2f8d equ $ + 5
	db #00,#00,#00,#00,#00,#16,#2c,#36
	db #e4,#33,#00,#a0,#00,#00,#00,#00
.l2f9c equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l2fa0
	db #ef,#00,#00,#30,#00,#00,#00,#00
.l2faa equ $ + 2
	db #d0,#32,#70,#30,#30,#31,#d0,#30
	db #1a,#06,#20,#00,#00,#00,#00,#00
.l2fbb equ $ + 3
	db #00,#00,#00,#16,#e7,#38,#86,#34
	db #00,#20,#00,#00,#00,#00,#00,#00
.l2fca equ $ + 2
	db #01,#01,#30,#33,#d2,#33,#74,#34
.l2fd0
	db #70,#30,#b0,#30,#d0,#30,#00,#00
	db #70,#30,#f0,#30,#10,#31,#00,#00
	db #70,#30,#30,#31,#d0,#30,#1a,#06
	db #34,#b9,#23,#c8,#f5,#97,#94,#ae
	db #50,#31,#90,#31,#b0,#31,#00,#00
	db #d0,#31,#10,#32,#30,#32,#16,#0a
	db #34,#b9,#52,#10,#92,#10,#50,#27
	db #62,#e9,#f6,#97,#f6,#97,#93,#ae
	db #33,#b9,#f6,#97,#24,#c8,#f2,#de
	db #c2,#e9,#b4,#c8,#e4,#c8,#b2,#df
	db #50,#32,#90,#32,#d0,#30,#16,#0a
	db #32,#11,#34,#ca,#64,#ca,#32,#e1
	db #c4,#ca,#f4,#ca,#24,#cb,#e2,#e1
	db #64,#cb,#84,#cb,#94,#cb,#42,#e2
	db #70,#30,#b0,#32,#d0,#30,#08,#00
	db #62,#e9,#62,#e9,#62,#e9,#00,#00
.l3050
	db #d0,#32,#f0,#32,#10,#33,#62,#e9
	db #62,#e9,#62,#e9,#62,#e9,#62,#e9
	db #62,#e9,#62,#e9,#62,#e9,#62,#e9
	db #62,#e9,#62,#e9,#62,#e9,#62,#e9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0f,#0f,#0f,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0b,#0b,#0b,#0c,#0c,#0c,#0c
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0c,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#02,#00
	db #03,#00,#04,#00,#03,#00,#02,#00
	db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0b,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0d,#0d,#0d,#0d,#0d
	db #0c,#0f,#0f,#0f,#0c,#0c,#0c,#0c
	db #0d,#0c,#0c,#0d,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0d,#0d,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #00,#00,#fc,#fc,#f9,#f9,#00,#00
	db #fc,#fc,#f9,#f9,#00,#00,#fc,#fc
	db #f9,#f9,#00,#00,#fc,#fc,#f9,#f9
	db #00,#00,#fc,#fc,#f9,#f9,#00,#00
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#fb,#fb
	db #f8,#f8,#00,#00,#fb,#fb,#f8,#f8
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #00,#00,#fd,#fd,#f9,#f9,#00,#00
	db #fd,#fd,#f9,#f9,#00,#00,#fd,#fd
	db #f9,#f9,#00,#00,#fd,#fd,#f9,#f9
	db #00,#00,#fd,#fd,#f9,#f9,#00,#00
	db #00,#16,#35,#00,#3b,#35,#00,#3b
	db #35,#00,#3b,#35,#00,#3b,#35,#00
	db #3b,#35,#00,#64,#35,#00,#64,#35
	db #00,#64,#35,#00,#64,#35,#00,#9d
	db #35,#00,#64,#35,#00,#64,#35,#00
	db #9d,#35,#00,#9d,#35,#00,#64,#35
	db #00,#64,#35,#02,#64,#35,#02,#64
	db #35,#02,#9d,#35,#02,#64,#35,#02
	db #64,#35,#02,#9d,#35,#02,#9d,#35
	db #02,#64,#35,#02,#64,#35,#00,#64
	db #35,#00,#64,#35,#00,#9d,#35,#00
	db #64,#35,#00,#64,#35,#00,#9d,#35
	db #00,#9d,#35,#00,#64,#35,#00,#64
	db #35,#00,#9d,#35,#00,#64,#35,#00
	db #64,#35,#02,#64,#35,#02,#64,#35
	db #02,#9d,#35,#02,#64,#35,#02,#64
	db #35,#02,#9d,#35,#02,#9d,#35,#02
	db #64,#35,#02,#64,#35,#00,#3b,#35
	db #00,#3b,#35,#00,#d6,#35,#00,#d6
	db #35,#00,#d6,#35,#00,#d6,#35,#80
	db #42,#33,#00,#0d,#36,#00,#10,#36
	db #00,#16,#36,#00,#29,#36,#00,#16
	db #36,#00,#29,#36,#00,#2d,#36,#00
	db #85,#36,#00,#2d,#36,#00,#85,#36
	db #00,#dd,#36,#00,#f3,#36,#00,#f3
	db #36,#00,#48,#37,#00,#5b,#37,#00
	db #2d,#36,#00,#85,#36,#02,#2d,#36
	db #02,#85,#36,#02,#dd,#36,#02,#f3
	db #36,#02,#f3,#36,#02,#48,#37,#02
	db #5b,#37,#02,#2d,#36,#02,#85,#36
	db #00,#6b,#37,#00,#ab,#37,#00,#dd
	db #36,#00,#f3,#36,#00,#f3,#36,#00
	db #48,#37,#00,#5b,#37,#00,#f1,#37
	db #00,#4c,#38,#00,#dd,#36,#00,#f3
	db #36,#00,#f3,#36,#02,#6b,#37,#02
	db #ab,#37,#02,#dd,#36,#02,#f3,#36
	db #02,#f3,#36,#02,#48,#37,#02,#5b
	db #37,#02,#f1,#37,#02,#4c,#38,#00
	db #4c,#38,#00,#4c,#38,#00,#a7,#38
	db #00,#d5,#38,#00,#a7,#38,#00,#d5
	db #38,#80,#e4,#33,#00,#e3,#38,#00
	db #e3,#38,#00,#e3,#38,#00,#e3,#38
	db #00,#e3,#38,#00,#e3,#38,#00,#e8
	db #38,#00,#e8,#38,#00,#e8,#38,#00
	db #e8,#38,#00,#f3,#38,#00,#fe,#38
	db #00,#fe,#38,#00,#f3,#38,#00,#f3
	db #38,#00,#e8,#38,#00,#e8,#38,#02
	db #e8,#38,#02,#e8,#38,#02,#f3,#38
	db #02,#fe,#38,#02,#fe,#38,#02,#f3
	db #38,#02,#f3,#38,#02,#e8,#38,#02
	db #e8,#38,#00,#09,#39,#00,#09,#39
	db #00,#f3,#38,#00,#fe,#38,#00,#fe
	db #38,#00,#f3,#38,#00,#f3,#38,#00
	db #09,#39,#00,#09,#39,#00,#f3,#38
	db #00,#fe,#38,#00,#fe,#38,#02,#09
	db #39,#02,#09,#39,#02,#f3,#38,#02
	db #fe,#38,#02,#fe,#38,#02,#f3,#38
	db #02,#f3,#38,#02,#09,#39,#02,#09
	db #39,#00,#e3,#38,#00,#e3,#38,#00
	db #e3,#38,#00,#e3,#38,#00,#e3,#38
	db #00,#e3,#38,#80,#86,#34,#2d,#50
	db #03,#2d,#50,#03,#2b,#50,#03,#29
	db #50,#03,#28,#50,#02,#2b,#50,#02
	db #2d,#50,#03,#2d,#50,#03,#30,#50
	db #03,#2f,#50,#03,#2d,#50,#02,#2b
	db #50,#02,#ff,#2d,#50,#03,#ad,#50
	db #38,#40,#02,#2b,#50,#03,#29,#50
	db #03,#38,#40,#02,#2b,#50,#02,#2d
	db #50,#03,#ad,#50,#38,#40,#02,#30
	db #50,#03,#2f,#50,#03,#38,#40,#02
	db #2b,#50,#02,#ff,#2d,#50,#02,#b9
	db #50,#ad,#50,#b8,#40,#ad,#50,#39
	db #50,#02,#2d,#50,#02,#b9,#50,#ad
	db #50,#b8,#40,#ad,#50,#39,#50,#02
	db #29,#50,#02,#b5,#50,#a9,#50,#b8
	db #40,#a9,#50,#35,#50,#02,#2b,#50
	db #02,#b7,#50,#ab,#50,#b8,#40,#ab
	db #50,#37,#50,#02,#ff,#29,#50,#02
	db #b5,#50,#a9,#50,#b8,#40,#a9,#50
	db #35,#50,#02,#29,#50,#02,#b5,#50
	db #a9,#50,#b8,#40,#a9,#50,#35,#50
	db #02,#28,#50,#02,#b4,#50,#a8,#50
	db #b8,#40,#a8,#50,#34,#50,#02,#2c
	db #50,#02,#b8,#50,#ac,#50,#b8,#40
	db #ac,#50,#38,#50,#02,#ff,#ad,#50
	db #2d,#50,#02,#ad,#50,#38,#40,#02
	db #ab,#50,#2b,#50,#02,#a9,#50,#29
	db #50,#02,#38,#40,#02,#ab,#50,#ab
	db #50,#ad,#50,#2d,#50,#02,#ad,#50
	db #38,#40,#02,#b0,#50,#30,#50,#02
	db #af,#50,#2f,#50,#02,#38,#40,#02
	db #ab,#50,#ab,#50,#ff,#00,#20,#ff
	db #00,#1c,#43,#a0,#04,#ff,#45,#a0
	db #08,#45,#a0,#04,#47,#a0,#04,#48
	db #a0,#06,#4a,#a0,#06,#4d,#a0,#04
	db #ff,#4c,#a0,#20,#ff,#45,#ab,#10
	db #48,#ab,#13,#45,#ab,#10,#4c,#ab
	db #20,#4c,#ab,#10,#45,#ab,#20,#48
	db #ab,#10,#45,#ab,#13,#4a,#ab,#10
	db #48,#ab,#13,#4c,#ab,#10,#4a,#ab
	db #13,#48,#ab,#10,#4c,#ab,#13,#4a
	db #ab,#15,#48,#ab,#13,#48,#ab,#20
	db #4a,#ab,#10,#4c,#ab,#10,#4a,#ab
	db #10,#4a,#ab,#13,#4c,#ab,#13,#4a
	db #ab,#13,#48,#ab,#10,#4c,#ab,#15
	db #47,#ab,#10,#48,#ab,#13,#48,#ab
	db #10,#47,#ab,#13,#ff,#45,#ab,#10
	db #47,#ab,#13,#45,#ab,#10,#4c,#ab
	db #20,#4c,#ab,#10,#45,#ab,#20,#4c
	db #ab,#13,#51,#ab,#13,#45,#ab,#10
	db #4c,#ab,#15,#48,#ab,#10,#45,#ab
	db #13,#4c,#ab,#10,#48,#ab,#13,#51
	db #ab,#10,#4c,#ab,#13,#48,#ab,#15
	db #51,#ab,#13,#4f,#ab,#20,#51,#ab
	db #15,#4f,#ab,#13,#4a,#ab,#10,#48
	db #ab,#10,#47,#ab,#10,#48,#ab,#10
	db #4a,#ab,#10,#48,#ab,#10,#47,#ab
	db #10,#43,#ab,#10,#ff,#41,#a0,#08
	db #45,#a0,#04,#48,#a0,#04,#4c,#a0
	db #04,#4b,#a0,#04,#4c,#a0,#04,#4d
	db #a0,#04,#ff,#4c,#ab,#10,#45,#ab
	db #10,#47,#ab,#10,#48,#ab,#10,#4a
	db #ab,#10,#48,#ab,#10,#47,#ab,#10
	db #45,#ab,#10,#43,#ab,#10,#4a,#ab
	db #10,#4c,#ab,#10,#4d,#ab,#10,#4c
	db #ab,#10,#4a,#ab,#10,#48,#ab,#10
	db #47,#ab,#10,#48,#ab,#10,#48,#ab
	db #13,#47,#ab,#13,#45,#ab,#10,#48
	db #ab,#15,#47,#ab,#15,#41,#ab,#20
	db #4a,#ab,#10,#41,#ab,#23,#48,#ab
	db #10,#41,#ab,#25,#47,#ab,#20,#ff
	db #48,#a0,#10,#47,#a0,#04,#45,#a0
	db #04,#47,#a0,#02,#48,#a0,#02,#4a
	db #a0,#04,#ff,#51,#a0,#10,#50,#a0
	db #04,#4c,#a0,#04,#48,#a0,#04,#47
	db #a0,#04,#ff,#48,#0b,#20,#47,#0b
	db #10,#45,#0b,#20,#47,#0b,#13,#45
	db #0b,#23,#47,#0b,#15,#45,#0b,#65
	db #45,#0b,#10,#48,#0b,#20,#48,#0b
	db #10,#48,#0b,#13,#47,#0b,#10,#48
	db #0b,#13,#45,#0b,#10,#47,#0b,#10
	db #48,#0b,#15,#45,#0b,#13,#48,#0b
	db #20,#47,#0b,#10,#48,#0b,#23,#47
	db #0b,#13,#ff,#48,#0b,#20,#47,#0b
	db #10,#45,#0b,#10,#43,#0b,#15,#47
	db #0b,#13,#45,#0b,#23,#47,#0b,#15
	db #45,#0b,#65,#45,#0b,#10,#4c,#0b
	db #20,#4c,#0b,#10,#4c,#0b,#13,#4a
	db #0b,#10,#4c,#0b,#13,#48,#0b,#10
	db #4a,#0b,#13,#47,#0b,#10,#48,#0b
	db #13,#48,#0b,#10,#47,#0b,#10,#48
	db #0b,#15,#45,#0b,#10,#43,#0b,#20
	db #ff,#45,#eb,#20,#45,#eb,#10,#47
	db #eb,#10,#48,#eb,#10,#45,#eb,#13
	db #47,#eb,#10,#45,#eb,#10,#48,#eb
	db #10,#47,#eb,#13,#47,#eb,#10,#45
	db #eb,#10,#48,#eb,#10,#47,#eb,#13
	db #47,#eb,#10,#45,#eb,#10,#51,#eb
	db #10,#47,#eb,#13,#47,#eb,#10,#51
	db #eb,#10,#48,#eb,#10,#47,#eb,#13
	db #47,#eb,#10,#45,#eb,#10,#47,#eb
	db #10,#47,#eb,#13,#48,#eb,#10,#4a
	db #eb,#10,#47,#eb,#15,#48,#eb,#13
	db #4c,#eb,#20,#ff,#45,#eb,#20,#45
	db #eb,#10,#47,#eb,#10,#48,#eb,#10
	db #45,#eb,#13,#47,#eb,#10,#45,#eb
	db #10,#48,#eb,#10,#47,#eb,#13,#47
	db #eb,#10,#45,#eb,#10,#48,#eb,#10
	db #47,#eb,#13,#47,#eb,#10,#45,#eb
	db #10,#51,#eb,#10,#47,#eb,#13,#47
	db #eb,#10,#51,#eb,#10,#48,#eb,#10
	db #47,#eb,#13,#47,#eb,#10,#45,#eb
	db #10,#47,#eb,#10,#47,#eb,#13,#48
	db #eb,#10,#47,#eb,#10,#47,#eb,#15
	db #47,#eb,#13,#43,#eb,#20,#ff,#45
	db #1b,#30,#45,#1b,#33,#45,#1b,#25
	db #45,#1b,#30,#45,#1b,#13,#47,#1b
	db #20,#45,#1b,#15,#47,#1b,#13,#48
	db #1b,#20,#47,#1b,#15,#48,#1b,#33
	db #4a,#1b,#30,#4a,#1b,#33,#4d,#1b
	db #30,#4d,#1b,#1e,#ff,#4c,#1b,#30
	db #4c,#1b,#33,#4c,#1b,#35,#4c,#1b
	db #07,#17,#ff,#40,#2f,#00,#20,#ff
	db #45,#2f,#01,#10,#48,#2f,#82,#47
	db #2f,#80,#ff,#48,#2f,#02,#10,#47
	db #2f,#82,#4c,#2f,#81,#ff,#45,#2f
	db #01,#10,#48,#2f,#82,#4a,#2f,#82
	db #ff,#4c,#2f,#00,#10,#4d,#2f,#81
	db #4a,#2f,#82,#ff
;
.music_info
	db "Digital Press Issue 2 - Music 3 (1995)(HJT)(Kangaroo)",0
	db "ST-128 Module",0

	read "music_end.asm"
