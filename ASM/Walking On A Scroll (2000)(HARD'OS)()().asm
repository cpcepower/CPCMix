; Music of Walking On A Scroll (2000)(HARD'OS)()()
; Ripped by Megachur the 05/10/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "WALKIOAS.BIN"
	ENDIF

music_date_rip_day		equ 05
music_date_rip_month	equ 10
music_date_rip_year		equ 2014
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
.l4800 equ $ + 1
	db #00,#00,#1e,#01,#2e,#00,#01,#d6
	db #01,#01,#56,#03,#01,#30,#08,#01
	db #08,#09,#01,#fc,#0d,#01,#45,#0e
	db #01,#41,#0f,#01,#18,#10,#01,#58
	db #10,#01,#52,#11,#01,#9c,#13,#01
	db #06,#16,#01,#46,#16,#ff,#00,#ff
	db #ff,#0e,#ff,#c1,#b7,#fe,#00,#00
	db #fe,#03,#ee,#00,#e1,#fe,#18,#df
	db #09,#7c,#0c,#6e,#41,#fe,#c0,#eb
	db #bd,#21,#fe,#d8,#df,#c9,#dc,#cc
	db #a1,#ff,#fe,#20,#eb,#1d,#fa,#ba
	db #ee,#2c,#d0,#f0,#d0,#90,#70,#80
	db #d0,#50,#bf,#d0,#40,#a1,#fe,#a0
	db #eb,#9d,#fa,#3a,#ee,#ac,#d0,#70
	db #d0,#10,#ef,#70,#00,#d0,#d0,#d0
	db #c0,#a1,#fe,#20,#eb,#1d,#fa,#ba
	db #ee,#2c,#fb,#d0,#f0,#d0,#90,#70
	db #80,#d0,#50,#d0,#40,#a1,#fe,#a0
	db #eb,#9d,#fe,#fa,#3a,#ee,#ac,#d0
	db #70,#d0,#10,#70,#00,#d0,#d0,#d0
	db #c0,#a1,#ff,#fe,#20,#eb,#1d,#fa
	db #ba,#ee,#2c,#d0,#f0,#d0,#90,#70
	db #80,#d0,#50,#bf,#d0,#40,#a1,#fe
	db #a0,#eb,#9d,#fa,#3a,#ee,#ac,#d0
	db #70,#d0,#10,#ef,#70,#00,#d0,#d0
	db #d0,#c0,#a1,#fe,#20,#eb,#1d,#fa
	db #ba,#ee,#2c,#fb,#d0,#f0,#d0,#90
	db #70,#80,#d0,#50,#d0,#40,#a1,#fe
	db #a0,#eb,#9d,#fe,#fa,#3a,#ee,#ac
	db #d0,#70,#d0,#10,#70,#00,#d0,#d0
	db #d0,#c0,#a1,#ff,#fe,#20,#eb,#1d
	db #fa,#ba,#ee,#2c,#d0,#f0,#d0,#90
	db #70,#80,#d0,#50,#bf,#d0,#40,#a1
	db #fe,#a0,#eb,#9d,#fa,#3a,#ee,#ac
	db #d0,#70,#d0,#10,#ef,#70,#00,#d0
	db #d0,#d0,#c0,#a1,#fe,#20,#eb,#1d
	db #fa,#ba,#ee,#2c,#fb,#d0,#f0,#d0
	db #90,#70,#80,#d0,#50,#d0,#40,#a1
	db #fe,#a0,#eb,#9d,#fe,#fa,#3a,#ee
	db #ac,#d0,#70,#d0,#10,#70,#00,#d0
	db #d0,#d0,#c0,#a1,#ff,#fe,#20,#eb
	db #1d,#fa,#ba,#ee,#2c,#d0,#f0,#d0
	db #90,#70,#80,#d0,#50,#bf,#d0,#40
	db #a1,#fe,#a0,#eb,#9d,#fa,#3a,#ee
	db #ac,#d0,#70,#d0,#10,#ef,#70,#00
	db #d0,#d0,#d0,#c0,#a1,#fe,#20,#eb
	db #1d,#fa,#ba,#ee,#2c,#fb,#d0,#f0
	db #d0,#90,#70,#80,#d0,#50,#d0,#40
	db #a1,#fe,#a0,#eb,#9d,#fe,#fa,#3a
	db #ee,#ac,#d0,#70,#d0,#10,#70,#00
	db #d0,#d0,#d0,#c0,#a1,#fe,#fe,#20
	db #eb,#1d,#fa,#ba,#ee,#2c,#d0,#f0
	db #01,#7d,#7f,#7e,#c1,#dd,#fe,#00
	db #eb,#fd,#e1,#fe,#18,#df,#09,#7c
	db #0c,#41,#fe,#c0,#bb,#eb,#bd,#21
	db #fe,#d8,#df,#c9,#dc,#cc,#a1,#fe
	db #20,#eb,#1d,#fe,#fa,#ba,#ee,#2c
	db #d0,#f0,#d0,#90,#70,#80,#d0,#50
	db #d0,#40,#a1,#f8,#fe,#a0,#eb,#9d
	db #fa,#3a,#ee,#ac,#d0,#70,#03,#b7
	db #fe,#00,#00,#fe,#03,#ee,#00,#01
	db #fe,#18,#df,#09,#7c,#0c,#6e,#04
	db #fe,#c0,#eb,#bd,#02,#fe,#d8,#df
	db #c9,#dc,#cc,#05,#ff,#fe,#20,#eb
	db #1d,#ee,#1a,#ca,#ea,#d0,#90,#70
	db #80,#d0,#50,#d0,#40,#7f,#05,#fe
	db #a0,#eb,#9d,#ee,#9a,#ca,#6a,#d0
	db #10,#70,#00,#d0,#d0,#bf,#d0,#c0
	db #05,#fe,#20,#eb,#1d,#ee,#1a,#ca
	db #ea,#d0,#90,#70,#80,#df,#d0,#50
	db #d0,#40,#05,#fe,#a0,#eb,#9d,#ee
	db #9a,#ca,#6a,#d0,#10,#ef,#70,#00
	db #d0,#d0,#d0,#c0,#05,#fe,#20,#eb
	db #1d,#ee,#1a,#ca,#ea,#f7,#d0,#90
	db #70,#80,#d0,#50,#d0,#40,#05,#fe
	db #a0,#eb,#9d,#ee,#9a,#fb,#ca,#6a
	db #d0,#10,#70,#00,#d0,#d0,#d0,#c0
	db #05,#fe,#20,#eb,#1d,#fd,#ee,#1a
	db #ca,#ea,#d0,#90,#70,#80,#d0,#50
	db #d0,#40,#05,#fe,#a0,#fe,#eb,#9d
	db #ee,#9a,#ca,#6a,#d0,#10,#70,#00
	db #d0,#d0,#d0,#c0,#05,#ff,#fe,#20
	db #eb,#1d,#ee,#1a,#ca,#ea,#d0,#90
	db #70,#80,#d0,#50,#d0,#40,#7f,#05
	db #fe,#a0,#eb,#9d,#ee,#9a,#ca,#6a
	db #d0,#10,#70,#00,#d0,#d0,#bf,#d0
	db #c0,#05,#fe,#20,#eb,#1d,#ee,#1a
	db #ca,#ea,#d0,#90,#70,#80,#df,#d0
	db #50,#d0,#40,#05,#fe,#a0,#eb,#9d
	db #ee,#9a,#ca,#6a,#d0,#10,#ef,#70
	db #00,#d0,#d0,#d0,#c0,#05,#fe,#20
	db #eb,#1d,#ee,#1a,#ca,#ea,#f7,#d0
	db #90,#70,#80,#d0,#50,#d0,#40,#05
	db #fe,#a0,#eb,#9d,#ee,#9a,#fb,#ca
	db #6a,#d0,#10,#70,#00,#d0,#d0,#d0
	db #c0,#05,#fe,#20,#eb,#1d,#fd,#ee
	db #1a,#ca,#ea,#d0,#90,#70,#80,#d0
	db #50,#d0,#40,#05,#fe,#a0,#fe,#eb
	db #9d,#ee,#9a,#ca,#6a,#d0,#10,#70
	db #00,#d0,#d0,#d0,#c0,#05,#fd,#fe
	db #20,#eb,#1d,#ee,#1a,#ca,#ea,#01
	db #7d,#7f,#7e,#03,#fe,#00,#bb,#eb
	db #fd,#01,#fe,#18,#df,#09,#7c,#0c
	db #04,#fe,#c0,#eb,#bd,#77,#02,#fe
	db #d8,#df,#c9,#dc,#cc,#05,#fe,#20
	db #eb,#1d,#ee,#1a,#fb,#ca,#ea,#d0
	db #90,#70,#80,#d0,#50,#d0,#40,#05
	db #fe,#a0,#eb,#9d,#c0,#ee,#9a,#ca
	db #6a,#47,#00,#23,#70,#38,#23,#91
	db #38,#1c,#91,#60,#c8,#fb,#09,#f7
	db #00,#2e,#63,#a7,#f8,#57,#1f,#5b
	db #5b,#57,#fd,#1f,#f9,#1d,#ee,#18
	db #f4,#00,#e8,#18,#f7,#01,#00,#eb
	db #ff,#fa,#68,#f4,#1a,#00,#ef,#86
	db #fa,#7a,#ee,#86,#fe,#f4,#af,#f4
	db #80,#e8,#98,#01,#80,#eb,#7f,#fa
	db #e8,#fa,#f4,#77,#04,#5e,#4f,#5e
	db #76,#77,#fa,#00,#1e,#3b,#73,#76
	db #fe,#0e,#f9,#05,#fa,#fa,#5b,#57
	db #fd,#1f,#e7,#ff,#e1,#fa,#dc,#f4
	db #12,#ee,#2a,#77,#58,#46,#58,#f8
	db #5e,#fe,#f9,#54,#fb,#67,#f3,#18
	db #e9,#61,#f9,#3c,#f5,#73,#ee,#8a
	db #6a,#04,#58,#42,#58,#69,#6a,#fa
	db #c0,#1b,#34,#7f,#69,#fe,#ce,#f9
	db #c5,#f4,#78,#e8,#c0,#fa,#9c,#f4
	db #d2,#ee,#ea,#f1,#ca,#60,#e8,#f6
	db #f4,#32,#f9,#68,#5e,#4f,#5e,#fd
	db #48,#ff,#fb,#81,#f9,#2c,#fb,#87
	db #f3,#38,#e9,#81,#fa,#5c,#f4,#92
	db #ee,#aa,#fe,#ca,#20,#fa,#0a,#f9
	db #bc,#f5,#f3,#ee,#0a,#fa,#62,#fa
	db #40,#1b,#3f,#34,#69,#fe,#4e,#f9
	db #45,#f4,#f8,#e8,#40,#fa,#1c,#f4
	db #52,#f8,#ee,#6a,#ca,#e0,#e8,#76
	db #f4,#b2,#f9,#e8,#5e,#4f,#5e,#ff
	db #fd,#c8,#fb,#01,#f9,#ac,#fb,#07
	db #f3,#b8,#e9,#01,#fa,#dc,#f4,#12
	db #ff,#ee,#2a,#ca,#a0,#fa,#8a,#f9
	db #3c,#f5,#73,#ee,#8a,#fa,#e2,#fa
	db #c0,#1f,#1b,#34,#69,#fe,#ce,#f9
	db #c5,#f4,#78,#e8,#c0,#fa,#9c,#fc
	db #f4,#d2,#ee,#ea,#ca,#60,#e8,#f6
	db #f4,#32,#f9,#68,#5e,#4f,#7f,#5e
	db #fd,#48,#fb,#81,#f9,#2c,#fb,#87
	db #f3,#38,#e9,#81,#fa,#5c,#ff,#f4
	db #92,#ee,#aa,#ca,#20,#fa,#0a,#f9
	db #bc,#f5,#f3,#ee,#0a,#fa,#62,#8f
	db #fa,#40,#1b,#34,#69,#fe,#4e,#f9
	db #45,#f4,#f8,#e8,#40,#fe,#fa,#1c
	db #f4,#52,#ee,#6a,#ca,#e0,#e8,#76
	db #f4,#b2,#f9,#e8,#5e,#3f,#4f,#5e
	db #fd,#c8,#fb,#01,#f9,#ac,#fb,#07
	db #f3,#b8,#e9,#01,#ff,#fa,#dc,#f4
	db #12,#ee,#2a,#ca,#a0,#fa,#8a,#f9
	db #3c,#f5,#73,#ee,#8a,#c7,#fa,#e2
	db #fa,#c0,#1b,#34,#69,#fe,#ce,#f9
	db #c5,#f4,#78,#ff,#e8,#c0,#fa,#9c
	db #f4,#d2,#ee,#ea,#ca,#60,#e8,#f6
	db #f4,#32,#f9,#68,#1f,#5e,#4f,#5e
	db #fd,#48,#fb,#81,#f9,#2c,#fb,#87
	db #f3,#38,#ff,#e9,#81,#fa,#5c,#f4
	db #92,#ee,#aa,#ca,#20,#fa,#0a,#f9
	db #bc,#f5,#f3,#e3,#ee,#0a,#fa,#62
	db #fa,#40,#1b,#34,#69,#fe,#4e,#f9
	db #45,#ff,#f4,#f8,#e8,#40,#fa,#1c
	db #f4,#52,#ee,#6a,#ca,#e0,#e8,#76
	db #f4,#b2,#8f,#f9,#e8,#5e,#4f,#5e
	db #fd,#c8,#fb,#01,#f9,#ac,#fb,#07
	db #ff,#f3,#b8,#e9,#01,#fa,#dc,#f4
	db #12,#ee,#2a,#ca,#a0,#fa,#8a,#f9
	db #3c,#f1,#f5,#73,#ee,#8a,#fa,#e2
	db #fa,#c0,#1b,#34,#69,#fe,#ce,#ff
	db #f9,#c5,#f4,#78,#e8,#c0,#fa,#9c
	db #f4,#d2,#ee,#ea,#ca,#60,#e8,#f6
	db #c7,#f4,#32,#f9,#68,#5e,#4f,#5e
	db #fd,#48,#fb,#81,#f9,#2c,#ff,#fb
	db #87,#f3,#38,#e9,#81,#fa,#5c,#f4
	db #92,#ee,#aa,#ca,#20,#fa,#0a,#f8
	db #f9,#bc,#f5,#f3,#ee,#0a,#fa,#62
	db #fa,#40,#1b,#34,#69,#ff,#fe,#4e
	db #f9,#45,#f4,#f8,#e8,#40,#fa,#1c
	db #f4,#52,#ee,#6a,#ca,#e0,#e3,#e8
	db #76,#f4,#b2,#f9,#e8,#5e,#4f,#5e
	db #fd,#c8,#fb,#01,#ff,#f9,#ac,#fb
	db #07,#f3,#b8,#e9,#01,#fa,#dc,#f4
	db #12,#ee,#2a,#ca,#a0,#fc,#fa,#8a
	db #f9,#3c,#f5,#73,#ee,#8a,#fa,#e2
	db #fa,#c0,#1b,#34,#7f,#69,#fe,#ce
	db #f9,#c5,#f4,#78,#e8,#c0,#fa,#9c
	db #f4,#d2,#ee,#ea,#f1,#ca,#60,#e8
	db #f6,#f4,#32,#f9,#68,#5e,#4f,#5e
	db #fd,#48,#ff,#fb,#81,#f9,#2c,#fb
	db #87,#f3,#38,#e9,#81,#fa,#5c,#f4
	db #92,#ee,#aa,#fe,#ca,#20,#fa,#0a
	db #f9,#bc,#f5,#f3,#ee,#0a,#fa,#62
	db #fa,#40,#1b,#3f,#34,#69,#fe,#4e
	db #f9,#45,#f4,#f8,#e8,#40,#fa,#1c
	db #f4,#52,#f8,#ee,#6a,#ca,#e0,#e8
	db #76,#f4,#b2,#f9,#e8,#5e,#4f,#5e
	db #ff,#fd,#c8,#fb,#01,#f9,#ac,#fb
	db #07,#f3,#b8,#e9,#01,#fa,#dc,#f4
	db #12,#ff,#ee,#2a,#ca,#a0,#fa,#8a
	db #f9,#3c,#f5,#73,#ee,#8a,#fa,#e2
	db #fa,#c0,#1f,#1b,#34,#69,#fe,#ce
	db #f9,#c5,#f4,#78,#e8,#c0,#fa,#9c
	db #fc,#f4,#d2,#ee,#ea,#ca,#60,#e8
	db #f6,#f4,#32,#f9,#68,#5e,#4f,#7f
	db #5e,#fd,#48,#fb,#81,#f9,#2c,#fb
	db #87,#f3,#38,#e9,#81,#fa,#5c,#ff
	db #f4,#92,#ee,#aa,#ca,#20,#fa,#0a
	db #f9,#bc,#f5,#f3,#ee,#0a,#fa,#62
	db #8f,#fa,#40,#1b,#34,#69,#fe,#4e
	db #f9,#45,#f4,#f8,#e8,#40,#fe,#fa
	db #1c,#f4,#52,#ee,#6a,#ca,#e0,#e8
	db #76,#f4,#b2,#f9,#e8,#5e,#3f,#4f
	db #5e,#fd,#c8,#fb,#01,#f9,#ac,#fb
	db #07,#f3,#b8,#e9,#01,#ff,#fa,#dc
	db #f4,#12,#ee,#2a,#ca,#a0,#fa,#8a
	db #f9,#3c,#f5,#73,#ee,#8a,#c7,#fa
	db #e2,#fa,#c0,#1b,#34,#69,#fe,#ce
	db #f9,#c5,#f4,#78,#ff,#e8,#c0,#fa
	db #9c,#f4,#d2,#ee,#ea,#ca,#60,#e8
	db #f6,#f4,#32,#f9,#68,#1f,#5e,#4f
	db #5e,#fd,#48,#fb,#81,#f9,#2c,#fb
	db #87,#f3,#38,#ff,#e9,#81,#fa,#5c
	db #f4,#92,#ee,#aa,#ca,#20,#fa,#0a
	db #f9,#bc,#f5,#f3,#e3,#ee,#0a,#fa
	db #62,#fa,#40,#1b,#34,#69,#fe,#4e
	db #f9,#45,#ff,#f4,#f8,#e8,#40,#fa
	db #1c,#f4,#52,#ee,#6a,#ca,#e0,#e8
	db #76,#f4,#b2,#8f,#f9,#e8,#5e,#4f
	db #5e,#fd,#c8,#fb,#01,#f9,#ac,#fb
	db #07,#ff,#f3,#b8,#e9,#01,#fa,#dc
	db #f4,#12,#ee,#2a,#ca,#a0,#fa,#8a
	db #f9,#3c,#f1,#f5,#73,#ee,#8a,#fa
	db #e2,#fa,#c0,#1b,#34,#69,#fe,#ce
	db #ff,#f9,#c5,#f4,#78,#e8,#c0,#fa
	db #9c,#f4,#d2,#ee,#ea,#ca,#60,#e8
	db #f6,#c7,#f4,#32,#f9,#68,#5e,#4f
	db #5e,#fd,#48,#fb,#81,#f9,#2c,#ff
	db #fb,#87,#f3,#38,#e9,#81,#fa,#5c
	db #f4,#92,#ee,#aa,#ca,#20,#fa,#0a
	db #f8,#f9,#bc,#f5,#f3,#ee,#0a,#fa
	db #62,#fa,#40,#1b,#34,#69,#ff,#fe
	db #4e,#f9,#45,#f4,#f8,#e8,#40,#fa
	db #1c,#f4,#52,#ee,#6a,#ca,#e0,#e3
	db #e8,#76,#f4,#b2,#f9,#e8,#5e,#4f
	db #5e,#fd,#c8,#fb,#01,#ff,#f9,#ac
	db #fb,#07,#f3,#b8,#e9,#01,#fa,#dc
	db #f4,#12,#ee,#2a,#ca,#a0,#fc,#fa
	db #8a,#f9,#3c,#f5,#73,#ee,#8a,#fa
	db #e2,#fa,#c0,#1b,#34,#7f,#69,#fe
	db #ce,#f9,#c5,#f4,#78,#e8,#c0,#fa
	db #9c,#f4,#d2,#ee,#ea,#f1,#ca,#60
	db #e8,#f6,#f4,#32,#f9,#68,#5e,#4f
	db #5e,#fd,#48,#ff,#fb,#81,#f9,#2c
	db #fb,#87,#f3,#38,#e9,#81,#fa,#5c
	db #f4,#92,#ee,#aa,#fe,#ca,#20,#fa
	db #0a,#f9,#bc,#f5,#f3,#ee,#0a,#fa
	db #62,#fa,#40,#1b,#3f,#34,#69,#fe
	db #4e,#f9,#45,#f4,#f8,#e8,#40,#fa
	db #1c,#f4,#52,#f8,#ee,#6a,#ca,#e0
	db #e8,#76,#f4,#b2,#fa,#f4,#06,#00
	db #03,#04,#02,#03,#01,#02,#01,#01
	db #77,#00,#fb,#09,#f7,#00,#fc,#17
	db #02,#f3,#1c,#ee,#18,#f4,#00,#ff
	db #e8,#18,#01,#00,#eb,#ff,#fa,#68
	db #f4,#1a,#fa,#29,#f4,#8b,#fa,#7a
	db #ff,#ee,#86,#f4,#af,#f4,#80,#e8
	db #98,#01,#80,#eb,#7f,#fa,#e8,#e2
	db #b8,#ff,#fa,#fa,#fa,#1d,#c4,#64
	db #01,#00,#eb,#ff,#fa,#68,#e2,#08
	db #64,#d8,#ff,#40,#d4,#fa,#e8,#e2
	db #88,#64,#58,#40,#54,#fa,#68,#e2
	db #08,#64,#d8,#ff,#40,#d4,#fa,#e8
	db #e2,#88,#64,#58,#40,#54,#fa,#68
	db #e2,#08,#64,#d8,#ff,#40,#d4,#fa
	db #e8,#e2,#88,#64,#58,#40,#54,#fa
	db #68,#e2,#08,#64,#d8,#ff,#40,#d4
	db #fa,#e8,#e2,#88,#64,#58,#40,#54
	db #fa,#68,#e2,#08,#64,#d8,#ff,#40
	db #d4,#fa,#e8,#e2,#88,#64,#58,#40
	db #54,#fa,#68,#e2,#08,#64,#d8,#ff
	db #40,#d4,#fa,#e8,#e2,#88,#64,#58
	db #40,#54,#fa,#68,#e2,#08,#64,#d8
	db #ff,#40,#d4,#fa,#e8,#e2,#88,#64
	db #58,#40,#54,#fa,#68,#e2,#08,#64
	db #d8,#ff,#40,#d4,#fa,#e8,#e2,#88
	db #64,#58,#40,#54,#fa,#68,#e2,#08
	db #64,#d8,#e0,#40,#d4,#fa,#e8,#fa
	db #88,#0e,#fe,#01,#00,#01,#00,#01
	db #ff,#01,#fe,#01,#fd,#01,#fc,#fb
	db #fa,#3c,#28,#76,#ee,#fe,#02,#ef
	db #fa,#00,#1e,#3b,#76,#a2,#fe,#0e
	db #77,#fa,#0c,#28,#4f,#9e,#fe,#1a
	db #9f,#88,#fa,#18,#2f,#5e,#bd,#fe
	db #26,#be,#2d,#58,#5c,#b2,#fe,#2c
	db #b3,#f4,#2a,#fa,#24,#fa,#3c,#35
	db #69,#5e,#d4,#fe,#4a,#d5,#fa,#48
	db #f4,#3c,#a0,#00,#f4,#90,#16,#2c
	db #2c,#58,#fe,#ce,#59,#fa,#cc,#f4
	db #6c,#24,#46,#42,#8d,#fe,#e6,#8e
	db #22,#42,#85,#fe,#ec,#86,#fc,#f4
	db #ea,#fa,#e4,#fa,#fc,#f4,#78,#f4
	db #fc,#a0,#c0,#3c,#76,#5f,#ee,#fe
	db #82,#ef,#fa,#80,#f4,#38,#f4,#68
	db #ee,#ba,#fa,#b0,#c5,#fa,#a4,#fa
	db #bc,#35,#69,#d4,#fe,#ca,#d5,#fa
	db #c8,#e2,#f4,#bc,#a0,#80,#f4,#10
	db #16,#2c,#58,#fe,#4e,#59,#e2,#fa
	db #4c,#f4,#ec,#fa,#7a,#22,#42,#85
	db #fe,#6c,#86,#fc,#f4,#6a,#fa,#64
	db #fa,#7c,#f4,#f8,#f4,#7c,#a0,#40
	db #ef,#ed,#a5,#fd,#01,#ef,#be,#00
	db #d5,#d3,#fd,#49,#d5,#fa,#48,#29
	db #be,#bc,#fd,#55,#be,#fa,#54,#b3
	db #b1,#fd,#61,#7a,#b3,#e2,#60,#f4
	db #54,#f4,#8a,#f4,#3c,#f0,#fe,#a7
	db #f1,#10,#f2,#f5,#f6,#fe,#ad,#f7
	db #f8,#fb,#fc,#84,#fe,#b3,#fd,#fe
	db #01,#02,#fe,#b9,#03,#04,#14,#07
	db #0d,#0b,#fd,#c1,#0d,#a6,#c0,#66
	db #64,#bc,#fd,#21,#66,#d6,#20,#d0
	db #f0,#f4,#9c,#c4,#86,#d5,#d3,#a5
	db #fd,#c9,#d5,#fa,#c8,#be,#bc,#fd
	db #d5,#be,#fa,#d4,#29,#b3,#b1,#fd
	db #e1,#b3,#fa,#e0,#b4,#b2,#fe,#e5
	db #05,#b4,#b6,#b7,#b5,#b6,#fe,#f1
	db #b9,#f4,#d4,#29,#a0,#9e,#fd,#05
	db #a0,#ee,#04,#78,#76,#fd,#1d,#50
	db #78,#ee,#1c,#79,#fe,#33,#7a,#7b
	db #7e,#7f,#82,#fe,#39,#80,#81,#84
	db #87,#85,#fd,#41,#87,#f0,#a6,#40
	db #fa,#2e,#be,#9a,#fa,#e2,#86,#83
	db #82,#81,#86,#fe,#3d,#80,#7d,#7c
	db #7b,#fe,#37,#fa,#dc,#ef,#52,#ed
	db #fd,#01,#ef,#be,#00,#d5,#d3,#fd
	db #49,#d5,#94,#fa,#48,#be,#bc,#fd
	db #55,#be,#fa,#54,#b3,#b1,#bd,#fd
	db #61,#b3,#e2,#60,#f4,#54,#f4,#8a
	db #f4,#3c,#f0,#fe,#a7,#08,#f1,#f2
	db #f5,#f6,#fe,#ad,#f7,#f8,#fb,#42
	db #fc,#fe,#b3,#fd,#fe,#01,#02,#fe
	db #b9,#03,#0a,#04,#07,#0d,#0b,#fd
	db #c1,#0d,#a6,#c0,#66,#5e,#64,#fd
	db #21,#66,#d6,#20,#d0,#f0,#f4,#9c
	db #c4,#86,#d5,#52,#d3,#fd,#c9,#d5
	db #fa,#c8,#be,#bc,#fd,#d5,#be,#94
	db #fa,#d4,#b3,#b1,#fd,#e1,#b3,#fa
	db #e0,#b4,#b2,#82,#fe,#e5,#b4,#b6
	db #b7,#b5,#b6,#fe,#f1,#b9,#94,#f4
	db #d4,#a0,#9e,#fd,#05,#a0,#ee,#04
	db #78,#76,#a8,#fd,#1d,#78,#ee,#1c
	db #79,#fe,#33,#7a,#7b,#7e,#41,#7f
	db #fe,#39,#80,#81,#84,#87,#85,#fd
	db #41,#78,#87,#a6,#40,#fa,#2e,#be
	db #9a,#fa,#e2,#86,#83,#82,#43,#81
	db #fe,#3d,#80,#7d,#7c,#7b,#fe,#37
	db #fa,#dc,#14,#3c,#76,#ee,#fe,#02
	db #ef,#fa,#00,#1e,#3b,#a2,#fd,#fc
	db #77,#fa,#0c,#28,#4f,#9e,#fe,#1a
	db #9f,#88,#fa,#18,#2f,#5e,#bd,#fe
	db #26,#be,#2d,#58,#5c,#b2,#fe,#2c
	db #b3,#f4,#2a,#fa,#24,#fa,#3c,#35
	db #69,#5e,#d4,#fe,#4a,#d5,#fa,#48
	db #f4,#3c,#a0,#00,#f4,#90,#16,#2c
	db #2c,#58,#fe,#ce,#59,#fa,#cc,#f4
	db #6c,#24,#46,#42,#8d,#fe,#e6,#8e
	db #22,#42,#85,#fe,#ec,#86,#fc,#f4
	db #ea,#fa,#e4,#fa,#fc,#f4,#78,#f4
	db #fc,#a0,#c0,#3c,#76,#5f,#ee,#fe
	db #82,#ef,#fa,#80,#f4,#38,#f4,#68
	db #ee,#ba,#fa,#b0,#c5,#fa,#a4,#fa
	db #bc,#35,#69,#d4,#fe,#ca,#d5,#fa
	db #c8,#e2,#f4,#bc,#a0,#80,#f4,#10
	db #16,#2c,#58,#fe,#4e,#59,#e2,#fa
	db #4c,#f4,#ec,#fa,#7a,#22,#42,#85
	db #fe,#6c,#86,#fd,#f4,#6a,#fa,#64
	db #fa,#7c,#f4,#f8,#f4,#7c,#a0,#40
	db #78,#fd,#c0,#29,#76,#78,#be,#00
	db #87,#fd,#d8,#85,#87,#fa,#48,#4e
	db #8f,#fd,#fc,#8d,#8f,#fa,#54,#f4
	db #48,#e8,#48,#a0,#92,#fd,#f0,#9e
	db #a0,#ee,#84,#b3,#b1,#fd,#9d,#b3
	db #fc,#ee,#9c,#f4,#78,#ac,#ba,#f4
	db #96,#e8,#84,#b8,#32,#78,#76,#a5
	db #fd,#81,#78,#be,#80,#6b,#69,#fd
	db #c9,#6b,#fa,#c8,#29,#5a,#58,#fd
	db #d5,#5a,#fa,#d4,#5f,#5d,#fd,#e1
	db #79,#5f,#ee,#e0,#f4,#bc,#f4,#d4
	db #dc,#d4,#87,#85,#fd,#35,#72,#87
	db #be,#34,#e8,#10,#f4,#70,#16,#2c
	db #fd,#84,#59,#8b,#fa,#a0,#18,#2e
	db #5e,#fe,#ae,#5f,#fa,#ac,#ee,#a0
	db #c5,#f4,#b8,#e2,#a6,#14,#27,#4f
	db #fe,#f6,#50,#fa,#f4,#6c,#78,#fe
	db #01,#fe,#02,#78,#be,#00,#f4,#94
	db #8f,#8d,#b9,#fd,#55,#8f,#fa,#54
	db #e8,#64,#f4,#54,#a0,#9e,#fd,#85
	db #4b,#a0,#ee,#84,#b3,#b1,#fd,#9d
	db #b3,#ee,#9c,#f4,#78,#f2,#ac,#ba
	db #f4,#96,#e8,#84,#b8,#32,#78,#76
	db #fd,#81,#78,#94,#be,#80,#6b,#69
	db #fd,#c9,#6b,#fa,#c8,#5a,#58,#a5
	db #fd,#d5,#5a,#fa,#d4,#5f,#5d,#fd
	db #e1,#5f,#ee,#e0,#e5,#f4,#bc,#f4
	db #d4,#dc,#d4,#87,#85,#fd,#35,#87
	db #be,#34,#ca,#e8,#10,#f4,#70,#16
	db #2c,#fd,#84,#59,#fa,#a0,#18,#2f
	db #2e,#5e,#fe,#ae,#5f,#fa,#ac,#ee
	db #a0,#f4,#b8,#e2,#a6,#14,#14,#27
	db #4f,#fe,#f6,#50,#fa,#f4,#3c,#76
	db #51,#ee,#fe,#02,#ef,#fa,#00,#1e
	db #3b,#76,#fe,#0e,#45,#77,#fa,#0c
	db #28,#4f,#9e,#fe,#1a,#9f,#fa,#18
	db #10,#2f,#5e,#bd,#fe,#26,#be,#2d
	db #58,#b2,#b8,#fe,#2c,#b3,#f4,#2a
	db #fa,#24,#fa,#3c,#35,#69,#d4,#bf
	db #fe,#4a,#d5,#fa,#48,#f4,#3c,#a0
	db #00,#f4,#90,#f4,#e8,#f4,#6c,#10
	db #24,#46,#8d,#fe,#e6,#8e,#22,#42
	db #85,#bf,#fe,#ec,#86,#f4,#ea,#fa
	db #e4,#fa,#fc,#f4,#78,#f4,#fc,#a0
	db #c0,#17,#3c,#76,#ee,#fe,#82,#ef
	db #fa,#80,#f4,#38,#f4,#68,#f1,#ee
	db #ba,#fa,#b0,#fa,#a4,#fa,#bc,#35
	db #69,#d4,#fe,#ca,#78,#d5,#fa,#c8
	db #f4,#bc,#a0,#80,#f4,#10,#16,#2c
	db #58,#b8,#fe,#4e,#59,#fa,#4c,#f4
	db #ec,#fa,#7a,#22,#42,#85,#bf,#fe
	db #6c,#86,#f4,#6a,#fa,#64,#fa,#7c
	db #f4,#f8,#f4,#7c,#a0,#40,#17,#3c
	db #76,#ee,#fe,#02,#ef,#fa,#00,#f4
	db #b8,#f4,#e8,#f1,#ee,#3a,#fa,#30
	db #fa,#24,#fa,#3c,#35,#69,#d4,#fe
	db #4a,#78,#d5,#fa,#48,#f4,#3c,#a0
	db #00,#f4,#90,#16,#2c,#58,#b8,#fe
	db #ce,#59,#fa,#cc,#f4,#6c,#fa,#fa
	db #22,#42,#85,#bf,#fe,#ec,#86,#f4
	db #ea,#fa,#e4,#fa,#fc,#f4,#78,#f4
	db #fc,#a0,#c0,#17,#3c,#76,#ee,#fe
	db #82,#ef,#fa,#80,#f4,#38,#f4,#68
	db #f1,#ee,#ba,#fa,#b0,#fa,#a4,#fa
	db #bc,#35,#69,#d4,#fe,#ca,#78,#d5
	db #fa,#c8,#f4,#bc,#a0,#80,#f4,#10
	db #16,#2c,#58,#b8,#fe,#4e,#59,#fa
	db #4c,#f4,#ec,#fa,#7a,#22,#42,#85
	db #bf,#fe,#6c,#86,#f4,#6a,#fa,#64
	db #fa,#7c,#f4,#f8,#f4,#7c,#a0,#40
	db #00,#ff,#01,#00,#01,#00,#01,#ff
	db #01,#fe,#01,#fd,#01,#fc,#01,#fb
	db #01,#fa,#df,#01,#f9,#3f,#f7,#01
	db #3a,#b9,#c7,#80,#01,#80,#01,#b8
	db #fe,#b6,#7f,#01,#3a,#b9,#c7,#80
	db #01,#80,#01,#b8,#01,#b7,#01,#b6
	db #01,#b5,#ff,#01,#b4,#01,#b3,#01
	db #b2,#01,#b1,#01,#b0,#01,#af,#01
	db #ae,#01,#ad,#f0,#01,#ac,#01,#ab
	db #01,#aa,#a9,#a9,#00,#86,#fd,#00
	db #01,#02,#03,#04,#fa,#07,#f4,#00
	db #09,#1f,#05,#00,#03,#fc,#0e,#f4
	db #21,#ee,#1a,#f6,#04,#e9,#1a,#ff
	db #01,#01,#ea,#00,#fc,#6a,#fe,#79
	db #f8,#6a,#fe,#60,#f0,#3e,#ea,#4a
	db #ff,#ec,#ab,#f6,#84,#e6,#9a,#01
	db #84,#ed,#b3,#fc,#ea,#fe,#f9,#e2
	db #ba,#ff,#b6,#5a,#01,#04,#ed,#33
	db #fc,#6a,#fe,#79,#e2,#3a,#64,#da
	db #40,#d6,#ff,#fc,#ea,#fe,#f9,#e2
	db #ba,#64,#5a,#40,#56,#fc,#6a,#fe
	db #79,#e2,#3a,#ff,#64,#da,#40,#d6
	db #fc,#ea,#fe,#f9,#e2,#ba,#64,#5a
	db #40,#56,#fc,#6a,#ff,#fe,#79,#e2
	db #3a,#64,#da,#40,#d6,#fc,#ea,#fe
	db #f9,#e2,#ba,#64,#5a,#ff,#40,#56
	db #fc,#6a,#fe,#79,#e2,#3a,#64,#da
	db #40,#d6,#fc,#ea,#fe,#f9,#ff,#e2
	db #ba,#64,#5a,#40,#56,#fc,#6a,#fe
	db #79,#e2,#3a,#64,#da,#40,#d6,#ff
	db #fc,#ea,#fe,#f9,#e2,#ba,#64,#5a
	db #40,#56,#fc,#6a,#fe,#79,#e2,#3a
	db #ff,#64,#da,#40,#d6,#fc,#ea,#fe
	db #f9,#e2,#ba,#64,#5a,#40,#56,#fc
	db #6a,#ff,#fe,#79,#e2,#3a,#64,#da
	db #40,#d6,#fc,#ea,#fe,#f9,#e2,#ba
	db #64,#5a,#ff,#40,#56,#fc,#6a,#fe
	db #79,#e2,#3a,#64,#da,#40,#d6,#fc
	db #ea,#fe,#f9,#ff,#e2,#ba,#64,#5a
	db #40,#56,#fc,#6a,#fe,#79,#e2,#3a
	db #64,#da,#40,#d6,#e0,#fc,#ea,#fe
	db #f9,#fc,#8a,#28,#5f,#38,#fe,#01
	db #28,#fd,#04,#fd,#01,#fc,#01,#f5
	db #01,#fc,#12,#ff,#f6,#04,#f9,#08
	db #f3,#1b,#f1,#00,#ea,#1b,#01,#01
	db #ea,#00,#fa,#6e,#ff,#f8,#6d,#f6
	db #6e,#f6,#88,#f8,#68,#f0,#88,#f3
	db #aa,#ed,#5d,#e4,#ac,#ff,#01,#8c
	db #f7,#bb,#f8,#de,#e4,#ba,#f8,#fa
	db #fa,#f8,#c5,#66,#01,#01,#ff,#ec
	db #00,#f8,#5e,#e4,#0a,#64,#d8,#40
	db #d4,#f8,#de,#e4,#8a,#64,#58,#ff
	db #40,#54,#f8,#5e,#e4,#0a,#64,#d8
	db #40,#d4,#f8,#de,#e4,#8a,#64,#58
	db #ff,#40,#54,#f8,#5e,#e4,#0a,#64
	db #d8,#40,#d4,#f8,#de,#e4,#8a,#64
	db #58,#ff,#40,#54,#f8,#5e,#e4,#0a
	db #64,#d8,#40,#d4,#f8,#de,#e4,#8a
	db #64,#58,#ff,#40,#54,#f8,#5e,#e4
	db #0a,#64,#d8,#40,#d4,#f8,#de,#e4
	db #8a,#64,#58,#ff,#40,#54,#f8,#5e
	db #e4,#0a,#64,#d8,#40,#d4,#f8,#de
	db #e4,#8a,#64,#58,#ff,#40,#54,#f8
	db #5e,#e4,#0a,#64,#d8,#40,#d4,#f8
	db #de,#e4,#8a,#64,#58,#ff,#40,#54
	db #f8,#5e,#e4,#0a,#64,#d8,#40,#d4
	db #f8,#de,#e4,#8a,#64,#58,#fe,#40
	db #54,#f8,#5e,#e4,#0a,#64,#d8,#40
	db #d4,#f8,#de,#fc,#f6,#10,#ff,#01
	db #00,#01,#00,#01,#ff,#01,#fe,#01
	db #fd,#01,#fc,#01,#fb,#01,#fa,#ff
	db #01,#f9,#01,#f8,#01,#f7,#01,#f6
	db #01,#f5,#01,#f4,#01,#f3,#01,#f2
	db #ff,#01,#f1,#01,#f0,#01,#ef,#01
	db #ee,#01,#ed,#01,#ec,#01,#eb,#01
	db #ea,#fe,#01,#e9,#01,#e8,#01,#e7
	db #01,#e6,#01,#e5,#01,#e4,#e3,#e2
	db #0f,#85,#fe,#00,#0e,#0d,#0c,#00
	db #ef,#06,#0d,#fb,#01,#0f,#0a,#08
	db #06,#04,#ee,#06,#f8,#33,#f4,#00
	db #e8,#18,#f9,#01,#00,#eb,#ff,#fa
	db #68,#fa,#74,#fa,#5c,#0f,#0a,#fb
	db #58,#ff,#f5,#87,#f9,#7a,#ef,#87
	db #f3,#aa,#f5,#99,#e7,#98,#01,#81
	db #ec,#80,#d3,#fa,#e8,#fa,#f4,#0e
	db #fd,#00,#0d,#0d,#fa,#00,#fc,#0b
	db #61,#0c,#f9,#ff,#fa,#fa,#0a,#08
	db #06,#04,#fe,#f2,#f8,#e8,#00,#fa
	db #dc,#f4,#12,#f4,#2a,#fe,#59,#0b
	db #0b,#0a,#7f,#0a,#01,#00,#ea,#ff
	db #fb,#69,#f4,#68,#51,#c6,#40,#d5
	db #fb,#e9,#ff,#f4,#e8,#51,#46,#40
	db #55,#fb,#69,#f4,#68,#51,#c6,#40
	db #d5,#fb,#e9,#ff,#f4,#e8,#51,#46
	db #40,#55,#fb,#69,#f4,#68,#51,#c6
	db #40,#d5,#fb,#e9,#ff,#f4,#e8,#51
	db #46,#40,#55,#fb,#69,#f4,#68,#51
	db #c6,#40,#d5,#fb,#e9,#ff,#f4,#e8
	db #51,#46,#40,#55,#fb,#69,#f4,#68
	db #51,#c6,#40,#d5,#fb,#e9,#ff,#f4
	db #e8,#51,#46,#40,#55,#fb,#69,#f4
	db #68,#51,#c6,#40,#d5,#fb,#e9,#ff
	db #f4,#e8,#51,#46,#40,#55,#fb,#69
	db #f4,#68,#51,#c6,#40,#d5,#fb,#e9
	db #ff,#f4,#e8,#51,#46,#40,#55,#fb
	db #69,#f4,#68,#51,#c6,#40,#d5,#fb
	db #e9,#ff,#f4,#e8,#51,#46,#40,#55
	db #fb,#69,#f4,#68,#51,#c6,#40,#d5
	db #fb,#e9,#80,#fa,#f4,#00,#fe,#01
	db #00,#01,#00,#01,#ff,#01,#fe,#01
	db #fd,#01,#fc,#fb,#fa,#0b,#02,#0b
	db #0a,#09,#08,#06,#09,#fe,#03,#07
	db #39,#06,#04,#e2,#00,#dc,#18,#ee
	db #42,#0c,#0c,#fd,#55,#27,#07,#0a
	db #fd,#56,#07,#05,#e2,#60,#dc,#78
	db #ee,#a2,#2f,#0d,#0d,#fd,#b5,#08
	db #fa,#54,#e2,#c0,#dc,#d8,#ee,#02
	db #2f,#0e,#0e,#fd,#15,#09,#fa,#b4
	db #e2,#20,#dc,#38,#ee,#62,#2f,#0f
	db #0f,#fd,#75,#0a,#fa,#14,#e2,#80
	db #dc,#98,#c4,#c2,#fd,#ca,#aa,#dc
	db #5c,#fa,#58,#dc,#58,#ee,#82,#fa
	db #3a,#0b,#fd,#9c,#3f,#08,#06,#e2
	db #a0,#dc,#b8,#ee,#e2,#fe,#35,#fe
	db #95,#c8,#03,#ff,#f4,#00,#dc,#3c
	db #dc,#24,#dc,#78,#94,#b3,#d0,#9c
	db #a0,#20,#e8,#74,#ff,#dc,#bc,#d0
	db #68,#c4,#80,#b8,#57,#fa,#1c,#b8
	db #a0,#b2,#0a,#f4,#00,#ff,#dc,#3c
	db #dc,#24,#b8,#f4,#b8,#d7,#d0,#9c
	db #a0,#20,#e8,#74,#dc,#bc,#fc,#d0
	db #68,#c4,#80,#b8,#57,#fa,#1c,#b8
	db #a0,#ee,#ed,#0b,#0b,#04,#0a,#09
	db #08,#06,#09,#fe,#03,#07,#06,#72
	db #04,#e2,#00,#dc,#18,#ee,#42,#0c
	db #0c,#fd,#55,#07,#4f,#0a,#fd,#56
	db #07,#05,#e2,#60,#dc,#78,#ee,#a2
	db #fe,#fe,#bc,#fd,#b5,#08,#fa,#54
	db #e2,#c0,#dc,#d8,#ee,#02,#0e,#0e
	db #bc,#fd,#15,#09,#fa,#b4,#e2,#20
	db #dc,#38,#ee,#62,#0f,#0f,#bf,#fd
	db #75,#0a,#fa,#14,#e2,#80,#dc,#98
	db #c4,#c2,#ca,#aa,#dc,#5c,#f4,#fa
	db #58,#dc,#58,#ee,#82,#fa,#3a,#0b
	db #fd,#9c,#08,#06,#ff,#e2,#a0,#dc
	db #b8,#ee,#e2,#fe,#35,#fe,#95,#c8
	db #03,#f4,#00,#dc,#3c,#ff,#dc,#30
	db #e8,#6c,#dc,#90,#b8,#cb,#fa,#b4
	db #f4,#14,#a0,#ba,#be,#4a,#fc,#dc
	db #bc,#dc,#b0,#dc,#74,#c4,#80,#cf
	db #b0,#fe,#94,#0d,#0c,#43,#0a,#fe
	db #9e,#0c,#0b,#0a,#08,#e2,#a0,#dc
	db #b8,#ff,#ed,#e2,#c5,#35,#db,#7c
	db #e9,#01,#d0,#54,#dc,#90,#b8,#cb
	db #fa,#b4,#ff,#f4,#14,#a0,#ba,#be
	db #4a,#dc,#bc,#dc,#b0,#dc,#74,#c4
	db #80,#cf,#b0,#88,#fe,#94,#0d,#0c
	db #0a,#fe,#9e,#0c,#0b,#0a,#74,#08
	db #e2,#a0,#dc,#b8,#ee,#e2,#0b,#fe
	db #fd,#09,#08,#23,#06,#09,#fe,#03
	db #07,#06,#04,#e2,#00,#dc,#18,#a2
	db #ee,#42,#0c,#fd,#fc,#09,#07,#0a
	db #fd,#56,#07,#7f,#05,#e2,#60,#dc
	db #78,#ee,#a2,#f4,#fa,#e2,#c0,#dc
	db #d8,#ee,#02,#2f,#0e,#0e,#fd,#15
	db #09,#fa,#b4,#e2,#20,#dc,#38,#ee
	db #62,#2f,#0f,#0f,#fd,#75,#0a,#fa
	db #14,#e2,#80,#dc,#98,#c4,#c2,#fd
	db #ca,#aa,#dc,#5c,#fa,#58,#dc,#58
	db #ee,#82,#fa,#3a,#0b,#fd,#9c,#3d
	db #08,#06,#e2,#a0,#dc,#b8,#ee,#e2
	db #fa,#fa,#09,#fe,#03,#1e,#07,#06
	db #04,#e2,#00,#dc,#18,#ee,#42,#fa
	db #9a,#0a,#9f,#fd,#56,#07,#05,#e2
	db #60,#dc,#78,#ee,#a2,#dc,#dc,#fa
	db #d8,#cb,#dc,#d8,#ee,#02,#0e,#0e
	db #fd,#15,#09,#fa,#b4,#e2,#20,#cb
	db #dc,#38,#ee,#62,#0f,#0f,#fd,#75
	db #0a,#fa,#14,#e2,#80,#ff,#dc,#98
	db #c4,#c2,#ca,#aa,#dc,#5c,#fa,#58
	db #dc,#58,#ee,#82,#fa,#3a,#4e,#0b
	db #fd,#9c,#08,#06,#e2,#a0,#dc,#b8
	db #ee,#e2,#1e,#b6,#fe,#00,#00,#fe
	db #03,#ee,#00,#07,#fe,#18,#fd,#15
	db #0f,#f6,#fe,#1e,#f7,#1b,#fa,#18
	db #70,#00,#22,#fe,#c0,#eb,#bd,#08
	db #de,#fe,#d8,#fd,#d5,#11,#fe,#de
	db #f7,#db,#fa,#d8,#d0,#c0,#2d,#db
	db #fe,#20,#eb,#1d,#0b,#fe,#38,#fd
	db #35,#16,#fe,#3e,#f7,#3b,#fd,#fa
	db #38,#d0,#f0,#d0,#90,#70,#80,#d0
	db #50,#d0,#40,#2d,#fe,#a0,#b7,#eb
	db #9d,#0b,#fe,#b8,#fd,#b5,#16,#fe
	db #be,#f7,#bb,#fa,#b8,#fb,#d0,#70
	db #d0,#10,#70,#00,#d0,#d0,#d0,#c0
	db #2d,#fe,#20,#eb,#1d,#6f,#0b,#fe
	db #38,#fd,#35,#16,#fe,#3e,#f7,#3b
	db #fa,#38,#d0,#f0,#f6,#d0,#90,#70
	db #80,#d0,#50,#d0,#40,#2d,#fe,#a0
	db #eb,#9d,#0b,#df,#fe,#b8,#fd,#b5
	db #16,#fe,#be,#f7,#bb,#fa,#b8,#d0
	db #70,#d0,#10,#ed,#70,#00,#d0,#d0
	db #d0,#c0,#2d,#fe,#20,#eb,#1d,#0b
	db #fe,#38,#bf,#fd,#35,#16,#fe,#3e
	db #f7,#3b,#fa,#38,#d0,#f0,#d0,#90
	db #70,#80,#db,#d0,#50,#d0,#40,#2d
	db #fe,#a0,#eb,#9d,#0b,#fe,#b8,#fd
	db #b5,#7f,#16,#fe,#be,#f7,#bb,#fa
	db #b8,#d0,#70,#d0,#10,#70,#00,#d0
	db #d0,#b6,#d0,#c0,#2d,#fe,#20,#eb
	db #1d,#0b,#fe,#38,#fd,#35,#16,#ff
	db #fe,#3e,#f7,#3b,#fa,#38,#d0,#f0
	db #d0,#90,#70,#80,#d0,#50,#d0,#40
	db #6d,#2d,#fe,#a0,#eb,#9d,#0b,#fe
	db #b8,#fd,#b5,#16,#fe,#be,#fe,#f7
	db #bb,#fa,#b8,#d0,#70,#d0,#10,#70
	db #00,#d0,#d0,#d0,#c0,#2d,#db,#fe
	db #20,#eb,#1d,#0b,#fe,#38,#fd,#35
	db #16,#fe,#3e,#f7,#3b,#fd,#fa,#38
	db #d0,#f0,#d0,#90,#70,#80,#d0,#50
	db #d0,#40,#2d,#fe,#a0,#b7,#eb,#9d
	db #0b,#fe,#b8,#fd,#b5,#16,#fe,#be
	db #f7,#bb,#fa,#b8,#fb,#d0,#70,#d0
	db #10,#70,#00,#d0,#d0,#d0,#c0,#2d
	db #fe,#20,#eb,#1d,#6f,#0b,#fe,#38
	db #fd,#35,#16,#fe,#3e,#f7,#3b,#fa
	db #38,#d0,#f0,#f6,#d0,#90,#70,#80
	db #d0,#50,#d0,#40,#2d,#fe,#a0,#eb
	db #9d,#0b,#df,#fe,#b8,#fd,#b5,#16
	db #fe,#be,#f7,#bb,#fa,#b8,#d0,#70
	db #d0,#10,#ed,#70,#00,#d0,#d0,#d0
	db #c0,#2d,#fe,#20,#eb,#1d,#0b,#fe
	db #38,#bf,#fd,#35,#16,#fe,#3e,#f7
	db #3b,#fa,#38,#d0,#f0,#d0,#90,#70
	db #80,#db,#d0,#50,#d0,#40,#2d,#fe
	db #a0,#eb,#9d,#0b,#fe,#b8,#fd,#b5
	db #7f,#16,#fe,#be,#f7,#bb,#fa,#b8
	db #d0,#70,#d0,#10,#70,#00,#d0,#d0
	db #b6,#d0,#c0,#2d,#fe,#20,#eb,#1d
	db #0b,#fe,#38,#fd,#35,#16,#ff,#fe
	db #3e,#f7,#3b,#fa,#38,#d0,#f0,#d0
	db #90,#70,#80,#d0,#50,#d0,#40,#6d
	db #2d,#fe,#a0,#eb,#9d,#0b,#fe,#b8
	db #fd,#b5,#16,#fe,#be,#fe,#f7,#bb
	db #fa,#b8,#d0,#70,#d0,#10,#70,#00
	db #d0,#d0,#d0,#c0,#2d,#db,#fe,#20
	db #eb,#1d,#0b,#fe,#38,#fd,#35,#16
	db #fe,#3e,#f7,#3b,#f6,#fa,#38,#d0
	db #f0,#01,#7d,#7f,#7e,#1e,#fe,#00
	db #eb,#fd,#07,#de,#fe,#18,#fd,#15
	db #0f,#fe,#1e,#f7,#1b,#fa,#18,#70
	db #00,#22,#db,#fe,#c0,#eb,#bd,#08
	db #fe,#d8,#fd,#d5,#11,#fe,#de,#f7
	db #db,#db,#fa,#d8,#d0,#c0,#2d,#fe
	db #20,#eb,#1d,#0b,#fe,#38,#fd,#35
	db #7f,#16,#fe,#3e,#f7,#3b,#fa,#38
	db #d0,#f0,#d0,#90,#70,#80,#d0,#50
	db #b6,#d0,#40,#2d,#fe,#a0,#eb,#9d
	db #0b,#fe,#b8,#fd,#b5,#16,#f0,#fe
	db #be,#f7,#bb,#fa,#b8,#d0,#70,#00
	db #ff,#01,#00,#01,#00,#01,#ff,#01
	db #fe,#01,#fd,#01,#fc,#01,#fb,#01
	db #fa,#ff,#01,#f9,#01,#f8,#01,#f7
	db #01,#f6,#01,#f5,#01,#f4,#01,#f3
	db #01,#f2,#ff,#01,#f1,#01,#f0,#01
	db #ef,#01,#ee,#01,#ed,#01,#ec,#01
	db #eb,#01,#ea,#fe,#01,#e9,#01,#e8
	db #01,#e7,#01,#e6,#01,#e5,#01,#e4
	db #e3,#e3,#0e,#1f,#ff,#ff,#00,#fe
	db #01,#01,#00,#01,#09,#01,#08,#01
	db #07,#ff,#01,#06,#01,#05,#01,#04
	db #01,#03,#01,#02,#01,#01,#01,#00
	db #01,#ff,#ff,#01,#fe,#01,#fd,#01
	db #fc,#01,#fb,#01,#fa,#01,#f9,#01
	db #f8,#01,#f7,#ff,#01,#f6,#01,#f5
	db #01,#f4,#01,#f3,#01,#f2,#6d,#e7
	db #01,#7e,#7f,#7e,#5c,#0e,#fe,#fe
	db #00,#01,#fe,#01,#07,#02,#fc,#00
	db #00
;
.music_info
	db "Walking On A Scroll (2000)(HARD'OS)()",0
	db "",0

	read "music_end.asm"
