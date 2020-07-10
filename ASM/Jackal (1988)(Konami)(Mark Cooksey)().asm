; Music of Jackal (1988)(Konami)(Mark Cooksey)()
; Ripped by Megachur the 23/02/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JACKAL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #2e36

	read "music_header.asm"

.l2e3d equ $ + 7
.l2e3b equ $ + 5
.l2e3a equ $ + 4
.l2e39 equ $ + 3
.l2e38 equ $ + 2
.l2e37 equ $ + 1
.l2e36
	db #02,#7c,#00,#00,#04,#c7,#37,#09
.l2e45 equ $ + 7
.l2e43 equ $ + 5
.l2e3f equ $ + 1
	db #37,#ff,#36,#02,#01,#0f,#36,#ed
	db #35,#00,#00,#02,#01,#00,#00,#00
	db #01,#02,#01,#0c,#00,#00,#01,#00
.l2e59 equ $ + 3
.l2e57 equ $ + 1
.l2e56
	db #00,#7e,#01,#01,#00,#00,#00,#00
.l2e65 equ $ + 7
.l2e64 equ $ + 6
.l2e63 equ $ + 5
.l2e62 equ $ + 4
.l2e61 equ $ + 3
.l2e60 equ $ + 2
.l2e5f equ $ + 1
	db #00,#01,#00,#7e,#02,#9d,#00,#00
.l2e6b equ $ + 5
.l2e69 equ $ + 3
.l2e67 equ $ + 1
.l2e66
	db #04,#31,#39,#1b,#37,#11,#37,#02
.l2e71 equ $ + 3
.l2e6f equ $ + 1
	db #01,#38,#36,#16,#36,#00,#00,#02
	db #01,#00,#00,#00,#01,#02,#01,#0c
.l2e85 equ $ + 7
.l2e83 equ $ + 5
.l2e82 equ $ + 4
	db #00,#00,#02,#00,#00,#a0,#01,#01
.l2e8d equ $ + 7
.l2e8c equ $ + 6
.l2e8b equ $ + 5
	db #00,#00,#00,#00,#00,#01,#00,#a0
.l2e95 equ $ + 7
.l2e93 equ $ + 5
.l2e92 equ $ + 4
.l2e91 equ $ + 3
.l2e90 equ $ + 2
.l2e8f equ $ + 1
.l2e8e
	db #0e,#80,#02,#00,#04,#7a,#3b,#2d
.l2e9d equ $ + 7
.l2e9b equ $ + 5
.l2e97 equ $ + 1
	db #37,#23,#37,#01,#01,#79,#36,#76
	db #36,#00,#00
	db #02,#01,#00,#00,#00,#00,#02,#01
.l2eaf equ $ + 6
.l2eae equ $ + 5
	db #00,#00,#00,#00,#00,#02,#80,#01
.l2eb8 equ $ + 7
.l2eb7 equ $ + 6
.l2eb1
	db #01,#00,#00,#00,#00,#00,#01,#02
.l2ec0 equ $ + 7
.l2ebf equ $ + 6
.l2ebe equ $ + 5
.l2ebd equ $ + 4
.l2ebb equ $ + 2
.l2eba equ $ + 1
.l2eb9
	db #80,#00,#38,#00,#01,#01,#01,#00
.l2ec3 equ $ + 2
.l2ec2 equ $ + 1
.l2ec1
	db #00,#04,#00
;
.play_music_interrupt
;
	push af
	ld a,(l2ebd)
	dec a
	ld (l2ebd),a
	cp #00
	jr z,l2ed2
	pop af
	ret
;
.play_music
.l2ed2
;
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,#01
	ld (l2ebd),a
	call l2f5d
	call l30b6
	call l3137
	call l346f
	ld a,(l2e39)
	cp #00
	jp z,l2f06
	ld a,(l2e5f)
	dec a
	ld (l2e5f),a
	cp #00
	jr nz,l2f06
	ld a,(l2e59)
	ld (l2e5f),a
	call l32ed
.l2f06
	call l30c2
	call l3137
	call l346f
	ld a,(l2e65)
	cp #00
	jp z,l2f2c
	ld a,(l2e8b)
	dec a
	ld (l2e8b),a
	cp #00
	jp nz,l2f2c
	ld a,(l2e85)
	ld (l2e8b),a
	call l32ed
.l2f2c
	call l30ce
	call l3137
	call l346f
	ld a,(l2e91)
	cp #00
	jp z,l2f51
	ld a,(l2eb7)
	dec a
	ld (l2eb7),a
	cp #00
	jr nz,l2f51
	ld a,(l2eb1)
	ld (l2eb7),a
	call l32ed
