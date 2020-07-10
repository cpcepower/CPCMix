; Music of Frost Byte (1986)(Mikrogen)()()
; Ripped by Megachur the 11/06/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FROSTBYT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #2df0

	read "music_header.asm"

.l2df0
	push bc
	push af
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
	pop af
	pop bc
	ret
;
.init_music
;
	di
;	ld a,#c3
	
	defs 5,0	;ld (#0038),a modified by Megachur
	ld hl,l2e93
	defs 3,0	;ld (#0039),hl modified by Megachur
	ld a,#b8
	ld (l2e75),a
	ld c,a
	ld a,#07
	call l2df0
	inc a
	ld c,#00
	call l2df0
	inc a
	call l2df0
	inc a
	call l2df0
	xor a
	ld (l3246),a
	ld (l3256),a
	ld (l3268),a
	ld (l3248),a
	ld (l3258),a
	ld (l326a),a
	ld a,#01
	ld (l323e),a
	ld (l324e),a
	ld (l3260),a
	xor a
	ld (l2e81),a
	ld hl,l33f3
	ld (l2e8c),hl
	ld hl,l34dc
	ld (l2e8e),hl
	ld hl,l331d
	ld (l2e90),hl
	ei
	ret
.l2e74 equ $ + 7
.l2e6d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2e75
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2e82 equ $ + 5
.l2e81 equ $ + 4
	db #00,#00,#00,#00,#ff,#f6,#ed,#db
.l2e8c equ $ + 7
.l2e8b equ $ + 6
.l2e88 equ $ + 3
.l2e85
	db #01,#02,#04,#08,#10,#20,#00,#00
.l2e90 equ $ + 3
.l2e8e equ $ + 1
	db #00,#00,#00,#00,#00
	
.l2e92
	db #01
;
.real_play_music
.l2e93
;
	di
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld hl,l2e92
	dec (hl)
	jp nz,l2ea8
	ld (hl),#03
	defs 3,0	; call #12a6 keyboard test - modified by Megachur
.l2ea8
	ld a,(l2e81)
	or a
	jp nz,l2f11
	ld a,#00
	ld (l2e8b),a
	ld iy,l31de
	ld ix,l323e
	ld hl,l320e
	ld (l31dc),hl
	ld hl,(l2e8c)
	call l2f1c
	ld (l2e8c),hl
	ld a,(l2e81)
	or a
	jp nz,l2f11
	ld a,#01
	ld (l2e8b),a
	ld iy,l31ee
	ld ix,l324e
	ld hl,l321e
	ld (l31dc),hl
	ld hl,(l2e8e)
	call l2f1c
	ld (l2e8e),hl
	ld a,(l2e81)
	or a
	jp nz,l2f11
	ld a,#02
	ld (l2e8b),a
	ld iy,l31fe
	ld ix,l3260
	ld hl,l322e
	ld (l31dc),hl
	ld hl,(l2e90)
	call l2f1c
	ld (l2e90),hl
.l2f11
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	reti
.l2f1c
	xor a
	ld (ix+#0f),a
	push hl
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld e,(ix+#0d)
	ld d,(ix+#0e)
	add hl,de
	ld (ix+#0b),l
	ld (ix+#0c),h
	ld a,(ix+#05)
	ld c,l
	call l2df0
	inc a
	ld c,h
	call l2df0
	pop hl
	dec (ix+#00)
	jp z,l2f74
	ld a,(ix+#01)
	or a
	jp z,l2f54
	dec (ix+#01)
	jp nz,l2f6a
.l2f54
	dec (ix+#06)
	jp nz,l2f6a
	ld a,(ix+#07)
	ld (ix+#06),a
	ld a,(ix+#03)
	or a
	jp z,l2f6a
	dec (ix+#03)
.l2f6a
	ld a,(ix+#04)
	ld c,(ix+#03)
	call l2df0
	ret
.l2f74
	ld a,(hl)
	cp #03
	jp nz,l2fa9
	ld a,(ix+#08)
	or a
	jp z,l2f94
	sub #02
	ld (ix+#08),a
	ld l,a
	ld h,#00
	push iy
	pop de
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l2f74
;
.stop_music
;
.l2f94
	ld a,#ff
	ld (l2e81),a
	ld a,#08
	ld c,#00
	call l2df0
	inc a
	call l2df0
	inc a
	call l2df0
	ret
.l2fa9
	cp #01
	jp nz,l2fde
	inc hl
	push hl
	ld a,(hl)
	add (ix+#09)
	ld hl,l2e6d
	add (hl)
	add a
	ld l,a
	ld h,#00
	ld (ix+#0d),h
	ld (ix+#0e),h
	ld de,l328b
	add hl,de
	ld c,(hl)
	ld (ix+#0b),c
	ld a,(ix+#05)
	call l2df0
	inc hl
	ld c,(hl)
	ld (ix+#0c),c
	inc a
	call l2df0
	pop hl
	inc hl
	jp l2f74
.l2fde
	cp #02
	jp nz,l3008
	inc hl
	ld a,(hl)
	ld (ix+#00),a
	ld a,(ix+#0f)
	or a
	jp z,l2ff5
	ld a,(hl)
	push hl
	call l31a9
	pop hl
.l2ff5
	inc hl
	ld a,(hl)
	ld (ix+#01),a
	inc hl
	ld c,(ix+#02)
	ld (ix+#03),c
	ld a,(ix+#04)
	call l2df0
	ret
.l3008
	cp #04
	jp nz,l3036
	push hl
	ld a,(l2e8b)
	ld l,a
	ld h,#00
	ld (l3021),hl
	ld de,l2e82
	add hl,de
	ld a,(hl)
	ld hl,l2e75
	and (hl)
.l3021 equ $ + 1
	ld hl,#0000
	ld de,l2e85
	add hl,de
	or (hl)
	ld (l2e75),a
	ld c,a
	ld a,#07
	call l2df0
	pop hl
	inc hl
	jp l2f74
.l3036
	cp #05
	jp nz,l304a
	inc hl
	ld a,(hl)
	ld (l2e74),a
	ld c,a
	ld a,#06
	call l2df0
	inc hl
	jp l2f74
.l304a
	cp #06
	jp nz,l306d
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push de
	push hl
	push iy
	pop de
	ld a,(ix+#08)
	ld l,a
	ld h,#00
	add hl,de
	pop de
	ld (hl),e
	inc hl
	ld (hl),d
	add #02
	ld (ix+#08),a
	pop hl
	jp l2f74
.l306d
	cp #07
	jp nz,l307b
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	jp l2f74
.l307b
	cp #08
	jp nz,l3089
	inc hl
	ld a,(hl)
	ld (l2e6d),a
	inc hl
	jp l2f74
.l3089
	cp #09
	jp nz,l30a0
	inc hl
	ld a,(hl)
	add (ix+#00)
	ld (ix+#00),a
	inc hl
	ld a,(hl)
	add (ix+#01)
	ld (ix+#01),a
	inc hl
	ret
.l30a0
	cp #0a
	jp nz,l30ad
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l2f74
.l30ad
	cp #0b
	jp nz,l30be
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	ld (ix+#07),a
	inc hl
	jp l2f74
.l30be
	cp #0c
	jp nz,l30cc
	inc hl
	ld a,(hl)
	ld (ix+#02),a
	inc hl
	jp l2f74
.l30cc
	cp #0d
	jp nz,l30e8
	inc hl
	ld a,(ix+#02)
	cp #0f
	jp z,l30db
	inc a
.l30db
	ld (ix+#02),a
	ld c,a
	ld a,(ix+#04)
	call l2df0
	jp l2f74
.l30e8
	cp #0e
	jp nz,l3103
	inc hl
	ld a,(ix+#02)
	or a
	jp z,l30f6
	dec a
.l30f6
	ld (ix+#02),a
	ld c,a
	ld a,(ix+#04)
	call l2df0
	jp l2f74
.l3103
	cp #0f
	jp nz,l3126
	ld a,(ix+#0a)
	add #03
	ld (ix+#0a),a
	inc hl
	ld b,(hl)
	inc hl
	push hl
	ld l,a
	ld h,#00
	ld de,(l31dc)
	add hl,de
	ld (hl),b
	pop de
	inc hl
	ld (hl),e
	inc hl
	ld (hl),d
	ex de,hl
	jp l2f74
.l3126
	cp #10
	jp nz,l3150
	push hl
	ld l,(ix+#0a)
	ld h,#00
	ld de,(l31dc)
	add hl,de
	dec (hl)
	jp z,l3143
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	pop de
	jp l2f74
.l3143
	ld a,(ix+#0a)
	sub #03
	ld (ix+#0a),a
	pop hl
	inc hl
	jp l2f74
.l3150
	cp #11
	jp nz,l317a
	ld a,#ff
	ld (ix+#0f),a
	inc hl
	push hl
	ld a,(hl)
	add (ix+#09)
	ld hl,l2e6d
	add (hl)
	add a
	ld l,a
	ld h,#00
	ld de,l328b
	add hl,de
	ld c,(hl)
	ld (ix+#0d),c
	inc hl
	ld c,(hl)
	ld (ix+#0e),c
	pop hl
	inc hl
	jp l2f74
.l317a
	cp #12
	jp nz,l31a8
	push hl
	ld a,(l2e8b)
	ld l,a
	ld h,#00
	ld (l3193),hl
	ld de,l2e82
	add hl,de
	ld a,(hl)
	ld hl,l2e75
	and (hl)
.l3193 equ $ + 1
	ld hl,#0000
	ld de,l2e88
	add hl,de
	or (hl)
	ld (l2e75),a
	ld c,a
	ld a,#07
	call l2df0
	pop hl
	inc hl
	jp l2f74
.l31a8
	ret
.l31a9
	ld (l3277),a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld c,(ix+#0d)
	ld b,(ix+#0e)
	sbc hl,bc
	push af
	jp nc,l31c4
	ex de,hl
	ld hl,#0001
	sbc hl,de
.l31c4
	ld c,l
	ld a,h
	call l3272
	ld l,c
	ld h,a
	pop af
	jp nc,l31d5
	ex de,hl
	ld hl,#0001
	sbc hl,de
.l31d5
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l31de equ $ + 2
.l31dc
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l31ee equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l31fe equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l320e equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l321e equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l322e equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l323e equ $ + 2
	db #00,#00,#01,#01,#0f,#0f,#08,#00
.l3248 equ $ + 4
.l3246 equ $ + 2
	db #01,#01,#00,#00,#00,#00,#00,#00
.l324e equ $ + 2
	db #00,#00,#01,#01,#0f,#0f,#09,#02
.l3258 equ $ + 4
.l3256 equ $ + 2
	db #02,#02,#00,#00,#00,#00,#00,#00
.l3260 equ $ + 4
	db #00,#00,#00,#00,#01,#01,#0f,#0f
.l326a equ $ + 6
.l3268 equ $ + 4
	db #0a,#04,#02,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l3272
	ld hl,#0000
	ld d,h
.l3277 equ $ + 1
	ld e,#00
	ld b,#10
.l327a
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr l3284
	add hl,de
.l3284
	ccf
	djnz l327a
	rl c
	rla
	ret
.l328b
	dw #0000,#0777,#070c,#06a7
	dw #0647,#05ed,#0598,#0547
	dw #04fc,#04b4,#0470,#0431
	dw #03f4,#03bc,#0386,#0353
	dw #0324,#02f6,#02cc,#02a4
	dw #027e,#025a,#0238,#0218
	dw #01fa,#01de,#01c3,#01aa
	dw #0192,#017b,#0166,#0152
	dw #013f,#012d,#011c,#010c
	dw #00fd,#00ef,#00e1,#00d5
	dw #00c9,#00be,#00b3,#00a9
	dw #009f,#0096,#008e,#0086
	dw #007f,#0077,#0071,#006a
	dw #0064,#005f,#0059,#0054
	dw #0050,#004b,#0047,#0043
	dw #003f,#003c,#0038,#0035
	dw #0032,#002f,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020
.l331d
	db #0c,#0f,#01,#00,#02,#c0,#c0,#06
	db #a4,#33,#06,#c3,#33,#06,#a4,#33
	db #06,#c3,#33,#06,#a4,#33,#06,#c3
	db #33,#06,#a4,#33,#06,#e8,#33,#06
	db #a4,#33,#06,#c3,#33,#06,#a4,#33
	db #06,#c3,#33,#06,#a4,#33,#06,#c3
	db #33,#06,#a4,#33,#06,#e8,#33,#06
	db #a4,#33,#06,#a4,#33,#06,#a4,#33
	db #06,#a4,#33,#0c,#0c,#12,#01,#2a
	db #02,#60,#18,#02,#30,#18,#02,#60
	db #18,#02,#60,#18,#02,#30,#18,#02
	db #30,#18,#02,#30,#18,#02,#30,#18
	db #02,#30,#18,#02,#30,#18,#02,#60
	db #18,#02,#30,#18,#02,#30,#18,#02
	db #30,#18,#0c,#0e,#01,#12,#02,#c0
	db #c0,#02,#c0,#c0,#01,#17,#02,#c0
	db #c0,#02,#c0,#c0,#0a,#24,#33,#04
	db #05,#1f,#02,#30,#01,#05,#00,#02
	db #30,#01,#02,#30,#01,#05,#1f,#02
	db #60,#01,#05,#00,#02,#30,#01,#02
	db #30,#01,#02,#30,#01,#03,#04,#05
	db #1f,#02,#30,#01,#05,#00,#02,#18
	db #01,#02,#18,#01,#02,#30,#01,#05
	db #1f,#02,#30,#01,#02,#30,#01,#05
	db #00,#02,#30,#01,#02,#30,#01,#02
	db #30,#01,#03,#12,#01,#00,#02,#c0
	db #c0,#02,#c0,#c0,#04,#03
.l33f3
	db #01,#00,#02,#60,#60,#01,#00,#02
	db #60,#60,#06,#80,#34,#02,#30,#0c
	db #02,#30,#24,#01,#2c,#02,#30,#24
	db #02,#30,#24,#01,#2a,#02,#30,#24
	db #02,#30,#24,#01,#28,#02,#30,#24
	db #02,#30,#24,#06,#80,#34,#01,#2e
	db #02,#30,#30,#01,#2f,#02,#60,#54
	db #01,#31,#02,#f0,#54,#01,#23,#02
	db #c0,#c1,#09,#c0,#a8,#01,#1c,#02
	db #c0,#c1,#09,#c0,#a8,#01,#21,#02
	db #c0,#c1,#09,#c0,#a8,#01,#1a,#02
	db #c0,#c1,#09,#c0,#a8,#01,#22,#02
	db #c0,#c1,#09,#c0,#a8,#01,#23,#02
	db #c0,#c1,#09,#c0,#a8,#01,#2e,#02
	db #30,#24,#02,#60,#60,#01,#2f,#02
	db #60,#54,#02,#30,#30,#01,#31,#02
	db #30,#30,#02,#30,#30,#01,#32,#02
	db #f0,#c0,#0a,#f3,#33,#01,#2a,#02
	db #90,#60,#02,#60,#5c,#01,#00,#02
	db #90,#90,#01,#2a,#02,#90,#60,#02
	db #60,#5c,#01,#00,#02,#90,#90,#01
	db #28,#02,#90,#60,#02,#60,#5c,#01
	db #00,#02,#90,#90,#01,#28,#02,#90
	db #60,#02,#60,#5c,#01,#00,#02,#90
	db #90,#01,#26,#02,#90,#60,#02,#60
	db #5c,#01,#00,#02,#90,#90,#01,#26
	db #02,#90,#60,#02,#60,#5c,#01,#00
	db #02,#90,#90,#01,#22,#02,#90,#84
	db #01,#2e,#02,#30,#24,#02,#c0,#b4
.l34dc equ $ + 1
	db #03,#01,#00,#02,#30,#30,#01,#2a
	db #02,#30,#24,#01,#2f,#02,#30,#24
	db #01,#31,#02,#30,#24,#06,#e5,#35
	db #02,#30,#18,#02,#30,#18,#01,#34
	db #02,#30,#18,#02,#30,#18,#01,#32
	db #02,#30,#18,#02,#30,#18,#01,#31
	db #02,#30,#18,#02,#30,#18,#06,#e5
	db #35,#01,#36,#02,#30,#30,#01,#38
	db #02,#54,#54,#01,#3a,#02,#90,#90
	db #01,#36,#02,#30,#30,#01,#34,#02
	db #30,#30,#01,#33,#02,#60,#60,#01
	db #31,#02,#60,#60,#01,#2f,#02,#30
	db #30,#01,#36,#02,#30,#30,#01,#39
	db #02,#30,#30,#01,#36,#02,#30,#30
	db #01,#37,#02,#90,#90,#01,#00,#02
	db #90,#90,#01,#34,#02,#30,#30,#01
	db #32,#02,#30,#30,#01,#31,#02,#60
	db #60,#01,#2f,#02,#60,#60,#01,#2d
	db #02,#30,#30,#01,#34,#02,#30,#30
	db #01,#37,#02,#30,#30,#01,#34,#02
	db #30,#30,#01,#36,#02,#90,#90,#01
	db #00,#02,#90,#90,#01,#32,#02,#60
	db #60,#01,#31,#02,#30,#24,#02,#60
	db #60,#01,#32,#02,#60,#60,#01,#34
	db #02,#30,#30,#01,#32,#02,#30,#30
	db #01,#31,#02,#30,#30,#01,#2f,#02
	db #30,#24,#02,#30,#24,#01,#32,#02
	db #30,#30,#01,#36,#02,#60,#54,#02
	db #30,#30,#01,#32,#02,#30,#30,#01
	db #2f,#02,#30,#30,#01,#36,#02,#30
	db #24,#02,#60,#60,#01,#38,#02,#60
	db #54,#02,#30,#30,#01,#3a,#02,#30
	db #30,#02,#30,#30,#01,#3b,#02,#f0
	db #c0,#03,#01,#32,#02,#30,#24,#01
	db #31,#02,#30,#24,#01,#2f,#02,#30
	db #24,#01,#32,#02,#60,#54,#01,#36
	db #02,#30,#24,#01,#34,#02,#30,#24
	db #01,#31,#02,#30,#24,#01,#32,#02
	db #30,#24,#01,#31,#02,#30,#24,#01
	db #2f,#02,#30,#24,#01,#32,#02,#60
	db #3c,#01,#36,#02,#30,#24,#01,#34
	db #02,#30,#24,#01,#32,#02,#30,#24
	db #01,#31,#02,#30,#24,#01,#2f,#02
	db #30,#24,#01,#2d,#02,#30,#24,#01
	db #31,#02,#60,#54,#01,#34,#02,#30
	db #24,#01,#32,#02,#30,#24,#01,#2f
	db #02,#30,#24,#01,#31,#02,#30,#24
	db #01,#2f,#02,#30,#24,#01,#2d,#02
	db #30,#24,#01,#31,#02,#60,#54,#01
	db #34,#02,#30,#24,#01,#32,#02,#30
	db #24,#01,#31,#02,#30,#24,#01,#2f
	db #02,#30,#24,#01,#2d,#02,#30,#24
	db #01,#2b,#02,#30,#24,#01,#2f,#02
	db #60,#54,#01,#32,#02,#30,#24,#01
	db #31,#02,#30,#24,#01,#2d,#02,#30
	db #24,#01,#2f,#02,#30,#24,#01,#2d
	db #02,#30,#24,#01,#2b,#02,#30,#24
	db #01,#2f,#02,#60,#54,#01,#2d,#02
	db #30,#24,#01,#2b,#02,#60,#60,#01
	db #2a,#02,#90,#60,#01,#36,#02,#30
	db #24,#02,#c0,#90,#03,#00,#00
;
.play_music	; added by Megachur
;
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	jp real_play_music
;
.music_info
	db "Frost Byte (1986)(Mikrogen)()",0
	db "",0

	read "music_end.asm"
