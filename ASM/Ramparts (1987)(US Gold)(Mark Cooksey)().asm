; Music of Ramparts (1987)(US Gold)(Mark Cooksey)()
; Ripped by Megachur the 25/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RAMPARTS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #72a0
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

.l72a7 equ $ + 7
.l72a6 equ $ + 6
.l72a5 equ $ + 5
.l72a4 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l72ad equ $ + 5
.l72ab equ $ + 3
.l72a9 equ $ + 1
.l72a8
	db #01,#00,#00,#00,#00,#00,#00,#02
	db #01
.l72b3 equ $ + 2
.l72b1
	dw l7a43,l7a43
	db #00,#00,#02,#01,#00,#00,#00,#00
.l72c4 equ $ + 7
	db #02,#01,#00,#00,#00,#00,#00,#00
.l72c7 equ $ + 2
.l72c5
	db #00,#01,#02,#00,#00,#00,#00,#00
.l72d4 equ $ + 7
.l72d3 equ $ + 6
.l72d2 equ $ + 5
.l72d1 equ $ + 4
.l72d0 equ $ + 3
.l72cf equ $ + 2
.l72ce equ $ + 1
.l72cd
	db #01,#00,#00,#00,#00,#00,#00,#01
.l72d9 equ $ + 4
.l72d7 equ $ + 2
.l72d5
	db #00,#00,#00,#00,#00,#00,#02,#01
.l72df equ $ + 2
.l72dd
	dw l7a43,l7a43
	db #00,#00,#02,#01,#00,#00,#00,#00
.l72f0 equ $ + 7
	db #02,#01,#00,#00,#00,#00,#00,#00
.l72f3 equ $ + 2
.l72f1
	db #00,#01,#02,#00,#00,#00,#00,#00
.l7300 equ $ + 7
.l72ff equ $ + 6
.l72fe equ $ + 5
.l72fd equ $ + 4
.l72fc equ $ + 3
.l72fb equ $ + 2
.l72fa equ $ + 1
.l72f9
	db #02,#00,#00,#00,#00,#00,#00,#01
.l7305 equ $ + 4
.l7303 equ $ + 2
.l7301
	db #00,#00,#00,#00,#00,#00,#02,#01
.l730b equ $ + 2
.l7309
	dw l7a43,l7a43
	db #00,#00,#02,#01,#00,#00,#00,#00
.l731c equ $ + 7
	db #02,#01,#00,#00,#00,#00,#00,#00
.l731f equ $ + 2
.l731d
	db #00,#01,#02,#00,#00,#00,#00,#00
.l732c equ $ + 7
.l732b equ $ + 6
.l7329 equ $ + 4
.l7328 equ $ + 3
.l7327 equ $ + 2
.l7326 equ $ + 1
.l7325
	db #02,#00,#00,#00,#00,#00,#01,#01
.l7331 equ $ + 4
.l7330 equ $ + 3
.l732f equ $ + 2
.l732e equ $ + 1
.l732d
	db #02,#00,#00,#00,#00
;
.play_music
;
	push af
	ld a,(l732b)
	dec a
	ld (l732b),a
	jr z,l733e
	pop af
	ret
.l733e
	push bc
	push de
	push hl
	push ix
	ld a,#01
	ld (l732b),a
	call l73bc
	call l74fb
	call l7579
	call l78db
	ld a,(l72a7)
	and a
	jp z,l736d
	ld a,(l72cd)
	dec a
	ld (l72cd),a
	jr nz,l736d
	ld a,(l72c7)
	ld (l72cd),a
	call l771e
.l736d
	call l7507
	call l7579
	call l78db
	ld a,(l72d3)
	and a
	jp z,l7390
	ld a,(l72f9)
	dec a
	ld (l72f9),a
	jp nz,l7390
	ld a,(l72f3)
	ld (l72f9),a
	call l771e
.l7390
	call l7513
	call l7579
	call l78db
	ld a,(l72ff)
	and a
	jp z,l73b2
	ld a,(l7325)
	dec a
	ld (l7325),a
	jr nz,l73b2
	ld a,(l731f)
	ld (l7325),a
	call l771e
.l73b2
	call l79c2
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l73bc
	ld a,(l732c)
	dec a
	ld (l732c),a
	ret nz
	ld a,(l732d)
	ld (l732c),a
.l73ca
	ld a,(l732f)
	and #01
	jp z,l7430
	call l74fb
	ld a,(l72a7)
	and a
	jp nz,l767c
	ld a,(l72a8)
	dec a
	ld (l72a8),a
	jr z,l73e8
	jp l7430
.l73e8
	ld hl,(l72a9)
	ld a,(hl)
	and a
	jp z,l7533
	cp #c8
	jp c,l73fd
	cp #f0
	jp c,l75aa
	jp l767c
.l73fd
	ld (l72a8),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l72a9),hl
	and a
	jp nz,l740c
	jr l7430
.l740c
	call l7855
	ld a,(l7853)
	ld (l72a6),a
	ld (l72ce),a
	ld (l72c4),a
	ld a,(l7854)
	ld (l72a5),a
	ld (l72c5),a
	ld (l72cf),a
	ld hl,(l72b3)
	ld (l72b1),hl
	call l751f
.l7430
	ld a,(l732f)
	and #02
	jp z,l7496
	call l7507
	ld a,(l72d3)
	and a
	jp nz,l7685
	ld a,(l72d4)
	dec a
	ld (l72d4),a
	jr z,l744e
	jp l7496
.l744e
	ld hl,(l72d5)
	ld a,(hl)
	and a
	jp z,l7539
	cp #c8
	jp c,l7463
	cp #f0
	jp c,l75b0
	jp l7685
.l7463
	ld (l72d4),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l72d5),hl
	and a
	jp nz,l7472
	jr l7496
.l7472
	call l7855
	ld a,(l7853)
	ld (l72d2),a
	ld (l72fa),a
	ld (l72f0),a
	ld a,(l7854)
	ld (l72d1),a
	ld (l72fb),a
	ld (l72f1),a
	ld hl,(l72df)
	ld (l72dd),hl
	call l751f
.l7496
	ld a,(l732f)
	and #04
	jp z,l74f7
	call l7513
	ld a,(l72ff)
	and a
	jp nz,l768e
	ld a,(l7300)
	dec a
	ld (l7300),a
	jr nz,l74f7
	ld hl,(l7301)
	ld a,(hl)
	and a
	jp z,l753f
	cp #c8
	jp c,l74c6
	cp #f0
	jp c,l75b6
	jp l768e
.l74c6
	ld (l7300),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l7301),hl
	and a
	jp z,l74f7
	call l7855
	ld a,(l7853)
	ld (l72fe),a
	ld (l7326),a
	ld (l731c),a
	ld a,(l7854)
	ld (l72fd),a
	ld (l7327),a
	ld (l731d),a
	ld hl,(l730b)
	ld (l7309),hl
	call l751f
.l74f7
	call l79c2
	ret
.l74fb
	push af
	ld ix,l72a4
	ld a,#01
	ld (l7330),a
	pop af
	ret
.l7507
	push af
	ld ix,l72d0
	ld a,#02
	ld (l7330),a
	pop af
	ret
.l7513
	push af
	ld ix,l72fc
	ld a,#04
	ld (l7330),a
	pop af
	ret
