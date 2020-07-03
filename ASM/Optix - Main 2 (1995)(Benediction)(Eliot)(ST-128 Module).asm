; Music of Optix - Main 2 (1995)(Benediction)(Eliot)(ST-128 Module)
; Ripped by Megachur the 12/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OPTIXMA2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8944

	read "music_header.asm"

	jr l8948
	jr l8957
.l8948
	call l897b
	ld hl,l8968
	ld de,l8960
	ld bc,#81ff
	jp #bcd7
.l8957
	ld hl,l8968
	call #bcdd
	jp l89f3
.l8960
	push ix
	call l8a0f
	pop ix
	ret
.l8968
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l897b
	jp l8a0f
	jp l89f3
;
.init_music
.l897b
;
	xor a
	ld hl,l8f26
	call l89ec
	ld hl,l8f54
	call l89ec
	ld hl,l8f82
	call l89ec
	ld ix,l8f22
	ld iy,l8fac
	ld de,#002e
	ld b,#03
.l899b
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
	djnz l899b
	ld hl,l8e3b
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
	ld (l8e37),hl
	ld (l8e39),hl
	ld a,#0c
	ld c,d
	call l8e17
	ld a,#0d
	ld c,d
	jp l8e17
.l89ec
	ld b,#2a
.l89ee
	ld (hl),a
	inc hl
	djnz l89ee
	ret
;
.stop_music
.l89f3
;
	ld a,#07
	ld c,#3f
	call l8e17
	ld a,#08
	ld c,#00
	call l8e17
	ld a,#09
	ld c,#00
	call l8e17
	ld a,#0a
	ld c,#00
	jp l8e17
;
.play_music
.l8a0f
;
	ld hl,l8e3d
	dec (hl)
	ld ix,l8f22
	ld bc,l8f30
	call l8ab1
	ld ix,l8f50
	ld bc,l8f5e
	call l8ab1
	ld ix,l8f7e
	ld bc,l8f8c
	call l8ab1
	ld hl,l8e36
	ld de,l8e3d
	ld b,#06
	call l8a8e
	ld b,#07
	call l8a8e
	ld b,#0b
	call l8a8e
	ld b,#0d
	call l8a8e
	ld de,l8e3d
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l8f41
	call l8a67
	ld hl,l8f6f
	call l8a67
	ld hl,l8f9d
