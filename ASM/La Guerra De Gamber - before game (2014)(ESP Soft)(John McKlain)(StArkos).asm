; Music of La Guerra De Gamber - before game (2014)(ESP Soft)(John McKlain)(StArkos)
; Ripped by Megachur the 22/07/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LAGUEDGB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #7500

	read "music_header.asm"

.l7500	; before game
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#05,#da,#00,#1a,#75,#23,#75
	db #46,#75,#82,#75,#ae,#75,#c1,#75
	db #ca,#75,#00,#00,#00,#00,#00,#00
	db #0d,#1c,#75,#01,#00,#70,#01,#b4
	db #01,#00,#b0,#02,#00,#ac,#01,#00
	db #28,#a0,#ff,#ff,#a0,#fe,#ff,#e4
	db #ff,#ff,#01,#28,#20,#9c,#01,#00
	db #98,#02,#00,#0d,#1c,#75,#01,#00
	db #34,#b4,#10,#00,#b0,#20,#00,#b0
	db #30,#00,#ac,#40,#00,#ac,#50,#00
	db #ac,#60,#00,#a8,#70,#00,#a8,#80
	db #00,#a8,#90,#00,#a4,#a0,#00,#a4
	db #b0,#00,#a4,#c0,#00,#a0,#d0,#00
	db #a0,#e0,#00,#a0,#f0,#00,#9c,#00
	db #ff,#98,#10,#01,#94,#20,#01,#0d
	db #1c,#75,#01,#00,#3c,#b8,#ff,#ff
	db #b4,#ff,#ff,#30,#30,#ac,#02,#00
	db #ac,#02,#00,#2c,#2c,#ac,#fe,#ff
	db #ac,#fe,#ff,#2c,#2c,#ac,#03,#00
	db #ac,#03,#00,#2c,#2c,#ac,#fd,#ff
	db #ac,#fd,#ff,#0d,#9b,#75,#01,#00
	db #7c,#18,#7c,#0c,#38,#74,#0c,#34
	db #70,#0c,#2c,#68,#0c,#24,#0d,#1c
	db #75,#01,#00,#6c,#0f,#60,#0f,#0d
	db #1c,#75,#01,#00,#3c,#7c,#fd,#78
	db #fa,#74,#f7,#70,#f4,#6c,#f0,#6c
	db #ed,#68,#ea,#64,#e7,#64,#e5,#60
	db #e3,#5c,#e2,#0d,#1c,#75,#20,#00
	db #00,#00,#31,#76,#00,#aa,#76,#63
	db #76,#32,#76,#00,#aa,#76,#63,#76
	db #32,#76,#0c,#fe,#fe,#aa,#76,#63
	db #76,#32,#76,#0c,#fd,#fd,#aa,#76
	db #63,#76,#32,#76,#0c,#00,#00,#aa
	db #76,#63,#76,#32,#76,#00,#aa,#76
	db #63,#76,#32,#76,#0c,#03,#03,#aa
	db #76,#63,#76,#32,#76,#0c,#00,#00
	db #aa,#76,#63,#76,#32,#76,#01,#ec
	db #75,#00,#78,#e3,#00,#00,#01,#51
	db #02,#39,#51,#02,#39,#51,#78,#60
	db #02,#42,#00,#90,#60,#01,#02,#39
	db #02,#51,#02,#39,#51,#02,#39,#51
	db #02,#39,#51,#42,#00,#39,#51,#02
	db #a8,#69,#03,#42,#80,#30,#00,#42
	db #00,#42,#00,#60,#e1,#00,#00,#04
	db #02,#a2,#65,#05,#a2,#43,#a2,#41
	db #02,#a2,#45,#a2,#43,#96,#61,#06
	db #02,#a2,#65,#05,#a2,#43,#a2,#41
	db #02,#a2,#45,#a2,#43,#60,#61,#04
	db #02,#a2,#65,#05,#60,#60,#04,#42
	db #00,#a2,#60,#05,#60,#60,#04,#a2
	db #63,#05,#96,#61,#06,#02,#a2,#65
	db #05,#a2,#43,#a2,#41,#02,#a2,#45
	db #a2,#43,#42,#83,#00,#00,#00
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
	db "La Guerra De Gamber - before game (2014)(ESP Soft)(John McKlain)",0
	db "StArkos",0

	read "music_end.asm"
