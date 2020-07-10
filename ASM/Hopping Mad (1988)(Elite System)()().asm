; Music of Hopping Mad (1988)(Elite System)()()
; Ripped by Megachur the 02/02/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HOPPINGM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #a000
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

.la000
	db #01
.la001
	jp la089	; init music
.la004
	jp la0c3	; play music
	jp la072
	jp la059
;
.stop_music
.la00d		; stop music
;
	ld hl,la6b0
	ld (hl),#00
	ld e,l
	ld d,h
	inc de
	ld bc,#0092
	ldir
	xor a
	ld e,#08
	call la64b
	ld e,#09
	call la64b
	ld e,#0a
	call la64b
	ld a,#3f
	ld (la67e),a
	ld e,#07
	call la64b
	ld a,#01
	ld (la6b3),a
	ld (la6e4),a
	ld (la715),a
	ld (la6b6),a
	ld (la6e7),a
	ld (la718),a
	ld (la1aa),a
	ld (la1ab),a
	xor a
	ld (la6b0),a
	ld (la6e1),a
	ld (la712),a
	ret
.la059
	ld l,c
	ld a,(la67e)
	or c
	srl c
	srl c
	srl c
	or c
	ld (la67e),a
	ld e,#07
	call la64b
	ld c,l
	xor a
	jp la074
.la072
	ld a,#01
.la074
	srl c
	jr nc,la07b
	ld (la6b0),a
.la07b
	srl c
	jr nc,la082
	ld (la6e1),a
.la082
	srl c
	ret nc
	ld (la712),a
	ret
;
.init_music     ; a = 0,1
.la089
;
	ex af,af'
	call la00d
	ex af,af'
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,la768
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la6b1),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la6e2),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la713),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (la67c),de
	ld a,#02
	ld (la6b0),a
	ld (la6e1),a
	ld (la712),a
	ret
;
.la0c3
.play_music
;
	xor a
	ld hl,la6b0
.la0c7
	push af
	push hl
	ld b,a
	add a
	ld (la625),a
	inc a
	ld (la62b),a
	ld a,b
	add #08
	ld (la639),a
	ld a,b
	inc a
	cp #03
	jp nz,la0e0
	inc a
.la0e0
	ld (la2d5),a
	ld bc,#0031
	ld de,la67f
	ldir
	call la10e
	pop de
	ld hl,la67f
	ld bc,#0031
	ldir
	ex de,hl
	pop af
	inc a
	cp #03
	jp nz,la0c7
	ld a,(la1aa)
	dec a
	ld (la1aa),a
	ret nz
	ld a,(la1ab)
	ld (la1aa),a
	ret
.la10e
	ld a,(la67f)
	and a
	ret z
	ld a,(la1aa)
	dec a
	jp nz,la189
	ld a,(la682)
	dec a
	ld (la682),a
	jp nz,la189
.la124
	ld hl,(la680)
	ld a,(hl)
	inc hl
	and a
	ld c,#00
	jp p,la136
	ld c,#01
	and #7f
	jp la169
.la136
	cp #60
	jp c,la169
	sub #60
	jp z,la1c8
	dec a
	jp z,la1fd
	dec a
	jr z,la1c2
	dec a
	jp z,la1ac
	dec a
	jp z,la235
	dec a
	jp z,la27a
	dec a
	jp z,la284
	dec a
	jp z,la26f
	dec a
	jp z,la25a
	dec a
	jp z,la265
	dec a
	jr z,la1b7
	jp la297
.la169
	ex af,af'
	ld a,(hl)
	inc hl
	ld (la680),hl
	push af
	and #f0
	srl c
	call la2a1
	pop af
	and #0f
	ld e,a
	ld d,#00
	ld hl,(la67c)
	add hl,de
	ld a,(hl)
	ld (la682),a
	ex af,af'
	call la2f3
.la189
	ld a,(la685)
	dec a
	jr z,la1a6
	call la50d
	call la4c3
	call la445
	srl a
	ld (la688),a
	call la561
	call la5aa
	call la5c0
.la1a6
	call la616
	ret
.la1ac equ $ + 2
.la1ab equ $ + 1
.la1aa
	db #01,#01,#7e	;ld bc,#7e01
	ld (la000),a
	inc hl
	ld (la680),hl
	jp la124
.la1b7
	ld a,(hl)
	ld (la69b),a
	inc hl
	ld (la680),hl
	jp la124
.la1c2
	ld a,(hl)
	ex af,af'
	inc hl
	jp la1cb
.la1c8
	ld a,#01
	ex af,af'
.la1cb
	ld c,(hl)
	inc hl
	ld a,(hl)
	add a
	inc hl
	ld (la6a0),a
	ex de,hl
	ld b,#00
	sla c
	ld hl,lb162
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (la680),bc
	ld a,(la68c)
	inc a
	ld (la68c),a
	ld c,a
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,la68a
	add hl,bc
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ex af,af'
	ld (hl),a
	jp la124
.la1fd
	ld a,(la68c)
	ld c,a
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,la68a
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	dec (hl)
	jp z,la226
	ex de,hl
	dec hl
	dec hl
	ld c,(hl)
	sla c
	ld hl,lb162
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (la680),hl
	jp la124
