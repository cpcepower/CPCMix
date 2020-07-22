; Music of Delta C64 Title (2017)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 11/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DELTAC6T.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

	jp l4872
	jp l400d
	jp l4856
.l400c equ $ + 3
.l400b equ $ + 2
	db #00,#40,#00,#00
;
.play_music
.l400d
;
	xor a
	ld (l400b),a
	ld (l483d),a
.l4015 equ $ + 1
	ld a,#00
.l4017 equ $ + 1
	cp #00
	jr z,l4021
	inc a
	ld (l4015),a
	jp l42b0
.l4021
	xor a
	ld (l4015),a
.l4025
	or a
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
	call l43af
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
	ld hl,l483d
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
	call l43af
	ld a,lx
	ld (l41aa),a
	ld (l430c),hl
	exx
	ld (l41a0),hl
	ld a,c
	ld (l41a3),a
	ld (l4306),a
	xor a
	or hy
	jr nz,l41ff
	ld (l4329),a
	ld d,a
	ld a,e
	ld (l41a6),a
	ld l,d
	ld h,l
	ld (l4309),hl
.l41d4 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l433a
	ldi
	ldi
	ld de,l4332
	ldi
	ldi
	ld de,l432b
	ldi
	ld de,l433c
	ldi
	ld a,(hl)
	inc hl
	ld (l431b),hl
	ld hl,l483d
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
	call l43af
	ld a,lx
	ld (l4215),a
	ld (l435e),hl
	exx
	ld (l420b),hl
	ld a,c
	ld (l420e),a
	ld (l4358),a
	xor a
	or hy
	jr nz,l426a
	ld (l437b),a
	ld d,a
	ld a,e
	ld (l4211),a
	ld l,d
	ld h,l
	ld (l435b),hl
.l423f equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l438c
	ldi
	ldi
	ld de,l4384
	ldi
	ldi
	ld de,l437d
	ldi
	ld de,l438e
	ldi
	ld a,(hl)
	inc hl
	ld (l436d),hl
	ld hl,l483d
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
	ld hl,l483d
.l42b4 equ $ + 1
	ld d,#00
	exx
.l42b7 equ $ + 1
	ld hl,#0000
.l42ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l42b7),hl
	ld (l44ea),hl
	ld a,(l413f)
	ld lx,a
.l42c9 equ $ + 1
	ld hl,#0000
	ld iy,l46d8
	ld a,(l42d7)
	call l4444
	ex de,hl
.l42d7 equ $ + 1
	ld a,#00
.l42d9 equ $ + 1
	cp #00
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
	ld (l43ab),a
	exx
.l4306 equ $ + 1
	ld d,#00
	exx
.l4309 equ $ + 1
	ld hl,#0000
.l430c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4309),hl
	ld (l44ea),hl
	ld a,(l41aa)
	ld lx,a
.l431b equ $ + 1
	ld hl,#0000
	ld iy,l4729
	ld a,(l4329)
	call l4444
	ex de,hl
.l4329 equ $ + 1
	ld a,#00
.l432b equ $ + 1
	cp #00
	jr z,l4331
	inc a
	jr l434e
.l4332 equ $ + 1
.l4331
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l434a
.l433a equ $ + 1
	ld de,#0000
.l433c
	or a
	jr c,l434a
.l4340 equ $ + 1
	ld hl,#0000
	ld (l4332),hl
	dec a
	ld (l432b),a
	inc a
.l434a
	ld (l431b),de
.l434e
	ld (l4329),a
	ld a,hx
	ld (l43a8),a
	exx
.l4358 equ $ + 1
	ld d,#00
	exx
.l435b equ $ + 1
	ld hl,#0000
.l435e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l435b),hl
	ld (l44ea),hl
	ld a,(l4215)
	ld lx,a
.l436d equ $ + 1
	ld hl,#0000
	ld iy,l477a
	ld a,(l437b)
	call l4444
	ex de,hl
.l437b equ $ + 1
	ld a,#00
.l437d equ $ + 1
	cp #00
	jr z,l4383
	inc a
	jr l43a0
.l4384 equ $ + 1
.l4383
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l439c
.l438c equ $ + 1
	ld de,#0000
.l438e
	or a
	jr c,l439c
.l4392 equ $ + 1
	ld hl,#0000
	ld (l4384),hl
	dec a
	ld (l437d),a
	inc a
.l439c
	ld (l436d),de
.l43a0
	ld (l437b),a
	ld a,hx
	sla a
.l43a8 equ $ + 1
	or #00
	rla
.l43ab equ $ + 1
	or #00
	jp l46cd
.l43af
	ld a,(hl)
	inc hl
	srl a
	jr c,l43e8
	cp #60
	jr nc,l43f0
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l43c8
	and #0f
	ld c,a
.l43c8
	rl b
	jr nc,l43ce
	ld e,(hl)
	inc hl
.l43ce
	rl b
	jr nc,l43e0
.l43d2
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l43dc
	dec h
.l43dc
	ld ly,#00
	ret
.l43e0
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l43e8
	ld hy,#00
	add d
	ld lx,a
	jr l43e0
.l43f0
	ld hy,#01
	sub #60
	jr z,l4411
	dec a
	jr z,l4428
	dec a
	jr z,l441a
	dec a
	jr z,l43d2
	dec a
	jr z,l4424
	dec a
	jr z,l4439
	dec a
	jr z,l4430
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l4411
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l441a
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l4424
	ld c,(hl)
	inc hl
	jr l43d2
.l4428
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l4430
	ld a,(hl)
	inc hl
	ld (l400b),a
	ld a,b
	ld (l400c),a
.l4439
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l4444
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l44fa
	bit 4,e
	jr z,l44ac
	ld a,(hl)
	bit 6,a
	jr z,l4479
	ld d,#08
	inc hl
	and #1f
	jr z,l4460
	ld (l47cb),a
	res 3,d
.l4460
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l4469
	xor a
.l4469
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l4479
	ld (l47cb),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l4495
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l448e
	xor a
