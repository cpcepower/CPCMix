; Music of Footballer of the Year 2 (1989)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 22/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FOOTOTY2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #f000
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

	jp lf08e	; init
	jp lf116	; play
.lf006
.music_end
	db #00
	jp lf011	; init sound effects
;
.stop_music
;
	xor a
	ld (lf006),a
	jp lf495
.lf011
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,lfaae
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,lf3da
	call lf411
	set 7,(ix+#11)
	ret
.lf03e equ $ + 7
.lf038 equ $ + 1
.lf037
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf046 equ $ + 7
.lf044 equ $ + 5
.lf043 equ $ + 4
.lf042 equ $ + 3
.lf041 equ $ + 2
.lf040 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf04d equ $ + 6
.lf04c equ $ + 5
	db #00,#00,#00,#00,#00,#08,#00,#00
.lf056 equ $ + 7
.lf055 equ $ + 6
.lf053 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf05b equ $ + 4
.lf059 equ $ + 2
.lf058 equ $ + 1
.lf057
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf062 equ $ + 3
.lf061 equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.lf06e equ $ + 7
.lf06d equ $ + 6
.lf06c equ $ + 5
.lf06b equ $ + 4
.lf06a equ $ + 3
.lf068 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf076 equ $ + 7
.lf070 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music
.lf08e
;
	push af
	call lf495
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,lf97d
	add l
	ld l,a
	jr nc,lf09f
	inc h
.lf09f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lf038),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lf04d),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lf062),de
	xor a
	ld (lf041),a
	ld (lf056),a
	ld (lf06b),a
	ld (lf046),a
	ld (lf05b),a
	ld (lf070),a
	cpl
	ld (lf042),a
	ld (lf057),a
	ld (lf06c),a
	ld a,#01
	ld (lf040),a
	ld (lf055),a
	ld (lf06a),a
	ld (lf043),a
	ld (lf058),a
	ld (lf06d),a
	ld hl,lf076
	ld bc,#030a
.lf0ee
	xor a
.lf0ef
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,lf0ef
	djnz lf0ee
	ld hl,lfa20
	ld (lf03e),hl
	ld (lf053),hl
	ld (lf068),hl
	ld a,#ff
	ld (lf044),a
	ld (lf059),a
	ld (lf06e),a
	ld (lf006),a
	ret
;
.play_music
.lf116
;
	call lf4d6
	ld a,(lf006)
	and a
	ret z
	ld a,(lf044)
	ld hl,lf059
	or (hl)
	ld hl,lf06e
	or (hl)
	ld (lf006),a
	jr nz,lf140
	xor a
	ld (lf006),a
	ld a,(lf3d9)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (lf006),a
	ret
.lf140
	ld iy,lf037
	ld ix,lf3da
	call lf15e
	ld iy,lf04c
	ld ix,lf3ec
	call lf15e
	ld iy,lf061
	ld ix,lf3fe
