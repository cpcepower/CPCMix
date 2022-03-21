; Music of Hostage InGame 1-3 (1990)(Infogrames)(Mc Alby)
; Ripped by Megachur the 19/01/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HOSTAGI1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

.l4007 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4009 equ $ + 1
	db #01,#00,#08,#0f,#00,#04,#00,#00
	db #00,#00,#00,#00,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#02,#00
	db #03,#00,#09,#0f,#00,#04,#00,#00
	db #00,#00,#00,#00,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #10,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#04,#00
	db #05,#00,#0a,#0f,#00,#04,#00,#00
	db #00,#00,#00,#00,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #20,#00,#00,#00,#00,#00,#00,#00
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
.l4302 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#04,#00
	db #05,#00,#0a,#0f,#00,#04,#00,#00
	db #00,#00,#00,#00,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #20,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l434e	; init music
	jp l43df	; play music
	jp l448b	; stop music
	jp l439a	; sound fx
;
.init_music
.l434e
;
	add a
	add a
	add a
	add #fd
	ld e,a
	adc #49
	sub e
	ld d,a
	call l448b
	ld a,(de)
	inc de
	ld (l43ff),a
	ld h,#40
	call l4374
	call l4374
	call l4374
	ld a,#01
	ld (l43e3),a
	ld (l450a),a
	ret
.l4374
	ld l,#05
	ld (hl),#01
	dec l
	xor a
	ld (hl),a
	ld l,#07
	ld (hl),a
	ld l,#09
	ld (hl),a
	ld l,#15
	ld (hl),a
	ld a,(de)
	inc de
	ld c,a
	ld a,(de)
	inc de
	ld b,a
	ld l,#02
	ld a,(bc)
	ld (hl),a
	inc bc
	inc l
	ld a,(bc)
	ld (hl),a
	inc bc
	ld l,#00
	ld (hl),c
	inc l
	ld (hl),b
	inc h
	ret
.l439b equ $ + 1
.l439a
	ld l,#00
	inc l
	dec l
	jr z,l43a6
	cp l
	jr z,l43ae
	jr nc,l43ae
	ret
.l43a6
	push af
	ld a,(l44fa)
	ld (l4622),a
	pop af
.l43ae
	ld (l439b),a
	add a
	add #f6
	ld l,a
	adc #4f
	sub l
	ld h,a
	ld de,l4302
	ldi
	ex de,hl
	ld a,(de)
	ld (hl),a
	ld d,a
	dec l
	ld e,(hl)
	xor a
	ld l,#04
	ld (hl),a
	ld l,#15
	ld (hl),a
	ld l,#16
	ld (hl),#01
	jp l4545
.l43d2
	ld a,(l439b)
	or a
	ret z
	call l44a2
	ld h,#43
	jp l4425
;
.play_music
.l43df
;
	call l44b3
.l43e3 equ $ + 1
	ld a,#00
	or a
	jr z,l43d2
	ld hl,l450a
	dec (hl)
	ld h,#40
	call l44c4
	inc h
	call l44c4
	inc h
	call l44c4
	ld a,(l450a)
	or a
	jr nz,l4403
.l43ff equ $ + 1
	ld a,#01
	ld (l450a),a
.l4403
	ld a,(l43e3)
	or a
	jr z,l43d2
	ld a,(l439b)
	or a
	jr nz,l4414
	ld a,#42
	ld (l4420),a
.l4414
	call l44a2
	ld h,#40
	call l4425
	call l4425
.l4420 equ $ + 1
	ld h,#42
	call l4425
	ret
.l4425
	ld l,#06
	ld a,(hl)
	inc hl
	ld c,(hl)
	inc hl
	call l0e9b
	ld a,(hl)
	inc hl
	ld c,(hl)
	inc hl
	call l0e9b
	ld a,(hl)
	inc hl
	ld (l4484),a
	ld b,l
	ld a,(l04a2)
	and a
	jr z,l4452
	ld c,a
	ld a,#14
	sub c
	srl a
	srl a
	ld c,a
	ld l,b
	ld a,(hl)
	sub c
	jr nc,l4450
	xor a
.l4450
	jr l4482
.l4452
	ld a,(l049b)
	cp #05
	jr z,l4467
	cp #08
	jr z,l4467
	cp #0a
	jr z,l4467
	cp #0b
	jr z,l4467
	jr l4470
.l4467
	ld l,b
	ld a,(hl)
	sub #05
	jr nc,l446e
	xor a
