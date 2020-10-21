; Music of Action Service (1988)(Cobra Soft)()(Music Pro)
; Ripped by Megachur the 19/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ACTIONSE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #4000

	read "music_header.asm"
	
	di
	call l40bc	; init
	ld hl,l4012
	ld (#0039),hl
	ei
.l400b
	ld a,(l40a9)
	or a
	jr z,l400b
	ret
.l4012
	ei
	push af
	push bc
	push de
	push hl
	ld hl,l40a7
	dec (hl)
	call z,l4024
	pop hl
	pop de
	pop bc
	pop af
	reti
.l4024
	ld (hl),#06
	ld hl,l40a8
	inc (hl)
	ld a,(l40ab)
	and a
	jr z,l403a
	dec a
	ld (l40ab),a
	jr nz,l403a
	dec a
	ld (l40aa),a
.l403a
	ld bc,#f40e
	out (c),c
	ld b,#f6
	in a,(c)
	and #30
	ld c,a
	or #c0
	out (c),a
	out (c),c
	inc b
	ld a,#92
	out (c),a
	push bc
	ld de,#0800
	ld hl,l40ac
.l4058
	ld a,(hl)
	inc hl
	ld b,#f6
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and (hl)
	jp z,l4068
	scf
.l4068
	rl e
	inc hl
	dec d
	jr nz,l4058
	ld b,#f6
	ld a,#49
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and #1f
	or e
	ld e,a
	ld a,(l40aa)
	and e
	ld (l40a9),a
	pop bc
	ld a,#82
	out (c),a
	dec b
	out (c),c
	push ix
	call l4134	; play
	pop ix
	ret
	ld a,(l40a9)
	and c
	ld (l40a9),a
	ld a,(l40aa)
	and c
	ld (l40aa),a
	ld a,b
	ld (l40ab),a
	ret
.l40aa equ $ + 3
.l40a9 equ $ + 2
.l40a8 equ $ + 1
.l40a7
	db #06,#00,#00,#ff
.l40ac equ $ + 1
.l40ab
	db #00,#48,#04,#42,#80,#44,#40,#45
	db #80,#40,#02,#41,#01,#40,#04,#40
	db #01
;
.init_music
.l40bc
;
	xor a
	ld (l454c),a
	ld (l4550),a
	ld hl,l4557
	ld (hl),#00
	ld de,l4558
	ld bc,#0128
	ldir
	ld a,(l4781)
	ld (l4680),a
	ld bc,l4780
	ld hl,(l4782)
	add hl,bc
	ld (l4683),hl
	ld hl,(l4784)
	add hl,bc
	ld (l4685),hl
	ld hl,(l4786)
	add hl,bc
	ld (l455c),hl
	ld hl,(l4788)
	add hl,bc
	ld (l4597),hl
	ld hl,(l478a)
	add hl,bc
	ld (l45d2),hl
	ld hl,l478c
	ld (l4681),hl
	ld a,#0f
	ld (l4688),a
	ld hl,l4551
	ld de,l4557
	ld bc,#0005
	ldir
	ld hl,l4551
	ld de,l4592
	ld bc,#0005
	ldir
	ld hl,l4551
	ld de,l45cd
	ld bc,#0005
	ldir
	ld a,#ff
	ld (l454c),a
	ld c,#38
	ld a,#07
	jp l475e
;
.play_music
.l4134
;
	ld a,(l454c)
	or a
	ret z
	xor a
	ld (l454c),a
	ld a,#08
	ld (l468b),a
	cpl
	ld (l468a),a
	ld a,(l4688)
	ld e,a
	ld b,#03
	ld hl,l45ec
.l414f
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jp c,l4157
	ld a,e
.l4157
	ld c,a
	ld a,b
	add #07
	push de
	call l475e
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l414f
	ld hl,l4680
	dec (hl)
	ld ix,l4557
	xor a
.l4171
	ld (l4687),a
	ld a,(ix+#07)
	or a
	jp nz,l43e8
.l417b
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l4185
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jp nz,l41f5
	ld l,(ix+#01)
	ld h,(ix+#02)
.l4197
	ld a,(hl)
	cp #ff
	jp nz,l41d6
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l4550)
	or a
	jp z,l4197
	push hl
	push bc
	push de
	ld a,(l4687)
	ld c,a
	ld b,#00
	ld hl,l454d
	add hl,bc
	push hl
	ld e,(hl)
	add a
	ld c,a
	ld hl,l4786
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l4780
	add hl,bc
	ld (hl),e
	pop hl
	xor a
	ld (hl),a
	pop de
	pop bc
	pop hl
	jp l4197
.l41d6
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l4681)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l4780
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l4185
.l41f5
	bit 7,a
	jp nz,l4265
	ld hl,l4692
	or a
	jp z,l4204
	add (ix+#20)
.l4204
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld e,(hl)
	ld (ix+#36),e
	ld (ix+#38),e
	inc hl
	ld e,(hl)
	ld (ix+#37),e
	ld (ix+#39),e
	ld (ix+#0a),#00
	ld (ix+#21),#00
	ld (ix+#1f),#00
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ex de,hl
	ld a,(l4687)
	inc a
	ld hl,l45f4
	ld bc,#0014
.l4236
	add hl,bc
	dec a
	jp nz,l4236
	call l4523
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l4687)
	inc a
	ld hl,l4630
	ld bc,#0014
.l4250
	add hl,bc
	dec a
	jp nz,l4250
	call l4523
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l43d4
.l4265
	bit 6,a
	jp nz,l42b2
	bit 5,a
	jp z,l429f
	and #1f
	ld b,a
	jp z,l4287
	ld a,(l4689)
	push hl
	ld hl,l468a
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l475e
	jp l4296
.l4287
	ld a,(l4689)
	push hl
	ld hl,l468b
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l475e
.l4296
	ld c,b
	ld a,#06
	call l475e
	jp l43d4
.l429f
	and #1f
	ld hl,l4752
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l43d4
.l42b2
	bit 5,a
	jp nz,l4325
	and #1f
	add a
	add a
	add a
	ld hl,(l4683)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l42ce
	ld a,(de)
	bit 7,a
	jp nz,l42e1
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l42fa
.l42e1
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#ff
	bit 7,a
	jp nz,l42f4
	ld b,#01
.l42f4
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l42fa
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,l42ce
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l45f4
	ld a,(l4687)
	inc a
.l4319
	add hl,bc
	dec a
	jp nz,l4319
	ex de,hl
	call l4523
	jp l43d4
.l4325
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l433c
	and #1f
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l433c
	dw l4342,l434f,l434a
.l4342
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l43d4
.l434a
	ld a,#02
	jp l4351
.l434f
	ld a,#01
.l4351
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,l43c9
	add a
	add a
	add a
	ld hl,(l4685)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l4370
	ld a,(de)
	bit 7,a
	jp nz,l4385
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	neg
	ld (hl),a
	jp l439e
.l4385
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#01
	bit 7,a
	jp nz,l4398
	ld b,#ff
.l4398
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l439e
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,l4370
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l4630
	ld a,(l4687)
	inc a
.l43bd
	add hl,bc
	dec a
	jp nz,l43bd
	ex de,hl
	call l4523
	jp l43ce
.l43c9
	ld a,#00
	ld (ix+#09),a
.l43ce
	ld a,(ix+#09)
	ld (ix+#3a),a
.l43d4
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l417b
.l43e8
	ld a,(l4680)
	or a
	jp nz,l43f2
	dec (ix+#07)
.l43f2
	ld a,(ix+#0a)
	cp #04
	jp z,l4440
	push ix
	pop hl
	ld b,a
	add a
	add a
	add b
	add #0b
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jp nz,l4421
	dec (hl)
	jp nz,l4414
	inc (ix+#0a)
.l4414
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l4440
.l4421
	dec (hl)
	jp nz,l4437
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	dec hl
	jp l4439
.l4437
	inc hl
	inc hl
.l4439
	dec (hl)
	jp nz,l4440
	inc (ix+#0a)
.l4440
	ld a,(ix+#09)
	or a
	jp z,l44e5
	push ix
	pop hl
	ld a,(ix+#21)
	ld b,a
	add a
	add a
	add b
	add #22
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jp nz,l4480
	dec (hl)
	jp nz,l4464
	inc (ix+#21)
.l4464
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l4470
	inc b
.l4470
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l44b0
.l4480
	dec (hl)
	jp nz,l44a7
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	push hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l4495
	inc b
.l4495
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l44a9
.l44a7
	inc hl
	inc hl
.l44a9
	dec (hl)
	jp nz,l44b0
	inc (ix+#21)
.l44b0
	ld a,(ix+#21)
	cp #04
	jp nz,l44e5
	ld a,(ix+#09)
	cp #02
	jp nz,l44c7
	xor a
	ld (ix+#09),a
	jp l44e5
.l44c7
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l4687)
	inc a
	ld hl,l4630
	ld bc,#0014
.l44dd
	add hl,bc
	dec a
	jp nz,l44dd
	call l4523
.l44e5
	ld c,(ix+#36)
	ld a,(l4687)
	add a
	call l475e
	ld c,(ix+#37)
	inc a
	call l475e
	ld bc,#003b
	add ix,bc
	ld a,(l468b)
	rlc a
	ld (l468b),a
	cpl
	ld (l468a),a
	ld a,(l4687)
	inc a
	cp #03
	jp nz,l4171
	ld a,(l4680)
	or a
	jp nz,l451d
	ld a,(l4781)
	ld (l4680),a
.l451d
	ld a,#ff
	ld (l454c),a
	ret
.l4523
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ret
.l4551 equ $ + 5
.l4550 equ $ + 4
.l454d equ $ + 1
.l454c
	db #ff,#00,#00,#00,#ff,#00
	dw l4556,l4556
.l4556
	db #ff
.l455c equ $ + 5
.l4558 equ $ + 1
.l4557
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4592 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4597
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45cd equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45d2 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45ec equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45f4 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4630 equ $ + 1
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
.l4685 equ $ + 6
.l4683 equ $ + 4
.l4681 equ $ + 2
.l4680 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l468b equ $ + 4
.l468a equ $ + 3
.l4689 equ $ + 2
.l4688 equ $ + 1
.l4687
	db #00,#00,#38,#00,#00,#00,#00,#00
.l4692 equ $ + 3
	db #00,#00,#00,#00,#00
	dw #0c9c,#0be7,#0b3c,#0a9b
	dw #0a02,#0973,#08eb,#086b
	dw #07f2,#0780,#0714,#06ae
	dw #064e,#05f4,#059e,#054d
	dw #0501,#0469,#0475,#0435
	dw #03f9,#03c0,#038a,#0357
	dw #0327,#02fa,#02cf,#02a7
	dw #0281,#025d,#023b,#021b
	dw #01fc,#01e0,#01c5,#01ac
	dw #0194,#017d,#0168,#0153
	dw #0140,#012e,#011d,#010d
	dw #00fe,#00f0,#00e2,#00d6
	dw #00ca,#00be,#00b4,#00aa
	dw #00a0,#0097,#008f,#0087
	dw #007f,#0078,#0071,#006b
	dw #0065,#005f,#005a,#0055
	dw #0050,#004c,#0047,#0043
	dw #0040,#003c,#0039,#0035
	dw #0032,#0030,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020,#001e,#001c,#001b
	dw #0019,#0018,#0016,#0015
	dw #0014,#0013,#0012,#0011
	dw #0010,#000f,#000e
.l4752
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l475e
	push af
	push bc
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
	pop bc
	pop af
	ret
.l4786 equ $ + 6
.l4784 equ $ + 4
.l4782 equ $ + 2
.l4781 equ $ + 1
.l4780
	db #00,#02,#4b,#03,#4b,#04,#3a,#00
.l478c equ $ + 4
.l478a equ $ + 2
.l4788
	db #4e,#00,#62,#00,#76,#00,#8e,#00
	db #a6,#00,#be,#00,#dc,#00,#fa,#00
	db #12,#01,#2a,#01,#42,#01,#52,#01
	db #62,#01,#78,#01,#94,#01,#b0,#01
	db #c0,#01,#d6,#01,#ea,#01,#20,#02
	db #56,#02,#87,#02,#b8,#02,#ee,#02
	db #1b,#03,#00,#01,#00,#01,#02,#02
	db #01,#02,#03,#04,#05,#05,#06,#02
	db #02,#07,#02,#03,#04,#ff,#08,#09
	db #08,#09,#0a,#0a,#09,#0a,#0b,#0c
	db #0d,#0d,#0e,#0a,#0a,#0f,#0a,#0b
	db #0c,#ff,#10,#11,#10,#11,#10,#10
	db #11,#10,#12,#13,#14,#14,#15,#10
	db #10,#16,#10,#12,#13,#ff,#e0,#00
	db #a0,#d0,#e1,#04,#82,#1b,#1b,#1b
	db #1b,#1b,#1b,#1b,#1b,#1b,#1b,#1b
	db #1b,#1b,#1b,#1b,#1b,#ff,#e0,#02
	db #a0,#d0,#e1,#04,#82,#1b,#1b,#1b
	db #1b,#1b,#1b,#1b,#1b,#1b,#1b,#1b
	db #1b,#1b,#1b,#1b,#1b,#ff,#e0,#00
	db #a0,#c1,#e2,#05,#84,#27,#82,#2d
	db #84,#27,#82,#2e,#84,#27,#2d,#29
	db #27,#ab,#e2,#00,#00,#ff,#e0,#00
	db #a0,#c1,#e2,#05,#84,#27,#82,#2d
	db #84,#27,#82,#2e,#84,#27,#d1,#82
	db #22,#22,#24,#c1,#85,#25,#ab,#e2
	db #00,#84,#00,#ff,#e0,#00,#a0,#c1
	db #e2,#05,#84,#27,#82,#2d,#84,#27
	db #82,#2e,#84,#27,#d1,#82,#27,#27
	db #29,#c1,#85,#2a,#ab,#e2,#00,#84
	db #00,#ff,#e0,#00,#a0,#d0,#e1,#04
	db #82,#1b,#1b,#1b,#1b,#1b,#1b,#1b
	db #1b,#1d,#1d,#1d,#1d,#1d,#1d,#1d
	db #1d,#ff,#e0,#00,#a0,#d0,#e1,#04
	db #82,#22,#20,#1d,#1d,#1d,#1d,#1d
	db #1d,#22,#20,#22,#20,#1d,#1d,#1d
	db #1d,#ff,#e0,#00,#a0,#d0,#e1,#04
	db #82,#1d,#1d,#1d,#1d,#1d,#1d,#1d
	db #1d,#22,#20,#22,#20,#1d,#1d,#1d
	db #1d,#ff,#e0,#00,#a0,#d1,#e1,#05
	db #84,#1b,#1b,#1b,#1b,#1b,#1b,#1b
	db #1b,#ff,#e0,#02,#a0,#d1,#e1,#05
	db #84,#1b,#1b,#1b,#1b,#1b,#1b,#1b
	db #1b,#ff,#e0,#00,#a0,#c1,#e2,#00
	db #84,#1b,#82,#21,#84,#1b,#82,#22
	db #84,#1b,#21,#1d,#1b,#ab,#00,#ff
	db #e0,#00,#a0,#c1,#e2,#00,#84,#1b
	db #82,#21,#84,#1b,#82,#22,#84,#1b
	db #d1,#82,#16,#16,#18,#c1,#85,#19
	db #ab,#84,#00,#ff,#e0,#00,#a0,#c1
	db #e2,#00,#84,#1b,#82,#21,#84,#1b
	db #82,#22,#84,#1b,#d1,#82,#1b,#1b
	db #1d,#c1,#85,#1e,#ab,#84,#00,#ff
	db #e0,#00,#a0,#d1,#e1,#05,#84,#1b
	db #1b,#1b,#1b,#1d,#1d,#1d,#1d,#ff
	db #e0,#00,#a0,#d1,#e1,#05,#82,#22
	db #20,#84,#1d,#1d,#1d,#82,#22,#20
	db #22,#20,#84,#1d,#1d,#ff,#e0,#00
	db #a0,#d1,#e1,#05,#84,#1d,#1d,#1d
	db #1d,#82,#22,#20,#22,#20,#84,#1d
	db #1d,#ff,#e0,#00,#a0,#d1,#e2,#00
	db #82,#1b,#a1,#cf,#00,#ab,#d1,#00
	db #a2,#d0,#00,#a0,#d1,#1b,#a1,#cf
	db #00,#ab,#d1,#00,#a2,#d0,#00,#a0
	db #d1,#1b,#a1,#cf,#00,#ab,#d1,#00
	db #a2,#d0,#00,#a0,#d1,#1b,#a1,#cf
	db #00,#ab,#d1,#00,#a2,#d0,#00,#ff
	db #e0,#00,#a0,#d1,#e2,#00,#82,#1d
	db #a1,#cf,#00,#ab,#d1,#00,#a2,#d0
	db #00,#a0,#d1,#1d,#a1,#cf,#00,#ab
	db #d1,#00,#a2,#d0,#00,#a0,#d1,#1d
	db #a1,#cf,#00,#ab,#d1,#00,#a2,#d0
	db #00,#a0,#d1,#1d,#a1,#cf,#00,#ab
	db #d1,#00,#a2,#d0,#00,#ff,#e0,#00
	db #a0,#d1,#e2,#00,#82,#1b,#a1,#cf
	db #00,#ab,#d1,#00,#a2,#d0,#00,#a0
	db #d1,#1b,#a1,#cf,#00,#ab,#d1,#00
	db #a2,#d0,#00,#a0,#d1,#16,#16,#ab
	db #00,#a0,#19,#a1,#ce,#00,#cf,#00
	db #ab,#d1,#00,#a2,#d0,#00,#ff,#e0
	db #00,#a0,#d1,#e2,#00,#82,#1b,#a1
	db #cf,#00,#ab,#d1,#00,#a2,#d0,#00
	db #a0,#d1,#1b,#a1,#cf,#00,#ab,#d1
	db #00,#a2,#d0,#00,#a0,#d1,#1b,#1b
	db #ab,#00,#a0,#1e,#a1,#ce,#00,#cf
	db #00,#ab,#d1,#00,#a2,#d0,#00,#ff
	db #e0,#00,#a0,#d1,#e2,#00,#82,#1b
	db #a1,#cf,#00,#ab,#d1,#00,#a2,#d0
	db #00,#a0,#d1,#1b,#a1,#cf,#00,#ab
	db #d1,#00,#a2,#d0,#00,#a0,#d1,#1d
	db #a1,#cf,#00,#ab,#d1,#00,#a2,#d0
	db #00,#a0,#d1,#1d,#a1,#cf,#00,#ab
	db #d1,#00,#a2,#d0,#00,#ff,#e0,#00
	db #a0,#d1,#e2,#00,#82,#22,#20,#ab
	db #00,#a2,#d0,#00,#a0,#d1,#1d,#a1
	db #cf,#00,#ab,#d1,#00,#a2,#d0,#00
	db #a0,#d1,#22,#20,#ab,#00,#a0,#20
	db #1d,#a1,#cf,#00,#ab,#d1,#00,#a2
	db #d0,#00,#ff,#e0,#00,#a0,#d1,#e2
	db #00,#82,#1d,#a1,#cf,#00,#ab,#d1
	db #00,#a2,#d0,#1d,#a0,#d1,#1d,#a1
	db #cf,#00,#ab,#d1,#00,#a2,#d0,#00
	db #a0,#d1,#22,#20,#ab,#00,#a0,#20
	db #1d,#a1,#cf,#00,#ab,#d1,#00,#a2
	db #d0,#00,#ff,#0f,#00,#0f,#00,#0f
	db #00,#0f,#00,#01,#0f,#83,#ad,#01
	db #00,#01,#00,#01,#0d,#0d,#ff,#01
	db #00,#01,#00,#01,#0b,#0b,#ff,#01
	db #00,#01,#00,#01,#09,#09,#ff,#01
	db #00,#01,#00,#01,#07,#07,#ff,#01
	db #00,#01,#00,#01,#0f,#82,#88,#08
	db #00,#83,#a1,#01,#0a,#01,#00,#03
	db #00,#84,#a8,#01,#0c,#01,#00,#03
	db #00,#18,#00,#01,#0e,#01,#00,#03
	db #00,#01,#00,#01,#0e,#01,#00,#03
	db #00,#87,#e2,#01,#0e,#01,#00,#82
	db #9c,#62,#00,#01,#0f,#07,#00,#84
	db #bc,#01,#00,#01,#0f,#04,#ff,#08
	db #00,#88,#d3,#01,#0a,#01,#00,#01
	db #f6,#01,#00,#01,#0c,#01,#00,#01
	db #f4,#01,#00,#01,#0e,#01,#00,#01
	db #f2,#01,#00,#01,#0f,#0f,#ff,#01
	db #00,#01,#00,#01,#0d,#0d,#ff,#01
	db #00,#01,#00,#01,#0b,#0b,#ff,#01
	db #00,#01,#00,#01,#09,#09,#ff,#01
	db #00,#01,#00,#01,#0e,#01,#00,#01
	db #f2,#01,#00,#01,#0c,#91,#e3,#a1
	db #63,#a1,#63,#82,#14,#0c,#00,#01
	db #00,#82,#94,#01,#0d,#04,#ff,#08
	db #00,#8a,#d3,#01,#0b,#04,#ff,#08
	db #00,#8c,#d3,#01,#09,#04,#ff,#08
	db #00,#95,#d3,#01,#07,#04,#ff,#08
	db #00,#9e,#da,#01,#0d,#03,#00,#08
	db #ff,#05,#00,#01,#0e,#86,#92,#89
	db #89,#82,#92,#01,#0f,#02,#00,#0c
	db #ff,#0c,#01,#01,#0d,#0c,#ff,#0d
	db #01,#0e,#ff,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#84,#08,#82
	db #88,#84,#08,#01,#00,#01,#3c,#03
	db #ec,#01,#ef,#86,#86,#01,#f1,#01
	db #2b,#01,#e5,#01,#01,#82,#04,#04
	db #fe,#03,#02,#01,#00,#82,#04,#04
	db #ff,#82,#04,#85,#0a,#03,#fd,#85
	db #0a,#01,#05,#01,#00,#01,#63,#03
	db #e2,#01,#d1,#01,#04,#01,#38,#03
	db #ec,#01,#f1,#08,#00,#01,#01,#01
	db #fe,#01,#01,#82,#04,#04,#02,#04
	db #fc,#04,#02,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#08,#00,#01,#01,#01
	db #fe,#01,#01,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#08,#00,#01,#01,#01
	db #fe,#01,#01,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#08,#00,#01,#01,#01
	db #fe,#01,#01,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#08,#00,#01,#01,#01
	db #fe,#01,#01,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#00,#a2,#20,#20,#55
	db #ff,#ff,#ff,#d7,#eb,#41,#41,#eb
	db #ff,#c3,#ff,#d7,#41,#41,#eb,#eb
	db #00,#c3,#55,#ff,#ff,#ff,#aa,#00
	db #55,#ff,#ff,#eb,#ff,#d7,#c3,#82
	db #41,#ff,#d7,#d7,#ff,#eb,#c3,#82
	db #c3,#d7,#eb,#ff,#d7,#ff,#ff,#ff
	db #00,#00,#ff,#ff,#00,#ff,#f9,#01
	db #51,#17,#03,#12,#00,#00,#f3,#f3
	db #00,#10,#00,#54,#10,#f3,#30,#10
	db #10,#74,#a9,#29,#a2,#00,#00,#55
	db #ff,#ff,#ff,#ff,#eb,#ff,#82,#00
	db #c3,#41,#82,#41,#41,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#00,#55
	db #ff,#ff,#ff,#ff,#ff,#d7,#eb,#41
	db #41,#00,#82,#41,#41,#00,#d7,#eb
	db #eb,#ff,#d7,#d7,#ff,#ff,#ff,#00
	db #ff,#ff,#ff,#00,#00,#55,#ff,#aa
	db #51,#a3,#03,#12,#00,#10,#f3,#71
	db #b2,#00,#51,#9a,#b2,#21,#30,#20
	db #00,#00,#b8,#a2,#51,#a2,#20,#55
	db #ff,#ff,#00,#ff,#ff,#00,#00,#00
	db #00,#ff,#ff,#ff,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#00,#ff,#aa
	db #00,#00,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#aa,#55,#ff,#00
	db #00,#00,#ff,#ff,#aa,#00,#00,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #f9,#a3,#03,#03,#20,#10,#b2,#a3
	db #12,#00,#14,#ac,#a3,#f3,#20,#20
	db #00,#00,#b8,#12,#00,#10,#00,#00
	db #55,#ff,#ff,#00,#00,#00,#00,#55
	db #ff,#ff,#ff,#ff,#55,#ff,#aa,#00
	db #00,#00,#00,#00,#00,#55,#ff,#ff
	db #ff,#ff,#ff,#ff,#00,#00,#55,#ff
	db #ff,#00,#00,#00,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#00,#55,#ff
	db #a9,#30,#30,#30,#00,#f3,#f3,#30
;
.music_info
	db "Action Service (1988)(Cobra Soft)()",0
	db "Music Pro",0

	read "music_end.asm"
