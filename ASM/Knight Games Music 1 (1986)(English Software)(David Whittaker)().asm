; Music of Knight Games Music 1 (1986)(English Software)(David Whittaker)()
; Ripped by Megachur the 01/09/2017
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "KNIGHGM1.BIN"
	ENDIF

music_date_rip_day		equ 01
music_date_rip_month	equ 09
music_date_rip_year		equ 2017
music_adr				equ &8000
first_theme				equ 0
last_theme				equ 1	; 0 -> 1

	read "music_header.asm"
;
.real_init_music
;
	ld a,#00
	ld (l8452),a
	ld hl,l8d69
	ld (l84e3),hl
	ld hl,l8d8b
	ld (l84e5),hl
	ld hl,l8d99
	ld (l84e7),hl
	ld a,(l8451)
	cp #01
	jr z,l8040
	ld hl,l8e50
	ld (l84e3),hl
.l8024
	inc hl
	ld a,(hl)
	and a
	jr nz,l8024
	inc hl
	ld a,(hl)
	and a
	jr nz,l8024
	inc hl
	ld (l84e5),hl
.l8032
	inc hl
	ld a,(hl)
	and a
	jr nz,l8032
	inc hl
	ld a,(hl)
	and a
	jr nz,l8032
	inc hl
	ld (l84e7),hl
.l8040
	ld hl,l84e3
	ld a,(hl)
	ld (l84e9),a
	ld (l84ef),a
	inc hl
	ld a,(hl)
	ld (l84ea),a
	ld (l84f0),a
	inc hl
	ld a,(hl)
	ld (l84eb),a
	ld (l84f1),a
	inc hl
	ld a,(hl)
	ld (l84ec),a
	ld (l84f2),a
	inc hl
	ld a,(hl)
	ld (l84ed),a
	ld (l84f3),a
	inc hl
	ld a,(hl)
	ld (l84ee),a
	ld (l84f4),a
	call l84f5
	call l8502
	call l850f
	ld hl,(l8465)
	inc hl
	ld a,(hl)
	ld (l845d),a
	ld (l845e),a
	call l80f7
	ld a,#00
	ld (l845f),a
	ld (l8460),a
	ld (l8461),a
	ld (l84a0),a
	ld (l84a1),a
	ld (l84a2),a
	ld (l8471),a
	ld (l8472),a
	ld (l8473),a
	ld (l8474),a
	ld (l8475),a
	ld (l8476),a
	ld (l847a),a
	ld (l847b),a
	ld (l847c),a
	ld (l84bd),a
	ld (l84be),a
	ld (l84bf),a
	ld (l84c8),a
	ld a,#01
	ld (l8453),a
	ld (l8454),a
	ld (l8455),a
	ld (l8452),a
	ret
.l80d3
	push bc
	push de
	ld a,c
	ld c,b
	call lbd34		; modified by Megachur
	pop de
	pop bc
	ret
	or #ed
	ld c,c
	ld a,#c0
	out (c),a
	nop
	nop
	out (c),c
	exx
	out (c),e
	exx
	add a
	out (c),a
	nop
	nop
	out (c),c
	exx
	pop de
	pop bc
	ret
;
.stop_music
.l80f7
;
	ld b,#00
	ld c,#0d
.l80fb
	call l80d3
	dec c
	jp p,l80fb
	ld b,#3f
	ld a,b
	ld (l844a),a
	ld c,#07
	call l80d3
	ret
.l810e
	pop hl
	pop de
	pop bc
	pop af
	ret
;
.play_music
;
	push af
	push bc
	push de
	push hl
	ld a,(l8452)
	cp #00
	jr z,l810e
	call l87ee
	call l88b7
	call l851c
	call l870d
	call l864b
	call l8b44
	ld hl,l845e
	dec (hl)
	jr nz,l810e
	ld a,(l845d)
	ld (hl),a
	ld a,(l845f)
	cp #00
	jp nz,l823a
	ld a,#00
	ld (l84a0),a
	ld (l84c4),a
	ld (l8494),a
	ld (l8491),a
	ld (l8471),a
	ld (l8483),a
	ld a,(l8474)
	and #f0
	ld (l8477),a
	ld a,(l847a)
	and #f0
	ld (l847d),a
	ld hl,#0000
	ld (l8456),hl
	ld hl,#0000
	ld (l8458),hl
	ld hl,#0000
	ld (l84bb),hl
	ld a,#01
	ld (l8486),a
.l817d
	ld hl,#0000
	ld (l844b),hl
.l8183
	ld hl,(l8465)
	ld (l844d),hl
	ld de,(l844b)
	add hl,de
	ld a,(hl)
	cp #7f
	jr nz,l81ad
	ld hl,(l84e9)
	inc hl
	inc hl
	ld (l84e9),hl
.l819b
	call l84f5
	ld hl,(l8465)
	ld a,h
	or l
	jr nz,l817d
	ld hl,(l84ef)
	ld (l84e9),hl
	jr l819b
.l81ad
	cp #80
	jr c,l81d6
	ld hl,l844b
	inc (hl)
	and #7f
	cp #20
	jr c,l81c0
	call l8ae1
	jr l8183
.l81c0
	add a
	ld e,a
	ld d,#00
	ld hl,l896d
	add hl,de
	ld a,(hl)
	ld (l81d2),a
	inc hl
	ld a,(hl)
	ld (l81d3),a
.l81d3 equ $ + 2
.l81d2 equ $ + 1
	call l8cdc
	jr l8183
