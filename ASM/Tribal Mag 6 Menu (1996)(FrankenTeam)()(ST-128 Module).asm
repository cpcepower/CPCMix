; Music of Tribal Mag 6 Menu (1996)(FrankenTeam)()(ST-128 Module)
; Ripped by Megachur the 03/12/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TRIBM6ME.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #9ac3

	read "music_header.asm"

	jp l9acc
	jp l9b60
	jp l9b44
;
.init_music
.l9acc
;
	xor a
	ld hl,la077
	call l9b3d
	ld hl,la0a5
	call l9b3d
	ld hl,la0d3
	call l9b3d
	ld ix,la073
	ld iy,la0fd
	ld de,#002e
	ld b,#03
.l9aec
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
	djnz l9aec
	ld hl,l9f8c
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
	ld (l9f88),hl
	ld (l9f8a),hl
	ld a,#0c
	ld c,d
	call l9f68
	ld a,#0d
	ld c,d
	jp l9f68
.l9b3d
	ld b,#2a
.l9b3f
	ld (hl),a
	inc hl
	djnz l9b3f
	ret
;
.stop_music
.l9b44
;
	ld a,#07
	ld c,#3f
	call l9f68
	ld a,#08
	ld c,#00
	call l9f68
	ld a,#09
	ld c,#00
	call l9f68
	ld a,#0a
	ld c,#00
	jp l9f68
;
.play_music
.l9b60
;
	ld hl,l9f8e
	dec (hl)
	ld ix,la073
	ld bc,la081
	call l9c02
	ld ix,la0a1
	ld bc,la0af
	call l9c02
	ld ix,la0cf
	ld bc,la0dd
	call l9c02
	ld hl,l9f87
	ld de,l9f8e
	ld b,#06
	call l9bdf
	ld b,#07
	call l9bdf
	ld b,#0b
	call l9bdf
	ld b,#0d
	call l9bdf
	ld de,l9f8e
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,la092
	call l9bb8
	ld hl,la0c0
	call l9bb8
	ld hl,la0ee
