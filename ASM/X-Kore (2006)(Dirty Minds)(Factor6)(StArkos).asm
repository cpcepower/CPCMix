; Music of X-Kore (2006)(Dirty Minds)(Factor6)(StArkos)
; Ripped by Megachur the 28/12/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "XKORE.BIN"
	ENDIF

music_date_rip_day		equ 28
music_date_rip_month	equ 12
music_date_rip_year		equ 2014
music_adr				equ &4000

	read "music_header.asm"

	jp l4870
	jp l400d
	jp l4854
.l400c equ $ + 3
.l400b equ $ + 2
	db #00,#40,#00,#00
;
.play_music
.l400d
;
	xor a
	ld (l400b),a
	ld (l483b),a
.l4015 equ $ + 1
	ld a,#05
.l4017 equ $ + 1
	cp #05
	jr z,l4021
	inc a
	ld (l4015),a
	jp l42b0
.l4021
	xor a
	ld (l4015),a
.l4025
	scf
	jp nc,l4107
	ld (l412f),a
	ld (l419a),a
	ld (l4205),a
	ld a,#b7
	ld (l4025),a
.l4038 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l406e
.l403e equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l406b
	ld b,a
	and #1f
	bit 4,a
	jr z,l404f
	or #e0
.l404f
	ld (l413c),a
	rl b
	rl b
	jr nc,l405d
	ld a,(hl)
	ld (l41a7),a
	inc hl
.l405d
	rl b
	jr nc,l4066
	ld a,(hl)
	ld (l4212),a
	inc hl
.l4066
	ld (l403e),hl
	jr l4071
.l406b
	ld (l403e),hl
.l406e
	ld (l4038),a
.l4072 equ $ + 1
.l4071
	ld a,#00
	sub #01
	jr c,l407e
	ld (l4072),a
.l407b equ $ + 1
	ld a,#00
	jr l4099
.l407f equ $ + 1
.l407e
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l408c
	ld (l407f),hl
	jr l4099
.l408c
	ld (l407b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l407f),hl
	ld (l4072),a
	ld a,b
.l4099
	ld (l4270),a
.l409d equ $ + 1
	ld hl,#0000
	ld de,l4135
	ldi
	ldi
	ld de,l41a0
	ldi
	ldi
	ld de,l420b
	ldi
	ldi
	ld (l409d),hl
.l40b8 equ $ + 1
	ld a,#00
	or a
	jr nz,l40ca
.l40bd equ $ + 1
	ld a,#00
	sub #01
	jr c,l40d8
	ld (l40bd),a
.l40c6 equ $ + 1
	ld hl,#0000
	jr l4110
.l40cb equ $ + 1
.l40ca
	ld a,#00
	sub #01
	jr c,l40d8
	ld (l40cb),a
	ld hl,(l40d9)
	jr l40fd
.l40d9 equ $ + 1
.l40d8
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l40f5
	ld (l40bd),a
	xor a
	ld (l40b8),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l40d9),hl
	ex de,hl
	ld (l40c6),hl
	jr l4110
.l40f5
	ld (l40cb),a
	ld a,#01
	ld (l40b8),a
.l40fd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l40d9),hl
	ex de,hl
	jr l4110
.l4108 equ $ + 1
.l4107
	ld a,#00
	sub #01
	jr nc,l412b
.l410e equ $ + 1
	ld hl,#0000
.l4110
	ld a,(hl)
	inc hl
	srl a
	jr c,l4128
	srl a
	jr c,l411f
	ld (l4017),a
	jr l4127
.l411f
	ld (l400b),a
.l4123 equ $ + 1
	ld a,#01
	ld (l400c),a
.l4127
	xor a
.l4128
	ld (l410e),hl
.l412b
	ld (l4108),a
.l412f equ $ + 1
	ld a,#00
	sub #01
	jr nc,l4196
.l4135 equ $ + 1
	ld hl,#0000
.l4138 equ $ + 1
	ld bc,#0100
.l413c equ $ + 2
.l413b equ $ + 1
	ld de,#0000
