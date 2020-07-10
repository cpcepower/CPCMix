; Music of Load Error 2015 - CePeCe (2015)(Public Domain)(stRing)(StArkOs)
; Ripped by Megachur the 23/02/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LOADERR2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #4000

	read "music_header.asm"

	jp l400a
	jp l402e
.l4009 equ $ + 3
.l4008 equ $ + 2
	db #00,#40,#00,#00
.l400a
	call l48e0
	ld hl,l4054
.l4011 equ $ + 1
	ld a,#00
.l4012
	cp (hl)
	jr z,l4019
	inc hl
	inc hl
	jr l4012
.l4019
	inc hl
	ld a,(hl)
	ld (l404d),a
	xor a
	ld (l4043),a
	ld hl,l4037
	ld bc,#8100
	ld de,l4041
	jp #bce0
.l402e
	ld hl,l4037
	call #bce6
	jp l48bb
.l4037
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
;
.interrup_play_music
.l4041

;
	di
.l4043 equ $ + 1
	ld a,#00
	sub #01
	jr c,l404c
	ld (l4043),a
	ret
.l404d equ $ + 1
.l404c
	ld a,#00
	ld (l4043),a
	jp l4060
.l4054			; data !
	dec c
	ld de,#0b19
	ld (#6405),a
	ld (bc),a
	sub (hl)
	ld bc,#002c
;
.play_music
.l4060
;
	xor a
	ld (l4008),a
	ld (l4899),a
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
.l4071 equ $ + 1
	ld a,#00
.l4073 equ $ + 1
	cp #00
	jr z,l407d
	inc a
	ld (l4071),a
	jp l430c
.l407d
	xor a
	ld (l4071),a
.l4081
	or a
	jp nc,l4163
	ld (l418b),a
	ld (l41f6),a
	ld (l4261),a
	ld a,#b7
	ld (l4081),a
.l4094 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l40ca
.l409a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l40c7
	ld b,a
	and #1f
	bit 4,a
	jr z,l40ab
	or #e0
.l40ab
	ld (l4198),a
	rl b
	rl b
	jr nc,l40b9
	ld a,(hl)
	ld (l4203),a
	inc hl
.l40b9
	rl b
	jr nc,l40c2
	ld a,(hl)
	ld (l426e),a
	inc hl
.l40c2
	ld (l409a),hl
	jr l40cd
.l40c7
	ld (l409a),hl
.l40ca
	ld (l4094),a
.l40ce equ $ + 1
.l40cd
	ld a,#00
	sub #01
	jr c,l40da
	ld (l40ce),a
.l40d7 equ $ + 1
	ld a,#00
	jr l40f5
.l40db equ $ + 1
.l40da
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l40e8
	ld (l40db),hl
	jr l40f5
.l40e8
	ld (l40d7),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l40db),hl
	ld (l40ce),a
	ld a,b
.l40f5
	ld (l42cc),a
.l40f9 equ $ + 1
	ld hl,#0000
	ld de,l4191
	ldi
	ldi
	ld de,l41fc
	ldi
	ldi
	ld de,l4267
	ldi
	ldi
	ld (l40f9),hl
.l4114 equ $ + 1
	ld a,#00
	or a
	jr nz,l4126
.l4119 equ $ + 1
	ld a,#00
	sub #01
	jr c,l4134
	ld (l4119),a
.l4122 equ $ + 1
	ld hl,#0000
	jr l416c
.l4127 equ $ + 1
.l4126
	ld a,#00
	sub #01
	jr c,l4134
	ld (l4127),a
	ld hl,(l4135)
	jr l4159
.l4135 equ $ + 1
.l4134
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l4151
	ld (l4119),a
	xor a
	ld (l4114),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4135),hl
	ex de,hl
	ld (l4122),hl
	jr l416c
.l4151
	ld (l4127),a
	ld a,#01
	ld (l4114),a
.l4159
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4135),hl
	ex de,hl
	jr l416c
.l4164 equ $ + 1
.l4163
	ld a,#00
	sub #01
	jr nc,l4187
.l416a equ $ + 1
	ld hl,#0000
.l416c
	ld a,(hl)
	inc hl
	srl a
	jr c,l4184
	srl a
	jr c,l417b
	ld (l4073),a
	jr l4183
.l417b
	ld (l4008),a
.l417f equ $ + 1
	ld a,#01
	ld (l4009),a
.l4183
	xor a
.l4184
	ld (l416a),hl
.l4187
	ld (l4164),a
.l418b equ $ + 1
	ld a,#00
	sub #01
	jr nc,l41f2
.l4191 equ $ + 1
	ld hl,#0000
.l4194 equ $ + 1
	ld bc,#0100
.l4198 equ $ + 2
.l4197 equ $ + 1
	ld de,#0000
.l419b equ $ + 2
	ld lx,#00
	call l440b
	ld a,lx
	ld (l419b),a
	ld (l4316),hl
	exx
	ld (l4191),hl
	ld a,c
	ld (l4194),a
	ld (l4310),a
	xor a
	or hy
	jr nz,l41f0
	ld (l4333),a
	ld d,a
	ld a,e
	ld (l4197),a
	ld l,d
	ld h,l
	ld (l4313),hl
