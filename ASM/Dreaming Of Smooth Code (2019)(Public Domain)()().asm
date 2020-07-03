; Music of Dreaming Of Smooth Code (2019)(Public Domain)()()
; Ripped by Megachur the 04/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DREAMOSC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #3a8f

	read "music_header.asm"

	jp l3a95	; init music - hl = #4000
	jp l3ac7	; play music
;
.real_init_music
.l3a95
;
	inc hl
	ld a,(hl)
	inc hl
	ld de,#0004
.l3a9b
	add hl,de
	sub #03
	jr z,l3aa2
	jr nc,l3a9b
.l3aa2
	ld (l3ad4),hl
	ld a,#b7
	ld (l3b61),a
	ld (l3b8a),a
	ld (l3b9b),a
	ld hl,#0001
	ld (l3acc),hl
	ret
.l3ab7
	ld (l3acc),hl
	ld b,#0c
.l3abc
	djnz l3abc
	jr l3ac0
.l3ac0
	jr l3afb
.l3ac2
	jr l3ac4
.l3ac4
	nop
	jr l3ade
;
.play_music
.l3ac7
;
	ld (l3c13),sp
.l3acc equ $ + 1
	ld hl,#0001
	dec hl
	ld a,l
	or h
	jr nz,l3ab7
.l3ad4 equ $ + 1
	ld sp,#4006
	pop hl
	ld a,l
	or h
	jr nz,l3ac2
	pop hl	; reset music
	ld sp,hl
	pop hl
.l3ade
	ld (l3acc),hl
	pop hl
	ld (l3b06),hl
	pop hl
	ld (l3b20),hl
	pop hl
	ld (l3b3a),hl
	ld (l3ad4),sp
	ld a,#01
	ld (l3b16),a
	ld (l3b30),a
	jr l3b00
.l3afc equ $ + 1
.l3afb
	ld a,#01
	dec a
	jr nz,l3b65
.l3b00
	ld a,#b7
	ld (l3b61),a
.l3b06 equ $ + 1
	ld sp,#0000
	dec sp
	pop af
	pop hl
	ld (l3b06),sp
	ld (l3b5f),hl
.l3b12
	ld (l3afc),a
.l3b16 equ $ + 1
	ld a,#01
	dec a
	jr nz,l3b6d
	ld a,#b7
	ld (l3b8a),a
.l3b20 equ $ + 1
	ld sp,#0000
	dec sp
	pop af
	pop hl
	ld (l3b20),sp
	ld (l3b88),hl
.l3b2c
	ld (l3b16),a
.l3b30 equ $ + 1
	ld a,#01
	dec a
	jr nz,l3b75
	ld a,#b7
	ld (l3b9b),a
.l3b3a equ $ + 1
	ld sp,#0000
	dec sp
	pop af
	pop hl
	ld (l3b3a),sp
	ld (l3b99),hl
.l3b46
	ld (l3b30),a
	ld hl,#0008
	ld de,#f4f6
	ld bc,#f690
	ld a,#c0
	out (c),a
	ex af,af'
	exx
	ld bc,#e0ff
	ld sp,l3fd6
.l3b5f equ $ + 1
	ld hl,#0000
.l3b61
	or a
	jp l3c16
.l3b65
	ld b,#05
.l3b67
	djnz l3b67
	jr l3b6b
.l3b6b
	jr l3b12
.l3b6d
	ld b,#05
.l3b6f
	djnz l3b6f
	jr l3b73
.l3b73
	jr l3b2c
.l3b75
	ld b,#05
.l3b77
	djnz l3b77
	jr l3b7b
.l3b7b
	jr l3b46
.l3b7d
	ld a,#37
	ld (l3b61),a
	ld (l3b5f),hl
	srl b
.l3b88 equ $ + 1
	ld hl,#0000
.l3b8a
	or a
	jp l3c16
.l3b8e
	ld a,#37
	ld (l3b8a),a
	ld (l3b88),hl
	rr b
.l3b99 equ $ + 1
	ld hl,#0000
.l3b9b
	or a
	jp l3c16
.l3b9f
	ld a,#37
	ld (l3b9b),a
	ld (l3b99),hl
	ld a,b
	exx
	inc h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	dec h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld hl,l3fd2
	dec b
	outi
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	ld a,#0b
	ld b,d
	out (c),a
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc a
	ld b,d
	out (c),a
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	ld a,(hl)
.l3bf3 equ $ + 1
	cp #ff
	jr nz,l3bfd
	ld b,#07
.l3bf8
	djnz l3bf8
	nop
	jr l3c12
.l3bfd
	ld (l3bf3),a
	ld b,d
	ld l,#0d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
.l3c13 equ $ + 1
.l3c12
	ld sp,#0000
	ret
.l3c16
	ld a,(hl)
	inc hl
	jp c,l3d7c
	ld d,#08
.l3c1d
	dec d
	jr nz,l3c1d
	cp (hl)
	ld d,a
	and #03
	add a
	add a
	ld e,a
	ld a,d
	rra
	rra
	ld d,#00
	ld ix,l3c34
	add ix,de
	jp (ix)
