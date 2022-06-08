; Music of The Essential Amiga Grafix Selection (1996)(Donut System)(Pooh)(ST-128 Module)
; Ripped by Megachur the 10/04/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THEESAGS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #9000

	read "music_header.asm"

	jp l9009
	jp l909d
	jp l9081
;
.init_music
.l9009
;
	xor a
	ld hl,l95b4
	call l907a
	ld hl,l95e2
	call l907a
	ld hl,l9610
	call l907a
	ld ix,l95b0
	ld iy,l963a
	ld de,#002e
	ld b,#03
.l9029
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
	djnz l9029
	ld hl,l94c9
	ld (hl),#06
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l94c5),hl
	ld (l94c7),hl
	ld a,#0c
	ld c,d
	call l94a5
	ld a,#0d
	ld c,d
	jp l94a5
.l907a
	ld b,#2a
.l907c
	ld (hl),a
	inc hl
	djnz l907c
	ret
;
.stop_music
.l9081
;
	ld a,#07
	ld c,#3f
	call l94a5
	ld a,#08
	ld c,#00
	call l94a5
	ld a,#09
	ld c,#00
	call l94a5
	ld a,#0a
	ld c,#00
	jp l94a5
;
.play_music
.l909d
;
	ld hl,l94cb
	dec (hl)
	ld ix,l95b0
	ld bc,l95be
	call l913f
	ld ix,l95de
	ld bc,l95ec
	call l913f
	ld ix,l960c
	ld bc,l961a
	call l913f
	ld hl,l94c4
	ld de,l94cb
	ld b,#06
	call l911c
	ld b,#07
	call l911c
	ld b,#0b
	call l911c
	ld b,#0d
	call l911c
	ld de,l94cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l95cf
	call l90f5
	ld hl,l95fd
	call l90f5
	ld hl,l962b
