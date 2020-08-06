; Music of The Eternal Light 2 (2014)(Public Domain)(Mr. Lou)(StArkos)
; Ripped by Megachur the 28/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THEETRL2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

	jp l400a
	jp l402e
.l4009 equ $ + 3
.l4008 equ $ + 2
	db #00,#40,#00,#00
;
.init_music_interrupt
.l400a
;
	call l48de
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
	jp l48b9
.l4037
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l4041	; play_music_interrupt
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
.l4054		; data !
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
	ld (l4897),a
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
	call l4409
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
	ld hl,l4897
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
	call l4409
	ld a,lx
	ld (l4206),a
	ld (l4367),hl
	exx
	ld (l41fc),hl
	ld a,c
	ld (l41ff),a
	ld (l4361),a
	xor a
	or hy
	jr nz,l425b
	ld (l4384),a
	ld d,a
	ld a,e
	ld (l4202),a
	ld l,d
	ld h,l
	ld (l4364),hl
.l4230 equ $ + 1
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
	ld hl,l4897
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
	call l4409
	ld a,lx
	ld (l4271),a
	ld (l43b8),hl
	exx
	ld (l4267),hl
	ld a,c
	ld (l426a),a
	ld (l43b2),a
	xor a
	or hy
	jr nz,l42c6
	ld (l43d5),a
	ld d,a
	ld a,e
	ld (l426d),a
	ld l,d
	ld h,l
	ld (l43b5),hl
.l429b equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l43e6
	ldi
	ldi
	ld de,l43de
	ldi
	ldi
	ld de,l43d7
	ldi
	ld de,l43e8
	ldi
	ld a,(hl)
	inc hl
	ld (l43c7),hl
	ld hl,l4897
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
	ld hl,l4897
.l4310 equ $ + 1
	ld d,#00
	exx
.l4313 equ $ + 1
	ld hl,#0000
.l4316 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4313),hl
	ld (l4544),hl
	ld a,(l419b)
	ld lx,a
.l4325 equ $ + 1
	ld hl,#0000
	ld iy,l4732
	ld a,(l4333)
	call l449e
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
	ld (l4405),a
.l4361 equ $ + 1
	ld d,#00
	exx
.l4364 equ $ + 1
	ld hl,#0000
.l4367 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4364),hl
	ld (l4544),hl
	ld a,(l4206)
	ld lx,a
.l4376 equ $ + 1
	ld hl,#0000
	ld iy,l4783
	ld a,(l4384)
	call l449e
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
	ld (l4402),a
.l43b2 equ $ + 1
	ld d,#00
	exx
.l43b5 equ $ + 1
	ld hl,#0000
.l43b8 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l43b5),hl
	ld (l4544),hl
	ld a,(l4271)
	ld lx,a
.l43c7 equ $ + 1
	ld hl,#0000
	ld iy,l47d4
	ld a,(l43d5)
	call l449e
	ex de,hl
.l43d5 equ $ + 1
	ld a,#00
.l43d7 equ $ + 1
	cp #00
	jr z,l43dd
	inc a
	jr l43fa
.l43de equ $ + 1
.l43dd
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l43f6
.l43e6 equ $ + 1
	ld de,#0000
.l43e8
	or a
	jr c,l43f6
.l43ec equ $ + 1
	ld hl,#0000
	ld (l43de),hl
	dec a
	ld (l43d7),a
	inc a
.l43f6
	ld (l43c7),de
.l43fa
	ld (l43d5),a
	ld a,hx
	sla a
.l4402 equ $ + 1
	or #00
	rla
.l4405 equ $ + 1
	or #00
	jp l4727
.l4409
	ld a,(hl)
	inc hl
	srl a
	jr c,l4442
	cp #60
	jr nc,l444a
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l4422
	and #0f
	ld c,a
.l4422
	rl b
	jr nc,l4428
	ld e,(hl)
	inc hl
.l4428
	rl b
	jr nc,l443a
.l442c
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l4436
	dec h
.l4436
	ld ly,#00
	ret
