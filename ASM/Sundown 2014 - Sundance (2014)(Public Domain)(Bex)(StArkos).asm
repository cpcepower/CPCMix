; Music of Sundown 2014 - Sundance (2014)(Public Domain)(Bex)(StArkos)
; Ripped by Megachur the 18/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SUNDO2SU.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9000

	read "music_header.asm"

.l9000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#cd,#00,#1c,#90,#25,#90
	db #44,#90,#63,#90,#71,#90,#90,#90
	db #a8,#90,#c9,#90,#00,#00,#00,#00
	db #00,#00,#0d,#1e,#90,#01,#00,#3c
	db #74,#03,#6c,#07,#24,#7c,#03,#74
	db #07,#30,#64,#03,#74,#07,#2c,#64
	db #03,#5c,#07,#2c,#64,#03,#5c,#07
	db #14,#0d,#3b,#90,#01,#00,#3c,#74
	db #04,#6c,#07,#24,#7c,#04,#74,#07
	db #30,#64,#04,#74,#07,#2c,#64,#04
	db #5c,#07,#2c,#64,#04,#5c,#07,#14
	db #0d,#5a,#90,#01,#00,#7e,#24,#09
	db #7c,#06,#7c,#04,#78,#02,#0d,#1e
	db #90,#01,#00,#7e,#2b,#0c,#7a,#2a
	db #0d,#76,#29,#10,#72,#28,#09,#2e
	db #27,#66,#26,#09,#5e,#25,#0e,#16
	db #24,#0e,#23,#06,#22,#0d,#1e,#90
	db #01,#00,#7e,#21,#f4,#7c,#f4,#78
	db #f4,#38,#34,#30,#2c,#28,#24,#20
	db #1c,#18,#14,#10,#0c,#0d,#1e,#90
	db #01,#00,#18,#20,#28,#30,#30,#30
	db #2c,#2c,#28,#28,#24,#24,#20,#20
	db #18,#18,#14,#14,#10,#10,#0c,#0c
	db #08,#08,#04,#04,#02,#20,#0d,#1e
	db #90,#01,#00,#89,#1d,#01,#00,#34
	db #2c,#24,#1c,#14,#0c,#04,#0d,#cb
	db #90,#40,#00,#00,#00,#60,#91,#00
	db #61,#91,#79,#91,#79,#91,#00,#61
	db #91,#79,#91,#79,#91,#00,#61,#91
	db #93,#91,#79,#91,#00,#61,#91,#b7
	db #91,#79,#91,#00,#61,#91,#93,#91
	db #79,#91,#00,#61,#91,#b7,#91,#79
	db #91,#00,#d3,#91,#15,#92,#79,#91
	db #00,#d3,#91,#97,#92,#79,#91,#00
	db #d3,#91,#15,#92,#79,#91,#00,#d3
	db #91,#97,#92,#79,#91,#00,#d3,#91
	db #15,#92,#f9,#92,#00,#d3,#91,#97
	db #92,#35,#93,#00,#d3,#91,#15,#92
	db #f9,#92,#00,#d3,#91,#97,#92,#35
	db #93,#00,#d3,#91,#15,#92,#78,#93
	db #00,#d3,#91,#97,#92,#a7,#93,#00
	db #d3,#91,#97,#92,#78,#93,#00,#d3
	db #91,#97,#92,#a7,#93,#01,#df,#90
	db #00,#ba,#e0,#00,#00,#01,#0e,#63
	db #0e,#7b,#0e,#b6,#60,#02,#0e,#85
	db #0e,#6d,#0e,#85,#0e,#b6,#60,#01
	db #00,#42,#60,#00,#42,#9f,#00,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#00,#72,#e1,#00,#00,#03
	db #06,#33,#06,#33,#06,#33,#06,#33
	db #06,#33,#06,#33,#06,#33,#06,#33
	db #06,#33,#06,#33,#06,#33,#06,#33
	db #06,#33,#06,#33,#06,#33,#00,#72
	db #e0,#00,#00,#03,#06,#33,#06,#33
	db #06,#33,#06,#33,#06,#33,#06,#33
	db #06,#33,#06,#33,#06,#33,#06,#33
	db #06,#33,#00,#ba,#e0,#00,#00,#01
	db #06,#72,#60,#04,#06,#a2,#60,#01
	db #06,#72,#60,#04,#06,#ba,#60,#01
	db #06,#72,#60,#04,#06,#b6,#60,#02
	db #06,#72,#60,#04,#06,#c4,#60,#02
	db #06,#72,#60,#04,#06,#ac,#60,#02
	db #06,#72,#60,#04,#06,#c4,#60,#02
	db #06,#72,#60,#04,#06,#b6,#60,#01
	db #06,#72,#60,#04,#00,#72,#e0,#00
	db #00,#03,#02,#72,#60,#05,#02,#72
	db #60,#03,#02,#72,#60,#05,#02,#72
	db #60,#03,#02,#72,#60,#05,#02,#72
	db #60,#03,#02,#72,#60,#05,#02,#72
	db #60,#03,#02,#6e,#60,#05,#02,#72
	db #60,#03,#02,#6e,#60,#05,#02,#72
	db #60,#03,#02,#6e,#60,#05,#02,#72
	db #60,#03,#02,#6e,#60,#05,#02,#72
	db #60,#03,#02,#64,#60,#05,#02,#72
	db #60,#03,#02,#64,#60,#05,#02,#72
	db #60,#03,#02,#64,#60,#05,#02,#72
	db #60,#03,#02,#64,#60,#05,#02,#72
	db #60,#03,#02,#80,#60,#05,#02,#72
	db #60,#03,#02,#80,#60,#05,#02,#72
	db #60,#03,#02,#80,#60,#05,#02,#72
	db #60,#03,#02,#80,#60,#05,#00,#72
	db #e0,#00,#00,#03,#02,#72,#60,#05
	db #02,#72,#60,#03,#02,#72,#60,#05
	db #02,#72,#60,#03,#02,#72,#60,#05
	db #02,#72,#60,#03,#02,#72,#60,#05
	db #02,#72,#60,#03,#02,#6e,#60,#05
	db #02,#72,#60,#03,#02,#6e,#60,#05
	db #02,#72,#60,#03,#02,#6e,#60,#05
	db #02,#72,#60,#03,#02,#6e,#60,#05
	db #02,#72,#60,#03,#02,#64,#60,#05
	db #02,#72,#60,#03,#02,#64,#60,#05
	db #02,#72,#60,#03,#02,#64,#60,#05
	db #02,#72,#60,#03,#02,#64,#60,#05
	db #00,#c8,#e1,#00,#00,#06,#04,#8b
	db #89,#04,#85,#89,#85,#7b,#77,#7b
	db #06,#63,#69,#6d,#69,#6d,#71,#77
	db #71,#77,#7b,#81,#7b,#81,#8b,#89
	db #02,#93,#8f,#93,#8f,#93,#8f,#99
	db #02,#d2,#4b,#8f,#99,#02,#dc,#41
	db #02,#a1,#06,#a3,#02,#a1,#02,#93
	db #02,#97,#02,#99,#00,#e6,#e0,#00
	db #00,#06,#02,#99,#02,#9d,#02,#a1
	db #02,#85,#02,#89,#02,#6d,#02,#71
	db #0a,#77,#73,#71,#6d,#71,#77,#7b
	db #02,#b6,#4b,#7b,#02,#b6,#4f,#c0
	db #41,#02,#85,#02,#89,#06,#8f,#02
	db #93,#02,#89,#02,#99,#02,#d8,#4b
	db #02,#dc,#41,#99,#93,#8f,#8b,#89
	db #85,#02,#81,#02,#85,#02,#89,#00
	db #8a,#e0,#00,#00,#07,#06,#51,#06
	db #55,#06,#4b,#06,#5b,#06,#55,#06
	db #59,#06,#5f,#04,#61,#63,#06,#69
	db #02,#42,#09,#02,#42,#0d,#02,#42
	db #11,#02,#b6,#41,#06,#73,#06,#71
	db #06,#7b,#06,#71,#77,#7b,#81,#ce
	db #e0,#00,#00,#07,#85,#89,#02,#7b
	db #06,#81,#06,#77,#06,#6d,#69,#63
	db #69,#63,#71,#77,#02,#81,#06,#85
	db #06,#89,#06,#8f,#89,#06,#85,#89
	db #02,#93,#8f,#89,#85,#81,#7b,#77
	db #71,#6d,#69,#63,#00,#95,#ed,#a0
	db #ed,#a0,#1f,#da,#e5,#93,#00,#00
	db #00,#00,#00,#18,#05,#11,#16,#94
	db #ed,#a0,#1f,#da,#f6,#93,#06,#02
	db #10,#fe,#00,#00,#18,#08,#5e,#23
	db #56,#23,#ed,#53,#02,#94,#22,#80

	jp l9409	; init & init music interrupt
	jp l9427	; stop music interrupt
	jp l941b	; init music interrupt
