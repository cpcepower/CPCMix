; Music of Halloween Meeting - Improvized Contest - Part 5 (2004)(Benediction)(Eno)(AYC)
; Ripped by Megachur the 24/02/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HALMICP5.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2021
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
.l4021 equ $ + 2
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
.l4111
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l4214
	nop
	nop
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	nop
	nop
	ld hl,#0000
	ld c,l
	ld d,#00
	ld a,(#0001)
	ld e,a
	or a
	sbc hl,de
	ld (#0002),hl
	dec a
.l475b equ $ + 1
.l475a
	ld c,#00
	ld c,b
.l475d
	ret nz
	inc b
	call nz,#c801
	inc b
	push bc
	ld bc,#04d0
	add #01
	rst #00
	ld bc,#01cc
	call #ce01
	ld bc,#01cf
	call nc,#d501
	ld bc,#01d6
	rst #10
	ld bc,#01d8
	push af
	rrca
	rrca
	rrca
	rrca
	call l4786
	pop af
.l4786
	and #0f
	add #90
	daa
	adc #40
	daa
	jr l47bf
	ex af,af'
	jr nz,l479f
	ld bc,#d8f0
	call l47b4
	ld bc,#fc18
	call l47b4
.l479f
	ld bc,#ff9c
	call l47b4
	ld c,#f6
	call l47b4
	ld a,e
	add #30
	call l4214
	pop bc
	pop de
	pop hl
	ret
.l47b4
	ex de,hl
	xor a
.l47b6
	add hl,bc
	inc a
	jr c,l47b6
	sbc hl,bc
	ex de,hl
	add #2f
.l47bf
	cp #30
	jr nz,l47ce
	bit 1,l
	jr nz,l47d0
	bit 2,l
	ret nz
	ld a,#20
	jr l47d0
.l47ce
	set 1,l
.l47d0
	jp l4214
	exx
	call l4111
	ld hl,#0100
	ld (l4021),hl
	ld hl,#c000
	ld de,#c001
	ld (hl),#00
	ld bc,#3fff
	ldir
	exx
	push bc
	push de
	push hl
	ld hl,(l4021)
	push hl
	ld hl,#002d
	ld (l4021),hl
	bit 7,(ix+#28)
	jr z,l4809
.l4800 equ $ + 2
	call #a89f
	db #17
.l4809 equ $ + 7
	db #01,#2e,#00,#01,#5c,#01,#01,#ff
	db #01,#01,#aa,#02,#01,#49,#03,#01
	db #80,#07,#01,#eb,#07,#01,#57,#08
	db #01,#f7,#08,#01,#b4,#09,#01,#9b
	db #0a,#01,#d0,#0a,#01,#92,#0b,#01
	db #c3,#0b,#ff,#ff,#ff,#ff,#ff,#ff
	db #89,#7f,#81,#be,#00,#bd,#01,#0b
	db #85,#fe,#79,#fe,#7d,#05,#81,#c7
	db #79,#e0,#01,#b5,#c6,#b1,#e9,#d6
	db #a3,#b9,#05,#1b,#db,#00,#f1,#f7
	db #0d,#13,#29,#2f,#45,#4b,#10,#61
	db #67,#7d,#b0,#04,#83,#99,#9f,#aa
	db #64,#a2,#e5,#67,#60,#04,#b9,#39
	db #2b,#27,#23,#60,#03,#9c,#09,#45
	db #82,#be,#e2,#f8,#d3,#b0,#fb,#32
	db #60,#60,#a3,#fe,#26,#aa,#1b,#1b
	db #9d,#27,#13,#00,#29,#2f,#45,#4b
	db #61,#67,#7d,#83,#0f,#99,#9f,#aa
	db #a2,#3b,#04,#fd,#ca,#3a,#05,#9c
	db #92,#00,#23,#60,#9c,#09,#45,#82
	db #be,#e2,#00,#a3,#b9,#05,#1b,#db
	db #db,#0d,#0d,#8f,#f4,#f9,#f1,#f7
	db #0d,#f3,#f8,#01,#14,#e4,#13,#01
	db #40,#f5,#c8,#2e,#01,#77,#c8,#65
	db #fd,#9e,#1b,#fd,#a2,#0d,#09,#b6
	db #d6,#c8,#9c,#fd,#d5,#09,#fd,#d9
	db #e2,#09,#ed,#c6,#d3,#1b,#59,#1b
	db #fd,#10,#0d,#07,#24,#c8,#0c,#09
	db #09,#fd,#47,#60,#e2,#07,#5b,#e2
	db #43,#13,#29,#2f,#45,#4b,#00,#61
	db #67,#7d,#83,#99,#9f,#aa,#a2,#ff
	db #f3,#7c,#fd,#8a,#f2,#7d,#ac,#9a
	db #80,#f1,#ac,#60,#fe,#b5,#fe,#b6
	db #80,#d9,#99,#13,#29,#2f,#45,#4b
	db #61,#67,#02,#7d,#83,#99,#9f,#aa
	db #a2,#0d,#fa,#23,#00,#60,#9c,#09
	db #45,#82,#be,#e2,#a3,#01,#b9,#05
	db #1b,#db,#f1,#0d,#0d,#f3,#f0,#30
	db #f7,#0d,#f2,#ef,#3a,#0c,#82,#98
	db #3b,#51,#fb,#fc,#d6,#fe,#e2,#fe
	db #ea,#b8,#8e,#f9,#27,#0d,#09,#3f
	db #c8,#b5,#00,#51,#ba,#d0,#d6,#ec
	db #f2,#08,#0e,#00,#24,#2a,#40,#46
	db #5c,#62,#78,#7e,#20,#89,#81,#d7
	db #7d,#04,#fa,#01,#00,#01,#00,#01
	db #ff,#01,#fe,#f9,#fc,#06,#fa,#04
	db #07,#fa,#f8,#0b,#b0,#04,#e0,#63
	db #5a,#04,#2f,#2b,#03,#fe,#fb,#04
	db #ff,#fc,#fe,#f8,#d3,#ae,#fb,#a1
	db #fe,#24,#ac,#9f,#29,#01,#f8,#01
	db #f8,#2b,#07,#03,#fe,#f8,#04,#fc
	db #fb,#06,#fb,#00,#fc,#f6,#ff,#f5
	db #fb,#fe,#05,#f2,#f8,#01,#15,#df
	db #14,#01,#46,#cc,#34,#01,#79,#bf
	db #c4,#67,#07,#fd,#a4,#05,#b8,#cc
	db #a2,#fb,#d7,#f9,#db,#0d,#f3,#bf
	db #c4,#d5,#07,#fd,#12,#05,#26,#cc
	db #10,#fb,#45,#f9,#49,#0d,#61,#fc
	db #e2,#43,#81,#70,#80,#f1,#a2,#60
	db #df,#9f,#01,#ee,#07,#03,#af,#fe
	db #ef,#04,#fc,#f2,#06,#fb,#f7,#fc
	db #ed,#f5,#f2,#fe,#fc,#ee,#f2,#ef
	db #3a,#0c,#fd,#de,#03,#fc,#d9,#fc
	db #e2,#b2,#8e,#07,#f8,#fd,#2d,#05
	db #41,#cb,#bb,#f8,#4d,#d0,#77,#53
	db #e0,#01,#00,#01,#00,#22,#fe,#e1
	db #1e,#5a,#a4,#38,#7f,#cc,#e6,#db
	db #fa,#fc,#f6,#f9,#20,#0d,#91,#ee
	db #f0,#dd,#f0,#64,#f8,#21,#fc,#01
	db #5c,#01,#03,#01,#59,#80,#57,#e1
	db #1e,#5a,#1f,#a4,#38,#cc,#e6,#d6
	db #fa,#f7,#f6,#f4,#10,#08,#f4,#f0
	db #bb,#fd,#fd,#53,#d5,#d9,#01,#0b
	db #f7,#2a,#cc,#fd,#34,#05,#40,#f7
	db #c4,#32,#01,#77,#c8,#6d,#fd,#a6
	db #24,#fd,#aa,#fc,#ac,#0c,#b9,#de
	db #c8,#a4,#fd,#dd,#a4,#fd,#e1,#fc
	db #e3,#0c,#f0,#c6,#db,#a4,#59,#a4
	db #fd,#18,#53,#07,#24,#c8,#14,#a4
	db #a4,#fd,#4f,#7f,#53,#07,#5b,#e2
	db #4b,#fa,#70,#f6,#6d,#91,#80,#80
	db #f1,#ac,#68,#bc,#fd,#bd,#53,#d9
	db #99,#fa,#ee,#f6,#eb,#10,#fe,#e1
	db #1e,#3f,#5a,#a4,#fc,#f5,#f8,#ef
	db #f1,#f0,#40,#06,#fa,#cd,#f6,#ca
	db #fc,#e0,#df,#c8,#f6,#f8,#c7,#09
	db #3f,#c8,#b5,#c5,#6c,#03,#e4,#01
	db #00,#01,#00,#22,#fe,#00,#01,#fe
	db #de,#02,#02,#ff,#e6,#db,#fa,#fc
	db #f6,#f9,#20,#0d,#91,#ee,#f0,#dd
	db #f0,#64,#21,#fc,#f2,#01,#5c,#01
	db #03,#01,#59,#80,#57,#00,#01,#fe
	db #d9,#02,#7f,#02,#e6,#d6,#fa,#f7
	db #f6,#f4,#10,#08,#f3,#f0,#fd,#d5
	db #d4,#d9,#ff,#01,#0c,#f4,#2b,#01
	db #40,#c8,#36,#01,#77,#c8,#6d,#f9
	db #a6,#f8,#ac,#ff,#10,#bd,#c8,#a4
	db #fd,#dd,#fe,#df,#fe,#e2,#fc,#e3
	db #0c,#f0,#c3,#db,#bb,#fe,#19,#03
	db #04,#24,#c8,#17,#fe,#50,#03,#04
	db #5b,#e5,#4e,#ff,#fa,#70,#f6,#6d
	db #91,#80,#80,#f1,#ab,#68,#fd,#ed
	db #d9,#99,#fa,#ee,#cf,#f6,#eb,#10
	db #fe,#00,#01,#fe,#f0,#fc,#f5,#f8
	db #ef,#f1,#f0,#ff,#40,#06,#fa,#cd
	db #f6,#ca,#e0,#df,#c8,#f6,#f8,#c7
	db #09,#3f,#c8,#b5,#80,#c5,#6c,#35
	db #80,#fe,#00,#34,#21,#22,#24,#24
	db #0e,#0d,#10,#0e,#0f,#53,#fe,#0c
	db #52,#3b,#3c,#3e,#00,#3e,#2a,#29
	db #2a,#2b,#17,#17,#16,#00,#15,#57
	db #58,#59,#59,#40,#3f,#3f,#01,#40
	db #2d,#2d,#2c,#2b,#15,#16,#fe,#18
	db #24,#58,#57,#fe,#1c,#41,#41,#fe
	db #20,#2b,#2c,#fa,#fe,#24,#fe,#1a
	db #fe,#28,#fe,#1e,#fe,#2c,#45,#fe
	db #40,#44,#00,#2e,#30,#30,#14,#13
	db #14,#15,#6b,#80,#fe,#4b,#6a,#4b
	db #4c,#4e,#4e,#36,#35,#00,#36,#37
	db #1d,#1d,#1c,#1b,#6f,#70,#00,#71
	db #71,#50,#4f,#4f,#50,#39,#39,#09
	db #38,#37,#1b,#1c,#fe,#57,#70,#6f
	db #fe,#5b,#27,#51,#51,#fe,#5f,#37
	db #38,#fe,#63,#fe,#59,#fe,#67,#f8
	db #fe,#5d,#fe,#6b,#fe,#30,#fe,#31
	db #fe,#34,#2e,#2e,#13,#50,#12,#fe
	db #48,#67,#fe,#8b,#66,#47,#48,#4a
	db #02,#4a,#34,#33,#34,#35,#1c,#fe
	db #77,#1a,#02,#6b,#6c,#6d,#6d,#4c
	db #4b,#fe,#4f,#37,#52,#37,#fe,#53
	db #1a,#fe,#79,#1c,#6c,#fe,#4c,#6c
	db #3b,#4d,#4d,#fe,#9f,#fd,#54,#fe
	db #66,#1a,#fe,#a7,#fe,#9d,#fe,#fe
	db #ab,#fe,#a1,#fe,#af,#fe,#a5,#fe
	db #b3,#c8,#97,#bc,#00,#2d,#ff,#c8
	db #44,#fd,#6b,#04,#80,#fd,#7b,#fe
	db #2e,#cb,#80,#01,#b6,#c9,#b4,#ff
	db #fe,#da,#03,#ee,#ee,#ba,#d8,#fc
	db #01,#25,#fe,#35,#ca,#25,#01,#5c
	db #fd,#fe,#6c,#c8,#5c,#fe,#e3,#03
	db #97,#ca,#c3,#fe,#ab,#4c,#fe,#9c
	db #e6,#04,#cf,#d2,#9a,#f2,#f8,#52
	db #52,#03,#09,#fe,#05,#3b,#d5,#cd
	db #08,#fd,#3c,#30,#05,#40,#2d,#fd
	db #3b,#14,#ca,#3f,#5d,#70,#02,#77
	db #6f,#fe,#25,#ca,#77,#f9,#de,#6b
	db #c1,#b6,#40,#55,#fe,#f4,#54,#a5
	db #a6,#a8,#a8,#d0,#08,#cf,#d0,#d1
	db #5b,#fe,#00,#5a,#5b,#5c,#00,#5e
	db #5e,#ae,#ad,#ae,#af,#d9,#d9,#00
	db #d8,#d7,#5f,#60,#61,#61,#60,#5f
	db #81,#fe,#10,#b1,#b1,#b0,#af,#d7
	db #d8,#fe,#0c,#cf,#fc,#14,#fc,#12
	db #af,#b0,#fe,#18,#fe,#0e,#fe,#1c
	db #fa,#12,#ff,#fe,#30,#fe,#1a,#fe
	db #28,#c8,#0c,#90,#f4,#f9,#b5,#fe
	db #bb,#fa,#be,#40,#35,#fe,#f3,#34
	db #85,#86,#88,#88,#c0,#08,#bf,#c0
	db #c1,#1b,#fe,#ff,#1a,#3b,#3c,#00
	db #3e,#3e,#8e,#8d,#8e,#8f,#c9,#c9
	db #00,#c8,#c7,#1f,#20,#21,#21,#40
	db #3f,#00,#3f,#40,#91,#91,#90,#8f
	db #c7,#c8,#92,#fe,#0b,#20,#1f,#fe
	db #0f,#41,#41,#fe,#13,#8f,#7d,#90
	db #fe,#17,#fe,#0d,#fe,#1b,#fe,#11
	db #fe,#1f,#95,#fe,#33,#00,#94,#d5
	db #d6,#d8,#d8,#e8,#e7,#e8,#20,#e9
	db #bb,#fe,#3f,#ba,#9b,#9c,#9e,#9e
	db #00,#de,#dd,#de,#df,#f1,#f1,#f0
	db #ef,#80,#fd,#fc,#c1,#a0,#9f,#9f
	db #a0,#e1,#e1,#0e,#e0,#df,#ef,#f0
	db #fe,#4b,#fe,#fb,#fe,#4f,#a1,#4f
	db #a1,#fe,#53,#df,#e0,#fe,#57,#fe
	db #4d,#fe,#5b,#fe,#51,#fe,#fe,#5f
	db #90,#74,#f0,#b3,#d4,#73,#fd,#14
	db #fe,#10,#b2,#a5,#35,#80,#fe,#72
	db #34,#85,#86,#88,#88,#c0,#bf,#10
	db #c0,#c1,#1b,#fe,#7e,#1a,#3b,#3c
	db #3e,#00,#3e,#8e,#8d,#8e,#8f,#c9
	db #c9,#c8,#00,#c7,#1f,#20,#21,#21
	db #40,#3f,#3f,#01,#40,#91,#91,#90
	db #8f,#c7,#c8,#fe,#8a,#24,#20,#1f
	db #fe,#8e,#41,#41,#fe,#92,#8f,#90
	db #fa,#fe,#96,#fe,#8c,#fe,#9a,#fe
	db #90,#fe,#9e,#95,#fe,#b2,#94,#00
	db #d5,#d6,#d8,#d8,#e8,#e7,#e8,#e9
	db #40,#bb,#fe,#be,#ba,#9b,#9c,#9e
	db #9e,#de,#01,#dd,#de,#df,#f1,#f1
	db #f0,#ef,#fd,#7b,#00,#c1,#a0,#9f
	db #9f,#a0,#e1,#e1,#e0,#1c,#df,#ef
	db #f0,#fe,#ca,#fe,#7a,#fe,#ce,#a1
	db #a1,#9f,#fe,#d2,#df,#e0,#fe,#d6
	db #fe,#cc,#fe,#da,#fe,#d0,#fe,#de
	db #b5,#9e,#72,#a0,#fe,#d5,#fe,#d8
	db #df,#e9,#db,#25,#fe,#71,#00,#24
	db #cd,#ce,#d0,#d0,#64,#63,#64,#20
	db #65,#ab,#fe,#7d,#aa,#2b,#2c,#2e
	db #2e,#40,#d6,#fe,#36,#d7,#6d,#6d
	db #6c,#6b,#af,#00,#b0,#b1,#b1,#30
	db #2f,#2f,#30,#d9,#04,#d9,#d8,#d7
	db #6b,#6c,#fe,#89,#b0,#af,#93,#fe
	db #8d,#31,#31,#fe,#91,#d7,#d8,#fe
	db #95,#fe,#8b,#ff,#fe,#99,#fe,#8f
	db #fe,#9d,#fe,#93,#fe,#a1,#fe,#97
	db #fe,#a5,#c8,#89,#a0,#80,#71,#35
	db #fe,#71,#34,#85,#86,#88,#88,#04
	db #c0,#bf,#c0,#c1,#1b,#fe,#7d,#1a
	db #3b,#00,#3c,#3e,#3e,#8e,#8d,#8e
	db #8f,#c9,#00,#c9,#c7,#c7,#20,#21
	db #21,#40,#3f,#00,#3f,#40,#91,#91
	db #90,#8f,#c7,#c8,#81,#fe,#89,#20
	db #1f,#1f,#20,#41,#41,#fe,#90,#2b
	db #8f,#90,#fe,#94,#c8,#fe,#8b,#c8
	db #fe,#8e,#fe,#9c,#50,#95,#fe,#b0
	db #94,#fe,#06,#d8,#d8,#e8,#e7,#10
	db #e8,#e9,#bb,#fe,#bc,#ba,#9b,#9c
	db #9e,#00,#9e,#de,#dd,#de,#df,#f1
	db #f1,#f0,#40,#ef,#fd,#7a,#c1,#a0
	db #9f,#9f,#a0,#e1,#07,#e1,#e0,#df
	db #ef,#f0,#fe,#c8,#fe,#79,#fe,#cc
	db #27,#a1,#a1,#fe,#d0,#df,#e0,#fe
	db #d4,#fe,#ca,#fe,#d8,#f6,#fe,#ce
	db #fe,#dc,#80,#f1,#ab,#f0,#d8,#fe
	db #b4,#d9,#99,#35,#80,#fe,#ef,#34
	db #85,#86,#88,#88,#c0,#bf,#10,#c0
	db #c1,#1b,#fe,#fb,#1a,#3b,#3c,#3e
	db #00,#3e,#8e,#8d,#8e,#8f,#c9,#c9
	db #c8,#00,#c7,#1f,#20,#21,#21,#40
	db #3f,#3f,#01,#40,#91,#91,#90,#8f
	db #c7,#c8,#fe,#07,#24,#20,#1f,#fe
	db #0b,#41,#41,#fe,#0f,#8f,#90,#fa
	db #fe,#13,#fe,#09,#fe,#17,#fe,#0d
	db #fe,#1b,#95,#fe,#2f,#94,#c1,#fe
	db #85,#fe,#c5,#e8,#e7,#e8,#e9,#bb
	db #fe,#3b,#00,#ba,#9b,#9c,#9e,#9e
	db #de,#dd,#de,#04,#df,#f1,#f1,#f0
	db #ef,#fd,#f8,#c1,#a0,#00,#9f,#9f
	db #a0,#e1,#e1,#e0,#df,#ef,#72,#f0
	db #fe,#47,#fe,#f7,#fe,#4b,#a1,#a1
	db #fe,#4f,#df,#7e,#e0,#fe,#53,#fe
	db #49,#fe,#57,#fe,#4d,#fe,#5b,#80
	db #ef,#3b,#e0,#01,#ef,#01,#ef,#46
	db #ed,#00,#ff,#01,#00,#01,#00,#01
	db #ff,#01,#fe,#01,#fd,#01,#fc,#01
	db #fb,#01,#fa,#fc,#01,#f9,#01,#f8
	db #01,#f7,#01,#f6,#01,#f5,#01,#f4
	db #00,#02,#b7,#fd,#f4,#01,#fd,#f8
	db #fc,#f0,#03,#fd,#00,#1d,#f4,#fc
	db #d8,#ff,#fc,#db,#19,#00,#b0,#c6
	db #01,#27,#c8,#15,#ec,#3e,#f8,#65
	db #fc,#78,#db,#fc,#71,#10,#71,#02
	db #fd,#71,#f8,#61,#03,#fd,#7d,#f1
	db #71,#fb,#e1,#71,#bf,#9f,#80,#f1
	db #a5,#60,#dc,#9c,#02,#fd,#ef,#f8
	db #df,#7e,#03,#fd,#fb,#10,#ef,#fc
	db #e7,#01,#ef,#01,#f2,#49,#f1,#00
	db #ed,#01,#00,#01,#00,#22,#fe,#17
	db #01,#dd,#d9,#dc,#00,#a9,#04,#ff
	db #01,#dc,#50,#5c,#a9,#fb,#a1,#03
	db #28,#b1,#a0,#2a,#21,#f8,#f8,#e9
	db #df,#01,#d8,#de,#de,#00,#fa,#01
	db #e9,#f9,#01,#0f,#df,#0e,#01,#40
	db #ff,#c0,#2e,#01,#7f,#d0,#6d,#f9
	db #9e,#f0,#a4,#18,#c5,#c0,#9c,#01
	db #ed,#ff,#c0,#db,#01,#2c,#d0,#1a
	db #01,#5b,#e8,#49,#81,#70,#80,#f1
	db #a8,#60,#cf,#d9,#99,#01,#e8,#00
	db #17,#f8,#ef,#f1,#e8,#e1,#e8,#50
	db #16,#fc,#f4,#e7,#dc,#e3,#c4,#a6
	db #0d,#43,#c8,#b5,#c5,#61,#31,#ee
	db #01,#00,#01,#00,#22,#fe,#21,#e1
	db #d6,#10,#fd,#e9,#ee,#30,#3f,#38
	db #30,#ab,#f7,#f0,#dd,#e9,#dd,#5f
	db #03,#29,#25,#fe,#d3,#fe,#fa,#fc
	db #f8,#d3,#b0,#fb,#a1,#fc,#26,#aa
	db #9b,#25,#21,#f8,#21,#c6,#e1,#d1
	db #01,#f8,#31,#20,#38,#fa,#f9,#fe
	db #f8,#30,#ff,#fb,#f3,#f1,#f9,#f0
	db #f8,#01,#17,#e7,#16,#01,#40,#c8
	db #2e,#01,#77,#df,#c8,#65,#f9,#9e
	db #31,#09,#b6,#c8,#9c,#f9,#d5,#fe
	db #ea,#0a,#ee,#ef,#c8,#d3,#fe,#1a
	db #fb,#0e,#31,#09,#24,#c0,#0a,#01
	db #5b,#e8,#49,#f8,#81,#70,#80,#f1
	db #a8,#60,#d9,#99,#01,#ea,#31,#24
	db #3c,#cf,#fa,#f0,#fe,#ef,#34,#35
	db #fc,#fa,#f1,#f0,#f0,#ef,#50,#0e
	db #7f,#34,#f9,#bf,#fe,#ce,#f6,#c8
	db #fc,#d6,#f9,#e2,#fd,#c5,#ba,#80
	db #f0,#01,#37,#c8,#b5,#fb,#58,#ca
	db #71,#00,#f8,#01,#00,#01,#00,#01
	db #ff,#01,#fe,#f9,#fc,#0d,#0f,#0f
	db #07,#0e,#0d,#0a,#08,#04,#a8,#fc
	db #40,#e4,#29,#25,#47,#0d,#fe,#d6
	db #0c,#0a,#07,#f6,#d1,#b0,#fb,#a1
	db #fc,#f8,#26,#aa,#9b,#25,#fe,#ef
	db #01,#f9,#02,#f9,#0d,#0e,#0d,#10
	db #0c,#0a,#07,#fd,#f6,#0f,#0f,#0e
	db #0a,#17,#08,#04,#04,#f5,#f9,#0d
	db #fd,#04,#f4,#f8,#01,#13,#d9,#e7
	db #12,#fd,#2c,#00,#05,#40,#c6,#2a
	db #04,#04,#03,#77,#dd,#c6,#63,#f9
	db #9e,#04,#09,#b6,#c8,#9c,#f9,#d5
	db #00,#09,#ed,#d6,#c8,#d3,#fd,#0c
	db #0e,#fd,#10,#04,#09,#24,#c6,#0a
	db #0c,#5f,#0c,#fd,#47,#00,#07,#5b
	db #e2,#43,#fe,#67,#83,#72,#80,#f1
	db #dc,#ac,#60,#fd,#b5,#00,#d9,#99
	db #fd,#c5,#03,#f1,#0d,#0e,#09,#0d
	db #0c,#0a,#07,#fd,#ed,#0f,#0f,#fe
	db #f0,#13,#0a,#04,#04,#f3,#f0,#08
	db #04,#f2,#ef,#3a,#0c,#ff,#fb,#d6
	db #fb,#e3,#fd,#ea,#b9,#8f,#01,#37
	db #c8,#b5,#fb,#58,#fe,#53,#80,#cc
	db #72,#00,#e1,#01,#00,#01,#00,#22
	db #fe,#0d,#0e,#0d,#0c,#fd,#de,#40
	db #0b,#e8,#dd,#08,#07,#06,#06,#00
	db #0a,#42,#09,#fe,#fd,#04,#03,#02
	db #02,#1f,#0a,#0b,#7f,#0b,#91,#ee
	db #f2,#dd,#ee,#62,#21,#fc,#01,#5c
	db #01,#08,#01,#59,#85,#80,#57,#0d
	db #0e,#0d,#0c,#fd,#d9,#0b,#e8,#d8
	db #01,#08,#07,#06,#06,#00,#0a,#09
	db #fe,#f8,#0e,#04,#03,#02,#02,#0d
	db #05,#f4,#f0,#fd,#fd,#0b,#fe,#d5
	db #d9,#01,#0b,#f7,#2a,#fe,#39,#fe
	db #35,#05,#40,#c6,#32,#0b,#7f,#0b
	db #03,#77,#c6,#6b,#f9,#a6,#f8,#ac
	db #10,#bd,#c8,#a4,#f9,#dd,#e1,#f8
	db #e3,#10,#f4,#c8,#db,#0e,#0e,#0c
	db #0c,#fd,#18,#f5,#fe,#1a,#0a,#25
	db #c7,#12,#fe,#4f,#0c,#fd,#4f,#0b
	db #08,#5b,#80,#e1,#4a,#08,#07,#06
	db #06,#00,#0a,#09,#83,#fe,#71,#04
	db #03,#02,#02,#00,#8f,#7e,#80,#f1
	db #d0,#ac,#68,#fd,#bd,#0b,#d9,#99
	db #08,#07,#06,#06,#10,#00,#0a,#09
	db #fe,#ef,#04,#03,#02,#02,#42,#00
	db #0e,#fc,#0d,#0e,#0d,#0c,#fd,#f0
	db #0b,#98,#fa,#ef,#0b,#0b,#f3,#f0
	db #3e,#04,#08,#07,#06,#08,#06,#00
	db #0a,#09,#fe,#ce,#04,#03,#02,#7c
	db #02,#df,#dc,#c6,#f4,#01,#37,#c8
	db #b5,#c5,#5a,#10,#ff,#01,#00,#01
	db #00,#01,#ff,#01,#fe,#01,#fd,#01
	db #fc,#01,#fb,#01,#fa,#ff,#01,#f9
	db #01,#f8,#01,#f7,#01,#f6,#01,#f5
	db #01,#f4,#01,#f3,#01,#f2,#fd,#01
	db #f1,#01,#f0,#01,#ef,#01,#ee,#01
	db #ed,#fd,#eb,#00,#01,#ef,#c0,#01
	db #ef,#46,#ee,#0b,#9a,#fe,#00,#0a
	db #0a,#fd,#00,#c8,#02,#0e,#f9,#40
	db #0d,#7f,#0d,#cb,#44,#fc,#76,#fc
	db #78,#88,#81,#bd,#00,#c9,#48,#fc
	db #73,#ff,#fd,#78,#04,#81,#fe,#76
	db #cb,#c6,#01,#b4,#c4,#ac,#01,#ef
	db #cb,#ed,#ff,#01,#23,#c6,#21,#01
	db #5c,#c3,#5a,#01,#98,#ca,#90,#01
	db #cd,#c5,#cb,#ff,#01,#07,#ca,#05
	db #01,#3c,#c6,#3a,#fd,#6f,#04,#78
	db #fe,#6d,#c5,#b7,#fd,#bc,#b1,#bc
	db #b0,#53,#b8,#fa,#da,#fe,#e4,#f8
	db #dc,#0c,#fd,#f5,#bf,#c6,#f3,#0f
	db #fe,#33,#fe,#f1,#fd,#33,#c7,#35
	db #90,#75,#f1,#de,#db,#cf,#c1,#b0
	db #9f,#0c,#fd,#74,#c6,#72,#0f,#fe
	db #b2,#fe,#70,#ff,#fd,#b2,#c8,#b4
	db #a0,#72,#e0,#cd,#fd,#f1,#fe,#74
	db #86,#71,#80,#71,#bd,#fe,#6d,#0c
	db #fd,#73,#e9,#71,#e3,#71,#fb,#a5
	db #0f,#fe,#b0,#fd,#fe,#6f,#fd,#b0
	db #c7,#b2,#81,#f2,#ab,#1a,#d4,#96
	db #0c,#fd,#f1,#bf,#c6,#ef,#0f,#fe
	db #2f,#fe,#ed,#fd,#2f,#c8,#31,#80
	db #ef,#01,#ee,#c0,#01,#ee,#45,#ec
	db #00,#ff,#01,#00,#01,#00,#01,#ff
	db #01,#fe,#01,#fd,#01,#fc,#01,#fb
	db #01,#fa,#ff,#01,#f9,#01,#f8,#01
	db #f7,#01,#f6,#01,#f5,#01,#f4,#01
	db #f3,#01,#f2,#ff,#01,#f1,#01,#f0
	db #01,#ef,#01,#ee,#01,#ed,#01,#ec
	db #01,#eb,#42,#ea,#0e,#7f,#ff,#c3
	db #01,#c1,#00,#bf,#3e,#c0,#be,#81
	db #3f,#01,#7f,#80,#7d,#ff,#01,#fe
	db #01,#fd,#c0,#7b,#01,#3c,#c0,#fa
	db #01,#7b,#80,#79,#01,#fa,#ff,#01
	db #f9,#c0,#77,#01,#38,#c0,#f6,#01
	db #77,#80,#75,#01,#f6,#81,#75,#ff
	db #40,#74,#80,#f3,#80,#b3,#81,#b4
	db #41,#72,#c0,#f2,#c0,#b0,#41,#71
	db #fe,#c0,#f1,#41,#f1,#80,#30,#40
	db #ef,#01,#b0,#01,#ee,#45,#ec,#fe
	db #02,#28,#08,#78,#fe,#07,#c0,#41
	db #7b,#18,#02,#0c,#c0,#4f,#f3,#2a
	db #38,#00,#22,#74,#54,#21,#fb,#c9
	db #22,#38,#00,#fb,#cd,#00,#40,#06
	db #f5,#ed,#78,#1f,#30,#fb,#76,#76
	db #cd,#03,#40,#cd,#80,#54,#da,#61
	db #54,#21,#c3,#41,#22,#38,#00,#cd
	db #06,#40,#cd,#00,#00,#c9,#01,#0e
	db #f4,#ed,#49,#01,#c0,#f6,#ed,#49
	db #af,#ed,#79,#01,#92,#f7,#ed,#49
	db #01,#45,#f6,#ed,#49,#06,#f4,#ed
	db #78,#01,#82,#f7,#ed,#49,#01,#00
	db #f6,#ed,#49,#17,#c9,#c8,#38,#70
	db #05,#18,#6d,#5f,#78,#fe,#40,#c0
	db #cd,#83,#59,#fe,#08,#d2,#cf,#48
	db #47,#79,#fe,#08,#d0,#7b,#d6,#0c
	db #0f,#0f,#5f,#36,#cb,#23,#18,#46
	db #d6,#10,#07,#07,#07,#fe,#30,#20
	db #02,#3e,#38,#5f,#0c,#c0,#78,#fe
	db #08,#d0,#36,#cb,#23,#18,#36,#d6
	db #17,#5f,#78,#28,#03,#41,#4f,#78
	db #fe,#08,#d0,#fe,#06,#c8,#79,#fe
	db #21,#20,#07,#36,#ed,#23,#cb,#f3
	db #18,#12,#78,#fe,#07,#c0,#79,#fe
	db #60,#c0,#3e,#db,#14,#1d,#20,#18
	db #cb,#9f,#18,#14,#0e,#00,#78,#07
	db #07,#07,#b1,#18,#0a,#78,#18,#07
	db #78,#e6,#03,#07,#07,#07,#07,#b3
	db #77,#f1,#23,#14,#15,#c8,#15,#20
	db #06,#cd,#83,#59,#77,#23,#c9,#ed
	db #4b,#33,#40,#71,#23,#70,#23,#c9
	db #78,#fe,#08,#30,#10,#79,#fe,#08
	db #1e,#40,#38,#ca,#14,#fe,#40,#1e
	db #06,#28,#c1,#18,#25,#fe,#0c,#30
	db #10,#79,#fe,#40,#28,#2b,#fe,#60
	db #20,#18,#78,#fe,#0a,#28,#13,#18
	db #19,#fe,#60,#20,#0d,#79,#fe,#0c
	db #30,#08,#fe,#08,#38,#04,#fe,#0a
	db #20,#03,#c3,#34,#57,#41,#1e,#43
	db #18,#02,#1e,#4b,#36,#ed,#23,#18
	db #02,#1e,#01,#16,#02,#18,#91,#0c
	db #c0,#78,#fe,#40,#c0,#dd,#cb,#27
	db #66,#20,#0b,#cd,#83,#59,#0f,#0f
	db #0f,#fe,#08,#d2,#cf,#48,#47,#1e
	db #c7,#c3,#0e,#55,#0c,#c0,#78,#fe
	db #40,#c0,#3e,#10,#18,#18,#78,#fe
	db #40,#20,#06,#0c,#c0,#3e,#18,#18
	db #0d,#79,#fe,#40,#c0,#78,#fe,#04
	db #d0,#07,#07,#07,#f6,#20,#77,#23
	db #cd,#27,#56,#77,#23,#f1,#c9,#78
	db #fe,#40,#20,#04,#3e,#c3,#18,#29
	db #1e,#c2,#fe,#08,#38,#2b,#cb,#9f
	db #cb,#78,#28,#0a,#17,#f6,#df,#cb
	db #8f,#77,#23,#78,#e6,#07,#fe,#06
	db #c0,#36,#e9,#23,#f1,#c9,#1e,#c4
	db #78,#fe,#40,#20,#09,#0c,#c0,#3e
	db #cd,#16,#02,#c3,#22,#55,#fe,#08
	db #d0,#79,#fe,#40,#c0,#16,#02,#c3
	db #0e,#55,#04,#28,#0c,#05,#0c,#c0
	db #78,#fe,#08,#1e,#c0,#da,#0e,#55
	db #c9,#36,#c9,#18,#ce,#dd,#cb,#27
	db #66,#28,#02,#af,#c9,#e5,#dd,#cb
	db #27,#4e,#28,#04,#2a,#1f,#40,#23
	db #23,#eb,#2a,#33,#40,#a7,#ed,#52
	db #7d,#11,#80,#00,#19,#24,#25,#e1
	db #c8,#c3,#cc,#48,#0a,#19,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#14,#0d
	db #2c,#11,#04,#13,#0e,#14,#11,#2c
	db #04,#0d,#2c,#02,#07,#00,#08,#11
	db #2c,#04,#13,#2c,#04,#0d,#2c,#0e
	db #12,#25,#2c,#04,#13,#2c,#00,#15
	db #04,#02,#2c,#03,#04,#12,#2c,#0f
	db #0e,#08,#0b,#12,#24,#24,#24,#2c
	db #0e,#15,#0b,#2c,#11,#14,#0b,#04
	db #19,#26,#2c,#2c,#2c,#2c,#05,#14
	db #13,#14,#11,#2a,#12,#2c,#27,#2c
	db #08,#13,#2a,#12,#2c,#11,#04,#00
	db #0b,#0b,#18,#2c,#08,#0c,#0f,#0e
	db #12,#12,#08,#01,#0b,#04,#2c,#28
	db #24,#24,#24,#13,#0e,#2c,#0c,#04
	db #04,#13,#2c,#18,#0e,#14,#2c,#08
	db #0d,#2c,#0c,#04,#04,#13,#08,#0d
	db #06,#26,#26,#26,#29,#2c,#0e,#15
	db #04,#11,#0b,#00,#0d,#03,#04,#11
	db #12,#2c,#27,#2c,#18,#0e,#14,#11
	db #2c,#0e,#0b,#03,#2c,#0f,#11,#04
	db #15,#08,#04,#16,#12,#2c,#2c,#00
	db #11,#04,#2c,#12,#13,#08,#0b,#0b
	db #2c,#06,#0e,#0e,#03,#2c,#01,#14
	db #13,#2c,#0d,#04,#16,#2c,#05,#08
	db #0d,#08,#12,#07,#04,#03,#0f,#11
	db #0e,#03,#12,#2c,#2a,#0b,#0b,#2c
	db #01,#04,#2c,#01,#04,#13,#13,#04
	db #11,#24,#24,#24,#2c,#07,#00,#11
	db #03,#2a,#0e,#12,#2c,#27,#12,#00
	db #0c,#04,#2c,#02,#0e,#0c,#0c,#04
	db #0d,#13,#12,#2c,#00,#12,#2c,#0e
	db #15,#04,#11,#0b,#00,#0d,#03,#04
	db #11,#12,#24,#24,#24,#2c,#00,#0d
	db #0e,#13,#07,#04,#11,#2c,#16,#0e
	db #11,#0b,#03,#2c,#27,#2c,#12,#00
	db #0c,#04,#2c,#02,#0e,#0c,#0c,#04
	db #0d,#13,#12,#2c,#00,#12,#07,#00
	db #11,#03,#2a,#0e,#12,#24,#24,#24
	db #2c,#08,#12,#2c,#13,#07,#04,#2c
	db #05,#08,#11,#12,#13,#2c,#12,#13
	db #04,#0f,#2c,#13,#0e,#0e,#07,#08
	db #06,#07,#25,#24,#24,#24,#2c,#12
	db #0b,#18,#03,#04,#11,#2c,#27,#2c
	db #06,#11,#04,#00,#13,#2c,#06,#05
	db #17,#2c,#14,#12,#04,#03,#12,#0e
	db #0e,#0d,#26,#24,#24,#24,#2c,#0e
	db #0f,#13,#08,#0c,#14,#12,#2c,#27
	db #2c,#12,#13,#0e,#0f,#2c,#13,#00
	db #0b,#0a,#08,#0d,#06,#26,#12,#13
	db #00,#11,#13,#2c,#02,#0e,#03,#08
	db #0d,#06,#26,#26,#26,#2c,#00,#2c
	db #12,#04,#02,#0e,#0d,#03,#2c,#12
	db #13,#04,#0f,#2c,#08,#12,#00,#16
	db #00,#08,#13,#04,#03,#24,#24,#24
	db #2c,#02,#04,#03,#2c,#27,#2c,#01
	db #00,#11,#09,#00,#02,#0a,#2c,#27
	db #2c,#12,#0d,#00,#0a,#04,#0f,#0b
	db #08,#12,#12,#0a,#04,#0d,#2c,#27
	db #2c,#11,#0e,#0c,#00,#08,#0d,#2c
	db #27,#2c,#00,#11,#0d,#0e,#2c,#27
	db #2c,#11,#00,#0c,#2c,#21,#00,#0d
	db #13,#08,#13,#04,#02,#2c,#27,#2c
	db #0f,#11,#0e,#03,#00,#13,#11,#0e
	db #0d,#2c,#27,#2c,#12,#08,#02,#04
	db #2c,#27,#2c,#13,#0e,#0c,#04,#13
	db #2c,#09,#04,#11,#11,#18,#2c,#27
	db #2c,#03,#04,#0c,#0e,#0d,#08,#00
	db #0a,#2c,#27,#2c,#0f,#08,#17,#04
	db #0b,#0c,#00,#0d,#2c,#27,#16,#04
	db #04,#04,#2c,#27,#2c,#0e,#03,#08
	db #04,#12,#0e,#05,#13,#2c,#27,#2c
	db #00,#0d,#13,#08,#13,#04,#02,#2c
	db #27,#2c,#13,#07,#04,#2c,#15,#08
	db #0b,#0b,#00,#08,#0d,#2c,#27,#2c
	db #0a,#04,#15,#08,#0d,#2c,#13,#07
	db #00,#02,#0a,#04,#11,#2c,#27,#2c
	db #07,#04,#11,#0c,#0e,#0b,#13,#11
	db #0e,#0d,#08,#02,#2c,#27,#2c,#04
	db #12,#0f,#2c,#12,#0e,#05,#13,#2c
	db #27,#2c,#0f,#07,#04,#0d,#08,#17
	db #2c,#13,#04,#00,#0c,#2c,#11,#0e
	db #14,#03,#0e,#14,#03,#0e,#14,#2c
	db #27,#2c,#0e,#03,#08,#04,#12,#0e
	db #05,#13,#2c,#27,#2c,#13,#05,#0c
	db #2c,#27,#2c,#0e,#0d,#04,#06,#04
	db #0d,#04,#12,#08,#12,#22,#2c,#00
	db #0d,#03,#2c,#0e,#05,#2c,#02,#0e
	db #14,#11,#12,#04,#2c,#12,#18,#0b
	db #15,#04,#12,#13,#11,#04,#00,#0b
	db #12,#0e,#2c,#0a,#0d,#0e,#16,#0d
	db #2c,#00,#12,#2c,#2a,#12,#14,#0f
	db #04,#11,#2c,#12,#18,#0b,#15,#04
	db #12,#13,#11,#04,#2a,#26,#16,#04
	db #0b,#0b,#2c,#0d,#0e,#16,#2b,#2c
	db #08,#13,#2a,#12,#2c,#13,#08,#0c
	db #04,#2c,#05,#0e,#11,#2c,#0c,#04
	db #2c,#13,#0e,#2c,#06,#0e,#00,#0d
	db #03,#2c,#12,#0b,#04,#04,#0f,#24
	db #24,#24,#2c,#12,#04,#04,#2c,#18
	db #0e,#14,#2c,#12,#0e,#0e,#0d,#2c
	db #26,#2c,#2c,#2c,#2c,#2c,#2c,#2c
	db #2c,#2c,#27,#04,#0b,#08,#0e,#13
	db #2c,#08,#0d,#2c,#0d,#0e,#15,#04
	db #0c,#01,#04,#11,#2c,#1c,#1a,#1a
	db #1e,#27,#2c,#2c,#2c,#2c,#2c,#2c
	db #2c,#2c,#2c,#2c,#2c,#2c,#2c,#2c
	db #2c,#2c,#2c,#2c,#2c,#2c,#2c,#2c
	db #2c,#2c,#2c,#2c,#2c,#2c,#2c,#2c
	db #2c,#2c,#2c,#2c,#2c,#2c,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
;
.music_info
	db "Halloween Meeting - Improvized Contest - Part 5 (2004)(Benediction)(Eno)",0
	db "AYC",0

	read "music_end.asm"
