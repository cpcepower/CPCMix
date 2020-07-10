; Music of Psycho Pig UXB (1988)(Software Creations)()()
; Ripped by Megachur the 27/02/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PSYCHOPU.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #0100
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

	jr l016c	; play music
;
.init_music
;
	and a
	jp nz,l011b
	ld hl,l0a00
	ld (l017a),hl
	ld hl,l0a6c
	ld (l02d9),hl
	ld hl,l0a9f
	ld (l041a),hl
	jp l014a
.l011b
	dec a
	jp nz,l0134
	ld hl,l0865
	ld (l017a),hl
	ld hl,l08fb
	ld (l02d9),hl
	ld hl,l0970
	ld (l041a),hl
	jp l014a
.l0134
	dec a
	jp nz,l014a
	ld hl,l0ada
	ld (l017a),hl
	ld hl,l0b0d
	ld (l02d9),hl
	ld hl,l0b3f
	ld (l041a),hl
.l014a
	ld a,#01
	ld (l0171),a
	ld (l02d0),a
	ld (l0411),a
	ld (l02ba),a
	dec a
	ld (l016d),a
	ret
.l015d
	ld a,#01
	ld (l016d),a
	ld a,#07
	ld c,#3f
	call l075e
	ld a,#01
	ret
.l016d equ $ + 1
;
.play_music
.l016c
;
	ld a,#00
	dec a
	ret z
.l0171 equ $ + 1
	ld a,#00
	dec a
	ld (l0171),a
	jp nz,l02b9
.l017a equ $ + 1
	ld hl,#0000
.l017c
	ld a,(hl)
	inc hl
	and a
	jr z,l015d
	cp #01
	jr nz,l0193
.l0186 equ $ + 1
	ld a,#00
	dec a
	jr z,l017c
	ld (l0186),a
	ld hl,(l078b)
	jp l017c
.l0193
	cp #02
	jr nz,l01a2
	ld a,(hl)
	inc hl
	ld (l0186),a
	ld (l078b),hl
	jp l017c
.l01a2
	cp #03
	jr nz,l01d7
	ld a,#08
	ld c,(hl)
	call l075e
	ld a,c
	ld (l0562),a
	ld (l0788),a
	ld (l0791),a
	inc hl
	ld a,(hl)
	ld (l0569),a
	ld (l0571),a
	inc hl
	ld a,(hl)
	ld (l0589),a
	ld (l0591),a
	ld (l0596),a
	inc hl
	ld a,(hl)
	ld (l05a6),a
	inc hl
	ld a,(hl)
	ld (l05ae),a
	inc hl
	jp l017c
.l01d7
	cp #04
	jr nz,l01e2
	xor a
	ld (l02a2),a
	jp l017c
.l01e2
	cp #05
	jr nz,l01ee
	ld a,#01
	ld (l02a2),a
	jp l017c
.l01ee
	cp #06
	jr nz,l01fd
	ld a,(hl)
	ld (l0657),a
	ld (l029d),a
	inc hl
	jp l017c
.l01fd
	cp #07
	jr nz,l021e
	ld a,(hl)
	ld (l0794),a
	ld c,a
	ld a,#07
	call l075e
	inc hl
	ld a,(hl)
	ld (l0796),a
	ld c,a
	ld a,#06
	call l075e
	inc hl
	xor a
	ld (l068e),a
	jp l017c
.l021e
	cp #09
	jp nz,l022b
	ld a,(hl)
	ld (l026a),a
	inc hl
	jp l017c
.l022b
	cp #0a
	jp nz,l023c
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0797),hl
	push de
	pop hl
	jp l017c
.l023c
	cp #0b
	jp nz,l0247
	ld hl,(l0797)
	jp l017c
.l0247
	cp #0f
	jp nz,l025c
	ld a,(hl)
	inc hl
	ld (l06c8),a
	ld (l06d5),a
	ld a,(hl)
	inc hl
	ld (l06dc),a
	jp l017c
.l025c
	cp #10
	jp nz,l0269
	ld a,(hl)
	inc hl
	ld (l0278),a
	jp l017c
.l026a equ $ + 1
.l0269
	add #00