.l2f51
	call l356c
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	nop		;pop af modified by Megachur
	ret
.l2f5d
	ld a,(l2ebe)
	dec a
	ld (l2ebe),a
	ret nz
	ld a,(l2ebf)
	ld (l2ebe),a
.l2f6b
	ld a,(l2ec1)
	and #01
	jp z,l2fd6
	call l30b6
	ld a,(l2e39)
	cp #00
	jp nz,l3244
	ld a,(l2e3a)
	dec a
	ld (l2e3a),a
	cp #00
	jr z,l2f8c
	jp l2fd6
.l2f8c
	ld hl,(l2e3b)
	ld a,(hl)
	cp #00
	jp z,l30ef
	cp #c8
	jp c,l2fa2
	cp #f0
	jp c,l316b
	jp l3244
.l2fa2
	ld (l2e3a),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l2e3b),hl
	cp #00
	jp nz,l2fb2
	jr l2fd6
.l2fb2
	call l33e8
	ld a,(l33e6)
	ld (l2e38),a
	ld (l2e60),a
	ld (l2e56),a
	ld a,(l33e7)
	ld (l2e37),a
	ld (l2e57),a
	ld (l2e61),a
	ld hl,(l2e45)
	ld (l2e43),hl
	call l30da
.l2fd6
	ld a,(l2ec1)
	and #02
	jp z,l3041
	call l30c2
	ld a,(l2e65)
	cp #00
	jp nz,l324d
	ld a,(l2e66)
	dec a
	ld (l2e66),a
	cp #00
	jr z,l2ff7
	jp l3041
.l2ff7
	ld hl,(l2e67)
	ld a,(hl)
	cp #00
	jp z,l30f5
	cp #c8
	jp c,l300d
	cp #f0
	jp c,l3171
	jp l324d
.l300d
	ld (l2e66),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l2e67),hl
	cp #00
	jp nz,l301d
	jr l3041
.l301d
	call l33e8
	ld a,(l33e6)
	ld (l2e64),a
	ld (l2e8c),a
	ld (l2e82),a
	ld a,(l33e7)
	ld (l2e63),a
	ld (l2e8d),a
	ld (l2e83),a
	ld hl,(l2e71)
	ld (l2e6f),hl
	call l30da
.l3041
	ld a,(l2ec1)
	and #04
	jp z,l30b2
	call l30ce
	ld a,(l2e91)
	cp #00
	jp z,l3057
	jp l3256
.l3057
	ld a,(l2e92)
	dec a
	ld (l2e92),a
	cp #00
	jr z,l3065
	jp l30b2
.l3065
	ld hl,(l2e93)
	ld a,(hl)
	cp #00
	jp z,l30fb
	cp #c8
	jp c,l307e
	cp #f0
	jp c,l3177
	jp l3256
	jp l30b2
.l307e
	ld (l2e92),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l2e93),hl
	cp #00
	jp nz,l308e
	jr l30b2
.l308e
	call l33e8
	ld a,(l33e6)
	ld (l2e90),a
	ld (l2eb8),a
	ld (l2eae),a
	ld a,(l33e7)
	ld (l2e8f),a
	ld (l2eb9),a
	ld (l2eaf),a
	ld hl,(l2e9d)
	ld (l2e9b),hl
	call l30da
.l30b2
	call l356c
	ret
.l30b6
	push af
	ld ix,l2e36
	ld a,#01
	ld (l2ec2),a
	pop af
	ret
.l30c2
	push af
	ld ix,l2e62
	ld a,#02
	ld (l2ec2),a
	pop af
	ret
.l30ce
	push af
	ld ix,l2e8e
	ld a,#04
	ld (l2ec2),a
	pop af
	ret
