; Music of Plissken 2 (2002)(Public Domain)()(StArkos)
; Ripped by Megachur the 01/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PLISSKE2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
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
	ld hl,l4246	; reset music
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
	db #52,#22,#02,#00,#3d,#0e,#00
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
.l4800 equ $ + 4
	db #00,#00,#00,#00,#8d,#10,#01,#2e
	db #00,#01,#d7,#01,#01,#1e,#02,#01
	db #fc,#03,#01,#c3,#04,#01,#53,#08
	db #01,#9c,#09,#01,#77,#0a,#01,#77
	db #0b,#01,#62,#0c,#01,#db,#0d,#01
	db #d7,#0e,#01,#1c,#10,#01,#3f,#10
	db #ff,#ff,#ff,#0e,#ff,#ff,#00,#c4
	db #01,#00,#99,#ff,#be,#a0,#7f,#df
	db #67,#b4,#8e,#7d,#78,#a3,#8b,#dc
	db #67,#c4,#0c,#a0,#8b,#fe,#a9,#5f
	db #bb,#ab,#bd,#fe,#49,#6b,#f7,#f3
	db #b8,#ab,#e8,#44,#f4,#9f,#be,#fe
	db #fc,#fe,#f1,#6b,#f4,#f3,#fa,#86
	db #ee,#6b,#d6,#9e,#f4,#5f,#ac,#d4
	db #a0,#fe,#fe,#5d,#ba,#2b,#f4,#81
	db #f5,#68,#fe,#29,#ae,#8a,#f4,#1f
	db #be,#ff,#fe,#7c,#f1,#eb,#f3,#73
	db #fb,#07,#f2,#f1,#ee,#eb,#e5,#2c
	db #f4,#df,#bf,#ac,#53,#a0,#fe,#dd
	db #ba,#aa,#f4,#01,#f5,#e7,#fe,#a8
	db #ae,#09,#bf,#f4,#9e,#be,#fe,#fb
	db #f1,#6a,#f3,#f2,#fb,#86,#ee,#6a
	db #d6,#9d,#de,#f4,#5e,#ac,#d3,#a0
	db #fe,#5c,#ba,#2a,#f4,#80,#f5,#67
	db #1d,#18,#8e,#1d,#47,#f1,#8a,#e3
	db #8b,#f0,#78,#f0,#61,#3c,#fd,#ba
	db #ef,#bb,#d6,#6b,#d6,#35,#fd,#d2
	db #c3,#ef,#d3,#d0,#8a,#40,#a0,#40
	db #50,#fd,#1a,#ef,#1b,#0e,#2e,#97
	db #2e,#4b,#fd,#32,#ef,#33,#70,#8a
	db #80,#1c,#40,#80,#a0,#fd,#da,#fb
	db #db,#f4,#26,#5c,#2e,#38,#5c,#97
	db #fd,#f2,#fb,#f3,#f4,#3e,#8e,#78
	db #5f,#b1,#af,#0a,#b4,#fe,#5b,#f7
	db #5e,#be,#a0,#7f,#f1,#6a,#be,#fe
	db #7a,#6b,#f1,#7c,#ee,#6a,#d6,#9d
	db #f4,#5e,#ac,#d3,#a0,#fe,#fe,#5c
	db #ba,#2a,#f4,#80,#f5,#67,#fe,#28
	db #ae,#89,#f4,#1e,#be,#ff,#fe,#7b
	db #f1,#ea,#f3,#72,#fb,#06,#ee,#ea
	db #d6,#1d,#f4,#de,#ac,#53,#78,#a0
	db #fe,#dc,#ba,#aa,#f4,#00,#f5,#e7
	db #1d,#8e,#1d,#61,#47,#f1,#0a,#e3
	db #0b,#f0,#78,#f0,#3c,#fd,#3a,#87
	db #ef,#3b,#d6,#6b,#d6,#35,#fd,#52
	db #ef,#53,#d0,#0a,#0c,#40,#a0,#40
	db #50,#fd,#9a,#ef,#9b,#2e,#97,#38
	db #2e,#4b,#fd,#b2,#ef,#b3,#70,#0a
	db #80,#40,#80,#70,#a0,#fd,#5a,#fb
	db #5b,#f4,#a6,#5c,#2e,#5c,#97,#e2
	db #fd,#72,#fb,#73,#f4,#be,#7f,#6b
	db #55,#af,#8a,#a0,#c6,#fe,#db,#f7
	db #de,#a9,#8e,#71,#f1,#ea,#fe,#fa
	db #5f,#fb,#f1,#fc,#ee,#ea,#d6,#1d
	db #f4,#de,#ac,#53,#8e,#fe,#dc,#ba
	db #aa,#fb,#f4,#00,#f5,#e7,#fe,#a8
	db #ae,#09,#f4,#9e,#a9,#fe,#fb,#f1
	db #6a,#fd,#f3,#f2,#fb,#86,#ee,#6a
	db #d6,#9d,#f4,#5e,#ac,#d3,#8e,#fe
	db #5c,#f0,#ba,#2a,#f4,#80,#f5,#67
	db #fd,#89,#00,#ff,#01,#00,#01,#00
	db #01,#ff,#01,#fe,#01,#fd,#01,#fc
	db #01,#fb,#70,#f9,#78,#01,#d1,#89
	db #a0,#5a,#a0,#18,#a0,#ba,#02,#01
	db #02,#fe,#fc,#d9,#fb,#db,#dc,#ce
	db #01,#09,#01,#09,#01,#08,#fd,#06
	db #01,#f1,#d1,#09,#a0,#da,#a0,#98
	db #a0,#3a,#02,#01,#02,#fc,#59,#fc
	db #fb,#5b,#dc,#4e,#01,#89,#01,#89
	db #01,#88,#fa,#87,#00,#bb,#36,#00
	db #47,#01,#cb,#01,#cb,#bf,#c9,#d6
	db #01,#0b,#af,#0a,#05,#3a,#9e,#02
	db #66,#ca,#ec,#5b,#6c,#fb,#58,#c7
	db #ee,#75,#fc,#6f,#47,#3c,#2f,#f1
	db #91,#fa,#85,#ec,#91,#8f,#cc,#8d
	db #5f,#50,#3f,#f1,#f1,#fa,#d3,#ee
	db #f1,#ef,#ec,#ef,#f4,#6d,#f4,#fd
	db #f4,#85,#5a,#fe,#e8,#f1,#50,#fa
	db #44,#ec,#50,#bf,#cc,#4c,#50,#fe
	db #e9,#fd,#b0,#f4,#44,#ee,#3e,#f8
	db #b0,#f4,#be,#f7,#fa,#dc,#ee,#be
	db #f0,#c4,#fe,#a8,#2f,#f1,#10,#fa
	db #04,#ec,#10,#8f,#cc,#0c,#5f,#50
	db #3f,#f1,#70,#fa,#52,#ec,#70,#f0
	db #6c,#ef,#f4,#ec,#f4,#7c,#f4,#04
	db #5a,#fe,#67,#f1,#d0,#fa,#c4,#ec
	db #d0,#bf,#cc,#cc,#50,#fe,#68,#fd
	db #30,#f4,#c4,#ee,#be,#f8,#30,#f4
	db #3e,#ff,#fa,#5c,#ee,#3e,#f0,#44
	db #fc,#87,#f1,#93,#5e,#8b,#8e,#85
	db #f4,#45,#fc,#f9,#b7,#ef,#46,#f3
	db #bd,#fa,#dc,#ee,#be,#f0,#c4,#47
	db #3c,#78,#2f,#f1,#10,#fa,#04,#ec
	db #10,#cc,#0c,#5f,#50,#3f,#fe,#f1
	db #70,#fa,#52,#ec,#70,#f0,#6c,#f4
	db #ec,#f4,#7c,#f4,#04,#5a,#fb,#fe
	db #67,#f1,#d0,#fa,#c4,#ec,#d0,#cc
	db #cc,#50,#fe,#68,#fd,#30,#ff,#f4
	db #c4,#ee,#be,#f8,#30,#f4,#3e,#fa
	db #5c,#ee,#3e,#f0,#44,#fe,#28,#78
	db #2f,#f1,#90,#fa,#84,#ec,#90,#cc
	db #8c,#5f,#50,#3f,#fe,#f1,#f0,#fa
	db #d2,#ec,#f0,#f0,#ec,#f4,#6c,#f4
	db #fc,#f4,#84,#5a,#fb,#fe,#e7,#f1
	db #50,#fa,#44,#ec,#50,#cc,#4c,#50
	db #fe,#e8,#fd,#b0,#ff,#f4,#44,#ee
	db #3e,#f8,#b0,#f4,#be,#fa,#dc,#ee
	db #be,#f0,#c4,#fc,#07,#ff,#f1,#13
	db #5e,#0b,#8e,#05,#f4,#c5,#f9,#37
	db #ef,#c6,#f3,#3d,#fa,#5c,#c0,#ee
	db #3e,#f6,#7a,#be,#22,#86,#ea,#4e
	db #b2,#1c,#3f,#35,#2a,#f7,#90,#fa
	db #8a,#fe,#9c,#54,#be,#f8,#fe,#a5
	db #f4,#90,#f4,#96,#ec,#a8,#e4,#a4
	db #55,#47,#38,#ff,#f7,#f0,#f4,#9c
	db #f8,#f6,#fc,#04,#f4,#13,#f2,#f6
	db #e3,#fe,#fb,#2d,#7d,#50,#fe,#e7
	db #f1,#50,#fa,#3e,#ec,#50,#cc,#4c
	db #47,#fe,#e8,#ff,#f7,#b0,#f4,#2c
	db #f8,#44,#fc,#c4,#f4,#b0,#f2,#b6
	db #f5,#be,#ed,#f3,#df,#fc,#ee,#fe
	db #a8,#2a,#f7,#10,#f4,#ec,#f4,#10
	db #f4,#16,#ec,#28,#8f,#e4,#24,#55
	db #47,#38,#f7,#70,#f4,#1c,#f8,#76
	db #f5,#c4,#f7,#fb,#9a,#f2,#76,#e3
	db #7e,#fb,#ad,#50,#fe,#67,#f1,#d0
	db #fa,#be,#df,#ec,#d0,#cc,#cc,#47
	db #fe,#68,#f7,#30,#f4,#ac,#f8,#c4
	db #fc,#44,#f8,#f4,#30,#f2,#36,#f5
	db #3e,#ee,#73,#fe,#8a,#00,#f8,#01
	db #00,#01,#00,#01,#ff,#01,#fe,#a1
	db #fc,#01,#01,#02,#ff,#fe,#5e,#eb
	db #5b,#fa,#58,#ee,#76,#fc,#70,#ec
	db #4a,#e4,#46,#a7,#92,#ff,#ee,#ec
	db #f4,#6e,#f4,#fe,#8e,#86,#f4,#45
	db #e8,#3f,#f2,#bd,#fa,#dd,#ff,#ee
	db #bf,#8a,#41,#ca,#47,#f4,#ed,#f4
	db #7d,#8e,#05,#f4,#c5,#e8,#bf,#ff
	db #f2,#3d,#fa,#5d,#ee,#3f,#dc,#c1
	db #60,#8d,#8e,#85,#f4,#45,#f8,#b7
	db #ff,#ee,#a7,#f4,#bf,#fa,#dd,#ee
	db #bf,#dc,#41,#ed,#10,#8b,#08,#f4
	db #ed,#ff,#f4,#7d,#8e,#05,#f4,#c5
	db #e8,#bf,#f2,#3d,#fa,#5d,#ee,#3f
	db #8a,#c1,#ff,#ca,#c7,#f4,#6d,#f4
	db #fd,#8e,#85,#f4,#45,#e8,#3f,#f2
	db #bd,#fa,#dd,#ff,#ee,#bf,#dc,#41
	db #60,#0d,#8e,#05,#f4,#c5,#f8,#37
	db #ee,#27,#f4,#3f,#ff,#fa,#5d,#ee
	db #3f,#f4,#7b,#fd,#6e,#f1,#1e,#fc
	db #8d,#fa,#85,#ec,#19,#ff,#f0,#8d
	db #f4,#31,#dc,#a9,#ee,#9d,#e2,#d3
	db #e2,#fd,#be,#bb,#94,#cd,#ff,#ec
	db #f3,#de,#ad,#76,#6f,#ee,#89,#be
	db #3b,#94,#4d,#ee,#73,#fe,#87,#00
	db #aa,#f6,#00,#8e,#fb,#0b,#a0,#f5
	db #11,#47,#fb,#1d,#50,#aa,#f5,#23
	db #23,#fb,#2f,#28,#f5,#35,#12,#fb
	db #41,#14,#be,#f5,#47,#09,#f5,#53
	db #f4,#47,#ee,#2f,#ee,#1d,#ee,#0b
	db #1d,#bd,#fb,#a1,#40,#f5,#a7,#fa
	db #8f,#fa,#b8,#ca,#23,#0a,#f5,#f5
	db #ff,#ee,#dd,#fa,#cb,#fa,#18,#ca
	db #83,#f4,#31,#ee,#7d,#f4,#13,#f4
	db #07,#ff,#d6,#4f,#dc,#d1,#fa,#d8
	db #ee,#07,#f4,#b5,#ee,#9d,#d6,#2b
	db #fa,#38,#bf,#ca,#a3,#0a,#f5,#75
	db #ee,#5d,#fa,#4b,#fa,#98,#ca,#03
	db #f4,#b1,#ff,#ee,#fd,#f4,#93,#f4
	db #87,#d6,#cf,#dc,#51,#fa,#58,#ee
	db #87,#f4,#35,#f7,#ee,#1d,#d6,#ab
	db #fa,#b8,#ca,#23,#0a,#f5,#f5,#ee
	db #dd,#fa,#cb,#fd,#fa,#18,#ca,#83
	db #f4,#31,#ee,#7d,#f4,#13,#f4,#07
	db #75,#f5,#8b,#57,#3a,#fb,#97,#01
	db #f5,#9d,#80,#fb,#a9,#f4,#8b,#e8
	db #61,#eb,#f6,#d3,#fe,#dc,#f4,#01
	db #f3,#ef,#eb,#ae,#ef,#fd,#ef,#ec
	db #f5,#f4,#df,#fa,#2b,#ee,#cd,#fa
	db #bb,#9e,#d1,#4a,#2d,#fb,#7a,#55
	db #2f,#f5,#80,#5a,#fb,#8c,#5f,#f5
	db #92,#6b,#fb,#9e,#5e,#e0,#fb,#a4
	db #c0,#e9,#aa,#ee,#a4,#fa,#c2,#f4
	db #c2,#3a,#f6,#ef,#e6,#fa,#44,#fa
	db #32,#fa,#20,#75,#f5,#0a,#fa,#f2
	db #01,#bb,#f5,#1c,#80,#fb,#28,#f4
	db #0a,#fa,#f8,#50,#f5,#40,#fa,#fe
	db #6a,#28,#f5,#52,#fa,#04,#14,#fb
	db #64,#f3,#ef,#6a,#ae,#fd,#ef,#7c
	db #ee,#6a,#f4,#5e,#fa,#ab,#ee,#4c
	db #fa,#3a,#9e,#d1,#ca,#55,#2d,#fb
	db #fa,#2f,#f5,#00,#5a,#fb,#0c,#5f
	db #f5,#12,#57,#6b,#fb,#1e,#e0,#fb
	db #24,#c0,#e9,#2a,#ee,#24,#fa,#42
	db #bd,#f4,#42,#3a,#ef,#66,#fa,#c4
	db #fa,#b2,#fa,#a0,#8e,#fb,#8a,#6e
	db #a0,#f5,#90,#fa,#78,#50,#f5,#a2
	db #ee,#b2,#fa,#84,#14,#be,#f5,#c6
	db #09,#f5,#d2,#f4,#c6,#ee,#ae,#ee
	db #9c,#ee,#8a,#1d,#bd,#fb,#20,#40
	db #f5,#26,#fa,#0e,#fa,#37,#ca,#a2
	db #0a,#f5,#74,#f8,#ee,#5c,#fa,#4a
	db #fa,#97,#ca,#02,#fa,#b6,#ab,#a8
	db #d0,#00,#cd,#9f,#9c,#c4,#c1,#93
	db #90,#b8,#00,#b5,#87,#84,#ac,#a9
	db #7b,#78,#a0,#00,#9d,#6f,#6c,#94
	db #91,#63,#60,#88,#00,#85,#57,#54
	db #7c,#79,#4b,#48,#70,#00,#6d,#3f
	db #3c,#64,#61,#33,#30,#58,#02,#55
	db #27,#24,#4c,#49,#75,#f5,#0a,#3a
	db #ad,#fb,#16,#01,#f5,#1c,#80,#fb
	db #28,#f4,#0a,#47,#fb,#3a,#fa,#f4
	db #9e,#fa,#98,#f6,#52,#fe,#5b,#f4
	db #80,#f3,#ef,#6a,#ae,#fd,#ef,#7c
	db #ee,#6a,#f4,#5e,#fa,#ab,#ee,#4c
	db #fa,#3a,#9e,#d1,#ca,#55,#2d,#fb
	db #fa,#2f,#f5,#00,#5a,#fb,#0c,#5f
	db #f5,#12,#57,#6b,#fb,#1e,#e0,#fb
	db #24,#c0,#e9,#2a,#ee,#24,#fa,#42
	db #bd,#f4,#42,#3a,#ef,#66,#fa,#c4
	db #fa,#b2,#fa,#a0,#75,#f5,#8a,#ac
	db #fa,#72,#01,#f5,#9c,#80,#fb,#a8
	db #fa,#90,#2a,#7f,#99,#f0,#b5,#28
	db #78,#f6,#c7,#f4,#b4,#2f,#8e,#f6
	db #df,#5f,#f3,#ef,#ea,#ae,#ef,#fc
	db #f4,#f0,#fa,#de,#ee,#d2,#e8,#20
	db #4c,#9e,#d1,#4a,#1e,#5a,#f6,#7b
	db #fa,#7a,#20,#5f,#ca,#f6,#8d,#fa
	db #8c,#23,#6b,#fc,#9f,#e0,#fb,#a4
	db #c0,#f5,#e9,#aa,#ee,#a4,#fa,#c2
	db #f4,#c2,#3a,#ef,#e6,#47,#fb,#f8
	db #59,#23,#fb,#fe,#12,#fb,#04,#fb
	db #3f,#8e,#a0,#f5,#10,#b6,#fa,#f8
	db #50,#f5,#22,#fa,#fe,#28,#f5,#34
	db #fa,#04,#14,#be,#f5,#46,#09,#f5
	db #52,#f4,#46,#ee,#2e,#ee,#1c,#ee
	db #0a,#1d,#bd,#fb,#a0,#40,#f5,#a6
	db #fa,#8e,#fa,#b7,#ca,#22,#0a,#f5
	db #f4,#f8,#ee,#dc,#fa,#ca,#fa,#17
	db #ca,#82,#fa,#36,#ab,#a8,#d0,#00
	db #cd,#9f,#9c,#c4,#c1,#93,#90,#b8
	db #00,#b5,#87,#84,#ac,#a9,#7b,#78
	db #a0,#00,#9d,#6f,#6c,#94,#91,#63
	db #60,#88,#00,#85,#57,#54,#7c,#79
	db #4b,#48,#70,#00,#6d,#3f,#3c,#64
	db #61,#33,#30,#58,#02,#55,#27,#24
	db #4c,#49,#f9,#f5,#8a,#fc,#ad,#fb
	db #96,#75,#f5,#9c,#3a,#fb,#a8,#f4
	db #8a,#3f,#fb,#ba,#5b,#47,#f5,#c0
	db #20,#fb,#cc,#f4,#12,#10,#fb,#de
	db #fa,#00,#5f,#4d,#ef,#ea,#f3,#ef
	db #fc,#ee,#ea,#f4,#de,#fa,#2b,#ee
	db #cc,#aa,#fa,#ba,#01,#d1,#4a,#28
	db #fb,#7a,#2a,#f5,#80,#50,#aa,#fb
	db #8c,#55,#f5,#92,#5f,#fb,#9e,#ab
	db #fb,#a4,#57,#f7,#e9,#aa,#ee,#a4
	db #fa,#c2,#f4,#c2,#fc,#ef,#e6,#fa
	db #44,#fa,#32,#b5,#fa,#20,#f9,#f5
	db #0a,#fa,#f2,#75,#f5,#1c,#3a,#fb
	db #28,#db,#f4,#0a,#fa,#f8,#47,#f5
	db #40,#fa,#fe,#23,#f5,#52,#fa,#04
	db #57,#12,#fb,#64,#4d,#ef,#6a,#f3
	db #ef,#7c,#ee,#6a,#f4,#5e,#ea,#fa
	db #ab,#ee,#4c,#fa,#3a,#01,#d1,#ca
	db #28,#fb,#fa,#2a,#aa,#f5,#00,#50
	db #fb,#0c,#55,#f5,#12,#5f,#fb,#1e
	db #ab,#bd,#fb,#24,#57,#e9,#2a,#ee
	db #24,#fa,#42,#f4,#42,#fc,#ef,#66
	db #e8,#fa,#c4,#fa,#b2,#fa,#a0,#8e
	db #fe,#8a,#00,#bf,#60,#00,#01,#ef
	db #a1,#01,#17,#01,#ce,#58,#15,#1c
	db #75,#b2,#a1,#57,#04,#f5,#8b,#02
	db #fb,#97,#05,#f5,#9d,#fa,#97,#f4
	db #8b,#ef,#d0,#5b,#f4,#9d,#fa,#f6
	db #06,#ef,#fd,#ef,#ec,#c4,#c1,#e2
	db #5b,#af,#d6,#20,#01,#fb,#a4,#03
	db #e9,#aa,#ee,#a4,#fa,#c2,#f4,#c2
	db #6f,#02,#ef,#e6,#ee,#92,#04,#f5
	db #0a,#fa,#f2,#f4,#6e,#fa,#16,#fb
	db #f4,#0a,#d6,#7a,#fa,#63,#f0,#6a
	db #fe,#79,#06,#ef,#7c,#ee,#6a,#eb
	db #c4,#40,#e2,#db,#d6,#a0,#01,#fb
	db #24,#03,#e9,#2a,#ee,#24,#df,#fa
	db #42,#f4,#42,#02,#ef,#66,#d6,#fa
	db #82,#a1,#f4,#54,#fa,#2b,#ea,#58
	db #96,#fc,#cc,#d4,#da,#04,#f5,#0a
	db #02,#fb,#16,#05,#fd,#f5,#1c,#fa
	db #16,#f4,#0a,#d0,#8c,#f4,#1c,#fa
	db #75,#06,#ef,#7c,#f5,#ee,#6a,#c4
	db #40,#e2,#db,#d6,#a0,#01,#fb,#24
	db #03,#e9,#2a,#ed,#ee,#24,#fa,#42
	db #f4,#42,#02,#ef,#66,#ee,#12,#04
	db #f5,#8a,#ff,#fa,#72,#f4,#ee,#fa
	db #96,#fa,#90,#d6,#fa,#f4,#dd,#f0
	db #ea,#fe,#f9,#7d,#06,#ef,#fc,#f4
	db #f0,#be,#ba,#e2,#5b,#d6,#20,#01
	db #fb,#a4,#7b,#03,#e9,#aa,#ee,#a4
	db #fa,#c2,#f4,#c2,#02,#ef,#e6,#d0
	db #1a,#fd,#88,#27,#f4,#d4,#fa,#ab
	db #58,#16,#fc,#4c,#d4,#5a,#03,#f5
	db #8a,#ae,#fa,#48,#04,#f5,#9c,#02
	db #fb,#a8,#f4,#8a,#d0,#0c,#05,#ef
	db #cb,#ea,#a6,#c0,#d6,#20,#01,#fb
	db #a4,#f4,#ae,#f4,#b5,#ee,#a4,#fd
	db #fa,#c2,#f4,#c2,#f4,#d4,#fa,#f1
	db #ee,#92,#ee,#c8,#04,#f5,#1c,#7f
	db #02,#fb,#28,#f4,#0a,#d6,#7a,#fa
	db #63,#f0,#6a,#da,#79,#a6,#40,#bf
	db #d6,#a0,#01,#fb,#24,#f4,#2e,#f4
	db #35,#ee,#24,#fa,#42,#f4,#42,#e0
	db #f4,#54,#fa,#71,#eb,#fa,#00,#fa
	db #01,#00,#01,#00,#01,#ff,#01,#fe
	db #a2,#fc,#08,#e9,#5b,#0b,#bf,#fe
	db #73,#09,#fe,#76,#ee,#73,#f4,#67
	db #f4,#4f,#fa,#85,#fa,#a8,#ff,#e8
	db #4f,#a1,#97,#f4,#15,#f4,#03,#88
	db #7f,#f4,#44,#e8,#3e,#ee,#b0,#ff
	db #ee,#bc,#88,#3e,#ca,#46,#f4,#ec
	db #fa,#b7,#88,#fe,#f4,#c4,#e8,#be
	db #ff,#ee,#30,#ee,#3c,#ee,#42,#f4
	db #1e,#f4,#24,#64,#90,#94,#84,#fa
	db #af,#ff,#f4,#44,#fa,#b6,#f4,#b6
	db #e8,#aa,#ee,#bc,#e8,#c2,#ee,#38
	db #fa,#27,#ff,#e8,#9e,#9a,#16,#f4
	db #ec,#fa,#b7,#88,#fe,#f4,#c4,#e8
	db #be,#ee,#30,#ff,#ee,#3c,#88,#be
	db #ca,#c6,#f4,#6c,#fa,#37,#88,#7e
	db #f4,#44,#e8,#3e,#ff,#ee,#b0,#ee
	db #bc,#ee,#c2,#f4,#9e,#f4,#a4,#64
	db #10,#94,#04,#fa,#2f,#ff,#f4,#c4
	db #fa,#36,#f4,#36,#e8,#2a,#ee,#3c
	db #e8,#42,#f4,#24,#fa,#84,#ff,#fa
	db #a7,#e8,#1e,#f4,#ae,#d6,#a2,#ee
	db #9c,#f4,#02,#f4,#19,#ee,#66,#ff
	db #ee,#08,#be,#ba,#b2,#cc,#e8,#9e
	db #fa,#ce,#ee,#f2,#dc,#aa,#94,#6e
	db #ff,#f4,#99,#ee,#e6,#ee,#88,#be
	db #3a,#b2,#4c,#e8,#1e,#fa,#4e,#ee
	db #72,#80,#fd,#57,#00,#ad,#f6,#00
	db #3b,#41,#0b,#39,#bd,#cb,#a8,#af
	db #38,#f9,#67,#6c,#3a,#01,#6f,#64
	db #6e,#2a,#01,#0b,#b0,#0a,#28,#38
	db #df,#fc,#5c,#ee,#5b,#2a,#fd,#71
	db #fd,#76,#ef,#74,#fa,#6d,#fa,#90
	db #7f,#28,#f5,#97,#fa,#85,#ee,#91
	db #a0,#8b,#ee,#ec,#f5,#6e,#fa,#20
	db #ff,#88,#7f,#f4,#44,#e7,#3e,#ef
	db #b1,#ee,#bc,#88,#3e,#c9,#46,#f5
	db #ed,#ff,#fa,#a0,#88,#fe,#f4,#c4
	db #e7,#be,#ef,#31,#ee,#3c,#ee,#42
	db #fc,#81,#ff,#f2,#93,#5d,#8a,#95
	db #85,#fa,#af,#f3,#44,#fa,#96,#f5
	db #b7,#fa,#d3,#ff,#f4,#bc,#fa,#da
	db #ee,#bc,#e7,#c2,#f5,#16,#fa,#04
	db #ee,#10,#8d,#0a,#ff,#f5,#ed,#fa
	db #a0,#88,#fe,#f4,#c4,#e7,#be,#ef
	db #31,#ee,#3c,#88,#be,#ff,#c9,#c6
	db #f5,#6d,#fa,#20,#88,#7e,#f4,#44
	db #e7,#3e,#ef,#b1,#ee,#bc,#ff,#ee
	db #c2,#fc,#01,#f2,#13,#5d,#0a,#95
	db #05,#fa,#2f,#f3,#c4,#fa,#16,#ff
	db #f5,#37,#fa,#53,#f4,#3c,#fa,#5a
	db #ee,#3c,#e7,#42,#fa,#96,#f5,#6d
	db #ff,#f3,#90,#f5,#97,#ee,#a8,#d5
	db #a2,#ef,#9d,#f9,#7e,#f5,#14,#f4
	db #54,#ff,#e2,#fc,#bd,#ba,#c5,#cd
	db #f7,#19,#e5,#95,#f3,#bc,#ef,#f3
	db #e2,#aa,#ff,#a0,#68,#fa,#70,#f3
	db #c2,#f9,#ca,#f6,#e8,#e2,#7c,#bd
	db #3a,#c5,#4d,#f4,#f7,#99,#e5,#15
	db #f3,#3c,#ef,#73,#3b,#fe,#8a,#00
	db #d4,#01,#00,#99,#ff,#0f,#fd,#67
	db #0e,#fd,#6b,#0d,#07,#a9,#fe,#70
	db #0b,#fc,#73,#0a,#fc,#78,#02,#02
	db #f4,#67,#ff,#ee,#67,#e2,#8b,#a0
	db #8b,#dc,#73,#64,#7f,#fa,#cf,#fa
	db #db,#d0,#1b,#ff,#7c,#57,#d0,#e7
	db #70,#0b,#fa,#4f,#fa,#5b,#d0,#9b
	db #7c,#d7,#d1,#68,#ff,#70,#8b,#fa
	db #ce,#fa,#da,#fa,#c8,#d6,#20,#7c
	db #56,#d0,#e6,#70,#0a,#ec,#fa,#4e
	db #fa,#5a,#dc,#9a,#0d,#fc,#5f,#fe
	db #85,#0a,#06,#07,#02,#00,#00,#09
	db #0a,#fc,#68,#e2,#8a,#fa,#ae,#fe
	db #f4,#a8,#dc,#c0,#01,#90,#e5,#e3
	db #fd,#00,#fe,#02,#fd,#0e,#0d,#7e
	db #07,#fe,#13,#fd,#06,#df,#07,#a0
	db #0a,#fa,#88,#fc,#9f,#02,#7f,#02
	db #e8,#5e,#94,#2e,#ca,#fa,#fa,#5a
	db #d0,#9a,#7c,#d6,#d0,#66,#f6,#70
	db #8a,#fa,#ce,#fa,#da,#dc,#1a,#0d
	db #fc,#df,#fe,#05,#0a,#03,#06,#02
	db #00,#00,#09,#0a,#fc,#e8,#e2,#0a
	db #ff,#fa,#2e,#f4,#28,#dc,#40,#01
	db #10,#e5,#63,#fd,#80,#fe,#82,#fd
	db #8e,#3f,#0d,#07,#fe,#93,#fd,#86
	db #df,#87,#a0,#8a,#fa,#08,#fc,#1f
	db #3f,#02,#02,#e8,#de,#94,#ae,#ca
	db #7a,#fa,#da,#d0,#1a,#7c,#56,#fa
	db #d0,#e6,#70,#0a,#fa,#4e,#fa,#5a
	db #dc,#9a,#00,#fe,#8a,#00,#80,#36
	db #00,#0d,#0e,#0d,#09,#06,#05,#05
	db #00,#07,#08,#07,#05,#04,#03,#02
	db #02,#7e,#01,#fe,#da,#dc,#cb,#fa
	db #00,#7c,#a7,#01,#67,#7f,#89,#0c
	db #6a,#06,#f5,#07,#fe,#17,#0b,#fe
	db #1a,#0a,#fe,#1d,#09,#e0,#fe,#20
	db #01,#0b,#c7,#0a,#0f,#0f,#0e,#0d
	db #0b,#57,#06,#ee,#5b,#0e,#fc,#6d
	db #0c,#ee,#73,#fa,#6d,#fe,#56,#9e
	db #fd,#52,#0b,#0e,#fe,#8d,#fe,#89
	db #fd,#51,#fd,#55,#0a,#ff,#fa,#85
	db #ee,#91,#9f,#8b,#f0,#ed,#f4,#6d
	db #f9,#20,#88,#80,#f5,#45,#ff,#e8
	db #3e,#f4,#bc,#fa,#da,#ee,#bc,#87
	db #3e,#cb,#47,#f4,#ec,#f9,#a0,#fe
	db #88,#ff,#f5,#c5,#e8,#be,#f4,#3c
	db #fa,#5a,#ee,#3c,#ee,#42,#0c,#3d
	db #06,#00,#fd,#92,#fe,#22,#fd,#23
	db #fc,#25,#09,#fe,#9f,#ff,#5e,#8a
	db #94,#84,#fc,#9a,#fe,#b3,#f4,#44
	db #fa,#b6,#f4,#b6,#fa,#b0,#ff,#f4
	db #bc,#fa,#da,#ee,#bc,#ee,#c2,#fe
	db #a5,#fd,#a1,#fe,#43,#fe,#0c,#ef
	db #fe,#08,#fd,#a0,#fd,#a4,#0a,#fa
	db #04,#ee,#10,#8e,#0a,#f4,#ec,#ff
	db #f9,#a0,#88,#ff,#f5,#c5,#e8,#be
	db #f4,#3c,#fa,#5a,#ee,#3c,#87,#be
	db #ff,#cb,#c7,#f4,#6c,#f9,#20,#88
	db #7f,#f5,#45,#e8,#3e,#f4,#bc,#fa
	db #da,#c7,#ee,#bc,#ee,#c2,#0c,#06
	db #00,#fd,#12,#fe,#a2,#fd,#a3,#bf
	db #fc,#a5,#09,#fe,#1f,#5e,#0a,#94
	db #04,#fc,#1a,#fe,#33,#f4,#c4,#ff
	db #fa,#36,#f4,#36,#fa,#30,#f4,#3c
	db #fa,#5a,#ee,#3c,#ee,#42,#fe,#25
	db #fe,#fd,#21,#fe,#c3,#fe,#8c,#fe
	db #88,#f3,#3b,#f4,#90,#fb,#22,#0a
	db #fc,#ee,#8a,#fa,#b4,#d6,#a2,#ed
	db #9c,#fb,#03,#fe,#e5,#09,#08,#00
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #ff,#fa,#08,#ee,#66,#ee,#08,#be
	db #ba,#c4,#cc,#fa,#44,#e2,#92,#f4
	db #bc,#f8,#ee,#f2,#e2,#aa,#a0,#68
	db #f9,#70,#f5,#c3,#05,#04,#03,#1f
	db #02,#01,#00,#fa,#88,#ee,#e6,#ee
	db #88,#be,#3a,#c4,#4c,#f4,#fa,#c4
	db #e2,#12,#f4,#3c,#ee,#72,#00,#fe
	db #8a,#00,#af,#f6,#00,#10,#f4,#0b
	db #01,#fc,#18,#bd,#0b,#e8,#5f,#01
	db #18,#f5,#01,#b7,#01,#b6,#01,#b5
	db #dd,#73,#0b,#fc,#97,#0a,#e2,#8b
	db #fe,#c4,#4f,#dc,#97,#ee,#aa,#d7
	db #c8,#a0,#97,#dc,#4a,#fc,#d9,#02
	db #7f,#02,#dc,#b0,#8e,#44,#dc,#16
	db #ed,#28,#d7,#47,#a0,#16,#dc,#ca
	db #9e,#fc,#59,#02,#02,#dc,#30,#c9
	db #f4,#c5,#07,#1c,#96,#0d,#d7,#d1
	db #da,#f4,#ce,#0b,#fc,#16,#0a,#e2
	db #0a,#c4,#6e,#dc,#16,#f9,#ed,#28
	db #d7,#47,#a0,#16,#dc,#ca,#fc,#59
	db #02,#02,#dc,#30,#80,#d0,#c4,#0d
	db #0e,#0d,#09,#06,#05,#05,#03,#07
	db #08,#07,#05,#04,#03,#fe,#5e,#fd
	db #1b,#1f,#09,#0a,#08,#fe,#bf,#fd
	db #c0,#fc,#cd,#f4,#b4,#f4,#d2,#eb
	db #d6,#8a,#f4,#ae,#f4,#de,#0a,#fe
	db #0c,#06,#fe,#cb,#fa,#2c,#38,#02
	db #04,#fe,#2a,#fe,#c2,#fd,#27,#03
	db #00,#00,#ff,#fa,#3e,#ca,#ea,#fa
	db #26,#fa,#c6,#e8,#7a,#f4,#6e,#ee
	db #af,#e8,#56,#f7,#fc,#d9,#fe,#37
	db #dc,#b0,#ed,#03,#01,#fc,#17,#bd
	db #0a,#05,#ff,#6b,#0d,#d1,#5a,#f4
	db #4e,#0b,#fc,#96,#0a,#e2,#8a,#c4
	db #ee,#fc,#dc,#96,#ed,#a8,#d7,#c7
	db #a0,#96,#dc,#4a,#fc,#d9,#02,#02
	db #ff,#dc,#b0,#8e,#44,#dc,#16,#ed
	db #28,#d7,#47,#a0,#16,#dc,#ca,#fc
	db #59,#30,#02,#02,#dc,#30,#f7,#83
	db #00,#af,#f6,#00,#09,#fb,#0b,#0a
	db #f5,#11,#c4,#0b,#b2,#0b,#01,#47
	db #eb,#01,#e6,#01,#e5,#19,#44,#24
	db #ef,#8b,#28,#ef,#9d,#f4,#91,#ad
	db #d0,#3d,#30,#ef,#eb,#37,#ef,#fd
	db #f4,#f1,#00,#fc,#1b,#ab,#d6,#bb
	db #2d,#d1,#4a,#0b,#fb,#7a,#0c,#f5
	db #80,#ee,#7a,#6e,#0d,#fb,#9e,#fa
	db #3e,#14,#c5,#aa,#fa,#44,#e2,#eb
	db #24,#bf,#ef,#0a,#28,#ef,#1c,#f4
	db #10,#fa,#04,#fa,#a4,#fa,#45,#e2
	db #3a,#5d,#30,#ef,#6a,#37,#ef,#7c
	db #ee,#6a,#d6,#3a,#2d,#d1,#ca,#5b
	db #0b,#fb,#fa,#0c,#f5,#00,#ee,#fa
	db #0d,#fb,#1e,#fa,#be,#7f,#14,#c5
	db #2a,#fa,#c4,#dc,#6b,#dc,#a6,#dc
	db #a2,#b2,#8a,#46,#c6,#ae,#d6,#df
	db #24,#ef,#0a,#28,#ef,#1c,#f4,#10
	db #d0,#aa,#30,#ba,#ef,#6a,#37,#ef
	db #7c,#ee,#6a,#d6,#3a,#2d,#d1,#ca
	db #0b,#b6,#fb,#fa,#0c,#f5,#00,#ee
	db #fa,#0d,#fb,#1e,#fa,#be,#14,#eb
	db #c5,#2a,#fa,#c4,#e2,#6b,#24,#ef
	db #8a,#28,#ef,#9c,#ee,#8a,#ae,#d6
	db #bf,#30,#ef,#ea,#37,#ef,#fc,#ee
	db #ea,#d6,#1f,#2d,#ab,#a7,#4a,#0a
	db #fb,#a4,#14,#c5,#aa,#09,#d7,#e6
	db #fa,#a4,#fa,#fa,#15,#c4,#0a,#b2
	db #0a,#46,#46,#d6,#5f,#20,#ef,#8a
	db #24,#dd,#ef,#9c,#f4,#90,#08,#fb
	db #ba,#f4,#12,#e2,#ba,#2b,#ef,#ea
	db #77,#30,#ef,#fc,#ee,#ea,#d6,#ba
	db #28,#d1,#4a,#f0,#7a,#ec,#89,#57
	db #0c,#fb,#9e,#0d,#fb,#a4,#12,#c5
	db #aa,#fa,#44,#e2,#eb,#5f,#20,#ef
	db #0a,#24,#ef,#1c,#f4,#10,#fa,#04
	db #fc,#40,#f8,#43,#ae,#e2,#3a,#2b
	db #ef,#6a,#30,#ef,#7c,#ee,#6a,#d6
	db #3a,#28,#aa,#d1,#ca,#0a,#dd,#fa
	db #0c,#fb,#1e,#0d,#fb,#24,#12,#f0
	db #c5,#2a,#fa,#c4,#e2,#6b,#fd,#c1
	db #00,#ff,#01,#00,#01,#00,#01,#ff
	db #01,#fe,#01,#fd,#01,#fc,#01,#fb
	db #01,#fa,#ff,#01,#f9,#01,#f8,#01
	db #f7,#01,#f6,#01,#f5,#01,#f4,#01
	db #f3,#01,#f2,#80,#64,#f1,#ff,#bf
	db #f6,#00,#0e,#f5,#06,#be,#05,#e8
	db #4d,#01,#11,#01,#b0,#01,#af,#df
	db #01,#ae,#e2,#0d,#0c,#f5,#80,#dc
	db #85,#d0,#3d,#d0,#8b,#d1,#b6,#ff
	db #a6,#8b,#fa,#6e,#f4,#6e,#dc,#4a
	db #f4,#c2,#f4,#92,#ee,#86,#a0,#44
	db #ff,#ca,#04,#d0,#34,#a6,#0a,#fa
	db #ee,#f4,#ee,#dc,#ca,#f4,#42,#f4
	db #12,#fe,#ee,#06,#ee,#7e,#d0,#f4
	db #ee,#b4,#e8,#cc,#10,#90,#d6,#df
	db #0c,#ff,#d1,#f9,#d0,#aa,#d0,#0a
	db #d0,#34,#a6,#0a,#fa,#ee,#f4,#ee
	db #dc,#ca,#ff,#f4,#42,#f4,#12,#ee
	db #06,#ca,#c4,#d0,#b9,#46,#8a,#fa
	db #6e,#f4,#6e,#df,#d6,#5c,#fa,#c8
	db #0e,#ef,#cf,#fa,#e6,#e8,#f8,#ee
	db #f2,#d0,#16,#ef,#e8,#4c,#10,#10
	db #d6,#5f,#0c,#d1,#79,#d0,#2a,#d0
	db #8a,#d0,#b4,#ff,#a6,#8a,#fa,#6e
	db #f4,#6e,#dc,#4a,#f4,#c2,#f4,#92
	db #ee,#86,#a0,#44,#ff,#ca,#04,#d0
	db #34,#a6,#0a,#fa,#ee,#f4,#ee,#dc
	db #ca,#f4,#42,#f4,#12,#c0,#ee,#06
	db #f7,#7e,#00,#00
;
; #2000
; ld bc,#7fc6
; out (c),c
; call #4000
;
; #2242
; ld bc,#7fc6
; out (c),c
; call #4003
;
.music_info
	db "Plissken 2 (2002)(Public Domain)()",0
	db "StArkos",0

	read "music_end.asm"
