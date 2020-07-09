; Music of Deflektor (1987)(Vortex Software)(Ben Daglish)()
; Ripped by Megachur the 01/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DEFLEKTO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #463c

	read "music_header.asm"

	jp l4d1a        ; init music
	jp l475d        ; play music
.l4642
.music_end      ; ???
	db #01
.l4643
	db #00,#08,#c0,#06,#0a,#02,#7f,#00
	db #0b,#00,#08,#81,#06,#0a,#02,#7f
	db #00,#0c,#00,#08,#81,#09,#0a,#02
	db #7f,#00,#0f,#0c,#08,#41,#05,#a9
	db #02,#15,#00,#0f,#03,#08,#41,#09
	db #0a,#02,#55,#00,#0c,#03,#08,#41
	db #07,#0a,#02,#55,#00,#0c,#24,#08
	db #41,#0a,#0a,#02,#3f,#08,#0c,#03
	db #08,#41,#09,#0a,#02,#55,#00,#0c
	db #03,#08,#41,#09,#0a,#02,#55,#00
	db #0c
.l4694
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
.l46c4
	db #a1,#4e
.l46c6
	db #00
.l46c7
	db #b8,#0f,#00
.l46cf equ $ + 5
.l46cd equ $ + 3
.l46cc equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46e9 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46eb equ $ + 1
.l46ea
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46f9 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46fc equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4718 equ $ + 6
.l4717 equ $ + 5
.l4716 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4729 equ $ + 7
.l4726 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4745 equ $ + 3
.l4744 equ $ + 2
.l4743 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l4753
	dw #4da8
.l4755
	dw #4da8
.l4757
	dw #4da8
.l4759
	db #10
.l475c equ $ + 2
	db #00,#00,#02
;
.play_music
.l475d
;
	ld hl,l46c6
	ld a,(l46cf)
	dec a
	jr nz,l476a
	ld (l46cf),a
	inc (hl)
.l476a
	ld a,(l46fc)
	dec a
	jr nz,l4774
	ld (l46fc),a
	inc (hl)
.l4774
	ld a,(l4729)
	dec a
	jr nz,l477e
	ld (l4729),a
	inc (hl)
.l477e
	xor a
	ld (l475c),a
	ld ix,l46cc
	ld (l4955),a
	ld hl,(l46c4)
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l4890),hl
	ld (l4d52),hl
	ld (l4d65),hl
	ld (l4d83),hl
	ld de,(l4753)
	call l485e
	ld ix,l46f9
	ld a,#01
	ld (l475c),a
	ld hl,(l46c4)
	inc hl
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l4890),hl
	ld (l4d52),hl
	ld (l4d65),hl
	ld (l4d83),hl
	ld a,#08
	ld (l4955),a
	ld de,(l4755)
	call l485e
	ld ix,l4726
	ld a,#02
	ld (l475c),a
	ld hl,(l46c4)
	ld de,#0004
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l4890),hl
	ld (l4d52),hl
	ld (l4d65),hl
	ld (l4d83),hl
	ld a,#10
	ld (l4955),a
	ld de,(l4757)
	call l485e
	ld de,#c000
	ld hl,#f680
	ld a,(l46c6)
	or a
	jr nz,l4855
.l4805
	ld c,#00
	ld a,(l46e9)
	call l53e9
	inc c
	ld a,(l46ea)
	call l53e9
	inc c
	ld a,(l4716)
	call l53e9
	inc c
	ld a,(l4717)
	call l53e9
	inc c
.l4824 equ $ + 1
	ld a,#00
	cp #01
	jr nc,l483e
	ld a,(l4743)
	call l53e9
	inc c
	ld a,(l4744)
	call l53e9
	ld c,#0a
	ld a,(l4745)
	call l53e9
.l483e
	ld c,#07
	ld a,(l46c7)
	call l53e9
	ld c,#08
	ld a,(l46eb)
	call l53e9
	inc c
	ld a,(l4718)
	call l53e9
.l4855
	xor a
	ld (l46c6),a
	ld c,#0e
	jp l53e9