.l413f equ $ + 2
	ld lx,#00
	call l43ad
	ld a,lx
	ld (l413f),a
	ld (l42ba),hl
	exx
	ld (l4135),hl
	ld a,c
	ld (l4138),a
	ld (l42b4),a
	xor a
	or hy
	jr nz,l4194
	ld (l42d7),a
	ld d,a
	ld a,e
	ld (l413b),a
	ld l,d
	ld h,l
	ld (l42b7),hl
.l4169 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l42e8
	ldi
	ldi
	ld de,l42e0
	ldi
	ldi
	ld de,l42d9
	ldi
	ld de,l42ea
	ldi
	ld a,(hl)
	inc hl
	ld (l42c9),hl
	ld hl,l483b
	or (hl)
	ld (hl),a
.l4194
	ld a,ly
.l4196
	ld (l412f),a
.l419a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l4201
.l41a0 equ $ + 1
	ld hl,#0000
.l41a3 equ $ + 1
	ld bc,#0200
.l41a7 equ $ + 2
.l41a6 equ $ + 1
	ld de,#0000
.l41aa equ $ + 2
	ld lx,#00
	call l43ad
	ld a,lx
	ld (l41aa),a
	ld (l430b),hl
	exx
	ld (l41a0),hl
	ld a,c
	ld (l41a3),a
	ld (l4305),a
	xor a
	or hy
	jr nz,l41ff
	ld (l4328),a
	ld d,a
	ld a,e
	ld (l41a6),a
	ld l,d
	ld h,l
	ld (l4308),hl
.l41d4 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l4339
	ldi
	ldi
	ld de,l4331
	ldi
	ldi
	ld de,l432a
	ldi
	ld de,l433b
	ldi
	ld a,(hl)
	inc hl
	ld (l431a),hl
	ld hl,l483b
	or (hl)
	ld (hl),a
.l41ff
	ld a,ly
.l4201
	ld (l419a),a
.l4205 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l426c
.l420b equ $ + 1
	ld hl,#0000
.l420e equ $ + 1
	ld bc,#0300
.l4212 equ $ + 2
.l4211 equ $ + 1
	ld de,#0000
.l4215 equ $ + 2
	ld lx,#00
	call l43ad
	ld a,lx
	ld (l4215),a
	ld (l435c),hl
	exx
	ld (l420b),hl
	ld a,c
	ld (l420e),a
	ld (l4356),a
	xor a
	or hy
	jr nz,l426a
	ld (l4379),a
	ld d,a
	ld a,e
	ld (l4211),a
	ld l,d
	ld h,l
	ld (l4359),hl
.l423f equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l438a
	ldi
	ldi
	ld de,l4382
	ldi
	ldi
	ld de,l437b
	ldi
	ld de,l438c
	ldi
	ld a,(hl)
	inc hl
	ld (l436b),hl
	ld hl,l483b
	or (hl)
	ld (hl),a
.l426a
	ld a,ly
.l426c
	ld (l4205),a
.l4270 equ $ + 1
	ld a,#00
	sub #01
	jr c,l427a
	ld (l4270),a
	jr l42b0
.l427a
	ld a,#37
	ld (l4025),a
	ld hl,(l409d)
.l4283 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l42b0
	ld (l4038),a
	ld (l4072),a
	ld (l4108),a
.l4294 equ $ + 1
	ld hl,#0000
	ld (l403e),hl
.l429a equ $ + 1
	ld hl,#0000
	ld (l407f),hl
.l42a0 equ $ + 1
	ld hl,#0000
	ld (l409d),hl
.l42a6 equ $ + 1
	ld hl,#0000
	ld (l40d9),hl
.l42ac equ $ + 1
	ld a,#00
	ld (l40b8),a
.l42b0
	ld hl,l483b
.l42b4 equ $ + 1
	ld d,#00
	exx
.l42b7 equ $ + 1
	ld hl,#0000
.l42ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l42b7),hl
	ld (l44e8),hl
	ld a,(l413f)
	ld lx,a
.l42c9 equ $ + 1
	ld hl,#0000
	ld iy,l46d6
	ld a,(l42d7)
	call l4442
	ex de,hl
.l42d7 equ $ + 1
	ld a,#00
.l42d9 equ $ + 1
	cp #ff
	jr z,l42df
	inc a
	jr l42fc
