; Music of Super Mario Land 2 (Epyteor)(2012)(SuTeKH)(StarkOs)
; Ripped by Megachur the 21/02/2015
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SUPERML2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2015
music_adr				equ #4000
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"
	
; 02/08/2020 - rerip player code + data

	jp l400a
	jp l402e
.l4009 equ $ + 3
.l4008 equ $ + 2
	db #00,#40,#00,#00
.l400a
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
.l4041
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
	cp #3f
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
	cp #00
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
;
.stop_music
.l48b9
;
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
;
	ds #5000-$,#00
;
.l5000
	db #53,#4b,#31,#30,#00
	db #50,#01,#32,#00,#1e,#50,#20,#50
	db #44,#50,#47,#50,#1a,#50,#1e,#50
	db #20,#50,#44,#50,#03,#c0,#00,#00
	db #09,#7f,#05,#a1,#50,#c1,#50,#c2
	db #50,#2d,#51,#c1,#50,#c2,#50,#a1
	db #50,#c1,#50,#c2,#50,#54,#51,#c1
	db #50,#c2,#50,#7a,#51,#c1,#50,#97
	db #51,#ff,#51,#c1,#50,#18,#52,#0a
	db #68,#52,#53,#50,#5d,#50,#6e,#50
	db #79,#50,#84,#50,#8f,#50,#5a,#50
	db #5d,#50,#ff,#37,#00,#00,#00,#00
	db #5a,#50,#6e,#50,#00,#b7,#00,#0d
	db #0d,#09,#09,#07,#07,#05,#05,#01
	db #01,#5a,#50,#79,#50,#00,#b7,#00
	db #17,#1f,#17,#1f,#5a,#50,#84,#50
	db #00,#b7,#00,#17,#0f,#17,#0f,#5a
	db #50,#8f,#50,#00,#b7,#00,#17,#05
	db #19,#05,#5a,#50,#a1,#50,#00,#b7
	db #00,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #07,#05,#03,#01,#86,#80,#01,#d2
	db #8f,#d2,#95,#d2,#93,#d2,#91,#d2
	db #8b,#d0,#85,#e2,#7d,#7b,#d0,#7d
	db #8b,#d0,#8b,#d2,#91,#8f,#d0,#87
	db #81,#d0,#7d,#c2,#c2,#60,#80,#02
	db #d0,#60,#80,#03,#60,#80,#04,#d0
	db #60,#80,#03,#60,#80,#02,#d0,#60
	db #80,#03,#60,#80,#04,#d0,#60,#80
	db #03,#60,#80,#02,#d0,#60,#80,#03
	db #60,#80,#04,#d0,#60,#80,#03,#60
	db #80,#02,#d0,#60,#80,#03,#60,#80
	db #04,#d0,#60,#80,#03,#d2,#61,#60
	db #80,#04,#d0,#60,#80,#03,#60,#80
	db #02,#d0,#60,#80,#03,#60,#80,#04
	db #d0,#60,#80,#03,#60,#80,#02,#d0
	db #60,#80,#03,#60,#80,#04,#d0,#60
	db #80,#03,#60,#80,#02,#d0,#60,#80
	db #03,#60,#80,#04,#d0,#60,#80,#03
	db #68,#80,#01,#d0,#67,#69,#d0,#6f
	db #d2,#6f,#73,#d2,#77,#d0,#75,#77
	db #d0,#81,#d4,#7f,#d0,#81,#85,#d2
	db #7b,#d0,#7d,#d4,#7b,#d0,#7d,#81
	db #d2,#77,#d0,#79,#d2,#73,#c2,#68
	db #80,#01,#d0,#67,#69,#d0,#6f,#d2
	db #6f,#73,#d2,#77,#d0,#75,#77,#d0
	db #81,#d2,#81,#77,#d2,#73,#d0,#71
	db #73,#d0,#7d,#d2,#7d,#6d,#d2,#6f
	db #d2,#5f,#d2,#57,#c2,#d2,#3e,#80
	db #05,#d2,#47,#43,#d2,#35,#d2,#3f
	db #d2,#47,#d0,#43,#e2,#3f,#d2,#47
	db #43,#d2,#35,#d2,#3f,#d2,#47,#d0
	db #43,#c2,#d2,#60,#80,#03,#60,#80
	db #04,#d0,#60,#80,#03,#60,#80,#02
	db #d0,#60,#80,#03,#60,#80,#04,#d0
	db #60,#80,#03,#60,#80,#02,#d0,#60
	db #80,#03,#60,#80,#04,#d0,#60,#80
	db #03,#60,#80,#02,#d0,#60,#80,#03
	db #60,#80,#04,#d0,#60,#80,#03,#d2
	db #61,#60,#80,#04,#d0,#60,#80,#03
	db #60,#80,#02,#d0,#60,#80,#03,#60
	db #80,#04,#d0,#60,#80,#03,#60,#80
	db #02,#d0,#60,#80,#03,#60,#80,#04
	db #d0,#60,#80,#03,#60,#80,#02,#d0
	db #60,#80,#03,#60,#80,#04,#d0,#60
	db #80,#03,#d2,#3e,#80,#05,#d2,#47
	db #43,#d2,#35,#d2,#3f,#d2,#47,#d0
	db #43,#e2,#3f,#d2,#47,#43,#d2,#35
	db #d2,#3f,#c2,#d2,#60,#80,#03,#60
	db #80,#04,#d0,#60,#80,#03,#60,#80
	db #02,#d0,#60,#80,#03,#60,#80,#04
	db #d0,#60,#80,#03,#60,#80,#02,#d0
	db #60,#80,#03,#60,#80,#04,#d0,#60
	db #80,#03,#60,#80,#02,#d0,#60,#80
	db #03,#60,#80,#04,#d0,#60,#80,#03
	db #d2,#61,#60,#80,#04,#d0,#60,#80
	db #03,#60,#80,#02,#d0,#60,#80,#03
	db #60,#80,#04,#d0,#60,#80,#03,#60
	db #80,#02,#c2,#ff,#00,#00,#00,#00
