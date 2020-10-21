; Music of Airwolf 2 (1987)(Hit Pack)()()
; Ripped by Megachur the 03/02/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AIRWOLF2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #a500
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la52f equ $ + 7
.la52e equ $ + 6
.la52d equ $ + 5
.la52c equ $ + 4
.la52b equ $ + 3
.la52a equ $ + 2
.la529 equ $ + 1
.la528
	db #00,#00,#00,#00,#01,#00,#00,#02
.la537 equ $ + 7
.la536 equ $ + 6
.la535 equ $ + 5
.la534 equ $ + 4
.la532 equ $ + 2
.la530
	db #00,#00,#00,#00,#00,#00,#00,#00
.la53e equ $ + 6
.la53c equ $ + 4
.la53b equ $ + 3
.la53a equ $ + 2
.la539 equ $ + 1
.la538
	db #01,#00,#00,#02,#00,#00,#00,#00
.la547 equ $ + 7
.la546 equ $ + 6
.la545 equ $ + 5
.la544 equ $ + 4
.la543 equ $ + 3
.la542 equ $ + 2
.la541 equ $ + 1
.la540
	db #0f,#00,#00,#00,#01,#00,#00,#02
.la54f equ $ + 7
.la54e equ $ + 6
.la54d equ $ + 5
.la54c equ $ + 4
.la54a equ $ + 2
.la548
	db #00,#00,#00,#00,#00,#00,#00,#00
.la554 equ $ + 4
.la553 equ $ + 3
.la552 equ $ + 2
.la550
	db #00,#00,#0a,#38,#00
.la55c equ $ + 7
.la55b equ $ + 6
.la55a equ $ + 5
.la559 equ $ + 4
.la558 equ $ + 3
.la557 equ $ + 2
.la556 equ $ + 1
.la555
	db #01,#01,#02,#00,#00,#02,#01,#5f
.la55f equ $ + 2
.la55e equ $ + 1
	db #a5,#00,#0c,#0b,#0a,#09,#09,#09
	db #09,#08,#08,#08,#08,#08,#09,#08
	db #08,#08,#08,#08,#08,#07,#07,#07
	db #06,#06,#06,#05,#05,#05,#04,#04
	db #04,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#02,#02,#02,#02
.la58f equ $ + 2
	db #02,#ff,#0d,#0c,#0b,#0a,#0b,#0b
	db #0b,#0b,#0a,#0a,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#09,#09,#08
	db #08,#08,#08,#07,#07,#07,#06,#06
	db #06,#05,#05,#05,#04,#04,#03,#03
.la5bb equ $ + 6
	db #02,#02,#02,#01,#00,#ff,#0f,#0e
	db #0d,#0c,#0d,#0d,#0d,#0c,#0c,#0b
	db #0b,#0b,#0b,#0a,#09,#08,#08,#08
	db #08,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#02,#02,#02,#01
	db #01,#01,#02,#02,#02,#01,#01,#01
.la5e9 equ $ + 4
	db #02,#02,#02,#ff,#02
.la5ea
	db #01
.la5eb
	dw la58f
.la5ef equ $ + 2
.la5ee equ $ + 1
.la5ed
	db #00,#02,#01
.la5f0
	dw la5bb
.la5f2
	db #00
.la5f3
	ld a,(la558)
	and #01
	jp z,la608
	ld d,#00
	ld e,#08
	jp z,la608
	ld hl,la528
	call la63d
.la608
	ld a,(la558)
	and #02
	jp z,la61a
	ld d,#02
	ld e,#09
	ld hl,la534
	call la63d
.la61a
	ld a,(la558)
	and #04
	jp z,la62c
	ld d,#04
	ld e,#0a
	ld hl,la540
	call la63d
.la62c
	ld a,(la553)
	ld c,#07
	call la652
	ld a,(la552)
	ld c,#06
	call la652
	ret
.la63d
	ld a,(hl)
	inc hl
	ld c,e
	inc e
	call la652
	ld a,(hl)
	inc hl
	ld c,d
	inc d
	call la652
	ld a,(hl)
	ld c,d
	inc d
	call la652
	ret
.la652
	push af
	push bc
	ld b,a
	ld a,c
	ld c,b
	ld b,#f4
	out (c),a
	ld a,#c0
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	ld b,#f4
	out (c),c
	ld bc,#f680
	out (c),c
	out (c),a
	pop bc
	pop af
	ret
.la672
	nop
.la673
	nop