.lf15e
	call lf29f
	ld a,(iy+#0b)
	and a
	jr z,lf1e3
.lf167
	dec (iy+#09)
	jr z,lf17e
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr lf1e3
.lf17e
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.lf188
	ld a,(hl)
	cp #80
	jr c,lf1c3
	cp #fe
	jr nz,lf19a
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp lf188
.lf19a
	cp #ff
	jr nz,lf1a3
	xor a
	ld (iy+#0d),a
	ret
.lf1a3
	cp #c0
	jr nc,lf1b0
	and #1f
	ld (iy+#09),a
	inc hl
	jp lf188
.lf1b0
	and #07
	add (iy+#00)
	ld de,lf076
	add e
	ld e,a
	jr nc,lf1bd
	inc d
.lf1bd
	inc hl
	ldi
	jp lf188
.lf1c3
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,lf94f
	add hl,bc
	ld e,(hl)
	ld hl,lf966
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr lf1e9
.lf1e3
	ld e,(iy+#05)
	ld d,(iy+#06)
.lf1e9
	dec (iy+#0c)
	jr z,lf1fb
	ld a,(de)
	cp #80
	call nc,lf265
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.lf1fb
	ld a,(de)
	cp #80
	jr c,lf20c
	call lf265
	ld a,(iy+#0b)
	and a
	jr z,lf1fb
	jp lf167
.lf20c
	cp #7f
	jr z,lf258
	cp #7e
	jr nz,lf21d
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp lf231
.lf21d
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,lf32f
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.lf231
	ld a,(iy+#0f)
	or #c0
	ld (iy+#14),a
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
	jp lf411
.lf258
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.lf265
	ld a,(de)
	cp #88
	jr nc,lf283
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,lf076
	add hl,bc
	ld c,(hl)
	ld hl,lfa20
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.lf283
	cp #ff
	jr nz,lf28c
	ld (iy+#0b),#ff
	ret
.lf28c
	cp #c0
	jr nc,lf297
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.lf297
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.lf29f
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,lf2b3
	res 7,(iy+#14)
	ret
.lf2b3
	ld d,#07
	bit 6,(iy+#14)
	jr nz,lf2e7
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,lf2e7
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,lf2d6
	inc h
	ld (iy+#11),h
.lf2d6
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp lf31c
.lf2e7
	ld hl,lf386
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,lf301
	bit 6,(iy+#14)
	jr nz,lf301
	ld (iy+#13),#01
	ret
.lf301
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
.lf31c
	add a
	ld hl,lf32f
	add l
	ld l,a
	jr nc,lf325
	inc h
.lf325
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.lf32f
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
.lf386 equ $ + 7
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
.lf3df equ $ + 6
.lf3de equ $ + 5
.lf3dd equ $ + 4
.lf3da equ $ + 1
.lf3d9
	db #3f,#fe,#f7,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf3f0 equ $ + 7
.lf3ef equ $ + 6
.lf3ec equ $ + 3
.lf3eb equ $ + 2
	db #00,#00,#00,#fd,#ef,#12,#00,#00
.lf3f1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf3fe equ $ + 5
.lf3fd equ $ + 4
	db #00,#00,#00,#00,#00,#fb,#df,#24
.lf403 equ $ + 2
.lf402 equ $ + 1
.lf401
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf410 equ $ + 7
.lf40f equ $ + 6
.lf40e equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf411
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
	jr nz,lf435
	ld a,#01
.lf435
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(lf3d9)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,lf45e
	and (ix+#00)
.lf45e
	bit 1,c
	jr z,lf465
	and (ix+#01)
.lf465
	ld (lf3d9),a
	bit 2,c
	jr nz,lf476
	ld hl,lf5c4
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lf476
	call lf67c
	ld a,(iy+#00)
	ld c,#0d
	call lf693
	ld a,(iy+#04)
	ld c,#0b
	call lf693
	inc c
	xor a
	call lf693
	ld (ix+#05),#ff
	jp lf688
.lf495
	call lf67c
	ld c,#07
	ld a,(lf3d9)
	or #3f
	ld (lf3d9),a
	call lf693
	xor a
	inc c
	call lf693
	inc c
	call lf693
	inc c
	call lf693
	ld a,#01
	inc c
	call lf693
	inc c
	xor a
	call lf693
	inc c
	call lf693
	ld (lf3eb),a
	ld (lf3fd),a
	ld (lf40f),a
	ld (lf3df),a
	ld (lf3f1),a
	ld (lf403),a
	jp lf688
.lf4d6
	ld a,(lf3d9)
	and #3f
	cp #3f
	ret z
	ld ix,lf3da
	call lf592
	ld ix,lf3ec
	call lf592
	ld ix,lf3fe
	call lf592
	call lf67c
	ld ix,lf3da
	ld c,#07
	ld a,(lf3d9)
	call lf693
	ld c,#00
	ld a,(lf3dd)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,lf514
	ld (lf410),a
.lf514
	call lf693
	inc c
	ld a,(lf3de)
	adc (ix+#0a)
	call lf693
	inc c
	ld a,(lf3ef)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,lf532
	ld (lf410),a
.lf532
	call lf693
	inc c
	ld a,(lf3f0)
	adc (ix+#1c)
	call lf693
	inc c
	ld a,(lf401)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,lf550
	ld (lf410),a
.lf550
	call lf693
	inc c
	ld a,(lf402)
	adc (ix+#2e)
	call lf693
	inc c
	ld a,(lf410)
	rrca
	rrca
	rrca
	call lf693
	ld c,#08
	ld a,(lf3df)
	srl a
	srl a
	srl a
	call lf693
	inc c
	ld a,(lf3f1)
	srl a
	srl a
	srl a
	call lf693
	inc c
	ld a,(lf403)
	srl a
	srl a
	srl a
	call lf693
	jp lf688
.lf592
	ld a,(lf3d9)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,lf5b3
	cp #ff
	jr z,lf5b3
	dec (ix+#06)
.lf5b3
	call lf63a
	bit 2,(iy+#09)
	jp nz,lf633
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.lf5c4
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,lf5d3
	ld (ix+#05),a
	ret
.lf5d3
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,lf5e3
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lf5e3
	ld a,(ix+#05)
	add (iy+#01)
	jp m,lf5f5
	cp (iy+#02)
	jr c,lf5f5
	ld (ix+#05),a
	ret
.lf5f5
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,lf605
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lf605
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,lf614
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lf614
	ld a,(ix+#05)
	add (iy+#03)
	jp m,lf621
	ld (ix+#05),a
	ret
.lf621
	ld (ix+#05),#00
	ld a,(lf3d9)
	or (ix+#02)
	ld (lf3d9),a
	res 7,(ix+#11)
	ret
.lf633
	ld a,(ix+#06)
	and a
	ret nz
	jr lf621
.lf63a
	ld a,(ix+#07)
	and a
	jr z,lf647
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.lf647
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
	jp p,lf66b
	ld (ix+#07),#ff
	ret
.lf66b
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
.lf67c
	ld bc,#f782
.lf680 equ $ + 1
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.lf688
	ld bc,lf40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.lf693
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
.lf6a6
	db #91,#80,#31,#0e,#31
	db #0e,#31,#07,#31,#0e,#31,#0e,#31
	db #0e,#31,#07,#31,#0e,#31,#0e,#ff
.lf6bb
	db #80,#31,#0e,#31,#0e,#31,#07,#31
	db #0e,#31,#0e,#31,#0e,#31,#07,#31
	db #07,#31,#07,#31,#07,#31,#07,#90
.lf6d4 equ $ + 1
	db #ff,#81,#06,#15,#06,#07,#1e,#23
	db #06,#0e,#06,#07,#1e,#0e,#1e,#0e
.lf6e4 equ $ + 1
	db #ff,#83,#2a,#0f,#2e,#0f,#36,#0f
.lf6f0 equ $ + 5
	db #35,#0f,#36,#14,#ff,#83,#7f,#05
	db #2e,#0f,#2f,#0f,#33,#0f,#38,#1e
.lf6fc equ $ + 1
	db #ff,#83,#7f,#0a,#31,#0f,#33,#0f
.lf708 equ $ + 5
	db #31,#0f,#35,#19,#ff,#86,#1e,#1e
.lf712 equ $ + 7
	db #1d,#1e,#1c,#1e,#1b,#3c,#ff,#7f
.lf715 equ $ + 2
	db #03,#ff,#84,#36,#06,#36,#06,#36
.lf71f equ $ + 4
	db #06,#36,#06,#ff,#81,#1e,#06,#1e
	db #06,#1e,#06,#1b,#0c,#1b,#0c,#17
	db #0c,#17,#06,#14,#06,#14,#06,#12
.lf737 equ $ + 4
	db #0c,#2a,#0c,#ff,#85,#1e,#06,#1e
	db #06,#2a,#06,#1e,#06,#1e,#06,#2a
	db #06,#1e,#06,#1e,#06,#2a,#06,#1e
	db #06,#1e,#06,#2a,#06,#1e,#06,#1e
.lf759 equ $ + 6
	db #06,#28,#06,#2a,#06,#ff,#85,#2a
	db #06,#28,#06,#25,#06,#28,#0c,#25
	db #0c,#23,#0c,#23,#06,#21,#06,#1c
.lf771 equ $ + 6
	db #06,#1e,#0c,#2a,#0c,#ff,#85,#1e
	db #06,#1e,#06,#2a,#06,#1e,#06,#1e
	db #06,#2a,#06,#1e,#06,#1e,#06
.lf782
	db #2a,#06,#1e,#06,#1e,#06,#2a,#06
	db #1e,#06,#1e,#06,#28,#06,#2a,#03
.lf793 equ $ + 1
	db #ff,#7f,#e0,#7f,#70,#7f,#3f,#87
	db #06,#07,#03,#07,#0f,#07,#04,#07
.lf7a9 equ $ + 7
	db #10,#07,#05,#07,#11,#07,#ff,#87
	db #06,#0e,#06,#0e,#12,#0e,#0a,#07
	db #0b,#2a,#0b,#07,#0c,#07,#0d,#15
	db #0d,#0e,#19,#07,#0d,#07,#19,#07
	db #17,#07,#0b,#07,#0b,#0e,#0b,#0e
.lf7d1 equ $ + 7
	db #0a,#07,#06,#07,#03,#07,#ff,#80
	db #92,#22,#0e,#22,#0e,#22,#07,#22
	db #0e,#93,#1e,#0e,#1e,#0e,#1e,#07
	db #1e,#0e,#1e,#0e,#94,#20,#0e,#20
	db #0e,#20,#07,#20,#0e,#93,#1e,#0e
	db #1e,#0e,#1e,#07,#1e,#0e,#1e,#0e
.lf7fb equ $ + 1
	db #ff,#87,#06,#0e,#06,#0e,#82,#1e
	db #0e,#87,#0a,#07,#0b,#23,#82,#1e
	db #07,#87,#0b,#07,#0c,#07,#0d,#15
	db #0d,#0e,#82,#1e,#07,#87,#0d,#07
	db #19,#07,#17,#07,#0b,#07,#0b,#0e
	db #0b,#07,#82,#1e,#07,#87,#0a,#07
.lf82f equ $ + 5
	db #06,#07,#03,#07,#ff,#80,#2f,#0e
	db #81,#34,#07,#80,#2f,#0e,#81,#2d
	db #0e,#2a,#2a,#27,#07,#2a,#07,#2c
	db #07,#80,#2c,#0e,#2c,#0e,#81,#2c
	db #07,#2a,#07,#27,#07,#2a,#0e,#2a
	db #0e,#2a,#07,#27,#07,#25,#07,#27
	db #07,#25,#07,#7f,#c4,#25,#07,#27
	db #07,#2a,#07,#2c,#07,#80,#2f,#0e
	db #81,#34,#07,#80,#2f,#0e,#81,#2d
	db #0e,#2a,#2a,#27,#07,#2a,#07,#2c
	db #07,#80,#2c,#0e,#2c,#0e,#81,#2c
	db #07,#2a,#07,#27,#07,#2a,#0e,#2a
	db #0e,#2a,#07,#27,#07,#25,#07,#27
.lf898 equ $ + 6
	db #07,#2a,#07,#7f,#e0,#ff,#81,#34
	db #07,#33,#0e,#31,#0e,#34,#0e,#33
	db #23,#33,#07,#31,#07,#33,#07,#31
	db #07,#7f,#e0,#34,#07,#33,#0e,#31
	db #0e,#34,#0e,#33,#23,#33,#07,#31
	db #07,#33,#07,#34,#77,#7f,#70,#7f
.lf8c5 equ $ + 3
	db #e0,#91,#ff,#80,#93,#1c,#07,#1c
	db #0e,#1c,#0e,#1c,#0e,#1e,#0e,#1e
	db #0e,#1e,#07,#1e,#0e,#1e,#0e,#ff
.lf8da
	db #87,#09,#0e,#09,#0e,#82,#1e,#07
	db #87,#09,#07,#0a,#07,#0b,#15,#0b
	db #0e,#82,#1e,#07,#87,#0d,#07,#10
.lf8f6 equ $ + 4
	db #07,#12,#07,#ff,#87,#06,#0e,#06
	db #0e,#82,#1e,#0e,#87,#0a,#07,#0b
	db #23,#82,#1e,#07,#87,#0b,#07,#0c
	db #07,#0d,#15,#0d,#0e,#82,#1e,#07
	db #87,#0d,#07,#19,#07,#17,#07,#0b
	db #07,#82,#1e,#07,#1e,#07,#1e,#07
	db #1e,#07,#1e,#07,#1e,#07,#1e,#07
.lf92b equ $ + 1
	db #ff,#80,#92,#22,#0e,#22,#0e,#22
	db #07,#22,#0e,#93,#1e,#0e,#1e,#0e
	db #1e,#07,#1e,#0e,#1e,#0e,#94,#20
	db #0e,#20,#0e,#20,#07,#20,#0e,#93
	db #1e,#0e,#7f,#31,#ff
.lf94f
	db lf6a6,lf6bb,lf6d4,lf6e4
	db lf6f0,lf6fc,lf708,lf712
	db lf715,lf71f,lf737,lf759
	db lf771,lf793,lf7a9,lf7d1
	db lf7fb,lf82f,lf898,lf8c5
	db lf8da,lf8f6,lf92b
;	db #a6,#bb,#d4,#e4,#f0,#fc,#08,#12
;	db #15,#1f,#37,#59,#71,#93,#a9,#d1
;	db #fb,#2f,#98,#c5,#da,#f6,#2b
.lf966
	db lf6a6/&100,lf6bb/&100,lf6d4/&100,lf6e4/&100
	db lf6f0/&100,lf6fc/&100,lf708/&100,lf712/&100
	db lf715/&100,lf71f/&100,lf737/&100,lf759/&100
	db lf771/&100,lf793/&100,lf7a9/&100,lf7d1/&100
	db lf7fb/&100,lf82f/&100,lf898/&100,lf8c5/&100
	db lf8da/&100,lf8f6/&100,lf92b/&100
;	db #f6,#f6,#f6,#f6,#f6,#f6,#f7,#f7
;	db #f7,#f7,#f7,#f7,#f7,#f7,#f7,#f7
;	db #f7,#f8,#f8,#f8,#f8,#f8,#f9
.lf97d
	dw lf995,lf9a9,lf9ca
	dw lf9e6,lf9e8,lf9ea
	dw lf9ec,lf9f0,lf9f7
	dw lf9ff,lfa03,lfa11
.lf995
	db #83,#00,#01,#83,#00,#01,#83,#00
	db #01,#c0,#5a,#c1,#64,#fe,#fb,#11
.lf9a9 equ $ + 4
	db #12,#11,#12,#ff,#fe,#0c,#88,#02
	db #c0,#50,#fe,#05,#0f,#0f,#fe,#07
	db #84,#0f,#13,#0f,#13,#fe,#05,#0f
	db #0f,#fe,#07,#84,#0f,#13,#0f,#13
.lf9ca equ $ + 5
	db #fe,#05,#0f,#16,#ff,#fe,#05,#0d
	db #84,#0e,#fe,#07,#84,#10,#14,#10
	db #14,#fe,#05,#82,#10,#fe,#07,#84
	db #10,#14,#10,#14,#fe,#05,#10,#15
.lf9ec equ $ + 7
.lf9ea equ $ + 5
.lf9e8 equ $ + 3
.lf9e6 equ $ + 1
	db #ff,#03,#ff,#04,#ff,#05,#ff,#fe
.lf9f0 equ $ + 3
	db #0c,#06,#ff,#fe,#0c,#07,#fe,#03
.lf9f7 equ $ + 2
	db #06,#ff,#fe,#0c,#07,#07,#fe,#06
.lfa03 equ $ + 6
.lf9ff equ $ + 2
	db #06,#ff,#90,#08,#09,#ff,#0a,#fe
	db #02,#0a,#fe,#fe,#0a,#fe,#f9,#0a
.lfa11 equ $ + 4
	db #fe,#00,#0b,#ff,#07,#0a,#fe,#02
	db #0a,#fe,#fe,#0a,#fe,#f9,#0c,#fe
	db #f4,#0b,#ff
.lfa20
	db #7f,#f7,#01,#ff,#5a,#00
	db #04,#04,#00,#02,#7f,#f9,#01,#ff
	db #6e,#00,#00,#3c,#00,#01,#7f,#fd
	db #01,#ff,#7f,#00,#00,#3c,#00,#03
	db #7f,#fd,#01,#ff,#7f,#00,#03,#01
	db #00,#01,#7f,#f7,#01,#ff,#64,#00
	db #00,#00,#00,#02,#7f,#fa,#01,#ff
	db #7f,#00,#03,#01,#00,#01,#7f,#fe
	db #01,#ff,#7f,#00,#05,#05,#00,#01
	db #7f,#fd,#01,#ff,#7f,#00,#04,#03
	db #00,#01,#7f,#fc,#01,#ff,#6e,#00
	db #04,#01,#00,#01,#7f,#fe,#01,#ff
	db #7f,#06,#08,#fd,#ff,#01,#46,#fe
	db #01,#ff,#7f,#02,#04,#01,#00,#01
	db #89,#61,#00,#00,#00,#00,#00,#00
	db #8a,#19,#31,#00,#00,#00,#00,#00
	db #8a,#29,#49,#00,#00,#00,#00,#00
	db #8a,#29,#41,#00,#00,#00,#00,#00
.lfaae
	db #03,#ff,#01,#ff,#7f,#00,#03,#01
	db #00,#02,#32,#00,#4b,#7f,#fa,#01
	db #ff,#7f,#00,#00,#28,#00,#01,#07
	db #02,#0a,#0a,#f5,#01,#ff,#73,#00
	db #02,#01,#00,#05,#50,#00,#1e,#7f
	db #f7,#01,#ff,#7f,#00,#00,#00,#00
	db #01,#68,#00,#28,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.music_info
	db "Footballer of the Year 2 (1989)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
