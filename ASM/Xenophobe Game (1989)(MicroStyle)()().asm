; Music of Xenophobe Game (1989)(MicroStyle)()()
; Ripped by Megachur the 30/07/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XENOPHOG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #aefd
FIRST_THEME				equ 1
LAST_THEME				equ 1

	read "music_header.asm"

	nop
	ld c,a
	ld h,a
	ld hl,lb3d8
	ld a,(hl)
	or a
	ret z
	dec (hl)
	ret
	ld hl,lb3d8
	ld a,(hl)
	cp #0f
	ret z
	inc (hl)
	ret
	ld (lafaa),a
	ld a,#0f
	ld (lb3d8),a
	ret
.laf1a
	push af
	and #0f
	add a
	ld e,a
	ld d,#00
	ld hl,laf37
	add hl,de
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	pop af
	and #f0
	ret z
.laf2d
	srl d
	rr e
	sub #10
	jp nz,laf2d
	ret
.laf37
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
.laf4f
	ld hl,#0000
	ld a,#10
.laf54
	ex af,af'
	sla c
	rl b
	adc hl,hl
	ld a,h
	cp d
	jp nz,laf62
	ld a,l
	cp e
.laf62
	jp c,laf68
	sbc hl,de
	inc bc
.laf68
	ex af,af'
	dec a
	jp nz,laf54
	ret
.laf6e
	push bc
	push de
	ld hl,#0000
	ld a,#10
.laf75
	srl d
	rr e
	jp nc,laf7d
	add hl,bc
.laf7d
	sla c
	rl b
	dec a
	jp nz,laf75
	pop de
	pop bc
	ret
.laf88
	push bc
	ld c,l
	ld a,h
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
	pop bc
	ret
;
.play_music
.lafaa
;
	db #01
	ld hl,lafaa
	ld a,(hl)
	or a
	jp z,lb0ff
	cp #fe
	jp c,lafc7
	cp #ff
	ret nz
	ld (hl),#fe
;
.stop_music
;
	ld hl,#073f
	ld a,l
	ld (lb0f9),a
	jp laf88
;
.init_music
.lafc7
;
	ld (lb0f5),a
	ld hl,lb064
	ld de,lb065
	ld bc,#002a
	ld (hl),#00
	ldir
	ld hl,lb094
	ld de,lb095
	ld bc,#002a
	ld (hl),#00
	ldir
	ld hl,lb0c4
	ld de,lb0c5
	ld bc,#002a
	ld (hl),#00
	ldir
	xor a
	call lb015
	ld a,#01
	call lb015
	ld a,#02
	call lb015
	xor a
	ld (lafaa),a
	ret
.lb004
	ld a,(lb0f5)
	ld (lafaa),a
	ld a,(lb0f4)
	call lb015
	xor a
	ld (lafaa),a
	ret
.lb015
	push af
	ld a,(lafaa)
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	ld d,h
	ld e,l
	add hl,hl
	add hl,de
	ld de,lb5f0
	add hl,de
	pop af
	or a
	jr z,lb053
	dec a
	jr z,lb041
	ld de,#0004
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb0c4),de
	ld de,lb063
	ld (lb0c6),de
	ret
.lb041
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb094),de
	ld de,lb063
	ld (lb096),de
	ret
.lb053
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb064),de
	ld de,lb063
	ld (lb066),de
	ret
.lb066 equ $ + 3
.lb065 equ $ + 2
.lb064 equ $ + 1
.lb063
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
	dw lb384
.lb096 equ $ + 5
.lb095 equ $ + 4
.lb094 equ $ + 3
	db #01,#f7,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
	dw lb38b
.lb0c6 equ $ + 5
.lb0c5 equ $ + 4
.lb0c4 equ $ + 3
	db #02,#ef,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
	dw lb392
.lb0f6 equ $ + 5
.lb0f5 equ $ + 4
.lb0f4 equ $ + 3
	db #04,#df,#04,#00,#00,#00,#00,#00
.lb0fe equ $ + 5
.lb0fd equ $ + 4
.lb0fa equ $ + 1
.lb0f9
	db #00,#00,#ff,#00,#02,#02
.lb0ff
	ld hl,lb0fe
	dec (hl)
	jp p,lb328
	xor a
	ld (lb0f4),a
	ld iy,lb064
	call lb130
	ld hl,lb0f4
	inc (hl)
	ld iy,lb094
	call lb130
	ld hl,lb0f4
	inc (hl)
	ld iy,lb0c4
	call lb130
	ld a,(lb0fd)
	ld (lb0fe),a
	jp lb328