.l81d6
	push af
	ld a,(l8462)
	ld (l845f),a
	ld a,(l84c3)
	ld (l84c0),a
	pop af
	ld (l849d),a
	call l87ad
	ld a,(l8453)
	cp #00
	jr z,l822b
	ld b,#00
	ld c,#08
	call l80d3
	ld a,(l84c7)
	ld b,a
	ld c,#06
	call l80d3
	ld hl,l848f
	ld b,(hl)
	ld a,b
	ld (l846b),a
	ld c,#00
	call l80d3
	inc hl
	ld b,(hl)
	ld a,b
	ld (l846e),a
	ld c,#01
	call l80d3
	ld a,(l844a)
	or #09
	ld hl,l845a
	and (hl)
	ld (l844a),a
	ld b,a
	ld c,#07
	call l80d3
.l822b
	ld hl,l844b
	inc (hl)
	ld hl,(l8465)
	ld de,(l844b)
	add hl,de
	ld (l8465),hl
.l823a
	ld hl,l845f
	dec (hl)
	ld a,(l8460)
	cp #00
	jp nz,l833e
	ld a,#00
	ld (l84a1),a
	ld (l84c5),a
	ld (l8495),a
	ld (l8492),a
	ld (l8472),a
	ld (l8484),a
	ld a,(l8475)
	and #f0
	ld (l8478),a
	ld a,(l847b)
	and #f0
	ld (l847e),a
	ld hl,#0001
	ld (l8456),hl
	ld hl,#0002
	ld (l8458),hl
	ld hl,#0007
	ld (l84bb),hl
	ld a,#01
	ld (l8487),a
.l8281
	ld hl,#0000
	ld (l844b),hl
.l8287
	ld hl,(l8467)
	ld (l844d),hl
	ld de,(l844b)
	add hl,de
	ld a,(hl)
	cp #7f
	jr nz,l82b1
	ld hl,(l84eb)
	inc hl
	inc hl
	ld (l84eb),hl
.l829f
	call l8502
	ld hl,(l8467)
	ld a,h
	or l
	jr nz,l8281
	ld hl,(l84f1)
	ld (l84eb),hl
	jr l829f
.l82b1
	cp #80
	jr c,l82da
	ld hl,l844b
	inc (hl)
	and #7f
	cp #20
	jr c,l82c4
	call l8ae1
	jr l8287
.l82c4
	add a
	ld e,a
	ld d,#00
	ld hl,l896d
	add hl,de
	ld a,(hl)
	ld (l82d6),a
	inc hl
	ld a,(hl)
	ld (l82d7),a
.l82d7 equ $ + 2
.l82d6 equ $ + 1
	call l8b0a
	jr l8287
.l82da
	push af
	ld a,(l8463)
	ld (l8460),a
	ld a,(l84c3)
	ld (l84c1),a
	pop af
	ld (l849e),a
	call l87ad
	ld a,(l8454)
	cp #00
	jr z,l832f
	ld b,#00
	ld c,#09
	call l80d3
	ld a,(l84c7)
	ld b,a
	ld c,#06
	call l80d3
	ld hl,l848f
	ld b,(hl)
	ld a,b
	ld (l846c),a
	ld c,#02
	call l80d3
	inc hl
	ld b,(hl)
	ld a,b
	ld (l846f),a
	ld c,#03
	call l80d3
	ld a,(l844a)
	or #12
	ld hl,l845b
	and (hl)
	ld (l844a),a
	ld b,a
	ld c,#07
	call l80d3
.l832f
	ld hl,l844b
	inc (hl)
	ld hl,(l8467)
	ld de,(l844b)
	add hl,de
	ld (l8467),hl
.l833e
	ld hl,l8460
	dec (hl)
	ld a,(l8461)
	cp #00
	jp nz,l8442
	ld a,#00
	ld (l84a2),a
	ld (l84c6),a
	ld (l8496),a
	ld (l8493),a
	ld (l8473),a
	ld (l8485),a
	ld a,(l8476)
	and #f0
	ld (l8479),a
	ld a,(l847c)
	and #f0
	ld (l847f),a
	ld hl,#0002
	ld (l8456),hl
	ld hl,#0004
	ld (l8458),hl
	ld hl,#000e
	ld (l84bb),hl
	ld a,#01
	ld (l8488),a
.l8385
	ld hl,#0000
	ld (l844b),hl
.l838b
	ld hl,(l8469)
	ld (l844d),hl
	ld de,(l844b)
	add hl,de
	ld a,(hl)
	cp #7f
	jr nz,l83b5
	ld hl,(l84ed)
	inc hl
	inc hl
	ld (l84ed),hl
.l83a3
	call l850f
	ld hl,(l8469)
	ld a,h
	or l
	jr nz,l8385
	ld hl,(l84f3)
	ld (l84ed),hl
	jr l83a3
.l83b5
	cp #80
	jr c,l83de
	ld hl,l844b
	inc (hl)
	and #7f
	cp #20
	jr c,l83c8
	call l8ae1
	jr l838b
.l83c8
	add a
	ld e,a
	ld d,#00
	ld hl,l896d
	add hl,de
	ld a,(hl)
	ld (l83da),a
	inc hl
	ld a,(hl)
	ld (l83db),a
.l83db equ $ + 2
.l83da equ $ + 1
	call l8d57
	jr l838b
.l83de
	push af
	ld a,(l8464)
	ld (l8461),a
	ld a,(l84c3)
	ld (l84c2),a
	pop af
	ld (l849f),a
	call l87ad
	ld a,(l8455)
	cp #00
	jr z,l8433
	ld b,#00
	ld c,#0a
	call l80d3
	ld a,(l84c7)
	ld b,a
	ld c,#06
	call l80d3
	ld hl,l848f
	ld b,(hl)
	ld a,b
	ld (l846d),a
	ld c,#04
	call l80d3
	inc hl
	ld b,(hl)
	ld a,b
	ld (l8470),a
	ld c,#05
	call l80d3
	ld a,(l844a)
	or #24
	ld hl,l845c
	and (hl)
	ld (l844a),a
	ld b,a
	ld c,#07
	call l80d3
