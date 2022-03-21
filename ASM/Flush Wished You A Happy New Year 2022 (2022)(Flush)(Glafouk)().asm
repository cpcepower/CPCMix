; Music of Flush Wished You A Happy New Year 2022 (2022)(Flush)(Glafouk)()
; Ripped by Megachur the 19/03/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FLWYAHNY.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #4000

	read "music_header.asm"

	jp l4006	; init
	jp l4038	; play
;
.real_init_music
.l4006
;
	inc hl
	ld a,(hl)
	inc hl
	ld de,#0004
.l400c
	add hl,de
	sub #03
	jr z,l4013
	jr nc,l400c
.l4013
	ld (l4045),hl
	ld a,#b7
	ld (l40d2),a
	ld (l40fb),a
	ld (l410c),a
	ld hl,#0001
	ld (l403d),hl
	ret
.l4028
	ld (l403d),hl
	ld b,#0c
.l402d
	djnz l402d
	jr l4031
.l4031
	jr l406c
.l4033
	jr l4035
.l4035
	nop
	jr l404f
;
.play_music
.l4038
;
	ld (l4184),sp
.l403d equ $ + 1
	ld hl,#0001
	dec hl
	ld a,l
	or h
	jr nz,l4028
.l4045 equ $ + 1
	ld sp,l4553
	pop hl
	ld a,l
	or h
	jr nz,l4033
	pop hl
	ld sp,hl
	pop hl
.l404f
	ld (l403d),hl
	pop hl
	ld (l4077),hl
	pop hl
	ld (l4091),hl
	pop hl
	ld (l40ab),hl
	ld (l4045),sp
	ld a,#01
	ld (l4087),a
	ld (l40a1),a
	jr l4071
.l406d equ $ + 1
.l406c
	ld a,#01
	dec a
	jr nz,l40d6
.l4071
	ld a,#b7
	ld (l40d2),a
.l4077 equ $ + 1
	ld sp,#0000
	dec sp
	pop af
	pop hl
	ld (l4077),sp
	ld (l40d0),hl
.l4083
	ld (l406d),a
.l4087 equ $ + 1
	ld a,#01
	dec a
	jr nz,l40de
	ld a,#b7
	ld (l40fb),a
.l4091 equ $ + 1
	ld sp,#0000
	dec sp
	pop af
	pop hl
	ld (l4091),sp
	ld (l40f9),hl
.l409d
	ld (l4087),a
.l40a1 equ $ + 1
	ld a,#01
	dec a
	jr nz,l40e6
	ld a,#b7
	ld (l410c),a
.l40ab equ $ + 1
	ld sp,#0000
	dec sp
	pop af
	pop hl
	ld (l40ab),sp
	ld (l410a),hl
.l40b7
	ld (l40a1),a
	ld hl,#0008
	ld de,#f4f6
	ld bc,#f690
	ld a,#c0
	out (c),a
	ex af,af'
	exx
	ld bc,#e0ff
	ld sp,l4547
.l40d0 equ $ + 1
	ld hl,#0000
.l40d2
	or a
	jp l4187
.l40d6
	ld b,#05
.l40d8
	djnz l40d8
	jr l40dc
.l40dc
	jr l4083
.l40de
	ld b,#05
.l40e0
	djnz l40e0
	jr l40e4
.l40e4
	jr l409d
.l40e6
	ld b,#05
.l40e8
	djnz l40e8
	jr l40ec
.l40ec
	jr l40b7
	ld a,#37
	ld (l40d2),a
	ld (l40d0),hl
	srl b
.l40f9 equ $ + 1
	ld hl,#0000
.l40fb
	or a
	jp l4187
	ld a,#37
	ld (l40fb),a
	ld (l40f9),hl
	rr b
.l410a equ $ + 1
	ld hl,#0000