.l9bb8
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
	jr nz,l9bcd
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l9bcd
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
.l9bdf
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l9f68
.l9bea
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l9f68
.l9c02
	ld a,(l9f8e)
	or a
	jp nz,l9cba
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l9cba
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l9bea
	or a
	jp z,l9caf
	ld r,a
	and #7f
	cp #10
	jr c,l9c8a
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l9e02
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
	jr z,l9c63
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l9c63
	rrca
	ld c,a
	ld hl,la103
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
	jr z,l9c82
	ld (ix+#1e),b
.l9c82
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l9ca3
.l9c8a
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l9f93
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
.l9ca3
	ld a,d
	or a
	jr nz,l9cb1
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l9cb1
.l9caf
	ld a,(hl)
	inc hl
.l9cb1
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l9cba
	ld a,(ix+#17)
	or a
	jr nz,l9cd0
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l9cd0
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l9ce6
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l9ce6
	ld a,(ix+#0d)
	or a
	jr z,l9cf4
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l9d12
.l9cf4
	ld a,(ix+#1a)
	or a
	jp z,l9d19
	ld c,a
	cp #03
	jr nz,l9d01
	xor a
.l9d01
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l9d12
	ld a,(ix+#18)
	dec c
	jr z,l9d12
	ld a,(ix+#19)
.l9d12
	add (ix+#07)
	ld b,d
	call l9e02
.l9d19
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l9d41
	dec (ix+#1b)
	jr nz,l9d41
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l9d79
.l9d41
	ld a,(ix+#29)
	or a
	jr z,l9d79
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l9d70
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l9d67
	ld (ix+#29),#ff
	jr l9d70
.l9d67
	cp (ix+#2b)
	jr nz,l9d70
	ld (ix+#29),#01
.l9d70
	ld b,d
	or a
	jp p,l9d76
	dec b
.l9d76
	ld c,a
	jr l9d84
.l9d79
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l9d84
	pop hl
	bit 7,(ix+#14)
	jr z,l9d8d
	ld h,d
	ld l,d
.l9d8d
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l9f68
	ld c,h
	ld a,(ix+#02)
	call l9f68
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9de0
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l9dcf
	dec (ix+#09)
	jr nz,l9dcf
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l9dc7
	xor a
	jr l9dcc
.l9dc7
	cp #10
	jr nz,l9dcc
	dec a
.l9dcc
	ld (ix+#1e),a
.l9dcf
	ld a,b
	sub (ix+#1e)
	jr nc,l9dd6
	xor a
.l9dd6
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l9f68
.l9de0
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l9f8f)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l9dfe
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l9dfe
	ld (l9f8f),hl
	ret
.l9e02
	ld hl,l9fb1
	cp #61
	jr nc,l9e0c
	add a
	ld c,a
	add hl,bc
.l9e0c
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l9e16
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l9f3b
	ld (ix+#1e),a
	jp l9ca3
.l9e28
	dec b
.l9e29
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l9e34
	neg
.l9e34
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
	jp l9ca3
.l9e4a
	dec b
	jr l9e4e
.l9e4d
	inc b
.l9e4e
	call l9f3b
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l9ca3
.l9e5d
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
	jp l9f20
.l9e6e
	ld a,(hl)
	inc hl
	or a
	jr z,l9e90
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
.l9e90
	ld (ix+#29),a
	jp l9ca3
.l9e96
	dec hl
	ld a,(hl)
	and #0f
	ld (l9f92),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l9f91),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l9ca3
.l9eb0
	ld a,(hl)
	or a
	jr z,l9ec1
	call l9f3d
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l9ca3
.l9ec1
	ld hl,#0101
	ld (l9f8d),hl
	jp l9ca3
.l9eca
	call l9f3b
	ld (ix+#1e),a
	jp l9ca3
.l9ed3
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l9f4c
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l9f4c
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l9ca3
.l9ef5
	ld a,(hl)
	inc hl
	ld (l9f8c),a
	jp l9ca3
.l9efd
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
	jp l9ca3
.l9f1c
	call l9f3b
	add a
.l9f20
	ld b,#00
	ld c,a
	push hl
	ld hl,la183
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l9ca3
.l9f3b
	ld a,(hl)
	inc hl
.l9f3d
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
.l9f4c
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,la103
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l9f68
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
.l9f87
	ret
.l9f8f equ $ + 7
.l9f8e equ $ + 6
.l9f8d equ $ + 5
.l9f8c equ $ + 4
.l9f8a equ $ + 2
.l9f88
	db #1e,#38,#24,#08,#06,#32,#03,#1e
.l9f92 equ $ + 2
.l9f91 equ $ + 1
	db #38,#24,#08
.l9f93
	dw l9e16,l9e29,l9e28,l9e4d
	dw l9e4a,l9e5d,l9e6e,l9e96
	dw l9eb0,l9e96,l9eca,l9ed3
	dw l9ef5,l9efd,l9f1c
.l9fb1
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
.la073 equ $ + 2
	dw #000f,#0008
.la077 equ $ + 2
	db #01,#08,#77,#07,#00,#0c,#00,#00
.la081 equ $ + 4
	db #00,#00,#00,#00,#a3,#a1,#e3,#a1
	db #03,#a2,#00,#00,#04,#1c,#00,#00
.la092 equ $ + 5
	db #00,#00,#00,#00,#00,#01,#71,#a3
	db #46,#a3,#00,#00,#00,#00,#00,#00
.la0a1 equ $ + 4
	db #00,#00,#01,#01,#09,#02,#03,#10
.la0a5
	db #a7,#06,#10,#0e,#00,#00,#00,#00
.la0af equ $ + 2
	db #00,#00,#a3,#a1,#23,#a3,#03,#a2
	db #00,#00,#04,#1c,#00,#00,#00,#00
.la0c0 equ $ + 3
	db #00,#00,#00,#01,#f4,#a3,#4c,#a3
	db #00,#50,#00,#00,#00,#00,#00,#00
.la0d3 equ $ + 6
.la0cf equ $ + 2
	db #01,#01,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la0dd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la0ee equ $ + 1
	db #00,#33,#61,#a4,#52,#a3,#00,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
.la103 equ $ + 6
.la0fd
	db #43,#a3,#49,#a3,#4f,#a3,#a3,#a1
	db #e3,#a1,#03,#a2,#00,#00,#95,#5a
	db #95,#5a,#95,#5a,#00,#00,#95,#5a
	db #95,#5a,#95,#5a,#00,#00,#23,#a2
	db #63,#a2,#83,#a2,#00,#00,#a3,#a2
	db #e3,#a2,#03,#a3,#00,#00,#a3,#a1
	db #23,#a3,#03,#a2,#00,#00,#95,#5a
	db #95,#5a,#95,#5a,#00,#00,#95,#5a
	db #95,#5a,#95,#5a,#00,#00,#95,#5a
	db #95,#5a,#95,#5a,#00,#00,#95,#5a
	db #95,#5a,#95,#5a,#00,#00,#95,#5a
	db #95,#5a,#95,#5a,#00,#00,#95,#5a
	db #95,#5a,#95,#5a,#00,#00,#95,#5a
	db #95,#5a,#95,#5a,#00,#00,#95,#5a
	db #95,#5a,#95,#5a,#00,#00,#95,#5a
	db #95,#5a,#95,#5a,#00,#00,#95,#5a
.la183 equ $ + 6
	db #95,#5a,#95,#5a,#00,#00,#95,#5a
	db #95,#5a,#95,#5a,#95,#5a,#95,#5a
	db #95,#5a,#95,#5a,#95,#5a,#95,#5a
	db #95,#5a,#95,#5a,#95,#5a,#95,#5a
	db #95,#5a,#95,#5a,#95,#5a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#0a
	db #08,#06,#04,#02,#01,#03,#05,#03
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #00,#04,#00,#06,#00,#08,#00,#0a
	db #00,#0c,#00,#0e,#ff,#0f,#00,#02
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0c,#0b,#09,#08,#06,#05,#03,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #2f,#00,#5e,#00,#8d,#00,#bc,#00
	db #eb,#00,#1a,#01,#49,#01,#78,#01
	db #a7,#01,#d6,#01,#05,#02,#34,#02
	db #63,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#06,#05
	db #04,#02,#02,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#06
	db #0c,#12,#18,#1e,#04,#0a,#10,#16
	db #1c,#02,#08,#0e,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#08,#07,#07,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#55
	db #a3,#80,#43,#a3,#00,#d6,#a3,#80
	db #49,#a3,#00,#5f,#a4,#80,#4f,#a3
	db #c0,#30,#9c,#00,#9c,#00,#9c,#00
	db #c0,#40,#9c,#00,#9c,#00,#9c,#00
	db #c0,#30,#9c,#00,#c0,#30,#9c,#00
	db #c0,#40,#9c,#00,#9c,#00,#9c,#00
	db #c0,#30,#9c,#00,#9c,#00,#9c,#00
	db #c0,#40,#9c,#00,#9c,#00,#9c,#00
	db #c0,#30,#9c,#00,#c0,#40,#c0,#30
	db #9c,#00,#c0,#30,#c0,#40,#c0,#40
	db #c0,#30,#9c,#00,#9c,#00,#9c,#00
	db #c0,#40,#9c,#00,#9c,#00,#9c,#00
	db #c0,#30,#9c,#00,#c0,#30,#9c,#00
	db #c0,#40,#9c,#00,#9c,#00,#9c,#00
	db #c0,#30,#9c,#00,#9c,#00,#9c,#00
	db #c0,#40,#9c,#00,#9c,#00,#9c,#00
	db #c0,#30,#9c,#00,#c0,#40,#c0,#30
	db #9c,#00,#c0,#30,#c0,#40,#c0,#40
	db #ff,#2a,#58,#12,#02,#1e,#58,#24
	db #02,#2a,#58,#12,#02,#1e,#58,#24
	db #02,#2a,#58,#12,#02,#9e,#58,#24
	db #2a,#58,#12,#02,#9e,#58,#24,#2a
	db #58,#12,#02,#2d,#58,#0f,#02,#21
	db #58,#1e,#02,#2d,#58,#0f,#02,#21
	db #58,#1e,#02,#2c,#58,#10,#02,#a0
	db #58,#20,#2c,#58,#10,#02,#a0,#58
	db #20,#2c,#58,#10,#02,#2a,#58,#12
	db #02,#1e,#58,#24,#02,#2a,#58,#12
	db #02,#1e,#58,#24,#02,#2a,#58,#12
	db #02,#9e,#58,#24,#2a,#58,#12,#02
	db #9e,#58,#24,#2a,#58,#12,#02,#28
	db #58,#14,#02,#1c,#58,#28,#02,#28
	db #58,#14,#02,#1c,#58,#28,#02,#29
	db #58,#13,#02,#9d,#58,#26,#29,#58
	db #13,#02,#9d,#58,#26,#29,#58,#13
	db #02,#ff,#00,#40,#ff
;
.music_info
	db "Tribal Mag 6 Menu (1996)(FrankenTeam)()",0
	db "ST-128 Module",0

	read "music_end.asm"
