; Music of Death Wish 3 (1987)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 14/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DEATHWI3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b000

	read "music_header.asm"

	jp lb684	; init music
	jp lb0fd	; play music
.lb006
	db #00,#08,#81,#28,#0a,#02,#7f,#00
	db #0b,#00,#08,#81,#26,#0a,#02,#7f
	db #00,#0b,#00,#08,#41,#29,#2a,#02
	db #7f,#00,#0e,#00,#08,#81,#08,#0a
	db #02,#7f,#00,#0f,#00,#08,#41,#28
	db #0a,#02,#7f,#00,#0f,#00,#08,#41
	db #4c,#0a,#02,#7f,#08,#0f,#00,#08
	db #41,#3a,#4a,#04,#7f,#10,#0f,#00
	db #08,#41,#29,#0a,#03,#7f,#00,#0e
.lb04e
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
	db #48,#09,#12,#1b,#24,#2d,#36,#3f
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
.lb06d equ $ + 7
.lb06c equ $ + 6
.lb067 equ $ + 1
.lb066
	db #00,#b8,#0f,#00,#00,#00,#00,#00
.lb06f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb08b equ $ + 5
.lb08a equ $ + 4
.lb089 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb09c equ $ + 6
.lb099 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb0b8 equ $ + 2
.lb0b7 equ $ + 1
.lb0b6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb0c9 equ $ + 3
.lb0c6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb0e5 equ $ + 7
.lb0e4 equ $ + 6
.lb0e3 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb0f5 equ $ + 7
.lb0f3 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb0fc equ $ + 6
.lb0f9 equ $ + 3
.lb0f7 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00
;
.lb0fd
.play_music
;
	ld hl,lb066
	ld a,(lb06f)
	dec a
	jr nz,lb10a
	ld (lb06f),a
	inc (hl)
.lb10a
	ld a,(lb09c)
	dec a
	jr nz,lb114
	ld (lb09c),a
	inc (hl)
.lb114
	ld a,(lb0c9)
	dec a
	jr nz,lb11e
	ld (lb0c9),a
	inc (hl)
.lb11e
	xor a
	ld (lb0fc),a
	ld ix,lb06c
	ld (lb2d4),a
	ld hl,lb7ee
	ld (lb216),hl
	ld (lb6a6),hl
	ld (lb6b9),hl
	ld (lb6d7),hl
	ld de,(lb0f3)
	call lb1e4
	ld ix,lb099
	ld a,#01
	ld (lb0fc),a
	ld hl,lb812
	ld (lb216),hl
	ld (lb6a6),hl
	ld (lb6b9),hl
	ld (lb6d7),hl
	ld a,#08
	ld (lb2d4),a
	ld de,(lb0f5)
	call lb1e4
	ld ix,lb0c6
	ld a,#02
	ld (lb0fc),a
	ld hl,lb862
	ld (lb216),hl
	ld (lb6a6),hl
	ld (lb6b9),hl
	ld (lb6d7),hl
	ld a,#10
	ld (lb2d4),a
	ld de,(lb0f7)
	call lb1e4
	ld de,#c000
	ld hl,#f680
	ld a,(lb066)
	or a
	jr nz,lb1db
	ld c,#00
	ld a,(lb089)
	call lbb6c
	inc c
	ld a,(lb08a)
	call lbb6c
	inc c
	ld a,(lb0b6)
	call lbb6c
	inc c
	ld a,(lb0b7)
	call lbb6c
	inc c
	ld a,(lb0e3)
	call lbb6c
	inc c
	ld a,(lb0e4)
	call lbb6c
	inc c
	inc c
	ld a,(lb067)
	call lbb6c
	inc c
	ld a,(lb08b)
	call lbb6c
	inc c
	ld a,(lb0b8)
	call lbb6c
	inc c
	ld a,(lb0e5)
	call lbb6c
.lb1db
	xor a
	ld (lb066),a
	ld c,#0e
	jp lbb6c
