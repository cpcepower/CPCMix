; Music of Black Sabbath (2001)(Hard'Os)()()
; Ripped by Megachur the 12/10/2013
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLACKSAB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2013
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
.l4047
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
	db #00,#00,#00,#00
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
.l42ec equ $ + 2
	call p,#3142
	inc h
	ld b,(hl)
	jp l4376
	call m,#3142
	ld l,#46
	jp l43f7
	inc b
	ld b,e
	ld sp,l4638
	jp l4376
	inc c
	ld b,e
	ld sp,l4642
	jp l43f7
	inc d
	ld b,e
	ld sp,l464c
	jp l4376
	inc e
	ld b,e
	ld sp,l4656
	jp l4376
	inc h
	ld b,e
	ld sp,l4660
	jp l4376
	inc l
	ld b,e
	ld sp,l466a
	jp l4376
	inc (hl)
	ld b,e
	ld sp,l4674
	jp l4376
	inc a
	ld b,e
	ld sp,l467e
	jp l4376
	ld b,h
	ld b,e
	ld sp,l4688
	jp l4376
	ld c,h
	ld b,e
	ld sp,l4692
	jp l4376
	ld b,(hl)
	ld b,d
	ld sp,l469c
	jp l4376
	ld e,h
	ld b,e
	ld sp,l46a6
	jp l4376
	call po,#3142
	or b
	ld b,(hl)
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#81,#0c,#04,#2e,#00
	db #01,#d2,#00,#04,#fb,#00,#04,#9c
	db #01,#04,#f9,#01,#01,#f4,#05,#01
	db #54,#06,#01,#93,#06,#01,#ea,#06
	db #01,#20,#07,#04,#55,#07,#01,#ed
	db #07,#01,#07,#08,#01,#21,#08,#00
	db #00,#00,#00,#00,#00,#f9,#00,#1e
	db #a6,#2d,#b5,#3c,#c4,#4b,#d3,#00
	db #5a,#e2,#97,#7f,#65,#97,#7f,#7f
	db #b8,#fc,#0c,#00,#65,#f7,#15,#00
	db #f6,#0b,#00,#7e,#01,#00,#8e,#6b
	db #59,#1f,#8e,#6b,#6b,#fc,#ac,#00
	db #f6,#8d,#00,#f6,#ab,#00,#ce,#a1
	db #00,#60,#0b,#00,#c0,#01,#5b,#00
	db #bf,#72,#02,#71,#5f,#4b,#71,#5f
	db #5f,#f1,#fc,#dc,#02,#f6,#bd,#02
	db #f6,#db,#02,#f6,#d1,#02,#7f,#65
	db #54,#fc,#bc,#02,#f0,#fb,#05,#03
	db #f8,#0e,#03,#f6,#03,#03,#ce,#d1
	db #02,#65,#50,#43,#65,#3e,#50,#50
	db #fc,#54,#03,#f5,#0c,#03,#f7,#54
	db #03,#ce,#a9,#02,#ec,#53,#03,#c9
	db #07,#a0,#86,#c9,#a0,#a0,#fc,#b8
	db #03,#01,#81,#02,#65,#80,#03,#ff
	db #01,#9b,#01,#01,#1a,#01,#7e,#31
	db #03,#01,#1b,#00,#01,#9a,#03,#7e
	db #99,#00,#01,#9b,#02,#01,#1a,#02
	db #80,#d8,#31,#00,#00,#00,#01,#01
	db #02,#02,#03,#03,#04,#04,#1f,#05
	db #05,#00,#e3,#0b,#01,#01,#01,#38
	db #01,#37,#01,#36,#ff,#01,#35,#01
	db #34,#01,#33,#01,#32,#01,#31,#01
	db #30,#01,#2f,#01,#2e,#80,#9c,#f5
	db #1e,#49,#b7,#f8,#01,#00,#b9,#5b
	db #f8,#0b,#00,#5d,#25,#f8,#15,#00
	db #2a,#27,#a5,#f8,#1f,#00,#a7,#88
	db #01,#00,#54,#f8,#a1,#00,#56,#49
	db #aa,#f8,#ab,#00,#ac,#3a,#f8,#b5
	db #00,#3c,#c4,#f8,#bf,#00,#7a,#c6
	db #d8,#a1,#00,#60,#01,#00,#01,#51
	db #00,#bf,#68,#02,#87,#f8,#d1,#02
	db #89,#d2,#f6,#27,#02,#f6,#b3,#02
	db #fb,#f8,#ef,#02,#fd,#f8,#f8,#f9
	db #02,#fa,#fa,#f6,#ef,#02,#f6,#c7
	db #02,#f6,#1d,#02,#d8,#d1,#02,#f6
	db #bd,#02,#92,#f8,#53,#03,#94,#5f
	db #19,#f8,#5d,#03,#1b,#f6,#2b,#03
	db #ec,#f9,#02,#ec,#21,#03,#e2,#49
	db #03,#f6,#a3,#03,#ff,#01,#81,#02
	db #6f,#80,#03,#01,#91,#01,#01,#10
	db #01,#7e,#5f,#02,#01,#11,#00,#01
	db #90,#03,#ce,#8f,#00,#3c,#18,#97
	db #01,#01,#02,#01,#02,#02,#a8,#ff
	db #03,#d8,#58,#00,#01,#57,#04,#f7
	db #01,#00,#02,#f7,#0b,#00,#03,#f7
	db #15,#00,#f6,#0b,#00,#88,#01,#00
	db #bf,#f6,#8d,#00,#01,#f7,#ab,#00
	db #f6,#97,#00,#f6,#ab,#00,#d8,#a1
	db #00,#60,#01,#00,#01,#51,#00,#ff
	db #79,#a0,#01,#a6,#d7,#01,#ec,#49
	db #03,#d8,#71,#03,#9c,#1d,#02,#01
	db #d1,#02,#01,#50,#01,#7e,#1f,#01
	db #f3,#01,#51,#01,#01,#d0,#03,#7e
	db #ff,#02,#10,#d1,#03,#01,#00,#01
	db #01,#02,#01,#02,#02,#c0,#a8,#ff
	db #03,#01,#2f,#00,#97,#83,#fa,#00
	db #00,#98,#99,#98,#97,#96,#f7,#06
	db #00,#f1,#01,#00,#50,#86,#fc,#24
	db #00,#7f,#fb,#29,#00,#80,#81,#80
	db #7f,#7f,#7e,#f7,#2e,#00,#ec,#01
	db #00,#e2,#4b,#00,#fb,#3e,#00,#f1
	db #24,#00,#f6,#3d,#00,#f6,#79,#00
	db #41,#65,#fb,#97,#00,#66,#67,#66
	db #65,#6b,#fb,#a1,#00,#07,#6c,#6d
	db #6c,#6b,#6a,#c5,#a6,#00,#f6,#97
	db #00,#ec,#79,#00,#92,#ec,#59,#00
	db #66,#65,#fd,#19,#01,#72,#71,#fd
	db #1e,#01,#80,#64,#7f,#fd,#23,#01
	db #f6,#1e,#01,#98,#97,#fd,#32,#01
	db #aa,#a9,#98,#fd,#37,#01,#ca,#c9
	db #fd,#3c,#01,#10,#01,#00,#97,#4b
	db #4b,#83,#fd,#31,#02,#4c,#4d,#4c
	db #4b,#4a,#bb,#36,#02,#fb,#ce,#01
	db #f0,#fb,#b4,#01,#f1,#c3,#01,#f6
	db #86,#02,#f6,#95,#02,#86,#87,#88
	db #87,#a0,#f5,#8a,#02,#a0,#fb,#bd
	db #02,#a1,#a2,#a1,#a0,#c9,#85,#fb
	db #c7,#02,#ca,#cb,#ca,#c9,#fb,#b4
	db #02,#a9,#fc,#d6,#02,#43,#be,#fb
	db #db,#02,#bf,#c0,#bf,#be,#f1,#d1
	db #02,#f6,#e5,#02,#0d,#a9,#aa,#ab
	db #aa,#f5,#da,#02,#f6,#c7,#02,#fe
	db #fb,#17,#03,#07,#ff,#00,#ff,#fe
	db #e2,#fc,#21,#03,#fb,#0e,#03,#f6
	db #03,#03,#f4,#ec,#21,#03,#f1,#c7
	db #02,#fb,#b8,#02,#f6,#17,#03,#2e
	db #fb,#67,#03,#2f,#30,#10,#2f,#2e
	db #0d,#fb,#71,#03,#0e,#0f,#0e,#0d
	db #81,#f1,#17,#03,#e2,#e3,#e4,#e3
	db #e2,#d5,#fb,#8f,#03,#0a,#d6,#d7
	db #d6,#d5,#f6,#49,#03,#c8,#e3,#9e
	db #03,#7f,#00,#3f,#7f,#7f,#3f,#86
	db #43,#86,#86,#08,#43,#97,#4b,#97
	db #fc,#34,#02,#99,#98,#4b,#c2,#f1
	db #c1,#03,#f6,#d5,#03,#43,#44,#88
	db #87,#f5,#ca,#03,#a0,#00,#50,#a0
	db #a0,#50,#50,#51,#a2,#a1,#04,#50
	db #c9,#65,#c9,#c9,#fd,#2b,#02,#cb
	db #ca,#c0,#fd,#30,#02,#fd,#f5,#03
	db #a9,#54,#a9,#a9,#54,#be,#00,#5f
	db #be,#be,#5f,#5f,#60,#c0,#bf,#61
	db #5f,#f1,#11,#00,#f6,#25,#00,#54
	db #55,#ab,#aa,#f5,#1a,#00,#84,#f6
	db #07,#00,#fe,#7f,#fe,#fe,#fd,#d1
	db #01,#00,#ff,#03,#7f,#e2,#71,#e2
	db #e2,#71,#fb,#4d,#00,#f6,#43,#00
	db #f0,#ec,#61,#00,#f1,#07,#00,#fb
	db #f8,#03,#f6,#57,#00,#2e,#97,#2e
	db #2e,#80,#fd,#57,#03,#30,#2f,#97
	db #0d,#86,#0d,#0d,#88,#fd,#ad,#02
	db #0f,#0e,#86,#f1,#57,#00,#71,#72
	db #e4,#02,#e3,#71,#d5,#6b,#d5,#d5
	db #fd,#e5,#01,#d7,#20,#d6,#6b,#f6
	db #89,#00,#64,#65,#ca,#cb,#66,#09
	db #65,#64,#c9,#ca,#fd,#2e,#02,#c8
	db #c9,#fd,#2d,#02,#23,#c9,#c8,#fd
	db #2c,#02,#ca,#c9,#64,#fa,#8e,#00
	db #11,#42,#01,#c9,#ec,#79,#01,#ec
	db #59,#01,#66,#65,#fd,#19,#02,#72
	db #71,#fd,#1e,#02,#32,#80,#7f,#fd
	db #23,#02,#f6,#1e,#02,#98,#97,#fd
	db #32,#02,#aa,#4f,#a9,#fd,#37,#02
	db #ca,#c9,#fd,#3c,#02,#10,#01,#01
	db #fd,#96,#00,#fc,#96,#00,#0a,#4d
	db #4c,#4b,#4a,#bb,#36,#03,#2e,#fb
	db #81,#03,#2f,#0a,#30,#2f,#2e,#2d
	db #e3,#86,#03,#0d,#fb,#a9,#03,#0e
	db #0a,#0f,#0e,#0d,#0c,#f7,#ae,#03
	db #fe,#fb,#bd,#03,#ff,#0b,#00,#ff
	db #fe,#fd,#f7,#c2,#03,#e2,#fc,#d1
	db #03,#fb,#be,#03,#df,#fb,#aa,#03
	db #fb,#d6,#03,#71,#fc,#e5,#03,#fb
	db #ce,#02,#fb,#e5,#03,#fb,#e2,#02
	db #f6,#27,#03,#d0,#fd,#fb,#00,#f9
	db #00,#00,#c9,#fb,#0d,#00,#ca,#cb
	db #ca,#c9,#f8,#f6,#81,#03,#d3,#d1
	db #03,#fb,#0e,#00,#f6,#c3,#02,#fb
	db #b4,#02,#86,#87,#88,#7a,#87,#f5
	db #b8,#02,#f6,#35,#00,#fb,#5e,#00
	db #fb,#54,#00,#a0,#fc,#85,#00,#be
	db #dd,#fc,#8a,#00,#fb,#4e,#00,#d5
	db #fc,#94,#00,#f6,#0d,#00,#f6,#a9
	db #03,#92,#fb,#ad,#00,#04,#93,#94
	db #93,#92,#91,#f7,#b2,#00,#2e,#97
	db #24,#2e,#2e,#fd,#57,#00,#30,#2f
	db #fd,#aa,#02,#2f,#30,#92,#fd,#a9
	db #02,#2e,#2f,#fd,#5a,#00,#2d,#2e
	db #fd,#59,#00,#2e,#4c,#2d,#fd,#58
	db #00,#2f,#2e,#fd,#ab,#02,#fd,#c8
	db #00,#0d,#86,#20,#0d,#0d,#fd,#61
	db #00,#0f,#0e,#86,#85,#86,#00,#0e
	db #0f,#87,#86,#85,#0d,#0e,#88,#09
	db #fe,#7f,#fe,#fe,#fd,#6b,#00,#00
	db #ff,#fd,#78,#02,#20,#ff,#00,#fd
	db #77,#02,#fe,#ff,#81,#e2,#71,#1c
	db #e2,#e2,#71,#fb,#fd,#00,#fb,#e9
	db #00,#fb,#16,#01,#71,#38,#00,#71
	db #71,#38,#7f,#3f,#7f,#7f,#3f,#80
	db #fb,#25,#01,#6b,#35,#6b,#6b,#35
	db #65,#32,#00,#65,#65,#32,#32,#33
	db #67,#66,#32,#00,#31,#32,#66,#67
	db #33,#32,#31,#65,#18,#66,#34,#c9
	db #fd,#4d,#00,#fd,#fd,#03,#cb,#ca
	db #65,#e2,#f6,#c1,#00,#d3,#11,#01
	db #fb,#4d,#01,#97,#4b,#97,#fc,#34
	db #03,#99,#00,#98,#4b,#86,#43,#86
	db #86,#43,#43,#08,#44,#88,#87,#43
	db #fb,#7a,#01,#3f,#40,#81,#78,#80
	db #fa,#7e,#01,#fb,#a7,#01,#fb,#9d
	db #01,#fb,#93,#01,#a0,#50,#a0,#01
	db #a0,#50,#be,#5f,#be,#be,#5f,#fb
	db #8e,#01,#06,#d5,#6b,#d5,#d5,#6b
	db #f6,#4d,#01,#f6,#e9,#00,#92,#10
	db #c9,#92,#92,#fd,#9d,#00,#94,#93
	db #c9,#c8,#00,#c9,#93,#94,#ca,#c9
	db #c8,#92,#93,#72,#cb,#10,#41,#02
	db #ec,#79,#02,#ec,#59,#02,#66,#65
	db #fd,#19,#03,#72,#4c,#71,#fd,#1e
	db #03,#80,#7f,#fd,#23,#03,#f6,#1e
	db #03,#98,#97,#93,#fd,#32,#03,#aa
	db #a9,#fd,#37,#03,#ca,#c9,#fd,#3c
	db #03,#10,#01,#02,#c2,#fd,#96,#01
	db #fc,#96,#01,#4d,#4c,#4b,#4a,#bb
	db #36,#00,#00,#f5,#01,#00,#01,#00
	db #01,#ff,#e0,#fd,#01,#b8,#d9,#01
	db #ed,#67,#fb,#b3,#17,#6a,#c7,#ba
	db #82,#fd,#5e,#fe,#a4,#01,#fc,#5e
	db #fd,#a9,#fb,#f6,#a7,#b3,#57,#01
	db #c3,#01,#07,#85,#05,#01,#c5,#81
	db #f8,#7a,#ff,#ef,#bf,#f6,#7c,#bf
	db #4a,#ba,#d1,#c4,#66,#e6,#a3,#fa
	db #2b,#fb,#2e,#ff,#df,#c3,#ea,#c1
	db #fa,#9e,#f5,#ff,#f4,#98,#f5,#f9
	db #cf,#73,#f0,#f4,#ff,#c1,#18,#c4
	db #a6,#f6,#57,#f4,#57,#ee,#59,#01
	db #00,#01,#0a,#88,#09,#00,#80,#ec
	db #00,#1c,#18,#14,#10,#0c,#08,#04
	db #ff,#fd,#14,#f6,#1e,#01,#01,#01
	db #38,#01,#37,#01,#36,#01,#35,#01
	db #34,#fe,#01,#33,#01,#32,#01,#31
	db #01,#30,#01,#2f,#01,#2e,#c4,#f5
	db #08,#70,#10,#fe,#30,#f5,#59,#fb
	db #67,#1c,#00,#04,#08,#1c,#0c,#10
	db #14,#fd,#6c,#fb,#61,#fb,#7b,#3f
	db #2b,#30,#38,#ee,#02,#31,#fb,#15
	db #39,#fd,#1b,#f6,#0b,#ff,#01,#01
	db #01,#38,#01,#37,#01,#36,#01,#35
	db #01,#34,#01,#33,#01,#32,#ca,#01
	db #31,#1f,#f8,#22,#2a,#ee,#02,#23
	db #fb,#15,#2b,#ea,#fd,#1b,#f6,#0b
	db #2a,#01,#3a,#fb,#ff,#33,#fb,#05
	db #3b,#ef,#fd,#0b,#fa,#ff,#fc,#14
	db #32,#f6,#0f,#f7,#23,#01,#05,#d3
	db #04,#35,#22,#2a,#f2,#5a,#fc,#55
	db #23,#fb,#6d,#2b,#fd,#73,#80,#f6
	db #63,#00,#00,#0f,#0e,#0c,#0b,#09
	db #08,#06,#05,#01,#03,#02,#0d,#0e
	db #0d,#0d,#0c,#fe,#03,#0f,#0b,#0a
	db #0a,#0e,#f7,#0c,#f6,#0b,#01,#01
	db #01,#38,#ff,#01,#37,#01,#36,#01
	db #35,#01,#34,#01,#33,#01,#32,#01
	db #31,#01,#30,#e0,#01,#2f,#01,#2e
	db #9c,#f5,#00,#01,#0f,#0f,#0e,#0d
	db #0c,#0c,#0b,#fd,#07,#ff,#01,#01
	db #01,#10,#01,#0f,#01,#0e,#01,#0d
	db #01,#0c,#01,#0b,#01,#0a,#dc,#01
	db #09,#01,#08,#00,#01,#01,#01,#01
	db #a7,#ff,#0e,#0e,#10,#0d,#0d,#0c
	db #f6,#59,#0c,#0b,#0b,#0a,#40,#0a
	db #ec,#59,#00,#00,#0e,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#ff,#f4,#08,#00
	db #f1,#01,#00,#fb,#15,#00,#dd,#01
	db #00,#dd,#4b,#00,#f6,#24,#00,#f6
	db #3d,#00,#d8,#79,#00,#e7,#c4,#aa
	db #00,#ce,#8d,#00,#fd,#fe,#00,#0b
	db #0a,#dd,#19,#01,#06,#01,#00,#ba
	db #3a,#02,#ff,#e7,#af,#01,#ec,#95
	db #02,#d8,#be,#01,#92,#86,#02,#d3
	db #be,#01,#b0,#b9,#01,#01,#81,#02
	db #ba,#80,#03,#e7,#0b,#46,#01,#e2
	db #a1,#01,#fd,#fe,#01,#0b,#0a,#dd
	db #19,#02,#06,#01,#01,#ba,#3a,#03
	db #ff,#b5,#d9,#00,#ec,#aa,#02,#e2
	db #db,#03,#e7,#ae,#03,#dd,#1b,#00
	db #dd,#e0,#03,#bf,#0d,#00,#dd,#d2
	db #02,#f9,#01,#81,#03,#ab,#80,#00
	db #1a,#55,#02,#e2,#a1,#02,#fd,#fe
	db #02,#0b,#0a,#dd,#19,#03,#c0,#06
	db #01,#02,#ba,#3a,#00,#80,#ff,#01
	db #00,#01,#00,#01,#ff,#01,#fe,#01
	db #fd,#01,#fc,#01,#fb,#01,#fa,#f8
	db #01,#f9,#01,#f8,#01,#f7,#01,#f6
	db #74,#f4,#00,#ff,#01,#00,#01,#00
	db #01,#ff,#01,#fe,#01,#fd,#01,#fc
	db #01,#fb,#01,#fa,#f8,#01,#f9,#01
	db #f8,#01,#f7,#01,#f6,#74,#f5,#ff
	db #7f,#00,#01,#01,#01,#01,#01,#00
	db #01,#ff,#01,#fe,#01,#fd,#01,#fc
	db #fc,#01,#fb,#01,#fa,#01,#f9,#01
	db #f8,#01,#f7,#75,#f6,#00,#00
;
.music_info
	db "Black Sabbath (2001)(Hard'Os)()",0
	db "Transfert Atari St de la musique in game du jeu Carv Up",0

	read "music_end.asm"