.l446e
	jr l4482
.l4470
	ld l,#33
	ld a,(hl)
	and a
	jr z,l4480
	ld l,#2e
	ld a,(hl)
	and #0f
	jr z,l4480
	ld l,b
	jr l4482
.l4480
	ld l,b
	ld a,(hl)
.l4482
	ld c,a
.l4484 equ $ + 1
	ld a,#00
	call l0e9b
	inc hl
	inc h
	ret
;
.stop_music
.l448b
;
	xor a
	ld (l43e3),a
	ld (l439b),a
	ld (l46fa),a
	ld a,#07
	ld c,#bf
	call l0e9b
	ld a,#bf
	ld (l44fa),a
	ret
.l44a2
	ld a,#06
.l44a5 equ $ + 1
	ld c,#01
	call l0e9b
	ld a,(l44fa)
	ld c,a
	ld a,#07
	call l0e9b
	ret
.l44b3
	ld a,(l439b)
	or a
	ret z
	ld hl,l4302
	ld a,h
	ld (l4420),a
	ld e,(hl)
	inc l
	ld d,(hl)
	jr l450e
.l44c4
	ld l,#2e
	ld a,(hl)
	and a
	jr z,l44f7
	inc l
	ld e,(hl)
	inc l
	ld d,(hl)
	inc l
	ld a,(hl)
	add e
	ld e,a
	adc d
	sub e
	ld d,a
	ld a,(de)
	cp #80
	jr nz,l44de
	xor a
	ld (hl),a
	jr l44c4
.l44de
	inc (hl)
	and a
	jr nz,l44eb
	call l466b
	ld l,#33
	ld (hl),#00
	jr l4504
.l44eb
	ld (l44a5),a
	call l4694
	ld l,#33
	ld (hl),#01
	jr l4504
.l44f7
	ld l,#20
.l44fa equ $ + 1
	ld a,#00
	and (hl)
	jr nz,l4504
	ld l,#07
	ld a,(hl)
	ld (l44a5),a
.l4504
	ld l,#02
	ld e,(hl)
	inc l
	ld d,(hl)
.l450a equ $ + 1
	ld a,#00
	or a
	jr nz,l4519
.l450e
	ld l,#05
	dec (hl)
	jr z,l4545
	call l46d3
	call l45fe
.l4519
	call l48c0
	call l483c
	call l4835
	call l4870
	call l46de
	call l4813
	ld l,#04
	bit 5,(hl)
	ret z
	ld a,r
	and #07
	ld c,a
	ld l,#07
	ld a,(l4007)
	add c
	ld (hl),a
	ld a,(l4009)
	ld l,#09
	ld (hl),a
	ret nc
	inc (hl)
	ret
.l4545
	ld a,(de)
	inc de
	or a
	jp m,l4583
.l454b
	ld l,#0c
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	call l46f9
	ld l,#14
	ld a,(hl)
	ld l,#0b
	ld (hl),a
	ld l,#0d
	ld a,(hl)
	ld l,#05
	ld (hl),a
	ld l,#18
	ld (hl),#00
	ld l,#2d
	ld a,(hl)
	srl a
	dec l
	ld (hl),a
	ld l,#0e
	call l4573
	inc l
.l4573
	ld a,(hl)
	ld c,a
	and #0f
	inc l
	ld (hl),a
	ld a,c
	rra
	rra
	rra
	rra
	and #0f
	inc l
	ld (hl),a
	ret
.l4583
	cp #e0
	jr nc,l45ab
	cp #d0
	jr nc,l45bb
	cp #c0
	jr nc,l45b3
	cp #b0
	jr nc,l45e2
	ld c,h
	add a
	add #32
	ld l,a
	adc #47
	sub l
	ld h,a
	ld a,c
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,a
	ld (l45a6),bc
.l45a6 equ $ + 1
	call #0000
	jp l4545
.l45ab
	sub #df
	ld l,#0d
	ld (hl),a
	jp l4545
.l45b3
	sub #c0
	ld l,#14
	ld (hl),a
	jp l4545
.l45bb
	sub #d0
	ld l,#14
	ld (hl),a
	ex de,hl
	ld e,#0e
	ldi
	ld e,#11
	ldi
	ex de,hl
	ld a,(de)
	rra
	rra
	rra
	rra
	and #0f
	ld l,#19
	ld (hl),a
	inc l
	ld (hl),a
	ld a,(de)
	and #0f
	ld l,#1b
	ld (hl),a
	inc l
	ld (hl),a
	inc de
	jp l4545