.la226
	ld (la680),de
	ld hl,la68c
	dec (hl)
	xor a
	ld (la6a0),a
	jp la124
.la235
	ld e,(hl)
	inc hl
	ld (la680),hl
	sla e
	sla e
	sla e
	ld d,#00
	ld hl,la481
	add hl,de
	ld (la4c1),hl
	ld a,#01
	ld (la6b6),a
	ld (la6e7),a
	ld (la718),a
	ld (la685),a
	jp la124
.la25a
	ld (la680),hl
	ld a,#02
	ld (la68b),a
	jp la124
.la265
	ld (la680),hl
	xor a
	ld (la68b),a
	jp la124
.la26f
	ld a,(hl)
	ld (la1ab),a
	inc hl
	ld (la680),hl
	jp la124
.la27a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld (la680),hl
	jp la124
.la284
	ld a,(hl)
	and #0f
	ld e,a
	inc hl
	ld (la680),hl
	ld d,#00
	ld hl,(la67c)
	add hl,de
	ld a,(hl)
	ld (la682),a
	ret
.la297
	xor a
	ld (la67f),a
	ld (la688),a
	jp la616
.la2a1
	ld hl,la685
	cp (hl)
	ret z
	ld (la685),a
	ld hl,la7f3
	ld e,a
	ld d,#00
	add hl,de
	ld (la686),hl
	ld e,#06
	add hl,de
	ld e,(hl)
	ld hl,(la4c1)
	add hl,de
	ld e,(hl)
	sla e
	ld hl,la471
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (la6a3),hl
	ld hl,(la686)
	ld de,#000a
	add hl,de
	ld a,(la67e)
	ld c,a
.la2d5 equ $ + 1
	ld a,#00
	ld b,(hl)
	srl b
	jr nc,la2e1
	ld e,a
	cpl
	and c
	jp la2e3
.la2e1
	ld e,a
	or c
.la2e3
	srl e
	srl e
	srl e
	or e
	ld (la67e),a
	ld e,#07
	call la64b
	ret
.la2f3
	add a
	ld e,a
	ld d,#00
	ld hl,la39d
	add hl,de
	ld a,(la6a0)
	ld e,a
	add hl,de
	ex de,hl
	ld hl,#0000
	ld a,(la68b)
	and a
	jr z,la310
	dec a
	jr z,la316
	ld (la68b),a
.la310
	ld (la6a5),hl
	ld (la6a7),hl
.la316
	ld (la6a9),hl
	ld (la6ab),hl
	ld (la6ad),hl
	ld hl,(la686)
	ld bc,#000b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (la6a1),bc
	xor a
	ld (la6af),a
	ld a,#fe
	ld (la699),a
	ld a,(la69b)
	and a
	jr nz,la348
	ex de,hl
	ld (la683),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (la689),de
	ret
.la348
	ld hl,(la683)
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ex de,hl
	ld (la683),hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (la689),hl
	ex de,hl
	sbc hl,de
	push hl
	jp nc,la37f
	add hl,de
	ex de,hl
	and a
	sbc hl,de
	ld a,(la69b)
	ld c,a
	ld b,#00
	ld (la69e),bc
	call la63e
	ld (la69c),hl
	ld b,#00
	ld c,a
	pop hl
	add hl,bc
	ld (la6ad),hl
	ret
.la37f
	ld a,(la69b)
	ld c,a
	neg
	ld e,a
	ld d,#ff
	ld (la69e),de
	call la63e
	ld (la69c),hl
	ld b,#ff
	cpl
	ld c,a
	inc bc
	pop hl
	add hl,bc
	ld (la6ad),hl
	ret
.la39d
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
.la445
	ld a,(la6a8)
	srl a
	srl a
	srl a
	ld hl,(la6a3)
	jp (hl)
.la452
	add a
.la453
	add a
.la454
	add a
	add a
	ret
.la457
	add a
	ld b,a
	add a
	add a
	add a
	sub b
	ret
.la45e
	add a
	add a
	ld b,a
	add a
	add b
	ret
.la464
	add a
	ld b,a
	add a
	add a
	add b
	ret
.la46a
	add a
	ld b,a
	add a
	add b
	ret
.la46f
	xor a
	ret
.la471
	dw la46f,la454,la46a,la453
	dw la464,la45e,la457,la452
.la481
	db #00,#00,#00,#00,#00,#01,#01,#01
	db #00,#00,#01,#01,#01,#02,#02,#02
	db #00,#00,#01,#02,#02,#02,#03,#03
	db #00,#01,#02,#02,#03,#03,#04,#04
	db #00,#01,#01,#02,#03,#04,#04,#05
	db #00,#01,#02,#03,#04,#05,#05,#06
	db #00,#01,#01,#02,#03,#04,#05,#06
	db #00,#01,#02,#03,#04,#05,#06,#07
.la4c1
	cp c
	and h
.la4c3
	ld hl,(la686)
	ld de,#0005
	add hl,de
	ld a,(la6a5)
	inc a
	cp (hl)
	ld (la6a5),a
	ret c
	xor a
	ld (la6a5),a
	ld b,a
	ld a,(la68b)
	and a
	jp z,la4e5
	ld a,(la6a6)
	cp #04
	ret z
