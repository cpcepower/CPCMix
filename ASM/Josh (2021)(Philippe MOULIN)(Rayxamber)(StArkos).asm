; Music of Josh (2021)(Philippe MOULIN)(Rayxamber)(StArkos)
; Ripped by Megachur the 02/04/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JOSH.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #98da

	read "music_header.asm"

	jp l98ef	; init music
	jp l9933
	jp l9927
	jp la177
	jp la10d
	jp la190
	jp la162
;
.real_init_music
.l98ef
;
	ld a,e
	add a
	ld c,a
	ld b,#00
	ld hl,l98fe
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	jp l9915
.l98fe
	dw la1b0
	jp l9915
	jp l9933
	jp l9927
	jp la10d
	jp la190
	jp la162
	jp la177
.l9915
	call la099
	ld hl,l9959
.l991c equ $ + 1
	ld de,#0000
	ld a,d
	ld (l9948),a
	add hl,de
	ld a,(hl)
	ld (l994a),a
.l9927
	ld hl,l993c
	ld bc,#8100
	ld de,l9946
	ret:nop:nop	; jp #bce0 - modified by Megachur
.l9933
	ld hl,l993c
	call #bce6
	jp la0f3
.l993c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
;
.play_music_interrupt
;
.l9946
	di
.l9948 equ $ + 1
	ld a,#00
.l994a equ $ + 1
	cp #05
	jr z,l9952
	inc a
	ld (l9948),a
	ret
.l9952
	xor a
	ld (l9948),a
	jp l996c
.l9959
	ld de,#050b
	ld (bc),a
	ld bc,#c300
	dec c
	and c
	jp la190
	jp la162
	jp la177
.l996b
	nop
.l996c
	call la182
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l996b),a
.l997c equ $ + 1
	ld a,#01
	dec a
	jp nz,l9b48
.l9982 equ $ + 1
	ld a,#01
	dec a
	jr nz,l99ee
.l9987 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l9995
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l9995
	rra
	jr nc,l999d
	ld de,l9a3e
	ldi
.l999d
	rra
	jr nc,l99a5
	ld de,l9aa3
	ldi
.l99a5
	rra
	jr nc,l99ad
	ld de,l9b08
	ldi
.l99ad
	ld de,l9a1d
	ldi
	ldi
	ld de,l9a82
	ldi
	ldi
	ld de,l9ae7
	ldi
	ldi
	rra
	jr nc,l99ca
	ld de,l99ed
	ldi
.l99ca
	rra
	jr nc,l99d5
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l99d9),de
.l99d5
	ld (l9987),hl
.l99d9 equ $ + 1
	ld hl,#0000
	ld (l99f7),hl
	ld a,#01
	ld (l99f2),a
	ld (l9a18),a
	ld (l9a7d),a
	ld (l9ae2),a
.l99ed equ $ + 1
	ld a,#01
.l99ee
	ld (l9982),a
.l99f2 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9a14
.l99f7 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l9a11
	srl a
	jr nz,l9a05
	ld a,(hl)
	inc hl
.l9a05
	jr nc,l9a0c
	ld (l996b),a
	jr l9a0f
.l9a0c
	ld (l9b47),a
.l9a0f
	ld a,#01
.l9a11
	ld (l99f7),hl
.l9a14
	ld (l99f2),a
.l9a18 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9a79
.l9a1d equ $ + 1
	ld hl,#0000
	call l9f45
	ld (l9a1d),hl
	jr c,l9a79
	ld a,d
	rra
	jr nc,l9a30
	and #0f
	ld (l9c20),a
.l9a30
	rl d
	jr nc,l9a38
	ld (l9c0e),ix
.l9a38
	rl d
	jr nc,l9a77
	ld a,e
.l9a3e equ $ + 1
	add #00
	ld (l9c1f),a
	ld hl,#0000
	ld (l9c0b),hl
	rl d
	jr c,l9a57
