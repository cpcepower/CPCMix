; Music of International Vodka Party 2008 - Oh No 2 (2008)(Benediction)(PulkoMandy)(StArkos)
; Ripped by Megachur the 01/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "INVP2ON2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

.StArkosModAdr
	db #53,#4b,#31,#30,#00,#40,#01,#32
	db #00,#2d,#40,#31,#40,#6d,#40,#85
	db #40,#1e,#40,#2f,#40,#43,#40,#82
	db #40,#05,#c0,#00,#00,#03,#c0,#00
	db #00,#c0,#ff,#ff,#01,#c2,#01,#01
	db #01,#c0,#00,#00,#01,#7f,#02,#7f
	db #06,#5d,#41,#84,#41,#c9,#41,#f1
	db #41,#84,#41,#19,#42,#5b,#42,#84
	db #41,#19,#42,#87,#42,#84,#41,#19
	db #42,#ac,#42,#84,#41,#19,#42,#d3
	db #42,#84,#41,#19,#42,#f1,#41,#84
	db #41,#19,#42,#5b,#42,#84,#41,#19
	db #42,#87,#42,#84,#41,#19,#42,#f1
	db #41,#84,#41,#19,#42,#18,#f8,#42
	db #02,#00,#00,#01,#f8,#42,#02,#00
	db #00,#0a,#00,#00,#fe,#f8,#42,#cc
	db #f8,#42,#0c,#f8,#42,#8f,#40,#99
	db #40,#af,#40,#01,#41,#53,#41,#96
	db #40,#99,#40,#ff,#37,#00,#00,#00
	db #00,#a5,#40,#af,#40,#00,#37,#00
	db #4f,#01,#00,#0e,#0d,#4c,#ff,#ff
	db #0c,#0c,#4c,#01,#00,#0c,#0c,#96
	db #40,#01,#41,#00,#b7,#00,#0f,#2f
	db #03,#2f,#07,#0e,#2e,#03,#2e,#07
	db #0d,#2d,#03,#2d,#07,#0c,#2c,#03
	db #2c,#07,#0b,#2b,#03,#2b,#07,#0a
	db #2a,#03,#2a,#07,#09,#29,#03,#29
	db #07,#08,#28,#03,#28,#07,#07,#27
	db #03,#27,#07,#06,#26,#03,#26,#07
	db #05,#25,#03,#25,#07,#04,#24,#03
	db #24,#07,#03,#23,#03,#23,#07,#02
	db #22,#03,#22,#07,#01,#21,#03,#21
	db #07,#96,#40,#53,#41,#00,#b7,#00
	db #0f,#2f,#04,#2f,#07,#0e,#2e,#04
	db #2e,#07,#0d,#2d,#04,#2d,#07,#0c
	db #2c,#04,#2c,#07,#0b,#2b,#04,#2b
	db #07,#0a,#2a,#04,#2a,#07,#09,#29
	db #04,#29,#07,#08,#28,#04,#28,#07
	db #07,#27,#04,#27,#07,#06,#26,#04
	db #26,#07,#05,#25,#04,#25,#07,#04
	db #24,#04,#24,#07,#03,#23,#04,#23
	db #07,#02,#22,#04,#22,#07,#01,#21
	db #04,#21,#07,#5b,#41,#5d,#41,#00
	db #37,#00,#00,#80,#10,#6e,#81,#01
	db #ce,#6b,#6f,#ce,#6b,#6f,#d6,#65
	db #6f,#5d,#61,#75,#d6,#73,#d6,#6b
	db #d2,#57,#ce,#5d,#57,#ce,#53,#57
	db #d4,#57,#53,#57,#5d,#57,#4d,#d6
	db #4f,#d6,#53,#c2,#c4,#04,#ce,#86
	db #80,#02,#ce,#87,#d0,#87,#d2,#ca
	db #86,#80,#02,#d2,#ca,#ce,#7e,#80
	db #03,#ce,#7f,#d0,#83,#ce,#83,#ce
	db #83,#7f,#ce,#83,#d2,#86,#80,#02
	db #ce,#87,#d0,#87,#d2,#ca,#86,#80
	db #02,#d2,#ca,#ce,#7e,#80,#03,#ce
	db #7f,#d0,#7c,#80,#02,#ce,#7d,#ce
	db #82,#80,#03,#7c,#80,#02,#ce,#7d
	db #c2,#ce,#6e,#85,#01,#ce,#6b,#6f
	db #ce,#6b,#6f,#d6,#65,#6f,#5d,#61
	db #75,#d6,#73,#d6,#6b,#d2,#57,#ce
	db #5d,#57,#ce,#53,#57,#d4,#57,#53
	db #57,#5d,#57,#4d,#d6,#4f,#d6,#53
	db #c2,#6e,#80,#01,#ce,#6b,#6f,#ce
	db #6b,#6f,#d6,#6f,#ce,#6b,#ce,#75
	db #d6,#73,#d6,#6b,#d2,#6f,#ce,#75
	db #6f,#ce,#6b,#6f,#d6,#6f,#ce,#6b
	db #ce,#65,#d6,#6b,#d6,#65,#61,#65
	db #61,#56,#80,#04,#57,#3f,#57,#57
	db #57,#57,#3f,#57,#3f,#57,#57,#53
	db #53,#57,#57,#4f,#4f,#37,#4f,#4f
	db #4f,#4f,#3b,#53,#3b,#53,#53,#4f
	db #4f,#53,#53,#57,#57,#3f,#57,#57
	db #57,#57,#3f,#57,#3f,#57,#57,#53
	db #53,#57,#57,#4f,#4f,#37,#4f,#4f
	db #4f,#4f,#53,#53,#3b,#53,#37,#4d
	db #4d,#53,#53,#74,#80,#01,#ce,#73
	db #ce,#6f,#ce,#75,#ce,#73,#ce,#6f
	db #ce,#7d,#d2,#7f,#d6,#79,#d6,#75
	db #ce,#79,#ce,#75,#ce,#73,#ce,#6f
	db #ce,#75,#ce,#73,#ce,#6f,#ce,#65
	db #67,#ce,#65,#67,#d6,#6b,#c2,#74
	db #80,#01,#ce,#73,#ce,#6f,#ce,#75
	db #ce,#73,#ce,#6f,#ce,#83,#ce,#c6
	db #fd,#ce,#7f,#d6,#7d,#d6,#87,#ce
	db #83,#ce,#87,#e2,#7f,#d2,#7d,#d6
	db #c6,#04,#79,#c2,#7a,#80,#01,#ce
	db #6d,#ce,#73,#ce,#77,#d6,#73,#d2
	db #7b,#ce,#6d,#ce,#73,#ce,#77,#d2
	db #69,#ce,#6d,#d0,#73,#6d,#d2,#55
	db #d2,#55,#d2,#65,#d2,#69,#d6,#6d
	db #d6,#73,#c2,#7a,#80,#01,#ce,#81
	db #ce,#77,#ce,#7b,#d6,#81,#d0,#89
	db #85,#d2,#89,#ce,#81,#d6,#77,#ce
	db #7b,#d2,#63,#d2,#63,#d2,#63,#ce
	db #77,#d2,#81,#d6,#73,#d6,#77,#c2
	db #ff,#00,#00,#00,#00,#00,#00,#00
	jp l4b70
	jp l430d
	jp l4b54
