; Music of 30 Years Amstrad Megademo - Turn Disk (2016)(Benediction)(Factor6)(StArkos)
; Ripped by Megachur the 22/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "30YEAMTD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

.l4000
	di
	ld sp,l4000
	ld hl,#c9fb
	ld (#0038),hl
	ei
	nop
	nop
	nop
	nop
	nop
	jp #4bc1
.l4013
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#c9,#00,#31,#40,#3a,#40
	db #43,#40,#54,#40,#72,#40,#7f,#40
	db #8e,#40,#9d,#40,#b3,#40,#00,#00
	db #00,#00,#00,#00,#0d,#33,#40,#01
	db #00,#36,#03,#05,#3a,#0d,#3e,#40
	db #01,#00,#3e,#04,#bc,#50,#00,#bc
	db #50,#01,#3e,#04,#3e,#04,#0d,#33
	db #40,#02,#00,#38,#34,#30,#30,#30
	db #30,#b0,#01,#00,#b0,#02,#00,#b0
	db #01,#00,#30,#b0,#ff,#ff,#b0,#fe
	db #ff,#b0,#ff,#ff,#0d,#5b,#40,#04
	db #00,#38,#28,#20,#18,#10,#08,#04
	db #00,#0d,#33,#40,#01,#00,#72,#22
	db #0a,#2c,#6c,#02,#6c,#05,#6c,#09
	db #0d,#84,#40,#01,#00,#72,#22,#0a
	db #2c,#6c,#04,#6c,#07,#6c,#0b,#0d
	db #93,#40,#01,#00,#3e,#04,#bc,#50
	db #00,#bc,#50,#01,#a4,#00,#02,#98
	db #00,#04,#90,#00,#06,#0d,#33,#40
	db #01,#00,#3e,#04,#bc,#50,#00,#bc
	db #50,#01,#3e,#04,#3e,#04,#b4,#50
	db #00,#b4,#50,#01,#36,#04,#36,#04
	db #ac,#50,#00,#ac,#50,#01,#2e,#04
	db #2e,#04,#a0,#50,#00,#a0,#50,#01
	db #22,#04,#22,#04,#90,#50,#00,#90
	db #50,#01,#0d,#33,#40,#40,#00,#00
	db #00,#24,#41,#00,#8f,#42,#5f,#42
	db #32,#42,#10,#8f,#42,#64,#41,#32
	db #42,#40,#00,#c7,#41,#64,#41,#32
	db #42,#00,#97,#42,#08,#43,#6d,#43
	db #00,#a4,#43,#64,#41,#fa,#43,#00
	db #a4,#43,#64,#41,#fa,#43,#10,#81
	db #44,#a6,#44,#c1,#44,#10,#01,#f5
	db #40,#25,#1d,#25,#1d,#25,#1d,#25
	db #1d,#25,#1d,#25,#1d,#25,#1d,#25
	db #1d,#25,#1d,#25,#1d,#25,#1d,#25
	db #1d,#25,#1d,#25,#1d,#25,#1d,#25
	db #1d,#25,#1d,#25,#1d,#25,#1d,#25
	db #1d,#25,#1d,#25,#1d,#25,#1d,#25
	db #1d,#25,#1d,#25,#1d,#25,#1d,#25
	db #1d,#25,#1d,#25,#1d,#25,#1d,#25
	db #1d,#8e,#e0,#00,#00,#01,#06,#a2
	db #60,#02,#84,#60,#01,#02,#47,#04
	db #55,#02,#a2,#60,#02,#9c,#e0,#f4
	db #ff,#01,#42,#80,#00,#00,#5d,#59
	db #06,#a2,#60,#02,#94,#60,#01,#02
	db #53,#02,#45,#4b,#02,#a2,#60,#02
	db #94,#60,#01,#53,#02,#4f,#06,#a2
	db #60,#02,#84,#60,#01,#02,#47,#04
	db #55,#02,#a2,#60,#02,#9c,#e0,#f4
	db #ff,#01,#42,#80,#00,#00,#5d,#59
	db #06,#a2,#60,#02,#9a,#60,#01,#02
	db #5d,#02,#45,#4b,#02,#a2,#60,#02
	db #92,#60,#01,#00,#ac,#e1,#00,#00
	db #03,#06,#aa,#60,#04,#a2,#4b,#ac
	db #41,#a6,#60,#03,#0c,#ac,#60,#04
	db #a6,#4b,#aa,#e1,#fa,#ff,#03,#42
	db #80,#00,#00,#02,#aa,#60,#04,#a6
	db #4b,#a6,#41,#a2,#4b,#aa,#61,#03
	db #08,#ac,#c0,#f6,#ff,#42,#80,#00
	db #00,#ac,#60,#04,#aa,#40,#ac,#60
	db #03,#06,#aa,#60,#04,#a2,#4b,#ac
	db #41,#a6,#60,#03,#0c,#ac,#60,#04
	db #a6,#4b,#bc,#e1,#fc,#ff,#03,#42
	db #80,#00,#00,#02,#c8,#60,#04,#be
	db #4b,#ca,#41,#c0,#4b,#cc,#61,#03
	db #08,#aa,#60,#04,#6d,#6b,#63,#ba
	db #e1,#00,#00,#05,#0c,#42,#05,#b6
	db #61,#06,#0c,#42,#05,#ac,#61,#05
	db #0c,#42,#05,#b0,#41,#0c,#42,#05
	db #ba,#41,#0c,#42,#05,#b6,#61,#06
	db #0c,#42,#05,#ac,#61,#05,#0c,#42
	db #05,#b0,#41,#00,#a2,#e0,#00,#00
	db #07,#0a,#63,#02,#63,#06,#a2,#60
	db #08,#06,#a2,#60,#07,#0a,#63,#02
	db #63,#06,#63,#02,#63,#63,#63,#0a
	db #63,#02,#63,#06,#a2,#60,#08,#06
	db #a2,#60,#07,#0a,#63,#02,#63,#06
	db #63,#02,#63,#63,#42,#60,#00,#42
	db #80,#00,#00,#00,#ac,#e1,#00,#00
	db #03,#06,#aa,#60,#04,#a2,#4b,#ac
	db #41,#a6,#60,#03,#0c,#ac,#60,#04
	db #a6,#4b,#aa,#e1,#fa,#ff,#03,#42
	db #80,#00,#00,#02,#aa,#60,#04,#a6
	db #4b,#a6,#41,#a2,#4b,#aa,#61,#03
	db #08,#ac,#c0,#f6,#ff,#42,#80,#00
	db #00,#ac,#60,#04,#aa,#40,#ac,#60
	db #03,#06,#aa,#60,#04,#a2,#4b,#ac
	db #41,#a6,#60,#03,#0c,#ac,#60,#04
	db #a6,#4b,#bc,#e1,#fc,#ff,#03,#42
	db #80,#00,#00,#02,#c8,#60,#04,#be
	db #4b,#ca,#41,#c0,#4b,#42,#60,#00
	db #a2,#65,#02,#a2,#40,#a2,#40,#a2
	db #40,#42,#60,#00,#00,#8e,#e0,#00
	db #00,#01,#06,#a2,#60,#02,#84,#60
	db #01,#02,#47,#04,#55,#02,#a2,#60
	db #02,#9c,#e0,#f4,#ff,#01,#42,#80
	db #00,#00,#5d,#59,#06,#a2,#60,#02
	db #94,#60,#01,#02,#53,#02,#45,#4b
	db #02,#a2,#60,#02,#94,#60,#01,#53
	db #02,#4f,#06,#a2,#60,#02,#84,#60
	db #01,#02,#47,#04,#55,#02,#a2,#60
	db #02,#9c,#e0,#f4,#ff,#01,#42,#80
	db #00,#00,#5d,#59,#06,#a2,#60,#02
	db #9a,#60,#01,#02,#42,#60,#00,#9c
	db #60,#01,#5d,#5d,#5d,#02,#42,#60
	db #00,#00,#ba,#e1,#00,#00,#05,#0c
	db #42,#05,#b6,#61,#06,#0c,#42,#05
	db #ac,#61,#05,#0c,#42,#05,#b0,#41
	db #0c,#42,#05,#ba,#41,#0c,#42,#05
	db #b6,#61,#06,#0c,#42,#05,#ac,#61
	db #05,#0c,#42,#05,#b0,#41,#71,#71
	db #71,#42,#03,#42,#07,#42,#0f,#42
	db #17,#a6,#e1,#00,#00,#04,#75,#7f
	db #02,#7f,#02,#67,#85,#02,#83,#7f
	db #02,#b8,#e0,#fc,#ff,#03,#42,#80
	db #00,#00,#be,#60,#04,#02,#89,#02
	db #85,#89,#02,#8b,#02,#8d,#02,#8d
	db #85,#7f,#83,#85,#83,#7b,#67,#75
	db #7f,#02,#7f,#02,#67,#85,#02,#83
	db #7f,#02,#b8,#e0,#fc,#ff,#03,#42
	db #80,#00,#00,#be,#60,#04,#02,#89
	db #02,#85,#89,#02,#8b,#02,#8d,#02
	db #8d,#85,#7f,#83,#85,#83,#7b,#ba
	db #e1,#00,#00,#05,#42,#05,#42,#09
	db #42,#0d,#ba,#41,#42,#05,#42,#09
	db #42,#0d,#b6,#61,#06,#42,#05,#42
	db #09,#42,#0d,#b6,#41,#42,#05,#42
	db #09,#42,#0d,#ac,#61,#05,#42,#05
	db #42,#09,#42,#0d,#ac,#41,#42,#05
	db #42,#09,#42,#0d,#b0,#41,#42,#05
	db #42,#09,#42,#0d,#b0,#41,#42,#05
	db #42,#09,#42,#0d,#ba,#41,#42,#05
	db #42,#09,#42,#0d,#ba,#41,#42,#05
	db #42,#09,#42,#0d,#b6,#61,#06,#42
	db #05,#42,#09,#42,#0d,#b6,#41,#42
	db #05,#42,#09,#42,#0d,#ac,#61,#05
	db #42,#05,#42,#09,#42,#0d,#ac,#41
	db #42,#05,#42,#09,#42,#0d,#b0,#41
	db #42,#05,#42,#09,#42,#0d,#b0,#41
	db #42,#05,#42,#09,#42,#0d,#bc,#e1
	db #fc,#ff,#03,#42,#80,#00,#00,#02
	db #c8,#40,#be,#6b,#04,#ca,#61,#03
	db #c0,#6b,#04,#42,#60,#00,#a2,#65
	db #02,#a2,#40,#a2,#40,#a2,#40,#42
	db #60,#00,#00,#98,#e0,#00,#00,#01
	db #06,#a2,#60,#02,#9a,#60,#01,#02
	db #42,#60,#00,#9c,#60,#01,#5d,#5d
	db #5d,#02,#42,#60,#00,#00,#ac,#e1
	db #00,#00,#05,#0c,#42,#05,#b0,#41
	db #71,#71,#71,#42,#03,#42,#07,#42
	db #0f,#42,#17

	jp l4b5d
	jp l44e0
	jp l4bb2
.l44df
	nop
;
.play_music
.l44e0
;
	xor a
	ld (l44df),a
	ld (l4834),a
.l44e8 equ $ + 1
	ld a,#01
	dec a
	jp nz,l46c3
.l44ee equ $ + 1
	ld a,#01
	dec a
	jr nz,l455a
.l44f3 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l4501
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l4501
	rra
	jr nc,l4509
	ld de,l45af
	ldi
.l4509
	rra
	jr nc,l4511
	ld de,l4619
	ldi
.l4511
	rra
	jr nc,l4519
	ld de,l4683
	ldi
.l4519
	ld de,l458e
	ldi
	ldi
	ld de,l45f8
	ldi
	ldi
	ld de,l4662
	ldi
	ldi
	rra
	jr nc,l4536
	ld de,l4559
	ldi
.l4536
	rra
	jr nc,l4541
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4545),de
.l4541
	ld (l44f3),hl
