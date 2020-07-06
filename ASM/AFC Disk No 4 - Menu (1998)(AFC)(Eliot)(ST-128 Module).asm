; Music of AFC Disk No 4 - Menu (1998)(AFC)(Eliot)(ST-128 Module)
; Ripped by Megachur the 30/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AFCDIN4M.BIN"
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
	db #00,#00,#d1,#54,#e3,#54,#f5,#54
.l5091
	db #31,#51,#71,#51,#91,#51,#80,#00
	db #b1,#51,#f1,#51,#11,#52,#c0,#00
	db #53,#a5,#23,#42,#13,#46,#e0,#3f
	db #31,#52,#71,#52,#91,#52,#00,#00
	db #b1,#52,#f1,#52,#11,#53,#00,#00
	db #31,#53,#71,#53,#91,#53,#14,#0c
	db #9f,#0a,#3b,#0d,#3c,#0a,#04,#18
	db #b1,#53,#f1,#53,#11,#53,#00,#00
	db #31,#53,#11,#54,#31,#54,#40,#00
	db #27,#22,#23,#28,#26,#6c,#00,#18
	db #86,#6d,#23,#22,#85,#0a,#18,#03
	db #2e,#15,#2e,#14,#2d,#14,#0a,#0a
	db #2d,#15,#2e,#15,#23,#32,#0b,#0b
	db #2e,#14,#2d,#14,#2d,#14,#0a,#0b
	db #51,#54,#91,#54,#91,#53,#00,#00
	db #e5,#6d,#23,#28,#26,#29,#1e,#1e
