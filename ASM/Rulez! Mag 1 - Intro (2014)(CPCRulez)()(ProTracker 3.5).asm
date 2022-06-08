; Music of Rulez! Mag 1 - Intro (2014)(CPCRulez)()(ProTracker 3.5).asm
; Ripped by Megachur the 25/05/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RULEZM1I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #268b

	read "music_header.asm"

.l268b
	db #50,#72,#6f,#54,#72,#61,#63,#6b	; "ProTracker 3.5 compilation of                                  by                                  "
	db #65,#72,#20,#33,#2e,#35,#20,#63
	db #6f,#6d,#70,#69,#6c,#61,#74,#69
	db #6f,#6e,#20,#6f,#66,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#62
	db #79,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#01,#04,#08,#05,#d2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#4d,#03,#ab
	db #03,#00,#00,#00,#00,#00,#00,#21
	db #04,#00,#00,#67,#04,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#a5,#04,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#03,#09,#00,#00
	db #06,#03,#06,#ff,#ea,#00,#ee,#00
	db #ea,#00,#f7,#00,#3c,#01,#75,#01
	db #83,#02,#3c,#01,#c8,#02,#fa,#01
	db #1f,#02,#3e,#02,#b1,#06,#d0,#00
	db #f0,#0c,#cf,#b1,#02,#71,#71,#71
	db #00,#f0,#0e,#b1,#01,#7d,#c0,#7d
	db #c0,#7b,#c0,#7d,#c0,#7d,#c0,#7d
	db #c0,#7b,#c0,#7d,#c0,#7d,#c0,#7d
	db #c0,#7b,#c0,#7d,#c0,#7d,#c0,#7d
	db #c0,#7b,#c0,#7d,#c0,#7b,#c0,#7b
	db #c0,#79,#c0,#7b,#c0,#7b,#c0,#7b
	db #c0,#79,#c0,#7b,#c0,#7b,#c0,#7b
	db #c0,#79,#c0,#7b,#c0,#7b,#c0,#7b
	db #c0,#79,#c0,#7b,#c0,#00,#f0,#16
	db #cf,#b1,#04,#74,#d6,#b1,#02,#74
	db #74,#db,#b1,#04,#74,#d6,#74,#db
	db #74,#d6,#b1,#02,#74,#74,#db,#b1
	db #04,#74,#d6,#74,#db,#74,#d6,#b1
	db #02,#74,#74,#db,#b1,#04,#74,#d6
	db #74,#db,#74,#d6,#b1,#02,#74,#74
	db #db,#b1,#04,#74,#d6,#74,#00,#1c
	db #00,#47,#1a,#40,#b1,#02,#71,#bd
	db #00,#35,#7d,#bd,#00,#6a,#71,#bd
	db #00,#35,#7d,#bd,#00,#6a,#71,#bd
	db #00,#35,#7d,#bd,#00,#6a,#71,#bd
	db #00,#35,#7d,#bd,#00,#6a,#71,#bd
	db #00,#35,#7d,#bd,#00,#6a,#71,#bd
	db #00,#35,#7d,#bd,#00,#6a,#71,#bd
	db #00,#35,#7d,#bd,#00,#6a,#71,#bd
	db #00,#35,#7d,#bd,#00,#4f,#6f,#bd
	db #00,#3c,#7b,#bd,#00,#77,#6f,#bd
	db #00,#3c,#7b,#bd,#00,#77,#6f,#bd
	db #00,#3c,#7b,#bd,#00,#77,#6f,#bd
	db #00,#3c,#7b,#bd,#00,#77,#6f,#bd
	db #00,#3c,#7b,#bd,#00,#77,#6f,#bd
	db #00,#3c,#7b,#bd,#00,#77,#6f,#bd
	db #00,#3c,#7b,#bd,#00,#77,#6f,#bd
	db #00,#3c,#7b,#00,#f0,#0e,#b1,#01
	db #79,#c0,#79,#c0,#78,#c0,#79,#c0
	db #79,#c0,#79,#c0,#78,#c0,#79,#c0
	db #79,#c0,#79,#c0,#78,#c0,#79,#c0
	db #79,#c0,#79,#c0,#78,#c0,#79,#c0
	db #00,#f0,#16,#cf,#b1,#04,#74,#d6
	db #b1,#02,#74,#74,#db,#b1,#04,#74
	db #d6,#74,#db,#74,#d6,#b1,#02,#74
	db #74,#db,#b1,#04,#74,#d6,#74,#00
	db #1c,#00,#59,#1a,#40,#b1,#02,#6d
	db #bd,#00,#43,#79,#bd,#00,#86,#6d
	db #bd,#00,#43,#79,#bd,#00,#86,#6d
	db #bd,#00,#43,#79,#bd,#00,#86,#6d
	db #bd,#00,#43,#79,#bd,#00,#86,#6d
	db #bd,#00,#43,#79,#bd,#00,#86,#6d
	db #bd,#00,#43,#79,#bd,#00,#86,#6d
	db #bd,#00,#43,#79,#bd,#00,#86,#6d
	db #bd,#00,#43,#79,#00,#f0,#0e,#b1
	db #01,#79,#c0,#79,#c0,#78,#c0,#79
	db #c0,#79,#c0,#79,#c0,#78,#c0,#79
	db #c0,#79,#c0,#79,#c0,#78,#c0,#79
	db #c0,#79,#c0,#79,#c0,#78,#c0,#79
	db #c0,#78,#c0,#78,#c0,#76,#c0,#78
	db #c0,#78,#c0,#78,#c0,#76,#c0,#78
	db #c0,#78,#c0,#78,#c0,#76,#c0,#78
	db #c0,#78,#c0,#78,#c0,#76,#c0,#78
	db #c0,#00,#1c,#00,#59,#1a,#40,#b1
	db #02,#6d,#bd,#00,#43,#79,#bd,#00
	db #86,#6d,#bd,#00,#43,#79,#bd,#00
	db #86,#6d,#bd,#00,#43,#79,#bd,#00
	db #86,#6d,#bd,#00,#43,#79,#bd,#00
	db #86,#6d,#bd,#00,#43,#79,#bd,#00
	db #86,#6d,#bd,#00,#43,#79,#bd,#00
	db #86,#6d,#bd,#00,#43,#79,#bd,#00
	db #86,#6d,#bd,#00,#43,#79,#bd,#00
	db #5f,#6c,#bd,#00,#47,#78,#bd,#00
	db #8e,#6c,#bd,#00,#47,#78,#bd,#00
	db #8e,#6c,#bd,#00,#47,#78,#bd,#00
	db #8e,#6c,#bd,#00,#47,#78,#bd,#00
	db #8e,#6c,#bd,#00,#47,#78,#bd,#00
	db #8e,#6c,#bd,#00,#47,#78,#bd,#00
	db #8e,#6c,#bd,#00,#47,#78,#bd,#00
	db #8e,#6c,#bd,#00,#47,#78,#00,#16
	db #17,#0c,#0f,#40,#00,#0e,#0f,#80
	db #00,#10,#0e,#c0,#00,#10,#0e,#00
	db #01,#12,#0d,#1d,#01,#12,#0d,#54
	db #01,#12,#0c,#78,#01,#12,#0c,#93
	db #01,#10,#0b,#c5,#01,#0e,#0a,#fc
	db #01,#0c,#09,#1b,#02,#0a,#08,#2b
	db #02,#08,#07,#59,#02,#06,#06,#68
	db #02,#04,#05,#8d,#02,#02,#03,#ad
	db #02,#02,#02,#ce,#02,#00,#81,#f6
	db #02,#00,#80,#09,#03,#00,#80,#6c
	db #03,#00,#80,#8b,#03,#00,#80,#9c
	db #03,#00,#80,#00,#00,#1c,#1d,#00
	db #8d,#00,#00,#00,#8d,#00,#00,#00
	db #8d,#00,#00,#00,#8c,#00,#00,#00
	db #8c,#00,#00,#00,#8c,#00,#00,#00
	db #8b,#00,#00,#00,#8b,#00,#00,#00
	db #8a,#00,#00,#00,#8a,#00,#00,#00
	db #89,#00,#00,#00,#89,#00,#00,#00
	db #88,#00,#00,#00,#88,#00,#00,#00
	db #87,#00,#00,#00,#87,#00,#00,#00
	db #86,#00,#00,#00,#86,#00,#00,#00
	db #85,#00,#00,#00,#85,#00,#00,#00
	db #84,#00,#00,#00,#84,#00,#00,#00
	db #83,#00,#00,#00,#83,#00,#00,#00
	db #82,#00,#00,#00,#82,#00,#00,#00
	db #81,#00,#00,#00,#81,#00,#00,#00
	db #80,#00,#00,#10,#11,#00,#0f,#02
	db #02,#00,#8f,#80,#04,#00,#8e,#00
	db #06,#00,#8d,#80,#06,#00,#8c,#00
	db #08,#00,#8a,#80,#08,#00,#88,#00
	db #0a,#00,#85,#80,#0b,#00,#80,#00
	db #00,#00,#80,#00,#00,#00,#80,#00
	db #00,#00,#80,#00,#00,#00,#80,#00
	db #00,#00,#80,#00,#00,#00,#80,#00
	db #00,#00,#80,#00,#00,#00,#80,#00
	db #00,#09,#0f,#00,#90,#00,#00,#00
	db #90,#00,#00,#00,#90,#00,#00,#00
	db #90,#00,#00,#00,#90,#00,#00,#00
	db #90,#00,#00,#00,#90,#00,#00,#00
	db #90,#00,#00,#00,#90,#00,#00,#00
	db #90,#00,#00,#00,#90,#00,#00,#00
	db #90,#00,#00,#00,#90,#00,#00,#00
	db #90,#00,#00,#00,#90,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#80,#80,#61,#69,#00
	db #00,#74,#02,#00,#00,#03,#65,#00
	db #01,#01,#ff,#00,#00,#70,#79,#10
	db #00,#79,#bc,#bc,#00,#00,#00,#7f
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #3c,#02,#80,#09,#00,#00,#00,#00
	db #46,#1c,#01,#00,#7d,#7f,#01,#0a
	db #c0,#00,#64,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#33,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#3f,#00,#00,#00,#00
	db #00,#00,#00,#00
	di
	ld a,(hl)
	inc hl
	ld hx,a
	ld b,#34
	ld iy,l3633
	push de