.l4545 equ $ + 1
	ld hl,#0000
	ld (l4563),hl
	ld a,#01
	ld (l455e),a
	ld (l4584),a
	ld (l45ee),a
	ld (l4658),a
.l4559 equ $ + 1
	ld a,#01
.l455a
	ld (l44ee),a
.l455e equ $ + 1
	ld a,#01
	dec a
	jr nz,l4580
.l4563 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l457d
	srl a
	jr nz,l4571
	ld a,(hl)
	inc hl
.l4571
	jr nc,l4578
	ld (l44df),a
	jr l457b
.l4578
	ld (l46c2),a
.l457b
	ld a,#01
.l457d
	ld (l4563),hl
.l4580
	ld (l455e),a
.l4584 equ $ + 1
	ld a,#01
	dec a
	jr z,l458d
	ld (l4584),a
	jr l45ed
.l458e equ $ + 1
.l458d
	ld hl,#0000
	call l4a09
	ld (l458e),hl
	jr c,l45ea
	ld a,d
	rra
	jr nc,l45a1
	and #0f
	ld (l4745),a
.l45a1
	rl d
	jr nc,l45a9
	ld (l4733),ix
.l45a9
	rl d
	jr nc,l45e8
	ld a,e
.l45af equ $ + 1
	add #00
	ld (l4744),a
	ld hl,#0000
	ld (l4730),hl
	rl d
	jr c,l45c8