.lb130
	dec (iy+#05)
	ret p
.lb134
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld a,h
	and l
	cp #ff
	jr z,lb146
	ld a,h
	or l
	jr nz,lb14b
	jr lb171
.lb146
	call lb004
	jr lb134
.lb14b
	ld a,(hl)
	cp #ff
	jr nz,lb17d
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (iy+#00),l
	ld (iy+#01),h
	ld (iy+#02),e
	ld (iy+#03),d
	ex de,hl
	ld a,h
	and l
	cp #ff
	jr z,lb178
	ld a,h
	or l
	jr nz,lb14b
.lb171
	ld a,(iy+#04)
	ld (iy+#05),a
	ret
.lb178
	call lb004
	jr lb134
.lb17d
	push hl
	pop ix
	inc hl
	ld (iy+#02),l
	ld (iy+#03),h
	push af
	and #f0
	rrca
	rrca
	rrca
	ld l,a
	ld h,#00
	ld de,lb19a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	pop af
	jp (hl)
.lb19a
	dw lb2d3,lb2d3,lb2d3,lb2d3
	dw lb2d3,lb2d3,lb2d3,lb2d3
	dw lb23a,lb23a,lb23a,lb23a
	dw lb1d0,lb1d0,lb1c2,lb1ba
.lb1ba
	and #0f
	ld (lb0fd),a
	jp lb134
.lb1c2
	and #0f
	ld l,(iy+#2b)
	ld h,(iy+#2c)
	inc hl
	inc hl
	ld (hl),a
	jp lb134
.lb1d0
	and #1f
	add a
	ld l,a
	ld h,#00
	ld de,lb5f6
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
	inc hl
	ld (iy+#0b),a
	or a
	jr z,lb1fe
	push hl
	ld (iy+#08),#00
	srl a
	ld e,a
	ld d,#00
	ld hl,lb673
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#06),e
	ld (iy+#07),d
	pop hl
.lb1fe
	ld a,(hl)
	inc hl
	push hl
	srl a
	ld e,a
	ld d,#00
	ld hl,lb610
	add hl,de
	ld a,(hl)
	ld (iy+#17),a
	inc hl
	ld a,(hl)
	ld (iy+#18),a
	pop hl
	ld a,(hl)
	inc hl
	ld (iy+#12),a
	ld a,(hl)
	inc hl
	ld (iy+#13),a
	ld a,(hl)
	inc hl
	ld (iy+#0c),a
	ld a,(hl)
	inc hl
	ld (iy+#0f),a
	ex de,hl
	ld l,(iy+#2b)
	ld h,(iy+#2c)
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	ld (hl),e
	inc hl
	ld (hl),d
	jp lb134
.lb23a
	and #3f
	ld (iy+#04),a
	jp lb134
.lb242
	ld l,(iy+#02)
	ld h,(iy+#03)
	inc hl
	inc hl
	inc hl
	ld (iy+#02),l
	ld (iy+#03),h
	xor a
	ld (iy+#25),#ff
	call lb303
	ld a,(ix+#01)
	ld (iy+#1f),a
	ld e,(iy+#04)
	inc e
	ld d,#00
	ld a,(lb0fd)
	inc a
	ld c,a
	ld b,#00
	call laf6e
	ld e,(ix+#01)
	ld d,#00
	and a
	sbc hl,de
	ld (iy+#27),l
	ld (iy+#28),h
	push hl
	ld a,(iy+#04)
	ld (iy+#05),a
	ld a,(ix+#02)
	call laf1a
	ld (iy+#1d),e
	ld (iy+#1e),d
	push de
	ld a,(ix+#03)
	call laf1a
	ld (iy+#21),e
	ld (iy+#22),d
	ld a,#01
	ld (lb0fa),a
	pop hl
	ex de,hl
	and a
	sbc hl,de
	jr nc,lb2b5
	ld a,#ff
	ld (lb0fa),a
	ex de,hl
	ld hl,#0000
	and a
	sbc hl,de
.lb2b5
	ld b,h
	ld c,l
	pop de
	call laf4f
	ld (iy+#1b),c
	ld (iy+#1c),b
	ld a,(lb0fa)
	or a
	ret p
	ld hl,#0000
	and a
	sbc hl,bc
	ld (iy+#1b),l
	ld (iy+#1c),h
	ret
.lb2d3
	cp #7f
	jp z,lb242
	or a
	ret z
	ld c,a
	ld a,(iy+#0b)
	or a
	jr z,lb2eb
	ld a,c
	ld (iy+#0a),a
	ld (iy+#08),#00
	jr lb2f9
.lb2eb
	ld a,c
	ld (iy+#23),a
	ld a,c
	call laf1a
	ld (iy+#29),e
	ld (iy+#2a),d
.lb2f9
	xor a
	ld (iy+#16),a
	ld a,(iy+#04)
	ld (iy+#05),a
.lb303
	ld l,(iy+#17)
	ld h,(iy+#18)
	ld (iy+#14),l
	ld (iy+#15),h
	ld l,(iy+#12)
	ld (iy+#11),l
	ld (iy+#0d),#00
	ld (iy+#0e),#01
	ld a,(iy+#0f)
	ld (iy+#10),a
	jp lb36c
.lb326
	db #00,#00
.lb328
	ld a,(lb0f9)
	or #38
	and #f8
	ld (lb326),a
	call lb399
	ld iy,lb064
	call lb3ee
	ld iy,lb094
	call lb3ee
	ld iy,lb0c4
	call lb3ee
	ld a,(lb385)
	ld l,a
	ld h,#08
	call laf88
	inc h
	ld a,(lb38c)
	ld l,a
	call laf88
	inc h
	ld a,(lb393)
	ld l,a
	call laf88
	ld a,(lb326)
	ld l,a
	ld h,#07
	jp laf88
.lb36c
	xor a
	ld l,(iy+#2b)
	ld h,(iy+#2c)
	ld (hl),#01
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	dec hl
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.lb38b equ $ + 7
.lb385 equ $ + 1
.lb384
	db #ff,#00,#00,#00,#00,#00,#00,#ff
.lb393 equ $ + 7
.lb392 equ $ + 6
.lb38c
	db #00,#00,#00,#00,#00,#00,#ff,#00
	db #00,#00,#00,#00,#00
.lb399
	ld hl,lb384
	ld a,#03
.lb39e
	ex af,af'
	ld a,(hl)
	cp #ff
	jp z,lb3e4
	dec (hl)
	jp nz,lb3e4
	inc hl
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	ld a,(de)
	dec de
	cp #ff
	jp nz,lb3bd
	ld b,a
	ld a,(de)
	ld c,a
	jp lb3cc
.lb3bd
	ld a,(de)
	inc de
	ld c,a
	or a
	ld b,#01
	jp p,lb3cc
	and #0f
	ld c,a
	ld a,(de)
	inc de
	ld b,a
.lb3cc
	ld (hl),d
	dec hl
	ld (hl),e
	dec hl
	ld a,c
	cp (hl)
	jp c,lb3d6
	ld c,(hl)
.lb3d6
	ld a,c
.lb3d8 equ $ + 1
	cp #0f
	jp c,lb3e0
	ld a,(lb3d8)
	ld c,a
.lb3e0
	dec hl
	ld (hl),c
	dec hl
	ld (hl),b
.lb3e4
	ld de,#0007
	add hl,de
	ex af,af'
	dec a
	jp nz,lb39e
	ret
.lb3ee
	ld a,(iy+#11)
	or a
	jr z,lb408
	dec (iy+#11)
	ld a,(lb326)
	and (iy+#2e)
	ld (lb326),a
	ld h,#06
	ld l,(iy+#13)
	call laf88
.lb408
	ld a,(iy+#29)
	ld (iy+#19),a
	ld a,(iy+#2a)
	ld (iy+#1a),a
	ld a,(iy+#0b)
	or a
	jr z,lb459
	jp m,lb444
	ld l,(iy+#06)
	ld h,(iy+#07)
	ld e,(iy+#08)
	ld d,#00
	add hl,de
	ld a,(hl)
	cp #80
	jr nz,lb436
	and a
	sbc hl,de
	xor a
	ld (iy+#08),a
	ld a,(hl)
.lb436
	inc (iy+#08)
	add (iy+#0a)
	ld h,#06
	ld l,a
	call laf88
	jr lb44c
.lb444
	ld h,#06
	ld l,(iy+#0a)
	call laf88
.lb44c
	ld a,(lb326)
	or (iy+#2d)
	and (iy+#2e)
	ld (lb326),a
	ret
.lb459
	ld l,(iy+#14)
	ld h,(iy+#15)
	ld a,h
	or l
	jp z,lb530
	ld (lb0f6),hl
	ld e,(iy+#16)
	ld d,#00
	add hl,de
	ld e,(hl)
	dec hl
	ld a,e
	cp #82
	jr z,lb4bd
	cp #81
	jr z,lb480
	cp #80
	jp z,lb4f9
	jp lb501
.lb480
	ld e,(hl)
	ld l,(iy+#23)
	ld a,e
	or a
	jp m,lb497
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,lb4a3
	inc l
	inc l
	inc l
	jr lb4a3
.lb497
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,lb4a3
	dec l
	dec l
	dec l
.lb4a3
	ld a,l
	call laf1a
	ld (iy+#19),e
	ld (iy+#1a),d
	ld (iy+#29),e
	ld (iy+#2a),d
	xor a
	ld (iy+#14),a
	ld (iy+#15),a
	jp lb530
.lb4bd
	ld (iy+#16),#00
	ld e,(hl)
	ld l,(iy+#23)
	ld a,e
	or a
	jp m,lb4d8
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,lb4e4
	inc l
	inc l
	inc l
	jr lb4e4
.lb4d8
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,lb4e4
	dec l
	dec l
	dec l
.lb4e4
	ld (iy+#23),l
	ld hl,(lb0f6)
	ld e,(hl)
	ld a,(iy+#19)
	ld (iy+#29),a
	ld a,(iy+#1a)
	ld (iy+#2a),a
	jr lb501
.lb4f9
	ld (iy+#16),#00
	ld hl,(lb0f6)
	ld e,(hl)
.lb501
	ld l,(iy+#23)
	ld a,e
	or a
	jp m,lb517
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,lb523
	inc l
	inc l
	inc l
	jr lb523
.lb517
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,lb523
	dec l
	dec l
	dec l
.lb523
	ld a,l
	call laf1a
	ld (iy+#19),e
	ld (iy+#1a),d
	inc (iy+#16)
.lb530
	ld a,(iy+#25)
	or a
	jr z,lb584
	ld a,(iy+#1f)
	or a
	jr z,lb547
	dec (iy+#1f)
	ld l,(iy+#1d)
	ld h,(iy+#1e)
	jr lb57e
.lb547
	ld e,(iy+#1b)
	ld d,(iy+#1c)
	ld l,(iy+#1d)
	ld h,(iy+#1e)
	add hl,de
	ld (iy+#1d),l
	ld (iy+#1e),h
	push hl
	ld l,(iy+#27)
	ld h,(iy+#28)
	dec hl
	ld (iy+#27),l
	ld (iy+#28),h
	ld a,h
	pop hl
	or a
	jp p,lb57e
	ld l,(iy+#21)
	ld h,(iy+#22)
	ld (iy+#29),l
	ld (iy+#2a),h
	ld (iy+#25),#00
.lb57e
	ld (iy+#19),l
	ld (iy+#1a),h
.lb584
	ld a,(iy+#0c)
	or a
	jr z,lb5da
	dec (iy+#10)
	jp p,lb5c1
	ld a,(iy+#0f)
	ld (iy+#10),a
	ld a,(iy+#0d)
	add (iy+#0e)
	ld (iy+#0d),a
	ld a,(iy+#0c)
	cp (iy+#0d)
	jr nz,lb5b2
	ld a,(iy+#0e)
	neg
	ld (iy+#0e),a
	ld a,(iy+#0c)
.lb5b2
	neg
	cp (iy+#0d)
	jr nz,lb5c1
	ld a,(iy+#0e)
	neg
	ld (iy+#0e),a
.lb5c1
	ld a,(iy+#0d)
	or a
	ld d,#00
	jp p,lb5cc
	ld d,#ff
.lb5cc
	ld e,a
	ld l,(iy+#19)
	ld h,(iy+#1a)
	add hl,de
	ld (iy+#19),l
	ld (iy+#1a),h
.lb5da
	ld h,(iy+#2f)
	ld l,(iy+#19)
	call laf88
	inc h
	ld l,(iy+#1a)
	jp laf88
	db #00,#00,#00,#00,#00,#00
.lb5f6 equ $ + 6
.lb5f0
	dw lb812,lb846,lb87a,lb6b5
	dw lb6bf,lb6d0,lb6f6,lb71c
	dw lb726,lb730,lb754,lb77a
	dw #0000,lb7a0,lb7a8,lb7ec
.lb610
	dw #0000,lb628,lb62a,lb635
	dw lb640,lb644,lb647,lb64a
	dw lb64e,lb654,lb65b,lb662
.lb62a equ $ + 2
.lb628
	db #fb,#82,#0a,#08,#06,#04,#02,#01
.lb635 equ $ + 5
	db #00,#ff,#fe,#fd,#82,#f6,#f8,#fa
	db #fc,#fe,#ff,#00,#01,#02,#03,#82
.lb647 equ $ + 7
.lb644 equ $ + 4
.lb640
	db #10,#10,#00,#81,#10,#00,#81,#10
.lb64e equ $ + 6
.lb64a equ $ + 2
	db #00,#81,#10,#10,#00,#81,#10,#00
.lb654 equ $ + 4
	db #10,#01,#00,#81,#ff,#fe,#fd,#fc
.lb65b equ $ + 3
	db #fb,#f0,#82,#00,#02,#04,#06,#08
.lb662 equ $ + 2
	db #00,#82,#00,#01,#02,#03,#04,#05
	db #06,#07,#08,#09,#08,#07,#06,#05
.lb673 equ $ + 3
	db #04,#03,#02,#01,#80,#7f,#b6,#81
	db #b6,#8a,#b6,#8c,#b6,#93,#b6,#00
	db #80,#1c,#18,#14,#10,#0c,#08,#04
	db #01,#80,#01,#80,#00,#14,#00,#1e
	db #00,#0a,#80,#1e,#1e,#1e,#1b,#1b
	db #1b,#18,#18,#18,#15,#15,#15,#12
	db #12,#12,#0f,#0f,#0f,#0c,#0c,#0c
	db #09,#09,#09,#06,#06,#06,#03,#03
.lb6b5 equ $ + 5
	db #03,#01,#01,#01,#80,#00,#04,#01
.lb6bf equ $ + 7
	db #14,#00,#00,#8f,#05,#00,#ff,#08
	db #00,#00,#00,#00,#00,#8f,#07,#07
	db #06,#05,#04,#03,#02,#01,#00,#ff
.lb6d0
	db #0c,#00,#00,#00,#00,#00,#8f,#02
	db #8e,#05,#8d,#05,#8c,#05,#8b,#06
	db #8a,#07,#89,#08,#88,#09,#87,#0a
	db #86,#0b,#85,#0c,#84,#0d,#83,#0e
.lb6f6 equ $ + 6
	db #82,#0f,#81,#10,#00,#ff,#00,#10
	db #00,#00,#02,#00,#8f,#0f,#8e,#05
	db #8d,#05,#8c,#05,#8b,#05,#8a,#05
	db #89,#05,#88,#05,#87,#05,#86,#05
	db #85,#05,#84,#05,#83,#05,#82,#05
.lb71c equ $ + 4
	db #81,#05,#00,#ff,#00,#14,#01,#03
.lb726 equ $ + 6
	db #01,#00,#8f,#05,#00,#ff,#04,#00
	db #00,#00,#00,#00,#8f,#02,#00,#ff
.lb730
	db #00,#18,#00,#00,#02,#00,#8e,#0a
	db #8d,#0a,#8c,#0a,#8b,#0a,#8a,#05
	db #89,#05,#88,#05,#87,#05,#86,#05
	db #85,#04,#84,#03,#83,#02,#82,#02
.lb754 equ $ + 4
	db #81,#02,#00,#ff,#00,#1c,#02,#03
	db #02,#00,#8f,#14,#8e,#14,#8d,#14
	db #8c,#14,#8b,#14,#8a,#14,#89,#14
	db #88,#14,#87,#14,#86,#14,#85,#14
	db #84,#14,#83,#14,#82,#14,#81,#14
.lb77a equ $ + 2
	db #00,#ff,#00,#20,#02,#01,#02,#00
	db #8f,#0a,#8e,#0a,#8d,#0a,#8c,#0a
	db #8b,#0a,#8a,#05,#89,#05,#88,#05
	db #87,#05,#86,#05,#85,#04,#84,#03
	db #83,#02,#82,#02,#81,#02,#00,#ff
.lb7a0
	db #00,#00,#00,#00,#00,#00,#00,#ff
.lb7a8
	db #00,#00,#00,#00,#02,#00,#81,#05
	db #82,#05,#83,#05,#84,#05,#85,#05
	db #86,#05,#87,#05,#88,#05,#89,#05
	db #8a,#05,#8b,#05,#8c,#05,#8d,#05
	db #8e,#05,#8f,#05,#8f,#fe,#8f,#fe
	db #8d,#14,#8c,#14,#8b,#14,#8a,#14
	db #89,#14,#88,#14,#87,#14,#86,#14
	db #85,#14,#84,#14,#83,#14,#82,#14
.lb7ec equ $ + 4
	db #81,#14,#00,#ff,#00,#00,#00,#00
	db #02,#00,#8f,#fe,#8e,#fe,#8d,#14
	db #8c,#14,#8b,#14,#8a,#14,#89,#14
	db #88,#14,#87,#14,#86,#14,#85,#14
	db #84,#14,#83,#14,#82,#14,#81,#14
	db #00,#ff
.lb812
	dw lb8ae,lbe47,lbe47,lbe47
	dw lbe47,lbe47,lbd61,lbdf7
	dw lbdf7,lbdf7,lbdf7,lbdf7
	dw lbbc5,lb8ae,lbb1b,lba8a
	dw lba41,lba41,lba41,lba41
	dw lba41,lba41,lba41,lba41
.lb846 equ $ + 4
	dw lb8b1,#ffff,lb8ae,lbe8a
	dw lbdf7,lbdf7,lbdf7,lbdf7
	dw lbe8a,lbcdd,lbc9a,lbc9a
	dw lbc57,lbc1c,lbb73,lb8ae
	dw lbb35,lbad3,lbad3,lbad3
	dw lbad3,lbad3,lbad3,lbad3
	dw lbad3,lbad3,lb8cf,#ffff
.lb87a
	dw lb8ae,lbed1,lbe43,lbe43
	dw lbdb8,lbdb8,lbd8f,lbd20
	dw lbd20,lbd20,lbd20,lbd20
	dw lbb77,lb8ae,lbb59,lbb04
	dw lba2e,lba02,lb9c5,lb9c5
	dw lb988,lb988,lb988,lb945
	dw lb8fd,#ffff
.lb8b1 equ $ + 3
.lb8ae
	db #f5,#ef,#ff,#c3,#87,#20,#83,#28
	db #2a,#87,#20,#83,#28,#2a,#87,#20
	db #83,#28,#25,#87,#30,#80,#28,#28
	db #23,#28,#2a,#2a,#25,#22,#bf,#10
.lb8cf equ $ + 1
	db #ff,#c3,#80,#20,#10,#10,#20,#10
	db #10,#20,#10,#87,#10,#80,#20,#10
	db #10,#20,#10,#10,#20,#10,#87,#10
	db #80,#30,#20,#20,#30,#20,#20,#23
	db #22,#87,#20,#82,#20,#cc,#8c,#7f
.lb8fd equ $ + 7
	db #00,#20,#10,#c2,#bf,#30,#ff,#c6
	db #80,#40,#40,#37,#40,#43,#42,#40
	db #42,#38,#38,#33,#38,#42,#3a,#35
	db #3a,#c6,#80,#40,#40,#37,#40,#43
	db #42,#40,#42,#38,#38,#33,#33,#3a
	db #3a,#35,#35,#c6,#80,#40,#40,#37
	db #40,#43,#42,#40,#42,#48,#48,#38
	db #38,#4a,#4a,#3a,#3a,#c6,#80,#40
	db #40,#37,#40,#43,#42,#40,#42,#81
.lb945 equ $ + 7
	db #38,#33,#2a,#25,#bf,#20,#ff,#c7
	db #80,#40,#40,#37,#40,#43,#42,#40
	db #42,#40,#40,#42,#42,#43,#43,#47
	db #47,#40,#40,#37,#40,#43,#42,#40
	db #42,#40,#40,#42,#42,#43,#43,#47
	db #47,#3a,#3a,#42,#42,#45,#45,#42
	db #42,#3a,#3a,#42,#42,#45,#45,#42
	db #42,#45,#45,#40,#40,#43,#43,#40
	db #40,#45,#45,#40,#40,#43,#43,#40
.lb988 equ $ + 2
	db #40,#ff,#c4,#80,#50,#50,#47,#50
	db #53,#52,#50,#88,#52,#c6,#80,#40
	db #40,#37,#40,#43,#42,#40,#42,#83
	db #40,#37,#c7,#80,#50,#50,#47,#50
	db #53,#52,#50,#52,#55,#52,#5a,#55
	db #52,#4a,#55,#52,#c7,#80,#40,#40
	db #37,#40,#43,#42,#40,#42,#45,#40
.lb9c5 equ $ + 7
	db #45,#4a,#45,#40,#45,#4a,#ff,#c3
	db #81,#50,#47,#50,#47,#80,#50,#52
	db #53,#57,#55,#53,#52,#53,#c3,#81
	db #50,#47,#50,#47,#80,#50,#52,#53
	db #57,#55,#53,#52,#53,#c3,#81,#4a
	db #45,#4a,#45,#80,#4a,#50,#52,#53
	db #52,#50,#4a,#53,#c3,#81,#50,#45
	db #50,#45,#80,#50,#45,#50,#45,#50
.lba02 equ $ + 4
	db #52,#53,#52,#ff,#cc,#80,#40,#42
	db #43,#45,#87,#47,#83,#50,#82,#47
	db #43,#81,#42,#82,#43,#42,#81,#43
	db #85,#42,#81,#55,#87,#52,#80,#55
	db #50,#55,#5a,#60,#5a,#55,#50,#55
	db #50,#55,#5a,#65,#5a,#59,#5a,#ff
.lba2e
	db #cc,#af,#7f,#00,#40,#35,#87,#35
	db #c0,#80,#30,#30,#30,#30,#30,#30
.lba41 equ $ + 3
	db #30,#30,#ff,#c3,#80,#20,#20,#20
	db #20,#30,#20,#20,#20,#20,#20,#20
	db #20,#1a,#20,#20,#20,#c3,#80,#20
	db #20,#20,#20,#30,#20,#20,#20,#20
	db #20,#20,#20,#1a,#20,#20,#20,#c3
	db #80,#1a,#1a,#1a,#1a,#2a,#1a,#1a
	db #1a,#1a,#1a,#1a,#1a,#18,#1a,#1a
	db #1a,#c3,#80,#15,#15,#15,#15,#25
	db #15,#15,#15,#15,#15,#15,#15,#13
.lba8a equ $ + 4
	db #15,#15,#15,#ff,#c3,#80,#20,#20
	db #20,#20,#30,#20,#20,#20,#20,#20
	db #20,#20,#1a,#20,#20,#20,#c3,#80
	db #20,#20,#20,#20,#30,#20,#20,#20
	db #20,#20,#20,#20,#1a,#20,#20,#20
	db #c3,#80,#20,#20,#20,#20,#30,#20
	db #20,#20,#20,#20,#20,#20,#1a,#20
	db #20,#20,#c3,#80,#20,#20,#20,#20
	db #30,#20,#20,#20,#20,#20,#20,#20
.lbad3 equ $ + 5
	db #1a,#20,#20,#20,#ff,#c0,#83,#30
	db #c1,#30,#c0,#81,#30,#30,#c1,#83
	db #30,#c0,#83,#30,#c1,#30,#c0,#81
	db #30,#30,#c1,#83,#30,#c0,#83,#30
	db #c1,#30,#c0,#81,#30,#30,#c1,#83
	db #30,#c0,#83,#30,#c1,#30,#c0,#81
.lbb04 equ $ + 6
	db #30,#30,#c1,#83,#30,#ff,#cc,#8b
	db #60,#83,#57,#8b,#50,#83,#47,#8b
	db #40,#80,#40,#42,#43,#45,#87,#47
.lbb1b equ $ + 5
	db #85,#43,#81,#42,#ff,#cc,#82,#60
	db #60,#89,#60,#82,#60,#60,#89,#60
	db #82,#5a,#5a,#83,#5a,#81,#5a,#83
.lbb35 equ $ + 7
	db #5b,#82,#60,#60,#89,#60,#ff,#c3
	db #82,#43,#43,#89,#43,#82,#43,#43
	db #89,#43,#82,#42,#42,#83,#42,#81
	db #4a,#83,#43,#82,#43,#43,#81,#43
	db #c0,#80,#30,#30,#30,#30,#30,#30
.lbb59 equ $ + 3
	db #30,#30,#ff,#c3,#82,#47,#47,#89
	db #47,#82,#47,#47,#89,#47,#82,#45
	db #45,#83,#45,#81,#45,#83,#48,#82
.lbb73 equ $ + 5
	db #47,#47,#89,#47,#ff,#cb,#bf,#60
.lbb77 equ $ + 1
	db #ff,#ee,#c3,#81,#20,#80,#20,#20
	db #81,#ed,#20,#80,#20,#20,#81,#ec
	db #18,#28,#1a,#2a,#eb,#c3,#81,#20
	db #80,#20,#20,#81,#ea,#20,#80,#20
	db #20,#81,#e9,#18,#28,#1a,#2a,#e8
	db #c3,#81,#20,#80,#20,#20,#81,#e7
	db #20,#80,#20,#20,#81,#e6,#18,#28
	db #1a,#2a,#e5,#c3,#81,#20,#80,#e4
	db #20,#20,#e3,#81,#20,#80,#20,#20
.lbbc5 equ $ + 7
	db #e2,#81,#18,#28,#1a,#2a,#ff,#ef
	db #c0,#82,#30,#80,#30,#81,#30,#c1
	db #82,#ee,#30,#c0,#80,#30,#30,#30
	db #30,#30,#30,#30,#ed,#82,#30,#80
	db #30,#81,#ec,#30,#c1,#82,#30,#c0
	db #81,#30,#30,#eb,#80,#30,#30,#30
	db #ea,#c0,#82,#30,#80,#30,#81,#30
	db #c1,#82,#e9,#30,#c0,#80,#30,#30
	db #30,#30,#30,#30,#30,#e7,#c0,#82
	db #30,#80,#30,#81,#e6,#30,#c1,#81
	db #e5,#30,#c0,#e2,#80,#30,#30,#30
.lbc1c equ $ + 6
	db #30,#30,#30,#30,#30,#ff,#c8,#80
	db #58,#57,#55,#53,#52,#53,#52,#82
	db #50,#81,#48,#83,#4a,#80,#58,#57
	db #55,#53,#52,#53,#81,#50,#83,#48
	db #45,#80,#58,#57,#55,#53,#55,#57
	db #53,#52,#81,#53,#50,#83,#4a,#80
	db #58,#57,#55,#57,#58,#57,#55,#57
	db #58,#53,#58,#53,#5a,#55,#5a,#55
.lbc57 equ $ + 1
	db #ff,#c7,#80,#30,#33,#37,#40,#43
	db #47,#50,#53,#58,#53,#50,#53,#55
	db #52,#4a,#45,#50,#52,#53,#57,#53
	db #52,#50,#52,#50,#48,#50,#53,#55
	db #5a,#55,#52,#53,#52,#50,#47,#43
	db #42,#50,#43,#48,#43,#40,#38,#3a
	db #35,#32,#35,#37,#40,#42,#43,#47
	db #50,#52,#53,#58,#53,#50,#48,#4a
.lbc9a equ $ + 4
	db #45,#42,#3a,#ff,#c7,#80,#7f,#00
	db #50,#53,#80,#53,#83,#50,#81,#52
	db #53,#80,#52,#50,#52,#53,#81,#50
	db #80,#7f,#00,#50,#53,#53,#83,#50
	db #81,#53,#82,#7f,#00,#48,#4a,#84
	db #4a,#80,#7f,#00,#50,#53,#53,#83
	db #50,#81,#47,#48,#47,#48,#4a,#80
	db #7f,#00,#50,#53,#53,#83,#50,#81
.lbcdd equ $ + 7
	db #7f,#00,#58,#50,#87,#50,#ff,#c6
	db #80,#40,#40,#37,#40,#43,#42,#40
	db #42,#38,#38,#33,#38,#3a,#3a,#35
	db #3a,#40,#40,#37,#40,#43,#42,#40
	db #42,#38,#38,#33,#38,#3a,#3a,#35
	db #3a,#40,#40,#37,#40,#43,#42,#40
	db #42,#38,#38,#33,#38,#3a,#3a,#35
	db #3a,#40,#40,#37,#40,#43,#42,#40
	db #42,#38,#38,#33,#38,#3a,#3a,#35
.lbd20 equ $ + 2
	db #3a,#ff,#c3,#81,#20,#80,#20,#20
	db #81,#20,#80,#20,#20,#81,#18,#28
	db #1a,#2a,#c3,#81,#20,#80,#20,#20
	db #81,#20,#80,#20,#20,#81,#18,#28
	db #1a,#2a,#c3,#81,#20,#80,#20,#20
	db #81,#20,#80,#20,#20,#81,#18,#28
	db #1a,#2a,#c3,#81,#20,#80,#20,#20
	db #81,#20,#80,#20,#20,#81,#18,#28
.lbd61 equ $ + 3
	db #1a,#2a,#ff,#c2,#97,#30,#c6,#80
	db #28,#28,#23,#28,#2a,#2a,#25,#2a
	db #40,#40,#37,#40,#43,#42,#40,#42
	db #38,#38,#33,#38,#3a,#3a,#35,#3a
	db #40,#40,#37,#40,#43,#42,#40,#42
	db #38,#38,#33,#38,#3a,#3a,#35,#3a
.lbd8f equ $ + 1
	db #ff,#c3,#87,#10,#81,#10,#10,#80
	db #10,#10,#81,#20,#87,#10,#80,#20
	db #10,#10,#20,#10,#10,#20,#20,#87
	db #10,#81,#13,#18,#15,#1a,#87,#10
	db #80,#20,#10,#10,#20,#10,#10,#20
.lbdb8 equ $ + 2
	db #23,#ff,#c3,#82,#20,#80,#20,#81
	db #20,#82,#20,#80,#18,#18,#18,#83
	db #1a,#82,#20,#80,#20,#81,#20,#82
	db #20,#80,#18,#18,#1a,#25,#2a,#81
	db #1a,#82,#20,#80,#20,#81,#20,#82
	db #20,#80,#18,#18,#18,#81,#13,#1a
	db #82,#20,#80,#20,#81,#20,#82,#20
	db #80,#28,#38,#28,#2a,#3a,#2a,#25
.lbdf7 equ $ + 1
	db #ff,#c0,#82,#30,#80,#30,#81,#30
	db #c1,#82,#30,#c0,#80,#30,#30,#30
	db #30,#30,#30,#30,#82,#30,#80,#30
	db #81,#30,#c1,#82,#30,#c0,#81,#30
	db #30,#80,#30,#30,#30,#c0,#82,#30
	db #80,#30,#81,#30,#c1,#82,#30,#c0
	db #80,#30,#30,#30,#30,#30,#30,#30
	db #c0,#82,#30,#80,#30,#81,#30,#c1
	db #81,#30,#c0,#80,#30,#30,#30,#30
.lbe43 equ $ + 5
	db #30,#30,#30,#30,#ff,#c2,#bf,#30
.lbe47 equ $ + 1
	db #ff,#c4,#80,#50,#50,#47,#50,#53
	db #52,#50,#52,#48,#48,#43,#48,#4a
	db #4a,#45,#4a,#50,#50,#47,#50,#53
	db #52,#50,#52,#48,#48,#43,#48,#4a
	db #4a,#45,#4a,#50,#50,#47,#50,#53
	db #52,#50,#52,#48,#48,#43,#48,#4a
	db #4a,#45,#4a,#50,#50,#47,#50,#53
	db #52,#50,#52,#48,#48,#43,#48,#4a
.lbe8a equ $ + 4
	db #4a,#45,#4a,#ff,#c5,#80,#01,#02
	db #03,#04,#05,#06,#07,#08,#09,#0a
	db #0b,#0c,#0d,#0e,#0f,#10,#11,#12
	db #13,#14,#15,#16,#17,#18,#19,#1a
	db #1b,#1c,#1d,#1e,#1e,#1e,#1e,#1e
	db #1e,#1d,#1c,#1b,#1a,#19,#18,#17
	db #16,#15,#14,#13,#12,#11,#10,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#ff,#ca
.lbed1 equ $ + 3
	db #bf,#20,#ff,#ca,#b7,#20,#c0,#80
	db #30,#30,#30,#30,#30,#30,#30,#30
	db #ff,#cf,#cf,#cf,#cf,#cf,#cf,#cf
	db #cf,#cf,#cf,#cf,#cf,#cf,#cf,#cf
	db #cf,#cf,#cf,#cf,#cf,#cf,#cf,#cf
	db #cf,#cf,#cf,#cf,#cf,#cf,#8f,#00
	db #4f,#67,#00,#02,#01,#03,#08,#0a
	db #09,#0b,#04,#06,#05,#07,#0c,#0e
	db #0d,#0f,#20,#22,#21,#23,#28,#2a
	db #29,#2b,#24,#26,#25,#27,#2c,#2e
	db #2d,#2f,#10,#12,#11,#13,#18,#1a
	db #19,#1b,#14,#16,#15,#17,#1c,#1e
	db #1d,#1f,#30,#32,#31,#33,#38,#3a
	db #39,#3b,#34,#36,#35,#37,#3c,#3e
	db #3d,#3f,#80,#82,#81,#83,#88,#8a
	db #89,#8b,#84,#86,#85,#87,#8c,#8e
	db #8d,#8f,#a0,#a2,#a1,#a3,#a8,#aa
	db #a9,#ab,#a4,#a6,#a5,#a7,#ac,#ae
	db #ad,#af,#90,#92,#91,#93,#98,#9a
	db #99,#9b,#94,#96,#95,#97,#9c,#9e
	db #9d,#9f,#b0,#b2,#b1,#b3,#b8,#ba
	db #b9,#bb,#b4,#b6,#b5,#b7,#bc,#be
	db #bd,#bf,#40,#42,#41,#43,#48,#4a
	db #49,#4b,#44,#46,#45,#47,#4c,#4e
	db #4d,#4f,#60,#62,#61,#63,#68,#6a
	db #69,#6b,#64,#66,#65,#67,#6c,#6e
	db #6d,#6f,#50,#52,#51,#53,#58,#5a
	db #59,#5b,#54,#56,#55,#57,#5c,#5e
	db #5d,#5f,#70,#72,#71,#73,#78,#7a
	db #79,#7b,#74,#76,#75,#77,#7c,#7e
	db #7d,#7f,#c0,#c2,#c1,#c3,#c8,#ca
	db #c9,#cb,#c4,#c6,#c5,#c7,#cc,#ce
	db #cd,#cf,#e0,#e2,#e1,#e3,#e8,#ea
	db #e9,#eb,#e4,#e6,#e5,#e7,#ec,#ee
	db #ed,#ef,#d0,#d2,#d1,#d3,#d8,#da
	db #d9,#db,#d4,#d6,#d5,#d7,#dc,#de
	db #dd,#df,#f0,#f2,#f1,#f3,#f8,#fa
	db #f9,#fb,#f4,#f6,#f5,#f7,#fc,#fe
	db #fd,#ff,#ff
;
.music_info
	db "Xenophobe Game (1989)(MicroStyle)()",0
	db "",0

	read "music_end.asm"
