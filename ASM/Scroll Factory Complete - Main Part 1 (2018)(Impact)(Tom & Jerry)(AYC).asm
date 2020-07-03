; Music of Scroll Factory Complete - Main Part 1 (2018)(Impact)(Tom & Jerry)(AYC)
; Ripped by Megachur the 30/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SCRFCMP1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5000

	read "music_header.asm"

	jp l5006
	jp l5024
;
.init_music
.l5006
;
	call l54a8
	call l54af
	call l5536
	call l5535
	call l55d2
	call l503c
	ld a,(l5796)
.l501b
	push af
	call l523b
	pop af
	dec a
	jr nz,l501b
	ret
;
.play_music
.l5024
;
	call l523b
	call l50a5
	ret
	di
	ld hl,#0000
	ld (#0038),hl
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	exx
	ei
	jp #bca7
;
.stop_music
.l503c
;
	ld b,#0e
	ld c,#0d
	xor a
.l5041
	push bc
	call l504a
	pop bc
	dec c
	djnz l5041
	ret
.l504a
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
	di
	ld bc,#f40e
	out (c),c
	ld bc,#f6c0
	out (c),c
	db #ed,#71 ; out (c),0
	ld bc,#f792
	out (c),c
	ld b,#f6
	out (c),a
	ld a,#f4
	in a,(#00)
	db #ed,#71 ; out (c),0
	ld bc,#f782
	out (c),c
	ei
	ret
.l5084
	ld a,(hl)
	cp #00
	jr z,l509a
	ld (#0000),a
.l508c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l509a
	inc c
.l509b
	inc de
	ld a,d
	and #03
	ld d,a
	ld (l50b0),de
	ret
.l50a5
	ld de,#c080
	ld hl,#f4f6
	ld b,l
	out (c),d
	exx
.l50b0 equ $ + 1
	ld de,#0000
	ld l,e
	ld b,#f4
	ld c,#00
.l50b7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
.l523b
	di
	ld (l525a),sp
	ld a,(l5796)
	dec a
.l5246 equ $ + 2
	ld hx,#00
	ld iy,l524e
.l524c equ $ + 1
	jp l52fe
.l524e
	ld hl,(l524c)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (l524c),de
.l525a equ $ + 1
	ld sp,#0000
	ei
	ret
	ld b,#53
.l5261 equ $ + 1
.l5260
	ld hl,#0000
	ld c,l
	ld d,#00
	ld a,(l5796)
	ld e,a
	or a
	sbc hl,de
	ld (l5261),hl
	dec a
	jp nc,l52fe
	ld b,d		; reset music
	ld de,l529e
	ld (l524c),de
	ld de,(l57b9)
	add hl,de
	ld (l5261),hl
	ld a,c
	ld (l52b4),a
	ld (l529f),a
	ld hl,(l50b0)
	add hl,bc
	ld a,(l5796)
	ld c,a
	add hl,bc
	ld a,h
	and #03
	ld (l5246),a
	ld a,l
	ld (l52c7),a
.l529f equ $ + 1
.l529e
	ld a,#00
	dec a
	jp m,l52ab
	ld iy,l52b0
.l52a9 equ $ + 1
.l52a8
	jp l52fe
.l52ab
	ld a,(l5796)
	jr l52b6
.l52b0
	ld a,(l5796)
.l52b4 equ $ + 1
	ld b,#00
	sub b
.l52b6
	ld hl,(l52a9)
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
.l52c7 equ $ + 1
	ld (hl),#00
	inc hl
	ex de,hl
	ldi
	ldi
	ldi
	ldi
	ldi
	ld iy,l52db
	dec a
	jr l52a8
.l52db
	ld hl,(l52a9)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld hl,#ad9f
	add hl,de
	jr c,l52f2
	ld hl,l5260
	ld (l524c),de
	ld de,l52fe
.l52f2
	ld (l52a9),de
	ld sp,(l525a)
	ei
	ret
	ld b,#53
.l52fe
	ld sp,l5656
.l5302 equ $ + 1
	jp l5411
	ld c,#53
	ld sp,l5660
	jp l5390
	ld d,#53
	ld sp,l566a
	jp l5411
	ld e,#53
	ld sp,l5674
	jp l5390
	ld h,#53
	ld sp,l567e
	jp l5411
	ld l,#53
	ld sp,l5688
	jp l5390
	ld (hl),#53
	ld sp,l5692
	jp l5390
	ld a,#53
	ld sp,l569c
	jp l5390
	ld b,(hl)
	ld d,e
	ld sp,l56a6
	jp l5390
	ld c,(hl)
	ld d,e
	ld sp,l56b0
	jp l5390
	ld d,(hl)
	ld d,e
	ld sp,l56ba
	jp l5390
	ld e,(hl)
	ld d,e
	ld sp,l56c4
	jp l5390
	ld h,(hl)
	ld d,e
	ld sp,l56ce
	jp l5390
	ld h,b
	ld d,d
	ld sp,l56d8
	jp l5390
	halt
	ld d,e
	ld sp,l56e2
	jp l5390
	cp #52
	ld sp,l56ec
	jp l5390
.l537c
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc e
	ex af,af'
	dec a
	exx
	jp p,l53a9
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l5390
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l53a6
	exx
	ld d,a
	exx
	add b
	jr nc,l53e9
	ex af,af'
.l539e
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l539e
	ex af,af'
.l53a6
	exx
	pop bc
	pop hl
.l53a9
	sla c
	jr nz,l53b1
	ld c,(hl)
	inc hl
	sll c
.l53b1
	jr nc,l537c
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l53ce
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
.l53c3
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l53c3
	ex af,af'
	exx
	jr l53a9
.l53ce
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
.l53db
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	djnz l53db
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l53e9
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l53f1
	ld a,(hl)
	ld (de),a
	inc l
	inc e
	djnz l53f1
	push hl
	push de
	jp (iy)
.l53fb
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
	jp p,l542e
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l5411
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l542b
	exx
	ld d,a
	exx
	add b
	jr nc,l5492
	ex af,af'
.l541f
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l541f
	ex af,af'
.l542b
	exx
	pop bc
	pop hl
.l542e
	sla c
	jr nz,l5436
	ld c,(hl)
	inc hl
	sll c
.l5436
	jr nc,l53fb
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l5465
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
.l5456
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l5456
	ex af,af'
	exx
	jr l542e
.l5465
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
.l5480
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	djnz l5480
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l5492
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l549a
	ld a,(hl)
	ld (de),a
	inc hl
	res 2,h
	inc de
	res 2,d
	djnz l549a
	push hl
	push de
	jp (iy)
.l54a8
	ld hl,(l57b9)
	ld (l5261),hl
	ret
.l54af
	ld hl,l5799
	ld d,#40
	exx
	ld hl,(l5797)
	inc hl
	inc hl
	push hl
	ld de,#0003
	ld a,(l5796)
	ld b,a
	ld c,#00
.l54c4
	ld a,(hl)
	cp #01
	jr z,l54d5
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
.l54d5
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l54c4
	ld hl,l5799
	ld d,#40
	ld b,#03
	exx
	pop hl
	push hl
	ld de,#0003
	ld a,(l5796)
	ld b,a
.l54ed
	ld a,(hl)
	cp #04
	jr z,l550a
	exx
	ld a,b
	inc a
	and #03
	ld b,a
	jr nz,l5503
	ld a,c
	or a
	jr z,l5503
	dec c
	ld a,d
	add #04
	ld d,a
.l5503
	ld (hl),d
	inc hl
	ld (hl),#01
	dec hl
	inc d
	exx
.l550a
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l54ed
	ld hl,l5302
	ld bc,#0007
	exx
	pop hl
	ld de,#0003
	ld a,(l5796)
	ld b,a
.l5520
	ld a,(hl)
	cp #01
	exx
	ld de,l5390
	jr z,l552c
	ld de,l5411
.l552c
	ld (hl),e
	inc hl
	ld (hl),d
	add hl,bc
	exx
	add hl,de
	djnz l5520
	ret
.l5535
	ret
.l5536
	ld hl,l5799
	ld de,l50b7
	ld b,(hl)
	inc hl
	ld a,(hl)
	inc hl
	cp #01
	call z,l55b7
	call nz,l55c4
	ld b,#0d
.l554a
	push bc
	call l5594
	ld b,(hl)
	inc hl
	ld a,(hl)
	cp #04
	call z,l55c4
	jr z,l556d
	dec hl
	dec hl
	cp (hl)
	call nz,l55b7
	jr nz,l556b
	dec hl
	ld a,(hl)
	inc hl
	sub b
	inc a
	call z,l55bf
	call nz,l55b7
.l556b
	inc hl
	inc hl
.l556d
	inc hl
	pop bc
	djnz l554a
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
	ld hl,l508c
	ld bc,#000f
	ldir
	dec de
	ld hl,l509b
	ld bc,#000a
	ldir
	ret
.l5594
	push hl
	ld hl,l5084
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
	ld hl,l508c
	ld bc,#000f
	ldir
	pop hl
	ret
.l55b7
	ex de,hl
	ld (hl),#26
	inc hl
	ld (hl),b
	inc hl
	ex de,hl
	ret
.l55bf
	ld a,#24
	ld (de),a
	inc de
	ret
.l55c4
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
.l55d2
	ld hl,l5260
	ld (l524c),hl
	ld hl,l52fe
	ld (l52a9),hl
	xor a
	ld (l5246),a
	ld hl,#0000
	ld (l50b0),hl
	call l55f7
	ld hl,l5656
	ld de,l56f6
	ld bc,#00a0
	ldir
	ret
.l55f7
	ld hl,l5799
	exx
	ld a,(l5796)
	ld b,a
	ld de,(l5797)
	inc de
	inc de
	ld hl,l5656
.l5608
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
	djnz l5608
	ret
	ld bc,#7fc5
	out (c),c
	ld hl,#0800
	ld de,#4000
	ld bc,#3800
	ldir
	ret
	ld bc,#7fc6
	out (c),c
	ld hl,#4000
	ld de,#3000
	ld bc,#1000
	ldir
	ret
.l5656
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5660 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l566a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5674 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l567e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5688 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5692 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l569c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56a6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56b0 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56ba equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56c4 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56ce
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56d8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56e2 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56ec equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56f6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5799 equ $ + 3
.l5797 equ $ + 1
.l5796
	db #0e,#b9,#57,#40,#01,#41,#01,#42
	db #01,#43,#01,#44,#01,#45,#01,#46
	db #01,#47,#01,#48,#01,#49,#01,#4a
	db #01,#4b,#01,#4c,#01,#4d,#01,#4e
.l57b9 equ $ + 3
	db #01,#4f,#01,#c0,#0d,#01,#2e,#00
	db #01,#06,#01,#01,#22,#01,#01,#44
	db #03,#01,#6b,#04,#01,#18,#06,#01
	db #34,#06,#01,#68,#06,#01,#0f,#07
	db #01,#07,#08,#01,#cc,#08,#01,#cb
	db #09,#01,#e7,#09,#01,#03,#0a,#ff
	db #ff,#ff,#ff,#ff,#ff,#ef,#15,#9f
	db #77,#64,#61,#00,#59,#61,#a0,#6a
	db #5f,#40,#ba,#fd,#e0,#64,#69,#e5
	db #65,#e5,#f8,#17,#59,#61,#20,#6a
	db #dd,#5f,#c0,#fd,#60,#64,#69,#65
	db #65,#65,#f8,#97,#6a,#61,#a0,#c5
	db #a0,#43,#c2,#9f,#c9,#9f,#86,#64
	db #e0,#3c,#fe,#80,#7e,#77,#fe,#83
	db #f1,#80,#f7,#87,#eb,#80,#e2,#ad
	db #c5,#81,#35,#b5,#fe,#0c,#6a,#fe
	db #0f,#fc,#0c,#32,#fe,#16,#64,#fe
	db #19,#eb,#fc,#16,#f6,#0c,#f6,#24
	db #43,#fe,#34,#86,#fe,#37,#f1,#34
	db #af,#ed,#35,#50,#fe,#5c,#9f,#fe
	db #5f,#fc,#5c,#eb,#34,#f7,#75,#f5
	db #c4,#83,#c4,#d0,#e2,#c0,#ce,#ca
	db #35,#fe,#4c,#6a,#fe,#4f,#ad,#fc
	db #4c,#32,#fe,#56,#64,#fe,#59,#fc
	db #56,#2d,#fe,#60,#7f,#59,#fe,#63
	db #f2,#60,#f6,#56,#f6,#4c,#f6,#82
	db #f6,#74,#f6,#96,#f5,#ec,#7e,#f6
	db #b4,#d8,#c3,#ec,#56,#28,#fe,#00
	db #50,#fe,#03,#ff,#f2,#00,#e2,#f6
	db #a6,#92,#ec,#8b,#f6,#14,#f6,#a4
	db #ec,#ec,#ec,#c2,#af,#9c,#32,#3c
	db #fe,#40,#77,#fe,#43,#e8,#40,#ce
	db #5d,#d8,#f0,#fc,#ec,#dc,#f6,#c6
	db #f6,#d5,#60,#f0,#00,#7f,#c0,#7f
	db #00,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#fc,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#41,#00,#00
	db #ab,#c5,#00,#64,#61,#3c,#6a,#61
	db #dc,#86,#61,#7c,#c4,#40,#57,#64
	db #d9,#58,#bc,#fe,#80,#de,#fe,#83
	db #f1,#80,#ec,#81,#d6,#88,#a3,#61
	db #81,#7e,#fe,#c0,#3f,#fe,#c3,#66
	db #c0,#5a,#b0,#fe,#60,#2d,#fe,#63
	db #92,#60,#59,#2b,#2a,#29,#00,#55
	db #53,#51,#22,#20,#1e,#48,#45,#00
	db #42,#12,#0f,#0b,#34,#30,#2c,#fb
	db #00,#f6,#f1,#19,#14,#0f,#dc,#d6
	db #d0,#00,#f7,#f1,#ea,#b6,#af,#a8
	db #ce,#c6,#00,#be,#89,#81,#79,#9e
	db #96,#8e,#59,#0a,#de,#ce,#be,#ae
	db #fa,#03,#bc,#fe,#0a,#de,#e1,#fe
	db #0d,#f2,#0a,#f6,#00,#ef,#df,#cf
	db #bf,#fa,#2b,#df,#e2,#0a,#fd,#41
	db #ef,#fe,#53,#fc,#50,#e2,#32,#f6
	db #60,#f6,#28,#85,#ec,#28,#7e,#6e
	db #5e,#4e,#fa,#a3,#fc,#fe,#aa,#70
	db #7e,#fe,#ad,#f2,#aa,#f6,#a0,#3f
	db #2f,#1f,#0f,#ef,#fa,#cb,#e2,#aa
	db #fd,#e1,#3f,#fe,#f3,#fc,#f0,#e2
	db #d2,#f6,#00,#c2,#f6,#c8,#ec,#c8
	db #5a,#4a,#3a,#2a,#fa,#43,#b4,#b8
	db #fe,#4a,#5a,#fe,#4d,#f2,#4a,#f6
	db #40,#2d,#1d,#0d,#77,#fd,#fa,#6b
	db #e2,#4a,#fd,#81,#2d,#fe,#93,#fc
	db #90,#e2,#72,#e1,#f6,#a0,#f6,#68
	db #ec,#68,#de,#ce,#be,#ae,#fa,#e3
	db #58,#24,#fe,#ea,#92,#fe,#ed,#fc
	db #ea,#ef,#df,#cf,#7d,#bf,#fa,#f7
	db #f6,#e0,#f6,#f4,#ec,#ea,#ec,#f4
	db #53,#fe,#3a,#7e,#aa,#fe,#3d,#fc
	db #3a,#d8,#26,#f6,#62,#f6,#58,#f6
	db #4e,#bc,#be,#fe,#8a,#de,#fe,#8d
	db #f2,#8a,#ec,#fe,#e2,#8a,#fd,#c1
	db #ef,#fc,#fe,#d3,#fc,#d0,#e2,#b2
	db #f6,#e0,#ec,#62,#f6,#f8,#7e,#6e
	db #2b,#5e,#4e,#fa,#23,#fc,#fe,#2a
	db #7e,#fe,#2d,#f2,#2a,#87,#f6,#20
	db #3f,#2f,#1f,#0f,#fa,#4b,#e2,#2a
	db #fd,#61,#7e,#3f,#fe,#73,#fc,#70
	db #e2,#52,#f6,#80,#f6,#48,#ec,#48
	db #5a,#15,#4a,#3a,#2a,#fa,#c3,#b4
	db #fe,#ca,#5a,#fe,#cd,#c3,#f2,#ca
	db #f6,#c0,#2d,#1d,#0d,#fd,#fa,#eb
	db #e2,#ca,#bf,#fd,#01,#2d,#fe,#13
	db #fc,#10,#e2,#f2,#f6,#20,#f6,#e8
	db #ec,#e8,#0a,#18,#08,#f8,#e8,#fa
	db #63,#31,#fe,#6a,#18,#e1,#fe,#6d
	db #f2,#6a,#f6,#60,#0c,#fc,#ec,#dc
	db #fa,#8b,#df,#e2,#6a,#fd,#a1,#0c
	db #fe,#b3,#fc,#b0,#e2,#92,#f6,#c0
	db #f6,#88,#85,#ec,#88,#de,#ce,#be
	db #ae,#fa,#03,#bc,#fe,#0a,#70,#de
	db #fe,#0d,#f2,#0a,#f6,#00,#ef,#df
	db #cf,#bf,#ef,#fa,#2b,#e2,#0a,#fd
	db #41,#ef,#fe,#53,#fc,#50,#e2,#32
	db #f6,#60,#fe,#f6,#28,#ec,#28,#ec
	db #ce,#ec,#c4,#ec,#ec,#ec,#b4,#fd
	db #e1,#0c,#fc,#fe,#f3,#fc,#f0,#e2
	db #d2,#f6,#00,#f6,#c8,#ec,#c8,#cc
	db #bc,#2b,#ac,#9c,#fa,#43,#98,#fe
	db #4a,#cc,#fe,#4d,#f2,#4a,#87,#f6
	db #40,#66,#56,#46,#36,#fa,#6b,#e2
	db #4a,#fd,#81,#7e,#66,#fe,#93,#fc
	db #90,#e2,#72,#f6,#a0,#f6,#68,#ec
	db #68,#bc,#b8,#fe,#e0,#de,#fe,#e3
	db #00,#e0,#26,#e0,#00,#eb,#00,#00
	db #00,#00,#81,#00,#03,#fe,#80,#01
	db #fe,#83,#f1,#80,#ef,#ec,#81,#88
	db #a3,#61,#81,#02,#fe,#c0,#fd,#bb
	db #66,#c0,#79,#d8,#7e,#00,#fe,#e7
	db #fa,#e4,#fd,#e1,#f3,#ed,#fd,#fc
	db #f9,#02,#03,#ff,#fe,#0a,#ef,#07
	db #f6,#00,#fd,#f9,#f9,#2a,#e2,#0a
	db #f6,#f6,#e2,#32,#fb,#f6,#60,#f6
	db #28,#ec,#28,#fd,#ea,#f9,#a2,#04
	db #fe,#aa,#ef,#a7,#ff,#f6,#a0,#f6
	db #6e,#e2,#aa,#fa,#c5,#fc,#f0,#e2
	db #d2,#f6,#00,#f3,#46,#fe,#ed,#cb
	db #d7,#a2,#f9,#8f,#ad,#d2,#f9,#6b
	db #ec,#68,#f6,#2c,#03,#ff,#fe,#ea
	db #f9,#e7,#f9,#cf,#fa,#c9,#f9,#00
	db #f6,#f4,#ec,#ea,#ec,#f4,#ff,#e2
	db #ea,#e2,#12,#f6,#58,#ec,#4e,#f6
	db #8e,#e2,#fe,#ec,#94,#fa,#a5,#eb
	db #fc,#d0,#e2,#b2,#d8,#58,#02,#f7
	db #20,#04,#fe,#2a,#ef,#27,#ff,#f6
	db #20,#f6,#ee,#e2,#2a,#fa,#45,#fc
	db #70,#e2,#52,#f6,#80,#f3,#c6,#ff
	db #ed,#4b,#d7,#22,#f9,#0f,#ad,#52
	db #f9,#eb,#ea,#e8,#ec,#ae,#f6,#26
	db #ff,#f7,#ad,#f9,#4f,#e8,#f0,#f8
	db #81,#e0,#10,#ee,#62,#f6,#88,#ec
	db #88,#9e,#f7,#80,#01,#03,#fe,#0a
	db #ef,#07,#f6,#00,#f7,#ed,#00,#ff
	db #e2,#0a,#fa,#25,#fc,#50,#e2,#32
	db #f6,#60,#f6,#28,#ec,#28,#ec,#ce
	db #ff,#ec,#c4,#ec,#ec,#ec,#b4,#fd
	db #e1,#f9,#ed,#e2,#d2,#f6,#00,#f6
	db #c8,#df,#ea,#c8,#f8,#41,#05,#fe
	db #4a,#ef,#47,#f6,#40,#f6,#6e,#e2
	db #4a,#fb,#f6,#f0,#e2,#72,#f6,#a0
	db #f6,#68,#ec,#68,#03,#fe,#e0,#fd
	db #d3,#c0,#00,#e0,#26,#e0,#64,#ab
	db #61,#00,#6a,#61,#a0,#86,#6b,#40
	db #9f,#fc,#d6,#fb,#d1,#55,#77,#61
	db #e0,#64,#61,#80,#59,#c5,#20,#6a
	db #9d,#5c,#5d,#86,#61,#c0,#77,#c5
	db #60,#dc,#9c,#c0,#bf,#32,#fe,#00
	db #6f,#64,#fe,#03,#f2,#00,#35,#fe
	db #14,#fd,#fd,#fc,#14,#ec,#00,#bf
	db #f6,#2c,#3c,#fe,#3c,#fd,#99,#e8
	db #3c,#e2,#59,#d8,#14,#f6,#78,#af
	db #f6,#a4,#43,#fe,#b4,#86,#fe,#b7
	db #fc,#b4,#f6,#b4,#ec,#c2,#5f,#50
	db #fe,#dc,#9f,#fe,#df,#fc,#dc,#e2
	db #be,#ec,#03,#f6,#4e,#ff,#ec,#a0
	db #f6,#30,#ec,#88,#d8,#78,#f6,#18
	db #ec,#80,#e2,#99,#ec,#28,#b5,#ec
	db #64,#28,#fe,#e0,#fe,#e3,#50,#f2
	db #e0,#2d,#fe,#f4,#7f,#59,#fe,#f7
	db #fc,#f4,#f6,#f4,#ec,#02,#f6,#d2
	db #e8,#28,#fa,#38,#ad,#f6,#8e,#43
	db #fe,#4e,#86,#fe,#51,#f2,#4e,#9f
	db #fc,#62,#ff,#fd,#5d,#f9,#69,#fb
	db #62,#fb,#b3,#fb,#6c,#fd,#4a,#f9
	db #82,#fd,#ef,#ff,#fe,#8c,#fb,#85
	db #fd,#1f,#fe,#96,#fb,#8a,#fb,#76
	db #fb,#94,#fb,#a7,#ff,#fb,#9e,#fb
	db #99,#fb,#a8,#fd,#5a,#fe,#be,#fb
	db #b2,#fb,#c5,#fb,#bc,#ff,#f6,#85
	db #ba,#8a,#f6,#11,#fd,#41,#fe,#2c
	db #fb,#25,#fb,#7b,#fb,#2a,#ef,#ec
	db #62,#fb,#39,#fb,#48,#59,#fc,#5c
	db #fb,#52,#fb,#65,#fb,#5c,#de,#f6
	db #25,#ba,#2a,#4b,#f7,#c0,#fb,#07
	db #fb,#c5,#f6,#ee,#96,#ff,#fc,#de
	db #fb,#d4,#fb,#e7,#fb,#de,#f6,#f8
	db #f6,#c5,#fb,#7f,#f6,#c0,#f7,#fb
	db #06,#ce,#ca,#f1,#15,#fb,#4c,#43
	db #f7,#60,#fb,#bb,#fb,#65,#f7,#f6
	db #b6,#f6,#84,#ec,#a2,#f6,#65,#3c
	db #fc,#a6,#f6,#60,#fb,#a6,#ff,#c4
	db #6a,#f6,#ba,#fb,#b5,#fb,#04,#fb
	db #5b,#fb,#05,#fb,#51,#fb,#0a,#ff
	db #f6,#24,#ec,#42,#fb,#fb,#fb,#32
	db #f6,#5b,#f6,#05,#ba,#0a,#f6,#9f
	db #fd,#c4,#ba,#fb,#5f,#f6,#a0,#fb
	db #e6,#c4,#aa,#f6,#fa,#4b,#f7,#40
	db #ef,#fb,#87,#fb,#45,#f6,#6e,#96
	db #fc,#5e,#fb,#54,#fb,#67,#fb,#5e
	db #ff,#f6,#78,#f6,#45,#fb,#96,#f6
	db #40,#fb,#86,#ce,#4a,#f1,#95,#fb
	db #cc,#ef,#f6,#df,#f6,#81,#f6,#a4
	db #9f,#fc,#fe,#f6,#b3,#fb,#fe,#ec
	db #c2,#ef,#f6,#ea,#ec,#1c,#f6,#f4
	db #ef,#fc,#4e,#f6,#03,#fb,#4e,#dd
	db #12,#c0,#00,#84,#c5,#84,#00,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fc,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#41,#00,#00,#f8,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#01,#02,#03,#7f,#0d,#dc,#e6
	db #d8,#00,#ce,#e2,#e2,#1e,#00,#00
	db #ac,#00,#ec,#c2,#ff,#b0,#e0,#c4
	db #b8,#d8,#58,#d8,#76,#e2,#bc,#00
	db #62,#00,#62,#00,#62,#e0,#22,#62
	db #00,#df,#20,#df,#3a,#bb,#f1,#00
	db #3e,#fd,#10,#ec,#00,#ec,#27,#3c
	db #f1,#3c,#e8,#38,#fb,#c4,#63,#00
	db #00,#ba,#0a,#8e,#46,#d8,#30,#38
	db #f1,#80,#fc,#64,#fd,#ec,#80,#ec
	db #a7,#c4,#80,#d8,#f7,#00,#80,#20
	db #80,#28,#fd,#00,#7e,#3a,#fb,#04
	db #f0,#b0,#fc,#19,#f6,#00,#d8,#00
	db #e2,#b6,#2c,#bf,#fd,#6e,#3e,#fb
	db #72,#d8,#14,#a6,#00,#ec,#50,#74
	db #6e,#f6,#04,#ff,#b0,#04,#ec,#c2
	db #b0,#e0,#c4,#b8,#d8,#58,#d8,#76
	db #e2,#bc,#7e,#62,#57,#39,#f7,#84
	db #29,#fd,#8e,#3b,#fb,#92,#ec,#84
	db #ec,#8e,#f5,#9c,#20,#e2,#fc,#e2
	db #de,#9c,#c0,#39,#f7,#c4,#29,#fd
	db #ce,#7f,#3b,#fb,#d2,#ec,#c4,#60
	db #4c,#ec,#6e,#9c,#00,#f6,#03,#b0
	db #6e,#ff,#e2,#22,#ec,#18,#d8,#f0
	db #ec,#dc,#f6,#c2,#f6,#7c,#e2,#90
	db #ec,#72,#ec,#e2,#11,#b0,#e0,#f5
	db #7f,#3d,#00,#8b,#cc,#8b,#00,#aa
	db #f2,#00,#01,#fc,#0f,#02,#fc,#14
	db #03,#fc,#19,#04,#aa,#fc,#1e,#05
	db #fc,#23,#06,#fc,#28,#07,#fc,#2d
	db #08,#ab,#fc,#32,#09,#fc,#37,#0a
	db #f7,#3c,#0b,#cf,#46,#fb,#41,#ff
	db #fb,#37,#fb,#32,#fb,#2d,#fb,#28
	db #fb,#23,#fb,#1e,#fb,#19,#d3,#14
	db #d7,#ce,#46,#bf,#5a,#00,#f2,#40
	db #01,#fc,#4f,#ec,#a0,#e2,#af,#fe
	db #c9,#c8,#dd,#1d,#fb,#59,#ec,#54
	db #e7,#6d,#ce,#8b,#c4,#9f,#00,#bf
	db #f2,#80,#01,#fc,#8f,#d3,#e5,#c9
	db #0d,#e2,#62,#fb,#9e,#fb,#99,#eb
	db #d3,#94,#ce,#c6,#bf,#da,#00,#f2
	db #c0,#01,#fc,#cf,#ec,#20,#ff,#e2
	db #2f,#c9,#48,#dd,#9d,#fb,#d9,#ec
	db #d4,#e7,#ed,#ce,#0b,#c4,#1f,#5f
	db #00,#f2,#00,#01,#fc,#0f,#d3,#65
	db #c9,#8d,#e2,#e2,#fb,#1e,#ff,#fb
	db #19,#d8,#00,#88,#23,#d8,#a0,#8d
	db #cd,#fb,#59,#fb,#4f,#ce,#4f,#af
	db #fb,#b3,#0c,#f7,#1c,#0d,#cf,#26
	db #fb,#21,#dd,#b3,#fd,#55,#7f,#0e
	db #fb,#83,#fa,#55,#fb,#5f,#f4,#80
	db #ee,#82,#fc,#66,#fb,#6c,#7b,#08
	db #e0,#80,#c4,#8c,#e4,#e6,#b0,#bc
	db #00,#c5,#84,#b8,#d0,#fb,#bc,#40
	db #ea,#24,#d0,#12,#d8,#7e,#f6,#42
	db #00,#d9,#c4,#60,#4c,#ff,#e0,#d8
	db #da,#0c,#f6,#5a,#9c,#32,#88,#f0
	db #b0,#90,#88,#18,#00,#7f,#80,#c0
	db #7f,#00,#88,#c5,#00,#09,#09,#08
	db #fd,#3e,#07,#07,#06,#01,#06,#05
	db #05,#04,#04,#03,#03,#e8,#38,#e7
	db #88,#63,#00,#3c,#c0,#db,#0a,#0a
	db #fe,#90,#fc,#90,#f8,#96,#ff,#e8
	db #18,#d8,#08,#ec,#6b,#fc,#5a,#fa
	db #90,#fe,#89,#f8,#80,#ec,#80,#de
	db #88,#9c,#60,#80,#0a,#fb,#c0,#fa
	db #b8,#6a,#c0,#62,#c2,#0e,#0f,#0e
	db #0b,#0b,#00,#fb,#04,#fe,#02,#fc
	db #0b,#fa,#f0,#ff,#f8,#0a,#f6,#00
	db #d8,#00,#f6,#32,#d8,#32,#e2,#1e
	db #00,#00,#ac,#00,#7f,#09,#fd,#f4
	db #f0,#c6,#e2,#e0,#ec,#f4,#e2,#ea
	db #c4,#b8,#ec,#a4,#fe,#d8,#80,#f6
	db #b2,#d8,#b2,#00,#62,#00,#62,#00
	db #62,#22,#62,#09,#b7,#fb,#e0,#08
	db #fb,#e6,#f8,#e0,#07,#fd,#f4,#fa
	db #e6,#fc,#f4,#de,#fa,#f6,#fe,#02
	db #06,#fb,#0a,#fa,#fe,#fa,#0a,#fa
	db #1b,#05,#df,#fb,#22,#f8,#1c,#04
	db #fd,#30,#fa,#22,#fc,#30,#fa,#32
	db #fe,#3e,#79,#03,#fb,#46,#fa,#3a
	db #fa,#46,#fb,#57,#02,#01,#fd,#5e
	db #f0,#fe,#d4,#fb,#5f,#00,#68,#a9
	db #68,#0c,#20,#0c,#0b,#fd,#02,#0a
	db #0a,#09,#09,#08,#03,#08,#07,#07
	db #06,#06,#00,#fd,#10,#ec,#00,#f0
	db #88,#27,#4c,#00,#fc,#46,#f8,#48
	db #05,#05,#04,#04,#ff,#8e,#ce,#fb
	db #54,#fb,#d6,#ec,#40,#ec,#e0,#88
	db #07,#c4,#e0,#fc,#9c,#81,#fa,#9e
	db #05,#05,#04,#04,#03,#03,#e8,#b8
	db #9f,#c4,#e3,#0d,#0d,#fe,#94,#fc
	db #94,#f8,#9a,#70,#90,#ec,#34,#e6
	db #d8,#34,#fc,#de,#f6,#76,#02,#02
	db #e8,#f8,#c4,#23,#0e,#3f,#0e,#0d
	db #fd,#62,#fc,#d4,#fa,#da,#d4,#d0
	db #fc,#7c,#fa,#7e,#f7,#fa,#18,#e8
	db #98,#c4,#c3,#fe,#74,#0c,#fc,#62
	db #fc,#64,#fc,#75,#ff,#fe,#7a,#fd
	db #7b,#f4,#00,#ee,#02,#fc,#b1,#fe
	db #b6,#fc,#37,#e2,#1e,#ff,#d6,#e2
	db #d0,#20,#cc,#78,#d0,#3e,#90,#78
	db #da,#f2,#ea,#0e,#ec,#4c,#e7,#d8
	db #c4,#d8,#60,#c6,#00,#0e,#0e,#fb
	db #54,#fd,#5a,#ec,#62,#ff,#fb,#7b
	db #fd,#5c,#fc,#f2,#f8,#7d,#6f,#8f
	db #00,#85,#00,#85,#00,#85,#db,#1d
	db #85,#fc,#e4,#0a,#f1,#08,#fc,#e6
	db #09,#f1,#1c,#fe,#2f,#77,#08,#fe
	db #32,#f1,#30,#fe,#43,#07,#fe,#46
	db #f1,#44,#fe,#57,#77,#06,#fe,#5a
	db #fb,#58,#fe,#61,#05,#fe,#64,#fb
	db #62,#fe,#6b,#76,#04,#fe,#6e,#fb
	db #6c,#fe,#75,#03,#fe,#78,#fb,#76
	db #03,#06,#02,#02,#01,#01,#00,#00
	db #85,#c6,#85,#00,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#fc,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #41,#00,#00,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#fc,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#41
	db #00,#ff
;
.music_info
	db "Scroll Factory Complete - Main Part 1 (2018)(Impact)(Tom & Jerry)",0
	db "AYC",0

	read "music_end.asm"
