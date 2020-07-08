; Music of AFC Disk No 5 - Menu (1999)(AFC)(Eliot)(ST-128 Module)
; Ripped by Megachur the 30/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AFCDIN5M.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4a51

	read "music_header.asm"

	jp l4a5a
	jp l4aee
	jp l4ad2
;
.init_music
.l4a5a
;
	xor a
	ld hl,l5005
	call l4acb
	ld hl,l5033
	call l4acb
	ld hl,l5061
	call l4acb
	ld ix,l5001
	ld iy,l508b
	ld de,#002e
	ld b,#03
.l4a7a
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
	djnz l4a7a
	ld hl,l4f1a
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
	ld (l4f16),hl
	ld (l4f18),hl
	ld a,#0c
	ld c,d
	call l4ef6
	ld a,#0d
	ld c,d
	jp l4ef6
.l4acb
	ld b,#2a
.l4acd
	ld (hl),a
	inc hl
	djnz l4acd
	ret
;
.stop_music
.l4ad2
;
	ld a,#07
	ld c,#3f
	call l4ef6
	ld a,#08
	ld c,#00
	call l4ef6
	ld a,#09
	ld c,#00
	call l4ef6
	ld a,#0a
	ld c,#00
	jp l4ef6
;
.play_music
.l4aee
;
	ld hl,l4f1c
	dec (hl)
	ld ix,l5001
	ld bc,l500f
	call l4b90
	ld ix,l502f
	ld bc,l503d
	call l4b90
	ld ix,l505d
	ld bc,l506b
	call l4b90
	ld hl,l4f15
	ld de,l4f1c
	ld b,#06
	call l4b6d
	ld b,#07
	call l4b6d
	ld b,#0b
	call l4b6d
	ld b,#0d
	call l4b6d
	ld de,l4f1c
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l5020
	call l4b46
	ld hl,l504e
	call l4b46
	ld hl,l507c