.l410c
	or a
	jp l4187
	ld a,#37
	ld (l410c),a
	ld (l410a),hl
	ld a,b
	exx
	inc h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	dec h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld hl,l4543
	dec b
	outi
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	ld a,#0b
	ld b,d
	out (c),a
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc a
	ld b,d
	out (c),a
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	ld a,(hl)
.l4164 equ $ + 1
	cp #ff
	jr nz,l416e
	ld b,#07
.l4169
	djnz l4169
	nop
	jr l4183
.l416e
	ld (l4164),a
	ld b,d
	ld l,#0d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
.l4184 equ $ + 1
.l4183
	ld sp,#0000
	ret
.l4187
	ld a,(hl)
	inc hl
	jp c,l42ed
	ld d,#08
.l418e
	dec d
	jr nz,l418e
	cp (hl)
	ld d,a
	and #03
	add a
	add a
	ld e,a
	ld a,d
	rra
	rra
	ld d,#00
	ld ix,l41a5
	add ix,de
	jp (ix)
.l41a5
	jp l41b4
	nop
	jp l422c
	nop
	jp l41e4
	nop
	jp l4281
.l41b4
	ld d,#20
.l41b6
	dec d
	jr nz,l41b6
	cp (hl)
	nop
	rra
	jr c,l41c5
	jr l41c0
.l41c0
	jr l41c2
.l41c2
	cp (hl)
	jr l41cc
.l41c5
	ld de,l4543
	ldi
	res 5,b
.l41cc
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	inc h
	inc h
	exx
	set 2,b
	ret
.l41e4
	ld d,#19
.l41e6
	dec d
	jr nz,l41e6
	cp (hl)
	rra
	jr c,l41f2
	jr l41ef
.l41ef
	nop
	jr l41f7
.l41f2
	set 7,a
	ld (l4164),a
.l41f7
	rra
	jr c,l4201
	jr l41fc
.l41fc
	jr l41fe
.l41fe
	cp (hl)
	jr l4208
.l4201
	ld de,l4543
	ldi
	res 5,b
.l4208
	and #0f
	ld (l4546),a
	ld de,l4544
	ldi
	ldi
	set 2,b
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	inc h
	inc h
	exx
	ret
.l422c
	ld d,#11
.l422e
	dec d
	jr nz,l422e
	nop
	rra
	jr c,l423c
	jr l4237
.l4237
	jr l4239
.l4239
	cp (hl)
	jr l4243
.l423c
	ld de,l4543
	ldi
	res 5,b
.l4243
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	ret
.l4281
	ld d,#0a
.l4283
	dec d
	jr nz,l4283
	cp (hl)
	rra
	jr c,l428f
	jr l428c
.l428c
	nop
	jr l4294
.l428f
	set 7,a
	ld (l4164),a
.l4294
	rra
	jr c,l429e
	jr l4299
.l4299
	jr l429b
.l429b
	cp (hl)
	jr l42a5
.l429e
	ld de,l4543
	ldi
	res 5,b
.l42a5
	and #0f
	ld (l4546),a
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	ld de,l4544
	ldi
	ldi
	ret
.l42ed
	ld d,a
	and #0f
	add a
	add a
	ld e,a
	ld a,d
	rra
	rra
	ld d,#00
	ld ix,l4300
	add ix,de
	jp (ix)
.l4300
	jp l4367
	nop
	jp l43af
	nop
	jp l4430
	nop
	jp l4485
	nop
	jp l4367
	nop
	jp l43af
	nop
	jp l4430
	nop
	jp l4485
	nop
	jp l433f
	nop
	jp l43af
	nop
	jp l4430
	nop
	jp l4485
	nop
	jp l4367
	nop
	jp l43af
	nop
	jp l4430
	nop
	jp l4485
.l433f
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld d,a
	and #03
	add a
	add a
	ld e,a
	ld a,d
	rra
	rra
	ld d,#00
	ld ix,l4358
	add ix,de
	jp (ix)
.l4358
	jp l436d
	nop
	jp l43b5
	nop
	jp l4436
	nop
	jp l448b
.l4367
	ld d,#08
.l4369
	dec d
	jr nz,l4369
	cp (hl)