.l751f
	xor a
	ld (ix+#1f),a
	ld (ix+#17),a
	ld a,(ix+#15)
	ld (ix+#16),a
	ld a,(ix+#1b)
	ld (ix+#1c),a
	ret
.l7533
	call l7545
	jp l73ca
.l7539
	call l7545
	jp l7430
.l753f
	call l7545
	jp l7496
.l7545
	ld l,(ix+#07)
	ld h,(ix+#08)
	ld a,(hl)
	and a
	jr nz,l7556
	inc hl
	ld a,(hl)
	and a
	jr z,l756b
	dec hl
	ld a,(hl)
.l7556
	ld (ix+#05),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#07),l
	ld (ix+#08),h
	ld a,#01
	ld (ix+#04),a
	ret
.l756b
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#07),l
	ld (ix+#08),h
	jr l7545
.l7579
	ld a,(l7330)
	ld b,a
	ld a,(l732e)
	and b
	ret z
	ld a,(ix+#03)
	and a
	ret nz
	ld a,(ix+#0c)
	dec a
	ld (ix+#0c),a
	ret nz
	ld a,(ix+#0b)
	ld (ix+#0c),a
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	ld a,(hl)
	cp #ff
	ret z
	ld (ix+#00),a
	inc hl
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l75aa
	call l75bc
	jp l73ca
.l75b0
	call l75bc
	jp l7430
.l75b6
	call l75bc
	jp l7496
.l75bc
	ld a,(hl)
	cp #c8
	jp nz,l75c2
.l75c2
	cp #c9
	jp nz,l75d2
	inc hl
	ld a,(hl)
	ld (l732d),a
	ld (l732c),a
	jp l766f
.l75d2
	cp #ca
	jp nz,l75e4
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	ld (ix+#10),a
	jp l766f
.l75e4
	cp #cb
	jp nz,l75f1
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	ld (ix+#0c),a
.l75f1
	cp #dd
	jp nz,l7600
	inc hl
	ld a,(hl)
	ld (ix+#23),a
	ld a,#01
	ld (ix+#29),a
.l7600
	cp #d0
	jp nz,l7621
	inc hl
	ld a,(hl)
	ld (ix+#14),a
	ld (ix+#13),a
	inc hl
	ld a,(hl)
	ld (ix+#15),a
	ld (ix+#16),a
	xor a
	ld (ix+#17),a
	ld a,#01
	ld (ix+#12),a
	jp l766f
.l7621
	cp #d5
	jp nz,l762d
	xor a
	ld (ix+#12),a
	jp l766f
.l762d
	cp #d1
	jp nz,l7658
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	ld (ix+#1a),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	ld (ix+#1c),a
	inc hl
	ld a,(hl)
	ld (ix+#1d),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	xor a
	ld (ix+#1f),a
	ld a,#01
	ld (ix+#18),a
	jp l766f
.l7658
	cp #d6
	jp nz,l7663
	xor a
	ld (ix+#18),a
	jr l766f
.l7663
	cp #de
	jp nz,l766f
	xor a
	ld (l732e),a
	ld (l732f),a
.l766f
	inc hl
	ld (ix+#05),l
	ld (ix+#06),h
	ld a,#01
	ld (ix+#04),a
	ret
.l767c
	call l74fb
	call l7697
	jp l7430
.l7685
	call l7507
	call l7697
	jp l7496
.l768e
	call l7513
	call l7697
	jp l74f7
.l7697
	ld (l7331),a
	ld a,(l732e)
	ld b,a
	ld a,(l7330)
	and b
	ret z
	ld a,(ix+#03)
	and a
	jp nz,l7713
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#05),l
	ld (ix+#06),h
	ld a,(l7331)
	ld (ix+#03),a
	sub #f0
	sla a
	ld hl,l7767
	ld b,#00
	ld c,a
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,b
	ld l,c
	ld a,(l7329)
	ld (ix+#27),a
	ld a,(ix+#00)
	ld (ix+#26),a
	ld a,(hl)
	and a
	jp z,l76fa
	ld a,(l7330)
	sla a
	sla a
	sla a
	ld b,a
	ld a,#ff
	xor b
	ld b,a
	ld a,(l7329)
	and b
	ld (l7329),a
	ld a,#01
	ld (ix+#28),a
	jp l770c
.l76fa
	ld b,#ff
	ld a,(l7330)
	xor b
	ld b,a
	ld a,(l7329)
	and b
	ld (l7329),a
	xor a
	ld (ix+#28),a
.l770c
	inc hl
	ld (ix+#24),l
	ld (ix+#25),h
.l7713
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jp z,l774b
	ret
.l771e
	ld l,(ix+#24)
	ld h,(ix+#25)
	ld a,(hl)
	cp #ff
	jr z,l7744
	ld (ix+#00),a
	inc hl
	ld a,(ix+#28)
	and a
	jp z,l773a
	ld a,(hl)
	ld (l7328),a
	jr l7743
.l773a
	ld a,(hl)
	ld (ix+#02),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
.l7743
	inc hl
.l7744
	ld (ix+#24),l
	ld (ix+#25),h
	ret
.l774b
	ld a,(ix+#27)
	ld (l7329),a
	ld a,(ix+#26)
	ld (ix+#00),a
	ld a,#01
	ld (ix+#04),a
	xor a
	ld (ix+#03),a
	ld (ix+#01),a
	ld (ix+#02),a
	ret
.l7767
	dw l777b,l7792,l77a9,l77c0
	dw l77ee,l7792,l77a9,l77d7
.l777b equ $ + 4
	dw l77ee,l7812:db #00
	db #0e,#00,#50,#0d,#00,#54,#0c,#00
	db #58,#08,#00,#5c,#06,#00,#60,#04
.l7792 equ $ + 6
	db #00,#64,#01,#00,#68,#ff,#00,#0e
	db #00,#64,#0d,#00,#68,#0c,#00,#6c
	db #08,#00,#70,#06,#00,#74,#04,#00
.l77a9 equ $ + 5
	db #78,#01,#00,#7c,#ff,#00,#0e,#00
	db #78,#0d,#00,#7c,#0c,#00,#80,#08
	db #00,#84,#06,#00,#88,#04,#00,#8c
.l77c0 equ $ + 4
	db #01,#00,#90,#ff,#00,#0e,#00,#a0
	db #0d,#00,#a8,#0c,#00,#b0,#08,#00
	db #b8,#06,#00,#c0,#04,#00,#c8,#01
.l77d7 equ $ + 3
	db #00,#d0,#ff,#01,#0f,#1e,#0f,#1e
	db #0e,#1e,#0d,#14,#0a,#1e,#08,#14
	db #06,#1e,#04,#14,#00,#1e,#ff,#00
.l77ee equ $ + 2
	db #00,#ff,#01,#0f,#1e,#0e,#05,#0d
	db #1e,#0c,#05,#0b,#1e,#0a,#05,#09
	db #1e,#08,#05,#07,#1e,#06,#05,#05
	db #1e,#04,#05,#03,#1e,#02,#05,#01
.l7812 equ $ + 6
	db #1e,#01,#05,#00,#00,#ff,#00,#0a
	db #00,#3e,#0a,#00,#1e,#0a,#00,#d2
	db #0a,#00,#93,#0a,#00,#e2,#0a,#00
	db #97,#0a,#00,#d4,#0a,#00,#ea,#0a
	db #00,#3f,#0a,#00,#f3,#0a,#00,#c6
	db #0a,#00,#74,#0a,#00,#d2,#0a,#00
	db #ce,#0a,#00,#f2,#0a,#00,#75,#0a
	db #00,#67,#0a,#00,#c5,#0a,#00,#e8
.l7853 equ $ + 7
	db #0a,#00,#ab,#00,#00,#00,#ff,#00
.l7854
	db #00
.l7855
	ld d,a
	and #0f
	sla a
	ld b,#00
	ld c,a
	push ix
	ld ix,l78ab
	add ix,bc
	ld a,(ix+#00)
	ld (l7853),a
	ld a,(ix+#01)
	ld (l7854),a
	ld a,d
	and #70
	srl a
	srl a
	srl a
	srl a
	cp #05
	jr z,l78a8
	jr c,l7898
	or a
	ld hl,l7853
	srl (hl)
	inc hl
	rr (hl)
	cp #06
	jr z,l78a8
	or a
	dec hl
	srl (hl)
	inc hl
	rr (hl)
	jr l78a8
.l7898
	ld b,a
	ld a,#05
	sub b
	ld b,a
.l789d
	ld hl,l7854
	sla (hl)
	dec hl
	rl (hl)
	inc hl
	djnz l789d
.l78a8
	pop ix
	ret
.l78ab
	db #00,#00,#00,#77,#00,#71,#00,#6a
	db #00,#64,#00,#5f,#00,#59,#00,#54
	db #00,#50,#00,#4b,#00,#47,#00,#43
	db #00,#3f,#04,#03,#02,#01,#00
	ld a,(l732e)
	ld b,a
	ld a,(l7330)
	and b
	ret z
	xor a
	ld (ix+#01),a
	ld (ix+#02),a
	ret
.l78db
	ld a,(l732e)
	ld b,a
	ld a,(l7330)
	and b
	ret z
	ld a,(ix+#03)
	and a
	ret nz
	ld a,(ix+#12)
	and a
	jp z,l7939
	ld a,(ix+#16)
	and a
	jp z,l78fe
	dec a
	ld (ix+#16),a
	jp l7939
.l78fe
	ld a,(ix+#14)
	dec a
	ld (ix+#14),a
	jp nz,l7939
	call l790e
	jp l7939
.l790e
	ld a,(ix+#13)
	ld (ix+#14),a
	ld a,(ix+#17)
	and a
	jr nz,l7928
	srl (ix+#02)
	rr (ix+#01)
	ld a,#01
	ld (ix+#17),a
	ret
.l7928
	ld a,(ix+#2a)
	ld (ix+#02),a
	ld a,(ix+#2b)
	ld (ix+#01),a
	xor a
	ld (ix+#17),a
	ret
.l7939
	ld a,(ix+#18)
	and a
	ret z
	ld a,(ix+#1c)
	and a
	jp z,l794a
	dec a
	ld (ix+#1c),a
	ret
.l794a
	ld a,(ix+#1a)
	dec a
	ld (ix+#1a),a
	ret nz
	call l7956
	ret
.l7956
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1f)
	and a
	jp nz,l796c
	call l79b5
	ld a,#01
	ld (ix+#1f),a
	ret
.l796c
	cp #01
	jp nz,l798a
	xor a
	ld a,(ix+#21)
	adc (ix+#1e)
	ld (ix+#01),a
	ld a,(ix+#20)
	adc (ix+#1d)
	ld (ix+#02),a
	ld a,#02
	ld (ix+#1f),a
	ret
.l798a
	cp #02
	jp nz,l7998
	call l79b5
	ld a,#03
	ld (ix+#1f),a
	ret
.l7998
	cp #03
	jr z,l799d
	ret
.l799d
	scf
	ld a,(ix+#21)
	sbc (ix+#1e)
	ld (ix+#01),a
	ld a,(ix+#20)
	sbc (ix+#1d)
	ld (ix+#02),a
	xor a
	ld (ix+#1f),a
	ret
.l79b5
	ld a,(ix+#21)
	ld (ix+#01),a
	ld a,(ix+#20)
	ld (ix+#02),a
	ret
.l79c2
	ld a,(l732e)
	and #01
	jp z,l79d7
	ld d,#00
	ld e,#08
	jp z,l79d7
	ld hl,l72a4
	call l7a0c
.l79d7
	ld a,(l732e)
	and #02
	jp z,l79e9
	ld d,#02
	ld e,#09
	ld hl,l72d0
	call l7a0c
.l79e9
	ld a,(l732e)
	and #04
	jp z,l79fb
	ld d,#04
	ld e,#0a
	ld hl,l72fc
	call l7a0c
.l79fb
	ld a,(l7329)
	ld c,#07
	call l7a21
	ld a,(l7328)
	ld c,#06
	call l7a21
	ret
.l7a0c
	ld a,(hl)
	inc hl
	ld c,e
	inc e
	call l7a21
	ld a,(hl)
	inc hl
	ld c,d
	inc d
	call l7a21
	ld a,(hl)
	ld c,d
	inc d
	call l7a21
	ret
.l7a21
	push af
	push bc
	di
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
	ei
	ret
.l7a43
	db #0e,#0e,#0d,#0c,#0c,#0c,#0b,#0b
	db #0a,#0a,#0a,#09,#09,#08,#08,#08
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#04,#03,#03,#03,#03,#02,#02
	db #02,#02,#02,#01,#01,#01,#00,#00
	db #ff,#0b,#09,#09,#0a,#09,#09,#08
	db #08,#08,#07,#07,#07,#07,#07,#06
	db #06,#06,#05,#05,#05,#05,#04,#04
	db #03,#03,#03,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#01,#01,#01,#00
	db #00,#ff,#0d,#0c,#0c,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#08,#09,#09
	db #09,#09,#09,#09,#09,#0a,#09,#09
	db #09,#09,#08,#08,#08,#08,#07,#07
	db #07,#07,#06,#06,#06,#06,#05,#05
	db #05,#04,#04,#04,#03,#03,#03,#02
	db #02,#02,#02,#01,#01,#01,#01,#00
	db #ff,#0f,#0f,#0f,#0e,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0a,#09,#08,#08
	db #08,#07,#07,#07,#06,#06,#06,#05
	db #05,#05,#04,#04,#04,#03,#03,#03
	db #02,#02,#02,#01,#01,#01,#00,#ff
;
.init_music1
;
	ld hl,l7bff
	ld (l72a9),hl
	ld hl,l7b57
	ld (l72ab),hl
	ld hl,l7b55
	ld (l72ad),hl
	ld hl,l7fba
	ld (l72d5),hl
	ld hl,l7b99
	ld (l72d7),hl
	ld hl,l7b97
	ld (l72d9),hl
	ld hl,l833b
	ld (l7301),hl
	ld hl,l7bcf
	ld (l7303),hl
	ld hl,l7bcd
	ld (l7305),hl
.l7b29
	ld a,#07
	ld (l732e),a
	ld (l732f),a
	ld a,#38
	ld (l7329),a
	ld a,#01
	ld (l72a8),a
	ld (l72d4),a
	ld (l7300),a
	ld a,#02
	ld (l732c),a
	ld (l732d),a
	ld a,#00
	ld (l72a7),a
	ld (l72d3),a
	ld (l72ff),a
	ret
.l7b57 equ $ + 2
.l7b55
	dw l7bff,l7c9a,l7c9a,l7c10
	dw l7c10,l7c10,l7c94,l7d1e
	dw l7d26,l7d2c,l7d2c,l7dda
	dw l7dda,l7fa6,l7e46,l7e46
	dw l7ecc,l7f30,l7ecc,l7f3c
	dw l7faf,l7dda,l7dda,l7fa6
	dw l7e46,l7e46,l7ecc,l7f30
	dw l7ecc,l7f3c,l7fa6,l7f42
.l7b99 equ $ + 4
.l7b97 equ $ + 2
	dw #0000,l7fba,l802b,l7fc5
	dw l7fd1,l7fd1,l8013,l805d
	dw l805d,l8080,l8080,l8116
	dw l8116,l81fe,l81fe,l8276
	dw l8276,l8116,l8116,l81fe
	dw l81fe,l8276,l8276,l82ee
	dw l82ee,l8322,#0000,#0000
.l7bcf equ $ + 2
.l7bcd
	dw l833b,l8386,l8346,l8356
	dw l8356,l8380,l839e,l839e
	dw l83ca,l83ca,l8482,l8482
	dw l8526,l8526,l857a,l857a
	dw l8482,l8482,l8526,l8526
	dw l857a,l857a,l85ce,#0000
.l7bff equ $ + 2
	db #00,#00,#c9,#01,#d1,#02,#0a,#00
	db #01,#d5,#cb,#03,#ca,#43,#7a,#dd
.l7c10 equ $ + 3
	db #01,#00,#00,#cb,#01,#08,#45,#08
	db #4a,#08,#55,#08,#45,#08,#4a,#08
	db #53,#08,#45,#08,#4a,#08,#51,#08
	db #45,#08,#4a,#08,#4c,#08,#45,#08
	db #4a,#08,#51,#08,#45,#08,#45,#08
	db #4a,#08,#55,#08,#45,#08,#4a,#08
	db #53,#08,#45,#08,#4a,#08,#51,#08
	db #45,#08,#4a,#08,#4c,#08,#45,#08
	db #4a,#08,#51,#08,#45,#08,#45,#08
	db #4a,#08,#55,#08,#46,#08,#4a,#08
	db #53,#08,#45,#08,#4a,#08,#51,#08
	db #46,#08,#4a,#08,#4c,#08,#45,#08
	db #4a,#08,#51,#08,#45,#08,#45,#08
	db #49,#08,#55,#08,#45,#08,#49,#08
	db #53,#08,#45,#08,#49,#08,#51,#08
	db #45,#08,#49,#08,#53,#08,#45,#08
.l7c94 equ $ + 7
	db #49,#08,#4c,#08,#45,#00,#00,#cb
.l7c9a equ $ + 5
	db #06,#80,#51,#00,#00,#cb,#01,#06
	db #45,#06,#49,#06,#4c,#06,#55,#06
	db #45,#06,#49,#06,#4c,#06,#55,#06
	db #49,#06,#4c,#06,#55,#06,#59,#06
	db #49,#06,#4c,#06,#55,#06,#59,#06
	db #4c,#06,#55,#06,#59,#06,#5c,#06
	db #4c,#06,#55,#06,#59,#06,#5c,#06
	db #55,#06,#59,#06,#5c,#06,#65,#06
	db #55,#06,#59,#06,#5c,#06,#65,#06
	db #4a,#06,#51,#06,#55,#06,#5a,#06
	db #4a,#06,#51,#06,#55,#06,#5a,#06
	db #51,#06,#55,#06,#5a,#06,#61,#06
	db #51,#06,#55,#06,#5a,#06,#61,#06
	db #55,#06,#5a,#06,#61,#06,#65,#06
	db #55,#06,#5a,#06,#61,#06,#65,#06
	db #5a,#06,#61,#06,#65,#06,#6a,#06
	db #5a,#06,#61,#06,#65,#06,#6a,#00
.l7d1e equ $ + 1
	db #00,#f2,#0c,#54,#00,#60,#00,#00
.l7d2c equ $ + 7
.l7d26 equ $ + 1
	db #00,#60,#00,#60,#00,#00,#00,#cb
	db #01,#0c,#4a,#0c,#4c,#0c,#51,#0c
	db #53,#18,#55,#0c,#5a,#0c,#5c,#0c
	db #61,#0c,#5c,#0c,#5a,#0c,#59,#cb
	db #02,#30,#5a,#cb,#01,#0c,#56,#0c
	db #55,#0c,#53,#0c,#51,#0c,#4c,#0c
	db #4a,#0c,#49,#0c,#4a,#06,#4c,#06
	db #51,#06,#4c,#06,#51,#cb,#04,#48
	db #4c,#cb,#01,#0c,#4a,#0c,#4c,#0c
	db #51,#0c,#53,#18,#55,#0c,#5a,#0c
	db #5c,#0c,#61,#0c,#5c,#0c,#5a,#0c
	db #59,#cb,#02,#30,#5a,#cb,#01,#06
	db #63,#06,#5a,#06,#56,#06,#53,#06
	db #56,#06,#53,#06,#4a,#06,#46,#06
	db #53,#06,#4a,#06,#46,#06,#43,#06
	db #4a,#06,#46,#06,#43,#06,#3a,#06
	db #39,#06,#3c,#06,#45,#06,#49,#06
	db #3c,#06,#45,#06,#49,#06,#4c,#06
	db #45,#06,#49,#06,#4c,#06,#55,#06
	db #49,#06,#4c,#06,#55,#06,#59,#03
	db #5a,#03,#5c,#03,#5a,#03,#5c,#03
	db #5a,#03,#5c,#03,#5a,#03,#5c,#cb
.l7dda equ $ + 5
	db #03,#48,#5a,#00,#00,#cb,#01,#0c
	db #55,#0c,#53,#0c,#51,#0c,#4c,#0c
	db #4a,#0c,#51,#0c,#55,#0c,#51,#0c
	db #53,#0c,#55,#0c,#53,#0c,#4c,#0c
	db #48,#0c,#4c,#18,#53,#0c,#51,#0c
	db #53,#0c,#51,#0c,#4c,#0c,#4a,#0c
	db #4c,#0c,#51,#0c,#4a,#cb,#04,#60
	db #4c,#cb,#01,#0c,#55,#0c,#53,#0c
	db #51,#0c,#48,#0c,#51,#0c,#53,#0c
	db #55,#0c,#51,#0c,#53,#0c,#55,#0c
	db #53,#0c,#51,#0c,#4c,#0c,#51,#0c
	db #53,#0c,#4c,#0c,#51,#0c,#53,#0c
	db #51,#0c,#4a,#0c,#46,#0c,#46,#0c
	db #51,#0c,#56,#cb,#04,#60,#55,#00
.l7e46 equ $ + 1
	db #00,#cb,#01,#06,#45,#06,#49,#06
	db #55,#06,#45,#06,#49,#06,#53,#06
	db #45,#06,#49,#06,#51,#06,#45,#06
	db #49,#06,#4c,#06,#45,#06,#49,#06
	db #4c,#06,#45,#06,#4a,#06,#51,#06
	db #4c,#12,#4a,#0c,#55,#cb,#02,#30
	db #5a,#cb,#01,#06,#45,#06,#49,#06
	db #55,#06,#45,#06,#49,#06,#53,#06
	db #45,#06,#49,#06,#51,#06,#45,#06
	db #49,#06,#4c,#06,#45,#06,#49,#06
	db #4c,#06,#45,#03,#3a,#03,#3b,#03
	db #3c,#03,#41,#03,#42,#03,#43,#03
	db #44,#03,#45,#03,#46,#03,#47,#03
	db #48,#03,#49,#03,#4a,#03,#4b,#03
	db #4c,#03,#51,#03,#52,#03,#53,#03
	db #54,#03,#55,#03,#56,#03,#57,#03
.l7ecc equ $ + 7
	db #58,#03,#59,#18,#5a,#00,#00,#cb
	db #01,#06,#43,#06,#4a,#06,#56,#06
	db #43,#06,#4a,#06,#55,#06,#43,#06
	db #4a,#06,#53,#06,#43,#06,#4a,#06
	db #55,#06,#43,#06,#4a,#06,#56,#06
	db #4a,#06,#45,#06,#4a,#06,#55,#06
	db #45,#06,#4a,#06,#53,#06,#45,#06
	db #4a,#06,#51,#06,#45,#06,#4a,#06
	db #53,#06,#45,#06,#4a,#06,#55,#06
	db #45,#06,#45,#06,#49,#06,#53,#06
	db #45,#06,#49,#06,#51,#06,#45,#06
	db #49,#06,#4c,#06,#45,#06,#49,#06
	db #51,#06,#45,#06,#49,#06,#53,#06
.l7f30 equ $ + 3
	db #45,#00,#00,#cb,#02,#18,#51,#18
.l7f3c equ $ + 7
	db #53,#18,#55,#18,#51,#00,#00,#cb
.l7f42 equ $ + 5
	db #06,#60,#4a,#00,#00,#ca,#43,#7a
	db #cb,#01,#0c,#45,#0c,#4a,#cb,#06
	db #48,#55,#18,#00,#cb,#01,#0c,#53
	db #0c,#51,#0c,#4c,#0c,#4a,#0c,#4c
	db #0c,#51,#0c,#4c,#0c,#4a,#0c,#48
	db #0c,#4a,#0c,#4c,#0c,#43,#0c,#48
	db #0c,#4c,#cb,#06,#60,#4a,#cb,#01
	db #0c,#45,#0c,#4a,#cb,#06,#48,#55
	db #18,#00,#cb,#01,#0c,#55,#0c,#53
	db #0c,#51,#0c,#53,#0c,#55,#0c,#51
	db #0c,#53,#0c,#55,#0c,#57,#0c,#55
	db #0c,#53,#0c,#55,#0c,#57,#0c,#53
	db #cb,#0a,#c0,#55,#c0,#00,#c0,#00
.l7fa6 equ $ + 1
	db #00,#d6,#d0,#02,#01,#ca,#95,#7a
.l7faf equ $ + 2
	db #00,#00,#d5,#d1,#02,#01,#00,#01
.l7fba equ $ + 5
	db #ca,#43,#7a,#00,#00,#d5,#d6,#cb
	db #03,#dd,#01,#ca,#6c,#7a,#00,#00
.l7fc5
	db #cb,#08,#80,#3a,#80,#36,#80,#33
.l7fd1 equ $ + 4
	db #80,#35,#00,#00,#f7,#18,#f7,#08
	db #f4,#18,#f7,#08,#f7,#10,#f7,#10
	db #f4,#18,#f7,#08,#f7,#18,#f7,#08
	db #f4,#18,#f7,#08,#f7,#10,#f7,#10
	db #f4,#18,#f7,#08,#f7,#18,#f7,#08
	db #f4,#18,#f7,#08,#f7,#10,#f7,#10
	db #f4,#18,#f7,#08,#f7,#18,#f7,#08
	db #f4,#18,#f7,#08,#f7,#10,#f7,#10
.l8013 equ $ + 6
	db #f4,#18,#f7,#08,#00,#00,#f0,#18
	db #f0,#08,#f1,#08,#f1,#10,#f1,#08
	db #f2,#08,#f2,#10,#f2,#08,#f3,#08
.l802b equ $ + 6
	db #f3,#08,#f3,#10,#00,#00,#dd,#02
	db #f9,#30,#f9,#30,#f9,#30,#f9,#30
	db #f9,#30,#f9,#30,#f9,#30,#f9,#30
	db #f9,#30,#f9,#30,#f9,#30,#f9,#30
	db #f9,#30,#f9,#30,#f9,#30,#f9,#30
	db #dd,#01,#00,#00,#60,#00,#60,#00
	db #d0,#02,#01,#cb,#01,#d6,#00,#00
.l805d
	db #f7,#0c,#0c,#41,#0c,#45,#0c,#4a
	db #f7,#0c,#0c,#45,#0c,#41,#0c,#3a
	db #f7,#0c,#0c,#41,#0c,#45,#0c,#4a
	db #f7,#0c,#0c,#45,#0c,#41,#0c,#3a
.l8080 equ $ + 3
	db #d5,#00,#00,#d0,#02,#01,#0c,#3a
	db #0c,#41,#0c,#45,#0c,#4a,#0c,#51
	db #0c,#4a,#0c,#45,#0c,#41,#0c,#3a
	db #0c,#41,#0c,#45,#0c,#4a,#0c,#51
	db #0c,#4a,#0c,#45,#0c,#41,#0c,#43
	db #0c,#46,#0c,#4a,#0c,#53,#0c,#56
	db #0c,#53,#0c,#4a,#0c,#46,#0c,#35
	db #0c,#39,#0c,#3c,#0c,#45,#0c,#49
	db #0c,#45,#0c,#3c,#0c,#39,#0c,#3a
	db #0c,#41,#0c,#45,#0c,#4a,#0c,#51
	db #0c,#4a,#0c,#45,#0c,#41,#0c,#3a
	db #0c,#41,#0c,#45,#0c,#4a,#0c,#51
	db #0c,#4a,#0c,#45,#0c,#41,#0c,#43
	db #0c,#46,#0c,#4a,#0c,#53,#0c,#56
	db #0c,#53,#0c,#4a,#0c,#46,#0c,#35
	db #0c,#39,#0c,#3c,#0c,#45,#0c,#49
	db #0c,#45,#0c,#3c,#0c,#39,#0c,#3a
	db #0c,#41,#0c,#45,#0c,#4a,#0c,#51
	db #0c,#4a,#0c,#45,#0c,#41,#d5,#00
.l8116 equ $ + 1
	db #00,#cb,#01,#d0,#02,#01,#f6,#0c
	db #06,#3a,#06,#41,#06,#45,#06,#4a
	db #06,#55,#06,#5a,#f6,#0c,#06,#55
	db #06,#4a,#06,#45,#06,#41,#06,#3a
	db #06,#35,#f6,#0c,#06,#38,#06,#3c
	db #06,#43,#06,#48,#06,#4c,#06,#53
	db #f6,#0c,#06,#38,#06,#3c,#06,#43
	db #06,#48,#06,#4c,#06,#53,#f6,#0c
	db #06,#36,#06,#3a,#06,#41,#06,#46
	db #06,#4a,#06,#51,#f6,#0c,#06,#36
	db #06,#3a,#06,#41,#06,#46,#06,#4a
	db #06,#51,#f6,#0c,#06,#35,#06,#39
	db #06,#3c,#06,#45,#06,#49,#06,#4c
	db #f6,#0c,#06,#35,#06,#39,#06,#3c
	db #06,#45,#06,#49,#06,#4c,#f6,#0c
	db #06,#41,#06,#45,#06,#48,#06,#51
	db #06,#55,#06,#58,#f6,#0c,#06,#41
	db #06,#45,#06,#48,#06,#51,#06,#55
	db #06,#58,#f6,#0c,#06,#38,#06,#3c
	db #06,#43,#06,#48,#06,#4c,#06,#51
	db #f6,#0c,#06,#38,#06,#3c,#06,#43
	db #06,#48,#06,#4c,#06,#51,#f6,#0c
	db #06,#36,#06,#3a,#06,#41,#06,#46
	db #06,#4a,#06,#51,#f6,#0c,#06,#36
	db #06,#3a,#06,#41,#06,#46,#06,#4a
	db #06,#51,#f6,#0c,#06,#35,#06,#39
	db #06,#3c,#06,#45,#06,#49,#06,#4c
	db #f6,#0c,#06,#35,#06,#39,#06,#3c
	db #06,#45,#06,#49,#06,#4c,#d5,#00
.l81fe equ $ + 1
	db #00,#cb,#01,#d0,#02,#01,#f5,#0c
	db #06,#35,#06,#39,#06,#3c,#06,#45
	db #06,#49,#06,#4c,#f5,#0c,#06,#35
	db #06,#39,#06,#3c,#06,#45,#06,#49
	db #06,#4c,#f5,#0c,#06,#3a,#06,#41
	db #06,#45,#06,#4a,#06,#51,#06,#55
	db #f5,#0c,#06,#3a,#06,#41,#06,#45
	db #06,#4a,#06,#51,#06,#55,#f5,#0c
	db #06,#35,#06,#39,#06,#3c,#06,#45
	db #06,#49,#06,#4c,#f5,#0c,#06,#35
	db #06,#39,#06,#3c,#06,#45,#06,#49
	db #06,#4c,#f5,#0c,#06,#3a,#06,#41
	db #06,#45,#06,#4a,#06,#51,#06,#55
	db #f5,#0c,#06,#3a,#06,#41,#06,#45
	db #06,#4a,#06,#51,#06,#55,#d5,#00
.l8276 equ $ + 1
	db #00,#cb,#01,#d0,#02,#01,#f6,#0c
	db #06,#3a,#06,#43,#06,#46,#06,#4a
	db #06,#53,#06,#56,#f6,#0c,#06,#3a
	db #06,#43,#06,#46,#06,#4a,#06,#53
	db #06,#56,#f6,#0c,#06,#3a,#06,#41
	db #06,#45,#06,#4a,#06,#51,#06,#55
	db #f6,#0c,#06,#3a,#06,#41,#06,#45
	db #06,#4a,#06,#51,#06,#55,#f6,#0c
	db #06,#35,#06,#39,#06,#3c,#06,#45
	db #06,#49,#06,#4c,#f6,#0c,#06,#35
	db #06,#39,#06,#3c,#06,#45,#06,#49
	db #06,#4c,#f6,#0c,#06,#3a,#06,#41
	db #06,#45,#06,#4a,#06,#51,#06,#55
	db #f6,#0c,#06,#3a,#06,#41,#06,#45
	db #06,#4a,#06,#51,#06,#55,#d5,#00
.l82ee equ $ + 1
	db #00,#cb,#01,#f7,#12,#f7,#06,#f4
	db #12,#f7,#06,#f7,#12,#f7,#06,#f4
	db #12,#f7,#06,#f7,#12,#f7,#06,#f4
	db #12,#f7,#06,#f7,#12,#f7,#06,#f4
	db #12,#f7,#06,#f7,#12,#f7,#06,#f4
	db #12,#f7,#06,#f7,#12,#f7,#06,#f4
.l8322 equ $ + 5
	db #12,#f7,#06,#00,#00,#f7,#12,#f7
	db #06,#f4,#12,#f7,#06,#f7,#12,#f7
	db #06,#f4,#12,#f7,#06,#cb,#0a,#c0
.l833b equ $ + 6
	db #49,#c0,#00,#c0,#00,#00,#d5,#d6
	db #cb,#03,#dd,#01,#ca,#cc,#7a,#00
.l8346 equ $ + 1
	db #00,#80,#00,#80,#00,#80,#00,#60
	db #00,#f2,#08,#f2,#10,#f2,#08,#00
.l8356 equ $ + 1
	db #00,#cb,#02,#18,#1a,#08,#1a,#08
	db #2a,#50,#1a,#08,#18,#18,#26,#08
	db #26,#58,#26,#08,#25,#18,#23,#08
	db #23,#08,#33,#50,#23,#08,#26,#18
	db #25,#08,#25,#08,#35,#50,#25,#08
.l8380 equ $ + 3
	db #29,#00,#00,#cb,#08,#80,#1a,#00
.l8386 equ $ + 1
	db #00,#cb,#0a,#60,#25,#60,#29,#48
	db #1a,#18,#1c,#30,#21,#18,#23,#18
	db #24,#60,#25,#60,#19,#c0,#1a,#00
.l839e equ $ + 1
	db #00,#cb,#01,#12,#1a,#06,#1a,#f4
	db #0c,#06,#18,#06,#19,#12,#1a,#06
	db #2a,#f4,#0c,#06,#18,#06,#19,#12
	db #1a,#06,#1a,#f4,#0c,#06,#18,#06
	db #19,#12,#1a,#06,#2a,#f4,#0c,#06
.l83ca equ $ + 5
	db #18,#06,#19,#00,#00,#cb,#01,#12
	db #1a,#06,#1a,#f4,#0c,#06,#18,#06
	db #19,#12,#1a,#06,#2a,#f4,#0c,#06
	db #18,#06,#19,#12,#1a,#06,#1a,#f4
	db #0c,#06,#18,#06,#19,#12,#1a,#06
	db #2a,#f4,#0c,#06,#28,#06,#26,#12
	db #23,#06,#23,#f4,#0c,#06,#21,#06
	db #22,#12,#23,#06,#33,#f4,#0c,#06
	db #23,#06,#24,#12,#25,#06,#25,#f4
	db #0c,#06,#23,#06,#24,#12,#25,#06
	db #35,#f4,#0c,#06,#23,#06,#21,#12
	db #1a,#06,#1a,#f4,#0c,#06,#18,#06
	db #19,#12,#1a,#06,#2a,#f4,#0c,#06
	db #18,#06,#19,#12,#1a,#06,#1a,#f4
	db #0c,#06,#18,#06,#19,#12,#1a,#06
	db #2a,#f4,#0c,#06,#28,#06,#26,#12
	db #23,#06,#23,#f4,#0c,#06,#21,#06
	db #22,#12,#23,#06,#23,#f4,#0c,#06
	db #23,#06,#24,#12,#25,#06,#25,#f4
	db #0c,#06,#23,#06,#24,#12,#25,#06
	db #35,#f4,#0c,#06,#23,#06,#21,#12
	db #1a,#06,#1a,#f4,#0c,#06,#18,#06
	db #19,#12,#1a,#06,#2a,#f4,#0c,#06
.l8482 equ $ + 5
	db #18,#06,#19,#00,#00,#cb,#01,#12
	db #1a,#06,#2a,#f4,#0c,#06,#18,#06
	db #19,#12,#1a,#06,#2a,#f4,#0c,#06
	db #21,#06,#1c,#12,#18,#06,#28,#f4
	db #0c,#06,#28,#06,#23,#12,#18,#06
	db #18,#f4,#0c,#06,#28,#06,#23,#12
	db #26,#06,#36,#f4,#0c,#06,#36,#06
	db #31,#12,#26,#06,#26,#f4,#0c,#06
	db #26,#06,#21,#12,#25,#06,#25,#f4
	db #0c,#06,#35,#06,#2c,#12,#25,#06
	db #25,#f4,#0c,#06,#35,#06,#2c,#12
	db #21,#06,#21,#f4,#0c,#06,#31,#06
	db #25,#12,#21,#06,#21,#f4,#0c,#06
	db #31,#06,#28,#12,#18,#06,#18,#f4
	db #0c,#06,#28,#06,#23,#12,#18,#06
	db #18,#f4,#0c,#06,#28,#06,#23,#12
	db #26,#06,#36,#f4,#0c,#06,#36,#06
	db #31,#12,#26,#06,#26,#f4,#0c,#06
	db #36,#06,#31,#12,#25,#06,#25,#f4
	db #0c,#06,#35,#06,#2c,#12,#25,#06
	db #25,#f4,#0c,#06,#35,#06,#2c,#00
.l8526 equ $ + 1
	db #00,#cb,#01,#12,#25,#06,#25,#f4
	db #0c,#06,#23,#06,#24,#12,#25,#06
	db #25,#f4,#0c,#06,#18,#06,#19,#12
	db #1a,#06,#1a,#f4,#0c,#06,#18,#06
	db #19,#12,#1a,#06,#1a,#f4,#0c,#06
	db #23,#06,#24,#12,#25,#06,#25,#f4
	db #0c,#06,#23,#06,#24,#12,#25,#06
	db #25,#f4,#0c,#06,#18,#06,#19,#12
	db #1a,#06,#1a,#f4,#0c,#06,#18,#06
	db #19,#12,#1a,#06,#1a,#f4,#0c,#06
.l857a equ $ + 5
	db #18,#06,#19,#00,#00,#cb,#01,#12
	db #23,#06,#23,#f4,#0c,#06,#21,#06
	db #22,#12,#23,#06,#23,#f4,#0c,#06
	db #21,#06,#22,#12,#25,#06,#25,#f4
	db #0c,#06,#25,#06,#25,#12,#25,#06
	db #25,#f4,#0c,#06,#25,#06,#25,#12
	db #25,#06,#25,#f4,#0c,#06,#23,#06
	db #24,#12,#25,#06,#25,#f4,#0c,#06
	db #23,#06,#24,#12,#1a,#06,#1a,#f4
	db #0c,#06,#18,#06,#19,#12,#1a,#06
	db #1a,#f4,#0c,#06,#18,#06,#19,#00
.l85ce equ $ + 1
	db #00,#cb,#08,#48,#1a,#08,#1a,#08
	db #1a,#08,#1a,#60,#23,#60,#18,#48
	db #1a,#08,#1a,#08,#1a,#08,#1a,#60
	db #26,#60,#21,#60,#23,#cb,#0a,#c0
	db #25,#c0,#00,#c0,#00,#00
;
.init_music2
;
	ld hl,l8686
	ld (l72a9),hl
	ld hl,l862e
	ld (l72ab),hl
	ld hl,l862c
	ld (l72ad),hl
	ld hl,l870c
	ld (l72d5),hl
	ld hl,l864c
	ld (l72d7),hl
	ld hl,l864a
	ld (l72d9),hl
	ld hl,l8794
	ld (l7301),hl
	ld hl,l866a
	ld (l7303),hl
	ld hl,l8668
	ld (l7305),hl
	jp l7b29
.l862e equ $ + 2
.l862c
	dw l8686,l8697,l869f,l869f
	dw l86eb,l86eb,l869f,l869f
	dw l86eb,l86eb,l869f,l869f
.l864a equ $ + 6
	dw l8703,#0000,#0000,l870c
.l864c
	dw l871c,l8721,l8721,l876f
	dw l876f,l8721,l8721,l876f
	dw l876f,l8721,l8721,l878b
.l866a equ $ + 6
.l8668 equ $ + 4
	dw #0000,#0000,l8794,l879f
	dw l87a7,l87a7,l87d5,l87d5
	dw l87a7,l87a7,l87d5,l87d5
	dw l87a7,l87a7,l87eb,#0000
.l8686 equ $ + 2
	db #00,#00,#c9,#01,#d1,#02,#01,#00
	db #01,#d5,#cb,#02,#ca,#43,#7a,#dd
.l8697 equ $ + 3
	db #01,#00,#00,#cb,#01,#08,#4a,#08
.l869f equ $ + 3
	db #4a,#00,#00,#cb,#02,#10,#4a,#10
	db #55,#10,#55,#08,#53,#08,#55,#08
	db #53,#08,#4c,#10,#48,#08,#4a,#08
	db #4c,#08,#51,#08,#4c,#08,#4a,#08
	db #51,#cb,#04,#30,#4c,#10,#48,#10
	db #51,#10,#55,#04,#53,#04,#55,#04
	db #53,#04,#51,#08,#4c,#08,#51,#08
	db #53,#08,#4c,#04,#51,#04,#53,#04
	db #51,#04,#4c,#08,#4a,#08,#51,#10
.l86eb equ $ + 7
	db #4c,#cb,#04,#30,#4a,#00,#00,#cb
	db #02,#10,#4a,#10,#4a,#10,#4c,#20
	db #51,#10,#55,#10,#53,#10,#51,#10
.l8703 equ $ + 7
	db #4c,#cb,#04,#30,#51,#00,#00,#cb
	db #04,#60,#4a,#60,#00,#de,#00,#00
.l870c
	db #d5,#d6,#cb,#02,#dd,#01,#d1,#02
	db #01,#00,#01,#ca,#95,#7a,#00,#00
.l8721 equ $ + 5
.l871c
	db #08,#00,#08,#00,#00,#cb,#02,#10
	db #41,#10,#51,#10,#51,#08,#4c,#08
	db #51,#08,#4c,#08,#48,#10,#43,#08
	db #41,#08,#43,#08,#4a,#08,#48,#08
	db #46,#08,#4a,#cb,#04,#30,#49,#cb
	db #02,#10,#45,#10,#48,#10,#51,#04
	db #4c,#04,#51,#04,#4c,#04,#4a,#08
	db #48,#08,#4a,#08,#4c,#08,#48,#04
	db #4a,#04,#4c,#04,#4a,#04,#48,#08
	db #46,#08,#4a,#10,#49,#cb,#04,#30
.l876f equ $ + 3
	db #42,#00,#00,#cb,#02,#10,#41,#10
	db #41,#10,#43,#10,#45,#10,#45,#10
	db #51,#10,#46,#10,#48,#10,#48,#10
.l878b equ $ + 7
	db #45,#10,#45,#10,#45,#00,#00,#cb
	db #03,#60,#42,#60,#00,#60,#00,#00
.l8794
	db #d5,#d6,#cb,#03,#dd,#01,#ca,#cc
.l879f equ $ + 3
	db #7a,#00,#00,#cb,#02,#08,#00,#08
.l87a7 equ $ + 3
	db #00,#00,#00,#cb,#02,#20,#1a,#10
	db #1a,#20,#28,#10,#25,#10,#1a,#10
	db #26,#10,#23,#10,#25,#08,#25,#08
	db #27,#08,#29,#08,#25,#20,#21,#10
	db #21,#20,#28,#10,#25,#10,#26,#10
	db #23,#10,#25,#cb,#04,#30,#1a,#00
.l87d5 equ $ + 1
	db #00,#cb,#02,#20,#1a,#10,#18,#20
	db #21,#10,#21,#10,#23,#10,#25,#10
.l87eb equ $ + 7
	db #28,#cb,#04,#30,#21,#00,#00,#cb
	db #05,#60,#1a,#60,#00,#00,#00
;
.init_music3
;
	ld hl,l883e
	ld (l72a9),hl
	ld hl,l882e
	ld (l72ab),hl
	ld hl,l882c
	ld (l72ad),hl
	ld hl,l88a8
	ld (l72d5),hl
	ld hl,l8834
	ld (l72d7),hl
	ld hl,l8832
	ld (l72d9),hl
	ld hl,l8904
	ld (l7301),hl
	ld hl,l883a
	ld (l7303),hl
	ld hl,l8838
	ld (l7305),hl
	jp l7b29
.l8832 equ $ + 6
.l882e equ $ + 2
.l882c
	dw l883e,l884f,#0000,l88a8
.l883a equ $ + 6
.l8838 equ $ + 4
.l8834
	dw l88b8,#0000,l8904,l890f
	dw #0000
.l883e
	db #c9,#01,#d5,#cb,#02,#d1,#02,#01
	db #00,#01,#dd,#01,#ca,#43,#7a,#00
.l884f equ $ + 1
	db #00,#cb,#02,#06,#48,#06,#4a,#06
	db #4c,#0c,#51,#06,#48,#0c,#4a,#06
	db #48,#0c,#45,#06,#41,#0c,#43,#06
	db #45,#18,#38,#06,#43,#06,#45,#06
	db #47,#06,#48,#06,#4a,#06,#4c,#06
	db #51,#06,#53,#30,#51,#0c,#4c,#06
	db #48,#0c,#4a,#06,#46,#0c,#48,#06
	db #45,#0c,#46,#06,#43,#18,#3c,#06
	db #41,#06,#43,#06,#45,#06,#46,#06
	db #48,#06,#4a,#0c,#4c,#18,#51,#18
	db #48,#cb,#04,#60,#51,#60,#00,#de
.l88a8 equ $ + 2
	db #00,#00,#d5,#d6,#cb,#02,#dd,#01
	db #d1,#02,#01,#00,#01,#ca,#95,#7a
.l88b8 equ $ + 2
	db #00,#00,#cb,#02,#12,#00,#0c,#41
	db #0c,#35,#0c,#41,#0c,#35,#0c,#41
	db #0c,#35,#0c,#41,#0c,#35,#0c,#43
	db #0c,#37,#0c,#43,#0c,#37,#0c,#43
	db #0c,#37,#0c,#43,#0c,#37,#0c,#3c
	db #0c,#33,#0c,#3c,#0c,#33,#0c,#3c
	db #0c,#33,#0c,#3c,#0c,#33,#0c,#41
	db #0c,#35,#0c,#41,#0c,#35,#0c,#41
	db #0c,#35,#0c,#41,#0c,#35,#cb,#02
.l8904 equ $ + 6
	db #60,#45,#60,#00,#00,#00,#d5,#d6
	db #cb,#02,#dd,#01,#ca,#cc,#7a,#00
.l890f equ $ + 1
	db #00,#cb,#02,#12,#00,#0c,#21,#0c
	db #31,#0c,#21,#0c,#31,#0c,#21,#0c
	db #31,#0c,#21,#0c,#31,#0c,#23,#0c
	db #33,#0c,#23,#0c,#33,#0c,#23,#0c
	db #33,#0c,#23,#0c,#33,#0c,#18,#0c
	db #2c,#0c,#18,#0c,#2c,#0c,#18,#0c
	db #2c,#0c,#18,#0c,#2c,#0c,#21,#0c
	db #31,#0c,#21,#0c,#31,#18,#21,#18
	db #18,#cb,#04,#60,#21,#60,#00,#00
;
.init_music4
;
	ld hl,l883e
	ld (l72a9),hl
	ld hl,l8991
	ld (l72ab),hl
	ld hl,l898f
	ld (l72ad),hl
	ld hl,l88a8
	ld (l72d5),hl
	ld hl,l8997
	ld (l72d7),hl
	ld hl,l8995
	ld (l72d9),hl
	ld hl,l8904
	ld (l7301),hl
	ld hl,l899d
	ld (l7303),hl
	ld hl,l899b
	ld (l7305),hl
	jp l7b29
.l8995 equ $ + 6
.l8991 equ $ + 2
.l898f
	dw l883e,l89a1,#0000,l88a8
.l899d equ $ + 6
.l899b equ $ + 4
.l8997
	dw l89ea,#0000,l8904,l8a36
	dw #0000
.l89a1
	db #cb,#02,#12,#55,#06,#56,#0c,#55
	db #06,#53,#06,#51,#12,#53,#06,#55
	db #0c,#53,#06,#51,#06,#4c,#12,#51
	db #06,#53,#0c,#51,#06,#4c,#06,#4a
	db #30,#4c,#12,#55,#06,#56,#0c,#55
	db #06,#53,#06,#51,#12,#53,#06,#55
	db #0c,#53,#06,#51,#06,#4c,#0c,#51
	db #06,#53,#06,#51,#0c,#4c,#06,#4a
	db #06,#48,#30,#4a,#60,#00,#de,#00
.l89ea equ $ + 1
	db #00,#cb,#02,#12,#51,#06,#53,#0c
	db #51,#06,#4c,#06,#4a,#12,#4c,#06
	db #51,#0c,#4c,#06,#4a,#06,#48,#12
	db #4a,#06,#4c,#0c,#4a,#06,#48,#06
	db #46,#18,#49,#18,#45,#12,#51,#06
	db #53,#0c,#51,#06,#4c,#06,#4a,#12
	db #4c,#06,#51,#0c,#4c,#06,#4a,#06
	db #48,#0c,#4a,#06,#4c,#06,#4a,#0c
	db #43,#06,#43,#06,#43,#cb,#01,#30
.l8a36 equ $ + 5
	db #42,#60,#00,#00,#00,#cb,#02,#18
	db #1a,#18,#26,#18,#28,#18,#25,#18
	db #26,#18,#23,#18,#25,#18,#29,#18
	db #1a,#18,#26,#18,#28,#18,#25,#18
	db #26,#18,#28,#30,#1a,#60,#00,#00
.l8a60 equ $ + 7
.l8a5f equ $ + 6
.l8a5e equ $ + 5
.l8a5d equ $ + 4
.l8a5c equ $ + 3
.l8a5b equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8a68 equ $ + 7
.l8a67 equ $ + 6
.l8a66 equ $ + 5
.l8a65 equ $ + 4
.l8a64 equ $ + 3
.l8a63 equ $ + 2
.l8a62 equ $ + 1
.l8a61
	db #00,#00,#00,#00,#3f,#00,#00,#00
.l8a6c equ $ + 3
.l8a6a equ $ + 1
.l8a69
	db #00,#00,#00,#00
	push af
	push bc
	push hl
	call l8a77
	pop hl
	pop bc
	pop af
	ret
.l8a77
	ld a,(l8a68)
	and a
	jr nz,l8a85
	ld a,(l8a69)
	and a
	ret z
	jp l8acf
.l8a85
	sla a
	ld (l8a69),a
	ld hl,l8bf0
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,b
	ld l,c
	ld a,(hl)
	ld (l8a66),a
	ld a,#01
	ld (l8a67),a
	inc hl
	ld a,(hl)
	ld (l8a6c),a
	inc hl
	ld a,(hl)
	ld (l8a65),a
	inc hl
	ld a,(hl)
	ld (l8a62),a
	ld c,#0d
	call l8b7d
	inc hl
	ld a,(hl)
	ld (l8a64),a
	ld c,#0c
	call l8b7d
	inc hl
	ld a,(hl)
	ld (l8a63),a
	ld c,#0b
	call l8b7d
	xor a
	ld (l8a68),a
	inc hl
	ld (l8a6a),hl
.l8acf
	ld a,(l8a67)
	dec a
	ld (l8a67),a
	ret nz
	ld a,(l8a66)
	ld (l8a67),a
	ld hl,(l8a6a)
.l8ae0
	ld a,(hl)
	cp #ff
	jp z,l8b6c
	cp #40
	jr nz,l8af7
	inc hl
	ld a,(hl)
	ld (l8a64),a
	inc hl
	ld a,(hl)
	ld (l8a63),a
	inc hl
	jr l8ae0
.l8af7
	cp #20
	jr nz,l8b03
	inc hl
	ld a,(hl)
	ld (l8a65),a
	inc hl
	jr l8ae0
.l8b03
	cp #10
	jr nz,l8b27
	ld a,(l8a5b)
	cp #10
	jr z,l8b1a
	ld a,(hl)
	ld (l8a5b),a
	ld a,(l8a62)
	ld c,#0d
	call l8b7d
.l8b1a
	inc hl
	ld a,(hl)
	ld (l8a5c),a
	inc hl
	ld a,(hl)
	ld (l8a5d),a
	jp l8b64
.l8b27
	cp #90
	jr nz,l8b46
	ld a,(l8a5b)
	cp #90
	jr z,l8b3e
	ld a,(hl)
	ld (l8a5b),a
	ld a,(l8a62)
	ld c,#0d
	call l8b7d
.l8b3e
	inc hl
	ld a,(hl)
	ld (l8a61),a
	jp l8b64
.l8b46
	and #80
	jr nz,l8b5b
	ld a,(hl)
	ld (l8a5b),a
	inc hl
	ld a,(hl)
	ld (l8a5c),a
	inc hl
	ld a,(hl)
	ld (l8a5d),a
	jp l8b64
.l8b5b
	ld a,(hl)
	ld (l8a5b),a
	inc hl
	ld a,(hl)
	ld (l8a61),a
.l8b64
	inc hl
	ld (l8a6a),hl
	call l8b9f
	ret
.l8b6c
	xor a
	ld (l8a68),a
	ld (l8a69),a
	ld (l8a5b),a
	ld (l8a5e),a
	call l8b9f
	ret
.l8b7d
	push af
	push bc
	di
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
	ei
	pop bc
	pop af
	ret
.l8b9f
	ld a,(l8a5b)
	ld c,#08
	call l8b7d
	ld a,(l8a5e)
	ld c,#09
	call l8b7d
	ld a,(l8a5d)
	ld c,#00
	call l8b7d
	ld a,(l8a60)
	ld c,#02
	call l8b7d
	ld a,(l8a5c)
	ld c,#01
	call l8b7d
	ld a,(l8a5f)
	ld c,#03
	call l8b7d
	ld a,(l8a61)
	ld c,#06
	call l8b7d
	ld a,(l8a63)
	ld c,#0b
	call l8b7d
	ld a,(l8a64)
	ld c,#0c
	call l8b7d
	ld a,(l8a65)
	ld c,#07
	call l8b7d
	ret
.l8bf0
	dw l8c08,l8c08,l8c1f,l8c34
	dw l8c63,l8c88,l8cd7,l8d23
	dw l8d66,l8d85,l8dd7,l8dd7
.l8c08
	db #10,#00,#36,#00,#00,#00,#8f,#1e
	db #0c,#00,#fa,#8f,#1e,#8f,#1e,#8f
.l8c1f equ $ + 7
	db #1e,#8f,#1e,#00,#00,#00,#ff,#02
	db #00,#37,#09,#0a,#00,#90,#1b,#90
	db #1c,#90,#1d,#90,#1e,#90,#1f,#90
.l8c34 equ $ + 4
	db #1f,#90,#1f,#ff,#08,#00,#37,#00
	db #00,#00,#8f,#1f,#8f,#1c,#8f,#1f
	db #8f,#1e,#8f,#1f,#8f,#1c,#8f,#1e
	db #8f,#1f,#8f,#1b,#8f,#14,#8e,#1f
	db #8c,#1c,#8a,#1d,#88,#1f,#86,#1b
	db #84,#1f,#82,#1f,#81,#1e,#80,#1e
.l8c63 equ $ + 3
	db #80,#1e,#ff,#01,#00,#37,#0e,#03
	db #00,#90,#05,#90,#07,#90,#09,#90
	db #0a,#90,#0c,#90,#0e,#90,#10,#90
	db #12,#90,#14,#90,#16,#90,#18,#90
	db #1a,#90,#1c,#90,#1e,#90,#1e,#ff
.l8c88
	db #01,#00,#3e,#09,#0a,#00,#10,#01
	db #de,#10,#01,#dc,#10,#01,#d7,#10
	db #01,#d2,#10,#01,#cd,#10,#01,#c8
	db #10,#01,#c3,#10,#01,#be,#10,#01
	db #b9,#10,#01,#b4,#10,#01,#af,#10
	db #01,#aa,#10,#01,#a5,#10,#01,#a0
	db #10,#01,#9b,#10,#01,#96,#10,#01
	db #91,#10,#01,#8c,#10,#01,#87,#10
	db #01,#82,#10,#01,#7d,#10,#01,#7a
.l8cd7 equ $ + 7
	db #10,#01,#7a,#10,#01,#7a,#ff,#02
	db #00,#3e,#00,#00,#00,#0f,#00,#3c
	db #0f,#00,#3e,#0f,#00,#40,#0f,#00
	db #42,#0f,#00,#40,#0f,#00,#3e,#0f
	db #00,#3c,#0f,#00,#3a,#0f,#00,#38
	db #0f,#00,#36,#0f,#00,#34,#0f,#00
	db #32,#0f,#00,#34,#0f,#00,#32,#0f
	db #00,#30,#0f,#00,#32,#0f,#00,#34
	db #0f,#00,#36,#0f,#00,#38,#0f,#00
	db #3a,#0f,#00,#3c,#0f,#00,#3c,#00
.l8d23 equ $ + 3
	db #00,#00,#ff,#01,#00,#37,#09,#10
	db #00,#90,#1e,#90,#1c,#90,#1a,#90
	db #18,#90,#16,#90,#14,#90,#12,#90
	db #10,#90,#0e,#90,#0c,#90,#05,#90
	db #14,#90,#05,#90,#14,#90,#06,#90
	db #16,#90,#07,#90,#18,#90,#07,#90
	db #1a,#90,#08,#90,#1c,#90,#08,#90
	db #1c,#90,#09,#90,#1e,#90,#0a,#90
.l8d66 equ $ + 6
	db #1f,#90,#0a,#90,#1f,#ff,#02,#00
	db #3e,#09,#08,#00,#10,#00,#ef,#10
	db #00,#be,#10,#00,#9f,#10,#00,#77
	db #10,#00,#5f,#10,#00,#50,#10,#00
.l8d85 equ $ + 5
	db #3c,#10,#00,#2f,#ff,#01,#00,#3e
	db #00,#00,#00,#0e,#00,#77,#0e,#00
	db #7a,#0e,#00,#7f,#0e,#00,#82,#0e
	db #00,#86,#0e,#00,#8a,#0e,#00,#8e
	db #0e,#00,#92,#0e,#00,#96,#0d,#00
	db #9b,#0d,#00,#9f,#0d,#00,#a5,#0d
	db #00,#a9,#0c,#00,#af,#0c,#00,#b4
	db #0b,#00,#ba,#0a,#00,#be,#0a,#00
	db #c4,#0a,#00,#c9,#0a,#00,#ce,#0a
	db #00,#d5,#0a,#00,#e1,#0a,#00,#ef
.l8dd7 equ $ + 7
	db #0a,#00,#ef,#00,#00,#00,#ff,#02
	db #00,#37,#09,#08,#00,#90,#05,#90
	db #06,#90,#07,#90,#08,#90,#09,#90
	db #0a,#90,#0c,#90,#0e,#90,#10,#90
	db #14,#90,#16,#90,#18,#90,#1a,#90
	db #1c,#90,#1e,#90,#1e,#ff,#00
;
; init music #7af3 #85f3 #87f3 #8956
; play #7332
;
.init_music	; added by Megachur
;
	or a
	jp z,init_music1
	dec a
	jp z,init_music2
	dec a
	jp z,init_music3
	jp init_music4
;
.music_info
	db "Ramparts (1987)(US Gold)(Mark Cooksey)",0
	db "",0

	read "music_end.asm"
