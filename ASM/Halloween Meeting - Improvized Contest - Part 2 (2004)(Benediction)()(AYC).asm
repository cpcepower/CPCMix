; Music of Halloween Meeting - Improvized Contest - Part 2 (2004)(Benediction)()(AYC)
; Ripped by Megachur the 24/02/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HALMICP2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #4000

	read "music_header.asm"

	jp l4006	; init
	jp l4032	; play
;
.init_music
.l4006
;
	di
	exx
	ex af,af'
	push af
	push bc
	push de
	push hl
	call l448e
	call l4495
	call l451c
	call l451b
	call l45b8
	call l4047
	ld a,(l475a)
.l4022
	push af
	call l4223
	pop af
	dec a
	jr nz,l4022
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	exx
	ei
	ret
;
.play_music
.l4032
;
	di
	exx
	ex af,af'
	push af
	push bc
	push de
	push hl
	call l4223
	call l408d
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	exx
	ei
	ret
;
.stop_music
.l4047
;
	ld b,#0e
	ld c,#0d
	xor a
.l404c
	push bc
	call l4055
	pop bc
	dec c
	djnz l404c
	ret
.l4055
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	out (c),c
	db #ed,#71 ; out (c),0
	ld b,#f4
	out (c),a
	ld bc,#f680
	out (c),c
	db #ed,#71 ; out (c),0
	ret
