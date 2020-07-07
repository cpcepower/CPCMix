; Music of Challenge of the Gobots (1987)(Ariolasoft)(We M .U .S .I .C.)()
; Ripped by Megachur the 06/04/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CHALEOTG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #2ae5

	read "music_header.asm"

.l2ae5
	db #1d,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
	bit 4,(ix+#09)
	ret nz
	ld a,(ix+#27)
	and #03
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l2ba5
	add hl,de
	ld e,(hl)
	inc hl
	ld h,(hl)
	ld l,e
	jp (hl)
.l2ba5
	dw l2bad,l2bd4,l2bfb,l2c09
.l2bad
	ld a,(ix+#1c)
	or a
	jr z,l2bb7
	dec (ix+#1c)
	ret
.l2bb7
	ld a,(ix+#0b)
	ld (ix+#1c),a
	ld a,(ix+#0a)
	add (ix+#37)
	ld (ix+#37),a
	cp (ix+#09)
	ret c
	ld a,(ix+#09)
	ld (ix+#37),a
	inc (ix+#27)
	ret
.l2bd4
	ld a,(ix+#1d)
	or a
	jr z,l2bde
	dec (ix+#1d)
	ret
.l2bde
	ld a,(ix+#0d)
	ld (ix+#1d),a
	ld a,(ix+#37)
	sub (ix+#0c)
	ld (ix+#37),a
	cp (ix+#0e)
	ret nc
	ld a,(ix+#0e)
	ld (ix+#37),a
	inc (ix+#27)
	ret
.l2bfb
	ld a,(ix+#1e)
	or a
	jr z,l2c05
	dec (ix+#1e)
	ret
.l2c05
	inc (ix+#27)
	ret
.l2c09
	ld a,(ix+#1f)
	or a
	jr z,l2c13
	dec (ix+#1f)
	ret
.l2c13
	ld a,(ix+#11)
	ld (ix+#1f),a
	ld a,(ix+#37)
	sub (ix+#10)
	ld (ix+#37),a
	ret p
	ld (ix+#37),#00
	ld a,(ix+#27)
	and #fc
	ld (ix+#27),a
	ret
	ld a,(ix+#20)
	or a
	jr z,l2c3a
	dec (ix+#20)
	ret
.l2c3a
	ld a,(ix+#15)
	ld (ix+#20),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld e,(ix+#14)
	ld d,#00
	bit 7,e
	jr z,l2c51
	ld d,#ff
.l2c51
	add hl,de
	ld a,h
	and #0f
	ld h,a
	ld (ix+#00),l
	ld (ix+#01),h
	ret
	ld a,(l2ae5)
	and #03
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l2c6f
	add hl,de
	ld e,(hl)
	inc hl
	ld h,(hl)
	ld l,e
	jp (hl)
.l2c6f
	ld (hl),a
	inc l
	adc d
	inc l
	adc d
	inc l
	ld (hl),a
	inc l
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld e,(ix+#16)
	ld d,#00
	add hl,de
	ld (ix+#00),l
	ld (ix+#01),h
	ret
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld e,(ix+#16)
	ld d,#00
	or a
	sbc hl,de
	ld (ix+#00),l
	ld (ix+#01),h
	ret
	bit 0,(ix+#28)
	jr z,l2cb9
	ld a,(l2ae5)
	bit 1,a
	jr z,l2cb9
	ld l,(ix+#02)
	ld h,(ix+#03)
	ld (ix+#04),l
	ld (ix+#05),h
	ret
.l2cb9
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (ix+#04),l
	ld (ix+#05),h
	ret
	bit 4,(ix+#27)
	ret z
	ld a,(ix+#21)
	or a
	jr z,l2cd5
	dec (ix+#21)
	ret
.l2cd5
	ld a,(ix+#06)
	add (ix+#18)
	and #1f
	ld (ix+#06),a
	ld a,(ix+#19)
	ld (ix+#21),a
	ret
	bit 4,(ix+#27)
	jr z,l2cf7
	ld a,(ix+#22)
	or a
	jr z,l2cfc
	dec (ix+#22)
	ret
.l2cf7
	res 5,(ix+#27)
	ret
.l2cfc
	ld a,(ix+#1b)
	ld (ix+#22),a
	res 5,(ix+#27)
	rrc (ix+#1a)
	ret c
	set 5,(ix+#27)
	ret
	ld a,(ix+#27)
	and #fc
	ld (ix+#27),a
	ld a,(ix+#0b)
	ld (ix+#1c),a
	ld a,(ix+#0d)
	ld (ix+#1d),a
	ld a,(ix+#0f)
	ld (ix+#1e),a
	ld a,(ix+#11)
	ld (ix+#1f),a
	ld (ix+#37),#00
	set 6,(ix+#27)
.l2d38
	ld l,(ix+#29)
	ld h,(ix+#2a)
	push hl
	pop iy
	inc hl
	inc hl
	ld (ix+#29),l
	ld (ix+#2a),h
	ld a,(iy+#00)
	or a
	jr z,l2d6e
	bit 7,a
	jr nz,l2d79
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l2dee
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(iy+#01)
	call l2d6d
	bit 7,(ix+#27)
	jr nz,l2d38
	ret
.l2d6d
	jp (hl)
.l2d6e
	ld (ix+#00),#00
	ld (ix+#01),#00
	jp l2da7
.l2d79
	push hl
	res 7,a
	ld b,#00
.l2d7e
	cp #0c
	jr c,l2d87
	sub #0c
	inc b
	jr l2d7e
.l2d87
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l34f6
	add hl,de
	ld a,(hl)
	ld (ix+#00),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
	pop hl
	ld a,b
	or a
	jr z,l2da7
.l2d9d
	srl (ix+#01)
	rr (ix+#00)
	djnz l2d9d
.l2da7
	ld a,(iy+#01)
	ld (ix+#34),a
	ret
	ld a,(ix+#37)
	xor #0f
	ld c,a
	ld a,(ix+#07)
	add #80
	srl a
	srl a
	srl a
	srl a
	ld e,a
	xor #0f
	sub c
	jr nc,l2dc8
	xor a
.l2dc8
	add #04
	cp #0f
	jr c,l2dd0
	ld a,#0f
.l2dd0
	ld (ix+#13),a
	ld a,e
	sub c
	jr nc,l2dd8
	xor a
.l2dd8
	add #04
	cp #0f
	jr c,l2de0
	ld a,#0f
.l2de0
	ld (ix+#12),a
	ret
	ld a,(ix+#08)
	add (ix+#07)
	ld (ix+#07),a
	ret
.l2dee
	dw l2e28,l2e2c,l2e30,l2e34
	dw l2e38,l2e3c,l2e40,l2e44
	dw l2e48,l2e4c,l2e50,l2e54
	dw l2e58,l2e5c,l2e60,l2e6b
	dw l2e83,l2e87,l2e8b,l2e8b
	dw l2e8f,l2e93,l2e94,l2e95
	dw l2e99,l2e9d,l2ea1,l2ea5
	dw l2eb8
.l2e28
	ld (ix+#07),a
	ret
.l2e2c
	ld (ix+#08),a
	ret
.l2e30
	ld (ix+#09),a
	ret
.l2e34
	ld (ix+#0a),a
	ret
.l2e38
	ld (ix+#0b),a
	ret
.l2e3c
	ld (ix+#0c),a
	ret
.l2e40
	ld (ix+#0d),a
	ret
.l2e44
	ld (ix+#0e),a
	ret
.l2e48
	ld (ix+#0f),a
	ret
.l2e4c
	ld (ix+#10),a
	ret
.l2e50
	ld (ix+#11),a
	ret
.l2e54
	ld (ix+#25),a
	ret
.l2e58
	ld (ix+#23),a
	ret
.l2e5c
	ld (ix+#24),a
	ret
.l2e60
	or a
	jr z,l2e76
	ld (ix+#02),a
	set 0,(ix+#28)
	ret
.l2e6b
	or a
	jr z,l2e76
	ld (ix+#03),a
	set 0,(ix+#28)
	ret
.l2e76
	res 0,(ix+#28)
	ld (ix+#02),#00
	ld (ix+#03),#00
	ret
.l2e83
	ld (ix+#14),a
	ret
.l2e87
	ld (ix+#15),a
	ret
.l2e8b
	ld (ix+#16),a
	ret
.l2e8f
	ld (ix+#35),a
	ret
.l2e93
	ret
.l2e94
	ret
.l2e95
	ld (ix+#18),a
	ret
.l2e99
	ld (ix+#19),a
	ret
.l2e9d
	ld (ix+#1a),a
	ret
.l2ea1
	ld (ix+#1b),a
	ret
.l2ea5
	or a
	jr z,l2eb0
	set 4,(ix+#27)
	ld (ix+#06),a
	ret
.l2eb0
	ld (ix+#06),a
	res 4,(ix+#27)
	ret
.l2eb8
	push ix
	pop hl
	ld e,l
	ld d,h
	inc de
	ld bc,#0037
	ld (hl),#00
	ldir
	set 7,(ix+#28)
	ret
.l2eca
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
	ld a,(l51f4)
	or a
	ret nz
	jp l2f3a
	ld a,(l2efd)
	or a
	ret nz
;
.init_music
;
	ld hl,l5d00
	jp l2efe
.l2efd
	db &01
.l2efe
	push hl
	ld hl,l356a
	ld de,l356b
	ld bc,#007d
	ld (hl),#00
	ldir
	pop hl
	ld (l34f2),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld a,l
	ld (l3581),a
	ld a,h
	ld (l3582),a
	push hl
	add hl,de
	ld a,l
	ld (l35ab),a
	ld a,h
	ld (l35ac),a
	pop hl
	add hl,bc
	ld a,l
	ld (l35d5),a
	ld a,h
	ld (l35d6),a
	ld a,#01
	ld (l2efd),a
	ret
;
.play_music
.l2f3a
;
	ld a,(l2efd)
	or a
	ret z
	xor a
	ld (l34f5),a
	ld ix,l356a
	call l2f5f
	ld a,#01
	ld (l34f5),a
	ld ix,l3594
	call l2f5f
	ld a,#02
	ld (l34f5),a
	ld ix,l35be
.l2f5f
	ld a,(ix+#00)
	or a
	jr z,l2fd7
	dec (ix+#00)
	ld a,(ix+#08)
	or a
	jr z,l2f74
	dec a
	ld (ix+#08),a
	jr l2f89
.l2f74
	ld a,(ix+#0a)
	or a
	jr z,l2f80
	dec a
	ld (ix+#0a),a
	jr l2f89
.l2f80
	ld a,(ix+#09)
	ld (ix+#0a),a
	inc (ix+#0b)
.l2f89
	ld a,(ix+#01)
	and #03
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l3512
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call l2d6d
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(ix+#11)
	add h
	ld h,a
	ld (ix+#0d),h
	ld a,(ix+#01)
	srl a
	srl a
	srl a
	and #07
	ld b,a
	call nz,l323e
	ld a,(ix+#01)
	rlca
	rlca
	and #03
	ld b,a
	call nz,l31dd
	call l3201
	ld a,(ix+#02)
	and #03
	call nz,l3223
	call l30a7
	call l3036
	ret
.l2fd7
	ld a,(ix+#16)
	ld (ix+#24),a
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,(hl)
	or a
	jp z,l3292
	bit 7,a
	jp nz,l32aa
	cp #1a
	jp nc,l3005
	push hl
	pop iy
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l3518
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call l2d6d
.l3005
	ld l,(ix+#17)
	ld h,(ix+#18)
	inc hl
	inc hl
	ld (ix+#17),l
	ld (ix+#18),h
	ld a,(l34f5)
	or a
	jp nz,l2f5f
	ld de,(l34f2)
	push hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	inc hl
	inc hl
	add hl,de
	ex de,hl
	pop hl
	or a
	sbc hl,de
	jp c,l2f5f
	xor a
	ld (l2efd),a
	jp #294b
.l3036
	ld a,(ix+#28)
	bit 7,a
	ld c,#00
	jr z,l3041
	ld c,#ff
.l3041
	add l
	ld l,a
	ld a,h
	adc c
	ld h,a
	ld a,(l34f5)
	add a
	ld e,a
	ld c,l
	call l2eca
	ld a,e
	inc a
	ld c,h
	call l2eca
	ld a,(ix+#06)
	ld c,a
	ld a,(l34f5)
	add #08
	call l2eca
	bit 2,(ix+#02)
	jr z,l306f
	ld c,(ix+#20)
	ld a,#06
	call l2eca
.l306f
	bit 6,(ix+#02)
	jr z,l309b
	ld c,(ix+#21)
	ld a,#0b
	call l2eca
	ld c,(ix+#22)
	ld a,#0c
	call l2eca
	ld a,(ix+#02)
	and #03
	jr z,l309b
	ld a,(ix+#24)
	and #80
	jr nz,l309b
	ld c,(ix+#23)
	ld a,#0d
	call l2eca
.l309b
	ld a,(l34f4)
	or #80
	ld c,a
	ld a,#07
	call l2eca
	ret
.l30a7
	call l30e0
	ld a,(ix+#24)
	and #80
	ret nz
	ld a,(ix+#0c)
	or (ix+#0d)
	call z,l314d
	bit 2,(ix+#02)
	call nz,l30fe
	bit 3,(ix+#02)
	call nz,l3167
	bit 4,(ix+#02)
	call nz,l3152
	bit 5,(ix+#02)
	jr z,l30d8
	ld (ix+#06),#10
.l30d8
	bit 6,(ix+#02)
	call nz,l311e
	ret
.l30e0
	ld a,(l34f5)
	ld d,#08
	ld e,#01
.l30e7
	or a
	jr z,l30f1
	dec a
	rlc d
	rlc e
	jr l30e7
.l30f1
	ld a,e
	xor #ff
	ld e,a
	ld a,(l34f4)
	and e
	or d
	ld (l34f4),a
	ret
.l30fe
	ld a,(ix+#0c)
	or (ix+#0d)
	ret z
	ld a,(l34f5)
	ld d,#08
.l310a
	or a
	jr z,l3112
	dec a
	rlc d
	jr l310a
.l3112
	ld a,d
	xor #ff
	ld d,a
	ld a,(l34f4)
	and d
	ld (l34f4),a
	ret
.l311e
	ld (ix+#21),l
	ld (ix+#22),h
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	ret
.l314d
	xor a
	ld (ix+#06),a
	ret
.l3152
	ld a,(l34f5)
	ld d,#01
.l3157
	or a
	jr z,l315f
	dec a
	rlc d
	jr l3157
.l315f
	ld a,(l34f4)
	or d
	ld (l34f4),a
	ret
.l3167
	push hl
	ld b,#06
.l316a
	srl h
	rr l
	djnz l316a
	ld a,l
	pop hl
	ld (ix+#20),a
	ret
.l3176
	dec (ix+#27)
	ret nz
	ld a,(ix+#25)
	ld (ix+#27),a
	ld a,(ix+#04)
	srl a
	srl a
	srl a
	srl a
	add (ix+#06)
	cp (ix+#03)
	jr c,l319d
	inc (ix+#01)
	ld a,(ix+#03)
	ld (ix+#27),#01
.l319d
	ld (ix+#06),a
	ret
.l31a1
	dec (ix+#27)
	ret nz
	ld a,(ix+#26)
	ld (ix+#27),a
	ld a,(ix+#04)
	and #0f
	ld b,a
	ld c,(ix+#05)
	srl c
	srl c
	srl c
	srl c
	ld a,(ix+#03)
	cp c
	jr nc,l31c3
	ld c,a
.l31c3
	ld a,(ix+#06)
	sub b
	jr c,l31cc
	cp c
	jr nc,l31d0
.l31cc
	inc (ix+#01)
	ld a,c
.l31d0
	ld (ix+#06),a
.l31d3
	ret
.l31d4
	ld a,(ix+#01)
	xor #04
	ld (ix+#01),a
	ret
.l31dd
	ld a,(ix+#0a)
	or a
	call z,l31d4
	ld a,b
	cp #02
	jr nz,l31f4
	ld a,(ix+#01)
	and #04
	ret z
	srl h
	rr l
	ret
.l31f4
	ld a,(ix+#01)
	and #04
	ret z
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	ret
.l3201
	ld a,(ix+#08)
	or a
	ret nz
	ld a,(ix+#0a)
	or a
	ret nz
	ld a,(ix+#0b)
	bit 0,a
	ret z
	and #03
	cp #02
	jr c,l321d
	ld a,(ix+#19)
	add l
	ld l,a
	ret
.l321d
	ld a,l
	sub (ix+#19)
	ld l,a
	ret
.l3223
	cp #01
	jr z,l3228
	ret
.l3228
	ld a,(ix+#24)
	and #7f
	jr nz,l323a
	ld a,(ix+#24)
	xor #80
	or (ix+#16)
	ld (ix+#24),a
.l323a
	dec (ix+#24)
	ret
.l323e
	ld a,(ix+#08)
	or a
	ret nz
	ld a,b
	cp #01
	jr z,l3263
	ld e,(ix+#10)
	ld d,#00
	cp #03
	jr nz,l325b
	ld a,e
	cpl
	add #01
	ld e,a
	ld a,d
	cpl
	adc #00
	ld d,a
.l325b
	add hl,de
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.l3263
	push hl
	ld c,(ix+#10)
	ld b,#00
	ld e,(ix+#0e)
	ld d,(ix+#0f)
	or a
	sbc hl,de
	pop hl
	ret z
	jr c,l3282
	or a
	sbc hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr nc,l328b
	jr l328a
.l3282
	add hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr c,l328b
.l328a
	ex de,hl
.l328b
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.l3292
	ld (ix+#0c),#00
	ld (ix+#0d),#00
.l329a
	inc hl
	ld a,(hl)
	cp #ff
	jp z,l3319
	ld (ix+#00),a
	call l3328
	jp l3005
.l32aa
	push hl
	res 7,a
	add (ix+#15)
	call l32e1
	ld b,#00
.l32b5
	cp #0c
	jr c,l32be
	sub #0c
	inc b
	jr l32b5
.l32be
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l34f6
	add hl,de
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld a,b
	or a
	jr z,l329a
.l32d4
	srl (ix+#0d)
	rr (ix+#0c)
	djnz l32d4
	jp l329a
.l32e1
	push af
	ld a,(ix+#29)
	or a
	jr z,l3317
	pop af
	push af
	add (ix+#29)
	ld b,#00
.l32ef
	cp #0c
	jr c,l32f8
	sub #0c
	inc b
	jr l32ef
.l32f8
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l34f6
	add hl,de
	ld a,(hl)
	ld (ix+#0e),a
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	ld a,b
	or a
	jr z,l3317
.l330d
	srl (ix+#0f)
	rr (ix+#0e)
	djnz l330d
.l3317
	pop af
	ret
.l3319
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	jp l3005
.l3328
	ld (ix+#06),#00
	ld a,(ix+#07)
	ld (ix+#08),a
	ld a,(ix+#01)
	and #fc
	ld (ix+#01),a
	ld (ix+#27),#01
	ret
.l333f
	ld a,(iy+#01)
	bit 7,a
	jr z,l334c
	and #0f
	ld (ix+#03),a
	ret
.l334c
	push ix
	and #0f
	ld ix,l356a
	ld (ix+#03),a
	ld ix,l3594
	ld (ix+#03),a
	ld ix,l35be
	ld (ix+#03),a
	pop ix
	ret
.l3368
	push hl
	push de
	push bc
	ld a,(iy+#01)
	srl a
	srl a
	srl a
	srl a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l354a
	add hl,de
	ld c,(hl)
	sla c
	sla c
	sla c
	sla c
	inc hl
	ld a,(hl)
	ld (ix+#25),a
	ld a,(iy+#01)
	and #0f
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l354a
	add hl,de
	ld a,(hl)
	and #0f
	or c
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	ld (ix+#27),#01
	pop bc
	pop de
	pop hl
	ret
.l33ad
	ld a,(iy+#01)
	res 6,(ix+#02)
	bit 7,a
	jr z,l33c0
	set 6,(ix+#02)
	set 5,(ix+#02)
.l33c0
	res 7,a
	or a
	jr z,l33d1
	set 2,(ix+#02)
	cp #20
	jr nc,l33da
	ld (ix+#20),a
	ret
.l33d1
	ld a,(ix+#02)
	and #03
	ld (ix+#02),a
	ret
.l33da
	set 3,(ix+#02)
	cp #21
	ret c
	set 4,(ix+#02)
	bit 6,a
	ret z
	res 6,a
	res 4,a
	ld (ix+#20),a
	ret
.l33f0
	ret
.l33f1
	ld a,(iy+#01)
	or a
	jr z,l3405
	ld (ix+#16),a
	ld a,(ix+#02)
	and #fc
	or #01
	ld (ix+#02),a
	ret
.l3405
	ld a,(ix+#02)
	and #fc
	ld (ix+#02),a
	res 7,(ix+#24)
	ld (ix+#16),#00
	ret
.l3416
	ld a,(iy+#01)
	ld (ix+#09),a
	ld (ix+#0a),a
	ret
.l3420
	ret
.l3421
	ld a,(iy+#01)
	and #03
	rrca
	rrca
	ld b,a
	ld a,(ix+#01)
	and #3f
	or b
	ld (ix+#01),a
	ret
.l3433
	ld a,(iy+#01)
	ld (ix+#07),a
	ret
.l343a
	ld a,(iy+#01)
	ld (ix+#05),a
	ret
.l3441
	ld a,(iy+#01)
	xor #ff
	srl a
	srl a
	srl a
	srl a
	srl a
	srl a
	ld (ix+#19),a
	ret
.l3456
	ld a,(iy+#01)
	ld (ix+#11),a
	ret
.l345d
	ld a,(iy+#01)
	ld (ix+#10),a
	ret
.l3464
	ret
.l3465
	ld a,(iy+#01)
	and #07
	ld b,a
	sla b
	sla b
	sla b
	ld a,(ix+#01)
	and #c7
	or b
	ld (ix+#01),a
	ret
.l347b
	ld a,(ix+#1c)
	or a
	jr nz,l3484
	ld a,(iy+#01)
.l3484
	dec a
	ld (ix+#1c),a
	ret z
	ld a,(ix+#1a)
	ld (ix+#17),a
	ld a,(ix+#1b)
	ld (ix+#18),a
	ret
.l3496
	ld a,(ix+#17)
	ld (ix+#1a),a
	ld a,(ix+#18)
	ld (ix+#1b),a
	ret
.l34a3
	ld a,(ix+#1f)
	or a
	jr nz,l34ac
	ld a,(iy+#01)
.l34ac
	dec a
	ld (ix+#1f),a
	ret z
	ld a,(ix+#1d)
	ld (ix+#17),a
	ld a,(ix+#1e)
	ld (ix+#18),a
	ret
.l34be
	ld a,(ix+#17)
	ld (ix+#1d),a
	ld a,(ix+#18)
	ld (ix+#1e),a
	ret
.l34cb
	ld a,(iy+#01)
	ld (ix+#15),a
	ret
.l34d2
	ld a,(iy+#01)
	ld (ix+#23),a
	ret
.l34d9
	ld a,(iy+#01)
	ld (ix+#28),a
	ret
.l34e0
	ret
.l34e1
	ld a,(iy+#01)
	add (ix+#15)
	ld (ix+#15),a
	ret
.l34eb
	ld a,(iy+#01)
	ld (ix+#29),a
	ret
.l34f5 equ $ + 3
.l34f4 equ $ + 2
.l34f2
	db #00,#5d,#00,#00
.l34f6
	dw #0edd,#0e07,#0d3e,#0c80
	dw #0bcc,#0b23,#0a83,#09ec
	dw #095d,#08d6,#0857,#07e0
	db #44,#41,#54,#41
.l3518 equ $ + 6
.l3512
	dw l3176,l31a1,l31d3,l333f
	dw l3368,l33ad,l33f0,l33f1
	dw l3416,l3420,l3421,l3433
	dw l343a,l3441,l3456,l345d
	dw l3464,l3465,l347b,l3496
	dw l34a3,l34be,l34cb,l34d2
	dw l34d9,l34e0,l34e1,l34eb
.l354a
	db #0f,#01,#0d,#01,#0b,#01,#09,#01
	db #07,#01,#05,#01,#03,#01,#02,#01
	db #01,#01,#01,#0a,#01,#1e,#01,#46
	db #01,#6e,#01,#b4,#01,#dc,#01,#ff
.l356b equ $ + 1
.l356a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3581 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#04
.l3582
	db #5d,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3594 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l35ac equ $ + 2
.l35ab equ $ + 1
	db #00,#02,#5f,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l35be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l35d6 equ $ + 4
.l35d5 equ $ + 3
	db #00,#00,#00,#1a,#61,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
	db #cd,#5f,#3f,#cd,#93,#41,#c9,#55
	db #50,#2e,#2e,#2e,#2e,#2e,#2e,#2e
	db #2e,#2e,#ae,#44,#4f,#57,#4e,#2e
	db #2e,#2e,#2e,#2e,#2e,#2e,#ae,#4c
	db #45,#46,#54,#2e,#2e,#2e,#2e,#2e
	db #2e,#2e,#ae,#52,#49,#47,#48,#54
	db #2e,#2e,#2e,#2e,#2e,#2e,#ae,#46
	db #49,#52,#45,#2e,#2e,#2e,#2e,#2e
	db #2e,#2e,#ae,#42,#4f,#4d,#42,#2e
	db #2e,#2e,#2e,#2e,#2e,#2e,#ae,#dd
	db #21,#e0,#04,#fd,#21,#ef,#35,#06
	db #06,#26,#0a,#2e,#0a,#d9,#0e,#00
	db #d9,#c5,#e5,#3e,#0c,#32,#79,#51
	db #cd,#00,#28,#fd,#23,#fd,#e5,#e5
	db #cd,#8b,#36,#cd,#9c,#36,#30,#f8
	db #dd,#77,#00,#dd,#23,#cd,#c1,#36
	db #3e,#03,#32,#79,#51,#e1,#cd,#00
	db #28,#d9,#0c,#d9,#fd,#e1,#e1,#7c
	db #c6,#06,#67,#c1,#10,#cb,#dd,#21
	db #e0,#04,#dd,#7e,#05,#cd,#79,#01
	db #20,#f8,#c9,#06,#50,#48,#0d,#c5
	db #79,#cd,#79,#01,#c1,#79,#c0,#10
	db #f4,#c3,#8b,#36,#d9,#fe,#0f,#28
	db #1d,#fe,#44,#28,#19,#fe,#42,#28
	db #15,#08,#79,#b7,#28,#0c,#08,#41
	db #21,#e0,#04,#be,#28,#08,#23,#10
	db #fa,#08,#d9,#08,#37,#c9,#d9,#af
	db #c9,#fd,#21,#e4,#57,#47,#b7,#c8
	db #fd,#7e,#00,#fd,#23,#cb,#7f,#28
	db #f7,#10,#f5,#c9,#cd,#fd,#36,#c8
	db #fe,#12,#28,#15,#fe,#4f,#28,#15
	db #fe,#2f,#28,#15,#cd,#c1,#36,#fd
	db #7e,#00,#cb,#7f,#c8,#e6,#7f,#b7
	db #c9,#3e,#0d,#b7,#c9,#3e,#7f,#b7
	db #c9,#3e,#20,#b7,#c9,#06,#50,#48
	db #0d,#c5,#79,#cd,#79,#01,#c1,#79
	db #c0,#10,#f4,#af,#c9,#3e,#33,#32
	db #79,#51,#cd,#d4,#36,#08,#3a,#85
	db #51,#5f,#08,#32,#85,#51,#c8,#4f
	db #7b,#b7,#c0,#3e,#ff,#32,#85,#51
	db #2a,#83,#51,#7e,#e6,#7f,#b9,#28
	db #07,#21,#e7,#58,#22,#83,#51,#c9
	db #cb,#7e,#20,#2a,#23,#22,#83,#51
	db #7e,#fe,#4e,#c0,#fd,#21,#43,#00
	db #21,#00,#00,#cd,#00,#28,#c9,#45
	db #49,#4e,#49,#4f,#4e,#27,#53,#20
	db #48,#41,#43,#cb,#20,#20,#20,#4f
	db #50,#54,#49,#4f,#4e,#d3,#3e,#ff
	db #32,#be,#51,#cd,#9d,#27,#af,#32
	db #de,#51,#32,#c6,#37,#2f,#32,#df
	db #51,#3e,#33,#32,#79,#51,#26,#02
	db #2e,#11,#fd,#21,#4f,#37,#3a,#be
	db #51,#b7,#20,#04,#fd,#21,#5c,#37
	db #cd,#00,#28,#cd,#fb,#39,#cd,#20
	db #04,#cd,#20,#04,#cd,#20,#04,#cd
	db #20,#04,#cd,#cd,#37,#3a,#de,#51
	db #4f,#3a,#df,#51,#b9,#c4,#0f,#38
	db #cd,#75,#38,#3a,#c6,#37,#b7,#ca
	db #96,#37,#cd,#7c,#04,#fd,#cb,#04
	db #66,#20,#f7,#c3,#bb,#27,#00,#e5
	db #b7,#ed,#52,#e1,#c9,#cd,#7c,#04
	db #fd,#cb,#04,#46,#28,#07,#3a,#de
	db #51,#3d,#32,#de,#51,#fd,#cb,#04
	db #4e,#28,#07,#3a,#de,#51,#3c,#32
	db #de,#51,#3a,#de,#51,#fe,#ff,#20
	db #05,#3e,#08,#32,#de,#51,#fe,#09
	db #c0,#af,#32,#de,#51,#c9,#6f,#26
	db #00,#e5,#29,#29,#29,#d1,#19,#11
	db #aa,#39,#19,#e5,#dd,#e1,#c9,#3a
	db #df,#51,#cd,#22,#38,#3a,#de,#51
	db #cd,#22,#38,#3a,#de,#51,#32,#df
	db #51,#c9,#fe,#ff,#c8,#cd,#fe,#37
	db #dd,#6e,#01,#26,#00,#29,#11,#6f
	db #fe,#19,#5e,#23,#56,#dd,#6e,#00
	db #26,#00,#19,#06,#06,#c5,#e5,#06
	db #1c,#7e,#2f,#77,#23,#10,#fa,#e1
	db #cd,#cf,#01,#c1,#10,#ef,#c9,#dd
	db #6e,#01,#26,#00,#29,#11,#6f,#fe
	db #19,#5e,#23,#56,#dd,#6e,#00,#26
	db #00,#19,#06,#06,#c5,#e5,#06,#1c
	db #af,#77,#23,#10,#fb,#e1,#cd,#cf
	db #01,#c1,#10,#f0,#c9,#3a,#de,#51
	db #cd,#22,#38,#fd,#21,#15,#55,#fd
	db #7e,#04,#e6,#1c,#28,#11,#dd,#6e
	db #07,#dd,#66,#08,#cd,#6d,#2d,#cd
	db #4f,#38,#06,#01,#cd,#01,#3a,#3a
	db #de,#51,#cd,#22,#38,#c9,#fd,#21
	db #15,#55,#af,#fd,#cb,#04,#66,#28
	db #02,#3e,#ff,#32,#c6,#37,#c9,#3a
	db #be,#51,#b7,#c8,#fd,#21,#15,#55
	db #af,#fd,#cb,#04,#5e,#28,#01,#2f
	db #dd,#6e,#05,#dd,#66,#06,#77,#c9
	db #fd,#21,#15,#55,#2a,#7b,#51,#2b
	db #fd,#cb,#04,#5e,#28,#02,#23,#23
	db #11,#46,#00,#cd,#c7,#37,#d8,#11
	db #90,#01,#cd,#c7,#37,#d0,#22,#7b
	db #51,#cd,#8a,#0c,#22,#7d,#51,#c9
	db #fd,#21,#15,#55,#2a,#7f,#51,#2b
	db #fd,#cb,#04,#5e,#28,#02,#23,#23
	db #11,#1e,#00,#cd,#c7,#37,#d8,#11
	db #c8,#00,#cd,#c7,#37,#d0,#22,#7f
	db #51,#cd,#8a,#0c,#22,#81,#51,#c9
	db #fd,#21,#15,#55,#2a,#b8,#51,#26
	db #00,#2b,#fd,#cb,#04,#5e,#28,#02
	db #23,#23,#11,#0c,#00,#cd,#c7,#37
	db #d8,#11,#1e,#00,#cd,#c7,#37,#d0
	db #7d,#32,#b8,#51,#c9,#3a,#be,#51
	db #b7,#c8,#fd,#21,#15,#55,#2a,#dd
	db #51,#26,#00,#2b,#fd,#cb,#04,#5e
	db #28,#02,#23,#23,#11,#0b,#00,#cd
	db #c7,#37,#d0,#7d,#32,#dd,#51,#c9
	db #4f,#4e,#a0,#4f,#46,#c6,#48,#49
	db #4c,#4c,#53,#a0,#44,#45,#41,#54
	db #48,#a0,#47,#52,#41,#56,#49,#54
	db #59,#a0,#56,#54,#48,#52,#55,#53
	db #54,#a0,#48,#54,#48,#52,#55,#53
	db #54,#a0,#48,#50,#4f,#53,#a0,#4c
	db #45,#56,#45,#4c,#a0,#4c,#41,#4e
	db #44,#20,#44,#45,#41,#54,#48,#a0
	db #20,#20,#20,#20,#20,#51,#55,#49
	db #54,#a0,#10,#14,#a0,#39,#00,#00
	db #00,#9e,#38,#01,#20,#66,#39,#01
	db #bd,#51,#b4,#38,#01,#26,#6c,#39
	db #81,#bc,#51,#af,#38,#01,#2c,#72
	db #39,#01,#bb,#51,#b4,#38,#01,#32
	db #7a,#39,#02,#7b,#51,#c8,#38,#1e
	db #20,#82,#39,#02,#7f,#51,#f0,#38
	db #1e,#26,#8a,#39,#04,#b8,#51,#18
	db #39,#1e,#2c,#8f,#39,#84,#dd,#51
	db #3d,#39,#1e,#32,#95,#39,#01,#c0
	db #51,#b4,#38,#dd,#21,#aa,#39,#06
	db #09,#c5,#dd,#6e,#02,#dd,#66,#03
	db #e5,#fd,#e1,#dd,#6e,#00,#dd,#66
	db #01,#3e,#33,#dd,#cb,#04,#7e,#28
	db #02,#3e,#ff,#32,#79,#51,#3a,#be
	db #51,#b7,#28,#05,#3e,#33,#32,#79
	db #51,#cd,#00,#28,#22,#a5,#51,#dd
	db #6e,#05,#dd,#66,#06,#e5,#fd,#e1
	db #2a,#a5,#51,#dd,#7e,#04,#cd,#4a
	db #3a,#11,#09,#00,#dd,#19,#c1,#10
	db #b8,#c9,#b7,#c8,#cb,#47,#20,#10
	db #fd,#6e,#00,#26,#00,#cb,#57,#20
	db #03,#fd,#66,#01,#cd,#72,#3a,#c9
	db #fd,#7e,#00,#fd,#21,#60,#39,#b7
	db #28,#04,#fd,#21,#63,#39,#cd,#00
	db #28,#c9,#dd,#e5,#dd,#21,#c0,#3a
	db #0e,#00,#dd,#7e,#00,#fe,#24,#28
	db #3c,#dd,#5e,#00,#dd,#56,#01,#3e
	db #00,#b7,#ed,#52,#38,#03,#3c,#18
	db #f8,#19,#dd,#23,#dd,#23,#08,#79
	db #b7,#20,#0e,#dd,#7e,#00,#fe,#24
	db #28,#07,#08,#b7,#28,#d4,#0e,#ff
	db #08,#08,#e6,#0f,#c6,#30,#e5,#2a
	db #a5,#51,#c5,#cd,#11,#28,#c1,#22
	db #a5,#51,#e1,#18,#bd,#dd,#e1,#c9
	db #10,#27,#e8,#03,#64,#00,#0a,#00
	db #01,#00,#24,#06,#ff,#21,#00,#c7
	db #3e,#ff,#90,#5f,#e6,#aa,#cb,#3f
	db #57,#7b,#e6,#55,#cb,#27,#b2,#77
	db #23,#10,#ed,#36,#ff,#c9,#fd,#e5
	db #d9,#e1,#d9,#c5,#e5,#d5,#06,#00
	db #7e,#d9,#77,#23,#d9,#1a,#32,#fa
	db #3a,#3a,#00,#c7,#b7,#ca,#01,#3b
	db #77,#1b,#ed,#a1,#ea,#f0,#3a,#e1
	db #11,#06,#00,#19,#eb,#e1,#01,#40
	db #00,#09,#c1,#10,#d6,#c9,#fd,#e5
	db #d9,#e1,#d9,#c5,#e5,#d5,#06,#00
	db #7e,#d9,#77,#23,#d9,#1a,#b7,#ca
	db #2b,#3b,#77,#13,#ed,#a1,#ea,#20
	db #3b,#e1,#11,#fa,#ff,#19,#eb,#e1
	db #01,#40,#00,#09,#c1,#10,#dc,#c9
	db #fd,#e5,#d9,#e1,#d9,#c5,#e5,#d5
	db #06,#00,#7e,#d9,#77,#23,#d9,#1a
	db #32,#54,#3b,#3a,#00,#c7,#b7,#ca
	db #5b,#3b,#77,#1b,#ed,#a1,#ea,#4a
	db #3b,#e1,#11,#fa,#ff,#19,#eb,#e1
	db #01,#40,#00,#09,#c1,#10,#d6,#c9
	db #21,#01,#52,#06,#06,#cb,#46,#c0
	db #23,#23,#23,#10,#f8,#af,#c9,#3a
	db #6e,#51,#e6,#07,#c0,#dd,#7e,#00
	db #e6,#fc,#c6,#03,#6f,#dd,#66,#01
	db #11,#f8,#ff,#19,#7c,#e6,#03,#67
	db #11,#00,#72,#19,#7e,#fe,#26,#28
	db #06,#11,#04,#00,#19,#18,#f5,#7d
	db #e6,#fc,#6f,#eb,#3a,#aa,#51,#21
	db #1c,#51,#b7,#28,#0a,#21,#28,#51
	db #fe,#01,#28,#03,#21,#10,#51,#01
	db #0c,#00,#ed,#b0,#3a,#aa,#51,#3c
	db #32,#aa,#51,#fe,#03,#c2,#3f,#02
	db #2a,#a9,#51,#26,#00,#e5,#29,#d1
	db #19,#11,#01,#52,#19,#36,#00,#dd
	db #36,#0c,#ff,#c3,#3f,#02,#dd,#7e
	db #0c,#fe,#ff,#28,#38,#fe,#fe,#28
	db #8e,#cd,#17,#1c,#dd,#6e,#0c,#26
	db #00,#e5,#29,#d1,#19,#11,#ff,#51
	db #19,#5e,#23,#56,#dd,#6e,#00,#dd
	db #66,#01,#b7,#ed,#52,#c0,#dd,#36
	db #05,#00,#dd,#36,#06,#00,#dd,#7e
	db #0c,#32,#a9,#51,#dd,#36,#0c,#fe
	db #af,#32,#aa,#51,#c9,#11,#11,#52
	db #06,#06,#0e,#00,#fd,#21,#ff,#51
	db #fd,#6e,#00,#fd,#66,#01,#fd,#cb
	db #02,#46,#28,#27,#0e,#ff,#d5,#dd
	db #5e,#00,#dd,#56,#01,#b7,#ed,#52
	db #dc,#8a,#0c,#d1,#7d,#12,#13,#7c
	db #12,#13,#fd,#23,#fd,#23,#fd,#23
	db #10,#d6,#dd,#36,#05,#01,#79,#b7
	db #c8,#18,#08,#3e,#ff,#12,#13,#12
	db #13,#18,#e7,#fd,#21,#11,#52,#06
	db #06,#0e,#ff,#11,#00,#04,#fd,#6e
	db #00,#fd,#66,#01,#d5,#11,#00,#02
	db #b7,#ed,#52,#30,#01,#19,#d1,#b7
	db #ed,#52,#30,#08,#cd,#8a,#0c,#eb
	db #3e,#06,#90,#4f,#fd,#23,#fd,#23
	db #10,#dc,#dd,#71,#0c,#69,#26,#00
	db #e5,#29,#d1,#19,#11,#ff,#51,#19
	db #5e,#23,#56,#dd,#6e,#00,#dd,#66
	db #01,#b7,#ed,#52,#dd,#36,#05,#ff
	db #30,#04,#dd,#36,#05,#01,#dc,#8a
	db #0c,#dd,#36,#06,#0a,#11,#00,#02
	db #b7,#ed,#52,#d0,#dd,#36,#06,#00
	db #c9,#dd,#7e,#02,#fe,#80,#38,#2b
	db #dd,#7e,#05,#b7,#28,#37,#dd,#cb
	db #05,#7e,#28,#0a,#dd,#36,#03,#3d
	db #dd,#36,#0b,#43,#18,#08,#dd,#36
	db #03,#41,#dd,#36,#0b,#47,#3a,#6e
	db #51,#e6,#01,#c8,#dd,#34,#03,#dd
	db #34,#0b,#c9,#dd,#36,#03,#40,#dd
	db #36,#0b,#46,#fe,#64,#d0,#dd,#35
	db #03,#dd,#35,#0b,#c9,#dd,#36,#03
	db #3f,#dd,#36,#0b,#45,#3a,#aa,#51
	db #e6,#01,#c8,#dd,#36,#03,#40,#dd
	db #36,#0b,#46,#c9,#3a,#ea,#51,#b7
	db #c8,#fd,#e5,#fd,#21,#45,#55,#06
	db #0c,#fd,#7e,#0e,#fe,#11,#28,#0a
	db #11,#10,#00,#fd,#19,#10,#f2,#fd
	db #e1,#c9,#dd,#6e,#00,#dd,#66,#01
	db #dd,#7e,#02,#cd,#78,#0c,#4f,#eb
	db #fd,#6e,#00,#fd,#66,#01,#fd,#7e
	db #02,#cd,#78,#0c,#47,#b7,#ed,#52
	db #dc,#8a,#0c,#7c,#b7,#20,#d8,#7d
	db #fe,#05,#30,#d3,#78,#91,#30,#02
	db #ed,#44,#fe,#0e,#30,#c9,#3e,#01
	db #cd,#88,#41,#fd,#36,#0f,#00,#dd
	db #36,#0e,#03,#dd,#36,#03,#28,#dd
	db #36,#0b,#29,#06,#0a,#cd,#98,#13
	db #fd,#e1,#21,#ea,#51,#35,#3e,#1e
	db #32,#f2,#51,#af,#32,#cb,#51,#c9
	db #cd,#26,#42,#2e,#09,#01,#00,#00
	db #3e,#02,#cd,#bf,#28,#dd,#21,#15
	db #55,#dd,#36,#0f,#00,#cd,#f0,#08
	db #cd,#44,#03,#cd,#d5,#03,#cd,#f9
	db #3d,#cd,#6a,#05,#cd,#79,#03,#cd
	db #10,#05,#cd,#52,#3e,#cd,#d5,#03
	db #3a,#ab,#51,#3c,#32,#ab,#51,#fe
	db #08,#20,#da,#dd,#21,#15,#55,#dd
	db #36,#0f,#01,#21,#ff,#dd,#11,#00
	db #de,#01,#ff,#01,#36,#00,#ed,#b0
	db #c9,#3a,#ab,#51,#4f,#3e,#07,#91
	db #ed,#47,#87,#87,#87,#4f,#3e,#6a
	db #91,#32,#63,#51,#dd,#21,#15,#55
	db #cd,#48,#22,#7d,#32,#62,#51,#cd
	db #21,#07,#ed,#5b,#69,#51,#ed,#53
	db #ff,#dd,#21,#0c,#79,#fd,#21,#01
	db #de,#06,#10,#0e,#06,#c5,#d5,#1a
	db #fd,#77,#00,#7e,#b7,#28,#01,#12
	db #13,#23,#fd,#23,#0d,#20,#f0,#ed
	db #57,#d9,#47,#04,#e1,#11,#40,#00
	db #19,#10,#fd,#e5,#d9,#d1,#c1,#10
	db #da,#c9,#3a,#ab,#51,#4f,#3e,#07
	db #91,#3e,#01,#ed,#5b,#ff,#dd,#21
	db #01,#de,#06,#10,#c5,#d5,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#57,#d9,#47,#04,#e1
	db #11,#40,#00,#19,#10,#fd,#e5,#d9
	db #d1,#c1,#10,#e0,#c9,#21,#05,#56
	db #11,#15,#56,#01,#08,#00,#ed,#b0
	db #21,#0d,#56,#11,#05,#56,#01,#08
	db #00,#ed,#b0,#21,#9a,#1a,#11,#aa
	db #1a,#01,#08,#00,#ed,#b0,#21,#a2
	db #1a,#11,#9a,#1a,#01,#08,#00,#ed
	db #b0,#06,#07,#dd,#21,#69,#56,#21
	db #80,#8b,#fd,#21,#e0,#58,#c5,#dd
	db #e5,#fd,#e5,#e5,#fd,#7e,#00,#d6
	db #41,#6f,#26,#00,#29,#29,#11,#0f
	db #5a,#19,#e5,#fd,#e1,#e1,#e5,#3e
	db #07,#90,#dd,#77,#02,#dd,#56,#03
	db #cd,#80,#19,#e1,#11,#40,#01,#19
	db #fd,#e1,#fd,#23,#dd,#e1,#11,#04
	db #00,#dd,#19,#c1,#10,#c8,#af,#32
	db #bf,#51,#06,#07,#21,#80,#8b,#dd
	db #21,#69,#56,#c5,#dd,#e5,#22,#4f
	db #56,#cd,#22,#1a,#2a,#4f,#56,#11
	db #40,#01,#19,#dd,#e1,#11,#04,#00
	db #dd,#19,#c1,#10,#e6,#dd,#21,#69
	db #56,#06,#07,#dd,#7e,#02,#e6,#80
	db #4f,#dd,#7e,#02,#3d,#e6,#0f,#b1
	db #dd,#77,#02,#11,#04,#00,#dd,#19
	db #10,#e9,#cd,#d4,#36,#20,#09,#3a
	db #bf,#51,#3d,#32,#bf,#51,#20,#b2
	db #21,#15,#56,#11,#05,#56,#01,#08
	db #00,#ed,#b0,#21,#aa,#1a,#11,#9a
	db #1a,#01,#08,#00,#ed,#b0,#c9,#06
	db #06,#21,#01,#52,#11,#03,#00,#cb
	db #46,#c8,#19,#10,#fa,#2a,#ae,#51
	db #2b,#22,#ae,#51,#c9,#2e,#0a,#01
	db #00,#00,#3e,#02,#cd,#bf,#28,#21
	db #28,#00,#22,#ae,#51,#3a,#dc,#51
	db #3c,#32,#dc,#51,#cd,#08,#41,#cd
	db #99,#3f,#cd,#ae,#4e,#cd,#3f,#02
	db #c9,#fd,#21,#d6,#40,#26,#46,#2e
	db #0f,#3e,#f3,#32,#79,#51,#cd,#00
	db #28,#fd,#21,#d1,#40,#26,#4e,#2e
	db #30,#3e,#03,#32,#79,#51,#cd,#00
	db #28,#26,#55,#2e,#34,#22,#a5,#51
	db #2a,#dc,#51,#26,#00,#2b,#cd,#72
	db #3a,#fd,#21,#03,#41,#26,#4e,#2e
	db #04,#3e,#ff,#32,#79,#51,#cd,#00
	db #28,#26,#55,#2e,#02,#22,#a5,#51
	db #2a,#b0,#51,#ed,#5b,#b3,#51,#19
	db #3a,#b2,#51,#ce,#00,#cd,#bb,#46
	db #cd,#70,#42,#fd,#21,#e5,#40,#26
	db #5a,#2e,#11,#3e,#3f,#32,#79,#51
	db #cd,#00,#28,#dd,#21,#80,#8b,#dd
	db #36,#00,#00,#dd,#36,#01,#00,#dd
	db #36,#02,#08,#fd,#21,#ed,#51,#cd
	db #50,#16,#06,#19,#cd,#98,#40,#26
	db #62,#2e,#1b,#22,#a5,#51,#1e,#00
	db #cd,#46,#42,#dd,#6e,#00,#dd,#66
	db #01,#dd,#e5,#fd,#e5,#cd,#72,#3a
	db #fd,#e1,#dd,#e1,#fd,#35,#00,#fa
	db #6d,#40,#cd,#a0,#40,#2a,#dc,#51
	db #26,#00,#2b,#29,#ed,#5b,#b3,#51
	db #19,#22,#b3,#51,#2a,#dc,#51,#26
	db #00,#2b,#cd,#bb,#46,#29,#dd,#5e
	db #00,#dd,#56,#01,#19,#dd,#75,#00
	db #dd,#74,#01,#18,#aa,#06,#32,#cd
	db #98,#40,#26,#55,#2e,#02,#22,#a5
	db #51,#1e,#00,#cd,#46,#42,#3e,#ff
	db #32,#79,#51,#2a,#b0,#51,#ed,#5b
	db #b3,#51,#19,#3a,#b2,#51,#ce,#00
	db #cd,#bb,#46,#cd,#70,#42,#06,#c8
	db #c5,#cd,#20,#04,#c1,#10,#f9,#c9
	db #2a,#43,#ff,#dd,#7e,#02,#fe,#2d
	db #d0,#5f,#16,#00,#19,#eb,#21,#80
	db #7c,#06,#15,#d5,#c5,#ed,#a0,#ed
	db #a0,#ed,#a0,#ed,#a0,#ed,#a0,#ed
	db #a0,#c1,#d1,#cd,#c0,#01,#10,#eb
	db #dd,#7e,#02,#c6,#06,#dd,#77,#02
	db #c9,#4c,#45,#56,#45,#cc,#4c,#45
	db #56,#45,#4c,#20,#43,#4f,#4d,#50
	db #4c,#45,#54,#45,#c4,#53,#43,#4f
	db #4f,#54,#45,#52,#20,#42,#4f,#4e
	db #55,#d3,#fd,#21,#03,#41,#26,#a4
	db #2e,#19,#3e,#3f,#32,#79,#51,#cd
	db #00,#28,#c9,#53,#43,#4f,#52,#c5
	db #cd,#20,#04,#cd,#18,#04,#cd,#50
	db #16,#21,#ef,#51,#35,#f2,#08,#41
	db #36,#00,#c9,#d6,#1e,#d8,#e5,#d5
	db #6f,#26,#00,#11,#4e,#41,#19,#cb
	db #7e,#28,#0a,#3a,#b3,#51,#5f,#3a
	db #b4,#51,#b3,#28,#16,#3a,#b3,#51
	db #86,#32,#b3,#51,#1e,#00,#cb,#7e
	db #28,#02,#1e,#ff,#3a,#b4,#51,#8b
	db #32,#b4,#51,#d1,#e1,#c9,#02,#02
	db #02,#02,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#04,#04,#00,#00,#fe,#04
	db #00,#00,#00,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#04,#04,#02,#02,#06
	db #06,#02,#02,#02,#02,#02,#0a,#14
	db #e5,#d5,#6f,#26,#00,#11,#86,#41
	db #19,#18,#a2,#2a,#b3,#51,#ed,#5b
	db #b5,#51,#b7,#ed,#52,#28,#0e,#38
	db #07,#13,#ed,#53,#b5,#51,#18,#05
	db #1b,#ed,#53,#b5,#51,#21,#48,#00
	db #b7,#ed,#52,#30,#07,#11,#48,#00
	db #ed,#53,#b5,#51,#cb,#3a,#cb,#1b
	db #4b,#cb,#3a,#cb,#1b,#2a,#c3,#ff
	db #7a,#b3,#28,#30,#19,#11,#14,#00
	db #19,#06,#03,#cd,#e2,#41,#cd,#cf
	db #01,#10,#f8,#23,#36,#cf,#2b,#cb
	db #49,#c8,#cb,#41,#28,#0b,#7e,#e6
	db #aa,#f6,#11,#77,#23,#36,#cf,#2b
	db #c9,#7e,#e6,#55,#f6,#22,#77,#23
	db #36,#cf,#2b,#c9,#06,#04,#11,#14
	db #00,#19,#36,#cf,#23,#36,#cf,#2b
	db #cd,#cf,#01,#10,#f5,#c9,#d5,#5f
	db #e6,#aa,#28,#04,#7e,#e6,#55,#77
	db #7b,#e6,#55,#28,#04,#7e,#e6,#aa
	db #77,#7e,#b3,#77,#d1,#c9,#2a,#b7
	db #51,#26,#00,#29,#29,#29,#11,#bd
	db #53,#19,#e5,#fd,#e1,#26,#c0,#2e
	db #17,#1e,#cf,#cd,#46,#42,#3e,#3c
	db #32,#79,#51,#c3,#00,#28,#e5,#55
	db #6c,#26,#00,#29,#01,#6f,#fe,#09
	db #4e,#23,#46,#6a,#26,#00,#09,#06
	db #05,#7b,#5d,#54,#13,#c5,#e5,#01
	db #10,#00,#77,#ed,#b0,#e1,#c1,#08
	db #cd,#cf,#01,#08,#10,#ec,#e1,#c9
	db #dd,#21,#ae,#42,#4f,#dd,#7e,#00
	db #fe,#24,#c8,#79,#dd,#5e,#00,#dd
	db #56,#01,#dd,#4e,#02,#06,#00,#b7
	db #ed,#52,#99,#38,#03,#04,#18,#f7
	db #19,#89,#f5,#78,#dd,#23,#dd,#23
	db #dd,#23,#e6,#0f,#c6,#30,#e5,#2a
	db #a5,#51,#c5,#cd,#11,#28,#c1,#22
	db #a5,#51,#e1,#f1,#18,#c6,#40,#42
	db #0f,#a0,#86,#01,#10,#27,#00,#e8
	db #03,#00,#64,#00,#00,#0a,#00,#00
	db #01,#00,#00,#24,#3a,#b6,#43,#3c
	db #32,#b6,#43,#fe,#38,#d8,#af,#32
	db #b6,#43,#c9,#dd,#e5,#fd,#21,#49
	db #ff,#dd,#21,#86,#43,#2a,#b6,#43
	db #26,#00,#29,#29,#29,#29,#e5,#29
	db #d1,#19,#11,#80,#94,#19,#3a,#b6
	db #43,#47,#3e,#38,#90,#fe,#2c,#38
	db #02,#3e,#2c,#f5,#b7,#c4,#0e,#43
	db #c1,#3e,#2c,#90,#21,#80,#94,#b7
	db #c4,#0e,#43,#dd,#e1,#c9,#e5,#08
	db #d9,#dd,#7e,#00,#e6,#03,#47,#d9
	db #dd,#7e,#00,#fe,#ff,#28,#2c,#cb
	db #3f,#cb,#3f,#c6,#04,#6f,#08,#26
	db #00,#fd,#5e,#00,#fd,#56,#01,#19
	db #e5,#d9,#e1,#d9,#eb,#e1,#cd,#9d
	db #f7,#08,#3e,#0f,#12,#08,#cd,#63
	db #43,#dd,#23,#fd,#23,#fd,#23,#3d
	db #20,#c4,#c9,#fd,#6e,#00,#fd,#66
	db #01,#5d,#54,#13,#36,#0f,#01,#3b
	db #00,#ed,#b0,#e1,#11,#30,#00,#19
	db #08,#18,#de,#d9,#08,#78,#b7,#28
	db #1a,#c5,#e5,#0e,#31,#1e,#88,#7e
	db #e6,#11,#0f,#57,#7e,#0f,#e6,#77
	db #b3,#77,#23,#5a,#0d,#20,#f0,#e1
	db #c1,#10,#e6,#08,#d9,#c9,#00,#01
	db #02,#03,#04,#04,#05,#05,#05,#06
	db #06,#06,#06,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#06,#06,#06
	db #06,#05,#05,#05,#04,#04,#03,#02
	db #01,#ff,#01,#02,#03,#04,#05,#06
	db #07,#08,#09,#0a,#0b,#0c,#01,#21
	db #80,#94,#11,#81,#94,#01,#80,#0a
	db #36,#00,#ed,#b0,#c9,#3a,#b6,#43
	db #e6,#07,#c0,#3a,#b6,#43,#d6,#08
	db #30,#02,#3e,#30,#67,#2e,#00,#cd
	db #29,#44,#af,#c9,#e5,#4d,#cb,#21
	db #6c,#26,#00,#29,#29,#29,#29,#e5
	db #29,#d1,#19,#06,#00,#09,#01,#80
	db #94,#09,#e5,#d6,#20,#6f,#26,#00
	db #29,#29,#29,#11,#ff,#d5,#19,#d1
	db #06,#08,#7e,#e6,#f0,#4f,#cb,#3f
	db #cb,#3f,#cb,#3f,#cb,#3f,#b1,#12
	db #13,#7e,#e6,#0f,#4f,#87,#87,#87
	db #87,#b1,#12,#13,#23,#e5,#21,#2e
	db #00,#19,#eb,#e1,#10,#dc,#e1,#2c
	db #c9,#dd,#7e,#00,#e6,#7f,#cd,#dc
	db #43,#dd,#cb,#00,#7e,#dd,#23,#c0
	db #18,#ef,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#ad,#3a,#20,#20,#20,#20,#52
	db #4f,#4c,#4c,#20,#4f,#46,#20,#48
	db #4f,#4e,#4f,#55,#52,#20,#20,#20
	db #20,#ba,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#ad,#20,#45,#58,#4f,#43,#45
	db #54,#20,#20,#50,#49,#4c,#4f,#54
	db #20,#20,#20,#30,#30,#30,#38,#31
	db #30,#b0,#20,#43,#48,#52,#49,#53
	db #2e,#20,#45,#4e,#53,#49,#47,#4e
	db #20,#20,#20,#30,#30,#30,#37,#32
	db #30,#b0,#20,#54,#4f,#4e,#59,#2e
	db #2e,#20,#45,#4e,#53,#49,#47,#4e
	db #20,#20,#20,#30,#30,#30,#36,#33
	db #30,#b0,#20,#59,#41,#4b,#2e,#2e
	db #2e,#20,#45,#4e,#53,#49,#47,#4e
	db #20,#20,#20,#30,#30,#30,#35,#34
	db #30,#b0,#20,#42,#45,#4e,#4e,#2e
	db #2e,#20,#45,#4e,#53,#49,#47,#4e
	db #20,#20,#20,#30,#30,#30,#34,#35
	db #30,#b0,#20,#45,#49,#4e,#49,#4f
	db #4e,#20,#20,#43,#41,#44,#45,#54
	db #20,#20,#20,#30,#30,#30,#33,#36
	db #30,#b0,#20,#43,#48,#55,#43,#4b
	db #2e,#20,#20,#43,#41,#44,#45,#54
	db #20,#20,#20,#30,#30,#30,#32,#37
	db #30,#b0,#20,#41,#52,#49,#4f,#4c
	db #41,#20,#20,#43,#41,#44,#45,#54
	db #20,#20,#20,#30,#30,#30,#31,#38
	db #30,#b0,#3d,#3d,#3d,#3d,#3d,#3d
	db #3d,#3d,#3d,#3d,#3d,#3d,#3d,#3d
	db #3d,#3d,#3d,#3d,#3d,#3d,#3d,#3d
	db #3d,#bd,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5e
	db #5e,#de,#00,#2a,#b0,#51,#3a,#b2
	db #51,#ed,#5b,#b3,#51,#19,#ce,#00
	db #cd,#bb,#46,#22,#b0,#51,#32,#b2
	db #51,#dd,#21,#82,#44,#06,#08,#cd
	db #53,#46,#4f,#3a,#b7,#51,#b9,#38
	db #11,#20,#17,#cd,#84,#46,#2a,#b0
	db #51,#3a,#b2,#51,#b7,#ed,#52,#99
	db #30,#08,#11,#18,#00,#dd,#19,#10
	db #de,#c9,#05,#78,#b7,#28,#11,#87
	db #87,#87,#4f,#87,#81,#4f,#06,#00
	db #21,#29,#45,#11,#41,#45,#ed,#b8
	db #dd,#e5,#e1,#23,#5d,#54,#13,#01
	db #05,#00,#36,#2e,#ed,#b0,#cd,#e0
	db #45,#cd,#02,#46,#cd,#99,#47,#c9
	db #dd,#e5,#11,#08,#00,#dd,#19,#2a
	db #b7,#51,#26,#00,#29,#29,#29,#11
	db #bd,#53,#19,#dd,#e5,#d1,#01,#07
	db #00,#ed,#b0,#7e,#e6,#7f,#12,#dd
	db #e1,#c9,#dd,#e5,#dd,#e5,#fd,#e1
	db #11,#11,#00,#fd,#19,#2a,#b0,#51
	db #3a,#b2,#51,#dd,#21,#ae,#42,#4f
	db #dd,#7e,#00,#fe,#24,#28,#2b,#79
	db #dd,#5e,#00,#dd,#56,#01,#dd,#4e
	db #02,#06,#00,#b7,#ed,#52,#99,#38
	db #03,#04,#18,#f7,#19,#89,#f5,#78
	db #dd,#23,#dd,#23,#dd,#23,#e6,#0f
	db #c6,#30,#fd,#77,#00,#fd,#23,#f1
	db #18,#cd,#fd,#2b,#fd,#cb,#00,#fe
	db #dd,#e1,#c9,#dd,#e5,#11,#08,#00
	db #dd,#19,#21,#bd,#53,#0e,#00,#dd
	db #e5,#7e,#e6,#7f,#dd,#be,#00,#20
	db #09,#cb,#7e,#20,#11,#23,#dd,#23
	db #18,#ef,#dd,#e1,#dd,#e5,#0c,#cb
	db #7e,#23,#28,#fb,#18,#e3,#dd,#e1
	db #dd,#e1,#79,#c9,#dd,#e5,#11,#11
	db #00,#dd,#19,#21,#00,#00,#0e,#00
	db #dd,#7e,#00,#e6,#7f,#d6,#30,#fe
	db #0a,#30,#1c,#ed,#47,#79,#e5,#29
	db #8f,#29,#8f,#d1,#19,#89,#29,#8f
	db #4f,#ed,#57,#5f,#16,#00,#19,#79
	db #ce,#00,#4f,#dd,#23,#18,#d9,#eb
	db #dd,#e1,#c9,#e5,#4f,#29,#8f,#e5
	db #47,#29,#8f,#d1,#19,#88,#29,#8f
	db #29,#8f,#d1,#19,#89,#29,#8f,#c9
	db #cd,#b7,#43,#dd,#21,#3a,#44,#dd
	db #22,#c3,#51,#c9,#dd,#2a,#c3,#51
	db #cd,#d3,#42,#cd,#c4,#42,#cd,#c5
	db #43,#dd,#7e,#00,#b7,#20,#09,#dd
	db #21,#3a,#44,#3e,#ff,#32,#c5,#51
	db #dd,#22,#c3,#51,#c9,#3a,#c7,#51
	db #b7,#c8,#3a,#f4,#51,#fe,#04,#c0
	db #06,#7f,#0e,#00,#ed,#49,#0e,#4b
	db #ed,#49,#0e,#01,#ed,#49,#0e,#40
	db #ed,#49,#0e,#02,#ed,#49,#0e,#40
	db #ed,#49,#0e,#03,#ed,#49,#0e,#40
	db #ed,#49,#01,#8d,#7f,#ed,#49,#c9
	db #dd,#21,#47,#ff,#06,#2e,#c5,#dd
	db #6e,#00,#dd,#66,#01,#5d,#54,#13
	db #01,#3b,#00,#36,#cf,#ed,#b0,#dd
	db #23,#dd,#23,#c1,#10,#e8,#c9,#43
	db #4f,#4e,#47,#52,#41,#54,#55,#4c
	db #41,#54,#49,#4f,#4e,#53,#20,#48
	db #49,#47,#48,#20,#53,#43,#4f,#52
	db #45,#d2,#20,#20,#55,#53,#45,#20
	db #4c,#45,#46,#54,#20,#52,#49,#47
	db #48,#54,#20,#41,#4e,#44,#20,#46
	db #49,#52,#c5,#20,#20,#20,#20,#54
	db #4f,#20,#49,#4e,#50,#55,#54,#20
	db #59,#4f,#55,#52,#20,#4e,#41,#4d
	db #c5,#dd,#e5,#cd,#9d,#27,#fd,#21
	db #4f,#47,#2e,#04,#26,#05,#3e,#ff
	db #32,#79,#51,#cd,#00,#28,#3e,#cf
	db #32,#79,#51,#fd,#21,#6a,#47,#2e
	db #04,#26,#0f,#cd,#00,#28,#fd,#21
	db #83,#47,#2e,#04,#26,#15,#cd,#00
	db #28,#dd,#e1,#3e,#06,#32,#80,#94
	db #3e,#3f,#32,#79,#51,#dd,#e5,#dd
	db #23,#3a,#79,#51,#ee,#30,#32,#79
	db #51,#cd,#20,#04,#cd,#20,#04,#26
	db #28,#2e,#07,#e5,#1e,#00,#cd,#46
	db #42,#e1,#fd,#e1,#fd,#e5,#cd,#00
	db #28,#cd,#32,#48,#cd,#5a,#48,#dd
	db #e5,#fd,#e5,#cd,#7c,#04,#3a,#19
	db #55,#cb,#67,#fd,#e1,#dd,#e1,#28
	db #d0,#dd,#e5,#fd,#e5,#cd,#7c,#04
	db #3a,#19,#55,#cb,#67,#fd,#e1,#dd
	db #e1,#20,#ee,#3a,#80,#94,#3d,#32
	db #80,#94,#20,#ab,#dd,#e1,#cd,#bb
	db #27,#c9,#dd,#e5,#fd,#e5,#cd,#7c
	db #04,#3a,#19,#55,#cb,#5f,#fd,#e1
	db #dd,#e1,#c8,#dd,#34,#00,#dd,#7e
	db #00,#fe,#5b,#20,#05,#dd,#36,#00
	db #2e,#c9,#fe,#2f,#c0,#dd,#36,#00
	db #41,#c9,#dd,#e5,#fd,#e5,#cd,#7c
	db #04,#3a,#19,#55,#cb,#57,#fd,#e1
	db #dd,#e1,#c8,#dd,#35,#00,#dd,#7e
	db #00,#fe,#40,#20,#05,#dd,#36,#00
	db #2e,#c9,#fe,#2d,#c0,#dd,#36,#00
	db #5a,#c9,#3a,#ac,#51,#4f,#3a,#ad
	db #51,#b9,#c8,#3a,#ac,#51,#32,#ad
	db #51,#fe,#04,#38,#02,#3e,#04,#47
	db #04,#0e,#00,#c5,#79,#cd,#a5,#48
	db #c1,#0c,#10,#f7,#c9,#6f,#26,#00
	db #29,#11,#c4,#48,#19,#e5,#5e,#23
	db #56,#eb,#3e,#47,#cd,#37,#13,#e1
	db #23,#23,#5e,#23,#56,#eb,#3e,#43
	db #cd,#37,#13,#c9,#ff,#ff,#17,#ae
	db #1f,#ae,#17,#b6,#1f,#b6,#ff,#ff
	db #3a,#b7,#51,#fe,#09,#d8,#3a,#e9
	db #51,#4f,#3a,#ba,#51,#81,#dd,#21
	db #d0,#51,#dd,#be,#08,#d0,#3a,#ba
	db #51,#fe,#04,#d0,#cd,#2c,#1f,#c8
	db #3a,#85,#56,#b7,#c0,#2b,#2b,#7e
	db #dd,#77,#00,#23,#7e,#dd,#77,#01
	db #dd,#36,#02,#7d,#dd,#36,#05,#00
	db #dd,#36,#06,#00,#dd,#36,#0a,#00
	db #dd,#36,#03,#1e,#dd,#36,#0b,#20
	db #dd,#36,#0f,#01,#fd,#21,#55,#55
	db #06,#0b,#3e,#04,#fd,#cb,#0f,#46
	db #28,#0d,#3c,#11,#10,#00,#fd,#19
	db #10,#f2,#dd,#36,#0f,#00,#c9,#dd
	db #77,#0c,#dd,#36,#0e,#0a,#fd,#36
	db #0e,#0b,#fd,#36,#03,#49,#fd,#36
	db #0b,#4a,#fd,#36,#0f,#01,#dd,#cb
	db #0f,#f6,#dd,#cb,#0f,#ee,#dd,#7e
	db #00,#fd,#77,#00,#dd,#7e,#01,#fd
	db #77,#01,#dd,#7e,#02,#c6,#08,#fd
	db #77,#02,#21,#86,#56,#11,#87,#56
	db #36,#00,#01,#1f,#00,#ed,#b0,#cd
	db #94,#21,#dd,#7e,#05,#32,#85,#56
	db #dd,#7e,#06,#32,#86,#56,#21,#e9
	db #51,#34,#c9,#fd,#36,#0e,#12,#fd
	db #36,#0f,#01,#21,#85,#56,#36,#00
	db #fd,#e1,#c9,#cd,#17,#1c,#c9,#3a
	db #ba,#51,#3c,#32,#ba,#51,#c9,#f5
	db #c5,#d5,#e5,#dd,#e5,#fd,#e5,#dd
	db #7e,#03,#fe,#1e,#30,#16,#dd,#7e
	db #06,#cb,#7f,#28,#01,#2f,#fe,#03
	db #38,#0a,#2e,#0b,#01,#00,#00,#3e
	db #02,#cd,#bf,#28,#fd,#e1,#dd,#e1
	db #e1,#d1,#c1,#f1,#c9,#3a,#e3,#51
	db #dd,#21,#d0,#51,#dd,#be,#02,#d0
	db #cd,#2c,#1f,#c8,#2b,#2b,#7e,#dd
	db #77,#00,#23,#7e,#dd,#77,#01,#dd
	db #36,#02,#7d,#dd,#36,#0e,#13,#06
	db #ff,#ed,#5f,#e6,#01,#28,#02,#06
	db #01,#dd,#70,#05,#dd,#36,#06,#00
	db #dd,#36,#0a,#00,#dd,#36,#0f,#01
	db #dd,#36,#03,#4d,#dd,#36,#0b,#4d
	db #dd,#36,#0c,#00,#21,#e3,#51,#34
	db #c9,#dd,#7e,#0c,#b7,#28,#05,#3d
	db #dd,#77,#0c,#c9,#cd,#f3,#01,#7d
	db #e6,#0f,#c6,#0a,#dd,#77,#0c,#7c
	db #e6,#07,#d6,#04,#dd,#77,#05,#cb
	db #3c,#cb,#3c,#7c,#e6,#0f,#d6,#08
	db #dd,#77,#06,#c9,#dd,#cb,#05,#7e
	db #20,#09,#dd,#36,#03,#4d,#dd,#36
	db #0b,#4d,#c9,#dd,#36,#03,#4e,#dd
	db #36,#0b,#4e,#c9,#3a,#e4,#51,#dd
	db #21,#d0,#51,#dd,#be,#03,#d0,#cd
	db #2c,#1f,#c8,#2b,#2b,#7e,#dd,#77
	db #00,#23,#7e,#dd,#77,#01,#dd,#36
	db #02,#7d,#dd,#36,#0e,#14,#06,#fd
	db #ed,#5f,#e6,#01,#28,#02,#06,#03
	db #dd,#70,#05,#dd,#36,#06,#00,#dd
	db #36,#0a,#00,#dd,#36,#0f,#01,#dd
	db #36,#03,#4f,#dd,#36,#0b,#4f,#21
	db #e4,#51,#34,#c9,#dd,#46,#02,#3a
	db #17,#55,#b8,#c8,#30,#09,#dd,#7e
	db #02,#d6,#01,#dd,#77,#02,#c9,#dd
	db #7e,#02,#c6,#01,#dd,#77,#02,#c9
	db #dd,#cb,#05,#7e,#20,#09,#dd,#36
	db #03,#4f,#dd,#36,#0b,#4f,#c9,#dd
	db #36,#03,#50,#dd,#36,#0b,#50,#c9
	db #3a,#e5,#51,#dd,#21,#d0,#51,#dd
	db #be,#04,#d0,#cd,#2c,#1f,#c8,#2b
	db #2b,#7e,#dd,#77,#00,#23,#7e,#dd
	db #77,#01,#dd,#36,#02,#7d,#dd,#36
	db #0e,#15,#06,#ff,#ed,#5f,#e6,#01
	db #28,#02,#06,#01,#dd,#70,#05,#dd
	db #36,#06,#fc,#dd,#36,#0a,#00,#dd
	db #36,#0f,#01,#dd,#36,#03,#51,#dd
	db #36,#0b,#51,#21,#e5,#51,#34,#c9
	db #dd,#7e,#02,#fe,#90,#0e,#90,#30
	db #05,#fe,#1d,#0e,#1d,#d0,#dd,#71
	db #02,#ed,#5f,#cb,#5f,#28,#08,#dd
	db #7e,#05,#ed,#44,#dd,#77,#05,#ed
	db #5f,#cb,#67,#28,#0e,#3e,#fb,#dd
	db #cb,#06,#7e,#28,#02,#3e,#05,#dd
	db #77,#06,#c9,#3e,#fe,#dd,#cb,#06
	db #7e,#28,#02,#3e,#02,#dd,#77,#06
	db #c9,#3a,#e6,#51,#dd,#21,#d0,#51
	db #dd,#be,#05,#d0,#cd,#2c,#1f,#c8
	db #2b,#2b,#7e,#dd,#77,#00,#23,#7e
	db #dd,#77,#01,#dd,#36,#02,#7d,#dd
	db #36,#0e,#16,#06,#ff,#ed,#5f,#e6
	db #01,#28,#02,#06,#01,#dd,#70,#05
	db #dd,#36,#06,#fc,#dd,#36,#0a,#00
	db #dd,#36,#0f,#11,#dd,#36,#0c,#1e
	db #dd,#36,#03,#52,#dd,#36,#0b,#52
	db #21,#e6,#51,#34,#c9,#3a,#e7,#51
	db #dd,#21,#d0,#51,#dd,#be,#06,#d0
	db #cd,#2c,#1f,#c8,#2b,#2b,#7e,#dd
	db #77,#00,#23,#7e,#dd,#77,#01,#dd
	db #36,#02,#7d,#dd,#36,#0e,#17,#06
	db #ff,#ed,#5f,#e6,#01,#28,#02,#06
	db #01,#dd,#70,#05,#dd,#36,#06,#fc
	db #dd,#36,#0a,#00,#dd,#36,#0f,#01
	db #dd,#36,#03,#54,#dd,#36,#0b,#54
	db #21,#e7,#51,#34,#c9,#dd,#7e,#03
	db #ee,#01,#dd,#77,#03,#dd,#7e,#0b
	db #ee,#01,#dd,#77,#0b,#c9,#dd,#7e
	db #02,#fe,#64,#d0,#dd,#36,#06,#00
	db #dd,#cb,#0f,#a6,#c9,#dd,#cb,#0f
	db #66,#20,#eb,#dd,#36,#06,#00,#dd
	db #7e,#0c,#e6,#3f,#4f,#dd,#7e,#0c
	db #e6,#c0,#47,#79,#b7,#28,#26,#3d
	db #b0,#dd,#77,#0c,#af,#cb,#20,#cb
	db #17,#cb,#20,#cb,#17,#6f,#26,#00
	db #29,#11,#55,#4c,#19,#dd,#7e,#02
	db #86,#dd,#77,#02,#c9,#fe,#14,#02
	db #14,#02,#0a,#fe,#0a,#78,#c6,#40
	db #e6,#c0,#47,#4f,#af,#cb,#20,#cb
	db #17,#cb,#20,#cb,#17,#6f,#26,#00
	db #29,#23,#11,#55,#4c,#19,#7e,#b1
	db #dd,#77,#0c,#cb,#71,#c0,#dd,#7e
	db #05,#ed,#44,#dd,#77,#05,#c9,#dd
	db #7e,#02,#fe,#90,#0e,#90,#30,#05
	db #fe,#1d,#0e,#1d,#d0,#dd,#71,#02
	db #3e,#fe,#dd,#cb,#06,#7e,#28,#02
	db #3e,#02,#dd,#77,#06,#c9,#2a,#a6
	db #51,#26,#00,#29,#11,#6f,#fe,#19
	db #5e,#23,#56,#2a,#a5,#51,#26,#00
	db #19,#06,#08,#36,#00,#23,#36,#00
	db #2b,#cd,#cf,#01,#10,#f5,#c9,#44
	db #45,#56,#49,#53,#45,#44,#20,#52
	db #2e,#47,#4f,#4f,#44,#4c,#45,#59
	db #20,#2f,#20,#41,#2e,#43,#52,#4f
	db #57,#54,#48,#45,#d2,#20,#20,#20
	db #20,#28,#43,#29,#20,#48,#41,#4e
	db #4e,#41,#20,#42,#41,#52,#42,#45
	db #52,#41,#20,#49,#4e,#43,#2e,#20
	db #20,#20,#a0,#46,#31,#2d,#4b,#45
	db #59,#53,#2e,#2e,#2e,#2e,#2e,#2e
	db #2e,#2e,#2e,#2e,#2e,#2e,#2e,#46
	db #33,#2d,#4f,#50,#54,#49,#4f,#4e
	db #d3,#fd,#21,#c7,#4c,#2e,#00,#26
	db #5c,#3e,#3f,#32,#79,#51,#cd,#00
	db #28,#fd,#21,#03,#4d,#2e,#00,#26
	db #c3,#3e,#33,#32,#79,#51,#cd,#00
	db #28,#fd,#21,#e5,#4c,#2e,#00,#26
	db #40,#3e,#ff,#32,#79,#51,#c3,#00
	db #28,#dd,#21,#f5,#ff,#3e,#05,#dd
	db #6e,#00,#dd,#66,#01,#e5,#d1,#13
	db #36,#cf,#01,#3b,#00,#ed,#b0,#dd
	db #23,#dd,#23,#3d,#20,#e9,#c9,#3e
	db #42,#cd,#79,#01,#c8,#3e,#15,#cd
	db #79,#01,#c8,#3e,#17,#cd,#79,#01
	db #c8,#26,#40,#2e,#18,#3e,#33,#32
	db #79,#51,#fd,#21,#a0,#4d,#cd,#00
	db #28,#3e,#2b,#cd,#79,#01,#c0,#3e
	db #2e,#cd,#79,#01,#28,#f3,#af,#c9
	db #41,#42,#4f,#52,#54,#20,#59,#2f
	db #ce,#50,#41,#55,#53,#45,#c4,#3e
	db #44,#cd,#79,#01,#c8,#3e,#44,#cd
	db #79,#01,#20,#f9,#26,#40,#2e,#1a
	db #3e,#33,#32,#79,#51,#fd,#21,#a9
	db #4d,#cd,#00,#28,#3e,#44,#cd,#79
	db #01,#28,#f9,#3e,#44,#cd,#79,#01
	db #20,#f9,#c9,#3a,#dc,#51,#fe,#0a
	db #38,#02,#3e,#0a,#47,#dd,#21,#cc
	db #51,#21,#1d,#52,#11,#10,#00,#78
	db #b7,#28,#04,#19,#05,#18,#f8,#06
	db #10,#7e,#dd,#77,#00,#23,#dd,#23
	db #10,#f7,#21,#e1,#51,#01,#0b,#00
	db #11,#e2,#51,#36,#00,#ed,#b0,#21
	db #01,#52,#06,#06,#11,#03,#00,#cb
	db #8e,#19,#10,#fb,#af,#32,#78,#51
	db #32,#00,#00,#32,#ab,#51,#21,#85
	db #56,#11,#86,#56,#01,#20,#00,#36
	db #00,#ed,#b0,#21,#e9,#54,#11,#ea
	db #54,#01,#0b,#00,#36,#00,#ed,#b0
	db #21,#f5,#54,#11,#f6,#54,#01,#1f
	db #00,#36,#00,#ed,#b0,#21,#ff,#dd
	db #11,#00,#de,#01,#ff,#01,#36,#00
	db #ed,#b0,#21,#ad,#54,#11,#ae,#54
	db #01,#3b,#00,#36,#00,#ed,#b0,#21
	db #cd,#52,#11,#15,#55,#01,#f0,#00
	db #ed,#b0,#dd,#21,#15,#55,#2a,#5e
	db #51,#26,#00,#29,#29,#11,#24,#00
	db #19,#7c,#e6,#03,#67,#dd,#75,#00
	db #dd,#74,#01,#dd,#36,#02,#65,#dd
	db #36,#06,#00,#dd,#36,#05,#00,#dd
	db #36,#03,#07,#dd,#36,#0c,#04,#dd
	db #36,#07,#04,#dd,#36,#0e,#00,#dd
	db #36,#0f,#01,#c3,#02,#29,#3a,#dc
	db #51,#fe,#0a,#38,#02,#3e,#0a,#47
	db #dd,#21,#cc,#51,#21,#1d,#52,#11
	db #10,#00,#78,#b7,#28,#04,#19,#05
	db #18,#f8,#06,#10,#7e,#dd,#77,#00
	db #23,#dd,#23,#10,#f7,#21,#e1,#51
	db #01,#0b,#00,#11,#e2,#51,#36,#00
	db #ed,#b0,#af,#32,#ca,#51,#32,#78
	db #51,#32,#00,#00,#32,#ab,#51,#32
	db #b6,#43,#32,#54,#51,#32,#53,#51
	db #32,#5e,#51,#32,#ed,#51,#32,#ee
	db #51,#32,#ef,#51,#32,#f0,#51,#32
	db #85,#56,#21,#85,#56,#11,#86,#56
	db #01,#20,#00,#36,#00,#ed,#b0,#21
	db #e9,#54,#11,#ea,#54,#01,#0b,#00
	db #36,#00,#ed,#b0,#21,#f5,#54,#11
	db #f6,#54,#01,#1f,#00,#36,#00,#ed
	db #b0,#21,#ff,#dd,#11,#00,#de,#01
	db #ff,#01,#36,#00,#ed,#b0,#21,#ad
	db #54,#11,#ae,#54,#01,#3b,#00,#36
	db #00,#ed,#b0,#21,#cd,#52,#11,#15
	db #55,#01,#f0,#00,#ed,#b0,#cd,#78
	db #50,#cd,#c7,#50,#3a,#b5,#51,#fe
	db #48,#c2,#02,#29,#3a,#b7,#51,#3c
	db #fe,#0a,#38,#0c,#0e,#09,#3a,#ba
	db #51,#fe,#04,#38,#02,#0e,#0a,#79
	db #32,#b7,#51,#3a,#ac,#51,#3c,#32
	db #ac,#51,#2a,#b3,#51,#ed,#5b,#b0
	db #51,#19,#22,#b0,#51,#3a,#b2,#51
	db #ce,#00,#32,#b2,#51,#21,#00,#00
	db #22,#b3,#51,#c3,#02,#29,#3a,#dd
	db #51,#fe,#0b,#38,#02,#3e,#0b,#4f
	db #3a,#e0,#51,#b7,#79,#28,#04,#af
	db #32,#e0,#51,#32,#dc,#51,#47,#dd
	db #21,#cc,#51,#21,#1d,#52,#11,#10
	db #00,#78,#b7,#28,#04,#19,#05,#18
	db #f8,#06,#10,#7e,#dd,#77,#00,#23
	db #dd,#23,#10,#f7,#21,#e1,#51,#01
	db #0b,#00,#11,#e2,#51,#36,#00,#ed
	db #b0,#af,#32,#ba,#51,#32,#78,#51
	db #32,#00,#00,#32,#b6,#43,#32,#54
	db #51,#32,#53,#51,#32,#5e,#51,#32
	db #ed,#51,#32,#ee,#51,#32,#ef,#51
	db #32,#f0,#51,#32,#85,#56,#32,#ca
	db #51,#32,#cb,#51,#32,#ab,#51,#32
	db #b7,#51,#32,#b0,#51,#32,#b1,#51
	db #32,#b2,#51,#32,#b3,#51,#32,#b4
	db #51,#21,#28,#00,#22,#ae,#51,#3e
	db #03,#32,#ac,#51,#21,#ad,#54,#11
	db #ae,#54,#01,#3b,#00,#36,#00,#ed
	db #b0,#21,#cd,#52,#11,#15,#55,#01
	db #f0,#00,#ed,#b0,#21,#e9,#54,#11
	db #ea,#54,#01,#0b,#00,#36,#00,#ed
	db #b0,#21,#f5,#54,#11,#f6,#54,#01
	db #1f,#00,#36,#00,#ed,#b0,#cd,#c7
	db #50,#21,#ff,#dd,#11,#00,#de,#01
	db #ff,#01,#36,#00,#ed,#b0,#cd,#78
	db #50,#cd,#34,#51,#cd,#02,#29,#c9
	db #21,#00,#72,#01,#00,#04,#7e,#fe
	db #0e,#28,#04,#fe,#0f,#20,#02,#36
	db #00,#23,#0b,#78,#b1,#20,#ef,#3a
	db #cc,#51,#47,#cd,#99,#50,#10,#fb
	db #c9,#cd,#f3,#01,#7d,#e6,#fc,#6f
	db #7c,#e6,#03,#67,#e5,#11,#00,#72
	db #19,#7e,#d1,#b7,#28,#06,#21,#04
	db #00,#19,#18,#ec,#23,#7e,#2b,#b7
	db #28,#06,#21,#04,#00,#19,#18,#e0
	db #36,#0f,#23,#36,#0e,#2b,#c9,#06
	db #06,#21,#03,#72,#0e,#00,#dd,#21
	db #ff,#51,#7e,#fe,#26,#28,#07,#11
	db #04,#00,#19,#0c,#18,#f4,#e5,#7d
	db #e6,#fc,#6f,#eb,#21,#10,#51,#c5
	db #01,#0c,#00,#ed,#b0,#c1,#69,#2c
	db #26,#00,#29,#29,#11,#06,#00,#19
	db #dd,#75,#00,#dd,#74,#01,#dd,#36
	db #02,#00,#11,#03,#00,#dd,#19,#e1
	db #11,#04,#00,#19,#0c,#10,#c3,#c9
	db #2f,#2c,#29,#26,#30,#2d,#2a,#27
	db #31,#2e,#2b,#28,#00,#2c,#29,#26
	db #00,#44,#2a,#27,#00,#45,#2b,#28
	db #2f,#2c,#29,#26,#46,#2d,#2a,#27
	db #31,#2e,#2b,#28,#21,#01,#72,#0e
	db #00,#7e,#fe,#3c,#28,#07,#11,#04
	db #00,#19,#0c,#18,#f4,#69,#26,#00
	db #29,#29,#11,#06,#00,#19,#22,#c8
	db #51,#c9,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#33,#00,#74,#00,#8c,#ff,#40
	db #00,#c0,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #11,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#39,#3a,#44,#00,#00,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l51f4 equ $ + 4
	db #00,#00,#00,#1d,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0f,#00,#ff
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#0a,#00,#bc
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#09,#00,#bc
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#08,#00,#00
	db #02,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#07,#01,#00
	db #02,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#06,#01,#c2
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#06,#01,#c2
	db #01,#02,#01,#01,#00,#01,#00,#00
	db #00,#00,#01,#00,#00,#05,#01,#90
	db #01,#02,#02,#01,#00,#01,#01,#00
	db #00,#00,#01,#00,#00,#04,#02,#90
	db #01,#03,#02,#02,#00,#01,#01,#01
	db #00,#00,#01,#00,#00,#03,#02,#5e
	db #01,#02,#03,#03,#01,#02,#01,#01
	db #00,#00,#01,#00,#00,#03,#03,#c8
	db #00,#02,#01,#01,#01,#01,#01,#02
	db #00,#04,#01,#00,#00,#24,#00,#65
	db #07,#00,#00,#00,#04,#00,#00,#00
	db #00,#04,#00,#00,#01,#7c,#00,#64
	db #23,#00,#00,#00,#04,#00,#00,#00
	db #24,#00,#00,#01,#01,#00,#00,#00
	db #22,#00,#00,#00,#00,#00,#00,#00
	db #22,#00,#00,#02,#02,#00,#00,#00
	db #22,#00,#00,#00,#00,#00,#00,#00
	db #22,#00,#00,#02,#02,#00,#00,#00
	db #22,#00,#00,#00,#00,#00,#00,#00
	db #22,#00,#00,#02,#02,#00,#00,#00
	db #22,#00,#00,#00,#00,#00,#00,#00
	db #22,#00,#00,#02,#02,#00,#00,#00
	db #22,#00,#00,#00,#00,#00,#00,#00
	db #22,#00,#00,#02,#02,#00,#00,#00
	db #22,#00,#00,#00,#00,#00,#00,#00
	db #22,#00,#00,#02,#00,#00,#00,#00
	db #22,#00,#00,#00,#00,#00,#00,#00
	db #22,#00,#00,#02,#00,#00,#00,#00
	db #22,#00,#00,#00,#00,#00,#00,#00
	db #22,#00,#00,#02,#00,#00,#00,#00
	db #22,#00,#00,#00,#00,#00,#00,#00
	db #22,#00,#00,#02,#00,#00,#00,#00
	db #22,#00,#00,#00,#00,#00,#00,#00
	db #22,#00,#00,#02,#00,#00,#00,#00
	db #22,#00,#00,#00,#00,#00,#00,#00
	db #22,#00,#00,#02,#00,#00,#00,#00
	db #22,#00,#00,#00,#00,#00,#00,#00
	db #22,#00,#00,#02,#00,#00,#00,#00
	db #22,#00,#00,#00,#00,#00,#00,#00
	db #22,#00,#00,#02,#00,#20,#43,#41
	db #44,#45,#54,#20,#a0,#45,#4e,#53
	db #49,#47,#4e,#20,#a0,#20,#50,#49
	db #4c,#4f,#54,#20,#a0,#53,#55,#42
	db #20,#4c,#54,#2e,#a0,#4c,#27,#54
	db #45,#4e,#41,#4e,#d4,#43,#27,#4d
	db #41,#4e,#44,#45,#d2,#43,#41,#50
	db #54,#41,#49,#4e,#a0,#4c,#54,#20
	db #43,#4d,#4d,#44,#d2,#43,#4d,#4d
	db #4f,#44,#4f,#52,#c5,#52,#2e,#41
	db #44,#4d,#49,#52,#cc,#41,#44,#4d
	db #49,#52,#41,#4c,#a0,#04,#04,#04
	db #00,#04,#aa,#ae,#0a,#0e,#0a,#69
	db #82,#e4,#29,#c0,#24,#24,#f0,#60
	db #20,#24,#42,#42,#42,#24,#00,#a4
	db #4e,#a4,#00,#00,#00,#0e,#20,#40
	db #02,#04,#08,#00,#20,#e4,#ac,#a4
	db #a4,#ee,#ee,#22,#c6,#82,#ee,#ae
	db #a8,#ee,#22,#2e,#ce,#82,#e4,#a4
	db #e4,#ee,#aa,#4e,#a2,#e2,#00,#22
	db #00,#22,#04,#20,#4e,#80,#4e,#20
	db #8e,#42,#24,#40,#84,#f0,#90,#b0
	db #80,#e0,#4e,#aa,#ec,#aa,#ae,#ec
	db #8a,#8a,#8a,#ec,#ee,#88,#cc,#88
	db #e8,#ea,#8a,#ae,#aa,#ea,#ee,#44
	db #44,#44,#ec,#a8,#a8,#c8,#a8,#ae
	db #ac,#ea,#aa,#aa,#aa,#ee,#aa,#ae
	db #a8,#e8,#ee,#aa,#ac,#aa,#da,#ee
	db #84,#e4,#24,#e4,#aa,#aa,#aa,#aa
	db #e4,#aa,#aa,#a4,#ea,#aa,#ae,#a2
	db #44,#48,#4e,#40,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#cf,#cf,#8a
	db #8b,#45,#47,#00,#03,#00,#00,#55
	db #55,#aa,#aa,#ff,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#00,#01,#01,#11,#01,#02,#18
	db #01,#03,#36,#01,#04,#5e,#01,#07
	db #9a,#01,#0b,#58,#02,#11,#ff,#05
	db #11,#ff,#05,#0b,#58,#02,#07,#9a
	db #01,#04,#5e,#01,#03,#36,#01,#02
	db #22,#01,#01,#11,#01,#66,#06,#80
	db #8b,#07,#0a,#0f,#00,#0f,#0a,#00
	db #01,#17,#0a,#01,#00,#1f,#0a,#02
	db #01,#27,#0a,#03,#00,#2f,#0a,#04
	db #01,#03,#2c,#00,#00,#0b,#2c,#00
	db #00,#13,#2c,#00,#00,#1b,#2c,#00
	db #00,#23,#2c,#00,#00,#2b,#2c,#00
	db #00,#33,#2c,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#04,#07
	db #06,#01,#07,#09,#08,#0d,#09,#14
	db #0a,#01,#0b,#0a,#03,#0f,#bc,#04
	db #b5,#04,#be,#04,#b9,#04,#11,#01
	db #12,#02,#c8,#0c,#1d,#04,#0f,#05
	db #01,#06,#01,#07,#0a,#08,#0d,#09
	db #0a,#0a,#01,#0b,#03,#03,#0f,#11
	db #1e,#18,#03,#19,#05,#1a,#00,#1b
	db #01,#1c,#01,#bc,#1e,#1d,#04,#0f
	db #06,#01,#08,#0d,#03,#0f,#11,#0a
	db #ca,#14,#1c,#11,#18,#ff,#19,#06
	db #00,#05,#1c,#17,#00,#05,#1c,#20
	db #82,#32,#18,#01,#19,#05,#1c,#01
	db #00,#96,#1d,#0c,#0c,#0d,#0a,#03
	db #10,#1c,#01,#18,#00,#19,#06,#00
	db #3c,#1d,#04,#01,#05,#02,#06,#01
	db #07,#0a,#08,#0a,#09,#28,#03,#0f
	db #11,#01,#18,#01,#19,#14,#1c,#01
	db #1a,#fe,#1b,#28,#df,#c8,#1d,#04
	db #0f,#06,#01,#07,#01,#08,#0a,#09
	db #64,#03,#0f,#18,#01,#19,#01,#1c
	db #01,#11,#0a,#13,#0a,#c8,#14,#1d
	db #04,#0f,#06,#03,#08,#08,#03,#0f
	db #11,#64,#9a,#1e,#1d,#04,#0f,#06
	db #01,#07,#05,#03,#0f,#08,#08,#18
	db #ff,#19,#05,#1c,#1f,#00,#14,#18
	db #01,#1c,#0a,#85,#0a,#1c,#14,#86
	db #28,#1d,#04,#0f,#06,#05,#08,#04
	db #03,#0f,#1c,#0a,#df,#0a,#1d,#04
	db #01,#05,#03,#03,#0f,#06,#01,#07
	db #05,#08,#0a,#09,#1e,#1c,#09,#18
	db #ff,#19,#05,#13,#09,#1a,#33,#11
	db #fd,#a4,#5a,#1d,#04,#07,#05,#01
	db #03,#0f,#06,#01,#07,#05,#08,#0a
	db #09,#1e,#a4,#06,#a6,#06,#a8,#06
	db #ab,#06,#a9,#06,#a8,#06,#bc,#0c
	db #be,#06,#bc,#1e,#00,#06,#ab,#06
	db #a8,#06,#a6,#06,#a4,#06,#1d,#03
	db #0f,#04,#0f,#06,#02,#07,#01,#1c
	db #1f,#1a,#80,#1b,#03,#13,#64,#11
	db #d2,#97,#19,#1d,#43,#55,#52,#53
	db #4f,#52,#20,#55,#d0,#43,#55,#52
	db #53,#4f,#52,#20,#52,#49,#47,#48
	db #d4,#43,#55,#52,#53,#4f,#52,#20
	db #44,#4f,#57,#ce,#46,#b9,#46,#b6
	db #46,#b3,#45,#4e,#54,#45,#d2,#ae
	db #43,#55,#52,#53,#4f,#52,#20,#4c
	db #45,#46,#d4,#43,#4f,#50,#d9,#46
	db #b7,#46,#b8,#46,#b5,#46,#b1,#46
	db #b2,#46,#b0,#43,#4c,#d2,#53,#51
	db #55,#41,#52,#45,#20,#42,#52,#c1
	db #52,#45,#54,#55,#52,#ce,#53,#51
	db #55,#41,#52,#45,#20,#4b,#45,#d4
	db #46,#b4,#53,#48,#49,#46,#d4,#44
	db #49,#d6,#43,#54,#52,#cc,#55,#50
	db #20,#41,#52,#52,#4f,#d7,#ad,#c0
	db #d0,#bb,#ba,#af,#ae,#b0,#b9,#cf
	db #c9,#cc,#cb,#cd,#ac,#b8,#b7,#d5
	db #d9,#c8,#ca,#ce,#53,#50,#41,#43
	db #c5,#b6,#b5,#d2,#d4,#c7,#c6,#c2
	db #d6,#b4,#b3,#c5,#d7,#d3,#c4,#c3
	db #d8,#b1,#b2,#45,#53,#c3,#d1,#54
	db #41,#c2,#c1,#43,#41,#50,#53,#20
	db #4c,#4f,#43,#cb,#da,#4a,#4f,#59
	db #20,#55,#d0,#4a,#4f,#59,#20,#44
	db #4f,#57,#ce,#4a,#4f,#59,#20,#4c
	db #45,#46,#d4,#4a,#4f,#59,#20,#52
	db #49,#47,#48,#d4,#4a,#4f,#59,#20
	db #46,#49,#52,#45,#20,#b2,#4a,#4f
	db #59,#20,#46,#49,#52,#45,#20,#b1
	db #a0,#44,#45,#cc,#47,#4f,#42,#4f
	db #54,#53,#47,#4f,#42,#4f,#54,#53
	db #54,#48,#45,#5c,#45,#4e,#44,#45
	db #49,#4e,#49,#4f,#ce,#00,#01,#02
	db #03,#04,#05,#06,#85,#84,#83,#82
	db #81,#80,#40,#41,#42,#43,#44,#45
	db #46,#c5,#c4,#c3,#c2,#c1,#c0,#07
	db #47,#08,#48,#09,#49,#89,#c9,#0a
	db #0b,#8b,#0c,#0d,#4d,#0e,#0f,#10
	db #11,#12,#13,#14,#54,#94,#d4,#15
	db #95,#16,#96,#17,#18,#19,#1a,#1b
	db #1c,#1d,#1e,#1f,#20,#21,#5e,#5f
	db #9e,#9f,#a0,#a1,#de,#df,#22,#a2
	db #55,#d5,#23,#63,#24,#64,#25,#26
	db #66,#27,#a7,#ff,#ff,#ff,#ff,#ee
	db #ee,#ee,#ee,#cc,#cc,#cc,#cc,#88
	db #88,#88,#88,#77,#77,#77,#77,#33
	db #33,#33,#33,#33,#33,#37,#77,#88
	db #88,#8c,#cc,#cc,#ce,#ee,#ee,#77
	db #7f,#ff,#ff,#ff,#ff,#77,#77,#ff
	db #ff,#dd,#dd,#77,#73,#33,#33,#dd
	db #d9,#99,#99,#ee,#e0,#00,#00,#11
	db #11,#11,#11,#00,#13,#37,#77,#3f
	db #ff,#ff,#ff,#8e,#ff,#ff,#ff,#00
	db #08,#8c,#cc,#77,#73,#31,#00,#ff
	db #ff,#ff,#f3,#ff,#ff,#ff,#e8,#cc
	db #c8,#80,#00,#00,#00,#88,#8c,#11
	db #11,#33,#37,#c8,#80,#00,#00,#73
	db #33,#11,#11,#ee,#ec,#c8,#cc,#73
	db #33,#7f,#ff,#c8,#80,#08,#8c,#73
	db #30,#00,#00,#00,#00,#00,#00,#00
	db #00,#0f,#ff,#00,#00,#08,#8c,#88
	db #88,#8f,#ff,#ff,#f8,#88,#88,#ff
	db #f7,#33,#37,#00,#00,#0e,#ee,#ff
	db #f0,#00,#00,#ff,#f1,#11,#11,#11
	db #11,#1f,#ff,#11,#99,#dd,#ff,#00
	db #88,#cc,#ee,#ff,#77,#33,#11,#ff
	db #ff,#fe,#00,#73,#31,#13,#37,#ff
	db #ff,#ff,#f8,#dd,#dd,#dd,#dd,#99
	db #99,#99,#99,#01,#3f,#ff,#ff,#10
	db #11,#12,#13,#00,#00,#12,#13,#10
	db #11,#12,#13,#00,#00,#12,#13,#00
	db #00,#00,#01,#00,#00,#00,#01,#10
	db #11,#12,#13,#00,#20,#0f,#01,#20
	db #00,#00,#20,#20,#00,#00,#01,#00
	db #20,#19,#01,#00,#02,#20,#20,#05
	db #02,#04,#03,#00,#2b,#0f,#01,#10
	db #11,#12,#13,#00,#00,#12,#13,#10
	db #11,#12,#13,#00,#00,#12,#13,#10
	db #11,#12,#13,#04,#00,#00,#01,#00
	db #20,#0f,#01,#00,#20,#0f,#01,#00
	db #0f,#0f,#01,#00,#20,#0f,#01,#00
	db #20,#0f,#01,#00,#00,#00,#01,#20
	db #00,#00,#20,#20,#20,#20,#20,#05
	db #02,#05,#02,#10,#11,#12,#13,#00
	db #1a,#1b,#01,#04,#23,#1d,#1c,#00
	db #1a,#1f,#0e,#04,#03,#1b,#01,#04
	db #23,#26,#20,#04,#23,#26,#20,#00
	db #1a,#1f,#0e,#00,#21,#29,#01,#20
	db #05,#02,#20,#20,#20,#0f,#01,#00
	db #32,#16,#17,#04,#03,#20,#20,#06
	db #01,#00,#07,#00,#00,#2a,#01,#00
	db #1a,#1b,#01,#04,#23,#1d,#01,#00
	db #1a,#1b,#01,#04,#03,#2e,#01,#00
	db #1e,#1f,#0e,#20,#05,#02,#20,#00
	db #20,#0f,#01,#04,#03,#05,#02,#00
	db #05,#31,#01,#00,#18,#19,#01,#00
	db #18,#19,#01,#20,#20,#2e,#01,#20
	db #04,#01,#20,#20,#20,#20,#20,#05
	db #02,#05,#02,#27,#1a,#1b,#01,#00
	db #00,#00,#01,#04,#24,#25,#01,#00
	db #18,#19,#01,#04,#03,#19,#01,#04
	db #24,#0e,#20,#04,#24,#0e,#20,#00
	db #18,#25,#01,#00,#00,#00,#01,#20
	db #05,#02,#20,#00,#18,#19,#01,#00
	db #15,#12,#13,#04,#03,#20,#20,#04
	db #00,#00,#02,#00,#2c,#00,#01,#00
	db #18,#19,#01,#04,#2f,#2d,#17,#00
	db #18,#2a,#01,#04,#2f,#00,#1c,#14
	db #15,#12,#13,#20,#05,#02,#20,#00
	db #18,#19,#01,#05,#07,#06,#03,#00
	db #04,#30,#01,#2e,#00,#00,#1e,#14
	db #15,#00,#01,#10,#11,#16,#17,#20
	db #05,#02,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#19,#17,#00
	db #20,#0f,#01,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#02,#20,#20,#00
	db #00,#00,#01,#00,#20,#0f,#01,#20
	db #00,#00,#20,#00,#00,#00,#01,#00
	db #20,#2c,#01,#00,#00,#00,#01,#09
	db #0a,#0b,#08,#00,#20,#2c,#01,#00
	db #00,#00,#01,#00,#02,#20,#20,#00
	db #00,#00,#01,#00,#02,#1b,#01,#21
	db #21,#1d,#01,#20,#04,#01,#20,#00
	db #00,#00,#01,#0f,#00,#00,#20,#00
	db #01,#00,#01,#00,#1a,#1b,#01,#21
	db #21,#1d,#01,#00,#00,#21,#26,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#00
	db #20,#0f,#01,#00,#00,#16,#17,#14
	db #15,#16,#17,#00,#00,#16,#17,#00
	db #00,#00,#01,#00,#02,#20,#20,#14
	db #15,#16,#17,#00,#20,#0f,#01,#20
	db #00,#00,#20,#14,#15,#16,#17,#00
	db #20,#0f,#01,#00,#00,#00,#01,#00
	db #0c,#0d,#01,#00,#20,#20,#01,#14
	db #15,#16,#17,#00,#02,#20,#20,#14
	db #15,#00,#17,#00,#02,#05,#01,#00
	db #00,#16,#17,#20,#04,#01,#20,#14
	db #15,#16,#17,#20,#00,#01,#20,#00
	db #02,#04,#01,#00,#20,#0f,#01,#00
	db #00,#16,#17,#00,#00,#00,#01,#20
	db #05,#02,#20,#20,#05,#02,#20,#20
	db #20,#20,#20,#20,#20,#00,#20,#00
	db #00,#00,#00,#00,#00,#00,#00,#f3
	db #21,#00,#38,#01,#88,#7f,#ed,#49
	db #0e,#ff,#06,#08,#af,#b6,#23,#10
	db #fc,#b7,#28,#03,#0d,#20,#f3,#11
	db #f8,#ff,#19,#22,#c1,#51,#01,#8c
	db #7f,#ed,#49,#fb,#c9,#f3,#01,#88
	db #7f,#ed,#49,#2a,#c1,#51,#11,#ff
	db #d5,#01,#00,#02,#ed,#b0,#01,#8c
	db #7f,#ed,#49,#fb,#c9,#11,#d4,#58
	db #21,#83,#44,#3a,#c6,#51,#b7,#28
	db #03,#21,#da,#58,#01,#06,#00,#ed
	db #b0,#3a,#c6,#51,#ee,#ff,#32,#c6
	db #51,#af,#32,#c5,#51,#3e,#ff,#b7
	db #c9,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5d00
	db #fe,#01,#16,#04,#01,#03,#02,#2c
	db #0a,#5f,#14,#fb,#0b,#5a,#cf,#14
	db #01,#04,#ca,#14,#01,#05,#cf,#14
	db #01,#06,#ca,#14,#01,#07,#cf,#14
	db #01,#08,#ca,#14,#01,#09,#cf,#14
	db #01,#0a,#ca,#14,#01,#0b,#13,#00
	db #11,#00,#cf,#14,#ca,#14,#10,#0b
	db #11,#00,#cd,#14,#c8,#14,#10,#04
	db #12,#02,#13,#00,#11,#00,#cf,#0a
	db #cd,#0a,#ca,#0a,#c8,#0a,#10,#07
	db #11,#00,#cd,#0a,#cb,#0a,#c8,#0a
	db #c6,#0a,#10,#04,#12,#02,#11,#00
	db #cd,#0a,#cb,#0a,#c8,#0a,#c6,#0a
	db #10,#04,#cf,#0a,#cd,#0a,#ca,#0a
	db #c8,#0a,#cf,#0a,#cd,#0a,#ca,#0a
	db #c6,#0a,#cf,#09,#cd,#09,#cb,#09
	db #c6,#09,#cd,#08,#cb,#08,#cc,#08
	db #c7,#08,#0d,#0a,#13,#00,#11,#00
	db #0f,#02,#c8,#10,#c8,#08,#c3,#10
	db #c3,#08,#c1,#08,#bc,#08,#10,#05
	db #11,#00,#c8,#04,#10,#04,#11,#00
	db #c3,#04,#10,#04,#11,#00,#c8,#10
	db #c8,#08,#c3,#10,#c3,#08,#c1,#08
	db #bc,#08,#10,#04,#12,#02,#11,#00
	db #c8,#10,#c8,#08,#c3,#10,#c3,#08
	db #c1,#08,#bc,#08,#10,#04,#13,#00
	db #0a,#2c,#02,#5a,#0f,#00,#c3,#10
	db #c3,#08,#c5,#10,#c2,#10,#c3,#48
	db #02,#2c,#0a,#5f,#11,#00,#0f,#02
	db #c8,#10,#c8,#08,#c3,#10,#c3,#08
	db #c1,#08,#bc,#08,#10,#02,#0f,#00
	db #c3,#10,#c3,#08,#c5,#10,#c2,#10
	db #c3,#10,#c3,#08,#c7,#10,#c5,#80
	db #02,#2c,#0a,#5f,#11,#00,#0f,#02
	db #c8,#08,#c8,#10,#c3,#10,#c3,#08
	db #c1,#08,#bc,#08,#10,#02,#12,#02
	db #0a,#2c,#02,#5a,#11,#00,#0f,#00
	db #bc,#10,#bc,#08,#be,#10,#ba,#10
	db #b9,#48,#b8,#10,#b8,#08,#bc,#10
	db #b8,#10,#ba,#48,#10,#02,#11,#00
	db #c3,#10,#c3,#08,#c5,#10,#c1,#10
	db #c1,#48,#bf,#10,#bf,#08,#c4,#10
	db #bf,#10,#c1,#48,#10,#02,#c3,#80
	db #02,#2c,#0a,#5f,#11,#00,#0f,#02
	db #c8,#10,#c8,#08,#c3,#10,#c3,#08
	db #c1,#08,#bc,#08,#10,#12,#11,#00
	db #0f,#00,#08,#02,#06,#02,#c3,#10
	db #19,#0c,#c3,#08,#c5,#10,#c8,#10
	db #c8,#10,#c8,#08,#c5,#08,#c3,#08
	db #c5,#10,#c3,#10,#c1,#10,#c1,#08
	db #bf,#10,#be,#10,#bc,#10,#bc,#08
	db #be,#08,#c1,#08,#c1,#10,#c5,#10
	db #10,#02,#11,#00,#c3,#80,#cf,#80
	db #10,#02,#02,#2c,#0a,#5f,#11,#00
	db #08,#00,#cf,#08,#cd,#08,#ca,#08
	db #c8,#08,#10,#10,#11,#00,#cf,#10
	db #ca,#10,#10,#10,#cf,#10,#ca,#10
	db #cf,#10,#ca,#11,#cf,#11,#ca,#11
	db #cf,#11,#ca,#12,#cf,#12,#ca,#12
	db #cf,#12,#ca,#13,#cf,#13,#ca,#13
	db #cf,#13,#ca,#13,#cf,#14,#ca,#14
	db #cf,#14,#ca,#14,#01,#0a,#cf,#14
	db #ca,#14,#01,#09,#cf,#14,#ca,#14
	db #01,#08,#cf,#14,#ca,#14,#01,#07
	db #00,#01,#02,#2c,#0a,#5f,#14,#fb
	db #0b,#50,#00,#0a,#11,#00,#cd,#14
	db #c8,#14,#10,#04,#13,#00,#11,#00
	db #cd,#14,#c8,#14,#10,#0b,#11,#00
	db #cb,#14,#c6,#14,#10,#04,#12,#02
	db #0b,#14,#02,#5a,#0a,#2c,#00,#0a
	db #b3,#0a,#b5,#14,#b2,#14,#b3,#5a
	db #b3,#14,#b3,#0a,#b5,#14,#b2,#14
	db #b3,#14,#b3,#0a,#b3,#14,#b2,#a0
	db #b3,#14,#b3,#0a,#b5,#14,#b2,#14
	db #b3,#5a,#b3,#14,#b3,#0a,#b5,#14
	db #b2,#14,#b3,#14,#b3,#0a,#b3,#14
	db #b2,#a0,#b2,#a0,#01,#8e,#02,#53
	db #bc,#14,#bc,#0a,#ba,#14,#ba,#14
	db #ba,#12,#b7,#09,#ba,#09,#bf,#09
	db #be,#10,#c0,#10,#02,#17,#0b,#0a
	db #11,#00,#bc,#ff,#a1,#08,#9f,#08
	db #03,#21,#c8,#08,#03,#00,#ad,#10
	db #9c,#08,#03,#21,#bc,#08,#03,#00
	db #9f,#08,#10,#05,#a1,#08,#ad,#08
	db #b0,#08,#b0,#08,#11,#00,#9f,#08
	db #a9,#08,#03,#21,#98,#08,#03,#00
	db #ab,#10,#a6,#08,#03,#21,#c8,#08
	db #03,#00,#9d,#08,#10,#04,#11,#00
	db #a1,#08,#ab,#08,#03,#21,#b0,#08
	db #03,#00,#ad,#10,#9c,#08,#03,#21
	db #bc,#08,#03,#00,#9d,#08,#10,#05
	db #a1,#08,#ad,#08,#03,#21,#b0,#08
	db #98,#08,#11,#00,#03,#00,#9d,#08
	db #a7,#08,#03,#21,#c8,#08,#03,#00
	db #a9,#10,#a4,#08,#03,#21,#b0,#08
	db #03,#00,#9d,#08,#10,#04,#11,#00
	db #9f,#08,#ab,#08,#9c,#08,#a8,#08
	db #9d,#08,#a9,#08,#9e,#08,#aa,#08
	db #10,#04,#13,#00,#11,#00,#9f,#08
	db #ab,#08,#9c,#08,#a8,#08,#9d,#08
	db #a9,#08,#9e,#08,#aa,#08,#10,#05
	db #9f,#08,#ab,#08,#a3,#08,#af,#08
	db #11,#00,#9d,#08,#a9,#08,#9a,#08
	db #a6,#08,#9b,#08,#a7,#08,#9c,#08
	db #a8,#08,#10,#04,#12,#02,#13,#00
	db #11,#00,#98,#08,#a2,#08,#03,#21
	db #a4,#08,#03,#00,#a4,#10,#a2,#08
	db #03,#21,#bc,#08,#03,#00,#9f,#08
	db #18,#05,#10,#02,#18,#f6,#11,#00
	db #a0,#08,#ac,#08,#03,#21,#bc,#08
	db #03,#00,#a0,#10,#ac,#08,#03,#21
	db #a4,#08,#03,#00,#9e,#08,#18,#02
	db #10,#02,#18,#fc,#12,#04,#11,#00
	db #98,#08,#a2,#08,#03,#21,#b0,#08
	db #03,#00,#a4,#10,#a2,#08,#03,#21
	db #98,#08,#03,#00,#9f,#08,#10,#04
	db #13,#00,#11,#00,#98,#08,#a2,#08
	db #03,#21,#b0,#08,#03,#00,#a4,#10
	db #a2,#08,#03,#21,#98,#08,#03,#00
	db #9f,#08,#10,#02,#11,#00,#a2,#08
	db #ac,#08,#03,#21,#98,#08,#03,#00
	db #ae,#10,#a2,#08,#03,#21,#98,#08
	db #03,#00,#9d,#08,#18,#fb,#10,#02
	db #18,#0a,#12,#0a,#02,#2c,#0a,#5f
	db #00,#08,#01,#8a,#11,#00,#cd,#10
	db #c8,#10,#10,#10,#cd,#10,#c8,#10
	db #cd,#10,#c8,#11,#cd,#11,#c8,#11
	db #00,#01,#cd,#11,#c8,#12,#cd,#12
	db #c8,#12,#cd,#12,#c8,#13,#00,#01
	db #cd,#13,#c8,#13,#cd,#14,#c8,#14
	db #11,#00,#cd,#14,#c8,#14,#10,#05
	db #00,#01,#02,#5a,#0a,#2c,#14,#fb
	db #0b,#28,#00,#a0,#00,#a0,#11,#00
	db #bc,#14,#bc,#0a,#be,#14,#ba,#14
	db #bc,#5a,#bc,#14,#bc,#0a,#be,#14
	db #ba,#14,#bc,#14,#bc,#0a,#c3,#14
	db #c1,#a0,#bc,#14,#bc,#0a,#be,#14
	db #ba,#14,#bc,#5a,#bc,#14,#bc,#0a
	db #be,#14,#ba,#14,#bc,#14,#bc,#0a
	db #c3,#14,#c6,#a0,#c6,#a0,#10,#02
	db #bc,#14,#bc,#0a,#be,#14,#be,#14
	db #bf,#12,#bf,#09,#c1,#09,#c3,#09
	db #c1,#10,#c4,#10,#c5,#10,#c5,#08
	db #c7,#10,#c3,#10,#c5,#48,#0d,#1e
	db #02,#1d,#0a,#5c,#0f,#02,#c8,#80
	db #0a,#2c,#02,#5a,#0f,#00,#c5,#10
	db #c5,#08,#c7,#10,#c3,#10,#c5,#10
	db #c5,#08,#cc,#10,#ca,#80,#02,#1d
	db #0a,#5c,#0f,#02,#c8,#80,#0a,#2c
	db #02,#5a,#0f,#00,#c5,#10,#c5,#08
	db #c7,#10,#c3,#10,#c5,#48,#02,#1d
	db #0a,#5c,#0f,#02,#c8,#80,#0a,#2c
	db #02,#5a,#0f,#00,#c5,#10,#c5,#08
	db #c7,#10,#c3,#10,#c5,#10,#c5,#08
	db #cc,#10,#cd,#80,#02,#1d,#0a,#5c
	db #0f,#02,#c8,#80,#c8,#80,#c8,#80
	db #13,#00,#0a,#2c,#02,#5a,#0f,#00
	db #c7,#10,#c7,#08,#c8,#10,#c5,#10
	db #c7,#48,#02,#1d,#0a,#5c,#0f,#02
	db #c8,#80,#02,#2c,#0a,#5a,#0f,#00
	db #c7,#10,#c7,#08,#c8,#10,#c5,#10
	db #c7,#10,#c7,#08,#ca,#10,#c8,#80
	db #02,#1d,#0a,#5c,#0f,#02,#c8,#80
	db #12,#02,#0a,#2c,#02,#5a,#11,#00
	db #0f,#00,#c0,#10,#c0,#08,#c1,#10
	db #be,#10,#bc,#48,#bc,#10,#bc,#08
	db #bf,#10,#bc,#10,#be,#48,#10,#04
	db #c0,#80,#bc,#80,#19,#0c,#13,#00
	db #11,#00,#08,#01,#bc,#10,#c0,#08
	db #c1,#10,#c5,#10,#c3,#10,#c3,#08
	db #c1,#08,#c0,#08,#c1,#10,#be,#10
	db #be,#10,#be,#08,#bc,#10,#ba,#10
	db #b9,#10,#b9,#08,#ba,#08,#be,#08
	db #bc,#10,#be,#10,#10,#02,#11,#00
	db #bc,#80,#c8,#80,#10,#02,#12,#02
	db #11,#00,#08,#00,#bc,#10,#bc,#08
	db #be,#10,#ba,#10,#bc,#48,#bc,#10
	db #bc,#08,#be,#10,#ba,#10,#bc,#10
	db #bc,#08,#c3,#10,#c1,#20,#10,#04
	db #11,#00,#00,#fe,#10,#ff,#00,#01
	db #00,#00,#00,#00
;
.music_info
	db "Challenge of the Gobots (1987)(Ariolasoft)(We M .U .S .I .C.)",0
	db "",0

	read "music_end.asm"
