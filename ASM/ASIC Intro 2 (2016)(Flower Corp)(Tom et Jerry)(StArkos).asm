; Music of ASIC Intro 2 (2016)(Flower Corp)(Tom et Jerry)(StArkos)
; Ripped by Megachur the 05/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ASICINT2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

	jp l488d
	jp l400d
	jp l4868
.l400c equ $ + 3
.l400b equ $ + 2
	db #00,#40,#00,#00
;
.play_music
.l400d
;
	xor a
	ld (l400b),a
	ld (l4846),a
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
.l401e equ $ + 1
	ld a,#00
.l4020 equ $ + 1
	cp #00
	jr z,l402a
	inc a
	ld (l401e),a
	jp l42b9
.l402a
	xor a
	ld (l401e),a
.l402e
	or a
	jp nc,l4110
	ld (l4138),a
	ld (l41a3),a
	ld (l420e),a
	ld a,#b7
	ld (l402e),a
.l4041 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l4077
.l4047 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l4074
	ld b,a
	and #1f
	bit 4,a
	jr z,l4058
	or #e0
.l4058
	ld (l4145),a
	rl b
	rl b
	jr nc,l4066
	ld a,(hl)
	ld (l41b0),a
	inc hl
.l4066
	rl b
	jr nc,l406f
	ld a,(hl)
	ld (l421b),a
	inc hl
.l406f
	ld (l4047),hl
	jr l407a
.l4074
	ld (l4047),hl
.l4077
	ld (l4041),a
.l407b equ $ + 1
.l407a
	ld a,#00
	sub #01
	jr c,l4087
	ld (l407b),a
.l4084 equ $ + 1
	ld a,#00
	jr l40a2
.l4088 equ $ + 1
.l4087
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l4095
	ld (l4088),hl
	jr l40a2
.l4095
	ld (l4084),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l4088),hl
	ld (l407b),a
	ld a,b
.l40a2
	ld (l4279),a
.l40a6 equ $ + 1
	ld hl,#0000
	ld de,l413e
	ldi
	ldi
	ld de,l41a9
	ldi
	ldi
	ld de,l4214
	ldi
	ldi
	ld (l40a6),hl
.l40c1 equ $ + 1
	ld a,#00
	or a
	jr nz,l40d3
.l40c6 equ $ + 1
	ld a,#00
	sub #01
	jr c,l40e1
	ld (l40c6),a
.l40cf equ $ + 1
	ld hl,#0000
	jr l4119
.l40d4 equ $ + 1
.l40d3
	ld a,#00
	sub #01
	jr c,l40e1
	ld (l40d4),a
	ld hl,(l40e2)
	jr l4106
.l40e2 equ $ + 1
.l40e1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l40fe
	ld (l40c6),a
	xor a
	ld (l40c1),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l40e2),hl
	ex de,hl
	ld (l40cf),hl
	jr l4119
.l40fe
	ld (l40d4),a
	ld a,#01
	ld (l40c1),a
.l4106
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l40e2),hl
	ex de,hl
	jr l4119
.l4111 equ $ + 1
.l4110
	ld a,#00
	sub #01
	jr nc,l4134
.l4117 equ $ + 1
	ld hl,#0000
.l4119
	ld a,(hl)
	inc hl
	srl a
	jr c,l4131
	srl a
	jr c,l4128
	ld (l4020),a
	jr l4130
.l4128
	ld (l400b),a
.l412c equ $ + 1
	ld a,#01
	ld (l400c),a
.l4130
	xor a
.l4131
	ld (l4117),hl
.l4134
	ld (l4111),a
.l4138 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l419f
.l413e equ $ + 1
	ld hl,#0000
.l4141 equ $ + 1
	ld bc,#0100
.l4145 equ $ + 2
.l4144 equ $ + 1
	ld de,#0000
.l4148 equ $ + 2
	ld lx,#00
	call l43b8
	ld a,lx
	ld (l4148),a
	ld (l42c3),hl
	exx
	ld (l413e),hl
	ld a,c
	ld (l4141),a
	ld (l42bd),a
	xor a
	or hy
	jr nz,l419d
	ld (l42e0),a
	ld d,a
	ld a,e
	ld (l4144),a
	ld l,d
	ld h,l
	ld (l42c0),hl
.l4172 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l42f1
	ldi
	ldi
	ld de,l42e9
	ldi
	ldi
	ld de,l42e2
	ldi
	ld de,l42f3
	ldi
	ld a,(hl)
	inc hl
	ld (l42d2),hl
	ld hl,l4846
	or (hl)
	ld (hl),a
.l419d
	ld a,ly
.l419f
	ld (l4138),a
.l41a3 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l420a
.l41a9 equ $ + 1
	ld hl,#0000
.l41ac equ $ + 1
	ld bc,#0200
.l41b0 equ $ + 2
.l41af equ $ + 1
	ld de,#0000
.l41b3 equ $ + 2
	ld lx,#00
	call l43b8
	ld a,lx
	ld (l41b3),a
	ld (l4315),hl
	exx
	ld (l41a9),hl
	ld a,c
	ld (l41ac),a
	ld (l430f),a
	xor a
	or hy
	jr nz,l4208
	ld (l4332),a
	ld d,a
	ld a,e
	ld (l41af),a
	ld l,d
	ld h,l
	ld (l4312),hl
.l41dd equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l4343
	ldi
	ldi
	ld de,l433b
	ldi
	ldi
	ld de,l4334
	ldi
	ld de,l4345
	ldi
	ld a,(hl)
	inc hl
	ld (l4324),hl
	ld hl,l4846
	or (hl)
	ld (hl),a
.l4208
	ld a,ly
.l420a
	ld (l41a3),a
.l420e equ $ + 1
	ld a,#00
	sub #01
	jr nc,l4275
.l4214 equ $ + 1
	ld hl,#0000
.l4217 equ $ + 1
	ld bc,#0300
.l421b equ $ + 2
.l421a equ $ + 1
	ld de,#0000
