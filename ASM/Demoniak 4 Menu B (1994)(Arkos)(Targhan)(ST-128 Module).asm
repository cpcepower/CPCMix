; Music of Demoniak 4 Menu B (1994)(Arkos)(Targhan)(ST-128 Module)
; Ripped by Megachur the 26/12/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "DEMON4MB.BIN"
	ENDIF

music_date_rip_day		equ 26
music_date_rip_month	equ 12
music_date_rip_year		equ 2014
music_adr				equ &37b8

	read "music_header.asm"

	jp l37c1
	jp l3855
	jp l3839
;
.init_music
.l37c1
;
	xor a
	ld hl,l3d6c
	call l3832
	ld hl,l3d9a
	call l3832
	ld hl,l3dc8
	call l3832
	ld ix,l3d68
	ld iy,l3df2
	ld de,#002e
	ld b,#03
.l37e1
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
	djnz l37e1
	ld hl,l3c81
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
	ld (l3c7d),hl
	ld (l3c7f),hl
	ld a,#0c
	ld c,d
	call l3c5d
	ld a,#0d
	ld c,d
	jp l3c5d
.l3832
	ld b,#2a
.l3834
	ld (hl),a
	inc hl
	djnz l3834
	ret
;
.stop_music
.l3839
;
	ld a,#07
	ld c,#3f
	call l3c5d
	ld a,#08
	ld c,#00
	call l3c5d
	ld a,#09
	ld c,#00
	call l3c5d
	ld a,#0a
	ld c,#00
	jp l3c5d
;
.play_music
.l3855
;
	ld hl,l3c83
	dec (hl)
	ld ix,l3d68
	ld bc,l3d76
	call l38f7
	ld ix,l3d96
	ld bc,l3da4
	call l38f7
	ld ix,l3dc4
	ld bc,l3dd2
	call l38f7
	ld hl,l3c7c
	ld de,l3c83
	ld b,#06
	call l38d4
	ld b,#07
	call l38d4
	ld b,#0b
	call l38d4
	ld b,#0d
	call l38d4
	ld de,l3c83
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l3d87
	call l38ad
	ld hl,l3db5
	call l38ad
	ld hl,l3de3