.la4e5
	dec hl
	ld a,(hl)
	dec hl
	ld l,(hl)
	ld h,a
	ld a,(la6a6)
	ld c,a
	add hl,bc
	ld e,(hl)
	ld a,(la6a8)
	add e
	ret m
	ld (la6a8),a
	ld a,(la6a7)
	inc a
	ld (la6a7),a
	inc hl
	cp (hl)
	ret c
	xor a
	ld (la6a7),a
	inc c
	inc c
	ld a,c
	ld (la6a6),a
	ret
.la50d
	ld hl,(la686)
	inc hl
	inc hl
	ld a,(la6a9)
	inc a
	cp (hl)
	ld (la6a9),a
	ret c
	xor a
	ld (la6a9),a
	ld b,a
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld a,(la6aa)
	ld l,a
	ld h,b
	add hl,de
	ld a,(hl)
	ex de,hl
	and a
	ld c,a
	jp p,la533
	ld b,#ff
.la533
	ld hl,(la6ad)
	add hl,bc
	ld (la6ad),hl
	inc de
	ex de,hl
	ld a,(la6ab)
	inc a
	cp (hl)
	ld (la6ab),a
	ret c
	xor a
	ld (la6ab),a
	ld a,(la6aa)
	inc a
	inc a
	ld (la6aa),a
	inc hl
	ld a,(hl)
	cp #7f
	ret nz
	inc hl
	ld a,(hl)
	add a
	ld hl,la6aa
	add (hl)
	ld (la6aa),a
	ret
.la561
	ld hl,(la686)
	ld de,#0009
	add hl,de
	ld a,(hl)
	and a
	ret z
	ld a,(la699)
	inc a
	cp (hl)
	ld (la699),a
	ret c
	xor a
	ld (la699),a
	ld b,a
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ex de,hl
	ld a,(la6ac)
	ld c,a
	add hl,bc
	inc a
	ld (la6ac),a
	ld a,(hl)
	ld c,a
	ld b,#00
	and a
	jp p,la591
	ld b,#ff
.la591
	sla c
	rl b
	inc hl
	ld a,(hl)
	ld hl,(la683)
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (la689),de
	cp #7f
	ret nz
	xor a
	ld (la6ac),a
	ret
.la5aa
	ld hl,(la69c)
	ld a,h
	or l
	ret z
	dec hl
	ld (la69c),hl
	ld hl,(la6ad)
	ld de,(la69e)
	add hl,de
	ld (la6ad),hl
	ret
.la5c0
	ld hl,(la686)
	ld de,#000d
	add hl,de
	ld a,(hl)
	and a
	ret z
	ld a,(la6af)
	inc a
	cp (hl)
	ld (la6af),a
	ret c
	xor a
	ld (la6af),a
	ld hl,(la6a1)
	ld a,(hl)
	inc hl
	cp #21
	jr z,la602
	ld (la6a1),hl
	cp #20
	jr z,la602
	ld e,#06
	call la64b
	ld a,(la2d5)
	and a
	rla
	rla
	rla
	cpl
	ld b,a
	ld a,(la67e)
	and b
	ld (la67e),a
	ld e,#07
	call la64b
	ret
.la602
	ld a,(la2d5)
	rla
	rla
	rla
	ld b,a
	ld a,(la67e)
	or b
	ld (la67e),a
	ld e,#07
	call la64b
	ret
.la616
	ld a,(la67f)
	dec a
	ret z
	ld hl,(la689)
	ld de,(la6ad)
	add hl,de
	ld a,l
.la625 equ $ + 1
	ld e,#00
	call la64b
	ld a,h
.la62b equ $ + 1
	ld e,#01
	call la64b
	ld a,(la688)
	srl a
	srl a
	srl a
.la639 equ $ + 1
	ld e,#08
	call la64b
	ret
.la63e
	ld b,#10
	xor a
.la641
	add hl,hl
	rla
	cp c
	jr c,la648
	sub c
	inc l
.la648
	djnz la641
	ret
.la64b
	ld b,#f4
	out (c),e
	ld de,#c000
	inc b
	inc b
	out (c),d
	out (c),e
	dec b
	dec b
	out (c),a
	inc b
	inc b
	ld d,#80
	out (c),d
	out (c),e
	ret
.la665
	ld b,#f5
.la667
	in a,(c)
	rra
	jr nc,la667
.la66c
	in a,(c)
	rra
	jr c,la66c
	ret
	ld bc,#7f10
	or #40
	out (c),c
	out (c),a
	ret
.la683 equ $ + 7
.la682 equ $ + 6
.la680 equ $ + 4
.la67f equ $ + 3
.la67e equ $ + 2
.la67c
	db #00,#00,#3f,#00,#00,#00,#00,#00
.la68b equ $ + 7
.la68a equ $ + 6
.la689 equ $ + 5
.la688 equ $ + 4
.la686 equ $ + 2
.la685 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.la68c
	db #00,#2a,#2a,#2a,#2a,#00,#00,#00
