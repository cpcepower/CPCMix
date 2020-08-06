; Music of Nah Color + Sunday Drive 2-2 (2015)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 04/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "NAHCOSD2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

	jp l400a	; init music interrupt
	jp l402e	; stop music interrupt
.l4009 equ $ + 3
.l4008 equ $ + 2
	db #00,#40,#00,#00
;
.init_music_interrupt
.l400a
;
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
.l4041	; play music interrupt
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
.l4054
	db #0d,#11,#19,#0b,#32,#05,#64,#02
	db #96,#01,#2c,#00
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
	dw l4398,l43ea,#0000

	ds #5000-$,#00

; theme 2

.l5000
	db #53,#4b,#31,#30,#00,#50,#01,#32
	db #00,#1e,#50,#20,#50,#ce,#50,#d1
	db #50,#1a,#50,#1e,#50,#20,#50,#ce
	db #50,#05,#c0,#00,#00,#37,#7f,#1c
	db #ab,#51,#28,#52,#6a,#52,#ab,#51
	db #28,#52,#83,#52,#ab,#51,#28,#52
	db #a4,#52,#c5,#52,#02,#53,#44,#53
	db #75,#53,#77,#53,#75,#53,#27,#54
	db #a9,#54,#59,#55,#d6,#55,#58,#56
	db #59,#55,#27,#54,#a9,#54,#59,#55
	db #d6,#55,#58,#56,#59,#55,#27,#54
	db #a9,#54,#08,#57,#d6,#55,#19,#57
	db #c9,#57,#27,#54,#a9,#54,#08,#58
	db #d6,#55,#19,#57,#20,#58,#27,#54
	db #a9,#54,#59,#55,#d6,#55,#58,#56
	db #59,#55,#27,#54,#a9,#54,#59,#55
	db #d6,#55,#58,#56,#59,#55,#27,#54
	db #a9,#54,#59,#58,#d6,#55,#19,#57
	db #99,#58,#27,#54,#a9,#54,#d4,#58
	db #d6,#55,#1e,#59,#ca,#59,#27,#54
	db #a9,#54,#59,#58,#d6,#55,#19,#57
	db #99,#58,#27,#54,#a9,#54,#d4,#58
	db #d6,#55,#1e,#59,#ca,#59,#27,#54
	db #59,#55,#08,#57,#d6,#55,#59,#55
	db #c9,#57,#27,#54,#59,#55,#08,#58
	db #d6,#55,#59,#55,#14,#5a,#38,#57
	db #5a,#e5,#50,#ef,#50,#fb,#50,#07
	db #51,#1d,#51,#25,#51,#44,#51,#61
	db #51,#7e,#51,#88,#51,#ec,#50,#ef
	db #50,#ff,#37,#00,#00,#00,#00,#f6
	db #50,#fb,#50,#00,#37,#00,#0c,#2c
	db #03,#2c,#07,#02,#51,#07,#51,#00
	db #37,#00,#0c,#2c,#04,#2c,#07,#ec
	db #50,#1d,#51,#00,#b7,#00,#00,#80
	db #16,#80,#16,#80,#16,#80,#16,#80
	db #16,#80,#16,#80,#16,#24,#51,#25
	db #51,#00,#37,#00,#0e,#2c,#51,#44
	db #51,#00,#37,#00,#4e,#fe,#ff,#4e
	db #fe,#ff,#4e,#fe,#ff,#4e,#fe,#ff
	db #4e,#02,#00,#4e,#02,#00,#4e,#02
	db #00,#4e,#02,#00,#ec,#50,#61,#51
	db #00,#b7,#00,#1f,#65,#c3,#01,#1f
	db #60,#fa,#01,#1f,#60,#a4,#02,#80
	db #16,#80,#16,#80,#16,#80,#16,#80
	db #16,#ec,#50,#7e,#51,#00,#b7,#00
	db #1f,#6b,#d5,#00,#1e,#67,#52,#01
	db #1d,#63,#aa,#01,#80,#16,#80,#16
	db #80,#16,#80,#16,#80,#16,#85,#51
	db #88,#51,#00,#37,#00,#4e,#ff,#ff
	db #ec,#50,#ab,#51,#00,#b7,#00,#1f
	db #6b,#d5,#00,#1e,#67,#52,#01,#1d
	db #63,#aa,#01,#1f,#6b,#d5,#00,#1e
	db #67,#52,#01,#1d,#63,#aa,#01,#80
	db #16,#80,#16,#68,#81,#01,#c4,#01
	db #c4,#02,#c4,#03,#c4,#04,#c4,#05
	db #80,#01,#68,#05,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#c4,#04,#d4,#98
	db #05,#80,#01,#c4,#05,#68,#01,#c4
	db #01,#c4,#02,#c4,#03,#c4,#00,#c4
	db #05,#80,#05,#68,#09,#80,#01,#c4
	db #01,#c4,#02,#c4,#03,#64,#81,#02
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #c4,#05,#7c,#05,#64,#01,#7c,#01
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #c4,#05,#94,#05,#7c,#01,#5a,#81
	db #01,#c4,#01,#c4,#02,#c4,#03,#c4
	db #00,#c4,#05,#72,#05,#5a,#01,#5e
	db #81,#02,#c4,#01,#c4,#02,#c4,#03
	db #76,#05,#5e,#01,#c4,#04,#c4,#05
	db #68,#81,#03,#69,#69,#69,#81,#81
	db #69,#ce,#81,#ce,#69,#69,#69,#69
	db #81,#81,#69,#69,#69,#69,#81,#81
	db #69,#ce,#81,#ce,#69,#69,#69,#ce
	db #81,#81,#65,#65,#65,#65,#7d,#7d
	db #65,#ce,#7d,#ce,#65,#65,#65,#65
	db #7d,#7d,#5b,#5b,#5b,#5b,#73,#73
	db #5b,#5b,#77,#77,#5f,#5f,#5f,#5f
	db #77,#77,#68,#81,#04,#da,#68,#80
	db #05,#c0,#1c,#64,#80,#04,#da,#64
	db #80,#05,#d6,#68,#80,#04,#da,#68
	db #80,#05,#c2,#dc,#6e,#81,#04,#da
	db #6e,#80,#05,#f6,#72,#80,#04,#d4
	db #72,#80,#05,#d4,#6e,#80,#04,#d2
	db #6e,#80,#05,#d2,#72,#80,#04,#d0
	db #72,#80,#05,#c2,#76,#81,#04,#da
	db #76,#80,#05,#c0,#1c,#72,#80,#04
	db #d2,#72,#80,#05,#d6,#6e,#80,#04
	db #d2,#6e,#80,#05,#d2,#6c,#80,#04
	db #d2,#6c,#80,#05,#c2,#68,#81,#01
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #c4,#05,#80,#01,#68,#05,#80,#01
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #ce,#c4,#05,#ce,#c4,#06,#ce,#c4
	db #07,#ce,#c4,#08,#ce,#c4,#09,#ce
	db #c4,#0a,#ce,#c4,#0b,#ce,#c4,#0c
	db #ce,#c4,#0d,#ce,#c4,#0e,#ce,#c4
	db #0f,#c2,#68,#81,#03,#69,#69,#69
	db #81,#81,#69,#ce,#81,#ce,#69,#69
	db #69,#69,#81,#81,#69,#69,#69,#69
	db #81,#81,#69,#ce,#81,#ce,#69,#69
	db #69,#ce,#81,#81,#69,#69,#69,#69
	db #81,#81,#69,#ce,#81,#ce,#69,#69
	db #69,#ce,#81,#81,#69,#69,#69,#69
	db #81,#81,#69,#ce,#81,#ce,#69,#69
	db #69,#ce,#81,#81,#68,#81,#04,#d2
	db #c4,#01,#d2,#c4,#02,#d2,#c4,#03
	db #d2,#c4,#04,#d0,#c4,#05,#d0,#c4
	db #06,#d0,#c4,#07,#d0,#c4,#08,#d0
	db #c4,#09,#d0,#c4,#0a,#d0,#c4,#0b
	db #d0,#c4,#0c,#d0,#c4,#0d,#d0,#c4
	db #0e,#ce,#c4,#0f,#c2,#ca,#c2,#68
	db #81,#06,#68,#80,#03,#69,#68,#80
	db #06,#80,#80,#03,#81,#68,#80,#06
	db #68,#80,#03,#80,#80,#07,#80,#80
	db #03,#68,#85,#07,#68,#80,#03,#68
	db #81,#06,#68,#80,#03,#80,#80,#06
	db #80,#80,#03,#68,#80,#06,#68,#80
	db #03,#69,#68,#80,#06,#80,#80,#03
	db #81,#68,#80,#06,#68,#80,#03,#80
	db #80,#07,#80,#80,#03,#68,#85,#07
	db #68,#80,#03,#68,#89,#07,#68,#80
	db #03,#80,#81,#06,#80,#80,#03,#68
	db #80,#06,#68,#80,#03,#69,#68,#80
	db #06,#80,#80,#03,#81,#68,#80,#06
	db #68,#80,#03,#80,#80,#07,#80,#80
	db #03,#68,#85,#07,#68,#80,#03,#68
	db #81,#06,#68,#80,#03,#80,#80,#06
	db #80,#80,#03,#68,#80,#06,#68,#80
	db #03,#69,#68,#80,#06,#80,#80,#03
	db #81,#68,#80,#06,#68,#80,#03,#80
	db #80,#07,#80,#80,#03,#68,#85,#07
	db #68,#80,#03,#68,#89,#07,#68,#80
	db #03,#80,#81,#06,#80,#80,#03,#68
	db #81,#01,#c4,#01,#c4,#02,#c4,#00
	db #c4,#04,#c4,#05,#80,#05,#68,#01
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#98,#05,#80,#01
	db #c4,#04,#c4,#05,#c4,#00,#c4,#05
	db #68,#01,#c4,#01,#c4,#02,#c4,#00
	db #c4,#04,#c4,#05,#80,#05,#68,#09
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #64,#81,#02,#c4,#01,#c4,#02,#c4
	db #00,#c4,#04,#c4,#05,#7c,#05,#64
	db #01,#7c,#01,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#94,#05,#7c
	db #01,#c4,#04,#c4,#05,#c4,#00,#c4
	db #05,#64,#01,#c4,#01,#c4,#02,#c4
	db #00,#c4,#04,#c4,#05,#7c,#05,#64
	db #09,#7c,#01,#c4,#01,#c4,#02,#c4
	db #03,#68,#81,#06,#68,#80,#03,#69
	db #68,#80,#06,#80,#80,#03,#81,#68
	db #80,#06,#68,#80,#03,#80,#80,#07
	db #80,#80,#03,#68,#85,#07,#68,#80
	db #03,#68,#81,#06,#68,#80,#03,#80
	db #80,#06,#80,#80,#03,#68,#80,#06
	db #68,#80,#03,#69,#68,#80,#06,#80
	db #80,#03,#81,#68,#80,#06,#68,#80
	db #03,#80,#80,#07,#80,#80,#03,#68
	db #85,#07,#68,#80,#03,#68,#89,#07
	db #68,#80,#03,#80,#81,#06,#80,#80
	db #03,#64,#80,#06,#64,#80,#03,#65
	db #64,#80,#06,#7c,#80,#03,#7d,#64
	db #80,#06,#64,#80,#03,#7c,#80,#07
	db #7c,#80,#03,#64,#85,#07,#64,#80
	db #03,#64,#81,#06,#64,#80,#03,#7c
	db #80,#06,#7c,#80,#03,#64,#80,#06
	db #64,#80,#03,#65,#64,#80,#06,#7c
	db #80,#03,#7d,#64,#80,#06,#64,#80
	db #03,#7c,#80,#07,#7c,#80,#03,#64
	db #85,#07,#64,#80,#03,#64,#89,#07
	db #64,#80,#03,#7c,#81,#06,#7c,#80
	db #03,#68,#83,#08,#6c,#05,#6e,#07
	db #68,#03,#6c,#05,#6e,#07,#68,#03
	db #6c,#05,#72,#07,#ce,#68,#03,#6c
	db #05,#72,#07,#68,#03,#6c,#05,#6e
	db #07,#68,#03,#6c,#05,#6e,#07,#68
	db #03,#6c,#05,#72,#07,#68,#03,#6c
	db #05,#72,#07,#ce,#68,#03,#6c,#05
	db #6e,#07,#68,#03,#6c,#05,#6e,#07
	db #68,#03,#6c,#05,#6e,#07,#68,#03
	db #6c,#05,#6e,#07,#68,#03,#6c,#05
	db #72,#07,#ce,#68,#03,#6c,#05,#72
	db #07,#68,#03,#6c,#05,#6e,#07,#68
	db #03,#6c,#05,#6e,#07,#68,#03,#6c
	db #05,#72,#07,#68,#03,#6c,#05,#72
	db #07,#ce,#68,#03,#6c,#05,#6e,#07
	db #68,#03,#6c,#05,#6e,#07,#5a,#81
	db #01,#c4,#01,#c4,#02,#c4,#00,#c4
	db #04,#c4,#05,#72,#05,#5a,#01,#72
	db #01,#c4,#01,#c4,#02,#c4,#03,#c4
	db #04,#c4,#05,#8a,#05,#72,#01,#c4
	db #04,#c4,#05,#c4,#00,#c4,#05,#5a
	db #01,#c4,#01,#c4,#02,#c4,#00,#c4
	db #04,#c4,#05,#72,#05,#5a,#09,#72
	db #01,#c4,#01,#c4,#02,#c4,#03,#5e
	db #81,#02,#c4,#01,#c4,#02,#c4,#00
	db #c4,#04,#c4,#05,#76,#05,#5e,#01
	db #76,#01,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#8e,#05,#76,#01
	db #c4,#04,#c4,#05,#c4,#00,#c4,#05
	db #5e,#01,#c4,#01,#c4,#02,#c4,#00
	db #c4,#04,#c4,#05,#76,#05,#5e,#09
	db #76,#01,#c4,#01,#c4,#02,#c4,#03
	db #5a,#81,#06,#5a,#80,#03,#5b,#5a
	db #80,#06,#72,#80,#03,#73,#5a,#80
	db #06,#5a,#80,#03,#72,#80,#07,#72
	db #80,#03,#5a,#85,#07,#5a,#80,#03
	db #5a,#81,#06,#5a,#80,#03,#72,#80
	db #06,#72,#80,#03,#5a,#80,#06,#5a
	db #80,#03,#5b,#5a,#80,#06,#72,#80
	db #03,#73,#5a,#80,#06,#5a,#80,#03
	db #72,#80,#07,#72,#80,#03,#5a,#85
	db #07,#5a,#80,#03,#5a,#89,#07,#5a
	db #80,#03,#72,#81,#06,#72,#80,#03
	db #5e,#80,#06,#5e,#80,#03,#5f,#5e
	db #80,#06,#76,#80,#03,#77,#5e,#80
	db #06,#5e,#80,#03,#76,#80,#07,#76
	db #80,#03,#5e,#85,#07,#5e,#80,#03
	db #5e,#81,#06,#5e,#80,#03,#76,#80
	db #06,#76,#80,#03,#5e,#80,#06,#5e
	db #80,#03,#5f,#5e,#80,#06,#76,#80
	db #03,#77,#5e,#80,#07,#5e,#80,#09
	db #76,#80,#07,#76,#80,#03,#5e,#80
	db #07,#5e,#80,#03,#5e,#80,#09,#5e
	db #80,#03,#76,#80,#07,#76,#80,#03
	db #6e,#81,#04,#da,#6e,#80,#05,#c0
	db #1c,#6c,#80,#04,#da,#6c,#80,#05
	db #c2,#5a,#81,#06,#5a,#80,#03,#5b
	db #5a,#80,#06,#72,#80,#03,#73,#5a
	db #80,#06,#5a,#80,#03,#72,#80,#07
	db #72,#80,#03,#5a,#85,#07,#5a,#80
	db #03,#5a,#81,#06,#5a,#80,#03,#72
	db #80,#06,#72,#80,#03,#5a,#80,#06
	db #5a,#80,#03,#5b,#5a,#80,#06,#72
	db #80,#03,#73,#5a,#80,#06,#5a,#80
	db #03,#72,#80,#07,#72,#80,#03,#5a
	db #85,#07,#5a,#80,#03,#5a,#89,#07
	db #5a,#80,#03,#72,#81,#06,#72,#80
	db #03,#5e,#80,#06,#5e,#80,#03,#5f
	db #5e,#80,#06,#76,#80,#03,#77,#5e
	db #80,#06,#5e,#80,#03,#76,#80,#07
	db #76,#80,#03,#5e,#85,#07,#5e,#80
	db #03,#5e,#81,#06,#5e,#80,#03,#76
	db #80,#06,#76,#80,#03,#5e,#80,#06
	db #5e,#80,#03,#5f,#5e,#80,#06,#76
	db #80,#03,#77,#5e,#80,#06,#5e,#80
	db #03,#76,#80,#07,#76,#80,#03,#5e
	db #85,#07,#5e,#80,#03,#5e,#89,#07
	db #5e,#80,#03,#76,#81,#06,#76,#80
	db #03,#dc,#68,#81,#04,#da,#68,#80
	db #05,#d2,#6e,#80,#04,#ce,#6e,#80
	db #05,#ce,#6c,#80,#04,#ce,#6c,#80
	db #05,#ce,#64,#80,#04,#ce,#64,#80
	db #05,#ce,#68,#80,#04,#d0,#68,#80
	db #05,#d0,#6c,#80,#04,#d0,#6c,#80
	db #05,#d0,#66,#80,#04,#da,#66,#80
	db #05,#da,#68,#80,#04,#ce,#6d,#c2
	db #6e,#81,#04,#da,#6e,#80,#05,#fa
	db #76,#80,#04,#da,#76,#80,#05,#da
	db #72,#80,#04,#da,#72,#80,#05,#c2
	db #d8,#68,#81,#04,#da,#68,#80,#05
	db #d6,#6e,#80,#04,#ce,#6e,#80,#05
	db #ce,#6c,#80,#04,#ce,#6c,#80,#05
	db #ce,#68,#80,#04,#ce,#68,#80,#05
	db #ce,#66,#80,#04,#d2,#66,#80,#05
	db #ce,#6c,#80,#04,#d2,#6c,#80,#05
	db #ce,#76,#80,#04,#da,#76,#80,#05
	db #c2,#6e,#81,#04,#d4,#6e,#80,#05
	db #d0,#6c,#80,#04,#ce,#6c,#80,#05
	db #ce,#64,#80,#04,#ce,#64,#80,#05
	db #ce,#5e,#80,#04,#da,#5e,#80,#05
	db #da,#6e,#80,#04,#d0,#6e,#80,#05
	db #d0,#6c,#80,#04,#d0,#6c,#80,#05
	db #d0,#64,#80,#04,#ce,#64,#80,#05
	db #ce,#5a,#80,#04,#da,#5a,#80,#05
	db #c2,#dc,#68,#81,#04,#da,#68,#80
	db #05,#d2,#6e,#80,#04,#ce,#6e,#80
	db #05,#ce,#6c,#80,#04,#ce,#6c,#80
	db #05,#ce,#5a,#80,#04,#ce,#5a,#80
	db #05,#ce,#66,#80,#04,#d0,#5f,#d0
	db #61,#ce,#67,#d0,#5f,#d0,#67,#ce
	db #6d,#d0,#73,#d0,#61,#ce,#5f,#d2
	db #5e,#80,#05,#c2,#6e,#81,#04,#d4
	db #6e,#80,#05,#d0,#6c,#80,#04,#ce
	db #6c,#80,#05,#ce,#6e,#80,#04,#ce
	db #6e,#80,#05,#ce,#76,#80,#04,#d2
	db #76,#80,#05,#d2,#72,#80,#04,#ce
	db #72,#80,#05,#ce,#76,#80,#04,#ce
	db #76,#80,#05,#ce,#7c,#80,#04,#d2
	db #7c,#80,#05,#d2,#76,#80,#04,#ce
	db #76,#80,#05,#ce,#64,#80,#04,#ce
	db #6d,#da,#6c,#80,#05,#c2,#5a,#81
	db #06,#5a,#80,#03,#5b,#5a,#80,#06
	db #72,#80,#03,#73,#5a,#80,#06,#5a
	db #80,#03,#72,#80,#07,#72,#80,#03
	db #5a,#85,#07,#5a,#80,#03,#5a,#81
	db #06,#5a,#80,#03,#72,#80,#06,#72
	db #80,#03,#5a,#80,#06,#5a,#80,#03
	db #5b,#5a,#80,#06,#72,#80,#03,#73
	db #5a,#80,#06,#5a,#80,#03,#72,#80
	db #07,#72,#80,#03,#5a,#85,#07,#5a
	db #80,#03,#5a,#89,#07,#5a,#80,#03
	db #72,#81,#06,#72,#80,#03,#5e,#80
	db #07,#5e,#80,#03,#5f,#5e,#80,#07
	db #ce,#76,#80,#03,#5e,#80,#06,#5e
	db #80,#03,#76,#80,#07,#76,#80,#03
	db #5f,#5e,#80,#07,#ce,#5e,#80,#03
	db #76,#80,#06,#76,#80,#03,#5e,#80
	db #06,#5e,#80,#03,#5f,#5e,#80,#06
	db #76,#80,#03,#77,#5e,#80,#06,#5e
	db #80,#09,#76,#80,#07,#76,#80,#03
	db #5e,#85,#07,#5e,#80,#03,#5e,#81
	db #07,#5e,#80,#03,#76,#80,#07,#76
	db #80,#03,#dc,#6e,#81,#04,#da,#6e
	db #80,#05,#d2,#68,#80,#04,#ce,#68
	db #80,#05,#ce,#6c,#80,#04,#ce,#6c
	db #80,#05,#ce,#64,#80,#04,#ce,#64
	db #80,#05,#ce,#68,#80,#04,#d0,#67
	db #ce,#c4,#03,#66,#80,#05,#ce,#68
	db #81,#04,#d0,#67,#ce,#c4,#03,#66
	db #80,#05,#ce,#66,#81,#04,#d0,#61
	db #ce,#c4,#03,#60,#01,#ce,#5f,#d2
	db #5e,#80,#05,#c2,#d8,#68,#81,#04
	db #da,#68,#80,#05,#d6,#6e,#80,#04
	db #ce,#6e,#80,#05,#ce,#6c,#80,#04
	db #ce,#6c,#80,#05,#ce,#68,#80,#04
	db #ce,#68,#80,#05,#ce,#66,#80,#04
	db #d2,#66,#80,#05,#ce,#6c,#80,#04
	db #d2,#6c,#80,#05,#ce,#76,#80,#04
	db #d6,#6d,#ce,#6c,#80,#05,#d2,#67
	db #ce,#66,#80,#04,#ce,#6d,#c2,#ff
;
.init_music		; added by Megachur
;
	ld de,l5000
	jp real_init_music
;
.music_info
	db "Nah Color + Sunday Drive 2-2 (2015)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
