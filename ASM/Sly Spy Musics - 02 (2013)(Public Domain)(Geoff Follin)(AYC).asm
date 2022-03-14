; Music of Sly Spy Musics - 02 (2013)(Public Domain)(Geoff Follin)(AYC)
; Ripped by Megachur the 22/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SLYSPM02.BIN"
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
	db #5f,#18,#01,#2e,#00,#01,#2b,#07
	db #01,#90,#07,#01,#40,#0a,#01,#89
	db #0a,#01,#4a,#0d,#01,#ae,#0e,#01
	db #e5,#0e,#01,#32,#10,#01,#4b,#11
	db #01,#d8,#11,#01,#dc,#12,#01,#10
	db #13,#01,#44,#13,#ff,#ff,#ff,#ff
	db #ff,#ff,#70,#23,#70,#96,#fe,#02
	db #86,#86,#b3,#fe,#07,#fe,#03,#6d
	db #e1,#fe,#0c,#fe,#08,#0c,#fe,#11
	db #fe,#0d,#2d,#fe,#16,#be,#fe,#12
	db #66,#fe,#1b,#fe,#19,#fd,#07,#fe
	db #14,#fe,#05,#86,#bd,#f9,#00,#a9
	db #fe,#2f,#fb,#0a,#fe,#30,#f6,#11
	db #52,#fe,#43,#c4,#ef,#1e,#b7,#07
	db #38,#38,#4b,#fe,#a2,#43,#43,#77
	db #59,#fe,#a7,#fe,#a3,#fe,#78,#70
	db #fe,#a8,#f3,#4d,#fe,#b9,#eb,#fd
	db #a7,#fe,#b4,#fe,#a5,#43,#f9,#a0
	db #54,#fe,#cf,#fb,#aa,#fa,#fe,#d0
	db #f3,#75,#ef,#be,#d5,#a7,#fe,#e4
	db #d5,#fe,#92,#a9,#0f,#18,#a3,#53
	db #30,#ec,#22,#fd,#15,#fb,#f5,#fe
	db #47,#de,#fb,#40,#fb,#4e,#3b,#fc
	db #54,#fb,#45,#fb,#54,#fb,#62,#2c
	db #ff,#fc,#68,#fe,#18,#fd,#6e,#fb
	db #68,#fb,#76,#ec,#54,#fb,#6d,#fb
	db #4f,#de,#fb,#90,#fb,#9e,#32,#fc
	db #a4,#fb,#95,#fb,#a4,#fb,#b2,#25
	db #fc,#fc,#b8,#f6,#b3,#fb,#c6,#f6
	db #68,#f6,#7c,#f6,#72,#2c,#2b,#c6
	db #fe,#eb,#fe,#e9,#2d,#2d,#2e,#fe
	db #f0,#ce,#e9,#2a,#91,#f7,#27,#2c
	db #2f,#f9,#b1,#31,#31,#30,#fe,#3a
	db #b6,#fe,#38,#33,#fe,#41,#af,#38
	db #2f,#f7,#e2,#f6,#27,#28,#b0,#f7
	db #c3,#24,#fe,#b3,#fe,#b1,#26,#26
	db #27,#26,#16,#25,#23,#21,#f8,#be
	db #20,#fe,#c7,#fe,#c5,#22,#07,#22
	db #23,#22,#21,#23,#ee,#aa,#fe,#bb
	db #f8,#da,#3c,#25,#28,#f6,#28,#f7
	db #f9,#f7,#1b,#f6,#9e,#29,#29,#7e
	db #28,#fe,#16,#fe,#14,#fd,#03,#ec
	db #f8,#fe,#0b,#f8,#2a,#2c,#04,#2f
	db #32,#35,#38,#3b,#fb,#43,#38,#35
	db #fd,#f8,#94,#d8,#03,#f6,#9f,#f5
	db #71,#fe,#a9,#f9,#bd,#23,#f7,#99
	db #d4,#fe,#cc,#fe,#cd,#23,#fd,#e8
	db #24,#fe,#92,#1f,#1e,#8d,#fa,#af
	db #1d,#1d,#1c,#fe,#b6,#fe,#b4,#1f
	db #fe,#bd,#23,#1e,#1c,#f8,#c1,#1b
	db #1b,#1a,#fe,#ca,#fe,#c8,#e2,#fe
	db #b9,#fe,#b7,#f7,#c9,#1c,#1a,#19
	db #f8,#e0,#1a,#f1,#e3,#c2,#f9,#af
	db #fd,#0d,#f7,#de,#18,#18,#17,#fe
	db #1a,#e5,#fd,#e7,#fe,#21,#eb,#18
	db #17,#16,#f8,#3a,#15,#fe,#43,#bc
	db #fe,#41,#17,#fe,#34,#fe,#39,#fd
	db #43,#fa,#4f,#14,#14,#7e,#13,#fe
	db #56,#fc,#44,#f6,#4c,#f3,#55,#d0
	db #6a,#fe,#99,#13,#f8,#f8,#a8,#fe
	db #9e,#ef,#3b,#fd,#39,#c7,#bb,#4b
	db #57,#64,#00,#70,#7d,#89,#96,#a2
	db #af,#bb,#b3,#a0,#f7,#0a,#86,#f7
	db #14,#85,#84,#83,#84,#85,#05,#86
	db #87,#88,#89,#88,#f6,#00,#c9,#f7
	db #32,#40,#96,#f7,#3c,#95,#94,#93
	db #94,#95,#96,#0a,#97,#98,#99,#98
	db #f6,#28,#59,#f7,#5a,#43,#aa,#f7
	db #64,#64,#fc,#6e,#4b,#f7,#73,#70
	db #fc,#7d,#54,#bf,#f7,#82,#77,#fc
	db #8c,#fb,#87,#fb,#78,#fb,#91,#fb
	db #19,#f1,#0f,#ff,#fb,#8c,#fb,#a5
	db #fb,#b4,#fb,#c2,#fb,#5f,#fb,#7d
	db #f6,#5a,#ec,#b4,#ff,#fb,#cd,#fb
	db #af,#fb,#f0,#fb,#fe,#fb,#6e,#fb
	db #f5,#fb,#04,#f6,#6e,#f3,#f1,#6e
	db #f6,#c8,#f6,#dc,#f6,#d2,#59,#58
	db #fe,#4b,#fe,#49,#1e,#5a,#5a,#5b
	db #fe,#50,#ce,#49,#fb,#9b,#fb,#8b
	db #59,#58,#5f,#f8,#10,#63,#fe,#9b
	db #fe,#99,#65,#65,#66,#cd,#fe,#a0
	db #b1,#99,#64,#5f,#f7,#42,#f6,#87
	db #4f,#f8,#24,#1a,#4a,#4a,#49,#fe
	db #12,#fe,#10,#4c,#fe,#19,#4b,#23
	db #47,#43,#f9,#1e,#42,#42,#41,#fe
	db #26,#fe,#24,#4c,#44,#fe,#2d,#43
	db #47,#ed,#0a,#f7,#39,#4b,#4f,#f6
	db #f6,#88,#f7,#59,#f7,#7b,#f5,#fe
	db #53,#fe,#77,#fe,#75,#55,#1c,#55
	db #56,#55,#ec,#58,#fe,#6b,#f8,#8a
	db #59,#5f,#09,#64,#6a,#70,#77,#fb
	db #a3,#70,#6a,#f8,#f4,#fa,#d8,#63
	db #f6,#bd,#f5,#d1,#fe,#09,#f9,#1d
	db #47,#f8,#f9,#46,#36,#46,#45,#fe
	db #02,#fe,#00,#48,#fe,#09,#fe,#f2
	db #3f,#58,#3b,#f9,#0f,#3a,#fe,#17
	db #fe,#15,#3c,#3c,#3d,#16,#3c,#3b
	db #38,#f7,#21,#37,#fe,#2b,#fe,#29
	db #39,#31,#39,#3a,#fe,#30,#f7,#29
	db #38,#35,#32,#f8,#40,#78,#35,#e3
	db #22,#f8,#0f,#fe,#6e,#f7,#3e,#31
	db #31,#30,#d9,#fe,#7a,#fe,#78,#33
	db #fe,#81,#eb,#78,#2f,#2c,#f8,#9a
	db #60,#2b,#fe,#a3,#fe,#a1,#2d,#2d
	db #2e,#2d,#2c,#47,#2a,#f8,#ad,#29
	db #29,#28,#fe,#b6,#fe,#b4,#fd,#a3
	db #e2,#f7,#ad,#f3,#b5,#d0,#ca,#2a
	db #28,#25,#f8,#08,#28,#70,#2a,#ef
	db #9b,#fe,#ab,#c6,#1a,#4b,#57,#64
	db #70,#01,#7d,#89,#96,#a2,#af,#bb
	db #b3,#f7,#6a,#40,#86,#f7,#74,#85
	db #84,#83,#84,#85,#86,#0a,#87,#88
	db #89,#88,#f6,#60,#c9,#f7,#92,#96
	db #80,#f7,#9c,#95,#94,#93,#94,#95
	db #96,#97,#15,#98,#99,#98,#f6,#88
	db #59,#f7,#ba,#43,#f7,#c4,#55,#64
	db #fc,#ce,#4b,#f7,#d3,#70,#fc,#dd
	db #54,#f7,#e2,#7b,#77,#fc,#ec,#fb
	db #e7,#fb,#d8,#fb,#f1,#7e,#d9,#00
	db #fb,#dd,#f0,#f6,#2c,#fb,#ce,#fb
	db #3b,#fa,#31,#6a,#64,#5f,#59,#30
	db #54,#4f,#f8,#f8,#fb,#54,#53,#52
	db #51,#52,#76,#53,#f6,#f1,#fb,#68
	db #fb,#c9,#3f,#f7,#73,#fa,#68,#47
	db #85,#fe,#72,#3b,#38,#35,#32,#fd
	db #89,#2f,#fc,#8d,#20,#2c,#2a,#f9
	db #93,#29,#28,#27,#28,#29,#28,#2a
	db #2c,#f8,#a1,#2b,#fe,#9a,#2a,#2b
	db #2c,#04,#2d,#2e,#2f,#2e,#2d,#f7
	db #a9,#2c,#2f,#05,#32,#35,#38,#38
	db #3b,#f7,#c4,#3f,#fb,#6f,#fe,#f7
	db #c5,#fe,#c2,#fd,#de,#fa,#88,#f7
	db #a1,#fb,#bf,#fc,#f5,#37,#00,#36
	db #35,#36,#37,#38,#39,#3a,#3b,#3b
	db #3a,#39,#f7,#f9,#fa,#f4,#f1,#c4
	db #47,#f7,#65,#fe,#83,#d6,#f8,#2e
	db #f7,#d3,#64,#ed,#40,#5f,#f7,#54
	db #f1,#4f,#54,#df,#f2,#6d,#f5,#68
	db #4f,#fb,#29,#fd,#8c,#fb,#28,#fb
	db #0f,#fc,#e3,#ff,#fe,#e6,#fc,#9f
	db #fa,#0e,#f7,#f6,#f6,#9a,#fa,#bc
	db #fb,#f2,#fa,#e2,#90,#fc,#cd,#2c
	db #2a,#f9,#d3,#29,#28,#27,#28,#28
	db #29,#2a,#f7,#e8,#2b,#fe,#da,#2a
	db #2b,#2c,#05,#2d,#2e,#2f,#2e,#2d
	db #f7,#e9,#2c,#fb,#c2,#dc,#f1,#14
	db #f7,#37,#3b,#fb,#a9,#fa,#c8,#f7
	db #e1,#2a,#28,#10,#25,#23,#21,#fc
	db #35,#20,#1f,#1e,#1f,#01,#20,#21
	db #22,#23,#24,#23,#22,#f7,#39,#1f
	db #21,#23,#25,#fd,#50,#fa,#34,#fc
	db #59,#f9,#4f,#fe,#47,#55,#1c,#fb
	db #67,#1e,#f7,#6d,#1f,#f5,#55,#28
	db #fe,#e0,#e5,#fc,#ff,#fd,#0d,#fe
	db #8f,#4f,#54,#fc,#90,#59,#f7,#95
	db #55,#5f,#f7,#9f,#64,#f7,#a9,#6a
	db #f7,#b3,#70,#f7,#bd,#55,#77,#f7
	db #c7,#7e,#f7,#d1,#86,#f7,#db,#8e
	db #f7,#e5,#55,#96,#f7,#ef,#9f,#f7
	db #f9,#a9,#f7,#03,#b3,#f7,#0d,#40
	db #bd,#f7,#17,#c9,#fd,#3f,#92,#fa
	db #7e,#0a,#23,#f4,#fb,#4f,#fc,#2a
	db #3b,#fc,#2f,#28,#df,#f7,#34,#fb
	db #2f,#47,#fc,#43,#f6,#39,#fb,#2a
	db #fb,#56,#f1,#48,#fa,#f6,#2f,#ec
	db #61,#01,#39,#01,#98,#e7,#37,#0c
	db #fa,#a0,#43,#ab,#fc,#a7,#59,#fc
	db #ac,#4b,#fc,#b1,#64,#fc,#b6,#fb
	db #ac,#5e,#70,#fc,#c0,#86,#fc,#c5
	db #fb,#bb,#d8,#a7,#f6,#d9,#54,#eb
	db #fc,#01,#fb,#e8,#fb,#fc,#7e,#fc
	db #10,#96,#fc,#15,#fb,#0b,#ed,#d8
	db #f7,#01,#a7,#1f,#a6,#3f,#fe,#27
	db #fc,#0a,#4f,#fe,#2e,#b7,#fd,#1a
	db #6a,#fd,#34,#fd,#31,#9f,#fe,#3b
	db #fc,#19,#fd,#2b,#db,#fd,#3f,#fd
	db #2e,#4f,#fd,#35,#d8,#27,#2f,#fe
	db #77,#fd,#4f,#2e,#3f,#3b,#fe,#7e
	db #5f,#fe,#81,#fc,#70,#fd,#81,#77
	db #dd,#fe,#8b,#fd,#88,#5f,#fd,#7b
	db #fd,#8f,#fd,#7e,#3b,#fd,#85,#80
	db #df,#77,#17,#24,#30,#3d,#49,#56
	db #62,#00,#6f,#7b,#88,#94,#a1,#ad
	db #ba,#c6,#00,#d3,#df,#ec,#f8,#05
	db #11,#1e,#2a,#00,#37,#43,#50,#5c
	db #69,#75,#82,#8e,#00,#9b,#a7,#b4
	db #c0,#cd,#d9,#e6,#f2,#70,#ff,#fb
	db #c0,#d8,#e8,#b5,#c5,#86,#86,#96
	db #96,#e7,#fe,#60,#fd,#65,#e1,#62
	db #70,#70,#fe,#b4,#fe,#88,#fd,#8d
	db #d0,#e1,#8a,#10,#60,#0c,#f7,#a0
	db #0b,#0a,#0b,#0c,#10,#0d,#0e,#0d
	db #e9,#a9,#0c,#fd,#ef,#e1,#08,#d5
	db #c9,#bd,#b3,#fe,#cf,#b2,#b1,#b2
	db #08,#b3,#b4,#b5,#b4,#f3,#d1,#b3
	db #bd,#c9,#cc,#f8,#e8,#fe,#ce,#a9
	db #9f,#fe,#75,#fd,#f6,#95,#94,#04
	db #95,#96,#97,#98,#97,#fd,#f9,#96
	db #8e,#c0,#fb,#70,#fd,#0a,#85,#84
	db #85,#86,#87,#88,#4f,#87,#fd,#0d
	db #86,#7e,#f7,#19,#fa,#97,#fb,#99
	db #f5,#1a,#28,#6a,#64,#fa,#3a,#6a
	db #f8,#25,#6f,#6e,#6f,#0f,#70,#71
	db #72,#71,#f3,#49,#f8,#06,#fd,#65
	db #f7,#22,#c8,#ec,#4a,#fd,#38,#5f
	db #59,#f1,#8a,#58,#57,#58,#09,#59
	db #5a,#5b,#5a,#fd,#99,#59,#54,#f8
	db #a5,#01,#53,#52,#53,#54,#55,#56
	db #55,#fd,#ad,#10,#54,#59,#5f,#f9
	db #3a,#63,#62,#63,#64,#1f,#65,#66
	db #65,#e9,#c1,#f7,#24,#eb,#71,#f6
	db #f6,#f6,#5f,#82,#fe,#16,#85,#86
	db #87,#88,#87,#f3,#11,#86,#24,#77
	db #6a,#f8,#89,#4f,#4b,#f9,#32,#4a
	db #49,#05,#4a,#4b,#4c,#4d,#4c,#e9
	db #39,#4b,#f7,#a5,#f7,#fe,#b8,#f7
	db #63,#f9,#bb,#f4,#c0,#64,#ed,#91
	db #ec,#8c,#fe,#30,#20,#47,#43,#fa
	db #ab,#42,#41,#42,#43,#44,#2f,#45
	db #44,#e9,#b1,#43,#f8,#32,#fe,#d8
	db #f9,#ab,#fd,#e1,#a0,#f5,#d1,#3f
	db #f9,#f0,#3e,#3d,#3e,#3f,#40,#3f
	db #41,#40,#e9,#f7,#f8,#f0,#fd,#1d
	db #f7,#dc,#e2,#b2,#88,#40,#00,#17
	db #24,#30,#3d,#49,#56,#62,#6f,#00
	db #7b,#88,#94,#a1,#ad,#ba,#c6,#d3
	db #00,#df,#ec,#f8,#05,#11,#1e,#2a
	db #37,#00,#43,#50,#5c,#69,#75,#82
	db #8e,#9b,#00,#a7,#b4,#c0,#cd,#d9
	db #e6,#f2,#ff,#e0,#fb,#c0,#d8,#e8
	db #b6,#c5,#00,#bf,#f0,#00,#01,#fe
	db #11,#fb,#0f,#f9,#18,#ef,#00,#80
	db #09,#8c,#b0,#87,#fd,#95,#02,#02
	db #03,#04,#e9,#22,#01,#40,#01,#42
	db #ff,#01,#41,#01,#40,#01,#3f,#01
	db #3e,#01,#3d,#01,#3c,#01,#3b,#01
	db #3a,#d0,#01,#39,#15,#37,#01,#fe
	db #23,#02,#03,#03,#04,#ef,#07,#2a
	db #01,#2a,#82,#21,#07,#fa,#a0,#07
	db #a7,#01,#a7,#01,#9f,#bd,#cb,#9d
	db #01,#ec,#d3,#75,#98,#01,#38,#d2
	db #71,#01,#d8,#a0,#f6,#29,#c9,#01
	db #c9,#01,#9f,#cb,#9d,#01,#ec,#d3
	db #89,#98,#96,#8d,#fe,#00,#86,#86
	db #b3,#fe,#05,#fe,#01,#e1,#fe,#0a
	db #b6,#fe,#06,#0c,#fe,#0f,#fe,#0b
	db #2d,#fe,#14,#fe,#10,#66,#fe,#fe
	db #19,#fe,#17,#fd,#05,#fe,#12,#fe
	db #03,#fd,#04,#fb,#00,#a9,#f7,#fe
	db #2d,#fb,#08,#fe,#2e,#f6,#0f,#52
	db #fe,#41,#ef,#1c,#b5,#05,#46,#4b
	db #fe,#a0,#43,#43,#59,#fe,#a5,#fe
	db #a1,#70,#ff,#fe,#aa,#fe,#a6,#fd
	db #9b,#fe,#ab,#f8,#50,#fe,#b7,#fd
	db #a5,#fe,#b2,#ef,#fe,#a3,#fd,#a4
	db #fb,#a0,#54,#fe,#cd,#fb,#a8,#fe
	db #ce,#f6,#af,#f7,#fd,#7d,#ef,#bc
	db #b5,#a5,#ec,#50,#17,#f7,#54,#f1
	db #6e,#8d,#45,#9b,#fd,#22,#64,#64
	db #fb,#27,#fb,#31,#c9,#fe,#ef,#fe
	db #eb,#7e,#12,#f7,#f4,#fd,#e5,#fe
	db #f2,#fe,#e3,#fd,#e4,#88,#e0,#6a
	db #f7,#fe,#80,#fb,#5b,#fe,#81,#fb
	db #62,#d5,#fe,#8f,#ef,#6a,#fd,#80
	db #e3,#d6,#7e,#b0,#30,#fd,#1b,#59
	db #59,#77,#fe,#25,#fe,#21,#6d,#8e
	db #fe,#2a,#fe,#26,#b3,#fe,#2f,#fe
	db #2b,#10,#f7,#34,#fd,#fd,#25,#fe
	db #32,#fe,#23,#fd,#24,#01,#20,#e7
	db #1f,#96,#fe,#60,#36,#86,#86,#fd
	db #47,#fe,#61,#e1,#fe,#6a,#fe,#66
	db #0c,#df,#fe,#6f,#fe,#6b,#17,#f7
	db #74,#fd,#65,#fe,#72,#fe,#63,#fd
	db #64,#d4,#01,#60,#e7,#5f,#13,#fc
	db #a0,#59,#fe,#a5,#4b,#4b,#7f,#70
	db #fe,#aa,#fe,#a6,#fd,#9b,#fe,#ab
	db #fb,#a0,#f8,#a0,#fe,#b2,#76,#43
	db #fe,#c3,#fe,#bf,#88,#a0,#1c,#fc
	db #40,#fb,#27,#a9,#df,#fe,#4a,#fe
	db #46,#c9,#fe,#4f,#fe,#4b,#fb,#40
	db #f8,#40,#fe,#52,#76,#64,#fe,#63
	db #fe,#5f,#88,#40,#12,#fc,#e0,#fd
	db #d6,#6a,#5f,#6a,#fb,#c2,#d5,#fe
	db #ef,#fe,#eb,#fb,#e0,#f8,#e0,#fe
	db #f2,#b5,#fe,#e8,#6a,#d6,#de,#b0
	db #90,#19,#fc,#80,#77,#fe,#85,#b6
	db #fe,#7c,#8e,#fe,#8a,#fe,#86,#b3
	db #fe,#8f,#fe,#8b,#10,#ef,#f7,#94
	db #fd,#85,#fe,#92,#59,#fe,#a3,#fe
	db #9f,#01,#80,#e7,#7f,#63,#13,#fc
	db #c0,#fd,#bb,#4b,#4b,#70,#fe,#ca
	db #fe,#c6,#7d,#86,#fe,#cf,#fe,#cb
	db #fb,#c0,#f8,#c0,#fe,#d2,#43,#fe
	db #e3,#ea,#fe,#df,#01,#c0,#e7,#bf
	db #1f,#fc,#00,#96,#fe,#05,#7e,#37
	db #7e,#bd,#fe,#0a,#fe,#06,#e1,#fe
	db #0f,#fe,#0b,#fb,#00,#ff,#f8,#00
	db #fe,#12,#fd,#e2,#fe,#1f,#88,#00
	db #b0,#b0,#b0,#c8,#b0,#50,#e8,#b0
	db #68,#b0,#f0,#b0,#08,#28,#61,#80
	db #17,#0b,#17,#7d,#24,#dc,#20,#fd
	db #7b,#fc,#7c,#fb,#5d,#fd,#53,#64
	db #fc,#57,#fd,#fb,#4d,#fd,#62,#fe
	db #63,#fd,#67,#fe,#68,#f1,#4d,#54
	db #fc,#7a,#d7,#fb,#61,#fb,#75,#7e
	db #fc,#89,#96,#fc,#8e,#fb,#84,#d8
	db #70,#fd,#d8,#48,#01,#48,#01,#47
	db #01,#46,#01,#45,#c4,#44,#3f,#fe
	db #20,#b6,#fc,#03,#4f,#fe,#27,#fd
	db #13,#6a,#fd,#2d,#fd,#2a,#9f,#fb
	db #fe,#34,#fc,#12,#fd,#24,#fd,#38
	db #fd,#27,#4f,#fd,#2e,#d8,#20,#65
	db #2f,#fe,#70,#fd,#48,#3f,#3b,#fe
	db #77,#5f,#fe,#7a,#db,#fc,#69,#fd
	db #7a,#77,#fe,#84,#fd,#81,#5f,#fd
	db #74,#fd,#88,#b6,#fd,#77,#3b,#fd
	db #7e,#d8,#70,#38,#fe,#c0,#fc,#f9
	db #43,#eb,#fe,#c7,#fd,#09,#fd,#cd
	db #59,#fd,#ca,#86,#fe,#d4,#fc,#08
	db #ed,#fd,#c4,#fd,#d8,#fd,#c7,#43
	db #fd,#ce,#88,#c0,#28,#fc,#60,#0e
	db #b3,#b3,#e1,#e1,#fe,#65,#f7,#65
	db #fb,#60,#8e,#e7,#f2,#79,#fb,#74
	db #fe,#4d,#96,#96,#fd,#4c,#f8,#8e
	db #e7,#74,#d0,#01,#65,#c4,#64,#2c
	db #fc,#f0,#c9,#c9,#fd,#fd,#ee,#fe
	db #f5,#f7,#f5,#fb,#f0,#9f,#f2,#09
	db #fb,#04,#fe,#d5,#a9,#7f,#a9,#fe
	db #1d,#f7,#1d,#ec,#04,#01,#a0,#01
	db #9f,#ce,#9e,#11,#20,#00,#bf,#f2
	db #00,#01,#fe,#0f,#fb,#0d,#f9,#16
	db #f1,#00,#7e,#05,#60,#ae,#fb,#d8
	db #93,#88,#4f,#01,#ca,#01,#ee,#7e
	db #ec,#01,#fe,#6f,#01,#4a,#ff,#c2
	db #49,#01,#8a,#01,#ae,#01,#ad,#01
	db #ac,#01,#ab,#01,#aa,#01,#a9,#ff
	db #01,#a8,#01,#a7,#01,#a6,#01,#a5
	db #01,#a4,#01,#a3,#01,#a2,#01,#a1
	db #f0,#01,#a0,#01,#9f,#01,#9e,#3e
	db #9d,#30,#b6,#ed,#00,#cc,#f7,#14
	db #ec,#00,#a3,#ed,#32,#f6,#28,#5a
	db #da,#f7,#50,#ec,#1e,#18,#ed,#6e
	db #f6,#64,#86,#f7,#8c,#bb,#c3,#f7
	db #96,#60,#00,#52,#52,#de,#a3,#f0
	db #9f,#ec,#b4,#fc,#f6,#40,#e2,#d2
	db #ec,#40,#ec,#04,#ec,#90,#ec,#2c
	db #fd,#fd,#0f,#66,#fa,#cc,#23,#f2
	db #e5,#f6,#ae,#f6,#ea,#f6,#e0,#77
	db #fa,#ed,#12,#ec,#fe,#ec,#39,#92
	db #f7,#4e,#ec,#30,#f6,#7c,#60,#cc
	db #f7,#76,#60,#e0,#e1,#e1,#3f,#c3
	db #7e,#db,#f6,#16,#fb,#2e,#de,#f7
	db #34,#ec,#16,#c3,#ed,#52,#e2,#16
	db #bb,#f6,#83,#66,#f7,#8e,#ec,#70
	db #f6,#02,#bb,#f7,#b6,#60,#20,#03
	db #52,#52,#de,#a3,#bb,#30,#f2,#65
	db #f6,#42,#dd,#f6,#6a,#f6,#60,#a3
	db #ed,#92,#ec,#7e,#ec,#b9,#18,#f7
	db #ce,#b7,#ec,#b0,#86,#f7,#ec,#a6
	db #56,#5a,#fc,#50,#f6,#ce,#f1,#5e
	db #f5,#fb,#50,#fb,#19,#f6,#6e,#f6
	db #64,#de,#fc,#8c,#c3,#fc,#91,#80
	db #e2,#ce,#ef,#f4,#f9,#fe,#03,#08
	db #0d,#1e,#12,#17,#1c,#e2,#1e,#e2
	db #b4,#ec,#aa,#d8,#96,#bb,#81,#f7
	db #36,#fd,#fd,#66,#fa,#cc,#23,#f2
	db #45,#00,#b3,#b8,#bd,#c2,#c7,#cc
	db #d1,#d6,#37,#db,#e0,#f6,#4a,#f6
	db #40,#fa,#f7,#72,#e2,#54,#ec,#4a
	db #6c,#92,#f7,#ae,#e2,#90,#cc,#f7
	db #d6,#60,#40,#e1,#e1,#18,#3f,#c3
	db #7e,#f6,#76,#fb,#8e,#9f,#a4,#a9
	db #6e,#ae,#fa,#6c,#ec,#76,#c3,#f7
	db #b2,#e2,#94,#ec,#8a,#66,#d8,#f7
	db #ee,#e2,#d0,#bb,#f7,#16,#60,#80
	db #52,#52,#de,#10,#a3,#bb,#30,#f2
	db #c5,#ef,#f4,#f9,#fe,#03,#03,#08
	db #0d,#12,#17,#1c,#f6,#ca,#f6,#c0
	db #77,#a3,#f7,#f2,#e2,#d4,#ec,#ca
	db #18,#f7,#2e,#e2,#10,#a6,#b6,#7b
	db #5a,#fc,#b0,#f6,#2e,#f1,#be,#fb
	db #b0,#cc,#fc,#d3,#f6,#ce,#af,#f6
	db #c4,#de,#fc,#ec,#c3,#fc,#f1,#ec
	db #2e,#fb,#f1,#e7,#0e,#ad,#ec,#00
	db #92,#f7,#3c,#7b,#f7,#46,#ce,#00
	db #2d,#f7,#82,#ff,#fe,#78,#fd,#8d
	db #fb,#87,#fb,#4b,#f1,#73,#f6,#a9
	db #fb,#dd,#fb,#b8,#dd,#f6,#aa,#f6
	db #a0,#a3,#ed,#d2,#ec,#be,#ec,#f9
	db #18,#f7,#0e,#ae,#ec,#f0,#86,#f7
	db #2c,#bb,#f7,#36,#ce,#50,#f6,#5e
	db #92,#f7,#f7,#7c,#fb,#96,#fb,#8a
	db #ce,#40,#2d,#f7,#c2,#fe,#b8,#fd
	db #cd,#f7,#fb,#c7,#fb,#8b,#f1,#b3
	db #f6,#e9,#cc,#f7,#f4,#f6,#ea,#f6
	db #e0,#76,#a3,#ed,#12,#ec,#fe,#ec
	db #39,#18,#f7,#4e,#ec,#30,#86,#ab
	db #f7,#6c,#bb,#f7,#76,#0c,#f7,#80
	db #1c,#f7,#8a,#f6,#c2,#77,#3f,#f7
	db #9e,#fb,#cc,#fb,#ac,#66,#f7,#b2
	db #fb,#d6,#fb,#c0,#5d,#92,#f7,#c6
	db #a9,#f7,#d0,#fb,#db,#fb,#de,#de
	db #f7,#e4,#6a,#fa,#f7,#ee,#f6,#4e
	db #38,#f7,#02,#5a,#f7,#0c,#7e,#fb
	db #f7,#16,#ec,#3a,#f6,#6c,#f6,#3d
	db #f6,#2a,#70,#ed,#52,#ec,#20,#bf
	db #f6,#79,#96,#ed,#84,#f6,#7a,#f6
	db #16,#e2,#16,#01,#2a,#29,#29,#40
	db #18,#d8,#a0,#fa,#de,#c3,#a9,#92
	db #7b,#4c,#66,#e9,#cf,#7b,#92,#f8
	db #e8,#fe,#ce,#52,#3f,#4a,#2d,#f1
	db #f5,#1c,#0c,#ee,#06,#fd,#f7,#19
	db #ef,#52,#e1,#f8,#24,#ef,#f5,#1a
	db #d5,#c9,#fa,#3a,#d5,#fc,#f7,#24
	db #ed,#4a,#f4,#0e,#f6,#23,#ed,#73
	db #fe,#39,#bd,#b3,#a7,#e6,#8a,#a9
	db #ed,#a5,#b3,#bd,#f9,#3a,#e2,#c1
	db #e4,#6b,#c9,#e9,#52,#ec,#12,#ef
	db #d5,#f8,#89,#9f,#96,#da,#32,#f8
	db #f5,#af,#f7,#63,#ec,#cc,#e5,#8a
	db #f3,#9b,#9f,#8e,#86,#ee,#db,#ab
	db #f6,#4f,#eb,#c7,#7e,#30,#f0,#f0
	db #c1,#71,#d0,#0c,#bb,#fc,#60,#18
	db #fc,#65,#e2,#60,#fb,#87,#30,#fc
	db #8d,#e2,#88,#fd,#01,#60,#01,#bf
	db #01,#be,#8d,#5d,#60,#a8,#ec,#bf
	db #cc,#f7,#d4,#b8,#ec,#c0,#a3,#ed
	db #f2,#e7,#bb,#c0,#cf,#04,#bd,#ed
	db #00,#02,#f7,#14,#e2,#00,#ec,#14
	db #c4,#14,#03,#ed,#8c,#af,#60,#00
	db #01,#fe,#40,#02,#f0,#9f,#ec,#18
	db #f6,#40,#e2,#0e,#f3,#ec,#40,#ec
	db #4a,#ec,#90,#ec,#2c,#00,#00,#fc
	db #b9,#f2,#e5,#ff,#f6,#ae,#ec,#d6
	db #fd,#b8,#ef,#14,#e2,#d6,#f6,#43
	db #f6,#1c,#e2,#e0,#ff,#f6,#75,#5b
	db #e0,#f1,#24,#f6,#ee,#ec,#16,#ec
	db #b2,#e2,#16,#ec,#2a,#f3,#ec,#70
	db #ec,#da,#60,#20,#fc,#03,#03,#04
	db #f2,#65,#f6,#42,#ff,#f6,#6a,#f6
	db #60,#ec,#1a,#ec,#7e,#ec,#b9,#f3
	db #24,#ef,#b3,#9c,#4c,#fb,#ec,#32
	db #d8,#63,#fd,#28,#f9,#8e,#e2,#ce
	db #00,#fd,#b4,#fa,#90,#f7,#e2,#1e
	db #e2,#b4,#ec,#aa,#d8,#96,#03,#f7
	db #36,#fc,#2e,#fe,#1b,#ff,#f2,#45
	db #fc,#2c,#fa,#57,#ec,#36,#f6,#8c
	db #e2,#54,#ec,#4a,#f4,#72,#ff,#e4
	db #92,#f6,#0e,#5b,#40,#f1,#84,#e2
	db #6c,#ec,#12,#d8,#76,#f1,#4e,#f1
	db #e7,#d5,#f1,#26,#65,#85,#fd,#95
	db #02,#03,#04,#f2,#c5,#ff,#f6,#8a
	db #f6,#ca,#f6,#c0,#f2,#a2,#e6,#d8
	db #ec,#ca,#f6,#f2,#e2,#10,#ff,#a6
	db #b6,#f6,#92,#ce,#b9,#fa,#a0,#e8
	db #2a,#f6,#ec,#e9,#13,#81,#03,#ff
	db #f6,#a9,#f6,#f6,#f6,#aa,#f6,#a0
	db #ec,#d8,#ec,#be,#ec,#f9,#f6,#dc
	db #bf,#ec,#f0,#03,#ed,#2c,#a6,#50
	db #b0,#72,#ec,#04,#f6,#ea,#f6,#e0
	db #fb,#f6,#f4,#e2,#f4,#ec,#39,#f6
	db #1c,#ec,#30,#03,#ed,#6c,#df,#c2
	db #f7,#a9,#a0,#ec,#12,#e2,#12,#f6
	db #29,#00,#ed,#34,#d8,#2a,#01,#20
	db #d7,#01,#7f,#ce,#1e,#02,#d8,#a0
	db #01,#b1,#c9,#ec,#82,#cf,#2c,#fe
	db #b0,#0e,#a6,#ad,#ef,#08,#f2,#18
	db #61,#69,#01,#27,#65,#c4,#01,#bb
	db #fc,#60,#02,#fc,#65,#e2,#60,#fb
	db #87,#04,#fc,#8d,#e2,#88,#ff,#01
	db #60,#01,#bf,#01,#be,#8d,#5d,#60
	db #a8,#ec,#bf,#f1,#6b,#e7,#c5,#c0
	db #e2,#d4,#bb,#ca,#00,#df,#01,#00
	db #ac,#ff,#07,#01,#54,#01,#54,#01
	db #53,#01,#52,#01,#51,#ff,#01,#50
	db #01,#4f,#01,#4e,#01,#4d,#01,#4c
	db #01,#4b,#01,#4a,#01,#49,#ff,#01
	db #48,#01,#47,#01,#46,#01,#45,#01
	db #44,#01,#43,#01,#42,#01,#41,#e0
	db #01,#40,#01,#3f,#df,#3d,#38,#df
	db #01,#00,#ac,#ff,#2a,#f7,#54,#01
	db #36,#01,#6d,#01,#6c,#52,#33,#7b
	db #39,#f6,#05,#ed,#ec,#fb,#0e,#bf
	db #04,#2b,#e8,#4b,#fa,#77,#ff,#fb
	db #69,#f2,#69,#fa,#63,#f1,#fb,#ec
	db #3c,#93,#a0,#fb,#95,#e7,#12,#7f
	db #38,#ed,#04,#fa,#53,#e8,#45,#b0
	db #35,#e2,#ad,#d8,#2b,#f6,#f3,#ef
	db #f6,#0c,#e2,#8f,#74,#fd,#39,#7f
	db #ea,#ce,#33,#e2,#15,#ce,#0b,#f7
	db #f5,#c4,#b1,#48,#e2,#e7,#ec,#b5
	db #39,#f6,#65,#a7,#4c,#fb,#05,#f7
	db #fb,#be,#fb,#4b,#f5,#cd,#f7,#bf
	db #2b,#f2,#d8,#fa,#eb,#de,#b5,#ff
	db #f6,#ff,#fa,#e6,#f6,#d3,#ed,#19
	db #f5,#a5,#d9,#bf,#f5,#22,#e8,#a1
	db #ff,#f5,#a8,#ca,#c4,#ba,#9a,#f6
	db #08,#f5,#d6,#ed,#7d,#f1,#08,#f6
	db #3f,#ff,#fa,#3a,#ed,#d7,#f1,#62
	db #ec,#49,#fb,#f4,#f5,#9e,#ed,#95
	db #fb,#80,#fd,#f6,#f4,#bf,#ef,#f6
	db #80,#ba,#da,#f6,#48,#f1,#66,#2f
	db #61,#80,#6e,#2b,#f7,#25,#fb,#1f
	db #2e,#f7,#2f,#fa,#3d,#f7,#5d,#3d
	db #bf,#fc,#4d,#3c,#f7,#4d,#f6,#5b
	db #f6,#4c,#fb,#6a,#f6,#74,#dd,#51
	db #df,#01,#56,#05,#55,#39,#fa,#a0
	db #ed,#50,#f3,#b5,#fe,#86,#da,#ab
	db #ff,#ec,#c7,#e2,#ef,#d8,#17,#ce
	db #d1,#ba,#db,#e2,#bc,#ba,#b7,#d8
	db #5d,#fe,#e2,#1b,#92,#a3,#d8,#57
	db #d8,#bb,#fc,#21,#fa,#26,#74,#29
	db #3d,#5e,#31,#da,#c0,#39,#fc,#e4
	db #d9,#e7,#dc,#c4,#d8,#e7,#3d,#7a
	db #2a,#fc,#60,#fd,#b6,#f4,#67,#fb
	db #60,#3a,#f3,#79,#3e,#fa,#01,#60
	db #01,#97,#01,#96,#01,#95,#c4,#5c
	db #23,#fc,#c0,#31,#d9,#f2,#c5,#fb
	db #c0,#33,#f2,#d9,#fd,#d6,#2b,#2b
	db #fd,#d1,#39,#39,#39,#f6,#ed,#fb
	db #e8,#fd,#e5,#3b,#3b,#f6,#01,#e0
	db #da,#c0,#fb,#0e,#dc,#eb,#05,#60
	db #08,#01,#01,#de,#00,#09,#09,#08
	db #07,#06,#07,#05,#04,#03,#02,#01
	db #ea,#23,#01,#41,#01,#42,#c0,#01
	db #41,#3f,#3f,#08,#07,#06,#05,#04
	db #03,#bf,#fc,#06,#08,#e3,#0b,#f8
	db #03,#b8,#09,#d8,#78,#a0,#a1,#01
	db #a1,#e0,#01,#00,#01,#ff,#9d,#fd
	db #06,#05,#04,#03,#02,#bf,#fb,#65
	db #08,#e3,#6b,#b0,#61,#d8,#d8,#a0
	db #01,#01,#01,#01,#60,#80,#de,#5e
	db #08,#07,#06,#05,#04,#03,#02,#1f
	db #01,#00,#00,#6a,#81,#f6,#7f,#fb
	db #25,#f6,#2b,#fd,#1e,#fe,#fe,#3c
	db #f1,#2b,#d8,#30,#ce,#44,#01,#58
	db #01,#b7,#fe,#88,#05,#f5,#01,#a8
	db #01,#a8,#01,#a7,#e5,#a5,#0a,#fe
	db #c1,#09,#fd,#c4,#56,#08,#fd,#c8
	db #07,#fd,#cc,#06,#fd,#d0,#fc,#bd
	db #04,#b1,#fd,#d8,#03,#f4,#dc,#fe
	db #d7,#03,#02,#01,#fb,#e9,#ff,#fe
	db #d3,#fd,#ef,#fb,#f3,#fe,#cf,#fd
	db #f9,#fb,#fd,#fe,#cb,#fd,#03,#fa
	db #fb,#07,#b0,#c1,#fc,#1c,#01,#61
	db #c3,#63,#0a,#fc,#a1,#09,#b5,#fb
	db #a6,#08,#fb,#ac,#fa,#9b,#06,#fb
	db #b8,#05,#fb,#be,#7f,#04,#fc,#c4
	db #e2,#a1,#f6,#c9,#ec,#c9,#e2,#f1
	db #d8,#19,#ce,#d3,#ef,#ba,#dd,#ec
	db #73,#fb,#d6,#04,#fc,#dc,#ba,#b9
	db #d8,#5f,#ec,#ff,#ff,#ce,#87,#ba
	db #cd,#d8,#59,#dd,#bd,#f6,#f0,#f6
	db #f6,#f6,#fc,#f6,#02,#ef,#f6,#08
	db #f7,#0e,#fb,#60,#03,#a6,#66,#fd
	db #29,#fc,#3c,#fc,#50,#fc,#e3,#64
	db #f6,#48,#f6,#3e,#f6,#34,#f6,#2a
	db #b2,#c1,#06,#60,#08,#01,#01,#ac
	db #00,#09,#08,#07,#06,#05,#1f,#04
	db #03,#02,#fe,#5c,#01,#37,#01,#6e
	db #01,#6d,#01,#6c,#df,#ba,#33,#fb
	db #8f,#07,#f2,#a6,#01,#8d,#d2,#8c
	db #fc,#e1,#f6,#d7,#ff,#fb,#ef,#c3
	db #cd,#60,#92,#10,#aa,#fc,#b0,#fb
	db #99,#f6,#ca,#01,#ad,#e3,#01,#e4
	db #01,#e3,#4c,#aa,#02,#01,#00,#fe
	db #88,#6a,#81,#5d,#0a,#fe,#21,#09
	db #fd,#24,#fb,#7d,#fd,#2c,#06,#fd
	db #30,#57,#05,#fd,#34,#04,#fd,#38
	db #03,#fd,#3c,#fd,#74,#fa,#42,#ff
	db #f6,#77,#01,#49,#01,#52,#01,#51
	db #01,#50,#01,#4f,#01,#4e,#ec,#4c
	db #06,#07,#06,#05,#04,#03,#ec,#52
	db #fb,#75,#02,#3f,#01,#00,#f9,#81
	db #01,#61,#01,#98,#01,#97,#01,#96
	db #26,#5d,#0a,#aa,#fd,#00,#09,#fd
	db #04,#08,#fd,#08,#07,#fd,#0c,#06
	db #bf,#fd,#10,#05,#f6,#01,#e2,#15
	db #ce,#0b,#92,#01,#9c,#3d,#fd,#3c
	db #83,#fe,#1d,#05,#04,#03,#02,#01
	db #ce,#23,#ec,#19,#ff,#c4,#41,#01
	db #2d,#01,#2c,#01,#2b,#79,#2a,#fb
	db #47,#f6,#51,#ec,#10,#f7,#ec,#6f
	db #e7,#4c,#ec,#29,#f7,#a2,#00,#01
	db #97,#01,#ce,#01,#cd,#ff,#0b,#94
	db #fb,#a7,#f6,#b1,#f6,#ac,#ec,#ac
	db #ec,#b6,#f1,#de,#ec,#89,#fd,#ec
	db #0b,#97,#01,#ee,#ed,#c7,#54,#fe
	db #cb,#fd,#de,#06,#fd,#e2,#7e,#05
	db #65,#f7,#b0,#5a,#f1,#cd,#c4,#91
	db #fe,#0b,#fd,#1e,#06,#bf,#fd,#22
	db #05,#a3,#5f,#fb,#1c,#fe,#24,#6a
	db #81,#fb,#78,#f8,#19,#df,#fe,#5d
	db #fe,#2f,#04,#fe,#32,#fd,#2c,#ef
	db #37,#f6,#21,#e2,#35,#ff,#01,#21
	db #01,#80,#cc,#1f,#fb,#97,#fb,#9a
	db #fb,#57,#f9,#81,#fd,#5f,#df,#fb
	db #60,#fe,#c0,#03,#fb,#c3,#e2,#a1
	db #f6,#c9,#ec,#c9,#e2,#f1,#fb,#d8
	db #19,#ce,#d3,#ba,#dd,#ec,#73,#fc
	db #d6,#03,#fb,#db,#ba,#b9,#ff,#d8
	db #5f,#ec,#ff,#ce,#87,#ba,#cd,#d8
	db #59,#de,#bd,#f8,#18,#f8,#f5,#ff
	db #f8,#fa,#f8,#ff,#f8,#04,#8c,#4c
	db #5b,#21,#f4,#ca,#f4,#da,#fa,#5b
	db #7f,#04,#fc,#84,#01,#61,#01,#98
	db #01,#97,#01,#96,#c1,#5d,#fe,#a2
	db #f0,#b3,#c1,#fa,#a1,#fe,#ae,#bc
	db #11,#00,#ff,#01,#00,#01,#00,#01
	db #ff,#01,#fe,#01,#fd,#01,#fc,#01
	db #fb,#01,#fa,#ff,#01,#f9,#01,#f8
	db #01,#f7,#01,#f6,#01,#f5,#01,#f4
	db #01,#f3,#01,#f2,#ff,#01,#f1,#01
	db #f0,#01,#ef,#01,#ee,#01,#ed,#01
	db #ec,#01,#eb,#01,#ea,#80,#8a,#e9
	db #00,#ff,#01,#00,#01,#00,#01,#ff
	db #01,#fe,#01,#fd,#01,#fc,#01,#fb
	db #01,#fa,#ff,#01,#f9,#01,#f8,#01
	db #f7,#01,#f6,#01,#f5,#01,#f4,#01
	db #f3,#01,#f2,#ff,#01,#f1,#01,#f0
	db #01,#ef,#01,#ee,#01,#ed,#01,#ec
	db #01,#eb,#01,#ea,#80,#8a,#e9,#ff
	db #ff,#01,#00,#01,#00,#01,#ff,#01
	db #fe,#01,#fd,#01,#fc,#01,#fb,#01
	db #fa,#ff,#01,#f9,#01,#f8,#01,#f7
	db #01,#f6,#01,#f5,#01,#f4,#01,#f3
	db #01,#f2,#ff,#01,#f1,#01,#f0,#01
	db #ef,#01,#ee,#01,#ed,#01,#ec,#01
	db #eb,#01,#ea,#80,#8a,#e8,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0000		; added by Megachur
	db #00
;
.music_info
	db "Sly Spy Musics - 02 (2013)(Public Domain)(Geoff Follin)",0
	db "AYC",0

	read "music_end.asm"