.l026c equ $ + 1
	add #00
	sub #03
	ld e,a
	ld (l06e2),a
	xor a
	ld (l06da),a
.l0278 equ $ + 1
	ld a,#00
	and a
	jp nz,l027f
	ld a,(hl)
	inc hl
.l027f
	ld (l0171),a
	ld (l017a),hl
	ld d,#00
	ld hl,l078d
	add hl,de
	add hl,de
	ld a,#01
	ld c,(hl)
	call l075e
	inc hl
	ld a,(hl)
	ld (l0673),a
	ld c,a
	xor a
	call l075e
.l029d equ $ + 1
	ld a,#00
	ld (l0657),a
.l02a2 equ $ + 1
	ld a,#00
	dec a
	jr nz,l02b9
	ld a,(l0791)
	ld (l0788),a
	ld (l0562),a
	ld a,(l0591)
	ld (l0596),a
	xor a
	ld (l026c),a
.l02ba equ $ + 1
.l02b9
	ld a,#01
	dec a
	jp z,l02cf
	ld (l02ba),a
	dec a
	jp nz,l02cf
	ld a,(l0794)
	ld c,a
	ld a,#07
	call l075e
.l02d0 equ $ + 1
.l02cf
	ld a,#00
	dec a
	ld (l02d0),a
	jp nz,l0410
.l02d9 equ $ + 1
	ld hl,#0000
.l02db
	ld a,(hl)
	inc hl
	cp #01
	jr nz,l02ef
.l02e2 equ $ + 1
	ld a,#00
	dec a
	jr z,l02db
	ld (l02e2),a
	ld hl,(l078d)
	jp l02db
.l02ef
	cp #02
	jr nz,l02fe
	ld a,(hl)
	inc hl
	ld (l02e2),a
	ld (l078d),hl
	jp l02db
.l02fe
	cp #03
	jr nz,l032b
	ld a,(hl)
	ld (l05c7),a
	ld (l0789),a
	ld (l0792),a
	ld c,a
	ld a,#09
	call l075e
	inc hl
	ld a,(hl)
	ld (l05ce),a
	ld (l05d7),a
	inc hl
	ld a,(hl)
	ld (l05ef),a
	ld (l05f8),a
	inc hl
	ld a,(hl)
	ld (l0608),a
	inc hl
	jp l02db
.l032b
	cp #04
	jr nz,l0336
	xor a
	ld (l0403),a
	jp l02db
.l0336
	cp #05
	jr nz,l0342
	ld a,#01
	ld (l0403),a
	jp l02db
.l0342
	cp #07
	jr nz,l0363
	ld a,(hl)
	ld (l0794),a
	ld c,a
	ld a,#07
	call l075e
	inc hl
	ld a,(hl)
	ld (l0796),a
	ld c,a
	ld a,#06
	call l075e
	inc hl
	xor a
	ld (l068e),a
	jp l02db
.l0363
	cp #08
	jp nz,l0374
	ld a,(hl)
	inc hl
	inc a
	ld (l02ba),a
	ld (l0795),a
	jp l02db
.l0374
	cp #09
	jp nz,l0381
	ld a,(hl)
	ld (l03c0),a
	inc hl
	jp l02db
.l0381
	cp #0a
	jp nz,l0392
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0799),hl
	push de
	pop hl
	jp l02db
.l0392
	cp #0b
	jp nz,l039d
	ld hl,(l0799)
	jp l02db
.l039d
	cp #0f
	jp nz,l03b2
	ld a,(hl)
	inc hl
	ld (l06f9),a
	ld (l0706),a
	ld a,(hl)
	inc hl
	ld (l070d),a
	jp l02db
.l03b2
	cp #10
	jp nz,l03bf
	ld a,(hl)
	inc hl
	ld (l03cc),a
	jp l02db
.l03c0 equ $ + 1
.l03bf
	add #00
	sub #03
	ld e,a
	ld (l0713),a
	xor a
	ld (l070b),a
.l03cc equ $ + 1
	ld a,#00
	and a
	jp nz,l03d3
	ld a,(hl)
	inc hl