.l2ba1
	ld a,b
	sub #04
	and #0f
	jr nz,l2bab
	ld de,#0001
.l2bab
	ld c,#10
.l2bad
	call l2c47
	rl c
	jr nc,l2bad
	ld (iy+#00),c
	push hl
	inc c
	ld hl,#0000
	scf
.l2bbd
	adc hl,hl
	dec c
	jr nz,l2bbd
	ld (iy+#34),e
	ld (iy+#68),d
	add hl,de
	ex de,hl
	inc iy
	pop hl
	djnz l2ba1
	pop de
.l2bd0
	ld c,#01
	call l2c47
	jr c,l2bec
	ld c,#ff
.l2bd9
	inc c
	call l2c47
	jr nc,l2bd9
	ld a,c
	cp #10
	ret z
	jr c,l2bf0
	push de
	ld d,#10
	call l2c39
	pop de
.l2bec
	ldir
	jr l2bd0
.l2bf0
	push de
	call l2c20
	push bc
	pop af
	ex af,af'
	ld de,#0230
	dec bc
	ld a,b
	or c
	jr z,l2c09
	ld de,#0420
	dec bc
	ld a,b
	or c
	jr z,l2c09
	ld e,#10
.l2c09
	call l2c39
	ld a,e
	add c
	ld c,a
	call l2c20
	pop de
	push hl
	ld h,d
	ld l,e
	sbc hl,bc
	ex af,af'
	push af
	pop bc
	ldir
	pop hl
	jr l2bd0
.l2c20
	ld iy,l3633
	ld b,#00
	add iy,bc
	ld d,(iy+#00)
	call l2c39
	ld a,c
	add (iy+#34)
	ld c,a
	ld a,b
	adc (iy+#68)
	ld b,a
	ret
.l2c39
	ld bc,#0000
.l2c3c
	dec d
	ret m
	call l2c47
	rl c
	rl b
	jr l2c3c
.l2c47
	ld a,hx
	srl a
	ld hx,a
	ret nz
	ld a,(hl)
	inc hl
	rra
	ld hx,a
	ret
.l2c54
	nop
.l2c55
	nop
	nop
.l2c57
	ld hl,l2c54
	set 7,(hl)
	bit 0,(hl)
	ret z
	pop hl
	ld hl,l336d
	inc (hl)
	ld hl,l3331
	inc (hl)
	xor a
	ld h,a
	ld l,a
	ld (l337b),a
	ld (l337c),hl
	jp l31f3
;
.real_init_music
; .l2c74	; init music
;
	ld (l2ddd),hl
	ld (l2f73),hl
	push hl
	ld de,#0064
	add hl,de
	ld a,(hl)
	ld (l317a),a
	push hl
	pop ix
	add hl,de
	ld (l2c55),hl
	ld e,(ix+#02)
	add hl,de
	inc hl
	ld (l311c),hl
	pop de
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,de
	ld (l3129),hl
	ld hl,#00a9
	add hl,de
	ld (l2f6c),hl
	ld hl,#0069
	add hl,de
	ld (l2dd6),hl
	ld hl,l2c54
	res 7,(hl)
	ld de,l32e1
	ld bc,l33e4
.l2cb6
	ld a,(de)
	inc de
	cp #1e
	jr nc,l2cc2
	ld h,a
	ld a,(de)
	ld l,a
	inc de
	jr l2cc9
.l2cc2
	push de
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	pop de
.l2cc9
	ld a,h
	ld (bc),a
	dec bc
	ld a,l
	ld (bc),a
	dec bc
	sub #f0
	jr nz,l2cb6
	ld hl,l3316
	ld (hl),a
	ld de,l3317
	ld bc,#006c
	ldir
	inc a
	ld (l336d),a
	ld hl,#f001
	ld (l3331),hl
	ld (l334e),hl
	ld (l336b),hl
	ld hl,l32dd
	ld (l3106),hl
	ld (l3323),hl
	ld (l3340),hl
	ld (l335d),hl
	ld (l3325),hl
	ld (l3342),hl
	ld (l335f),hl
	ld a,(ix-#57)
	sub #30
	jr c,l2d12
	cp #0a
	jr c,l2d14
.l2d12
	ld a,#06
.l2d14
	ld (l2ec2),a
	push af
	cp #04
	ld a,(ix-#01)
	rla
	and #07
	ld hl,l328d
	push de
	ld d,b
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	srl e
	sbc a
	and #a7
	ld (l2d55),a
	ex de,hl
	pop bc
	add hl,bc
	ld a,(de)
	add #9d
	ld c,a
	adc #32
	sub c
	ld b,a
	push bc
	ld de,l3473
	push de
	ld b,#0c
.l2d44
	push bc
	ld c,(hl)
	inc hl
	push hl
	ld b,(hl)
	push de
	ex de,hl
	ld de,#0017
	ld hx,#08
.l2d51
	srl b
	rr c
.l2d55
	add hl,de
	ld a,c
	adc d
	ld (hl),a
	inc hl
	ld a,b
	adc d
	ld (hl),a
	add hl,de
	dec hx
	jr nz,l2d51
	pop de
	inc de
	inc de
	pop hl
	inc hl
	pop bc
	djnz l2d44
	pop hl
	pop de
	ld a,e
	cp #a9
	jr nz,l2d76
	ld a,#fd
	ld (l34a1),a
.l2d76
	ld a,(de)
	and a
	jr z,l2d8b
	rra
	push af
	add a
	ld c,a
	add hl,bc
	pop af
	jr nc,l2d84
	dec (hl)
	dec (hl)
.l2d84
	inc (hl)
	and a
	sbc hl,bc
	inc de
	jr l2d76
.l2d8b
	pop af
	cp #05
	ld hl,#0011
	ld d,h
	ld e,h
	ld a,#17
	jr nc,l2d9a
	dec l
	ld e,l
	xor a
.l2d9a
	ld (l2da9),a
	ld ix,l3383
	ld c,#10
.l2da3
	push hl
	add hl,de
	ex de,hl
	sbc hl,hl
.l2da8
	ld a,l
.l2da9
	ld a,l
	ld a,h
	adc #00
	ld (ix+#00),a
	inc ix
	add hl,de
	inc c
	ld a,c
	and #0f
	jr nz,l2da8
	pop hl
	ld a,e
	cp #77
	jr nz,l2dc0
	inc e
.l2dc0
	ld a,c
	and a
	jr nz,l2da3
	jp l31f3
.l2dc7
	ld (ix+#08),#00
	call l2f64
	ld a,(bc)
	inc bc
	rrca
.l2dd1
	add a
.l2dd2
	ld e,a
	ld d,#00
.l2dd6 equ $ + 1
	ld hl,#2121
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l2ddd equ $ + 1
.l2ddc
	ld hl,l2ddc
	add hl,de
	ld (ix+#03),l
	ld (ix+#04),h
	jr l2e29
.l2de8
	rlca
	rlca
	rlca
	rlca
	ld (ix+#10),a
	jr l2e2c
.l2df1
	ld (ix+#08),a
	ld (ix-#0c),a
	jr l2e2c
.l2df9
	dec a
	jr nz,l2e03
	ld a,(bc)
	inc bc
	ld (ix+#05),a
	jr l2e2c
.l2e03
	call l2f48
	jr l2e2c
.l2e08
	call l2f64
	jr l2e29
.l2e0d
	ld (ix+#08),a
	ld (ix-#0c),a
	call nz,l2f48
	ld a,(bc)
	inc bc
	jr l2dd2
.l2e1a
	ld a,(ix+#06)
	ld (l2ea6),a
	ld l,(ix-#06)
	ld h,(ix-#05)
	ld (l2ec8),hl
.l2e29
	ld de,#2010
.l2e2c
	ld a,(bc)
	inc bc
	add e
	jr c,l2dc7
	add d
	jr z,l2e7d
	jr c,l2dd1
	add e
	jr z,l2e5e
	jr c,l2de8
	add e
	jr z,l2df1
	jr c,l2df9
	add #60
	jr c,l2e64
	add e
	jr c,l2e08
	add d
	jr c,l2e59
	add e
	jr c,l2e0d
	add a
	ld e,a
	ld hl,#0e9d
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	jr l2e29
.l2e59
	ld (l3371),a
	jr l2e2c
.l2e5e
	res 0,(ix+#09)
	jr l2e6c
.l2e64
	ld (ix+#06),a
	set 0,(ix+#09)
	xor a
.l2e6c
	ld (l2e7b),sp
	ld sp,ix
	ld h,a
	ld l,a
	push hl
	push hl
	push hl
	push hl
	push hl
	push hl
.l2e7b equ $ + 1
	ld sp,l3131
.l2e7d
	ld a,(ix+#05)
	ld (ix+#0f),a
	ret
.l2e84
	res 2,(ix+#09)
	ld a,(bc)
	inc bc
	inc bc
	inc bc
	ld (ix+#0a),a
	ld (ix-#07),a
	ld de,l3473
	ld a,(ix+#06)
	ld (ix+#07),a
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
.l2ea6 equ $ + 1
	ld a,#3e
	ld (ix+#06),a
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	pop hl
	sbc hl,de
	ld (ix+#0d),l
	ld (ix+#0e),h
	ld e,(ix-#06)
	ld d,(ix-#05)
.l2ec2 equ $ + 1
	ld a,#3e
	cp #06
	jr c,l2ed0
.l2ec8 equ $ + 1
	ld de,#1111
	ld (ix-#06),e
	ld (ix-#05),d
.l2ed0
	ld a,(bc)
	inc bc
	ex af,af'
	ld a,(bc)
	inc bc
	and a
	jr z,l2ed9
	ex de,hl
.l2ed9
	sbc hl,de
	jp p,l2ee3
	cpl
	ex af,af'
	neg
	ex af,af'
.l2ee3
	ld (ix+#0c),a
	ex af,af'
	ld (ix+#0b),a
	ld (ix-#02),#00
	ret
.l2eef
	set 2,(ix+#09)
	ld a,(bc)
	inc bc
	ld (ix+#0a),a
	and a
	jr nz,l2f02
	ld a,(l2ec2)
	cp #07
	sbc a
	inc a
.l2f02
	ld (ix-#07),a
	ld a,(bc)
	inc bc
	ex af,af'
	ld a,(bc)
	inc bc
	jr l2ee3
.l2f0c
	ld a,(bc)
	inc bc
	ld (ix-#0b),a
	ret
.l2f12
	ld a,(bc)
	inc bc
	ld (ix-#0c),a
	ret
.l2f18
	ld a,(bc)
	inc bc
	ld (ix-#01),a
	ld (ix-#02),a
	ld a,(bc)
	inc bc
	ld (ix+#00),a
	xor a
	ld (ix-#07),a
	ld (ix-#06),a
	ld (ix-#05),a
	ret
.l2f30
	ld a,(bc)
	inc bc
	ld (l31e9),a
	ld (l3370),a
	ld a,(bc)
	inc bc
	ld l,a
	ld a,(bc)
	inc bc
	ld h,a
	ld (l31ec),hl
	ret
.l2f42
	ld a,(bc)
	inc bc
	ld (l317a),a
	ret
.l2f48
	ld (ix+#08),e
	ld (l3380),a
	ld a,(bc)
	inc bc
	ld h,a
	ld a,(bc)
	inc bc
	ld l,a
	ld (l3381),hl
	xor a
	ld (ix-#0c),a
	ld (l3370),a
	ld h,a
	ld l,a
	ld (l336e),hl
.l2f63
	ret
.l2f64
	add a
	ld e,a
	ld d,#00
	ld (ix-#0c),d
.l2f6c equ $ + 1
	ld hl,#2121
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l2f73 equ $ + 1
.l2f72
	ld hl,l2f72
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	ret
	dw l2f63,l2eef,l2e84,l2f0c
	dw l2f12,l2f18,l2f63,l2f63
	dw l2f30,l2f42,l2f63,l2f63
	dw l2f63,l2f63,l2f63,l2f63
.l2f9d
	xor a
	ld (l337d),a
	bit 0,(ix+#15)
	push hl
	jp z,l30cb
	ld (l3016),sp
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	ld sp,hl
	pop de
	ld h,a
	ld a,(ix+#00)
	ld l,a
	add hl,sp
	inc a
	cp d
	jr c,l2fc0
	ld a,e
.l2fc0
	ld (ix+#00),a
	ld a,(ix+#12)
	add (hl)
	jp p,l2fcb
	xor a
.l2fcb
	cp #60
	jr c,l2fd1
	ld a,#5f
.l2fd1
	add a
	ex af,af'
	ld l,(ix+#0f)
	ld h,(ix+#10)
	ld sp,hl
	pop de
	ld h,#00
	ld a,(ix+#01)
	ld b,a
	add a
	add a
	ld l,a
	add hl,sp
	ld sp,hl
	ld a,b
	inc a
	cp d
	jr c,l2fec
	ld a,e
.l2fec
	ld (ix+#01),a
	pop bc
	pop hl
	ld e,(ix+#08)
	ld d,(ix+#09)
	add hl,de
	bit 6,b
	jr z,l3002
	ld (ix+#08),l
	ld (ix+#09),h
.l3002
	ex de,hl
	ex af,af'
	ld l,a
	ld h,#00
	ld sp,l3473
	add hl,sp
	ld sp,hl
	pop hl
	add hl,de
	ld e,(ix+#06)
	ld d,(ix+#07)
	add hl,de
.l3016 equ $ + 1
	ld sp,l3131
	ex (sp),hl
	xor a
	or (ix+#05)
	jr z,l305d
	dec (ix+#05)
	jr nz,l305d
	ld a,(ix+#16)
	ld (ix+#05),a
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,h
	add hl,de
	ld (ix+#06),l
	ld (ix+#07),h
	bit 2,(ix+#15)
	jr nz,l305d
	ld e,(ix+#19)
	ld d,(ix+#1a)
	and a
	jr z,l3048
	ex de,hl
.l3048
	sbc hl,de
	jp m,l305d
	ld a,(ix+#13)
	ld (ix+#12),a
	xor a
	ld (ix+#05),a
	ld (ix+#06),a
	ld (ix+#07),a
.l305d
	ld a,(ix+#02)
	bit 7,c
	jr z,l3077
	bit 6,c
	jr z,l306f
	cp #0f
	jr z,l3077
	inc a
	jr l3074
.l306f
	cp #f1
	jr z,l3077
	dec a
.l3074
	ld (ix+#02),a
.l3077
	ld l,a
	ld a,b
	and #0f
	add l
	jp p,l3080
	xor a
.l3080
	cp #10
	jr c,l3086
	ld a,#0f
.l3086
	or (ix+#1c)
	ld l,a
	ld h,#00
	ld de,l3373
	add hl,de
	ld a,(hl)
	bit 0,c
	jr nz,l3098
	or (ix+#14)
.l3098
	ld (l337d),a
	bit 7,b
	ld a,c
	jr z,l30b9
	rla
	rla
	sra a
	sra a
	sra a
	add (ix+#04)
	bit 5,b
	jr z,l30b2
	ld (ix+#04),a
.l30b2
	ld hl,l31c8
	add (hl)
	ld (hl),a
	jr l30c7
.l30b9
	rra
	add (ix+#03)
	ld (l3372),a
	bit 5,b
	jr z,l30c7
	ld (ix+#03),a
.l30c7
	ld a,b
	rra
	and #48
.l30cb
	ld hl,l337a
	or (hl)
	rrca
	ld (hl),a
	pop hl
	xor a
	or (ix+#0a)
	ret z
	dec (ix+#0a)
	ret nz
	xor (ix+#15)
	ld (ix+#15),a
	rra
	ld a,(ix+#0b)
	jr c,l30ea
	ld a,(ix+#0c)
.l30ea
	ld (ix+#0a),a
	ret
;
.play_music
.l30ee		; play music
;
	xor a
	ld (l31c8),a
	ld (l337a),a
	dec a
	ld (l3380),a
	ld hl,l336d
	dec (hl)
	jr nz,l317e
	ld hl,l3331
	dec (hl)
	jr nz,l3151
.l3106 equ $ + 1
	ld bc,#0101
	ld a,(bc)
	and a
	jr nz,l3146
	ld d,a
	ld (l3371),a
	ld hl,(l2c55)
	inc hl
	ld a,(hl)
	inc a
	jr nz,l3120
	call l2c57
.l311c equ $ + 1
	ld hl,#2121
	ld a,(hl)
	inc a
.l3120
	ld (l2c55),hl
	dec a
	add a
	ld e,a
	rl d
.l3129 equ $ + 1
	ld hl,#2121
	add hl,de
	ld de,(l2ddd)
.l3131 equ $ + 1
	ld (l3144),sp
	ld sp,hl
	pop hl
	add hl,de
	ld b,h
	ld c,l
	pop hl
	add hl,de
	ld (l315c),hl
	pop hl
	add hl,de
	ld (l3170),hl
.l3144 equ $ + 1
	ld sp,l3131
.l3146
	ld ix,l3322
	call l2e1a
	ld (l3106),bc
.l3151
	ld hl,l334e
	dec (hl)
	jr nz,l3165
	ld ix,l333f
.l315c equ $ + 1
	ld bc,#0101
	call l2e1a
	ld (l315c),bc
.l3165
	ld hl,l336b
	dec (hl)
	jr nz,l3179
	ld ix,l335c
.l3170 equ $ + 1
	ld bc,#0101
	call l2e1a
	ld (l3170),bc
.l317a equ $ + 1
.l3179
	ld a,#3e
	ld (l336d),a
.l317e
	ld ix,l3316
	ld hl,(l3373)
	call l2f9d
	call l322b
	ld (l3373),hl
	ld a,(l337d)
	ld (l337b),a
	ld ix,l3333
	ld hl,(l3375)
	call l2f9d
	call l322b
	ld (l3375),hl
	ld a,(l337d)
	ld (l337c),a
	ld ix,l3350
	ld hl,(l3377)
	call l2f9d
	call l322b
	ld (l3377),hl
	ld hl,(l3371)
	ld a,h
	add l
	srl a
	jr nc,l31c4
	inc a
.l31c4
	ld (l3379),a
.l31c8 equ $ + 1
	ld a,#3e
	ld e,a
	add a
	sbc a
	ld d,a
	ld hl,(l3381)
	add hl,de
	ld de,(l336e)
	add hl,de
	push de
	call l3252
	pop de
	ld (l337e),hl
	xor a
	ld hl,l3370
	or (hl)
	jr z,l31f3
	dec (hl)
	jr nz,l31f2
.l31e9 equ $ + 1
	ld a,#3e
	ld (hl),a
.l31ec equ $ + 1
	ld hl,#2121
	add hl,de
	ld (l336e),hl
.l31f2
	xor a
.l31f3
	ld hl,l3373
.l31f6
	ld bc,#f4c0
	out (c),a
	ld b,#f6
	out (c),c
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld bc,#f680
	out (c),c
	db #ed,#71 ; out (c),0
	inc a
	cp #0d
	jr nz,l31f6
	ld a,(hl)
	and a
	ret m
	ld a,#0d
	ld bc,#f4c0
	out (c),a
	ld b,#f6
	out (c),c
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld bc,#f680
	out (c),c
	db #ed,#71 ; out (c),0
	ret
.l322b
	ld b,h
	ld c,l
	add hl,hl
	ld d,h
	ld e,l
	add hl,hl
	ex de,hl
	add hl,de
	ex de,hl
	add hl,hl
	ld a,d
	add l
	jr nc,l323a
	inc h
.l323a
	add c
	ld l,a
	ld a,h
	adc b
	srl a
	rr l
	srl a
	rr l
	srl a
	rr l
	srl a
	rr l
	ld h,a
	ret nc
	inc hl
	ret
.l3252
	ld b,#00
	ld c,h
	ld d,l
	ld e,b
	add hl,hl
	rr b
	ex de,hl
	add hl,de
	ld a,c
	adc b
	rl e
	rl d
	rl b
	add hl,de
	adc b
	ld c,a
	rl e
	rl d
	rl b
	ld a,h
	add e
	ld l,a
	ld a,c
	adc d
	jr nc,l3275
	inc b
.l3275
	srl b
	rra
	rr l
	srl b
	rra
	rr l
	srl b
	rra
	rr l
	srl b
	rra
	rr l
	ld h,a
	ret nc
	inc hl
	ret
.l328d
	db #64,#2a,#65,#00,#01,#0c,#01,#0c
	db #94,#35,#30,#0e,#60,#20,#60,#21
	db #01,#05,#09,#0b,#0d,#0f,#13,#15
	db #19,#25,#3d,#00,#5d,#00,#31,#37
	db #4d,#53,#5f,#71,#82,#8c,#9c,#9e
	db #a0,#a6,#a8,#aa,#ac,#ae,#ae,#00
	db #57,#1f,#23,#25,#29,#2d,#2f,#33
	db #bf,#00,#1d,#21,#23,#27,#2b,#2d
	db #31,#55,#bd,#bf,#00,#1b,#21,#25
	db #29,#2b,#3b,#4d,#5f,#bb,#bd,#bf
.l32e1 equ $ + 4
.l32dd
	db #00,#01,#00,#90,#0d,#d8,#69,#70
	db #76,#7d,#85,#8d,#95,#9d,#a8,#b1
	db #bb,#0c,#da,#62,#68,#6d,#75,#7b
	db #83,#8a,#92,#9c,#a4,#af,#b8,#0e
	db #08,#6a,#72,#78,#7e,#86,#90,#96
	db #a0,#aa,#b4,#be,#0f,#c0,#78,#88
	db #80,#90,#98,#a0,#b0,#a8,#e0,#b0
.l3317 equ $ + 2
.l3316 equ $ + 1
	db #e8,#00,#00,#00,#00,#00,#00,#00
.l3323 equ $ + 6
.l3322 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3325
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3333 equ $ + 6
.l3331 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3342 equ $ + 5
.l3340 equ $ + 3
.l333f equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3350 equ $ + 3
.l334e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l335c equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l335f equ $ + 2
.l335d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l336b equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3373 equ $ + 6
.l3372 equ $ + 5
.l3371 equ $ + 4
.l3370 equ $ + 3
.l336e equ $ + 1
.l336d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l337c equ $ + 7
.l337b equ $ + 6
.l337a equ $ + 5
.l3379 equ $ + 4
.l3377 equ $ + 2
.l3375
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3383 equ $ + 6
.l3381 equ $ + 4
.l3380 equ $ + 3
.l337e equ $ + 1
.l337d
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
	db #00,#00,#00,#00,#00,#00,#00,#00
.l33e4 equ $ + 7
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l3473 equ $ + 2
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
.l34a1
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
.l3633
	db #00,#03,#06,#09,#0d,#10,#13,#16
	db #19,#1c,#1f,#22,#25,#28,#2b,#2e
	db #31,#34,#37,#3a,#3c,#3f,#42,#44
	db #47,#4a,#4c,#4f,#51,#54,#56,#58
	db #5b,#5d,#5f,#61,#63,#65,#67,#69
	db #6a,#6c,#6e,#6f,#71,#72,#74,#75
	db #76,#77,#79,#7a,#7a,#7b,#7c,#7d
	db #7e,#7e,#7f,#7f,#7f,#7f,#7f,#7f
	db #7f,#7f,#7f,#7f,#7f,#7f,#7f,#7e
	db #7e,#7d,#7c,#7b,#7a,#7a,#79,#77
	db #76,#75,#74,#72,#71,#6f,#6e,#6c
	db #6a,#69,#67,#65,#63,#61,#5f,#5d
	db #5b,#58,#56,#54,#51,#4f,#4c,#4a
	db #47,#44,#42,#3f,#3c,#3a,#37,#34
	db #31,#2e,#2b,#28,#25,#22,#1f,#1c
	db #19,#16,#13,#10,#0d,#09,#06,#03
	db #00,#fd,#fa,#f7,#f3,#f0,#ed,#ea
	db #e7,#e4,#e1,#de,#db,#d8,#d5,#d2
	db #cf,#cc,#c9,#c6,#c4,#c1,#be,#bc
	db #b9,#b6,#b4,#b1,#af,#ac,#aa,#a8
	db #a5,#a3,#a1,#9f,#9d,#9b,#99,#97
	db #96,#94,#92,#91,#8f,#8e,#8c,#8b
	db #8a,#89,#87,#86,#86,#85,#84,#83
	db #82,#82,#81,#81,#81,#81,#81,#81
	db #81,#81,#81,#81,#81,#81,#81,#82
	db #82,#83,#84,#85,#86,#86,#87,#89
	db #8a,#8b,#8c,#8e,#8f,#91,#92,#94
	db #96,#97,#99,#9b,#9d,#9f,#a1,#a3
	db #a5,#a8,#aa,#ac,#af,#b1,#b4,#b6
	db #b9,#bc,#be,#c1,#c4,#c6,#c9,#cc
	db #cf,#d2,#d5,#d8,#db,#de,#e1,#e4
	db #e7,#ea,#ed,#f0,#f3,#f7,#fa,#fd
	db #00,#01,#01,#02,#03,#03,#04,#05
	db #06,#06,#07,#08,#08,#09,#0a,#0b
	db #0b,#0c,#0d,#0e,#0e,#0f,#10,#10
	db #11,#12,#13,#13,#14,#15,#16,#16
	db #17,#18,#19,#19,#1a,#1b,#1c,#1d
	db #1d,#1e,#1f,#20,#20,#21,#22,#23
	db #24,#24,#25,#26,#27,#28,#28,#29
	db #2a,#2b,#2c,#2c,#2d,#2e,#2f,#30
	db #30,#31,#32,#33,#34,#35,#35,#36
	db #37,#38,#39,#3a,#3a,#3b,#3c,#3d
	db #3e,#3f,#40,#41,#41,#42,#43,#44
	db #45,#46,#47,#48,#48,#49,#4a,#4b
	db #4c,#4d,#4e,#4f,#50,#51,#51,#52
	db #53,#54,#55,#56,#57,#58,#59,#5a
	db #5b,#5c,#5d,#5e,#5e,#5f,#60,#61
	db #62,#63,#64,#65,#66,#67,#68,#69
	db #6a,#6b,#6c,#6d,#6e,#6f,#70,#71
	db #72,#73,#74,#75,#76,#77,#78,#79
	db #7a,#7b,#7c,#7d,#7e,#7f,#80,#81
	db #82,#83,#84,#85,#87,#88,#89,#8a
	db #8b,#8c,#8d,#8e,#8f,#90,#91,#92
	db #93,#95,#96,#97,#98,#99,#9a,#9b
	db #9c,#9d,#9f,#a0,#a1,#a2,#a3,#a4
	db #a5,#a6,#a8,#a9,#aa,#ab,#ac,#ad
	db #af,#b0,#b1,#b2,#b3,#b4,#b6,#b7
	db #b8,#b9,#ba,#bc,#bd,#be,#bf,#c0
	db #c2,#c3,#c4,#c5,#c6,#c8,#c9,#ca
	db #cb,#cd,#ce,#cf,#d0,#d2,#d3,#d4
	db #d6,#d7,#d8,#d9,#db,#dc,#dd,#de
	db #e0,#e1,#e2,#e4,#e5,#e6,#e8,#e9
	db #ea,#ec,#ed,#ee,#f0,#f1,#f2,#f4
	db #f5,#f6,#f8,#f9,#fa,#fc,#fd,#ff
	db #00,#00,#00,#95,#00,#52,#95,#ce
	db #00,#2b,#52,#75,#95,#b3,#ce,#e8
	db #00,#16,#2b,#3f,#52,#64,#75,#86
	db #95,#a4,#b3,#c1,#ce,#db,#e8,#f4
	db #00,#0b,#16,#21,#2b,#35,#3f,#49
	db #52,#5b,#64,#6d,#75,#7d,#86,#8d
	db #95,#9d,#a4,#ac,#b3,#ba,#c1,#c8
	db #ce,#d5,#db,#e1,#e8,#ee,#f4,#fa
	db #00,#05,#0b,#10,#16,#1b,#21,#26
	db #2b,#30,#35,#3a,#3f,#44,#49,#4d
	db #52,#57,#5b,#60,#64,#68,#6d,#71
	db #75,#79,#7d,#81,#86,#8a,#8d,#91
	db #95,#99,#9d,#a1,#a4,#a8,#ac,#af
	db #b3,#b6,#ba,#bd,#c1,#c4,#c8,#cb
	db #ce,#d1,#d5,#d8,#db,#de,#e1,#e5
	db #e8,#eb,#ee,#f1,#f4,#f7,#fa,#fd
	db #00,#02,#05,#08,#0b,#0e,#10,#13
	db #16,#19,#1b,#1e,#21,#23,#26,#28
	db #2b,#2e,#30,#33,#35,#38,#3a,#3d
	db #3f,#41,#44,#46,#49,#4b,#4d,#50
	db #52,#54,#57,#59,#5b,#5d,#60,#62
	db #64,#66,#68,#6a,#6d,#6f,#71,#73
	db #75,#77,#79,#7b,#7d,#7f,#81,#84
	db #86,#88,#8a,#8c,#8d,#8f,#91,#93
	db #95,#97,#99,#9b,#9d,#9f,#a1,#a2
	db #a4,#a6,#a8,#aa,#ac,#ad,#af,#b1
	db #b3,#b5,#b6,#b8,#ba,#bc,#bd,#bf
	db #c1,#c2,#c4,#c6,#c8,#c9,#cb,#cd
	db #ce,#d0,#d1,#d3,#d5,#d6,#d8,#da
	db #db,#dd,#de,#e0,#e1,#e3,#e5,#e6
	db #e8,#e9,#eb,#ec,#ee,#ef,#f1,#f2
	db #f4,#f5,#f7,#f8,#fa,#fb,#fd,#fe
	db #f0,#00,#01,#01,#02,#02,#02,#02
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #08,#09,#0a,#0b,#0c,#0d,#0e,#0f
	db #00,#02,#04,#06,#08,#0a,#0c,#0e
	db #10,#12,#14,#16,#18,#1a,#1c,#1e
	db #00,#03,#06,#09,#0c,#0f,#12,#15
	db #18,#1b,#1e,#21,#24,#27,#2a,#2d
	db #00,#04,#08,#0c,#10,#14,#18,#1c
	db #20,#24,#28,#2c,#30,#34,#38,#3c
	db #00,#05,#0a,#0f,#14,#19,#1e,#23
	db #28,#2d,#32,#37,#3c,#41,#46,#4b
	db #00,#06,#0c,#12,#18,#1e,#24,#2a
	db #30,#36,#3c,#42,#48,#4e,#54,#5a
	db #00,#07,#0e,#15,#1c,#23,#2a,#31
	db #38,#3f,#46,#4d,#54,#5b,#62,#69
	db #00,#08,#10,#18,#20,#28,#30,#38
	db #40,#48,#50,#58,#60,#68,#70,#78
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
	db #48,#51,#5a,#63,#6c,#75,#7e,#87
	db #00,#0a,#14,#1e,#28,#32,#3c,#46
	db #50,#5a,#64,#6e,#78,#82,#8c,#96
	db #00,#0b,#16,#21,#2c,#37,#42,#4d
	db #58,#63,#6e,#79,#84,#8f,#9a,#a5
	db #00,#0c,#18,#24,#30,#3c,#48,#54
	db #60,#6c,#78,#84,#90,#9c,#a8,#b4
	db #00,#0d,#1a,#27,#34,#41,#4e,#5b
	db #68,#75,#82,#8f,#9c,#a9,#b6,#c3
	db #00,#0e,#1c,#2a,#38,#46,#54,#62
	db #70,#7e,#8c,#9a,#a8,#b6,#c4,#d2
	db #00,#0f,#1e,#2d,#3c,#4b,#5a,#69
	db #78,#87,#96,#a5,#b4,#c3,#d2,#e1
	db #00,#00,#5a,#a5,#f0,#a5,#0a,#55
	db #af,#5f,#f0,#f0,#a0,#50,#f0,#a0
	db #f0,#f5,#fa,#f5,#0f,#0f,#0a,#05
	db #0f,#0a,#0f,#5a,#0f,#5f,#ff,#ff
	db #aa,#55,#ff,#aa,#ff,#fa,#ff,#af
	db #02,#0e,#07,#e0,#1f,#f8,#3f,#fc
	db #3f,#fc,#7f,#fe,#7f,#fe,#7f,#fe
	db #7f,#fe,#7f,#fe,#7f,#fe,#3f,#fc
	db #3f,#fc,#1f,#f8,#07,#e0,#02,#10
	db #00,#00,#1f,#f8,#20,#04,#4f,#f2
	db #5f,#fa,#5f,#fa,#5f,#fa,#5f,#fa
	db #5f,#fa,#5f,#fa,#5f,#fa,#5f,#fa
	db #4f,#f2,#20,#04,#1f,#f8,#00,#00
	db #01,#06,#3c,#7e,#7e,#7e,#7e,#3c
	db #01,#08,#00,#00,#31,#4a,#84,#4a
	db #31,#00,#01,#08,#00,#38,#44,#78
	db #44,#78,#40,#40,#01,#08,#24,#24
	db #18,#10,#28,#28,#28,#10,#01,#08
	db #0c,#10,#08,#18,#24,#24,#18,#00
	db #01,#08,#00,#00,#1c,#20,#38,#20
	db #1c,#00,#02,#06,#03,#c0,#07,#e0
	db #07,#e0,#07,#e0,#07,#e0,#03,#c0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00

;
.init_music		; added by Megachur
;
	ld hl,l268b
	jp real_init_music

; #0484
; ld hl,#268b
; call #2c74	; init ?


; #0068
; push hl
; push ix
; push iy
; ex af,af'
; push af
; call #30ee	; play music
; pop af
; ex af,af'
; pop iy
; pop ix
; pop hl

;
.music_info
	db "Rulez! Mag 1 - Intro (2014)(CPCRulez)()",0
	db "ProTracker 3.5).as",0

	read "music_end.asm"
