; Music of Killer Ring (1987)(Ariolasoft)(We Music)()
; Ripped by Megachur the 23/03/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "KILLERIN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #34e1

	read "music_header.asm"

.l34e1
	di
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	ei
	ret
.l3501
	db #00
.l3502
	jp l3547		; play music
	ld l,(ix+#00)
	ld h,(ix+#01)
;
.real_init_music
.l350b			; init music hl=&6770
;
	push hl
	ld hl,l3b5b
	ld de,l3b5c
	ld bc,#007d
	ld (hl),#00
	ldir
	pop hl
	ld (l3aff),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld a,l
	ld (l3b72),a
	ld a,h
	ld (l3b73),a
	push hl
	add hl,de
	ld a,l
	ld (l3b9c),a
	ld a,h
	ld (l3b9d),a
	pop hl
	add hl,bc
	ld a,l
	ld (l3bc6),a
	ld a,h
	ld (l3bc7),a
	ld a,#01
	ld (l3501),a
	ret
;
.play_music
.l3547
;
	ld a,(l3501)
	or a
	ret z
	xor a
	ld (l3b02),a
	ld ix,l3b5b
	call l356c
	ld a,#01
	ld (l3b02),a
	ld ix,l3b85
	call l356c
	ld a,#02
	ld (l3b02),a
	ld ix,l3baf
.l356c
	ld a,(ix+#00)
	or a
	jr z,l35e4
	dec (ix+#00)
	ld a,(ix+#08)
	or a
	jr z,l3581
	dec a
	ld (ix+#08),a
	jr l3596
.l3581
	ld a,(ix+#0a)
	or a
	jr z,l358d
	dec a
	ld (ix+#0a),a
	jr l3596
.l358d
	ld a,(ix+#09)
	ld (ix+#0a),a
	inc (ix+#0b)
.l3596
	ld a,(ix+#01)
	and #03
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l3b03
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call l0dca
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(ix+#11)
	add h
	ld h,a
	ld (ix+#0d),h
	ld a,(ix+#01)
	srl a
	srl a
	srl a
	and #07
	ld b,a
	call nz,l384b
	ld a,(ix+#01)
	rlca
	rlca
	and #03
	ld b,a
	call nz,l37ea
	call l380e
	ld a,(ix+#02)
	and #03
	call nz,l3830
	call l36b4
	call l3643
	ret
.l35e4
	ld a,(ix+#16)
	ld (ix+#24),a
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,(hl)
	or a
	jp z,l389f
	bit 7,a
	jp nz,l38b7
	cp #1a
	jp nc,l3612
	push hl
	pop iy
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l3b09
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call l0dca
.l3612
	ld l,(ix+#17)
	ld h,(ix+#18)
	inc hl
	inc hl
	ld (ix+#17),l
	ld (ix+#18),h
	ld a,(l3b02)
	or a
	jp nz,l356c
	ld de,(l3aff)
	push hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	inc hl
	inc hl
	add hl,de
	ex de,hl
	pop hl
	or a
	sbc hl,de
	jp c,l356c
	xor a		; end music !
	ld (l3501),a
	jp l2ee0
.l3643
	ld a,(ix+#28)
	bit 7,a
	ld c,#00
	jr z,l364e
	ld c,#ff
.l364e
	add l
	ld l,a
	ld a,h
	adc c
	ld h,a
	ld a,(l3b02)
	add a
	ld e,a
	ld c,l
	call l34e1
	ld a,e
	inc a
	ld c,h
	call l34e1
	ld a,(ix+#06)
	ld c,a
	ld a,(l3b02)
	add #08
	call l34e1
	bit 2,(ix+#02)
	jr z,l367c
	ld c,(ix+#20)
	ld a,#06
	call l34e1
.l367c
	bit 6,(ix+#02)
	jr z,l36a8
	ld c,(ix+#21)
	ld a,#0b
	call l34e1
	ld c,(ix+#22)
	ld a,#0c
	call l34e1
	ld a,(ix+#02)
	and #03
	jr z,l36a8
	ld a,(ix+#24)
	and #80
	jr nz,l36a8
	ld c,(ix+#23)
	ld a,#0d
	call l34e1
.l36a8
	ld a,(l3b01)
	or #80
	ld c,a
	ld a,#07
	call l34e1
	ret
.l36b4
	call l36ed
	ld a,(ix+#24)
	and #80
	ret nz
	ld a,(ix+#0c)
	or (ix+#0d)
	call z,l375a
	bit 2,(ix+#02)
	call nz,l370b
	bit 3,(ix+#02)
	call nz,l3774
	bit 4,(ix+#02)
	call nz,l375f
	bit 5,(ix+#02)
	jr z,l36e5
	ld (ix+#06),#10
.l36e5
	bit 6,(ix+#02)
	call nz,l372b
	ret
.l36ed
	ld a,(l3b02)
	ld d,#08
	ld e,#01
.l36f4
	or a
	jr z,l36fe
	dec a
	rlc d
	rlc e
	jr l36f4
.l36fe
	ld a,e
	xor #ff
	ld e,a
	ld a,(l3b01)
	and e
	or d
	ld (l3b01),a
	ret
.l370b
	ld a,(ix+#0c)
	or (ix+#0d)
	ret z
	ld a,(l3b02)
	ld d,#08
.l3717
	or a
	jr z,l371f
	dec a
	rlc d
	jr l3717
.l371f
	ld a,d
	xor #ff
	ld d,a
	ld a,(l3b01)
	and d
	ld (l3b01),a
	ret
.l372b
	ld (ix+#21),l
	ld (ix+#22),h
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	ret
.l375a
	xor a
	ld (ix+#06),a
	ret
.l375f
	ld a,(l3b02)
	ld d,#01
.l3764
	or a
	jr z,l376c
	dec a
	rlc d
	jr l3764
.l376c
	ld a,(l3b01)
	or d
	ld (l3b01),a
	ret
.l3774
	push hl
	ld b,#06
.l3777
	srl h
	rr l
	djnz l3777
	ld a,l
	pop hl
	ld (ix+#20),a
	ret
.l3783
	dec (ix+#27)
	ret nz
	ld a,(ix+#25)
	ld (ix+#27),a
	ld a,(ix+#04)
	srl a
	srl a
	srl a
	srl a
	add (ix+#06)
	cp (ix+#03)
	jr c,l37aa
	inc (ix+#01)
	ld a,(ix+#03)
	ld (ix+#27),#01
.l37aa
	ld (ix+#06),a
	ret
.l37ae
	dec (ix+#27)
	ret nz
	ld a,(ix+#26)
	ld (ix+#27),a
	ld a,(ix+#04)
	and #0f
	ld b,a
	ld c,(ix+#05)
	srl c
	srl c
	srl c
	srl c
	ld a,(ix+#03)
	cp c
	jr nc,l37d0
	ld c,a
.l37d0
	ld a,(ix+#06)
	sub b
	jr c,l37d9
	cp c
	jr nc,l37dd
.l37d9
	inc (ix+#01)
	ld a,c
.l37dd
	ld (ix+#06),a
.l37e0
	ret
.l37e1
	ld a,(ix+#01)
	xor #04
	ld (ix+#01),a
	ret
.l37ea
	ld a,(ix+#0a)
	or a
	call z,l37e1
	ld a,b
	cp #02
	jr nz,l3801
	ld a,(ix+#01)
	and #04
	ret z
	srl h
	rr l
	ret
.l3801
	ld a,(ix+#01)
	and #04
	ret z
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	ret
.l380e
	ld a,(ix+#08)
	or a
	ret nz
	ld a,(ix+#0a)
	or a
	ret nz
	ld a,(ix+#0b)
	bit 0,a
	ret z
	and #03
	cp #02
	jr c,l382a
	ld a,(ix+#19)
	add l
	ld l,a
	ret
.l382a
	ld a,l
	sub (ix+#19)
	ld l,a
	ret
.l3830
	cp #01
	jr z,l3835
	ret
.l3835
	ld a,(ix+#24)
	and #7f
	jr nz,l3847
	ld a,(ix+#24)
	xor #80
	or (ix+#16)
	ld (ix+#24),a
.l3847
	dec (ix+#24)
	ret
.l384b
	ld a,(ix+#08)
	or a
	ret nz
	ld a,b
	cp #01
	jr z,l3870
	ld e,(ix+#10)
	ld d,#00
	cp #03
	jr nz,l3868
	ld a,e
	cpl
	add #01
	ld e,a
	ld a,d
	cpl
	adc #00
	ld d,a
.l3868
	add hl,de
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.l3870
	push hl
	ld c,(ix+#10)
	ld b,#00
	ld e,(ix+#0e)
	ld d,(ix+#0f)
	or a
	sbc hl,de
	pop hl
	ret z
	jr c,l388f
	or a
	sbc hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr nc,l3898
	jr l3897
.l388f
	add hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr c,l3898
.l3897
	ex de,hl
.l3898
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.l389f
	ld (ix+#0c),#00
	ld (ix+#0d),#00
.l38a7
	inc hl
	ld a,(hl)
	cp #ff
	jp z,l3926
	ld (ix+#00),a
	call l3935
	jp l3612
.l38b7
	push hl
	res 7,a
	call l38ee
	add (ix+#15)
	ld b,#00
.l38c2
	cp #0c
	jr c,l38cb
	sub #0c
	inc b
	jr l38c2
.l38cb
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l33ad
	add hl,de
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld a,b
	or a
	jr z,l38a7
.l38e1
	srl (ix+#0d)
	rr (ix+#0c)
	djnz l38e1
	jp l38a7
.l38ee
	push af
	ld a,(ix+#29)
	or a
	jr z,l3924
	pop af
	push af
	add (ix+#29)
	ld b,#00
.l38fc
	cp #0c
	jr c,l3905
	sub #0c
	inc b
	jr l38fc
.l3905
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l33ad
	add hl,de
	ld a,(hl)
	ld (ix+#0e),a
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	ld a,b
	or a
	jr z,l3924
.l391a
	srl (ix+#0f)
	rr (ix+#0e)
	djnz l391a
.l3924
	pop af
	ret
.l3926
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	jp l3612
.l3935
	ld (ix+#06),#00
	ld a,(ix+#07)
	ld (ix+#08),a
	ld a,(ix+#01)
	and #fc
	ld (ix+#01),a
	ld (ix+#27),#01
	ret
.l394c
	ld a,(iy+#01)
	bit 7,a
	jr z,l3959
	and #0f
	ld (ix+#03),a
	ret
.l3959
	push ix
	and #0f
	ld ix,l3b5b
	ld (ix+#03),a
	ld ix,l3b85
	ld (ix+#03),a
	ld ix,l3baf
	ld (ix+#03),a
	pop ix
	ret
.l3975
	push hl
	push de
	push bc
	ld a,(iy+#01)
	srl a
	srl a
	srl a
	srl a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l3b3b
	add hl,de
	ld c,(hl)
	sla c
	sla c
	sla c
	sla c
	inc hl
	ld a,(hl)
	ld (ix+#25),a
	ld a,(iy+#01)
	and #0f
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l3b3b
	add hl,de
	ld a,(hl)
	and #0f
	or c
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	ld (ix+#27),#01
	pop bc
	pop de
	pop hl
	ret
.l39ba
	ld a,(iy+#01)
	res 6,(ix+#02)
	bit 7,a
	jr z,l39cd
	set 6,(ix+#02)
	set 5,(ix+#02)
.l39cd
	res 7,a
	or a
	jr z,l39de
	set 2,(ix+#02)
	cp #20
	jr nc,l39e7
	ld (ix+#20),a
	ret
.l39de
	ld a,(ix+#02)
	and #03
	ld (ix+#02),a
	ret
.l39e7
	set 3,(ix+#02)
	cp #21
	ret c
	set 4,(ix+#02)
	bit 6,a
	ret z
	res 6,a
	res 4,a
	ld (ix+#20),a
	ret
.l39fd
	ret
.l39fe
	ld a,(iy+#01)
	or a
	jr z,l3a12
	ld (ix+#16),a
	ld a,(ix+#02)
	and #fc
	or #01
	ld (ix+#02),a
	ret
.l3a12
	ld a,(ix+#02)
	and #fc
	ld (ix+#02),a
	res 7,(ix+#24)
	ld (ix+#16),#00
	ret
.l3a23
	ld a,(iy+#01)
	ld (ix+#09),a
	ld (ix+#0a),a
	ret
.l3a2d
	ret
.l3a2e
	ld a,(iy+#01)
	and #03
	rrca
	rrca
	ld b,a
	ld a,(ix+#01)
	and #3f
	or b
	ld (ix+#01),a
	ret
.l3a40
	ld a,(iy+#01)
	ld (ix+#07),a
	ret
.l3a47
	ld a,(iy+#01)
	ld (ix+#05),a
	ret
.l3a4e
	ld a,(iy+#01)
	xor #ff
	srl a
	srl a
	srl a
	srl a
	srl a
	srl a
	ld (ix+#19),a
	ret
.l3a63
	ld a,(iy+#01)
	ld (ix+#11),a
	ret
.l3a6a
	ld a,(iy+#01)
	ld (ix+#10),a
	ret
.l3a71
	ret
.l3a72
	ld a,(iy+#01)
	and #07
	ld b,a
	sla b
	sla b
	sla b
	ld a,(ix+#01)
	and #c7
	or b
	ld (ix+#01),a
	ret
.l3a88
	ld a,(ix+#1c)
	or a
	jr nz,l3a91
	ld a,(iy+#01)
.l3a91
	dec a
	ld (ix+#1c),a
	ret z
	ld a,(ix+#1a)
	ld (ix+#17),a
	ld a,(ix+#1b)
	ld (ix+#18),a
	ret
.l3aa3
	ld a,(ix+#17)
	ld (ix+#1a),a
	ld a,(ix+#18)
	ld (ix+#1b),a
	ret
.l3ab0
	ld a,(ix+#1f)
	or a
	jr nz,l3ab9
	ld a,(iy+#01)
.l3ab9
	dec a
	ld (ix+#1f),a
	ret z
	ld a,(ix+#1d)
	ld (ix+#17),a
	ld a,(ix+#1e)
	ld (ix+#18),a
	ret
.l3acb
	ld a,(ix+#17)
	ld (ix+#1d),a
	ld a,(ix+#18)
	ld (ix+#1e),a
	ret
.l3ad8
	ld a,(iy+#01)
	ld (ix+#15),a
	ret
.l3adf
	ld a,(iy+#01)
	ld (ix+#23),a
	ret
.l3ae6
	ld a,(iy+#01)
	ld (ix+#28),a
	ret
.l3aed
	ret
.l3aee
	ld a,(iy+#01)
	add (ix+#15)
	ld (ix+#15),a
	ret
.l3af8
	ld a,(iy+#01)
	ld (ix+#29),a
	ret
.l3b02 equ $ + 3
.l3b01 equ $ + 2
.l3aff
	db #00,#00,#00,#00
.l3b09 equ $ + 6
.l3b03
	dw l3783,l37ae,l37e0,l394c
	dw l3975,l39ba,l39fd,l39fe
	dw l3a23,l3a2d,l3a2e,l3a40
	dw l3a47,l3a4e,l3a63,l3a6a
	dw l3a71,l3a72,l3a88,l3aa3
	dw l3ab0,l3acb,l3ad8,l3adf
	dw l3ae6,l3aed,l3aee,l3af8
.l3b3b
	db #0f,#01,#0d,#01,#0b,#01,#09,#01
	db #07,#01,#05,#01,#03,#01,#02,#01
	db #01,#01,#01,#0a,#01,#1e,#01,#46
	db #01,#6e,#01,#b4,#01,#dc,#01,#ff
.l3b5c equ $ + 1
.l3b5b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3b72 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3b73
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3b85 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3b9d equ $ + 2
.l3b9c equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l3baf
	db #00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l3bc6
	db #00
.l3bc7
	db #00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
; added by Megachur
;org #33ad
.l33ad
	dw #0edd,#0e07,#0d3e,#0c80
	dw #0bcc,#0b23,#0a83,#09ec
	dw #095d,#08d6,#0857,#07e0
;
.l0dca
	jp (hl)
;
.stop_music
.l2ee0
;
;org l2ee0
;jp #2f38
;org #2f38
;
	ld hl,#30e6
	ld de,#30e7
	ld bc,#00a7
	ld (hl),#00
	ldir
	ld a,#0b
	ld c,#00
	call l34e1
	ld a,#0c
	ld c,#00
	call l34e1
	ld a,#0d
	ld c,#00
	call l34e1
	ld a,#07
	ld c,#3f
	jp l34e1
;
.l6770
	db #30,#01,#9e,#01,#01,#0e,#02,#1f
	db #0a,#2c,#14,#06,#11,#01,#98,#28
	db #9c,#0a,#9d,#0a,#9e,#0a,#9f,#1e
	db #9f,#1e,#9e,#0a,#9d,#0a,#9c,#0a
	db #10,#0d,#14,#03,#11,#01,#98,#28
	db #9c,#0a,#9d,#0a,#9e,#0a,#9f,#1e
	db #9f,#1e,#9e,#0a,#9d,#0a,#9c,#0a
	db #10,#05,#14,#00,#13,#01,#11,#01
	db #96,#14,#a2,#14,#9a,#0a,#9f,#0a
	db #9c,#0a,#9d,#1e,#9d,#1e,#9c,#0a
	db #9b,#0a,#9a,#0a,#14,#00,#10,#02
	db #14,#fe,#12,#03,#14,#00,#11,#01
	db #9a,#14,#a6,#14,#98,#0a,#a4,#14
	db #9f,#14,#9f,#14,#ad,#32,#10,#04
	db #11,#01,#9d,#14,#9d,#14,#9b,#0a
	db #9d,#14,#a0,#14,#9d,#14,#9b,#1e
	db #98,#0a,#9f,#0a,#10,#04,#98,#50
	db #98,#50,#98,#50,#11,#01,#9f,#0a
	db #10,#08,#13,#01,#11,#01,#98,#28
	db #9c,#0a,#9d,#0a,#9e,#0a,#9f,#1e
	db #9f,#1e,#9e,#0a,#9d,#0a,#9c,#0a
	db #14,#00,#98,#28,#9c,#0a,#9d,#0a
	db #9e,#0a,#9f,#1e,#9f,#1e,#9e,#0a
	db #9d,#0a,#9c,#0a,#14,#fe,#10,#03
	db #14,#00,#02,#19,#0a,#2c,#9f,#0a
	db #11,#01,#ab,#0a,#a9,#0a,#ab,#0a
	db #a4,#0a,#a6,#14,#9f,#14,#10,#03
	db #9d,#0a,#11,#01,#a2,#0a,#10,#06
	db #11,#01,#9b,#0a,#a2,#0a,#a7,#14
	db #a0,#0a,#a0,#14,#a2,#14,#a2,#14
	db #a2,#0a,#a0,#0a,#a0,#0a,#96,#14
	db #10,#04,#12,#02,#11,#01,#99,#0a
	db #a0,#0a,#a5,#14,#9e,#0a,#9e,#14
	db #a0,#14,#a0,#14,#9e,#14,#9e,#0a
	db #9d,#0a,#9b,#0a,#10,#02,#13,#01
	db #11,#01,#9e,#28,#a2,#0a,#a3,#0a
	db #a4,#0a,#a5,#1e,#a5,#1e,#a5,#0a
	db #a3,#0a,#a2,#0a,#10,#04,#18,#f4
	db #12,#02,#00,#01,#01,#0e,#02,#08
	db #0a,#0d,#00,#a0,#00,#a0,#13,#01
	db #11,#01,#03,#21,#d4,#05,#d4,#05
	db #d4,#05,#d4,#05,#98,#0a,#b0,#0a
	db #10,#03,#d4,#0a,#d4,#0a,#a4,#0a
	db #a4,#0a,#12,#10,#13,#01,#11,#01
	db #98,#0a,#b0,#0a,#d4,#05,#d4,#05
	db #d4,#05,#d4,#05,#10,#03,#d4,#05
	db #d4,#05,#d4,#05,#d4,#05,#98,#0a
	db #98,#0a,#12,#10,#13,#01,#11,#01
	db #03,#21,#d4,#05,#d4,#05,#d4,#05
	db #d4,#05,#98,#0a,#b0,#0a,#10,#03
	db #d4,#0a,#d4,#0a,#a4,#0a,#a4,#0a
	db #12,#20,#11,#01,#00,#c8,#10,#c8
	db #00,#01,#01,#0e,#02,#18,#0a,#0d
	db #14,#fa,#08,#01,#00,#c8,#00,#c8
	db #00,#f0,#13,#01,#11,#01,#bc,#05
	db #10,#0a,#c1,#0a,#c2,#0a,#c3,#1e
	db #c3,#0a,#c1,#0a,#bf,#0a,#11,#01
	db #c3,#05,#10,#06,#12,#02,#11,#01
	db #bc,#05,#10,#06,#c3,#1e,#11,#01
	db #c1,#05,#10,#06,#be,#1e,#bc,#14
	db #b7,#14,#b4,#28,#b7,#14,#bc,#28
	db #11,#00,#b7,#05,#10,#06,#be,#1e
	db #11,#01,#bc,#05,#10,#08,#c0,#0a
	db #c1,#0a,#c2,#0a,#c3,#1e,#c3,#1e
	db #c2,#0a,#c1,#0a,#c0,#0a,#c8,#a0
	db #c8,#a0,#13,#01,#02,#17,#11,#01
	db #c8,#05,#10,#10,#02,#1c,#c3,#14
	db #c3,#1e,#c2,#0a,#c1,#0a,#c0,#0a
	db #12,#02,#14,#00,#13,#01,#11,#01
	db #bf,#05,#10,#08,#c3,#0a,#c6,#0a
	db #c8,#0a,#cb,#1e,#cb,#0a,#c8,#0a
	db #c6,#0a,#c3,#1e,#14,#f4,#12,#02
	db #14,#00,#11,#01,#cb,#05,#10,#04
	db #c6,#0a,#11,#01,#c8,#05,#10,#04
	db #c4,#0a,#11,#01,#c6,#05,#10,#04
	db #c3,#14,#c3,#14,#c4,#0a,#c6,#0a
	db #c8,#0a,#0d,#02,#0f,#04,#cb,#aa
	db #cb,#a0,#0f,#00,#ca,#0a,#ca,#14
	db #cd,#14,#cf,#14,#d2,#14,#d2,#0a
	db #d0,#0a,#cd,#0a,#cb,#0a,#ca,#0a
	db #c6,#0a,#c3,#0a,#c6,#14,#c6,#14
	db #c3,#0a,#c1,#0a,#be,#0a,#0f,#04
	db #c1,#5a,#13,#01,#0f,#00,#bf,#14
	db #bf,#14,#c1,#0a,#c4,#14,#c6,#1e
	db #c4,#0a,#bf,#0a,#cb,#0a,#c8,#0a
	db #c9,#0a,#c4,#0a,#11,#01,#c6,#05
	db #10,#08,#ca,#0a,#cb,#0a,#cc,#0a
	db #cd,#1e,#cf,#0a,#cd,#0a,#ca,#0a
	db #c6,#0a,#c3,#0a,#c6,#0a,#14,#f4
	db #12,#02,#11,#01,#13,#01,#ce,#05
	db #12,#08,#cc,#0a,#cc,#14,#ca,#14
	db #ca,#14,#cc,#14,#d1,#0a,#cf,#0a
	db #ce,#0a,#10,#03,#13,#01,#d6,#05
	db #12,#04,#d1,#0a,#13,#01,#d3,#05
	db #12,#04,#cf,#0a,#13,#01,#d1,#05
	db #12,#04,#ce,#14,#ce,#14,#cf,#0a
	db #d1,#0a,#ca,#0a,#cc,#0a,#11,#01
	db #c1,#14,#c4,#0a,#c8,#0a,#cb,#0a
	db #c8,#14,#c6,#14,#c4,#14,#c3,#14
	db #c1,#0a,#bf,#0a,#c3,#0a,#10,#02
	db #11,#01,#d9,#05,#10,#20,#11,#01
	db #d9,#05,#10,#04,#d7,#05,#11,#01
	db #d9,#05,#10,#07,#d6,#05,#11,#01
	db #d9,#05,#10,#07,#d5,#05,#d9,#05
	db #d9,#05,#d9,#05,#d4,#05,#d0,#05
	db #cf,#05,#cd,#05,#d2,#05,#cf,#05
	db #cd,#05,#cb,#05,#bc,#0a,#bc,#0a
	db #c0,#0a,#bc,#0a,#c3,#0a,#c0,#14
	db #c0,#14,#c0,#0a,#c3,#0a,#c0,#0a
	db #c6,#0a,#c1,#14,#c3,#14,#c3,#0a
	db #c6,#0a,#c8,#0a,#ca,#0a,#c8,#0a
	db #c6,#0a,#c8,#0a,#c3,#0a,#c3,#0a
	db #c3,#0a,#c3,#0a,#c7,#0a,#c8,#0a
	db #ca,#0a,#c7,#0a,#13,#01,#d4,#14
	db #d4,#14,#d1,#0a,#cf,#0a,#cc,#0a
	db #cf,#14,#cf,#14,#cf,#0a,#d1,#0a
	db #cf,#0a,#cc,#0a,#c8,#0a,#cc,#14
	db #cc,#14,#cd,#0a,#ce,#14,#cf,#5a
	db #11,#01,#ca,#0a,#cd,#0a,#cf,#0a
	db #d2,#14,#d2,#14,#d5,#14,#d2,#0a
	db #d0,#0a,#cd,#0a,#cb,#0a,#ca,#0a
	db #cd,#14,#cc,#14,#c8,#14,#cc,#0a
	db #cd,#0a,#ce,#0a,#cf,#5a,#10,#02
	db #02,#19,#b7,#0a,#b7,#0a,#b5,#0a
	db #b7,#0a,#b4,#0a,#b6,#14,#bb,#14
	db #bb,#0a,#b9,#0a,#bb,#0a,#b7,#0a
	db #b9,#14,#be,#14,#be,#0a,#bc,#0a
	db #be,#0a,#bc,#0a,#be,#14,#c2,#0a
	db #11,#01,#c1,#0a,#10,#04,#11,#01
	db #be,#0a,#10,#04,#11,#01,#cb,#0a
	db #cb,#0a,#cf,#0a,#cb,#0a,#d0,#0a
	db #cd,#14,#d2,#14,#d2,#14,#d2,#0a
	db #d0,#0a,#d0,#0a,#cf,#0a,#cd,#0a
	db #10,#02,#d7,#0a,#d7,#0a,#d4,#0a
	db #d2,#0a,#d0,#0a,#d4,#14,#d6,#14
	db #d6,#0a,#d4,#0a,#d2,#0a,#d4,#0a
	db #d7,#0a,#d6,#0a,#d9,#0a,#db,#0a
	db #db,#0a,#d7,#14,#d0,#0a,#d0,#14
	db #0f,#04,#d2,#5a,#0f,#00,#12,#02
	db #11,#01,#c9,#0a,#c9,#0a,#cd,#0a
	db #c9,#0a,#ce,#0a,#cb,#14,#d0,#14
	db #d0,#14,#d0,#0a,#ce,#0a,#ce,#0a
	db #cd,#0a,#cb,#0a,#10,#02,#11,#01
	db #c9,#0a,#c9,#0a,#cb,#0a,#ce,#0a
	db #d2,#0a,#ce,#0a,#cb,#0a,#cd,#14
	db #cd,#14,#cd,#14,#cb,#0a,#c9,#0a
	db #cb,#0a,#10,#02,#11,#01,#ce,#05
	db #10,#10,#11,#01,#c2,#05,#10,#10
	db #11,#01,#00,#c8,#10,#c8,#00,#01
	db #00,#4e,#9b,#be,#2b,#fa,#b5,#d3
	db #7b,#a4,#2a,#7c,#1c,#9a,#a0,#52
	db #43,#a5,#be,#1a,#52,#53,#a6,#9e
	db #4a,#3f,#7b,#a8,#45,#53,#4d,#4d
	db #9e,#4a,#3f,#7b,#a1,#6d,#57,#e8
	db #6b,#be,#46,#73,#a2,#4d,#ac,#9e
	db #4a,#3f,#73,#aa,#72,#75,#53,#65
	db #53,#4d,#56,#9e,#4a,#3f,#7b,#aa
	db #1e,#32,#cd,#19,#6c,#28,#03,#34
	db #18,#f6,#7e,#21,#26,#00,#36,#53
	db #11,#40,#00,#01,#18,#6c,#6e,#eb
	db #7e,#ab,#77,#23,#0b,#78,#b1,#20
	db #f7,#c3,#aa,#16,#00,#00
;
.init_music		; added by Megachur
;
;org #227d
	ld hl,l6770			; #6770
	jp real_init_music	; #350b	; init ?
;
.music_info
	db "Killer Ring (1987)(Ariolasoft)(We Music)",0
	db "",0

	read "music_end.asm"
