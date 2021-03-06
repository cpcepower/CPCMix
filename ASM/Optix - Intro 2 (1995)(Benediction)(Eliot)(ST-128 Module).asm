; Music of Optix - Intro 2 (1995)(Benediction)(Eliot)(ST-128 Module)
; Ripped by Megachur the 12/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OPTIXIN2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6fd9

	read "music_header.asm"

	jr l6fdd
	jr l6fec
.l6fdd
	call l7010
	ld hl,l6ffd
	ld de,l6ff5
	ld bc,l81ff
	jp #bcd7
.l6fec
	ld hl,l6ffd
	call #bcdd
	jp l7088
.l6ff5
	push ix
	call l70a4
	pop ix
	ret
.l6ffd
	db #f9,#b7,#fb,#b7,#00,#81,#f5,#6f
	db #ff,#00
	jp l7010
	jp l70a4
	jp l7088
;
.init_music
.l7010
;
	xor a
	ld hl,l75bb
	call l7081
	ld hl,l75e9
	call l7081
	ld hl,l7617
	call l7081
	ld ix,l75b7
	ld iy,l7641
	ld de,#002e
	ld b,#03
.l7030
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
	djnz l7030
	ld hl,l74d0
	ld (hl),#03
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l74cc),hl
	ld (l74ce),hl
	ld a,#0c
	ld c,d
	call l74ac
	ld a,#0d
	ld c,d
	jp l74ac
.l7081
	ld b,#2a
.l7083
	ld (hl),a
	inc hl
	djnz l7083
	ret
;
.stop_music
.l7088
;
	ld a,#07
	ld c,#3f
	call l74ac
	ld a,#08
	ld c,#00
	call l74ac
	ld a,#09
	ld c,#00
	call l74ac
	ld a,#0a
	ld c,#00
	jp l74ac
;
.play_music
.l70a4
;
	ld hl,l74d2
	dec (hl)
	ld ix,l75b7
	ld bc,l75c5
	call l7146
	ld ix,l75e5
	ld bc,l75f3
	call l7146
	ld ix,l7613
	ld bc,l7621
	call l7146
	ld hl,l74cb
	ld de,l74d2
	ld b,#06
	call l7123
	ld b,#07
	call l7123
	ld b,#0b
	call l7123
	ld b,#0d
	call l7123
	ld de,l74d2
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l75d6
	call l70fc
	ld hl,l7604
	call l70fc
	ld hl,l7632