.l3c34
	jp l3c43
	nop
	jp l3cbb
	nop
	jp l3c73
	nop
	jp l3d10
.l3c43
	ld d,#20
.l3c45
	dec d
	jr nz,l3c45
	cp (hl)
	nop
	rra
	jr c,l3c54
	jr l3c4f
.l3c4f
	jr l3c51
.l3c51
	cp (hl)
	jr l3c5b
.l3c54
	ld de,l3fd2
	ldi
	res 5,b
.l3c5b
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	inc h
	inc h
	exx
	set 2,b
	ret
.l3c73
	ld d,#19
.l3c75
	dec d
	jr nz,l3c75
	cp (hl)
	rra
	jr c,l3c81
	jr l3c7e
.l3c7e
	nop
	jr l3c86
.l3c81
	set 7,a
	ld (l3bf3),a
.l3c86
	rra
	jr c,l3c90
	jr l3c8b
.l3c8b
	jr l3c8d
.l3c8d
	cp (hl)
	jr l3c97
.l3c90
	ld de,l3fd2
	ldi
	res 5,b
.l3c97
	and #0f
	ld (l3fd5),a
	ld de,l3fd3
	ldi
	ldi
	set 2,b
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	inc h
	inc h
	exx
	ret
.l3cbb
	ld d,#11
.l3cbd
	dec d
	jr nz,l3cbd
	nop
	rra
	jr c,l3ccb
	jr l3cc6
.l3cc6
	jr l3cc8
.l3cc8
	cp (hl)
	jr l3cd2
.l3ccb
	ld de,l3fd2
	ldi
	res 5,b
.l3cd2
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	ret
.l3d10
	ld d,#0a
.l3d12
	dec d
	jr nz,l3d12
	cp (hl)
	rra
	jr c,l3d1e
	jr l3d1b
.l3d1b
	nop
	jr l3d23
.l3d1e
	set 7,a
	ld (l3bf3),a
.l3d23
	rra
	jr c,l3d2d
	jr l3d28
.l3d28
	jr l3d2a
.l3d2a
	cp (hl)
	jr l3d34
.l3d2d
	ld de,l3fd2
	ldi
	res 5,b
.l3d34
	and #0f
	ld (l3fd5),a
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	ld de,l3fd3
	ldi
	ldi
	ret
.l3d7c
	ld d,a
	and #0f
	add a
	add a
	ld e,a
	ld a,d
	rra
	rra
	ld d,#00
	ld ix,l3d8f
	add ix,de
	jp (ix)
.l3d8f
	jp l3df6
	nop
	jp l3e3e
	nop
	jp l3ebf
	nop
	jp l3f14
	nop
	jp l3df6
	nop
	jp l3e3e
	nop
	jp l3ebf
	nop
	jp l3f14
	nop
	jp l3dce
	nop
	jp l3e3e
	nop
	jp l3ebf
	nop
	jp l3f14
	nop
	jp l3df6
	nop
	jp l3e3e
	nop
	jp l3ebf
	nop
	jp l3f14
.l3dce
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld d,a
	and #03
	add a
	add a
	ld e,a
	ld a,d
	rra
	rra
	ld d,#00
	ld ix,l3de7
	add ix,de
	jp (ix)
.l3de7
	jp l3dfc
	nop
	jp l3e44
	nop
	jp l3ec5
	nop
	jp l3f1a
.l3df6
	ld d,#08
.l3df8
	dec d
	jr nz,l3df8
	cp (hl)
.l3dfc
	ld e,a
	ld d,#1e
.l3dff
	dec d
	jr nz,l3dff
	nop
	set 2,b
	rra
	jr c,l3e11
	ld d,#06
.l3e0a
	dec d
	jr nz,l3e0a
	cp (hl)
	nop
	jr l3e25
.l3e11
	and #0f
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	exx
.l3e25
	exx
	inc l
	inc h
	inc h
	exx
	bit 5,e
	jr nz,l3e36
	jr l3e30
.l3e30
	jr l3e32
.l3e32
	jr l3e34
.l3e34
	cp (hl)
	ret
.l3e36
	ld a,(hl)
	ld (l3fd2),a
	inc hl
	res 5,b
	ret
.l3e3e
	ld d,#08
.l3e40
	dec d
	jr nz,l3e40
	cp (hl)
.l3e44
	ld d,#0d
.l3e46
	dec d
	jr nz,l3e46
	ld e,a
	and #0f
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	bit 4,e
	jr nz,l3e6b
	ld d,#07
.l3e65
	dec d
	jr nz,l3e65
	nop
	jr l3e7f
.l3e6b
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	exx
.l3e7f
	bit 5,e
	jr nz,l3e8d
	exx
	inc h
	inc h
	exx
	ld d,#0c
.l3e89
	dec d
	jr nz,l3e89
	ret
.l3e8d
	ld a,(hl)
	inc hl
	exx
	inc h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	rla
	jr c,l3ead
	ld d,#03
.l3ea8
	dec d
	jr nz,l3ea8
	cp (hl)
	ret