.l9a4d equ $ + 1
	ld hl,#0000
	ld a,(l9c30)
	ld (l9c28),a
	jr l9a74
.l9a57
	ld l,b
	add hl,hl
.l9a5a equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l9c30),a
	ld (l9c28),a
	ld a,(hl)
	or a
	jr z,l9a70
	ld (l9d67),a
.l9a70
	inc hl
	ld (l9a4d),hl
.l9a74
	ld (l9c22),hl
.l9a77
	ld a,#01
.l9a79
	ld (l9a18),a
.l9a7d equ $ + 1
	ld a,#01
	dec a
	jr nz,l9ade
.l9a82 equ $ + 1
	ld hl,#0000
	call l9f45
	ld (l9a82),hl
	jr c,l9ade
	ld a,d
	rra
	jr nc,l9a95
	and #0f
	ld (l9bc1),a
.l9a95
	rl d
	jr nc,l9a9d
	ld (l9baf),ix
.l9a9d
	rl d
	jr nc,l9adc
	ld a,e
.l9aa3 equ $ + 1
	add #00
	ld (l9bc0),a
	ld hl,#0000
	ld (l9bac),hl
	rl d
	jr c,l9abc
.l9ab2 equ $ + 1
	ld hl,#0000
	ld a,(l9bd1)
	ld (l9bc9),a
	jr l9ad9
.l9abc
	ld l,b
	add hl,hl
.l9abf equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l9bd1),a
	ld (l9bc9),a
	ld a,(hl)
	or a
	jr z,l9ad5
	ld (l9d67),a
.l9ad5
	inc hl
	ld (l9ab2),hl
.l9ad9
	ld (l9bc3),hl
.l9adc
	ld a,#01
.l9ade
	ld (l9a7d),a
.l9ae2 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9b43
.l9ae7 equ $ + 1
	ld hl,#0000
	call l9f45
	ld (l9ae7),hl
	jr c,l9b43
	ld a,d
	rra
	jr nc,l9afa
	and #0f
	ld (l9b65),a
.l9afa
	rl d
	jr nc,l9b02
	ld (l9b53),ix
.l9b02
	rl d
	jr nc,l9b41
	ld a,e
.l9b08 equ $ + 1
	add #00
	ld (l9b64),a
	ld hl,#0000
	ld (l9b50),hl
	rl d
	jr c,l9b21
.l9b17 equ $ + 1
	ld hl,#0000
	ld a,(l9b75)
	ld (l9b6d),a
	jr l9b3e
.l9b21
	ld l,b
	add hl,hl
.l9b24 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l9b75),a
	ld (l9b6d),a
	ld a,(hl)
	or a
	jr z,l9b3a
	ld (l9d67),a
.l9b3a
	inc hl
	ld (l9b17),hl
.l9b3e
	ld (l9b67),hl
.l9b41
	ld a,#01
.l9b43
	ld (l9ae2),a
.l9b47 equ $ + 1
	ld a,#01
.l9b48
	ld (l997c),a
	ld iy,l9d7e
.l9b50 equ $ + 1
	ld hl,#0000
.l9b53 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9b50),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l9b65 equ $ + 2
.l9b64 equ $ + 1
	ld de,#0000
.l9b67 equ $ + 1
	ld hl,#0000
	call l9d89
.l9b6d equ $ + 1
	ld a,#01
	dec a
	jr nz,l9b76
	ld (l9b67),hl
.l9b75 equ $ + 1
	ld a,#06
.l9b76
	ld (l9b6d),a
.l9b79
	ld de,#0000
	exx
	ld de,#0000
.l9b81 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l9ba4
	ld a,#01
	ld (l9eb8),a
	call l9d89
	xor a
	ld (l9eb8),a
	ld a,l
	or h
	jr z,l9b9c
.l9b98 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9ba1
.l9b9c
	ld (l9b81),hl
	ld a,#06
