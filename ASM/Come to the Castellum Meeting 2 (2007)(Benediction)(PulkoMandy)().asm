; Music of Come to the Castellum Meeting 2 (2007)(Benediction)(PulkoMandy)()
; Ripped by Megachur the 02/12/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COMTTCM2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2014
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	db #00,#40,#1a,#01,#2e,#00,#01,#f0
	db #03,#01,#66,#04,#01,#3c,#06,#01
	db #37,#07,#01,#d8,#07,#01,#1d,#08
	db #01,#69,#08,#01,#fc,#0a,#01,#2c
	db #0d,#01,#a5,#0d,#01,#1b,#0e,#01
	db #7e,#13,#01,#b6,#13,#ff,#ff,#ff
	db #ff,#ff,#ff,#00,#ab,#fe,#00,#59
	db #9f,#03,#22,#fa,#65,#84,#fa,#6c
	db #9e,#03,#ab,#f2,#d4,#03,#bb,#e3
	db #e6,#fa,#29,#c2,#fa,#30,#f9,#29
	db #75,#34,#fa,#3e,#f9,#dc,#c1,#6c
	db #ac,#fa,#8b,#91,#fa,#92,#77,#81
	db #fa,#99,#f9,#92,#f9,#8b,#22,#fa
	db #ae,#f9,#3e,#f9,#4c,#ff,#f9,#a7
	db #dd,#c9,#f2,#30,#f9,#ed,#f9,#01
	db #f2,#a0,#f2,#e6,#f2,#10,#ef,#f9
	db #09,#eb,#1e,#d6,#4e,#73,#fa,#79
	db #f2,#99,#f9,#80,#eb,#79,#f6,#dd
	db #a9,#f9,#9c,#eb,#d3,#f9,#95,#61
	db #fa,#f0,#f9,#e9,#9a,#ea,#fa,#fe
	db #e4,#17,#d6,#20,#e6,#de,#4b,#22
	db #fa,#6e,#34,#bf,#fa,#75,#84,#fa
	db #7c,#d6,#21,#f9,#0c,#f9,#67,#f9
	db #ad,#f9,#c1,#fd,#fc,#c9,#fd,#cc
	db #eb,#9f,#f2,#d0,#f9,#c9,#c1,#0c
	db #73,#fa,#39,#7f,#81,#fa,#40,#f9
	db #f3,#f9,#40,#eb,#39,#dd,#69,#f9
	db #5c,#eb,#93,#b7,#f9,#55,#61,#fa
	db #b0,#f9,#a9,#9a,#fa,#be,#e4,#d7
	db #d6,#e0,#55,#e6,#de,#0b,#22,#fa
	db #2e,#34,#fa,#35,#84,#fa,#3c,#ff
	db #f2,#fd,#f9,#cc,#f2,#7f,#eb,#cc
	db #f2,#58,#eb,#4a,#eb,#c5,#f9,#97
	db #55,#81,#fa,#ba,#73,#fa,#c1,#61
	db #fa,#c8,#48,#f3,#cf,#7d,#56,#fa
	db #dd,#f2,#c8,#f9,#ac,#f2,#dd,#f9
	db #c1,#7a,#fa,#0e,#ff,#f9,#ba,#eb
	db #5f,#f2,#1c,#f2,#eb,#f2,#b3,#f9
	db #0e,#f9,#07,#f9,#46,#df,#eb,#15
	db #f9,#77,#9a,#fa,#8c,#f9,#69,#cf
	db #99,#f9,#85,#f2,#d1,#ff,#f2,#c4
	db #f9,#e0,#f2,#23,#f2,#02,#f2,#7e
	db #f2,#77,#e4,#bd,#eb,#0a,#d5,#eb
	db #ee,#f9,#57,#81,#fa,#7a,#73,#fa
	db #81,#61,#fa,#88,#5f,#48,#f3,#8f
	db #56,#fa,#9d,#f2,#88,#f9,#6c,#f2
	db #9d,#f9,#81,#7f,#7a,#fa,#ce,#f9
	db #7a,#eb,#1f,#f2,#dc,#f2,#ab,#f2
	db #73,#f9,#ce,#f7,#f9,#c7,#f9,#06
	db #eb,#d5,#f9,#37,#9a,#fa,#4c,#f9
	db #29,#cf,#59,#ff,#f9,#45,#f2,#91
	db #f2,#84,#f9,#a0,#f2,#e3,#9e,#c2
	db #f2,#37,#97,#bc,#bf,#f9,#9b,#81
	db #e5,#a3,#f9,#25,#f9,#c5,#f9,#9c
	db #f9,#2c,#f2,#da,#5b,#73,#fa,#e9
	db #61,#fa,#f0,#f9,#e9,#9a,#fa,#fe
	db #f2,#cd,#aa,#c8,#6b,#22,#ec,#4b
	db #03,#ec,#60,#f4,#fa,#75,#e6,#ee
	db #fa,#7c,#c8,#13,#d6,#ba,#91,#fa
	db #e5,#c1,#0c,#c8,#2a,#81,#fd,#e5
	db #63,#f9,#e5,#f9,#85,#f9,#5c,#f9
	db #ec,#f2,#9a,#73,#fa,#a9,#6e,#61
	db #fa,#b0,#f9,#a9,#9a,#fa,#be,#f2
	db #8d,#c8,#2b,#22,#ab,#ec,#0b,#03
	db #ec,#20,#f4,#fa,#35,#e6,#fa,#3c
	db #f2,#fd,#ef,#f9,#cc,#eb,#7f,#f2
	db #71,#7a,#fa,#7b,#f9,#b7,#f9,#74
	db #f9,#5f,#fb,#f2,#89,#f2,#4a,#f9
	db #3c,#f9,#2e,#f9,#19,#59,#fa,#c8
	db #f2,#19,#bf,#eb,#35,#56,#fa,#f2
	db #f2,#a5,#f2,#66,#eb,#82,#dd,#29
	db #f2,#6d,#ed,#f9,#5a,#f9,#f2,#f9
	db #15,#61,#fa,#70,#f9,#69,#9a,#fa
	db #7e,#f5,#eb,#f9,#cf,#99,#f9,#e4
	db #e4,#d1,#22,#fa,#ee,#34,#fa,#f5
	db #7e,#84,#fa,#fc,#f2,#bd,#f9,#8c
	db #f2,#3f,#f9,#0a,#f2,#54,#7a,#fe
	db #fa,#3b,#f9,#77,#f9,#34,#f9,#1f
	db #f2,#49,#f2,#0a,#f9,#e7,#03,#dd
	db #fa,#7a,#f9,#ee,#59,#fa,#88,#f9
	db #81,#f9,#7a,#f4,#fa,#9d,#df,#f9
	db #73,#f9,#65,#56,#fa,#b2,#f2,#65
	db #f2,#26,#eb,#42,#dd,#e9,#f6,#f2
	db #2d,#f9,#1a,#f9,#b2,#f9,#d5,#61
	db #fa,#30,#f9,#29,#9a,#fa,#fa,#3e
	db #eb,#b9,#cf,#59,#f9,#a4,#e4,#91
	db #22,#fa,#ae,#34,#bf,#fa,#b5,#84
	db #fa,#bc,#d6,#61,#f9,#4c,#f9,#a7
	db #f9,#ed,#f9,#01,#fd,#fc,#09,#fd
	db #0c,#eb,#df,#f2,#10,#f9,#09,#c1
	db #4c,#73,#fa,#79,#7f,#81,#fa,#80
	db #f9,#33,#f9,#80,#eb,#79,#dd,#a9
	db #f9,#9c,#eb,#d3,#b7,#f9,#95,#61
	db #fa,#f0,#f9,#e9,#9a,#fa,#fe,#e4
	db #17,#d6,#20,#55,#e6,#de,#4b,#22
	db #fa,#6e,#34,#fa,#75,#84,#fa,#7c
	db #ff,#d6,#21,#f9,#0c,#f9,#67,#f9
	db #ad,#f9,#c1,#fc,#c9,#fd,#cc,#eb
	db #9f,#eb,#f2,#d0,#f9,#c9,#c1,#0c
	db #73,#fa,#39,#81,#fa,#40,#f9,#f3
	db #fd,#f9,#40,#eb,#39,#dd,#69,#f9
	db #5c,#eb,#93,#f9,#55,#61,#fa,#b0
	db #ba,#f9,#a9,#9a,#fa,#be,#e4,#d7
	db #d6,#e0,#e6,#de,#0b,#22,#ae,#fa
	db #2e,#34,#fa,#35,#84,#fa,#3c,#c8
	db #d3,#c8,#7a,#56,#f5,#f3,#b3,#dd
	db #ac,#c1,#ac,#c8,#22,#81,#c9,#5b
	db #73,#fa,#93,#6d,#7a,#fa,#9a,#f9
	db #8c,#91,#fa,#a8,#f2,#a1,#c2,#fa
	db #bd,#55,#e6,#fa,#c4,#f4,#fa,#cb
	db #03,#fa,#d2,#34,#fa,#d9,#7e,#22
	db #fa,#e0,#f2,#cb,#f9,#c4,#f9,#bd
	db #c1,#1c,#cf,#41,#56,#f5,#f3,#73
	db #dd,#6c,#c1,#6c,#c8,#e2,#81,#c9
	db #1b,#73,#fa,#53,#6d,#7a,#fa,#5a
	db #f9,#4c,#91,#fa,#68,#f2,#61,#c2
	db #fa,#7d,#55,#e6,#fa,#84,#f4,#fa
	db #8b,#03,#fa,#92,#34,#fa,#99,#7b
	db #22,#fa,#a0,#f2,#8b,#f9,#84,#f9
	db #7d,#59,#59,#c3,#f9,#a0,#77,#84
	db #fa,#72,#eb,#5d,#f9,#8d,#12,#f3
	db #95,#f9,#ae,#dd,#a9,#fd,#f9,#8e
	db #f9,#80,#f9,#72,#cf,#e1,#a8,#13
	db #40,#6a,#22,#fa,#2b,#75,#84,#fa
	db #32,#eb,#1d,#f9,#4d,#12,#f3,#55
	db #03,#d7,#63,#fc,#f9,#4e,#f9,#40
	db #f9,#32,#cf,#a1,#a8,#d3,#eb,#2a
	db #00,#b7,#fe,#00,#01,#01,#03,#da
	db #02,#00,#ec,#29,#9e,#dc,#dd,#30
	db #ee,#dd,#8b,#01,#c3,#77,#e4,#01
	db #ec,#6e,#15,#83,#40,#6d,#01,#fe
	db #ec,#2e,#15,#43,#01,#43,#01,#2d
	db #01,#2c,#01,#2b,#df,#29,#01,#ef
	db #d7,#4b,#2a,#75,#40,#4a,#01,#d7
	db #0b,#58,#86,#7b,#35,#74,#61,#7b
	db #01,#ec,#ee,#74,#77,#7b,#f5,#66
	db #13,#01,#ec,#ae,#15,#c3,#bb,#40
	db #ad,#01,#ec,#6e,#15,#83,#40,#6d
	db #01,#ec,#2e,#15,#43,#bd,#5c,#2d
	db #01,#ec,#d2,#f2,#cb,#23,#f5,#40
	db #d1,#01,#ec,#92,#fc,#f2,#8b,#dd
	db #84,#01,#c3,#01,#d7,#01,#d6,#95
	db #d4,#00,#91,#fe,#00,#59,#b3,#f4
	db #04,#39,#56,#73,#fc,#11,#c8,#dd
	db #03,#58,#03,#03,#06,#f4,#e4,#56
	db #81,#ac,#c8,#fc,#f1,#dd,#e3,#e6
	db #cd,#f4,#1c,#40,#61,#81,#fc,#fc
	db #29,#dd,#1b,#97,#73,#f9,#3e,#97
	db #53,#89,#f4,#03,#06,#8c,#f4,#a4
	db #56,#81,#ac,#fc,#b1,#dd,#a3,#e6
	db #cd,#8f,#f4,#dc,#40,#61,#81,#fc
	db #e9,#dd,#db,#97,#33,#f9,#fe,#c8
	db #97,#13,#89,#b4,#03,#06,#f4,#64
	db #56,#81,#ac,#c8,#fc,#71,#dd,#63
	db #e6,#cd,#f4,#9c,#40,#61,#81,#fc
	db #fc,#a9,#dd,#9b,#97,#f3,#f9,#be
	db #97,#d3,#89,#74,#03,#06,#8c,#f4
	db #24,#56,#81,#ac,#fc,#31,#dd,#23
	db #e6,#cd,#8f,#f4,#5c,#40,#61,#81
	db #fc,#69,#dd,#5b,#97,#b3,#f9,#7e
	db #c8,#97,#93,#89,#34,#03,#06,#f4
	db #e4,#56,#81,#ac,#c8,#fc,#f1,#dd
	db #e3,#e6,#cd,#f4,#1c,#40,#61,#81
	db #fc,#fc,#29,#dd,#1b,#97,#73,#f9
	db #3e,#97,#53,#89,#f4,#03,#06,#8c
	db #f4,#a4,#56,#81,#ac,#fc,#b1,#dd
	db #a3,#e6,#cd,#8f,#f4,#dc,#40,#61
	db #81,#fc,#e9,#dd,#db,#97,#33,#f9
	db #fe,#c8,#97,#13,#89,#b4,#03,#06
	db #f4,#64,#56,#81,#ac,#c8,#fc,#71
	db #dd,#63,#e6,#cd,#f4,#9c,#40,#61
	db #81,#fc,#fc,#a9,#dd,#9b,#97,#f3
	db #f9,#be,#97,#d3,#89,#74,#03,#06
	db #8c,#f4,#24,#56,#81,#ac,#fc,#31
	db #dd,#23,#e6,#cd,#8f,#f4,#5c,#40
	db #61,#81,#fc,#69,#dd,#5b,#97,#b3
	db #f9,#7e,#c8,#97,#93,#89,#34,#03
	db #06,#f4,#e4,#56,#81,#ac,#c8,#fc
	db #f1,#dd,#e3,#e6,#cd,#f4,#1c,#40
	db #61,#81,#fc,#fc,#29,#dd,#1b,#97
	db #73,#f9,#3e,#97,#53,#89,#f4,#03
	db #06,#8c,#f4,#a4,#56,#81,#ac,#fc
	db #b1,#dd,#a3,#e6,#cd,#8f,#f4,#dc
	db #40,#61,#81,#fc,#e9,#dd,#db,#97
	db #33,#f9,#fe,#c8,#97,#13,#89,#b4
	db #03,#06,#f4,#64,#56,#81,#ac,#c8
	db #fc,#71,#dd,#63,#e6,#cd,#f4,#9c
	db #40,#61,#81,#fc,#fc,#a9,#dd,#9b
	db #97,#f3,#f9,#be,#97,#d3,#89,#74
	db #03,#06,#8c,#f4,#24,#56,#81,#ac
	db #fc,#31,#dd,#23,#e6,#cd,#8f,#f4
	db #5c,#40,#61,#81,#fc,#69,#dd,#5b
	db #97,#b3,#f9,#7e,#c8,#97,#93,#89
	db #34,#03,#06,#f4,#e4,#56,#81,#ac
	db #c8,#fc,#f1,#dd,#e3,#e6,#cd,#f4
	db #1c,#40,#61,#81,#fc,#fc,#29,#dd
	db #1b,#97,#73,#f9,#3e,#97,#53,#89
	db #f4,#03,#06,#8c,#f4,#a4,#56,#81
	db #ac,#fc,#b1,#dd,#a3,#e6,#cd,#8f
	db #f4,#dc,#40,#61,#81,#fc,#e9,#dd
	db #db,#97,#33,#f9,#fe,#c0,#01,#82
	db #42,#81,#00,#9f,#fe,#00,#01,#02
	db #f4,#04,#fd,#00,#fc,#13,#dd,#03
	db #20,#03,#ff,#fe,#0c,#f4,#1c,#f9
	db #06,#dd,#1b,#97,#ab,#d5,#f1,#bb
	db #77,#51,#f4,#ff,#fe,#cc,#f4,#dc
	db #f9,#c6,#dd,#db,#97,#6b,#d5,#b1
	db #bb,#37,#51,#b4,#ff,#fe,#8c,#f4
	db #9c,#f9,#86,#dd,#9b,#97,#2b,#d5
	db #71,#bb,#f7,#51,#74,#ff,#fe,#4c
	db #f4,#5c,#f9,#46,#dd,#5b,#97,#eb
	db #d5,#31,#bb,#b7,#51,#34,#ff,#fe
	db #0c,#f4,#1c,#f9,#06,#dd,#1b,#97
	db #ab,#d5,#f1,#bb,#77,#51,#f4,#ff
	db #fe,#cc,#f4,#dc,#f9,#c6,#dd,#db
	db #97,#6b,#d5,#b1,#bb,#37,#51,#b4
	db #ff,#fe,#8c,#f4,#9c,#f9,#86,#dd
	db #9b,#97,#2b,#d5,#71,#bb,#f7,#51
	db #74,#ff,#fe,#4c,#f4,#5c,#f9,#46
	db #dd,#5b,#97,#eb,#d5,#31,#bb,#b7
	db #51,#34,#ff,#fe,#0c,#f4,#1c,#f9
	db #06,#dd,#1b,#97,#ab,#d5,#f1,#bb
	db #77,#51,#f4,#ff,#fe,#cc,#f4,#dc
	db #f9,#c6,#dd,#db,#97,#6b,#d5,#b1
	db #bb,#37,#51,#b4,#ff,#fe,#8c,#f4
	db #9c,#f9,#86,#dd,#9b,#97,#2b,#d5
	db #71,#bb,#f7,#51,#74,#ff,#fe,#4c
	db #f4,#5c,#f9,#46,#dd,#5b,#97,#eb
	db #d5,#31,#bb,#b7,#51,#34,#ff,#fe
	db #0c,#f4,#1c,#f9,#06,#dd,#1b,#97
	db #ab,#d5,#f1,#bb,#77,#51,#f4,#ff
	db #fe,#cc,#f4,#dc,#f9,#c6,#dd,#db
	db #97,#6b,#f8,#fe,#01,#7c,#43,#83
	db #00,#88,#fe,#00,#56,#59,#ac,#e7
	db #03,#d9,#f1,#08,#00,#20,#37,#4f
	db #66,#7e,#95,#ad,#c4,#18,#dc,#f3
	db #0b,#f2,#0f,#66,#03,#5b,#6e,#b7
	db #e3,#f5,#d5,#2e,#03,#20,#7d,#5b
	db #6e,#b7,#f5,#95,#2e,#c3,#8e,#20
	db #3d,#5b,#6e,#b7,#f5,#55,#2e,#83
	db #20,#fd,#5b,#38,#6e,#b7,#f5,#15
	db #2e,#43,#20,#bd,#5b,#6e,#b7,#e3
	db #f5,#d5,#2e,#03,#20,#7d,#5b,#6e
	db #b7,#f5,#95,#2e,#c3,#8e,#20,#3d
	db #5b,#6e,#b7,#f5,#55,#2e,#83,#20
	db #fd,#5b,#38,#6e,#b7,#f5,#15,#2e
	db #43,#20,#bd,#5b,#6e,#b7,#e3,#f5
	db #d5,#2e,#03,#20,#7d,#5b,#6e,#b7
	db #f5,#95,#2e,#c3,#8e,#20,#3d,#5b
	db #6e,#b7,#f5,#55,#2e,#83,#20,#fd
	db #5b,#38,#6e,#b7,#f5,#15,#2e,#43
	db #20,#bd,#5b,#6e,#b7,#fe,#f5,#d5
	db #2e,#03,#e4,#8b,#01,#b6,#4d,#cd
	db #01,#82,#42,#81,#00,#bb,#fd,#00
	db #01,#e6,#02,#fd,#1a,#f6,#21,#02
	db #f1,#0f,#01,#04,#ff,#01,#5b,#01
	db #5a,#01,#59,#01,#58,#01,#57,#01
	db #56,#01,#55,#01,#54,#ff,#01,#53
	db #01,#52,#01,#51,#01,#50,#01,#4f
	db #01,#4e,#01,#4d,#01,#4c,#ff,#01
	db #4b,#01,#4a,#01,#49,#01,#48,#01
	db #47,#62,#ee,#01,#b5,#3f,#c0,#c0
	db #01,#82,#43,#83,#00,#80,#e2,#00
	db #07,#09,#09,#08,#07,#06,#05,#01
	db #04,#03,#02,#01,#00,#1f,#1e,#e1
	db #00,#ff,#01,#14,#01,#6b,#01,#6a
	db #01,#69,#01,#68,#01,#67,#01,#66
	db #01,#65,#ff,#01,#64,#01,#63,#01
	db #62,#01,#61,#01,#60,#01,#5f,#01
	db #5e,#01,#5d,#ff,#01,#5c,#01,#5b
	db #01,#5a,#01,#59,#01,#58,#01,#57
	db #57,#fe,#01,#b5,#e0,#01,#de,#01
	db #dd,#9c,#dc,#00,#9b,#fe,#00,#29
	db #39,#ed,#04,#f9,#03,#19,#f3,#1f
	db #f2,#03,#bf,#0e,#03,#38,#fe,#2d
	db #fc,#1b,#fd,#2d,#ee,#ff,#fd,#34
	db #f5,#29,#ef,#c8,#e7,#f6,#49,#ee
	db #29,#18,#fe,#ab,#f9,#a7,#c4,#45
	db #ef,#96,#ff,#f9,#01,#f2,#f4,#fd
	db #b2,#fc,#19,#f2,#ae,#f9,#2b,#c4
	db #53,#f2,#6e,#df,#a9,#9d,#f9,#d3
	db #28,#f6,#d1,#ef,#06,#b6,#87,#e4
	db #61,#eb,#25,#ff,#be,#92,#f2,#e9
	db #eb,#e2,#fd,#72,#fc,#d9,#f2,#6e
	db #f9,#eb,#b6,#13,#f7,#f6,#cd,#f9
	db #de,#ba,#6e,#f9,#93,#28,#f6,#91
	db #ef,#c6,#b6,#47,#ff,#e4,#21,#eb
	db #e5,#dd,#c2,#f6,#ad,#fd,#32,#fc
	db #61,#f2,#2e,#f9,#73,#ff,#e4,#43
	db #e0,#27,#f6,#a9,#b6,#89,#ef,#63
	db #ee,#3c,#90,#f6,#fd,#9d,#57,#30
	db #fa,#a1,#20,#fa,#a2,#10,#f3,#af
	db #f9,#a8,#f9,#c3,#ff,#f2,#93,#c8
	db #69,#f2,#d9,#fd,#f2,#fc,#21,#f2
	db #ee,#f9,#33,#e0,#cb,#fe,#f9,#5a
	db #eb,#f2,#f6,#69,#b6,#49,#dd,#eb
	db #90,#b6,#fd,#5d,#30,#af,#fa,#61
	db #20,#fa,#62,#10,#f3,#6f,#f9,#68
	db #f9,#83,#f2,#53,#ff,#c8,#29,#f9
	db #d0,#f9,#c3,#fc,#ae,#f6,#e2,#f2
	db #c3,#54,#c3,#fd,#c0,#db,#f9,#a9
	db #f9,#bc,#28,#fa,#ab,#fc,#91,#18
	db #f7,#c3,#f9,#a3,#ff,#f2,#b1,#f2
	db #aa,#f9,#cd,#ee,#87,#f2,#e6,#b7
	db #6f,#f9,#4b,#f9,#c6,#fd,#f9,#bf
	db #b6,#05,#58,#87,#fd,#80,#f9,#69
	db #f9,#7c,#28,#fa,#6b,#bf,#fc,#51
	db #18,#f7,#83,#f9,#63,#f2,#71,#f2
	db #6a,#f9,#8d,#ee,#47,#ff,#f2,#a6
	db #b7,#2f,#f9,#0b,#f9,#86,#f9,#7f
	db #ee,#c5,#d3,#0f,#f9,#73,#ff,#f2
	db #35,#ee,#a9,#e1,#2b,#c4,#82,#f9
	db #f5,#d6,#c5,#ef,#26,#f9,#23,#ef
	db #fc,#0e,#f6,#42,#f2,#6d,#28,#fa
	db #55,#e7,#f2,#f9,#7a,#c1,#12,#ff
	db #ef,#9e,#e0,#9a,#eb,#82,#f6,#51
	db #f2,#fc,#fd,#f2,#fc,#21,#f2,#ee
	db #ff,#f9,#33,#f2,#f5,#ee,#69,#ef
	db #23,#f2,#49,#c4,#42,#f9,#b5,#d6
	db #85,#fb,#ef,#e6,#f9,#e3,#fc,#ce
	db #f6,#02,#f2,#2d,#28,#fa,#15,#e7
	db #b2,#ff,#f9,#3a,#c1,#d2,#ef,#5e
	db #e0,#5a,#be,#d2,#f2,#29,#f9,#01
	db #f2,#f4,#ff,#fd,#b2,#fc,#19,#f2
	db #ae,#f9,#2b,#b6,#53,#f6,#0d,#f9
	db #1e,#ba,#ae,#bf,#f9,#d3,#28,#f6
	db #d1,#ef,#06,#b6,#87,#e4,#61,#eb
	db #25,#be,#92,#ff,#f2,#e9,#eb,#e2
	db #fd,#72,#fc,#d9,#f2,#6e,#f9,#eb
	db #b6,#13,#f6,#cd,#ef,#f9,#de,#ba
	db #6e,#f9,#93,#28,#f6,#91,#ef,#c6
	db #b6,#47,#e4,#21,#ff,#eb,#e5,#e4
	db #c2,#f9,#39,#e8,#1d,#f2,#9b,#f2
	db #6d,#f2,#74,#fd,#6a,#ff,#f5,#99
	db #f2,#7b,#f9,#35,#f9,#b9,#f5,#3c
	db #f6,#94,#e7,#2e,#c8,#b7,#ff,#ef
	db #26,#ee,#58,#fd,#49,#f2,#23,#c4
	db #23,#f6,#19,#f2,#f9,#f9,#0e,#ff
	db #f5,#7e,#ef,#9e,#ee,#9a,#f9,#74
	db #dd,#0b,#f9,#f9,#eb,#6d,#fd,#f2
	db #7f,#28,#fd,#0e,#f6,#30,#f2,#2d
	db #f2,#34,#fd,#2a,#f5,#59,#f2,#3b
	db #ff,#f9,#f5,#f9,#79,#f2,#c4,#f9
	db #5e,#e7,#ee,#c8,#77,#ef,#e6,#ee
	db #18,#ff,#fd,#09,#f2,#e3,#c4,#e3
	db #f6,#d9,#f2,#b9,#f9,#ce,#f5,#3e
	db #ef,#5e,#eb,#ee,#5a,#f9,#34,#da
	db #cb,#30,#fa,#d1,#20,#f9,#d1,#f3
	db #df,#fe,#f2,#d8,#dd,#d8,#b3,#e6
	db #f2,#c3,#f9,#78,#dd,#6b,#cb,#6b
	db #38,#ff,#fe,#d8,#c4,#6b,#fd,#d8
	db #f9,#d4,#f2,#fe,#e4,#4f,#f2,#3d
	db #d6,#44,#5d,#09,#f3,#83,#00,#67
	db #91,#f2,#83,#a1,#38,#08,#fe,#98
	db #f0,#bd,#5c,#ef,#98,#c4,#ef,#eb
	db #ef,#00,#b1,#fe,#00,#10,#01,#03
	db #d6,#02,#08,#08,#07,#f5,#29,#f0
	db #d6,#1f,#c8,#03,#d6,#96,#c5,#65
	db #0a,#0a,#08,#06,#3c,#05,#03,#d1
	db #f3,#ba,#36,#a9,#9d,#f9,#2c,#07
	db #06,#01,#09,#09,#07,#05,#04,#02
	db #06,#fe,#d7,#bf,#fe,#d1,#06,#a8
	db #79,#ba,#4c,#c5,#48,#f9,#d4,#d2
	db #b4,#a5,#2c,#c0,#be,#72,#f9,#ec
	db #07,#06,#09,#09,#07,#05,#1b,#04
	db #02,#06,#fe,#97,#fe,#91,#06,#a8
	db #39,#ba,#0c,#ff,#e8,#24,#f9,#94
	db #e7,#51,#e4,#24,#e4,#2b,#dd,#bb
	db #cf,#a2,#ac,#b7,#de,#c1,#27,#fd
	db #9d,#00,#d7,#a1,#f2,#93,#c8,#69
	db #f2,#f5,#0a,#07,#0a,#08,#06,#05
	db #03,#f1,#f4,#f5,#1f,#e4,#cf,#fb
	db #c1,#5f,#cf,#62,#ac,#77,#c1,#e7
	db #fd,#5d,#00,#d7,#61,#f2,#53,#e0
	db #c8,#29,#2a,#d0,#fd,#c0,#0a,#0a
	db #08,#06,#05,#70,#03,#f8,#bb,#e4
	db #aa,#f2,#bf,#07,#06,#09,#09,#1f
	db #07,#05,#04,#f2,#cd,#eb,#95,#e7
	db #f0,#c5,#7d,#e4,#4b,#e0,#bd,#0c
	db #58,#be,#fd,#80,#0a,#0a,#08,#06
	db #05,#70,#03,#f8,#7b,#e4,#6a,#f2
	db #7f,#07,#06,#09,#09,#1f,#07,#05
	db #04,#f2,#8d,#eb,#55,#e7,#b0,#c5
	db #3d,#e4,#0b,#fe,#dd,#19,#c8,#12
	db #a1,#90,#f6,#08,#d2,#cf,#dd,#2d
	db #f6,#71,#07,#03,#06,#09,#09,#07
	db #05,#04,#e7,#f2,#e4,#f6,#ff,#a5
	db #96,#e8,#0b,#f9,#54,#c8,#fc,#93
	db #42,#e1,#eb,#e7,#a4,#dd,#ed,#80
	db #f6,#31,#07,#06,#09,#09,#07,#05
	db #04,#ff,#e7,#b2,#e4,#b6,#a5,#56
	db #be,#d2,#f2,#ed,#f9,#14,#d2,#f4
	db #a5,#6c,#c0,#be,#b2,#f9,#2c,#07
	db #06,#09,#09,#07,#05,#1b,#04,#02
	db #06,#fe,#d7,#fe,#d1,#06,#a8,#79
	db #ba,#4c,#fc,#c5,#48,#f9,#d4,#d2
	db #b4,#a5,#2c,#be,#72,#f9,#ec,#07
	db #06,#01,#09,#09,#07,#05,#04,#02
	db #06,#fe,#97,#bc,#fe,#91,#06,#a8
	db #39,#ba,#0c,#f2,#2b,#d3,#7c,#04
	db #03,#38,#01,#05,#fe,#79,#fe,#73
	db #fe,#71,#02,#00,#04,#e3,#fe,#82
	db #fe,#7c,#fe,#7a,#01,#00,#03,#fe
	db #8b,#fe,#85,#8f,#fe,#83,#00,#00
	db #02,#fe,#94,#fe,#8e,#fe,#8c,#fe
	db #a6,#7f,#01,#fc,#95,#fd,#9d,#fe
	db #b0,#f2,#66,#f2,#35,#eb,#ba,#dd
	db #c1,#fe,#e0,#cf,#90,#26,#e8,#da
	db #ee,#1c,#ba,#97,#f2,#e4,#e8,#82
	db #0a,#00,#0a,#08,#06,#05,#03,#07
	db #07,#06,#01,#09,#09,#07,#05,#04
	db #02,#06,#fe,#30,#83,#fe,#2a,#06
	db #04,#03,#01,#05,#fe,#39,#fe,#33
	db #8e,#fe,#31,#02,#00,#04,#fe,#42
	db #fe,#3c,#fe,#3a,#01,#38,#00,#03
	db #fe,#4b,#fe,#45,#fe,#43,#00,#00
	db #02,#f7,#fe,#54,#fe,#4e,#fe,#4c
	db #fe,#66,#01,#fc,#55,#fd,#5d,#fe
	db #70,#ff,#f2,#26,#f2,#f5,#eb,#7a
	db #dd,#81,#e0,#8f,#90,#e6,#e8,#9a
	db #ee,#dc,#dc,#ba,#57,#f6,#c6,#00
	db #67,#d1,#f2,#c3,#a1,#78,#08,#08
	db #7f,#07,#bd,#9c,#ef,#d8,#c4,#2f
	db #e8,#6a,#9e,#21,#ac,#3d,#a1,#38
	db #1e,#08,#08,#07,#bd,#5c,#ef,#98
	db #c4,#ef,#eb,#ef,#00,#80,#fe,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#01
	db #0c,#0b,#0b,#0a,#0a,#09,#09,#fe
	db #0a,#8f,#fe,#0e,#08,#07,#07,#dd
	db #03,#01,#03,#7c,#02,#d8,#63,#ff
	db #48,#06,#20,#66,#d8,#23,#48,#c6
	db #20,#26,#d8,#e3,#48,#86,#20,#e6
	db #ff,#d8,#a3,#48,#46,#20,#a6,#d8
	db #63,#48,#06,#20,#66,#d8,#23,#48
	db #c6,#ff,#20,#26,#d8,#e3,#48,#86
	db #20,#e6,#d8,#a3,#48,#46,#20,#a6
	db #d8,#63,#ff,#48,#06,#20,#66,#d8
	db #23,#48,#c6,#20,#26,#d8,#e3,#48
	db #86,#20,#e6,#fe,#d8,#a3,#48,#46
	db #20,#a6,#d8,#63,#48,#06,#20,#66
	db #fb,#70,#00,#c0,#01,#83,#43,#83
	db #00,#80,#fe,#00,#0e,#0d,#0c,#0b
	db #0b,#04,#03,#82,#fe,#05,#0a,#09
	db #09,#02,#01,#fe,#0c,#08,#2c,#07
	db #07,#f7,#01,#0f,#fc,#18,#fc,#11
	db #06,#05,#bf,#fe,#1d,#02,#f2,#03
	db #01,#03,#01,#5a,#01,#59,#01,#58
	db #01,#57,#ff,#01,#56,#01,#55,#01
	db #54,#01,#53,#01,#52,#01,#51,#01
	db #50,#01,#4f,#ff,#01,#4e,#01,#4d
	db #01,#4c,#01,#4b,#01,#4a,#01,#49
	db #01,#48,#01,#47,#f6,#01,#46,#62
	db #ed,#f9,#99,#fc,#ae,#05,#fe,#c8
	db #fc,#b0,#03,#cf,#fe,#cf,#fd,#b2
	db #01,#01,#fe,#d6,#fe,#da,#fe,#dd
	db #01,#e1,#e0,#01,#e2,#01,#e1,#a0
	db #e0,#00,#8d,#fe,#00,#2a,#2a,#2b
	db #fb,#05,#a6,#03,#24,#fe,#65,#04
	db #26,#26,#28,#28,#30,#fc,#6c,#31
	db #31,#d3,#9e,#03,#f2,#cd,#20,#fc
	db #e3,#21,#21,#fb,#e3,#c6,#e7,#59
	db #1d,#fa,#29,#18,#fa,#30,#fd,#2d
	db #1e,#1e,#fe,#26,#cb,#fe,#68,#fd
	db #3f,#27,#27,#fa,#dd,#2b,#fb,#6c
	db #fe,#50,#ab,#c8,#ab,#15,#fa,#8b
	db #12,#fa,#92,#10,#fa,#99,#f9,#92
	db #be,#f9,#8b,#24,#fa,#ae,#fb,#3e
	db #fe,#b9,#f9,#4c,#fb,#a9,#16,#7f
	db #16,#fa,#a8,#e3,#c8,#f6,#30,#f5
	db #2c,#f9,#01,#f2,#a0,#f9,#16,#e4
	db #f9,#02,#f2,#10,#fd,#0d,#13,#13
	db #fe,#31,#17,#17,#ef,#f6,#20,#db
	db #c8,#f2,#63,#0e,#fa,#79,#f2,#99
	db #f9,#80,#f2,#79,#3e,#11,#11,#fa
	db #88,#de,#a3,#f9,#9c,#eb,#d3,#f9
	db #95,#0c,#fc,#fa,#f0,#f9,#e9,#fe
	db #36,#fb,#ff,#ed,#17,#cd,#46,#1c
	db #1c,#60,#1d,#fb,#4d,#e9,#4b,#1e
	db #1e,#20,#20,#24,#af,#fa,#6e,#26
	db #fa,#75,#30,#fa,#7c,#d6,#1b,#f9
	db #0c,#fa,#5d,#7f,#1d,#f9,#ad,#f9
	db #c1,#fe,#c9,#fb,#ca,#f9,#05,#ed
	db #05,#f7,#e9,#ca,#fd,#cd,#fc,#03
	db #17,#17,#c3,#0e,#0e,#fa,#39,#10
	db #f3,#fa,#40,#f9,#c9,#f9,#40,#f2
	db #39,#11,#11,#fa,#48,#de,#63,#ef
	db #f9,#5c,#eb,#93,#f9,#55,#0c,#fa
	db #b0,#f9,#a9,#fe,#f6,#fb,#bf,#c6
	db #ed,#d7,#cd,#06,#1c,#1c,#1d,#fb
	db #0d,#e9,#0b,#1e,#0a,#1e,#20,#20
	db #24,#fa,#2e,#26,#fa,#35,#30,#ff
	db #fa,#3c,#f2,#fb,#f9,#cc,#fa,#85
	db #f8,#5d,#f4,#cc,#f7,#71,#f2,#7b
	db #fd,#f2,#c5,#fd,#86,#f7,#c3,#f2
	db #ca,#fe,#b0,#f9,#5f,#10,#fa,#ba
	db #52,#0e,#fa,#c1,#0c,#fa,#c8,#09
	db #08,#fd,#d0,#07,#2f,#07,#09,#fa
	db #d6,#0b,#fa,#dd,#f8,#c8,#fa,#eb
	db #f9,#ac,#dc,#f2,#dd,#f9,#c1,#0f
	db #fa,#0e,#f9,#ba,#f9,#b3,#17,#17
	db #ff,#ed,#a7,#f9,#a5,#f2,#eb,#f0
	db #b3,#fb,#10,#f9,#07,#f9,#46,#f2
	db #15,#f9,#f6,#90,#fc,#87,#fe,#9a
	db #fb,#8d,#fb,#6b,#16,#16,#fa,#6a
	db #cf,#f9,#99,#dc,#a6,#12,#11,#fd
	db #cc,#fc,#73,#fb,#5e,#f9,#85,#ff
	db #f2,#46,#f9,#e0,#f9,#7e,#f4,#bf
	db #f7,#98,#f2,#7e,#f2,#77,#f2,#bd
	db #ff,#fe,#ce,#fa,#20,#fa,#3b,#f2
	db #ee,#fb,#89,#f7,#32,#f2,#26,#f9
	db #1f,#d4,#fc,#d0,#fd,#7d,#0e,#fa
	db #81,#0c,#fa,#88,#09,#08,#8b,#fd
	db #90,#07,#07,#09,#fa,#96,#0b,#fa
	db #9d,#f8,#88,#ff,#fa,#ab,#f9,#6c
	db #f2,#9d,#f9,#81,#fc,#d4,#fd,#d1
	db #f9,#7a,#f9,#73,#3f,#17,#17,#ed
	db #67,#f9,#65,#f2,#ab,#f0,#73,#fb
	db #d0,#f9,#c7,#fe,#f9,#06,#f2,#d5
	db #f6,#50,#fc,#47,#fe,#5a,#fb,#4d
	db #fb,#2b,#16,#73,#16,#fa,#2a,#f9
	db #59,#dc,#66,#12,#11,#fd,#8c,#fc
	db #33,#ff,#fb,#1e,#f9,#45,#f2,#06
	db #f9,#a0,#f9,#3e,#f4,#7f,#f7,#58
	db #ac,#c9,#ce,#fb,#49,#fe,#23,#17
	db #17,#f6,#b7,#a3,#c8,#f2,#8d,#10
	db #f6,#e5,#a3,#fd,#25,#f5,#c1,#fa
	db #9a,#15,#fb,#2e,#f0,#d8,#0e,#be
	db #fa,#e9,#0c,#fa,#f0,#fd,#ed,#fc
	db #bd,#fe,#28,#fd,#ff,#14,#6a,#14
	db #f2,#cd,#c8,#6b,#24,#ec,#4b,#20
	db #ec,#60,#1e,#bf,#fa,#75,#1d,#fa
	db #7c,#c8,#13,#d6,#b3,#fe,#fc,#fd
	db #fd,#fe,#e3,#37,#17,#17,#c3,#0e
	db #c8,#23,#10,#e5,#63,#fd,#e5,#f5
	db #81,#b5,#fa,#5a,#15,#fb,#ee,#f0
	db #98,#0e,#fa,#a9,#0c,#fa,#b0,#f3
	db #fd,#ad,#fc,#7d,#fe,#e8,#fd,#bf
	db #14,#14,#f2,#8d,#c8,#2b,#55,#24
	db #ec,#0b,#20,#ec,#20,#1e,#fa,#35
	db #1d,#fa,#3c,#f7,#f9,#c5,#f2,#c5
	db #eb,#7f,#f2,#71,#0f,#fa,#7b,#f9
	db #a9,#f9,#74,#fd,#f9,#5f,#f2,#89
	db #f2,#4a,#f9,#3c,#f9,#2e,#f9,#19
	db #2b,#fa,#c8,#d3,#f2,#19,#eb,#35
	db #0b,#fe,#f2,#0c,#0c,#fe,#87,#f2
	db #a5,#cf,#f2,#66,#f2,#82,#11,#11
	db #fa,#9f,#de,#23,#f2,#6d,#f9,#5a
	db #fd,#f9,#f2,#f9,#68,#fe,#65,#fb
	db #71,#fb,#19,#fe,#49,#13,#fa,#7e
	db #99,#ed,#f9,#16,#16,#fa,#86,#d5
	db #98,#1c,#1c,#fa,#e5,#82,#e9,#cb
	db #1e,#1e,#20,#20,#24,#fa,#ee,#26
	db #bf,#fa,#f5,#30,#fa,#fc,#f9,#85
	db #f2,#85,#fa,#45,#f8,#1d,#f9,#0a
	db #bf,#f2,#54,#0f,#fa,#3b,#f9,#69
	db #f9,#34,#f9,#1f,#f2,#49,#f2,#0a
	db #bb,#fa,#dd,#1d,#fe,#ec,#fb,#7b
	db #f9,#ee,#2b,#fa,#88,#f9,#81,#fa
	db #f9,#7a,#fe,#ea,#fb,#9e,#f9,#73
	db #f9,#65,#0b,#fe,#b2,#0c,#79,#0c
	db #fe,#47,#f2,#65,#f2,#26,#f2,#42
	db #11,#11,#fa,#5f,#ff,#de,#e3,#f2
	db #2d,#f9,#1a,#f9,#b2,#f9,#28,#fe
	db #25,#fb,#31,#fb,#d9,#b3,#fe,#09
	db #13,#fa,#3e,#ed,#b9,#16,#16,#fa
	db #46,#d5,#58,#30,#1c,#1c,#fa,#a5
	db #e9,#8b,#1e,#1e,#20,#20,#57,#24
	db #fa,#ae,#26,#fa,#b5,#30,#fa,#bc
	db #d6,#5b,#f9,#4c,#bf,#fa,#9d,#1d
	db #f9,#ed,#f9,#01,#fe,#3c,#fb,#0a
	db #f9,#45,#ed,#45,#e5,#f7,#29,#fd
	db #0d,#fc,#43,#17,#17,#c3,#4e,#0e
	db #fa,#79,#79,#10,#fa,#80,#f9,#09
	db #f9,#80,#f2,#79,#11,#11,#fa,#88
	db #f7,#de,#a3,#f9,#9c,#eb,#d3,#f9
	db #95,#0c,#fa,#f0,#f9,#e9,#fe,#36
	db #e3,#fb,#ff,#ed,#17,#cd,#46,#1c
	db #1c,#1d,#fb,#4d,#e9,#4b,#05,#1e
	db #1e,#20,#20,#24,#fa,#6e,#26,#fa
	db #75,#7b,#30,#fa,#7c,#d6,#1b,#f9
	db #0c,#fa,#5d,#1d,#f9,#ad,#f9,#c1
	db #fe,#fe,#c9,#fb,#ca,#f9,#05,#ed
	db #05,#f7,#e9,#fd,#cd,#fc,#03,#17
	db #57,#17,#c3,#0e,#0e,#fa,#39,#10
	db #fa,#40,#f9,#c9,#f9,#40,#9f,#f2
	db #39,#11,#11,#fa,#48,#de,#63,#f9
	db #5c,#eb,#93,#f9,#55,#7e,#0c,#fa
	db #b0,#f9,#a9,#fe,#f6,#fb,#bf,#ed
	db #d7,#cd,#06,#1c,#30,#1c,#1d,#fb
	db #0d,#e9,#0b,#1e,#1e,#20,#20,#57
	db #24,#fa,#2e,#26,#fa,#35,#30,#fa
	db #3c,#f3,#fb,#ea,#f2,#be,#b3,#65
	db #0b,#f3,#b3,#dd,#ac,#c1,#ac,#eb
	db #51,#e8,#30,#14,#a8,#fd,#50,#13
	db #fd,#54,#12,#fe,#58,#0f,#0f,#10
	db #de,#fb,#5d,#d0,#5b,#0e,#fa,#93
	db #fe,#8b,#fb,#9b,#fa,#8d,#10,#fa
	db #fd,#58,#fc,#aa,#f6,#a1,#fe,#56
	db #fe,#4e,#18,#fa,#bd,#1d,#aa,#fa
	db #c4,#1e,#fa,#cb,#20,#fa,#d2,#26
	db #fa,#d9,#24,#cf,#fe,#e0,#fe,#de
	db #28,#28,#f2,#cb,#f9,#c4,#f9,#bd
	db #f3,#43,#df,#ea,#3a,#b3,#25,#0b
	db #f3,#73,#dd,#6c,#c1,#6c,#eb,#11
	db #e8,#f0,#54,#14,#fd,#10,#13,#fd
	db #14,#12,#fe,#18,#0f,#0f,#6f,#10
	db #fb,#1d,#d0,#1b,#0e,#fa,#53,#fe
	db #4b,#fb,#5b,#fa,#4d,#7d,#10,#fd
	db #18,#fc,#6a,#f6,#61,#fe,#16,#fe
	db #0e,#18,#fa,#7d,#55,#1d,#fa,#84
	db #1e,#fa,#8b,#20,#fa,#92,#26,#fa
	db #99,#67,#24,#fe,#a0,#fe,#9e,#28
	db #28,#f2,#8b,#f9,#84,#f9,#7d,#1e
	db #2a,#2a,#2b,#fb,#c5,#f8,#c3,#68
	db #d2,#f9,#a0,#30,#9c,#fc,#72,#31
	db #31,#f2,#c3,#fd,#6b,#fe,#89,#25
	db #25,#c7,#fb,#87,#fe,#8b,#21,#21
	db #22,#fb,#97,#fa,#95,#fb,#b0,#ff
	db #fe,#9d,#fa,#af,#e3,#a8,#f9,#6b
	db #f9,#64,#f9,#72,#fb,#db,#d4,#df
	db #fa,#f2,#5d,#f2,#79,#ac,#2e,#9e
	db #21,#ba,#e4,#24,#fe,#2b,#26,#09
	db #26,#28,#28,#30,#fc,#32,#31,#31
	db #f2,#83,#cc,#fd,#2b,#fe,#49,#25
	db #25,#fb,#47,#fe,#4b,#21,#21,#6f
	db #22,#fb,#57,#fa,#55,#20,#fc,#63
	db #fe,#5d,#fb,#63,#e2,#67,#ff,#f9
	db #2b,#f9,#24,#f9,#32,#fb,#9b,#d4
	db #9f,#f2,#1d,#f2,#39,#af,#ee,#00
	db #ff,#01,#00,#01,#00,#01,#ff,#01
	db #fe,#01,#fd,#01,#fc,#01,#fb,#01
	db #fa,#ff,#01,#f9,#01,#f8,#01,#f7
	db #01,#f6,#01,#f5,#01,#f4,#01,#f3
	db #01,#f2,#ff,#01,#f1,#01,#f0,#01
	db #ef,#01,#ee,#01,#ed,#01,#ec,#01
	db #eb,#01,#ea,#e0,#01,#e9,#01,#e8
	db #a7,#e7,#ff,#bf,#fe,#00,#0c,#fd
	db #00,#a2,#06,#f9,#03,#f2,#65,#97
	db #79,#ba,#73,#ff,#eb,#65,#e4,#37
	db #9e,#f8,#cf,#4c,#e4,#b5,#c8,#f4
	db #97,#53,#d6,#56,#ff,#97,#64,#b3
	db #bf,#d6,#28,#eb,#7c,#c8,#b4,#c1
	db #13,#d6,#39,#d6,#16,#ff,#97,#24
	db #b3,#7f,#eb,#20,#dd,#4a,#c8,#a2
	db #20,#b3,#cf,#99,#f2,#93,#ff,#c8
	db #69,#cf,#fc,#c8,#d2,#20,#73,#cf
	db #59,#f2,#53,#9e,#29,#cf,#61,#ff
	db #97,#bc,#eb,#17,#d6,#9c,#eb,#33
	db #eb,#25,#e4,#f7,#ba,#72,#e4,#4b
	db #ff,#c1,#0c,#cf,#21,#97,#7c,#eb
	db #d7,#d6,#5c,#eb,#f3,#eb,#e5,#e4
	db #b7,#ff,#ba,#32,#e4,#0b,#dd,#19
	db #c8,#12,#6d,#90,#dd,#29,#eb,#23
	db #a5,#f2,#ff,#dd,#3f,#d6,#5b,#eb
	db #e0,#d6,#0a,#5f,#42,#dd,#e9,#eb
	db #e3,#a5,#b2,#ff,#dd,#ff,#d6,#1b
	db #d6,#68,#eb,#bc,#c8,#f4,#c1,#53
	db #d6,#79,#d6,#56,#ff,#97,#64,#b3
	db #bf,#d6,#28,#eb,#7c,#c8,#b4,#c1
	db #13,#d6,#39,#d6,#16,#ff,#97,#24
	db #97,#7f,#c8,#d3,#dd,#f6,#eb,#4a
	db #dd,#3c,#c8,#c1,#cf,#97,#ff,#c8
	db #82,#82,#93,#e4,#3f,#c1,#33,#f2
	db #26,#eb,#0a,#dd,#fc,#c8,#81,#ff
	db #cf,#57,#c8,#42,#90,#53,#5f,#c9
	db #e4,#b5,#d6,#79,#c8,#4f,#ba,#41
	db #ff,#ac,#2e,#9e,#21,#b3,#3d,#f2
	db #2b,#eb,#7c,#e4,#47,#c8,#0f,#ba
	db #01,#80,#af,#ee,#f0,#d7,#f0,#c1
	db #0f,#1c,#83,#0f,#0f,#f8,#d4,#f6
	db #67,#0f,#0f,#6e,#70,#dc,#f0,#f3
	db #f8,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#e3,#0f,#f0,#f0,#8f,#0f
	db #0f,#c3,#0f,#0f,#7c,#8f,#0f,#0f
	db #e3,#0f,#0f,#7c,#8f,#0f,#0f,#c3
	db #3c,#c3,#3c,#f0,#f0,#f0,#c3,#0f
	db #f0,#f0,#0f,#0f,#0f,#c3,#0f,#0f
	db #3c,#0f,#0f,#0f,#c3,#0f,#0f,#3c
	db #0f,#0f,#0f,#c3,#3c,#c3,#3c,#f0
	db #f0,#f0,#f0,#0f,#f0,#f0,#0f,#f0
	db #f0,#c3,#3c,#c3,#3c,#0f,#f0,#f0
	db #c3,#3c,#c3,#3c,#0f,#f0,#f0,#c3
	db #3c,#c3,#3c,#f0,#f0,#f0,#f0,#0f
	db #f0,#f0,#0f,#0f,#f0,#c3,#0f,#0f
	db #7c,#0f,#0f,#f0,#c3,#3c,#c3,#3c
	db #0f,#f0,#f0,#c3,#0f,#0f,#3c,#f0
	db #f0,#f0,#f0,#0f,#f0,#f0,#0f,#f0
	db #f0,#c3,#3c,#c3,#3c,#0f,#f0,#f0
	db #c3,#3c,#c3,#3c,#0f,#f0,#f0,#c3
	db #3c,#c3,#3c,#f0,#f0,#f0,#f0,#0f
	db #c3,#3c,#0f,#f0,#f0,#c3,#3c,#c3
	db #3c,#0f,#0f,#0f,#c3,#3c,#c3,#3c
	db #0f,#0f,#0f,#c3,#3c,#c3,#3c,#f0
	db #f0,#f0,#f0,#0f,#c3,#3c,#0f,#f0
	db #f0,#c3,#3c,#c3,#3c,#0f,#0f,#0f
	db #c3,#3c,#c3,#3c,#0f,#0f,#0f,#c3
	db #3c,#c3,#3c,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#8f,#0f,#1f,#f0,#f0,#8f,#0f
	db #0f,#e3,#0f,#0f,#7c,#8f,#0f,#0f
	db #c3,#3c,#f0,#f0,#0f,#f0,#8f,#0f
	db #0f,#c3,#3c,#c3,#3c,#0f,#0f,#0f
	db #f0,#f0,#0f,#0f,#0f,#c3,#0f,#0f
	db #3c,#0f,#0f,#0f,#c3,#3c,#f0,#f0
	db #0f,#f0,#0f,#0f,#0f,#c3,#3c,#c3
	db #3c,#f0,#f0,#0f,#f0,#f0,#0f,#f0
	db #f0,#c3,#3c,#c3,#3c,#0f,#f0,#f0
	db #c3,#3c,#f0,#f0,#0f,#f0,#0f,#f0
	db #f0,#c3,#3c,#c3,#3c,#8f,#0f,#1f
	db #f0,#f0,#0f,#0f,#f0,#c3,#3c,#c3
	db #3c,#0f,#c3,#0f,#c3,#3c,#f0,#f0
	db #0f,#f0,#8f,#0f,#1f,#c3,#0f,#0f
	db #3c,#0f,#f0,#f0,#f0,#f0,#0f,#f0
	db #f0,#c3,#3c,#c3,#3c,#0f,#f0,#0f
	db #c3,#3c,#f0,#f0,#0f,#f0,#f0,#f0
	db #0f,#c3,#3c,#c3,#3c,#0f,#0f,#0f
	db #c3,#3c,#0f,#0f,#0f,#c3,#3c,#c3
	db #3c,#0f,#0f,#0f,#c3,#0f,#0f,#3c
	db #0f,#f0,#0f,#0f,#0f,#c3,#3c,#c3
	db #3c,#0f,#0f,#0f,#c3,#3c,#0f,#0f
	db #0f,#c3,#3c,#c3,#3c,#0f,#0f,#0f
	db #c3,#0f,#0f,#3c,#0f,#f0,#0f,#0f
	db #0f,#c3,#3c,#c3,#3c,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#00,#e0,#00,#18,#03,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#38,#8f,#2f
	db #59,#38,#bb,#f0,#f0,#f6,#c3,#2f
	db #cf,#1f,#c7,#bc,#70,#e2,#90,#70
	db #f0,#f2,#f0,#f2,#f0,#f0,#06,#f0
	db #10,#94,#74,#30,#d1,#f8,#83,#78
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#fc
	db #07,#0f,#68,#28,#ff,#00,#70,#74
	db #c3,#0f,#0f,#1f,#87,#3c,#30,#d3
	db #b0,#b8,#f0,#f2,#f0,#e2,#f0,#f0
	db #17,#f0,#30,#9c,#30,#30,#d7,#f0
	db #c7,#70,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#bc,#07,#2f,#68,#39,#ee,#88
	db #60,#68,#8f,#88,#47,#1f,#c7,#3e
	db #70,#f3,#90,#f8,#f0,#f2,#f0,#f2
	db #30,#f0,#1f,#f0,#20,#98,#30,#cd
	db #be,#f0,#06,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#34,#07,#af,#6a,#59
	db #fe,#f0,#e3,#a3,#5c,#f0,#c1,#1f
	db #c5,#1e,#70,#d3,#b0,#f8,#f0,#b2
	db #f0,#f2,#70,#e0,#0f,#e0,#21,#30
	db #20,#0c,#fc,#e0,#1e,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#14,#8f,#0f
	db #28,#08,#b0,#f0,#66,#9f,#70,#f0
	db #f0,#8f,#d4,#0b,#70,#c2,#a0,#70
	db #f0,#82,#e0,#f2,#d8,#a3,#09,#60
	db #22,#b0,#60,#4f,#f8,#f1,#1c,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#14
	db #07,#0f,#68,#3c,#f0,#c0,#4d,#0c
	db #f0,#f0,#f0,#97,#d4,#a9,#38,#82
	db #a0,#70,#f0,#92,#f0,#f2,#60,#bf
	db #79,#60,#f6,#b0,#60,#9f,#f0,#41
	db #7c,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#14,#07,#0f,#08,#7d,#f0,#03
	db #03,#08,#f0,#f0,#f0,#c3,#b2,#b8
	db #5c,#82,#a0,#60,#70,#c6,#f0,#e2
	db #cf,#39,#e8,#68,#9c,#b0,#e0,#3e
	db #f0,#47,#78,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#14,#8f,#0f,#38,#7f
	db #e0,#ae,#9f,#22,#f0,#f0,#f0,#d1
	db #b6,#74,#16,#97,#a0,#60,#70,#d7
	db #40,#cf,#1f,#f1,#f8,#bf,#38,#70
	db #c1,#7c,#f0,#47,#70,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#14,#07,#8f
	db #38,#bf,#31,#ef,#1e,#66,#f0,#f0
	db #f0,#c1,#d6,#74,#e7,#1f,#a0,#60
	db #f0,#07,#0f,#1f,#fc,#e1,#f0,#87
	db #70,#f0,#c3,#38,#f0,#8e,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#36
	db #8f,#0f,#7c,#8f,#99,#ef,#0c,#54
	db #f0,#f0,#f0,#e1,#82,#f4,#31,#0f
	db #a8,#60,#e0,#8f,#6e,#74,#b0,#c1
	db #f0,#d0,#f0,#f0,#93,#70,#f1,#3e
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#36,#87,#0f,#7c,#07,#4e,#ab
	db #28,#99,#f0,#f0,#f0,#e1,#82,#b4
	db #b0,#87,#2f,#88,#a3,#1f,#f0,#f4
	db #30,#d1,#f0,#f0,#f0,#f0,#96,#f0
	db #e3,#1c,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#0e,#8f,#0f,#7c,#07
	db #0f,#47,#79,#10,#f0,#f0,#f0,#d1
	db #82,#d4,#f4,#e6,#8f,#1f,#ce,#06
	db #f0,#b0,#70,#f3,#f0,#f0,#f0,#f0
	db #bc,#f0,#83,#38,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#d1,#8a,#4f,#0f
	db #1c,#87,#7f,#07,#51,#20,#70,#f0
	db #d0,#e1,#93,#d4,#30,#d4,#c0,#66
	db #f0,#b6,#f0,#30,#f8,#f3,#f0,#f0
	db #f0,#f1,#b8,#f0,#07,#f8,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#e0,#82,#f0
	db #4f,#0f,#0f,#8f,#6e,#0f,#a2,#ea
	db #b0,#f0,#f0,#f1,#13,#d4,#b0,#d4
	db #f0,#f0,#f0,#94,#f0,#20,#f8,#e2
	db #f0,#f0,#f0,#33,#f0,#e0,#1f,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#33
	db #4c,#33,#0f,#0f,#0f,#0f,#0c,#1f
	db #d1,#32,#88,#e0,#70,#f1,#53,#d4
	db #b0,#d4,#f0,#f0,#f0,#94,#f0,#a8
	db #70,#82,#f0,#f0,#f0,#dc,#f0,#c1
	db #0e,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #d1,#dc,#63,#0f,#0f,#7f,#57,#67
	db #3f,#1f,#c0,#f5,#62,#32,#f0,#f1
	db #53,#d4,#f0,#f4,#f0,#f0,#f0,#d4
	db #f0,#e8,#70,#92,#f0,#f0,#f1,#38
	db #f0,#a3,#1c,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#c0,#9f,#d1,#ff,#11,#10,#f0
	db #e2,#e0,#07,#0e,#f0,#55,#b2,#98
	db #f0,#e0,#db,#d4,#f0,#d4,#f0,#f0
	db #f0,#74,#e0,#f9,#f0,#f6,#f0,#f0
	db #c1,#70,#30,#03,#38,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#c0,#cf,#7c,#d1,#70,#f0
	db #f0,#f0,#e0,#c0,#a3,#0e,#f0,#d9
	db #e4,#f8,#f0,#e0,#cb,#10,#f0,#f4
	db #f0,#f0,#f0,#74,#e0,#60,#f0,#14
	db #f0,#f0,#a2,#90,#e0,#47,#f8,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#8f,#0c,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#a2,#31,#1e
	db #f0,#c0,#f4,#70,#f0,#e0,#eb,#dc
	db #f0,#74,#f0,#f0,#f0,#b8,#e0,#60
	db #f0,#54,#f0,#f0,#54,#d0,#c0,#9f
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f1,#1f,#70
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f6
	db #a8,#0e,#f0,#f0,#f0,#f0,#f0,#f0
	db #eb,#dc,#f0,#74,#f0,#f0,#f0,#f8
	db #e0,#e0,#f0,#54,#f0,#f1,#71,#70
	db #80,#3e,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#e3
	db #1c,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#26,#ec,#1e,#f0,#f0,#f0,#f0
	db #f0,#f0,#eb,#dc,#f0,#30,#f0,#f0
	db #f0,#f8,#e0,#d0,#e0,#34,#f0,#a2
	db #b6,#e0,#41,#7c,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#c3,#7c,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#ee,#a8,#0e,#f0,#f0
	db #f0,#f0,#f0,#f0,#09,#5c,#f0,#30
	db #f0,#f0,#e0,#70,#e0,#f0,#f0,#54
	db #f0,#10,#54,#c0,#83,#78,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#c3,#38,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#ba,#a8,#1e
	db #f0,#f0,#f0,#f0,#f0,#f0,#ef,#dc
	db #f0,#b8,#f0,#f0,#f1,#70,#e0,#f0
	db #f0,#fc,#f1,#f9,#78,#b0,#07,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#83,#78,#e2
	db #cc,#f0,#f0,#f0,#f0,#f0,#f1,#dc
	db #38,#0e,#f0,#f0,#f0,#f0,#f0,#f0
	db #89,#7e,#f0,#30,#f0,#f0,#f1,#f0
	db #e0,#f0,#f0,#fc,#a2,#f7,#f0,#60
	db #1e,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#83
	db #6a,#b3,#4c,#f0,#f0,#f0,#f0,#f0
	db #f1,#dc,#b8,#8e,#f0,#f0,#f0,#f0
	db #f0,#f0,#45,#5c,#f0,#f8,#f0,#f0
	db #d1,#f0,#d0,#f0,#f0,#cc,#44,#76
	db #c0,#c1,#3c,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#c3,#fb,#8f,#70,#f0,#f0,#f0
	db #f0,#f0,#c1,#64,#78,#9f,#f0,#f0
	db #f0,#f0,#f0,#f0,#45,#5c,#f0,#70
	db #f0,#f0,#d1,#f0,#f0,#f0,#66,#2f
	db #a8,#7c,#90,#83,#38,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#e3,#3b,#26,#70,#f0
	db #f0,#f0,#f0,#f0,#f3,#64,#f8,#17
	db #f0,#f0,#f0,#f0,#f0,#f0,#45,#dc
	db #e0,#70,#f0,#f0,#c0,#f0,#f0,#f0
	db #ff,#ce,#f3,#f8,#70,#07,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#e3,#bb,#66
	db #f0,#f0,#f0,#f0,#f0,#f0,#c2,#64
	db #f8,#c7,#70,#f0,#f0,#f0,#f0,#f0
	db #45,#9c,#e0,#70,#f0,#f0,#d0,#f0
	db #f0,#f1,#5d,#dc,#82,#e0,#60,#2e
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#c1
	db #19,#44,#f0,#f0,#f0,#f0,#f0,#f0
	db #a2,#39,#f8,#83,#f8,#f0,#f0,#f0
	db #f0,#f0,#45,#ba,#f1,#70,#f0,#f0
	db #d0,#f0,#f0,#e3,#55,#f8,#9c,#d0
	db #c1,#1c,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#e1,#39,#74,#f0,#f0,#f0,#f0
	db #f0,#f0,#c6,#b9,#70,#c3,#78,#f0
	db #f0,#f0,#f0,#f0,#cd,#fe,#c1,#f0
	db #f0,#f0,#b2,#f0,#f0,#c7,#4e,#d1
	db #38,#f0,#83,#b8,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f1,#7c,#f0,#90,#40
	db #f0,#f0,#f0,#f0,#66,#69,#70,#c1
	db #38,#f0,#f0,#f0,#f0,#f0,#ed,#1b
	db #ff,#f8,#f0,#f0,#b2,#f0,#f0,#37
	db #5c,#c3,#70,#f0,#9f,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#fc,#f0
	db #31,#72,#f0,#f0,#f0,#f0,#b7,#eb
	db #f0,#f1,#3c,#f0,#f0,#f0,#f0,#f0
	db #6c,#4f,#5c,#b8,#f0,#f0,#57,#f8
	db #e0,#3f,#f0,#26,#f0,#f1,#3e,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #34,#e0,#51,#dc,#30,#f0,#f0,#f0
	db #37,#73,#f0,#20,#3e,#f0,#f0,#f0
	db #f0,#e0,#38,#06,#fc,#bc,#f0,#e0
	db #88,#5c,#47,#cc,#f1,#5c,#f0,#83
	db #38,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#e0,#38,#f0,#33,#6c,#f8,#f0
	db #f0,#f0,#37,#56,#f0,#b9,#9e,#f0
	db #70,#f0,#f0,#e1,#f8,#c7,#2e,#26
	db #f0,#f1,#70,#8f,#4f,#f8,#a3,#f8
	db #f0,#07,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#e0,#47,#70,#f0,#ff,#39
	db #f0,#f0,#f0,#f0,#bf,#f6,#f0,#f3
	db #c7,#e0,#40,#f0,#f0,#c1,#f8,#c3
	db #1f,#c7,#cc,#23,#70,#80,#44,#f0
	db #8e,#f0,#f1,#3e,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#e0,#cf,#2e,#f0,#f0
	db #cf,#aa,#d0,#f0,#f0,#f0,#d4,#34
	db #f0,#b2,#83,#f9,#f2,#b0,#f0,#e3
	db #70,#e1,#1f,#99,#8f,#3f,#fc,#c0
	db #30,#c1,#5c,#f0,#a3,#7c,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#e3,#2e,#f0
	db #f0,#f0,#81,#0f,#fe,#f0,#f0,#f0
	db #d4,#b8,#f0,#b0,#e7,#08,#f4,#b8
	db #f0,#c3,#70,#f0,#8f,#2e,#30,#d5
	db #77,#ee,#f0,#c7,#f8,#f0,#07,#70
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#c7
	db #70,#f0,#f0,#f0,#f0,#91,#9f,#b8
	db #f0,#f0,#b1,#78,#f0,#f0,#fd,#3e
	db #20,#70,#f0,#83,#b3,#70,#b3,#8f
	db #6e,#47,#3f,#30,#f1,#2e,#f0,#e0
	db #0e,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#8e,#f0,#f0,#f0,#f0,#f0,#f0
	db #f1,#9f,#88,#70,#d1,#f0,#f0,#e0
	db #c9,#0e,#20,#f0,#f0,#83,#67,#38
	db #f0,#f0,#77,#ee,#70,#f0,#83,#38
	db #f0,#e3,#7c,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#1e,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#81,#0f,#5c,#b2,#f0
	db #f0,#d1,#83,#07,#c8,#f0,#f0,#c7
	db #ff,#dc,#f0,#f0,#f0,#f0,#f0,#e0
	db #9f,#70,#f0,#07,#f8,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#e0,#3e,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#47,#1e
	db #54,#f0,#f0,#b2,#f7,#8f,#5c,#e0
	db #70,#87,#4f,#ba,#f0,#f0,#f0,#f0
	db #f0,#a3,#3e,#f0,#e0,#0e,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f1,#3e
	db #f0,#3a,#70,#f0,#f0,#f0,#f0,#f0
	db #d1,#1f,#38,#f0,#f0,#a8,#ff,#8f
	db #3e,#d1,#f0,#87,#1f,#7f,#f0,#f0
	db #f0,#f0,#f1,#0f,#38,#f0,#a3,#1c
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #e1,#3e,#a8,#ee,#b8,#f0,#f0,#f0
	db #f0,#f0,#f0,#e7,#1c,#f0,#e0,#d1
	db #ef,#8f,#1f,#11,#d1,#8f,#0e,#77
	db #30,#f0,#f0,#f0,#47,#7f,#f0,#f0
	db #07,#f8,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f1,#3e,#dd,#74,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#e0,#8f,#fc
	db #f0,#e6,#ce,#07,#8c,#2f,#01,#0f
	db #0f,#ee,#00,#d0,#f0,#c1,#0f,#b8
	db #f0,#c1,#2e,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f1,#1c,#ff,#b0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #c7,#b8,#e0,#dd,#cc,#3f,#a2,#bb
	db #7f,#8f,#0f,#1f,#10,#90,#11,#8f
	db #ce,#f0,#e0,#ab,#7c,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f1,#3e
	db #ee,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#c1,#7c,#b3,#ee,#cd,#ae
	db #f1,#70,#bf,#8f,#0f,#0f,#0f,#4f
	db #0f,#0f,#1e,#f0,#64,#1f,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #e0,#3e,#d0,#f0,#f0,#b0,#f0,#f0
	db #f0,#f0,#f0,#f0,#e0,#2e,#ff,#99
	db #ee,#0c,#80,#f0,#33,#cf,#0f,#0f
	db #0f,#0f,#0f,#0f,#1c,#f0,#27,#5c
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#3e,#f0,#f0,#90,#e8
	db #70,#f0,#f0,#f0,#f0,#f0,#e0,#8f
	db #ee,#77,#fd,#38,#d4,#e1,#70,#c3
	db #0f,#0f,#0f,#0f,#0f,#0f,#38,#90
	db #9f,#70,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#9c,#f0,#f0
	db #c4,#f9,#f2,#f0,#f0,#f0,#f0,#f0
	db #f0,#c1,#08,#bb,#41,#38,#f6,#d1
	db #f0,#07,#0f,#0f,#0f,#0f,#1f,#0f
	db #f9,#83,#4c,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#e0,#1c
	db #f0,#f0,#90,#51,#d0,#d0,#f0,#f0
	db #f0,#f0,#f0,#f1,#08,#fe,#83,#48
	db #82,#d1,#c1,#0f,#0f,#0f,#0f,#0f
	db #2e,#0e,#b1,#1f,#70,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #e3,#f8,#f0,#e0,#00,#62,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f1,#7f,#60
	db #ef,#d9,#c1,#89,#0f,#0f,#0f,#0f
	db #0f,#0f,#4d,#28,#87,#5c,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#57,#70,#f0,#f1,#bb,#32
	db #d4,#f0,#d0,#f0,#f0,#f0,#f0,#65
	db #0c,#77,#8f,#d9,#e0,#8f,#cf,#0f
	db #0f,#0f,#0f,#0f,#6f,#af,#6e,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#d1,#3e,#f0,#f0,#e0
	db #ef,#54,#74,#f0,#f0,#f0,#f0,#f0
	db #f0,#33,#17,#11,#8f,#c9,#f0,#f6
	db #47,#0f,#0f,#0f,#1f,#0f,#4f,#ee
	db #70,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#83,#b8,#f0
	db #f0,#f0,#23,#2e,#28,#70,#f0,#f0
	db #f0,#f0,#90,#2a,#ce,#77,#0f,#71
	db #f8,#d4,#07,#0f,#0f,#0f,#2e,#1d
	db #1c,#70,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#86
	db #f0,#f0,#f0,#f0,#f0,#77,#0f,#f0
	db #f0,#f0,#f0,#f0,#f5,#da,#cf,#51
	db #0f,#f8,#4c,#26,#8f,#0f,#0f,#0f
	db #3f,#1d,#38,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#9c,#f0,#f0,#f0,#f0,#f0,#f0
	db #a3,#6e,#d0,#f0,#f0,#f0,#99,#22
	db #9b,#47,#0f,#f8,#07,#0f,#0f,#0f
	db #0f,#0f,#6f,#3f,#70,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#9c,#d0,#f0,#f0,#f0
	db #e0,#30,#f0,#cf,#b8,#f0,#f0,#e0
	db #9b,#d5,#67,#1f,#a3,#68,#fb,#0f
	db #0f,#0f,#0f,#0f,#2b,#7c,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#3e,#a2,#dc
	db #f0,#e1,#e3,#9e,#f6,#c0,#0e,#f0
	db #f0,#f1,#12,#37,#67,#70,#c1,#78
	db #ff,#cf,#0f,#0f,#0f,#0f,#8b,#38
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#be
	db #e6,#fe,#f0,#d1,#c2,#e2,#d4,#f0
	db #a3,#18,#f0,#e0,#ee,#ee,#89,#f0
	db #c1,#fc,#a3,#0f,#0f,#8f,#4f,#1f
	db #07,#30,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#be,#45,#74,#60,#0f,#62,#e2
	db #f6,#f0,#e0,#9f,#f0,#c0,#fd,#4c
	db #fb,#f0,#e1,#fc,#e0,#0f,#3e,#8f
	db #03,#4e,#06,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#8e,#c0,#b1,#71,#ab
	db #e2,#d2,#f6,#f0,#f0,#a3,#38,#d1
	db #09,#19,#53,#f0,#f1,#9c,#01,#3f
	db #5d,#1f,#47,#76,#be,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#86,#f0,#f0
	db #e1,#71,#62,#e2,#d4,#f0,#f0,#f0
	db #be,#a3,#cf,#02,#c6,#f0,#f0,#32
	db #8f,#4d,#6b,#2e,#0e,#37,#38,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#83
	db #70,#f0,#f1,#41,#e2,#e2,#f6,#f0
	db #f0,#f0,#d7,#c0,#be,#64,#3a,#f0
	db #f0,#90,#91,#6b,#41,#4d,#4c,#cc
	db #b0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#e3,#f8,#f0,#f1,#0b,#63,#ce
	db #d7,#dc,#f0,#f0,#c1,#e8,#99,#d9
	db #f0,#f0,#f0,#f0,#f1,#02,#a2,#83
	db #70,#74,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#e3,#0f,#f0,#f0,#8f
	db #0f,#0f,#c3,#0f,#0f,#7c,#8f,#0f
	db #0f,#e3,#0f,#0f,#7c,#8f,#0f,#0f
	db #c3,#3c,#c3,#3c,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#8f,#0f,#1f,#f0,#f0
	db #8f,#0f,#0f,#e3,#0f,#0f,#7c,#8f
	db #0f,#0f,#c3,#3c,#f0,#f0,#0f,#f0
	db #8f,#0f,#0f,#c3,#3c,#c3,#3c,#f0
	db #f0,#f0,#f0,#f0,#f0,#c3,#0f,#f0
	db #f0,#0f,#0f,#0f,#c3,#0f,#0f,#3c
	db #0f,#0f,#0f,#c3,#0f,#0f,#3c,#0f
	db #0f,#0f,#c3,#3c,#c3,#3c,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#0f,#0f,#0f
	db #f0,#f0,#0f,#0f,#0f,#c3,#0f,#0f
	db #3c,#0f,#0f,#0f,#c3,#3c,#f0,#f0
	db #0f,#f0,#0f,#0f,#0f,#c3,#3c,#c3
	db #3c,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #0f,#f0,#f0,#0f,#f0,#f0,#c3,#3c
	db #c3,#3c,#0f,#f0,#f0,#c3,#3c,#c3
	db #3c,#0f,#f0,#f0,#c3,#3c,#c3,#3c
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#0f,#f0,#f0,#0f,#f0,#f0,#c3
	db #3c,#c3,#3c,#0f,#f0,#f0,#c3,#3c
	db #f0,#f0,#0f,#f0,#0f,#f0,#f0,#c3
	db #3c,#c3,#3c,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#0f,#f0,#f0,#0f,#0f,#f0
	db #c3,#0f,#0f,#7c,#0f,#0f,#f0,#c3
	db #3c,#c3,#3c,#0f,#f0,#f0,#c3,#0f
	db #0f,#3c,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#8f,#0f,#1f,#f0,#f0,#0f,#0f
	db #f0,#c3,#3c,#c3,#3c,#0f,#c3,#0f
	db #c3,#3c,#f0,#f0,#0f,#f0,#8f,#0f
	db #1f,#c3,#0f,#0f,#3c,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#0f,#f0,#f0,#0f
	db #f0,#f0,#c3,#3c,#c3,#3c,#0f,#f0
	db #f0,#c3,#3c,#c3,#3c,#0f,#f0,#f0
	db #c3,#3c,#c3,#3c,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#0f,#f0,#f0,#f0,#f0
	db #0f,#f0,#f0,#c3,#3c,#c3,#3c,#0f
	db #f0,#0f,#c3,#3c,#f0,#f0,#0f,#f0
	db #f0,#f0,#0f,#c3,#3c,#c3,#3c,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#0f,#c3
	db #3c,#0f,#f0,#f0,#c3,#3c,#c3,#3c
	db #0f,#0f,#0f,#c3,#3c,#c3,#3c,#0f
	db #0f,#0f,#c3,#3c,#c3,#3c,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#0f,#0f,#0f
	db #c3,#3c,#0f,#0f,#0f,#c3,#3c,#c3
	db #3c,#0f,#0f,#0f,#c3,#0f,#0f,#3c
	db #0f,#f0,#0f,#0f,#0f,#c3,#3c,#c3
	db #3c,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #0f,#c3,#3c,#0f,#f0,#f0,#c3,#3c
	db #c3,#3c,#0f,#0f,#0f,#c3,#3c,#c3
	db #3c,#0f,#0f,#0f,#c3,#3c,#c3,#3c
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#0f
	db #0f,#0f,#c3,#3c,#0f,#0f,#0f,#c3
	db #3c,#c3,#3c,#0f,#0f,#0f,#c3,#0f
	db #0f,#3c,#0f,#f0,#0f,#0f,#0f,#c3
	db #3c,#c3,#3c,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#00
	db #10,#02,#4d,#03,#00,#00,#00,#00
	db #00,#01,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#01,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #02,#02,#00,#00,#00,#00,#00,#00
	db #00,#01,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#00
	db #00,#00,#00,#00,#00,#00,#01,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#01,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #02,#02,#00,#00,#00,#00,#00,#00
	db #00,#01,#02,#02,#02,#02,#02,#02
	db #02,#00,#00,#00,#56,#59,#ac,#56
	db #59,#ac,#56,#59,#ac,#56,#59,#ac
	db #56,#59,#ac,#56,#59,#ac,#56,#59
	db #ac,#56,#59,#ac,#56,#59,#ac,#56
	db #d9,#f1,#08,#20,#37,#4f,#66,#7e
	db #95,#ad,#c4,#dc,#f3,#0b,#56,#59
	db #ac,#56,#59,#ac,#56,#59,#ac,#56
	db #59,#ac,#56,#59,#56,#59,#ac,#56
	db #59,#ac,#56,#59,#ac,#56,#59,#59
	db #ac,#56,#59,#ac,#56,#59,#ac,#56
	db #59,#ac,#56,#59,#56,#59,#ac,#56
	db #59,#ac,#56,#59,#ac,#56,#59,#ac
	db #56,#59,#ac,#56,#59,#ac,#56,#59
	db #ac,#56,#59,#ac,#56,#59,#ac,#56
	db #d9,#f1,#08,#20,#37,#4f,#66,#7e
	db #95,#ad,#c4,#dc,#f3,#0b,#56,#59
	db #ac,#56,#59,#ac,#56,#59,#ac,#56
	db #59,#ac,#56,#59,#56,#59,#ac,#56
	db #59,#ac,#56,#59,#ac,#56,#59,#ac
	db #56,#59,#ac,#56,#59,#ac,#56,#59
	db #ac,#56,#59,#ac,#56,#59,#ac,#56
	db #59,#ac,#56,#59,#56,#59,#ac,#56
	db #59,#ac,#56,#59,#ac,#56,#59,#ac
	db #56,#59,#ac,#56,#59,#ac,#56,#59
	db #ac,#56,#59,#ac,#56,#59,#ac,#56
	db #d9,#f1,#08,#20,#37,#4f,#66,#7e
	db #95,#ad,#c4,#dc,#f3,#0b,#5b,#6e
	db #b7,#5b,#6e,#b7,#5b,#6e,#b7,#5b
	db #6e,#b7,#5b,#6e,#56,#59,#ac,#56
	db #59,#ac,#56,#59,#ac,#56,#59,#ac
	db #56,#59,#ac,#56,#59,#ac,#56,#59
	db #ac,#56,#59,#ac,#56,#59,#ac,#56
	db #d9,#00,#00,#00,#00,#01,#00,#00
	db #01,#00,#00,#01,#00,#00,#01,#00
	db #00,#01,#00,#00,#01,#00,#00,#01
	db #00,#00,#01,#00,#00,#01,#00,#00
	db #00,#00,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#02,#00,#01
	db #00,#00,#01,#00,#00,#01,#00,#00
	db #01,#00,#00,#01,#00,#01,#00,#00
	db #01,#00,#00,#01,#00,#00,#01,#01
	db #00,#00,#01,#00,#00,#01,#00,#00
	db #01,#00,#00,#01,#00,#01,#00,#00
	db #01,#00,#00,#01,#00,#00,#01,#00
	db #00,#01,#00,#00,#01,#00,#00,#01
	db #00,#00,#01,#00,#00,#01,#00,#00
	db #00,#00,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#02,#00,#01
	db #00,#00,#01,#00,#00,#01,#00,#00
	db #01,#00,#00,#01,#00,#01,#00,#00
	db #01,#00,#00,#01,#00,#00,#01,#00
	db #00,#01,#00,#00,#01,#00,#00,#01
	db #00,#00,#01,#00,#00,#01,#00,#00
	db #01,#00,#00,#01,#00,#01,#00,#00
	db #01,#00,#00,#01,#00,#00,#01,#00
	db #00,#01,#00,#00,#01,#00,#00,#01
	db #00,#00,#01,#00,#00,#01,#00,#00
	db #00,#00,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#02,#00,#01
	db #00,#00,#01,#00,#00,#01,#00,#00
	db #01,#00,#00,#01,#00,#01,#00,#00
	db #01,#00,#00,#01,#00,#00,#01,#00
	db #00,#01,#00,#00,#01,#00,#00,#01
	db #00,#00,#01,#00,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #07,#09,#09,#08,#07,#06,#05,#04
	db #03,#02,#01,#00,#1f,#1e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #07,#09,#09,#08,#07,#06,#05,#04
	db #03,#02,#01,#00,#1f,#1e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #07,#09,#09,#08,#07,#06,#05,#04
	db #03,#02,#01,#00,#1f,#1e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #07,#00,#00,#00,#29,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#29,#39,#39,#39,#39,#39,#39
	db #19,#19,#19,#19,#19,#19,#19,#19
	db #19,#19,#19,#19,#19,#19,#29,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#29,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#38,#38,#38,#39,#39,#39
	db #39,#38,#38,#38,#29,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#29,#39,#39,#39,#39,#39,#39
	db #19,#19,#19,#19,#19,#19,#19,#19
	db #19,#19,#19,#19,#19,#19,#29,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#29,#39,#39,#39
	db #38,#38,#38,#39,#39,#39,#39,#38
	db #38,#38,#39,#39,#39,#39,#38,#38
	db #38,#29,#39,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#29,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#29,#39,#39,#39,#39,#39,#39
	db #19,#19,#19,#19,#19,#19,#19,#19
	db #19,#19,#19,#19,#19,#19,#29,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#29,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#39,#39,#39,#39,#39,#39,#39
	db #39,#29,#39,#39,#39,#39,#39,#39
	db #19,#00,#00,#00,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#08,#08,#07,#10,#10,#10
	db #10,#08,#08,#07,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #08,#08,#07,#10,#10,#10,#10,#08
	db #08,#07,#10,#10,#10,#10,#08,#08
	db #07,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#0c,#0b,#0a,#09,#08,#07
	db #07,#0f,#0f,#0e,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#09,#09,#0c
	db #0b,#0a,#09,#08,#07,#07,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#0c,#0b,#0a,#09,#08,#07
	db #07,#0f,#0f,#0e,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#09,#09,#0c
	db #0b,#0a,#09,#08,#07,#07,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#0c,#0b,#0a,#09,#08,#07
	db #07,#0f,#0f,#0e,#0e,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#0c,#0b,#0a,#09,#08,#07
	db #07,#0f,#0f,#0e,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#09,#09,#0c
	db #0b,#0a,#09,#08,#07,#07,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#0c,#0b,#0a,#09,#08,#07
	db #07,#0f,#0f,#0e,#0e,#0d,#0d,#0c
	db #0c,#00,#00,#00,#0e,#0d,#0c,#0b
	db #0b,#04,#03,#0c,#0b,#0a,#09,#09
	db #02,#01,#0a,#09,#08,#07,#07,#00
	db #00,#0e,#0d,#0c,#0b,#0b,#04,#03
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#0e,#0d
	db #0c,#0b,#0b,#04,#03,#0c,#0b,#0a
	db #09,#09,#02,#01,#0e,#0d,#0c,#0b
	db #0b,#04,#03,#0c,#0b,#0a,#09,#0d
	db #0c,#0b,#0b,#04,#03,#0c,#0b,#0a
	db #09,#09,#02,#01,#0e,#0d,#0c,#0b
	db #0b,#04,#03,#0c,#0b,#0a,#09,#09
	db #02,#01,#0a,#09,#08,#07,#07,#00
	db #00,#0e,#0d,#0c,#0b,#0b,#04,#03
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#0e,#0d
	db #0c,#0b,#0b,#04,#03,#0c,#0b,#0a
	db #09,#09,#02,#01,#0e,#0d,#0c,#0b
	db #0b,#04,#03,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#0e,#0d
	db #0c,#0b,#0b,#04,#03,#0c,#0b,#0a
	db #09,#09,#02,#01,#0e,#0d,#0c,#0b
	db #0b,#04,#03,#0c,#0b,#0a,#09,#09
	db #02,#01,#0a,#09,#08,#07,#07,#00
	db #00,#0e,#0d,#0c,#0b,#0b,#04,#03
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#0e,#0d
	db #0c,#0b,#0b,#04,#03,#0c,#0b,#0a
	db #09,#09,#02,#01,#0e,#0d,#0c,#0b
	db #0b,#04,#03,#0c,#0b,#0a,#09,#09
	db #02,#01,#0a,#09,#08,#07,#07,#00
	db #00,#0e,#0d,#0c,#0b,#0b,#04,#03
	db #0f,#00,#00,#00,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2b,#30,#30,#30
	db #30,#30,#30,#30,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#15,#15,#15,#15
	db #15,#15,#15,#12,#12,#12,#12,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#20,#20,#20,#20
	db #20,#21,#21,#20,#20,#20,#20,#20
	db #20,#21,#21,#20,#20,#20,#20,#20
	db #20,#21,#21,#20,#20,#20,#20,#20
	db #20,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#ff,#ff,#ff,#0c,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#0c
	db #ff,#ff,#ff,#ff,#ff,#ff,#0c,#ff
	db #ff,#ff,#ff,#ff,#ff,#0c,#ff,#ff
	db #ff,#ff,#ff,#ff,#0c,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#0c,#ff,#ff,#ff
	db #ff,#ff,#ff,#0c,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#0c,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#18,#18,#18,#19,#19,#19,#19
	db #19,#19,#19,#19,#19,#19,#19,#19
	db #19,#19,#1a,#1a,#1b,#1b,#1c,#1d
	db #1d,#1e,#1f,#20,#21,#22,#23,#24
	db #24,#25,#26,#26,#26,#27,#27,#27
	db #27,#26,#26,#25,#25,#24,#23,#22
	db #21,#1f,#1e,#1d,#1c,#1a,#19,#18
	db #16,#15,#14,#13,#12,#11,#11,#10
	db #10,#0f,#0f,#0f,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0a
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #03,#02,#01,#01,#01,#00,#00,#00
	db #00,#01,#01,#02,#02,#03,#04,#05
	db #06,#08,#09,#0a,#0b,#0d,#0e,#0f
	db #11,#12,#13,#14,#15,#16,#16,#17
	db #17,#19,#1b,#1d,#1f,#21,#23,#25
	db #26,#27,#28,#28,#28,#28,#28,#27
	db #25,#24,#22,#20,#1e,#1c,#19,#17
	db #15,#12,#10,#0e,#0d,#0b,#0a,#09
	db #09,#09,#09,#09,#0a,#0b,#0d,#0e
	db #10,#12,#15,#17,#19,#1c,#1e,#20
	db #22,#24,#25,#27,#28,#28,#28,#28
	db #28,#27,#26,#25,#23,#21,#1f,#1d
	db #1b,#19,#16,#14,#12,#10,#0e,#0c
	db #0b,#0a,#09,#09,#09,#09,#09,#0a
	db #0c,#0d,#0f,#11,#13,#15,#18,#1a
	db #1c,#1f,#21,#23,#24,#26,#27,#28
	db #28,#29,#28,#28,#27,#26,#24,#23
	db #21,#1f,#1c,#1a,#18,#15,#13,#11
	db #0f,#0d,#0c,#0a,#09,#09,#09,#09
	db #09,#0a,#0b,#0c,#0e,#10,#12,#14
	db #16,#19,#19,#19,#1a,#1a,#1a,#1b
	db #1b,#1c,#1c,#1c,#1d,#1d,#1e,#1e
	db #1e,#1f,#1f,#1f,#20,#20,#20,#21
	db #21,#21,#22,#22,#22,#23,#23,#23
	db #24,#24,#24,#24,#25,#25,#25,#25
	db #26,#26,#26,#26,#26,#27,#27,#27
	db #27,#27,#27,#28,#28,#28,#28,#28
	db #28,#28,#28,#28,#28,#28,#28,#28
	db #28,#29,#28,#28,#28,#28,#28,#28
	db #28,#28,#28,#28,#28,#28,#28,#28
	db #27,#27,#27,#27,#27,#27,#26,#26
	db #26,#26,#26,#25,#25,#25,#25,#24
	db #24,#24,#24,#23,#23,#23,#22,#22
	db #22,#21,#21,#21,#20,#20,#20,#1f
	db #1f,#1f,#1e,#1e,#1e,#1d,#1d,#1c
	db #1c,#1c,#1b,#1b,#1a,#1a,#1a,#19
	db #19,#19,#18,#18,#17,#17,#17,#16
	db #16,#15,#15,#15,#14,#14,#13,#13
	db #13,#12,#12,#12,#11,#11,#11,#10
	db #10,#10,#0f,#0f,#0f,#0e,#0e,#0e
	db #0d,#0d,#0d,#0d,#0c,#0c,#0c,#0c
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#0a,#0a,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #0a,#0a,#0a,#0a,#0a,#0a,#0b,#0b
	db #0b,#0b,#0b,#0c,#0c,#0c,#0c,#0d
	db #0d,#0d,#0d,#0e,#0e,#0e,#0f,#0f
	db #0f,#10,#10,#10,#11,#11,#11,#12
	db #12,#12,#13,#13,#13,#14,#14,#15
	db #15,#15,#16,#16,#17,#17,#17,#18
;
.music_info
	db "Come to the Castellum Meeting 2 (2007)(Benediction)(PulkoMandy)",0
	db "",0

	read "music_end.asm"