.l3ead
	res 5,b
	rla
	jr c,l3eb9
	jr l3eb4
.l3eb4
	jr l3eb6
.l3eb6
	jr l3eb8
.l3eb8
	ret
.l3eb9
	ld de,l3fd2
	ldi
	ret
.l3ebf
	ld d,#08
.l3ec1
	dec d
	jr nz,l3ec1
	cp (hl)
.l3ec5
	ld d,#13
.l3ec7
	dec d
	jr nz,l3ec7
	cp (hl)
	nop
	rla
	ld e,a
	and #0e
	ld (l3fd5),a
	set 2,b
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	inc h
	inc h
	exx
	ld a,e
	rla
	rla
	jr c,l3ef5
	jr l3ef1
.l3ef1
	jr l3ef3
.l3ef3
	jr l3efa
.l3ef5
	ld de,l3fd3
	ldi
.l3efa
	rla
	jr c,l3f03
	jr l3eff
.l3eff
	jr l3f01
.l3f01
	jr l3f08
.l3f03
	ld de,l3fd4
	ldi
.l3f08
	rla
	jp c,l3fab
	ld d,#06
.l3f0e
	dec d
	jr nz,l3f0e
	cp (hl)
	nop
	ret
.l3f14
	ld d,#08
.l3f16
	dec d
	jr nz,l3f16
	cp (hl)
.l3f1a
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	rra
	jr c,l3f36
	jr l3f32
.l3f32
	jr l3f34
.l3f34
	jr l3f3b
.l3f36
	ld de,l3fd3
	ldi
.l3f3b
	rra
	jr c,l3f44
	jr l3f40
.l3f40
	jr l3f42
.l3f42
	jr l3f49
.l3f44
	ld de,l3fd4
	ldi
.l3f49
	rra
	jr c,l3f55
	ld d,#07
.l3f4e
	dec d
	jr nz,l3f4e
	cp (hl)
	nop
	jr l3f6b
.l3f55
	ld e,a
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	exx
	ld a,e
.l3f6b
	rra
	jr c,l3f76
	ld d,#08
.l3f70
	dec d
	jr nz,l3f70
	nop
	jr l3f8e
.l3f76
	ld e,a
	ld a,(hl)
	inc hl
	exx
	inc h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	dec h
	exx
	ld a,e
.l3f8e
	exx
	inc h
	inc h
	exx
	rra
	jr c,l3f9b
	jr l3f97
.l3f97
	jr l3f99
.l3f99
	jr l3fa0
.l3f9b
	ld de,l3fd5
	ldi
.l3fa0
	rra
	jr c,l3fab
	ld d,#06
.l3fa5
	dec d
	jr nz,l3fa5
	cp (hl)
	cp (hl)
	ret
.l3fab
	ld a,(hl)
	inc hl
	rra
	jr c,l3fb5
	jr l3fb2
.l3fb2
	nop
	jr l3fba
.l3fb5
	set 7,a
	ld (l3bf3),a
.l3fba
	rra
	jr c,l3fc5
	jr l3fbf
.l3fbf
	jr l3fc1
.l3fc1
	jr l3fc3
.l3fc3
	cp (hl)
	ret
.l3fc5
	res 5,b
	rra
	jr c,l3fce
	jr l3fcc
.l3fcc
	cp (hl)
	ret
.l3fce
	ld (l3fd2),a
	ret
.l3fd5 equ $ + 3
.l3fd4 equ $ + 2
.l3fd3 equ $ + 1
.l3fd2
	db #00,#00,#00,#00
.l3fd6
	dw l3b7d,l3b8e,l3b9f
;
	ds #4000-$,#00
