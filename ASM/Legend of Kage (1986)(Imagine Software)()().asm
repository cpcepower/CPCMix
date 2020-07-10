; Music of Legend of Kage (1986)(Imagine Software)()()
; Ripped by Megachur the 28/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LEGENDOK.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #4331

	read "music_header.asm"

	db #00
.l4332
	db #04,#00,#05,#00,#0a,#00,#0c,#00
	db #0b,#00,#0d,#00,#06,#00,#07,#3c
	db #ff
.l4343
	db #00,#04,#22,#0a,#1f,#0b,#dd,#0d
	db #0f,#06,#0c,#07,#18,#ff
.l4351
	db #00,#04,#9d,#0a,#1d,#0c,#0e,#06
	db #12,#0d,#02,#07,#18,#ff
.l435f
	db #0a,#05,#01,#0c,#1a,#0d,#09,#0a
	db #1f,#06,#10,#07,#18,#ff
.l436d
	db #00,#04,#2f,#0a,#1f,#0c,#0d,#0d
	db #03,#07,#38,#ff
.l4379
	db #12,#0a,#1f,#0c,#0e,#0d,#09,#06
	db #10,#07,#1c,#ff
.l4385
	db #00
.l4386
	db #00,#47
	ld a,(l4386)
	and a
	ret nz
	ld a,b
	ld (l4385),a
	cp #01
	jp z,l43b0
	cp #02
	jp z,l43b6
	cp #03
	jp z,l43bc
	cp #04
	jp z,l43c2
	cp #05
	jp z,l43c8
	cp #06
	jp z,l43ce
	ret
.l43b0
	ld hl,l4343
	jp l4414
.l43b6
	ld hl,l4351
	jp l4414
.l43bc
	ld hl,l436d
	jp l4414
.l43c2
	ld hl,l435f
	jp l4414
.l43c8
	ld hl,l436d
	jp l4414
.l43ce
	ld hl,l4379
	jp l4414

	ld hl,l4386
	ld a,(hl)
	and a
	ret z
	dec (hl)
	ld a,(l4385)
	cp #04
	jp z,l43e9
	cp #06
	jp z,l43fe
	ret
.l43e9
	ld a,(l4386)
	and #03
	ret nz
	call #0b3b
	and #1f
	push af
	ld e,#06
	call #09bc
	pop af
	ld e,#04
	ret
.l43fe
	ld a,(l4386)
	push af
	ld e,#0a
	bit 7,a
	jr z,l4409
	xor a
.l4409
	call #09bc
	pop af
	add #0f
	ld e,#06
	jp #09bc
.l4414
	ld a,(hl)
	ld (l4386),a
	inc hl
	push hl
	ld hl,l4332
	call l4421
	pop hl
.l4421
	ld e,(hl)
	ld a,e
	bit 7,a
	ret nz
	inc hl
	ld a,(hl)
	call #09bc
	inc hl
	jp l4421
.l4436 equ $ + 7
.l4435 equ $ + 6
.l4433 equ $ + 4
.l4431 equ $ + 2
.l442f
	db #6c,#44,#00,#00,#0d,#45,#00,#00
.l443e equ $ + 7
.l443d equ $ + 6
.l443c equ $ + 5
.l443b equ $ + 4
.l443a equ $ + 3
.l4439 equ $ + 2
.l4438 equ $ + 1
.l4437
	db #00,#0c,#0c,#00,#00,#fc,#00,#fc
.l4446 equ $ + 7
.l4444 equ $ + 5
.l4442 equ $ + 3
.l4441 equ $ + 2
.l4440 equ $ + 1
.l443f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l444c equ $ + 5
.l444b equ $ + 4
.l444a equ $ + 3
.l4449 equ $ + 2
.l4448 equ $ + 1
.l4447
	db #00,#00,#00,#10,#10,#1c,#01,#fd
	db #00,#d5,#00,#be,#00,#b3,#00,#96
	db #00,#8e,#00,#7f,#00,#77,#00,#6b
	db #00,#5f,#00,#5a,#00