.l45e2
	sub #b0
	add a
	add #5a
	ld c,a
	adc #46
	sub c
	ld b,a
	ld a,(bc)
	ld l,#21
	ld (hl),a
	inc l
	inc bc
	ld a,(bc)
	ld (hl),a
	inc l
	ld (hl),#00
	ld l,#04
	set 0,(hl)
	jp l4545
.l45fe
	ld l,#16
	ld a,(hl)
	ld l,#05
	cp (hl)
	ret nz
	ld a,(de)
	cp #8e
	ret z
	ld l,#18
	ld (hl),#01
	ld l,#15
	ld (hl),#00
	ld l,#04
	res 1,(hl)
	ret
.l4616
	pop af
	xor a
	ld (l439b),a
	ld a,(l44fa)
	and #db
	ld c,a
.l4622 equ $ + 1
	ld a,#00
	and #e4
	or c
	ld (l44fa),a
	ld a,(l43e3)
	or a
	ret nz
	ld a,(l44fa)
	or #24
	ld (l44fa),a
	jp l44a2
.l4639
	call l468d
	pop af
	ld l,#21
	ld (hl),#b0
	inc l
	ld (hl),#00
	inc l
	ld (hl),#00
	ld l,#04
	set 0,(hl)
	ld a,(l46fa)
	neg
	add #16
	jp l454b
.l4655
	ld l,#15
	ld (hl),#00
	ret
	dw l49e4,l49ee,l49f0,l49f2
	dw l49f7,l49fa
.l4666
	ld l,#04
	res 2,(hl)
	ret
.l466b
	call l46bf
	ld l,#1f
.l4670
	ld a,(hl)
.l4671
	cpl
	and c
	ld c,a
	ld l,#04
	res 4,(hl)
	ld a,h
	cp #42
	jr z,l4682
.l467d
	ld a,c
	ld (l44fa),a
	ret
.l4682
	ld a,(l439b)
	or a
	jr z,l467d
	ld a,c
	ld (l4622),a
	ret
.l468d
	call l46bf
	ld l,#20
	jr l4670
.l4694
	call l46bf
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	jr l4671
.l469e
	call l46bf
	ld l,#20
	ld a,(hl)
	cpl
	and c
	ld (l44fa),a
	ld l,#04
	set 4,(hl)
	ret
.l46ae
	ld l,#0b
	ld (hl),#00
.l46b2
	pop af
	ld l,#0d
	ld a,(hl)
	ld l,#05
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	ret
.l46bf
	ld a,(l44fa)
	ld l,#1f
	or (hl)
	inc l
	or (hl)
	ld c,a
	ret
.l46c9
	ld l,#15
	ld (hl),#01
	ret
.l46ce
	ld l,#15
	ld (hl),#fe
	ret
.l46d3
	ld l,#15
	ld a,(hl)
	or a
	ret z
	ld l,#0c
	add (hl)
	ld (hl),a
	jr l46f9
.l46de
	ld l,#04
	bit 0,(hl)
	ret z
	ld l,#21
	ld a,(hl)
	inc l
	ld b,(hl)
	inc l
	add (hl)
	ld c,a
	jr nc,l46ee
	inc b
.l46ee
	inc (hl)
	ld a,(bc)
	or a
	jp p,l46f6
	ld (hl),#00
.l46f6
	ld l,#0c
	add (hl)
.l46fa equ $ + 1
.l46f9
	add #00
	add a
	add #15
	ld c,a
	adc #49
	sub c
	ld b,a
	ld a,(bc)
	inc bc
	ld l,#07
	ld (hl),a
	ld a,(bc)
	ld l,#09
	ld (hl),a
	ld l,#04
	bit 2,(hl)
	ret z
	push de
	ld l,#27
	ld e,(hl)
	inc l
	ld d,(hl)
	ld l,#07
	ld c,(hl)
	ld l,#09
	ld b,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	ld l,#07
	ld (hl),e
	pop de
	ld l,#29
	ld a,(hl)
	ld l,#26
	ld (hl),a
	ret
.l472c
	ld a,(de)
	ld (l46fa),a
	inc de
	ret
	dw l47f3,l46c9,l46ce,l47a7
	dw l47c0,l47c5,l47d4,l4666
	dw l4794,l4830,l466b,l468d
	dw l4694,l469e,l46b2,l46ae
	dw l472c,l448b,l4826,l482b
	dw l47eb,l4616,l4639,l4655
	dw l4764
