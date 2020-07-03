; Music of HDM Clone (2015)(C64CD)(TMR)(StArkOs)
; Ripped by Megachur the 01/09/2017
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "HDMCLONE.BIN"
	ENDIF

music_date_rip_day		equ 01
music_date_rip_month	equ 09
music_date_rip_year		equ 2017
music_adr				equ &4000

	read "music_header.asm"

	jp l49ce
	jp l400a
	jp l4a23
.l4009
	db #00
;
.play_music
.l400a
;
	xor a
	ld (l4009),a
.l400f equ $ + 1
	ld a,#01
	dec a
	jp z,l401c
	ld b,#c0
.l4016
	djnz l4016
	nop
	jp l42d3
.l401d equ $ + 1
.l401c
	ld a,#01
	dec a
	jp z,l402a
	ld b,#27
.l4024
	djnz l4024
	nop
	jp l40c2
.l402b equ $ + 1
.l402a
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jp c,l4039
	ld b,#02
.l4035
	djnz l4035
	jr l4040
.l4039
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l4040
	rra
	jp c,l404b
	nop
	nop
	nop
	nop
	nop
	jr l4050
.l404b
	ld de,l4155
	ldi
.l4050
	rra
	jp c,l405b
	nop
	nop
	nop
	nop
	nop
	jr l4060
.l405b
	ld de,l41ee
	ldi
.l4060
	rra
	jp c,l406b
	nop
	nop
	nop
	nop
	nop
	jr l4070
.l406b
	ld de,l4287
	ldi
.l4070
	ld de,l4116
	ldi
	ldi
	ld de,l41af
	ldi
	ldi
	ld de,l4248
	ldi
	ldi
	rra
	jp c,l4090
	nop
	nop
	nop
	nop
	nop
	jr l4095
.l4090
	ld de,l40c1
	ldi
.l4095
	rra
	jp c,l40a1
	ld b,#02
.l409b
	djnz l409b
	nop
	nop
	jr l40a9
.l40a1
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l40ad),de
.l40a9
	ld (l402b),hl
.l40ad equ $ + 1
	ld hl,#0000
	ld (l40d5),hl
	ld a,#01
	ld (l40c6),a
	ld (l4107),a
	ld (l41a0),a
	ld (l4239),a
.l40c1 equ $ + 1
	ld a,#01
.l40c2
	ld (l401d),a
.l40c6 equ $ + 1
	ld a,#01
	dec a
	jp z,l40d4
	ld b,#08
.l40cd
	djnz l40cd
	nop
	nop
	jp l4103
.l40d5 equ $ + 1
.l40d4
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jp c,l40e5
	ld b,#04
.l40e0
	djnz l40e0
	nop
	jr l4100
.l40e5
	srl a
	jp z,l40ed
	nop
	jr l40ef
.l40ed
	ld a,(hl)
	inc hl
.l40ef
	jp c,l40f6
	jr l40fb
	jr nc,l40fb
.l40f6
	ld (l4009),a
	jr l40fe
.l40fb
	ld (l42d2),a
.l40fe
	ld a,#01
.l4100
	ld (l40d5),hl
.l4103
	ld (l40c6),a
.l4107 equ $ + 1
	ld a,#01
	dec a
	jp z,l4115
	ld b,#2a
.l410e
	djnz l410e
	nop
	nop
	jp l419c
.l4116 equ $ + 1
.l4115
	ld hl,#0000
	call l46de
	ld (l4116),hl
	jp nc,l4128
	ld b,#18
.l4123
	djnz l4123
	jp l419c
.l4128
	ld a,d
	rra
	jp c,l4132
	nop
	nop
	nop
	jr l4137
.l4132
	and #0f
	ld (l4363),a
.l4137
	rl d
	jp c,l4141
	nop
	nop
	nop
	jr l4145
.l4141
	ld (l4351),ix
.l4145
	rl d
	jp c,l4153
	ld b,#10
.l414c
	djnz l414c
	nop
	nop
	nop
	jr l419a
.l4153
	ld a,e
.l4155 equ $ + 1
	add #00
	ld (l4362),a
	ld hl,#0000
	ld (l434e),hl
	rl d
	jp c,l4176
.l4165 equ $ + 1
	ld hl,#0000
	ld a,(l437a)
	ld (l436b),a
	ld b,#07