.l4464
	db #38,#02,#cc,#02,#53,#03,#f6,#02
	db #0c
.l446d
	db #00,#0b,#02,#01,#03,#00,#0b,#02
	db #01,#04,#05,#06,#05,#06,#07,#06
	db #08,#09,#08,#0a,#05,#06,#05,#06
	db #07,#06,#08,#09,#08,#0a,#ff
.l448c
	db #70,#f1,#57,#50,#40,#50,#f1,#70
	db #f1,#f7,#80,#70,#50,#43,#fd,#00
	db #ff,#00,#30,#f1,#30,#30,#40,#50
	db #10,#30,#f3,#30,#40,#50,#20,#10
	db #40,#00,#b0,#80,#a0,#70,#80,#50
	db #70,#40,#00,#ba,#87,#a8,#75,#87
	db #53,#57,#54,#00,#54,#32,#10,#40
	db #f3,#23,#54,#00,#80,#90,#70,#80
	db #f7,#00,#12,#34,#50,#40,#f3,#23
	db #54,#00,#b0,#a0,#c0,#b1,#a0,#80
	db #70,#81,#a0,#80,#00,#b0,#a0,#f7
	db #00,#c0,#b0,#f7,#00,#57,#97,#9c
	db #97,#57,#97,#9c,#95,#00
.l44f2
	db #10,#40,#74,#78,#98,#74,#57,#54
	db #10,#40,#78,#74,#98,#74,#78,#97
	db #12,#34,#34,#57,#45,#78,#78,#ac
	db #b0,#ff,#00
.l450d
	db #01,#02,#03,#04,#01,#02,#03,#04
	db #03,#04,#03,#04,#04,#03,#04,#03
	db #04,#04,#00
.l4520
	ld hl,l4464
	call l4553
	ld a,(l4436)
	bit 0,a
	jp z,l4532
	srl b
	rr c
.l4532
	ld (l4444),bc
	ld a,#01
	jp l4546
.l453b
	ld hl,l444c
	xor a
	call l4553
	ld (l4442),bc
.l4546
	add a
	push bc
	push af
	call l4587
	pop af
	pop bc
	inc a
	ld c,b
	jp l4587
.l4553
	ld b,#00
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ret
.l455b
	call l4576
	xor a
.l455f
	ld c,#00
	push af
	push hl
	call l4587
	pop hl
	pop af
	inc hl
	inc a
	cp #0e
	jp nz,l455f
	ld a,#07
	ld c,#38
	jp l4587
.l4576
	ld bc,#000d
.l4579
	ld a,b
	push bc
	call l4587
	pop bc
	dec b
	jp p,l4579
	ld a,#07
	ld c,#3f
.l4587
	di
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	ei
	ret
.l45a7
	ld a,(l4449)
	and a
	jp z,l45b3
	dec a
	ld (l4449),a
	ret
.l45b3
	ld a,(l4437)
	and a
	jp z,l45bf
	xor a
	ld (l4437),a
	ret
.l45bf
	ld a,(l4436)
	and a
	jp nz,l45e4
	ld hl,(l4433)
.l45c9
	ld a,(hl)
	inc hl
	ld (l4433),hl
	and a
	jp nz,l45db
	ld hl,l450d
	ld (l4433),hl
	jp l45c9
.l45db
	dec a
	ld (l4435),a
	ld a,#10
	ld (l4436),a
.l45e4
	ld a,(l4435)
	ld c,a
	call l4520
	ld a,(l4439)
	ld (l443b),a
	ld c,a
	ld a,#09
	call l4587
	ld hl,l4436
	dec (hl)
	inc hl
	inc (hl)
	ret
.l45fe
	ld a,(l443f)
	and a
	jp nz,l460f
	ld a,(l4448)
	and a
	jp nz,l4681
	jp l4646
.l460f
	ld hl,l4440
	dec (hl)
	ret nz
	xor a
	ld (l443f),a
	ld (l4448),a
	ret