.l4764
	ld l,#2e
	ld a,(de)
	ld (hl),a
	inc de
	and a
	jr nz,l4770
	call l466b
	ret
.l4770
	push af
	call l4694
	pop af
	push af
	and #f0
	rrca
	rrca
	rrca
	rrca
	dec a
	add a
	add #d5
	ld c,a
	adc #49
	sub c
	ld b,a
	ld a,(bc)
	ld l,#2f
	ld (hl),a
	inc l
	inc bc
	ld a,(bc)
	ld (hl),a
	inc l
	ld (hl),#00
	pop af
	inc l
	ld (hl),a
	ret
.l4794
	ex de,hl
	ld e,#2a
	ldi
	ldi
	ld a,(hl)
	ldi
	ld (de),a
	ex de,hl
	ld l,#04
	set 3,(hl)
	set 6,(hl)
	ret
.l47a7
	ld a,(de)
	inc de
	ld l,#16
	ld (hl),a
	ld a,(de)
	rra
	rra
	rra
	rra
	and #0f
	ld l,#1d
	ld (hl),a
	inc l
	ld (hl),a
	ld a,(de)
	and #0f
	ld l,#17
	ld (hl),a
	inc de
	ret
.l47c0
	ld l,#04
	res 0,(hl)
	ret
.l47c5
	ex de,hl
	ld e,#24
	ldi
	ldi
	ldi
	ex de,hl
	ld l,#04
	set 1,(hl)
	ret
.l47d4
	ex de,hl
	ld e,#27
	ldi
	ldi
	ld e,#24
	ldi
	ldi
	ld e,#29
	ldi
	ex de,hl
	ld l,#04
	set 2,(hl)
	ret
.l47eb
	ld l,#00
	ex de,hl
	ldi
	ldi
	ex de,hl
.l47f3
	ld l,#00
	ld c,(hl)
	inc l
	ld b,(hl)
	ld a,(bc)
	ld e,a
	inc bc
	ld a,(bc)
	inc bc
	ld d,a
	or e
	jr z,l480a
	ld (hl),b
	dec l
	ld (hl),c
	inc l
	inc l
	ld (hl),e
	inc l
	ld (hl),d
	ret
.l480a
	ld d,b		; end music ! reset
	ld e,c
	pop bc
	ld a,(l4ff7)
	jp l4583
.l4813
	ld l,#04
	bit 4,(hl)
	ret z
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	ld c,a
	ld a,(l44fa)
	xor c
	ld (l44fa),a
	ret
.l4826
	ld l,#04
	set 5,(hl)
	ret
.l482b
	ld l,#04
	res 5,(hl)
	ret
.l4830
	ld l,#04
	res 3,(hl)
	ret
.l4835
	ld l,#04
	bit 2,(hl)
	jr nz,l4841
	ret
.l483c
	ld l,#04
	bit 1,(hl)
	ret z
.l4841
	ld l,#26
	dec (hl)
	jp m,l4913
	ld l,#25
	bit 7,(hl)
	jr nz,l485c
	ld l,#24
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ld l,#25
	ld a,(hl)
	ld l,#09
	adc (hl)
	ld (hl),a
	ret
.l485c
	ld l,#07
	ld a,(hl)
	ld l,#24
	sub (hl)
	ld l,#07
	ld (hl),a
	ld l,#25
	ld c,(hl)
	res 7,c
	ld l,#09
	ld a,(hl)
	sbc c
	ld (hl),a
	ret
.l4870
	dec de
	ld a,(de)
	inc de
	cp #8e
	jr z,l4881
	ld l,#0d
	ld a,(hl)
	ld l,#2a
	sub (hl)
	ld l,#05
	cp (hl)
	ret c
.l4881
	ld l,#04
	bit 3,(hl)
	ret z
	bit 6,(hl)
	jr z,l48a4
	ld l,#2c
	dec (hl)
	jr nz,l4898
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	res 6,(hl)
	ret
.l4898
	ld l,#2b
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ret nc
	ld l,#09
	inc (hl)
	ret
.l48a4
	ld l,#2c
	dec (hl)
	jr nz,l48b2
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	set 6,(hl)
	ret
