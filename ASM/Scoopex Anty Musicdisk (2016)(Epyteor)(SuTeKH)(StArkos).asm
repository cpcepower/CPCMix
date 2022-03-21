; Music of Scoopex Anty Musicdisk (2016)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 16/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SCOOPEAM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000
FIRST_THEME				equ 0
LAST_THEME				equ 2

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
;
	ds #4a00-$,#00
;
.l4a00
	db #53,#4b,#31,#30,#00,#4a,#01,#32
	db #00,#1e,#4a,#20,#4a,#b0,#4a,#b3
	db #4a,#1a,#4a,#1e,#4a,#20,#4a,#b0
	db #4a,#06,#c0,#00,#00,#2d,#7f,#17
	db #7e,#4b,#c0,#4b,#c0,#4b,#7e,#4b
	db #c1,#4b,#c0,#4b,#d9,#4b,#1b,#4c
	db #c0,#4b,#7e,#4b,#31,#4c,#c0,#4b
	db #d9,#4b,#38,#4c,#c0,#4b,#7e,#4b
	db #3f,#4c,#75,#4c,#d9,#4b,#a1,#4c
	db #d7,#4c,#7e,#4b,#f1,#4c,#75,#4c
	db #d9,#4b,#4a,#4d,#d7,#4c,#7e,#4b
	db #f1,#4c,#a3,#4d,#d9,#4b,#4a,#4d
	db #c9,#4d,#7e,#4b,#f1,#4c,#f4,#4d
	db #d9,#4b,#4a,#4d,#1a,#4e,#7e,#4b
	db #f1,#4c,#4d,#4e,#d9,#4b,#4a,#4d
	db #81,#4e,#d9,#4b,#bc,#4e,#81,#4e
	db #24,#4f,#bc,#4e,#81,#4e,#7e,#4b
	db #f1,#4c,#4d,#4e,#d9,#4b,#4a,#4d
	db #81,#4e,#7e,#4b,#f1,#4c,#64,#4f
	db #d9,#4b,#4a,#4d,#88,#4f,#c0,#4b
	db #f1,#4c,#a9,#4f,#c0,#4b,#4a,#4d
	db #eb,#4f,#2d,#50,#3f,#50,#98,#50
	db #2e,#ad,#50,#c3,#4a,#cd,#4a,#db
	db #4a,#e4,#4a,#fd,#4a,#1a,#4b,#54
	db #4b,#63,#4b,#ca,#4a,#cd,#4a,#ff
	db #37,#00,#00,#00,#00,#ca,#4a,#db
	db #4a,#00,#b7,#00,#0d,#0f,#0f,#0e
	db #0d,#0c,#0b,#e2,#4a,#e4,#4a,#00
	db #37,#00,#80,#0d,#fb,#4a,#fd,#4a
	db #00,#37,#00,#1f,#65,#c3,#01,#1f
	db #60,#fa,#01,#1f,#60,#a4,#02,#1f
	db #60,#a7,#06,#80,#0d,#18,#4b,#1a
	db #4b,#00,#37,#00,#1f,#6b,#d5,#00
	db #1f,#69,#2d,#01,#1f,#67,#2d,#01
	db #1f,#65,#52,#01,#1f,#63,#aa,#01
	db #80,#0d,#ca,#4a,#54,#4b,#00,#b7
	db #00,#0d,#2f,#0c,#0f,#2e,#0c,#0d
	db #2c,#0c,#0b,#2a,#0c,#09,#28,#0c
	db #07,#26,#0c,#05,#24,#0c,#06,#28
	db #0c,#08,#27,#0c,#07,#26,#0c,#06
	db #25,#0c,#05,#24,#0c,#04,#23,#0c
	db #02,#21,#0c,#03,#24,#0c,#04,#23
	db #0c,#02,#21,#0c,#ca,#4a,#63,#4b
	db #00,#b7,#00,#3f,#25,#10,#2f,#15
	db #2f,#17,#0f,#ca,#4a,#7e,#4b,#00
	db #b7,#00,#1f,#6b,#d5,#00,#1f,#69
	db #2d,#01,#1f,#67,#2d,#01,#1f,#65
	db #52,#01,#1f,#63,#aa,#01,#68,#80
	db #01,#5f,#5f,#6d,#5f,#5f,#6f,#5f
	db #5f,#69,#5f,#5f,#6d,#5f,#65,#5f
	db #69,#5f,#5f,#6d,#5f,#5f,#6f,#5f
	db #5f,#69,#5f,#5f,#6d,#5f,#65,#5f
	db #69,#5f,#5f,#6d,#5f,#5f,#6f,#5f
	db #5f,#69,#5f,#5f,#6d,#5f,#65,#5f
	db #69,#5f,#5f,#6d,#5f,#5f,#6f,#5f
	db #5f,#69,#5f,#5f,#6d,#5f,#65,#5f
	db #c2,#50,#80,#02,#c0,#1b,#c6,#04
	db #c6,#08,#c6,#0c,#49,#c0,#19,#c6
	db #02,#c6,#04,#c6,#06,#c6,#08,#c6
	db #0c,#5e,#80,#01,#57,#57,#61,#57
	db #57,#65,#57,#57,#61,#57,#57,#5f
	db #57,#5b,#57,#5f,#57,#57,#61,#57
	db #57,#65,#57,#57,#61,#57,#57,#5f
	db #57,#5b,#57,#6d,#65,#65,#6f,#65
	db #65,#73,#65,#65,#6f,#65,#65,#6d
	db #65,#69,#65,#6d,#65,#65,#6f,#65
	db #65,#73,#65,#65,#6f,#65,#65,#6d
	db #65,#69,#65,#3e,#80,#02,#c0,#19
	db #c6,#fe,#c6,#fc,#c6,#f8,#c6,#f4
	db #c6,#f0,#4d,#c0,#1c,#c6,#fe,#c6
	db #fc,#50,#80,#02,#c0,#1e,#49,#c2
	db #3e,#80,#02,#c0,#1e,#4d,#c2,#50
	db #80,#03,#d0,#51,#d0,#51,#d0,#51
	db #d2,#50,#80,#04,#51,#51,#50,#80
	db #03,#d0,#51,#d0,#51,#d6,#50,#80
	db #04,#d2,#48,#80,#03,#d0,#49,#d0
	db #49,#d0,#49,#d2,#48,#80,#04,#49
	db #49,#48,#80,#03,#d0,#49,#d0,#49
	db #d6,#48,#80,#04,#c2,#76,#80,#05
	db #d0,#77,#ce,#77,#77,#ce,#73,#d0
	db #6f,#d0,#6d,#ce,#69,#d0,#57,#d0
	db #5b,#ce,#5f,#da,#77,#d0,#77,#ce
	db #77,#77,#ce,#73,#d0,#6f,#d0,#6d
	db #ce,#69,#d0,#57,#d0,#5b,#ce,#5f
	db #c2,#3e,#80,#03,#d0,#3f,#d0,#3f
	db #d0,#3f,#d2,#3e,#80,#04,#3f,#3f
	db #3e,#80,#03,#d0,#3f,#d0,#3f,#d6
	db #3e,#80,#04,#d2,#4c,#80,#03,#d0
	db #4d,#d0,#4d,#d0,#4d,#d2,#4c,#80
	db #04,#4d,#4d,#4c,#80,#03,#d0,#4d
	db #d0,#4d,#d6,#4c,#80,#04,#c2,#76
	db #80,#05,#d0,#77,#d0,#79,#ce,#7d
	db #e0,#77,#d0,#79,#ce,#7d,#d2,#81
	db #d2,#7d,#d0,#73,#ce,#6f,#d0,#6d
	db #c2,#50,#80,#03,#d0,#51,#50,#80
	db #04,#ce,#50,#80,#03,#ce,#51,#d0
	db #51,#50,#80,#04,#ce,#50,#80,#03
	db #ce,#51,#d0,#51,#50,#80,#04,#ce
	db #50,#80,#03,#ce,#51,#d0,#51,#50
	db #80,#04,#ce,#50,#80,#03,#ce,#49
	db #d0,#49,#48,#80,#04,#ce,#48,#80
	db #03,#ce,#49,#d0,#49,#48,#80,#04
	db #ce,#48,#80,#03,#ce,#49,#d0,#49
	db #48,#80,#04,#ce,#48,#80,#03,#ce
	db #49,#d0,#49,#48,#80,#04,#48,#80
	db #03,#c2,#3e,#80,#03,#d0,#3f,#3e
	db #80,#04,#ce,#3e,#80,#03,#ce,#3f
	db #d0,#3f,#3e,#80,#04,#ce,#3e,#80
	db #03,#ce,#3f,#d0,#3f,#3e,#80,#04
	db #ce,#3e,#80,#03,#ce,#3f,#d0,#3f
	db #3e,#80,#04,#ce,#3e,#80,#03,#ce
	db #4d,#d0,#4d,#4c,#80,#04,#ce,#4c
	db #80,#03,#ce,#4d,#d0,#4d,#4c,#80
	db #04,#ce,#4c,#80,#03,#ce,#4d,#d0
	db #4d,#4c,#80,#04,#ce,#4c,#80,#03
	db #ce,#4d,#d0,#4d,#4c,#80,#04,#4c
	db #80,#03,#c2,#68,#80,#05,#d0,#6f
	db #d0,#73,#ce,#77,#da,#69,#d0,#6f
	db #d0,#73,#ce,#77,#d2,#81,#d2,#87
	db #d0,#85,#d0,#81,#ce,#77,#da,#87
	db #d0,#85,#d0,#81,#ce,#77,#d2,#73
	db #c2,#76,#80,#05,#d0,#6f,#d0,#73
	db #ce,#77,#de,#6f,#d0,#73,#d0,#77
	db #d2,#7d,#d2,#81,#d0,#7d,#d0,#87
	db #ce,#87,#ce,#85,#8b,#ce,#7d,#d0
	db #87,#d0,#85,#d0,#7d,#d0,#73,#7d
	db #d0,#6f,#7d,#6d,#68,#80,#05,#d0
	db #6f,#d0,#73,#ce,#77,#da,#69,#d0
	db #6f,#d0,#73,#ce,#77,#da,#6f,#d0
	db #73,#d0,#65,#ce,#69,#da,#6f,#d0
	db #73,#d0,#79,#ce,#77,#d2,#73,#ce
	db #77,#c2,#76,#80,#05,#d0,#6f,#d0
	db #73,#ce,#77,#d0,#87,#ce,#81,#7d
	db #ce,#77,#d0,#6f,#d0,#73,#ce,#77
	db #ce,#8f,#8f,#ce,#8b,#87,#ce,#6d
	db #d0,#6f,#d0,#73,#ce,#7d,#d0,#85
	db #d0,#87,#8b,#6d,#d0,#6f,#d0,#73
	db #ce,#7d,#d2,#6d,#c2,#68,#80,#05
	db #d0,#65,#69,#ce,#6f,#69,#d2,#5f
	db #ce,#65,#ce,#67,#69,#d0,#65,#69
	db #ce,#6f,#69,#d2,#5f,#ce,#65,#ce
	db #67,#69,#d0,#65,#69,#ce,#6f,#69
	db #d0,#73,#d0,#77,#d0,#6f,#69,#d4
	db #77,#ce,#6f,#69,#77,#6f,#69,#6d
	db #c2,#76,#80,#05,#6f,#65,#6f,#6d
	db #65,#73,#6f,#77,#d0,#87,#ce,#81
	db #7d,#ce,#77,#6f,#65,#6f,#6d,#65
	db #73,#6f,#77,#ce,#8f,#8f,#ce,#8b
	db #87,#ce,#6d,#65,#5b,#6f,#6d,#65
	db #73,#6d,#7d,#d0,#85,#d0,#87,#8b
	db #6d,#65,#5b,#6f,#6d,#65,#73,#6d
	db #7d,#d2,#6d,#c2,#1c,#80,#06,#1d
	db #ce,#1d,#1c,#80,#07,#ce,#1c,#80
	db #06,#ce,#1d,#1d,#ce,#1d,#1c,#80
	db #07,#ce,#1c,#80,#06,#ce,#1d,#1d
	db #ce,#1d,#1c,#80,#07,#ce,#1c,#80
	db #06,#ce,#1d,#1d,#ce,#1d,#1c,#80
	db #07,#ce,#1c,#80,#06,#ce,#1d,#1d
	db #ce,#1d,#1c,#80,#07,#ce,#1c,#80
	db #06,#ce,#1d,#1d,#ce,#1d,#1c,#80
	db #07,#ce,#1c,#80,#06,#ce,#1d,#1d
	db #ce,#1d,#1c,#80,#07,#ce,#1c,#80
	db #06,#ce,#1d,#1d,#1c,#80,#07,#1c
	db #80,#06,#1c,#80,#07,#1c,#80,#06
	db #1d,#1c,#80,#07,#30,#80,#06,#31
	db #2f,#2f,#2b,#2b,#27,#27,#23,#23
	db #21,#21,#d0,#1d,#d0,#1d,#d0,#1d
	db #ce,#1d,#d0,#1d,#ce,#1d,#ce,#1d
	db #d0,#1d,#1d,#d0,#1d,#d0,#1d,#d0
	db #1d,#ce,#1d,#ce,#1d,#d0,#1d,#d0
	db #1d,#ce,#1d,#ce,#1d,#ce,#1c,#80
	db #07,#ce,#1c,#80,#06,#1c,#80,#07
	db #1c,#80,#06,#1d,#68,#80,#05,#d0
	db #6f,#ce,#81,#81,#85,#87,#d0,#8b
	db #d0,#7d,#ce,#81,#ea,#81,#d0,#87
	db #d0,#8f,#ce,#8b,#ce,#87,#81,#ce
	db #7d,#d0,#81,#e2,#73,#ce,#77,#c2
	db #7c,#80,#05,#d0,#77,#d0,#7d,#d6
	db #81,#d2,#7d,#e2,#7d,#ce,#87,#ce
	db #8b,#87,#8b,#ce,#87,#8b,#ce,#87
	db #8b,#ce,#87,#8b,#ce,#81,#d0,#7d
	db #c2,#80,#80,#05,#87,#8f,#81,#87
	db #8f,#81,#87,#8f,#81,#87,#8f,#81
	db #87,#8f,#81,#87,#8f,#81,#87,#8f
	db #81,#87,#8f,#81,#87,#8f,#81,#87
	db #8f,#81,#87,#8f,#81,#87,#8f,#81
	db #87,#8f,#81,#87,#8f,#81,#87,#8f
	db #81,#87,#8f,#81,#87,#8f,#81,#87
	db #8f,#81,#87,#8f,#81,#87,#8f,#81
	db #87,#8f,#81,#6e,#80,#05,#77,#7d
	db #6f,#77,#7d,#6f,#77,#7d,#6f,#77
	db #7d,#6f,#77,#7d,#6f,#77,#7d,#6f
	db #77,#7d,#6f,#77,#7d,#6f,#77,#7d
	db #6f,#77,#7d,#6f,#77,#6f,#73,#7d
	db #6f,#73,#7d,#6f,#73,#7d,#6f,#73
	db #7d,#6f,#73,#7d,#6f,#6d,#73,#7d
	db #6d,#73,#7d,#6d,#73,#7d,#6d,#73
	db #7d,#6d,#73,#7d,#6d,#6e,#80,#05
	db #ce,#7d,#d4,#65,#d2,#6f,#d6,#65
	db #da,#6f,#d0,#65,#d0,#73,#c2,#3e
	db #80,#03,#d0,#3f,#3e,#80,#04,#ce
	db #3e,#80,#03,#ce,#3f,#d0,#3f,#3e
	db #80,#04,#ce,#3e,#80,#03,#ce,#3f
	db #d0,#3f,#3e,#80,#04,#ce,#3e,#80
	db #03,#ce,#3f,#d0,#3f,#3e,#80,#04
	db #ce,#3e,#80,#03,#ce,#3f,#d0,#3f
	db #3e,#80,#04,#ce,#3e,#80,#03,#ce
	db #3f,#d0,#3f,#3e,#80,#04,#ce,#3e
	db #80,#03,#ce,#3f,#d0,#3f,#3e,#80
	db #04,#ce,#3e,#80,#03,#ce,#3f,#d0
	db #3f,#3e,#80,#04,#1c,#80,#06,#c2
	db #6e,#80,#05,#d2,#77,#d2,#73,#d0
	db #6f,#6f,#d0,#6f,#d0,#57,#da,#77
	db #d2,#6f,#ce,#6f,#c2,#ff,#00,#00