;
	ds #6000-$,#00
;
.l6000
	db #53,#4b,#31,#30,#00,#60,#01,#32
	db #00,#20,#60,#22,#60,#2e,#60,#31
	db #60,#1a,#60,#20,#60,#22,#60,#2e
	db #60,#04,#c0,#00,#00,#c4,#02,#02
	db #7f,#01,#6e,#60,#94,#60,#c6,#60
	db #6e,#60,#94,#60,#c6,#60,#02,#ec
	db #60,#37,#60,#41,#60,#56,#60,#3e
	db #60,#41,#60,#ff,#37,#00,#00,#00
	db #00,#3e,#60,#56,#60,#00,#b7,#00
	db #0d,#0d,#0b,#0b,#09,#09,#07,#07
	db #05,#05,#03,#03,#01,#01,#3e,#60
	db #6e,#60,#00,#b7,#00,#2e,#0c,#2e
	db #0c,#0e,#0b,#0b,#0b,#09,#09,#09
	db #00,#00,#00,#09,#09,#09,#6e,#81
	db #01,#d2,#89,#ce,#6b,#d2,#87,#d2
	db #67,#d2,#83,#d2,#69,#ce,#6b,#d2
	db #87,#d2,#6f,#d2,#89,#ce,#6b,#d2
	db #87,#d2,#67,#d2,#83,#d2,#69,#ce
	db #6b,#d2,#87,#c2,#22,#81,#02,#ce
	db #21,#ce,#23,#ce,#2d,#d2,#2d,#d2
	db #2d,#ce,#3b,#ce,#39,#ce,#3b,#ce
	db #2d,#d2,#2d,#d2,#2d,#ce,#23,#ce
	db #21,#ce,#23,#ce,#2d,#d2,#2d,#d2
	db #2d,#ce,#3b,#ce,#39,#ce,#3b,#ce
	db #2d,#d2,#2d,#d2,#2d,#c2,#7e,#81
	db #01,#d2,#91,#ce,#7d,#d2,#8d,#d2
	db #79,#d2,#89,#d2,#7b,#ce,#7d,#d2
	db #8d,#d2,#7f,#d2,#91,#ce,#7d,#d2
	db #8d,#d2,#79,#d2,#89,#d2,#7b,#ce
	db #7d,#d2,#8d,#c2,#ff,#00,#00,#00
;
	ds #7000-$,#00