;
.l4000
;
	db #80,#03,#40,#42,#0f,#00,#80,#01
	db #cc,#45,#4c,#44,#6c,#45,#80,#01
	db #bb,#44,#18,#45,#6c,#45,#80,#01
	db #2b,#47,#a3,#47,#6c,#45,#80,#01
	db #2b,#47,#a3,#47,#6c,#45,#80,#01
	db #20,#46,#a3,#47,#45,#48,#80,#01
	db #aa,#46,#a3,#47,#45,#48,#80,#01
	db #2b,#47,#a3,#47,#45,#48,#80,#01
	db #d5,#42,#a3,#47,#45,#48,#80,#01
	db #2e,#41,#a3,#47,#45,#48,#80,#01
	db #ee,#41,#a3,#47,#45,#48,#80,#01
	db #ae,#42,#a3,#47,#7a,#40,#80,#01
	db #2b,#47,#a3,#47,#45,#48,#80,#01
	db #8c,#43,#a3,#47,#6c,#45,#80,#01
	db #ec,#43,#37,#44,#6c,#45,#00,#00
	db #06,#40,#06,#54,#4a,#06,#54,#4a
	db #06,#54,#4a,#06,#54,#4a,#06,#54
	db #4a,#06,#54,#4a,#06,#54,#4a,#06
	db #54,#4a,#06,#54,#4a,#06,#78,#4a
	db #06,#5a,#4a,#06,#54,#4a,#06,#54
	db #4a,#06,#54,#4a,#06,#5a,#4a,#06
	db #54,#4a,#06,#b6,#49,#06,#b6,#49
	db #06,#b6,#49,#06,#b6,#49,#06,#0d
	db #4a,#06,#b6,#49,#06,#b6,#49,#06
	db #b6,#49,#06,#b6,#49,#06,#b6,#49
	db #06,#5a,#4a,#06,#0d,#4a,#06,#b6
	db #49,#06,#b6,#49,#06,#60,#4a,#06
	db #b6,#49,#06,#54,#4a,#06,#54,#4a
	db #06,#54,#4a,#06,#54,#4a,#06,#54
	db #4a,#06,#54,#4a,#06,#54,#4a,#06
	db #54,#4a,#06,#54,#4a,#06,#54,#4a
	db #06,#5a,#4a,#06,#78,#4a,#06,#54
	db #4a,#06,#b6,#49,#06,#60,#4a,#06
	db #54,#4a,#06,#66,#4a,#06,#66,#4a
	db #06,#66,#4a,#06,#66,#4a,#06,#66
	db #4a,#06,#66,#4a,#06,#6c,#4a,#06
	db #66,#4a,#0c,#b6,#49,#0c,#c2,#49
	db #0c,#b6,#49,#0c,#c8,#49,#06,#c2
	db #49,#06,#a2,#4a,#06,#78,#4a,#06
	db #a8,#4a,#06,#ae,#4a,#06,#b4,#4a
	db #06,#ba,#4a,#06,#c0,#4a,#06,#78
	db #4a,#06,#a8,#4a,#06,#ae,#4a,#06
	db #b4,#4a,#06,#ba,#4a,#06,#c0,#4a
	db #06,#c6,#4a,#06,#cc,#4a,#06,#a8
	db #4a,#06,#ae,#4a,#06,#b4,#4a,#06
	db #ba,#4a,#06,#c0,#4a,#06,#cc,#4a
	db #06,#d2,#4a,#06,#d8,#4a,#06,#d8
	db #4a,#06,#c8,#49,#06,#cc,#4a,#06
	db #c6,#4a,#06,#de,#4a,#06,#cc,#4a
	db #06,#c6,#4a,#06,#e4,#4a,#06,#c6
	db #4a,#06,#e4,#4a,#06,#c0,#4a,#06
	db #ba,#4a,#06,#ae,#4a,#06,#b4,#4a
	db #06,#ba,#4a,#06,#c0,#4a,#06,#b4
	db #4a,#06,#ae,#4a,#06,#a8,#4a,#06
	db #78,#4a,#06,#a2,#4a,#06,#c2,#49
	db #06,#ae,#4a,#06,#a8,#4a,#06,#78
	db #4a,#06,#b4,#4a,#06,#ae,#4a,#06
	db #a8,#4a,#06,#ba,#4a,#06,#b4,#4a
	db #06,#ae,#4a,#06,#cc,#4a,#06,#c6
	db #4a,#06,#e4,#4a,#06,#c8,#49,#06
	db #de,#4a,#06,#d2,#4a,#06,#d8,#4a
	db #06,#ea,#4a,#06,#f0,#4a,#06,#c8
	db #49,#06,#de,#4a,#06,#cc,#4a,#06
	db #de,#4a,#06,#cc,#4a,#06,#c6,#4a
	db #06,#cc,#4a,#06,#c6,#4a,#06,#cc
	db #4a,#06,#c8,#49,#06,#de,#4a,#06
	db #cc,#4a,#06,#de,#4a,#06,#cc,#4a
	db #06,#c6,#4a,#06,#cc,#4a,#06,#c8
	db #49,#06,#de,#4a,#06,#cc,#4a,#06
	db #de,#4a,#06,#cc,#4a,#06,#c6,#4a
	db #06,#cc,#4a,#06,#c6,#4a,#06,#c8
	db #49,#06,#de,#4a,#06,#cc,#4a,#06
	db #de,#4a,#06,#cc,#4a,#06,#c6,#4a
	db #06,#cc,#4a,#06,#c6,#4a,#06,#c8
	db #49,#06,#de,#4a,#06,#cc,#4a,#06
	db #de,#4a,#06,#cc,#4a,#06,#c6,#4a
	db #06,#cc,#4a,#06,#c6,#4a,#06,#c8
	db #49,#06,#de,#4a,#06,#cc,#4a,#06
	db #de,#4a,#06,#c8,#49,#06,#de,#4a
	db #06,#cc,#4a,#06,#de,#4a,#06,#c8
	db #49,#06,#de,#4a,#06,#cc,#4a,#06
	db #de,#4a,#06,#c8,#49,#06,#de,#4a
	db #06,#cc,#4a,#06,#de,#4a,#06,#c8
	db #49,#06,#de,#4a,#06,#cc,#4a,#06
	db #de,#4a,#06,#cc,#4a,#06,#c6,#4a
	db #06,#cc,#4a,#06,#c6,#4a,#18,#76
	db #49,#30,#2a,#49,#30,#2a,#49,#30
	db #2a,#49,#30,#2a,#49,#30,#2a,#49
	db #30,#2a,#49,#18,#2a,#49,#18,#7e
	db #49,#06,#7e,#49,#06,#7e,#49,#06
	db #7e,#49,#06,#7e,#49,#06,#92,#49
	db #06,#c2,#49,#06,#92,#49,#06,#a8
	db #4a,#06,#15,#49,#06,#78,#4a,#06
	db #92,#49,#06,#ae,#4a,#06,#92,#49
	db #06,#a8,#4a,#06,#92,#49,#06,#b4
	db #4a,#06,#15,#49,#06,#ae,#4a,#06
	db #92,#49,#06,#ba,#4a,#06,#04,#4b
	db #06,#a8,#4a,#06,#92,#49,#06,#b4
	db #4a,#06,#15,#49,#06,#b4,#4a,#06
	db #ba,#4a,#06,#c6,#4a,#06,#92,#49
	db #06,#c8,#49,#06,#92,#49,#06,#de
	db #4a,#06,#15,#49,#06,#0d,#4b,#06
	db #17,#4b,#06,#04,#4b,#0c,#64,#49
	db #06,#13,#4a,#06,#c8,#49,#06,#de
	db #4a,#06,#cc,#4a,#06,#92,#49,#06
	db #de,#4a,#06,#cc,#4a,#06,#c6,#4a
	db #06,#92,#49,#06,#e4,#4a,#06,#c0
	db #4a,#06,#b4,#4a,#0c,#92,#49,#06
	db #cc,#4a,#06,#78,#4a,#06,#92,#49
	db #06,#b4,#4a,#06,#64,#49,#06,#ae
	db #4a,#06,#a8,#4a,#06,#ae,#4a,#06
	db #a8,#4a,#06,#78,#4a,#0c,#92,#49
	db #06,#15,#49,#06,#a2,#4a,#06,#92
	db #49,#06,#92,#49,#0c,#92,#49,#0c
	db #92,#49,#0c,#15,#49,#0c,#92,#49
	db #0c,#92,#49,#0c,#92,#49,#0c,#15
	db #49,#06,#92,#49,#06,#28,#4b,#06
	db #04,#4b,#06,#32,#4b,#0c,#92,#49
	db #0c,#15,#49,#0c,#92,#49,#0c,#92
	db #49,#06,#92,#49,#06,#92,#49,#18
	db #15,#49,#24,#64,#49,#0c,#92,#49
	db #0c,#92,#49,#0c,#92,#49,#0c,#15
	db #49,#18,#92,#49,#0c,#92,#49,#0c
	db #64,#49,#18,#92,#49,#0c,#92,#49
	db #06,#15,#49,#06,#3b,#4b,#06,#92
	db #49,#06,#92,#49,#0c,#92,#49,#0c
	db #92,#49,#0c,#15,#49,#0c,#92,#49
	db #0c,#92,#49,#0c,#92,#49,#0c,#15
	db #49,#18,#92,#49,#0c,#92,#49,#0c
	db #15,#49,#0c,#92,#49,#0c,#92,#49
	db #06,#92,#49,#06,#92,#49,#3c,#15
	db #49,#0c,#92,#49,#0c,#92,#49,#0c
	db #92,#49,#0c,#15,#49,#18,#92,#49
	db #18,#92,#49,#18,#92,#49,#0c,#92
	db #49,#0c,#15,#49,#0c,#92,#49,#30
	db #37,#49,#30,#43,#49,#30,#37,#49
	db #30,#52,#49,#60,#05,#49,#30,#58
	db #49,#30,#52,#49,#0c,#37,#49,#0c
	db #43,#49,#0c,#37,#49,#0c,#e3,#49
	db #0c,#43,#49,#06,#5a,#4a,#06,#6c
	db #4a,#0c,#e3,#49,#0c,#b0,#49,#0c
	db #37,#49,#0c,#52,#49,#0c,#37,#49
	db #0c,#a4,#49,#0c,#52,#49,#06,#48
	db #4a,#06,#4b,#4b,#06,#e3,#49,#06
	db #5a,#4a,#06,#52,#49,#06,#5a,#4a
	db #0c,#05,#49,#0c,#43,#49,#0c,#05
	db #49,#18,#a4,#49,#06,#05,#49,#06
	db #0d,#4a,#06,#a4,#49,#06,#4b,#4b
	db #06,#b0,#49,#06,#6c,#4a,#0c,#58
	db #49,#0c,#fb,#49,#0c,#01,#4a,#0c
	db #58,#49,#0c,#52,#49,#0c,#0d,#4a
	db #18,#58,#49,#0c,#92,#49,#0c,#92
	db #49,#0c,#15,#49,#0c,#92,#49,#0c
	db #92,#49,#0c,#92,#49,#0c,#15,#49
	db #12,#92,#49,#06,#32,#4b,#0c,#92
	db #49,#0c,#15,#49,#0c,#92,#49,#0c
	db #92,#49,#06,#92,#49,#06,#92,#49
	db #24,#15,#49,#0c,#13,#4a,#0c,#64
	db #49,#0c,#92,#49,#0c,#92,#49,#0c
	db #92,#49,#0c,#15,#49,#18,#92,#49
	db #18,#92,#49,#0c,#92,#49,#0c,#24
	db #4a,#0c,#92,#49,#06,#15,#49,#06
	db #3b,#4b,#06,#92,#49,#06,#92,#49
	db #0c,#37,#4a,#0c,#43,#49,#0c,#37
	db #49,#0c,#e3,#49,#18,#43,#49,#0c
	db #e3,#49,#0c,#b0,#49,#0c,#37,#49
	db #0c,#52,#49,#0c,#37,#49,#0c,#a4
	db #49,#0c,#52,#49,#0c,#48,#4a,#0c
	db #e3,#49,#0c,#52,#49,#0c,#05,#49
	db #0c,#43,#49,#0c,#05,#49,#18,#a4
	db #49,#0c,#05,#49,#0c,#a4,#49,#0c
	db #b0,#49,#0c,#58,#49,#0c,#fb,#49
	db #0c,#01,#4a,#0c,#58,#49,#18,#52
	db #49,#18,#58,#49,#0c,#54,#4a,#0c
	db #54,#4a,#0c,#54,#4a,#0c,#54,#4a
	db #0c,#54,#4a,#0c,#5a,#4a,#0c,#54
	db #4a,#0c,#5a,#4a,#0c,#b6,#49,#0c
	db #b6,#49,#0c,#0d,#4a,#0c,#b6,#49
	db #0c,#b6,#49,#0c,#5a,#4a,#0c,#b6
	db #49,#0c,#60,#4a,#0c,#54,#4a,#0c
	db #54,#4a,#0c,#54,#4a,#0c,#54,#4a
	db #0c,#54,#4a,#0c,#5a,#4a,#0c,#54
	db #4a,#0c,#60,#4a,#0c,#66,#4a,#0c
	db #66,#4a,#0c,#66,#4a,#0c,#6c,#4a
	db #0c,#b6,#49,#0c,#c2,#49,#0c,#b6
	db #49,#0c,#c8,#49,#0c,#92,#49,#0c
	db #92,#49,#0c,#15,#49,#0c,#92,#49
	db #0c,#92,#49,#0c,#92,#49,#0c,#15
	db #49,#18,#92,#49,#0c,#92,#49,#0c
	db #15,#49,#0c,#92,#49,#0c,#92,#49
	db #06,#92,#49,#06,#92,#49,#30,#15
	db #49,#0c,#64,#49,#0c,#92,#49,#0c
	db #92,#49,#0c,#92,#49,#0c,#15,#49
	db #18,#92,#49,#0c,#92,#49,#0c,#64
	db #49,#18,#92,#49,#0c,#92,#49,#0c
	db #15,#49,#06,#92,#49,#06,#92,#49
	db #0c,#92,#49,#0c,#92,#49,#0c,#15
	db #49,#0c,#92,#49,#0c,#92,#49,#0c
	db #92,#49,#0c,#15,#49,#06,#92,#49
	db #06,#28,#4b,#06,#04,#4b,#06,#32
	db #4b,#0c,#92,#49,#0c,#15,#49,#0c
	db #92,#49,#0c,#92,#49,#06,#92,#49
	db #06,#92,#49,#06,#15,#49,#06,#0d
	db #4b,#06,#17,#4b,#06,#04,#4b,#0c
	db #64,#49,#0c,#13,#4a,#0c,#64,#49
	db #0c,#92,#49,#0c,#92,#49,#0c,#92
	db #49,#0c,#15,#49,#06,#92,#49,#06
	db #78,#4a,#06,#ae,#4a,#06,#a8,#4a
	db #06,#92,#49,#06,#b4,#4a,#06,#64
	db #49,#06,#c6,#4a,#06,#92,#49,#06
	db #c8,#49,#06,#24,#4a,#06,#b4,#4a
	db #06,#92,#49,#06,#ae,#4a,#06,#15
	db #49,#06,#c8,#49,#06,#d2,#4a,#06
	db #92,#49,#0c,#92,#49,#0c,#92,#49
	db #0c,#15,#49,#0c,#92,#49,#0c,#92
	db #49,#0c,#92,#49,#0c,#15,#49,#06
	db #92,#49,#06,#28,#4b,#06,#04,#4b
	db #06,#32,#4b,#0c,#92,#49,#0c,#15
	db #49,#0c,#92,#49,#0c,#92,#49,#06
	db #92,#49,#06,#92,#49,#06,#15,#49
	db #06,#0d,#4b,#06,#17,#4b,#06,#04
	db #4b,#0c,#64,#49,#0c,#13,#4a,#0c
	db #64,#49,#0c,#92,#49,#0c,#92,#49
	db #0c,#92,#49,#0c,#15,#49,#18,#92
	db #49,#06,#92,#49,#06,#ea,#4a,#06
	db #d8,#4a,#06,#d2,#4a,#06,#c8,#49
	db #06,#51,#4b,#06,#de,#4a,#06,#c8
	db #49,#06,#92,#49,#06,#d2,#4a,#06
	db #15,#49,#06,#d8,#4a,#06,#92,#49
	db #06,#92,#49,#0c,#92,#49,#0c,#92
	db #49,#0c,#15,#49,#0c,#92,#49,#0c
	db #92,#49,#0c,#92,#49,#0c,#15,#49
	db #06,#92,#49,#06,#28,#4b,#06,#04
	db #4b,#06,#32,#4b,#0c,#92,#49,#0c
	db #15,#49,#0c,#92,#49,#0c,#92,#49
	db #06,#92,#49,#06,#92,#49,#06,#15
	db #49,#06,#0d,#4b,#06,#17,#4b,#06
	db #04,#4b,#0c,#64,#49,#0c,#13,#4a
	db #0c,#64,#49,#0c,#92,#49,#0c,#92
	db #49,#0c,#92,#49,#0c,#15,#49,#18
	db #92,#49,#0c,#92,#49,#0c,#64,#49
	db #06,#92,#49,#06,#51,#4b,#06,#24
	db #4a,#06,#28,#4b,#0c,#92,#49,#06
	db #15,#49,#06,#3b,#4b,#06,#92,#49
	db #06,#92,#49,#06,#37,#49,#06,#43
	db #49,#06,#43,#49,#06,#43,#49,#06
	db #37,#49,#06,#43,#49,#06,#e3,#49
	db #06,#43,#49,#06,#43,#49,#0c,#43
	db #49,#06,#43,#49,#06,#e3,#49,#06
	db #b0,#49,#0c,#b0,#49,#06,#37,#49
	db #06,#52,#49,#06,#52,#49,#06,#52
	db #49,#06,#37,#49,#06,#52,#49,#06
	db #a4,#49,#06,#52,#49,#06,#52,#49
	db #06,#52,#49,#06,#48,#4a,#06,#52
	db #49,#06,#e3,#49,#06,#52,#49,#06
	db #52,#49,#06,#52,#49,#06,#05,#49
	db #06,#43,#49,#06,#43,#49,#06,#43
	db #49,#0c,#05,#49,#18,#a4,#49,#06
	db #05,#49,#06,#43,#49,#06,#a4,#49
	db #06,#b0,#49,#06,#b0,#49,#06,#b0
	db #49,#06,#58,#49,#06,#fb,#49,#06
	db #fb,#49,#06,#fb,#49,#06,#01,#4a
	db #06,#fb,#49,#06,#58,#49,#06,#52
	db #49,#06,#52,#49,#12,#52,#49,#06
	db #58,#49,#12,#b0,#49,#06,#54,#4a
	db #06,#54,#4a,#06,#54,#4a,#06,#54
	db #4a,#06,#54,#4a,#06,#54,#4a,#06
	db #54,#4a,#06,#54,#4a,#06,#54,#4a
	db #06,#78,#4a,#06,#5a,#4a,#06,#54
	db #4a,#06,#54,#4a,#06,#54,#4a,#06
	db #5a,#4a,#06,#54,#4a,#06,#b6,#49
	db #06,#b6,#49,#06,#b6,#49,#06,#b6
	db #49,#06,#0d,#4a,#06,#b6,#49,#06
	db #b6,#49,#06,#b6,#49,#06,#b6,#49
	db #06,#b6,#49,#06,#5a,#4a,#06,#0d
	db #4a,#06,#b6,#49,#06,#b6,#49,#06
	db #60,#4a,#06,#b6,#49,#06,#54,#4a
	db #06,#54,#4a,#06,#54,#4a,#06,#54
	db #4a,#06,#54,#4a,#06,#54,#4a,#06
	db #54,#4a,#06,#54,#4a,#06,#54,#4a
	db #06,#54,#4a,#06,#5a,#4a,#06,#78
	db #4a,#06,#54,#4a,#06,#b6,#49,#06
	db #60,#4a,#06,#54,#4a,#06,#66,#4a
	db #06,#66,#4a,#06,#66,#4a,#06,#66
	db #4a,#06,#66,#4a,#06,#66,#4a,#06
	db #6c,#4a,#06,#66,#4a,#06,#b6,#49
	db #06,#b6,#49,#06,#c2,#49,#06,#b6
	db #49,#06,#b6,#49,#06,#b4,#4a,#06
	db #c8,#49,#06,#b6,#49,#71,#7e,#02
	db #f5,#3f,#01,#f5,#7e,#02,#31,#31
	db #31,#04,#08,#11,#49,#7d,#01,#77
	db #07,#f9,#e9,#87,#f5,#61,#88,#e4
	db #01,#dc,#01,#d4,#01,#cc,#01,#08
	db #11,#49,#7d,#01,#f6,#02,#f9,#24
	db #83,#f5,#53,#83,#08,#1f,#49,#71
	db #f6,#02,#f5,#7b,#01,#f5,#f6,#02
	db #08,#0e,#49,#61,#f6,#02,#31,#31
	db #31,#31,#25,#25,#21,#21,#1d,#08
	db #4d,#49,#61,#38,#02,#08,#46,#49
	db #71,#38,#02,#f5,#1c,#01,#f5,#38
	db #02,#08,#0e,#49,#7d,#0d,#77,#00
	db #fd,#f7,#ff,#fd,#17,#00,#7d,#f7
	db #fd,#37,#01,#08,#11,#49,#01,#5f
	db #00,#01,#25,#08,#7a,#49,#7d,#01
	db #bc,#03,#f9,#f4,#83,#f5,#31,#84
	db #08,#1f,#49,#7d,#01,#77,#07,#08
	db #19,#49,#7d,#0d,#77,#07,#fd,#f7
	db #06,#fd,#17,#07,#7d,#f7,#fd,#37
	db #08,#08,#11,#49,#71,#3f,#01,#f5
	db #9f,#00,#f5,#3f,#01,#08,#0e,#49
	db #61,#7e,#02,#08,#46,#49,#69,#38
	db #02,#31,#2d,#2d,#2d,#01,#01,#08
	db #79,#49,#69,#ef,#00,#08,#b9,#49
	db #69,#47,#00,#08,#b9,#49,#7d,#0d
	db #77,#00,#08,#68,#49,#7d,#0d,#77
	db #07,#08,#96,#49,#7d,#01,#77,#07
	db #08,#19,#49,#71,#7b,#01,#f5,#be
	db #00,#f5,#7b,#01,#08,#0e,#49,#61
	db #7e,#02,#08,#46,#49,#71,#3f,#01
	db #08,#a7,#49,#61,#fa,#01,#08,#46
	db #49,#71,#1c,#01,#f5,#8e,#00,#f5
	db #1c,#01,#08,#0e,#49,#69,#1c,#01
	db #08,#b9,#49,#7d,#0d,#3c,#00,#fd
	db #bc,#ff,#7d,#dc,#fd,#bc,#00,#7d
	db #fc,#08,#11,#49,#71,#47,#00,#39
	db #79,#3c,#39,#79,#2f,#39,#79,#47
	db #39,#71,#3c,#31,#71,#2f,#31,#7d
	db #0d,#3f,#01,#fd,#bf,#00,#7d,#df
	db #fd,#bf,#01,#7d,#ff,#08,#11,#49
	db #71,#cc,#02,#f5,#66,#01,#f5,#cc
	db #02,#08,#0e,#49,#69,#f6,#02,#08
	db #b9,#49,#69,#7b,#01,#08,#b9,#49
	db #69,#fd,#00,#08,#b9,#49,#69,#7e
	db #02,#08,#b9,#49,#69,#3f,#01,#08
	db #b9,#49,#69,#f6,#02,#08,#b9,#49
	db #69,#be,#00,#08,#b9,#49,#69,#7b
	db #01,#08,#b9,#49,#69,#38,#02,#08
	db #b9,#49,#69,#1c,#01,#08,#b9,#49
	db #69,#fd,#00,#08,#b9,#49,#69,#7e
	db #02,#08,#b9,#49,#69,#3f,#01,#08
	db #b9,#49,#69,#d5,#00,#08,#b9,#49
	db #69,#b3,#00,#08,#b9,#49,#69,#9f
	db #00,#08,#b9,#49,#69,#8e,#00,#08
	db #b9,#49,#69,#7f,#00,#08,#b9,#49
	db #69,#77,#00,#08,#b9,#49,#69,#5f
	db #00,#08,#b9,#49,#69,#59,#00,#08
	db #b9,#49,#69,#3f,#00,#08,#b9,#49
	db #69,#3c,#00,#08,#b9,#49,#69,#50
	db #00,#08,#b9,#49,#69,#6a,#00,#08
	db #b9,#49,#69,#35,#00,#08,#b9,#49
	db #69,#2f,#00,#08,#b9,#49,#7d,#0d
	db #77,#07,#08,#96,#49,#7d,#01,#77
	db #07,#08,#19,#49,#71,#59,#00,#39
	db #79,#4b,#08,#27,#4a,#71,#50,#00
	db #39,#79,#43,#39,#79,#35,#39,#71
	db #24,#00,#39,#79,#1e,#39,#79,#18
	db #39,#7d,#0d,#3c,#00,#08,#17,#4a
	db #71,#2f,#00,#39,#79,#28,#39,#79
	db #20,#39,#71,#2d,#00,#39,#79,#26
	db #08,#1a,#4b,#71,#5f,#00,#39,#79
	db #50,#39,#79,#3f,#39,#71,#cc,#02
	db #08,#4b,#4a,#69,#66,#01,#08,#b9
	db #49,#71,#28,#00,#39,#79,#22,#39
	db #79,#1b,#39,#00,#00,#00,#00,#00
;
; #0269
; ld hl,#4000
; call #3a95
;
.init_music		; added by Megachur
;
	ld hl,l4000
	jp real_init_music
;
.music_info
	db "Dreaming Of Smooth Code (2019)(Public Domain)()",0
	db "",0

	read "music_end.asm"
