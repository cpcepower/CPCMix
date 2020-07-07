; Music of Gary Linekers Super Skills (1988)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 14/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GARYLISS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #03e0
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"
	
	jp l0470	; init
	jp l04f8	; play
.l03e6
.music_end
	db #00
	jp l03f1	; init sound effects
;
.stop_music
;
	xor a
	ld (l03e6),a
	jp l087a
.l03f1
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
	ld iy,l0eef
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l07bc
	call l07f3
	set 7,(ix+#11)
	ei
	ret
.l0419
	db #00
.l041a
	cp d
	dec c
	ld (hl),e
	ld a,(bc)
	adc l
	ld a,(bc)
.l0420
	ld h,e
.l0422 equ $ + 1
	ld c,#01
.l0423
	nop
.l0424
	rst #38
.l0426 equ $ + 1
.l0425
	ld bc,#42ff
.l0428
	nop
	ret po
	ld c,#01
	ld (bc),a
	add h
.l042e
	ex af,af'
.l042f
	call c,#730d
	ld a,(bc)
.l0433
	adc l
	ld a,(bc)
.l0435
	ld h,e
.l0437 equ $ + 1
	ld c,#01
.l0438
	nop
.l0439
	rst #38
.l043b equ $ + 1
.l043a
	ld bc,#36ff
.l043d
	nop
	ret po
	ld c,#01
	ld (bc),a
	add h
.l0444 equ $ + 1
.l0443
	djnz l0433
	dec c
	cp l
	ld a,(bc)
.l044a equ $ + 2
	call nc,#630a
.l044c equ $ + 1
	ld c,#01
.l044d
	nop
.l044e
	rst #38
.l0450 equ $ + 1
.l044f
	ld bc,#1eff
.l0452
	nop
	ret c
	ld c,#01
	ld (bc),a
	ld b,b
.l0458
	nop
	ld a,(bc)
	inc d
	ld e,#28
	ld (#463c),a
	nop
	ld a,(bc)
	inc d
	ld e,#28
	ld (#463c),a
	nop
	ld a,(bc)
	inc d
	ld e,#28
	ld (#463c),a
;
.init_music
.l0470
;
	push af
	call l087a
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l0da8
	add l
	ld l,a
	jr nc,l0481
	inc h
.l0481
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l041a),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l042f),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0444),de
	xor a
	ld (l0423),a
	ld (l0438),a
	ld (l044d),a
	ld (l0428),a
	ld (l043d),a
	ld (l0452),a
	cpl
	ld (l0424),a
	ld (l0439),a
	ld (l044e),a
	ld a,#01
	ld (l0422),a
	ld (l0437),a
	ld (l044c),a
	ld (l0425),a
	ld (l043a),a
	ld (l044f),a
	ld hl,l0458
	ld bc,#030a
.l04d0
	xor a
.l04d1
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l04d1
	djnz l04d0
	ld hl,l0e63
	ld (l0420),hl
	ld (l0435),hl
	ld (l044a),hl
	ld a,#ff
	ld (l0426),a
	ld (l043b),a
	ld (l0450),a
	ld (l03e6),a
	ret
;
.play_music
.l04f8
;
	call l08a3
	ld a,(l03e6)
	and a
	ret z
	ld a,(l0426)
	ld hl,l043b
	or (hl)
	ld hl,l0450
	or (hl)
	ld (l03e6),a
	jr nz,l0522
	xor a
	ld (l03e6),a
	ld a,(l07bb)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l03e6),a
	ret
.l0522
	ld iy,l0419
	ld ix,l07bc
	call l0540
	ld iy,l042e
	ld ix,l07ce
	call l0540
	ld iy,l0443
	ld ix,l07e0
