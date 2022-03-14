; Music of Fucking Exams 2 (2002)(Revival)()()
; Ripped by Megachur the 24/08/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FUCKINE2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
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
	ld (l0000),a	; #0000 - modified by Megachur
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
.l42e4 equ $ + 2
	call pe,#3142
	ld a,(de)
	ld b,(hl)
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l4638
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l4642
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l464c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l4656
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l4660
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l466a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l4674
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l467e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l4688
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l4692
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l469c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l46a6
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l46ba
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (l0002),sp
	ld a,(l0001)
	dec a
	nop
	ld h,#00
	ld iy,l0001
	jp l0001
	ld hl,(l0002)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (l0002),de
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
	db #d6,#01,#d7,#01,#d8,#01,#3c,#12
	db #1c,#3c,#3c,#3c,#3c,#3c,#3c,#3c
	db #3c,#3c,#3c,#3c,#3c,#3c,#3c,#3c
	db #3c,#3c,#3c,#c9,#3c,#12,#1c,#3c
	db #3c,#3c,#12,#1c,#3c,#12,#1c,#3c
	db #3c,#12,#1c,#3c,#3c,#12,#1c,#3c
	db #3c,#12,#1c,#3c,#3c,#3c,#3c,#12
	db #1c,#3c,#3c,#12,#1c,#3c,#3c,#3c
	db #3c,#12,#1c,#3c,#3c,#3c,#3c,#12
	db #1c,#3c,#3c,#3c,#3c,#12,#1c,#3c
	db #3c,#3c,#3c,#12,#1c,#3c,#3c,#3c
	db #3c,#3c,#12,#1c,#3c,#3c,#3c,#3c
	db #12,#1c,#3c,#3c,#3c,#3c,#3c,#12
	db #1c,#3c,#3c,#3c,#3c,#3c,#12,#1c
	db #3c,#3c,#3c,#3c,#3c,#12,#1c,#3c
	db #3c,#3c,#3c,#3c,#12,#1c,#3c,#3c
	db #3c,#3c,#3c,#3c,#12,#1c,#3c,#3c
