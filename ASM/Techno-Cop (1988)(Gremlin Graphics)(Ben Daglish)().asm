; Music of Techno-Cop (1988)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 10/10/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TECHNOCO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #4000

	read "music_header.asm"

	di			; test player
	sub a
	call l40a5
.l4005
	call l4c98
	call l412d
	ld a,(l401c)
	or a
	jr z,l4020
	call l4c62
	ld a,(l4c5d)
	rla
	jr c,l4005
	jr l4020
.music_end
.l401c
	db #ff
	jp l4027	; init sound effects
;
.stop_music
.l4020
;
	xor a
	ld (l401c),a
	jp l44ad
.l4027
	di
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l4c4b
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l43f1
	call l4428
	set 7,(ix+#11)
	ret
.l4055 equ $ + 7
.l404f equ $ + 1
.l404e
	db #00,#46,#4b,#a6,#46,#ba,#46,#c3
.l405d equ $ + 7
.l405b equ $ + 5
.l405a equ $ + 4
.l4059 equ $ + 3
.l4058 equ $ + 2
.l4057 equ $ + 1
	db #4b,#0c,#00,#00,#04,#ff,#12,#00
.l4064 equ $ + 6
.l4063 equ $ + 5
	db #00,#00,#00,#00,#40,#08,#70,#4b
.l406d equ $ + 7
.l406c equ $ + 6
.l406a equ $ + 4
	db #00,#47,#00,#47,#c3,#4b,#03,#00
.l4072 equ $ + 4
.l4070 equ $ + 2
.l406f equ $ + 1
.l406e
	db #00,#54,#ff,#00,#00,#00,#00,#00
.l4079 equ $ + 3
.l4078 equ $ + 2
	db #00,#00,#10,#a0,#4b,#00,#47,#00
.l4085 equ $ + 7
.l4084 equ $ + 6
.l4083 equ $ + 5
.l4082 equ $ + 4
.l4081 equ $ + 3
.l407f equ $ + 1
	db #47,#c3,#4b,#03,#00,#00,#54,#ff
.l408d equ $ + 7
.l4087 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#14,#1e,#28,#32,#3c,#46,#00
	db #0a,#14,#1e,#28,#32,#3c,#46,#00
	db #0a,#14,#1e,#28,#32,#3c,#46
;
.init_music
.l40a5
;
	push af
	call l44ad
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l4b3e
	add l
	ld l,a
	jr nc,l40b6
	inc h
.l40b6
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l404f),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4064),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4079),de
	xor a
	ld (l4058),a
	ld (l406d),a
	ld (l4082),a
	ld (l405d),a
	ld (l4072),a
	ld (l4087),a
	cpl
	ld (l4059),a
	ld (l406e),a
	ld (l4083),a
	ld a,#01
	ld (l4057),a
	ld (l406c),a
	ld (l4081),a
	ld (l405a),a
	ld (l406f),a
	ld (l4084),a
	ld hl,l408d
	ld bc,#030a
.l4105
	xor a
.l4106
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l4106
	djnz l4105
	ld hl,l4bc3
	ld (l4055),hl
	ld (l406a),hl
	ld (l407f),hl
	ld a,#ff
	ld (l405b),a
	ld (l4070),a
	ld (l4085),a
	ld (l401c),a
	ret
;
.play_music
.l412d
;
	call l44d6
	ld a,(l401c)
	and a
	ret z
	ld a,(l405b)
	ld hl,l4070
	or (hl)
	ld hl,l4085
	or (hl)
	ld (l401c),a
	jr nz,l4157
	xor a
	ld (l401c),a
	ld a,(l43f0)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l401c),a
	ret
.l4157
	ld iy,l404e
	ld ix,l43f1
	call l4175
	ld iy,l4063
	ld ix,l4403
	call l4175
	ld iy,l4078
	ld ix,l4415
