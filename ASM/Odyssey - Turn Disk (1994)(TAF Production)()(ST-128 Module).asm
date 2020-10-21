; Music of Odyssey - Turn Disk (1994)(TAF Production)()(ST-128 Module)
; Ripped by Megachur the 02/09/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ODYSSETD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #5ae1

	read "music_header.asm"

	jp l5aea
	jp l5b7e
	jp l5b62
;
.init_music
.l5aea
;
	xor a
	ld hl,l6095
	call l5b5b
	ld hl,l60c3
	call l5b5b
	ld hl,l60f1
	call l5b5b
	ld ix,l6091
	ld iy,l611b
	ld de,#002e
	ld b,#03
.l5b0a
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
	djnz l5b0a
	ld hl,l5faa
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
	ld (l5fa6),hl
	ld (l5fa8),hl
	ld a,#0c
	ld c,d
	call l5f86
	ld a,#0d
	ld c,d
	jp l5f86
.l5b5b
	ld b,#2a
.l5b5d
	ld (hl),a
	inc hl
	djnz l5b5d
	ret
;
.stop_music
.l5b62
;
	ld a,#07
	ld c,#3f
	call l5f86
	ld a,#08
	ld c,#00
	call l5f86
	ld a,#09
	ld c,#00
	call l5f86
	ld a,#0a
	ld c,#00
	jp l5f86
;
.play_music
.l5b7e
;
	ld hl,l5fac
	dec (hl)
	ld ix,l6091
	ld bc,l609f
	call l5c20
	ld ix,l60bf
	ld bc,l60cd
	call l5c20
	ld ix,l60ed
	ld bc,l60fb
	call l5c20
	ld hl,l5fa5
	ld de,l5fac
	ld b,#06
	call l5bfd
	ld b,#07
	call l5bfd
	ld b,#0b
	call l5bfd
	ld b,#0d
	call l5bfd
	ld de,l5fac
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l60b0
	call l5bd6
	ld hl,l60de
	call l5bd6
	ld hl,l610c
