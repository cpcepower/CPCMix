; Music of T&T 2K3 - Main Part (2003)(GPA)()()
; Ripped by Megachur the 20/02/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "T&T2K3MP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #4e00

	read "music_header.asm"

; test player

	call l4e17	; init
.l4e03
	ld bc,#f501
.l4e06
	in a,(c)
	and c
	jr z,l4e06
	halt
	halt
	halt
	call l5019	; play
	call l4e83
	jp l4e03
;
.init_music
.l4e17
;
	;di
	;ld hl,#c9fb
	;ld (#0038),hl
	;ei
	ds 8,#00	; modified by Megachur
	call l5286
	call l528d
	call l5314
	call l5313
	call l53b0
	call l4e3d
	ld a,(l5552)
.l4e34
	push af
	call l5019
	pop af
	dec a
	jr nz,l4e34
	ret
.l4e3d
	ld b,#0e
	ld c,#0d
	xor a
.l4e42
	push bc
	call l4e4b
	pop bc
	dec c
	djnz l4e42
	ret
.l4e4b
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
.l4e62
	ld a,(hl)
	cp #00
	jr z,l4e78
	ld (#0000),a
.l4e6a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4e78
	inc c
.l4e79
	inc de
	ld a,d
	and #03
	ld d,a
	ld (l4e8e),de
	ret
.l4e83
	ld de,#c080
	ld hl,#f4f6
	ld b,l
	out (c),d
	exx
.l4e8e equ $ + 1
	ld de,#0000
	ld l,e
	ld b,#f4
	ld c,#00
.l4e95
	ld h,#78
	ld a,(hl)
.l4e99 equ $ + 1
	cp #00
	jr z,l4ead
	ld (l4e99),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4ead
	inc c
	inc h
	ld a,(hl)
.l4eb1 equ $ + 1
	cp #00
	jr z,l4ec5
	ld (l4eb1),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4ec5
	inc c
	inc h
	ld a,(hl)
.l4ec9 equ $ + 1
	cp #00
	jr z,l4edd
	ld (l4ec9),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4edd
	inc c
	inc h
	ld a,(hl)
.l4ee1 equ $ + 1
	cp #00
	jr z,l4ef5
	ld (l4ee1),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4ef5
	inc c
	inc h
	ld a,(hl)
.l4ef9 equ $ + 1
	cp #00
	jr z,l4f0d
	ld (l4ef9),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4f0d
	inc c
	inc h
	ld a,(hl)
.l4f11 equ $ + 1
	cp #00
	jr z,l4f25
	ld (l4f11),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4f25
	inc c
	inc h
	ld a,(hl)
.l4f29 equ $ + 1
	cp #00
	jr z,l4f3d
	ld (l4f29),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4f3d
	inc c
	inc h
	ld a,(hl)
.l4f41 equ $ + 1
	cp #00
	jr z,l4f55
	ld (l4f41),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4f55
	inc c
	inc h
	ld a,(hl)
.l4f59 equ $ + 1
	cp #00
	jr z,l4f6d
	ld (l4f59),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4f6d
	inc c
	inc h
	ld a,(hl)
.l4f71 equ $ + 1
	cp #00
	jr z,l4f85
	ld (l4f71),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4f85
	inc c
	inc h
	ld a,(hl)
.l4f89 equ $ + 1
	cp #00
	jr z,l4f9d
	ld (l4f89),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4f9d
	inc c
	inc h
	ld a,(hl)
.l4fa1 equ $ + 1
	cp #00
	jr z,l4fb5
	ld (l4fa1),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4fb5
	inc c
	inc h
	ld a,(hl)
.l4fb9 equ $ + 1
	cp #00
	jr z,l4fcd
	ld (l4fb9),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4fcd
	inc c
	inc h
	ld a,(hl)
	inc a
	jr z,l4fe2
	dec a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l4fe2
	inc de
	ld a,d
	and #03
	ld d,a
	ld (l4e8e),de
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
;
.real_play_music
.l5019
;
	di
	ld (l5038),sp
	ld a,(l5552)
	dec a
.l5024 equ $ + 2
	ld hx,#00
	ld iy,l502c
.l502a equ $ + 1
	jp l503e
.l502c
	ld hl,(l502a)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (l502a),de
.l5038 equ $ + 1
	ld sp,#0000
	ei
	ret
.l503e equ $ + 2
	call po,#2150
.l503f
	nop
	jr l508f
	ld d,#00
	ld a,(l5552)
	ld e,a
	or a
	sbc hl,de
	ld (l503f),hl
	dec a
	jp nc,l50dc
	ld b,d
	ld de,l507c
	ld (l502a),de
	ld de,(l5776)
	add hl,de
	ld (l503f),hl
	ld a,c
	ld (l5092),a
	ld (l507d),a
	ld hl,(l4e8e)
	add hl,bc
	ld a,(l5552)
	ld c,a
	add hl,bc
	ld a,h
	and #03
	ld (l5024),a
	ld a,l
	ld (l50a5),a
.l507d equ $ + 1
.l507c
	ld a,#00
	dec a
	jp m,l5089
	ld iy,l508e
.l5087 equ $ + 1
.l5086
	jp l50dc
.l5089
	ld a,(l5552)
	jr l5094
.l508f equ $ + 1
.l508e
	ld a,(l5552)
.l5092 equ $ + 1
	ld b,#00
	sub b
.l5094
	ld hl,(l5087)
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
.l50a5 equ $ + 1
	ld (hl),#00
	inc hl
	ex de,hl
	ldi
	ldi
	ldi
	ldi
	ldi
	ld iy,l50b9
	dec a
	jr l5086
.l50b9
	ld hl,(l5087)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld hl,#afc1
	add hl,de
	jr c,l50d0
	ld hl,l503e
	ld (l502a),de
	ld de,l50dc
.l50d0
	ld (l5087),de
	ld sp,(l5038)
	ei
	ret
.l50dc equ $ + 2
	call po,#3150
	ld (de),a
	ld d,h
.l50e0 equ $ + 1
	jp l516e
	call pe,#3150
	inc e
	ld d,h
	jp l516e
	call p,#3150
	ld h,#54
	jp l516e
	call m,#3150
	jr nc,l514b
	jp l516e
	inc b
	ld d,c
	ld sp,l543a
	jp l516e
	inc c
	ld d,c
	ld sp,l5444
	jp l516e
	inc d
	ld d,c
	ld sp,l544e
	jp l516e
	inc e
	ld d,c
	ld sp,l5458
	jp l516e
	inc h
	ld d,c
	ld sp,l5462
	jp l516e
	inc l
	ld d,c
	ld sp,l546c
	jp l516e
	inc (hl)
	ld d,c
	ld sp,l5476
	jp l516e
	inc a
	ld d,c
	ld sp,l5480
	jp l516e
	ld b,h
	ld d,c
	ld sp,l548a
	jp l516e
	ld a,#50
	ld sp,l5494
	jp l516e
	ld d,h
.l514b
	ld d,c
	ld sp,l549e
	jp l516e
	call c,#3150
	xor b
	ld d,h
	jp l516e
.l515a
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc e
	ex af,af'
	dec a
	exx
	jp p,l5187
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l516e
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l5184
	exx
	ld d,a
	exx
	add b
	jr nc,l51c7
	ex af,af'
.l517c
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l517c
	ex af,af'
.l5184
	exx
	pop bc
	pop hl
.l5187
	sla c
	jr nz,l518f
	ld c,(hl)
	inc hl
	sll c
.l518f
	jr nc,l515a
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l51ac
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
.l51a1
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l51a1
	ex af,af'
	exx
	jr l5187
.l51ac
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
.l51b9
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	djnz l51b9
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l51c7
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l51cf
	ld a,(hl)
	ld (de),a
	inc l
	inc e
	djnz l51cf
	push hl
	push de
	jp (iy)
.l51d9
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
	jp p,l520c
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l51ef
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l5209
	exx
	ld d,a
	exx
	add b
	jr nc,l5270
	ex af,af'
.l51fd
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l51fd
	ex af,af'
.l5209
	exx
	pop bc
	pop hl
.l520c
	sla c
	jr nz,l5214
	ld c,(hl)
	inc hl
	sll c
.l5214
	jr nc,l51d9
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l5243
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
.l5234
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l5234
	ex af,af'
	exx
	jr l520c
.l5243
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
.l525e
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	djnz l525e
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l5270
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l5278
	ld a,(hl)
	ld (de),a
	inc hl
	res 2,h
	inc de
	res 2,d
	djnz l5278
	push hl
	push de
	jp (iy)
.l5286
	ld hl,(l5776)
	ld (l503f),hl
	ret
.l528d
	ld hl,l5555
	ld d,#78
	exx
	ld hl,(l5553)
	inc hl
	inc hl
	push hl
	ld de,#0003
	ld a,(l5552)
	ld b,a
	ld c,#00
.l52a2
	ld a,(hl)
	cp #01
	jr z,l52b3
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
.l52b3
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l52a2
	ld hl,l5555
	ld d,#78
	ld b,#03
	exx
	pop hl
	push hl
	ld de,#0003
	ld a,(l5552)
	ld b,a
.l52cb
	ld a,(hl)
	cp #04
	jr z,l52e8
	exx
	ld a,b
	inc a
	and #03
	ld b,a
	jr nz,l52e1
	ld a,c
	or a
	jr z,l52e1
	dec c
	ld a,d
	add #04
	ld d,a
.l52e1
	ld (hl),d
	inc hl
	ld (hl),#01
	dec hl
	inc d
	exx
.l52e8
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l52cb
	ld hl,l50e0
	ld bc,#0007
	exx
	pop hl
	ld de,#0003
	ld a,(l5552)
	ld b,a
.l52fe
	ld a,(hl)
	cp #01
	exx
	ld de,l516e
	jr z,l530a
	ld de,l51ef
.l530a
	ld (hl),e
	inc hl
	ld (hl),d
	add hl,bc
	exx
	add hl,de
	djnz l52fe
	ret
.l5313
	ret
.l5314
	ld hl,l5555
	ld de,l4e95
	ld b,(hl)
	inc hl
	ld a,(hl)
	inc hl
	cp #01
	call z,l5395
	call nz,l53a2
	ld b,#0d
.l5328
	push bc
	call l5372
	ld b,(hl)
	inc hl
	ld a,(hl)
	cp #04
	call z,l53a2
	jr z,l534b
	dec hl
	dec hl
	cp (hl)
	call nz,l5395
	jr nz,l5349
	dec hl
	ld a,(hl)
	inc hl
	sub b
	inc a
	call z,l539d
	call nz,l5395
.l5349
	inc hl
	inc hl
.l534b
	inc hl
	pop bc
	djnz l5328
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
	ld hl,l4e6a
	ld bc,#000f
	ldir
	dec de
	ld hl,l4e79
	ld bc,#000a
	ldir
	ret
.l5372
	push hl
	ld hl,l4e62
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
	ld hl,l4e6a
	ld bc,#000f
	ldir
	pop hl
	ret
.l5395
	ex de,hl
	ld (hl),#26
	inc hl
	ld (hl),b
	inc hl
	ex de,hl
	ret
.l539d
	ld a,#24
	ld (de),a
	inc de
	ret
.l53a2
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
.l53b0
	ld hl,l503e
	ld (l502a),hl
	ld hl,l50dc
	ld (l5087),hl
	xor a
	ld (l5024),a
	ld hl,#0000
	ld (l4e8e),hl
	call l53d5
	ld hl,l5412
	ld de,l54b2
	ld bc,#00a0
	ldir
	ret
.l53d5
	ld hl,l5555
	exx
	ld a,(l5552)
	ld b,a
	ld de,(l5553)
	inc de
	inc de
	ld hl,l5412
.l53e6
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
	djnz l53e6
	ret
.l5412
	db #00,#78,#00,#78,#00,#00,#40,#00
	db #a8,#57,#00,#79,#00,#79,#00,#00
	db #40,#00,#66,#5d,#00,#7a,#00,#7a
	db #00,#00,#40,#00,#e1,#5d,#00,#7b
	db #00,#7b,#00,#00,#40,#00,#48,#5f
.l543a
	db #00,#7c,#00,#7c,#00,#00,#40,#00
.l5444 equ $ + 2
	db #bb,#5f,#00,#7d,#00,#7d,#00,#00
.l544e equ $ + 4
	db #40,#00,#69,#61,#00,#7e,#00,#7e
.l5458 equ $ + 6
	db #00,#00,#40,#00,#b4,#61,#00,#7f
	db #00,#7f,#00,#00,#40,#00,#2a,#62
.l5462
	db #00,#80,#00,#80,#00,#00,#40,#00
.l546c equ $ + 2
	db #17,#64,#00,#81,#00,#81,#00,#00
.l5476 equ $ + 4
	db #40,#00,#7a,#66,#00,#82,#00,#82
.l5480 equ $ + 6
	db #00,#00,#40,#00,#4e,#67,#00,#83
	db #00,#83,#00,#00,#40,#00,#41,#68
.l548a
	db #00,#84,#00,#84,#00,#00,#40,#00
.l5494 equ $ + 2
	db #19,#69,#00,#85,#00,#85,#00,#00
.l549e equ $ + 4
	db #40,#00,#50,#69,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l54b2
	db #00,#78,#00,#78,#00,#00,#40,#00
	db #a8,#57,#00,#79,#00,#79,#00,#00
	db #40,#00,#66,#5d,#00,#7a,#00,#7a
	db #00,#00,#40,#00,#e1,#5d,#00,#7b
	db #00,#7b,#00,#00,#40,#00,#48,#5f
	db #00,#7c,#00,#7c,#00,#00,#40,#00
	db #bb,#5f,#00,#7d,#00,#7d,#00,#00
	db #40,#00,#69,#61,#00,#7e,#00,#7e
	db #00,#00,#40,#00,#b4,#61,#00,#7f
	db #00,#7f,#00,#00,#40,#00,#2a,#62
	db #00,#80,#00,#80,#00,#00,#40,#00
	db #17,#64,#00,#81,#00,#81,#00,#00
	db #40,#00,#7a,#66,#00,#82,#00,#82
	db #00,#00,#40,#00,#4e,#67,#00,#83
	db #00,#83,#00,#00,#40,#00,#41,#68
	db #00,#84,#00,#84,#00,#00,#40,#00
	db #19,#69,#00,#85,#00,#85,#00,#00
	db #40,#00,#50,#69,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5555 equ $ + 3
.l5553 equ $ + 1
.l5552
	db #0e,#76,#57,#78,#01,#79,#01,#7a
	db #01,#7b,#01,#7c,#01,#7d,#01,#7e
	db #01,#7f,#01,#80,#01,#81,#01,#82
	db #01,#83,#01,#84,#01,#85,#01,#d7
	db #01,#d8,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5776 equ $ + 1
	db #00,#00,#18,#01,#2e,#00,#01,#e9
	db #05,#01,#61,#06,#01,#c5,#07,#01
	db #35,#08,#01,#e0,#09,#01,#28,#0a
	db #01,#9b,#0a,#01,#85,#0c,#01,#e5
	db #0e,#01,#b6,#0f,#01,#a6,#10,#01
	db #7b,#11,#01,#af,#11,#ff,#ff,#ff
	db #ff,#ff,#ff,#5f,#b6,#e9,#00,#3f
	db #f9,#18,#f0,#10,#47,#f9,#30,#f8
	db #28,#4b,#bf,#fd,#40,#55,#f9,#44
	db #fc,#40,#f8,#40,#f8,#20,#f4,#4c
	db #f8,#60,#bf,#f4,#40,#71,#e9,#80
	db #f8,#30,#f8,#70,#f0,#98,#f8,#78
	db #f4,#54,#bf,#f4,#bc,#65,#f9,#d8
	db #e4,#bc,#e4,#fb,#98,#18,#f8,#30
	db #e0,#98,#e0,#f0,#80,#f8,#38,#f8
	db #bf,#1d,#36,#4f,#63,#77,#18,#8b
	db #9f,#b3,#f0,#c0,#f8,#d8,#c7,#db
	db #ef,#06,#d1,#17,#30,#49,#62,#f0
	db #e0,#80,#00,#71,#fb,#e9,#80,#e8
	db #98,#f0,#70,#f4,#54,#f4,#bc,#65
	db #f9,#d8,#e4,#bc,#fe,#e4,#fb,#98
	db #18,#f8,#30,#e0,#98,#f0,#80,#f8
	db #38,#f8,#bf,#1d,#01,#36,#4f,#63
	db #77,#8b,#9f,#b3,#f0,#c0,#80,#f8
	db #d8,#c7,#db,#ef,#d1,#17,#30,#49
	db #5b,#62,#f0,#e0,#15,#f5,#39,#fc
	db #0b,#19,#f9,#09,#f8,#d0,#e7,#f8
	db #10,#f8,#00,#f8,#20,#13,#38,#f2
	db #39,#f0,#08,#f8,#40,#a6,#f8,#50
	db #1c,#f9,#79,#20,#5f,#fa,#71,#f8
	db #60,#18,#f9,#f9,#b1,#fc,#74,#fc
	db #84,#f8,#70,#f8,#90,#21,#65,#fa
	db #a1,#3f,#26,#71,#fa,#a9,#f8,#a8
	db #f8,#68,#f8,#bf,#f9,#99,#f7,#97
	db #cf,#f8,#c0,#f8,#a0,#2a,#7f,#fa
	db #e9,#fc,#78,#fc,#8c,#fc,#80,#f2
	db #f4,#24,#a0,#08,#f8,#28,#f8,#38
	db #10,#2f,#fe,#79,#11,#7f,#32,#fe
	db #7d,#fc,#78,#f4,#83,#f8,#70,#f0
	db #88,#fc,#7c,#fc,#ab,#9f,#f8,#80
	db #0e,#2a,#fe,#b9,#fc,#b0,#fc,#b8
	db #f4,#c3,#f8,#b0,#ff,#f8,#c8,#fc
	db #a8,#f8,#6c,#fc,#ac,#fc,#68,#fc
	db #a4,#fc,#f8,#fc,#fb,#93,#98,#00
	db #1c,#55,#fa,#69,#20,#5f,#fa,#71
	db #f8,#60,#f9,#f8,#f8,#fc,#74,#fc
	db #84,#f8,#70,#f8,#90,#21,#65,#fa
	db #a1,#3f,#26,#71,#fa,#a9,#f8,#a8
	db #f8,#68,#f8,#bf,#f9,#99,#f7,#97
	db #cf,#f8,#c0,#f8,#a0,#2a,#7f,#fa
	db #e9,#fc,#78,#fc,#8c,#fc,#80,#ff
	db #f4,#24,#e0,#08,#f8,#d8,#f8,#b8
	db #f8,#20,#f8,#3f,#f8,#28,#f8,#d0
	db #ff,#f8,#40,#e8,#30,#f8,#77,#f8
	db #80,#f0,#08,#f9,#81,#fb,#f7,#fc
	db #a3,#f8,#f8,#48,#f8,#00,#fc,#a0
	db #f8,#b0,#ef,#c3,#3e,#3d,#3e,#09
	db #3f,#40,#41,#40,#ec,#d4,#55,#fe
	db #fe,#f1,#4a,#8e,#fd,#f4,#43,#ca
	db #fe,#f9,#97,#fd,#fc,#3f,#6d,#be
	db #fe,#01,#fd,#f1,#fe,#fc,#f0,#fd
	db #01,#be,#f8,#00,#66,#32,#fd,#fd
	db #ec,#0c,#2a,#7f,#fe,#31,#fc,#fc
	db #38,#6d,#a9,#fe,#39,#fd,#31,#7f
	db #fc,#30,#fd,#39,#a9,#f0,#38,#3a
	db #21,#65,#fe,#59,#f8,#4c,#fd,#59
	db #65,#f8,#58,#1c,#f3,#fd,#ad,#fc
	db #64,#fc,#bc,#fc,#ac,#26,#71,#fe
	db #81,#fc,#34,#d3,#fc,#28,#fd,#81
	db #71,#f8,#80,#20,#5f,#fe,#99,#ec
	db #8c,#37,#19,#4b,#fe,#b1,#fd,#b9
	db #47,#fc,#b8,#fc,#bb,#fd,#b1,#ff
	db #f7,#b3,#fc,#c0,#fc,#b0,#f8,#c0
	db #fc,#d4,#fc,#a8,#f4,#e3,#fc,#70
	db #ff,#fc,#f3,#fc,#ec,#fc,#f4,#fc
	db #e0,#f8,#5c,#fc,#f8,#f8,#00,#fc
	db #d0,#ff,#f8,#0c,#f8,#cc,#fc,#1c
	db #fc,#78,#fc,#24,#f8,#f0,#f8,#3f
	db #f4,#58,#9f,#fc,#44,#38,#a9,#fe
	db #59,#fc,#74,#f8,#50,#fc,#48,#f8
	db #fc,#f3,#fc,#5c,#fc,#a0,#f8,#7b
	db #d4,#84,#13,#38,#fe,#b1,#f4,#b4
	db #ff,#fd,#b1,#f7,#b3,#ec,#cc,#fc
	db #30,#fc,#e3,#fc,#dc,#fc,#e4,#fc
	db #b0,#ff,#fc,#f3,#fc,#ec,#fc,#f4
	db #ac,#00,#fc,#74,#fc,#58,#f8,#4c
	db #fd,#59,#7f,#a9,#f8,#48,#b0,#70
	db #f8,#10,#fc,#38,#f4,#b4,#f8,#d7
	db #fc,#c8,#ff,#fc,#d0,#fc,#30,#fc
	db #60,#fc,#e0,#fc,#e8,#f8,#f0,#fc
	db #2c,#ec,#03,#fb,#fd,#fd,#fb,#1a
	db #f0,#10,#f8,#d8,#f8,#28,#4b,#fd
	db #40,#fc,#44,#ff,#fc,#47,#fc,#40
	db #f8,#40,#f8,#20,#f4,#4c,#f8,#60
	db #f4,#40,#fc,#ac,#fe,#ec,#83,#f8
	db #30,#f8,#70,#f0,#98,#f8,#78,#f4
	db #54,#f4,#bc,#65,#ff,#f9,#d8,#e4
	db #bc,#e4,#fb,#98,#18,#f8,#30,#e0
	db #98,#f0,#80,#f8,#38,#80,#f8,#bf
	db #1d,#36,#4f,#63,#77,#8b,#9f,#60
	db #b3,#f0,#c0,#f8,#d8,#c7,#db,#ef
	db #d1,#17,#15,#30,#49,#62,#f0,#e0
	db #5a,#e9,#00,#3c,#f9,#18,#bb,#f0
	db #10,#43,#f9,#30,#f8,#28,#fc,#b4
	db #50,#f9,#44,#f8,#b0,#fb,#fc,#48
	db #f8,#20,#f4,#4c,#f4,#ac,#f8,#44
	db #6b,#e9,#80,#f8,#30,#fb,#f8,#70
	db #f0,#98,#f8,#78,#f4,#54,#f4,#bc
	db #5f,#f9,#d8,#e4,#bc,#fe,#e4,#fb
	db #98,#18,#f8,#30,#e0,#98,#f0,#80
	db #f8,#38,#f8,#bf,#0d,#01,#26,#3f
	db #53,#67,#7b,#8f,#a3,#f0,#c0,#80
	db #f8,#d8,#b7,#cb,#df,#c1,#07,#20
	db #39,#5b,#52,#f0,#e0,#14,#f5,#39
	db #fc,#0b,#18,#f9,#09,#f8,#d0,#e7
	db #f8,#10,#f8,#00,#f8,#20,#12,#35
	db #f2,#39,#f0,#08,#f8,#40,#a6,#f8
	db #50,#1a,#f9,#79,#1e,#5a,#fa,#71
	db #f8,#60,#16,#f9,#f9,#b1,#fc,#74
	db #fc,#84,#f8,#70,#f8,#90,#20,#5f
	db #fa,#a1,#3f,#23,#6b,#fa,#a9,#f8
	db #a8,#f8,#68,#f8,#bf,#f9,#99,#f7
	db #97,#cf,#f8,#c0,#f8,#a0,#28,#78
	db #fa,#e9,#fc,#78,#fc,#8c,#fc,#80
	db #f2,#f4,#24,#a0,#08,#f8,#28,#f8
	db #38,#0f,#2d,#fe,#79,#10,#7f,#2f
	db #fe,#7d,#fc,#78,#f4,#83,#f8,#70
	db #f0,#88,#fc,#7c,#fc,#ab,#9f,#f8
	db #80,#0d,#28,#fe,#b9,#fc,#b0,#fc
	db #b8,#f4,#c3,#f8,#b0,#ff,#f8,#c8
	db #fc,#a8,#f8,#6c,#fc,#ac,#fc,#68
	db #fc,#a4,#fc,#f8,#fc,#fb,#93,#98
	db #00,#1a,#50,#fa,#69,#1e,#5a,#fa
	db #71,#f8,#60,#f9,#f8,#f8,#fc,#74
	db #fc,#84,#f8,#70,#f8,#90,#20,#5f
	db #fa,#a1,#3f,#23,#6b,#fa,#a9,#f8
	db #a8,#f8,#68,#f8,#bf,#f9,#99,#f7
	db #97,#cf,#f8,#c0,#f8,#a0,#28,#78
	db #fa,#e9,#fc,#78,#fc,#8c,#fc,#80
	db #ff,#f4,#24,#e0,#08,#f8,#d8,#f8
	db #b8,#f8,#20,#f8,#3f,#f8,#28,#f8
	db #d0,#ff,#f8,#40,#e8,#30,#f8,#77
	db #f8,#80,#f0,#08,#f9,#81,#fb,#f7
	db #fc,#a3,#f8,#f8,#48,#f8,#00,#fc
	db #a0,#f8,#b0,#ef,#c3,#3b,#3a,#3b
	db #09,#3c,#3d,#3e,#3d,#ec,#d4,#50
	db #f0,#fe,#f1,#4a,#86,#fd,#f4,#3f
	db #be,#fe,#f9,#8e,#fd,#fc,#3c,#6d
	db #b4,#fe,#01,#fd,#f1,#f0,#fc,#f0
	db #fd,#01,#b4,#f8,#00,#66,#2f,#fd
	db #fd,#ec,#0c,#28,#78,#fe,#31,#fc
	db #fc,#35,#6d,#a0,#fe,#39,#fd,#31
	db #78,#fc,#30,#fd,#39,#a0,#f0,#38
	db #3a,#20,#5f,#fe,#59,#f8,#4c,#fd
	db #59,#5f,#f8,#58,#1a,#f3,#fd,#ad
	db #fc,#64,#fc,#bc,#fc,#ac,#23,#6b
	db #fe,#81,#fc,#34,#d3,#fc,#28,#fd
	db #81,#6b,#f8,#80,#1e,#5a,#fe,#99
	db #ec,#8c,#37,#18,#47,#fe,#b1,#fd
	db #b9,#43,#fc,#b8,#fc,#bb,#fd,#b1
	db #ff,#f7,#b3,#fc,#c0,#fc,#b0,#f8
	db #c0,#fc,#d4,#fc,#a8,#f4,#e3,#fc
	db #70,#ff,#fc,#f3,#fc,#ec,#fc,#f4
	db #fc,#e0,#f8,#5c,#fc,#f8,#f8,#00
	db #fc,#d0,#ff,#f8,#0c,#f8,#cc,#fc
	db #1c,#fc,#78,#fc,#24,#f8,#f0,#f8
	db #3f,#f4,#58,#9f,#fc,#44,#35,#a0
	db #fe,#59,#fc,#74,#f8,#50,#fc,#48
	db #f8,#fc,#f3,#fc,#5c,#fc,#a0,#f8
	db #7b,#d4,#84,#12,#35,#fe,#b1,#f4
	db #b4,#ff,#fd,#b1,#f7,#b3,#ec,#cc
	db #fc,#30,#fc,#e3,#fc,#dc,#fc,#e4
	db #fc,#b0,#ff,#fc,#f3,#fc,#ec,#fc
	db #f4,#ac,#00,#fc,#74,#fc,#58,#f8
	db #4c,#fd,#59,#7f,#a0,#f8,#48,#b0
	db #70,#f8,#10,#fc,#38,#f4,#b4,#f8
	db #d7,#fc,#c8,#ff,#fc,#d0,#fc,#30
	db #fc,#60,#fc,#e0,#fc,#e8,#f8,#f0
	db #fc,#2c,#ec,#03,#fb,#fd,#fd,#fb
	db #1a,#f0,#10,#f8,#d8,#f8,#28,#47
	db #fd,#40,#fc,#44,#ff,#fc,#47,#fc
	db #40,#f8,#40,#f8,#20,#f4,#4c,#f8
	db #60,#f4,#40,#fc,#ac,#fe,#ec,#83
	db #f8,#30,#f8,#70,#f0,#98,#f8,#78
	db #f4,#54,#f4,#bc,#5f,#ff,#f9,#d8
	db #e4,#bc,#e4,#fb,#98,#18,#f8,#30
	db #e0,#98,#f0,#80,#f8,#38,#80,#f8
	db #bf,#0d,#26,#3f,#53,#67,#7b,#8f
	db #60,#a3,#f0,#c0,#f8,#d8,#b7,#cb
	db #df,#c1,#07,#10,#20,#39,#52,#f0
	db #e0,#00,#dd,#01,#00,#38,#ff,#01
	db #f9,#c8,#f0,#c0,#f4,#df,#02,#fd
	db #ec,#e7,#f0,#e0,#38,#00,#01,#00
	db #00,#01,#f9,#c8,#f0,#c0,#f4,#df
	db #7f,#02,#fd,#ec,#f0,#e0,#38,#00
	db #01,#00,#01,#c7,#01,#c6,#01,#c5
	db #fb,#01,#c4,#01,#c3,#01,#c2,#01
	db #c1,#f8,#bf,#01,#f9,#c8,#f0,#c0
	db #bc,#f4,#df,#02,#fd,#ec,#f0,#e0
	db #38,#00,#01,#00,#00,#01,#ef,#f9
	db #c8,#f0,#c0,#f4,#df,#02,#fd,#ec
	db #f0,#e0,#38,#00,#01,#00,#ff,#01
	db #c7,#01,#c6,#01,#c5,#01,#c4,#01
	db #c3,#01,#c2,#01,#c1,#f8,#bf,#76
	db #01,#f9,#c8,#f0,#c0,#f4,#df,#02
	db #fd,#ec,#f0,#e0,#00,#ad,#f5,#00
	db #5f,#e9,#0c,#3f,#f9,#24,#f0,#1c
	db #47,#f9,#3c,#af,#f8,#34,#4b,#fd
	db #4c,#55,#f9,#50,#fc,#4c,#f8,#4c
	db #f8,#2c,#ef,#f4,#58,#f8,#6c,#f4
	db #4c,#71,#e9,#8c,#f8,#3c,#f8,#7c
	db #f0,#a4,#ef,#f8,#84,#f4,#60,#f4
	db #c8,#65,#f9,#e4,#e8,#c8,#f0,#ec
	db #88,#14,#fa,#f8,#3c,#e0,#a4,#f0
	db #8c,#f8,#44,#cc,#cb,#7d,#f1,#00
	db #1d,#00,#36,#4f,#63,#77,#8b,#9f
	db #b3,#be,#db,#f9,#18,#e0,#00,#c5
	db #f1,#40,#f8,#30,#e2,#f9,#58,#e0
	db #40,#6d,#3a,#f1,#80,#f8,#70,#1d
	db #f9,#98,#e0,#80,#fc,#f1,#c0,#bf
	db #f8,#b0,#fe,#f9,#d8,#e0,#c0,#30
	db #00,#d0,#cf,#30,#00,#f8,#b0,#7e
	db #fe,#f9,#d8,#e0,#c0,#01,#00,#01
	db #ff,#01,#fe,#dd,#fd,#fa,#ed,#f9
	db #20,#e8,#08,#c0,#c0,#c5,#f1,#80
	db #f8,#70,#e2,#f9,#98,#b7,#e0,#80
	db #3a,#f1,#c0,#f8,#b0,#1d,#f9,#d8
	db #01,#e0,#17,#df,#ff,#fc,#b0,#fc
	db #cb,#f7,#d0,#f5,#d1,#f0,#cc,#f4
	db #e4,#e0,#00,#e0,#00,#fb,#b8,#80
	db #f4,#c0,#fb,#ec,#f9,#98,#e0,#80
	db #fc,#f1,#c0,#f8,#b0,#7b,#fe,#f9
	db #d8,#e0,#c0,#30,#00,#d0,#cf,#67
	db #f1,#00,#f8,#b0,#6d,#b4,#f9,#18
	db #e0,#00,#ab,#f1,#40,#f8,#30,#d6
	db #f9,#58,#b6,#e0,#40,#1a,#f1,#80
	db #f8,#70,#0d,#f9,#98,#e0,#80,#e0
	db #df,#f1,#c0,#f8,#b0,#f0,#f9,#d8
	db #e0,#c0,#30,#00,#d0,#cf,#30,#00
	db #bf,#f8,#b0,#f0,#f9,#d8,#e0,#c0
	db #01,#00,#01,#ff,#01,#fe,#dd,#fd
	db #76,#cf,#f9,#20,#e8,#08,#c0,#c0
	db #ab,#f1,#80,#f8,#70,#d6,#db,#f9
	db #98,#e0,#80,#1a,#f1,#c0,#f8,#b0
	db #0d,#f9,#d8,#01,#e0,#ff,#17,#df
	db #fc,#b0,#fc,#cb,#f8,#b0,#f4,#d0
	db #f0,#cc,#f4,#e4,#e0,#00,#f6,#e0
	db #00,#b8,#80,#f4,#c0,#fc,#74,#0d
	db #f9,#98,#e0,#80,#e0,#de,#f1,#c0
	db #f8,#b0,#f0,#f9,#d8,#e0,#c0,#30
	db #00,#d0,#cf,#00,#cd,#01,#00,#01
	db #00,#00,#01,#e9,#00,#98,#f8,#02
	db #f1,#80,#ff,#f0,#68,#e0,#80,#80
	db #00,#68,#40,#c0,#d7,#40,#18,#98
	db #18,#01,#40,#ff,#01,#3f,#1e,#3e
	db #e8,#a8,#b8,#d8,#b8,#e0,#e8,#20
	db #01,#e0,#17,#df,#ff,#d8,#d0,#d8
	db #ef,#90,#58,#e8,#c0,#e0,#80,#80
	db #00,#68,#40,#c0,#d7,#ff,#40,#18
	db #98,#18,#68,#40,#c0,#d7,#40,#18
	db #98,#18,#01,#40,#01,#3f,#ff,#1e
	db #3e,#e8,#a8,#b8,#d8,#b8,#e0,#e8
	db #20,#01,#e0,#17,#df,#d8,#d0,#fe
	db #d8,#ef,#90,#58,#e8,#c0,#e0,#80
	db #80,#00,#68,#40,#d8,#d7,#5f,#3e
	db #4b,#3f,#fb,#00,#ec,#00,#fb,#1b
	db #e9,#01,#f8,#35,#71,#fe,#fe,#3c
	db #fb,#40,#e8,#40,#fc,#5f,#fc,#5b
	db #f0,#50,#f8,#75,#8e,#f8,#fe,#7c
	db #fb,#80,#ec,#80,#fb,#9b,#fd,#99
	db #7f,#65,#55,#7f,#7f,#f0,#88,#f8
	db #b5,#fc,#a4,#fc,#c1,#ec,#c0,#fb
	db #db,#ed,#c9,#ff,#f4,#bc,#48,#00
	db #f8,#b0,#f8,#f8,#e8,#c5,#fc,#db
	db #fb,#e3,#f5,#d9,#bf,#fc,#f1,#7d
	db #f9,#f8,#48,#00,#f8,#b5,#f0,#e8
	db #e0,#d8,#f8,#a4,#ff,#f8,#e8,#48
	db #00,#f8,#b0,#f8,#f8,#e8,#c5,#fc
	db #db,#fb,#e3,#f5,#d9,#bf,#fc,#f1
	db #7d,#f9,#f8,#48,#00,#f8,#b5,#f0
	db #e8,#e0,#d8,#f8,#a4,#ff,#f8,#e8
	db #01,#00,#01,#ff,#01,#fe,#bd,#fd
	db #e4,#c0,#fc,#59,#fc,#5f,#f7,#fb
	db #d8,#f1,#51,#f8,#75,#fe,#f5,#4b
	db #fb,#80,#fc,#83,#f0,#7c,#ff,#fb
	db #9b,#fc,#99,#f9,#a1,#f8,#94,#f4
	db #b1,#fc,#f4,#fc,#c1,#f8,#f4,#ff
	db #f4,#c0,#fc,#db,#01,#e0,#01,#df
	db #9e,#de,#f0,#a8,#f0,#48,#fc,#5f
	db #ff,#d8,#a4,#f0,#84,#fb,#9b,#ed
	db #c9,#f4,#b1,#ec,#e0,#f8,#cc,#fb
	db #db,#ff,#29,#e1,#f8,#b0,#f8,#f8
	db #e8,#c5,#fc,#db,#fb,#e3,#f5,#d9
	db #fc,#f1,#47,#7d,#f9,#f8,#5a,#47
	db #3c,#fb,#00,#ec,#00,#fb,#1b,#df
	db #e9,#01,#f8,#35,#6b,#fe,#3c,#fb
	db #40,#e8,#40,#fc,#5f,#fc,#5b,#df
	db #f0,#50,#f8,#75,#86,#fe,#7c,#fb
	db #80,#ec,#80,#fb,#9b,#fd,#99,#0f
	db #78,#5f,#50,#78,#f0,#88,#f8,#b5
	db #fc,#a4,#fc,#c1,#ff,#ec,#c0,#fb
	db #db,#ed,#c9,#f4,#bc,#48,#00,#f8
	db #b0,#f8,#f8,#e8,#c5,#f7,#fc,#db
	db #fb,#e3,#f5,#d9,#fc,#f1,#67,#f9
	db #f8,#48,#00,#f8,#b5,#ff,#f0,#e8
	db #e0,#d8,#f8,#a4,#f8,#e8,#01,#00
	db #01,#ff,#01,#fe,#bd,#fd,#fe,#e4
	db #c0,#fc,#59,#fc,#5f,#fb,#d8,#f1
	db #51,#f8,#75,#fe,#f5,#47,#ff,#fb
	db #80,#fc,#83,#f0,#7c,#fb,#9b,#fc
	db #99,#f9,#a1,#f8,#94,#f4,#b1,#ff
	db #fc,#f4,#fc,#c1,#f8,#f4,#f4,#c0
	db #fc,#db,#01,#e0,#01,#df,#9e,#de
	db #ff,#f0,#a8,#f0,#48,#fc,#5f,#d8
	db #a4,#f0,#84,#fb,#9b,#ed,#c9,#f4
	db #b1,#ff,#ec,#e0,#f8,#cc,#fb,#db
	db #29,#e1,#f8,#b0,#f8,#f8,#e8,#c5
	db #fc,#db,#e8,#fb,#e3,#f5,#d9,#fc
	db #f1,#67,#f9,#f8,#00,#dc,#01,#00
	db #08,#ff,#01,#f9,#f8,#08,#00,#01
	db #00,#00,#01,#ff,#f9,#f8,#08,#00
	db #01,#00,#01,#f7,#01,#f6,#01,#f5
	db #01,#f4,#01,#f3,#ee,#01,#f2,#01
	db #f1,#f8,#ef,#01,#f9,#f8,#08,#00
	db #01,#00,#00,#7f,#01,#f9,#f8,#08
	db #00,#01,#00,#01,#f7,#01,#f6,#01
	db #f5,#01,#f4,#f4,#01,#f3,#01,#f2
	db #01,#f1,#f8,#ef,#01,#f9,#f8,#00
	db #cf,#01,#00,#36,#ff,#07,#03,#f4
	db #cb,#f8,#c8,#e8,#c8,#f6,#e8,#ff
	db #ea,#ba,#e0,#b0,#01,#18,#6d,#17
	db #fa,#b2,#f8,#cf,#f6,#b0,#ea,#ca
	db #ff,#f6,#e8,#38,#02,#01,#0a,#01
	db #c9,#01,#c8,#01,#c7,#01,#c6,#01
	db #c5,#ff,#f2,#ac,#d0,#ca,#38,#02
	db #01,#0a,#f9,#b1,#f8,#cf,#f6,#b0
	db #ea,#ca,#ff,#f6,#e8,#38,#02,#01
	db #0a,#f9,#b1,#f8,#cf,#f6,#b0,#ea
	db #ca,#f6,#e8,#ff,#38,#02,#01,#0a
	db #01,#c9,#01,#c8,#01,#c7,#01,#c6
	db #01,#c5,#f2,#ac,#ff,#d0,#ca,#38
	db #02,#01,#0a,#f9,#b1,#f8,#cf,#f6
	db #b0,#ea,#ca,#f8,#e8,#3a,#ad,#f5
	db #00,#39,#fd,#0c,#38,#f9,#10,#fc
	db #08,#3c,#fd,#1c,#ff,#f8,#10,#c8
	db #27,#d4,#1c,#e8,#0c,#f0,#8c,#ac
	db #38,#e4,#88,#9c,#24,#fc,#fc,#0c
	db #f8,#0c,#fc,#18,#ec,#18,#f0,#0c
	db #f4,#a8,#31,#38,#1d,#30,#31,#32
	db #fd,#cc,#f8,#b4,#fc,#c8,#30,#fd
	db #dc,#05,#33,#3a,#32,#33,#36,#fd
	db #e4,#33,#fc,#cc,#eb,#fd,#e8,#fc
	db #e0,#fc,#e9,#17,#f9,#e9,#2a,#f9
	db #b1,#fc,#00,#c7,#fc,#c0,#fe,#08
	db #28,#2a,#28,#fd,#14,#fc,#08,#fc
	db #9c,#fb,#f4,#00,#fa,#24,#f6,#12
	db #f2,#24,#ea,#2a,#2e,#f9,#9d,#dc
	db #28,#fb,#e8,#0c,#fa,#8c,#ce,#2a
	db #d0,#1c,#84,#0c,#2b,#fc,#0c,#e1
	db #0d,#e0,#f0,#8c,#f8,#84,#fc,#bc
	db #31,#38,#30,#31,#30,#e0,#fd,#cc
	db #f9,#b9,#f7,#c7,#33,#3a,#32,#33
	db #36,#9e,#fd,#e4,#33,#32,#fd,#e9
	db #fd,#e8,#fc,#e0,#fc,#e9,#17,#ff
	db #f9,#e9,#e4,#40,#94,#1c,#ac,#08
	db #80,#9c,#01,#5c,#01,#5b,#ea,#5a
	db #07,#2b,#39,#29,#2b,#29,#fd,#74
	db #08,#78,#b4,#f0,#6d,#39,#fd,#bc
	db #ec,#a0,#29,#fd,#d4,#f0,#98,#2b
	db #fd,#bd,#fb,#f0,#cc,#18,#fc,#f2
	db #bc,#36,#f2,#f8,#a4,#3a,#fd,#c4
	db #fc,#b0,#c1,#f8,#c4,#fc,#b4,#2b
	db #39,#29,#2b,#2c,#fd,#dc,#ef,#f0
	db #c8,#ee,#e0,#f6,#ba,#39,#fd,#0c
	db #84,#10,#e8,#0c,#fa,#8c,#ef,#ce
	db #2a,#d0,#1c,#84,#0c,#2b,#fc,#0c
	db #e1,#0d,#f0,#8c,#f8,#84,#83,#fc
	db #bc,#31,#38,#30,#31,#30,#fd,#cc
	db #f9,#b9,#82,#f7,#c7,#33,#3a,#32
	db #33,#36,#fd,#e4,#33,#7b,#32,#fd
	db #e9,#fd,#e8,#fc,#e0,#fc,#e9,#17
	db #f9,#e9,#78,#00,#fb,#e4,#08,#fa
	db #8c,#ce,#2a,#d0,#1c,#84,#0c,#2b
	db #fc,#0c,#e1,#0d,#e0,#f0,#8c,#f8
	db #84,#fc,#bc,#33,#3a,#32,#33,#32
	db #bb,#fd,#cc,#3a,#f9,#d0,#f8,#c8
	db #fc,#d8,#36,#fd,#e4,#fa,#db,#df
	db #fa,#de,#fc,#e9,#17,#f9,#e9,#e4
	db #40,#94,#1c,#ac,#08,#80,#9c,#e0
	db #01,#5c,#01,#5b,#ea,#5a,#2b,#39
	db #29,#2b,#29,#ed,#fd,#74,#08,#78
	db #b4,#f0,#39,#fd,#bc,#ec,#a0,#29
	db #fd,#d4,#bf,#f0,#98,#2b,#fd,#bd
	db #f0,#cc,#18,#fc,#f2,#bc,#36,#f2
	db #f8,#a4,#78,#3a,#fd,#c4,#fc,#b0
	db #f8,#c4,#fc,#b4,#2b,#39,#29,#3d
	db #2b,#2c,#fd,#dc,#f0,#c8,#ee,#e0
	db #f6,#ba,#39,#fd,#0c,#fd,#84,#10
	db #e8,#0c,#fa,#8c,#ce,#2a,#d0,#1c
	db #84,#0c,#2b,#fc,#0c,#f0,#e1,#0d
	db #f0,#8c,#f8,#84,#fc,#bc,#33,#3a
	db #32,#33,#5d,#32,#fd,#cc,#3a,#f9
	db #d0,#f8,#c8,#fc,#d8,#36,#fd,#e4
	db #e8,#fa,#db,#fa,#de,#fc,#e9,#17
	db #f9,#e9,#0e,#a5,#fe,#00,#0f,#fc
	db #03,#0e,#0d,#fe,#09,#00,#fd,#0c
	db #7f,#0b,#f9,#10,#f8,#00,#f8,#10
	db #e8,#10,#fc,#30,#e8,#3c,#e8,#34
	db #ff,#f0,#5c,#e0,#04,#e4,#0c,#d4
	db #40,#fb,#84,#cd,#71,#9c,#24,#fc
	db #0c,#fc,#f4,#0c,#ec,#e0,#ec,#0c
	db #f8,#ac,#fd,#ba,#fe,#08,#0c,#0b
	db #70,#0a,#f7,#b0,#f9,#c9,#f8,#d8
	db #09,#08,#07,#06,#0f,#05,#04,#03
	db #02,#ef,#e0,#79,#01,#e4,#08,#e4
	db #0c,#ff,#d4,#40,#fb,#84,#cd,#71
	db #9c,#24,#fc,#0c,#f4,#0c,#ec,#e0
	db #ec,#0c,#e3,#f8,#ac,#fd,#ba,#fe
	db #08,#0c,#0b,#0a,#f7,#b0,#f9,#c9
	db #80,#f8,#d8,#09,#08,#07,#06,#05
	db #04,#03,#7b,#02,#ef,#e0,#e9,#71
	db #ec,#98,#eb,#24,#0d,#fa,#41,#c7
	db #08,#ff,#d1,#51,#ef,#88,#cd,#41
	db #f8,#dc,#e4,#cc,#9c,#18,#f8,#78
	db #c8,#04,#ff,#d8,#7c,#e8,#dc,#f4
	db #ac,#8c,#08,#e4,#fc,#d7,#70,#cd
	db #41,#f8,#dc,#ef,#e4,#cc,#d7,#c8
	db #d1,#c1,#00,#f9,#70,#d0,#08,#ec
	db #58,#f0,#38,#a5,#fd,#cb,#0c,#fd
	db #cf,#0b,#0a,#f9,#d4,#09,#fd,#dc
	db #55,#08,#fd,#e0,#07,#fd,#e4,#06
	db #fd,#e8,#05,#fd,#ec,#df,#ec,#f0
	db #48,#fc,#00,#fd,#bc,#fc,#b4,#e0
	db #ac,#fc,#e3,#f8,#d4,#ff,#e4,#b8
	db #d0,#04,#fc,#3b,#f4,#38,#c8,#0c
	db #a0,#84,#e0,#d4,#48,#04,#fd,#e8
	db #7c,#fc,#d3,#f8,#f4,#fc,#d0,#f4
	db #e0,#fd,#dd,#0c,#fc,#f0,#4a,#0a
	db #fe,#f8,#0b,#09,#fe,#fc,#0a,#f7
	db #b8,#0d,#ff,#fe,#09,#f8,#d8,#f4
	db #cc,#f8,#10,#e8,#10,#e0,#a0,#ec
	db #38,#f0,#5c,#ff,#e0,#04,#e4,#0c
	db #d4,#40,#fb,#84,#cd,#71,#9c,#24
	db #fc,#0c,#f4,#0c,#f8,#ec,#e0,#ec
	db #0c,#f8,#ac,#fd,#ba,#fe,#08,#0c
	db #0b,#0a,#e0,#f7,#b0,#f9,#c9,#f8
	db #d8,#09,#08,#07,#06,#05,#1f,#04
	db #03,#02,#ef,#e0,#79,#01,#e4,#08
	db #e4,#0c,#d4,#40,#ff,#fb,#84,#cd
	db #71,#9c,#24,#fc,#0c,#f4,#0c,#ec
	db #e0,#ec,#0c,#f8,#ac,#c7,#fd,#ba
	db #fe,#08,#0c,#0b,#0a,#f7,#b0,#f9
	db #c9,#f8,#d8,#00,#09,#08,#07,#06
	db #05,#04,#03,#02,#f7,#ef,#e0,#e9
	db #71,#ec,#98,#eb,#24,#0d,#fa,#41
	db #c7,#08,#d1,#51,#ff,#ef,#88,#cd
	db #41,#f8,#dc,#e4,#cc,#9c,#18,#f8
	db #78,#c8,#04,#d8,#7c,#ff,#e8,#dc
	db #f4,#ac,#8c,#08,#e4,#fc,#d7,#70
	db #cd,#41,#f8,#dc,#e4,#cc,#df,#d7
	db #c8,#d1,#c1,#00,#f9,#70,#d0,#08
	db #ec,#58,#f0,#38,#fd,#cb,#4a,#0c
	db #fd,#cf,#0b,#0a,#f9,#d4,#09,#fd
	db #dc,#08,#ab,#fd,#e0,#07,#fd,#e4
	db #06,#fd,#e8,#05,#fd,#ec,#ec,#f0
	db #bf,#48,#fc,#00,#fd,#bc,#fc,#b4
	db #e0,#ac,#fc,#e3,#f8,#d4,#e4,#b8
	db #ff,#d0,#04,#fc,#3b,#f4,#38,#c8
	db #0c,#a0,#84,#e0,#d4,#48,#04,#e8
	db #7c,#fa,#fc,#d3,#f8,#f4,#fc,#d0
	db #f4,#e0,#fd,#dd,#0c,#fc,#f0,#0a
	db #95,#fe,#f8,#0b,#09,#fe,#fc,#0a
	db #f7,#b8,#0d,#fe,#09,#ff,#f8,#d8
	db #f4,#cc,#f8,#10,#e8,#10,#e0,#a0
	db #ec,#38,#f0,#5c,#e0,#04,#ff,#e4
	db #0c,#d4,#40,#fb,#84,#cd,#71,#9c
	db #24,#fc,#0c,#f4,#0c,#ec,#e0,#f1
	db #ec,#0c,#f8,#ac,#fd,#ba,#fe,#08
	db #0c,#0b,#0a,#f7,#b0,#c0,#f9,#c9
	db #f8,#d8,#09,#08,#07,#06,#05,#04
	db #20,#03,#02,#f0,#e0,#00,#a9,#f5
	db #00,#09,#fe,#0c,#0a,#fc,#0f,#09
	db #08,#fe,#15,#bf,#fc,#08,#06,#f9
	db #1c,#f8,#0c,#f8,#1c,#e8,#1c,#fc
	db #3c,#e8,#48,#ff,#e8,#40,#f0,#68
	db #e0,#10,#e4,#18,#d4,#4c,#fb,#90
	db #f5,#8d,#fc,#07,#ff,#78,#0c,#fc
	db #18,#f4,#18,#ec,#ec,#ec,#18,#f8
	db #b8,#f4,#b8,#f8,#94,#98,#e8,#e7
	db #0b,#10,#fa,#01,#f8,#00,#0e,#0f
	db #0f,#07,#0e,#0d,#0c,#0b,#0a,#f0
	db #00,#01,#08,#5f,#07,#bf,#e8,#c7
	db #00,#e1,#e0,#38,#00,#01,#08,#01
	db #c7,#01,#c6,#01,#c5,#ee,#01,#c4
	db #01,#c3,#fe,#c1,#00,#fd,#c4,#fc
	db #b0,#fc,#c4,#0b,#47,#0c,#fd,#b5
	db #09,#08,#07,#f8,#b0,#ec,#c8,#fc
	db #e4,#27,#09,#0a,#fc,#ec,#06,#05
	db #3c,#00,#01,#04,#e3,#c2,#73,#00
	db #e1,#e0,#38,#00,#01,#08,#10,#00
	db #c9,#c8,#38,#00,#fe,#01,#08,#01
	db #c7,#01,#c6,#01,#c5,#01,#c4,#01
	db #c3,#fe,#c1,#00,#e4,#fd,#c4,#fc
	db #b0,#fc,#c4,#0b,#0c,#fd,#b5,#09
	db #08,#72,#07,#f8,#b0,#ec,#c8,#fc
	db #e4,#09,#0a,#fc,#ec,#06,#74,#05
	db #3c,#00,#01,#04,#fb,#c2,#00,#c9
	db #c8,#0f,#20,#0f,#0e,#fe,#02,#0d
	db #0d,#0c,#09,#09,#03,#08,#07,#07
	db #06,#05,#04,#f8,#00,#fc,#10,#7b
	db #00,#fd,#1c,#ec,#08,#fc,#2c,#fc
	db #37,#0b,#fd,#3c,#e4,#00,#ff,#fc
	db #54,#f8,#1c,#cc,#28,#f8,#60,#c0
	db #64,#f0,#cc,#ec,#a4,#50,#08,#d9
	db #e8,#68,#f6,#cf,#0a,#fb,#da,#e8
	db #18,#0b,#10,#fa,#f9,#fe,#48,#00
	db #d4,#78,#f0,#cc,#ec,#a4,#50,#08
	db #e8,#68,#f6,#cf,#0a,#cf,#fb,#da
	db #e8,#18,#0b,#10,#fa,#f9,#48,#00
	db #d4,#78,#f0,#cc,#ff,#ec,#a4,#01
	db #08,#01,#07,#01,#06,#bd,#05,#e8
	db #40,#d4,#60,#f0,#64,#ff,#d0,#9c
	db #ec,#8c,#ec,#48,#01,#f4,#01,#f3
	db #aa,#f2,#e8,#20,#d4,#60,#fd,#e8
	db #0c,#c0,#64,#f0,#cc,#3c,#f4,#e8
	db #68,#f6,#cf,#0a,#fb,#da,#9f,#e8
	db #18,#0b,#10,#fa,#f9,#48,#00,#d4
	db #78,#f0,#cc,#ec,#a4,#ec,#50,#08
	db #e8,#68,#f6,#cf,#0a,#fb,#da,#e8
	db #18,#0b,#10,#ff,#fa,#f9,#48,#00
	db #d4,#78,#f0,#cc,#ec,#a4,#01,#08
	db #01,#07,#01,#06,#ff,#bd,#05,#e8
	db #40,#d4,#60,#f0,#64,#d0,#9c,#ec
	db #8c,#ec,#48,#01,#f4,#ff,#01,#f3
	db #aa,#f2,#e8,#20,#d4,#60,#e8,#0c
	db #c0,#64,#f0,#cc,#3c,#f4,#d9,#e8
	db #68,#f6,#cf,#0a,#fb,#da,#e8,#18
	db #0b,#10,#fa,#f9,#00,#d6,#01,#00
	db #08,#ff,#0c,#f9,#f8,#18,#e9,#00
	db #d8,#f8,#1c,#b5,#e9,#40,#0e,#f9
	db #58,#e0,#40,#23,#e9,#80,#12,#f9
	db #98,#af,#e0,#80,#1f,#e9,#c0,#10
	db #f9,#d8,#e0,#c0,#28,#00,#e0,#d7
	db #df,#d8,#18,#48,#20,#10,#f9,#d8
	db #e0,#c0,#01,#00,#01,#ff,#01,#fe
	db #d6,#bd,#fd,#c0,#c0,#1c,#e9,#80
	db #0e,#f9,#98,#e0,#80,#23,#bf,#e9
	db #c0,#12,#f9,#d8,#01,#e0,#07,#df
	db #d8,#d7,#c0,#00,#a8,#80,#6b,#12
	db #f9,#98,#e0,#80,#1f,#e9,#c0,#10
	db #f9,#d8,#e0,#c0,#eb,#28,#00,#e0
	db #d7,#f8,#38,#16,#e9,#00,#0b,#f9
	db #18,#e0,#00,#5a,#1b,#e9,#40,#0d
	db #f9,#58,#e0,#40,#21,#e9,#80,#11
	db #d7,#f9,#98,#e0,#80,#1e,#e9,#c0
	db #0f,#f9,#d8,#e0,#c0,#28,#00,#ef
	db #e0,#d7,#d8,#18,#48,#20,#0f,#f9
	db #d8,#e0,#c0,#01,#00,#01,#ff,#eb
	db #01,#fe,#bd,#fd,#c0,#c0,#1b,#e9
	db #80,#0d,#f9,#98,#e0,#80,#5f,#21
	db #e9,#c0,#11,#f9,#d8,#01,#e0,#07
	db #df,#d8,#d7,#c0,#00,#b5,#a8,#80
	db #11,#f9,#98,#e0,#80,#1e,#e9,#c0
	db #0f,#f9,#d8,#f0,#e0,#c0,#28,#00
	db #e0,#d7,#f8,#38,#00,#ff,#01,#00
	db #01,#00,#01,#ff,#01,#fe,#01,#fd
	db #01,#fc,#01,#fb,#01,#fa,#ff,#01
	db #f9,#01,#f8,#01,#f7,#01,#f6,#01
	db #f5,#01,#f4,#01,#f3,#01,#f2,#ff
	db #01,#f1,#01,#f0,#01,#ef,#01,#ee
	db #01,#ed,#01,#ec,#01,#eb,#01,#ea
	db #80,#e9,#e9,#ff,#df,#01,#00,#08
	db #ff,#0a,#e9,#f1,#01,#f0,#47,#ef
	db #d0,#c7,#30,#f8,#ff,#01,#08,#01
	db #c7,#01,#c6,#01,#c5,#01,#c4,#01
	db #c3,#c2,#c1,#38,#00,#ff,#01,#08
	db #cf,#c6,#30,#f8,#01,#08,#cf,#c6
	db #30,#f8,#01,#08,#01,#c7,#ff,#01
	db #c6,#01,#c5,#01,#c4,#01,#c3,#c2
	db #c1,#38,#00,#01,#08,#cf,#c6,#80
	db #f8,#c0,#00,#00
;	 #88c6
;	ld bc,#7fc6
;	out (c),c
;	call #4e17	; init music
;	ld bc,#7fc0
;	out (c),c
;
.play_music		; added by Megachur
;
	call l5019	; play
	jp l4e83	; send data to ay
;
.music_info
	db "T&T 2K3 - Main Part (2003)(GPA)()",0
	db "",0

	read "music_end.asm"
