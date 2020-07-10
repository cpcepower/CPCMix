; Music of Flintstones, The (1988)(Grandslam)(Ben Daglish)()
; Ripped by Megachur the 18/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FLINTSTT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #0548
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

	jp l0c1d	; init music a=0,1
	jp l0660	; play music
.music_end
.l054e
	db #00
.l054f
	db #01,#08,#41,#09,#0a,#03,#ff,#08
	db #0e,#01,#08,#21,#08,#0a,#02,#ff
	db #00,#0b,#01,#08,#41,#07,#0a,#02
	db #ff,#00,#0f,#05,#08,#41,#0a,#0a
	db #02,#ff,#00,#0f,#1f,#08,#51,#09
	db #0a,#02,#12,#10,#0f,#00,#08,#11
	db #0a,#0a,#02,#7f,#08,#0d,#00,#08
	db #81,#08,#0a,#02,#7f,#00,#0c,#00
	db #08,#81,#04,#0a,#02,#7f,#00,#0b
.l0597
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
	db #00,#09,#12,#1b,#24,#2d,#36
.l05ca equ $ + 4
.l05c9 equ $ + 3
.l05c7 equ $ + 1
	db #3f,#00,#00,#00,#b8,#0f,#00,#00
.l05d2 equ $ + 4
.l05d0 equ $ + 2
.l05cf equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l05ed equ $ + 7
.l05ec equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l05ee
	db #00,#00,#00,#00,#00,#00,#00,#00
.l05fc equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l05ff equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l061b equ $ + 5
.l061a equ $ + 4
.l0619 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l062c equ $ + 6
.l0629 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0648 equ $ + 2
.l0647 equ $ + 1
.l0646
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l065c equ $ + 6
.l065a equ $ + 4
.l0658 equ $ + 2
.l0656
	db #00,#00,#00,#00,#00,#00,#00,#00
.l065f equ $ + 1
	db #00,#00
;
.play_music
.l0660
;
	ld hl,l05c9
	ld a,(l05d2)
	dec a
	jr nz,l066d
	ld (l05d2),a
	inc (hl)
.l066d
	ld a,(l05ff)
	dec a
	jr nz,l0677
	ld (l05ff),a
	inc (hl)
.l0677
	ld a,(l062c)
	dec a
	jr nz,l0681
	ld (l062c),a
	inc (hl)
.l0681
	xor a
	ld (l065f),a
	ld ix,l05cf
	ld (l0858),a
	ld hl,(l05c7)
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l0793),hl
	ld (l0c55),hl
	ld (l0c68),hl
	ld (l0c86),hl
	ld de,(l0656)
	call l0761
	ld ix,l05fc
	ld a,#01
	ld (l065f),a
	ld hl,(l05c7)
	inc hl
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l0793),hl
	ld (l0c55),hl
	ld (l0c68),hl
	ld (l0c86),hl
	ld a,#08
	ld (l0858),a
	ld de,(l0658)
	call l0761
	ld ix,l0629
	ld a,#02
	ld (l065f),a
	ld hl,(l05c7)
	ld de,#0004
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l0793),hl
	ld (l0c55),hl
	ld (l0c68),hl
	ld (l0c86),hl
	ld a,#10
	ld (l0858),a
	ld de,(l065a)
	call l0761
	ld de,#c000
	ld hl,#f680
	ld a,(l05c9)
	or a
	jr nz,l0758
.l0708
	ld c,#00
	ld a,(l05ec)
	call l13af
	inc c
	ld a,(l05ed)
	call l13af
	inc c
	ld a,(l0619)
	call l13af
	inc c
	ld a,(l061a)
	call l13af
	inc c
.l0727 equ $ + 1
	ld a,#00
	cp #02
	jr nc,l0741
	ld a,(l0646)
	call l13af
	inc c
	ld a,(l0647)
	call l13af
	ld c,#0a
	ld a,(l0648)
	call l13af
.l0741
	ld c,#07
	ld a,(l05ca)
	call l13af
	ld c,#08
	ld a,(l05ee)
	call l13af
	inc c
	ld a,(l061b)
	call l13af
.l0758
	xor a
	ld (l05c9),a
	ld c,#0e
	jp l13af