.l45be equ $ + 1
	ld hl,#0000
	ld a,(l4755)
	ld (l474d),a
	jr l45e5
.l45c8
	ld l,b
	add hl,hl
.l45cb equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4755),a
	ld (l474d),a
	ld a,(hl)
	or a
	jr z,l45e1
	ld (l4834),a
.l45e1
	inc hl
	ld (l45be),hl
.l45e5
	ld (l4747),hl
.l45e8
	ld a,#01
.l45ea
	ld (l4584),a
.l45ee equ $ + 1
.l45ed
	ld a,#01
	dec a
	jr z,l45f7
	ld (l45ee),a
	jr l4657
.l45f8 equ $ + 1
.l45f7
	ld hl,#0000
	call l4a09
	ld (l45f8),hl
	jr c,l4654
	ld a,d
	rra
	jr nc,l460b
	and #0f
	ld (l4711),a
.l460b
	rl d
	jr nc,l4613
	ld (l46ff),ix
.l4613
	rl d
	jr nc,l4652
	ld a,e
.l4619 equ $ + 1
	add #00
	ld (l4710),a
	ld hl,#0000
	ld (l46fc),hl
	rl d
	jr c,l4632
.l4628 equ $ + 1
	ld hl,#0000
	ld a,(l4721)
	ld (l4719),a
	jr l464f