.l448e
	ld (iy+#36),a
	ld hx,d
	jr l44bf
.l4495
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l449e
	xor a
.l449e
	ld (iy+#36),a
.l44a1
	ld hx,d
	ret
.l44a4
	ld (iy+#36),#00
	ld d,#09
	jr l44a1
.l44ac
	ld d,#08
	ld a,e
	and #0f
	jr z,l44a4
	exx
	sub d
	exx
	jr nc,l44b9
	xor a
.l44b9
	ld (iy+#36),a
	ld hx,#08
.l44bf
	bit 5,e
	jr z,l44c7
	ld a,(hl)
	inc hl
	jr l44c8
.l44c7
	xor a
.l44c8
	bit 6,e
	jr z,l44d2
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l44d5
.l44d2
	ld de,#0000
.l44d5
	add lx
	cp #60
	jr c,l44dd
	ld a,#5f
.l44dd
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l460d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l44ea equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l44fa
	or a
	jr nz,l4504
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l4504
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
	ld (l4836),a
	bit 3,e
	jr z,l4526
	ld a,(hl)
	inc hl
	ld (l47cb),a
	res 3,d
	jr l4526
.l4526
	ld hx,d
	xor a
	bit 7,b
	jr z,l4538
	bit 6,b
	jr z,l4533
	ld a,(hl)
	inc hl
.l4533
	ld (l45e7),a
	ld a,#01
.l4538
	ld (l4580),a
	ld a,b
	rra
	and #0e
	ld (l4591),a
	bit 4,e
	jp nz,l45f2
	bit 1,e
	jr z,l454f
	ld a,(hl)
	inc hl
	jr l4550
.l454f
	xor a
.l4550
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l455d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l4560
.l455d
	ld de,#0000
.l4560
	add lx
	cp #60
	jr c,l4568
	ld a,#5f
.l4568
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l460d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l44ea)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l4580 equ $ + 1
	ld a,#00
	or a
	jr nz,l4590
	ex af,af'
	bit 5,a
	jr nz,l45fb
.l4589
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l4591 equ $ + 1
.l4590
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l459b),a
	ld a,c
.l459b equ $ + 1
	jr l459c
.l459c
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
	jr nc,l45b5
	inc bc
.l45b5
	ld a,c
	ld (l4800),a
	ld a,b
	ld (l481b),a
	ld a,(l4580)
	or a
	jr z,l45f0
	ld a,(l4591)
	ld e,a
	srl a
	add e
	ld (l45cf),a
	ld a,b
.l45cf equ $ + 1
	jr l45d0
.l45d0
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
.l45e7 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l45f0
	pop hl
	ret
.l45f2
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l4589
.l45fb
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l4800),a
	inc hl
	ld a,(hl)
	ld (l481b),a
	inc hl
	ret
.l460d
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
.l46cd
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l46d8 equ $ + 1
	ld a,#00
.l46da equ $ + 1
	cp #00
	jr z,l46f2
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
	ld (l46da),a
	exx
.l46f3 equ $ + 1
.l46f2
	ld a,#00
.l46f5 equ $ + 1
	cp #00
	jr z,l470d
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
	ld (l46f5),a
	exx
.l470e equ $ + 1
.l470d
	ld a,#00
.l4710 equ $ + 1
	cp #00
	jr z,l4728
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
	ld (l4710),a
	exx
.l4729 equ $ + 1
.l4728
	ld a,#00
.l472b equ $ + 1
	cp #00
	jr z,l4743
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
	ld (l472b),a
	exx
.l4744 equ $ + 1
.l4743
	ld a,#00
.l4746 equ $ + 1
	cp #00
	jr z,l475e
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
	ld (l4746),a
	exx
.l475f equ $ + 1
.l475e
	ld a,#00
.l4761 equ $ + 1
	cp #00
	jr z,l4779
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
	ld (l4761),a
	exx
.l477a equ $ + 1
.l4779
	ld a,#00
.l477c equ $ + 1
	cp #00
	jr z,l4794
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
	ld (l477c),a
	exx
.l4795 equ $ + 1
.l4794
	ld a,#00
.l4797 equ $ + 1
	cp #00
	jr z,l47af
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
	ld (l4797),a
	exx
.l47b0 equ $ + 1
.l47af
	ld a,#00
.l47b2 equ $ + 1
	cp #00
	jr z,l47ca
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
	ld (l47b2),a
	exx
.l47cb equ $ + 1
.l47ca
	ld a,#00
.l47cd equ $ + 1
	cp #00
	jr z,l47e5
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
	ld (l47cd),a
	exx
.l47e5
	ld a,h
.l47e7 equ $ + 1
	cp #c0
	jr z,l47ff
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
	ld (l47e7),a
	exx
.l4800 equ $ + 1
.l47ff
	ld a,#00
.l4802 equ $ + 1
	cp #00
	jr z,l481a
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
	ld (l4802),a
	exx
.l481b equ $ + 1
.l481a
	ld a,#00
.l481d equ $ + 1
	cp #00
	jr z,l4835
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
	ld (l481d),a
	exx
.l4836 equ $ + 1
.l4835
	ld a,#00
.l4838 equ $ + 1
	cp #ff
	jr nz,l4841
	ld h,a
.l483d equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l4841
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
	ld (l4838),a
	ret
;
.stop_music
.l4856
;
	xor a
	ld (l470e),a
	ld (l475f),a
	ld (l47b0),a
	dec a
	ld (l4710),a
	ld (l4761),a
	ld (l47b2),a
	ld (l47e7),a
	ld a,#3f
	jp l46cd
;
.real_init_music
.l4872
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
	ld (l431b),hl
	ld (l436d),hl
	ld (l42e8),hl
	ld (l433a),hl
	ld (l438c),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l42ee),de
	ld (l4340),de
	ld (l4392),de
	ld (l42e0),de
	ld (l4332),de
	ld (l4384),de
	ld a,#37
	ld (l4025),a
	ld hl,l492e
.l491e
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l4925
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l4925
	jr l491e
.l492e
	jr l4930
