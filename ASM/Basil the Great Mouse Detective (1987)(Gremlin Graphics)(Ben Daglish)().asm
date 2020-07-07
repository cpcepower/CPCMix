; Music of Basil the Great Mouse Detective (1987)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 01/04/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BASITGMD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #a800

	read "music_header.asm"

.la801 equ $ + 1
.music_end
.la800
	db #00,#00,#03,#21,#7a,#0a,#02,#7f
	db #08,#0d,#00,#08,#41,#0b,#0c,#08
	db #3f,#00,#0f,#00,#08,#41,#88,#0a
	db #02,#2a,#08,#0f,#00,#08,#41,#88
.la825 equ $ + 5
	db #0a,#02,#11,#00,#0f,#00,#09,#12
	db #1b,#24,#2d,#36,#3f,#00,#09,#12
	db #1b,#24,#2d,#36,#3f,#00,#09,#12
	db #1b,#24,#2d,#36,#3f,#00,#09,#12
	db #1b,#24,#2d,#36,#3f,#00,#09,#12
	db #1b,#24,#2d,#36,#3f,#00,#09,#12
.la857 equ $ + 7
.la855 equ $ + 5
	db #1b,#24,#2d,#36,#3f,#00,#00,#00
.la85e equ $ + 6
.la85d equ $ + 5
.la858
	db #b8,#0f,#00,#00,#00,#00,#00,#00
.la860
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la87c equ $ + 4
.la87b equ $ + 3
.la87a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la88d equ $ + 5
.la88a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la8a7 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.la8a9 equ $ + 1
.la8a8
	db #00,#00,#00,#00,#00,#00,#00,#00
.la8b7 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.la8ba equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la8d6 equ $ + 6
.la8d5 equ $ + 5
.la8d4 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la8e6 equ $ + 6
.la8e4 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.la8ed equ $ + 5
.la8ea equ $ + 2
.la8e8
	db #00,#00,#00,#00,#00,#00
;
.play_music
;
	ld hl,la857
	ld a,(la860)
	dec a
	jr nz,la8fb
	ld (la860),a
	inc (hl)
.la8fb
	ld a,(la88d)
	dec a
	jr nz,la905
	ld (la88d),a
	inc (hl)
.la905
	ld a,(la8ba)
	dec a
	jr nz,la90f
	ld (la8ba),a
	inc (hl)
.la90f
	xor a
	ld (la8ed),a
	ld ix,la85d
	ld (laadf),a
	ld hl,(la855)
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (laa21),hl
	ld (laedc),hl
	ld (laeef),hl
	ld (laf0d),hl
	ld de,(la8e4)
	call la9ef
	ld ix,la88a
	ld a,#01
	ld (la8ed),a
	ld hl,(la855)
	inc hl
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (laa21),hl
	ld (laedc),hl
	ld (laeef),hl
	ld (laf0d),hl
	ld a,#08
	ld (laadf),a
	ld de,(la8e6)
	call la9ef
	ld ix,la8b7
	ld a,#02
	ld (la8ed),a
	ld hl,(la855)
	ld de,#0004
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (laa21),hl
	ld (laedc),hl
	ld (laeef),hl
	ld (laf0d),hl
	ld a,#10
	ld (laadf),a
	ld de,(la8e8)
	call la9ef
	ld de,#c000
	ld hl,#f680
	ld a,(la857)
	or a
	jr nz,la9e6
.la996
	ld c,#00
	ld a,(la87a)
	call lb2e2
	inc c
	ld a,(la87b)
	call lb2e2
	inc c
	ld a,(la8a7)
	call lb2e2
	inc c
	ld a,(la8a8)
	call lb2e2
	inc c
.la9b5 equ $ + 1
	ld a,#00
	cp #01
	jr nc,la9cf
	ld a,(la8d4)
	call lb2e2
	inc c
	ld a,(la8d5)
	call lb2e2
	ld c,#0a
	ld a,(la8d6)
	call lb2e2
.la9cf
	ld c,#07
	ld a,(la858)
	call lb2e2
	ld c,#08
	ld a,(la87c)
	call lb2e2
	inc c
	ld a,(la8a9)
	call lb2e2
.la9e6
	xor a
	ld (la857),a
	ld c,#0e
	jp lb2e2