.l9409
	call l9e30
	ld hl,l944d
.l9410 equ $ + 1
	ld de,#0000
	ld a,d
	ld (l943c),a
	add hl,de
	ld a,(hl)
	ld (l943e),a
.l941b
	ld hl,l9430
	ld bc,#8100
	ld de,l943a
	jp #bce0
.l9427
	ld hl,l9430
	call #bce6
	jp l9e8a
.l9430
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
;
.play_music_interrupt
.l943a
;
	di
.l943c equ $ + 1
	ld a,#00
.l943e equ $ + 1
	cp #05
	jr z,l9446
	inc a
	ld (l943c),a
	ret
.l9446
	xor a
	ld (l943c),a
	jp l9454
.l944d
	ld de,#050b
	ld (bc),a
.l9453 equ $ + 2
	ld bc,#0000
;
.play_music
.l9454
;
	call l9ea4
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l9453),a
.l9464 equ $ + 1
	ld a,#01
	dec a
	jp z,l9471
	ld b,#c0
.l946b
	djnz l946b
	nop
	jp l9728
.l9472 equ $ + 1
.l9471
	ld a,#01
	dec a
	jp z,l947f
	ld b,#27
.l9479
	djnz l9479
	nop
	jp l9517
.l9480 equ $ + 1
.l947f
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jp c,l948e
	ld b,#02
