; Music of Oldschool Intro 1 - Summer Edition (2020)(Vital-Motion)()()
; Ripped by Megachur the 01/09/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OLDSI1SE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2020
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld b,d			; reset music
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
	db #00,#00,#00,#ee,#1b,#01,#2e,#00
	db #01,#48,#01,#01,#f2,#01,#01,#28
	db #05,#01,#96,#05,#01,#0c,#07,#01
	db #c7,#07,#01,#27,#08,#01,#ac,#08
	db #01,#49,#09,#01,#2e,#0a,#01,#f8
	db #0a,#01,#6f,#0b,#01,#a9,#0b,#ff
	db #ff,#ff,#ff,#ff,#ff,#1a,#c0,#00
	db #00,#81,#00,#70,#6f,#6f,#70,#71
	db #72,#10,#73,#72,#71,#a9,#80,#bb
	db #ba,#ba,#bb,#04,#bc,#bd,#be,#bd
	db #bc,#d9,#e0,#fb,#fa,#01,#fa,#fb
	db #fc,#fd,#fe,#fd,#fc,#d9,#10,#8e
	db #40,#80,#5a,#fa,#7e,#f7,#91,#fa
	db #00,#f9,#0c,#66,#03,#3f,#5a,#f6
	db #18,#5a,#00,#fc,#1f,#f4,#0c,#ff
	db #ee,#06,#f9,#30,#fa,#19,#f4,#13
	db #f8,#49,#f7,#c4,#fa,#60,#f9,#6c
	db #ff,#f2,#19,#fa,#6f,#f7,#f4,#fa
	db #8a,#f3,#8a,#f8,#5b,#fc,#99,#f7
	db #55,#ff,#fd,#bb,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#f8,#00,#01,#00,#01,#41
	db #01,#00,#7f,#b0,#7f,#5a,#66,#3f
	db #18,#52,#66,#7b,#eb,#d0,#ea,#e8
	db #fa,#7e,#82,#00,#bd,#00,#52,#8b
	db #46,#02,#3d,#00,#ff,#f3,#00,#fb
	db #e3,#fa,#12,#ed,#06,#fb,#2b,#e2
	db #0c,#e8,#24,#be,#12,#db,#f3,#dc
	db #3b,#01,#38,#fb,#86,#fa,#80,#1c
	db #fb,#92,#fa,#7a,#fd,#fa,#92,#f9
	db #92,#f4,#8d,#f5,#57,#e8,#92,#f4
	db #b0,#7b,#fb,#e6,#f7,#f3,#e0,#fb
	db #c9,#f4,#fd,#fa,#ec,#aa,#fb,#10
	db #f4,#b6,#f9,#10,#fd,#fb,#f9,#f4
	db #22,#00,#7a,#00,#7a,#00,#7a,#34
	db #7a,#0c,#fb,#06,#fe,#f3,#00,#fb
	db #fb,#fa,#12,#ed,#06,#f5,#d7,#e8
	db #12,#f4,#30,#66,#fb,#fb,#66,#f3
	db #60,#fb,#49,#fa,#72,#f4,#66,#92
	db #fb,#90,#f4,#36,#ff,#f9,#90,#fb
	db #79,#f4,#a2,#00,#fa,#00,#fa,#00
	db #fa,#3a,#fa,#00,#7f,#c0,#00,#7f
	db #92,#7f,#00,#d7,#00,#00,#81,#00
	db #04,#a1,#80,#03,#d1,#e0,#a0,#80
	db #70,#b0,#1e,#02,#01,#02,#f1,#f7
	db #f8,#0c,#fe,#13,#fd,#1b,#00,#ff
	db #fc,#1f,#f4,#0c,#ee,#06,#f8,#30
	db #fb,#1a,#f4,#13,#f8,#49,#f7,#c7
	db #ff,#fa,#60,#f8,#6c,#f3,#1a,#fa
	db #6f,#cf,#2d,#fc,#bb,#00,#02,#00
	db #02,#ff,#00,#02,#00,#02,#00,#02
	db #00,#02,#00,#02,#00,#02,#00,#02
	db #42,#02,#da,#00,#7f,#b0,#7f,#02
	db #e6,#cb,#e9,#e8,#02,#fe,#02,#00
	db #3f,#00,#01,#fe,#05,#fe,#09,#f2
	db #00,#fc,#19,#fa,#12,#ec,#06,#ff
	db #fc,#2c,#e2,#0c,#e8,#24,#be,#12
	db #f2,#dc,#3c,#02,#fd,#82,#fc,#88
	db #ff,#fb,#81,#fb,#7b,#f9,#79,#f4
	db #9d,#f2,#8c,#f6,#58,#e8,#92,#e8
	db #a4,#ff,#be,#92,#00,#74,#00,#74
	db #00,#74,#2e,#74,#b2,#a6,#00,#94
	db #00,#94,#fc,#00,#94,#00,#94,#d4
	db #94,#00,#7f,#00,#7f,#92,#7f,#38
	db #af,#a1,#00,#de,#d1,#60,#7e,#d1
	db #90,#00,#00,#00,#00,#00,#00,#e2
	db #00,#00,#00,#00,#c0,#00,#12,#24
	db #47,#fd,#02,#14,#22,#28,#50,#fd
	db #08,#18,#30,#5f,#fd,#0e,#1b,#23
	db #35,#6b,#fd,#14,#1e,#3c,#78,#fd
	db #1a,#fe,#01,#6d,#8e,#fd,#20,#fe
	db #07,#a0,#fd,#26,#fe,#0d,#be,#fd
	db #2c,#b7,#fe,#13,#d5,#fd,#32,#fe
	db #19,#ee,#fd,#38,#fa,#30,#fa,#2a
	db #f0,#fa,#24,#fa,#1e,#fa,#18,#fa
	db #48,#9f,#9e,#9e,#9f,#20,#a2,#a6
	db #d6,#60,#d4,#d3,#d3,#d4,#d8,#40
	db #db,#ee,#90,#bd,#bc,#bc,#bd,#bf
	db #c1,#50,#c3,#fc,#ae,#c4,#fc,#a2
	db #d5,#d6,#d7,#d6,#60,#d5,#fd,#b4
	db #40,#00,#3e,#3d,#3d,#3e,#3c,#00
	db #39,#37,#32,#2e,#1b,#1a,#1a,#1b
	db #06,#1c,#1d,#1e,#1d,#1c,#d6,#89
	db #f4,#ad,#ed,#00,#ec,#ec,#ed,#ee
	db #ef,#f0,#ef,#ee,#e0,#fd,#c8,#f4
	db #74,#fc,#68,#be,#bf,#c0,#bf,#be
	db #fc,#f1,#e0,#e8,#e0,#f4,#d4,#f4
	db #c8,#f4,#bc,#fc,#80,#3f,#40,#18
	db #41,#40,#3f,#fc,#34,#a1,#81,#9f
	db #9e,#9e,#13,#9f,#9c,#99,#fc,#0a
	db #ba,#b7,#fa,#a0,#fc,#94,#3c,#d1
	db #ce,#e8,#a0,#fa,#be,#fa,#ca,#fc
	db #88,#ea,#e7,#90,#fc,#7c,#18,#15
	db #fc,#40,#3b,#38,#7a,#79,#0f,#79
	db #7a,#77,#74,#fa,#e8,#f6,#e2,#a4
	db #44,#fc,#d0,#07,#be,#bf,#c0,#bf
	db #be,#f1,#60,#e8,#60,#f4,#54,#e0
	db #f4,#48,#f4,#3c,#fc,#00,#3f,#40
	db #41,#40,#3f,#c0,#fc,#b4,#a1,#01
	db #9f,#9e,#9e,#9f,#9c,#99,#99,#fc
	db #8a,#ba,#b7,#fa,#20,#fc,#14,#d1
	db #ce,#e8,#20,#e4,#fa,#3e,#fa,#4a
	db #fc,#08,#ea,#e7,#fc,#fc,#18,#15
	db #80,#fc,#c0,#3b,#38,#7a,#79,#79
	db #7a,#77,#62,#74,#fa,#68,#fa,#62
	db #12,#24,#47,#fd,#82,#14,#22,#28
	db #50,#fd,#88,#18,#30,#5f,#fd,#8e
	db #1b,#23,#35,#6b,#fd,#94,#1e,#3c
	db #78,#fd,#9a,#fe,#81,#6d,#8e,#fd
	db #a0,#fe,#87,#a0,#fd,#a6,#fe,#8d
	db #be,#fd,#ac,#b7,#fe,#93,#d5,#fd
	db #b2,#fe,#99,#ee,#fd,#b8,#fa,#b0
	db #fa,#aa,#f9,#fa,#a4,#fa,#9e,#fa
	db #98,#fa,#c8,#fc,#44,#a2,#a6,#d6
	db #e0,#98,#fc,#56,#d8,#db,#ee,#10
	db #fc,#50,#bf,#c1,#c3,#a0,#fc,#2e
	db #c4,#fc,#22,#d5,#d6,#d7,#d6,#d5
	db #d5,#fd,#34,#40,#80,#38,#a1,#00
	db #de,#d1,#60,#7e,#d1,#90,#ed,#00
	db #00,#20,#00,#9a,#9f,#1c,#fb,#06
	db #ac,#00,#f7,#fb,#60,#6b,#7b,#fb
	db #66,#dc,#60,#54,#fb,#90,#aa,#fb
	db #96,#dc,#90,#80,#40,#00,#bd,#bc
	db #bc,#bd,#be,#bf,#c0,#20,#bf,#be
	db #c1,#80,#d4,#d3,#d3,#d4,#d5,#0c
	db #d6,#d7,#d6,#d5,#fc,#c8,#f1,#c9
	db #d3,#d2,#03,#d1,#ce,#cb,#c8,#c5
	db #c3,#fa,#bf,#ca,#92,#00,#9f,#9e
	db #9e,#9f,#a0,#a1,#a2,#a1,#71,#a0
	db #fd,#28,#f4,#d4,#40,#80,#8e,#47
	db #8e,#fd,#02,#71,#24,#fb,#01,#ee
	db #00,#ca,#00,#a0,#50,#a0,#fd,#56
	db #8b,#fa,#48,#5f,#30,#5f,#fd,#62
	db #18,#fb,#61,#ee,#60,#8b,#f4,#6c
	db #50,#28,#50,#fd,#8c,#14,#fb,#8b
	db #fa,#8a,#88,#fa,#7e,#6b,#35,#6b
	db #fd,#a4,#78,#3c,#78,#f8,#fd,#aa
	db #fa,#a2,#fa,#5a,#f4,#54,#46,#06
	db #bd,#bc,#bc,#02,#bd,#be,#bf,#c0
	db #bf,#be,#c1,#80,#d4,#00,#d3,#d3
	db #d4,#d5,#d6,#d7,#d6,#d5,#c0,#fc
	db #c8,#f1,#c9,#d3,#d2,#d1,#ce,#cb
	db #c8,#30,#c5,#c3,#fa,#bf,#ca,#92
	db #9f,#9e,#9e,#9f,#07,#a0,#a1,#a2
	db #a1,#a0,#fd,#28,#f4,#d4,#40,#80
	db #00,#65,#64,#64,#65,#66,#67,#68
	db #67,#40,#66,#c1,#00,#91,#90,#90
	db #91,#92,#93,#18,#94,#93,#92,#fc
	db #48,#f1,#49,#90,#8f,#8e,#06,#8b
	db #88,#85,#82,#80,#fa,#3f,#ca,#12
	db #2c,#00,#2b,#2b,#2c,#2d,#2e,#2f
	db #2e,#2d,#e3,#fd,#a8,#f4,#54,#40
	db #00,#5a,#2d,#5a,#fc,#82,#bf,#81
	db #18,#65,#32,#65,#fc,#ca,#eb,#c9
	db #63,#61,#5f,#03,#5d,#28,#59,#57
	db #55,#53,#fb,#ec,#ca,#92,#1e,#4b
	db #26,#4b,#fc,#2a,#fb,#29,#f4,#d4
	db #40,#80,#65,#00,#64,#64,#65,#66
	db #67,#68,#67,#66,#80,#c1,#00,#91
	db #90,#90,#91,#92,#93,#94,#30,#93
	db #92,#fc,#48,#f1,#49,#90,#8f,#8e
	db #8b,#0c,#88,#85,#82,#80,#fa,#3f
	db #ca,#12,#2c,#2b,#01,#2b,#2c,#2d
	db #2e,#2f,#2e,#2d,#fd,#a8,#f1,#f4
	db #54,#00,#00,#00,#00,#c0,#00,#b3
	db #5a,#b3,#fb,#02,#f4,#f9,#01,#f5
	db #04,#9b,#08,#bf,#7e,#38,#d3,#c0
	db #02,#bf,#a1,#00,#01,#d1,#60,#a0
	db #00,#00,#30,#00,#30,#00,#30,#00
	db #30,#db,#00,#30,#f0,#ef,#00,#00
	db #00,#81,#00,#01,#b9,#80,#58,#20
	db #ff,#8e,#b0,#a0,#28,#a0,#82,#9a
	db #dc,#88,#4e,#a6,#08,#00,#d9,#da
	db #d9,#5f,#02,#a1,#00,#01,#d1,#60
	db #a0,#00,#00,#30,#50,#30,#9a,#9f
	db #dd,#f4,#0a,#82,#06,#03,#fb,#90
	db #d6,#8a,#40,#00,#00,#00,#80,#f6
	db #00,#80,#00,#80,#00,#80,#81,#80
	db #01,#00,#00,#81,#00,#00,#dd,#00
	db #80,#81,#80,#01,#00,#00,#00,#00
	db #01,#00,#00,#41,#00,#40,#02,#d3
	db #c0,#70,#00,#6f,#6f,#70,#71,#72
	db #73,#72,#71,#80,#a9,#00,#bb,#ba
	db #ba,#bb,#bc,#bd,#be,#20,#bd,#bc
	db #d9,#60,#fb,#fa,#fa,#fb,#fc,#0c
	db #fd,#fe,#fd,#fc,#d9,#90,#40,#00
	db #1c,#8e,#7c,#1c,#fb,#82,#fb,#81
	db #ee,#81,#c4,#81,#fb,#d4,#ee,#78
	db #78,#ee,#fb,#e2,#fb,#e1,#ee,#e1
	db #f5,#ed,#d5,#6b,#d5,#f1,#fb,#0c
	db #fb,#0b,#fa,#0b,#f5,#0b,#be,#5f
	db #be,#fb,#2a,#f8,#fc,#29,#f4,#1c
	db #3a,#80,#fa,#be,#fa,#00,#3f,#a0
	db #3f,#8f,#fd,#14,#7b,#be,#7b,#fd
	db #1a,#fa,#12,#f4,#00,#f4,#b2,#f1
	db #db,#0c,#f5,#5b,#ac,#0c,#40,#00
	db #8e,#78,#5f,#fd,#80,#78,#00,#fb
	db #86,#fa,#80,#f4,#8f,#be,#86,#ee
	db #be,#a0,#f8,#fd,#e0,#fa,#ce,#fa
	db #e0,#f4,#ef,#ee,#e6,#a0,#7f,#6b
	db #ff,#fd,#10,#fa,#fe,#fa,#10,#f4
	db #1f,#ee,#16,#00,#80,#00,#80,#00
	db #80,#ff,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#a0,#80
	db #a0,#88,#63,#1c,#fe,#0d,#fd,#00
	db #fa,#1c,#38,#fd,#08,#d6,#00,#88
	db #d6,#18,#7b,#3f,#fd,#fd,#60,#a4
	db #7b,#f7,#e3,#fd,#68,#ee,#60,#f4
	db #6c,#aa,#66,#1c,#fd,#8a,#fe,#89
	db #7b,#54,#fd,#92,#fa,#8a,#ee,#8a
	db #fa,#a2,#de,#fe,#81,#f7,#b4,#8f
	db #40,#00,#8e,#78,#5f,#fd,#80,#fa
	db #1a,#d6,#80,#d6,#98,#1e,#be,#a0
	db #7f,#fd,#e0,#fa,#44,#ee,#e0,#f4
	db #ec,#d5,#3e,#b3,#8e,#fd,#0a,#fa
	db #6e,#fa,#0a,#ee,#0a,#fa,#22,#ee
	db #fc,#fe,#01,#f7,#34,#00,#80,#00
	db #80,#00,#80,#40,#80,#0c,#e2,#47
	db #b3,#fd,#00,#de,#0c,#19,#fd,#08
	db #d6,#00,#d6,#18,#11,#66,#2d,#ee
	db #fd,#60,#7e,#66,#cc,#fd,#68,#c6
	db #ee,#60,#f4,#6c,#92,#52,#0c,#fd
	db #8a,#fe,#89,#24,#f7,#fd,#92,#fa
	db #8a,#ee,#8a,#fa,#a2,#c3,#fe,#81
	db #f7,#b4,#00,#00,#ff,#00,#00,#00
	db #00,#00,#00,#ce,#a2,#00,#92,#ec
	db #d4,#b2,#03,#94,#53,#00,#70,#6f
	db #6f,#70,#71,#72,#73,#72,#40,#71
	db #db,#c0,#04,#b8,#a1,#00,#03,#d1
	db #60,#a0,#00,#70,#30,#01,#00,#01
	db #fb,#fb,#82,#fb,#81,#ee,#81,#c4
	db #81,#fb,#d4,#00,#a1,#e0,#3a,#80
	db #ff,#f3,#3a,#e9,#0d,#e7,#2e,#83
	db #13,#40,#00,#00,#7f,#00,#7f,#00
	db #7f,#ff,#00,#7f,#00,#7f,#00,#7f
	db #00,#7f,#00,#7f,#00,#7f,#00,#7f
	db #80,#7f,#4f,#01,#fa,#fe,#01,#02
	db #fd,#08,#d5,#00,#d6,#19,#fe,#57
	db #fd,#fd,#60,#fe,#5f,#ea,#5c,#f2
	db #6c,#fc,#8b,#fe,#89,#03,#fd,#92
	db #ff,#fa,#8a,#ee,#8a,#ee,#90,#40
	db #00,#fe,#18,#fc,#81,#fa,#1a,#d6
	db #80,#ff,#d0,#98,#fa,#44,#ee,#e0
	db #ec,#e0,#fc,#70,#f2,#f8,#f6,#12
	db #ee,#10,#f7,#00,#80,#00,#80,#00
	db #80,#40,#80,#01,#fa,#fe,#fb,#c5
	db #d5,#00,#ff,#d6,#19,#fe,#57,#fd
	db #60,#fa,#c4,#ee,#60,#f2,#6c,#fc
	db #8b,#fa,#ee,#ff,#fa,#8a,#ee,#8a
	db #ee,#90,#00,#00,#00,#00,#00,#00
	db #00,#00,#cd,#a2,#f4,#00,#93,#ec
	db #d5,#b3,#04,#94,#53,#04,#d3,#c0
	db #00,#e8,#00,#00,#00,#00,#01,#00
	db #06,#e5,#00,#08,#05,#06,#7f,#07
	db #e4,#00,#ed,#0c,#f1,#43,#f4,#4c
	db #ac,#0a,#df,#8e,#00,#1f,#ff,#00
	db #1f,#00,#1f,#00,#1f,#00,#1f,#00
	db #1f,#00,#1f,#00,#1f,#00,#1f,#e1
	db #43,#1f,#00,#9b,#96,#9b,#03,#02
	db #02,#00,#fe,#09,#ff,#e8,#00,#e8
	db #06,#e2,#0c,#e2,#06,#c4,#18,#2e
	db #f4,#00,#85,#00,#85,#ff,#00,#85
	db #00,#85,#00,#85,#00,#85,#00,#85
	db #00,#85,#00,#85,#00,#85,#c0,#00
	db #85,#98,#85,#38,#ed,#00,#00,#00
	db #00,#01,#00,#31,#ef,#f5,#f7,#0c
	db #31,#fd,#1b,#ff,#ef,#07,#ee,#06
	db #f7,#30,#f4,#1b,#fa,#4b,#f7,#4b
	db #a8,#06,#00,#fe,#ff,#00,#fe,#00
	db #fe,#00,#fe,#00,#fe,#00,#fe,#00
	db #fe,#00,#fe,#00,#fe,#eb,#3e,#fe
	db #00,#7f,#b0,#7f,#31,#fe,#ce,#30
	db #fe,#d3,#eb,#d0,#ff,#e8,#e8,#fc
	db #cd,#fc,#06,#f0,#ff,#fc,#e5,#fa
	db #13,#ec,#07,#fa,#cd,#ff,#e4,#0f
	db #e8,#25,#be,#13,#f2,#dd,#3d,#03
	db #fa,#85,#f1,#80,#fd,#7d,#ff,#f5
	db #8d,#f0,#8b,#df,#89,#e8,#a4,#be
	db #92,#00,#74,#00,#74,#00,#74,#ff
	db #00,#74,#00,#74,#00,#74,#00,#74
	db #00,#74,#b4,#74,#00,#7f,#00,#7f
	db #80,#92,#7f,#00,#d8,#00,#00,#81
	db #00,#0e,#00,#80,#81,#80,#0d,#0f
	db #0f,#c3,#f1,#f7,#f6,#0c,#0d,#0c
	db #0b,#00,#fc,#1f,#f4,#0c,#ff,#ee
	db #06,#f6,#30,#fe,#1c,#f4,#12,#f4
	db #48,#a9,#06,#fa,#ba,#00,#03,#ff
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #f2,#43,#03,#fb,#3f,#00,#84,#b5
	db #84,#0d,#0f,#fe,#d1,#0e,#70,#0e
	db #eb,#d0,#e8,#e8,#fd,#cd,#0b,#0b
	db #0a,#09,#7f,#08,#fc,#cf,#f4,#03
	db #fd,#e5,#fa,#12,#eb,#06,#fa,#cd
	db #e5,#0f,#f7,#e8,#24,#be,#12,#f1
	db #dc,#3d,#03,#10,#fb,#86,#f1,#80
	db #fd,#7d,#ff,#fa,#92,#eb,#86,#f7
	db #59,#e8,#92,#e8,#a4,#be,#92,#00
	db #74,#00,#74,#ff,#00,#74,#00,#74
	db #00,#74,#00,#74,#00,#74,#00,#74
	db #b4,#74,#fd,#5f,#e0,#00,#82,#00
	db #82,#95,#82,#10,#fc,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#0f,#0f,#0b,#0e,#0d,#0d,#0c
	db #a6,#00,#0e,#a1,#60,#40,#00,#e0
	db #00,#7f,#00,#7f,#00,#7f,#0f,#0f
	db #0e,#0d,#0d,#77,#0c,#a6,#80,#00
	db #20,#e0,#df,#10,#00,#00,#00,#00
	db #00,#00,#d5,#00,#00,#81,#00,#0f
	db #f8,#80,#0e,#fe,#89,#0d,#fe,#8c
	db #7f,#0c,#fe,#8f,#c4,#80,#fa,#bf
	db #ee,#c8,#00,#86,#e4,#86,#fc,#fb
	db #ff,#fd,#00,#fd,#e3,#eb,#00,#be
	db #03,#b8,#21,#e2,#a5,#47,#09,#f9
	db #81,#ff,#fe,#7c,#fd,#7d,#fe,#54
	db #fe,#8f,#c4,#80,#fa,#bf,#ee,#c8
	db #00,#86,#ff,#7a,#86,#fd,#66,#00
	db #af,#ed,#0f,#fc,#7b,#fc,#82,#fe
	db #66,#fc,#88,#39,#0b,#0b,#be,#80
	db #ee,#c8,#fd,#c4,#0a,#09,#f9,#ea
	db #ff,#ac,#92,#44,#86,#f9,#01,#fe
	db #fa,#fd,#fb,#fd,#fd,#c3,#ff,#fa
	db #3f,#ff,#ee,#48,#fa,#57,#fd,#66
	db #a3,#0f,#00,#0c,#00,#0c,#ca,#6c
	db #fc,#fb,#83,#fe,#e6,#0b,#0b,#0a
	db #0a,#09,#fb,#0c,#f4,#02,#6d,#08
	db #fb,#1e,#f4,#14,#07,#fb,#30,#f4
	db #26,#06,#fb,#42,#b6,#f4,#38,#05
	db #fb,#54,#f4,#4a,#04,#fb,#66,#f4
	db #5c,#03,#a8,#e9,#78,#00,#d1,#90
	db #10,#d3,#c0,#0e,#c0,#00,#00,#7f
	db #00,#0d,#0d,#0c,#0c,#0b,#0b,#0f
	db #0a,#0a,#09,#09,#ee,#80,#c4,#80
	db #dc,#ce,#00,#9e,#9f,#fe,#f2,#0f
	db #0f,#fc,#f4,#d6,#00,#fa,#f8,#d0
	db #00,#00,#06,#df,#e3,#60,#fd,#4e
	db #10,#fb,#86,#fa,#80,#f4,#8c,#00
	db #86,#00,#86,#ff,#00,#86,#00,#86
	db #00,#86,#00,#86,#00,#86,#00,#86
	db #00,#86,#00,#86,#b7,#98,#86,#0e
	db #fe,#06,#fe,#04,#0b,#d6,#00,#c4
	db #18,#b8,#2a,#ff,#00,#fa,#00,#fa
	db #00,#fa,#00,#fa,#00,#fa,#b4,#fa
	db #fe,#00,#fd,#01,#ff,#d3,#ff,#c4
	db #1a,#b8,#2c,#00,#fc,#00,#fc,#00
	db #fc,#00,#fc,#bc,#fc,#f7,#00,#a0
	db #fd,#fb,#fd,#00,#fe,#05,#0d,#fd
	db #06,#fd,#f7,#fd,#0c,#b6,#fe,#11
	db #0b,#fd,#12,#fe,#17,#0a,#fd,#18
	db #fe,#1d,#09,#db,#fd,#1e,#fe,#23
	db #08,#fd,#24,#fe,#29,#07,#fd,#2a
	db #fe,#2f,#6d,#06,#fd,#30,#fe,#35
	db #05,#fd,#36,#fe,#3b,#04,#fd,#3c
	db #b6,#fe,#41,#03,#fd,#42,#fe,#47
	db #02,#fd,#48,#fe,#4d,#01,#b8,#fd
	db #4e,#00,#95,#54,#fd,#05,#d5,#c2
	db #24,#af,#a1,#00,#1e,#d1,#60,#28
	db #d1,#90,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#c0,#00,#3a
	db #3a,#00,#06,#00,#06,#00,#06,#00
	db #06,#fd,#00,#06,#c6,#06,#46,#46
	db #00,#fa,#1a,#fa,#9a,#9f,#12,#fb
	db #06,#ad,#ac,#00,#30,#fb,#60,#18
	db #fb,#66,#dc,#60,#35,#fb,#90,#7f
	db #1b,#fb,#96,#dc,#90,#40,#00,#f4
	db #ba,#f4,#14,#b2,#97,#fa,#4a,#fe
	db #dc,#eb,#f4,#7a,#d6,#1b,#00,#86
	db #00,#86,#00,#86,#40,#86,#11,#af
	db #a1,#06,#17,#d7,#66,#19,#cb,#90
	db #00,#06,#00,#06,#00,#06,#f4,#40
	db #06,#00,#85,#00,#85,#c6,#85,#24
	db #d3,#c0,#00,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#f0,#00
	db #00,#00,#00,#00,#00,#13,#00,#0e
	db #7f,#ff,#a2,#01,#d0,#00,#a0,#60
	db #00,#30,#00,#30,#00,#30,#6a,#30
	db #7f,#0c,#e9,#69,#be,#86,#d0,#80
	db #a0,#e0,#70,#b0,#00,#e8,#00,#e8
	db #f7,#00,#e8,#00,#e8,#00,#e8,#00
	db #e8,#0e,#71,#a1,#a0,#60,#28,#30
	db #7f,#27,#41,#09,#88,#70,#fa,#40
	db #00,#00,#86,#00,#fa,#7f,#dc,#7a
	db #ff,#dc,#98,#ee,#b0,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#fd,#00,#80,#00,#80,#5a,#80
	db #00,#85,#00,#85,#c6,#85,#0e,#d3
	db #93,#00,#00
;
.music_info
	db "Oldschool Intro 1 - Summer Edition (2020)(Vital-Motion)()",0
	db "",0

	read "music_end.asm"