.l5111
	db #42,#29,#42,#28,#41,#28,#41,#29
	db #42,#29,#42,#29,#41,#28,#41,#28
	db #41,#28,#42,#29,#42,#29,#42,#28
	db #41,#28,#41,#29,#42,#29,#b1,#54
	db #90,#01,#e0,#01,#30,#02,#80,#02
	db #d0,#02,#20,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0f,#0f,#0f,#0e,#0e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
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
	db #0d,#0e,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#00,#00,#03,#04,#02,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0d,#09,#05,#01,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#00,#80,#00
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
	db #0f,#0e,#0d,#0b,#0a,#09,#07,#05
	db #03,#00,#00,#07,#06,#04,#05,#06
	db #07,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
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
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #de,#00,#50,#01,#d0,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0d,#0d,#0c,#0b,#0b,#00
	db #8c,#8b,#8b,#8a,#8a,#8a,#88,#89
	db #89,#88,#88,#88,#87,#87,#87,#87
	db #86,#86,#86,#86,#85,#85,#85,#85
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0e
	db #0e,#0d,#0c,#0b,#0b,#0a,#0a,#09
	db #09,#08,#07,#06,#05,#04,#03,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#02,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0e,#0e,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0b,#0b
	db #0b,#0a,#09,#08,#07,#05,#02,#00
	db #0c,#00,#0c,#00,#0c,#00,#0c,#f4
	db #0c,#00,#0c,#00,#0c,#00,#0c,#f4
	db #0c,#00,#0c,#00,#0c,#00,#0c,#f4
	db #0c,#00,#0c,#00,#0c,#00,#0c,#f4
	db #00,#07,#55,#00,#89,#55,#00,#c5
	db #55,#00,#01,#56,#00,#07,#55,#80
	db #d1,#54,#00,#38,#56,#00,#81,#56
	db #00,#81,#56,#00,#81,#56,#00,#38
	db #56,#80,#e3,#54,#00,#ca,#56,#00
	db #4c,#57,#00,#4c,#57,#00,#cd,#57
	db #00,#ca,#56,#80,#f5,#54,#c7,#46
	db #f1,#c6,#40,#c4,#40,#c7,#40,#c6
	db #40,#c4,#40,#c7,#40,#c9,#40,#cb
	db #40,#c7,#40,#c4,#40,#cb,#40,#c7
	db #40,#c4,#40,#cb,#40,#ce,#40,#cc
	db #40,#c7,#40,#c4,#40,#cc,#40,#c7
	db #40,#c4,#40,#cc,#40,#d0,#40,#ce
	db #40,#c9,#40,#c6,#40,#ce,#40,#c9
	db #40,#c6,#40,#ce,#40,#c9,#40,#c7
	db #40,#c6,#40,#c4,#40,#c7,#40,#c6
	db #40,#c4,#40,#c7,#40,#c9,#40,#cb
	db #40,#c7,#40,#c4,#40,#cb,#40,#c7
	db #40,#c4,#40,#cb,#40,#ce,#40,#cc
	db #40,#c7,#40,#c4,#40,#cc,#40,#c7
	db #40,#c4,#40,#cc,#40,#d0,#40,#ce
	db #40,#c9,#40,#c6,#40,#ce,#40,#c9
	db #40,#c6,#40,#ce,#40,#c9,#40,#ff
	db #44,#e1,#60,#47,#e0,#04,#46,#e0
	db #02,#44,#e0,#02,#42,#e0,#02,#44
	db #e0,#06,#47,#e0,#04,#46,#e0,#02
	db #44,#e0,#02,#42,#e0,#02,#44,#e0
	db #06,#47,#e0,#04,#46,#e0,#02,#44
	db #e0,#02,#42,#e0,#02,#44,#e0,#02
	db #4b,#e0,#02,#49,#e0,#02,#c7,#e0
	db #49,#e0,#09,#ff,#47,#80,#03,#46
	db #80,#03,#42,#80,#02,#44,#80,#03
	db #3f,#80,#03,#44,#80,#02,#47,#80
	db #02,#46,#80,#02,#47,#80,#02,#c9
	db #80,#4b,#80,#09,#50,#e0,#03,#4e
	db #e0,#03,#4b,#e0,#02,#4e,#e0,#03
	db #50,#e0,#03,#53,#e0,#02,#52,#e0
	db #04,#50,#e0,#04,#4e,#e0,#08,#ff
	db #50,#80,#03,#4b,#80,#03,#50,#80
	db #02,#53,#80,#03,#52,#80,#03,#50
	db #80,#02,#4c,#80,#03,#50,#80,#03
	db #4c,#80,#02,#49,#80,#08,#4b,#80
	db #03,#50,#80,#03,#4b,#80,#02,#47
	db #80,#03,#50,#80,#03,#47,#80,#02
	db #46,#80,#08,#42,#80,#08,#ff,#2c
	db #51,#30,#2c,#50,#03,#2a,#50,#02
	db #2c,#50,#03,#2c,#50,#03,#2f,#50
	db #02,#28,#50,#03,#28,#50,#03,#28
	db #50,#02,#2a,#50,#03,#2a,#50,#03
	db #2a,#50,#02,#2c,#50,#03,#2c,#50
	db #03,#2a,#50,#02,#2c,#50,#03,#2c
	db #50,#03,#2f,#50,#02,#28,#50,#03
	db #28,#50,#03,#28,#50,#02,#2a,#50
	db #03,#2a,#50,#03,#2b,#50,#02,#ff
	db #2c,#50,#03,#2c,#50,#03,#2a,#50
	db #02,#2c,#50,#03,#2c,#50,#03,#2f
	db #50,#02,#28,#50,#03,#28,#50,#03
	db #28,#50,#02,#2a,#50,#03,#2a,#50
	db #03,#2a,#50,#02,#2c,#50,#03,#2c
	db #50,#03,#2a,#50,#02,#2c,#50,#03
	db #2c,#50,#03,#2f,#50,#02,#28,#50
	db #03,#28,#50,#03,#28,#50,#02,#2a
	db #50,#03,#2a,#50,#03,#2b,#50,#02
	db #ff,#2c,#01,#10,#b8,#30,#b8,#30
	db #b8,#30,#ac,#10,#b8,#30,#ac,#00
	db #b8,#30,#ac,#00,#b8,#30,#b8,#30
	db #ac,#00,#ac,#10,#b8,#30,#b8,#30
	db #b8,#30,#ac,#00,#b8,#30,#b8,#30
	db #b8,#30,#ac,#10,#b8,#30,#ac,#00
	db #ac,#00,#b8,#30,#b8,#30,#b8,#30
	db #b8,#30,#ac,#10,#b8,#30,#ac,#10
	db #ac,#10,#ac,#00,#b8,#30,#b8,#30
	db #b8,#30,#ac,#10,#b8,#30,#ac,#00
	db #b8,#30,#ac,#00,#b8,#30,#b8,#30
	db #ac,#00,#ac,#10,#b8,#30,#b8,#30
	db #b8,#30,#ac,#00,#b8,#30,#b8,#30
	db #b8,#30,#ac,#10,#b8,#30,#ac,#00
	db #ac,#00,#b8,#30,#b8,#30,#b8,#30
	db #b8,#30,#ac,#10,#b8,#30,#ac,#10
	db #ac,#10,#ff,#ac,#00,#b8,#30,#d0
	db #70,#ce,#70,#ac,#10,#b8,#30,#ac
	db #00,#b8,#30,#ac,#00,#b8,#30,#d0
	db #70,#ac,#00,#ac,#10,#b8,#30,#d0
	db #70,#b8,#30,#ac,#00,#b8,#30,#d0
	db #70,#ce,#70,#ac,#10,#b8,#30,#ac
	db #00,#ac,#00,#b8,#30,#d0,#70,#ce
	db #70,#b8,#30,#ac,#10,#b8,#30,#ac
	db #10,#ac,#10,#ac,#00,#b8,#30,#d0
	db #70,#ce,#70,#ac,#10,#b8,#30,#ac
	db #00,#b8,#30,#ac,#00,#b8,#30,#d0
	db #70,#ac,#00,#ac,#10,#b8,#30,#d0
	db #70,#b8,#30,#ac,#00,#b8,#30,#d0
	db #70,#ce,#70,#ac,#10,#b8,#30,#ac
	db #00,#ac,#00,#c4,#70,#ce,#70,#ce
	db #70,#cb,#70,#ac,#10,#b8,#30,#ac
	db #10,#ac,#10,#ff,#ac,#00,#b8,#30
	db #d0,#70,#ce,#70,#ac,#10,#b8,#30
	db #ac,#00,#b8,#30,#ac,#00,#b8,#30
	db #d0,#70,#ac,#00,#ac,#10,#b8,#30
	db #d0,#70,#b8,#30,#ac,#00,#b8,#30
	db #d0,#70,#ce,#70,#ac,#10,#b8,#30
	db #ac,#00,#ac,#00,#b8,#30,#d0,#70
	db #ce,#70,#b8,#30,#ac,#10,#b8,#30
	db #ac,#10,#ac,#10,#ac,#00,#b8,#30
	db #d0,#70,#ce,#70,#ac,#10,#b8,#30
	db #ac,#00,#b8,#30,#ac,#00,#b8,#30
	db #d0,#70,#ac,#00,#ac,#10,#b8,#30
	db #d0,#70,#b8,#30,#ac,#00,#b8,#30
	db #d0,#70,#ce,#70,#ac,#10,#b8,#30
	db #ac,#00,#ac,#00,#ce,#70,#ce,#70
	db #ce,#70,#cb,#70,#ac,#10,#b8,#30
	db #ac,#10,#ac,#10,#ff
;
.music_info
	db "AFC Disk No 4 - Menu (1998)(AFC)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"
