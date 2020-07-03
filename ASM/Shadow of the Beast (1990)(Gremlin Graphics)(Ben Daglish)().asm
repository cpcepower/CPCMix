; Music of Shadow of the Beast (1990)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 22/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SHADOOTB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #4000
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

	jp l40f6        ; init
	jp l41a9        ; play
;
.music_end
.l4006
	db #00
;
;.sound effects
;
	jp l4011
;
.stop_music
;
	xor a
	ld (l4006),a
	jp l45f4
.l4011
	ld l,a
	add a
	add l
	ld l,a
	ld h,#00
	ld de,l5218
	add hl,de
	ld a,(hl)
	inc hl
	ld ix,l44ec
	call l4032
	ld a,(hl)
	inc hl
	ld ix,l4504
	call l4032
	ld a,(hl)
	ld ix,l451c
.l4032
	cp #ff
	ret z
	push hl
	ld l,a
	add a
	ld c,a
	ld b,#00
	ld iy,l500a
	add l
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	ex de,hl
	add iy,de
	ld hl,l5196
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,l51d8
	add hl,bc
	ld c,(hl)
	ex de,hl
	call l4535
	set 7,(ix+#15)
	pop hl
	ret
.l4065 equ $ + 7
.l405f equ $ + 1
.l405e
	db #00,#45,#64,#cd,#02,#30,#11,#0f
.l406d equ $ + 7
.l406b equ $ + 5
.l406a equ $ + 4
.l4069 equ $ + 3
.l4068 equ $ + 2
.l4067 equ $ + 1
	db #00,#21,#45,#64,#cd,#05,#30,#3e
.l4073 equ $ + 5
	db #1f,#11,#25,#00,#21,#3b,#64,#cd
.l4077 equ $ + 1
	db #02,#30,#3e,#0b,#11,#26,#00,#21
.l4080 equ $ + 2
.l407f equ $ + 1
.l407e
	db #3b,#10,#cd,#02,#30,#3e,#01,#11
.l408c equ $ + 6
.l408b equ $ + 5
.l408a equ $ + 4
.l4089 equ $ + 3
.l4088 equ $ + 2
.l4086
	db #41,#00,#21,#3b,#64,#cd,#02,#30
.l4094 equ $ + 6
.l408e
	db #3e,#11,#32,#a3,#38,#3e,#4b,#06
.l4098 equ $ + 2
	db #b6,#2e,#10,#cd,#85,#38,#3e,#10
.l40a1 equ $ + 3
.l40a0 equ $ + 2
.l409f equ $ + 1
	db #32,#a3,#20,#3e,#47,#06,#b7,#2e
.l40ad equ $ + 7
.l40ac equ $ + 6
.l40ab equ $ + 5
.l40aa equ $ + 4
.l40a9 equ $ + 3
.l40a7 equ $ + 1
	db #0f,#cd,#85,#38,#3e,#4a,#06,#b7
.l40b5 equ $ + 7
.l40af equ $ + 1
	db #2e,#0f,#cd,#85,#38,#3e,#6c,#06
.l40b9 equ $ + 3
	db #b7,#2e,#0f,#cd,#85,#38,#3e,#6f
.l40c1 equ $ + 3
.l40c0 equ $ + 2
	db #06,#b7,#2e,#0f,#cd,#85,#38,#cd
	db #d8,#40,#21,#0a,#60,#3e,#1a,#cd
	db #6f,#4d,#3e,#08,#32,#24,#60,#c3
	db #92,#39,#af,#32,#17,#60,#3e,#f0
	db #32,#14,#60,#3e,#88,#32,#15,#60
	db #06,#11,#21,#02,#61,#c5,#3e,#13
.l40f5 equ $ + 7
.l40f4 equ $ + 6
.l40f3 equ $ + 5
.l40f2 equ $ + 4
.l40f1 equ $ + 3
	db #90,#87,#4f,#00,#00,#ff,#00,#00
;
.init_music
.l40f6
;
	push af
	call l45f4
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l4e40
	add l
	ld l,a
	jr nc,l4107
	inc h
.l4107
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld hl,l4e40
	add hl,de
	ld (l405f),hl
	pop hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld hl,l4e40
	add hl,de
	ld (l4080),hl
	pop hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld hl,l4e40
	add hl,de
	ld (l40a1),hl
	xor a
	ld (l4068),a
	ld (l4089),a
	ld (l40aa),a
	ld (l406d),a
	ld (l408e),a
	ld (l40af),a
	ld (l4073),a
	ld (l4094),a
	ld (l40b5),a
	ld (l4077),a
	ld (l4098),a
	ld (l40b9),a
	ld (l407e),a
	ld (l409f),a
	ld (l40c0),a
	cpl
	ld (l4069),a
	ld (l408a),a
	ld (l40ab),a
	ld a,#01
	ld (l4067),a
	ld (l4088),a
	ld (l40a9),a
	ld (l406a),a
	ld (l408b),a
	ld (l40ac),a
	ld hl,l40c1
	ld bc,#030c
.l417e
	xor a
.l417f
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #c0
	jr nz,l417f
	djnz l417e
	ld hl,l500a
	ld (l4065),hl
	ld (l4086),hl
	ld (l40a7),hl
	ld a,#ff
	ld (l406b),a
	ld (l408c),a
	ld (l40ad),a
	ld (l4006),a
	ld (l40f3),a
	ret
;
.play_music
.l41a9
;
	call l4636
	ld a,(l4006)
	and a
	ret z
	ld a,(l406b)
	ld hl,l408c
	or (hl)
	ld hl,l40ad
	or (hl)
	ld (l4006),a
	jr nz,l41d3
	xor a
	ld (l4006),a
	ld a,(l44eb)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l4006),a
	ret