.l9ba1
	ld (l9b98),a
.l9ba4
	ld a,lx
	ex af,af'
	ld iy,l9d7c
.l9bac equ $ + 1
	ld hl,#0000
.l9baf equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9bac),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l9bc1 equ $ + 2
.l9bc0 equ $ + 1
	ld de,#0000
.l9bc3 equ $ + 1
	ld hl,#0000
	call l9d89
.l9bc9 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9bd2
	ld (l9bc3),hl
.l9bd1 equ $ + 1
	ld a,#06
.l9bd2
	ld (l9bc9),a
.l9bd5
	ld de,#0000
	exx
	ld de,#0000
.l9bdd equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l9c00
	ld a,#01
	ld (l9eb8),a
	call l9d89
	xor a
	ld (l9eb8),a
	ld a,l
	or h
	jr z,l9bf8
.l9bf4 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9bfd
.l9bf8
	ld (l9bdd),hl
	ld a,#06
.l9bfd
	ld (l9bf4),a
.l9c00
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l9d7a
.l9c0b equ $ + 1
	ld hl,#0000
.l9c0e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9c0b),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l9c20 equ $ + 2
.l9c1f equ $ + 1
	ld de,#0000
.l9c22 equ $ + 1
	ld hl,#0000
	call l9d89
.l9c28 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9c31
	ld (l9c22),hl
.l9c30 equ $ + 1
	ld a,#06
.l9c31
	ld (l9c28),a
.l9c34
	ld de,#0000
	exx
	ld de,#0000
.l9c3c equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l9c5f
	ld a,#01
	ld (l9eb8),a
	call l9d89
	xor a
	ld (l9eb8),a
	ld a,l
	or h
	jr z,l9c57
.l9c53 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9c5c
.l9c57
	ld (l9c3c),hl
	ld a,#06
.l9c5c
	ld (l9c53),a
.l9c5f
	ex af,af'
	or lx
.l9c62
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l9d7a
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
	dec b
	ld a,(hl)
.l9cf3 equ $ + 1
	sub #00
	jr nc,l9cfa
	db #ed,#71 ; out (c),0
	jr l9cfc
.l9cfa
	out (c),a
.l9cfc
	inc hl
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
	dec b
	ld a,(hl)
.l9d0e equ $ + 1
	sub #00
	jr nc,l9d15
	db #ed,#71 ; out (c),0
	jr l9d17
.l9d15
	out (c),a
.l9d17
	inc hl
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
	dec b
	ld a,(hl)
.l9d29 equ $ + 1
	sub #00
	jr nc,l9d30
	db #ed,#71 ; out (c),0
	jr l9d32
.l9d30
	out (c),a
.l9d32
	inc hl
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
	call l9d65
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
.l9d63
	nop
	ret
.l9d65
	ld a,(hl)
.l9d67 equ $ + 1
	cp #ff
	ret z
	ld (l9d67),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l9d81 equ $ + 7
.l9d80 equ $ + 6
.l9d7e equ $ + 4
.l9d7c equ $ + 2
.l9d7a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9d88 equ $ + 6
.l9d86 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00
.l9d89
	ld b,(hl)
	inc hl
	rr b
	jp c,l9de7
	rr b
	jr c,l9db7
	ld a,b
	and #0f
	jr nz,l9da0
	ld (iy+#07),a
	ld lx,#09
	ret
.l9da0
	ld lx,#08
	sub d
	jr nc,l9da7
	xor a
.l9da7
	ld (iy+#07),a
	rr b
	call l9f19
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l9db7
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l9dc7
	ld (l9d80),a
	ld lx,#00
.l9dc7
	ld a,b
	and #0f
	sub d
	jr nc,l9dce
	xor a
.l9dce
	ld (iy+#07),a
	bit 5,c
	jr nz,l9dd8
	inc lx
	ret
.l9dd8
	rr b
	bit 6,c
	call l9f0b
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l9de7
	rr b
	jr nc,l9dfa
	ld a,(l9c28)
	ld c,a
	ld a,(l9c30)
	cp c
	jr nz,l9dfa
	ld a,#fe
	ld (l9d67),a
.l9dfa
	bit 1,b
	jp nz,l9eb3
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l9d88),a
	bit 0,b
	jr z,l9e69
	bit 2,b
	call l9f0b
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l9e29),a
	ld a,b
	exx
.l9e29 equ $ + 1
	jr l9e2a
.l9e2a
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
	jr nc,l9e49
	inc hl
.l9e49
	bit 5,a
	jr z,l9e59
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
.l9e59
	ld (l9d86),hl
	exx
.l9e5d
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l9d80),a
	ld lx,#00
	ret