.l948a
	djnz l948a
	jr l9495
.l948e
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l9495
	rra
	jp c,l94a0
	nop
	nop
	nop
	nop
	nop
	jr l94a5
.l94a0
	ld de,l95aa
	ldi
.l94a5
	rra
	jp c,l94b0
	nop
	nop
	nop
	nop
	nop
	jr l94b5
.l94b0
	ld de,l9643
	ldi
.l94b5
	rra
	jp c,l94c0
	nop
	nop
	nop
	nop
	nop
	jr l94c5
.l94c0
	ld de,l96dc
	ldi
.l94c5
	ld de,l956b
	ldi
	ldi
	ld de,l9604
	ldi
	ldi
	ld de,l969d
	ldi
	ldi
	rra
	jp c,l94e5
	nop
	nop
	nop
	nop
	nop
	jr l94ea
.l94e5
	ld de,l9516
	ldi
.l94ea
	rra
	jp c,l94f6
	ld b,#02
.l94f0
	djnz l94f0
	nop
	nop
	jr l94fe
.l94f6
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l9502),de
.l94fe
	ld (l9480),hl
.l9502 equ $ + 1
	ld hl,#0000
	ld (l952a),hl
	ld a,#01
	ld (l951b),a
	ld (l955c),a
	ld (l95f5),a
	ld (l968e),a
.l9516 equ $ + 1
	ld a,#01
.l9517
	ld (l9472),a
.l951b equ $ + 1
	ld a,#01
	dec a
	jp z,l9529
	ld b,#08
.l9522
	djnz l9522
	nop
	nop
	jp l9558
.l952a equ $ + 1
.l9529
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jp c,l953a
	ld b,#04
.l9535
	djnz l9535
	nop
	jr l9555
.l953a
	srl a
	jp z,l9542
	nop
	jr l9544
.l9542
	ld a,(hl)
	inc hl
.l9544
	jp c,l954b
	jr l9550
	jr nc,l9550
.l954b
	ld (l9453),a
	jr l9553