.l0540
	call l0681
	ld a,(iy+#0b)
	and a
	jr z,l05c5
.l0549
	dec (iy+#09)
	jr z,l0560
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l05c5
.l0560
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l056a
	ld a,(hl)
	cp #80
	jr c,l05a5
	cp #fe
	jr nz,l057c
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l056a
.l057c
	cp #ff
	jr nz,l0585
	xor a
	ld (iy+#0d),a
	ret
.l0585
	cp #c0
	jr nc,l0592
	and #1f
	ld (iy+#09),a
	inc hl
	jp l056a
.l0592
	and #07
	add (iy+#00)
	ld de,l0458
	add e
	ld e,a
	jr nc,l059f
	inc d
.l059f
	inc hl
	ldi
	jp l056a
.l05a5
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l0d7a
	add hl,bc
	ld e,(hl)
	ld hl,l0d91
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l05cb
.l05c5
	ld e,(iy+#05)
	ld d,(iy+#06)
.l05cb
	dec (iy+#0c)
	jr z,l05dd
	ld a,(de)
	cp #80
	call nc,l0647
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l05dd
	ld a,(de)
	cp #80
	jr c,l05ee
	call l0647
	ld a,(iy+#0b)
	and a
	jr z,l05dd
	jp l0549
.l05ee
	cp #7f
	jr z,l063a
	cp #7e
	jr nz,l05ff
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l0613
.l05ff
	add (iy+#0a)
	add #13
	ld (iy+#0e),a
	ld hl,l0711
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l0613
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
	jp l07f3
.l063a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l0647
	ld a,(de)
	cp #88
	jr nc,l0665
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l0458
	add hl,bc
	ld c,(hl)
	ld hl,l0e63
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l0665
	cp #ff
	jr nz,l066e
	ld (iy+#0b),#ff
	ret
.l066e
	cp #c0
	jr nc,l0679
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l0679
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l0681
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l0695
	res 7,(iy+#14)
	ret
.l0695
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l06c9
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l06c9
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l06b8
	inc h
	ld (iy+#11),h
.l06b8
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l06fe
.l06c9
	ld hl,l07bf
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l06e3
	bit 6,(iy+#14)
	jr nz,l06e3
	ld (iy+#13),#01
	ret
.l06e3
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
.l06fe
	add a
	ld hl,l0711
	add l
	ld l,a
	jr nc,l0707
	inc h
.l0707
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l0711
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
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
	dw #0018
.l07c1 equ $ + 6
.l07c0 equ $ + 5
.l07bf equ $ + 4
.l07bc equ $ + 1
.l07bb
	db #3f,#fe,#f7,#09,#3f,#00,#63,#02
	db #00,#01,#00,#00,#01,#00,#d2,#09
.l07d2 equ $ + 7
.l07d1 equ $ + 6
.l07ce equ $ + 3
.l07cd equ $ + 2
	db #8b,#0e,#00,#fd,#ef,#12,#7f,#00
.l07d3
	db #63,#02,#00,#01,#00,#00,#01,#00
.l07e0 equ $ + 5
.l07df equ $ + 4
	db #d2,#09,#8b,#0e,#00,#fb,#df,#24
.l07e5 equ $ + 2
.l07e4 equ $ + 1
.l07e3
	db #a4,#02,#63,#02,#00,#02,#00,#00
.l07f2 equ $ + 7
.l07f1 equ $ + 6
	db #02,#00,#b0,#09,#6d,#0e,#00,#18
.l07f3
	db #f3
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
	jr nz,l0818
	ld a,#01
.l0818
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l07bb)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l0841
	and (ix+#00)
.l0841
	bit 1,c
	jr z,l0848
	and (ix+#01)
.l0848
	ld (l07bb),a
	bit 2,c
	jr nz,l085a
	ld hl,l0991
	ld (ix+#0d),l
	ld (ix+#0e),h
	ei
	ret
.l085a
	call l0a49
	ld a,(iy+#00)
	ld c,#0d
	call l0a60
	ld a,(iy+#04)
	ld c,#0b
	call l0a60
	inc c
	xor a
	call l0a60
	ld (ix+#05),#ff
	ei
	jp l0a55
.l087a
	call l0a49
	ld c,#07
	ld a,(l07bb)
	or #3f
	ld (l07bb),a
	call l0a60
	xor a
	inc c
	call l0a60
	inc c
	call l0a60
	inc c
	call l0a60
	ld (l07cd),a
	ld (l07df),a
	ld (l07f1),a
	jp l0a55
.l08a3
	ld a,(l07bb)
	and #3f
	cp #3f
	ret z
	ld ix,l07bc
	call l095f
	ld ix,l07ce
	call l095f
	ld ix,l07e0
	call l095f
	call l0a49
	ld ix,l07bc
	ld c,#07
	ld a,(l07bb)
	call l0a60
	ld c,#00
	ld a,(l07bf)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l08e1
	ld (l07f2),a
.l08e1
	call l0a60
	inc c
	ld a,(l07c0)
	adc (ix+#0a)
	call l0a60
	inc c
	ld a,(l07d1)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l08ff
	ld (l07f2),a
.l08ff
	call l0a60
	inc c
	ld a,(l07d2)
	adc (ix+#1c)
	call l0a60
	inc c
	ld a,(l07e3)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l091d
	ld (l07f2),a
.l091d
	call l0a60
	inc c
	ld a,(l07e4)
	adc (ix+#2e)
	call l0a60
	inc c
	ld a,(l07f2)
	rrca
	rrca
	rrca
	call l0a60
	ld c,#08
	ld a,(l07c1)
	srl a
	srl a
	srl a
	call l0a60
	inc c
	ld a,(l07d3)
	srl a
	srl a
	srl a
	call l0a60
	inc c
	ld a,(l07e5)
	srl a
	srl a
	srl a
	call l0a60
	jp l0a55
.l095f
	ld a,(l07bb)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l0980
	cp #ff
	jr z,l0980
	dec (ix+#06)
.l0980
	call l0a07
	bit 2,(iy+#09)
	jp nz,l0a00
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l0991
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l09a0
	ld (ix+#05),a
	ret
.l09a0
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l09b0
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l09b0
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l09c2
	cp (iy+#02)
	jr c,l09c2
	ld (ix+#05),a
	ret
.l09c2
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l09d2
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l09d2
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l09e1
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l09e1
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l09ee
	ld (ix+#05),a
	ret
.l09ee
	ld (ix+#05),#00
	ld a,(l07bb)
	or (ix+#02)
	ld (l07bb),a
	res 7,(ix+#11)
	ret
.l0a00
	ld a,(ix+#06)
	and a
	ret nz
	jr l09ee
.l0a07
	ld a,(ix+#07)
	and a
	jr z,l0a14
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l0a14
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
	jp p,l0a38
	ld (ix+#07),#ff
	ret
.l0a38
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
.l0a49
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.l0a55
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.l0a60
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
.s00
	db #84,#92,#31,#05,#31,#0a,#31,#0a
	db #31,#0a,#31,#0a,#93,#2f,#05,#2f
	db #0a,#2f,#0a,#2f,#0a,#94,#2f,#05
	db #2f,#0a,#2f,#0a,#2f,#0a,#2f,#05
	db #80,#91,#2f,#28,#ff
.s01
	db #80,#93,#2c
	db #0f,#92,#2e,#0f,#93,#2a,#32,#2c
	db #0f,#2c,#0f,#92,#2e,#32,#93,#2c
	db #0f,#92,#2e,#0f,#93,#2a,#14,#2a
	db #14,#2c,#14,#92,#2e,#0a,#2e,#3c
	db #90,#ff
.s02
	db #81,#04,#05,#04,#0a,#04
	db #0a,#04,#0a,#04,#0a,#04,#05,#04
	db #0a,#04,#0a,#04,#0a,#0b,#05,#0b
	db #0a,#0b,#0a,#0b,#0a,#0b,#05,#0b
	db #14,#82,#1b,#05,#1b,#05,#17,#05
	db #14,#05,#ff
.s03
	db #81,#06,#0a,#06,#0a
	db #83,#06,#0a,#81,#06,#0a,#ff
.s04
	db #81
	db #06,#0a,#06,#0a,#83,#06,#05,#82
	db #1b,#05,#17,#05,#14,#05,#ff
.s05
	db #85
	db #31,#46,#2f,#0a,#2e,#0f,#2a,#41
	db #31,#32,#33,#0a,#36,#0a,#36,#5a
	db #31,#46,#2f,#0a,#2e,#0f,#2a,#41
	db #31,#32,#3b,#14,#38,#14,#36,#0a
	db #36,#28,#3a,#05,#38,#05,#36,#05
	db #31,#05,#33,#46,#30,#0a,#2e,#0f
	db #2b,#41,#33,#32,#38,#14,#35,#14
	db #33,#0a,#33,#3c,#33,#46,#30,#0a
	db #2e,#0f,#2b,#41,#33,#32,#38,#14
	db #35,#14,#33,#0a,#33,#28,#37,#05
	db #35,#05,#33,#05,#30,#05,#ff
.s06
	db #86
	db #3b,#0a,#3a,#0a,#36,#0a,#33,#14
	db #36,#14,#35,#1e,#33,#0a,#31,#14
	db #33,#0a,#35,#0a,#38,#0a,#3b,#0a
	db #3a,#14,#36,#1e,#33,#0a,#31,#5a
	db #3b,#0a,#3a,#0a,#36,#0a,#33,#14
	db #36,#14,#35,#1e,#33,#0a,#31,#14
	db #33,#0a,#35,#0a,#38,#0a,#3b,#0a
	db #3a,#14,#3b,#1e,#3d,#0a,#3d,#37
	db #82,#2a,#05,#2a,#05,#2a,#05,#27
	db #0a,#23,#05,#23,#05,#95,#ff
.s07
	db #80
	db #93,#2a,#0a,#2a,#14,#2a,#14,#2a
	db #14,#2a,#14,#2c,#0a,#2c,#50,#2a
	db #14,#2a,#0a,#2a,#14,#94,#2a,#14
	db #2a,#14,#91,#2a,#0a,#2a,#28,#93
	db #2a,#0a,#2a,#14,#2a,#14,#2a,#14
	db #2a,#14,#2c,#0a,#2c,#50,#2a,#14
	db #2a,#0a,#2a,#14,#2a,#14,#2c,#0a
	db #2c,#3c,#ff
.s08
	db #80,#92,#2c,#0a,#2c
	db #14,#93,#2a,#14,#2a,#14,#92,#2e
	db #14,#2e,#14,#93,#2c,#0a,#2c,#28
	db #92,#2c,#0a,#2c,#14,#93,#2a,#14
	db #2a,#14,#2c,#0a,#2c,#46,#92,#2e
	db #0a,#ff
.s09
	db #86,#2f,#0a,#2c,#0a,#28
	db #0a,#23,#14,#27,#0a,#2a,#0a,#31
	db #14,#2e,#0a,#2a,#0a,#25,#14,#29
	db #0a,#2c,#0a,#2f,#14,#2c,#0a,#28
	db #0a,#23,#14,#27,#0a,#2a,#0a,#31
	db #50,#2e,#0a,#ff
.s10
	db #81,#06,#0a,#06
	db #0a,#83,#06,#0a,#81,#0b,#0a,#ff
.s11
	db #7f,#02,#ff
.s12
	db #90,#82,#2a,#0a,#2a
	db #0a,#27,#05,#27,#0a,#27,#05,#23
	db #0a,#23,#05,#20,#0a,#20,#05,#1e
	db #0a,#ff
.s13
	db #80,#7f,#0a,#36,#05,#36
	db #0a,#36,#0a,#36,#05,#36,#28,#ff
.s14
	db #7f,#14,#ff
.s15
	db #82,#2a,#0a,#2a,#0a
	db #27,#05,#27,#0a,#27,#05,#1e,#05
	db #1e,#05,#1e,#05,#1e,#05,#1b,#05
	db #1b,#05,#1b,#05,#1b,#03,#ff
.s16
	db #80
	db #92,#2e,#32,#ff
.s17
	db #81,#06,#32,#ff
.s18
	db #80,#92,#31,#0f,#31,#0f,#93,#2f
	db #32,#91,#2f,#0f,#2f,#0f,#92,#2e
	db #32,#92,#31,#0f,#31,#0f,#93,#2f
	db #14,#2f,#14,#94,#2f,#14,#2f,#0a
	db #91,#2f,#3c,#ff
.s19
	db #81,#09,#0a,#0b
	db #0a,#0d,#0a,#0e,#14,#0d,#0a,#0b
	db #0a,#07,#14,#09,#0a,#0b,#0a,#0c
	db #1e,#0b,#14,#09,#0a,#0b,#0a,#0d
	db #0a,#0e,#14,#10,#0a,#12,#0a,#10
	db #0a,#ff
.s20
	db #84,#91,#2d,#0a,#2d,#0a
	db #83,#06,#0a,#84,#93,#2d,#14,#2d
	db #0a,#83,#06,#0a,#84,#91,#2b,#14
	db #2b,#0a,#83,#06,#0a,#84,#93,#2b
	db #14,#2b,#0a,#83,#06,#0a,#06,#05
	db #06,#05,#84,#91,#2d,#0a,#2d,#0a
	db #83,#06,#0a,#84,#93,#2d,#14,#2d
	db #0a,#83,#1e,#0a,#84,#2f,#14,#2f
	db #0a,#83,#06,#0a,#84,#2f,#14,#2f
	db #0a,#83,#06,#05,#06,#05,#06,#05
	db #06,#05,#90,#ff
.s21
	db #85,#31,#0a,#2f
	db #0a,#2d,#0a,#2c,#14,#2a,#0a,#28
	db #0a,#27,#14,#25,#0a,#23,#0a,#22
	db #14,#23,#0a,#25,#14,#31,#0a,#2f
	db #0a,#2d,#0a,#2c,#14,#2a,#0a,#28
	db #0a,#2a,#5a,#ff
.s22
	db #85,#2d,#14,#28
	db #0a,#2a,#14,#28,#0a,#2a,#0a,#2b
	db #1e,#26,#0a,#28,#14,#26,#0a,#28
	db #14,#2d,#14,#28,#0a,#2a,#14,#2b
	db #0a,#2d,#0a,#2c,#5a,#95,#ff
.l0d7a
	db s00,s01,s02,s03,s04,s05,s06,s07
	db s08,s09,s10,s11,s12,s13,s14,s15
	db s16,s17,s18,s19,s20,s21,s22

;	db #73,#98,#bd,#e6,#f2,#02,#5a,#aa
;	db #e6,#0d,#37,#43,#46,#5d,#6b,#6e
;	db #8a,#8f,#93,#b7,#dd,#2f,#57
.l0d91
	db s00/&100,s01/&100,s02/&100,s03/&100,s04/&100,s05/&100,s06/&100,s07/&100
	db s08/&100,s09/&100,s10/&100,s11/&100,s12/&100,s13/&100,s14/&100,s15/&100
	db s16/&100,s17/&100,s18/&100,s19/&100,s20/&100,s21/&100,s22/&100
;	db #0a,#0a,#0a,#0a,#0a,#0b,#0b,#0b
;	db #0b,#0c,#0c,#0c,#0c,#0c,#0c,#0c
;	db #0c,#0c,#0c,#0c,#0c,#0d,#0d
.l0da8
	dw l0dba,l0ddc,l0dee
	dw l0e2e,l0e32,l0e38
	dw l0e3c,l0e49,l0e53
.l0dba
	db #00,#01,#01,#fe,#fd,#01
	db #01,#fe,#00,#01,#01,#fe,#fd,#01
	db #01,#fe,#00,#07,#01,#01,#fe,#fd
	db #01,#01,#fe,#00,#08,#0b,#fe,#f4
	db #87,#0c,#0f,#ff
.l0ddc
	db #fe,#f4,#00,#01
	db #01,#fe,#f1,#01,#01,#fe,#f4,#05
	db #06,#05,#09,#88,#0c,#ff
.l0dee
	db #02,#8f
	db #03,#04,#fe,#fd,#8f,#03,#04,#fe
	db #00,#8f,#03,#04,#fe,#fd,#8f,#03
	db #04,#fe,#fb,#90,#03,#fe,#00,#8f
	db #03,#04,#fe,#fd,#8f,#03,#04,#fe
	db #fe,#03,#fe,#f9,#03,#fe,#00,#03
	db #fe,#fb,#03,#fe,#fe,#03,#fe,#f9
	db #03,#fe,#fb,#03,#0a,#fe,#0c,#c0
	db #50,#90,#0e,#84,#0d,#ff
.l0e2e
	db #00,#10,#0e,#ff
.l0e32
	db #fe,#f4,#00,#10,#0e,#ff
.l0e38
	db #02,#11,#0e,#ff
.l0e3c
	db #90,#03,#13,#0c
	db #90,#03,#13,#0c,#90,#03,#13,#0c
	db #ff
.l0e49
	db #12,#12,#14,#12,#12,#14,#08
	db #12,#14,#ff
.l0e53
	db #fe,#f4,#c3,#5a,#12
	db #12,#14,#fe,#00,#15,#15,#16,#15
	db #15,#16,#ff
.l0e63
	db #7f,#fe,#01,#ff,#7f,#00,#02,#01
	db #00,#01,#7f,#fc,#01,#ff,#7f,#00
	db #04,#02,#00,#01,#7f,#fb,#01,#ff
	db #7f,#00,#00,#28,#00,#01,#7f,#fc
	db #01,#ff,#7f,#00,#00,#28,#00,#02
	db #7f,#f9,#63,#ff,#7f,#00,#02,#01
	db #00,#01,#50,#ff,#01,#ff,#7f,#08
	db #04,#01,#00,#01,#32,#fe,#01,#ff
	db #7f,#00,#02,#02,#00,#01,#7f,#f4
	db #01,#ff,#7f,#00,#00,#00,#02,#01
	db #7f,#f4,#01,#ff,#7f,#00,#00,#00
	db #00,#03,#7f,#f4,#01,#ff,#7f,#00
	db #00,#00,#00,#00,#8a,#21,#39,#00
	db #00,#00,#00,#00,#8a,#19,#41,#00
	db #00,#00,#00,#00,#8a,#29,#49,#00
	db #00,#00,#00,#00,#8a,#29,#39,#00
	db #00,#00,#00,#00,#89,#61,#00,#00
	db #00,#00,#00,#00
.l0eef
	db #7f,#f3,#01,#ff,#7f,#00,#00,#5e
	db #00,#01,#00,#05,#05,#7f,#f2,#01
	db #ff,#7f,#00,#00,#5e,#00,#01,#00
	db #04,#04,#7f,#f2,#01,#ff,#7f,#00
	db #00,#32,#00,#01,#8e,#03,#04,#7f
	db #f8,#01,#ff,#7f,#00,#00,#8d,#00
	db #01,#8e,#03,#08,#7f,#f8,#01,#ff
	db #7f,#00,#00,#eb,#ff,#01,#22,#05
	db #08,#0a,#ff,#01,#ff,#7f,#ff,#00
	db #00,#00,#05,#26,#00,#0f,#00,#00
	db #cd,#1a,#01,#c9
;
; #1011
; xor a
; call #03e0	; init
; ld a,(#03e6)	; test
; and a
; jr nz,l101e
; call #03e0
; call #03e3	; play
;
.music_info
	db "Gary Linekers Super Skills (1988)(Gremlin Graphics)(Ben Daglish)",0
	db "Same as Buitre 2 (1989)(Erbe Software)(Ben Daglish)",0

	read "music_end.asm"
