; Music of Peter Beardsley's International Football (1988)(Grandslam)()()
; Ripped bu Megachur the 08/02/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PETERBIF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #3d02

	read "music_header.asm"

; 02/10/2013

	jp l4378	; init music
	jp l3da2	; play music
.l3d0c equ $ + 4
.l3d0b equ $ + 3
.l3d09 equ $ + 1
.l3d08
	db #00,#00,#00,#00,#b8,#0f,#00,#00
.l3d14 equ $ + 4
.l3d12 equ $ + 2
.l3d11 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3d2f equ $ + 7
.l3d2e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3d30
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3d3e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3d41 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3d5d equ $ + 5
.l3d5c equ $ + 4
.l3d5b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.music_end equ $ + 6
.l3d6e equ $ + 6
.l3d6b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3d8a equ $ + 2
.l3d89 equ $ + 1
.l3d88
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3d9e equ $ + 6
.l3d9c equ $ + 4
.l3d9a equ $ + 2
.l3d98
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3da1 equ $ + 1
	db #00,#00
;
.play_music
.l3da2
;
	ld hl,l3d0b
	ld a,(l3d14)
	dec a
	jr nz,l3daf
	ld (l3d14),a
	inc (hl)
.l3daf
	ld a,(l3d41)
	dec a
	jr nz,l3db9
	ld (l3d41),a
	inc (hl)
.l3db9
	ld a,(l3d6e)
	dec a
	jr nz,l3dc3
	ld (l3d6e),a
	inc (hl)
.l3dc3
	xor a
	ld (l3da1),a
	ld ix,l3d11
	ld (l3f9a),a
	ld hl,(l3d09)
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l3ed5),hl
	ld (l43b0),hl
	ld (l43c3),hl
	ld (l43e1),hl
	ld de,(l3d98)
	call l3ea3
	ld ix,l3d3e
	ld a,#01
	ld (l3da1),a
	ld hl,(l3d09)
	inc hl
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l3ed5),hl
	ld (l43b0),hl
	ld (l43c3),hl
	ld (l43e1),hl
	ld a,#08
	ld (l3f9a),a
	ld de,(l3d9a)
	call l3ea3
	ld ix,l3d6b
	ld a,#02
	ld (l3da1),a
	ld hl,(l3d09)
	ld de,#0004
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l3ed5),hl
	ld (l43b0),hl
	ld (l43c3),hl
	ld (l43e1),hl
	ld a,#10
	ld (l3f9a),a
	ld de,(l3d9c)
	call l3ea3
	ld de,#c000
	ld hl,#f680
	ld a,(l3d0b)
	or a
	jr nz,l3e9a
.l3e4a
	ld c,#00
	ld a,(l3d2e)
	call l4427
	inc c
	ld a,(l3d2f)
	call l4427
	inc c
	ld a,(l3d5b)
	call l4427
	inc c
	ld a,(l3d5c)
	call l4427
	inc c
.l3e69 equ $ + 1
	ld a,#00
	cp #01
	jr nc,l3e83
	ld a,(l3d88)
	call l4427
	inc c
	ld a,(l3d89)
	call l4427
	ld c,#0a
	ld a,(l3d8a)
	call l4427
.l3e83
	ld c,#07
	ld a,(l3d0c)
	call l4427
	ld c,#08
	ld a,(l3d30)
	call l4427
	inc c
	ld a,(l3d5d)
	call l4427
.l3e9a
	xor a
	ld (l3d0b),a
	ld c,#0e
	jp l4427