.la69b equ $ + 7
.la699 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.la6a3 equ $ + 7
.la6a1 equ $ + 5
.la6a0 equ $ + 4
.la69e equ $ + 2
.la69c
	db #00,#00,#00,#00,#00,#00,#00,#00
.la6ab equ $ + 7
.la6aa equ $ + 6
.la6a9 equ $ + 5
.la6a8 equ $ + 4
.la6a7 equ $ + 3
.la6a6 equ $ + 2
.la6a5 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.la6b3 equ $ + 7
.la6b1 equ $ + 5
.la6b0 equ $ + 4
.la6af equ $ + 3
.la6ad equ $ + 1
.la6ac
	db #00,#00,#00,#00,#00,#00,#00,#01
.la6b6 equ $ + 2
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la6e2 equ $ + 6
.la6e1 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.la6e7 equ $ + 3
.la6e4
	db #01,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la713 equ $ + 7
.la712 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.la718 equ $ + 4
.la715 equ $ + 1
	db #00,#01,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
	pop hl
	ei
	ret
	ld a,#00
	call la001	; init
.la74b
	call la665	; synchro
	ld hl,#01f4
.la751
	dec hl
	ld a,h
	or l
	jp nz,la751
	di
	call la004	; play
	ei
	ld a,(la000)
	and a
	jp z,la74b
	jp #7e7a
	ei
	ret
.la768
	dw la863,la86e,la873,la789
	dw laee8,laf13,laf38,la778
.la778
	db #03,#04,#06,#09,#0c,#12,#18,#24
	db #30,#48,#60,#90,#c0,#08,#10,#20
.la789 equ $ + 1
	db #40,#02,#03,#04,#06,#08,#0c,#10
	db #18,#20,#30,#40,#60,#80,#05,#06
	db #10,#00,#05,#01,#02,#ff,#04,#01
	db #02,#7f,#fd,#00,#37,#02,#02,#fe
	db #04,#02,#02,#7f,#fd,#05,#02,#fb
	db #04,#05,#02,#7f,#fd,#78,#01,#00
	db #03,#f8,#03,#00,#32,#ff,#60,#ff
	db #70,#01,#00,#02,#fc,#04,#00,#32
	db #ff,#60,#ff,#78,#01,#00,#01,#f8
	db #01,#f8,#04,#00,#28,#ff,#54,#ff
	db #00,#0c,#7f,#0c,#04,#7f,#0c,#03
	db #7f,#01,#1e,#01,#1e,#01,#1e,#01
	db #1e,#20,#21,#01,#0a,#20,#21,#01
.la7f3 equ $ + 3
	db #02,#20,#21,#99,#a7,#01,#b5,#a7
	db #01,#07,#d8,#a7,#00,#01,#00,#00
	db #00,#47,#01,#a3,#a7,#01,#c0,#a7
	db #01,#06,#d8,#a7,#03,#01,#ef,#a7
	db #00,#47,#01,#ad,#a7,#01,#cb,#a7
	db #01,#07,#d8,#a7,#00,#01,#eb,#a7
	db #01,#47,#01,#99,#a7,#01,#b5,#a7
	db #01,#06,#db,#a7,#02,#01,#e1,#a7
	db #00,#47,#01,#99,#a7,#01,#b5,#a7
	db #01,#06,#de,#a7,#02,#01,#e1,#a7
	db #00,#47,#01,#99,#a7,#01,#b5,#a7
	db #01,#07,#d8,#a7,#01,#01,#e1,#a7
	db #00,#47,#01,#ad,#a7,#01,#b5,#a7
	db #03,#07,#d8,#a7,#00,#01,#eb,#a7
.la863 equ $ + 3
	db #01,#07,#67,#64,#07,#67,#01,#62
.la86e equ $ + 6
	db #04,#19,#00,#63,#01,#7f,#62,#04
.la873 equ $ + 3
	db #1a,#00,#7f,#62,#04,#1b,#00,#7f
.la878
	db #60,#01,#02,#60,#04,#02,#60,#07
	db #02,#60,#04,#02,#60,#07,#02,#60
	db #04,#02,#60,#07,#02,#60,#04,#02
	db #60,#0a,#02,#60,#0d,#02,#60,#04
	db #02,#60,#07,#02,#60,#04,#02,#60
	db #0a,#02,#60,#10,#02,#60,#13,#02
	db #60,#13,#02,#60,#16,#02,#60,#04
	db #02,#60,#07,#02,#60,#04,#02,#60
	db #0a,#02,#60,#10,#02,#60,#13,#02
.la8c4 equ $ + 4
	db #60,#16,#02,#61,#60,#02,#02,#60
	db #02,#02,#60,#02,#02,#60,#02,#02
	db #60,#05,#02,#60,#08,#02,#60,#05
	db #02,#60,#08,#02,#60,#05,#02,#60
	db #08,#02,#60,#05,#02,#60,#0b,#02
	db #60,#0e,#02,#60,#05,#02,#60,#08
	db #02,#60,#05,#02,#60,#0b,#02,#60
	db #11,#02,#60,#14,#02,#60,#14,#02
	db #60,#17,#02,#60,#05,#02,#60,#08
	db #02,#60,#05,#02,#60,#0b,#02,#60
	db #11,#02,#60,#14,#02,#60,#17,#02