.l436d
	ld e,a
	ld d,#1e
.l4370
	dec d
	jr nz,l4370
	nop
	set 2,b
	rra
	jr c,l4382
	ld d,#06
.l437b
	dec d
	jr nz,l437b
	cp (hl)
	nop
	jr l4396
.l4382
	and #0f
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	exx
.l4396
	exx
	inc l
	inc h
	inc h
	exx
	bit 5,e
	jr nz,l43a7
	jr l43a1
.l43a1
	jr l43a3
.l43a3
	jr l43a5
.l43a5
	cp (hl)
	ret
.l43a7
	ld a,(hl)
	ld (l4543),a
	inc hl
	res 5,b
	ret
.l43af
	ld d,#08
.l43b1
	dec d
	jr nz,l43b1
	cp (hl)
.l43b5
	ld d,#0d
.l43b7
	dec d
	jr nz,l43b7
	ld e,a
	and #0f
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	bit 4,e
	jr nz,l43dc
	ld d,#07
.l43d6
	dec d
	jr nz,l43d6
	nop
	jr l43f0
.l43dc
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	exx
.l43f0
	bit 5,e
	jr nz,l43fe
	exx
	inc h
	inc h
	exx
	ld d,#0c
.l43fa
	dec d
	jr nz,l43fa
	ret
.l43fe
	ld a,(hl)
	inc hl
	exx
	inc h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	rla
	jr c,l441e
	ld d,#03
.l4419
	dec d
	jr nz,l4419
	cp (hl)
	ret
.l441e
	res 5,b
	rla
	jr c,l442a
	jr l4425
.l4425
	jr l4427
.l4427
	jr l4429
.l4429
	ret
.l442a
	ld de,l4543
	ldi
	ret
.l4430
	ld d,#08
.l4432
	dec d
	jr nz,l4432
	cp (hl)
.l4436
	ld d,#13
.l4438
	dec d
	jr nz,l4438
	cp (hl)
	nop
	rla
	ld e,a
	and #0e
	ld (l4546),a
	set 2,b
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	inc h
	inc h
	exx
	ld a,e
	rla
	rla
	jr c,l4466
	jr l4462
.l4462
	jr l4464
.l4464
	jr l446b
.l4466
	ld de,l4544
	ldi
.l446b
	rla
	jr c,l4474
	jr l4470
.l4470
	jr l4472
.l4472
	jr l4479
.l4474
	ld de,l4545
	ldi
.l4479
	rla
	jp c,l451c
	ld d,#06
.l447f
	dec d
	jr nz,l447f
	cp (hl)
	nop
	ret
.l4485
	ld d,#08
.l4487
	dec d
	jr nz,l4487
	cp (hl)
.l448b
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	rra
	jr c,l44a7
	jr l44a3
.l44a3
	jr l44a5
.l44a5
	jr l44ac
.l44a7
	ld de,l4544
	ldi
.l44ac
	rra
	jr c,l44b5
	jr l44b1
.l44b1
	jr l44b3
.l44b3
	jr l44ba
.l44b5
	ld de,l4545
	ldi
.l44ba
	rra
	jr c,l44c6
	ld d,#07
.l44bf
	dec d
	jr nz,l44bf
	cp (hl)
	nop
	jr l44dc
.l44c6
	ld e,a
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	exx
	ld a,e
.l44dc
	rra
	jr c,l44e7
	ld d,#08
.l44e1
	dec d
	jr nz,l44e1
	nop
	jr l44ff
.l44e7
	ld e,a
	ld a,(hl)
	inc hl
	exx
	inc h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	dec h
	exx
	ld a,e
.l44ff
	exx
	inc h
	inc h
	exx
	rra
	jr c,l450c
	jr l4508
.l4508
	jr l450a
.l450a
	jr l4511
.l450c
	ld de,l4546
	ldi
.l4511
	rra
	jr c,l451c
	ld d,#06
.l4516
	dec d
	jr nz,l4516
	cp (hl)
	cp (hl)
	ret