.l8433
	ld hl,l844b
	inc (hl)
	ld hl,(l8469)
	ld de,(l844b)
	add hl,de
	ld (l8469),hl
.l8442
	ld hl,l8461
	dec (hl)
	jp l810e
.l8450 equ $ + 7
.l844f equ $ + 6
.l844d equ $ + 4
.l844b equ $ + 2
.l844a equ $ + 1
	db #c9,#1c,#04,#00,#a6,#90,#00,#00
.l8458 equ $ + 7
.l8456 equ $ + 5
.l8455 equ $ + 4
.l8454 equ $ + 3
.l8453 equ $ + 2
.l8452 equ $ + 1
.l8451
	db #01,#01,#01,#01,#01,#6c,#84,#03
.l8460 equ $ + 7
.l845f equ $ + 6
.l845e equ $ + 5
.l845d equ $ + 4
.l845c equ $ + 3
.l845b equ $ + 2
.l845a equ $ + 1
	db #00,#fe,#fd,#df,#06,#02,#02,#00
.l8468 equ $ + 7
.l8467 equ $ + 6
.l8466 equ $ + 5
.l8465 equ $ + 4
.l8464 equ $ + 3
.l8463 equ $ + 2
.l8462 equ $ + 1
.l8461
	db #00,#1a,#02,#02,#3d,#8f,#e9,#8f
.l8470 equ $ + 7
.l846f equ $ + 6
.l846e equ $ + 5
.l846d equ $ + 4
.l846c equ $ + 3
.l846b equ $ + 2
.l846a equ $ + 1
.l8469
	db #aa,#90,#c8,#84,#7c,#00,#03,#07
.l8478 equ $ + 7
.l8477 equ $ + 6
.l8476 equ $ + 5
.l8475 equ $ + 4
.l8474 equ $ + 3
.l8473 equ $ + 2
.l8472 equ $ + 1
.l8471
	db #08,#0e,#06,#1f,#1f,#1f,#10,#10
.l8480 equ $ + 7
.l847f equ $ + 6
.l847e equ $ + 5
.l847d equ $ + 4
.l847c equ $ + 3
.l847b equ $ + 2
.l847a equ $ + 1
.l8479
	db #10,#61,#61,#11,#30,#30,#10,#08
.l8488 equ $ + 7
.l8487 equ $ + 6
.l8486 equ $ + 5
.l8485 equ $ + 4
.l8484 equ $ + 3
.l8483 equ $ + 2
.l8482 equ $ + 1
.l8481
	db #08,#05,#80,#80,#80,#01,#01,#01
.l8490 equ $ + 7
.l848f equ $ + 6
.l848e equ $ + 5
.l848d equ $ + 4
.l848c equ $ + 3
.l848b equ $ + 2
.l848a equ $ + 1
.l8489
	db #00,#08,#ff,#01,#01,#01,#7c,#07
.l8497 equ $ + 6
.l8496 equ $ + 5
.l8495 equ $ + 4
.l8494 equ $ + 3
.l8493 equ $ + 2
.l8492 equ $ + 1
.l8491
	db #00,#00,#00,#00,#00,#00,#00,#00
.l84a0 equ $ + 7
.l849f equ $ + 6
.l849e equ $ + 5
.l849d equ $ + 4
.l849c equ $ + 3
.l849b equ $ + 2
.l849a equ $ + 1
	db #00,#00,#00,#00,#33,#11,#00,#00
.l84a6 equ $ + 5
.l84a5 equ $ + 4
.l84a4 equ $ + 3
.l84a3 equ $ + 2
.l84a2 equ $ + 1
.l84a1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l84ad equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l84b4 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l84c0 equ $ + 7
.l84bf equ $ + 6
.l84be equ $ + 5
.l84bd equ $ + 4
.l84bb equ $ + 2
	db #00,#00,#0e,#00,#8c,#8c,#00,#00
.l84c8 equ $ + 7
.l84c7 equ $ + 6
.l84c6 equ $ + 5
.l84c5 equ $ + 4
.l84c4 equ $ + 3
.l84c3 equ $ + 2
.l84c2 equ $ + 1
.l84c1
	db #00,#00,#00,#00,#00,#00,#04,#00
	db #00,#00
.l84cb
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
.l84ea equ $ + 7
.l84e9 equ $ + 6
.l84e7 equ $ + 4
.l84e5 equ $ + 2
.l84e3
	dw l8e50,#8e88,#8eca,#8e68
.l84f2 equ $ + 7
.l84f1 equ $ + 6
.l84f0 equ $ + 5
.l84ef equ $ + 4
.l84ee equ $ + 3
.l84ed equ $ + 2
.l84ec equ $ + 1
.l84eb
	dw #8ea4,#8ecc,l8e50,#8e88
.l84f4 equ $ + 1
.l84f3
	dw #8eca
.l84f5
	ld hl,(l84e9)
	ld a,(hl)
	ld (l8465),a
	inc hl
	ld a,(hl)
	ld (l8466),a
	ret
.l8502
	ld hl,(l84eb)
	ld a,(hl)
	ld (l8467),a
	inc hl
	ld a,(hl)
	ld (l8468),a
	ret
.l850f
	ld hl,(l84ed)
	ld a,(hl)
	ld (l8469),a
	inc hl
	ld a,(hl)
	ld (l846a),a
	ret
.l851c
	ld a,(l8453)
	cp #00
	jr z,l8544
	ld a,(l84bd)
	cp #00
	jr z,l8544
	ld hl,l84c0
	ld a,(hl)
	cp #00
	jr z,l8535
	dec (hl)
	jr l8544