.l461c
	ld hl,(l442f)
	ld a,(hl)
	inc hl
	ld (l442f),hl
	cp #ff
	jp nz,l4632
	ld hl,l446d
	ld (l442f),hl
	jp l461c
.l4632
	ld hl,l448c
	and a
	jp z,l4643
	ld b,a
.l463a
	inc hl
	ld a,(hl)
	and a
	jp nz,l463a
	inc hl
	djnz l463a
.l4643
	ld (l4431),hl
.l4646
	ld hl,(l4431)
	ld a,(hl)
	ld (l4441),a
	inc hl
	ld (l4431),hl
	ld b,a
	ld a,#01
	ld (l4448),a
	ld a,b
	and a
	jp z,l461c
	and #f0
	cp #f0
	jp z,l4694
	ld a,(l4441)
	and #f0
	srl a
	srl a
	srl a
	srl a
.l4670
	ld c,a
	dec c
	call l453b
	ld a,(l4438)
	ld (l443a),a
	ld c,a
	ld a,#08
	jp l4587
.l4681
	ld a,(l4441)
	and #0f
	ld b,a
	xor a
	ld (l4448),a
	ld (l443f),a
	ld a,b
	and a
	ret z
	jp l4670
.l4694
	ld a,(l4441)
	and #0f
	jp nz,l469e
	ld a,#10
.l469e
	ld (l4440),a
	ld a,#01
	ld (l443f),a
	ret
.l46a7
	ld hl,l443c
	dec (hl)
	ret nz
	ld a,(l444a)
	ld (hl),a
	ld hl,l443a
	ld b,#08
	call l46bd
	ld hl,l443b
	ld b,#09
.l46bd
	ld a,(hl)
	sub #01
	ret c
	ld (hl),a
	ld c,a
	ld a,b
	jp l4587
.l46c7
	ld hl,l443e
	dec (hl)
	ret nz
	ld a,(l444b)
	ld (hl),a
	ld a,(l443d)
	xor #01
	ld (l443d),a
	ld bc,(l4442)
	and a
	jp z,l46e4
	dec bc
	jp l46e5
.l46e4
	inc bc
.l46e5
	xor a
	jp l4546
.l46e9
	ld a,(l4447)
	xor #01
	ld (l4447),a
	ret nz
	ld bc,(l4444)
	ld a,(l4446)
	xor #01
	ld (l4446),a
	and a
	jp z,l4706
	dec bc
	jp l4707
.l4706
	inc bc
.l4707
	ld a,#01
	ld (l4444),bc
	jp l4546
;
.init_music
.l4710
;
	call l455b
	ld hl,l446d
	ld (l442f),hl
	ld hl,l450d
	ld (l4433),hl
	ld hl,l44f2
	ld (l4431),hl
	ld hl,#0000
	ld (l4442),hl
	ld (l4444),hl
	xor a
	ld (l4436),a
	ld (l4437),a
	ld (l443f),a
	ld (l4448),a
	ld (l443d),a
	ld (l443c),a
	ld (l443e),a
	ld a,#42
	ld (l4449),a
	ret
;
;.play_music
.l474a
;
	call l45a7
	call l45fe
.l4750
	call l46a7
	call l46c7
	jp l46e9
; 4710
; 474a
; 4750

.l3ebd
	defb &00
.l3ebe
	defb &00
;
;.enable_music
.l3ebf
;
	ld a,#00
	ld (l3ebe),a
	ret
;
.stop_music
.l3ec5
;
	ld a,#01
	ld (l3ebe),a
	ret
;
.play_music
;.l3ecb
;
	ld a,(l3ebe)
	and a
	jp nz,l4750
	ld hl,l3ebd
	inc (hl)
	ld a,#05
	cp (hl)
	jp nz,l4750
	xor a
	ld (hl),a
	call l474a
	jp l4750
;
.music_info
	db "Legend of Kage (1986)(Imagine Software)()",0
	db "",0

	read "music_end.asm"