.l41c5 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l4344
	ldi
	ldi
	ld de,l433c
	ldi
	ldi
	ld de,l4335
	ldi
	ld de,l4346
	ldi
	ld a,(hl)
	inc hl
	ld (l4325),hl
	ld hl,l4899
	or (hl)
	ld (hl),a
.l41f0
	ld a,ly
.l41f2
	ld (l418b),a
.l41f6 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l425d
.l41fc equ $ + 1
	ld hl,#0000
.l41ff equ $ + 1
	ld bc,#0200
.l4203 equ $ + 2
.l4202 equ $ + 1
	ld de,#0000
.l4206 equ $ + 2
	ld lx,#00
	call l440b
	ld a,lx
	ld (l4206),a
	ld (l4368),hl
	exx
	ld (l41fc),hl
	ld a,c
	ld (l41ff),a
	ld (l4362),a
	xor a
	or hy
	jr nz,l425b
	ld (l4385),a
	ld d,a
	ld a,e
	ld (l4202),a
	ld l,d
	ld h,l
	ld (l4365),hl
.l4230 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l4396
	ldi
	ldi
	ld de,l438e
	ldi
	ldi
	ld de,l4387
	ldi
	ld de,l4398
	ldi
	ld a,(hl)
	inc hl
	ld (l4377),hl
	ld hl,l4899
	or (hl)
	ld (hl),a
.l425b
	ld a,ly
.l425d
	ld (l41f6),a
.l4261 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l42c8
.l4267 equ $ + 1
	ld hl,#0000
.l426a equ $ + 1
	ld bc,#0300
.l426e equ $ + 2
.l426d equ $ + 1
	ld de,#0000
.l4271 equ $ + 2
	ld lx,#00
	call l440b
	ld a,lx
	ld (l4271),a
	ld (l43ba),hl
	exx
	ld (l4267),hl
	ld a,c
	ld (l426a),a
	ld (l43b4),a
	xor a
	or hy
	jr nz,l42c6
	ld (l43d7),a
	ld d,a
	ld a,e
	ld (l426d),a
	ld l,d
	ld h,l
	ld (l43b7),hl
.l429b equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l43e8
	ldi
	ldi
	ld de,l43e0
	ldi
	ldi
	ld de,l43d9
	ldi
	ld de,l43ea
	ldi
	ld a,(hl)
	inc hl
	ld (l43c9),hl
	ld hl,l4899
	or (hl)
	ld (hl),a
.l42c6
	ld a,ly
.l42c8
	ld (l4261),a
.l42cc equ $ + 1
	ld a,#00
	sub #01
	jr c,l42d6
	ld (l42cc),a
	jr l430c
.l42d6
	ld a,#37
	ld (l4081),a
	ld hl,(l40f9)
.l42df equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l430c
	ld (l4094),a
	ld (l40ce),a
	ld (l4164),a
.l42f0 equ $ + 1
	ld hl,#0000
	ld (l409a),hl
.l42f6 equ $ + 1
	ld hl,#0000
	ld (l40db),hl
.l42fc equ $ + 1
	ld hl,#0000
	ld (l40f9),hl
.l4302 equ $ + 1
	ld hl,#0000
	ld (l4135),hl
.l4308 equ $ + 1
	ld a,#00
	ld (l4114),a
.l430c
	ld hl,l4899
.l4310 equ $ + 1
	ld d,#00
	exx
.l4313 equ $ + 1
	ld hl,#0000
.l4316 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4313),hl
	ld (l4546),hl
	ld a,(l419b)
	ld lx,a
.l4325 equ $ + 1
	ld hl,#0000
	ld iy,l4734
	ld a,(l4333)
	call l44a0
	ex de,hl
.l4333 equ $ + 1
	ld a,#00
.l4335 equ $ + 1
	cp #00
	jr z,l433b
	inc a
	jr l4358
.l433c equ $ + 1
.l433b
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l4354
.l4344 equ $ + 1
	ld de,#0000
.l4346
	or a
	jr c,l4354
.l434a equ $ + 1
	ld hl,#0000
	ld (l433c),hl
	dec a
	ld (l4335),a
	inc a
.l4354
	ld (l4325),de
.l4358
	ld (l4333),a
	ld a,hx
	ld (l4407),a
	exx
.l4362 equ $ + 1
	ld d,#00
	exx
.l4365 equ $ + 1
	ld hl,#0000
.l4368 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4365),hl
	ld (l4546),hl
	ld a,(l4206)
	ld lx,a
.l4377 equ $ + 1
	ld hl,#0000
	ld iy,l4785
	ld a,(l4385)
	call l44a0
	ex de,hl
.l4385 equ $ + 1
	ld a,#00
.l4387 equ $ + 1
	cp #00
	jr z,l438d
	inc a
	jr l43aa
.l438e equ $ + 1
.l438d
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l43a6
.l4396 equ $ + 1
	ld de,#0000
.l4398
	or a
	jr c,l43a6
.l439c equ $ + 1
	ld hl,#0000
	ld (l438e),hl
	dec a
	ld (l4387),a
	inc a
.l43a6
	ld (l4377),de
.l43aa
	ld (l4385),a
	ld a,hx
	ld (l4404),a
	exx
.l43b4 equ $ + 1
	ld d,#00
	exx
.l43b7 equ $ + 1
	ld hl,#0000