.l421e equ $ + 2
	ld lx,#00
	call l43b8
	ld a,lx
	ld (l421e),a
	ld (l4367),hl
	exx
	ld (l4214),hl
	ld a,c
	ld (l4217),a
	ld (l4361),a
	xor a
	or hy
	jr nz,l4273
	ld (l4384),a
	ld d,a
	ld a,e
	ld (l421a),a
	ld l,d
	ld h,l
	ld (l4364),hl
.l4248 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l4395
	ldi
	ldi
	ld de,l438d
	ldi
	ldi
	ld de,l4386
	ldi
	ld de,l4397
	ldi
	ld a,(hl)
	inc hl
	ld (l4376),hl
	ld hl,l4846
	or (hl)
	ld (hl),a
.l4273
	ld a,ly
.l4275
	ld (l420e),a
.l4279 equ $ + 1
	ld a,#00
	sub #01
	jr c,l4283
	ld (l4279),a
	jr l42b9
.l4283
	ld a,#37
	ld (l402e),a
	ld hl,(l40a6)
.l428c equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l42b9
	ld (l4041),a
	ld (l407b),a
	ld (l4111),a
.l429d equ $ + 1
	ld hl,#0000
	ld (l4047),hl
.l42a3 equ $ + 1
	ld hl,#0000
	ld (l4088),hl
.l42a9 equ $ + 1
	ld hl,#0000
	ld (l40a6),hl
.l42af equ $ + 1
	ld hl,#0000
	ld (l40e2),hl
.l42b5 equ $ + 1
	ld a,#00
	ld (l40c1),a
.l42b9
	ld hl,l4846
.l42bd equ $ + 1
	ld d,#00
	exx
.l42c0 equ $ + 1
	ld hl,#0000
.l42c3 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l42c0),hl
	ld (l44f3),hl
	ld a,(l4148)
	ld lx,a
.l42d2 equ $ + 1
	ld hl,#0000
	ld iy,l46e1
	ld a,(l42e0)
	call l444d
	ex de,hl
.l42e0 equ $ + 1
	ld a,#00
.l42e2 equ $ + 1
	cp #00
	jr z,l42e8
	inc a
	jr l4305
.l42e9 equ $ + 1
.l42e8
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l4301
.l42f1 equ $ + 1
	ld de,#0000
.l42f3
	or a
	jr c,l4301
.l42f7 equ $ + 1
	ld hl,#0000
	ld (l42e9),hl
	dec a
	ld (l42e2),a
	inc a
.l4301
	ld (l42d2),de
.l4305
	ld (l42e0),a
	ld a,hx
	ld (l43b4),a
	exx
.l430f equ $ + 1
	ld d,#00
	exx
.l4312 equ $ + 1
	ld hl,#0000
.l4315 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4312),hl
	ld (l44f3),hl
	ld a,(l41b3)
	ld lx,a
.l4324 equ $ + 1
	ld hl,#0000
	ld iy,l4732
	ld a,(l4332)
	call l444d
	ex de,hl
.l4332 equ $ + 1
	ld a,#00
.l4334 equ $ + 1
	cp #00
	jr z,l433a
	inc a
	jr l4357
.l433b equ $ + 1
.l433a
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l4353
.l4343 equ $ + 1
	ld de,#0000
.l4345
	or a
	jr c,l4353
.l4349 equ $ + 1
	ld hl,#0000
	ld (l433b),hl
	dec a
	ld (l4334),a
	inc a
.l4353
	ld (l4324),de
.l4357
	ld (l4332),a
	ld a,hx
	ld (l43b1),a
	exx
.l4361 equ $ + 1
	ld d,#00
	exx
.l4364 equ $ + 1
	ld hl,#0000
.l4367 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4364),hl
	ld (l44f3),hl
	ld a,(l421e)
	ld lx,a
.l4376 equ $ + 1
	ld hl,#0000
	ld iy,l4783
	ld a,(l4384)
	call l444d
	ex de,hl
.l4384 equ $ + 1
	ld a,#00
.l4386 equ $ + 1
	cp #00
	jr z,l438c
	inc a
	jr l43a9
.l438d equ $ + 1
.l438c
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l43a5
.l4395 equ $ + 1
	ld de,#0000
.l4397
	or a
	jr c,l43a5
.l439b equ $ + 1
	ld hl,#0000
	ld (l438d),hl
	dec a
	ld (l4386),a
	inc a
.l43a5
	ld (l4376),de
.l43a9
	ld (l4384),a
	ld a,hx
	sla a
.l43b1 equ $ + 1
	or #00
	rla
.l43b4 equ $ + 1
	or #00
	jp l46d6
.l43b8
	ld a,(hl)
	inc hl
	srl a
	jr c,l43f1
	cp #60
	jr nc,l43f9
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l43d1
	and #0f
	ld c,a
.l43d1
	rl b
	jr nc,l43d7
	ld e,(hl)
	inc hl
.l43d7
	rl b
	jr nc,l43e9
.l43db
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l43e5
	dec h
.l43e5
	ld ly,#00
	ret
.l43e9
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l43f1
	ld hy,#00
	add d
	ld lx,a
	jr l43e9
.l43f9
	ld hy,#01
	sub #60
	jr z,l441a
	dec a
	jr z,l4431
	dec a
	jr z,l4423
	dec a
	jr z,l43db
	dec a
	jr z,l442d
	dec a
	jr z,l4442
	dec a
	jr z,l4439
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l441a
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l4423
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l442d
	ld c,(hl)
	inc hl
	jr l43db
.l4431
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l4439
	ld a,(hl)
	inc hl
	ld (l400b),a
	ld a,b
	ld (l400c),a
.l4442
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l444d
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l4503
	bit 4,e
	jr z,l44b5
	ld a,(hl)
	bit 6,a
	jr z,l4482
	ld d,#08
	inc hl
	and #1f
	jr z,l4469
	ld (l47d4),a
	res 3,d
.l4469
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l4472
	xor a
.l4472
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l4482
	ld (l47d4),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l449e
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l4497
	xor a