.la919 equ $ + 1
	db #61,#60,#03,#02,#60,#03,#02,#60
	db #03,#02,#60,#03,#02,#60,#06,#02
	db #60,#09,#02,#60,#06,#02,#60,#09
	db #02,#60,#06,#02,#60,#09,#02,#60
	db #06,#02,#60,#0c,#02,#60,#0f,#02
	db #60,#06,#02,#60,#09,#02,#60,#06
	db #02,#60,#0c,#02,#60,#12,#02,#60
	db #15,#02,#60,#15,#02,#60,#18,#02
	db #60,#06,#02,#60,#09,#02,#60,#06
	db #02,#60,#0c,#02,#60,#12,#02,#60
.la96e equ $ + 6
	db #15,#02,#60,#18,#02,#61,#66,#0a
	db #66,#0a,#66,#0a,#66,#0a,#3a,#08
	db #3b,#08,#3c,#08,#35,#08,#3a,#08
	db #3b,#08,#3c,#08,#35,#06,#3e,#04
.la98b equ $ + 3
	db #3f,#04,#61,#41,#04,#40,#04,#41
	db #04,#40,#04,#41,#04,#40,#04,#41
	db #04,#46,#04,#43,#06,#3f,#06,#3f
	db #06,#3c,#04,#3a,#04,#39,#04,#3a
	db #04,#3c,#04,#39,#04,#35,#04,#39
.la9b6 equ $ + 6
	db #04,#3c,#04,#39,#04,#61,#3a,#04
	db #35,#04,#3e,#04,#35,#04,#3a,#06
.la9c5 equ $ + 5
	db #3e,#04,#3f,#04,#61,#3a,#06,#35
.la9cc equ $ + 4
	db #06,#3a,#08,#61,#3c,#06,#3c,#04
	db #3e,#04,#3f,#04,#3e,#04,#3c,#04
	db #3f,#04,#3e,#06,#3e,#04,#3f,#04
	db #41,#04,#3f,#04,#3e,#04,#41,#04
	db #3f,#06,#3c,#06,#3e,#06,#3a,#06
	db #3c,#0a,#3c,#06,#3c,#04,#3e,#04
	db #3f,#04,#3e,#04,#3c,#04,#3f,#04
	db #3e,#06,#3e,#04,#3f,#04,#41,#04
	db #3f,#04,#3e,#04,#41,#04,#40,#06
	db #40,#04,#41,#04,#43,#04,#41,#04
.laa1f equ $ + 7
	db #40,#04,#43,#04,#41,#0a,#61,#3c
	db #38,#3a,#38,#39,#48,#37,#48,#68
	db #35,#3a,#35,#39,#69,#3e,#04,#3f
.laa32 equ $ + 2
	db #04,#61,#41,#54,#3e,#54,#3a,#54
	db #3e,#54,#41,#54,#46,#54,#45,#54
	db #46,#54,#43,#54,#46,#54,#45,#54
	db #43,#54,#41,#57,#41,#54,#3f,#54
	db #43,#54,#46,#54,#43,#54,#46,#54
	db #41,#54,#3e,#54,#3a,#54,#3c,#54
	db #3e,#54,#3f,#54,#41,#54,#43,#56
	db #41,#54,#3f,#54,#41,#54,#3e,#54
	db #3a,#54,#3e,#54,#41,#54,#46,#54
	db #45,#54,#46,#54,#43,#54,#46,#54
	db #45,#54,#43,#54,#41,#57,#41,#54
	db #46,#54,#43,#54,#3f,#54,#3a,#54
	db #46,#54,#43,#54,#40,#54,#3d,#54
	db #46,#54,#41,#54,#3e,#54,#3a,#54
	db #44,#54,#43,#54,#41,#54,#3e,#54
	db #3f,#54,#3e,#54,#3c,#54,#3a,#54
	db #39,#54,#3c,#54,#3f,#54,#3c,#54
	db #3e,#54,#3a,#54,#35,#54,#39,#54
.laac3 equ $ + 3
	db #3a,#58,#61,#3e,#04,#3f,#04,#3e
	db #04,#3f,#04,#3e,#04,#3c,#04,#3a
	db #04,#39,#04,#3a,#06,#37,#06,#37
	db #08,#3e,#04,#3f,#04,#3e,#04,#3f
	db #04,#3e,#04,#3c,#04,#3a,#04,#39
	db #04,#3a,#06,#37,#06,#32,#08,#3c
	db #04,#3e,#04,#3c,#04,#3e,#04,#3c
	db #04,#3a,#04,#39,#04,#37,#04,#39
	db #06,#35,#06,#35,#08,#3c,#04,#3e
	db #04,#3c,#04,#3e,#04,#3c,#04,#3d
	db #04,#3e,#04,#40,#04,#41,#0a,#61
.lab18
	db #3a,#14,#35,#14,#32,#14,#32,#14
	db #38,#14,#35,#14,#32,#14,#32,#14
	db #3c,#14,#37,#14,#33,#14,#33,#14
	db #35,#14,#30,#14,#2d,#14,#2d,#14