.l42e0 equ $ + 1
.l42df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l42f8
.l42e8 equ $ + 1
	ld de,#0000
.l42ea
	or a
	jr c,l42f8
.l42ee equ $ + 1
	ld hl,#0000
	ld (l42e0),hl
	dec a
	ld (l42d9),a
	inc a
.l42f8
	ld (l42c9),de
.l42fc
	ld (l42d7),a
	ld a,hx
	ld (l43a9),a
.l4305 equ $ + 1
	ld d,#00
	exx
.l4308 equ $ + 1
	ld hl,#0000
.l430b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4308),hl
	ld (l44e8),hl
	ld a,(l41aa)
	ld lx,a
.l431a equ $ + 1
	ld hl,#0000
	ld iy,l4727
	ld a,(l4328)
	call l4442
	ex de,hl
.l4328 equ $ + 1
	ld a,#00
.l432a equ $ + 1
	cp #ff
	jr z,l4330
	inc a
	jr l434d
.l4331 equ $ + 1
.l4330
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l4349
.l4339 equ $ + 1
	ld de,#0000
.l433b
	or a
	jr c,l4349
.l433f equ $ + 1
	ld hl,#0000
	ld (l4331),hl
	dec a
	ld (l432a),a
	inc a
.l4349
	ld (l431a),de
.l434d
	ld (l4328),a
	ld a,hx
	ld (l43a6),a
.l4356 equ $ + 1
	ld d,#00
	exx
.l4359 equ $ + 1
	ld hl,#0000
.l435c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4359),hl
	ld (l44e8),hl
	ld a,(l4215)
	ld lx,a
.l436b equ $ + 1
	ld hl,#0000
	ld iy,l4778
	ld a,(l4379)
	call l4442
	ex de,hl
.l4379 equ $ + 1
	ld a,#00
.l437b equ $ + 1
	cp #ff
	jr z,l4381
	inc a
	jr l439e
.l4382 equ $ + 1
.l4381
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l439a
.l438a equ $ + 1
	ld de,#0000
.l438c
	or a
	jr c,l439a
.l4390 equ $ + 1
	ld hl,#0000
	ld (l4382),hl
	dec a
	ld (l437b),a
	inc a
.l439a
	ld (l436b),de
.l439e
	ld (l4379),a
	ld a,hx
	sla a
.l43a6 equ $ + 1
	or #00
	rla
.l43a9 equ $ + 1
	or #00
	jp l46cb
.l43ad
	ld a,(hl)
	inc hl
	srl a
	jr c,l43e6
	cp #60
	jr nc,l43ee
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l43c6
	and #0f
	ld c,a
.l43c6
	rl b
	jr nc,l43cc
	ld e,(hl)
	inc hl
.l43cc
	rl b
	jr nc,l43de
.l43d0
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l43da
	dec h
.l43da
	ld ly,#00
	ret
.l43de
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l43e6
	ld hy,#00
	add d
	ld lx,a
	jr l43de
.l43ee
	ld hy,#01
	sub #60
	jr z,l440f
	dec a
	jr z,l4426
	dec a
	jr z,l4418
	dec a
	jr z,l43d0
	dec a
	jr z,l4422
	dec a
	jr z,l4437
	dec a
	jr z,l442e
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l440f
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l4418
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l4422
	ld c,(hl)
	inc hl
	jr l43d0
.l4426
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l442e
	ld a,(hl)
	inc hl
	ld (l400b),a
	ld a,b
	ld (l400c),a
.l4437
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l4442
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l44f8
	bit 4,e
	jr z,l44aa
	ld a,(hl)
	bit 6,a
	jr z,l4477
	ld d,#08
	inc hl
	and #1f
	jr z,l445e
	ld (l47c9),a
	res 3,d
.l445e
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l4467
	xor a
.l4467
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l4477
	ld (l47c9),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l4493
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l448c
	xor a
