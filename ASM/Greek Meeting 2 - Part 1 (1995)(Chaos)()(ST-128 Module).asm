; Music of Greek Meeting 2 - Part 1 (1995)(Chaos)()(ST-128 Module)
; Ripped by Megachur the 02/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GREEM2P1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9b00

	read "music_header.asm"

	jr l9b04
	jr l9b13
.l9b04
	call l9b37
	ld hl,l9b24
	ld de,l9b1c
	ld bc,#81ff
	jp #bcd7
.l9b13
	ld hl,l9b24
	call #bcdd
	jp l9baf
.l9b1c
	push ix
	call l9bcb
	pop ix
	ret
.l9b24
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l9b37
	jp l9bcb
	jp l9baf
;
.init_music
.l9b37
;
	xor a
	ld hl,la0e2
	call l9ba8
	ld hl,la110
	call l9ba8
	ld hl,la13e
	call l9ba8
	ld ix,la0de
	ld iy,la168
	ld de,#002e
	ld b,#03
.l9b57
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
	djnz l9b57
	ld hl,l9ff7
	ld (hl),#08
	inc hl
	ld (hl),#20
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l9ff3),hl
	ld (l9ff5),hl
	ld a,#0c
	ld c,d
	call l9fd3
	ld a,#0d
	ld c,d
	jp l9fd3
.l9ba8
	ld b,#2a
.l9baa
	ld (hl),a
	inc hl
	djnz l9baa
	ret
;
.stop_music
.l9baf
;
	ld a,#07
	ld c,#3f
	call l9fd3
	ld a,#08
	ld c,#00
	call l9fd3
	ld a,#09
	ld c,#00
	call l9fd3
	ld a,#0a
	ld c,#00
	jp l9fd3
;
.play_music
.l9bcb
;
	ld hl,l9ff9
	dec (hl)
	ld ix,la0de
	ld bc,la0ec
	call l9c6d
	ld ix,la10c
	ld bc,la11a
	call l9c6d
	ld ix,la13a
	ld bc,la148
	call l9c6d
	ld hl,l9ff2
	ld de,l9ff9
	ld b,#06
	call l9c4a
	ld b,#07
	call l9c4a
	ld b,#0b
	call l9c4a
	ld b,#0d
	call l9c4a
	ld de,l9ff9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,la0fd
	call l9c23
	ld hl,la12b
	call l9c23
	ld hl,la159
