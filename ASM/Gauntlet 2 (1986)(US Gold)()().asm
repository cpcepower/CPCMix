; Music of Gauntlet 2 (1986)(US Gold)()()
; Ripped by Megachur the 06/12/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GAUNTLE2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 0
music_adr				equ #b400

	read "music_header.asm"

	jp lba6e	; init music
	jp lb4e0	; play music
.lb406
	db #0f,#08,#51,#0a,#0a,#02,#11,#00
	db #0c,#0f,#08,#51,#0d,#0a,#02,#11
.lb418 equ $ + 2
	db #00,#0a,#00,#09,#12,#1b,#24,#2d
	db #36,#3f,#00,#09,#12,#1b,#24,#2d
	db #36,#3f,#00,#09,#12,#1b,#24,#2d
	db #36,#3f,#00,#09,#12,#1b,#24,#2d
	db #36,#3f,#00,#09,#12,#1b,#24,#2d
	db #36,#3f,#00,#09,#12,#1b,#24,#2d
	db #36,#3f
.lb44f equ $ + 7
.lb44e equ $ + 6
.lb449 equ $ + 1
.lb448
	db #00,#b8,#0f,#00,#00,#00,#00,#00
.lb451 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb46d equ $ + 5
.lb46c equ $ + 4
.lb46b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb47e equ $ + 6
.lb47b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb49a equ $ + 2
.lb499 equ $ + 1
.lb498
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb4ab equ $ + 3
.lb4a8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb4c7 equ $ + 7
.lb4c6 equ $ + 6
.lb4c5 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb4d7 equ $ + 7
.lb4d5 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb4de equ $ + 6
.lb4db equ $ + 3
.lb4d9 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00
	db #01
	;
.play_music
.lb4e0
	;
	ld hl,lb448
	ld a,(lb451)
	dec a
	jr nz,lb4ed
	ld (lb451),a
	inc (hl)
.lb4ed
	ld a,(lb47e)
	dec a
	jr nz,lb4f7
	ld (lb47e),a
	inc (hl)
.lb4f7
	ld a,(lb4ab)
	dec a
	jr nz,lb501
	ld (lb4ab),a
	inc (hl)
.lb501
	xor a
	ld (lb4de),a
	ld ix,lb44e
	ld (lb6be),a
	ld hl,lbbca
	ld (lb5f9),hl
	ld (lba90),hl
	ld (lbaa3),hl
	ld (lbac1),hl
	ld de,(lb4d5)
	call lb5c7
	ld ix,lb47b
	ld a,#01
	ld (lb4de),a
	ld hl,lbbcd
	ld (lb5f9),hl
	ld (lba90),hl
	ld (lbaa3),hl
	ld (lbac1),hl
	ld a,#08
	ld (lb6be),a
	ld de,(lb4d7)
	call lb5c7
	ld ix,lb4a8
	ld a,#02
	ld (lb4de),a
	ld hl,lbbcf
	ld (lb5f9),hl
	ld (lba90),hl
	ld (lbaa3),hl
	ld (lbac1),hl
	ld a,#10
	ld (lb6be),a
	ld de,(lb4d9)
	call lb5c7
	ld de,#c000
	ld hl,#f680
	ld a,(lb448)
	or a
	jr nz,lb5be
	ld c,#00
	ld a,(lb46b)
	call lbccb
	inc c
	ld a,(lb46c)
	call lbccb
	inc c
	ld a,(lb498)
	call lbccb
	inc c
	ld a,(lb499)
	call lbccb
	inc c
	ld a,(lb4c5)
	call lbccb
	inc c
	ld a,(lb4c6)
	call lbccb
	inc c
	inc c
	ld a,(lb449)
	call lbccb
	inc c
	ld a,(lb46d)
	call lbccb
	inc c
	ld a,(lb49a)
	call lbccb
	inc c
	ld a,(lb4c7)
	call lbccb
.lb5be
	xor a
	ld (lb448),a
	ld c,#0e
	jp lbccb
