; Music of Digital Press Issue 1 - Menu (1994)(HJT)()(ST-128 Module)
; Ripped by Megachur the 26/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DIGIPI1M.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #2a50

	read "music_header.asm"

	jp l2a59
	jp l2aed
	jp l2ad1
;
.init_music
.l2a59
;
	xor a
	ld hl,l3004
	call l2aca
	ld hl,l3032
	call l2aca
	ld hl,l3060
	call l2aca
	ld ix,l3000
	ld iy,l308a
	ld de,#002e
	ld b,#03
.l2a79
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
	djnz l2a79
	ld hl,l2f19
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
	ld (l2f15),hl
	ld (l2f17),hl
	ld a,#0c
	ld c,d
	call l2ef5
	ld a,#0d
	ld c,d
	jp l2ef5
.l2aca
	ld b,#2a
.l2acc
	ld (hl),a
	inc hl
	djnz l2acc
	ret
;
.stop_music
.l2ad1
;
	ld a,#07
	ld c,#3f
	call l2ef5
	ld a,#08
	ld c,#00
	call l2ef5
	ld a,#09
	ld c,#00
	call l2ef5
	ld a,#0a
	ld c,#00
	jp l2ef5
;
.play_music
.l2aed
;
	ld hl,l2f1b
	dec (hl)
	ld ix,l3000
	ld bc,l300e
	call l2b8f
	ld ix,l302e
	ld bc,l303c
	call l2b8f
	ld ix,l305c
	ld bc,l306a
	call l2b8f
	ld hl,l2f14
	ld de,l2f1b
	ld b,#06
	call l2b6c
	ld b,#07
	call l2b6c
	ld b,#0b
	call l2b6c
	ld b,#0d
	call l2b6c
	ld de,l2f1b
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l301f
	call l2b45
	ld hl,l304d
	call l2b45
	ld hl,l307b
