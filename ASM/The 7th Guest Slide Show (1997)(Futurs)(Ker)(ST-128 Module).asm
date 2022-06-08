; Music of The 7th Guest Slide Show (1997)(Futurs)(Ker)(ST-128 Module)
; Ripped by Megachur the 05/06/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THE7TGSS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #3500

	read "music_header.asm"

	jp l3509
	jp l359d
	jp l3581
;
.init_music
.l3509
;
	xor a
	ld hl,l3ab4
	call l357a
	ld hl,l3ae2
	call l357a
	ld hl,l3b10
	call l357a
	ld ix,l3ab0
	ld iy,l3b3a
	ld de,#002e
	ld b,#03
.l3529
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
	djnz l3529
	ld hl,l39c9
	ld (hl),#0e
	inc hl
	ld (hl),#38
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l39c5),hl
	ld (l39c7),hl
	ld a,#0c
	ld c,d
	call l39a5
	ld a,#0d
	ld c,d
	jp l39a5
.l357a
	ld b,#2a
.l357c
	ld (hl),a
	inc hl
	djnz l357c
	ret
;
.stop_music
.l3581
;
	ld a,#07
	ld c,#3f
	call l39a5
	ld a,#08
	ld c,#00
	call l39a5
	ld a,#09
	ld c,#00
	call l39a5
	ld a,#0a
	ld c,#00
	jp l39a5
;
.play_music
.l359d
;
	ld hl,l39cb
	dec (hl)
	ld ix,l3ab0
	ld bc,l3abe
	call l363f
	ld ix,l3ade
	ld bc,l3aec
	call l363f
	ld ix,l3b0c
	ld bc,l3b1a
	call l363f
	ld hl,l39c4
	ld de,l39cb
	ld b,#06
	call l361c
	ld b,#07
	call l361c
	ld b,#0b
	call l361c
	ld b,#0d
	call l361c
	ld de,l39cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#38
	ld hl,l3acf
	call l35f5
	ld hl,l3afd
	call l35f5
	ld hl,l3b2b