.l443a
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l4442
	ld hy,#00
	add d
	ld lx,a
	jr l443a
.l444a
	ld hy,#01
	sub #60
	jr z,l446b
	dec a
	jr z,l4482
	dec a
	jr z,l4474
	dec a
	jr z,l442c
	dec a
	jr z,l447e
	dec a
	jr z,l4493
	dec a
	jr z,l448a
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l446b
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l4474
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l447e
	ld c,(hl)
	inc hl
	jr l442c
.l4482
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l448a
	ld a,(hl)
	inc hl
	ld (l4008),a
	ld a,b
	ld (l4009),a
.l4493
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l449e
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l4554
	bit 4,e
	jr z,l4506
	ld a,(hl)
	bit 6,a
	jr z,l44d3
	ld d,#08
	inc hl
	and #1f
	jr z,l44ba
	ld (l4825),a
	res 3,d
.l44ba
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l44c3
	xor a
.l44c3
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l44d3
	ld (l4825),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l44ef
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l44e8
	xor a
.l44e8
	ld (iy+#36),a
	ld hx,d
	jr l4519
.l44ef
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l44f8
	xor a
.l44f8
	ld (iy+#36),a
.l44fb
	ld hx,d
	ret
.l44fe
	ld (iy+#36),#00
	ld d,#09
	jr l44fb
.l4506
	ld d,#08
	ld a,e
	and #0f
	jr z,l44fe
	exx
	sub d
	exx
	jr nc,l4513
	xor a
.l4513
	ld (iy+#36),a
	ld hx,#08
.l4519
	bit 5,e
	jr z,l4521
	ld a,(hl)
	inc hl
	jr l4522
.l4521
	xor a
.l4522
	bit 6,e
	jr z,l452c
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l452f
.l452c
	ld de,#0000
.l452f
	add lx
	cp #60
	jr c,l4537
	ld a,#60
.l4537
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l4667
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l4544 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l4554
	or a
	jr nz,l455e
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l455e
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
	ld (l4890),a
	bit 3,e
	jr z,l4580
	ld a,(hl)
	inc hl
	ld (l4825),a
	res 3,d
	jr l4580
.l4580
	ld hx,d
	xor a
	bit 7,b
	jr z,l4592
	bit 6,b
	jr z,l458d
	ld a,(hl)
	inc hl
.l458d
	ld (l4641),a
	ld a,#01
.l4592
	ld (l45da),a
	ld a,b
	rra
	and #0e
	ld (l45eb),a
	bit 4,e
	jp nz,l464c
	bit 1,e
	jr z,l45a9
	ld a,(hl)
	inc hl
	jr l45aa
.l45a9
	xor a
.l45aa
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l45b7
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l45ba
.l45b7
	ld de,#0000
.l45ba
	add lx
	cp #60
	jr c,l45c2
	ld a,#60
.l45c2
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l4667
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l4544)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l45da equ $ + 1
	ld a,#00
	or a
	jr nz,l45ea
	ex af,af'
	bit 5,a
	jr nz,l4655
.l45e3
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l45eb equ $ + 1
.l45ea
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l45f5),a
	ld a,c
.l45f5 equ $ + 1
	jr l45f6
.l45f6
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
	jr nc,l460f
	inc bc
.l460f
	ld a,c
	ld (l485a),a
	ld a,b
	ld (l4875),a
	ld a,(l45da)
	or a
	jr z,l464a
	ld a,(l45eb)
	ld e,a
	srl a
	add e
	ld (l4629),a
	ld a,b
.l4629 equ $ + 1
	jr l462a
.l462a
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
.l4641 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l464a
	pop hl
	ret
.l464c
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l45e3
.l4655
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l485a),a
	inc hl
	ld a,(hl)
	ld (l4875),a
	inc hl
	ret
.l4667
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
.l4727
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l4732 equ $ + 1
	ld a,#00
.l4734 equ $ + 1
	cp #00
	jr z,l474c
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
	ld (l4734),a
	exx
.l474d equ $ + 1
.l474c
	ld a,#00
.l474f equ $ + 1
	cp #00
	jr z,l4767
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
	ld (l474f),a
	exx
.l4768 equ $ + 1
.l4767
	ld a,#00
.l476a equ $ + 1
	cp #00
	jr z,l4782
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
	ld (l476a),a
	exx
.l4783 equ $ + 1
.l4782
	ld a,#00
.l4785 equ $ + 1
	cp #00
	jr z,l479d
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
	ld (l4785),a
	exx
.l479e equ $ + 1
.l479d
	ld a,#00
.l47a0 equ $ + 1
	cp #00
	jr z,l47b8
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
	ld (l47a0),a
	exx
.l47b9 equ $ + 1
.l47b8
	ld a,#00
.l47bb equ $ + 1
	cp #00
	jr z,l47d3
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
	ld (l47bb),a
	exx
.l47d4 equ $ + 1
.l47d3
	ld a,#00
.l47d6 equ $ + 1
	cp #00
	jr z,l47ee
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
	ld (l47d6),a
	exx
.l47ef equ $ + 1
.l47ee
	ld a,#00
.l47f1 equ $ + 1
	cp #00
	jr z,l4809
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
	ld (l47f1),a
	exx
.l480a equ $ + 1
.l4809
	ld a,#00
.l480c equ $ + 1
	cp #00
	jr z,l4824
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
	ld (l480c),a
	exx
.l4825 equ $ + 1
.l4824
	ld a,#00
.l4827 equ $ + 1
	cp #00
	jr z,l483f
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
	ld (l4827),a
	exx
.l483f
	ld a,h
.l4841 equ $ + 1
	cp #c0
	jr z,l4859
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
	ld (l4841),a
	exx
.l485a equ $ + 1
.l4859
	ld a,#00
.l485c equ $ + 1
	cp #00
	jr z,l4874
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
	ld (l485c),a
	exx
.l4875 equ $ + 1
.l4874
	ld a,#00
.l4877 equ $ + 1
	cp #00
	jr z,l488f
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
	ld (l4877),a
	exx
.l4890 equ $ + 1
.l488f
	ld a,#00
.l4892 equ $ + 1
	cp #ff
	jr nz,l489c
	ld h,a
.l4897 equ $ + 1
	ld a,#00
	or a
	jr z,l48b0
	ld a,h
.l489c
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
	ld (l4892),a
.l48b0
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
.l48b9
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l4768),a
	ld (l47b9),a
	ld (l480a),a
	dec a
	ld (l476a),a
	ld (l47bb),a
	ld (l480c),a
	ld (l4841),a
	ld a,#3f
	jp l4727