.l430c equ $ + 3
.l430b equ $ + 2
	db #00,#43,#00,#00
;
.play_music
.l430d
;
	xor a
	ld (l430b),a
	ld (l4b3b),a
.l4315 equ $ + 1
	ld a,#00
.l4317 equ $ + 1
	cp #00
	jr z,l4321
	inc a
	ld (l4315),a
	jp l45b0
.l4321
	xor a
	ld (l4315),a
.l4325
	or a
	jp nc,l4407
	ld (l442f),a
	ld (l449a),a
	ld (l4505),a
	ld a,#b7
	ld (l4325),a
.l4338 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l436e
.l433e equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l436b
	ld b,a
	and #1f
	bit 4,a
	jr z,l434f
	or #e0
.l434f
	ld (l443c),a
	rl b
	rl b
	jr nc,l435d
	ld a,(hl)
	ld (l44a7),a
	inc hl
.l435d
	rl b
	jr nc,l4366
	ld a,(hl)
	ld (l4512),a
	inc hl
.l4366
	ld (l433e),hl
	jr l4371
.l436b
	ld (l433e),hl
.l436e
	ld (l4338),a
.l4372 equ $ + 1
.l4371
	ld a,#00
	sub #01
	jr c,l437e
	ld (l4372),a
.l437b equ $ + 1
	ld a,#00
	jr l4399
