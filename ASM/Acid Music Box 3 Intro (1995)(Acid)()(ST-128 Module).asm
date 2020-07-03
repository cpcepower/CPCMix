; Music of Acid Music Box 3 Intro (1995)(Acid)()(ST-128 Module)
; Ripped by Megachur the 01/10/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "ACIMB3IN.BIN"
	ENDIF

music_date_rip_day		equ 01
music_date_rip_month	equ 10
music_date_rip_year		equ 2014
music_adr				equ &4ba0

	read "music_header.asm"

	jp l4ba9
	jp l4c3d
	jp l4c21
;
.init_music
.l4ba9
;
	xor a
	ld hl,l5154
	call l4c1a
	ld hl,l5182
	call l4c1a
	ld hl,l51b0
	call l4c1a
	ld ix,l5150
	ld iy,l51da
	ld de,#002e
	ld b,#03
.l4bc9
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
	djnz l4bc9
	ld hl,l5069
	ld (hl),#04
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l5065),hl
	ld (l5067),hl
	ld a,#0c
	ld c,d
	call l5045
	ld a,#0d
	ld c,d
	jp l5045
.l4c1a
	ld b,#2a
.l4c1c
	ld (hl),a
	inc hl
	djnz l4c1c
	ret
;
.stop_music
.l4c21
;
	ld a,#07
	ld c,#3f
	call l5045
	ld a,#08
	ld c,#00
	call l5045
	ld a,#09
	ld c,#00
	call l5045
	ld a,#0a
	ld c,#00
	jp l5045
;
.play_music
.l4c3d
;
	ld hl,l506b
	dec (hl)
	ld ix,l5150
	ld bc,l515e
	call l4cdf
	ld ix,l517e
	ld bc,l518c
	call l4cdf
	ld ix,l51ac
	ld bc,l51ba
	call l4cdf
	ld hl,l5064
	ld de,l506b
	ld b,#06
	call l4cbc
	ld b,#07
	call l4cbc
	ld b,#0b
	call l4cbc
	ld b,#0d
	call l4cbc
	ld de,l506b
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l516f
	call l4c95
	ld hl,l519d
	call l4c95
	ld hl,l51cb
