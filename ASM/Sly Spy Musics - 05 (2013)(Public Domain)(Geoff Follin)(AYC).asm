; Music of Sly Spy Musics - 05 (2013)(Public Domain)(Geoff Follin)(AYC)
; Ripped by Megachur the 22/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SLYSPM05.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
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
	ld (l0000),a
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
.l4247 equ $ + 3
.l4246 equ $ + 2
	db #ec,#42,#21,#00,#00,#4d
	ld d,#00
	ld a,(l475a)
	ld e,a
	or a
	sbc hl,de
	ld (l4247),hl
	dec a
	jp nc,l42e4
	ld b,d		; reset music !
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
.l42e4 equ $ + 2
	call pe,#3142
	ld a,(de)
	ld b,(hl)
.l42e8 equ $ + 1
	jp l43f7
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
	db #00,#00,#00
.l4800
	db #90,#0b,#01,#2e,#00,#01,#1b,#02
	db #01,#36,#02,#01,#1a,#03,#01,#51
	db #03,#01,#9c,#04,#01,#45,#05,#01
	db #5e,#05,#01,#3e,#06,#01,#aa,#06
	db #01,#26,#07,#01,#c6,#07,#01,#de
	db #07,#01,#f6,#07,#ff,#ff,#ff,#ff
	db #ff,#ff,#86,#50,#6a,#fe,#01,#86
	db #b8,#00,#77,#77,#8e,#8e,#f0,#fe
	db #4d,#b6,#4e,#b5,#02,#fb,#e3,#64
	db #64,#7e,#7e,#d0,#fe,#ed,#66,#ee
	db #47,#f7,#8d,#46,#45,#46,#47,#1d
	db #48,#49,#48,#d5,#96,#fd,#e7,#fe
	db #cb,#5f,#fc,#ce,#7c,#4f,#fc,#d3
	db #fb,#92,#fb,#ce,#fb,#c9,#fb,#e6
	db #69,#68,#06,#69,#6a,#6b,#6c,#6b
	db #f7,#eb,#fc,#fb,#77,#80,#f7,#00
	db #76,#75,#76,#77,#78,#79,#78,#d0
	db #f8,#09,#ec,#c9,#3f,#f7,#2d,#3e
	db #3d,#3e,#3f,#1a,#40,#41,#40,#da
	db #36,#f6,#28,#3b,#fc,#6e,#35,#be
	db #fc,#73,#2f,#fc,#78,#fb,#6e,#e7
	db #8d,#f6,#6e,#fb,#a4,#34,#03,#33
	db #34,#35,#36,#37,#36,#f8,#a9,#fb
	db #87,#a0,#f1,#6e,#28,#f7,#cd,#27
	db #26,#27,#28,#29,#2d,#2a,#29,#cb
	db #d6,#23,#f7,#13,#fb,#d2,#32,#fc
	db #22,#f8,#fb,#c3,#f6,#7d,#f1,#9b
	db #fb,#36,#fb,#49,#3a,#39,#3a,#0f
	db #3b,#3c,#3d,#3c,#f7,#4e,#f7,#37
	db #fb,#22,#fb,#c8,#8e,#fb,#71,#2e
	db #2d,#2e,#ef,#45,#c9,#63,#f6,#a2
	db #2a,#7d,#2a,#fe,#b6,#fe,#cc,#c0
	db #cd,#fb,#bd,#f6,#40,#3f,#fc,#21
	db #bf,#fb,#1c,#4b,#fc,#2b,#fb,#31
	db #f6,#21,#f6,#bd,#fb,#17,#fb,#3f
	db #57,#28,#fc,#53,#23,#fc,#58,#1e
	db #fc,#5d,#f6,#58,#f6,#5d,#f7,#fd
	db #0c,#fe,#78,#f6,#3f,#fb,#30,#4f
	db #fc,#8a,#f6,#17,#ec,#98,#f5,#fb
	db #8a,#f1,#b1,#fb,#85,#fb,#c5,#5f
	db #fc,#cb,#6a,#fc,#d0,#ed,#f6,#bc
	db #f1,#8a,#ec,#4e,#1a,#fc,#02,#f6
	db #fd,#17,#fc,#11,#bd,#f6,#6c,#32
	db #fc,#20,#f6,#e4,#f6,#49,#f6,#80
	db #64,#fc,#43,#af,#fb,#d0,#77,#e3
	db #4d,#8e,#f7,#6b,#ec,#57,#fb,#48
	db #fb,#cb,#df,#f6,#d5,#f6,#39,#54
	db #fc,#a7,#f7,#98,#f8,#a3,#f5,#ad
	db #f9,#b9,#fe,#f7,#c2,#fb,#cc,#fc
	db #d3,#f9,#a5,#fb,#e7,#f1,#93,#fb
	db #2f,#3f,#fa,#f4,#01,#fb,#ed,#f9
	db #f0,#ec,#19,#f6,#f7,#2f,#fc,#38
	db #28,#ef,#fe,#3d,#b3,#3a,#e7,#15
	db #0c,#e8,#a6,#e7,#8d,#fb,#d7,#fb
	db #33,#ff,#f6,#e1,#f6,#2e,#c9,#f5
	db #60,#8d,#fb,#8c,#ec,#d1,#e7,#46
	db #e7,#cd,#af,#fb,#17,#2a,#f2,#1d
	db #2f,#fc,#2c,#f1,#1d,#d3,#3f,#60
	db #cd,#7e,#28,#de,#0d,#fb,#cc,#fb
	db #34,#d8,#1c,#e7,#fe,#fb,#6c,#35
	db #f5,#f7,#80,#f1,#7b,#f1,#98,#5b
	db #08,#4f,#f2,#4d,#6a,#fc,#5c,#d7
	db #f6,#11,#fb,#57,#3b,#f7,#70,#1a
	db #fc,#7a,#f6,#61,#fb,#75,#6f,#5f
	db #fc,#8e,#f6,#52,#54,#fc,#9d,#fb
	db #5c,#fb,#a6,#f6,#43,#ed,#fb,#b5
	db #fb,#9d,#f1,#3e,#23,#f7,#cf,#f1
	db #02,#15,#fc,#e8,#c0,#60,#4d,#fe
	db #4a,#86,#00,#fe,#01,#00,#01,#00
	db #01,#ff,#01,#fe,#01,#fd,#01,#fc
	db #55,#fa,#07,#fc,#e8,#a6,#01,#1f
	db #01,#1e,#01,#9f,#01,#bc,#2b,#ba
	db #28,#00,#2c,#2c,#35,#35,#3b,#3b
	db #43,#43,#e1,#fe,#05,#fe,#03,#fe
	db #01,#28,#28,#21,#21,#fe,#0f,#93
	db #c8,#01,#23,#23,#f8,#3b,#47,#47
	db #bc,#45,#c4,#11,#90,#ec,#c5,#1f
	db #1f,#fe,#d9,#2a,#2a,#32,#32,#0f
	db #38,#38,#3f,#3f,#fe,#e3,#fe,#f7
	db #fe,#f5,#fe,#f3,#88,#c2,#ed,#1f
	db #20,#20,#b5,#3d,#52,#52,#fa,#15
	db #f6,#70,#9f,#fc,#92,#bd,#fc,#97
	db #77,#fc,#9c,#65,#17,#f7,#a1,#fe
	db #e5,#3b,#2f,#fd,#ae,#4f,#fe,#b2
	db #bb,#d4,#8d,#53,#fb,#c4,#fd,#da
	db #fe,#e9,#54,#fc,#ec,#f6,#c9,#9f
	db #fe,#2d,#2a,#23,#fd,#fe,#fd,#d3
	db #d4,#dd,#01,#91,#01,#90,#eb,#01
	db #8f,#01,#8e,#a0,#8d,#8e,#e8,#8d
	db #0c,#e8,#a6,#e7,#8d,#ef,#fb,#d7
	db #fb,#74,#f6,#e1,#5f,#fc,#ec,#f1
	db #dd,#d3,#ff,#10,#8d,#5e,#6a,#f2
	db #1d,#77,#fc,#2c,#f1,#1d,#d3,#3f
	db #60,#cd,#52,#05,#52,#fa,#f6,#70
	db #9f,#fc,#12,#bd,#fc,#17,#aa,#fb
	db #cc,#17,#f7,#21,#3b,#fe,#2b,#2f
	db #fd,#2e,#4f,#dd,#fe,#32,#d4,#0d
	db #53,#fb,#44,#fd,#5a,#fe,#69,#54
	db #fc,#6c,#af,#f6,#49,#2a,#fe,#7b
	db #23,#fd,#7e,#fd,#53,#d4,#5d,#01
	db #11,#80,#23,#10,#21,#21,#28,#00
	db #d2,#01,#00,#73,#ff,#01,#fe,#8d
	db #02,#04,#b1,#6a,#03,#fe,#b1,#ba
	db #01,#91,#01,#90,#01,#8f,#01,#8e
	db #a0,#8d,#e7,#8c,#07,#fa,#e8,#a6
	db #c4,#6a,#b5,#fa,#01,#a6,#38,#a5
	db #01,#fe,#0d,#02,#5e,#04,#b1,#ea
	db #03,#b1,#3a,#01,#11,#23,#10,#fd
	db #8c,#23,#ab,#14,#00,#f6,#bb,#ed
	db #fa,#fc,#33,#c3,#fc,#38,#fb,#33
	db #b5,#c9,#41,#a3,#f7,#79,#f6,#e3
	db #70,#ed,#8d,#38,#ed,#a1,#3a,#4f
	db #3b,#f8,#b5,#f6,#29,#f6,#83,#53
	db #e8,#d3,#bb,#cf,#fc,#ec,#ec,#d8
	db #3b,#2a,#f8,#05,#f6,#fb,#f6,#bf
	db #ec,#8d,#ba,#fb,#36,#fb,#fc,#3c
	db #ec,#28,#b0,#b5,#de,#fc,#a5,#a9
	db #d7,#ed,#aa,#fb,#a5,#38,#fc,#c3
	db #7e,#fc,#c8,#ec,#41,#fb,#c3,#cf
	db #f1,#e5,#b0,#55,#3b,#2a,#f8,#45
	db #f6,#3b,#f6,#ff,#ec,#cd,#ba,#fb
	db #76,#fb,#fc,#7c,#ec,#68,#b0,#f5
	db #de,#fc,#e5,#a9,#d7,#ed,#ea,#fb
	db #e5,#38,#fc,#03,#7e,#fc,#08,#ec
	db #81,#fb,#03,#cf,#f1,#25,#b0,#95
	db #3b,#2a,#f8,#85,#f6,#7b,#f6,#3f
	db #ec,#0d,#ba,#fb,#b6,#fb,#fc,#bc
	db #ec,#a8,#b0,#35,#de,#fc,#25,#a9
	db #d7,#ed,#2a,#fb,#25,#38,#fc,#43
	db #7e,#fc,#48,#ec,#c1,#fb,#43,#cf
	db #f1,#65,#b0,#d5,#3b,#2a,#f8,#c5
	db #f6,#bb,#f6,#7f,#ec,#4d,#ba,#fb
	db #f6,#fb,#fc,#fc,#ec,#e8,#b0,#75
	db #de,#fc,#65,#a9,#d6,#ed,#6a,#fb
	db #65,#38,#fc,#83,#7e,#fc,#88,#e7
	db #e3,#0c,#fb,#e8,#a6,#fb,#83,#e7
	db #c3,#d8,#3d,#e2,#38,#cc,#fc,#23
	db #01,#88,#ca,#06,#87,#ec,#a9,#4f
	db #3b,#f8,#35,#f6,#f7,#3f,#23,#e7
	db #f7,#49,#dd,#e0,#f1,#75,#3b,#2a
	db #f8,#85,#f6,#7b,#f6,#3f,#dd,#ec
	db #0d,#fb,#b6,#fb,#fc,#bc,#ec,#a8
	db #b0,#35,#de,#fc,#25,#6b,#a9,#ed
	db #2a,#fb,#25,#38,#fc,#43,#7e,#fc
	db #48,#ec,#c1,#e7,#fb,#43,#f1,#65
	db #b0,#d5,#3b,#2a,#f8,#c5,#f6,#bb
	db #f6,#7f,#dd,#ec,#4d,#fb,#f6,#fb
	db #fc,#fc,#ec,#e8,#b0,#75,#de,#fc
	db #65,#6b,#a9,#ed,#6a,#fb,#65,#38
	db #fc,#83,#7e,#fc,#88,#fd,#30,#03
	db #ae,#14,#00,#02,#bb,#ed,#01,#bb
	db #33,#f6,#29,#f6,#e3,#04,#df,#ed
	db #8d,#ec,#1f,#00,#f7,#b5,#ec,#79
	db #ce,#d2,#f6,#b5,#f6,#fb,#f7,#f6
	db #bf,#ec,#8d,#e2,#36,#b0,#b5,#01
	db #e3,#a5,#e2,#19,#f6,#c3,#fe,#f6
	db #ea,#b0,#55,#f6,#f5,#f6,#3b,#e2
	db #c3,#e2,#76,#b0,#f5,#01,#ff,#e3
	db #e5,#e2,#59,#f6,#03,#f6,#2a,#b0
	db #95,#f6,#35,#f6,#7b,#e2,#03,#df
	db #e2,#b6,#b0,#35,#01,#e3,#25,#e2
	db #99,#f6,#43,#f6,#6a,#b0,#d5,#fb
	db #f6,#75,#f6,#bb,#e2,#43,#e2,#f6
	db #b0,#75,#01,#e3,#65,#dd,#d9,#7f
	db #07,#e8,#a6,#f6,#83,#ec,#c8,#c4
	db #29,#f6,#18,#01,#83,#01,#82,#bf
	db #ec,#a9,#00,#f7,#35,#ba,#b3,#f6
	db #35,#d8,#f9,#e2,#b6,#b0,#35,#7f
	db #01,#e3,#25,#e2,#99,#f6,#43,#f6
	db #6a,#b0,#d5,#f6,#75,#f6,#bb,#ec
	db #e2,#43,#e2,#f6,#b0,#75,#01,#e3
	db #65,#f3,#1f,#00,#df,#01,#00,#5f
	db #ff,#07,#01,#a1,#01,#a1,#01,#a0
	db #01,#9f,#01,#9e,#f8,#01,#9d,#01
	db #9c,#01,#9b,#01,#9a,#09,#98,#38
	db #be,#f1,#00,#3c,#f0,#00,#01,#0d
	db #ee,#0c,#fb,#28,#f7,#32,#3a,#5e
	db #3a,#d4,#3d,#3e,#df,#65,#fe,#8a
	db #f7,#8d,#fb,#8c,#3e,#7f,#2a,#f8
	db #a1,#fd,#96,#fb,#87,#f9,#99,#f6
	db #96,#fa,#b9,#f7,#a1,#fd,#fd,#be
	db #f9,#ad,#f6,#91,#3d,#96,#f6,#5e
	db #f6,#63,#2e,#f7,#6e,#7d,#3c,#f2
	db #50,#3d,#e6,#b0,#49,#f6,#9e,#f6
	db #a3,#2e,#f7,#ae,#7d,#3c,#f2,#90
	db #3d,#26,#b0,#89,#f6,#de,#f6,#e3
	db #2e,#f7,#ee,#7d,#3c,#f2,#d0,#3d
	db #66,#b0,#c9,#f6,#1e,#f6,#23,#2e
	db #f7,#2e,#5f,#3c,#f7,#60,#3f,#ec
	db #8d,#e7,#a5,#fc,#a1,#e7,#c2,#f1
	db #be,#fe,#f6,#9b,#dd,#f4,#fe,#87
	db #ee,#15,#eb,#91,#01,#a1,#2f,#a0
	db #3b,#d8,#f7,#0d,#fa,#cb,#2a,#f8
	db #21,#fd,#16,#3a,#38,#39,#9d,#fd
	db #2c,#38,#3e,#f2,#12,#fd,#31,#f9
	db #1e,#2b,#fc,#49,#ff,#fd,#3e,#f9
	db #2d,#f6,#11,#fa,#43,#cf,#1c,#fb
	db #9c,#fd,#84,#ef,#55,#f5,#8d,#16
	db #fb,#0b,#f5,#01,#fc,#16,#2e,#f7
	db #9e,#3d,#fc,#32,#ff,#f6,#29,#8d
	db #b6,#ec,#79,#fb,#dc,#fb,#42,#f1
	db #97,#8d,#56,#fb,#4b,#d6,#f5,#41
	db #fc,#56,#2e,#f7,#de,#3d,#fc,#72
	db #fc,#69,#08,#aa,#04,#00,#07,#f1
	db #fd,#06,#f1,#0d,#05,#f1,#1d,#04
	db #aa,#f1,#2d,#03,#f1,#3d,#02,#f1
	db #4d,#01,#f1,#5d,#00,#bf,#e0,#6d
	db #09,#01,#8e,#01,#8e,#01,#8d,#01
	db #8c,#01,#8b,#dc,#89,#53,#08,#f9
	db #ae,#07,#f9,#b6,#06,#06,#e7,#a7
	db #fb,#d8,#ea,#f1,#c0,#e2,#a2,#fa
	db #0a,#05,#f9,#11,#04,#f9,#19,#03
	db #bf,#f9,#21,#02,#fc,#29,#01,#8e
	db #1e,#8d,#fe,#e0,#fe,#f0,#ec,#0e
	db #8f,#fe,#00,#02,#01,#00,#d8,#1d
	db #bf,#13,#f6,#86,#fb,#95,#f0,#fb
	db #a3,#b5,#4a,#01,#54,#65,#53,#08
	db #08,#07,#d5,#01,#00,#c2,#ff,#03
	db #f8,#3e,#04,#f7,#47,#05,#f7,#51
	db #6a,#06,#f7,#5b,#f6,#34,#08,#f7
	db #6f,#09,#f7,#79,#0a,#e3,#fb,#83
	db #fb,#42,#fe,#81,#08,#07,#06,#f6
	db #79,#fa,#9c,#9f,#fd,#90,#05,#04
	db #fc,#8a,#f4,#6f,#01,#90,#01,#c7
	db #01,#c6,#f5,#01,#c5,#24,#8c,#e2
	db #8f,#f8,#86,#07,#f9,#b6,#06,#f8
	db #6a,#fa,#ee,#ae,#fb,#d8,#f1,#c0
	db #e2,#a2,#fa,#0a,#05,#f9,#11,#04
	db #ef,#f9,#19,#fc,#80,#fc,#24,#02
	db #fc,#29,#01,#8e,#1d,#8d,#fe,#e0
	db #ff,#f8,#bd,#f6,#d0,#fe,#11,#fe
	db #f8,#fc,#05,#f8,#d9,#fc,#cb,#01
	db #10,#c0,#01,#47,#a8,#0e,#07,#07
	db #0a,#af,#fc,#00,#09,#f9,#05,#08
	db #fc,#0d,#fb,#00,#01,#03,#e2,#02
	db #f5,#f9,#2a,#f6,#3a,#f3,#1d,#fd
	db #51,#07,#f9,#55,#06,#f9,#5d,#5f
	db #05,#f9,#65,#04,#fe,#6d,#ef,#2a
	db #ee,#77,#f6,#47,#f0,#3b,#ff,#f7
	db #4f,#f8,#4d,#f9,#9b,#fb,#a8,#ec
	db #c0,#f6,#ac,#fb,#5a,#47,#9d,#ff
	db #ec,#8d,#f6,#a6,#f1,#c3,#ec,#b0
	db #51,#f7,#b0,#46,#ec,#cd,#f6,#e6
	db #ff,#f1,#03,#ec,#f0,#51,#37,#b0
	db #86,#ec,#0d,#f6,#26,#f1,#43,#ec
	db #30,#ff,#51,#77,#b0,#c6,#ec,#4d
	db #f6,#66,#d8,#83,#e7,#39,#ec,#ac
	db #fc,#d8,#77,#05,#e7,#6b,#e7,#c5
	db #fb,#0f,#04,#fc,#15,#01,#7a,#06
	db #79,#ff,#dd,#c3,#fa,#2d,#f7,#19
	db #fb,#28,#ec,#40,#ec,#91,#4c,#22
	db #ec,#0d,#ff,#f6,#26,#f1,#43,#ec
	db #30,#51,#77,#b0,#c6,#ec,#4d,#f6
	db #66,#f4,#83,#00,#ff,#01,#00,#01
	db #00,#01,#ff,#01,#fe,#01,#fd,#01
	db #fc,#01,#fb,#01,#fa,#f0,#01,#f9
	db #01,#f8,#01,#f7,#66,#f5,#00,#ff
	db #01,#00,#01,#00,#01,#ff,#01,#fe
	db #01,#fd,#01,#fc,#01,#fb,#01,#fa
	db #f0,#01,#f9,#01,#f8,#01,#f7,#66
	db #f5,#ff,#ff,#01,#00,#01,#00,#01
	db #ff,#01,#fe,#01,#fd,#01,#fc,#01
	db #fb,#01,#fa,#f0,#01,#f9,#01,#f8
	db #01,#f7,#66,#f5,#00,#00,#00,#00
.l0000		; added by Megachur
	db #00
;
.music_info
	db "Sly Spy Musics - 05 (2013)(Public Domain)(Geoff Follin)",0
	db "AYC",0

	read "music_end.asm"