.l43ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l43b7),hl
	ld (l4546),hl
	ld a,(l4271)
	ld lx,a
.l43c9 equ $ + 1
	ld hl,#0000
	ld iy,l47d6
	ld a,(l43d7)
	call l44a0
	ex de,hl
.l43d7 equ $ + 1
	ld a,#00
.l43d9 equ $ + 1
	cp #00
	jr z,l43df
	inc a
	jr l43fc
.l43e0 equ $ + 1
.l43df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l43f8
.l43e8 equ $ + 1
	ld de,#0000
.l43ea
	or a
	jr c,l43f8
.l43ee equ $ + 1
	ld hl,#0000
	ld (l43e0),hl
	dec a
	ld (l43d9),a
	inc a
.l43f8
	ld (l43c9),de
.l43fc
	ld (l43d7),a
	ld a,hx
	sla a
.l4404 equ $ + 1
	or #00
	rla
.l4407 equ $ + 1
	or #00
	jp l4729
.l440b
	ld a,(hl)
	inc hl
	srl a
	jr c,l4444
	cp #60
	jr nc,l444c
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l4424
	and #0f
	ld c,a
.l4424
	rl b
	jr nc,l442a
	ld e,(hl)
	inc hl
.l442a
	rl b
	jr nc,l443c
.l442e
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l4438
	dec h
.l4438
	ld ly,#00
	ret
.l443c
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l4444
	ld hy,#00
	add d
	ld lx,a
	jr l443c
.l444c
	ld hy,#01
	sub #60
	jr z,l446d
	dec a
	jr z,l4484
	dec a
	jr z,l4476
	dec a
	jr z,l442e
	dec a
	jr z,l4480
	dec a
	jr z,l4495
	dec a
	jr z,l448c
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l446d
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l4476
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l4480
	ld c,(hl)
	inc hl
	jr l442e
.l4484
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l448c
	ld a,(hl)
	inc hl
	ld (l4008),a
	ld a,b
	ld (l4009),a
.l4495
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l44a0
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l4556
	bit 4,e
	jr z,l4508
	ld a,(hl)
	bit 6,a
	jr z,l44d5
	ld d,#08
	inc hl
	and #1f
	jr z,l44bc
	ld (l4827),a
	res 3,d
.l44bc
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l44c5
	xor a
.l44c5
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l44d5
	ld (l4827),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l44f1
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l44ea
	xor a
.l44ea
	ld (iy+#36),a
	ld hx,d
	jr l451b
.l44f1
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l44fa
	xor a
.l44fa
	ld (iy+#36),a
.l44fd
	ld hx,d
	ret
.l4500
	ld (iy+#36),#00
	ld d,#09
	jr l44fd
.l4508
	ld d,#08
	ld a,e
	and #0f
	jr z,l4500
	exx
	sub d
	exx
	jr nc,l4515
	xor a
.l4515
	ld (iy+#36),a
	ld hx,#08
.l451b
	bit 5,e
	jr z,l4523
	ld a,(hl)
	inc hl
	jr l4524
.l4523
	xor a
.l4524
	bit 6,e
	jr z,l452e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l4531
.l452e
	ld de,#0000
.l4531
	add lx
	cp #60
	jr c,l4539
	ld a,#5f
.l4539
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l4669
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l4546 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l4556
	or a
	jr nz,l4560
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l4560
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
	ld (l4892),a
	bit 3,e
	jr z,l4582
	ld a,(hl)
	inc hl
	ld (l4827),a
	res 3,d
	jr l4582
.l4582
	ld hx,d
	xor a
	bit 7,b
	jr z,l4594
	bit 6,b
	jr z,l458f
	ld a,(hl)
	inc hl
.l458f
	ld (l4643),a
	ld a,#01
.l4594
	ld (l45dc),a
	ld a,b
	rra
	and #0e
	ld (l45ed),a
	bit 4,e
	jp nz,l464e
	bit 1,e
	jr z,l45ab
	ld a,(hl)
	inc hl
	jr l45ac
.l45ab
	xor a
.l45ac
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l45b9
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l45bc
.l45b9
	ld de,#0000
.l45bc
	add lx
	cp #60
	jr c,l45c4
	ld a,#5f
.l45c4
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l4669
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l4546)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l45dc equ $ + 1
	ld a,#00
	or a
	jr nz,l45ec
	ex af,af'
	bit 5,a
	jr nz,l4657
.l45e5
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l45ed equ $ + 1
.l45ec
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l45f7),a
	ld a,c
.l45f7 equ $ + 1
	jr l45f8
.l45f8
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
	jr nc,l4611
	inc bc
.l4611
	ld a,c
	ld (l485c),a
	ld a,b
	ld (l4877),a
	ld a,(l45dc)
	or a
	jr z,l464c
	ld a,(l45ed)
	ld e,a
	srl a
	add e
	ld (l462b),a
	ld a,b
.l462b equ $ + 1
	jr l462c
.l462c
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
.l4643 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l464c
	pop hl
	ret
.l464e
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l45e5
.l4657
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l485c),a
	inc hl
	ld a,(hl)
	ld (l4877),a
	inc hl
	ret
.l4669
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
.l4729
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l4734 equ $ + 1
	ld a,#00
.l4736 equ $ + 1
	cp #00
	jr z,l474e
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
	ld (l4736),a
	exx
.l474f equ $ + 1
.l474e
	ld a,#00
.l4751 equ $ + 1
	cp #00
	jr z,l4769
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
	ld (l4751),a
	exx
.l476a equ $ + 1
.l4769
	ld a,#00
.l476c equ $ + 1
	cp #00
	jr z,l4784
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
	ld (l476c),a
	exx
.l4785 equ $ + 1
.l4784
	ld a,#00
.l4787 equ $ + 1
	cp #00
	jr z,l479f
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
	ld (l4787),a
	exx
.l47a0 equ $ + 1
.l479f
	ld a,#00
.l47a2 equ $ + 1
	cp #00
	jr z,l47ba
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
	ld (l47a2),a
	exx
.l47bb equ $ + 1
.l47ba
	ld a,#00
.l47bd equ $ + 1
	cp #00
	jr z,l47d5
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
	ld (l47bd),a
	exx
.l47d6 equ $ + 1
.l47d5
	ld a,#00
.l47d8 equ $ + 1
	cp #00
	jr z,l47f0
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
	ld (l47d8),a
	exx
.l47f1 equ $ + 1
.l47f0
	ld a,#00
.l47f3 equ $ + 1
	cp #00
	jr z,l480b
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
	ld (l47f3),a
	exx
.l480c equ $ + 1
.l480b
	ld a,#00
.l480e equ $ + 1
	cp #00
	jr z,l4826
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
	ld (l480e),a
	exx
.l4827 equ $ + 1
.l4826
	ld a,#00
.l4829 equ $ + 1
	cp #00
	jr z,l4841
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
	ld (l4829),a
	exx
.l4841
	ld a,h
.l4843 equ $ + 1
	cp #c0
	jr z,l485b
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
	ld (l4843),a
	exx
.l485c equ $ + 1
.l485b
	ld a,#00
.l485e equ $ + 1
	cp #00
	jr z,l4876
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
	ld (l485e),a
	exx
.l4877 equ $ + 1
.l4876
	ld a,#00
.l4879 equ $ + 1
	cp #00
	jr z,l4891
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
	ld (l4879),a
	exx
.l4892 equ $ + 1
.l4891
	ld a,#00
.l4894 equ $ + 1
	cp #ff
	jr nz,l489e
	ld h,a
.l4899 equ $ + 1
	ld a,#00
	or a
	jr z,l48b2
	ld a,h
.l489e
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
	ld (l4894),a
.l48b2
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
;
.stop_music
.l48bb
;
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l476a),a
	ld (l47bb),a
	ld (l480c),a
	dec a
	ld (l476c),a
	ld (l47bd),a
	ld (l480e),a
	ld (l4843),a
	ld a,#3f
	jp l4729