.l451c
	ld a,(hl)
	inc hl
	rra
	jr c,l4526
	jr l4523
.l4523
	nop
	jr l452b
.l4526
	set 7,a
	ld (l4164),a
.l452b
	rra
	jr c,l4536
	jr l4530
.l4530
	jr l4532
.l4532
	jr l4534
.l4534
	cp (hl)
	ret
.l4536
	res 5,b
	rra
	jr c,l453f
	jr l453d
.l453d
	cp (hl)
	ret
.l453f
	ld (l4543),a
	ret
.l4547 equ $ + 4
.l4546 equ $ + 3
.l4545 equ $ + 2
.l4544 equ $ + 1
.l4543
	db #00,#00,#00,#00,#ee,#40,#ff,#40
.l454d equ $+2
	db #10,#41,#80,#03,#40,#42,#0f,#00
.l4553
	db #c0,#00,#03,#48,#4b,#48,#00,#48
	db #c0,#00,#d5,#48,#1d,#49,#00,#48
	db #c0,#00,#03,#48,#4b,#48,#00,#48
	db #c0,#00,#61,#47,#a9,#47,#00,#48
	db #c0,#00,#03,#48,#4b,#48,#ab,#48
	db #c0,#00,#d5,#48,#1d,#49,#7d,#49
	db #c0,#00,#03,#48,#4b,#48,#ab,#48
	db #c0,#00,#61,#47,#b7,#45,#17,#46
	db #c0,#00,#03,#48,#4b,#48,#a1,#46
	db #c0,#00,#d5,#48,#1d,#49,#41,#46
	db #c0,#00,#03,#48,#4b,#48,#a1,#46
	db #c0,#00,#03,#48,#a9,#47,#01,#47
	db #00,#00,#53,#45,#06,#ab,#4a,#06
	db #ab,#4a,#06,#e7,#49,#06,#c1,#4a
	db #06,#c7,#4a,#06,#da,#4a,#06,#e7
	db #49,#06,#7f,#4a,#06,#ab,#4a,#06
	db #c1,#4a,#06,#e7,#49,#06,#e6,#4a
	db #06,#c7,#4a,#06,#c1,#4a,#06,#e7
	db #49,#06,#e7,#49,#06,#ab,#4a,#06
	db #ab,#4a,#06,#e7,#49,#06,#ec,#4a
	db #06,#c7,#4a,#06,#da,#4a,#06,#e7
	db #49,#06,#7f,#4a,#06,#ab,#4a,#06
	db #ab,#4a,#06,#ab,#4a,#06,#ab,#4a
	db #06,#c7,#4a,#06,#e7,#49,#06,#c7
	db #4a,#06,#c7,#4a,#12,#ac,#49,#12
	db #bd,#49,#0c,#10,#4a,#0c,#02,#4a
	db #0c,#10,#4a,#0c,#bd,#49,#0c,#ac
	db #49,#12,#cb,#49,#12,#d9,#49,#0c
	db #24,#4a,#0c,#32,#4a,#0c,#40,#4a
	db #0c,#24,#4a,#0c,#40,#4a,#06,#f4
	db #49,#06,#f8,#4a,#06,#fe,#4a,#06
	db #02,#4a,#06,#04,#4b,#06,#fe,#4a
	db #06,#cb,#49,#06,#f8,#4a,#06,#10
	db #4a,#06,#0a,#4b,#06,#10,#4a,#06
	db #10,#4b,#06,#10,#4a,#06,#16,#4b
	db #06,#10,#4a,#06,#fe,#4a,#06,#02
	db #4a,#06,#16,#4b,#06,#f8,#4a,#06
	db #02,#4a,#06,#10,#4b,#06,#16,#4b
	db #06,#10,#4a,#06,#fe,#4a,#06,#02
	db #4a,#06,#f8,#4a,#06,#10,#4a,#06
	db #0a,#4b,#06,#bd,#49,#06,#10,#4b
	db #06,#10,#4a,#06,#16,#4b,#06,#f4
	db #49,#06,#f8,#4a,#06,#fe,#4a,#06
	db #02,#4a,#06,#10,#4b,#06,#16,#4b
	db #06,#cb,#49,#06,#f8,#4a,#06,#10
	db #4a,#06,#0a,#4b,#06,#10,#4a,#06
	db #10,#4b,#06,#10,#4a,#06,#16,#4b
	db #06,#10,#4a,#06,#f8,#4a,#06,#bd
	db #49,#06,#10,#4b,#06,#16,#4b,#06
	db #bd,#49,#06,#fe,#4a,#06,#f8,#4a
	db #06,#bd,#49,#06,#0a,#4b,#06,#8f
	db #4a,#06,#10,#4b,#06,#9d,#4a,#06
	db #16,#4b,#06,#9d,#4a,#06,#f8,#4a
	db #06,#8f,#4a,#06,#fe,#4a,#06,#ac
	db #49,#06,#04,#4b,#06,#fe,#4a,#06
	db #bd,#49,#06,#04,#4b,#06,#28,#4b
	db #06,#10,#4a,#06,#04,#4b,#06,#02
	db #4a,#06,#f8,#4a,#06,#10,#4a,#06
	db #fe,#4a,#06,#bd,#49,#06,#04,#4b
	db #06,#ac,#49,#06,#10,#4b,#06,#cb
	db #49,#06,#16,#4b,#06,#f8,#4a,#06
	db #d9,#49,#06,#04,#4b,#06,#28,#4b
	db #06,#24,#4a,#06,#04,#4b,#06,#32
	db #4a,#06,#f8,#4a,#06,#40,#4a,#06
	db #fe,#4a,#06,#24,#4a,#06,#10,#4b
	db #06,#40,#4a,#06,#16,#4b,#0c,#4e
	db #4a,#06,#4e,#4a,#06,#2e,#4b,#0c
	db #5b,#4a,#0c,#4e,#4a,#06,#67,#4a
	db #0c,#61,#4a,#06,#67,#4a,#06,#73
	db #4a,#06,#40,#4b,#0c,#67,#4a,#0c
	db #6d,#4a,#06,#6d,#4a,#06,#5b,#4a
	db #0c,#73,#4a,#06,#6d,#4a,#06,#2e
	db #4b,#06,#46,#4b,#06,#61,#4a,#06
	db #4c,#4b,#06,#4e,#4a,#06,#5b,#4a
	db #06,#2e,#4b,#0c,#79,#4a,#06,#ab
	db #4a,#06,#ab,#4a,#06,#e7,#49,#06
	db #c1,#4a,#06,#c7,#4a,#06,#da,#4a
	db #06,#e7,#49,#06,#7f,#4a,#06,#ab
	db #4a,#06,#c1,#4a,#06,#e7,#49,#06
	db #e6,#4a,#06,#c7,#4a,#06,#c1,#4a
	db #06,#e7,#49,#12,#e7,#49,#06,#e7
	db #49,#0c,#7f,#4a,#06,#da,#4a,#06
	db #e7,#49,#06,#c1,#4a,#06,#ab,#4a
	db #06,#ab,#4a,#06,#ab,#4a,#06,#ab
	db #4a,#06,#c7,#4a,#06,#e7,#49,#06
	db #c7,#4a,#06,#c7,#4a,#c0,#a7,#49
	db #0c,#4e,#4a,#06,#4e,#4a,#06,#2e
	db #4b,#0c,#5b,#4a,#0c,#4e,#4a,#06
	db #67,#4a,#0c,#61,#4a,#06,#67,#4a
	db #06,#73,#4a,#06,#40,#4b,#0c,#67
	db #4a,#0c,#79,#4a,#06,#79,#4a,#06
	db #5b,#4a,#0c,#73,#4a,#06,#79,#4a
	db #06,#2e,#4b,#06,#89,#4a,#06,#61
	db #4a,#06,#4c,#4b,#06,#89,#4a,#06
	db #5b,#4a,#06,#73,#4a,#0c,#89,#4a
	db #06,#ab,#4a,#06,#ab,#4a,#06,#e7
	db #49,#06,#c1,#4a,#06,#c7,#4a,#06
	db #da,#4a,#06,#e7,#49,#06,#7f,#4a
	db #06,#ab,#4a,#06,#da,#4a,#06,#e7
	db #49,#06,#7f,#4a,#06,#c7,#4a,#06
	db #58,#4b,#06,#e7,#49,#06,#e7,#49
	db #06,#ab,#4a,#06,#ab,#4a,#06,#e7
	db #49,#06,#c1,#4a,#06,#c7,#4a,#06
	db #da,#4a,#06,#e7,#49,#06,#c1,#4a
	db #06,#ab,#4a,#06,#e7,#49,#06,#e7
	db #49,#06,#e7,#49,#06,#c7,#4a,#06
	db #e7,#49,#06,#c7,#4a,#06,#c7,#4a
	db #12,#f4,#49,#12,#02,#4a,#0c,#cb
	db #49,#0c,#10,#4a,#0c,#10,#4a,#0c
	db #10,#4a,#0c,#10,#4a,#12,#bd,#49
	db #12,#bd,#49,#0c,#bd,#49,#0c,#8f
	db #4a,#0c,#9d,#4a,#0c,#9d,#4a,#0c
	db #8f,#4a,#0c,#4e,#4a,#06,#4e,#4a
	db #06,#2e,#4b,#0c,#5b,#4a,#0c,#4e
	db #4a,#06,#67,#4a,#0c,#61,#4a,#06
	db #67,#4a,#06,#73,#4a,#06,#40,#4b
	db #0c,#67,#4a,#0c,#79,#4a,#06,#79
	db #4a,#06,#5b,#4a,#0c,#73,#4a,#06
	db #79,#4a,#06,#2e,#4b,#06,#4e,#4a
	db #06,#61,#4a,#06,#4c,#4b,#06,#4e
	db #4a,#06,#5b,#4a,#06,#2e,#4b,#0c
	db #6d,#4a,#06,#ab,#4a,#06,#ab,#4a
	db #06,#e7,#49,#06,#c1,#4a,#06,#c7
	db #4a,#06,#da,#4a,#06,#e7,#49,#06
	db #7f,#4a,#06,#ab,#4a,#06,#c1,#4a
	db #06,#e7,#49,#06,#e6,#4a,#06,#c7
	db #4a,#06,#c1,#4a,#06,#e7,#49,#06
	db #e7,#49,#06,#ab,#4a,#06,#ab,#4a
	db #06,#e7,#49,#06,#7f,#4a,#06,#c7
	db #4a,#06,#da,#4a,#06,#e7,#49,#06
	db #c1,#4a,#06,#ab,#4a,#06,#ab,#4a
	db #06,#ab,#4a,#06,#ab,#4a,#06,#c7
	db #4a,#06,#e7,#49,#06,#c7,#4a,#06
	db #c7,#4a,#12,#f4,#49,#12,#02,#4a
	db #0c,#cb,#49,#0c,#10,#4a,#0c,#10
	db #4a,#0c,#10,#4a,#0c,#10,#4a,#12
	db #02,#4a,#12,#02,#4a,#0c,#10,#4a
	db #0c,#02,#4a,#0c,#10,#4a,#0c,#bd
	db #49,#0c,#10,#4a,#00,#04,#08,#a8
	db #49,#79,#c3,#00,#3d,#75,#b3,#35
	db #2d,#2d,#65,#b2,#25,#15,#15,#08
	db #a8,#49,#79,#af,#00,#3d,#75,#9f
	db #35,#2d,#2d,#65,#9e,#08,#b7,#49
	db #79,#7a,#00,#3d,#75,#6a,#35,#2d
	db #2d,#65,#69,#08,#b7,#49,#79,#69
	db #00,#3d,#75,#59,#35,#2d,#2d,#65
	db #58,#08,#b7,#49,#7c,#01,#ec,#01
	db #dc,#01,#c4,#01,#ac,#01,#08,#a8
	db #49,#79,#8f,#00,#3d,#75,#7f,#35
	db #2d,#2d,#65,#7e,#08,#b7,#49,#79
	db #87,#00,#3d,#75,#77,#35,#2d,#2d
	db #65,#76,#08,#b7,#49,#79,#9e,#00
	db #3d,#75,#8e,#35,#2d,#2d,#65,#8d
	db #08,#b7,#49,#79,#87,#00,#08,#05
	db #4a,#79,#60,#00,#3d,#75,#50,#35
	db #2d,#2d,#65,#4f,#08,#b7,#49,#79
	db #4c,#00,#3d,#75,#3c,#35,#2d,#2d
	db #65,#3b,#08,#b7,#49,#79,#57,#00
	db #3d,#75,#47,#35,#2d,#2d,#65,#46
	db #08,#b7,#49,#82,#35,#00,#12,#12
	db #12,#12,#12,#12,#12,#08,#a8,#49
	db #82,#0f,#00,#08,#51,#4a,#82,#1b
	db #00,#08,#51,#4a,#82,#47,#00,#08
	db #51,#4a,#82,#2d,#00,#08,#51,#4a
	db #82,#12,#00,#08,#51,#4a,#82,#3c
	db #00,#08,#51,#4a,#69,#3f,#01,#31
	db #2d,#29,#25,#08,#85,#4a,#82,#50
	db #00,#08,#51,#4a,#79,#e5,#00,#3d
	db #75,#d5,#35,#2d,#2d,#65,#d4,#08
	db #b7,#49,#79,#ff,#00,#3d,#75,#ef
	db #35,#2d,#2d,#65,#ee,#08,#b7,#49
	db #7d,#01,#70,#04,#fd,#86,#03,#fd
	db #70,#04,#f9,#98,#05,#f9,#0c,#07
	db #35,#7c,#01,#08,#e9,#49,#69,#aa
	db #01,#08,#82,#4a,#7d,#01,#de,#01
	db #7d,#7b,#7d,#de,#f9,#5a,#02,#f1
	db #de,#c1,#07,#e9,#1c,#c1,#06,#69
	db #66,#01,#08,#82,#4a,#69,#3f,#01
	db #08,#82,#4a,#69,#de,#01,#08,#82
	db #4a,#69,#1c,#01,#08,#82,#4a,#79
	db #8f,#00,#08,#f7,#49,#69,#47,#00
	db #08,#82,#4a,#69,#3c,#00,#08,#82
	db #4a,#69,#35,#00,#08,#82,#4a,#69
	db #6a,#00,#08,#82,#4a,#69,#59,#00
	db #08,#82,#4a,#69,#50,#00,#08,#82
	db #4a,#79,#e5,#00,#08,#92,#4a,#79
	db #ff,#00,#08,#a0,#4a,#69,#2d,#00
	db #08,#82,#4a,#82,#14,#00,#08,#51
	db #4a,#82,#47,#00,#08,#51,#4a,#82
	db #12,#00,#08,#51,#4a,#82,#1e,#00
	db #08,#51,#4a,#82,#28,#00,#08,#51
	db #4a,#82,#16,#00,#08,#51,#4a,#82
	db #50,#00,#08,#51,#4a,#69,#ef,#00
	db #08,#82,#4a,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
;
; #84ae
;	ld hl,#454d	; data in bank #c4
;	xor a
;	call #4006	; init
;
; #0872
;	ld bc,#7fc4
;	out (c),c
;	call #4038	; play
;	ld bc,#7fc7
;	out (c),c
;
.init_music		; added by Megachur
;
	ld hl,l454d
	xor a
	jp real_init_music
;
.music_info
	db "Flush Wished You A Happy New Year 2022 (2022)(Flush)(Glafouk)",0
	db "",0

	read "music_end.asm"
