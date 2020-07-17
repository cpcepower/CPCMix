; Music of Tribal Telegramm - Next Edition Music 2 (1998)(FrankenTeam)()(ST-128 Module)
; Ripped by Megachur the 05/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TRITNEM2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #9300

	read "music_header.asm"

	jp l9309
	jp l939d
	jp l9381
;
.init_music
.l9309
;
	xor a
	ld hl,l98b4
	call l937a
	ld hl,l98e2
	call l937a
	ld hl,l9910
	call l937a
	ld ix,l98b0
	ld iy,l993a
	ld de,#002e
	ld b,#03
.l9329
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l9329
	ld hl,l97c9
	ld (hl),#0c
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l97c5),hl
	ld (l97c7),hl
	ld a,#0c
	ld c,d
	call l97a5
	ld a,#0d
	ld c,d
	jp l97a5
.l937a
	ld b,#2a
.l937c
	ld (hl),a
	inc hl
	djnz l937c
	ret
;
.stop_music
.l9381
;
	ld a,#07
	ld c,#3f
	call l97a5
	ld a,#08
	ld c,#00
	call l97a5
	ld a,#09
	ld c,#00
	call l97a5
	ld a,#0a
	ld c,#00
	jp l97a5
;
.play_music
.l939d
;
	ld hl,l97cb
	dec (hl)
	ld ix,l98b0
	ld bc,l98be
	call l943f
	ld ix,l98de
	ld bc,l98ec
	call l943f
	ld ix,l990c
	ld bc,l991a
	call l943f
	ld hl,l97c4
	ld de,l97cb
	ld b,#06
	call l941c
	ld b,#07
	call l941c
	ld b,#0b
	call l941c
	ld b,#0d
	call l941c
	ld de,l97cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l98cf
	call l93f5
	ld hl,l98fd
	call l93f5
	ld hl,l992b