.l8535
	ld hl,#0000
	ld (l8456),hl
	ld hl,#0001
	ld (l8458),hl
	call l8597
.l8544
	ld a,(l8454)
	cp #00
	jr z,l856c
	ld a,(l84be)
	cp #00
	jr z,l856c
	ld hl,l84c1
	ld a,(hl)
	cp #00
	jr z,l855d
	dec (hl)
	jr l856c
.l855d
	ld hl,#0001
	ld (l8456),hl
	ld hl,#0003
	ld (l8458),hl
	call l8597
.l856c
	ld a,(l8455)
	cp #00
	jr z,l8594
	ld a,(l84bf)
	cp #00
	jr z,l8594
	ld hl,l84c2
	ld a,(hl)
	cp #00
	jr z,l8585
	dec (hl)
	jr l8594
.l8585
	ld hl,#0002
	ld (l8456),hl
	ld hl,#0005
	ld (l8458),hl
	call l8597
.l8594
	jp l8618
.l8597
	ld a,(l8489)
	ld (l848a),a
	ld de,(l8456)
	ld hl,l849d
	add hl,de
	ld a,(hl)
	ld hl,l848a
	cp #40
	jr nc,l85bf
	sla (hl)
	cp #30
	jr nc,l85bf
	sla (hl)
	cp #20
	sla (hl)
	cp #10
	jr nc,l85bf
	sla (hl)
.l85bf
	ld a,(l848b)
	and a
	jp m,l85ef
	ld hl,l846b
	ld de,(l8456)
	add hl,de
	ld (l8456),hl
	ld a,(hl)
	ld hl,l848a
	add (hl)
	push af
	ld hl,(l8456)
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	adc #00
	ld bc,(l8458)
	ld b,a
	call l80d3
	dec c
	pop af
	ld b,a
	call l80d3
	ret
.l85ef
	ld hl,l846b
	ld de,(l8456)
	add hl,de
	ld (l8456),hl
	ld a,(hl)
	ld hl,l848a
	sub (hl)
	push af
	ld hl,(l8456)
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	sbc #00
	ld bc,(l8458)
	ld b,a
	call l80d3
	dec c
	pop af
	ld b,a
	call l80d3
	ret
.l8618
	ld a,(l848c)
	and a
	jp m,l8633
	ld de,l8489
	ld a,(de)
	ld hl,l848d
	add (hl)
	ld (de),a
	ld hl,l848e
	cp (hl)
	ret nz
	ld a,#ff
	ld (l848c),a
	ret
.l8633
	ld de,l8489
	ld a,(de)
	ld hl,l848d
	sub (hl)
	ld (de),a
	ret nz
	ld a,#01
	ld (l848c),a
	ld a,(l848b)
	xor #fe
	ld (l848b),a
	ret
.l864b
	ld a,(l8453)
	cp #00
	jr z,l8668
	ld a,(l8491)
	cp #00
	jr z,l8668
	ld hl,#0000
	ld (l8456),hl
	ld hl,#0001
	ld (l8458),hl
	call l86a3
.l8668
	ld a,(l8454)
	cp #00
	jr z,l8685
	ld a,(l8492)
	cp #00
	jr z,l8685
	ld hl,#0001
	ld (l8456),hl
	ld hl,#0003
	ld (l8458),hl
	call l86a3
.l8685
	ld a,(l8455)
	cp #00
	jr z,l86a2
	ld a,(l8493)
	cp #00
	jr z,l86a2
	ld hl,#0002
	ld (l8456),hl
	ld hl,#0005
	ld (l8458),hl
	call l86a3
.l86a2
	ret
.l86a3
	ld a,(l845e)
	ld hl,l845d
	sub (hl)
	ret nz
	ld hl,l8491
	ld de,(l8456)
	add hl,de
	ld a,(hl)
	and a
	jp p,l86f5
	ld hl,l849d
	ld de,(l8456)
	add hl,de
	ld a,(hl)
	sub #01
	ld (hl),a
	and #0f
	cp #0f
	jr nz,l86ce
	ld a,(hl)
	sub #04
	ld (hl),a
.l86ce
	ld a,(hl)
	call l87ad
	ld hl,l846b
	ld de,(l8456)
	add hl,de
	ld a,(l848f)
	ld (hl),a
	push af
	inc hl
	inc hl
	inc hl
	ld a,(l8490)
	ld (hl),a
	ld bc,(l8458)
	ld b,a
	call l80d3
	dec c
	pop af
	ld b,a
	call l80d3
	ret
.l86f5
	ld hl,l849d
	ld de,(l8456)
	add hl,de
	ld a,(hl)
	add #01
	ld (hl),a
	and #0f
	cp #0c
	jr nz,l870b
	ld a,(hl)
	add #04
	ld (hl),a
.l870b
	jr l86ce
.l870d
	ld a,(l8453)
	cp #00
	jr z,l8724
	ld a,(l84c4)
	cp #00
	jr z,l8724
	ld hl,#0000
	ld (l8456),hl
	call l8751
.l8724
	ld a,(l8454)
	cp #00
	jr z,l873b
	ld a,(l84c5)
	cp #00
	jr z,l873b
	ld hl,#0001
	ld (l8456),hl
	call l8751
.l873b
	ld a,(l8455)
	cp #00
	ret z
	ld a,(l84c6)
	cp #00
	ret z
	ld hl,#0002
	ld (l8456),hl
	call l8751
	ret
.l8751
	ld de,l84c4
	add hl,de
	ld a,(hl)
	xor #80
	ld (hl),a
	jp m,l8787
	ld a,(l8456)
	cp #00
	jr nz,l8771
	ld a,(l844a)
	and #fe
	or #08