;
	ds #5100-$,#00
;
.l5100
	db #53,#4b,#31,#30,#00,#51,#01,#32
	db #00,#1e,#51,#20,#51,#9e,#51,#a1
	db #51,#1a,#51,#1e,#51,#20,#51,#9e
	db #51,#06,#c0,#00,#00,#27,#7f,#14
	db #65,#53,#67,#53,#65,#53,#65,#53
	db #07,#54,#65,#53,#b8,#54,#07,#54
	db #65,#53,#b8,#54,#07,#54,#fa,#54
	db #b8,#54,#07,#54,#29,#55,#b8,#54
	db #07,#54,#4d,#55,#b8,#54,#07,#54
	db #6f,#55,#b8,#54,#07,#54,#9b,#55
	db #b8,#54,#07,#54,#c3,#55,#b8,#54
	db #67,#53,#65,#53,#b8,#54,#07,#54
	db #f0,#55,#b8,#54,#07,#54,#1f,#56
	db #b8,#54,#07,#54,#43,#56,#b8,#54
	db #07,#54,#65,#56,#b8,#54,#07,#54
	db #91,#56,#b8,#54,#07,#54,#b9,#56
	db #b8,#54,#07,#54,#e6,#56,#b8,#54
	db #07,#54,#18,#57,#b8,#54,#07,#54
	db #44,#57,#66,#57,#07,#54,#af,#57
	db #de,#57,#07,#54,#21,#58,#28,#50
	db #58,#b9,#51,#c3,#51,#da,#51,#e5
	db #51,#00,#52,#19,#52,#26,#52,#43
	db #52,#4c,#52,#5c,#52,#8b,#52,#18
	db #53,#c0,#51,#c3,#51,#ff,#37,#00
	db #00,#00,#00,#c0,#51,#da,#51,#00
	db #b7,#00,#1f,#65,#c3,#01,#1f,#60
	db #fa,#01,#1f,#60,#a4,#02,#1f,#60
	db #a7,#06,#c0,#51,#e5,#51,#00,#b7
	db #00,#1d,#0a,#1c,#05,#c0,#51,#00
	db #52,#00,#b7,#00,#1f,#6b,#d5,#00
	db #1f,#69,#2d,#01,#1f,#67,#2d,#01
	db #1e,#65,#52,#01,#1d,#63,#aa,#01
	db #17,#52,#19,#52,#00,#37,#00,#1f
	db #65,#c3,#01,#1f,#60,#fa,#01,#1f
	db #60,#a4,#02,#1f,#60,#a7,#06,#80
	db #0d,#24,#52,#26,#52,#00,#37,#00
	db #1d,#0a,#1c,#05,#80,#0d,#41,#52
	db #43,#52,#00,#37,#00,#1f,#6b,#d5
	db #00,#1f,#69,#2d,#01,#1f,#67,#2d
	db #01,#1e,#65,#52,#01,#1d,#63,#aa
	db #01,#80,#0d,#4a,#52,#4c,#52,#00
	db #37,#00,#80,#0d,#c0,#51,#5c,#52
	db #00,#b7,#00,#0e,#2d,#0c,#0c,#2b
	db #0c,#0d,#0c,#0b,#c0,#51,#8b,#52
	db #00,#b7,#00,#2d,#0c,#2f,#0c,#0f
	db #0f,#0f,#0f,#0e,#0e,#0e,#0e,#0e
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#08,#08,#07,#06,#05,#04
	db #03,#02,#01,#c0,#51,#18,#53,#00
	db #b7,#00,#4b,#02,#00,#0d,#4f,#fe
	db #ff,#4f,#fe,#ff,#4f,#02,#00,#0f
	db #4f,#fe,#ff,#4e,#fe,#ff,#4e,#02
	db #00,#0e,#4e,#fe,#ff,#4e,#fe,#ff
	db #4d,#02,#00,#0d,#4d,#fe,#ff,#4d
	db #fe,#ff,#4d,#02,#00,#0c,#4c,#fe
	db #ff,#4c,#fe,#ff,#4c,#02,#00,#0c
	db #4b,#fe,#ff,#4b,#fe,#ff,#4b,#02
	db #00,#0b,#4b,#fe,#ff,#4a,#fe,#ff
	db #4a,#02,#00,#0a,#4a,#fe,#ff,#49
	db #fe,#ff,#49,#02,#00,#09,#49,#fe
	db #ff,#48,#fe,#ff,#48,#02,#00,#08
	db #48,#fe,#ff,#47,#fe,#ff,#47,#02
	db #00,#07,#46,#fe,#ff,#46,#fe,#ff
	db #46,#02,#00,#05,#45,#fe,#ff,#45
	db #fe,#ff,#44,#02,#00,#04,#43,#fe
	db #ff,#43,#fe,#ff,#02,#41,#02,#00
	db #c0,#51,#65,#53,#00,#b7,#00,#0a
	db #0c,#2e,#0c,#0f,#0f,#2f,#0c,#0f
	db #0e,#2e,#0c,#0e,#0d,#2d,#0c,#0d
	db #0c,#2c,#0c,#0c,#0b,#2b,#0c,#0b
	db #0a,#2a,#0c,#0a,#09,#29,#0c,#09
	db #08,#28,#0c,#0c,#0c,#2c,#0c,#0b
	db #0b,#2b,#0c,#0a,#0a,#2a,#0c,#09
	db #09,#29,#0c,#08,#08,#28,#0c,#07
	db #07,#26,#0c,#06,#05,#25,#0c,#04
	db #04,#23,#0c,#02,#01,#ca,#c2,#48
	db #81,#01,#48,#80,#02,#49,#48,#80
	db #01,#48,#80,#03,#ce,#48,#80,#01
	db #48,#80,#02,#48,#80,#01,#49,#48
	db #80,#02,#48,#80,#01,#48,#80,#03
	db #ce,#48,#80,#01,#48,#80,#02,#48
	db #80,#01,#48,#80,#02,#49,#48,#80
	db #01,#48,#80,#03,#ce,#48,#80,#01
	db #48,#80,#02,#48,#80,#01,#49,#48
	db #80,#02,#48,#80,#01,#48,#80,#03
	db #ce,#48,#80,#01,#48,#80,#02,#48
	db #80,#01,#48,#80,#02,#49,#48,#80
	db #01,#48,#80,#03,#ce,#48,#80,#01
	db #48,#80,#02,#48,#80,#01,#49,#48
	db #80,#02,#48,#80,#01,#48,#80,#03
	db #ce,#48,#80,#01,#48,#80,#02,#48
	db #80,#01,#48,#80,#02,#49,#48,#80
	db #01,#48,#80,#03,#ce,#48,#80,#01
	db #48,#80,#02,#48,#80,#01,#49,#48
	db #80,#02,#48,#80,#01,#48,#80,#03
	db #ce,#48,#40,#fd,#48,#40,#03,#50
	db #81,#04,#50,#80,#05,#69,#50,#80
	db #04,#50,#80,#06,#68,#80,#07,#50
	db #80,#04,#50,#80,#05,#68,#80,#04
	db #51,#50,#80,#05,#68,#80,#04,#50
	db #80,#06,#50,#80,#07,#68,#80,#04
	db #50,#80,#05,#4c,#80,#04,#4c,#80
	db #05,#65,#4c,#80,#04,#4c,#80,#06
	db #64,#80,#07,#4c,#80,#04,#4c,#80
	db #05,#64,#80,#04,#4d,#4c,#80,#05
	db #64,#80,#04,#4c,#80,#06,#4c,#80
	db #07,#64,#80,#04,#4c,#80,#05,#42
	db #80,#04,#42,#80,#05,#5b,#42,#80
	db #04,#42,#80,#06,#5a,#80,#07,#42
	db #80,#04,#42,#80,#05,#5a,#80,#04
	db #43,#42,#80,#05,#5a,#80,#04,#42
	db #80,#06,#42,#80,#07,#5a,#80,#04
	db #42,#80,#05,#50,#80,#04,#50,#80
	db #05,#69,#50,#80,#04,#50,#80,#06
	db #68,#80,#07,#50,#80,#04,#50,#80
	db #05,#68,#80,#04,#51,#4c,#80,#05
	db #64,#80,#04,#4e,#80,#06,#66,#80
	db #07,#4e,#c0,#06,#fd,#66,#40,#03
	db #68,#81,#08,#77,#81,#69,#77,#81
	db #69,#77,#81,#69,#77,#81,#69,#77
	db #81,#69,#65,#77,#81,#65,#77,#81
	db #65,#77,#81,#65,#77,#81,#65,#77
	db #81,#65,#5b,#69,#73,#5b,#69,#73
	db #5b,#69,#73,#5b,#69,#73,#5b,#69
	db #73,#5b,#69,#77,#81,#69,#77,#81
	db #69,#77,#81,#69,#77,#81,#69,#77
	db #81,#65,#70,#81,#09,#dc,#71,#73
	db #77,#ce,#73,#71,#ce,#65,#ce,#71
	db #6d,#d6,#6d,#71,#73,#ce,#71,#6d
	db #ce,#5b,#ce,#6d,#69,#d6,#69,#6d
	db #71,#ce,#6d,#69,#ce,#63,#d0,#65
	db #63,#5f,#d0,#5b,#d0,#5f,#d0,#69
	db #c2,#70,#81,#09,#dc,#71,#73,#77
	db #ce,#81,#d0,#73,#e2,#73,#ce,#71
	db #ce,#69,#de,#63,#ce,#5f,#ce,#69
	db #d6,#69,#71,#73,#71,#69,#63,#5f
	db #5b,#59,#5f,#69,#73,#76,#81,#09
	db #de,#73,#ce,#71,#ce,#73,#ce,#77
	db #d2,#69,#d2,#6f,#d2,#6d,#d2,#69
	db #de,#7b,#ce,#77,#ce,#73,#ce,#71
	db #ce,#73,#ce,#77,#ce,#69,#c2,#70
	db #81,#09,#73,#77,#69,#d0,#71,#73
	db #77,#69,#d0,#71,#73,#77,#65,#d4
	db #69,#d2,#6f,#d2,#6d,#d2,#69,#de
	db #63,#ce,#73,#ce,#71,#ce,#65,#69
	db #69,#d0,#65,#69,#69,#ce,#65,#69
	db #69,#77,#c2,#64,#81,#09,#69,#69
	db #d0,#65,#69,#69,#d0,#65,#69,#69
	db #6f,#6d,#69,#5f,#65,#e0,#77,#ce
	db #7d,#87,#85,#81,#77,#73,#d8,#73
	db #ce,#77,#ce,#73,#ce,#73,#71,#69
	db #5f,#59,#c2,#6c,#81,#09,#ce,#71
	db #ce,#73,#ce,#71,#d6,#69,#d2,#65
	db #d6,#5f,#65,#ce,#5f,#65,#5f,#65
	db #69,#d0,#5b,#e2,#77,#ce,#73,#ce
	db #73,#ce,#71,#ce,#69,#ce,#71,#ce
	db #73,#ce,#71,#ce,#69,#ce,#5f,#c2
	db #70,#81,#0a,#dc,#71,#73,#77,#ce
	db #73,#71,#ce,#65,#ce,#71,#6d,#d6
	db #6d,#71,#73,#ce,#71,#6d,#ce,#5b
	db #ce,#6d,#69,#d6,#69,#6d,#71,#ce
	db #6d,#69,#ce,#63,#d0,#65,#63,#5f
	db #d0,#5b,#d0,#5f,#d0,#69,#c2,#70
	db #81,#0a,#dc,#71,#73,#77,#ce,#81
	db #d0,#73,#e2,#73,#ce,#71,#ce,#69
	db #de,#63,#ce,#5f,#ce,#69,#d6,#69
	db #71,#73,#71,#69,#63,#5f,#5b,#59
	db #5f,#69,#73,#76,#81,#0a,#de,#73
	db #ce,#71,#ce,#73,#ce,#77,#d2,#69
	db #d2,#6f,#d2,#6d,#d2,#69,#de,#7b
	db #ce,#77,#ce,#73,#ce,#71,#ce,#73
	db #ce,#77,#ce,#69,#c2,#70,#81,#0a
	db #73,#77,#69,#d0,#71,#73,#77,#69
	db #d0,#71,#73,#77,#65,#d4,#69,#d2
	db #6f,#d2,#6d,#d2,#69,#de,#63,#ce
	db #73,#ce,#71,#ce,#65,#69,#69,#d0
	db #65,#69,#69,#ce,#65,#69,#69,#77
	db #c2,#64,#81,#0a,#69,#69,#d0,#65
	db #69,#69,#d0,#65,#69,#69,#6f,#6d
	db #69,#5f,#65,#e0,#77,#ce,#7d,#87
	db #85,#81,#77,#73,#d8,#73,#ce,#77
	db #ce,#73,#ce,#73,#71,#69,#5f,#59
	db #c2,#6c,#81,#0a,#ce,#71,#ce,#73
	db #ce,#71,#d6,#69,#d2,#65,#d6,#5f
	db #65,#ce,#5f,#65,#5f,#65,#69,#d0
	db #5b,#e2,#77,#ce,#73,#ce,#73,#ce
	db #71,#ce,#69,#ce,#71,#ce,#73,#ce
	db #71,#ce,#69,#ce,#5f,#c2,#76,#81
	db #0b,#7d,#81,#77,#7d,#81,#77,#7d
	db #81,#77,#7d,#81,#77,#ce,#73,#71
	db #6d,#de,#73,#ce,#71,#ce,#6d,#ce
	db #69,#de,#7b,#ce,#77,#ce,#73,#ce
	db #71,#ce,#69,#ce,#5f,#ce,#5b,#ce
	db #59,#5f,#69,#73,#71,#69,#71,#77
	db #70,#81,#0b,#73,#77,#69,#d0,#71
	db #73,#77,#69,#d0,#71,#73,#77,#65
	db #d4,#69,#d2,#6f,#d2,#6d,#d2,#69
	db #de,#63,#ce,#73,#ce,#71,#ce,#65
	db #69,#69,#d0,#65,#69,#69,#ce,#65
	db #69,#69,#77,#c2,#76,#81,#0b,#de
	db #73,#ce,#71,#ce,#73,#ce,#77,#d2
	db #69,#d2,#6f,#d2,#6d,#d2,#69,#de
	db #7b,#ce,#77,#ce,#73,#ce,#71,#ce
	db #73,#ce,#77,#ce,#69,#c2,#68,#81
	db #08,#77,#81,#69,#77,#81,#69,#77
	db #80,#03,#69,#77,#81,#69,#77,#81
	db #69,#64,#05,#77,#81,#65,#77,#81
	db #65,#77,#80,#07,#65,#77,#81,#65
	db #77,#81,#65,#5a,#09,#69,#73,#5b
	db #69,#73,#5b,#69,#72,#0b,#5b,#69
	db #73,#5b,#69,#73,#5b,#68,#0d,#77
	db #81,#69,#77,#81,#69,#77,#80,#0f
	db #69,#77,#81,#69,#77,#81,#65,#76
	db #81,#0b,#da,#c4,#01,#ce,#73,#ce
	db #71,#ce,#73,#ce,#76,#05,#d2,#69
	db #d2,#6e,#07,#d2,#6d,#d2,#68,#09
	db #da,#c4,#05,#ce,#7b,#ce,#77,#ce
	db #73,#ce,#70,#0d,#ce,#73,#ce,#77
	db #ce,#69,#ce,#c4,#07,#c2,#68,#91
	db #08,#77,#81,#69,#77,#81,#69,#77
	db #80,#13,#69,#77,#81,#69,#77,#81
	db #69,#64,#15,#77,#81,#65,#77,#81
	db #65,#77,#80,#17,#65,#77,#81,#65
	db #77,#81,#65,#5a,#19,#69,#73,#5b
	db #69,#73,#5b,#69,#72,#1b,#5b,#69
	db #73,#5b,#69,#73,#5b,#68,#1d,#77
	db #81,#69,#77,#81,#69,#77,#c4,#0f
	db #c2,#76,#91,#0b,#da,#c4,#09,#ce
	db #73,#ce,#71,#ce,#73,#ce,#76,#15
	db #d2,#69,#d2,#6e,#17,#d2,#6d,#d2
	db #68,#19,#da,#c4,#0d,#ce,#7b,#ce
	db #77,#ce,#73,#ce,#70,#1d,#ce,#73
	db #ce,#77,#ce,#69,#ce,#c4,#0f,#c2
	db #ff