.l416f
	djnz l416f
	nop
	nop
	nop
	jr l4197
.l4176
	ld l,b
	add hl,hl
.l4179 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l437a),a
	ld (l436b),a
	ld a,(hl)
	or a
	jp nz,l4190
	nop
	jr l4193
.l4190
	ld (l4458),a
.l4193
	inc hl
	ld (l4165),hl
.l4197
	ld (l4365),hl
.l419a
	ld a,#01
.l419c
	ld (l4107),a
.l41a0 equ $ + 1
	ld a,#01
	dec a
	jp z,l41ae
	ld b,#2a
.l41a7
	djnz l41a7
	nop
	nop
	jp l4235
.l41af equ $ + 1
.l41ae
	ld hl,#0000
	call l46de
	ld (l41af),hl
	jp nc,l41c1
	ld b,#18
.l41bc
	djnz l41bc
	jp l4235
.l41c1
	ld a,d
	rra
	jp c,l41cb
	nop
	nop
	nop
	jr l41d0
.l41cb
	and #0f
	ld (l4328),a
.l41d0
	rl d
	jp c,l41da
	nop
	nop
	nop
	jr l41de
.l41da
	ld (l4316),ix
.l41de
	rl d
	jp c,l41ec
	ld b,#10
.l41e5
	djnz l41e5
	nop
	nop
	nop
	jr l4233
.l41ec
	ld a,e
.l41ee equ $ + 1
	add #00
	ld (l4327),a
	ld hl,#0000
	ld (l4313),hl
	rl d
	jp c,l420f
.l41fe equ $ + 1
	ld hl,#0000
	ld a,(l433f)
	ld (l4330),a
	ld b,#07
.l4208
	djnz l4208
	nop
	nop
	nop
	jr l4230
.l420f
	ld l,b
	add hl,hl
.l4212 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l433f),a
	ld (l4330),a
	ld a,(hl)
	or a
	jp nz,l4229
	nop
	jr l422c
.l4229
	ld (l4458),a
.l422c
	inc hl
	ld (l41fe),hl
.l4230
	ld (l432a),hl
.l4233
	ld a,#01
.l4235
	ld (l41a0),a
.l4239 equ $ + 1
	ld a,#01
	dec a
	jp z,l4247
	ld b,#2a
.l4240
	djnz l4240
	nop
	nop
	jp l42ce
.l4248 equ $ + 1
.l4247
	ld hl,#0000
	call l46de
	ld (l4248),hl
	jp nc,l425a
	ld b,#18
.l4255
	djnz l4255
	jp l42ce
.l425a
	ld a,d
	rra
	jp c,l4264
	nop
	nop
	nop
	jr l4269
.l4264
	and #0f
	ld (l42f0),a
.l4269
	rl d
	jp c,l4273
	nop
	nop
	nop
	jr l4277
.l4273
	ld (l42de),ix
.l4277
	rl d
	jp c,l4285
	ld b,#10
.l427e
	djnz l427e
	nop
	nop
	nop
	jr l42cc
.l4285
	ld a,e
.l4287 equ $ + 1
	add #00
	ld (l42ef),a
	ld hl,#0000
	ld (l42db),hl
	rl d
	jp c,l42a8
.l4297 equ $ + 1
	ld hl,#0000
	ld a,(l4307)
	ld (l42f8),a
	ld b,#07
.l42a1
	djnz l42a1
	nop
	nop
	nop
	jr l42c9
.l42a8
	ld l,b
	add hl,hl
.l42ab equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4307),a
	ld (l42f8),a
	ld a,(hl)
	or a
	jp nz,l42c2
	nop
	jr l42c5
.l42c2
	ld (l4458),a
.l42c5
	inc hl
	ld (l4297),hl
.l42c9
	ld (l42f2),hl
.l42cc
	ld a,#01
.l42ce
	ld (l4239),a
.l42d2 equ $ + 1
	ld a,#01
.l42d3
	ld (l400f),a
	ld iy,l4477
.l42db equ $ + 1
	ld hl,#0000
.l42de equ $ + 1
	ld de,#0000
	add hl,de
	ld (l42db),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l42f0 equ $ + 2
.l42ef equ $ + 1
	ld de,#0000
.l42f2 equ $ + 1
	ld hl,#0000
	call l4482