.l9c23
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
	jr nz,l9c38
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l9c38
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
.l9c4a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l9fd3
.l9c55
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l9fd3
.l9c6d
	ld a,(l9ff9)
	or a
	jp nz,l9d25
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l9d25
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l9c55
	or a
	jp z,l9d1a
	ld r,a
	and #7f
	cp #10
	jr c,l9cf5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l9e6d
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
	jr z,l9cce
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l9cce
	rrca
	ld c,a
	ld hl,la16e
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
	jr z,l9ced
	ld (ix+#1e),b
.l9ced
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l9d0e
.l9cf5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l9ffe
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
	add a
.l9d0e
	ld a,d
	or a
	jr nz,l9d1c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l9d1c
.l9d1a
	ld a,(hl)
	inc hl
.l9d1c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l9d25
	ld a,(ix+#17)
	or a
	jr nz,l9d3b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l9d3b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l9d51
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l9d51
	ld a,(ix+#0d)
	or a
	jr z,l9d5f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l9d7d
.l9d5f
	ld a,(ix+#1a)
	or a
	jp z,l9d84
	ld c,a
	cp #03
	jr nz,l9d6c
	xor a
.l9d6c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l9d7d
	ld a,(ix+#18)
	dec c
	jr z,l9d7d
	ld a,(ix+#19)
.l9d7d
	add (ix+#07)
	ld b,d
	call l9e6d
.l9d84
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l9dac
	dec (ix+#1b)
	jr nz,l9dac
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l9de4
.l9dac
	ld a,(ix+#29)
	or a
	jr z,l9de4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l9ddb
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l9dd2
	ld (ix+#29),#ff
	jr l9ddb
.l9dd2
	cp (ix+#2b)
	jr nz,l9ddb
	ld (ix+#29),#01
.l9ddb
	ld b,d
	or a
	jp p,l9de1
	dec b
.l9de1
	ld c,a
	jr l9def
.l9de4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l9def
	pop hl
	bit 7,(ix+#14)
	jr z,l9df8
	ld h,d
	ld l,d
.l9df8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l9fd3
	ld c,h
	ld a,(ix+#02)
	call l9fd3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9e4b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l9e3a
	dec (ix+#09)
	jr nz,l9e3a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l9e32
	xor a
	jr l9e37
.l9e32
	cp #10
	jr nz,l9e37
	dec a
.l9e37
	ld (ix+#1e),a
.l9e3a
	ld a,b
	sub (ix+#1e)
	jr nc,l9e41
	xor a
.l9e41
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l9fd3
.l9e4b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l9ffa)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l9e69
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l9e69
	ld (l9ffa),hl
	ret
.l9e6d
	ld hl,la01c
	cp #61
	jr nc,l9e77
	add a
	ld c,a
	add hl,bc
.l9e77
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l9e81
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l9fa6
	ld (ix+#1e),a
	jp l9d0e
.l9e93
	dec b
.l9e94
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l9e9f
	neg
.l9e9f
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
	jp l9d0e
.l9eb5
	dec b
	jr l9eb9
.l9eb8
	inc b
.l9eb9
	call l9fa6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l9d0e
.l9ec8
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
	jp l9f8b
.l9ed9
	ld a,(hl)
	inc hl
	or a
	jr z,l9efb
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
.l9efb
	ld (ix+#29),a
	jp l9d0e
.l9f01
	dec hl
	ld a,(hl)
	and #0f
	ld (l9ffd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l9ffc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l9d0e
.l9f1b
	ld a,(hl)
	or a
	jr z,l9f2c
	call l9fa8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l9d0e
.l9f2c
	ld hl,#0101
	ld (l9ff8),hl
	jp l9d0e
.l9f35
	call l9fa6
	ld (ix+#1e),a
	jp l9d0e
.l9f3e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l9fb7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l9fb7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l9d0e
.l9f60
	ld a,(hl)
	inc hl
	ld (l9ff7),a
	jp l9d0e
.l9f68
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
	jp l9d0e
.l9f87
	call l9fa6
	add a
.l9f8b
	ld b,#00
	ld c,a
	push hl
	ld hl,la1ee
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l9d0e
.l9fa6
	ld a,(hl)
	inc hl
.l9fa8
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
.l9fb7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,la16e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l9fd3
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
.l9ff2
	ret
.l9ffa equ $ + 7
.l9ff9 equ $ + 6
.l9ff8 equ $ + 5
.l9ff7 equ $ + 4
.l9ff5 equ $ + 2
.l9ff3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9ffd equ $ + 2
.l9ffc equ $ + 1
	db #38,#00,#00
.l9ffe
	dw l9e81,l9e94,l9e93,l9eb8
	dw l9eb5,l9ec8,l9ed9,l9f01
	dw l9f1b,l9f01,l9f35,l9f3e
	dw l9f60,l9f68,l9f87
.la01c
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
.la0e2 equ $ + 4
.la0de
	db #08,#00,#01,#08,#00,#00,#00,#00
.la0ec equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la0fd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la10c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.la110 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.la11a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la12b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la13a equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.la13e
	db #00,#00,#00,#00,#00,#00,#00,#00
.la148 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la159 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la168 equ $ + 2
	db #00,#00,#6e,#a4,#89,#a4,#a4,#a4
.la16e
	db #0e,#a2,#4e,#a2,#6e,#a2,#00,#00
	db #00,#b6,#00,#b6,#00,#b6,#00,#00
	db #8e,#a2,#ce,#a2,#ee,#a2,#00,#00
	db #00,#b6,#00,#b6,#00,#b6,#00,#00
	db #0e,#a3,#4e,#a3,#6e,#a2,#08,#18
	db #0e,#a2,#6e,#a3,#6e,#a2,#00,#00
	db #8e,#a3,#ce,#a3,#6e,#a2,#10,#10
	db #00,#b6,#00,#b6,#00,#b6,#00,#00
	db #ee,#a3,#2e,#a4,#6e,#a2,#00,#00
	db #00,#b6,#00,#b6,#00,#b6,#00,#00
	db #00,#b6,#00,#b6,#00,#b6,#00,#00
	db #00,#b6,#00,#b6,#00,#b6,#00,#00
	db #00,#b6,#00,#b6,#00,#b6,#00,#00
	db #00,#b6,#00,#b6,#00,#b6,#00,#00
	db #00,#b6,#00,#b6,#00,#b6,#00,#00
	db #00,#b6,#00,#b6,#00,#b6,#00,#00
.la1ee
	db #00,#b6,#4e,#a4,#00,#b6,#00,#b6
	db #00,#b6,#00,#b6,#00,#b6,#00,#b6
	db #00,#b6,#00,#b6,#00,#b6,#00,#b6
	db #00,#b6,#00,#b6,#00,#b6,#00,#b6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0b,#0b,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#09,#07,#05,#03,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0e,#0e,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#01,#00
	db #05,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #09,#0a,#0b,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0e,#0d,#0c,#0b,#0a,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#01
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#08,#09,#09,#0a,#0a,#0b,#0b
	db #0b,#0b,#0b,#0b,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #03,#00,#03,#00,#04,#00,#04,#00
	db #05,#00,#05,#00,#06,#00,#06,#00
	db #07,#00,#07,#00,#08,#00,#08,#00
	db #09,#00,#09,#00,#0a,#00,#0a,#00
	db #0b,#00,#0b,#00,#0c,#00,#0c,#00
	db #0d,#00,#0d,#00,#0e,#00,#0e,#00
	db #0f,#00,#0f,#00,#10,#00,#10,#00
	db #0c,#0c,#0c,#0c,#0c,#0c,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #00,#bf,#a4,#00,#f7,#a4,#00,#2e
	db #a5,#00,#65,#a5,#00,#95,#a5,#00
	db #b3,#a5,#00,#95,#a5,#00,#e5,#a5
	db #80,#6e,#a4,#00,#95,#a5,#00,#b3
	db #a5,#00,#95,#a5,#00,#e5,#a5,#00
	db #fd,#a5,#00,#1c,#a6,#00,#fd,#a5
	db #00,#4e,#a6,#80,#89,#a4,#00,#67
	db #a6,#00,#96,#a6,#00,#c6,#a6,#00
	db #67,#a6,#00,#67,#a6,#00,#96,#a6
	db #00,#c6,#a6,#00,#67,#a6,#80,#a4
	db #a4,#28,#0d,#08,#02,#a8,#00,#a8
	db #00,#39,#20,#02,#a8,#00,#28,#00
	db #02,#a8,#00,#28,#00,#02,#39,#20
	db #02,#a8,#00,#a8,#00,#28,#00,#02
	db #a8,#00,#a8,#00,#39,#20,#02,#a8
	db #00,#28,#00,#02,#a8,#00,#28,#00
	db #02,#39,#20,#02,#a8,#00,#a8,#00
	db #ff,#26,#00,#02,#a6,#00,#a6,#00
	db #39,#20,#02,#a6,#00,#26,#00,#02
	db #a6,#00,#26,#00,#02,#39,#20,#02
	db #a6,#00,#a6,#00,#26,#00,#02,#a6
	db #00,#a6,#00,#39,#20,#02,#a6,#00
	db #26,#00,#02,#a6,#00,#26,#00,#02
	db #39,#20,#02,#a6,#00,#a6,#00,#ff
	db #2d,#00,#02,#ad,#00,#ad,#00,#39
	db #20,#02,#ad,#00,#2d,#00,#02,#ad
	db #00,#2d,#00,#02,#39,#20,#02,#ad
	db #00,#ad,#00,#2d,#00,#02,#ad,#00
	db #ad,#00,#39,#20,#02,#ad,#00,#2d
	db #00,#02,#ad,#00,#2d,#00,#02,#39
	db #20,#02,#ad,#00,#ad,#00,#ff,#28
	db #00,#02,#a8,#00,#a8,#00,#39,#20
	db #02,#a8,#00,#28,#00,#02,#a8,#00
	db #28,#00,#02,#39,#20,#02,#2c,#00
	db #02,#28,#00,#02,#2d,#00,#02,#39
	db #20,#02,#2f,#00,#04,#2d,#00,#02
	db #39,#20,#02,#2d,#00,#02,#ff,#53
	db #40,#0e,#d1,#40,#d0,#40,#51,#40
	db #02,#d0,#40,#4c,#40,#02,#ca,#40
	db #4c,#40,#04,#4c,#40,#02,#50,#40
	db #02,#53,#40,#02,#ff,#51,#40,#02
	db #d0,#40,#51,#40,#02,#d0,#40,#d1
	db #40,#d0,#40,#4c,#40,#06,#ca,#40
	db #c7,#40,#ca,#40,#cc,#40,#4c,#40
	db #02,#4c,#40,#02,#ca,#40,#c7,#40
	db #53,#40,#02,#53,#40,#02,#d1,#40
	db #d0,#40,#cc,#40,#ca,#40,#ff,#58
	db #40,#10,#58,#80,#02,#56,#80,#02
	db #54,#80,#02,#52,#80,#03,#50,#80
	db #03,#4e,#80,#02,#fe,#02,#ff,#00
	db #01,#53,#60,#0e,#d1,#60,#d0,#60
	db #51,#60,#02,#d0,#60,#4c,#60,#02
	db #ca,#60,#4c,#60,#04,#4c,#60,#02
	db #50,#60,#02,#d3,#60,#ff,#00,#01
	db #51,#60,#02,#d0,#60,#51,#60,#02
	db #d0,#60,#d1,#60,#d0,#60,#4c,#60
	db #06,#ca,#60,#c7,#60,#ca,#60,#cc
	db #60,#4c,#60,#02,#4c,#60,#02,#ca
	db #60,#c7,#60,#53,#60,#02,#53,#60
	db #02,#d1,#60,#d0,#60,#cc,#60,#ff
	db #00,#01,#58,#60,#10,#58,#80,#02
	db #56,#80,#02,#54,#80,#02,#52,#80
	db #03,#50,#80,#03,#ce,#80,#fe,#02
	db #ff,#4c,#5f,#21,#cc,#50,#4c,#50
	db #04,#cc,#50,#4c,#50,#02,#cc,#50
	db #4c,#50,#02,#cc,#50,#4c,#50,#02
	db #4c,#50,#02,#cc,#50,#4c,#50,#04
	db #cc,#50,#4c,#50,#02,#cc,#50,#4c
	db #50,#02,#cc,#50,#4c,#50,#02,#ff
	db #4a,#5f,#21,#ca,#50,#4a,#50,#04
	db #ca,#50,#4a,#50,#02,#ca,#50,#4a
	db #50,#02,#ca,#50,#4a,#50,#02,#4a
	db #50,#02,#ca,#50,#4a,#50,#04,#ca
	db #50,#4a,#50,#02,#ca,#50,#4a,#50
	db #02,#ca,#50,#ca,#50,#ca,#50,#ff
	db #51,#5f,#21,#d1,#50,#51,#50,#04
	db #d1,#50,#51,#50,#02,#d1,#50,#51
	db #50,#02,#d1,#50,#51,#50,#02,#51
	db #50,#02,#d1,#50,#51,#50,#04,#d1
	db #50,#51,#50,#02,#d1,#50,#51,#50
	db #02,#d1,#50,#51,#50,#02,#ff,#3a
	db #20,#b8,#3b,#00,#20,#d3,#00,#00
	db #07,#00,#00,#00,#00,#10,#a9,#ff
	db #f0,#bf,#ff,#00,#47,#4d,#44,#32
	db #20,#20,#20,#20,#a0,#20,#20,#00
	db #00,#00,#5c,#b0,#b1,#b2,#b3,#b4
	db #b5,#b6,#b7,#b8,#b9,#ba,#bb,#00
	db #00,#00,#00,#5c,#00,#00,#ff
;
.music_info
	db "Greek Meeting 2 - Part 1 (1995)(Chaos)()",0
	db "ST-128 Module",0

	read "music_end.asm"