.l03d3
	ld (l02d0),a
	ld (l02d9),hl
	ld d,#00
	ld hl,l078d
	add hl,de
	add hl,de
	ld a,#03
	ld c,(hl)
	call l075e
	ld a,#02
	inc hl
	ld c,(hl)
	call l075e
	ld a,(l0795)
	ld (l02ba),a
	dec a
	jp z,l0402
	ld a,(l0794)
	sub #10
	ld c,a
	ld a,#07
	call l075e
.l0403 equ $ + 1
.l0402
	ld a,#00
	dec a
	jr nz,l0410
	ld a,(l0792)
	ld (l0789),a
	ld (l05c7),a
.l0411 equ $ + 1
.l0410
	ld a,#00
	dec a
	ld (l0411),a
	jp nz,l0561
.l041a equ $ + 1
	ld hl,#0000
.l041c
	ld a,(hl)
	inc hl
	cp #01
	jr nz,l0430
.l0423 equ $ + 1
	ld a,#00
	dec a
	jr z,l041c
	ld (l0423),a
	ld hl,(l078f)
	jp l041c
.l0430
	cp #02
	jr nz,l043f
	ld a,(hl)
	inc hl
	ld (l0423),a
	ld (l078f),hl
	jp l041c
.l043f
	cp #03
	jr nz,l046c
	ld a,#0a
	ld c,(hl)
	call l075e
	ld a,c
	ld (l060f),a
	ld (l078a),a
	ld (l0793),a
	inc hl
	ld a,(hl)
	ld (l0616),a
	ld (l061f),a
	inc hl
	ld a,(hl)
	ld (l0637),a
	ld (l0640),a
	inc hl
	ld a,(hl)
	ld (l0650),a
	inc hl
	jp l041c
.l046c
	cp #04
	jr nz,l0477
	xor a
	ld (l0554),a
	jp l041c
.l0477
	cp #05
	jr nz,l0483
	ld a,#01
	ld (l0554),a
	jp l041c
.l0483
	cp #07
	jr nz,l04a4
	ld a,(hl)
	ld (l0794),a
	ld c,a
	ld a,#07
	call l075e
	inc hl
	ld a,(hl)
	ld (l0796),a
	ld c,a
	ld a,#06
	call l075e
	inc hl
	xor a
	ld (l068e),a
	jp l041c
.l04a4
	cp #09
	jp nz,l04b1
	ld a,(hl)
	ld (l0524),a
	inc hl
	jp l041c
.l04b1
	cp #0a
	jp nz,l04c2
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l079b),hl
	push de
	pop hl
	jp l041c
.l04c2
	cp #0b
	jp nz,l04cd
	ld hl,(l079b)
	jp l041c
.l04cd
	cp #0c
	jp nz,l04e7
	ld a,(hl)
	inc hl
	ld (l067b),a
	ld (l0689),a
	ld a,#1e
	ld (l0796),a
	ld a,#01
	ld (l068e),a
	jp l041c
.l04e7
	cp #0d
	jp nz,l04f5
	ld a,(l0524)
	ld (l0526),a
	jp l041c
.l04f5
	cp #0e
	jp nz,l0501
	xor a
	ld (l0526),a
	jp l041c
.l0501
	cp #0f
	jp nz,l0516
	ld a,(hl)
	inc hl
	ld (l072b),a
	ld (l0738),a
	ld a,(hl)
	inc hl
	ld (l073f),a
	jp l041c
.l0516
	cp #10
	jp nz,l0523
	ld a,(hl)
	inc hl
	ld (l0532),a
	jp l041c
.l0524 equ $ + 1
.l0523
	add #00
.l0526 equ $ + 1
	sub #00
	sub #03
	ld e,a
	ld (l0745),a
	xor a
	ld (l073d),a
.l0532 equ $ + 1
	ld a,#00
	and a
	jp nz,l0539
	ld a,(hl)
	inc hl
.l0539
	ld (l0411),a
	ld (l041a),hl
	ld d,#00
	ld hl,l078d
	add hl,de
	add hl,de
	ld a,#05
	ld c,(hl)
	call l075e
	ld a,#04
	inc hl
	ld c,(hl)
	call l075e
.l0554 equ $ + 1
	ld a,#00
	dec a
	jr nz,l0561
	ld a,(l0793)
	ld (l078a),a
	ld (l060f),a