.l876a
	ld b,a
	ld c,#07
	call l80d3
	ret
.l8771
	cp #01
	jr nz,l877e
	ld a,(l844a)
	and #fd
	or #10
	jr l876a
.l877e
	ld a,(l844a)
	and #fb
	or #20
	jr l876a
.l8787
	ld a,(l8456)
	cp #00
	jr nz,l8797
	ld a,(l844a)
	and #f7
	or #01
	jr l876a
.l8797
	cp #01
	jr nz,l87a4
	ld a,(l844a)
	and #ef
	or #02
	jr l876a
.l87a4
	ld a,(l844a)
	and #df
	or #04
	jr l876a
.l87ad
	cp #7e
	jr nz,l87b4
	jp l8aed
.l87b4
	push af
	ld a,(l84c8)
	cp #00
	jr z,l87c0
	pop af
	add #10
	push af
.l87c0
	pop af
	push af
	and #0f
	sla a
	ld d,#00
	ld e,a
	ld hl,l84cb
	add hl,de
	ld a,(hl)
	ld (l848f),a
	inc hl
	ld a,(hl)
	ld (l8490),a
	pop af
	srl a
	srl a
	srl a
	srl a
	ld e,a
.l87e0
	dec e
	ret m
	ld hl,l8490
	srl (hl)
	ld hl,l848f
	rr (hl)
	jr l87e0
.l87ee
	ld a,(l8453)
	cp #00
	jr z,l8818
	ld a,(l8494)
	cp #00
	jr z,l8818
	ld a,(l849a)
	cp #00
	jr z,l8809
	dec a
	ld (l849a),a
	jr l8818
.l8809
	ld hl,#0000
	ld (l8456),hl
	ld hl,#0001
	ld (l8458),hl
	call l8866
.l8818
	ld a,(l8454)
	cp #00
	jr z,l8842
	ld a,(l8495)
	cp #00
	jr z,l8842
	ld a,(l849b)
	cp #00
	jr z,l8833
	dec a
	ld (l849b),a
	jr l8842
.l8833
	ld hl,#0001
	ld (l8456),hl
	ld hl,#0003
	ld (l8458),hl
	call l8866
.l8842
	ld a,(l8455)
	cp #00
	ret z
	ld a,(l8496)
	cp #00
	ret z
	ld a,(l849c)
	cp #00
	jr z,l885a
	dec a
	ld (l849c),a
	ret
.l885a
	ld hl,#0002
	ld (l8456),hl
	ld hl,#0005
	ld (l8458),hl
.l8866
	ld hl,l8494
	ld de,(l8456)
	add hl,de
	ld a,(hl)
	and a
	jp m,l889b
	ld hl,l846b
	add hl,de
	ld (l844d),hl
	ld a,(hl)
	ld hl,l8497
	add hl,de
	sub (hl)
	push af
	ld hl,(l844d)
	ld (hl),a
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	sbc #00
	ld (hl),a
.l888c
	ld bc,(l8458)
	ld b,a
	call l80d3
	dec c
	pop af
	ld b,a
	call l80d3
	ret
.l889b
	ld hl,l846b
	add hl,de
	ld a,(hl)
	ld (l844d),hl
	ld a,(hl)
	ld hl,l8497
	add hl,de
	add (hl)
	push af
	ld hl,(l844d)
	ld (hl),a
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	adc #00
	ld (hl),a
	jr l888c
.l88b7
	ld a,(l8453)
	cp #00
	jr z,l88f4
	ld a,(l84a0)
	cp #00
	jr z,l88f4
.l88c5
	ld de,(l84a3)
	ld d,#00
	ld hl,l84a6
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,l88db
	ld a,#00
	ld (l84a3),a
	jr l88c5
.l88db
	call l87ad
	ld a,(l848f)
	ld b,a
	ld c,#00
	call l80d3
	ld a,(l8490)
	ld b,a
	ld c,#01
	call l80d3
	ld hl,l84a3
	inc (hl)
.l88f4
	ld a,(l8454)
	cp #00
	jr z,l8931
	ld a,(l84a1)
	cp #00
	jr z,l8931
.l8902
	ld de,(l84a4)
	ld d,#00
	ld hl,l84ad
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,l8918
	ld a,#00
	ld (l84a4),a
	jr l8902
.l8918
	call l87ad
	ld a,(l848f)
	ld b,a
	ld c,#02
	call l80d3
	ld a,(l8490)
	ld b,a
	ld c,#03
	call l80d3
	ld hl,l84a4
	inc (hl)
.l8931
	ld a,(l8455)
	cp #00
	ret z
	ld a,(l84a2)
	cp #00
	ret z
.l893d
	ld de,(l84a5)
	ld d,#00
	ld hl,l84b4
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,l8953
	ld a,#00
	ld (l84a5),a
	jr l893d
.l8953
	call l87ad
	ld a,(l848f)
	ld b,a
	ld c,#04
	call l80d3
	ld a,(l8490)
	ld b,a
	ld c,#05
	call l80d3
	ld hl,l84a5
	inc (hl)
	ret