.l42f8 equ $ + 1
	ld a,#01
	dec a
	jp z,l4303
	nop
	nop
	nop
	nop
	jr l4308
.l4303
	ld (l42f2),hl
.l4307 equ $ + 1
	ld a,#06
.l4308
	ld (l42f8),a
	ld a,lx
	ex af,af'
	ld iy,l4475
.l4313 equ $ + 1
	ld hl,#0000
.l4316 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4313),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4328 equ $ + 2
.l4327 equ $ + 1
	ld de,#0000
.l432a equ $ + 1
	ld hl,#0000
	call l4482
.l4330 equ $ + 1
	ld a,#01
	dec a
	jp z,l433b
	nop
	nop
	nop
	nop
	jr l4340
.l433b
	ld (l432a),hl
.l433f equ $ + 1
	ld a,#06
.l4340
	ld (l4330),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l4473
.l434e equ $ + 1
	ld hl,#0000
.l4351 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l434e),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4363 equ $ + 2
.l4362 equ $ + 1
	ld de,#0000
.l4365 equ $ + 1
	ld hl,#0000
	call l4482
.l436b equ $ + 1
	ld a,#01
	dec a
	jp z,l4376
	nop
	nop
	nop
	nop
	jr l437b
.l4376
	ld (l4365),hl
.l437a equ $ + 1
	ld a,#06
.l437b
	ld (l436b),a
	ex af,af'
	or lx
.l4381
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l4473
	ld e,#f6
	ld bc,#f401
	db &ed,&71 ; out (c),0
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	ld a,(hl)
.l4458 equ $ + 1
	cp #ff
	jr z,l446c
	ld (l4458),a
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l446c
	ld b,#06
.l446e
	djnz l446e
	nop
	nop
	ret
.l4473
	nop
	nop
.l4475
	nop
	nop
.l4477
	nop
	nop
.l4479
	nop
.l447a
	nop
	nop
	nop
	nop
	nop
.l447f
	nop
	nop
.l4481
	nop
.l4482
	ld a,(hl)
	and #0f
	cp #0d
	jp nz,l4491
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jr l449d
.l4491
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l449d
	ld b,(hl)
	inc hl
	rr b
	jp c,l4520
	rr b
	jp c,l44db
	ld a,b
	and #0f
	jp nz,l44bd
	ld (iy+#07),a
	ld lx,#09
	ld b,#3a
.l44b7
	djnz l44b7
	nop
	nop
	nop
	ret
.l44bd
	ld lx,#08
	sub d
	jr nc,l44c4
	xor a
.l44c4
	ld (iy+#07),a
	rr b
	call l469d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld b,#24
.l44d5
	djnz l44d5
	nop
	nop
	nop
	ret
.l44db
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jp nz,l44ec
	nop
	nop
	nop
	nop
	jr l44f2
.l44ec
	ld (l4479),a
	ld lx,#00
.l44f2
	ld a,b
	and #0f
	sub d
	jr nc,l44f9
	xor a
.l44f9
	ld (iy+#07),a
	bit 5,c
	jp nz,l450a
	inc lx
	ld b,#34
.l4505
	djnz l4505
	nop
	nop
	ret
.l450a
	rr b
	bit 6,c
	call l4686
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld b,#1e
.l451a
	djnz l451a
	nop
	nop
	nop
	ret
.l4520
	rr b
	jp c,l452f
	ld a,#03
.l4527
	dec a
	jp nz,l4527
	nop
	nop
	jr l4544
.l452f
	ld a,(l436b)
	ld c,a
	ld a,(l437a)
	cp c
	jp z,l453f
	nop
	nop
	nop
	jr l4544
.l453f
	ld a,#fe
	ld (l4458),a
.l4544
	bit 1,b
	jp nz,l4627
	ld a,#04
.l454b
	dec a
	jr nz,l454b
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l4481),a
	bit 0,b
	jp z,l45d0
	bit 2,b
	call l4686
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l4579),a
	ld a,b
	exx
.l4579 equ $ + 1
	jr l457a
.l457a
	jp l4740
	nop
	jp l475f
	nop
	jp l477e
	nop
	jp l479d
	nop
	jp l47b7
	nop
	jp l47cd
	nop
	jp l47df
	nop
	jp l47ed
.l4599
	jp c,l459e
	jr l45a0
.l459e
	inc hl
	nop
.l45a0
	bit 5,a
	jp nz,l45ab
	ld b,#03
.l45a7
	djnz l45a7
	jr l45b7
.l45ab
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l45b7
	ld (l447f),hl
	exx
.l45bb
	bit 7,c
	jp nz,l45c7
	ld b,#02
.l45c2
	djnz l45c2
	nop
	nop
	ret
.l45c7
	ld a,(hl)
	inc hl
	ld (l4479),a
	ld lx,#00
	ret
.l45d0
	nop
	nop
	nop
	bit 2,b
	call l4686
	ld (l447f),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l45e7),a
	ld a,b
	exx
