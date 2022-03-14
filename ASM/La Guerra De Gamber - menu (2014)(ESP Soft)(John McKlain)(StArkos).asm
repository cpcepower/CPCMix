; Music of La Guerra De Gamber - menu (2014)(ESP Soft)(John McKlain)(StArkos)
; Ripped by Megachur the 22/07/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LAGUEDGM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #7500

	read "music_header.asm"

.l7500	; menu
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#08,#b2,#00,#1a,#75,#23,#75
	db #44,#75,#58,#75,#67,#75,#95,#75
	db #a5,#75,#00,#00,#00,#00,#00,#00
	db #0d,#1c,#75,#01,#00,#68,#0c,#30
	db #30,#30,#30,#30,#30,#b0,#ff,#ff
	db #b0,#fe,#ff,#b0,#ff,#ff,#30,#b0
	db #01,#00,#b0,#02,#00,#b0,#01,#00
	db #30,#0d,#2d,#75,#01,#00,#7a,#2c
	db #0f,#74,#0a,#74,#05,#70,#02,#6c
	db #fe,#68,#f9,#64,#f5,#0d,#1c,#75
	db #01,#00,#26,#02,#1a,#01,#00,#00
	db #00,#00,#00,#00,#0d,#5a,#75,#01
	db #00,#7e,#29,#10,#7e,#29,#0e,#7a
	db #29,#0a,#76,#2a,#07,#76,#2a,#04
	db #72,#2a,#02,#72,#2b,#02,#2e,#0b
	db #2e,#0b,#2a,#0b,#2a,#0c,#26,#0c
	db #26,#0c,#22,#0c,#1e,#0c,#1a,#0c
	db #16,#0c,#0d,#1c,#75,#01,#00,#74
	db #0c,#34,#30,#2c,#28,#60,#0c,#20
	db #1c,#1c,#0d,#1c,#75,#01,#00,#bc
	db #ff,#ff,#bc,#fe,#ff,#bc,#ff,#ff
	db #3c,#bc,#01,#00,#bc,#02,#00,#bc
	db #01,#00,#3c,#0d,#a7,#75,#20,#00
	db #00,#00,#2a,#76,#00,#92,#76,#44
	db #76,#60,#77,#00,#92,#76,#44,#76
	db #60,#77,#1a,#fc,#fc,#92,#76,#44
	db #76,#60,#77,#10,#0a,#f9,#f9,#92
	db #76,#44,#76,#60,#77,#1a,#00,#00
	db #92,#76,#44,#76,#60,#77,#20,#00
	db #92,#76,#44,#76,#2b,#76,#00,#92
	db #76,#44,#76,#b6,#76,#00,#01,#77
	db #44,#76,#c8,#76,#00,#92,#76,#44
	db #76,#dc,#76,#00,#92,#76,#44,#76
	db #2b,#76,#00,#92,#76,#44,#76,#b6
	db #76,#00,#01,#77,#44,#76,#25,#77
	db #00,#92,#76,#44,#76,#39,#77,#01
	db #c4,#75,#00,#ba,#e3,#00,#00,#01
	db #0a,#77,#0a,#71,#12,#42,#05,#02
	db #42,#07,#02,#42,#09,#02,#42,#0b
	db #02,#42,#0d,#00,#72,#e1,#00,#00
	db #02,#42,#00,#ae,#60,#03,#42,#00
	db #74,#63,#04,#42,#00,#ae,#61,#03
	db #42,#00,#72,#60,#02,#33,#ae,#60
	db #03,#72,#6b,#02,#74,#63,#04,#02
	db #ae,#61,#03,#02,#72,#60,#02,#42
	db #00,#ae,#60,#03,#42,#00,#74,#63
	db #04,#42,#00,#ae,#61,#03,#42,#00
	db #72,#60,#02,#33,#ae,#60,#03,#72
	db #6b,#02,#74,#63,#04,#02,#74,#45
	db #74,#43,#72,#e5,#00,#00,#05,#33
	db #4b,#33,#33,#33,#4b,#33,#33,#33
	db #4b,#33,#33,#33,#4b,#33,#33,#33
	db #4b,#33,#33,#33,#4b,#33,#33,#33
	db #4b,#33,#33,#33,#4b,#33,#ba,#e3
	db #00,#00,#01,#0a,#77,#0a,#81,#42
	db #00,#08,#7b,#12,#7b,#02,#6d,#00
	db #b2,#e3,#00,#00,#01,#12,#42,#05
	db #02,#42,#07,#02,#42,#09,#02,#ac
	db #43,#16,#73,#00,#b0,#e3,#00,#00
	db #01,#73,#71,#6d,#71,#12,#42,#05
	db #02,#42,#07,#02,#42,#09,#02,#42
	db #0b,#02,#42,#0d,#02,#42,#0f,#02
	db #42,#11,#02,#42,#13,#02,#42,#15
	db #00,#6a,#e5,#00,#00,#05,#2b,#43
	db #2b,#2b,#2b,#43,#2b,#2b,#2b,#43
	db #2b,#2b,#2b,#43,#2b,#25,#25,#3d
	db #25,#25,#25,#3d,#25,#25,#25,#3d
	db #25,#25,#25,#3d,#25,#b2,#e3,#00
	db #00,#01,#12,#42,#05,#02,#42,#07
	db #02,#42,#09,#02,#ac,#43,#16,#71
	db #00,#a2,#e3,#00,#00,#01,#12,#42
	db #05,#02,#42,#07,#02,#42,#09,#02
	db #42,#0b,#02,#42,#0d,#02,#42,#0f
	db #02,#42,#11,#02,#42,#13,#02,#42
	db #15,#02,#42,#17,#02,#42,#19,#00
	db #8a,#f5,#00,#00,#06,#42,#13,#42
	db #11,#42,#0f,#42,#0d,#42,#0b,#42
	db #09,#42,#07,#08,#42,#00,#42,#09
	db #42,#0b,#42,#0d,#42,#0f,#42,#11
	db #42,#13,#42,#15,#42,#17,#42,#19
	db #42,#1b,#00,#00,#00,#00,#00,#00