;
.l7000
	db #53,#4b,#31,#30,#00,#70,#01,#32
	db #00,#25,#70,#28,#70,#5e,#70,#64
	db #70,#1d,#70,#26,#70,#2e,#70,#61
	db #70,#04,#c0,#00,#00,#c0,#00,#00
	db #09,#c4,#02,#02,#01,#1e,#7f,#07
	db #9a,#71,#9b,#71,#ab,#71,#bb,#71
	db #fd,#71,#5d,#72,#97,#72,#d9,#72
	db #3e,#73,#bb,#71,#fd,#71,#5d,#72
	db #78,#73,#b4,#73,#1b,#74,#52,#74
	db #d4,#74,#2e,#75,#68,#75,#aa,#75
	db #d7,#75,#bb,#71,#fd,#71,#0b,#76
	db #45,#76,#87,#76,#e5,#76,#00,#20
	db #77,#0e,#20,#77,#7c,#70,#86,#70
	db #ab,#70,#d2,#70,#e8,#70,#f0,#70
	db #0f,#71,#2e,#71,#4d,#71,#59,#71
	db #62,#71,#81,#71,#83,#70,#86,#70
	db #ff,#37,#00,#00,#00,#00,#83,#70
	db #ab,#70,#00,#b7,#00,#4e,#fe,#ff
	db #4d,#02,#00,#4c,#ff,#ff,#4b,#01
	db #00,#4a,#fe,#ff,#49,#02,#00,#47
	db #ff,#ff,#45,#01,#00,#43,#fe,#ff
	db #41,#02,#00,#83,#70,#d2,#70,#00
	db #b7,#00,#4d,#fc,#ff,#4d,#04,#00
	db #4b,#fc,#ff,#4b,#04,#00,#48,#fc
	db #ff,#48,#04,#00,#00,#00,#48,#fc
	db #ff,#48,#04,#00,#48,#fc,#ff,#48
	db #04,#00,#83,#70,#e8,#70,#00,#b7
	db #00,#4c,#fe,#ff,#4b,#02,#00,#4a
	db #fe,#ff,#49,#02,#00,#48,#fe,#ff
	db #ef,#70,#f0,#70,#00,#37,#00,#0e
	db #f7,#70,#0f,#71,#00,#37,#00,#4e
	db #ff,#ff,#4e,#ff,#ff,#4e,#ff,#ff
	db #4e,#ff,#ff,#4e,#01,#00,#4e,#01
	db #00,#4e,#01,#00,#4e,#01,#00,#16
	db #71,#2e,#71,#00,#37,#00,#4e,#fe
	db #ff,#4e,#02,#00,#4e,#fe,#ff,#4e
	db #02,#00,#4e,#fe,#ff,#4e,#02,#00
	db #4e,#fe,#ff,#4e,#02,#00,#35,#71
	db #4d,#71,#00,#37,#00,#4e,#ff,#ff
	db #4e,#ff,#ff,#4e,#01,#00,#4e,#01
	db #00,#4e,#ff,#ff,#4e,#ff,#ff,#4e
	db #01,#00,#4e,#01,#00,#83,#70,#59
	db #71,#00,#b7,#00,#0c,#0b,#0a,#09
	db #08,#61,#71,#62,#71,#00,#37,#00
	db #0e,#0f,#6c,#71,#81,#71,#00,#37
	db #00,#4f,#ff,#ff,#4f,#ff,#ff,#4f
	db #ff,#ff,#4f,#ff,#ff,#4f,#01,#00
	db #4f,#01,#00,#4f,#01,#00,#4f,#01
	db #00,#83,#70,#9a,#71,#00,#b7,#00
	db #4d,#fc,#ff,#4d,#04,#00,#4b,#fc
	db #ff,#4b,#04,#00,#48,#fc,#ff,#48
	db #04,#00,#c2,#72,#81,#01,#73,#ce
	db #73,#77,#ce,#79,#ce,#7b,#d2,#73
	db #77,#79,#7b,#62,#81,#02,#63,#ce
	db #63,#65,#ce,#67,#ce,#69,#d2,#4b
	db #4d,#4f,#51,#5a,#81,#03,#5f,#65
	db #5b,#5f,#65,#5b,#5f,#65,#5b,#5f
	db #65,#59,#5f,#65,#59,#57,#5b,#63
	db #57,#5b,#63,#57,#5b,#63,#57,#5b
	db #63,#57,#5b,#63,#51,#57,#5b,#63
	db #57,#5b,#63,#57,#5b,#63,#57,#5b
	db #63,#57,#5b,#63,#5f,#5b,#5f,#65
	db #5b,#5f,#65,#5b,#5f,#65,#5b,#5f
	db #65,#5b,#5f,#65,#5f,#7c,#81,#04
	db #ce,#c4,#06,#ce,#84,#01,#ce,#c4
	db #06,#ce,#8a,#01,#ce,#c4,#06,#ce
	db #88,#01,#ce,#c4,#06,#ce,#86,#01
	db #ce,#c4,#06,#ce,#80,#01,#c4,#06
	db #7a,#01,#d2,#7a,#80,#05,#ce,#c4
	db #06,#d6,#5a,#81,#04,#c4,#06,#58
	db #01,#c4,#06,#5a,#01,#c4,#06,#68
	db #01,#c4,#06,#c4,#00,#ce,#68,#8d
	db #05,#ce,#6e,#81,#04,#c4,#06,#6c
	db #01,#c4,#06,#64,#01,#c4,#06,#5e
	db #01,#c4,#06,#5a,#01,#d2,#5a,#8d
	db #05,#d2,#c4,#0f,#c2,#4c,#81,#02
	db #d0,#4d,#ce,#43,#47,#ce,#55,#d0
	db #55,#ce,#53,#4d,#ce,#51,#d0,#51
	db #ce,#43,#47,#ce,#51,#d0,#51,#ce
	db #43,#47,#ce,#51,#d0,#51,#ce,#43
	db #47,#ce,#51,#d0,#51,#ce,#43,#47
	db #ce,#4d,#d0,#4d,#ce,#43,#47,#ce
	db #4d,#d0,#4d,#ce,#43,#47,#c2,#5e
	db #81,#03,#65,#69,#5f,#65,#69,#5f
	db #65,#5f,#65,#6b,#5f,#65,#6b,#5f
	db #65,#5b,#5f,#65,#5b,#5f,#65,#5b
	db #5f,#5b,#5f,#67,#5b,#5f,#67,#5b
	db #5f,#5f,#65,#6d,#5f,#65,#6d,#5f
	db #65,#5f,#63,#6b,#5f,#63,#6b,#5f
	db #63,#65,#57,#5f,#65,#57,#5f,#65
	db #6b,#6d,#6f,#67,#69,#61,#63,#59
	db #5b,#5e,#81,#06,#c4,#06,#5c,#01
	db #c4,#06,#5e,#01,#c4,#06,#64,#01
	db #ce,#c4,#06,#ce,#c4,#00,#c4,#06
	db #68,#01,#ce,#c4,#06,#ce,#6c,#01
	db #c4,#06,#6a,#01,#c4,#06,#6c,#01
	db #c4,#06,#76,#01,#d0,#c4,#06,#d0
	db #74,#01,#c4,#06,#76,#01,#c4,#06
	db #7a,#01,#ce,#c4,#06,#ce,#70,#01
	db #c4,#06,#72,#01,#d0,#c4,#06,#d0
	db #70,#01,#c4,#07,#72,#01,#c4,#06
	db #76,#01,#ce,#c4,#06,#ce,#6c,#01
	db #c4,#06,#6e,#01,#ce,#c4,#06,#ce
	db #68,#01,#d0,#c4,#06,#c2,#56,#81
	db #02,#d0,#57,#ce,#4d,#57,#ce,#59
	db #d0,#59,#ce,#51,#59,#ce,#5b,#d0
	db #5b,#ce,#55,#5b,#ce,#5f,#d0,#5f
	db #ce,#55,#4f,#ce,#59,#d0,#59,#ce
	db #4f,#4d,#ce,#4b,#d0,#4b,#ce,#4b
	db #4f,#ce,#51,#d0,#51,#ce,#4d,#47
	db #ce,#43,#d0,#43,#ce,#47,#4b,#c2
	db #5e,#81,#03,#65,#69,#5f,#65,#69
	db #5f,#65,#5f,#65,#6b,#5f,#65,#6b
	db #5f,#65,#5b,#5f,#65,#5b,#5f,#65
	db #5b,#5f,#5b,#5f,#67,#5b,#5f,#67
	db #5b,#5f,#57,#5f,#65,#57,#5f,#65
	db #5f,#61,#63,#73,#63,#61,#5f,#6f
	db #5f,#5d,#5b,#5f,#65,#5b,#5f,#65
	db #5b,#5f,#65,#c2,#5e,#81,#06,#c4
	db #06,#5c,#01,#c4,#06,#5e,#01,#c4
	db #06,#64,#01,#ce,#c4,#06,#ce,#c4
	db #00,#c4,#06,#68,#01,#ce,#c4,#06
	db #ce,#6c,#01,#c4,#06,#6a,#01,#c4
	db #06,#6c,#01,#c4,#06,#76,#01,#ce
	db #c4,#06,#ce,#c4,#00,#c4,#06,#6c
	db #01,#ce,#c4,#06,#ce,#68,#01,#c4
	db #06,#66,#01,#c4,#06,#68,#01,#c4
	db #06,#72,#01,#ce,#c4,#06,#ce,#c4
	db #00,#c4,#06,#62,#01,#ce,#c4,#06
	db #ce,#64,#01,#ce,#c4,#06,#ce,#c4
	db #0f,#da,#7c,#81,#07,#c4,#06,#80
	db #01,#c4,#06,#56,#81,#02,#d0,#57
	db #ce,#4d,#57,#ce,#59,#d0,#59,#ce
	db #51,#59,#ce,#5b,#d0,#5b,#ce,#55
	db #5b,#ce,#5f,#d0,#5f,#ce,#55,#4f
	db #ce,#39,#d0,#39,#ce,#4d,#47,#ce
	db #43,#d0,#43,#ce,#47,#4b,#ce,#4d
	db #d0,#4d,#ce,#43,#47,#ce,#4d,#ce
	db #35,#c2,#5a,#81,#03,#65,#8a,#80
	db #08,#6c,#80,#03,#5b,#65,#8a,#80
	db #08,#6c,#80,#03,#59,#65,#88,#80
	db #08,#68,#80,#03,#59,#65,#88,#80
	db #08,#68,#80,#03,#5f,#63,#88,#80
	db #08,#68,#80,#03,#59,#63,#88,#80
	db #08,#68,#80,#03,#55,#63,#84,#80
	db #08,#6c,#80,#03,#55,#63,#84,#80
	db #08,#6c,#80,#03,#5f,#69,#8e,#80
	db #08,#70,#80,#03,#5f,#69,#8e,#80
	db #08,#70,#80,#03,#5d,#69,#8c,#80
	db #08,#6c,#80,#03,#5d,#69,#8c,#80
	db #08,#6c,#80,#03,#5d,#67,#8c,#80
	db #08,#6c,#80,#03,#5d,#67,#8c,#80
	db #08,#6c,#80,#03,#59,#67,#88,#80
	db #08,#6c,#80,#03,#59,#67,#88,#80
	db #08,#6c,#80,#03,#84,#81,#07,#ce
	db #c4,#06,#ce,#7c,#01,#c4,#06,#80
	db #01,#c4,#06,#84,#01,#ce,#c4,#06
	db #ce,#7c,#01,#c4,#06,#84,#01,#c4
	db #06,#80,#01,#ce,#c4,#06,#ce,#7a
	db #01,#c4,#06,#c4,#0f,#d6,#c4,#00
	db #c4,#06,#7e,#01,#c4,#06,#80,#01
	db #ce,#c4,#06,#ce,#88,#01,#c4,#06
	db #84,#01,#ce,#c4,#06,#ce,#80,#01
	db #c4,#06,#7e,#01,#c4,#06,#80,#01
	db #c4,#06,#84,#01,#d6,#c4,#06,#d6
	db #6c,#81,#09,#ce,#71,#c2,#46,#81
	db #02,#d0,#47,#ce,#47,#3d,#ce,#39
	db #d0,#39,#ce,#39,#41,#ce,#43,#d0
	db #43,#ce,#43,#39,#ce,#43,#d0,#43
	db #ce,#43,#39,#ce,#4b,#d0,#4b,#ce
	db #4b,#41,#ce,#3d,#d0,#3d,#ce,#3d
	db #4b,#ce,#47,#d0,#47,#ce,#47,#3d
	db #ce,#47,#d0,#47,#ce,#47,#3d,#c2
	db #68,#81,#03,#73,#81,#7b,#73,#81
	db #7b,#73,#67,#73,#7f,#77,#73,#7f
	db #77,#73,#69,#73,#81,#7b,#73,#81
	db #7b,#73,#67,#73,#7f,#77,#73,#7f
	db #77,#73,#67,#71,#77,#71,#67,#77
	db #71,#67,#6f,#75,#7b,#75,#6f,#7b
	db #75,#6f,#6d,#73,#7b,#6d,#73,#7b
	db #6d,#73,#6d,#73,#7f,#6d,#73,#7f
	db #6d,#73,#72,#81,#09,#d2,#6d,#ce
	db #71,#ce,#73,#d2,#6d,#ce,#71,#ce
	db #73,#d2,#7b,#ce,#77,#d2,#73,#ce
	db #71,#ce,#6d,#ce,#69,#ce,#71,#ce
	db #77,#ce,#7b,#ce,#7f,#d2,#7b,#d2
	db #6c,#80,#0a,#e2,#c4,#0f,#c2,#54
	db #81,#02,#d0,#55,#d0,#55,#ce,#47
	db #d0,#47,#d0,#47,#ce,#55,#d0,#55
	db #d0,#55,#ce,#47,#d0,#47,#d0,#47
	db #ce,#51,#d0,#51,#d0,#51,#ce,#4f
	db #d0,#4f,#d0,#4f,#ce,#55,#d0,#55
	db #ce,#47,#4b,#ce,#47,#d0,#47,#ce
	db #4f,#55,#c2,#4c,#81,#0b,#d0,#4d
	db #ce,#43,#47,#ce,#55,#d0,#55,#ce
	db #53,#4d,#ce,#51,#d0,#51,#ce,#43
	db #47,#ce,#51,#d0,#51,#ce,#43,#47
	db #ce,#51,#d0,#51,#ce,#43,#47,#ce
	db #51,#d0,#51,#ce,#43,#47,#ce,#4d
	db #d0,#4d,#ce,#43,#47,#ce,#4d,#d0
	db #4d,#ce,#43,#47,#c2,#5e,#81,#03
	db #65,#69,#5f,#65,#69,#5f,#65,#5f
	db #65,#6b,#5f,#65,#6b,#5f,#65,#5b
	db #5f,#65,#5b,#5f,#65,#5b,#5f,#5b
	db #5f,#67,#5b,#5f,#67,#5b,#5f,#57
	db #5f,#65,#57,#5f,#65,#5f,#61,#63
	db #73,#63,#61,#5f,#6f,#5f,#5d,#5b
	db #5f,#65,#5b,#5f,#65,#5b,#5f,#65
	db #ce,#82,#80,#08,#ce,#85,#c2,#5e
	db #81,#06,#c4,#06,#5c,#01,#c4,#06
	db #5e,#01,#c4,#06,#64,#01,#ce,#c4
	db #06,#ce,#c4,#00,#c4,#06,#68,#01
	db #ce,#c4,#06,#ce,#6c,#01,#c4,#06
	db #6a,#01,#c4,#06,#6c,#01,#c4,#06
	db #76,#01,#ce,#c4,#06,#ce,#c4,#00
	db #c4,#06,#6c,#01,#ce,#c4,#06,#ce
	db #68,#01,#c4,#06,#66,#01,#c4,#06
	db #68,#01,#c4,#06,#72,#01,#ce,#c4
	db #06,#ce,#c4,#00,#c4,#06,#62,#01
	db #ce,#c4,#06,#ce,#64,#01,#ce,#c4
	db #06,#ce,#c4,#0f,#c2,#56,#81,#02
	db #d0,#57,#ce,#4d,#57,#ce,#59,#d0
	db #59,#ce,#51,#59,#ce,#5b,#d0,#5b
	db #ce,#55,#5b,#ce,#5f,#d0,#5f,#ce
	db #55,#4f,#ce,#39,#d0,#39,#ce,#4d
	db #47,#ce,#43,#d0,#43,#ce,#47,#4b
	db #ce,#4d,#d0,#4d,#ce,#43,#47,#ce
	db #4d,#ce,#62,#80,#0b,#ce,#65,#c2
	db #ff,#00,#00,#00,#00,#00,#00,#00

;
;;; 270 IF a$="1" THEN CALL &4003:CALL &4000,&5000
;;; 280 IF a$="2" THEN CALL &4003:CALL &4000,&6000
;;; 290 IF a$="3" THEN CALL &4003:CALL &4000,&7000
;
.init_music		; added by Megachur
;
	ld de,l5000
	or a
	jr z,call_real_init_music
	ld de,l6000
	dec a
	jr z,call_real_init_music
	ld de,l7000
call_real_init_music
	jp real_init_music
;
.music_info
	db "Super Mario Land 2 (Epyteor)(2012)(SuTeKH)",0
	db "StarkOs",0

	read "music_end.asm"