.l38ad
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
	jr nz,l38c2
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l38c2
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
.l38d4
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l3c5d
.l38df
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l3c5d
.l38f7
	ld a,(l3c83)
	or a
	jp nz,l39af
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l39af
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l38df
	or a
	jp z,l39a4
	ld r,a
	and #7f
	cp #10
	jr c,l397f
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l3af7
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
	jr z,l3958
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l3958
	rrca
	ld c,a
	ld hl,l3df8
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
	jr z,l3977
	ld (ix+#1e),b
.l3977
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l3998
.l397f
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l3c88
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
.l3998
	ld a,d
	or a
	jr nz,l39a6
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l39a6
.l39a4
	ld a,(hl)
	inc hl
.l39a6
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l39af
	ld a,(ix+#17)
	or a
	jr nz,l39c5
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l39c5
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l39db
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l39db
	ld a,(ix+#0d)
	or a
	jr z,l39e9
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l3a07
.l39e9
	ld a,(ix+#1a)
	or a
	jp z,l3a0e
	ld c,a
	cp #03
	jr nz,l39f6
	xor a
.l39f6
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l3a07
	ld a,(ix+#18)
	dec c
	jr z,l3a07
	ld a,(ix+#19)
.l3a07
	add (ix+#07)
	ld b,d
	call l3af7
.l3a0e
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l3a36
	dec (ix+#1b)
	jr nz,l3a36
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l3a6e
.l3a36
	ld a,(ix+#29)
	or a
	jr z,l3a6e
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l3a65
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l3a5c
	ld (ix+#29),#ff
	jr l3a65
.l3a5c
	cp (ix+#2b)
	jr nz,l3a65
	ld (ix+#29),#01
.l3a65
	ld b,d
	or a
	jp p,l3a6b
	dec b
.l3a6b
	ld c,a
	jr l3a79
.l3a6e
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l3a79
	pop hl
	bit 7,(ix+#14)
	jr z,l3a82
	ld h,d
	ld l,d
.l3a82
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l3c5d
	ld c,h
	ld a,(ix+#02)
	call l3c5d
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l3ad5
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l3ac4
	dec (ix+#09)
	jr nz,l3ac4
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l3abc
	xor a
	jr l3ac1
.l3abc
	cp #10
	jr nz,l3ac1
	dec a
.l3ac1
	ld (ix+#1e),a
.l3ac4
	ld a,b
	sub (ix+#1e)
	jr nc,l3acb
	xor a
.l3acb
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l3c5d
.l3ad5
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l3c84)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l3af3
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l3af3
	ld (l3c84),hl
	ret
.l3af7
	ld hl,l3ca6
	cp #61
	jr nc,l3b01
	add a
	ld c,a
	add hl,bc
.l3b01
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l3b0b
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l3c30
	ld (ix+#1e),a
	jp l3998
.l3b1d
	dec b
.l3b1e
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l3b29
	neg
.l3b29
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
	jp l3998
.l3b3f
	dec b
	jr l3b43
.l3b42
	inc b
.l3b43
	call l3c30
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l3998
.l3b52
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
	jp l3c15
.l3b63
	ld a,(hl)
	inc hl
	or a
	jr z,l3b85
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
.l3b85
	ld (ix+#29),a
	jp l3998
.l3b8b
	dec hl
	ld a,(hl)
	and #0f
	ld (l3c87),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l3c86),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l3998
.l3ba5
	ld a,(hl)
	or a
	jr z,l3bb6
	call l3c32
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l3998
.l3bb6
	ld hl,#0101
	ld (l3c82),hl
	jp l3998
.l3bbf
	call l3c30
	ld (ix+#1e),a
	jp l3998
.l3bc8
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l3c41
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l3c41
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l3998
.l3bea
	ld a,(hl)
	inc hl
	ld (l3c81),a
	jp l3998
.l3bf2
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
	jp l3998
.l3c11
	call l3c30
	add a
.l3c15
	ld b,#00
	ld c,a
	push hl
	ld hl,l3e78
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l3998
.l3c30
	ld a,(hl)
	inc hl
.l3c32
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
.l3c41
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l3df8
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l3c5d
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
.l3c7c
	ret
.l3c84 equ $ + 7
.l3c83 equ $ + 6
.l3c82 equ $ + 5
.l3c81 equ $ + 4
.l3c7f equ $ + 2
.l3c7d
	db #00,#38,#35,#08,#05,#3f,#04,#00
.l3c87 equ $ + 2
.l3c86 equ $ + 1
	db #38,#35,#08
.l3c88
	dw l3b0b,l3b1e,l3b1d,l3b42
	dw l3b3f,l3b52,l3b63,l3b8b
	dw l3ba5,l3b8b,l3bbf,l3bc8
	dw l3bea,l3bf2,l3c11
.l3ca6
	db #00,#00
	db #18,#0e,#4d,#0d,#8e,#0c,#da,#0b
	db #2f,#0b,#8f,#0a,#f7,#09,#68,#09
	db #e1,#08,#61,#08,#e9,#07,#77,#07
	db #0c,#07,#a7,#06,#47,#06,#ed,#05
	db #98,#05,#47,#05,#fc,#04,#b4,#04
	db #70,#04,#31,#04,#f4,#03,#bc,#03
	db #86,#03,#53,#03,#24,#03,#f6,#02
	db #cc,#02,#a4,#02,#7e,#02,#5a,#02
	db #38,#02,#18,#02,#fa,#01,#de,#01
	db #c3,#01,#aa,#01,#92,#01,#7b,#01
	db #66,#01,#52,#01,#3f,#01,#2d,#01
	db #1c,#01,#0c,#01,#fd,#00,#ef,#00
	db #e1,#00,#d5,#00,#c9,#00,#be,#00
	db #b3,#00,#a9,#00,#9f,#00,#96,#00
	db #8e,#00,#86,#00,#7f,#00,#77,#00
	db #71,#00,#6a,#00,#64,#00,#5f,#00
	db #59,#00,#54,#00,#50,#00,#4b,#00
	db #47,#00,#43,#00,#3f,#00,#3c,#00
	db #38,#00,#35,#00,#32,#00,#2f,#00
	db #2d,#00,#2a,#00,#28,#00,#26,#00
	db #24,#00,#22,#00,#20,#00,#1e,#00
	db #1c,#00,#1b,#00,#19,#00,#18,#00
	db #16,#00,#15,#00,#14,#00,#13,#00
	db #12,#00,#11,#00,#10,#00,#0f,#00
.l3d68
	db #08,#00
.l3d6c equ $ + 2
	ld bc,#b308
	db #00,#00,#32,#00,#00,#00,#00
.l3d76 equ $ + 2
	db #18,#3f,#98,#3e,#d8,#3e,#f8,#3e
	db #1d,#03,#02,#1e,#00,#00,#00,#00
.l3d87 equ $ + 3
	db #00,#00,#0a,#03,#b4,#3f,#44,#3f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3d9a equ $ + 6
.l3d96 equ $ + 2
	db #01,#01,#09,#02,#03,#10,#a7,#06
	db #10,#0e,#00,#00,#00,#00,#00,#00
.l3da4
	db #98,#3e,#d8,#3e,#f8,#3e,#1d,#03
	db #1f,#01,#00,#00,#00,#00,#00,#00
.l3db5 equ $ + 1
	db #00,#40,#67,#3f,#53,#3f,#00,#ff
	db #00,#00,#00,#00,#00,#00,#01,#01
.l3dc8 equ $ + 4
.l3dc4
	db #0a,#04,#05,#20,#be,#00,#00,#31
.l3dd2 equ $ + 6
	db #00,#00,#00,#00,#18,#3f,#98,#3e
	db #d8,#3e,#f8,#3e,#1d,#03,#02,#1e
.l3de3 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#07,#03
	db #e3,#3f,#62,#3f,#00,#00,#00,#00
.l3df2 equ $ + 6
	db #00,#00,#00,#00,#01,#01,#38,#3f
.l3df8 equ $ + 4
	db #47,#3f,#56,#3f,#98,#3e,#d8,#3e
	db #f8,#3e,#1d,#03,#8a,#f7,#14,#ef
	db #14,#ef,#8a,#f7,#8a,#f7,#14,#ef
	db #14,#ef,#8a,#f7,#8a,#f7,#14,#ef
	db #14,#ef,#8a,#f7,#8a,#f7,#1c,#f7
	db #14,#ef,#8a,#f7,#8a,#f7,#14,#ef
	db #14,#ef,#8a,#f7,#8a,#f7,#14,#ef
	db #14,#ef,#8a,#f7,#8a,#f7,#14,#ef
	db #14,#ef,#8a,#f7,#8a,#f7,#14,#ef
	db #14,#ef,#8a,#f7,#8a,#f7,#14,#ef
	db #14,#ef,#8a,#f7,#8a,#f7,#a2,#36
	db #14,#ef,#8a,#f7,#14,#ef,#14,#ef
	db #14,#ef,#8a,#f7,#14,#ef,#14,#ef
	db #14,#ef,#8a,#f7,#14,#ef,#14,#ef
	db #14,#ef,#8a,#f7,#14,#ef,#8a,#f7
	db #8a,#f7,#00,#00,#8a,#f7,#8a,#f7
.l3e78 equ $ + 4
	db #8a,#f7,#00,#00,#18,#3f,#8a,#f7
	db #8a,#f7,#8a,#f7,#8a,#f7,#8a,#f7
	db #8a,#f7,#8a,#f7,#8a,#f7,#8a,#f7
	db #8a,#f7,#8a,#f7,#8a,#f7,#8a,#f7
	db #8a,#f7,#8a,#f7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#65,#3f,#00
	db #68,#3f,#00,#8d,#3f,#00,#b0,#3f
	db #80,#3e,#3f,#00,#c5,#3f,#00,#65
	db #3f,#00,#65,#3f,#00,#65,#3f,#80
	db #4d,#3f,#00,#65,#3f,#00,#65,#3f
	db #00,#ca,#3f,#00,#df,#3f,#80,#5c
	db #3f,#00,#40,#ff,#42,#06,#0e,#03
	db #42,#06,#0d,#03,#42,#06,#0c,#03
	db #42,#06,#0b,#03,#42,#06,#0a,#03
	db #42,#06,#09,#03,#42,#06,#08,#03
	db #42,#06,#07,#03,#42,#06,#06,#28
	db #ff,#42,#06,#07,#03,#42,#06,#08
	db #03,#42,#06,#09,#03,#42,#06,#0a
	db #03,#42,#06,#0b,#03,#42,#06,#0c
	db #03,#42,#06,#0d,#03,#42,#06,#0e
	db #03,#fe,#28,#ff,#42,#06,#0a,#03
	db #42,#06,#09,#03,#42,#06,#08,#03
	db #42,#06,#07,#03,#42,#06,#06,#34
	db #ff,#1e,#08,#35,#40,#ff,#41,#06
	db #0a,#03,#41,#06,#09,#03,#41,#06
	db #08,#03,#41,#06,#07,#03,#41,#06
	db #06,#34,#ff,#41,#06,#07,#03,#41
	db #06,#08,#03,#41,#06,#09,#03,#41
	db #06,#0a,#03,#41,#06,#0b,#03,#41
	db #00,#03,#41,#00,#03,#41,#00,#03
	db #fe,#28,#ff
;
.music_info
	db "Demoniak 4 Menu B (1994)(Arkos)(Targhan)",0
	db "ST-128 Module",0

	read "music_end.asm"