;
	ds #7f90-$
;
.l7f90
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#fc,#33,#89
	db #31,#bd,#73,#0c,#b0,#4a,#21,#02
	db #cf,#60,#30,#42,#33,#10,#04,#3f
	db #2e,#9a,#2e,#86,#2e,#88,#77,#55
	db #2e,#9d,#31,#00,#75,#f9,#21,#00
;
; #3182 - player reallocated by Megachur
;
	push ix		; call play music
	push iy
	call l31a2	; play
	pop iy
	pop ix
	ret
	push hl			; copy music data and init
	ld de,#20a7
	call l389a
	pop hl
	ld de,l7500		; music data
	push de
	call #2e02
	pop de
	jp l3840		; init music
.l31a1
	db #00
;
.play_music
.l31a2
;
	xor a
	ld (l31a1),a
.l31a7 equ $ + 1
	ld a,#77
	dec a
	jp nz,l3373
.l31ad equ $ + 1
	ld a,#01
	dec a
	jr nz,l3219
.l31b2 equ $ + 1
	ld hl,l7f90
	ld a,(hl)
	inc hl
	rra
	jr nc,l31c0
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l31c0
	rra
	jr nc,l31c8
	ld de,l3269
	ldi
.l31c8
	rra
	jr nc,l31d0
	ld de,l32ce
	ldi
.l31d0
	rra
	jr nc,l31d8
	ld de,l3333
	ldi
.l31d8
	ld de,l3248
	ldi
	ldi
	ld de,l32ad
	ldi
	ldi
	ld de,l3312
	ldi
	ldi
	rra
	jr nc,l31f5
	ld de,l3218
	ldi
.l31f5
	rra
	jr nc,l3200
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l3204),de
.l3200
	ld (l31b2),hl
.l3204 equ $ + 1
	ld hl,#0000
	ld (l3222),hl
	ld a,#01
	ld (l321d),a
	ld (l3243),a
	ld (l32a8),a
	ld (l330d),a
.l3218 equ $ + 1
	ld a,#01
.l3219
	ld (l31ad),a
.l321d equ $ + 1
	ld a,#01
	dec a
	jr nz,l323f
.l3222 equ $ + 1
	ld hl,#0002
	ld a,(hl)
	inc hl
	srl a
	jr nc,l323c
	srl a
	jr nz,l3230
	ld a,(hl)
	inc hl
.l3230
	jr nc,l3237
	ld (l31a1),a
	jr l323a
.l3237
	ld (l3372),a
.l323a
	ld a,#01
.l323c
	ld (l3222),hl
.l323f
	ld (l321d),a
.l3243 equ $ + 1
	ld a,#01
	dec a
	jr nz,l32a4
.l3248 equ $ + 1
	ld hl,#0002
	call l36ec
	ld (l3248),hl
	jr c,l32a4
	ld a,d
	rra
	jr nc,l325b
	and #0f
	ld (l33f5),a
.l325b
	rl d
	jr nc,l3263
	ld (l33e3),ix
.l3263
	rl d
	jr nc,l32a2
	ld a,e
.l3269 equ $ + 1
	add #00
	ld (l33f4),a
	ld hl,#0000
	ld (l33e0),hl
	rl d
	jr c,l3282