.l48b2
	ld l,#07
	ld a,(hl)
	ld l,#2b
	sub (hl)
	ld l,#07
	ld (hl),a
	ret nc
	ld l,#09
	dec (hl)
	ret
.l48c0
	ld l,#0f
	ld a,(hl)
	or a
	jr z,l48db
	ld l,#19
	dec (hl)
	ret nz
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#0f
	dec (hl)
	inc l
	ld a,(hl)
	ld l,#0b
	add (hl)
	cp #0f
	ret nc
	ld (hl),a
	ret
.l48db
	ld l,#12
	ld a,(hl)
	or a
	jr z,l48f9
	ld l,#1b
	dec (hl)
	ret nz
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#12
	dec (hl)
	ld l,#0b
	ld a,(hl)
	ld l,#13
	sub (hl)
	jr nc,l48f5
	xor a
.l48f5
	ld l,#0b
	ld (hl),a
	ret
.l48f9
	ld l,#18
	ld a,(hl)
	or a
	ret z
	ld l,#1d
	dec (hl)
	ret nz
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#0b
	ld a,(hl)
	ld l,#17
	sub (hl)
	jr nc,l490f
	xor a
.l490f
	ld l,#0b
	ld (hl),a
	ret
.l4913
	inc (hl)
	ret
	dw #077c,#0710,#06ab,#064b
	dw #05f0,#059b,#054b,#04ff
	dw #04b7,#0473,#0433,#03f6
	dw #03be,#0388,#0355,#0325
	dw #02f8,#02cd,#02a5,#027f
	dw #025b,#0239,#0219,#01fb
	dw #01df,#01c4,#01aa,#0193
	dw #017c,#0167,#0152,#013f
	dw #012e,#011d,#010d,#00fd
	dw #00ef,#00e2,#00d5,#00c9
	dw #00be,#00b3,#00a9,#00a0
	dw #0097,#008e,#0086,#007f
	dw #0078,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0025,#0023,#0021,#001f
	dw #001e,#001c,#001a,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000f,#000e,#000d,#000c
	dw #000c,#000b,#000a,#000a
	dw #0009,#0009,#0008,#0008
	dw l49d7
.l49d7
	db #00,#00,#00,#00,#00,#01,#00,#00
.l49e4 equ $ + 5
	db #00,#00,#00,#03,#80,#0c,#00,#00
.l49ee equ $ + 7
	db #00,#80,#00,#00,#00,#00,#80,#00
.l49f2 equ $ + 3
.l49f0 equ $ + 1
	db #00,#00,#00,#18,#00,#00,#00,#80
.l49fa equ $ + 3
.l49f7
	db #00,#0c,#80,#0c,#00,#80
	db #02
	dw l4a05,l4a19,l4a35
	db #03
.l4a05
	dw l4b5d,l4b5d,l4ef3,l4ef3
	dw l4a49,l4ef3,l4ef3,l4c7f
	dw #0000,l4a05
.l4a19
	dw l4c34,l4c34,l4f3f,l4f3f
	dw l4f3f,l4f3f,l4f3f,l4f3f
	dw l4f3f,l4f3f,l4f3f,l4ded
	dw #0000,l4a19
.l4a35
	dw l4ba5,l4ba5,l4fae,l4fae
	dw l4ad5,l4fae,l4fae,l4d2c
	dw #0000,l4a35
.l4a49
	db #de,#00,#1f,#11,#e2,#8a,#b3,#98
	db #10,#26,#8f,#26,#26,#8f,#32,#28
	db #8f,#29,#35,#29,#35,#24,#24,#23
	db #23,#23,#2f,#23,#2f,#23,#8e,#23
	db #23,#2f,#8e,#2f,#23,#8e,#23,#2f
	db #2f,#26,#8f,#26,#26,#8f,#32,#28
	db #8f,#29,#35,#29,#35,#24,#24,#23
	db #23,#23,#2f,#23,#2f,#23,#8e,#23
	db #23,#2f,#8e,#2f,#23,#8e,#23,#2f
	db #2f,#26,#8f,#26,#26,#8f,#32,#28
	db #8f,#29,#35,#29,#35,#2d,#8e,#2c
	db #38,#2c,#38,#29,#8e,#29,#29,#29
	db #29,#28,#8e,#26,#26,#8e,#32,#26
	db #26,#24,#8e,#24,#24,#24,#24,#26
	db #8e,#27,#27,#27,#27,#22,#8e,#21
	db #21,#21,#21,#2d,#21,#21,#2d,#21
	db #2d,#21,#2d,#2d,#21,#2d,#2d,#21
	db #2d,#98,#00,#80