.l9550
	ld (l9727),a
.l9553
	ld a,#01
.l9555
	ld (l952a),hl
.l9558
	ld (l951b),a
.l955c equ $ + 1
	ld a,#01
	dec a
	jp z,l956a
	ld b,#2a
.l9563
	djnz l9563
	nop
	nop
	jp l95f1
.l956b equ $ + 1
.l956a
	ld hl,#0000
	call l9b40
	ld (l956b),hl
	jp nc,l957d
	ld b,#18
.l9578
	djnz l9578
	jp l95f1
.l957d
	ld a,d
	rra
	jp c,l9587
	nop
	nop
	nop
	jr l958c
.l9587
	and #0f
	ld (l97b8),a
.l958c
	rl d
	jp c,l9596
	nop
	nop
	nop
	jr l959a
.l9596
	ld (l97a6),ix
.l959a
	rl d
	jp c,l95a8
	ld b,#10
.l95a1
	djnz l95a1
	nop
	nop
	nop
	jr l95ef
.l95a8
	ld a,e
.l95aa equ $ + 1
	add #00
	ld (l97b7),a
	ld hl,#0000
	ld (l97a3),hl
	rl d
	jp c,l95cb
.l95ba equ $ + 1
	ld hl,#0000
	ld a,(l97cf)
	ld (l97c0),a
	ld b,#07
.l95c4
	djnz l95c4
	nop
	nop
	nop
	jr l95ec
.l95cb
	ld l,b
	add hl,hl
.l95ce equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l97cf),a
	ld (l97c0),a
	ld a,(hl)
	or a
	jp nz,l95e5
	nop
	jr l95e8
.l95e5
	ld (l98ba),a
.l95e8
	inc hl
	ld (l95ba),hl
.l95ec
	ld (l97ba),hl
.l95ef
	ld a,#01
.l95f1
	ld (l955c),a
.l95f5 equ $ + 1
	ld a,#01
	dec a
	jp z,l9603
	ld b,#2a
.l95fc
	djnz l95fc
	nop
	nop
	jp l968a
.l9604 equ $ + 1
.l9603
	ld hl,#0000
	call l9b40
	ld (l9604),hl
	jp nc,l9616
	ld b,#18
.l9611
	djnz l9611
	jp l968a
.l9616
	ld a,d
	rra
	jp c,l9620
	nop
	nop
	nop
	jr l9625
.l9620
	and #0f
	ld (l977d),a
.l9625
	rl d
	jp c,l962f
	nop
	nop
	nop
	jr l9633
.l962f
	ld (l976b),ix
.l9633
	rl d
	jp c,l9641
	ld b,#10
.l963a
	djnz l963a
	nop
	nop
	nop
	jr l9688
.l9641
	ld a,e
.l9643 equ $ + 1
	add #00
	ld (l977c),a
	ld hl,#0000
	ld (l9768),hl
	rl d
	jp c,l9664
.l9653 equ $ + 1
	ld hl,#0000
	ld a,(l9794)
	ld (l9785),a
	ld b,#07
.l965d
	djnz l965d
	nop
	nop
	nop
	jr l9685
.l9664
	ld l,b
	add hl,hl
.l9667 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l9794),a
	ld (l9785),a
	ld a,(hl)
	or a
	jp nz,l967e
	nop
	jr l9681
.l967e
	ld (l98ba),a
.l9681
	inc hl
	ld (l9653),hl
.l9685
	ld (l977f),hl
.l9688
	ld a,#01
.l968a
	ld (l95f5),a
.l968e equ $ + 1
	ld a,#01
	dec a
	jp z,l969c
	ld b,#2a
.l9695
	djnz l9695
	nop
	nop
	jp l9723
.l969d equ $ + 1
.l969c
	ld hl,#0000
	call l9b40
	ld (l969d),hl
	jp nc,l96af
	ld b,#18
.l96aa
	djnz l96aa
	jp l9723
.l96af
	ld a,d
	rra
	jp c,l96b9
	nop
	nop
	nop
	jr l96be
.l96b9
	and #0f
	ld (l9745),a