.l45e7 equ $ + 1
	jr l45e8
.l45e8
	jp l47f7
	nop
	jp l4816
	nop
	jp l4835
	nop
	jp l4854
	nop
	jp l486e
	nop
	jp l4884
	nop
	jp l4896
	nop
	jp l48a4
.l4607
	bit 5,a
	jp nz,l4612
	ld b,#03
.l460e
	djnz l460e
	jr l461e
.l4612
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l461e
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l45bb
.l4627
	bit 0,b
	jr z,l4632
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l4482
.l4632
	ld (iy+#07),#10
	bit 5,b
	jp nz,l4647
	ld lx,#09
	ld b,#15
.l4640
	djnz l4640
	nop
	nop
	nop
	jr l465a
.l4647
	ld lx,#08
	ld hx,e
	bit 2,b
	call l4686
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l465a
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l4481),a
	rr b
	rr b
	bit 2,b
	call l4686
	ld (l447f),hl
	exx
	bit 5,b
	jp z,l4680
	ld a,(hl)
	inc hl
	ld (l4479),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l4680
	ld b,#03
.l4682
	djnz l4682
	nop
	ret
.l4686
	jp z,l469d
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ld a,#0b
.l4696
	dec a
	jp nz,l4696
	nop
	nop
	ret
.l469d
	bit 4,b
	jr z,l46af
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
	jr l46b5
.l46af
	ld a,#04
.l46b1
	dec a
	jp nz,l46b1
.l46b5
	ld a,e
	bit 3,b
	jp nz,l46c5
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l46cf
.l46c5
	add (hl)
	inc hl
	cp #90
	jr nc,l46cd
	jr l46cf
.l46cd
	ld a,#8f
.l46cf
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l48ae
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l46de
	ld a,(hl)
	inc hl
	srl a
	jp c,l4721
	sub #20
	jp c,l4737
	jp z,l471d
	dec a
	ld e,a
	nop
	nop
	nop
	nop
	nop
.l46f4
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jp c,l4706
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l470e
.l4706
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l470e
	rla
	rla
	jp nc,l4717
	ld b,(hl)
	inc hl
	or a
	ret
.l4717
	nop
	nop
	nop
	nop
	nop
	ret
.l471d
	ld e,(hl)
	inc hl
	jr l46f4
.l4721
	ld d,#40
	sub #01
	ld e,a
	jp nc,l4731
	ld e,(hl)
	inc hl
	or a
	ld b,#08
.l472e
	djnz l472e
	ret
.l4731
	ld b,#09
.l4733
	djnz l4733
	nop
	ret
.l4737
	add #20
	ld b,#09
.l473b
	djnz l473b
	nop
	nop
	ret
.l4740
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jp l4599
.l475f
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	nop
	nop
	nop
	nop
	jp l4599
.l477e
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jp l4599
.l479d
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld b,#02
.l47af
	djnz l47af
	nop
	nop
	nop
	jp l4599
.l47b7
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld b,#03
.l47c5
	djnz l47c5
	nop
	nop
	nop
	jp l4599
.l47cd
	srl h
	rr l
	srl h
	rr l
	ld b,#04
.l47d7
	djnz l47d7
	nop
	nop
	nop
	jp l4599
.l47df
	srl h
	rr l
	ld b,#05
.l47e5
	djnz l47e5
	nop
	nop
	nop
	jp l4599
.l47ed
	ld b,#06
.l47ef
	djnz l47ef
	nop
	nop
	nop
	jp l4599
.l47f7
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	jp l4607
.l4816
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	nop
	nop
	nop
	nop
	jp l4607