.l4b46
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
	jr nz,l4b5b
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l4b5b
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
.l4b6d
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l4ef6
.l4b78
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l4ef6
.l4b90
	ld a,(l4f1c)
	or a
	jp nz,l4c48
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l4c48
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4b78
	or a
	jp z,l4c3d
	ld r,a
	and #7f
	cp #10
	jr c,l4c18
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l4d90
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
	jr z,l4bf1
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l4bf1
	rrca
	ld c,a
	ld hl,l5091
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
	jr z,l4c10
	ld (ix+#1e),b
.l4c10
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l4c31
.l4c18
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l4f21
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
.l4c31
	ld a,d
	or a
	jr nz,l4c3f
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l4c3f
.l4c3d
	ld a,(hl)
	inc hl
.l4c3f
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l4c48
	ld a,(ix+#17)
	or a
	jr nz,l4c5e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l4c5e
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4c74
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4c74
	ld a,(ix+#0d)
	or a
	jr z,l4c82
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l4ca0
.l4c82
	ld a,(ix+#1a)
	or a
	jp z,l4ca7
	ld c,a
	cp #03
	jr nz,l4c8f
	xor a
.l4c8f
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l4ca0
	ld a,(ix+#18)
	dec c
	jr z,l4ca0
	ld a,(ix+#19)
.l4ca0
	add (ix+#07)
	ld b,d
	call l4d90
.l4ca7
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l4ccf
	dec (ix+#1b)
	jr nz,l4ccf
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l4d07
.l4ccf
	ld a,(ix+#29)
	or a
	jr z,l4d07
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l4cfe
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l4cf5
	ld (ix+#29),#ff
	jr l4cfe
.l4cf5
	cp (ix+#2b)
	jr nz,l4cfe
	ld (ix+#29),#01
.l4cfe
	ld b,d
	or a
	jp p,l4d04
	dec b
.l4d04
	ld c,a
	jr l4d12
.l4d07
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l4d12
	pop hl
	bit 7,(ix+#14)
	jr z,l4d1b
	ld h,d
	ld l,d
.l4d1b
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l4ef6
	ld c,h
	ld a,(ix+#02)
	call l4ef6
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4d6e
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l4d5d
	dec (ix+#09)
	jr nz,l4d5d
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4d55
	xor a
	jr l4d5a
.l4d55
	cp #10
	jr nz,l4d5a
	dec a
.l4d5a
	ld (ix+#1e),a
.l4d5d
	ld a,b
	sub (ix+#1e)
	jr nc,l4d64
	xor a
.l4d64
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l4ef6
.l4d6e
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l4f1d)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l4d8c
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l4d8c
	ld (l4f1d),hl
	ret
.l4d90
	ld hl,l4f3f
	cp #61
	jr nc,l4d9a
	add a
	ld c,a
	add hl,bc
.l4d9a
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l4da4
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l4ec9
	ld (ix+#1e),a
	jp l4c31
.l4db6
	dec b
.l4db7
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l4dc2
	neg
.l4dc2
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
	jp l4c31
.l4dd8
	dec b
	jr l4ddc
.l4ddb
	inc b
.l4ddc
	call l4ec9
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l4c31
.l4deb
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
	jp l4eae
.l4dfc
	ld a,(hl)
	inc hl
	or a
	jr z,l4e1e
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
.l4e1e
	ld (ix+#29),a
	jp l4c31
.l4e24
	dec hl
	ld a,(hl)
	and #0f
	ld (l4f20),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l4f1f),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l4c31
.l4e3e
	ld a,(hl)
	or a
	jr z,l4e4f
	call l4ecb
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l4c31
.l4e4f
	ld hl,#0101
	ld (l4f1b),hl
	jp l4c31
.l4e58
	call l4ec9
	ld (ix+#1e),a
	jp l4c31
.l4e61
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l4eda
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l4eda
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l4c31
.l4e83
	ld a,(hl)
	inc hl
	ld (l4f1a),a
	jp l4c31
.l4e8b
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
	jp l4c31
.l4eaa
	call l4ec9
	add a
.l4eae
	ld b,#00
	ld c,a
	push hl
	ld hl,l5111
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l4c31
.l4ec9
	ld a,(hl)
	inc hl
.l4ecb
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
.l4eda
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l5091
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l4ef6
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
.l4f15
	ret
.l4f1d equ $ + 7
.l4f1c equ $ + 6
.l4f1b equ $ + 5
.l4f1a equ $ + 4
.l4f18 equ $ + 2
.l4f16
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4f20 equ $ + 2
.l4f1f equ $ + 1
	db #38,#00,#00
.l4f21
	dw l4da4,l4db7,l4db6,l4ddb
	dw l4dd8,l4deb,l4dfc,l4e24
	dw l4e3e,l4e24,l4e58,l4e61
	dw l4e83,l4e8b,l4eaa
.l4f3f
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
.l5005 equ $ + 4
.l5001
	db #08,#00,#01,#08,#00,#00,#00,#00
.l500f equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5020 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l502f equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l5033 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l503d equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l504e equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l505d equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l5061
	db #00,#00,#00,#00,#00,#00,#00,#00
.l506b equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l507c equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l508b equ $ + 2
	db #00,#00,#51,#53,#a5,#53,#f9,#53
.l5091
	db #22,#0a,#23,#0a,#23,#0a,#ff,#ff
	db #31,#51,#71,#51,#91,#51,#00,#00
	db #22,#0a,#23,#0a,#23,#0a,#ff,#ff
	db #22,#0a,#23,#0a,#23,#0a,#ff,#ff
	db #22,#0a,#23,#0a,#23,#0a,#ff,#ff
	db #22,#0a,#23,#0a,#23,#0a,#ff,#ff
	db #22,#0a,#23,#0a,#23,#0a,#ff,#ff
	db #b1,#51,#f1,#51,#11,#52,#00,#00
	db #31,#52,#71,#52,#11,#52,#00,#00
	db #22,#0a,#23,#0a,#23,#0a,#ff,#ff
	db #91,#52,#d1,#52,#11,#52,#00,#00
	db #22,#0a,#23,#0a,#23,#0a,#ff,#ff
	db #b1,#51,#f1,#52,#11,#53,#5a,#06
	db #22,#0a,#23,#0a,#23,#0a,#ff,#ff
	db #22,#0a,#23,#0a,#23,#0a,#ff,#ff
	db #22,#0a,#23,#0a,#23,#0a,#ff,#ff
.l5111
	db #31,#53,#23,#0a,#23,#0a,#22,#0a
	db #22,#0a,#23,#0a,#23,#0a,#22,#0a
	db #22,#0a,#23,#0a,#23,#0a,#22,#0a
	db #22,#0a,#23,#0a,#23,#0a,#22,#0a
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0c,#0b,#0b,#0a,#09
	db #08,#08,#07,#07,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#02,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#02,#03,#04,#03,#02,#01
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0e,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#09,#09,#08
	db #08,#08,#07,#07,#07,#06,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#04,#00,#02,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0e,#0e,#0d,#0d,#0d,#0c
	db #0c,#0b,#0a,#09,#07,#86,#82,#82
	db #82,#82,#82,#82,#82,#82,#82,#82
	db #82,#82,#82,#82,#82,#82,#82,#82
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#06,#06,#05,#04,#02,#00
	db #08,#08,#09,#09,#0a,#0a,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#4d,#54,#00,#ae,#54,#00,#0f
	db #55,#00,#70,#55,#00,#4d,#54,#00
	db #ae,#54,#00,#0f,#55,#00,#70,#55
	db #00,#d1,#55,#00,#32,#56,#00,#d1
	db #55,#00,#32,#56,#00,#4d,#54,#00
	db #ae,#54,#00,#0f,#55,#00,#70,#55
	db #00,#4d,#54,#00,#ae,#54,#00,#0f
	db #55,#00,#70,#55,#00,#d1,#55,#00
	db #32,#56,#00,#d1,#55,#00,#32,#56
	db #00,#93,#56,#00,#93,#56,#00,#ae
	db #54,#80,#51,#53,#00,#f4,#56,#00
	db #21,#57,#00,#42,#57,#00,#6b,#57
	db #00,#f4,#56,#00,#21,#57,#00,#42
	db #57,#00,#6b,#57,#00,#96,#57,#00
	db #bb,#57,#00,#f2,#57,#00,#23,#58
	db #00,#f4,#56,#00,#21,#57,#00,#42
	db #57,#00,#6b,#57,#00,#f4,#56,#00
	db #21,#57,#00,#42,#57,#00,#6b,#57
	db #00,#96,#57,#00,#bb,#57,#00,#f2
	db #57,#00,#23,#58,#00,#aa,#58,#00
	db #60,#58,#00,#9d,#58,#80,#a5,#53
	db #00,#e7,#58,#00,#f2,#58,#00,#00
	db #59,#00,#0e,#59,#00,#e7,#58,#00
	db #f2,#58,#00,#00,#59,#00,#0e,#59
	db #00,#1c,#59,#00,#33,#59,#00,#1c
	db #59,#00,#33,#59,#00,#e7,#58,#00
	db #f2,#58,#00,#00,#59,#00,#0e,#59
	db #00,#e7,#58,#00,#f2,#58,#00,#00
	db #59,#00,#0e,#59,#00,#1c,#59,#00
	db #33,#59,#00,#1c,#59,#00,#33,#59
	db #00,#47,#59,#00,#47,#59,#00,#5a
	db #59,#80,#f9,#53,#28,#80,#02,#28
	db #80,#02,#39,#10,#02,#28,#80,#02
	db #28,#80,#02,#28,#80,#02,#39,#10
	db #02,#28,#80,#02,#28,#80,#02,#28
	db #80,#02,#39,#10,#02,#28,#80,#02
	db #28,#80,#02,#28,#80,#02,#39,#10
	db #02,#28,#80,#02,#28,#80,#02,#28
	db #80,#02,#39,#10,#02,#28,#80,#02
	db #28,#80,#02,#28,#80,#02,#39,#10
	db #02,#28,#80,#02,#28,#80,#02,#28
	db #80,#02,#39,#10,#02,#28,#80,#02
	db #28,#80,#02,#28,#80,#02,#39,#10
	db #02,#28,#80,#02,#ff,#32,#80,#02
	db #32,#80,#02,#39,#10,#02,#32,#80
	db #02,#32,#80,#02,#32,#80,#02,#39
	db #10,#02,#32,#80,#02,#32,#80,#02
	db #32,#80,#02,#39,#10,#02,#32,#80
	db #02,#32,#80,#02,#32,#80,#02,#39
	db #10,#02,#32,#80,#02,#32,#80,#02
	db #32,#80,#02,#39,#10,#02,#32,#80
	db #02,#32,#80,#02,#32,#80,#02,#39
	db #10,#02,#32,#80,#02,#32,#80,#02
	db #32,#80,#02,#39,#10,#02,#32,#80
	db #02,#32,#80,#02,#32,#80,#02,#39
	db #10,#02,#32,#80,#02,#ff,#30,#80
	db #02,#30,#80,#02,#39,#10,#02,#30
	db #80,#02,#30,#80,#02,#30,#80,#02
	db #39,#10,#02,#30,#80,#02,#30,#80
	db #02,#30,#80,#02,#39,#10,#02,#30
	db #80,#02,#30,#80,#02,#30,#80,#02
	db #39,#10,#02,#30,#80,#02,#30,#80
	db #02,#30,#80,#02,#39,#10,#02,#30
	db #80,#02,#30,#80,#02,#30,#80,#02
	db #39,#10,#02,#30,#80,#02,#30,#80
	db #02,#30,#80,#02,#39,#10,#02,#30
	db #80,#02,#30,#80,#02,#30,#80,#02
	db #39,#10,#02,#30,#80,#02,#ff,#2f
	db #80,#02,#2f,#80,#02,#39,#10,#02
	db #2f,#80,#02,#2f,#80,#02,#2f,#80
	db #02,#39,#10,#02,#2f,#80,#02,#2f
	db #80,#02,#2f,#80,#02,#39,#10,#02
	db #2f,#80,#02,#2f,#80,#02,#2f,#80
	db #02,#39,#10,#02,#2f,#80,#02,#2f
	db #80,#02,#2f,#80,#02,#39,#10,#02
	db #2f,#80,#02,#2f,#80,#02,#2f,#80
	db #02,#39,#10,#02,#2f,#80,#02,#2f
	db #80,#02,#2f,#80,#02,#39,#10,#02
	db #2f,#80,#02,#2f,#80,#02,#2f,#80
	db #02,#39,#10,#02,#2f,#80,#02,#ff
	db #37,#80,#02,#37,#80,#02,#39,#10
	db #02,#37,#80,#02,#37,#80,#02,#37
	db #80,#02,#39,#10,#02,#37,#80,#02
	db #37,#80,#02,#37,#80,#02,#39,#10
	db #02,#37,#80,#02,#37,#80,#02,#37
	db #80,#02,#39,#10,#02,#37,#80,#02
	db #3b,#80,#02,#3b,#80,#02,#39,#10
	db #02,#3b,#80,#02,#3b,#80,#02,#3b
	db #80,#02,#39,#10,#02,#3b,#80,#02
	db #3b,#80,#02,#3b,#80,#02,#39,#10
	db #02,#3b,#80,#02,#3b,#80,#02,#3b
	db #80,#02,#39,#10,#02,#3b,#80,#02
	db #ff,#39,#80,#02,#39,#80,#02,#39
	db #10,#02,#39,#80,#02,#39,#80,#02
	db #39,#80,#02,#39,#10,#02,#39,#80
	db #02,#39,#80,#02,#39,#80,#02,#39
	db #10,#02,#39,#80,#02,#39,#80,#02
	db #39,#80,#02,#39,#10,#02,#39,#80
	db #02,#32,#80,#02,#32,#80,#02,#39
	db #10,#02,#32,#80,#02,#32,#80,#02
	db #32,#80,#02,#39,#10,#02,#32,#80
	db #02,#32,#80,#02,#32,#80,#02,#39
	db #10,#02,#32,#80,#02,#32,#80,#02
	db #32,#80,#02,#39,#10,#02,#32,#80
	db #02,#ff,#30,#80,#02,#30,#80,#02
	db #39,#10,#02,#30,#80,#02,#30,#80
	db #02,#30,#80,#02,#39,#10,#02,#30
	db #80,#02,#30,#80,#02,#30,#80,#02
	db #39,#10,#02,#30,#80,#02,#30,#80
	db #02,#30,#80,#02,#39,#10,#02,#30
	db #80,#02,#34,#80,#02,#34,#80,#02
	db #39,#10,#02,#34,#80,#02,#34,#80
	db #02,#34,#80,#02,#39,#10,#02,#34
	db #80,#02,#34,#80,#02,#34,#80,#02
	db #39,#10,#02,#34,#80,#02,#34,#80
	db #02,#34,#80,#02,#39,#10,#02,#34
	db #80,#02,#ff,#4f,#70,#06,#cf,#70
	db #ce,#70,#4f,#70,#0c,#4e,#70,#02
	db #4f,#70,#02,#51,#70,#04,#4e,#70
	db #04,#4f,#70,#06,#cf,#70,#ce,#70
	db #4f,#70,#0c,#4e,#70,#02,#4f,#70
	db #02,#51,#70,#04,#4c,#70,#04,#ff
	db #4e,#70,#06,#ce,#70,#cf,#70,#4e
	db #70,#10,#4a,#70,#04,#4c,#70,#04
	db #4e,#70,#06,#ce,#70,#cf,#70,#4e
	db #70,#08,#4f,#70,#08,#4e,#70,#08
	db #ff,#4e,#70,#06,#cc,#70,#ce,#70
	db #4c,#70,#10,#48,#70,#04,#4a,#70
	db #04,#4c,#70,#04,#4c,#70,#04,#4c
	db #70,#04,#4e,#70,#04,#53,#70,#04
	db #53,#70,#04,#51,#70,#04,#4c,#70
	db #04,#ff,#4e,#70,#02,#4e,#70,#02
	db #4e,#70,#02,#4f,#70,#04,#4e,#70
	db #12,#4e,#70,#04,#56,#70,#04,#56
	db #70,#02,#54,#70,#04,#54,#70,#04
	db #53,#70,#04,#53,#70,#04,#51,#70
	db #06,#51,#70,#04,#ff,#53,#a0,#02
	db #53,#a0,#02,#53,#a0,#02,#54,#a0
	db #04,#53,#a0,#12,#54,#a0,#04,#56
	db #a0,#02,#56,#a0,#02,#56,#a0,#02
	db #58,#a0,#04,#56,#a0,#12,#56,#a0
	db #04,#ff,#56,#a0,#02,#02,#11,#01
	db #02,#11,#01,#54,#a0,#02,#54,#a0
	db #02,#02,#11,#01,#02,#11,#01,#53
	db #a0,#04,#53,#a0,#02,#02,#11,#01
	db #02,#11,#01,#51,#a0,#04,#51,#a0
	db #06,#4c,#a0,#04,#4f,#a0,#10,#4e
	db #a0,#08,#4f,#a0,#04,#51,#a0,#04
	db #ff,#53,#a0,#02,#53,#a0,#02,#53
	db #a0,#02,#54,#a0,#02,#02,#11,#01
	db #02,#12,#01,#53,#a0,#12,#54,#a0
	db #04,#56,#a0,#02,#56,#a0,#02,#56
	db #a0,#02,#58,#a0,#02,#02,#11,#01
	db #02,#12,#01,#56,#a0,#12,#56,#a0
	db #04,#ff,#58,#a0,#02,#58,#a0,#02
	db #58,#a0,#02,#58,#a0,#02,#58,#a0
	db #02,#02,#11,#01,#02,#12,#01,#56
	db #a0,#02,#54,#a0,#04,#54,#a0,#02
	db #54,#a0,#02,#54,#a0,#02,#54,#a0
	db #02,#02,#11,#01,#02,#12,#01,#53
	db #a0,#04,#53,#a0,#0e,#02,#11,#01
	db #02,#12,#01,#51,#a0,#10,#ff,#cf
	db #a0,#d1,#a0,#cf,#a0,#d1,#a0,#4f
	db #a0,#0c,#cf,#a0,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#4e,#a0,#02
	db #4f,#a0,#04,#51,#a0,#06,#d3,#a0
	db #d4,#a0,#d3,#a0,#d4,#a0,#53,#a0
	db #0a,#03,#11,#01,#03,#11,#01,#56
	db #a0,#04,#54,#a0,#02,#53,#a0,#06
	db #54,#a0,#04,#ff,#51,#a0,#20,#4a
	db #a0,#18,#4c,#a0,#04,#4e,#a0,#04
	db #ff,#cf,#a0,#d1,#a0,#cf,#a0,#d1
	db #a0,#4f,#a0,#0c,#cf,#a0,#02,#11
	db #01,#02,#11,#01,#02,#11,#01,#4e
	db #a0,#02,#4f,#a0,#04,#51,#a0,#06
	db #d3,#a0,#d4,#a0,#d3,#a0,#d4,#a0
	db #53,#a0,#0a,#03,#11,#01,#03,#11
	db #01,#54,#a0,#04,#53,#a0,#02,#51
	db #a0,#06,#53,#a0,#04,#ff,#53,#cf
	db #00,#20,#54,#c0,#10,#53,#c0,#10
	db #ff,#51,#cf,#00,#20,#54,#c0,#10
	db #53,#c0,#08,#51,#c0,#08,#ff,#4f
	db #cf,#00,#20,#53,#c0,#10,#51,#c0
	db #08,#4c,#c0,#08,#ff,#4e,#cf,#00
	db #20,#51,#c0,#10,#4f,#c0,#08,#4e
	db #c0,#08,#ff,#53,#cf,#00,#10,#54
	db #c0,#06,#53,#c0,#06,#54,#c0,#04
	db #56,#c0,#10,#4e,#c0,#0c,#56,#c0
	db #04,#ff,#54,#cf,#00,#10,#53,#c0
	db #06,#51,#c0,#06,#4c,#c0,#04,#4f
	db #c0,#10,#51,#c0,#10,#ff,#51,#cf
	db #60,#4f,#c0,#1a,#51,#c0,#06,#4f
	db #c0,#06,#51,#c0,#04,#53,#c0,#10
	db #ff,#51,#cf,#00,#20,#4a,#c0,#20
	db #ff
;
.music_info
	db "AFC Disk No 5 - Menu (1999)(AFC)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"