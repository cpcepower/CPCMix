; Music of CPC Meuuuhting (2008)(Public Domain)()(AYC)
; Ripped by Megachur the 16/02/2016
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "CPCMEUUU.BIN"
	ENDIF

music_date_rip_day		equ 16
music_date_rip_month	equ 02
music_date_rip_year		equ 2016
music_adr				equ &4000

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
.l475d equ $ + 6
.l475b equ $ + 4
.l475a equ $ + 3
	db #02,#00,#3d,#0e,#00,#48,#c0,#04
	db #c4,#01,#c8,#04,#c5,#01,#d0,#04
	db #c6,#01,#c7,#01,#cc,#01,#cd,#01
	db #ce,#01,#cf,#01,#d4,#01,#d5,#01
	db #d6,#01,#d7,#01,#d8,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
.l4800
	db #ff,#2b,#01,#2e,#00,#01,#b8,#04
	db #01,#3f,#08,#01,#05,#0c,#01,#9f
	db #0c,#01,#1d,#0d,#01,#7b,#0d,#01
	db #fc,#0d,#01,#2a,#0f,#01,#ac,#0f
	db #01,#90,#10,#01,#f2,#10,#01,#27
	db #14,#01,#85,#14,#ff,#ff,#ff,#ff
	db #ff,#ff,#fd,#24,#fd,#fa,#ef,#02
	db #f9,#f9,#fe,#12,#fb,#fb,#c4,#fe
	db #14,#1c,#14,#1c,#1c,#38,#ef,#02
	db #37,#37,#98,#fe,#12,#39,#39,#fe
	db #14,#1c,#14,#3e,#3e,#7d,#8c,#ef
	db #02,#7c,#7c,#7e,#fd,#16,#1a,#12
	db #51,#51,#46,#a3,#ef,#02,#a2,#a2
	db #a4,#fd,#16,#9a,#12,#1c,#24,#1c
	db #38,#ef,#82,#37,#37,#fe,#92,#39
	db #39,#f8,#fe,#94,#c4,#94,#f8,#00
	db #f8,#80,#f0,#d8,#fd,#fd,#fa,#84
	db #fb,#fa,#f4,#a9,#dd,#18,#fe,#fe
	db #f9,#f9,#c0,#f8,#f8,#f0,#08,#f4
	db #51,#7b,#a9,#c2,#dd,#3f,#fa,#18
	db #f8,#20,#ef,#10,#f1,#01,#ef,#40
	db #f1,#21,#e0,#40,#be,#f0,#88,#77
	db #f9,#69,#f8,#a0,#d0,#30,#f0,#a0
	db #f0,#d0,#70,#81,#fd,#f1,#38,#38
	db #37,#37,#1c,#1c,#fe,#04,#ff,#fc
	db #0b,#f0,#08,#f0,#e0,#f0,#10,#f0
	db #00,#f0,#40,#f0,#20,#e0,#40,#a9
	db #90,#10,#47,#fd,#f1,#a3,#fd,#04
	db #51,#51,#fc,#04,#bf,#ee,#06,#f4
	db #f9,#e9,#f8,#20,#f0,#10,#f0,#00
	db #f0,#40,#f0,#20,#d0,#f0,#50,#80
	db #80,#f4,#fd,#f1,#fa,#fa,#f9,#f9
	db #3f,#fd,#fd,#fe,#04,#fc,#0b,#f0
	db #08,#f0,#e0,#f0,#10,#f0,#00,#f7
	db #f0,#40,#f0,#20,#e0,#40,#70,#10
	db #f4,#f8,#e9,#c9,#a9,#f0,#20,#a0
	db #70,#70,#70,#fd,#f1,#38,#38,#37
	db #37,#1c,#7f,#1c,#fe,#04,#fc,#0b
	db #f0,#08,#f0,#e0,#f0,#10,#f0,#00
	db #f0,#40,#ea,#f0,#20,#e0,#40,#90
	db #10,#47,#fd,#f1,#a3,#fd,#04,#51
	db #6f,#51,#fc,#04,#ee,#06,#f4,#f9
	db #e9,#f8,#20,#f0,#10,#f0,#00,#f4
	db #f0,#40,#f0,#20,#f0,#50,#80,#80
	db #f4,#fd,#f1,#fa,#fa,#0f,#f9,#f9
	db #fd,#fd,#fe,#04,#fc,#0b,#f0,#08
	db #f0,#e0,#fd,#f0,#10,#f0,#00,#f0
	db #40,#f0,#20,#e0,#40,#70,#10,#f4
	db #f8,#e9,#e8,#c9,#a9,#f0,#20,#70
	db #70,#70,#fd,#f1,#38,#38,#37,#1f
	db #37,#1c,#1c,#fe,#04,#fc,#0b,#f0
	db #08,#f0,#e0,#f0,#10,#fa,#f0,#00
	db #f0,#40,#f0,#20,#e0,#40,#90,#10
	db #47,#fd,#f1,#a3,#9b,#fd,#04,#51
	db #51,#fc,#04,#ee,#06,#f4,#f9,#e9
	db #f8,#20,#fd,#f0,#10,#f0,#00,#f0
	db #40,#f0,#20,#f0,#50,#80,#80,#f4
	db #fd,#f1,#03,#fa,#fa,#f9,#f9,#fd
	db #fd,#fe,#04,#fc,#0b,#ff,#f0,#08
	db #f0,#e0,#f0,#10,#f0,#00,#f0,#40
	db #f0,#20,#e0,#40,#70,#10,#7a,#f4
	db #f8,#e9,#c9,#a9,#f0,#20,#70,#70
	db #70,#fd,#f1,#38,#07,#38,#37,#37
	db #1c,#1c,#fe,#04,#fc,#0b,#f0,#08
	db #fe,#f0,#e0,#f0,#10,#f0,#00,#f0
	db #40,#f0,#20,#e0,#40,#90,#10,#47
	db #a6,#fd,#f1,#a3,#fd,#04,#51,#51
	db #fc,#04,#ee,#06,#f4,#ff,#f9,#e9
	db #f8,#20,#f0,#10,#f0,#00,#f0,#40
	db #f0,#20,#f0,#50,#80,#80,#40,#f4
	db #fd,#f1,#fa,#fa,#f9,#f9,#fd,#fd
	db #ff,#fe,#04,#fc,#0b,#f0,#08,#f0
	db #e0,#f0,#10,#f0,#00,#f0,#40,#f0
	db #20,#de,#e0,#40,#70,#10,#f4,#f8
	db #e9,#c9,#a9,#f0,#20,#70,#70,#70
	db #81,#fd,#f1,#38,#38,#37,#37,#1c
	db #1c,#fe,#04,#ff,#fc,#0b,#f0,#08
	db #f0,#e0,#f0,#10,#f0,#00,#f0,#40
	db #f0,#20,#e0,#40,#a9,#90,#10,#47
	db #fd,#f1,#a3,#fd,#04,#51,#51,#fc
	db #04,#bf,#ee,#06,#f4,#f9,#e9,#f8
	db #20,#f0,#10,#f0,#00,#f0,#40,#f0
	db #20,#d0,#f0,#50,#80,#80,#f4,#fd
	db #f1,#fa,#fa,#f9,#f9,#3f,#fd,#fd
	db #fe,#04,#fc,#0b,#f0,#08,#f0,#e0
	db #f0,#10,#f0,#00,#f7,#f0,#40,#f0
	db #20,#e0,#40,#70,#10,#f4,#f8,#e9
	db #c9,#a9,#f0,#20,#a0,#70,#70,#70
	db #fd,#f1,#38,#38,#37,#37,#1c,#7f
	db #1c,#fe,#04,#fc,#0b,#f0,#08,#f0
	db #e0,#f0,#10,#f0,#00,#f0,#40,#ea
	db #f0,#20,#e0,#40,#90,#10,#47,#fd
	db #f1,#a3,#fd,#04,#51,#6f,#51,#fc
	db #04,#ee,#06,#f4,#f9,#e9,#f8,#20
	db #f0,#10,#f0,#00,#f4,#f0,#40,#f0
	db #20,#f0,#50,#80,#80,#f4,#fd,#f1
	db #fa,#fa,#0f,#f9,#f9,#fd,#fd,#fe
	db #04,#fc,#0b,#f0,#08,#f0,#e0,#fd
	db #f0,#10,#f0,#00,#f0,#40,#f0,#20
	db #e0,#40,#70,#10,#f4,#f8,#e9,#e8
	db #c9,#a9,#f0,#20,#70,#70,#70,#fd
	db #f1,#38,#38,#37,#1f,#37,#1c,#1c
	db #fe,#04,#fc,#0b,#f0,#08,#f0,#e0
	db #f0,#10,#fa,#f0,#00,#f0,#40,#f0
	db #20,#e0,#40,#90,#10,#47,#fd,#f1
	db #a3,#9b,#fd,#04,#51,#51,#fc,#04
	db #ee,#06,#f4,#f9,#e9,#f8,#20,#fd
	db #f0,#10,#f0,#00,#f0,#40,#f0,#20
	db #f0,#50,#80,#80,#f4,#fd,#f1,#03
	db #fa,#fa,#f9,#f9,#fd,#fd,#fe,#04
	db #fc,#0b,#ff,#f0,#08,#f0,#e0,#f0
	db #10,#f0,#00,#f0,#40,#f0,#20,#e0
	db #40,#70,#10,#7a,#f4,#f8,#e9,#c9
	db #a9,#f0,#20,#70,#70,#70,#fd,#f1
	db #38,#07,#38,#37,#37,#1c,#1c,#fe
	db #04,#fc,#0b,#f0,#08,#fe,#f0,#e0
	db #f0,#10,#f0,#00,#f0,#40,#f0,#20
	db #e0,#40,#90,#10,#47,#a6,#fd,#f1
	db #a3,#fd,#04,#51,#51,#fc,#04,#ee
	db #06,#f4,#ff,#f9,#e9,#f8,#20,#f0
	db #10,#f0,#00,#f0,#40,#f0,#20,#f0
	db #50,#80,#80,#40,#f4,#fd,#f1,#fa
	db #fa,#f9,#f9,#fd,#fd,#ff,#fe,#04
	db #fc,#0b,#f0,#08,#f0,#e0,#f0,#10
	db #f0,#00,#f0,#40,#f0,#20,#de,#e0
	db #40,#70,#10,#f4,#f8,#e9,#c9,#a9
	db #f0,#20,#70,#70,#70,#81,#fd,#f1
	db #38,#38,#37,#37,#1c,#1c,#fe,#04
	db #ff,#fc,#0b,#f0,#08,#f0,#e0,#f0
	db #10,#f0,#00,#f0,#40,#f0,#20,#e0
	db #40,#a9,#90,#10,#47,#fd,#f1,#a3
	db #fd,#04,#51,#51,#fc,#04,#bf,#ee
	db #06,#f4,#f9,#e9,#f8,#20,#f0,#10
	db #f0,#00,#f0,#40,#f0,#20,#d0,#f0
	db #50,#80,#80,#f4,#fd,#f1,#fa,#fa
	db #f9,#f9,#3f,#fd,#fd,#fe,#04,#fc
	db #0b,#f0,#08,#f0,#e0,#f0,#10,#f0
	db #00,#f7,#f0,#40,#f0,#20,#e0,#40
	db #70,#10,#f4,#f8,#e9,#c9,#a9,#f0
	db #20,#a0,#70,#70,#70,#fd,#f1,#38
	db #38,#37,#37,#1c,#7e,#1c,#fe,#04
	db #fc,#0b,#f0,#08,#f0,#e0,#f0,#10
	db #f3,#00,#fa,#fd,#f1,#3e,#ed,#1d
	db #f0,#50,#b3,#00,#ed,#bd,#e0,#60
	db #47,#fd,#f1,#4d,#a3,#fd,#04,#51
	db #51,#fc,#04,#ee,#06,#f4,#f9,#e9
	db #fe,#f8,#20,#f0,#10,#f0,#00,#f0
	db #40,#f0,#20,#f0,#50,#80,#80,#f4
	db #81,#fd,#f1,#fa,#fa,#f9,#f9,#fd
	db #fd,#fe,#04,#ff,#fc,#0b,#f0,#08
	db #f0,#e0,#f0,#10,#f0,#00,#f0,#40
	db #f0,#20,#e0,#40,#80,#91,#10,#00
	db #2f,#00,#01,#01,#02,#02,#03,#02
	db #01,#00,#7f,#ff,#a8,#00,#cd,#f8
	db #80,#e8,#d8,#00,#00,#fe,#f0,#fc
	db #fb,#03,#fd,#f0,#fb,#fc,#fc,#f8
	db #f8,#f0,#08,#fd,#00,#fc,#22,#02
	db #f8,#20,#ed,#10,#fb,#f3,#03,#ed
	db #40,#f3,#23,#e0,#40,#f0,#88,#07
	db #f9,#69,#f8,#a0,#ef,#d0,#30,#f0
	db #a0,#f0,#d0,#04,#fd,#f1,#fc,#03
	db #f9,#01,#ef,#07,#fe,#f0,#e0,#f0
	db #10,#f0,#00,#f0,#40,#f0,#20,#e0
	db #40,#90,#10,#05,#bf,#e1,#81,#03
	db #f9,#e9,#f8,#20,#f0,#10,#f0,#00
	db #f0,#40,#f0,#20,#f9,#f0,#50,#80
	db #80,#fd,#68,#fd,#f7,#fe,#05,#00
	db #00,#fa,#e9,#ff,#f0,#08,#f0,#e0
	db #f0,#10,#f0,#00,#f0,#40,#f0,#20
	db #e0,#40,#70,#10,#fb,#fd,#00,#f8
	db #eb,#cb,#ab,#f0,#20,#70,#70,#04
	db #fd,#f1,#fc,#03,#ff,#f9,#01,#ef
	db #07,#f0,#e0,#f0,#10,#f0,#00,#f0
	db #40,#f0,#20,#e0,#40,#af,#90,#10
	db #05,#e1,#81,#03,#f9,#e9,#f8,#20
	db #f0,#10,#f0,#00,#fe,#f0,#40,#f0
	db #20,#f0,#50,#80,#80,#fd,#68,#fd
	db #f7,#fe,#05,#00,#7f,#00,#fa,#e9
	db #f0,#08,#f0,#e0,#f0,#10,#f0,#00
	db #f0,#40,#f0,#20,#fe,#e0,#40,#70
	db #10,#fd,#00,#f8,#eb,#cb,#ab,#f0
	db #20,#70,#70,#04,#ff,#fd,#f1,#fc
	db #03,#f9,#01,#ef,#07,#f0,#e0,#f0
	db #10,#f0,#00,#f0,#40,#eb,#f0,#20
	db #e0,#40,#90,#10,#05,#e1,#81,#03
	db #f9,#e9,#f8,#20,#ff,#f0,#10,#f0
	db #00,#f0,#40,#f0,#20,#f0,#50,#80
	db #80,#fd,#68,#fd,#f7,#9f,#fe,#05
	db #00,#00,#fa,#e9,#f0,#08,#f0,#e0
	db #f0,#10,#f0,#00,#ff,#f0,#40,#f0
	db #20,#e0,#40,#70,#10,#fd,#00,#f8
	db #eb,#cb,#ab,#f0,#20,#bf,#70,#70
	db #04,#fd,#f1,#fc,#03,#f9,#01,#ef
	db #07,#f0,#e0,#f0,#10,#fa,#f0,#00
	db #f0,#40,#f0,#20,#e0,#40,#90,#10
	db #05,#e1,#81,#03,#ff,#f9,#e9,#f8
	db #20,#f0,#10,#f0,#00,#f0,#40,#f0
	db #20,#f0,#50,#80,#80,#e7,#fd,#68
	db #fd,#f7,#fe,#05,#00,#00,#fa,#e9
	db #f0,#08,#f0,#e0,#ff,#f0,#10,#f0
	db #00,#f0,#40,#f0,#20,#e0,#40,#70
	db #10,#fd,#00,#f8,#eb,#ef,#cb,#ab
	db #f0,#20,#70,#70,#04,#fd,#f1,#fc
	db #03,#f9,#01,#ef,#07,#fe,#f0,#e0
	db #f0,#10,#f0,#00,#f0,#40,#f0,#20
	db #e0,#40,#90,#10,#05,#bf,#e1,#81
	db #03,#f9,#e9,#f8,#20,#f0,#10,#f0
	db #00,#f0,#40,#f0,#20,#f9,#f0,#50
	db #80,#80,#fd,#68,#fd,#f7,#fe,#05
	db #00,#00,#fa,#e9,#ff,#f0,#08,#f0
	db #e0,#f0,#10,#f0,#00,#f0,#40,#f0
	db #20,#e0,#40,#70,#10,#fb,#fd,#00
	db #f8,#eb,#cb,#ab,#f0,#20,#70,#70
	db #04,#fd,#f1,#fc,#03,#ff,#f9,#01
	db #ef,#07,#f0,#e0,#f0,#10,#f0,#00
	db #f0,#40,#f0,#20,#e0,#40,#af,#90
	db #10,#05,#e1,#81,#03,#f9,#e9,#f8
	db #20,#f0,#10,#f0,#00,#fe,#f0,#40
	db #f0,#20,#f0,#50,#80,#80,#fd,#68
	db #fd,#f7,#fe,#05,#00,#7f,#00,#fa
	db #e9,#f0,#08,#f0,#e0,#f0,#10,#f0
	db #00,#f0,#40,#f0,#20,#fe,#e0,#40
	db #70,#10,#fd,#00,#f8,#eb,#cb,#ab
	db #f0,#20,#70,#70,#04,#ff,#fd,#f1
	db #fc,#03,#f9,#01,#ef,#07,#f0,#e0
	db #f0,#10,#f0,#00,#f0,#40,#eb,#f0
	db #20,#e0,#40,#90,#10,#05,#e1,#81
	db #03,#f9,#e9,#f8,#20,#ff,#f0,#10
	db #f0,#00,#f0,#40,#f0,#20,#f0,#50
	db #80,#80,#fd,#68,#fd,#f7,#9f,#fe
	db #05,#00,#00,#fa,#e9,#f0,#08,#f0
	db #e0,#f0,#10,#f0,#00,#ff,#f0,#40
	db #f0,#20,#e0,#40,#70,#10,#fd,#00
	db #f8,#eb,#cb,#ab,#f0,#20,#bf,#70
	db #70,#04,#fd,#f1,#fc,#03,#f9,#01
	db #ef,#07,#f0,#e0,#f0,#10,#fa,#f0
	db #00,#f0,#40,#f0,#20,#e0,#40,#90
	db #10,#05,#e1,#81,#03,#ff,#f9,#e9
	db #f8,#20,#f0,#10,#f0,#00,#f0,#40
	db #f0,#20,#f0,#50,#80,#80,#e7,#fd
	db #68,#fd,#f7,#fe,#05,#00,#00,#fa
	db #e9,#f0,#08,#f0,#e0,#ff,#f0,#10
	db #f0,#00,#f0,#40,#f0,#20,#e0,#40
	db #70,#10,#fd,#00,#f8,#eb,#ef,#cb
	db #ab,#f0,#20,#70,#70,#04,#fd,#f1
	db #fc,#03,#f9,#01,#ef,#07,#fe,#f0
	db #e0,#f0,#10,#f0,#00,#f0,#40,#f0
	db #20,#e0,#40,#90,#10,#05,#bf,#e1
	db #81,#03,#f9,#e9,#f8,#20,#f0,#10
	db #f0,#00,#f0,#40,#f0,#20,#f9,#f0
	db #50,#80,#80,#fd,#68,#fd,#f7,#fe
	db #05,#00,#00,#fa,#e9,#ff,#f0,#08
	db #f0,#e0,#f0,#10,#f0,#00,#f0,#40
	db #f0,#20,#e0,#40,#70,#10,#fb,#fd
	db #00,#f8,#eb,#cb,#ab,#f0,#20,#70
	db #70,#04,#fd,#f1,#fc,#03,#ff,#f9
	db #01,#ef,#07,#f0,#e0,#f0,#10,#f3
	db #00,#fd,#49,#f0,#00,#f0,#20,#f5
	db #f0,#50,#b3,#00,#ed,#bd,#e0,#60
	db #05,#e1,#81,#03,#f9,#e9,#ff,#f8
	db #20,#f0,#10,#f0,#00,#f0,#40,#f0
	db #20,#f0,#50,#80,#80,#fd,#68,#cf
	db #fd,#f7,#fe,#05,#00,#00,#fa,#e9
	db #f0,#08,#f0,#e0,#f0,#10,#f8,#f0
	db #00,#f0,#40,#f0,#20,#e0,#40,#91
	db #10,#5e,#30,#5e,#5a,#fd,#02,#fe
	db #00,#fd,#7f,#7e,#7e,#52,#7f,#fc
	db #09,#3f,#fa,#11,#8e,#47,#fa,#19
	db #a9,#65,#54,#fa,#21,#f0,#18,#be
	db #5f,#fe,#06,#5f,#fd,#39,#ff,#f8
	db #30,#01,#08,#01,#47,#01,#46,#01
	db #45,#01,#44,#01,#43,#01,#42,#f9
	db #49,#01,#fe,#be,#fa,#f9,#fe,#ce
	db #f6,#01,#7c,#7c,#fe,#0a,#3a,#80
	db #80,#fc,#0a,#a6,#0c,#f8,#04,#70
	db #f9,#78,#6a,#93,#f5,#80,#68,#68
	db #fe,#8a,#6c,#6c,#fc,#8a,#a6,#8c
	db #f2,#ec,#78,#f4,#84,#f8,#f0,#f4
	db #17,#6e,#6e,#fe,#22,#72,#7d,#72
	db #fc,#22,#fe,#2d,#f8,#70,#fc,#37
	db #fc,#6e,#8e,#f5,#40,#27,#8c,#8c
	db #fe,#4a,#90,#90,#fc,#4a,#e6,#4c
	db #f0,#70,#fd,#e8,#18,#a8,#8e,#f8
	db #44,#ec,#70,#9c,#8c,#f8,#04,#6a
	db #f9,#78,#49,#5e,#f5,#80,#5c,#5c
	db #fe,#8a,#60,#60,#fc,#8a,#fc,#a6
	db #8c,#f8,#70,#f4,#80,#f4,#84,#f8
	db #78,#f4,#17,#68,#68,#9f,#fe,#22
	db #6c,#6c,#fc,#22,#fe,#2d,#f8,#f0
	db #fc,#37,#fc,#6e,#f5,#e8,#18,#f8
	db #4e,#f0,#70,#f8,#60,#8e,#f9,#78
	db #7e,#f5,#80,#26,#7c,#7c,#fe,#8a
	db #80,#80,#fc,#8a,#a6,#8c,#0c,#01
	db #ee,#0c,#2c,#51,#51,#7b,#a9,#f8
	db #f0,#e9,#90,#80,#ee,#66,#ea,#02
	db #70,#f5,#98,#6e,#6e,#fe,#a2,#34
	db #72,#72,#fc,#a2,#fe,#ad,#6a,#f5
	db #b0,#68,#68,#a4,#fe,#ba,#5e,#f5
	db #c0,#5c,#5c,#fe,#ca,#60,#60,#d2
	db #fc,#ca,#fe,#d5,#54,#f5,#d8,#52
	db #52,#fe,#e2,#56,#69,#56,#fc,#e2
	db #fe,#ed,#47,#f5,#f0,#45,#45,#f4
	db #f0,#9f,#fa,#fa,#49,#49,#fc,#0a
	db #b6,#0c,#f8,#dc,#f8,#c4,#f8,#b4
	db #eb,#f8,#68,#e8,#98,#a8,#8e,#8e
	db #f9,#f0,#7e,#f9,#f8,#90,#80,#a9
	db #f8,#04,#6a,#f9,#78,#5e,#f5,#80
	db #5c,#5c,#fe,#8a,#3f,#60,#60,#fc
	db #8a,#b6,#8c,#f8,#df,#f8,#78,#f0
	db #70,#80,#00,#49,#7e,#f5,#80,#7c
	db #7c,#fe,#8a,#80,#80,#fc,#8a,#80
	db #a6,#8c,#0c,#ee,#0c,#2c,#51,#51
	db #7b,#59,#a9,#f8,#f0,#fd,#f9,#85
	db #f8,#00,#7e,#3f,#fa,#11,#9e,#f8
	db #08,#8e,#47,#fa,#21,#f0,#00,#d8
	db #20,#f8,#50,#a8,#79,#54,#fa,#69
	db #f8,#60,#f0,#10,#88,#08,#1c,#8e
	db #fa,#01,#fc,#f8,#00,#f0,#f8,#f8
	db #f0,#f0,#00,#d8,#20,#60,#e0,#51
	db #a8,#fe,#fa,#01,#f8,#00,#f0,#f8
	db #f8,#f0,#f0,#00,#d8,#20,#60,#60
	db #fd,#7f,#7e,#fa,#01,#f8,#00,#f0
	db #f8,#f8,#f0,#f0,#00,#d8,#20,#50
	db #e0,#33,#5e,#2f,#fa,#11,#f8,#08
	db #6a,#35,#fa,#21,#f0,#00,#3f,#70
	db #38,#fa,#39,#f0,#28,#f0,#20,#f8
	db #38,#f8,#50,#f8,#10,#39,#54,#2a
	db #fa,#79,#90,#00,#f0,#e0,#1c,#8e
	db #fa,#01,#ff,#f8,#00,#f8,#90,#f8
	db #08,#e8,#f8,#f8,#f0,#f0,#28,#f0
	db #20,#e0,#60,#cf,#90,#00,#f0,#e0
	db #51,#a8,#fa,#01,#f8,#00,#f8,#90
	db #f8,#08,#fc,#e8,#f8,#f8,#f0,#f0
	db #28,#f0,#20,#e0,#e0,#80,#80,#fd
	db #7e,#ff,#fa,#01,#f8,#00,#f8,#90
	db #f8,#08,#e8,#f8,#f8,#f0,#f0,#28
	db #f0,#20,#ce,#f0,#f0,#f8,#10,#54
	db #2a,#fa,#79,#90,#00,#e0,#f0,#7e
	db #67,#3f,#fa,#11,#f8,#08,#8e,#47
	db #fa,#21,#f0,#00,#d8,#20,#9e,#f8
	db #50,#a8,#54,#fa,#69,#f8,#60,#f0
	db #10,#88,#08,#1c,#7f,#8e,#fa,#01
	db #f8,#00,#f0,#f8,#f8,#f0,#f0,#00
	db #d8,#20,#60,#e0,#3f,#51,#a8,#fa
	db #01,#f8,#00,#f0,#f8,#f8,#f0,#f0
	db #00,#d8,#20,#9f,#60,#60,#fd,#7e
	db #fa,#01,#f8,#00,#f0,#f8,#f8,#f0
	db #f0,#00,#f2,#d8,#20,#60,#e0,#f8
	db #89,#fc,#07,#7c,#7c,#fe,#0a,#80
	db #74,#80,#fc,#0a,#94,#0c,#ea,#02
	db #70,#f5,#98,#6e,#6e,#9a,#fe,#a2
	db #72,#72,#fc,#a2,#fe,#ad,#6a,#f5
	db #b0,#68,#52,#68,#fe,#ba,#5e,#f5
	db #c0,#5c,#5c,#fe,#ca,#60,#79,#60
	db #fc,#ca,#fe,#d5,#f9,#e9,#fb,#de
	db #52,#52,#fe,#e2,#3c,#56,#56,#fc
	db #e2,#fe,#ed,#f9,#f1,#fb,#f6,#45
	db #45,#cf,#f4,#f0,#fa,#fa,#49,#49
	db #fc,#0a,#b6,#0c,#f8,#dc,#f8,#c4
	db #f5,#f8,#b4,#f8,#68,#e8,#98,#a8
	db #8e,#8e,#f9,#f0,#7e,#f9,#f8,#d4
	db #90,#80,#f8,#04,#6a,#f9,#78,#5e
	db #f5,#80,#5c,#5c,#9f,#fe,#8a,#60
	db #60,#fc,#8a,#b6,#8c,#f8,#df,#f8
	db #78,#f0,#70,#a4,#80,#00,#7e,#f5
	db #80,#7c,#7c,#fe,#8a,#80,#80,#c0
	db #fc,#8a,#a6,#8c,#0c,#ee,#0c,#2c
	db #51,#51,#23,#7b,#a9,#f8,#f0,#6a
	db #54,#3f,#fb,#00,#f0,#00,#e3,#f8
	db #15,#d8,#10,#48,#08,#70,#54,#47
	db #fb,#00,#f0,#00,#ff,#f8,#15,#d8
	db #10,#46,#08,#fd,#cf,#fd,#02,#f0
	db #00,#f8,#15,#d8,#10,#c7,#c6,#08
	db #82,#82,#6a,#54,#3f,#fb,#00,#f0
	db #00,#f8,#15,#e3,#d8,#10,#01,#08
	db #47,#07,#70,#54,#47,#fb,#00,#f0
	db #00,#ff,#f8,#15,#d8,#10,#46,#08
	db #fd,#cf,#fd,#02,#f0,#00,#f8,#15
	db #d8,#10,#c7,#c6,#08,#82,#82,#6a
	db #54,#3f,#fb,#00,#f0,#00,#f8,#15
	db #e0,#d8,#10,#48,#08,#f8,#fd,#fd
	db #7e,#7f,#7f,#7e,#a4,#fc,#09,#3f
	db #fa,#11,#8e,#47,#fa,#19,#a8,#54
	db #c1,#fa,#21,#f0,#18,#bd,#5e,#5f
	db #5f,#5e,#fd,#39,#ee,#f8,#30,#01
	db #08,#fa,#07,#47,#01,#4e,#01,#8d
	db #4d,#0c,#00,#ff,#01,#00,#01,#00
	db #01,#ff,#01,#fe,#01,#fd,#01,#fc
	db #01,#fb,#01,#fa,#f7,#01,#f9,#01
	db #f8,#01,#f7,#06,#f5,#01,#fe,#ef
	db #fa,#f2,#f9,#f1,#fb,#10,#00,#01
	db #00,#01,#ef,#01,#ee,#fd,#ec,#01
	db #fe,#ef,#fa,#f2,#ef,#f9,#f1,#10
	db #00,#f0,#ef,#01,#f1,#f9,#f0,#f8
	db #d8,#f8,#e0,#08,#fb,#01,#e8,#67
	db #e7,#01,#d9,#01,#ff,#fe,#fd,#01
	db #f1,#f9,#f0,#f8,#fe,#d8,#f8,#e0
	db #08,#01,#e8,#67,#e7,#01,#d9,#01
	db #ff,#fe,#fd,#01,#ff,#f1,#f9,#f0
	db #f8,#d8,#f8,#e0,#08,#01,#e8,#67
	db #e7,#01,#d9,#01,#ff,#ef,#01,#fe
	db #01,#fd,#0c,#fb,#01,#fe,#ef,#fa
	db #f2,#f9,#f1,#10,#00,#ff,#01,#00
	db #01,#ef,#01,#ee,#01,#ed,#01,#ec
	db #01,#eb,#01,#ea,#01,#e9,#f0,#01
	db #e8,#01,#e7,#01,#e6,#e6,#e5,#fd
	db #0a,#7e,#7f,#7f,#7e,#fc,#01,#3f
	db #fa,#09,#8e,#4c,#47,#fa,#11,#a8
	db #54,#fa,#19,#f0,#10,#bd,#5e,#1f
	db #5f,#5f,#5e,#fd,#31,#f8,#28,#01
	db #00,#01,#3f,#01,#3e,#ff,#01,#3d
	db #01,#3c,#01,#3b,#01,#3a,#01,#39
	db #01,#38,#01,#37,#01,#36,#ff,#01
	db #35,#01,#34,#01,#33,#01,#32,#01
	db #31,#01,#30,#01,#2f,#01,#2e,#ff
	db #01,#2d,#01,#2c,#01,#2b,#01,#2a
	db #01,#29,#01,#28,#01,#27,#01,#26
	db #ff,#01,#25,#01,#24,#01,#23,#01
	db #22,#01,#21,#01,#20,#01,#1f,#01
	db #1e,#fe,#01,#1d,#01,#1c,#01,#1b
	db #01,#1a,#01,#19,#01,#18,#ca,#d7
	db #54,#e0,#01,#4e,#01,#8d,#4d,#0c
	db #00,#ff,#01,#00,#01,#00,#01,#ff
	db #01,#fe,#01,#fd,#01,#fc,#01,#fb
	db #01,#fa,#ff,#01,#f9,#01,#f8,#01
	db #f7,#01,#f6,#01,#f5,#01,#f4,#01
	db #f3,#01,#f2,#ff,#01,#f1,#01,#f0
	db #01,#ef,#01,#ee,#01,#ed,#01,#ec
	db #01,#eb,#01,#ea,#ff,#01,#e9,#01
	db #e8,#01,#e7,#01,#e6,#01,#e5,#01
	db #e4,#01,#e3,#01,#e2,#ff,#01,#e1
	db #01,#e0,#01,#df,#01,#de,#01,#dd
	db #01,#dc,#01,#db,#01,#da,#f8,#01
	db #d9,#01,#d8,#01,#d7,#01,#d6,#d6
	db #d5,#06,#7f,#00,#02,#01,#01,#00
	db #01,#ff,#7e,#fe,#a8,#00,#f8,#80
	db #e0,#d8,#55,#08,#e1,#e1,#0c,#fe
	db #1e,#0a,#fc,#1c,#04,#d9,#e9,#ff
	db #f0,#40,#f0,#20,#e0,#40,#01,#10
	db #01,#8f,#01,#8e,#01,#8d,#01,#8c
	db #ff,#01,#8b,#01,#8a,#91,#09,#fd
	db #e0,#03,#fb,#01,#78,#01,#f7,#01
	db #f6,#ff,#fa,#dd,#03,#fb,#01,#78
	db #01,#f7,#01,#f6,#01,#f5,#01,#f4
	db #01,#f3,#ff,#01,#f2,#01,#f1,#01
	db #f0,#01,#ef,#01,#ee,#01,#ed,#01
	db #ec,#01,#eb,#ff,#01,#ea,#f1,#c9
	db #fd,#e0,#03,#fb,#01,#78,#01,#f7
	db #01,#f6,#01,#f5,#ff,#01,#f4,#01
	db #f3,#01,#f2,#01,#f1,#01,#f0,#01
	db #ef,#01,#ee,#ee,#cd,#31,#7f,#39
	db #02,#01,#01,#00,#01,#ff,#7e,#fe
	db #a8,#00,#f8,#80,#df,#d8,#7f,#38
	db #fe,#01,#e1,#e4,#fc,#00,#fa,#22
	db #fc,#25,#e0,#f1,#ee,#41,#fd,#f2
	db #23,#e0,#41,#01,#11,#01,#90,#01
	db #8f,#96,#0e,#23,#f9,#d9,#7f,#23
	db #91,#81,#f8,#00,#68,#f8,#f7,#f8
	db #e8,#d9,#f1,#b1,#ef,#80,#ff,#41
	db #51,#01,#90,#f6,#f7,#e8,#d9,#f1
	db #b1,#ef,#80,#f0,#01,#f9,#26,#ff
	db #fc,#40,#5c,#6c,#a0,#90,#f0,#50
	db #e8,#00,#f8,#f8,#ef,#e0,#f0,#89
	db #ff,#e9,#41,#e7,#98,#d9,#71,#b8
	db #18,#fd,#00,#fb,#28,#fc,#00,#f4
	db #ec,#ff,#f8,#d8,#a0,#00,#e8,#e0
	db #18,#78,#fd,#80,#fb,#a8,#fc,#80
	db #0c,#ec,#ff,#d8,#60,#f7,#f8,#f0
	db #09,#f9,#e6,#fc,#00,#fb,#24,#ee
	db #11,#e2,#f3,#ff,#f0,#21,#01,#f1
	db #01,#70,#01,#6f,#01,#6e,#01,#6d
	db #01,#6c,#01,#6b,#fb,#01,#6a,#01
	db #69,#01,#68,#01,#67,#5e,#e6,#31
	db #f9,#f9,#ef,#08,#ff,#f9,#e1,#fb
	db #23,#fc,#25,#ee,#11,#f2,#03,#ee
	db #41,#f2,#23,#f1,#51,#ff,#e8,#00
	db #f8,#f8,#f0,#60,#f7,#98,#e8,#79
	db #f1,#f1,#ef,#a0,#d9,#71,#ff,#b8
	db #18,#fd,#00,#fb,#28,#fc,#00,#f4
	db #ec,#f8,#d8,#a0,#00,#e8,#e0,#ff
	db #18,#78,#fd,#80,#fb,#a8,#fc,#80
	db #0c,#ec,#d8,#60,#f7,#f8,#f1,#b1
	db #ff,#fd,#00,#f2,#e3,#ee,#11,#e3
	db #73,#ef,#20,#ee,#51,#01,#03,#01
	db #82,#ff,#01,#81,#01,#80,#01,#7f
	db #01,#7e,#01,#7d,#7c,#fc,#fc,#e8
	db #f3,#f4,#ff,#f0,#09,#f1,#e1,#ed
	db #10,#e2,#f3,#f0,#21,#01,#f1,#01
	db #70,#01,#6f,#80,#6f,#ee,#0b,#7f
	db #10,#02,#01,#01,#00,#01,#ff,#7e
	db #fe,#a8,#00,#f8,#80,#e0,#d8,#08
	db #0d,#0f,#0e,#0c,#e2,#e4,#0f,#0d
	db #0e,#0a,#0d,#0c,#0c,#0b,#fe,#28
	db #0a,#fe,#2b,#09,#7f,#09,#e0,#f0
	db #ee,#40,#f2,#22,#e0,#40,#01,#10
	db #01,#8f,#01,#8e,#ff,#01,#8d,#01
	db #8c,#01,#8b,#01,#8a,#01,#89,#01
	db #88,#01,#87,#01,#86,#ff,#01,#85
	db #01,#84,#01,#83,#01,#82,#01,#81
	db #01,#80,#01,#7f,#01,#7e,#ff,#01
	db #7d,#01,#7c,#01,#7b,#01,#7a,#01
	db #79,#01,#78,#01,#77,#01,#76,#ff
	db #01,#75,#01,#74,#01,#73,#01,#72
	db #01,#71,#01,#70,#01,#6f,#01,#6e
	db #f8,#01,#6d,#01,#6c,#01,#6b,#01
	db #6a,#6a,#e9,#00,#8f,#f9,#00,#09
	db #09,#08,#fb,#0a,#01,#08,#01,#0f
	db #01,#0e,#f8,#01,#0d,#01,#0c,#01
	db #0b,#01,#0a,#10,#01,#0c,#0b,#0b
	db #41,#0a,#fd,#fc,#0b,#0e,#0d,#0d
	db #0c,#95,#04,#ff,#f8,#00,#f0,#70
	db #78,#08,#e0,#78,#e8,#00,#38,#48
	db #01,#90,#df,#77,#ec,#e8,#00,#d0
	db #d8,#88,#78,#0c,#fe,#81,#fd,#7e
	db #0b,#0a,#ff,#f8,#f0,#8f,#80,#f1
	db #70,#e8,#00,#d8,#80,#a8,#80,#b0
	db #38,#e0,#60,#fe,#98,#87,#10,#70
	db #e8,#70,#18,#f8,#ef,#df,#fe,#81
	db #fd,#7e,#0b,#5f,#0a,#f8,#f0,#0b
	db #fb,#7c,#01,#fe,#01,#05,#01,#04
	db #01,#03,#ff,#01,#02,#01,#01,#01
	db #00,#01,#ff,#01,#fe,#01,#fd,#01
	db #fc,#01,#fb,#8f,#f9,#f2,#0e,#0d
	db #0d,#fc,#f9,#88,#07,#e8,#00,#d8
	db #80,#ff,#a8,#80,#b0,#38,#e0,#60
	db #98,#87,#10,#70,#e8,#70,#18,#f8
	db #ef,#df,#cb,#fe,#81,#fd,#7e,#0b
	db #0a,#f8,#f0,#0b,#fb,#7c,#ee,#fe
	db #81,#fe,#17,#09,#09,#08,#08,#07
	db #07,#d8,#10,#ff,#01,#08,#01,#47
	db #01,#46,#01,#45,#01,#44,#01,#43
	db #01,#42,#41,#01,#00,#04,#04,#03
	db #03,#02,#02,#01,#01,#fc,#fc,#fa
	db #fc,#0b,#01,#08,#01,#0f,#01,#0e
	db #0e,#05,#0b,#3f,#0b,#0a,#fb,#02
	db #01,#00,#01,#07,#01,#06,#01,#05
	db #01,#04,#ff,#01,#03,#01,#02,#01
	db #01,#01,#00,#01,#ff,#01,#fe,#01
	db #fd,#01,#fc,#ff,#01,#fb,#01,#fa
	db #01,#f9,#01,#f8,#01,#f7,#01,#f6
	db #01,#f5,#01,#f4,#ff,#01,#f3,#01
	db #f2,#01,#f1,#01,#f0,#01,#ef,#01
	db #ee,#01,#ed,#01,#ec,#ff,#01,#eb
	db #01,#ea,#01,#e9,#01,#e8,#01,#e7
	db #01,#e6,#01,#e5,#01,#e4,#ff,#01
	db #e3,#01,#e2,#01,#e1,#01,#e0,#01
	db #df,#01,#de,#01,#dd,#dd,#d4,#28
	db #23,#0f,#1f,#ef,#02,#1e,#1e,#20
	db #fd,#16,#19,#12,#23,#11,#23,#ef
	db #02,#22,#22,#24,#fd,#16,#19,#12
	db #23,#13,#27,#ef,#02,#26,#26,#28
	db #fd,#16,#19,#12,#24,#15,#2a,#ef
	db #02,#29,#29,#fe,#12,#2b,#2b,#c4
	db #fe,#14,#9c,#14,#2a,#11,#23,#ef
	db #82,#22,#22,#7c,#24,#fd,#96,#c1
	db #92,#f8,#01,#f8,#81,#f0,#d9,#0f
	db #1f,#ff,#f2,#fa,#f8,#f9,#f0,#09
	db #f0,#20,#e8,#11,#e0,#39,#e8,#21
	db #7d,#01,#5f,#23,#fc,#04,#11,#fb
	db #04,#ee,#07,#f0,#20,#e8,#11,#e0
	db #39,#e2,#e8,#21,#e8,#29,#95,#19
	db #2a,#2a,#29,#fe,#06,#15,#ff,#fe
	db #04,#fb,#0b,#f0,#09,#f0,#20,#eb
	db #11,#f5,#06,#eb,#41,#f0,#65,#d7
	db #f2,#56,#80,#84,#1f,#fc,#04,#0f
	db #fb,#04,#ee,#07,#f0,#20,#fd,#e8
	db #11,#e0,#39,#e8,#21,#e8,#29,#01
	db #19,#94,#18,#23,#fc,#04,#7f,#11
	db #fb,#04,#ee,#07,#f0,#20,#e8,#11
	db #e0,#39,#e8,#21,#e8,#29,#8b,#95
	db #19,#2a,#2a,#29,#fe,#06,#15,#fe
	db #04,#fb,#0b,#ff,#f0,#09,#f0,#20
	db #eb,#11,#f5,#06,#eb,#41,#f0,#65
	db #f2,#56,#80,#84,#5f,#1f,#fc,#04
	db #0f,#fb,#04,#ee,#07,#f0,#20,#e8
	db #11,#e0,#39,#f5,#e8,#21,#e8,#29
	db #01,#19,#94,#18,#23,#fc,#04,#11
	db #fb,#04,#fe,#ee,#07,#f0,#20,#e8
	db #11,#e0,#39,#e8,#21,#e8,#29,#95
	db #19,#2a,#2f,#2a,#29,#fe,#06,#15
	db #fe,#04,#fb,#0b,#f0,#09,#f0,#20
	db #fd,#eb,#11,#f5,#06,#eb,#41,#f0
	db #65,#f2,#56,#80,#84,#1f,#fc,#04
	db #7f,#0f,#fb,#04,#ee,#07,#f0,#20
	db #e8,#11,#e0,#39,#e8,#21,#e8,#29
	db #d7,#01,#19,#94,#18,#23,#fc,#04
	db #11,#fb,#04,#ee,#07,#f0,#20,#f8
	db #e8,#11,#e0,#39,#e8,#21,#e8,#29
	db #95,#19,#2a,#2a,#29,#bf,#fe,#06
	db #15,#fe,#04,#fb,#0b,#f0,#09,#f0
	db #20,#eb,#11,#f5,#06,#f5,#eb,#41
	db #f0,#65,#f2,#56,#80,#84,#1f,#fc
	db #04,#0f,#fb,#04,#ff,#ee,#07,#f0
	db #20,#e8,#11,#e0,#39,#e8,#21,#e8
	db #29,#01,#19,#94,#18,#5f,#23,#fc
	db #04,#11,#fb,#04,#ee,#07,#f0,#20
	db #e8,#11,#e0,#39,#e2,#e8,#21,#e8
	db #29,#95,#19,#2a,#2a,#29,#fe,#06
	db #15,#ff,#fe,#04,#fb,#0b,#f0,#09
	db #f0,#20,#eb,#11,#f5,#06,#eb,#41
	db #f0,#65,#d7,#f2,#56,#80,#84,#1f
	db #fc,#04,#0f,#fb,#04,#ee,#07,#f0
	db #20,#fd,#e8,#11,#e0,#39,#e8,#21
	db #e8,#29,#01,#19,#94,#18,#23,#fc
	db #04,#7f,#11,#fb,#04,#ee,#07,#f0
	db #20,#e8,#11,#e0,#39,#e8,#21,#e8
	db #29,#8b,#95,#19,#2a,#2a,#29,#fe
	db #06,#15,#fe,#04,#fb,#0b,#ff,#f0
	db #09,#f0,#20,#eb,#11,#f5,#06,#eb
	db #41,#f0,#65,#f2,#56,#80,#84,#5f
	db #1f,#fc,#04,#0f,#fb,#04,#ee,#07
	db #f0,#20,#e8,#11,#e0,#39,#f5,#e8
	db #21,#e8,#29,#01,#19,#94,#18,#23
	db #fc,#04,#11,#fb,#04,#fe,#ee,#07
	db #f0,#20,#e8,#11,#e0,#39,#e8,#21
	db #e8,#29,#95,#19,#2a,#2f,#2a,#29
	db #fe,#06,#15,#fe,#04,#fb,#0b,#f0
	db #09,#f0,#20,#fd,#eb,#11,#f5,#06
	db #eb,#41,#f0,#65,#f2,#56,#80,#84
	db #1f,#fc,#04,#7f,#0f,#fb,#04,#ee
	db #07,#f0,#20,#e8,#11,#e0,#39,#e8
	db #21,#e8,#29,#d7,#01,#19,#94,#18
	db #23,#fc,#04,#11,#fb,#04,#ee,#07
	db #f0,#20,#f8,#e8,#11,#e0,#39,#e8
	db #21,#e8,#29,#95,#19,#2a,#2a,#29
	db #bf,#fe,#06,#15,#fe,#04,#fb,#0b
	db #f0,#09,#f0,#20,#eb,#11,#f5,#06
	db #f5,#eb,#41,#f0,#65,#f2,#56,#80
	db #84,#1f,#fc,#04,#0f,#fb,#04,#ff
	db #ee,#07,#f0,#20,#e8,#11,#e0,#39
	db #e8,#21,#e8,#29,#01,#19,#94,#18
	db #5f,#23,#fc,#04,#11,#fb,#04,#ee
	db #07,#f0,#20,#e8,#11,#e0,#39,#e2
	db #e8,#21,#e8,#29,#95,#19,#2a,#2a
	db #29,#fe,#06,#15,#ff,#fe,#04,#fb
	db #0b,#f0,#09,#f0,#20,#eb,#11,#f5
	db #06,#eb,#41,#f0,#65,#d7,#f2,#56
	db #80,#84,#1f,#fc,#04,#0f,#fb,#04
	db #ee,#07,#f0,#20,#fd,#e8,#11,#e0
	db #39,#e8,#21,#e8,#29,#01,#19,#94
	db #18,#23,#fc,#04,#7d,#11,#fb,#04
	db #ee,#07,#f0,#20,#e8,#11,#fc,#39
	db #20,#ed,#26,#f8,#e8,#60,#ec,#39
	db #c0,#0d,#e4,#bd,#e5,#69,#2a,#2a
	db #29,#bf,#fe,#06,#15,#fe,#04,#fb
	db #0b,#f0,#09,#f0,#20,#eb,#11,#f5
	db #06,#f5,#eb,#41,#f0,#65,#f2,#56
	db #80,#84,#1f,#fc,#04,#0f,#fb,#04
	db #fe,#ee,#07,#f0,#20,#e8,#11,#e0
	db #39,#e8,#21,#e8,#29,#9a,#19,#00
	db #ff,#01,#00,#01,#00,#01,#ff,#01
	db #fe,#01,#fd,#01,#fc,#01,#fb,#01
	db #fa,#ff,#01,#f9,#01,#f8,#01,#f7
	db #01,#f6,#01,#f5,#01,#f4,#01,#f3
	db #01,#f2,#ff,#01,#f1,#01,#f0,#01
	db #ef,#01,#ee,#01,#ed,#01,#ec,#01
	db #eb,#01,#ea,#ff,#01,#e9,#01,#e8
	db #01,#e7,#01,#e6,#01,#e5,#01,#e4
	db #01,#e3,#01,#e2,#ff,#01,#e1,#01
	db #e0,#01,#df,#01,#de,#01,#dd,#01
	db #dc,#01,#db,#01,#da,#f8,#01,#d9
	db #01,#d8,#01,#d7,#01,#d6,#d6,#d5
	db #0e,#7f,#ff,#01,#01,#01,#01,#01
	db #00,#01,#ff,#01,#fe,#01,#fd,#01
	db #fc,#ff,#01,#fb,#01,#fa,#01,#f9
	db #01,#f8,#01,#f7,#01,#f6,#01,#f5
	db #01,#f4,#ff,#01,#f3,#01,#f2,#01
	db #f1,#01,#f0,#01,#ef,#01,#ee,#01
	db #ed,#01,#ec,#ff,#01,#eb,#01,#ea
	db #01,#e9,#01,#e8,#01,#e7,#01,#e6
	db #01,#e5,#01,#e4,#ff,#01,#e3,#01
	db #e2,#01,#e1,#01,#e0,#01,#df,#01
	db #de,#01,#dd,#01,#dc,#ee,#01,#db
	db #01,#da,#8b,#d8,#0a,#01,#4f,#01
	db #4f,#4e,#4c,#00,#00
;
.music_info
	db "CPC Meuuuhting (2008)(Public Domain)()",0
	db "AYC",0

	read "music_end.asm"