.l4632
	ld l,b
	add hl,hl
.l4635 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4721),a
	ld (l4719),a
	ld a,(hl)
	or a
	jr z,l464b
	ld (l4834),a
.l464b
	inc hl
	ld (l4628),hl
.l464f
	ld (l4713),hl
.l4652
	ld a,#01
.l4654
	ld (l45ee),a
.l4658 equ $ + 1
.l4657
	ld a,#01
	dec a
	jr z,l4661
	ld (l4658),a
	jr l46c1
.l4662 equ $ + 1
.l4661
	ld hl,#0000
	call l4a09
	ld (l4662),hl
	jr c,l46be
	ld a,d
	rra
	jr nc,l4675
	and #0f
	ld (l46e0),a
.l4675
	rl d
	jr nc,l467d
	ld (l46ce),ix
.l467d
	rl d
	jr nc,l46bc
	ld a,e
.l4683 equ $ + 1
	add #00
	ld (l46df),a
	ld hl,#0000
	ld (l46cb),hl
	rl d
	jr c,l469c
.l4692 equ $ + 1
	ld hl,#0000
	ld a,(l46f0)
	ld (l46e8),a
	jr l46b9
.l469c
	ld l,b
	add hl,hl
.l469f equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l46f0),a
	ld (l46e8),a
	ld a,(hl)
	or a
	jr z,l46b5
	ld (l4834),a
.l46b5
	inc hl
	ld (l4692),hl
.l46b9
	ld (l46e2),hl
.l46bc
	ld a,#01
.l46be
	ld (l4658),a
.l46c2 equ $ + 1
.l46c1
	ld a,#01
.l46c3
	ld (l44e8),a
	ld iy,l484b
.l46cb equ $ + 1
	ld hl,#0000
.l46ce equ $ + 1
	ld de,#0000
	add hl,de
	ld (l46cb),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l46e0 equ $ + 2
.l46df equ $ + 1
	ld de,#0000
.l46e2 equ $ + 1
	ld hl,#0000
	call l4856
.l46e8 equ $ + 1
	ld a,#01
	dec a
	jr nz,l46f1
	ld (l46e2),hl
.l46f0 equ $ + 1
	ld a,#06
.l46f1
	ld (l46e8),a
	ld a,lx
	ex af,af'
	ld iy,l4849
.l46fc equ $ + 1
	ld hl,#0000
.l46ff equ $ + 1
	ld de,#0000
	add hl,de
	ld (l46fc),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4711 equ $ + 2
.l4710 equ $ + 1
	ld de,#0000
.l4713 equ $ + 1
	ld hl,#0000
	call l4856
.l4719 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4722
	ld (l4713),hl
.l4721 equ $ + 1
	ld a,#06
.l4722
	ld (l4719),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l4847
.l4730 equ $ + 1
	ld hl,#0000
.l4733 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4730),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4745 equ $ + 2
.l4744 equ $ + 1
	ld de,#0000
.l4747 equ $ + 1
	ld hl,#0000
	call l4856
.l474d equ $ + 1
	ld a,#01
	dec a
	jr nz,l4756
	ld (l4747),hl
.l4755 equ $ + 1
	ld a,#06
.l4756
	ld (l474d),a
	ex af,af'
	or lx
