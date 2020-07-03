; Music of Christmas 2001 - Part 2 - Music 3 (2002)(Brothers)(FG Brain)(ST-128 Module)
; Ripped by Megachur the 03/09/2017
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "CHR2P2M3.BIN"
	ENDIF

music_date_rip_day		equ 03
music_date_rip_month	equ 09
music_date_rip_year		equ 2017
music_adr				equ &5972

	read "music_header.asm"

	jp l597b
	jp l5a0f
	jp l59f3
;
.init_music
.l597b
;
	xor a
	ld hl,l5f26
	call l59ec
	ld hl,l5f54
	call l59ec
	ld hl,l5f82
	call l59ec
	ld ix,l5f22
	ld iy,l5fac
	ld de,#002e
	ld b,#03
.l599b
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
	djnz l599b
	ld hl,l5e3b
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
	ld (l5e37),hl
	ld (l5e39),hl
	ld a,#0c
	ld c,d
	call l5e17
	ld a,#0d
	ld c,d
	jp l5e17
.l59ec
	ld b,#2a
.l59ee
	ld (hl),a
	inc hl
	djnz l59ee
	ret
;
.stop_music
.l59f3
;
	ld a,#07
	ld c,#3f
	call l5e17
	ld a,#08
	ld c,#00
	call l5e17
	ld a,#09
	ld c,#00
	call l5e17
	ld a,#0a
	ld c,#00
	jp l5e17
;
.play_music
.l5a0f
;
	ld hl,l5e3d
	dec (hl)
	ld ix,l5f22
	ld bc,l5f30
	call l5ab1
	ld ix,l5f50
	ld bc,l5f5e
	call l5ab1
	ld ix,l5f7e
	ld bc,l5f8c
	call l5ab1
	ld hl,l5e36
	ld de,l5e3d
	ld b,#06
	call l5a8e
	ld b,#07
	call l5a8e
	ld b,#0b
	call l5a8e
	ld b,#0d
	call l5a8e
	ld de,l5e3d
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l5f41
	call l5a67
	ld hl,l5f6f
	call l5a67
	ld hl,l5f9d