.l406c
	ld a,(hl)
	cp #00
	jr z,l4082
	ld (#0000),a
.l4074
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4082
	inc c
.l4083
	inc de
	ld a,d
	and #03
	ld d,a
	ld (l4098),de
	ret
.l408d
	ld de,#c080
	ld hl,#f4f6
	ld b,l
	out (c),d
	exx
.l4098 equ $ + 1
	ld de,#0000
	ld l,e
	ld b,#f4
	ld c,#00
.l409f
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
	nop
	nop
	nop
	nop
.l4223
	ld (l4241),sp
	ld a,(l475a)
	dec a
.l422d equ $ + 2
	ld hx,#00
	ld iy,l4235
.l4233 equ $ + 1
	jp l42e4
.l4235
	ld hl,(l4233)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (l4233),de
.l4241 equ $ + 1
	ld sp,#0000
	ret
.l4246 equ $ + 2
	call pe,#2142
.l4247
	nop
	nop
	ld c,l
	ld d,#00
	ld a,(l475a)
	ld e,a
	or a
	sbc hl,de
	ld (l4247),hl
	dec a
	jp nc,l42e4
	ld b,d
	ld de,l4284
	ld (l4233),de
	ld de,(l4800)
	add hl,de
	ld (l4247),hl
	ld a,c
	ld (l429a),a
	ld (l4285),a
	ld hl,(l4098)
	add hl,bc
	ld a,(l475a)
	ld c,a
	add hl,bc
	ld a,h
	and #03
	ld (l422d),a
	ld a,l
	ld (l42ad),a
.l4285 equ $ + 1
.l4284
	ld a,#00
	dec a
	jp m,l4291
	ld iy,l4296
.l428f equ $ + 1
.l428e
	jp l42e4
.l4291
	ld a,(l475a)
	jr l429c
.l4296
	ld a,(l475a)
.l429a equ $ + 1
	ld b,#00
	sub b
.l429c
	ld hl,(l428f)
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	inc de
	inc de
	inc de
	ld hl,#00a1
	add hl,de
	ex de,hl
.l42ad equ $ + 1
	ld (hl),#00
	inc hl
	ex de,hl
	ldi
	ldi
	ldi
	ldi
	ldi
	ld iy,l42c1
	dec a
	jr l428e
.l42c1
	ld hl,(l428f)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld hl,#bdb9
	add hl,de
	jr c,l42d8
	ld hl,l4246
	ld (l4233),de
	ld de,l42e4
.l42d8
	ld (l428f),de
	ld sp,(l4241)
	ei
	ret
	dw l42ec
.l42e4
	ld sp,l461a
.l42e8 equ $ + 1
	jp l43f7
	dw l42f4
.l42ec
	ld sp,l4624
	jp l4376
	dw l42fc
.l42f4
	ld sp,l462e
	jp l43f7
	dw l4304
.l42fc
	ld sp,l4638
	jp l4376
	dw l430c
.l4304
	ld sp,l4642
	jp l43f7
	dw l4314
.l430c
	ld sp,l464c
	jp l4376
	dw l431c
.l4314
	ld sp,l4656
	jp l4376
	dw l4324
.l431c
	ld sp,l4660
	jp l4376
	dw l432c
.l4324
	ld sp,l466a
	jp l4376
	dw l4334
.l432c
	ld sp,l4674
	jp l4376
	dw l433c
.l4334
	ld sp,l467e
	jp l4376
	dw l4344
.l433c
	ld sp,l4688
	jp l4376
	dw l434c
.l4344
	ld sp,l4692
	jp l4376
	dw l4246
.l434c
	ld sp,l469c
	jp l4376
	dw l435c
	ld sp,l46a6
	jp l4376
	dw l42e4
.l435c
	ld sp,l46b0
	jp l4376
.l4362
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc e
	ex af,af'
	dec a
	exx
	jp p,l438f
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l4376
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l438c
	exx
	ld d,a
	exx
	add b
	jr nc,l43cf
	ex af,af'
.l4384
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l4384
	ex af,af'
.l438c
	exx
	pop bc
	pop hl
.l438f
	sla c
	jr nz,l4397
	ld c,(hl)
	inc hl
	sll c
.l4397
	jr nc,l4362
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l43b4
	ex af,af'
	ld a,b
	exx
	ld b,a
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
.l43a9
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l43a9
	ex af,af'
	exx
	jr l438f
.l43b4
	ex af,af'
	ld a,d
	exx
	ld b,a
	inc b
	exx
	ld a,(hl)
	inc hl
	push hl
	push bc
	exx
	add c
	ld l,a
.l43c1
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	djnz l43c1
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l43cf
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l43d7
	ld a,(hl)
	ld (de),a
	inc l
	inc e
	djnz l43d7
	push hl
	push de
	jp (iy)
.l43e1
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc de
	res 2,d
	ex af,af'
	dec a
	exx
	jp p,l4414
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l43f7
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l4411
	exx
	ld d,a
	exx
	add b
	jr nc,l4478
	ex af,af'
.l4405
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l4405
	ex af,af'
.l4411
	exx
	pop bc
	pop hl
.l4414
	sla c
	jr nz,l441c
	ld c,(hl)
	inc hl
	sll c
.l441c
	jr nc,l43e1
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l444b
	ex af,af'
	ld a,b
	exx
	ld b,a
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
	ld a,d
	res 0,a
	res 1,a
	exx
	adc (hl)
	add hx
	and #fb
	inc hl
	exx
	ld h,a
.l443c
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l443c
	ex af,af'
	exx
	jr l4414
.l444b
	ex af,af'
	ld a,d
	exx
	ld b,a
	inc b
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
	ld a,d
	res 0,a
	res 1,a
	exx
	adc (hl)
	add hx
	and #fb
	inc hl
	push hl
	push bc
	exx
	ld h,a
.l4466
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	djnz l4466
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l4478
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l4480
	ld a,(hl)
	ld (de),a
	inc hl
	res 2,h
	inc de
	res 2,d
	djnz l4480
	push hl
	push de
	jp (iy)
.l448e
	ld hl,(l4800)
	ld (l4247),hl
	ret
.l4495
	ld hl,l475d
	ld d,#70
	exx
	ld hl,(l475b)
	inc hl
	inc hl
	push hl
	ld de,#0003
	ld a,(l475a)
	ld b,a
	ld c,#00
.l44aa
	ld a,(hl)
	cp #01
	jr z,l44bb
	exx
	ld (hl),d
	inc hl
	ld (hl),#04
	dec hl
	ld a,d
	add #08
	ld d,a
	exx
	inc c
.l44bb
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l44aa
	ld hl,l475d
	ld d,#70
	ld b,#03
	exx
	pop hl
	push hl
	ld de,#0003
	ld a,(l475a)
	ld b,a
.l44d3
	ld a,(hl)
	cp #04
	jr z,l44f0
	exx
	ld a,b
	inc a
	and #03
	ld b,a
	jr nz,l44e9
	ld a,c
	or a
	jr z,l44e9
	dec c
	ld a,d
	add #04
	ld d,a
.l44e9
	ld (hl),d
	inc hl
	ld (hl),#01
	dec hl
	inc d
	exx
.l44f0
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l44d3
	ld hl,l42e8
	ld bc,#0007
	exx
	pop hl
	ld de,#0003
	ld a,(l475a)
	ld b,a
.l4506
	ld a,(hl)
	cp #01
	exx
	ld de,l4376
	jr z,l4512
	ld de,l43f7
.l4512
	ld (hl),e
	inc hl
	ld (hl),d
	add hl,bc
	exx
	add hl,de
	djnz l4506
	ret
.l451b
	ret
.l451c
	ld hl,l475d
	ld de,l409f
	ld b,(hl)
	inc hl
	ld a,(hl)
	inc hl
	cp #01
	call z,l459d
	call nz,l45aa
	ld b,#0d
.l4530
	push bc
	call l457a
	ld b,(hl)
	inc hl
	ld a,(hl)
	cp #04
	call z,l45aa
	jr z,l4553
	dec hl
	dec hl
	cp (hl)
	call nz,l459d
	jr nz,l4551
	dec hl
	ld a,(hl)
	inc hl
	sub b
	inc a
	call z,l45a5
	call nz,l459d
.l4551
	inc hl
	inc hl
.l4553
	inc hl
	pop bc
	djnz l4530
	ex de,hl
	ld (hl),#7e
	inc hl
	ld (hl),#3c
	inc hl
	ld (hl),#28
	inc hl
	ld (hl),#0f
	inc hl
	ld (hl),#3d
	inc hl
	ex de,hl
	ld hl,l4074
	ld bc,#000f
	ldir
	dec de
	ld hl,l4083
	ld bc,#000a
	ldir
	ret
.l457a
	push hl
	ld hl,l406c
	ldi
	ldi
	ld b,d
	ld c,#ff
	ld a,e
	ldi
	ldi
	ldi
	ldi
	ld (de),a
	inc de
	ld a,b
	ld (de),a
	inc de
	ld hl,l4074
	ld bc,#000f
	ldir
	pop hl
	ret
.l459d
	ex de,hl
	ld (hl),#26
	inc hl
	ld (hl),b
	inc hl
	ex de,hl
	ret
.l45a5
	ld a,#24
	ld (de),a
	inc de
	ret
.l45aa
	ex de,hl
	ld (hl),#3e
	inc hl
	ld (hl),b
	inc hl
	ld (hl),#b2
	inc hl
	ld (hl),#67
	inc hl
	ex de,hl
	ret
.l45b8
	ld hl,l4246
	ld (l4233),hl
	ld hl,l42e4
	ld (l428f),hl
	xor a
	ld (l422d),a
	ld hl,#0000
	ld (l4098),hl
	call l45dd
	ld hl,l461a
	ld de,l46ba
	ld bc,#00a0
	ldir
	ret
.l45dd
	ld hl,l475d
	exx
	ld a,(l475a)
	ld b,a
	ld de,(l475b)
	inc de
	inc de
	ld hl,l461a
.l45ee
	push bc
	exx
	ld a,(hl)
	inc hl
	inc hl
	exx
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#40
	inc hl
	inc hl
	ex de,hl
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	push hl
	add hl,bc
	ld b,h
	ld c,l
	pop hl
	inc hl
	ex de,hl
	ld (hl),c
	inc hl
	ld (hl),b
	inc hl
	pop bc
	djnz l45ee
	ret
.l461a
	djnz l461c
.l461c
	ret
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l4624
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
.l462e
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
.l4638
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
.l4642
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
.l464c
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
.l4656
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
.l4660
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
.l466a
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
.l4674
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
.l467e
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
.l4688
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
.l4692
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
.l469c
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
.l46a6
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
.l46b0
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
.l46ba
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
	ld (#0002),sp
	ld a,(#0001)
	dec a
	nop
	ld h,#00
	ld iy,#0001
	jp #0001
	ld hl,(#0002)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (#0002),de
	ld sp,#0000
	ret
	db #00,#00
	ld hl,#0000
	ld c,l
	ld d,#00
	ld a,(#0001)
	ld e,a
	or a
	sbc hl,de
	ld (#0002),hl
	dec a
.l475b equ $ + 1
.l475a
	ld c,#00
.l475d equ $ + 1
	db #48,#c0,#04,#c4,#01,#c8,#04,#c5
	db #01,#d0,#04,#c6,#01,#c7,#01,#cc
	db #01,#cd,#01,#ce,#01,#cf,#01,#d4
	db #01,#d5,#01,#d6,#01,#d7,#01,#d8
	db #01,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00
.l4800
	dw #1185
	db #01,#2e,#00,#01,#c1,#02,#01,#f3
	db #02,#01,#c2,#06,#01,#38,#07,#01
	db #31,#09,#01,#20,#0a,#01,#69,#0a
	db #01,#b6,#0a,#01,#5a,#0b,#01,#d3
	db #0b,#01,#3e,#0c,#01,#63,#0c,#01
	db #88,#0c,#ff,#ff,#ff,#ff,#ff,#ff
	db #a9,#92,#ec,#00,#aa,#aa,#fe,#13
	db #a8,#a8,#f3,#13,#1c,#92,#ec,#28
	db #1d,#1d,#fe,#3b,#1b,#1b,#f3,#3b
	db #2d,#93,#ec,#50,#2e,#2e,#fe,#63
	db #2c,#2c,#cb,#63,#60,#00,#49,#d5
	db #ec,#40,#d6,#d6,#fe,#53,#d4,#d4
	db #f3,#53,#49,#8e,#ec,#68,#8f,#8f
	db #fe,#7b,#8d,#8d,#f3,#7b,#49,#96
	db #ec,#90,#97,#97,#fe,#a3,#95,#95
	db #df,#a3,#5d,#9f,#f7,#cc,#b3,#f7
	db #d6,#d8,#40,#d8,#00,#bd,#ec,#30
	db #25,#be,#be,#fe,#43,#bc,#bc,#cb
	db #43,#a9,#ec,#80,#25,#aa,#aa,#fe
	db #93,#a8,#a8,#f3,#93,#1c,#ec,#a8
	db #66,#1d,#fe,#bd,#fe,#bb,#1b,#1b
	db #fc,#bb,#f7,#c0,#2d,#93,#ec,#d1
	db #2e,#2e,#fe,#e4,#2c,#2c,#cb,#e4
	db #c1,#80,#a4,#9f,#c0,#d5,#ec,#c1
	db #d6,#d6,#fe,#d4,#d4,#d4,#a4,#f3
	db #d4,#8e,#ec,#e9,#8f,#8f,#fe,#fc
	db #8d,#8d,#a4,#f3,#fc,#9f,#ec,#11
	db #a0,#a0,#fe,#24,#9e,#9e,#af,#df
	db #24,#b3,#f7,#4d,#bd,#f7,#57,#d8
	db #c1,#d7,#81,#b1,#62,#13,#8e,#91
	db #91,#fe,#0c,#8a,#8a,#fe,#04,#e1
	db #02,#01,#6a,#6e,#6e,#6a,#6a,#67
	db #67,#fe,#2c,#80,#e1,#2a,#77,#7b
	db #7b,#77,#77,#74,#74,#c0,#fe,#54
	db #cd,#52,#86,#89,#89,#86,#86,#82
	db #50,#82,#fe,#90,#89,#f6,#19,#9f
	db #a3,#a3,#9f,#1c,#9f,#9c,#9c,#fe
	db #a4,#cd,#a2,#ec,#11,#d5,#d8,#4c
	db #d8,#fe,#fc,#d1,#d1,#fe,#f4,#e1
	db #f2,#b3,#b6,#07,#b6,#b3,#b3,#af
	db #af,#fe,#1c,#f5,#1a,#d8,#c9,#c0
	db #dd,#4d,#e6,#57,#77,#7b,#7b,#77
	db #77,#74,#60,#74,#fe,#95,#e1,#93
	db #6a,#6e,#6e,#6a,#6a,#30,#67,#67
	db #fe,#bd,#e1,#bb,#5f,#62,#62,#5f
	db #1e,#5f,#5b,#5b,#fe,#e5,#b9,#e3
	db #d8,#ba,#d8,#52,#8e,#63,#8f,#fd
	db #83,#fe,#8d,#8d,#8d,#8c,#fe,#8b
	db #fe,#89,#c3,#fe,#87,#e8,#82,#6b
	db #6b,#6c,#6c,#fe,#aa,#fe,#7d,#68
	db #69,#fc,#b2,#fe,#b0,#6a,#e8,#aa
	db #78,#78,#79,#46,#79,#fe,#d2,#77
	db #77,#76,#fc,#da,#fe,#d8,#77,#90
	db #d4,#d2,#86,#87,#fd,#0f,#86,#86
	db #85,#85,#42,#84,#f6,#92,#a0,#a0
	db #a1,#a1,#fe,#22,#9f,#37,#9f,#9e
	db #fc,#2a,#fe,#28,#9f,#d4,#22,#f6
	db #52,#f6,#18,#c2,#d8,#aa,#b0,#8a
	db #50,#50,#51,#51,#fe,#ea,#4f,#34
	db #4f,#4e,#fc,#f2,#fe,#f0,#4f,#e8
	db #ea,#5f,#60,#83,#fd,#13,#5f,#5f
	db #5e,#5e,#5d,#fe,#1b,#fe,#19,#e4
	db #fe,#17,#c0,#12,#b0,#c2,#47,#48
	db #fd,#b3,#47,#47,#1f,#46,#46,#45
	db #fe,#bb,#fe,#b9,#fe,#b7,#c0,#b2
	db #fd,#a7,#aa,#f9,#04,#59,#f7,#0c
	db #35,#f7,#16,#3b,#f7,#20,#28,#aa
	db #f6,#2a,#2c,#f7,#35,#21,#f7,#3f
	db #23,#ed,#49,#1c,#a4,#bb,#5d,#a9
	db #ec,#a3,#aa,#aa,#fe,#b6,#a8,#a8
	db #c9,#f3,#b6,#eb,#8e,#1d,#1d,#fe
	db #de,#1b,#1b,#f3,#de,#4f,#2d,#ec
	db #f3,#2e,#2e,#fe,#06,#fe,#3d,#cb
	db #06,#60,#a3,#49,#d5,#ec,#e3,#d6
	db #d6,#fe,#f6,#d4,#d4,#f3,#f6,#49
	db #8e,#ec,#0b,#8f,#8f,#fe,#1e,#8d
	db #8d,#f3,#1e,#49,#96,#ec,#33,#97
	db #97,#fe,#46,#95,#95,#df,#46,#5d
	db #9f,#f7,#6f,#b3,#f7,#79,#d8,#e3
	db #d8,#a3,#bd,#ec,#d3,#26,#be,#be
	db #fe,#e6,#bc,#bc,#cb,#e6,#d8,#83
	db #8e,#93,#ec,#4b,#8f,#8f,#fe,#5e
	db #8d,#8d,#f3,#5e,#fa,#73,#93,#f1
	db #78,#a0,#a0,#fe,#86,#9e,#9e,#cb
	db #86,#c3,#23,#d7,#5f,#5f,#b1,#01
	db #b3,#f7,#f0,#bd,#f7,#fa,#d8,#64
	db #d7,#24,#fe,#af,#05,#c8,#6d,#ea
	db #d6,#b7,#ab,#a9,#ec,#b5,#fa,#fb
	db #d7,#8e,#80,#61,#e4,#a9,#01,#db
	db #01,#00,#c0,#ff,#00,#01,#40,#c0
	db #3f,#01,#01,#80,#bf,#7f,#7f,#00
	db #01,#c1,#01,#c1,#01,#c0,#01,#bf
	db #01,#be,#01,#bd,#5f,#bb,#6f,#01
	db #01,#5d,#7a,#5c,#00,#01,#e3,#01
	db #e3,#01,#e2,#01,#e1,#c0,#01,#e0
	db #5b,#de,#01,#38,#92,#ec,#00,#39
	db #39,#fe,#13,#36,#36,#f3,#13,#66
	db #92,#ec,#28,#67,#67,#fe,#3b,#64
	db #64,#f3,#3b,#7b,#93,#ec,#50,#7c
	db #7c,#fe,#63,#79,#79,#cb,#63,#60
	db #00,#49,#1c,#ec,#40,#1d,#1d,#fe
	db #53,#1a,#1a,#f3,#53,#49,#b3,#ec
	db #68,#b4,#b4,#fe,#7b,#b1,#b1,#f3
	db #7b,#49,#bd,#ec,#90,#bf,#bf,#fe
	db #a3,#bc,#bc,#de,#a3,#a4,#ed,#b4
	db #fd,#ec,#e0,#fe,#fe,#fe,#f3,#fb
	db #fb,#a4,#cb,#f3,#e1,#ec,#30,#e3
	db #e3,#fe,#43,#e0,#e0,#a4,#cb,#43
	db #38,#ec,#80,#39,#39,#fe,#93,#36
	db #36,#a4,#f3,#93,#66,#eb,#a8,#67
	db #67,#fe,#bc,#64,#64,#a4,#f3,#bc
	db #7b,#ec,#d1,#7c,#7c,#fe,#e4,#79
	db #79,#e9,#cb,#e4,#c3,#80,#9d,#be
	db #1c,#ec,#c1,#1d,#1d,#fe,#d4,#29
	db #1a,#1a,#f3,#d4,#b3,#ec,#e9,#b4
	db #b4,#fe,#fc,#29,#b1,#b1,#f3,#fc
	db #d5,#ec,#11,#d6,#d6,#fe,#24,#3d
	db #d3,#d3,#de,#24,#ed,#35,#d8,#c1
	db #d8,#81,#3f,#ec,#b1,#24,#40,#40
	db #fe,#c4,#3d,#3d,#cb,#c4,#b3,#b6
	db #4c,#b6,#fe,#0c,#af,#af,#fe,#04
	db #e1,#02,#8e,#91,#06,#91,#8e,#8e
	db #8a,#8a,#fe,#2c,#a5,#2a,#9f,#02
	db #a3,#a3,#9f,#9f,#9c,#9c,#fe,#90
	db #a3,#80,#f6,#19,#d5,#d8,#d8,#d5
	db #d5,#d1,#d1,#c0,#fe,#a4,#b9,#a2
	db #0c,#0f,#0f,#0c,#0c,#08,#78,#08
	db #fe,#f4,#b9,#f2,#f6,#97,#e2,#43
	db #77,#7b,#7b,#4e,#77,#fe,#6c,#74
	db #74,#fe,#6d,#fc,#6a,#e5,#6f,#96
	db #03,#9a,#9a,#96,#96,#93,#93,#fe
	db #95,#b9,#93,#01,#8e,#91,#91,#8e
	db #8e,#8a,#8a,#fe,#e5,#80,#b9,#e3
	db #86,#89,#89,#86,#86,#82,#82,#c8
	db #fe,#35,#b9,#33,#b3,#b4,#fd,#83
	db #b3,#b3,#b2,#3c,#b2,#b1,#fe,#8b
	db #fe,#89,#fe,#87,#e8,#82,#8e,#8f
	db #c7,#fd,#ab,#fe,#2d,#8d,#8d,#8c
	db #fe,#b3,#fe,#b1,#fe,#af,#84,#e8
	db #aa,#a0,#a0,#a1,#a1,#fe,#d2,#9f
	db #9f,#68,#9e,#fc,#da,#fe,#d8,#9f
	db #d4,#d2,#be,#be,#bf,#42,#bf,#fe
	db #0e,#bd,#bd,#bc,#bc,#f6,#0e,#d5
	db #41,#d6,#fd,#23,#d5,#d5,#d4,#d4
	db #d3,#fe,#2b,#f9,#fe,#29,#fe,#27
	db #c0,#22,#d8,#aa,#d8,#8a,#86,#87
	db #fd,#c3,#07,#86,#86,#85,#85,#84
	db #fe,#cb,#fe,#c9,#fe,#c7,#84,#e8
	db #c2,#6b,#6b,#6c,#6c,#fe,#ea,#6a
	db #6a,#68,#69,#fc,#f2,#fe,#f0,#6a
	db #e8,#ea,#78,#78,#79,#46,#79,#fe
	db #12,#77,#77,#76,#fc,#1a,#fe,#18
	db #77,#c2,#c0,#12,#b0,#c2,#50,#50
	db #51,#51,#fe,#b2,#4f,#37,#4f,#4e
	db #fc,#ba,#fe,#b8,#4f,#c0,#b2,#fb
	db #f1,#fc,#ff,#aa,#fa,#0a,#59,#f7
	db #11,#35,#f7,#1b,#3b,#f6,#25,#28
	db #aa,#f7,#30,#2c,#f7,#3a,#21,#f7
	db #44,#23,#f2,#4e,#a9,#a4,#bb,#5d
	db #38,#ec,#a3,#39,#39,#fe,#b6,#36
	db #36,#a4,#f3,#b6,#66,#ec,#cb,#67
	db #67,#fe,#de,#64,#64,#a4,#f3,#de
	db #7b,#ec,#f3,#7c,#7c,#fe,#06,#79
	db #79,#d2,#cb,#06,#60,#a3,#1c,#ec
	db #e3,#1d,#1d,#fe,#f6,#1a,#52,#1a
	db #f3,#f6,#b3,#ec,#0b,#b4,#b4,#fe
	db #1e,#b1,#52,#b1,#f3,#1e,#bd,#ec
	db #33,#bf,#bf,#fe,#46,#bc,#69,#bc
	db #de,#46,#ed,#57,#fd,#ec,#83,#fe
	db #fe,#fe,#96,#29,#fb,#fb,#cb,#96
	db #e1,#ec,#d3,#e3,#e3,#fe,#e6,#29
	db #e0,#e0,#cb,#e6,#1c,#ec,#23,#1d
	db #1d,#fe,#36,#29,#1a,#1a,#f3,#36
	db #d5,#ec,#4b,#d6,#d6,#fe,#5e,#29
	db #d3,#d3,#f3,#5e,#ef,#ec,#73,#f0
	db #f0,#fe,#86,#3a,#ed,#ed,#cb,#86
	db #dd,#23,#d2,#45,#bd,#ec,#14,#bf
	db #4f,#bf,#fe,#27,#bc,#bc,#cb,#27
	db #dd,#c3,#d3,#e7,#ee,#a3,#a4,#c2
	db #be,#3f,#ec,#04,#40,#40,#fe,#17
	db #3d,#3d,#a4,#cb,#17,#52,#ec,#54
	db #53,#53,#fe,#67,#50,#50,#aa,#cb
	db #67,#47,#fe,#a4,#59,#fd,#a7,#77
	db #fe,#ab,#4b,#aa,#fe,#ae,#5f,#fd
	db #b1,#7e,#fe,#b5,#4f,#fe,#b8,#64
	db #aa,#fd,#bb,#86,#fe,#bf,#54,#fe
	db #c2,#6a,#fd,#c5,#8e,#d7,#fe,#c9
	db #fd,#a8,#70,#fd,#cf,#96,#fe,#d3
	db #fd,#b2,#fd,#ab,#39,#77,#9f,#fe
	db #dd,#fd,#bc,#fd,#b5,#7e,#a9,#fe
	db #e7,#ce,#fd,#c6,#fd,#bf,#86,#b3
	db #fe,#f1,#fd,#d0,#fd,#c9,#8e,#73
	db #bd,#fe,#fb,#fd,#da,#fd,#d3,#96
	db #c9,#fe,#05,#fd,#e4,#9c,#fd,#dd
	db #9f,#d5,#fe,#0f,#fd,#ee,#fd,#e7
	db #a9,#e1,#e7,#fe,#19,#fd,#f8,#fd
	db #f1,#b3,#ef,#fe,#23,#fd,#02,#fd
	db #fb,#39,#bd,#fd,#fe,#2d,#fd,#0c
	db #fd,#05,#c9,#0c,#fe,#37,#ce,#fd
	db #16,#fd,#0f,#d5,#1c,#fe,#41,#fd
	db #20,#fd,#19,#e1,#73,#2d,#fe,#4b
	db #fd,#2a,#fd,#23,#ef,#3f,#fe,#55
	db #fd,#34,#b9,#fd,#2d,#fd,#fd,#66
	db #fd,#3e,#fd,#37,#0c,#66,#fe,#69
	db #ce,#fd,#48,#fd,#41,#1c,#7b,#fe
	db #73,#fd,#52,#fd,#4b,#2d,#77,#92
	db #fe,#7d,#fd,#5c,#fd,#55,#3f,#fd
	db #3a,#fd,#66,#fd,#5f,#73,#52,#fd
	db #12,#fd,#70,#fd,#69,#66,#de,#fe
	db #9b,#fd,#7a,#9c,#fd,#73,#7b,#fa
	db #fe,#a5,#fd,#84,#fd,#7d,#92,#18
	db #ed,#fe,#af,#fd,#8e,#fc,#15,#38
	db #fe,#b9,#fd,#98,#c3,#fd,#bf,#77
	db #5a,#fe,#c3,#fd,#a2,#fd,#9b,#de
	db #fd,#08,#fd,#ac,#fd,#a5,#39,#fa
	db #a3,#fe,#d7,#fd,#b6,#fd,#af,#18
	db #cc,#fe,#e1,#f0,#fc,#3d,#b4,#e7
	db #fc,#47,#b4,#37,#38,#02,#bb,#d9
	db #00,#01,#89,#28,#60,#00,#d8,#3f
	db #00,#01,#68,#e8,#67,#5d,#02,#d9
	db #80,#01,#88,#a8,#5f,#80,#d9,#c1
	db #00,#89,#e9,#ff,#78,#61,#e8,#e8
	db #a0,#01,#70,#60,#f0,#f1,#c0,#00
	db #50,#41,#01,#41,#eb,#01,#f0,#01
	db #ef,#91,#ed,#01,#bb,#5d,#02,#d9
	db #a3,#ba,#5d,#db,#2e,#71,#d8,#e2
	db #00,#01,#0b,#e8,#0a,#01,#d9,#23
	db #60,#ab,#ff,#5f,#4a,#60,#ec,#88
	db #2b,#a0,#a4,#cd,#03,#f6,#a1,#dc
	db #37,#f6,#9d,#dd,#e5,#65,#f9,#89
	db #03,#fe,#91,#f0,#94,#f5,#a3,#02
	db #fe,#af,#f8,#d5,#a8,#fd,#d7,#fc
	db #df,#ad,#e4,#b3,#36,#02,#53,#af
	db #d9,#00,#d5,#fd,#28,#a9,#fd,#2c
	db #fc,#28,#f8,#2a,#d8,#00,#d5,#01
	db #14,#83,#13,#fb,#d9,#e0,#3f,#fd
	db #08,#7e,#fd,#0c,#ea,#fc,#08,#f8
	db #0a,#ec,#f4,#70,#d9,#30,#1c,#fd
	db #58,#38,#fe,#fd,#5c,#fc,#58,#f8
	db #5a,#ec,#44,#af,#8f,#01,#81,#bf
	db #80,#fb,#af,#d9,#11,#3f,#fd,#39
	db #7e,#fd,#3d,#fc,#39,#f8,#3b,#ec
	db #25,#57,#70,#d9,#61,#1c,#fd,#89
	db #38,#fd,#8d,#fc,#89,#f8,#8b,#f7
	db #d8,#61,#c4,#75,#f0,#01,#e8,#10
	db #a9,#fd,#29,#fa,#25,#e2,#0b,#5d
	db #cc,#d9,#51,#66,#fd,#79,#fa,#75
	db #e2,#5b,#7e,#d9,#a1,#75,#3f,#fd
	db #c9,#fa,#c5,#e2,#ab,#30,#d9,#f1
	db #18,#fd,#19,#de,#fa,#15,#e2,#fb
	db #97,#d8,#41,#fc,#9d,#fa,#66,#e2
	db #4c,#bb,#ba,#d9,#92,#de,#fd,#ba
	db #fa,#b6,#e2,#9c,#70,#d9,#e2,#38
	db #ed,#fd,#0a,#fa,#06,#e2,#ec,#fb
	db #d9,#32,#d8,#ba,#cc,#d9,#82,#75
	db #66,#fd,#aa,#fa,#a6,#e2,#8c,#f6
	db #d9,#d2,#7b,#fd,#fa,#da,#fa,#f6
	db #e2,#dc,#53,#d9,#22,#d8,#5a,#f4
	db #d9,#72,#fa,#eb,#fd,#9a,#fa,#96
	db #e2,#7c,#18,#d9,#c2,#0c,#fd,#ea
	db #fa,#e6,#ae,#e2,#cc,#38,#d9,#12
	db #1c,#fd,#3a,#fa,#36,#e2,#1c,#7e
	db #ae,#d9,#62,#66,#fd,#8a,#cc,#fd
	db #8e,#fa,#8c,#e6,#97,#23,#ba,#d9
	db #b2,#92,#fd,#da,#fa,#d6,#d8,#b2
	db #4f,#f7,#0c,#59,#aa,#f6,#16,#35
	db #f7,#21,#3b,#f7,#2b,#28,#f7,#35
	db #2c,#aa,#f7,#3f,#21,#ed,#49,#70
	db #bb,#5d,#53,#d9,#a3,#d5,#bf,#fd
	db #cb,#a9,#fd,#cf,#fc,#cb,#f8,#cd
	db #d8,#a3,#01,#b7,#83,#b6,#57,#fb
	db #d9,#83,#3f,#fd,#ab,#7e,#fd,#af
	db #fc,#ab,#f8,#ad,#ab,#ec,#97,#70
	db #d9,#d3,#1c,#fd,#fb,#38,#fd,#ff
	db #fc,#fb,#f5,#f8,#fd,#ec,#e7,#c8
	db #23,#e8,#5a,#f6,#b1,#73,#cc,#b0
	db #c3,#55,#7e,#b1,#14,#38,#b1,#64
	db #18,#b1,#b4,#de,#b1,#04,#56,#a9
	db #b1,#54,#59,#fd,#a4,#b3,#fd,#a8
	db #fe,#a6,#bd,#aa,#f7,#ae,#c9,#f7
	db #b8,#d5,#f7,#c2,#70,#fd,#cc,#e1
	db #d5,#fd,#d0,#fe,#ce,#ef,#f7,#d6
	db #fd,#f7,#e0,#0c,#f7,#ea,#5a,#8e
	db #fd,#f4,#1c,#fd,#f8,#fe,#f6,#2d
	db #f7,#fe,#3f,#b6,#f7,#08,#52,#f7
	db #12,#fc,#a8,#66,#fd,#20,#fe,#1e
	db #7b,#bb,#f7,#26,#92,#f7,#30,#f6
	db #9a,#fc,#d0,#c3,#fd,#48,#fe,#46
	db #d6,#fa,#4e,#fc,#53,#fa,#f7,#58
	db #18,#f7,#62,#fc,#f8,#38,#d5,#fd
	db #70,#fe,#6e,#5a,#f7,#76,#7e,#f7
	db #80,#a3,#f7,#8a,#b5,#fc,#20,#cc
	db #fd,#98,#fe,#96,#f6,#f7,#9e,#23
	db #f7,#a8,#6d,#53,#f7,#b2,#fc,#48
	db #86,#fd,#c0,#fe,#be,#bb,#f7,#c6
	db #54,#f4,#f7,#d0,#30,#f7,#da,#70
	db #60,#e4,#03,#af,#d9,#00,#00,#fd
	db #28,#01,#fd,#2c,#fc,#28,#f8,#2a
	db #d8,#00,#db,#01,#14,#83,#13,#04
	db #d9,#e0,#fc,#c6,#02,#fd,#0c,#fc
	db #08,#fd,#f8,#0a,#d8,#e0,#c4,#f4
	db #af,#8f,#01,#81,#bf,#80,#04,#d9
	db #11,#bf,#fc,#f7,#02,#fd,#3d,#fc
	db #39,#f8,#3b,#d8,#11,#74,#25,#f0
	db #01,#ff,#e8,#10,#fc,#e3,#fa,#25
	db #e2,#0b,#fc,#e7,#dc,#54,#f6,#e3
	db #d8,#51,#fb,#ba,#5b,#f0,#f1,#e8
	db #00,#f8,#ed,#e0,#ef,#05,#d8,#41
	db #fc,#19,#df,#fa,#66,#e2,#4c,#03
	db #d9,#92,#fc,#c9,#fa,#b6,#e2,#9c
	db #b0,#f1,#ff,#d8,#31,#d8,#ba,#fc
	db #0a,#dc,#85,#fc,#5a,#fa,#a6,#d8
	db #82,#ba,#8c,#ff,#e2,#64,#f6,#3f
	db #d8,#5a,#b0,#22,#b0,#d2,#60,#c2
	db #f0,#b2,#e8,#c1,#eb,#fc,#8a,#fa
	db #d6,#d8,#b2,#00,#b0,#0c,#04,#bb
	db #5d,#d4,#e4,#fd,#fc,#da,#fa,#57
	db #fa,#cf,#d8,#a3,#01,#b7,#83,#b6
	db #04,#d9,#83,#bf,#fc,#69,#02,#fd
	db #af,#fc,#ab,#f8,#ad,#d8,#83,#c4
	db #97,#c8,#23,#f5,#e8,#5a,#fc,#09
	db #01,#73,#72,#75,#01,#61,#04,#00
	db #bb,#a4,#f7,#f2,#9a,#fa,#f0,#de
	db #86,#be,#f8,#02,#f7,#62,#f8,#5e
	db #f4,#60,#de,#ec,#7f,#ec,#6c,#03
	db #ed,#a8,#fc,#94,#fa,#b8,#ec,#a8
	db #04,#80,#56,#da,#04,#8f,#d9,#00
	db #01,#02,#03,#ef,#26,#c4,#3b,#01
	db #28,#01,#87,#dd,#cd,#75,#fb,#68
	db #02,#16,#be,#01,#f9,#97,#48,#01
	db #d8,#01,#ff,#f6,#df,#ba,#33,#10
	db #2a,#0f,#79,#01,#6b,#01,#6a,#2e
	db #09,#5f,#2a,#ff,#f6,#db,#f7,#d1
	db #c4,#de,#01,#cb,#01,#2a,#01,#0d
	db #01,#18,#73,#16,#1e,#01,#02,#03
	db #f8,#a2,#e2,#ae,#01,#a5,#47,#cb
	db #38,#bf,#d9,#00,#18,#fd,#28,#f0
	db #27,#c4,#3b,#01,#28,#01,#87,#ca
	db #25,#ff,#ef,#56,#24,#cc,#01,#f9
	db #97,#48,#f6,#ea,#e0,#01,#f6,#e0
	db #ce,#f9,#ff,#01,#17,#0c,#75,#01
	db #6a,#01,#69,#56,#08,#37,#01,#f4
	db #da,#f8,#d2,#fd,#01,#8f,#01,#ee
	db #92,#8d,#01,#0e,#01,#4a,#a5,#48
	db #18,#fd,#a4,#fc,#f8,#a3,#f6,#9c
	db #ec,#b0,#01,#a6,#e9,#a5,#5f,#e3
	db #00,#29,#00,#0e,#f5,#02,#0d,#e9
	db #0e,#0c,#0c,#b0,#00,#bf,#ea,#77
	db #0b,#ef,#8e,#01,#00,#d3,#ff,#f6
	db #90,#ec,#cc,#92,#fa,#ff,#b0,#08
	db #da,#80,#d7,#a5,#88,#56,#22,#cf
	db #f6,#11,#ec,#4d,#92,#7b,#fe,#d8
	db #89,#e8,#d7,#01,#01,#01,#18,#01
	db #17,#01,#16,#11,#14,#08,#3d,#08
	db #09,#fb,#06,#d8,#02,#e0,#15,#fe
	db #53,#0a,#fa,#56,#3d,#00,#00,#f8
	db #fc,#ce,#5d,#f6,#98,#fe,#8f,#0e
	db #f5,#a5,#77,#0d,#e9,#b1,#ae,#a1
	db #ea,#1a,#0b,#ef,#31,#01,#a3,#d3
	db #a2,#ff,#f6,#33,#ec,#6f,#92,#9d
	db #b0,#ab,#b0,#23,#af,#ab,#60,#4b
	db #9c,#ec,#fa,#f6,#b4,#ec,#f0,#92
	db #1e,#d8,#2c,#f9,#a3,#0a,#70,#ab
	db #09,#aa,#e8,#3c,#08,#e9,#55,#07
	db #e9,#6d,#06,#e8,#85,#05,#a8,#e9
	db #9e,#04,#e9,#b6,#03,#eb,#ce,#00
	db #00,#0e,#c0,#f9,#e6,#69,#e4,#00
	db #2e,#00,#0c,#e3,#02,#0b,#f9,#20
	db #b0,#00,#f0,#77,#0a,#ff,#e9,#88
	db #01,#00,#97,#ff,#60,#b8,#e0,#80
	db #d7,#9f,#88,#50,#01,#c9,#fe,#67
	db #18,#e2,#b3,#01,#01,#01,#1e,#01
	db #1d,#01,#1c,#12,#1a,#08,#3e,#08
	db #09,#fb,#0b,#e2,#07,#e1,#10,#f5
	db #25,#fe,#58,#0a,#1f,#0a,#00,#00
	db #f8,#01,#ce,#5d,#f6,#98,#ec,#8f
	db #f4,#b6,#7f,#0b,#f9,#c3,#b0,#a3
	db #f0,#1a,#fe,#5b,#ea,#2c,#01,#a3
	db #97,#a2,#fd,#60,#5b,#b0,#23,#af
	db #ab,#60,#4b,#c8,#14,#e7,#4b,#09
	db #da,#dd,#ff,#88,#14,#d5,#2c,#fc
	db #54,#fa,#a4,#01,#a7,#c9,#a6,#f9
	db #e6,#69,#e4,#0e,#80,#fe,#00,#0d
	db #0d,#0c,#0c,#0b,#0b,#0a,#9b,#e2
	db #00,#0f,#0f,#fc,#1f,#fd,#22,#0c
	db #f6,#28,#d8,#00,#ff,#01,#14,#01
	db #73,#ba,#12,#0f,#b7,#01,#a9,#65
	db #48,#c4,#ed,#0d,#1f,#fc,#0f,#71
	db #01,#63,#01,#62,#4f,#01,#f6,#01
	db #fe,#fd,#08,#08,#7f,#09,#fb,#10
	db #f6,#0c,#f5,#15,#d8,#21,#fd,#52
	db #f9,#05,#c4,#9e,#ff,#f6,#98,#ce
	db #b2,#d8,#da,#01,#ad,#01,#0c,#b0
	db #ab,#71,#41,#37,#11,#cd,#01,#db
	db #fe,#98,#0f,#0f,#fc,#9b,#fd,#9e
	db #0c,#01,#86,#c0,#c9,#85,#60,#da
	db #0a,#23,#ff,#01,#00,#01,#00,#01
	db #ff,#01,#fe,#01,#fd,#01,#fc,#01
	db #fb,#01,#fa,#ff,#01,#f9,#01,#f8
	db #01,#f7,#01,#f6,#01,#f5,#01,#f4
	db #01,#f3,#01,#f2,#c0,#01,#f1,#6b
	db #ef,#00,#ff,#01,#00,#01,#00,#01
	db #ff,#01,#fe,#01,#fd,#01,#fc,#01
	db #fb,#01,#fa,#ff,#01,#f9,#01,#f8
	db #01,#f7,#01,#f6,#01,#f5,#01,#f4
	db #01,#f3,#01,#f2,#c0,#01,#f1,#6b
	db #f0,#20,#7f,#ff,#01,#01,#01,#01
	db #01,#00,#01,#ff,#01,#fe,#01,#fd
	db #01,#fc,#ff,#01,#fb,#01,#fa,#01
	db #f9,#01,#f8,#01,#f7,#01,#f6,#01
	db #f5,#01,#f4,#e0,#01,#f3,#01,#f2
	db #6c,#f0,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20
;
; #8040
;	ld bc,#7fc4
;	out (c),c
;	call #4000	; init
;	ld bc,#7fc0
;	out (c),c
;
.music_info
	db "Halloween Meeting - Improvized Contest - Part 2 (2004)(Benediction)()",0
	db "AYC - Forgotten Worlds (Atari ST)",0

	read "music_end.asm"