.lab39 equ $ + 1
	db #61,#3a,#14,#35,#14,#32,#14,#32
	db #14,#3a,#14,#35,#14,#32,#14,#32
	db #14,#37,#14,#33,#14,#2b,#14,#2b
	db #14,#33,#14,#30,#14,#2b,#14,#2b
	db #14,#35,#14,#30,#14,#2d,#14,#2d
	db #14,#35,#14,#30,#14,#2d,#14,#2d
.lab6a equ $ + 2
	db #14,#61,#3a,#14,#35,#14,#32,#14
	db #32,#14,#3a,#14,#35,#14,#32,#14
.lab7b equ $ + 3
	db #32,#14,#61,#35,#16,#32,#16,#32
.lab82 equ $ + 2
	db #18,#61,#35,#14,#30,#14,#2d,#14
	db #2d,#14,#35,#14,#30,#14,#2d,#14
	db #2d,#14,#3a,#14,#35,#14,#32,#14
	db #32,#14,#3a,#14,#35,#14,#32,#14
	db #32,#14,#35,#14,#30,#14,#2d,#14
	db #2d,#14,#3a,#14,#35,#14,#32,#14
	db #32,#14,#66,#06,#39,#0d,#39,#0e
	db #39,#0d,#3a,#16,#39,#16,#35,#14
	db #30,#14,#2d,#14,#2d,#14,#35,#14
	db #30,#14,#2d,#14,#2d,#14,#3a,#14
	db #35,#14,#32,#14,#32,#14,#3a,#14
	db #35,#14,#32,#14,#32,#14,#3c,#14
	db #37,#14,#34,#14,#34,#14,#3c,#14
	db #37,#14,#34,#14,#34,#14,#35,#14
	db #30,#14,#2d,#14,#2d,#14,#35,#14
.labff equ $ + 7
	db #30,#14,#2d,#14,#2d,#14,#61,#54
	db #18,#52,#18,#51,#18,#4f,#18,#68
	db #4d,#1a,#4d,#19,#69,#35,#14,#37
.lac12 equ $ + 2
	db #14,#61,#2e,#04,#35,#04,#32,#04
	db #35,#04,#2e,#04,#35,#04,#32,#04
	db #35,#04,#33,#04,#3a,#04,#37,#04
	db #3a,#04,#2e,#04,#35,#04,#32,#04
	db #35,#04,#33,#04,#3a,#04,#37,#04
	db #3a,#04,#2e,#04,#35,#04,#32,#04
	db #35,#04,#30,#04,#37,#04,#33,#04
	db #37,#04,#35,#04,#3c,#04,#39,#04
	db #3c,#04,#2e,#04,#35,#04,#32,#04
	db #35,#04,#2e,#04,#35,#04,#32,#04
	db #35,#04,#33,#04,#3a,#04,#37,#04
	db #3a,#04,#2e,#04,#35,#04,#32,#04
	db #35,#04,#33,#04,#3a,#04,#37,#04
	db #3a,#04,#34,#04,#3a,#04,#37,#04
	db #3a,#04,#35,#04,#3e,#04,#3a,#04
	db #3e,#04,#37,#04,#3e,#04,#3b,#04
	db #3e,#04,#30,#04,#37,#04,#33,#04
	db #37,#04,#35,#04,#3c,#04,#39,#04
	db #3c,#04,#35,#04,#3e,#04,#39,#04
	db #3c,#04,#35,#04,#3e,#04,#3a,#04
.lacb3 equ $ + 3
	db #3e,#04,#61,#2a,#14,#32,#14,#2d
	db #14,#32,#14,#2a,#14,#32,#14,#2d
	db #14,#32,#14,#2b,#14,#32,#14,#2e
	db #14,#32,#14,#2b,#14,#32,#14,#2e
	db #14,#32,#14,#2a,#14,#32,#14,#2d
	db #14,#26,#14,#2a,#14,#32,#14,#2d
	db #14,#26,#14,#2b,#04,#32,#14,#2e
	db #14,#32,#14,#2b,#14,#32,#14,#2e
	db #14,#32,#14,#28,#14,#30,#14,#2b
	db #14,#30,#14,#28,#14,#30,#14,#2b
	db #14,#30,#14,#24,#14,#2d,#14,#29
	db #14,#2d,#14,#24,#14,#2d,#14,#29
	db #14,#2d,#14,#28,#14,#30,#14,#37
	db #14,#30,#14,#28,#14,#30,#14,#37
	db #14,#30,#14,#29,#14,#30,#14,#2d
	db #14,#30,#14,#29,#14,#30,#14,#2d
.lad34 equ $ + 4
	db #14,#30,#14,#61,#16,#26,#22,#24
	db #22,#24,#17,#26,#23,#24,#23,#24
	db #18,#26,#24,#24,#24,#24,#11,#26
.lad4d equ $ + 5
	db #1d,#24,#1d,#24,#61,#16,#26,#22
	db #24,#22,#24,#1a,#26,#22,#24,#22
	db #24,#1b,#26,#27,#24,#27,#24,#18
	db #26,#24,#24,#24,#24,#11,#26,#1d
	db #24,#1d,#24,#15,#26,#1d,#24,#1d