.l96be
	rl d
	jp c,l96c8
	nop
	nop
	nop
	jr l96cc
.l96c8
	ld (l9733),ix
.l96cc
	rl d
	jp c,l96da
	ld b,#10
.l96d3
	djnz l96d3
	nop
	nop
	nop
	jr l9721
.l96da
	ld a,e
.l96dc equ $ + 1
	add #00
	ld (l9744),a
	ld hl,#0000
	ld (l9730),hl
	rl d
	jp c,l96fd
.l96ec equ $ + 1
	ld hl,#0000
	ld a,(l975c)
	ld (l974d),a
	ld b,#07
.l96f6
	djnz l96f6
	nop
	nop
	nop
	jr l971e
.l96fd
	ld l,b
	add hl,hl
.l9700 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l975c),a
	ld (l974d),a
	ld a,(hl)
	or a
	jp nz,l9717
	nop
	jr l971a
.l9717
	ld (l98ba),a
.l971a
	inc hl
	ld (l96ec),hl
.l971e
	ld (l9747),hl
.l9721
	ld a,#01
.l9723
	ld (l968e),a
.l9727 equ $ + 1
	ld a,#01
.l9728
	ld (l9464),a
	ld iy,l98d9
.l9730 equ $ + 1
	ld hl,#0000
.l9733 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9730),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l9745 equ $ + 2
.l9744 equ $ + 1
	ld de,#0000
.l9747 equ $ + 1
	ld hl,#0000
	call l98e4
.l974d equ $ + 1
	ld a,#01
	dec a
	jp z,l9758
	nop
	nop
	nop
	nop
	jr l975d
.l9758
	ld (l9747),hl
.l975c equ $ + 1
	ld a,#06
.l975d
	ld (l974d),a
	ld a,lx
	ex af,af'
	ld iy,l98d7
.l9768 equ $ + 1
	ld hl,#0000
.l976b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9768),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l977d equ $ + 2
.l977c equ $ + 1
	ld de,#0000
.l977f equ $ + 1
	ld hl,#0000
	call l98e4
.l9785 equ $ + 1
	ld a,#01
	dec a
	jp z,l9790
	nop
	nop
	nop
	nop
	jr l9795
.l9790
	ld (l977f),hl
.l9794 equ $ + 1
	ld a,#06
.l9795
	ld (l9785),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l98d5
.l97a3 equ $ + 1
	ld hl,#0000
.l97a6 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l97a3),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l97b8 equ $ + 2
.l97b7 equ $ + 1
	ld de,#0000
.l97ba equ $ + 1
	ld hl,#0000
	call l98e4
.l97c0 equ $ + 1
	ld a,#01
	dec a
	jp z,l97cb
	nop
	nop
	nop
	nop
	jr l97d0
.l97cb
	ld (l97ba),hl
.l97cf equ $ + 1
	ld a,#06
.l97d0
	ld (l97c0),a
	ex af,af'
	or lx
.l97d6
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l98d5
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
	call l98b8
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
.l98b6
	nop
	ret
.l98b8
	ld a,(hl)
.l98ba equ $ + 1
	cp #ff
	jr z,l98ce
	ld (l98ba),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l98ce
	ld b,#06
.l98d0
	djnz l98d0
	nop
	nop
	ret
.l98d5
	nop
	nop
.l98d7
	nop
	nop
.l98d9
	nop
	nop
.l98db
	nop
.l98dc
	nop
	nop
	nop
	nop
	nop
.l98e1
	nop
	nop
.l98e3
	nop