.l93f5
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l940a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l940a
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l941c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l97a5
.l9427
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l97a5
.l943f
	ld a,(l97cb)
	or a
	jp nz,l94f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l94f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l9427
	or a
	jp z,l94ec
	ld r,a
	and #7f
	cp #10
	jr c,l94c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l963f
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l94a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l94a0
	rrca
	ld c,a
	ld hl,l9940
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l94bf
	ld (ix+#1e),b
.l94bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l94e0
.l94c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l97d0
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	ld sp,#3332
	inc (hl)
	dec (hl)
.l94e0 equ $ + 1
	ld (hl),#7a
	or a
	jr nz,l94ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l94ee
.l94ec
	ld a,(hl)
	inc hl
.l94ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l94f7
	ld a,(ix+#17)
	or a
	jr nz,l950d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l950d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l9523
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l9523
	ld a,(ix+#0d)
	or a
	jr z,l9531
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l954f
.l9531
	ld a,(ix+#1a)
	or a
	jp z,l9556
	ld c,a
	cp #03
	jr nz,l953e
	xor a
.l953e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l954f
	ld a,(ix+#18)
	dec c
	jr z,l954f
	ld a,(ix+#19)
.l954f
	add (ix+#07)
	ld b,d
	call l963f
.l9556
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l957e
	dec (ix+#1b)
	jr nz,l957e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l95b6
.l957e
	ld a,(ix+#29)
	or a
	jr z,l95b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l95ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l95a4
	ld (ix+#29),#ff
	jr l95ad
.l95a4
	cp (ix+#2b)
	jr nz,l95ad
	ld (ix+#29),#01
.l95ad
	ld b,d
	or a
	jp p,l95b3
	dec b
.l95b3
	ld c,a
	jr l95c1
.l95b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l95c1
	pop hl
	bit 7,(ix+#14)
	jr z,l95ca
	ld h,d
	ld l,d
.l95ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l97a5
	ld c,h
	ld a,(ix+#02)
	call l97a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l961d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l960c
	dec (ix+#09)
	jr nz,l960c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l9604
	xor a
	jr l9609
.l9604
	cp #10
	jr nz,l9609
	dec a
.l9609
	ld (ix+#1e),a
.l960c
	ld a,b
	sub (ix+#1e)
	jr nc,l9613
	xor a
.l9613
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l97a5
.l961d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l97cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l963b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l963b
	ld (l97cc),hl
	ret
.l963f
	ld hl,l97ee
	cp #61
	jr nc,l9649
	add a
	ld c,a
	add hl,bc
.l9649
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l9653
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l9778
	ld (ix+#1e),a
	jp l94e0
.l9665
	dec b
.l9666
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l9671
	neg
.l9671
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l94e0
.l9687
	dec b
	jr l968b
.l968a
	inc b
.l968b
	call l9778
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l94e0
.l969a
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l975d
.l96ab
	ld a,(hl)
	inc hl
	or a
	jr z,l96cd
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l96cd
	ld (ix+#29),a
	jp l94e0
.l96d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l97cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l97ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l94e0
.l96ed
	ld a,(hl)
	or a
	jr z,l96fe
	call l977a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l94e0
.l96fe
	ld hl,#0101
	ld (l97ca),hl
	jp l94e0
.l9707
	call l9778
	ld (ix+#1e),a
	jp l94e0
.l9710
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l9789
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l9789
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l94e0
.l9732
	ld a,(hl)
	inc hl
	ld (l97c9),a
	jp l94e0
.l973a
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l94e0
.l9759
	call l9778
	add a
.l975d
	ld b,#00
	ld c,a
	push hl
	ld hl,l99c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l94e0
.l9778
	ld a,(hl)
	inc hl
.l977a
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l9789
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l9940
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l97a5
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
.l97c4
	ret
.l97cc equ $ + 7
.l97cb equ $ + 6
.l97ca equ $ + 5
.l97c9 equ $ + 4
.l97c7 equ $ + 2
.l97c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l97cf equ $ + 2
.l97ce equ $ + 1
	db #38,#00,#00
.l97d0
	dw l9653,l9666,l9665,l968a
	dw l9687,l969a,l96ab,l96d3
	dw l96ed,l96d3,l9707,l9710
	dw l9732,l973a,l9759
.l97ee
	dw #0000,#0e18,#0d4d,#0c8e
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
.l98b0 equ $ + 2
	dw #000f,#0008
.l98b4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l98be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l98cf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l98de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l98e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l98ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l98fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9910 equ $ + 6
.l990c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l991a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l992b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9940 equ $ + 6
.l993a
	db #60,#9a,#7e,#9a,#9c,#9a,#e0,#99
	db #20,#9a,#40,#9a,#00,#00,#d2,#52
	db #32,#db,#52,#dc,#c0,#88,#ef,#55
	db #a4,#92,#a4,#92,#d2,#3f,#d2,#52
	db #a4,#92,#a4,#92,#d2,#3f,#d2,#52
	db #a4,#92,#a4,#92,#d2,#3f,#d2,#52
	db #a4,#92,#a4,#92,#d2,#3f,#d2,#52
	db #a4,#92,#a4,#92,#d2,#3f,#d2,#52
	db #a4,#92,#a4,#92,#d2,#3f,#d2,#52
	db #a4,#92,#a4,#92,#d2,#3f,#d2,#52
	db #a4,#92,#a4,#92,#d2,#3f,#d2,#52
	db #72,#dc,#92,#dc,#e0,#89,#d2,#dc
	db #a4,#92,#a4,#92,#d2,#3f,#a4,#92
	db #a4,#92,#a4,#92,#20,#8a,#12,#dd
	db #a4,#92,#a4,#92,#d2,#3f,#a4,#92
	db #d2,#52,#22,#53,#90,#00,#a2,#53
.l99c0 equ $ + 6
	db #e2,#53,#22,#54,#90,#01,#a2,#54
	db #d2,#52,#d2,#52,#d2,#52,#d2,#52
	db #d2,#52,#d2,#52,#d2,#52,#d2,#52
	db #d2,#52,#d2,#52,#d2,#52,#d2,#52
	db #d2,#52,#d2,#52,#d2,#52,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0e,#0e,#0d,#0c,#0c,#0c,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#05,#05
	db #05,#04,#04,#04,#03,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#ba
	db #9a,#00,#12,#9b,#00,#12,#9b,#00
	db #73,#9b,#00,#d5,#9b,#00,#36,#9c
	db #00,#73,#9b,#00,#d5,#9b,#00,#36
	db #9c,#80,#60,#9a,#00,#68,#9c,#00
	db #84,#9c,#00,#45,#9d,#00,#a6,#9d
	db #00,#47,#9e,#00,#e8,#9e,#00,#a6
	db #9d,#00,#47,#9e,#00,#e8,#9e,#80
	db #7e,#9a,#00,#49,#9f,#00,#9f,#9f
	db #00,#9f,#9f,#00,#01,#a0,#00,#01
	db #a0,#00,#63,#a0,#00,#01,#a0,#00
	db #01,#a0,#00,#63,#a0,#80,#9c,#9a
	db #31,#0d,#0c,#02,#3d,#00,#02,#44
	db #00,#02,#3d,#00,#02,#33,#00,#02
	db #3f,#00,#06,#31,#0d,#0b,#02,#3d
	db #00,#02,#44,#00,#02,#3d,#00,#02
	db #33,#00,#02,#3f,#00,#06,#31,#0d
	db #0a,#02,#3d,#00,#02,#44,#00,#02
	db #3d,#00,#02,#31,#00,#02,#3d,#00
	db #02,#44,#00,#02,#3d,#00,#02,#31
	db #00,#02,#3d,#00,#02,#44,#00,#02
	db #3d,#00,#02,#31,#00,#02,#3d,#00
	db #02,#44,#00,#02,#3d,#00,#02,#ff
	db #31,#00,#02,#3d,#00,#02,#44,#00
	db #02,#3d,#00,#02,#31,#00,#02,#3d
	db #00,#02,#44,#00,#02,#3d,#00,#02
	db #31,#00,#02,#3d,#00,#02,#44,#00
	db #02,#3d,#00,#02,#31,#00,#02,#3d
	db #00,#02,#44,#00,#02,#3d,#00,#02
	db #31,#00,#02,#3d,#00,#02,#44,#00
	db #02,#3d,#00,#02,#31,#00,#02,#3d
	db #00,#02,#44,#00,#02,#3d,#00,#02
	db #31,#00,#02,#3d,#00,#02,#44,#00
	db #02,#3d,#00,#02,#31,#00,#02,#3d
	db #00,#02,#44,#00,#02,#3d,#00,#02
	db #ff,#31,#0d,#0a,#02,#3d,#00,#02
	db #44,#00,#02,#3d,#00,#02,#31,#00
	db #02,#3d,#00,#02,#44,#00,#02,#3d
	db #00,#02,#33,#00,#02,#3f,#00,#02
	db #43,#00,#02,#3f,#00,#02,#33,#00
	db #02,#3f,#00,#02,#43,#00,#02,#3f
	db #00,#02,#31,#00,#02,#3d,#00,#02
	db #44,#00,#02,#3d,#00,#02,#31,#00
	db #02,#3d,#00,#02,#44,#00,#02,#3d
	db #00,#02,#33,#00,#02,#3f,#00,#02
	db #43,#00,#02,#3f,#00,#02,#33,#00
	db #02,#3f,#00,#02,#43,#00,#02,#3f
	db #00,#02,#ff,#31,#00,#02,#3d,#00
	db #02,#44,#00,#02,#3d,#00,#02,#31
	db #00,#02,#3d,#00,#02,#44,#00,#02
	db #3d,#00,#02,#33,#00,#02,#3f,#00
	db #02,#43,#00,#02,#3f,#00,#02,#33
	db #00,#02,#3f,#00,#02,#43,#00,#02
	db #3f,#00,#02,#31,#00,#02,#3d,#00
	db #02,#44,#00,#02,#3d,#00,#02,#31
	db #00,#02,#3d,#00,#02,#44,#00,#02
	db #3d,#00,#02,#33,#00,#02,#3f,#00
	db #02,#43,#00,#02,#3f,#00,#02,#33
	db #00,#02,#3f,#00,#02,#43,#00,#02
	db #3f,#00,#02,#ff,#2e,#0d,#05,#04
	db #3a,#00,#04,#41,#00,#04,#3a,#00
	db #04,#2e,#00,#04,#3a,#00,#04,#41
	db #00,#04,#3a,#00,#04,#2c,#00,#04
	db #38,#00,#04,#3f,#00,#04,#38,#00
	db #04,#2c,#00,#04,#38,#00,#04,#3f
	db #00,#04,#38,#00,#04,#ff,#74,#0a
	db #09,#08,#74,#0a,#08,#08,#74,#0a
	db #09,#08,#74,#0a,#08,#08,#74,#0a
	db #07,#10,#74,#0a,#09,#0f,#74,#01
	db #10,#ff,#50,#0b,#10,#50,#0b,#11
	db #50,#0b,#12,#50,#0b,#13,#50,#0b
	db #14,#50,#0b,#15,#50,#0b,#16,#50
	db #0b,#17,#4d,#0b,#10,#4d,#0b,#11
	db #4d,#0b,#12,#4d,#0b,#13,#4d,#0b
	db #14,#4d,#0b,#15,#4d,#0b,#16,#4d
	db #0b,#17,#4f,#0b,#10,#4f,#0b,#11
	db #4f,#0b,#12,#4f,#0b,#13,#4f,#0b
	db #14,#4f,#0b,#15,#4f,#0b,#16,#4f
	db #0b,#17,#4b,#0b,#10,#4b,#0b,#11
	db #4b,#0b,#12,#4b,#0b,#13,#4b,#0b
	db #14,#4b,#0b,#15,#4b,#0b,#16,#4b
	db #0b,#17,#49,#0b,#10,#49,#0b,#11
	db #49,#0b,#12,#49,#0b,#13,#49,#0b
	db #14,#49,#0b,#15,#49,#0b,#16,#49
	db #0b,#17,#4d,#0b,#10,#4d,#0b,#11
	db #4d,#0b,#12,#4d,#0b,#13,#4d,#0b
	db #14,#4d,#0b,#15,#4d,#0b,#16,#4d
	db #0b,#17,#4f,#0b,#10,#4f,#0b,#11
	db #4f,#0b,#12,#4f,#0b,#13,#4f,#0b
	db #14,#4f,#0b,#15,#4f,#0b,#16,#4f
	db #0b,#17,#4b,#0b,#10,#4b,#0b,#11
	db #4b,#0b,#12,#4b,#0b,#13,#4b,#0b
	db #14,#4b,#0b,#15,#4b,#0b,#16,#4b
	db #0b,#17,#ff,#50,#0b,#20,#50,#0b
	db #21,#50,#0b,#22,#50,#0b,#23,#4d
	db #0b,#20,#4d,#0b,#21,#4d,#0b,#22
	db #4d,#0b,#23,#4f,#0b,#20,#4f,#0b
	db #21,#4f,#0b,#22,#4f,#0b,#23,#4b
	db #0b,#20,#4b,#0b,#21,#4b,#0b,#22
	db #4b,#0b,#23,#49,#0b,#20,#49,#0b
	db #21,#49,#0b,#22,#49,#0b,#23,#4d
	db #0b,#20,#4d,#0b,#21,#4d,#0b,#22
	db #4d,#0b,#23,#4f,#0b,#20,#4f,#0b
	db #21,#4f,#0b,#22,#4f,#0b,#23,#4b
	db #0b,#20,#4b,#0b,#21,#4b,#0b,#22
	db #4b,#0b,#23,#ff,#50,#0b,#10,#b8
	db #00,#50,#0b,#11,#b8,#00,#50,#0b
	db #12,#b8,#00,#50,#0b,#13,#b8,#00
	db #4d,#0b,#10,#b5,#00,#4d,#0b,#11
	db #b5,#00,#4d,#0b,#12,#b5,#00,#4d
	db #0b,#13,#b5,#00,#4f,#0b,#10,#b7
	db #00,#4f,#0b,#11,#b7,#00,#4f,#0b
	db #12,#b7,#00,#4f,#0b,#13,#b7,#00
	db #4b,#0b,#10,#b3,#00,#4b,#0b,#11
	db #b3,#00,#4b,#0b,#12,#b3,#00,#4b
	db #0b,#13,#b3,#00,#49,#0b,#10,#b1
	db #00,#49,#0b,#11,#b1,#00,#49,#0b
	db #12,#b1,#00,#49,#0b,#13,#b1,#00
	db #4d,#0b,#10,#b5,#00,#4d,#0b,#11
	db #b5,#00,#50,#0b,#10,#b8,#00,#4d
	db #0b,#10,#b5,#00,#4f,#0b,#10,#b7
	db #00,#4f,#0b,#11,#b7,#00,#4f,#0b
	db #12,#b7,#00,#4f,#0b,#13,#b7,#00
	db #4b,#0b,#10,#b3,#00,#4b,#0b,#11
	db #b3,#00,#4b,#0b,#12,#b3,#00,#4b
	db #0b,#13,#b3,#00,#ff,#5c,#0b,#10
	db #b8,#00,#5c,#0b,#11,#b8,#00,#5c
	db #0b,#12,#b8,#00,#5c,#0b,#13,#b8
	db #00,#59,#0b,#10,#b5,#00,#59,#0b
	db #11,#b5,#00,#59,#0b,#12,#b5,#00
	db #59,#0b,#13,#b5,#00,#5b,#0b,#10
	db #b7,#00,#5b,#0b,#11,#b7,#00,#5b
	db #0b,#12,#b7,#00,#5b,#0b,#13,#b7
	db #00,#57,#0b,#10,#b3,#00,#57,#0b
	db #11,#b3,#00,#57,#0b,#12,#b3,#00
	db #57,#0b,#13,#b3,#00,#55,#0b,#10
	db #b1,#00,#55,#0b,#11,#b1,#00,#55
	db #0b,#12,#b1,#00,#55,#0b,#13,#b1
	db #00,#59,#0b,#10,#b5,#00,#59,#0b
	db #11,#b5,#00,#5c,#0b,#10,#b8,#00
	db #59,#0b,#10,#b5,#00,#5b,#0b,#10
	db #b7,#00,#5b,#0b,#11,#b7,#00,#5b
	db #0b,#12,#b7,#00,#5b,#0b,#13,#b7
	db #00,#57,#0b,#10,#b3,#00,#57,#0b
	db #11,#b3,#00,#57,#0b,#12,#b3,#00
	db #57,#0b,#13,#b3,#00,#ff,#59,#0b
	db #20,#35,#00,#02,#59,#0b,#21,#35
	db #00,#02,#59,#0b,#22,#35,#00,#02
	db #59,#0b,#23,#35,#00,#02,#59,#0b
	db #20,#35,#00,#02,#59,#0b,#21,#35
	db #00,#02,#5e,#0b,#20,#46,#00,#02
	db #59,#0b,#20,#35,#00,#02,#57,#0b
	db #20,#33,#00,#02,#57,#0b,#21,#33
	db #00,#02,#57,#0b,#22,#33,#00,#02
	db #57,#0b,#23,#33,#00,#02,#57,#0b
	db #24,#33,#00,#02,#57,#0b,#23,#33
	db #00,#02,#57,#0b,#22,#33,#00,#02
	db #57,#0b,#21,#33,#00,#02,#ff,#00
	db #01,#38,#00,#02,#3f,#00,#02,#3f
	db #00,#02,#38,#00,#02,#3a,#00,#02
	db #46,#00,#06,#38,#00,#02,#3f,#00
	db #02,#3f,#00,#02,#38,#00,#02,#3a
	db #00,#02,#46,#00,#06,#38,#00,#02
	db #3f,#00,#02,#3f,#00,#02,#38,#00
	db #02,#38,#00,#02,#3f,#00,#02,#3f
	db #00,#02,#38,#00,#02,#38,#00,#02
	db #3f,#00,#02,#3f,#00,#02,#38,#00
	db #02,#38,#00,#02,#3f,#00,#02,#3f
	db #00,#02,#b8,#00,#ff,#00,#01,#38
	db #00,#02,#3f,#00,#02,#3f,#00,#02
	db #38,#00,#02,#38,#00,#02,#3f,#00
	db #02,#3f,#00,#02,#38,#00,#02,#38
	db #00,#02,#3f,#00,#02,#3f,#00,#02
	db #38,#00,#02,#38,#00,#02,#3f,#00
	db #02,#3f,#00,#02,#38,#00,#02,#38
	db #00,#02,#3f,#00,#02,#3f,#00,#02
	db #38,#00,#02,#38,#00,#02,#3f,#00
	db #02,#3f,#00,#02,#38,#00,#02,#38
	db #00,#02,#3f,#00,#02,#3f,#00,#02
	db #38,#00,#02,#38,#00,#02,#3f,#00
	db #02,#3f,#00,#02,#b8,#00,#ff,#00
	db #01,#38,#00,#02,#3f,#00,#02,#3f
	db #00,#02,#38,#00,#02,#38,#00,#02
	db #3f,#00,#02,#3f,#00,#02,#38,#00
	db #02,#3a,#00,#02,#41,#00,#02,#41
	db #00,#02,#3a,#00,#02,#3a,#00,#02
	db #41,#00,#02,#41,#00,#02,#3a,#00
	db #02,#38,#00,#02,#3f,#00,#02,#3f
	db #00,#02,#38,#00,#02,#38,#00,#02
	db #3f,#00,#02,#3f,#00,#02,#38,#00
	db #02,#3a,#00,#02,#41,#00,#02,#41
	db #00,#02,#3a,#00,#02,#3a,#00,#02
	db #41,#00,#02,#41,#00,#02,#ba,#00
	db #ff,#00,#02,#35,#00,#04,#3d,#00
	db #04,#3d,#00,#04,#35,#00,#04,#35
	db #00,#04,#3d,#00,#04,#3d,#00,#04
	db #35,#00,#04,#33,#00,#04,#3c,#00
	db #04,#3c,#00,#04,#33,#00,#04,#33
	db #00,#04,#3c,#00,#04,#3c,#00,#04
	db #33,#00,#02,#ff
;
.music_info
	db "Tribal Telegramm - Next Edition Music 2 (1998)(FrankenTeam)()",0
	db "ST-128 Module",0

	read "music_end.asm"