.l448c
	ld (iy+#36),a
	ld hx,d
	jr l44bd
.l4493
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l449c
	xor a
.l449c
	ld (iy+#36),a
.l449f
	ld hx,d
	ret
.l44a2
	ld (iy+#36),#00
	ld d,#09
	jr l449f
.l44aa
	ld d,#08
	ld a,e
	and #0f
	jr z,l44a2
	exx
	sub d
	exx
	jr nc,l44b7
	xor a
.l44b7
	ld (iy+#36),a
	ld hx,#08
.l44bd
	bit 5,e
	jr z,l44c5
	ld a,(hl)
	inc hl
	jr l44c6
.l44c5
	xor a
.l44c6
	bit 6,e
	jr z,l44d0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l44d3
.l44d0
	ld de,#0000
.l44d3
	add lx
	cp #60
	jr c,l44db
	ld a,#60
.l44db
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l460b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l44e8 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l44f8
	or a
	jr nz,l4502
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l4502
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
	ld (l4834),a
	bit 3,e
	jr z,l4524
	ld a,(hl)
	inc hl
	ld (l47c9),a
	res 3,d
	jr l4524
.l4524
	ld hx,d
	xor a
	bit 7,b
	jr z,l4536
	bit 6,b
	jr z,l4531
	ld a,(hl)
	inc hl
.l4531
	ld (l45e5),a
	ld a,#01
.l4536
	ld (l457e),a
	ld a,b
	rra
	and #0e
	ld (l458f),a
	bit 4,e
	jp nz,l45f0
	bit 1,e
	jr z,l454d
	ld a,(hl)
	inc hl
	jr l454e
.l454d
	xor a
.l454e
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l455b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l455e
.l455b
	ld de,#0000
.l455e
	add lx
	cp #60
	jr c,l4566
	ld a,#60
.l4566
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l460b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l44e8)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l457e equ $ + 1
	ld a,#00
	or a
	jr nz,l458e
	ex af,af'
	bit 5,a
	jr nz,l45f9
.l4587
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l458f equ $ + 1
.l458e
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l4599),a
	ld a,c
.l4599 equ $ + 1
	jr l459a
.l459a
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
	jr nc,l45b3
	inc bc
.l45b3
	ld a,c
	ld (l47fe),a
	ld a,b
	ld (l4819),a
	ld a,(l457e)
	or a
	jr z,l45ee
	ld a,(l458f)
	ld e,a
	srl a
	add e
	ld (l45cd),a
	ld a,b
.l45cd equ $ + 1
	jr l45ce
.l45ce
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
.l45e5 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l45ee
	pop hl
	ret
.l45f0
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l4587
.l45f9
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l47fe),a
	inc hl
	ld a,(hl)
	ld (l4819),a
	inc hl
	ret
.l460b
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
.l46cb
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l46d6 equ $ + 1
	ld a,#00
.l46d8 equ $ + 1
	cp #ff
	jr z,l46f0
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
	ld (l46d8),a
	exx
.l46f1 equ $ + 1
.l46f0
	ld a,#00
.l46f3 equ $ + 1
	cp #ff
	jr z,l470b
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
	ld (l46f3),a
	exx
.l470c equ $ + 1
.l470b
	ld a,#00
.l470e equ $ + 1
	cp #ff
	jr z,l4726
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
	ld (l470e),a
	exx
.l4727 equ $ + 1
.l4726
	ld a,#00
.l4729 equ $ + 1
	cp #ff
	jr z,l4741
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
	ld (l4729),a
	exx
.l4742 equ $ + 1
.l4741
	ld a,#00
.l4744 equ $ + 1
	cp #ff
	jr z,l475c
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
	ld (l4744),a
	exx
.l475d equ $ + 1
.l475c
	ld a,#00
.l475f equ $ + 1
	cp #ff
	jr z,l4777
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
	ld (l475f),a
	exx
.l4778 equ $ + 1
.l4777
	ld a,#00
.l477a equ $ + 1
	cp #ff
	jr z,l4792
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
	ld (l477a),a
	exx
.l4793 equ $ + 1
.l4792
	ld a,#00
.l4795 equ $ + 1
	cp #ff
	jr z,l47ad
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
	ld (l4795),a
	exx
.l47ae equ $ + 1
.l47ad
	ld a,#00
.l47b0 equ $ + 1
	cp #ff
	jr z,l47c8
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
	ld (l47b0),a
	exx
.l47c9 equ $ + 1
.l47c8
	ld a,#00
.l47cb equ $ + 1
	cp #ff
	jr z,l47e3
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
	ld (l47cb),a
	exx
.l47e3
	ld a,h
.l47e5 equ $ + 1
	cp #ff
	jr z,l47fd
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
	ld (l47e5),a
	exx
.l47fe equ $ + 1
.l47fd
	ld a,#00
.l4800 equ $ + 1
	cp #ff
	jr z,l4818
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
	ld (l4800),a
	exx
.l4819 equ $ + 1
.l4818
	ld a,#00
.l481b equ $ + 1
	cp #ff
	jr z,l4833
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
	ld (l481b),a
	exx
.l4834 equ $ + 1
.l4833
	ld a,#00
.l4836 equ $ + 1
	cp #ff
	jr nz,l483f
	ld h,a
.l483b equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l483f
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
	ld (l4836),a
	ret
;
.stop_music
.l4854
;
	xor a
	ld (l470c),a
	ld (l475d),a
	ld (l47ae),a
	dec a
	ld (l470e),a
	ld (l475f),a
	ld (l47b0),a
	ld (l47e5),a
	ld a,#3f
	jp l46cb
;
.real_init_music
.l4870
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l4123),a
	ld de,#0003
	add hl,de
	ld de,l407f
	ldi
	ldi
	ld de,l409d
	ldi
	ldi
	ld de,l40d9
	ldi
	ldi
	ld de,l4169
	ldi
	ldi
	ld de,l4294
	ldi
	ldi
	ld de,l429a
	ldi
	ldi
	ld de,l42a0
	ldi
	ldi
	ld de,l42a6
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l4017),a
	ld (l4015),a
	ld (l403e),hl
	ld hl,(l40d9)
	ld (l4283),hl
	ld a,(hl)
	and #01
	ld (l40b8),a
	ld hl,(l42a6)
	ld a,(hl)
	and #01
	ld (l42ac),a
	ld hl,(l4169)
	ld (l41d4),hl
	ld (l423f),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l42c9),hl
	ld (l431a),hl
	ld (l436b),hl
	ld (l42e8),hl
	ld (l4339),hl
	ld (l438a),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l42ee),de
	ld (l433f),de
	ld (l4390),de
	ld (l42e0),de
	ld (l4331),de
	ld (l4382),de
	ld a,#37
	ld (l4025),a
	ld hl,l492c