.l4835
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jp l4607
.l4854
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	ld b,#02
.l4866
	djnz l4866
	nop
	nop
	nop
	jp l4607
.l486e
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	ld b,#03
.l487c
	djnz l487c
	nop
	nop
	nop
	jp l4607
.l4884
	sla l
	rl h
	sla l
	rl h
	ld b,#04
.l488e
	djnz l488e
	nop
	nop
	nop
	jp l4607
.l4896
	sla l
	rl h
	ld b,#05
.l489c
	djnz l489c
	nop
	nop
	nop
	jp l4607
.l48a4
	ld b,#06
.l48a6
	djnz l48a6
	nop
	nop
	nop
	jp l4607
.l48ae
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
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l49ce
;
	ld hl,#0009
	add hl,de
	ld de,l42d2
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4179),hl
	ld (l4212),hl
	ld (l42ab),hl
	add hl,bc
	ld de,l40c1
	ldi
	ld de,l4155
	ldi
	ld de,l41ee
	ldi
	ld de,l4287
	ldi
	ld de,l40ad
	ldi
	ldi
	ld (l402b),hl
	ld a,#01
	ld (l400f),a
	ld (l401d),a
	ld a,#ff
	ld (l4481),a
	ld hl,(l4179)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l4365),hl
	ld (l432a),hl
	ld (l42f2),hl
	ret
;
.stop_music
.l4a23
;
	ld hl,l447a
	ld bc,#0500