.lad72 equ $ + 2
	db #24,#61,#16,#26,#22,#24,#22,#24
.lad7f equ $ + 7
	db #1d,#26,#22,#24,#22,#24,#61,#22
.lad86 equ $ + 6
	db #26,#1d,#26,#16,#28,#61,#1d,#26
	db #29,#24,#29,#24,#21,#26,#29,#24
	db #29,#24,#16,#26,#22,#24,#22,#24
	db #1a,#26,#22,#24,#22,#24,#1d,#26
	db #2d,#24,#2d,#24,#1d,#26,#2e,#24
	db #2e,#24,#1d,#0a,#1d,#26,#29,#24
	db #29,#24,#21,#26,#29,#24,#29,#24
	db #16,#26,#22,#24,#22,#24,#1a,#26
	db #22,#24,#22,#24,#18,#26,#24,#24
	db #24,#24,#1c,#26,#24,#24,#24,#24
	db #1d,#26,#29,#24,#29,#24,#1d,#26
.laddd equ $ + 5
	db #29,#24,#29,#24,#61,#0c,#26,#18
	db #24,#18,#24,#0c,#26,#18,#24,#18
	db #24,#0c,#26,#18,#24,#18,#24,#0c
	db #26,#18,#24,#18,#24,#1d,#26,#29
	db #24,#29,#24,#1d,#26,#29,#24,#29
	db #24,#1d,#26,#29,#24,#29,#24,#1d
.lae0e equ $ + 6
	db #26,#29,#24,#29,#24,#61,#16,#66
	db #22,#64,#22,#64,#1a,#66,#22,#64
	db #22,#64,#0f,#66,#1b,#64,#1b,#64
	db #16,#66,#22,#64,#22,#64,#0f,#66
	db #1b,#64,#1b,#64,#16,#66,#22,#64
	db #22,#64,#0c,#66,#18,#64,#18,#64
	db #11,#66,#1d,#64,#1d,#64,#16,#66
	db #22,#64,#22,#64,#1a,#66,#22,#64
	db #22,#64,#0f,#66,#1b,#64,#1b,#64
	db #16,#66,#22,#64,#22,#64,#0f,#66
	db #1b,#64,#1b,#64,#10,#66,#1c,#64
	db #1c,#64,#11,#66,#1d,#64,#1d,#64
	db #13,#66,#1f,#64,#1f,#64,#0c,#66
	db #18,#64,#18,#64,#11,#66,#1d,#64
	db #1d,#64,#16,#66,#1d,#64,#1d,#64
.lae87 equ $ + 7
	db #16,#66,#22,#64,#22,#64,#61,#0e
	db #26,#1e,#24,#1e,#24,#0e,#26,#1e
	db #24,#1e,#24,#13,#26,#1f,#24,#1f
	db #24,#13,#26,#1f,#24,#1f,#24,#0e
	db #26,#1e,#24,#1e,#24,#0e,#26,#1e
	db #24,#1e,#24,#13,#26,#1f,#24,#1f
	db #24,#13,#26,#1f,#24,#1f,#24,#0c
	db #26,#1c,#24,#1c,#24,#0c,#26,#1c
	db #24,#1c,#24,#11,#26,#21,#24,#21
	db #24,#11,#26,#21,#24,#21,#24,#0c
	db #26,#1c,#24,#1c,#24,#0c,#26,#1c
	db #24,#1c,#24,#11,#26,#1d,#24,#1d
	db #24,#11,#26,#1d,#24,#1d,#24,#61
.laee8
	db #64,#07,#67,#01,#60,#1e,#02,#60
	db #21,#02,#60,#24,#02,#60,#21,#02
	db #60,#24,#02,#60,#21,#02,#60,#27
	db #02,#60,#2a,#02,#60,#21,#02,#60
	db #24,#02,#60,#21,#02,#60,#27,#02
.laf13 equ $ + 3
	db #63,#01,#7f,#60,#1f,#02,#60,#22
	db #02,#60,#25,#02,#60,#22,#02,#60
	db #25,#02,#60,#22,#02,#60,#28,#02
	db #60,#2b,#02,#60,#22,#02,#60,#25
	db #02,#60,#22,#02,#60,#28,#02,#7f
.laf38
	db #60,#20,#02,#60,#23,#02,#60,#26
	db #02,#60,#23,#02,#60,#26,#02,#60
	db #23,#02,#60,#29,#02,#60,#2c,#02
	db #60,#23,#02,#60,#26,#02,#60,#23
.laf5d equ $ + 5
	db #02,#60,#29,#02,#7f,#3e,#05,#3f
.laf62 equ $ + 2
	db #02,#61,#41,#05,#40,#02,#41,#05
	db #40,#02,#41,#05,#40,#02,#41,#05
	db #46,#02,#43,#06,#3f,#06,#3f,#06
	db #3c,#05,#3a,#02,#39,#05,#3a,#02
	db #3c,#05,#39,#02,#35,#05,#39,#02
.laf8d equ $ + 5
	db #3c,#05,#39,#02,#61,#3a,#05,#35
	db #02,#3e,#05,#35,#02,#3a,#06,#3e
