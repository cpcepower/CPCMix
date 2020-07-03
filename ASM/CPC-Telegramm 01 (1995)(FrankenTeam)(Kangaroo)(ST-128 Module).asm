; Music of CPC-Telegramm 01 (1995)(FrankenTeam)(Kangaroo)(ST-128 Module)
; Ripped by Megachur the 15/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPC01DON.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0871

	read "music_header.asm"

	jp l087a
	jp l090e
	jp l08f2
;
.init_music
.l087a
;
	xor a
	ld hl,l0e25
	call l08eb
	ld hl,l0e53
	call l08eb
	ld hl,l0e81
	call l08eb
	ld ix,l0e21
	ld iy,l0eab
	ld de,#002e
	ld b,#03
.l089a
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
	djnz l089a
	ld hl,l0d3a
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
	ld (l0d36),hl
	ld (l0d38),hl
	ld a,#0c
	ld c,d
	call l0d16
	ld a,#0d
	ld c,d
	jp l0d16
.l08eb
	ld b,#2a
.l08ed
	ld (hl),a
	inc hl
	djnz l08ed
	ret
;
.stop_music
.l08f2
;
	ld a,#07
	ld c,#3f
	call l0d16
	ld a,#08
	ld c,#00
	call l0d16
	ld a,#09
	ld c,#00
	call l0d16
	ld a,#0a
	ld c,#00
	jp l0d16
;
.play_music
.l090e
;
	ld hl,l0d3c
	dec (hl)
	ld ix,l0e21
	ld bc,l0e2f
	call l09b0
	ld ix,l0e4f
	ld bc,l0e5d
	call l09b0
	ld ix,l0e7d
	ld bc,l0e8b
	call l09b0
	ld hl,l0d35
	ld de,l0d3c
	ld b,#06
	call l098d
	ld b,#07
	call l098d
	ld b,#0b
	call l098d
	ld b,#0d
	call l098d
	ld de,l0d3c
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l0e40
	call l0966
	ld hl,l0e6e
	call l0966
	ld hl,l0e9c