.l437f equ $ + 1
.l437e
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l438c
	ld (l437f),hl
	jr l4399
.l438c
	ld (l437b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l437f),hl
	ld (l4372),a
	ld a,b
.l4399
	ld (l4570),a
.l439d equ $ + 1
	ld hl,#0000
	ld de,l4435
	ldi
	ldi
	ld de,l44a0
	ldi
	ldi
	ld de,l450b
	ldi
	ldi
	ld (l439d),hl
.l43b8 equ $ + 1
	ld a,#00
	or a
	jr nz,l43ca
.l43bd equ $ + 1
	ld a,#00
	sub #01
	jr c,l43d8
	ld (l43bd),a
.l43c6 equ $ + 1
	ld hl,#0000
	jr l4410
.l43cb equ $ + 1
.l43ca
	ld a,#00
	sub #01
	jr c,l43d8
	ld (l43cb),a
	ld hl,(l43d9)
	jr l43fd
.l43d9 equ $ + 1
.l43d8
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l43f5
	ld (l43bd),a
	xor a
	ld (l43b8),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l43d9),hl
	ex de,hl
	ld (l43c6),hl
	jr l4410
.l43f5
	ld (l43cb),a
	ld a,#01
	ld (l43b8),a
.l43fd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l43d9),hl
	ex de,hl
	jr l4410
.l4408 equ $ + 1
.l4407
	ld a,#00
	sub #01
	jr nc,l442b
.l440e equ $ + 1
	ld hl,#0000
.l4410
	ld a,(hl)
	inc hl
	srl a
	jr c,l4428
	srl a
	jr c,l441f
	ld (l4317),a
	jr l4427
.l441f
	ld (l430b),a
.l4423 equ $ + 1
	ld a,#01
	ld (l430c),a
.l4427
	xor a
.l4428
	ld (l440e),hl
.l442b
	ld (l4408),a
.l442f equ $ + 1
	ld a,#00
	sub #01
	jr nc,l4496
.l4435 equ $ + 1
	ld hl,#0000
.l4438 equ $ + 1
	ld bc,#0100
.l443c equ $ + 2
.l443b equ $ + 1
	ld de,#0000
.l443f equ $ + 2
	ld lx,#00
	call l46ad
	ld a,lx
	ld (l443f),a
	ld (l45ba),hl
	exx
	ld (l4435),hl
	ld a,c
	ld (l4438),a
	ld (l45b4),a
	xor a
	or hy
	jr nz,l4494
	ld (l45d7),a
	ld d,a
	ld a,e
	ld (l443b),a
	ld l,d
	ld h,l
	ld (l45b7),hl
.l4469 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l45e8
	ldi
	ldi
	ld de,l45e0
	ldi
	ldi
	ld de,l45d9
	ldi
	ld de,l45ea
	ldi
	ld a,(hl)
	inc hl
	ld (l45c9),hl
	ld hl,l4b3b
	or (hl)
	ld (hl),a