.l5bd6
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
	jr nz,l5beb
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l5beb
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
.l5bfd
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l5f86
.l5c08
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l5f86
.l5c20
	ld a,(l5fac)
	or a
	jp nz,l5cd8
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l5cd8
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5c08
	or a
	jp z,l5ccd
	ld r,a
	and #7f
	cp #10
	jr c,l5ca8
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l5e20
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
	jr z,l5c81
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l5c81
	rrca
	ld c,a
	ld hl,l6121
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
	jr z,l5ca0
	ld (ix+#1e),b
.l5ca0
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l5cc1
.l5ca8
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l5fb1
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
.l5cc1
	ld a,d
	or a
	jr nz,l5ccf
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l5ccf
.l5ccd
	ld a,(hl)
	inc hl
.l5ccf
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l5cd8
	ld a,(ix+#17)
	or a
	jr nz,l5cee
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l5cee
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5d04
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5d04
	ld a,(ix+#0d)
	or a
	jr z,l5d12
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l5d30
.l5d12
	ld a,(ix+#1a)
	or a
	jp z,l5d37
	ld c,a
	cp #03
	jr nz,l5d1f
	xor a
.l5d1f
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l5d30
	ld a,(ix+#18)
	dec c
	jr z,l5d30
	ld a,(ix+#19)
.l5d30
	add (ix+#07)
	ld b,d
	call l5e20
.l5d37
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l5d5f
	dec (ix+#1b)
	jr nz,l5d5f
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l5d97
.l5d5f
	ld a,(ix+#29)
	or a
	jr z,l5d97
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l5d8e
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l5d85
	ld (ix+#29),#ff
	jr l5d8e
.l5d85
	cp (ix+#2b)
	jr nz,l5d8e
	ld (ix+#29),#01
.l5d8e
	ld b,d
	or a
	jp p,l5d94
	dec b
.l5d94
	ld c,a
	jr l5da2
.l5d97
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l5da2
	pop hl
	bit 7,(ix+#14)
	jr z,l5dab
	ld h,d
	ld l,d
.l5dab
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l5f86
	ld c,h
	ld a,(ix+#02)
	call l5f86
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5dfe
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l5ded
	dec (ix+#09)
	jr nz,l5ded
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5de5
	xor a
	jr l5dea
.l5de5
	cp #10
	jr nz,l5dea
	dec a
.l5dea
	ld (ix+#1e),a
.l5ded
	ld a,b
	sub (ix+#1e)
	jr nc,l5df4
	xor a
.l5df4
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l5f86
.l5dfe
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l5fad)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l5e1c
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l5e1c
	ld (l5fad),hl
	ret
.l5e20
	ld hl,l5fcf
	cp #61
	jr nc,l5e2a
	add a
	ld c,a
	add hl,bc
.l5e2a
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l5e34
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l5f59
	ld (ix+#1e),a
	jp l5cc1
.l5e46
	dec b
.l5e47
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l5e52
	neg
.l5e52
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
	jp l5cc1
.l5e68
	dec b
	jr l5e6c
.l5e6b
	inc b
.l5e6c
	call l5f59
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l5cc1
.l5e7b
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
	jp l5f3e
.l5e8c
	ld a,(hl)
	inc hl
	or a
	jr z,l5eae
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
.l5eae
	ld (ix+#29),a
	jp l5cc1
.l5eb4
	dec hl
	ld a,(hl)
	and #0f
	ld (l5fb0),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l5faf),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l5cc1
.l5ece
	ld a,(hl)
	or a
	jr z,l5edf
	call l5f5b
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l5cc1
.l5edf
	ld hl,#0101
	ld (l5fab),hl
	jp l5cc1
.l5ee8
	call l5f59
	ld (ix+#1e),a
	jp l5cc1
.l5ef1
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l5f6a
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l5f6a
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l5cc1
.l5f13
	ld a,(hl)
	inc hl
	ld (l5faa),a
	jp l5cc1
.l5f1b
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
	jp l5cc1
.l5f3a
	call l5f59
	add a
.l5f3e
	ld b,#00
	ld c,a
	push hl
	ld hl,l61a1
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l5cc1
.l5f59
	ld a,(hl)
	inc hl
.l5f5b
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
.l5f6a
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6121
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l5f86
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
.l5fa5
	ret
.l5fad equ $ + 7
.l5fac equ $ + 6
.l5fab equ $ + 5
.l5faa equ $ + 4
.l5fa8 equ $ + 2
.l5fa6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5fb0 equ $ + 2
.l5faf equ $ + 1
	db #38,#00,#00
.l5fb1
	dw l5e34,l5e47,l5e46,l5e6b
	dw l5e68,l5e7b,l5e8c,l5eb4
	dw l5ece,l5eb4,l5ee8,l5ef1
	dw l5f13,l5f1b,l5f3a
.l5fcf
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
.l6095 equ $ + 4
.l6091
	db #08,#00,#01,#08,#00,#00,#00,#00
.l609f equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l60b0 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l60bf equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l60c3 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l60cd equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l60de equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l60ed equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l60f1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l60fb equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l610c equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l611b equ $ + 2
	db #00,#00,#41,#65,#6e,#65,#9b,#65
.l6121
	db #b3,#1a,#b3,#1a,#b3,#1a,#00,#00
	db #c1,#61,#01,#62,#21,#62,#07,#00
	db #41,#62,#81,#62,#a1,#62,#10,#00
	db #c1,#62,#01,#63,#a1,#62,#14,#00
	db #21,#63,#61,#63,#81,#63,#1a,#00
	db #b3,#1a,#b3,#1a,#b3,#1a,#00,#00
	db #b3,#1a,#b3,#1a,#b3,#1a,#00,#00
	db #a1,#63,#e1,#63,#a1,#62,#10,#10
	db #41,#62,#01,#64,#21,#64,#1b,#00
	db #41,#64,#81,#64,#a1,#62,#10,#10
	db #a1,#64,#e1,#64,#01,#65,#00,#00
	db #b3,#1a,#b3,#1a,#b3,#1a,#00,#00
	db #b3,#1a,#b3,#1a,#b3,#1a,#00,#00
	db #b3,#1a,#b3,#1a,#b3,#1a,#00,#00
	db #b3,#1a,#b3,#1a,#b3,#1a,#00,#00
	db #b3,#1a,#b3,#1a,#b3,#1a,#00,#00
.l61a1
	db #21,#65,#b3,#1a,#b3,#1a,#b3,#1a
	db #b3,#1a,#b3,#1a,#b3,#1a,#b3,#1a
	db #b3,#1a,#b3,#1a,#b3,#1a,#b3,#1a
	db #b3,#1a,#b3,#1a,#b3,#1a,#b3,#1a
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
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
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0b,#0b,#0a,#09,#07,#05,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0b,#0a,#0a
	db #09,#09,#08,#07,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#8b
	db #89,#88,#88,#87,#87,#86,#85,#84
	db #83,#82,#81,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0c,#0c,#0b,#0b,#0a,#09,#09,#08
	db #08,#09,#09,#0a,#0a,#09,#09,#08
	db #08,#07,#07,#06,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#fc,#ff,#fd,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#0a,#0a,#09,#09
	db #08,#08,#09,#09,#0a,#0a,#09,#09
	db #08,#08,#09,#09,#0a,#0a,#09,#09
	db #00,#00,#70,#00,#a0,#00,#d0,#00
	db #00,#01,#30,#01,#60,#01,#90,#01
	db #c0,#01,#f0,#01,#20,#02,#50,#02
	db #80,#02,#b0,#02,#e0,#02,#10,#03
	db #40,#03,#70,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0e,#0e,#0e,#0e
	db #0d,#0d,#0d,#0d,#0c,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#08,#07,#07,#06,#05
	db #06,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#f1,#65,#00,#f8,#65,#00,#f8
	db #65,#00,#a4,#66,#00,#c8,#65,#00
	db #7a,#66,#00,#c8,#65,#00,#a4,#66
	db #00,#a9,#66,#00,#a9,#66,#00,#1b
	db #67,#00,#1e,#67,#00,#1e,#67,#00
	db #1b,#67,#80,#41,#65,#00,#e9,#67
	db #00,#67,#67,#00,#67,#67,#00,#67
	db #67,#00,#67,#67,#00,#67,#67,#00
	db #67,#67,#00,#67,#67,#00,#67,#67
	db #00,#67,#67,#00,#6c,#68,#00,#67
	db #67,#00,#67,#67,#00,#6c,#68,#80
	db #6e,#65,#00,#87,#69,#00,#e6,#68
	db #00,#e6,#68,#00,#e6,#68,#00,#e6
	db #68,#00,#e6,#68,#00,#e6,#68,#00
	db #9d,#69,#00,#e6,#68,#00,#e6,#68
	db #00,#b1,#69,#00,#33,#6a,#00,#33
	db #6a,#00,#b1,#69,#80,#9b,#65,#3f
	db #7f,#c0,#41,#70,#02,#42,#70,#02
	db #46,#70,#06,#44,#70,#06,#42,#70
	db #04,#3d,#70,#0c,#41,#70,#02,#42
	db #70,#02,#44,#70,#06,#42,#70,#06
	db #41,#70,#02,#c2,#70,#c1,#70,#ff
	db #72,#a1,#00,#1c,#fe,#24,#ff,#57
	db #2f,#10,#d2,#20,#cb,#20,#d7,#20
	db #d2,#20,#cb,#20,#d7,#20,#cb,#20
	db #d7,#20,#d2,#20,#cb,#20,#d7,#20
	db #d2,#20,#cb,#20,#d7,#20,#cb,#20
	db #da,#20,#d5,#20,#ce,#20,#da,#20
	db #d5,#20,#ce,#20,#da,#20,#ce,#20
	db #da,#20,#d5,#20,#ce,#20,#da,#20
	db #d5,#20,#ce,#20,#da,#20,#ce,#20
	db #d5,#20,#d0,#20,#c9,#20,#d5,#20
	db #d0,#20,#c9,#20,#d5,#20,#c9,#20
	db #d5,#20,#d0,#20,#c9,#20,#d5,#20
	db #d0,#20,#c9,#20,#d5,#20,#c9,#20
	db #d8,#20,#d3,#20,#cc,#20,#d8,#20
	db #d3,#20,#cc,#20,#d8,#20,#cc,#20
	db #d8,#20,#d3,#20,#cc,#20,#d8,#20
	db #d3,#20,#cc,#20,#d8,#20,#cc,#20
	db #ff,#3f,#7f,#c0,#41,#70,#02,#42
	db #70,#0e,#48,#70,#02,#49,#70,#12
	db #46,#70,#02,#47,#70,#02,#46,#70
	db #02,#c9,#70,#49,#70,#02,#c6,#70
	db #49,#70,#02,#46,#70,#02,#c9,#70
	db #ca,#70,#ff,#4b,#81,#00,#40,#ff
	db #57,#2f,#10,#d2,#20,#cb,#20,#d7
	db #20,#d2,#20,#cb,#20,#d7,#20,#cb
	db #20,#d7,#20,#d2,#20,#cb,#20,#d7
	db #20,#d2,#20,#cb,#20,#d7,#20,#cb
	db #20,#5a,#20,#02,#55,#20,#02,#4e
	db #20,#02,#5a,#20,#02,#55,#20,#02
	db #4e,#20,#02,#5a,#20,#02,#4e,#20
	db #02,#d5,#20,#d0,#20,#c9,#20,#d5
	db #20,#d0,#20,#c9,#20,#d5,#20,#c9
	db #20,#d5,#20,#d0,#20,#c9,#20,#d5
	db #20,#d0,#20,#c9,#20,#d5,#20,#c9
	db #20,#58,#20,#02,#53,#20,#02,#4c
	db #20,#02,#58,#20,#02,#53,#20,#02
	db #4c,#20,#02,#58,#20,#02,#4c,#20
	db #02,#ff,#fe,#40,#ff,#3f,#9f,#20
	db #3f,#90,#02,#47,#90,#02,#46,#90
	db #04,#47,#90,#02,#46,#90,#04,#42
	db #90,#02,#42,#90,#02,#4a,#90,#02
	db #49,#90,#04,#4a,#90,#02,#49,#90
	db #04,#3d,#90,#02,#3d,#90,#02,#45
	db #90,#02,#44,#90,#04,#45,#90,#02
	db #44,#90,#04,#40,#90,#02,#40,#90
	db #02,#48,#90,#02,#47,#90,#04,#48
	db #90,#02,#47,#90,#04,#ff,#33,#3f
	db #10,#a7,#30,#a7,#30,#b3,#30,#a7
	db #30,#a7,#30,#b3,#30,#a7,#30,#b3
	db #30,#a7,#30,#a7,#30,#b3,#30,#a7
	db #30,#a7,#30,#b3,#30,#a7,#30,#b6
	db #30,#aa,#30,#aa,#30,#b6,#30,#aa
	db #30,#aa,#30,#b6,#30,#aa,#30,#b6
	db #30,#aa,#30,#aa,#30,#b6,#30,#aa
	db #30,#aa,#30,#b6,#30,#aa,#30,#b1
	db #30,#a5,#30,#a5,#30,#b1,#30,#a5
	db #30,#a5,#30,#b1,#30,#a5,#30,#b1
	db #30,#a5,#30,#a5,#30,#b1,#30,#a5
	db #30,#a5,#30,#b1,#30,#a5,#30,#b4
	db #30,#a8,#30,#a8,#30,#b4,#30,#a8
	db #30,#a8,#30,#b4,#30,#a8,#30,#b4
	db #30,#a8,#30,#a8,#30,#b4,#30,#a8
	db #30,#a8,#30,#b4,#30,#a8,#30,#ff
	db #40,#11,#10,#27,#3f,#10,#a7,#30
	db #b3,#30,#a7,#30,#a7,#30,#b3,#30
	db #a7,#30,#b3,#30,#a7,#30,#a7,#30
	db #b3,#30,#a7,#30,#a7,#30,#b3,#30
	db #a7,#30,#b6,#30,#aa,#30,#aa,#30
	db #b6,#30,#aa,#30,#aa,#30,#b6,#30
	db #aa,#30,#b6,#30,#aa,#30,#aa,#30
	db #b6,#30,#aa,#30,#aa,#30,#b6,#30
	db #aa,#30,#b1,#30,#a5,#30,#a5,#30
	db #b1,#30,#a5,#30,#a5,#30,#b1,#30
	db #a5,#30,#b1,#30,#a5,#30,#a5,#30
	db #b1,#30,#a5,#30,#a5,#30,#b1,#30
	db #a5,#30,#b4,#30,#a8,#30,#a8,#30
	db #b4,#30,#a8,#30,#a8,#30,#b4,#30
	db #a8,#30,#b4,#30,#a8,#30,#a8,#30
	db #b4,#30,#a8,#30,#a8,#30,#b4,#30
	db #a8,#30,#ff,#27,#3f,#10,#a7,#30
	db #a7,#30,#a7,#30,#b3,#30,#a7,#30
	db #a7,#30,#27,#30,#02,#27,#30,#02
	db #a7,#30,#b3,#30,#a7,#30,#a7,#30
	db #b3,#30,#a7,#30,#a7,#30,#a7,#30
	db #a7,#30,#b3,#30,#a7,#30,#a7,#30
	db #27,#30,#02,#27,#30,#02,#a7,#30
	db #b2,#30,#b1,#30,#b0,#30,#af,#30
	db #ac,#30,#ac,#30,#ac,#30,#ac,#30
	db #b8,#30,#ac,#30,#ac,#30,#2c,#30
	db #02,#2c,#30,#02,#ac,#30,#b8,#30
	db #ac,#30,#ac,#30,#b8,#30,#ac,#30
	db #ac,#30,#ac,#30,#ac,#30,#b8,#30
	db #ac,#30,#ac,#30,#2c,#30,#02,#2c
	db #30,#02,#ac,#30,#b7,#30,#b6,#30
	db #b5,#30,#b4,#30,#ff,#40,#11,#10
	db #57,#8f,#10,#d7,#80,#cb,#80,#40
	db #41,#10,#57,#8f,#10,#cb,#80,#d7
	db #80,#40,#11,#10,#57,#8f,#10,#d7
	db #80,#cb,#80,#40,#41,#10,#57,#8f
	db #10,#cb,#80,#d7,#80,#40,#11,#10
	db #5a,#8f,#10,#da,#80,#ce,#80,#40
	db #41,#10,#5a,#8f,#10,#ce,#80,#da
	db #80,#40,#11,#10,#5a,#8f,#10,#da
	db #80,#ce,#80,#40,#41,#10,#5a,#8f
	db #10,#ce,#80,#da,#80,#40,#11,#10
	db #55,#8f,#10,#d5,#80,#c9,#80,#40
	db #41,#10,#55,#8f,#10,#c9,#80,#d5
	db #80,#40,#11,#10,#55,#8f,#10,#d5
	db #80,#c9,#80,#40,#41,#10,#55,#8f
	db #10,#c9,#80,#d5,#80,#40,#11,#10
	db #58,#8f,#10,#d8,#80,#cc,#80,#40
	db #41,#10,#58,#8f,#10,#cc,#80,#d8
	db #80,#40,#11,#10,#58,#8f,#10,#d8
	db #80,#cc,#80,#40,#41,#10,#58,#8f
	db #10,#cc,#80,#d8,#80,#ff,#72,#a1
	db #00,#1c,#c0,#40,#c0,#40,#c0,#40
	db #40,#40,#1d,#c0,#40,#c0,#40,#c0
	db #40,#c0,#40,#ff,#fe,#1c,#c0,#40
	db #c0,#40,#c0,#40,#40,#40,#1d,#c0
	db #40,#c0,#40,#c0,#40,#c0,#40,#ff
	db #40,#11,#10,#f2,#80,#f2,#80,#f2
	db #80,#c0,#40,#f2,#80,#f2,#80,#f2
	db #80,#c0,#10,#f2,#80,#f2,#80,#f2
	db #80,#c0,#40,#f2,#80,#f2,#80,#f2
	db #80,#c0,#10,#f2,#80,#f2,#80,#f2
	db #80,#c0,#40,#f2,#80,#f2,#80,#f2
	db #80,#c0,#10,#f2,#80,#f2,#80,#f2
	db #80,#c0,#40,#f2,#80,#f2,#80,#f2
	db #80,#c0,#10,#f2,#80,#f2,#80,#f2
	db #80,#c0,#40,#f2,#80,#f2,#80,#f2
	db #80,#c0,#10,#f2,#80,#f2,#80,#f2
	db #80,#c0,#40,#f2,#80,#f2,#80,#f2
	db #80,#c0,#40,#f2,#80,#c0,#40,#f2
	db #80,#c0,#40,#f2,#80,#c0,#40,#f2
	db #80,#c0,#40,#c0,#40,#c0,#40,#c0
	db #40,#c0,#40,#c0,#40,#c0,#40,#c0
	db #40,#ff,#40,#11,#10,#f2,#80,#f2
	db #80,#f2,#80,#c0,#40,#f2,#80,#f2
	db #80,#c0,#10,#f2,#80,#c0,#10,#c0
	db #10,#f2,#80,#c0,#40,#f2,#80,#f2
	db #80,#f2,#80,#c0,#10,#f2,#80,#f2
	db #80,#f2,#80,#c0,#40,#f2,#80,#c0
	db #10,#c0,#10,#c0,#10,#f2,#80,#f2
	db #80,#f2,#80,#c0,#40,#c0,#40,#f2
	db #80,#c0,#40,#c0,#10,#f2,#80,#f2
	db #80,#f2,#80,#c0,#40,#f2,#80,#f2
	db #80,#c0,#10,#f2,#80,#c0,#10,#c0
	db #10,#f2,#80,#c0,#40,#f2,#80,#f2
	db #80,#f2,#80,#c0,#10,#f2,#80,#f2
	db #80,#f2,#80,#c0,#40,#f2,#80,#c0
	db #10,#c0,#10,#c0,#10,#f2,#80,#f2
	db #80,#f2,#80,#c0,#40,#f2,#80,#c0
	db #40,#c0,#40,#ff
;
.music_info
	db "Odyssey - Turn Disk (1994)(TAF Production)()",0
	db "ST-128 Module",0

	read "music_end.asm"
