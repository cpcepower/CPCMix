; Music of Le Jeu De La Vie - Conway (2010)(Benediction)(Mr Lou)(StArkos)
; Ripped by Megachur the 02/12/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "LJDLVCON.BIN"
	ENDIF

music_date_rip_day		equ 02
music_date_rip_month	equ 12
music_date_rip_year		equ 2014
music_adr				equ &4000

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
	cp #11
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
	ld hl,l49aa
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
	ld hl,l49ae
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
	ld hl,l49b0
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
	ld hl,l4a22
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
	ld hl,l4a25
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
	ld hl,l4a25
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
	ld hl,l4a25
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
	ld de,l4a22
	xor a
	sbc hl,de
	jr nz,l42b0
	ld (l4038),a
	ld (l4072),a
	ld (l4108),a
.l4294 equ $ + 1
	ld hl,l49aa
	ld (l403e),hl
.l429a equ $ + 1
	ld hl,l49ae
	ld (l407f),hl
.l42a0 equ $ + 1
	ld hl,l49b0
	ld (l409d),hl
.l42a6 equ $ + 1
	ld hl,l4a22
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
	ld hl,l4a4e
	ld iy,l46d8
	ld a,(l42d7)
	call l4444
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
	ld hl,l4a51
	xor a
	sbc hl,de
	jr nz,l42f8
.l42e8 equ $ + 1
	ld de,l4a4e
.l42ea
	or a
	jr c,l42f8
.l42ee equ $ + 1
	ld hl,l4a51
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
	ld hl,l4a4e
	ld iy,l4729
	ld a,(l4329)
	call l4444
	ex de,hl
.l4329 equ $ + 1
	ld a,#00
.l432b equ $ + 1
	cp #ff
	jr z,l4331
	inc a
	jr l434e
.l4332 equ $ + 1
.l4331
	ld hl,l4a51
	xor a
	sbc hl,de
	jr nz,l434a
.l433a equ $ + 1
	ld de,l4a4e
.l433c
	or a
	jr c,l434a
.l4340 equ $ + 1
	ld hl,l4a51
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
	ld hl,l4a4e
	ld iy,l477a
	ld a,(l437b)
	call l4444
	ex de,hl
.l437b equ $ + 1
	ld a,#00
.l437d equ $ + 1
	cp #ff
	jr z,l4383
	inc a
	jr l43a0
.l4384 equ $ + 1
.l4383
	ld hl,l4a51
	xor a
	sbc hl,de
	jr nz,l439c
.l438c equ $ + 1
	ld de,l4a4e
.l438e
	or a
	jr c,l439c
.l4392 equ $ + 1
	ld hl,l4a51
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
	xor #0e
	jr l461f
	ld c,l
	dec c
	adc (hl)
	inc c
	jp c,#2f0b
	dec bc
	adc a
	ld a,(bc)
	rst #30
	add hl,bc
	ld l,b
	add hl,bc
.l461f
	pop hl
	ex af,af'
	ld h,c
	ex af,af'
	jp (hl)
	rlca
	ld (hl),a
	rlca
	inc c
	rlca
	and a
	ld b,#47
	ld b,#ed
	dec b
	sbc b
	dec b
	ld b,a
	dec b
	call m,#b404
	inc b
	ld (hl),b
	inc b
	ld sp,#f404
	inc bc
	cp h
	inc bc
	add (hl)
	inc bc
	ld d,e
	inc bc
	inc h
	inc bc
	or #02
	call z,#a402
	ld (bc),a
	ld a,(hl)
	ld (bc),a
	ld e,d
	ld (bc),a
	jr c,l4653
	jr l4655
.l4655 equ $ + 2
.l4653
	jp m,#de01
	ld bc,#01c3
	xor d
	ld bc,#0192
	ld a,e
	ld bc,#0166
	ld d,d
	ld bc,#013f
	dec l
	ld bc,#011c
	inc c
	ld bc,#00fd
	rst #28
	nop
	pop hl
	nop
	push de
	nop
	ret
	nop
	cp (hl)
	nop
	or e
	nop
	xor c
	nop
	sbc a
	nop
	sub (hl)
	nop
	adc (hl)
	nop
	add (hl)
	nop
	ld a,a
	nop
	ld (hl),a
	nop
	ld (hl),c
	nop
	ld l,d
	nop
	ld h,h
	nop
	ld e,a
	nop
	ld e,c
	nop
	ld d,h
	nop
	ld d,b
	nop
	ld c,e
	nop
	ld b,a
	nop
	ld b,e
	nop
	ccf
	nop
	inc a
	nop
	jr c,l46a1