.l9e69
	bit 2,b
	call l9f0b
	ld (l9d86),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l9e7d),a
	ld a,b
	exx
.l9e7d equ $ + 1
	jr l9e7e
.l9e7e
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
	jr z,l9eaa
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
.l9eaa
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l9e5d
.l9eb3
	bit 0,b
	jr z,l9ec7
.l9eb8 equ $ + 1
	ld a,#00
	or a
	jr z,l9ec0
	ld hl,#0000
	ret
.l9ec0
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l9d89
.l9ec7
	ld (iy+#07),#10
	bit 5,b
	jr nz,l9ed4
	ld lx,#09
	jr l9ee7
.l9ed4
	ld lx,#08
	ld hx,e
	bit 2,b
	call l9f0b
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l9ee7
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l9d88),a
	rr b
	rr b
	bit 2,b
	call l9f0b
	ld (l9d86),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l9d80),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l9f0b
	jr z,l9f19
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
.l9f19
	bit 4,b
	jr z,l9f29
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
.l9f29
	ld a,e
	bit 3,b
	jr z,l9f36
	add (hl)
	inc hl
	cp #90
	jr c,l9f36
	ld a,#8f
.l9f36
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l9f79
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l9f45
	ld a,(hl)
	inc hl
	srl a
	jr c,l9f6c
	sub #20
	jr c,l9f76
	jr z,l9f68
	dec a
	ld e,a
.l9f53
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l9f61
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l9f61
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l9f68
	ld e,(hl)
	inc hl
	jr l9f53
.l9f6c
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l9f76
	add #20
	ret
.l9f79
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
.la099
	ld hl,#0008
	add hl,de
	ld de,l991c
	ldi
	ld de,l9b47
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l9a5a),hl
	ld (l9abf),hl
	ld (l9b24),hl
	add hl,bc
	ld de,l99ed
	ldi
	ld de,l9a3e
	ldi
	ld de,l9aa3
	ldi
	ld de,l9b08
	ldi
	ld de,l99d9
	ldi
	ldi
	ld (l9987),hl
	ld a,#01
	ld (l997c),a
	ld (l9982),a
	ld a,#ff
	ld (l9d88),a
	ld hl,(l9a5a)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l9c22),hl
	ld (l9bc3),hl
	ld (l9b67),hl
	ret
.la0f3
	call la182
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	ld hl,l9d81
	ld bc,#0300
.la104
	ld (hl),c
	inc hl
	djnz la104
	ld a,#3f
	jp l9c62
.la10d
	ld hl,#000c
	add hl,de
	ld (la147),hl
	ld hl,#0000
	ld (l9c3c),hl
	ld (l9bdd),hl
	ld (l9b81),hl
	ret
.la121
	ld ix,l9c34
	or a
	jr z,la133
	ld ix,l9bd5
	dec a
	jr z,la133
	ld ix,l9b79
.la133
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.la147 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,la153
	ld a,(hl)
.la153
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	ret
.la162
	ld a,e
	ld hl,l9c3c
	or a
	jr z,la173
	ld hl,l9bdd
	dec a
	jr z,la173
	ld hl,l9b81
	dec a