.l2b45
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
	jr nz,l2b5a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l2b5a
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
.l2b6c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l2ef5
.l2b77
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l2ef5
.l2b8f
	ld a,(l2f1b)
	or a
	jp nz,l2c47
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l2c47
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l2b77
	or a
	jp z,l2c3c
	ld r,a
	and #7f
	cp #10
	jr c,l2c17
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l2d8f
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
	jr z,l2bf0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l2bf0
	rrca
	ld c,a
	ld hl,l3090
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
	jr z,l2c0f
	ld (ix+#1e),b
.l2c0f
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l2c30
.l2c17
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l2f20
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
.l2c30
	ld a,d
	or a
	jr nz,l2c3e
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l2c3e
.l2c3c
	ld a,(hl)
	inc hl
.l2c3e
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l2c47
	ld a,(ix+#17)
	or a
	jr nz,l2c5d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l2c5d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l2c73
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l2c73
	ld a,(ix+#0d)
	or a
	jr z,l2c81
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l2c9f
.l2c81
	ld a,(ix+#1a)
	or a
	jp z,l2ca6
	ld c,a
	cp #03
	jr nz,l2c8e
	xor a
.l2c8e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l2c9f
	ld a,(ix+#18)
	dec c
	jr z,l2c9f
	ld a,(ix+#19)
.l2c9f
	add (ix+#07)
	ld b,d
	call l2d8f
.l2ca6
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l2cce
	dec (ix+#1b)
	jr nz,l2cce
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l2d06
.l2cce
	ld a,(ix+#29)
	or a
	jr z,l2d06
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l2cfd
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l2cf4
	ld (ix+#29),#ff
	jr l2cfd
.l2cf4
	cp (ix+#2b)
	jr nz,l2cfd
	ld (ix+#29),#01
.l2cfd
	ld b,d
	or a
	jp p,l2d03
	dec b
.l2d03
	ld c,a
	jr l2d11
.l2d06
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l2d11
	pop hl
	bit 7,(ix+#14)
	jr z,l2d1a
	ld h,d
	ld l,d
.l2d1a
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l2ef5
	ld c,h
	ld a,(ix+#02)
	call l2ef5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l2d6d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l2d5c
	dec (ix+#09)
	jr nz,l2d5c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l2d54
	xor a
	jr l2d59
.l2d54
	cp #10
	jr nz,l2d59
	dec a
.l2d59
	ld (ix+#1e),a
.l2d5c
	ld a,b
	sub (ix+#1e)
	jr nc,l2d63
	xor a
.l2d63
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l2ef5
.l2d6d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l2f1c)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l2d8b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l2d8b
	ld (l2f1c),hl
	ret
.l2d8f
	ld hl,l2f3e
	cp #61
	jr nc,l2d99
	add a
	ld c,a
	add hl,bc
.l2d99
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l2da3
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l2ec8
	ld (ix+#1e),a
	jp l2c30
.l2db5
	dec b
.l2db6
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l2dc1
	neg
.l2dc1
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
	jp l2c30
.l2dd7
	dec b
	jr l2ddb
.l2dda
	inc b
.l2ddb
	call l2ec8
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l2c30
.l2dea
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
	jp l2ead
.l2dfb
	ld a,(hl)
	inc hl
	or a
	jr z,l2e1d
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
.l2e1d
	ld (ix+#29),a
	jp l2c30
.l2e23
	dec hl
	ld a,(hl)
	and #0f
	ld (l2f1f),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l2f1e),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l2c30
.l2e3d
	ld a,(hl)
	or a
	jr z,l2e4e
	call l2eca
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l2c30
.l2e4e
	ld hl,#0101
	ld (l2f1a),hl
	jp l2c30
.l2e57
	call l2ec8
	ld (ix+#1e),a
	jp l2c30
.l2e60
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l2ed9
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l2ed9
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l2c30
.l2e82
	ld a,(hl)
	inc hl
	ld (l2f19),a
	jp l2c30
.l2e8a
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
	jp l2c30
.l2ea9
	call l2ec8
	add a
.l2ead
	ld b,#00
	ld c,a
	push hl
	ld hl,l3110
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l2c30
.l2ec8
	ld a,(hl)
	inc hl
.l2eca
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
.l2ed9
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l3090
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l2ef5
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
.l2f14
	ret
.l2f1c equ $ + 7
.l2f1b equ $ + 6
.l2f1a equ $ + 5
.l2f19 equ $ + 4
.l2f17 equ $ + 2
.l2f15
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2f1f equ $ + 2
.l2f1e equ $ + 1
	db #38,#00,#00
.l2f20
	dw l2da3,l2db6,l2db5,l2dda
	dw l2dd7,l2dea,l2dfb,l2e23
	dw l2e3d,l2e23,l2e57,l2e60
	dw l2e82,l2e8a,l2ea9
.l2f3e
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
.l3004 equ $ + 4
.l3000
	db #08,#00,#01,#08,#00,#00,#00,#00
.l300e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l301f equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l302e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l3032 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l303c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l304d equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l305c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l3060
	db #00,#00,#00,#00,#00,#00,#00,#00
.l306a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l307b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l308a equ $ + 2
	db #00,#00,#90,#34,#a5,#34,#ba,#34
.l3090
	db #30,#31,#70,#31,#90,#31,#00,#00
	db #b0,#31,#f0,#31,#10,#32,#00,#00
	db #30,#32,#70,#32,#90,#32,#00,#00
	db #b0,#32,#f0,#32,#10,#33,#00,#00
	db #30,#33,#70,#33,#90,#33,#00,#00
	db #22,#ea,#f3,#be,#f4,#be,#d2,#d4
	db #21,#ea,#f3,#be,#f4,#be,#d2,#d4
	db #21,#ea,#f3,#be,#f4,#be,#d2,#d4
	db #b0,#33,#f0,#33,#90,#33,#00,#00
	db #10,#34,#50,#34,#70,#34,#00,#00
	db #21,#ea,#62,#0a,#82,#0a,#80,#20
	db #c2,#0a,#f3,#be,#f4,#be,#d2,#d4
	db #f3,#be,#f3,#be,#f3,#be,#d1,#d4
	db #f4,#be,#f4,#be,#f3,#be,#d1,#d4
	db #f4,#be,#a2,#ea,#22,#eb,#80,#01
	db #22,#ec,#a2,#ec,#22,#ed,#00,#04
.l3110
	db #22,#ea,#22,#ea,#22,#ea,#22,#ea
	db #22,#ea,#22,#ea,#22,#ea,#22,#ea
	db #22,#ea,#22,#ea,#22,#ea,#22,#ea
	db #22,#ea,#22,#ea,#22,#ea,#22,#ea
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0a,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#80,#00,#00,#00,#00,#00
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
	db #0f,#0f,#0e,#0d,#0c,#0c,#0b,#0a
	db #09,#09,#08,#08,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #04,#06,#07,#09,#0c,#11,#17,#1d
	db #15,#10,#0c,#09,#06,#05,#04,#04
	db #03,#03,#03,#02,#02,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#80,#00,#00,#01,#80,#01
	db #00,#02,#80,#02,#00,#03,#00,#04
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0b,#09,#07,#04,#01
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#0a,#09,#0e,#05,#0a,#07,#03
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#0c,#00,#0c,#00,#00,#00
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#09,#05,#01,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#01,#00,#00,#00,#00,#80,#00
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
	db #0e,#0c,#0a,#07,#05,#03,#0b,#0a
	db #09,#08,#07,#06,#05,#03,#04,#05
	db #06,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #00,#80,#00,#00,#00,#00,#00,#00
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
	db #0f,#0e,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#86,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#fe,#ff,#00,#00,#02,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #0c,#0c,#0c,#0d,#0d,#0c,#0c,#0b
	db #0b,#0c,#0c,#0d,#0d,#0c,#0c,#0b
	db #0b,#0c,#0c,#0d,#0d,#0c,#0c,#0b
	db #0b,#0c,#0c,#0d,#0d,#0c,#0c,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#cf,#34,#00,#9b,#35,#00,#cf
	db #34,#00,#cf,#34,#00,#36,#35,#00
	db #9b,#35,#80,#90,#34,#00,#12,#36
	db #00,#12,#36,#00,#12,#36,#00,#12
	db #36,#00,#12,#36,#00,#12,#36,#80
	db #a5,#34,#00,#6a,#36,#00,#aa,#37
	db #00,#6d,#36,#00,#ee,#36,#00,#6f
	db #37,#00,#aa,#37,#80,#ba,#34,#28
	db #00,#04,#40,#10,#04,#a8,#00,#40
	db #20,#02,#a8,#00,#40,#10,#02,#b4
	db #20,#b4,#20,#1c,#00,#04,#40,#10
	db #04,#a8,#00,#40,#10,#02,#a8,#00
	db #40,#20,#02,#c0,#20,#c0,#10,#28
	db #00,#02,#b4,#30,#b6,#30,#c0,#10
	db #36,#30,#02,#b6,#30,#a8,#00,#c0
	db #20,#b4,#30,#a8,#00,#c0,#10,#b6
	db #30,#b4,#20,#b4,#20,#9c,#00,#b6
	db #30,#b4,#30,#b6,#30,#c0,#10,#b6
	db #30,#b4,#30,#b6,#30,#a8,#00,#c0
	db #10,#b6,#30,#a8,#00,#c0,#20,#b4
	db #30,#c0,#20,#c0,#10,#ff,#28,#00
	db #04,#40,#10,#04,#a8,#00,#40,#20
	db #02,#a8,#00,#40,#10,#02,#b4,#20
	db #34,#20,#05,#40,#10,#04,#a8,#00
	db #40,#10,#02,#a8,#00,#40,#20,#02
	db #c0,#20,#c0,#10,#28,#00,#02,#b4
	db #30,#b6,#30,#c0,#10,#36,#30,#02
	db #b6,#30,#a8,#00,#c0,#20,#b4,#30
	db #a8,#00,#c0,#10,#b6,#30,#b4,#20
	db #b4,#20,#9c,#00,#b6,#30,#b4,#30
	db #b6,#30,#c0,#10,#b6,#30,#b4,#30
	db #b6,#30,#a8,#00,#c0,#10,#b6,#30
	db #a8,#00,#c0,#20,#b4,#30,#c0,#20
	db #c0,#10,#ff,#28,#00,#02,#b6,#30
	db #b6,#30,#40,#10,#02,#b6,#30,#b6
	db #30,#a8,#00,#40,#20,#02,#a8,#00
	db #c0,#10,#b6,#30,#b4,#20,#34,#20
	db #03,#b6,#30,#b6,#30,#40,#10,#02
	db #b6,#30,#b6,#30,#a8,#00,#c0,#10
	db #b6,#30,#a8,#00,#40,#20,#02,#c0
	db #20,#c0,#10,#28,#00,#02,#b4,#30
	db #b6,#30,#c0,#10,#36,#30,#02,#b6
	db #30,#a8,#00,#c0,#20,#b4,#30,#a8
	db #00,#c0,#10,#b6,#30,#b4,#20,#b4
	db #20,#9c,#00,#b6,#30,#b4,#30,#b6
	db #30,#c0,#10,#b6,#30,#b4,#30,#b6
	db #30,#a8,#00,#c0,#10,#b6,#30,#a8
	db #00,#c0,#20,#b4,#30,#c0,#20,#c0
	db #10,#ff,#25,#88,#24,#04,#fe,#05
	db #25,#80,#02,#fe,#01,#25,#80,#02
	db #fe,#02,#23,#88,#10,#04,#fe,#05
	db #2f,#80,#02,#fe,#01,#23,#80,#02
	db #af,#80,#fe,#01,#2d,#88,#12,#03
	db #fe,#01,#2d,#80,#04,#fe,#01,#2d
	db #80,#02,#fe,#02,#21,#80,#02,#ad
	db #80,#2c,#88,#13,#02,#25,#88,#12
	db #02,#27,#88,#10,#02,#2a,#88,#12
	db #02,#2c,#88,#10,#02,#2a,#88,#12
	db #02,#27,#88,#10,#02,#25,#88,#12
	db #02,#ff,#fe,#40,#ff,#c7,#90,#c4
	db #90,#c2,#90,#c0,#90,#c7,#90,#c4
	db #90,#c2,#90,#c0,#90,#c7,#90,#c4
	db #90,#c2,#90,#c0,#90,#c7,#90,#c4
	db #90,#c2,#90,#c0,#90,#c7,#90,#c4
	db #90,#c2,#90,#c0,#90,#c7,#90,#c4
	db #90,#c2,#90,#c0,#90,#c7,#90,#c4
	db #90,#c2,#90,#c0,#90,#c7,#90,#c4
	db #90,#c2,#90,#c0,#90,#cc,#90,#c9
	db #90,#c7,#90,#c9,#90,#cc,#90,#c9
	db #90,#c7,#90,#c9,#90,#cc,#90,#c9
	db #90,#c7,#90,#c9,#90,#cc,#90,#c9
	db #90,#cc,#90,#ce,#90,#d0,#90,#d1
	db #90,#d0,#90,#d1,#90,#d0,#90,#d1
	db #90,#d0,#90,#cf,#90,#d0,#90,#ce
	db #90,#cc,#90,#c4,#90,#c7,#90,#c4
	db #90,#c7,#90,#c8,#90,#ff,#d0,#90
	db #c9,#90,#ca,#90,#cb,#90,#d0,#90
	db #c9,#90,#ca,#90,#cb,#90,#d5,#90
	db #ce,#90,#cf,#90,#d0,#90,#d5,#90
	db #ce,#90,#cf,#90,#d0,#90,#da,#90
	db #d3,#90,#d4,#90,#d5,#90,#da,#90
	db #d3,#90,#d4,#90,#d5,#90,#d3,#90
	db #ce,#90,#cc,#90,#d3,#90,#ce,#90
	db #cc,#90,#d3,#90,#ce,#90,#cc,#90
	db #d3,#90,#ce,#90,#cc,#90,#d3,#90
	db #ce,#90,#cc,#90,#d3,#90,#ce,#90
	db #cc,#90,#d3,#90,#ce,#90,#cc,#90
	db #d3,#90,#ce,#90,#cc,#90,#d5,#90
	db #d0,#90,#d5,#90,#cf,#90,#d5,#90
	db #ce,#90,#d0,#90,#cc,#90,#d0,#90
	db #c9,#90,#cc,#90,#c9,#90,#c7,#90
	db #c4,#90,#c7,#90,#c8,#90,#ff,#49
	db #90,#08,#55,#90,#04,#49,#90,#04
	db #4b,#90,#08,#4c,#90,#04,#4b,#90
	db #02,#47,#90,#02,#49,#90,#08,#55
	db #90,#04,#49,#90,#04,#4b,#90,#02
	db #4c,#90,#02,#4b,#90,#02,#49,#90
	db #02,#c4,#90,#c7,#90,#c4,#90,#c0
	db #90,#cb,#90,#c9,#90,#c4,#90,#c7
	db #90,#ff,#b1,#40,#ac,#40,#a8,#40
	db #ac,#40,#b1,#40,#ac,#40,#a8,#40
	db #ac,#40,#b1,#40,#ac,#40,#a8,#40
	db #ac,#40,#b1,#40,#ac,#40,#a8,#40
	db #ac,#40,#af,#40,#aa,#40,#b3,#40
	db #aa,#40,#af,#40,#aa,#40,#b3,#40
	db #af,#40,#ad,#40,#a8,#40,#ac,#40
	db #ad,#40,#af,#40,#ad,#40,#ac,#40
	db #ad,#40,#af,#40,#ad,#40,#af,#40
	db #b1,#40,#b3,#40,#b1,#40,#b3,#40
	db #b4,#40,#b6,#40,#b4,#40,#b6,#40
	db #b8,#40,#b9,#40,#bb,#40,#b9,#40
	db #bb,#40,#bd,#40,#bf,#40,#bd,#40
	db #bf,#40,#c0,#40,#bf,#40,#bd,#40
	db #bb,#40,#bf,#40,#c0,#40,#bf,#40
	db #bd,#40,#b8,#40,#b6,#40,#b4,#40
	db #b6,#40,#ff
;
.music_info
	db "Digital Press Issue 1 - Menu (1994)(HJT)()",0
	db "ST-128 Module",0

	read "music_end.asm"