.l4497
	ld (iy+#36),a
	ld hx,d
	jr l44c8
.l449e
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l44a7
	xor a
.l44a7
	ld (iy+#36),a
.l44aa
	ld hx,d
	ret
.l44ad
	ld (iy+#36),#00
	ld d,#09
	jr l44aa
.l44b5
	ld d,#08
	ld a,e
	and #0f
	jr z,l44ad
	exx
	sub d
	exx
	jr nc,l44c2
	xor a
.l44c2
	ld (iy+#36),a
	ld hx,#08
.l44c8
	bit 5,e
	jr z,l44d0
	ld a,(hl)
	inc hl
	jr l44d1
.l44d0
	xor a
.l44d1
	bit 6,e
	jr z,l44db
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l44de
.l44db
	ld de,#0000
.l44de
	add lx
	cp #60
	jr c,l44e6
	ld a,#5f
.l44e6
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l4616
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l44f3 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l4503
	or a
	jr nz,l450d
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l450d
	ld a,e
	or #08
	and #09
	ld d,a
	ld (iy+#36),#10
	ld b,(hl)
	inc hl
	ld a,b
	and #03
	add a
	add #08
	ld (l483f),a
	bit 3,e
	jr z,l452f
	ld a,(hl)
	inc hl
	ld (l47d4),a
	res 3,d
	jr l452f
.l452f
	ld hx,d
	xor a
	bit 7,b
	jr z,l4541
	bit 6,b
	jr z,l453c
	ld a,(hl)
	inc hl
.l453c
	ld (l45f0),a
	ld a,#01
.l4541
	ld (l4589),a
	ld a,b
	rra
	and #0e
	ld (l459a),a
	bit 4,e
	jp nz,l45fb
	bit 1,e
	jr z,l4558
	ld a,(hl)
	inc hl
	jr l4559
.l4558
	xor a
.l4559
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l4566
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l4569
.l4566
	ld de,#0000
.l4569
	add lx
	cp #60
	jr c,l4571
	ld a,#5f
.l4571
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l4616
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l44f3)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l4589 equ $ + 1
	ld a,#00
	or a
	jr nz,l4599
	ex af,af'
	bit 5,a
	jr nz,l4604
.l4592
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l459a equ $ + 1
.l4599
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l45a4),a
	ld a,c
.l45a4 equ $ + 1
	jr l45a5
.l45a5
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	ld c,a
	jr nc,l45be
	inc bc
.l45be
	ld a,c
	ld (l4809),a
	ld a,b
	ld (l4824),a
	ld a,(l4589)
	or a
	jr z,l45f9
	ld a,(l459a)
	ld e,a
	srl a
	add e
	ld (l45d8),a
	ld a,b
.l45d8 equ $ + 1
	jr l45d9
.l45d9
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	ld b,a
.l45f0 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l45f9
	pop hl
	ret
.l45fb
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l4592
.l4604
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l4809),a
	inc hl
	ld a,(hl)
	ld (l4824),a
	inc hl
	ret
.l4616
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
.l46d6
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l46e1 equ $ + 1
	ld a,#00
.l46e3 equ $ + 1
	cp #00
	jr z,l46fb
	ld d,#00
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l46e3),a
	exx
.l46fc equ $ + 1
.l46fb
	ld a,#00
.l46fe equ $ + 1
	cp #00
	jr z,l4716
	ld d,#01
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l46fe),a
	exx
.l4717 equ $ + 1
.l4716
	ld a,#00
.l4719 equ $ + 1
	cp #00
	jr z,l4731
	ld d,#08
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4719),a
	exx
.l4732 equ $ + 1
.l4731
	ld a,#00
.l4734 equ $ + 1
	cp #00
	jr z,l474c
	ld d,#02
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4734),a
	exx
.l474d equ $ + 1
.l474c
	ld a,#00
.l474f equ $ + 1
	cp #00
	jr z,l4767
	ld d,#03
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l474f),a
	exx
.l4768 equ $ + 1
.l4767
	ld a,#00
.l476a equ $ + 1
	cp #00
	jr z,l4782
	ld d,#09
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l476a),a
	exx
.l4783 equ $ + 1
.l4782
	ld a,#00
.l4785 equ $ + 1
	cp #00
	jr z,l479d
	ld d,#04
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4785),a
	exx
.l479e equ $ + 1
.l479d
	ld a,#00
.l47a0 equ $ + 1
	cp #00
	jr z,l47b8
	ld d,#05
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l47a0),a
	exx
.l47b9 equ $ + 1
.l47b8
	ld a,#00
.l47bb equ $ + 1
	cp #00
	jr z,l47d3
	ld d,#0a
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l47bb),a
	exx
.l47d4 equ $ + 1
.l47d3
	ld a,#00
.l47d6 equ $ + 1
	cp #00
	jr z,l47ee
	ld d,#06
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l47d6),a
	exx
.l47ee
	ld a,h
.l47f0 equ $ + 1
	cp #c0
	jr z,l4808
	ld d,#07
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l47f0),a
	exx
.l4809 equ $ + 1
.l4808
	ld a,#00
.l480b equ $ + 1
	cp #00
	jr z,l4823
	ld d,#0b
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l480b),a
	exx
.l4824 equ $ + 1
.l4823
	ld a,#00
.l4826 equ $ + 1
	cp #00
	jr z,l483e
	ld d,#0c
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4826),a
	exx
.l483f equ $ + 1
.l483e
	ld a,#00
.l4841 equ $ + 1
	cp #ff
	jr nz,l484b
	ld h,a
.l4846 equ $ + 1
	ld a,#00
	or a
	jr z,l485f
	ld a,h
.l484b
	ld d,#0d
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4841),a
.l485f
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
;
.stop_music
.l4868
;
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l4717),a
	ld (l4768),a
	ld (l47b9),a
	dec a
	ld (l4719),a
	ld (l476a),a
	ld (l47bb),a
	ld (l47f0),a
	ld a,#3f
	jp l46d6