.l98e4
	ld a,(hl)
	and #0f
	cp #0d
	jp nz,l98f3
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jr l98ff
.l98f3
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l98ff
	ld b,(hl)
	inc hl
	rr b
	jp c,l9982
	rr b
	jp c,l993d
	ld a,b
	and #0f
	jp nz,l991f
	ld (iy+#07),a
	ld lx,#09
	ld b,#3a
.l9919
	djnz l9919
	nop
	nop
	nop
	ret
.l991f
	ld lx,#08
	sub d
	jr nc,l9926
	xor a
.l9926
	ld (iy+#07),a
	rr b
	call l9aff
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld b,#24
.l9937
	djnz l9937
	nop
	nop
	nop
	ret
.l993d
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jp nz,l994e
	nop
	nop
	nop
	nop
	jr l9954
.l994e
	ld (l98db),a
	ld lx,#00
.l9954
	ld a,b
	and #0f
	sub d
	jr nc,l995b
	xor a
.l995b
	ld (iy+#07),a
	bit 5,c
	jp nz,l996c
	inc lx
	ld b,#34
.l9967
	djnz l9967
	nop
	nop
	ret
.l996c
	rr b
	bit 6,c
	call l9ae8
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld b,#1e
.l997c
	djnz l997c
	nop
	nop
	nop
	ret
.l9982
	rr b
	jp c,l9991
	ld a,#03
.l9989
	dec a
	jp nz,l9989
	nop
	nop
	jr l99a6
.l9991
	ld a,(l97c0)
	ld c,a
	ld a,(l97cf)
	cp c
	jp z,l99a1
	nop
	nop
	nop
	jr l99a6
.l99a1
	ld a,#fe
	ld (l98ba),a
.l99a6
	bit 1,b
	jp nz,l9a89
	ld a,#04
.l99ad
	dec a
	jr nz,l99ad
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l98e3),a
	bit 0,b
	jp z,l9a32
	bit 2,b
	call l9ae8
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l99db),a
	ld a,b
	exx
.l99db equ $ + 1
	jr l99dc
.l99dc
	jp l9ba2
	nop
	jp l9bc1
	nop
	jp l9be0
	nop
	jp l9bff
	nop
	jp l9c19
	nop
	jp l9c2f
	nop
	jp l9c41
	nop
	jp l9c4f
.l99fb
	jp c,l9a00
	jr l9a02
.l9a00
	inc hl
	nop
.l9a02
	bit 5,a
	jp nz,l9a0d
	ld b,#03
.l9a09
	djnz l9a09
	jr l9a19
.l9a0d
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
.l9a19
	ld (l98e1),hl
	exx
.l9a1d
	bit 7,c
	jp nz,l9a29
	ld b,#02
.l9a24
	djnz l9a24
	nop
	nop
	ret
.l9a29
	ld a,(hl)
	inc hl
	ld (l98db),a
	ld lx,#00
	ret
.l9a32
	nop
	nop
	nop
	bit 2,b
	call l9ae8
	ld (l98e1),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l9a49),a
	ld a,b
	exx
.l9a49 equ $ + 1
	jr l9a4a
.l9a4a
	jp l9c59
	nop
	jp l9c78
	nop
	jp l9c97
	nop
	jp l9cb6
	nop
	jp l9cd0
	nop
	jp l9ce6
	nop
	jp l9cf8
	nop
	jp l9d06
.l9a69
	bit 5,a
	jp nz,l9a74
	ld b,#03
.l9a70
	djnz l9a70
	jr l9a80
.l9a74
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
.l9a80
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l9a1d
.l9a89
	bit 0,b
	jr z,l9a94
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l98e4
.l9a94
	ld (iy+#07),#10
	bit 5,b
	jp nz,l9aa9
	ld lx,#09
	ld b,#15
.l9aa2
	djnz l9aa2
	nop
	nop
	nop
	jr l9abc
.l9aa9
	ld lx,#08
	ld hx,e
	bit 2,b
	call l9ae8
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l9abc
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l98e3),a
	rr b
	rr b
	bit 2,b
	call l9ae8
	ld (l98e1),hl
	exx
	bit 5,b
	jp z,l9ae2
	ld a,(hl)
	inc hl
	ld (l98db),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l9ae2
	ld b,#03
.l9ae4
	djnz l9ae4
	nop
	ret
.l9ae8
	jp z,l9aff
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
.l9af8
	dec a
	jp nz,l9af8
	nop
	nop
	ret
.l9aff
	bit 4,b
	jr z,l9b11
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
	jr l9b17
.l9b11
	ld a,#04
.l9b13
	dec a
	jp nz,l9b13
.l9b17
	ld a,e
	bit 3,b
	jp nz,l9b27
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l9b31
.l9b27
	add (hl)
	inc hl
	cp #90
	jr nc,l9b2f
	jr l9b31