.l46a1
	dec (hl)
	nop
	ld (#2f00),a
	nop
	dec l
	nop
	ld hl,(#2800)
	nop
	ld h,#00
	inc h
	nop
	ld (#2000),hl
	nop
	ld e,#00
	inc e
	nop
	dec de
	nop
	add hl,de
	nop
	jr l46bf
.l46bf
	ld d,#00
	dec d
	nop
	inc d
	nop
	inc de
	nop
	ld (de),a
	nop
	ld de,#1000
	nop
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
	cp #ff
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
.l46f2
	ld a,#00
.l46f5 equ $ + 1
	cp #ff
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
	cp #ff
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
	cp #ff
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
.l4743
	ld a,#00
.l4746 equ $ + 1
	cp #ff
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
	cp #ff
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
	cp #ff
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
.l4794
	ld a,#00
.l4797 equ $ + 1
	cp #ff
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
	cp #ff
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
	cp #ff
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
	cp #ff
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
	cp #ff
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
	cp #ff
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
	db #d8,#46,#f3,#46,#29,#47,#44,#47
	db #7a,#47,#95,#47,#cb,#47,#0e,#47
	db #5f,#47,#b0,#47,#00,#48,#1b,#48
	db #36,#48,#38,#40,#72,#40,#bd,#40
	db #cb,#40,#08,#41,#d7,#42,#29,#43
	db #7b,#43,#38,#41,#a3,#41,#0e,#42
	db #11,#ff,#da,#46,#f5,#46,#2b,#47
	db #46,#47,#7c,#47,#97,#47,#cd,#47
	db #e7,#47,#10,#47,#61,#47,#b2,#47
	db #02,#48,#1d,#48,#38,#48,#d9,#42
	db #2b,#43,#7d,#43,#03,#b7,#ea,#42
	db #3c,#43,#8e,#43,#00,#1a,#00,#ff
.music_data
	db #53,#4b,#31,#30,#90,#49,#01,#64
	db #00,#ae,#49,#b0,#49,#22,#4a,#25
	db #4a,#aa,#49,#ae,#49,#b0,#49,#22
.l49ae equ $ + 6
.l49aa equ $ + 2
	db #4a,#11,#c0,#00,#00,#23,#7f,#12
.l49b0
	db #6a,#4c,#da,#4c,#52,#4d,#c7,#4d
	db #3f,#4e,#b7,#4e,#30,#4f,#c8,#4f
	db #60,#50,#f9,#50,#91,#51,#29,#52
	db #c2,#52,#72,#53,#1a,#54,#b3,#54
	db #63,#55,#0b,#56,#a4,#56,#54,#57
	db #04,#58,#bc,#58,#6c,#59,#1c,#5a
	db #a4,#56,#54,#57,#04,#58,#bc,#58
	db #6c,#59,#1c,#5a,#d4,#5a,#62,#5b
	db #b1,#5b,#32,#5c,#c6,#5c,#b1,#5b
	db #32,#5c,#26,#5d,#b1,#5b,#32,#5c
	db #d7,#5d,#88,#5e,#09,#5f,#d7,#5d
	db #a5,#5f,#09,#5f,#d7,#5d,#88,#5e
	db #09,#5f,#d7,#5d,#a5,#5f,#26,#60
	db #7e,#60,#2e,#61,#52,#61,#93,#61
.l4a25 equ $ + 5
.l4a22 equ $ + 2
	db #e3,#61,#24,#15,#62,#47,#4a,#51
	db #4a,#9a,#4a,#b1,#4a,#c8,#4a,#df
	db #4a,#f6,#4a,#1f,#4b,#46,#4b,#6f
	db #4b,#98,#4b,#b9,#4b,#da,#4b,#f8
	db #4b,#14,#4c,#30,#4c,#45,#4c,#4e
.l4a4e equ $ + 6
	db #4a,#51,#4a,#ff,#37,#00,#00,#00
.l4a51 equ $ + 1
	db #00,#4e,#4a,#9a,#4a,#00,#b7,#00
	db #3a,#21,#24,#3d,#2f,#18,#3e,#3f
	db #0c,#0f,#4f,#f8,#ff,#4f,#fc,#ff
	db #4e,#fe,#ff,#0e,#0e,#4d,#ff,#ff
	db #4d,#fe,#ff,#4d,#fe,#ff,#4c,#ff
	db #ff,#0c,#4c,#01,#00,#4b,#02,#00
	db #4b,#02,#00,#4b,#01,#00,#0a,#4a
	db #ff,#ff,#4a,#fe,#ff,#49,#fe,#ff
	db #49,#ff,#ff,#08,#08,#07,#06,#05
	db #05,#04,#ad,#4a,#b1,#4a,#00,#37
	db #00,#2b,#0c,#0d,#0e,#2f,#0c,#0f
	db #0d,#29,#0c,#0c,#0a,#27,#0c,#08
	db #08,#c4,#4a,#c8,#4a,#00,#37,#00
	db #2b,#f4,#0d,#0e,#2f,#f4,#0f,#0d
	db #29,#f4,#0c,#0a,#27,#f4,#08,#08
	db #db,#4a,#df,#4a,#00,#37,#00,#2d
	db #0c,#0e,#0f,#2e,#0c,#0f,#0e,#2b
	db #0c,#0d,#0c,#2a,#0c,#0b,#0b,#f2
	db #4a,#f6,#4a,#00,#37,#00,#2d,#f4
	db #0e,#0f,#2f,#f4,#0f,#0e,#2b,#f4
	db #0d,#0c,#2a,#f4,#0b,#0b,#4e,#4a
	db #1f,#4b,#00,#b7,#00,#3f,#21,#f4
	db #3f,#21,#f7,#3f,#21,#fb,#1f,#21
	db #2e,#03,#2e,#07,#2d,#0c,#2d,#0c
	db #2e,#07,#2e,#03,#0f,#2f,#fb,#2f
	db #f7,#2f,#f4,#2f,#ef,#2f,#eb,#4e
	db #4a,#46,#4b,#00,#b7,#00,#3f,#21
	db #f4,#3f,#21,#f7,#3f,#21,#fc,#1f
	db #21,#2e,#03,#2e,#08,#2d,#0c,#2d
	db #0c,#2e,#08,#2e,#03,#0f,#2f,#fc
	db #2f,#f7,#2f,#f4,#00,#00,#4e,#4a
	db #6f,#4b,#00,#b7,#00,#3f,#21,#f4
	db #3f,#21,#f7,#3f,#21,#fc,#1f,#21
	db #2e,#03,#2e,#08,#2d,#0a,#2d,#0a
	db #2e,#08,#2e,#03,#0f,#2f,#fc,#2f
	db #f7,#2f,#f4,#2f,#f0,#2f,#eb,#4e
	db #4a,#98,#4b,#00,#b7,#00,#3f,#21
	db #f4,#3f,#21,#f8,#3f,#21,#fb,#1f
	db #21,#2e,#04,#2e,#07,#2d,#0c,#2d
	db #0c,#2e,#07,#2e,#04,#0f,#2f,#fb
	db #2f,#f8,#2f,#f4,#2f,#ef,#2f,#ec
	db #4e,#4a,#b9,#4b,#00,#b7,#00,#2f
	db #0c,#2f,#07,#2f,#03,#0f,#0f,#2f
	db #03,#2f,#03,#2f,#07,#2f,#07,#0c
	db #0c,#2c,#03,#2c,#03,#2c,#07,#2c
	db #07,#4e,#4a,#da,#4b,#00,#b7,#00
	db #2f,#0c,#2f,#07,#2f,#04,#0f,#0f
	db #2f,#04,#2f,#04,#2f,#07,#2f,#07
	db #0c,#0c,#2c,#04,#2c,#04,#2c,#07
	db #2c,#07,#f1,#4b,#f8,#4b,#00,#37
	db #00,#3b,#21,#48,#3e,#29,#24,#3f
	db #31,#18,#3f,#39,#0c,#1f,#3f,#1e
	db #3f,#4d,#04,#00,#0d,#4d,#fc,#ff
	db #10,#4c,#14,#4c,#00,#37,#00,#3b
	db #21,#0c,#0d,#1e,#21,#2f,#0c,#1f
	db #21,#0d,#39,#21,#0c,#0c,#1a,#21
	db #27,#0c,#08,#08,#2c,#4c,#30,#4c
	db #00,#37,#00,#3b,#21,#f4,#0d,#1e
	db #21,#2f,#f4,#1f,#21,#0d,#39,#21
	db #f4,#0c,#1a,#21,#27,#f4,#08,#08
	db #3d,#4c,#45,#4c,#01,#37,#00,#2c
	db #0c,#0e,#0d,#2a,#0c,#4b,#01,#00
	db #0b,#4b,#ff,#ff,#0b,#4e,#4a,#6a
	db #4c,#00,#b7,#00,#2f,#f4,#2f,#f7
	db #2f,#fb,#0f,#2e,#03,#2e,#07,#2d
	db #0c,#2d,#0c,#2e,#07,#2e,#03,#0f
	db #2f,#fb,#2f,#f7,#2f,#f4,#2f,#ef
	db #2f,#eb,#d4,#2a,#89,#01,#d0,#2a
	db #09,#78,#8d,#02,#68,#0f,#72,#0f
	db #76,#0d,#2a,#89,#01,#d0,#2a,#09
	db #76,#8d,#03,#72,#0f,#68,#0f,#68
	db #0d,#2a,#89,#01,#d0,#2a,#09,#78
	db #8d,#03,#68,#0f,#72,#0f,#76,#0d
	db #2a,#89,#01,#d0,#2a,#09,#76,#8d
	db #03,#72,#0f,#68,#0f,#6a,#0d,#22
	db #89,#01,#d0,#22,#09,#78,#8d,#03
	db #6a,#0f,#72,#0f,#76,#0d,#22,#89
	db #01,#d0,#22,#09,#76,#8d,#03,#72
	db #0f,#6a,#0f,#6a,#0d,#22,#89,#01
	db #d0,#22,#09,#78,#8d,#03,#6a,#0f
	db #72,#0f,#76,#0d,#22,#89,#01,#d0
	db #22,#09,#2a,#81,#01,#d0,#2a,#01
	db #78,#85,#02,#68,#07,#72,#07,#76
	db #05,#2a,#81,#01,#d0,#2a,#01,#76
	db #85,#03,#72,#07,#68,#07,#68,#05
	db #2a,#81,#01,#d0,#2a,#01,#78,#85
	db #02,#68,#07,#72,#07,#76,#05,#2a
	db #81,#01,#d0,#2a,#01,#76,#85,#03
	db #72,#07,#68,#07,#6a,#05,#22,#81
	db #01,#d0,#22,#01,#78,#85,#02,#6a
	db #07,#72,#07,#76,#05,#22,#81,#01
	db #d0,#22,#01,#76,#85,#03,#72,#07
	db #6a,#07,#6a,#05,#22,#81,#01,#d0
	db #22,#01,#78,#85,#02,#6a,#07,#72
	db #07,#76,#05,#22,#81,#01,#d0,#22
	db #01,#76,#85,#03,#72,#07,#6a,#07
	db #6a,#05,#d0,#2a,#8d,#01,#d0,#2a
	db #0d,#78,#93,#04,#68,#15,#72,#15
	db #76,#13,#2a,#8d,#01,#d0,#2a,#0d
	db #76,#93,#05,#72,#15,#68,#15,#68
	db #13,#2a,#8d,#01,#d0,#2a,#0d,#78
	db #93,#04,#68,#15,#72,#15,#76,#13
	db #2a,#8d,#01,#d0,#2a,#0d,#76,#93
	db #05,#72,#15,#68,#15,#6a,#13,#22
	db #8d,#01,#d0,#22,#0d,#78,#93,#04
	db #6a,#15,#72,#15,#76,#13,#22,#8d
	db #01,#d0,#22,#0d,#76,#93,#05,#72
	db #15,#6a,#15,#6a,#13,#22,#8d,#01
	db #d0,#22,#0d,#78,#93,#04,#6a,#15
	db #72,#15,#76,#13,#22,#8d,#01,#d0
	db #22,#0d,#76,#93,#05,#72,#15,#76
	db #8d,#03,#72,#0f,#6a,#0f,#6a,#0d
	db #1c,#89,#01,#d0,#1c,#09,#78,#8d
	db #02,#6a,#0f,#72,#0f,#76,#0d,#1c
	db #89,#01,#d0,#1c,#09,#76,#8d,#03
	db #72,#0f,#6a,#0f,#6a,#0d,#1c,#89
	db #01,#d0,#1c,#09,#78,#8d,#02,#6a
	db #0f,#72,#0f,#76,#0d,#1c,#89,#01
	db #d0,#1c,#09,#76,#8d,#03,#72,#0f
	db #6a,#0f,#68,#0d,#20,#89,#01,#d0
	db #20,#09,#78,#8d,#02,#68,#0f,#70
	db #0f,#76,#0d,#20,#89,#01,#d0,#20
	db #09,#76,#8d,#03,#72,#0f,#70,#0f
	db #68,#0d,#20,#89,#01,#d0,#20,#09
	db #76,#8d,#02,#68,#0f,#70,#0f,#76
	db #0d,#20,#89,#01,#d0,#20,#09,#1c
	db #81,#01,#d0,#1c,#01,#78,#85,#02
	db #6a,#07,#72,#07,#76,#05,#1c,#81
	db #01,#d0,#1c,#01,#76,#85,#03,#72
	db #07,#6a,#07,#6a,#05,#1c,#81,#01
	db #d0,#1c,#01,#78,#85,#02,#6a,#07
	db #72,#07,#76,#05,#1c,#81,#01,#d0
	db #1c,#01,#76,#85,#03,#72,#07,#6a
	db #07,#68,#05,#20,#81,#01,#d0,#20
	db #01,#78,#85,#02,#68,#07,#70,#07
	db #76,#05,#20,#81,#01,#d0,#20,#01
	db #76,#85,#03,#72,#07,#70,#07,#68
	db #05,#20,#81,#01,#d0,#20,#01,#76
	db #85,#02,#68,#07,#70,#07,#76,#05
	db #20,#81,#01,#d0,#20,#01,#76,#85
	db #03,#72,#07,#70,#07,#72,#05,#6a
	db #95,#05,#6a,#13,#1c,#8d,#01,#d0
	db #1c,#0d,#78,#93,#04,#6a,#15,#72
	db #15,#76,#13,#1c,#8d,#01,#d0,#1c
	db #0d,#76,#93,#05,#72,#15,#6a,#15
	db #6a,#13,#1c,#8d,#01,#d0,#1c,#0d
	db #78,#93,#04,#6a,#15,#72,#15,#76
	db #13,#1c,#8d,#01,#d0,#1c,#0d,#76
	db #93,#05,#72,#15,#6a,#15,#68,#13
	db #20,#8d,#01,#d0,#20,#0d,#78,#93
	db #04,#68,#15,#70,#15,#76,#13,#20
	db #8d,#01,#d0,#20,#0d,#76,#93,#05
	db #72,#15,#70,#15,#68,#13,#20,#8d
	db #01,#d0,#20,#0d,#76,#93,#04,#68
	db #15,#70,#15,#76,#13,#20,#8d,#01
	db #d0,#20,#0d,#76,#93,#05,#72,#15
	db #76,#8d,#03,#72,#0f,#70,#0f,#72
	db #0d,#2a,#89,#01,#ce,#72,#91,#06
	db #2a,#89,#01,#78,#8d,#02,#68,#0f
	db #72,#0f,#76,#0d,#2a,#89,#01,#ce
	db #5a,#8f,#06,#2a,#89,#01,#76,#8d
	db #03,#72,#0f,#68,#0f,#68,#0d,#2a
	db #89,#01,#ce,#72,#91,#06,#2a,#89
	db #01,#78,#8d,#02,#68,#0f,#72,#0f
	db #76,#0d,#2a,#89,#01,#ce,#5a,#8f
	db #06,#2a,#89,#01,#76,#8d,#03,#72
	db #0f,#68,#0f,#6a,#0d,#22,#89,#01
	db #ce,#72,#91,#07,#22,#89,#01,#78
	db #8d,#02,#6a,#0f,#72,#0f,#76,#0d
	db #22,#89,#01,#ce,#5a,#8f,#07,#22
	db #89,#01,#76,#8d,#03,#72,#0f,#6a
	db #0f,#6a,#0d,#22,#89,#01,#ce,#72
	db #91,#07,#22,#89,#01,#78,#8d,#02
	db #6a,#0f,#72,#0f,#76,#0d,#22,#89
	db #01,#ce,#5a,#8f,#08,#22,#89,#01
	db #2a,#81,#01,#ce,#72,#8b,#06,#2a
	db #81,#01,#78,#85,#02,#68,#07,#72
	db #07,#76,#05,#2a,#81,#01,#ce,#5a
	db #89,#06,#2a,#81,#01,#76,#85,#03
	db #72,#07,#68,#07,#68,#05,#2a,#81
	db #01,#ce,#72,#8b,#06,#2a,#81,#01
	db #78,#85,#02,#68,#07,#72,#07,#76
	db #05,#2a,#81,#01,#ce,#5a,#89,#06
	db #2a,#81,#01,#76,#85,#03,#72,#07
	db #68,#07,#6a,#05,#22,#81,#01,#ce
	db #72,#8b,#07,#22,#81,#01,#78,#85
	db #02,#6a,#07,#72,#07,#76,#05,#22
	db #81,#01,#ce,#5a,#89,#07,#22,#81
	db #01,#76,#85,#03,#72,#07,#6a,#07
	db #6a,#05,#22,#81,#01,#ce,#72,#8b
	db #07,#22,#81,#01,#78,#85,#02,#6a
	db #07,#72,#07,#76,#05,#22,#81,#01
	db #ce,#5a,#89,#08,#22,#81,#01,#76
	db #85,#03,#72,#07,#6a,#07,#6a,#05
	db #70,#95,#05,#72,#13,#2a,#8d,#01
	db #ce,#72,#93,#06,#2a,#8d,#01,#78
	db #93,#04,#68,#15,#72,#15,#76,#13
	db #2a,#8d,#01,#ce,#5a,#91,#06,#2a
	db #8d,#01,#76,#93,#05,#72,#15,#68
	db #15,#68,#13,#2a,#8d,#01,#ce,#72
	db #93,#06,#2a,#8d,#01,#78,#93,#04
	db #68,#15,#72,#15,#76,#13,#2a,#8d
	db #01,#ce,#5a,#91,#06,#2a,#8d,#01
	db #76,#93,#05,#72,#15,#68,#15,#6a
	db #13,#22,#8d,#01,#ce,#72,#93,#07
	db #22,#8d,#01,#78,#93,#04,#6a,#15
	db #72,#15,#76,#13,#22,#8d,#01,#ce
	db #5a,#91,#07,#22,#8d,#01,#76,#93
	db #05,#72,#15,#6a,#15,#6a,#13,#22
	db #8d,#01,#ce,#72,#93,#07,#22,#8d
	db #01,#78,#93,#04,#6a,#15,#72,#15
	db #76,#13,#22,#8d,#01,#ce,#5a,#91
	db #08,#22,#8d,#01,#76,#93,#05,#72
	db #15,#76,#8d,#03,#72,#0f,#6a,#0f
	db #6a,#0d,#1c,#89,#01,#ce,#72,#91
	db #07,#1c,#89,#01,#78,#8d,#02,#6a
	db #0f,#72,#0f,#76,#0d,#1c,#89,#01
	db #ce,#5a,#8f,#07,#1c,#89,#01,#76
	db #8d,#03,#72,#0f,#6a,#0f,#6a,#0d
	db #1c,#89,#01,#ce,#72,#91,#07,#1c
	db #89,#01,#78,#8d,#02,#6a,#0f,#72
	db #0f,#76,#0d,#1c,#89,#01,#ce,#5a
	db #8f,#07,#1c,#89,#01,#76,#8d,#03
	db #72,#0f,#6a,#0f,#68,#0d,#20,#89
	db #01,#ce,#68,#91,#09,#20,#89,#01
	db #78,#8d,#02,#68,#0f,#70,#0f,#76
	db #0d,#20,#89,#01,#ce,#50,#8f,#09
	db #20,#89,#01,#76,#8d,#03,#72,#0f
	db #70,#0f,#68,#0d,#20,#89,#01,#ce
	db #68,#91,#09,#20,#89,#01,#76,#8d
	db #02,#68,#0f,#70,#0f,#76,#0d,#20
	db #89,#01,#ce,#50,#8f,#09,#20,#89
	db #01,#1c,#81,#01,#ce,#72,#8b,#07
	db #1c,#81,#01,#78,#85,#02,#6a,#07
	db #72,#07,#76,#05,#1c,#81,#01,#ce
	db #5a,#89,#07,#1c,#81,#01,#76,#85
	db #03,#72,#07,#6a,#07,#6a,#05,#1c
	db #81,#01,#ce,#72,#8b,#07,#1c,#81
	db #01,#78,#85,#02,#6a,#07,#72,#07
	db #76,#05,#1c,#81,#01,#ce,#5a,#89
	db #07,#1c,#81,#01,#76,#85,#03,#72
	db #07,#6a,#07,#68,#05,#20,#81,#01
	db #ce,#68,#8b,#09,#20,#81,#01,#78
	db #85,#02,#68,#07,#70,#07,#76,#05
	db #20,#81,#01,#ce,#50,#89,#09,#20
	db #81,#01,#76,#85,#03,#72,#07,#70
	db #07,#68,#05,#20,#81,#01,#ce,#68
	db #8b,#09,#20,#81,#01,#76,#85,#02
	db #68,#07,#70,#07,#76,#05,#20,#81
	db #01,#ce,#50,#89,#09,#20,#81,#01
	db #76,#85,#03,#72,#07,#70,#07,#72
	db #05,#6a,#95,#05,#6a,#13,#1c,#8d
	db #01,#ce,#72,#93,#07,#1c,#8d,#01
	db #78,#93,#04,#6a,#15,#72,#15,#76
	db #13,#1c,#8d,#01,#ce,#5a,#91,#07
	db #1c,#8d,#01,#76,#93,#05,#72,#15
	db #6a,#15,#6a,#13,#1c,#8d,#01,#ce
	db #72,#93,#07,#1c,#8d,#01,#78,#93
	db #04,#6a,#15,#72,#15,#76,#13,#1c
	db #8d,#01,#ce,#5a,#91,#07,#1c,#8d
	db #01,#76,#93,#05,#72,#15,#6a,#15
	db #68,#13,#20,#8d,#01,#ce,#68,#93
	db #09,#20,#8d,#01,#78,#93,#04,#68
	db #15,#70,#15,#76,#13,#20,#8d,#01
	db #ce,#50,#91,#09,#20,#8d,#01,#76
	db #93,#05,#72,#15,#70,#15,#68,#13
	db #20,#8d,#01,#ce,#68,#93,#09,#20
	db #8d,#01,#76,#93,#04,#68,#15,#70
	db #15,#76,#13,#20,#8d,#01,#ce,#50
	db #91,#09,#20,#8d,#01,#76,#93,#05
	db #72,#15,#72,#8b,#0a,#72,#8f,#03
	db #72,#8b,#0a,#72,#8d,#03,#2a,#89
	db #01,#ce,#72,#91,#06,#2a,#89,#01
	db #72,#91,#0a,#68,#8f,#02,#72,#91
	db #0a,#78,#8d,#02,#2a,#89,#01,#ce
	db #5a,#8f,#06,#2a,#89,#01,#72,#8b
	db #0a,#7c,#8f,#03,#72,#8b,#0a,#72
	db #8d,#03,#2a,#89,#01,#ce,#72,#91
	db #06,#2a,#89,#01,#72,#91,#0a,#68
	db #8f,#02,#72,#91,#0a,#78,#8d,#02
	db #2a,#89,#01,#ce,#5a,#8f,#06,#2a
	db #89,#01,#6a,#8b,#0b,#7c,#8f,#03
	db #6a,#8b,#0b,#72,#8d,#03,#22,#89
	db #01,#ce,#72,#91,#07,#22,#89,#01
	db #6a,#91,#0b,#6a,#8f,#02,#6a,#91
	db #0b,#78,#8d,#02,#22,#89,#01,#ce
	db #5a,#8f,#07,#22,#89,#01,#6a,#8b
	db #0b,#7c,#8f,#03,#6a,#8b,#0b,#72
	db #8d,#03,#22,#89,#01,#ce,#72,#91
	db #07,#22,#89,#01,#6a,#91,#0b,#6a
	db #8f,#02,#6a,#91,#0b,#78,#8d,#02
	db #22,#89,#01,#ce,#5a,#8f,#08,#22
	db #89,#01,#2a,#81,#0c,#c4,#0f,#72
	db #8b,#06,#2a,#81,#01,#72,#83,#0d
	db #68,#87,#02,#76,#07,#78,#05,#2a
	db #81,#0c,#c4,#0f,#5a,#89,#06,#2a
	db #81,#01,#80,#83,#0e,#7c,#87,#03
	db #78,#07,#72,#05,#2a,#81,#0c,#c4
	db #0f,#72,#8b,#06,#2a,#81,#01,#72
	db #83,#0d,#68,#87,#02,#76,#07,#78
	db #05,#2a,#81,#0c,#c4,#0f,#5a,#89
	db #06,#2a,#81,#01,#80,#83,#0e,#7c
	db #87,#03,#78,#07,#72,#05,#22,#81
	db #0c,#c4,#0f,#72,#8b,#07,#22,#81
	db #01,#72,#83,#0d,#6a,#87,#02,#76
	db #07,#78,#05,#22,#81,#0c,#c4,#0f
	db #5a,#89,#07,#22,#81,#01,#80,#83
	db #0e,#7c,#87,#03,#78,#07,#72,#05
	db #22,#81,#0c,#c4,#0f,#72,#8b,#07
	db #22,#81,#01,#72,#83,#0d,#6a,#87
	db #02,#76,#07,#78,#05,#22,#81,#0c
	db #c4,#0f,#5a,#89,#08,#22,#81,#01
	db #80,#83,#0e,#7c,#87,#03,#78,#07
	db #72,#05,#70,#95,#05,#72,#13,#2a
	db #8d,#01,#ce,#72,#93,#06,#2a,#8d
	db #01,#72,#93,#04,#68,#15,#76,#15
	db #78,#13,#2a,#8d,#01,#ce,#5a,#91
	db #06,#2a,#8d,#01,#80,#93,#05,#7c
	db #15,#78,#15,#72,#13,#2a,#8d,#01
	db #ce,#72,#93,#06,#2a,#8d,#01,#72
	db #93,#04,#68,#15,#76,#15,#78,#13
	db #2a,#8d,#01,#ce,#5a,#91,#06,#2a
	db #8d,#01,#80,#93,#05,#7c,#15,#78
	db #15,#72,#13,#22,#8d,#01,#ce,#72
	db #93,#07,#22,#8d,#01,#72,#93,#04
	db #6a,#15,#76,#15,#78,#13,#22,#8d
	db #01,#ce,#5a,#91,#07,#22,#8d,#01
	db #80,#93,#05,#7c,#15,#78,#15,#72
	db #13,#22,#8d,#01,#ce,#72,#93,#07
	db #22,#8d,#01,#72,#93,#04,#6a,#15
	db #76,#15,#78,#13,#22,#8d,#01,#ce
	db #5a,#91,#08,#22,#8d,#01,#80,#93
	db #05,#7c,#15,#64,#8b,#0a,#7c,#8f
	db #03,#64,#8b,#0a,#72,#8d,#03,#1c
	db #89,#01,#ce,#72,#91,#07,#1c,#89
	db #01,#64,#91,#0a,#6a,#8f,#02,#64
	db #91,#0a,#78,#8d,#02,#1c,#89,#01
	db #ce,#5a,#8f,#07,#1c,#89,#01,#64
	db #8b,#0a,#7c,#8f,#03,#64,#8b,#0a
	db #72,#8d,#03,#1c,#89,#01,#ce,#72
	db #91,#07,#1c,#89,#01,#64,#91,#0a
	db #6a,#8f,#02,#64,#91,#0a,#78,#8d
	db #02,#1c,#89,#01,#ce,#5a,#8f,#07
	db #1c,#89,#01,#68,#8b,#0b,#7c,#8f
	db #03,#68,#8b,#0b,#70,#8d,#03,#20
	db #89,#01,#ce,#68,#91,#09,#20,#89
	db #01,#68,#91,#0b,#68,#8f,#02,#68
	db #91,#0b,#76,#8d,#02,#20,#89,#01
	db #ce,#50,#8f,#09,#20,#89,#01,#68
	db #8b,#0b,#78,#8f,#03,#68,#8b,#0b
	db #70,#8d,#03,#20,#89,#01,#ce,#68
	db #91,#09,#20,#89,#01,#68,#91,#0b
	db #68,#8f,#02,#68,#91,#0b,#76,#8d
	db #02,#20,#89,#01,#ce,#50,#8f,#09
	db #20,#89,#01,#1c,#81,#0c,#c4,#0f
	db #72,#8b,#07,#1c,#81,#01,#72,#83
	db #0d,#6a,#87,#02,#76,#07,#78,#05
	db #1c,#81,#0c,#c4,#0f,#5a,#89,#07
	db #1c,#81,#01,#80,#83,#0e,#7c,#87
	db #03,#78,#07,#72,#05,#1c,#81,#0c
	db #c4,#0f,#72,#8b,#07,#1c,#81,#01
	db #72,#83,#0d,#6a,#87,#02,#76,#07
	db #78,#05,#1c,#81,#0c,#c4,#0f,#5a
	db #89,#07,#1c,#81,#01,#80,#83,#0e
	db #7c,#87,#03,#78,#07,#70,#05,#20
	db #81,#0c,#c4,#0f,#68,#8b,#09,#20
	db #81,#01,#70,#83,#0d,#68,#87,#02
	db #72,#07,#76,#05,#20,#81,#0c,#c4
	db #0f,#50,#89,#09,#20,#81,#01,#7c
	db #83,#0e,#78,#87,#03,#76,#07,#70
	db #05,#20,#81,#0c,#c4,#0f,#68,#8b
	db #09,#20,#81,#01,#70,#83,#0d,#68
	db #87,#02,#72,#07,#76,#05,#20,#81
	db #0c,#c4,#0f,#50,#89,#09,#20,#81
	db #01,#7c,#83,#0e,#78,#87,#03,#76
	db #07,#72,#05,#6a,#95,#05,#6a,#13
	db #1c,#8d,#01,#ce,#72,#93,#07,#1c
	db #8d,#01,#72,#93,#04,#6a,#15,#76
	db #15,#78,#13,#1c,#8d,#01,#ce,#5a
	db #91,#07,#1c,#8d,#01,#80,#93,#05
	db #7c,#15,#78,#15,#72,#13,#1c,#8d
	db #01,#ce,#72,#93,#07,#1c,#8d,#01
	db #72,#93,#04,#6a,#15,#76,#15,#78
	db #13,#1c,#8d,#01,#ce,#5a,#91,#07
	db #1c,#8d,#01,#80,#93,#05,#7c,#15
	db #78,#15,#70,#13,#20,#8d,#01,#ce
	db #68,#93,#09,#20,#8d,#01,#70,#93
	db #04,#68,#15,#72,#15,#76,#13,#20
	db #8d,#01,#ce,#50,#91,#09,#20,#8d
	db #01,#7c,#93,#05,#78,#15,#76,#15
	db #70,#13,#20,#8d,#01,#ce,#68,#93
	db #09,#20,#8d,#01,#70,#93,#04,#68
	db #15,#72,#15,#76,#13,#20,#8d,#01
	db #ce,#50,#91,#09,#20,#8d,#01,#7c
	db #93,#05,#78,#15,#72,#8b,#0a,#72
	db #8f,#03,#72,#8b,#0a,#72,#8d,#03
	db #2a,#89,#01,#ce,#72,#91,#06,#2a
	db #89,#01,#72,#91,#0a,#68,#8f,#02
	db #72,#91,#0a,#78,#8d,#02,#2a,#89
	db #01,#ce,#5a,#8f,#06,#2a,#89,#01
	db #72,#8b,#0a,#7c,#8f,#03,#72,#8b
	db #0a,#72,#8d,#03,#2a,#89,#01,#ce
	db #72,#91,#06,#2a,#89,#01,#72,#91
	db #0a,#68,#8f,#02,#72,#91,#0a,#78
	db #8d,#02,#2a,#89,#01,#ce,#5a,#8f
	db #06,#2a,#89,#01,#6a,#8b,#0b,#7c
	db #8f,#03,#6a,#8b,#0b,#72,#8d,#03
	db #22,#89,#01,#ce,#72,#91,#07,#22
	db #89,#01,#6a,#91,#0b,#6a,#8f,#02
	db #6a,#91,#0b,#78,#8d,#02,#22,#89
	db #01,#ce,#5a,#8f,#07,#22,#89,#01
	db #6a,#8b,#0b,#7c,#8f,#03,#6a,#8b
	db #0b,#72,#8d,#03,#22,#89,#01,#ce
	db #72,#91,#07,#22,#89,#01,#6a,#91
	db #0b,#6a,#8f,#02,#6a,#91,#0b,#78
	db #8d,#02,#22,#89,#01,#ce,#5a,#8f
	db #08,#22,#89,#01,#2a,#81,#0c,#8a
	db #8d,#0f,#72,#8b,#06,#2a,#81,#01
	db #72,#83,#0d,#68,#87,#02,#76,#07
	db #78,#05,#2a,#81,#0c,#80,#8d,#0f
	db #5a,#89,#06,#2a,#81,#01,#80,#83
	db #0e,#7c,#87,#03,#78,#07,#72,#05
	db #2a,#81,#0c,#8a,#8d,#0f,#72,#8b
	db #06,#2a,#81,#01,#72,#83,#0d,#68
	db #87,#02,#76,#07,#78,#05,#2a,#81
	db #0c,#80,#8d,#0f,#5a,#89,#06,#2a
	db #81,#01,#80,#83,#0e,#7c,#87,#03
	db #78,#07,#72,#05,#22,#81,#0c,#8a
	db #8d,#0f,#72,#8b,#07,#22,#81,#01
	db #72,#83,#0d,#6a,#87,#02,#76,#07
	db #78,#05,#22,#81,#0c,#80,#8d,#0f
	db #5a,#89,#07,#22,#81,#01,#80,#83
	db #0e,#7c,#87,#03,#78,#07,#72,#05
	db #22,#81,#0c,#72,#8d,#0f,#72,#8b
	db #07,#22,#81,#01,#72,#83,#0d,#6a
	db #87,#02,#76,#07,#78,#05,#22,#81
	db #0c,#78,#8d,#0f,#5a,#89,#08,#22
	db #81,#01,#80,#83,#0e,#7c,#87,#03
	db #78,#07,#72,#05,#8a,#89,#0f,#72
	db #93,#05,#2a,#8d,#01,#86,#89,#0f
	db #72,#93,#06,#8a,#89,#0f,#80,#09
	db #68,#95,#04,#80,#89,#0f,#78,#93
	db #04,#2a,#8d,#01,#7c,#89,#0f,#5a
	db #91,#06,#80,#89,#0f,#72,#09,#7c
	db #95,#05,#8a,#89,#0f,#72,#93,#05
	db #2a,#8d,#01,#86,#89,#0f,#72,#93
	db #06,#8a,#89,#0f,#80,#09,#68,#95
	db #04,#80,#89,#0f,#78,#93,#04,#2a
	db #8d,#01,#7c,#89,#0f,#5a,#91,#06
	db #80,#89,#0f,#86,#09,#7c,#95,#05
	db #8a,#89,#0f,#72,#93,#05,#22,#8d
	db #01,#86,#89,#0f,#72,#93,#07,#8a
	db #89,#0f,#80,#09,#6a,#95,#04,#80
	db #89,#0f,#78,#93,#04,#22,#8d,#01
	db #7c,#89,#0f,#5a,#91,#07,#80,#89
	db #0f,#72,#09,#7c,#95,#05,#72,#87
	db #0f,#72,#93,#05,#22,#8d,#01,#6e
	db #87,#0f,#72,#93,#07,#72,#87,#0f
	db #68,#07,#6a,#95,#04,#78,#87,#0f
	db #78,#93,#04,#22,#8d,#01,#76,#87
	db #0f,#5a,#91,#08,#6e,#87,#0f,#72
	db #07,#7c,#95,#05,#64,#8b,#0a,#7c
	db #8f,#03,#64,#8b,#0a,#72,#8d,#03
	db #1c,#89,#01,#ce,#72,#91,#07,#1c
	db #89,#01,#64,#91,#0a,#6a,#8f,#02
	db #64,#91,#0a,#78,#8d,#02,#1c,#89
	db #01,#ce,#5a,#8f,#07,#1c,#89,#01
	db #64,#8b,#0a,#7c,#8f,#03,#64,#8b
	db #0a,#72,#8d,#03,#1c,#89,#01,#ce
	db #72,#91,#07,#1c,#89,#01,#64,#91
	db #0a,#6a,#8f,#02,#64,#91,#0a,#78
	db #8d,#02,#1c,#89,#01,#ce,#5a,#8f
	db #07,#1c,#89,#01,#68,#8b,#0b,#7c
	db #8f,#03,#68,#8b,#0b,#70,#8d,#03
	db #20,#89,#01,#ce,#68,#91,#09,#20
	db #89,#01,#68,#91,#0b,#68,#8f,#02
	db #68,#91,#0b,#76,#8d,#02,#20,#89
	db #01,#ce,#50,#8f,#09,#20,#89,#01
	db #68,#8b,#0b,#78,#8f,#03,#68,#8b
	db #0b,#70,#8d,#03,#20,#89,#01,#ce
	db #68,#91,#09,#20,#89,#01,#68,#91
	db #0b,#68,#8f,#02,#68,#91,#0b,#76
	db #8d,#02,#20,#89,#01,#ce,#50,#8f
	db #09,#20,#89,#01,#1c,#81,#0c,#8a
	db #8d,#0f,#72,#8b,#07,#1c,#81,#01
	db #72,#83,#0d,#6a,#87,#02,#76,#07
	db #78,#05,#1c,#81,#0c,#80,#8d,#0f
	db #5a,#89,#07,#1c,#81,#01,#80,#83
	db #0e,#7c,#87,#03,#78,#07,#72,#05
	db #1c,#81,#0c,#8a,#8d,#0f,#72,#8b
	db #07,#1c,#81,#01,#72,#83,#0d,#6a
	db #87,#02,#76,#07,#78,#05,#1c,#81
	db #0c,#80,#8d,#0f,#5a,#89,#07,#1c
	db #81,#01,#80,#83,#0e,#7c,#87,#03
	db #78,#07,#70,#05,#20,#81,#0c,#88
	db #8d,#0f,#68,#8b,#09,#20,#81,#01
	db #70,#83,#0d,#68,#87,#02,#72,#07
	db #76,#05,#20,#81,#0c,#80,#8d,#0f
	db #50,#89,#09,#20,#81,#01,#7c,#83
	db #0e,#78,#87,#03,#76,#07,#70,#05
	db #20,#81,#0c,#88,#8d,#0f,#68,#8b
	db #09,#20,#81,#01,#70,#83,#0d,#68
	db #87,#02,#72,#07,#76,#05,#20,#81
	db #0c,#80,#8d,#0f,#50,#89,#09,#20
	db #81,#01,#7c,#83,#0e,#78,#87,#03
	db #76,#07,#72,#05,#8a,#89,#0f,#6a
	db #93,#05,#1c,#8d,#01,#86,#89,#0f
	db #72,#93,#07,#8a,#89,#0f,#80,#09
	db #6a,#95,#04,#80,#89,#0f,#78,#93
	db #04,#1c,#8d,#01,#7c,#89,#0f,#5a
	db #91,#07,#80,#89,#0f,#72,#09,#7c
	db #95,#05,#8a,#89,#0f,#72,#93,#05
	db #1c,#8d,#01,#86,#89,#0f,#72,#93
	db #07,#8a,#89,#0f,#80,#09,#6a,#95
	db #04,#80,#89,#0f,#78,#93,#04,#1c
	db #8d,#01,#7c,#89,#0f,#5a,#91,#07
	db #80,#89,#0f,#86,#09,#7c,#95,#05
	db #88,#89,#0f,#70,#93,#05,#20,#8d
	db #01,#82,#89,#0f,#68,#93,#09,#88
	db #89,#0f,#80,#09,#68,#95,#04,#80
	db #89,#0f,#76,#93,#04,#20,#8d,#01
	db #7c,#89,#0f,#50,#91,#09,#80,#89
	db #0f,#7c,#09,#78,#95,#05,#88,#89
	db #0f,#70,#93,#05,#20,#8d,#01,#82
	db #89,#0f,#68,#93,#09,#88,#89,#0f
	db #80,#09,#68,#95,#04,#80,#89,#0f
	db #76,#93,#04,#20,#8d,#01,#88,#89
	db #0f,#50,#91,#09,#8a,#89,#0f,#8e
	db #09,#78,#95,#05,#72,#89,#0a,#ce
	db #72,#09,#72,#11,#ce,#72,#09,#72
	db #13,#72,#09,#72,#11,#72,#09,#72
	db #11,#72,#13,#72,#09,#72,#13,#72
	db #09,#72,#11,#6a,#89,#0b,#72,#91
	db #0a,#6a,#89,#0b,#6a,#11,#72,#93
	db #0a,#6a,#89,#0b,#6a,#13,#6a,#09
	db #6a,#11,#6a,#09,#6a,#11,#6a,#13
	db #6a,#09,#6a,#13,#6a,#09,#6a,#11
	db #64,#89,#0a,#6a,#91,#0b,#64,#89
	db #0a,#64,#11,#6a,#93,#0b,#64,#89
	db #0a,#64,#13,#64,#09,#64,#11,#64
	db #09,#64,#11,#64,#13,#64,#09,#64
	db #13,#64,#09,#64,#11,#60,#89,#0b
	db #64,#91,#0a,#60,#89,#0b,#60,#11
	db #64,#93,#0a,#60,#89,#0b,#60,#13
	db #60,#09,#60,#11,#60,#09,#60,#11
	db #60,#13,#60,#09,#60,#13,#60,#09
	db #60,#11,#2a,#81,#0c,#d2,#2a,#09
	db #c4,#04,#c4,#04,#c4,#04,#c8,#04
	db #0c,#c8,#04,#0d,#c8,#05,#0e,#c8
	db #05,#0f,#c8,#06,#10,#c8,#06,#11
	db #c8,#07,#12,#c8,#07,#13,#c8,#08
	db #14,#c8,#08,#15,#c8,#09,#16,#c8
	db #09,#17,#c8,#0a,#18,#c8,#0a,#19
	db #c8,#0b,#1a,#c8,#0b,#1b,#c8,#0c
	db #1c,#c8,#0c,#1d,#c8,#0d,#1e,#c8
	db #0d,#1f,#c8,#0e,#20,#c8,#0e,#21
	db #c2,#8a,#89,#0f,#8a,#11,#72,#09
	db #72,#11,#8a,#0d,#72,#09,#72,#11
	db #8a,#0f,#72,#09,#72,#11,#8a,#11
	db #72,#09,#72,#11,#8a,#13,#72,#09
	db #72,#11,#8a,#09,#8a,#11,#72,#09
	db #72,#11,#8a,#0d,#72,#09,#72,#11
	db #8a,#0f,#72,#09,#72,#11,#8a,#11
	db #72,#09,#72,#11,#8a,#13,#72,#09
	db #72,#11,#8a,#09,#8a,#11,#72,#09
	db #72,#11,#8a,#0d,#72,#09,#72,#11
	db #8a,#0f,#72,#09,#72,#11,#8a,#11
	db #72,#09,#72,#11,#8a,#13,#72,#09
	db #72,#11,#8a,#09,#8a,#11,#72,#09
	db #72,#11,#8a,#0d,#72,#09,#72,#11
	db #8a,#0f,#72,#09,#72,#11,#8a,#11
	db #72,#09,#72,#11,#8a,#13,#72,#11
	db #72,#0d,#72,#89,#0a,#60,#91,#0b
	db #72,#89,#0a,#72,#11,#60,#93,#0b
	db #72,#89,#0a,#72,#13,#72,#09,#72
	db #11,#72,#09,#72,#11,#72,#13,#72
	db #09,#72,#13,#72,#09,#72,#11,#6a
	db #89,#0b,#72,#91,#0a,#6a,#89,#0b
	db #6a,#11,#72,#93,#0a,#6a,#89,#0b
	db #6a,#13,#6a,#09,#6a,#11,#6a,#09
	db #6a,#11,#6a,#13,#6a,#09,#6a,#13
	db #6a,#09,#6a,#11,#64,#89,#0a,#6a
	db #91,#0b,#64,#89,#0a,#64,#11,#6a
	db #93,#0b,#64,#89,#0a,#64,#13,#64
	db #09,#64,#11,#64,#09,#64,#11,#64
	db #13,#64,#09,#64,#13,#64,#09,#64
	db #11,#60,#89,#0b,#64,#91,#0a,#60
	db #89,#0b,#60,#11,#64,#93,#0a,#60
	db #89,#0b,#60,#13,#60,#09,#60,#11
	db #60,#09,#60,#11,#60,#13,#60,#09
	db #60,#13,#60,#09,#60,#11,#d4,#72
	db #89,#10,#ce,#72,#11,#ce,#72,#13
	db #ce,#72,#15,#ce,#72,#17,#5a,#09
	db #ce,#5a,#11,#ce,#5a,#13,#ce,#5a
	db #15,#72,#07,#ce,#72,#0f,#ce,#72
	db #11,#ce,#72,#13,#ce,#72,#15,#5a
	db #07,#ce,#5a,#0f,#ce,#5a,#11,#ce
	db #5a,#13,#72,#07,#ce,#72,#0f,#ce
	db #72,#11,#ce,#72,#13,#ce,#72,#15
	db #5a,#07,#ce,#5a,#0f,#ce,#5a,#11
	db #ce,#5a,#13,#72,#05,#ce,#72,#0f
	db #ce,#72,#11,#ce,#72,#13,#ce,#72
	db #15,#5a,#05,#ce,#5a,#0f,#2a,#81
	db #0c,#ce,#2a,#85,#01,#42,#01,#72
	db #83,#06,#42,#85,#01,#72,#8d,#06
	db #2a,#81,#0c,#72,#8f,#06,#2a,#87
	db #0c,#72,#91,#06,#2a,#85,#01,#42
	db #01,#5a,#83,#06,#42,#85,#01,#5a
	db #8d,#06,#22,#81,#0c,#ce,#22,#85
	db #01,#3a,#01,#72,#83,#06,#3a,#85
	db #01,#72,#8d,#06,#22,#81,#0c,#72
	db #8f,#06,#22,#87,#0c,#72,#91,#06
	db #22,#85,#01,#3a,#01,#5a,#83,#06
	db #38,#85,#01,#5a,#8d,#06,#1c,#81
	db #0c,#ce,#1c,#85,#01,#34,#01,#72
	db #83,#06,#34,#85,#01,#72,#8d,#06
	db #1c,#81,#0c,#72,#8f,#06,#1c,#87
	db #0c,#72,#91,#06,#1c,#85,#01,#34
	db #01,#5a,#83,#06,#34,#85,#01,#5a
	db #8d,#06,#30,#81,#0c,#ce,#30,#85
	db #01,#48,#01,#72,#83,#06,#48,#85
	db #01,#72,#8d,#06,#30,#81,#01,#72
	db #8f,#06,#30,#87,#0c,#72,#91,#06
	db #30,#85,#0c,#48,#81,#01,#5a,#83
	db #06,#46,#85,#0c,#5a,#8d,#06,#2a
	db #81,#0c,#ce,#2a,#85,#01,#42,#01
	db #72,#83,#06,#42,#85,#01,#72,#8d
	db #06,#2a,#81,#0c,#72,#8f,#06,#2a
	db #87,#0c,#72,#91,#06,#2a,#85,#01
	db #42,#01,#5a,#83,#06,#42,#85,#01
	db #5a,#8d,#06,#22,#81,#0c,#ce,#22
	db #85,#01,#3a,#01,#72,#83,#07,#3a
	db #85,#01,#72,#8d,#07,#22,#81,#0c
	db #72,#8f,#07,#22,#87,#0c,#72,#91
	db #07,#22,#85,#01,#3a,#01,#5a,#83
	db #07,#38,#85,#01,#5a,#8d,#07,#1c
	db #81,#0c,#ce,#1c,#85,#01,#34,#01
	db #72,#83,#06,#34,#85,#01,#72,#8d
	db #06,#1c,#81,#0c,#72,#8f,#06,#1c
	db #87,#0c,#72,#91,#06,#1c,#85,#01
	db #34,#01,#5a,#83,#06,#34,#85,#01
	db #5a,#8d,#06,#30,#81,#0c,#ce,#30
	db #85,#01,#48,#01,#78,#83,#09,#48
	db #85,#01,#78,#8d,#09,#30,#81,#01
	db #78,#8f,#09,#30,#87,#0c,#78,#91
	db #09,#30,#85,#0c,#48,#81,#01,#6e
	db #83,#06,#46,#85,#0c,#6e,#8d,#06
	db #5a,#81,#0f,#c4,#05,#5a,#07,#5a
	db #03,#c4,#05,#5a,#03,#5e,#03,#60
	db #03,#64,#03,#c4,#05,#60,#03,#5e
	db #03,#60,#03,#c4,#05,#5e,#03,#5a
	db #03,#5a,#01,#c4,#05,#5a,#07,#5a
	db #03,#c4,#05,#5a,#03,#5e,#03,#60
	db #03,#68,#03,#c4,#05,#64,#03,#60
	db #03,#64,#03,#c4,#05,#60,#03,#5a
	db #03,#5a,#01,#c4,#05,#5a,#07,#5a
	db #03,#c4,#05,#5a,#03,#5e,#03,#60
	db #03,#64,#03,#c4,#05,#60,#03,#5e
	db #03,#60,#03,#c4,#05,#5e,#03,#5a
	db #03,#50,#01,#c4,#05,#50,#07,#50
	db #03,#c4,#05,#50,#03,#c4,#05,#50
	db #03,#c4,#05,#50,#03,#c4,#05,#50
	db #03,#56,#03,#50,#03,#56,#03,#c4
	db #05,#72,#89,#0a,#8a,#87,#0d,#72
	db #89,#0a,#72,#11,#8a,#87,#04,#72
	db #89,#0a,#8a,#87,#04,#72,#89,#0a
	db #72,#11,#72,#09,#72,#11,#72,#13
	db #72,#09,#72,#13,#72,#09,#72,#11
	db #6a,#89,#0b,#8a,#87,#0d,#6a,#89
	db #0b,#6a,#11,#8a,#87,#04,#6a,#89
	db #0b,#8a,#87,#04,#6a,#89,#0b,#6a
	db #11,#6a,#09,#6a,#11,#6a,#13,#6a
	db #09,#6a,#13,#6a,#09,#6a,#11,#64
	db #89,#0a,#8a,#87,#0d,#64,#89,#0a
	db #64,#11,#8a,#87,#04,#64,#89,#0a
	db #8a,#87,#04,#64,#89,#0a,#64,#11
	db #64,#09,#64,#11,#64,#13,#64,#09
	db #64,#13,#64,#09,#64,#11,#60,#89
	db #0b,#86,#87,#0d,#60,#89,#0b,#60
	db #11,#86,#87,#04,#60,#89,#0b,#86
	db #87,#04,#60,#89,#0b,#60,#11,#60
	db #09,#60,#11,#60,#13,#60,#09,#60
	db #13,#60,#09,#60,#11,#5a,#81,#0f
	db #c4,#05,#5a,#07,#5a,#03,#c4,#05
	db #5a,#03,#5e,#03,#60,#03,#64,#03
	db #c4,#05,#60,#03,#5e,#03,#60,#03
	db #c4,#05,#5e,#03,#5a,#03,#5a,#01
	db #c4,#05,#5a,#07,#5a,#03,#c4,#05
	db #5a,#03,#5e,#03,#60,#03,#68,#03
	db #c4,#05,#64,#03,#60,#03,#64,#03
	db #c4,#05,#60,#03,#5a,#03,#5a,#01
	db #c4,#05,#5a,#07,#5a,#03,#c4,#05
	db #5a,#03,#5e,#03,#60,#03,#64,#03
	db #c4,#05,#60,#03,#5e,#03,#60,#03
	db #c4,#05,#64,#03,#68,#03,#68,#01
	db #c4,#05,#68,#03,#68,#03,#c4,#05
	db #68,#03,#64,#03,#60,#03,#64,#01
	db #c4,#05,#64,#03,#64,#03,#c4,#05
	db #64,#03,#60,#03,#5e,#03,#72,#89
	db #0a,#8a,#87,#02,#72,#8b,#0a,#72
	db #13,#8a,#87,#04,#72,#95,#0a,#8a
	db #87,#04,#72,#97,#0a,#72,#11,#72
	db #19,#72,#13,#72,#1b,#72,#15,#72
	db #1d,#72,#17,#72,#1f,#ce,#8a,#89
	db #02,#c4,#0f,#ce,#8a,#89,#04,#c4
	db #0f,#8a,#09,#c4,#0f,#de,#8a,#8b
	db #02,#c4,#0f,#ce,#8a,#8b,#04,#c4
	db #0f,#8a,#0b,#c4,#0f,#de,#8a,#8d
	db #02,#c4,#0f,#ce,#8a,#8d,#04,#c4
	db #0f,#8a,#0d,#c4,#0f,#c2,#2a,#81
	db #0c,#ce,#2a,#85,#01,#42,#01,#72
	db #83,#06,#42,#85,#01,#72,#8d,#06
	db #2a,#81,#0c,#72,#8f,#06,#2a,#87
	db #0c,#72,#91,#06,#2a,#85,#01,#42
	db #01,#5a,#83,#06,#42,#85,#01,#5a
	db #8d,#06,#2a,#81,#0c,#ce,#2a,#85
	db #01,#42,#01,#72,#83,#06,#42,#85
	db #01,#72,#8d,#06,#2a,#81,#0c,#72
	db #8f,#06,#2a,#87,#01,#72,#91,#06
	db #2a,#85,#01,#42,#01,#5a,#83,#06
	db #42,#85,#01,#5a,#8d,#06,#2a,#81
	db #0c,#ce,#2a,#85,#01,#42,#01,#72
	db #83,#06,#42,#85,#01,#72,#8d,#06
	db #2a,#81,#0c,#72,#8f,#06,#2a,#87
	db #0c,#72,#91,#06,#2a,#85,#01,#42
	db #01,#5a,#83,#06,#42,#85,#01,#5a
	db #8d,#06,#2a,#81,#0c,#ce,#2a,#85
	db #01,#42,#01,#72,#83,#06,#42,#85
	db #01,#72,#8d,#06,#2a,#81,#0c,#72
	db #8f,#06,#2a,#87,#0c,#72,#91,#06
	db #2a,#85,#01,#42,#01,#5a,#83,#06
	db #42,#85,#01,#5a,#8d,#06,#5a,#81
	db #0f,#5a,#0b,#ce,#c4,#06,#ce,#c4
	db #07,#ce,#c4,#08,#ce,#c4,#09,#ce
	db #c4,#0a,#ce,#c4,#0b,#ce,#c4,#0c
	db #ce,#c4,#0d,#ce,#c4,#0e,#ce,#c4
	db #0f,#c2,#ce,#8a,#8f,#02,#c4,#0f
	db #ce,#8a,#8f,#04,#c4,#0f,#8a,#0f
	db #c4,#0f,#de,#8a,#91,#02,#c4,#0f
	db #ce,#8a,#91,#04,#c4,#0f,#8a,#11
	db #c4,#0f,#de,#8a,#93,#02,#c4,#0f
	db #ce,#8a,#93,#04,#c4,#0f,#8a,#13
	db #c4,#0f,#de,#8a,#95,#02,#c4,#0f
	db #ce,#8a,#95,#04,#c4,#0f,#8a,#15
	db #c4,#0f,#c2,#2a,#81,#0c,#c4,#0f
	db #ce,#2a,#81,#01,#d4,#2a,#81,#0c
	db #c4,#0f,#ce,#2a,#81,#01,#d4,#2a
	db #81,#0c,#c4,#0f,#ce,#2a,#81,#01
	db #d4,#2a,#81,#0c,#c4,#0f,#ce,#2a
	db #81,#01,#d4,#2a,#81,#0c,#c4,#0f
	db #ce,#2a,#81,#01,#d4,#2a,#81,#0c
	db #c4,#0f,#ce,#2a,#81,#01,#d4,#2a
	db #81,#0c,#c4,#0f,#ce,#2a,#81,#01
	db #d4,#2a,#81,#0c,#c4,#0f,#ce,#2a
	db #81,#01,#c2,#d0,#2a,#8d,#01,#d0
	db #2a,#0d,#d4,#2a,#0d,#d0,#2a,#0d
	db #d4,#2a,#0d,#d0,#2a,#0d,#d4,#2a
	db #0d,#d0,#2a,#0d,#d4,#2a,#0d,#d0
	db #2a,#0d,#d4,#2a,#0d,#d0,#2a,#0d
	db #d4,#2a,#0d,#d0,#2a,#0d,#d4,#2a
	db #0d,#d0,#2a,#0d,#c2,#ff,#1a,#45
	db #4e,#54,#24,#24,#24,#ff,#00,#ff
	db #20,#20,#20,#20,#54,#48,#45,#20
	db #41,#53,#49,#41,#4e,#20,#41,#47
	db #45,#4e,#54,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#01,#12,#00,#00
	db #12,#03,#13,#00,#02,#00,#01,#00
	db #03,#00,#3f,#00,#05,#00,#04,#00
	db #06,#00,#3f,#00,#08,#00,#07,#00
	db #09,#00,#3f,#00,#0b,#00,#0a,#00
	db #0c,#00,#3f,#00,#0e,#00,#0d,#00
	db #0f,#00,#3f,#00,#11,#00,#10,#00
	db #12,#00,#3f,#00,#14,#00,#13,#00
	db #15,#00,#3f,#00,#17,#00,#16,#00
	db #18,#00,#3f,#00,#14,#00,#13,#00
	db #2a,#81,#0c,#72,#8f,#06,#2a,#87
	db #0c,#72,#91,#06,#2a,#85,#01,#42
	db #01,#5a,#83,#06,#42,#85,#01,#5a
	db #8d,#06,#2a,#81,#0c,#ce,#2a,#85
	db #01,#42,#01,#72,#83,#06,#42,#85
	db #01,#72,#8d,#06,#2a,#81,#0c,#72
	db #8f,#06,#2a,#87,#01,#72,#91,#06
	db #2a,#85,#01,#42,#01,#5a,#83,#06
	db #42,#85,#01,#5a,#8d,#06,#2a,#81
	db #0c,#ce,#2a,#85,#01,#42,#01,#72
	db #83,#06,#42,#85,#01,#72,#8d,#06
	db #2a,#81,#0c,#72,#8f,#06,#2a,#87
	db #0c,#72,#91,#06,#2a,#85,#01,#42
	db #01,#5a,#83,#06,#42,#85,#01,#5a
	db #8d,#06,#2a,#81,#0c,#ce,#2a,#85
	db #01,#42,#01,#72,#83,#06,#42,#85
	db #e5
;
.init_music		; added by Megachur
;
	ld de,music_data
	jp real_init_music
;
.music_info
	db "Le Jeu De La Vie - Conway (2010)(Benediction)(Mr Lou)",0
	db "StArkos",0

	read "music_end.asm"
