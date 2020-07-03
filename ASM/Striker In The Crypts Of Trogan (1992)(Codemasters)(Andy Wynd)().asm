; Music of Striker In The Crypts Of Trogan (1992)(Codemasters)(Andy Wynd)()
; Ripped by Megachur the 14/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STRITCOT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #4000
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

	jp l4246	;play/init

	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
.l40c3
	db #00,#0a,#14,#1e,#28,#32,#3c,#46
	db #50,#5a,#64,#6e,#78,#82,#8c,#96
	db #00,#0a,#14,#1e,#28,#32,#3c,#46
	db #50,#5a,#64,#6e,#78,#82,#8c,#96
	db #00,#0a,#14,#1e,#28,#32,#78,#46
	db #50,#5a,#64,#6e,#78,#82,#8c,#96
.l40f9 equ $ + 6
.l40f7 equ $ + 4
.l40f3
	db #fe,#f7,#09,#00,#b3,#00,#00,#00
.l40fd equ $ + 2
	db #00,#df,#9b,#07,#3b,#00
.l4108 equ $ + 7
.l4106 equ $ + 5
.l4105 equ $ + 4
	db #f4,#47,#6c,#52,#01,#00,#00,#89
.l4110 equ $ + 7
.l410e equ $ + 5
	db #4f,#8b,#4a,#91,#4a,#6c,#52,#02
.l4114 equ $ + 3
.l4113 equ $ + 2
.l4112 equ $ + 1
	db #fb,#00,#0b,#ff,#35,#08,#3e,#52
	db #01,#02,#88,#00,#00,#00,#00,#00
.l4128 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#ff,#00
.l412f equ $ + 6
.l412d equ $ + 4
.l4129
	db #fd,#ef,#12,#10,#3f,#01,#45,#0b
.l4133 equ $ + 2
	db #00,#f3,#ff,#02,#3b,#00,#c3,#47
.l413e equ $ + 5
.l413c equ $ + 3
.l413b equ $ + 2
	db #6c,#52,#01,#00,#00,#3c,#50,#a2
.l4148 equ $ + 7
.l4146 equ $ + 5
.l4144 equ $ + 3
	db #48,#c2,#48,#94,#52,#02,#fb,#00
.l414a equ $ + 1
.l4149
	db #0b,#ff,#2b,#00,#00,#00,#00,#00
	db #40,#00,#00,#00,#00,#00,#00,#00
.l415f equ $ + 6
.l415e equ $ + 5
	db #00,#00,#00,#00,#ff,#00,#fb,#df
.l4165 equ $ + 4
.l4163 equ $ + 2
	db #24,#20,#be,#00,#78,#17,#00,#01
.l4169
	db #01,#00,#01,#00,#c3,#47,#c6,#52
.l4174 equ $ + 3
.l4172 equ $ + 1
.l4171
	db #01,#00,#00,#f4,#50,#9f,#4a,#b1
.l4180 equ $ + 7
.l417f equ $ + 6
.l417e equ $ + 5
.l417c equ $ + 3
.l417a equ $ + 1
	db #4a,#c6,#52,#02,#fb,#00,#17,#ff
	db #34,#00,#00,#00,#00,#00,#40,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4198 equ $ + 7
.l4197 equ $ + 6
.l4196 equ $ + 5
.l4195 equ $ + 4
.l4194 equ $ + 3
	db #00,#00,#00,#00,#00,#02,#ff,#14