.l0966
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
	jr nz,l097b
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l097b
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
.l098d
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l0d16
.l0998
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l0d16
.l09b0
	ld a,(l0d3c)
	or a
	jp nz,l0a68
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l0a68
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l0998
	or a
	jp z,l0a5d
	ld r,a
	and #7f
	cp #10
	jr c,l0a38
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l0bb0
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
	jr z,l0a11
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l0a11
	rrca
	ld c,a
	ld hl,l0eb1
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
	jr z,l0a30
	ld (ix+#1e),b
.l0a30
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l0a51
.l0a38
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l0d41
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
.l0a51
	ld a,d
	or a
	jr nz,l0a5f
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l0a5f
.l0a5d
	ld a,(hl)
	inc hl
.l0a5f
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l0a68
	ld a,(ix+#17)
	or a
	jr nz,l0a7e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l0a7e
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l0a94
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l0a94
	ld a,(ix+#0d)
	or a
	jr z,l0aa2
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l0ac0
.l0aa2
	ld a,(ix+#1a)
	or a
	jp z,l0ac7
	ld c,a
	cp #03
	jr nz,l0aaf
	xor a
.l0aaf
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l0ac0
	ld a,(ix+#18)
	dec c
	jr z,l0ac0
	ld a,(ix+#19)
.l0ac0
	add (ix+#07)
	ld b,d
	call l0bb0
.l0ac7
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l0aef
	dec (ix+#1b)
	jr nz,l0aef
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l0b27
.l0aef
	ld a,(ix+#29)
	or a
	jr z,l0b27
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l0b1e
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l0b15
	ld (ix+#29),#ff
	jr l0b1e
.l0b15
	cp (ix+#2b)
	jr nz,l0b1e
	ld (ix+#29),#01
.l0b1e
	ld b,d
	or a
	jp p,l0b24
	dec b
.l0b24
	ld c,a
	jr l0b32
.l0b27
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l0b32
	pop hl
	bit 7,(ix+#14)
	jr z,l0b3b
	ld h,d
	ld l,d
.l0b3b
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l0d16
	ld c,h
	ld a,(ix+#02)
	call l0d16
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l0b8e
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l0b7d
	dec (ix+#09)
	jr nz,l0b7d
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l0b75
	xor a
	jr l0b7a
.l0b75
	cp #10
	jr nz,l0b7a
	dec a
.l0b7a
	ld (ix+#1e),a
.l0b7d
	ld a,b
	sub (ix+#1e)
	jr nc,l0b84
	xor a
.l0b84
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l0d16
.l0b8e
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l0d3d)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l0bac
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l0bac
	ld (l0d3d),hl
	ret
.l0bb0
	ld hl,l0d5f
	cp #61
	jr nc,l0bba
	add a
	ld c,a
	add hl,bc
.l0bba
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l0bc4
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l0ce9
	ld (ix+#1e),a
	jp l0a51
.l0bd6
	dec b
.l0bd7
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l0be2
	neg
.l0be2
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
	jp l0a51
.l0bf8
	dec b
	jr l0bfc
.l0bfb
	inc b
.l0bfc
	call l0ce9
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l0a51
.l0c0b
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
	jp l0cce
.l0c1c
	ld a,(hl)
	inc hl
	or a
	jr z,l0c3e
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
.l0c3e
	ld (ix+#29),a
	jp l0a51
.l0c44
	dec hl
	ld a,(hl)
	and #0f
	ld (l0d40),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l0d3f),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l0a51
.l0c5e
	ld a,(hl)
	or a
	jr z,l0c6f
	call l0ceb
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l0a51
.l0c6f
	ld hl,#0101
	ld (l0d3b),hl
	jp l0a51
.l0c78
	call l0ce9
	ld (ix+#1e),a
	jp l0a51
.l0c81
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l0cfa
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l0cfa
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l0a51
.l0ca3
	ld a,(hl)
	inc hl
	ld (l0d3a),a
	jp l0a51
.l0cab
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
	jp l0a51
.l0cca
	call l0ce9
	add a
.l0cce
	ld b,#00
	ld c,a
	push hl
	ld hl,l0f31
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l0a51
.l0ce9
	ld a,(hl)
	inc hl
.l0ceb
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
.l0cfa
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l0eb1
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l0d16
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
.l0d35
	ret
.l0d3d equ $ + 7
.l0d3c equ $ + 6
.l0d3b equ $ + 5
.l0d3a equ $ + 4
.l0d38 equ $ + 2
.l0d36
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0d40 equ $ + 2
.l0d3f equ $ + 1
	db #38,#00,#00
.l0d41
	dw l0bc4,l0bd7,l0bd6,l0bfb
	dw l0bf8,l0c0b,l0c1c,l0c44
	dw l0c5e,l0c44,l0c78,l0c81
	dw l0ca3,l0cab,l0cca
.l0d5f
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
.l0e21 equ $ + 2
	dw #000f,#0008
.l0e25 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l0e2f equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0e40 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0e4f equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l0e53
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0e5d equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0e6e equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0e81 equ $ + 6
.l0e7d equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0e8b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0e9c equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0eb1 equ $ + 6
.l0eab
	db #d1,#11,#f8,#11,#1f,#12,#43,#c8
	db #43,#c8,#43,#c8,#00,#00,#51,#0f
	db #91,#0f,#b1,#0f,#00,#00,#d1,#0f
	db #11,#10,#b1,#0f,#18,#07,#43,#c8
	db #43,#c8,#43,#c8,#00,#00,#51,#0f
	db #31,#10,#b1,#0f,#1a,#05,#51,#10
	db #91,#10,#b1,#0f,#07,#18,#51,#0f
	db #b1,#10,#b1,#0f,#08,#18,#d1,#10
	db #11,#11,#31,#11,#00,#00,#51,#11
	db #91,#11,#b1,#11,#00,#00,#43,#c8
	db #43,#c8,#43,#c8,#00,#00,#43,#c8
	db #43,#c8,#43,#c8,#00,#00,#43,#c8
	db #43,#c8,#43,#c8,#00,#00,#43,#c8
	db #43,#c8,#43,#c8,#00,#00,#43,#c8
	db #43,#c8,#43,#c8,#00,#00,#43,#c8
	db #43,#c8,#43,#c8,#00,#00,#43,#c8
.l0f31 equ $ + 6
	db #43,#c8,#43,#c8,#00,#00,#43,#c8
	db #43,#c8,#43,#c8,#43,#c8,#43,#c8
	db #43,#c8,#43,#c8,#43,#c8,#43,#c8
	db #43,#c8,#43,#c8,#43,#c8,#43,#c8
	db #43,#c8,#43,#c8,#43,#c8,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0a,#0a,#09,#09,#08
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#04,#04,#04,#04,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#0f,#0f
	db #0f,#0d,#0b,#09,#07,#0d,#0b,#09
	db #07,#08,#09,#0a,#0b,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0b,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0f,#0f
	db #0f,#0e,#0e,#0e,#0d,#0d,#0d,#0c
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#08,#07,#07
	db #07,#06,#06,#06,#05,#05,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#0f,#0f
	db #0e,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0c,#0b
	db #0b,#0a,#0a,#09,#08,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#00,#00
	db #40,#00,#80,#00,#c0,#00,#00,#01
	db #40,#01,#80,#01,#c0,#01,#00,#02
	db #40,#02,#80,#02,#c0,#02,#00,#03
	db #40,#03,#80,#03,#c0,#03,#00,#04
	db #40,#04,#80,#04,#c0,#04,#00,#05
	db #40,#05,#80,#05,#c0,#05,#00,#06
	db #40,#06,#80,#06,#c0,#06,#00,#07
	db #40,#07,#80,#07,#c0,#07,#0f,#0f
	db #0f,#0e,#0e,#0e,#0d,#0d,#0d,#0c
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#08,#07,#07
	db #07,#06,#06,#06,#03,#00,#00,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#00,#00
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#70,#03
	db #80,#03,#90,#03,#a0,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0a,#0a
	db #09,#09,#08,#07,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#02,#00
	db #00,#00,#00,#00,#00,#00,#04,#06
	db #07,#09,#0c,#11,#17,#1d,#15,#10
	db #0c,#09,#06,#05,#04,#04,#03,#03
	db #03,#02,#02,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#46
	db #12,#00,#46,#12,#00,#46,#12,#00
	db #46,#12,#00,#68,#12,#00,#7b,#12
	db #00,#8e,#12,#00,#0a,#13,#00,#68
	db #12,#00,#7b,#12,#00,#8b,#13,#00
	db #cc,#13,#80,#dd,#11,#00,#0d,#14
	db #00,#31,#14,#00,#0d,#14,#00,#31
	db #14,#00,#55,#14,#00,#96,#14,#00
	db #d7,#14,#00,#0e,#15,#00,#55,#14
	db #00,#96,#14,#00,#42,#15,#00,#8e
	db #15,#80,#04,#12,#00,#da,#15,#00
	db #da,#15,#00,#dd,#15,#00,#dd,#15
	db #00,#dd,#15,#00,#dd,#15,#00,#dd
	db #15,#00,#dd,#15,#00,#dd,#15,#00
	db #dd,#15,#00,#0a,#13,#00,#0a,#13
	db #80,#2b,#12,#47,#10,#08,#49,#10
	db #04,#4b,#10,#06,#47,#10,#05,#4b
	db #10,#03,#47,#10,#08,#47,#10,#05
	db #4b,#10,#03,#47,#10,#04,#42,#10
	db #04,#47,#10,#0e,#ff,#00,#04,#2f
	db #48,#14,#10,#28,#48,#1e,#10,#28
	db #48,#1e,#10,#2a,#48,#1b,#0c,#ff
	db #00,#04,#2f,#48,#14,#10,#28,#48
	db #1e,#10,#28,#48,#1e,#10,#23,#48
	db #28,#0c,#ff,#00,#04,#4b,#61,#10
	db #c4,#60,#cb,#60,#d0,#60,#cb,#60
	db #c4,#60,#cb,#60,#d0,#60,#cb,#60
	db #c4,#60,#cb,#60,#d0,#60,#cb,#60
	db #c4,#60,#cb,#60,#d0,#60,#cb,#60
	db #bf,#60,#c3,#60,#c6,#60,#c3,#60
	db #bf,#60,#c3,#60,#c6,#60,#c3,#60
	db #bf,#60,#c3,#60,#c6,#60,#c3,#60
	db #bf,#60,#c3,#60,#c6,#60,#c3,#60
	db #c0,#60,#c4,#60,#c7,#60,#c4,#60
	db #c0,#60,#c4,#60,#c7,#60,#c4,#60
	db #c0,#60,#c7,#60,#c4,#60,#c0,#60
	db #c4,#60,#c7,#60,#c4,#60,#bf,#60
	db #c3,#60,#c6,#60,#c3,#60,#bf,#60
	db #c3,#60,#c6,#60,#c3,#60,#bf,#60
	db #c3,#60,#c6,#60,#c3,#60,#ff,#c4
	db #60,#c4,#60,#cb,#60,#d0,#60,#cb
	db #60,#c4,#60,#cb,#60,#d0,#60,#cb
	db #60,#c4,#60,#cb,#60,#d0,#60,#cb
	db #60,#c4,#60,#cb,#60,#d0,#60,#cb
	db #60,#c4,#60,#cb,#60,#d0,#60,#cb
	db #60,#bf,#60,#c3,#60,#c6,#60,#c3
	db #60,#bf,#60,#c3,#60,#c6,#60,#c3
	db #60,#bf,#60,#c3,#60,#c6,#60,#c3
	db #60,#bf,#60,#c3,#60,#c6,#60,#c3
	db #60,#c0,#60,#c4,#60,#c7,#60,#c4
	db #60,#c0,#60,#c4,#60,#c7,#60,#c4
	db #60,#c0,#60,#c7,#60,#c4,#60,#c0
	db #60,#c4,#60,#c7,#60,#c4,#60,#bf
	db #60,#c3,#60,#c6,#60,#c3,#60,#bf
	db #60,#c3,#60,#c6,#60,#c3,#60,#bf
	db #60,#c3,#60,#c6,#60,#c3,#60,#ff
	db #3b,#41,#40,#3f,#40,#04,#3d,#40
	db #02,#3b,#40,#02,#3f,#40,#04,#3d
	db #40,#02,#3b,#40,#02,#3d,#40,#03
	db #bf,#40,#3d,#40,#02,#3b,#40,#02
	db #38,#40,#06,#3b,#40,#02,#3d,#40
	db #03,#bf,#40,#3d,#40,#02,#3b,#40
	db #02,#38,#40,#02,#36,#40,#02,#38
	db #40,#02,#3b,#40,#02,#3d,#40,#0c
	db #ff,#3b,#41,#40,#3f,#40,#04,#3d
	db #40,#02,#3b,#40,#02,#3f,#40,#04
	db #3d,#40,#02,#3b,#40,#02,#3d,#40
	db #03,#bf,#40,#3d,#40,#02,#3b,#40
	db #02,#38,#40,#06,#3b,#40,#02,#3d
	db #40,#03,#bf,#40,#3d,#40,#02,#3b
	db #40,#02,#38,#40,#02,#36,#40,#02
	db #38,#40,#02,#3b,#40,#02,#3b,#40
	db #0c,#ff,#00,#04,#4b,#10,#06,#47
	db #10,#06,#49,#10,#04,#49,#10,#04
	db #49,#10,#04,#44,#10,#08,#49,#10
	db #04,#49,#10,#04,#44,#10,#04,#44
	db #10,#04,#49,#10,#0c,#ff,#00,#04
	db #4b,#10,#06,#47,#10,#06,#49,#10
	db #04,#49,#10,#04,#49,#10,#04,#44
	db #10,#08,#49,#10,#04,#49,#10,#04
	db #44,#10,#04,#44,#10,#04,#47,#10
	db #0c,#ff,#47,#40,#04,#4b,#40,#04
	db #49,#40,#02,#47,#40,#02,#4b,#40
	db #04,#49,#40,#02,#47,#40,#02,#49
	db #40,#03,#cb,#40,#49,#40,#02,#47
	db #40,#02,#44,#40,#06,#47,#40,#02
	db #49,#40,#03,#cb,#40,#49,#40,#02
	db #47,#40,#02,#44,#40,#02,#42,#40
	db #02,#44,#40,#02,#47,#40,#02,#49
	db #40,#0c,#ff,#47,#40,#04,#4b,#40
	db #04,#49,#40,#02,#47,#40,#02,#4b
	db #40,#04,#49,#40,#02,#47,#40,#02
	db #49,#40,#03,#cb,#40,#49,#40,#02
	db #47,#40,#02,#44,#40,#06,#47,#40
	db #02,#49,#40,#03,#cb,#40,#49,#40
	db #02,#47,#40,#02,#44,#40,#02,#42
	db #40,#02,#44,#40,#02,#47,#40,#02
	db #47,#40,#0c,#ff,#47,#50,#02,#46
	db #50,#02,#44,#50,#04,#44,#50,#02
	db #46,#50,#02,#47,#50,#04,#44,#50
	db #04,#46,#50,#04,#4b,#50,#08,#47
	db #50,#02,#46,#50,#02,#44,#50,#04
	db #44,#50,#02,#46,#50,#02,#47,#50
	db #04,#44,#50,#04,#46,#50,#04,#3f
	db #50,#08,#ff,#47,#51,#20,#46,#51
	db #20,#44,#51,#40,#44,#51,#20,#46
	db #51,#20,#47,#51,#40,#44,#51,#40
	db #46,#51,#40,#4b,#51,#80,#47,#51
	db #20,#46,#51,#20,#44,#51,#40,#44
	db #51,#20,#46,#51,#20,#47,#51,#40
	db #44,#51,#40,#4b,#51,#c0,#ff,#49
	db #20,#02,#4b,#20,#02,#44,#20,#02
	db #44,#20,#02,#44,#20,#04,#44,#20
	db #02,#44,#20,#02,#44,#20,#04,#46
	db #20,#02,#46,#20,#02,#46,#20,#04
	db #46,#20,#02,#46,#20,#02,#46,#20
	db #04,#47,#20,#02,#47,#20,#02,#47
	db #20,#04,#47,#20,#02,#47,#20,#02
	db #47,#20,#04,#49,#20,#02,#49,#20
	db #02,#49,#20,#04,#49,#20,#02,#49
	db #20,#02,#ff,#49,#20,#02,#4b,#20
	db #02,#44,#20,#02,#44,#20,#02,#44
	db #20,#04,#44,#20,#02,#44,#20,#02
	db #44,#20,#04,#46,#20,#02,#46,#20
	db #02,#46,#20,#04,#46,#20,#02,#46
	db #20,#02,#46,#20,#04,#47,#20,#02
	db #47,#20,#02,#47,#20,#04,#47,#20
	db #02,#47,#20,#02,#47,#20,#04,#47
	db #20,#02,#47,#20,#02,#47,#20,#04
	db #46,#20,#02,#46,#20,#02,#ff,#00
	db #40,#ff,#40,#80,#04,#34,#70,#04
	db #40,#80,#02,#34,#70,#04,#34,#70
	db #02,#40,#80,#04,#34,#70,#04,#40
	db #80,#02,#34,#70,#04,#34,#70,#02
	db #40,#80,#04,#34,#70,#04,#40,#80
	db #02,#34,#70,#04,#34,#70,#02,#40
	db #80,#04,#34,#70,#04,#40,#80,#02
	db #34,#70,#04,#34,#70,#02,#ff
;
.music_info
	db "CPC-Telegramm 01 (1995)(FrankenTeam)(Kangaroo)",0
	db "ST-128 Module - Dontake",0

	read "music_end.asm"