.l0562 equ $ + 1
.l0561
	ld a,#00
	cp #0d
	jp z,l0588
.l0569 equ $ + 1
	ld a,#00
	dec a
	ld (l0569),a
	jr nz,l05ad
.l0571 equ $ + 1
	ld a,#00
	ld (l0569),a
	ld a,(l0788)
	inc a
	ld (l0788),a
	ld (l0562),a
	ld c,a
	ld a,#08
	call l075e
	jp l05ad
.l0589 equ $ + 1
.l0588
	ld a,#00
	dec a
	ld (l0589),a
	jr nz,l05ad
.l0591 equ $ + 1
	ld a,#00
	ld (l0589),a
.l0596 equ $ + 1
	ld a,#00
	ld (l0589),a
	ld a,(l0788)
	dec a
	ld c,a
	ld a,#08
	call l075e
	ld a,c
.l05a6 equ $ + 1
	cp #00
	jp z,l05ad
	ld (l0788),a
.l05ae equ $ + 1
.l05ad
	ld a,#00
	and a
	jr z,l05c6
	ld b,a
	ld a,(l0171)
	cp b
	jr nz,l05c6
	ld a,#0d
	ld (l0562),a
	ld a,#01
	ld (l0589),a
	ld (l0596),a
.l05c7 equ $ + 1
.l05c6
	ld a,#00
	cp #0d
	jp z,l05ee
.l05ce equ $ + 1
	ld a,#00
	dec a
	ld (l05ce),a
	jp nz,l060e
.l05d7 equ $ + 1
	ld a,#00
	ld (l05ce),a
	ld a,(l0789)
	inc a
	ld (l0789),a
	ld (l05c7),a
	ld c,a
	ld a,#09
	call l075e
	jp l060e
.l05ef equ $ + 1
.l05ee
	ld a,#00
	dec a
	ld (l05ef),a
	jp nz,l060e
.l05f8 equ $ + 1
	ld a,#00
	ld (l05ef),a
	ld a,(l0789)
	dec a
	ld c,a
	ld a,#09
	call l075e
	ld a,c
.l0608 equ $ + 1
	cp #00
	jr z,l060e
	ld (l0789),a
.l060f equ $ + 1
.l060e
	ld a,#00
	cp #0d
	jp z,l0636
.l0616 equ $ + 1
	ld a,#00
	dec a
	ld (l0616),a
	jp nz,l0656
.l061f equ $ + 1
	ld a,#00
	ld (l0616),a
	ld a,(l078a)
	inc a
	ld (l078a),a
	ld (l060f),a
	ld c,a
	ld a,#0a
	call l075e
	jp l0656
.l0637 equ $ + 1
.l0636
	ld a,#00
	dec a
	ld (l0637),a
	jp nz,l0656
.l0640 equ $ + 1
	ld a,#00
	ld (l0637),a
	ld a,(l078a)
	dec a
	ld c,a
	ld a,#0a
	call l075e
	ld a,c
.l0650 equ $ + 1
	cp #00
	jr z,l0656
	ld (l078a),a
.l0657 equ $ + 1
.l0656
	ld a,#00
	dec a
	ld (l0657),a
	jr nz,l067a
	inc a
	ld (l0657),a
	ld hl,l0780
.l0666 equ $ + 1
	ld a,#00
	inc a
	and #07
	ld (l0666),a
	ld e,a
	ld d,#00
	add hl,de
	ld a,(hl)
.l0673 equ $ + 1
	add #00
	ld d,a
	xor a
	ld c,d
	call l075e
.l067b equ $ + 1
.l067a
	ld a,#00
	cp #ff
	jp z,l06c7
	dec a
	ld (l067b),a
	jp nz,l06c7
.l0689 equ $ + 1
	ld a,#00
	ld (l067b),a
.l068e equ $ + 1
	ld a,#00
	dec a
	jp z,l06ac
	ld a,(l0796)
	inc a
	ld (l0796),a
	cp #1d
	jp nz,l06c0
	ld a,(l068e)
	xor #01
	ld (l068e),a
	ld a,#1f
	jp l06c0