.l3278 equ $ + 1
	ld hl,#0000
	ld a,(l3405)
	ld (l33fd),a
	jr l329f
.l3282
	ld l,b
	add hl,hl
.l3285 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l3405),a
	ld (l33fd),a
	ld a,(hl)
	or a
	jr z,l329b
	ld (l350e),a
.l329b
	inc hl
	ld (l3278),hl
.l329f
	ld (l33f7),hl
.l32a2
	ld a,#01
.l32a4
	ld (l3243),a
.l32a8 equ $ + 1
	ld a,#01
	dec a
	jr nz,l3309
.l32ad equ $ + 1
	ld hl,#0002
	call l36ec
	ld (l32ad),hl
	jr c,l3309
	ld a,d
	rra
	jr nc,l32c0
	and #0f
	ld (l33c1),a
.l32c0
	rl d
	jr nc,l32c8
	ld (l33af),ix
.l32c8
	rl d
	jr nc,l3307
	ld a,e
.l32ce equ $ + 1
	add #00
	ld (l33c0),a
	ld hl,#0000
	ld (l33ac),hl
	rl d
	jr c,l32e7
.l32dd equ $ + 1
	ld hl,#0000
	ld a,(l33d1)
	ld (l33c9),a
	jr l3304
.l32e7
	ld l,b
	add hl,hl
.l32ea equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l33d1),a
	ld (l33c9),a
	ld a,(hl)
	or a
	jr z,l3300
	ld (l350e),a
.l3300
	inc hl
	ld (l32dd),hl
.l3304
	ld (l33c3),hl
.l3307
	ld a,#01
.l3309
	ld (l32a8),a
.l330d equ $ + 1
	ld a,#01
	dec a
	jr nz,l336e
.l3312 equ $ + 1
	ld hl,#0002
	call l36ec
	ld (l3312),hl
	jr c,l336e
	ld a,d
	rra
	jr nc,l3325
	and #0f
	ld (l3390),a
.l3325
	rl d
	jr nc,l332d
	ld (l337e),ix
.l332d
	rl d
	jr nc,l336c
	ld a,e
.l3333 equ $ + 1
	add #00
	ld (l338f),a
	ld hl,#0000
	ld (l337b),hl
	rl d
	jr c,l334c
.l3342 equ $ + 1
	ld hl,#0000
	ld a,(l33a0)
	ld (l3398),a
	jr l3369
.l334c
	ld l,b
	add hl,hl
.l334f equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l33a0),a
	ld (l3398),a
	ld a,(hl)
	or a
	jr z,l3365
	ld (l350e),a
.l3365
	inc hl
	ld (l3342),hl
.l3369
	ld (l3392),hl
.l336c
	ld a,#01
.l336e
	ld (l330d),a
.l3372 equ $ + 1
	ld a,#89
.l3373
	ld (l31a7),a
	ld iy,l3525
.l337b equ $ + 1
	ld hl,#0000
.l337e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l337b),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l3390 equ $ + 2
.l338f equ $ + 1
	ld de,#0089
.l3392 equ $ + 1
	ld hl,#c34b
	call l3530
.l3398 equ $ + 1
	ld a,#05
	dec a
	jr nz,l33a1
	ld (l3392),hl
.l33a0 equ $ + 1
	ld a,#06
.l33a1
	ld (l3398),a
	ld a,lx
	ex af,af'
	ld iy,l3523
.l33ac equ $ + 1
	ld hl,#0000
.l33af equ $ + 1
	ld de,#0000
	add hl,de
	ld (l33ac),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l33c1 equ $ + 2
.l33c0 equ $ + 1
	ld de,#0089
.l33c3 equ $ + 1
	ld hl,#c34b
	call l3530
.l33c9 equ $ + 1
	ld a,#05
	dec a
	jr nz,l33d2
	ld (l33c3),hl
.l33d1 equ $ + 1
	ld a,#06
.l33d2
	ld (l33c9),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l3521
.l33e0 equ $ + 1
	ld hl,#0000
.l33e3 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l33e0),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l33f5 equ $ + 2
.l33f4 equ $ + 1
	ld de,#0089
.l33f7 equ $ + 1
	ld hl,#c34b
	call l3530
.l33fd equ $ + 1
	ld a,#05
	dec a
	jr nz,l3406
	ld (l33f7),hl
.l3405 equ $ + 1
	ld a,#06
.l3406
	ld (l33fd),a
.l3409
	ld de,#0000
	exx
	ld de,#002d
.l3411 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l3434
	ld a,#01
	ld (l365f),a
	call l3530
	xor a
	ld (l365f),a
	ld a,l
	or h
	jr z,l342c