.l4494
	ld a,ly
.l4496
	ld (l442f),a
.l449a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l4501
.l44a0 equ $ + 1
	ld hl,#0000
.l44a3 equ $ + 1
	ld bc,#0200
.l44a7 equ $ + 2
.l44a6 equ $ + 1
	ld de,#0000
.l44aa equ $ + 2
	ld lx,#00
	call l46ad
	ld a,lx
	ld (l44aa),a
	ld (l460b),hl
	exx
	ld (l44a0),hl
	ld a,c
	ld (l44a3),a
	ld (l4605),a
	xor a
	or hy
	jr nz,l44ff
	ld (l4628),a
	ld d,a
	ld a,e
	ld (l44a6),a
	ld l,d
	ld h,l
	ld (l4608),hl
.l44d4 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l4639
	ldi
	ldi
	ld de,l4631
	ldi
	ldi
	ld de,l462a
	ldi
	ld de,l463b
	ldi
	ld a,(hl)
	inc hl
	ld (l461a),hl
	ld hl,l4b3b
	or (hl)
	ld (hl),a
.l44ff
	ld a,ly
.l4501
	ld (l449a),a
.l4505 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l456c
.l450b equ $ + 1
	ld hl,#0000
.l450e equ $ + 1
	ld bc,#0300
.l4512 equ $ + 2
.l4511 equ $ + 1
	ld de,#0000
.l4515 equ $ + 2
	ld lx,#00
	call l46ad
	ld a,lx
	ld (l4515),a
	ld (l465c),hl
	exx
	ld (l450b),hl
	ld a,c
	ld (l450e),a
	ld (l4656),a
	xor a
	or hy
	jr nz,l456a
	ld (l4679),a
	ld d,a
	ld a,e
	ld (l4511),a
	ld l,d
	ld h,l
	ld (l4659),hl
.l453f equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l468a
	ldi
	ldi
	ld de,l4682
	ldi
	ldi
	ld de,l467b
	ldi
	ld de,l468c
	ldi
	ld a,(hl)
	inc hl
	ld (l466b),hl
	ld hl,l4b3b
	or (hl)
	ld (hl),a
.l456a
	ld a,ly
.l456c
	ld (l4505),a
.l4570 equ $ + 1
	ld a,#00
	sub #01
	jr c,l457a
	ld (l4570),a
	jr l45b0
.l457a
	ld a,#37
	ld (l4325),a
	ld hl,(l439d)
.l4583 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l45b0
	ld (l4338),a
	ld (l4372),a
	ld (l4408),a
.l4594 equ $ + 1
	ld hl,#0000
	ld (l433e),hl
.l459a equ $ + 1
	ld hl,#0000
	ld (l437f),hl
.l45a0 equ $ + 1
	ld hl,#0000
	ld (l439d),hl
.l45a6 equ $ + 1
	ld hl,#0000
	ld (l43d9),hl
.l45ac equ $ + 1
	ld a,#00
	ld (l43b8),a
.l45b0
	ld hl,l4b3b
.l45b4 equ $ + 1
	ld d,#00
	exx
.l45b7 equ $ + 1
	ld hl,#0000
.l45ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l45b7),hl
	ld (l47e8),hl
	ld a,(l443f)
	ld lx,a
.l45c9 equ $ + 1
	ld hl,#0000
	ld iy,l49d6
	ld a,(l45d7)
	call l4742
	ex de,hl
.l45d7 equ $ + 1
	ld a,#00
.l45d9 equ $ + 1
	cp #00
	jr z,l45df
	inc a
	jr l45fc
.l45e0 equ $ + 1
.l45df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l45f8
.l45e8 equ $ + 1
	ld de,#0000
.l45ea
	or a
	jr c,l45f8
.l45ee equ $ + 1
	ld hl,#0000
	ld (l45e0),hl
	dec a
	ld (l45d9),a
	inc a