.la674
	ld d,a
	and #0f
	sla a
	ld b,#00
	ld c,a
	ld ix,la6c6
	add ix,bc
	ld a,(ix+#00)
	ld (la672),a
	ld a,(ix+#01)
	ld (la673),a
	ld a,d
	and #70
	srl a
	srl a
	srl a
	srl a
	cp #05
	jr z,la6c5
	jr c,la6b5
	or a
	ld hl,la672
	srl (hl)
	inc hl
	rr (hl)
	cp #06
	jr z,la6c5
	or a
	dec hl
	srl (hl)
	inc hl
	rr (hl)
	jr la6c5
.la6b5
	ld b,a
	ld a,#05
	sub b
	ld b,a
.la6ba
	ld hl,la673
	sla (hl)
	dec hl
	rl (hl)
	inc hl
	djnz la6ba
.la6c5
	ret
.la6c6
	db #00,#00,#00,#77,#00,#71,#00,#6a
	db #00,#64,#00,#5f,#00,#59,#00,#54
	db #00,#50,#00,#4b,#00,#47,#00,#43
	db #00,#3f,#04,#03,#02,#01,#00
.la6e5
	ld a,(la558)
	and #01
	ret z
	ld a,(la55b)
	dec a
	ld (la55b),a
	cp #00
	ret nz
	ld a,(la55a)
	ld (la55b),a
	ld hl,(la55c)
	ld a,(hl)
	cp #ff
	ret z
	ld (la528),a
	inc hl
	ld (la55c),hl
	ld c,#08
	call la652
	ret
.la70f
	ld a,(la558)
	and #02
	ret z
	ld a,(la5ea)
	dec a
	ld (la5ea),a
	cp #00
	ret nz
	ld a,(la5e9)
	ld (la5ea),a
	ld hl,(la5eb)
	ld a,(hl)
	cp #ff
	ret z
	ld (la534),a
	inc hl
	ld (la5eb),hl
	ld c,#09
	call la652
	ret
.la739
	ld a,(la558)
	and #04
	ret z
	ld a,(la543)
	cp #00
	ret nz
	ld a,(la5ef)
	dec a
	ld (la5ef),a
	cp #00
	ret nz
	ld a,(la5ee)
	ld (la5ef),a
	ld hl,(la5f0)
	ld a,(hl)
	cp #ff
	ret z
	ld (la540),a
	inc hl
	ld (la5f0),hl
	ld c,#0a
	call la652
	ret
	;
.play_music
	;
	push af
	ld a,(la555)
	dec a
	ld (la555),a
	cp #00
	jr z,la777
	pop af
	ret
.la777
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,#01
	ld (la555),a
	call la798
	call la6e5
	call la70f
	call la739
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.la798
	ld a,(la556)
	dec a
	ld (la556),a
	ret nz
	ld a,(la557)
	ld (la556),a
.la7a6
	ld a,(la559)
	and #01
	jp z,la812
	ld a,(la52b)
	cp #00
	jp nz,laa63
	ld a,(la52c)
	dec a
	ld (la52c),a
	cp #00
	jr z,la7d3
	ld hl,la52f
	cp (hl)
	jp nz,la812
	jp nc,la812
	ld a,#00
	ld (la55e),a
	jp la812
.la7d3
	ld hl,(la52d)
	ld a,(hl)
	cp #00
	jp z,la8f7
	cp #c8
	jp c,la7e9
	cp #f0
	jp c,la9a8
	jp laa63
.la7e9
	ld (la52c),a
	inc hl
	ld a,(hl)
	inc hl
	ld (la52d),hl
	cp #00
	jp nz,la7fd
	call la97b
	jp la812
.la7fd
	call la674
	ld a,(la672)
	ld (la52a),a
	ld a,(la673)
	ld (la529),a
	ld hl,la55f
	ld (la55c),hl
.la812
	ld a,(la559)
	and #02
	jp z,la87e
	ld a,(la537)
	cp #00
	jp nz,laa66
	ld a,(la538)
	dec a
	ld (la538),a
	cp #00
	jr z,la83f
	ld hl,la53b
	cp (hl)
	jp nz,la87e
	jp nc,la87e
	ld a,#00
	ld (la5ed),a
	jp la87e
.la83f
	ld hl,(la539)
	ld a,(hl)
	cp #00
	jp z,la923
	cp #c8
	jp c,la855
	cp #f0
	jp c,la9f7
	jp laa66
.la855
	ld (la538),a
	inc hl
	ld a,(hl)
	inc hl
	ld (la539),hl
	cp #00
	jp nz,la869
	call la98a
	jp la87e
.la869
	call la674
	ld a,(la672)
	ld (la536),a
	ld a,(la673)
	ld (la535),a
	ld hl,la58f
	ld (la5eb),hl
.la87e
	ld a,(la559)
	and #04
	jp z,la8f3
	ld a,(la543)
	cp #00
	jp z,la894
	call laa69
	jp la8f3
.la894
	ld a,(la544)
	dec a
	ld (la544),a
	cp #00
	jr z,la8b1
	ld hl,la547
	cp (hl)
	jp nz,la8f3
	jp nc,la8f3
	ld a,#00
	ld (la5f2),a
	jp la8f3
.la8b1
	ld hl,(la545)
	ld a,(hl)
	cp #00
	jp z,la94f
	cp #c8
	jp c,la8ca
	cp #f0
	jp c,laa27
	call laa69
	jp la8f3
.la8ca
	ld (la544),a
	inc hl
	ld a,(hl)
	inc hl
	ld (la545),hl
	cp #00
	jp nz,la8de
	call la999
	jp la8f3
.la8de
	call la674
	ld a,(la672)
	ld (la542),a
	ld a,(la673)
	ld (la541),a
	ld hl,la5bb
	ld (la5f0),hl
.la8f3
	call la5f3
	ret
.la8f7
	ld hl,(la530)
	ld a,(hl)
	cp #00
	jr nz,la907
	inc hl
	ld a,(hl)
	cp #00
	jr z,la91b
	dec hl
	ld a,(hl)
.la907
	ld (la52d),a
	inc hl
	ld a,(hl)
	ld (la52e),a
	inc hl
	ld (la530),hl
	ld a,#01
	ld (la52c),a
	jp la7a6
.la91b
	ld hl,(la532)
	ld (la530),hl
	jr la8f7
.la923
	ld hl,(la53c)
	ld a,(hl)
	cp #00
	jr nz,la933
	inc hl
	ld a,(hl)
	cp #00
	jr z,la947
	dec hl
	ld a,(hl)
.la933
	ld (la539),a
	inc hl
	ld a,(hl)
	ld (la53a),a
	inc hl
	ld (la53c),hl
	ld a,#01
	ld (la538),a
	jp la812
.la947
	ld hl,(la53e)
	ld (la53c),hl
	jr la923
.la94f
	ld hl,(la548)
	ld a,(hl)
	cp #00
	jr nz,la95f
	inc hl
	ld a,(hl)
	cp #00
	jr z,la973
	dec hl
	ld a,(hl)
.la95f
	ld (la545),a
	inc hl
	ld a,(hl)
	ld (la546),a
	inc hl
	ld (la548),hl
	ld a,#01
	ld (la544),a
	jp la87e
.la973
	ld hl,(la550)
	ld (la548),hl
	jr la94f
.la97b
	ld a,(la558)
	and #01
	ret z
	ld a,#00
	ld (la52a),a
	ld (la529),a
	ret
.la98a
	ld a,(la558)
	and #02
	ret z
	ld a,#00
	ld (la536),a
	ld (la535),a
	ret
.la999
	ld a,(la558)
	and #04
	ret z
	ld a,#00
	ld (la542),a
	ld (la541),a
	ret
.la9a8
	cp #c8
	jr nz,la9b4
	inc hl
	ld a,(hl)
	ld (la528),a
	jp la9eb
.la9b4
	cp #da
	jr nz,la9c0
	inc hl
	ld a,(hl)
	ld (la52f),a
	jp la9eb
.la9c0
	cp #de
	jp nz,la9d0
	ld a,#00
	ld (la558),a
	ld (la559),a
	jp la9eb
.la9d0
	cp #c9
	jr nz,la9df
	inc hl
	ld a,(hl)
	ld (la557),a
	ld (la556),a
	jp la9eb
.la9df
	cp #ca
	jr nz,la9eb
	inc hl
	ld a,(hl)
	ld (la55a),a
	ld (la55b),a
.la9eb
	inc hl
	ld (la52d),hl
	ld a,#01
	ld (la52c),a
	jp la7a6
.la9f7
	cp #c8
	jr nz,laa03
	inc hl
	ld a,(hl)
	ld (la534),a
	jp laa1b
.laa03
	cp #da
	jr nz,laa0f
	inc hl
	ld a,(hl)
	ld (la53b),a
	jp laa1b
.laa0f
	cp #ca
	jr nz,laa1b
	inc hl
	ld a,(hl)
	ld (la5e9),a
	ld (la5ea),a
.laa1b
	inc hl
	ld (la539),hl
	ld a,#01
	ld (la538),a
	jp la812
.laa27
	cp #c8
	jr nz,laa33
	inc hl
	ld a,(hl)
	ld (la540),a
	jp laa4b
.laa33
	cp #da
	jr nz,laa3f
	inc hl
	ld a,(hl)
	ld (la547),a
	jp laa4b
.laa3f
	cp #ca
	jr nz,laa4b
	inc hl
	ld a,(hl)
	ld (la5ee),a
	ld (la5ef),a
.laa4b
	inc hl
	ld (la545),hl
	ld a,#01
	ld (la544),a
	jp la87e
.laa57
	dw lab23,lab23,lab23,lab23
	dw lab23,lab56
.laa63
	jp la7a6
.laa66
	jp la812
.laa69
	ld (la54d),a
	ld a,(la558)
	and #04
	ret z
	ld a,(la543)
	cp #00
	jp nz,laad0
	inc hl
	ld a,(hl)
	ld (la54c),a
	inc hl
	ld (la545),hl
	ld a,(la54d)
	ld (la543),a
	sub #f0
	sla a
	ld hl,laa57
	ld b,#00
	ld c,a
	add hl,bc
	ld b,h
	ld c,l
	ld a,(bc)
	ld l,a
	inc bc
	ld a,(bc)
	ld h,a
	ld a,(la553)
	ld (la554),a
	ld a,(la540)
	ld (la54f),a
	ld a,(hl)
	cp #00
	jp z,laabe
	ld b,#df
	ld a,(la553)
	and b
	ld (la553),a
	ld a,#01
	ld (la54e),a
	jp laacc
.laabe
	ld b,#fb
	ld a,(la553)
	and b
	ld (la553),a
	ld a,#00
	ld (la54e),a
.laacc
	inc hl
	ld (la54a),hl
.laad0
	ld a,(la54c)
	dec a
	ld (la54c),a
	cp #00
	jp z,lab03
	ld hl,(la54a)
	ld a,(hl)
	ld (la540),a
	inc hl
	ld a,(la54e)
	cp #00
	jp z,laaf3
	ld a,(hl)
	ld (la552),a
	jp laafb
.laaf3
	ld a,(hl)
	ld (la542),a
	inc hl
	ld (la541),a
.laafb
	inc hl
	ld (la54a),hl
	call la5f3
	ret
.lab03
	ld a,(la554)
	ld (la553),a
	ld a,(la54f)
	ld (la540),a
	ld a,#01
	ld (la544),a
	ld a,#00
	ld (la543),a
	ld (la542),a
	ld (la541),a
	call la5f3
	ret
.lab23
	db #01,#0c,#19,#0a,#05,#08,#19,#09
	db #05,#07,#19,#06,#05,#05,#19,#04
	db #05,#03,#19,#02,#05,#01,#19,#00
	db #05,#00,#05,#00,#05,#00,#05,#00
	db #05,#00,#05,#00,#05,#00,#05,#00
	db #05,#00,#05,#00,#05,#00,#05,#00
.lab56 equ $ + 3
	db #05,#00,#05,#01,#0a,#01,#09,#01
	db #08,#01,#07,#01,#06,#01,#06,#01
	db #04,#01,#02,#01,#01,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#01
	;
.init_music1
	;
	ld a,#07
	ld (la558),a
	ld (la559),a
	ld a,#38
	ld (la553),a
	ld a,#01
	ld (la52c),a
	ld (la538),a
	ld (la544),a
	ld a,#02
	ld (la557),a
	ld (la556),a
	ld hl,laced
	ld (la52d),hl
	ld hl,labf1
	ld (la530),hl
	ld hl,laed5
	ld (la539),hl
	ld hl,lac3d
	ld (la53c),hl
	ld hl,lb12c
	ld (la545),hl
	ld hl,lac95
	ld (la548),hl
	ld a,#00
	ld (la52b),a
	ld (la537),a
	ld (la543),a
	ld hl,labef
	ld (la532),hl
	ld hl,lac3b
	ld (la53e),hl
	ld hl,lac93
	ld (la550),hl
	ret
.labf1 equ $ + 2
.labef
	dw laced,lacf8,lad0a,lad02
	dw lad06,lad1a,lad20,lad34
	dw lad34,lad5c,lada4,lad34
	dw lad34,lad5c,ladb5,ladb5
	dw lade1,ladb5,ladb5,lade1
	dw lae55,lae55,lae6d,lae55
	dw lae85,lae55,lae55,lae6d
	dw lae55,lae85,lad34,lad34
	dw lad5c,ladb5,ladb5,lad5c
.lac3d equ $ + 6
.lac3b equ $ + 4
	dw #0000,#0000,laed5,laedc
	dw laee0,laee0,laee0,laee0
	dw laefe,laf1c,laee0,laee0
	dw laf1c,laf1c,laf3a,laf4a
	dw laf4a,laf84,laf3a,laf4a
	dw laf4a,laf84,lafbe,lafbe
	dw lafec,lafbe,lafbe,lafec
	dw lb060,lb060,lb09a,lb060
	dw lb0d4,lb060,lb060,lb09a
	dw lb060,lb0d4,laf4a,laf4a
	dw laf84,lafbe,lafbe,laf84
	dw #0000
.lac95 equ $ + 4
.lac93 equ $ + 2
	dw #0000,lb12c,lb133,lb137
	dw lb13b,lb13b,lb13b,lb13b
	dw lb19d,lb13b,lb13b,lb13b
	dw lb1a1,lb13b,lb13b,lb13b
	dw lb13b,lb13b,lb13b,lb13b
	dw lb13b,lb13b,lb13b,lb13b
	dw lb13b,lb13b,lb13b,lb13b
	dw lb13b,lb1a1,lb1a1,lb13b
	dw lb13b,lb13b,lb13b,lb13b
	dw lb1a1,lb1a1,lb13b,lb13b
	dw lb13b,lb13b,lb13b,lb13b
	dw #0000
.laced equ $ + 2
	db #00,#00,#c8,#0a,#c9,#02,#da,#01
.lacf8 equ $ + 5
	db #ca,#01,#00,#00,#00,#03,#00,#03
.lad02 equ $ + 7
	db #00,#03,#00,#06,#00,#00,#00,#b7
.lad0a equ $ + 7
.lad06 equ $ + 3
	db #00,#00,#00,#c0,#00,#00,#00,#ab
	db #00,#03,#00,#03,#00,#03,#00,#03
.lad1a equ $ + 7
	db #00,#03,#00,#03,#00,#00,#00,#c0
.lad20 equ $ + 5
	db #00,#c0,#00,#00,#00,#06,#00,#0c
	db #00,#09,#00,#06,#00,#03,#00,#06
	db #00,#06,#00,#06,#00,#00,#00,#00
.lad34 equ $ + 1
	db #00,#06,#51,#06,#53,#06,#54,#06
	db #56,#0c,#58,#0c,#51,#06,#48,#06
	db #4c,#06,#53,#06,#54,#18,#56,#0c
	db #54,#06,#49,#06,#54,#0c,#54,#0c
	db #49,#0c,#48,#0c,#53,#18,#58,#00
.lad5c equ $ + 1
	db #00,#06,#56,#06,#54,#06,#53,#06
	db #51,#06,#4b,#06,#49,#06,#48,#06
	db #46,#03,#38,#03,#3a,#03,#3c,#03
	db #41,#03,#43,#03,#45,#03,#46,#03
	db #48,#03,#4a,#03,#4c,#03,#51,#03
	db #53,#03,#55,#03,#56,#36,#58,#03
	db #56,#03,#58,#03,#56,#03,#58,#03
	db #56,#03,#58,#03,#56,#03,#58,#03
	db #56,#03,#58,#03,#56,#0f,#58,#00
.lada4 equ $ + 1
	db #00,#0c,#00,#09,#00,#06,#00,#03
	db #00,#06,#00,#06,#00,#06,#00,#00
.ladb5 equ $ + 2
	db #00,#00,#0c,#58,#0c,#58,#06,#58
	db #06,#56,#06,#55,#06,#53,#06,#51
	db #06,#53,#06,#55,#06,#56,#18,#58
	db #0c,#56,#03,#51,#09,#56,#0c,#54
	db #03,#4b,#09,#54,#0c,#53,#03,#4b
.lade1 equ $ + 6
	db #09,#53,#18,#51,#00,#00,#06,#38
	db #06,#3c,#06,#43,#06,#48,#06,#4c
	db #06,#53,#06,#58,#06,#5c,#06,#63
	db #06,#5c,#06,#58,#06,#53,#06,#4c
	db #06,#48,#06,#43,#06,#3c,#06,#36
	db #06,#3a,#06,#41,#06,#46,#06,#4a
	db #06,#51,#06,#56,#06,#5a,#06,#61
	db #06,#5a,#06,#56,#06,#51,#06,#4a
	db #06,#46,#06,#41,#06,#3a,#06,#38
	db #06,#3c,#06,#43,#06,#48,#06,#4c
	db #06,#53,#06,#58,#06,#5c,#06,#63
	db #06,#5c,#06,#58,#06,#53,#06,#4c
	db #06,#48,#06,#43,#06,#3c,#24,#48
	db #0c,#00,#0c,#00,#09,#00,#06,#00
	db #03,#00,#06,#00,#06,#00,#06,#00
.lae55 equ $ + 2
	db #00,#00,#0c,#48,#18,#51,#0c,#58
	db #18,#56,#06,#54,#06,#53,#06,#51
	db #06,#4b,#30,#51,#24,#61,#0c,#00
.lae6d equ $ + 2
	db #00,#00,#0c,#51,#18,#56,#0c,#61
	db #18,#5b,#06,#59,#06,#58,#06,#56
	db #06,#54,#30,#56,#24,#66,#0c,#00
.lae85 equ $ + 2
	db #00,#00,#03,#56,#03,#53,#03,#51
	db #03,#4a,#03,#56,#03,#53,#03,#51
	db #03,#4a,#03,#56,#03,#53,#03,#51
	db #03,#4a,#03,#56,#03,#53,#03,#51
	db #03,#4a,#06,#55,#2a,#55,#30,#00
	db #03,#56,#03,#53,#03,#51,#03,#4a
	db #03,#56,#03,#53,#03,#51,#03,#4a
	db #03,#56,#03,#53,#03,#51,#03,#4a
	db #03,#56,#03,#53,#03,#51,#03,#4a
	db #18,#58,#18,#68,#18,#68,#18,#58
.laed5 equ $ + 2
	db #00,#00,#da,#02,#ca,#01,#00,#00
.laee0 equ $ + 5
.laedc equ $ + 1
	db #00,#09,#00,#00,#00,#0c,#21,#09
	db #31,#06,#2b,#03,#2b,#06,#28,#06
	db #2b,#06,#31,#0c,#21,#09,#31,#06
	db #2b,#03,#2b,#06,#28,#06,#2b,#06
.laefe equ $ + 3
	db #31,#00,#00,#0c,#16,#09,#26,#06
	db #24,#03,#24,#06,#21,#06,#24,#06
	db #26,#0c,#16,#09,#26,#06,#24,#03
	db #24,#06,#21,#06,#24,#06,#26,#00
.laf1c equ $ + 1
	db #00,#0c,#18,#09,#28,#06,#26,#03
	db #26,#06,#23,#06,#26,#06,#28,#0c
	db #18,#09,#28,#06,#26,#03,#26,#06
.laf3a equ $ + 7
	db #23,#06,#26,#06,#28,#00,#00,#0c
	db #21,#09,#31,#06,#2b,#03,#2b,#06
.laf4a equ $ + 7
	db #28,#06,#2b,#06,#31,#00,#00,#0c
	db #21,#09,#31,#06,#2b,#03,#2b,#06
	db #28,#06,#2b,#06,#31,#0c,#18,#09
	db #28,#06,#26,#03,#26,#06,#23,#06
	db #26,#06,#28,#0c,#16,#09,#26,#06
	db #24,#03,#24,#06,#21,#06,#24,#06
	db #26,#0c,#18,#09,#28,#06,#26,#03
	db #26,#06,#23,#06,#26,#06,#28,#00
.laf84 equ $ + 1
	db #00,#0c,#16,#09,#26,#06,#24,#03
	db #24,#06,#21,#06,#24,#06,#26,#0c
	db #18,#09,#28,#06,#26,#03,#26,#06
	db #23,#06,#26,#06,#28,#0c,#18,#09
	db #28,#06,#26,#03,#26,#06,#23,#06
	db #26,#06,#28,#0c,#18,#09,#28,#06
	db #26,#03,#26,#06,#23,#06,#26,#06
.lafbe equ $ + 3
	db #28,#00,#00,#0c,#21,#09,#31,#06
	db #2b,#03,#2b,#06,#28,#06,#2b,#06
	db #31,#0c,#21,#09,#31,#06,#2b,#03
	db #2b,#06,#28,#06,#2b,#06,#31,#0c
	db #16,#0c,#26,#0c,#14,#0c,#24,#0c
	db #1b,#0c,#2b,#0c,#21,#0c,#31,#00
.lafec equ $ + 1
	db #00,#0c,#28,#09,#28,#06,#33,#03
	db #33,#06,#33,#06,#36,#06,#38,#0c
	db #28,#09,#28,#06,#26,#03,#26,#06
	db #23,#06,#26,#06,#28,#0c,#26,#09
	db #26,#06,#31,#03,#31,#06,#31,#06
	db #34,#06,#36,#0c,#26,#09,#26,#06
	db #24,#03,#24,#06,#21,#06,#24,#06
	db #26,#0c,#28,#09,#28,#06,#33,#03
	db #33,#06,#34,#06,#36,#06,#38,#0c
	db #28,#09,#28,#06,#26,#03,#26,#06
	db #21,#06,#26,#06,#28,#06,#28,#06
	db #38,#06,#2a,#06,#3a,#06,#2b,#06
	db #3b,#06,#2c,#06,#3c,#0c,#28,#09
	db #38,#06,#36,#03,#36,#06,#33,#06
.lb060 equ $ + 5
	db #36,#06,#38,#00,#00,#0c,#21,#09
	db #31,#06,#2b,#03,#2b,#06,#28,#06
	db #2b,#06,#31,#0c,#16,#09,#16,#06
	db #21,#03,#21,#06,#21,#06,#24,#06
	db #26,#0c,#21,#09,#31,#06,#2b,#03
	db #2b,#06,#28,#06,#2b,#06,#31,#0c
	db #21,#09,#31,#06,#2b,#03,#2b,#06
.lb09a equ $ + 7
	db #28,#06,#2b,#06,#31,#00,#00,#0c
	db #16,#09,#26,#06,#24,#03,#24,#06
	db #21,#06,#24,#06,#26,#0c,#1b,#09
	db #2b,#06,#29,#03,#29,#06,#26,#06
	db #29,#06,#2b,#0c,#16,#09,#26,#06
	db #24,#03,#24,#06,#21,#06,#24,#06
	db #26,#0c,#16,#09,#26,#06,#24,#03
	db #24,#06,#21,#06,#24,#06,#26,#00
.lb0d4 equ $ + 1
	db #00,#0c,#16,#09,#16,#06,#21,#03
	db #21,#06,#21,#06,#24,#06,#26,#0c
	db #21,#09,#31,#06,#2b,#03,#2b,#06
	db #28,#06,#2b,#06,#31,#06,#21,#06
	db #31,#06,#23,#06,#33,#06,#24,#06
	db #34,#06,#25,#06,#35,#0c,#16,#09
	db #16,#06,#21,#03,#21,#06,#21,#06
	db #24,#06,#26,#0c,#18,#09,#18,#06
	db #23,#03,#23,#06,#23,#06,#26,#06
	db #28,#0c,#18,#09,#18,#06,#23,#03
	db #23,#06,#23,#06,#26,#06,#28,#00
.lb12c equ $ + 1
	db #00,#da,#02,#ca,#01,#00,#00,#00
.lb137 equ $ + 4
.lb133
	db #09,#00,#00,#00,#c0,#00,#00,#00
.lb13b
	db #f4,#06,#f5,#03,#f5,#03,#f4,#06
	db #f5,#03,#f5,#03,#f4,#06,#f5,#03
	db #f5,#03,#f4,#06,#f5,#03,#f5,#03
	db #f4,#06,#f5,#03,#f5,#03,#f4,#06
	db #f5,#03,#f5,#03,#f4,#06,#f5,#03
	db #f5,#03,#f4,#06,#f5,#03,#f5,#03
	db #f4,#06,#f5,#03,#f5,#03,#f4,#06
	db #f5,#03,#f5,#03,#f4,#06,#f5,#03
	db #f5,#03,#f4,#06,#f5,#03,#f5,#03
	db #f4,#06,#f5,#03,#f5,#03,#f4,#06
	db #f5,#03,#f5,#03,#f4,#06,#f5,#03
	db #f5,#03,#f4,#06,#f5,#03,#f5,#03
.lb1a1 equ $ + 6
.lb19d equ $ + 2
	db #00,#00,#30,#00,#00,#00,#f4,#06
	db #f5,#03,#f5,#03,#f4,#06,#f5,#03
	db #f5,#03,#f4,#06,#f5,#03,#f5,#03
	db #f4,#06,#f5,#03,#f5,#03,#00,#00
	db #00,#00
	;
.init_music2
	;
	ld a,#07
	ld (la558),a
	ld (la559),a
	ld a,#38
	ld (la553),a
	ld a,#01
	ld (la52c),a
	ld (la538),a
	ld (la544),a
	ld a,#02
	ld (la557),a
	ld (la556),a
	ld hl,lb3b2
	ld (la52d),hl
	ld hl,lb221
	ld (la530),hl
	ld hl,lb25b
	ld (la539),hl
	ld hl,lb235
	ld (la53c),hl
	ld hl,lb48d
	ld (la545),hl
	ld hl,lb249
	ld (la548),hl
	ld a,#00
	ld (la52b),a
	ld (la537),a
	ld (la543),a
	ld hl,lb21f
	ld (la532),hl
	ld hl,lb233
	ld (la53e),hl
	ld hl,lb247
	ld (la550),hl
	ret
.lb221 equ $ + 2
.lb21f
	dw lb3b2,lb3bd,lb3c3,lb3c3
	dw lb3e1,lb3ff,lb3ff,lb481
.lb235 equ $ + 6
.lb233 equ $ + 4
	dw #0000,#0000,lb25b,lb262
	dw lb268,lb268,lb286,lb2a4
	dw lb2a4,lb3a6,#0000,#0000
.lb249 equ $ + 2
.lb247
	dw lb48d,lb494,lb4b6,lb4b6
	dw lb4f8,lb53a,lb53a,lb63c
	dw #0000
.lb25b equ $ + 2
	db #00,#00,#ca,#01,#da,#01,#00,#00
.lb268 equ $ + 7
.lb262 equ $ + 1
	db #00,#40,#00,#40,#00,#00,#00,#10
	db #55,#10,#51,#10,#51,#10,#55,#10
	db #58,#10,#53,#10,#53,#10,#58,#10
	db #5a,#10,#56,#10,#59,#10,#55,#30
.lb286 equ $ + 5
	db #5a,#10,#00,#00,#00,#10,#55,#10
	db #51,#10,#51,#10,#55,#10,#53,#10
	db #4c,#10,#4c,#10,#58,#10,#5a,#10
	db #55,#10,#55,#10,#5a,#30,#59,#10
.lb2a4 equ $ + 3
	db #00,#00,#00,#08,#4a,#08,#55,#08
	db #53,#08,#55,#08,#51,#08,#55,#08
	db #4c,#08,#55,#08,#4a,#08,#55,#08
	db #53,#08,#55,#08,#51,#08,#55,#08
	db #4c,#08,#55,#08,#48,#08,#53,#08
	db #51,#08,#53,#08,#4c,#08,#53,#08
	db #4a,#08,#53,#08,#48,#08,#53,#08
	db #51,#08,#53,#08,#4c,#08,#53,#08
	db #4a,#08,#53,#08,#4a,#08,#56,#08
	db #55,#08,#56,#08,#53,#08,#56,#08
	db #51,#08,#56,#08,#4a,#08,#56,#08
	db #55,#08,#56,#08,#53,#08,#56,#08
	db #51,#08,#56,#08,#4a,#08,#55,#08
	db #53,#08,#55,#08,#51,#08,#55,#08
	db #4c,#08,#55,#08,#4a,#08,#55,#08
	db #53,#08,#55,#08,#51,#08,#55,#08
	db #4c,#08,#55,#08,#4a,#08,#5a,#08
	db #58,#08,#5a,#08,#56,#08,#5a,#08
	db #51,#08,#5a,#08,#4a,#08,#5a,#08
	db #58,#08,#5a,#08,#56,#08,#5a,#08
	db #51,#08,#5a,#08,#51,#08,#58,#08
	db #56,#08,#58,#08,#55,#08,#58,#08
	db #53,#08,#58,#08,#51,#08,#58,#08
	db #56,#08,#58,#08,#55,#08,#58,#08
	db #53,#08,#58,#08,#4a,#08,#56,#08
	db #55,#08,#56,#08,#53,#08,#56,#08
	db #51,#08,#56,#08,#4a,#08,#56,#08
	db #55,#08,#56,#08,#53,#08,#56,#08
	db #51,#08,#56,#08,#49,#08,#55,#08
	db #53,#08,#55,#08,#51,#08,#55,#08
	db #4c,#08,#55,#08,#49,#08,#55,#08
	db #53,#08,#55,#08,#51,#08,#55,#08
.lb3a6 equ $ + 5
	db #4c,#08,#55,#00,#00,#08,#4a,#08
	db #51,#08,#55,#28,#5a,#40,#00,#00
.lb3b2 equ $ + 1
	db #00,#c8,#0a,#c9,#01,#da,#01,#ca
.lb3bd equ $ + 4
	db #02,#00,#00,#00,#40,#00,#40,#00
.lb3c3 equ $ + 2
	db #00,#00,#10,#51,#10,#4a,#10,#4a
	db #10,#51,#10,#53,#10,#4c,#10,#4c
	db #10,#53,#10,#51,#10,#4a,#10,#4c
	db #10,#49,#30,#51,#10,#00,#00,#00
.lb3e1
	db #10,#51,#10,#48,#10,#48,#10,#51
	db #10,#4c,#10,#48,#10,#48,#10,#4c
	db #10,#55,#10,#51,#10,#51,#10,#55
.lb3ff equ $ + 6
	db #30,#4c,#10,#00,#00,#00,#10,#3a
	db #10,#41,#10,#45,#10,#4a,#10,#3a
	db #10,#41,#10,#45,#10,#4a,#10,#38
	db #10,#3c,#10,#43,#10,#48,#10,#38
	db #10,#3c,#10,#43,#10,#48,#10,#43
	db #10,#46,#10,#4a,#10,#53,#10,#43
	db #10,#46,#10,#4a,#10,#53,#10,#3a
	db #10,#41,#10,#45,#10,#4a,#10,#3a
	db #10,#41,#10,#45,#10,#4a,#10,#46
	db #10,#4a,#10,#51,#10,#56,#10,#46
	db #10,#4a,#10,#51,#10,#56,#10,#41
	db #10,#45,#10,#48,#10,#51,#10,#41
	db #10,#45,#10,#48,#10,#51,#10,#43
	db #10,#46,#10,#4a,#10,#53,#10,#43
	db #10,#46,#10,#4a,#10,#53,#10,#45
	db #10,#49,#10,#4c,#10,#55,#10,#45
	db #10,#49,#10,#4c,#10,#55,#00,#00
.lb481
	db #08,#45,#08,#4a,#08,#51,#28,#51
.lb48d equ $ + 4
	db #40,#00,#00,#00,#da,#03,#ca,#01
.lb494 equ $ + 3
	db #00,#00,#00,#08,#2a,#08,#2a,#08
	db #3a,#08,#2a,#08,#2a,#08,#2a,#08
	db #3a,#08,#2a,#08,#2a,#08,#2a,#08
	db #3a,#08,#2a,#08,#2a,#08,#2a,#08
.lb4b6 equ $ + 5
	db #3a,#08,#2a,#00,#00,#08,#2a,#08
	db #2a,#08,#3a,#08,#2a,#08,#2a,#08
	db #2a,#08,#3a,#08,#2a,#08,#28,#08
	db #28,#08,#38,#08,#28,#08,#28,#08
	db #28,#08,#38,#08,#28,#08,#26,#08
	db #26,#08,#36,#08,#26,#08,#25,#08
	db #25,#08,#35,#08,#25,#08,#2a,#08
	db #2a,#08,#3a,#08,#2a,#08,#2a,#08
.lb4f8 equ $ + 7
	db #2a,#08,#3a,#08,#2a,#00,#00,#08
	db #31,#08,#31,#08,#41,#08,#31,#08
	db #31,#08,#31,#08,#41,#08,#31,#08
	db #28,#08,#28,#08,#38,#08,#28,#08
	db #28,#08,#28,#08,#38,#08,#28,#08
	db #2a,#08,#2a,#08,#3a,#08,#2a,#08
	db #2a,#08,#2a,#08,#3a,#08,#2a,#08
	db #25,#08,#25,#08,#35,#08,#25,#08
	db #25,#08,#25,#08,#35,#08,#25,#00
.lb53a equ $ + 1
	db #00,#08,#2a,#08,#2a,#08,#3a,#08
	db #2a,#08,#2a,#08,#2a,#08,#3a,#08
	db #2a,#08,#2a,#08,#2a,#08,#3a,#08
	db #2a,#08,#2a,#08,#2a,#08,#3a,#08
	db #2a,#08,#28,#08,#28,#08,#38,#08
	db #28,#08,#28,#08,#28,#08,#38,#08
	db #28,#08,#28,#08,#28,#08,#38,#08
	db #28,#08,#28,#08,#28,#08,#38,#08
	db #28,#08,#23,#08,#23,#08,#33,#08
	db #23,#08,#23,#08,#23,#08,#33,#08
	db #23,#08,#23,#08,#23,#08,#33,#08
	db #23,#08,#23,#08,#23,#08,#33,#08
	db #23,#08,#2a,#08,#2a,#08,#3a,#08
	db #2a,#08,#2a,#08,#2a,#08,#3a,#08
	db #2a,#08,#2a,#08,#2a,#08,#3a,#08
	db #2a,#08,#2a,#08,#2a,#08,#3a,#08
	db #2a,#08,#26,#08,#26,#08,#36,#08
	db #26,#08,#26,#08,#26,#08,#36,#08
	db #26,#08,#26,#08,#26,#08,#36,#08
	db #26,#08,#26,#08,#26,#08,#36,#08
	db #26,#08,#31,#08,#31,#08,#41,#08
	db #31,#08,#31,#08,#31,#08,#41,#08
	db #31,#08,#31,#08,#31,#08,#41,#08
	db #31,#08,#31,#08,#31,#08,#41,#08
	db #31,#08,#23,#08,#23,#08,#36,#08
	db #23,#08,#23,#08,#23,#08,#36,#08
	db #23,#08,#23,#08,#23,#08,#36,#08
	db #23,#08,#23,#08,#23,#08,#36,#08
	db #23,#08,#25,#08,#25,#08,#35,#08
	db #25,#08,#25,#08,#25,#08,#35,#08
	db #25,#08,#25,#08,#25,#08,#35,#08
	db #25,#08,#25,#08,#25,#08,#35,#08
.lb63c equ $ + 3
	db #25,#00,#00,#08,#2a,#08,#2a,#08
	db #3a,#08,#2a,#08,#2a,#08,#2a,#08
	db #3a,#08,#2a,#08,#2a,#08,#2a,#08
	db #3a,#08,#2a,#08,#2a,#08,#2a,#08
	db #3a,#08,#2a,#00,#00,#00
	;
.init_music3
	;
	ld a,#07
	ld (la558),a
	ld (la559),a
	ld a,#38
	ld (la553),a
	ld a,#01
	ld (la52c),a
	ld (la538),a
	ld (la544),a
	ld a,#02
	ld (la557),a
	ld (la556),a
	ld hl,lb732
	ld (la52d),hl
	ld hl,lb6c3
	ld (la530),hl
	ld hl,lb6f1
	ld (la539),hl
	ld hl,lb6d3
	ld (la53c),hl
	ld hl,lb7f5
	ld (la545),hl
	ld hl,lb6e3
	ld (la548),hl
	ld a,#00
	ld (la52b),a
	ld (la537),a
	ld (la543),a
	ld hl,lb6c1
	ld (la532),hl
	ld hl,lb6d1
	ld (la53e),hl
	ld hl,lb6e1
	ld (la550),hl
	ret
.lb6c3 equ $ + 2
.lb6c1
	dw lb732,lb73d,lb74f,lb7a1
	dw lb74f,lb7c3,#0000,#0000
.lb6d3 equ $ + 2
.lb6d1
	dw lb6f1,lb6f8,lb6fc,lb71e
	dw lb6fc,lb728,#0000,#0000
.lb6e3 equ $ + 2
.lb6e1
	dw lb7f5,lb7fc,lb806,lb830
	dw lb806,lb842,#0000
.lb6f1 equ $ + 2
	db #00,#00,#ca,#01,#da,#01,#00,#00
.lb6fc equ $ + 5
.lb6f8 equ $ + 1
	db #00,#30,#00,#00,#00,#0c,#58,#0c
	db #58,#12,#58,#06,#58,#2a,#58,#06
	db #58,#0c,#56,#0c,#56,#12,#56,#06
	db #56,#2a,#56,#06,#56,#0c,#55,#0c
.lb71e equ $ + 7
	db #55,#12,#55,#06,#51,#00,#00,#18
	db #48,#18,#58,#24,#55,#0c,#00,#00
.lb728 equ $ + 1
	db #00,#18,#48,#18,#53,#30,#51,#30
.lb732 equ $ + 3
	db #00,#00,#00,#c8,#0a,#c9,#02,#da
.lb73d equ $ + 6
	db #01,#ca,#04,#00,#00,#00,#06,#41
	db #06,#45,#06,#48,#06,#45,#06,#41
	db #06,#45,#06,#48,#06,#45,#00,#00
.lb74f
	db #06,#41,#06,#45,#06,#48,#06,#45
	db #06,#41,#06,#45,#06,#48,#06,#45
	db #06,#3c,#06,#43,#06,#48,#06,#43
	db #06,#3c,#06,#43,#06,#48,#06,#43
	db #06,#3a,#06,#41,#06,#46,#06,#41
	db #06,#3a,#06,#41,#06,#46,#06,#41
	db #06,#39,#06,#41,#06,#46,#06,#41
	db #06,#39,#06,#41,#06,#46,#06,#41
	db #06,#38,#06,#41,#06,#45,#06,#41
	db #06,#38,#06,#41,#06,#45,#06,#41
.lb7a1 equ $ + 2
	db #00,#00,#06,#38,#06,#3c,#06,#43
	db #06,#3c,#06,#38,#06,#3c,#06,#43
	db #06,#3c,#06,#41,#06,#45,#06,#48
	db #06,#45,#06,#41,#06,#45,#06,#48
.lb7c3 equ $ + 4
	db #06,#45,#00,#00,#06,#38,#06,#3c
	db #06,#43,#06,#3c,#06,#38,#06,#3c
	db #06,#43,#06,#3c,#06,#41,#06,#45
	db #06,#48,#06,#45,#06,#41,#06,#45
	db #06,#48,#06,#45,#06,#41,#06,#45
	db #06,#48,#06,#45,#06,#41,#06,#45
.lb7f5 equ $ + 6
	db #06,#48,#06,#45,#00,#00,#da,#02
.lb7fc equ $ + 5
	db #ca,#02,#00,#00,#00,#0c,#31,#0c
.lb806 equ $ + 7
	db #35,#0c,#38,#0c,#35,#00,#00,#0c
	db #31,#0c,#35,#0c,#38,#0c,#35,#0c
	db #2c,#0c,#33,#0c,#38,#0c,#33,#0c
	db #2a,#0c,#31,#0c,#36,#0c,#31,#0c
	db #29,#0c,#31,#0c,#36,#0c,#31,#0c
	db #28,#0c,#31,#0c,#35,#0c,#31,#00
.lb830 equ $ + 1
	db #00,#0c,#28,#0c,#2c,#0c,#33,#0c
	db #2c,#0c,#31,#0c,#35,#0c,#38,#0c
.lb842 equ $ + 3
	db #35,#00,#00,#0c,#28,#0c,#2c,#0c
	db #33,#0c,#2c,#0c,#31,#0c,#35,#0c
	db #38,#0c,#35,#0c,#31,#0c,#35,#0c
	db #38,#0c,#35,#00,#00
;
.init_music     ; added by Megachur
;
	or a
	jp z,init_music1
	dec a
	jp z,init_music2
	jp init_music3
;
.music_info
	db "Airwolf 2 (1987)(Hit Pack)()",0
	db "",0

	read "music_end.asm"
