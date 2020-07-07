; Music of Captain America (1987)(Adventure Soft)(Anthony Lees)()
; Ripped by Megachur the 17/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CAPTAINA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #00ff

	read "music_header.asm"

	jp l03b3        ; init music
	jp l0106        ; play music

.music_end
.l0105
	db #00
;
.play_music
.l0106
;
	ld a,(l048f)
	inc a
	ld (l048f),a
	ld ix,l0560
	ld b,#03
.l0113
	push bc
	dec (ix+#05)
	jp nz,l0257
.l011a
	ld l,(ix+#00)
	ld h,(ix+#01)
.l0120
	ld a,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	bit 7,a
	jp z,l0221
	cp #ff
	jr nz,l013b
	ld (ix+#02),l
	ld (ix+#03),h
	jr l011a
.l013b
	cp #fe
	jr nz,l0155
	ld a,(ix+#04)
	and a
	jr nz,l0148
	ld (ix+#04),c
.l0148
	dec (ix+#04)
	jr z,l011a
	ld l,(ix+#02)
	ld h,(ix+#03)
	jr l0120
.l0155
	cp #fd
	jr nz,l0174
	ld l,(ix+#06)
	ld h,(ix+#07)
	call l040f
	jr z,l016e
	ld (ix+#06),l
	ld (ix+#07),h
	ld l,e
	ld h,d
	jr l0120
.l016e
	sub a
	ld (l0105),a
	pop bc
	ret
.l0174
	cp #fc
	jr nz,l0188
	sub a
	ld (ix+#15),a
	ld (ix+#16),a
	ld (ix+#0e),a
	ld (ix+#05),c
	jp l0257
.l0188
	cp #fb
	jr nz,l0192
	ld (ix+#0c),c
	jp l0120
.l0192
	cp #fa
	jr nz,l01a9
	ld a,c
	and #0f
	ld (ix+#09),a
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	jp l0120
.l01a9
	cp #f9
	jr nz,l01c0
	ld a,c
	and #0f
	ld (ix+#0b),a
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#0a),a
	jp l0120
.l01c0
	cp #f8
	jr nz,l01ca
	ld (ix+#10),c
	jp l0120
.l01ca
	cp #f5
	jr nz,l01d4
	ld (ix+#11),c
	jp l0120
.l01d4
	cp #f7
	jr nz,l01de
	ld (ix+#12),c
	jp l0120
.l01de
	cp #f6
	jr nz,l01eb
	ld (ix+#13),c
	ld (ix+#14),c
	jp l0120
.l01eb
	cp #f4
	jr nz,l01f6
	ld a,c
	ld (l0472),a
	jp l0120
.l01f6
	cp #f3
	jr nz,l0201
	ld a,c
	ld (l0476),a
	jp l0120
.l0201
	cp #f2
	jr nz,l020b
	ld (ix+#1b),c
	jp l0120
.l020b
	cp #f1
	jr nz,l021f
	ld a,c
	res 0,(ix+#1a)
	and a
	jp z,l0120
	set 0,(ix+#1a)
	jp l0120
.l021f
	jr l0257
.l0221
	add (ix+#11)
	add a
	ld hl,l0490
	add l
	ld l,a
	jr nc,l022d
	inc h
.l022d
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,c
	cp #ff
	jr nz,l023f
	ld (ix+#18),l
	ld (ix+#19),h
	jp l011a
.l023f
	ld (ix+#15),l
	ld (ix+#16),h
	ld (ix+#05),c
	ld (ix+#0f),#08
	sub a
	ld (ix+#0d),a
	ld (ix+#0e),a
	ld (ix+#13),#01
.l0257
	ld bc,#001c
	add ix,bc
	pop bc
	dec b
	jp nz,l0113
	ld ix,l0560
	call l027a
	ld ix,l057c
	call l027a
	ld ix,l0598
	call l027a
	call l0416
	ret
.l027a
	call l0319
	call l037e
	ld a,(ix+#05)
	cp (ix+#10)
	jr nz,l028e
	ld (ix+#0f),#01
	jr l02eb
.l028e
	ld a,(ix+#0f)
	bit 0,a
	jr nz,l02eb
	bit 1,a
	ret nz
	bit 2,a
	jr nz,l02cc
	bit 3,a
	ret z
	ld hl,l0520
	ld a,(ix+#08)
	add a
	add l
	ld l,a
	jr nc,l02ab
	inc h
.l02ab
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	add hl,de
	ld (ix+#0d),l
	ld (ix+#0e),h
	ld a,(ix+#0c)
	cp h
	ret nc
	ld (ix+#0e),a
	res 3,(ix+#0f)
	set 2,(ix+#0f)
	ret
.l02cc
	ld a,(ix+#09)
	call l02fd
	ld a,h
	and a
	jp p,l02d8
	sub a
.l02d8
	cp (ix+#0a)
	ret nc
	ld a,(ix+#0a)
	ld (ix+#0e),a
	res 2,(ix+#0f)
	set 1,(ix+#0f)
	ret
.l02eb
	ld a,(ix+#0b)
	call l02fd
	ld a,h
	and a
	ret p
	ld (ix+#0e),#00
	ld (ix+#0f),#00
	ret
.l02fd
	ld hl,l0540
	add a
	add l
	ld l,a
	jr nc,l0306
	inc h
.l0306
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	and a
	sbc hl,de
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l0319
	ld a,(l048f)
	bit 0,a
	ret z
	bit 0,(ix+#1a)
	ret z
	ld a,(ix+#1b)
	and a
	jp m,l0355
	add (ix+#15)
	ld (ix+#15),a
	jr nc,l0336
	inc (ix+#16)
.l0336
	ld a,(ix+#16)
	cp (ix+#19)
	ret c
	ld a,(ix+#15)
	cp (ix+#18)
	ret c
	ld a,(ix+#19)
	ld (ix+#16),a
	ld a,(ix+#18)
	ld (ix+#15),a
	res 0,(ix+#1a)
	ret
.l0355
	ld a,(ix+#15)
	add (ix+#1b)
	ld (ix+#15),a
	jr c,l0363
	dec (ix+#16)
.l0363
	ld a,(ix+#19)
	ld d,a
	cp (ix+#16)
	ret c
	ld a,(ix+#18)
	ld e,a
	cp (ix+#15)
	ret c
	ld (ix+#16),d
	ld (ix+#15),e
	res 0,(ix+#1a)
	ret
.l037e
	ld l,(ix+#15)
	ld h,(ix+#16)
	ld a,(ix+#12)
	and a
	jr z,l03ac
	ld e,a
	ld d,#00
	dec (ix+#13)
	jr nz,l039b
	ld a,(ix+#14)
	ld (ix+#13),a
	inc (ix+#17)
.l039b
	ld a,(ix+#17)
	and #03
	jr z,l03ab
	cp #03
	jr z,l03ab
	and a
	sbc hl,de
	jr l03ac
.l03ab
	add hl,de
.l03ac
	ld (ix+#15),l
	ld (ix+#16),h
	ret
;
.real_init_music
.l03b3
;
	ld hl,l05b4
	call l040f
	ld (l0566),hl
	ld (l0560),de
	ld hl,#0000
	ld (l0562),hl
	ld a,l
	ld (l0564),a
	inc a
	ld (l0565),a
	ld hl,l05d2
	call l040f
	ld (l0582),hl
	ld (l057c),de
	ld hl,#0000
	ld (l057e),hl
	ld a,l
	ld (l0580),a
	inc a
	ld (l0581),a
	ld hl,l05d8
	call l040f
	ld (l059e),hl
	ld (l0598),de
	ld hl,#0000
	ld (l059a),hl
	ld a,l
	ld (l059c),a
	inc a
	ld (l059d),a
	ld a,#38
	ld (l0476),a
	ld a,#ff
	ld (l0105),a
	ret
.l040f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,d
	or e
	ret
.l0416
	exx
	ld bc,#f680
	ld de,#c000
	exx
	ld ix,l0560
	ld c,(ix+#15)
	sub a
	call l047c
	ld c,(ix+#16)
	inc a
	call l047c
	ld a,(ix+#0e)
	ld c,a
	ld a,#08
	call l047c
	ld ix,l057c
	ld c,(ix+#15)
	ld a,#02
	call l047c
	ld c,(ix+#16)
	inc a
	call l047c
	ld a,(ix+#0e)
	ld c,a
	ld a,#09
	call l047c
	ld ix,l0598
	ld c,(ix+#15)
	ld a,#04
	call l047c
	ld c,(ix+#16)
	inc a
	call l047c
	ld a,(ix+#0e)
	ld c,a
	ld a,#0a
	call l047c
.l0472 equ $ + 1
	ld c,#00
	ld a,#06
.l0476 equ $ + 1
	ld c,#38
	inc a
	call l047c
	ret
.l047c
	ld b,#f4
	out (c),a
	exx
	out (c),d
	out (c),e
	exx
	out (c),c
	exx
	out (c),c
	out (c),e
	exx
	ret
.l0490 equ $ + 1
.l048f
	db #00
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
	dw #0026,#0024,#0018,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
.l0520
	db #00,#0f,#00,#0f,#00,#0f,#80,#0c
	db #5f,#07,#5b,#05,#69,#04,#c0,#03
	db #00,#03,#33,#01,#99,#00,#60,#00
	db #4c,#00,#19,#00,#0f,#00,#0a
.l0540 equ $ + 1
	db #00,#00,#0f,#80,#0c,#40,#06,#2a
	db #04,#a1,#02,#c9,#01,#78,#01,#40
	db #01,#00,#01,#66,#00,#33,#00,#20
	db #00,#1a,#00,#09,#00,#05,#00,#03
.l0566 equ $ + 7
.l0565 equ $ + 6
.l0564 equ $ + 5
.l0562 equ $ + 3
.l0560 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l057e equ $ + 7
.l057c equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0582 equ $ + 3
.l0581 equ $ + 2
.l0580 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l059e equ $ + 7
.l059d equ $ + 6
.l059c equ $ + 5
.l059a equ $ + 3
.l0598 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
.l05b4
	dw l06ba,l06ba,l070e,l06ba
	dw l06ba,l07a6,l070e,l0784
	dw l07c4,l070e,l084c,l08fa
	dw l0912,l0a34,#0000
.l05d2
	dw l0938,l0a34,#0000
.l05d8
	dw l096e,l096e
	dw l096e,l0992,l09ac,l09ac
	dw l096e,l09c6,l096e,l096e
	dw l096e,l0992,l09ac,l09ac
	dw l096e,l09c6,l096e,l096e
	dw l0992,l0992,l09ac,l09ac
	dw l09c6,l096e,l096e,l096e
	dw l096e,l0992,l09ac,l09ac
	dw l096e,l09c6,l096e,l096e
	dw l096e,l0992,l09ac,l09ac
	dw l096e,l09c6,l096e,l096e
	dw l096e,l09c6,l09e0,l09e0
	dw l09c6,l09ac,l096e,l096e
	dw l0992,l0992,l09ac,l09ac
	dw l09c6,l096e,l0992,l09ac
	dw l09ac,l096e,l096e,l096e
	dw l096e,l09c6,l09ac,l09ac
	dw l096e,l096e,l096e,l096e
	dw l0992,l0992,l09ac,l09ac
	dw l096e,l096e,l096e,l096e
	dw l0992,l0992,l09ac,l09ac
	dw l09c6,l096e,l09fa,l09fa
	dw l09fa,l09fa,l096e,l096e
	dw l096e,l096e,l09fa,l09fa
	dw l09e0,l09e0,l09e0,l09e0
	dw l0992,l0992,l0a14,l0992
	dw l09fa,l09fa,l09fa,l09c6
	dw l09e0,l09e0,l0992,l0992
	dw l09fa,l09fa,#0000
.l06ba
	db #fb,#0e,#fa,#4b,#f9,#8b,#f5,#00
	db #f7,#00,#f6,#01,#f8,#03,#ff,#00
	db #2d,#2a,#2f,#0e,#30,#0e,#2f,#0e
	db #2d,#0e,#2b,#07,#2d,#77,#fe,#02
	db #2b,#07,#2b,#07,#28,#0e,#2b,#0e
	db #28,#07,#2b,#0e,#28,#0e,#26,#07
	db #28,#1c,#15,#ff,#f2,#01,#f1,#01
	db #34,#70,#f1,#00,#2d,#2a,#2f,#0e
	db #30,#0e,#2f,#0e,#2d,#0e,#30,#0e
	db #34,#07,#37,#07,#34,#07,#32,#07
.l070e equ $ + 4
	db #34,#54,#fd,#00,#fa,#11,#f9,#90
	db #f8,#00,#f7,#00,#f6,#01,#ff,#00
	db #34,#07,#2d,#07,#32,#07,#34,#07
	db #2d,#0e,#32,#07,#34,#0e,#2d,#07
	db #32,#07,#34,#07,#37,#07,#2d,#07
	db #36,#07,#2b,#07,#34,#07,#2d,#07
	db #30,#07,#28,#07,#33,#07,#34,#07
	db #2d,#07,#2b,#07,#2d,#0e,#2b,#07
	db #2d,#23,#34,#07,#2d,#07,#32,#07
	db #34,#07,#2d,#0e,#32,#07,#34,#0e
	db #2d,#07,#32,#07,#34,#07,#37,#07
	db #2d,#07,#36,#07,#2b,#07,#33,#07
	db #34,#07,#34,#07,#34,#07,#32,#07
	db #34,#07,#34,#07,#34,#07,#2d,#0e
	db #34,#07,#2d,#23,#fe,#02,#f7,#00
.l0784 equ $ + 2
	db #fd,#00,#fa,#11,#f9,#90,#f8,#00
	db #ff,#00,#33,#07,#34,#07,#34,#07
	db #34,#07,#32,#07,#34,#07,#34,#07
	db #34,#07,#2d,#0e,#34,#07,#2d,#23
.l07a6 equ $ + 4
	db #fe,#03,#fd,#00,#f7,#01,#f6,#01
	db #fa,#77,#f9,#9a,#f8,#0e,#34,#70
	db #35,#38,#34,#38,#32,#e0,#35,#a8
	db #37,#1c,#39,#1c,#38,#e0,#f7,#00
.l07c4 equ $ + 2
	db #fd,#00,#fa,#11,#f9,#a8,#f8,#01
	db #f7,#00,#f6,#01,#2d,#ff,#f2,#ff
	db #f1,#01,#2b,#15,#f1,#00,#2d,#07
	db #2d,#0e,#2b,#07,#2d,#69,#32,#ff
	db #f1,#01,#30,#15,#f1,#00,#30,#07
	db #32,#0e,#30,#0e,#2b,#07,#2d,#0e
	db #2b,#07,#2f,#0e,#2b,#07,#30,#0e
	db #2b,#07,#32,#0e,#2b,#07,#33,#0e
	db #34,#07,#32,#07,#30,#07,#f7,#00
	db #ff,#00,#34,#ff,#f1,#01,#32,#0e
	db #f1,#00,#34,#07,#34,#07,#fe,#18
	db #ff,#00,#34,#03,#37,#03,#fe,#70
	db #fb,#0f,#39,#ff,#f1,#01,#37,#15
	db #f1,#00,#39,#31,#30,#ff,#f1,#01
	db #f2,#01,#37,#15,#f1,#00,#2f,#07
	db #2b,#0e,#2d,#ff,#f2,#ff,#f1,#01
	db #fb,#0e,#2b,#70,#f1,#00,#f7,#00
.l084c equ $ + 2
	db #fd,#00,#fa,#11,#f9,#34,#f6,#01
	db #f7,#01,#ff,#00,#30,#0e,#2f,#07
	db #30,#07,#32,#07,#30,#07,#2f,#07
	db #30,#07,#35,#0e,#35,#07,#30,#23
	db #fe,#03,#30,#0e,#2f,#07,#30,#07
	db #32,#07,#30,#07,#2f,#07,#30,#07
	db #37,#0e,#37,#0e,#35,#07,#34,#07
	db #30,#0e,#ff,#00,#34,#0e,#34,#0e
	db #32,#0e,#31,#07,#2d,#3f,#fe,#03
	db #34,#0e,#34,#07,#32,#07,#34,#0e
	db #32,#07,#34,#0e,#32,#07,#34,#0e
	db #39,#07,#38,#07,#34,#0e,#ff,#00
	db #30,#0e,#2f,#07,#30,#07,#32,#07
	db #30,#07,#2f,#07,#30,#07,#35,#0e
	db #35,#07,#30,#23,#30,#0e,#2f,#07
	db #30,#07,#32,#07,#30,#07,#2f,#07
	db #30,#07,#37,#0e,#37,#0e,#35,#07
	db #34,#07,#30,#0e,#fe,#03,#32,#0e
	db #30,#07,#32,#0e,#30,#07,#32,#0e
	db #30,#07,#2f,#07,#2b,#0e,#2b,#1c
	db #32,#0e,#30,#07,#32,#0e,#30,#07
	db #32,#0e,#37,#38,#f7,#00,#fd,#00
.l08fa
	db #ff,#00,#30,#07,#30,#0e,#2b,#07
	db #30,#0e,#2b,#07,#2b,#07,#30,#07
	db #30,#0e,#2b,#23,#fe,#04,#fd,#00
.l0912
	db #fa,#55,#f9,#9b,#f8,#0b,#37,#cb
	db #39,#07,#3b,#07,#3c,#07,#34,#e0
	db #35,#8c,#34,#1c,#32,#1c,#32,#ff
	db #f1,#ff,#f1,#01,#30,#fc,#f7,#01
.l0938 equ $ + 6
	db #30,#e0,#f7,#00,#fd,#00,#fa,#03
	db #f9,#23,#f5,#00,#f7,#00,#ff,#00
	db #f4,#1f,#f3,#28,#fb,#0e,#1c,#07
	db #f3,#38,#fb,#0b,#17,#07,#17,#0e
	db #17,#07,#17,#07,#17,#07,#17,#07
	db #17,#0e,#17,#07,#17,#15,#f4,#01
	db #f3,#28,#10,#0e,#fb,#09,#f3,#38
.l096e equ $ + 4
	db #fe,#78,#fd,#00,#fb,#09,#fa,#34
	db #f9,#84,#f5,#00,#f8,#02,#f7,#00
	db #15,#0e,#21,#07,#21,#07,#18,#0e
	db #21,#07,#1f,#07,#15,#0e,#1f,#07
	db #18,#0e,#15,#07,#1f,#0e,#fd,#00
.l0992
	db #f5,#fe,#15,#0e,#21,#07,#21,#07
	db #18,#0e,#21,#07,#1f,#07,#15,#0e
	db #1f,#07,#18,#0e,#15,#07,#1f,#0e
.l09ac equ $ + 2
	db #fd,#00,#f5,#05,#15,#0e,#21,#07
	db #21,#07,#18,#0e,#21,#07,#1f,#07
	db #15,#0e,#1f,#07,#18,#0e,#15,#07
.l09c6 equ $ + 4
	db #1f,#0e,#fd,#00,#f5,#07,#15,#0e
	db #21,#07,#21,#07,#18,#0e,#21,#07
	db #1f,#07,#15,#0e,#1f,#07,#18,#0e
.l09e0 equ $ + 6
	db #15,#07,#1f,#0e,#fd,#00,#f5,#08
	db #15,#0e,#21,#07,#21,#07,#18,#0e
	db #21,#07,#1f,#07,#15,#0e,#1f,#07
	db #18,#0e,#15,#07,#1f,#0e,#fd,#00
.l09fa
	db #f5,#03,#15,#0e,#21,#07,#21,#07
	db #18,#0e,#21,#07,#1f,#07,#15,#0e
	db #1f,#07,#18,#0e,#15,#07,#1f,#0e
.l0a14 equ $ + 2
	db #fd,#00,#f5,#00,#ff,#00,#fb,#0c
	db #f3,#20,#15,#07,#15,#07,#15,#0e
	db #13,#0e,#15,#0e,#15,#07,#15,#0e
	db #15,#0e,#13,#1c,#fe,#03,#fb,#09
.l0a34 equ $ + 2
	db #fd,#00,#fb,#00,#fa,#00,#f9,#00
	db #ff,#00,#fc,#ff,#fe,#ff,#fd,#00
	db #54,#48,#45,#20,#45,#4e,#44,#00
	db #00,#00,#00,#00,#00,#00,#16,#00
	db #19,#01,#49,#00,#68,#00,#7d,#00
	db #8e,#00,#60,#01,#ad,#00,#ba,#00
	db #c3,#00,#ee,#00,#74,#fe,#c9,#fe
	db #ec,#fe,#f9,#fe,#ed,#fe,#e8,#fe
	db #db,#fe,#b8,#fe,#9b,#fe,#ba,#fe
	db #a9,#fe,#a7,#fe,#89,#fe,#75,#fe
	db #69,#fe,#74,#fe,#56,#fe,#44,#fe
	db #33,#fe,#34,#fe,#25,#fe,#25,#fe
	db #14,#fe,#14,#fe,#04,#ff,#00,#60
	db #ff,#71,#ff,#82,#ff,#93,#ff,#a4
	db #ff,#b5,#ff,#c6,#ff,#c7,#ff,#b6
	db #ff,#a5,#ff,#80,#24,#80,#39,#80
	db #22,#80,#38,#80,#22,#00,#70,#2c
	db #d0,#2c,#e0,#2c,#d0,#2c,#50,#2c
	db #50,#2c,#50,#2c,#50,#2c,#70,#2c
	db #50,#2c,#00,#6f,#ff,#bd,#ff,#db
	db #ff,#e9,#ff,#e8,#ff,#d6,#ff,#a5
	db #ff,#83,#ff,#00,#85,#ff,#95,#ff
	db #b3,#ff,#c1,#ff,#c0,#ff,#c0,#ff
	db #c2,#ff,#b5,#ff,#b8,#ff,#a9,#ff
	db #89,#ff,#4a,#ff,#4a,#ff,#4b,#ff
	db #4c,#ff,#00,#ba,#0e,#ba,#13,#ba
	db #0e,#aa,#13,#7a,#0e,#3a,#13,#00
	db #70,#2c,#90,#1e,#90,#1e,#30,#2b
	db #00,#60,#91,#60,#8e,#60,#90,#70
	db #95,#70,#94,#70,#95,#80,#9e,#80
	db #a3,#90,#a4,#90,#ae,#90,#b6,#90
	db #bf,#80,#c3,#80,#ca,#70,#d4,#70
	db #db,#60,#df,#50,#e2,#40,#e7,#30
	db #ec,#20,#f7,#00,#10,#f5,#10,#f4
	db #20,#ee,#30,#f0,#30,#f1,#40,#ee
	db #50,#f1,#60,#f2,#70,#f0,#80,#f2
	db #80,#f2,#90,#ef,#90,#f3,#a0,#ef
	db #a0,#f1,#a0,#f2,#90,#ed,#70,#ef
	db #60,#f2,#20,#f3,#00,#f5,#00,#80
	db #0f,#80,#0f,#80,#0f,#80,#10,#80
	db #10,#80,#10,#80,#10,#80,#10,#80
	db #11,#80,#11,#80,#11,#80,#12,#80
	db #12,#80,#13,#80,#14,#80,#16,#80
	db #17,#80,#17,#80,#18,#80,#19,#80
	db #1a,#80,#1a,#70,#1a,#60,#1a,#50
	db #1b,#50,#1c,#40,#1d,#40,#1e,#30
	db #1f,#30,#20,#20,#21,#20,#22,#10
	db #23,#10,#24,#00,#26,#00,#db,#0c
	db #db,#0e,#cc,#10,#cc,#13,#cd,#17
	db #bd,#1c,#be,#21,#be,#24,#af,#27
	db #af,#2a,#a0,#2d,#a0,#30,#a0,#34
	db #90,#39,#90,#3c,#90,#3e,#90,#41
	db #80,#45,#80,#4b,#80,#50,#80,#55
	db #70,#59,#70,#5f,#70,#67,#70,#6e
;
.init_music	; added by Megachur
;
	xor a
	ld (l048f),a
	jp real_init_music
;
; Warning add (l048f),#00 otherwise it crash when init again !
;
.music_info
	db "Captain America (1987)(Adventure Soft)(Anthony Lees)",0
	db "",0

	read "music_end.asm"