.la9ef
	ld a,(ix+#03)
	or a
	jp nz,lac59
	ld a,(ix+#11)
	cp #ff
	jr z,laa01
	ld (ix+#11),#00
.laa01
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,laa78
	ld a,(ix+#04)
	or a
	jr z,laa1b
	dec (ix+#04)
	ld (ix+#02),#00
	jr laa01
.laa1b
	ld l,(ix+#00)
	ld h,#00
.laa21 equ $ + 1
	ld bc,lb009
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	cp #ff
	jp z,lae84
	bit 7,a
	jp z,laa55
	ld l,a
	and #1f
	ld (la8ea),a
	ld a,l
	and #60
	srl a
	srl a
	srl a
	ld (laa45),a
.laa45 equ $ + 1
.laa44
	jr laa44
	jp laee9
	db #00
	jp laf20
	db #00
	jp laed6
	db #00
	jp laefc
.laa55
	ld c,a
	ld a,(la8ed)
	add a
	ld e,a
	ld d,#00
	ld b,d
	ld hl,lb039
	add hl,bc
	ld a,(hl)
	ld hl,lb04f
	add hl,bc
	ld b,(hl)
	ld hl,la8e4
	add hl,de
	ld (hl),a
	inc hl
	ld (hl),b
	ld e,a
	ld d,b
	ld (ix+#02),#00
	jp laa01
.laa78
	bit 7,a
	jp z,labcd
	cp #a0
	jr nz,laa93
	inc (ix+#02)
	call laf2a
	ld (ix+#16),a
	ld (ix+#03),a
	inc (ix+#02)
	jp lac62
.laa93
	cp #90
	jr c,laadc
	cp #c0
	jr c,laac4
	ld (ix+#15),a
	and #1f
	ld (ix+#14),a
	inc (ix+#02)
	call laf2a
	ld (ix+#12),a
	inc (ix+#02)
	call laf2a
	ld (ix+#13),a
	inc (ix+#02)
	call laf2a
	ld (ix+#11),a
	inc (ix+#02)
	jp laa01
.laac4
	cp #bf
	jr nz,laace
	ld (ix+#11),#00
	jr laad6
.laace
	and #0f
	add a
	add a
	add a
	ld (ix+#10),a
.laad6
	inc (ix+#02)
	jp laa01
.laadc
	and #0f
.laadf equ $ + 1
	add #00
	ld l,a
	ld h,#00
	ld bc,la825
	add hl,bc
	ld l,(hl)
	ld h,#00
	ld bc,la801
	add hl,bc
	push hl
	pop iy
	ld a,(iy+#08)
	ld (ix+#2b),a
	ld hl,la858
	ld a,(la8ed)
	or a
	jr nz,lab10
	res 3,(hl)
	set 0,(hl)
	bit 7,(iy+#02)
	jr nz,lab31
	set 3,(hl)
	res 0,(hl)
	jr lab31
.lab10
	dec a
	jr nz,lab23
	set 1,(hl)
	res 4,(hl)
	bit 7,(iy+#02)
	jr nz,lab31
	res 1,(hl)
	set 4,(hl)
	jr lab31
.lab23
	set 2,(hl)
	res 5,(hl)
	bit 7,(iy+#02)
	jr nz,lab31
	res 2,(hl)
	set 5,(hl)
.lab31
	ld (ix+#24),#0f
	ld (ix+#25),#01
	ld a,(iy+#03)
	push af
	and #f0
	jr z,lab5f
	rrca
	rrca
	rrca
	rrca
	ld c,a
	ld b,#00
	ld hl,lb2c2
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,lab56
	ld (ix+#24),a
	jr lab5f
.lab56
	and #7f
	ld (ix+#25),a
	ld (ix+#24),#01
.lab5f
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
	jr z,lab92
	ld c,a
	ld b,#00
	ld hl,lb2d2
	add hl,bc
	ld a,(hl)
	bit 7,(hl)
	jr nz,lab89
	ld (ix+#21),a
	jr lab92
.lab89
	and #7f
	ld (ix+#22),a
	ld (ix+#21),#01
.lab92
	ld (ix+#27),#0f
	ld (ix+#28),#01
	ld a,(iy+#04)
	and #0f
	jr z,labbb
	ld c,a
	ld b,#00
	ld hl,lb2d2
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,labb2
	ld (ix+#27),a
	jr labbb
.labb2
	and #7f
	ld (ix+#28),a
	ld (ix+#27),#01
.labbb
	ld a,(iy+#05)
	ld (ix+#06),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	inc (ix+#02)
	jp laa01
.labcd
	add #14
	add (ix+#01)
	ld c,a
	ld b,#00
	ld (ix+#1c),a
	ld hl,laf33
	add hl,bc
	ld a,(hl)
	ld hl,laf87
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
	jr z,lac2e
	ld l,a
	ld h,#00
	ld bc,lafd3
	add hl,bc
	ld a,(hl)
	ld (ix+#0a),a
	ld (ix+#0c),#01
.lac2e
	ld a,(ix+#10)
	or a
	jr z,lac4c
	ld l,a
	ld h,#00
	ld bc,lafe3
	add hl,bc
	ld a,(hl)
	and #78
	srl a
	srl a
	srl a
	inc a
	ld (ix+#18),a
	ld (ix+#17),#01
.lac4c
	ld a,(ix+#15)
	and #1f
	ld (ix+#14),a
	ex af,af'
	ld (ix+#03),a
	ret
.lac59
	cp (ix+#06)
	jr nz,lac62
	res 0,(ix+#2a)
.lac62
	ld a,(ix+#16)
	or a
	jr z,lac71
	dec (ix+#16)
	ret nz
	ld (ix+#03),#00
	ret
.lac71
	dec (ix+#03)
	ld a,(la857)
	or a
	ret nz
	bit 0,(ix+#2a)
	jr z,lace3
	bit 7,(ix+#25)
	jr nz,lacb0
	inc (ix+#26)
	ld a,(ix+#26)
	cp (ix+#25)
	jr nz,lad0d
	ld (ix+#26),#00
	ld a,(ix+#24)
	add (ix+#1f)
	cp (ix+#2b)
	jr c,lacab
	ld a,(ix+#2b)
	ld (ix+#1f),a
	set 7,(ix+#25)
	jr lad0d
.lacab
	ld (ix+#1f),a
	jr lad0d
.lacb0
	bit 7,(ix+#22)
	jr nz,lad0d
	inc (ix+#23)
	ld a,(ix+#23)
	cp (ix+#22)
	jr nz,lad0d
	ld (ix+#23),#00
	ld a,(ix+#1f)
	sub (ix+#21)
	jr nc,lacd9
.laccd
	ld a,(ix+#20)
	ld (ix+#1f),a
	set 7,(ix+#22)
	jr lad0d
.lacd9
	cp (ix+#20)
	jr c,laccd
	ld (ix+#1f),a
	jr lad0d
.lace3
	bit 7,(ix+#28)
	jr nz,lad0d
	inc (ix+#29)
	ld a,(ix+#29)
	cp (ix+#28)
	jr nz,lad0d
	ld (ix+#29),#00
	ld a,(ix+#1f)
	sub (ix+#27)
	jr nc,lad0a
	ld (ix+#1f),#00
	set 7,(ix+#28)
	jr lad0d
.lad0a
	ld (ix+#1f),a
.lad0d
	ld a,(ix+#0b)
	or a
	jp z,lad98
	ld a,(ix+#0a)
	or a
	jr z,lad2a
	bit 7,a
	jr z,lad24
	and #7f
	jr z,lad98
	jr lad2a
.lad24
	dec (ix+#0a)
	jp lad98
.lad2a
	ld a,(ix+#0c)
	and #7f
	add (ix+#0b)
	ld l,a
	ld h,#00
	ld bc,lafd3
	add hl,bc
	ld a,(hl)
	ld (la8ea),a
	bit 7,a
	jr z,lad5d
	neg
	ld (la8ea),a
	bit 7,(ix+#0c)
	jr nz,lad69
.lad4c
	ld hl,la8ea
	ld a,(ix+#1d)
	sub (hl)
	ld (ix+#1d),a
	jr nc,lad77
	dec (ix+#1e)
	jr lad77
.lad5d
	ld a,(la8ea)
	ld (la8ea),a
	bit 7,(ix+#0c)
	jr nz,lad4c
.lad69
	ld a,(la8ea)
	add (ix+#1d)
	ld (ix+#1d),a
	jr nc,lad77
	inc (ix+#1e)
.lad77
	inc (ix+#0c)
	ld a,(ix+#0c)
	and #7f
	cp #08
	jr nz,lad98
	ld a,(ix+#0c)
	xor #89
	ld (ix+#0c),a
	cp #01
	jr nz,lad98
	ld a,(ix+#0a)
	or a
	jr z,lad98
	dec (ix+#0a)
.lad98
	ld a,(ix+#10)
	or a
	jp z,lae33
	dec (ix+#18)
	jp nz,lae33
	add (ix+#17)
	ld l,a
	ld h,#00
	ld bc,lafe3
	add hl,bc
	ld a,(ix+#17)
	bit 7,a
	jr nz,lae12
	or a
	jr nz,ladc5
	ld a,(hl)
	and #38
	srl a
	srl a
	srl a
	or a
	jr nz,ladc6
.ladc5
	ld a,(hl)
.ladc6
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
	ld hl,laf33
	add hl,bc
	ld a,(hl)
	ld hl,laf87
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
	ld bc,lafe3
	add hl,bc
	ld a,(hl)
	and #07
	inc a
	cp (ix+#17)
	jr nz,lae33
	bit 7,(hl)
	ld a,#ff
	jr z,lae0c
	xor a
.lae0c
	ld (ix+#17),a
	jp lae33
.lae12
	cp #ff
	jr nz,lae33
	dec (ix+#17)
	ld c,(ix+#1c)
	ld b,#00
	ld hl,laf33
	add hl,bc
	ld a,(hl)
	ld hl,laf87
	add hl,bc
	ld h,(hl)
	ld l,a
	ld c,(ix+#09)
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.lae33
	ld a,(ix+#14)
	or a
	jr z,lae3e
	dec (ix+#14)
	jr lae83
.lae3e
	ld a,(ix+#11)
	or a
	jr z,lae83
	cp #ff
	jr z,lae4b
	dec (ix+#11)
.lae4b
	ld a,(ix+#15)
	and #20
	jr z,lae6b
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
	jr lae83
.lae6b
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	sbc hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.lae83
	ret
.lae84
	xor a
	ld (la87c),a
	ld (la8a9),a
	ld (la8d6),a
	ld (la87c),a
	ld (la8a9),a
	ld (la8d6),a
	ld (la800),a
	ld de,#c000
	ld hl,#f680
	pop af
	jp la996
;
.init_music
;
	push af
	ld (la9b5),a
	add a
	ld l,a
	add a
	add l
	ld l,a
	ld h,#00
	ld de,lb003
	add hl,de
	ld (la855),hl
	ld hl,laf32
	ld (la8e4),hl
	ld (la8e6),hl
	ld (la8e8),hl
	ld hl,la85d
	ld de,la85e
	ld bc,#0086
	ld (hl),#00
	ldir
	ld a,#01
	ld (la800),a
	pop af
	ret
.laed6
	ld l,(ix+#00)
	ld h,#00
.laedc equ $ + 1
	ld bc,lb009
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#09),a
	jp laa1b
.laee9
	ld l,(ix+#00)
	ld h,#00
.laeef equ $ + 1
	ld bc,lb009
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#01),a
	jp laa1b
.laefc
	ld a,(laadf)
	ld c,a
	ld a,(la8ea)
	add c
	ld (laf15),a
	ld l,(ix+#00)
	ld h,#00
.laf0d equ $ + 1
	ld bc,lb009
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
.laf15 equ $ + 1
	ld l,#00
	ld h,#00
	ld bc,la825
	add hl,bc
	ld (hl),a
	jp laa1b
.laf20
	ld a,(la8ea)
	dec a
	ld (ix+#04),a
	jp laa1b
.laf2a
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	ret
.laf33 equ $ + 1
.laf32
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
.laf87 equ $ + 5
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
.lafd3 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#ff,#00,#01,#00
.lafe3 equ $ + 1
	db #ff,#00,#32,#28,#14,#00,#ec,#d8
	db #ce,#8a,#21,#39,#00,#00,#00,#00
	db #00,#8a,#19,#41,#00,#00,#00,#00
	db #00,#89,#61,#00,#00,#00,#00,#00
	db #00
.lb003
	dw lb009,lb017,lb025
.lb009
	db #b0,#00,#ac,#00,#01,#05,#05,#09
.lb017 equ $ + 6
	db #0c,#05,#0f,#0f,#10,#ff,#80,#f4
	db #02,#02,#03,#07,#08,#0b,#0e,#08
.lb025 equ $ + 4
	db #a3,#13,#14,#ff,#80,#04,#02,#02
	db #80,#f4,#04,#80,#00,#15,#06,#0a
	db #0d,#06,#11,#11,#12,#ff
	db #ff,#ff
.lb039
	db lb065,lb073,lb077,lb07f
	db lb08f,lb09f,lb107,lb16f
	db lb195,lb1c1,lb1d5,lb1e9
	db lb1f5,lb221,lb24d,lb261
	db lb26f,lb287,lb295,lb2ad
	db lb2b3,lb2bd
;	db #65,#73,#77,#7f,#8f,#9f,#07,#6f
;	db #95,#c1,#d5,#e9,#f5,#21,#4d,#61
;	db #6f,#87,#95,#ad,#b3,#bd
.lb04f
	db lb065/&100,lb073/&100,lb077/&100,lb07f/&100
	db lb08f/&100,lb09f/&100,lb107/&100,lb16f/&100
	db lb195/&100,lb1c1/&100,lb1d5/&100,lb1e9/&100
	db lb1f5/&100,lb221/&100,lb24d/&100,lb261/&100
	db lb26f/&100,lb287/&100,lb295/&100,lb2ad/&100
	db lb2b3/&100,lb2bd/&100
;	db #b0,#b0,#b0,#b0,#b0,#b0,#b1,#b1
;	db #b1,#b1,#b1,#b1,#b1,#b2,#b2,#b2
;	db #b2,#b2,#b2,#b2,#b2,#b2
;	db #80,#36,#05,#35,#05,#34,#05,#33
.lb065
	db #80,#36,#05,#35,#05,#34,#05,#33
.lb073 equ $ + 6
	db #05,#34,#05,#35,#05,#ff,#80,#35
.lb077 equ $ + 2
	db #96,#ff,#81,#09,#3c,#08,#3c,#07
.lb07f equ $ + 2
	db #78,#ff,#81,#09,#3c,#08,#3c,#07
	db #3c,#05,#3c,#04,#3c,#04,#3c,#01
.lb08f equ $ + 2
	db #96,#ff,#81,#19,#3c,#18,#3c,#17
	db #3c,#15,#3c,#15,#3c,#14,#3c,#14
.lb09f equ $ + 2
	db #96,#ff,#82,#30,#08,#31,#08,#2e
	db #08,#2a,#08,#25,#10,#30,#08,#31
	db #08,#2e,#08,#2a,#08,#25,#10,#30
	db #08,#31,#08,#30,#08,#31,#08,#33
	db #08,#31,#08,#30,#08,#31,#08,#33
	db #08,#31,#08,#30,#08,#31,#08,#30
	db #08,#2f,#08,#31,#08,#33,#08,#2c
	db #08,#2e,#08,#2f,#08,#2e,#08,#2f
	db #08,#31,#08,#2a,#08,#2c,#08,#2e
	db #08,#2c,#08,#2e,#08,#2f,#08,#29
	db #08,#2a,#08,#2c,#08,#2d,#08,#2a
	db #08,#28,#08,#21,#10,#2d,#08,#2c
	db #08,#2d,#08,#2f,#08,#32,#08,#31
.lb107 equ $ + 2
	db #08,#ff,#82,#2d,#08,#2e,#08,#2a
	db #08,#25,#08,#22,#10,#2d,#08,#2e
	db #08,#2a,#08,#25,#08,#22,#10,#2d
	db #08,#2e,#08,#2d,#08,#2e,#08,#2f
	db #08,#2e,#08,#2d,#08,#2e,#08,#2f
	db #08,#2e,#08,#2d,#08,#2e,#08,#2d
	db #08,#2c,#08,#2e,#08,#2f,#08,#29
	db #08,#2a,#08,#2c,#08,#2a,#08,#2c
	db #08,#2e,#08,#27,#08,#29,#08,#2a
	db #08,#29,#08,#2a,#08,#2c,#08,#25
	db #08,#27,#08,#29,#08,#2a,#08,#28
	db #08,#21,#08,#1e,#10,#2a,#08,#28
	db #08,#2a,#08,#2c,#08,#2f,#08,#2d
.lb16f equ $ + 2
	db #08,#ff,#83,#a0,#c8,#0d,#18,#19
	db #18,#12,#10,#11,#08,#0f,#18,#0b
	db #18,#0d,#18,#0e,#08,#1a,#08,#1a
	db #08,#0e,#18,#10,#08,#1c,#08,#1c
	db #08,#10,#08,#1c,#08,#1c,#08,#ff
.lb195
	db #83,#06,#18,#12,#18,#06,#18,#12
	db #18,#06,#18,#0d,#18,#12,#18,#06
	db #18,#0d,#18,#14,#18,#12,#10,#11
	db #08,#0f,#10,#0a,#08,#0b,#18,#0d
	db #10,#01,#08,#02,#18,#0e,#18,#04
.lb1c1 equ $ + 4
	db #18,#10,#18,#ff,#82,#30,#08,#31
	db #08,#2e,#08,#2e,#08,#2f,#08,#2e
	db #08,#2c,#08,#2a,#28,#2e,#08,#ff
.lb1d5
	db #82,#2d,#08,#2e,#08,#2a,#08,#2a
	db #08,#2c,#08,#2a,#08,#29,#08,#22
.lb1e9 equ $ + 4
	db #28,#31,#08,#ff,#83,#06,#18,#01
	db #08,#03,#01,#11,#08,#06,#30,#ff
.lb1f5
	db #82,#2c,#08,#25,#08,#25,#08,#2f
	db #08,#2e,#08,#2d,#08,#2e,#08,#31
	db #08,#2e,#08,#2a,#10,#2e,#08,#2c
	db #08,#25,#08,#25,#08,#2f,#08,#2e
	db #08,#2d,#08,#2c,#08,#2a,#08,#27
.lb221 equ $ + 4
	db #08,#29,#10,#ff,#82,#29,#08,#20
	db #08,#20,#08,#25,#08,#27,#08,#29
	db #08,#2a,#08,#2e,#08,#25,#08,#22
	db #10,#2a,#08,#29,#08,#20,#08,#20
	db #08,#25,#08,#27,#08,#29,#08,#27
	db #08,#27,#08,#20,#08,#20,#10,#ff
.lb24d
	db #83,#01,#18,#0d,#18,#06,#18,#12
	db #18,#01,#18,#0d,#18,#08,#10,#0c
.lb261 equ $ + 4
	db #08,#0d,#18,#ff,#82,#30,#08,#31
	db #08,#2e,#08,#2e,#08,#2f,#08,#2e
.lb26f equ $ + 2
	db #08,#ff,#82,#30,#08,#31,#08,#2e
	db #08,#2e,#08,#2f,#08,#2e,#08,#2c
	db #08,#2a,#08,#2e,#08,#31,#08,#36
.lb287 equ $ + 2
	db #10,#ff,#82,#2d,#08,#2e,#08,#2a
	db #08,#1e,#08,#2c,#08,#2a,#08,#ff
.lb295
	db #82,#2d,#08,#2e,#08,#2a,#08,#2a
	db #08,#25,#08,#27,#08,#29,#08,#22
	db #08,#25,#08,#1e,#08,#2e,#10,#ff
.lb2b3 equ $ + 6
.lb2ad
	db #83,#06,#18,#01,#18,#ff,#83,#12
	db #08,#0d,#08,#0a,#08,#06,#10,#ff
.lb2bd
	db #a0,#d8,#a0,#d8,#ff
.lb2c2
	db #0f,#0f,#0f,#0d,#08
	db #06,#05,#04,#03,#01,#82,#83,#83
.lb2d2 equ $ + 3
	db #89,#90,#99,#0f,#0d,#07,#04,#03
	db #02,#02,#01,#01,#82
	db #85,#88,#89,#9c,#ae
	db #cb
.lb2e2
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
; #83af
; call #aea4	; init
; .l83b2
; call #91aa
; call #a8ee	; play
; ld a,(#a800)	; music end
; cp #00
; jr nz,l83b2
;
.music_info
	db "Basil the Great Mouse Detective (1987)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
