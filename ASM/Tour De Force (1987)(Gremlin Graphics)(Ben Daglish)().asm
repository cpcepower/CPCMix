; Music of Tour De Force (1987)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 27/07/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TOURDEFO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #5c9c

	read "music_header.asm"

	jr l5ca9
	jr #5c4f
	call l5f4c
.l5ca3
	halt
	halt
	halt
	halt
	halt
	halt
.l5ca9
	call l5f4f
	ld a,(l5f52)
	and a
	jr nz,l5ca3
	ret
.l5cb9 equ $ + 6
.l5cb8 equ $ + 5
.l5cb7 equ $ + 4
.l5cb4 equ $ + 1
.l5cb3
	db #3f,#fe,#f7,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5cca equ $ + 7
.l5cc9 equ $ + 6
.l5cc6 equ $ + 3
	db #00,#00,#00,#fd,#ef,#12,#00,#00
.l5ccb
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5cd8 equ $ + 5
	db #00,#00,#00,#00,#00,#fb,#df,#24
.l5cdd equ $ + 2
.l5cdc equ $ + 1
.l5cdb
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5cea equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5ceb
	di
	ld a,ly
	ld (ix+#0f),a
	ld a,hy
	ld (ix+#10),a
	ld (ix+#03),l
	ld (ix+#04),h
	ld (ix+#06),c
	ld a,(iy+#05)
	ld (ix+#07),a
	ld a,(iy+#06)
	and #7f
	srl a
	jr nz,l5d10
	ld a,#01
.l5d10
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l5cb3)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l5d39
	and (ix+#00)
.l5d39
	bit 1,c
	jr z,l5d40
	and (ix+#01)
.l5d40
	ld (l5cb3),a
	bit 2,c
	jr nz,l5d52
	ld hl,l5e81
	ld (ix+#0d),l
	ld (ix+#0e),h
	ei
	ret
.l5d52
	ld de,#c000
	ld hl,#f680
	ld a,(iy+#00)
	ld c,#0d
	call l5f39
	ld a,(iy+#04)
	ld c,#0b
	call l5f39
	inc c
	xor a
	call l5f39
	ld (ix+#05),#ff
	ei
	ret
.l5d73
	ld de,#c000
	ld hl,#f680
	ld c,#07
	ld a,(l5cb3)
	or #3f
	ld (l5cb3),a
	call l5f39
	xor a
.l5d87
	inc c
	call l5f39
	inc c
	call l5f39
	inc c
	jp l5f39
.l5d93
	ld a,(l5cb3)
	and #3f
	cp #3f
	ret z
	ld ix,l5cb4
	call l5e4f
	ld ix,l5cc6
	call l5e4f
	ld ix,l5cd8
	call l5e4f
	ld de,#c000
	ld hl,#f680
	ld ix,l5cb4
	ld c,#07
	ld a,(l5cb3)
	call l5f39
	ld c,#00
	ld a,(l5cb7)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l5dd4
	ld (l5cea),a
.l5dd4
	call l5f39
	inc c
	ld a,(l5cb8)
	adc (ix+#0a)
	call l5f39
	inc c
	ld a,(l5cc9)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l5df2
	ld (l5cea),a
.l5df2
	call l5f39
	inc c
	ld a,(l5cca)
	adc (ix+#1c)
	call l5f39
	inc c
	ld a,(l5cdb)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l5e10
	ld (l5cea),a
.l5e10
	call l5f39
	inc c
	ld a,(l5cdc)
	adc (ix+#2e)
	call l5f39
	inc c
	ld a,(l5cea)
	rrca
	rrca
	rrca
	call l5f39
	ld c,#08
	ld a,(l5cb9)
	srl a
	srl a
	srl a
	call l5f39
	inc c
	ld a,(l5ccb)
	srl a
	srl a
	srl a
	call l5f39
	inc c
	ld a,(l5cdd)
	srl a
	srl a
	srl a
	jp l5f39
.l5e4f
	ld a,(l5cb3)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l5e70
	cp #ff
	jr z,l5e70
	dec (ix+#06)
.l5e70
	call l5ef7
	bit 2,(iy+#09)
	jp nz,l5ef0
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l5e81
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l5e90
	ld (ix+#05),a
	ret
.l5e90
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l5ea0
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l5ea0
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l5eb2
	cp (iy+#02)
	jr c,l5eb2
	ld (ix+#05),a
	ret
.l5eb2
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l5ec2
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l5ec2
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l5ed1
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l5ed1
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l5ede
	ld (ix+#05),a
	ret
.l5ede
	ld (ix+#05),#00
	ld a,(l5cb3)
	or (ix+#02)
	ld (l5cb3),a
	res 7,(ix+#11)
	ret
.l5ef0
	ld a,(ix+#06)
	and a
	ret nz
	jr l5ede
.l5ef7
	ld a,(ix+#07)
	and a
	jr z,l5f04
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l5f04
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld c,(ix+#0b)
	ld b,(ix+#0c)
	add hl,bc
	ld (ix+#09),l
	ld (ix+#0a),h
	dec (ix+#08)
	ret nz
	ld a,(iy+#06)
	and a
	ret z
	jp p,l5f28
	ld (ix+#07),#ff
	ret
.l5f28
	ld (ix+#08),a
	ld a,c
	cpl
	ld c,a
	ld a,b
	cpl
	ld b,a
	inc bc
	ld (ix+#0b),c
	ld (ix+#0c),b
	ret
.l5f39
	ld b,#f4
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ld b,#f4
	out (c),a
	ld b,h
	out (c),l
	out (c),e
	ret
.l5f4c
	jp l5fdc
.l5f4f
	jp l6064
.music_end
.l5f52
	db #00
	jp l5f5d
	xor a
	ld (l5f52),a
	jp l5d73
.l5f5d
	di
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l64a7
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l5cb4
	call l5ceb
	set 7,(ix+#11)
	ei
	ret
.l5f8c equ $ + 7
.l5f86 equ $ + 1
.l5f85
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f94 equ $ + 7
.l5f92 equ $ + 5
.l5f91 equ $ + 4
.l5f90 equ $ + 3
.l5f8f equ $ + 2
.l5f8e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f9b equ $ + 6
.l5f9a equ $ + 5
	db #00,#00,#00,#00,#00,#08,#00,#00
.l5fa4 equ $ + 7
.l5fa3 equ $ + 6
.l5fa1 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5fa9 equ $ + 4
.l5fa7 equ $ + 2
.l5fa6 equ $ + 1
.l5fa5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5fb0 equ $ + 3
.l5faf equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.l5fbc equ $ + 7
.l5fbb equ $ + 6
.l5fba equ $ + 5
.l5fb9 equ $ + 4
.l5fb8 equ $ + 3
.l5fb6 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5fc4 equ $ + 7
.l5fbe equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music
.l5fdc
;
	push af
	call l5d73
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l63f1
	add l
	ld l,a
	jr nc,l5fed
	inc h
.l5fed
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l5f86),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l5f9b),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l5fb0),de
	xor a
	ld (l5f8f),a
	ld (l5fa4),a
	ld (l5fb9),a
	ld (l5f94),a
	ld (l5fa9),a
	ld (l5fbe),a
	cpl
	ld (l5f90),a
	ld (l5fa5),a
	ld (l5fba),a
	ld a,#01
	ld (l5f8e),a
	ld (l5fa3),a
	ld (l5fb8),a
	ld (l5f91),a
	ld (l5fa6),a
	ld (l5fbb),a
	ld hl,l5fc4
	ld bc,#030a
.l603c
	xor a
.l603d
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l603d
	djnz l603c
	ld hl,l6453
	ld (l5f8c),hl
	ld (l5fa1),hl
	ld (l5fb6),hl
	ld a,#ff
	ld (l5f92),a
	ld (l5fa7),a
	ld (l5fbc),a
	ld (l5f52),a
	ret
;
.play_music
.l6064
;
	call l5d93
	ld a,(l5f52)
	and a
	ret z
	ld a,(l5f92)
	ld hl,l5fa7
	or (hl)
	ld hl,l5fbc
	or (hl)
	ld (l5f52),a
	jr nz,l608e
	xor a
	ld (l5f52),a
	ld a,(l5cb3)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l5f52),a
	ret
.l608e
	ld iy,l5f85
	ld ix,l5cb4
	call l60ac
	ld iy,l5f9a
	ld ix,l5cc6
	call l60ac
	ld iy,l5faf
	ld ix,l5cd8
.l60ac
	call l61ed
	ld a,(iy+#0b)
	and a
	jr z,l6131
.l60b5
	dec (iy+#09)
	jr z,l60cc
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l6131
.l60cc
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l60d6
	ld a,(hl)
	cp #80
	jr c,l6111
	cp #fe
	jr nz,l60e8
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l60d6
.l60e8
	cp #ff
	jr nz,l60f1
	xor a
	ld (iy+#0d),a
	ret
.l60f1
	cp #c0
	jr nc,l60fe
	and #1f
	ld (iy+#09),a
	inc hl
	jp l60d6
.l60fe
	and #07
	add (iy+#00)
	ld de,l5fc4
	add e
	ld e,a
	jr nc,l610b
	inc d
.l610b
	inc hl
	ldi
	jp l60d6
.l6111
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l63db
	add hl,bc
	ld e,(hl)
	ld hl,l63e6
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l6137
.l6131
	ld e,(iy+#05)
	ld d,(iy+#06)
.l6137
	dec (iy+#0c)
	jr z,l6149
	ld a,(de)
	cp #80
	call nc,l61b3
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l6149
	ld a,(de)
	cp #80
	jr c,l615a
	call l61b3
	ld a,(iy+#0b)
	and a
	jr z,l6149
	jp l60b5
.l615a
	cp #7f
	jr z,l61a6
	cp #7e
	jr nz,l616b
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l6187
.l616b
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l64b4
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(iy+#0f)
	or #c0
	ld (iy+#14),a
.l6187
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld c,a
	ld (iy+#05),e
	ld (iy+#06),d
	ld e,(iy+#07)
	ld a,(iy+#08)
	ld hy,a
	ld ly,e
	bit 7,(ix+#11)
	ret nz
	jp l5ceb
.l61a6
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l61b3
	ld a,(de)
	cp #88
	jr nc,l61d1
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l5fc4
	add hl,bc
	ld c,(hl)
	ld hl,l6453
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l61d1
	cp #ff
	jr nz,l61da
	ld (iy+#0b),#ff
	ret
.l61da
	cp #c0
	jr nc,l61e5
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l61e5
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l61ed
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l61fc
	res 7,(iy+#14)
	ret
.l61fc
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l6230
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l6230
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l621f
	inc h
	ld (iy+#11),h
.l621f
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l6265
.l6230
	ld hl,l5d87
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l624a
	bit 6,(iy+#14)
	jr nz,l624a
	ld (iy+#13),#01
	ret
.l624a
	res 6,(iy+#14)
	ld a,(hl)
	rrca
	rrca
	rrca
	and d
	ld (iy+#12),a
	ld a,(hl)
	and d
	inc a
	ld (iy+#13),a
	ld (iy+#10),l
	ld (iy+#11),h
	ld a,(iy+#0e)
.l6265
	add a
	ld hl,l64b4
	add l
	ld l,a
	jr nc,l626e
	inc h
.l626e
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
	db #90,#80,#7e,#29,#00,#0d,#7e,#29
	db #00,#35,#ff,#7f,#21,#ff,#82,#91
	db #2a,#0c,#2a,#0c,#2a,#0c,#2a,#0c
	db #2a,#0c,#2a,#0c,#2a,#0c,#2a,#0c
	db #ff,#82,#91,#28,#0c,#28,#0c,#28
	db #0c,#92,#27,#0c,#27,#0c,#27,#0c
	db #27,#0c,#27,#0c,#ff,#7f,#0c,#ff
	db #81,#0d,#0c,#06,#0c,#7f,#0c,#83
	db #12,#0c,#7f,#24,#12,#0c,#81,#12
	db #0c,#10,#18,#83,#12,#0c,#81,#0f
	db #18,#0b,#0c,#83,#12,#0c,#ff,#85
	db #2e,#18,#2e,#18,#2e,#0c,#2c,#0c
	db #2a,#0c,#36,#3c,#33,#0c,#31,#0c
	db #33,#0c,#31,#24,#33,#0c,#31,#0c
	db #2d,#0c,#2c,#0c,#2a,#0c,#36,#3c
	db #39,#06,#38,#06,#36,#06,#33,#0c
	db #31,#06,#33,#06,#36,#06,#ff,#85
	db #2d,#06,#2e,#06,#36,#06,#2d,#06
	db #2e,#06,#36,#06,#2d,#06,#2e,#06
	db #36,#06,#2d,#06,#2e,#06,#36,#06
	db #2c,#06,#2d,#06,#2e,#06,#36,#06
	db #39,#06,#38,#0c,#36,#0c,#34,#0c
	db #31,#12,#2f,#06,#2e,#06,#2f,#06
	db #31,#06,#2f,#06,#2d,#06,#2e,#06
	db #36,#ba,#ff,#81,#0d,#0c,#0e,#18
	db #83,#12,#0c,#81,#10,#18,#10,#0c
	db #83,#12,#0c,#81,#0b,#18,#0b,#0c
	db #83,#12,#0c,#81,#0b,#0c,#0b,#18
	db #83,#12,#0c,#12,#06,#12,#06,#81
	db #0e,#18,#83,#12,#0c,#81,#10,#18
	db #10,#0c,#83,#12,#0c,#81,#1e,#0c
	db #ff,#82,#92,#2a,#0c,#2a,#0c,#2a
	db #0c,#91,#28,#0c,#28,#0c,#28,#0c
	db #28,#0c,#92,#27,#0c,#27,#0c,#27
	db #0c,#27,#0c,#27,#0c,#27,#0c,#27
	db #0c,#27,#0c,#27,#0c,#2a,#0c,#2a
	db #0c,#2a,#0c,#91,#28,#0c,#28,#0c
	db #28,#0c,#28,#0c,#28,#0c,#2a,#0c
	db #ff,#85,#39,#0c,#36,#18,#34,#18
	db #36,#0c,#38,#0c,#36,#24,#32,#06
	db #33,#06,#3b,#06,#32,#06,#33,#06
	db #3b,#06,#32,#06,#33,#06,#3b,#06
	db #32,#06,#33,#06,#3b,#06,#39,#0c
	db #36,#18,#34,#18,#31,#0c,#2f,#0c
	db #31,#18,#ff
.l63db
	db #78,#83,#86,#99,#ad,#b0,#cf,#ff
	db #3b,#71,#a9
.l63e6
	db #62,#62,#62,#62,#62,#62,#62,#62
	db #63,#63,#63
.l63f1
	dw l63fd,l6425,l643b,l63fd
	dw l6425,l643b
.l63fd
	db #00,#00,#01,#01,#83,#02,#03,#02
	db #03,#02,#03,#02,#03,#fe,#02,#02
	db #03,#02,#03,#02,#03,#02,#03,#fe
	db #04,#02,#03,#02,#03,#02,#03,#02
	db #03,#09,#01,#fe,#00,#00,#00,#ff
.l6425
	db #c3,#28,#86,#01,#8f,#04,#84,#05
	db #fe,#02,#c3,#1e,#84,#05,#fe,#04
.l643b equ $ + 6
	db #84,#05,#08,#85,#01,#ff,#86,#01
	db #90,#04,#90,#04,#90,#04,#90,#04
	db #90,#04,#fe,#02,#06,#06,#fe,#04
.l6453 equ $ + 6
	db #07,#07,#0a,#85,#01,#ff,#7f,#fe
	db #01,#fc,#7f,#00,#01,#04,#00,#01
	db #79,#fd,#01,#fc,#7f,#00,#04,#02
	db #00,#01,#7f,#fb,#01,#fd,#64,#00
	db #03,#01,#00,#01,#7f,#fd,#01,#ff
	db #7f,#00,#00,#01,#01,#03,#7f,#fd
	db #03,#ff,#7f,#ff,#00,#00,#00,#00
	db #64,#fe,#03,#ff,#7a,#00,#04,#01
	db #00,#01,#8a,#21,#39,#00,#00,#00
	db #00,#00,#8a,#19,#41,#00,#00,#00
	db #00,#00,#8a,#19,#39,#00,#00,#00
	db #00,#00
.l64a7
	db #00,#00,#00,#00,#7f,#00,#00,#00
	db #00,#00,#00,#00,#00
.l64b4
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
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
	dw #0018
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.music_info
	db "Tour De Force (1987)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
