; Music of Jigsaw Rescue (2013)(Public Domain)(EgoTrip)(StArkos)
; Ripped by Megachur the 01/01/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JIGSAWRE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #8500

	read "music_header.asm"

	jp l8509	; init music interrupt
	jp l8527	; stop music interrupt
	jp l851b
.l8509
	call l8bd6
	ld hl,l854d
.l8510 equ $ + 1
	ld de,#0000
	ld a,d
	ld (l853c),a
	add hl,de
	ld a,(hl)
	ld (l853e),a
.l851b
	ld hl,l8530
	ld bc,#8100
	ld de,l853a
	jp #bce0
.l8527
	ld hl,l8530
	call #bce6
	jp l8c30
.l8530
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l853a
	di
.l853c equ $ + 1
	ld a,#00
.l853e equ $ + 1
	cp #05
	jr z,l8546
	inc a
	ld (l853c),a
	ret
.l8546
	xor a
	ld (l853c),a
	jp l8554
.l854d
	ld de,#050b
	ld (bc),a
.l8553 equ $ + 2
	ld bc,#0000
;
.play_music
.l8554
;
	call l8c4a
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l8553),a
.l8564 equ $ + 1
	ld a,#01
	dec a
	jp nz,l8730
.l856a equ $ + 1
	ld a,#01
	dec a
	jr nz,l85d6
.l856f equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l857d
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l857d
	rra
	jr nc,l8585
	ld de,l8626
	ldi
.l8585
	rra
	jr nc,l858d
	ld de,l868b
	ldi
.l858d
	rra
	jr nc,l8595
	ld de,l86f0
	ldi
.l8595
	ld de,l8605
	ldi
	ldi
	ld de,l866a
	ldi
	ldi
	ld de,l86cf
	ldi
	ldi
	rra
	jr nc,l85b2
	ld de,l85d5
	ldi
.l85b2
	rra
	jr nc,l85bd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l85c1),de
.l85bd
	ld (l856f),hl
.l85c1 equ $ + 1
	ld hl,#0000
	ld (l85df),hl
	ld a,#01
	ld (l85da),a
	ld (l8600),a
	ld (l8665),a
	ld (l86ca),a
.l85d5 equ $ + 1
	ld a,#01
.l85d6
	ld (l856a),a
.l85da equ $ + 1
	ld a,#01
	dec a
	jr nz,l85fc
.l85df equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l85f9
	srl a
	jr nz,l85ed
	ld a,(hl)
	inc hl
.l85ed
	jr nc,l85f4
	ld (l8553),a
	jr l85f7
.l85f4
	ld (l872f),a
.l85f7
	ld a,#01
.l85f9
	ld (l85df),hl
.l85fc
	ld (l85da),a
.l8600 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8661
.l8605 equ $ + 1
	ld hl,#0000
	call l8a82
	ld (l8605),hl
	jr c,l8661
	ld a,d
	rra
	jr nc,l8618
	and #0f
	ld (l87b2),a
.l8618
	rl d
	jr nc,l8620
	ld (l87a0),ix
.l8620
	rl d
	jr nc,l865f
	ld a,e
.l8626 equ $ + 1
	add #00
	ld (l87b1),a
	ld hl,#0000
	ld (l879d),hl
	rl d
	jr c,l863f
.l8635 equ $ + 1
	ld hl,#0000
	ld a,(l87c2)
	ld (l87ba),a
	jr l865c
.l863f
	ld l,b
	add hl,hl
.l8642 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l87c2),a
	ld (l87ba),a
	ld a,(hl)
	or a
	jr z,l8658
	ld (l88ad),a
.l8658
	inc hl
	ld (l8635),hl
.l865c
	ld (l87b4),hl
.l865f
	ld a,#01
.l8661
	ld (l8600),a
.l8665 equ $ + 1
	ld a,#01
	dec a
	jr nz,l86c6
.l866a equ $ + 1
	ld hl,#0000
	call l8a82
	ld (l866a),hl
	jr c,l86c6
	ld a,d
	rra
	jr nc,l867d
	and #0f
	ld (l877e),a
.l867d
	rl d
	jr nc,l8685
	ld (l876c),ix
.l8685
	rl d
	jr nc,l86c4
	ld a,e
.l868b equ $ + 1
	add #00
	ld (l877d),a
	ld hl,#0000
	ld (l8769),hl
	rl d
	jr c,l86a4