.l5a67
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
	jr nz,l5a7c
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l5a7c
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
.l5a8e
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l5e17
.l5a99
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l5e17
.l5ab1
	ld a,(l5e3d)
	or a
	jp nz,l5b69
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l5b69
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5a99
	or a
	jp z,l5b5e
	ld r,a
	and #7f
	cp #10
	jr c,l5b39
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l5cb1
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
	jr z,l5b12
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l5b12
	rrca
	ld c,a
	ld hl,l5fb2
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
	jr z,l5b31
	ld (ix+#1e),b
.l5b31
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l5b52
.l5b39
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l5e42
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
.l5b52
	ld a,d
	or a
	jr nz,l5b60
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l5b60
.l5b5e
	ld a,(hl)
	inc hl
.l5b60
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l5b69
	ld a,(ix+#17)
	or a
	jr nz,l5b7f
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l5b7f
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5b95
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5b95
	ld a,(ix+#0d)
	or a
	jr z,l5ba3
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l5bc1
.l5ba3
	ld a,(ix+#1a)
	or a
	jp z,l5bc8
	ld c,a
	cp #03
	jr nz,l5bb0
	xor a
.l5bb0
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l5bc1
	ld a,(ix+#18)
	dec c
	jr z,l5bc1
	ld a,(ix+#19)
.l5bc1
	add (ix+#07)
	ld b,d
	call l5cb1
.l5bc8
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l5bf0
	dec (ix+#1b)
	jr nz,l5bf0
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l5c28
.l5bf0
	ld a,(ix+#29)
	or a
	jr z,l5c28
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l5c1f
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l5c16
	ld (ix+#29),#ff
	jr l5c1f
.l5c16
	cp (ix+#2b)
	jr nz,l5c1f
	ld (ix+#29),#01
.l5c1f
	ld b,d
	or a
	jp p,l5c25
	dec b
.l5c25
	ld c,a
	jr l5c33
.l5c28
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l5c33
	pop hl
	bit 7,(ix+#14)
	jr z,l5c3c
	ld h,d
	ld l,d
.l5c3c
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l5e17
	ld c,h
	ld a,(ix+#02)
	call l5e17
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5c8f
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l5c7e
	dec (ix+#09)
	jr nz,l5c7e
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5c76
	xor a
	jr l5c7b
.l5c76
	cp #10
	jr nz,l5c7b
	dec a
.l5c7b
	ld (ix+#1e),a
.l5c7e
	ld a,b
	sub (ix+#1e)
	jr nc,l5c85
	xor a
.l5c85
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l5e17
.l5c8f
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l5e3e)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l5cad
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l5cad
	ld (l5e3e),hl
	ret
.l5cb1
	ld hl,l5e60
	cp #61
	jr nc,l5cbb
	add a
	ld c,a
	add hl,bc
.l5cbb
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l5cc5
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l5dea
	ld (ix+#1e),a
	jp l5b52
.l5cd7
	dec b
.l5cd8
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l5ce3
	neg
.l5ce3
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
	jp l5b52
.l5cf9
	dec b
	jr l5cfd
.l5cfc
	inc b
.l5cfd
	call l5dea
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l5b52
.l5d0c
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
	jp l5dcf
.l5d1d
	ld a,(hl)
	inc hl
	or a
	jr z,l5d3f
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
.l5d3f
	ld (ix+#29),a
	jp l5b52
.l5d45
	dec hl
	ld a,(hl)
	and #0f
	ld (l5e41),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l5e40),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l5b52
.l5d5f
	ld a,(hl)
	or a
	jr z,l5d70
	call l5dec
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l5b52
.l5d70
	ld hl,#0101
	ld (l5e3c),hl
	jp l5b52
.l5d79
	call l5dea
	ld (ix+#1e),a
	jp l5b52
.l5d82
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l5dfb
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l5dfb
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l5b52
.l5da4
	ld a,(hl)
	inc hl
	ld (l5e3b),a
	jp l5b52
.l5dac
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
	jp l5b52
.l5dcb
	call l5dea
	add a
.l5dcf
	ld b,#00
	ld c,a
	push hl
	ld hl,l6032
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l5b52
.l5dea
	ld a,(hl)
	inc hl
.l5dec
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
.l5dfb
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l5fb2
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l5e17
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
.l5e36
	ret
.l5e3e equ $ + 7
.l5e3d equ $ + 6
.l5e3c equ $ + 5
.l5e3b equ $ + 4
.l5e39 equ $ + 2
.l5e37
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5e41 equ $ + 2
.l5e40 equ $ + 1
	db #38,#00,#00
.l5e42
	dw l5cc5,l5cd8,l5cd7,l5cfc
	dw l5cf9,l5d0c,l5d1d,l5d45
	dw l5d5f,l5d45,l5d79,l5d82
	dw l5da4,l5dac,l5dcb
.l5e60
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
.l5f22 equ $ + 2
	dw #000f,#0008
.l5f26 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l5f30 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f41 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f50 equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l5f54
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f5e equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f6f equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f82 equ $ + 6
.l5f7e equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f8c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f9d equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5fb2 equ $ + 6
.l5fac
	db #b2,#62,#f4,#62,#36,#63,#44,#19
	db #e6,#6c,#26,#6d,#02,#54,#52,#60
	db #92,#60,#b2,#60,#00,#00,#5c,#20
	db #e6,#6d,#26,#6e,#82,#54,#5c,#20
	db #46,#6e,#86,#6e,#62,#55,#d2,#60
	db #12,#61,#32,#61,#00,#00,#52,#61
	db #92,#61,#b2,#61,#14,#0c,#44,#19
	db #58,#25,#58,#25,#14,#0c,#44,#19
	db #58,#25,#58,#25,#14,#0c,#d2,#61
	db #12,#62,#32,#61,#00,#00,#44,#19
	db #58,#25,#58,#25,#14,#0c,#44,#19
	db #58,#25,#c6,#6e,#14,#0c,#58,#25
	db #58,#25,#58,#25,#14,#0c,#58,#25
	db #58,#25,#58,#25,#14,#0c,#58,#25
	db #58,#25,#58,#25,#14,#0c,#58,#25
	db #44,#19,#c4,#19,#40,#01,#e4,#1a
.l6032 equ $ + 6
	db #84,#1b,#2c,#1c,#00,#00,#32,#62
	db #44,#19,#52,#62,#72,#62,#92,#62
	db #44,#19,#44,#19,#44,#19,#44,#19
	db #44,#19,#44,#19,#44,#19,#44,#19
	db #44,#19,#44,#19,#44,#19,#00,#00
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#70,#03
	db #80,#03,#90,#03,#a0,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0d,#0c,#0c,#0b,#0a,#09,#09
	db #08,#08,#08,#07,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#02,#00
	db #00,#00,#00,#00,#00,#00,#04,#06
	db #07,#09,#0c,#11,#17,#1d,#15,#10
	db #0c,#09,#06,#05,#04,#04,#03,#03
	db #03,#02,#02,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#0f,#0d
	db #0b,#08,#06,#04,#0c,#0b,#0a,#09
	db #08,#07,#06,#04,#05,#06,#07,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#fe,#ff,#fe,#ff
	db #00,#00,#00,#00,#00,#00,#02,#00
	db #03,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#00,#00,#0f,#0e
	db #0e,#0d,#0d,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #0a,#0b,#0b,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#86,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #05,#05,#09,#09,#00,#00,#05,#05
	db #09,#09,#00,#00,#05,#05,#09,#09
	db #00,#00,#05,#05,#09,#09,#00,#00
	db #05,#05,#09,#09,#00,#00,#00,#00
	db #04,#04,#07,#07,#00,#00,#04,#04
	db #07,#07,#00,#00,#04,#04,#07,#07
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #04,#04,#07,#07,#00,#00,#00,#00
	db #03,#03,#08,#08,#00,#00,#03,#03
	db #08,#08,#00,#00,#03,#03,#08,#08
	db #00,#00,#03,#03,#08,#08,#00,#00
	db #03,#03,#08,#08,#00,#00,#00,#78
	db #63,#00,#ad,#63,#00,#e2,#63,#00
	db #e2,#63,#00,#78,#63,#00,#ad,#63
	db #00,#e2,#63,#00,#e2,#63,#00,#78
	db #63,#00,#78,#63,#00,#1a,#64,#00
	db #1a,#64,#00,#4f,#64,#00,#78,#63
	db #00,#ad,#63,#00,#e2,#63,#00,#e2
	db #63,#00,#78,#63,#00,#ad,#63,#00
	db #e2,#63,#00,#e2,#63,#80,#be,#62
	db #00,#33,#65,#00,#65,#65,#00,#97
	db #65,#00,#97,#65,#00,#84,#64,#00
	db #84,#64,#00,#e1,#64,#00,#e1,#64
	db #00,#84,#64,#00,#84,#64,#00,#c9
	db #65,#00,#c9,#65,#00,#06,#66,#00
	db #84,#64,#00,#84,#64,#00,#e1,#64
	db #00,#e1,#64,#00,#33,#65,#00,#65
	db #65,#00,#97,#65,#00,#97,#65,#80
	db #00,#63,#00,#e3,#66,#00,#67,#66
	db #00,#8e,#66,#00,#0c,#67,#00,#3e
	db #66,#00,#67,#66,#00,#8e,#66,#00
	db #b6,#66,#00,#39,#67,#00,#63,#67
	db #00,#96,#67,#00,#d8,#67,#00,#19
	db #68,#00,#3e,#66,#00,#67,#66,#00
	db #8e,#66,#00,#b6,#66,#00,#e3,#66
	db #00,#67,#66,#00,#8e,#66,#00,#0c
	db #67,#80,#42,#63,#3e,#8f,#24,#be
	db #80,#3e,#80,#02,#be,#80,#3e,#80
	db #02,#3e,#80,#02,#be,#80,#3e,#80
	db #02,#be,#80,#3e,#80,#02,#43,#8f
	db #24,#c3,#80,#43,#80,#02,#c3,#80
	db #43,#80,#02,#45,#8f,#24,#c5,#80
	db #45,#80,#02,#c5,#80,#45,#80,#02
	db #ff,#3e,#8f,#24,#be,#80,#3e,#80
	db #02,#be,#80,#3e,#80,#02,#3e,#80
	db #02,#be,#80,#3e,#80,#02,#be,#80
	db #3e,#80,#02,#46,#8f,#22,#c6,#80
	db #46,#80,#02,#c6,#80,#46,#80,#02
	db #48,#8f,#22,#c8,#80,#48,#80,#02
	db #c8,#80,#48,#80,#02,#ff,#3f,#8f
	db #23,#bf,#80,#3f,#80,#02,#bf,#80
	db #3f,#80,#02,#3f,#80,#02,#bf,#80
	db #3f,#80,#02,#bf,#80,#3f,#80,#02
	db #44,#80,#02,#c4,#80,#44,#80,#02
	db #c4,#80,#44,#80,#02,#46,#80,#02
	db #c6,#80,#46,#80,#02,#c6,#80,#46
	db #80,#02,#ff,#00,#20,#ff,#43,#8f
	db #24,#c3,#80,#43,#80,#02,#c3,#80
	db #43,#80,#02,#45,#8f,#24,#c5,#80
	db #45,#80,#02,#c5,#80,#45,#80,#02
	db #46,#8f,#22,#c6,#80,#46,#80,#02
	db #c6,#80,#46,#80,#02,#48,#8f,#22
	db #c8,#80,#48,#80,#02,#c8,#80,#48
	db #80,#02,#ff,#41,#8f,#23,#c1,#80
	db #41,#80,#02,#c1,#80,#41,#80,#02
	db #41,#80,#02,#c1,#80,#41,#80,#02
	db #c1,#80,#41,#80,#02,#41,#80,#02
	db #c1,#80,#41,#80,#02,#c1,#80,#41
	db #80,#02,#41,#80,#02,#c1,#80,#41
	db #80,#02,#c1,#80,#41,#80,#02,#ff
	db #ae,#88,#15,#ae,#88,#15,#c6,#88
	db #15,#c6,#88,#15,#40,#11,#10,#ae
	db #80,#c6,#88,#15,#c6,#88,#15,#ae
	db #88,#15,#ae,#88,#15,#c6,#88,#15
	db #c6,#88,#15,#40,#11,#10,#ae,#80
	db #c6,#88,#15,#c6,#88,#15,#a7,#88
	db #20,#a7,#88,#20,#b3,#88,#10,#b3
	db #88,#10,#40,#11,#10,#b3,#80,#b3
	db #88,#10,#b3,#88,#10,#a9,#88,#1c
	db #a9,#88,#1c,#c1,#88,#1c,#c1,#88
	db #1c,#40,#11,#10,#a9,#80,#c1,#88
	db #1c,#40,#11,#10,#ff,#b3,#88,#10
	db #b3,#80,#cb,#88,#10,#cb,#80,#40
	db #11,#10,#b3,#80,#cb,#88,#10,#cb
	db #80,#b3,#88,#10,#b3,#80,#cb,#88
	db #10,#cb,#80,#40,#11,#10,#b3,#80
	db #cb,#88,#10,#cb,#80,#ac,#88,#18
	db #ac,#80,#c4,#88,#18,#c4,#80,#40
	db #11,#10,#ac,#80,#c4,#88,#18,#c4
	db #80,#ae,#88,#15,#ae,#80,#c6,#88
	db #15,#c6,#80,#40,#11,#10,#ae,#80
	db #c6,#88,#15,#40,#11,#10,#ff,#2e
	db #41,#20,#3a,#40,#02,#40,#10,#02
	db #3a,#40,#02,#2e,#40,#02,#3a,#40
	db #02,#40,#10,#02,#3a,#40,#02,#33
	db #40,#02,#3f,#40,#02,#40,#10,#02
	db #3f,#40,#02,#29,#40,#02,#35,#40
	db #02,#40,#10,#02,#b5,#40,#c0,#10
	db #ff,#2e,#40,#02,#3a,#40,#02,#40
	db #10,#02,#3a,#40,#02,#2e,#40,#02
	db #3a,#40,#02,#40,#10,#02,#3a,#40
	db #02,#33,#40,#02,#3f,#40,#02,#40
	db #10,#02,#3f,#40,#02,#29,#40,#02
	db #35,#40,#02,#40,#10,#02,#b5,#40
	db #c0,#10,#ff,#33,#40,#02,#3f,#40
	db #02,#40,#10,#02,#3f,#40,#02,#33
	db #40,#02,#3f,#40,#02,#40,#10,#02
	db #3f,#40,#02,#38,#40,#02,#44,#40
	db #02,#40,#10,#02,#44,#40,#02,#2e
	db #40,#02,#3a,#40,#02,#40,#10,#02
	db #ba,#40,#c0,#10,#ff,#33,#88,#10
	db #02,#4b,#88,#10,#02,#40,#11,#20
	db #4b,#88,#10,#02,#29,#88,#1c,#02
	db #41,#88,#1c,#02,#40,#11,#20,#41
	db #88,#1c,#02,#2b,#88,#19,#02,#43
	db #88,#19,#02,#40,#11,#20,#43,#88
	db #19,#02,#2d,#88,#16,#02,#45,#88
	db #16,#02,#40,#11,#20,#45,#88,#16
	db #02,#ff,#29,#88,#1c,#02,#41,#80
	db #02,#40,#11,#20,#41,#88,#1c,#02
	db #29,#80,#02,#41,#80,#02,#40,#11
	db #20,#41,#88,#1c,#02,#29,#80,#02
	db #41,#80,#02,#40,#11,#20,#41,#88
	db #1c,#02,#a9,#80,#40,#11,#10,#41
	db #88,#1c,#02,#40,#11,#20,#40,#11
	db #20,#ff,#3a,#5f,#20,#3a,#5f,#20
	db #be,#50,#c1,#50,#c3,#50,#3a,#50
	db #05,#3c,#50,#04,#3a,#50,#05,#b7
	db #50,#ba,#50,#b7,#50,#3e,#50,#02
	db #3c,#50,#02,#3a,#50,#02,#bc,#50
	db #ba,#50,#ff,#00,#02,#3a,#50,#02
	db #be,#50,#c1,#50,#c3,#50,#41,#50
	db #05,#42,#50,#04,#43,#50,#05,#c3
	db #50,#c6,#50,#c3,#50,#4a,#50,#02
	db #48,#50,#02,#46,#50,#02,#48,#50
	db #02,#ff,#3f,#5f,#20,#3f,#50,#02
	db #c3,#50,#c6,#50,#c8,#50,#46,#50
	db #05,#48,#50,#04,#3f,#50,#05,#bc
	db #50,#bf,#50,#bc,#50,#c3,#50,#41
	db #50,#03,#3f,#50,#02,#c1,#50,#bf
	db #50,#ff,#00,#02,#3f,#50,#02,#c3
	db #50,#c6,#50,#c8,#50,#46,#50,#05
	db #47,#50,#04,#48,#50,#02,#4b,#50
	db #02,#c8,#50,#c6,#50,#c3,#50,#bf
	db #50,#c3,#50,#46,#50,#02,#c7,#50
	db #48,#50,#02,#46,#50,#02,#ff,#3a
	db #5f,#20,#3a,#50,#02,#be,#50,#c1
	db #50,#c3,#50,#3a,#50,#05,#3c,#50
	db #04,#3a,#50,#05,#b7,#50,#ba,#50
	db #b7,#50,#3e,#50,#02,#3c,#50,#02
	db #3a,#50,#02,#bc,#50,#ba,#50,#ff
	db #00,#02,#3f,#50,#02,#c3,#50,#c6
	db #50,#c8,#50,#46,#50,#05,#47,#50
	db #04,#48,#50,#02,#4b,#50,#02,#c8
	db #50,#c6,#50,#c3,#50,#bf,#50,#43
	db #50,#02,#43,#50,#02,#43,#50,#02
	db #c1,#50,#bf,#50,#ff,#4a,#50,#02
	db #46,#50,#02,#4a,#50,#02,#4d,#50
	db #02,#4a,#50,#02,#46,#50,#02,#4a
	db #50,#02,#4d,#50,#02,#4f,#50,#04
	db #4d,#50,#04,#ca,#50,#48,#50,#02
	db #46,#50,#03,#43,#50,#02,#ff,#41
	db #50,#02,#46,#50,#02,#4a,#50,#02
	db #4d,#50,#02,#41,#50,#02,#46,#50
	db #02,#4a,#50,#02,#4d,#50,#02,#4f
	db #50,#02,#cd,#50,#4f,#50,#02,#cd
	db #50,#4f,#50,#02,#cd,#50,#54,#50
	db #02,#d1,#50,#4d,#50,#02,#4b,#50
	db #02,#ff,#4b,#5f,#10,#c6,#50,#c3
	db #50,#c6,#50,#cb,#50,#c6,#50,#cf
	db #50,#cb,#50,#cd,#50,#c8,#50,#c5
	db #50,#c8,#50,#cd,#50,#c8,#50,#d1
	db #50,#cd,#50,#cf,#50,#cb,#50,#c6
	db #50,#cb,#50,#cf,#50,#cb,#50,#d2
	db #50,#cf,#50,#d1,#50,#cd,#50,#c8
	db #50,#cd,#50,#d1,#50,#cd,#50,#d4
	db #50,#d1,#50,#ff,#d2,#50,#cf,#50
	db #cb,#50,#cf,#50,#d2,#50,#cf,#50
	db #d7,#50,#d2,#50,#d4,#50,#d1,#50
	db #cd,#50,#d1,#50,#d4,#50,#d1,#50
	db #d9,#50,#d4,#50,#d7,#50,#d2,#50
	db #cf,#50,#d2,#50,#d7,#50,#d2,#50
	db #db,#50,#d7,#50,#d9,#50,#d4,#50
	db #d1,#50,#cd,#50,#d4,#50,#d1,#50
	db #cd,#50,#c8,#50,#ff,#51,#5f,#10
	db #cd,#50,#c8,#50,#c5,#50,#cd,#50
	db #c8,#50,#c5,#50,#c1,#50,#c8,#50
	db #c5,#50,#c1,#50,#bc,#50,#c5,#50
	db #c1,#50,#bc,#50,#b9,#50,#c1,#50
	db #bc,#50,#b9,#50,#b5,#50,#bc,#50
	db #b9,#50,#b5,#50,#b0,#50,#b9,#50
	db #b5,#50,#b0,#50,#ad,#50,#b5,#50
	db #b0,#50,#ad,#50,#a9,#50,#ff
;
.music_info
	db "Christmas 2001 - Part 2 - Music 3 (2002)(Brothers)(FG Brain)",0
	db "ST-128 Module",0

	read "music_end.asm"
