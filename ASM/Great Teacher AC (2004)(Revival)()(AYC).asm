; Music of Great Teacher AC (2004)(Revival)()(AYC)
; Ripped by Megachur the 28/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GREATTEA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 04
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
	ld hl,l4246		; reinit music
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
	db #00
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
	db #00,#00,#21,#00,#00,#4d,#16,#00
	db #3a,#01,#00,#5f,#b7,#ed,#52,#22
	db #02,#00,#3d
.l475d equ $ + 3
.l475b equ $ + 1
.l475a
	db #0e,#00,#48,#c0,#04,#c4,#01,#c8
	db #04,#c5,#01,#d0,#04,#c6,#01,#c7
	db #01,#cc,#01,#cd,#01,#ce,#01,#cf
	db #01,#d4,#01,#d5,#01,#d6,#01,#d7
	db #01,#d8,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4800 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#e5,#1c
	db #04,#2e,#00,#04,#3d,#02,#04,#63
	db #03,#01,#63,#06,#04,#c8,#06,#01
	db #f2,#0a,#01,#67,#0b,#01,#2d,#0c
	db #04,#de,#0e,#01,#bb,#0f,#01,#6e
	db #11,#04,#22,#13,#04,#09,#14,#01
	db #63,#14,#ff,#ff,#ff,#ff,#ff,#ff
	db #7b,#07,#7b,#7b,#51,#18,#47,#d9
	db #05,#00,#01,#03,#00,#ee,#2b,#01
	db #01,#0c,#d4,#d4,#b3,#d4,#51,#51
	db #f2,#3e,#01,#ff,#e4,#29,#01,#f8
	db #6e,#01,#fa,#54,#01,#f2,#53,#01
	db #f9,#7d,#01,#dd,#68,#01,#c7,#61
	db #01,#ec,#e0,#01,#f8,#a5,#84,#01
	db #ea,#33,#02,#f3,#42,#02,#eb,#02
	db #02,#f2,#8e,#02,#7b,#38,#d4,#fd
	db #f5,#a5,#02,#f9,#a3,#02,#fc,#9c
	db #02,#f6,#bb,#02,#f9,#b1,#02,#aa
	db #a3,#02,#ee,#ee,#23,#03,#1f,#7b
	db #38,#0c,#ee,#38,#03,#80,#a3,#02
	db #eb,#38,#03,#eb,#23,#03,#01,#a5
	db #02,#ff,#5b,#a4,#03,#f2,#22,#01
	db #fa,#9f,#01,#f1,#83,#01,#f3,#a0
	db #01,#dc,#9f,#01,#f2,#37,#01,#fb
	db #f4,#01,#ef,#f0,#d6,#01,#f4,#f4
	db #01,#db,#f2,#01,#1c,#f5,#41,#02
	db #f9,#3f,#02,#f0,#2a,#02,#f4,#48
	db #02,#e3,#db,#46,#02,#01,#45,#01
	db #c2,#44,#02,#d4,#51,#51,#f2,#ce
	db #03,#56,#93,#02,#7f,#66,#f5,#8d
	db #00,#f9,#8b,#00,#f0,#76,#00,#f4
	db #94,#00,#db,#92,#00,#ac,#67,#03
	db #01,#e5,#03,#f8,#c2,#e4,#00,#e8
	db #d2,#03,#f2,#83,#02,#f9,#44,#02
	db #eb,#83,#02,#7b,#38,#6a,#fc,#fc
	db #b6,#02,#f0,#91,#02,#f4,#b6,#02
	db #f2,#aa,#01,#f2,#bf,#01,#eb,#d7
	db #02,#7b,#38,#7e,#86,#fc,#0a,#03
	db #f0,#e5,#02,#f4,#0a,#03,#f2,#5e
	db #03,#f2,#3d,#02,#eb,#2b,#03,#7b
	db #3f,#38,#77,#fc,#5e,#03,#f0,#39
	db #03,#f4,#5e,#03,#f2,#b2,#03,#f2
	db #17,#01,#eb,#7f,#03,#1f,#7b,#38
	db #8e,#fc,#b2,#03,#f0,#8d,#03,#f4
	db #b2,#03,#01,#83,#02,#c0,#82,#03
	db #ff,#e8,#72,#02,#b1,#3a,#01,#d6
	db #31,#02,#d6,#79,#01,#fa,#61,#00
	db #fa,#d2,#01,#f2,#5f,#00,#f7,#bd
	db #01,#ff,#f3,#d4,#01,#dc,#d3,#01
	db #e9,#5b,#02,#f4,#0e,#02,#f4,#28
	db #02,#db,#26,#02,#01,#25,#01,#c2
	db #24,#02,#e3,#01,#12,#01,#01,#11
	db #02,#4d,#10,#03,#51,#18,#47,#ee
	db #65,#02,#f8,#5c,#02,#ff,#f9,#7f
	db #02,#fa,#64,#02,#f2,#63,#02,#f9
	db #8d,#02,#dd,#78,#02,#c7,#71,#02
	db #ec,#f0,#02,#a5,#94,#02,#ff,#ea
	db #43,#03,#f3,#52,#03,#eb,#12,#03
	db #01,#55,#02,#a1,#54,#03,#aa,#13
	db #01,#d6,#2f,#01,#f4,#93,#01,#ff
	db #f7,#98,#01,#f4,#e7,#01,#f7,#ec
	db #01,#82,#05,#01,#eb,#98,#01,#eb
	db #83,#01,#01,#05,#01,#af,#04,#02
	db #7b,#8e,#f5,#a5,#03,#f9,#a3,#03
	db #f0,#64,#03,#f9,#ac,#03,#9f,#f5
	db #cf,#03,#f9,#cd,#03,#fe,#f0,#b8
	db #03,#f9,#d6,#03,#f5,#e5,#03,#fd
	db #ef,#03,#fb,#00,#00,#f0,#e2,#03
	db #f9,#15,#00,#bd,#ff,#f5,#23,#00
	db #f9,#21,#00,#f0,#0c,#00,#f9,#2a
	db #00,#58,#a5,#03,#82,#fd,#02,#d6
	db #49,#01,#d6,#cb,#00,#f0,#82,#9d
	db #01,#01,#a5,#03,#01,#a4,#00,#5e
	db #a3,#01,#01,#9d,#fd,#00,#00,#02
	db #05,#d9,#05,#00,#01,#03,#00,#ed
	db #17,#01,#00,#fd,#3f,#01,#ff,#fd
	db #01,#00,#f2,#3f,#01,#e4,#2a,#01
	db #f9,#6f,#01,#fa,#54,#01,#f2,#53
	db #01,#f8,#76,#01,#de,#69,#01,#ff
	db #c7,#61,#01,#ec,#e0,#01,#a5,#84
	db #01,#ea,#33,#02,#f3,#42,#02,#ea
	db #02,#02,#f1,#46,#01,#fc,#9d,#02
	db #ff,#f8,#a8,#02,#f9,#a3,#02,#fb
	db #9c,#02,#ef,#a8,#02,#9f,#a4,#02
	db #f7,#13,#03,#ef,#69,#02,#7e,#a1
	db #02,#ff,#df,#38,#03,#f2,#bb,#03
	db #01,#aa,#02,#60,#a9,#03,#f2,#22
	db #01,#fa,#a0,#01,#eb,#79,#00,#d5
	db #98,#01,#ff,#01,#45,#01,#19,#44
	db #02,#ef,#cc,#03,#57,#94,#02,#82
	db #e9,#02,#2e,#6b,#02,#6a,#8d,#00
	db #e9,#d3,#03,#ff,#f1,#83,#02,#ec
	db #50,#01,#d4,#83,#02,#f3,#62,#02
	db #f3,#14,#02,#ea,#d7,#02,#f2,#d1
	db #02,#eb,#4c,#02,#ff,#01,#84,#02
	db #18,#83,#03,#e9,#73,#02,#b1,#3a
	db #01,#ac,#4f,#01,#ac,#dd,#01,#ac
	db #f7,#01,#01,#25,#01,#f7,#c1,#4a
	db #03,#01,#13,#01,#01,#12,#02,#4c
	db #11,#03,#05,#ee,#65,#02,#f8,#5c
	db #02,#f8,#41,#02,#ff,#fa,#73,#02
	db #f3,#64,#02,#f8,#86,#02,#de,#79
	db #02,#c7,#71,#02,#ec,#f0,#02,#a5
	db #94,#02,#ea,#43,#03,#ff,#f3,#52
	db #03,#ea,#12,#03,#01,#56,#02,#a0
	db #55,#03,#76,#15,#01,#f1,#2b,#02
	db #f1,#cc,#00,#82,#05,#01,#ff,#df
	db #98,#01,#f2,#1b,#02,#01,#0a,#01
	db #2a,#09,#02,#01,#b1,#03,#01,#b4
	db #03,#01,#b7,#03,#01,#ba,#03,#80
	db #3a,#0d,#00,#47,#04,#47,#47,#32
	db #35,#6a,#fc,#05,#00,#43,#47,#47
	db #8e,#fc,#0c,#00,#64,#6a,#d4,#fc
	db #13,#00,#f9,#0a,#00,#01,#03,#00
	db #f6,#01,#06,#00,#7a,#01,#02,#fd
	db #00,#00,#fc,#a5,#02,#4f,#fa,#aa
	db #02,#f9,#a3,#02,#43,#ed,#fa,#b8
	db #02,#eb,#a3,#02,#a5,#aa,#02,#59
	db #fa,#2f,#03,#f2,#28,#03,#5e,#fa
	db #44,#03,#d7,#f9,#3d,#03,#fb,#51
	db #03,#5a,#fd,#54,#03,#58,#e7,#54
	db #03,#fb,#89,#02,#f9,#79,#03,#03
	db #6b,#6a,#6a,#69,#68,#69,#e8,#7f
	db #03,#fb,#9e,#02,#81,#f9,#a3,#03
	db #8f,#8e,#8e,#8d,#8c,#8d,#e8,#a9
	db #03,#f1,#d6,#75,#03,#01,#a3,#02
	db #a8,#a2,#03,#f8,#49,#01,#46,#46
	db #46,#e8,#4d,#01,#ee,#f2,#9b,#00
	db #f9,#86,#00,#fb,#81,#01,#50,#f8
	db #70,#00,#f2,#55,#00,#f8,#9d,#01
	db #42,#38,#42,#42,#f6,#60,#00,#f2
	db #4a,#01,#f2,#7b,#01,#4f,#4f,#4e
	db #fd,#fc,#ca,#01,#f4,#6d,#01,#eb
	db #c1,#01,#e2,#ef,#01,#f9,#94,#00
	db #fb,#1b,#02,#5f,#f1,#9a,#00,#ff
	db #e4,#7b,#01,#d8,#ba,#01,#f7,#b7
	db #00,#eb,#54,#02,#01,#43,#01,#5b
	db #42,#02,#d5,#32,#03,#d7,#19,#01
	db #40,#77,#f5,#8b,#00,#78,#77,#77
	db #76,#75,#76,#ff,#e8,#95,#00,#eb
	db #b9,#03,#eb,#c2,#00,#d6,#37,#00
	db #f2,#30,#00,#f9,#ba,#00,#f9,#6a
	db #03,#f2,#17,#01,#bf,#d7,#62,#00
	db #69,#dd,#e3,#03,#f9,#38,#01,#f9
	db #ef,#02,#eb,#09,#01,#ef,#bc,#00
	db #c4,#bc,#03,#f4,#eb,#b1,#01,#eb
	db #8b,#00,#e4,#b1,#01,#dd,#25,#01
	db #70,#f6,#59,#02,#71,#71,#04,#71
	db #70,#6f,#6f,#6f,#e8,#63,#02,#23
	db #47,#08,#59,#8e,#8e,#8e,#dc,#85
	db #02,#2c,#59,#6a,#10,#b3,#b3,#b3
	db #f8,#af,#02,#27,#4f,#5e,#9f,#30
	db #9f,#9f,#f8,#bd,#02,#f2,#83,#02
	db #21,#43,#4f,#86,#3f,#86,#86,#f1
	db #d9,#02,#eb,#83,#02,#f2,#bb,#02
	db #f9,#0b,#03,#f4,#ad,#02,#eb,#01
	db #03,#81,#e2,#33,#03,#2f,#5e,#77
	db #bd,#bd,#bd,#f8,#57,#03,#ff,#d6
	db #ad,#02,#d8,#fa,#02,#f7,#b1,#03
	db #eb,#94,#03,#01,#83,#02,#af,#82
	db #03,#f9,#0e,#01,#f9,#f9,#00,#e0
	db #f9,#a5,#00,#eb,#2a,#01,#dd,#23
	db #01,#4f,#9f,#bd,#3e,#3e,#00,#3e
	db #bd,#47,#8e,#b3,#1c,#1c,#1c,#71
	db #b3,#b3,#77,#01,#f9,#62,#01,#b3
	db #cb,#01,#2f,#5e,#70,#fd,#6c,#01
	db #75,#70,#b3,#1f,#02,#01,#23,#01
	db #af,#22,#02,#47,#fa,#c3,#03,#4f
	db #fa,#ca,#03,#bb,#f9,#c3,#03,#43
	db #fa,#d8,#03,#eb,#c3,#03,#a5,#ca
	db #03,#59,#fa,#4f,#00,#f2,#48,#00
	db #75,#5e,#fa,#64,#00,#f9,#5d,#00
	db #fb,#71,#00,#5a,#fd,#74,#00,#58
	db #e7,#74,#00,#40,#6a,#f5,#95,#00
	db #6b,#6a,#6a,#69,#68,#69,#e0,#e8
	db #9f,#00,#fd,#de,#00,#f7,#c1,#00
	db #8f,#8e,#8e,#8d,#8c,#7e,#8d,#e8
	db #c9,#00,#d6,#95,#00,#01,#c3,#03
	db #ae,#c2,#00,#fa,#15,#03,#dd,#66
	db #02,#59,#07,#b3,#d4,#66,#66,#66
	db #f8,#8f,#02,#f9,#c0,#02,#f9,#9e
	db #02,#81,#f2,#63,#02,#43,#86,#9f
	db #0c,#0c,#0c,#f1,#b9,#02,#fc,#eb
	db #63,#02,#f2,#9b,#02,#f9,#eb,#02
	db #f4,#8d,#02,#eb,#e1,#02,#e2,#13
	db #03,#5e,#bd,#0f,#ee,#7b,#7b,#7b
	db #f8,#37,#03,#d6,#8d,#02,#d8,#da
	db #02,#f7,#91,#03,#fe,#eb,#74,#03
	db #01,#63,#02,#ae,#62,#03,#01,#14
	db #01,#af,#13,#02,#01,#04,#01,#b0
	db #03,#02,#38,#20,#3b,#77,#f3,#a5
	db #03,#76,#76,#76,#77,#77,#13,#3b
	db #3f,#7e,#ee,#ba,#03,#43,#47,#f4
	db #4f,#03,#fd,#74,#03,#62,#8d,#fd
	db #70,#03,#c1,#a3,#03,#47,#4b,#96
	db #f3,#23,#00,#95,#0c,#95,#95,#96
	db #96,#ac,#cd,#03,#97,#e2,#03,#4b
	db #4f,#44,#9f,#f3,#f5,#00,#9e,#9e
	db #9e,#ce,#fe,#00,#4f,#54,#47,#a8
	db #fc,#3a,#01,#59,#5e,#bd,#fc,#41
	db #01,#f9,#38,#01,#c7,#4c,#01,#1f
	db #64,#6a,#d4,#ee,#88,#01,#eb,#de
	db #00,#eb,#a8,#01,#e5,#9b,#01,#f9
	db #c9,#00,#ff,#f9,#46,#01,#eb,#c9
	db #00,#d5,#fb,#01,#f9,#3f,#01,#f2
	db #34,#02,#01,#a3,#03,#01,#a2,#00
	db #5e,#a1,#01,#00,#47,#47,#00,#ff
	db #01,#00,#01,#00,#01,#ff,#01,#fe
	db #01,#fd,#01,#fc,#01,#fb,#01,#fa
	db #fd,#01,#f9,#01,#f8,#01,#f7,#01
	db #f6,#01,#f5,#81,#f3,#01,#fe,#73
	db #ff,#a8,#6f,#0b,#cd,#f9,#c7,#ac
	db #c3,#01,#1a,#01,#1d,#01,#1c,#b5
	db #1a,#7f,#01,#fe,#66,#db,#65,#f2
	db #64,#d6,#8e,#fa,#c2,#ca,#b7,#d5
	db #63,#ff,#f6,#b0,#8d,#8f,#e2,#95
	db #e8,#1f,#8e,#38,#d5,#b3,#f6,#00
	db #8d,#df,#ff,#f4,#e5,#01,#03,#01
	db #05,#01,#04,#01,#03,#01,#02,#01
	db #01,#01,#00,#80,#1a,#ff,#54,#88
	db #fa,#00,#00,#32,#35,#6a,#fc,#09
	db #00,#43,#47,#8e,#8f,#fc,#10,#00
	db #64,#6a,#d4,#fc,#17,#00,#f9,#0e
	db #00,#01,#07,#00,#cf,#06,#01,#08
	db #70,#77,#59,#77,#b0,#54,#01,#64
	db #6a,#4f,#42,#6a,#b0,#a8,#01,#59
	db #5e,#47,#5e,#5c,#fc,#01,#54,#23
	db #59,#b3,#fc,#a5,#02,#59,#5e,#bd
	db #fc,#ac,#02,#f9,#a3,#02,#1f,#4b
	db #4f,#9f,#fc,#ba,#02,#eb,#a3,#02
	db #a5,#aa,#02,#f9,#49,#01,#f2,#28
	db #03,#1c,#70,#77,#ee,#fc,#46,#03
	db #f9,#3d,#03,#dd,#51,#03,#86,#8e
	db #44,#1c,#f3,#77,#03,#1b,#1b,#1b
	db #e9,#80,#03,#a8,#b3,#47,#66,#f3
	db #a1,#03,#65,#65,#65,#e9,#aa,#03
	db #d6,#75,#03,#01,#a3,#02,#d1,#af
	db #a2,#03,#f7,#3b,#01,#47,#f2,#4c
	db #01,#46,#46,#46,#e8,#56,#01,#44
	db #59,#f5,#76,#01,#5a,#59,#4f,#f5
	db #84,#01,#50,#4f,#a3,#f2,#4d,#01
	db #43,#f2,#a0,#01,#42,#42,#42,#fd
	db #ac,#01,#eb,#4c,#01,#8f,#f2,#84
	db #01,#4f,#4f,#4e,#fc,#d3,#01,#f4
	db #76,#01,#eb,#ca,#01,#e2,#f8,#01
	db #4d,#5e,#f5,#1e,#02,#5f,#5e,#d6
	db #76,#01,#d8,#c3,#01,#5a,#fd,#7b
	db #02,#7a,#58,#fc,#7b,#02,#f4,#5d
	db #02,#eb,#72,#02,#eb,#a0,#02,#6a
	db #f5,#bd,#02,#6b,#3a,#6a,#6a,#f3
	db #1e,#02,#e4,#2c,#02,#e4,#6b,#02
	db #59,#f2,#1e,#02,#5e,#3d,#5e,#5d
	db #fc,#1b,#03,#f3,#bd,#02,#eb,#12
	db #03,#e4,#41,#03,#77,#f5,#65,#03
	db #38,#78,#77,#d6,#bd,#02,#e4,#0a
	db #03,#f1,#73,#03,#69,#68,#69,#fe
	db #fc,#c3,#03,#e4,#34,#03,#ac,#4c
	db #01,#d5,#eb,#01,#ea,#b9,#03,#ed
	db #78,#00,#f2,#65,#03,#77,#1f,#76
	db #75,#76,#e8,#9d,#00,#d6,#93,#02
	db #d6,#3f,#00,#f2,#38,#00,#f9,#c2
	db #00,#ef,#f9,#d4,#03,#f2,#bd,#00
	db #d7,#6a,#00,#69,#dd,#eb,#03,#f9
	db #40,#01,#f9,#a8,#01,#eb,#11,#01
	db #ff,#ef,#c4,#00,#e5,#bf,#00,#f4
	db #e7,#00,#eb,#65,#01,#eb,#ba,#01
	db #eb,#93,#00,#e4,#72,#02,#f2,#1f
	db #01,#a0,#eb,#3b,#01,#70,#f6,#61
	db #02,#71,#71,#71,#70,#6f,#24,#6f
	db #6f,#f0,#6b,#02,#32,#35,#fa,#8a
	db #01,#47,#8e,#8e,#fc,#8c,#02,#64
	db #6a,#d4,#fc,#93,#02,#f9,#8a,#02
	db #e4,#83,#02,#70,#31,#77,#ee,#fc
	db #bd,#02,#f9,#ad,#02,#54,#59,#b3
	db #fc,#cb,#02,#11,#59,#5e,#bd,#fc
	db #d2,#02,#3f,#43,#86,#fc,#d9,#02
	db #8f,#f9,#c9,#02,#7e,#86,#0c,#fc
	db #e7,#02,#f9,#de,#02,#e4,#d7,#02
	db #f2,#01,#03,#91,#f2,#98,#02,#38
	db #3b,#fb,#14,#02,#4b,#4f,#9f,#fc
	db #34,#03,#f8,#f9,#bb,#02,#f9,#32
	db #03,#c8,#2b,#03,#f9,#1d,#03,#f9
	db #d0,#02,#86,#8e,#1c,#ff,#fc,#8f
	db #03,#f9,#86,#03,#c8,#7f,#03,#01
	db #83,#02,#af,#82,#03,#dd,#65,#01
	db #f9,#3e,#01,#f2,#22,#02,#b4,#f4
	db #d7,#01,#50,#f0,#e2,#01,#ad,#24
	db #01,#35,#f2,#cb,#01,#34,#34,#55
	db #34,#fd,#d7,#01,#3b,#f5,#e0,#01
	db #3c,#fd,#e9,#01,#3a,#fc,#e9,#01
	db #fe,#eb,#77,#01,#e4,#22,#02,#f9
	db #bc,#01,#f2,#37,#02,#f2,#11,#02
	db #fd,#49,#02,#f7,#4b,#02,#5f,#bf
	db #fd,#52,#02,#5d,#fc,#52,#02,#eb
	db #34,#02,#01,#23,#01,#af,#22,#02
	db #f9,#12,#00,#dd,#c9,#03,#e3,#d6
	db #c3,#03,#f9,#66,#00,#f7,#1d,#00
	db #b2,#b2,#b2,#e9,#22,#00,#d6,#17
	db #00,#c7,#f9,#07,#01,#f7,#71,#00
	db #8d,#8d,#8d,#e9,#76,#00,#d6,#6b
	db #00,#f9,#c8,#00,#8f,#f7,#c5,#00
	db #9e,#9e,#9e,#e9,#ca,#00,#d6,#bf
	db #00,#f2,#0b,#01,#f9,#95,#00,#ff
	db #f2,#41,#00,#eb,#ed,#03,#f9,#36
	db #01,#f2,#28,#01,#eb,#e9,#00,#f9
	db #60,#01,#eb,#28,#01,#f2,#60,#01
	db #fe,#f9,#7c,#01,#f2,#36,#01,#eb
	db #41,#00,#89,#21,#01,#f2,#9f,#01
	db #f9,#40,#02,#f2,#39,#02,#32,#3e
	db #35,#6a,#fc,#65,#02,#f9,#c9,#01
	db #f9,#47,#02,#f9,#6a,#02,#e4,#63
	db #02,#70,#31,#77,#ee,#fc,#9d,#02
	db #f2,#47,#02,#59,#5e,#bd,#fc,#b2
	db #02,#18,#3f,#43,#86,#fc,#b9,#02
	db #f9,#a9,#02,#7e,#86,#0c,#f8,#fc
	db #c7,#02,#f9,#be,#02,#e4,#b7,#02
	db #f2,#e1,#02,#f2,#78,#02,#38,#3b
	db #77,#fe,#fc,#0d,#03,#f9,#55,#02
	db #f9,#9b,#02,#f9,#12,#03,#c8,#0b
	db #03,#f9,#fd,#02,#f9,#b0,#02,#86
	db #3f,#8e,#1c,#fc,#6f,#03,#f9,#66
	db #03,#c8,#5f,#03,#01,#63,#02,#af
	db #62,#03,#f2,#f9,#03,#ff,#eb,#4e
	db #02,#97,#fc,#00,#f9,#f2,#03,#f2
	db #88,#01,#f2,#eb,#03,#dd,#b1,#01
	db #f9,#f5,#00,#f7,#db,#01,#11,#1b
	db #1b,#1b,#e9,#e0,#01,#a8,#b3,#66
	db #f3,#01,#02,#1f,#65,#65,#65,#e9
	db #0a,#02,#d6,#d5,#01,#01,#03,#01
	db #af,#02,#02,#f8,#9b,#03,#c0,#f9
	db #93,#00,#f7,#b1,#03,#76,#76,#76
	db #77,#77,#3b,#38,#3f,#7e,#ee,#c2
	db #03,#f9,#e7,#00,#f7,#db,#03,#8d
	db #8d,#8d,#22,#8e,#8e,#c1,#ab,#03
	db #47,#4b,#96,#f3,#2b,#00,#95,#0f
	db #95,#95,#96,#96,#ac,#d5,#03,#97
	db #ea,#03,#f9,#bc,#02,#f7,#01,#01
	db #11,#9e,#9e,#9e,#ce,#06,#01,#4f
	db #54,#a8,#fc,#42,#01,#ff,#f9,#e6
	db #02,#f9,#40,#01,#c7,#54,#01,#eb
	db #fb,#02,#eb,#e6,#00,#eb,#b0,#01
	db #e5,#a3,#01,#f9,#d1,#00,#f8,#f9
	db #4e,#01,#eb,#d1,#00,#d5,#03,#02
	db #f9,#47,#01,#fa,#3c,#02,#2c,#2f
	db #5e,#88,#ee,#45,#02,#32,#35,#6a
	db #f3,#5a,#02,#69,#69,#69,#3f,#6a
	db #6a,#eb,#92,#00,#c1,#43,#02,#eb
	db #a7,#00,#ac,#6d,#02,#97,#82,#02
	db #eb,#69,#03,#ff,#cf,#a7,#03,#f9
	db #cd,#01,#f9,#fb,#00,#d6,#a3,#01
	db #ea,#09,#00,#eb,#4e,#01,#eb,#7e
	db #03,#d0,#49,#00,#f0,#f9,#93,#03
	db #f9,#e7,#03,#c1,#93,#03,#eb,#f6
	db #01,#54,#59,#00,#f7,#01,#00,#01
	db #00,#01,#ff,#87,#fd,#01,#d9,#77
	db #aa,#75,#2e,#f4,#ff,#d6,#cb,#ae
	db #c7,#f5,#10,#01,#4c,#01,#4d,#01
	db #4c,#01,#4b,#01,#4a,#bf,#62,#48
	db #01,#fc,#e7,#db,#d0,#e4,#e7,#74
	db #85,#d6,#9d,#82,#3b,#ff,#90,#c7
	db #c8,#29,#d6,#ed,#01,#1c,#01,#32
	db #01,#31,#01,#30,#01,#2f,#bf,#67
	db #2d,#01,#fc,#c7,#db,#b0,#e4,#c7
	db #74,#65,#d6,#7d,#82,#1b,#ff,#90
	db #a7,#c8,#09,#d6,#cd,#3c,#12,#fb
	db #f7,#dd,#db,#aa,#d5,#2e,#54,#ff
	db #d6,#2b,#ae,#27,#f6,#71,#01,#ab
	db #01,#ac,#01,#ab,#01,#aa,#01,#a9
	db #80,#c3,#a8,#10,#df,#01,#00,#ad
	db #ff,#18,#fe,#53,#e4,#39,#d6,#2b
	db #ae,#48,#9f,#46,#f9,#dc,#25,#c9
	db #c4,#01,#75,#01,#a9,#65,#a7,#18
	db #18,#f8,#3c,#ff,#d6,#1a,#c9,#69
	db #c3,#99,#d6,#4c,#81,#6d,#d7,#eb
	db #f1,#93,#f3,#be,#ff,#f2,#bd,#eb
	db #93,#ea,#93,#de,#fd,#d7,#94,#db
	db #d1,#de,#da,#eb,#33,#ff,#d5,#fc
	db #cf,#2d,#e5,#74,#e3,#22,#d5,#f8
	db #ad,#d0,#b3,#a1,#e4,#11,#ff,#ac
	db #b6,#d6,#11,#db,#5d,#f4,#ba,#eb
	db #ba,#ba,#e3,#dd,#96,#dd,#65,#e7
	db #01,#62,#01,#83,#5f,#81,#18,#18
	db #ca,#fb,#d6,#4d,#a5,#31,#ff,#b9
	db #cb,#fa,#1f,#f9,#1f,#ac,#cb,#ac
	db #8c,#ac,#88,#b9,#1b,#fa,#6f,#ff
	db #f9,#6f,#c1,#30,#dd,#d5,#dd,#ae
	db #82,#df,#74,#86,#4a,#5d,#49,#c8
	db #3f,#18,#18,#84,#58,#7b,#56,#b3
	db #d4,#a5,#28,#b3,#2a,#a5,#d0,#fd
	db #ac,#24,#01,#d5,#01,#26,#01,#25
	db #01,#24,#f1,#22,#18,#fb,#32,#ef
	db #06,#38,#01,#38,#85,#30,#18,#f7
	db #ac,#de,#90,#b2,#84,#ac,#7e,#c0
	db #fa,#50,#9b,#d8,#3f,#00,#3f,#00
	db #02,#18,#18,#19,#1d,#39,#28,#39
	db #2b,#fe,#08,#39,#e1,#07,#22,#38
	db #38,#c9,#e0,#0d,#12,#26,#2a,#30
	db #fe,#3f,#14,#30,#f1,#3d,#7f,#02
	db #fd,#2a,#fd,#56,#fc,#37,#f6,#57
	db #fc,#4c,#fe,#6b,#f8,#60,#ff,#fc
	db #29,#f6,#73,#f2,#6f,#eb,#68,#ba
	db #53,#f2,#df,#f2,#a7,#e4,#8b,#fd
	db #f2,#d1,#d6,#b5,#eb,#33,#f2,#41
	db #eb,#02,#f2,#8e,#04,#fe,#88,#bd
	db #fc,#a5,#0c,#fa,#a4,#f8,#a3,#fc
	db #9f,#fe,#bc,#0d,#fa,#81,#fb,#f9
	db #b1,#9e,#a3,#f1,#fe,#ec,#29,#f9
	db #51,#30,#f8,#52,#fb,#0e,#ff,#f9
	db #66,#f9,#59,#9e,#4b,#f1,#a6,#f3
	db #e5,#c8,#f7,#ac,#01,#f1,#4e,#fa
	db #ec,#79,#cf,#a6,#ac,#a9,#f1,#f6
	db #f3,#35,#20,#f8,#3b,#18,#e5,#e0
	db #f9,#f2,#43,#f8,#6d,#30,#10,#fc
	db #5b,#29,#f8,#60,#d7,#f3,#76,#f3
	db #4b,#28,#f8,#59,#19,#e7,#62,#ed
	db #a5,#fe,#89,#bb,#f9,#cf,#10,#d7
	db #f0,#8b,#6d,#f7,#60,#00,#d7,#ec
	db #f2,#93,#6d,#20,#fb,#72,#f8,#a7
	db #09,#e5,#b0,#f9,#e0,#08,#eb,#01
	db #d8,#f9,#cc,#f3,#ef,#28,#fe,#2c
	db #f7,#ff,#29,#39,#10,#f7,#f2,#9b
	db #d0,#9b,#f8,#65,#fa,#51,#29,#fb
	db #87,#e3,#df,#f4,#26,#f7,#de,#86
	db #fd,#a6,#fc,#7a,#f6,#d2,#20,#f9
	db #c0,#fa,#12,#e4,#49,#fe,#f2,#e3
	db #f8,#0d,#fa,#a5,#fe,#32,#fa,#01
	db #f2,#15,#de,#eb,#30,#76,#28,#f4
	db #38,#d6,#f1,#89,#6f,#28,#f9,#31
	db #fa,#11,#28,#bf,#f9,#23,#19,#fb
	db #fd,#f9,#17,#b3,#b5,#f9,#5d,#f8
	db #17,#ec,#11,#7b,#39,#fa,#26,#f1
	db #56,#fa,#64,#f9,#aa,#28,#f0,#49
	db #fc,#ba,#ff,#eb,#5d,#f8,#c6,#eb
	db #a4,#d7,#e3,#d5,#8e,#ef,#65,#fd
	db #46,#f2,#6e,#6f,#14,#fa,#69,#f2
	db #83,#1c,#fa,#1b,#eb,#83,#01,#8a
	db #01,#b7,#ed,#a0,#88,#fd,#e6,#f2
	db #0e,#10,#fa,#08,#f9,#29,#30,#f8
	db #2a,#fd,#fb,#e6,#f9,#3e,#f9,#31
	db #f2,#23,#f8,#4d,#fa,#39,#19,#e5
	db #40,#b7,#a5,#31,#18,#de,#8d,#dc
	db #d9,#18,#f4,#1a,#b9,#e0,#9f,#7f
	db #df,#ac,#88,#b9,#34,#18,#f4,#6a
	db #d2,#30,#fd,#86,#fc,#06,#f6,#b2
	db #56,#04,#fa,#a8,#28,#fa,#c4,#20
	db #f9,#c4,#fa,#85,#29,#ff,#fa,#8c
	db #f9,#d1,#7b,#c3,#f2,#a0,#fc,#bc
	db #ef,#88,#82,#6b,#f8,#4f,#bf,#f3
	db #e3,#0c,#f3,#57,#f9,#21,#ac,#13
	db #f9,#8a,#d6,#44,#f9,#c1,#5e,#14
	db #fa,#c3,#1c,#f3,#ff,#f9,#c9,#ac
	db #bb,#f9,#b4,#1c,#fb,#ef,#17,#fd
	db #26,#f2,#4e,#fd,#47,#fc,#2e,#1d
	db #fa,#2c,#f9,#6a,#ff,#f9,#5c,#f9
	db #71,#f9,#63,#f2,#63,#f9,#8d,#dd
	db #78,#c8,#71,#eb,#ef,#ff,#a5,#94
	db #eb,#43,#f2,#51,#eb,#12,#f2,#9e
	db #ba,#b7,#ba,#27,#f2,#eb,#fd,#eb
	db #3f,#a5,#e4,#eb,#93,#f2,#a1,#eb
	db #62,#f2,#ee,#04,#fe,#e8,#bd,#fc
	db #05,#0c,#fa,#04,#f8,#03,#fc,#ff
	db #fe,#1c,#0d,#fa,#e1,#fb,#f9,#11
	db #9e,#03,#f1,#5e,#ec,#89,#f9,#b1
	db #30,#f8,#b2,#fb,#6e,#ff,#f9,#c6
	db #f9,#b9,#9e,#ab,#f1,#06,#f3,#45
	db #c8,#57,#ac,#61,#f1,#ae,#fa,#ec
	db #d9,#cf,#06,#ac,#09,#f1,#56,#f3
	db #95,#22,#f9,#9c,#1c,#af,#f4,#89
	db #2a,#f9,#65,#1d,#f4,#6d,#01,#a3
	db #c4,#a2,#fe,#00,#fd,#fa,#e0,#fa
	db #0f,#f9,#01,#f8,#01,#f2,#17,#fb
	db #09,#2b,#fa,#10,#3f,#2b,#14,#fa
	db #d9,#fa,#40,#f9,#fa,#ce,#00,#c1
	db #de,#e5,#9b,#af,#9d,#38,#06,#ec
	db #1a,#0e,#ec,#05,#01,#43,#c4,#42
	db #fe,#a0,#e4,#ed,#80,#f8,#a1,#ed
	db #9b,#2b,#1d,#fb,#b1,#2b,#14,#bc
	db #fb,#ce,#2a,#fa,#e0,#c7,#99,#fe
	db #e6,#ed,#fe,#22,#1c,#a8,#d8,#e9
	db #22,#98,#be,#0e,#ec,#a5,#04,#38
	db #0e,#1a,#0e,#1e,#0e,#01,#03,#00
	db #be,#02,#01,#08,#fa,#45,#01,#0c
	db #c0,#fa,#4c,#01,#e4,#29,#01,#0c
	db #0c,#0b,#0b,#09,#09,#78,#08,#dd
	db #22,#01,#ac,#6f,#01,#d6,#ec,#01
	db #a5,#6f,#01,#08,#06,#06,#0b,#05
	db #05,#03,#03,#d4,#29,#01,#1e,#f5
	db #a5,#02,#f9,#a3,#02,#ff,#f2,#66
	db #02,#f7,#b1,#02,#a0,#a5,#02,#f2
	db #fe,#02,#e4,#28,#03,#01,#b1,#02
	db #01,#08,#03,#88,#af,#00,#e2,#01
	db #51,#01,#01,#54,#01,#fa,#a3,#03
	db #0e,#0e,#08,#fa,#d5,#03,#0c,#ff
	db #fa,#dc,#03,#01,#43,#01,#01,#46
	db #01,#57,#41,#03,#f0,#83,#02,#fb
	db #46,#02,#e9,#83,#02,#01,#8c,#02
	db #ff,#01,#8f,#02,#a1,#8a,#00,#e9
	db #73,#02,#01,#3a,#01,#01,#2d,#01
	db #75,#fe,#02,#01,#13,#01,#01,#40
	db #01,#fe,#4c,#11,#03,#e6,#64,#02
	db #f9,#29,#02,#e4,#63,#02,#a5,#78
	db #02,#d6,#fc,#02,#a5,#7f,#02,#08
	db #03,#06,#06,#05,#05,#03,#03,#5f
	db #e1,#02,#25,#da,#02,#ff,#76,#bd
	db #01,#f2,#5e,#01,#e4,#88,#01,#01
	db #11,#01,#01,#68,#01,#88,#0f,#03
	db #01,#b1,#03,#01,#b4,#03,#e0,#01
	db #b7,#03,#01,#ba,#03,#46,#01,#00
	db #0e,#15,#0e,#1e,#0d,#fb,#03,#0c
	db #fa,#09,#0b,#fb,#0c,#ab,#fa,#15
	db #0a,#f8,#1c,#09,#fa,#25,#08,#fb
	db #28,#fa,#31,#5f,#07,#f8,#38,#06
	db #f9,#34,#f9,#2d,#f9,#26,#f9,#1f
	db #f9,#18,#f6,#f9,#11,#f9,#0a,#f9
	db #03,#e4,#73,#0f,#fd,#96,#fe,#00
	db #0e,#ef,#fc,#96,#fd,#98,#fa,#9d
	db #0f,#01,#03,#07,#02,#fd,#92,#fc
	db #89,#fa,#58,#a3,#fb,#89,#f9,#56
	db #fd,#61,#fb,#60,#0a,#f9,#66,#09
	db #fc,#fa,#6e,#7b,#4b,#58,#f3,#ac
	db #a6,#b3,#cc,#e2,#25,#09,#08,#fe
	db #f6,#62,#f2,#43,#d6,#6d,#f9,#51
	db #ca,#97,#d6,#43,#f8,#0b,#07,#fd
	db #8b,#6d,#e2,#75,#eb,#f7,#8b,#15
	db #d6,#93,#f8,#5b,#07,#8b,#bd,#ff
	db #e2,#c5,#eb,#47,#c1,#65,#eb,#f8
	db #f1,#0c,#e5,#45,#c8,#e3,#b3,#99
	db #fe,#d6,#0f,#ba,#bc,#cf,#17,#7b
	db #9c,#c8,#8e,#f2,#72,#f9,#7b,#0f
	db #2f,#0f,#0e,#fd,#85,#0d,#fd,#89
	db #f8,#5c,#f8,#6c,#fc,#7f,#57,#07
	db #fd,#a1,#06,#fd,#a5,#05,#fd,#a9
	db #f2,#83,#d6,#ad,#ea,#f9,#91,#ca
	db #d7,#d6,#83,#04,#fd,#4c,#03,#fd
	db #50,#02,#fa,#8b,#ad,#e2,#b5,#eb
	db #37,#8b,#55,#d6,#d3,#04,#fd,#9c
	db #03,#bf,#fd,#a0,#02,#8b,#fd,#ed
	db #05,#fb,#17,#fa,#1b,#9e,#23,#f9
	db #8c,#ff,#f9,#85,#90,#2a,#2e,#03
	db #f9,#dc,#f9,#d5,#35,#11,#f9,#b1
	db #58,#c3,#f7,#f7,#b5,#f9,#bb,#fb
	db #be,#f9,#86,#09,#fa,#8e,#7b,#6b
	db #58,#13,#cf,#ac,#c6,#b3,#ec,#0f
	db #0f,#fd,#39,#fb,#3b,#f8,#48,#f8
	db #58,#55,#08,#fd,#7d,#07,#fd,#81
	db #06,#fd,#85,#05,#fd,#89,#fa,#f2
	db #63,#d6,#8d,#f9,#71,#ca,#b7,#d6
	db #63,#04,#fd,#2c,#03,#be,#fd,#30
	db #02,#8b,#8d,#e2,#95,#eb,#17,#8b
	db #35,#d6,#b3,#04,#af,#fd,#7c,#03
	db #fd,#80,#02,#8b,#dd,#f7,#e5,#f9
	db #f1,#58,#03,#f7,#f8,#f4,#f8,#f8
	db #f9,#fc,#fb,#c8,#09,#fa,#ce,#7b
	db #ab,#58,#53,#fe,#ac,#06,#b3,#2c
	db #f6,#7e,#f5,#8f,#01,#a3,#af,#a2
	db #fa,#07,#09,#ab,#f5,#0e,#08,#f5
	db #1a,#07,#f5,#26,#06,#fb,#32,#f9
	db #f3,#ff,#f2,#38,#c7,#fa,#c1,#de
	db #e5,#9b,#88,#38,#01,#2e,#af,#42
	db #fa,#a7,#55,#09,#f5,#ae,#08,#f5
	db #ba,#07,#f5,#c6,#06,#fb,#d2,#fc
	db #f9,#93,#f2,#d8,#c7,#9a,#c1,#7e
	db #e5,#3b,#9d,#d8,#0e,#0e,#0d,#3a
	db #0d,#1d,#fc,#02,#fe,#00,#fc,#08
	db #0c,#fa,#0d,#0b,#d5,#fb,#10,#fa
	db #19,#0a,#f8,#20,#09,#fa,#29,#08
	db #fb,#2c,#af,#fa,#35,#07,#f8,#3c
	db #06,#f9,#38,#f9,#31,#f9,#2a,#f9
	db #23,#fa,#f9,#1c,#f9,#15,#f9,#0e
	db #f9,#07,#e4,#77,#0f,#fd,#9a,#0e
	db #f7,#fe,#9e,#fc,#9a,#fd,#9c,#fa
	db #a1,#0f,#5c,#07,#f7,#c8,#b5,#5b
	db #f5,#f9,#c1,#b3,#ad,#fd,#46,#5b
	db #fd,#0d,#fb,#a3,#0c,#58,#a3,#aa
	db #fd,#51,#0b,#fc,#55,#0a,#f5,#5a
	db #09,#f5,#66,#08,#ff,#fe,#72,#7b
	db #4b,#58,#f3,#ac,#a6,#b3,#cc,#f7
	db #42,#ed,#39,#e9,#5e,#fa,#f2,#4c
	db #d6,#76,#c3,#99,#d6,#4c,#f8,#14
	db #07,#8b,#76,#0e,#aa,#fe,#93,#0d
	db #f9,#96,#0c,#f9,#9e,#0b,#f9,#a6
	db #0a,#ff,#f9,#ae,#f9,#87,#f1,#93
	db #f3,#bd,#f2,#bd,#eb,#93,#ea,#93
	db #de,#e7,#ff,#d6,#93,#eb,#8c,#d6
	db #bd,#e4,#0a,#d7,#8f,#f7,#43,#f4
	db #59,#e5,#f6,#7f,#07,#fe,#12,#f2
	db #eb,#d6,#15,#e3,#4c,#d7,#3f,#d6
	db #3f,#a5,#93,#df,#e4,#17,#ad,#b6
	db #07,#d6,#11,#db,#5d,#f4,#ba,#eb
	db #ba,#c2,#e3,#d7,#e3,#87,#d0,#57
	db #0c,#fb,#83,#0b,#01,#83,#01,#8d
	db #5f,#81,#d5,#fe,#21,#f9,#2a,#0a
	db #f9,#32,#09,#f9,#3a,#08,#f6,#42
	db #ff,#f2,#23,#d6,#4d,#a5,#31,#b9
	db #cb,#f9,#1f,#f3,#2d,#ce,#e7,#fa
	db #56,#fe,#97,#77,#ac,#88,#b9,#1b
	db #f9,#6f,#f3,#7d,#ce,#37,#fa,#a6
	db #0d,#ff,#fb,#c3,#f7,#b1,#f8,#d6
	db #f4,#da,#fc,#e5,#fd,#ee,#01,#c3
	db #d9,#c2,#bf,#f7,#12,#07,#fc,#1c
	db #f9,#e9,#f2,#e9,#eb,#e9,#ba,#21
	db #d6,#7c,#f7,#ac,#3d,#cf,#67,#dd
	db #39,#fa,#62,#0b,#01,#63,#01,#6d
	db #65,#61,#5d,#0d,#fb,#03,#0c,#58
	db #03,#fc,#ff,#fc,#b5,#0a,#f5,#ba
	db #5f,#09,#f5,#c6,#08,#fe,#d2,#7b
	db #ab,#58,#53,#ac,#06,#b3,#2c,#d7
	db #f8,#a2,#f8,#9c,#07,#fd,#b3,#06
	db #f8,#b7,#01,#ab,#af,#aa,#55,#05
	db #f5,#10,#04,#f5,#1c,#03,#f5,#28
	db #02,#f5,#34,#fd,#f9,#fb,#f2,#40
	db #c7,#02,#c1,#e6,#e5,#a3,#a5,#40
	db #0d,#fb,#43,#57,#0c,#fd,#49,#0b
	db #fc,#4d,#0a,#fb,#52,#01,#43,#af
	db #42,#aa,#fa,#a7,#09,#f5,#ae,#08
	db #f5,#ba,#07,#f5,#c6,#06,#fe,#fa
	db #d2,#f9,#93,#f2,#d9,#c7,#9a,#a6
	db #7e,#b3,#d9,#e9,#27,#35,#3a,#35
	db #d4,#01,#02,#00,#01,#02,#00,#5c
	db #00,#02,#35,#83,#a5,#02,#3b,#bf
	db #ec,#23,#03,#43,#ec,#38,#03,#82
	db #a5,#02,#eb,#38,#03,#eb,#23,#03
	db #01,#a5,#02,#5b,#a4,#03,#f7,#eb
	db #1b,#01,#c1,#ad,#01,#eb,#30,#01
	db #c1,#01,#02,#47,#ad,#41,#02,#01
	db #45,#01,#07,#44,#02,#7b,#59,#ad
	db #8d,#00,#ac,#67,#03,#01,#e5,#03
	db #7e,#e4,#00,#1a,#fa,#b6,#02,#e4
	db #a8,#02,#bb,#cf,#ac,#01,#21,#fa
	db #0a,#03,#e4,#fc,#02,#cf,#60,#03
	db #1d,#fa,#5e,#03,#e4,#50,#03,#bf
	db #cf,#b4,#03,#23,#fa,#b2,#03,#e4
	db #a4,#03,#01,#85,#02,#bd,#84,#03
	db #9e,#27,#01,#cf,#7d,#00,#ff,#dd
	db #a9,#01,#cf,#29,#00,#dd,#fd,#01
	db #cf,#d1,#00,#ac,#62,#02,#01,#56
	db #01,#01,#55,#02,#01,#04,#02,#ff
	db #3e,#53,#00,#01,#11,#02,#01,#11
	db #02,#5e,#62,#00,#ac,#15,#01,#d6
	db #58,#01,#d6,#a8,#01,#82,#05,#01
	db #f5,#eb,#98,#01,#eb,#83,#01,#01
	db #05,#01,#af,#04,#02,#23,#d7,#a5
	db #03,#27,#d7,#cf,#03,#5f,#2c,#d7
	db #f9,#03,#2f,#d7,#23,#00,#58,#a5
	db #03,#82,#fd,#02,#d6,#72,#01,#d6
	db #cb,#00,#f0,#82,#c6,#01,#01,#a5
	db #03,#01,#a4,#00,#5e,#42,#00,#00
	db #ff,#01,#00,#00,#01,#00,#00,#01
	db #00,#00,#01,#00,#00,#01,#00,#00
	db #01,#fc,#00,#01,#fb,#01,#01,#fa
	db #02,#ff,#01,#f9,#03,#01,#f8,#00
	db #01,#f7,#01,#01,#f6,#02,#01,#f5
	db #03,#01,#f4,#00,#01,#f3,#01,#01
	db #f2,#02,#ff,#01,#f1,#03,#01,#f0
	db #00,#01,#ef,#01,#01,#ee,#02,#01
	db #ed,#03,#01,#ec,#00,#01,#eb,#01
	db #01,#ea,#02,#f8,#01,#e9,#03,#01
	db #e8,#00,#01,#e7,#01,#01,#e6,#02
	db #01,#e5,#03,#00,#00,#7b,#ff,#fe
	db #00,#01,#03,#01,#03,#5d,#01,#08
	db #e5,#98,#f2,#ac,#ff,#a7,#a5,#f0
	db #f2,#e6,#23,#01,#aa,#01,#a9,#88
	db #a8,#01,#4a,#01,#cb,#ff,#e8,#9c
	db #eb,#c2,#19,#f7,#01,#08,#5b,#af
	db #eb,#4d,#eb,#5b,#e4,#a1,#ff,#01
	db #9a,#01,#c7,#ab,#98,#f2,#16,#eb
	db #df,#eb,#17,#01,#25,#01,#52,#ff
	db #8f,#23,#eb,#a2,#19,#d7,#01,#e8
	db #5b,#8f,#01,#4a,#01,#5d,#57,#5b
	db #7f,#08,#e5,#f8,#f2,#0c,#a7,#05
	db #f0,#52,#e6,#83,#01,#0a,#01,#09
	db #fc,#88,#08,#01,#aa,#01,#2b,#01
	db #2a,#01,#29,#3f,#fa,#00,#00
.l0000
	db #00
;
; #3405
; call #4000	; init
;
; #3444
; call #4003	; play
;
.music_info
	db "Great Teacher AC (2004)(Revival)()",0
	db "AYC",0

	read "music_end.asm"
