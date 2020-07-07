; Music of Cauldron (1985)(Palace Software)(Richard Joseph)()
; Ripped by Megachur the 02/02/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CAULDRON.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #8a80

	read "music_header.asm"

	ld sp,&c000
	call l8b54
	ld hl,lb868
	ld (lba85),hl
	call la11c	; set interrupt
	ld a,#14
	call la0f2
	ld de,#0000
	call la0b7
	ld a,#00
	ld b,#c8
	call la101
	ld a,#01
	ld (lba74),a
	call la0a5
	ld l,#04
	ld de,la6db
	call la0de
	ld bc,(lae15)
	ld e,#03
	ld hl,lae17
	call l9de7
	ld e,#01
	ld bc,(lae4a)
	ld hl,lae4c
	call l9de7
	ld e,#02
	ld bc,(lae75)
	ld hl,lae77
	call l9de7
	ld e,#03
	ld bc,(lae92)
	ld hl,lae94
	call l9de7
	ld de,#829a
	ld b,#1d
	ld c,#08
.l8ae8
	push bc
	push de
	ld a,c
	call l9fe4
	pop de
	push hl
	pop ix
	ld b,#23
.l8af4
	ld a,(de)
	ld (ix+#16),a
	inc de
	inc ix
	djnz l8af4
	pop bc
	inc c
	djnz l8ae8
	ei
.l8b02
	call l964a
	bit 4,a
	jr nz,l8b15
	ld a,(la487)
	inc a
	ld (la487),a
	call l98be
	jr l8b02
;
;.stop_music
.l8b15
;
	ld a,#3f
	ld (lba88),a
	ld e,#07
	call l988a
	xor a
	ld (lba74),a
	di
	ld a,#00
	ld b,#c8
	call la101
	ld l,#10
	ld de,la605
	ld (lba97),de
	call la0de
	call la38e
	call l9f7c
	call l9cd4
	ld e,#00
	call l9ec9
	call l8d76
	ld a,#93
	ld (lba8d),a
	call l9a0b
	ei
	jp l91e3
.l8b54
	ld hl,lba68
	ld bc,#00f6
.l8b5a
	ld (hl),#00
	inc hl
	dec bc
	ld a,b
	or c
	jr nz,l8b5a
	ld a,#3f
	ld (lba88),a
	ld a,r
	ld (la487),a
	ld a,#0a
	ld (lba84),a
	ld b,#06
	ld hl,la48a
.l8b76
	ld (hl),#00
	inc hl
	inc hl
	inc hl
	djnz l8b76
	ld a,(la487)
	ld de,#0009
	and #03
	call l9fd0
	ld de,la4a6
	add hl,de
	ld de,lbb56
	ld bc,#0009
	ldir
	ld hl,lb1cf
	ld b,#07
.l8b99
	ld (hl),#00
	inc hl
	inc hl
	inc hl
	inc hl
	djnz l8b99
	ret
.l8ba2
	ld a,(lba69)
	or a
	ret nz
	ld a,(lba81)
	or a
	ret z
	dec a
	ld (lba81),a
	ret nz
	ld a,(lba88)
	set 0,a
	set 3,a
	ld (lba88),a
	ld e,#07
	call l988a
	ld c,#00
	ld a,#00
	call l99c7
	ret
.l8bc8
	ld a,(lba7f)
	or a
	ret z
	dec a
	ld (lba7f),a
	ret nz
	ld a,(lba88)
	set 5,a
	set 2,a
	ld (lba88),a
	ld e,#07
	call l988a
	ret
.l8be2
	ld a,(lba7e)
	inc a
	cp #15
	jr nz,l8beb
	xor a
.l8beb
	ld (lba7e),a
	ld hl,la4f7
	add l
	ld l,a
	jr nc,l8bf6
	inc h
.l8bf6
	ld c,(hl)
	ld b,#00
	ld a,#01
	call l99b7
	jr l8c29
.l8c00
	call l8ba2
	call l8bc8
	ld a,(la487)
	inc a
	ld (la487),a
	and #1f
	call z,l9bd3
	or #01
	ld (lba7c),a
	call l964a
	push af
	ld a,(lba69)
	or a
	jr nz,l8be2
	ld a,(lba6c)
	or a
	jr nz,l8c29
	jr l8c2c
.l8c29
	pop af
	jr l8c55
.l8c2c
	ld a,(lba6e)
	or a
	jr z,l8c36
	pop af
	ld a,#02
	push af
.l8c36
	pop af
	bit 4,a
	call nz,l907b
	and #0f
	ld (lbb15),a
	bit 3,a
	call nz,l9139
	bit 2,a
	call nz,l9150
	ld a,#04
	ld (lbb16),a
	ld a,#06
	ld (lbb17),a
.l8c55
	ld a,(lba87)
	cp #00
	jr z,l8c92
	dec a
	push af
	ld a,(lbac4)
	cp #00
	jr z,l8ccf
	cp #95
	jr z,l8ccf
	pop af
.l8c6a
	ld (lba87),a
	jp nz,l8c86
	ld e,#01
	call la3b1
	ld a,(lba88)
	set 1,a
	set 4,a
	ld (lba88),a
	ld e,#07
	call l988a
	jr l8c92
.l8c86
	ld a,(lba7a)
	dec a
	dec a
	ld (lba7a),a
	ld c,a
	call l99b0
.l8c92
	ld a,(lba6c)
	or a
	jp nz,l8ca7
	ld a,(lba6d)
	dec a
	jr nz,l8ca7
	ld e,#01
	scf
	call l9f0b
	ld a,#32
.l8ca7
	ld (lba6d),a
	ld bc,(lbac2)
	ld a,#ab
	cp b
	jp z,l8e12
	jp c,l8e12
.l8cb7
	ld bc,(lbac2)
	ld a,#7b
	cp b
	jr nc,l8cc6
	call l94d4
	call nz,l8cd3
.l8cc6
	call la15a
	call l90db
	jp l8c00
.l8ccf
	pop af
	xor a
	jr l8c6a
.l8cd3
	ld a,(lba69)
	cp #00
	jr z,l8ce3
	cp #01
	jr z,l8d1f
	cp #02
	jr z,l8d4b
	ret
.l8ce3
	ld e,#00
	ld a,#09
	call la440
	ld (lbae4),a
	ld e,#00
	ld d,#09
	call la411
	ld a,#01
	ld (lba69),a
	ld a,(lba88)
	res 1,a
	set 4,a
	ld (lba88),a
	ld e,#07
	call l988a
	xor a
	ld (lba7e),a
	ld a,#01
	ld bc,(la4f7)
	ld b,#00
	call l99b7
	ld a,#01
	ld c,#0c
	call l99c7
	ret
.l8d1f
	ld a,(lbb15)
	bit 0,a
	ret nz
	ld a,(lba88)
	set 1,a
	set 4,a
	ld (lba88),a
	ld e,#07
	call l988a
	ld b,#00
	call l978f
	ld e,#00
	ld d,#00
	call la411
	ld a,#02
	ld (lba69),a
	ld a,#19
	ld (lba83),a
	ret
.l8d4b
	ld a,(lba83)
	dec a
	or a
	ld (lba83),a
	ret nz
	call l9cab
	jp z,l9d5c
	call l8d76
	xor a
	ld (lba69),a
	ld (lba6e),a
	ld hl,#464a
	ld (lbac2),hl
	ld a,#01
	ld (lbaf4),a
	ld (lba8a),a
	call l9b68
	ret
.l8d76
	ld a,#09
	ld (lbaa2),a
	ld (lbaa3),a
	ld e,#00
	call l9f0b
	ret
.l8d84
	ld a,(lbaf4)
	or a
	jp p,l8ebc
	ld a,#18
	ld e,#00
	call la440
	ld (lbae4),a
	ld a,#06
	ld (lba8a),a
	ld d,#00
	ld e,#00
	call la411
	ld a,#08
	ld (lba6c),a
	jp l8ebc
.l8da9
	call l9c2a
	jp nz,l8e9a
	inc hl
	call l8f7f
	jr nz,l8dba
	ld a,#02
	ld (lba6c),a
.l8dba
	jp l8ebc
.l8dbd
	ld a,(lbaf4)
	and #7f
	ld (lba71),a
	ld b,#00
	call l978f
	xor a
	ld (lbb15),a
	ld a,#05
	ld (lba6c),a
	jp l8e42
.l8dd6
	ld a,(lbaf4)
	or a
	jp nz,l8e42
	ld a,#19
	ld (lba83),a
	ld a,#06
	ld (lba6c),a
	jp l8e42
.l8dea
	ld a,(lba83)
	dec a
	ld (lba83),a
	jp nz,l8e42
	call l9cab
	jp z,l9d5c
	call l8d76
	ld a,#02
	ld (lba6c),a
	ld a,(lba71)
	ld (lbaf4),a
	call l9b68
	xor a
	ld (lba6e),a
	jp l8e42
.l8e12
	ld a,(lba6c)
	cp #05
	jp z,l8dd6
	cp #06
	jp z,l8dea
	cp #07
	jp z,l8d84
	cp #08
	jp z,l8da9
	cp #00
	jp z,l8e70
	cp #01
	jp z,l8e9a
	cp #02
	jp z,l8ebc
	cp #03
	jp z,l8efc
	cp #04
	jp z,l8dbd
.l8e42
	jp l8cc6
.l8e45
	ld a,(lba8e)
	ld hl,la49a
	ld b,#06
.l8e4d
	cp (hl)
	jr z,l8e54
	inc hl
	inc hl
	djnz l8e4d
.l8e54
	inc hl
	ld a,(hl)
	or #80
	ld (lba8d),a
	ld a,#01
	ld (lba82),a
	call l9a0b
	xor a
	ld (lba92),a
	ld (lba90),a
	ld (lba91),a
	jp l91e3
.l8e70
	ld a,(lba6e)
	or a
	jp nz,l8cb7
	ld a,#ab
	ld (lbac3),a
	ld d,#00
	ld e,#00
	call la411
	ld a,(lbaf4)
	and #7f
	add #06
	ld e,#00
	call la440
	ld (lbae4),a
	ld a,#01
	ld (lba6c),a
	jp l8e42
.l8e9a
	ld a,(lbaf4)
	or a
	jp p,l8e42
	ld a,#02
	ld (lba6c),a
	ld a,(lbaf4)
	and #7f
	add #10
	push af
	ld e,#00
	call la440
	pop af
	sub #12
	ld (lba8a),a
	jp l8e42
.l8ebc
	ld a,(lba6e)
	or a
	jr z,l8eca
	ld a,#04
	ld (lba6c),a
	jp l8e42
.l8eca
	call l8fef
	ld a,(lba6c)
	cp #02
	jp nz,l8e42
	call l8f35
	jp z,l8e45
	ld a,(lba68)
	or a
	jp nz,l8e42
	call l964a
	and #0d
	call z,l9478
	bit 0,a
	call nz,l8f1e
	bit 2,a
	call nz,l9500
	bit 3,a
	call nz,l952a
	jp l8e42
.l8efc
	ld a,(lbaf4)
	or a
	jp p,l8e42
	and #7f
	sub #1b
	ld (lba8a),a
	ld e,#00
	call la440
	ld (lbae4),a
	ld a,#a7
	ld (lbac3),a
	xor a
	ld (lba6c),a
	jp l8e42
.l8f1e
	ld a,(lba8a)
	add #17
	ld e,#00
	call la440
	ld (lbae4),a
	ld a,#03
	ld (lba6c),a
	xor a
	ld (lbb15),a
	ret
.l8f35
	call l9c2a
	ret nz
	inc hl
	ld a,(lba68)
	cp #02
	jr z,l8f78
	inc hl
	ld a,(hl)
	or a
	jr z,l8f7c
	ld a,(lbaf4)
	and #7f
	cp #05
	jr nz,l8f7c
	dec hl
	ld a,(hl)
	or a
	jr z,l8f61
	ld a,(lbac2)
	cp #58
	jr nc,l8f7c
	cp #52
	jr c,l8f7c
	jr l8f6c
.l8f61
	ld a,(lbac2)
	cp #48
	jr nc,l8f7c
	cp #42
	jr c,l8f7c
.l8f6c
	push hl
	ld e,#00
	call la3b1
	ld a,#02
	ld (lba68),a
	pop hl
.l8f78
	call l8f7f
	ret
.l8f7c
	or #01
	ret
.l8f7f
	ld a,(lba6b)
	or a
	ret nz
	ld a,#1e
	ld (lba6b),a
	ld a,(hl)
	inc hl
	or a
	jr z,l8fc4
	ld a,(hl)
	cp #00
	ret z
	dec (hl)
	ld de,#0060
	call l9fd0
	ld de,#7c1a
	add hl,de
	push hl
	pop ix
	ld de,#1804
	ld bc,la82c
	push ix
.l8fa8
	ld a,(lba8c)
	cp #06
	jr nz,l8fa8
	call l9168
	pop hl
	push de
	ld de,#0060
.l8fb7
	xor a
	sbc hl,de
	push hl
	pop ix
	pop de
	call l9168
	or #01
	ret
.l8fc4
	ld a,(hl)
	cp #00
	ret z
	dec (hl)
	ld de,#0100
	call l9fd0
	ld de,#7d9a
	add hl,de
	push hl
	pop ix
	ld de,#2008
	ld bc,la020
	push ix
.l8fde
	ld a,(lba8c)
	cp #06
	jr nz,l8fde
	call l9168
	pop hl
	push de
	ld de,#0100
	jr l8fb7
.l8fef
	ld a,(lba68)
	cp #02
	ret z
	call l9c2a
	jr nz,l9076
	inc hl
	ld a,(hl)
	or a
	jr z,l902e
	ld a,(lba72)
	or a
	jr z,l9076
	inc hl
	ld a,(hl)
	cp #03
	jr z,l9076
	inc (hl)
	push af
	ld a,(hl)
	cp #03
	jr nz,l9016
	xor a
	ld (lba72),a
.l9016
	pop af
	ld de,#0060
	call l9fd0
	ld de,#7c1a
	add hl,de
	ld de,#1804
	ld bc,la82c
.l9027
	ld a,#01
	ld (lba68),a
	jr l905b
.l902e
	ld a,(lba6a)
	or a
	jr z,l9076
	inc hl
	ld a,(hl)
	cp #04
	jr z,l9076
	inc (hl)
	push af
	ld a,(hl)
	cp #04
	jr nz,l9048
	xor a
	ld (lba6a),a
	call l9d3a
.l9048
	pop af
	ld de,#0100
	call l9fd0
	ld de,#7d9a
	add hl,de
	ld de,#2008
	ld bc,la020
	jr l9027
.l905b
	push hl
	pop ix
.l905e
	ld a,#1e
	ld (lba6b),a
	ld a,(lba8c)
	cp #06
	jr nz,l905e
	call l9168
	call l9168
	ld a,#1e
	ld (lba6b),a
	ret
.l9076
	xor a
	ld (lba68),a
	ret
.l907b
	push af
	push af
	ld a,(lba87)
	or a
	jr nz,l90d8
	ld e,#01
	scf
	call l9f0b
	ld a,#08
	ld (lba87),a
	ld d,#02
	ld a,(lba8a)
	cp #01
	jr nz,l909a
	inc d
	inc d
	inc d
.l909a
	pop af
	and #03
.l909d
	jr z,l90a3
	inc d
	dec a
	jr l909d
.l90a3
	ld a,#1b
	ld bc,(lbac2)
	ld e,#01
	call la3d9
	ld a,(lba88)
	res 4,a
	set 1,a
	ld (lba88),a
	ld e,#07
	call l988a
	ld a,#01
	ld c,#10
	call l99c7
	ld bc,#0bb8
	call l99cf
	ld a,#00
	ld e,#0d
	call l988a
	ld a,#1f
	ld (lba7a),a
	jr l90d9
.l90d8
	pop af
.l90d9
	pop af
	ret
.l90db
	ld a,(lbac2)
	cp #95
	jr z,l90ff
	cp #00
	jr z,l911c
	ret
.l90e7
	push af
	ld a,(lba6c)
	or a
	jr z,l90fc
	pop af
	ld hl,la4dc
	ld b,#06
.l90f4
	cp (hl)
	ret z
	inc hl
	djnz l90f4
.l90f9
	cp #ff
	ret
.l90fc
	pop af
	jr l90f9
.l90ff
	ld a,(lba8e)
	inc a
	cp #3e
	jr nz,l9108
	xor a
.l9108
	call l90e7
	ret z
	ld (lba8e),a
	ld a,#01
	ld (lbac2),a
	call l9b68
	xor a
	ld (lba87),a
	ret
.l911c
	ld a,(lba8e)
	dec a
	jp p,l9125
	ld a,#3d
.l9125
	call l90e7
	ret z
	ld (lba8e),a
	ld a,#94
	ld (lbac2),a
	call l9b68
	xor a
	ld (lba87),a
	ret
.l9139
	push af
	ld a,(lbaf4)
	and #7f
	cp #02
	jr z,l914e
	ld a,#02
	ld e,#00
	call la440
	xor a
	ld (lba8a),a
.l914e
	pop af
	ret
.l9150
	push af
	ld a,(lbaf4)
	and #7f
	cp #01
	jr z,l914e
	ld a,#01
	ld e,#00
	call la440
	ld a,#01
	ld (lba8a),a
	jr l914e
.l9168
	push de
	push bc
	push de
	ld a,b
	call l9fe4
	ld b,#00
	add hl,bc
	pop de
	ld b,d
.l9174
	push bc
	push hl
	ld b,e
.l9177
	ld a,(ix+#00)
	xor (hl)
	ld (hl),a
	inc ix
	inc hl
	djnz l9177
	pop hl
	pop bc
	ld a,h
	add #08
	ld h,a
	and #38
	jp z,l9191
.l918c
	djnz l9174
	pop bc
	pop de
	ret
.l9191
	ld a,h
	sub #40
	ld h,a
	ld a,l
	add #50
	ld l,a
	jp nc,l918c
	inc h
	jp l918c
.l91a0
	ld a,(lba7e)
	inc a
	cp #0b
	jr nz,l91a9
	xor a
.l91a9
	ld (lba7e),a
	ld hl,la50c
	add a
	add l
	ld l,a
	jr nc,l91b5
	inc h
.l91b5
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld a,#02
	call l99b7
	ld a,(lba73)
	dec a
	ld (lba73),a
	jr nz,l9212
	ld a,#3f
	ld (lba88),a
	ld e,#07
	call l988a
	ld c,#00
	ld a,#02
	call l99c7
	ld a,#00
	ld e,#0d
	call l988a
	ld a,#21
	jp l95e0
.l91e3
	call l8ba2
	call l8bc8
	ld a,(la487)
	inc a
	ld (la487),a
	xor a
	ld (lba7c),a
	jp l9554
.l91f7
	ld a,(lba8d)
	and #7f
	cp #13
	jp z,l91a0
	ld a,(lba6e)
	or a
	jr nz,l9226
	jp l929d
.l920a
	jp l9388
.l920d
	ld a,#02
	ld (lbb16),a
.l9212
	call la15a
	ld a,(lba75)
	or a
	jr z,l9224
	inc a
	ld (lba75),a
	cp #0a
	jp z,l9dae
.l9224
	jr l91e3
.l9226
	ld a,(lba6e)
	cp #02
	jr z,l924e
	cp #03
	jr z,l925a
	ld a,(lbaf4)
	cp #00
	jr z,l924e
	ld b,#00
	call l978f
	xor a
	ld (lbb15),a
	ld (lba90),a
	ld (lba92),a
	ld a,#02
	ld (lba6e),a
	jr l9212
.l924e
	ld a,#19
	ld (lba83),a
	ld a,#03
	ld (lba6e),a
	jr l9212
.l925a
	ld a,(lba83)
	dec a
	ld (lba83),a
	jp nz,l9212
	ld a,(lba8d)
	or #80
	ld (lba8d),a
	call l9cab
	jp z,l9d5c
	ld a,#01
	ld (lba82),a
	call l9a0b
	call l8d76
	xor a
	ld (lba6e),a
	ld (lba6f),a
	jp l91e3
.l9287
	push af
	ld a,c
	add #02
	cp #96
	jr c,l9291
	ld a,#95
.l9291
	ld c,a
	pop af
	ret
.l9294
	push af
	ld a,c
	sub #02
	jr nc,l9291
	xor a
	jr l9291
.l929d
	ld a,(lba92)
	cp #00
	jr nz,l92c3
	ld a,(lba90)
	cp #00
	jp nz,l920a
	call l964a
	bit 4,a
	jp z,l920a
	and #0d
	jp z,l920a
	and #0c
	ld (lba91),a
	ld a,#0e
	ld (lba92),a
.l92c3
	ld bc,(lba92)
	ld b,#00
	ld hl,la5c0
	add hl,bc
	push hl
	ld a,(lba92)
	cp #08
	ld a,(hl)
	jr nc,l9316
	ld bc,(lbac2)
	add b
	ld b,a
	ld a,(lba91)
	bit 3,a
	call nz,l9287
	bit 2,a
	call nz,l9294
	call l9488
	jr z,l9316
	jr nc,l92f5
	ld a,#01
	ld (lba6e),a
.l92f5
	ld a,(lbac3)
	add #14
	and #07
	ld c,a
	ld a,#07
	sub c
	ld (lbb17),a
	ld a,(lba91)
	or #02
	ld (lbb15),a
	xor a
	ld (lba92),a
	ld (lba91),a
	pop hl
	jp l920d
.l9316
	pop hl
	ld a,(hl)
	ld (lbb17),a
	ld a,(lba92)
	cp #08
	ld a,#01
	jr nc,l9326
	sla a
.l9326
	ld c,a
	ld a,(lba91)
	or c
	ld (lbb15),a
	bit 2,a
	jp nz,l934c
	bit 3,a
	jp nz,l936a
.l9338
	ld a,(lba92)
	dec a
	ld (lba92),a
	jr z,l9344
	jp l920d
.l9344
	ld a,#12
	ld (lba90),a
	jp l920d
.l934c
	ld a,(lbaf4)
	bit 7,a
	jr nz,l935a
	and #7f
	cp #05
	jp z,l9338
.l935a
	ld a,#05
	ld (lba8a),a
	ld e,#00
	call la440
	ld (lbae4),a
	jp l9338
.l936a
	ld a,(lbaf4)
	bit 7,a
	jr nz,l9378
	and #7f
	cp #06
	jp z,l9338
.l9378
	ld a,#06
	ld (lba8a),a
	ld e,#00
	call la440
	ld (lbae4),a
	jp l9338
.l9388
	ld bc,(lba90)
	ld b,#00
	ld hl,la5ae
	add hl,bc
	ld a,(hl)
	push af
	ld bc,(lbac2)
	add b
	ld b,a
	ld a,(lba91)
	bit 3,a
	call nz,l9287
	bit 2,a
	call nz,l9294
	call l9488
	jr nz,l9404
	pop af
	ld (lbb17),a
	ld hl,lba6f
	add (hl)
	cp #28
	jr c,l93ba
	ld a,#28
.l93ba
	ld (hl),a
	ld a,(lba91)
	or #02
	ld (lbb15),a
	ld a,(lba8a)
	cp #05
	jr nz,l93df
	ld a,(lbaf4)
	and #7f
	cp #1a
	jr z,l93f6
	ld a,#1a
	ld e,#00
	call la440
	ld (lbae4),a
	jr l93f6
.l93df
	cp #06
	jr nz,l93f6
	ld a,(lbaf4)
	and #7f
	cp #19
	jr z,l93f6
	ld a,#19
	ld e,#00
	call la440
	ld (lbae4),a
.l93f6
	ld a,(lba90)
	cp #12
	jr z,l9401
	inc a
	ld (lba90),a
.l9401
	jp l920d
.l9404
	jr nc,l940b
	ld a,#01
	ld (lba6e),a
.l940b
	pop af
	ld a,(lba90)
	cp #00
	jr z,l9459
	ld a,(lbac3)
	add #14
	and #07
	ld c,a
	ld a,#07
	sub c
	ld (lbb17),a
	ld hl,lba6f
	add (hl)
	cp #28
	jr c,l942b
	ld a,#28
.l942b
	ld (hl),a
	ld a,(lba91)
	or #02
	ld (lbb15),a
	xor a
	ld (lba90),a
	ld (lba91),a
	ld a,(lba8a)
	ld e,#00
	call la440
	ld (lbae4),a
	ld a,(lba6f)
	cp #28
	jr c,l9456
	xor a
	ld (lba6f),a
	ld a,#01
	ld (lba6e),a
.l9456
	jp l920d
.l9459
	xor a
	ld (lbb15),a
	ld (lba6f),a
	ld (lba91),a
	call l964a
	and #0c
	call z,l9478
	bit 2,a
	call nz,l9500
	bit 3,a
	call nz,l952a
	jp l920d
.l9478
	push af
	and #03
	ld (lbb15),a
	ld a,(lbaf4)
	or #80
	ld (lbaf4),a
	pop af
	ret
.l9488
	ld a,b
	add #15
	cp #c8
	jr c,l9491
	ld a,#c7
.l9491
	and #f8
	push af
	ld a,(lbac3)
	add #15
	ld d,a
	pop af
	cp d
	jr c,l94ca
	call l9fe4
	ld b,#00
	srl c
	add hl,bc
	ld a,(lba8a)
	cp #06
	jr z,l94af
	inc hl
	inc hl
.l94af
	ld b,#04
.l94b1
	ld a,(hl)
	and #aa
	cp #28
	jr z,l94d0
	cp #a8
	jr z,l94cc
	ld a,(hl)
	and #55
	cp #14
	jr z,l94d0
	cp #54
	jr z,l94cc
	inc hl
	djnz l94b1
.l94ca
	xor a
	ret
.l94cc
	or a
	scf
	ccf
	ret
.l94d0
	or #01
	scf
	ret
.l94d4
	push bc
	ld a,#15
	add b
	call l9fe4
	ld b,#00
	srl c
	add hl,bc
	ld b,#06
.l94e2
	ld a,(hl)
	and #aa
	jr nz,l94f2
.l94e7
	ld a,(hl)
	and #55
	jr nz,l94fa
.l94ec
	inc hl
	djnz l94e2
	pop bc
	xor a
	ret
.l94f2
	and #02
	jr nz,l94e7
.l94f6
	pop bc
	or #01
	ret
.l94fa
	and #01
	jr nz,l94ec
	jr l94f6
.l9500
	push af
	ld a,(lbaf4)
	and #7f
	cp #05
	jr nz,l9511
	ld a,(lbaf4)
	bit 7,a
	jr z,l951e
.l9511
	ld a,#05
	ld (lba8a),a
	ld e,#00
	call la440
	ld (lbae4),a
.l951e
	ld a,#04
	ld (lbb15),a
	ld a,#02
	ld (lbb16),a
	pop af
	ret
.l952a
	push af
	ld a,(lbaf4)
	and #7f
	cp #06
	jr nz,l953b
	ld a,(lbaf4)
	bit 7,a
	jr z,l9548
.l953b
	ld a,#06
	ld (lba8a),a
	ld e,#00
	call la440
	ld (lbae4),a
.l9548
	ld a,#08
	ld (lbb15),a
	ld a,#02
	ld (lbb16),a
	pop af
	ret
.l9554
	xor a
	ld (lba82),a
	ld a,(lbac2)
	cp #00
	jr z,l9571
	cp #95
	jr z,l9589
.l9563
	ld a,(lbac3)
	cp #28
	jr z,l95a4
	cp #b3
	jr z,l95bc
.l956e
	jp l91f7
.l9571
	ld a,(lba93)
	cp #ff
	jr z,l9563
	bit 7,a
	jr nz,l95d4
	ld (lba8d),a
	ld a,#94
	ld (lbac2),a
	call l9a0b
	jr l9563
.l9589
	ld a,(lba94)
	cp #ff
	jr z,l9563
	bit 7,a
	jr nz,l95d4
	ld (lba8d),a
	ld a,#01
	ld (lba82),a
	ld (lbac2),a
	call l9a0b
	jr l9563
.l95a4
	ld a,(lba96)
	cp #ff
	jr z,l956e
	bit 7,a
	jr nz,l95d4
	ld (lba8d),a
	ld a,#b2
	ld (lbac3),a
	call l9a0b
	jr l956e
.l95bc
	ld a,(lba95)
	cp #ff
	jr z,l956e
	bit 7,a
	jr nz,l95d4
	ld (lba8d),a
	ld a,#29
	ld (lbac3),a
	call l9a0b
	jr l956e
.l95d4
	push af
	ld a,(lbac3)
	cp #54
	jr c,l95df
	pop af
	jr l956e
.l95df
	pop af
.l95e0
	and #7f
	ld (lba8e),a
	cp #21
	jr z,l95ed
	ld l,#42
	jr l95ef
.l95ed
	ld l,#52
.l95ef
	ld h,#ab
	ld (lbac2),hl
	call la38e
	ld a,#20
	ld b,#a8
	di
	call la101
	ld de,#0818
	call l9e64
	ld a,#1f
	ld (lbaf4),a
	call l9b68
	ld e,#00
	ld a,#1e
	call la440
	ld e,#00
	ld d,#0a
	call la411
	ei
.l961c
	ld a,(lba8c)
	cp #06
	jr nz,l961c
	di
	ld l,#10
	ld de,la605
	call la0de
	ei
	ld a,(lba8d)
	and #7f
	cp #13
	jr z,l9643
	ld a,#01
	ld (lba6a),a
.l963b
	ld a,#07
	ld (lba6c),a
	jp l8c00
.l9643
	ld a,#01
	ld (lba72),a
	jr l963b
.l964a
	ld b,#f7
	ld a,#82
	out (c),a
	ld b,#f4
	ld a,#0e
	out (c),a
	ld b,#f6
	in a,(c)
	and #30
	or #c9
	ld c,a
	and #3f
	di
	out (c),c
	out (c),a
	ei
	inc b
	ld c,#92
	out (c),c
	dec b
	or #40
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	ret
.l9677
	ld e,#01
	xor a
	call l9f0b
	ld a,(lbaa3)
	ld de,(lbaa2)
	and e
	cp #09
	ret z
	ld a,(lba7f)
	or a
	jr nz,l96be
	ld a,#01
	ld (lba7f),a
	ld a,(lba88)
	res 2,a
	set 5,a
	ld (lba88),a
	ld e,#07
	call l988a
	ld e,#0d
	ld a,#00
	call l988a
	ld c,#10
	ld a,#02
	call l99c7
	ld bc,#0320
	call l99cf
	ld a,#02
	ld bc,#0064
	call l99b7
.l96be
	jp l9751
.l96c1
	push bc
	ld a,(lba6a)
	or a
	jp nz,l96e3
	call l96e6
	jr nz,l96e3
	or #01
	ld (lba6a),a
	ld (hl),#ff
	pop bc
	ld e,b
	call la3b1
	scf
	call l9d3a
	call l9950
	jr l9751
.l96e3
	pop bc
	jr l9751
.l96e6
	ld b,#09
	ld hl,lbb56
	ld a,(lba8e)
.l96ee
	cp (hl)
	ret z
	inc hl
	djnz l96ee
	or #01
	ret
.l96f6
	push af
	ld a,(lba7b)
	cp #08
	jr nz,l9701
	pop af
	jr l9736
.l9701
	ld a,#01
	ld (lba6e),a
	ld b,#00
	call l978f
	pop af
	jp l9751
.l970f
	ld a,(lbaf4)
	and #7f
	cp #0b
	jr z,l9751
	ld c,#00
	call l9845
	jr z,l9751
	ld a,b
	cp #01
	jr z,l9751
	call l978f
	jr z,l9751
	cp #1b
	jp z,l9677
	cp #15
	jr z,l96c1
	cp #26
	jr z,l96f6
.l9736
	push af
	ld hl,la556
	add l
	ld l,a
	jr nc,l973f
	inc h
.l973f
	ld e,(hl)
	scf
	call l9f0b
	pop af
	ld hl,la580
	add l
	ld l,a
	jr nc,l974d
	inc h
.l974d
	ld e,(hl)
	call l9ec9
.l9751
	ld a,(lba87)
	or a
	ret z
	ld c,#01
	call l9845
	ret z
	ld a,b
	cp #00
	ret z
	call l978f
	ret z
	cp #1b
	ret z
	cp #15
	ret z
	ld hl,la580
	add l
	ld l,a
	jr nc,l9772
	inc h
.l9772
	ld e,(hl)
	call l9ec9
	xor a
	ld (lba87),a
	ld e,#01
	call la3b1
	ld a,(lba88)
	set 1,a
	set 4,a
	ld (lba88),a
	ld e,#07
	call l988a
	ret
.l978f
	push bc
	ld e,b
	ld d,#00
	ld hl,lbaf4
	add hl,de
	ld a,(hl)
	and #7f
	ld hl,la4e2
	ld b,#09
.l979f
	cp (hl)
	jr z,l97d2
	inc hl
	djnz l979f
	cp #0b
	jr z,l97cc
	cp #10
	jr z,l97cc
	cp #1b
	jr z,l97cb
	cp #15
	jr z,l97cb
	push af
	ld a,#0b
	call la440
	ld hl,lbae4
	add hl,de
	ld (hl),a
	srl e
	ld d,#00
	call la411
	call l9981
	pop af
.l97cb
	or a
.l97cc
	pop bc
	ret
.l97ce
	pop af
	cp a
	jr l97cc
.l97d2
	push af
	and #7f
	cp #25
	jr nz,l97de
	ld a,#01
	ld (lba75),a
.l97de
	ld a,(lba6e)
	or a
	jr nz,l97ce
	pop af
	push af
	cp #20
	jr nz,l97f1
	ld c,#13
	call l9832
	jr nz,l97ce
.l97f1
	cp #21
	jr nz,l97fc
	ld c,#14
	call l9832
	jr nz,l97ce
.l97fc
	ld hl,lbb4c
	ld a,(hl)
	inc (hl)
	inc hl
	add l
	ld l,a
	jr nc,l9807
	inc h
.l9807
	pop af
	ld (hl),a
	push af
	push af
	push af
	call la3b1
	pop af
	cp #14
	call z,l9d18
	cp #13
	call z,l9cf6
	or #01
	ld (lba72),a
	pop af
	ld hl,la580
	add l
	ld l,a
	jr nc,l9828
	inc h
.l9828
	ld e,(hl)
	call l9ec9
	call l9950
	pop af
	jr l97cc
.l9832
	push af
	ld hl,lbb4d
	ld b,#09
	ld a,c
.l9839
	cp (hl)
	jr z,l9842
	inc hl
	djnz l9839
	pop af
	or a
	ret
.l9842
	pop af
	cp a
	ret
.l9845
	ld b,#00
	ld hl,lbac2
	sla c
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld ix,lbad0
	srl c
	ld hl,lbb03
	ld b,#07
.l985b
	ld a,c
	cp b
	jr z,l987b
	ld a,(hl)
	or a
	jr z,l987b
	ld a,(ix+#00)
	sub e
	jr nc,l986b
	cpl
	inc a
.l986b
	cp #0c
	jr nc,l987b
	ld a,(ix+#01)
	sub d
	jr nc,l9877
	cpl
	inc a
.l9877
	cp #15
	jr c,l9886
.l987b
	dec ix
	dec ix
	dec hl
	dec b
	jp p,l985b
	xor a
	ret
.l9886
	ld a,#01
	or a
	ret
.l988a
	ld b,#f7
	ld c,#82
	out (c),c
	ld c,e
	ld e,a
	ld b,#f4
	out (c),c
	ld b,#f6
	in a,(c)
	and #30
	or #c0
	ld c,a
	and #3f
	di
	out (c),c
	out (c),a
	ei
	ld b,#f4
	ld a,e
	out (c),a
	ld b,#f6
	in a,(c)
	and #30
	or #80
	ld c,a
	and #3f
	di
	out (c),c
	out (c),a
	ei
	ret
;
.init_music
.real_play_music
.l98be
;
	ld a,(lba76)
	or a
	ret nz
	ld a,#46
	ld (lba76),a
	ld hl,(lba85)
	ld a,h
	cp #02
	jr c,l98d8
	ld a,l
	cp #00
	jr c,l98d8
	ld hl,#0000
.l98d8
	push hl
	inc hl
	inc hl
	inc hl
	inc hl
	ld (lba85),hl
	pop hl
	ld de,lb868
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld a,b
	or c
	jr z,l98f6
	srl b
	rr c
	ld a,#00
	call l99b7
.l98f6
	push hl
	ld hl,la522
	ld a,(lba80)
	inc a
	cp #08
	jr nz,l9903
	xor a
.l9903
	ld (lba80),a
	add l
	ld l,a
	jr nc,l990b
	inc h
.l990b
	pop hl
	ld c,(hl)
	ld b,#00
	call l99b0
	ld c,(hl)
	inc hl
	ld b,(hl)
	srl b
	rr c
	ld a,#02
	call l99b7
	ld a,(lba88)
	and #c0
	or #2a
	ld (lba88),a
	ld e,#07
	call l988a
	ld a,#01
	ld c,#10
	call l99c7
	ld bc,#0320
	call l99cf
	ld e,#0d
	ld a,#00
	call l988a
	ld a,#00
	ld c,#0f
	call l99c7
	ld a,#02
	ld c,#0c
	call l99c7
	ret
.l9950
	ld bc,#0064
	ld a,#00
	call l99b7
	ld a,(lba88)
	set 3,a
	res 0,a
	ld (lba88),a
	ld e,#07
	call l988a
	ld c,#10
	ld a,#00
	call l99c7
	ld bc,#07d0
	call l99cf
	ld a,#00
	ld e,#0d
	call l988a
	ld a,#0a
	ld (lba81),a
	ret
.l9981
	ld bc,#001f
	call l99b0
	ld bc,#0640
	call l99cf
	ld c,#10
	ld a,#00
	call l99c7
	ld a,#00
	ld e,#0d
	call l988a
	ld a,(lba88)
	set 0,a
	res 3,a
	ld e,#07
	ld (lba88),a
	call l988a
	ld a,#0a
	ld (lba81),a
	ret
.l99b0
	ld a,c
	ld e,#06
	call l988a
	ret
.l99b7
	add a
	ld e,a
	ld a,c
	push bc
	push de
	call l988a
	pop de
	pop bc
	inc e
	ld a,b
	call l988a
	ret
.l99c7
	add #08
	ld e,a
	ld a,c
	call l988a
	ret
.l99cf
	ld e,#0b
	push de
	push bc
	ld a,c
	call l988a
	pop bc
	pop de
	inc e
	ld a,b
	call l988a
	ret
.l99df
	ld a,(lba8d)
	and #7f
	cp #13
	ret nz
	ld hl,lbb4d
	ld de,lb1cf
	ld b,#09
.l99ef
	ld a,(hl)
	and #7f
	cp #14
	jr z,l9a07
	cp #13
	jr z,l9a07
	cp #25
	jr z,l9a07
	cp #00
	jr z,l9a07
	ld (de),a
	inc de
	inc de
	inc de
	inc de
.l9a07
	inc hl
	djnz l99ef
	ret
.l9a0b
	call la12c
	ld de,la605
	ld (lba97),de
	ld a,(lba8d)
	and #7f
	push af
	call l9b0a
	call l99df
	pop af
	ld de,#0020
	call l9fd0
	ld de,laf68
	add hl,de
	ld b,#08
	ld e,#00
	ld a,(lba8d)
	and #80
	jr nz,l9a48
	push bc
	push de
	ld bc,(lbac2)
	ld a,(lba8a)
	ld d,#ff
	inc hl
	inc hl
	inc hl
	inc hl
	jr l9a52
.l9a48
	push bc
	push de
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,(hl)
	inc hl
.l9a52
	call l9ad2
	cp #00
	jr z,l9a5e
	push hl
	call la3d9
	pop hl
.l9a5e
	pop de
	pop bc
	inc e
	djnz l9a48
	ld a,(lba8d)
	and #7f
	ld (lba8d),a
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	ld de,lb768
	add hl,de
	ld de,lba93
	ld bc,#0004
	ldir
	ld de,la615
	ld hl,(lba8d)
	ld h,#00
	add hl,de
	ld l,(hl)
	ld h,#00
	ld de,la655
	sla l
	sla l
	sla l
	add hl,de
	ld (lba97),hl
	ld a,(lba8d)
	and #7f
	cp #13
	jr nz,l9acb
	ld a,#1e
	ld (lba73),a
	ld a,#0c
	ld e,#0d
	call l988a
	ld bc,#03e8
	call l99cf
	ld c,#10
	ld a,#02
	call l99c7
	ld a,(lba88)
	or #3f
	and #fb
	ld (lba88),a
	ld e,#07
	call l988a
	xor a
	ld (lba7e),a
	ret
.l9acb
	ld a,(lbaf4)
	ld (lba8a),a
	ret
.l9ad2
	push hl
	push bc
	push de
	push af
	push af
	ld a,(lba8d)
	and #7f
	cp #13
	jr nz,l9ae9
	ld a,(lbb4c)
	ld (lba7b),a
	pop af
	jr l9b01
.l9ae9
	pop af
	cp #0c
	jr nz,l9af6
	ld a,(lba82)
	or a
	jr z,l9b06
	ld a,#0c
.l9af6
	ld b,#09
	ld hl,lbb4d
.l9afb
	cp (hl)
	jr z,l9b06
	inc hl
	djnz l9afb
.l9b01
	pop af
.l9b02
	pop de
	pop bc
	pop hl
	ret
.l9b06
	pop af
	xor a
	jr l9b02
.l9b0a
	ld de,#0032
	call l9fd0
	ld de,#33b0
	add hl,de
	ld de,#0100
	ld b,#05
.l9b19
	push bc
	ld b,#0a
.l9b1c
	ld a,(hl)
	push hl
	push de
	push bc
	call l9b31
	pop bc
	pop de
	pop hl
	inc hl
	inc e
	djnz l9b1c
	ld e,#00
	inc d
	pop bc
	djnz l9b19
	ret
.l9b31
	sla e
	sla e
	sla d
	sla d
	inc d
	push de
	ld de,#0010
	call l9fd0
	ex de,hl
	ld hl,#1e70
	add hl,de
	pop de
	ld b,#04
.l9b49
	push bc
	ld b,#04
.l9b4c
	push hl
	ld l,(hl)
	push de
	push bc
	ld a,#ff
	ld bc,#0040
	call l9e39
	pop bc
	pop de
	pop hl
	inc hl
	inc e
	djnz l9b4c
	dec e
	dec e
	dec e
	dec e
	inc d
	pop bc
	djnz l9b49
	ret
.l9b68
	call la12c
	ld hl,la605
	ld (lba97),hl
	ld a,(lba8e)
	ld de,#000a
	call l9fd0
	ld de,#4030
	add hl,de
	ld e,#00
	ld b,#0a
.l9b82
	push bc
	push de
	push hl
	ld a,(hl)
	call l9c78
	pop hl
	pop de
	pop bc
	inc e
	inc hl
	djnz l9b82
	call l9c3c
	call l9c20
	ld de,la67d
	ld hl,(lba8e)
	ld h,#00
	add hl,de
	ld l,(hl)
	ld h,#00
	ld de,la6bb
	sla l
	sla l
	sla l
	add hl,de
	ld (lba97),hl
	ld de,#0000
	ld bc,(lbac2)
	ld a,(lbaf4)
	and #7f
	call la3d9
	xor a
	ld (lba68),a
	call l96e6
	ret nz
	ld bc,la044
	ld a,#15
	ld d,#00
	ld e,#07
	call la3d9
	ret
.l9bd3
	ld a,(lba8e)
	add a
	ld hl,la6df
	add l
	ld l,a
	jr nc,l9bdf
	inc h
.l9bdf
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ld b,#00
.l9be6
	ld a,(hl)
	cp #ff
	jr z,l9bf5
	inc hl
	inc hl
	inc hl
	inc hl
	inc b
	ld a,b
	cp #05
	jr nz,l9be6
.l9bf5
	ld a,b
	cp #00
	jr nz,l9bfc
	pop hl
	ret
.l9bfc
	ld c,#00
	ld e,#02
	ld hl,lbafe
.l9c03
	ld a,(hl)
	or a
	jr z,l9c11
	inc c
	inc c
	inc c
	inc c
	inc e
	inc hl
	djnz l9c03
	pop hl
	ret
.l9c11
	pop hl
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,(hl)
	call la3d9
	ret
.l9c20
	ld b,#05
.l9c22
	push bc
	call l9bd3
	pop bc
	djnz l9c22
	ret
.l9c2a
	ld a,(lba8e)
	ld b,#06
	ld hl,la488
.l9c32
	cp (hl)
	ret z
	inc hl
	inc hl
	inc hl
	djnz l9c32
	or #01
	ret
.l9c3c
	call l9c2a
	ret nz
	inc hl
	ld a,(hl)
	cp #00
	jr z,l9c5f
	inc hl
	ld a,(hl)
	ld de,#0060
	call l9fd0
	ld de,#7c1a
	add hl,de
	push hl
	pop ix
	ld de,#1804
	ld bc,la82c
	call l9168
	ret
.l9c5f
	inc hl
	ld a,(hl)
	ld de,#0100
	call l9fd0
	ld de,#7d9a
	add hl,de
	push hl
	pop ix
	ld de,#2008
	ld bc,la020
	call l9168
	ret
.l9c78
	sla e
	sla e
	ld d,#12
	push de
	ld de,#001c
	call l9fd0
	ld de,#25b0
	add hl,de
	pop de
	ld b,#07
.l9c8c
	push bc
	ld b,#04
.l9c8f
	push hl
	ld l,(hl)
	push de
	push bc
	ld a,#ff
	ld bc,#09b0
	call l9e39
	pop bc
	pop de
	pop hl
	inc hl
	inc e
	djnz l9c8f
	dec e
	dec e
	dec e
	dec e
	inc d
	pop bc
	djnz l9c8c
	ret
.l9cab
	ld e,#00
	call l9eb1
	ld a,(lba84)
	dec a
	ld (lba84),a
	ret z
	add a
	ld hl,la4c8
	add l
	ld l,a
	jr nc,l9cc1
	inc h
.l9cc1
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,#00
	push hl
	push de
	call l9ebf
	pop de
	pop hl
	inc e
	call l9ebf
	or #01
	ret
.l9cd4
	ld e,#03
	call l9eb1
	ld hl,la4ca
	ld b,#09
.l9cde
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	push bc
	push de
	ld l,#48
	call l9ebf
	pop de
	ld l,#49
	inc e
	call l9ebf
	pop bc
	pop hl
	djnz l9cde
	ret
.l9cf6
	push af
	ld e,#03
	call l9eb1
	ld l,#3f
	ld de,#0010
	push hl
	push de
	call l9ebf
	pop de
	pop hl
	inc d
	inc l
	push hl
	push de
	call l9ebf
	pop de
	pop hl
	inc e
	inc l
	call l9ebf
	pop af
	ret
.l9d18
	push af
	ld e,#03
	call l9eb1
	ld l,#42
	ld de,#0116
	push hl
	push de
	call l9ebf
	pop de
	pop hl
	inc e
	inc l
	push hl
	push de
	call l9ebf
	pop de
	pop hl
	inc e
	inc l
	call l9ebf
	pop af
	ret
.l9d3a
	jr nc,l9d43
	ld e,#02
	call l9eb1
	jr l9d48
.l9d43
	ld e,#00
	call l9eb1
.l9d48
	ld l,#45
	ld de,#0212
	ld h,#03
.l9d4f
	push hl
	push de
	call l9ebf
	pop de
	pop hl
	inc l
	inc e
	dec h
	jr nz,l9d4f
	ret
.l9d5c
	di
	ld a,#01
	ld (lba74),a
	ld a,#00
	ld b,#c8
	call la101
	call la0a5
	ld l,#04
	ld de,la601
	call la0de
	call l9d94
	ld bc,(lacf6)
	ld e,#03
	ld hl,lacf8
	call l9de7
	ei
.l9d84
	call l964a
	or a
	jr nz,l9d84
.l9d8a
	call l964a
	bit 4,a
	jr z,l9d8a
	jp #8a80
.l9d94
	ld b,#07
	ld hl,lba9b
	ld de,ladd3
	ld ix,lad93
.l9da0
	ld a,(hl)
	add #30
	ld (de),a
	ld (ix+#00),a
	inc de
	inc hl
	inc ix
	djnz l9da0
	ret
.l9dae
	di
	ld a,#01
	ld (lba74),a
	ld a,#00
	ld b,#c8
	di
	call la101
	call la0a5
	ld l,#04
	ld de,la601
	call la0de
	call l9d94
	ld bc,(lad9b)
	ld e,#03
	ld hl,lad9d
	call l9de7
	ei
.l9dd7
	call l964a
	or a
	jr nz,l9dd7
.l9ddd
	call l964a
	bit 4,a
	jr z,l9ddd
	jp #8a80
.l9de7
	call l9eb1
	push bc
	pop de
.l9dec
	ld a,(hl)
	cp #24
	ret z
	cp #0d
	jr nz,l9dfa
	inc b
	push bc
	pop de
	inc hl
	jr l9dec
.l9dfa
	push bc
	push de
	push hl
	cp #20
	jr nz,l9e04
	xor a
	jr l9e2e
.l9e04
	cp #40
	jr nz,l9e0c
	ld a,#26
	jr l9e2e
.l9e0c
	cp #2e
	jr nz,l9e14
	ld a,#27
	jr l9e2e
.l9e14
	cp #2c
	jr nz,l9e1c
	ld a,#4a
	jr l9e2e
.l9e1c
	cp #60
	jr nz,l9e24
	ld a,#4b
	jr l9e2e
.l9e24
	cp #41
	jr c,l9e2c
	sub #36
	jr l9e2e
.l9e2c
	sub #2f
.l9e2e
	ld l,a
	call l9ebf
	pop hl
	pop de
	pop bc
	inc e
	inc hl
	jr l9dec
.l9e39
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,bc
	ld c,a
	push hl
	ld a,d
	call l9fb3
	ld d,#00
	sla e
	add hl,de
	ex (sp),hl
	ld de,#0800
	ld b,#08
.l9e51
	ld a,(hl)
	inc hl
	ex (sp),hl
	and c
	ld (hl),a
	inc hl
	ex (sp),hl
	ld a,(hl)
	inc hl
	ex (sp),hl
	and c
	ld (hl),a
	dec hl
	add hl,de
	ex (sp),hl
	djnz l9e51
	pop hl
	ret
.l9e64
	push de
	ld a,d
	call l9fb3
	pop de
	ld d,#00
	srl e
	add hl,de
	ld b,#28
	ld de,#7a3a
.l9e74
	push bc
	push hl
	ld b,#0c
.l9e78
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l9e78
	pop hl
	pop bc
	ld a,h
	add #08
	ld h,a
	and #38
	jr z,l9ea4
.l9e88
	djnz l9e74
	ld de,la4eb
	ld b,#06
.l9e8f
	ld a,(de)
	push af
	inc de
	ld a,(de)
	call l9fe4
	pop af
	add l
	ld l,a
	jr nc,l9e9c
	inc h
.l9e9c
	inc de
	ld a,#20
	ld (hl),a
	djnz l9e8f
	ret
	ret
.l9ea4
	ld a,h
	sub #40
	ld h,a
	ld a,l
	add #50
	ld l,a
	jr nc,l9e88
	inc h
	jr l9e88
.l9eb1
	ld a,e
	ld de,la5aa
	add e
	ld e,a
	jr nc,l9eba
	inc d
.l9eba
	ld a,(de)
	ld (lba89),a
	ret
.l9ebf
	ld a,(lba89)
.l9ec2
	ld bc,#19b0
	call l9e39
	ret
.l9ec9
	ld d,#00
	sla e
	sla e
	ld hl,la52a
	add hl,de
	ld de,lbaa7
	ld bc,#0004
	ldir
	ld hl,lbaa1
	dec de
	ld b,#07
	xor a
.l9ee2
	ld a,(de)
	adc (hl)
	cp #0a
	jr c,l9eea
	sub #0a
.l9eea
	ccf
	ld (hl),a
	dec hl
	dec de
	djnz l9ee2
	inc hl
	ld e,#03
	call l9eb1
	ld de,#0108
	ld b,#07
.l9efb
	push bc
	push de
	push hl
	ld l,(hl)
	inc l
	call l9ebf
	pop hl
	pop de
	pop bc
	inc e
	inc hl
	djnz l9efb
	ret
.l9f0b
	push af
	ld d,#00
	sla e
	sla e
	ld hl,la52a
	add hl,de
	ld de,lbaa7
	ld bc,#0004
	ldir
	dec de
	ld hl,lbaa3
	ld b,#02
	pop af
	jr c,l9f5c
.l9f27
	ld a,(de)
	adc (hl)
	cp #0a
	jr c,l9f2f
	sub #0a
.l9f2f
	ccf
	ld (hl),a
	dec de
	dec hl
	djnz l9f27
	jr nc,l9f3f
	ld de,#0909
	ld (lbaa2),de
	or e
.l9f3f
	push af
	inc hl
	ld e,#03
	call l9eb1
	ld de,#030a
	ld b,#02
.l9f4b
	push hl
	push de
	push bc
	ld l,(hl)
	inc l
	call l9ebf
	pop bc
	pop de
	pop hl
	inc hl
	inc e
	djnz l9f4b
	pop af
	ret
.l9f5c
	xor a
	ex de,hl
.l9f5e
	ld a,(de)
	sbc (hl)
	jr nc,l9f65
	add #0a
	scf
.l9f65
	ld (de),a
	dec de
	dec hl
	djnz l9f5e
	ex de,hl
	jr nc,l9f3f
	ld de,#0000
	ld (lbaa2),de
	ld a,#01
	ld (lba6e),a
	xor a
	jr l9f3f
.l9f7c
	ld e,#02
	call l9eb1
	ld de,#0000
	ld l,#00
	ld bc,laec4
.l9f89
	ld a,(bc)
	cp #ff
	jr nz,l9f93
	inc d
	ld e,#00
	jr l9fb0
.l9f93
	cp #fe
	ret z
	push hl
	push de
	push bc
	ld l,a
	cp #25
	jr nz,l9fa5
	ld a,#ff
	call l9ec2
	jr l9fab
.l9fa5
	ld a,(lba89)
	call l9ebf
.l9fab
	pop bc
	pop de
	pop hl
	inc l
	inc e
.l9fb0
	inc bc
	jr l9f89
.l9fb3
	sla a
	and #fe
	ld hl,la5cf
	add l
	ld l,a
	jr nc,l9fbf
	inc h
.l9fbf
	ld a,(hl)
	push af
	inc hl
	ld h,(hl)
	pop af
	ld l,a
	ret
	xor a
.l9fc7
	sbc hl,de
	jr c,l9fce
	inc a
	jr l9fc7
.l9fce
	add hl,de
	ret
.l9fd0
	ld b,#08
	ld hl,#0000
	cp #00
	ret z
.l9fd8
	srl a
	jr nc,l9fdd
	add hl,de
.l9fdd
	sla e
	rl d
	djnz l9fd8
	ret
.l9fe4
	push af
	srl a
	srl a
	and #fe
	ld hl,la5cf
	add l
	ld l,a
	jr nc,l9ff3
	inc h
.l9ff3
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	pop af
	and #07
	add a
	add a
	add a
	add h
	ld h,a
	ret
;
.interrupt_38
;
.la000
	push af
	push hl
	push de
	push bc
	ld a,(la487)
	inc a
	ld (la487),a
	ld hl,lba8c
	ld bc,#f500
	in a,(c)
	and #01
	jr z,la019
	ld (hl),#00
.la019
	inc (hl)
	ld a,(lba74)
	or a
	jr nz,la03f
.la020
	ld a,(hl)
	cp #02
	call z,la088
	cp #03
	call z,la096
	ld a,(lba7c)
	or a
	jr nz,la03f
	ld a,(lba8d)
	and #7f
	cp #13
	jr z,la03f
	ld a,#08
	call la06d
.la03f
	call la049
	pop bc
	pop de
.la044
	pop hl
	pop af
	ei
	reti
.la049
	ld b,#09
	ld hl,lbad2
.la04e
	ld a,(hl)
	cp #00
	jr z,la054
	dec (hl)
.la054
	inc hl
	inc hl
	djnz la04e
	ld a,(lba6b)
	or a
	jr z,la062
	dec a
	ld (lba6b),a
.la062
	ld a,(lba76)
	or a
	jr z,la06c
	dec a
	ld (lba76),a
.la06c
	ret
.la06d
	and #0f
	ld c,a
	ld b,#7f
	out (c),c
	ld a,(lba70)
	inc a
	ld (lba70),a
	srl a
	srl a
	srl a
	and #1f
	or #40
	out (c),a
	ret
.la088
	push af
	call la0a5
	ld de,la601
	ld l,#04
	call la0de
	pop af
	ret
.la096
	push af
	call la0ae
	ld de,(lba97)
	ld l,#08
	call la0de
	pop af
	ret
.la0a5
	exx
	set 0,c
	res 1,c
	out (c),c
	exx
	ret
.la0ae
	exx
	res 0,c
	res 1,c
	out (c),c
	exx
	ret
.la0b7
	ld b,#bc
	ld c,#0c
	out (c),c
	inc b
	ld a,d
	and #07
	or #30
	out (c),a
	dec b
	inc c
	out (c),c
	inc b
	out (c),e
	ret
.la0cd
	ld b,#7f
	ld c,#0f
	and #1f
	or #40
.la0d5
	out (c),c
	out (c),a
	dec c
	jp p,la0d5
	ret
.la0de
	ld b,#7f
	ld c,#00
.la0e2
	out (c),c
	ld a,(de)
	and #1f
	or #40
	out (c),a
	inc c
	inc de
	ld a,l
	cp c
	jr nz,la0e2
	ret
.la0f2
	push bc
	ld b,#7f
	ld c,#10
	out (c),c
	and #1f
	or #40
	out (c),a
	pop bc
	ret
.la101
	push af
	push bc
	ld a,#14
	call la0cd
	pop bc
	pop af
.la10a
	push af
	push bc
	call l9fe4
	ld b,#50
.la111
	ld (hl),#00
	inc hl
	djnz la111
	pop bc
	pop af
	inc a
	djnz la10a
	ret
.la11c
	di
	exx
	ld b,#7f
	ld c,#8c
	out (c),c
	exx
	ld hl,la000
	ld (#0039),hl
	ret
.la12c
	ld b,#08
	ld de,lbafc
	ld ix,lbae4
	ld iy,lbab2
.la139
	push bc
	ld a,(de)
	cp #00
	jr z,la14d
	xor a
	ld (de),a
	ld l,(ix+#01)
	ld c,(iy+#00)
	ld b,(iy+#01)
	call la332
.la14d
	pop bc
	inc iy
	inc iy
	inc ix
	inc ix
	inc de
	djnz la139
	ret
.la15a
	ld de,#0000
	ld b,#08
.la15f
	push bc
	xor a
	ld (lba8f),a
	push de
	push de
	ld hl,lbafc
	add hl,de
	ld a,(hl)
	cp #00
	jp z,la240
	push de
	sla e
	sla e
.la175
	ld hl,lbb14
	add hl,de
	ld a,(hl)
	cp #00
	jp z,la2a6
	cp #ff
	jp z,la185
	dec (hl)
.la185
	inc hl
	ld a,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	srl e
	ld hl,lbac2
	add hl,de
	cp #0f
	call z,la463
	ld (lba8f),a
	bit 2,a
	call nz,la31c
	bit 3,a
	call nz,la326
	inc hl
	bit 0,a
	call nz,la304
	bit 1,a
	call nz,la310
	pop de
	ld hl,lbaf4
	add hl,de
	ld a,(hl)
	cp #00
	jp z,la240
	or a
	jp m,la240
	ld b,a
	sla e
	ld hl,lbad2
	add hl,de
	ld a,(hl)
	cp #00
	jp nz,la240
	ld a,b
	ld b,#00
	ld hl,labb8
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.la1d7
	push hl
	push hl
	ld a,(hl)
	ld hl,lbad2
	add hl,de
	ld (hl),a
	inc hl
	inc (hl)
	ld c,(hl)
	pop hl
	add hl,bc
	ld a,(hl)
	cp #ff
	jp z,la202
	cp #fe
	jp z,la235
	cp #fd
	jp z,la217
	ld hl,lbae4
	add hl,de
	ld (hl),a
	or #01
	ld (lba8f),a
	pop hl
	jp la240
.la202
	ld hl,lbad2
	add hl,de
	inc hl
	ld (hl),#00
	pop hl
	jp la1d7
.la20d
	pop de
	push hl
	ld hl,lbb04
	add hl,de
	ld (hl),#00
	sla e
.la217
	ld hl,lbae4
	add hl,de
	ld a,#3d
	ld (hl),a
	or #01
	ld (lba8f),a
	srl e
	ld hl,lbaf4
	add hl,de
	ld (hl),#00
	ld hl,lbafc
	add hl,de
	ld (hl),#00
	pop hl
	jp la240
.la235
	srl e
	ld hl,lbaf4
	add hl,de
	ld a,(hl)
	or #80
	ld (hl),a
	pop hl
.la240
	pop de
	ld a,e
	cp #00
	jp z,la25f
	ld a,(lba8f)
	cp #00
	jp nz,la25f
	ld a,#03
	ld (lbae2),a
.la254
	ld a,(lbae2)
	cp #00
	jp nz,la254
	jp la29e
.la25f
	ld hl,lbab2
	sla e
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,lbae4
	add hl,de
	inc hl
	ld l,(hl)
	ld a,b
	cp #5a
	call c,la2f4
	call nc,la2fc
	call la332
	ld hl,lbac2
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,lbab2
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ld hl,lbae4
	add hl,de
	ld a,(hl)
	inc hl
	ld (hl),a
	ld l,a
	call la332
	ld a,(lba8b)
	and #03
	jp z,la29e
	call l970f
.la29e
	pop de
	inc e
	pop bc
	dec b
	jp nz,la15f
	ret
.la2a6
	srl e
	srl e
.la2aa
	ld hl,lbb04
	add hl,de
	ld c,(hl)
	ld b,#00
	sla c
	ld hl,la91d
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ld hl,lbb0c
	add hl,de
	inc (hl)
	ld c,(hl)
	sla c
	sla c
	pop hl
	add hl,bc
	ld a,(hl)
	cp #fd
	jp z,la20d
	cp #ff
	jp nz,la2dd
	inc hl
	ld a,(hl)
	ld hl,lbb0c
	add hl,de
	dec a
	ld (hl),a
	jr la2aa
.la2dd
	push hl
	ld hl,lbb14
	sla e
	sla e
	add hl,de
	ld b,#04
.la2e8
	ex (sp),hl
	ld a,(hl)
	inc hl
	ex (sp),hl
	ld (hl),a
	inc hl
	djnz la2e8
	pop hl
	jp la175
.la2f4
	ld a,(lba8c)
	cp #04
	jr nz,la2f4
	ret
.la2fc
	ld a,(lba8c)
	cp #06
	jr nz,la2fc
	ret
.la304
	push af
	ld a,(hl)
	sub b
	cp #28
	jr nc,la30d
	ld a,#28
.la30d
	ld (hl),a
	pop af
	ret
.la310
	push af
	ld a,(hl)
	add b
	cp #b4
	jr c,la319
	ld a,#b3
.la319
	ld (hl),a
	pop af
	ret
.la31c
	push af
	ld a,(hl)
	sub c
	jr nc,la323
	ld a,#00
.la323
	ld (hl),a
	pop af
	ret
.la326
	push af
	ld a,(hl)
	add c
	cp #96
	jr c,la32f
	ld a,#95
.la32f
	ld (hl),a
	pop af
	ret
.la332
	push bc
	push de
	push hl
	ld h,#00
	add hl,hl
	push hl
	pop de
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	sbc hl,de
	ld de,#429c
	add hl,de
	push hl
	ld a,b
	call l9fe4
	pop de
	srl c
	xor a
	ld (lba8b),a
	ld b,#00
	add hl,bc
	ld b,#15
.la357
	push hl
	push bc
	ld b,#06
.la35b
	ld a,(de)
	or a
	jp z,la367
	ld a,(lba8b)
	or (hl)
	ld (lba8b),a
.la367
	ld a,(de)
	xor (hl)
	ld (hl),a
	inc hl
	inc de
	djnz la35b
	pop bc
	pop hl
	ld a,h
	add #08
	ld h,a
	and #38
	jp z,la37f
.la379
	djnz la357
	pop hl
	pop de
	pop bc
	ret
.la37f
	ld a,h
	sub #40
	ld h,a
	ld a,l
	add #50
	ld l,a
	jp nc,la379
	inc h
	jp la379
.la38e
	ld b,#08
	ld hl,lbafc
	ld ix,lbb14
	ld de,lbaf4
	xor a
.la39b
	ld (hl),a
	ld (ix+#00),#ff
	ld (ix+#01),a
	ld (de),a
	inc ix
	inc ix
	inc ix
	inc ix
	inc hl
	inc de
	djnz la39b
	ret
.la3b1
	push af
	push de
	push bc
	ld d,#00
	ld hl,lbaf4
	add hl,de
	ld (hl),#00
	ld hl,lbafc
	add hl,de
	ld (hl),#00
	sla e
	ld hl,lbae4
	add hl,de
	inc hl
	ld a,(hl)
	ld hl,lbab2
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,a
	call la332
	pop bc
	pop de
	pop af
	ret
.la3d9
	push de
	push de
	ld d,#00
	ld hl,lbafc
	add hl,de
	ld (hl),#01
	push bc
	call la440
	pop bc
	ld hl,lbac2
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ld hl,lbae4
	add hl,de
	ld (hl),a
	ld l,a
	call la332
	ld a,l
	ld hl,lbab2
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ld hl,lbae4
	add hl,de
	inc hl
	ld (hl),a
	pop de
	ld a,d
	cp #ff
	jr z,la40f
	call la411
.la40f
	pop de
	ret
.la411
	ld c,d
	ld d,#00
	ld b,#00
	ld hl,lbb04
	add hl,de
	ld (hl),c
	ld hl,lbb0c
	add hl,de
	ld (hl),#00
	sla e
	sla e
	ld hl,lbb14
	add hl,de
	push hl
	ld hl,la91d
	sla c
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld b,#04
.la436
	ld a,(hl)
	inc hl
	ex (sp),hl
	ld (hl),a
	inc hl
	ex (sp),hl
	djnz la436
	pop hl
	ret
.la440
	ld b,#00
	ld d,b
	ld hl,lbaf4
	add hl,de
	ld (hl),a
	ld hl,labb8
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	inc hl
	ld a,(hl)
	push af
	dec hl
	ld a,(hl)
	ld hl,lbad2
	sla e
	add hl,de
	ld (hl),a
	inc hl
	ld (hl),#00
	pop af
	ret
.la463
	push de
	ld d,#00
	ld a,(lbac2)
	cp (hl)
	jr z,la474
	jr c,la472
	set 3,d
	jr la474
.la472
	set 2,d
.la474
	inc hl
	ld a,(lbac3)
	cp (hl)
	jr z,la483
	jr c,la481
	set 1,d
	jr la483
.la481
	set 0,d
.la483
	ld a,d
	dec hl
	pop de
	ret
.la48a equ $ + 3
.la488 equ $ + 1
.la487
	db #52,#0a,#00,#00,#16,#00,#00,#21
	db #01,#00,#25,#00,#00,#2d,#00,#00
.la49a equ $ + 3
	db #03,#00,#00,#03,#12,#0a,#06,#16
.la4a6 equ $ + 7
	db #33,#21,#13,#25,#30,#2d,#04,#00
	db #07,#0c,#13,#1b,#22,#29,#30,#37
	db #02,#08,#10,#17,#1e,#34,#2c,#31
	db #3a,#04,#0b,#13,#19,#20,#27,#2e
	db #35,#3c,#06,#08,#11,#15,#1d,#26
.la4ca equ $ + 3
.la4c8 equ $ + 1
	db #2b,#34,#3d,#19,#01,#1b,#01,#1d
	db #01,#19,#02,#1b,#02,#1d,#02,#19
.la4dc equ $ + 5
	db #03,#1b,#03,#1d,#03,#38,#12,#0e
.la4e2 equ $ + 3
	db #08,#05,#3d,#13,#14,#20,#23,#03
.la4eb equ $ + 4
	db #21,#22,#04,#25,#38,#28,#24,#40
	db #3c,#58,#36,#68,#02,#48,#2e,#78
.la4f7
	db #25,#23,#1e,#1c,#1b,#19,#18,#16
	db #15,#14,#12,#14,#15,#16,#18,#19
.la50c equ $ + 5
	db #1b,#1c,#1e,#23,#25,#77,#07,#0c
	db #07,#a7,#06,#47,#06,#ed,#05,#98
	db #05,#ed,#05,#47,#06,#a7,#06,#0c
.la522 equ $ + 3
	db #07,#77,#07,#1f,#1b,#16,#12,#0e
.la52a equ $ + 3
	db #0c,#0a,#07,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#05,#00
	db #00,#01,#00,#00,#00,#02,#05,#00
	db #00,#05,#00,#00,#01,#00,#00,#00
	db #02,#05,#00,#00,#05,#00,#00,#01
.la556 equ $ + 7
	db #05,#00,#00,#05,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#05,#00,#05,#03,#03,#04,#00
	db #04,#05,#00,#00,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#03,#00
.la580 equ $ + 1
	db #05,#00,#00,#08,#08,#00,#00,#00
	db #00,#00,#00,#05,#00,#07,#04,#05
	db #05,#00,#06,#06,#07,#07,#03,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09,#09,#09,#07,#00,#00,#0a
.la5ae equ $ + 7
.la5aa equ $ + 3
	db #05,#00,#05,#00,#f0,#0f,#ff,#00
	db #01,#01,#03,#03,#04,#04,#04,#05
	db #05,#05,#05,#05,#06,#06,#06,#06
.la5c0 equ $ + 1
	db #06,#07,#07,#06,#04,#04,#03,#02
	db #02,#02,#02,#03,#04,#04,#06,#07
.la5cf
	db #00,#c0,#50,#c0,#a0,#c0,#f0,#c0
	db #40,#c1,#90,#c1,#e0,#c1,#30,#c2
	db #80,#c2,#d0,#c2,#20,#c3,#70,#c3
	db #c0,#c3,#10,#c4,#60,#c4,#b0,#c4
	db #00,#c5,#50,#c5,#a0,#c5,#f0,#c5
	db #40,#c6,#90,#c6,#e0,#c6,#30,#c7
.la605 equ $ + 6
.la601 equ $ + 2
	db #80,#c7,#14,#16,#0a,#0c,#14,#14
	db #14,#14,#14,#14,#14,#14,#14,#0d
.la615 equ $ + 6
	db #03,#0e,#0b,#00,#0a,#16,#00,#00
	db #00,#00,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#00,#00,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#03,#03
	db #03,#02,#02,#02,#02,#02,#02,#02
.la655 equ $ + 6
	db #02,#02,#02,#02,#03,#03,#14,#0c
	db #0a,#0c,#0e,#1b,#0e,#1b,#14,#19
	db #17,#19,#16,#1b,#15,#19,#14,#0c
	db #02,#16,#19,#19,#15,#19,#14,#0c
	db #02,#18,#0f,#0f,#15,#0f,#14,#0c
.la67d equ $ + 6
	db #0a,#0c,#0e,#1b,#0e,#0a,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#02,#02,#02,#02,#02,#02,#00
	db #00,#00,#00,#03,#03,#03,#03,#01
.la6bb equ $ + 4
	db #01,#01,#01,#01,#14,#1c,#0a,#0c
	db #03,#00,#0e,#16,#14,#1c,#15,#0c
	db #03,#00,#0e,#13,#14,#1c,#0a,#0c
	db #03,#00,#0e,#16,#14,#1c,#15,#0c
.la6db equ $ + 4
	db #03,#00,#0e,#16,#14,#0b,#0a,#0c
.la6df
	db #0b,#a8,#14,#a8,#21,#a8,#2e,#a8
	db #37,#a8,#5b,#a7,#85,#a8,#a3,#a8
	db #5b,#a7,#44,#a8,#55,#a8,#5a,#a8
	db #67,#a8,#74,#a8,#5b,#a7,#96,#a8
	db #85,#a8,#a3,#a8,#5b,#a7,#9f,#a7
	db #b0,#a7,#c4,#a7,#d8,#a7,#e1,#a7
	db #f2,#a7,#06,#a8,#d2,#a8,#b0,#a8
	db #df,#a8,#c1,#a8,#b0,#a8,#df,#a8
	db #b0,#a8,#60,#a7,#d2,#a8,#c1,#a8
	db #b0,#a8,#c1,#a8,#d2,#a8,#c1,#a8
	db #df,#a8,#d2,#a8,#5b,#a7,#ec,#a8
	db #f9,#a8,#fe,#a8,#0b,#a9,#10,#a9
	db #5b,#a7,#df,#a8,#b0,#a8,#d2,#a8
	db #5b,#a7,#74,#a7,#81,#a7,#92,#a7
	db #5b,#a7,#85,#a8,#96,#a8,#85,#a8
	db #a3,#a8,#5b,#a7,#61,#64,#00,#1b
	db #ff,#0a,#78,#0e,#0d,#64,#28,#0d
	db #0d,#30,#30,#12,#0d,#5f,#7f,#00
	db #10,#50,#50,#1a,#0d,#41,#8e,#0c
	db #27,#71,#82,#30,#27,#91,#8e,#0c
	db #27,#ff,#34,#94,#0c,#27,#51,#88
	db #32,#27,#71,#8e,#30,#27,#94,#94
	db #0c,#27,#ff,#25,#94,#0c,#27,#55
	db #94,#32,#27,#71,#82,#30,#27,#ff
	db #11,#83,#32,#27,#65,#95,#0c,#27
	db #81,#8f,#30,#27,#91,#8f,#0c,#27
	db #ff,#01,#8f,#30,#27,#45,#95,#0c
	db #27,#55,#95,#32,#27,#71,#83,#0c
	db #27,#91,#8f,#31,#27,#15,#95,#0c
	db #27,#25,#95,#32,#27,#35,#95,#0c
	db #27,#51,#83,#31,#27,#81,#8f,#0c
	db #27,#01,#8f,#33,#27,#85,#95,#32
	db #27,#ff,#11,#83,#0c,#27,#31,#8f
	db #33,#27,#41,#8f,#32,#27,#85,#95
	db #0c,#27,#ff,#01,#8f,#0c,#27,#25
	db #95,#30,#27,#35,#95,#0c,#27,#51
	db #83,#33,#27,#71,#8f,#0c,#27,#85
	db #95,#0c,#27,#ff,#21,#95,#28,#0f
	db #7d,#9b,#2f,#0f,#ff,#19,#7d,#2e
	db #0f,#6f,#95,#2c,#0f,#55,#a1,#00
	db #10,#ff,#0b,#95,#00,#10,#39,#7d
.la82c equ $ + 5
	db #2c,#0f,#81,#95,#29,#0f,#ff,#01
	db #9b,#2e,#0f,#89,#a1,#00,#10,#ff
	db #1d,#7d,#2c,#0f,#61,#9b,#00,#10
	db #8d,#89,#2f,#0f,#ff,#49,#7d,#2f
	db #0f,#1f,#8a,#00,#10,#2f,#8a,#00
	db #10,#0d,#8a,#00,#10,#ff,#85,#a2
	db #00,#10,#ff,#0b,#7d,#2e,#0f,#3d
	db #89,#2c,#0f,#77,#95,#00,#10,#ff
	db #0b,#77,#2e,#0f,#4f,#95,#00,#10
	db #6f,#9b,#00,#10,#ff,#21,#89,#00
	db #10,#3f,#83,#00,#10,#6d,#89,#2b
	db #0f,#8d,#89,#2f,#0f,#ff,#11,#a7
	db #2f,#29,#3d,#a7,#2e,#29,#6d,#a7
	db #30,#29,#55,#a7,#2f,#29,#ff,#4d
	db #a7,#28,#29,#25,#a7,#2f,#29,#6d
	db #a7,#2d,#29,#ff,#57,#a7,#2e,#29
	db #6d,#a7,#2d,#29,#01,#a7,#2f,#29
	db #ff,#01,#ab,#2f,#0d,#23,#ab,#2e
	db #0d,#46,#ab,#2d,#0d,#4a,#ab,#00
	db #1b,#ff,#82,#ab,#2f,#0d,#64,#ab
	db #2d,#0d,#14,#ab,#33,#0d,#32,#ab
	db #2b,#0d,#ff,#2f,#ab,#28,#0d,#64
	db #ab,#2a,#0d,#46,#ab,#2e,#0d,#ff
	db #64,#64,#2d,#0d,#1e,#a0,#2e,#0d
	db #46,#ab,#2f,#0d,#ff,#35,#ab,#2c
	db #0e,#75,#ab,#2d,#0e,#11,#ab,#2e
	db #0e,#ff,#85,#ab,#2f,#0e,#ff,#13
	db #ab,#2e,#0e,#05,#ab,#2f,#0e,#93
	db #ab,#2d,#0e,#ff,#15,#ab,#2f,#0e
	db #ff,#25,#ab,#2f,#0e,#45,#ab,#2b
.la91d equ $ + 6
	db #0e,#85,#ab,#2d,#0e,#ff,#87,#a9
	db #8b,#a9,#9d,#a9,#a3,#a9,#a9,#a9
	db #af,#a9,#b5,#a9,#bb,#a9,#c1,#a9
	db #c7,#a9,#d1,#a9,#d7,#a9,#e1,#a9
	db #ef,#a9,#f9,#a9,#03,#aa,#08,#aa
	db #11,#aa,#1b,#aa,#25,#aa,#2f,#aa
	db #39,#aa,#43,#aa,#4d,#aa,#57,#aa
	db #5c,#aa,#66,#aa,#70,#aa,#7a,#aa
	db #84,#aa,#8e,#aa,#98,#aa,#a6,#aa
	db #b4,#aa,#c2,#aa,#cc,#aa,#d6,#aa
	db #df,#aa,#e4,#aa,#e9,#aa,#f2,#aa
	db #fc,#aa,#12,#ab,#20,#ab,#36,#ab
	db #40,#ab,#52,#ab,#60,#ab,#6a,#ab
	db #78,#ab,#86,#ab,#94,#ab,#9e,#ab
	db #ff,#00,#00,#00,#0c,#08,#02,#02
	db #0a,#02,#02,#02,#0c,#04,#02,#02
	db #0a,#01,#02,#02,#ff,#00,#0a,#08
	db #0a,#00,#ff,#00,#0a,#09,#0a,#0c
	db #ff,#00,#0a,#0a,#0a,#0c,#ff,#00
	db #0a,#04,#0a,#00,#ff,#00,#0a,#05
	db #0a,#0c,#ff,#00,#0a,#06,#0a,#0c
	db #ff,#00,#01,#0f,#02,#02,#ff,#00
	db #0a,#01,#00,#08,#14,#02,#00,#08
	db #ff,#00,#0a,#08,#02,#00,#ff,#00
	db #11,#08,#02,#00,#11,#04,#02,#00
	db #ff,#00,#14,#01,#00,#00,#0a,#01
	db #00,#08,#01,#0f,#04,#04,#ff,#02
	db #16,#01,#00,#02,#16,#02,#00,#02
	db #ff,#00,#13,#08,#02,#00,#13,#04
	db #02,#00,#ff,#00,#54,#04,#02,#00
	db #fd,#64,#04,#00,#00,#3c,#04,#02
	db #00,#fd,#12,#04,#02,#00,#12,#08
	db #02,#00,#ff,#00,#16,#02,#00,#02
	db #16,#01,#00,#02,#ff,#00,#0a,#04
	db #02,#00,#0a,#08,#02,#00,#ff,#00
	db #16,#06,#02,#02,#16,#09,#02,#02
	db #ff,#00,#16,#08,#02,#00,#16,#04
	db #02,#00,#ff,#00,#23,#08,#02,#00
	db #23,#04,#02,#00,#ff,#00,#29,#08
	db #02,#00,#29,#04,#02,#00,#ff,#00
	db #20,#08,#03,#00,#fd,#36,#08,#02
	db #00,#36,#04,#02,#00,#ff,#00,#16
	db #05,#02,#02,#16,#0a,#02,#02,#ff
	db #00,#1e,#08,#02,#00,#1e,#04,#02
	db #00,#ff,#00,#11,#01,#00,#02,#11
	db #02,#00,#02,#ff,#00,#1e,#01,#00
	db #02,#1e,#02,#00,#02,#ff,#00,#16
	db #0a,#02,#02,#16,#05,#02,#02,#ff
	db #00,#32,#01,#00,#00,#16,#02,#00
	db #02,#16,#01,#00,#02,#ff,#00,#32
	db #01,#00,#00,#34,#04,#02,#00,#34
	db #08,#02,#00,#ff,#00,#32,#01,#00
	db #00,#16,#01,#00,#02,#16,#02,#00
	db #02,#ff,#00,#16,#04,#02,#00,#16
	db #08,#02,#00,#ff,#00,#13,#01,#00
	db #02,#13,#02,#00,#02,#ff,#00,#32
	db #01,#00,#00,#01,#08,#02,#00,#fd
	db #2e,#08,#03,#00,#fd,#41,#08,#02
	db #00,#fd,#0a,#04,#02,#00,#14,#01
	db #00,#00,#fd,#28,#01,#00,#03,#01
	db #0f,#04,#04,#ff,#01,#28,#01,#00
	db #03,#0a,#02,#00,#02,#0a,#02,#00
	db #02,#0a,#08,#02,#00,#01,#0f,#04
	db #04,#ff,#03,#14,#01,#00,#03,#0a
	db #04,#02,#00,#01,#0f,#03,#03,#ff
	db #02,#28,#01,#00,#03,#0a,#04,#02
	db #00,#0a,#08,#02,#00,#0a,#04,#02
	db #00,#01,#0f,#04,#04,#ff,#04,#0a
	db #01,#00,#03,#01,#0f,#02,#02,#ff
	db #00,#0a,#04,#02,#00,#14,#01,#00
	db #03,#0a,#08,#02,#00,#14,#02,#00
	db #03,#ff,#00,#14,#09,#02,#02,#14
	db #05,#02,#02,#01,#0f,#04,#04,#ff
	db #02,#14,#01,#00,#04,#01,#0f,#01
	db #01,#ff,#01,#0a,#01,#00,#00,#14
	db #01,#00,#03,#01,#0f,#04,#03,#ff
	db #02,#14,#01,#00,#00,#28,#01,#00
	db #02,#01,#0f,#04,#04,#ff,#02,#32
	db #01,#00,#00,#14,#01,#00,#03,#01
	db #0f,#02,#02,#ff,#02,#14,#01,#02
	db #02,#01,#0f,#04,#04,#ff,#01,#32
	db #04,#00,#00,#34,#04,#02,#00,#1e
	db #08,#02,#00,#0c,#01,#00,#02,#0c
	db #02,#00,#02,#16,#08,#02,#00,#ff
.labb8 equ $ + 1
	db #00,#00,#00,#0c,#ac,#12,#ac,#18
	db #ac,#1b,#ac,#1e,#ac,#24,#ac,#2a
	db #ac,#31,#ac,#38,#ac,#41,#ac,#44
	db #ac,#4f,#ac,#5c,#ac,#64,#ac,#6e
	db #ac,#78,#ac,#81,#ac,#85,#ac,#89
	db #ac,#8c,#ac,#8f,#ac,#92,#ac,#9e
	db #ac,#a2,#ac,#a6,#ac,#ab,#ac,#b0
	db #ac,#b6,#ac,#bd,#ac,#c4,#ac,#d2
	db #ac,#d5,#ac,#d8,#ac,#db,#ac,#de
	db #ac,#e1,#ac,#e4,#ac,#e7,#ac,#ea
	db #ac,#ee,#ac,#f2,#ac,#0a,#00,#01
	db #02,#03,#ff,#0a,#04,#05,#06,#07
	db #ff,#0a,#08,#fe,#0a,#09,#fe,#14
	db #0c,#0d,#0e,#0f,#ff,#14,#10,#11
	db #12,#13,#ff,#14,#17,#16,#15,#14
	db #0c,#fe,#14,#1b,#1a,#19,#18,#10
	db #fe,#14,#1c,#1d,#1e,#1f,#20,#21
	db #22,#ff,#14,#2e,#ff,#14,#3c,#3d
	db #3e,#3d,#3f,#40,#41,#42,#43,#fd
	db #14,#28,#29,#2a,#2b,#2c,#2d,#23
	db #24,#25,#26,#27,#ff,#14,#44,#45
	db #46,#47,#46,#45,#ff,#14,#49,#4a
	db #4b,#4c,#4d,#4e,#4f,#50,#ff,#14
	db #51,#52,#53,#54,#55,#56,#57,#58
	db #ff,#1e,#59,#5a,#5b,#5c,#5d,#5e
	db #5f,#ff,#28,#60,#61,#ff,#14,#62
	db #63,#ff,#01,#65,#fe,#01,#66,#fe
	db #01,#67,#fe,#3c,#38,#39,#38,#39
	db #38,#39,#3a,#3b,#3a,#39,#ff,#01
	db #0c,#0c,#fe,#01,#10,#10,#fe,#14
	db #6a,#6b,#6c,#ff,#14,#6d,#6e,#6f
	db #ff,#05,#34,#35,#36,#37,#ff,#14
	db #0c,#14,#14,#16,#17,#fe,#14,#10
	db #18,#19,#1a,#1b,#fe,#01,#10,#11
	db #12,#13,#10,#11,#12,#13,#10,#11
	db #12,#13,#fe,#01,#3d,#fe,#01,#68
	db #fe,#01,#70,#fe,#01,#0a,#fe,#01
	db #0b,#fe,#01,#69,#fe,#01,#33,#fe
	db #14,#2e,#ff,#14,#31,#32,#ff,#28
.lacf6 equ $ + 7
	db #2f,#30,#ff,#1e,#48,#64,#ff,#09
.lacf8 equ $ + 1
	db #03,#48,#45,#4c,#41,#53,#20,#56
	db #4f,#54,#52,#45,#20,#51,#55,#45
	db #54,#45,#0d,#0d,#41,#20,#45,#43
	db #48,#4f,#55,#45,#0d,#0d,#44,#45
	db #4d,#41,#49,#4e,#20,#50,#45,#55
	db #54,#20,#45,#54,#52,#45,#0d,#0d
	db #56,#4f,#55,#53,#20,#52,#45,#55
	db #53,#53,#49,#52,#45,#5a,#0d,#0d
	db #0d,#52,#45,#4a,#4f,#49,#47,#4e
	db #45,#5a,#20,#4c,#41,#20,#43,#49
	db #54,#52,#4f,#55,#49,#4c,#4c,#45
	db #0d,#0d,#44,#41,#4e,#53,#20,#53
	db #4f,#4e,#20,#41,#4e,#54,#52,#45
	db #20,#44,#45,#20,#4d,#4f,#52,#54
	db #0d,#0d,#47,#41,#47,#4e,#45,#5a
	db #20,#4c,#41,#20,#42,#41,#53,#0d
	db #0d,#4c,#45,#20,#42,#41,#4c,#41
	db #49,#20,#44,#60,#4f,#52,#0d,#0d
	db #0d,#56,#4f,#53,#20,#50,#4f,#49
.lad93 equ $ + 4
	db #4e,#54,#53,#20,#49,#00,#00,#00
.lad9d equ $ + 6
.lad9b equ $ + 4
	db #00,#00,#00,#24,#08,#09,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #42,#52,#41,#56,#4f,#0d,#0d,#56
	db #4f,#55,#53,#20,#41,#56,#45,#5a
	db #20,#54,#45,#52,#4d,#49,#4e,#45
	db #20,#43,#41,#55,#4c,#44,#52,#4f
	db #4e,#0d,#0d,#20,#20,#20,#20,#41
.ladd3 equ $ + 4
	db #56,#45,#43,#20,#eb,#00,#00,#00
	db #00,#00,#00,#20,#50,#4f,#49,#4e
	db #54,#53,#0d,#0d,#20,#20,#4c,#41
	db #20,#43,#49,#54,#52,#4f,#55,#49
	db #4c,#4c,#45,#20,#45,#53,#54,#20
	db #4d,#4f,#52,#54,#45,#0d,#0d,#20
	db #20,#20,#20,#56,#49,#56,#45,#20
	db #4c,#41,#20,#43,#49,#54,#52,#4f
.lae15 equ $ + 6
	db #55,#49,#4c,#4c,#45,#24,#08,#08
.lae17
	db #50,#52,#4f,#47,#52,#41,#4d,#4d
	db #41,#54,#49,#4f,#4e,#20,#50,#41
	db #4c,#50,#49,#54,#41,#4e,#54,#45
	db #0d,#0d,#0d,#0d,#0d,#20,#20,#20
	db #20,#47,#52,#41,#50,#48,#49,#53
	db #4d,#45,#20,#47,#45,#4e,#49,#41
.lae4c equ $ + 5
.lae4a equ $ + 3
	db #4c,#0d,#24,#0b,#0a,#52,#49,#43
	db #48,#41,#52,#44,#20,#4c,#45,#49
	db #4e,#46,#45,#4c,#4c,#4e,#45,#52
	db #0d,#0d,#0d,#0d,#0d,#20,#20,#20
	db #20,#53,#54,#45,#56,#45,#20,#42
.lae75 equ $ + 6
	db #52,#4f,#57,#4e,#0d,#24,#07,#13
.lae77
	db #40,#20,#50,#41,#4c,#41,#43,#45
	db #20,#53,#4f,#46,#54,#57,#41,#52
	db #45,#20,#4d,#43,#4d,#4c,#58,#58
.lae94 equ $ + 5
.lae92 equ $ + 3
	db #58,#56,#24,#08,#16,#20,#41,#50
	db #50,#55,#59,#45,#5a,#20,#53,#55
	db #52,#20,#4c,#45,#20,#42,#4f,#55
	db #54,#4f,#4e,#0d,#50,#4f,#55,#52
	db #20,#56,#4f,#4c,#45,#52,#20,#41
	db #20,#4c,#60,#41,#44,#56,#45,#4e
.laec4 equ $ + 5
	db #54,#55,#52,#45,#24,#28,#29,#2a
	db #2b,#2c,#2d,#2e,#00,#1a,#19,#13
	db #18,#1e,#1d,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#20
	db #13,#0f,#1d,#00,#00,#00,#28,#29
	db #2a,#2b,#2c,#2d,#2e,#ff,#2f,#30
	db #31,#31,#31,#32,#33,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#2f
	db #30,#31,#31,#31,#32,#33,#ff,#34
	db #35,#31,#31,#31,#36,#37,#00,#00
	db #17,#0b,#11,#13,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #34,#35,#31,#31,#31,#36,#37,#ff
	db #38,#39,#3a,#3b,#3c,#3d,#3e,#00
	db #00,#00,#00,#00,#25,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#38,#39,#3a,#3b,#3c,#3d,#3e
.laf68 equ $ + 1
	db #fe,#15,#63,#00,#18,#00,#00,#00
	db #00,#23,#68,#00,#0f,#43,#72,#0d
	db #0d,#61,#83,#0e,#0d,#3f,#ab,#00
	db #0f,#21,#ab,#00,#0f,#81,#a3,#00
	db #1b,#94,#a3,#00,#17,#94,#ab,#0f
	db #24,#72,#53,#11,#0d,#62,#a8,#00
	db #0f,#44,#a8,#00,#0f,#12,#a8,#00
	db #0f,#00,#00,#00,#00,#42,#83,#00
	db #1b,#64,#2b,#00,#18,#95,#ab,#0f
	db #24,#84,#6a,#0d,#0d,#64,#5b,#00
	db #0f,#21,#a2,#00,#0f,#3f,#a2,#00
	db #0f,#63,#a2,#00,#0f,#52,#89,#00
	db #1b,#94,#a3,#00,#17,#94,#ab,#27
	db #24,#62,#ab,#00,#0f,#42,#ab,#00
	db #0f,#30,#a3,#0d,#0d,#50,#77,#12
	db #0d,#70,#a3,#0d,#0d,#00,#00,#00
	db #00,#02,#53,#00,#18,#3c,#7b,#0e
	db #24,#12,#ab,#16,#12,#94,#70,#0d
	db #11,#00,#00,#00,#00,#14,#63,#0d
	db #12,#00,#00,#00,#00,#00,#00,#00
	db #00,#0d,#83,#00,#18,#00,#00,#00
	db #00,#0d,#57,#1f,#0e,#5b,#58,#11
	db #11,#85,#3f,#1f,#11,#3c,#ab,#1b
	db #0d,#00,#00,#00,#00,#72,#3d,#00
	db #21,#06,#53,#00,#18,#00,#00,#00
	db #00,#22,#63,#13,#0d,#44,#53,#1b
	db #0d,#32,#a3,#23,#0d,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#14,#2b,#00,#18,#00,#00,#00
	db #00,#38,#80,#0e,#0f,#0c,#4f,#0e
	db #0d,#6c,#a3,#0d,#0d,#32,#4f,#0e
	db #0d,#34,#b2,#00,#0f,#00,#00,#00
	db #00,#15,#53,#00,#18,#67,#ab,#10
	db #24,#23,#5d,#0d,#0d,#35,#a2,#00
	db #0f,#17,#a2,#00,#0f,#5d,#94,#00
	db #0f,#94,#73,#11,#0d,#00,#00,#00
	db #00,#83,#2b,#00,#17,#00,#00,#00
	db #00,#63,#58,#00,#0f,#55,#43,#11
	db #0d,#1c,#53,#0e,#0d,#21,#ab,#00
	db #0f,#43,#ab,#00,#0f,#02,#73,#21
	db #0d,#16,#33,#00,#18,#00,#00,#00
	db #00,#1e,#53,#0e,#0d,#62,#63,#0d
	db #0d,#62,#91,#00,#0f,#6a,#b2,#00
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00,#90,#a3,#00,#17,#00,#00,#00
	db #00,#86,#ab,#00,#0f,#64,#ab,#00
	db #0f,#44,#ab,#00,#0f,#24,#ab,#00
	db #0f,#44,#63,#11,#0d,#02,#6b,#00
	db #1b,#90,#73,#00,#17,#00,#00,#00
	db #00,#6e,#61,#23,#0d,#40,#6b,#0e
	db #0d,#25,#83,#0d,#0d,#65,#ab,#00
	db #0f,#85,#ab,#00,#0f,#80,#5b,#00
	db #14,#62,#ab,#00,#17,#00,#00,#00
	db #00,#76,#88,#22,#0d,#42,#53,#0e
	db #0d,#80,#6b,#0d,#0d,#1b,#ab,#00
	db #0f,#13,#83,#0d,#0d,#00,#00,#00
	db #00,#84,#73,#00,#17,#00,#00,#00
	db #00,#82,#47,#12,#0d,#44,#64,#0e
	db #0d,#50,#ab,#00,#0f,#30,#ab,#00
	db #0f,#60,#56,#00,#0f,#00,#00,#00
	db #00,#84,#ab,#00,#17,#00,#00,#00
	db #00,#42,#93,#0e,#0d,#22,#7b,#0d
	db #0d,#56,#43,#11,#0d,#12,#ab,#00
	db #0f,#7c,#4d,#00,#0f,#00,#00,#00
	db #00,#42,#ab,#00,#17,#00,#00,#00
	db #00,#12,#93,#0d,#0d,#32,#b1,#00
	db #0f,#8c,#6e,#11,#0d,#42,#83,#0d
	db #0d,#92,#ab,#00,#0f,#00,#00,#00
	db #00,#60,#ab,#00,#17,#00,#00,#00
	db #00,#60,#83,#0d,#0d,#30,#ab,#00
	db #0f,#10,#ab,#00,#0f,#20,#63,#0d
	db #0d,#42,#73,#21,#0d,#00,#00,#00
	db #00,#04,#53,#00,#18,#00,#00,#00
	db #00,#22,#80,#00,#0f,#36,#ab,#00
	db #0f,#5a,#ab,#00,#0f,#64,#67,#0d
	db #0d,#12,#63,#0e,#0d,#52,#42,#00
	db #20,#4a,#73,#00,#28,#38,#37,#00
.lb1cf
	db #00,#5c,#37,#00,#00,#76,#6e,#00
	db #00,#5e,#a6,#00,#00,#38,#a6,#00
	db #00,#1c,#6e,#00,#00,#00,#00,#00
	db #00,#82,#63,#00,#17,#00,#00,#00
	db #00,#62,#73,#0d,#0d,#66,#ab,#00
	db #0f,#26,#ab,#00,#0f,#22,#53,#00
	db #1b,#00,#00,#00,#00,#00,#00,#00
	db #00,#15,#53,#00,#18,#00,#00,#00
	db #00,#21,#61,#0d,#0d,#33,#5b,#0e
	db #0d,#21,#ab,#00,#0f,#39,#ab,#00
	db #0f,#85,#ab,#00,#0f,#71,#a3,#00
	db #1b,#1e,#ab,#00,#18,#00,#00,#00
	db #00,#42,#9e,#00,#0e,#5a,#8c,#00
	db #0e,#7e,#53,#34,#12,#1a,#7d,#1f
	db #11,#00,#00,#00,#00,#34,#2b,#00
	db #1b,#18,#ab,#00,#17,#00,#00,#00
	db #00,#44,#9c,#0d,#11,#62,#9f,#00
	db #11,#8a,#36,#14,#0d,#26,#55,#00
	db #0d,#0e,#55,#00,#0d,#00,#00,#00
	db #00,#8e,#63,#00,#17,#66,#80,#11
	db #24,#14,#80,#0d,#11,#32,#3f,#12
	db #0e,#0e,#ad,#1b,#12,#70,#73,#0d
	db #0e,#00,#00,#00,#00,#00,#00,#00
	db #00,#2e,#ab,#00,#18,#00,#00,#00
	db #00,#12,#ad,#18,#12,#12,#64,#1f
	db #11,#32,#4b,#11,#12,#4e,#3b,#0e
	db #0e,#00,#00,#00,#00,#8a,#ab,#00
	db #1b,#53,#2b,#00,#18,#00,#00,#00
	db #00,#62,#48,#11,#11,#33,#73,#0d
	db #0e,#11,#93,#1b,#12,#41,#73,#1b
	db #0d,#00,#00,#00,#00,#21,#73,#00
	db #1b,#67,#33,#00,#18,#00,#00,#00
	db #00,#34,#53,#17,#12,#3c,#72,#0e
	db #11,#3b,#ab,#16,#0e,#15,#6c,#0d
	db #12,#00,#00,#00,#00,#00,#00,#00
	db #00,#94,#ab,#00,#17,#00,#00,#00
	db #00,#01,#ab,#0e,#0e,#25,#ab,#0e
	db #0e,#4a,#ab,#0e,#0e,#6f,#ab,#0e
	db #0e,#00,#00,#00,#00,#00,#00,#00
	db #00,#94,#ab,#00,#17,#00,#00,#00
	db #00,#12,#63,#0d,#0e,#32,#47,#12
	db #0e,#52,#63,#0d,#0e,#6e,#4f,#12
	db #0e,#00,#00,#00,#00,#40,#93,#00
	db #1b,#27,#2b,#00,#18,#00,#00,#00
	db #00,#33,#3a,#00,#0d,#03,#2b,#16
	db #12,#41,#6b,#1c,#11,#71,#6b,#14
	db #0e,#25,#ab,#1c,#0e,#00,#00,#00
	db #00,#94,#ab,#00,#17,#00,#00,#00
	db #00,#2e,#63,#0d,#11,#54,#4b,#1b
	db #0e,#12,#93,#1d,#12,#00,#00,#00
	db #00,#2e,#ab,#00,#1b,#70,#8b,#00
	db #23,#52,#2b,#00,#18,#00,#00,#00
	db #00,#5e,#8b,#1d,#0e,#0c,#3b,#0e
	db #0d,#3e,#73,#11,#12,#44,#ab,#11
	db #12,#00,#00,#00,#00,#00,#00,#00
	db #00,#94,#6b,#00,#17,#00,#00,#00
	db #00,#82,#ae,#00,#12,#60,#ae,#00
	db #12,#40,#ae,#00,#12,#18,#82,#1d
	db #11,#6c,#69,#1c,#11,#00,#00,#00
	db #00,#66,#2b,#00,#18,#00,#00,#00
	db #00,#50,#6b,#13,#0e,#78,#4b,#11
	db #12,#01,#97,#01,#0e,#26,#97,#01
	db #0e,#4b,#97,#01,#0e,#70,#97,#01
	db #0e,#01,#ab,#00,#18,#00,#00,#00
	db #00,#36,#4b,#00,#1b,#48,#4e,#01
	db #12,#28,#4e,#01,#12,#1b,#ab,#0e
	db #0e,#61,#ab,#0e,#0e,#86,#6b,#1c
	db #12,#01,#ab,#00,#18,#00,#00,#00
	db #00,#11,#a6,#1d,#11,#43,#79,#0e
	db #0e,#8a,#6e,#0d,#11,#29,#af,#0e
	db #12,#8c,#ab,#13,#0d,#00,#00,#00
	db #00,#01,#ab,#00,#18,#00,#00,#00
	db #00,#11,#66,#1d,#0d,#59,#6b,#15
	db #0e,#6b,#a5,#00,#11,#11,#ab,#0d
	db #0d,#29,#53,#15,#12,#00,#00,#00
	db #00,#01,#ab,#00,#18,#00,#00,#00
	db #00,#6c,#ad,#10,#12,#53,#99,#1d
	db #11,#5e,#4b,#00,#1b,#42,#4b,#11
	db #12,#75,#63,#21,#12,#81,#4b,#00
	db #13,#2b,#ab,#00,#17,#00,#00,#00
	db #00,#2b,#7f,#1f,#0e,#23,#4b,#0e
	db #0d,#51,#9c,#00,#11,#3f,#93,#21
	db #12,#00,#00,#00,#00,#74,#7b,#00
	db #1b,#01,#ab,#00,#18,#3c,#64,#1e
	db #11,#32,#64,#14,#11,#16,#ab,#00
	db #12,#66,#ab,#00,#12,#54,#ab,#11
	db #0d,#00,#00,#00,#00,#90,#63,#00
	db #1b,#07,#6b,#00,#18,#00,#00,#00
	db #00,#15,#56,#01,#0e,#53,#56,#01
	db #0e,#5f,#ae,#0d,#12,#29,#83,#12
	db #12,#3f,#67,#0d,#11,#00,#00,#00
	db #00,#01,#ab,#00,#18,#00,#00,#00
	db #00,#00,#00,#00,#00,#31,#ab,#15
	db #0d,#5a,#ab,#15,#0d,#33,#6b,#1c
	db #12,#87,#ab,#00,#1b,#83,#80,#0d
	db #0e,#8d,#ab,#00,#17,#00,#00,#00
	db #00,#21,#7a,#0d,#11,#45,#4f,#12
	db #12,#70,#7a,#0d,#0d,#21,#b2,#17
	db #0e,#00,#00,#00,#00,#13,#6b,#00
	db #1b,#01,#ab,#00,#18,#00,#00,#00
	db #00,#4c,#49,#14,#0e,#53,#38,#00
	db #11,#5d,#ab,#0d,#12,#7d,#ab,#0d
	db #12,#00,#00,#00,#00,#6d,#7f,#1f
	db #1b,#57,#ab,#00,#18,#00,#00,#00
	db #00,#6c,#72,#14,#0d,#45,#6a,#0d
	db #0e,#13,#3e,#12,#0e,#12,#ad,#00
	db #11,#83,#8b,#21,#12,#00,#00,#00
	db #00,#94,#ab,#00,#17,#60,#73,#11
	db #24,#0a,#69,#0d,#12,#27,#ab,#11
	db #0e,#6e,#ab,#0e,#0e,#4a,#ab,#23
	db #0e,#00,#00,#00,#00,#00,#00,#00
	db #00,#7e,#83,#00,#17,#00,#00,#00
	db #00,#6e,#83,#0d,#0d,#44,#6b,#11
	db #12,#46,#3b,#0e,#0e,#14,#a8,#19
	db #11,#00,#00,#00,#00,#00,#00,#00
	db #00,#06,#53,#00,#18,#90,#83,#24
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#13,#73,#00,#18,#00,#00,#00
	db #00,#2c,#73,#18,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#05,#63,#00,#18,#00,#00,#00
	db #00,#08,#73,#25,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#53,#00,#18,#50,#ab,#15
	db #24,#42,#75,#0d,#0d,#72,#73,#21
	db #0d,#80,#7d,#12,#0d,#00,#00,#00
	db #00,#00,#00,#00,#00,#52,#63,#00
	db #04,#14,#a3,#00,#18,#00,#00,#00
	db #00,#90,#63,#00,#16,#82,#a3,#00
	db #16,#50,#63,#0d,#0d,#32,#53,#11
	db #0d,#04,#ab,#00,#16,#72,#63,#00
	db #22,#44,#2b,#00,#18,#00,#00,#00
	db #00,#22,#2b,#0e,#0d,#22,#93,#0d
	db #0d,#44,#a3,#0e,#0d,#60,#53,#00
	db #16,#00,#00,#00,#00,#00,#00,#00
	db #00,#24,#33,#00,#17,#00,#00,#00
	db #00,#70,#ab,#0d,#0d,#34,#93,#13
	db #0d,#0a,#76,#0e,#0d,#60,#ab,#00
	db #16,#42,#ab,#00,#16,#84,#ab,#00
	db #16,#15,#a3,#00,#18,#00,#00,#00
	db #00,#24,#ab,#00,#16,#44,#ab,#00
	db #16,#62,#ab,#00,#16,#92,#93,#0d
	db #0d,#82,#ab,#00,#16,#00,#00,#00
	db #00,#15,#93,#00,#18,#21,#a3,#16
	db #24,#64,#9b,#22,#0d,#05,#ab,#00
	db #16,#81,#93,#0d,#0d,#92,#ab,#00
	db #16,#71,#a3,#00,#16,#00,#00,#00
	db #00,#05,#83,#00,#18,#00,#00,#00
	db #00,#1d,#83,#15,#0d,#03,#4c,#12
	db #0d,#41,#43,#13,#0d,#61,#53,#0e
	db #0d,#33,#ab,#00,#16,#00,#00,#00
	db #00,#41,#a3,#00,#17,#00,#00,#00
	db #00,#6e,#9e,#1d,#0d,#60,#8b,#13
	db #0d,#30,#4b,#13,#0d,#24,#9e,#1d
	db #0d,#00,#00,#00,#00,#45,#63,#00
	db #1b,#65,#a3,#00,#18,#00,#00,#00
	db #00,#3d,#a3,#0e,#0d,#83,#93,#0d
	db #0d,#43,#73,#0d,#0d,#23,#83,#0d
	db #0d,#10,#a3,#00,#16,#65,#63,#00
	db #03,#80,#a3,#00,#17,#22,#ab,#17
	db #24,#2c,#ab,#00,#16,#48,#ab,#00
	db #16,#64,#ab,#00,#16,#90,#73,#00
	db #16,#10,#a3,#00,#1b,#00,#00,#00
	db #00,#90,#a3,#00,#17,#54,#ab,#0e
	db #24,#36,#93,#11,#0d,#22,#63,#0d
	db #0d,#6a,#ab,#00,#16,#18,#ab,#00
	db #16,#00,#00,#00,#00,#00,#00,#00
	db #00,#05,#83,#00,#18,#14,#8b,#19
	db #24,#14,#83,#26,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#15,#73,#00,#18,#00,#00,#00
	db #00,#50,#73,#08,#26,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#83,#73,#00
.lb768 equ $ + 1
	db #25,#08,#ff,#ff,#ff,#03,#02,#ff
	db #ff,#01,#08,#ff,#07,#ff,#01,#0a
	db #ff,#ad,#05,#ff,#ff,#04,#18,#1a
	db #ff,#8a,#ff,#07,#ff,#ff,#ff,#02
	db #06,#02,#00,#ff,#ff,#0b,#ff,#ff
	db #0a,#ff,#ff,#09,#03,#0c,#09,#ff
	db #ff,#ff,#0b,#ff,#0d,#0e,#ff,#0c
	db #ff,#ff,#0d,#ff,#0f,#14,#ff,#0e
	db #10,#ff,#15,#0f,#11,#12,#ff,#10
	db #ff,#83,#11,#ff,#ff,#a1,#ff,#ff
	db #ff,#ff,#0f,#ff,#ff,#10,#ff,#ff
	db #ff,#ff,#ff,#2f,#17,#18,#ff,#16
	db #ff,#05,#17,#19,#ff,#ff,#ff,#ff
	db #18,#ff,#ff,#1b,#05,#1c,#ff,#ff
	db #1a,#1d,#1b,#ff,#ff,#ff,#1c,#1e
	db #ff,#1f,#ff,#ff,#1d,#ff,#1e,#20
	db #ff,#ff,#ff,#22,#1f,#ff,#22,#ff
	db #ff,#21,#23,#ff,#20,#22,#24,#ff
	db #ff,#23,#25,#ff,#ff,#24,#26,#ff
	db #27,#25,#ff,#ff,#ff,#ff,#28,#25
	db #ff,#27,#29,#ff,#ff,#28,#2a,#ff
	db #ff,#29,#ff,#ff,#2b,#ff,#2c,#2a
	db #ff,#2b,#ff,#ff,#2d,#2e,#ff,#2c
	db #ff,#2f,#2d,#ff,#ff,#ff,#2e,#ff
	db #16,#a5,#31,#ff,#ff,#30,#32,#ff
	db #ff,#31,#3e,#ff,#ff,#96,#34,#ff
	db #ff,#33,#3d,#35,#ff,#ff,#ff,#36
	db #34,#ff,#37,#ff,#35,#36,#38,#ff
	db #ff,#37,#39,#ff,#ff,#38,#ff,#ff
	db #3a,#ff,#ff,#39,#3b,#3c,#ff,#3a
	db #ff,#3d,#3b,#ff,#ff,#34,#3c,#ff
	db #ff,#32,#3f,#ff,#ff,#3e,#ff,#ff
.lb868 equ $ + 1
	db #ff,#79,#07,#de,#01,#00,#00,#3f
	db #01,#00,#00,#ef,#00,#00,#00,#9f
	db #00,#00,#00,#77,#00,#00,#00,#9f
	db #00,#00,#00,#ef,#00,#00,#00,#3f
	db #01,#00,#00,#de,#01,#00,#00,#3f
	db #01,#00,#00,#ef,#00,#00,#00,#9f
	db #00,#49,#06,#77,#00,#00,#00,#9f
	db #00,#a8,#06,#ef,#00,#00,#00,#3f
	db #01,#b5,#04,#de,#01,#00,#00,#2d
	db #01,#00,#00,#ef,#00,#00,#00,#96
	db #00,#00,#00,#77,#00,#00,#00,#96
	db #00,#00,#00,#ef,#00,#00,#00,#2d
	db #01,#fd,#04,#de,#01,#00,#00,#3f
	db #01,#00,#00,#ef,#00,#00,#00,#9f
	db #00,#00,#00,#77,#00,#00,#00,#9f
	db #00,#00,#00,#ef,#00,#00,#00,#3f
	db #01,#79,#07,#de,#01,#00,#00,#3f
	db #01,#00,#00,#ef,#00,#00,#00,#9f
	db #00,#00,#00,#77,#00,#00,#00,#9f
	db #00,#00,#00,#ef,#00,#00,#00,#3f
	db #01,#00,#00,#de,#01,#00,#00,#3f
	db #01,#00,#00,#ef,#00,#00,#00,#9f
	db #00,#49,#06,#77,#00,#00,#00,#9f
	db #00,#a8,#06,#ef,#00,#00,#00,#3f
	db #01,#b5,#04,#de,#01,#00,#00,#2d
	db #01,#00,#00,#ef,#00,#00,#00,#96
	db #00,#00,#00,#77,#00,#00,#00,#96
	db #00,#00,#00,#ef,#00,#00,#00,#2d
	db #01,#fd,#04,#de,#01,#00,#00,#3f
	db #01,#00,#00,#ef,#00,#00,#00,#9f
	db #00,#00,#00,#77,#00,#00,#00,#9f
	db #00,#00,#00,#ef,#00,#00,#00,#3f
	db #01,#9a,#05,#de,#01,#00,#00,#66
	db #01,#00,#00,#ef,#00,#00,#00,#b3
	db #00,#00,#00,#77,#00,#00,#00,#b3
	db #00,#00,#00,#ef,#00,#00,#00,#66
	db #01,#00,#00,#de,#01,#00,#00,#66
	db #01,#00,#00,#ef,#00,#00,#00,#b3
	db #00,#fd,#04,#77,#00,#00,#00,#b3
	db #00,#b5,#04,#ef,#00,#00,#00,#66
	db #01,#a8,#06,#de,#01,#00,#00,#52
	db #01,#00,#00,#ef,#00,#00,#00,#a9
	db #00,#00,#00,#77,#00,#00,#00,#a9
	db #00,#b5,#04,#ef,#00,#00,#00,#52
	db #01,#fd,#04,#aa,#01,#00,#00,#3f
	db #01,#00,#00,#d5,#00,#00,#00,#9f
	db #00,#00,#00,#77,#00,#00,#00,#9f
	db #00,#00,#00,#d5,#00,#00,#00,#3f
	db #01,#a8,#06,#de,#01,#00,#00,#52
	db #01,#00,#00,#ef,#00,#00,#00,#a9
	db #00,#00,#00,#77,#00,#00,#00,#a9
	db #00,#00,#00,#ef,#00,#00,#00,#52
	db #01,#00,#00,#de,#01,#00,#00,#52
	db #01,#00,#00,#ef,#00,#00,#00,#a9
	db #00,#00,#00,#77,#00,#00,#00,#a9
	db #00,#00,#00,#ef,#00,#00,#00,#52
	db #01,#fd,#04,#aa,#01,#00,#00,#3f
	db #01,#00,#00,#d5,#00,#00,#00,#9f
	db #00,#00,#00,#77,#00,#00,#00,#9f
	db #00,#00,#00,#d5,#00,#00,#00,#3f
	db #01,#00,#00,#aa,#01,#00,#00,#3f
	db #01,#00,#00,#d5,#00,#00,#00,#9f
	db #00,#00,#00,#77,#00,#00,#00,#9f
	db #00,#00,#00,#d5,#00,#00,#00,#3f
.lba6e equ $ + 7
.lba6d equ $ + 6
.lba6c equ $ + 5
.lba6b equ $ + 4
.lba6a equ $ + 3
.lba69 equ $ + 2
.lba68 equ $ + 1
	db #01,#00,#00,#00,#00,#00,#00,#00
.lba76 equ $ + 7
.lba75 equ $ + 6
.lba74 equ $ + 5
.lba73 equ $ + 4
.lba72 equ $ + 3
.lba71 equ $ + 2
.lba70 equ $ + 1
.lba6f
	db #00,#00,#00,#00,#00,#01,#00,#00
.lba7e equ $ + 7
.lba7c equ $ + 5
.lba7b equ $ + 4
.lba7a equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.lba85 equ $ + 6
.lba84 equ $ + 5
.lba83 equ $ + 4
.lba82 equ $ + 3
.lba81 equ $ + 2
.lba80 equ $ + 1
.lba7f
	db #00,#00,#00,#00,#00,#0a,#68,#b8
.lba8e equ $ + 7
.lba8d equ $ + 6
.lba8c equ $ + 5
.lba8b equ $ + 4
.lba8a equ $ + 3
.lba89 equ $ + 2
.lba88 equ $ + 1
.lba87
	db #00,#3f,#ff,#00,#00,#01,#00,#00
.lba96 equ $ + 7
.lba95 equ $ + 6
.lba94 equ $ + 5
.lba93 equ $ + 4
.lba92 equ $ + 3
.lba91 equ $ + 2
.lba90 equ $ + 1
.lba8f
	db #00,#00,#00,#00,#00,#00,#00,#00
.lba9b equ $ + 4
.lba97
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbaa3 equ $ + 4
.lbaa2 equ $ + 3
.lbaa1 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbaa7
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbab2 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbac4 equ $ + 5
.lbac3 equ $ + 4
.lbac2 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbad2 equ $ + 3
.lbad0 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbae4 equ $ + 5
.lbae2 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbaf4 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbafe equ $ + 7
.lbafc equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb04 equ $ + 5
.lbb03 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb0c equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb16 equ $ + 7
.lbb15 equ $ + 6
.lbb14 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb17
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb4d equ $ + 6
.lbb4c equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb56 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #08,#10,#17,#1e,#34,#2c,#31,#3a
	db #93,#cf,#ac,#93,#cf,#a8,#93,#cf
	db #08,#92,#cf,#52,#92,#cf,#4f,#95
	db #cf,#5a,#91,#cf,#65,#91,#cf,#70
	db #91,#cf,#7c,#91,#cf,#86,#92,#cf
	db #97,#92,#cf,#76,#92,#cf,#7e,#92
	db #cf,#ca,#91,#cf,#65,#92,#cf,#65
	db #92,#cf,#a6,#92,#cf,#ba,#92,#cf
	db #ab,#92,#cf,#c0,#92,#cf,#c6,#92
	db #cf,#7b,#93,#cf,#88,#93,#cf,#d4
	db #92,#cf,#f2,#92,#cf,#fe,#92,#cf
	db #2b,#93,#cf,#d4,#94,#cf,#e4,#90
	db #cf,#03,#91,#cf,#a8,#95,#cf,#d7
	db #95,#cf,#fe,#95,#cf,#fb,#95,#cf
	db #06,#96,#cf,#0e,#96,#cf,#1c,#96
	db #cf,#a5,#96,#cf,#ea,#96,#cf,#17
	db #97,#cf,#2d,#97,#cf,#36,#97,#cf
	db #67,#97,#cf,#75,#97,#cf,#6e,#97
	db #cf,#7a,#97,#cf,#83,#97,#cf,#80
	db #97,#cf,#97,#97,#cf,#94,#97,#cf
	db #a9,#97,#cf,#a6,#97,#cf,#40,#99
	db #cf,#bf,#8a,#cf,#d0,#8a,#cf,#37
	db #8b,#cf,#3c,#8b,#cf,#56,#8b,#cf
	db #e9,#8a,#cf,#0c,#8b,#cf,#17,#8b
	db #cf,#5d,#8b,#cf,#6a,#8b,#cf,#af
	db #8b,#cf,#05,#8c,#cf,#11,#8c,#cf
	db #1f,#8c,#cf,#39,#8c,#cf,#8e,#8c
	db #cf,#a7,#8c,#cf,#f2,#8c,#cf,#1a
	db #8d,#cf,#f7,#8c,#cf,#1f,#8d,#cf
	db #ea,#8c,#cf,#ee,#8c,#cf,#b9,#8d
	db #cf,#bd,#8d,#cf,#e5,#8d,#cf,#00
	db #8e,#cf,#44,#8e,#cf,#f9,#8e,#cf
	db #2a,#8f,#cf,#55,#8c,#cf,#74,#8c
	db #cf,#93,#8f,#cf,#9b,#8f,#cf,#bc
	db #a4,#cf,#ce,#a4,#cf,#e1,#a4,#cf
	db #bb,#ab,#cf,#bf,#ab,#cf,#c1,#ab
	db #df,#8c,#ad,#df,#8c,#ad,#df,#8c
	db #ad,#df,#8c,#ad,#df,#8c,#ad,#df
	db #8c,#ad,#df,#8c,#ad,#df,#8c,#ad
	db #df,#8c,#ad,#df,#8c,#ad,#df,#8c
	db #ad,#df,#8c,#ad,#df,#8c,#ad,#cf
	db #af,#a9,#cf,#a6,#a9,#cf,#c1,#a9
	db #cf,#e9,#9f,#cf,#14,#a1,#cf,#ce
	db #a1,#cf,#eb,#a1,#cf,#ac,#a1,#cf
	db #50,#a0,#cf,#6b,#a0,#cf,#95,#a4
	db #cf,#9a,#a4,#cf,#a6,#a4,#cf,#ab
	db #a4,#cf,#5c,#80,#cf,#26,#83,#cf
	db #30,#83,#cf,#a0,#82,#cf,#b1,#82
	db #cf,#63,#81,#cf,#6a,#81,#cf,#70
	db #81,#cf,#76,#81,#cf,#7d,#81,#cf
	db #83,#81,#cf,#b3,#81,#cf,#c5,#81
	db #cf,#d2,#81,#cf,#e2,#81,#cf,#27
	db #82,#cf,#84,#82,#cf,#55,#82,#cf
	db #19,#82,#cf,#76,#82,#cf,#94,#82
	db #cf,#9a,#82,#cf,#8d,#82,#cf,#99
	db #80,#cf,#a3,#80,#cf,#ed,#85,#cf
	db #1c,#86,#cf,#b4,#87,#cf,#76,#87
	db #cf,#c0,#87,#cf,#86,#87,#cf,#8c
	db #87,#cf,#e0,#87,#cf,#1b,#88,#cf
	db #58,#88,#cf,#44,#88,#cf,#63,#88
	db #cf,#bd,#88,#cf,#3c,#9d,#cf,#fe
	db #9b,#cf,#60,#94,#cf,#ec,#95,#cf
	db #d5,#99,#cf,#b0,#97,#cf,#ac,#97
	db #cf,#2a,#96,#cf,#d9,#99,#cf,#45
	db #8b,#cf,#0c,#88,#cf,#97,#83,#cf
	db #02,#ac,#ef,#91,#2f,#ef,#9f,#2f
	db #ef,#c8,#2f,#ef,#d9,#2f,#ef,#01
	db #30,#ef,#14,#30,#ef,#55,#30,#ef
	db #5f,#30,#ef,#c6,#30,#ef,#a2,#34
	db #ef,#59,#31,#ef,#9e,#34,#ef,#77
	db #35,#ef,#04,#36,#ef,#88,#31,#ef
	db #df,#36,#ef,#31,#37,#ef,#27,#37
	db #ef,#45,#33,#ef,#73,#2f,#ef,#ac
	db #32,#ef,#af,#32,#ef,#b6,#31,#ef
	db #b1,#31,#ef,#2f,#32,#ef,#53,#33
	db #ef,#49,#33,#ef,#c8,#33,#ef,#d8
	db #33,#ef,#d1,#2f,#ef,#36,#31,#ef
	db #43,#31,#ff,#ff,#ff,#22,#00,#00
	db #00,#00,#00,#00,#00,#04
;
.play_music	; added by Megachur
;
	ld a,(la487)
	inc a
	ld (la487),a
	call l98be
	call la049
	call la049
	call la049
	call la049
	call la049
	jp la049
;
.music_info
	db "Cauldron (1985)(Palace Software)(Richard Joseph)",0
	db "",0

	read "music_end.asm"