.l0761
	ld a,(ix+#03)
	or a
	jp nz,l09d2
	ld a,(ix+#11)
	cp #ff
	jr z,l0773
	ld (ix+#11),#00
.l0773
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,l07ea
	ld a,(ix+#04)
	or a
	jr z,l078d
	dec (ix+#04)
	ld (ix+#02),#00
	jr l0773
.l078d
	ld l,(ix+#00)
	ld h,#00
.l0793 equ $ + 1
	ld bc,l0dea
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	cp #ff
	jp z,l0bfd
	bit 7,a
	jp z,l07c7
	ld l,a
	and #1f
	ld (l065c),a
	ld a,l
	and #60
	srl a
	srl a
	srl a
	ld (l07b7),a
.l07b7 equ $ + 1
.l07b6
	jr l07b6
	jp l0c62
	db #00
	jp l0c99
	db #00
	jp l0c4f
	db #00
	jp l0c75
.l07c7
	ld c,a
	ld a,(l065f)
	add a
	ld e,a
	ld d,#00
	ld b,d
	ld hl,l0e42
	add hl,bc
	ld a,(hl)
	ld hl,l0e5d
	add hl,bc
	ld b,(hl)
	ld hl,l0656
	add hl,de
	ld (hl),a
	inc hl
	ld (hl),b
	ld e,a
	ld d,b
	ld (ix+#02),#00
	jp l0773
.l07ea
	bit 7,a
	jp z,l0946
	cp #a0
	jr nz,l080c
	inc (ix+#02)
	call l0ca3
	ld (ix+#16),a
	ld (ix+#03),a
	inc (ix+#02)
	xor a
	ld (ix+#1d),a
	ld (ix+#1e),a
	jp l09db
.l080c
	cp #90
	jr c,l0855
	cp #c0
	jr c,l083d
	ld (ix+#15),a
	and #1f
	ld (ix+#14),a
	inc (ix+#02)
	call l0ca3
	ld (ix+#12),a
	inc (ix+#02)
	call l0ca3
	ld (ix+#13),a
	inc (ix+#02)
	call l0ca3
	ld (ix+#11),a
	inc (ix+#02)
	jp l0773
.l083d
	cp #bf
	jr nz,l0847
	ld (ix+#11),#00
	jr l084f
.l0847
	and #0f
	add a
	add a
	add a
	ld (ix+#10),a
.l084f
	inc (ix+#02)
	jp l0773
.l0855
	and #0f
.l0858 equ $ + 1
	add #00
	ld l,a
	ld h,#00
	ld bc,l0597
	add hl,bc
	ld l,(hl)
	ld h,#00
	ld bc,l054f
	add hl,bc
	push hl
	pop iy
	ld a,(iy+#08)
	ld (ix+#2b),a
	ld hl,l05ca
	ld a,(l065f)
	or a
	jr nz,l0889
	res 3,(hl)
	set 0,(hl)
	bit 7,(iy+#02)
	jr nz,l08aa
	set 3,(hl)
	res 0,(hl)
	jr l08aa
.l0889
	dec a
	jr nz,l089c
	set 1,(hl)
	res 4,(hl)
	bit 7,(iy+#02)
	jr nz,l08aa
	res 1,(hl)
	set 4,(hl)
	jr l08aa
.l089c
	set 2,(hl)
	res 5,(hl)
	bit 7,(iy+#02)
	jr nz,l08aa
	res 2,(hl)
	set 5,(hl)
.l08aa
	ld (ix+#24),#0f
	ld (ix+#25),#01
	ld a,(iy+#03)
	push af
	and #f0
	jr z,l08d8
	rrca
	rrca
	rrca
	rrca
	ld c,a
	ld b,#00
	ld hl,l138f
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,l08cf
	ld (ix+#24),a
	jr l08d8
.l08cf
	and #7f
	ld (ix+#25),a
	ld (ix+#24),#01
.l08d8
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
	jr z,l090b
	ld c,a
	ld b,#00
	ld hl,l139f
	add hl,bc
	ld a,(hl)
	bit 7,(hl)
	jr nz,l0902
	ld (ix+#21),a
	jr l090b
.l0902
	and #7f
	ld (ix+#22),a
	ld (ix+#21),#01
.l090b
	ld (ix+#27),#0f
	ld (ix+#28),#01
	ld a,(iy+#04)
	and #0f
	jr z,l0934
	ld c,a
	ld b,#00
	ld hl,l139f
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,l092b
	ld (ix+#27),a
	jr l0934
.l092b
	and #7f
	ld (ix+#28),a
	ld (ix+#27),#01
.l0934
	ld a,(iy+#05)
	ld (ix+#06),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	inc (ix+#02)
	jp l0773
.l0946
	add #14
	add (ix+#01)
	ld c,a
	ld b,#00
	ld (ix+#1c),a
	ld hl,l0cac
	add hl,bc
	ld a,(hl)
	ld hl,l0d0c
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
	jr z,l09a7
	ld l,a
	ld h,#00
	ld bc,l0d84
	add hl,bc
	ld a,(hl)
	ld (ix+#0a),a
	ld (ix+#0c),#01
.l09a7
	ld a,(ix+#10)
	or a
	jr z,l09c5
	ld l,a
	ld h,#00
	ld bc,l0d9d
	add hl,bc
	ld a,(hl)
	and #78
	srl a
	srl a
	srl a
	inc a
	ld (ix+#18),a
	ld (ix+#17),#01
.l09c5
	ld a,(ix+#15)
	and #1f
	ld (ix+#14),a
	ex af,af'
	ld (ix+#03),a
	ret
.l09d2
	cp (ix+#06)
	jr nz,l09db
	res 0,(ix+#2a)
.l09db
	ld a,(ix+#16)
	or a
	jr z,l09ea
	dec (ix+#16)
	ret nz
	ld (ix+#03),#00
	ret
.l09ea
	dec (ix+#03)
	ld a,(l05c9)
	or a
	ret nz
	bit 0,(ix+#2a)
	jr z,l0a5c
	bit 7,(ix+#25)
	jr nz,l0a29
	inc (ix+#26)
	ld a,(ix+#26)
	cp (ix+#25)
	jr nz,l0a86
	ld (ix+#26),#00
	ld a,(ix+#24)
	add (ix+#1f)
	cp (ix+#2b)
	jr c,l0a24
	ld a,(ix+#2b)
	ld (ix+#1f),a
	set 7,(ix+#25)
	jr l0a86
.l0a24
	ld (ix+#1f),a
	jr l0a86
.l0a29
	bit 7,(ix+#22)
	jr nz,l0a86
	inc (ix+#23)
	ld a,(ix+#23)
	cp (ix+#22)
	jr nz,l0a86
	ld (ix+#23),#00
	ld a,(ix+#1f)
	sub (ix+#21)
	jr nc,l0a52
.l0a46
	ld a,(ix+#20)
	ld (ix+#1f),a
	set 7,(ix+#22)
	jr l0a86
.l0a52
	cp (ix+#20)
	jr c,l0a46
	ld (ix+#1f),a
	jr l0a86
.l0a5c
	bit 7,(ix+#28)
	jr nz,l0a86
	inc (ix+#29)
	ld a,(ix+#29)
	cp (ix+#28)
	jr nz,l0a86
	ld (ix+#29),#00
	ld a,(ix+#1f)
	sub (ix+#27)
	jr nc,l0a83
	ld (ix+#1f),#00
	set 7,(ix+#28)
	jr l0a86
.l0a83
	ld (ix+#1f),a
.l0a86
	ld a,(ix+#0b)
	or a
	jp z,l0b11
	ld a,(ix+#0a)
	or a
	jr z,l0aa3
	bit 7,a
	jr z,l0a9d
	and #7f
	jr z,l0b11
	jr l0aa3
.l0a9d
	dec (ix+#0a)
	jp l0b11
.l0aa3
	ld a,(ix+#0c)
	and #7f
	add (ix+#0b)
	ld l,a
	ld h,#00
	ld bc,l0d84
	add hl,bc
	ld a,(hl)
	ld (l065c),a
	bit 7,a
	jr z,l0ad6
	neg
	ld (l065c),a
	bit 7,(ix+#0c)
	jr nz,l0ae2
.l0ac5
	ld hl,l065c
	ld a,(ix+#1d)
	sub (hl)
	ld (ix+#1d),a
	jr nc,l0af0
	dec (ix+#1e)
	jr l0af0
.l0ad6
	ld a,(l065c)
	ld (l065c),a
	bit 7,(ix+#0c)
	jr nz,l0ac5
.l0ae2
	ld a,(l065c)
	add (ix+#1d)
	ld (ix+#1d),a
	jr nc,l0af0
	inc (ix+#1e)
.l0af0
	inc (ix+#0c)
	ld a,(ix+#0c)
	and #7f
	cp #08
	jr nz,l0b11
	ld a,(ix+#0c)
	xor #89
	ld (ix+#0c),a
	cp #01
	jr nz,l0b11
	ld a,(ix+#0a)
	or a
	jr z,l0b11
	dec (ix+#0a)
.l0b11
	ld a,(ix+#10)
	or a
	jp z,l0bac
	dec (ix+#18)
	jp nz,l0bac
	add (ix+#17)
	ld l,a
	ld h,#00
	ld bc,l0d9d
	add hl,bc
	ld a,(ix+#17)
	bit 7,a
	jr nz,l0b8b
	or a
	jr nz,l0b3e
	ld a,(hl)
	and #38
	srl a
	srl a
	srl a
	or a
	jr nz,l0b3f
.l0b3e
	ld a,(hl)
.l0b3f
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
	ld hl,l0cac
	add hl,bc
	ld a,(hl)
	ld hl,l0d0c
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
	ld bc,l0d9d
	add hl,bc
	ld a,(hl)
	and #07
	inc a
	cp (ix+#17)
	jr nz,l0bac
	bit 7,(hl)
	ld a,#ff
	jr z,l0b85
	xor a
.l0b85
	ld (ix+#17),a
	jp l0bac
.l0b8b
	cp #ff
	jr nz,l0bac
	dec (ix+#17)
	ld c,(ix+#1c)
	ld b,#00
	ld hl,l0cac
	add hl,bc
	ld a,(hl)
	ld hl,l0d0c
	add hl,bc
	ld h,(hl)
	ld l,a
	ld c,(ix+#09)
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.l0bac
	ld a,(ix+#14)
	or a
	jr z,l0bb7
	dec (ix+#14)
	jr l0bfc
.l0bb7
	ld a,(ix+#11)
	or a
	jr z,l0bfc
	cp #ff
	jr z,l0bc4
	dec (ix+#11)
.l0bc4
	ld a,(ix+#15)
	and #20
	jr z,l0be4
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
	jr l0bfc
.l0be4
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	sbc hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.l0bfc
	ret
.l0bfd
	xor a
	ld (l05ee),a
	ld (l061b),a
	ld (l0648),a
	ld (l05ee),a
	ld (l061b),a
	ld (l0648),a
	ld (l054e),a
	ld de,#c000
	ld hl,#f680
	pop af
	jp l0708
;
.init_music
.l0c1d
;
	push af
	ld (l0727),a
	add a
	ld l,a
	add a
	add l
	ld l,a
	ld h,#00
	ld de,l0dde
	add hl,de
	ld (l05c7),hl
	ld hl,l0cab
	ld (l0656),hl
	ld (l0658),hl
	ld (l065a),hl
	ld hl,l05cf
	ld de,l05d0
	ld bc,#0086
	ld (hl),#00
	ldir
	ld a,#01
	ld (l054e),a
	pop af
	ret
.l0c4f
	ld l,(ix+#00)
	ld h,#00
.l0c55 equ $ + 1
	ld bc,l0dea
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#09),a
	jp l078d
.l0c62
	ld l,(ix+#00)
	ld h,#00
.l0c68 equ $ + 1
	ld bc,l0dea
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#01),a
	jp l078d
.l0c75
	ld a,(l0858)
	ld c,a
	ld a,(l065c)
	add c
	ld (l0c8e),a
	ld l,(ix+#00)
	ld h,#00
.l0c86 equ $ + 1
	ld bc,l0dea
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
.l0c8e equ $ + 1
	ld l,#00
	ld h,#00
	ld bc,l0597
	add hl,bc
	ld (hl),a
	jp l078d
.l0c99
	ld a,(l065c)
	dec a
	ld (ix+#04),a
	jp l078d
.l0ca3
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	ret
.l0cab
	db #ff
.l0cac
	db #ee,#18,#4d,#8e,#da,#2f,#8f,#f7
	db #68,#e1,#61,#e9,#77,#0c,#a7,#47
	db #ed,#98,#47,#fc,#b4,#70,#31,#f4
	db #bc,#86,#53,#24,#f6,#cc,#a4,#7e
	db #5a,#38,#18,#fa,#de,#c3,#aa,#92
	db #7b,#66,#52,#3f,#2d,#1c,#0c,#fd
	db #ef,#e1,#d5,#c9,#be,#b3,#a9,#9f
	db #96,#8e,#86,#7f,#77,#71,#6a,#64
	db #5f,#59,#54,#50,#4b,#47,#43,#3f
	db #3c,#38,#35,#32,#2f,#2d,#2a,#28
	db #26,#24,#22,#20,#1e,#1c,#1b,#19
	db #18,#16,#15,#14,#13,#12,#11,#10
.l0d0c
	db #0e,#0e,#0d,#0c,#0b,#0b,#0a,#09
	db #09,#08,#08,#07,#07,#07,#06,#06
	db #05,#05,#05,#04,#04,#04,#04,#03
	db #03,#03,#03,#03,#02,#02,#02,#02
	db #02,#02,#02,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #16,#07,#08,#29,#07,#07,#09,#3a
	db #09,#0f,#0a,#0b,#06,#09,#03,#3a
	db #11,#02,#03,#04,#05,#06,#07,#28
.l0d84
	db #09,#0f,#0a,#0b,#06,#09,#03,#3a
	db #00,#01,#00,#ff,#00,#01,#00,#ff
	db #00,#01,#00,#00,#00,#00,#00,#ff
	db #10
.l0d9d
	db #12,#14,#16,#20,#40,#50,#80,#00
	db #8b,#19,#29,#41,#00,#00,#00,#00
	db #8b,#11,#21,#39,#00,#00,#00,#00
	db #8b,#19,#29,#51,#00,#00,#00,#00
	db #8b,#19,#29,#49,#00,#00,#00,#00
	db #8a,#21,#39,#00,#00,#00,#00,#00
	db #8a,#29,#41,#00,#00,#00,#00,#00
	db #8a,#29,#49,#00,#00,#00,#00,#00
	db #00
.l0dde
	dw l0dea,l0ded,l0e02
	dw l0e0e,l0e1a,l0e29
.l0ded equ $ + 3
.l0dea
	db #00,#03,#ff,#01,#a3,#04,#05,#a3
	db #04,#06,#07,#07,#08,#80,#fe,#07
	db #07,#80,#00,#09,#a5,#04,#0a,#ff
.l0e02
	db #02,#a3,#0b,#0c,#a3,#0b,#0d,#0e
.l0e0e equ $ + 4
	db #a5,#0b,#0f,#ff,#80,#f8,#10,#10
	db #80,#fa,#10,#80,#fc,#10,#18,#ff
.l0e1a
	db #80,#04,#b2,#12,#b2,#12,#13,#80
.l0e29 equ $ + 7
	db #06,#13,#80,#fc,#13,#19,#ff,#b2
	db #11,#80,#04,#b2,#12,#b2,#12,#80
	db #06,#14,#80,#08,#a3,#15,#16,#a4
	db #15,#17,#a6,#15,#19,#ff,#ff,#ff
.l0e42
;	db #78,#8c,#9e,#b4,#4a,#6c,#8e,#b0      à revoir
;	db #c2,#e3,#05,#1a,#2e,#46,#5d,#a3
;	db #b4,#aa,#ad,#b6,#4c,#f2,#0c,#26
;	db #88,#8b,#8e
	db l0e78,l0e8c,l0e9e,l0eb4
	db l0f4a,l0f6c,l0f8e,l0fb0
	db l0fc2,l0fe3,l1005,l101a
	db l102e,l1046,l105d,l10a3
	db l10b4,l11aa,l11ad,l11b6
	db l124c,l12f2,l130c,l1326
	db l1388,l138b,l138e
.l0e5d
;	db #0e,#0e,#0e,#0e,#0f,#0f,#0f,#0f      à revoir
;	db #0f,#0f,#10,#10,#10,#10,#10,#10
;	db #10,#11,#11,#11,#12,#12,#13,#13
;	db #13,#13,#13
	db l0e78/&100,l0e8c/&100,l0e9e/&100,l0eb4/&100
	db l0f4a/&100,l0f6c/&100,l0f8e/&100,l0fb0/&100
	db l0fc2/&100,l0fe3/&100,l1005/&100,l101a/&100
	db l102e/&100,l1046/&100,l105d/&100,l10a3/&100
	db l10b4/&100,l11aa/&100,l11ad/&100,l11b6/&100
	db l124c/&100,l12f2/&100,l130c/&100,l1326/&100
	db l1388/&100,l138b/&100,l138e/&100
.l0e78
	db #80,#30,#0e,#31,#15,#30,#07,#31
	db #23,#33,#15,#31,#15,#2f,#07,#2e
.l0e8c equ $ + 4
	db #15,#2c,#15,#ff,#83,#12,#0e,#12
	db #15,#06,#2a,#0b,#15,#0b,#15,#0b
.l0e9e equ $ + 6
	db #07,#0d,#15,#01,#15,#ff,#81,#91
	db #2e,#0e,#2e,#15,#2e,#2a,#92,#2f
	db #15,#2f,#15,#2f,#07,#93,#2c,#15
.l0eb4 equ $ + 4
	db #94,#2c,#15,#ff,#80,#25,#14,#1e
	db #1e,#2a,#14,#27,#0a,#25,#14,#1e
	db #1e,#25,#14,#23,#0a,#22,#0a,#22
	db #0a,#23,#0a,#25,#0a,#1e,#14,#20
	db #14,#22,#50,#25,#14,#1e,#1e,#2a
	db #14,#27,#0a,#25,#14,#1e,#1e,#25
	db #14,#23,#0a,#22,#0a,#22,#0a,#23
	db #0a,#25,#0a,#1e,#14,#20,#14,#1e
	db #50,#29,#14,#22,#1e,#2a,#14,#29
	db #0a,#29,#0a,#27,#0a,#27,#0a,#29
	db #0a,#27,#28,#27,#14,#20,#1e,#29
	db #14,#27,#0a,#27,#0a,#25,#0a,#25
	db #0a,#27,#0a,#25,#28,#25,#14,#1e
	db #1e,#2a,#14,#27,#0a,#25,#14,#1e
	db #1e,#25,#14,#23,#0a,#22,#0a,#22
	db #0a,#23,#0a,#25,#0a,#1e,#14,#20
	db #1e,#22,#0a,#23,#0a,#25,#0a,#1e
	db #14,#20,#1e,#22,#0a,#23,#0a,#25
	db #0a,#2a,#14,#2c,#14,#2a,#3c,#2a
.l0f4a equ $ + 2
	db #14,#ff,#82,#06,#05,#12,#05,#08
	db #05,#14,#05,#09,#05,#15,#05,#0a
	db #05,#16,#05,#0b,#05,#17,#05,#0f
	db #05,#1b,#05,#10,#05,#1c,#05,#11
.l0f6c equ $ + 4
	db #05,#1d,#05,#ff,#82,#06,#05,#12
	db #05,#05,#05,#11,#05,#03,#05,#0f
	db #05,#01,#05,#0d,#05,#0b,#05,#17
	db #05,#0a,#05,#16,#05,#08,#05,#14
.l0f8e equ $ + 6
	db #05,#01,#05,#0d,#05,#ff,#82,#06
	db #05,#12,#05,#03,#05,#0f,#05,#01
	db #05,#0d,#05,#0a,#05,#16,#05,#06
	db #05,#12,#05,#07,#05,#13,#05,#08
	db #05,#14,#05,#09,#05,#15,#05,#ff
.l0fb0
	db #82,#0a,#05,#16,#05,#02,#05,#0e
	db #05,#05,#05,#11,#05,#02,#05,#0e
.l0fc2 equ $ + 2
	db #05,#ff,#03,#05,#0f,#05,#06,#05
	db #12,#05,#0a,#05,#16,#05,#06,#05
	db #12,#05,#0f,#05,#1b,#05,#0d,#05
	db #19,#05,#0c,#05,#18,#05,#0a,#05
.l0fe3 equ $ + 3
	db #16,#05,#ff,#82,#01,#05,#0d,#05
	db #05,#05,#11,#05,#08,#05,#14,#05
	db #05,#05,#11,#05,#01,#05,#0d,#05
	db #02,#05,#0e,#05,#03,#05,#0f,#05
.l1005 equ $ + 5
	db #05,#05,#11,#05,#ff,#06,#05,#12
	db #05,#03,#05,#0f,#05,#01,#05,#0d
	db #05,#03,#05,#0f,#05,#06,#14,#06
.l101a equ $ + 2
	db #14,#ff,#81,#91,#a0,#0a,#2e,#05
	db #2e,#0a,#2e,#05,#2e,#0a,#92,#2f
.l102e equ $ + 6
	db #0a,#2f,#14,#2f,#0a,#ff,#81,#91
	db #2e,#0a,#2e,#0a,#92,#2f,#05,#2f
	db #0a,#93,#2c,#0a,#2c,#0a,#2c,#05
.l1046 equ $ + 6
	db #94,#2c,#0a,#2c,#0a,#ff,#81,#91
	db #2e,#0a,#2e,#0a,#92,#2f,#05,#2f
	db #0a,#91,#2e,#0a,#2e,#0a,#92,#2f
.l105d equ $ + 5
	db #05,#91,#2e,#14,#ff,#81,#95,#a0
	db #0a,#2e,#05,#2e,#0a,#2e,#05,#2e
	db #0a,#2e,#0a,#2e,#14,#2e,#0a,#96
	db #a0,#0a,#2e,#05,#2e,#0a,#2e,#05
	db #2e,#0a,#2e,#0a,#2e,#14,#2e,#0a
	db #95,#a0,#0a,#2c,#05,#2c,#0a,#2c
	db #05,#2c,#0a,#2c,#0a,#2c,#14,#2c
	db #0a,#97,#a0,#0a,#2c,#05,#2c,#0a
	db #2c,#05,#2c,#0a,#2c,#0a,#2c,#14
.l10a3 equ $ + 3
	db #2c,#0a,#ff,#81,#91,#2e,#0a,#2e
	db #0a,#92,#2f,#05,#2f,#0a,#91,#2e
.l10b4 equ $ + 4
	db #32,#2e,#14,#ff,#84,#06,#14,#12
	db #0a,#0a,#14,#0b,#1e,#0f,#0a,#0d
	db #1e,#12,#14,#0f,#0a,#0d,#14,#0b
	db #1e,#0f,#0a,#0d,#1e,#0a,#14,#0b
	db #0a,#0d,#14,#0b,#1e,#0f,#0a,#0d
	db #0a,#0b,#0a,#0a,#0a,#06,#0a,#0a
	db #0a,#0d,#0a,#0f,#0a,#13,#0a,#16
	db #0a,#14,#0a,#0f,#0a,#0c,#0a,#0d
	db #0a,#08,#0a,#05,#0a,#06,#14,#12
	db #0a,#0a,#14,#0b,#1e,#0f,#0a,#0d
	db #1e,#12,#14,#0f,#0a,#0d,#14,#0b
	db #1e,#0f,#0a,#0d,#1e,#0a,#14,#0b
	db #0a,#0d,#14,#0b,#1e,#0f,#0a,#0d
	db #0a,#0b,#0a,#0a,#0a,#06,#0a,#0a
	db #0a,#0d,#0a,#0b,#0a,#0f,#0a,#12
	db #0a,#0d,#0a,#11,#0a,#14,#0a,#06
	db #0a,#08,#0a,#09,#0a,#0a,#14,#0e
	db #0a,#11,#14,#16,#1e,#14,#0a,#12
	db #14,#11,#0a,#12,#1e,#11,#1e,#0f
	db #14,#0d,#0a,#0c,#14,#0a,#0a,#08
	db #14,#0c,#0a,#0f,#14,#14,#1e,#12
	db #0a,#11,#14,#0f,#0a,#0d,#1e,#0f
	db #1e,#10,#1e,#11,#1e,#06,#14,#12
	db #0a,#0a,#14,#0b,#1e,#0f,#0a,#0d
	db #1e,#12,#14,#0f,#0a,#0d,#14,#0b
	db #1e,#0f,#0a,#0d,#1e,#06,#14,#12
	db #0a,#0f,#14,#0d,#0a,#0b,#1e,#0d
	db #1e,#06,#14,#12,#0a,#0f,#14,#0d
	db #0a,#0b,#1e,#0d,#1e,#12,#14,#12
	db #0a,#0f,#14,#0d,#0a,#0f,#1e,#11
	db #1e,#12,#1e,#11,#1e,#0f,#1e,#0d
.l11ad equ $ + 5
.l11aa equ $ + 2
	db #1e,#ff,#a0,#78,#ff,#86,#3d,#1e
.l11b6 equ $ + 6
	db #87,#3b,#14,#3b,#0a,#ff,#85,#31
	db #1e,#2a,#32,#36,#1e,#33,#0a,#31
	db #1e,#2a,#32,#31,#1e,#2f,#0a,#2e
	db #14,#2e,#0a,#2f,#14,#31,#0a,#2a
	db #1e,#2c,#1e,#2e,#3c,#2c,#3c,#31
	db #1e,#2a,#32,#36,#1e,#33,#0a,#31
	db #1e,#2a,#32,#31,#1e,#2f,#0a,#2e
	db #14,#2e,#0a,#2f,#14,#31,#0a,#2a
	db #1e,#2c,#1e,#2a,#78,#35,#1e,#2e
	db #32,#36,#1e,#35,#0a,#35,#14,#33
	db #0a,#33,#14,#35,#0a,#33,#3c,#33
	db #1e,#2c,#32,#35,#1e,#33,#0a,#33
	db #14,#31,#0a,#31,#14,#33,#0a,#31
	db #3c,#31,#1e,#2a,#32,#36,#1e,#33
	db #0a,#31,#1e,#2a,#32,#31,#1e,#2f
	db #0a,#2e,#14,#2e,#0a,#2f,#14,#31
	db #0a,#2a,#1e,#2c,#32,#2e,#0a,#2f
	db #14,#31,#0a,#2a,#1e,#2c,#32,#2e
	db #0a,#2f,#14,#31,#0a,#36,#1e,#38
.l124c equ $ + 4
	db #1e,#36,#78,#ff,#85,#2e,#1e,#22
	db #1e,#23,#14,#33,#1e,#2f,#0a,#2e
	db #1e,#22,#1e,#23,#14,#2e,#1e,#2c
	db #0a,#2a,#14,#2a,#0a,#2c,#14,#2e
	db #0a,#22,#1e,#29,#1e,#2a,#1e,#2b
	db #1e,#27,#1e,#29,#1e,#2e,#1e,#22
	db #1e,#23,#14,#33,#1e,#2f,#0a,#2e
	db #1e,#22,#1e,#23,#14,#2e,#1e,#2c
	db #0a,#2a,#14,#2a,#0a,#2c,#14,#2e
	db #0a,#22,#1e,#23,#1e,#22,#78,#32
	db #1e,#29,#32,#2e,#1e,#2e,#0a,#2e
	db #14,#2e,#0a,#2e,#14,#2e,#0a,#2e
	db #3c,#30,#1e,#27,#32,#30,#1e,#30
	db #0a,#2c,#14,#2c,#0a,#2c,#14,#2c
	db #0a,#29,#3c,#2e,#1e,#22,#1e,#23
	db #14,#33,#1e,#2f,#0a,#2e,#1e,#22
	db #1e,#23,#14,#2e,#1e,#2c,#0a,#2a
	db #14,#2a,#0a,#2c,#14,#2e,#0a,#25
	db #1e,#29,#32,#2a,#0a,#2c,#14,#2e
	db #0a,#25,#1e,#29,#32,#2a,#0a,#2c
	db #14,#2e,#0a,#27,#1e,#31,#1e,#2e
.l12f2 equ $ + 2
	db #78,#ff,#85,#2e,#0a,#2d,#0a,#2e
	db #0a,#31,#0a,#2f,#0a,#2e,#0a,#2f
	db #0a,#31,#0a,#33,#0a,#2f,#0a,#2e
.l130c equ $ + 4
	db #0a,#2c,#0a,#ff,#85,#2e,#0a,#2c
	db #0a,#2a,#0a,#2b,#0a,#2c,#0a,#2e
	db #0a,#30,#0a,#31,#0a,#33,#0a,#35
.l1326 equ $ + 6
	db #0a,#33,#0a,#31,#0a,#ff,#85,#2e
	db #0a,#2d,#0a,#2e,#0a,#32,#0a,#30
	db #0a,#2e,#0a,#35,#0a,#33,#0a,#32
	db #0a,#30,#0a,#2e,#0a,#2d,#0a,#2e
	db #0a,#2c,#0a,#2a,#0a,#2c,#0a,#2e
	db #0a,#2c,#0a,#2a,#0a,#29,#0a,#27
	db #0a,#29,#0a,#2a,#0a,#2e,#0a,#2c
	db #0a,#2e,#0a,#30,#0a,#31,#0a,#33
	db #0a,#35,#0a,#37,#0a,#38,#0a,#35
	db #0a,#33,#0a,#31,#0a,#30,#0a,#2e
	db #0a,#2c,#0a,#2e,#0a,#2c,#0a,#2e
	db #0a,#30,#0a,#31,#0a,#33,#0a,#35
	db #0a,#38,#0a,#36,#0a,#35,#0a,#ff
.l1388
	db #06,#32,#ff
.l138b
	db #2a,#32,#ff
.l138e
	db #ff
.l138f
	db #0f,#0f,#0f,#0d,#08,#06,#05,#04
	db #03,#01,#82,#83,#83,#89,#90,#99
.l139f
	db #0f,#0d,#07,#04,#03,#02,#02,#01
	db #01,#82,#85,#88,#89,#9c,#ae,#cb
.l13af
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

	db #00,#00

;
.music_info
	db "The Flintstones (1988)(Grandslam)(Ben Daglish)",0
	db "same as Fred Flintstone (1988)(Gremlin Graphics)(Ben Daglish)",0

	read "music_end.asm"