.l4930
	dw l46d8,l46f3,l4729,l4744
	dw l477a,l4795,l47cb,l470e
	dw l475f,l47b0,l4800,l481b
	dw l4836,l4038,l4072,l40bd
	dw l40cb,l4108,l42d7,l4329
	dw l437b,l4138,l41a3,l420e
	dw #ff11,l46da,l46f5,l472b
	dw l4746,l477c,l4797,l47cd
	dw l47e7,l4710,l4761,l47b2
	dw l4802,l481d,l4838,l42d9
	dw l432b,l437d,#b703,l42ea
	dw l433c,l438e
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
.l4a00
	db #53,#4b,#31,#30,#00,#4a,#01,#32
	db #00,#1e,#4a,#20,#4a,#b0,#4a,#b3
	db #4a,#1a,#4a,#1e,#4a,#20,#4a,#b0
	db #4a,#04,#c0,#00,#00,#2d,#7f,#17
	db #a7,#4b,#f6,#4b,#4e,#4c,#95,#4c
	db #e4,#4c,#3c,#4d,#83,#4d,#d2,#4d
	db #2c,#4e,#72,#4e,#c1,#4e,#1b,#4f
	db #a7,#4b,#f6,#4b,#4e,#4c,#95,#4c
	db #e4,#4c,#3c,#4d,#83,#4d,#d2,#4d
	db #2c,#4e,#72,#4e,#c1,#4e,#1b,#4f
	db #a7,#4b,#f6,#4b,#76,#4f,#95,#4c
	db #e4,#4c,#e4,#4f,#83,#4d,#d2,#4d
	db #50,#50,#72,#4e,#c1,#4e,#c1,#50
	db #a7,#4b,#f6,#4b,#76,#4f,#95,#4c
	db #e4,#4c,#e4,#4f,#83,#4d,#d2,#4d
	db #50,#50,#72,#4e,#c1,#4e,#c1,#50
	db #2f,#51,#7e,#51,#d6,#51,#24,#52
	db #73,#52,#cd,#52,#2f,#51,#7e,#51
	db #28,#53,#24,#52,#73,#52,#74,#53
	db #e2,#53,#31,#54,#89,#54,#e4,#54
	db #33,#55,#8d,#55,#e4,#55,#33,#56
	db #8d,#56,#e2,#53,#e4,#56,#3e,#57
	db #2e,#95,#57,#cd,#4a,#d7,#4a,#ec
	db #4a,#f7,#4a,#10,#4b,#1c,#4b,#4b
	db #4b,#53,#4b,#6c,#4b,#78,#4b,#84
	db #4b,#90,#4b,#9d,#4b,#d4,#4a,#d7
	db #4a,#ff,#37,#00,#00,#00,#00,#ea
	db #4a,#ec,#4a,#00,#37,#00,#1f,#65
	db #c3,#01,#1e,#60,#fa,#01,#1d,#60
	db #a4,#02,#80,#16,#f5,#4a,#f7,#4a
	db #00,#37,#00,#1a,#05,#80,#16,#00
	db #4b,#10,#4b,#00,#37,#00,#1a,#05
	db #84,#16,#fe,#ff,#84,#16,#fe,#ff
	db #84,#16,#02,#00,#84,#16,#02,#00
	db #17,#4b,#1c,#4b,#00,#37,#00,#0c
	db #2c,#03,#2c,#07,#d4,#4a,#4b,#4b
	db #00,#b7,#00,#1a,#05,#3f,#28,#0c
	db #1e,#27,#3d,#27,#0c,#1c,#26,#3b
	db #26,#0c,#1a,#25,#39,#25,#0c,#18
	db #24,#37,#24,#0c,#16,#23,#35,#23
	db #0c,#14,#22,#33,#22,#0c,#12,#21
	db #31,#21,#0c,#52,#4b,#53,#4b,#00
	db #37,#00,#0e,#5a,#4b,#6c,#4b,#00
	db #37,#00,#4e,#ff,#ff,#4e,#ff,#ff
	db #4e,#ff,#ff,#4e,#01,#00,#4e,#01
	db #00,#4e,#01,#00,#d4,#4a,#78,#4b
	db #00,#b7,#00,#0e,#2e,#ff,#2e,#ff
	db #7f,#4b,#84,#4b,#00,#37,#00,#0c
	db #2c,#04,#2c,#07,#d4,#4a,#90,#4b
	db #00,#b7,#00,#0e,#2e,#01,#2e,#01
	db #97,#4b,#9d,#4b,#00,#37,#00,#0d
	db #0d,#2d,#0c,#2d,#0c,#a4,#4b,#a7
	db #4b,#00,#37,#00,#0d,#2d,#0c,#5a
	db #81,#01,#d0,#ca,#5a,#80,#02,#57
	db #5b,#ce,#72,#80,#03,#d2,#5a,#80
	db #02,#ce,#ca,#ce,#5a,#80,#01,#d0
	db #ca,#5a,#80,#01,#ce,#ca,#ce,#6e
	db #80,#02,#d2,#72,#80,#01,#d2,#5b
	db #d0,#ca,#5a,#80,#02,#57,#5b,#ce
	db #72,#80,#03,#d2,#5a,#80,#02,#ce
	db #ca,#ce,#68,#80,#01,#d0,#ca,#64
	db #80,#01,#60,#80,#02,#65,#ce,#61
	db #d0,#ca,#5e,#80,#02,#c2,#72,#81
	db #04,#72,#03,#72,#05,#72,#07,#72
	db #01,#72,#03,#72,#05,#72,#07,#50
	db #81,#05,#d6,#51,#d2,#51,#ce,#72
	db #80,#04,#72,#03,#72,#05,#72,#07
	db #50,#81,#05,#d2,#72,#80,#04,#72
	db #03,#72,#05,#72,#07,#72,#01,#72
	db #03,#72,#05,#72,#07,#72,#01,#72
	db #03,#72,#05,#72,#07,#50,#81,#05
	db #d6,#51,#d2,#51,#ce,#72,#80,#04
	db #72,#03,#72,#05,#72,#07,#50,#81
	db #05,#d2,#51,#ce,#51,#c2,#70,#81
	db #06,#73,#ce,#72,#80,#07,#d2,#72
	db #c0,#06,#10,#68,#80,#08,#64,#80
	db #06,#68,#03,#ce,#c4,#02,#ce,#c4
	db #03,#ce,#6e,#01,#71,#73,#e6,#c4
	db #01,#ce,#c4,#02,#ce,#c4,#03,#ce
	db #c4,#04,#ce,#c4,#05,#ce,#c4,#06
	db #ce,#78,#09,#ce,#7c,#05,#ce,#7e
	db #01,#81,#d0,#80,#80,#07,#de,#80
	db #c0,#06,#10,#c6,#10,#56,#81,#01
	db #d0,#ca,#56,#80,#02,#53,#57,#ce
	db #6e,#80,#03,#d2,#56,#80,#02,#ce
	db #ca,#ce,#56,#80,#01,#d0,#ca,#56
	db #80,#01,#ce,#ca,#ce,#6a,#80,#02
	db #d2,#6e,#80,#01,#d2,#57,#d0,#ca
	db #56,#80,#02,#53,#57,#ce,#6e,#80
	db #03,#d2,#56,#80,#02,#ce,#ca,#ce
	db #68,#80,#01,#d0,#ca,#64,#80,#01
	db #60,#80,#02,#65,#ce,#61,#d0,#ca
	db #5e,#80,#02,#c2,#6e,#81,#09,#6e
	db #03,#6e,#05,#6e,#07,#6e,#01,#6e
	db #03,#6e,#05,#6e,#07,#50,#81,#05
	db #d6,#51,#d2,#51,#ce,#6e,#80,#09
	db #6e,#03,#6e,#05,#6e,#07,#50,#81
	db #05,#d2,#6e,#80,#09,#6e,#03,#6e
	db #05,#6e,#07,#6e,#01,#6e,#03,#6e
	db #05,#6e,#07,#6e,#01,#6e,#03,#6e
	db #05,#6e,#07,#50,#81,#05,#d6,#51
	db #d2,#51,#ce,#6e,#80,#09,#6e,#03
	db #6e,#05,#6e,#07,#50,#81,#05,#d2
	db #51,#ce,#51,#c2,#74,#81,#06,#77
	db #ce,#76,#80,#07,#d2,#76,#c0,#06
	db #10,#68,#80,#08,#64,#80,#06,#68
	db #03,#ce,#c4,#02,#ce,#c4,#03,#ce
	db #72,#01,#75,#77,#e6,#c4,#01,#ce
	db #c4,#02,#ce,#c4,#03,#ce,#c4,#04
	db #ce,#c4,#05,#ce,#c4,#06,#ce,#c4
	db #07,#ce,#c4,#08,#ce,#7e,#01,#81
	db #d0,#80,#80,#07,#de,#80,#c0,#06
	db #10,#c6,#10,#52,#81,#01,#d0,#ca
	db #52,#80,#02,#4f,#53,#ce,#6a,#80
	db #03,#d2,#52,#80,#02,#ce,#ca,#ce
	db #52,#80,#01,#d0,#ca,#52,#80,#01
	db #ce,#ca,#ce,#66,#80,#02,#d2,#6a
	db #80,#01,#d2,#53,#d0,#ca,#52,#80
	db #02,#4f,#53,#ce,#6a,#80,#03,#d2
	db #52,#80,#02,#ce,#ca,#ce,#64,#80
	db #01,#d0,#ca,#60,#80,#01,#5c,#80
	db #02,#61,#ce,#5f,#d0,#ca,#60,#80
	db #02,#c2,#6a,#81,#09,#6a,#03,#6a
	db #05,#6a,#07,#6a,#01,#6a,#03,#6a
	db #05,#6a,#07,#50,#81,#05,#d6,#51
	db #d2,#51,#ce,#6a,#80,#09,#6a,#03
	db #6a,#05,#6a,#07,#50,#81,#05,#d2
	db #6a,#80,#09,#6a,#03,#6a,#05,#6a
	db #07,#6a,#01,#6a,#03,#6a,#05,#6a
	db #07,#6a,#01,#6a,#03,#6a,#05,#6a
	db #07,#50,#81,#05,#d6,#51,#d2,#51
	db #ce,#6a,#80,#09,#6a,#03,#6a,#05
	db #6a,#07,#50,#81,#05,#51,#51,#ce
	db #51,#ce,#51,#c2,#70,#81,#06,#73
	db #ce,#72,#80,#07,#d2,#72,#c0,#06
	db #10,#65,#ce,#c4,#01,#ce,#c4,#02
	db #ce,#c4,#03,#ce,#6e,#01,#71,#73
	db #e6,#c4,#01,#ce,#c4,#02,#ce,#c4
	db #03,#ce,#c4,#04,#ce,#c4,#05,#ce
	db #c4,#06,#ce,#c4,#07,#ce,#c4,#08
	db #ce,#7e,#81,#0a,#82,#80,#06,#d0
	db #82,#80,#07,#de,#82,#c0,#06,#10
	db #c6,#10,#60,#81,#01,#d0,#ca,#60
	db #80,#02,#5d,#61,#ce,#78,#80,#03
	db #d2,#60,#80,#02,#ce,#ca,#ce,#5e
	db #80,#01,#d0,#ca,#5e,#80,#01,#ce
	db #ca,#ce,#76,#80,#02,#d2,#76,#80
	db #01,#d2,#5b,#d0,#ca,#5a,#80,#02
	db #57,#5b,#ce,#72,#80,#03,#d2,#5a
	db #80,#02,#ce,#ca,#ce,#50,#80,#01
	db #d0,#ca,#50,#80,#01,#4c,#80,#02
	db #51,#ce,#69,#d0,#ca,#68,#80,#02
	db #c2,#78,#81,#09,#78,#03,#78,#05
	db #78,#07,#78,#01,#78,#03,#78,#05
	db #78,#07,#50,#81,#05,#d6,#51,#d2
	db #51,#ce,#68,#80,#04,#68,#03,#68
	db #05,#68,#07,#50,#81,#05,#d2,#68
	db #80,#04,#68,#03,#68,#05,#68,#07
	db #72,#01,#72,#03,#72,#05,#72,#07
	db #72,#01,#72,#03,#72,#05,#72,#07
	db #50,#81,#05,#d6,#51,#d2,#51,#ce
	db #68,#80,#04,#68,#03,#68,#05,#68
	db #07,#50,#81,#05,#51,#51,#51,#51
	db #ce,#51,#c2,#7e,#81,#06,#81,#ce
	db #80,#80,#07,#d4,#c4,#01,#ce,#c4
	db #02,#ce,#c4,#03,#ce,#c4,#04,#80
	db #c0,#06,#10,#80,#01,#83,#d0,#82
	db #80,#07,#d2,#c4,#01,#ce,#c4,#02
	db #ce,#c4,#03,#ce,#c4,#04,#ce,#80
	db #81,#08,#7c,#80,#06,#81,#ce,#80
	db #80,#07,#d2,#c4,#01,#ce,#c4,#02
	db #ce,#c4,#03,#ce,#c4,#04,#ce,#c4
	db #05,#ce,#c4,#04,#ce,#c4,#03,#ce
	db #c4,#02,#ce,#76,#81,#06,#79,#d0
	db #77,#ce,#6e,#05,#c4,#04,#72,#81
	db #0b,#ce,#c4,#01,#c4,#02,#68,#01
	db #ce,#c4,#01,#c4,#02,#72,#01,#ce
	db #c4,#01,#c4,#02,#78,#01,#ce,#c4
	db #01,#c4,#02,#80,#01,#ce,#c4,#01
	db #c4,#02,#78,#01,#ce,#c4,#01,#c4
	db #02,#72,#01,#ce,#c4,#01,#c4,#02
	db #68,#01,#ce,#c4,#01,#c4,#02,#72
	db #01,#ce,#c4,#01,#c4,#02,#68,#01
	db #ce,#c4,#01,#c4,#02,#72,#01,#ce
	db #c4,#01,#c4,#02,#78,#01,#ce,#c4
	db #01,#c4,#02,#80,#01,#ce,#c4,#01
	db #c4,#02,#7c,#01,#ce,#c4,#01,#c4
	db #02,#78,#01,#ce,#c4,#01,#c4,#02
	db #74,#01,#77,#c2,#d0,#c4,#01,#c4
	db #02,#68,#81,#0b,#ce,#c4,#01,#c4
	db #02,#6e,#01,#ce,#c4,#01,#c4,#02
	db #76,#01,#ce,#c4,#01,#c4,#02,#80
	db #01,#ce,#c4,#01,#c4,#02,#76,#01
	db #ce,#c4,#01,#c4,#02,#6e,#01,#ce
	db #c4,#01,#c4,#02,#68,#01,#ce,#c4
	db #01,#c4,#02,#76,#01,#ce,#c4,#01
	db #c4,#02,#68,#01,#ce,#c4,#01,#c4
	db #02,#6e,#01,#ce,#c4,#01,#c4,#02
	db #76,#01,#ce,#c4,#01,#c4,#02,#80
	db #01,#ce,#c4,#01,#c4,#02,#7c,#01
	db #ce,#c4,#01,#c4,#02,#78,#01,#ce
	db #c4,#01,#c4,#02,#74,#01,#77,#c2
	db #72,#81,#0b,#ce,#c4,#01,#c4,#02
	db #64,#01,#ce,#c4,#01,#c4,#02,#6a
	db #01,#ce,#c4,#01,#c4,#02,#72,#01
	db #ce,#c4,#01,#c4,#02,#7c,#01,#ce
	db #c4,#01,#c4,#02,#78,#01,#ce,#c4
	db #01,#c4,#02,#76,#01,#ce,#c4,#01
	db #c4,#02,#72,#01,#ce,#c4,#01,#c4
	db #02,#72,#01,#ce,#c4,#01,#c4,#02
	db #64,#01,#ce,#c4,#01,#c4,#02,#6a
	db #01,#ce,#c4,#01,#c4,#02,#72,#01
	db #ce,#c4,#01,#c4,#02,#7c,#01,#ce
	db #c4,#01,#c4,#02,#78,#01,#ce,#c4
	db #01,#c4,#02,#76,#01,#ce,#c4,#01
	db #c4,#02,#78,#01,#ce,#c4,#01,#c4
	db #02,#80,#81,#0b,#ce,#c4,#01,#c4
	db #02,#82,#01,#ce,#c4,#01,#c4,#02
	db #80,#01,#ce,#c4,#01,#c4,#02,#82
	db #01,#ce,#c4,#01,#c4,#02,#80,#01
	db #ce,#c4,#01,#c4,#02,#82,#01,#ce
	db #c4,#01,#c4,#02,#80,#01,#ce,#c4
	db #01,#c4,#02,#82,#01,#ce,#c4,#01
	db #c4,#02,#80,#01,#ce,#c4,#01,#c4
	db #02,#82,#01,#ce,#c4,#01,#c4,#02
	db #80,#01,#ce,#c4,#01,#c4,#02,#82
	db #01,#ce,#c4,#01,#c4,#02,#80,#01
	db #ce,#c4,#01,#c4,#02,#7c,#01,#ce
	db #c4,#01,#c4,#02,#78,#01,#ce,#c4
	db #01,#c4,#02,#74,#01,#77,#c2,#64
	db #81,#01,#d0,#ca,#64,#80,#02,#61
	db #65,#ce,#7c,#80,#03,#d2,#64,#80
	db #02,#ce,#ca,#ce,#64,#80,#01,#d0
	db #ca,#64,#80,#01,#ce,#ca,#ce,#7c
	db #80,#02,#d2,#7c,#80,#01,#d2,#57
	db #d0,#ca,#56,#80,#02,#53,#57,#ce
	db #6e,#80,#03,#d2,#56,#80,#02,#ce
	db #ca,#ce,#56,#80,#01,#d0,#ca,#56
	db #80,#01,#52,#80,#02,#57,#ce,#57
	db #d0,#ca,#56,#80,#02,#c2,#7c,#81
	db #04,#7c,#03,#7c,#05,#7c,#07,#7c
	db #01,#7c,#03,#7c,#05,#7c,#07,#50
	db #81,#05,#d6,#51,#d2,#51,#ce,#7c
	db #80,#04,#7c,#03,#7c,#05,#7c,#07
	db #50,#81,#05,#d2,#7c,#80,#04,#7c
	db #03,#7c,#05,#7c,#07,#6e,#01,#6e
	db #03,#6e,#05,#6e,#07,#6e,#01,#6e
	db #03,#6e,#05,#6e,#07,#50,#81,#05
	db #d6,#51,#d2,#51,#ce,#6e,#80,#04
	db #6e,#03,#6e,#05,#6e,#07,#50,#81
	db #05,#d2,#51,#ce,#51,#c2,#70,#81
	db #06,#73,#d8,#c4,#01,#ce,#c4,#02
	db #ce,#64,#01,#60,#80,#0a,#64,#80
	db #06,#ce,#c4,#01,#ce,#c4,#02,#ce
	db #c4,#03,#ce,#c4,#04,#ce,#68,#01
	db #ce,#c4,#01,#ce,#6a,#01,#ce,#c4
	db #01,#ce,#6e,#01,#ce,#6e,#80,#07
	db #d6,#c4,#01,#ce,#c4,#02,#ce,#72
	db #81,#06,#75,#d2,#74,#80,#07,#d6
	db #74,#c0,#06,#10,#6f,#d2,#c4,#01
	db #ce,#c4,#02,#c2,#5c,#81,#01,#d0
	db #ca,#5c,#80,#02,#5b,#5d,#ce,#74
	db #80,#03,#d2,#5c,#80,#02,#ce,#ca
	db #ce,#5c,#80,#01,#d0,#ca,#5a,#80
	db #01,#ce,#ca,#ce,#74,#80,#02,#d2
	db #74,#80,#01,#d2,#53,#d0,#ca,#52
	db #80,#02,#51,#53,#ce,#6a,#80,#03
	db #d2,#52,#80,#02,#ce,#ca,#ce,#52
	db #80,#01,#d0,#ca,#52,#80,#01,#50
	db #80,#02,#53,#ce,#53,#d0,#ca,#52
	db #80,#02,#c2,#74,#81,#09,#74,#03
	db #74,#05,#74,#07,#74,#01,#74,#03
	db #74,#05,#74,#07,#50,#81,#05,#d6
	db #51,#d2,#51,#ce,#74,#80,#09,#74
	db #03,#74,#05,#74,#07,#50,#81,#05
	db #d2,#74,#80,#09,#74,#03,#74,#05
	db #74,#07,#6a,#01,#6a,#03,#6a,#05
	db #6a,#07,#6a,#01,#6a,#03,#6a,#05
	db #6a,#07,#50,#81,#05,#d6,#51,#d2
	db #51,#ce,#6a,#80,#09,#6a,#03,#6a
	db #05,#6a,#07,#50,#81,#05,#51,#51
	db #ce,#51,#ce,#51,#c2,#72,#81,#06
	db #75,#c4,#01,#ce,#74,#01,#ce,#c4
	db #01,#ce,#c4,#02,#ce,#c4,#03,#ce
	db #74,#01,#73,#75,#ce,#c4,#01,#ce
	db #c4,#02,#ce,#c4,#03,#ce,#c4,#04
	db #ce,#72,#01,#ce,#c4,#01,#ce,#6e
	db #01,#ce,#c4,#01,#ce,#72,#01,#ce
	db #72,#80,#07,#d6,#c4,#01,#ce,#c4
	db #02,#ce,#c4,#03,#ce,#c4,#04,#ce
	db #c4,#05,#ce,#c4,#06,#ce,#c4,#07
	db #ce,#c4,#08,#ce,#c4,#09,#ce,#c4
	db #0a,#ce,#c4,#0b,#ce,#c4,#0c,#c2
	db #70,#81,#06,#73,#d8,#c4,#01,#ce
	db #c4,#02,#ce,#64,#01,#60,#80,#0a
	db #64,#80,#06,#ce,#c4,#01,#ce,#c4
	db #02,#ce,#c4,#03,#ce,#c4,#04,#ce
	db #68,#01,#ce,#c4,#01,#ce,#6a,#01
	db #ce,#c4,#01,#ce,#6e,#01,#ce,#6e
	db #80,#07,#d6,#c4,#01,#ce,#c4,#02
	db #ce,#72,#81,#06,#75,#d2,#74,#80
	db #07,#d8,#7c,#80,#06,#d2,#c4,#01
	db #ce,#c4,#02,#c2,#7c,#81,#0b,#ce
	db #c4,#01,#c4,#02,#7e,#01,#ce,#c4
	db #01,#c4,#02,#7c,#01,#ce,#c4,#01
	db #c4,#02,#7e,#01,#ce,#c4,#01,#c4
	db #02,#7c,#01,#ce,#c4,#01,#c4,#02
	db #78,#01,#ce,#c4,#01,#c4,#02,#74
	db #01,#ce,#c4,#01,#c4,#02,#78,#01
	db #ce,#c4,#01,#c4,#02,#80,#01,#ce
	db #c4,#01,#c4,#02,#82,#01,#ce,#c4
	db #01,#c4,#02,#80,#01,#ce,#c4,#01
	db #c4,#02,#82,#01,#ce,#c4,#01,#c4
	db #02,#80,#01,#ce,#c4,#01,#c4,#02
	db #7c,#01,#ce,#c4,#01,#c4,#02,#78
	db #01,#ce,#c4,#01,#c4,#02,#70,#01
	db #73,#c2,#56,#81,#01,#d0,#ca,#56
	db #80,#02,#53,#57,#ce,#6e,#80,#03
	db #d2,#56,#80,#02,#ce,#ca,#ce,#56
	db #80,#01,#d0,#ca,#56,#80,#01,#ce
	db #ca,#ce,#6a,#80,#02,#d2,#6e,#80
	db #01,#d2,#57,#d0,#ca,#56,#80,#02
	db #53,#57,#ce,#6e,#80,#03,#d2,#56
	db #80,#02,#ce,#ca,#ce,#56,#80,#01
	db #d0,#ca,#56,#80,#01,#52,#80,#02
	db #57,#ce,#6f,#d0,#ca,#56,#80,#02
	db #c2,#6e,#81,#04,#6e,#03,#6e,#05
	db #6e,#07,#6e,#01,#6e,#03,#6e,#05
	db #6e,#07,#50,#81,#05,#d6,#51,#d2
	db #51,#ce,#6e,#80,#04,#6e,#03,#6e
	db #05,#6e,#07,#50,#81,#05,#d2,#6e
	db #80,#04,#6e,#03,#6e,#05,#6e,#07
	db #6e,#01,#6e,#03,#6e,#05,#6e,#07
	db #6e,#01,#6e,#03,#6e,#05,#6e,#07
	db #50,#81,#05,#d6,#51,#d2,#51,#ce
	db #6e,#80,#04,#6e,#03,#6e,#05,#6e
	db #07,#50,#81,#05,#d2,#51,#ce,#51
	db #c2,#6c,#81,#06,#6f,#ce,#6e,#80
	db #07,#d4,#64,#80,#06,#60,#80,#0a
	db #64,#80,#06,#ce,#c4,#01,#ce,#c4
	db #02,#ce,#78,#01,#7b,#7d,#e6,#c4
	db #01,#ce,#c4,#02,#ce,#c4,#03,#ce
	db #c4,#04,#ce,#64,#81,#0c,#7c,#09
	db #6e,#01,#64,#09,#7c,#01,#6e,#09
	db #64,#01,#7c,#09,#6e,#01,#64,#09
	db #7c,#01,#6e,#09,#64,#01,#7c,#09
	db #6e,#01,#64,#09,#7c,#01,#6e,#09
	db #64,#01,#7c,#09,#6e,#01,#64,#09
	db #7c,#01,#6e,#09,#5c,#81,#01,#d0
	db #ca,#5c,#80,#02,#59,#5d,#ce,#74
	db #80,#03,#d2,#5c,#80,#02,#ce,#ca
	db #ce,#5c,#80,#01,#d0,#ca,#5c,#80
	db #01,#ce,#ca,#ce,#70,#80,#02,#d2
	db #74,#80,#01,#d2,#5d,#d0,#ca,#5c
	db #80,#02,#59,#5d,#ce,#74,#80,#03
	db #d2,#5c,#80,#02,#ce,#ca,#ce,#5c
	db #80,#01,#d0,#ca,#5c,#80,#01,#58
	db #80,#02,#5d,#ce,#75,#d0,#ca,#5c
	db #80,#02,#c2,#74,#81,#09,#74,#03
	db #74,#05,#74,#07,#74,#01,#74,#03
	db #74,#05,#74,#07,#50,#81,#05,#d6
	db #51,#d2,#51,#ce,#74,#80,#09,#74
	db #03,#74,#05,#74,#07,#50,#81,#05
	db #d2,#74,#80,#09,#74,#03,#74,#05
	db #74,#07,#74,#01,#74,#03,#74,#05
	db #74,#07,#74,#01,#74,#03,#74,#05
	db #74,#07,#50,#81,#05,#d6,#51,#d2
	db #51,#ce,#74,#80,#09,#74,#03,#74
	db #05,#74,#07,#50,#81,#05,#51,#51
	db #ce,#51,#ce,#51,#c2,#72,#81,#06
	db #75,#ce,#74,#80,#07,#d4,#6a,#80
	db #06,#69,#6b,#ce,#c4,#01,#ce,#c4
	db #02,#ce,#7e,#01,#81,#83,#e6,#c4
	db #01,#ce,#c4,#02,#ce,#c4,#03,#ce
	db #c4,#04,#ce,#6a,#81,#0c,#82,#09
	db #74,#01,#6a,#09,#82,#01,#74,#09
	db #6a,#01,#82,#09,#74,#01,#6a,#09
	db #82,#01,#74,#09,#6a,#01,#82,#09
	db #74,#01,#6a,#09,#82,#01,#74,#09
	db #6a,#01,#82,#09,#74,#01,#6a,#09
	db #82,#01,#74,#09,#52,#81,#01,#d0
	db #ca,#52,#80,#02,#4f,#53,#ce,#6a
	db #80,#03,#d2,#54,#80,#02,#ce,#ca
	db #ce,#52,#80,#01,#d0,#ca,#52,#80
	db #01,#ce,#ca,#ce,#66,#80,#02,#d2
	db #6a,#80,#01,#d2,#53,#d0,#ca,#52
	db #80,#02,#4f,#53,#ce,#6a,#80,#03
	db #d2,#52,#80,#02,#ce,#ca,#ce,#52
	db #80,#01,#d0,#ca,#52,#80,#01,#4e
	db #80,#02,#53,#ce,#6b,#d0,#ca,#52
	db #80,#02,#c2,#6a,#81,#09,#6a,#03
	db #6a,#05,#6a,#07,#6a,#01,#6a,#03
	db #6a,#05,#6a,#07,#50,#81,#05,#d6
	db #51,#d2,#51,#ce,#6a,#80,#09,#6a
	db #03,#6a,#05,#6a,#07,#50,#81,#05
	db #d2,#6a,#80,#09,#6a,#03,#6a,#05
	db #6a,#07,#6a,#01,#6a,#03,#6a,#05
	db #6a,#07,#6a,#01,#6a,#03,#6a,#05
	db #6a,#07,#50,#81,#05,#d6,#51,#d2
	db #51,#ce,#6a,#80,#09,#6a,#03,#6a
	db #05,#6a,#07,#50,#81,#05,#ce,#51
	db #ce,#51,#ce,#51,#c2,#76,#81,#06
	db #79,#ce,#78,#80,#07,#d4,#6a,#80
	db #06,#69,#6b,#ce,#c4,#01,#ce,#c4
	db #02,#ce,#7e,#01,#81,#83,#e6,#c4
	db #01,#ce,#c4,#02,#ce,#c4,#03,#ce
	db #c4,#04,#ce,#6a,#81,#0c,#82,#09
	db #78,#01,#6a,#09,#82,#01,#78,#09
	db #6a,#01,#82,#09,#78,#01,#6a,#09
	db #82,#01,#78,#09,#6a,#01,#82,#09
	db #78,#01,#6a,#09,#82,#01,#78,#09
	db #6a,#01,#82,#09,#78,#01,#6a,#09
	db #82,#01,#78,#09,#6e,#81,#04,#6e
	db #03,#6e,#05,#6e,#07,#6e,#01,#6e
	db #03,#6e,#05,#6e,#07,#50,#81,#05
	db #d6,#51,#d2,#51,#ce,#6e,#80,#04
	db #6e,#03,#6e,#05,#6e,#07,#50,#81
	db #05,#d2,#6e,#80,#04,#6e,#03,#6e
	db #05,#6e,#07,#6e,#01,#6e,#03,#6e
	db #05,#6e,#07,#6e,#01,#6e,#03,#6e
	db #05,#6e,#07,#50,#81,#05,#d6,#51
	db #d2,#51,#ce,#6e,#80,#04,#6e,#03
	db #6e,#05,#6e,#07,#50,#81,#05,#51
	db #51,#ce,#51,#51,#51,#c2,#76,#81
	db #06,#79,#ce,#78,#80,#07,#d4,#6e
	db #80,#06,#6b,#6f,#ce,#c4,#01,#ce
	db #c4,#02,#ce,#82,#01,#85,#87,#e6
	db #c4,#01,#ce,#c4,#02,#ce,#c4,#03
	db #ce,#c4,#04,#ce,#6e,#81,#0c,#86
	db #09,#7c,#01,#6e,#09,#86,#01,#7c
	db #09,#6e,#01,#86,#09,#7c,#01,#6e
	db #09,#86,#01,#7c,#09,#6e,#01,#86
	db #09,#7c,#01,#6e,#09,#86,#01,#7c
	db #09,#6e,#01,#86,#09,#7c,#01,#6e
	db #09,#86,#01,#7c,#09,#04,#08,#04
	db #08,#04,#08,#04,#08,#04,#08,#04
	db #08,#04,#08,#04,#08,#04,#08,#04
	db #08,#04,#08,#04,#08,#04,#08,#04
	db #08,#04,#08,#04,#08,#04,#08,#04
	db #08,#04,#08,#04,#08,#04,#08,#04
	db #08,#04,#08,#04,#08,#04,#08,#04
	db #08,#04,#08,#04,#08,#04,#08,#04
	db #08,#04,#08,#04,#08,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5800
	db #53,#4b,#31,#30,#00,#58,#01,#32
	db #00,#1e,#58,#20,#58,#80,#58,#83
	db #58,#1a,#58,#1e,#58,#20,#58,#80
	db #58,#03,#c0,#00,#00,#1d,#7f,#0f
	db #43,#5a,#59,#5a,#8d,#5a,#fd,#5a
	db #11,#5b,#45,#5b,#43,#5a,#59,#5a
	db #8d,#5a,#fd,#5a,#11,#5b,#45,#5b
	db #b5,#5b,#c3,#5b,#f7,#5b,#67,#5c
	db #11,#5b,#45,#5b,#75,#5c,#c3,#5b
	db #f7,#5b,#83,#5c,#11,#5b,#45,#5b
	db #93,#5c,#a0,#5c,#d4,#5c,#44,#5d
	db #c3,#5b,#f7,#5b,#60,#5d,#a0,#5c
	db #d4,#5c,#6d,#5d,#c3,#5b,#f7,#5b
	db #7b,#5d,#85,#5d,#8d,#5a,#b3,#5d
	db #c3,#5b,#f7,#5b,#7b,#5d,#85,#5d
	db #8d,#5a,#b3,#5d,#c3,#5b,#f7,#5b
	db #1e,#c9,#5d,#9f,#58,#a9,#58,#e0
	db #58,#f6,#58,#33,#59,#3f,#59,#5e
	db #59,#6d,#59,#8c,#59,#ab,#59,#ca
	db #59,#e6,#59,#05,#5a,#24,#5a,#a6
	db #58,#a9,#58,#ff,#37,#00,#00,#00
	db #00,#c0,#58,#e0,#58,#00,#37,#00
	db #6f,#09,#ff,#ff,#6f,#09,#ff,#ff
	db #6f,#09,#ff,#ff,#6f,#09,#ff,#ff
	db #6e,#09,#01,#00,#6e,#09,#01,#00
	db #6e,#09,#01,#00,#6e,#09,#01,#00
	db #6e,#09,#ff,#ff,#6e,#09,#ff,#ff
	db #6e,#09,#ff,#ff,#6e,#09,#ff,#ff
	db #f3,#58,#f6,#58,#00,#37,#00,#1f
	db #65,#c3,#01,#1e,#60,#fa,#01,#1d
	db #60,#a4,#02,#82,#16,#fd,#a6,#58
	db #33,#59,#00,#b7,#00,#1c,#05,#1f
	db #21,#3f,#22,#0c,#1e,#23,#3e,#24
	db #0c,#1d,#25,#3d,#26,#0c,#1c,#27
	db #3c,#28,#0c,#1b,#29,#3b,#2a,#0c
	db #1a,#2b,#3a,#2c,#0c,#19,#2d,#38
	db #2e,#0c,#17,#2f,#36,#30,#0c,#15
	db #31,#34,#32,#0c,#13,#33,#32,#34
	db #0c,#11,#35,#3c,#59,#3f,#59,#00
	db #37,#00,#1c,#05,#82,#16,#fd,#a6
	db #58,#5e,#59,#00,#b7,#00,#2d,#fd
	db #2c,#09,#2b,#fd,#2a,#09,#29,#fd
	db #28,#09,#2d,#01,#2c,#0d,#2b,#01
	db #2a,#0d,#29,#01,#28,#0d,#a6,#58
	db #6d,#59,#00,#b7,#00,#2d,#fd,#2c
	db #09,#2b,#fd,#2a,#09,#a6,#58,#8c
	db #59,#00,#b7,#00,#2d,#fd,#2c,#09
	db #2b,#fd,#2a,#09,#29,#fd,#28,#09
	db #2d,#f8,#2c,#04,#2b,#f8,#2a,#04
	db #29,#f8,#28,#04,#a6,#58,#ab,#59
	db #00,#b7,#00,#2d,#fd,#2c,#09,#2b
	db #fd,#2a,#09,#29,#fd,#28,#09,#2d
	db #02,#2c,#0e,#2b,#02,#2a,#0e,#29
	db #02,#28,#0e,#a6,#58,#ca,#59,#00
	db #b7,#00,#2d,#fd,#2c,#09,#2b,#fd
	db #2a,#09,#29,#fd,#28,#09,#2d,#fb
	db #2c,#07,#2b,#fb,#2a,#07,#29,#fb
	db #28,#07,#a6,#58,#e6,#59,#00,#b7
	db #00,#2d,#fd,#2c,#09,#2b,#fd,#2a
	db #09,#29,#fd,#28,#09,#0d,#2c,#0c
	db #0b,#2a,#0c,#09,#28,#0c,#a6,#58
	db #05,#5a,#00,#b7,#00,#2d,#fd,#2c
	db #09,#2b,#fd,#2a,#09,#29,#fd,#28
	db #09,#2d,#fc,#2c,#08,#2b,#fc,#2a
	db #08,#29,#fc,#28,#08,#a6,#58,#24
	db #5a,#00,#b7,#00,#2d,#fd,#2c,#09
	db #2b,#fd,#2a,#09,#29,#fd,#28,#09
	db #2d,#ff,#2c,#0b,#2b,#ff,#2a,#0b
	db #29,#ff,#28,#0b,#a6,#58,#43,#5a
	db #00,#b7,#00,#2d,#fd,#2c,#09,#2b
	db #fd,#2a,#09,#29,#fd,#28,#09,#2d
	db #f9,#2c,#05,#2b,#f9,#2a,#05,#29
	db #f9,#28,#05,#60,#81,#01,#d2,#65
	db #d2,#61,#d2,#6f,#ea,#61,#d2,#61
	db #d2,#65,#d2,#61,#d2,#79,#ea,#61
	db #c2,#60,#81,#02,#da,#48,#80,#03
	db #d2,#60,#80,#02,#d2,#77,#d2,#78
	db #80,#04,#d2,#48,#80,#03,#d2,#60
	db #80,#04,#d2,#5c,#80,#02,#da,#48
	db #80,#03,#d2,#5c,#80,#02,#d2,#73
	db #d2,#74,#80,#04,#d2,#48,#80,#03
	db #d2,#6e,#80,#02,#c2,#60,#83,#05
	db #d0,#6e,#80,#06,#78,#80,#07,#d0
	db #68,#80,#06,#60,#80,#05,#d0,#6e
	db #80,#06,#78,#80,#07,#d0,#68,#80
	db #06,#60,#80,#05,#d0,#6e,#80,#06
	db #78,#80,#07,#d0,#68,#80,#06,#60
	db #80,#05,#d0,#6e,#80,#06,#78,#80
	db #07,#d0,#68,#80,#06,#60,#80,#05
	db #d0,#6e,#80,#06,#78,#80,#07,#d0
	db #68,#80,#06,#60,#80,#05,#d0,#6e
	db #80,#06,#78,#80,#07,#d0,#68,#80
	db #06,#60,#80,#05,#d0,#6e,#80,#06
	db #78,#80,#07,#d0,#68,#80,#06,#60
	db #80,#05,#d0,#6e,#80,#06,#78,#80
	db #07,#d0,#68,#80,#06,#60,#81,#01
	db #d2,#65,#d2,#61,#d2,#6f,#ea,#61
	db #d2,#65,#da,#6f,#da,#73,#da,#65
	db #c2,#6a,#81,#02,#da,#48,#80,#03
	db #d2,#6a,#80,#02,#d2,#81,#d2,#82
	db #80,#04,#d2,#48,#80,#03,#d2,#6a
	db #80,#04,#d2,#6e,#80,#02,#da,#48
	db #80,#03,#d2,#6e,#80,#02,#d2,#83
	db #d2,#86,#80,#04,#d2,#48,#80,#03
	db #d2,#7c,#80,#02,#c2,#60,#83,#08
	db #d0,#6e,#80,#06,#72,#80,#09,#d0
	db #6a,#80,#06,#60,#80,#08,#d0,#6e
	db #80,#06,#72,#80,#09,#d0,#6a,#80
	db #06,#60,#80,#08,#d0,#6e,#80,#06
	db #72,#80,#09,#d0,#6a,#80,#06,#60
	db #80,#08,#d0,#6e,#80,#06,#72,#80
	db #09,#d0,#6a,#80,#06,#64,#80,#08
	db #d0,#72,#80,#06,#76,#80,#09,#d0
	db #6e,#80,#06,#64,#80,#08,#d0,#72
	db #80,#06,#76,#80,#09,#d0,#6e,#80
	db #06,#64,#80,#08,#d0,#72,#80,#06
	db #76,#80,#09,#d0,#6e,#80,#06,#64
	db #80,#08,#d0,#72,#80,#06,#76,#80
	db #09,#d0,#6e,#80,#06,#68,#81,#01
	db #ea,#63,#da,#71,#da,#77,#fa,#73
	db #d2,#71,#c2,#72,#81,#02,#da,#48
	db #80,#03,#d2,#72,#80,#02,#d2,#71
	db #d2,#72,#80,#04,#d2,#48,#80,#03
	db #d2,#68,#80,#04,#d2,#72,#80,#02
	db #da,#48,#80,#03,#d2,#72,#80,#02
	db #d2,#71,#d2,#72,#80,#04,#d2,#48
	db #80,#03,#d2,#68,#80,#02,#c2,#62
	db #83,#0a,#d0,#70,#80,#06,#72,#80
	db #0b,#d0,#68,#80,#06,#62,#80,#0a
	db #d0,#70,#80,#06,#72,#80,#0b,#d0
	db #68,#80,#06,#62,#80,#0a,#d0,#70
	db #80,#06,#72,#80,#0b,#d0,#68,#80
	db #06,#62,#80,#0a,#d0,#70,#80,#06
	db #72,#80,#0b,#d0,#68,#80,#06,#62
	db #80,#0a,#d0,#70,#80,#06,#72,#80
	db #0b,#d0,#68,#80,#06,#62,#80,#0a
	db #d0,#70,#80,#06,#72,#80,#0b,#d0
	db #68,#80,#06,#62,#80,#0a,#d0,#70
	db #80,#06,#72,#80,#0b,#d0,#68,#80
	db #06,#62,#80,#0a,#d0,#70,#80,#06
	db #72,#80,#0b,#d0,#68,#80,#06,#6e
	db #81,#01,#ea,#6b,#da,#69,#da,#65
	db #fa,#63,#d2,#65,#c2,#62,#81,#01
	db #ea,#71,#da,#69,#da,#77,#fa,#73
	db #d2,#71,#c2,#6e,#81,#01,#da,#69
	db #ea,#5f,#d2,#61,#d2,#65,#da,#6f
	db #da,#73,#c2,#74,#81,#01,#da,#7b
	db #d2,#77,#d2,#75,#c0,#1e,#6d,#c2
	db #76,#81,#02,#da,#48,#80,#03,#d2
	db #76,#80,#02,#d2,#75,#d2,#76,#80
	db #04,#d2,#48,#80,#03,#d2,#6c,#80
	db #04,#d2,#76,#80,#02,#da,#48,#80
	db #03,#d2,#76,#80,#02,#d2,#75,#d2
	db #76,#80,#04,#d2,#48,#80,#03,#d2
	db #6c,#80,#02,#c2,#62,#83,#0c,#d0
	db #6c,#80,#06,#74,#80,#0d,#d0,#66
	db #80,#06,#62,#80,#0c,#d0,#6c,#80
	db #06,#74,#80,#0d,#d0,#66,#80,#06
	db #62,#80,#0c,#d0,#6c,#80,#06,#74
	db #80,#0d,#d0,#66,#80,#06,#62,#80
	db #0c,#d0,#6c,#80,#06,#74,#80,#0d
	db #d0,#66,#80,#06,#62,#80,#0c,#d0
	db #6c,#80,#06,#74,#80,#0d,#d0,#66
	db #80,#06,#62,#80,#0c,#d0,#6c,#80
	db #06,#74,#80,#0d,#d0,#66,#80,#06
	db #62,#80,#0c,#d0,#6c,#80,#06,#74
	db #80,#0d,#d0,#66,#80,#06,#62,#80
	db #0c,#d0,#6c,#80,#06,#74,#80,#0d
	db #d0,#66,#80,#06,#70,#81,#01,#da
	db #77,#d2,#73,#d2,#71,#c0,#1e,#c4
	db #01,#ce,#c4,#02,#ce,#c4,#03,#ce
	db #c4,#04,#ce,#66,#01,#d2,#69,#c2
	db #6c,#81,#01,#da,#7b,#d2,#77,#d2
	db #75,#c0,#1e,#6d,#c2,#70,#81,#01
	db #ea,#69,#ea,#5f,#ea,#59,#da,#5b
	db #d2,#5f,#c2,#60,#81,#01,#ea,#5f
	db #ea,#5b,#ea,#57,#c2,#60,#81,#04
	db #da,#48,#80,#03,#d2,#60,#80,#04
	db #d2,#77,#d2,#79,#d2,#48,#80,#03
	db #d2,#6e,#80,#04,#d2,#61,#da,#48
	db #80,#03,#d2,#60,#80,#04,#d2,#77
	db #d2,#79,#d2,#48,#80,#03,#d2,#6e
	db #80,#02,#c2,#58,#81,#01,#c0,#2e
	db #c4,#01,#ce,#c4,#02,#ce,#c4,#03
	db #ce,#c4,#04,#ce,#5a,#01,#d2,#5f
	db #c2,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #2f,#36,#30,#00,#0c,#15,#31,#34
	db #32,#0c,#13,#33,#02,#32,#34,#0c
	db #11,#35,#3c,#a7,#33,#52,#2e,#3c
	db #48,#1a,#5e,#48,#2d,#00,#fd,#2c
	db #09,#2b,#fd,#2a,#09,#29,#00,#fd
	db #28,#09,#2d,#01,#2c,#0d,#2b,#01
	db #01,#2a,#0d,#29,#01,#28,#0d,#1e
	db #3c,#6d,#1e,#e7,#0e,#8c,#2d,#c0
	db #f8,#00,#2c,#04,#2b,#f8,#2a,#04
	db #29,#f8,#27,#28,#04,#1e,#ab,#1e
	db #c0,#02,#00,#2c,#0e,#2b,#02,#2a
	db #0e,#29,#02,#27,#28,#0e,#1e,#ca
	db #1e,#c0,#fb,#00,#2c,#07,#2b,#fb
	db #2a,#07,#29,#fb,#27,#28,#07,#1e
	db #e6,#1e,#ba,#0d,#c2,#24,#0b,#ca
	db #48,#09,#d2,#a9,#1b,#cc,#3d,#3a
	db #c0,#fc,#2c,#08,#2b,#fc,#2a,#05
	db #08,#29,#fc,#28,#08,#1e,#e9,#27
	db #1e,#b8,#ff,#2c,#0b,#00,#2b,#ff
	db #2a,#0b,#29,#ff,#28,#0b,#9f,#1e
	db #43,#1e,#00,#f9,#2c,#05,#00,#2b
	db #f9,#2a,#05,#29,#f9,#28,#05,#30
	db #60,#81,#ba,#02,#65,#d2,#61,#d2
	db #6f,#ea,#03,#b5,#01,#09,#79,#09
	db #21,#c2,#15,#02,#da,#48,#c7,#88
	db #60,#c4,#dc,#16,#77,#d2,#78,#bb
	db #39,#d2,#0d,#6a,#04,#d9,#f0,#19
	db #5c,#c6,#19,#73,#a7,#a7,#19,#2c
	db #6e,#d9,#40,#60,#83,#05,#d0,#b4
	db #c9,#b4,#d0,#39,#d0,#68,#85,#7f
	db #0d,#a0,#8f,#b9,#20,#65,#da,#6f
	db #da,#19,#73,#da,#65,#dd,#91,#9d
	db #cf,#96,#a8,#81,#d2,#82,#8e,#9d
	db #a9,#0d,#07,#6e,#b7,#1d,#30,#6e
	db #19,#83,#d2,#74,#86,#19,#7c,#8e
	db #b7,#1a,#08,#55,#72,#c8,#d1,#d0
	db #6a,#df,#63,#0d,#c7,#64,#64,#0d
	db #0a,#06,#63,#76,#0d,#6e,#0d,#f2
	db #d1,#68,#b7,#00,#ea,#63,#da,#71
	db #da,#77,#fa,#91,#bf,#71,#b5,#c9
	db #97,#1c,#cb,#1f,#02,#0d,#05,#23
	db #97,#98,#de,#9b,#04,#11,#19,#f2
	db #44,#b1,#62,#08,#83,#0a,#d0,#70
	db #87,#d4,#0b,#87,#a9,#62,#80,#0d
	db #fc,#fe,#82,#91,#b1,#09,#6b,#da
	db #69,#df,#09,#fa,#63,#e9,#2c,#7d
	db #0d,#64,#71,#0d,#bf,#73,#1b,#90
	db #0b,#ea,#5f,#d2,#9e,#83,#bd,#df
	db #25,#0f,#7b,#b3,#20,#75,#c0,#1e
	db #6a,#6d,#e1,#47,#c2,#31,#f9,#2c
	db #02,#10,#05,#8e,#c2,#59,#6c,#07
	db #11,#9f,#19,#24,#dc,#68,#0c,#d0
	db #6c,#a8,#73,#d9,#11,#0d,#d0,#66
	db #88,#bf,#0d,#cf,#a3,#70,#b0,#22
	db #ae,#8c,#ca,#8b,#b0,#f6,#7c,#d4
	db #66,#dc,#08,#69,#c2,#6c,#cc,#f3
	db #c4,#28,#ea,#e9,#60,#ea,#59,#da
	db #16,#5b,#d2,#5f,#a1,#94,#0d,#0b
	db #5b,#30,#ea,#57,#09,#04,#da,#b6
	db #9d,#e5,#2a,#79,#8f,#b5,#0b,#3e
	db #61,#15,#28,#de,#91,#58,#37,#c0
	db #2e,#68,#e6,#5a,#a3,#68,#4d,#ff
	db #00,#00,#f5,#3f,#00,#ff,#e0,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
; #603f
; ld de,#4a00
; call #4000
;
; #6187
; ld de,#5800
; call #4000
;
.init_music
;
	ld de,l4a00
	or a
	jp z,real_init_music
	ld de,l5800
	jp real_init_music
;
.music_info
	db "Delta C64 Title (2017)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