.l4175
	call l42b6
	ld a,(iy+#0b)
	and a
	jr z,l41fa
.l417e
	dec (iy+#09)
	jr z,l4195
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l41fa
.l4195
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l419f
	ld a,(hl)
	cp #80
	jr c,l41da
	cp #fe
	jr nz,l41b1
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l419f
.l41b1
	cp #ff
	jr nz,l41ba
	xor a
	ld (iy+#0d),a
	ret
.l41ba
	cp #c0
	jr nc,l41c7
	and #1f
	ld (iy+#09),a
	inc hl
	jp l419f
.l41c7
	and #07
	add (iy+#00)
	ld de,l408d
	add e
	ld e,a
	jr nc,l41d4
	inc d
.l41d4
	inc hl
	ldi
	jp l419f
.l41da
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l4a42
	add hl,bc
	ld e,(hl)
	ld hl,l4a5d
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l4200
.l41fa
	ld e,(iy+#05)
	ld d,(iy+#06)
.l4200
	dec (iy+#0c)
	jr z,l4212
	ld a,(de)
	cp #80
	call nc,l427c
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l4212
	ld a,(de)
	cp #80
	jr c,l4223
	call l427c
	ld a,(iy+#0b)
	and a
	jr z,l4212
	jp l417e
.l4223
	cp #7f
	jr z,l426f
	cp #7e
	jr nz,l4234
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l4248
.l4234
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l4346
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l4248
	ld a,(iy+#0f)
	or #c0
	ld (iy+#14),a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld c,a
	ld (iy+#05),e
	ld (iy+#06),d
	ld e,(iy+#07)
	ld a,(iy+#08)
	ld hy,a
	ld ly,e
	bit 7,(ix+#11)
	ret nz
	jp l4428
.l426f
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l427c
	ld a,(de)
	cp #88
	jr nc,l429a
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l408d
	add hl,bc
	ld c,(hl)
	ld hl,l4bc3
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l429a
	cp #ff
	jr nz,l42a3
	ld (iy+#0b),#ff
	ret
.l42a3
	cp #c0
	jr nc,l42ae
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l42ae
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l42b6
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l42ca
	res 7,(iy+#14)
	ret
.l42ca
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l42fe
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l42fe
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l42ed
	inc h
	ld (iy+#11),h
.l42ed
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l4333
.l42fe
	ld hl,l450b
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l4318
	bit 6,(iy+#14)
	jr nz,l4318
	ld (iy+#13),#01
	ret
.l4318
	res 6,(iy+#14)
	ld a,(hl)
	rrca
	rrca
	rrca
	and d
	ld (iy+#12),a
	ld a,(hl)
	and d
	inc a
	ld (iy+#13),a
	ld (iy+#10),l
	ld (iy+#11),h
	ld a,(iy+#0e)
.l4333
	add a
	ld hl,l4346
	add l
	ld l,a
	jr nc,l433c
	inc h
.l433c
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l4346
	xor #0e
	jr l4358
	db #4d,#0d,#8e,#0c,#da,#0b,#2f,#0b
.l4358 equ $ + 6
	db #8f,#0a,#f7,#09,#68,#09,#e1,#08
	db #61,#08,#e9,#07,#77,#07,#0c,#07
	db #a7,#06,#47,#06,#ed,#05,#98,#05
	db #47,#05,#fc,#04,#d4,#04,#70,#04
	db #31,#04,#f4,#03,#dc,#03,#86,#03
	db #53,#03,#24,#03,#f6,#02,#cc,#02
	db #a4,#02,#7e,#02,#5a,#02,#38,#02
	db #18,#02,#fa,#01,#de,#01,#c3,#01
	db #aa,#01,#92,#01,#7b,#01,#66,#01
	db #52,#01,#3f,#01,#2d,#01,#1c,#01
	db #0c,#01,#fd,#00,#ef,#00,#e1,#00
	db #d5,#00,#c9,#00,#be,#00,#b3,#00
	db #a9,#00,#9f,#00,#96,#00,#8e,#00
	db #86,#00,#7f,#00,#77,#00,#71,#00
	db #6a,#00,#64,#00,#5f,#00,#59,#00
	db #54,#00,#50,#00,#4b,#00,#47,#00
	db #43,#00,#3f,#00,#3c,#00,#38,#00
	db #35,#00,#32,#00,#2f,#00,#2d,#00
	db #2a,#00,#28,#00,#26,#00,#24,#00
.l43f1 equ $ + 7
.l43f0 equ $ + 6
	db #22,#00,#20,#00,#18,#00,#3e,#fe
.l43f6 equ $ + 4
.l43f5 equ $ + 3
.l43f4 equ $ + 2
	db #f7,#09,#47,#05,#7f,#04,#00,#00
	db #3c,#00,#3c,#00,#e3,#45,#c3,#4b
.l4408 equ $ + 6
.l4407 equ $ + 5
.l4406 equ $ + 4
.l4403 equ $ + 1
.l4402
	db #01,#fd,#ef,#12,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4419 equ $ + 7
.l4418 equ $ + 6
.l4415 equ $ + 3
.l4414 equ $ + 2
	db #00,#00,#00,#fb,#df,#24,#00,#00
.l441a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4427 equ $ + 5
.l4426 equ $ + 4
	db #00,#00,#00,#00,#00,#7e
.l4428
	di
	ld a,ly
	ld (ix+#0f),a
	ld a,hy
	ld (ix+#10),a
	ld (ix+#03),l
	ld (ix+#04),h
	ld (ix+#06),c
	ld a,(iy+#05)
	ld (ix+#07),a
	ld a,(iy+#06)
	and #7f
	srl a
	jr nz,l444d
	ld a,#01
.l444d
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l43f0)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l4476
	and (ix+#00)
.l4476
	bit 1,c
	jr z,l447d
	and (ix+#01)
.l447d
	ld (l43f0),a
	bit 2,c
	jr nz,l448e
	ld hl,l45c4
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l448e
	call l467c
	ld a,(iy+#00)
	ld c,#0d
	call l4693
	ld a,(iy+#04)
	ld c,#0b
	call l4693
	inc c
	xor a
	call l4693
	ld (ix+#05),#ff
	jp l4688
.l44ad
	call l467c
	ld c,#07
	ld a,(l43f0)
	or #3f
	ld (l43f0),a
	call l4693
	xor a
	inc c
	call l4693
	inc c
	call l4693
	inc c
	call l4693
	ld (l4402),a
	ld (l4414),a
	ld (l4426),a
	jp l4688
.l44d6
	ld a,(l43f0)
	and #3f
	cp #3f
	ret z
	ld ix,l43f1
	call l4592
	ld ix,l4403
	call l4592
	ld ix,l4415
	call l4592
	call l467c
	ld ix,l43f1
	ld c,#07
	ld a,(l43f0)
	call l4693
	ld c,#00
	ld a,(l43f4)
	add (ix+#09)
.l450b equ $ + 1
	bit 1,(ix+#11)
	jp z,l4514
	ld (l4427),a
.l4514
	call l4693
	inc c
	ld a,(l43f5)
	adc (ix+#0a)
	call l4693
	inc c
	ld a,(l4406)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l4532
	ld (l4427),a
.l4532
	call l4693
	inc c
	ld a,(l4407)
	adc (ix+#1c)
	call l4693
	inc c
	ld a,(l4418)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l4550
	ld (l4427),a
.l4550
	call l4693
	inc c
	ld a,(l4419)
	adc (ix+#2e)
	call l4693
	inc c
	ld a,(l4427)
	rrca
	rrca
	rrca
	call l4693
	ld c,#08
	ld a,(l43f6)
	srl a
	srl a
	srl a
	call l4693
	inc c
	ld a,(l4408)
	srl a
	srl a
	srl a
	call l4693
	inc c
	ld a,(l441a)
	srl a
	srl a
	srl a
	call l4693
	jp l4688
.l4592
	ld a,(l43f0)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l45b3
	cp #ff
	jr z,l45b3
	dec (ix+#06)
.l45b3
	call l463a
	bit 2,(iy+#09)
	jp nz,l4633
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l45c4
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l45d3
	ld (ix+#05),a
	ret
.l45d3
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l45e3
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l45e3
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l45f5
	cp (iy+#02)
	jr c,l45f5
	ld (ix+#05),a
	ret
.l45f5
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l4605
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l4605
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l4614
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l4614
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l4621
	ld (ix+#05),a
	ret
.l4621
	ld (ix+#05),#00
	ld a,(l43f0)
	or (ix+#02)
	ld (l43f0),a
	res 7,(ix+#11)
	ret
.l4633
	ld a,(ix+#06)
	and a
	ret nz
	jr l4621
.l463a
	ld a,(ix+#07)
	and a
	jr z,l4647
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l4647
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld c,(ix+#0b)
	ld b,(ix+#0c)
	add hl,bc
	ld (ix+#09),l
	ld (ix+#0a),h
	dec (ix+#08)
	ret nz
	ld a,(iy+#06)
	and a
	ret z
	jp p,l466b
	ld (ix+#07),#ff
	ret
.l466b
	ld (ix+#08),a
	ld a,c
	cpl
	ld c,a
	ld a,b
	cpl
	ld b,a
	inc bc
	ld (ix+#0b),c
	ld (ix+#0c),b
	ret
.l467c
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.l4688
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.l4693
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
.l46a6
	db #80,#06,#05,#06,#05,#06,#05,#81
	db #1e,#05,#80,#06,#05,#06,#05,#80
	db #06,#05,#06,#05,#06,#05,#81,#1e
	db #05,#80,#06,#05,#06,#05,#80,#06
	db #05,#06,#05,#06,#05,#81,#1e,#05
	db #80,#06,#05,#06,#05,#81,#1e,#05
	db #80,#06,#05,#81,#1e,#05,#80,#06
	db #05,#81,#1e,#05,#80,#06,#05,#ff
.l46ec equ $ + 6
.l46e6
	db #82,#7e,#00,#00,#f0,#ff,#83,#96
	db #25,#78,#93,#23,#78,#91,#21,#3c
	db #23,#3c,#93,#23,#3c,#91,#25,#3c
.l4703 equ $ + 5
.l4700 equ $ + 2
	db #90,#ff,#7f,#78,#ff,#90,#84,#06
	db #05,#06,#05,#06,#05,#12,#05,#06
	db #05,#06,#05,#06,#05,#06,#05,#06
	db #05,#12,#05,#06,#05,#06,#05,#06
	db #05,#06,#05,#06,#05,#12,#05,#06
	db #05,#06,#05,#10,#05,#06,#05,#12
	db #05,#06,#05,#09,#05,#06,#05,#ff
.l4736
	db #80,#06,#05,#06,#05,#06,#05,#81
	db #1e,#05,#80,#06,#05,#06,#05,#ff
.l4746
	db #85,#25,#28,#23,#0a,#21,#0a,#1e
	db #28,#21,#0a,#25,#0a,#23,#28,#21
	db #0a,#20,#0a,#1e,#3c,#25,#28,#28
	db #0a,#2d,#0a,#2a,#28,#28,#0a,#2d
	db #0a,#2a,#28,#28,#0a,#23,#0a,#25
.l4770 equ $ + 2
	db #3c,#ff,#84,#02,#05,#02,#05,#02
	db #05,#0e,#05,#02,#05,#02,#05,#02
	db #05,#02,#05,#02,#05,#0e,#05,#02
	db #05,#02,#05,#09,#05,#09,#05,#09
	db #05,#15,#05,#09,#05,#09,#05,#01
	db #05,#01,#05,#01,#05,#0d,#05,#01
.l47a2 equ $ + 4
	db #05,#01,#05,#ff,#86,#91,#2a,#0f
	db #81,#1e,#0f,#86,#2a,#0f,#81,#1e
	db #0f,#86,#2a,#0f,#81,#1e,#0f,#86
	db #2a,#0f,#81,#1e,#0f,#86,#28,#0f
	db #81,#1e,#0f,#86,#28,#0f,#81,#1e
	db #0f,#86,#28,#0f,#81,#1e,#0f,#86
	db #28,#0f,#81,#1e,#0f,#86,#2a,#0f
	db #81,#1e,#0f,#86,#2a,#0f,#81,#1e
	db #0f,#86,#2a,#0f,#81,#1e,#0f,#86
.l47ec equ $ + 6
	db #2a,#0f,#81,#1e,#0f,#ff,#86,#92
	db #2a,#05,#2a,#05,#2a,#05,#81,#1e
	db #0a,#86,#2a,#05,#2a,#05,#2a,#05
	db #2a,#05,#81,#1e,#0a,#86,#2a,#05
	db #93,#28,#05,#28,#05,#28,#05,#81
	db #1e,#0a,#86,#28,#05,#92,#29,#05
	db #29,#05,#29,#05,#81,#1e,#0a,#86
.l4821 equ $ + 3
	db #29,#05,#ff,#84,#09,#0f,#09,#0f
	db #81,#1e,#08,#84,#09,#16,#04,#0f
	db #04,#0f,#81,#1e,#08,#84,#04,#16
	db #0b,#0f,#0b,#0f,#81,#1e,#08,#84
	db #0b,#16,#06,#0f,#06,#0f,#81,#1e
.l484b equ $ + 5
	db #08,#84,#08,#16,#ff,#86,#93,#28
	db #05,#28,#05,#28,#05,#28,#05,#28
	db #05,#28,#05,#28,#05,#28,#05,#28
	db #05,#28,#05,#28,#05,#28,#05,#91
	db #28,#05,#28,#05,#28,#05,#28,#05
	db #28,#05,#28,#05,#28,#05,#28,#05
	db #28,#05,#28,#05,#28,#05,#28,#05
	db #92,#27,#05,#27,#05,#27,#05,#27
	db #05,#27,#05,#27,#05,#27,#05,#27
	db #05,#27,#05,#27,#05,#27,#05,#27
	db #05,#96,#25,#05,#25,#05,#25,#05
	db #25,#05,#25,#05,#25,#05,#25,#05
	db #25,#05,#25,#05,#25,#05,#25,#05
.l48b1 equ $ + 3
	db #25,#05,#ff,#85,#25,#1e,#25,#07
	db #26,#08,#25,#07,#23,#35,#21,#07
	db #23,#08,#23,#03,#24,#07,#23,#0a
	db #21,#0a,#23,#0a,#21,#0a,#1e,#0a
.l48d3 equ $ + 5
	db #1c,#0a,#1e,#32,#ff,#28,#1e,#25
	db #08,#21,#0f,#23,#34,#25,#08,#28
	db #07,#2d,#0a,#2c,#0a,#2a,#0a,#2c
	db #0a,#2a,#0a,#28,#0a,#2a,#32,#29
	db #0a,#28,#1e,#25,#08,#21,#0f,#23
	db #34,#25,#08,#28,#07,#2a,#78,#87
.l4903 equ $ + 5
	db #7e,#00,#00,#78,#ff,#84,#09,#0f
	db #09,#0f,#81,#1e,#08,#84,#09,#16
	db #04,#0f,#04,#0f,#81,#1e,#08,#84
.l4919 equ $ + 3
	db #04,#16,#ff,#86,#93,#28,#05,#28
	db #05,#28,#05,#28,#05,#28,#05,#28
	db #05,#28,#05,#28,#05,#28,#05,#28
	db #05,#28,#05,#28,#05,#91,#28,#05
	db #28,#05,#28,#05,#28,#05,#28,#05
	db #28,#05,#28,#05,#28,#05,#28,#05
.l494d equ $ + 7
	db #28,#05,#28,#05,#28,#05,#ff,#0b
	db #05,#0b,#05,#0b,#05,#81,#2a,#05
.l495c equ $ + 6
	db #84,#0b,#05,#0b,#05,#ff,#92,#27
	db #05,#27,#05,#27,#05,#27,#05,#27
.l496c equ $ + 6
.l496a equ $ + 4
	db #05,#27,#05,#ff,#97,#ff,#80,#06
	db #08,#06,#07,#81,#1e,#08,#80,#06
	db #0f,#06,#07,#81,#1e,#08,#80,#06
.l4983 equ $ + 5
.l4980 equ $ + 2
	db #07,#ff,#7f,#02,#ff,#90,#84,#06
	db #08,#04,#07,#06,#08,#09,#0f,#06
	db #07,#04,#08,#06,#07,#80,#1e,#07
	db #1e,#0f,#1b,#0f,#1b,#08,#17,#08
	db #17,#07,#84,#06,#08,#04,#07,#06
	db #08,#09,#0f,#0b,#0f,#0c,#16,#0b
	db #08,#09,#07,#0b,#08,#09,#07,#06
	db #08,#04,#07,#06,#08,#04,#07,#06
	db #08,#09,#0f,#06,#07,#04,#08,#06
	db #07,#80,#1e,#07,#1e,#08,#1e,#07
	db #1b,#08,#1b,#07,#1b,#08,#17,#07
	db #17,#08,#84,#06,#08,#04,#07,#06
	db #08,#09,#0f,#0b,#0f,#0d,#0f,#10
	db #0f,#12,#0f,#15,#07,#12,#08,#10
.l49f0 equ $ + 2
	db #07,#ff,#80,#1e,#05,#1e,#05,#1e
	db #05,#1b,#05,#1b,#05,#1b,#05,#17
	db #05,#17,#05,#17,#05,#14,#05,#14
.l4a0a equ $ + 4
	db #05,#14,#05,#ff,#90,#84,#09,#0a
	db #09,#0f,#0b,#0f,#0b,#0f,#06,#05
.l4a17 equ $ + 1
	db #ff,#90,#84,#09,#0a,#09,#0f,#04
.l4a24 equ $ + 6
	db #0f,#04,#0f,#06,#05,#ff,#86,#93
	db #28,#0a,#28,#0f,#92,#27,#0f,#27
.l4a33 equ $ + 5
	db #0f,#94,#2a,#05,#ff,#86,#93,#28
	db #0a,#28,#0f,#91,#28,#0f,#28,#0f
	db #94,#2a,#05,#ff
.l4a42
	db l46a6,l46e6,l46ec,l4700
	db l4703,l4736,l4746,l4770
	db l47a2,l47ec,l4821,l484b
	db l48b1,l48d3,l4903,l4919
	db l494d,l495c,l496a,l496c
	db l4980,l4983,l49f0,l4a0a
	db l4a17,l4a24,l4a33
;	db #a6,#e6,#ec,#00,#03,#36,#46,#70
;	db #a2,#ec,#21,#4b,#b1,#d3,#03,#19
;	db #4d,#5c,#6a,#6c,#80,#83,#f0,#0a
;	db #17,#24,#33
.l4a5d
	db l46a6/#100,l46e6/#100,l46ec/#100,l4700/#100
	db l4703/#100,l4736/#100,l4746/#100,l4770/#100
	db l47a2/#100,l47ec/#100,l4821/#100,l484b/#100
	db l48b1/#100,l48d3/#100,l4903/#100,l4919/#100
	db l494d/#100,l495c/#100,l496a/#100,l496c/#100
	db l4980/#100,l4983/#100,l49f0/#100,l4a0a/#100
	db l4a17/#100,l4a24/#100,l4a33/#100
;	db #46,#46,#46,#47,#47,#47,#47,#47
;	db #47,#47,#48,#48,#48,#48,#49,#49
;	db #49,#49,#49,#49,#49,#49,#49,#4a
;	db #4a,#4a,#4a
;
	db #54,#45,#43,#48,#4e,#4f,#2d,#43
	db #4f,#50,#2c,#20,#54,#45,#43,#48
	db #4e,#4f,#2d,#43,#4f,#50,#2c,#20
	db #48,#45,#27,#53,#20,#47,#4f,#54
	db #20,#54,#48,#45,#20,#4c,#4f,#54
	db #2c,#20,#54,#48,#45,#20,#46,#55
	db #43,#4b,#49,#4e,#47,#20,#4c,#4f
	db #54,#2e,#4e,#4f,#54,#20,#41,#20
	db #46,#41,#47,#2c,#20,#41,#20,#52
	db #45,#41,#4c,#20,#4d,#41,#4e,#2c
	db #20,#42,#49,#47,#20,#46,#41,#53
	db #54,#20,#43,#41,#52,#2c,#20,#57
	db #49,#54,#48,#20,#42,#41,#54,#54
	db #45,#52,#49,#4e,#47,#20,#52,#41
	db #4d,#2c,#20,#57,#45,#41,#52,#53
	db #20,#42,#4c,#41,#43,#4b,#20,#53
	db #50,#45,#43,#53,#2c,#20,#47,#4f
	db #54,#20,#41,#20,#47,#55,#4e,#2c
	db #20,#4a,#55,#53,#54,#20,#4f,#4e
	db #45,#20,#4c,#4f,#4f,#4b,#2c,#20
	db #4d,#41,#4b,#45,#53,#20,#59,#4f
	db #55,#20,#43,#55,#4d,#2e,#2d,#2d
	db #2d,#20,#4c,#59,#52,#49,#43,#53
	db #20,#28,#43,#29,#20,#46,#54,#42
	db #20,#31,#39,#38,#38,#2e
.l4b3e
	dw l4b44,l4b6e,l4b9e
.l4b44	
	db #8c,#00,#90,#05,#08,#09,#08,#09
	db #83,#0b,#0f,#88,#11,#90,#05,#08
	db #09,#08,#09,#83,#0b,#0f,#88,#11
	db #90,#13,#14,#90,#05,#16,#84,#13
	db #16,#84,#13,#16,#84,#13,#16,#84
	db #13,#ff
.l4b6e
	db #84,#03,#84,#01,#87,#04
	db #07,#83,#04,#07,#83,#0a,#0e,#fe
	db #f4,#88,#10,#fe,#00,#87,#04,#07
	db #83,#04,#07,#83,#0a,#0e,#fe,#f4
	db #88,#10,#14,#15,#15,#fe,#00,#01
	db #01,#17,#01,#18,#01,#17,#01,#18
	db #01,#ff
.l4b9e
	db #84,#03,#02,#02,#01,#01
	db #06,#06,#0c,#0c,#0d,#01,#01,#12
	db #06,#06,#0c,#0c,#0d,#15,#15,#14
	db #84,#04,#19,#04,#04,#1a,#04,#04
.l4bc3 equ $ + 7
	db #19,#04,#04,#1a,#04,#04,#ff,#7f
	db #f2,#01,#ff,#7f,#00,#00,#3c,#00
	db #01,#7f,#fc,#01,#ff,#7f,#00,#00
	db #3c,#00,#03,#08,#ff,#01,#ff,#54
	db #00,#00,#01,#00,#05,#08,#ff,#01
	db #ff,#7f,#00,#04,#01,#00,#01,#7f
	db #fd,#01,#ff,#7f,#00,#05,#04,#00
	db #01,#50,#ff,#01,#ff,#7f,#19,#05
	db #04,#00,#01,#7f,#ff,#01,#ff,#64
	db #00,#03,#01,#00,#01,#08,#ff,#01
	db #ff,#7e,#00,#00,#01,#00,#05,#82
	db #21,#39,#00,#00,#00,#00,#00,#8a
	db #19,#41,#00,#00,#00,#00,#00,#82
	db #29,#49,#00,#00,#00,#00,#00,#8a
	db #19,#39,#00,#00,#00,#00,#00,#8a
	db #21,#49,#00,#00,#00,#00,#00,#8a
	db #29,#41,#00,#00,#00,#00,#00,#89
.l4c4b equ $ + 7
	db #61,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#7f,#00,#00,#00,#00
.l4c58 equ $ + 4
	db #00,#00,#00,#00,#ff,#ff,#ff,#ff
.l4c5d equ $ + 1
	db #ff,#ff,#ff,#ff,#ff,#ff
.l4c62
	ld hl,l4c58
	ld de,#f6f4
	ld bc,#f40e
	out (c),c
	ld b,d
	in a,(c)
	and #30
	ld c,a
	or #c0
	out (c),a
	out (c),c
	inc b
	ld a,#92
	out (c),a
	push bc
	set 6,c
	ld a,c
	add #0a
.l4c84
	ld b,d
	out (c),c
	ld b,e
	ini
	inc c
	cp c
	jp nz,l4c84
	pop bc
	ld a,#82
	out (c),a
	dec b
	out (c),c
	ret
.l4c98
	ld a,#f5
	in a,(#00)
	rra
	jr c,l4c98
.l4c9f
	ld a,#f5
	in a,(#00)
	rra
	jr nc,l4c9f
	ret
; #4a78
; db "TECHNO-COP, TECHNO-COP, HE'S GOT THE LOT, THE FUCKING LOT.NOT A FAG, A REAL MAN, BIG FAST CAR, WITH BATTERING RAM, WEARS BLACK SPECS, GOT A GUN, JUST ONE LOOK, MAKES YOU CUM.--- LYRICS (C) FTB 1988."
;
.music_info
	db "Techno-Cop (1988)(Gremlin Graphics)(Ben Daglish)",0
	db "TECHNO-COP, TECHNO-COP, HE'S GOT THE LOT, THE FUCKING LOT.NOT A FAG, A REAL MAN, BIG FAST CAR, WITH BATTERING RAM, WEARS BLACK SPECS, GOT A GUN, JUST ONE LOOK, MAKES YOU CUM.--- LYRICS (C) FTB 1988.",0

	read "music_end.asm"