.l9b2f
	ld a,#8f
.l9b31
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l9d10
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l9b40
	ld a,(hl)
	inc hl
	srl a
	jp c,l9b83
	sub #20
	jp c,l9b99
	jp z,l9b7f
	dec a
	ld e,a
	nop
	nop
	nop
	nop
	nop
.l9b56
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jp c,l9b68
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l9b70
.l9b68
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l9b70
	rla
	rla
	jp nc,l9b79
	ld b,(hl)
	inc hl
	or a
	ret
.l9b79
	nop
	nop
	nop
	nop
	nop
	ret
.l9b7f
	ld e,(hl)
	inc hl
	jr l9b56
.l9b83
	ld d,#40
	sub #01
	ld e,a
	jp nc,l9b93
	ld e,(hl)
	inc hl
	or a
	ld b,#08
.l9b90
	djnz l9b90
	ret
.l9b93
	ld b,#09
.l9b95
	djnz l9b95
	nop
	ret
.l9b99
	add #20
	ld b,#09
.l9b9d
	djnz l9b9d
	nop
	nop
	ret
.l9ba2
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
	jp l99fb
.l9bc1
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
	jp l99fb
.l9be0
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
	jp l99fb
.l9bff
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld b,#02
.l9c11
	djnz l9c11
	nop
	nop
	nop
	jp l99fb
.l9c19
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld b,#03
.l9c27
	djnz l9c27
	nop
	nop
	nop
	jp l99fb
.l9c2f
	srl h
	rr l
	srl h
	rr l
	ld b,#04
.l9c39
	djnz l9c39
	nop
	nop
	nop
	jp l99fb
.l9c41
	srl h
	rr l
	ld b,#05
.l9c47
	djnz l9c47
	nop
	nop
	nop
	jp l99fb
.l9c4f
	ld b,#06
.l9c51
	djnz l9c51
	nop
	nop
	nop
	jp l99fb
.l9c59
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
	jp l9a69
.l9c78
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
	jp l9a69
.l9c97
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
	jp l9a69
.l9cb6
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	ld b,#02
.l9cc8
	djnz l9cc8
	nop
	nop
	nop
	jp l9a69
.l9cd0
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	ld b,#03
.l9cde
	djnz l9cde
	nop
	nop
	nop
	jp l9a69
.l9ce6
	sla l
	rl h
	sla l
	rl h
	ld b,#04
.l9cf0
	djnz l9cf0
	nop
	nop
	nop
	jp l9a69
.l9cf8
	sla l
	rl h
	ld b,#05
.l9cfe
	djnz l9cfe
	nop
	nop
	nop
	jp l9a69
.l9d06
	ld b,#06
.l9d08
	djnz l9d08
	nop
	nop
	nop
	jp l9a69
.l9d10
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
.l9e30
;
	ld hl,#0008
	add hl,de
	ld de,l9410
	ldi
	ld de,l9727
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l95ce),hl
	ld (l9667),hl
	ld (l9700),hl
	add hl,bc
	ld de,l9516
	ldi
	ld de,l95aa
	ldi
	ld de,l9643
	ldi
	ld de,l96dc
	ldi
	ld de,l9502
	ldi
	ldi
	ld (l9480),hl
	ld a,#01
	ld (l9464),a
	ld (l9472),a
	ld a,#ff
	ld (l98e3),a
	ld hl,(l95ce)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l97ba),hl
	ld (l977f),hl
	ld (l9747),hl
	ret
.l9e8a
	call l9ea4
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	ld hl,l98dc
	ld bc,#0500
.l9e9b
	ld (hl),c
	inc hl
	djnz l9e9b
	ld a,#3f
	jp l97d6
.l9ea4
	ld a,i
	di
	ld a,#f3
	jp po,l9eae
	ld a,#fb
.l9eae
	ld (l98b6),a
	ret
;
.init_music		; added by Megachur
;
	ld de,l9000
	jp real_init_music
;
.music_info
	db "Sundown 2014 - Sundance (2014)(Public Domain)(Bex)",0
	db "StArkos",0

	read "music_end.asm"