;
.real_init_music
.l488d
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l412c),a
	ld de,#0003
	add hl,de
	ld de,l4088
	ldi
	ldi
	ld de,l40a6
	ldi
	ldi
	ld de,l40e2
	ldi
	ldi
	ld de,l4172
	ldi
	ldi
	ld de,l429d
	ldi
	ldi
	ld de,l42a3
	ldi
	ldi
	ld de,l42a9
	ldi
	ldi
	ld de,l42af
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l4020),a
	ld (l401e),a
	ld (l4047),hl
	ld hl,(l40e2)
	ld (l428c),hl
	ld a,(hl)
	and #01
	ld (l40c1),a
	ld hl,(l42af)
	ld a,(hl)
	and #01
	ld (l42b5),a
	ld hl,(l4172)
	ld (l41dd),hl
	ld (l4248),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l42d2),hl
	ld (l4324),hl
	ld (l4376),hl
	ld (l42f1),hl
	ld (l4343),hl
	ld (l4395),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l42f7),de
	ld (l4349),de
	ld (l439b),de
	ld (l42e9),de
	ld (l433b),de
	ld (l438d),de
	ld a,#37
	ld (l402e),a
	ld hl,l4949
.l4939
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l4940
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l4940
	jr l4939
.l4949
	jr l494b
.l494b
	dw l46e1,l46fc,l4732,l474d
	dw l4783,l479e,l47d4,l4717
	dw l4768,l47b9,l4809,l4824
	dw l483f,l4041,l407b,l40c6
	dw l40d4,l4111,l42e0,l4332
	dw l4384,l4141,l41ac,l4217
	dw #ff11,l46e3,l46fe,l4734
	dw l474f,l4785,l47a0,l47d6
	dw l47f0,l4719,l476a,l47bb
	dw l480b,l4826,l4841,l42e2
	dw l4334,l4386,#b703,l42f3
	dw l4345,l4397
	db #00