.l41d3
	ld iy,l405e
	ld ix,l44ec
	call l41f1
	ld iy,l407f
	ld ix,l4504
	call l41f1
	ld iy,l40a0
	ld ix,l451c
.l41f1
	call l43c3
	call l4453
	ld a,(iy+#0b)
	and a
	jp z,l4296
.l41fe
	dec (iy+#09)
	jr z,l4216
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jp l4296
.l4216
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l4220
	ld a,(hl)
	cp #80
	jr c,l4273
	cp #fd
	jr nz,l422f
	inc hl
	inc hl
	inc hl
	jp l4220
.l422f
	cp #fc
	jr nz,l4237
	inc hl
	jp l4220
.l4237
	cp #fe
	jr nz,l4244
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l4220
.l4244
	cp #ff
	jr nz,l424d
	xor a
	ld (iy+#0d),a
	ret
.l424d
	cp #c0
	jr nc,l425a
	and #1f
	ld (iy+#09),a
	inc hl
	jp l4220
.l425a
	and #0f
	add (iy+#00)
	ld de,l40c1
	add e
	ld e,a
	jr nc,l4267
	inc d
.l4267
	inc hl
	ld a,(hl)
	inc hl
	ld c,a
	add a
	add c
	add a
	add a
	ld (de),a
	jp l4220
.l4273
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	add a
	ld c,a
	ld b,#00
	ld hl,l4ddc
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,l4941
	add hl,de
	ex de,hl
	ld (iy+#03),e
	ld (iy+#04),d
	jr l429c
.l4296
	ld e,(iy+#05)
	ld d,(iy+#06)
.l429c
	dec (iy+#0c)
	jr z,l42ae
	ld a,(de)
	cp #80
	call nc,l4352
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l42ae
	ld a,(de)
	cp #80
	jr c,l42bf
	call l4352
	ld a,(iy+#0b)
	and a
	jr z,l42ae
	jp l41fe
.l42bf
	cp #7f
	jp z,l4345
	cp #7e
	jr nz,l42d1
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l4317
.l42d1
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l488f
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(iy+#15)
	ld (iy+#19),a
	and a
	jr z,l4317
	ld a,(iy+#16)
	ld (iy+#1a),a
	ld a,(iy+#17)
	ld (iy+#1b),a
	ld a,(iy+#18)
	add (iy+#0e)
	push hl
	ld hl,l488f
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	pop bc
	and a
	sbc hl,bc
	ld (iy+#1e),l
	ld (iy+#1f),h
	ld h,b
	ld l,c
.l4317
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
	ld b,(iy+#20)
	ld hy,a
	ld ly,e
	bit 7,(ix+#15)
	ret nz
	ld a,b
	ld (l40f1),a
	jp l4535
.l4345
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l4352
	ld a,(de)
	cp #90
	jr nc,l4370
	and #0f
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l40c1
	add hl,bc
	ld c,(hl)
	ld hl,l500a
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l4370
	cp #ff
	jr nz,l4379
	ld (iy+#0b),#ff
	ret
.l4379
	cp #c0
	jr nc,l4384
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l4384
	inc de
	cp #c1
	jr nz,l438e
	ld (iy+#15),#00
	ret
.l438e
	cp #c0
	jr nz,l43a6
	ld (iy+#15),#ff
	ld a,(de)
	inc de
	ld (iy+#16),a
	ld a,(de)
	inc de
	ld (iy+#17),a
	ld a,(de)
	inc de
	ld (iy+#18),a
	ret
.l43a6
	cp #fc
	jr nz,l43af
	ld (iy+#20),#00
	ret
.l43af
	cp #fd
	jr nz,l43c2
	ld (iy+#20),#ff
	ld a,(de)
	inc de
	ld (l40f2),a
	ld a,(de)
	inc de
	ld (l40f4),a
	ret
.l43c2
	ret
.l43c3
	bit 7,(ix+#15)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l43d7
	res 7,(iy+#14)
	ret
.l43d7
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l440b
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l440b
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l43fa
	inc h
	ld (iy+#11),h
.l43fa
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l4440
.l440b
	ld hl,l48ea
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l4425
	bit 6,(iy+#14)
	jr nz,l4425
	ld (iy+#13),#01
	ret
.l4425
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
.l4440
	add a
	ld hl,l488f
	add l
	ld l,a
	jr nc,l4449
	inc h
.l4449
	ld a,(hl)
	inc hl
	ld (ix+#03),a
	ld a,(hl)
	ld (ix+#04),a
	ret
.l4453
	ld a,(iy+#19)
	and a
	ret z
	jp p,l44b4
	ld d,#00
	ld e,(iy+#1b)
	ld hl,#0000
	ld c,(iy+#1e)
	ld a,(iy+#1f)
	and a
	jp m,l448b
	ld b,#10
.l446f
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr nc,l4479
	add hl,de
.l4479
	ccf
	djnz l446f
	rl c
	rla
	ld (iy+#1c),c
	ld (iy+#1d),a
	ld (iy+#19),#01
	jr l44b4
.l448b
	cpl
	ld b,a
	ld a,c
	cpl
	ld c,a
	inc bc
	ld a,b
	ld b,#10
.l4494
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr nc,l449e
	add hl,de
.l449e
	ccf
	djnz l4494
	rl c
	rla
	cpl
	ld b,a
	ld a,c
	cpl
	ld c,a
	inc bc
	ld (iy+#1c),c
	ld (iy+#1d),b
	ld (iy+#19),#01
.l44b4
	ld a,(iy+#1a)
	and a
	jr z,l44be
	dec (iy+#1a)
	ret
.l44be
	ld a,(iy+#1b)
	and a
	jr z,l44da
	dec (iy+#1b)
	ld a,(iy+#1c)
	add (ix+#16)
	ld (ix+#16),a
	ld a,(iy+#1d)
	adc (ix+#17)
	ld (ix+#17),a
	ret
.l44da
	ld a,(iy+#1e)
	ld (ix+#16),a
	ld a,(iy+#1f)
	ld (ix+#17),a
	ld (iy+#19),#00
	ret
.l44f1 equ $ + 6
.l44ef equ $ + 4
.l44ec equ $ + 1
.l44eb
	db #3f,#fe,#f7,#09,#a3,#38,#00,#a8
	db #36,#e1,#5e,#23,#56,#23,#e5,#21
.l4501 equ $ + 6
	db #09,#00,#19,#36,#a9,#21,#00,#5f
.l4509 equ $ + 6
.l4507 equ $ + 4
.l4504 equ $ + 1
	db #35,#fd,#ef,#12,#cd,#08,#00,#3a
	db #1c,#60,#cd,#c6,#3a,#c2,#bf,#44
.l4519 equ $ + 6
	db #e1,#3e,#80,#32,#be,#37,#00,#10
.l4521 equ $ + 6
.l451f equ $ + 4
.l451c equ $ + 1
	db #32,#fb,#df,#24,#f1,#57,#00,#21
	db #28,#60,#cd,#92,#56,#cd,#93,#58
.l4531 equ $ + 6
	db #3e,#11,#32,#4c,#5b,#c3,#00,#3c
.l4534 equ $ + 1
	db #cd,#00
.l4535
	ld a,ly
	ld (ix+#13),a
	ld a,hy
	ld (ix+#14),a
	ld (ix+#03),l
	ld (ix+#04),h
	ld (ix+#06),c
	ld a,(iy+#05)
	ld (ix+#07),a
	cp #ff
	jr z,l457f
	ld a,(iy+#06)
	ld (ix+#0e),a
	ld a,(iy+#07)
	ld (ix+#0d),a
	ld a,(iy+#08)
	and #7f
	srl a
	jr nz,l4569
	ld a,#01
.l4569
	ld (ix+#08),a
	ld a,(iy+#09)
	ld (ix+#0c),a
	ld a,(iy+#0a)
	ld (ix+#0b),a
	xor a
	ld (ix+#0f),a
	ld (ix+#10),a
.l457f
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld (ix+#16),a
	ld (ix+#17),a
	ld a,(l44eb)
	or (ix+#02)
	ld c,(iy+#0b)
	ld (ix+#15),c
	bit 0,c
	jr z,l459f
	and (ix+#00)
.l459f
	push af
	ld a,(l40f1)
	and a
	jr nz,l45b0
	pop af
	bit 1,c
	jr z,l45c4
	and (ix+#01)
	jr l45c4
.l45b0
	xor a
	ld (l40f1),a
	ld a,(ix+#01)
	ld (l40f5),a
	ld a,(l40f2)
	ld (l40f3),a
	pop af
	and (ix+#01)
.l45c4
	ld (l44eb),a
	bit 2,c
	jr nz,l45d5
	ld hl,l4782
	ld (ix+#11),l
	ld (ix+#12),h
	ret
.l45d5
	call l4865
	ld a,(iy+#00)
	ld c,#0d
	call l487c
	ld a,(iy+#04)
	ld c,#0b
	call l487c
	inc c
	xor a
	call l487c
	ld (ix+#05),#ff
	jp l4871
.l45f4
	call l4865
	ld c,#07
	ld a,(l44eb)
	or #3f
	ld (l44eb),a
	call l487c
	xor a
	ld c,#08
	call l487c
	inc c
	call l487c
	inc c
	call l487c
	ld a,#01
	inc c
	call l487c
	inc c
	xor a
	call l487c
	inc c
	call l487c
	ld (l4501),a
	ld (l4519),a
	ld (l4531),a
	ld (l44f1),a
	ld (l4509),a
	ld (l4521),a
	jp l4871
.l4636
	ld a,(l44eb)
	and #3f
	cp #3f
	ret z
	ld ix,l44ec
	call l4750
	ld ix,l4504
	call l4750
	ld ix,l451c
	call l4750
	ld hl,l40f3
	ld a,(hl)
	cp #ff
	jr z,l4668
	dec (hl)
	jp p,l4668
	ld a,(l40f5)
	cpl
	ld hl,l44eb
	or (hl)
	ld (hl),a
.l4668
	call l4865
	ld c,#07
	ld a,(l44eb)
	call l487c
	ld ix,l44ec
	ld c,#00
	ld hl,(l44ef)
	ld a,(ix+#09)
	add l
	ld l,a
	ld a,(ix+#0a)
	adc h
	ld h,a
	ld a,(ix+#16)
	add l
	ld l,a
	ld a,(ix+#17)
	adc h
	sra a
	rr l
	push af
	ld a,l
	call l486d
	bit 1,(ix+#15)
	jp z,l46a2
	ld (l4534),a
.l46a2
	call l487c
	inc c
	pop af
	call l487c
	inc c
	ld hl,(l4507)
	ld a,(ix+#21)
	add l
	ld l,a
	ld a,(ix+#22)
	adc h
	ld h,a
	ld a,(ix+#2e)
	add l
	ld l,a
	ld a,(ix+#2f)
	adc h
	sra a
	rr l
	push af
	ld a,l
	call l486d
	bit 1,(ix+#2d)
	jp z,l46d4
	ld (l4534),a
.l46d4
	call l487c
	inc c
	pop af
	call l487c
	inc c
	ld hl,(l451f)
	ld a,(ix+#39)
	add l
	ld l,a
	ld a,(ix+#3a)
	adc h
	ld h,a
	ld a,(ix+#46)
	add l
	ld l,a
	ld a,(ix+#47)
	adc h
	sra a
	rr l
	push af
	ld a,l
	call l486d
	bit 1,(ix+#45)
	jp z,l4706
	ld (l4534),a
.l4706
	call l487c
	inc c
	pop af
	call l487c
	inc c
	ld a,(l40f3)
	cp #ff
	jr z,l471c
	ld a,(l40f4)
	jp l471f
.l471c
	ld a,(l4534)
.l471f
	rrca
	rrca
	rrca
	call l487c
	ld c,#08
	ld a,(l44f1)
	srl a
	srl a
	srl a
	call l487c
	inc c
	ld a,(l4509)
	srl a
	srl a
	srl a
	call l487c
	inc c
	ld a,(l4521)
	srl a
	srl a
	srl a
	call l487c
	jp l4871
.l4750
	ld a,(l44eb)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#13)
	ld ly,a
	ld a,(ix+#14)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l4771
	cp #ff
	jr z,l4771
	dec (ix+#06)
.l4771
	call l47f8
	bit 2,(iy+#0b)
	jp nz,l47f1
	ld l,(ix+#11)
	ld h,(ix+#12)
	jp (hl)
.l4782
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l4791
	ld (ix+#05),a
	ret
.l4791
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l47a1
	ld (ix+#11),l
	ld (ix+#12),h
	ret
.l47a1
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l47b3
	cp (iy+#02)
	jr c,l47b3
	ld (ix+#05),a
	ret
.l47b3
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l47c3
	ld (ix+#11),l
	ld (ix+#12),h
	ret
.l47c3
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l47d2
	ld (ix+#11),l
	ld (ix+#12),h
	ret
.l47d2
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l47df
	ld (ix+#05),a
	ret
.l47df
	ld (ix+#05),#00
	ld a,(l44eb)
	or (ix+#02)
	ld (l44eb),a
	res 7,(ix+#15)
	ret
.l47f1
	ld a,(ix+#06)
	and a
	ret nz
	jr l47df
.l47f8
	ld a,(ix+#07)
	nop
	nop
	nop
	and a
	jr z,l4820
	cp #ff
	ret z
	ld a,(ix+#0d)
	add (ix+#09)
	ld (ix+#09),a
	ld (ix+#0f),a
	ld a,(ix+#0e)
	adc (ix+#0a)
	ld (ix+#0a),a
	ld (ix+#10),a
	dec (ix+#07)
	ret nz
.l4820
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld c,(ix+#0b)
	ld b,(ix+#0c)
	add hl,bc
	ld (ix+#09),l
	ld (ix+#0a),h
	dec (ix+#08)
	ret nz
	ld a,(iy+#08)
	ld l,a
	and #7f
	ret z
	bit 7,l
	jr z,l4854
	and #7f
	ld (ix+#08),a
	ld a,(ix+#0f)
	ld (ix+#09),a
	ld a,(ix+#10)
	ld (ix+#0a),a
	ret
.l4854
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
.l4865
	ld bc,#f782
	out (c),c
	ld de,#c000
.l486d
	ld hl,#f680
	ret
.l4871
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.l487c
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
.l488f
	dw #13fc,#12dc,#11cc,#10cc
	dw #0fe0,#0efa,#0e1e,#0d52
	dw #0c94,#0be4,#0b36,#0a94
	dw #09fe,#096e,#08e6,#0866
	dw #07f0,#077d,#070f,#06a9
	dw #064a,#05f2,#059b,#054a
	dw #04ff,#04b7,#0474,#0433
	dw #03f7,#03c0,#0389,#0355
	dw #0325,#02f9,#02ce,#02a6
	dw #0280,#025c,#023b,#021a
	dw #01fc,#01e0,#01c4,#01ab
.l48ea equ $ + 3
	dw #0193,#017c,#0167,#0153
	dw #0140,#012e,#011d,#010d
	dw #00fe,#00f0,#00e2,#00d6
	dw #00ca,#00be,#00b3,#00a9
	dw #00a0,#0097,#008e,#0086
	dw #007f,#0078,#0071,#006b
	dw #0065,#005f,#005a,#0055
	dw #0050,#004b,#0047,#0043
	dw #003f,#003c,#0038,#0035
	dw #0032,#002f,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020
.l4941
	db #80,#12,#1e,#12,#0a,#82,#1e,#1e
	db #83,#1e,#0a,#7f,#0a,#1e,#0a,#80
	db #06,#14,#82,#1e,#28,#ff,#81,#12
	db #05,#12,#05,#12,#05,#7f,#0f,#ff
	db #83,#19,#05,#1c,#05,#1e,#28,#12
	db #28,#ff,#83,#25,#05,#2a,#28,#1e
	db #46,#ff,#83,#7f,#14,#19,#0a,#19
	db #0a,#1e,#28,#1a,#0a,#1a,#0a,#1e
	db #14,#21,#28,#ff,#82,#3d,#28,#ff
	db #7f,#0a,#ff,#84,#12,#a0,#ff,#87
	db #12,#a0,#ff,#88,#12,#a0,#ff,#81
	db #12,#05,#12,#05,#12,#05,#7f,#0f
	db #0e,#05,#0e,#05,#0e,#05,#7f,#0f
	db #0a,#05,#0a,#05,#0a,#05,#7f,#0f
	db #06,#05,#06,#05,#06,#05,#7f,#0f
	db #02,#05,#02,#05,#02,#05,#7f,#19
	db #ff,#87,#91,#12,#91,#90,#7f,#0f
	db #ff,#87,#92,#15,#91,#90,#7f,#0f
	db #ff,#8b,#2a,#64,#7f,#14,#2b,#50
	db #7f,#1e,#8c,#25,#8c,#7f,#14,#8b
	db #26,#78,#8d,#26,#28,#ff,#8c,#2a
	db #0f,#2c,#0a,#8a,#2c,#0f,#8c,#2d
	db #3c,#2c,#14,#2a,#0a,#8d,#2a,#0f
	db #8a,#28,#0f,#8c,#2a,#50,#7f,#78
	db #ff,#8c,#2f,#05,#2d,#0a,#2f,#2d
	db #8d,#2f,#0f,#8c,#2d,#14,#2c,#0a
	db #8d,#2c,#14,#8c,#2d,#14,#2a,#69
	db #ff,#88,#26,#32,#86,#26,#05,#25
	db #05,#23,#05,#26,#05,#25,#05,#23
	db #05,#88,#26,#3c,#89,#26,#14,#ff
	db #88,#26,#32,#86,#26,#05,#25,#05
	db #23,#05,#26,#05,#25,#05,#23,#05
	db #88,#2a,#3c,#89,#2a,#14,#ff,#88
	db #25,#32,#86,#25,#05,#23,#05,#21
	db #05,#25,#05,#23,#05,#21,#05,#88
	db #25,#3c,#89,#25,#14,#ff,#88,#25
	db #32,#86,#25,#05,#23,#05,#21,#05
	db #25,#05,#23,#05,#21,#05,#88,#2a
	db #3c,#89,#2a,#14,#ff,#85,#7f,#0a
	db #1e,#0a,#21,#0a,#23,#0a,#24,#0a
	db #25,#0a,#7f,#0a,#1e,#0a,#21,#0a
	db #23,#0a,#24,#0a,#25,#0a,#24,#0a
	db #25,#0a,#21,#0a,#23,#0a,#ff,#87
	db #20,#3c,#89,#20,#14,#87,#1e,#3c
	db #89,#1e,#14,#88,#1e,#50,#89,#1e
	db #50,#ff,#87,#21,#3c,#89,#21,#14
	db #87,#1e,#3c,#89,#1e,#14,#88,#1e
	db #50,#89,#1e,#50,#ff,#87,#25,#46
	db #85,#28,#0a,#26,#0a,#25,#0a,#25
	db #0a,#7f,#32,#87,#25,#46,#85,#28
	db #0a,#26,#0a,#25,#0a,#87,#2a,#3c
	db #ff,#8c,#13,#78,#8d,#13,#14,#ff
	db #8b,#12,#a0,#ff,#8c,#12,#a0,#ff
	db #84,#93,#12,#82,#90,#7f,#1e,#ff
	db #87,#93,#12,#82,#90,#7f,#1e,#ff
	db #88,#93,#12,#82,#90,#7f,#1e,#ff
	db #8c,#1b,#15,#1b,#07,#20,#15,#20
	db #07,#ff,#8c,#1b,#15,#1b,#23,#ff
	db #8c,#7f,#07,#27,#07,#23,#15,#23
	db #07,#27,#0e,#7f,#07,#27,#07,#23
	db #15,#23,#07,#27,#0e,#7f,#07,#27
	db #07,#23,#15,#23,#07,#27,#0e,#7f
	db #07,#27,#07,#23,#15,#23,#07,#25
	db #0e,#ff,#8c,#7f,#07,#25,#07,#22
	db #0e,#22,#0e,#27,#0e,#7f,#07,#27
	db #07,#22,#0e,#22,#0e,#27,#0e,#7f
	db #07,#27,#07,#22,#0e,#22,#0e,#27
	db #0e,#7f,#07,#27,#07,#22,#0e,#22
	db #0e,#25,#0e,#ff,#88,#7f,#07,#25
	db #07,#8d,#23,#07,#88,#1b,#07,#22
	db #07,#23,#07,#27,#0e,#7f,#07,#27
	db #07,#8d,#23,#07,#88,#1b,#07,#22
	db #07,#23,#07,#27,#0e,#7f,#07,#27
	db #07,#8d,#23,#07,#88,#1b,#07,#22
	db #07,#23,#07,#27,#0e,#7f,#07,#27
	db #07,#8d,#23,#07,#88,#1b,#07,#22
	db #07,#23,#07,#25,#0e,#ff,#88,#7f
	db #07,#25,#07,#8d,#22,#07,#88,#1b
	db #07,#22,#0e,#27,#0e,#7f,#07,#27
	db #07,#8d,#22,#07,#88,#1b,#07,#22
	db #0e,#27,#0e,#7f,#07,#27,#07,#8d
	db #22,#07,#88,#1b,#07,#22,#0e,#27
	db #0e,#7f,#07,#27,#07,#8d,#22,#07
	db #88,#1b,#07,#22,#0e,#25,#0e,#ff
	db #88,#1b,#0e,#23,#07,#1b,#07,#20
	db #07,#23,#07,#27,#07,#20,#07,#1b
	db #07,#27,#07,#23,#07,#1b,#07,#20
	db #07,#23,#07,#27,#07,#20,#07,#1b
	db #07,#27,#07,#23,#07,#1b,#07,#20
	db #07,#23,#07,#27,#07,#20,#07,#1b
	db #07,#27,#07,#23,#07,#1b,#07,#20
	db #07,#23,#07,#27,#07,#20,#07,#ff
	db #88,#1b,#07,#25,#07,#22,#07,#1b
	db #07,#22,#0e,#27,#0e,#1b,#07,#27
	db #07,#22,#07,#1b,#07,#22,#0e,#27
	db #0e,#1b,#07,#27,#07,#22,#07,#1b
	db #07,#22,#0e,#27,#0e,#1b,#07,#27
	db #07,#22,#07,#1b,#07,#22,#0e,#25
	db #0e,#ff,#88,#20,#1c,#1b,#1c,#19
	db #1c,#1b,#1c,#20,#1c,#1b,#1c,#19
	db #1c,#17,#1c,#0f,#70,#0f,#70,#ff
	db #87,#2c,#0e,#27,#0e,#25,#0e,#27
	db #07,#25,#15,#23,#2a,#2c,#0e,#27
	db #0e,#25,#0e,#27,#07,#25,#15,#23
	db #0e,#22,#0e,#20,#0e,#ff,#87,#22
	db #0e,#23,#0e,#22,#0e,#23,#07,#22
	db #15,#1b,#0e,#1c,#0e,#1b,#0e,#22
	db #0e,#23,#0e,#22,#0e,#23,#07,#22
	db #15,#1b,#0e,#28,#0e,#27,#0e,#ff
	db #88,#22,#0e,#23,#0e,#22,#0e,#23
	db #07,#22,#15,#20,#0e,#1e,#0e,#20
	db #0e,#ff,#88,#22,#0e,#23,#0e,#22
	db #0e,#23,#07,#22,#15,#20,#0e,#1f
	db #0e,#20,#0e,#22,#0e,#23,#0e,#22
	db #0e,#23,#07,#22,#15,#1b,#0e,#28
	db #0e,#27,#0e,#ff,#88,#12,#0e,#23
	db #07,#12,#07,#17,#07,#23,#07,#1e
	db #07,#17,#07,#12,#07,#1e,#07,#23
	db #07,#12,#07,#17,#07,#23,#07,#1e
	db #07,#17,#07,#ff,#88,#1c,#0e,#23
	db #07,#1c,#07,#17,#07,#23,#07,#28
	db #07,#17,#07,#1c,#07,#28,#07,#23
	db #07,#1c,#07,#17,#07,#23,#07,#28
	db #07,#17,#07,#ff,#88,#23,#2a,#22
	db #2a,#20,#1c,#23,#2a,#25,#2a,#27
	db #1c,#28,#38,#2a,#38,#28,#38,#27
	db #38,#ff,#88,#14,#0e,#23,#07,#1b
	db #07,#20,#07,#23,#07,#27,#07,#20
	db #07,#1b,#07,#27,#07,#23,#07,#1b
	db #07,#20,#07,#23,#07,#14,#07,#19
	db #07,#1b,#0e,#23,#07,#1b,#07,#20
	db #07,#23,#07,#27,#07,#20,#07,#1b
	db #07,#27,#07,#23,#07,#1b,#07,#20
	db #07,#23,#07,#1b,#07,#1c,#07,#ff
	db #88,#1e,#0e,#25,#07,#1c,#07,#1e
	db #07,#25,#07,#28,#07,#1e,#07,#1c
	db #07,#28,#07,#25,#07,#1c,#07,#1e
	db #07,#25,#07,#1c,#07,#1b,#07,#19
	db #0e,#25,#07,#1e,#07,#25,#0e,#27
	db #0e,#1b,#0e,#27,#07,#1b,#07,#22
	db #0e,#27,#0e,#ff,#88,#1e,#0e,#25
	db #07,#1c,#07,#1e,#07,#25,#07,#28
	db #07,#1e,#07,#1c,#07,#28,#07,#25
	db #07,#1c,#07,#1e,#07,#25,#07,#1e
	db #07,#20,#07,#22,#0e,#25,#07,#1e
	db #07,#25,#0e,#27,#0e,#23,#0e,#27
	db #07,#1b,#07,#22,#0e,#27,#0e,#ff
	db #7f,#07,#ff
.l4ddc
	db #00,#00,#16,#00,#20,#00,#2a,#00
	db #32,#00,#44,#00,#48,#00,#4b,#00
	db #4f,#00,#53,#00,#57,#00,#81,#00
	db #89,#00,#91,#00,#a6,#00,#c1,#00
	db #d9,#00,#f0,#00,#07,#01,#1e,#01
	db #35,#01,#57,#01,#6a,#01,#7d,#01
	db #99,#01,#a0,#01,#a4,#01,#a8,#01
	db #b0,#01,#b8,#01,#c0,#01,#ca,#01
	db #d0,#01,#fa,#01,#24,#02,#66,#02
	db #a0,#02,#e0,#02,#12,#03,#28,#03
	db #46,#03,#68,#03,#7a,#03,#9c,#03
	db #bc,#03,#dc,#03,#f2,#03,#30,#04
	db #64,#04,#98,#04
.l4e40
	db #12,#00,#57,#00,#91,#00,#2a,#00
	db #6a,#00,#a6,#00,#b5,#00,#fc,#00
	db #4b,#01,#88,#06,#0d,#83,#06,#fe
	db #07,#19,#fe,#05,#0b,#0b,#fe,#00
	db #0c,#0c,#fe,#05,#0b,#0b,#fe,#00
	db #0c,#0c,#fe,#0c,#14,#fe,#f4,#14
	db #fe,#00,#14,#fe,#f4,#14,#fe,#00
	db #15,#14,#fe,#f4,#14,#fe,#00,#16
	db #14,#fe,#f4,#14,#fe,#00,#17,#fe
	db #18,#09,#90,#06,#fe,#f4,#17,#fe
	db #0c,#09,#fe,#00,#90,#06,#ff,#19
	db #82,#1a,#18,#84,#06,#fe,#0c,#1b
	db #fe,#00,#10,#11,#12,#12,#10,#11
	db #12,#13,#fe,#0c,#1c,#0b,#1d,#0b
	db #fe,#05,#1d,#1d,#fe,#0c,#1c,#0b
	db #fe,#05,#0b,#0b,#fe,#0c,#1c,#1d
	db #fe,#07,#0b,#0b,#fe,#00,#1c,#1c
	db #fe,#07,#0c,#0c,#fe,#0c,#0b,#0b
	db #ff,#9e,#06,#82,#06,#02,#06,#05
	db #85,#06,#fe,#f4,#05,#fe,#00,#06
	db #01,#87,#06,#88,#00,#0a,#84,#00
	db #0a,#83,#00,#0a,#85,#00,#0a,#0a
	db #82,#00,#0a,#0a,#ff,#84,#1e,#84
	db #1f,#84,#1e,#84,#1f,#26,#26,#27
	db #28,#27,#28,#84,#29,#2a,#c7,#0c
	db #fe,#0c,#27,#28,#27,#28,#c7,#07
	db #fe,#00,#2d,#2d,#84,#1e,#84,#1f
	db #84,#1e,#84,#1f,#84,#1e,#84,#1f
	db #84,#1e,#84,#1f,#26,#26,#27,#28
	db #27,#28,#84,#29,#2a,#c7,#0c,#fe
	db #0c,#27,#28,#27,#28,#c7,#07,#fe
	db #00,#2d,#2d,#ff,#20,#21,#22,#23
	db #24,#25,#22,#23,#24,#25,#24,#25
	db #2b,#2b,#2c,#2c,#25,#c8,#0c,#fe
	db #0c,#24,#25,#24,#25,#c8,#08,#fe
	db #00,#2e,#2f,#2e,#30,#c8,#0c,#20
	db #21,#fe,#0c,#24,#25,#24,#25,#fe
	db #00,#c8,#08,#22,#23,#24,#25,#22
	db #23,#24,#25,#24,#25,#2b,#2b,#2c
	db #2c,#25,#c8,#0c,#fe,#0c,#24,#25
	db #24,#25,#c8,#08,#fe,#00,#2e,#2f
	db #2e,#30,#ff,#fe,#00,#85,#31,#20
	db #21,#fe,#f4,#22,#23,#fe,#00,#24
	db #25,#fe,#f4,#22,#23,#24,#25,#24
	db #25,#2b,#2b,#2c,#2c,#25,#c8,#0c
	db #fe,#0c,#24,#25,#fe,#00,#24,#25
	db #c8,#08,#fe,#f4,#2e,#2f,#2e,#9b
	db #31,#fe,#00,#c8,#0c,#85,#31,#20
	db #21,#fe,#0c,#24,#25,#fe,#f4,#24
	db #25,#c8,#08,#22,#23,#fe,#00,#24
	db #25,#22,#23,#fe,#f4,#24,#25,#24
	db #25,#2b,#2b,#2c,#2c,#25,#c8,#0c
	db #fe,#0c,#24,#25,#fe,#00,#24,#25
	db #c8,#08,#fe,#f4,#2e,#2f,#2e,#9b
	db #31,#ff,#8a,#01,#19,#00,#00,#00
	db #00,#00,#8a,#21,#21,#00,#00,#00
	db #00,#00,#8a,#01,#39,#00,#00,#00
	db #00,#00
.l500a
	db #7f,#80,#40,#f8,#7f,#29,#00,#64
	db #00,#00,#00,#01,#7f,#80,#40,#f8
	db #7f,#29,#00,#64,#00,#00,#00,#03
	db #2b,#fe,#00,#ff,#7f,#01,#00,#3f
	db #06,#ff,#f7,#02,#7f,#d8,#14,#ff
	db #7f,#ff,#00,#00,#00,#00,#00,#01
	db #03,#ff,#73,#ff,#73,#14,#00,#00
	db #03,#00,#03,#01,#32,#ff,#32,#ff
	db #73,#0a,#00,#00,#85,#00,#01,#01
	db #32,#ff,#32,#ff,#73,#0a,#00,#00
	db #83,#00,#05,#01,#32,#ff,#73,#ff
	db #73,#0a,#00,#00,#06,#00,#01,#01
	db #32,#ff,#73,#ff,#73,#14,#00,#00
	db #04,#00,#03,#01,#7f,#ff,#32,#ff
	db #73,#6a,#00,#01,#00,#00,#00,#01
	db #7f,#ff,#32,#ff,#73,#6a,#ff,#ff
	db #00,#00,#00,#01,#03,#ff,#64,#ff
	db #64,#14,#00,#00,#03,#00,#03,#01
	db #32,#ff,#64,#ff,#64,#14,#00,#00
	db #03,#00,#03,#01,#7f,#ff,#64,#ff
	db #64,#6a,#00,#01,#00,#00,#00,#01
	db #7f,#ff,#00,#ff,#7f,#ff,#00,#00
	db #00,#00,#00,#01,#7f,#ff,#00,#ff
	db #7f,#ff,#00,#00,#00,#00,#00,#01
	db #7f,#ff,#00,#ff,#7f,#ff,#00,#00
	db #00,#00,#00,#01,#7f,#ff,#00,#ff
	db #7f,#ff,#00,#00,#00,#00,#00,#01
	db #7f,#ff,#00,#ff,#7f,#ff,#00,#00
	db #00,#00,#00,#01,#7f,#ff,#00,#ff
	db #7f,#ff,#00,#00,#00,#00,#00,#01
	db #4a,#fe,#00,#ff,#7f,#03,#00,#05
	db #24,#ff,#a6,#01,#46,#80,#6b,#f0
	db #7f,#02,#00,#61,#fa,#00,#52,#02
	db #0f,#ff,#00,#ff,#7f,#35,#00,#05
	db #01,#ff,#e2,#02,#7f,#fe,#35,#e7
	db #7f,#03,#ff,#fd,#14,#00,#16,#03
	db #7f,#ff,#00,#ff,#7f,#01,#ff,#47
	db #84,#ff,#c3,#01,#7f,#fe,#00,#ff
	db #7f,#09,#ff,#cb,#80,#ff,#fe,#01
	db #7f,#fd,#00,#ff,#7f,#02,#00,#9e
	db #00,#00,#00,#03,#7f,#ff,#77,#fd
	db #5c,#69,#05,#4e,#80,#00,#00,#01
	db #7f,#ff,#00,#ff,#7f,#02,#ff,#f8
	db #04,#ff,#7d,#01,#0f,#fe,#01,#8b
	db #7f,#0e,#00,#05,#02,#00,#00,#02
	db #04,#ff,#71,#ff,#6d,#0c,#00,#06
	db #16,#00,#09,#03,#06,#ff,#00,#ff
	db #74,#23,#00,#6f,#0d,#00,#01,#02
	db #7f,#ff,#00,#ff,#7f,#ff,#00,#00
	db #00,#00,#00,#03
.l5196
	db #5d,#07,#b8,#02,#e1,#00,#b8,#00
	db #79,#01,#79,#01,#79,#01,#79,#01
	db #79,#01,#79,#01,#79,#01,#79,#01
	db #79,#01,#79,#01,#18,#01,#18,#01
	db #18,#01,#18,#01,#18,#01,#18,#01
	db #57,#04,#b8,#02,#18,#01,#fc,#06
	db #18,#01,#b9,#01,#c7,#06,#d4,#0e
	db #56,#01,#b8,#01,#4a,#01,#18,#01
	db #d5,#05
.l51d8
	db #06,#00,#06,#00,#06,#00,#06,#00
	db #78,#00,#32,#00,#32,#00,#78,#00
	db #78,#00,#32,#00,#32,#00,#78,#00
	db #78,#00,#32,#00,#32,#00,#32,#00
	db #32,#00,#32,#00,#32,#00,#32,#00
	db #04,#00,#06,#00,#32,#00,#06,#00
	db #32,#00,#32,#00,#32,#00,#5a,#00
	db #32,#00,#32,#00,#32,#00,#32,#00
.l5218
	db #ff,#ff,#14,#ff,#ff,#15,#ff,#ff
	db #16,#ff,#ff,#17,#ff,#ff,#18,#ff
	db #ff,#19,#ff,#ff,#1a,#ff,#ff,#1b
	db #ff,#ff,#1c,#ff,#ff,#1d,#ff,#ff
	db #1e,#ff,#ff,#1f,#ff,#ff,#20,#00
;
; &1000
;
; di
; ld hl,&c9fb
; ld (&0038),hl
; call &4000
; ei
; loop
;
; ld b,#f5
; .l07b8
; in a,(c)
; rra
; jr nc,l07b8
;
; di
; call &4003
; ei
; jr loop
;
; l08dc
; db #40,#ff
;
; test player
;
; ld bc,#7fc7
; out (c),c
; ld hl,l08dc
; ld a,(#4006)
; dec a
; jr nz,l095d
;
; bit 7,(hl)
; jr nz,l095d
; ld a,(hl)
; and #3f
; jr nz,l095b
; set 7,(hl)
; .l095b
; res 6,(hl)
; .l095d
; ld a,(hl)
; bit 6,a
; jr nz,l0970
; set 6,(hl)
; and a
; jp p,l096d
; call #400a
; jr l0970
; .l096d
; call #4000
; .l0970
; ld hl,#08dd
; ld a,(hl)
; ld (hl),#ff
; cp #ff
; call nz,#4007
; call #4003
; ld bc,#7fc0
; out (c),c
; ret
;
.music_info
	db "Shadow of the Beast (1990)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