.l485e
	ld a,(ix+#03)
	or a
	jp nz,l4acf
	ld a,(ix+#11)
	cp #ff
	jr z,l4870
	ld (ix+#11),#00
.l4870
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,l48e7
	ld a,(ix+#04)
	or a
	jr z,l488a
	dec (ix+#04)
	ld (ix+#02),#00
	jr l4870
.l488a
	ld l,(ix+#00)
	ld h,#00
.l4890 equ $ + 1
	ld bc,l4f1b
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	cp #ff
	jp z,l4cfa
	bit 7,a
	jp z,l48c4
	ld l,a
	and #1f
	ld (l4759),a
	ld a,l
	and #60
	srl a
	srl a
	srl a
	ld (l48b4),a
.l48b4 equ $ + 1
	jr l48b9
	jp l4d5f
	nop
.l48b9
	jp l4d96
	nop
	jp l4d4c
	nop
	jp l4d72
.l48c4
	ld c,a
	ld a,(l475c)
	add a
	ld e,a
	ld d,#00
	ld b,d
	ld hl,l4f51
	add hl,bc
	ld a,(hl)
	ld hl,l4f75
	add hl,bc
	ld b,(hl)
	ld hl,l4753
	add hl,de
	ld (hl),a
	inc hl
	ld (hl),b
	ld e,a
	ld d,b
	ld (ix+#02),#00
	jp l4870
.l48e7
	bit 7,a
	jp z,l4a43
	cp #a0
	jr nz,l4909
	inc (ix+#02)
	call l4da0
	ld (ix+#16),a
	ld (ix+#03),a
	inc (ix+#02)
	xor a
	ld (ix+#1d),a
	ld (ix+#1e),a
	jp l4ad8
.l4909
	cp #90
	jr c,l4952
	cp #c0
	jr c,l493a
	ld (ix+#15),a
	and #1f
	ld (ix+#14),a
	inc (ix+#02)
	call l4da0
	ld (ix+#12),a
	inc (ix+#02)
	call l4da0
	ld (ix+#13),a
	inc (ix+#02)
	call l4da0
	ld (ix+#11),a
	inc (ix+#02)
	jp l4870
.l493a
	cp #bf
	jr nz,l4944
	ld (ix+#11),#00
	jr l494c
.l4944
	and #0f
	add a
	add a
	add a
	ld (ix+#10),a
.l494c
	inc (ix+#02)
	jp l4870
.l4952
	and #0f
.l4955 equ $ + 1
	add #10
	ld l,a
	ld h,#00
	ld bc,l4694
	add hl,bc
	ld l,(hl)
	ld h,#00
	ld bc,l4643
	add hl,bc
	push hl
	pop iy
	ld a,(iy+#08)
	ld (ix+#2b),a
	ld hl,l46c7
	ld a,(l475c)
	or a
	jr nz,l4986
	res 3,(hl)
	set 0,(hl)
	bit 7,(iy+#02)
	jr nz,l49a7
	set 3,(hl)
	res 0,(hl)
	jr l49a7
.l4986
	dec a
	jr nz,l4999
	set 1,(hl)
	res 4,(hl)
	bit 7,(iy+#02)
	jr nz,l49a7
	res 1,(hl)
	set 4,(hl)
	jr l49a7
.l4999
	set 2,(hl)
	res 5,(hl)
	bit 7,(iy+#02)
	jr nz,l49a7
	res 2,(hl)
	set 5,(hl)
.l49a7
	ld (ix+#24),#0f
	ld (ix+#25),#01
	ld a,(iy+#03)
	push af
	and #f0
	jr z,l49d5
	rrca
	rrca
	rrca
	rrca
	ld c,a
	ld b,#00
	ld hl,l53c9
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,l49cc
	ld (ix+#24),a
	jr l49d5
.l49cc
	and #7f
	ld (ix+#25),a
	ld (ix+#24),#01
.l49d5
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
	jr z,l4a08
	ld c,a
	ld b,#00
	ld hl,l53d9
	add hl,bc
	ld a,(hl)
	bit 7,(hl)
	jr nz,l49ff
	ld (ix+#21),a
	jr l4a08
.l49ff
	and #7f
	ld (ix+#22),a
	ld (ix+#21),#01
.l4a08
	ld (ix+#27),#0f
	ld (ix+#28),#01
	ld a,(iy+#04)
	and #0f
	jr z,l4a31
	ld c,a
	ld b,#00
	ld hl,l53d9
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,l4a28
	ld (ix+#27),a
	jr l4a31
.l4a28
	and #7f
	ld (ix+#28),a
	ld (ix+#27),#01
.l4a31
	ld a,(iy+#05)
	ld (ix+#06),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	inc (ix+#02)
	jp l4870
.l4a43
	add #14
	add (ix+#01)
	ld c,a
	ld b,#00
	ld (ix+#1c),a
	ld hl,l4da9
	add hl,bc
	ld a,(hl)
	ld hl,l4dfd
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
	jr z,l4aa4
	ld l,a
	ld h,#00
	ld bc,l4e49
	add hl,bc
	ld a,(hl)
	ld (ix+#0a),a
	ld (ix+#0c),#01
.l4aa4
	ld a,(ix+#10)
	or a
	jr z,l4ac2
	ld l,a
	ld h,#00
	ld bc,l4e59
	add hl,bc
	ld a,(hl)
	and #78
	srl a
	srl a
	srl a
	inc a
	ld (ix+#18),a
	ld (ix+#17),#01
.l4ac2
	ld a,(ix+#15)
	and #1f
	ld (ix+#14),a
	ex af,af'
	ld (ix+#03),a
	ret
.l4acf
	cp (ix+#06)
	jr nz,l4ad8
	res 0,(ix+#2a)
.l4ad8
	ld a,(ix+#16)
	or a
	jr z,l4ae7
	dec (ix+#16)
	ret nz
	ld (ix+#03),#00
	ret
.l4ae7
	dec (ix+#03)
	ld a,(l46c6)
	or a
	ret nz
	bit 0,(ix+#2a)
	jr z,l4b59
	bit 7,(ix+#25)
	jr nz,l4b26
	inc (ix+#26)
	ld a,(ix+#26)
	cp (ix+#25)
	jr nz,l4b83
	ld (ix+#26),#00
	ld a,(ix+#24)
	add (ix+#1f)
	cp (ix+#2b)
	jr c,l4b21
	ld a,(ix+#2b)
	ld (ix+#1f),a
	set 7,(ix+#25)
	jr l4b83
.l4b21
	ld (ix+#1f),a
	jr l4b83
.l4b26
	bit 7,(ix+#22)
	jr nz,l4b83
	inc (ix+#23)
	ld a,(ix+#23)
	cp (ix+#22)
	jr nz,l4b83
	ld (ix+#23),#00
	ld a,(ix+#1f)
	sub (ix+#21)
	jr nc,l4b4f
.l4b43
	ld a,(ix+#20)
	ld (ix+#1f),a
	set 7,(ix+#22)
	jr l4b83
.l4b4f
	cp (ix+#20)
	jr c,l4b43
	ld (ix+#1f),a
	jr l4b83
.l4b59
	bit 7,(ix+#28)
	jr nz,l4b83
	inc (ix+#29)
	ld a,(ix+#29)
	cp (ix+#28)
	jr nz,l4b83
	ld (ix+#29),#00
	ld a,(ix+#1f)
	sub (ix+#27)
	jr nc,l4b80
	ld (ix+#1f),#00
	set 7,(ix+#28)
	jr l4b83
.l4b80
	ld (ix+#1f),a
.l4b83
	ld a,(ix+#0b)
	or a
	jp z,l4c0e
	ld a,(ix+#0a)
	or a
	jr z,l4ba0
	bit 7,a
	jr z,l4b9a
	and #7f
	jr z,l4c0e
	jr l4ba0
.l4b9a
	dec (ix+#0a)
	jp l4c0e
.l4ba0
	ld a,(ix+#0c)
	and #7f
	add (ix+#0b)
	ld l,a
	ld h,#00
	ld bc,l4e49
	add hl,bc
	ld a,(hl)
	ld (l4759),a
	bit 7,a
	jr z,l4bd3
	neg
	ld (l4759),a
	bit 7,(ix+#0c)
	jr nz,l4bdf
.l4bc2
	ld hl,l4759
	ld a,(ix+#1d)
	sub (hl)
	ld (ix+#1d),a
	jr nc,l4bed
	dec (ix+#1e)
	jr l4bed
.l4bd3
	ld a,(l4759)
	ld (l4759),a
	bit 7,(ix+#0c)
	jr nz,l4bc2
.l4bdf
	ld a,(l4759)
	add (ix+#1d)
	ld (ix+#1d),a
	jr nc,l4bed
	inc (ix+#1e)
.l4bed
	inc (ix+#0c)
	ld a,(ix+#0c)
	and #7f
	cp #08
	jr nz,l4c0e
	ld a,(ix+#0c)
	xor #89
	ld (ix+#0c),a
	cp #01
	jr nz,l4c0e
	ld a,(ix+#0a)
	or a
	jr z,l4c0e
	dec (ix+#0a)
.l4c0e
	ld a,(ix+#10)
	or a
	jp z,l4ca9
	dec (ix+#18)
	jp nz,l4ca9
	add (ix+#17)
	ld l,a
	ld h,#00
	ld bc,l4e59
	add hl,bc
	ld a,(ix+#17)
	bit 7,a
	jr nz,l4c88
	or a
	jr nz,l4c3b
	ld a,(hl)
	and #38
	srl a
	srl a
	srl a
	or a
	jr nz,l4c3c
.l4c3b
	ld a,(hl)
.l4c3c
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
	ld hl,l4da9
	add hl,bc
	ld a,(hl)
	ld hl,l4dfd
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
	ld bc,l4e59
	add hl,bc
	ld a,(hl)
	and #07
	inc a
	cp (ix+#17)
	jr nz,l4ca9
	bit 7,(hl)
	ld a,#ff
	jr z,l4c82
	xor a
.l4c82
	ld (ix+#17),a
	jp l4ca9
.l4c88
	cp #ff
	jr nz,l4ca9
	dec (ix+#17)
	ld c,(ix+#1c)
	ld b,#00
	ld hl,l4da9
	add hl,bc
	ld a,(hl)
	ld hl,l4dfd
	add hl,bc
	ld h,(hl)
	ld l,a
	ld c,(ix+#09)
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.l4ca9
	ld a,(ix+#14)
	or a
	jr z,l4cb4
	dec (ix+#14)
	jr l4cf9
.l4cb4
	ld a,(ix+#11)
	or a
	jr z,l4cf9
	cp #ff
	jr z,l4cc1
	dec (ix+#11)
.l4cc1
	ld a,(ix+#15)
	and #20
	jr z,l4ce1
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
	jr l4cf9
.l4ce1
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	sbc hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.l4cf9
	ret
;
.stop_music                     ; ???
.l4cfa
;
	xor a
	ld (l46eb),a
	ld (l4718),a
	ld (l4745),a
	ld (l46eb),a
	ld (l4718),a
	ld (l4745),a
	ld (l4642),a
	ld de,#c000
	ld hl,#f680
	pop af
	jp l4805
;
.init_music
.l4d1a
;
	push af
	ld (l4824),a
	add a
	ld l,a
	add a
	add l
	ld l,a
	ld h,#00
	ld de,l4ea1
	add hl,de
	ld (l46c4),hl
	ld hl,l4da8
	ld (l4753),hl
	ld (l4755),hl
	ld (l4757),hl
	ld hl,l46cc
	ld de,l46cd
	ld bc,#0086
	ld (hl),#00
	ldir
	ld a,#01
	ld (l4642),a
	pop af
	ret
.l4d4c
	ld l,(ix+#00)
	ld h,#00
.l4d52 equ $ + 1
	ld bc,l4f1b
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#09),a
	jp l488a
.l4d5f
	ld l,(ix+#00)
	ld h,#00
.l4d65 equ $ + 1
	ld bc,l4f1b
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#01),a
	jp l488a
.l4d72
	ld a,(l4955)
	ld c,a
	ld a,(l4759)
	add c
	ld (l4d8b),a
	ld l,(ix+#00)
	ld h,#00
.l4d83 equ $ + 1
	ld bc,l4f1b
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
.l4d8b equ $ + 1
	ld l,#00
	ld h,#00
	ld bc,l4694
	add hl,bc
	ld (hl),a
	jp l488a
.l4d96
	ld a,(l4759)
	dec a
	ld (ix+#04),a
	jp l488a
.l4da0
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	ret
.l4da8
	db #ff
.l4da9
	db #ee,#17,#4d,#8e,#d9,#2f,#8e,#f7
	db #67,#e0,#61,#e8,#77,#0c,#a7,#47
	db #ed,#98,#47,#fc,#d4,#70,#31,#f4
	db #dc,#86,#53,#24,#f6,#cc,#a4,#7e
	db #5a,#38,#18,#fa,#de,#c3,#aa,#92
	db #7b,#66,#52,#3f,#2d,#1c,#0c,#fd
	db #ef,#e1,#d5,#c9,#be,#b3,#a9,#9f
	db #96,#8e,#86,#7f,#77,#71,#6a,#64
	db #5f,#59,#54,#50,#4b,#47,#43,#3f
	db #3c,#38,#35,#32,#2f,#2d,#2a,#28
	db #26,#24,#22,#20
.l4dfd
	db #0e,#0e,#0d,#0c,#0b,#0b,#0a,#09
	db #09,#08,#08,#07,#07,#07,#06,#06
	db #05,#05,#05,#04,#04,#04,#04,#03
	db #03,#03,#03,#03,#02,#02,#02,#02
	db #02,#02,#02,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l4e49
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #1e,#64,#64,#64,#9c,#9c,#9c,#00
.l4e59
	db #00,#32,#28,#14,#00,#ec,#d8,#ce
	db #89,#b1,#00,#00,#00,#00,#00,#00
	db #8a,#21,#39,#00,#00,#00,#00,#00
	db #8a,#19,#41,#00,#00,#00,#00,#00
	db #8a,#29,#49,#00,#00,#00,#00,#00
	db #8a,#19,#39,#00,#00,#00,#00,#00
	db #8a,#21,#49,#00,#00,#00,#00,#00
	db #8a,#29,#41,#00,#00,#00,#00,#00
	db #89,#61,#00,#00,#00,#00,#00,#00
.l4ea1
	dw l4ea7,l4edb,l4f1b    ; label à positionner
.l4ea7
	db #80,#05,#a8,#1a,#a8,#00,#a4,#01
	db #00,#05,#00,#05,#06,#05,#06,#05
	db #80,#f9,#07,#80,#05,#07,#08,#08
	db #0b,#0b,#a3,#09,#0a,#0a,#13,#17
	db #17,#18,#80,#00,#0a,#0a,#08,#08
	db #0b,#0b,#a3,#09,#a3,#1f,#20,#a3
	db #1f,#20,#23,#ff
.l4edb
	db #80,#f9,#a6,#02
	db #a6,#04,#a3,#0c,#0d,#a4,#0e,#a2
	db #04,#11,#80,#f7,#11,#80,#f9,#11
	db #12,#80,#f5,#12,#80,#f9,#a4,#0e
	db #19,#80,#f8,#19,#80,#f7,#19,#80
	db #f9,#1b,#19,#80,#f8,#19,#80,#f7
	db #19,#80,#f2,#19,#80,#f4,#a4,#19
	db #a2,#04,#a3,#0c,#0d,#a4,#0e,#1e
	db #1e,#b0,#22,#ff
.l4f1b
	db #80,#05,#b0,#1a,#a8,#03,#a3,#0f
	db #10,#a2,#03,#14,#80,#03,#14,#80
	db #05,#14,#15,#80,#08,#15,#80,#05
	db #16,#00,#1c,#80,#03,#1c,#80,#05
	db #1c,#80,#03,#1c,#80,#05,#a4,#1d
	db #80,#00,#a2,#03,#a3,#0f,#10,#21
	db #21,#a4,#00,#ff,#ff,#ff
.l4f51
;	db #99,#a3,#bc,#ea,#47,#87,#a1,#ab
;	db #e3,#fb,#07,#35,#4e,#65,#77,#89
;	db #a1,#d2,#e7,#f9,#35,#4e,#60,#6c
;	db #92,#9c,#aa,#ad,#b9,#da,#ec,#39
;	db #43,#5d,#bb,#bf
	db l4f99,l4fa3,l4fbc,l4fea
	db l5047,l5087,l50a1,l50ab
	db l50e3,l50fb,l5107,l5135
	db l514e,l5165,l5177,l5189
	db l51a1,l51d2,l51e7,l51f9
	db l5235,l524e,l5260,l526c
	db l5292,l529c,l52aa,l52ad
	db l52b9,l52da,l52ec,l5339
	db l5343,l535d,l53bb,l53bf
.l4f75
;	db #4f,#4f,#4f,#4f,#50,#50,#50,#50
;	db #50,#50,#51,#51,#51,#51,#51,#51
;	db #51,#51,#51,#51,#52,#52,#52,#52
;	db #52,#52,#52,#52,#52,#52,#52,#53
;	db #53,#53,#53,#53
	db l4f99/&100,l4fa3/&100,l4fbc/&100,l4fea/&100
	db l5047/&100,l5087/&100,l50a1/&100,l50ab/&100
	db l50e3/&100,l50fb/&100,l5107/&100,l5135/&100
	db l514e/&100,l5165/&100,l5177/&100,l5189/&100
	db l51a1/&100,l51d2/&100,l51e7/&100,l51f9/&100
	db l5235/&100,l524e/&100,l5260/&100,l526c/&100
	db l5292/&100,l529c/&100,l52aa/&100,l52ad/&100
	db l52b9/&100,l52da/&100,l52ec/&100,l5339/&100
	db l5343/&100,l535d/&100,l53bb/&100,l53bf/&100
.l4f99
	db #80,#25,#14,#25,#14,#25,#14,#25
.l4fa3 equ $ + 2
	db #14,#ff,#80,#25,#0a,#81,#2a,#0a
	db #82,#91,#06,#14,#90,#80,#25,#14
	db #25,#14,#25,#14,#25,#14,#25,#14
.l4fbc equ $ + 3
	db #25,#14,#ff,#83,#12,#0a,#12,#0a
	db #15,#0a,#0e,#0a,#a0,#32,#09,#0a
	db #15,#14,#14,#0a,#12,#0a,#10,#14
	db #12,#0a,#12,#0a,#15,#0a,#0e,#0a
	db #a0,#32,#0b,#0a,#17,#0a,#0b,#0a
	db #10,#0a,#1c,#0a,#11,#0a,#1d,#0a
.l4fea equ $ + 1
	db #ff,#95,#84,#2a,#0a,#85,#2a,#0a
	db #2a,#0a,#93,#84,#2a,#0a,#85,#2a
	db #0a,#2a,#0a,#84,#2a,#0a,#85,#2a
	db #0a,#2a,#0a,#94,#84,#28,#0a,#85
	db #28,#0a,#28,#0a,#92,#84,#28,#0a
	db #85,#28,#0a,#28,#0a,#28,#0a,#95
	db #84,#2a,#0a,#85,#2a,#0a,#2a,#0a
	db #93,#84,#2a,#0a,#85,#2a,#0a,#2a
	db #0a,#84,#2a,#0a,#85,#2a,#0a,#2a
	db #0a,#94,#84,#2a,#0a,#85,#2a,#0a
	db #2a,#0a,#93,#84,#2c,#0a,#85,#2c
.l5047 equ $ + 6
	db #0a,#2c,#0a,#2c,#0a,#ff,#83,#12
	db #0a,#12,#0a,#15,#0a,#0e,#0a,#a0
	db #0a,#81,#3d,#0a,#82,#91,#1e,#1e
	db #90,#83,#09,#0a,#15,#14,#14,#0a
	db #12,#0a,#10,#14,#12,#0a,#12,#0a
	db #15,#0a,#0e,#0a,#a0,#0a,#81,#3d
	db #0a,#82,#91,#1e,#1e,#90,#83,#0b
	db #0a,#17,#0a,#0b,#0a,#10,#0a,#1c
.l5087 equ $ + 6
	db #0a,#11,#0a,#1d,#0a,#ff,#a0,#0a
	db #86,#25,#0a,#31,#14,#2f,#0a,#2d
	db #0a,#2f,#0a,#31,#0a,#2f,#0a,#2d
	db #0a,#2a,#05,#28,#05,#2a,#82,#ff
.l50a1
	db #86,#31,#0a,#2f,#0a,#2d,#0a,#2a
.l50ab equ $ + 2
	db #32,#ff,#86,#31,#0a,#2f,#0a,#31
	db #0a,#32,#28,#34,#14,#31,#0a,#2f
	db #0a,#2d,#0a,#2c,#0a,#2a,#0a,#28
	db #0a,#2c,#0a,#2d,#0a,#2c,#0a,#2a
	db #0a,#2a,#3c,#2a,#0a,#2c,#0a,#2d
	db #0a,#2f,#05,#31,#05,#32,#05,#34
	db #05,#36,#05,#38,#05,#39,#05,#3b
.l50e3 equ $ + 2
	db #05,#ff,#86,#2d,#05,#2c,#05,#2a
	db #05,#2c,#0a,#2a,#05,#28,#05,#2a
	db #0f,#81,#2a,#0a,#82,#91,#06,#14
.l50fb equ $ + 2
	db #90,#ff,#80,#25,#0a,#81,#2a,#0a
.l5107 equ $ + 6
	db #82,#91,#06,#14,#90,#ff,#86,#21
	db #14,#20,#05,#1c,#0a,#1e,#37,#1c
	db #0a,#21,#0a,#25,#0a,#23,#0a,#21
	db #0a,#20,#05,#1c,#0f,#21,#14,#20
	db #05,#1c,#0a,#1e,#37,#1b,#0a,#1c
	db #0a,#1e,#0a,#20,#0a,#21,#0a,#23
.l5135 equ $ + 4
	db #05,#20,#0f,#ff,#86,#31,#05,#2f
	db #05,#2d,#05,#2f,#0a,#2d,#05,#2c
	db #05,#2a,#0f,#81,#2a,#0a,#82,#91
.l514e equ $ + 5
	db #06,#14,#90,#ff,#ff,#83,#12,#05
	db #12,#05,#1e,#05,#12,#05,#10,#05
	db #1c,#05,#10,#05,#0e,#05,#80,#25
.l5165 equ $ + 4
	db #14,#25,#14,#ff,#83,#12,#05,#12
	db #05,#1e,#05,#12,#05,#10,#05,#1c
.l5177 equ $ + 6
	db #05,#10,#05,#0b,#05,#ff,#83,#0b
	db #05,#0b,#05,#17,#05,#0b,#05,#17
	db #05,#17,#05,#0b,#05,#17,#05,#ff
.l5189
	db #84,#95,#2a,#0a,#85,#2a,#0a,#93
	db #2c,#05,#84,#2c,#0a,#94,#85,#2d
	db #14,#84,#2d,#0f,#85,#2d,#0a,#ff
.l51a1
	db #84,#95,#2a,#0a,#85,#2a,#0a,#93
	db #2c,#05,#84,#2c,#0a,#92,#85,#2f
	db #14,#84,#2f,#0f,#85,#2f,#14,#84
	db #2f,#0a,#85,#2f,#05,#2f,#0f,#85
	db #2f,#0f,#84,#2f,#0f,#85,#2f,#14
	db #84,#2f,#0a,#85,#2f,#05,#2f,#0f
.l51d2 equ $ + 1
	db #ff,#83,#15,#0a,#15,#0a,#0d,#0a
	db #0e,#0a,#a0,#0a,#81,#2a,#0a,#82
.l51e7 equ $ + 6
	db #91,#06,#14,#90,#ff,#ff,#83,#a0
	db #0a,#10,#0a,#1c,#0a,#10,#0a,#12
	db #0a,#12,#0a,#1e,#0a,#06,#0a,#ff
.l51f9
	db #86,#21,#14,#20,#05,#1c,#0a,#1e
	db #37,#1f,#0a,#1f,#05,#21,#05,#23
	db #0a,#1f,#0a,#1c,#0a,#18,#0a,#21
	db #1e,#20,#05,#1c,#0a,#1e,#2d,#20
	db #0a,#21,#0a,#23,#0a,#22,#14,#23
	db #0a,#25,#14,#26,#0a,#23,#0a,#1f
	db #0a,#21,#14,#1e,#0a,#1c,#0a,#1e
.l5235 equ $ + 4
	db #5a,#a0,#50,#ff,#94,#84,#28,#0a
	db #85,#28,#0a,#28,#0a,#93,#84,#2a
	db #0a,#85,#2a,#0a,#2a,#0a,#84,#2a
.l524e equ $ + 5
	db #0a,#85,#2a,#0a,#ff,#84,#92,#28
	db #0a,#85,#28,#0a,#28,#0a,#84,#2a
.l5260 equ $ + 7
	db #14,#2a,#14,#85,#2a,#0a,#ff,#85
	db #92,#2f,#14,#80,#25,#14,#25,#14
.l526c equ $ + 3
	db #25,#14,#ff,#86,#a0,#14,#20,#14
	db #20,#0a,#21,#0a,#23,#0a,#20,#50
	db #1f,#1e,#1e,#0a,#1c,#0a,#1e,#0a
	db #1c,#14,#1f,#1e,#1e,#0a,#1c,#0a
	db #1e,#0a,#1c,#0a,#19,#0a,#1c,#0a
.l5292 equ $ + 1
	db #ff,#86,#1e,#50,#20,#50,#21,#50
.l529c equ $ + 3
	db #23,#50,#ff,#87,#1c,#14,#1c,#14
	db #82,#91,#25,#14,#90,#87,#1c,#14
.l52ad equ $ + 4
.l52aa equ $ + 1
	db #ff,#a0,#50,#ff,#87,#15,#0a,#15
	db #14,#19,#14,#1a,#14,#1b,#0a,#ff
.l52b9
	db #90,#84,#a0,#0a,#28,#0a,#2f,#0a
	db #36,#0a,#2f,#0a,#28,#0a,#2f,#0a
	db #36,#14,#27,#0a,#2f,#0a,#36,#0a
	db #2f,#0a,#27,#0a,#2f,#0a,#36,#0a
.l52da equ $ + 1
	db #ff,#84,#a0,#0a,#23,#0a,#2a,#0a
	db #2f,#0a,#36,#0a,#2f,#0a,#2a,#0a
.l52ec equ $ + 3
	db #23,#0a,#ff,#83,#12,#0a,#12,#0a
	db #15,#0a,#10,#0a,#a0,#0a,#81,#3d
	db #0a,#82,#91,#1e,#14,#90,#83,#0f
	db #0a,#0f,#0a,#12,#0a,#0e,#0a,#a0
	db #0a,#81,#3d,#0a,#82,#91,#1e,#14
	db #90,#83,#0d,#0a,#0d,#0a,#12,#0a
	db #0b,#0a,#a0,#0a,#81,#3d,#0a,#82
	db #91,#1e,#14,#90,#83,#09,#0a,#09
	db #0a,#15,#0a,#08,#0a,#14,#0a,#81
	db #3d,#0a,#82,#91,#1e,#14,#90,#ff
.l5339
	db #86,#21,#14,#20,#05,#1c,#0a,#1e
.l5343 equ $ + 2
	db #2d,#ff,#86,#21,#05,#20,#05,#21
	db #05,#25,#0a,#23,#05,#21,#05,#20
	db #0a,#1e,#05,#1b,#05,#1d,#0a,#1e
.l535d equ $ + 4
	db #05,#20,#0a,#ff,#95,#84,#2a,#0a
	db #85,#2a,#0a,#2a,#0a,#92,#84,#28
	db #0a,#85,#28,#0a,#28,#0a,#84,#28
	db #0a,#85,#28,#0a,#28,#0a,#93,#84
	db #27,#0a,#85,#27,#0a,#27,#0a,#92
	db #84,#26,#0a,#85,#26,#0a,#26,#0a
	db #26,#0a,#95,#84,#2a,#0a,#85,#2a
	db #0a,#2a,#0a,#94,#84,#2a,#0a,#85
	db #2a,#0a,#2a,#0a,#84,#2a,#0a,#85
	db #2a,#0a,#2a,#0a,#93,#84,#2c,#0a
	db #85,#2c,#0a,#2c,#0a,#94,#84,#2c
	db #0a,#85,#2c,#0a,#2c,#0a,#2c,#0a
.l53bf equ $ + 6
.l53bb equ $ + 2
	db #90,#ff,#83,#12,#14,#ff,#86,#1e
	db #50,#a0,#50,#a0,#50,#a0,#50,#ff

.l53c9
	db #0f,#0f,#0f,#0d,#08,#06,#05,#04
	db #03,#01,#82,#83,#83,#89,#90,#99
.l53d9
	db #0f,#0d,#07,#04,#03,#02,#02,#01
	db #01,#82,#85,#88,#89,#9c,#ae,#cb
.l53e9
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
; #233a
;
; ld a,(#4642)
; and a
; call z,#463c
; call #463f
;
.music_info
	db "Deflektor (1987)(Vortex Software)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