.l90f5
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
	jr nz,l910a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l910a
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
.l911c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l94a5
.l9127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l94a5
.l913f
	ld a,(l94cb)
	or a
	jp nz,l91f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l91f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l9127
	or a
	jp z,l91ec
	ld r,a
	and #7f
	cp #10
	jr c,l91c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #03
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l933f
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
	jr z,l91a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l91a0
	rrca
	ld c,a
	ld hl,l9640
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
	jr z,l91bf
	ld (ix+#1e),b
.l91bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l91e0
.l91c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l94d0
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add (hl)
	add a
	add a
	add l
	add a
.l91e0
	ld a,d
	or a
	jr nz,l91ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l91ee
.l91ec
	ld a,(hl)
	inc hl
.l91ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l91f7
	ld a,(ix+#17)
	or a
	jr nz,l920d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l920d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l9223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l9223
	ld a,(ix+#0d)
	or a
	jr z,l9231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l924f
.l9231
	ld a,(ix+#1a)
	or a
	jp z,l9256
	ld c,a
	cp #03
	jr nz,l923e
	xor a
.l923e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l924f
	ld a,(ix+#18)
	dec c
	jr z,l924f
	ld a,(ix+#19)
.l924f
	add (ix+#07)
	ld b,d
	call l933f
.l9256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l927e
	dec (ix+#1b)
	jr nz,l927e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l92b6
.l927e
	ld a,(ix+#29)
	or a
	jr z,l92b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l92ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l92a4
	ld (ix+#29),#ff
	jr l92ad
.l92a4
	cp (ix+#2b)
	jr nz,l92ad
	ld (ix+#29),#01
.l92ad
	ld b,d
	or a
	jp p,l92b3
	dec b
.l92b3
	ld c,a
	jr l92c1
.l92b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l92c1
	pop hl
	bit 7,(ix+#14)
	jr z,l92ca
	ld h,d
	ld l,d
.l92ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l94a5
	ld c,h
	ld a,(ix+#02)
	call l94a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l931d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l930c
	dec (ix+#09)
	jr nz,l930c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l9304
	xor a
	jr l9309
.l9304
	cp #10
	jr nz,l9309
	dec a
.l9309
	ld (ix+#1e),a
.l930c
	ld a,b
	sub (ix+#1e)
	jr nc,l9313
	xor a
.l9313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l94a5
.l931d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l94cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l933b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l933b
	ld (l94cc),hl
	ret
.l933f
	ld hl,l94ee
	cp #61
	jr nc,l9349
	add a
	ld c,a
	add hl,bc
.l9349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l9353
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l9478
	ld (ix+#1e),a
	jp l91e0
.l9365
	dec b
.l9366
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l9371
	neg
.l9371
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
	jp l91e0
.l9387
	dec b
	jr l938b
.l938a
	inc b
.l938b
	call l9478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l91e0
.l939a
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
	jp l945d
.l93ab
	ld a,(hl)
	inc hl
	or a
	jr z,l93cd
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
.l93cd
	ld (ix+#29),a
	jp l91e0
.l93d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l94cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l94ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l91e0
.l93ed
	ld a,(hl)
	or a
	jr z,l93fe
	call l947a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l91e0
.l93fe
	ld hl,#0101
	ld (l94ca),hl
	jp l91e0
.l9407
	call l9478
	ld (ix+#1e),a
	jp l91e0
.l9410
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l9489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l9489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l91e0
.l9432
	ld a,(hl)
	inc hl
	ld (l94c9),a
	jp l91e0
.l943a
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
	jp l91e0
.l9459
	call l9478
	add a
.l945d
	ld b,#00
	ld c,a
	push hl
	ld hl,l96c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l91e0
.l9478
	ld a,(hl)
	inc hl
.l947a
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
.l9489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l9640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l94a5
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
	ret
.l94cb equ $ + 7
.l94ca equ $ + 6
.l94c9 equ $ + 5
.l94c7 equ $ + 3
.l94c5 equ $ + 1
.l94c4
	db #00,#06,#38,#11,#08,#06,#29,#05
.l94cf equ $ + 3
.l94ce equ $ + 2
.l94cc
	db #06,#38,#11,#08
.l94d0
	dw l9353,l9366,l9365,l938a
	dw l9387,l939a,l93ab,l93d3
	dw l93ed,l93d3,l9407,l9410
	dw l9432,l943a,l9459
.l94ee
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
.l95b0 equ $ + 2
	dw #000f,#0008
.l95b4 equ $ + 2
	db #01,#08,#18,#02,#00,#22,#00,#00
.l95be equ $ + 4
	db #00,#00,#00,#00,#40,#93,#80,#93
	db #00,#92,#40,#00,#08,#18,#00,#00
.l95cf equ $ + 5
	db #00,#00,#00,#00,#00,#01,#8a,#94
	db #e3,#93,#00,#80,#00,#00,#00,#00
.l95de equ $ + 4
	db #00,#00,#01,#01,#09,#02,#03,#10
.l95e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l95ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l95fd equ $ + 3
	db #00,#00,#00,#02,#5e,#96,#07,#94
	db #00,#ff,#00,#00,#00,#00,#00,#00
.l9610 equ $ + 6
.l960c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#18,#02
	db #00,#22,#00,#00,#00,#00,#00,#00
.l961a
	db #a0,#91,#a0,#93,#00,#92,#40,#00
	db #08,#18,#00,#00,#00,#00,#00,#00
.l962b equ $ + 1
	db #00,#01,#34,#98,#2b,#94,#00,#c0
	db #00,#00,#00,#00,#00,#00,#01,#01
.l9640 equ $ + 6
.l963a
	db #20,#99,#44,#99,#68,#99,#92,#4a
	db #92,#4a,#92,#4a,#00,#00,#e0,#96
	db #20,#97,#40,#97,#00,#00,#60,#97
	db #a0,#97,#c0,#97,#c0,#00,#e0,#97
	db #20,#98,#40,#98,#c0,#00,#92,#4a
	db #92,#4a,#92,#4a,#00,#00,#92,#4a
	db #92,#4a,#92,#4a,#00,#00,#92,#4a
	db #92,#4a,#92,#4a,#00,#00,#e0,#96
	db #60,#98,#40,#97,#40,#03,#80,#98
	db #c0,#98,#40,#97,#40,#00,#92,#4a
	db #92,#4a,#92,#4a,#00,#00,#92,#4a
	db #92,#4a,#92,#4a,#00,#00,#92,#4a
	db #92,#4a,#92,#4a,#00,#00,#e0,#96
	db #e0,#98,#40,#97,#40,#00,#e0,#96
	db #00,#99,#40,#97,#42,#02,#92,#4a
	db #92,#4a,#92,#4a,#00,#00,#92,#4a
.l96c0 equ $ + 6
	db #92,#4a,#92,#4a,#00,#00,#92,#4a
	db #92,#4a,#92,#4a,#92,#4a,#92,#4a
	db #92,#4a,#92,#4a,#92,#4a,#92,#4a
	db #92,#4a,#92,#4a,#92,#4a,#92,#4a
	db #92,#4a,#92,#4a,#92,#4a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0d
	db #0d,#0c,#0b,#0b,#0a,#09,#09,#08
	db #07,#07,#06,#05,#05,#04,#03,#03
	db #02,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#90,#01
	db #d0,#01,#10,#02,#50,#02,#90,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0f
	db #0f,#0f,#0e,#0e,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#fd,#00
	db #2f,#01,#61,#01,#93,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0e,#0d,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#08,#00
	db #00,#00,#06,#06,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#00,#00,#00,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#00,#8c
	db #99,#00,#3d,#9a,#00,#eb,#9a,#00
	db #eb,#9a,#00,#eb,#9a,#00,#8c,#99
	db #00,#3d,#9a,#00,#eb,#9a,#00,#eb
	db #9a,#00,#eb,#9a,#00,#eb,#9a,#80
	db #20,#99,#00,#9c,#9b,#00,#9c,#9b
	db #00,#c2,#9b,#00,#c5,#9c,#00,#c5
	db #9c,#00,#9c,#9b,#00,#9c,#9b,#00
	db #c5,#9c,#00,#c5,#9c,#00,#c5,#9c
	db #00,#c5,#9c,#80,#44,#99,#00,#50
	db #9d,#00,#50,#9d,#00,#cd,#9d,#00
	db #cd,#9d,#00,#cd,#9d,#00,#50,#9d
	db #00,#50,#9d,#00,#84,#9e,#00,#f4
	db #9e,#00,#cd,#9d,#00,#cd,#9d,#80
	db #68,#99,#40,#21,#10,#a3,#88,#22
	db #af,#88,#11,#01,#10,#b8,#30,#af
	db #88,#11,#01,#10,#a3,#88,#22,#40
	db #21,#10,#a3,#88,#22,#af,#88,#11
	db #2f,#81,#14,#b8,#30,#a3,#88,#22
	db #af,#88,#11,#a3,#88,#22,#40,#21
	db #10,#a3,#88,#22,#af,#88,#11,#01
	db #10,#b8,#30,#af,#88,#11,#01,#10
	db #a3,#88,#22,#40,#21,#10,#a3,#88
	db #22,#af,#88,#11,#2f,#81,#14,#b8
	db #30,#a3,#88,#22,#af,#88,#11,#a3
	db #88,#22,#40,#21,#10,#a3,#88,#22
	db #af,#88,#11,#01,#10,#b8,#30,#af
	db #88,#11,#01,#10,#a3,#88,#22,#40
	db #21,#10,#a3,#88,#22,#af,#88,#11
	db #2f,#81,#14,#b8,#30,#a3,#88,#22
	db #af,#88,#11,#a3,#88,#22,#40,#21
	db #10,#a3,#88,#22,#af,#88,#11,#01
	db #10,#b8,#30,#af,#88,#11,#01,#10
	db #a3,#88,#22,#40,#21,#10,#a3,#88
	db #22,#af,#88,#11,#2f,#81,#14,#b8
	db #30,#a3,#88,#22,#af,#88,#11,#a3
	db #88,#22,#ff,#40,#21,#10,#a3,#88
	db #22,#af,#88,#11,#01,#10,#b8,#30
	db #af,#88,#11,#01,#10,#a3,#88,#22
	db #40,#21,#10,#a3,#88,#22,#af,#88
	db #11,#2f,#81,#14,#b8,#30,#a3,#88
	db #22,#af,#88,#11,#a3,#88,#22,#40
	db #21,#10,#a3,#88,#22,#af,#88,#11
	db #01,#10,#b8,#30,#af,#88,#11,#01
	db #10,#a3,#88,#22,#40,#21,#10,#a3
	db #88,#22,#af,#88,#11,#2f,#81,#14
	db #b8,#30,#a3,#88,#22,#af,#88,#11
	db #a3,#88,#22,#40,#21,#10,#a3,#88
	db #22,#af,#88,#11,#01,#10,#b8,#30
	db #af,#88,#11,#01,#10,#a3,#88,#22
	db #40,#21,#10,#a3,#88,#22,#af,#88
	db #11,#2f,#81,#14,#b8,#30,#a3,#88
	db #22,#af,#88,#11,#a3,#88,#22,#40
	db #21,#10,#a3,#88,#22,#af,#88,#11
	db #01,#10,#b8,#30,#af,#88,#11,#01
	db #10,#a3,#88,#22,#40,#21,#10,#a3
	db #88,#22,#af,#88,#11,#2f,#81,#14
	db #b8,#30,#b8,#30,#b8,#30,#b8,#30
	db #ff,#40,#21,#10,#a3,#88,#22,#2f
	db #88,#11,#02,#38,#31,#10,#2f,#88
	db #11,#02,#a3,#88,#22,#40,#21,#10
	db #a3,#88,#22,#af,#88,#11,#af,#80
	db #38,#31,#10,#a3,#88,#22,#af,#88
	db #11,#a3,#88,#22,#40,#21,#10,#a6
	db #88,#1c,#32,#88,#0e,#02,#38,#31
	db #10,#32,#88,#0e,#02,#a6,#88,#1c
	db #40,#21,#10,#a6,#88,#1c,#b2,#88
	db #0e,#b2,#80,#38,#31,#10,#a6,#88
	db #1c,#40,#21,#10,#a6,#88,#0e,#40
	db #21,#10,#9f,#88,#2a,#2b,#88,#15
	db #02,#38,#31,#10,#2b,#88,#15,#02
	db #9f,#88,#2a,#40,#21,#10,#9f,#88
	db #2a,#ab,#88,#15,#ab,#80,#38,#31
	db #10,#9f,#88,#2a,#ab,#88,#15,#9f
	db #88,#2a,#40,#21,#10,#9c,#88,#32
	db #28,#88,#19,#02,#38,#31,#10,#28
	db #88,#19,#02,#9e,#88,#2d,#40,#21
	db #10,#9e,#88,#2d,#aa,#88,#16,#9e
	db #88,#2d,#38,#31,#10,#ad,#88,#13
	db #a3,#88,#22,#38,#31,#10,#ff,#00
	db #40,#ff,#fe,#18,#2d,#1b,#10,#ad
	db #10,#af,#10,#af,#10,#b2,#10,#b2
	db #10,#af,#10,#2f,#10,#19,#2d,#1b
	db #10,#ad,#10,#af,#10,#af,#10,#b4
	db #10,#b4,#10,#af,#10,#af,#10,#ff
	db #47,#74,#12,#47,#74,#12,#04,#12
	db #47,#74,#12,#04,#12,#47,#74,#12
	db #47,#74,#12,#04,#12,#47,#74,#12
	db #47,#74,#12,#47,#74,#12,#04,#12
	db #42,#74,#12,#42,#74,#12,#42,#74
	db #12,#42,#74,#12,#45,#74,#12,#45
	db #74,#12,#04,#12,#45,#74,#12,#04
	db #12,#45,#74,#12,#45,#74,#12,#04
	db #12,#4a,#74,#12,#4a,#74,#12,#4a
	db #74,#12,#04,#12,#c7,#30,#c7,#30
	db #c7,#30,#c7,#30,#43,#74,#12,#43
	db #74,#12,#04,#12,#43,#74,#12,#04
	db #12,#43,#74,#12,#43,#74,#12,#04
	db #12,#43,#74,#12,#43,#74,#12,#43
	db #74,#12,#04,#12,#4a,#74,#12,#04
	db #12,#49,#74,#12,#04,#12,#40,#74
	db #12,#40,#74,#12,#04,#12,#40,#74
	db #12,#04,#12,#40,#74,#12,#40,#74
	db #12,#04,#12,#42,#74,#12,#42,#74
	db #12,#42,#74,#12,#04,#12,#45,#74
	db #12,#04,#12,#47,#74,#12,#04,#12
	db #ff,#2f,#74,#12,#2f,#74,#12,#04
	db #12,#2f,#74,#12,#04,#12,#2f,#74
	db #12,#2f,#74,#12,#04,#12,#2f,#74
	db #12,#2f,#74,#12,#2f,#74,#12,#04
	db #12,#2f,#74,#12,#2f,#74,#12,#2f
	db #74,#12,#2f,#74,#12,#2f,#74,#12
	db #2f,#74,#12,#04,#12,#2f,#74,#12
	db #04,#12,#2f,#74,#12,#2f,#74,#12
	db #04,#12,#2f,#74,#12,#2f,#74,#12
	db #2f,#74,#12,#04,#12,#2f,#74,#12
	db #2f,#74,#12,#2f,#74,#12,#2f,#74
	db #02,#21,#ff,#c5,#ce,#47,#c7,#ce
	db #37,#c7,#c0,#47,#c0,#02,#47,#c0
	db #02,#c7,#c0,#c7,#d0,#07,#12,#03
	db #07,#00,#01,#c7,#c0,#c7,#c0,#c7
	db #c0,#45,#ce,#47,#02,#c5,#ce,#59
	db #c5,#c7,#12,#07,#00,#01,#c5,#c7
	db #12,#07,#00,#01,#c5,#c7,#12,#c5
	db #d0,#07,#12,#04,#07,#00,#01,#c5
	db #ce,#59,#c5,#c0,#c7,#ce,#38,#c7
	db #c0,#c7,#c0,#c7,#c7,#12,#07,#00
	db #01,#47,#c0,#02,#c7,#c0,#c7,#d0
	db #07,#12,#04,#07,#00,#01,#c7,#c0
	db #c7,#c0,#c3,#ce,#47,#c3,#c7,#12
	db #07,#00,#01,#43,#c7,#12,#02,#07
	db #00,#01,#c3,#c0,#c3,#c0,#c5,#c7
	db #12,#07,#00,#01,#c5,#c7,#12,#07
	db #00,#01,#c5,#c7,#12,#01,#12,#c5
	db #d2,#1f,#02,#1f,#01,#ff,#2f,#c0
	db #02,#2f,#c0,#02,#af,#c0,#2f,#c0
	db #02,#2f,#c0,#02,#2f,#c0,#02,#af
	db #c0,#2f,#c0,#02,#2f,#c0,#02,#2f
	db #c0,#02,#2f,#c0,#02,#af,#c0,#2f
	db #c0,#02,#af,#c0,#39,#84,#11,#39
	db #84,#11,#3b,#84,#11,#3b,#84,#11
	db #3e,#84,#11,#3e,#84,#11,#3b,#84
	db #11,#3b,#84,#11,#2f,#c0,#02,#2f
	db #c0,#02,#af,#c0,#2f,#c0,#02,#2f
	db #c0,#02,#2f,#c0,#02,#af,#c0,#2f
	db #c0,#02,#2f,#c0,#02,#2f,#c0,#02
	db #2f,#c0,#02,#af,#c0,#2f,#c0,#02
	db #af,#c0,#39,#84,#11,#39,#84,#11
	db #3b,#84,#11,#3b,#84,#11,#40,#84
	db #11,#40,#84,#11,#3b,#84,#11,#3b
	db #84,#11,#ff,#af,#10,#bb,#10,#af
	db #10,#bb,#10,#af,#10,#af,#10,#bb
	db #10,#bb,#10,#bb,#10,#af,#10,#bb
	db #10,#bb,#10,#af,#10,#bb,#10,#bb
	db #10,#bb,#10,#32,#10,#02,#32,#10
	db #02,#b2,#10,#32,#10,#02,#32,#10
	db #02,#b2,#10,#32,#10,#02,#32,#10
	db #02,#b2,#10,#b2,#10,#ab,#10,#b7
	db #10,#ab,#10,#b7,#10,#ab,#10,#ab
	db #10,#b7,#10,#b7,#10,#b7,#10,#ab
	db #10,#b7,#10,#b7,#10,#ab,#10,#b7
	db #10,#b7,#10,#b7,#10,#28,#10,#02
	db #28,#10,#02,#a8,#10,#28,#10,#02
	db #2a,#10,#02,#aa,#10,#2a,#10,#02
	db #2a,#10,#02,#aa,#10,#ad,#10,#ff
	db #af,#10,#bb,#10,#af,#10,#bb,#10
	db #af,#10,#af,#10,#bb,#10,#bb,#10
	db #bb,#10,#af,#10,#bb,#10,#bb,#10
	db #af,#10,#bb,#10,#bb,#10,#bb,#10
	db #af,#10,#bb,#10,#af,#10,#bb,#10
	db #af,#10,#af,#10,#bb,#10,#bb,#10
	db #bb,#10,#af,#10,#bb,#10,#bb,#10
	db #af,#10,#bb,#10,#bb,#10,#3b,#10
	db #21,#ff,#ce,#10,#ce,#10,#4c,#10
	db #02,#d1,#10,#d1,#10,#4e,#10,#02
	db #ce,#10,#53,#10,#02,#d3,#10,#53
	db #10,#02,#d3,#10,#d3,#10,#d1,#10
	db #d1,#10,#d1,#10,#ce,#10,#ce,#10
	db #cc,#10,#4e,#10,#03,#ce,#10,#4e
	db #10,#02,#cc,#10,#cc,#10,#ca,#10
	db #4a,#10,#02,#ca,#10,#4a,#10,#02
	db #4a,#10,#02,#ca,#10,#4a,#10,#02
	db #ca,#10,#4e,#10,#02,#cc,#10,#cc
	db #10,#4a,#10,#02,#cf,#10,#cf,#10
	db #4f,#10,#02,#cf,#10,#cf,#10,#ce
	db #10,#4e,#10,#02,#ce,#10,#ce,#10
	db #ce,#10,#ca,#10,#ca,#10,#4a,#10
	db #02,#ff,#ce,#10,#ce,#10,#4c,#10
	db #02,#d1,#10,#d1,#10,#ce,#10,#ce
	db #10,#d3,#10,#56,#10,#02,#d6,#10
	db #56,#10,#02,#d6,#10,#d6,#10,#d1
	db #10,#d1,#10,#d1,#10,#ce,#10,#ce
	db #10,#d1,#10,#53,#10,#04,#d1,#10
	db #d1,#10,#ce,#10,#ce,#10,#ca,#10
	db #ca,#10,#47,#10,#02,#47,#10,#02
	db #47,#10,#02,#c7,#10,#47,#10,#02
	db #c7,#10,#4e,#10,#02,#4c,#10,#02
	db #4a,#10,#02,#cf,#10,#cf,#10,#4f
	db #10,#02,#4f,#10,#02,#ce,#10,#4e
	db #10,#02,#ce,#10,#4e,#10,#02,#ca
	db #10,#ca,#10,#4a,#10,#02,#ff

;
.music_info
	db "The Essential Amiga Grafix Selection (1996)(Donut System)(Pooh)",0
	db "ST-128 Module",0

	read "music_end.asm"