.l30da
	ld a,#00
	ld (ix+#1f),a
	ld (ix+#17),a
	ld a,(ix+#15)
	ld (ix+#16),a
	ld a,(ix+#1b)
	ld (ix+#1c),a
	ret
.l30ef
	call l3101
	jp l2f6b
.l30f5
	call l3101
	jp l2fd6
.l30fb
	call l3101
	jp l3041
.l3101
	ld l,(ix+#07)
	ld h,(ix+#08)
	ld a,(hl)
	cp #00
	jr nz,l3114
	inc hl
	ld a,(hl)
	cp #00
	jr z,l3129
	dec hl
	ld a,(hl)
.l3114
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
.l3129
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#07),l
	ld (ix+#08),h
	jr l3101
.l3137
	ld a,(l2ec2)
	ld b,a
	ld a,(l2ec0)
	and b
	ret z
	ld a,(ix+#03)
	cp #00
	ret nz
	ld a,(ix+#0c)
	dec a
	ld (ix+#0c),a
	cp #00
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
.l316b
	call l317d
	jp l2f6b
.l3171
	call l317d
	jp l2fd6
.l3177
	call l317d
	jp l3041
.l317d
	ld a,(hl)
	cp #c8
	jp nz,l3183
.l3183
	cp #c9
	jp nz,l3193
	inc hl
	ld a,(hl)
	ld (l2ebf),a
	ld (l2ebe),a
	jp l3237
.l3193
	cp #ca
	jp nz,l31a5
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	ld (ix+#10),a
	jp l3237
.l31a5
	cp #cb
	jp nz,l31b2
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	ld (ix+#0c),a
.l31b2
	cp #dd
	jp nz,l31c1
	inc hl
	ld a,(hl)
	ld (ix+#23),a
	ld a,#01
	ld (ix+#29),a
.l31c1
	cp #d0
	jp nz,l31e3
	inc hl
	ld a,(hl)
	ld (ix+#14),a
	ld (ix+#13),a
	inc hl
	ld a,(hl)
	ld (ix+#15),a
	ld (ix+#16),a
	ld a,#00
	ld (ix+#17),a
	ld a,#01
	ld (ix+#12),a
	jp l3237
.l31e3
	cp #d5
	jp nz,l31f0
	ld a,#00
	ld (ix+#12),a
	jp l3237
.l31f0
	cp #d1
	jp nz,l321c
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
	ld a,#00
	ld (ix+#1f),a
	ld a,#01
	ld (ix+#18),a
	jp l3237
.l321c
	cp #d6
	jp nz,l3228
	ld a,#00
	ld (ix+#18),a
	jr l3237
.l3228
	cp #de
	jp nz,l3237
	ld a,#00
	ld (l2ec0),a
	ld (l2ec1),a
	jr l3237
.l3237
	inc hl
	ld (ix+#05),l
	ld (ix+#06),h
	ld a,#01
	ld (ix+#04),a
	ret
.l3244
	call l30b6
	call l325f
	jp l2fd6
.l324d
	call l30c2
	call l325f
	jp l3041
.l3256
	call l30ce
	call l325f
	jp l30b2
.l325f
	ld (l2ec3),a
	ld a,(l2ec0)
	ld b,a
	ld a,(l2ec2)
	and b
	ret z
	ld a,(ix+#03)
	cp #00
	jp nz,l32e0
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#05),l
	ld (ix+#06),h
	ld a,(l2ec3)
	ld (ix+#03),a
	sub #f0
	sla a
	ld hl,l3338
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
	ld a,(l2ebb)
	ld (ix+#27),a
	ld a,(ix+#00)
	ld (ix+#26),a
	ld a,(hl)
	cp #00
	jp z,l32c6
	ld a,(l2ec2)
	sla a
	sla a
	sla a
	ld b,a
	ld a,#ff
	xor b
	ld b,a
	ld a,(l2ebb)
	and b
	ld (l2ebb),a
	ld a,#01
	ld (ix+#28),a
	jp l32d9
.l32c6
	ld b,#ff
	ld a,(l2ec2)
	xor b
	ld b,a
	ld a,(l2ebb)
	and b
	ld (l2ebb),a
	ld a,#00
	ld (ix+#28),a
.l32d9
	inc hl
	ld (ix+#24),l
	ld (ix+#25),h
.l32e0
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	cp #00
	jp z,l331b
	ret
.l32ed
	ld l,(ix+#24)
	ld h,(ix+#25)
	ld a,(hl)
	cp #ff
	jr z,l3314
	ld (ix+#00),a
	inc hl
	ld a,(ix+#28)
	cp #00
	jp z,l330a
	ld a,(hl)
	ld (l2eba),a
	jr l3313
.l330a
	ld a,(hl)
	ld (ix+#02),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
.l3313
	inc hl
.l3314
	ld (ix+#24),l
	ld (ix+#25),h
	ret
.l331b
	ld a,(ix+#27)
	ld (l2ebb),a
	ld a,(ix+#26)
	ld (ix+#00),a
	ld a,#01
	ld (ix+#04),a
	ld a,#00
	ld (ix+#03),a
	ld (ix+#01),a
	ld (ix+#02),a
	ret
.l3338
	dw l334c,l3363,l337a,l3391
	dw l33c2,l334c,l3363,l337a
	dw l3391,l33a8
.l334c
	db #00,#0c,#00,#50,#0a,#00,#54,#06
	db #00,#58,#04,#00,#5c,#03,#00,#60
.l3363 equ $ + 7
	db #02,#00,#64,#01,#00,#68,#ff,#00
	db #0c,#00,#64,#0a,#00,#68,#06,#00
	db #6c,#04,#00,#70,#03,#00,#74,#02
.l337a equ $ + 6
	db #00,#78,#01,#00,#7c,#ff,#00,#0c
	db #00,#78,#0a,#00,#7c,#06,#00,#80
	db #04,#00,#84,#03,#00,#88,#02,#00
.l3391 equ $ + 5
	db #8c,#01,#00,#90,#ff,#00,#0c,#00
	db #a0,#0a,#00,#a8,#06,#00,#b0,#04
	db #00,#b8,#03,#00,#c0,#02,#00,#c8
.l33a8 equ $ + 4
	db #01,#00,#d0,#ff,#01,#0f,#05,#0c
	db #05,#0a,#05,#08,#05,#07,#05,#06
	db #05,#05,#05,#04,#05,#03,#05,#02
.l33c2 equ $ + 6
	db #05,#01,#05,#00,#00,#ff,#01,#0d
	db #1e,#0c,#05,#0b,#1e,#0a,#05,#0a
	db #1e,#0a,#05,#09,#1e,#08,#05,#07
	db #1e,#06,#05,#05,#1e,#04,#05,#03
	db #1e,#02,#05,#01,#1e,#01,#05,#00
	db #00,#ff
.l33e6
	ld (bc),a
.l33e7
	add b
.l33e8
	ld d,a
	and #0f
	sla a
	ld b,#00
	ld c,a
	push ix
	ld ix,l343e
	add ix,bc
	ld a,(ix+#00)
	ld (l33e6),a
	ld a,(ix+#01)
	ld (l33e7),a
	ld a,d
	and #70
	srl a
	srl a
	srl a
	srl a
	cp #05
	jr z,l343b
	jr c,l342b
	or a
	ld hl,l33e6
	srl (hl)
	inc hl
	rr (hl)
	cp #06
	jr z,l343b
	or a
	dec hl
	srl (hl)
	inc hl
	rr (hl)
	jr l343b
.l342b
	ld b,a
	ld a,#05
	sub b
	ld b,a
.l3430
	ld hl,l33e7
	sla (hl)
	dec hl
	rl (hl)
	inc hl
	djnz l3430
.l343b
	pop ix
	ret
.l343e
	db #00,#00,#00,#77,#00,#71,#00,#6a
	db #00,#64,#00,#5f,#00,#59,#00,#54
	db #00,#50,#00,#4b,#00,#47,#00,#43
	db #00,#3f,#04,#03,#02,#01,#00
	ld a,(l2ec0)
	ld b,a
	ld a,(l2ec2)
	and b
	ret z
	ld a,#00
	ld (ix+#01),a
	ld (ix+#02),a
	ret
.l346f
	ld a,(l2ec0)
	ld b,a
	ld a,(l2ec2)
	and b
	ret z
	ld a,(ix+#03)
	cp #00
	ret nz
	ld a,(ix+#12)
	cp #00
	jp z,l34d4
	ld a,(ix+#16)
	cp #00
	jp z,l3495
	dec a
	ld (ix+#16),a
	jp l34d4
.l3495
	ld a,(ix+#14)
	dec a
	ld (ix+#14),a
	cp #00
	jp nz,l34d4
	call l34a7
	jp l34d4
.l34a7
	ld a,(ix+#13)
	ld (ix+#14),a
	ld a,(ix+#17)
	cp #00
	jr nz,l34c2
	srl (ix+#02)
	rr (ix+#01)
	ld a,#01
	ld (ix+#17),a
	ret
.l34c2
	ld a,(ix+#2a)
	ld (ix+#02),a
	ld a,(ix+#2b)
	ld (ix+#01),a
	ld a,#00
	ld (ix+#17),a
	ret
.l34d4
	ld a,(ix+#18)
	cp #00
	jp z,l356b
	ld a,(ix+#1c)
	cp #00
	jp z,l34eb
	dec a
	ld (ix+#1c),a
	jp l356b
.l34eb
	ld a,(ix+#1a)
	dec a
	ld (ix+#1a),a
	cp #00
	jp nz,l356b
	call l34fd
	jp l356b
.l34fd
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1f)
	cp #00
	jp nz,l3514
	call l355e
	ld a,#01
	ld (ix+#1f),a
	ret
.l3514
	cp #01
	jp nz,l3532
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
.l3532
	cp #02
	jp nz,l3540
	call l355e
	ld a,#03
	ld (ix+#1f),a
	ret
.l3540
	cp #03
	jr z,l3545
	ret
.l3545
	scf
	ld a,(ix+#21)
	sbc (ix+#1e)
	ld (ix+#01),a
	ld a,(ix+#20)
	sbc (ix+#1d)
	ld (ix+#02),a
	ld a,#00
	ld (ix+#1f),a
	ret
.l355e
	ld a,(ix+#21)
	ld (ix+#01),a
	ld a,(ix+#20)
	ld (ix+#02),a
	ret
.l356b
	ret
.l356c
	ld a,(l2ec0)
	and #01
	jp z,l3581
	ld d,#00
	ld e,#08
	jp z,l3581
	ld hl,l2e36
	call l35b6
.l3581
	ld a,(l2ec0)
	and #02
	jp z,l3593
	ld d,#02
	ld e,#09
	ld hl,l2e62
	call l35b6
.l3593
	ld a,(l2ec0)
	and #04
	jp z,l35a5
	ld d,#04
	ld e,#0a
	ld hl,l2e8e
	call l35b6
.l35a5
	ld a,(l2ebb)
	ld c,#07
	call l35cb
	ld a,(l2eba)
	ld c,#06
	call l35cb
	ret
.l35b6
	ld a,(hl)
	inc hl
	ld c,e
	inc e
	call l35cb
	ld a,(hl)
	inc hl
	ld c,d
	inc d
	call l35cb
	ld a,(hl)
	ld c,d
	inc d
	call l35cb
	ret
.l35cb
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
	db #0f,#0e,#0d,#0c,#0c,#0c,#0c,#0b
	db #0b,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#08,#08,#07,#07,#06,#06,#05
	db #05,#05,#04,#04,#04,#04,#03,#03
	db #03,#02,#02,#01,#01,#01,#00,#00
	db #ff,#0e,#0d,#0c,#0b,#0b,#0b,#0b
	db #0a,#0a,#09,#09,#09,#09,#08,#08
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#04,#03,#03,#03,#03,#02
	db #02,#02,#02,#02,#01,#01,#01,#00
	db #00,#ff,#0d,#0d,#0d,#0e,#0e,#0f
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0a,#0a
	db #0a,#0a,#09,#09,#09,#09,#08,#08
	db #08,#08,#07,#07,#07,#07,#06,#06
	db #06,#05,#05,#05,#04,#04,#04,#03
	db #03,#02,#02,#01,#01,#01,#01,#00
	db #ff,#0f,#0f,#0e,#0e,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0a,#09,#08,#08
	db #08,#07,#07,#07,#06,#06,#06,#05
	db #05,#05,#04,#04,#04,#03,#03,#03
	db #02,#02,#02,#01,#01,#01,#00,#ff
;
.init_music
;
	ld hl,l3735
	ld (l2e3b),hl
	ld hl,l3701
	ld (l2e3d),hl
	ld hl,l36ff
	ld (l2e3f),hl
	ld hl,l389d
	ld (l2e67),hl
	ld hl,l3713
	ld (l2e69),hl
	ld hl,l3711
	ld (l2e6b),hl
	ld hl,l3a85
	ld (l2e93),hl
	ld hl,l3725
	ld (l2e95),hl
	ld hl,l3723
	ld (l2e97),hl
	ld a,#07
	ld (l2ec0),a
	ld (l2ec1),a
	ld a,#38
	ld (l2ebb),a
	ld a,#01
	ld (l2e3a),a
	ld (l2e66),a
	ld (l2e92),a
	ld a,#02
	ld (l2ebe),a
	ld (l2ebf),a
	ld a,#00
	ld (l2e39),a
	ld (l2e65),a
	ld (l2e91),a
	ret
.l3701 equ $ + 2
.l36ff
	dw l3735,l3746,l3784,l3788
	dw l3793,l3793,l3793,l3793
.l3713 equ $ + 4
.l3711 equ $ + 2
	dw #0000,l389d,l38ad,l38eb
	dw l38ef,l38fb,l38fb,l38fb
.l3725 equ $ + 6
.l3723 equ $ + 4
	dw l38fb,#0000,l3a85,l3a90
	dw l3ace,l3ae0,l3b22,l3b22
	dw l3b22,l3b22,#0000
.l3735
	ret
	db #01,#d1,#02,#0c,#00,#01,#d5,#cb
	db #03,#ca,#ed,#35,#dd,#01,#00,#00
.l3746
	db #0c,#53,#06,#53,#24,#53,#06,#43
	db #06,#4a,#06,#53,#0c,#53,#06,#53
	db #12,#51,#24,#4c,#12,#48,#0c,#4a
	db #06,#43,#24,#43,#0c,#56,#06,#56
	db #06,#56,#06,#56,#06,#56,#0c,#5b
	db #06,#5b,#06,#5b,#06,#5b,#06,#5b
	db #0c,#64,#06,#64,#06,#58,#06,#5b
.l3784 equ $ + 6
	db #06,#64,#36,#62,#00,#00,#48,#00
.l3788 equ $ + 2
	db #00,#00,#cb,#02,#48,#00,#48,#00
.l3793 equ $ + 5
	db #48,#00,#48,#00,#00,#0c,#48,#06
	db #48,#1e,#48,#06,#48,#06,#4b,#06
	db #4a,#06,#48,#0c,#46,#06,#4a,#24
	db #48,#0c,#36,#06,#3a,#12,#38,#12
	db #38,#06,#46,#06,#4b,#06,#56,#06
	db #51,#06,#56,#06,#5b,#36,#58,#06
	db #51,#06,#51,#06,#51,#24,#4c,#24
	db #00,#12,#00,#12,#51,#18,#4c,#06
	db #4a,#06,#48,#12,#4a,#12,#4a,#12
	db #4c,#12,#4c,#12,#00,#12,#51,#18
	db #4c,#06,#4a,#06,#48,#12,#4a,#12
	db #4c,#12,#51,#12,#53,#12,#53,#12
	db #4b,#36,#46,#06,#46,#06,#46,#06
	db #46,#06,#4b,#06,#4b,#06,#4b,#06
	db #53,#06,#53,#06,#53,#12,#55,#12
	db #51,#36,#48,#06,#48,#06,#48,#06
	db #48,#06,#51,#06,#51,#06,#51,#06
	db #55,#06,#56,#06,#58,#48,#5a,#48
	db #00,#0c,#56,#12,#58,#06,#00,#0c
	db #46,#06,#48,#12,#00,#12,#00,#0c
	db #58,#06,#58,#06,#58,#06,#53,#06
	db #4c,#06,#48,#06,#43,#06,#48,#48
	db #4a,#24,#51,#24,#53,#0c,#56,#12
	db #58,#06,#00,#0c,#46,#06,#48,#12
	db #00,#12,#00,#0c,#58,#06,#58,#06
	db #58,#06,#53,#06,#4c,#06,#48,#06
	db #43,#06,#48,#24,#4a,#24,#00,#0c
	db #59,#06,#59,#06,#58,#06,#56,#06
	db #54,#0c,#57,#06,#57,#06,#56,#06
	db #54,#06,#52,#48,#54,#48,#00,#48
	db #00,#f5,#09,#f6,#09,#f7,#09,#f8
	db #09,#f5,#09,#f6,#09,#f7,#09,#f8
	db #09,#48,#00,#48,#00,#36,#00,#f5
.l389d equ $ + 7
	db #09,#f6,#09,#48,#00,#00,#00,#d5
	db #d6,#cb,#03,#dd,#01,#d1,#02,#0c
.l38ad equ $ + 7
	db #00,#02,#ca,#16,#36,#00,#00,#0c
	db #47,#06,#47,#24,#47,#06,#3a,#06
	db #47,#06,#47,#0c,#47,#06,#47,#12
	db #4a,#24,#43,#12,#3c,#0c,#47,#06
	db #37,#24,#37,#0c,#4a,#06,#4a,#06
	db #4a,#06,#4a,#06,#4a,#0c,#53,#06
	db #53,#06,#53,#06,#53,#06,#53,#0c
	db #58,#06,#58,#06,#54,#06,#58,#06
.l38eb equ $ + 5
	db #5b,#36,#55,#00,#00,#48,#00,#00
.l38ef equ $ + 1
	db #00,#cb,#02,#48,#00,#48,#00,#48
.l38fb equ $ + 5
	db #00,#48,#00,#00,#00,#0c,#45,#06
	db #45,#1e,#45,#06,#45,#06,#48,#06
	db #46,#06,#45,#0c,#41,#06,#46,#24
	db #45,#0c,#31,#06,#36,#12,#35,#12
	db #35,#06,#43,#06,#46,#06,#4b,#06
	db #4a,#06,#51,#06,#56,#24,#4c,#12
	db #53,#06,#4a,#06,#4a,#06,#4a,#24
	db #48,#24,#00,#12,#00,#12,#4a,#18
	db #48,#06,#45,#06,#45,#12,#46,#12
	db #46,#12,#48,#12,#48,#12,#00,#12
	db #4a,#18,#48,#06,#45,#06,#45,#12
	db #46,#12,#48,#12,#4a,#12,#46,#12
	db #4b,#0c,#46,#06,#43,#06,#46,#06
	db #43,#06,#46,#06,#4b,#06,#46,#06
	db #4b,#24,#53,#24,#00,#12,#51,#0c
	db #48,#06,#45,#06,#48,#06,#45,#06
	db #48,#06,#51,#06,#48,#06,#51,#12
	db #55,#06,#45,#06,#45,#06,#45,#06
	db #48,#06,#48,#06,#48,#06,#51,#06
	db #53,#06,#55,#48,#47,#48,#00,#0c
	db #4a,#12,#4c,#06,#00,#0c,#3a,#06
	db #3c,#12,#00,#12,#00,#0c,#53,#06
	db #53,#06,#53,#06,#4c,#06,#48,#06
	db #43,#06,#3c,#06,#43,#12,#46,#0c
	db #41,#06,#41,#06,#46,#06,#41,#06
	db #46,#06,#4a,#06,#46,#06,#4a,#24
	db #51,#24,#00,#0c,#4a,#12,#4c,#06
	db #00,#0c,#3a,#06,#3c,#12,#00,#12
	db #00,#0c,#53,#06,#53,#06,#53,#06
	db #4c,#06,#48,#06,#43,#06,#46,#06
	db #43,#12,#00,#0c,#41,#06,#41,#06
	db #46,#06,#41,#06,#46,#06,#4a,#06
	db #46,#06,#4a,#0c,#51,#06,#51,#12
	db #48,#0c,#4b,#06,#4b,#06,#52,#06
	db #49,#06,#46,#48,#48,#f5,#09,#f6
	db #09,#f7,#09,#f8,#09,#f5,#09,#f6
	db #09,#f7,#09,#f8,#09,#f7,#0c,#3c
	db #00,#f9,#06,#f9,#06,#f9,#06,#f9
	db #0c,#f9,#06,#f9,#06,#f9,#06,#f9
	db #06,#f9,#0c,#f9,#06,#f9,#06,#f9
	db #06,#f9,#06,#f9,#0c,#f9,#06,#f9
	db #06,#f9,#06,#f9,#06,#f9,#0c,#f9
	db #06,#f9,#06,#f9,#06,#f9,#06,#f9
	db #0c,#f9,#06,#f9,#06,#f9,#06,#f9
	db #06,#f9,#0c,#f9,#06,#f9,#06,#f9
	db #06,#f9,#06,#f9,#0c,#f9,#06,#f9
	db #06,#f9,#06,#f9,#06,#f9,#0c,#f9
	db #06,#f9,#06,#f9,#06,#f9,#06,#f9
	db #0c,#f9,#06,#f9,#06,#f9,#06,#f9
.l3a85 equ $ + 7
	db #06,#f9,#0c,#f9,#06,#00,#00,#d5
	db #d6,#cb,#03,#dd,#01,#ca,#76,#36
.l3a90 equ $ + 2
	db #00,#00,#0c,#23,#06,#23,#24,#23
	db #06,#23,#06,#23,#06,#23,#0c,#23
	db #06,#23,#12,#26,#24,#28,#12,#28
	db #0c,#23,#06,#23,#24,#23,#0c,#26
	db #06,#26,#06,#26,#06,#26,#06,#26
	db #0c,#2b,#06,#2b,#06,#2b,#06,#2b
	db #06,#2b,#0c,#24,#06,#24,#06,#24
	db #06,#24,#06,#24,#36,#1a,#00,#00
.l3ace
	db #cb,#01,#06,#2a,#06,#2a,#06,#2a
	db #0c,#2a,#06,#2a,#12,#28,#12,#28
.l3ae0 equ $ + 2
	db #00,#00,#0c,#28,#06,#28,#0c,#28
	db #06,#28,#0c,#28,#06,#28,#0c,#28
	db #06,#28,#0c,#28,#06,#28,#0c,#28
	db #06,#28,#0c,#28,#06,#28,#0c,#28
	db #06,#28,#0c,#28,#06,#28,#0c,#28
	db #06,#28,#0c,#28,#06,#28,#0c,#28
	db #06,#28,#0c,#28,#06,#28,#0c,#28
	db #06,#28,#0c,#28,#06,#28,#0c,#28
.l3b22 equ $ + 4
	db #06,#28,#00,#00,#0c,#21,#06,#21
	db #0c,#21,#06,#21,#0c,#21,#06,#21
	db #0c,#21,#06,#21,#0c,#21,#06,#21
	db #0c,#21,#06,#21,#0c,#21,#06,#21
	db #0c,#21,#06,#21,#0c,#21,#06,#21
	db #0c,#21,#06,#21,#0c,#1b,#06,#1b
	db #0c,#26,#06,#26,#0c,#28,#06,#28
	db #06,#28,#06,#28,#06,#28,#06,#28
	db #06,#28,#06,#28,#0c,#28,#06,#28
	db #0c,#28,#06,#28,#06,#28,#06,#28
	db #06,#28,#0c,#28,#06,#28,#06,#28
	db #06,#28,#06,#28,#0c,#1a,#06,#1a
	db #0c,#1a,#06,#1a,#0c,#1a,#06,#1a
	db #0c,#1a,#06,#1a,#0c,#26,#06,#26
	db #06,#26,#06,#26,#06,#26,#0c,#28
	db #06,#28,#06,#28,#06,#28,#06,#28
	db #0c,#1a,#06,#1a,#06,#1a,#06,#1a
	db #06,#1a,#0c,#1a,#06,#1a,#06,#1a
	db #06,#1a,#06,#1a,#0c,#26,#06,#26
	db #0c,#28,#06,#28,#0c,#2a,#06,#2a
	db #0c,#26,#06,#26,#0c,#1b,#06,#1b
	db #06,#1b,#06,#1b,#06,#1b,#0c,#1b
	db #06,#1b,#06,#1b,#06,#1b,#06,#1b
	db #0c,#1b,#06,#1b,#0c,#1b,#06,#1b
	db #0c,#1b,#06,#1b,#0c,#1b,#06,#1b
	db #0c,#21,#06,#21,#0c,#21,#06,#21
	db #0c,#21,#06,#21,#0c,#21,#06,#21
	db #0c,#21,#06,#21,#06,#21,#06,#21
	db #06,#21,#0c,#21,#06,#21,#06,#21
	db #06,#21,#06,#21,#0c,#00,#06,#23
	db #0c,#23,#06,#23,#06,#23,#06,#23
	db #06,#23,#0c,#23,#06,#23,#06,#23
	db #06,#23,#06,#23,#0c,#23,#06,#23
	db #06,#23,#06,#23,#06,#23,#0c,#23
	db #06,#23,#0c,#28,#06,#28,#06,#28
	db #06,#28,#06,#28,#0c,#28,#06,#28
	db #06,#28,#06,#28,#06,#28,#0c,#28
	db #06,#28,#06,#28,#06,#28,#06,#28
	db #0c,#28,#06,#28,#06,#28,#06,#28
	db #06,#28,#0c,#26,#06,#26,#06,#26
	db #06,#26,#06,#26,#0c,#26,#06,#26
	db #06,#26,#06,#26,#06,#26,#0c,#26
	db #06,#26,#06,#26,#06,#26,#06,#26
	db #0c,#26,#06,#26,#06,#26,#06,#26
	db #06,#26,#0c,#28,#06,#28,#06,#28
	db #06,#28,#06,#28,#0c,#28,#06,#28
	db #06,#28,#06,#28,#06,#28,#0c,#28
	db #06,#28,#06,#28,#06,#28,#06,#28
	db #0c,#28,#06,#28,#06,#28,#06,#28
	db #06,#28,#0c,#26,#06,#26,#0c,#26
	db #06,#26,#0c,#26,#06,#26,#0c,#26
	db #06,#26,#0c,#29,#06,#29,#0c,#24
	db #06,#24,#0c,#27,#06,#27,#0c,#22
	db #06,#22,#0c,#24,#06,#24,#0c,#24
	db #06,#24,#0c,#24,#06,#24,#0c,#24
	db #06,#24,#0c,#27,#0c,#27,#0c,#27
	db #0c,#22,#0c,#22,#0c,#22,#0c,#24
	db #06,#24,#0c,#24,#06,#24,#0c,#24
	db #06,#24,#0c,#24,#06,#24,#0c,#27
	db #0c,#27,#0c,#27,#0c,#29,#0c,#29
	db #0c,#29,#0c,#2b,#06,#2b,#0c,#2b
	db #06,#2b,#0c,#2b,#06,#2b,#06,#29
	db #06,#29,#06,#29,#0c,#2b,#06,#2b
	db #0c,#2b,#06,#2b,#0c,#2b,#06,#2b
	db #06,#29,#06,#29,#06,#29,#0c,#2b
	db #06,#2b,#0c,#2b,#06,#2b,#0c,#2b
	db #06,#2b,#06,#29,#06,#29,#06,#29
	db #24,#2b,#24,#00,#00
;
.music_info
	db "Jackal (1988)(Konami)(Mark Cooksey)",0
	db "",0

	read "music_end.asm"