.l35f5
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
	jr nz,l360a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l360a
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
.l361c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l39a5
.l3627
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l39a5
.l363f
	ld a,(l39cb)
	or a
	jp nz,l36f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l36f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l3627
	or a
	jp z,l36ec
	ld r,a
	and #7f
	cp #10
	jr c,l36c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l383f
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
	jr z,l36a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l36a0
	rrca
	ld c,a
	ld hl,l3b40
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
	jr z,l36bf
	ld (ix+#1e),b
.l36bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l36e0
.l36c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l39d0
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
.l36e0
	ld a,d
	or a
	jr nz,l36ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l36ee
.l36ec
	ld a,(hl)
	inc hl
.l36ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l36f7
	ld a,(ix+#17)
	or a
	jr nz,l370d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l370d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l3723
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l3723
	ld a,(ix+#0d)
	or a
	jr z,l3731
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l374f
.l3731
	ld a,(ix+#1a)
	or a
	jp z,l3756
	ld c,a
	cp #03
	jr nz,l373e
	xor a
.l373e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l374f
	ld a,(ix+#18)
	dec c
	jr z,l374f
	ld a,(ix+#19)
.l374f
	add (ix+#07)
	ld b,d
	call l383f
.l3756
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l377e
	dec (ix+#1b)
	jr nz,l377e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l37b6
.l377e
	ld a,(ix+#29)
	or a
	jr z,l37b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l37ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l37a4
	ld (ix+#29),#ff
	jr l37ad
.l37a4
	cp (ix+#2b)
	jr nz,l37ad
	ld (ix+#29),#01
.l37ad
	ld b,d
	or a
	jp p,l37b3
	dec b
.l37b3
	ld c,a
	jr l37c1
.l37b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l37c1
	pop hl
	bit 7,(ix+#14)
	jr z,l37ca
	ld h,d
	ld l,d
.l37ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l39a5
	ld c,h
	ld a,(ix+#02)
	call l39a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l381d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l380c
	dec (ix+#09)
	jr nz,l380c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l3804
	xor a
	jr l3809
.l3804
	cp #10
	jr nz,l3809
	dec a
.l3809
	ld (ix+#1e),a
.l380c
	ld a,b
	sub (ix+#1e)
	jr nc,l3813
	xor a
.l3813
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l39a5
.l381d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l39cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l383b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l383b
	ld (l39cc),hl
	ret
.l383f
	ld hl,l39ee
	cp #61
	jr nc,l3849
	add a
	ld c,a
	add hl,bc
.l3849
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l3978
	ld (ix+#1e),a
	jp l36e0
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l3871
	neg
.l3871
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
	jp l36e0
	dec b
	jr l388b
	inc b
.l388b
	call l3978
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l36e0
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
	jp l395d
	ld a,(hl)
	inc hl
	or a
	jr z,l38cd
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
.l38cd
	ld (ix+#29),a
	jp l36e0
	dec hl
	ld a,(hl)
	and #0f
	ld (l39cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l39ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l36e0
	ld a,(hl)
	or a
	jr z,l38fe
	call l397a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l36e0
.l38fe
	ld hl,#0101
	ld (l39ca),hl
	jp l36e0
	call l3978
	ld (ix+#1e),a
	jp l36e0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l3989
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l3989
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l36e0
	ld a,(hl)
	inc hl
	ld (l39c9),a
	jp l36e0
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
	jp l36e0
	call l3978
	add a
.l395d
	ld b,#00
	ld c,a
	push hl
	ld hl,l3bc0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l36e0
.l3978
	ld a,(hl)
	inc hl
.l397a
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
.l3989
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l3b40
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l39a5
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
.l39c4
	ret
.l39cc equ $ + 7
.l39cb equ $ + 6
.l39ca equ $ + 5
.l39c9 equ $ + 4
.l39c7 equ $ + 2
.l39c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l39cf equ $ + 2
.l39ce equ $ + 1
	db #38,#00,#00
.l39d0
	db #53,#38,#66,#38,#65,#38,#8a,#38
	db #87,#38,#9a,#38,#ab,#38,#d3,#38
	db #ed,#38,#d3,#38,#07,#39,#10,#39
	db #32,#39,#3a,#39,#59,#39
.l39ee
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
.l3ab4 equ $ + 4
.l3ab0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l3abe equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3acf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3ade equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l3ae2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l3aec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3afd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3b0c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l3b10
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3b1a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3b2b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3b3a equ $ + 2
	db #00,#00,#80,#3c,#89,#3c,#92,#3c
.l3b40
	db #d2,#f4,#d2,#f4,#d2,#f4,#01,#00
	db #e0,#3b,#20,#3c,#40,#3c,#00,#00
	db #e0,#3b,#60,#3c,#40,#3c,#1a,#06
	db #d2,#f4,#d2,#f4,#d2,#f4,#00,#00
	db #d2,#f4,#d2,#f4,#d2,#f4,#01,#01
	db #d2,#f4,#d2,#f4,#d2,#f4,#01,#00
	db #d3,#f4,#74,#97,#74,#97,#55,#51
	db #23,#46,#7c,#97,#7c,#97,#51,#51
	db #23,#46,#7c,#97,#74,#97,#51,#55
	db #23,#46,#7c,#97,#7c,#97,#51,#51
	db #23,#46,#7c,#97,#74,#97,#55,#55
	db #23,#46,#7c,#9f,#7c,#97,#55,#51
	db #27,#46,#7c,#9f,#7c,#97,#55,#51
	db #27,#46,#7c,#9f,#7c,#97,#55,#51
	db #23,#46,#7c,#97,#7c,#97,#55,#51
	db #23,#46,#7c,#97,#7c,#97,#55,#51
.l3bc0
	db #27,#4a,#7c,#9f,#7c,#9f,#27,#4a
	db #27,#4a,#7c,#9f,#7c,#9f,#27,#4a
	db #27,#4a,#23,#46,#27,#4a,#7c,#9f
	db #7c,#9f,#27,#4a,#27,#4a,#7c,#9f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0a,#0a,#09,#09,#08,#08,#07
	db #06,#05,#03,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0b,#0b,#0b,#0c,#0c,#0c,#0c
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #00,#9b,#3c,#00,#9e,#3c,#80,#80
	db #3c,#00,#44,#3d,#00,#8e,#3d,#80
	db #89,#3c,#00,#9b,#3c,#00,#d8,#3d
	db #80,#92,#3c,#fe,#38,#ff,#44,#1b
	db #17,#46,#1b,#16,#47,#1b,#15,#44
	db #1b,#17,#46,#1b,#16,#4b,#1b,#15
	db #44,#1b,#17,#46,#1b,#16,#47,#1b
	db #15,#44,#1b,#17,#46,#1b,#16,#4b
	db #1b,#15,#44,#1b,#17,#46,#1b,#16
	db #47,#1b,#15,#44,#1b,#17,#46,#1b
	db #16,#4b,#1b,#15,#44,#1b,#17,#46
	db #1b,#16,#47,#1b,#15,#44,#1b,#17
	db #46,#1b,#16,#4b,#1b,#15,#44,#1b
	db #17,#46,#1b,#16,#47,#1b,#15,#44
	db #1b,#17,#46,#1b,#16,#4b,#1b,#15
	db #44,#1b,#17,#46,#1b,#16,#47,#1b
	db #15,#44,#1b,#17,#46,#1b,#16,#4b
	db #1b,#15,#44,#1b,#17,#46,#1b,#16
	db #47,#1b,#15,#44,#1b,#17,#46,#1b
	db #16,#4b,#1b,#15,#44,#1b,#17,#46
	db #1b,#16,#47,#1b,#15,#44,#1b,#17
	db #46,#1b,#16,#4b,#1b,#15,#44,#1b
	db #17,#46,#1b,#16,#47,#1b,#15,#44
	db #1b,#14,#46,#1b,#13,#4b,#1b,#12
	db #57,#1b,#20,#ff,#4b,#2b,#20,#57
	db #20,#03,#0b,#12,#52,#2b,#20,#53
	db #20,#03,#0b,#12,#50,#2b,#20,#4f
	db #20,#02,#50,#20,#02,#52,#20,#02
	db #50,#20,#02,#4b,#20,#04,#0b,#12
	db #0b,#14,#57,#2b,#20,#57,#20,#03
	db #d8,#20,#57,#20,#02,#55,#20,#02
	db #53,#20,#03,#d2,#20,#50,#20,#03
	db #0b,#12,#52,#2b,#60,#0b,#12,#0b
	db #14,#0b,#16,#0b,#18,#ff,#4b,#2b
	db #20,#57,#20,#03,#0b,#12,#52,#2b
	db #20,#53,#20,#03,#0b,#12,#50,#2b
	db #20,#4f,#20,#02,#50,#20,#02,#52
	db #20,#02,#50,#20,#02,#4b,#20,#04
	db #0b,#12,#0b,#14,#57,#2b,#20,#57
	db #20,#03,#d8,#20,#57,#20,#02,#55
	db #20,#02,#53,#20,#03,#d2,#20,#50
	db #20,#03,#0b,#12,#52,#2b,#50,#0b
	db #12,#0b,#14,#0b,#16,#0b,#28,#ff
	db #00,#38,#ff

;
.music_info
	db "The 7th Guest Slide Show (1997)(Futurs)(Ker)",0
	db "ST-128 Module",0

	read "music_end.asm"