.l3ea3
	ld a,(ix+#03)
	or a
	jp nz,l410e
	ld a,(ix+#11)
	cp #ff
	jr z,l3eb5
	ld (ix+#11),#00
.l3eb5
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,l3f2c
	ld a,(ix+#04)
	or a
	jr z,l3ecf
	dec (ix+#04)
	ld (ix+#02),#00
	jr l3eb5
.l3ecf
	ld l,(ix+#00)
	ld h,#00
.l3ed5 equ $ + 1
	ld bc,l4554
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	cp #ff
	jp z,l4339
	bit 7,a
	jp z,l3f09
	ld l,a
	and #1f
	ld (l3d9e),a
	ld a,l
	and #60
	srl a
	srl a
	srl a
	ld (l3ef9),a
.l3ef9 equ $ + 1
.l3ef8
	jr l3ef8
	jp l43bd
	db #00
	jp l43f4
	db #00
	jp l43aa
	db #00
	jp l43d0
.l3f09
	ld c,a
	ld a,(l3da1)
	add a
	ld e,a
	ld d,#00
	ld b,d
	ld hl,l4585
	add hl,bc
	ld a,(hl)
	ld hl,l4591
	add hl,bc
	ld b,(hl)
	ld hl,l3d98
	add hl,de
	ld (hl),a
	inc hl
	ld (hl),b
	ld e,a
	ld d,b
	ld (ix+#02),#00
	jp l3eb5
.l3f2c
	bit 7,a
	jp z,l4082
	cp #a0
	jr nz,l3f4e
	inc (ix+#02)
	call l43fe
	ld (ix+#16),a
	ld (ix+#03),a
	inc (ix+#02)
	xor a
	ld (ix+#1d),a
	ld (ix+#1e),a
	jp l4117
.l3f4e
	cp #90
	jr c,l3f97
	cp #c0
	jr c,l3f7f
	ld (ix+#15),a
	and #1f
	ld (ix+#14),a
	inc (ix+#02)
	call l43fe
	ld (ix+#12),a
	inc (ix+#02)
	call l43fe
	ld (ix+#13),a
	inc (ix+#02)
	call l43fe
	ld (ix+#11),a
	inc (ix+#02)
	jp l3eb5
.l3f7f
	cp #bf
	jr nz,l3f89
	ld (ix+#11),#00
	jr l3f91
.l3f89
	and #0f
	add a
	add a
	add a
	ld (ix+#10),a
.l3f91
	inc (ix+#02)
	jp l3eb5
.l3f97
	and #0f
.l3f9a equ $ + 1
	add #00
	ld l,a
	ld h,#00
	ld bc,l451e
	add hl,bc
	ld l,(hl)
	ld h,#00
	ld bc,l44fa
	add hl,bc
	push hl
	pop iy
	ld a,(iy+#08)
	ld (ix+#2b),a
	ld hl,l3d0c
	ld a,(l3da1)
	or a
	jr nz,l3fc9
	res 3,(hl)
	bit 7,(iy+#02)
	jr nz,l3fe6
	set 3,(hl)
	res 0,(hl)
	jr l3fe6
.l3fc9
	dec a
	jr nz,l3fda
	res 4,(hl)
	bit 7,(iy+#02)
	jr nz,l3fe6
	res 1,(hl)
	set 4,(hl)
	jr l3fe6
.l3fda
	res 5,(hl)
	bit 7,(iy+#02)
	jr nz,l3fe6
	res 2,(hl)
	set 5,(hl)
.l3fe6
	ld (ix+#24),#0f
	ld (ix+#25),#01
	ld a,(iy+#03)
	push af
	and #f0
	jr z,l4014
	rrca
	rrca
	rrca
	rrca
	ld c,a
	ld b,#00
	ld hl,l4407
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,l400b
	ld (ix+#24),a
	jr l4014
.l400b
	and #7f
	ld (ix+#25),a
	ld (ix+#24),#01
.l4014
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
	jr z,l4047
	ld c,a
	ld b,#00
	ld hl,l4417
	add hl,bc
	ld a,(hl)
	bit 7,(hl)
	jr nz,l403e
	ld (ix+#21),a
	jr l4047
.l403e
	and #7f
	ld (ix+#22),a
	ld (ix+#21),#01
.l4047
	ld (ix+#27),#0f
	ld (ix+#28),#01
	ld a,(iy+#04)
	and #0f
	jr z,l4070
	ld c,a
	ld b,#00
	ld hl,l4417
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,l4067
	ld (ix+#27),a
	jr l4070
.l4067
	and #7f
	ld (ix+#28),a
	ld (ix+#27),#01
.l4070
	ld a,(iy+#05)
	ld (ix+#06),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	inc (ix+#02)
	jp l3eb5
.l4082
	add #14
	add (ix+#01)
	ld c,a
	ld b,#00
	ld (ix+#1c),a
	ld hl,l443a
	add hl,bc
	ld a,(hl)
	ld hl,l449a
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
	jr z,l40e3
	ld l,a
	ld h,#00
	ld bc,l49af
	add hl,bc
	ld a,(hl)
	ld (ix+#0a),a
	ld (ix+#0c),#01
.l40e3
	ld a,(ix+#10)
	or a
	jr z,l4101
	ld l,a
	ld h,#00
	ld bc,l49c7
	add hl,bc
	ld a,(hl)
	and #78
	srl a
	srl a
	srl a
	inc a
	ld (ix+#18),a
	ld (ix+#17),#01
.l4101
	ld a,(ix+#15)
	and #1f
	ld (ix+#14),a
	ex af,af'
	ld (ix+#03),a
	ret
.l410e
	cp (ix+#06)
	jr nz,l4117
	res 0,(ix+#2a)
.l4117
	ld a,(ix+#16)
	or a
	jr z,l4126
	dec (ix+#16)
	ret nz
	ld (ix+#03),#00
	ret
.l4126
	dec (ix+#03)
	ld a,(l3d0b)
	or a
	ret nz
	bit 0,(ix+#2a)
	jr z,l4198
	bit 7,(ix+#25)
	jr nz,l4165
	inc (ix+#26)
	ld a,(ix+#26)
	cp (ix+#25)
	jr nz,l41c2
	ld (ix+#26),#00
	ld a,(ix+#24)
	add (ix+#1f)
	cp (ix+#2b)
	jr c,l4160
	ld a,(ix+#2b)
	ld (ix+#1f),a
	set 7,(ix+#25)
	jr l41c2
.l4160
	ld (ix+#1f),a
	jr l41c2
.l4165
	bit 7,(ix+#22)
	jr nz,l41c2
	inc (ix+#23)
	ld a,(ix+#23)
	cp (ix+#22)
	jr nz,l41c2
	ld (ix+#23),#00
	ld a,(ix+#1f)
	sub (ix+#21)
	jr nc,l418e
.l4182
	ld a,(ix+#20)
	ld (ix+#1f),a
	set 7,(ix+#22)
	jr l41c2
.l418e
	cp (ix+#20)
	jr c,l4182
	ld (ix+#1f),a
	jr l41c2
.l4198
	bit 7,(ix+#28)
	jr nz,l41c2
	inc (ix+#29)
	ld a,(ix+#29)
	cp (ix+#28)
	jr nz,l41c2
	ld (ix+#29),#00
	ld a,(ix+#1f)
	sub (ix+#27)
	jr nc,l41bf
	ld (ix+#1f),#00
	set 7,(ix+#28)
	jr l41c2
.l41bf
	ld (ix+#1f),a
.l41c2
	ld a,(ix+#0b)
	or a
	jp z,l424d
	ld a,(ix+#0a)
	or a
	jr z,l41df
	bit 7,a
	jr z,l41d9
	and #7f
	jr z,l424d
	jr l41df
.l41d9
	dec (ix+#0a)
	jp l424d
.l41df
	ld a,(ix+#0c)
	and #7f
	add (ix+#0b)
	ld l,a
	ld h,#00
	ld bc,l49af
	add hl,bc
	ld a,(hl)
	ld (l3d9e),a
	bit 7,a
	jr z,l4212
	neg
	ld (l3d9e),a
	bit 7,(ix+#0c)
	jr nz,l421e
.l4201
	ld hl,l3d9e
	ld a,(ix+#1d)
	sub (hl)
	ld (ix+#1d),a
	jr nc,l422c
	dec (ix+#1e)
	jr l422c
.l4212
	ld a,(l3d9e)
	ld (l3d9e),a
	bit 7,(ix+#0c)
	jr nz,l4201
.l421e
	ld a,(l3d9e)
	add (ix+#1d)
	ld (ix+#1d),a
	jr nc,l422c
	inc (ix+#1e)
.l422c
	inc (ix+#0c)
	ld a,(ix+#0c)
	and #7f
	cp #08
	jr nz,l424d
	ld a,(ix+#0c)
	xor #89
	ld (ix+#0c),a
	cp #01
	jr nz,l424d
	ld a,(ix+#0a)
	or a
	jr z,l424d
	dec (ix+#0a)
.l424d
	ld a,(ix+#10)
	or a
	jp z,l42e8
	dec (ix+#18)
	jp nz,l42e8
	add (ix+#17)
	ld l,a
	ld h,#00
	ld bc,l49c7
	add hl,bc
	ld a,(ix+#17)
	bit 7,a
	jr nz,l42c7
	or a
	jr nz,l427a
	ld a,(hl)
	and #38
	srl a
	srl a
	srl a
	or a
	jr nz,l427b
.l427a
	ld a,(hl)
.l427b
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
	ld hl,l443a
	add hl,bc
	ld a,(hl)
	ld hl,l449a
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
	ld bc,l49c7
	add hl,bc
	ld a,(hl)
	and #07
	inc a
	cp (ix+#17)
	jr nz,l42e8
	bit 7,(hl)
	ld a,#ff
	jr z,l42c1
	xor a
.l42c1
	ld (ix+#17),a
	jp l42e8
.l42c7
	cp #ff
	jr nz,l42e8
	dec (ix+#17)
	ld c,(ix+#1c)
	ld b,#00
	ld hl,l443a
	add hl,bc
	ld a,(hl)
	ld hl,l449a
	add hl,bc
	ld h,(hl)
	ld l,a
	ld c,(ix+#09)
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.l42e8
	ld a,(ix+#14)
	or a
	jr z,l42f3
	dec (ix+#14)
	jr l4338
.l42f3
	ld a,(ix+#11)
	or a
	jr z,l4338
	cp #ff
	jr z,l4300
	dec (ix+#11)
.l4300
	ld a,(ix+#15)
	and #20
	jr z,l4320
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
	jr l4338
.l4320
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	sbc hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.l4338
	ret
;
.stop_music
.l4339
;
	xor a
	ld (l3d30),a
	ld (l3d5d),a
	ld (l3d8a),a
	ld (l3d30),a
	ld (l3d5d),a
	ld (l3d8a),a
	ld (l3d08),a
	ld de,#c000
	ld hl,#f680
	pop af
	jp l3e4a
	xor a
	ld (l3d30),a
	ld (l3d5d),a
	ld (l3d8a),a
	ld (l3d30),a
	ld (l3d5d),a
	ld (l3d8a),a
	ld (l3d08),a
	ld de,#c000
	ld hl,#f680
	jp l3e4a
;
.init_music     	; a = 0
.l4378
;
	push af
	ld (l3e69),a
	add a
	ld l,a
	add a
	add l
	ld l,a
	ld h,#00
	ld de,l454e
	add hl,de
	ld (l3d09),hl
	ld hl,l4406
	ld (l3d98),hl
	ld (l3d9a),hl
	ld (l3d9c),hl
	ld hl,l3d11
	ld de,l3d12
	ld bc,#0086
	ld (hl),#00
	ldir
	ld a,#01
	ld (l3d08),a
	pop af
	ret
.l43aa
	ld l,(ix+#00)
	ld h,#00
.l43b0 equ $ + 1
	ld bc,l4554
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#09),a
	jp l3ecf
.l43bd
	ld l,(ix+#00)
	ld h,#00
.l43c3 equ $ + 1
	ld bc,l4554
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#01),a
	jp l3ecf
.l43d0
	ld a,(l3f9a)
	ld c,a
	ld a,(l3d9e)
	add c
	ld (l43e9),a
	ld l,(ix+#00)
	ld h,#00
.l43e1 equ $ + 1
	ld bc,l4554
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
.l43e9 equ $ + 1
	ld l,#00
	ld h,#00
	ld bc,l451e
	add hl,bc
	ld (hl),a
	jp l3ecf
.l43f4
	ld a,(l3d9e)
	dec a
	ld (ix+#04),a
	jp l3ecf
.l43fe
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	ret
.l4407 equ $ + 1
.l4406
	db #ff,#0f,#0f,#0f,#0d,#08,#06,#05
	db #04,#03,#01,#82,#83,#83,#89,#90
.l4417 equ $ + 1
	db #99,#0f,#0d,#07,#04,#03,#02,#02
	db #01,#01,#82,#85,#88,#89,#9c,#ae
	db #cb
.l4427
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
.l443a
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
.l449a
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
.l44fa
	db #09,#08,#41,#7a,#0a,#02,#1c,#08
	db #0f,#06,#08,#41,#08,#4a,#02,#2a
	db #00,#0f,#00,#08,#81,#09,#0a,#02
	db #7f,#10,#0f,#00,#08,#11,#06,#0a
.l451e equ $ + 4
	db #02,#7f,#00,#0d,#00,#09,#12,#1b
	db #24,#2d,#36,#3f,#00,#09,#12,#1b
	db #24,#2d,#36,#3f,#00,#09,#12,#1b
	db #24,#2d,#36,#3f,#00,#09,#12,#1b
	db #24,#2d,#36,#3f,#00,#09,#12,#1b
	db #24,#2d,#36,#3f,#00,#09,#12,#1b
	db #24,#2d,#36,#3f
.l454e
	dw l4554,l455b,l4562
.l4554
	db #80,#f4,#00,#00,#04,#08,#ff
.l455b
	db #02,#01,#01,#05,#07,#09,#ff
.l4562
	db #80,#f4,#03,#03,#02,#80,#00,#06
	db #06,#0b,#0b,#a4,#06,#a4,#0b,#a4
	db #06,#0b,#0b,#06,#06,#0b,#0b,#06
	db #06,#80,#02,#a4,#06,#a4,#0b,#80
	db #f4,#0a,#ff
.l4585
	db #9d,#e3,#b1,#b4,#fa,#43,#38,#4c
	db #6d,#b0,#65,#a3
.l4591
	db #45,#45,#46,#46,#46,#47,#48,#48
	db #48,#48,#49,#49
	db #80,#31,#14,#31,#14,#2f,#0a,#2e
	db #0a,#2e,#14,#2d,#0a,#2e,#0a,#2e
	db #3c,#2d,#0a,#2e,#0a,#2e,#14,#2d
	db #0a,#2e,#0a,#31,#14,#2e,#0a,#31
	db #0a,#2f,#28,#2c,#14,#2c,#14,#2c
	db #14,#2b,#0a,#2c,#0a,#2c,#14,#2b
	db #0a,#2c,#0a,#2f,#3c,#2e,#0a,#2d
	db #0a,#2e,#0a,#31,#14,#31,#0a,#33
	db #14,#33,#14,#2c,#3c,#ff,#81,#06
	db #0a,#12,#0a,#82,#91,#1e,#0a,#81
	db #90,#12,#0a,#06,#0a,#12,#05,#12
	db #05,#82,#91,#1e,#0a,#81,#90,#12
	db #0a,#06,#0a,#12,#0a,#82,#91,#1e
	db #0a,#81,#90,#0f,#0a,#04,#0a,#10
	db #0a,#82,#91,#1e,#0a,#81,#90,#11
	db #0a,#06,#0a,#12,#0a,#82,#91,#1e
	db #0a,#81,#90,#12,#05,#12,#05,#06
	db #0a,#12,#0a,#82,#91,#1e,#0a,#81
	db #90,#12,#05,#12,#05,#01,#0a,#0d
	db #0a,#82,#91,#1e,#0a,#81,#90,#0f
	db #0a,#05,#0a,#11,#0a,#82,#91,#1e
	db #0a,#81,#90,#14,#0a,#01,#0a,#0d
	db #0a,#82,#91,#1e,#0a,#81,#90,#0d
	db #0a,#01,#0a,#0d,#05,#0d,#05,#82
	db #91,#1e,#0a,#81,#90,#0d,#0a,#01
	db #0a,#0d,#05,#0d,#05,#82,#91,#1e
	db #0a,#81,#90,#0d,#0a,#01,#0a,#0d
	db #05,#0d,#05,#82,#91,#1e,#0a,#81
	db #90,#05,#0a,#06,#0a,#12,#0a,#82
	db #91,#1e,#0a,#81,#90,#16,#0a,#0b
	db #0a,#17,#0a,#82,#91,#1e,#0a,#81
	db #90,#0f,#0a,#01,#0a,#0d,#0a,#82
	db #91,#1e,#0a,#81,#90,#0f,#0a,#04
	db #0a,#10,#0a,#82,#91,#1e,#0a,#81
	db #90,#11,#0a,#ff,#a0,#14,#ff,#80
	db #2c,#14,#2e,#14,#2c,#0a,#2a,#0a
	db #2a,#14,#29,#0a,#2a,#0a,#2a,#3c
	db #29,#0a,#2a,#0a,#2a,#14,#2a,#0a
	db #2a,#0a,#2e,#14,#2a,#0a,#2e,#0a
	db #2c,#28,#29,#14,#29,#14,#29,#14
	db #28,#0a,#29,#0a,#29,#14,#28,#0a
	db #29,#0a,#2c,#3c,#2a,#0a,#29,#0a
	db #2a,#0a,#2e,#14,#2e,#0a,#2f,#14
	db #2f,#14,#29,#3c,#ff,#a0,#14,#2c
	db #32,#2e,#0a,#2c,#0a,#2b,#0a,#2a
	db #3c,#2e,#14,#2c,#0a,#31,#96,#31
	db #32,#33,#0a,#31,#0a,#30,#0a,#31
	db #3c,#2e,#0a,#2c,#96,#2c,#14,#2e
	db #0a,#31,#32,#2e,#14,#2c,#3c,#2d
	db #14,#2e,#0a,#31,#32,#2e,#14,#2c
	db #3c,#2c,#14,#2e,#1e,#2e,#1e,#30
	db #14,#31,#1e,#30,#1e,#2e,#14,#30
	db #3c,#31,#14,#33,#32,#ff,#01,#0a
	db #0d,#0a,#01,#0a,#0d,#0a,#01,#0a
	db #0d,#0a,#05,#0a,#11,#0a,#06,#0a
	db #12,#0a,#06,#0a,#12,#05,#12,#05
	db #06,#0a,#12,#0a,#06,#0a,#12,#05
	db #12,#05,#01,#0a,#0d,#0a,#03,#0a
	db #0f,#0a,#04,#0a,#10,#0a,#05,#0a
	db #11,#0a,#01,#0a,#0d,#0a,#03,#0a
	db #0f,#0a,#04,#0a,#10,#0a,#05,#0a
	db #11,#0a,#06,#0a,#12,#0a,#06,#0a
	db #12,#05,#12,#05,#06,#0a,#12,#0a
	db #06,#0a,#12,#05,#12,#05,#06,#0a
	db #12,#0a,#06,#0a,#12,#05,#12,#05
	db #06,#0a,#12,#0a,#06,#0a,#12,#05
	db #12,#05,#01,#0a,#0d,#0a,#03,#0a
	db #0f,#0a,#04,#0a,#10,#0a,#05,#0a
	db #11,#0a,#01,#0a,#0d,#0a,#03,#0a
	db #0f,#0a,#04,#0a,#10,#0a,#05,#0a
	db #11,#0a,#06,#0a,#12,#0a,#06,#0a
	db #12,#05,#12,#05,#06,#0a,#12,#0a
	db #06,#0a,#12,#05,#12,#05,#01,#0a
	db #0d,#0a,#01,#0a,#0d,#0a,#01,#0a
	db #0d,#0a,#05,#0a,#11,#0a,#06,#0a
	db #12,#0a,#06,#0a,#12,#05,#12,#05
	db #06,#0a,#12,#0a,#06,#0a,#12,#05
	db #12,#05,#01,#0a,#0d,#0a,#03,#0a
	db #0f,#0a,#04,#0a,#10,#0a,#05,#0a
	db #11,#0a,#03,#0a,#0f,#0a,#05,#0a
	db #11,#0a,#07,#0a,#13,#0a,#03,#0a
	db #0f,#0a,#03,#0a,#0f,#0a,#05,#0a
	db #11,#0a,#07,#0a,#13,#0a,#03,#0a
	db #0f,#0a,#ff,#83,#31,#05,#35,#05
	db #38,#05,#3d,#05,#82,#91,#1e,#0a
	db #90,#83,#38,#05,#29,#05,#ff,#08
	db #0a,#14,#0a,#0a,#0a,#16,#0a,#0c
	db #0a,#18,#0a,#08,#0a,#14,#0a,#08
	db #0a,#14,#0a,#0a,#0a,#16,#0a,#0b
	db #0a,#17,#0a,#0c,#0a,#18,#0a,#ff
	db #2f,#0a,#33,#0a,#34,#0a,#36,#32
	db #2f,#0a,#33,#0a,#34,#0a,#36,#32
	db #2f,#0a,#33,#0a,#34,#0a,#36,#14
	db #33,#14,#2f,#14,#33,#14,#31,#32
	db #33,#0a,#33,#0a,#31,#0a,#2f,#1e
	db #2f,#0a,#33,#14,#36,#14,#36,#0a
	db #34,#28,#34,#0a,#33,#0a,#34,#0a
	db #36,#14,#33,#14,#2f,#14,#31,#14
	db #2f,#3c,#ff,#0b,#0a,#17,#0a,#91
	db #82,#1e,#0a,#90,#81,#0f,#0a,#04
	db #0a,#10,#0a,#91,#82,#1e,#0a,#90
	db #81,#12,#0a,#0b,#0a,#17,#0a,#91
	db #82,#1e,#0a,#90,#81,#0f,#0a,#04
	db #0a,#10,#0a,#91,#82,#1e,#0a,#90
	db #81,#12,#0a,#0b,#0a,#17,#0a,#91
	db #82,#1e,#0a,#90,#81,#0f,#0a,#04
	db #0a,#10,#0a,#91,#82,#1e,#0a,#90
	db #81,#12,#0a,#06,#0a,#12,#0a,#91
	db #82,#1e,#0a,#90,#81,#14,#0a,#09
	db #0a,#15,#0a,#91,#82,#1e,#0a,#90
	db #81,#0a,#0a,#0b,#0a,#17,#0a,#91
	db #82,#1e,#0a,#90,#81,#0b,#0a,#09
	db #0a,#15,#0a,#91,#82,#1e,#0a,#90
	db #81,#09,#0a,#08,#0a,#14,#0a,#91
	db #82,#1e,#0a,#90,#81,#08,#0a,#07
	db #0a,#13,#0a,#91,#82,#1e,#0a,#90
	db #81,#07,#0a,#06,#0a,#12,#0a,#91
	db #82,#1e,#0a,#90,#81,#08,#0a,#09
	db #0a,#15,#0a,#91,#82,#1e,#0a,#90
	db #81,#0a,#0a,#17,#0a,#17,#0a,#14
	db #05,#12,#05,#0f,#0a,#0b,#14,#ff
	db #80,#33,#32,#2a,#0a,#2f,#0a,#31
	db #0a,#33,#32,#2a,#0a,#2f,#0a,#31
	db #0a,#33,#14,#2f,#14,#2a,#14,#2f
	db #14,#2e,#32,#2e,#0a,#2e,#0a,#2e
	db #0a,#2a,#1e,#2a,#0a,#2f,#14,#33
	db #14,#31,#0a,#31,#28,#31,#0a,#2f
	db #0a,#31,#0a,#31,#14,#2e,#14,#2c
	db #14,#2e,#14,#27,#3c,#ff,#83,#31
	db #05,#2a,#05,#3a,#05,#3d,#05,#82
.l49af equ $ + 2
	db #91,#1e,#0a,#90,#83,#3a,#05,#1e
	db #05,#ff
	db #0b,#00,#00,#01,#00,#00,#ff,#ff
	db #00,#03,#05,#05,#0a,#0a,#0f,#0f
.l49c7
	db #10,#12,#14,#16,#20,#40,#50,#80
	db #89,#b1,#3a,#00,#00,#00,#00,#00
;
; #2047
; ld a,(#3d08)
; or a
; jr nz,l2052
; call #4378	; init
; jr l2055
; .l2052
; call #3da2	; play
;
.music_info
	db "Peter Beardsley's International Football (1988)(Grandslam)()",0
	db "",0

	read "music_end.asm"