.laf9c equ $ + 4
	db #05,#3f,#02,#61,#3a,#06,#35,#06
.lafa3 equ $ + 3
	db #3a,#08,#61,#3e,#05,#3f,#02,#3e
	db #05,#3f,#02,#3e,#05,#3c,#02,#3a
	db #05,#39,#02,#3a,#06,#37,#06,#37
	db #08,#3e,#05,#3f,#02,#3e,#05,#3f
	db #02,#3e,#05,#3f,#02,#3e,#05,#3f
	db #02,#3a,#06,#37,#06,#32,#08,#3c
	db #05,#3e,#02,#3c,#05,#3e,#02,#3c
	db #05,#3a,#02,#39,#05,#37,#02,#39
	db #06,#35,#06,#35,#08,#3c,#05,#3a
	db #02,#3c,#05,#3e,#02,#3c,#05,#3d
	db #02,#3e,#05,#40,#02,#41,#0a,#61
.laffb equ $ + 3
.laff8
	db #66,#06,#61,#2e,#15,#29,#12,#26
	db #15,#26,#12,#2e,#15,#29,#12,#26
	db #15,#26,#12,#33,#15,#2e,#12,#2b
	db #15,#2b,#12,#30,#15,#2b,#12,#27
	db #15,#27,#12,#35,#15,#30,#12,#2d
	db #15,#2d,#12,#35,#15,#30,#12,#2d
.lb02c equ $ + 4
	db #15,#2d,#12,#61,#2e,#15,#29,#12
	db #26,#15,#26,#12,#2e,#15,#29,#12
.lb03d equ $ + 5
	db #26,#15,#26,#12,#61,#32,#16,#2e
.lb044 equ $ + 4
	db #16,#32,#08,#61,#36,#15,#32,#12
	db #2d,#15,#2d,#12,#36,#15,#32,#12
	db #2d,#15,#2d,#12,#37,#15,#32,#12
	db #2e,#15,#2e,#12,#37,#15,#32,#12
	db #2e,#15,#2e,#12,#36,#15,#32,#12
	db #2d,#15,#2d,#12,#36,#15,#32,#12
	db #2d,#15,#2d,#12,#37,#15,#32,#12
	db #2e,#15,#2e,#12,#37,#15,#32,#12
	db #2e,#15,#2e,#12,#37,#15,#34,#12
	db #30,#15,#30,#12,#37,#15,#34,#12
	db #30,#15,#30,#12,#39,#15,#30,#12
	db #2d,#15,#2d,#12,#39,#15,#30,#12
	db #2d,#15,#2d,#12,#37,#15,#34,#12
	db #30,#15,#30,#12,#37,#15,#34,#12
	db #30,#15,#30,#12,#39,#15,#30,#12
	db #2d,#15,#2d,#12,#39,#15,#30,#12
.lb0c5 equ $ + 5
	db #2d,#15,#2d,#12,#61,#66,#06,#61
.lb0c8
	db #16,#26,#22,#25,#22,#22,#1a,#26
	db #22,#25,#22,#22,#1b,#26,#27,#25
	db #27,#22,#18,#26,#24,#25,#24,#22
	db #11,#26,#1d,#25,#1d,#22,#15,#26
.lb0ed equ $ + 5
	db #1d,#25,#1d,#22,#61,#16,#26,#22
	db #25,#22,#22,#11,#26,#22,#25,#22
.lb0fa equ $ + 2
	db #22,#61,#22,#26,#1d,#26,#16,#08
.lb101 equ $ + 1
	db #61,#0e,#26,#1e,#25,#1e,#22,#0e
	db #26,#1e,#25,#1e,#22,#13,#26,#1f
	db #25,#1f,#22,#13,#26,#1f,#25,#1f
	db #22,#0e,#26,#1e,#25,#1e,#22,#0e
	db #26,#1e,#25,#1e,#22,#13,#26,#1f
	db #25,#1f,#22,#13,#26,#1f,#25,#1f
	db #22,#18,#26,#28,#25,#28,#22,#18
	db #26,#28,#25,#28,#22,#11,#26,#1d
	db #25,#1d,#22,#11,#26,#1d,#25,#1d
	db #22,#18,#26,#28,#25,#28,#22,#18
	db #26,#28,#25,#28,#22,#11,#26,#1d
	db #25,#1d,#22,#11,#26,#1d,#25,#1d
	db #22,#61
.lb162
	dw la96e,la96e,lab18,lad34
	dw la98b,lab39,lad4d,la9b6
	dw lab6a,lad72,la9c5,lab7b
	dw lad7f,la9cc,lab82,lad86
	dw laa1f,labff,laddd,laa32
	dw lac12,lae0e,laac3,lacb3
	dw lae87,la878,la8c4,la919
	dw #0000,#0000,laf5d,laff8
	dw lb0c5,laf62,laffb,lb0c8
	dw laf8d,lb02c,lb0ed,laf9c
	dw lb03d,lb0fa,lafa3,lb044
	dw lb101,#0000,#0000
;
.music_info
	db "Hopping Mad (1988)(Elite System)()",0
	db "",0

	read "music_end.asm"