.l70fc
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
	jr nz,l7111
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l7111
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
.l7123
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l74ac
.l712e
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l74ac
.l7146
	ld a,(l74d2)
	or a
	jp nz,l71fe
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l71fe
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l712e
	or a
	jp z,l71f3
	ld r,a
	and #7f
	cp #10
	jr c,l71ce
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l7346
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
	jr z,l71a7
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l71a7
	rrca
	ld c,a
	ld hl,l7647
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
	jr z,l71c6
	ld (ix+#1e),b
.l71c6
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l71e7
.l71ce
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l74d7
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
.l71e7
	ld a,d
	or a
	jr nz,l71f5
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l71f5
.l71f3
	ld a,(hl)
	inc hl
.l71f5
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l71fe
	ld a,(ix+#17)
	or a
	jr nz,l7214
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l7214
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l722a
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l722a
	ld a,(ix+#0d)
	or a
	jr z,l7238
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l7256
.l7238
	ld a,(ix+#1a)
	or a
	jp z,l725d
	ld c,a
	cp #03
	jr nz,l7245
	xor a
.l7245
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l7256
	ld a,(ix+#18)
	dec c
	jr z,l7256
	ld a,(ix+#19)
.l7256
	add (ix+#07)
	ld b,d
	call l7346
.l725d
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l7285
	dec (ix+#1b)
	jr nz,l7285
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l72bd
.l7285
	ld a,(ix+#29)
	or a
	jr z,l72bd
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l72b4
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l72ab
	ld (ix+#29),#ff
	jr l72b4
.l72ab
	cp (ix+#2b)
	jr nz,l72b4
	ld (ix+#29),#01
.l72b4
	ld b,d
	or a
	jp p,l72ba
	dec b
.l72ba
	ld c,a
	jr l72c8
.l72bd
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l72c8
	pop hl
	bit 7,(ix+#14)
	jr z,l72d1
	ld h,d
	ld l,d
.l72d1
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l74ac
	ld c,h
	ld a,(ix+#02)
	call l74ac
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7324
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l7313
	dec (ix+#09)
	jr nz,l7313
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l730b
	xor a
	jr l7310
.l730b
	cp #10
	jr nz,l7310
	dec a
.l7310
	ld (ix+#1e),a
.l7313
	ld a,b
	sub (ix+#1e)
	jr nc,l731a
	xor a
.l731a
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l74ac
.l7324
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l74d3)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l7342
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l7342
	ld (l74d3),hl
	ret
.l7346
	ld hl,l74f5
	cp #61
	jr nc,l7350
	add a
	ld c,a
	add hl,bc
.l7350
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l735a
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l747f
	ld (ix+#1e),a
	jp l71e7
.l736c
	dec b
.l736d
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l7378
	neg
.l7378
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
	jp l71e7
.l738e
	dec b
	jr l7392
.l7391
	inc b
.l7392
	call l747f
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l71e7
.l73a1
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
	jp l7464
.l73b2
	ld a,(hl)
	inc hl
	or a
	jr z,l73d4
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
.l73d4
	ld (ix+#29),a
	jp l71e7
.l73da
	dec hl
	ld a,(hl)
	and #0f
	ld (l74d6),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l74d5),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l71e7
.l73f4
	ld a,(hl)
	or a
	jr z,l7405
	call l7481
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l71e7
.l7405
	ld hl,#0101
	ld (l74d1),hl
	jp l71e7
.l740e
	call l747f
	ld (ix+#1e),a
	jp l71e7
.l7417
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l7490
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l7490
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l71e7
.l7439
	ld a,(hl)
	inc hl
	ld (l74d0),a
	jp l71e7
.l7441
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
	jp l71e7
.l7460
	call l747f
	add a
.l7464
	ld b,#00
	ld c,a
	push hl
	ld hl,l76c7
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l71e7
.l747f
	ld a,(hl)
	inc hl
.l7481
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
.l7490
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l7647
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l74ac
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
.l74cb
	ret
.l74d3 equ $ + 7
.l74d2 equ $ + 6
.l74d1 equ $ + 5
.l74d0 equ $ + 4
.l74ce equ $ + 2
.l74cc
	db #00,#38,#00,#00,#03,#07,#03,#00
.l74d6 equ $ + 2
.l74d5 equ $ + 1
	db #38,#00,#00
.l74d7
	dw l735a,l736d,l736c,l7391
	dw l738e,l73a1,l73b2,l73da
	dw l73f4,l73da,l740e,l7417
	dw l7439,l7441,l7460
.l74f5
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
.l75bb equ $ + 4
.l75b7
	db #08,#00,#01,#08,#00,#00,#00,#00
.l75c5 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l75d6 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#08
	db #9b,#77,#8a,#77,#00,#ff,#00,#00
.l75e5 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l75e9 equ $ + 2
	db #03,#10,#8e,#00,#00,#32,#00,#00
.l75f3 equ $ + 4
	db #00,#00,#67,#77,#e7,#76,#27,#77
	db #47,#77,#14,#00,#03,#00,#00,#00
.l7604 equ $ + 5
	db #00,#00,#00,#00,#06,#01,#2a,#78
	db #90,#77,#00,#30,#00,#00,#00,#00
.l7613 equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l7617
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7621 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7632 equ $ + 3
	db #00,#00,#00,#08,#9b,#77,#96,#77
	db #00,#ff,#00,#00,#00,#00,#00,#00
.l7641 equ $ + 2
	db #00,#00,#87,#77,#8d,#77,#93,#77
.l7647
	db #1d,#33,#cd,#5a,#dd,#6a,#24,#04
	db #cd,#6a,#0d,#33,#25,#33,#7c,#5c
	db #15,#23,#c5,#6e,#99,#47,#20,#a0
	db #e7,#76,#27,#77,#47,#77,#14,#0c
	db #a4,#52,#5d,#0b,#9d,#4b,#b4,#b4
	db #b7,#9d,#f7,#9d,#17,#9e,#09,#00
	db #95,#53,#9d,#49,#99,#49,#20,#30
	db #99,#47,#9d,#4b,#a1,#47,#f0,#f0
	db #a1,#4f,#cd,#7a,#9d,#4b,#f4,#f4
	db #9d,#4b,#a5,#55,#a5,#55,#fc,#fc
	db #97,#55,#cd,#76,#99,#47,#20,#20
	db #99,#47,#99,#47,#a1,#51,#f0,#f0
	db #a1,#4f,#cd,#7a,#9d,#4b,#24,#20
	db #37,#9e,#77,#9e,#97,#9e,#16,#0a
	db #a5,#53,#c9,#76,#9d,#47,#20,#20
	db #99,#47,#9d,#4b,#a5,#4b,#f4,#f4
.l76c7
	db #a5,#53,#cd,#76,#9d,#4b,#cd,#76
	db #9d,#4b,#a5,#53,#a5,#55,#a5,#53
	db #97,#45,#67,#77,#cd,#5a,#c9,#56
	db #c9,#56,#cd,#aa,#cd,#7a,#cd,#7a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#02,#00,#02,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#03,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0e
	db #0e,#0e,#0e,#0f,#0f,#0f,#0f,#0f
	db #0f,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#99,#77,#80,#87,#77,#00,#9c
	db #77,#80,#8d,#77,#00,#99,#77,#80
	db #93,#77,#00,#40,#ff,#fe,#01,#c4
	db #36,#90,#fe,#01,#c4,#36,#92,#fe
	db #01,#c4,#36,#94,#fe,#01,#c4,#36
	db #96,#fe,#01,#c4,#36,#90,#fe,#01
	db #c4,#36,#92,#fe,#01,#c4,#36,#94
	db #fe,#01,#c4,#36,#96,#fe,#01,#c4
	db #36,#90,#fe,#01,#c4,#36,#92,#fe
	db #01,#c4,#36,#94,#fe,#01,#c4,#36
	db #96,#fe,#01,#c4,#36,#90,#fe,#01
	db #c4,#36,#92,#fe,#01,#c4,#36,#94
	db #fe,#01,#c4,#36,#96,#fe,#01,#c0
	db #36,#90,#fe,#01,#c0,#36,#92,#fe
	db #01,#c0,#36,#94,#fe,#01,#c0,#36
	db #96,#fe,#01,#c0,#36,#90,#fe,#01
	db #c0,#36,#92,#fe,#01,#c0,#36,#94
	db #fe,#01,#c0,#36,#96,#fe,#01,#c2
	db #36,#90,#fe,#01,#c2,#36,#92,#fe
	db #01,#c2,#36,#94,#fe,#01,#c2,#36
	db #96,#fe,#01,#c2,#36,#90,#fe,#01
	db #c2,#36,#92,#fe,#01,#c2,#36,#94
	db #fe,#01,#c2,#36,#96,#ff,#00,#00
	db #00,#11,#00,#c0,#21,#6c,#78,#7e
	db #23,#32,#54,#78,#7a,#fe,#00,#ca
	db #6b,#78,#7e,#47,#fe,#01,#ca,#5f
	db #78,#78,#12,#13,#23,#c3,#4b,#78
	db #23,#7e,#23,#46,#23,#12,#13,#10
	db #fc,#c3,#4b,#78,#c9,#01,#01,#00
	db #ff,#01,#00,#7b,#03,#01,#0f,#0c
	db #0e,#01,#00,#42,#03,#01,#0f,#0c
	db #0e,#01,#00,#08,#80,#20,#00,#80
	db #00,#80,#00,#20,#60,#00,#20,#00
	db #00,#80,#80,#00,#20,#00,#80,#80
	db #20,#00,#20,#20,#90,#a0,#00,#00
	db #20,#20,#80,#20,#20,#80,#80,#00
	db #00,#20,#60,#20,#00,#00,#80,#a0
	db #60,#00,#00,#20,#80,#00,#80,#80
	db #a0,#01,#00,#03,#20,#80,#a1,#2d
	db #d2,#87,#4b,#0f,#2d,#69,#2d,#0f
	db #0f,#87,#a5,#68,#00,#20,#20,#80
	db #20,#20,#10,#00,#90,#80,#80,#00
	db #20,#20,#90,#80,#00,#01,#80,#03
	db #00,#a0,#00,#80,#a0,#20,#80,#80
	db #40,#00,#20,#00,#90,#a0,#00,#80
	db #a0,#20,#80,#00,#00,#80,#a0,#01
	db #20,#03,#60,#00,#80,#00,#80,#a0
	db #60,#00,#01,#20,#03,#00,#80,#80
	db #00,#80,#01,#20,#04,#21,#2d,#87
	db #01,#0f,#06,#2d,#0f,#0f,#2d,#0e
	db #00,#80,#80,#00,#20,#00,#90,#80
	db #80,#01,#20,#03,#00,#80,#00,#20
	db #20,#80,#00,#80,#20,#10,#40,#01
	db #00,#2b,#03,#01,#0f,#0c,#0e,#01
	db #00,#08,#80,#20,#00,#80,#80,#20
	db #00,#20,#00,#80,#a0,#20,#20,#00
	db #00,#90,#20,#20,#80,#00,#00,#80
	db #a0,#20,#80,#a0,#00,#01,#20,#03
	db #80,#a0,#20,#80,#00,#00,#80,#00
	db #80,#00,#20,#20,#80,#90,#40,#01
	db #20,#03,#00,#20,#00,#80,#a0,#00
	db #80,#20,#00,#80,#a1,#0f,#2d,#2d
	db #0f,#87,#2d,#2d,#0f,#2d,#2d,#87
	db #2d,#2c,#90,#80,#80,#00,#80,#01
	db #00,#03,#80,#20,#00,#00,#20,#00
	db #80,#00,#80,#20,#00,#80,#00,#20
	db #00,#80,#a0,#20,#80,#a0,#20,#80
	db #a0,#20,#80,#a0,#00,#00,#10,#40
	db #80,#80,#00,#50,#20,#20,#80,#80
	db #20,#00,#20,#00,#80,#20,#20,#80
	db #a0,#00,#20,#00,#80,#80,#a0,#00
	db #00,#20,#20,#80,#03,#0f,#87,#a5
	db #0f,#87,#2d,#2d,#87,#96,#4b,#87
	db #87,#86,#80,#80,#00,#80,#a0,#00
	db #00,#80,#20,#20,#00,#80,#20,#20
	db #00,#01,#80,#03,#a0,#60,#00,#80
	db #00,#80,#80,#00,#80,#a0,#00,#20
	db #00,#80,#90,#20,#20,#80,#00,#00
	db #40,#20,#20,#80,#20,#20,#80,#00
	db #80,#00,#a0,#00,#80,#00,#20,#00
	db #00,#20,#80,#a0,#60,#00,#80,#00
	db #01,#20,#03,#80,#a1,#0f,#87,#a5
	db #2d,#87,#0f,#0f,#1e,#01,#0f,#03
	db #2d,#0e,#80,#a0,#20,#90,#20,#20
	db #80,#00,#00,#a0,#00,#90,#20,#20
	db #80,#20,#60,#80,#20,#00,#00,#20
	db #00,#80,#a0,#20,#80,#20,#20,#01
	db #80,#04,#00,#00,#80,#a0,#60,#00
	db #20,#00,#80,#20,#20,#80,#a0,#60
	db #00,#20,#20,#80,#20,#00,#80,#a0
	db #20,#80,#20,#20,#80,#a0,#60,#80
	db #00,#00,#80,#a0,#01,#00,#03,#20
	db #80,#80,#00,#00,#a0,#20,#80,#01
	db #20,#03,#00,#80,#80,#a0,#60,#00
	db #00,#20,#20,#00,#00,#20,#00,#00
	db #80,#80,#00,#20,#00,#80,#a0,#60
	db #00,#a0,#00,#20,#20,#00,#80,#20
	db #00,#00,#20,#20,#80,#01,#00,#03
	db #a0,#01,#00,#03,#80,#80,#20,#60
	db #01,#20,#03,#00,#20,#20,#00,#80
	db #20,#80,#10,#00,#00,#20,#00,#80
	db #01,#20,#05,#90,#a0,#00,#00,#20
	db #20,#80,#00,#00,#80,#00,#00,#80
	db #20,#00,#80,#a0,#20,#90,#80,#80
	db #20,#20,#80,#a0,#20,#00,#01,#20
	db #04,#00,#80,#90,#40,#00,#20,#20
	db #80,#20,#00,#80,#a0,#00,#80,#00
	db #80,#80,#20,#20,#00,#20,#00,#80
	db #00,#20,#00,#20,#00,#80,#20,#00
	db #80,#00,#80,#00,#80,#01,#00,#24
	db #01,#ff,#21,#01,#00,#2f,#01,#ff
	db #0c,#fa,#01,#fd,#04,#ff,#f7,#f7
	db #fb,#ff,#fd,#fd,#f7,#f5,#fd,#ff
	db #f5,#ff,#fb,#ff,#ff,#50,#20,#20
	db #80,#80,#20,#00,#01,#20,#04,#00
	db #90,#80,#00,#80,#90,#40,#80,#20
	db #00,#00,#20,#00,#80,#80,#01,#00
	db #15,#01,#ff,#21,#01,#00,#2f,#01
	db #ff,#21,#01,#00,#2f,#01,#ff,#21
	db #01,#00,#ff,#01,#00,#ff,#01,#00
	db #ff,#01,#00,#69,#03,#01,#0f,#0c
	db #0e,#01,#00,#42,#03,#01,#0f,#0c
	db #0e,#01,#00,#08,#70,#90,#e0,#70
	db #90,#c0,#00,#20,#20,#00,#10,#e0
	db #f0,#00,#80,#00,#20,#00,#80,#b0
	db #c0,#00,#10,#c0,#80,#90,#e0,#00
	db #30,#c0,#70,#a0,#20,#70,#00,#80
	db #00,#20,#20,#70,#00,#00,#70,#20
	db #20,#00,#30,#c0,#70,#90,#c0,#f0
	db #10,#e0,#00,#30,#c0,#80,#92,#c3
	db #01,#87,#03,#0f,#2d,#2d,#78,#0f
	db #0f,#78,#2d,#2c,#00,#10,#c0,#70
	db #90,#c0,#20,#00,#80,#90,#c0,#00
	db #10,#c0,#80,#80,#00,#f0,#10,#c0
	db #f0,#10,#e0,#80,#a0,#20,#70,#80
	db #80,#00,#10,#e0,#80,#90,#e0,#70
	db #20,#20,#70,#80,#00,#80,#90,#c0
	db #70,#20,#20,#f0,#00,#00,#70,#20
	db #20,#00,#10,#c0,#20,#10,#c0,#70
	db #90,#c0,#01,#20,#03,#70,#21,#2d
	db #78,#87,#87,#2d,#0f,#87,#0f,#1e
	db #e1,#0f,#1e,#e0,#f0,#00,#80,#00
	db #10,#e0,#01,#80,#03,#20,#20,#70
	db #00,#80,#00,#10,#c0,#80,#00,#80
	db #70,#01,#20,#03,#01,#00,#2a,#03
	db #01,#0f,#0c,#0e,#01,#00,#08,#80
	db #10,#e0,#70,#30,#c0,#00,#20,#00
	db #70,#01,#20,#03,#00,#00,#60,#90
	db #c0,#70,#80,#00,#70,#a0,#20,#80
	db #90,#e0,#70,#20,#20,#70,#20,#20
	db #70,#80,#00,#70,#80,#80,#00,#30
	db #c0,#01,#80,#03,#70,#30,#c0,#00
	db #10,#e0,#70,#20,#00,#80,#10,#e0
	db #80,#a1,#0f,#78,#1e,#e1,#78,#b4
	db #c3,#0f,#2d,#2d,#78,#96,#c2,#80
	db #90,#c0,#f0,#00,#80,#20,#00,#70
	db #90,#e0,#00,#20,#00,#70,#80,#80
	db #70,#00,#80,#00,#20,#00,#80,#90
	db #c0,#70,#a0,#20,#80,#a0,#20,#80
	db #90,#e0,#00,#00,#01,#80,#03,#00
	db #20,#10,#c0,#70,#30,#c0,#00,#20
	db #00,#70,#a0,#20,#80,#90,#e0,#20
	db #00,#80,#80,#90,#e0,#00,#30,#c0
	db #70,#83,#0f,#f0,#1e,#e1,#78,#96
	db #c3,#78,#0f,#87,#87,#96,#c2,#80
	db #80,#00,#f0,#10,#e0,#f0,#00,#70
	db #10,#e0,#70,#90,#c0,#f0,#10,#c0
	db #70,#20,#20,#f0,#00,#00,#f0,#00
	db #00,#70,#20,#00,#20,#10,#c0,#60
	db #90,#c0,#70,#80,#00,#01,#20,#03
	db #70,#a0,#20,#70,#90,#c0,#f0,#10
	db #e0,#70,#b0,#c0,#00,#30,#c0,#80
	db #a0,#20,#f0,#00,#00,#01,#20,#03
	db #70,#12,#e1,#87,#96,#e1,#78,#87
	db #87,#2d,#0f,#87,#0f,#1e,#e0,#80
	db #a0,#20,#60,#90,#c0,#70,#80,#f0
	db #10,#e0,#60,#90,#c0,#70,#a0,#20
	db #70,#90,#e0,#00,#10,#e0,#70,#20
	db #20,#80,#10,#c0,#01,#80,#03,#70
	db #80,#00,#70,#20,#20,#00,#10,#e0
	db #70,#a0,#20,#80,#a0,#20,#00,#20
	db #20,#70,#90,#e0,#70,#20,#20,#80
	db #20,#20,#70,#a0,#20,#70,#80,#00
	db #f0,#10,#e0,#00,#30,#c0,#80,#80
	db #00,#f0,#10,#c0,#70,#90,#c0,#20
	db #10,#c0,#70,#01,#20,#03,#00,#70
	db #10,#e0,#00,#10,#e0,#f0,#00,#80
	db #00,#10,#e0,#70,#20,#20,#f0,#10
	db #e0,#70,#10,#e0,#70,#90,#e0,#00
	db #30,#c0,#70,#80,#00,#f0,#10,#e0
	db #00,#00,#80,#70,#a0,#20,#70,#20
	db #20,#00,#20,#20,#f0,#30,#c0,#70
	db #b0,#e0,#00,#10,#e0,#70,#90,#c0
	db #70,#10,#e0,#80,#90,#e0,#00,#30
	db #c0,#70,#80,#00,#70,#80,#00,#70
	db #90,#e0,#80,#a0,#20,#01,#80,#03
	db #10,#c0,#70,#20,#20,#00,#20,#20
	db #70,#10,#e0,#70,#20,#20,#00,#20
	db #20,#80,#20,#00,#80,#90,#e0,#70
	db #90,#c0,#70,#a0,#20,#00,#10,#e0
	db #70,#b0,#c0,#00,#10,#e0,#80,#20
	db #00,#70,#80,#80,#f0,#00,#80,#01
	db #00,#23,#01,#ff,#21,#01,#00,#2f
	db #01,#ff,#0c,#fd,#fe,#f3,#f8,#fe
	db #f1,#01,#f7,#03,#ff,#fd,#fd,#f7
	db #f6,#f3,#f0,#fe,#f1,#f0,#f7,#ff
	db #20,#10,#c0,#70,#30,#c0,#00,#30
	db #c0,#70,#10,#e0,#80,#80,#00,#01
	db #80,#03,#70,#90,#e0,#00,#10,#e0
	db #01,#80,#03,#01,#00,#14,#01,#ff
	db #21,#01,#00,#2f,#01,#ff,#21,#01
	db #00,#2f,#01,#ff,#21,#01,#00,#ff
	db #01,#00,#ff,#01,#00,#ff,#01,#00
	db #69,#03,#01,#0f,#0c,#0e,#01,#00
	db #42,#03,#01,#0f,#0c,#0e,#01,#00
	db #42,#03,#01,#0f,#0c,#0e,#01,#00
	db #42,#03,#01,#0f,#0c,#0e,#01,#00
	db #42,#03,#01,#0f,#0c,#0e,#01,#00
	db #42,#03,#01,#0f,#0c,#0e,#01,#00
	db #42,#03,#01,#0f,#0c,#0e,#01,#00
	db #ff,#01,#00,#4c,#01,#ff,#21,#01
	db #00,#2f,#01,#ff,#21,#01,#00,#2f
	db #01,#ff,#21,#01,#00,#2f,#01,#ff
	db #21,#01,#00,#2f,#01,#ff,#21,#01
	db #00,#ff,#01,#00,#ff,#01,#00,#ff
	db #01,#00,#69,#03,#01,#0f,#0c,#0e
	db #01,#00,#42,#03,#01,#0f,#0c,#0e
	db #01,#00,#42,#03,#01,#0f,#0c,#0e
	db #01,#00,#42,#03,#01,#0f,#0c,#0e
	db #01,#00,#42,#03,#01,#0f,#0c,#0e
	db #01,#00,#42,#03,#01,#0f,#0c,#0e
	db #01,#00,#42,#03,#01,#0f,#0c,#0e
	db #01,#00,#ff,#01,#00,#4c,#01,#ff
	db #21,#01,#00,#2f,#01,#ff,#21,#01
	db #00,#2f,#01,#ff,#21,#01,#00,#2f
	db #01,#ff,#21,#01,#00,#2f,#01,#ff
	db #21,#01,#00,#ff,#01,#00,#ff,#01
	db #00,#ff,#01,#00,#69,#03,#01,#0f
	db #0c,#0e,#01,#00,#42,#03,#01,#0f
	db #0c,#0e,#01,#00,#42,#03,#01,#0f
	db #0c,#0e,#01,#00,#42,#03,#01,#0f
	db #0c,#0e,#01,#00,#42,#03,#01,#0f
	db #0c,#0e,#01,#00,#42,#03,#01,#0f
	db #0c,#0e,#01,#00,#42,#03,#01,#0f
	db #0c,#0e,#01,#00,#ff,#01,#00,#4c
	db #01,#ff,#21,#01,#00,#2f,#01,#ff
	db #21,#01,#00,#2f,#01,#ff,#21,#01
	db #00,#2f,#01,#ff,#21,#01,#00,#2f
	db #01,#ff,#21,#01,#00,#ff,#01,#00
	db #ff,#01,#00,#ff,#01,#00,#69,#03
	db #01,#0f,#0c,#0e,#01,#00,#08,#70
	db #90,#e0,#70,#90,#c0,#00,#20,#20
	db #10,#10,#e0,#70,#b0,#e0,#00,#30
	db #c0,#70,#10,#e0,#00,#20,#20,#80
	db #90,#e0,#00,#30,#c0,#70,#a0,#20
	db #70,#00,#80,#00,#20,#20,#70,#00
	db #00,#80,#a0,#20,#00,#10,#e0,#80
	db #10,#c0,#f0,#10,#e0,#00,#10,#e0
	db #80,#92,#c3,#87,#87,#0f,#0f,#2d
	db #2d,#78,#0f,#0f,#87,#a5,#2c,#00
	db #00,#e0,#70,#a0,#20,#00,#00,#80
	db #90,#c0,#00,#20,#20,#80,#80,#00
	db #f0,#10,#c0,#70,#90,#e0,#80,#90
	db #c0,#70,#80,#00,#00,#10,#e0,#80
	db #90,#e0,#70,#30,#c0,#70,#80,#00
	db #80,#90,#c0,#70,#20,#20,#70,#80
	db #00,#80,#a0,#20,#00,#20,#20,#f0
	db #90,#c0,#80,#10,#c0,#f0,#90,#c0
	db #70,#30,#c3,#78,#87,#01,#0f,#05
	db #1e,#e1,#1e,#1e,#e0,#70,#b0,#e0
	db #00,#10,#e0,#80,#80,#70,#90,#c0
	db #70,#30,#e0,#00,#10,#c0,#f0,#30
	db #e0,#70,#01,#20,#03,#01,#00,#2a
	db #03,#01,#0f,#0c,#0e,#01,#00,#08
	db #f0,#20,#00,#80,#90,#e0,#00,#10
	db #e0,#70,#30,#c0,#f0,#80,#00,#70
	db #20,#20,#70,#80,#00,#70,#90,#c0
	db #f0,#10,#e0,#70,#20,#20,#70,#30
	db #c0,#70,#80,#00,#70,#b0,#e0,#00
	db #30,#c0,#70,#20,#20,#70,#30,#c0
	db #00,#10,#e0,#70,#30,#c0,#f0,#10
	db #e0,#f0,#12,#e1,#78,#1e,#e1,#87
	db #3c,#c3,#0f,#3c,#c3,#78,#a5,#2c
	db #80,#90,#c0,#70,#80,#80,#20,#00
	db #70,#90,#e0,#00,#30,#c0,#70,#b0
	db #e0,#70,#30,#e0,#00,#30,#c0,#f0
	db #10,#c0,#70,#b0,#c0,#70,#20,#20
	db #80,#90,#e0,#00,#20,#20,#70,#00
	db #00,#80,#90,#c0,#80,#90,#e0,#00
	db #30,#c0,#70,#b0,#c0,#80,#90,#e0
	db #f0,#b0,#e0,#f0,#10,#e0,#00,#30
	db #c0,#70,#83,#0f,#f0,#1e,#e1,#78
	db #96,#c3,#87,#a5,#2d,#f0,#1e,#c2
	db #f0,#00,#00,#f0,#10,#e0,#70,#80
	db #70,#20,#00,#80,#20,#20,#70,#90
	db #c0,#70,#20,#20,#70,#80,#00,#f0
	db #00,#40,#70,#30,#c0,#f0,#90,#c0
	db #70,#20,#20,#70,#80,#00,#20,#30
	db #c0,#70,#90,#c0,#80,#10,#c0,#70
	db #90,#e0,#70,#90,#e0,#00,#10,#e0
	db #70,#20,#20,#70,#80,#00,#f0,#b0
	db #c0,#80,#92,#e1,#78,#1e,#e1,#78
	db #87,#87,#2d,#01,#0f,#03,#1e,#e0
	db #80,#90,#c0,#70,#20,#20,#70,#80
	db #70,#90,#e0,#70,#20,#20,#70,#a0
	db #20,#70,#90,#e0,#00,#10,#e0,#70
	db #20,#20,#f0,#10,#c0,#f0,#30,#e0
	db #70,#80,#00,#80,#a0,#20,#00,#10
	db #e0,#70,#b0,#c0,#70,#20,#20,#00
	db #10,#c0,#70,#90,#e0,#70,#20,#20
	db #f0,#10,#c0,#70,#a0,#20,#70,#80
	db #00,#f0,#10,#e0,#00,#10,#e0,#70
	db #00,#00,#70,#90,#c0,#80,#20,#20
	db #f0,#90,#c0,#70,#20,#20,#00,#00
	db #70,#20,#00,#00,#10,#e0,#70,#b0
	db #e0,#00,#10,#e0,#70,#20,#20,#70
	db #90,#e0,#70,#20,#00,#80,#10,#e0
	db #00,#30,#c0,#70,#80,#00,#70,#90
	db #e0,#00,#30,#e0,#70,#a0,#20,#70
	db #30,#c0,#00,#10,#c0,#70,#90,#e0
	db #70,#b0,#e0,#00,#10,#e0,#80,#10
	db #c0,#70,#10,#e0,#80,#90,#e0,#00
	db #30,#c0,#70,#80,#00,#80,#00,#40
	db #70,#90,#e0,#f0,#10,#c0,#80,#80
	db #f0,#10,#c0,#80,#b0,#c0,#00,#20
	db #20,#70,#10,#e0,#80,#a0,#20,#00
	db #10,#c0,#f0,#30,#c0,#f0,#10,#e0
	db #70,#90,#c0,#70,#b0,#c0,#00,#20
	db #00,#70,#90,#e0,#00,#10,#e0,#70
	db #90,#e0,#70,#b0,#e0,#70,#80,#01
	db #00,#74,#01,#ff,#0c,#f7,#f6,#f3
	db #f8,#fd,#ff,#f8,#01,#ff,#03,#fe
	db #f3,#f7,#f5,#fd,#f8,#f6,#f1,#f0
	db #f7,#ff,#80,#90,#c0,#80,#90,#e0
	db #00,#30,#c0,#70,#10,#e0,#80,#80
.l81ff
	db #00,#70,#20,#20,#70,#90,#e0,#00
	db #10,#e0,#70,#00,#80,#01,#00,#14
	db #01,#ff,#21,#01,#00,#2f,#01,#ff
	db #21,#01,#00,#2f,#01,#ff,#21,#01
	db #00,#2f,#01,#ff,#21,#01,#00,#ff
	db #01,#00,#ff,#01,#00,#ff,#01,#00
	db #19,#03,#01,#0f,#0c,#0e,#01,#00
	db #42,#03,#01,#0f,#0c,#0e,#01,#00
	db #08,#80,#20,#00,#80,#00,#80,#00
	db #30,#01,#20,#03,#00,#80,#00,#80
	db #00,#20,#20,#80,#a0,#00,#00,#20
	db #20,#c0,#a0,#00,#00,#20,#20,#80
	db #30,#60,#01,#80,#03,#00,#30,#20
	db #20,#00,#00,#80,#b0,#20,#00,#20
	db #00,#80,#00,#80,#80,#a0,#00,#00
	db #20,#00,#80,#a1,#2d,#87,#87,#0f
	db #0f,#3c,#2d,#2d,#0f,#0f,#87,#b4
	db #2c,#00,#00,#20,#80,#20,#20,#00
	db #00,#c0,#80,#80,#00,#20,#20,#c0
	db #80,#00,#01,#80,#04,#20,#00,#d0
	db #a0,#20,#80,#01,#00,#03,#20,#00
	db #c0,#a0,#00,#80,#a0,#20,#80,#00
	db #00,#d0,#a0,#20,#20,#30,#20,#80
	db #00,#00,#80,#b0,#20,#00,#01,#20
	db #03,#00,#80,#80,#00,#80,#01,#20
	db #04,#21,#2d,#87,#01,#0f,#06,#2d
	db #0f,#2d,#2d,#0e,#80,#00,#80,#00
	db #20,#00,#c0,#80,#80,#01,#20,#03
	db #00,#80,#00,#20,#20,#01,#80,#03
	db #20,#10,#40,#20,#01,#00,#2a,#03
	db #01,#0f,#0c,#0e,#01,#00,#08,#80
	db #a0,#00,#80,#a0,#00,#00,#20,#00
	db #80,#a0,#20,#20,#00,#00,#80,#a0
	db #20,#80,#00,#00,#80,#20,#20,#80
	db #a0,#00,#20,#30,#60,#80,#a0,#20
	db #80,#00,#00,#80,#00,#80,#00,#20
	db #20,#80,#a0,#01,#20,#04,#00,#20
	db #00,#80,#a0,#20,#80,#a0,#00,#80
	db #a1,#0f,#2d,#2d,#0f,#87,#2d,#2d
	db #0f,#2d,#2d,#87,#2d,#2c,#c0,#01
	db #80,#03,#00,#80,#20,#00,#80,#20
	db #00,#00,#20,#20,#80,#00,#80,#20
	db #00,#80,#00,#20,#20,#80,#a0,#20
	db #80,#20,#20,#80,#b0,#60,#d0,#a0
	db #00,#00,#20,#20,#80,#80,#00,#80
	db #a0,#20,#80,#a0,#00,#00,#20,#20
	db #80,#20,#20,#d0,#a0,#00,#20,#00
	db #80,#80,#a0,#00,#00,#20,#20,#80
	db #03,#0f,#87,#a5,#0f,#87,#2d,#2d
	db #87,#a5,#2d,#87,#87,#86,#80,#80
	db #00,#80,#a0,#00,#80,#00,#20,#20
	db #00,#80,#20,#20,#80,#00,#80,#80
	db #b0,#20,#80,#00,#00,#01,#80,#04
	db #a0,#20,#20,#00,#80,#80,#a0,#20
	db #80,#00,#00,#40,#20,#20,#80,#20
	db #20,#80,#00,#80,#80,#20,#00,#80
	db #20,#00,#00,#20,#00,#80,#b0,#20
	db #80,#00,#00,#01,#20,#03,#80,#a1
	db #0f,#87,#a5,#0f,#87,#0f,#87,#1e
	db #01,#0f,#03,#2d,#0e,#80,#a0,#20
	db #80,#a0,#20,#80,#00,#80,#20,#00
	db #80,#a0,#20,#80,#30,#20,#80,#20
	db #00,#00,#20,#00,#80,#b0,#60,#80
	db #a0,#20,#01,#80,#04,#00,#00,#80
	db #b0,#20,#00,#20,#00,#80,#20,#20
	db #80,#b0,#20,#00,#20,#20,#80,#20
	db #00,#80,#b0,#60,#80,#a0,#20,#80
	db #30,#20,#80,#00,#00,#80,#a0,#00
	db #00,#20,#00,#80,#80,#00,#80,#20
	db #20,#80,#01,#20,#03,#00,#80,#80
	db #b0,#20,#00,#00,#20,#20,#00,#00
	db #20,#00,#80,#00,#80,#00,#20,#00
	db #80,#b0,#20,#80,#20,#00,#20,#20
	db #00,#80,#20,#00,#00,#20,#20,#80
	db #00,#00,#80,#20,#01,#00,#03,#80
	db #80,#30,#01,#20,#04,#00,#20,#20
	db #80,#20,#00,#80,#00,#40,#00,#20
	db #00,#80,#01,#20,#04,#00,#c0,#a0
	db #00,#00,#20,#20,#80,#00,#00,#80
	db #00,#80,#80,#20,#00,#80,#a0,#20
	db #c0,#80,#80,#a0,#20,#80,#a0,#20
	db #00,#30,#60,#20,#20,#00,#80,#90
	db #40,#00,#20,#20,#80,#a0,#20,#80
	db #a0,#00,#80,#00,#80,#80,#20,#20
	db #00,#20,#00,#80,#20,#00,#00,#20
	db #00,#80,#20,#00,#80,#00,#80,#80
	db #01,#00,#75,#01,#ff,#0c,#f7,#f5
	db #01,#fd,#03,#ff,#f7,#f7,#ff,#ff
	db #fd,#fd,#f2,#f5,#fd,#f7,#fd,#ff
	db #fe,#ff,#ff,#80,#a0,#20,#80,#a0
	db #00,#00,#01,#20,#04,#00,#c0,#80
	db #00,#80,#a0,#20,#80,#20,#00,#00
	db #20,#00,#01,#80,#03,#01,#00,#14
	db #01,#ff,#21,#01,#00,#2f,#01,#ff
	db #21,#01,#00,#2f,#01,#ff,#21,#01
	db #00,#2f,#01,#ff,#21,#01,#00,#ff
	db #01,#00,#ff,#01,#00,#ff,#01,#00
	db #19,#03,#01,#0f,#0c,#0e,#01,#00
	db #42,#03,#01,#0f,#0c,#0e,#01,#00
	db #08,#80,#30,#80,#80,#00,#80,#00
	db #20,#a0,#00,#30,#80,#70,#00,#80
	db #00,#30,#c0,#f0,#90,#c0,#00,#20
	db #20,#a0,#b0,#80,#00,#20,#20,#e0
	db #20,#a0,#01,#80,#03,#00,#20,#a0
	db #20,#00,#00,#80,#a0,#a0,#00,#10
	db #c0,#80,#00,#80,#80,#b0,#80,#70
	db #10,#c0,#f0,#a1,#2d,#a5,#87,#0f
	db #0f,#2d,#a5,#2d,#0f,#0f,#87,#a5
	db #a4,#00,#00,#20,#e0,#20,#20,#00
	db #00,#a0,#80,#80,#00,#20,#20,#a0
	db #80,#00,#01,#80,#03,#70,#20,#00
	db #a0,#b0,#e0,#90,#80,#00,#00,#30
	db #80,#a0,#a0,#00,#80,#b0,#c0,#e0
	db #00,#00,#a0,#a0,#01,#20,#03,#a0
	db #70,#00,#00,#80,#a0,#a0,#00,#01
	db #20,#03,#00,#80,#80,#00,#80,#20
	db #30,#e0,#20,#30,#c3,#e1,#01,#0f
	db #06,#2d,#0f,#0f,#3c,#86,#70,#00
	db #80,#00,#30,#80,#a0,#80,#e0,#30
	db #e0,#20,#00,#80,#00,#20,#20,#f0
	db #00,#80,#20,#00,#80,#20,#01,#00
	db #2a,#03,#01,#0f,#0c,#0e,#01,#00
	db #08,#f0,#20,#00,#80,#90,#c0,#00
	db #30,#80,#80,#b0,#c0,#20,#00,#00
	db #80,#a0,#20,#e0,#00,#00,#90,#b0
	db #e0,#f0,#20,#00,#20,#20,#a0,#80
	db #b0,#c0,#e0,#00,#00,#e0,#00,#80
	db #00,#20,#20,#f0,#a0,#01,#20,#04
	db #00,#20,#00,#80,#b0,#c0,#f0,#30
	db #80,#f0,#30,#87,#2d,#3c,#87,#87
	db #2d,#2d,#0f,#3c,#c3,#e1,#2d,#2c
	db #a0,#80,#80,#70,#00,#80,#20,#00
	db #80,#30,#80,#00,#30,#c0,#e0,#00
	db #80,#20,#00,#80,#00,#30,#c0,#f0
	db #20,#20,#90,#b0,#c0,#f0,#01,#a0
	db #03,#b0,#80,#00,#20,#20,#f0,#80
	db #00,#80,#a0,#20,#80,#90,#c0,#00
	db #30,#c0,#e0,#30,#c0,#a0,#b0,#80
	db #20,#00,#80,#f0,#30,#80,#00,#20
	db #20,#e0,#03,#0f,#87,#b4,#87,#87
	db #2d,#2d,#87,#a5,#2d,#f0,#0f,#86
	db #f0,#00,#00,#80,#b0,#80,#70,#00
	db #20,#20,#00,#80,#20,#20,#70,#00
	db #80,#80,#a0,#a0,#70,#00,#00,#80
	db #80,#00,#80,#b0,#c0,#20,#00,#80
	db #80,#a0,#20,#e0,#00,#00,#40,#30
	db #c0,#e0,#30,#e0,#80,#00,#80,#70
	db #30,#80,#e0,#10,#c0,#00,#10,#c0
	db #f0,#a0,#a0,#70,#00,#00,#20,#30
	db #c0,#80,#a1,#0f,#f0,#a5,#69,#e1
	db #0f,#87,#1e,#01,#0f,#03,#2d,#0e
	db #f0,#b0,#e0,#80,#a0,#20,#e0,#00
	db #70,#30,#80,#80,#a0,#20,#e0,#20
	db #a0,#80,#30,#80,#00,#20,#00,#80
	db #a0,#a0,#f0,#20,#20,#f0,#00,#80
	db #e0,#00,#00,#80,#a0,#a0,#00,#30
	db #80,#80,#30,#c0,#f0,#a0,#a0,#00
	db #30,#e0,#80,#20,#00,#80,#a0,#a0
	db #f0,#30,#e0,#90,#a0,#a0,#e0,#00
	db #00,#80,#b0,#80,#00,#10,#c0,#f0
	db #80,#00,#70,#20,#20,#80,#01,#20
	db #03,#00,#80,#80,#a0,#a0,#00,#00
	db #20,#20,#00,#00,#30,#80,#70,#00
	db #80,#00,#20,#00,#80,#a0,#a0,#70
	db #30,#80,#20,#20,#00,#80,#30,#80
	db #00,#20,#20,#e0,#00,#00,#70,#30
	db #80,#00,#00,#80,#e0,#20,#a0,#20
	db #30,#c0,#00,#30,#e0,#70,#10,#c0
	db #e0,#00,#80,#00,#30,#80,#80,#01
	db #20,#04,#60,#a0,#b0,#80,#00,#20
	db #20,#e0,#00,#00,#80,#00,#00,#e0
	db #20,#00,#f0,#30,#e0,#a0,#80,#f0
	db #20,#20,#80,#b0,#c0,#00,#20,#a0
	db #20,#30,#01,#80,#04,#00,#30,#e0
	db #f0,#30,#c0,#f0,#30,#80,#80,#00
	db #80,#e0,#30,#c0,#00,#20,#00,#e0
	db #10,#c0,#00,#30,#80,#e0,#30,#80
	db #e0,#00,#80,#70,#01,#00,#75,#01
	db #ff,#0c,#f7,#f5,#01,#fd,#03,#ff
	db #f0,#f7,#ff,#ff,#fc,#f1,#f5,#f5
	db #fd,#f8,#fc,#f7,#fd,#fe,#f3,#80
	db #a0,#20,#80,#90,#c0,#00,#30,#c0
	db #20,#30,#80,#a0,#80,#00,#f0,#a0
	db #20,#e0,#20,#00,#00,#20,#00,#f0
	db #80,#80,#01,#00,#14,#01,#ff,#21
	db #01,#00,#2f,#01,#ff,#21,#01,#00
	db #2f,#01,#ff,#21,#01,#00,#ff,#01
	db #00,#ff
;
.music_info
	db "Optix - Intro 2 (1995)(Benediction)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"