;
.real_init_music
.l48de
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
	ld (l4376),hl
	ld (l43c7),hl
	ld (l4344),hl
	ld (l4395),hl
	ld (l43e6),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l434a),de
	ld (l439b),de
	ld (l43ec),de
	ld (l433c),de
	ld (l438d),de
	ld (l43de),de
	ld a,#37
	ld (l4081),a
	ld hl,l499d
.l498d
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l4994
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l4994
	jr l498d
.l499d
	jr l499f
.l499f
	dw l4732,l474d,l4783,l479e
	dw l47d4,l47ef,l4825,l4768
	dw l47b9,l480a,l485a,l4875
	dw l4890,l4094,l40ce,l4119
	dw l4127,l4164,l4333,l4384
	dw l43d5,l4194,l41ff,l426a
	dw #ff11,l4734,l474f,l4785
	dw l47a0,l47d6,l47f1,l4827
	dw l4841,l476a,l47bb,l480c
	dw l485c,l4877,l4892,l4335
	dw l4386,l43d7,#b703,l4346
	dw l4397,l43e8,#0000

	ds #5000-$,#00

.l5000
	db #53,#4b,#31,#30,#00,#50,#01,#32
	db #00,#21,#50,#24,#50,#9c,#50,#a2
	db #50,#1d,#50,#22,#50,#2a,#50,#9f
	db #50,#05,#c0,#00,#00,#c0,#00,#00
	db #23,#5e,#5f,#12,#bb,#51,#3e,#52
	db #3e,#52,#bb,#51,#3e,#52,#3e,#52
	db #bb,#51,#3e,#52,#3f,#52,#bb,#51
	db #3e,#52,#a0,#52,#01,#53,#3e,#52
	db #88,#53,#f0,#53,#51,#54,#b2,#54
	db #f0,#53,#51,#54,#b2,#54,#13,#55
	db #77,#55,#b7,#55,#bb,#51,#3e,#52
	db #3f,#52,#bb,#51,#f7,#55,#a0,#52
	db #01,#53,#48,#56,#88,#53,#7a,#56
	db #51,#54,#b2,#54,#f0,#53,#51,#54
	db #b2,#54,#13,#55,#77,#55,#b7,#55
	db #bb,#51,#f7,#55,#3e,#52,#bb,#51
	db #f7,#55,#3e,#52,#01,#53,#48,#56
	db #3e,#52,#f0,#53,#51,#54,#b2,#54
	db #f0,#53,#51,#54,#b2,#54,#13,#55
	db #77,#55,#b7,#55,#00,#e1,#56,#24
	db #e1,#56,#be,#50,#c8,#50,#d4,#50
	db #e7,#50,#fa,#50,#0d,#51,#26,#51
	db #39,#51,#4c,#51,#5f,#51,#72,#51
	db #85,#51,#98,#51,#a4,#51,#c5,#50
	db #c8,#50,#ff,#37,#00,#00,#00,#00
	db #d3,#50,#d4,#50,#00,#37,#00,#1f
	db #27,#0e,#0d,#0c,#e2,#50,#e7,#50
	db #00,#37,#00,#1d,#21,#3c,#21,#03
	db #2b,#07,#0a,#2a,#03,#2a,#07,#f5
	db #50,#fa,#50,#00,#37,#00,#1d,#21
	db #3c,#21,#05,#2b,#09,#0a,#2a,#05
	db #2a,#09,#08,#51,#0d,#51,#00,#37
	db #00,#1d,#21,#3c,#21,#05,#2b,#08
	db #0a,#2a,#05,#2a,#08,#18,#51,#26
	db #51,#00,#37,#00,#0b,#4f,#ff,#ff
	db #4d,#ff,#ff,#0c,#4b,#01,#00,#4a
	db #01,#00,#0b,#4c,#ff,#ff,#34,#51
	db #39,#51,#00,#37,#00,#1d,#21,#3c
	db #21,#03,#2b,#08,#0a,#2a,#03,#2a
	db #08,#47,#51,#4c,#51,#00,#37,#00
	db #1d,#21,#3c,#21,#03,#2b,#05,#0a
	db #2a,#03,#2a,#05,#5a,#51,#5f,#51
	db #00,#37,#00,#1d,#21,#3c,#21,#04
	db #2b,#09,#0a,#2a,#04,#2a,#09,#6d
	db #51,#72,#51,#00,#37,#00,#1d,#21
	db #3c,#21,#04,#2b,#07,#0a,#2a,#04
	db #2a,#07,#80,#51,#85,#51,#00,#37
	db #00,#1d,#21,#3c,#21,#04,#2b,#08
	db #0a,#2a,#04,#2a,#08,#93,#51,#98
	db #51,#00,#37,#00,#1d,#21,#3c,#21
	db #03,#2b,#06,#0a,#2a,#03,#2a,#06
	db #9f,#51,#a4,#51,#02,#37,#00,#4b
	db #fe,#ff,#2b,#f4,#ba,#51,#bb,#51
	db #00,#37,#00,#4b,#ff,#ff,#09,#47
	db #01,#00,#05,#43,#ff,#ff,#01,#41
	db #01,#00,#01,#1c,#81,#01,#64,#8d
	db #02,#64,#01,#34,#81,#01,#64,#8d
	db #02,#64,#01,#1c,#81,#01,#64,#8d
	db #02,#64,#01,#34,#81,#01,#64,#8d
	db #02,#64,#01,#22,#81,#01,#64,#8d
	db #02,#60,#81,#03,#3a,#81,#01,#60
	db #8d,#03,#60,#01,#22,#81,#01,#60
	db #8d,#03,#60,#01,#3a,#81,#01,#60
	db #8d,#03,#60,#01,#26,#81,#01,#60
	db #8d,#03,#64,#81,#04,#3e,#81,#01
	db #64,#8d,#04,#64,#01,#26,#81,#01
	db #64,#8d,#04,#64,#01,#3e,#81,#01
	db #64,#8d,#04,#64,#01,#1c,#81,#01
	db #64,#8d,#04,#64,#81,#02,#34,#81
	db #01,#64,#8d,#02,#64,#01,#1c,#81
	db #01,#64,#8d,#02,#64,#01,#34,#81
	db #01,#64,#8d,#02,#64,#01,#c2,#64
	db #81,#05,#64,#03,#68,#01,#6a,#01
	db #6a,#03,#6e,#01,#72,#01,#72,#03
	db #72,#05,#72,#07,#72,#09,#72,#0b
	db #72,#0d,#72,#0f,#74,#01,#72,#01
	db #72,#03,#6e,#01,#72,#01,#72,#03
	db #72,#05,#72,#07,#72,#09,#72,#01
	db #6e,#01,#6e,#03,#6e,#05,#6e,#01
	db #6e,#03,#6e,#05,#6e,#01,#6e,#03
	db #6e,#05,#64,#01,#64,#03,#68,#01
	db #6a,#01,#6a,#03,#6e,#01,#6a,#01
	db #6a,#03,#68,#01,#6a,#01,#6a,#03
	db #6a,#05,#6a,#07,#6a,#09,#68,#01
	db #64,#81,#05,#64,#03,#68,#01,#6a
	db #01,#6a,#03,#6e,#01,#72,#01,#72
	db #03,#72,#05,#72,#07,#72,#09,#72
	db #0b,#72,#0d,#72,#0f,#74,#01,#72
	db #01,#72,#03,#6e,#01,#72,#01,#72
	db #03,#72,#05,#72,#07,#72,#09,#72
	db #01,#6e,#01,#6e,#03,#6e,#05,#6e
	db #01,#6e,#03,#6e,#05,#6e,#01,#6e
	db #03,#6e,#05,#64,#01,#64,#03,#68
	db #01,#6a,#01,#6a,#03,#6e,#01,#6a
	db #01,#6a,#03,#68,#01,#64,#01,#64
	db #05,#64,#09,#64,#0d,#64,#11,#64
	db #15,#14,#81,#01,#1c,#8d,#04,#64
	db #01,#2c,#81,#01,#64,#8d,#04,#64
	db #01,#14,#81,#01,#64,#8d,#04,#64
	db #81,#06,#2c,#81,#01,#64,#8d,#06
	db #64,#01,#16,#81,#01,#64,#8d,#06
	db #64,#81,#02,#2e,#81,#01,#64,#8d
	db #02,#64,#01,#16,#81,#01,#64,#8d
	db #02,#64,#81,#07,#2e,#81,#01,#64
	db #8d,#07,#64,#01,#18,#81,#01,#64
	db #8d,#07,#60,#81,#08,#30,#81,#01
	db #60,#8d,#08,#60,#01,#18,#81,#01
	db #60,#8d,#08,#60,#81,#09,#30,#81
	db #01,#60,#8d,#09,#60,#01,#1a,#81
	db #01,#60,#8d,#09,#62,#81,#0a,#32
	db #81,#01,#62,#8d,#0a,#62,#01,#1a
	db #81,#01,#62,#8d,#0a,#62,#81,#0b
	db #32,#81,#01,#62,#8d,#0b,#62,#01
	db #7c,#81,#04,#c4,#06,#c4,#07,#7c
	db #01,#c4,#06,#c4,#07,#7c,#81,#06
	db #c4,#06,#c4,#07,#7c,#01,#c4,#06
	db #c4,#07,#7c,#81,#02,#c4,#06,#c4
	db #07,#7c,#01,#c4,#06,#c4,#07,#7c
	db #81,#07,#c4,#06,#c4,#07,#7c,#01
	db #c4,#06,#c4,#07,#78,#81,#08,#c4
	db #06,#c4,#07,#78,#01,#c4,#06,#c4
	db #07,#78,#81,#09,#c4,#06,#c4,#07
	db #78,#01,#c4,#06,#c4,#07,#7a,#81
	db #0a,#c4,#06,#c4,#07,#7a,#01,#c4
	db #06,#c4,#07,#7a,#81,#0b,#c4,#06
	db #c4,#07,#7a,#01,#c4,#06,#c4,#07
	db #d2,#64,#81,#02,#c4,#00,#c4,#01
	db #c4,#01,#c4,#02,#c4,#02,#c4,#03
	db #c4,#03,#c4,#04,#5c,#81,#08,#c4
	db #00,#c4,#01,#5c,#01,#c4,#00,#c4
	db #01,#5c,#81,#09,#c4,#00,#c4,#01
	db #5c,#01,#c4,#00,#c4,#01,#c4,#01
	db #c4,#02,#c4,#02,#64,#81,#02,#c4
	db #00,#c4,#01,#c4,#01,#c4,#02,#c4
	db #02,#c4,#03,#c4,#03,#c4,#04,#5c
	db #81,#08,#c4,#00,#c4,#01,#5c,#01
	db #c4,#00,#c4,#01,#5c,#81,#09,#c4
	db #00,#c4,#01,#5c,#01,#c4,#00,#c4
	db #01,#34,#81,#0c,#c4,#00,#c4,#01
	db #34,#01,#c4,#00,#c4,#01,#c4,#01
	db #c4,#02,#c4,#02,#c4,#03,#c4,#03
	db #c4,#04,#3e,#01,#c4,#00,#c4,#01
	db #3e,#01,#c4,#00,#c4,#01,#44,#01
	db #c4,#00,#c4,#01,#44,#01,#c4,#00
	db #c4,#01,#34,#01,#c4,#00,#c4,#01
	db #34,#01,#c4,#00,#c4,#01,#c4,#01
	db #c4,#02,#c4,#02,#c4,#03,#c4,#03
	db #c4,#04,#44,#01,#c4,#00,#c4,#01
	db #44,#01,#c4,#00,#c4,#01,#3e,#01
	db #c4,#00,#c4,#01,#3e,#01,#c4,#00
	db #c4,#01,#64,#81,#02,#c4,#06,#7c
	db #01,#c4,#06,#c4,#01,#c4,#06,#c4
	db #02,#c4,#06,#c4,#03,#c4,#06,#c4
	db #04,#c4,#06,#c4,#07,#c4,#08,#c4
	db #00,#c4,#06,#c4,#01,#c4,#06,#c4
	db #02,#c4,#06,#c4,#03,#c4,#06,#c4
	db #04,#c4,#06,#64,#01,#c4,#06,#7c
	db #01,#c4,#06,#c4,#01,#c4,#06,#c4
	db #02,#c4,#06,#c4,#03,#c4,#06,#c4
	db #04,#c4,#06,#c4,#07,#c4,#06,#c4
	db #00,#c4,#06,#c4,#01,#c4,#06,#c4
	db #02,#c4,#06,#c4,#03,#c4,#06,#c4
	db #04,#c4,#06,#64,#81,#02,#c4,#00
	db #c4,#01,#c4,#01,#64,#05,#c4,#02
	db #c4,#03,#64,#07,#c4,#04,#34,#89
	db #01,#64,#8b,#02,#c4,#05,#1c,#87
	db #01,#64,#8d,#02,#c4,#07,#34,#85
	db #01,#64,#91,#02,#c4,#08,#1c,#83
	db #01,#64,#93,#02,#c4,#0a,#34,#81
	db #01,#64,#97,#02,#34,#85,#01,#1c
	db #01,#c4,#0f,#ce,#34,#01,#c4,#0f
	db #ce,#1c,#01,#c4,#0f,#ce,#34,#01
	db #c4,#0f,#ce,#1c,#01,#c4,#0f,#ce
	db #34,#01,#c4,#0f,#ce,#1c,#01,#c4
	db #0f,#ce,#34,#01,#c4,#02,#c2,#34
	db #81,#0c,#c4,#00,#c4,#01,#c4,#01
	db #c4,#02,#c4,#02,#c4,#03,#c4,#03
	db #c4,#04,#c4,#04,#c4,#05,#c4,#05
	db #c4,#06,#c4,#06,#c4,#07,#c4,#07
	db #c4,#08,#c4,#08,#c4,#09,#c4,#09
	db #c4,#0a,#c4,#0a,#c4,#0b,#c4,#0b
	db #c4,#0c,#c4,#0c,#c4,#0d,#c4,#0d
	db #c4,#0e,#c4,#0e,#c4,#0f,#c2,#c4
	db #07,#c4,#08,#7c,#81,#02,#c4,#06
	db #c4,#01,#c4,#06,#c4,#02,#c4,#06
	db #c4,#03,#c4,#07,#c4,#04,#c4,#08
	db #c4,#05,#c4,#06,#c4,#09,#c4,#07
	db #c4,#0a,#c4,#08,#c4,#0b,#c4,#09
	db #c4,#0c,#c4,#0a,#c4,#0d,#c4,#0b
	db #c4,#0e,#c4,#0c,#c4,#0f,#c4,#0d
	db #c4,#0f,#c4,#0e,#c4,#0f,#c2,#7c
	db #81,#0d,#73,#7c,#07,#80,#01,#73
	db #80,#07,#82,#01,#73,#82,#07,#86
	db #01,#73,#86,#07,#7c,#01,#73,#7c
	db #07,#80,#01,#73,#80,#07,#82,#01
	db #73,#82,#07,#86,#01,#73,#86,#07
	db #8a,#01,#75,#8a,#07,#86,#01,#75
	db #86,#07,#82,#01,#75,#82,#07,#80
	db #01,#75,#80,#07,#7c,#01,#73,#7c
	db #07,#80,#01,#73,#80,#07,#7c,#01
	db #73,#7c,#07,#7c,#01,#73,#7c,#07
	db #8c,#81,#0d,#83,#7d,#8d,#83,#7d
	db #8b,#83,#7d,#8b,#83,#7d,#8b,#83
	db #7d,#8b,#83,#7d,#87,#83,#7d,#87
	db #83,#7d,#8b,#81,#79,#8b,#81,#79
	db #87,#81,#79,#87,#81,#79,#8b,#83
	db #7b,#8b,#83,#7b,#87,#83,#7b,#87
	db #83,#7b,#8a,#81,#0d,#7c,#05,#82
	db #09,#64,#81,#02,#c4,#00,#c4,#01
	db #c4,#01,#c4,#02,#c4,#02,#c4,#03
	db #c4,#03,#c4,#04,#5c,#81,#08,#c4
	db #00,#c4,#01,#5c,#01,#c4,#00,#c4
	db #01,#5c,#81,#09,#c4,#00,#c4,#01
	db #5c,#01,#c4,#00,#c4,#01,#c4,#01
	db #c4,#02,#c4,#02,#64,#81,#02,#c4
	db #00,#c4,#01,#c4,#01,#c4,#02,#c4
	db #02,#c4,#03,#c4,#03,#c4,#04,#5c
	db #81,#08,#c4,#00,#c4,#01,#5c,#01
	db #c4,#00,#c4,#01,#5c,#81,#09,#c4
	db #00,#c4,#01,#5c,#01,#c4,#00,#c4
	db #01,#ff,#00
;
;	7 CALL &4000,&5000
;
;
.init_music		; added by Megachur
;
	ld de,l5000
	jp real_init_music
;
;
.music_info
	db "The Eternal Light 2 (2014)(Public Domain)(Mr. Lou)",0
	db "StArkos",0

	read "music_end.asm"
