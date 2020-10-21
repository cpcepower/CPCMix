; Music of Odyssey - Intro (1994)(TAF Production)()(ST-128 Module)
; Ripped by Megachur the 02/09/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ODYSSEYI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #4925

	read "music_header.asm"

	jp l492e
	jp l49c2
	jp l49a6
;
.init_music
.l492e
;
	xor a
	ld hl,l4ed9
	call l499f
	ld hl,l4f07
	call l499f
	ld hl,l4f35
	call l499f
	ld ix,l4ed5
	ld iy,l4f5f
	ld de,#002e
	ld b,#03
.l494e
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
	djnz l494e
	ld hl,l4dee
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
	ld (l4dea),hl
	ld (l4dec),hl
	ld a,#0c
	ld c,d
	call l4dca
	ld a,#0d
	ld c,d
	jp l4dca
.l499f
	ld b,#2a
.l49a1
	ld (hl),a
	inc hl
	djnz l49a1
	ret
;
.stop_music
.l49a6
;
	ld a,#07
	ld c,#3f
	call l4dca
	ld a,#08
	ld c,#00
	call l4dca
	ld a,#09
	ld c,#00
	call l4dca
	ld a,#0a
	ld c,#00
	jp l4dca
;
.play_music
.l49c2
;
	ld hl,l4df0
	dec (hl)
	ld ix,l4ed5
	ld bc,l4ee3
	call l4a64
	ld ix,l4f03
	ld bc,l4f11
	call l4a64
	ld ix,l4f31
	ld bc,l4f3f
	call l4a64
	ld hl,l4de9
	ld de,l4df0
	ld b,#06
	call l4a41
	ld b,#07
	call l4a41
	ld b,#0b
	call l4a41
	ld b,#0d
	call l4a41
	ld de,l4df0
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l4ef4
	call l4a1a
	ld hl,l4f22
	call l4a1a
	ld hl,l4f50