.l419f equ $ + 6
.l419e equ $ + 5
.l419c equ $ + 3
.music_end equ $ + 3
.l419b equ $ + 2
.l419a equ $ + 1
.l4199
	db #ef,#39,#af,#ff,#00,#01,#69,#59
	inc c
	ld (ix+#35),c
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l52ee
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	call l45da
	set 7,(ix+#12)
	ret
.l41c5
	ld hl,lbffe
	ld a,(hl)
	ld (hl),#ff
	or a
	jp m,l41f5
	ld c,a
	ld a,(l415e)
	or a
	jr nz,l41dc
.l41d6
	ld ix,l4129
	jr l41f2
.l41dc
	ld a,(l4128)
	or a
	jr nz,l41e8
.l41e2
	ld ix,l40f3
	jr l41f2
.l41e8
	ld a,(l4194)
	or a
	jr nz,l4206
.l41ee
	ld ix,l415f
.l41f2
	jp l419f
.l41f5
	ld a,(l4128)
	ld l,a
	ld a,(l415e)
	ld h,a
	ld a,(l4194)
	or l
	or h
	ret z
	jp l4698
.l4206
	ld a,c
	cp #07
	jr nz,l4221
	ld a,(l4128)
	cp #08
	jr z,l41e2
	ld a,(l415e)
	cp #08
	jr z,l41d6
	ld a,(l4194)
	cp #08
	jr z,l41ee
	ret
.l4221
	ld a,(l412f)
	ld l,a
	ld a,(l40f9)
	sub l
	jp m,l4239
	ld a,(l4165)
	ld l,a
	ld a,(l412f)
	sub l
	jp m,l41d6
	jr l41ee
.l4239
	ld a,(l4165)
	ld l,a
	ld a,(l40f9)
	sub l
	jp m,l41e2
	jr l41ee
.l4246
	ld a,(lbffd)
	or a
	jp m,l42c8
;
.init_music
;
	push af		; a=0,1,2
	call l465d
	pop af
	ld l,a
	add a
	add l
	add a
	add l
	ld hl,l4f30
	ld e,a
	ld d,#00
	add hl,de
	ld de,l4108
	ldi
	ldi
	ld de,l413e
	ldi
	ldi
	ld de,l4174
	ldi
	ldi
	ld a,(hl)
	ld (l419e),a
	ld a,#ff
	ld (l4114),a
	ld (l414a),a
	ld (l4180),a
	ld (l419c),a
	ld (l4197),a
	ld (lbffd),a
	ld a,#01
	ld (l4112),a
	ld (l4148),a
	ld (l417e),a
	ld (l4110),a
	ld (l4146),a
	ld (l417c),a
	ld (l4113),a
	ld (l4149),a
	ld (l417f),a
	ld hl,l524e
	ld (l410e),hl
	ld (l4144),hl
	ld (l417a),hl
	ld hl,l40c3
	ld bc,#030a
.l42ba
	xor a
.l42bb
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #a0
	jr nz,l42bb
	djnz l42ba
	ret
;
.play_music
.l42c8
;
	ld a,(l419c)
	or a
	jp z,l41c5
	ld a,#ff
	ld (lbffe),a
	call l4698
	ld a,(l4114)
	ld hl,l414a
	or (hl)
	ld hl,l4180
	or (hl)
	ld (l419c),a
	jr nz,l42f5
	ld a,(l419a)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l419c),a
	ret
.l42f5
	ld ix,l40f3
	call l4307
	ld ix,l4129
	call l4307
	ld ix,l415f
.l4307
	call l44c2
	call l4543
	ld a,(ix+#1f)
	and a
	jp z,l43b0
.l4314
	dec (ix+#1d)
	jr z,l432c
	ld a,(ix+#17)
	ld (ix+#19),a
	ld a,(ix+#18)
	ld (ix+#1a),a
	ld (ix+#1f),#00
	jp l43b0
.l432c
	ld (ix+#1d),#01
	ld l,(ix+#15)
	ld h,(ix+#16)
.l4336
	ld a,(hl)
	cp #80
	jr c,l4393
	cp #fe
	jr nz,l4347
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	jr l4336
.l4347
	cp #ff
	jr nz,l436f
	xor a
	ld (ix+#21),a
	ld a,(l4114)
	ld hl,l414a
	or (hl)
	ld hl,l4180
	or (hl)
	ret nz
	ld a,(l419e)
	sla a
	jr nc,l4369
	ld l,a
	ld a,(#bfff)
	or a
	ret nz
	ld a,l
.l4369
	srl a
	ld (lbffd),a
	ret
.l436f
	cp #c0
	jr nc,l437b
	and #1f
	ld (ix+#1d),a
	inc hl
	jr l4336
.l437b
	and #0f
	add (ix+#03)
	ld de,l40c3
	add e
	ld e,a
	jr nc,l4388
	inc d
.l4388
	inc hl
	ld a,(hl)
	inc hl
	add a
	ld c,a
	add a
	add a
	add c
	ld (de),a
	jr l4336
.l4393
	ld b,#00
	ld (ix+#1f),b
	inc hl
	ld (ix+#15),l
	ld (ix+#16),h
	add a
	ld c,a
	ld hl,l4ec0
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#17),e
	ld (ix+#18),d
	jr l43b6
.l43b0
	ld e,(ix+#19)
	ld d,(ix+#1a)
.l43b6
	dec (ix+#20)
	jr z,l43c8
	ld a,(de)
	cp #80
	call nc,l4454
.l43c1
	ld (ix+#19),e
	ld (ix+#1a),d
	ret
.l43c8
	ld a,(de)
	cp #80
	jr c,l43d9
	call l4454
	ld a,(ix+#1f)
	and a
	jr z,l43c8
	jp l4314
.l43d9
	cp #7f
	jp z,l443d
	add (ix+#1e)
	add #12
	ld (ix+#22),a
	call l4446
	ld a,(ix+#29)
	ld (ix+#2d),a
	and a
	jr z,l4414
	ld a,(ix+#2a)
	ld (ix+#2e),a
	ld a,(ix+#2b)
	ld (ix+#2f),a
	ld a,(ix+#2c)
	add (ix+#22)
	push hl
	call l4446
	pop bc
	and a
	sbc hl,bc
	ld (ix+#32),l
	ld (ix+#33),h
	ld h,b
	ld l,c
.l4414
	ld a,(ix+#23)
	or #c0
	ld (ix+#28),a
	inc de
	ld a,(de)
	inc de
	ld (ix+#20),a
	ld c,a
	call l43c1
	ld e,(ix+#1b)
	ld d,(ix+#1c)
	push de
	pop iy
	bit 7,(ix+#12)
	ret nz
	ld a,(ix+#34)
	ld (l4195),a
	jp l45da
.l443d
	inc de
	ld a,(de)
	inc de
	ld (ix+#20),a
	jp l43c1
.l4446
	add a
	add #03
	ld l,a
	ld a,#00
	adc #40
	ld h,a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ret
.l4454
	ld a,(de)
	cp #90
	jr nc,l4472
	and #0f
	add (ix+#03)
	ld c,a
	ld b,#00
	ld hl,l40c3
	add hl,bc
	ld c,(hl)
	ld hl,l524e
	add hl,bc
	ld (ix+#1b),l
	ld (ix+#1c),h
	inc de
	ret
.l4472
	cp #ff
	jr nz,l447a
	ld (ix+#1f),a
	ret
.l447a
	cp #c0
	jr nc,l4485
	and #0f
	ld (ix+#23),a
	inc de
	ret
.l4485
	inc de
	cp #c1
	jr nz,l448f
	ld (ix+#29),#00
	ret
.l448f
	cp #c0
	jr nz,l44a7
	ld (ix+#29),#ff
	ld a,(de)
	inc de
	ld (ix+#2a),a
	ld a,(de)
	inc de
	ld (ix+#2b),a
	ld a,(de)
	inc de
	ld (ix+#2c),a
	ret
.l44a7
	cp #fc
	jr nz,l44b0
	ld (ix+#34),#00
	ret
.l44b0
	cp #fd
	ret nz
	ld (ix+#34),#ff
	ld a,(de)
	inc de
	ld (l4196),a
	ld a,(de)
	inc de
	ld (l4198),a
	ret
.l44c2
	bit 7,(ix+#12)
	ret nz
	ld a,(ix+#28)
	bit 7,a
	ret z
	and #3f
	jr nz,l44d6
	res 7,(ix+#28)
	ret
.l44d6
	ld d,#07
	bit 6,(ix+#28)
	jr nz,l4504
	dec (ix+#26)
	ret nz
	dec (ix+#27)
	jr z,l4504
	ld l,(ix+#24)
	ld h,(ix+#25)
	inc hl
	ld (ix+#24),l
	ld (ix+#25),h
	ld a,(hl)
	and d
	ld (ix+#26),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (ix+#22)
	jr l4539
.l4504
	ld hl,l4afe
	ld a,(ix+#28)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l451e
	bit 6,(ix+#28)
	jr nz,l451e
	ld (ix+#27),#01
	ret
.l451e
	res 6,(ix+#28)
	ld a,(hl)
	rrca
	rrca
	rrca
	and d
	ld (ix+#26),a
	ld a,(hl)
	and d
	inc a
	ld (ix+#27),a
	ld (ix+#24),l
	ld (ix+#25),h
	ld a,(ix+#22)
.l4539
	call l4446
	ld (ix+#04),l
	ld (ix+#05),h
	ret
.l4543
	ld a,(ix+#2d)
	and a
	ret z
	jp p,l45a3
	ld e,(ix+#2f)
	ld hl,#0000
	ld d,l
	ld c,(ix+#32)
	ld a,(ix+#33)
	and a
	jp m,l457a
	ld b,#10
.l455e
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr nc,l4568
	add hl,de
.l4568
	ccf
	djnz l455e
	rl c
	rla
	ld (ix+#30),c
	ld (ix+#31),a
	ld (ix+#2d),#01
	jr l45a3
.l457a
	cpl
	ld b,a
	ld a,c
	cpl
	ld c,a
	inc bc
	ld a,b
	ld b,#10
.l4583
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr nc,l458d
	add hl,de
.l458d
	ccf
	djnz l4583
	rl c
	rla
	cpl
	ld b,a
	ld a,c
	cpl
	ld c,a
	inc bc
	ld (ix+#30),c
	ld (ix+#31),b
	ld (ix+#2d),#01
.l45a3
	ld a,(ix+#2e)
	and a
	jr z,l45ad
	dec (ix+#2e)
	ret
.l45ad
	ld a,(ix+#2f)
	and a
	jr z,l45c9
	dec (ix+#2f)
	ld a,(ix+#30)
	add (ix+#13)
	ld (ix+#13),a
	ld a,(ix+#31)
	adc (ix+#14)
	ld (ix+#14),a
	ret
.l45c9
	ld a,(ix+#32)
	ld (ix+#13),a
	ld a,(ix+#33)
	ld (ix+#14),a
	ld (ix+#2d),#00
	ret
.l45da
	push iy
	pop de
	ld (ix+#10),e
	ld (ix+#11),d
	ld (ix+#04),l
	ld (ix+#05),h
	ld (ix+#07),c
	ld a,(iy+#05)
	ld (ix+#08),a
	ld a,(iy+#06)
	and #7f
	srl a
	jr nc,l45fc
	inc a
.l45fc
	ld (ix+#09),a
	ld a,(iy+#07)
	ld (ix+#0c),a
	ld a,(iy+#08)
	ld (ix+#0d),a
	xor a
	ld (ix+#0a),a
	ld (ix+#0b),a
	ld (ix+#13),a
	ld (ix+#14),a
	ld a,(l419a)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#12),c
	bit 0,c
	jr z,l462b
	and (ix+#00)
.l462b
	push af
	ld a,(l4195)
	and a
	jr nz,l463c
	pop af
	bit 1,c
	jr z,l4650
	and (ix+#01)
	jr l4650
.l463c
	xor a
	ld (l4195),a
	ld a,(ix+#01)
	ld (l4199),a
	ld a,(l4196)
	ld (l4197),a
	pop af
	and (ix+#01)
.l4650
	ld (l419a),a
	ld hl,l47a4
	ld (ix+#0e),l
	ld (ix+#0f),h
	ret
.l465d
	call l4858
	ld c,#07
	ld a,(l419a)
	or #3f
	ld (l419a),a
	call l486d
	xor a
	inc c
	call l486d
	inc c
	call l486d
	inc c
	call l486d
	xor a
	ld b,#32
	ld hl,l40f7
	ld de,l412d
	ld ix,l4163
.l4687
	ld (hl),a
	ld (de),a
	ld (ix+#00),a
	inc hl
	inc de
	inc ix
	djnz l4687
	ld (l419c),a
	jp l485e
.l4698
	ld a,(l419a)
	and #3f
	cp #3f
	ret z
	ld ix,l40f3
	call l477a
	ld ix,l4129
	call l477a
	ld ix,l415f
	call l477a
	ld hl,l4197
	ld a,(hl)
	cp #ff
	jr z,l46ca
	dec (hl)
	jp p,l46ca
	ld a,(l4199)
	cpl
	ld hl,l419a
	or (hl)
	ld (hl),a
.l46ca
	call l4858
	ld c,#07
	ld a,(l419a)
	and #3f
	call l486d
	ld c,#00
	ld hl,(l40f7)
	ld de,(l40fd)
	add hl,de
	ld de,(l4106)
	add hl,de
	ld a,(l4105)
	bit 1,a
	ld a,l
	jr z,l46f1
	ld (l419b),a
.l46f1
	call l486d
	inc c
	ld a,h
	call l486d
	inc c
	ld hl,(l412d)
	ld de,(l4133)
	add hl,de
	ld de,(l413c)
	add hl,de
	ld a,(l413b)
	bit 1,a
	ld a,l
	jr z,l4712
	ld (l419b),a
.l4712
	call l486d
	inc c
	ld a,h
	call l486d
	inc c
	ld hl,(l4163)
	ld de,(l4169)
	add hl,de
	ld de,(l4172)
	add hl,de
	ld a,(l4171)
	bit 1,a
	ld a,l
	jr z,l4733
	ld (l419b),a
.l4733
	call l486d
	inc c
	ld a,h
	call l486d
	inc c
	ld a,(l4197)
	cp #ff
	ld a,(l4198)
	jr z,l4749
	ld a,(l419b)
.l4749
	rrca
	rrca
	rrca
	call l486d
	ld c,#08
	ld a,(l40f9)
	srl a
	srl a
	srl a
	call l486d
	inc c
	ld a,(l412f)
	srl a
	srl a
	srl a
	call l486d
	inc c
	ld a,(l4165)
	srl a
	srl a
	srl a
	call l486d
	jp l485e
.l477a
	ld a,(l419a)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld e,(ix+#10)
	ld d,(ix+#11)
	push de
	pop iy
	ld a,(ix+#07)
	and a
	jr z,l479a
	cp #ff
	jr z,l479a
	dec (ix+#07)
.l479a
	call l4816
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	jp (hl)
.l47a4
	ld a,(ix+#06)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l47b3
	ld (ix+#06),a
	ret
.l47b3
	ld a,(iy+#04)
	ld (ix+#06),a
	ld hl,l47c3
	ld (ix+#0e),l
	ld (ix+#0f),h
	ret
.l47c3
	ld a,(ix+#06)
	add (iy+#01)
	jp m,l47d5
	cp (iy+#02)
	jr c,l47d5
	ld (ix+#06),a
	ret
.l47d5
	ld a,(iy+#02)
	ld (ix+#06),a
	ld hl,l47e5
	ld (ix+#0e),l
	ld (ix+#0f),h
	ret
.l47e5
	ld a,(ix+#07)
	and a
	ret nz
	ld hl,l47f4
	ld (ix+#0e),l
	ld (ix+#0f),h
	ret
.l47f4
	ld a,(ix+#06)
	add (iy+#03)
	jp m,l4801
	ld (ix+#06),a
	ret
.l4801
	xor a
	ld (ix+#06),a
	ld (ix+#35),a
	ld a,(l419a)
	or (ix+#02)
	ld (l419a),a
	res 7,(ix+#12)
	ret
.l4816
	ld a,(ix+#08)
	and a
	jr z,l4823
	cp #ff
	ret z
	dec (ix+#08)
	ret nz
.l4823
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	ld c,(ix+#0c)
	ld b,(ix+#0d)
	add hl,bc
	ld (ix+#0a),l
	ld (ix+#0b),h
	dec (ix+#09)
	ret nz
	ld a,(iy+#06)
	and a
	ret z
	jp p,l4847
	ld (ix+#08),#ff
	ret
.l4847
	ld (ix+#09),a
	ld a,c
	cpl
	ld c,a
	ld a,b
	cpl
	ld b,a
	inc bc
	ld (ix+#0c),c
	ld (ix+#0d),b
	ret
.l4858
	ld bc,#f782
	out (c),c
	ret
.l485e
	ld de,#c000
	ld bc,#f40e
	out (c),c
	ld b,#f6
	out (c),d
	out (c),e
	ret
.l486d
	ld de,#c000
	ld b,#f4
	out (c),c
	ld b,#f6
	out (c),d
	out (c),e
	ld b,#f4
	out (c),a
	ld d,#80
	ld b,#f6
	out (c),d
	out (c),e
	ret
.l4887
	db #98,#89,#27,#18,#1e,#0c,#25,#0c
	db #20,#18,#1e,#0c,#27,#0c,#1e,#0c
	db #27,#24,#20,#0c,#25,#0c,#1e,#0c
.l48a2 equ $ + 3
	db #20,#0c,#ff,#fd,#02,#14,#87,#08
	db #0c,#08,#0c,#83,#1e,#0c,#86,#08
	db #0c,#87,#08,#18,#83,#1e,#0c,#86
	db #08,#0c,#87,#08,#0c,#08,#0c,#83
	db #1e,#18,#87,#08,#18,#83,#1e,#18
.l48c8 equ $ + 1
	db #ff,#90,#86,#25,#30,#27,#18,#22
	db #18,#7f,#30,#25,#18,#27,#18,#ff
.l48d7
	db #87,#0f,#0c,#0f,#0c,#1b,#0c,#83
	db #1e,#0c,#87,#0f,#0c,#0f,#0c,#1b
	db #0c,#83,#1e,#06,#1e,#06,#87,#0f
	db #0c,#0f,#0c,#1b,#0c,#83,#1e,#0c
	db #87,#0f,#0c,#0f,#0c,#1b,#0c,#83
.l4902 equ $ + 3
	db #1e,#0c,#ff,#20,#0c,#1e,#0c,#7f
	db #0c,#27,#0c,#20,#0c,#1e,#0c,#7f
	db #0c,#27,#0c,#20,#0c,#1e,#0c,#7f
	db #0c,#27,#0c,#20,#0c,#1e,#0c,#7f
.l4923 equ $ + 4
	db #0c,#27,#0c,#ff,#22,#18,#20,#18
	db #25,#0c,#27,#0c,#7f,#18,#1e,#0c
	db #1e,#0c,#20,#18,#22,#18,#25,#0c
.l493a equ $ + 3
	db #27,#0c,#ff,#87,#0d,#0c,#19,#0c
	db #7f,#0c,#83,#1e,#0c,#87,#0d,#0c
	db #19,#0c,#7f,#0c,#83,#1e,#0c,#87
	db #06,#0c,#12,#0c,#7f,#0c,#83,#1e
	db #0c,#87,#06,#0c,#12,#0c,#7f,#0c
.l4963 equ $ + 4
	db #83,#1e,#0c,#ff,#20,#18,#25,#0c
	db #27,#0c,#20,#18,#25,#0c,#27,#0c
	db #25,#18,#1e,#0c,#20,#0c,#25,#18
.l497c equ $ + 5
	db #1e,#0c,#20,#0c,#ff,#98,#8c,#20
	db #30,#25,#18,#27,#18,#25,#30,#1e
.l498b equ $ + 4
	db #18,#20,#18,#ff,#87,#0f,#0c,#0f
	db #0c,#1b,#0c,#83,#1e,#0c,#87,#0f
	db #0c,#0f,#0c,#1b,#0c,#83,#1e,#0c
	db #87,#08,#0c,#08,#0c,#14,#0c,#83
	db #1e,#0c,#87,#08,#0c,#08,#0c,#14
.l49b4 equ $ + 5
	db #0c,#83,#1e,#0c,#ff,#86,#20,#18
	db #1e,#0c,#7f,#0c,#25,#0c,#20,#0c
	db #25,#0c,#7f,#0c,#1e,#0c,#20,#18
	db #27,#0c,#1e,#0c,#25,#0c,#1e,#0c
.l49d2 equ $ + 3
	db #27,#0c,#ff,#8c,#98,#20,#18,#1e
	db #18,#20,#18,#1e,#18,#27,#18,#25
.l49e5 equ $ + 6
	db #18,#27,#18,#25,#18,#ff,#87,#0d
	db #0c,#0d,#0c,#19,#0c,#83,#1e,#0c
	db #87,#0d,#0c,#0d,#0c,#19,#0c,#83
	db #1e,#0c,#87,#0d,#0c,#0d,#0c,#19
	db #0c,#83,#1e,#0c,#87,#0d,#0c,#0d
.l4a0e equ $ + 7
	db #0c,#19,#0c,#83,#1e,#0c,#ff,#20
	db #0c,#25,#0c,#7f,#0c,#27,#0c,#20
	db #0c,#25,#0c,#7f,#0c,#27,#0c,#20
	db #0c,#25,#0c,#7f,#0c,#27,#0c,#20
	db #0c,#25,#0c,#7f,#0c,#27,#0c,#ff
.l4a2f
	db #20,#30,#22,#0c,#25,#0c,#27,#0c
	db #25,#0c,#27,#30,#25,#18,#1e,#18
.l4a40 equ $ + 1
	db #ff,#20,#18,#22,#0c,#27,#24,#25
	db #0c,#1e,#0c,#20,#18,#25,#0c,#1e
.l4a56 equ $ + 7
.l4a55 equ $ + 6
	db #24,#20,#0c,#27,#0c,#ff,#ff,#20
	db #0c,#1e,#18,#27,#0c,#25,#0c,#27
	db #18,#20,#0c,#25,#0c,#27,#18,#20
	db #0c,#25,#0c,#1e,#18,#20,#0c,#ff
.l4a6f
	db #20,#18,#27,#18,#7f,#0c,#20,#0c
	db #27,#0c,#1e,#0c,#7f,#18,#20,#18
	db #25,#0c,#27,#0c,#1e,#0c,#20,#0c
.l4a8b equ $ + 4
.l4a88 equ $ + 1
	db #ff,#7f,#c0,#ff,#fd,#02,#14,#7f
	db #90,#83,#1e,#0c,#1e,#06,#29,#06
	db #27,#06,#25,#06,#23,#0c,#fc,#ff
.l4a9f
	db #20,#18,#7f,#18,#20,#0c,#1e,#0c
	db #7f,#18,#20,#0c,#1e,#0c,#20,#0c
	db #27,#18,#20,#0c,#27,#0c,#1e,#0c
.l4abb equ $ + 4
.l4ab8 equ $ + 1
	db #ff,#7f,#36,#ff,#fc,#87,#03,#0c
	db #03,#06,#0f,#06,#0d,#0c,#0f,#0c
	db #03,#0c,#03,#06,#0f,#06,#0d,#0c
	db #0f,#0c,#03,#0c,#03,#06,#0f,#06
	db #0d,#0c,#0f,#0c,#03,#0c,#03,#06
	db #0f,#06,#0d,#0c,#0f,#0c,#fd,#01
.l4ae9 equ $ + 2
	db #1e,#ff,#8d,#98,#27,#18,#25,#18
	db #1e,#0c,#20,#24,#27,#0c,#25,#0c
.l4afe equ $ + 7
	db #27,#0c,#27,#0c,#1e,#0c,#20,#24
.l4b00 equ $ + 1
	db #ff,#fd,#01,#14,#83,#12,#18,#83
	db #1e,#0c,#82,#1e,#0c,#83,#12,#18
	db #83,#1e,#06,#1e,#06,#82,#1e,#0c
	db #83,#12,#18,#83,#1e,#0c,#82,#1e
	db #0c,#83,#12,#0c,#83,#1e,#0c,#1e
.l4b2d equ $ + 6
	db #0c,#82,#1e,#0c,#fc,#ff,#fd,#01
	db #1e,#8c,#98,#20,#18,#29,#18,#1e
	db #18,#25,#0c,#1e,#0c,#20,#18,#27
	db #0c,#1e,#0c,#20,#18,#25,#0c,#1e
.l4b49 equ $ + 2
	db #0c,#ff,#87,#08,#0c,#08,#0c,#08
	db #0c,#08,#0c,#06,#0c,#06,#0c,#06
	db #0c,#06,#0c,#08,#0c,#08,#0c,#08
	db #0c,#08,#0c,#03,#0c,#03,#0c,#03
.l4b6b equ $ + 4
	db #0c,#03,#0c,#ff,#86,#2c,#18,#2b
	db #06,#2a,#12,#27,#18,#25,#0c,#2a
.l4b7d equ $ + 6
	db #0c,#2c,#0c,#7f,#54,#ff,#86,#2c
	db #18,#2b,#06,#2a,#12,#27,#18,#25
	db #0c,#2a,#0c,#2c,#0c,#27,#0c,#25
	db #0c,#27,#0c,#27,#0c,#25,#0c,#27
.l4b9b equ $ + 4
	db #0c,#2a,#0c,#ff,#27,#0c,#27,#0c
	db #2a,#06,#2c,#06,#25,#0c,#27,#18
	db #22,#0c,#25,#0c,#2c,#18,#7f,#48
.l4bb0 equ $ + 1
	db #ff,#fd,#01,#0a,#03,#0c,#03,#0c
	db #08,#0c,#03,#0c,#03,#0c,#03,#0c
	db #08,#0c,#03,#0c,#03,#0c,#03,#0c
	db #08,#0c,#03,#0c,#03,#0c,#03,#0c
.l4bd5 equ $ + 6
	db #08,#0c,#03,#0c,#fc,#ff,#8c,#27
	db #0c,#83,#1e,#06,#20,#06,#8c,#27
	db #0c,#83,#1e,#06,#20,#06,#8c,#27
	db #12,#83,#1e,#06,#8c,#27,#0c,#83
	db #1e,#06,#20,#06,#8c,#27,#0c,#83
	db #1e,#06,#20,#06,#8c,#27,#0c,#83
	db #1e,#06,#20,#06,#8c,#27,#0c,#83
	db #1e,#06,#20,#06,#8c,#27,#0c,#83
.l4c14 equ $ + 5
	db #1e,#06,#20,#06,#ff,#27,#0c,#27
	db #0c,#2a,#06,#2c,#06,#25,#0c,#27
	db #18,#22,#0c,#25,#0c,#22,#18,#7f
.l4c29 equ $ + 2
	db #48,#ff,#27,#0c,#33,#0c,#1e,#06
	db #2c,#06,#25,#06,#31,#06,#27,#0c
	db #33,#0c,#22,#0c,#23,#06,#25,#06
	db #2c,#0c,#2a,#06,#27,#06,#7f,#48
.l4c48 equ $ + 1
	db #ff,#27,#0c,#33,#0c,#1e,#06,#2c
	db #06,#25,#06,#31,#06,#27,#0c,#33
	db #0c,#22,#0c,#23,#06,#25,#06,#2c
	db #0c,#27,#06,#22,#06,#17,#06,#23
	db #06,#19,#06,#25,#06,#27,#18,#7f
.l4c71 equ $ + 2
	db #18,#ff,#08,#0c,#08,#0c,#08,#0c
	db #08,#0c,#0d,#0c,#0d,#0c,#0d,#0c
	db #0d,#0c,#0b,#0c,#0b,#0c,#0b,#0c
	db #0b,#0c,#0a,#0c,#0a,#0c,#0a,#0c
.l4c92 equ $ + 3
	db #0a,#0c,#ff,#7f,#60,#7f,#60,#ff
.l4c97
	db #fd,#01,#14,#8c,#98,#25,#0c,#83
	db #1e,#06,#1e,#06,#8c,#25,#0c,#25
	db #0c,#83,#1e,#06,#1e,#06,#8c,#25
	db #0c,#83,#1e,#06,#1e,#06,#8c,#25
	db #0c,#25,#0c,#83,#1e,#06,#1e,#06
	db #8c,#25,#0c,#83,#1e,#06,#1e,#06
	db #8c,#25,#0c,#25,#0c,#83,#1e,#06
.l4cd6 equ $ + 7
	db #1e,#06,#8c,#25,#0c,#fc,#ff,#86
	db #25,#18,#23,#18,#22,#18,#20,#06
	db #20,#06,#1e,#06,#1e,#06,#7f,#60
.l4ce8 equ $ + 1
	db #ff,#25,#18,#23,#18,#22,#18,#20
	db #0c,#1e,#0c,#2e,#06,#2f,#06,#31
	db #06,#33,#06,#2a,#06,#2c,#06,#31
	db #06,#33,#06,#2e,#06,#2a,#06,#2c
.l4d0d equ $ + 6
	db #18,#31,#06,#2e,#06,#ff,#c0,#02
	db #01,#01,#24,#18,#c1,#27,#18,#22
	db #0c,#27,#0c,#20,#18,#c0,#02,#01
	db #01,#24,#18,#c1,#27,#18,#22,#0c
.l4d2c equ $ + 5
	db #27,#0c,#1e,#18,#ff,#fd,#01,#1e
	db #8c,#98,#20,#0c,#83,#1e,#0c,#8c
	db #20,#0c,#83,#1e,#0c,#8c,#25,#0c
	db #83,#1e,#0c,#8c,#25,#0c,#83,#1e
	db #0c,#8c,#23,#0c,#83,#1e,#0c,#8c
	db #23,#0c,#83,#1e,#0c,#8c,#22,#0c
	db #83,#1e,#0c,#8c,#22,#0c,#83,#1e
.l4d62 equ $ + 3
	db #0c,#fc,#ff,#c0,#02,#01,#01,#24
	db #0c,#c1,#27,#0c,#22,#06,#27,#06
	db #c0,#02,#01,#01,#1f,#0c,#c1,#7f
	db #30,#c0,#02,#01,#01,#24,#0c,#c1
	db #27,#0c,#22,#06,#27,#06,#c0,#02
	db #01,#01,#1a,#0c,#c1,#7f,#30,#ff
.l4d8f
	db #84,#03,#0c,#03,#06,#0f,#06,#03
	db #0c,#03,#06,#0f,#06,#03,#0c,#03
	db #06,#0f,#06,#03,#0c,#03,#06,#0f
	db #06,#01,#0c,#01,#06,#0d,#06,#01
	db #0c,#01,#06,#0d,#06,#01,#0c,#01
	db #06,#0d,#06,#01,#0c,#01,#06,#0d
.l4dc1 equ $ + 2
	db #06,#ff,#fd,#01,#1e,#83,#1e,#0c
.l4dcd equ $ + 6
	db #1e,#06,#1e,#06,#fc,#ff,#fd,#01
	db #1e,#83,#1e,#0c,#88,#1e,#0c,#83
	db #1e,#06,#1e,#06,#88,#1e,#0c,#83
	db #1e,#0c,#88,#1e,#06,#1e,#06,#83
	db #1e,#06,#1e,#06,#88,#1e,#0c,#83
	db #1e,#0c,#88,#1e,#0c,#83,#1e,#06
	db #1e,#03,#1e,#03,#88,#1e,#06,#1e
	db #06,#83,#1e,#06,#1e,#06,#88,#1e
	db #0c,#83,#1e,#0c,#88,#1e,#06,#83
.l4e13 equ $ + 4
	db #1e,#06,#fc,#ff,#90,#8a,#2a,#18
	db #89,#2a,#18,#8a,#2a,#18,#89,#2a
	db #18,#8a,#2a,#0c,#2c,#0c,#89,#2a
	db #18,#8a,#2a,#18,#89,#2a,#18,#ff
.l4e2f
	db #86,#2a,#0c,#2c,#06,#33,#06,#33
	db #18,#2a,#06,#31,#06,#31,#0c,#33
	db #18,#2a,#0c,#2e,#06,#2c,#06,#33
	db #18,#31,#0c,#2a,#0c,#33,#18,#ff
.l4e4f
	db #fd,#01,#1e,#8c,#98,#31,#0c,#83
	db #1e,#06,#1e,#06,#8c,#33,#0c,#83
	db #1e,#03,#1e,#06,#1e,#03,#8c,#20
	db #0c,#1e,#0c,#25,#0c,#83,#1e,#06
	db #1e,#03,#1e,#03,#8c,#27,#0c,#83
	db #1e,#06,#1e,#06,#1e,#0c,#8c,#27
	db #0c,#83,#1e,#03,#1e,#03,#1e,#03
	db #1e,#03,#8c,#25,#0c,#83,#1e,#06
	db #1e,#06,#1e,#03,#1e,#06,#1e,#03
.l4e98 equ $ + 1
	db #ff,#8c,#98,#1e,#14,#27,#0a,#20
.l4ea3 equ $ + 4
	db #14,#27,#0a,#ff,#84,#06,#0a,#12
	db #0a,#06,#0a,#12,#0a,#06,#0a,#12
.l4eb1 equ $ + 2
	db #0a,#ff,#86,#31,#14,#2a,#14,#2e
.l4ebe equ $ + 7
.l4ebb equ $ + 4
	db #0a,#2c,#0a,#ff,#2c,#3c,#ff,#ff
.l4ebf
	db #ff
.l4ec0
	dw l4887,l48a2,l48c8,l48d7
	dw l4902,l4923,l493a,l4963
	dw l497c,l498b,l49b4,l49d2
	dw l49e5,l4a0e,l4a2f,l4a40
	dw l4a55,l4a56,l4a6f,l4a88
	dw l4a8b,l4a9f,l4ab8,l4abb
	dw l4ae9,l4b2d,l4b49,l4b6b
	dw l4b7d,l4b9b,l4bb0,l4bd5
	dw l4c14,l4c29,l4c48,l4c71
	dw l4c92,l4c97,l4cd6,l4ce8
	dw l4d0d,l4d2c,l4d62,l4d8f
	dw l4dc1,l4dcd,l4e13,l4e2f
	dw l4e4f,l4b00,l4e98,l4ea3
	dw l4eb1,l4ebb,l4ebe,l4ebf
.l4f30
	dw l5153,l517c,l51a7
	db #00
	dw l4f4c,l4fff,l50c5
	db #01
	dw l51d3,l51e2,l51f1
	db #81
	dw l5200,l5202,l5204
.l4f4c equ $ + 1
	db #03,#82,#31,#fe,#fb,#82,#18,#fe
	db #00,#82,#31,#fe,#fb,#82,#18,#fe
	db #00,#18,#04,#04,#82,#00,#82,#04
	db #82,#08,#82,#0b,#82,#0d,#fe,#03
	db #82,#0d,#fe,#00,#82,#0d,#82,#00
	db #82,#04,#82,#08,#82,#0b,#82,#0d
	db #fe,#03,#82,#0d,#fe,#00,#82,#0d
	db #82,#14,#fe,#fb,#82,#14,#fe,#00
	db #14,#14,#14,#82,#31,#fe,#fb,#82
	db #18,#fe,#00,#82,#31,#fe,#fb,#82
	db #18,#fe,#00,#82,#31,#fe,#fb,#82
	db #18,#fe,#00,#18,#04,#14,#87,#14
	db #82,#00,#82,#04,#82,#08,#82,#0b
	db #82,#0d,#fe,#03,#82,#0d,#fe,#00
	db #82,#0d,#82,#14,#fe,#fb,#82,#14
	db #fe,#00,#14,#14,#14,#84,#14,#82
	db #31,#fe,#fb,#82,#18,#fe,#00,#82
	db #31,#fe,#fb,#82,#18,#fe,#00,#18
	db #04,#14,#82,#00,#82,#04,#82,#08
	db #82,#0b,#82,#0d,#fe,#03,#82,#0d
	db #84,#0d,#fe,#00,#86,#0d,#82,#14
	db #fe,#fb,#82,#14,#fe,#00,#84,#14
.l4fff equ $ + 4
	db #fe,#00,#16,#ff,#82,#17,#fe,#fb
	db #82,#17,#fe,#00,#82,#17,#fe,#fb
	db #82,#17,#fe,#00,#17,#01,#01,#82
	db #01,#82,#03,#82,#06,#82,#09,#82
	db #0c,#fe,#03,#82,#0c,#fe,#00,#82
	db #0c,#82,#01,#82,#03,#82,#06,#82
	db #09,#82,#0c,#fe,#03,#82,#0c,#fe
	db #00,#82,#0c,#82,#01,#fe,#fb,#82
	db #01,#fe,#00,#01,#01,#17,#82,#17
	db #fe,#fb,#82,#17,#fe,#00,#82,#17
	db #fe,#fb,#82,#17,#fe,#00,#82,#17
	db #fe,#fb,#82,#17,#fe,#00,#17,#01
	db #01,#fe,#03,#01,#fe,#05,#01,#fe
	db #00,#01,#fe,#03,#01,#fe,#05,#01
	db #fe,#00,#01,#fe,#fe,#01,#fe,#00
	db #82,#01,#82,#03,#82,#06,#82,#09
	db #82,#0c,#fe,#03,#82,#0c,#fe,#00
	db #82,#0c,#82,#01,#fe,#fb,#82,#01
	db #fe,#00,#01,#01,#17,#84,#17,#82
	db #17,#fe,#fb,#82,#17,#fe,#00,#82
	db #17,#fe,#fb,#82,#17,#fe,#00,#17
	db #01,#01,#82,#01,#82,#03,#82,#06
	db #82,#09,#82,#0c,#fe,#03,#82,#0c
	db #84,#0c,#fe,#00,#86,#0c,#82,#01
	db #fe,#fb,#82,#01,#fe,#00,#84,#01
.l50c5 equ $ + 2
	db #16,#ff,#8a,#31,#13,#82,#02,#82
	db #05,#82,#07,#82,#0a,#82,#0e,#fe
	db #03,#82,#0f,#fe,#00,#0e,#0f,#c6
	db #0c,#82,#02,#82,#05,#82,#07,#82
	db #0a,#82,#0e,#fe,#03,#82,#0f,#fe
	db #00,#0e,#0f,#82,#15,#fe,#fb,#82
	db #15,#fe,#00,#82,#13,#13,#86,#31
	db #88,#31,#13,#82,#13,#82,#31,#13
	db #31,#13,#c6,#06,#82,#02,#82,#05
	db #c6,#0c,#82,#07,#82,#0a,#c6,#06
	db #82,#11,#fe,#03,#82,#12,#fe,#00
	db #11,#12,#82,#15,#fe,#fb,#82,#15
	db #fe,#00,#82,#13,#13,#84,#13,#8a
	db #31,#13,#82,#02,#82,#05,#82,#07
	db #82,#0a,#0e,#0f,#fe,#03,#0e,#0f
	db #11,#12,#12,#11,#fe,#00,#12,#0f
	db #11,#0f,#12,#11,#82,#15,#fe,#fb
	db #82,#15,#fe,#00,#84,#13,#16,#ff
.l5153
	db #82,#2e,#85,#30,#24,#82,#24,#84
	db #19,#1f,#1f,#fe,#fe,#82,#1f,#fe
	db #00,#82,#1f,#fe,#fe,#82,#1f,#24
	db #2d,#82,#25,#84,#25,#84,#29,#90
	db #2c,#82,#2d,#88,#30,#82,#2e,#16
.l517c equ $ + 1
	db #ff,#82,#fe,#05,#2e,#fe,#00,#85
	db #2b,#1a,#82,#1a,#84,#1a,#1e,#1e
	db #fe,#fe,#82,#1e,#fe,#00,#82,#1e
	db #fe,#fe,#82,#1e,#84,#23,#84,#23
	db #84,#23,#82,#2b,#8a,#2b,#82,#fe
.l51a7 equ $ + 4
	db #05,#2e,#16,#ff,#82,#24,#84,#2f
	db #24,#2d,#82,#2d,#1c,#1b,#1c,#1b
	db #1d,#20,#fe,#fe,#1d,#20,#fe,#00
	db #21,#22,#fe,#fe,#21,#22,#84,#24
	db #26,#27,#26,#27,#28,#2a,#28,#2a
	db #24,#2e,#8a,#2f,#82,#24,#16,#ff
.l51d3
	db #32,#fe,#01,#32,#fe,#02,#32,#fe
.l51e2 equ $ + 7
	db #03,#32,#fe,#07,#35,#16,#ff,#33
	db #fe,#01,#33,#fe,#02,#33,#fe,#03
.l51f1 equ $ + 6
	db #33,#fe,#00,#35,#16,#ff,#34,#fe
	db #01,#34,#fe,#02,#34,#fe,#03,#34
	db #fe,#04,#35,#16,#ff
.l5204 equ $ + 4
.l5202 equ $ + 2
.l5200
	db #16,#ff,#16,#ff,#16,#ff,#8a,#19
	db #39,#00,#00,#00,#00,#00,#8a,#19
	db #31,#00,#00,#00,#00,#00,#8a,#21
	db #49,#00,#00,#00,#00,#00,#8a,#19
	db #49,#00,#00,#00,#00,#00,#8a,#21
	db #39,#00,#00,#00,#00,#00,#8a,#19
	db #41,#00,#00,#00,#00,#00,#8a,#29
	db #49,#00,#00,#00,#00,#00,#89,#61
	db #00,#00,#00,#00,#00,#00,#8a,#19
	db #51,#00,#00,#00,#00,#00
.l524e
	db #7f,#fb,#00,#ff,#6d,#00,#03,#01
	db #00,#01,#7f,#fc,#00,#ff,#57,#00
	db #03,#01,#00,#01,#7f,#fb,#00,#ff
	db #75,#00,#00,#40,#00,#03,#7f,#fc
	db #00,#ff,#75,#00,#00,#3b,#00,#01
	db #43,#fc,#00,#ff,#7a,#00,#03,#06
	db #00,#01,#7f,#fc,#00,#ff,#7a,#00
	db #03,#04,#00,#01,#41,#ff,#45,#ff
	db #7d,#0f,#04,#03,#00,#01,#43,#fe
	db #00,#ff,#7f,#01,#03,#06,#00,#01
	db #7f,#eb,#00,#ff,#75,#ff,#00,#00
	db #00,#03,#7f,#ff,#00,#ff,#70,#0c
	db #03,#01,#00,#01,#08,#ff,#00,#ff
	db #65,#00,#05,#fa,#ff,#01,#7f,#f8
	db #00,#ff,#64,#fe,#00,#00,#00,#02
	db #7f,#ff,#3a,#fe,#78,#00,#03,#01
	db #00,#01,#7f,#fe,#00,#fe,#75,#00
	db #03,#02,#00,#01,#7f,#fc,#00,#ff
	db #7f,#00,#03,#01,#00,#01,#7f,#fc
	db #00,#ff,#57,#00,#03,#01,#00,#01
.l52ee
	db #32,#f7,#17,#fc,#6e,#02,#0f,#0f
	db #00,#03,#af,#00,#09,#78,#fc,#0c
	db #ff,#62,#01,#06,#0c,#01,#03,#7d
	db #01,#0a,#6b,#f7,#1e,#ff,#7f,#02
	db #02,#39,#01,#03,#39,#00,#17,#14
	db #fd,#3f,#ff,#7f,#09,#09,#15,#00
	db #03,#40,#00,#32,#13,#fe,#13,#ff
	db #6f,#06,#03,#07,#00,#03,#01,#02
	db #31,#18,#ff,#34,#fb,#7c,#09,#08
	db #2f,#01,#01,#49,#00,#32,#07,#f9
	db #27,#ff,#63,#07,#09,#0d,#00,#03
	db #72,#00,#57,#7f,#f2,#00,#fc,#43
	db #0b,#02,#11,#00,#02,#75,#01,#0a
	db #43,#fe,#3c,#ff,#78,#0c,#2a,#04
	db #00,#01,#2c,#00,#0a,#03,#fe,#40
	db #ff,#7f,#0a,#0a,#5c,#00,#03,#96
	db #00,#67,#1b,#fe,#0e,#ff,#6b,#0a
	db #2f,#39,#00,#02,#39,#00,#28,#17
	db #f9,#00,#ff,#50,#00,#00,#00,#00
	db #02,#2c,#00,#00,#43,#fc,#02,#ff
	db #7f,#05,#0a,#11,#00,#03,#5d,#00
	db #14,#7f,#f7,#0a,#ff,#7f,#1e,#3c
	db #0c,#01,#03,#32,#03,#1e,#18,#03
.lbffd
	db &00
.lbffe
	db &00
;
.music_info
	db "Striker In The Crypts Of Trogan (1992)(Codemasters)(Andy Wynd)",0
	db "",0

	read "music_end.asm"
