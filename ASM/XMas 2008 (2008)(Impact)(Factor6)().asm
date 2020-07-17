; Music of XMas 2008 (2008)(Impact)(Factor6)()
; Ripped by Megachur the 12/10/2013
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XMAS2008.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2013
music_adr				equ #5000

	read "music_header.asm"

	jp l5009
	jp l5027
	db #00,#00,#00
;
.init_music
.l5009
	call l5483
	call l548a
	call l5511
	call l5510
	call l55ad
	call l503a
;	ds 12,0	; modified by Megachur
	ld a,(l574f)
.l501e
	push af
	call l5216
	pop af
	dec a
	jr nz,l501e
	ret
;
.play_music
.l5027
;
	call l5216
	call l5080
	ret
.l502f equ $ + 1
	ld hl,#0000
	dec hl
	ld (l502f),hl
	ld a,h
	or l
	jr z,l503a
	ret
.l503a
	ld b,#0e
	ld c,#0d
	xor a
.l503f
	push bc
	call l5048
	pop bc
	dec c
	djnz l503f
	ret
.l5048
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
.l505f
	ld a,(hl)
	cp #00
	jr z,l5075
	ld (#0000),a
.l5067
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l5075
	inc c
.l5076
	inc de
	ld a,d
	and #03
	ld d,a
	ld (l508b),de
	ret
.l5080
	ld de,#c080
	ld hl,#f4f6
	ld b,l
	out (c),d
	exx
.l508b equ $ + 1
	ld de,#0000
	ld l,e
	ld b,#f4
	ld c,#00
.l5092
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l5216
	di
	ld (l5235),sp
	ld a,(l574f)
	dec a
.l5221 equ $ + 2
	ld hx,#00
	ld iy,l5229
.l5227 equ $ + 1
	jp l52d9
.l5229
	ld hl,(l5227)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (l5227),de
.l5235 equ $ + 1
	ld sp,#0000
	ei
	ret
	pop hl
	ld d,d
.l523c equ $ + 1
.l523b
	ld hl,#0000
	ld c,l
	ld d,#00
	ld a,(l574f)
	ld e,a
	or a
	sbc hl,de
	ld (l523c),hl
	dec a
	jp nc,l52d9
	ld b,d
	ld de,l5279
	ld (l5227),de
	ld de,(l6000)
	add hl,de
	ld (l523c),hl
	ld a,c
	ld (l528f),a
	ld (l527a),a
	ld hl,(l508b)
	add hl,bc
	ld a,(l574f)
	ld c,a
	add hl,bc
	ld a,h
	and #03
	ld (l5221),a
	ld a,l
	ld (l52a2),a
.l527a equ $ + 1
.l5279
	ld a,#00
	dec a
	jp m,l5286
	ld iy,l528b
.l5284 equ $ + 1
.l5283
	jp l52d9
.l5286
	ld a,(l574f)
	jr l5291
.l528b
	ld a,(l574f)
.l528f equ $ + 1
	ld b,#00
	sub b
.l5291
	ld hl,(l5284)
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
.l52a2 equ $ + 1
	ld (hl),#00
	inc hl
	ex de,hl
	ldi
	ldi
	ldi
	ldi
	ldi
	ld iy,l52b6
	dec a
	jr l5283
.l52b6
	ld hl,(l5284)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld hl,#adc4
	add hl,de
	jr c,l52cd
	ld hl,l523b
	ld (l5227),de
	ld de,l52d9
.l52cd
	ld (l5284),de
	ld sp,(l5235)
	ei
	ret
	pop hl
	ld d,d
.l52d9
	ld sp,l560f
.l52dd equ $ + 1
	jp l536b
	jp (hl)
	ld d,d
	ld sp,l5619
	jp l536b
	pop af
	ld d,d
	ld sp,l5623
	jp l536b
	ld sp,hl
	ld d,d
	ld sp,l562d
	jp l536b
	ld bc,#3153
	scf
	ld d,(hl)
	jp l536b
	add hl,bc
	ld d,e
	ld sp,l5641
	jp l536b
	ld de,#3153
	ld c,e
	ld d,(hl)
	jp l536b
	add hl,de
	ld d,e
	ld sp,l5655
	jp l536b
	ld hl,#3153
	ld e,a
	ld d,(hl)
	jp l536b
	add hl,hl
	ld d,e
	ld sp,l5669
	jp l536b
	ld sp,#3153
	ld (hl),e
	ld d,(hl)
	jp l536b
	add hl,sp
	ld d,e
	ld sp,l567d
	jp l536b
	ld b,c
	ld d,e
	ld sp,l5687
	jp l536b
	dec sp
	ld d,d
	ld sp,l5691
	jp l536b
	ld d,c
	ld d,e
	ld sp,l569b
	jp l536b
	exx
	ld d,d
	ld sp,l56a5
	jp l536b
.l5357
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc e
	ex af,af'
	dec a
	exx
	jp p,l5384
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l536b
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l5381
	exx
	ld d,a
	exx
	add b
	jr nc,l53c4
	ex af,af'
.l5379
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l5379
	ex af,af'
.l5381
	exx
	pop bc
	pop hl
.l5384
	sla c
	jr nz,l538c
	ld c,(hl)
	inc hl
	sll c
.l538c
	jr nc,l5357
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l53a9
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
.l539e
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l539e
	ex af,af'
	exx
	jr l5384
.l53a9
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
.l53b6
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	djnz l53b6
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l53c4
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l53cc
	ld a,(hl)
	ld (de),a
	inc l
	inc e
	djnz l53cc
	push hl
	push de
	jp (iy)
.l53d6
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
	jp p,l5409
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l53ec
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l5406
	exx
	ld d,a
	exx
	add b
	jr nc,l546d
	ex af,af'
.l53fa
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l53fa
	ex af,af'
.l5406
	exx
	pop bc
	pop hl
.l5409
	sla c
	jr nz,l5411
	ld c,(hl)
	inc hl
	sll c
.l5411
	jr nc,l53d6
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l5440
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
.l5431
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l5431
	ex af,af'
	exx
	jr l5409
.l5440
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
.l545b
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	djnz l545b
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l546d
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l5475
	ld a,(hl)
	ld (de),a
	inc hl
	res 2,h
	inc de
	res 2,d
	djnz l5475
	push hl
	push de
	jp (iy)
.l5483
	ld hl,(l6000)
	ld (l523c),hl
	ret
.l548a
	ld hl,l5752
	ld d,#40
	exx
	ld hl,(l5750)
	inc hl
	inc hl
	push hl
	ld de,#0003
	ld a,(l574f)
	ld b,a
	ld c,#00
.l549f
	ld a,(hl)
	cp #01
	jr z,l54b0
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
.l54b0
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l549f
	ld hl,l5752
	ld d,#40
	ld b,#03
	exx
	pop hl
	push hl
	ld de,#0003
	ld a,(l574f)
	ld b,a
.l54c8
	ld a,(hl)
	cp #04
	jr z,l54e5
	exx
	ld a,b
	inc a
	and #03
	ld b,a
	jr nz,l54de
	ld a,c
	or a
	jr z,l54de
	dec c
	ld a,d
	add #04
	ld d,a
.l54de
	ld (hl),d
	inc hl
	ld (hl),#01
	dec hl
	inc d
	exx
.l54e5
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l54c8
	ld hl,l52dd
	ld bc,#0007
	exx
	pop hl
	ld de,#0003
	ld a,(l574f)
	ld b,a
.l54fb
	ld a,(hl)
	cp #01
	exx
	ld de,l536b
	jr z,l5507
	ld de,l53ec
.l5507
	ld (hl),e
	inc hl
	ld (hl),d
	add hl,bc
	exx
	add hl,de
	djnz l54fb
	ret
.l5510
	ret
.l5511
	ld hl,l5752
	ld de,l5092
	ld b,(hl)
	inc hl
	ld a,(hl)
	inc hl
	cp #01
	call z,l5592
	call nz,l559f
	ld b,#0d
.l5525
	push bc
	call l556f
	ld b,(hl)
	inc hl
	ld a,(hl)
	cp #04
	call z,l559f
	jr z,l5548
	dec hl
	dec hl
	cp (hl)
	call nz,l5592
	jr nz,l5546
	dec hl
	ld a,(hl)
	inc hl
	sub b
	inc a
	call z,l559a
	call nz,l5592
.l5546
	inc hl
	inc hl
.l5548
	inc hl
	pop bc
	djnz l5525
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
	ld hl,l5067
	ld bc,#000f
	ldir
	dec de
	ld hl,l5076
	ld bc,#000a
	ldir
	ret
.l556f
	push hl
	ld hl,l505f
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
	ld hl,l5067
	ld bc,#000f
	ldir
	pop hl
	ret
.l5592
	ex de,hl
	ld (hl),#26
	inc hl
	ld (hl),b
	inc hl
	ex de,hl
	ret
.l559a
	ld a,#24
	ld (de),a
	inc de
	ret
.l559f
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
.l55ad
	ld hl,l523b
	ld (l5227),hl
	ld hl,l52d9
	ld (l5284),hl
	xor a
	ld (l5221),a
	ld hl,#0000
	ld (l508b),hl
	call l55d2
	ld hl,l560f
	ld de,l56af
	ld bc,#00a0
	ldir
	ret
.l55d2
	ld hl,l5752
	exx
	ld a,(l574f)
	ld b,a
	ld de,(l5750)
	inc de
	inc de
	ld hl,l560f
.l55e3
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
	djnz l55e3
	ret
.l560f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5619 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5623 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l562d equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5641 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5655 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5669 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l567d equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5687
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5691 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l569b equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56a5 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56af
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5750 equ $ + 1
.l574f
	db #0e,#00
	ld h,b
.l5752
	ld b,b
	ld bc,#0141
	ld b,d
	ld bc,#0143
	ld b,h
	ld bc,#0145
	ld b,(hl)
	ld bc,#0147
	ld c,b
	ld bc,#0149
	ld c,d
	ld bc,#014b
	ld c,h
	ld bc,#014d
	ld c,(hl)
	ld bc,#014f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l6000
	db #00,#1b,#01,#2e,#00,#01,#cd,#03
	db #01,#07,#04,#01,#88,#05,#01,#c2
	db #05,#01,#20,#0a,#01,#c0,#0b,#01
	db #70,#0c,#01,#58,#0d,#01,#39,#0e
	db #01,#d8,#0e,#01,#7b,#0f,#01,#81
	db #11,#01,#bb,#11,#ff,#ff,#ff,#ff
	db #ff,#ff,#be,#af,#fb,#00,#7f,#fb
	db #06,#5f,#fb,#0c,#e2,#06,#f4,#00
	db #dc,#06,#bf,#ac,#00,#50,#fb,#b4
	db #a6,#5a,#01,#54,#01,#53,#01,#52
	db #01,#51,#f4,#01,#50,#01,#4f,#8e
	db #4e,#f4,#7f,#20,#f7,#83,#60,#60
	db #9c,#f4,#8c,#23,#6b,#fc,#a5,#f4
	db #98,#fc,#b0,#5e,#5e,#a5,#f4,#aa
	db #2a,#f7,#59,#80,#80,#fc,#ce,#7e
	db #fb,#d8,#d9,#f2,#ce,#c4,#8c,#1a
	db #fa,#74,#fd,#2e,#51,#51,#fc,#2e
	db #7f,#4f,#fb,#38,#f2,#2e,#f4,#c8
	db #ee,#4c,#ee,#c8,#e2,#4c,#fa,#8e
	db #27,#28,#78,#f8,#a1,#79,#79,#dc
	db #a0,#fa,#04,#fc,#d5,#3b,#6c,#6c
	db #fa,#d0,#f4,#d0,#fc,#e8,#6a,#fb
	db #f2,#f6,#e8,#fc,#f6,#01,#f4,#1c
	db #f4,#0c,#fa,#e2,#f4,#18,#fc,#30
	db #5e,#5e,#f9,#f4,#2a,#ee,#6a,#fc
	db #59,#f2,#4e,#c4,#0c,#1a,#50,#f8
	db #a9,#2f,#51,#51,#fc,#ae,#4f,#fb
	db #b8,#f2,#ae,#f4,#48,#ee,#cc,#e4
	db #ee,#48,#e2,#cc,#fa,#0e,#28,#78
	db #f8,#21,#79,#79,#80,#e1,#20,#70
	db #69,#62,#5b,#53,#15,#3f,#b8,#fa
	db #51,#40,#fb,#58,#fc,#54,#f9,#50
	db #41,#43,#44,#00,#46,#48,#49,#4a
	db #4b,#4d,#4e,#4f,#bf,#f4,#9c,#be
	db #fb,#80,#fa,#18,#fa,#78,#e2,#86
	db #f4,#80,#dc,#86,#be,#ac,#80,#50
	db #fb,#34,#a6,#da,#01,#d4,#13,#d3
	db #f4,#7f,#20,#93,#f7,#83,#60,#60
	db #f4,#8c,#23,#6b,#fc,#a5,#f4,#98
	db #94,#fc,#b0,#5e,#5e,#f4,#aa,#2a
	db #f7,#59,#80,#80,#bb,#fc,#ce,#7e
	db #fb,#d8,#f2,#ce,#c4,#8c,#1a,#fa
	db #74,#fd,#2e,#2f,#51,#51,#fc,#2e
	db #4f,#fb,#38,#f2,#2e,#f4,#c8,#ee
	db #4c,#e4,#ee,#c8,#e2,#4c,#fa,#8e
	db #28,#78,#f8,#a1,#79,#79,#e7,#dc
	db #a0,#fa,#04,#fc,#d5,#6c,#6c,#fa
	db #d0,#f4,#d0,#fc,#e8,#7f,#6a,#fb
	db #f2,#f6,#e8,#f6,#01,#f4,#1c,#f4
	db #0c,#fa,#e2,#f4,#18,#9f,#fc,#30
	db #5e,#5e,#f4,#2a,#ee,#6a,#fc,#59
	db #f2,#4e,#c4,#0c,#25,#1a,#50,#f8
	db #a9,#51,#51,#fc,#ae,#4f,#fb,#b8
	db #fc,#f2,#ae,#f4,#48,#ee,#cc,#ee
	db #48,#e2,#cc,#fa,#0e,#28,#78,#9c
	db #f8,#21,#79,#79,#dc,#20,#fa,#84
	db #fc,#55,#6c,#6c,#bd,#fc,#56,#6a
	db #fb,#60,#fe,#5e,#f4,#44,#fc,#6e
	db #77,#fb,#78,#f2,#fe,#76,#ee,#ea
	db #fc,#91,#aa,#86,#15,#3f,#fa,#ed
	db #40,#f2,#fb,#f4,#fc,#f0,#e2,#ec
	db #fa,#10,#18,#47,#fa,#23,#48,#92
	db #fd,#2a,#1a,#50,#f8,#2f,#51,#51
	db #fc,#34,#4f,#64,#4f,#40,#80,#f4
	db #ff,#20,#5f,#f8,#0d,#60,#60,#fd
	db #ee,#0c,#f4,#ee,#fa,#35,#f4,#2a
	db #e8,#3c,#fb,#33,#52,#fe,#65,#07
	db #53,#54,#55,#55,#54,#fb,#6c,#fe
	db #6a,#fe,#73,#31,#56,#56,#fc,#72
	db #ec,#6c,#be,#a0,#7f,#f7,#90,#1e
	db #d6,#a9,#8e,#fd,#9c,#ee,#90,#f4
	db #b1,#f4,#bf,#23,#4b,#6b,#f8,#cd
	db #6c,#6c,#ee,#cc,#1c,#fc,#88,#fb
	db #ee,#f8,#fe,#86,#fa,#f5,#f4,#ea
	db #e8,#fc,#fe,#1d,#57,#58,#58,#00
	db #59,#5a,#5b,#5c,#5d,#5f,#60,#5e
	db #a7,#fb,#2c,#5f,#fd,#32,#60,#60
	db #fc,#32,#ec,#2c,#c4,#90,#79,#20
	db #fc,#48,#fb,#90,#fe,#46,#ee,#8c
	db #1a,#50,#f8,#ab,#7a,#51,#f9,#b4
	db #f4,#aa,#e8,#bc,#fb,#b3,#52,#fe
	db #e5,#53,#5f,#54,#fe,#1c,#54,#fb
	db #ec,#f9,#1a,#fd,#f8,#ec,#ec,#c4
	db #50,#25,#23,#6b,#f8,#4d,#6c,#6c
	db #ee,#4c,#1c,#fc,#08,#fc,#fb,#6e
	db #fe,#06,#fa,#75,#f4,#6a,#e8,#7c
	db #fe,#9d,#57,#58,#00,#58,#59,#5a
	db #5b,#5c,#5d,#5f,#60,#53,#5e,#fb
	db #ac,#5f,#fd,#b2,#60,#60,#fc,#b2
	db #ec,#ac,#11,#35,#2a,#23,#f1,#d0
	db #3c,#2f,#28,#f7,#e2,#77,#47,#fe
	db #df,#f1,#ee,#f4,#ff,#20,#fc,#c8
	db #fb,#10,#fe,#c6,#97,#ee,#0c,#1a
	db #50,#f8,#2b,#51,#f9,#34,#f4,#2a
	db #e8,#3c,#a5,#fb,#33,#52,#fe,#65
	db #53,#54,#fe,#9c,#54,#fb,#6c,#e2
	db #f9,#9a,#fd,#78,#ec,#6c,#be,#a0
	db #7f,#f7,#90,#d6,#3c,#a9,#8e,#fd
	db #9c,#ee,#90,#f4,#b1,#f4,#bf,#23
	db #6b,#97,#f8,#cd,#6c,#6c,#ee,#cc
	db #1c,#fc,#88,#fb,#ee,#fe,#86,#f0
	db #fa,#f5,#f4,#ea,#e8,#fc,#fe,#1d
	db #57,#58,#58,#59,#01,#5a,#5b,#5c
	db #5d,#5f,#60,#5e,#fb,#2c,#4e,#5f
	db #fd,#32,#60,#60,#fc,#32,#ec,#2c
	db #c4,#90,#20,#f2,#fc,#48,#fb,#90
	db #fe,#46,#ee,#8c,#1a,#50,#f8,#ab
	db #51,#f4,#f9,#b4,#f4,#aa,#e8,#bc
	db #fb,#b3,#52,#fe,#e5,#53,#54,#be
	db #fe,#1c,#54,#fb,#ec,#f9,#1a,#fd
	db #f8,#ec,#ec,#c4,#50,#23,#4b,#6b
	db #f8,#4d,#6c,#6c,#ee,#4c,#1c,#fc
	db #08,#fb,#6e,#f8,#fe,#06,#fa,#75
	db #f4,#6a,#e8,#7c,#fe,#9d,#57,#58
	db #58,#00,#59,#5a,#5b,#5c,#5d,#5f
	db #60,#5e,#a6,#fb,#ac,#5f,#fd,#b2
	db #60,#60,#fc,#b2,#ec,#ac,#35,#22
	db #2a,#23,#f1,#d0,#3c,#2f,#28,#f7
	db #e2,#47,#d7,#fe,#df,#f1,#ee,#be
	db #fb,#00,#7f,#fb,#06,#fc,#c8,#fe
	db #0f,#f7,#e2,#06,#f4,#00,#dc,#06
	db #ac,#00,#50,#fb,#b4,#a6,#5a,#01
	db #54,#80,#13,#53,#00,#ff,#01,#00
	db #01,#00,#01,#ff,#01,#fe,#01,#fd
	db #01,#fc,#01,#fb,#01,#fa,#ff,#01
	db #f9,#01,#f8,#01,#f7,#01,#f6,#01
	db #f5,#01,#f4,#01,#f3,#01,#f2,#ff
	db #01,#f1,#01,#f0,#01,#ef,#01,#ee
	db #01,#ed,#01,#ec,#01,#eb,#01,#ea
	db #f0,#01,#e9,#01,#e8,#01,#e7,#e6
	db #e6,#00,#ab,#fb,#00,#be,#fb,#06
	db #7f,#fb,#0c,#5f,#fb,#12,#e2,#0c
	db #ef,#f4,#06,#dc,#0c,#ac,#06,#50
	db #fb,#ba,#a6,#60,#a6,#5a,#ee,#73
	db #de,#52,#c6,#fa,#28,#50,#fb,#3a
	db #a6,#e0,#a6,#da,#f3,#dc,#50,#45
	db #3f,#43,#00,#7f,#6b,#55,#a3,#c0
	db #78,#fe,#bd,#dd,#d3,#20,#fe,#1e
	db #47,#d3,#50,#c1,#81,#7f,#bc,#7f
	db #fe,#7d,#bb,#a3,#40,#78,#fe,#3d
	db #d3,#a0,#fe,#9e,#47,#d3,#d0,#c1
	db #01,#b7,#7f,#3c,#7f,#fe,#fd,#a3
	db #c0,#78,#fe,#bd,#d3,#20,#fe,#1e
	db #76,#47,#d3,#50,#c1,#81,#7f,#bc
	db #7f,#fe,#7d,#a3,#40,#78,#ee,#fe
	db #3d,#d3,#a0,#fe,#9e,#47,#d3,#d0
	db #c1,#01,#7f,#3c,#7f,#dd,#fe,#fd
	db #a3,#c0,#78,#fe,#bd,#d3,#20,#fe
	db #1e,#47,#d3,#50,#db,#c1,#81,#7f
	db #bc,#7f,#fe,#7d,#a3,#40,#78,#fe
	db #3d,#d3,#a0,#bb,#fe,#9e,#47,#d3
	db #d0,#c1,#01,#7f,#3c,#7f,#fe,#fd
	db #a3,#c0,#77,#78,#fe,#bd,#d3,#20
	db #fe,#1e,#47,#d3,#50,#c1,#81,#7f
	db #bc,#6e,#7f,#fe,#7d,#a3,#40,#78
	db #fe,#3d,#d3,#a0,#fe,#9e,#47,#ed
	db #d3,#d0,#c1,#01,#7f,#3c,#7f,#fe
	db #fd,#a3,#c0,#78,#fe,#bd,#d5,#d3
	db #20,#fe,#1e,#47,#d3,#50,#be,#fb
	db #80,#7f,#fb,#86,#7d,#5f,#fb,#8c
	db #e2,#86,#f4,#80,#dc,#86,#ac,#80
	db #50,#fb,#34,#e8,#a6,#da,#94,#d4
	db #fe,#f3,#3f,#a3,#00,#7f,#6b,#55
	db #d7,#a3,#60,#fe,#be,#47,#a3,#c0
	db #78,#fe,#5d,#d3,#20,#d0,#f0,#af
	db #fe,#4e,#3f,#a3,#80,#7f,#fe,#7d
	db #a3,#e0,#d0,#50,#d0,#6d,#7a,#78
	db #fe,#dd,#d3,#a0,#d0,#70,#fe,#ce
	db #3f,#a3,#00,#7f,#f7,#fe,#fd,#a3
	db #60,#d0,#d0,#d0,#ed,#78,#fe,#5d
	db #d3,#20,#d0,#f0,#af,#fe,#4e,#3f
	db #a3,#80,#7f,#fe,#7d,#a3,#e0,#d0
	db #50,#d0,#6d,#7a,#78,#fe,#dd,#d3
	db #a0,#d0,#70,#fe,#ce,#3f,#43,#00
	db #7f,#dd,#fe,#fd,#a3,#c0,#78,#fe
	db #bd,#d3,#20,#fe,#1e,#47,#d3,#50
	db #db,#c1,#81,#7f,#bc,#7f,#fe,#7d
	db #a3,#40,#78,#fe,#3d,#d3,#a0,#a0
	db #fe,#9e,#47,#d3,#d0,#00,#ff,#01
	db #00,#01,#00,#01,#ff,#01,#fe,#01
	db #fd,#01,#fc,#01,#fb,#01,#fa,#ff
	db #01,#f9,#01,#f8,#01,#f7,#01,#f6
	db #01,#f5,#01,#f4,#01,#f3,#01,#f2
	db #ff,#01,#f1,#01,#f0,#01,#ef,#01
	db #ee,#01,#ed,#01,#ec,#01,#eb,#01
	db #ea,#f0,#01,#e9,#01,#e8,#01,#e7
	db #e6,#e6,#5f,#22,#50,#3f,#43,#00
	db #7f,#6b,#55,#a3,#c0,#78,#ea,#fe
	db #bd,#d3,#20,#fe,#1e,#47,#d3,#50
	db #fa,#41,#80,#f9,#ae,#a1,#40,#c0
	db #d1,#a0,#57,#d1,#d0,#c0,#00,#80
	db #3f,#f9,#a8,#a1,#c0,#c0,#d1,#20
	db #57,#fb,#50,#d6,#ef,#21,#38,#d6
	db #d6,#f9,#55,#f4,#50,#ee,#50,#f0
	db #22,#86,#28,#ea,#be,#f3,#b3,#7d
	db #fb,#92,#be,#d7,#09,#60,#be,#ec
	db #84,#70,#80,#30,#62,#c6,#2a,#fe
	db #50,#f9,#f4,#45,#fc,#fb,#52,#fe
	db #17,#49,#fe,#c0,#ec,#44,#d0,#40
	db #22,#54,#b8,#1c,#f0,#c0,#a1,#f4
	db #a5,#e0,#fb,#b2,#f0,#09,#3b,#f0
	db #ec,#a4,#02,#08,#3a,#9e,#02,#d6
	db #57,#f4,#d5,#ab,#87,#fb,#e2,#d6
	db #ef,#21,#d6,#f8,#d4,#fa,#e8,#fa
	db #f4,#c0,#d0,#10,#70,#00,#30,#62
	db #c6,#2a,#fe,#f9,#a1,#f4,#c5,#fc
	db #fb,#d2,#fe,#17,#49,#fe,#ec,#c4
	db #81,#d0,#c0,#22,#54,#b8,#1c,#f0
	db #c0,#f4,#25,#42,#e0,#fb,#32,#f0
	db #09,#3b,#f0,#ec,#24,#08,#05,#3a
	db #9e,#02,#d6,#57,#f4,#55,#ab,#fb
	db #62,#0f,#d6,#ef,#21,#d6,#f8,#54
	db #fa,#68,#fa,#74,#d0,#90,#81,#70
	db #80,#30,#62,#c6,#2a,#fe,#f9,#f4
	db #45,#43,#fc,#fb,#52,#fe,#17,#49
	db #fe,#ec,#44,#d0,#40,#02,#22,#54
	db #b8,#1c,#f0,#c0,#f4,#a5,#e0,#84
	db #fb,#b2,#f0,#09,#3b,#f0,#ec,#a4
	db #08,#3a,#0a,#9e,#02,#d6,#57,#f4
	db #d5,#ab,#fb,#e2,#d6,#1f,#ef,#21
	db #d6,#f8,#d4,#fa,#e8,#fa,#f4,#d0
	db #10,#70,#00,#02,#30,#62,#c6,#2a
	db #fe,#f9,#f4,#c5,#fc,#86,#fb,#d2
	db #fe,#17,#49,#fe,#ec,#c4,#d0,#c0
	db #22,#05,#54,#b8,#1c,#f0,#c0,#f4
	db #25,#e0,#fb,#32,#08,#f0,#09,#3b
	db #f0,#ec,#24,#08,#3a,#9e,#14,#02
	db #d6,#57,#f4,#55,#ab,#fb,#62,#d6
	db #ef,#3e,#21,#d6,#f8,#54,#fa,#68
	db #fa,#74,#d0,#90,#70,#80,#30,#05
	db #62,#c6,#2a,#fe,#f9,#f4,#45,#fc
	db #fb,#52,#0c,#fe,#17,#49,#fe,#ec
	db #44,#d0,#40,#22,#54,#0a,#b8,#1c
	db #f0,#c0,#f4,#a5,#e0,#fb,#b2,#f0
	db #10,#09,#3b,#f0,#ec,#a4,#08,#3a
	db #9e,#02,#28,#d6,#57,#f4,#d5,#ab
	db #fb,#e2,#d6,#ef,#21,#7c,#d6,#f8
	db #d4,#fa,#e8,#fa,#f4,#d0,#10,#70
	db #00,#30,#62,#0a,#c6,#2a,#fe,#f9
	db #f4,#c5,#fc,#fb,#d2,#fe,#18,#17
	db #49,#fe,#ec,#c4,#d0,#c0,#22,#54
	db #b8,#14,#1c,#f0,#c0,#f4,#25,#e0
	db #fb,#32,#f0,#09,#20,#3b,#f0,#ec
	db #24,#08,#3a,#9e,#02,#d6,#50,#57
	db #f4,#55,#ab,#fb,#62,#d6,#ef,#21
	db #d6,#f8,#f8,#54,#fa,#68,#fa,#74
	db #d0,#90,#70,#80,#30,#62,#c6,#14
	db #2a,#fe,#f9,#f4,#45,#fc,#fb,#52
	db #fe,#17,#30,#49,#fe,#ec,#44,#d0
	db #40,#22,#54,#b8,#1c,#28,#f0,#c0
	db #f4,#a5,#e0,#fb,#b2,#f0,#09,#3b
	db #40,#f0,#ec,#a4,#08,#3a,#9e,#02
	db #d6,#57,#a1,#f4,#d5,#ab,#fb,#e2
	db #d6,#ef,#21,#d6,#f8,#d4,#f0,#fa
	db #e8,#fa,#f4,#d0,#10,#70,#00,#30
	db #62,#c6,#2a,#28,#fe,#f9,#f4,#c5
	db #fc,#fb,#d2,#fe,#17,#49,#60,#fe
	db #ec,#c4,#d0,#c0,#22,#54,#b8,#1c
	db #f0,#50,#c0,#f4,#25,#e0,#fb,#32
	db #f0,#09,#3b,#f0,#81,#ec,#24,#08
	db #3a,#9e,#02,#d6,#57,#f4,#55,#43
	db #ab,#fb,#62,#d6,#ef,#21,#d6,#f8
	db #54,#fa,#68,#f8,#fa,#74,#01,#c0
	db #a9,#bf,#f4,#34,#e2,#22,#f0,#22
	db #86,#14,#ea,#be,#fa,#f4,#05,#7d
	db #fb,#12,#be,#d7,#35,#09,#be,#ec
	db #04,#dc,#00,#80,#fb,#54,#40,#fb
	db #5a,#ff,#d0,#70,#d0,#60,#fa,#d0
	db #f4,#c5,#ed,#e2,#fc,#e4,#f9,#e3
	db #dc,#c0,#48,#a0,#fc,#14,#80,#50
	db #fc,#1a,#40,#22,#54,#0a,#b8,#1c
	db #f0,#c0,#f4,#25,#e0,#fb,#32,#f0
	db #1e,#09,#3b,#f0,#ec,#24,#db,#c0
	db #fb,#69,#fa,#74,#f0,#05,#22,#86
	db #ea,#be,#fa,#f4,#85,#7d,#fb,#92
	db #0d,#be,#d7,#09,#be,#ec,#84,#dc
	db #80,#80,#fb,#d4,#40,#40,#fb,#da
	db #30,#62,#c6,#2a,#fe,#f9,#a1,#f4
	db #e5,#fc,#fb,#f2,#fe,#17,#49,#fe
	db #ec,#e4,#fa,#d0,#e0,#db,#50,#fc
	db #64,#f9,#63,#dc,#40,#a0,#fc,#94
	db #80,#40,#50,#fc,#9a,#40,#22,#54
	db #b8,#1c,#f0,#50,#c0,#f4,#a5,#e0
	db #fb,#b2,#f0,#09,#3b,#f0,#f0,#ec
	db #a4,#db,#40,#fb,#e9,#fa,#f4,#f0
	db #22,#86,#ea,#28,#be,#fa,#f4,#05
	db #7d,#fb,#12,#be,#d7,#09,#6a,#be
	db #ec,#04,#dc,#00,#80,#fb,#54,#40
	db #fb,#5a,#30,#05,#62,#c6,#2a,#fe
	db #f9,#f4,#65,#fc,#fb,#72,#0f,#fe
	db #17,#49,#fe,#ec,#64,#d0,#60,#db
	db #d0,#fc,#e4,#d2,#f9,#e3,#dc,#c0
	db #a0,#fc,#14,#80,#50,#fc,#1a,#40
	db #02,#22,#54,#b8,#1c,#f0,#c0,#f4
	db #25,#e0,#87,#fb,#32,#f0,#09,#3b
	db #f0,#ec,#24,#db,#c0,#fb,#69,#81
	db #fa,#74,#f0,#22,#86,#ea,#be,#fa
	db #f4,#85,#43,#7d,#fb,#92,#be,#d7
	db #09,#be,#ec,#84,#dc,#80,#50,#80
	db #fb,#d4,#40,#fb,#da,#30,#62,#c6
	db #2a,#28,#fe,#f9,#f4,#e5,#fc,#fb
	db #f2,#fe,#17,#49,#7e,#fe,#ec,#e4
	db #d0,#e0,#db,#50,#fc,#64,#f9,#63
	db #dc,#40,#a0,#90,#fc,#94,#80,#50
	db #fc,#9a,#40,#22,#54,#b8,#14,#1c
	db #f0,#c0,#f4,#a5,#e0,#fb,#b2,#f0
	db #09,#3c,#3b,#f0,#ec,#a4,#db,#40
	db #fb,#e9,#fa,#f4,#f0,#22,#0a,#86
	db #ea,#be,#fa,#f4,#05,#7d,#fb,#12
	db #be,#18,#d7,#09,#be,#ec,#04,#70
	db #00,#30,#62,#c6,#14,#2a,#fe,#f9
	db #f4,#c5,#fc,#fb,#d2,#fe,#17,#30
	db #49,#fe,#ec,#c4,#d0,#c0,#22,#54
	db #b8,#1c,#28,#f0,#c0,#f4,#25,#e0
	db #fb,#32,#f0,#09,#3b,#40,#f0,#ec
	db #24,#08,#3a,#9e,#02,#d6,#57,#a1
	db #f4,#55,#ab,#fb,#62,#d6,#ef,#21
	db #d6,#f8,#54,#f0,#fa,#68,#fa,#74
	db #d0,#90,#70,#80,#30,#62,#c6,#2a
	db #28,#fe,#f9,#f4,#45,#fc,#fb,#52
	db #fe,#17,#49,#60,#fe,#ec,#44,#d0
	db #40,#22,#54,#b8,#1c,#f0,#50,#c0
	db #f4,#a5,#e0,#fb,#b2,#f0,#09,#3b
	db #f0,#81,#ec,#a4,#08,#3a,#9e,#02
	db #d6,#57,#f4,#d5,#43,#ab,#fb,#e2
	db #d6,#ef,#21,#d6,#f8,#d4,#fa,#e8
	db #80,#fa,#f4,#00,#d7,#01,#00,#80
	db #ff,#02,#41,#80,#03,#41,#40,#c0
	db #00,#80,#3f,#c7,#c0,#c0,#aa,#ff
	db #00,#00,#01,#fe,#56,#f9,#55,#f4
	db #50,#ef,#ee,#50,#fe,#7b,#fe,#81
	db #00,#f3,#b3,#fd,#81,#fc,#81,#fc
	db #7b,#ef,#ec,#85,#71,#81,#fd,#3f
	db #02,#f8,#6c,#fa,#4b,#f7,#0a,#f7
	db #6b,#ff,#f4,#4c,#87,#40,#fc,#29
	db #f9,#db,#fa,#e8,#f9,#f4,#d1,#11
	db #70,#00,#ff,#e7,#d0,#fc,#a6,#ed
	db #c5,#87,#c0,#fc,#a9,#f9,#5b,#fa
	db #68,#f9,#74,#ff,#d1,#91,#70,#80
	db #e7,#50,#fc,#26,#ed,#45,#87,#40
	db #fc,#29,#f9,#db,#ff,#fa,#e8,#f9
	db #f4,#d1,#11,#70,#00,#e7,#d0,#fc
	db #a6,#ed,#c5,#87,#c0,#ff,#fc,#a9
	db #f9,#5b,#fa,#68,#f9,#74,#d1,#91
	db #70,#80,#e7,#50,#fc,#26,#ff,#ed
	db #45,#87,#40,#fc,#29,#f9,#db,#fa
	db #e8,#f9,#f4,#d1,#11,#70,#00,#ff
	db #e7,#d0,#fc,#a6,#ed,#c5,#87,#c0
	db #fc,#a9,#f9,#5b,#fa,#68,#f9,#74
	db #ff,#d1,#91,#70,#80,#e7,#50,#fc
	db #26,#ed,#45,#87,#40,#fc,#29,#f9
	db #db,#ff,#fa,#e8,#f9,#f4,#d1,#11
	db #70,#00,#e7,#d0,#fc,#a6,#ed,#c5
	db #87,#c0,#ff,#fc,#a9,#f9,#5b,#fa
	db #68,#fa,#74,#01,#c0,#a9,#4f,#f1
	db #34,#e5,#25,#df,#fd,#b8,#fe,#fc
	db #02,#f4,#05,#f5,#e2,#ec,#05,#d1
	db #01,#9a,#70,#ff,#ed,#96,#f3,#e9
	db #fd,#e5,#f9,#e3,#d7,#c0,#fe,#f3
	db #fc,#1a,#a9,#8f,#ef,#fc,#6a,#f9
	db #74,#fc,#65,#02,#f4,#85,#f5,#62
	db #ec,#85,#d1,#81,#ff,#b7,#20,#c3
	db #39,#fd,#65,#f9,#63,#d7,#40,#fe
	db #73,#fc,#9a,#a9,#0f,#ef,#fc,#ea
	db #f9,#f4,#fc,#e5,#02,#f4,#05,#f5
	db #e2,#ec,#05,#d1,#01,#ff,#b7,#a0
	db #c3,#b9,#fd,#e5,#f9,#e3,#d7,#c0
	db #fe,#f3,#fc,#1a,#a9,#8f,#ef,#fc
	db #6a,#f9,#74,#fc,#65,#02,#f4,#85
	db #f5,#62,#ec,#85,#d1,#81,#ff,#b7
	db #20,#c3,#39,#fd,#65,#f9,#63,#d7
	db #40,#fe,#73,#fc,#9a,#a9,#0f,#ef
	db #fc,#ea,#f9,#f4,#fc,#e5,#02,#f4
	db #05,#f5,#e2,#ec,#05,#71,#01,#ff
	db #e7,#d0,#fc,#a6,#ed,#c5,#87,#c0
	db #fc,#a9,#f9,#5b,#fa,#68,#f9,#74
	db #ff,#d1,#91,#70,#80,#e7,#50,#fc
	db #26,#ed,#45,#87,#40,#fc,#29,#f9
	db #db,#c0,#fa,#e8,#fa,#f4,#00,#dd
	db #01,#00,#80,#ff,#03,#01,#80,#01
	db #80,#29,#7e,#0e,#fe,#56,#7f,#0a
	db #fe,#59,#fa,#56,#f4,#50,#ee,#50
	db #fa,#7f,#e8,#44,#ee,#86,#ff,#01
	db #80,#bb,#7f,#fa,#e8,#fa,#f4,#1c
	db #10,#70,#b4,#fa,#68,#fa,#74,#ff
	db #1c,#90,#70,#34,#fa,#e8,#fa,#f4
	db #1c,#10,#70,#b4,#fa,#68,#fa,#74
	db #ff,#1c,#90,#70,#34,#fa,#e8,#fa
	db #f4,#1c,#10,#70,#b4,#fa,#68,#fa
	db #74,#ff,#1c,#90,#70,#34,#fa,#e8
	db #fa,#f4,#1c,#10,#70,#b4,#fa,#68
	db #fa,#74,#f3,#01,#c0,#a9,#4f,#f4
	db #34,#52,#22,#01,#00,#fc,#91,#f4
	db #8a,#ff,#fa,#9c,#fa,#78,#f4,#90
	db #9a,#2a,#ac,#60,#fa,#68,#fa,#74
	db #4c,#c0,#ff,#94,#a4,#ac,#e0,#fa
	db #e8,#fa,#f4,#4c,#40,#94,#24,#ac
	db #60,#fa,#68,#ff,#fa,#74,#4c,#c0
	db #94,#a4,#ac,#e0,#fa,#e8,#fa,#f4
	db #70,#40,#1c,#60,#fc,#fa,#68,#fa
	db #74,#1c,#90,#70,#34,#fa,#e8,#fa
	db #f4,#3a,#b7,#fb,#00,#38,#01,#06
	db #86,#05,#1c,#ef,#75,#e8,#80,#e2
	db #8c,#ef,#01,#98,#01,#d7,#70,#96
	db #18,#fd,#54,#fe,#56,#fa,#56,#f4
	db #50,#ff,#ee,#50,#fd,#7a,#e5,#41
	db #eb,#86,#01,#83,#be,#82,#fa,#e8
	db #f7,#f4,#f2,#1f,#13,#70,#b4,#fa
	db #68,#fa,#74,#19,#39,#fc,#81,#1d
	db #f9,#fb,#81,#28,#9c,#70,#34,#fa
	db #e8,#fa,#f4,#19,#39,#fc,#01,#7f
	db #1d,#fb,#01,#28,#1c,#70,#b4,#fa
	db #68,#f7,#74,#1f,#93,#70,#34,#fc
	db #fa,#e8,#f7,#f4,#1f,#13,#70,#b4
	db #fa,#68,#fa,#74,#19,#39,#be,#fc
	db #81,#1d,#fb,#81,#28,#9c,#70,#34
	db #fa,#e8,#fa,#f4,#19,#5f,#39,#fc
	db #01,#1d,#fb,#01,#28,#1c,#70,#b4
	db #fa,#68,#f7,#74,#f2,#01,#c3,#ac
	db #52,#f4,#34,#e2,#22,#19,#39,#fc
	db #01,#1d,#f2,#fb,#01,#d6,#ac,#d0
	db #06,#d6,#a6,#10,#30,#f6,#86,#14
	db #ff,#fb,#91,#fa,#9c,#fa,#78,#fa
	db #a2,#f4,#84,#4c,#00,#fa,#68,#fa
	db #74,#ff,#4c,#c0,#f4,#04,#4c,#80
	db #fa,#e8,#fa,#f4,#4c,#40,#f4,#84
	db #4c,#00,#ff,#fa,#68,#fa,#74,#4c
	db #c0,#f4,#04,#4c,#80,#fa,#e8,#f7
	db #f4,#d3,#a3,#ff,#01,#00,#bb,#ff
	db #fa,#68,#f7,#74,#1f,#93,#70,#34
	db #fa,#e8,#fa,#f4,#0f,#4b,#0e,#fe
	db #01,#0d,#0d,#f4,#00,#09,#fb,#12
	db #d6,#0c,#ff,#d6,#30,#01,#0c,#01
	db #ab,#01,#aa,#01,#a9,#01,#a8,#01
	db #a7,#01,#a6,#af,#e5,#53,#00,#f5
	db #80,#0e,#fc,#74,#fb,#75,#fe,#95
	db #ed,#8c,#a7,#f5,#99,#0c,#fd,#b6
	db #0b,#0b,#e8,#8c,#fa,#b6,#ee,#d9
	db #ef,#58,#8c,#b1,#88,#e3,#29,#00
	db #f5,#00,#b8,#4c,#ee,#ee,#fa,#65
	db #fd,#58,#0c,#b8,#08,#ee,#f6,#ee
	db #5c,#fc,#75,#f2,#7e,#09,#fb,#92
	db #fa,#d6,#8c,#d6,#b0,#01,#8c,#01
	db #2b,#6a,#8a,#00,#f5,#80,#0e,#fa
	db #fc,#74,#fb,#75,#fe,#95,#ed,#8c
	db #f5,#99,#0c,#fd,#b6,#0b,#7e,#0b
	db #e8,#8c,#fa,#b6,#ee,#d9,#58,#8c
	db #b1,#88,#e3,#29,#00,#ff,#f5,#00
	db #b8,#4c,#ee,#ee,#fa,#65,#58,#0c
	db #b8,#08,#f4,#b4,#d0,#50,#fd,#ac
	db #97,#ee,#80,#e2,#ec,#f9,#10,#e3
	db #45,#40,#80,#00,#f5,#00,#fa,#e8
	db #e2,#ee,#dc,#db,#06,#f5,#f5,#fa
	db #65,#0a,#dd,#6c,#05,#7f,#0f,#fc
	db #5c,#fa,#95,#fa,#90,#ee,#90,#f4
	db #b3,#01,#00,#01,#ff,#fd,#01,#fe
	db #01,#fd,#01,#fc,#bb,#fb,#fc,#95
	db #f2,#fe,#09,#fb,#12,#f8,#d6,#0c
	db #d6,#30,#01,#0c,#01,#ab,#6a,#0a
	db #00,#92,#fb,#00,#0b,#0a,#fe,#07
	db #09,#09,#f4,#06,#05,#f8,#fb,#18
	db #d6,#12,#d6,#36,#01,#12,#fc,#70
	db #04,#04,#03,#23,#03,#02,#fd,#79
	db #01,#01,#00,#fa,#7f,#52,#c6,#81
	db #40,#d4,#05,#04,#04,#03,#03,#02
	db #fd,#f9,#05,#01,#01,#00,#0f,#0e
	db #fe,#01,#0d,#fe,#04,#10,#0c,#0c
	db #0b,#fd,#e8,#09,#08,#08,#07,#7f
	db #07,#f4,#00,#fa,#12,#ee,#12,#01
	db #06,#01,#45,#01,#44,#01,#43,#ff
	db #01,#42,#01,#41,#01,#40,#01,#3f
	db #01,#3e,#01,#3d,#01,#3c,#01,#3b
	db #ef,#01,#3a,#a3,#f9,#f4,#80,#09
	db #fb,#92,#d6,#8c,#d6,#b0,#01,#8c
	db #80,#e5,#d9,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#07,#09,#08,#08,#07,#07
	db #f4,#00,#f4,#ee,#f4,#18,#ff,#01
	db #06,#01,#45,#01,#44,#01,#43,#01
	db #42,#01,#41,#01,#40,#01,#3f,#80
	db #2e,#fe,#00,#cf,#01,#00,#80,#ff
	db #0e,#10,#f6,#81,#fa,#80,#e8,#80
	db #e2,#8c,#ef,#01,#98,#01,#d7,#70
	db #96,#0f,#fd,#56,#fe,#50,#fa,#56
	db #f4,#50,#ff,#ee,#50,#fb,#7b,#e7
	db #43,#eb,#86,#01,#83,#be,#82,#fa
	db #e8,#f7,#f4,#ff,#1f,#13,#70,#b4
	db #fa,#68,#f7,#74,#1f,#93,#70,#34
	db #fa,#e8,#f7,#f4,#ff,#1f,#13,#70
	db #b4,#fa,#68,#f7,#74,#1f,#93,#70
	db #34,#fa,#e8,#f7,#f4,#ff,#1f,#13
	db #70,#b4,#fa,#68,#f7,#74,#1f,#93
	db #70,#34,#fa,#e8,#f7,#f4,#ff,#1f
	db #13,#70,#b4,#fa,#68,#f7,#74,#01
	db #c3,#ac,#52,#f4,#34,#4c,#22,#ff
	db #22,#66,#fa,#68,#f7,#74,#1f,#93
	db #70,#34,#fa,#e8,#f7,#f4,#1f,#13
	db #ff,#70,#b4,#fa,#68,#f7,#74,#1f
	db #93,#70,#34,#fa,#e8,#f7,#f4,#1f
	db #13,#fe,#70,#b4,#fa,#68,#f7,#74
	db #1f,#93,#70,#34,#fa,#e8,#fa,#f4
	db #00,#d5,#01,#00,#80,#ff,#10,#41
	db #80,#15,#a1,#40,#14,#d1,#a0,#75
	db #12,#d1,#d0,#c0,#00,#80,#3f,#15
	db #a1,#c0,#14,#d1,#20,#6d,#12,#d1
	db #50,#ee,#ae,#08,#fb,#92,#58,#80
	db #15,#ef,#40,#d6,#fa,#34,#b8,#40
	db #14,#ef,#a0,#0f,#fb,#b2,#e8,#a0
	db #12,#be,#ef,#d0,#09,#fb,#e2,#ee
	db #d0,#fa,#f9,#d0,#10,#70,#18,#15
	db #eb,#ef,#c0,#fa,#b4,#b8,#c0,#14
	db #ef,#20,#0f,#fb,#32,#e8,#20,#5f
	db #12,#ef,#50,#09,#fb,#62,#ee,#50
	db #fa,#79,#d0,#90,#70,#98,#75,#15
	db #ef,#40,#fa,#34,#b8,#40,#14,#ef
	db #a0,#0f,#fb,#b2,#af,#e8,#a0,#12
	db #ef,#d0,#09,#fb,#e2,#ee,#d0,#fa
	db #f9,#d0,#10,#ba,#70,#18,#15,#ef
	db #c0,#fa,#b4,#b8,#c0,#14,#ef,#20
	db #0f,#d7,#fb,#32,#e8,#20,#12,#ef
	db #50,#09,#fb,#62,#ee,#50,#fa,#79
	db #dd,#d0,#90,#70,#98,#15,#ef,#40
	db #fa,#34,#b8,#40,#14,#ef,#a0,#6b
	db #0f,#fb,#b2,#e8,#a0,#12,#ef,#d0
	db #09,#fb,#e2,#ee,#d0,#ee,#fa,#f9
	db #d0,#10,#70,#18,#15,#ef,#c0,#fa
	db #b4,#b8,#c0,#14,#b5,#ef,#20,#0f
	db #fb,#32,#e8,#20,#12,#ef,#50,#09
	db #fb,#62,#f7,#ee,#50,#fa,#79,#d0
	db #90,#70,#98,#15,#ef,#40,#fa,#34
	db #b8,#40,#5a,#14,#ef,#a0,#0f,#fb
	db #b2,#e8,#a0,#12,#ef,#d0,#09,#fb
	db #fb,#e2,#ee,#d0,#fa,#f9,#d0,#10
	db #70,#18,#15,#ef,#c0,#fa,#b4,#ad
	db #b8,#c0,#14,#ef,#20,#0f,#fb,#32
	db #e8,#20,#12,#ef,#50,#7f,#09,#fb
	db #62,#ee,#50,#fa,#79,#01,#c0,#7f
	db #bf,#fa,#9a,#f4,#05,#77,#08,#fb
	db #12,#c4,#00,#fa,#c4,#0a,#fb,#5a
	db #d0,#70,#d0,#78,#dd,#d0,#d0,#dc
	db #c0,#0d,#f5,#14,#fa,#54,#f4,#25
	db #0f,#fb,#32,#f7,#e8,#20,#d0,#c0
	db #fa,#ba,#f4,#85,#08,#fb,#92,#c4
	db #80,#fa,#44,#5f,#0a,#fb,#da,#15
	db #ef,#e0,#fa,#ce,#b8,#e0,#d0,#50
	db #dc,#40,#77,#0d,#f5,#94,#fa,#d4
	db #f4,#a5,#0f,#fb,#b2,#e8,#a0,#d0
	db #40,#dd,#fa,#3a,#f4,#05,#08,#fb
	db #12,#c4,#00,#fa,#c4,#0a,#fb,#5a
	db #7d,#15,#ef,#60,#fa,#4e,#b8,#60
	db #d0,#d0,#dc,#c0,#0d,#f5,#14,#df
	db #fa,#54,#f4,#25,#0f,#fb,#32,#e8
	db #20,#d0,#c0,#fa,#ba,#f4,#85,#75
	db #08,#fb,#92,#c4,#80,#fa,#44,#0a
	db #fb,#da,#15,#ef,#e0,#f7,#fa,#ce
	db #b8,#e0,#d0,#50,#dc,#40,#0d,#f5
	db #94,#fa,#d4,#f4,#a5,#7d,#0f,#fb
	db #b2,#e8,#a0,#d0,#40,#fa,#3a,#f4
	db #05,#08,#fb,#12,#ba,#58,#00,#15
	db #ef,#c0,#fa,#b4,#b8,#c0,#14,#ef
	db #20,#0f,#d7,#fb,#32,#e8,#20,#12
	db #ef,#50,#09,#fb,#62,#ee,#50,#fa
	db #79,#dd,#d0,#90,#70,#98,#15,#ef
	db #40,#fa,#34,#b8,#40,#14,#ef,#a0
	db #6b,#0f,#fb,#b2,#e8,#a0,#12,#ef
	db #d0,#09,#fb,#e2,#ee,#d0,#80,#fa
	db #f9,#00,#ff,#01,#00,#01,#00,#01
	db #ff,#01,#fe,#01,#fd,#01,#fc,#01
	db #fb,#01,#fa,#ff,#01,#f9,#01,#f8
	db #01,#f7,#01,#f6,#01,#f5,#01,#f4
	db #01,#f3,#01,#f2,#ff,#01,#f1,#01
	db #f0,#01,#ef,#01,#ee,#01,#ed,#01
	db #ec,#01,#eb,#01,#ea,#f0,#01,#e9
	db #01,#e8,#01,#e7,#e6,#e6,#ff,#df
	db #01,#00,#80,#ff,#0c,#ef,#75,#e8
	db #80,#e2,#8c,#01,#98,#01,#d7,#ff
	db #70,#96,#01,#3e,#01,#59,#01,#58
	db #01,#57,#01,#56,#01,#55,#01,#54
	db #ff,#01,#53,#01,#52,#01,#51,#01
	db #50,#01,#4f,#01,#4e,#01,#4d,#01
	db #4c,#ff,#01,#4b,#01,#4a,#01,#49
	db #01,#48,#01,#47,#01,#46,#01,#45
	db #40,#3a,#fe,#8c,#e3,#fa,#99,#ec
	db #b0,#b0,#a0,#0c,#0c,#17,#f9,#06
	db #fe,#fa,#e3,#fe,#04,#fd,#11,#fd
	db #0b,#0b,#0b,#16,#f9,#1a,#fe,#5a
	db #f7,#fe,#18,#fd,#25,#fd,#1f,#fe
	db #5f,#15,#f9,#2e,#f9,#5a,#f8,#5c
	db #c4,#f1,#55,#b0,#40,#09,#09,#12
	db #f9,#a6,#04,#04,#e3,#fe,#a4,#fd
	db #b1,#fd,#ab,#08,#08,#11,#f9,#ba
	db #fe,#ae,#e2,#fe,#b8,#fd,#c5,#fd
	db #bf,#0f,#0f,#1e,#f9,#ce,#07,#78
	db #07,#fe,#cc,#fa,#d9,#ec,#f0,#b0
	db #e0,#0c,#0c,#17,#f8,#f9,#46,#fe
	db #3a,#fe,#44,#fd,#51,#fd,#4b,#0b
	db #0b,#16,#fd,#f9,#5a,#fe,#9a,#fe
	db #58,#fd,#65,#fd,#5f,#fe,#9f,#15
	db #f9,#6e,#f1,#f9,#9a,#f8,#9c,#f1
	db #95,#b0,#80,#09,#09,#12,#f9,#e6
	db #38,#04,#04,#fe,#e4,#fd,#f1,#fd
	db #eb,#08,#08,#11,#f8,#f9,#fa,#fe
	db #ee,#fe,#f8,#fd,#05,#fd,#ff,#0f
	db #0f,#1e,#9e,#f9,#0e,#07,#07,#fe
	db #0c,#fa,#19,#ec,#30,#b0,#20,#0c
	db #3e,#0c,#17,#f9,#86,#fe,#7a,#fe
	db #84,#fd,#91,#fd,#8b,#0b,#3f,#0b
	db #16,#f9,#9a,#fe,#da,#fe,#98,#fd
	db #a5,#fd,#9f,#fe,#df,#7c,#15,#f9
	db #ae,#f9,#da,#f8,#dc,#f1,#d5,#b0
	db #c0,#09,#09,#4e,#12,#f9,#26,#04
	db #04,#fe,#24,#fd,#31,#fd,#2b,#08
	db #3e,#08,#11,#f9,#3a,#fe,#2e,#fe
	db #38,#fd,#45,#fd,#3f,#0f,#27,#0f
	db #1e,#f9,#4e,#07,#07,#fe,#4c,#fa
	db #59,#ec,#70,#8f,#b0,#60,#0c,#0c
	db #17,#f9,#c6,#fe,#ba,#fe,#c4,#fd
	db #d1,#8f,#fd,#cb,#0b,#0b,#16,#f9
	db #da,#fe,#1a,#fe,#d8,#fd,#e5,#df
	db #fd,#df,#fe,#1f,#15,#f9,#ee,#f9
	db #1a,#f8,#1c,#f1,#15,#b0,#00,#13
	db #09,#09,#12,#f9,#66,#04,#04,#fe
	db #64,#fd,#71,#8f,#fd,#6b,#08,#08
	db #11,#f9,#7a,#fe,#6e,#fe,#78,#fd
	db #85,#89,#fd,#7f,#0f,#0f,#1e,#f9
	db #8e,#07,#07,#fe,#8c,#e3,#fa,#99
	db #ec,#b0,#b0,#a0,#0c,#0c,#17,#f9
	db #06,#fe,#fa,#e3,#fe,#04,#fd,#11
	db #fd,#0b,#0b,#0b,#16,#f9,#1a,#fe
	db #5a,#f7,#fe,#18,#fd,#25,#fd,#1f
	db #fe,#5f,#15,#f9,#2e,#f9,#5a,#f8
	db #5c,#c4,#f1,#55,#b0,#40,#09,#09
	db #12,#f9,#a6,#04,#04,#e3,#fe,#a4
	db #fd,#b1,#fd,#ab,#08,#08,#11,#f9
	db #ba,#fe,#ae,#e2,#fe,#b8,#fd,#c5
	db #fd,#bf,#0f,#0f,#1e,#f9,#ce,#07
	db #78,#07,#fe,#cc,#fa,#d9,#ec,#f0
	db #b0,#e0,#0c,#0c,#17,#f8,#f9,#46
	db #fe,#3a,#fe,#44,#fd,#51,#fd,#4b
	db #0b,#0b,#16,#fd,#f9,#5a,#fe,#9a
	db #fe,#58,#fd,#65,#fd,#5f,#fe,#9f
	db #15,#f9,#6e,#f1,#f9,#9a,#f8,#9c
	db #f1,#95,#b0,#80,#09,#09,#12,#f9
	db #e6,#38,#04,#04,#fe,#e4,#fd,#f1
	db #fd,#eb,#08,#08,#11,#f8,#f9,#fa
	db #fe,#ee,#fe,#f8,#fd,#05,#fd,#ff
	db #0f,#0f,#1e,#9e,#f9,#0e,#07,#07
	db #fe,#0c,#fa,#19,#ec,#30,#b0,#20
	db #0c,#3e,#0c,#17,#f9,#86,#fe,#7a
	db #fe,#84,#fd,#91,#fd,#8b,#0b,#3f
	db #0b,#16,#f9,#9a,#fe,#da,#fe,#98
	db #fd,#a5,#fd,#9f,#fe,#df,#70,#15
	db #f9,#ae,#f9,#da,#fd,#bc,#00,#ff
	db #01,#00,#01,#00,#01,#ff,#01,#fe
	db #01,#fd,#01,#fc,#01,#fb,#01,#fa
	db #ff,#01,#f9,#01,#f8,#01,#f7,#01
	db #f6,#01,#f5,#01,#f4,#01,#f3,#01
	db #f2,#ff,#01,#f1,#01,#f0,#01,#ef
	db #01,#ee,#01,#ed,#01,#ec,#01,#eb
	db #01,#ea,#ff,#01,#e9,#01,#e8,#01
	db #e7,#01,#e6,#01,#e5,#01,#e4,#01
	db #e3,#01,#e2,#fe,#01,#e1,#01,#e0
	db #01,#df,#01,#de,#01,#dd,#01,#dc
	db #1b,#db,#0a,#7f,#ff,#01,#01,#01
	db #01,#01,#00,#01,#ff,#01,#fe,#01
	db #fd,#01,#fc,#ff,#01,#fb,#01,#fa
	db #01,#f9,#01,#f8,#01,#f7,#01,#f6
	db #01,#f5,#01,#f4,#ff,#01,#f3,#01
	db #f2,#01,#f1,#01,#f0,#01,#ef,#01
	db #ee,#01,#ed,#01,#ec,#ff,#01,#eb
	db #01,#ea,#01,#e9,#01,#e8,#01,#e7
	db #01,#e6,#01,#e5,#01,#e4,#ff,#01
	db #e3,#01,#e2,#01,#e1,#01,#e0,#01
	db #df,#01,#de,#01,#dd,#1c,#db,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.music_info
	db "XMas 2008 (2008)(Impact)(Factor6)",0
	db "",0

	read "music_end.asm"