.la173
	ld (hl),a
	inc hl
	ld (hl),a
	ret
.la177
	ld a,e
	ld (l9cf3),a
	ld (l9d0e),a
	ld (l9d29),a
	ret
.la182
	ld a,i
	di
	ld a,#f3
	jp po,la18c
	ld a,#fb
.la18c
	ld (l9d63),a
	ret
.la190
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld d,(ix+#02)
	ld e,(ix+#04)
	ld h,(ix+#06)
	ld l,(ix+#08)
	ld a,(ix+#0a)
	jp la121
	db #00,#00,#00,#00,#00,#00,#00,#00
.la1b0
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#61,#00,#c4,#a1,#cd,#a1
	db #e1,#a1,#eb,#a1,#00,#00,#00,#00
	db #00,#00,#0d,#c6,#a1,#01,#00,#3c
	db #38,#34,#30,#2c,#28,#24,#20,#1c
	db #18,#14,#10,#0c,#08,#04,#0d,#c6
	db #a1,#03,#00,#3c,#3c,#bc,#ff,#ff
	db #0d,#e4,#a1,#01,#00,#3c,#bc,#ff
	db #ff,#38,#b8,#01,#00,#34,#b4,#ff
	db #ff,#30,#b0,#01,#00,#2c,#ac,#ff
	db #ff,#28,#a8,#01,#00,#24,#a4,#ff
	db #ff,#20,#9c,#01,#00,#18,#94,#ff
	db #ff,#10,#8c,#01,#00,#08,#84,#ff
	db #ff,#00,#0d,#c6,#a1,#40,#00,#00
	db #00,#42,#a2,#00,#43,#a2,#7b,#a2
	db #9d,#a2,#00,#43,#a2,#8d,#a2,#9d
	db #a2,#00,#43,#a2,#8d,#a2,#a5,#a2
	db #00,#43,#a2,#7b,#a2,#84,#a2,#01
	db #23,#a2,#00,#8a,#e3,#00,#00,#01
	db #02,#4b,#02,#4f,#53,#55,#02,#4b
	db #02,#4b,#0a,#4b,#02,#4b,#02,#4f
	db #53,#55,#02,#4b,#02,#4b,#0a,#59
	db #02,#59,#02,#55,#53,#55,#02,#4b
	db #02,#4b,#0a,#59,#02,#59,#02,#55
	db #53,#55,#02,#4b,#02,#4b,#02,#41
	db #02,#33,#00,#42,#80,#00,#00,#1e
	db #42,#60,#00,#00,#42,#80,#00,#00
	db #3e,#42,#60,#00,#00,#8a,#e9,#00
	db #00,#02,#2a,#59,#0a,#53,#06,#55
	db #2a,#4f,#0a,#53,#00,#42,#60,#00
	db #42,#80,#00,#00,#00,#98,#e0,#00
	db #00,#03,#02,#61,#02,#63,#02,#67
	db #02,#59,#02,#61,#02,#63,#67,#04
	db #59,#02,#61,#02,#63,#67,#04,#53
	db #02,#5d,#61,#4f,#02,#61,#02,#4b
	db #02,#59,#1a,#67,#02,#63,#02,#5d
	db #02,#61,#02,#59,#02,#61,#02,#55
	db #02,#5d,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.init_music		; added by Megachur
;
	xor a
	ld h,a
	ld l,a
	ld b,a
	ld c,a
	ld d,a
	ld e,a
	jp real_init_music
;
.play_music
;
	call play_music_interrupt
	call play_music_interrupt
	call play_music_interrupt
	call play_music_interrupt
	call play_music_interrupt
	jp play_music_interrupt
; #92d9
; ld a,#00
; ld hl,#0000
; ld bc,#0000
; ld de,#0000
; call #98da

;
.music_info
	db "Josh (2021)(Philippe MOULIN)(Rayxamber)",0
	db "StArkos",0

	read "music_end.asm"