.l475c
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l4847
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
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
	db #ed,#71 ; out (c),0
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
	db #ed,#71 ; out (c),0
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
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	ld a,(hl)
.l4833 equ $ + 1
	cp #ff
.l4834
	nop
	ret z
	ld (l4833),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l4847
	nop
	nop
.l4849
	nop
	nop
.l484b
	nop
	nop
.l484d
	nop
.l484e
	nop
	nop
	nop
	nop
	nop
.l4853
	nop
	nop
.l4855
	nop
.l4856
	ld b,(hl)
	inc hl
	rr b
	jp c,l48b4
	rr b
	jr c,l4884
	ld a,b
	and #0f
	jr nz,l486d
	ld (iy+#07),a
	ld lx,#09
	ret
.l486d
	ld lx,#08
	sub d
	jr nc,l4874
	xor a
.l4874
	ld (iy+#07),a
	rr b
	call l49dd
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l4884
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l4894
	ld (l484d),a
	ld lx,#00
.l4894
	ld a,b
	and #0f
	sub d
	jr nc,l489b
	xor a
.l489b
	ld (iy+#07),a
	bit 5,c
	jr nz,l48a5
	inc lx
	ret
.l48a5
	rr b
	bit 6,c
	call l49cf
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l48b4
	rr b
	jr nc,l48c7
	ld a,(l474d)
	ld c,a
	ld a,(l4755)
	cp c
	jr nz,l48c7
	ld a,#fe
	ld (l4834),a
.l48c7
	bit 1,b
	jp nz,l4980
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l4855),a
	bit 0,b
	jr z,l4936
	bit 2,b
	call l49cf
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l48f6),a
	ld a,b
	exx
.l48f6 equ $ + 1
	jr l48f7
.l48f7
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
	jr nc,l4916
	inc hl
.l4916
	bit 5,a
	jr z,l4926
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
.l4926
	ld (l4853),hl
	exx
.l492a
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l484d),a
	ld lx,#00
	ret
.l4936
	bit 2,b
	call l49cf
	ld (l4853),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l494a),a
	ld a,b
	exx
.l494a equ $ + 1
	jr l494b
.l494b
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
	bit 5,a
	jr z,l4977
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
.l4977
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l492a
.l4980
	bit 0,b
	jr z,l498b
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l4856
.l498b
	ld (iy+#07),#10
	bit 5,b
	jr nz,l4998
	ld lx,#09
	jr l49ab
.l4998
	ld lx,#08
	ld hx,e
	bit 2,b
	call l49cf
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l49ab
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l4855),a
	rr b
	rr b
	bit 2,b
	call l49cf
	ld (l4853),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l484d),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l49cf
	jr z,l49dd
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
	ret
.l49dd
	bit 4,b
	jr z,l49ed
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
.l49ed
	ld a,e
	bit 3,b
	jr z,l49fa
	add (hl)
	inc hl
	cp #90
	jr c,l49fa
	ld a,#8f
.l49fa
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l4a3d
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l4a09
	ld a,(hl)
	inc hl
	srl a
	jr c,l4a30
	sub #20
	jr c,l4a3a
	jr z,l4a2c
	dec a
	ld e,a
.l4a17
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l4a25
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l4a25
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l4a2c
	ld e,(hl)
	inc hl
	jr l4a17
.l4a30
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l4a3a
	add #20
	ret
.l4a3d
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
.l4b5d
;
	ld hl,#0009
	add hl,de
	ld de,l46c2
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l45cb),hl
	ld (l4635),hl
	ld (l469f),hl
	add hl,bc
	ld de,l4559
	ldi
	ld de,l45af
	ldi
	ld de,l4619
	ldi
	ld de,l4683
	ldi
	ld de,l4545
	ldi
	ldi
	ld (l44f3),hl
	ld a,#01
	ld (l44e8),a
	ld (l44ee),a
	ld a,#ff
	ld (l4855),a
	ld hl,(l45cb)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l4747),hl
	ld (l4713),hl
	ld (l46e2),hl
	ret
;
.stop_music
.l4bb2
;
	ld hl,l484e
	ld bc,#0300
.l4bb8
	ld (hl),c
	inc hl
	djnz l4bb8
	ld a,#3f
	jp l475c
;
; #4bcb
; ld de,#4013
; call #44d6
;
.init_music		; added by Megachur
;
	ld de,l4013
	jp real_init_music
;
.music_info
	db "30 Years Amstrad Megademo - Turn Disk (2016)(Benediction)(Factor6)",0
	db "StArkos",0

	read "music_end.asm"