.l06ac
	ld a,(l0796)
	dec a
	ld (l0796),a
	cp #05
	jp nz,l06c0
	ld a,(l068e)
	xor #01
	ld (l068e),a
.l06c0
	ld d,a
	ld a,#06
	ld c,d
	call l075e
.l06c8 equ $ + 1
.l06c7
	ld a,#00
	and a
	jp z,l06f8
	dec a
	ld (l06c8),a
	jp nz,l06f8
.l06d5 equ $ + 1
	ld a,#00
	ld (l06c8),a
.l06da equ $ + 1
	ld a,#00
.l06dc equ $ + 1
	xor #00
	ld (l06da),a
	ld e,a
.l06e2 equ $ + 1
	ld a,#00
	add e
	ld e,a
	ld d,#00
	ld hl,l078d
	add hl,de
	add hl,de
	ld a,#01
	ld c,(hl)
	call l075e
	xor a
	inc hl
	ld c,(hl)
	call l075e
.l06f9 equ $ + 1
.l06f8
	ld a,#00
	and a
	jp z,l072a
	dec a
	ld (l06f9),a
	jp nz,l072a
.l0706 equ $ + 1
	ld a,#00
	ld (l06f9),a
.l070b equ $ + 1
	ld a,#00
.l070d equ $ + 1
	xor #00
	ld (l070b),a
	ld e,a
.l0713 equ $ + 1
	ld a,#00
	add e
	ld e,a
	ld d,#00
	ld hl,l078d
	add hl,de
	add hl,de
	ld a,#03
	ld c,(hl)
	call l075e
	ld a,#02
	inc hl
	ld c,(hl)
	call l075e
.l072b equ $ + 1
.l072a
	ld a,#00
	and a
	jp z,l075c
	dec a
	ld (l072b),a
	jp nz,l075c
.l0738 equ $ + 1
	ld a,#00
	ld (l072b),a
.l073d equ $ + 1
	ld a,#00
.l073f equ $ + 1
	xor #00
	ld (l073d),a
	ld e,a
.l0745 equ $ + 1
	ld a,#00
	add e
	ld e,a
	ld d,#00
	ld hl,l078d
	add hl,de
	add hl,de
	ld a,#05
	ld c,(hl)
	call l075e
	ld a,#04
	inc hl
	ld c,(hl)
	call l075e
.l075c
	xor a
	ret
.l075e
	push bc
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
	pop bc
	ret
.l0780
	ei
.l0788 equ $ + 7
	db #fd,#00,#03,#05,#03,#00,#fd,#00
.l078f equ $ + 6
.l078d equ $ + 4
.l078b equ $ + 2
.l078a equ $ + 1
.l0789
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0797 equ $ + 6
.l0796 equ $ + 5
.l0795 equ $ + 4
.l0794 equ $ + 3
.l0793 equ $ + 2
.l0792 equ $ + 1
.l0791
	db #00,#00,#00,#00,#00,#00,#00,#00
.l079b equ $ + 2
.l0799
	db #00,#00,#00,#00,#0e,#ee,#0e,#18
	db #0d,#4d,#0c,#8e,#0b,#da,#0b,#2f
	db #0a,#8f,#09,#f7,#09,#68,#08,#e1
	db #08,#61,#07,#e9,#07,#77,#07,#0c
	db #06,#a7,#06,#47,#05,#ed,#05,#98
	db #05,#47,#04,#fc,#04,#b4,#04,#70
	db #04,#31,#03,#f4,#03,#bc,#03,#86
	db #03,#53,#03,#24,#02,#f6,#02,#cc
	db #02,#a4,#02,#7e,#02,#5a,#02
	db #1f,#80,#ff,#ff,#41,#62,#80,#ff
	db #fe,#3c,#02,#1a,#00,#00
	db #fa,#bf,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#00,#fd,#00
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
.l0865 equ $ + 7
	db #10,#00,#10,#00,#10,#00,#10,#03
	db #0c,#01,#01,#00,#00,#05,#0f,#01
	db #0c,#09,#0c,#06,#00,#10,#05,#02
	db #02,#37,#36,#37,#39,#3b,#37,#34
	db #32,#34,#32,#30,#2f,#32,#2f,#32
	db #37,#37,#36,#37,#39,#3b,#37,#34
	db #32,#36,#35,#36,#37,#39,#36,#34
	db #32,#37,#39,#3b,#3c,#3b,#39,#37
	db #36,#37,#32,#2b,#32,#37,#39,#3b
	db #37,#2b,#2d,#2f,#32,#37,#39,#3b
	db #37,#34,#32,#2f,#32,#37,#3b,#39
	db #36,#01,#39,#38,#39,#35,#36,#34
	db #32,#36,#32,#30,#33,#34,#35,#36
	db #37,#34,#39,#38,#39,#35,#36,#34
	db #32,#36,#37,#36,#37,#39,#3b,#39
	db #37,#38,#39,#38,#39,#35,#36,#34
	db #32,#36,#32,#30,#33,#34,#35,#36
	db #37,#34,#39,#38,#39,#35,#36,#34
	db #32,#36,#37,#32,#2b,#32,#37,#39