;
.real_init_music
.l48e0
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l417f),a
	inc hl
	ld a,(hl)
	ld (l4011),a
	inc hl
	inc hl
	ld de,l40db
	ldi
	ldi
	ld de,l40f9
	ldi
	ldi
	ld de,l4135
	ldi
	ldi
	ld de,l41c5
	ldi
	ldi
	ld de,l42f0
	ldi
	ldi
	ld de,l42f6
	ldi
	ldi
	ld de,l42fc
	ldi
	ldi
	ld de,l4302
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l4073),a
	ld (l4071),a
	ld (l409a),hl
	ld hl,(l4135)
	ld (l42df),hl
	ld a,(hl)
	and #01
	ld (l4114),a
	ld hl,(l4302)
	ld a,(hl)
	and #01
	ld (l4308),a
	ld hl,(l41c5)
	ld (l4230),hl
	ld (l429b),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l4325),hl
	ld (l4377),hl
	ld (l43c9),hl
	ld (l4344),hl
	ld (l4396),hl
	ld (l43e8),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l434a),de
	ld (l439c),de
	ld (l43ee),de
	ld (l433c),de
	ld (l438e),de
	ld (l43e0),de
	ld a,#37
	ld (l4081),a
	ld hl,l499f
.l498f
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l4996
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l4996
	jr l498f
.l499f
	jr l49a1