.lb5c7
	ld a,(ix+#03)
	or a
	jp nz,lb838
	ld a,(ix+#11)
	cp #ff
	jr z,lb5d9
	ld (ix+#11),#00
.lb5d9
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,lb650
	ld a,(ix+#04)
	or a
	jr z,lb5f3
	dec (ix+#04)
	ld (ix+#02),#00
	jr lb5d9
.lb5f3
	ld l,(ix+#00)
	ld h,#00
.lb5f9 equ $ + 1
	ld bc,lbbca
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	cp #ff
	jp z,lba6f
	bit 7,a
	jp z,lb62d
	ld l,a
	and #1f
	ld (lb4db),a
	ld a,l
	and #60
	srl a
	srl a
	srl a
	ld (lb61d),a
.lb61d equ $ + 1
.lb61c
	jr lb61c
	jp lba9d
	nop
	jp lbad4
	nop
	jp lba8a
	nop
	jp lbab0
.lb62d
	ld c,a
	ld a,(lb4de)
	add a
	ld e,a
	ld d,#00
	ld b,d
	ld hl,lbbd1
	add hl,bc
	ld a,(hl)
	ld hl,lbbd5
	add hl,bc
	ld b,(hl)
	ld hl,lb4d5
	add hl,de
	ld (hl),a
	inc hl
	ld (hl),b
	ld e,a
	ld d,b
	ld (ix+#02),#00
	jp lb5d9
.lb650
	bit 7,a
	jp z,lb7ac
	cp #a0
	jr nz,lb672
	inc (ix+#02)
	call lbade
	ld (ix+#16),a
	ld (ix+#03),a
	inc (ix+#02)
	xor a
	ld (ix+#1d),a
	ld (ix+#1e),a
	jp lb841
.lb672
	cp #90
	jr c,lb6bb
	cp #c0
	jr c,lb6a3
	ld (ix+#15),a
	and #1f
	ld (ix+#14),a
	inc (ix+#02)
	call lbade
	ld (ix+#12),a
	inc (ix+#02)
	call lbade
	ld (ix+#13),a
	inc (ix+#02)
	call lbade
	ld (ix+#11),a
	inc (ix+#02)
	jp lb5d9
.lb6a3
	cp #bf
	jr nz,lb6ad
	ld (ix+#11),#00
	jr lb6b5
.lb6ad
	and #0f
	add a
	add a
	add a
	ld (ix+#10),a
.lb6b5
	inc (ix+#02)
	jp lb5d9
.lb6bb
	and #0f
.lb6be equ $ + 1
	add #00
	ld l,a
	ld h,#00
	ld bc,lb418
	add hl,bc
	ld l,(hl)
	ld h,#00
	ld bc,lb406
	add hl,bc
	push hl
	pop iy
	ld a,(iy+#08)
	ld (ix+#2b),a
	ld hl,lb449
	ld a,(lb4de)
	or a
	jr nz,lb6ef
	res 3,(hl)
	set 0,(hl)
	bit 7,(iy+#02)
	jr nz,lb710
	set 3,(hl)
	res 0,(hl)
	jr lb710
.lb6ef
	dec a
	jr nz,lb702
	set 1,(hl)
	res 4,(hl)
	bit 7,(iy+#02)
	jr nz,lb710
	res 1,(hl)
	set 4,(hl)
	jr lb710
.lb702
	set 2,(hl)
	res 5,(hl)
	bit 7,(iy+#02)
	jr nz,lb710
	res 2,(hl)
	set 5,(hl)
.lb710
	ld (ix+#24),#0f
	ld (ix+#25),#01
	ld a,(iy+#03)
	push af
	and #f0
	jr z,lb73e
	rrca
	rrca
	rrca
	rrca
	ld c,a
	ld b,#00
	ld hl,lbcab
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,lb735
	ld (ix+#24),a
	jr lb73e
.lb735
	and #7f
	ld (ix+#25),a
	ld (ix+#24),#01
.lb73e
	ld a,(iy+#04)
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld (ix+#20),a
	ld (ix+#21),#0f
	ld (ix+#22),#01
	pop af
	and #0f
	jr z,lb771
	ld c,a
	ld b,#00
	ld hl,lbcbb
	add hl,bc
	ld a,(hl)
	bit 7,(hl)
	jr nz,lb768
	ld (ix+#21),a
	jr lb771
.lb768
	and #7f
	ld (ix+#22),a
	ld (ix+#21),#01
.lb771
	ld (ix+#27),#0f
	ld (ix+#28),#01
	ld a,(iy+#04)
	and #0f
	jr z,lb79a
	ld c,a
	ld b,#00
	ld hl,lbcbb
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,lb791
	ld (ix+#27),a
	jr lb771
.lb791
	and #7f
	ld (ix+#28),a
	ld (ix+#27),#01
.lb79a
	ld a,(iy+#05)
	ld (ix+#06),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	inc (ix+#02)
	jp lb5d9
.lb7ac
	add #12
	add (ix+#01)
	ld c,a
	ld b,#00
	ld (ix+#1c),a
	ld hl,lbae7
	add hl,bc
	ld a,(hl)
	ld hl,lbb3b
	add hl,bc
	ld h,(hl)
	ld l,a
	ld c,(ix+#09)
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
	set 0,(ix+#2a)
	xor a
	ld (ix+#26),a
	ld (ix+#23),a
	ld (ix+#29),a
	ld (ix+#1f),a
	res 7,(ix+#25)
	res 7,(ix+#22)
	res 7,(ix+#28)
	ld l,(ix+#02)
	ld h,#00
	inc l
	add hl,de
	ld a,(hl)
	inc (ix+#02)
	inc (ix+#02)
	ex af,af'
	ld a,(ix+#0b)
	or a
	jr z,lb80d
	ld l,a
	ld h,#00
	ld bc,lbb97
	add hl,bc
	ld a,(hl)
	ld (ix+#0a),a
	ld (ix+#0c),#01
.lb80d
	ld a,(ix+#10)
	or a
	jr z,lb82b
	ld l,a
	ld h,#00
	ld bc,lbbac
	add hl,bc
	ld a,(hl)
	and #78
	srl a
	srl a
	srl a
	inc a
	ld (ix+#18),a
	ld (ix+#17),#01
.lb82b
	ld a,(ix+#15)
	and #1f
	ld (ix+#14),a
	ex af,af'
	ld (ix+#03),a
	ret
.lb838
	cp (ix+#06)
	jr nz,lb841
	res 0,(ix+#2a)
.lb841
	ld a,(ix+#16)
	or a
	jr z,lb850
	dec (ix+#16)
	ret nz
	ld (ix+#03),#00
	ret
.lb850
	dec (ix+#03)
	ld a,(lb448)
	or a
	ret nz
	bit 0,(ix+#2a)
	jr z,lb8c2
	bit 7,(ix+#25)
	jr nz,lb88f
	inc (ix+#26)
	ld a,(ix+#26)
	cp (ix+#25)
	jr nz,lb8ec
	ld (ix+#26),#00
	ld a,(ix+#24)
	add (ix+#1f)
	cp (ix+#2b)
	jr c,lb88a
	ld a,(ix+#2b)
	ld (ix+#1f),a
	set 7,(ix+#25)
	jr lb8ec
.lb88a
	ld (ix+#1f),a
	jr lb8ec
.lb88f
	bit 7,(ix+#22)
	jr nz,lb8ec
	inc (ix+#23)
	ld a,(ix+#23)
	cp (ix+#22)
	jr nz,lb8ec
	ld (ix+#23),#00
	ld a,(ix+#1f)
	sub (ix+#21)
	jr nc,lb8b8
.lb8ac
	ld a,(ix+#20)
	ld (ix+#1f),a
	set 7,(ix+#22)
	jr lb8ec
.lb8b8
	cp (ix+#20)
	jr c,lb8ac
	ld (ix+#1f),a
	jr lb8ec
.lb8c2
	bit 7,(ix+#28)
	jr nz,lb8ec
	inc (ix+#29)
	ld a,(ix+#29)
	cp (ix+#28)
	jr nz,lb8ec
	ld (ix+#29),#00
	ld a,(ix+#1f)
	sub (ix+#27)
	jr nc,lb8e9
	ld (ix+#1f),#00
	set 7,(ix+#28)
	jr lb8ec
.lb8e9
	ld (ix+#1f),a
.lb8ec
	ld a,(ix+#0b)
	or a
	jp z,lb977
	ld a,(ix+#0a)
	or a
	jr z,lb909
	bit 7,a
	jr z,lb903
	and #7f
	jr z,lb977
	jr lb909
.lb903
	dec (ix+#0a)
	jp lb977
.lb909
	ld a,(ix+#0c)
	and #7f
	add (ix+#0b)
	ld l,a
	ld h,#00
	ld bc,lbb97
	add hl,bc
	ld a,(hl)
	ld (lb4db),a
	bit 7,a
	jr z,lb93c
	neg
	ld (lb4db),a
	bit 7,(ix+#0c)
	jr nz,lb948
.lb92b
	ld hl,lb4db
	ld a,(ix+#1d)
	sub (hl)
	ld (ix+#1d),a
	jr nc,lb956
	dec (ix+#1e)
	jr lb956
.lb93c
	ld a,(lb4db)
	ld (lb4db),a
	bit 7,(ix+#0c)
	jr nz,lb92b
.lb948
	ld a,(lb4db)
	add (ix+#1d)
	ld (ix+#1d),a
	jr nc,lb956
	inc (ix+#1e)
.lb956
	inc (ix+#0c)
	ld a,(ix+#0c)
	and #7f
	cp #08
	jr nz,lb977
	ld a,(ix+#0c)
	xor #89
	ld (ix+#0c),a
	cp #01
	jr nz,lb977
	ld a,(ix+#0a)
	or a
	jr z,lb977
	dec (ix+#0a)
.lb977
	ld a,(ix+#10)
	or a
	jp z,lba12
	dec (ix+#18)
	jp nz,lba12
	add (ix+#17)
	ld l,a
	ld h,#00
	ld bc,lbbac
	add hl,bc
	ld a,(ix+#17)
	bit 7,a
	jr nz,lb9f1
	or a
	jr nz,lb9a4
	ld a,(hl)
	and #38
	srl a
	srl a
	srl a
	or a
	jr nz,lb9a5
.lb9a4
	ld a,(hl)
.lb9a5
	ld c,a
	and #07
	ld (ix+#18),a
	ld a,c
	and #f8
	srl a
	srl a
	srl a
	add (ix+#1c)
	ld c,a
	ld b,#00
	ld hl,lbae7
	add hl,bc
	ld a,(hl)
	ld hl,lbb3b
	add hl,bc
	ld h,(hl)
	ld l,a
	ld c,(ix+#09)
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
	inc (ix+#17)
	ld l,(ix+#10)
	ld h,#00
	ld bc,lbbac
	add hl,bc
	ld a,(hl)
	and #07
	inc a
	cp (ix+#17)
	jr nz,lba12
	bit 7,(hl)
	ld a,#ff
	jr z,lb9eb
	xor a
.lb9eb
	ld (ix+#17),a
	jp lba12
.lb9f1
	cp #ff
	jr nz,lba12
	dec (ix+#17)
	ld c,(ix+#1c)
	ld b,#00
	ld hl,lbae7
	add hl,bc
	ld a,(hl)
	ld hl,lbb3b
	add hl,bc
	ld h,(hl)
	ld l,a
	ld c,(ix+#09)
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.lba12
	ld a,(ix+#14)
	or a
	jr z,lba1d
	dec (ix+#14)
	jr lba62
.lba1d
	ld a,(ix+#11)
	or a
	jr z,lba62
	cp #ff
	jr z,lba2a
	dec (ix+#11)
.lba2a
	ld a,(ix+#15)
	and #20
	jr z,lba4a
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
	jr lba62
.lba4a
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	sbc hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.lba62
	ret
	xor a
	ld (lb46d),a
	ld (lb49a),a
	ld (lb4c7),a
	ret
	;
.init_music
.lba6e
	;
	push af
.lba6f
	ld hl,lbae6
	ld (lb4d5),hl
	ld (lb4d7),hl
	ld (lb4d9),hl
	ld hl,lb44e
	ld de,lb44f
	ld bc,#0086
	ld (hl),#00
	ldir
	pop af
	ret
.lba8a
	ld l,(ix+#00)
	ld h,#00
.lba90 equ $ + 1
	ld bc,lbbca
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#09),a
	jp lb5f3
.lba9d
	ld l,(ix+#00)
	ld h,#00
.lbaa3 equ $ + 1
	ld bc,lbbca
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#01),a
	jp lb5f3
.lbab0
	ld a,(lb6be)
	ld c,a
	ld a,(lb4db)
	add c
	ld (lbac9),a
	ld l,(ix+#00)
	ld h,#00
.lbac1 equ $ + 1
	ld bc,lbbca
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
.lbac9 equ $ + 1
	ld l,#00
	ld h,#00
	ld bc,lb418
	add hl,bc
	ld (hl),a
	jp lb5f3
.lbad4
	ld a,(lb4db)
	dec a
	ld (ix+#04),a
	jp lb5f3
.lbade
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	ret
.lbae7 equ $ + 1
.lbae6
	db #ff,#ee,#18,#4d,#8e,#da,#2f,#8f
	db #f7,#68,#e1,#61,#e9,#77,#0c,#a7
	db #47,#ed,#98,#47,#fc,#d4,#70,#31
	db #f4,#dc,#86,#53,#24,#f6,#cc,#a4
	db #7e,#5a,#38,#18,#fa,#de,#c3,#aa
	db #92,#7b,#66,#52,#3f,#2d,#1c,#0c
	db #fd,#ef,#e1,#d5,#c9,#be,#b3,#a9
	db #9f,#96,#8e,#86,#7f,#77,#71,#6a
	db #64,#5f,#59,#54,#50,#4b,#47,#43
	db #3f,#3c,#38,#35,#32,#2f,#2d,#2a
.lbb3b equ $ + 5
	db #28,#26,#24,#22,#20,#0e,#0e,#0d
	db #0c,#0b,#0b,#0a,#09,#09,#08,#08
	db #07,#07,#07,#06,#06,#05,#05,#05
	db #04,#04,#04,#04,#03,#03,#03,#03
	db #03,#02,#02,#02,#02,#02,#02,#02
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#15,#06,#07,#28,#07,#07,#09
.lbb97 equ $ + 1
	db #3a,#09,#0f,#0a,#0b,#06,#09,#03
	db #3a,#03,#64,#50,#b0,#9c,#5a,#14
.lbbac equ $ + 6
	db #92,#10,#12,#14,#16,#20,#40,#50
	db #80,#82,#10,#17,#10,#16,#8a,#21
	db #39,#00,#00,#00,#00,#00,#87,#11
	db #32,#62,#a2,#62,#32,#11,#ca,#bb
.lbbcd equ $ + 7
.lbbca equ $ + 4
	db #cd,#bb,#cf,#bb,#00,#03,#ff,#01
.lbbd5 equ $ + 7
.lbbd1 equ $ + 3
.lbbcf equ $ + 1
	db #ff,#02,#ff,#d9,#f9,#19,#39,#bb
	db #bb,#bc,#bc,#81,#23,#0a,#2a,#0a
	db #28,#0a,#2a,#0a,#26,#0a,#2a,#0a
	db #25,#0a,#26,#0a,#23,#0a,#26,#0b
	db #29,#0c,#2c,#0d,#2f,#0e,#32,#0f
	db #35,#28,#ff,#81,#19,#50,#17,#73
	db #80,#17,#30,#17,#10,#17,#40,#15
	db #30,#15,#10,#15,#40,#13,#30,#13
	db #10,#13,#40,#12,#30,#12,#10,#81
	db #17,#d0,#ff,#80,#1e,#50,#1d,#73
	db #80,#1a,#30,#1a,#10,#1c,#40,#19
	db #30,#19,#10,#1a,#40,#17,#30,#17
	db #10,#18,#40,#16,#30,#16,#10,#81
	db #1e,#d0,#ff,#80,#1e,#10,#36,#08
	db #34,#08,#36,#10,#1e,#10,#1f,#10
	db #37,#08,#36,#08,#37,#10,#34,#10
	db #1c,#10,#34,#08,#32,#08,#34,#10
	db #1c,#10,#1e,#10,#36,#08,#34,#08
	db #36,#10,#32,#10,#1a,#10,#32,#08
	db #31,#08,#32,#10,#1a,#10,#1c,#10
	db #34,#08,#32,#08,#34,#10,#31,#10
	db #19,#10,#31,#08,#2f,#08,#31,#10
	db #19,#10,#2f,#08,#3b,#08,#39,#08
	db #37,#08,#36,#08,#37,#08,#36,#08
	db #34,#08,#32,#08,#31,#08,#2f,#08
	db #2e,#08,#2f,#06,#2e,#06,#2f,#06
	db #2e,#06,#2f,#06,#2e,#06,#2f,#06
.lbcab equ $ + 5
	db #2e,#06,#2f,#28,#ff,#0f,#0f,#0f
	db #0d,#08,#06,#05,#04,#03,#01,#82
.lbcbb equ $ + 5
	db #83,#83,#89,#90,#99,#0f,#0d,#07
	db #04,#03,#02,#02,#01,#01,#82,#85
	db #88,#89,#9c,#ae,#cb
.lbccb
	ld b,#f4
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ld b,#f4
	out (c),a
	ld b,h
	out (c),l
	out (c),e
	ret
;
.music_info
	db "Gauntlet 2 (1986)(US Gold)()",0
	db "",0

	read "music_end.asm"