.l896d
	dw l899d,l89a9,l89b5,l89c1
	dw l89cd,l89d9,l89e5,l89f1
	dw l8b0a,l8ad6,l8c91,l8cb9
	dw l8cc6,l8cd1,l8cdc,l8ce6
	dw l8cf1,l8d03,l8d0e,l8d20
	dw l8d0c,l8d0d
	ld (#578d),a
	adc l
.l899d
	ld de,(l8456)
	ld hl,l84a0
	add hl,de
	ld (hl),#05
	jr l89fd
.l89a9
	ld de,(l8456)
	ld hl,l84a0
	add hl,de
	ld (hl),#06
	jr l89fd
.l89b5
	ld de,(l8456)
	ld hl,l84a0
	add hl,de
	ld (hl),#01
	jr l89fd
.l89c1
	ld de,(l8456)
	ld hl,l84a0
	add hl,de
	ld (hl),#02
	jr l89fd
.l89cd
	ld de,(l8456)
	ld hl,l84a0
	add hl,de
	ld (hl),#04
	jr l89fd
.l89d9
	ld de,(l8456)
	ld hl,l84a0
	add hl,de
	ld (hl),#08
	jr l89fd
.l89e5
	ld de,(l8456)
	ld hl,l84a0
	add hl,de
	ld (hl),#0d
	jr l89fd
.l89f1
	ld de,(l8456)
	ld hl,l84a0
	add hl,de
	ld (hl),#0e
	jr l89fd
.l89fd
	ld hl,(l844d)
	ld de,(l844b)
	add hl,de
	ld a,(hl)
	ld de,(l8456)
	ld hl,l84bd
	add hl,de
	ld (hl),#00
	ld hl,l849d
	add hl,de
	ld (hl),a
	ld (l844f),a
	ld a,#00
	ld hl,l84a3
	add hl,de
	ld (hl),a
	ld hl,l84a6
	ld de,(l84bb)
	add hl,de
	ld a,(l844f)
	ld (hl),a
	inc de
	ld (l84bb),de
	ld hl,l84a0
	ld de,(l8456)
	add hl,de
	ld a,(hl)
	ld (l8450),a
	and #01
	jr z,l8a61
	ld a,(l844f)
	push af
	and #f0
	ld b,a
	pop af
	and #0f
	add #03
	cp #0c
	jr c,l8a52
	add #04
.l8a52
	add b
	ld hl,l84a6
	ld de,(l84bb)
	add hl,de
	ld (hl),a
	inc de
	ld (l84bb),de
.l8a61
	ld a,(l8450)
	and #02
	jr z,l8a89
	ld a,(l844f)
	push af
	and #f0
	ld b,a
	pop af
	and #0f
	add #04
	cp #0c
	jr c,l8a7a
	add #04
.l8a7a
	add b
	ld hl,l84a6
	ld de,(l84bb)
	add hl,de
	ld (hl),a
	inc de
	ld (l84bb),de
.l8a89
	ld a,(l8450)
	and #04
	jr z,l8ab1
	ld a,(l844f)
	push af
	and #f0
	ld b,a
	pop af
	and #0f
	add #07
	cp #0c
	jr c,l8aa2
	add #04
.l8aa2
	add b
	ld hl,l84a6
	ld de,(l84bb)
	add hl,de
	ld (hl),a
	inc de
	ld (l84bb),de
.l8ab1
	ld a,(l8450)
	and #08
	jr z,l8acb
	ld a,(l844f)
	add #10
	ld hl,l84a6
	ld de,(l84bb)
	add hl,de
	ld (hl),a
	inc de
	ld (l84bb),de
.l8acb
	ld hl,l84a6
	ld de,(l84bb)
	add hl,de
	ld (hl),#ff
	ret
.l8ad6
	ld de,(l8456)
	ld hl,l84c4
	add hl,de
	ld (hl),#01
	ret
.l8ae1
	sub #1f
	ld de,(l8456)
	ld hl,l8462
	add hl,de
	ld (hl),a
	ret
.l8aed
	ld de,(l8456)
	ld a,#00
	ld (l848f),a
	ld (l8490),a
	ld hl,l84bd
	add hl,de
	ld (hl),a
	ld hl,l8486
	add hl,de
	ld (hl),a
	ld a,e
	add #08
	ld c,a
	ld b,#00
	ret
.l8b0a
	ld hl,(l844d)
	ld de,(l844b)
	add hl,de
	ld a,(hl)
	push af
	inc hl
	inc de
	ld a,(hl)
	push af
	inc hl
	inc de
	ld a,(hl)
	inc de
	ld (l844b),de
	ld de,(l8456)
	ld hl,l8480
	add hl,de
	ld (hl),a
	ld hl,l847a
	add hl,de
	pop af
	ld (hl),a
	ld hl,l847d
	add hl,de
	and #f0
	ld (hl),a
	ld hl,l8474
	add hl,de
	pop af
	ld (hl),a
	ld hl,l8477
	add hl,de
	and #f0
	ld (hl),a
	ret
.l8b44
	ld a,(l8453)
	cp #00
	jr z,l8bb3
	ld a,(l8486)
	cp #00
	jr z,l8bb3
	ld a,(l8483)
	and a
	jp m,l8b89
	ld a,(l8477)
	sub #10
	ld (l8477),a
	jr nz,l8bb3
	ld a,(l8474)
	ld b,a
	and #f0
	ld (l8477),a
	ld a,b
	and #0f
	ld hl,l8471
	add (hl)
	ld (l8471),a
	push af
	ld b,a
	ld c,#08
	call l80d3
	pop af
	cp #0f
	jr nz,l8bb3
	ld a,#80
	ld (l8483),a
	jr l8bb3
.l8b89
	ld a,(l847d)
	sub #10
	ld (l847d),a
	jr nz,l8bb3
	ld a,(l847a)
	ld b,a
	and #f0
	ld (l847d),a
	ld a,b
	and #0f
	ld b,a
	ld a,(l8471)
	ld hl,l8480
	cp (hl)
	jr z,l8bb3
	sub b
	ld (l8471),a
	ld b,a
	ld c,#08
	call l80d3
.l8bb3
	ld a,(l8454)
	cp #00
	jr z,l8c22
	ld a,(l8487)
	cp #00
	jr z,l8c22
	ld a,(l8484)
	and a
	jp m,l8bf8
	ld a,(l8478)
	sub #10
	ld (l8478),a
	jr nz,l8c22
	ld a,(l8475)
	ld b,a
	and #f0
	ld (l8478),a
	ld a,b
	and #0f
	ld hl,l8472
	add (hl)
	ld (l8472),a
	push af
	ld b,a
	ld c,#09
	call l80d3
	pop af
	cp #0f
	jr nz,l8c22
	ld a,#80
	ld (l8484),a
	jr l8c22
.l8bf8
	ld a,(l847e)
	sub #10
	ld (l847e),a
	jr nz,l8c22
	ld a,(l847b)
	ld b,a
	and #f0
	ld (l847e),a
	ld a,b
	and #0f
	ld b,a
	ld a,(l8472)
	ld hl,l8481
	cp (hl)
	jr z,l8c22
	sub b
	ld (l8472),a
	ld b,a
	ld c,#09
	call l80d3
.l8c22
	ld a,(l8455)
	cp #00
	jr z,l8c90
	ld a,(l8488)
	cp #00
	ret z
	ld a,(l8485)
	and a
	jp m,l8c66
	ld a,(l8479)
	sub #10
	ld (l8479),a
	jr nz,l8c90
	ld a,(l8476)
	ld b,a
	and #f0
	ld (l8479),a
	ld a,b
	and #0f
	ld hl,l8473
	add (hl)
	ld (l8473),a
	push af
	ld b,a
	ld c,#0a
	call l80d3
	pop af
	cp #0f
	jr nz,l8c90
	ld a,#80
	ld (l8485),a
	jr l8c90
.l8c66
	ld a,(l847f)
	sub #10
	ld (l847f),a
	jr nz,l8c90
	ld a,(l847c)
	ld b,a
	and #f0
	ld (l847f),a
	ld a,b
	and #0f
	ld b,a
	ld a,(l8473)
	ld hl,l8482
	cp (hl)
	jr z,l8c90
	sub b
	ld (l8473),a
	ld b,a
	ld c,#0a
	call l80d3
.l8c90
	ret
.l8c91
	ld de,(l8456)
	ld hl,l8494
	add hl,de
	ld (hl),#ff
.l8c9b
	ld hl,(l844d)
	ld bc,(l844b)
	add hl,bc
	ld a,(hl)
	push hl
	ld hl,l8497
	add hl,de
	ld (hl),a
	pop hl
	inc hl
	inc bc
	ld a,(hl)
	ld hl,l849a
	add hl,de
	ld (hl),a
	inc bc
	ld (l844b),bc
	ret
.l8cb9
	ld de,(l8456)
	ld hl,l8494
	add hl,de
	ld (hl),#01
	jp l8c9b
.l8cc6
	ld de,(l8456)
	ld hl,l8491
	add hl,de
	ld (hl),#ff
	ret
.l8cd1
	ld de,(l8456)
	ld hl,l8491
	add hl,de
	ld (hl),#01
	ret
.l8cdc
	ld de,(l8456)
	ld hl,l84bd
	add hl,de
	ld (hl),a
	ret
.l8ce6
	ld de,(l8456)
	ld hl,l84bd
	add hl,de
	ld (hl),#00
	ret
.l8cf1
	ld de,(l844b)
	ld hl,(l844d)
	add hl,de
	ld a,(hl)
	ld (l845d),a
	inc de
	ld (l844b),de
	ret
.l8d03
	ld a,(l84c8)
	xor #01
	ld (l84c8),a
	ret
.l8d0c
	ret
.l8d0d
	ret
.l8d0e
	ld de,(l8456)
	ld hl,l8d1d
	add hl,de
	ld a,(hl)
	ld hl,l845a
	add hl,de
	ld (hl),a
	ret
.l8d1d
	cp #fd
	ei
.l8d20
	ld de,(l8456)
	ld hl,l8d2f
	add hl,de
	ld a,(hl)
	ld hl,l845a
	add hl,de
	ld (hl),a
	ret
.l8d2f
	db #f7,#ef,#df
	ld hl,(l844d)
	ld de,(l844b)
	add hl,de
	ld a,(hl)
	ld (l848d),a
	inc hl
	inc de
	ld a,(hl)
	ld (l848e),a
	inc de
	ld (l844b),de
	ld a,#00
	ld (l8489),a
	ld a,#01
	ld (l848b),a
	ld (l848c),a
	ret
.l8d57
	ld hl,(l844d)
	ld de,(l844b)
	add hl,de
	ld a,(hl)
	ld (l84c7),a
	inc de
	ld (l844b),de
	ret
.l8d69
	dw l8da7,l8dbd,l8da7,l8dbd
	dw l8da7,l8dbd,l8dbd,l8dcc
	dw l8da7,l8dcc,l8dbd,l8dcc
	dw l8da7,l8dbd,l8da7,l8dcf
.l8d8b equ $ + 2
	dw #0000,l8dd4,l8dde,l8dde
	dw l8deb,l8dde,l8df9,#0000
.l8d99
	dw l8e0f,l8e19,l8e19,l8e25
	dw l8e19,l8e33,#0000
.l8da7
	db #90,#04,#96,#01,#01,#88,#1f,#13
	db #03,#93,#97,#00,#a3,#00,#a1,#00
.l8dbd equ $ + 6
	db #00,#00,#00,#00,#00,#7f,#a3,#00
	db #a1,#00,#00,#a0,#00,#00,#00,#00
.l8dcc equ $ + 5
	db #00,#00,#00,#00,#7f,#af,#7e,#7f
.l8dd4 equ $ + 5
.l8dcf
	db #a3,#00,#ab,#7e,#7f,#88,#13,#61
.l8dde equ $ + 7
	db #09,#92,#af,#7e,#a7,#7e,#7f,#a1
	db #7e,#8e,#30,#30,#30,#a5,#37,#a1
.l8deb equ $ + 4
	db #30,#af,#37,#7f,#a1,#7e,#8e,#30
	db #30,#30,#a7,#40,#3a,#37,#39,#b7
.l8df9 equ $ + 2
	db #37,#7f,#a1,#7e,#8e,#30,#30,#30
	db #a7,#40,#3a,#37,#39,#37,#a3,#30
	db #a1,#30,#30,#a3,#30,#ab,#7e,#7f
.l8e0f
	db #88,#11,#61,#09,#92,#af,#7e,#a7
.l8e19 equ $ + 2
	db #7e,#7f,#a1,#7e,#30,#30,#30,#a5
.l8e25 equ $ + 6
	db #37,#a1,#30,#af,#37,#7f,#a1,#7e
	db #30,#30,#30,#8e,#a7,#33,#32,#33
.l8e33 equ $ + 4
	db #35,#b7,#30,#7f,#a1,#7e,#30,#30
	db #30,#8e,#a7,#33,#32,#33,#35,#30
	db #8f,#88,#13,#61,#09,#a3,#30,#a1
	db #30,#30,#a3,#30,#ab,#91,#7e,#7f
	db #00
.l8e50
	db #74,#8e,#b6,#8e,#00,#00,#f0,#8e
	db #30,#8f,#00,#00,#65,#8f,#65,#8f
	db #65,#8f,#65,#8f,#74,#8f,#83,#8f
	db #83,#8f,#83,#8f,#83,#8f,#8f,#8f
	db #9e,#8f,#00,#00,#90,#07,#92,#96
	db #01,#01,#8e,#88,#1f,#61,#08,#a1
	db #37,#a0,#37,#37,#37,#32,#2b,#32
	db #a1,#37,#a0,#37,#37,#37,#32,#37
	db #3b,#a1,#37,#a3,#44,#42,#a1,#40
	db #a3,#42,#a1,#3b,#a0,#3b,#3b,#3b
	db #36,#33,#36,#a1,#3b,#a0,#3b,#3b
	db #3b,#36,#3b,#43,#a1,#3b,#a3,#48
	db #46,#a1,#44,#a3,#46,#7f,#a0,#47
	db #46,#47,#49,#4b,#49,#4b,#52,#50
	db #4b,#50,#52,#54,#53,#54,#57,#56
	db #57,#59,#57,#56,#54,#52,#50,#4b
	db #50,#52,#50,#4b,#49,#47,#46,#44
	db #46,#47,#46,#44,#42,#40,#3b,#a1
	db #39,#a2,#42,#a0,#40,#3b,#39,#a1
	db #3b,#a3,#37,#a1,#36,#a7,#37,#7f
	db #92,#8f,#88,#1f,#61,#07,#a1,#37
	db #a0,#37,#37,#37,#32,#2b,#32,#a1
	db #37,#a0,#37,#37,#37,#32,#37,#3b
	db #a1,#37,#8e,#a3,#37,#37,#a1,#36
	db #a3,#37,#8f,#a1,#3b,#a0,#3b,#3b
	db #3b,#36,#33,#36,#a1,#3b,#a0,#3b
	db #3b,#3b,#36,#3b,#43,#a1,#3b,#8e
	db #a3,#3b,#3b,#a1,#3a,#a3,#3b,#7f
	db #a0,#44,#43,#44,#46,#47,#46,#47
	db #4b,#49,#46,#49,#4b,#50,#4b,#50
	db #54,#52,#54,#56,#54,#52,#50,#4b
	db #49,#47,#49,#4b,#49,#47,#46,#44
	db #42,#40,#42,#44,#42,#40,#3b,#39
	db #37,#a1,#37,#36,#34,#32,#32,#2b
	db #a3,#29,#a7,#2b,#7f,#92,#8f,#97
	db #03,#88,#1f,#21,#07,#a0,#17,#17
	db #89,#17,#17,#7f,#88,#15,#61,#08
	db #a1,#7e,#8e,#a3,#30,#2b,#a1,#29
	db #a3,#2b,#7f,#88,#1f,#21,#07,#8f
	db #a0,#1b,#1b,#89,#1b,#1b,#7f,#88
	db #15,#61,#08,#a1,#7e,#8e,#a3,#34
	db #33,#a1,#31,#a3,#33,#7f,#88,#1f
	db #61,#07,#a3,#8e,#24,#85,#34,#8e
	db #19,#85,#29,#8e,#22,#85,#32,#8e
	db #17,#85,#2b,#8e,#20,#85,#29,#8e
	db #22,#85,#26,#8e,#27,#85,#22,#a7
	db #91,#87,#47,#7f,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.lbd34		; added by Megachur
;
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
;
.init_music
;
	or a
	jr nz,init_levelTheme
	ld hl,#0101		; init_mainTheme
	ld (l8451),hl
	ld (l8453),hl
	ld (l8454),hl
	jp real_init_music
.init_levelTheme
	ld a,#02
	ld (l8451),a
	jp real_init_music
;org #8ebb; init theme 1
;ld hl,#0101
;ld (#8451),hl
;ld (#8453),hl
;ld (#8454),hl
;call #8000

;org #9bfc; init theme 2 avec donnees en &8e50 differente a chaque level !
;ld a,#02
;ld (#8451),a
;call #8000
;
.music_info
	db "Knight Games Music 1 (1986)(English Software)(David Whittaker)",0
	db "",0

	read "music_end.asm"