.l49a1
	dw l4734,l474f,l4785,l47a0
	dw l47d6,l47f1,l4827,l476a
	dw l47bb,l480c,l485c,l4877
	dw l4892,l4094,l40ce,l4119
	dw l4127,l4164,l4333,l4385
	dw l43d7,l4194,l41ff,l426a
	dw #ff11,l4736,l4751,l4787
	dw l47a2,l47d8,l47f3,l4829
	dw l4843,l476c,l47bd,l480e
	dw l485e,l4879,l4894,l4335
	dw l4387,l43d9,#b703,l4346
	dw l4398,l43ea
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.music_data
	db #53,#4b,#31,#30,#00,#50,#01,#32
	db #00,#33,#50,#36,#50,#a2,#50,#e9
	db #50,#30,#50,#35,#50,#9c,#50,#e6
	db #50,#05,#c0,#00,#0c,#0a,#05,#40
	db #fc,#01,#40,#00,#80,#0c,#ca,#00
	db #0c,#01,#40,#fc,#05,#80,#0c,#01
	db #c0,#00,#00,#7f,#10,#7e,#d4,#51
	db #55,#52,#d4,#51,#56,#52,#5d,#52
	db #5d,#52,#de,#52,#5d,#52,#5d,#52
	db #11,#53,#ac,#53,#15,#54,#11,#53
	db #ac,#53,#15,#54,#96,#54,#29,#55
	db #95,#55,#96,#54,#29,#55,#95,#55
	db #16,#56,#55,#52,#ab,#56,#16,#56
	db #ab,#56,#ab,#56,#11,#53,#15,#54
	db #15,#54,#11,#53,#15,#54,#15,#54
	db #96,#54,#29,#55,#95,#55,#14,#57
	db #a7,#57,#0d,#58,#96,#54,#29,#55
	db #95,#55,#14,#57,#a7,#57,#0d,#58
	db #96,#54,#29,#55,#95,#55,#8e,#58
	db #0c,#59,#78,#59,#55,#52,#55,#52
	db #55,#52,#26,#f9,#59,#01,#00,#00
	db #06,#f9,#59,#0f,#00,#00,#f9,#59
	db #00,#00,#f9,#59,#00,#00,#00,#00
	db #f9,#59,#00,#00,#02,#f9,#59,#01
	db #00,#00,#02,#f9,#59,#01,#00,#00
	db #02,#f9,#59,#01,#00,#00,#02,#f9
	db #59,#0d,#00,#00,#f9,#59,#00,#00
	db #00,#00,#f9,#59,#00,#00,#00,#00
	db #fe,#f9,#59,#7a,#f9,#59,#00,#f9
	db #59,#ff,#50,#09,#51,#19,#51,#24
	db #51,#3d,#51,#56,#51,#5f,#51,#70
	db #51,#81,#51,#a3,#51,#c4,#51,#06
	db #51,#09,#51,#ff,#37,#00,#00,#00
	db #00,#06,#51,#19,#51,#01,#b7,#00
	db #0b,#0b,#0b,#0b,#0b,#0a,#09,#07
	db #06,#20,#51,#24,#51,#00,#37,#00
	db #80,#10,#80,#10,#06,#51,#3d,#51
	db #00,#b7,#00,#1f,#0b,#4f,#7d,#ff
	db #0f,#4f,#60,#00,#4f,#80,#00,#4f
	db #b0,#00,#4f,#c0,#00,#06,#51,#56
	db #51,#00,#b7,#00,#3f,#29,#0d,#2f
	db #09,#2f,#06,#3d,#25,#04,#3b,#25
	db #02,#3c,#24,#01,#19,#24,#06,#51
	db #5f,#51,#00,#b7,#00,#1a,#01,#06
	db #51,#70,#51,#01,#b7,#00,#0d,#2d
	db #03,#2c,#07,#0b,#2a,#03,#29,#07
	db #06,#51,#81,#51,#01,#b7,#00,#0d
	db #2d,#04,#2c,#07,#0b,#2a,#04,#29
	db #07,#06,#51,#a3,#51,#00,#b7,#00
	db #3e,#21,#0c,#2e,#0c,#0d,#0d,#0c
	db #4b,#ff,#ff,#0a,#4a,#ff,#ff,#09
	db #48,#ff,#ff,#07,#46,#ff,#ff,#05
	db #44,#ff,#ff,#06,#51,#c4,#51,#00
	db #b7,#00,#2e,#0c,#2e,#0c,#0d,#0d
	db #0c,#4c,#ff,#ff,#0b,#4a,#ff,#ff
	db #09,#48,#ff,#ff,#07,#46,#ff,#ff
	db #05,#44,#ff,#ff,#06,#51,#d4,#51
	db #01,#b7,#00,#0e,#2f,#0c,#0f,#2e
	db #0c,#0c,#0a,#08,#48,#9b,#01,#60
	db #1d,#6e,#1b,#56,#1d,#58,#19,#56
	db #1b,#60,#19,#48,#1b,#48,#17,#60
	db #19,#6e,#17,#56,#19,#58,#15,#56
	db #17,#60,#15,#48,#17,#48,#13,#60
	db #15,#6e,#13,#56,#15,#58,#11,#56
	db #13,#60,#11,#48,#13,#48,#0f,#60
	db #11,#6e,#0f,#56,#11,#58,#0d,#56
	db #0f,#60,#0d,#48,#0f,#48,#0b,#60
	db #0d,#6e,#0b,#56,#0d,#58,#09,#56
	db #0b,#60,#09,#48,#0b,#48,#07,#60
	db #0b,#6e,#07,#56,#0b,#58,#05,#56
	db #0b,#60,#05,#48,#0b,#48,#03,#60
	db #0b,#6e,#03,#56,#0b,#58,#01,#56
	db #0b,#60,#01,#48,#0b,#48,#01,#60
	db #0b,#6e,#01,#56,#0b,#58,#01,#56
	db #0b,#60,#01,#48,#0b,#c2,#30,#80
	db #02,#c0,#1e,#37,#c2,#48,#81,#01
	db #60,#0b,#6e,#01,#56,#0b,#58,#01
	db #56,#0b,#60,#01,#48,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#58,#01
	db #56,#0b,#60,#01,#48,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#58,#01
	db #56,#0b,#60,#01,#48,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#58,#01
	db #56,#0b,#60,#01,#48,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#58,#01
	db #56,#0b,#60,#01,#48,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#58,#01
	db #56,#0b,#60,#01,#48,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#58,#01
	db #56,#0b,#60,#01,#48,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#58,#01
	db #56,#0b,#60,#01,#48,#0b,#3a,#81
	db #02,#c0,#1e,#48,#81,#03,#ce,#3e
	db #81,#02,#d6,#48,#81,#03,#ce,#3e
	db #81,#02,#d6,#48,#81,#03,#ce,#3e
	db #81,#02,#ce,#48,#81,#04,#ce,#3e
	db #80,#02,#ce,#48,#80,#03,#ce,#3e
	db #80,#02,#ce,#48,#80,#04,#ce,#49
	db #49,#48,#81,#03,#62,#80,#05,#6e
	db #81,#06,#ce,#48,#81,#04,#62,#80
	db #05,#56,#81,#02,#ce,#3e,#01,#ce
	db #48,#81,#03,#62,#80,#05,#48,#81
	db #04,#62,#80,#05,#3e,#81,#02,#ce
	db #48,#81,#03,#62,#80,#05,#6e,#81
	db #06,#ce,#48,#81,#04,#62,#80,#05
	db #3e,#81,#02,#ce,#56,#01,#ce,#48
	db #81,#03,#62,#80,#05,#48,#81,#04
	db #62,#80,#05,#56,#81,#02,#ce,#48
	db #81,#03,#62,#80,#05,#64,#81,#06
	db #ce,#48,#81,#04,#62,#80,#05,#4c
	db #81,#02,#ce,#64,#01,#ce,#48,#81
	db #03,#62,#80,#05,#48,#81,#04,#62
	db #80,#05,#4c,#81,#02,#ce,#48,#81
	db #03,#62,#80,#05,#60,#81,#07,#ce
	db #48,#81,#04,#62,#80,#05,#30,#81
	db #02,#ce,#48,#01,#ce,#60,#81,#07
	db #ce,#48,#81,#04,#62,#80,#05,#48
	db #81,#04,#48,#01,#60,#81,#08,#66
	db #01,#ce,#60,#03,#66,#03,#ce,#60
	db #05,#66,#05,#ce,#60,#07,#66,#07
	db #ce,#60,#01,#ce,#66,#01,#ce,#60
	db #01,#6a,#01,#ce,#60,#03,#6a,#03
	db #ce,#60,#05,#6a,#05,#ce,#60,#07
	db #6a,#07,#ce,#60,#01,#ce,#6e,#01
	db #ce,#64,#01,#6e,#01,#ce,#64,#03
	db #6e,#03,#ce,#64,#05,#6e,#05,#ce
	db #64,#07,#6e,#07,#ce,#64,#01,#ce
	db #74,#01,#ce,#5a,#01,#6a,#01,#ce
	db #5a,#03,#6a,#03,#ce,#5a,#05,#6a
	db #05,#ce,#5a,#07,#6a,#07,#ce,#72
	db #01,#ce,#60,#01,#c2,#48,#81,#01
	db #60,#0b,#6e,#01,#56,#0b,#58,#01
	db #56,#0b,#60,#01,#48,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#58,#01
	db #56,#0b,#60,#01,#48,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#58,#01
	db #56,#0b,#60,#01,#48,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#58,#01
	db #56,#0b,#60,#01,#48,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#52,#01
	db #56,#0b,#60,#01,#48,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#52,#01
	db #56,#0b,#60,#01,#48,#0b,#48,#01
	db #60,#0b,#6a,#01,#52,#0b,#5a,#01
	db #52,#0b,#60,#01,#48,#0b,#48,#01
	db #60,#0b,#6a,#01,#52,#0b,#5a,#01
	db #52,#0b,#60,#01,#48,#0b,#48,#81
	db #03,#62,#80,#05,#70,#81,#07,#ce
	db #48,#81,#04,#62,#80,#05,#40,#81
	db #02,#ce,#58,#01,#ce,#40,#01,#ce
	db #48,#81,#04,#62,#80,#05,#58,#81
	db #02,#ce,#48,#81,#03,#62,#80,#05
	db #70,#81,#07,#ce,#48,#81,#04,#62
	db #80,#05,#40,#81,#02,#ce,#58,#01
	db #ce,#40,#01,#ce,#48,#81,#04,#62
	db #80,#05,#58,#81,#02,#ce,#48,#81
	db #03,#62,#80,#05,#60,#81,#06,#ce
	db #48,#81,#04,#62,#80,#05,#48,#81
	db #02,#ce,#60,#01,#ce,#60,#81,#06
	db #ce,#48,#81,#04,#62,#80,#05,#60
	db #81,#02,#ce,#48,#81,#03,#62,#80
	db #05,#56,#81,#06,#ce,#48,#81,#04
	db #62,#80,#05,#56,#81,#02,#ce,#6e
	db #01,#ce,#56,#81,#06,#ce,#48,#81
	db #04,#62,#80,#05,#48,#81,#04,#48
	db #01,#70,#81,#09,#ce,#6e,#01,#ce
	db #6e,#87,#0a,#ce,#66,#81,#09,#ce
	db #66,#87,#0a,#ce,#60,#81,#09,#d0
	db #60,#87,#0a,#d0,#70,#81,#09,#ce
	db #6e,#01,#ce,#66,#87,#0a,#ce,#66
	db #81,#09,#ce,#66,#87,#0a,#ce,#60
	db #81,#09,#d0,#6e,#01,#d0,#70,#01
	db #ce,#6e,#01,#ce,#6e,#87,#0a,#ce
	db #66,#81,#09,#ce,#66,#87,#0a,#ce
	db #60,#81,#09,#ce,#60,#87,#0a,#ce
	db #5c,#81,#09,#ce,#60,#01,#ce,#48
	db #87,#0a,#ce,#4e,#07,#ce,#56,#07
	db #ce,#4e,#07,#ce,#56,#07,#ce,#5c
	db #07,#ce,#60,#07,#c2,#48,#81,#01
	db #60,#0b,#6e,#01,#56,#0b,#60,#01
	db #56,#0b,#78,#01,#60,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#60,#01
	db #56,#0b,#78,#01,#60,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#60,#01
	db #56,#0b,#78,#01,#60,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#60,#01
	db #56,#0b,#78,#01,#60,#0b,#38,#01
	db #50,#0b,#5e,#01,#46,#0b,#50,#01
	db #46,#0b,#68,#01,#50,#0b,#38,#01
	db #50,#0b,#5e,#01,#46,#0b,#50,#01
	db #46,#0b,#68,#01,#50,#0b,#46,#01
	db #5e,#0b,#6c,#01,#54,#0b,#5e,#01
	db #54,#0b,#76,#01,#5e,#0b,#46,#01
	db #5e,#0b,#6c,#01,#54,#0b,#5e,#01
	db #54,#0b,#76,#01,#5e,#0b,#48,#81
	db #03,#62,#80,#05,#70,#81,#07,#ce
	db #48,#81,#04,#62,#80,#05,#58,#81
	db #02,#ce,#70,#81,#07,#ce,#58,#81
	db #02,#ce,#48,#81,#04,#62,#80,#05
	db #58,#81,#02,#ce,#48,#81,#03,#62
	db #80,#05,#48,#81,#06,#ce,#48,#81
	db #04,#62,#80,#05,#56,#81,#06,#ce
	db #56,#01,#ce,#48,#81,#04,#62,#80
	db #05,#60,#81,#06,#ce,#6e,#81,#02
	db #ce,#48,#81,#03,#62,#80,#05,#60
	db #81,#06,#ce,#48,#81,#04,#62,#80
	db #05,#48,#81,#02,#ce,#60,#81,#06
	db #ce,#48,#81,#02,#ce,#48,#81,#04
	db #62,#80,#05,#4e,#81,#02,#ce,#48
	db #81,#03,#62,#80,#05,#52,#81,#06
	db #ce,#48,#81,#04,#62,#80,#05,#52
	db #81,#06,#ce,#52,#01,#ce,#48,#81
	db #04,#62,#80,#05,#5c,#81,#07,#ce
	db #5c,#01,#c2,#60,#85,#0a,#66,#05
	db #ce,#60,#07,#66,#07,#ce,#60,#09
	db #66,#09,#ce,#60,#0b,#66,#0b,#ce
	db #60,#05,#ce,#66,#05,#ce,#66,#07
	db #6e,#07,#ce,#66,#09,#6e,#09,#ce
	db #64,#0b,#6e,#0b,#ce,#64,#0d,#6e
	db #0d,#ce,#66,#05,#ce,#6e,#05,#ce
	db #6e,#05,#74,#05,#ce,#6e,#07,#74
	db #07,#ce,#6e,#09,#74,#09,#ce,#6e
	db #0b,#74,#0b,#ce,#6e,#05,#ce,#74
	db #05,#ce,#6e,#05,#78,#05,#ce,#6e
	db #07,#78,#07,#ce,#6e,#09,#78,#09
	db #ce,#6e,#0b,#78,#0b,#ce,#74,#03
	db #ce,#7c,#03,#c2,#48,#81,#03,#62
	db #80,#05,#70,#81,#07,#ce,#48,#81
	db #04,#62,#80,#05,#40,#81,#02,#ce
	db #58,#01,#ce,#40,#01,#ce,#48,#81
	db #04,#62,#80,#05,#58,#81,#02,#ce
	db #48,#81,#03,#62,#80,#05,#70,#81
	db #07,#ce,#48,#81,#04,#62,#80,#05
	db #40,#81,#02,#ce,#58,#01,#ce,#40
	db #01,#ce,#48,#81,#04,#62,#80,#05
	db #58,#81,#02,#ce,#48,#81,#03,#62
	db #80,#05,#4e,#81,#07,#ce,#48,#81
	db #04,#62,#80,#05,#36,#81,#02,#ce
	db #4e,#01,#ce,#4e,#81,#07,#ce,#48
	db #81,#04,#62,#80,#05,#4e,#81,#02
	db #ce,#48,#81,#03,#62,#80,#05,#5c
	db #81,#07,#ce,#48,#81,#04,#62,#80
	db #05,#44,#81,#02,#ce,#5c,#01,#ce
	db #5c,#81,#07,#ce,#48,#81,#04,#62
	db #80,#05,#48,#81,#04,#48,#01,#70
	db #81,#09,#ce,#6e,#01,#ce,#6e,#87
	db #0a,#ce,#66,#81,#09,#ce,#66,#87
	db #0a,#ce,#60,#81,#09,#d0,#60,#87
	db #0a,#d0,#70,#81,#09,#ce,#6e,#01
	db #ce,#66,#87,#0a,#ce,#66,#81,#09
	db #ce,#66,#87,#0a,#ce,#60,#81,#09
	db #d0,#6e,#01,#d0,#70,#01,#ce,#6e
	db #01,#ce,#6e,#87,#0a,#ce,#66,#81
	db #09,#d2,#62,#01,#ce,#66,#01,#ce
	db #5c,#01,#ce,#5c,#8b,#0a,#ce,#5c
	db #81,#09,#ce,#60,#01,#ce,#5c,#01
	db #ce,#60,#01,#ce,#64,#01,#ce,#6a
	db #01,#ce,#64,#01,#c2,#48,#81,#01
	db #60,#0b,#6e,#01,#56,#0b,#60,#01
	db #56,#0b,#78,#01,#60,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#60,#01
	db #56,#0b,#78,#01,#60,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#60,#01
	db #56,#0b,#78,#01,#60,#0b,#48,#01
	db #60,#0b,#6e,#01,#56,#0b,#60,#01
	db #56,#0b,#78,#01,#60,#0b,#3e,#01
	db #56,#0b,#64,#01,#4c,#0b,#56,#01
	db #4c,#0b,#6e,#01,#56,#0b,#3e,#01
	db #56,#0b,#64,#01,#4c,#0b,#56,#01
	db #4c,#0b,#6e,#01,#56,#0b,#4c,#01
	db #64,#0b,#72,#01,#5a,#0b,#64,#01
	db #5a,#0b,#7c,#01,#64,#0b,#4c,#01
	db #64,#0b,#72,#01,#5a,#0b,#64,#01
	db #5a,#0b,#7c,#01,#64,#0b,#48,#81
	db #03,#62,#81,#05,#70,#81,#07,#ce
	db #48,#83,#04,#62,#83,#05,#40,#83
	db #02,#ce,#58,#05,#ce,#40,#05,#ce
	db #48,#87,#04,#62,#87,#05,#58,#87
	db #02,#ce,#48,#87,#03,#62,#89,#05
	db #70,#89,#07,#ce,#48,#89,#04,#62
	db #8b,#05,#40,#8b,#02,#ce,#36,#0b
	db #ce,#40,#0d,#ce,#48,#8d,#04,#62
	db #8d,#05,#ca,#ce,#48,#8f,#03,#62
	db #8f,#05,#60,#8f,#06,#ce,#48,#91
	db #04,#62,#91,#05,#ca,#ce,#ca,#ce
	db #60,#93,#06,#ce,#48,#95,#04,#ce
	db #ca,#ce,#48,#97,#03,#ce,#56,#97
	db #06,#ce,#48,#99,#04,#ce,#ca,#ce
	db #ca,#ce,#56,#9b,#06,#ce,#48,#9d
	db #04,#ce,#ca,#ca,#70,#81,#09,#ce
	db #6e,#01,#ce,#6e,#83,#0a,#ce,#66
	db #83,#09,#ce,#66,#85,#0a,#ce,#60
	db #85,#09,#d0,#60,#87,#0a,#d0,#70
	db #87,#09,#ce,#6e,#09,#ce,#66,#89
	db #0a,#ce,#66,#8b,#09,#ce,#66,#8b
	db #0a,#ce,#60,#8d,#09,#d0,#6e,#0d
	db #d0,#70,#0f,#ce,#6e,#0f,#ce,#6e
	db #91,#0a,#ce,#66,#91,#09,#ce,#66
	db #93,#0a,#ce,#60,#93,#09,#ce,#60
	db #95,#0a,#ce,#5c,#95,#09,#ce,#60
	db #17,#ce,#48,#97,#0a,#ce,#4e,#19
	db #ce,#56,#19,#ce,#4e,#1b,#ce,#56
	db #1b,#ce,#5c,#1d,#ce,#60,#1f,#c2
	db #48,#81,#01,#60,#0b,#6e,#01,#56
	db #0b,#60,#03,#56,#0d,#78,#03,#60
	db #0d,#48,#05,#60,#0f,#6e,#05,#56
	db #0f,#60,#07,#56,#11,#78,#07,#60
	db #11,#48,#09,#60,#13,#6e,#09,#56
	db #13,#60,#09,#56,#13,#78,#0b,#60
	db #15,#48,#0b,#60,#15,#6e,#0f,#56
	db #17,#60,#0f,#56,#17,#78,#0f,#60
	db #17,#38,#0f,#50,#17,#5e,#0f,#46
	db #17,#50,#11,#46,#19,#68,#11,#50
	db #19,#38,#13,#50,#1b,#5e,#13,#46
	db #1b,#50,#15,#46,#1d,#68,#15,#50
	db #1d,#46,#17,#5e,#1f,#6c,#17,#54
	db #1f,#5e,#19,#54,#1f,#76,#19,#5e
	db #1f,#46,#1b,#5e,#1f,#6c,#1b,#54
	db #1f,#5e,#1d,#54,#1f,#76,#1d,#5e
	db #1f,#ff
;
.init_music		; added by Megachur
;
	ld de,music_data
	jp real_init_music
;
.music_info
	db "Load Error 2015 - CePeCe (2015)(Public Domain)(stRing)",0
	db "StArkOs",0

	read "music_end.asm"