.l3428 equ $ + 1
	ld a,#01
	dec a
	jr nz,l3431
.l342c
	ld (l3411),hl
	ld a,#06
.l3431
	ld (l3428),a
.l3434
	ex af,af'
	or lx
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l3521
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	ld a,(hl)
.l350e equ $ + 1
	cp #09
	ret z
	ld (l350e),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l3521
	add b
	nop
.l3523
	add b
	nop
.l3525
	add b
	nop
.l3527
	ld a,a
	nop
	nop
	nop
	nop
	nop
.l352f equ $ + 2
.l352d
	ld bc,#0900
.l3530
	ld b,(hl)
	inc hl
	rr b
	jp c,l358e
	rr b
	jr c,l355e
	ld a,b
	and #0f
	jr nz,l3547
	ld (iy+#07),a
	ld lx,#09
	ret
.l3547
	ld lx,#08
	sub d
	jr nc,l354e
	xor a
.l354e
	ld (iy+#07),a
	rr b
	call l36c0
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l355e
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l356e
	ld (l3527),a
	ld lx,#00
.l356e
	ld a,b
	and #0f
	sub d
	jr nc,l3575
	xor a
.l3575
	ld (iy+#07),a
	bit 5,c
	jr nz,l357f
	inc lx
	ret
.l357f
	rr b
	bit 6,c
	call l36b2
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l358e
	rr b
	jr nc,l35a1
	ld a,(l33fd)
	ld c,a
	ld a,(l3405)
	cp c
	jr nz,l35a1
	ld a,#fe
	ld (l350e),a
.l35a1
	bit 1,b
	jp nz,l365a
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l352f),a
	bit 0,b
	jr z,l3610
	bit 2,b
	call l36b2
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l35d0),a
	ld a,b
	exx
.l35d0 equ $ + 1
	jr l35d1
.l35d1
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l35f0
	inc hl
.l35f0
	bit 5,a
	jr z,l3600
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l3600
	ld (l352d),hl
	exx
.l3604
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l3527),a
	ld lx,#00
	ret
.l3610
	bit 2,b
	call l36b2
	ld (l352d),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l3624),a
	ld a,b
	exx
.l3624 equ $ + 1
	jr l3625
.l3625
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,l3651
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l3651
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l3604
.l365a
	bit 0,b
	jr z,l366e
.l365f equ $ + 1
	ld a,#00
	or a
	jr z,l3667
	ld hl,#0000
	ret
.l3667
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l3530
.l366e
	ld (iy+#07),#10
	bit 5,b
	jr nz,l367b
	ld lx,#09
	jr l368e
.l367b
	ld lx,#08
	ld hx,e
	bit 2,b
	call l36b2
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l368e
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l352f),a
	rr b
	rr b
	bit 2,b
	call l36b2
	ld (l352d),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l3527),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l36b2
	jr z,l36c0
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.l36c0
	bit 4,b
	jr z,l36d0
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.l36d0
	ld a,e
	bit 3,b
	jr z,l36dd
	add (hl)
	inc hl
	cp #90
	jr c,l36dd
	ld a,#8f
.l36dd
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l3720
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l36ec
	ld a,(hl)
	inc hl
	srl a
	jr c,l3713
	sub #20
	jr c,l371d
	jr z,l370f
	dec a
	ld e,a
.l36fa
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l3708
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l3708
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l370f
	ld e,(hl)
	inc hl
	jr l36fa
.l3713
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l371d
	add #20
	ret
.l3720
	dw #0eee,#0e18,#0d4d,#0c8e
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
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l3840
;
	ld hl,#0009
	add hl,de
	ld de,l3372
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l3285),hl
	ld (l32ea),hl
	ld (l334f),hl
	add hl,bc
	ld de,l3218
	ldi
	ld de,l3269
	ldi
	ld de,l32ce
	ldi
	ld de,l3333
	ldi
	ld de,l3204
	ldi
	ldi
	ld (l31b2),hl
	ld a,#01
	ld (l31a7),a
	ld (l31ad),a
	ld a,#ff
	ld (l352f),a
	ld hl,(l3285)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l33f7),hl
	ld (l33c3),hl
	ld (l3392),hl
	ret
	ld de,#20a7
	jr l3840
.l389a
	ld hl,#000c
	add hl,de
	ld (l38b5),hl
	ld hl,#0000
	ld (l3411),hl
	ret
.l38b5
	dw 0
;
.init_music		; added by Megachur
;
	ld de,l7500
	jp real_init_music
;
.music_info
	db "La Guerra De Gamber - menu (2014)(ESP Soft)(John McKlain)",0
	db "StArkos",0

	read "music_end.asm"
