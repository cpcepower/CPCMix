; Music of Loom (1996)(Arkos)(Epsilon)(ST-128 Module)
; Ripped by Megachur the 19/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LOOM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #6851

	read "music_header.asm"

	jp l685a
	jp l68ee
	jp l68d2
;
.init_music
.l685a
;
	xor a
	ld hl,l6e05
	call l68cb
	ld hl,l6e33
	call l68cb
	ld hl,l6e61
	call l68cb
	ld ix,l6e01
	ld iy,l6e8b
	ld de,#002e
	ld b,#03
.l687a
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
	djnz l687a
	ld hl,l6d1a
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
	ld (l6d16),hl
	ld (l6d18),hl
	ld a,#0c
	ld c,d
	call l6cf6
	ld a,#0d
	ld c,d
	jp l6cf6
.l68cb
	ld b,#2a
.l68cd
	ld (hl),a
	inc hl
	djnz l68cd
	ret
;
.stop_music
.l68d2
;
	ld a,#07
	ld c,#3f
	call l6cf6
	ld a,#08
	ld c,#00
	call l6cf6
	ld a,#09
	ld c,#00
	call l6cf6
	ld a,#0a
	ld c,#00
	jp l6cf6
;
.play_music
.l68ee
;
	ld hl,l6d1c
	dec (hl)
	ld ix,l6e01
	ld bc,l6e0f
	call l6990
	ld ix,l6e2f
	ld bc,l6e3d
	call l6990
	ld ix,l6e5d
	ld bc,l6e6b
	call l6990
	ld hl,l6d15
	ld de,l6d1c
	ld b,#06
	call l696d
	ld b,#07
	call l696d
	ld b,#0b
	call l696d
	ld b,#0d
	call l696d
	ld de,l6d1c
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l6e20
	call l6946
	ld hl,l6e4e
	call l6946
	ld hl,l6e7c
