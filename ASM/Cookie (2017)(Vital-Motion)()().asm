; Music of Cookie (2017)(Vital-Motion)()()
; Ripped by Megachur the 04/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COOKIE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

	jp l4006	; init music
	jp l4032	; play music
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #ec,#42,#21,#00,#00
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
.l4800 equ $ + 3
	db #00,#00,#00,#00,#0e,#01,#2e,#00
	db #01,#f7,#02,#01,#1e,#03,#01,#1e
	db #04,#01,#5e,#04,#01,#8e,#05,#01
	db #aa,#05,#01,#df,#05,#01,#39,#07
	db #01,#80,#08,#01,#c9,#08,#01,#57
	db #09,#01,#73,#09,#01,#8f,#09,#ff
	db #ff,#ff,#ff,#ff,#ff,#46,#a3,#f2
	db #00,#48,#fe,#0f,#46,#45,#45,#fc
	db #0d,#fd,#0c,#fc,#fb,#14,#f8,#11
	db #f2,#21,#fe,#2e,#fd,#1a,#f7,#2c
	db #45,#54,#ed,#fa,#46,#f2,#01,#f9
	db #46,#3f,#fa,#62,#f9,#54,#6a,#de
	db #70,#60,#7e,#f3,#93,#f1,#84,#6b
	db #6b,#6a,#69,#68,#5a,#68,#e4,#93
	db #5e,#f3,#d2,#90,#00,#35,#f2,#50
	db #36,#8f,#fe,#5f,#35,#34,#34,#fc
	db #5d,#fd,#5c,#f9,#42,#f8,#72,#03
	db #40,#40,#3f,#3e,#3d,#3d,#eb,#26
	db #fb,#f6,#f5,#fe,#24,#e4,#6c,#e8
	db #81,#a1,#f1,#6a,#de,#30,#7e,#f3
	db #53,#81,#f1,#44,#6b,#6b,#6a,#69
	db #68,#68,#e4,#53,#6a,#5e,#f3,#92
	db #90,#c0,#35,#f2,#10,#36,#fe,#1f
	db #35,#3c,#34,#34,#fc,#1d,#fd,#1c
	db #f9,#02,#f8,#32,#40,#40,#05,#3f
	db #3e,#3d,#3d,#2d,#ec,#41,#2f,#f3
	db #56,#cd,#f9,#18,#eb,#2c,#3e,#3e
	db #fc,#7a,#fe,#7d,#3e,#fc,#79,#6d
	db #3f,#f9,#fb,#f9,#94,#4f,#fa,#9c
	db #eb,#8e,#42,#fa,#b8,#f7,#f9,#aa
	db #f2,#b8,#f9,#73,#f9,#c6,#38,#fa
	db #e2,#f9,#d4,#e4,#10,#df,#f9,#e2
	db #f5,#12,#37,#fe,#1e,#f1,#6b,#f3
	db #2f,#f2,#e2,#f9,#4a,#c0,#f2,#a3
	db #fe,#5f,#55,#54,#53,#52,#52,#53
	db #cf,#fe,#61,#fd,#62,#53,#5e,#f3
	db #6e,#f2,#54,#f2,#6e,#dd,#21,#a8
	db #eb,#3d,#46,#f2,#d0,#48,#fe,#df
	db #46,#45,#45,#ff,#fc,#dd,#fd,#dc
	db #fb,#e4,#f8,#e1,#f2,#f1,#fe,#fe
	db #fd,#ea,#f7,#fc,#ff,#fc,#04,#f5
	db #18,#f2,#c9,#f2,#bb,#ba,#d0,#fc
	db #86,#fd,#89,#f2,#41,#d6,#f9,#86
	db #f2,#39,#6a,#de,#b0,#7e,#f3,#d3
	db #f1,#c4,#6b,#05,#6b,#6a,#69,#68
	db #68,#e4,#d3,#5e,#f3,#12,#a8,#90
	db #40,#35,#f2,#90,#36,#fe,#9f,#35
	db #34,#34,#f0,#fc,#9d,#fd,#9c,#f9
	db #82,#f8,#b2,#40,#40,#3f,#3e,#3f
	db #3d,#3d,#eb,#66,#fb,#36,#fe,#64
	db #e4,#ac,#e8,#c1,#a1,#31,#58,#6a
	db #de,#70,#7e,#f3,#93,#f1,#84,#6b
	db #6b,#6a,#16,#69,#68,#68,#e4,#93
	db #5e,#f3,#d2,#90,#00,#35,#a3,#f2
	db #50,#36,#fe,#5f,#35,#34,#34,#fc
	db #5d,#fd,#5c,#c0,#f9,#42,#f8,#72
	db #40,#40,#3f,#3e,#3d,#3d,#5c,#2d
	db #ec,#81,#2f,#f3,#96,#f9,#58,#eb
	db #6c,#3e,#3e,#d6,#fc,#ba,#fe,#bd
	db #3e,#fc,#b9,#3f,#f9,#3b,#f9,#d4
	db #4f,#df,#fa,#dc,#eb,#ce,#42,#fa
	db #f8,#f9,#ea,#f2,#f8,#f9,#b3,#f9
	db #06,#7d,#38,#fa,#22,#f9,#14,#e4
	db #50,#f9,#22,#f5,#52,#37,#fe,#5e
	db #fc,#f1,#ab,#f3,#6f,#f2,#22,#f9
	db #8a,#f2,#e3,#fe,#9f,#55,#54,#0c
	db #53,#52,#52,#53,#fe,#a1,#fd,#a2
	db #53,#5e,#fa,#f3,#ae,#f2,#94,#f2
	db #ae,#dd,#61,#eb,#7d,#46,#f2,#10
	db #48,#8f,#fe,#1f,#46,#45,#45,#fc
	db #1d,#fd,#1c,#fb,#24,#f8,#21,#ff
	db #f2,#31,#fe,#3e,#fd,#2a,#f7,#3c
	db #fc,#44,#f5,#58,#f2,#09,#f2,#fb
	db #4b,#35,#d6,#80,#36,#36,#fe,#a9
	db #34,#fe,#af,#fb,#aa,#c7,#fe,#ae
	db #fa,#a9,#1a,#1a,#17,#fe,#c0,#f7
	db #c3,#f9,#bf,#f1,#ed,#bf,#fd,#e5
	db #fa,#e3,#dd,#88,#23,#23,#1f,#fe
	db #14,#ff,#fe,#17,#f4,#cd,#f7,#e7
	db #f2,#13,#f9,#2f,#e4,#3d,#00,#80
	db #01,#80,#fe,#fa,#4f,#fe,#5c,#fd
	db #60,#f7,#5a,#fe,#6a,#fc,#6d,#fe
	db #75,#7e,#a8,#fa,#7b,#86,#fa,#82
	db #8d,#f2,#89,#90,#90,#8d,#00,#8c
	db #89,#89,#48,#50,#58,#58,#69,#00
	db #71,#71,#82,#8b,#93,#9b,#a4,#ac
	db #00,#ac,#73,#7b,#83,#8c,#94,#94
	db #9c,#00,#ad,#b6,#be,#c6,#cf,#d7
	db #d7,#e5,#00,#f6,#07,#17,#28,#39
	db #39,#4a,#6b,#00,#7c,#8d,#9d,#ae
	db #ae,#d0,#e1,#f1,#04,#02,#13,#24
	db #24,#09,#fe,#f6,#3b,#4c,#00,#5d
	db #5d,#7e,#8f,#a0,#b1,#c1,#d2,#00
	db #d2,#f4,#04,#15,#26,#26,#47,#47
	db #00,#69,#7a,#8a,#9b,#ac,#bd,#bd
	db #de,#04,#ef,#00,#11,#21,#32,#f1
	db #f0,#00,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#fd,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#45,#00
	db #01,#f2,#bc,#70,#02,#fd,#cb,#de
	db #ad,#f1,#f0,#a9,#be,#f3,#00,#d4
	db #f3,#0e,#eb,#00,#f2,#1c,#d6,#23
	db #f9,#68,#3e,#bf,#f3,#70,#9f,#f3
	db #7e,#eb,#70,#f2,#8c,#d6,#93,#f9
	db #d8,#00,#00,#df,#00,#00,#60,#00
	db #51,#f3,#80,#f2,#f4,#eb,#80,#f2
	db #9c,#cf,#87,#5f,#f9,#f3,#f0,#fd
	db #f3,#fe,#eb,#f0,#f2,#0c,#d6,#13
	db #f9,#58,#5f,#7a,#f3,#60,#bd,#f3
	db #6e,#eb,#60,#f2,#7c,#d6,#83,#f9
	db #c8,#55,#1b,#f3,#d0,#8d,#f3,#de
	db #0c,#f3,#ec,#86,#f3,#fa,#aa,#f2
	db #52,#7e,#f3,#16,#e1,#f3,#24,#70
	db #f3,#32,#a9,#be,#f3,#40,#d4,#f3
	db #4e,#eb,#40,#f2,#5c,#d6,#63,#f9
	db #a8,#3e,#bf,#f3,#b0,#9f,#f3,#be
	db #eb,#b0,#f2,#cc,#d6,#d3,#f9,#18
	db #00,#40,#df,#00,#40,#60,#40,#51
	db #f3,#c0,#f2,#34,#eb,#c0,#f2,#dc
	db #cf,#c7,#5f,#f9,#f3,#30,#fd,#f3
	db #3e,#eb,#30,#f2,#4c,#d6,#53,#f9
	db #98,#5f,#7a,#f3,#a0,#bd,#f3,#ae
	db #eb,#a0,#f2,#bc,#d6,#c3,#f9,#08
	db #55,#1b,#f3,#10,#8d,#f3,#1e,#0c
	db #f3,#2c,#86,#f3,#3a,#aa,#f2,#92
	db #7e,#f3,#56,#e1,#f3,#64,#70,#f3
	db #72,#a9,#be,#f3,#80,#d4,#f3,#8e
	db #eb,#80,#f2,#9c,#d6,#a3,#f9,#e8
	db #3e,#bf,#f3,#f0,#9f,#f3,#fe,#eb
	db #f0,#f2,#0c,#d6,#13,#f9,#58,#00
	db #80,#d5,#00,#80,#d0,#80,#1b,#f3
	db #90,#37,#c9,#9e,#f9,#f3,#d6,#50
	db #dd,#f3,#e4,#c2,#f3,#f2,#01,#bf
	db #f3,#00,#00,#f3,#0e,#eb,#00,#f2
	db #1c,#d6,#23,#e4,#15,#00,#15,#ff
	db #00,#15,#00,#15,#b8,#15,#90,#95
	db #90,#5d,#ac,#3d,#c1,#00,#5f,#60
	db #ff,#00,#71,#00,#71,#00,#71,#b8
	db #8d,#ac,#f1,#90,#9d,#ac,#7d,#c1
	db #40,#f7,#5f,#a0,#00,#b1,#00,#b1
	db #83,#b1,#02,#c9,#9e,#eb,#6d,#eb
	db #ea,#54,#b6,#f3,#00,#6a,#fa,#0e
	db #f9,#07,#35,#fa,#1c,#f9,#0e,#38
	db #fe,#fa,#2a,#f9,#1c,#f9,#2a,#f9
	db #23,#f2,#1c,#eb,#07,#f9,#68,#7e
	db #ed,#fa,#70,#f2,#69,#f9,#84,#3f
	db #fa,#8c,#f9,#85,#46,#fa,#9a,#7f
	db #4f,#fa,#a1,#f2,#9a,#f2,#b5,#f9
	db #93,#f2,#bd,#f2,#70,#00,#07,#d7
	db #00,#07,#67,#07,#70,#e5,#80,#86
	db #e5,#9c,#f2,#72,#d6,#72,#f6,#e4
	db #b8,#f9,#17,#f9,#6b,#f9,#0c,#6a
	db #ec,#21,#f2,#fe,#a9,#ab,#f3,#44
	db #d4,#f3,#52,#5e,#e5,#60,#bd,#e5
	db #7c,#f2,#44,#ab,#f2,#a5,#96,#e5
	db #b4,#8d,#e5,#d0,#9f,#e5,#ec,#f9
	db #ad,#eb,#f2,#01,#e4,#7c,#f9,#38
	db #54,#f3,#40,#6a,#fa,#4e,#f9,#47
	db #6f,#35,#fa,#5c,#f9,#4e,#38,#fa
	db #6a,#f9,#5c,#f9,#6a,#f9,#63,#ee
	db #f2,#5c,#eb,#47,#f9,#a8,#7e,#fa
	db #b0,#f2,#a9,#f9,#c4,#3f,#d7,#fa
	db #cc,#f9,#c5,#46,#fa,#da,#4f,#fa
	db #e1,#f2,#da,#f2,#f5,#fd,#f9,#d3
	db #f2,#fd,#f2,#b0,#00,#47,#00,#47
	db #67,#47,#70,#e5,#c0,#7f,#86,#e5
	db #dc,#f2,#b2,#d6,#b2,#e4,#f8,#f9
	db #57,#f9,#ab,#f9,#4c,#6a,#6a,#ec
	db #61,#f2,#3e,#a9,#f3,#84,#d4,#f3
	db #92,#5e,#ba,#e5,#a0,#bd,#e5,#bc
	db #f2,#84,#f2,#e5,#96,#e5,#f4,#8d
	db #bf,#e5,#10,#9f,#e5,#2c,#f9,#ed
	db #f2,#41,#e4,#bc,#f9,#78,#f9,#99
	db #d7,#f9,#56,#f9,#25,#70,#fa,#95
	db #35,#fa,#9c,#b3,#87,#f9,#4f,#55
	db #7e,#fa,#f7,#6a,#fa,#fe,#54,#fa
	db #05,#4f,#fa,#0c,#fb,#b3,#f7,#00
	db #80,#00,#80,#d0,#44,#f2,#82,#5e
	db #fa,#9e,#f9,#04,#70,#46,#fa,#ac
	db #c8,#97,#eb,#d6,#00,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#fc,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#12,#bf,#fe,#00,#00
	db #fd,#03,#f6,#00,#f9,#10,#f2,#03
	db #00,#0a,#00,#0a,#ff,#00,#0a,#00
	db #0a,#00,#0a,#00,#0a,#00,#0a,#00
	db #0a,#00,#0a,#00,#0a,#ff,#00,#0a
	db #00,#0a,#00,#0a,#93,#0a,#f8,#88
	db #f6,#78,#cc,#97,#f2,#93,#c0,#ee
	db #e6,#f9,#dd,#30,#27,#30,#38,#fc
	db #02,#28,#18,#fb,#02,#fe,#00,#fb
	db #0f,#eb,#f7,#07,#ed,#02,#f8,#1c
	db #28,#f4,#17,#18,#fd,#46,#fd,#30
	db #ff,#fe,#49,#f2,#3a,#fa,#4f,#fc
	db #49,#fd,#4b,#f2,#16,#f9,#39,#fa
	db #63,#ff,#f2,#38,#f7,#85,#df,#2c
	db #f9,#af,#dc,#70,#89,#08,#f9,#ef
	db #d0,#86,#ff,#fe,#88,#fe,#97,#5b
	db #ba,#eb,#b3,#de,#74,#f9,#06,#5e
	db #9d,#f9,#af,#ff,#b3,#46,#e5,#1f
	db #f8,#e6,#f3,#0a,#f9,#95,#b3,#8e
	db #e4,#6b,#f7,#0c,#ff,#e6,#3c,#f9
	db #1c,#ea,#e9,#fa,#59,#e4,#79,#eb
	db #05,#f9,#6e,#f0,#0c,#df,#e6,#85
	db #e4,#67,#28,#f8,#3e,#fa,#54,#f2
	db #3e,#e5,#d8,#f8,#08,#ff,#fa,#a9
	db #fe,#17,#f9,#bd,#fa,#1f,#f6,#a0
	db #fd,#24,#f9,#2b,#cf,#d0,#ff,#f2
	db #b4,#f2,#9f,#f2,#39,#f9,#24,#f8
	db #16,#f2,#56,#f9,#79,#fa,#a3,#ff
	db #f1,#c9,#f8,#c6,#df,#6c,#f2,#08
	db #e3,#b7,#89,#48,#f9,#2f,#d0,#c6
	db #ff,#fe,#c8,#fe,#d7,#5b,#fa,#eb
	db #f3,#de,#b4,#f9,#46,#5e,#dd,#f9
	db #ef,#ff,#b3,#86,#e5,#5f,#f8,#26
	db #f3,#4a,#f9,#d5,#b3,#ce,#e4,#ab
	db #f7,#4c,#ff,#e6,#7c,#f9,#5c,#ea
	db #29,#fa,#99,#e4,#b9,#eb,#45,#f9
	db #ae,#f0,#4c,#df,#e6,#c5,#e4,#a7
	db #28,#f8,#7e,#fa,#94,#f2,#7e,#e5
	db #18,#f8,#48,#ff,#fa,#e9,#fe,#57
	db #f9,#fd,#fa,#5f,#f6,#e0,#fd,#64
	db #f9,#6b,#eb,#48,#ff,#eb,#d1,#fe
	db #40,#ed,#90,#f9,#64,#fe,#09,#fe
	db #c7,#fc,#5a,#f9,#65,#df,#f8,#c0
	db #fa,#cf,#10,#fb,#03,#f9,#d4,#dd
	db #80,#f8,#cd,#fe,#41,#ff,#fc,#ff
	db #f2,#cd,#dc,#13,#d0,#e3,#00,#a3
	db #24,#a3,#f9,#58,#f9,#86,#ff,#f0
	db #58,#f9,#06,#fb,#14,#f9,#7b,#f9
	db #66,#fb,#8b,#f7,#09,#e9,#97,#ff
	db #f8,#96,#fa,#8c,#f2,#bc,#fd,#d7
	db #f0,#cd,#fb,#e4,#f9,#ef,#f7,#db
	db #0d,#05,#0d,#0b,#0a,#09,#08,#ce
	db #05,#00,#f3,#38,#30,#0d,#0c,#fb
	db #02,#fd,#4a,#07,#07,#05,#05,#bb
	db #f5,#46,#06,#ef,#52,#fa,#01,#f6
	db #3f,#0b,#f3,#74,#fe,#73,#ff,#fe
	db #82,#f9,#62,#f2,#3f,#eb,#38,#dc
	db #af,#83,#01,#ed,#18,#fe,#54,#dd
	db #eb,#18,#e7,#a1,#0a,#e1,#a6,#83
	db #e1,#fd,#22,#0b,#f3,#34,#ff,#fc
	db #6f,#f1,#b2,#e8,#89,#e8,#57,#74
	db #b2,#ed,#d8,#fe,#14,#e2,#68,#7d
	db #0c,#fc,#44,#eb,#84,#f9,#64,#eb
	db #d1,#f6,#5d,#0b,#f1,#f8,#fb,#fe
	db #95,#ea,#fb,#e8,#ab,#9b,#f1,#f5
	db #1a,#0a,#e9,#54,#e4,#79,#fe,#eb
	db #05,#e4,#44,#d5,#98,#fa,#f1,#cf
	db #d6,#eb,#13,#fd,#1a,#07,#17,#07
	db #05,#05,#f5,#16,#06,#ef,#22,#8a
	db #d1,#f6,#7f,#7f,#0b,#f3,#b4,#fe
	db #b3,#fe,#c2,#f9,#a2,#f2,#7f,#eb
	db #78,#dc,#ef,#fb,#83,#41,#ed,#58
	db #fe,#94,#eb,#58,#e7,#e1,#0a,#e1
	db #e6,#83,#21,#bf,#fd,#62,#0b,#f3
	db #74,#fc,#af,#f1,#f2,#e8,#c9,#e8
	db #97,#74,#f2,#ef,#ed,#18,#fe,#54
	db #e2,#a8,#0c,#fc,#84,#eb,#c4,#f9
	db #a4,#eb,#11,#bf,#f6,#9d,#0b,#f1
	db #38,#fe,#d5,#ea,#3b,#e8,#eb,#9b
	db #31,#f5,#5a,#7f,#0a,#e9,#94,#e4
	db #b9,#eb,#45,#e4,#84,#d5,#d8,#fa
	db #31,#cf,#16,#c2,#eb,#53,#fd,#5a
	db #07,#07,#05,#05,#f5,#56,#06,#ff
	db #ef,#62,#fa,#11,#dd,#a7,#eb,#a9
	db #fe,#a0,#fd,#c0,#f0,#b6,#ed,#bf
	db #ff,#f7,#e6,#dd,#80,#f2,#cd,#f2
	db #e2,#ed,#13,#e2,#3b,#00,#80,#01
	db #80,#fc,#e4,#5e,#fb,#3c,#fe,#33
	db #f2,#7b,#f1,#6d,#fe,#8b,#0a,#08
	db #01,#07,#07,#05,#04,#03,#02,#01
	db #fe,#a9,#fb,#fd,#9e,#fe,#8e,#fe
	db #a2,#f4,#a5,#fe,#a3,#06,#fa,#b4
	db #c8,#43,#0e,#00,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#07,#06,#06,#05
	db #04,#03,#dd,#00,#e4,#1c,#e4,#2a
	db #ff,#c8,#5b,#00,#31,#00,#31,#00
	db #31,#d4,#31,#dd,#95,#cf,#c6,#9e
	db #41,#ff,#90,#13,#82,#e5,#90,#91
	db #00,#71,#00,#71,#00,#71,#d4,#71
	db #dd,#d5,#ff,#cf,#06,#9e,#81,#90
	db #53,#82,#25,#90,#d1,#00,#b1,#00
	db #b1,#60,#b1,#80,#c1,#b3,#0a,#02
	db #0a,#09,#08,#08,#07,#06,#fd,#06
	db #05,#1f,#05,#04,#04,#dd,#00,#ba
	db #0e,#00,#07,#00,#07,#00,#07,#f7
	db #f0,#69,#fe,#7c,#ed,#88,#a5,#80
	db #00,#fa,#f7,#eb,#f0,#eb,#0c,#ff
	db #eb,#05,#e4,#f7,#f2,#4b,#74,#87
	db #c1,#f7,#eb,#01,#fd,#46,#fe,#ce
	db #3f,#04,#04,#dd,#40,#ba,#4e,#00
	db #47,#00,#47,#00,#47,#f0,#a9,#ef
	db #fe,#bc,#ed,#c8,#a5,#c0,#00,#fa
	db #37,#eb,#30,#eb,#4c,#eb,#45,#ff
	db #e4,#37,#f2,#8b,#74,#c7,#c1,#37
	db #dd,#41,#f2,#8e,#fd,#9f,#fc,#f9
	db #b3,#eb,#a3,#06,#fe,#bf,#fe,#bd
	db #04,#04,#eb,#bf,#fd,#da,#5f,#03
	db #fe,#de,#02,#f2,#db,#00,#80,#00
	db #80,#60,#80,#dd,#89,#94,#fb,#b2
	db #01,#01,#eb,#b3,#00,#d0,#cf,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#fc,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fc,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#ff,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#fc
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
;
.music_info
	db "Cookie (2017)(Vital-Motion)()",0
	db "",0

	read "music_end.asm"