.l4800 equ $ + 1
	db #3c,#e5,#1c,#04,#2e,#00,#04,#3d
	db #02,#04,#63,#03,#01,#63,#06,#04
	db #c8,#06,#01,#f2,#0a,#01,#67,#0b
	db #01,#2d,#0c,#04,#de,#0e,#01,#bb
	db #0f,#01,#6e,#11,#04,#22,#13,#04
	db #09,#14,#01,#63,#14,#ff,#ff,#ff
	db #ff,#ff,#ff,#7b,#07,#7b,#7b,#51
	db #18,#47,#d9,#05,#00,#01,#03,#00
	db #ee,#2b,#01,#01,#0c,#d4,#d4,#b3
	db #d4,#51,#51,#f2,#3e,#01,#ff,#e4
	db #29,#01,#f8,#6e,#01,#fa,#54,#01
	db #f2,#53,#01,#f9,#7d,#01,#dd,#68
	db #01,#c7,#61,#01,#ec,#e0,#01,#f8
	db #a5,#84,#01,#ea,#33,#02,#f3,#42
	db #02,#eb,#02,#02,#f2,#8e,#02,#7b
	db #38,#d4,#fd,#f5,#a5,#02,#f9,#a3
	db #02,#fc,#9c,#02,#f6,#bb,#02,#f9
	db #b1,#02,#aa,#a3,#02,#ee,#ee,#23
	db #03,#1f,#7b,#38,#0c,#ee,#38,#03
	db #80,#a3,#02,#eb,#38,#03,#eb,#23
	db #03,#01,#a5,#02,#ff,#5b,#a4,#03
	db #f2,#22,#01,#fa,#9f,#01,#f1,#83
	db #01,#f3,#a0,#01,#dc,#9f,#01,#f2
	db #37,#01,#fb,#f4,#01,#ef,#f0,#d6
	db #01,#f4,#f4,#01,#db,#f2,#01,#1c
	db #f5,#41,#02,#f9,#3f,#02,#f0,#2a
	db #02,#f4,#48,#02,#e3,#db,#46,#02
	db #01,#45,#01,#c2,#44,#02,#d4,#51
	db #51,#f2,#ce,#03,#56,#93,#02,#7f
	db #66,#f5,#8d,#00,#f9,#8b,#00,#f0
	db #76,#00,#f4,#94,#00,#db,#92,#00
	db #ac,#67,#03,#01,#e5,#03,#f8,#c2
	db #e4,#00,#e8,#d2,#03,#f2,#83,#02
	db #f9,#44,#02,#eb,#83,#02,#7b,#38
	db #6a,#fc,#fc,#b6,#02,#f0,#91,#02
	db #f4,#b6,#02,#f2,#aa,#01,#f2,#bf
	db #01,#eb,#d7,#02,#7b,#38,#7e,#86
	db #fc,#0a,#03,#f0,#e5,#02,#f4,#0a
	db #03,#f2,#5e,#03,#f2,#3d,#02,#eb
	db #2b,#03,#7b,#3f,#38,#77,#fc,#5e
	db #03,#f0,#39,#03,#f4,#5e,#03,#f2
	db #b2,#03,#f2,#17,#01,#eb,#7f,#03
	db #1f,#7b,#38,#8e,#fc,#b2,#03,#f0
	db #8d,#03,#f4,#b2,#03,#01,#83,#02
	db #c0,#82,#03,#ff,#e8,#72,#02,#b1
	db #3a,#01,#d6,#31,#02,#d6,#79,#01
	db #fa,#61,#00,#fa,#d2,#01,#f2,#5f
	db #00,#f7,#bd,#01,#ff,#f3,#d4,#01
	db #dc,#d3,#01,#e9,#5b,#02,#f4,#0e
	db #02,#f4,#28,#02,#db,#26,#02,#01
	db #25,#01,#c2,#24,#02,#e3,#01,#12
	db #01,#01,#11,#02,#4d,#10,#03,#51
	db #18,#47,#ee,#65,#02,#f8,#5c,#02
	db #ff,#f9,#7f,#02,#fa,#64,#02,#f2
	db #63,#02,#f9,#8d,#02,#dd,#78,#02
	db #c7,#71,#02,#ec,#f0,#02,#a5,#94
	db #02,#ff,#ea,#43,#03,#f3,#52,#03
	db #eb,#12,#03,#01,#55,#02,#a1,#54
	db #03,#aa,#13,#01,#d6,#2f,#01,#f4
	db #93,#01,#ff,#f7,#98,#01,#f4,#e7
	db #01,#f7,#ec,#01,#82,#05,#01,#eb
	db #98,#01,#eb,#83,#01,#01,#05,#01
	db #af,#04,#02,#7b,#8e,#f5,#a5,#03
	db #f9,#a3,#03,#f0,#64,#03,#f9,#ac
	db #03,#9f,#f5,#cf,#03,#f9,#cd,#03
	db #fe,#f0,#b8,#03,#f9,#d6,#03,#f5
	db #e5,#03,#fd,#ef,#03,#fb,#00,#00
	db #f0,#e2,#03,#f9,#15,#00,#bd,#ff
	db #f5,#23,#00,#f9,#21,#00,#f0,#0c
	db #00,#f9,#2a,#00,#58,#a5,#03,#82
	db #fd,#02,#d6,#49,#01,#d6,#cb,#00
	db #f0,#82,#9d,#01,#01,#a5,#03,#01
	db #a4,#00,#5e,#a3,#01,#01,#9d,#fd
	db #00,#00,#02,#05,#d9,#05,#00,#01
	db #03,#00,#ed,#17,#01,#00,#fd,#3f
	db #01,#ff,#fd,#01,#00,#f2,#3f,#01
	db #e4,#2a,#01,#f9,#6f,#01,#fa,#54
	db #01,#f2,#53,#01,#f8,#76,#01,#de
	db #69,#01,#ff,#c7,#61,#01,#ec,#e0
	db #01,#a5,#84,#01,#ea,#33,#02,#f3
	db #42,#02,#ea,#02,#02,#f1,#46,#01
	db #fc,#9d,#02,#ff,#f8,#a8,#02,#f9
	db #a3,#02,#fb,#9c,#02,#ef,#a8,#02
	db #9f,#a4,#02,#f7,#13,#03,#ef,#69
	db #02,#7e,#a1,#02,#ff,#df,#38,#03
	db #f2,#bb,#03,#01,#aa,#02,#60,#a9
	db #03,#f2,#22,#01,#fa,#a0,#01,#eb
	db #79,#00,#d5,#98,#01,#ff,#01,#45
	db #01,#19,#44,#02,#ef,#cc,#03,#57
	db #94,#02,#82,#e9,#02,#2e,#6b,#02
	db #6a,#8d,#00,#e9,#d3,#03,#ff,#f1
	db #83,#02,#ec,#50,#01,#d4,#83,#02
	db #f3,#62,#02,#f3,#14,#02,#ea,#d7
	db #02,#f2,#d1,#02,#eb,#4c,#02,#ff
	db #01,#84,#02,#18,#83,#03,#e9,#73
	db #02,#b1,#3a,#01,#ac,#4f,#01,#ac
	db #dd,#01,#ac,#f7,#01,#01,#25,#01
	db #f7,#c1,#4a,#03,#01,#13,#01,#01
	db #12,#02,#4c,#11,#03,#05,#ee,#65
	db #02,#f8,#5c,#02,#f8,#41,#02,#ff
	db #fa,#73,#02,#f3,#64,#02,#f8,#86
	db #02,#de,#79,#02,#c7,#71,#02,#ec
	db #f0,#02,#a5,#94,#02,#ea,#43,#03
	db #ff,#f3,#52,#03,#ea,#12,#03,#01
	db #56,#02,#a0,#55,#03,#76,#15,#01
	db #f1,#2b,#02,#f1,#cc,#00,#82,#05
	db #01,#ff,#df,#98,#01,#f2,#1b,#02
	db #01,#0a,#01,#2a,#09,#02,#01,#b1
	db #03,#01,#b4,#03,#01,#b7,#03,#01
	db #ba,#03,#80,#3a,#0d,#00,#47,#04
	db #47,#47,#32,#35,#6a,#fc,#05,#00
	db #43,#47,#47,#8e,#fc,#0c,#00,#64
	db #6a,#d4,#fc,#13,#00,#f9,#0a,#00
	db #01,#03,#00,#f6,#01,#06,#00,#7a
	db #01,#02,#fd,#00,#00,#fc,#a5,#02
	db #4f,#fa,#aa,#02,#f9,#a3,#02,#43
	db #ed,#fa,#b8,#02,#eb,#a3,#02,#a5
	db #aa,#02,#59,#fa,#2f,#03,#f2,#28
	db #03,#5e,#fa,#44,#03,#d7,#f9,#3d
	db #03,#fb,#51,#03,#5a,#fd,#54,#03
	db #58,#e7,#54,#03,#fb,#89,#02,#f9
	db #79,#03,#03,#6b,#6a,#6a,#69,#68
	db #69,#e8,#7f,#03,#fb,#9e,#02,#81
	db #f9,#a3,#03,#8f,#8e,#8e,#8d,#8c
	db #8d,#e8,#a9,#03,#f1,#d6,#75,#03
	db #01,#a3,#02,#a8,#a2,#03,#f8,#49
	db #01,#46,#46,#46,#e8,#4d,#01,#ee
	db #f2,#9b,#00,#f9,#86,#00,#fb,#81
	db #01,#50,#f8,#70,#00,#f2,#55,#00
	db #f8,#9d,#01,#42,#38,#42,#42,#f6
	db #60,#00,#f2,#4a,#01,#f2,#7b,#01
	db #4f,#4f,#4e,#fd,#fc,#ca,#01,#f4
	db #6d,#01,#eb,#c1,#01,#e2,#ef,#01
	db #f9,#94,#00,#fb,#1b,#02,#5f,#f1
	db #9a,#00,#ff,#e4,#7b,#01,#d8,#ba
	db #01,#f7,#b7,#00,#eb,#54,#02,#01
	db #43,#01,#5b,#42,#02,#d5,#32,#03
	db #d7,#19,#01,#40,#77,#f5,#8b,#00
	db #78,#77,#77,#76,#75,#76,#ff,#e8
	db #95,#00,#eb,#b9,#03,#eb,#c2,#00
	db #d6,#37,#00,#f2,#30,#00,#f9,#ba
	db #00,#f9,#6a,#03,#f2,#17,#01,#bf
	db #d7,#62,#00,#69,#dd,#e3,#03,#f9
	db #38,#01,#f9,#ef,#02,#eb,#09,#01
	db #ef,#bc,#00,#c4,#bc,#03,#f4,#eb
	db #b1,#01,#eb,#8b,#00,#e4,#b1,#01
	db #dd,#25,#01,#70,#f6,#59,#02,#71
	db #71,#04,#71,#70,#6f,#6f,#6f,#e8
	db #63,#02,#23,#47,#08,#59,#8e,#8e
	db #8e,#dc,#85,#02,#2c,#59,#6a,#10
	db #b3,#b3,#b3,#f8,#af,#02,#27,#4f
	db #5e,#9f,#30,#9f,#9f,#f8,#bd,#02
	db #f2,#83,#02,#21,#43,#4f,#86,#3f
	db #86,#86,#f1,#d9,#02,#eb,#83,#02
	db #f2,#bb,#02,#f9,#0b,#03,#f4,#ad
	db #02,#eb,#01,#03,#81,#e2,#33,#03
	db #2f,#5e,#77,#bd,#bd,#bd,#f8,#57
	db #03,#ff,#d6,#ad,#02,#d8,#fa,#02
	db #f7,#b1,#03,#eb,#94,#03,#01,#83
	db #02,#af,#82,#03,#f9,#0e,#01,#f9
	db #f9,#00,#e0,#f9,#a5,#00,#eb,#2a
	db #01,#dd,#23,#01,#4f,#9f,#bd,#3e
	db #3e,#00,#3e,#bd,#47,#8e,#b3,#1c
	db #1c,#1c,#71,#b3,#b3,#77,#01,#f9
	db #62,#01,#b3,#cb,#01,#2f,#5e,#70
	db #fd,#6c,#01,#75,#70,#b3,#1f,#02
	db #01,#23,#01,#af,#22,#02,#47,#fa
	db #c3,#03,#4f,#fa,#ca,#03,#bb,#f9
	db #c3,#03,#43,#fa,#d8,#03,#eb,#c3
	db #03,#a5,#ca,#03,#59,#fa,#4f,#00
	db #f2,#48,#00,#75,#5e,#fa,#64,#00
	db #f9,#5d,#00,#fb,#71,#00,#5a,#fd
	db #74,#00,#58,#e7,#74,#00,#40,#6a
	db #f5,#95,#00,#6b,#6a,#6a,#69,#68
	db #69,#e0,#e8,#9f,#00,#fd,#de,#00
	db #f7,#c1,#00,#8f,#8e,#8e,#8d,#8c
	db #7e,#8d,#e8,#c9,#00,#d6,#95,#00
	db #01,#c3,#03,#ae,#c2,#00,#fa,#15
	db #03,#dd,#66,#02,#59,#07,#b3,#d4
	db #66,#66,#66,#f8,#8f,#02,#f9,#c0
	db #02,#f9,#9e,#02,#81,#f2,#63,#02
	db #43,#86,#9f,#0c,#0c,#0c,#f1,#b9
	db #02,#fc,#eb,#63,#02,#f2,#9b,#02
	db #f9,#eb,#02,#f4,#8d,#02,#eb,#e1
	db #02,#e2,#13,#03,#5e,#bd,#0f,#ee
	db #7b,#7b,#7b,#f8,#37,#03,#d6,#8d
	db #02,#d8,#da,#02,#f7,#91,#03,#fe
	db #eb,#74,#03,#01,#63,#02,#ae,#62
	db #03,#01,#14,#01,#af,#13,#02,#01
	db #04,#01,#b0,#03,#02,#38,#20,#3b
	db #77,#f3,#a5,#03,#76,#76,#76,#77
	db #77,#13,#3b,#3f,#7e,#ee,#ba,#03
	db #43,#47,#f4,#4f,#03,#fd,#74,#03
	db #62,#8d,#fd,#70,#03,#c1,#a3,#03
	db #47,#4b,#96,#f3,#23,#00,#95,#0c
	db #95,#95,#96,#96,#ac,#cd,#03,#97
	db #e2,#03,#4b,#4f,#44,#9f,#f3,#f5
	db #00,#9e,#9e,#9e,#ce,#fe,#00,#4f
	db #54,#47,#a8,#fc,#3a,#01,#59,#5e
	db #bd,#fc,#41,#01,#f9,#38,#01,#c7
	db #4c,#01,#1f,#64,#6a,#d4,#ee,#88
	db #01,#eb,#de,#00,#eb,#a8,#01,#e5
	db #9b,#01,#f9,#c9,#00,#ff,#f9,#46
	db #01,#eb,#c9,#00,#d5,#fb,#01,#f9
	db #3f,#01,#f2,#34,#02,#01,#a3,#03
	db #01,#a2,#00,#5e,#a1,#01,#00,#47
	db #47,#00,#ff,#01,#00,#01,#00,#01
	db #ff,#01,#fe,#01,#fd,#01,#fc,#01
	db #fb,#01,#fa,#fd,#01,#f9,#01,#f8
	db #01,#f7,#01,#f6,#01,#f5,#81,#f3
	db #01,#fe,#73,#ff,#a8,#6f,#0b,#cd
	db #f9,#c7,#ac,#c3,#01,#1a,#01,#1d
	db #01,#1c,#b5,#1a,#7f,#01,#fe,#66
	db #db,#65,#f2,#64,#d6,#8e,#fa,#c2
	db #ca,#b7,#d5,#63,#ff,#f6,#b0,#8d
	db #8f,#e2,#95,#e8,#1f,#8e,#38,#d5
	db #b3,#f6,#00,#8d,#df,#ff,#f4,#e5
	db #01,#03,#01,#05,#01,#04,#01,#03
	db #01,#02,#01,#01,#01,#00,#80,#1a
	db #ff,#54,#88,#fa,#00,#00,#32,#35
	db #6a,#fc,#09,#00,#43,#47,#8e,#8f
	db #fc,#10,#00,#64,#6a,#d4,#fc,#17
	db #00,#f9,#0e,#00,#01,#07,#00,#cf
	db #06,#01,#08,#70,#77,#59,#77,#b0
	db #54,#01,#64,#6a,#4f,#42,#6a,#b0
	db #a8,#01,#59,#5e,#47,#5e,#5c,#fc
	db #01,#54,#23,#59,#b3,#fc,#a5,#02
	db #59,#5e,#bd,#fc,#ac,#02,#f9,#a3
	db #02,#1f,#4b,#4f,#9f,#fc,#ba,#02
	db #eb,#a3,#02,#a5,#aa,#02,#f9,#49
	db #01,#f2,#28,#03,#1c,#70,#77,#ee
	db #fc,#46,#03,#f9,#3d,#03,#dd,#51
	db #03,#86,#8e,#44,#1c,#f3,#77,#03
	db #1b,#1b,#1b,#e9,#80,#03,#a8,#b3
	db #47,#66,#f3,#a1,#03,#65,#65,#65
	db #e9,#aa,#03,#d6,#75,#03,#01,#a3
	db #02,#d1,#af,#a2,#03,#f7,#3b,#01
	db #47,#f2,#4c,#01,#46,#46,#46,#e8
	db #56,#01,#44,#59,#f5,#76,#01,#5a
	db #59,#4f,#f5,#84,#01,#50,#4f,#a3
	db #f2,#4d,#01,#43,#f2,#a0,#01,#42
	db #42,#42,#fd,#ac,#01,#eb,#4c,#01
	db #8f,#f2,#84,#01,#4f,#4f,#4e,#fc
	db #d3,#01,#f4,#76,#01,#eb,#ca,#01
	db #e2,#f8,#01,#4d,#5e,#f5,#1e,#02
	db #5f,#5e,#d6,#76,#01,#d8,#c3,#01
	db #5a,#fd,#7b,#02,#7a,#58,#fc,#7b
	db #02,#f4,#5d,#02,#eb,#72,#02,#eb
	db #a0,#02,#6a,#f5,#bd,#02,#6b,#3a
	db #6a,#6a,#f3,#1e,#02,#e4,#2c,#02
	db #e4,#6b,#02,#59,#f2,#1e,#02,#5e
	db #3d,#5e,#5d,#fc,#1b,#03,#f3,#bd
	db #02,#eb,#12,#03,#e4,#41,#03,#77
	db #f5,#65,#03,#38,#78,#77,#d6,#bd
	db #02,#e4,#0a,#03,#f1,#73,#03,#69
	db #68,#69,#fe,#fc,#c3,#03,#e4,#34
	db #03,#ac,#4c,#01,#d5,#eb,#01,#ea
	db #b9,#03,#ed,#78,#00,#f2,#65,#03
	db #77,#1f,#76,#75,#76,#e8,#9d,#00
	db #d6,#93,#02,#d6,#3f,#00,#f2,#38
	db #00,#f9,#c2,#00,#ef,#f9,#d4,#03
	db #f2,#bd,#00,#d7,#6a,#00,#69,#dd
	db #eb,#03,#f9,#40,#01,#f9,#a8,#01
	db #eb,#11,#01,#ff,#ef,#c4,#00,#e5
	db #bf,#00,#f4,#e7,#00,#eb,#65,#01
	db #eb,#ba,#01,#eb,#93,#00,#e4,#72
	db #02,#f2,#1f,#01,#a0,#eb,#3b,#01
	db #70,#f6,#61,#02,#71,#71,#71,#70
	db #6f,#24,#6f,#6f,#f0,#6b,#02,#32
	db #35,#fa,#8a,#01,#47,#8e,#8e,#fc
	db #8c,#02,#64,#6a,#d4,#fc,#93,#02
	db #f9,#8a,#02,#e4,#83,#02,#70,#31
	db #77,#ee,#fc,#bd,#02,#f9,#ad,#02
	db #54,#59,#b3,#fc,#cb,#02,#11,#59
	db #5e,#bd,#fc,#d2,#02,#3f,#43,#86
	db #fc,#d9,#02,#8f,#f9,#c9,#02,#7e
	db #86,#0c,#fc,#e7,#02,#f9,#de,#02
	db #e4,#d7,#02,#f2,#01,#03,#91,#f2
	db #98,#02,#38,#3b,#fb,#14,#02,#4b
	db #4f,#9f,#fc,#34,#03,#f8,#f9,#bb
	db #02,#f9,#32,#03,#c8,#2b,#03,#f9
	db #1d,#03,#f9,#d0,#02,#86,#8e,#1c
	db #ff,#fc,#8f,#03,#f9,#86,#03,#c8
	db #7f,#03,#01,#83,#02,#af,#82,#03
	db #dd,#65,#01,#f9,#3e,#01,#f2,#22
	db #02,#b4,#f4,#d7,#01,#50,#f0,#e2
	db #01,#ad,#24,#01,#35,#f2,#cb,#01
	db #34,#34,#55,#34,#fd,#d7,#01,#3b
	db #f5,#e0,#01,#3c,#fd,#e9,#01,#3a
	db #fc,#e9,#01,#fe,#eb,#77,#01,#e4
	db #22,#02,#f9,#bc,#01,#f2,#37,#02
	db #f2,#11,#02,#fd,#49,#02,#f7,#4b
	db #02,#5f,#bf,#fd,#52,#02,#5d,#fc
	db #52,#02,#eb,#34,#02,#01,#23,#01
	db #af,#22,#02,#f9,#12,#00,#dd,#c9
	db #03,#e3,#d6,#c3,#03,#f9,#66,#00
	db #f7,#1d,#00,#b2,#b2,#b2,#e9,#22
	db #00,#d6,#17,#00,#c7,#f9,#07,#01
	db #f7,#71,#00,#8d,#8d,#8d,#e9,#76
	db #00,#d6,#6b,#00,#f9,#c8,#00,#8f
	db #f7,#c5,#00,#9e,#9e,#9e,#e9,#ca
	db #00,#d6,#bf,#00,#f2,#0b,#01,#f9
	db #95,#00,#ff,#f2,#41,#00,#eb,#ed
	db #03,#f9,#36,#01,#f2,#28,#01,#eb
	db #e9,#00,#f9,#60,#01,#eb,#28,#01
	db #f2,#60,#01,#fe,#f9,#7c,#01,#f2
	db #36,#01,#eb,#41,#00,#89,#21,#01
	db #f2,#9f,#01,#f9,#40,#02,#f2,#39
	db #02,#32,#3e,#35,#6a,#fc,#65,#02
	db #f9,#c9,#01,#f9,#47,#02,#f9,#6a
	db #02,#e4,#63,#02,#70,#31,#77,#ee
	db #fc,#9d,#02,#f2,#47,#02,#59,#5e
	db #bd,#fc,#b2,#02,#18,#3f,#43,#86
	db #fc,#b9,#02,#f9,#a9,#02,#7e,#86
	db #0c,#f8,#fc,#c7,#02,#f9,#be,#02
	db #e4,#b7,#02,#f2,#e1,#02,#f2,#78
	db #02,#38,#3b,#77,#fe,#fc,#0d,#03
	db #f9,#55,#02,#f9,#9b,#02,#f9,#12
	db #03,#c8,#0b,#03,#f9,#fd,#02,#f9
	db #b0,#02,#86,#3f,#8e,#1c,#fc,#6f
	db #03,#f9,#66,#03,#c8,#5f,#03,#01
	db #63,#02,#af,#62,#03,#f2,#f9,#03
	db #ff,#eb,#4e,#02,#97,#fc,#00,#f9
	db #f2,#03,#f2,#88,#01,#f2,#eb,#03
	db #dd,#b1,#01,#f9,#f5,#00,#f7,#db
	db #01,#11,#1b,#1b,#1b,#e9,#e0,#01
	db #a8,#b3,#66,#f3,#01,#02,#1f,#65
	db #65,#65,#e9,#0a,#02,#d6,#d5,#01
	db #01,#03,#01,#af,#02,#02,#f8,#9b
	db #03,#c0,#f9,#93,#00,#f7,#b1,#03
	db #76,#76,#76,#77,#77,#3b,#38,#3f
	db #7e,#ee,#c2,#03,#f9,#e7,#00,#f7
	db #db,#03,#8d,#8d,#8d,#22,#8e,#8e
	db #c1,#ab,#03,#47,#4b,#96,#f3,#2b
	db #00,#95,#0f,#95,#95,#96,#96,#ac
	db #d5,#03,#97,#ea,#03,#f9,#bc,#02
	db #f7,#01,#01,#11,#9e,#9e,#9e,#ce
	db #06,#01,#4f,#54,#a8,#fc,#42,#01
	db #ff,#f9,#e6,#02,#f9,#40,#01,#c7
	db #54,#01,#eb,#fb,#02,#eb,#e6,#00
	db #eb,#b0,#01,#e5,#a3,#01,#f9,#d1
	db #00,#f8,#f9,#4e,#01,#eb,#d1,#00
	db #d5,#03,#02,#f9,#47,#01,#fa,#3c
	db #02,#2c,#2f,#5e,#88,#ee,#45,#02
	db #32,#35,#6a,#f3,#5a,#02,#69,#69
	db #69,#3f,#6a,#6a,#eb,#92,#00,#c1
	db #43,#02,#eb,#a7,#00,#ac,#6d,#02
	db #97,#82,#02,#eb,#69,#03,#ff,#cf
	db #a7,#03,#f9,#cd,#01,#f9,#fb,#00
	db #d6,#a3,#01,#ea,#09,#00,#eb,#4e
	db #01,#eb,#7e,#03,#d0,#49,#00,#f0
	db #f9,#93,#03,#f9,#e7,#03,#c1,#93
	db #03,#eb,#f6,#01,#54,#59,#00,#f7
	db #01,#00,#01,#00,#01,#ff,#87,#fd
	db #01,#d9,#77,#aa,#75,#2e,#f4,#ff
	db #d6,#cb,#ae,#c7,#f5,#10,#01,#4c
	db #01,#4d,#01,#4c,#01,#4b,#01,#4a
	db #bf,#62,#48,#01,#fc,#e7,#db,#d0
	db #e4,#e7,#74,#85,#d6,#9d,#82,#3b
	db #ff,#90,#c7,#c8,#29,#d6,#ed,#01
	db #1c,#01,#32,#01,#31,#01,#30,#01
	db #2f,#bf,#67,#2d,#01,#fc,#c7,#db
	db #b0,#e4,#c7,#74,#65,#d6,#7d,#82
	db #1b,#ff,#90,#a7,#c8,#09,#d6,#cd
	db #3c,#12,#fb,#f7,#dd,#db,#aa,#d5
	db #2e,#54,#ff,#d6,#2b,#ae,#27,#f6
	db #71,#01,#ab,#01,#ac,#01,#ab,#01
	db #aa,#01,#a9,#80,#c3,#a8,#10,#df
	db #01,#00,#ad,#ff,#18,#fe,#53,#e4
	db #39,#d6,#2b,#ae,#48,#9f,#46,#f9
	db #dc,#25,#c9,#c4,#01,#75,#01,#a9
	db #65,#a7,#18,#18,#f8,#3c,#ff,#d6
	db #1a,#c9,#69,#c3,#99,#d6,#4c,#81
	db #6d,#d7,#eb,#f1,#93,#f3,#be,#ff
	db #f2,#bd,#eb,#93,#ea,#93,#de,#fd
	db #d7,#94,#db,#d1,#de,#da,#eb,#33
	db #ff,#d5,#fc,#cf,#2d,#e5,#74,#e3
	db #22,#d5,#f8,#ad,#d0,#b3,#a1,#e4
	db #11,#ff,#ac,#b6,#d6,#11,#db,#5d
	db #f4,#ba,#eb,#ba,#ba,#e3,#dd,#96
	db #dd,#65,#e7,#01,#62,#01,#83,#5f
	db #81,#18,#18,#ca,#fb,#d6,#4d,#a5
	db #31,#ff,#b9,#cb,#fa,#1f,#f9,#1f
	db #ac,#cb,#ac,#8c,#ac,#88,#b9,#1b
	db #fa,#6f,#ff,#f9,#6f,#c1,#30,#dd
	db #d5,#dd,#ae,#82,#df,#74,#86,#4a
	db #5d,#49,#c8,#3f,#18,#18,#84,#58
	db #7b,#56,#b3,#d4,#a5,#28,#b3,#2a
	db #a5,#d0,#fd,#ac,#24,#01,#d5,#01
	db #26,#01,#25,#01,#24,#f1,#22,#18
	db #fb,#32,#ef,#06,#38,#01,#38,#85
	db #30,#18,#f7,#ac,#de,#90,#b2,#84
	db #ac,#7e,#c0,#fa,#50,#9b,#d8,#3f
	db #00,#3f,#00,#02,#18,#18,#19,#1d
	db #39,#28,#39,#2b,#fe,#08,#39,#e1
	db #07,#22,#38,#38,#c9,#e0,#0d,#12
	db #26,#2a,#30,#fe,#3f,#14,#30,#f1
	db #3d,#7f,#02,#fd,#2a,#fd,#56,#fc
	db #37,#f6,#57,#fc,#4c,#fe,#6b,#f8
	db #60,#ff,#fc,#29,#f6,#73,#f2,#6f
	db #eb,#68,#ba,#53,#f2,#df,#f2,#a7
	db #e4,#8b,#fd,#f2,#d1,#d6,#b5,#eb
	db #33,#f2,#41,#eb,#02,#f2,#8e,#04
	db #fe,#88,#bd,#fc,#a5,#0c,#fa,#a4
	db #f8,#a3,#fc,#9f,#fe,#bc,#0d,#fa
	db #81,#fb,#f9,#b1,#9e,#a3,#f1,#fe
	db #ec,#29,#f9,#51,#30,#f8,#52,#fb
	db #0e,#ff,#f9,#66,#f9,#59,#9e,#4b
	db #f1,#a6,#f3,#e5,#c8,#f7,#ac,#01
	db #f1,#4e,#fa,#ec,#79,#cf,#a6,#ac
	db #a9,#f1,#f6,#f3,#35,#20,#f8,#3b
	db #18,#e5,#e0,#f9,#f2,#43,#f8,#6d
	db #30,#10,#fc,#5b,#29,#f8,#60,#d7
	db #f3,#76,#f3,#4b,#28,#f8,#59,#19
	db #e7,#62,#ed,#a5,#fe,#89,#bb,#f9
	db #cf,#10,#d7,#f0,#8b,#6d,#f7,#60
	db #00,#d7,#ec,#f2,#93,#6d,#20,#fb
	db #72,#f8,#a7,#09,#e5,#b0,#f9,#e0
	db #08,#eb,#01,#d8,#f9,#cc,#f3,#ef
	db #28,#fe,#2c,#f7,#ff,#29,#39,#10
	db #f7,#f2,#9b,#d0,#9b,#f8,#65,#fa
	db #51,#29,#fb,#87,#e3,#df,#f4,#26
	db #f7,#de,#86,#fd,#a6,#fc,#7a,#f6
	db #d2,#20,#f9,#c0,#fa,#12,#e4,#49
	db #fe,#f2,#e3,#f8,#0d,#fa,#a5,#fe
	db #32,#fa,#01,#f2,#15,#de,#eb,#30
	db #76,#28,#f4,#38,#d6,#f1,#89,#6f
	db #28,#f9,#31,#fa,#11,#28,#bf,#f9
	db #23,#19,#fb,#fd,#f9,#17,#b3,#b5
	db #f9,#5d,#f8,#17,#ec,#11,#7b,#39
	db #fa,#26,#f1,#56,#fa,#64,#f9,#aa
	db #28,#f0,#49,#fc,#ba,#ff,#eb,#5d
	db #f8,#c6,#eb,#a4,#d7,#e3,#d5,#8e
	db #ef,#65,#fd,#46,#f2,#6e,#6f,#14
	db #fa,#69,#f2,#83,#1c,#fa,#1b,#eb
	db #83,#01,#8a,#01,#b7,#ed,#a0,#88
	db #fd,#e6,#f2,#0e,#10,#fa,#08,#f9
	db #29,#30,#f8,#2a,#fd,#fb,#e6,#f9
	db #3e,#f9,#31,#f2,#23,#f8,#4d,#fa
	db #39,#19,#e5,#40,#b7,#a5,#31,#18
	db #de,#8d,#dc,#d9,#18,#f4,#1a,#b9
	db #e0,#9f,#7f,#df,#ac,#88,#b9,#34
	db #18,#f4,#6a,#d2,#30,#fd,#86,#fc
	db #06,#f6,#b2,#56,#04,#fa,#a8,#28
	db #fa,#c4,#20,#f9,#c4,#fa,#85,#29
	db #ff,#fa,#8c,#f9,#d1,#7b,#c3,#f2
	db #a0,#fc,#bc,#ef,#88,#82,#6b,#f8
	db #4f,#bf,#f3,#e3,#0c,#f3,#57,#f9
	db #21,#ac,#13,#f9,#8a,#d6,#44,#f9
	db #c1,#5e,#14,#fa,#c3,#1c,#f3,#ff
	db #f9,#c9,#ac,#bb,#f9,#b4,#1c,#fb
	db #ef,#17,#fd,#26,#f2,#4e,#fd,#47
	db #fc,#2e,#1d,#fa,#2c,#f9,#6a,#ff
	db #f9,#5c,#f9,#71,#f9,#63,#f2,#63
	db #f9,#8d,#dd,#78,#c8,#71,#eb,#ef
	db #ff,#a5,#94,#eb,#43,#f2,#51,#eb
	db #12,#f2,#9e,#ba,#b7,#ba,#27,#f2
	db #eb,#fd,#eb,#3f,#a5,#e4,#eb,#93
	db #f2,#a1,#eb,#62,#f2,#ee,#04,#fe
	db #e8,#bd,#fc,#05,#0c,#fa,#04,#f8
	db #03,#fc,#ff,#fe,#1c,#0d,#fa,#e1
	db #fb,#f9,#11,#9e,#03,#f1,#5e,#ec
	db #89,#f9,#b1,#30,#f8,#b2,#fb,#6e
	db #ff,#f9,#c6,#f9,#b9,#9e,#ab,#f1
	db #06,#f3,#45,#c8,#57,#ac,#61,#f1
	db #ae,#fa,#ec,#d9,#cf,#06,#ac,#09
	db #f1,#56,#f3,#95,#22,#f9,#9c,#1c
	db #af,#f4,#89,#2a,#f9,#65,#1d,#f4
	db #6d,#01,#a3,#c4,#a2,#fe,#00,#fd
	db #fa,#e0,#fa,#0f,#f9,#01,#f8,#01
	db #f2,#17,#fb,#09,#2b,#fa,#10,#3f
	db #2b,#14,#fa,#d9,#fa,#40,#f9,#fa
	db #ce,#00,#c1,#de,#e5,#9b,#af,#9d
	db #38,#06,#ec,#1a,#0e,#ec,#05,#01
	db #43,#c4,#42,#fe,#a0,#e4,#ed,#80
	db #f8,#a1,#ed,#9b,#2b,#1d,#fb,#b1
	db #2b,#14,#bc,#fb,#ce,#2a,#fa,#e0
	db #c7,#99,#fe,#e6,#ed,#fe,#22,#1c
	db #a8,#d8,#e9,#22,#98,#be,#0e,#ec
	db #a5,#04,#38,#0e,#1a,#0e,#1e,#0e
	db #01,#03,#00,#be,#02,#01,#08,#fa
	db #45,#01,#0c,#c0,#fa,#4c,#01,#e4
	db #29,#01,#0c,#0c,#0b,#0b,#09,#09
	db #78,#08,#dd,#22,#01,#ac,#6f,#01
	db #d6,#ec,#01,#a5,#6f,#01,#08,#06
	db #06,#0b,#05,#05,#03,#03,#d4,#29
	db #01,#1e,#f5,#a5,#02,#f9,#a3,#02
	db #ff,#f2,#66,#02,#f7,#b1,#02,#a0
	db #a5,#02,#f2,#fe,#02,#e4,#28,#03
	db #01,#b1,#02,#01,#08,#03,#88,#af
	db #00,#e2,#01,#51,#01,#01,#54,#01
	db #fa,#a3,#03,#0e,#0e,#08,#fa,#d5
	db #03,#0c,#ff,#fa,#dc,#03,#01,#43
	db #01,#01,#46,#01,#57,#41,#03,#f0
	db #83,#02,#fb,#46,#02,#e9,#83,#02
	db #01,#8c,#02,#ff,#01,#8f,#02,#a1
	db #8a,#00,#e9,#73,#02,#01,#3a,#01
	db #01,#2d,#01,#75,#fe,#02,#01,#13
	db #01,#01,#40,#01,#fe,#4c,#11,#03
	db #e6,#64,#02,#f9,#29,#02,#e4,#63
	db #02,#a5,#78,#02,#d6,#fc,#02,#a5
	db #7f,#02,#08,#03,#06,#06,#05,#05
	db #03,#03,#5f,#e1,#02,#25,#da,#02
	db #ff,#76,#bd,#01,#f2,#5e,#01,#e4
	db #88,#01,#01,#11,#01,#01,#68,#01
	db #88,#0f,#03,#01,#b1,#03,#01,#b4
	db #03,#e0,#01,#b7,#03,#01,#ba,#03
	db #46,#01,#00,#0e,#15,#0e,#1e,#0d
	db #fb,#03,#0c,#fa,#09,#0b,#fb,#0c
	db #ab,#fa,#15,#0a,#f8,#1c,#09,#fa
	db #25,#08,#fb,#28,#fa,#31,#5f,#07
	db #f8,#38,#06,#f9,#34,#f9,#2d,#f9
	db #26,#f9,#1f,#f9,#18,#f6,#f9,#11
	db #f9,#0a,#f9,#03,#e4,#73,#0f,#fd
	db #96,#fe,#00,#0e,#ef,#fc,#96,#fd
	db #98,#fa,#9d,#0f,#01,#03,#07,#02
	db #fd,#92,#fc,#89,#fa,#58,#a3,#fb
	db #89,#f9,#56,#fd,#61,#fb,#60,#0a
	db #f9,#66,#09,#fc,#fa,#6e,#7b,#4b
	db #58,#f3,#ac,#a6,#b3,#cc,#e2,#25
	db #09,#08,#fe,#f6,#62,#f2,#43,#d6
	db #6d,#f9,#51,#ca,#97,#d6,#43,#f8
	db #0b,#07,#fd,#8b,#6d,#e2,#75,#eb
	db #f7,#8b,#15,#d6,#93,#f8,#5b,#07
	db #8b,#bd,#ff,#e2,#c5,#eb,#47,#c1
	db #65,#eb,#f8,#f1,#0c,#e5,#45,#c8
	db #e3,#b3,#99,#fe,#d6,#0f,#ba,#bc
	db #cf,#17,#7b,#9c,#c8,#8e,#f2,#72
	db #f9,#7b,#0f,#2f,#0f,#0e,#fd,#85
	db #0d,#fd,#89,#f8,#5c,#f8,#6c,#fc
	db #7f,#57,#07,#fd,#a1,#06,#fd,#a5
	db #05,#fd,#a9,#f2,#83,#d6,#ad,#ea
	db #f9,#91,#ca,#d7,#d6,#83,#04,#fd
	db #4c,#03,#fd,#50,#02,#fa,#8b,#ad
	db #e2,#b5,#eb,#37,#8b,#55,#d6,#d3
	db #04,#fd,#9c,#03,#bf,#fd,#a0,#02
	db #8b,#fd,#ed,#05,#fb,#17,#fa,#1b
	db #9e,#23,#f9,#8c,#ff,#f9,#85,#90
	db #2a,#2e,#03,#f9,#dc,#f9,#d5,#35
	db #11,#f9,#b1,#58,#c3,#f7,#f7,#b5
	db #f9,#bb,#fb,#be,#f9,#86,#09,#fa
	db #8e,#7b,#6b,#58,#13,#cf,#ac,#c6
	db #b3,#ec,#0f,#0f,#fd,#39,#fb,#3b
	db #f8,#48,#f8,#58,#55,#08,#fd,#7d
	db #07,#fd,#81,#06,#fd,#85,#05,#fd
	db #89,#fa,#f2,#63,#d6,#8d,#f9,#71
	db #ca,#b7,#d6,#63,#04,#fd,#2c,#03
	db #be,#fd,#30,#02,#8b,#8d,#e2,#95
	db #eb,#17,#8b,#35,#d6,#b3,#04,#af
	db #fd,#7c,#03,#fd,#80,#02,#8b,#dd
	db #f7,#e5,#f9,#f1,#58,#03,#f7,#f8
	db #f4,#f8,#f8,#f9,#fc,#fb,#c8,#09
	db #fa,#ce,#7b,#ab,#58,#53,#fe,#ac
	db #06,#b3,#2c,#f6,#7e,#f5,#8f,#01
	db #a3,#af,#a2,#fa,#07,#09,#ab,#f5
	db #0e,#08,#f5,#1a,#07,#f5,#26,#06
	db #fb,#32,#f9,#f3,#ff,#f2,#38,#c7
	db #fa,#c1,#de,#e5,#9b,#88,#38,#01
	db #2e,#af,#42,#fa,#a7,#55,#09,#f5
	db #ae,#08,#f5,#ba,#07,#f5,#c6,#06
	db #fb,#d2,#fc,#f9,#93,#f2,#d8,#c7
	db #9a,#c1,#7e,#e5,#3b,#9d,#d8,#0e
	db #0e,#0d,#3a,#0d,#1d,#fc,#02,#fe
	db #00,#fc,#08,#0c,#fa,#0d,#0b,#d5
	db #fb,#10,#fa,#19,#0a,#f8,#20,#09
	db #fa,#29,#08,#fb,#2c,#af,#fa,#35
	db #07,#f8,#3c,#06,#f9,#38,#f9,#31
	db #f9,#2a,#f9,#23,#fa,#f9,#1c,#f9
	db #15,#f9,#0e,#f9,#07,#e4,#77,#0f
	db #fd,#9a,#0e,#f7,#fe,#9e,#fc,#9a
	db #fd,#9c,#fa,#a1,#0f,#5c,#07,#f7
	db #c8,#b5,#5b,#f5,#f9,#c1,#b3,#ad
	db #fd,#46,#5b,#fd,#0d,#fb,#a3,#0c
	db #58,#a3,#aa,#fd,#51,#0b,#fc,#55
	db #0a,#f5,#5a,#09,#f5,#66,#08,#ff
	db #fe,#72,#7b,#4b,#58,#f3,#ac,#a6
	db #b3,#cc,#f7,#42,#ed,#39,#e9,#5e
	db #fa,#f2,#4c,#d6,#76,#c3,#99,#d6
	db #4c,#f8,#14,#07,#8b,#76,#0e,#aa
	db #fe,#93,#0d,#f9,#96,#0c,#f9,#9e
	db #0b,#f9,#a6,#0a,#ff,#f9,#ae,#f9
	db #87,#f1,#93,#f3,#bd,#f2,#bd,#eb
	db #93,#ea,#93,#de,#e7,#ff,#d6,#93
	db #eb,#8c,#d6,#bd,#e4,#0a,#d7,#8f
	db #f7,#43,#f4,#59,#e5,#f6,#7f,#07
	db #fe,#12,#f2,#eb,#d6,#15,#e3,#4c
	db #d7,#3f,#d6,#3f,#a5,#93,#df,#e4
	db #17,#ad,#b6,#07,#d6,#11,#db,#5d
	db #f4,#ba,#eb,#ba,#c2,#e3,#d7,#e3
	db #87,#d0,#57,#0c,#fb,#83,#0b,#01
	db #83,#01,#8d,#5f,#81,#d5,#fe,#21
	db #f9,#2a,#0a,#f9,#32,#09,#f9,#3a
	db #08,#f6,#42,#ff,#f2,#23,#d6,#4d
	db #a5,#31,#b9,#cb,#f9,#1f,#f3,#2d
	db #ce,#e7,#fa,#56,#fe,#97,#77,#ac
	db #88,#b9,#1b,#f9,#6f,#f3,#7d,#ce
	db #37,#fa,#a6,#0d,#ff,#fb,#c3,#f7
	db #b1,#f8,#d6,#f4,#da,#fc,#e5,#fd
	db #ee,#01,#c3,#d9,#c2,#bf,#f7,#12
	db #07,#fc,#1c,#f9,#e9,#f2,#e9,#eb
	db #e9,#ba,#21,#d6,#7c,#f7,#ac,#3d
	db #cf,#67,#dd,#39,#fa,#62,#0b,#01
	db #63,#01,#6d,#65,#61,#5d,#0d,#fb
	db #03,#0c,#58,#03,#fc,#ff,#fc,#b5
	db #0a,#f5,#ba,#5f,#09,#f5,#c6,#08
	db #fe,#d2,#7b,#ab,#58,#53,#ac,#06
	db #b3,#2c,#d7,#f8,#a2,#f8,#9c,#07
	db #fd,#b3,#06,#f8,#b7,#01,#ab,#af
	db #aa,#55,#05,#f5,#10,#04,#f5,#1c
	db #03,#f5,#28,#02,#f5,#34,#fd,#f9
	db #fb,#f2,#40,#c7,#02,#c1,#e6,#e5
	db #a3,#a5,#40,#0d,#fb,#43,#57,#0c
	db #fd,#49,#0b,#fc,#4d,#0a,#fb,#52
	db #01,#43,#af,#42,#aa,#fa,#a7,#09
	db #f5,#ae,#08,#f5,#ba,#07,#f5,#c6
	db #06,#fe,#fa,#d2,#f9,#93,#f2,#d9
	db #c7,#9a,#a6,#7e,#b3,#d9,#e9,#27
	db #35,#3a,#35,#d4,#01,#02,#00,#01
	db #02,#00,#5c,#00,#02,#35,#83,#a5
	db #02,#3b,#bf,#ec,#23,#03,#43,#ec
	db #38,#03,#82,#a5,#02,#eb,#38,#03
	db #eb,#23,#03,#01,#a5,#02,#5b,#a4
	db #03,#f7,#eb,#1b,#01,#c1,#ad,#01
	db #eb,#30,#01,#c1,#01,#02,#47,#ad
	db #41,#02,#01,#45,#01,#07,#44,#02
	db #7b,#59,#ad,#8d,#00,#ac,#67,#03
	db #01,#e5,#03,#7e,#e4,#00,#1a,#fa
	db #b6,#02,#e4,#a8,#02,#bb,#cf,#ac
	db #01,#21,#fa,#0a,#03,#e4,#fc,#02
	db #cf,#60,#03,#1d,#fa,#5e,#03,#e4
	db #50,#03,#bf,#cf,#b4,#03,#23,#fa
	db #b2,#03,#e4,#a4,#03,#01,#85,#02
	db #bd,#84,#03,#9e,#27,#01,#cf,#7d
	db #00,#ff,#dd,#a9,#01,#cf,#29,#00
	db #dd,#fd,#01,#cf,#d1,#00,#ac,#62
	db #02,#01,#56,#01,#01,#55,#02,#01
	db #04,#02,#ff,#3e,#53,#00,#01,#11
	db #02,#01,#11,#02,#5e,#62,#00,#ac
	db #15,#01,#d6,#58,#01,#d6,#a8,#01
	db #82,#05,#01,#f5,#eb,#98,#01,#eb
	db #83,#01,#01,#05,#01,#af,#04,#02
	db #23,#d7,#a5,#03,#27,#d7,#cf,#03
	db #5f,#2c,#d7,#f9,#03,#2f,#d7,#23
	db #00,#58,#a5,#03,#82,#fd,#02,#d6
	db #72,#01,#d6,#cb,#00,#f0,#82,#c6
	db #01,#01,#a5,#03,#01,#a4,#00,#5e
	db #42,#00,#00,#ff,#01,#00,#00,#01
	db #00,#00,#01,#00,#00,#01,#00,#00
	db #01,#00,#00,#01,#fc,#00,#01,#fb
	db #01,#01,#fa,#02,#ff,#01,#f9,#03
	db #01,#f8,#00,#01,#f7,#01,#01,#f6
	db #02,#01,#f5,#03,#01,#f4,#00,#01
	db #f3,#01,#01,#f2,#02,#ff,#01,#f1
	db #03,#01,#f0,#00,#01,#ef,#01,#01
	db #ee,#02,#01,#ed,#03,#01,#ec,#00
	db #01,#eb,#01,#01,#ea,#02,#f8,#01
	db #e9,#03,#01,#e8,#00,#01,#e7,#01
	db #01,#e6,#02,#01,#e5,#03,#00,#00
	db #7b,#ff,#fe,#00,#01,#03,#01,#03
	db #5d,#01,#08,#e5,#98,#f2,#ac,#ff
	db #a7,#a5,#f0,#f2,#e6,#23,#01,#aa
	db #01,#a9,#88,#a8,#01,#4a,#01,#cb
	db #ff,#e8,#9c,#eb,#c2,#19,#f7,#01
	db #08,#5b,#af,#eb,#4d,#eb,#5b,#e4
	db #a1,#ff,#01,#9a,#01,#c7,#ab,#98
	db #f2,#16,#eb,#df,#eb,#17,#01,#25
	db #01,#52,#ff,#8f,#23,#eb,#a2,#19
	db #d7,#01,#e8,#5b,#8f,#01,#4a,#01
	db #5d,#57,#5b,#7f,#08,#e5,#f8,#f2
	db #0c,#a7,#05,#f0,#52,#e6,#83,#01
	db #0a,#01,#09,#fc,#88,#08,#01,#aa
	db #01,#2b,#01,#2a,#01,#29,#3f,#fa
	db #00,#45,#45,#44,#45,#45,#45,#e7
	db #e5,#65,#e5,#61,#41,#65,#c5,#22
	db #02,#65,#65,#44,#45,#45,#45,#47
	db #45,#65,#c5,#e1,#c1,#6d,#c5,#22
	db #02,#45,#45,#44,#45,#45,#45,#64
	db #65,#e5,#c5,#40,#40,#e5,#c5,#00
	db #00,#45,#45,#e5,#e5,#45,#45,#e7
	db #ef,#cd,#c1,#4c,#41,#cd,#c5,#00
	db #00,#4d,#4d,#4c,#4d,#45,#45,#c6
	db #c5,#e5,#e5,#61,#41,#6d,#45,#22
	db #02,#65,#65,#44,#65,#45,#45,#0a
	db #04,#65,#41,#64,#45,#6d,#45,#6a
	db #46,#45,#45,#44,#45,#45,#45,#44
	db #65,#45,#45,#40,#41,#45,#45,#40
	db #40,#45,#45,#e5,#e5,#45,#45,#c4
	db #c4,#45,#41,#00,#00,#01,#41,#08
	db #00,#65,#65,#ed,#cd,#65,#65,#ed
	db #ef,#65,#e5,#61,#60,#65,#c5,#22
	db #02,#65,#65,#ed,#ed,#65,#45,#ed
	db #ed,#65,#c5,#65,#c0,#65,#c5,#22
	db #02,#65,#45,#6d,#6c,#65,#45,#ec
	db #ec,#65,#c5,#40,#40,#65,#c5,#00
	db #00,#65,#45,#ed,#ed,#65,#45,#ef
	db #ef,#65,#c5,#65,#c0,#65,#c5,#00
	db #00,#6d,#6d,#7d,#5c,#65,#65,#ed
	db #ef,#65,#e5,#61,#40,#65,#c5,#22
	db #02,#65,#65,#6d,#64,#65,#65,#20
	db #22,#65,#45,#65,#44,#65,#c5,#26
	db #06,#65,#45,#6d,#4c,#65,#45,#ed
	db #ed,#65,#45,#61,#40,#65,#c5,#40
	db #40,#65,#45,#ed,#ed,#65,#45,#cc
	db #cc,#65,#45,#00,#00,#21,#01,#00
	db #00,#01,#01,#44,#44,#45,#65,#44
	db #45,#45,#61,#45,#60,#45,#61,#47
	db #62,#45,#45,#44,#65,#45,#65,#46
	db #65,#45,#61,#41,#60,#41,#61,#43
	db #62,#45,#45,#44,#44,#45,#45,#44
	db #44,#45,#41,#47,#40,#45,#61,#47
	db #63,#45,#45,#44,#65,#45,#65,#46
	db #45,#45,#41,#41,#40,#41,#41,#43
	db #42,#45,#45,#44,#64,#65,#65,#46
	db #65,#47,#61,#47,#60,#45,#61,#47
	db #62,#45,#45,#44,#65,#45,#65,#46
	db #60,#45,#61,#41,#60,#41,#61,#43
	db #62,#45,#45,#44,#64,#45,#45,#44
	db #65,#45,#41,#45,#40,#45,#61,#47
	db #63,#45,#45,#44,#64,#45,#45,#c4
	db #c4,#45,#41,#41,#40,#41,#41,#00
	db #00,#0d,#29,#6e,#6e,#65,#65,#65
	db #e5,#45,#c5,#47,#64,#65,#e5,#47
	db #e4,#65,#65,#65,#e5,#65,#65,#67
	db #e5,#47,#e5,#47,#e4,#c5,#e5,#47
	db #e4,#45,#c5,#44,#c4,#45,#45,#44
	db #44,#47,#c5,#47,#64,#45,#e5,#47
	db #e4,#65,#65,#65,#e5,#65,#e5,#67
	db #e5,#47,#45,#47,#64,#45,#e5,#47
	db #64,#65,#21,#64,#e4,#65,#e5,#67
	db #e5,#47,#45,#47,#44,#45,#65,#47
	db #44,#65,#61,#65,#e5,#65,#21,#26
	db #20,#45,#45,#45,#c4,#45,#c5,#47
	db #64,#45,#45,#64,#e4,#65,#65,#65
	db #65,#45,#e5,#47,#64,#45,#e5,#47
	db #e4,#65,#65,#64,#e4,#45,#c5,#cc
	db #cc,#45,#45,#45,#44,#45,#e5,#00
	db #00,#45,#45,#44,#45,#45,#45,#e7
	db #e4,#45,#61,#41,#61,#45,#61,#02
	db #22,#65,#65,#44,#44,#45,#45,#47
	db #45,#45,#61,#c1,#61,#45,#61,#02
	db #22,#45,#45,#44,#44,#45,#45,#64
	db #64,#c5,#61,#40,#40,#c5,#e1,#00
	db #00,#45,#45,#e5,#e4,#45,#45,#e7
	db #e7,#45,#41,#41,#40,#c5,#41,#00
	db #00,#4d,#45,#4c,#45,#45,#45,#c6
	db #c4,#c5,#e1,#40,#61,#45,#61,#02
	db #22,#65,#65,#44,#45,#45,#45,#46
	db #40,#45,#61,#45,#60,#41,#61,#46
	db #62,#45,#45,#44,#44,#45,#45,#64
	db #65,#45,#61,#41,#41,#45,#61,#40
	db #40,#45,#45,#e5,#e5,#45,#45,#c4
	db #c4,#45,#41,#00,#00,#41,#41,#10
	db #10,#65,#65,#ed,#ed,#65,#65,#ef
	db #ef,#45,#e5,#45,#61,#45,#e5,#02
	db #22,#65,#65,#ed,#ed,#65,#65,#ef
	db #ed,#45,#45,#45,#e5,#45,#e5,#02
	db #22,#65,#65,#6d,#6d,#65,#65,#ec
	db #ec,#45,#e5,#44,#40,#45,#e5,#00
	db #00,#65,#65,#ed,#ed,#65,#65,#ef
	db #ef,#45,#e5,#45,#e4,#45,#e5,#00
	db #00,#6d,#6d,#5d,#7d,#65,#65,#ef
	db #ef,#47,#e5,#47,#41,#45,#c5,#02
	db #22,#65,#65,#6d,#6d,#65,#65,#26
	db #22,#45,#45,#45,#44,#45,#45,#46
	db #22,#45,#65,#4d,#6d,#65,#65,#ed
	db #ed,#45,#65,#65,#60,#45,#65,#44
	db #40,#45,#65,#ed,#ed,#45,#65,#cc
	db #cc,#45,#65,#04,#00,#41,#61,#00
	db #10,#78,#78,#46,#55,#43,#4b,#49
	db #4e,#47,#78,#45,#58,#41,#4d,#53
	db #78,#49,#49,#5e,#4c,#45,#78,#52
	db #45,#54,#4f,#55,#52,#5b,#78,#78
	db #78,#78,#78,#78,#78,#78,#50,#4c
	db #49,#53,#53,#4b,#45,#4e,#78,#45
	db #53,#54,#78,#44,#45,#78,#52,#45
	db #54,#4f,#55,#52,#78,#41,#56,#45
	db #43,#78,#55,#4e,#45,#78,#44,#45
	db #4d,#4f,#78,#43,#4f,#44,#45,#45
	db #78,#45,#4e,#78,#55,#4e,#45,#78
	db #53,#45,#4d,#41,#49,#4e,#45,#78
	db #5b,#5b,#4a,#5d,#41,#49,#78,#50
	db #41,#53,#53,#45,#78,#43,#45,#54
	db #54,#45,#78,#41,#4e,#4e,#45,#45
	db #78,#45,#54,#78,#50,#4f,#55,#52
	db #78,#4c,#41,#78,#44,#45,#55,#58
	db #49,#45,#4d,#45,#78,#46,#4f,#49
	db #53,#78,#4d,#4f,#4e,#78,#42,#41
	db #43,#5e,#51,#55,#45,#78,#4a,#5d
	db #41,#49,#78,#45,#55,#78,#44,#55
	db #78,#50,#52,#45,#4d,#49,#45,#52
	db #78,#43,#4f,#55,#50,#61,#4a,#5d
	db #45,#4e,#78,#53,#55,#49,#53,#78
	db #41,#53,#53,#45,#5a,#78,#43,#4f
	db #4e,#54,#45,#4e,#54,#78,#45,#54
	db #78,#4c,#5d,#41,#4e,#4e,#45,#45
	db #78,#50,#52,#4f,#43,#48,#41,#49
	db #4e,#45,#78,#4a,#45,#78,#52,#45
	db #4e,#54,#52,#45,#78,#45,#4e,#78
	db #42,#54,#53,#78,#49,#4e,#46,#4f
	db #52,#4d,#41,#54,#49,#51,#55,#45
	db #78,#49,#4e,#44,#55,#53,#54,#52
	db #49,#45,#4c,#4c,#45,#78,#41,#78
	db #43,#49,#4e,#51,#55,#41,#4e,#54
	db #45,#53,#78,#4b,#4d,#78,#44,#45
	db #78,#43,#48,#45,#5a,#78,#4d,#4f
	db #49,#61,#45,#54,#78,#44,#4f,#4e
	db #43,#78,#4a,#45,#78,#44,#45,#56
	db #52,#41,#49,#78,#56,#49,#56,#52
	db #45,#78,#44,#41,#4e,#53,#78,#55
	db #4e,#78,#4c,#4f,#47,#45,#4d,#45
	db #4e,#54,#78,#45,#54,#55,#44,#49
	db #41,#4e,#54,#78,#51,#55,#49,#78
	db #41,#43,#43,#55,#45,#49,#4c,#4c
	db #45,#52,#41,#78,#55,#4e,#78,#43
	db #50,#43,#5e,#50,#4c,#55,#53,#5e
	db #4f,#55,#5e,#4f,#4c,#44,#5e,#4a
	db #45,#78,#4e,#45,#78,#53,#41,#49
	db #53,#78,#50,#41,#53,#78,#45,#4e
	db #43,#4f,#52,#45,#78,#54,#4f,#55
	db #54,#78,#43,#45,#78,#51,#55,#45
	db #78,#4a,#45,#78,#53,#41,#49,#53
	db #5e,#43,#5d,#45,#53,#54,#78,#51
	db #55,#45,#78,#4c,#45,#78,#54,#48
	db #4f,#4d,#53,#4f,#4e,#78,#52,#45
	db #53,#54,#45,#78,#41,#78,#4c,#41
	db #78,#4d,#41,#49,#53,#4f,#4e,#78
	db #5c,#63,#78,#78,#78,#78,#42,#4f
	db #4e,#5e,#43,#45,#55,#58,#78,#51
	db #55,#49,#78,#41,#54,#54,#45,#4e
	db #44,#45,#4e,#54,#78,#4d,#41,#78
	db #44,#45,#4d,#4f,#78,#43,#4f,#4d
	db #4d,#45,#4d,#4d,#4f,#52,#41,#54
	db #49,#56,#45,#78,#44,#45,#78,#4c
	db #5d,#41,#4d,#53,#54,#52,#41,#44
	db #78,#45,#58,#50,#4f,#78,#62,#4c
	db #5d,#45,#53,#50,#4f,#49,#52,#78
	db #46,#41,#49,#54,#78,#56,#49,#56
	db #52,#45,#63,#5e,#53,#41,#43,#48
	db #45,#5a,#78,#51,#55,#5d,#45,#4c
	db #4c,#45,#78,#45,#53,#54,#78,#50
	db #52,#45,#53,#51,#55,#45,#78,#50
	db #52,#45,#54,#45,#78,#45,#54,#78
	db #51,#55,#45,#78,#4a,#45,#78,#50
	db #45,#4e,#53,#45,#78,#4c,#41,#78
	db #53,#4f,#52,#54,#49,#52,#78,#43
	db #45,#54,#54,#45,#78,#53,#45,#4d
	db #41,#49,#4e,#45,#61,#41,#49,#4e
	db #53,#49,#5e,#43,#45,#4c,#41,#78
	db #46,#45,#52,#41,#78,#44,#45,#55
	db #58,#78,#44,#45,#4d,#4f,#53,#78
	db #41,#78,#53,#4f,#52,#54,#49,#52
	db #78,#43,#45,#54,#54,#45,#78,#53
	db #45,#4d,#41,#49,#4e,#45,#78,#45
	db #54,#78,#41,#50,#52,#45,#53,#78
	db #4a,#45,#78,#4e,#5d,#41,#49,#78
	db #52,#49,#45,#4e,#78,#43,#4f,#4d
	db #4d,#45,#78,#50,#52,#4f,#4a,#45
	db #54,#78,#53,#55,#52,#78,#43,#50
	db #43,#61,#4a,#45,#78,#4d,#45,#78
	db #52,#45,#50,#4f,#53,#45,#78,#45
	db #54,#78,#4a,#45,#78,#43,#48,#45
	db #52,#43,#48,#45,#78,#44,#45,#53
	db #78,#49,#44,#45,#45,#53,#61,#78
	db #78,#4c,#45,#53,#78,#43,#52,#45
	db #44,#49,#54,#53,#78,#4d,#41,#49
	db #4e,#54,#45,#4e,#41,#4e,#54,#78
	db #5c,#78,#43,#4f,#44,#45,#78,#5c
	db #50,#4c,#49,#53,#53,#4b,#45,#4e
	db #78,#5e,#78,#4d,#55,#53,#49,#51
	db #55,#45,#78,#5c,#78,#45,#58,#54
	db #52,#41,#49,#54,#45,#78,#44,#55
	db #78,#4a,#45,#55,#78,#4a,#49,#4d
	db #78,#50,#4f,#57,#45,#52,#78,#53
	db #55,#52,#78,#41,#54,#41,#52,#49
	db #78,#53,#54,#78,#45,#54,#78,#4a
	db #4f,#55,#45,#45,#78,#47,#52,#41
	db #43,#45,#78,#41,#55,#78,#50,#4c
	db #41,#59,#45,#52,#78,#44,#45,#78
	db #4d,#41,#44,#52,#41,#4d,#5e,#47
	db #46,#58,#78,#5c,#78,#42,#45,#42
	db #78,#61,#56,#4f,#49,#4c,#41,#5e
	db #4c,#45,#78,#54,#45,#58,#54,#45
	db #78,#56,#41,#78,#52,#45,#42,#4f
	db #55,#43,#4c,#45,#52,#61,#4c,#45
	db #53,#78,#47,#52,#45,#45,#54,#49
	db #4e,#47,#53,#78,#64,#78,#50,#41
	db #53,#78,#4c,#41,#78,#50,#45,#49
	db #4e,#45,#78,#78,#78,#78,#78,#78
	db #00,#ed,#4f,#fd,#7f,#e5,#47,#ed
	db #cf,#e5,#e5,#61,#41,#e5,#4d,#20
	db #02,#e5,#6d,#e5,#4d,#e5,#4d,#24
	db #0a,#e5,#41,#e5,#40,#e5,#49,#24
	db #0a,#e5,#4d,#e5,#4f,#e5,#4d,#e5
	db #ed,#e5,#45,#61,#40,#e5,#45,#40
	db #40,#e5,#4d,#ed,#ed,#e5,#4d,#cc
	db #ce,#e5,#41,#00,#00,#e1,#41,#10
	db #18,#01,#09,#64,#4c,#65,#45,#64
	db #45,#41,#6d,#40,#4c,#61,#6d,#40
	db #6e,#65,#45,#65,#45,#65,#45,#64
	db #45,#41,#4d,#40,#48,#41,#69,#40
	db #6a,#45,#45,#44,#44,#45,#45,#44
	db #44,#41,#4d,#40,#4c,#41,#4d,#40
	db #4e,#65,#45,#64,#45,#65,#45,#64
	db #45,#41,#4d,#40,#48,#41,#49,#40
	db #4a,#65,#45,#64,#44,#65,#45,#65
	db #45,#41,#6d,#40,#6c,#41,#6d,#40
	db #6e,#65,#45,#65,#45,#65,#45,#64
	db #44,#41,#4d,#40,#c8,#41,#69,#40
	db #4a,#45,#45,#64,#44,#65,#45,#64
	db #45,#41,#4d,#40,#4c,#41,#4d,#40
	db #4e,#65,#45,#64,#44,#45,#45,#c4
	db #c4,#41,#4d,#40,#48,#41,#49,#00
	db #00,#0d,#0d,#6e,#7e,#65,#65,#45
	db #45,#65,#e5,#45,#64,#65,#e5,#67
	db #66,#65,#65,#65,#65,#65,#65,#e7
	db #67,#45,#e5,#c4,#e4,#e5,#e5,#c6
	db #e6,#45,#45,#44,#44,#45,#45,#44
	db #44,#45,#c5,#45,#46,#45,#e5,#46
	db #c6,#65,#65,#65,#65,#65,#65,#67
	db #67,#45,#45,#44,#44,#45,#45,#46
	db #46,#45,#05,#64,#64,#e5,#65,#65
	db #67,#45,#65,#44,#64,#65,#65,#47
	db #66,#65,#65,#65,#65,#65,#25,#26
	db #26,#45,#65,#44,#44,#45,#65,#46
	db #66,#45,#45,#64,#64,#65,#65,#65
	db #65,#45,#c5,#44,#c4,#45,#c5,#47
	db #46,#45,#65,#64,#64,#45,#45,#cc
	db #cc,#45,#45,#44,#44,#45,#45,#00
	db #00,#45,#45,#64,#c4,#65,#45,#e5
	db #e5,#45,#e5,#40,#60,#41,#e5,#00
	db #22,#65,#65,#64,#c4,#65,#45,#65
	db #45,#41,#c5,#40,#c0,#41,#ed,#00
	db #22,#65,#45,#64,#44,#65,#45,#64
	db #e4,#45,#c5,#40,#40,#41,#e5,#00
	db #00,#45,#45,#e5,#e5,#65,#45,#e7
	db #e7,#41,#cd,#40,#48,#41,#cd,#00
	db #00,#6d,#4d,#4c,#4d,#65,#45,#e4
	db #c4,#45,#e5,#40,#68,#41,#ed,#00
	db #22,#65,#65,#64,#44,#65,#45,#64
	db #44,#41,#45,#40,#44,#41,#69,#44
	db #6e,#45,#45,#44,#45,#65,#45,#64
	db #e5,#41,#45,#40,#40,#41,#45,#40
	db #40,#45,#45,#e5,#e5,#65,#45,#c4
	db #c4,#41,#45,#00,#00,#41,#41,#00
	db #08,#45,#45,#cd,#cd,#45,#45,#ef
	db #ef,#e5,#65,#41,#65,#e5,#65,#22
	db #22,#65,#65,#cd,#cd,#45,#45,#cd
	db #cf,#c5,#65,#c5,#e5,#c5,#e5,#02
	db #22,#45,#45,#6d,#6c,#45,#45,#ec
	db #ec,#c5,#e5,#40,#44,#e5,#e5,#00
	db #00,#45,#45,#ed,#ed,#45,#45,#ef
	db #ef,#c5,#c5,#c5,#c4,#c5,#c5,#00
	db #00,#4d,#4d,#7d,#7c,#45,#45,#cf
	db #cf,#e5,#e5,#41,#65,#65,#e5,#22
	db #22,#65,#65,#6d,#6c,#45,#45,#0e
	db #0e,#45,#65,#45,#64,#45,#65,#46
	db #2e,#45,#45,#4d,#4c,#45,#45,#ed
	db #ed,#45,#45,#61,#44,#45,#45,#40
	db #40,#45,#45,#ed,#ed,#45,#45,#cc
	db #cc,#45,#45,#00,#00,#41,#01,#08
	db #18,#21,#05,#64,#44,#65,#45,#64
	db #45,#61,#65,#60,#64,#61,#65,#62
	db #64,#65,#45,#64,#45,#65,#45,#66
	db #45,#61,#65,#60,#40,#61,#45,#62
	db #44,#45,#45,#44,#44,#45,#45,#44
	db #44,#61,#45,#40,#44,#41,#45,#42
	db #44,#65,#45,#64,#45,#65,#45,#66
	db #45,#41,#45,#40,#40,#41,#45,#42
	db #40,#25,#45,#64,#44,#65,#45,#66
	db #45,#61,#65,#60,#64,#61,#45,#62
	db #44,#65,#45,#64,#45,#25,#45,#26
	db #44,#61,#45,#60,#40,#61,#45,#62
	db #44,#45,#45,#64,#44,#65,#45,#64
	db #45,#41,#45,#40,#44,#41,#45,#42
	db #44,#65,#45,#64,#44,#45,#45,#c4
	db #c4,#41,#45,#40,#40,#41,#45,#00
	db #00,#0d,#29,#5c,#6e,#65,#65,#44
	db #67,#65,#65,#44,#64,#65,#65,#44
	db #66,#45,#65,#45,#e5,#45,#e5,#45
	db #e7,#45,#e5,#44,#e4,#45,#e5,#44
	db #e6,#45,#45,#44,#44,#45,#45,#44
	db #44,#45,#65,#44,#64,#45,#e5,#44
	db #e6,#45,#65,#44,#65,#65,#65,#45
	db #67,#45,#65,#44,#64,#45,#65,#44
	db #46,#05,#25,#44,#64,#65,#e5,#45
	db #e7,#65,#65,#44,#64,#45,#65,#44
	db #66,#45,#65,#45,#e5,#05,#21,#04
	db #22,#45,#65,#44,#64,#45,#65,#44
	db #66,#45,#45,#64,#64,#45,#65,#45
	db #65,#45,#65,#44,#64,#45,#65,#44
	db #66,#45,#65,#44,#e4,#45,#c5,#cc
	db #cc,#45,#65,#44,#44,#45,#45,#00
	db #00,#65,#45,#24,#45,#65,#45,#a6
	db #e5,#65,#65,#61,#61,#61,#45,#22
	db #20,#65,#65,#24,#45,#65,#45,#25
	db #45,#61,#45,#60,#c1,#61,#45,#22
	db #00,#65,#45,#64,#45,#25,#45,#24
	db #64,#65,#e5,#40,#40,#61,#c5,#00
	db #00,#65,#45,#a4,#e5,#65,#45,#e7
	db #e7,#41,#c5,#40,#40,#41,#c5,#00
	db #00,#25,#4d,#64,#4d,#65,#45,#a6
	db #c5,#65,#e5,#61,#61,#61,#65,#22
	db #00,#65,#65,#64,#45,#65,#45,#26
	db #44,#61,#65,#60,#64,#61,#45,#26
	db #44,#65,#45,#64,#45,#65,#45,#64
	db #65,#61,#45,#60,#41,#41,#45,#40
	db #40,#65,#45,#e5,#e5,#65,#45,#c4
	db #c4,#61,#45,#00,#00,#01,#41,#10
	db #10,#45,#65,#cd,#ed,#45,#65,#ed
	db #ef,#65,#e5,#60,#61,#45,#65,#00
	db #22,#65,#65,#cd,#ed,#45,#65,#cd
	db #ed,#45,#65,#45,#e1,#45,#e5,#02
	db #22,#45,#65,#6c,#6d,#45,#65,#ec
	db #ec,#45,#e5,#40,#40,#45,#e5,#00
	db #00,#45,#65,#ed,#ed,#45,#65,#ef
	db #ef,#45,#e5,#44,#e5,#45,#e5,#00
	db #00,#4d,#6d,#7c,#7d,#45,#65,#cd
	db #ef,#65,#e5,#40,#61,#45,#65,#00
	db #22,#65,#65,#44,#6d,#45,#65,#04
	db #22,#45,#65,#44,#65,#45,#65,#04
	db #22,#45,#65,#4c,#6d,#05,#65,#ed
	db #ed,#45,#65,#40,#61,#45,#65,#40
	db #40,#45,#65,#ed,#ed,#45,#65,#cc
	db #cc,#45,#65,#00,#00,#01,#61,#00
	db #10,#00
.l0000
	db #00 
.l0001
	db #c3
.l0002
	dw #00
;
.music_info
	db "Fucking Exams 2 (2002)(Revival)()",0
	db "",0

	read "music_end.asm"