;
	ds #5900-$,#00
;
.l5900
	db #53,#4b,#31,#30,#00,#59,#01,#32
	db #00,#1e,#59,#20,#59,#0a,#5a,#10
	db #5a,#1a,#59,#1e,#59,#20,#59,#0a
	db #5a,#05,#c0,#00,#00,#4b,#7f,#26
	db #76,#5c,#f7,#5c,#f7,#5c,#f8,#5c
	db #f7,#5c,#76,#5c,#f8,#5c,#f7,#5c
	db #3a,#5d,#f8,#5c,#bb,#5d,#3a,#5d
	db #f8,#5c,#df,#5d,#3a,#5d,#0b,#5e
	db #49,#5e,#74,#5e,#f8,#5c,#fd,#5e
	db #74,#5e,#22,#5f,#a4,#5f,#2d,#60
	db #2d,#60,#f7,#5c,#6f,#60,#2d,#60
	db #f8,#60,#6f,#60,#2d,#60,#20,#61
	db #6f,#60,#2d,#60,#4c,#61,#6f,#60
	db #2d,#60,#77,#61,#6f,#60,#2d,#60
	db #a2,#61,#6f,#60,#2d,#60,#d1,#61
	db #6f,#60,#fe,#61,#40,#62,#6f,#62
	db #fe,#61,#f8,#62,#6f,#62,#fe,#61
	db #32,#63,#6f,#60,#fe,#61,#6c,#63
	db #b0,#63,#fe,#61,#6c,#63,#dd,#63
	db #fe,#61,#6c,#63,#17,#64,#fe,#61
	db #6c,#63,#dd,#63,#fe,#61,#46,#64
	db #80,#64,#fe,#61,#32,#63,#6f,#60
	db #22,#5f,#a4,#5f,#2d,#60,#92,#64
	db #f7,#5c,#2d,#60,#f8,#5c,#bb,#5d
	db #3a,#5d,#0b,#5e,#49,#5e,#74,#5e
	db #2d,#60,#f8,#60,#6f,#60,#fe,#61
	db #40,#62,#6f,#62,#fe,#61,#f8,#62
	db #6f,#62,#fe,#61,#46,#64,#80,#64
	db #fe,#61,#6c,#63,#b0,#63,#fe,#61
	db #6c,#63,#dd,#63,#fe,#61,#6c,#63
	db #dd,#63,#f7,#5c,#6c,#63,#dd,#63
	db #f7,#5c,#6c,#63,#b0,#63,#fe,#61
	db #f7,#5c,#dd,#63,#f7,#5c,#f7,#5c
	db #13,#65,#4a,#55,#65,#01,#57,#65
	db #26,#5a,#30,#5a,#43,#5a,#4e,#5a
	db #61,#5a,#7a,#5a,#90,#5a,#9e,#5a
	db #b4,#5a,#8f,#5b,#6c,#5c,#2d,#5a
	db #30,#5a,#ff,#37,#00,#00,#00,#00
	db #2d,#5a,#43,#5a,#00,#b7,#00,#1f
	db #7f,#c3,#01,#1e,#60,#fa,#01,#1d
	db #60,#a4,#02,#2d,#5a,#4e,#5a,#00
	db #b7,#00,#1d,#05,#1c,#03,#2d,#5a
	db #61,#5a,#00,#b7,#00,#1f,#67,#d5
	db #00,#1e,#65,#52,#01,#1d,#63,#aa
	db #01,#2d,#5a,#7a,#5a,#00,#b7,#00
	db #0d,#0d,#2c,#0c,#2c,#0c,#0b,#0b
	db #2a,#0c,#2a,#0c,#09,#09,#28,#0c
	db #28,#0c,#8d,#5a,#90,#5a,#00,#37
	db #00,#1f,#7f,#c3,#01,#1e,#60,#fa
	db #01,#1d,#60,#a4,#02,#82,#16,#fd
	db #9b,#5a,#9e,#5a,#00,#37,#00,#1d
	db #05,#1c,#03,#82,#16,#fd,#b1,#5a
	db #b4,#5a,#00,#37,#00,#1f,#67,#d5
	db #00,#1e,#65,#52,#01,#1d,#63,#aa
	db #01,#82,#16,#fd,#2d,#5a,#8f,#5b
	db #00,#b7,#00,#2b,#fd,#2d,#fd,#2f
	db #fd,#6f,#fd,#fe,#ff,#6f,#fd,#fe
	db #ff,#6f,#fd,#fe,#ff,#2f,#fd,#2e
	db #fd,#2e,#fd,#6e,#fd,#fe,#ff,#6e
	db #fd,#fe,#ff,#6e,#fd,#fe,#ff,#2d
	db #fd,#2d,#fd,#2d,#fd,#6d,#fd,#fe
	db #ff,#6d,#fd,#fe,#ff,#6c,#fd,#fe
	db #ff,#2c,#fd,#2c,#fd,#2c,#fd,#6c
	db #fd,#fe,#ff,#6b,#fd,#fe,#ff,#6b
	db #fd,#fe,#ff,#2a,#fd,#2a,#fd,#29
	db #fd,#69,#fd,#fe,#ff,#68,#fd,#fe
	db #ff,#68,#fd,#fe,#ff,#27,#fd,#27
	db #fd,#27,#fd,#67,#fd,#fe,#ff,#67
	db #fd,#fe,#ff,#67,#fd,#fe,#ff,#26
	db #fd,#26,#fd,#26,#fd,#66,#fd,#fe
	db #ff,#66,#fd,#fe,#ff,#65,#fd,#fe
	db #ff,#25,#fd,#25,#fd,#25,#fd,#65
	db #fd,#fe,#ff,#65,#fd,#fe,#ff,#64
	db #fd,#fe,#ff,#24,#fd,#24,#fd,#24
	db #fd,#64,#fd,#fe,#ff,#64,#fd,#fe
	db #ff,#63,#fd,#fe,#ff,#23,#fd,#23
	db #fd,#23,#fd,#63,#fd,#fe,#ff,#63
	db #fd,#fe,#ff,#62,#fd,#fe,#ff,#22
	db #fd,#22,#fd,#22,#fd,#62,#fd,#fe
	db #ff,#61,#fd,#fe,#ff,#61,#fd,#fe
	db #ff,#21,#fd,#21,#fd,#21,#fd,#61
	db #fd,#fe,#ff,#61,#fd,#fe,#ff,#2d
	db #5a,#6c,#5c,#00,#b7,#00,#6b,#fd
	db #fe,#ff,#6d,#fd,#fe,#ff,#6f,#fd
	db #fe,#ff,#2f,#fd,#2f,#fd,#2f,#fd
	db #6f,#fd,#fe,#ff,#6e,#fd,#fe,#ff
	db #6e,#fd,#fe,#ff,#2e,#fd,#2e,#fd
	db #2e,#fd,#6d,#fd,#fe,#ff,#6d,#fd
	db #fe,#ff,#6d,#fd,#fe,#ff,#2d,#fd
	db #2d,#fd,#2c,#fd,#6c,#fd,#fe,#ff
	db #6c,#fd,#fe,#ff,#6c,#fd,#fe,#ff
	db #2c,#fd,#2b,#fd,#2b,#fd,#6a,#fd
	db #fe,#ff,#6a,#fd,#fe,#ff,#69,#fd
	db #fe,#ff,#29,#fd,#28,#fd,#28,#fd
	db #67,#fd,#fe,#ff,#67,#fd,#fe,#ff
	db #67,#fd,#fe,#ff,#27,#fd,#27,#fd
	db #27,#fd,#66,#fd,#fe,#ff,#66,#fd
	db #fe,#ff,#66,#fd,#fe,#ff,#26,#fd
	db #26,#fd,#25,#fd,#65,#fd,#fe,#ff
	db #65,#fd,#fe,#ff,#65,#fd,#fe,#ff
	db #25,#fd,#25,#fd,#24,#fd,#64,#fd
	db #fe,#ff,#64,#fd,#fe,#ff,#64,#fd
	db #fe,#ff,#24,#fd,#24,#fd,#23,#fd
	db #63,#fd,#fe,#ff,#63,#fd,#fe,#ff
	db #63,#fd,#fe,#ff,#23,#fd,#23,#fd
	db #22,#fd,#62,#fd,#fe,#ff,#62,#fd
	db #fe,#ff,#62,#fd,#fe,#ff,#22,#fd
	db #21,#fd,#21,#fd,#61,#fd,#fe,#ff
	db #61,#fd,#fe,#ff,#61,#fd,#fe,#ff
	db #21,#fd,#21,#fd,#73,#5c,#76,#5c
	db #00,#37,#00,#82,#16,#fd,#48,#81
	db #01,#ce,#48,#80,#02,#ce,#48,#80
	db #01,#ce,#48,#80,#02,#ce,#48,#80
	db #01,#ce,#48,#80,#02,#ce,#48,#80
	db #01,#ce,#48,#80,#02,#ce,#48,#80
	db #01,#ce,#48,#80,#02,#ce,#48,#80
	db #01,#ce,#48,#80,#02,#ce,#48,#80
	db #01,#ce,#48,#80,#02,#ce,#48,#80
	db #01,#ce,#48,#80,#02,#ce,#48,#80
	db #01,#ce,#48,#80,#02,#ce,#48,#80
	db #01,#ce,#48,#80,#02,#ce,#48,#80
	db #01,#ce,#48,#80,#02,#ce,#48,#80
	db #01,#ce,#48,#80,#02,#ce,#48,#80
	db #01,#ce,#48,#80,#02,#ce,#48,#80
	db #01,#ce,#48,#80,#02,#ce,#48,#80
	db #01,#48,#80,#03,#48,#03,#48,#05
	db #48,#07,#ce,#48,#03,#48,#01,#c2
	db #6c,#81,#04,#ce,#6d,#ce,#7b,#ce
	db #6d,#77,#ce,#6d,#7b,#ce,#6d,#ce
	db #73,#ce,#65,#ce,#65,#ce,#73,#ce
	db #65,#71,#ce,#65,#73,#ce,#65,#ce
	db #6d,#ce,#69,#ce,#69,#ce,#77,#ce
	db #69,#73,#ce,#69,#77,#ce,#69,#ce
	db #71,#ce,#63,#ce,#63,#ce,#71,#ce
	db #63,#6d,#ce,#63,#71,#ce,#63,#ce
	db #6b,#c2,#72,#81,#05,#ce,#72,#80
	db #06,#ce,#72,#80,#05,#ce,#72,#80
	db #06,#ce,#72,#80,#05,#ce,#72,#80
	db #06,#ce,#72,#80,#05,#ce,#72,#80
	db #06,#ce,#6a,#80,#05,#ce,#6a,#80
	db #06,#ce,#6a,#80,#05,#ce,#6a,#80
	db #06,#ce,#6a,#80,#05,#ce,#6a,#80
	db #06,#ce,#6a,#80,#05,#ce,#6a,#80
	db #06,#ce,#6e,#80,#05,#ce,#6e,#80
	db #06,#ce,#6e,#80,#05,#ce,#6e,#80
	db #06,#ce,#6e,#80,#05,#ce,#6e,#80
	db #06,#ce,#6e,#80,#05,#ce,#6e,#80
	db #06,#ce,#68,#80,#05,#ce,#68,#80
	db #06,#ce,#68,#80,#05,#ce,#68,#80
	db #06,#ce,#68,#80,#05,#68,#80,#07
	db #68,#03,#68,#05,#68,#07,#ce,#68
	db #03,#68,#01,#72,#81,#08,#d2,#77
	db #d0,#79,#d0,#7d,#d2,#81,#ce,#73
	db #dc,#8b,#8b,#ce,#8b,#8b,#d0,#8b
	db #ce,#87,#ce,#81,#ce,#87,#ce,#7f
	db #ce,#7d,#ce,#79,#ce,#7d,#c2,#72
	db #81,#08,#d2,#77,#d0,#79,#d0,#7d
	db #d2,#81,#ce,#73,#dc,#8b,#8b,#ce
	db #8b,#8b,#d0,#8b,#ce,#8f,#ce,#87
	db #ce,#7d,#ce,#79,#ce,#77,#ce,#73
	db #ce,#6f,#d2,#6f,#ce,#7d,#d2,#79
	db #ce,#77,#c2,#6c,#81,#04,#ce,#6d
	db #ce,#7b,#ce,#6d,#77,#ce,#6d,#7b
	db #ce,#6d,#ce,#73,#ce,#65,#ce,#65
	db #ce,#73,#ce,#65,#71,#ce,#65,#73
	db #ce,#65,#ce,#6d,#ce,#69,#ce,#69
	db #ce,#77,#ce,#69,#73,#ce,#69,#77
	db #ce,#69,#ce,#71,#ce,#63,#ce,#63
	db #ce,#71,#ce,#63,#6d,#ce,#63,#71
	db #c2,#d0,#72,#81,#08,#ce,#81,#d2
	db #7d,#ce,#79,#da,#73,#ce,#81,#d2
	db #7d,#ce,#79,#ce,#87,#ce,#8b,#ce
	db #8f,#ce,#8b,#8f,#ce,#8b,#8f,#ce
	db #8b,#8f,#ce,#8b,#8f,#ce,#8b,#ce
	db #89,#ce,#81,#c2,#72,#81,#05,#ce
	db #72,#80,#06,#72,#80,#05,#72,#80
	db #07,#72,#80,#06,#72,#80,#05,#ce
	db #72,#80,#06,#ce,#72,#80,#05,#ce
	db #72,#80,#07,#72,#80,#05,#d0,#6b
	db #ce,#6a,#80,#06,#6a,#80,#05,#6a
	db #80,#07,#6a,#80,#06,#6a,#80,#05
	db #ce,#6a,#80,#06,#ce,#6a,#80,#05
	db #ce,#6a,#80,#07,#6a,#80,#05,#d0
	db #6f,#ce,#6e,#80,#06,#6e,#80,#05
	db #6e,#80,#07,#6e,#80,#06,#6e,#80
	db #05,#ce,#6e,#80,#06,#ce,#6e,#80
	db #05,#ce,#6e,#80,#07,#6e,#80,#05
	db #d0,#69,#ce,#68,#80,#06,#68,#80
	db #05,#68,#80,#07,#68,#80,#06,#68
	db #80,#05,#ce,#68,#80,#06,#68,#80
	db #07,#68,#03,#68,#05,#68,#07,#68
	db #09,#68,#03,#68,#01,#d0,#72,#80
	db #08,#77,#79,#77,#73,#6f,#73,#de
	db #73,#77,#79,#77,#73,#6f,#73,#d2
	db #8b,#d2,#87,#d2,#7d,#7d,#7d,#7d
	db #7d,#d2,#7d,#ce,#87,#ce,#81,#da
	db #89,#c2,#48,#81,#01,#ce,#48,#80
	db #02,#ce,#48,#80,#01,#ce,#48,#80
	db #02,#ce,#48,#80,#01,#ce,#48,#80
	db #02,#ce,#48,#80,#01,#ce,#48,#80
	db #02,#ce,#48,#80,#01,#ce,#48,#80
	db #02,#ce,#48,#80,#01,#ce,#48,#80
	db #02,#ce,#48,#80,#01,#ce,#48,#80
	db #02,#ce,#48,#80,#01,#ce,#48,#80
	db #02,#ce,#48,#80,#01,#ce,#48,#80
	db #02,#ce,#48,#80,#01,#ce,#48,#80
	db #02,#ce,#48,#80,#01,#ce,#48,#80
	db #02,#ce,#48,#80,#01,#ce,#48,#80
	db #02,#ce,#64,#80,#05,#ce,#64,#80
	db #06,#ce,#64,#80,#05,#ce,#64,#80
	db #06,#ce,#64,#80,#05,#64,#80,#07
	db #64,#03,#64,#05,#64,#07,#ce,#64
	db #03,#64,#81,#03,#48,#81,#01,#ce
	db #48,#80,#02,#48,#80,#01,#48,#80
	db #03,#48,#80,#02,#48,#80,#01,#ce
	db #48,#80,#02,#ce,#48,#80,#01,#ce
	db #48,#80,#03,#48,#80,#01,#d0,#49
	db #ce,#48,#80,#02,#48,#80,#01,#48
	db #80,#03,#48,#80,#02,#48,#80,#01
	db #ce,#48,#80,#02,#ce,#48,#80,#01
	db #ce,#48,#80,#03,#48,#80,#01,#d0
	db #49,#ce,#48,#80,#02,#48,#80,#01
	db #48,#80,#03,#48,#80,#02,#48,#80
	db #01,#ce,#48,#80,#02,#ce,#48,#80
	db #01,#ce,#48,#80,#03,#48,#80,#01
	db #d0,#49,#ce,#48,#80,#02,#48,#80
	db #01,#48,#80,#03,#48,#80,#02,#48
	db #80,#01,#ce,#48,#80,#02,#48,#80
	db #03,#48,#03,#48,#05,#48,#07,#48
	db #09,#48,#03,#48,#01,#6c,#81,#04
	db #ce,#6d,#ce,#7b,#ce,#6d,#77,#ce
	db #6d,#7b,#ce,#6d,#ce,#73,#ce,#63
	db #ce,#63,#ce,#71,#ce,#63,#6d,#ce
	db #63,#71,#ce,#63,#ce,#6d,#ce,#69
	db #ce,#69,#ce,#77,#ce,#69,#73,#ce
	db #69,#77,#ce,#69,#ce,#71,#ce,#5f
	db #ce,#5f,#ce,#6d,#ce,#5f,#69,#ce
	db #5f,#6d,#ce,#5f,#ce,#67,#c2,#72
	db #81,#05,#ce,#72,#80,#06,#72,#80
	db #05,#72,#80,#07,#72,#80,#06,#72
	db #80,#05,#ce,#72,#80,#06,#ce,#72
	db #80,#05,#ce,#72,#80,#07,#72,#80
	db #05,#d0,#69,#ce,#68,#80,#06,#68
	db #80,#05,#68,#80,#07,#68,#80,#06
	db #68,#80,#05,#ce,#68,#80,#06,#ce
	db #68,#80,#05,#ce,#68,#80,#07,#68
	db #80,#05,#d0,#6f,#ce,#6e,#80,#06
	db #6e,#80,#05,#6e,#80,#07,#6e,#80
	db #06,#6e,#80,#05,#ce,#6e,#80,#06
	db #ce,#6e,#80,#05,#ce,#6e,#80,#07
	db #6e,#80,#05,#d0,#65,#ce,#64,#80
	db #06,#64,#80,#05,#64,#80,#07,#64
	db #80,#06,#64,#80,#05,#ce,#64,#80
	db #06,#64,#80,#07,#64,#03,#64,#05
	db #64,#07,#64,#09,#64,#03,#64,#01
	db #8a,#81,#08,#d6,#8b,#ce,#8b,#ce
	db #8f,#d2,#8f,#d6,#8b,#ce,#87,#d2
	db #8b,#d2,#7d,#81,#ce,#81,#81,#ce
	db #7d,#de,#7d,#81,#ce,#81,#81,#ce
	db #7d,#ce,#79,#ce,#7d,#ce,#81,#c2
	db #8a,#81,#08,#d6,#8b,#ce,#8b,#ce
	db #8f,#d2,#8f,#d6,#8b,#ce,#87,#d2
	db #8b,#d2,#7d,#81,#ce,#81,#81,#ce
	db #7d,#de,#7d,#81,#ce,#81,#81,#ce
	db #7d,#ce,#79,#ce,#7d,#ce,#81,#ce
	db #87,#ce,#8b,#c2,#d8,#86,#81,#08
	db #8b,#ce,#8b,#8b,#ce,#87,#ce,#81
	db #da,#7d,#81,#ce,#81,#81,#ce,#7d
	db #ce,#87,#ce,#81,#ce,#7d,#ce,#79
	db #ce,#7d,#de,#81,#ce,#7d,#ce,#79
	db #ce,#7d,#d6,#79,#ce,#73,#c2,#d8
	db #86,#81,#08,#8b,#ce,#8b,#8b,#ce
	db #87,#ce,#8b,#da,#8f,#8b,#81,#87
	db #81,#7d,#81,#7d,#79,#7d,#81,#d6
	db #7d,#da,#79,#7d,#81,#d2,#87,#ce
	db #81,#ce,#7d,#ce,#81,#ce,#7d,#ce
	db #79,#7d,#80,#81,#08,#d6,#81,#ce
	db #81,#ce,#7d,#ce,#79,#d2,#77,#d6
	db #6f,#ce,#77,#d2,#81,#ce,#7d,#ce
	db #7d,#d6,#7d,#ce,#7d,#ce,#81,#ce
	db #87,#d2,#8b,#ce,#85,#ce,#7d,#d0
	db #8b,#8b,#ce,#85,#ce,#7d,#ce,#81
	db #85,#80,#81,#08,#d6,#81,#ce,#81
	db #ce,#85,#ce,#8b,#d2,#8f,#d6,#8b
	db #ce,#81,#d2,#81,#ce,#7f,#ce,#7d
	db #d6,#77,#ce,#7d,#ce,#87,#ce,#8f
	db #d2,#8b,#d0,#85,#85,#7d,#73,#6d
	db #73,#7d,#85,#8b,#7d,#c2,#6c,#81
	db #04,#ce,#6d,#ce,#7b,#ce,#6d,#77
	db #ce,#6d,#7b,#ce,#6d,#ce,#7b,#ce
	db #63,#ce,#63,#ce,#71,#ce,#63,#6d
	db #ce,#63,#71,#ce,#63,#ce,#6d,#ce
	db #69,#ce,#69,#ce,#77,#ce,#69,#73
	db #ce,#69,#77,#ce,#69,#ce,#71,#ce
	db #5f,#ce,#5f,#ce,#6d,#ce,#5f,#69
	db #ce,#5f,#6d,#ce,#5f,#ce,#67,#c2
	db #8a,#81,#08,#d6,#8b,#ce,#8b,#ce
	db #87,#ce,#81,#87,#81,#7d,#81,#da
	db #81,#ce,#81,#ce,#85,#ce,#87,#da
	db #87,#ce,#87,#ce,#83,#ce,#7d,#83
	db #7d,#79,#7d,#d4,#8f,#8f,#8f,#8f
	db #8b,#8b,#81,#85,#ce,#8b,#c2,#72
	db #81,#05,#ce,#72,#80,#06,#72,#80
	db #05,#72,#80,#07,#72,#80,#06,#72
	db #80,#05,#ce,#8a,#80,#06,#ce,#8a
	db #80,#05,#ce,#8a,#80,#07,#8a,#80
	db #05,#d0,#69,#ce,#68,#80,#06,#68
	db #80,#05,#68,#80,#07,#68,#80,#06
	db #68,#80,#05,#ce,#80,#80,#06,#ce
	db #80,#80,#05,#ce,#80,#80,#07,#80
	db #80,#05,#d0,#6f,#ce,#6e,#80,#06
	db #6e,#80,#05,#6e,#80,#07,#6e,#80
	db #06,#6e,#80,#05,#ce,#86,#80,#06
	db #ce,#86,#80,#05,#ce,#86,#80,#07
	db #86,#80,#05,#d0,#65,#ce,#64,#80
	db #06,#64,#80,#05,#64,#80,#07,#64
	db #80,#06,#64,#80,#05,#ce,#7c,#80
	db #06,#7c,#80,#07,#7c,#03,#7c,#05
	db #7c,#07,#7c,#09,#7c,#03,#7c,#01
	db #8e,#81,#08,#8b,#81,#8f,#8b,#81
	db #8f,#8b,#81,#8f,#8b,#81,#8f,#8b
	db #81,#8f,#89,#ce,#81,#ce,#77,#ce
	db #71,#d2,#71,#ce,#77,#ce,#81,#ce
	db #87,#85,#7d,#87,#85,#7d,#87,#85
	db #7d,#87,#85,#7d,#87,#85,#7d,#87
	db #85,#ce,#7d,#ce,#73,#ce,#6d,#ce
	db #65,#c2,#80,#81,#08,#7b,#73,#69
	db #73,#7b,#81,#8b,#81,#7b,#69,#73
	db #7b,#d2,#77,#71,#69,#71,#77,#81
	db #89,#8f,#89,#81,#71,#77,#81,#d2
	db #7d,#77,#6f,#65,#6f,#77,#7d,#87
	db #7d,#77,#6f,#77,#7d,#d2,#8b,#85
	db #7d,#85,#85,#7d,#73,#6d,#73,#7d
	db #85,#8b,#7d,#c2,#80,#87,#08,#7a
	db #05,#73,#69,#73,#7b,#80,#07,#8a
	db #05,#80,#07,#7a,#05,#69,#73,#7b
	db #d2,#77,#71,#69,#71,#77,#81,#89
	db #8f,#89,#81,#71,#77,#80,#07,#d2
	db #7d,#76,#05,#6f,#65,#6f,#77,#7d
	db #87,#7c,#07,#76,#05,#6f,#77,#7d
	db #d2,#8a,#07,#85,#7d,#85,#85,#7d
	db #73,#6d,#73,#7d,#85,#8b,#7d,#c2
	db #80,#81,#09,#d6,#81,#ce,#81,#ce
	db #85,#ce,#8b,#d2,#8f,#d6,#8b,#ce
	db #81,#d2,#81,#ce,#7f,#ce,#7d,#d6
	db #77,#ce,#7d,#ce,#87,#ce,#8f,#d2
	db #8b,#d0,#85,#85,#7d,#73,#6d,#73
	db #7d,#85,#8b,#7d,#c2,#8e,#81,#09
	db #8b,#81,#8f,#8b,#81,#8f,#8b,#81
	db #8f,#8b,#81,#8f,#8b,#81,#8f,#89
	db #ce,#81,#ce,#77,#ce,#71,#d2,#71
	db #ce,#77,#ce,#81,#ce,#87,#85,#7d
	db #87,#85,#7d,#87,#85,#7d,#87,#85
	db #7d,#87,#85,#7d,#87,#85,#ce,#7d
	db #ce,#73,#ce,#6d,#ce,#65,#c2,#8a
	db #81,#09,#d6,#8b,#ce,#8b,#ce,#87
	db #ce,#81,#87,#81,#7d,#81,#da,#81
	db #ce,#81,#ce,#85,#ce,#87,#da,#87
	db #ce,#87,#ce,#83,#ce,#7d,#81,#7d
	db #79,#7d,#d4,#8f,#8f,#8f,#8f,#8b
	db #8b,#81,#85,#ce,#8b,#c2,#80,#83
	db #08,#7b,#73,#69,#73,#7b,#81,#8b
	db #81,#7b,#69,#73,#7b,#d2,#77,#71
	db #69,#71,#77,#81,#89,#8f,#89,#81
	db #71,#77,#81,#d2,#7d,#77,#6f,#65
	db #6f,#77,#7d,#87,#7d,#77,#6f,#77
	db #7d,#d2,#8b,#85,#7d,#85,#85,#7d
	db #73,#6d,#73,#7d,#85,#8b,#7d,#c2
	db #72,#81,#0a,#da,#8b,#da,#69,#da
	db #81,#da,#6f,#da,#87,#da,#65,#da
	db #7d,#c2,#72,#81,#05,#ce,#72,#80
	db #06,#ce,#72,#80,#05,#ce,#72,#80
	db #06,#ce,#72,#80,#05,#ce,#72,#80
	db #06,#ce,#72,#80,#05,#ce,#72,#80
	db #06,#ce,#68,#80,#05,#ce,#68,#80
	db #06,#ce,#68,#80,#05,#ce,#68,#80
	db #06,#ce,#68,#80,#05,#ce,#68,#80
	db #06,#ce,#68,#80,#05,#ce,#68,#80
	db #06,#ce,#6e,#80,#05,#ce,#6e,#80
	db #06,#ce,#6e,#80,#05,#ce,#6e,#80
	db #06,#ce,#6e,#80,#05,#ce,#6e,#80
	db #06,#ce,#6e,#80,#05,#ce,#6e,#80
	db #06,#ce,#64,#80,#05,#ce,#64,#80
	db #06,#ce,#64,#80,#05,#ce,#64,#80
	db #06,#ce,#64,#80,#05,#64,#80,#07
	db #64,#03,#64,#05,#64,#07,#ce,#64
	db #03,#64,#01,#8e,#81,#09,#8b,#81
	db #8f,#8b,#81,#8f,#8b,#81,#8f,#8b
	db #81,#8f,#8b,#81,#8f,#89,#ce,#80
	db #03,#ce,#77,#ce,#71,#d2,#70,#05
	db #ce,#77,#ce,#81,#ce,#86,#07,#85
	db #7d,#87,#85,#7c,#09,#87,#85,#7d
	db #87,#85,#7d,#87,#85,#7d,#87,#85
	db #ce,#7c,#0b,#ce,#72,#0d,#ce,#6c
	db #0f,#ce,#64,#11,#c2,#14,#ff,#14
	db #6d,#5c,#ff
;
; #71be
; ld de,#4a00
; call #4000
;
; #71d7
; ld de,#5100
; call #4000
;
; #71f0
; ld de,#5900
; call #4000
;
.init_music		; added by Megachur
;
	ld de,l4a00
	or a
	jr z,jp_real_init_music
	ld de,l5100
	dec a
	jr z,jp_real_init_music
	ld de,l5900
jp_real_init_music
	jp real_init_music
;
.music_info
	db "Scoopex Anty Musicdisk (2016)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