.l4c95
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
	jr nz,l4caa
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l4caa
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
.l4cbc
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l5045
.l4cc7
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l5045
.l4cdf
	ld a,(l506b)
	or a
	jp nz,l4d97
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l4d97
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4cc7
	or a
	jp z,l4d8c
	ld r,a
	and #7f
	cp #10
	jr c,l4d67
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l4edf
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
	jr z,l4d40
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l4d40
	rrca
	ld c,a
	ld hl,l51e0
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
	jr z,l4d5f
	ld (ix+#1e),b
.l4d5f
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l4d80
.l4d67
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l5070
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
.l4d80
	ld a,d
	or a
	jr nz,l4d8e
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l4d8e
.l4d8c
	ld a,(hl)
	inc hl
.l4d8e
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l4d97
	ld a,(ix+#17)
	or a
	jr nz,l4dad
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l4dad
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4dc3
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4dc3
	ld a,(ix+#0d)
	or a
	jr z,l4dd1
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l4def
.l4dd1
	ld a,(ix+#1a)
	or a
	jp z,l4df6
	ld c,a
	cp #03
	jr nz,l4dde
	xor a
.l4dde
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l4def
	ld a,(ix+#18)
	dec c
	jr z,l4def
	ld a,(ix+#19)
.l4def
	add (ix+#07)
	ld b,d
	call l4edf
.l4df6
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l4e1e
	dec (ix+#1b)
	jr nz,l4e1e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l4e56
.l4e1e
	ld a,(ix+#29)
	or a
	jr z,l4e56
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l4e4d
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l4e44
	ld (ix+#29),#ff
	jr l4e4d
.l4e44
	cp (ix+#2b)
	jr nz,l4e4d
	ld (ix+#29),#01
.l4e4d
	ld b,d
	or a
	jp p,l4e53
	dec b
.l4e53
	ld c,a
	jr l4e61
.l4e56
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l4e61
	pop hl
	bit 7,(ix+#14)
	jr z,l4e6a
	ld h,d
	ld l,d
.l4e6a
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l5045
	ld c,h
	ld a,(ix+#02)
	call l5045
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4ebd
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l4eac
	dec (ix+#09)
	jr nz,l4eac
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4ea4
	xor a
	jr l4ea9
.l4ea4
	cp #10
	jr nz,l4ea9
	dec a
.l4ea9
	ld (ix+#1e),a
.l4eac
	ld a,b
	sub (ix+#1e)
	jr nc,l4eb3
	xor a
.l4eb3
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l5045
.l4ebd
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l506c)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l4edb
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l4edb
	ld (l506c),hl
	ret
.l4edf
	ld hl,l508e
	cp #61
	jr nc,l4ee9
	add a
	ld c,a
	add hl,bc
.l4ee9
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l4ef3
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l5018
	ld (ix+#1e),a
	jp l4d80
.l4f05
	dec b
.l4f06
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l4f11
	neg
.l4f11
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
	jp l4d80
.l4f27
	dec b
	jr l4f2b
.l4f2a
	inc b
.l4f2b
	call l5018
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l4d80
.l4f3a
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
	jp l4ffd
.l4f4b
	ld a,(hl)
	inc hl
	or a
	jr z,l4f6d
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
.l4f6d
	ld (ix+#29),a
	jp l4d80
.l4f73
	dec hl
	ld a,(hl)
	and #0f
	ld (l506f),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l506e),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l4d80
.l4f8d
	ld a,(hl)
	or a
	jr z,l4f9e
	call l501a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l4d80
.l4f9e
	ld hl,#0101
	ld (l506a),hl
	jp l4d80
.l4fa7
	call l5018
	ld (ix+#1e),a
	jp l4d80
.l4fb0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l5029
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l5029
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l4d80
.l4fd2
	ld a,(hl)
	inc hl
	ld (l5069),a
	jp l4d80
.l4fda
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
	jp l4d80
.l4ff9
	call l5018
	add a
.l4ffd
	ld b,#00
	ld c,a
	push hl
	ld hl,l5260
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l4d80
.l5018
	ld a,(hl)
	inc hl
.l501a
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
.l5029
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l51e0
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l5045
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
.l5064
	ret
.l506c equ $ + 7
.l506b equ $ + 6
.l506a equ $ + 5
.l5069 equ $ + 4
.l5067 equ $ + 2
.l5065
	db #05,#18,#11,#08,#04,#19,#03,#05
.l506f equ $ + 2
.l506e equ $ + 1
	db #18,#11,#08
.l5070
	dw l4ef3,l4f06,l4f05,l4f2a
	dw l4f27,l4f3a,l4f4b,l4f73
	dw l4f8d,l4f73,l4fa7,l4fb0
	dw l4fd2,l4fda,l4ff9
.l508e
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
.l5150 equ $ + 2
	dw #000f,#0008
.l5154 equ $ + 2
	db #01,#08,#64,#00,#00,#3f,#00,#00
.l515e equ $ + 4
	db #00,#00,#00,#00,#00,#54,#40,#54
	db #e0,#52,#40,#00,#08,#00,#00,#00
.l516f equ $ + 5
	db #00,#00,#00,#00,#00,#1a,#60,#55
	db #e9,#54,#00,#ff,#00,#00,#00,#00
.l517e equ $ + 4
	db #00,#00,#01,#01,#09,#02,#03,#10
.l5182
	db #18,#02,#10,#22,#00,#00,#00,#00
.l518c equ $ + 2
	db #00,#00,#80,#52,#c0,#52,#e0,#52
	db #1a,#06,#02,#1e,#00,#00,#00,#00
.l519d equ $ + 3
	db #00,#00,#00,#02,#85,#56,#13,#55
	db #00,#00,#00,#00,#00,#00,#00,#00
.l51b0 equ $ + 6
.l51ac equ $ + 2
	db #01,#01,#0a,#04,#05,#20,#66,#01
	db #00,#29,#00,#00,#00,#00,#00,#00
.l51ba
	db #60,#54,#a0,#54,#c0,#54,#c0,#00
	db #04,#00,#00,#00,#00,#00,#00,#00
.l51cb equ $ + 1
	db #00,#1a,#60,#55,#3d,#55,#00,#ff
	db #00,#00,#00,#00,#00,#00,#01,#01
.l51e0 equ $ + 6
.l51da
	db #e0,#54,#0a,#55,#34,#55,#80,#52
	db #c0,#52,#e0,#52,#1a,#06,#00,#53
	db #40,#53,#60,#53,#80,#00,#80,#53
	db #c0,#53,#e0,#53,#9a,#06,#72,#0b
	db #82,#1b,#6d,#07,#00,#00,#00,#54
	db #40,#54,#e0,#52,#40,#00,#60,#54
	db #a0,#54,#c0,#54,#c0,#00,#3a,#d4
	db #72,#0b,#72,#0b,#20,#30,#a2,#3b
	db #42,#dc,#4a,#dc,#d8,#d0,#3a,#d4
	db #e8,#81,#76,#8b,#24,#00,#96,#2b
	db #3a,#dc,#4a,#e4,#ca,#ca,#3a,#d4
	db #72,#0b,#72,#0b,#00,#00,#72,#0b
	db #72,#0b,#72,#0b,#00,#00,#72,#0b
	db #72,#0b,#72,#0b,#00,#00,#72,#0b
	db #72,#0b,#72,#0b,#00,#00,#72,#0b
	db #72,#0b,#72,#0b,#00,#00,#72,#0b
.l5260 equ $ + 6
	db #72,#0b,#72,#0b,#00,#00,#72,#0b
	db #72,#0b,#72,#0b,#72,#0b,#72,#0b
	db #72,#0b,#72,#0b,#72,#0b,#3c,#ce
	db #72,#0b,#72,#0b,#72,#0b,#72,#0b
	db #72,#0b,#72,#0b,#72,#0b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#ff,#ff,#ff,#ff,#00,#00
	db #00,#00,#01,#00,#01,#00,#0f,#0c
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#0b
	db #09,#07,#05,#03,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #08,#08,#08,#08,#06,#02,#00,#00
	db #65,#01,#3e,#01,#00,#00,#c3,#04
	db #65,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0d,#0c,#0a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#08,#00
	db #00,#05,#07,#07,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#5e
	db #55,#00,#61,#55,#00,#5e,#55,#00
	db #95,#55,#00,#95,#55,#00,#de,#55
	db #00,#de,#55,#00,#95,#55,#00,#95
	db #55,#00,#de,#55,#00,#de,#55,#00
	db #64,#55,#00,#64,#55,#80,#e0,#54
	db #00,#33,#56,#00,#33,#56,#00,#33
	db #56,#00,#33,#56,#00,#33,#56,#00
	db #33,#56,#00,#33,#56,#00,#33,#56
	db #00,#33,#56,#00,#33,#56,#00,#33
	db #56,#00,#33,#56,#00,#33,#56,#80
	db #0a,#55,#00,#5e,#55,#00,#b8,#56
	db #00,#5e,#55,#00,#b8,#56,#00,#b8
	db #56,#00,#b8,#56,#00,#b8,#56,#00
	db #b8,#56,#00,#b8,#56,#00,#b8,#56
	db #00,#b8,#56,#00,#b8,#56,#00,#b8
	db #56,#80,#34,#55,#fe,#40,#ff,#00
	db #40,#ff,#55,#40,#0a,#4e,#40,#02
	db #4c,#40,#02,#4e,#40,#02,#55,#40
	db #0a,#4e,#40,#02,#4c,#40,#02,#4e
	db #40,#02,#56,#40,#0a,#4f,#40,#02
	db #4e,#40,#02,#4f,#40,#02,#56,#40
	db #0a,#4f,#40,#02,#4e,#40,#02,#4f
	db #40,#02,#ff,#49,#41,#20,#49,#40
	db #02,#3d,#40,#02,#49,#40,#0a,#49
	db #40,#02,#49,#40,#02,#3d,#40,#02
	db #49,#40,#02,#49,#40,#02,#49,#40
	db #02,#3d,#40,#02,#49,#40,#02,#4a
	db #40,#02,#4a,#40,#02,#3e,#40,#02
	db #4a,#40,#0a,#4a,#40,#02,#4a,#40
	db #02,#3e,#40,#02,#4a,#40,#02,#4a
	db #40,#02,#4a,#40,#02,#3e,#40,#02
	db #4a,#40,#02,#ff,#3d,#40,#02,#49
	db #40,#02,#3b,#40,#02,#49,#40,#04
	db #3b,#40,#02,#49,#40,#02,#3b,#40
	db #02,#49,#40,#02,#3d,#40,#02,#3b
	db #40,#02,#49,#40,#04,#3b,#40,#02
	db #49,#40,#02,#3b,#40,#02,#4a,#40
	db #02,#3e,#40,#02,#3d,#40,#02,#4a
	db #40,#04,#3d,#40,#02,#4a,#40,#02
	db #3d,#40,#02,#4a,#40,#02,#3e,#40
	db #02,#3d,#40,#02,#4a,#40,#04,#3d
	db #40,#02,#4a,#40,#02,#3d,#40,#02
	db #ff,#3d,#08,#12,#02,#31,#08,#12
	db #02,#3d,#08,#12,#02,#31,#08,#12
	db #02,#3d,#08,#12,#02,#31,#08,#12
	db #02,#3d,#08,#12,#02,#31,#08,#12
	db #02,#3d,#08,#12,#02,#31,#08,#12
	db #02,#3d,#08,#12,#02,#31,#08,#12
	db #02,#3d,#08,#12,#02,#31,#08,#12
	db #02,#bd,#08,#12,#fe,#01,#bd,#08
	db #12,#fe,#01,#3e,#08,#11,#02,#32
	db #08,#11,#02,#3e,#08,#11,#02,#32
	db #08,#11,#02,#3e,#08,#11,#02,#32
	db #08,#11,#02,#3e,#08,#11,#02,#32
	db #08,#11,#02,#3e,#08,#11,#02,#32
	db #08,#11,#02,#3e,#08,#11,#02,#32
	db #08,#11,#02,#3e,#08,#11,#02,#32
	db #08,#11,#02,#be,#08,#11,#fe,#01
	db #be,#08,#11,#fe,#01,#ff,#39,#10
	db #02,#f4,#20,#f4,#20,#39,#50,#02
	db #f4,#20,#f4,#20,#39,#10,#02,#f4
	db #20,#f4,#20,#39,#50,#02,#f4,#20
	db #f4,#20,#39,#10,#02,#f4,#20,#f4
	db #20,#39,#50,#02,#f4,#20,#f4,#20
	db #39,#10,#02,#f4,#20,#f4,#20,#39
	db #50,#02,#f4,#20,#f4,#20,#39,#10
	db #02,#f4,#20,#f4,#20,#39,#50,#02
	db #f4,#20,#f4,#20,#39,#10,#02,#f4
	db #20,#f4,#20,#39,#50,#02,#f4,#20
	db #f4,#20,#b9,#50,#f4,#20,#b9,#50
	db #f4,#20,#b9,#50,#f4,#20,#b9,#50
	db #f4,#20,#b9,#50,#f4,#20,#b9,#50
	db #b9,#50,#b9,#50,#b9,#50,#b9,#50
	db #b9,#50,#ff
;
.music_info
	db "Acid Music Box 3 Intro (1995)(Acid)()",0
	db "ST-128 Module",0

	read "music_end.asm"