.l4a29
	ld (hl),c
	inc hl
	djnz l4a29
	ld a,#3f
	jp l4381
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l4c00
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#b9,#00,#1a,#4c,#23,#4c
	db #31,#4c,#4d,#4c,#5f,#4c,#71,#4c
	db #a2,#4c,#00,#00,#00,#00,#00,#00
	db #0d,#1c,#4c,#01,#00,#7a,#24,#09
	db #78,#06,#74,#04,#6c,#02,#0d,#1c
	db #4c,#01,#00,#7a,#21,#f4,#78,#f4
	db #74,#f4,#34,#30,#30,#2c,#28,#24
	db #20,#1c,#18,#14,#14,#10,#0c,#0c
	db #08,#04,#0d,#1c,#4c,#01,#00,#7e
	db #29,#0d,#7c,#09,#7c,#06,#76,#25
	db #04,#6e,#25,#02,#0d,#1c,#4c,#06
	db #00,#3c,#20,#30,#18,#24,#10,#18
	db #10,#18,#02,#20,#02,#20,#0d,#1c
	db #4c,#01,#fe,#3c,#7c,#f4,#3c,#38
	db #78,#f4,#38,#34,#34,#34,#30,#30
	db #30,#2c,#2c,#2c,#28,#28,#28,#24
	db #24,#24,#20,#20,#20,#1c,#1c,#1c
	db #1c,#18,#18,#18,#14,#14,#14,#14
	db #14,#14,#14,#14,#14,#14,#14,#0d
	db #1c,#4c,#01,#00,#76,#21,#f4,#78
	db #f4,#78,#f4,#34,#30,#2c,#24,#20
	db #18,#14,#0c,#08,#02,#20,#02,#20
	db #02,#20,#02,#20,#02,#20,#02,#20
	db #02,#20,#0d,#1c,#4c,#40,#00,#00
	db #00,#06,#4d,#00,#a6,#4e,#64,#4e
	db #07,#4d,#00,#a6,#4e,#64,#4e,#7e
	db #4d,#00,#a6,#4e,#64,#4e,#7e,#4d
	db #00,#c2,#4d,#64,#4e,#0c,#4d,#00
	db #c2,#4d,#64,#4e,#0c,#4d,#00,#a6
	db #4e,#07,#4d,#f6,#4d,#00,#34,#4e
	db #64,#4e,#0c,#4d,#00,#34,#4e,#64
	db #4e,#0c,#4d,#01,#cb,#4c,#00,#42
	db #80,#00,#00,#00,#8a,#e0,#00,#00
	db #01,#02,#8a,#60,#02,#4b,#8a,#60
	db #03,#02,#8a,#60,#02,#4b,#02,#4b
	db #4b,#4b,#8a,#60,#03,#02,#4b,#4b
	db #8a,#60,#01,#02,#90,#60,#02,#51
	db #8a,#60,#03,#02,#90,#60,#02,#51
	db #02,#51,#51,#51,#8a,#60,#03,#a8
	db #60,#02,#8a,#60,#03,#4b,#8a,#60
	db #01,#02,#86,#60,#02,#47,#8a,#60
	db #03,#02,#86,#60,#02,#47,#02,#47
	db #47,#47,#8a,#60,#03,#02,#4b,#4b
	db #8a,#60,#01,#02,#82,#60,#02,#43
	db #8a,#60,#03,#02,#82,#60,#02,#41
	db #02,#41,#41,#41,#8a,#60,#03,#98
	db #60,#02,#8a,#60,#03,#4b,#8a,#e0
	db #00,#00,#02,#02,#4b,#4b,#63,#02
	db #4b,#4b,#02,#4b,#4b,#4b,#63,#02
	db #4b,#4b,#51,#02,#51,#51,#69,#02
	db #51,#51,#02,#51,#51,#51,#65,#69
	db #51,#51,#47,#02,#47,#47,#5f,#02
	db #47,#47,#02,#47,#47,#47,#5f,#02
	db #47,#47,#43,#02,#43,#43,#5b,#02
	db #43,#41,#02,#41,#41,#41,#55,#59
	db #3d,#41,#ba,#e0,#00,#00,#04,#06
	db #8a,#60,#03,#02,#4b,#4b,#ba,#60
	db #04,#04,#81,#04,#85,#02,#89,#06
	db #8f,#04,#89,#04,#85,#04,#81,#04
	db #85,#06,#8a,#60,#03,#02,#4b,#4b
	db #c4,#60,#04,#04,#81,#04,#7f,#02
	db #7b,#0e,#7b,#06,#79,#00,#8a,#e0
	db #00,#00,#02,#02,#4b,#4b,#63,#02
	db #4b,#4b,#02,#4b,#4b,#4b,#63,#02
	db #4b,#4b,#51,#02,#51,#51,#69,#02
	db #51,#51,#02,#51,#51,#51,#65,#69
	db #51,#51,#47,#02,#47,#47,#5f,#02
	db #47,#47,#02,#47,#47,#47,#5f,#02
	db #47,#47,#43,#12,#a2,#60,#01,#02
	db #63,#02,#63,#63,#ba,#e0,#00,#00
	db #05,#06,#8a,#60,#03,#02,#4b,#4b
	db #ba,#60,#05,#04,#81,#04,#85,#02
	db #89,#06,#8f,#04,#89,#04,#85,#04
	db #81,#04,#85,#06,#8a,#60,#03,#02
	db #4b,#4b,#c4,#60,#05,#04,#81,#04
	db #7f,#02,#7b,#00,#d2,#e0,#00,#00
	db #06,#02,#93,#02,#8f,#93,#02,#93
	db #02,#93,#93,#02,#93,#8f,#93,#99
	db #99,#02,#99,#02,#99,#97,#02,#99
	db #02,#99,#99,#02,#99,#9d,#99,#8f
	db #97,#02,#97,#97,#02,#97,#02,#97
	db #02,#97,#97,#02,#99,#06,#93,#93
	db #02,#93,#93,#8f,#02,#93,#02,#93
	db #93,#02,#93,#02,#91,#00,#8a,#e0
	db #00,#00,#01,#4b,#02,#4b,#8a,#60
	db #03,#06,#8a,#60,#01,#02,#4b,#02
	db #8a,#60,#03,#02,#4b,#4b,#8a,#60
	db #01,#4b,#02,#4b,#8a,#60,#03,#06
	db #8a,#60,#01,#02,#4b,#02,#8a,#60
	db #03,#02,#4b,#4b,#8a,#60,#01,#4b
	db #02,#4b,#8a,#60,#03,#06,#8a,#60
	db #01,#02,#4b,#02,#8a,#60,#03,#02
	db #4b,#4b,#8a,#60,#01,#4b,#02,#4b
	db #8a,#60,#03,#06,#8a,#60,#01,#02
	db #4b,#02,#8a,#60,#03,#02,#4b,#4b
	db #00,#00
;
.init_music
;
	; org #2047
	ld de,l4c00
	jp real_init_music
;
.music_info
	db "HDM Clone (2015)(C64CD)(TMR)",0
	db "StArkOs",0

	read "music_end.asm"