.l45f8
	ld (l45c9),de
.l45fc
	ld (l45d7),a
	ld a,hx
	ld (l46a9),a
.l4605 equ $ + 1
	ld d,#00
	exx
.l4608 equ $ + 1
	ld hl,#0000
.l460b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4608),hl
	ld (l47e8),hl
	ld a,(l44aa)
	ld lx,a
.l461a equ $ + 1
	ld hl,#0000
	ld iy,l4a27
	ld a,(l4628)
	call l4742
	ex de,hl
.l4628 equ $ + 1
	ld a,#00
.l462a equ $ + 1
	cp #00
	jr z,l4630
	inc a
	jr l464d
.l4631 equ $ + 1
.l4630
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l4649
.l4639 equ $ + 1
	ld de,#0000
.l463b
	or a
	jr c,l4649
.l463f equ $ + 1
	ld hl,#0000
	ld (l4631),hl
	dec a
	ld (l462a),a
	inc a
.l4649
	ld (l461a),de
.l464d
	ld (l4628),a
	ld a,hx
	ld (l46a6),a
.l4656 equ $ + 1
	ld d,#00
	exx
.l4659 equ $ + 1
	ld hl,#0000
.l465c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4659),hl
	ld (l47e8),hl
	ld a,(l4515)
	ld lx,a
.l466b equ $ + 1
	ld hl,#0000
	ld iy,l4a78
	ld a,(l4679)
	call l4742
	ex de,hl
.l4679 equ $ + 1
	ld a,#00
.l467b equ $ + 1
	cp #00
	jr z,l4681
	inc a
	jr l469e
.l4682 equ $ + 1
.l4681
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l469a
.l468a equ $ + 1
	ld de,#0000
.l468c
	or a
	jr c,l469a
.l4690 equ $ + 1
	ld hl,#0000
	ld (l4682),hl
	dec a
	ld (l467b),a
	inc a
.l469a
	ld (l466b),de
.l469e
	ld (l4679),a
	ld a,hx
	sla a
.l46a6 equ $ + 1
	or #00
	rla
.l46a9 equ $ + 1
	or #00
	jp l49cb
.l46ad
	ld a,(hl)
	inc hl
	srl a
	jr c,l46e6
	cp #60
	jr nc,l46ee
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l46c6
	and #0f
	ld c,a
.l46c6
	rl b
	jr nc,l46cc
	ld e,(hl)
	inc hl
.l46cc
	rl b
	jr nc,l46de
.l46d0
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l46da
	dec h
.l46da
	ld ly,#00
	ret
.l46de
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l46e6
	ld hy,#00
	add d
	ld lx,a
	jr l46de
.l46ee
	ld hy,#01
	sub #60
	jr z,l470f
	dec a
	jr z,l4726
	dec a
	jr z,l4718
	dec a
	jr z,l46d0
	dec a
	jr z,l4722
	dec a
	jr z,l4737
	dec a
	jr z,l472e
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l470f
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l4718
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l4722
	ld c,(hl)
	inc hl
	jr l46d0
.l4726
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l472e
	ld a,(hl)
	inc hl
	ld (l430b),a
	ld a,b
	ld (l430c),a
.l4737
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l4742
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l47f8
	bit 4,e
	jr z,l47aa
	ld a,(hl)
	bit 6,a
	jr z,l4777
	ld d,#08
	inc hl
	and #1f
	jr z,l475e
	ld (l4ac9),a
	res 3,d
.l475e
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l4767
	xor a
.l4767
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l4777
	ld (l4ac9),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l4793
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l478c
	xor a