.l4a1a
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
	jr nz,l4a2f
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l4a2f
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
.l4a41
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l4dca
.l4a4c
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l4dca
.l4a64
	ld a,(l4df0)
	or a
	jp nz,l4b1c
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l4b1c
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4a4c
	or a
	jp z,l4b11
	ld r,a
	and #7f
	cp #10
	jr c,l4aec
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l4c64
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
	jr z,l4ac5
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l4ac5
	rrca
	ld c,a
	ld hl,l4f65
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
	jr z,l4ae4
	ld (ix+#1e),b
.l4ae4
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l4b05
.l4aec
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l4df5
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
.l4b05
	ld a,d
	or a
	jr nz,l4b13
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l4b13
.l4b11
	ld a,(hl)
	inc hl
.l4b13
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l4b1c
	ld a,(ix+#17)
	or a
	jr nz,l4b32
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l4b32
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4b48
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4b48
	ld a,(ix+#0d)
	or a
	jr z,l4b56
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l4b74
.l4b56
	ld a,(ix+#1a)
	or a
	jp z,l4b7b
	ld c,a
	cp #03
	jr nz,l4b63
	xor a
.l4b63
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l4b74
	ld a,(ix+#18)
	dec c
	jr z,l4b74
	ld a,(ix+#19)
.l4b74
	add (ix+#07)
	ld b,d
	call l4c64
.l4b7b
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l4ba3
	dec (ix+#1b)
	jr nz,l4ba3
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l4bdb
.l4ba3
	ld a,(ix+#29)
	or a
	jr z,l4bdb
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l4bd2
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l4bc9
	ld (ix+#29),#ff
	jr l4bd2
.l4bc9
	cp (ix+#2b)
	jr nz,l4bd2
	ld (ix+#29),#01
.l4bd2
	ld b,d
	or a
	jp p,l4bd8
	dec b
.l4bd8
	ld c,a
	jr l4be6
.l4bdb
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l4be6
	pop hl
	bit 7,(ix+#14)
	jr z,l4bef
	ld h,d
	ld l,d
.l4bef
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l4dca
	ld c,h
	ld a,(ix+#02)
	call l4dca
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4c42
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l4c31
	dec (ix+#09)
	jr nz,l4c31
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4c29
	xor a
	jr l4c2e
.l4c29
	cp #10
	jr nz,l4c2e
	dec a
.l4c2e
	ld (ix+#1e),a
.l4c31
	ld a,b
	sub (ix+#1e)
	jr nc,l4c38
	xor a
.l4c38
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l4dca
.l4c42
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l4df1)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l4c60
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l4c60
	ld (l4df1),hl
	ret
.l4c64
	ld hl,l4e13
	cp #61
	jr nc,l4c6e
	add a
	ld c,a
	add hl,bc
.l4c6e
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l4d9d
	ld (ix+#1e),a
	jp l4b05
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l4c96
	neg
.l4c96
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
	jp l4b05
	dec b
	jr l4cb0
	inc b
.l4cb0
	call l4d9d
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l4b05
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
	jp l4d82
	ld a,(hl)
	inc hl
	or a
	jr z,l4cf2
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
.l4cf2
	ld (ix+#29),a
	jp l4b05
	dec hl
	ld a,(hl)
	and #0f
	ld (l4df4),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l4df3),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l4b05
	ld a,(hl)
	or a
	jr z,l4d23
	call l4d9f
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l4b05
.l4d23
	ld hl,#0101
	ld (l4def),hl
	jp l4b05
	call l4d9d
	ld (ix+#1e),a
	jp l4b05
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l4dae
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l4dae
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l4b05
	ld a,(hl)
	inc hl
	ld (l4dee),a
	jp l4b05
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
	jp l4b05
	call l4d9d
	add a
.l4d82
	ld b,#00
	ld c,a
	push hl
	ld hl,l4fe5
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l4b05
.l4d9d
	ld a,(hl)
	inc hl
.l4d9f
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
.l4dae
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l4f65
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l4dca
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
.l4de9
	ret
.l4df1 equ $ + 7
.l4df0 equ $ + 6
.l4def equ $ + 5
.l4dee equ $ + 4
.l4dec equ $ + 2
.l4dea
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4df4 equ $ + 2
.l4df3 equ $ + 1
	db #38,#00,#00
.l4df5
	db #78,#4c,#8b,#4c,#8a,#4c,#af,#4c
	db #ac,#4c,#bf,#4c,#d0,#4c,#f8,#4c
	db #12,#4d,#f8,#4c,#2c,#4d,#35,#4d
	db #57,#4d,#5f,#4d,#7e,#4d
.l4e13
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
.l4ed9 equ $ + 4
.l4ed5
	db #08,#00,#01,#08,#00,#00,#00,#00
.l4ee3 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4ef4 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4f03 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l4f07 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l4f11 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4f22 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4f31 equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l4f35
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4f3f equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4f50 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4f5f equ $ + 2
	db #00,#00,#85,#53,#e2,#53,#3f,#54
.l4f65
	db #05,#50,#45,#50,#65,#50,#00,#00
	db #f6,#08,#f7,#08,#f7,#08,#ff,#ff
	db #05,#50,#85,#50,#65,#50,#1a,#06
	db #a5,#50,#e5,#50,#65,#50,#18,#08
	db #f6,#08,#f7,#08,#f7,#08,#ff,#ff
	db #f6,#08,#f7,#08,#f7,#08,#ff,#ff
	db #05,#51,#45,#51,#65,#50,#1a,#00
	db #f6,#08,#f7,#08,#f7,#08,#ff,#ff
	db #f6,#08,#f7,#08,#f7,#08,#ff,#ff
	db #f6,#08,#f7,#08,#f7,#08,#ff,#ff
	db #65,#51,#a5,#51,#65,#50,#16,#0a
	db #f6,#08,#f7,#08,#f7,#08,#ff,#ff
	db #f6,#08,#f7,#08,#f7,#08,#ff,#ff
	db #05,#50,#c5,#51,#65,#50,#00,#00
	db #e5,#51,#25,#52,#45,#52,#0c,#00
	db #65,#52,#a5,#52,#c5,#52,#00,#00
.l4fe5
	db #e5,#52,#05,#53,#25,#53,#45,#53
	db #65,#53,#f7,#08,#f7,#08,#f6,#08
	db #f6,#08,#f7,#08,#f7,#08,#f6,#08
	db #f6,#08,#f7,#08,#f7,#08,#f6,#08
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
	db #0d,#0d,#0d,#0d,#0e,#0e,#0e,#0e
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0e
	db #0e,#0e,#0e,#0e,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0b,#0c,#0c,#0c,#0b,#0b,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#02,#00
	db #03,#00,#04,#00,#03,#00,#02,#00
	db #0e,#0e,#0e,#0e,#0d,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0c,#0c,#0c,#0c,#0c,#0c,#0d
	db #0d,#0d,#0d,#0d,#0d,#0e,#0e,#0e
	db #0f,#0d,#0b,#0a,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#05,#04,#04
	db #04,#03,#03,#03,#02,#02,#02,#02
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#32,#00,#64,#00,#91,#00
	db #be,#00,#eb,#00,#22,#01,#4a,#01
	db #7c,#01,#a9,#01,#d6,#01,#08,#02
	db #3a,#02,#6c,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0d
	db #0c,#0a,#06,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#00,#00,#00
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
	db #09,#09,#08,#06,#06,#07,#08,#09
	db #0b,#0a,#09,#06,#06,#08,#08,#07
	db #06,#05,#06,#07,#08,#0a,#0a,#09
	db #07,#06,#07,#08,#08,#0a,#09,#09
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#fb,#fb
	db #f8,#f8,#00,#00,#fb,#fb,#f8,#f8
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #00,#00,#fc,#fc,#f9,#f9,#00,#00
	db #fc,#fc,#f9,#f9,#00,#00,#fc,#fc
	db #f9,#f9,#00,#00,#fc,#fc,#f9,#f9
	db #00,#00,#fc,#fc,#f9,#f9,#00,#00
	db #00,#00,#fc,#fc,#f7,#f7,#00,#00
	db #fc,#fc,#f7,#f7,#00,#00,#fc,#fc
	db #f7,#f7,#00,#00,#fc,#fc,#f7,#f7
	db #00,#00,#fc,#fc,#f7,#f7,#00,#00
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#fb,#fb
	db #f8,#f8,#00,#00,#fb,#fb,#f8,#f8
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #00,#00,#fd,#fd,#f9,#f9,#00,#00
	db #fd,#fd,#f9,#f9,#00,#00,#fd,#fd
	db #f9,#f9,#00,#00,#fd,#fd,#f9,#f9
	db #00,#00,#fd,#fd,#f9,#f9,#00,#00
	db #00,#9c,#54,#00,#9c,#54,#00,#9c
	db #54,#00,#f7,#54,#00,#9c,#54,#00
	db #f7,#54,#00,#25,#55,#00,#2e,#55
	db #00,#25,#55,#00,#2e,#55,#00,#25
	db #55,#00,#2e,#55,#00,#25,#55,#00
	db #2e,#55,#00,#39,#55,#00,#42,#55
	db #00,#39,#55,#00,#42,#55,#00,#25
	db #55,#00,#2e,#55,#00,#25,#55,#00
	db #2e,#55,#00,#39,#55,#00,#42,#55
	db #00,#39,#55,#00,#42,#55,#00,#39
	db #55,#00,#42,#55,#00,#39,#55,#00
	db #42,#55,#80,#97,#53,#00,#4b,#55
	db #00,#4b,#55,#00,#4e,#55,#00,#4e
	db #55,#00,#7b,#55,#00,#91,#55,#00
	db #aa,#55,#00,#b9,#55,#00,#aa,#55
	db #00,#cf,#55,#00,#d6,#55,#00,#31
	db #56,#00,#d6,#55,#00,#5f,#56,#00
	db #8d,#56,#00,#ee,#56,#00,#8d,#56
	db #00,#ee,#56,#00,#aa,#55,#00,#b9
	db #55,#00,#aa,#55,#00,#cf,#55,#00
	db #4f,#57,#00,#6f,#57,#00,#4f,#57
	db #00,#7f,#57,#00,#8d,#56,#00,#ee
	db #56,#00,#8d,#56,#00,#ee,#56,#80
	db #f4,#53,#00,#4b,#55,#00,#8f,#57
	db #00,#8f,#57,#00,#98,#57,#00,#a1
	db #57,#00,#f4,#57,#00,#a1,#57,#00
	db #f4,#57,#00,#a1,#57,#00,#f4,#57
	db #00,#a1,#57,#00,#f4,#57,#00,#a1
	db #57,#00,#47,#58,#00,#a1,#57,#00
	db #f4,#57,#00,#a1,#57,#00,#f4,#57
	db #00,#a1,#57,#00,#f4,#57,#00,#a1
	db #57,#00,#f4,#57,#00,#a1,#57,#00
	db #f4,#57,#00,#a1,#57,#00,#98,#58
	db #00,#a1,#57,#00,#f4,#57,#00,#a1
	db #57,#00,#f4,#57,#80,#51,#54,#49
	db #db,#20,#44,#db,#10,#49,#db,#13
	db #4d,#db,#10,#44,#db,#13,#44,#db
	db #10,#4d,#db,#13,#49,#db,#10,#44
	db #db,#13,#44,#db,#10,#49,#db,#13
	db #4d,#db,#10,#44,#db,#13,#44,#db
	db #10,#4d,#db,#13,#4b,#db,#10,#44
	db #db,#13,#4d,#db,#10,#4b,#db,#13
	db #4b,#db,#10,#4d,#db,#13,#49,#db
	db #10,#48,#db,#10,#4d,#db,#15,#48
	db #db,#10,#49,#db,#20,#4b,#db,#10
	db #49,#db,#13,#48,#db,#10,#4b,#db
	db #13,#ff,#46,#db,#30,#46,#db,#33
	db #46,#db,#25,#4e,#db,#20,#4d,#db
	db #10,#4e,#db,#13,#4b,#db,#10,#4d
	db #db,#13,#49,#db,#10,#4b,#db,#10
	db #4d,#db,#15,#49,#db,#13,#4b,#db
	db #23,#49,#db,#15,#4b,#db,#b5,#ff
	db #49,#2f,#00,#10,#48,#2f,#01,#10
	db #ff,#46,#2f,#02,#10,#49,#2f,#80
	db #48,#2f,#82,#ff,#49,#2f,#00,#10
	db #4b,#2f,#04,#10,#ff,#4e,#2f,#03
	db #10,#50,#2f,#03,#10,#ff,#00,#20
	db #ff,#34,#e0,#04,#40,#f0,#02,#34
	db #e0,#02,#34,#e0,#02,#b4,#e0,#b4
	db #e0,#40,#f0,#02,#34,#e0,#02,#34
	db #e0,#04,#40,#f0,#02,#34,#e0,#02
	db #34,#e0,#02,#b4,#e0,#b4,#e0,#40
	db #f0,#02,#34,#e0,#02,#ff,#4d,#30
	db #0a,#4e,#30,#02,#50,#30,#02,#4d
	db #30,#02,#4b,#30,#08,#49,#30,#02
	db #4b,#30,#06,#ff,#46,#30,#08,#4e
	db #30,#02,#4d,#30,#02,#4b,#30,#02
	db #49,#30,#02,#48,#30,#06,#49,#30
	db #06,#4b,#30,#04,#ff,#49,#a0,#0a
	db #4b,#a0,#02,#4d,#a0,#02,#ce,#a0
	db #50,#a0,#11,#ff,#52,#a0,#06,#50
	db #a0,#06,#4e,#a0,#04,#4d,#a0,#02
	db #4e,#a0,#02,#4d,#a0,#02,#4b,#a0
	db #0a,#ff,#55,#a0,#10,#57,#a0,#10
	db #ff,#49,#0b,#20,#44,#0b,#10,#49
	db #0b,#13,#4d,#0b,#10,#44,#0b,#13
	db #44,#0b,#10,#4d,#0b,#13,#49,#0b
	db #10,#44,#0b,#13,#44,#0b,#10,#49
	db #0b,#13,#4d,#0b,#10,#44,#0b,#13
	db #44,#0b,#10,#4d,#0b,#13,#4b,#0b
	db #10,#44,#0b,#13,#4d,#0b,#10,#4b
	db #0b,#13,#4b,#0b,#10,#4d,#0b,#13
	db #49,#0b,#10,#48,#0b,#10,#4d,#0b
	db #15,#48,#0b,#10,#49,#0b,#20,#4b
	db #0b,#10,#49,#0b,#13,#48,#0b,#10
	db #4b,#0b,#13,#ff,#46,#0b,#30,#46
	db #0b,#33,#46,#0b,#25,#4e,#0b,#20
	db #4d,#0b,#10,#4e,#0b,#13,#4b,#0b
	db #10,#4d,#0b,#13,#49,#0b,#10,#4b
	db #0b,#10,#4d,#0b,#15,#49,#0b,#13
	db #4b,#0b,#23,#49,#0b,#15,#4b,#0b
	db #b5,#ff,#46,#0b,#30,#46,#0b,#33
	db #46,#0b,#25,#4e,#0b,#20,#4d,#0b
	db #10,#4e,#0b,#13,#4b,#0b,#10,#4d
	db #0b,#13,#49,#0b,#10,#50,#0b,#10
	db #4d,#0b,#15,#49,#0b,#13,#50,#0b
	db #23,#49,#0b,#15,#50,#0b,#b5,#ff
	db #49,#0b,#10,#4b,#0b,#13,#4d,#0b
	db #10,#49,#0b,#13,#50,#0b,#10,#4d
	db #0b,#13,#4d,#0b,#10,#50,#0b,#13
	db #49,#0b,#10,#4d,#0b,#13,#4d,#0b
	db #10,#49,#0b,#13,#50,#0b,#10,#4d
	db #0b,#13,#4d,#0b,#10,#50,#0b,#13
	db #44,#0b,#10,#4d,#0b,#13,#48,#0b
	db #10,#44,#0b,#13,#4b,#0b,#10,#48
	db #0b,#13,#48,#0b,#10,#4b,#0b,#13
	db #4b,#0b,#10,#48,#0b,#13,#4d,#0b
	db #10,#4b,#0b,#13,#4b,#0b,#10,#4d
	db #0b,#13,#48,#0b,#10,#4b,#0b,#13
	db #ff,#46,#0b,#10,#48,#0b,#13,#49
	db #0b,#10,#46,#0b,#13,#4e,#0b,#10
	db #49,#0b,#13,#49,#0b,#10,#4e,#0b
	db #13,#46,#0b,#10,#49,#0b,#13,#49
	db #0b,#10,#46,#0b,#13,#4e,#0b,#10
	db #49,#0b,#13,#49,#0b,#10,#4e,#0b
	db #13,#4b,#0b,#10,#49,#0b,#13,#49
	db #0b,#10,#4b,#0b,#13,#48,#0b,#10
	db #49,#0b,#13,#49,#0b,#10,#48,#0b
	db #13,#4b,#0b,#10,#49,#0b,#13,#49
	db #0b,#10,#4b,#0b,#13,#48,#0b,#10
	db #49,#0b,#13,#4b,#0b,#10,#48,#0b
	db #13,#ff,#4d,#60,#04,#4d,#60,#04
	db #4d,#60,#02,#ce,#60,#4d,#60,#03
	db #49,#60,#02,#4b,#60,#08,#49,#60
	db #02,#48,#60,#02,#c6,#60,#48,#60
	db #03,#ff,#46,#60,#06,#48,#60,#06
	db #49,#60,#04,#4d,#60,#06,#4b,#60
	db #0a,#ff,#46,#60,#06,#48,#60,#06
	db #49,#60,#04,#52,#60,#06,#50,#60
	db #0a,#ff,#31,#08,#12,#10,#2c,#08
	db #18,#10,#ff,#2a,#08,#1b,#10,#2c
	db #08,#18,#10,#ff,#34,#e1,#10,#31
	db #08,#12,#03,#40,#f1,#10,#b1,#08
	db #12,#34,#e1,#10,#b1,#08,#12,#34
	db #e1,#10,#b1,#08,#12,#34,#e1,#10
	db #b4,#e0,#c0,#f0,#b1,#08,#12,#34
	db #e1,#10,#b1,#08,#12,#34,#e1,#10
	db #2c,#08,#18,#03,#40,#f1,#10,#ac
	db #08,#18,#34,#e1,#10,#ac,#08,#18
	db #34,#e1,#10,#ac,#08,#18,#34,#e1
	db #10,#b4,#e0,#c0,#f0,#ac,#08,#18
	db #34,#e1,#10,#ac,#08,#18,#ff,#34
	db #e1,#10,#2a,#08,#1b,#03,#40,#f1
	db #10,#aa,#08,#1b,#34,#e1,#10,#aa
	db #08,#1b,#34,#e1,#10,#aa,#08,#1b
	db #34,#e1,#10,#b4,#e0,#c0,#f0,#aa
	db #08,#1b,#34,#e1,#10,#aa,#08,#1b
	db #34,#e1,#10,#2c,#08,#18,#03,#40
	db #f1,#10,#ac,#08,#18,#34,#e1,#10
	db #ac,#08,#18,#34,#e1,#10,#ac,#08
	db #18,#34,#e1,#10,#b4,#e0,#c0,#f0
	db #ac,#08,#18,#34,#e1,#10,#ac,#08
	db #18,#ff,#34,#e1,#10,#2a,#08,#1b
	db #03,#40,#f1,#10,#aa,#08,#1b,#34
	db #e1,#10,#aa,#08,#1b,#34,#e1,#10
	db #aa,#08,#1b,#34,#e1,#10,#b4,#e0
	db #c0,#f0,#aa,#08,#1b,#34,#e1,#10
	db #aa,#08,#1b,#34,#e1,#10,#2c,#08
	db #18,#03,#40,#f1,#10,#ac,#08,#18
	db #3b,#e1,#10,#bb,#e0,#b8,#e0,#b8
	db #e0,#ac,#08,#18,#36,#e1,#10,#b6
	db #e0,#ac,#08,#18,#34,#e1,#10,#ac
	db #08,#18,#ff
;
.music_info
	db "Odyssey - Intro (1994)(TAF Production)()",0
	db "ST-128 Module",0

	read "music_end.asm"