.l08fb equ $ + 5
	db #3b,#37,#0a,#71,#08,#03,#0c,#01
	db #02,#00,#05,#0f,#00,#00,#09,#00
	db #07,#38,#0a,#10,#0a,#08,#02,#13
	db #3b,#17,#3b,#1a,#3b,#17,#3b,#13
	db #3b,#17,#3b,#15,#3c,#1a,#42,#13
	db #3b,#17,#3b,#1a,#3b,#17,#3b,#13
	db #3b,#18,#40,#1a,#42,#13,#12,#13
	db #3b,#17,#3b,#1a,#3b,#17,#3b,#13
	db #3b,#17,#3b,#15,#3c,#1a,#42,#13
	db #3b,#17,#3b,#1a,#3b,#17,#3b,#13
	db #3b,#18,#40,#1a,#17,#18,#19,#1a
	db #42,#15,#42,#18,#40,#1c,#40,#1a
	db #42,#15,#42,#13,#3b,#19,#3b,#1a
	db #42,#15,#42,#18,#40,#13,#40,#1a
	db #42,#15,#42,#13,#3b,#19,#3b,#0a
.l0970 equ $ + 2
	db #0d,#09,#03,#0c,#01,#02,#00,#05
	db #0f,#01,#07,#09,#00,#10,#00,#0c
	db #00,#37,#0a,#02,#06,#37,#05,#37
	db #0f,#01,#39,#05,#39,#0f,#3e,#05
	db #3e,#0f,#02,#05,#37,#05,#37,#0f
	db #01,#3c,#05,#3c,#0f,#3e,#05,#3e
	db #0f,#36,#05,#36,#0f,#02,#06,#37
	db #05,#37,#0f,#01,#39,#05,#39,#0f
	db #3e,#05,#3e,#0f,#02,#05,#37,#05
	db #37,#0f,#01,#3c,#05,#3c,#0f,#3e
	db #05,#3e,#0f,#36,#05,#3d,#0f,#02
	db #02,#3e,#05,#3e,#0f,#01,#02,#02
	db #3c,#05,#3c,#0f,#01,#02,#02,#3e
	db #05,#3e,#0f,#01,#02,#02,#37,#05
	db #37,#0f,#01,#02,#02,#3e,#05,#3e
	db #0f,#01,#02,#02,#3c,#05,#3c,#0f
	db #01,#02,#02,#3e,#05,#3e,#0f,#01
	db #02,#02,#37,#05,#37,#0f,#01,#0a
	db #7f,#09
.l0a00
	db #03,#0c,#01,#01,#0a,#00,#05,#0f
	db #02,#0c,#09,#00,#06,#00,#10,#00
	db #32,#05,#34,#05,#36,#05,#37,#0a
	db #32,#05,#34,#0a,#2f,#05,#32,#05
	db #31,#05,#32,#05,#32,#05,#34,#05
	db #36,#05,#37,#0a,#32,#05,#34,#0a
	db #2f,#05,#32,#05,#39,#05,#31,#05
	db #32,#05,#34,#05,#36,#05,#37,#0a
	db #32,#05,#34,#0a,#2f,#05,#32,#05
	db #31,#05,#32,#05,#32,#05,#34,#05
	db #36,#05,#32,#05,#36,#05,#39,#05
	db #3c,#05,#3b,#05,#39,#05,#37,#1e
	db #03,#0c,#01,#04,#00,#00,#0f,#00
	db #00,#37,#3c,#00
