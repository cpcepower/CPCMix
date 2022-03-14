; Music of Halloween Meeting - Improvized Contest - Menu (2004)(Benediction)(Tom & Jerry)(AYC)
; Ripped by Megachur the 23/02/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HALMICME.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #4000

	read "music_header.asm"

	jp l4006
	jp l4032
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
.real_play_music
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
	dw l42ec
.l4247 equ $ + 1
.l4246
	ld hl,#0000
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
.l4624 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l462e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4638 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4642 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l464c equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4656 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4660 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l466a equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4674 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l467e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4688 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4692 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l469c equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46a6 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46b0 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46ba equ $ + 5
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
	db #00,#ed,#73,#02,#00,#3a,#01,#00
	db #3d,#00,#26,#00,#fd,#21,#01,#00
	db #c3,#01,#00,#2a,#02,#00,#2b,#56
	db #2b,#5e,#ed,#53,#02,#00,#31,#00
	db #00,#c9,#00,#00,#21,#00,#00,#4d
	db #16,#00,#3a,#01,#00,#5f,#b7,#ed
.l475b equ $ + 6
.l475a equ $ + 5
	db #52,#22,#02,#00,#3d,#0e,#00,#48
.l475d
	db #c0,#04,#c4,#01,#c8,#04,#c5,#01
	db #d0,#04,#c6,#01,#c7,#01,#cc,#01
	db #cd,#01,#ce,#01,#cf,#01,#d4,#01
	db #d5,#01,#d6,#01,#d7,#01,#d8,#01
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
.l4800 equ $ + 3
	db #00,#00,#00,#c0,#0c,#01,#2e,#00
	db #01,#50,#01,#01,#10,#02,#01,#c9
	db #02,#01,#f0,#02,#01,#33,#05,#01
	db #54,#05,#01,#6e,#05,#01,#88,#05
	db #01,#3a,#06,#01,#b8,#06,#01,#9d
	db #07,#01,#35,#08,#01,#4f,#08,#ff
	db #ff,#ff,#ff,#ff,#ff,#9f,#af,#fb
	db #00,#c9,#fe,#06,#ef,#fe,#09,#f1
	db #00,#eb,#12,#d0,#00,#6a,#86,#fb
	db #60,#ee,#5a,#77,#fe,#78,#96,#fe
	db #7b,#b3,#ff,#fe,#7e,#f1,#78,#01
	db #30,#7f,#2f,#f7,#b9,#fa,#10,#fd
	db #07,#fa,#19,#df,#01,#10,#f7,#0f
	db #0c,#fe,#30,#fa,#1b,#fa,#30,#fd
	db #27,#fa,#39,#bb,#f1,#30,#96,#fe
	db #57,#fa,#51,#70,#d0,#47,#fe,#f0
	db #fa,#db,#df,#fa,#f0,#fd,#cf,#24
	db #fe,#02,#fd,#fc,#fa,#02,#fa,#05
	db #fd,#e7,#6b,#86,#fe,#17,#fd,#11
	db #77,#fe,#1d,#98,#fe,#20,#fd,#1d
	db #df,#fa,#1d,#fa,#fc,#cc,#fe,#32
	db #fd,#2c,#fa,#32,#f4,#35,#fa,#49
	db #f5,#fd,#29,#f1,#52,#fd,#41,#e5
	db #64,#de,#71,#80,#3f,#f8,#10,#7f
	db #fc,#f8,#19,#f7,#10,#eb,#2a,#d0
	db #50,#d0,#10,#40,#e0,#01,#00,#d6
	db #7f,#ff,#d0,#b0,#de,#92,#10,#77
	db #fe,#7f,#f7,#7c,#bc,#fe,#fb,#8b
	db #fa,#79,#fa,#8e,#fa,#85,#70,#73
	db #f7,#1e,#ac,#dc,#18,#af,#fe,#90
	db #31,#fe,#93,#0c,#fe,#96,#fd,#90
	db #fd,#96,#fa,#96,#dd,#fd,#93,#fa
	db #99,#86,#fe,#ae,#fd,#a8,#f4,#b3
	db #5a,#d1,#c0,#5b,#fc,#fe,#f0,#7e
	db #fb,#f3,#fd,#f0,#3f,#fb,#fc,#fa
	db #f3,#fa,#f7,#07,#f1,#fc,#d0,#f0
	db #d0,#60,#10,#50,#fc,#fe,#70,#7e
	db #df,#fb,#73,#fd,#70,#3f,#fb,#7c
	db #fa,#73,#f7,#87,#f1,#7c,#d0,#70
	db #5f,#98,#ef,#d0,#cc,#e3,#e2,#fa
	db #c1,#fd,#05,#fd,#a9,#fa,#0b,#f5
	db #f7,#00,#eb,#1a,#d0,#d0,#d0,#30
	db #47,#ef,#90,#92,#fb,#a2,#40,#24
	db #e9,#a8,#00,#f7,#01,#00,#01,#00
	db #01,#ff,#ce,#fd,#07,#fe,#30,#eb
	db #2a,#e8,#30,#bb,#70,#d0,#06,#fe
	db #f0,#fa,#e4,#f7,#f0,#03,#fe,#02
	db #f7,#ff,#bb,#ee,#05,#05,#fe,#20
	db #fa,#14,#f7,#20,#02,#fe,#32,#f7
	db #2f,#fa,#f4,#35,#f7,#23,#f1,#52
	db #fd,#41,#e5,#64,#01,#68,#80,#04
	db #ff,#f8,#19,#e2,#fb,#c7,#50,#d9
	db #19,#40,#e0,#01,#00,#7f,#ff,#c7
	db #b0,#b7,#9a,#18,#07,#fe,#7f,#f7
	db #7c,#03,#fb,#8b,#fa,#79,#fa,#8e
	db #f5,#fa,#85,#70,#73,#f7,#1e,#ac
	db #dc,#02,#fe,#90,#04,#fe,#93,#fb
	db #fd,#8a,#fd,#90,#fa,#81,#fa,#90
	db #fa,#99,#00,#fe,#ae,#fd,#a8,#ff
	db #c4,#b3,#fa,#a5,#f7,#90,#fa,#9f
	db #f4,#04,#f1,#fc,#d0,#f0,#d0,#60
	db #af,#10,#50,#04,#fe,#70,#02,#fb
	db #73,#fd,#70,#fa,#61,#fa,#73,#ef
	db #f7,#87,#f1,#7c,#d0,#70,#05,#ef
	db #d0,#f1,#b2,#eb,#b2,#fd,#05,#fd
	db #fd,#a9,#fa,#0b,#f1,#40,#f1,#20
	db #d0,#d0,#d0,#30,#06,#ef,#90,#a0
	db #fa,#2a,#03,#e9,#a8,#00,#f8,#01
	db #00,#01,#00,#01,#ff,#01,#fe,#ad
	db #fc,#98,#8e,#77,#2d,#59,#b3,#e8
	db #51,#96,#f1,#6a,#fd,#69,#ef,#fe
	db #80,#5b,#c9,#fe,#83,#9f,#fe,#86
	db #e8,#80,#86,#fe,#a1,#f4,#9b,#ab
	db #a0,#80,#3f,#fe,#10,#0c,#fe,#13
	db #d5,#fe,#16,#e8,#10,#6b,#b3,#fe
	db #31,#f4,#2b,#66,#fe,#40,#2d,#fe
	db #43,#fd,#0d,#fd,#e8,#40,#fd,#3a
	db #f4,#5b,#d0,#10,#40,#e0,#7f,#00
	db #c9,#fe,#e1,#fb,#f4,#db,#10,#30
	db #d0,#b0,#fd,#98,#fd,#aa,#9f,#fe
	db #16,#e8,#10,#74,#86,#fe,#31,#f4
	db #2b,#d0,#10,#00,#41,#70,#50,#64
	db #58,#77,#e9,#30,#6a,#e9,#48,#d2
	db #32,#59,#6a,#86,#d1,#d3,#90,#fe
	db #76,#96,#d3,#c0,#6a,#7f,#9f,#a3
	db #f0,#c4,#d0,#60,#10,#50,#6a,#7f
	db #9f,#d3,#70,#3f,#50,#44,#5f,#e8
	db #a0,#47,#59,#6a,#ee,#bb,#77,#8e
	db #75,#b3,#d3,#d0,#d0,#70,#d0,#d0
	db #5f,#fe,#5d,#77,#e4,#60,#a2,#fd
	db #2d,#7f,#f4,#80,#43,#50,#64,#d3
	db #90,#00,#fa,#01,#00,#01,#00,#01
	db #ff,#01,#fe,#ad,#fc,#05,#41,#91
	db #01,#ff,#fb,#10,#d3,#0d,#a3,#13
	db #40,#e0,#01,#d0,#4f,#2f,#fd,#0a
	db #01,#10,#f0,#01,#12,#01,#11,#01
	db #10,#4f,#0f,#bc,#ad,#a1,#00,#24
	db #e9,#60,#cc,#e9,#78,#a0,#30,#77
	db #d1,#f0,#57,#86,#dd,#20,#96,#fe
	db #44,#9f,#fe,#47,#fd,#44,#fa,#44
	db #d5,#eb,#52,#f7,#17,#50,#f8,#71
	db #59,#fb,#7a,#64,#e9,#80,#f1,#f7
	db #68,#f7,#8f,#d9,#7a,#c1,#71,#77
	db #ef,#c9,#fe,#67,#b1,#e5,#11,#86
	db #f1,#2d,#0f,#10,#e1,#b3,#96,#e4
	db #30,#6d,#71,#f1,#4d,#70,#d0,#64
	db #fd,#ba,#e4,#f0,#59,#f5,#0d,#87
	db #fc,#0c,#b3,#8e,#77,#59,#e7,#20
	db #fe,#db,#f2,#3b,#d2,#fd,#39,#e5
	db #4f,#64,#fe,#69,#77,#64,#fe,#6f
	db #77,#db,#fe,#72,#fe,#70,#86,#fd
	db #72,#9b,#7a,#50,#dd,#e0,#fc,#68
	db #af,#fe,#07,#6a,#fb,#0a,#86,#dd
	db #10,#fd,#0d,#fd,#07,#fa,#39,#df
	db #fa,#65,#f4,#d4,#96,#ef,#52,#fd
	db #4f,#fa,#0a,#f7,#34,#f7,#67,#fd
	db #fd,#7e,#f4,#64,#f7,#6a,#fa,#40
	db #fd,#9c,#d6,#e0,#43,#fb,#ca,#ff
	db #f7,#97,#d3,#d8,#a0,#46,#f4,#fa
	db #fa,#30,#ee,#30,#e8,#72,#f4,#06
	db #ba,#f4,#96,#86,#fb,#ba,#f4,#a2
	db #f4,#cb,#3c,#f5,#d8,#43,#fd,#fe
	db #e4,#f4,#db,#f7,#f2,#fa,#60,#dc
	db #01,#a6,#66,#4b,#e9,#80,#ff,#f4
	db #4a,#f4,#a3,#d0,#f0,#f4,#6e,#e2
	db #eb,#fa,#7a,#f4,#62,#ac,#1b,#2d
	db #50,#64,#e8,#6f,#6a,#e9,#88,#d2
	db #72,#43,#fe,#cd,#8d,#d3,#d0,#47
	db #54,#6a,#d3,#00,#fa,#6a,#64,#fe
	db #36,#db,#fc,#6d,#fb,#3c,#59,#fb
	db #42,#fd,#36,#6a,#fb,#4b,#eb,#5b
	db #f7,#dc,#36,#fd,#7e,#fd,#78,#fd
	db #75,#43,#fa,#93,#fa,#72,#e0,#9f
	db #bf,#fd,#8d,#4b,#fb,#c3,#fd,#c0
	db #e2,#cb,#fa,#8a,#fa,#7b,#d6,#f5
	db #e7,#e8,#a8,#fa,#6c,#ee,#3d,#3c
	db #3f,#fe,#98,#fe,#4e,#fc,#52,#ff
	db #fc,#36,#fc,#be,#fc,#5e,#fc,#eb
	db #fc,#7f,#fa,#66,#fa,#60,#fa,#5a
	db #a1,#cf,#50,#3c,#fc,#86,#32,#32
	db #35,#35,#fe,#b0,#ff,#fc,#b8,#fe
	db #b2,#fa,#b0,#f0,#86,#fa,#cc,#fd
	db #4e,#d1,#b1,#ea,#8c,#ff,#f4,#04
	db #fa,#f4,#fa,#ee,#fe,#e6,#fe,#3c
	db #f1,#12,#fe,#4b,#fe,#2f,#3f,#43
	db #3f,#fe,#39,#fe,#57,#fe,#54,#fe
	db #2d,#fe,#5d,#fe,#52,#e6,#fe,#4d
	db #fe,#63,#fb,#50,#59,#4b,#fd,#5d
	db #fd,#2d,#5f,#7c,#5f,#fc,#72,#fe
	db #4e,#fc,#78,#fd,#20,#fe,#75,#50
	db #47,#eb,#fe,#56,#fe,#ed,#fe,#87
	db #3f,#fe,#86,#47,#fe,#85,#fc,#5d
	db #f0,#fe,#83,#fe,#7d,#fd,#81,#fe
	db #7e,#28,#28,#2d,#2d,#3e,#2f,#2f
	db #fc,#a2,#fe,#ec,#fc,#a8,#fd,#ea
	db #fe,#a5,#28,#05,#24,#20,#1e,#1b
	db #1e,#fe,#b7,#20,#fe,#b6,#7f,#24
	db #fe,#b5,#fe,#a1,#fe,#c3,#fe,#b3
	db #fe,#ad,#fd,#b1,#fe,#ae,#db,#ed
	db #a0,#fd,#df,#3f,#fe,#8b,#fd,#e5
	db #47,#fe,#8e,#fd,#eb,#ff,#fe,#70
	db #fc,#f0,#fa,#2a,#fe,#7c,#fc,#0e
	db #ec,#03,#fe,#9e,#ea,#19,#ff,#e8
	db #e8,#f8,#76,#fd,#84,#fd,#85,#fd
	db #86,#fc,#87,#fd,#cc,#f1,#8c,#ff
	db #fc,#99,#fe,#80,#fd,#74,#fd,#2d
	db #fe,#4e,#fd,#4b,#fc,#72,#f4,#24
	db #6e,#64,#f2,#90,#fd,#15,#43,#fe
	db #a2,#fe,#3c,#ed,#a6,#54,#80,#fb
	db #ba,#03,#b7,#89,#00,#02,#e9,#78
	db #a0,#30,#00,#01,#f0,#01,#f0,#01
	db #ef,#ff,#01,#ee,#01,#ed,#01,#ec
	db #01,#eb,#01,#ea,#01,#e9,#01,#e8
	db #01,#e7,#80,#26,#e6,#00,#ff,#01
	db #00,#01,#00,#01,#ff,#01,#fe,#01
	db #fd,#01,#fc,#01,#fb,#01,#fa,#f8
	db #01,#f9,#01,#f8,#01,#f7,#01,#f6
	db #35,#f5,#38,#ff,#01,#00,#01,#00
	db #01,#ff,#01,#fe,#01,#fd,#01,#fc
	db #01,#fb,#01,#fa,#f8,#01,#f9,#01
	db #f8,#01,#f7,#01,#f6,#35,#f4,#09
	db #07,#0b,#0a,#06,#03,#03,#fd,#00
	db #fa,#06,#f4,#03,#e0,#e8,#18,#01
	db #03,#22,#02,#1d,#1c,#1c,#0d,#0c
	db #7e,#0c,#fd,#13,#f1,#10,#fd,#22
	db #f7,#22,#f1,#1c,#13,#13,#19,#3f
	db #1b,#1b,#fa,#24,#f1,#30,#e8,#30
	db #70,#d0,#a9,#d8,#fd,#46,#17,#0b
	db #0b,#0a,#fe,#4c,#09,#fd,#41,#fe
	db #4a,#fc,#54,#ff,#f1,#50,#fd,#62
	db #fd,#6a,#ee,#56,#fd,#ba,#fa,#47
	db #f1,#80,#fd,#92,#ff,#fd,#9a,#eb
	db #86,#73,#83,#40,#50,#a0,#40,#01
	db #00,#7f,#ff,#6a,#b0,#bf,#fe,#aa
	db #1a,#f4,#70,#f7,#82,#f1,#6d,#f7
	db #88,#73,#76,#fd,#30,#ff,#a0,#d6
	db #f7,#93,#fd,#9e,#ee,#8d,#fa,#7e
	db #f4,#b1,#73,#96,#d0,#63,#ff,#10
	db #53,#f4,#70,#fd,#7e,#ee,#6d,#fa
	db #5e,#f4,#91,#d6,#76,#fe,#67,#3f
	db #1b,#0b,#fb,#d3,#f1,#d0,#fd,#e2
	db #fd,#ea,#ee,#d6,#fa,#ca,#be,#fe
	db #fe,#0a,#f1,#00,#fa,#ac,#ee,#06
	db #d0,#d0,#a0,#d0,#1d,#45,#1c,#fc
	db #01,#1b,#1b,#1a,#fe,#08,#19,#dc
	db #0b,#bf,#d0,#00,#19,#fe,#36,#fa
	db #62,#fd,#38,#f4,#6b,#e8,#60,#98
	db #30,#47,#00,#fe,#d8,#1a,#16,#13
	db #fd,#fd,#fa,#f8,#f1,#f8,#fd,#f6
	db #0d,#f7,#f0,#f2,#20,#fd,#19,#fa
	db #39,#f1,#28,#1c,#26,#f0,#27,#00
	db #1f,#fe,#2b,#10,#10,#e7,#d0,#5f
	db #19,#f3,#c3,#f4,#9a,#c7,#fd,#59
	db #43,#d0,#cd,#ed,#09,#d1,#50,#0d
	db #0c,#78,#0c,#01,#80,#01,#83,#01
	db #82,#10,#7d,#19,#1b,#1a,#30,#16
	db #13,#d5,#74,#70,#70,#0d,#0d,#0a
	db #0a,#3f,#08,#08,#01,#30,#e4,#2f
	db #fe,#4d,#01,#50,#81,#4f,#d0,#d0
	db #c0,#a0,#a1,#a1,#60,#0d,#47,#0c
	db #fc,#01,#0b,#0b,#0a,#f1,#00,#8b
	db #00,#fa,#8a,#df,#9a,#33,#fe,#f8
	db #09,#dc,#fb,#dc,#f0,#f4,#ea,#e8
	db #20,#df,#c0,#f9,#79,#59,#e7,#2b
	db #01,#10,#01,#28,#d7,#26,#0d,#0c
	db #fc,#51,#1f,#0b,#0b,#0a,#fe,#58
	db #ef,#40,#fe,#5a,#f3,#6b,#e6,#51
	db #ff,#9a,#05,#f4,#d7,#fa,#04,#fd
	db #0c,#d6,#e0,#fa,#13,#f4,#0a,#f7
	db #46,#ff,#f1,#10,#be,#34,#b2,#e6
	db #f1,#b8,#9d,#43,#e8,#36,#df,#54
	db #d9,#6f,#ff,#ee,#d6,#f4,#c0,#ee
	db #ae,#f7,#de,#eb,#c3,#ee,#cc,#82
	db #66,#e5,#cc,#f9,#d9,#ff,#e2,#c2
	db #ee,#1a,#dc,#e6,#ca,#39,#0d,#0d
	db #fe,#19,#2f,#08,#08,#45,#70,#0c
	db #fc,#31,#fd,#30,#fa,#36,#fa,#33
	db #cb,#f7,#33,#f7,#3f,#0b,#0b,#fe
	db #2c,#0a,#fb,#6c,#fb,#4e,#ff,#dc
	db #36,#f7,#66,#fd,#90,#fe,#5b,#fb
	db #88,#f4,#54,#e9,#a8,#e8,#48,#ff
	db #e8,#ae,#da,#9a,#f3,#e0,#eb,#f3
	db #e7,#20,#fe,#50,#fb,#63,#d7,#56
	db #fe,#d0,#51,#60,#af,#e0,#50,#d2
	db #3f,#d0,#3d,#cd,#1d,#fc,#01,#0b
	db #2f,#0b,#0a,#fe,#08,#09,#f4,#0b
	db #e6,#00,#c1,#32,#fc,#cc,#fe,#fd
	db #74,#fd,#73,#f4,#78,#f7,#1b,#f1
	db #18,#ee,#7e,#f1,#0f,#3c,#ae,#a1
	db #00,#32,#e9,#60,#2d,#e9,#78,#01
	db #30,#7f,#2f,#0f,#f6,#e0,#10,#f1
	db #d1,#70,#10,#a0,#cf,#3a,#d1,#30
	db #70,#d0,#33,#bb,#d1,#f0,#2d,#a1
	db #20,#c0,#80,#b0,#bf,#28,#d1,#10
	db #d0,#50,#fa,#d0,#10,#40,#e0,#01
	db #00,#7f,#ff,#d0,#df,#3c,#41,#10
	db #3b,#d7,#fb,#d0,#46,#16,#44,#ef
	db #90,#22,#fe,#a2,#fa,#9f,#fa,#aa
	db #ae,#f1,#93,#4b,#fe,#c0,#13,#fb
	db #c3,#f7,#c0,#f7,#c6,#4c,#f5,#fe
	db #db,#f7,#cc,#fa,#d2,#fd,#ec,#50
	db #fe,#f0,#14,#fb,#f3,#ff,#f7,#f0
	db #f7,#f6,#f4,#f9,#fa,#08,#fa,#1c
	db #d3,#f3,#c0,#50,#20,#8f,#5f,#50
	db #fe,#70,#14,#fb,#73,#f7,#70,#f7
	db #76,#f4,#79,#fa,#88,#d7,#fa,#9c
	db #d3,#73,#2d,#d1,#d0,#28,#d1,#00
	db #d0,#d0,#d0,#5f,#40,#22,#d1,#90
	db #00,#ff,#01,#00,#01,#00,#01,#ff
	db #01,#fe,#01,#fd,#01,#fc,#01,#fb
	db #01,#fa,#f8,#01,#f9,#01,#f8,#01
	db #f7,#01,#f6,#35,#f5,#08,#7f,#ff
	db #01,#01,#01,#01,#01,#00,#01,#ff
	db #01,#fe,#01,#fd,#01,#fc,#fc,#01
	db #fb,#01,#fa,#01,#f9,#01,#f8,#01
	db #f7,#36,#f5,#00,#00,#00,#00,#00
	db #00,#00,#00,#16,#04,#0b,#02,#0e
	db #0c,#04,#2c,#13,#0e,#2c,#13,#07
	db #04,#2c,#07,#00,#0b,#0b,#0e,#16
	db #04,#04,#0d,#2c,#02,#0e,#0d,#13
	db #04,#12,#13,#11,#04,#0b,#04,#00
	db #12,#04,#12,#2c,#0c,#04,#0d,#14
	db #24,#2c,#18,#0e,#14,#2c,#02,#00
	db #0d,#2c,#16,#00,#13,#02,#07,#2c
	db #13,#07,#04,#2c,#1f,#2c,#0f,#11
	db #0e,#03,#14,#02,#13,#08,#0e,#0d
	db #12,#2c,#0f,#11,#04,#12,#04,#0d
	db #13,#04,#03,#2c,#00,#13,#2c,#13
	db #07,#04,#2c,#08,#0c,#0f,#11,#0e
	db #15,#08,#19,#04,#03,#2c,#0c,#04
	db #04,#13,#08,#0d,#06,#2c,#08,#0d
	db #2c,#02,#0e,#14,#13,#00,#0d,#02
	db #04,#12,#24,#08,#13,#2c,#16,#00
	db #12,#2c,#00,#2c,#0b,#00,#12,#13
	db #27,#0c,#08,#0d,#14,#13,#04,#2c
	db #0c,#04,#04,#13,#08,#0d,#06,#24
	db #24,#24,#2c,#2c,#13,#07,#04,#2c
	db #0f,#04,#0e,#0f,#0b,#04,#2c,#0f
	db #11,#04,#12,#04,#0d,#13,#2c,#00
	db #13,#2c,#13,#07,#04,#2c,#0f,#00
	db #11,#13,#18,#16,#04,#11,#04,#2c
	db #00,#13,#02,#2b,#2c,#01,#04,#01
	db #2b,#2c,#02,#00,#0d,#03,#18,#2b
	db #2c,#03,#00,#03,#00,#2b,#2c,#06
	db #11,#08,#0c,#2c,#04,#0b,#08,#0e
	db #13,#2b,#2c,#06,#04,#0d,#04,#12
	db #08,#12,#2c,#22,#2b,#2c,#07,#08
	db #02,#0a,#2a,#12,#2b,#2c,#08,#11
	db #0e,#0d,#2c,#09,#04,#11,#04,#0c
	db #18,#2b,#2c,#0a,#04,#11,#2b,#2c
	db #0c,#08,#06,#2b,#2c,#0f,#08,#17
	db #04,#0b,#0c,#00,#0d,#2b,#2c,#12
	db #07,#00,#0f,#0f,#0b,#08,#12,#12
	db #0a,#04,#0d,#2b,#2c,#11,#00,#0c
	db #2c,#21,#2b,#2c,#11,#00,#0c,#0b
	db #00,#08,#03,#2b,#2c,#12,#0b,#18
	db #03,#04,#11,#12,#14,#0f,#04,#11
	db #2c,#12,#18,#0b,#15,#04,#12,#13
	db #11,#04,#2b,#2c,#13,#00,#11,#06
	db #07,#00,#0d,#2b,#2c,#13,#0e,#0c
	db #2a,#12,#2c,#2c,#13,#0e,#0c,#2c
	db #04,#13,#2c,#09,#04,#11,#11,#18
	db #2b,#2c,#16,#00,#0b,#0a,#18,#11
	db #08,#04,#2c,#00,#0d,#03,#2c,#0e
	db #14,#11,#2c,#01,#04,#0b,#0e,#15
	db #04,#03,#2c,#06,#14,#04,#12,#13
	db #12,#13,#00,#11,#2c,#08,#12,#00
	db #2c,#16,#07,#0e,#2c,#02,#0e,#0e
	db #0a,#04,#03,#00,#12,#2c,#14,#12
	db #14,#00,#0b,#2c,#13,#07,#04,#2c
	db #01,#04,#12,#13,#2c,#02,#07,#0e
	db #02,#0e,#0b,#00,#13,#04,#27,#02
	db #00,#0a,#04,#0e,#05,#2c,#13,#07
	db #04,#2c,#16,#0e,#11,#0b,#03,#26
	db #2c,#2c,#2c,#2c,#2c,#2c,#2c,#2c
	db #2c,#2c,#2c,#2c,#2c,#2c,#2c,#2c
	db #2c,#2c,#2c,#2c,#13,#07,#04,#2c
	db #13,#07,#04,#0c,#04,#2c,#05,#0e
	db #11,#2c,#13,#07,#04,#2c,#02,#0e
	db #0d,#13,#04,#12,#13,#2c,#16,#00
	db #12,#2c,#2c,#2c,#07,#00,#0b,#0b
	db #0e,#16,#04,#04,#0d,#2c,#0e,#05
	db #2c,#02,#0e,#14,#11,#12,#04,#26
	db #2c,#1d,#2c,#04,#0d,#13,#11,#08
	db #04,#12,#2c,#16,#04,#11,#04,#2c
	db #11,#04,#0b,#04,#00,#12,#04,#03
	db #2c,#03,#14,#11,#08,#0d,#06,#2c
	db #13,#07,#04,#2c,#1d,#2c,#03,#00
	db #18,#12,#26,#0f,#0b,#08,#12,#12
	db #0a,#04,#0d,#2c,#07,#00,#12,#2c
	db #12,#13,#00,#11,#13,#04,#03,#2c
	db #07,#08,#12,#2c,#03,#04,#0c,#0e
	db #2c,#00,#13,#2c,#07,#0e,#0c,#04
	db #2c,#00,#0d,#03,#2c,#00,#02,#07
	db #08,#04,#15,#04,#03,#2c,#08,#13
	db #2c,#07,#04,#11,#04,#24,#2c,#04
	db #0d,#0e,#2c,#12,#04,#0d,#13,#2c
	db #07,#08,#12,#2c,#0f,#11,#0e,#03
	db #2c,#00,#2c,#0b,#0e,#0d,#06,#2c
	db #13,#08,#0c,#04,#2c,#01,#04,#05
	db #0e,#11,#04,#01,#18,#2c,#0c,#00
	db #08,#0b,#2c,#01,#14,#13,#2c,#13
	db #07,#04,#2c,#07,#08,#06,#07,#27
	db #13,#04,#02,#07,#0d,#0e,#0b,#0e
	db #06,#18,#2c,#2c,#0f,#11,#04,#15
	db #04,#0d,#13,#12,#2c,#14,#12,#2c
	db #13,#0e,#2c,#11,#04,#00,#03,#2c
	db #08,#13,#2c,#00,#12,#2c,#0d,#0e
	db #2c,#0f,#02,#2c,#2c,#16,#00,#12
	db #2c,#00,#01,#0b,#04,#2c,#13,#0e
	db #2c,#11,#04,#00,#03,#2c,#0c,#18
	db #2c,#14,#12,#01,#27,#0a,#04,#18
	db #26,#2c,#2c,#08,#0d,#02,#11,#04
	db #03,#08,#01,#0b,#04,#2b,#2c,#08
	db #12,#0d,#2a,#13,#2c,#08,#13,#25
	db #2c,#12,#0e,#11,#11,#18,#2c,#04
	db #0d,#0e,#26,#00,#0d,#03,#2c,#13
	db #07,#04,#2c,#16,#08,#0d,#0d,#04
	db #11,#2c,#08,#12,#24,#24,#24,#2c
	db #13,#00,#11,#06,#07,#00,#0d,#2c
	db #00,#0d,#03,#06,#11,#08,#0c,#2c
	db #05,#0e,#11,#2c,#13,#07,#04,#08
	db #11,#2c,#15,#04,#11,#18,#2c,#00
	db #0c,#00,#19,#08,#0d,#06,#2c,#0f
	db #11,#0e,#03,#11,#04,#00,#0b,#08
	db #19,#04,#03,#2c,#08,#0d,#2c,#12
	db #04,#15,#04,#11,#00,#0b,#2c,#07
	db #0e,#14,#11,#12,#2c,#0e,#0d,#0b
	db #18,#26,#2c,#0f,#0b,#08,#12,#12
	db #0a,#04,#0d,#2c,#16,#0e,#0d,#2c
	db #13,#07,#04,#2c,#12,#04,#02,#0e
	db #0d,#03,#2c,#00,#16,#00,#11,#03
	db #24,#24,#24,#13,#07,#04,#2c,#0f
	db #11,#08,#19,#04,#12,#2c,#16,#04
	db #11,#04,#2c,#12,#13,#11,#08,#0f
	db #2c,#02,#0e,#0c,#08,#02,#12,#24
	db #2c,#08,#13,#16,#00,#12,#2c,#00
	db #2c,#06,#0e,#0e,#03,#2c,#13,#07
	db #08,#0d,#06,#2c,#13,#0e,#2c,#07
	db #00,#15,#04,#2c,#12,#0e,#2c,#0c
	db #00,#0d,#18,#0f,#11,#0e,#03,#12
	db #2c,#11,#04,#0b,#04,#00,#12,#04
	db #03,#24,#2c,#13,#07,#00,#0d,#0a
	db #2c,#18,#0e,#14,#2b,#2c,#06,#14
	db #18,#12,#26,#0d,#0e,#16,#2c,#12
	db #0e,#0c,#04,#2c,#16,#0e,#11,#03
	db #12,#2c,#00,#01,#0e,#14,#13,#2c
	db #13,#07,#04,#2c,#0c,#04,#0d,#14
	db #24,#24,#24,#03,#04,#12,#08,#06
	db #0d,#27,#06,#05,#17,#24,#24,#24
	db #24,#24,#24,#24,#12,#14,#0f,#04
	db #11,#2c,#12,#18,#0b,#15,#04,#12
	db #13,#11,#04,#0f,#00,#0b,#04,#13
	db #13,#04,#27,#02,#0e,#0b,#0e,#11
	db #12,#24,#24,#24,#12,#14,#0f,#04
	db #11,#2c,#12,#18,#0b,#15,#04,#12
	db #13,#11,#04,#0c,#14,#12,#08,#02
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#24,#13
	db #0e,#0c,#2c,#04,#13,#2c,#09,#04
	db #11,#11,#18,#02,#0e,#03,#04,#24
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#04,#0b
	db #08,#0e,#13,#0c,#14,#12,#08,#02
	db #2c,#0f,#0b,#00,#18,#04,#11,#24
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#0c,#00,#03
	db #11,#00,#0c,#13,#11,#00,#02,#0a
	db #0b,#0e,#00,#03,#2c,#02,#0e,#03
	db #04,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#04,#0f,#12,#08
	db #0b,#0e,#0d,#03,#00,#13,#00,#12
	db #2c,#02,#11,#14,#0d,#02,#07,#04
	db #03,#2c,#16,#08,#13,#07,#2c,#02
	db #0f,#02,#27,#13,#2c,#15,#1d,#2c
	db #00,#0d,#03,#02,#11,#0e,#16,#0d
	db #2c,#02,#11,#14,#0d,#02,#07,#04
	db #11,#24,#2c,#0e,#14,#11,#2c,#02
	db #00,#13,#0e,#0b,#0e,#06,#14,#04
	db #2c,#08,#12,#0c,#00,#03,#04,#2c
	db #16,#08,#13,#07,#2c,#02,#00,#13
	db #00,#02,#0b,#18,#12,#0c,#04,#2b
	db #2c,#00,#2c,#0d,#04,#16,#2c,#13
	db #0e,#0e,#0b,#01,#18,#2c,#13,#0e
	db #0c,#2c,#04,#13,#2c,#09,#04,#11
	db #11,#18,#24,#24,#24,#2c,#06,#04
	db #13,#2c,#08,#13,#2c,#0d,#0e,#16
	db #26,#26,#26,#2c,#2c,#01,#13,#16
	db #2c,#03,#0e,#2c,#18,#0e,#14,#2c
	db #0b,#08,#0a,#04,#2c,#02,#07,#04
	db #00,#13,#27,#0c,#0e,#03,#04,#12
	db #25,#2c,#2c,#03,#0e,#2c,#18,#0e
	db #14,#2c,#0a,#0d,#0e,#16,#2c,#13
	db #07,#00,#13,#2c,#08,#2c,#00,#0c
	db #2c,#15,#04,#11,#18,#2c,#07,#00
	db #0f,#0f,#18,#13,#0e,#2c,#11,#04
	db #0b,#04,#00,#12,#04,#2c,#13,#07
	db #08,#12,#2c,#0f,#11,#0e,#03,#25
	db #2c,#08,#2c,#07,#00,#15,#04,#2c
	db #0d,#0e,#13,#12,#0f,#11,#04,#03
	db #2c,#00,#0d,#18,#13,#07,#08,#0d
	db #06,#2c,#0e,#0d,#2c,#02,#0f,#02
	db #2c,#05,#0e,#11,#2c,#00,#2c,#0b
	db #0e,#0d,#06,#13,#08,#0c,#04,#2c
	db #00,#0b,#13,#07,#0e,#14,#06,#07
	db #2c,#08,#2a,#0c,#2c,#15,#04,#11
	db #18,#2c,#00,#02,#13,#08,#15,#04
	db #2c,#00,#13,#07,#0e,#0c,#04,#24
	db #24,#24,#2c,#08,#2a,#15,#04,#2c
	db #00,#2c,#0b,#0e,#13,#2c,#0e,#05
	db #2c,#04,#05,#05,#04,#02,#13,#12
	db #2c,#13,#0e,#01,#04,#2c,#11,#04
	db #0b,#04,#00,#12,#04,#03,#2c,#08
	db #0d,#2c,#00,#2c,#01,#08,#06,#2c
	db #03,#04,#0c,#0e,#0f,#00,#11,#13
	db #2c,#00,#12,#12,#0e,#0e,#0d,#2c
	db #00,#12,#2c,#0f,#0e,#12,#12,#08
	db #01,#0b,#04,#26,#2c,#08,#2a,#0c
	db #2c,#00,#0b,#12,#0e,#2c,#11,#04
	db #00,#03,#18,#13,#0e,#2c,#0f,#14
	db #01,#0b,#08,#12,#07,#2c,#00,#2c
	db #0d,#04,#16,#2c,#03,#08,#12,#02
	db #0c,#00,#06,#24,#24,#24,#2c,#2c
	db #2c,#2c,#2c,#08,#2a,#0c,#2c,#00
	db #0b,#12,#0e,#2c,#16,#00,#08,#13
	db #08,#0d,#06,#2c,#05,#0e,#11,#2c
	db #18,#0e,#14,#11,#2c,#0f,#11,#0e
	db #03,#12,#26,#00,#0d,#03,#2c,#0d
	db #0e,#16,#2c,#13,#07,#04,#2c,#04
	db #13,#04,#11,#0d,#00,#0b,#2c,#06
	db #11,#04,#04,#13,#08,#0d,#06,#12
	db #24,#24,#24,#13,#00,#11,#06,#07
	db #00,#0d,#2c,#27,#2c,#06,#11,#04
	db #00,#13,#2c,#16,#0e,#11,#0a,#26
	db #2c,#06,#0e,#2c,#0e,#0d,#2c,#13
	db #07,#08,#12,#16,#00,#18,#24,#24
	db #24,#2c,#11,#00,#0c,#0b,#00,#08
	db #03,#2c,#27,#2c,#18,#2c,#00,#2c
	db #03,#14,#2c,#02,#0e,#14,#11,#11
	db #08,#04,#11,#0f,#0e,#14,#11,#2c
	db #13,#0e,#08,#24,#24,#24,#2c,#06
	db #11,#08,#0c,#2c,#27,#2c,#13,#00
	db #2c,#15,#04,#12,#13,#04,#2c,#0c
	db #2a,#00,#2c,#01,#08,#04,#0d,#2c
	db #12,#04,#11,#15,#08,#2c,#0f,#0e
	db #14,#11,#2c,#05,#00,#08,#11,#04
	db #2c,#0c,#00,#2c,#15,#08,#03,#00
	db #0d,#06,#04,#2c,#03,#04,#2c,#15
	db #0e,#08,#13,#14,#11,#04,#24,#24
	db #24,#2c,#0c,#00,#03,#11,#00,#0c
	db #2c,#27,#2c,#00,#2c,#10,#14,#00
	db #0d,#03,#2c,#14,#0d,#2c,#11,#04
	db #13,#0e,#14,#11,#2c,#04,#0d,#2c
	db #02,#07,#00,#08,#11,#2c,#04,#13
	db #2c,#04,#0d,#2c,#0e,#12,#25,#2c
	db #04,#13,#2c,#00,#15,#04,#02,#2c
	db #03,#04,#12,#2c,#0f,#0e,#08,#0b
	db #12,#24,#24,#24,#2c,#0e,#15,#0b
	db #2c,#11,#14,#0b,#04,#19,#26,#2c
	db #2c,#2c,#2c,#05,#14,#13,#14,#11
	db #2a,#12,#2c,#27,#2c,#08,#13,#2a
	db #12,#2c,#11,#04,#00,#0b,#0b,#18
	db #2c,#08,#0c,#0f,#0e,#12,#12,#08
	db #01,#0b,#04,#2c,#28,#24,#24,#24
	db #13,#0e,#2c,#0c,#04,#04,#13,#2c
	db #18,#0e,#14,#2c,#08,#0d,#2c,#0c
	db #04,#04,#13,#08,#0d,#06,#26,#26
	db #26,#29,#2c,#0e,#15,#04,#11,#0b
	db #00,#0d,#03,#04,#11,#12,#2c,#27
	db #2c,#18,#0e,#14,#11,#2c,#0e,#0b
	db #03,#2c,#0f,#11,#04,#15,#08,#04
	db #16,#12,#2c,#2c,#00,#11,#04,#2c
	db #12,#13,#08,#0b,#0b,#2c,#06,#0e
	db #0e,#03,#2c,#01,#14,#13,#2c,#0d
	db #04,#16,#2c,#05,#08,#0d,#08,#12
	db #07,#04,#03,#0f,#11,#0e,#03,#12
	db #2c,#2a,#0b,#0b,#2c,#01,#04,#2c
	db #01,#04,#13,#13,#04,#11,#24,#24
	db #24,#2c,#07,#00,#11,#03,#2a,#0e
	db #12,#2c,#27,#12,#00,#0c,#04,#2c
	db #02,#0e,#0c,#0c,#04,#0d,#13,#12
	db #2c,#00,#12,#2c,#0e,#15,#04,#11
	db #0b,#00,#0d,#03,#04,#11,#12,#24
	db #24,#24,#2c,#00,#0d,#0e,#13,#07
	db #04,#11,#2c,#16,#0e,#11,#0b,#03
	db #2c,#27,#2c,#12,#00,#0c,#04,#2c
	db #02,#0e,#0c,#0c,#04,#0d,#13,#12
	db #2c,#00,#12,#07,#00,#11,#03,#2a
	db #0e,#12,#24,#24,#24,#2c,#08,#12
	db #2c,#13,#07,#04,#2c,#05,#08,#11
	db #12,#13,#2c,#12,#13,#04,#0f,#2c
	db #13,#0e,#0e,#07,#08,#06,#07,#25
	db #24,#24,#24,#2c,#12,#0b,#18,#03
	db #04,#11,#2c,#27,#2c,#06,#11,#04
	db #00,#13,#2c,#06,#05,#17,#2c,#14
	db #12,#04,#03,#12,#0e,#0e,#0d,#26
	db #24,#24,#24,#2c,#0e,#0f,#13,#08
	db #0c,#14,#12,#2c,#27,#2c,#12,#13
	db #0e,#0f,#2c,#13,#00,#0b,#0a,#08
	db #0d,#06,#26,#12,#13,#00,#11,#13
	db #2c,#02,#0e,#03,#08,#0d,#06,#26
	db #26,#26,#2c,#00,#2c,#12,#04,#02
	db #0e,#0d,#03,#2c,#12,#13,#04,#0f
	db #2c,#08,#12,#00,#16,#00,#08,#13
	db #04,#03,#24,#24,#24,#2c,#02,#04
	db #03,#2c,#27,#2c,#01,#00,#11,#09
	db #00,#02,#0a,#2c,#27,#2c,#12,#0d
	db #00,#0a,#04,#0f,#0b,#08,#12,#12
	db #0a,#04,#0d,#2c,#27,#2c,#11,#0e
	db #0c,#00,#08,#0d,#2c,#27,#2c,#00
	db #11,#0d,#0e,#2c,#27,#2c,#11,#00
	db #0c,#2c,#21,#00,#0d,#13,#08,#13
	db #04,#02,#2c,#27,#2c,#0f,#11,#0e
	db #03,#00,#13,#11,#0e,#0d,#2c,#27
	db #2c,#12,#08,#02,#04,#2c,#27,#2c
	db #13,#0e,#0c,#04,#13,#2c,#09,#04
	db #11,#11,#18,#2c,#27,#2c,#03,#04
	db #0c,#0e,#0d,#08,#00,#0a,#2c,#27
	db #2c,#0f,#08,#17,#04,#0b,#0c,#00
	db #0d,#2c,#27,#16,#04,#04,#04,#2c
	db #27,#2c,#0e,#03,#08,#04,#12,#0e
	db #05,#13,#2c,#27,#2c,#00,#0d,#13
	db #08,#13,#04,#02,#2c,#27,#2c,#13
	db #07,#04,#2c,#15,#08,#0b,#0b,#00
	db #08,#0d,#2c,#27,#2c,#0a,#04,#15
	db #08,#0d,#2c,#13,#07,#00,#02,#0a
	db #04,#11,#2c,#27,#2c,#07,#04,#11
	db #0c,#0e,#0b,#13,#11,#0e,#0d,#08
	db #02,#2c,#27,#2c,#04,#12,#0f,#2c
	db #12,#0e,#05,#13,#2c,#27,#2c,#0f
	db #07,#04,#0d,#08,#17,#2c,#13,#04
	db #00,#0c,#2c,#11,#0e,#14,#03,#0e
	db #14,#03,#0e,#14,#2c,#27,#2c,#0e
	db #03,#08,#04,#12,#0e,#05,#13,#2c
	db #27,#2c,#13,#05,#0c,#2c,#27,#2c
	db #0e,#0d,#04,#06,#04,#0d,#04,#12
	db #08,#12,#22,#2c,#00,#0d,#03,#2c
	db #0e,#05,#2c,#02,#0e,#14,#11,#12
	db #04,#2c,#12,#18,#0b,#15,#04,#12
	db #13,#11,#04,#00,#0b,#12,#0e,#2c
	db #0a,#0d,#0e,#16,#0d,#2c,#00,#12
	db #2c,#2a,#12,#14,#0f,#04,#11,#2c
	db #12,#18,#0b,#15,#04,#12,#13,#11
	db #04,#2a,#26,#16,#04,#0b,#0b,#2c
	db #0d,#0e,#16,#2b,#2c,#08,#13,#2a
	db #12,#2c,#13,#08,#0c,#04,#2c,#05
	db #0e,#11,#2c,#0c,#04,#2c,#13,#0e
	db #2c,#06,#0e,#00,#0d,#03,#2c,#12
	db #0b,#04,#04,#0f,#24,#24,#24,#2c
	db #12,#04,#04,#2c,#18,#0e,#14,#2c
	db #12,#0e,#0e,#0d,#2c,#26,#2c,#2c
	db #2c,#2c,#2c,#2c,#2c,#2c,#2c,#27
	db #04,#0b,#08,#0e,#13,#2c,#08,#0d
	db #2c,#0d,#0e,#15,#04,#0c,#01,#04
	db #11,#2c,#1c,#1a,#1a,#1e,#27,#2c
	db #2c,#2c,#2c,#2c,#2c,#2c,#2c,#2c
	db #2c,#2c,#2c,#2c,#2c,#2c,#2c,#2c
	db #2c,#2c,#2c,#2c,#2c,#2c,#2c,#2c
	db #2c,#2c,#2c,#2c,#2c,#2c,#2c,#2c
	db #2c,#2c,#2c,#ff,#00,#00
;
.play_music		; added by Megachur
;
	ld hl,tempo
	dec (hl)
	ret nz
	ld (hl),#03
	jp real_play_music
tempo
	db #03
;
.music_info
	db "Halloween Meeting - Improvized Contest - Menu (2004)(Benediction)(Tom & Jerry)",0
	db "AYC",0

	read "music_end.asm"