.l491c
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l4923
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l4923
	jr l491c
.l492c
	jr l492e
.l492e
	dw l46d6,l46f1,l4727,l4742
	dw l4778,l4793,l47c9,l470c
	dw l475d,l47ae,l47fe,l4819
	dw l4834,l4038,l4072,l40bd
	dw l40cb,l4108,l42d7,l4328
	dw l4379,l4138,l41a3,l420e
	dw #ff11,l46d8,l46f3,l4729
	dw l4744,l477a,l4795,l47cb
	dw l47e5,l470e,l475f,l47b0
	dw l4800,l481b,l4836,l42d9
	dw l432a,l437b,#b703,l42ea
	dw l433b,l438c
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
	db #00,#00,#00,#00,#00,#00
.l4a00
	db #53,#4b,#31,#30,#00,#4a,#01,#32
	db #00,#1e,#4a,#20,#4a,#86,#4a,#89
	db #4a,#1a,#4a,#1e,#4a,#20,#4a,#86
	db #4a,#05,#c0,#00,#00,#1f,#7f,#10
	db #39,#4b,#4d,#4b,#4e,#4b,#39,#4b
	db #62,#4b,#4e,#4b,#39,#4b,#6c,#4b
	db #4e,#4b,#39,#4b,#6c,#4b,#4e,#4b
	db #39,#4b,#6c,#4b,#c8,#4b,#39,#4b
	db #6c,#4b,#c8,#4b,#49,#4c,#4d,#4b
	db #5d,#4c,#49,#4c,#62,#4b,#5d,#4c
	db #49,#4c,#71,#4c,#5d,#4c,#49,#4c
	db #71,#4c,#5d,#4c,#cd,#4c,#d1,#4c
	db #2d,#4d,#cd,#4c,#d1,#4c,#4d,#4b
	db #8e,#4d,#4d,#4b,#d0,#4d,#8e,#4d
	db #12,#4e,#d0,#4d,#54,#4e,#96,#4e
	db #d8,#4e,#54,#4e,#96,#4e,#d8,#4e
	db #1a,#4f,#58,#4f,#9c,#4f,#20,#a1
	db #4f,#95,#4a,#9f,#4a,#aa,#4a,#d9
	db #4a,#10,#4b,#26,#4b,#9c,#4a,#9f
	db #4a,#ff,#37,#00,#00,#00,#00,#a8
	db #4a,#aa,#4a,#00,#37,#00,#80,#10
	db #80,#10,#b6,#4a,#d9,#4a,#00,#37
	db #00,#0f,#0e,#4e,#01,#00,#4d,#01
	db #00,#4d,#02,#00,#4d,#02,#00,#4d
	db #01,#00,#4d,#01,#00,#0d,#0d,#4d
	db #ff,#ff,#4d,#ff,#ff,#4d,#fe,#ff
	db #4d,#fe,#ff,#4d,#ff,#ff,#4d,#ff
	db #ff,#9c,#4a,#10,#4b,#00,#b7,#00
	db #1f,#21,#0f,#2f,#f8,#1f,#23,#3e
	db #23,#fe,#3d,#23,#fc,#3c,#23,#fa
	db #3b,#23,#f8,#3a,#23,#f6,#39,#23
	db #f4,#38,#23,#f2,#37,#23,#f0,#36
	db #23,#ee,#35,#23,#ec,#34,#23,#ea
	db #33,#23,#e8,#32,#23,#e6,#11,#22
	db #9c,#4a,#26,#4b,#00,#b7,#00,#1f
	db #21,#2f,#0c,#2f,#0c,#0f,#0f,#0f
	db #07,#07,#07,#07,#07,#07,#9c,#4a
	db #39,#4b,#00,#b7,#00,#0d,#0d,#0d
	db #0d,#0d,#0d,#06,#06,#06,#06,#06
	db #06,#30,#81,#01,#d6,#45,#de,#31
	db #d6,#45,#de,#31,#d6,#45,#de,#31
	db #d6,#47,#d2,#45,#c2,#c2,#18,#80
	db #02,#d6,#2d,#de,#19,#d6,#2d,#de
	db #19,#d6,#2d,#de,#19,#d6,#2f,#d2
	db #2d,#c2,#c0,#39,#56,#80,#03,#ce
	db #57,#ce,#57,#57,#30,#80,#04,#31
	db #31,#31,#56,#80,#03,#ce,#44,#80
	db #04,#45,#45,#45,#45,#45,#56,#80
	db #03,#d2,#30,#80,#04,#31,#31,#31
	db #56,#80,#03,#ce,#44,#80,#04,#45
	db #45,#45,#45,#45,#56,#80,#03,#ce
	db #57,#57,#30,#80,#04,#31,#31,#31
	db #56,#80,#03,#ce,#44,#80,#04,#45
	db #45,#45,#45,#45,#56,#80,#03,#d2
	db #30,#80,#04,#31,#31,#31,#56,#80
	db #03,#ce,#46,#80,#04,#47,#47,#47
	db #45,#45,#56,#80,#03,#ce,#57,#57
	db #76,#81,#05,#74,#0b,#74,#01,#76
	db #0b,#76,#01,#74,#0b,#70,#01,#76
	db #0b,#76,#01,#70,#0b,#78,#01,#76
	db #0b,#70,#01,#78,#0b,#74,#01,#70
	db #0b,#76,#01,#74,#0b,#74,#01,#76
	db #0b,#76,#01,#74,#0b,#70,#01,#76
	db #0b,#76,#01,#70,#0b,#78,#01,#76
	db #0b,#70,#01,#78,#0b,#74,#01,#70
	db #0b,#76,#01,#74,#0b,#74,#01,#76
	db #0b,#76,#01,#74,#0b,#70,#01,#76
	db #0b,#76,#01,#70,#0b,#78,#01,#76
	db #0b,#70,#01,#78,#0b,#74,#01,#70
	db #0b,#76,#01,#74,#0b,#74,#01,#76
	db #0b,#76,#01,#74,#0b,#70,#01,#76
	db #0b,#76,#01,#70,#0b,#78,#01,#76
	db #0b,#70,#01,#78,#0b,#74,#01,#70
	db #0b,#48,#80,#01,#d6,#41,#de,#49
	db #d6,#55,#de,#49,#d6,#41,#de,#49
	db #d6,#57,#d2,#55,#c2,#30,#80,#02
	db #d6,#29,#de,#31,#d6,#3d,#de,#31
	db #d6,#29,#de,#31,#d6,#3f,#d2,#3d
	db #c2,#30,#80,#04,#31,#31,#31,#56
	db #80,#03,#ce,#28,#80,#04,#29,#29
	db #29,#29,#29,#56,#80,#03,#d2,#30
	db #80,#04,#31,#31,#31,#56,#80,#03
	db #ce,#3c,#80,#04,#3d,#3d,#3d,#3d
	db #3d,#56,#80,#03,#ce,#57,#57,#30
	db #80,#04,#31,#31,#31,#56,#80,#03
	db #ce,#28,#80,#04,#29,#29,#29,#29
	db #29,#56,#80,#03,#d2,#30,#80,#04
	db #31,#31,#31,#56,#80,#03,#ce,#3e
	db #80,#04,#3f,#3f,#3f,#3d,#3d,#56
	db #80,#03,#ce,#57,#57,#30,#80,#01
	db #c2,#30,#80,#04,#31,#31,#31,#56
	db #80,#03,#ce,#30,#80,#04,#31,#31
	db #31,#31,#31,#56,#80,#03,#d2,#30
	db #80,#04,#31,#31,#31,#56,#80,#03
	db #ce,#30,#80,#04,#31,#31,#31,#31
	db #31,#56,#80,#03,#ce,#57,#57,#30
	db #80,#04,#31,#31,#31,#56,#80,#03
	db #ce,#30,#80,#04,#31,#31,#31,#31
	db #31,#56,#80,#03,#d2,#30,#80,#04
	db #31,#31,#31,#56,#80,#03,#ce,#30
	db #80,#04,#31,#31,#31,#31,#31,#56
	db #80,#03,#ce,#57,#57,#18,#81,#02
	db #ce,#c4,#00,#ce,#c4,#01,#ce,#c4
	db #01,#ce,#c4,#02,#ce,#c4,#02,#ce
	db #c4,#03,#ce,#c4,#03,#ce,#c4,#04
	db #ce,#c4,#04,#ce,#c4,#05,#ce,#c4
	db #05,#ce,#c4,#06,#ce,#c4,#06,#ce
	db #c4,#07,#ce,#c4,#07,#ce,#c4,#08
	db #ce,#c4,#08,#ce,#c4,#09,#ce,#c4
	db #09,#ce,#c4,#0a,#ce,#c4,#0a,#ce
	db #c4,#0b,#ce,#c4,#0b,#ce,#c4,#0c
	db #ce,#c4,#0c,#ce,#c4,#0d,#ce,#c4
	db #0d,#ce,#c4,#0e,#ce,#c4,#0e,#ce
	db #c4,#0f,#ce,#c4,#0f,#c2,#78,#80
	db #01,#61,#79,#61,#75,#6f,#6b,#67
	db #4f,#67,#4f,#67,#6b,#53,#75,#5d
	db #79,#61,#79,#61,#75,#6f,#6b,#67
	db #4f,#67,#4f,#67,#6b,#53,#75,#5d
	db #79,#61,#79,#61,#75,#6f,#6b,#67
	db #4f,#67,#4f,#67,#6b,#53,#75,#5d
	db #79,#61,#79,#61,#75,#6f,#6b,#67
	db #4f,#67,#4f,#67,#6b,#53,#75,#5d
	db #60,#80,#01,#49,#61,#49,#5d,#57
	db #53,#4f,#37,#4f,#37,#4f,#53,#3b
	db #5d,#45,#61,#49,#61,#49,#5d,#57
	db #53,#4f,#37,#4f,#37,#4f,#53,#3b
	db #5d,#45,#61,#49,#61,#49,#5d,#57
	db #53,#4f,#37,#4f,#37,#4f,#53,#3b
	db #5d,#45,#61,#49,#61,#49,#5d,#57
	db #53,#4f,#37,#4f,#37,#4f,#53,#3b
	db #5d,#45,#48,#80,#04,#31,#49,#31
	db #45,#3f,#3b,#37,#1f,#37,#1f,#37
	db #3b,#23,#45,#2d,#49,#31,#49,#31
	db #45,#3f,#3b,#37,#1f,#37,#1f,#37
	db #3b,#23,#45,#2d,#49,#31,#49,#31
	db #45,#3f,#3b,#37,#1f,#37,#1f,#37
	db #3b,#23,#45,#2d,#49,#31,#49,#31
	db #45,#3f,#3b,#37,#1f,#37,#1f,#37
	db #3b,#23,#45,#2d,#48,#80,#01,#61
	db #49,#49,#61,#49,#49,#61,#49,#61
	db #49,#49,#61,#49,#49,#61,#4f,#67
	db #4f,#4f,#67,#4f,#4f,#67,#4f,#67
	db #4f,#4f,#67,#4f,#4f,#67,#53,#6b
	db #53,#53,#6b,#53,#53,#6b,#53,#6b
	db #53,#53,#6b,#53,#53,#6b,#57,#6f
	db #57,#57,#6f,#57,#57,#6f,#57,#6f
	db #57,#57,#6f,#57,#5d,#75,#30,#80
	db #04,#49,#31,#31,#49,#31,#31,#49
	db #31,#49,#31,#31,#49,#31,#31,#49
	db #37,#4f,#37,#37,#4f,#37,#37,#4f
	db #37,#4f,#37,#37,#4f,#37,#37,#4f
	db #3b,#53,#3b,#3b,#53,#3b,#3b,#53
	db #3b,#53,#3b,#3b,#53,#3b,#3b,#53
	db #3f,#57,#3f,#3f,#57,#3f,#3f,#57
	db #3f,#57,#3f,#3f,#57,#3f,#45,#5d
	db #30,#80,#02,#49,#31,#31,#49,#31
	db #31,#49,#31,#49,#31,#31,#49,#31
	db #31,#49,#37,#4f,#37,#37,#4f,#37
	db #37,#4f,#37,#4f,#37,#37,#4f,#37
	db #37,#4f,#3b,#53,#3b,#3b,#53,#3b
	db #3b,#53,#3b,#53,#3b,#3b,#53,#3b
	db #3b,#53,#3f,#57,#3f,#3f,#57,#3f
	db #3f,#57,#3f,#57,#3f,#3f,#57,#3f
	db #45,#5d,#48,#80,#01,#61,#49,#49
	db #61,#49,#49,#61,#49,#61,#49,#49
	db #61,#49,#49,#61,#49,#61,#49,#49
	db #61,#49,#49,#61,#49,#61,#49,#49
	db #61,#49,#49,#61,#49,#61,#49,#49
	db #61,#49,#49,#61,#49,#61,#49,#49
	db #61,#49,#49,#61,#49,#61,#49,#49
	db #61,#49,#49,#61,#49,#61,#ca,#c2
	db #30,#80,#04,#49,#31,#31,#49,#31
	db #31,#49,#31,#49,#31,#31,#49,#31
	db #31,#49,#31,#49,#31,#31,#49,#31
	db #31,#49,#31,#49,#31,#31,#49,#31
	db #31,#49,#31,#49,#31,#31,#49,#31
	db #31,#49,#31,#49,#31,#31,#49,#31
	db #31,#49,#31,#49,#31,#31,#49,#31
	db #31,#49,#31,#49,#56,#80,#03,#ce
	db #57,#ce,#57,#57,#ca,#c0,#38,#ca
	db #c2,#ff,#00,#00
;
.init_music		; added by Megachur
;
	;	org #2041
	;	ld de,#4a00
	ld de,l4a00
	jp real_init_music
;
.music_info
	db "X-Kore (2006)(Dirty Minds)(Factor6)",0
	db "StArkos",0

	read "music_end.asm"
