; Music of Croco Chanel 4 - LiquidSnake (2007)(Revival)(Plissken)(SMS)
; Ripped by Megachur the 22/08/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CROCOC4L.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2020
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
	db #00,#0e,#01,#2e,#00,#01,#f7,#02
	db #01,#1e,#03,#01,#1e,#04,#01,#5e
	db #04,#01,#8e,#05,#01,#aa,#05,#01
	db #df,#05,#01,#39,#07,#01,#80,#08
	db #01,#c9,#08,#01,#57,#09,#01,#73
	db #09,#01,#8f,#09,#ff,#ff,#ff,#ff
	db #ff,#ff,#46,#a3,#f2,#00,#48,#fe
	db #0f,#46,#45,#45,#fc,#0d,#fd,#0c
	db #fc,#fb,#14,#f8,#11,#f2,#21,#fe
	db #2e,#fd,#1a,#f7,#2c,#45,#54,#ed
	db #fa,#46,#f2,#01,#f9,#46,#3f,#fa
	db #62,#f9,#54,#6a,#de,#70,#60,#7e
	db #f3,#93,#f1,#84,#6b,#6b,#6a,#69
	db #68,#5a,#68,#e4,#93,#5e,#f3,#d2
	db #90,#00,#35,#f2,#50,#36,#8f,#fe
	db #5f,#35,#34,#34,#fc,#5d,#fd,#5c
	db #f9,#42,#f8,#72,#03,#40,#40,#3f
	db #3e,#3d,#3d,#eb,#26,#fb,#f6,#f5
	db #fe,#24,#e4,#6c,#e8,#81,#a1,#f1
	db #6a,#de,#30,#7e,#f3,#53,#81,#f1
	db #44,#6b,#6b,#6a,#69,#68,#68,#e4
	db #53,#6a,#5e,#f3,#92,#90,#c0,#35
	db #f2,#10,#36,#fe,#1f,#35,#3c,#34
	db #34,#fc,#1d,#fd,#1c,#f9,#02,#f8
	db #32,#40,#40,#05,#3f,#3e,#3d,#3d
	db #2d,#ec,#41,#2f,#f3,#56,#cd,#f9
	db #18,#eb,#2c,#3e,#3e,#fc,#7a,#fe
	db #7d,#3e,#fc,#79,#6d,#3f,#f9,#fb
	db #f9,#94,#4f,#fa,#9c,#eb,#8e,#42
	db #fa,#b8,#f7,#f9,#aa,#f2,#b8,#f9
	db #73,#f9,#c6,#38,#fa,#e2,#f9,#d4
	db #e4,#10,#df,#f9,#e2,#f5,#12,#37
	db #fe,#1e,#f1,#6b,#f3,#2f,#f2,#e2
	db #f9,#4a,#c0,#f2,#a3,#fe,#5f,#55
	db #54,#53,#52,#52,#53,#cf,#fe,#61
	db #fd,#62,#53,#5e,#f3,#6e,#f2,#54
	db #f2,#6e,#dd,#21,#a8,#eb,#3d,#46
	db #f2,#d0,#48,#fe,#df,#46,#45,#45
	db #ff,#fc,#dd,#fd,#dc,#fb,#e4,#f8
	db #e1,#f2,#f1,#fe,#fe,#fd,#ea,#f7
	db #fc,#ff,#fc,#04,#f5,#18,#f2,#c9
	db #f2,#bb,#ba,#d0,#fc,#86,#fd,#89
	db #f2,#41,#d6,#f9,#86,#f2,#39,#6a
	db #de,#b0,#7e,#f3,#d3,#f1,#c4,#6b
	db #05,#6b,#6a,#69,#68,#68,#e4,#d3
	db #5e,#f3,#12,#a8,#90,#40,#35,#f2
	db #90,#36,#fe,#9f,#35,#34,#34,#f0
	db #fc,#9d,#fd,#9c,#f9,#82,#f8,#b2
	db #40,#40,#3f,#3e,#3f,#3d,#3d,#eb
	db #66,#fb,#36,#fe,#64,#e4,#ac,#e8
	db #c1,#a1,#31,#58,#6a,#de,#70,#7e
	db #f3,#93,#f1,#84,#6b,#6b,#6a,#16
	db #69,#68,#68,#e4,#93,#5e,#f3,#d2
	db #90,#00,#35,#a3,#f2,#50,#36,#fe
	db #5f,#35,#34,#34,#fc,#5d,#fd,#5c
	db #c0,#f9,#42,#f8,#72,#40,#40,#3f
	db #3e,#3d,#3d,#5c,#2d,#ec,#81,#2f
	db #f3,#96,#f9,#58,#eb,#6c,#3e,#3e
	db #d6,#fc,#ba,#fe,#bd,#3e,#fc,#b9
	db #3f,#f9,#3b,#f9,#d4,#4f,#df,#fa
	db #dc,#eb,#ce,#42,#fa,#f8,#f9,#ea
	db #f2,#f8,#f9,#b3,#f9,#06,#7d,#38
	db #fa,#22,#f9,#14,#e4,#50,#f9,#22
	db #f5,#52,#37,#fe,#5e,#fc,#f1,#ab
	db #f3,#6f,#f2,#22,#f9,#8a,#f2,#e3
	db #fe,#9f,#55,#54,#0c,#53,#52,#52
	db #53,#fe,#a1,#fd,#a2,#53,#5e,#fa
	db #f3,#ae,#f2,#94,#f2,#ae,#dd,#61
	db #eb,#7d,#46,#f2,#10,#48,#8f,#fe
	db #1f,#46,#45,#45,#fc,#1d,#fd,#1c
	db #fb,#24,#f8,#21,#ff,#f2,#31,#fe
	db #3e,#fd,#2a,#f7,#3c,#fc,#44,#f5
	db #58,#f2,#09,#f2,#fb,#4b,#35,#d6
	db #80,#36,#36,#fe,#a9,#34,#fe,#af
	db #fb,#aa,#c7,#fe,#ae,#fa,#a9,#1a
	db #1a,#17,#fe,#c0,#f7,#c3,#f9,#bf
	db #f1,#ed,#bf,#fd,#e5,#fa,#e3,#dd
	db #88,#23,#23,#1f,#fe,#14,#ff,#fe
	db #17,#f4,#cd,#f7,#e7,#f2,#13,#f9
	db #2f,#e4,#3d,#00,#80,#01,#80,#fe
	db #fa,#4f,#fe,#5c,#fd,#60,#f7,#5a
	db #fe,#6a,#fc,#6d,#fe,#75,#7e,#a8
	db #fa,#7b,#86,#fa,#82,#8d,#f2,#89
	db #90,#90,#8d,#00,#8c,#89,#89,#48
	db #50,#58,#58,#69,#00,#71,#71,#82
	db #8b,#93,#9b,#a4,#ac,#00,#ac,#73
	db #7b,#83,#8c,#94,#94,#9c,#00,#ad
	db #b6,#be,#c6,#cf,#d7,#d7,#e5,#00
	db #f6,#07,#17,#28,#39,#39,#4a,#6b
	db #00,#7c,#8d,#9d,#ae,#ae,#d0,#e1
	db #f1,#04,#02,#13,#24,#24,#09,#fe
	db #f6,#3b,#4c,#00,#5d,#5d,#7e,#8f
	db #a0,#b1,#c1,#d2,#00,#d2,#f4,#04
	db #15,#26,#26,#47,#47,#00,#69,#7a
	db #8a,#9b,#ac,#bd,#bd,#de,#04,#ef
	db #00,#11,#21,#32,#f1,#f0,#00,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fd,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#45,#00,#01,#f2,#bc
	db #70,#02,#fd,#cb,#de,#ad,#f1,#f0
	db #a9,#be,#f3,#00,#d4,#f3,#0e,#eb
	db #00,#f2,#1c,#d6,#23,#f9,#68,#3e
	db #bf,#f3,#70,#9f,#f3,#7e,#eb,#70
	db #f2,#8c,#d6,#93,#f9,#d8,#00,#00
	db #df,#00,#00,#60,#00,#51,#f3,#80
	db #f2,#f4,#eb,#80,#f2,#9c,#cf,#87
	db #5f,#f9,#f3,#f0,#fd,#f3,#fe,#eb
	db #f0,#f2,#0c,#d6,#13,#f9,#58,#5f
	db #7a,#f3,#60,#bd,#f3,#6e,#eb,#60
	db #f2,#7c,#d6,#83,#f9,#c8,#55,#1b
	db #f3,#d0,#8d,#f3,#de,#0c,#f3,#ec
	db #86,#f3,#fa,#aa,#f2,#52,#7e,#f3
	db #16,#e1,#f3,#24,#70,#f3,#32,#a9
	db #be,#f3,#40,#d4,#f3,#4e,#eb,#40
	db #f2,#5c,#d6,#63,#f9,#a8,#3e,#bf
	db #f3,#b0,#9f,#f3,#be,#eb,#b0,#f2
	db #cc,#d6,#d3,#f9,#18,#00,#40,#df
	db #00,#40,#60,#40,#51,#f3,#c0,#f2
	db #34,#eb,#c0,#f2,#dc,#cf,#c7,#5f
	db #f9,#f3,#30,#fd,#f3,#3e,#eb,#30
	db #f2,#4c,#d6,#53,#f9,#98,#5f,#7a
	db #f3,#a0,#bd,#f3,#ae,#eb,#a0,#f2
	db #bc,#d6,#c3,#f9,#08,#55,#1b,#f3
	db #10,#8d,#f3,#1e,#0c,#f3,#2c,#86
	db #f3,#3a,#aa,#f2,#92,#7e,#f3,#56
	db #e1,#f3,#64,#70,#f3,#72,#a9,#be
	db #f3,#80,#d4,#f3,#8e,#eb,#80,#f2
	db #9c,#d6,#a3,#f9,#e8,#3e,#bf,#f3
	db #f0,#9f,#f3,#fe,#eb,#f0,#f2,#0c
	db #d6,#13,#f9,#58,#00,#80,#d5,#00
	db #80,#d0,#80,#1b,#f3,#90,#37,#c9
	db #9e,#f9,#f3,#d6,#50,#dd,#f3,#e4
	db #c2,#f3,#f2,#01,#bf,#f3,#00,#00
	db #f3,#0e,#eb,#00,#f2,#1c,#d6,#23
	db #e4,#15,#00,#15,#ff,#00,#15,#00
	db #15,#b8,#15,#90,#95,#90,#5d,#ac
	db #3d,#c1,#00,#5f,#60,#ff,#00,#71
	db #00,#71,#00,#71,#b8,#8d,#ac,#f1
	db #90,#9d,#ac,#7d,#c1,#40,#f7,#5f
	db #a0,#00,#b1,#00,#b1,#83,#b1,#02
	db #c9,#9e,#eb,#6d,#eb,#ea,#54,#b6
	db #f3,#00,#6a,#fa,#0e,#f9,#07,#35
	db #fa,#1c,#f9,#0e,#38,#fe,#fa,#2a
	db #f9,#1c,#f9,#2a,#f9,#23,#f2,#1c
	db #eb,#07,#f9,#68,#7e,#ed,#fa,#70
	db #f2,#69,#f9,#84,#3f,#fa,#8c,#f9
	db #85,#46,#fa,#9a,#7f,#4f,#fa,#a1
	db #f2,#9a,#f2,#b5,#f9,#93,#f2,#bd
	db #f2,#70,#00,#07,#d7,#00,#07,#67
	db #07,#70,#e5,#80,#86,#e5,#9c,#f2
	db #72,#d6,#72,#f6,#e4,#b8,#f9,#17
	db #f9,#6b,#f9,#0c,#6a,#ec,#21,#f2
	db #fe,#a9,#ab,#f3,#44,#d4,#f3,#52
	db #5e,#e5,#60,#bd,#e5,#7c,#f2,#44
	db #ab,#f2,#a5,#96,#e5,#b4,#8d,#e5
	db #d0,#9f,#e5,#ec,#f9,#ad,#eb,#f2
	db #01,#e4,#7c,#f9,#38,#54,#f3,#40
	db #6a,#fa,#4e,#f9,#47,#6f,#35,#fa
	db #5c,#f9,#4e,#38,#fa,#6a,#f9,#5c
	db #f9,#6a,#f9,#63,#ee,#f2,#5c,#eb
	db #47,#f9,#a8,#7e,#fa,#b0,#f2,#a9
	db #f9,#c4,#3f,#d7,#fa,#cc,#f9,#c5
	db #46,#fa,#da,#4f,#fa,#e1,#f2,#da
	db #f2,#f5,#fd,#f9,#d3,#f2,#fd,#f2
	db #b0,#00,#47,#00,#47,#67,#47,#70
	db #e5,#c0,#7f,#86,#e5,#dc,#f2,#b2
	db #d6,#b2,#e4,#f8,#f9,#57,#f9,#ab
	db #f9,#4c,#6a,#6a,#ec,#61,#f2,#3e
	db #a9,#f3,#84,#d4,#f3,#92,#5e,#ba
	db #e5,#a0,#bd,#e5,#bc,#f2,#84,#f2
	db #e5,#96,#e5,#f4,#8d,#bf,#e5,#10
	db #9f,#e5,#2c,#f9,#ed,#f2,#41,#e4
	db #bc,#f9,#78,#f9,#99,#d7,#f9,#56
	db #f9,#25,#70,#fa,#95,#35,#fa,#9c
	db #b3,#87,#f9,#4f,#55,#7e,#fa,#f7
	db #6a,#fa,#fe,#54,#fa,#05,#4f,#fa
	db #0c,#fb,#b3,#f7,#00,#80,#00,#80
	db #d0,#44,#f2,#82,#5e,#fa,#9e,#f9
	db #04,#70,#46,#fa,#ac,#c8,#97,#eb
	db #d6,#00,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#fc,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #12,#bf,#fe,#00,#00,#fd,#03,#f6
	db #00,#f9,#10,#f2,#03,#00,#0a,#00
	db #0a,#ff,#00,#0a,#00,#0a,#00,#0a
	db #00,#0a,#00,#0a,#00,#0a,#00,#0a
	db #00,#0a,#ff,#00,#0a,#00,#0a,#00
	db #0a,#93,#0a,#f8,#88,#f6,#78,#cc
	db #97,#f2,#93,#c0,#ee,#e6,#f9,#dd
	db #30,#27,#30,#38,#fc,#02,#28,#18
	db #fb,#02,#fe,#00,#fb,#0f,#eb,#f7
	db #07,#ed,#02,#f8,#1c,#28,#f4,#17
	db #18,#fd,#46,#fd,#30,#ff,#fe,#49
	db #f2,#3a,#fa,#4f,#fc,#49,#fd,#4b
	db #f2,#16,#f9,#39,#fa,#63,#ff,#f2
	db #38,#f7,#85,#df,#2c,#f9,#af,#dc
	db #70,#89,#08,#f9,#ef,#d0,#86,#ff
	db #fe,#88,#fe,#97,#5b,#ba,#eb,#b3
	db #de,#74,#f9,#06,#5e,#9d,#f9,#af
	db #ff,#b3,#46,#e5,#1f,#f8,#e6,#f3
	db #0a,#f9,#95,#b3,#8e,#e4,#6b,#f7
	db #0c,#ff,#e6,#3c,#f9,#1c,#ea,#e9
	db #fa,#59,#e4,#79,#eb,#05,#f9,#6e
	db #f0,#0c,#df,#e6,#85,#e4,#67,#28
	db #f8,#3e,#fa,#54,#f2,#3e,#e5,#d8
	db #f8,#08,#ff,#fa,#a9,#fe,#17,#f9
	db #bd,#fa,#1f,#f6,#a0,#fd,#24,#f9
	db #2b,#cf,#d0,#ff,#f2,#b4,#f2,#9f
	db #f2,#39,#f9,#24,#f8,#16,#f2,#56
	db #f9,#79,#fa,#a3,#ff,#f1,#c9,#f8
	db #c6,#df,#6c,#f2,#08,#e3,#b7,#89
	db #48,#f9,#2f,#d0,#c6,#ff,#fe,#c8
	db #fe,#d7,#5b,#fa,#eb,#f3,#de,#b4
	db #f9,#46,#5e,#dd,#f9,#ef,#ff,#b3
	db #86,#e5,#5f,#f8,#26,#f3,#4a,#f9
	db #d5,#b3,#ce,#e4,#ab,#f7,#4c,#ff
	db #e6,#7c,#f9,#5c,#ea,#29,#fa,#99
	db #e4,#b9,#eb,#45,#f9,#ae,#f0,#4c
	db #df,#e6,#c5,#e4,#a7,#28,#f8,#7e
	db #fa,#94,#f2,#7e,#e5,#18,#f8,#48
	db #ff,#fa,#e9,#fe,#57,#f9,#fd,#fa
	db #5f,#f6,#e0,#fd,#64,#f9,#6b,#eb
	db #48,#ff,#eb,#d1,#fe,#40,#ed,#90
	db #f9,#64,#fe,#09,#fe,#c7,#fc,#5a
	db #f9,#65,#df,#f8,#c0,#fa,#cf,#10
	db #fb,#03,#f9,#d4,#dd,#80,#f8,#cd
	db #fe,#41,#ff,#fc,#ff,#f2,#cd,#dc
	db #13,#d0,#e3,#00,#a3,#24,#a3,#f9
	db #58,#f9,#86,#ff,#f0,#58,#f9,#06
	db #fb,#14,#f9,#7b,#f9,#66,#fb,#8b
	db #f7,#09,#e9,#97,#ff,#f8,#96,#fa
	db #8c,#f2,#bc,#fd,#d7,#f0,#cd,#fb
	db #e4,#f9,#ef,#f7,#db,#0d,#05,#0d
	db #0b,#0a,#09,#08,#ce,#05,#00,#f3
	db #38,#30,#0d,#0c,#fb,#02,#fd,#4a
	db #07,#07,#05,#05,#bb,#f5,#46,#06
	db #ef,#52,#fa,#01,#f6,#3f,#0b,#f3
	db #74,#fe,#73,#ff,#fe,#82,#f9,#62
	db #f2,#3f,#eb,#38,#dc,#af,#83,#01
	db #ed,#18,#fe,#54,#dd,#eb,#18,#e7
	db #a1,#0a,#e1,#a6,#83,#e1,#fd,#22
	db #0b,#f3,#34,#ff,#fc,#6f,#f1,#b2
	db #e8,#89,#e8,#57,#74,#b2,#ed,#d8
	db #fe,#14,#e2,#68,#7d,#0c,#fc,#44
	db #eb,#84,#f9,#64,#eb,#d1,#f6,#5d
	db #0b,#f1,#f8,#fb,#fe,#95,#ea,#fb
	db #e8,#ab,#9b,#f1,#f5,#1a,#0a,#e9
	db #54,#e4,#79,#fe,#eb,#05,#e4,#44
	db #d5,#98,#fa,#f1,#cf,#d6,#eb,#13
	db #fd,#1a,#07,#17,#07,#05,#05,#f5
	db #16,#06,#ef,#22,#8a,#d1,#f6,#7f
	db #7f,#0b,#f3,#b4,#fe,#b3,#fe,#c2
	db #f9,#a2,#f2,#7f,#eb,#78,#dc,#ef
	db #fb,#83,#41,#ed,#58,#fe,#94,#eb
	db #58,#e7,#e1,#0a,#e1,#e6,#83,#21
	db #bf,#fd,#62,#0b,#f3,#74,#fc,#af
	db #f1,#f2,#e8,#c9,#e8,#97,#74,#f2
	db #ef,#ed,#18,#fe,#54,#e2,#a8,#0c
	db #fc,#84,#eb,#c4,#f9,#a4,#eb,#11
	db #bf,#f6,#9d,#0b,#f1,#38,#fe,#d5
	db #ea,#3b,#e8,#eb,#9b,#31,#f5,#5a
	db #7f,#0a,#e9,#94,#e4,#b9,#eb,#45
	db #e4,#84,#d5,#d8,#fa,#31,#cf,#16
	db #c2,#eb,#53,#fd,#5a,#07,#07,#05
	db #05,#f5,#56,#06,#ff,#ef,#62,#fa
	db #11,#dd,#a7,#eb,#a9,#fe,#a0,#fd
	db #c0,#f0,#b6,#ed,#bf,#ff,#f7,#e6
	db #dd,#80,#f2,#cd,#f2,#e2,#ed,#13
	db #e2,#3b,#00,#80,#01,#80,#fc,#e4
	db #5e,#fb,#3c,#fe,#33,#f2,#7b,#f1
	db #6d,#fe,#8b,#0a,#08,#01,#07,#07
	db #05,#04,#03,#02,#01,#fe,#a9,#fb
	db #fd,#9e,#fe,#8e,#fe,#a2,#f4,#a5
	db #fe,#a3,#06,#fa,#b4,#c8,#43,#0e
	db #00,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#07,#06,#06,#05,#04,#03,#dd
	db #00,#e4,#1c,#e4,#2a,#ff,#c8,#5b
	db #00,#31,#00,#31,#00,#31,#d4,#31
	db #dd,#95,#cf,#c6,#9e,#41,#ff,#90
	db #13,#82,#e5,#90,#91,#00,#71,#00
	db #71,#00,#71,#d4,#71,#dd,#d5,#ff
	db #cf,#06,#9e,#81,#90,#53,#82,#25
	db #90,#d1,#00,#b1,#00,#b1,#60,#b1
	db #80,#c1,#b3,#0a,#02,#0a,#09,#08
	db #08,#07,#06,#fd,#06,#05,#1f,#05
	db #04,#04,#dd,#00,#ba,#0e,#00,#07
	db #00,#07,#00,#07,#f7,#f0,#69,#fe
	db #7c,#ed,#88,#a5,#80,#00,#fa,#f7
	db #eb,#f0,#eb,#0c,#ff,#eb,#05,#e4
	db #f7,#f2,#4b,#74,#87,#c1,#f7,#eb
	db #01,#fd,#46,#fe,#ce,#3f,#04,#04
	db #dd,#40,#ba,#4e,#00,#47,#00,#47
	db #00,#47,#f0,#a9,#ef,#fe,#bc,#ed
	db #c8,#a5,#c0,#00,#fa,#37,#eb,#30
	db #eb,#4c,#eb,#45,#ff,#e4,#37,#f2
	db #8b,#74,#c7,#c1,#37,#dd,#41,#f2
	db #8e,#fd,#9f,#fc,#f9,#b3,#eb,#a3
	db #06,#fe,#bf,#fe,#bd,#04,#04,#eb
	db #bf,#fd,#da,#5f,#03,#fe,#de,#02
	db #f2,#db,#00,#80,#00,#80,#60,#80
	db #dd,#89,#94,#fb,#b2,#01,#01,#eb
	db #b3,#00,#d0,#cf,#00,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#fc,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#00,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#fc,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#fc,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#f1,#0a,#2b,#c4,#0a,#14,#d8
	db #00,#0a,#c2,#04,#0a,#e8,#00,#14
	db #c7,#be,#00,#be,#62,#be,#c4,#b7
	db #26,#e8,#00,#24,#ce,#02,#21,#c4
	db #00,#13,#ca,#00,#4d,#d4,#02,#5b
	db #00,#69,#c1,#00,#6e,#ca,#00,#00
	db #ca,#0a,#01,#c6,#00,#24,#02,#8b
	db #c7,#04,#72,#c1,#00,#79,#c6,#00
	db #9d,#d1,#02,#0f,#c3,#02,#0f,#c3
	db #02,#1f,#c3,#02,#1f,#c3,#02,#27
	db #c3,#02,#2f,#c3,#02,#37,#c3,#02
	db #3f,#c3,#02,#47,#c3,#02,#4f,#c3
	db #02,#57,#c3,#02,#5f,#c3,#02,#67
	db #c3,#02,#6f,#ff,#c1,#00,#40,#c1
	db #0c,#24,#c6,#00,#15,#00,#4d,#06
	db #17,#c4,#04,#58,#c3,#02,#1d,#c2
	db #00,#15,#02,#6a,#04,#7e,#c2,#02
	db #80,#c1,#16,#80,#c0,#04,#80,#c0
	db #00,#a1,#c1,#02,#23,#c2,#14,#84
	db #c0,#04,#84,#c0,#0e,#84,#cd,#14
	db #36,#c1,#0a,#96,#18,#27,#00,#f3
	db #0c,#29,#c1,#1e,#a8,#00,#7b,#04
	db #19,#03,#17,#f3,#04,#2c,#c3,#0a
	db #2a,#d5,#00,#38,#c3,#06,#34,#c8
	db #0c,#32,#cd,#00,#57,#c1,#02,#86
	db #d4,#00,#11,#d6,#00,#0c,#e4,#00
	db #08,#cc,#02,#07,#02,#0b,#c4,#0a
	db #2a,#cd,#00,#0c,#c0,#00,#0c,#c4
	db #00,#12,#e0,#02,#62,#01,#47,#c0
	db #03,#3c,#c5,#00,#19,#c0,#01,#c6
	db #c6,#00,#02,#00,#07,#02,#02,#cf
	db #00,#72,#c7,#be,#00,#be,#62,#82
	db #c4,#de,#03,#29,#01,#80,#c1,#02
	db #24,#ea,#bf,#5f,#3f,#c1,#eb,#04
	db #00,#ff,#ee,#04,#3c,#d0,#00,#3c
	db #c9,#02,#3c,#ff,#e4,#00,#f3,#f0
	db #06,#be,#cc,#00,#fa,#c8,#02,#fa
	db #c0,#00,#fb,#cb,#01,#38,#0b,#37
	db #c0,#02,#fb,#09,#37,#c0,#01,#38
	db #0d,#37,#c0,#03,#38,#07,#37,#ff
	db #c9,#02,#fb,#d7,#03,#ef,#01,#72
	db #ff,#ff,#ff,#d0,#18,#00,#c0,#0e
	db #10,#ff,#f3,#00,#66,#cb,#00,#66
	db #dd,#00,#66,#cb,#00,#66,#cb,#00
	db #66,#d5,#00,#cd,#c3,#02,#aa,#c3
	db #00,#cd,#c1,#0e,#ac,#db,#0b,#02
	db #c5,#00,#04,#ce,#02,#01,#ff,#ff
	db #ff,#ff,#f9,#01,#76,#d2,#18,#00
	db #c0,#0e,#10,#d3,#02,#04,#12,#03
	db #08,#10,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#f2,#00,#72,#eb,#00,#94,#ca
	db #02,#90,#de,#03,#63,#cc,#02,#e4
	db #f4,#01,#1d,#da,#03,#4b,#c3,#00
	db #23,#ca,#02,#01,#d0,#02,#01,#d9
	db #01,#93,#cf,#02,#01,#d0,#01,#48
	db #cd,#00,#2d,#c4,#02,#01,#ff,#cc
	db #18,#00,#c0,#0e,#10,#c1,#38,#1e
	db #c0,#36,#3d,#ff,#21,#01,#40,#36
	db #e9,#2b,#36,#e1,#eb,#cd,#00,#40
	db #01,#71,#f2,#09,#e5,#01,#b8,#0b
	db #09,#fd,#21,#6d,#ff,#3e,#0f,#ed
	db #fc,#86,#47,#38,#15,#e5,#6e,#4f
	db #e6,#01,#67,#a9,#0f,#d6,#fd,#4f
	db #7b,#9d,#6f,#7a,#9c,#67,#ed,#b0
	db #e1,#23,#7e,#23,#fe,#c0,#38,#e5
	db #fd,#2c,#28,#0e,#d6,#bf,#4f,#7e
	db #fe,#c0,#23,#e3,#ed,#b0,#e3,#38
	db #d4,#30,#ed,#7c,#3d,#4f,#fd,#7c
	db #e6,#c0,#27,#fd,#8c,#c6,#da,#fd
	db #67,#79,#fd,#2f,#30,#de,#c1,#e0
	db #00,#00
;	org #2856
;	ld bc,#7fc4
;	out (c),c
;	call #4000
;	ld bc,#7fc0
;	out (c),c
;
;	org #2a74
;	ld bc,#7fc4
;	out (c),c
;	call #4003
;	ld bc,#7fc0
;	out (c),c
;
.music_info
	db "Croco Chanel 4 - LiquidSnake (2007)(Revival)(Plissken)",0
	db "SMS",0

	read "music_end.asm"