.l4ad5
	db #de,#00,#19,#11,#e2,#8a,#b3,#1a
	db #1a,#1a,#1a,#1a,#1a,#1a,#1a,#18
	db #18,#18,#18,#18,#18,#17,#17,#17
	db #17,#17,#17,#17,#17,#17,#17,#17
	db #17,#17,#17,#17,#17,#17,#17,#1a
	db #1a,#1a,#1a,#1a,#1a,#1a,#1a,#18
	db #18,#18,#18,#18,#18,#17,#17,#17
	db #17,#17,#17,#17,#17,#17,#17,#17
	db #17,#17,#17,#17,#17,#17,#17,#1a
	db #1a,#1a,#1a,#1a,#1a,#1a,#1a,#1a
	db #1a,#1a,#1a,#1a,#1a,#1a,#1a,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#18
	db #18,#18,#18,#18,#18,#18,#18,#18
	db #18,#18,#18,#0c,#0c,#15,#15,#15
	db #15,#15,#15,#15,#15,#15,#15,#15
	db #15,#15,#15,#15,#15,#15,#15,#80
.l4b5d
	db #84,#db,#00,#19,#12,#e5,#8a,#1a
	db #8e,#8e,#1c,#1d,#8e,#18,#17,#8e
	db #8e,#8e,#8e,#8e,#8e,#8e,#8e,#1a
	db #8e,#8e,#1c,#1d,#8e,#18,#17,#8e
	db #8e,#8e,#8e,#8e,#8e,#19,#8e,#1a
	db #8e,#8e,#1c,#1d,#8e,#21,#20,#8e
	db #8e,#1d,#8e,#1c,#1a,#8e,#8e,#18
	db #8e,#8e,#1a,#1b,#8e,#16,#15,#8e
	db #8e,#8e,#8e,#8e,#8e,#15,#8e,#80
.l4ba5
	db #84,#db,#00,#1f,#11,#e2,#8a,#82
	db #92,#98,#10,#26,#26,#26,#26,#8e
	db #26,#8e,#8e,#26,#26,#26,#26,#26
	db #26,#26,#26,#26,#26,#26,#26,#8e
	db #26,#8e,#8e,#26,#26,#26,#26,#26
	db #26,#26,#26,#26,#26,#26,#26,#8e
	db #26,#8e,#8e,#26,#26,#26,#26,#26
	db #26,#26,#26,#26,#26,#26,#26,#8e
	db #26,#8e,#8e,#26,#26,#26,#26,#26
	db #26,#26,#26,#26,#26,#26,#26,#8e
	db #26,#8e,#8e,#26,#26,#26,#26,#26
	db #26,#26,#26,#28,#28,#28,#28,#8e
	db #28,#8e,#8e,#28,#28,#28,#28,#28
	db #28,#28,#28,#24,#24,#24,#24,#8e
	db #24,#8e,#8e,#24,#24,#24,#24,#24
	db #24,#24,#24,#21,#21,#21,#21,#8e
	db #21,#8e,#8e,#21,#21,#21,#21,#21
	db #21,#21,#21,#93,#98,#00,#80
.l4c34
	db #98,#00,#84,#df,#00,#2f,#11,#e2
	db #8a,#82,#15,#8e,#8e,#8e,#8e,#8e
	db #15,#8e,#15,#8e,#8e,#8e,#8e,#8e
	db #8e,#8e,#15,#8e,#8e,#8e,#8e,#8e
	db #15,#8e,#15,#8e,#8e,#8e,#8e,#8e
	db #8e,#8e,#15,#8e,#8e,#8e,#8e,#8e
	db #15,#8e,#15,#8e,#8e,#8e,#8e,#8e
	db #8e,#8e,#15,#8e,#8e,#8e,#8e,#8e
	db #15,#8e,#15,#8e,#8e,#8e,#8e,#8e
	db #8e,#8e,#80