.l0a6c
	db #03,#0c,#01,#02,#00,#05,#0f,#00
	db #00,#09,#00,#07,#38,#0a,#10,#00
	db #08,#02,#1a,#05,#18,#05,#15,#05
	db #02,#03,#13,#0f,#1a,#0f,#15,#0f
	db #1a,#0f,#01,#1a,#0f,#15,#0f,#13
	db #1e,#03,#0c,#01,#04,#00,#08,#00
	db #3b,#3c,#00
.l0a9f
	db #03,#0c,#01,#01,#00,#04,#09,#00
	db #10,#00,#0c,#00,#1a,#05,#18,#05
	db #15,#05,#05,#02,#03,#0f,#01,#04
	db #43,#0f,#43,#0f,#0f,#01,#04,#3e
	db #0f,#3e,#0f,#01,#0f,#01,#04,#3e
	db #0f,#3e,#0f,#0f,#01,#04,#43,#1e
	db #0f,#00,#00,#03,#0c,#01,#04,#00
	db #3e,#3c,#00
.l0ada
	db #03,#0c,#01,#02,#00,#00,#05,#0f
	db #01,#18,#06,#00,#10,#00,#37,#0a
	db #37,#05,#37,#05,#3b,#05,#3e,#05
	db #3d,#05,#3e,#05,#3d,#05,#3e,#05
	db #40,#05,#42,#05,#43,#14,#3e,#0a
	db #3e,#05,#3e,#05,#40,#0a,#42,#0a
.l0b0d equ $ + 3
	db #43,#28,#00,#03,#0c,#01,#05,#00
	db #05,#0f,#00,#00,#09,#00,#07,#38
	db #0a,#10,#00,#08,#02,#13,#3c,#3b
	db #05,#3a,#05,#3b,#0a,#1a,#28,#13
	db #0a,#0f,#00,#00,#10,#01,#08,#00
	db #30,#31,#32,#34,#35,#36,#37,#38
.l0b3f equ $ + 5
	db #39,#3a,#10,#19,#3b,#03,#0c,#01
	db #05,#00,#05,#09,#00,#0f,#00,#00
	db #10,#00,#0c,#00,#5b,#3c,#3e,#05
	db #3d,#05,#3e,#0a,#03,#0c,#01,#01
	db #00,#0f,#01,#f4,#3e,#0a,#3e,#05
	db #3e,#05,#3c,#05,#3b,#05,#39,#05
	db #3b,#05,#37,#0a,#0f,#00,#00,#10
	db #01,#03,#0c,#01,#05,#00,#39,#3a
	db #3b,#3c,#3d,#3e,#3f,#40,#41,#42
	db #10,#19,#43,#e5,#c9,#0e,#33,#11
	db #ec,#10,#3a,#d6,#13,#b7,#3a,#12
	db #24,#20,#08,#0e,#30,#11,#f1,#10
	db #3a,#1d,#24,#2e,#40,#67,#fe,#0a
	db #38,#05,#2e,#31,#d6,#0a,#67,#7c
	db #c6,#30,#67,#22,#d2,#0b,#79,#32
	db #eb,#0b,#eb,#11,#cd,#0b,#01,#05
	db #00,#ed,#b0,#cd,#db,#13,#16,#00
	db #00,#40,#40,#40,#40,#40,#40,#40
	db #40,#40,#40,#52,#4f,#55,#4e,#44
	db #40,#31,#40,#40,#40,#40,#40,#40
	db #40,#40,#40,#40,#16,#01,#00,#31
	db #50,#40,#40,#40,#40,#40,#40,#40
	db #40,#33,#3b,#30,#30,#3a,#30,#30
	db #40,#40,#40,#40,#40,#40,#40,#40
	db #32,#50,#16,#02,#00,#40,#00
;
; init &102
; play &100
;
.music_info
	db "Psycho Pig UXB (1988)(Software Creations)()",0
	db "",0

	read "music_end.asm"