.l869a equ $ + 1
	ld hl,#0000
	ld a,(l878e)
	ld (l8786),a
	jr l86c1
.l86a4
	ld l,b
	add hl,hl
.l86a7 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l878e),a
	ld (l8786),a
	ld a,(hl)
	or a
	jr z,l86bd
	ld (l88ad),a
.l86bd
	inc hl
	ld (l869a),hl
.l86c1
	ld (l8780),hl
.l86c4
	ld a,#01
.l86c6
	ld (l8665),a
.l86ca equ $ + 1
	ld a,#01
	dec a
	jr nz,l872b
.l86cf equ $ + 1
	ld hl,#0000
	call l8a82
	ld (l86cf),hl
	jr c,l872b
	ld a,d
	rra
	jr nc,l86e2
	and #0f
	ld (l874d),a
.l86e2
	rl d
	jr nc,l86ea
	ld (l873b),ix
.l86ea
	rl d
	jr nc,l8729
	ld a,e
.l86f0 equ $ + 1
	add #00
	ld (l874c),a
	ld hl,#0000
	ld (l8738),hl
	rl d
	jr c,l8709
.l86ff equ $ + 1
	ld hl,#0000
	ld a,(l875d)
	ld (l8755),a
	jr l8726
.l8709
	ld l,b
	add hl,hl
.l870c equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l875d),a
	ld (l8755),a
	ld a,(hl)
	or a
	jr z,l8722
	ld (l88ad),a
.l8722
	inc hl
	ld (l86ff),hl
.l8726
	ld (l874f),hl
.l8729
	ld a,#01
.l872b
	ld (l86ca),a
.l872f equ $ + 1
	ld a,#01
.l8730
	ld (l8564),a
	ld iy,l88c4
.l8738 equ $ + 1
	ld hl,#0000
.l873b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8738),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l874d equ $ + 2
.l874c equ $ + 1
	ld de,#0000
.l874f equ $ + 1
	ld hl,#0000
	call l88cf
.l8755 equ $ + 1
	ld a,#01
	dec a
	jr nz,l875e
	ld (l874f),hl
.l875d equ $ + 1
	ld a,#06
.l875e
	ld (l8755),a
	ld a,lx
	ex af,af'
	ld iy,l88c2
.l8769 equ $ + 1
	ld hl,#0000
.l876c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8769),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l877e equ $ + 2
.l877d equ $ + 1
	ld de,#0000
.l8780 equ $ + 1
	ld hl,#0000
	call l88cf
.l8786 equ $ + 1
	ld a,#01
	dec a
	jr nz,l878f
	ld (l8780),hl
.l878e equ $ + 1
	ld a,#06
.l878f
	ld (l8786),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l88c0
.l879d equ $ + 1
	ld hl,#0000
.l87a0 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l879d),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l87b2 equ $ + 2
.l87b1 equ $ + 1
	ld de,#0000
.l87b4 equ $ + 1
	ld hl,#0000
	call l88cf
.l87ba equ $ + 1
	ld a,#01
	dec a
	jr nz,l87c3
	ld (l87b4),hl
.l87c2 equ $ + 1
	ld a,#06
.l87c3
	ld (l87ba),a
	ex af,af'
	or lx
.l87c9
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l88c0
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	call l88ab
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
.l88a9
	nop
	ret
.l88ab
	ld a,(hl)
.l88ad equ $ + 1
	cp #ff
	ret z
	ld (l88ad),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l88c0
	nop
	nop
.l88c2
	nop
	nop
.l88c4
	nop
	nop
.l88c6
	nop
.l88c7
	nop
	nop
	nop
	nop
	nop
.l88cc
	nop
	nop
.l88ce
	nop