.l4c7f
	db #df,#11,#1f,#21,#e2,#82,#8a,#8c
	db #24,#8e,#24,#8e,#24,#8e,#24,#24
	db #97,#8a,#1e,#12,#12,#1e,#12,#12
	db #1e,#8e,#82,#1f,#8e,#1c,#8e,#18
	db #8e,#17,#17,#97,#8a,#1f,#13,#13
	db #1f,#13,#13,#1f,#8e,#8c,#82,#24
	db #8e,#24,#8e,#24,#8e,#24,#24,#97
	db #8a,#20,#14,#14,#20,#14,#14,#20
	db #8e,#82,#1d,#8e,#1c,#8e,#1a,#8e
	db #18,#18,#97,#8a,#cf,#21,#15,#15
	db #21,#16,#16,#22,#22,#dc,#00,#1f
	db #7d,#e5,#8a,#b4,#26,#8e,#8e,#8e
	db #24,#8e,#23,#8e,#21,#8e,#8e,#8e
	db #1f,#23,#26,#28,#26,#8e,#8e,#28
	db #29,#8e,#24,#23,#8e,#8e,#8e,#8e
	db #8e,#8e,#8e,#25,#26,#8e,#8e,#28
	db #29,#8e,#24,#23,#8e,#8e,#8e,#8e
	db #8e,#8e,#8e,#25,#26,#8e,#8e,#28
	db #29,#8e,#2d,#2c,#8e,#8e,#29,#8e
	db #28,#26,#8e,#8e,#24,#8e,#8e,#26
	db #27,#8e,#22,#21,#8e,#8e,#8e,#8e
	db #8e,#8e,#8e,#8e,#80
.l4d2c
	db #84,#df,#11,#2f,#11,#e2,#82,#8a
	db #98,#1d,#18,#8e,#18,#8e,#18,#8e
	db #18,#18,#97,#8a,#12,#06,#06,#12
	db #06,#06,#12,#8e,#92,#82,#1d,#8e
	db #1c,#8e,#1a,#8e,#18,#18,#93,#97
	db #8a,#13,#07,#07,#13,#07,#07,#13
	db #8e,#82,#18,#8e,#18,#8e,#18,#8e
	db #18,#18,#97,#8a,#14,#08,#08,#14
	db #08,#08,#14,#8e,#92,#82,#1d,#8e
	db #1c,#8e,#1a,#8e,#18,#18,#93,#97
	db #8a,#cf,#15,#09,#09,#15,#d0,#1f
	db #00,#1f,#88,#01,#01,#01,#98,#00
	db #8c,#21,#8e,#8e,#8e,#98,#1d,#dc
	db #00,#1f,#13,#e5,#8a,#b5,#32,#8e
	db #8e,#8e,#30,#8e,#2f,#8e,#2d,#8e
	db #8e,#8e,#2b,#2f,#32,#34,#32,#8e
	db #8e,#34,#35,#8e,#30,#2f,#8e,#8e
	db #8e,#8e,#8e,#8e,#8e,#31,#32,#8e
	db #8e,#34,#35,#8e,#30,#2f,#8e,#8e
	db #8e,#8e,#8e,#8e,#8e,#31,#32,#8e
	db #8e,#34,#35,#8e,#39,#38,#8e,#8e
	db #35,#8e,#34,#32,#8e,#8e,#30,#8e
	db #8e,#32,#33,#8e,#2e,#2d,#8e,#8e
	db #8e,#8e,#8e,#8e,#8e,#8e,#98,#00
	db #80
.l4ded
	db #84,#df,#11,#1f,#11,#e2,#88,#01
	db #01,#01,#b0,#8a,#1a,#1a,#26,#26
	db #82,#8c,#21,#8e,#97,#8a,#1a,#26
	db #18,#18,#24,#23,#82,#8c,#21,#8e
	db #8a,#97,#17,#23,#8a,#15,#15,#21
	db #21,#82,#8c,#21,#8e,#97,#8a,#15
	db #21,#13,#13,#1f,#1f,#82,#8c,#21
	db #8e,#97,#8a,#15,#21,#8a,#1a,#1a
	db #26,#26,#82,#8c,#21,#8e,#97,#8a
	db #1a,#26,#18,#18,#24,#24,#82,#8c
	db #21,#8e,#8a,#97,#18,#24,#8a,#17
	db #17,#23,#23,#82,#8c,#21,#8e,#97
	db #8a,#17,#23,#17,#17,#23,#23,#82
	db #8c,#21,#8e,#97,#8a,#17,#23,#8a
	db #1a,#1a,#26,#26,#82,#8c,#21,#8e
	db #97,#8a,#1a,#26,#18,#18,#24,#24
	db #82,#8c,#21,#8e,#8a,#97,#18,#24
	db #8a,#17,#17,#23,#23,#82,#8c,#21
	db #8e,#97,#8a,#17,#23,#17,#17,#23
	db #23,#82,#8c,#21,#8e,#97,#8a,#17
	db #23,#8a,#1a,#1a,#26,#26,#82,#8c
	db #21,#8e,#97,#8a,#1a,#26,#1a,#1a
	db #26,#26,#82,#8c,#21,#8e,#8a,#97
	db #1a,#26,#8a,#20,#20,#2c,#2c,#82
	db #8c,#21,#8e,#97,#8a,#20,#2c,#20
	db #20,#2c,#2c,#82,#8c,#21,#8e,#8a
	db #97,#20,#2c,#8a,#18,#18,#24,#24
	db #82,#8c,#21,#8e,#97,#8a,#18,#24
	db #18,#18,#24,#24,#82,#8c,#21,#8e
	db #8a,#97,#18,#24,#8a,#15,#15,#21
	db #21,#82,#8c,#21,#8e,#97,#8a,#15
	db #21,#15,#15,#21,#21,#82,#8c,#21