.l8a67
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
	jr nz,l8a7c
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l8a7c
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
.l8a8e
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l8e17
.l8a99
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l8e17
.l8ab1
	ld a,(l8e3d)
	or a
	jp nz,l8b69
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l8b69
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l8a99
	or a
	jp z,l8b5e
	ld r,a
	and #7f
	cp #10
	jr c,l8b39
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l8cb1
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
	jr z,l8b12
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l8b12
	rrca
	ld c,a
	ld hl,l8fb2
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
	jr z,l8b31
	ld (ix+#1e),b
.l8b31
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l8b52
.l8b39
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l8e42
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
.l8b52
	ld a,d
	or a
	jr nz,l8b60
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l8b60
.l8b5e
	ld a,(hl)
	inc hl
.l8b60
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l8b69
	ld a,(ix+#17)
	or a
	jr nz,l8b7f
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l8b7f
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l8b95
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l8b95
	ld a,(ix+#0d)
	or a
	jr z,l8ba3
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l8bc1
.l8ba3
	ld a,(ix+#1a)
	or a
	jp z,l8bc8
	ld c,a
	cp #03
	jr nz,l8bb0
	xor a
.l8bb0
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l8bc1
	ld a,(ix+#18)
	dec c
	jr z,l8bc1
	ld a,(ix+#19)
.l8bc1
	add (ix+#07)
	ld b,d
	call l8cb1
.l8bc8
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l8bf0
	dec (ix+#1b)
	jr nz,l8bf0
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l8c28
.l8bf0
	ld a,(ix+#29)
	or a
	jr z,l8c28
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l8c1f
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l8c16
	ld (ix+#29),#ff
	jr l8c1f
.l8c16
	cp (ix+#2b)
	jr nz,l8c1f
	ld (ix+#29),#01
.l8c1f
	ld b,d
	or a
	jp p,l8c25
	dec b
.l8c25
	ld c,a
	jr l8c33
.l8c28
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l8c33
	pop hl
	bit 7,(ix+#14)
	jr z,l8c3c
	ld h,d
	ld l,d
.l8c3c
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l8e17
	ld c,h
	ld a,(ix+#02)
	call l8e17
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l8c8f
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l8c7e
	dec (ix+#09)
	jr nz,l8c7e
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l8c76
	xor a
	jr l8c7b
.l8c76
	cp #10
	jr nz,l8c7b
	dec a
.l8c7b
	ld (ix+#1e),a
.l8c7e
	ld a,b
	sub (ix+#1e)
	jr nc,l8c85
	xor a
.l8c85
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l8e17
.l8c8f
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l8e3e)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l8cad
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l8cad
	ld (l8e3e),hl
	ret
.l8cb1
	ld hl,l8e60
	cp #61
	jr nc,l8cbb
	add a
	ld c,a
	add hl,bc
.l8cbb
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l8cc5
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l8dea
	ld (ix+#1e),a
	jp l8b52
.l8cd7
	dec b
.l8cd8
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l8ce3
	neg
.l8ce3
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
	jp l8b52
.l8cf9
	dec b
	jr l8cfd
.l8cfc
	inc b
.l8cfd
	call l8dea
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l8b52
.l8d0c
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
	jp l8dcf
.l8d1d
	ld a,(hl)
	inc hl
	or a
	jr z,l8d3f
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
.l8d3f
	ld (ix+#29),a
	jp l8b52
.l8d45
	dec hl
	ld a,(hl)
	and #0f
	ld (l8e41),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l8e40),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l8b52
.l8d5f
	ld a,(hl)
	or a
	jr z,l8d70
	call l8dec
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l8b52
.l8d70
	ld hl,#0101
	ld (l8e3c),hl
	jp l8b52
.l8d79
	call l8dea
	ld (ix+#1e),a
	jp l8b52
.l8d82
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l8dfb
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l8dfb
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l8b52
.l8da4
	ld a,(hl)
	inc hl
	ld (l8e3b),a
	jp l8b52
.l8dac
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
	jp l8b52
.l8dcb
	call l8dea
	add a
.l8dcf
	ld b,#00
	ld c,a
	push hl
	ld hl,l9032
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l8b52
.l8dea
	ld a,(hl)
	inc hl
.l8dec
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
.l8dfb
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l8fb2
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l8e17
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
.l8e36
	ret
.l8e3e equ $ + 7
.l8e3d equ $ + 6
.l8e3c equ $ + 5
.l8e3b equ $ + 4
.l8e39 equ $ + 2
.l8e37
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8e41 equ $ + 2
.l8e40 equ $ + 1
	db #38,#00,#00
.l8e42
	dw l8cc5,l8cd8,l8cd7,l8cfc
	dw l8cf9,l8d0c,l8d1d,l8d45
	dw l8d5f,l8d45,l8d79,l8d82
	dw l8da4,l8dac,l8dcb
.l8e60
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
.l8f26 equ $ + 4
.l8f22
	db #08,#00,#01,#08,#00,#00,#00,#00
.l8f30 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f41 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f50 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l8f54 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l8f5e equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f6f equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f7e equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l8f82
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f8c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f9d equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8fac equ $ + 2
	db #00,#00,#92,#93,#a7,#93,#bc,#93
.l8fb2
	db #52,#90,#92,#90,#b2,#90,#80,#00
	db #52,#ca,#92,#ca,#b2,#ca,#1a,#00
	db #73,#27,#ab,#a5,#c4,#05,#c9,#21
	db #d2,#90,#12,#91,#32,#91,#14,#0c
	db #52,#91,#92,#91,#32,#91,#48,#00
	db #b2,#91,#f2,#91,#12,#92,#09,#00
	db #46,#f5,#5e,#50,#ba,#bd,#66,#c3
	db #52,#cb,#f2,#cb,#32,#cb,#00,#00
	db #32,#92,#72,#92,#32,#91,#40,#00
	db #21,#f4,#5a,#a0,#bd,#92,#c4,#0f
	db #92,#92,#d2,#92,#32,#91,#16,#0a
	db #5c,#84,#48,#30,#2b,#33,#54,#08
	db #b4,#8d,#10,#39,#fb,#6b,#1c,#66
	db #92,#92,#f2,#92,#32,#91,#16,#0a
	db #8e,#a0,#93,#48,#0a,#5e,#28,#ab
	db #12,#93,#52,#93,#72,#93,#c0,#00
.l9032
	db #89,#ae,#a9,#aa,#82,#84,#a9,#ac
	db #10,#a7,#6f,#01,#89,#b5,#11,#ef
	db #e5,#84,#45,#a6,#76,#4f,#af,#60
	db #b6,#90,#4a,#83,#5e,#60,#7a,#89
	db #90,#01,#e0,#01,#30,#02,#80,#02
	db #d0,#02,#20,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#fe,#ff
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#03,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0c,#0d,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0f,#0e,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0c,#0a,#08,#06,#04,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #0f,#0f,#0e,#0d,#0c,#0e,#0d,#0c
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#09,#08,#07,#06
	db #05,#04,#04,#04,#04,#04,#04,#04
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0b,#0b,#0b,#0c,#0c,#0c,#0c,#0c
	db #0b,#0b,#0b,#0b,#0b,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#14,#94,#00,#75,#94,#00,#d6
	db #94,#00,#d1,#93,#00,#d1,#93,#03
	db #d1,#93,#80,#92,#93,#00,#98,#95
	db #00,#37,#95,#00,#37,#95,#00,#37
	db #95,#00,#37,#95,#03,#37,#95,#80
	db #a7,#93,#00,#fa,#95,#00,#fd,#95
	db #00,#fd,#95,#00,#d6,#94,#00,#d6
	db #94,#03,#d6,#94,#80,#bc,#93,#4c
	db #40,#02,#4a,#40,#02,#49,#40,#02
	db #45,#40,#02,#4c,#40,#02,#4a,#40
	db #02,#49,#40,#04,#4c,#40,#03,#4e
	db #40,#02,#4c,#40,#02,#49,#40,#09
	db #4c,#40,#02,#4a,#40,#02,#49,#40
	db #02,#45,#40,#02,#4c,#40,#02,#4a
	db #40,#02,#49,#40,#04,#4c,#40,#03
	db #53,#40,#02,#50,#40,#02,#4c,#40
	db #09,#ff,#28,#80,#02,#34,#80,#02
	db #28,#80,#02,#34,#80,#02,#28,#80
	db #02,#26,#80,#02,#32,#80,#02,#26
	db #80,#02,#28,#80,#02,#34,#80,#02
	db #28,#80,#02,#34,#80,#02,#28,#80
	db #02,#34,#80,#02,#28,#80,#02,#34
	db #80,#02,#28,#80,#02,#34,#80,#02
	db #28,#80,#02,#34,#80,#02,#28,#80
	db #02,#26,#80,#02,#32,#80,#02,#26
	db #80,#02,#2f,#80,#02,#23,#80,#02
	db #2f,#80,#02,#23,#80,#02,#2f,#80
	db #02,#23,#80,#02,#2f,#80,#02,#23
	db #80,#02,#ff,#28,#a0,#02,#34,#a0
	db #02,#28,#a0,#02,#34,#a0,#02,#28
	db #a0,#02,#26,#a0,#02,#32,#a0,#02
	db #26,#a0,#02,#28,#a0,#02,#34,#a0
	db #02,#28,#a0,#02,#34,#a0,#02,#28
	db #a0,#02,#34,#a0,#02,#28,#a0,#02
	db #34,#a0,#02,#28,#a0,#02,#34,#a0
	db #02,#28,#a0,#02,#34,#a0,#02,#28
	db #a0,#02,#26,#a0,#02,#32,#a0,#02
	db #26,#a0,#02,#2f,#a0,#02,#23,#a0
	db #02,#2f,#a0,#02,#23,#a0,#02,#2f
	db #a0,#02,#23,#a0,#02,#2f,#a0,#02
	db #23,#a0,#02,#ff,#40,#00,#02,#40
	db #50,#02,#40,#f0,#02,#40,#50,#02
	db #40,#00,#02,#40,#50,#02,#40,#f0
	db #02,#40,#50,#02,#40,#00,#02,#40
	db #50,#02,#40,#f0,#02,#40,#50,#02
	db #40,#00,#02,#40,#50,#02,#40,#f0
	db #02,#40,#50,#02,#40,#00,#02,#40
	db #50,#02,#40,#f0,#02,#40,#50,#02
	db #40,#00,#02,#40,#50,#02,#40,#f0
	db #02,#40,#50,#02,#40,#00,#02,#40
	db #50,#02,#40,#f0,#02,#40,#50,#02
	db #40,#00,#02,#40,#50,#02,#40,#f0
	db #02,#40,#50,#02,#ff,#28,#d0,#02
	db #34,#d0,#02,#28,#d0,#02,#34,#d0
	db #02,#28,#d0,#02,#26,#d0,#02,#32
	db #d0,#02,#26,#d0,#02,#28,#d0,#02
	db #34,#d0,#02,#28,#d0,#02,#34,#d0
	db #02,#28,#d0,#02,#34,#d0,#02,#28
	db #d0,#02,#34,#d0,#02,#28,#d0,#02
	db #34,#d0,#02,#28,#d0,#02,#34,#d0
	db #02,#28,#d0,#02,#26,#d0,#02,#32
	db #d0,#02,#26,#d0,#02,#2f,#d0,#02
	db #23,#d0,#02,#2f,#d0,#02,#23,#d0
	db #02,#2f,#d0,#02,#23,#d0,#02,#2f
	db #d0,#02,#23,#d0,#02,#ff,#00,#01
	db #28,#d0,#02,#34,#d0,#02,#28,#d0
	db #02,#34,#d0,#02,#28,#d0,#02,#26
	db #d0,#02,#32,#d0,#02,#26,#d0,#02
	db #28,#d0,#02,#34,#d0,#02,#28,#d0
	db #02,#34,#d0,#02,#28,#d0,#02,#34
	db #d0,#02,#28,#d0,#02,#34,#d0,#02
	db #28,#d0,#02,#34,#d0,#02,#28,#d0
	db #02,#34,#d0,#02,#28,#d0,#02,#26
	db #d0,#02,#32,#d0,#02,#26,#d0,#02
	db #2f,#d0,#02,#23,#d0,#02,#2f,#d0
	db #02,#23,#d0,#02,#2f,#d0,#02,#23
	db #d0,#02,#2f,#d0,#02,#a3,#d0,#ff
	db #00,#40,#ff,#34,#30,#02,#40,#30
	db #02,#34,#30,#02,#40,#30,#02,#34
	db #30,#02,#32,#30,#02,#3e,#30,#02
	db #32,#30,#02,#34,#30,#02,#40,#30
	db #02,#34,#30,#02,#40,#30,#02,#34
	db #30,#02,#40,#30,#02,#34,#30,#02
	db #40,#30,#02,#34,#30,#02,#40,#30
	db #02,#34,#30,#02,#40,#30,#02,#34
	db #30,#02,#32,#30,#02,#3e,#30,#02
	db #32,#30,#02,#3b,#30,#02,#2f,#30
	db #02,#3b,#30,#02,#2f,#30,#02,#3b
	db #30,#02,#2f,#30,#02,#3b,#30,#02
	db #2f,#30,#02,#ff
;
.music_info
	db "Optix - Main 2 (1995)(Benediction)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"