.l6946
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
	jr nz,l695b
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l695b
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
.l696d
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6cf6
.l6978
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6cf6
.l6990
	ld a,(l6d1c)
	or a
	jp nz,l6a48
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6a48
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6978
	or a
	jp z,l6a3d
	ld r,a
	and #7f
	cp #10
	jr c,l6a18
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l6b90
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
	jr z,l69f1
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l69f1
	rrca
	ld c,a
	ld hl,l6e91
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
	jr z,l6a10
	ld (ix+#1e),b
.l6a10
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l6a31
.l6a18
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l6d21
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
.l6a31
	ld a,d
	or a
	jr nz,l6a3f
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l6a3f
.l6a3d
	ld a,(hl)
	inc hl
.l6a3f
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6a48
	ld a,(ix+#17)
	or a
	jr nz,l6a5e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l6a5e
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6a74
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6a74
	ld a,(ix+#0d)
	or a
	jr z,l6a82
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l6aa0
.l6a82
	ld a,(ix+#1a)
	or a
	jp z,l6aa7
	ld c,a
	cp #03
	jr nz,l6a8f
	xor a
.l6a8f
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l6aa0
	ld a,(ix+#18)
	dec c
	jr z,l6aa0
	ld a,(ix+#19)
.l6aa0
	add (ix+#07)
	ld b,d
	call l6b90
.l6aa7
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l6acf
	dec (ix+#1b)
	jr nz,l6acf
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l6b07
.l6acf
	ld a,(ix+#29)
	or a
	jr z,l6b07
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l6afe
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l6af5
	ld (ix+#29),#ff
	jr l6afe
.l6af5
	cp (ix+#2b)
	jr nz,l6afe
	ld (ix+#29),#01
.l6afe
	ld b,d
	or a
	jp p,l6b04
	dec b
.l6b04
	ld c,a
	jr l6b12
.l6b07
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l6b12
	pop hl
	bit 7,(ix+#14)
	jr z,l6b1b
	ld h,d
	ld l,d
.l6b1b
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6cf6
	ld c,h
	ld a,(ix+#02)
	call l6cf6
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6b6e
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l6b5d
	dec (ix+#09)
	jr nz,l6b5d
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6b55
	xor a
	jr l6b5a
.l6b55
	cp #10
	jr nz,l6b5a
	dec a
.l6b5a
	ld (ix+#1e),a
.l6b5d
	ld a,b
	sub (ix+#1e)
	jr nc,l6b64
	xor a
.l6b64
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6cf6
.l6b6e
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l6d1d)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l6b8c
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l6b8c
	ld (l6d1d),hl
	ret
.l6b90
	ld hl,l6d3f
	cp #61
	jr nc,l6b9a
	add a
	ld c,a
	add hl,bc
.l6b9a
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l6ba4
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6cc9
	ld (ix+#1e),a
	jp l6a31
.l6bb6
	dec b
.l6bb7
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l6bc2
	neg
.l6bc2
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
	jp l6a31
.l6bd8
	dec b
	jr l6bdc
.l6bdb
	inc b
.l6bdc
	call l6cc9
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l6a31
.l6beb
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
	jp l6cae
.l6bfc
	ld a,(hl)
	inc hl
	or a
	jr z,l6c1e
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
.l6c1e
	ld (ix+#29),a
	jp l6a31
.l6c24
	dec hl
	ld a,(hl)
	and #0f
	ld (l6d20),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l6d1f),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l6a31
.l6c3e
	ld a,(hl)
	or a
	jr z,l6c4f
	call l6ccb
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l6a31
.l6c4f
	ld hl,#0101
	ld (l6d1b),hl
	jp l6a31
.l6c58
	call l6cc9
	ld (ix+#1e),a
	jp l6a31
.l6c61
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6cda
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6cda
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l6a31
.l6c83
	ld a,(hl)
	inc hl
	ld (l6d1a),a
	jp l6a31
.l6c8b
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
	jp l6a31
.l6caa
	call l6cc9
	add a
.l6cae
	ld b,#00
	ld c,a
	push hl
	ld hl,l6f11
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l6a31
.l6cc9
	ld a,(hl)
	inc hl
.l6ccb
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
.l6cda
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6e91
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l6cf6
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
.l6d15
	ret
.l6d1d equ $ + 7
.l6d1c equ $ + 6
.l6d1b equ $ + 5
.l6d1a equ $ + 4
.l6d18 equ $ + 2
.l6d16
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6d20 equ $ + 2
.l6d1f equ $ + 1
	db #38,#00,#00
.l6d21
	dw l6ba4,l6bb7,l6bb6,l6bdb
	dw l6bd8,l6beb,l6bfc,l6c24
	dw l6c3e,l6c24,l6c58,l6c61
	dw l6c83,l6c8b,l6caa
.l6d3f
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
.l6e01 equ $ + 2
	dw #000f,#0008
.l6e05 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l6e0f equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e20 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e2f equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l6e33
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e3d equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e4e equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e61 equ $ + 6
.l6e5d equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e6b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e7c equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e91 equ $ + 6
.l6e8b
	db #f1,#71,#21,#72,#51,#72,#31,#6f
	db #71,#6f,#91,#6f,#10,#10,#f5,#67
	db #43,#99,#83,#99,#80,#71,#b1,#6f
	db #f1,#6f,#11,#70,#80,#00,#31,#70
	db #71,#70,#91,#70,#c0,#00,#b1,#70
	db #f1,#70,#91,#6f,#00,#00,#11,#71
	db #51,#71,#91,#6f,#48,#08,#f5,#67
	db #c7,#8f,#c7,#8f,#a4,#67,#71,#71
	db #b1,#71,#d1,#71,#80,#00,#f5,#67
	db #c7,#8f,#f4,#4f,#d2,#27,#23,#28
	db #f5,#4f,#f4,#4f,#d2,#27,#23,#28
	db #f5,#4f,#f4,#4f,#d2,#27,#f5,#4f
	db #f5,#4f,#f4,#4f,#d2,#27,#f5,#4f
	db #f5,#4f,#f4,#4f,#d2,#27,#f5,#4f
	db #f5,#4f,#f4,#4f,#d2,#27,#f5,#4f
	db #22,#28,#23,#28,#00,#00,#23,#28
.l6f11 equ $ + 6
	db #22,#28,#23,#28,#00,#00,#23,#28
	db #22,#28,#23,#28,#23,#28,#23,#28
	db #22,#28,#23,#28,#23,#28,#23,#28
	db #22,#28,#23,#28,#23,#28,#23,#28
	db #22,#28,#23,#28,#23,#28,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0b,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0e,#0d,#0e,#0d,#0d,#0d,#0d
	db #0b,#0c,#0d,#0c,#0c,#0b,#0c,#0b
	db #0b,#0a,#0b,#09,#0a,#08,#09,#08
	db #07,#05,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#0f,#0f
	db #0f,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#07
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#03,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#19
	db #74,#00,#19,#74,#00,#2a,#74,#00
	db #2a,#74,#00,#81,#72,#00,#81,#72
	db #00,#6b,#74,#00,#6b,#74,#00,#34
	db #73,#00,#0d,#74,#00,#8c,#73,#00
	db #d9,#72,#00,#d9,#72,#00,#c3,#74
	db #00,#c3,#74,#80,#f1,#71,#00,#1c
	db #75,#00,#1c,#75,#00,#1c,#75,#00
	db #1c,#75,#00,#1c,#75,#00,#1c,#75
	db #00,#1c,#75,#00,#1c,#75,#00,#1c
	db #75,#00,#1c,#75,#00,#1c,#75,#00
	db #1c,#75,#00,#1c,#75,#00,#1c,#75
	db #00,#1c,#75,#80,#21,#72,#00,#08
	db #76,#00,#8c,#73,#00,#8c,#73,#00
	db #8c,#73,#00,#8c,#73,#00,#8c,#73
	db #00,#8c,#73,#00,#8c,#73,#00,#bd
	db #75,#00,#bd,#75,#00,#bd,#75,#00
	db #8c,#73,#00,#8c,#73,#00,#8c,#73
	db #00,#8c,#73,#80,#51,#72,#43,#50
	db #02,#4a,#50,#02,#46,#50,#02,#4a
	db #50,#02,#46,#50,#02,#43,#50,#04
	db #43,#50,#02,#46,#50,#02,#4d,#50
	db #02,#4a,#50,#02,#4d,#50,#02,#4a
	db #50,#02,#46,#50,#04,#46,#50,#02
	db #41,#50,#02,#48,#50,#02,#46,#50
	db #02,#48,#50,#02,#41,#50,#02,#41
	db #50,#04,#41,#50,#02,#43,#50,#02
	db #4a,#50,#02,#46,#50,#02,#4a,#50
	db #02,#43,#50,#02,#46,#50,#02,#4a
	db #50,#02,#41,#50,#02,#ff,#43,#50
	db #02,#43,#50,#02,#4a,#50,#02,#4d
	db #50,#02,#4f,#50,#02,#4d,#50,#02
	db #4f,#50,#02,#54,#50,#02,#52,#50
	db #03,#02,#11,#01,#4f,#50,#02,#4d
	db #50,#02,#4f,#50,#02,#48,#50,#02
	db #4a,#50,#04,#41,#50,#02,#41,#50
	db #02,#48,#50,#02,#46,#50,#02,#48
	db #50,#02,#4d,#50,#02,#4f,#50,#02
	db #46,#50,#02,#4a,#50,#03,#02,#11
	db #01,#43,#50,#02,#41,#50,#02,#43
	db #50,#02,#48,#50,#02,#46,#50,#04
	db #ff,#37,#50,#02,#3e,#50,#02,#3a
	db #50,#02,#3e,#50,#02,#3a,#50,#02
	db #37,#50,#04,#37,#50,#02,#3a,#50
	db #02,#41,#50,#02,#3e,#50,#02,#41
	db #50,#02,#3e,#50,#02,#3a,#50,#04
	db #3a,#50,#02,#35,#50,#02,#3c,#50
	db #02,#3a,#50,#02,#3c,#50,#02,#35
	db #50,#02,#35,#50,#04,#35,#50,#02
	db #37,#50,#02,#3e,#50,#02,#3a,#50
	db #02,#3e,#50,#02,#37,#50,#02,#3a
	db #50,#02,#3e,#50,#02,#41,#50,#02
	db #ff,#bf,#20,#c4,#70,#c4,#70,#c4
	db #70,#bf,#30,#c4,#70,#c4,#70,#c4
	db #70,#bf,#20,#bf,#20,#c4,#70,#bf
	db #20,#bf,#30,#c4,#70,#c4,#70,#c4
	db #70,#bf,#20,#c4,#70,#c4,#70,#c4
	db #70,#bf,#30,#c4,#70,#c4,#70,#c4
	db #70,#bf,#20,#bf,#20,#c4,#70,#bf
	db #20,#bf,#30,#c4,#70,#bf,#20,#c4
	db #70,#bf,#20,#c4,#70,#c4,#70,#c4
	db #70,#bf,#30,#c4,#70,#c4,#70,#c4
	db #70,#bf,#20,#bf,#20,#c4,#70,#bf
	db #20,#bf,#30,#c4,#70,#c4,#70,#c4
	db #70,#bf,#20,#c4,#70,#c4,#70,#c4
	db #70,#bf,#30,#c4,#70,#c4,#70,#c4
	db #70,#bf,#20,#bf,#20,#c4,#70,#bf
	db #20,#bf,#30,#bf,#20,#bf,#30,#bf
	db #30,#ff,#fe,#38,#33,#30,#04,#33
	db #30,#02,#33,#30,#02,#ff,#43,#4e
	db #0c,#10,#46,#4e,#0c,#10,#41,#4e
	db #0c,#10,#43,#4e,#0c,#10,#ff,#43
	db #51,#80,#43,#50,#02,#46,#50,#02
	db #c8,#50,#02,#11,#01,#46,#50,#02
	db #46,#50,#08,#46,#50,#02,#48,#50
	db #02,#4d,#50,#02,#4a,#50,#02,#41
	db #50,#08,#41,#50,#02,#43,#50,#02
	db #c6,#50,#02,#11,#01,#43,#50,#02
	db #43,#50,#08,#43,#50,#02,#46,#50
	db #02,#48,#50,#02,#46,#50,#02,#ff
	db #37,#50,#02,#3e,#50,#02,#3a,#50
	db #02,#3e,#50,#02,#3a,#50,#02,#37
	db #50,#04,#37,#50,#02,#3a,#50,#02
	db #41,#50,#02,#3e,#50,#02,#41,#50
	db #02,#3e,#50,#02,#3a,#50,#04,#3a
	db #50,#02,#35,#50,#02,#3c,#50,#02
	db #3a,#50,#02,#3c,#50,#02,#35,#50
	db #02,#35,#50,#04,#35,#50,#02,#37
	db #50,#02,#3e,#50,#02,#3a,#50,#02
	db #3e,#50,#02,#37,#50,#02,#3a,#50
	db #02,#3e,#50,#02,#35,#50,#02,#ff
	db #4f,#50,#02,#4f,#50,#02,#56,#50
	db #02,#59,#50,#02,#5b,#50,#02,#59
	db #50,#02,#5b,#50,#02,#60,#50,#02
	db #5e,#50,#04,#5b,#50,#02,#59,#50
	db #02,#5b,#50,#02,#d4,#50,#03,#11
	db #01,#56,#50,#04,#4d,#50,#02,#4d
	db #50,#02,#54,#50,#02,#52,#50,#02
	db #54,#50,#02,#59,#50,#02,#5b,#50
	db #02,#d2,#50,#03,#11,#01,#56,#50
	db #04,#4f,#50,#02,#4d,#50,#02,#4f
	db #50,#02,#54,#50,#02,#52,#50,#04
	db #ff,#c3,#0e,#0c,#2b,#01,#10,#ab
	db #00,#b7,#00,#c3,#0e,#0c,#2b,#01
	db #10,#b7,#00,#ab,#00,#c3,#0e,#0c
	db #2b,#01,#10,#ab,#00,#b7,#00,#c3
	db #0e,#0c,#2b,#01,#10,#b7,#00,#ab
	db #00,#c6,#0e,#0c,#2e,#01,#10,#ae
	db #00,#ba,#00,#c6,#0e,#0c,#2e,#01
	db #10,#ba,#00,#ae,#00,#c6,#0e,#0c
	db #2e,#01,#10,#ae,#00,#ba,#00,#c6
	db #0e,#0c,#2e,#01,#10,#ba,#00,#ae
	db #00,#c1,#0e,#0c,#29,#01,#10,#a9
	db #00,#b5,#00,#c1,#0e,#0c,#29,#01
	db #10,#b5,#00,#a9,#00,#c1,#0e,#0c
	db #29,#01,#10,#a9,#00,#b5,#00,#c1
	db #0e,#0c,#29,#01,#10,#b5,#00,#a9
	db #00,#c3,#0e,#0c,#2b,#01,#10,#ab
	db #00,#b7,#00,#c3,#0e,#0c,#2b,#01
	db #10,#b7,#00,#ab,#00,#c3,#0e,#0c
	db #2b,#01,#10,#ab,#00,#b7,#00,#c3
	db #0e,#0c,#2b,#01,#10,#b7,#00,#ab
	db #00,#ff,#43,#50,#04,#46,#50,#02
	db #c8,#50,#03,#11,#01,#4a,#50,#04
	db #4d,#50,#02,#4a,#50,#02,#4d,#50
	db #02,#4a,#50,#02,#48,#50,#02,#c6
	db #50,#03,#11,#01,#4a,#50,#08,#41
	db #50,#04,#43,#50,#02,#c6,#50,#03
	db #11,#01,#48,#50,#04,#46,#50,#02
	db #43,#50,#02,#48,#50,#02,#46,#50
	db #02,#43,#50,#02,#c1,#50,#03,#11
	db #01,#43,#50,#08,#ff,#31,#70,#04
	db #31,#70,#04,#31,#70,#04,#31,#70
	db #04,#31,#70,#04,#31,#70,#04,#31
	db #70,#04,#31,#70,#04,#31,#70,#04
	db #31,#70,#04,#31,#70,#04,#31,#70
	db #04,#31,#70,#04,#31,#70,#04,#31
	db #70,#02,#31,#70,#02,#b1,#70,#b1
	db #70,#31,#70,#02,#ff
;
.music_info
	db "Loom (1996)(Arkos)(Epsilon)",0
	db "ST-128 Module",0

	read "music_end.asm"