.l4ef3 equ $ + 6
	db #8e,#97,#8a,#15,#21,#80,#84,#de
	db #11,#2f,#11,#e2,#8a,#98,#10,#15
	db #21,#21,#15,#21,#21,#21,#15,#15
	db #15,#21,#15,#21,#21,#21,#21,#15
	db #21,#21,#15,#21,#21,#21,#15,#13
	db #13,#1f,#13,#1f,#1f,#1f,#1f,#12
	db #1e,#1e,#12,#1e,#1e,#1e,#12,#12
	db #12,#1e,#12,#1e,#1e,#1e,#1e,#17
	db #23,#23,#17,#23,#23,#23,#17,#17
	db #17,#23,#17,#23,#23,#23,#23,#98
	db #00,#80
.l4f3f
	db #df,#11,#2f,#11,#e2,#82,#8a,#cf
	db #15,#8f,#8e,#8e,#cf,#8c,#24,#c9
	db #21,#21,#21,#8a,#cf,#15,#8f,#15
	db #15,#cf,#8c,#24,#c9,#8f,#21,#21
	db #8a,#cf,#15,#8f,#8e,#8e,#cf,#8c
	db #24,#c9,#21,#21,#21,#8a,#cf,#15
	db #8f,#15,#15,#cf,#8c,#24,#c9,#8f
	db #21,#21,#8a,#cf,#15,#8f,#8e,#8e
	db #cf,#8c,#24,#c9,#21,#21,#21,#8a
	db #cf,#15,#8f,#15,#15,#cf,#8c,#24
	db #c9,#8f,#21,#21,#8a,#cf,#15,#8f
	db #8e,#8e,#cf,#8c,#24,#c9,#21,#21
	db #21,#8a,#cf,#15,#15,#15,#15,#cf
	db #8c,#28,#8e,#28,#28,#97,#80
.l4fae
	db #84,#df,#11,#25,#11,#e2,#8a,#97
	db #09,#15,#15,#09,#15,#15,#15,#09
	db #09,#8e,#15,#8e,#15,#15,#15,#8e
	db #09,#15,#15,#09,#15,#15,#15,#09
	db #07,#8e,#13,#8e,#13,#13,#13,#8e
	db #06,#12,#12,#06,#12,#12,#12,#06
	db #06,#8e,#12,#8e,#12,#12,#12,#8e
	db #0b,#17,#17,#0b,#17,#17,#17,#0b
	db #0b,#8e,#17,#8e,#17,#17,#17,#8e
	db #80
.l4ff7
	db #94,#fa,#4f,#84,#8c,#82,#dc,#1b
	db #18,#11,#ef,#30,#8e,#8e,#95,#00
	db #00

.l0e9b
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
	ret
.l049b
	db #00
.l04a2
	db #00
;
;	first init
;
; #10b1
;	ld bc,#7f00
;	ld a,#c4
;	out (c),a
;	xor a
;	call #4342
;	ld a,#c0
;	ld bc,#7f00
;	out (c),a
;
; #0164
;	xor a
;	call #0d26
;
; #0d26
;	push af
;	ld a,#00
;	call #0446
;	pop af
;	call #4342
;	call #0454
;	ret
;
; bank #c4
;
;
.music_info
	db "Hostage InGame 1-3 (1990)(Infogrames)(Mc Alby)",0
	db "",0

	read "music_end.asm"