.l88cf
	ld b,(hl)
	inc hl
	rr b
	jp c,l892d
	rr b
	jr c,l88fd
	ld a,b
	and #0f
	jr nz,l88e6
	ld (iy+#07),a
	ld lx,#09
	ret
.l88e6
	ld lx,#08
	sub d
	jr nc,l88ed
	xor a
.l88ed
	ld (iy+#07),a
	rr b
	call l8a56
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l88fd
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l890d
	ld (l88c6),a
	ld lx,#00
.l890d
	ld a,b
	and #0f
	sub d
	jr nc,l8914
	xor a
.l8914
	ld (iy+#07),a
	bit 5,c
	jr nz,l891e
	inc lx
	ret
.l891e
	rr b
	bit 6,c
	call l8a48
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l892d
	rr b
	jr nc,l8940
	ld a,(l87ba)
	ld c,a
	ld a,(l87c2)
	cp c
	jr nz,l8940
	ld a,#fe
	ld (l88ad),a
.l8940
	bit 1,b
	jp nz,l89f9
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l88ce),a
	bit 0,b
	jr z,l89af
	bit 2,b
	call l8a48
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l896f),a
	ld a,b
	exx
.l896f equ $ + 1
	jr l8970
.l8970
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l898f
	inc hl
.l898f
	bit 5,a
	jr z,l899f
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l899f
	ld (l88cc),hl
	exx
.l89a3
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l88c6),a
	ld lx,#00
	ret
.l89af
	bit 2,b
	call l8a48
	ld (l88cc),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l89c3),a
	ld a,b
	exx
.l89c3 equ $ + 1
	jr l89c4
.l89c4
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,l89f0
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l89f0
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l89a3
.l89f9
	bit 0,b
	jr z,l8a04
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l88cf
.l8a04
	ld (iy+#07),#10
	bit 5,b
	jr nz,l8a11
	ld lx,#09
	jr l8a24
.l8a11
	ld lx,#08
	ld hx,e
	bit 2,b
	call l8a48
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l8a24
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l88ce),a
	rr b
	rr b
	bit 2,b
	call l8a48
	ld (l88cc),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l88c6),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l8a48
	jr z,l8a56
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.l8a56
	bit 4,b
	jr z,l8a66
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.l8a66
	ld a,e
	bit 3,b
	jr z,l8a73
	add (hl)
	inc hl
	cp #90
	jr c,l8a73
	ld a,#8f
.l8a73
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l8ab6
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l8a82
	ld a,(hl)
	inc hl
	srl a
	jr c,l8aa9
	sub #20
	jr c,l8ab3
	jr z,l8aa5
	dec a
	ld e,a
.l8a90
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l8a9e
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l8a9e
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l8aa5
	ld e,(hl)
	inc hl
	jr l8a90
.l8aa9
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l8ab3
	add #20
	ret
.l8ab6
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l8bd6
;
	ld hl,#0008
	add hl,de
	ld de,l8510
	ldi
	ld de,l872f
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l8642),hl
	ld (l86a7),hl
	ld (l870c),hl
	add hl,bc
	ld de,l85d5
	ldi
	ld de,l8626
	ldi
	ld de,l868b
	ldi
	ld de,l86f0
	ldi
	ld de,l85c1
	ldi
	ldi
	ld (l856f),hl
	ld a,#01
	ld (l8564),a
	ld (l856a),a
	ld a,#ff
	ld (l88ce),a
	ld hl,(l8642)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l87b4),hl
	ld (l8780),hl
	ld (l874f),hl
	ret
.l8c30
	call l8c4a
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	ld hl,l88c7
	ld bc,#0300
.l8c41
	ld (hl),c
	inc hl
	djnz l8c41
	ld a,#3f
	jp l87c9
.l8c4a
	ld a,i
	di
	ld a,#f3
	jp po,l8c54
	ld a,#fb