.l478c
	ld (iy+#36),a
	ld hx,d
	jr l47bd
.l4793
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l479c
	xor a
.l479c
	ld (iy+#36),a
.l479f
	ld hx,d
	ret
.l47a2
	ld (iy+#36),#00
	ld d,#09
	jr l479f
.l47aa
	ld d,#08
	ld a,e
	and #0f
	jr z,l47a2
	exx
	sub d
	exx
	jr nc,l47b7
	xor a
.l47b7
	ld (iy+#36),a
	ld hx,#08
.l47bd
	bit 5,e
	jr z,l47c5
	ld a,(hl)
	inc hl
	jr l47c6
.l47c5
	xor a
.l47c6
	bit 6,e
	jr z,l47d0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l47d3
.l47d0
	ld de,#0000
.l47d3
	add lx
	cp #60
	jr c,l47db
	ld a,#60
.l47db
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l490b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l47e8 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l47f8
	or a
	jr nz,l4802
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l4802
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
	ld (l4b34),a
	bit 3,e
	jr z,l4824
	ld a,(hl)
	inc hl
	ld (l4ac9),a
	res 3,d
	jr l4824
.l4824
	ld hx,d
	xor a
	bit 7,b
	jr z,l4836
	bit 6,b
	jr z,l4831
	ld a,(hl)
	inc hl
.l4831
	ld (l48e5),a
	ld a,#01
.l4836
	ld (l487e),a
	ld a,b
	rra
	and #0e
	ld (l488f),a
	bit 4,e
	jp nz,l48f0
	bit 1,e
	jr z,l484d
	ld a,(hl)
	inc hl
	jr l484e
.l484d
	xor a
.l484e
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l485b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l485e
.l485b
	ld de,#0000
.l485e
	add lx
	cp #60
	jr c,l4866
	ld a,#60
.l4866
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l490b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l47e8)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l487e equ $ + 1
	ld a,#00
	or a
	jr nz,l488e
	ex af,af'
	bit 5,a
	jr nz,l48f9
.l4887
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l488f equ $ + 1
.l488e
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l4899),a
	ld a,c
.l4899 equ $ + 1
	jr l489a
.l489a
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
	jr nc,l48b3
	inc bc
.l48b3
	ld a,c
	ld (l4afe),a
	ld a,b
	ld (l4b19),a
	ld a,(l487e)
	or a
	jr z,l48ee
	ld a,(l488f)
	ld e,a
	srl a
	add e
	ld (l48cd),a
	ld a,b
.l48cd equ $ + 1
	jr l48ce
.l48ce
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
.l48e5 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l48ee
	pop hl
	ret
.l48f0
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l4887
.l48f9
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l4afe),a
	inc hl
	ld a,(hl)
	ld (l4b19),a
	inc hl
	ret
.l490b
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
.l49cb
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l49d6 equ $ + 1
	ld a,#00
.l49d8 equ $ + 1
	cp #00
	jr z,l49f0
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
	ld (l49d8),a
	exx
.l49f1 equ $ + 1
.l49f0
	ld a,#00
.l49f3 equ $ + 1
	cp #00
	jr z,l4a0b
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
	ld (l49f3),a
	exx
.l4a0c equ $ + 1
.l4a0b
	ld a,#00
.l4a0e equ $ + 1
	cp #00
	jr z,l4a26
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
	ld (l4a0e),a
	exx
.l4a27 equ $ + 1
.l4a26
	ld a,#00
.l4a29 equ $ + 1
	cp #00
	jr z,l4a41
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
	ld (l4a29),a
	exx
.l4a42 equ $ + 1
.l4a41
	ld a,#00
.l4a44 equ $ + 1
	cp #00
	jr z,l4a5c
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
	ld (l4a44),a
	exx
.l4a5d equ $ + 1
.l4a5c
	ld a,#00
.l4a5f equ $ + 1
	cp #00
	jr z,l4a77
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
	ld (l4a5f),a
	exx
.l4a78 equ $ + 1
.l4a77
	ld a,#00
.l4a7a equ $ + 1
	cp #00
	jr z,l4a92
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
	ld (l4a7a),a
	exx
.l4a93 equ $ + 1
.l4a92
	ld a,#00
.l4a95 equ $ + 1
	cp #00
	jr z,l4aad
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
	ld (l4a95),a
	exx
.l4aae equ $ + 1
.l4aad
	ld a,#00
.l4ab0 equ $ + 1
	cp #00
	jr z,l4ac8
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
	ld (l4ab0),a
	exx
.l4ac9 equ $ + 1
.l4ac8
	ld a,#00
.l4acb equ $ + 1
	cp #00
	jr z,l4ae3
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
	ld (l4acb),a
	exx
.l4ae3
	ld a,h
.l4ae5 equ $ + 1
	cp #c0
	jr z,l4afd
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
	ld (l4ae5),a
	exx
.l4afe equ $ + 1
.l4afd
	ld a,#00
.l4b00 equ $ + 1
	cp #00
	jr z,l4b18
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
	ld (l4b00),a
	exx
.l4b19 equ $ + 1
.l4b18
	ld a,#00
.l4b1b equ $ + 1
	cp #00
	jr z,l4b33
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
	ld (l4b1b),a
	exx
.l4b34 equ $ + 1
.l4b33
	ld a,#00
.l4b36 equ $ + 1
	cp #ff
	jr nz,l4b3f
	ld h,a
.l4b3b equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l4b3f
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
	ld (l4b36),a
	ret
;
.stop_music
.l4b54
;
	xor a
	ld (l4a0c),a
	ld (l4a5d),a
	ld (l4aae),a
	dec a
	ld (l4a0e),a
	ld (l4a5f),a
	ld (l4ab0),a
	ld (l4ae5),a
	ld a,#3f
	jp l49cb
;
.real_init_music
.l4b70
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l4423),a
	ld de,#0003
	add hl,de
	ld de,l437f
	ldi
	ldi
	ld de,l439d
	ldi
	ldi
	ld de,l43d9
	ldi
	ldi
	ld de,l4469
	ldi
	ldi
	ld de,l4594
	ldi
	ldi
	ld de,l459a
	ldi
	ldi
	ld de,l45a0
	ldi
	ldi
	ld de,l45a6
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l4317),a
	ld (l4315),a
	ld (l433e),hl
	ld hl,(l43d9)
	ld (l4583),hl
	ld a,(hl)
	and #01
	ld (l43b8),a
	ld hl,(l45a6)
	ld a,(hl)
	and #01
	ld (l45ac),a
	ld hl,(l4469)
	ld (l44d4),hl
	ld (l453f),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l45c9),hl
	ld (l461a),hl
	ld (l466b),hl
	ld (l45e8),hl
	ld (l4639),hl
	ld (l468a),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l45ee),de
	ld (l463f),de
	ld (l4690),de
	ld (l45e0),de
	ld (l4631),de
	ld (l4682),de
	ld a,#37
	ld (l4325),a
	ld hl,l4c2c
.l4c1c
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l4c23
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l4c23
	jr l4c1c
.l4c2c
	jr l4c2e
.l4c2e
	dw l49d6,l49f1,l4a27,l4a42
	dw l4a78,l4a93,l4ac9,l4a0c
	dw l4a5d,l4aae,l4afe,l4b19
	dw l4b34,l4338,l4372,l43bd
	dw l43cb,l4408,l45d7,l4628
	dw l4679,l4438,l44a3,l450e
	dw #ff11,l49d8,l49f3,l4a29
	dw l4a44,l4a7a,l4a95,l4acb
	dw l4ae5,l4a0e,l4a5f,l4ab0
	dw l4b00,l4b1b,l4b36,l45d9
	dw l462a,l467b,#b703,l45ea
	dw l463b,l468c,#0000
;
.init_music	; added by Megachur
;
	ld de,StArkosModAdr
	jp real_init_music
;
.music_info
	db "International Vodka Party 2008 - Oh No 2 (2008)(Benediction)(PulkoMandy)",0
	db "StArkos",0

	read "music_end.asm"
