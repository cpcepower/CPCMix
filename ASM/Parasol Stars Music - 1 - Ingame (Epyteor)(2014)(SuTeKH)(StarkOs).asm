; Music of Parasol Stars Music - 1 - Ingame (Epyteor)(2014)(SuTeKH)(StarkOs)
; Ripped by Megachur the 21/02/2015
; $VER 1.5

IFDEF FILENAME_WRITE
		write "PARASSM1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2015
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
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
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
	nop
;
	ds #5000-$,0
;
.l5000
	db #53,#4b,#31,#30,#00,#50,#01,#32
	db #00,#22,#50,#27,#50,#81,#50,#8a
	db #50,#1e,#50,#25,#50,#39,#50,#87
	db #50,#02,#c0,#00,#00,#03,#c0,#00
	db #00,#15,#16,#7e,#38,#7f,#0b,#46
	db #52,#47,#52,#46,#52,#51,#52,#63
	db #52,#85,#52,#97,#52,#a1,#52,#ad
	db #52,#b7,#52,#d9,#52,#19,#53,#2f
	db #53,#57,#53,#97,#53,#aa,#53,#d6
	db #53,#16,#54,#29,#54,#4b,#54,#85
	db #54,#a2,#54,#c0,#54,#00,#55,#26
	db #55,#4a,#55,#8a,#55,#aa,#55,#d2
	db #55,#12,#56,#32,#56,#4d,#56,#87
	db #56,#ab,#56,#bf,#56,#03,#57,#26
	db #57,#42,#57,#86,#57,#ae,#57,#c2
	db #57,#02,#58,#30,#58,#52,#58,#84
	db #58,#fe,#ae,#58,#fc,#ae,#58,#16
	db #ae,#58,#a2,#50,#ac,#50,#bf,#50
	db #e7,#50,#11,#51,#48,#51,#88,#51
	db #9b,#51,#d2,#51,#db,#51,#f2,#51
	db #1c,#52,#a9,#50,#ac,#50,#ff,#37
	db #00,#00,#00,#00,#a9,#50,#bf,#50
	db #00,#b7,#00,#0d,#0e,#0f,#0f,#0f
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#cf
	db #50,#e7,#50,#00,#37,#00,#0c,#0d
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#4e
	db #ff,#ff,#4e,#ff,#ff,#4e,#ff,#ff
	db #4e,#ff,#ff,#4e,#01,#00,#4e,#01
	db #00,#4e,#01,#00,#4e,#01,#00,#a9
	db #50,#11,#51,#00,#b7,#00,#0e,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#08,#07,#07,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#02,#01
	db #01,#a9,#50,#48,#51,#00,#b7,#00
	db #0c,#0d,#0e,#0e,#0e,#0e,#0d,#0d
	db #0c,#4c,#ff,#ff,#4b,#ff,#ff,#4b
	db #ff,#ff,#4a,#ff,#ff,#4a,#01,#00
	db #49,#01,#00,#49,#01,#00,#48,#01
	db #00,#48,#ff,#ff,#47,#ff,#ff,#47
	db #ff,#ff,#46,#ff,#ff,#46,#01,#00
	db #a9,#50,#88,#51,#00,#b7,#00,#0c
	db #0d,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0d,#0d
	db #0c,#4c,#ff,#ff,#4b,#ff,#ff,#4b
	db #ff,#ff,#4a,#ff,#ff,#4a,#01,#00
	db #49,#01,#00,#49,#01,#00,#48,#01
	db #00,#48,#ff,#ff,#47,#ff,#ff,#47
	db #ff,#ff,#46,#ff,#ff,#46,#01,#00
	db #a9,#50,#9b,#51,#00,#b7,#00,#0d
	db #0d,#0c,#0c,#0b,#0b,#0a,#09,#08
	db #07,#06,#05,#a9,#50,#d2,#51,#00
	db #b7,#00,#0c,#0d,#0e,#0e,#0d,#0d
	db #4c,#ff,#ff,#4c,#ff,#ff,#4b,#ff
	db #ff,#4b,#ff,#ff,#4a,#01,#00,#4a
	db #01,#00,#49,#01,#00,#49,#01,#00
	db #48,#ff,#ff,#48,#ff,#ff,#47,#ff
	db #ff,#47,#ff,#ff,#46,#01,#00,#46
	db #01,#00,#da,#51,#db,#51,#00,#37
	db #00,#0c,#0d,#e3,#51,#f2,#51,#00
	db #37,#00,#0d,#0e,#0e,#0e,#4e,#ff
	db #ff,#4e,#ff,#ff,#4e,#ff,#ff,#4e
	db #ff,#ff,#a9,#50,#1c,#52,#00,#b7
	db #00,#0d,#0e,#0e,#0e,#4d,#ff,#ff
	db #4d,#ff,#ff,#4c,#ff,#ff,#4c,#ff
	db #ff,#0b,#0a,#09,#08,#47,#ff,#ff
	db #46,#ff,#ff,#45,#ff,#ff,#44,#ff
	db #ff,#03,#02,#01,#a9,#50,#46,#52
	db #00,#b7,#00,#0d,#0e,#0e,#0e,#4d
	db #ff,#ff,#4d,#ff,#ff,#4c,#ff,#ff
	db #4c,#ff,#ff,#0b,#0a,#09,#08,#47
	db #ff,#ff,#46,#ff,#ff,#45,#ff,#ff
	db #44,#ff,#ff,#03,#02,#01,#c2,#42
	db #80,#01,#ce,#45,#ce,#37,#d2,#37
	db #c2,#62,#80,#02,#da,#61,#da,#5f
	db #da,#61,#da,#63,#da,#61,#da,#5f
	db #da,#61,#c2,#36,#80,#01,#d2,#37
	db #d2,#37,#d2,#37,#d2,#37,#d2,#37
	db #d2,#37,#d2,#37,#d2,#37,#d2,#37
	db #d2,#37,#d2,#37,#d2,#37,#d2,#37
	db #d2,#37,#d2,#37,#c2,#5c,#80,#02
	db #da,#5b,#da,#59,#da,#5b,#da,#5d
	db #da,#5b,#da,#59,#da,#5b,#c2,#62
	db #80,#02,#da,#67,#d2,#79,#da,#7b
	db #c2,#36,#80,#01,#d2,#37,#d2,#36
	db #80,#03,#e2,#4f,#c2,#5c,#80,#02
	db #da,#56,#80,#03,#e2,#5d,#c2,#7e
	db #80,#04,#d2,#83,#d2,#79,#d2,#7b
	db #d2,#7f,#d2,#83,#d2,#79,#d2,#7b
	db #d2,#7e,#80,#05,#da,#90,#80,#02
	db #da,#89,#da,#78,#80,#04,#d2,#7b
	db #c2,#40,#80,#01,#d2,#78,#80,#06
	db #d2,#36,#80,#01,#d2,#78,#80,#06
	db #d2,#40,#80,#01,#d2,#78,#80,#06
	db #d2,#36,#80,#01,#d2,#78,#80,#06
	db #d2,#40,#80,#01,#d2,#78,#80,#06
	db #d2,#36,#80,#01,#d2,#78,#80,#06
	db #d2,#40,#80,#01,#d2,#78,#80,#06
	db #d2,#36,#80,#01,#d2,#78,#80,#06
	db #c2,#78,#80,#07,#d2,#7e,#80,#06
	db #da,#7f,#da,#7f,#da,#7f,#da,#7f
	db #da,#7f,#da,#7f,#da,#7f,#c2,#7e
	db #80,#04,#d2,#83,#d2,#79,#d2,#7b
	db #d2,#7f,#d2,#83,#d2,#79,#d2,#7b
	db #d2,#7e,#80,#05,#d6,#7a,#80,#02
	db #7f,#7a,#80,#08,#d2,#79,#d2,#7b
	db #da,#74,#80,#04,#d2,#79,#c2,#40
	db #80,#01,#d2,#78,#80,#06,#d2,#36
	db #80,#01,#d2,#78,#80,#06,#d2,#40
	db #80,#01,#d2,#78,#80,#06,#d2,#36
	db #80,#01,#d2,#78,#80,#06,#d2,#44
	db #80,#01,#d2,#7a,#80,#06,#d2,#3a
	db #80,#01,#d2,#7a,#80,#06,#d2,#32
	db #80,#01,#d2,#7a,#80,#06,#d2,#3a
	db #80,#01,#d2,#7a,#80,#06,#c2,#d4
	db #7e,#80,#06,#da,#7f,#da,#7f,#da
	db #7f,#da,#83,#da,#83,#da,#83,#da
	db #83,#c2,#7a,#80,#05,#d2,#7e,#80
	db #04,#d2,#75,#d2,#79,#d2,#7a,#80
	db #08,#da,#78,#80,#04,#d2,#7b,#d2
	db #7e,#80,#05,#d2,#82,#80,#04,#d2
	db #79,#d2,#7b,#d2,#7e,#80,#08,#da
	db #7c,#80,#04,#d2,#7f,#c2,#36,#80
	db #01,#d2,#7a,#80,#06,#d2,#3e,#80
	db #01,#d2,#7a,#80,#06,#d2,#44,#80
	db #01,#d2,#7a,#80,#06,#d2,#36,#80
	db #01,#d2,#7a,#80,#06,#d2,#40,#80
	db #01,#d2,#78,#80,#06,#d2,#36,#80
	db #01,#d2,#78,#80,#06,#d2,#48,#80
	db #01,#d2,#7e,#80,#06,#d2,#40,#80
	db #01,#d2,#78,#80,#06,#c2,#d4,#86
	db #80,#06,#da,#83,#da,#7f,#da,#7f
	db #da,#7f,#da,#7f,#da,#89,#da,#7f
	db #c2,#82,#80,#08,#d2,#87,#d2,#7d
	db #d2,#7f,#d2,#83,#d2,#87,#d2,#89
	db #d2,#8d,#d2,#8d,#e6,#86,#80,#04
	db #ce,#97,#ce,#8d,#ce,#7f,#d2,#79
	db #d2,#7b,#c2,#2c,#80,#01,#d2,#7c
	db #80,#06,#d2,#34,#80,#01,#d2,#74
	db #80,#06,#d2,#3a,#80,#01,#d2,#7c
	db #80,#06,#d2,#44,#80,#01,#d2,#82
	db #80,#06,#d2,#36,#80,#01,#d2,#66
	db #80,#03,#d2,#64,#80,#04,#ce,#67
	db #d6,#75,#ce,#67,#ce,#67,#d2,#3a
	db #80,#01,#d2,#3f,#c2,#d4,#82,#80
	db #06,#da,#7d,#da,#83,#da,#89,#da
	db #6e,#80,#04,#d2,#6d,#ce,#6f,#da
	db #6f,#ce,#57,#d2,#70,#80,#07,#d2
	db #75,#c2,#7e,#80,#04,#d2,#83,#d2
	db #79,#d2,#7b,#d2,#7f,#d2,#83,#d2
	db #79,#d2,#7b,#d2,#7e,#80,#03,#da
	db #91,#da,#89,#da,#89,#d2,#8d,#c2
	db #40,#80,#01,#d2,#78,#80,#06,#d2
	db #36,#80,#01,#d2,#78,#80,#06,#d2
	db #40,#80,#01,#d2,#78,#80,#06,#d2
	db #36,#80,#01,#d2,#78,#80,#06,#d2
	db #40,#80,#01,#d2,#78,#80,#06,#d2
	db #36,#80,#01,#d2,#78,#80,#06,#d2
	db #40,#80,#01,#d2,#78,#80,#06,#d2
	db #36,#80,#01,#d2,#78,#80,#06,#c2
	db #78,#80,#07,#d2,#71,#d2,#71,#d2
	db #75,#d2,#79,#d2,#71,#d2,#71,#d2
	db #75,#d2,#79,#ce,#71,#ce,#67,#d2
	db #7f,#da,#79,#ce,#77,#ce,#79,#ce
	db #7b,#ce,#79,#d2,#7b,#c2,#90,#80
	db #04,#d2,#93,#d2,#89,#d2,#8d,#d2
	db #91,#d2,#93,#d2,#89,#d2,#8d,#d2
	db #90,#80,#03,#d6,#8c,#80,#04,#91
	db #8d,#d2,#8b,#d2,#8d,#da,#83,#d2
	db #7b,#c2,#40,#80,#01,#d2,#78,#80
	db #06,#d2,#36,#80,#01,#d2,#78,#80
	db #06,#d2,#40,#80,#01,#d2,#78,#80
	db #06,#d2,#36,#80,#01,#d2,#78,#80
	db #06,#d2,#44,#80,#01,#d2,#7a,#80
	db #06,#d2,#3a,#80,#01,#d2,#7a,#80
	db #06,#d2,#32,#80,#01,#d2,#7a,#80
	db #06,#d2,#3a,#80,#01,#d2,#7a,#80
	db #06,#c2,#7e,#80,#07,#d2,#83,#d2
	db #79,#d2,#7b,#d2,#7f,#d2,#83,#d2
	db #79,#d2,#7b,#d2,#7f,#d6,#7b,#7f
	db #7b,#d2,#79,#d2,#7b,#da,#75,#d2
	db #71,#c2,#7a,#80,#05,#d2,#7e,#80
	db #04,#d2,#75,#d2,#79,#d2,#7a,#80
	db #02,#da,#78,#80,#04,#d2,#7b,#d2
	db #7f,#d2,#83,#d2,#79,#d2,#7b,#d2
	db #7e,#80,#02,#da,#7c,#80,#04,#d2
	db #7f,#c2,#36,#80,#01,#d2,#7a,#80
	db #06,#d2,#3e,#80,#01,#d2,#7a,#80
	db #06,#d2,#44,#80,#01,#d2,#7a,#80
	db #06,#d2,#36,#80,#01,#d2,#7a,#80
	db #06,#d2,#40,#80,#01,#d2,#78,#80
	db #06,#d2,#36,#80,#01,#d2,#78,#80
	db #06,#d2,#48,#80,#01,#d2,#7e,#80
	db #06,#d2,#40,#80,#01,#d2,#78,#80
	db #06,#c2,#6e,#80,#02,#e2,#6b,#d2
	db #66,#80,#04,#d2,#6f,#d2,#71,#d2
	db #75,#d2,#78,#80,#02,#e2,#75,#d2
	db #70,#80,#04,#d2,#67,#d2,#6b,#d2
	db #71,#c2,#82,#80,#08,#d2,#87,#d2
	db #89,#d2,#8d,#d2,#89,#d2,#87,#d2
	db #83,#d2,#87,#d2,#89,#c0,#1a,#86
	db #80,#09,#8b,#8d,#8f,#2c,#80,#01
	db #d2,#7c,#80,#06,#d2,#34,#80,#01
	db #d2,#74,#80,#06,#d2,#36,#80,#01
	db #d2,#74,#80,#06,#d2,#3e,#80,#01
	db #d2,#7a,#80,#06,#d2,#28,#80,#01
	db #d2,#31,#d2,#4f,#ce,#4b,#d2,#49
	db #ce,#41,#d2,#37,#ce,#4f,#ce,#3b
	db #ce,#53,#ce,#3f,#ce,#57,#c2,#78
	db #80,#02,#da,#75,#d2,#79,#d2,#7b
	db #d2,#5d,#d2,#61,#d2,#63,#d2,#66
	db #80,#04,#d2,#71,#d2,#79,#ce,#75
	db #d2,#71,#d6,#7e,#80,#07,#d2,#83
	db #d2,#87,#c2,#90,#80,#09,#ea,#89
	db #ea,#8d,#ea,#5c,#80,#0a,#d2,#8c
	db #80,#0b,#d2,#91,#d2,#93,#c2,#40
	db #80,#01,#d2,#78,#80,#06,#ce,#75
	db #ce,#36,#80,#01,#d2,#70,#80,#06
	db #d2,#40,#80,#01,#d2,#78,#80,#06
	db #d2,#48,#80,#01,#d2,#78,#80,#06
	db #d2,#44,#80,#01,#d2,#7a,#80,#06
	db #ce,#79,#ce,#3e,#80,#01,#d2,#74
	db #80,#06,#d2,#36,#80,#01,#d2,#7a
	db #80,#06,#d2,#3e,#80,#01,#d2,#7a
	db #80,#06,#c2,#d4,#7e,#80,#07,#ce
	db #7b,#d2,#89,#ce,#79,#da,#67,#ce
	db #69,#ce,#6b,#ce,#69,#ce,#67,#da
	db #83,#ce,#7f,#d2,#97,#ce,#7b,#da
	db #6f,#d2,#71,#d2,#75,#c2,#92,#80
	db #09,#ea,#4a,#80,#0a,#d2,#92,#80
	db #0b,#d2,#91,#d2,#8d,#d2,#88,#80
	db #09,#e2,#90,#80,#0b,#d2,#90,#80
	db #09,#c2,#36,#80,#01,#d2,#74,#80
	db #06,#ce,#71,#ce,#3e,#80,#01,#d2
	db #6e,#80,#06,#d2,#44,#80,#01,#d2
	db #7a,#80,#06,#d2,#36,#80,#01,#d2
	db #7a,#80,#06,#d2,#40,#80,#01,#d2
	db #78,#80,#06,#ce,#75,#ce,#36,#80
	db #01,#d2,#70,#80,#06,#d2,#40,#80
	db #01,#d2,#78,#80,#06,#d2,#36,#80
	db #01,#d2,#78,#80,#06,#c2,#74,#80
	db #04,#d2,#7a,#80,#07,#ce,#79,#d2
	db #91,#ce,#75,#da,#75,#d2,#71,#d2
	db #6f,#d2,#67,#d2,#7f,#ce,#7b,#d2
	db #89,#ce,#79,#da,#67,#ce,#69,#ce
	db #6b,#ce,#69,#ce,#67,#c2,#96,#80
	db #09,#ea,#91,#ea,#9b,#ea,#52,#80
	db #0a,#d2,#9a,#80,#0b,#d2,#97,#d2
	db #93,#c2,#40,#80,#01,#d2,#78,#80
	db #06,#d2,#44,#80,#01,#d2,#78,#80
	db #06,#d2,#46,#80,#01,#d2,#78,#80
	db #06,#d2,#48,#80,#01,#d2,#7e,#80
	db #06,#d2,#4a,#80,#01,#d2,#82,#80
	db #06,#d2,#40,#80,#01,#d2,#7a,#80
	db #06,#d2,#4a,#80,#01,#d2,#82,#80
	db #06,#d2,#40,#80,#01,#d2,#7a,#80
	db #06,#c2,#70,#80,#07,#ce,#67,#ce
	db #79,#ce,#7f,#ce,#89,#d2,#7f,#d2
	db #6d,#ce,#67,#ce,#79,#ce,#7f,#ce
	db #89,#d2,#85,#d2,#6b,#ce,#63,#ce
	db #83,#ce,#89,#ce,#93,#d2,#8d,#d2
	db #83,#d2,#7b,#d2,#79,#d2,#75,#c2
	db #92,#80,#09,#d2,#90,#80,#0b,#d2
	db #91,#d2,#8d,#d2,#8c,#80,#09,#d2
	db #88,#80,#0b,#d2,#89,#d2,#87,#d2
	db #88,#80,#09,#fa,#78,#80,#04,#d2
	db #7b,#c2,#4e,#80,#01,#d2,#78,#80
	db #06,#d2,#40,#80,#01,#d2,#78,#80
	db #06,#d2,#36,#80,#01,#d2,#7a,#80
	db #06,#d2,#3e,#80,#01,#d2,#7a,#80
	db #06,#d2,#40,#80,#01,#d2,#78,#80
	db #06,#d2,#48,#80,#01,#ce,#45,#d2
	db #41,#d2,#4f,#c2,#74,#80,#05,#d2
	db #70,#80,#04,#d2,#71,#d2,#6f,#d2
	db #6e,#80,#05,#d2,#6a,#80,#04,#d2
	db #67,#d2,#63,#d2,#60,#80,#03,#d2
	db #60,#80,#04,#d2,#67,#ce,#63,#d2
	db #61,#d2,#62,#80,#02,#c2,#ff,#00
	db #00
;
.init_music		; added by Megachur
;
	ld de,l5000
	jp real_init_music
;
.music_info
	db "Parasol Stars Music - 1 - Ingame (Epyteor)(2014)(SuTeKH)",0
	db "StarkOs",0

	read "music_end.asm"