.l8c54
	ld (l88a9),a
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8d00
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#05,#7e,#01,#28,#8d,#31,#8d
	db #45,#8d,#60,#8d,#75,#8d,#93,#8d
	db #b8,#8d,#dd,#8d,#f2,#8d,#07,#8e
	db #1c,#8e,#2b,#8e,#44,#8e,#75,#8e
	db #00,#00,#00,#00,#00,#00,#0d,#2a
	db #8d,#01,#00,#3c,#38,#34,#30,#2c
	db #28,#24,#20,#1c,#18,#14,#10,#0c
	db #08,#04,#0d,#2a,#8d,#01,#00,#7e
	db #26,#0c,#7c,#0a,#74,#09,#74,#08
	db #6c,#05,#6c,#04,#64,#03,#5c,#02
	db #5c,#01,#58,#01,#18,#0d,#2a,#8d
	db #01,#00,#3e,#01,#36,#01,#2e,#01
	db #26,#01,#1e,#01,#16,#01,#0e,#01
	db #06,#01,#0d,#2a,#8d,#01,#00,#7e
	db #26,#0c,#7e,#2d,#0a,#76,#2f,#09
	db #76,#31,#08,#6c,#05,#6c,#04,#64
	db #03,#5c,#02,#5c,#01,#58,#01,#18
	db #0d,#2a,#8d,#01,#00,#3e,#01,#3e
	db #03,#3e,#05,#3e,#27,#3a,#29,#3a
	db #2b,#3a,#2d,#3a,#2f,#36,#31,#32
	db #33,#2e,#35,#2a,#37,#1e,#39,#16
	db #3a,#0e,#3c,#06,#3e,#0d,#2a,#8d
	db #01,#00,#3e,#1f,#3e,#1d,#3e,#1b
	db #3e,#39,#3a,#37,#3a,#35,#3a,#33
	db #3a,#31,#36,#2f,#32,#2d,#2e,#2b
	db #2a,#29,#1e,#27,#16,#25,#0e,#23
	db #06,#21,#0d,#2a,#8d,#01,#00,#3c
	db #78,#07,#34,#70,#07,#2c,#68,#07
	db #24,#60,#07,#20,#60,#07,#20,#0d
	db #e9,#8d,#01,#00,#3c,#78,#08,#34
	db #70,#08,#2c,#68,#08,#24,#60,#08
	db #20,#60,#07,#20,#0d,#fe,#8d,#01
	db #00,#3c,#78,#0c,#34,#70,#0c,#2c
	db #68,#0c,#24,#60,#0c,#20,#60,#0c
	db #20,#0d,#13,#8e,#06,#00,#89,#0e
	db #89,#1e,#01,#00,#89,#1e,#02,#00
	db #0d,#1e,#8e,#01,#00,#3c,#38,#34
	db #30,#2c,#28,#a4,#ff,#ff,#a4,#fe
	db #ff,#a4,#ff,#ff,#24,#24,#24,#24
	db #24,#0d,#33,#8e,#01,#00,#7c,#20
	db #7c,#1e,#7c,#1c,#7c,#1a,#7c,#18
	db #7c,#16,#7c,#14,#7c,#12,#7c,#10
	db #7c,#0e,#7c,#0c,#7c,#0a,#7c,#08
	db #7c,#06,#7c,#04,#7c,#02,#7c,#01
	db #3c,#34,#2c,#24,#1c,#14,#0c,#04
	db #02,#20,#0d,#2a,#8d,#03,#00,#89
	db #1e,#01,#00,#89,#1e,#02,#00,#89
	db #1e,#03,#00,#89,#1e,#04,#00,#0d
	db #77,#8e,#80,#00,#00,#00,#3a,#8f
	db #10,#33,#96,#3b,#8f,#3d,#96,#80
	db #00,#33,#96,#5d,#96,#3d,#96,#10
	db #43,#8f,#34,#90,#16,#91,#70,#10
	db #b4,#95,#9e,#95,#ee,#95,#10,#10
	db #0e,#92,#34,#90,#ca,#91,#70,#10
	db #79,#95,#9e,#95,#a4,#95,#10,#10
	db #43,#8f,#34,#90,#16,#91,#70,#10
	db #b4,#95,#9e,#95,#ee,#95,#10,#10
	db #0e,#92,#34,#90,#ca,#91,#70,#10
	db #79,#95,#9e,#95,#a4,#95,#10,#10
	db #ff,#92,#e6,#93,#9b,#94,#80,#10
	db #ff,#92,#e6,#93,#9b,#94,#70,#10
	db #d9,#95,#06,#96,#1e,#96,#10,#10
	db #43,#8f,#34,#90,#16,#91,#70,#10
	db #b4,#95,#9e,#95,#ee,#95,#10,#10
	db #0e,#92,#34,#90,#ca,#91,#70,#10
	db #79,#95,#9e,#95,#a4,#95,#10,#10
	db #43,#8f,#34,#90,#16,#91,#70,#10
	db #b4,#95,#9e,#95,#ee,#95,#10,#10
	db #0e,#92,#34,#90,#ca,#91,#70,#10
	db #79,#95,#9e,#95,#a4,#95,#10,#01
	db #90,#8e,#00,#42,#60,#00,#42,#80
	db #00,#00,#00,#6c,#e1,#00,#00,#01
	db #84,#47,#84,#41,#9c,#47,#6c,#41
	db #b4,#47,#84,#41,#cc,#47,#6c,#41
	db #e4,#47,#84,#41,#fc,#47,#6c,#41
	db #40,#69,#47,#84,#41,#40,#75,#47
	db #64,#41,#7c,#47,#7c,#41,#94,#47
	db #64,#41,#ac,#47,#7c,#41,#c4,#47
	db #68,#41,#e0,#47,#80,#41,#f8,#47
	db #68,#41,#40,#67,#47,#80,#41,#40
	db #73,#47,#6c,#41,#84,#47,#84,#41
	db #9c,#47,#6c,#41,#b4,#47,#84,#41
	db #cc,#47,#6c,#41,#e4,#47,#84,#41
	db #fc,#47,#6c,#41,#40,#69,#47,#84
	db #41,#40,#75,#47,#5e,#41,#76,#47
	db #76,#41,#8e,#47,#5e,#41,#a6,#47
	db #76,#41,#be,#47,#62,#41,#da,#47
	db #7a,#41,#f2,#47,#62,#41,#40,#64
	db #47,#7a,#41,#40,#70,#47,#6c,#41
	db #84,#47,#84,#41,#9c,#47,#6c,#41
	db #b4,#47,#84,#41,#cc,#47,#6c,#41
	db #e4,#47,#84,#41,#fc,#47,#6c,#41
	db #40,#69,#47,#84,#41,#40,#75,#47
	db #64,#41,#7c,#47,#7c,#41,#94,#47
	db #64,#41,#ac,#47,#7c,#41,#c4,#47
	db #68,#41,#e0,#47,#80,#41,#f8,#47
	db #68,#41,#40,#67,#47,#80,#41,#40
	db #73,#47,#5e,#41,#76,#47,#76,#41
	db #8e,#47,#5e,#41,#a6,#47,#76,#41
	db #be,#47,#62,#41,#da,#47,#7a,#41
	db #f2,#47,#62,#41,#40,#64,#47,#7a
	db #41,#40,#70,#47,#6c,#e0,#00,#00
	db #02,#6c,#60,#03,#84,#60,#04,#02
	db #6c,#60,#03,#02,#2d,#02,#6c,#60
	db #04,#6c,#60,#03,#6c,#60,#05,#02
	db #6c,#60,#03,#2d,#2d,#2d,#6c,#60
	db #02,#6c,#60,#03,#6c,#60,#06,#02
	db #6c,#60,#03,#02,#2d,#02,#6c,#60
	db #04,#6c,#60,#03,#6c,#60,#05,#02
	db #6c,#60,#03,#2d,#2d,#2d,#6c,#60
	db #02,#6c,#60,#03,#84,#60,#04,#02
	db #6c,#60,#03,#02,#2d,#02,#6c,#60
	db #04,#6c,#60,#03,#6c,#60,#05,#02
	db #6c,#60,#03,#2d,#2d,#2d,#6c,#60
	db #02,#6c,#60,#03,#6c,#60,#06,#02
	db #6c,#60,#03,#02,#2d,#02,#6c,#60
	db #04,#6c,#60,#03,#6c,#60,#05,#02
	db #6c,#60,#03,#2d,#2d,#2d,#6c,#60
	db #02,#6c,#60,#03,#84,#60,#04,#02
	db #6c,#60,#03,#02,#2d,#02,#6c,#60
	db #04,#6c,#60,#03,#6c,#60,#05,#02
	db #6c,#60,#03,#2d,#2d,#2d,#6c,#60
	db #02,#6c,#60,#03,#6c,#60,#06,#02
	db #6c,#60,#03,#02,#2d,#02,#6c,#60
	db #04,#6c,#60,#03,#6c,#60,#05,#02
	db #6c,#60,#03,#2d,#2d,#2d,#6c,#60
	db #02,#6c,#60,#03,#84,#60,#04,#02
	db #6c,#60,#03,#02,#2d,#02,#6c,#60
	db #04,#6c,#60,#03,#6c,#60,#05,#02
	db #6c,#60,#03,#2d,#2d,#2d,#b4,#e0
	db #00,#00,#07,#02,#b4,#60,#01,#83
	db #b4,#60,#07,#02,#b4,#60,#01,#85
	db #b4,#60,#08,#02,#b4,#60,#01,#83
	db #b4,#60,#07,#02,#b4,#60,#01,#83
	db #ac,#60,#07,#06,#6d,#02,#71,#02
	db #b0,#60,#01,#7f,#b0,#60,#07,#02
	db #42,#00,#42,#00,#71,#02,#75,#02
	db #b4,#60,#01,#83,#b4,#60,#07,#02
	db #b4,#60,#01,#85,#b4,#60,#08,#02
	db #b4,#60,#01,#83,#b4,#60,#07,#02
	db #b4,#60,#01,#83,#a6,#60,#07,#06
	db #67,#02,#6b,#02,#aa,#60,#01,#79
	db #aa,#60,#07,#02,#42,#00,#42,#00
	db #6b,#02,#75,#02,#b4,#60,#01,#83
	db #b4,#60,#07,#02,#b4,#60,#01,#85
	db #b4,#60,#08,#02,#b4,#60,#01,#83
	db #b4,#60,#07,#02,#b4,#60,#01,#83
	db #ac,#60,#07,#06,#6d,#02,#71,#02
	db #b0,#60,#01,#7f,#b0,#60,#07,#02
	db #42,#00,#42,#00,#71,#02,#67,#06
	db #67,#02,#6b,#02,#aa,#60,#01,#79
	db #aa,#60,#07,#02,#42,#00,#42,#00
	db #6b,#00,#b4,#e0,#00,#00,#09,#06
	db #79,#02,#75,#06,#79,#02,#75,#02
	db #79,#0e,#7b,#02,#79,#02,#75,#0a
	db #75,#06,#79,#02,#75,#06,#79,#02
	db #75,#02,#79,#0e,#7f,#02,#7b,#02
	db #75,#0a,#75,#06,#79,#02,#75,#06
	db #79,#02,#75,#02,#79,#0e,#7b,#02
	db #79,#02,#75,#0a,#6d,#06,#71,#02
	db #75,#06,#71,#02,#6d,#00,#6c,#e1
	db #00,#00,#01,#84,#47,#84,#41,#9c
	db #47,#6c,#41,#b4,#47,#84,#41,#cc
	db #47,#6c,#41,#e4,#47,#84,#41,#fc
	db #47,#6c,#41,#40,#69,#47,#84,#41
	db #40,#75,#47,#64,#41,#7c,#47,#7c
	db #41,#94,#47,#64,#41,#ac,#47,#7c
	db #41,#c4,#47,#68,#41,#e0,#47,#80
	db #41,#f8,#47,#68,#41,#40,#67,#47
	db #80,#41,#40,#73,#47,#6c,#41,#84
	db #47,#84,#41,#9c,#47,#6c,#41,#b4
	db #47,#84,#41,#cc,#47,#6c,#41,#e4
	db #47,#84,#41,#fc,#47,#6c,#41,#40
	db #69,#47,#84,#41,#40,#75,#47,#5e
	db #41,#76,#47,#76,#41,#8e,#47,#5e
	db #41,#a6,#47,#76,#41,#be,#47,#62
	db #41,#da,#47,#7a,#41,#f2,#47,#62
	db #41,#40,#64,#47,#7a,#41,#40,#70
	db #47,#6c,#41,#84,#47,#84,#41,#9c
	db #47,#6c,#41,#b4,#47,#84,#41,#cc
	db #47,#6c,#41,#e4,#47,#84,#41,#fc
	db #47,#6c,#41,#40,#69,#47,#84,#41
	db #40,#75,#47,#64,#41,#7c,#47,#7c
	db #41,#94,#47,#64,#41,#ac,#47,#7c
	db #41,#c4,#47,#68,#41,#e0,#47,#80
	db #41,#f8,#47,#68,#41,#40,#67,#47
	db #80,#41,#40,#73,#47,#64,#41,#7c
	db #47,#7c,#41,#94,#47,#64,#41,#ac
	db #47,#7c,#41,#c4,#47,#64,#41,#dc
	db #47,#7c,#41,#f4,#47,#64,#41,#40
	db #65,#47,#7c,#41,#40,#71,#47,#84
	db #e0,#00,#00,#0a,#02,#6c,#60,#0b
	db #02,#84,#60,#0a,#02,#6c,#60,#0b
	db #02,#84,#60,#0a,#02,#6c,#60,#0b
	db #42,#00,#42,#60,#00,#06,#84,#60
	db #0a,#02,#84,#60,#0b,#02,#84,#60
	db #0a,#02,#84,#60,#0b,#02,#84,#60
	db #0a,#02,#84,#60,#0b,#42,#00,#42
	db #60,#00,#06,#84,#60,#0a,#02,#6c
	db #60,#0b,#02,#84,#60,#0a,#02,#6c
	db #60,#0b,#02,#84,#60,#0a,#02,#6c
	db #60,#0b,#42,#00,#42,#60,#00,#06
	db #84,#60,#0a,#02,#84,#60,#0b,#02
	db #84,#60,#0a,#02,#84,#60,#0b,#02
	db #42,#60,#00,#02,#42,#60,#00,#42
	db #00,#42,#60,#00,#06,#84,#60,#0a
	db #02,#6c,#60,#0b,#02,#84,#60,#0a
	db #02,#6c,#60,#0b,#02,#84,#60,#0a
	db #02,#6c,#60,#0b,#42,#00,#42,#60
	db #00,#06,#84,#60,#0a,#02,#84,#60
	db #0b,#02,#84,#60,#0a,#02,#84,#60
	db #0b,#02,#84,#60,#0a,#02,#84,#60
	db #0b,#42,#00,#42,#60,#00,#06,#84
	db #60,#0a,#02,#6c,#60,#0b,#02,#84
	db #60,#0a,#02,#6c,#60,#0b,#02,#84
	db #60,#0a,#02,#6c,#60,#0b,#42,#00
	db #42,#60,#00,#06,#84,#60,#0a,#02
	db #42,#60,#00,#42,#00,#84,#60,#0a
	db #06,#42,#60,#00,#02,#84,#60,#0a
	db #42,#00,#42,#60,#00,#00,#6c,#e0
	db #00,#00,#02,#02,#6c,#60,#03,#02
	db #2d,#02,#2d,#02,#6c,#60,#06,#02
	db #6c,#60,#03,#02,#54,#60,#0c,#06
	db #6c,#60,#02,#02,#6c,#60,#03,#02
	db #2d,#02,#2d,#02,#6c,#60,#05,#02
	db #6c,#60,#03,#02,#54,#60,#0c,#06
	db #6c,#60,#02,#02,#6c,#60,#03,#02
	db #2d,#02,#2d,#02,#6c,#60,#06,#02
	db #6c,#60,#03,#02,#54,#60,#0c,#06
	db #6c,#60,#02,#02,#6c,#60,#03,#02
	db #2d,#02,#2d,#02,#54,#60,#0c,#02
	db #42,#00,#02,#15,#06,#6c,#60,#02
	db #02,#6c,#60,#03,#02,#2d,#02,#2d
	db #02,#6c,#60,#06,#02,#6c,#60,#03
	db #02,#54,#60,#0c,#06,#6c,#60,#02
	db #02,#6c,#60,#03,#02,#2d,#02,#2d
	db #02,#6c,#60,#05,#02,#6c,#60,#03
	db #02,#54,#60,#0c,#06,#6c,#60,#02
	db #02,#6c,#60,#03,#02,#2d,#02,#2d
	db #02,#6c,#60,#06,#02,#6c,#60,#03
	db #02,#54,#60,#0c,#06,#15,#02,#42
	db #00,#02,#15,#06,#15,#02,#42,#00
	db #02,#15,#00,#84,#e0,#00,#00,#0b
	db #02,#9c,#60,#0d,#02,#84,#60,#0b
	db #02,#9c,#60,#0d,#02,#84,#60,#0b
	db #02,#9c,#60,#0d,#02,#42,#60,#00
	db #06,#6c,#60,#0b,#02,#9c,#60,#0d
	db #02,#6c,#60,#0b,#02,#9c,#60,#0d
	db #02,#6c,#60,#0b,#02,#9c,#60,#0d
	db #02,#42,#60,#00,#06,#84,#60,#0b
	db #02,#9c,#60,#0d,#02,#84,#60,#0b
	db #02,#9c,#60,#0d,#02,#84,#60,#0b
	db #02,#9c,#60,#0d,#02,#42,#60,#00
	db #06,#6c,#60,#0b,#02,#9c,#60,#0d
	db #02,#6c,#60,#0b,#02,#9c,#60,#0d
	db #02,#42,#60,#00,#02,#42,#60,#00
	db #02,#42,#60,#00,#06,#84,#60,#0b
	db #02,#9c,#60,#0d,#02,#84,#60,#0b
	db #02,#9c,#60,#0d,#02,#84,#60,#0b
	db #02,#9c,#60,#0d,#02,#42,#60,#00
	db #06,#6c,#60,#0b,#02,#9c,#60,#0d
	db #02,#6c,#60,#0b,#02,#9c,#60,#0d
	db #02,#6c,#60,#0b,#02,#9c,#60,#0d
	db #02,#42,#60,#00,#06,#84,#60,#0b
	db #02,#9c,#60,#0d,#02,#84,#60,#0b
	db #02,#9c,#60,#0d,#02,#84,#60,#0b
	db #02,#9c,#60,#0d,#02,#42,#60,#00
	db #06,#42,#60,#00,#02,#84,#60,#0d
	db #02,#42,#60,#00,#06,#84,#60,#0d
	db #02,#42,#60,#00,#02,#84,#60,#0d
	db #00,#50,#e1,#00,#00,#01,#40,#73
	db #47,#68,#41,#40,#67,#47,#80,#41
	db #f8,#47,#98,#41,#e0,#47,#b0,#41
	db #c8,#47,#c8,#41,#b0,#47,#e0,#41
	db #98,#47,#f8,#41,#80,#47,#54,#e0
	db #00,#00,#0c,#00,#b0,#e0,#00,#00
	db #09,#0e,#fc,#60,#0a,#a5,#8d,#75
	db #5d,#45,#2d,#15,#4c,#e1,#00,#00
	db #01,#40,#71,#47,#64,#41,#40,#65
	db #47,#7c,#41,#f4,#47,#94,#41,#dc
	db #47,#b0,#41,#c8,#47,#c8,#41,#b0
	db #47,#e0,#41,#98,#47,#f8,#41,#80
	db #47,#6c,#e0,#00,#00,#0c,#02,#45
	db #02,#5d,#02,#75,#02,#8d,#02,#a5
	db #42,#00,#bd,#02,#d5,#00,#ac,#e0
	db #00,#00,#07,#06,#6d,#02,#71,#02
	db #b0,#60,#01,#7f,#b0,#60,#07,#02
	db #42,#00,#42,#00,#71,#00,#6c,#e0
	db #00,#00,#03,#02,#2d,#02,#2d,#02
	db #2d,#02,#2d,#02,#2d,#02,#6c,#60
	db #06,#02,#6c,#60,#05,#00,#40,#69
	db #e0,#00,#00,#0c,#02,#bd,#02,#a5
	db #02,#8d,#02,#75,#02,#5d,#02,#45
	db #02,#2d,#00,#6c,#e0,#00,#00,#0b
	db #3e,#3e,#02,#45,#00,#9c,#e0,#00
	db #00,#0b,#0e,#75,#0e,#6b,#1e,#5d
	db #0e,#75,#0e,#6b,#0e,#6d,#0e,#75
	db #0e,#8d,#0e,#83,#1e,#75,#0e,#8d
	db #0e,#83,#0e,#85,#00,#54,#e0,#00
	db #00,#0c,#0e,#54,#60,#03,#02,#15
	db #02,#15,#02,#15,#02,#15,#02,#15
	db #02,#15,#02,#15,#02,#15,#02,#15
	db #02,#15,#02,#15,#02,#54,#60,#0c
	db #0e,#54,#60,#03,#02,#15,#02,#15
	db #02,#15,#02,#15,#02,#15,#02,#15
	db #02,#15,#02,#15,#02,#15,#02,#15
	db #02,#15,#02,#54,#60,#0c,#0e,#54
	db #60,#03,#02,#15,#02,#15,#02,#15
	db #02,#15,#02,#15,#02,#15,#02,#15
	db #02,#15,#02,#15,#02,#15,#02,#15
	db #02,#54,#60,#0c,#0e,#54,#60,#03
	db #02,#15,#02,#15,#02,#15,#02,#54
	db #60,#0c,#06,#15,#06,#15,#06,#15
	db #00,#00
;
; #80c9
;	ld de,#8d00
;	call #8500 ; init music
;
.init_music		; added by Megachur
;
	ld de,l8d00
	jp real_init_music
;
.music_info
	db "Jigsaw Rescue (2013)(Public Domain)(EgoTrip)",0
	db "StArkos",0

	read "music_end.asm"
