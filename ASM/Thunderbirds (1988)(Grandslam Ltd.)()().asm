; Music of Thunderbirds (1988)(Grandslam Ltd.)()()
; Ripped by Megachur the 25/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THUNDERB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #b34c

	read "music_header.asm"

.lb34c
	db #00
	ld (lb364),a
;
.play_music
;
	ld a,(lb34c)
	or a
	ret nz
	inc a
	ld (lb34c),a
	ei
	push ix
	push iy
	ex af,af'
	push af
	ex af,af'
	push hl
	push de
.lb364 equ $ + 1
	ld e,#00
	ld a,#7f
	ld (lb60b),a
	ld a,(lb720)
	cp #02
	jr nc,lb377
	ld a,e
	cp #02
	call c,lb77f
.lb377
	ld a,(lb720)	; ld a,(#2500) modified by Megachur !
	or a
	push af
	call nz,lb807
	pop af
	call z,lb721
	pop de
	pop hl
	ex af,af'
	pop af
	ex af,af'
	xor a
	ld (lb34c),a
	pop iy
	pop ix
	ret
	db #00,#00,#00
.lb394
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
	dw #001e,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
.lb443 equ $ + 7
.lb442 equ $ + 6
.lb43f equ $ + 3
.lb43e equ $ + 2
	db #18,#00,#3c,#fe,#f7,#09,#f6,#02
.lb444
	db #00,#18,#00,#02,#00,#00,#04,#00
.lb451 equ $ + 5
.lb450 equ $ + 4
	db #3e,#b6,#e0,#be,#01,#fd,#ef,#12
.lb456 equ $ + 2
.lb455 equ $ + 1
.lb454
	db #be,#00,#00,#18,#00,#02,#00,#00
.lb463 equ $ + 7
.lb462 equ $ + 6
	db #01,#00,#3e,#b6,#ea,#be,#01,#fb
.lb468 equ $ + 4
.lb467 equ $ + 3
.lb466 equ $ + 2
	db #df,#24,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb475 equ $ + 1
.lb474
	db #00,#00
.lb476
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
	jr nz,lb49b
	ld a,#01
.lb49b
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(lb43e)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,lb4c4
	and (ix+#00)
.lb4c4
	bit 1,c
	jr z,lb4cb
	and (ix+#01)
.lb4cb
	ld (lb43e),a
	bit 2,c
	jr nz,lb4dd
	ld hl,lb63e
	ld (ix+#0d),l
	ld (ix+#0e),h
	ei
	ret
.lb4dd
	call lb6f6
	ld a,(iy+#00)
	ld c,#0d
	call lb70d
	ld a,(iy+#04)
	ld c,#0b
	call lb70d
	inc c
	xor a
	call lb70d
	ld (ix+#05),#ff
	ei
	jp lb702
.lb4fd
	call lb6f6
	ld c,#07
	ld a,(lb43e)
	or #3f
	ld (lb43e),a
	call lb70d
	xor a
	inc c
	call lb70d
	inc c
	call lb70d
	inc c
	call lb70d
	ld a,#01
	inc c
	call lb70d
	inc c
	xor a
	call lb70d
	inc c
	call lb70d
	ld (lb450),a
	ld (lb462),a
	ld (lb474),a
	jp lb702
.lb535
	ld a,(lb43e)
	and #3f
	cp #3f
	ret z
	ld ix,lb43f
	call lb60c
	ld ix,lb451
	call lb60c
	ld ix,lb463
	call lb60c
	call lb6f6
	ld ix,lb43f
	ld c,#07
	ld a,(lb43e)
	call lb70d
	ld c,#00
	ld a,(lb442)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,lb573
	ld (lb475),a
.lb573
	call lb70d
	inc c
	ld a,(lb443)
	adc (ix+#0a)
	call lb70d
	inc c
	ld a,(lb454)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,lb591
	ld (lb475),a
.lb591
	call lb70d
	inc c
	ld a,(lb455)
	adc (ix+#1c)
	call lb70d
	inc c
	ld a,(lb466)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,lb5af
	ld (lb475),a
.lb5af
	call lb70d
	inc c
	ld a,(lb467)
	adc (ix+#2e)
	call lb70d
	inc c
	ld a,(lb475)
	rrca
	rrca
	rrca
	call lb70d
	ld c,#08
	ld a,(lb60b)
	ld d,a
	ld a,(lb444)
	cp d
	jr c,lb5d3
	ld a,d
.lb5d3
	srl a
	srl a
	srl a
	push de
	ld d,#c0
	call lb70d
	pop de
	inc c
	ld a,(lb456)
	cp d
	jr c,lb5e8
	ld a,d
.lb5e8
	srl a
	srl a
	srl a
	push de
	ld d,#c0
	call lb70d
	pop de
	inc c
	ld a,(lb468)
	cp d
	jr c,lb5fd
	ld a,d
.lb5fd
	srl a
	srl a
	srl a
	ld d,#c0
	call lb70d
	jp lb702
.lb60b
	ld a,a
.lb60c
	ld a,(lb43e)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,lb62d
	cp #ff
	jr z,lb62d
	dec (ix+#06)
.lb62d
	call lb6b4
	bit 2,(iy+#09)
	jp nz,lb6ad
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.lb63e
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,lb64d
	ld (ix+#05),a
	ret
.lb64d
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,lb65d
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lb65d
	ld a,(ix+#05)
	add (iy+#01)
	jp m,lb66f
	cp (iy+#02)
	jr c,lb66f
	ld (ix+#05),a
	ret
.lb66f
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,lb67f
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lb67f
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,lb68e
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lb68e
	ld a,(ix+#05)
	add (iy+#03)
	jp m,lb69b
	ld (ix+#05),a
	ret
.lb69b
	ld (ix+#05),#00
	ld a,(lb43e)
	or (ix+#02)
	ld (lb43e),a
	res 7,(ix+#11)
	ret
.lb6ad
	ld a,(ix+#06)
	and a
	ret nz
	jr lb69b
.lb6b4
	ld a,(ix+#07)
	and a
	jr z,lb6c1
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.lb6c1
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
	jp p,lb6e5
	ld (ix+#07),#ff
	ret
.lb6e5
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
.lb6f6
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.lb702
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.lb70d
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
.lb720
	rst #38
.lb721
	xor a
	ld (lb720),a
	jp lb4fd
.lb728
	db #00
.lb72f equ $ + 6
.lb729
	dw lbe91,lba20,lba23,lbee0
.lb737 equ $ + 6
.lb735 equ $ + 4
.lb734 equ $ + 3
.lb733 equ $ + 2
.lb732 equ $ + 1
.lb731
	db #0a,#f4,#00,#18,#ff,#10,#00,#00
.lb73d equ $ + 4
	db #00,#00,#00,#c0,#08
.lb744 equ $ + 6
.lb73e
	dw lbeb8,lba6f,lba73,lbeea
.lb74c equ $ + 6
.lb74a equ $ + 4
.lb749 equ $ + 3
.lb748 equ $ + 2
.lb747 equ $ + 1
.lb746
	db #03,#00,#00,#18,#ff,#28,#01,#00
.lb752 equ $ + 4
	db #00,#00,#00,#c1,#10
.lb759 equ $ + 6
.lb753
	dw lbed6,lbabe,lbac0,lbee0
.lb761 equ $ + 6
.lb75f equ $ + 4
.lb75e equ $ + 3
.lb75d equ $ + 2
.lb75c equ $ + 1
.lb75b
	db #01,#f4,#00,#c0,#ff,#00,#00,#00
.lb767 equ $ + 4
	db #00,#00,#00,#00,#00,#0a,#14,#1e
	db #28,#32,#3c,#46,#00,#0a,#14,#1e
	db #28,#32,#3c,#46,#00,#0a,#14,#1e
	db #28,#32,#3c,#46
;
.init_music
.lb77f
;
	push af
	call lb4fd
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,lbe87
	add l
	ld l,a
	jr nc,lb790
	inc h
.lb790
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb729),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb73e),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb753),de
	xor a
	ld (lb732),a
	ld (lb747),a
	ld (lb75c),a
	ld (lb737),a
	ld (lb74c),a
	ld (lb761),a
	cpl
	ld (lb733),a
	ld (lb748),a
	ld (lb75d),a
	ld a,#01
	ld (lb731),a
	ld (lb746),a
	ld (lb75b),a
	ld (lb734),a
	ld (lb749),a
	ld (lb75e),a
	ld hl,lb767
	ld bc,#030a
.lb7df
	xor a
.lb7e0
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,lb7e0
	djnz lb7df
	ld hl,lbee0
	ld (lb72f),hl
	ld (lb744),hl
	ld (lb759),hl
	ld a,#ff
	ld (lb735),a
	ld (lb74a),a
.lb800
	ld (lb75f),a
	ld (lb720),a
	ret
.lb807
	call lb535
	ld a,(lb720)
	and a
	ret z
	ld a,(lb735)
	ld hl,lb74a
	or (hl)
	ld hl,lb75f
	or (hl)
	ld (lb720),a
	jr nz,lb831
	xor a
	ld (lb720),a
	ld a,(lb43e)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (lb720),a
	ret
.lb831
	ld iy,lb728
	ld ix,lb43f
	call lb84f
	ld iy,lb73d
	ld ix,lb451
	call lb84f
	ld iy,lb752
	ld ix,lb463
.lb84f
	call lb990
	ld a,(iy+#0b)
	and a
	jr z,lb8d4
.lb858
	dec (iy+#09)
	jr z,lb86f
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr lb8d4
.lb86f
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.lb879
	ld a,(hl)
	cp #80
	jr c,lb8b4
	cp #fe
	jr nz,lb88b
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp lb879
.lb88b
	cp #ff
	jr nz,lb894
	xor a
	ld (iy+#0d),a
	ret
.lb894
	cp #c0
	jr nc,lb8a1
	and #1f
	ld (iy+#09),a
	inc hl
	jp lb879
.lb8a1
	and #07
	add (iy+#00)
	ld de,lb767
	add e
	ld e,a
	jr nc,lb8ae
	inc d
.lb8ae
	inc hl
	ldi
	jp lb879
.lb8b4
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,lbe51
	add hl,bc
	ld e,(hl)
	ld hl,lbe6c
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr lb8da
.lb8d4
	ld e,(iy+#05)
	ld d,(iy+#06)
.lb8da
	dec (iy+#0c)
	jr z,lb8ec
	ld a,(de)
	cp #80
	call nc,lb956
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.lb8ec
	ld a,(de)
	cp #80
	jr c,lb8fd
	call lb956
	ld a,(iy+#0b)
	and a
	jr z,lb8ec
	jp lb858
.lb8fd
	cp #7f
	jr z,lb949
	cp #7e
	jr nz,lb90e
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp lb922
.lb90e
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,lb394
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.lb922
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
	jp lb476
.lb949
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.lb956
	ld a,(de)
	cp #88
	jr nc,lb974
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,lb767
	add hl,bc
	ld c,(hl)
	ld hl,lbee0
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.lb974
	cp #ff
	jr nz,lb97d
	ld (iy+#0b),#ff
	ret
.lb97d
	cp #c0
	jr nc,lb988
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.lb988
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.lb990
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,lb9a4
	res 7,(iy+#14)
	ret
.lb9a4
	ld d,#07
	bit 6,(iy+#14)
	jr nz,lb9d8
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,lb9d8
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,lb9c7
	inc h
	ld (iy+#11),h
.lb9c7
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp lba0d
.lb9d8
	ld hl,lb800
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,lb9f2
	bit 6,(iy+#14)
	jr nz,lb9f2
	ld (iy+#13),#01
	ret
.lb9f2
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
.lba0d
	add a
	ld hl,lb394
	add l
	ld l,a
	jr nc,lba16
	inc h
.lba16
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.lba26 equ $ + 6
.lba23 equ $ + 3
.lba20
	db #80,#10,#18,#0b,#18,#ff,#80,#10
.lba2c equ $ + 4
	db #18,#17,#18,#ff,#80,#10,#18,#14
	db #18,#16,#18,#1b,#18,#14,#30,#18
	db #18,#1d,#18,#16,#30,#1b,#18,#19
	db #18,#17,#30,#14,#18,#19,#18,#12
	db #30,#14,#0c,#12,#0c,#0f,#0c,#0b
.lba52 equ $ + 2
	db #0c,#ff,#10,#30,#17,#18,#1c,#18
	db #15,#30,#1a,#30,#10,#30,#0c,#0c
	db #16,#0c,#15,#0c,#13,#0c,#14,#30
.lba6f equ $ + 7
	db #0b,#30,#7f,#30,#1a,#30,#ff,#81
.lba73 equ $ + 3
	db #91,#1c,#18,#92,#1e,#18,#20,#18
.lba7d equ $ + 5
	db #1e,#12,#1e,#06,#ff,#81,#91,#1c
	db #18,#92,#1e,#18,#20,#18,#1e,#18
.lba89 equ $ + 1
	db #ff,#81,#91,#1c,#18,#1c,#18,#93
	db #19,#18,#94,#19,#18,#91,#20,#30
	db #1b,#18,#94,#1d,#18,#91,#19,#30
	db #97,#14,#18,#90,#13,#18,#14,#18
	db #1c,#18,#95,#17,#18,#97,#14,#18
	db #90,#91,#12,#30,#90,#14,#0c,#12
.lbabe equ $ + 6
	db #0c,#0f,#0c,#0b,#0c,#ff,#7f,#c0
.lbac0
	db #7f,#c0,#82,#28,#0c,#25,#06,#28
	db #06,#2a,#24,#23,#06,#25,#06,#28
	db #0c,#2a,#0c,#2f,#0c,#31,#06,#2c
	db #06,#2f,#0c,#31,#0c,#2a,#30,#28
	db #0c,#25,#06,#28,#06,#2a,#24,#23
	db #06,#25,#06,#28,#0c,#2a,#0c,#2f
	db #0c,#31,#06,#2c,#06,#2f,#0c,#31
	db #0c,#33,#30,#33,#0c,#35,#06,#30
	db #06,#33,#24,#30,#06,#2e,#06,#2c
	db #0c,#2b,#0c,#29,#12,#2b,#06,#2c
	db #0c,#30,#0c,#2e,#30,#2f,#0c,#31
	db #06,#2c,#06,#2f,#24,#2c,#06,#2a
	db #06,#28,#0c,#27,#0c,#25,#12,#27
	db #06,#28,#0c,#2a,#0c,#2c,#0c,#2a
.lbb36 equ $ + 6
	db #0c,#27,#0c,#23,#0c,#ff,#82,#28
	db #0c,#25,#06,#28,#06,#2a,#24,#23
	db #06,#25,#06,#28,#0c,#2a,#0c,#2f
	db #0c,#31,#06,#2c,#06,#2f,#0c,#31
	db #0c,#2a,#30,#28,#0c,#25,#06,#28
	db #06,#2a,#24,#23,#06,#25,#06,#28
	db #0c,#2a,#0c,#2f,#0c,#31,#06,#2c
	db #06,#2f,#0c,#31,#0c,#34,#30,#34
	db #0c,#31,#06,#34,#06,#36,#24,#3b
	db #06,#39,#06,#36,#0c,#34,#0c,#32
	db #0c,#2f,#06,#32,#06,#34,#48,#34
	db #0c,#31,#06,#34,#06,#36,#24,#2f
	db #06,#31,#06,#34,#0c,#36,#0c,#37
	db #0c,#34,#06,#37,#06,#39,#24,#32
	db #06,#34,#06,#37,#0c,#39,#0c,#ff
.lbba8
	db #91,#1c,#30,#93,#1a,#18,#94,#1a
	db #18,#91,#15,#30,#1a,#30,#13,#3c
	db #96,#1c,#0c,#94,#1c,#0c,#93,#1c
	db #0c,#91,#1c,#30,#1c,#30,#7f,#30
.lbbcb equ $ + 3
	db #15,#30,#ff,#7f,#18,#06,#18,#0b
	db #24,#0b,#0c,#10,#18,#0b,#18,#04
.lbbda equ $ + 2
	db #30,#ff,#7f,#18,#91,#15,#18,#93
.lbbe7 equ $ + 7
	db #1a,#24,#1a,#0c,#1c,#60,#ff,#3b
.lbbec equ $ + 4
	db #a8,#20,#18,#ff,#80,#0f,#18,#08
.lbbf2 equ $ + 2
	db #18,#ff,#0d,#18,#0b,#18,#09,#18
	db #0b,#18,#0d,#18,#0b,#18,#09,#18
	db #0e,#18,#0d,#30,#0d,#18,#08,#18
	db #0d,#18,#08,#18,#0d,#18,#7f,#18
.lbc11 equ $ + 1
	db #ff,#7f,#18,#0b,#18,#10,#18,#0e
	db #18,#0d,#30,#06,#30,#0b,#30,#10
	db #30,#09,#48,#09,#18,#08,#30,#0a
	db #18,#0a,#18,#0c,#30,#11,#30,#0a
	db #30,#0f,#30,#08,#48,#7f,#18,#ff
.lbc38
	db #82,#2c,#48,#2a,#18,#27,#78,#27
	db #0c,#29,#0c,#2a,#12,#29,#06,#2a
	db #0c,#2e,#0c,#2c,#18,#27,#30,#2c
	db #18,#31,#48,#2f,#18,#2c,#18,#2c
	db #0c,#2c,#0c,#2d,#0c,#2d,#06,#2c
	db #06,#2d,#0c,#2f,#0c,#2c,#60,#81
	db #20,#12,#20,#06,#1e,#0c,#20,#24
	db #82,#20,#18,#2c,#48,#2a,#18,#27
	db #78,#27,#0c,#29,#0c,#2a,#12,#29
	db #06,#2a,#0c,#2e,#0c,#2c,#18,#27
	db #30,#2c,#18,#31,#48,#2f,#18,#2c
	db #18,#2c,#0c,#2c,#0c,#2d,#0c,#2d
	db #06,#2c,#06,#2d,#0c,#2f,#0c,#31
	db #60,#81,#20,#12,#20,#06,#1e,#0c
.lbcab equ $ + 3
	db #20,#24,#ff,#82,#25,#18,#31,#3c
	db #2f,#0c,#2c,#12,#2a,#06,#28,#3c
	db #2d,#0c,#2a,#0c,#28,#0c,#26,#18
	db #28,#0c,#2a,#0c,#2c,#24,#28,#0c
	db #25,#48,#25,#18,#24,#18,#27,#0c
	db #24,#0c,#25,#12,#27,#06,#29,#0c
	db #2b,#0c,#27,#30,#2c,#30,#29,#12
	db #2b,#06,#2c,#0c,#30,#0c,#2e,#24
	db #27,#0c,#2c,#48,#20,#18,#2c,#48
	db #2a,#18,#27,#78,#27,#0c,#29,#0c
	db #2a,#12,#29,#06,#2a,#0c,#2e,#0c
	db #2c,#18,#27,#30,#2c,#18,#31,#48
	db #2f,#18,#2c,#18,#2c,#0c,#2c,#0c
	db #2d,#0c,#2d,#06,#2c,#06,#2d,#0c
	db #2f,#0c,#31,#60,#81,#20,#12,#20
	db #06,#1e,#0c,#20,#24,#7f,#18,#ff
.lbd28
	db #81,#93,#1e,#18,#94,#1e,#18,#95
.lbd36 equ $ + 6
	db #1e,#18,#94,#1e,#18,#ff,#98,#20
	db #18,#1e,#18,#1c,#18,#1e,#18,#20
	db #18,#1e,#18,#1c,#18,#21,#18,#90
	db #20,#0c,#20,#06,#20,#06,#20,#0c
	db #20,#0c,#91,#1a,#0c,#19,#0c,#1c
	db #0c,#92,#1e,#0c,#91,#19,#12,#19
	db #06,#17,#0c,#19,#24,#7f,#18,#ff
.lbd68
	db #81,#7f,#18,#91,#1a,#18,#1c,#18
	db #1c,#18,#7f,#18,#93,#1c,#18,#91
	db #15,#30,#1c,#30,#90,#25,#0c,#22
	db #0c,#23,#18,#23,#18,#21,#18,#20
	db #18,#1f,#18,#93,#18,#30,#19,#18
	db #97,#1d,#0c,#96,#1f,#0c,#90,#22
	db #18,#20,#18,#1f,#18,#1d,#18,#91
	db #19,#18,#19,#18,#92,#16,#18,#90
	db #1f,#18,#25,#18,#22,#18,#24,#18
.lbdb3 equ $ + 3
	db #7f,#18,#ff,#80,#17,#18,#0b,#54
	db #0b,#0c,#0d,#0c,#0f,#0c,#12,#0c
	db #0f,#0c,#10,#0c,#14,#0c,#17,#0c
	db #19,#06,#14,#06,#17,#90,#17,#18
	db #18,#12,#18,#06,#1a,#18,#0b,#60
	db #18,#18,#1a,#18,#0b,#18,#04,#c0
.lbde1 equ $ + 1
	db #ff,#91,#28,#0c,#7f,#54,#7f,#60
	db #90,#7f,#0c,#23,#0c,#25,#0c,#27
	db #0c,#2a,#0c,#27,#0c,#28,#0c,#2a
	db #0c,#2f,#0c,#31,#06,#2c,#06,#2f
	db #30,#91,#28,#18,#29,#12,#29,#06
	db #2b,#30,#29,#0c,#2b,#0c,#28,#12
	db #28,#06,#29,#18,#2b,#18,#29,#18
.lbe1b equ $ + 3
	db #28,#c0,#ff,#91,#1c,#0c,#7f,#54
	db #7f,#c0,#7f,#48,#1c,#18,#1d,#12
	db #1d,#06,#1f,#30,#1d,#0c,#1f,#0c
	db #1c,#12,#1c,#06,#1d,#18,#1f,#18
	db #7f,#18,#7f,#18,#90,#19,#06,#1c
	db #06,#1e,#24,#17,#06,#19,#06,#1c
.lbe4f equ $ + 7
.lbe4e equ $ + 6
	db #0c,#1e,#0c,#23,#c0,#ff,#ff,#ff
.lbe50
	db #ff
.lbe51
	;db #20,#26,#2c,#52,#6f,#7d,#89,#be
	;db #36,#a8,#cb,#da,#e7,#ec,#f2,#11
	;db #38,#ab,#28,#36,#68,#b3,#e1,#1b
	;db #4e,#4f,#50
	db lba20,lba26,lba2c,lba52
	db lba6f,lba7d,lba89,lbabe
	db lbb36,lbba8,lbbcb,lbbda
	db lbbe7,lbbec,lbbf2,lbc11
	db lbc38,lbcab,lbd28,lbd36
	db lbd68,lbdb3,lbde1,lbe1b
	db lbe4e,lbe4f,lbe50
.lbe6c
	;db #ba,#ba,#ba,#ba,#ba,#ba,#ba,#ba
	;db #bb,#bb,#bb,#bb,#bb,#bb,#bb,#bc
	;db #bc,#bc,#bd,#bd,#bd,#bd,#bd,#be
	;db #be,#be,#be
	db lba20/&100,lba26/&100,lba2c/&100,lba52/&100
	db lba6f/&100,lba7d/&100,lba89/&100,lbabe/&100
	db lbb36/&100,lbba8/&100,lbbcb/&100,lbbda/&100
	db lbbe7/&100,lbbec/&100,lbbf2/&100,lbc11/&100
	db lbc38/&100,lbcab/&100,lbd28/&100,lbd36/&100
	db lbd68/&100,lbdb3/&100,lbde1/&100,lbe1b/&100
	db lbe4e/&100,lbe4f/&100,lbe50/&100
.lbe87
	dw lbe8d
	dw lbeb6
	dw lbed3
.lbe8d
	db #fe,#f4,#8a
.lbe91 equ $ + 1
	db #00,#01,#83,#00,#02,#00,#00,#01
	db #83,#00,#03,#0a,#88,#0d,#0e,#88
	db #0d,#0e,#0f,#88,#0d,#0e,#fe,#f4
	db #8a,#00,#01,#83,#00,#02,#00,#00
	db #01,#83,#00,#03,#15,#ff
.lbeb6
	db #83,#04
.lbeb8
	db #84,#05,#06,#83,#05,#09,#0b,#84
	db #12,#13,#84,#12,#13,#14,#84,#12
	db #13,#83,#04,#84,#05,#06,#83,#05
.lbed6 equ $ + 6
	db #09,#17,#ff
.lbed3
	db #fe,#f4,#07,#08,#0c
	db #10,#11,#07,#08,#fe,#00,#16,#ff
.lbee0
	db #7f,#fe,#01,#ff,#7f,#00,#04,#04
.lbeea equ $ + 2
	db #00,#01,#7f,#fd,#01,#ff,#7f,#00
	db #04,#01,#00,#01,#7f,#ff,#50,#ff
	db #7f,#00,#04,#01,#00,#01,#7f,#fa
	db #50,#ff,#7f,#00,#03,#01,#00,#01
	db #8a,#21,#39,#00,#00,#00,#00,#00
	db #8a,#19,#39,#00,#00,#00,#00,#00
	db #89,#39,#00,#00,#00,#00,#00,#00
	db #89,#31,#00,#00,#00,#00,#00,#00
	db #89,#21,#00,#00,#00,#00,#00,#00
	db #89,#19,#00,#00,#00,#00,#00,#00
	db #89,#29,#00,#00,#00,#00,#00,#00
	db #89,#49,#00,#00,#00,#00,#00,#00
	db #0e,#fe,#01,#ff,#7f,#00,#04,#11
	db #00,#01,#53,#00,#28,#7f,#fc,#01
	db #ff,#7f,#00,#00,#1b,#00,#03,#07
	db #00,#14,#7f,#f5,#01,#ff,#7f,#00
	db #00,#5c,#00,#03,#96,#01,#0a,#7f
	db #fe,#01,#ff,#7f,#05,#04,#02,#00
	db #01,#68,#00,#28,#00
;
.music_info
	db "Thunderbirds (1988)(Grandslam Ltd.)()",0
	db "",0

	read "music_end.asm"