.l49a8
	db #53,#4b,#31,#30,#a8,#49,#01,#32
	db #00,#57,#4a,#8e,#4a,#ce,#4c,#cd
	db #4d,#d4,#49,#5b,#4a,#c4,#4a,#c5
	db #4d,#04,#c0,#00,#00,#01,#80,#fc
	db #80,#fe,#80,#f9,#80,#fc,#80,#00
	db #40,#05,#40,#00,#c0,#00,#00,#03
	db #80,#fc,#01,#80,#fe,#01,#80,#00
	db #80,#fe,#c0,#fc,#f4,#80,#fb,#c0
	db #00,#00,#18,#00,#98,#fe,#0a,#80
	db #f9,#01,#80,#fb,#80,#fe,#d8,#00
	db #0c,#40,#00,#d8,#fe,#0c,#4a,#00
	db #c8,#fc,#0c,#40,#00,#c0,#fe,#0c
	db #40,#00,#c4,#00,#f4,#00,#40,#00
	db #01,#80,#fe,#01,#80,#fc,#01,#80
	db #fb,#01,#80,#00,#05,#80,#fe,#80
	db #fd,#80,#fc,#01,#80,#fb,#80,#fe
	db #80,#00,#01,#80,#fe,#80,#fd,#80
	db #fc,#80,#fe,#80,#05,#01,#80,#07
	db #01,#80,#00,#80,#03,#80,#fe,#80
	db #fc,#80,#00,#28,#0d,#00,#0b,#40
	db #fc,#40,#00,#40,#fc,#40,#fe,#01
	db #58,#00,#58,#0c,#58,#00,#00,#2f
	db #06,#3a,#2e,#2f,#0c,#0e,#2e,#0e
	db #2e,#0e,#2e,#0e,#2e,#0e,#2e,#0e
	db #2e,#0e,#2e,#0e,#2f,#02,#0e,#2e
	db #0e,#2e,#0e,#2e,#0e,#2e,#0e,#2e
	db #0e,#2e,#0e,#2e,#0e,#2e,#0e,#2e
	db #0e,#2e,#0e,#2e,#0e,#2e,#0e,#2e
	db #0e,#2f,#04,#3f,#16,#4e,#81,#4f
	db #9c,#4f,#a0,#4f,#81,#4f,#9c,#4f
	db #a0,#4f,#81,#4f,#9c,#4f,#a0,#4f
	db #81,#4f,#9c,#4f,#a0,#4f,#81,#4f
	db #9c,#4f,#a0,#4f,#b9,#4f,#9c,#4f
	db #d3,#4f,#d4,#4f,#9c,#4f,#ef,#4f
	db #08,#50,#15,#50,#15,#50,#4f,#50
	db #7f,#50,#a7,#50,#4f,#50,#7f,#50
	db #a7,#50,#4f,#50,#7f,#50,#a7,#50
	db #af,#50,#7f,#50,#df,#50,#4f,#50
	db #e7,#50,#13,#51,#af,#50,#e7,#50
	db #13,#51,#4f,#50,#e7,#50,#1b,#51
	db #4f,#50,#e7,#50,#1f,#51,#23,#51
	db #7f,#50,#53,#51,#23,#51,#7f,#50
	db #53,#51,#23,#51,#7f,#50,#53,#51
	db #23,#51,#7f,#50,#67,#51,#7b,#51
	db #7d,#51,#81,#4f,#7e,#51,#8c,#51
	db #81,#4f,#b0,#51,#8c,#51,#a0,#4f
	db #b4,#51,#8c,#51,#81,#4f,#b0,#51
	db #8c,#51,#a0,#4f,#c2,#51,#8c,#51
	db #81,#4f,#c6,#51,#8c,#51,#a0,#4f
	db #ce,#51,#8c,#51,#a0,#4f,#d2,#51
	db #8c,#51,#a0,#4f,#7e,#51,#8c,#51
	db #81,#4f,#b0,#51,#8c,#51,#81,#4f
	db #b4,#51,#8c,#51,#81,#4f,#b0,#51
	db #8c,#51,#81,#4f,#c2,#51,#8c,#51
	db #81,#4f,#c6,#51,#8c,#51,#81,#4f
	db #ce,#51,#8c,#51,#81,#4f,#d2,#51
	db #8c,#51,#81,#4f,#da,#51,#8c,#51
	db #81,#4f,#7d,#51,#8c,#51,#81,#4f
	db #de,#51,#8c,#51,#81,#4f,#ee,#51
	db #8c,#51,#81,#4f,#de,#51,#8c,#51
	db #a0,#4f,#ee,#51,#8c,#51,#a0,#4f
	db #f3,#51,#8c,#51,#a0,#4f,#01,#52
	db #8c,#51,#a0,#4f,#07,#52,#8c,#51
	db #a0,#4f,#17,#52,#8c,#51,#a0,#4f
	db #1c,#52,#7f,#50,#4f,#50,#2c,#52
	db #7f,#50,#4f,#50,#1c,#52,#7f,#50
	db #4f,#50,#2c,#52,#7f,#50,#4f,#50
	db #1c,#52,#7f,#50,#4f,#50,#2c,#52
	db #7f,#50,#4f,#50,#32,#52,#7f,#50
	db #4f,#50,#42,#52,#7f,#50,#4f,#50
	db #4b,#52,#7f,#50,#4f,#50,#7d,#51
	db #7f,#50,#4f,#50,#1c,#52,#7f,#50
	db #af,#50,#2c,#52,#7f,#50,#af,#50
	db #5b,#52,#7f,#50,#af,#50,#6b,#52
	db #7f,#50,#af,#50,#1c,#52,#7f,#50
	db #4f,#50,#2c,#52,#7f,#50,#4f,#50
	db #71,#52,#7f,#50,#af,#50,#81,#52
	db #7f,#50,#af,#50,#86,#52,#96,#52
	db #4f,#50,#bf,#52,#96,#52,#4f,#50
	db #c5,#52,#7f,#50,#af,#50,#c5,#52
	db #7f,#50,#af,#50,#c5,#52,#7f,#50
	db #af,#50,#c9,#52,#7f,#50,#a0,#4f
	db #7d,#51,#8c,#51,#a0,#4f,#ee,#52
	db #10,#53,#41,#53,#49,#53,#6b,#53
	db #8d,#53,#97,#53,#b9,#53,#ea,#53
	db #49,#53,#10,#53,#f5,#53,#00,#54
	db #10,#53,#30,#54,#38,#54,#6b,#53
	db #6a,#54,#72,#54,#b9,#53,#a4,#54
	db #38,#54,#6b,#53,#b1,#54,#b7,#54
	db #d9,#54,#da,#54,#b7,#54,#f0,#54
	db #f1,#54,#b7,#54,#f5,#54,#17,#55
	db #b7,#54,#f0,#54,#4b,#55,#7f,#55
	db #a1,#55,#17,#55,#7f,#55,#a5,#55
	db #4b,#55,#b7,#54,#ad,#55,#17,#55
	db #b7,#54,#a1,#55,#4b,#55,#b7,#54
	db #7d,#51,#96,#52,#7f,#55,#a5,#55
	db #4b,#55,#b7,#54,#b1,#55,#17,#55
	db #b7,#54,#a5,#55,#4b,#55,#b7,#54
	db #ad,#55,#17,#55,#b7,#54,#a1,#55
	db #17,#55,#b7,#54,#c9,#52,#c9,#52
	db #c9,#52,#c9,#52,#c9,#52,#0a,#b9
	db #55,#03,#bb,#55,#c5,#55,#aa,#b9
	db #55,#13,#c7,#55,#b9,#55,#00,#00
	db #00,#00,#b9,#55,#00,#00,#00,#00
	db #00,#00,#b9,#55,#00,#00,#02,#b9
	db #55,#0f,#00,#00,#00,#00,#b9,#55
	db #00,#00,#b9,#55,#c5,#55,#b9,#55
	db #00,#00,#02,#b9,#55,#01,#00,#00
	db #0c,#b9,#55,#01,#00,#00,#02,#b9
	db #55,#01,#00,#00,#02,#b9,#55,#01
	db #00,#00,#02,#b9,#55,#01,#00,#00
	db #02,#b9,#55,#01,#00,#00,#02,#b9
	db #55,#01,#00,#00,#1a,#b9,#55,#01
	db #00,#00,#02,#b9,#55,#01,#00,#00
	db #02,#b9,#55,#01,#00,#00,#02,#b9
	db #55,#01,#00,#00,#02,#b9,#55,#01
	db #00,#00,#02,#b9,#55,#01,#00,#00
	db #0e,#b9,#55,#01,#00,#00,#02,#b9
	db #55,#01,#00,#00,#02,#b9,#55,#01
	db #00,#00,#02,#b9,#55,#01,#00,#00
	db #02,#b9,#55,#01,#00,#00,#02,#b9
	db #55,#01,#00,#00,#02,#b9,#55,#01
	db #00,#00,#02,#b9,#55,#01,#00,#00
	db #08,#b9,#55,#01,#c7,#55,#02,#b9
	db #55,#01,#00,#00,#02,#b9,#55,#01
	db #00,#00,#06,#b9,#55,#01,#00,#00
	db #02,#b9,#55,#01,#00,#00,#02,#b9
	db #55,#01,#00,#00,#02,#b9,#55,#01
	db #00,#00,#02,#b9,#55,#01,#00,#00
	db #02,#b9,#55,#01,#00,#00,#02,#b9
	db #55,#01,#00,#00,#02,#b9,#55,#01
	db #00,#00,#14,#b9,#55,#a8,#b9,#55
	db #03,#c7,#55,#b9,#55,#f7,#4d,#01
	db #4e,#12,#4e,#1b,#4e,#2c,#4e,#3b
	db #4e,#58,#4e,#74,#4e,#91,#4e,#ad
	db #4e,#c9,#4e,#dc,#4e,#fa,#4e,#10
	db #4f,#1e,#4f,#2c,#4f,#3a,#4f,#49
	db #4f,#57,#4f,#65,#4f,#73,#4f,#fe
	db #4d,#01,#4e,#ff,#37,#00,#00,#00
	db #00,#11,#4e,#12,#4e,#00,#37,#00
	db #2e,#0c,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#19,#4e,#1b,#4e,#00,#37
	db #00,#80,#14,#fe,#4d,#2c,#4e,#00
	db #b7,#00,#1f,#2c,#5e,#2c,#10,#00
	db #18,#21,#18,#21,#39,#4e,#3b,#4e
	db #00,#37,#00,#1f,#2c,#5e,#2c,#10
	db #00,#80,#14,#50,#4e,#58,#4e,#01
	db #37,#00,#0c,#2e,#04,#2f,#09,#2d
	db #0c,#0c,#2b,#04,#2a,#09,#29,#0c
	db #08,#06,#26,#04,#26,#09,#26,#0c
	db #6d,#4e,#74,#4e,#01,#37,#00,#0c
	db #2e,#05,#2f,#08,#2d,#0c,#0c,#2b
	db #05,#2a,#08,#29,#0c,#08,#26,#05
	db #26,#08,#26,#0c,#89,#4e,#91,#4e
	db #01,#37,#00,#0c,#2e,#03,#2f,#07
	db #2d,#0c,#0c,#2b,#03,#2a,#07,#29
	db #0c,#08,#06,#26,#03,#26,#07,#26
	db #0c,#a6,#4e,#ad,#4e,#01,#37,#00
	db #0c,#2e,#03,#2f,#08,#2d,#0c,#0c
	db #2b,#03,#2a,#08,#29,#0c,#08,#26
	db #03,#26,#08,#26,#0c,#c2,#4e,#c9
	db #4e,#01,#37,#00,#0c,#2e,#05,#2f
	db #09,#2d,#0c,#0c,#2b,#05,#2a,#09
	db #29,#0c,#08,#26,#05,#26,#09,#26
	db #0c,#d7,#4e,#dc,#4e,#00,#37,#00
	db #2e,#0c,#0d,#0c,#0b,#0a,#09,#28
	db #0c,#07,#26,#0c,#f6,#4e,#fa,#4e
	db #00,#37,#00,#4e,#ff,#ff,#0d,#4c
	db #ff,#ff,#0b,#4a,#ff,#ff,#29,#f4
	db #68,#f4,#ff,#ff,#27,#f4,#66,#f4
	db #ff,#ff,#0d,#4f,#10,#4f,#01,#37
	db #00,#4e,#ff,#ff,#2d,#0c,#0c,#2b
	db #0c,#0a,#29,#0c,#08,#27,#0c,#06
	db #18,#4f,#1e,#4f,#00,#37,#00,#0f
	db #2f,#02,#2f,#0a,#2f,#0c,#26,#4f
	db #2c,#4f,#00,#37,#00,#0f,#2f,#04
	db #2f,#07,#2f,#0c,#34,#4f,#3a,#4f
	db #00,#37,#00,#0f,#2f,#04,#2f,#0c
	db #2f,#10,#fe,#4d,#49,#4f,#00,#b7
	db #00,#1f,#2c,#5e,#2c,#10,#00,#08
	db #08,#51,#4f,#57,#4f,#00,#37,#00
	db #0f,#2f,#03,#2f,#07,#2f,#0c,#5f
	db #4f,#65,#4f,#00,#37,#00,#0f,#2f
	db #03,#2f,#07,#2f,#0a,#6d,#4f,#73
	db #4f,#00,#37,#00,#0f,#2f,#03,#2f
	db #07,#2f,#09,#7b,#4f,#81,#4f,#00
	db #37,#00,#0f,#2f,#04,#2f,#09,#2f
	db #0b,#60,#85,#01,#ce,#6f,#ce,#87
	db #ce,#83,#ce,#7f,#ce,#79,#ce,#61
	db #ce,#6f,#ce,#83,#ce,#7f,#ce,#7d
	db #ce,#79,#c4,#01,#48,#81,#01,#c2
	db #d0,#60,#8b,#01,#ce,#6f,#ce,#87
	db #ce,#83,#ce,#7f,#ce,#79,#ce,#61
	db #ce,#6f,#ce,#83,#ce,#7f,#ce,#7d
	db #c2,#60,#80,#01,#ce,#6f,#ce,#7f
	db #ce,#7d,#ce,#79,#ce,#6f,#ce,#61
	db #ce,#6f,#ce,#7f,#ce,#7d,#ce,#79
	db #ce,#6b,#c2,#c2,#60,#85,#01,#ce
	db #6f,#ce,#87,#ce,#83,#ce,#7f,#ce
	db #79,#ce,#61,#ce,#6f,#ce,#83,#ce
	db #7f,#ce,#7d,#ce,#75,#c4,#01,#d0
	db #60,#8f,#01,#ce,#6f,#ce,#87,#ce
	db #83,#ce,#7f,#ce,#79,#ce,#61,#ce
	db #6f,#ce,#83,#ce,#7f,#ce,#7d,#c2
	db #78,#85,#01,#d2,#c4,#03,#d2,#c4
	db #04,#d2,#c4,#05,#c2,#3e,#9b,#02
	db #d2,#c6,#fe,#c8,#01,#fe,#c6,#fe
	db #c6,#fe,#c6,#fc,#c8,#00,#fc,#c6
	db #fc,#c6,#fc,#c6,#fc,#c6,#fc,#c6
	db #fc,#c6,#fc,#c6,#fc,#c6,#fc,#c6
	db #fc,#c6,#fa,#c6,#fa,#c6,#f8,#c6
	db #f8,#c6,#f6,#c6,#f6,#c6,#f4,#c6
	db #f4,#c6,#f2,#c6,#f2,#c6,#f1,#60
	db #81,#01,#ce,#6e,#01,#60,#07,#86
	db #01,#6e,#07,#82,#01,#86,#07,#7e
	db #01,#82,#07,#78,#01,#7e,#07,#60
	db #01,#78,#07,#6e,#01,#60,#07,#82
	db #01,#6e,#07,#7e,#01,#82,#07,#7c
	db #01,#7e,#07,#78,#01,#7c,#07,#48
	db #81,#02,#ce,#61,#ce,#48,#80,#03
	db #ce,#48,#80,#02,#ce,#61,#ce,#49
	db #ce,#60,#80,#04,#ce,#48,#80,#02
	db #ce,#48,#80,#03,#ce,#60,#80,#02
	db #ce,#48,#80,#03,#ce,#49,#49,#7e
	db #81,#05,#ea,#86,#80,#06,#c2,#60
	db #81,#01,#ce,#6e,#01,#60,#07,#86
	db #01,#6e,#07,#82,#01,#86,#07,#7e
	db #01,#82,#07,#78,#01,#7e,#07,#8c
	db #01,#78,#07,#86,#01,#8c,#07,#82
	db #01,#86,#07,#7e,#01,#82,#07,#7c
	db #01,#7e,#07,#7e,#01,#7c,#07,#7e
	db #80,#05,#e2,#78,#80,#07,#c2,#48
	db #80,#02,#ce,#61,#ce,#48,#80,#03
	db #ce,#48,#80,#02,#ce,#60,#80,#04
	db #ce,#48,#80,#02,#ce,#60,#80,#04
	db #ce,#48,#80,#02,#ce,#49,#ce,#60
	db #80,#03,#ce,#48,#80,#02,#ce,#60
	db #80,#03,#c2,#78,#80,#07,#ea,#7e
	db #80,#05,#c2,#7c,#80,#08,#c2,#82
	db #80,#09,#c2,#66,#81,#01,#ce,#6e
	db #01,#66,#07,#7e,#01,#6e,#07,#7c
	db #01,#7e,#07,#78,#01,#7c,#07,#6e
	db #01,#78,#07,#66,#01,#6e,#07,#6e
	db #01,#66,#07,#78,#01,#6e,#07,#74
	db #01,#78,#07,#6a,#01,#74,#07,#64
	db #01,#6a,#07,#9e,#80,#06,#ea,#c6
	db #02,#c6,#02,#c6,#02,#c6,#02,#c6
	db #02,#c6,#02,#c6,#02,#c6,#02,#9e
	db #80,#06,#ea,#c6,#fe,#c6,#fe,#c6
	db #fe,#c6,#fe,#c6,#fe,#c6,#fe,#c6
	db #fe,#c6,#fe,#ca,#c2,#c2,#60,#81
	db #0a,#ce,#67,#ce,#6f,#ce,#7f,#d6
	db #7d,#d2,#75,#c2,#48,#80,#0b,#ce
	db #61,#ce,#48,#80,#03,#ce,#48,#80
	db #0b,#ce,#61,#ce,#49,#ce,#61,#ce
	db #49,#ce,#48,#80,#03,#ce,#60,#80
	db #0b,#ce,#48,#80,#03,#ce,#49,#49
	db #82,#80,#0a,#c2,#60,#80,#0a,#ce
	db #6f,#ce,#79,#ce,#7f,#d6,#83,#d2
	db #7d,#c2,#96,#80,#0a,#c2,#9a,#80
	db #0a,#ce,#97,#ce,#95,#c2,#94,#80
	db #0a,#c2,#96,#80,#0a,#ce,#95,#ce
	db #91,#c2,#8c,#80,#0c,#c2,#60,#80
	db #0c,#d2,#67,#d2,#6f,#d2,#79,#ce
	db #75,#d2,#6f,#d2,#67,#c2,#d0,#6e
	db #80,#0c,#c2,#6a,#80,#0c,#d2,#6f
	db #d2,#71,#d2,#75,#ce,#79,#d2,#7d
	db #c2,#7e,#80,#0c,#ce,#83,#c2,#86
	db #80,#0c,#d2,#83,#d2,#7f,#d2,#7d
	db #ce,#8d,#d2,#87,#d2,#83,#c2,#d0
	db #86,#80,#0c,#c2,#60,#80,#0c,#d2
	db #67,#d2,#6f,#d2,#79,#ce,#75,#d2
	db #6f,#d2,#6f,#c2,#66,#80,#0c,#ce
	db #6f,#c2,#74,#80,#0c,#d2,#6f,#d2
	db #6b,#d2,#67,#d2,#6b,#ce,#6f,#d2
	db #79,#c2,#d0,#7c,#80,#0c,#ce,#79
	db #ce,#75,#c2,#74,#80,#0c,#d2,#6f
	db #d2,#6b,#d2,#67,#d2,#6b,#ce,#6f
	db #d2,#61,#c2,#60,#80,#0c,#d2,#67
	db #d2,#6f,#d2,#61,#ce,#67,#d2,#6f
	db #d2,#67,#c2,#6e,#80,#0c,#d2,#79
	db #c2,#6a,#80,#0c,#d2,#6f,#d2,#71
	db #d2,#75,#ce,#79,#d2,#7d,#d2,#7f
	db #c2,#d0,#82,#80,#0c,#c2,#86,#80
	db #0c,#d2,#83,#d2,#7f,#d2,#7d,#ce
	db #79,#d2,#79,#ce,#75,#c2,#48,#80
	db #02,#79,#61,#79,#48,#80,#03,#ce
	db #48,#80,#02,#ce,#61,#ce,#49,#ce
	db #60,#80,#04,#ce,#48,#80,#02,#ce
	db #48,#80,#03,#ce,#60,#80,#02,#ce
	db #48,#80,#03,#ce,#49,#49,#c2,#6e
	db #80,#0c,#d2,#75,#c2,#78,#80,#0c
	db #c2,#dc,#c4,#03,#ce,#c4,#04,#ce
	db #c4,#05,#ce,#c4,#06,#ce,#c4,#07
	db #ce,#c4,#08,#ce,#c4,#09,#ce,#c4
	db #0a,#ce,#c4,#0b,#ce,#c4,#0c,#ce
	db #c4,#0d,#ce,#c4,#0e,#c2,#60,#81
	db #01,#ce,#6f,#ce,#79,#ce,#61,#ce
	db #6f,#ce,#7d,#ce,#61,#ce,#7f,#ce
	db #61,#ce,#6f,#ce,#79,#ce,#61,#ce
	db #6f,#ce,#7d,#ce,#61,#ce,#7f,#c2
	db #78,#9d,#0d,#ce,#c4,#0d,#ce,#c4
	db #0c,#ce,#c4,#0b,#ce,#c4,#0a,#ce
	db #c4,#09,#ce,#c4,#08,#ce,#c4,#07
	db #ce,#c4,#06,#ce,#c4,#05,#ce,#c4
	db #04,#ce,#c4,#03,#ce,#c4,#04,#ce
	db #c4,#05,#ce,#c4,#06,#ce,#c4,#07
	db #c2,#96,#81,#0a,#fa,#95,#d2,#97
	db #c2,#5c,#80,#01,#ce,#6b,#ce,#75
	db #ce,#5d,#ce,#6b,#ce,#79,#ce,#5d
	db #ce,#7d,#ce,#5d,#ce,#6b,#ce,#75
	db #ce,#5d,#ce,#6b,#ce,#79,#ce,#6b
	db #ce,#7d,#c2,#74,#9d,#0e,#ce,#c4
	db #0d,#ce,#c4,#0c,#ce,#c4,#0b,#ce
	db #c4,#0a,#ce,#c4,#09,#ce,#c4,#08
	db #ce,#c4,#07,#ce,#c4,#06,#ce,#c4
	db #05,#ce,#c4,#03,#c2,#94,#80,#0a
	db #d6,#8d,#d6,#83,#ea,#87,#c2,#58
	db #80,#01,#ce,#67,#ce,#71,#ce,#59
	db #ce,#67,#ce,#7f,#ce,#59,#ce,#7d
	db #ce,#59,#ce,#67,#ce,#71,#ce,#59
	db #ce,#67,#ce,#7f,#ce,#59,#ce,#7d
	db #c2,#70,#9d,#0f,#ce,#c4,#0d,#ce
	db #c4,#0c,#ce,#c4,#0b,#ce,#c4,#0a
	db #ce,#c4,#09,#ce,#c4,#08,#ce,#c4
	db #07,#ce,#c4,#06,#ce,#c4,#05,#ce
	db #c4,#04,#ce,#c4,#03,#ce,#c4,#04
	db #ce,#c4,#05,#ce,#c4,#06,#ce,#c4
	db #07,#c2,#88,#80,#0a,#e2,#95,#97
	db #dc,#95,#d6,#8d,#c2,#90,#80,#0a
	db #d6,#95,#d6,#97,#d0,#99,#9b,#c2
	db #60,#80,#01,#ce,#6f,#ce,#78,#80
	db #10,#ce,#60,#80,#01,#ce,#6f,#ce
	db #7d,#ce,#78,#80,#10,#ce,#7e,#80
	db #01,#ce,#61,#ce,#6f,#ce,#78,#80
	db #10,#ce,#60,#80,#01,#ce,#6f,#ce
	db #7d,#ce,#60,#80,#10,#ce,#7f,#c2
	db #9e,#81,#0a,#f6,#9b,#d6,#97,#c2
	db #5c,#80,#01,#ce,#6b,#ce,#74,#80
	db #03,#ce,#5c,#80,#01,#ce,#6b,#ce
	db #79,#ce,#5c,#80,#03,#ce,#7c,#80
	db #01,#ce,#5d,#ce,#6b,#ce,#74,#80
	db #03,#ce,#5c,#80,#01,#ce,#6b,#ce
	db #79,#ce,#6a,#80,#03,#ce,#7c,#80
	db #01,#c2,#94,#80,#0a,#d6,#8d,#d6
	db #83,#c2,#58,#80,#01,#ce,#67,#ce
	db #70,#80,#03,#ce,#58,#80,#01,#ce
	db #67,#ce,#7f,#ce,#58,#80,#03,#ce
	db #7c,#80,#01,#ce,#59,#ce,#67,#ce
	db #70,#80,#03,#ce,#58,#80,#01,#ce
	db #67,#ce,#7f,#ce,#58,#80,#03,#ce
	db #7c,#80,#01,#c2,#86,#80,#0a,#89
	db #e0,#8d,#d6,#91,#d6,#94,#80,#0c
	db #c2,#96,#80,#0a,#ea,#95,#c2,#60
	db #80,#01,#ce,#6f,#61,#79,#6f,#61
	db #79,#6f,#61,#7d,#6f,#61,#7d,#7f
	db #61,#61,#7f,#6f,#61,#79,#6f,#61
	db #79,#6f,#61,#7d,#6f,#61,#7d,#7f
	db #61,#c2,#9e,#80,#0a,#f8,#c6,#01
	db #c6,#02,#c6,#03,#c6,#04,#c6,#05
	db #c6,#06,#c6,#07,#c6,#08,#c6,#09
	db #c2,#48,#80,#02,#c2,#74,#9d,#0e
	db #ce,#c4,#0d,#ce,#c4,#0c,#ce,#c4
	db #0b,#ce,#c4,#0a,#ce,#c4,#09,#ce
	db #c4,#08,#ce,#c4,#07,#ce,#c4,#06
	db #ce,#c4,#05,#ce,#c4,#03,#c2,#48
	db #9f,#02,#ce,#61,#ce,#48,#80,#03
	db #ce,#48,#80,#02,#ce,#61,#ce,#49
	db #ce,#60,#80,#04,#ce,#48,#80,#02
	db #ce,#49,#ce,#61,#ce,#48,#80,#03
	db #ce,#48,#80,#02,#ce,#48,#80,#03
	db #ce,#60,#80,#02,#ce,#48,#80,#03
	db #61,#49,#c2,#48,#81,#02,#ce,#61
	db #ce,#48,#80,#03,#ce,#48,#80,#02
	db #ce,#61,#ce,#49,#ce,#60,#80,#04
	db #ce,#48,#80,#02,#ce,#49,#ce,#61
	db #ce,#48,#80,#03,#ce,#48,#80,#02
	db #ce,#48,#80,#03,#ce,#60,#80,#02
	db #ce,#48,#80,#03,#61,#49,#c2,#6a
	db #80,#01,#ce,#71,#6b,#79,#71,#6b
	db #79,#71,#6b,#7d,#71,#6b,#7d,#7f
	db #6b,#6b,#7f,#71,#6b,#79,#71,#6b
	db #79,#71,#6b,#7d,#71,#6b,#7d,#7f
	db #6b,#60,#87,#11,#c2,#6a,#80,#12
	db #ea,#6a,#80,#13,#c2,#66,#80,#14
	db #c2,#6a,#80,#12,#ea,#6a,#80,#11
	db #c2,#10,#ff,#14,#0d,#18,#0d,#1c
	db #01,#20,#01,#24,#ff,#0c,#ff,#10
	db #0d,#14,#05,#18,#01,#1c,#01,#20
	db #01,#24,#01,#28,#01,#2c,#01,#30
	db #01,#34,#01,#38,#01,#3c,#ff,#00
;
; #8010
; ld de,#49a8
; call #4000
;
.init_music		; added by Megachur
;
	ld de,l49a8
	jp real_init_music
;
.music_info
	db "ASIC Intro 2 (2016)(Flower Corp)(Tom et Jerry)",0
	db "StArkos",0

	read "music_end.asm"