.lb1e4
	ld a,(ix+#03)
	or a
	jp nz,lb44e
	ld a,(ix+#11)
	cp #ff
	jr z,lb1f6
	ld (ix+#11),#00
.lb1f6
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,lb26d
	ld a,(ix+#04)
	or a
	jr z,lb210
	dec (ix+#04)
	ld (ix+#02),#00
	jr lb1f6
.lb210
	ld l,(ix+#00)
	ld h,#00
.lb216 equ $ + 1
	ld bc,lb7ee
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	cp #ff
	jp z,lb685
	bit 7,a
	jp z,lb24a
	ld l,a
	and #1f
	ld (lb0f9),a
	ld a,l
	and #60
	srl a
	srl a
	srl a
	ld (lb23a),a
.lb23a equ $ + 1
.lb239
	jr lb239
	jp lb6b3
	nop
	jp lb6ea
	nop
	jp lb6a0
	nop
	jp lb6c6
.lb24a
	ld c,a
	ld a,(lb0fc)
	add a
	ld e,a
	ld d,#00
	ld b,d
	ld hl,lb8a8
	add hl,bc
	ld a,(hl)
	ld hl,lb8bf
	add hl,bc
	ld b,(hl)
	ld hl,lb0f3
	add hl,de
	ld (hl),a
	inc hl
	ld (hl),b
	ld e,a
	ld d,b
	ld (ix+#02),#00
	jp lb1f6
.lb26d
	bit 7,a
	jp z,lb3c2
	cp #a0
	jr nz,lb288
	inc (ix+#02)
	call lb6f4
	ld (ix+#16),a
	ld (ix+#03),a
	inc (ix+#02)
	jp lb457
.lb288
	cp #90
	jr c,lb2d1
	cp #c0
	jr c,lb2b9
	ld (ix+#15),a
	and #1f
	ld (ix+#14),a
	inc (ix+#02)
	call lb6f4
	ld (ix+#12),a
	inc (ix+#02)
	call lb6f4
	ld (ix+#13),a
	inc (ix+#02)
	call lb6f4
	ld (ix+#11),a
	inc (ix+#02)
	jp lb1f6
.lb2b9
	cp #bf
	jr nz,lb2c3
	ld (ix+#11),#00
	jr lb2cb
.lb2c3
	and #0f
	add a
	add a
	add a
	ld (ix+#10),a
.lb2cb
	inc (ix+#02)
	jp lb1f6
.lb2d1
	and #0f
.lb2d4 equ $ + 1
	add #00
	ld l,a
	ld h,#00
	ld bc,lb04e
	add hl,bc
	ld l,(hl)
	ld h,#00
	ld bc,lb006
	add hl,bc
	push hl
	pop iy
	ld a,(iy+#08)
	ld (ix+#2b),a
	ld hl,lb067
	ld a,(lb0fc)
	or a
	jr nz,lb305
	res 3,(hl)
	set 0,(hl)
	bit 7,(iy+#02)
	jr nz,lb326
	set 3,(hl)
	res 0,(hl)
	jr lb326
.lb305
	dec a
	jr nz,lb318
	set 1,(hl)
	res 4,(hl)
	bit 7,(iy+#02)
	jr nz,lb326
	res 1,(hl)
	set 4,(hl)
	jr lb326
.lb318
	set 2,(hl)
	res 5,(hl)
	bit 7,(iy+#02)
	jr nz,lb326
	res 2,(hl)
	set 5,(hl)
.lb326
	ld (ix+#24),#0f
	ld (ix+#25),#01
	ld a,(iy+#03)
	push af
	and #f0
	jr z,lb354
	rrca
	rrca
	rrca
	rrca
	ld c,a
	ld b,#00
	ld hl,lbb4c
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,lb34b
	ld (ix+#24),a
	jr lb354
.lb34b
	and #7f
	ld (ix+#25),a
	ld (ix+#24),#01
.lb354
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
	jr z,lb387
	ld c,a
	ld b,#00
	ld hl,lbb5c
	add hl,bc
	ld a,(hl)
	bit 7,(hl)
	jr nz,lb37e
	ld (ix+#21),a
	jr lb387
.lb37e
	and #7f
	ld (ix+#22),a
	ld (ix+#21),#01
.lb387
	ld (ix+#27),#0f
	ld (ix+#28),#01
	ld a,(iy+#04)
	and #0f
	jr z,lb3b0
	ld c,a
	ld b,#00
	ld hl,lbb5c
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,lb3a7
	ld (ix+#27),a
	jr lb3b0
.lb3a7
	and #7f
	ld (ix+#28),a
	ld (ix+#27),#01
.lb3b0
	ld a,(iy+#05)
	ld (ix+#06),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	inc (ix+#02)
	jp lb1f6
.lb3c2
	add #1b
	add (ix+#01)
	ld c,a
	ld b,#00
	ld (ix+#1c),a
	ld hl,lb6fd
	add hl,bc
	ld a,(hl)
	ld hl,lb751
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
	jr z,lb423
	ld l,a
	ld h,#00
	ld bc,lb79d
	add hl,bc
	ld a,(hl)
	ld (ix+#0a),a
	ld (ix+#0c),#01
.lb423
	ld a,(ix+#10)
	or a
	jr z,lb441
	ld l,a
	ld h,#00
	ld bc,lb7ad
	add hl,bc
	ld a,(hl)
	and #78
	srl a
	srl a
	srl a
	inc a
	ld (ix+#18),a
	ld (ix+#17),#01
.lb441
	ld a,(ix+#15)
	and #1f
	ld (ix+#14),a
	ex af,af'
	ld (ix+#03),a
	ret
.lb44e
	cp (ix+#06)
	jr nz,lb457
	res 0,(ix+#2a)
.lb457
	ld a,(ix+#16)
	or a
	jr z,lb466
	dec (ix+#16)
	ret nz
	ld (ix+#03),#00
	ret
.lb466
	dec (ix+#03)
	ld a,(lb066)
	or a
	ret nz
	bit 0,(ix+#2a)
	jr z,lb4d8
	bit 7,(ix+#25)
	jr nz,lb4a5
	inc (ix+#26)
	ld a,(ix+#26)
	cp (ix+#25)
	jr nz,lb502
	ld (ix+#26),#00
	ld a,(ix+#24)
	add (ix+#1f)
	cp (ix+#2b)
	jr c,lb4a0
	ld a,(ix+#2b)
	ld (ix+#1f),a
	set 7,(ix+#25)
	jr lb502
.lb4a0
	ld (ix+#1f),a
	jr lb502
.lb4a5
	bit 7,(ix+#22)
	jr nz,lb502
	inc (ix+#23)
	ld a,(ix+#23)
	cp (ix+#22)
	jr nz,lb502
	ld (ix+#23),#00
	ld a,(ix+#1f)
	sub (ix+#21)
	jr nc,lb4ce
.lb4c2
	ld a,(ix+#20)
	ld (ix+#1f),a
	set 7,(ix+#22)
	jr lb502
.lb4ce
	cp (ix+#20)
	jr c,lb4c2
	ld (ix+#1f),a
	jr lb502
.lb4d8
	bit 7,(ix+#28)
	jr nz,lb502
	inc (ix+#29)
	ld a,(ix+#29)
	cp (ix+#28)
	jr nz,lb502
	ld (ix+#29),#00
	ld a,(ix+#1f)
	sub (ix+#27)
	jr nc,lb4ff
	ld (ix+#1f),#00
	set 7,(ix+#28)
	jr lb502
.lb4ff
	ld (ix+#1f),a
.lb502
	ld a,(ix+#0b)
	or a
	jp z,lb58d
	ld a,(ix+#0a)
	or a
	jr z,lb51f
	bit 7,a
	jr z,lb519
	and #7f
	jr z,lb58d
	jr lb51f
.lb519
	dec (ix+#0a)
	jp lb58d
.lb51f
	ld a,(ix+#0c)
	and #7f
	add (ix+#0b)
	ld l,a
	ld h,#00
	ld bc,lb79d
	add hl,bc
	ld a,(hl)
	ld (lb0f9),a
	bit 7,a
	jr z,lb552
	neg
	ld (lb0f9),a
	bit 7,(ix+#0c)
	jr nz,lb55e
.lb541
	ld hl,lb0f9
	ld a,(ix+#1d)
	sub (hl)
	ld (ix+#1d),a
	jr nc,lb56c
	dec (ix+#1e)
	jr lb56c
.lb552
	ld a,(lb0f9)
	ld (lb0f9),a
	bit 7,(ix+#0c)
	jr nz,lb541
.lb55e
	ld a,(lb0f9)
	add (ix+#1d)
	ld (ix+#1d),a
	jr nc,lb56c
	inc (ix+#1e)
.lb56c
	inc (ix+#0c)
	ld a,(ix+#0c)
	and #7f
	cp #08
	jr nz,lb58d
	ld a,(ix+#0c)
	xor #89
	ld (ix+#0c),a
	cp #01
	jr nz,lb58d
	ld a,(ix+#0a)
	or a
	jr z,lb58d
	dec (ix+#0a)
.lb58d
	ld a,(ix+#10)
	or a
	jp z,lb628
	dec (ix+#18)
	jp nz,lb628
	add (ix+#17)
	ld l,a
	ld h,#00
	ld bc,lb7ad
	add hl,bc
	ld a,(ix+#17)
	bit 7,a
	jr nz,lb607
	or a
	jr nz,lb5ba
	ld a,(hl)
	and #38
	srl a
	srl a
	srl a
	or a
	jr nz,lb5bb
.lb5ba
	ld a,(hl)
.lb5bb
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
	ld hl,lb6fd
	add hl,bc
	ld a,(hl)
	ld hl,lb751
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
	ld bc,lb7ad
	add hl,bc
	ld a,(hl)
	and #07
	inc a
	cp (ix+#17)
	jr nz,lb628
	bit 7,(hl)
	ld a,#ff
	jr z,lb601
	xor a
.lb601
	ld (ix+#17),a
	jp lb628
.lb607
	cp #ff
	jr nz,lb628
	dec (ix+#17)
	ld c,(ix+#1c)
	ld b,#00
	ld hl,lb6fd
	add hl,bc
	ld a,(hl)
	ld hl,lb751
	add hl,bc
	ld h,(hl)
	ld l,a
	ld c,(ix+#09)
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.lb628
	ld a,(ix+#14)
	or a
	jr z,lb633
	dec (ix+#14)
	jr lb678
.lb633
	ld a,(ix+#11)
	or a
	jr z,lb678
	cp #ff
	jr z,lb640
	dec (ix+#11)
.lb640
	ld a,(ix+#15)
	and #20
	jr z,lb660
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
	jr lb678
.lb660
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	sbc hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.lb678
	ret
;
.stop_music
;
	xor a
	ld (lb08b),a
	ld (lb0b8),a
	ld (lb0e5),a
	ret
;
.init_music
.lb684
;
	push af
.lb685
	ld hl,lb6fc
	ld (lb0f3),hl
	ld (lb0f5),hl
	ld (lb0f7),hl
	ld hl,lb06c
	ld de,lb06d
	ld bc,#0086
	ld (hl),#00
	ldir
	pop af
	ret
.lb6a0
	ld l,(ix+#00)
	ld h,#00
.lb6a6 equ $ + 1
	ld bc,lb7ee
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#09),a
	jp lb210
.lb6b3
	ld l,(ix+#00)
	ld h,#00
.lb6b9 equ $ + 1
	ld bc,lb7ee
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#01),a
	jp lb210
.lb6c6
	ld a,(lb2d4)
	ld c,a
	ld a,(lb0f9)
	add c
	ld (lb6df),a
	ld l,(ix+#00)
	ld h,#00
.lb6d7 equ $ + 1
	ld bc,lb7ee
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
.lb6df equ $ + 1
	ld l,#00
	ld h,#00
	ld bc,lb04e
	add hl,bc
	ld (hl),a
	jp lb210
.lb6ea
	ld a,(lb0f9)
	dec a
	ld (ix+#04),a
	jp lb210
.lb6f4
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	ret
.lb6fc
	db #ff
.lb6fd
	db #ee,#18,#4d,#8e,#da,#2f,#8f,#f7
	db #68,#e1,#61,#e9,#77,#0c,#a7,#47
	db #ed,#98,#47,#fc,#d4,#70,#31,#f4
	db #dc,#86,#53,#24,#f6,#cc,#a4,#7e
	db #5a,#38,#18,#fa,#de,#c3,#aa,#92
	db #7b,#66,#52,#3f,#2d,#1c,#0c,#fd
	db #ef,#e1,#d5,#c9,#be,#b3,#a9,#9f
	db #96,#8e,#86,#7f,#77,#71,#6a,#64
	db #5f,#59,#54,#50,#4b,#47,#43,#3f
	db #3c,#38,#35,#32,#2f,#2d,#2a,#28
	db #26,#24,#22,#20
.lb751
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
.lb79d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#01,#ff,#01,#ff,#01,#ff,#00
.lb7ad
	db #09,#01,#ff,#01,#fe,#02,#01,#ff
	db #89,#b1,#00,#00,#00,#00,#00,#00
	db #8a,#29,#49,#00,#00,#00,#00,#00
	db #8a,#21,#39,#00,#00,#00,#00,#00
	db #8a,#19,#41,#00,#00,#00,#00,#00
	db #8a,#21,#49,#00,#00,#00,#00,#00
	db #89,#61,#00,#00,#00,#00,#00,#00
	db #8a,#19,#39,#00,#00,#00,#00,#00
	db #00
.lb7ee
	db #80,#0c,#be,#00,#b2,#00,#80,#0c
	db #a8,#06,#08,#08,#a6,#06,#08,#08
	db #80,#fb,#0f,#80,#02,#0f,#0f,#80
	db #04,#0f,#0f,#80,#0c,#a4,#08,#be
	db #06,#08,#08,#ff
.lb812
	db #0d,#80,#fe,#0d,#80,#f9,#0d,#80
	db #00,#0e,#0d,#80,#fe,#0d,#80,#f9
	db #0d,#80,#00,#0e,#80,#f4,#b2,#07
	db #80,#f9,#07,#07,#80,#f4,#a8,#07
	db #80,#f9,#07,#07
.lb836
	db #80,#f4,#aa,#07,#0b,#a6,#07,#0b
	db #a4,#07,#80,#fb,#a8,#07,#80,#fd
	db #b0,#02,#b0,#02,#80,#fe,#12,#80
	db #fc,#12,#80,#00,#0b,#80,#f4,#a4
	db #07,#09,#09,#09,#01,#07,#07,#01
	db #07,#07,#01,#ff
.lb862
	db #c0,#02,#0d,#80,#fe,#0d,#80,#f9
	db #0d,#80,#00,#0e,#0d,#80,#fe,#0d
	db #80,#f9,#0d,#c0,#00,#80,#00,#0e
	db #a4,#16,#01,#05,#01,#05
.lb880
	db #01,#05,#03,#03,#04,#16,#16,#0c
	db #0c,#a4,#11,#80,#07,#10,#10,#80
	db #09,#10,#10,#80,#fe,#13,#80,#fc
	db #13,#80,#00,#14,#11,#16,#11,#a5
	db #16,#0a,#15,#0a,#04,#04,#04,#ff
.lb8a8
	db #d6,#ed,#11,#15,#22,#57,#5a,#77
	db #91,#bc,#ea,#0d,#33,#68,#6e,#78
	db #c8,#f0,#f5,#08,#1b,#47,#49
.lb8bf
;	db #b8,#b8,#b9,#b9,#b9,#b9,#b9,#b9
;	db #b9,#b9,#b9,#ba,#ba,#ba,#ba,#ba
;	db #ba,#ba,#ba,#bb,#bb,#bb,#bb
	db lb880/&100,lb836/&100,lb906/&100,lb981/&100
	db lb936/&100,lb906/&100,lb936/&100,lb906/&100
	db lb936/&100,lb90c/&100,lb936/&100,lba0c/&100
	db lba36/&100,lba06/&100,lba36/&100,lba06/&100
	db lba36/&100,lba06/&100,lba36/&100,lbb06/&100
	db lbb36/&100,lbb06/&100,lbbff/&100
;	db #80,#36,#06,#81,#36,#06,#36,#06
;	db #36,#0c,#36,#0c,#36,#06,#36,#06
;	db #36,#06,#36,#06,#36,#06,#ff
	db lb880,lb836,lb906,lb981
	db lb936,lb906,lb936,lb906
	db lb936,lb90c,lb936,lba0c
	db lba36,lba06,lba36,lba06
	db lba36,lba06,lba36,lbb06
	db lbb36,lbb06,lbbff

	db #82,#15,#0c,#14,#06,#12,#0c,#14
	db #12,#12,#06,#10,#0c,#12,#12,#10
	db #06,#0f,#0c,#10,#12,#0f,#06,#0d
.lb90c equ $ + 7
.lb906 equ $ + 1
	db #0c,#0b,#72,#0b,#0c,#0d,#06,#09
	db #0c,#06,#06,#ff,#82,#06,#12,#ff
	db #82,#93,#2d,#0c,#97,#2c,#06,#2a
	db #0c,#2c,#72,#90,#ff,#82,#95,#2d
	db #0c,#92,#2f,#06,#95,#2d,#0c,#92
	db #2f,#12,#95,#2d,#06,#94,#2c,#0c
.lb936 equ $ + 1
	db #92,#2a,#12,#94,#2c,#06,#92,#2a
	db #0c,#94,#2c,#12,#92,#2a,#06,#93
	db #28,#0c,#94,#27,#72,#27,#0c,#97
	db #2a,#06,#94,#25,#0c,#97,#2a,#96
	db #90,#ff,#06,#90,#ff,#80,#36,#06
	db #81,#36,#06,#36,#06,#83,#0d,#0c
	db #90,#81,#36,#0c,#36,#06,#36,#06
	db #83,#0d,#06,#90,#81,#36,#06,#36
	db #06,#ff,#84,#06,#06,#06,#06,#06
.lb981 equ $ + 4
	db #06,#12,#06,#06,#06,#12,#06,#06
	db #06,#06,#06,#06,#06,#10,#06,#06
	db #06,#12,#06,#ff,#87,#e0,#00,#02
	db #ff,#17,#06,#17,#06,#17,#06,#bf
	db #83,#0d,#06,#90,#87,#e0,#00,#01
	db #ff,#14,#06,#14,#06,#11,#0c,#11
	db #06,#bf,#83,#0d,#06,#90,#e0,#00
	db #01,#ff,#87,#11,#0c,#bf,#ff,#84
	db #06,#0c,#08,#06,#09,#0c,#02,#18
	db #09,#12,#08,#0c,#06,#06,#05,#0c
	db #06,#18,#08,#12,#09,#0c,#0b,#06
	db #0d,#0c,#0e,#18,#0b,#0c,#0d,#06
	db #0f,#0c,#10,#18,#0d,#0c,#0f,#06
	db #11,#0c,#12,#06,#ff,#86,#2a,#36
	db #2a,#12,#29,#0c,#2c,#12,#2a,#18
	db #28,#12,#25,#0c,#28,#12,#2a,#18
	db #27,#0c,#2a,#12,#2c,#18,#2f,#0c
.lba0c equ $ + 7
.lba06 equ $ + 1
	db #2d,#06,#2c,#0c,#2a,#06,#90,#ff
	db #84,#09,#06,#09,#06,#09,#06,#09
	db #06,#09,#06,#09,#06,#0b,#0c,#0d
	db #0c,#0e,#0c,#0b,#06,#0b,#06,#0b
	db #06,#0b,#06,#0b,#06,#0b,#06,#0d
	db #0c,#0f,#0c,#10,#0c,#ff,#85,#97
.lba36 equ $ + 1
	db #2a,#90,#93,#28,#90,#26,#90,#92
	db #1c,#06,#1c,#06,#1c,#06,#1c,#06
	db #1c,#06,#1c,#06,#1e,#0c,#93,#21
	db #0c,#92,#21,#0c,#1e,#06,#1e,#06
	db #1e,#06,#1e,#06,#1e,#06,#1e,#06
	db #94,#20,#0c,#93,#23,#0c,#92,#23
	db #0c,#90,#ff,#82,#06,#0c,#06,#84
	db #ff,#82,#0d,#0c,#0b,#06,#09,#0c
	db #06,#72,#ff,#82,#97,#2f,#06,#2f
	db #06,#2f,#06,#90,#83,#0d,#12,#94
	db #82,#31,#0c,#92,#2f,#06,#90,#83
	db #0d,#12,#82,#97,#2f,#06,#2f,#06
	db #2f,#06,#90,#83,#0d,#12,#94,#82
	db #31,#0c,#92,#2f,#06,#90,#83,#0d
	db #12,#82,#97,#2f,#06,#2f,#06,#2f
	db #06,#90,#83,#0d,#12,#94,#82,#31
	db #0c,#92,#2f,#0c,#93,#2d,#0c,#97
	db #2f,#12,#90,#83,#0d,#12,#a0,#12
	db #0d,#12,#ff,#82,#21,#06,#20,#06
	db #1e,#06,#1e,#06,#20,#06,#21,#06
	db #20,#0c,#23,#0c,#20,#0c,#21,#06
	db #20,#06,#1e,#06,#1e,#06,#20,#06
	db #21,#06,#20,#0c,#1e,#0c,#1c,#0c
	db #1e,#90,#ff,#97,#2a,#48,#90,#ff
	db #12,#06,#12,#06,#12,#06,#12,#06
	db #11,#06,#0f,#06,#0d,#0c,#0f,#0c
	db #11
.lbb06
	db #0c,#ff,#22,#06,#22,#06,#22,#06
	db #22,#06,#20,#06,#1e,#06,#1d,#0c
	db #1e,#0c,#20,#0c,#ff,#92,#1c,#06
	db #1c,#06,#1c,#06,#1c,#06,#1c,#06
	db #1c,#06,#1e,#0c,#93,#21,#0c,#92
	db #21,#0c,#1e,#06,#1e,#06,#1e,#06
.lbb36
	db #1e,#06,#1e,#06,#1e,#06,#94,#20
	db #0c,#93,#23,#0c,#92,#23,#0c,#90
	db #ff,#96,#ff,#a0,#48,#ff
.lbb4c
	db #0f,#0f,#0f,#0d,#08,#06,#05,#04
	db #03,#01,#82,#83,#83,#89,#90,#99
.lbb5c
	db #0f,#0d,#07,#04,#03,#02,#02,#01
	db #01,#82,#85,#88,#89,#9c,#ae,#cb
.lbb6c
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
.lbbff
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
	db #df,#8b,#a8,#df,#8b,#a8,#df,#8b
	db #a8,#df,#8b,#a8,#df,#8b,#a8,#df
	db #8b,#a8,#df,#8b,#a8,#df,#8b,#a8
	db #df,#8b,#a8,#df,#8b,#a8,#df,#8b
	db #a8,#df,#8b,#a8,#df,#8b,#a8,#cf
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
	db #19,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0c,#1c,#18,#10,#00,#18
	db #18,#00,#6c,#6c,#24,#00,#00,#00
	db #00,#00,#18,#7e,#ff,#ff,#7e,#18
	db #00,#55,#aa,#ff,#ff,#ff,#ff,#1f
	db #8f,#55,#be,#ff,#ff,#ff,#ff,#f9
	db #fc,#5f,#bd,#ff,#ff,#fa,#dd,#f2
	db #08,#00,#08,#10,#00,#00,#00,#00
	db #00,#fa,#f4,#a4,#50,#a0,#00,#00
	db #00,#00,#20,#30,#18,#18,#18,#30
	db #20,#00,#00,#14,#08,#3e,#08,#14
	db #00,#00,#00,#08,#08,#3e,#08,#08
	db #00,#00,#00,#00,#00,#18,#18,#08
	db #10,#00,#00,#00,#00,#3e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#18
	db #18,#00,#02,#06,#0c,#18,#30,#60
	db #00,#00,#1c,#36,#63,#6b,#63,#36
	db #1c,#00,#08,#18,#38,#18,#18,#1a
	db #3e,#00,#3c,#66,#0e,#3c,#70,#62
	db #7e,#00,#3c,#66,#0c,#06,#06,#66
	db #3c,#00,#1c,#3c,#6c,#4c,#7e,#0c
	db #0e,#00,#7e,#60,#7c,#06,#06,#66
	db #3c,#00,#3c,#66,#60,#7c,#66,#66
	db #3c,#00,#7e,#46,#06,#0c,#0c,#18
	db #18,#00,#3c,#66,#66,#3c,#66,#66
	db #3c,#00,#3c,#66,#66,#3e,#06,#66
	db #3c,#00,#00,#00,#18,#18,#00,#18
	db #18,#00,#00,#30,#00,#30,#30,#10
	db #20,#00,#04,#0c,#18,#30,#18,#0c
	db #04,#00,#00,#00,#3e,#00,#3e,#00
	db #00,#00,#10,#18,#0c,#06,#0c,#18
	db #10,#00,#3c,#66,#06,#0c,#18,#00
	db #18,#00,#3c,#4a,#56,#5e,#40,#3c
	db #00,#00,#18,#3c,#24,#66,#7e,#66
	db #66,#00,#7c,#66,#66,#7c,#66,#66
	db #7c,#00,#3c,#66,#60,#60,#60,#66
	db #3c,#00,#78,#6c,#66,#66,#66,#6c
	db #78,#00,#7e,#62,#60,#78,#60,#62
	db #7e,#00,#7e,#62,#60,#78,#60,#60
	db #60,#00,#3c,#66,#60,#6e,#66,#66
	db #3c,#00,#66,#66,#66,#7e,#66,#66
	db #66,#00,#7e,#5a,#18,#18,#18,#5a
	db #7e,#00,#06,#06,#06,#66,#66,#66
	db #3c,#00,#66,#6c,#78,#70,#78,#6c
	db #66,#00,#60,#60,#60,#60,#60,#62
	db #7e,#00,#42,#66,#7e,#5a,#66,#66
	db #66,#00,#66,#66,#76,#7a,#5e,#6e
	db #66,#00,#3c,#66,#66,#66,#66,#66
	db #3c,#00,#7c,#66,#66,#66,#7c,#60
	db #60,#00,#3c,#66,#66,#62,#6c,#66
	db #3a,#00,#7c,#66,#66,#64,#78,#6c
	db #66,#00,#3c,#66,#60,#3c,#06,#66
	db #3c,#00,#7e,#5a,#18,#18,#18,#18
	db #18,#00,#66,#66,#66,#66,#66,#66
	db #3c,#00,#66,#66,#66,#66,#24,#3c
	db #18,#00,#66,#66,#66,#5a,#7e,#66
	db #42,#00,#66,#66,#34,#18,#2c,#66
	db #66,#00,#66,#66,#66,#3c,#18,#18
	db #18,#00,#7e,#46,#0c,#18,#30,#62
	db #7e,#00,#00,#00,#00,#00,#00,#03
	db #1f,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff
;
.music_info
	db "Death Wish 3 (1987)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
