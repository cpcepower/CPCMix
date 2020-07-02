; Music of Mutant Fortress (1989)(Players Premier)(Andy Severn)()
; Ripped by Megachur the 23/02/2019
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "MUTANTFO.BIN"
	ENDIF

music_date_rip_day		equ 23
music_date_rip_month	equ 02
music_date_rip_year		equ 2019
music_adr				equ &3000

	read "music_header.asm"

	jp l3149	; init
	jp l3220	; play
.l300a equ $ + 4
.l3009 equ $ + 3
.l3008 equ $ + 2
.music_end equ $ + 1
.l3007 equ $ + 1
.l3006
	db #00,#01,#00,#00,#00,#00,#00,#00
.l3015 equ $ + 7
	db #00,#00,#30,#30,#30,#30,#00,#0f
.l3019 equ $ + 3
.l3018 equ $ + 2
.l3017 equ $ + 1
.l3016
	db #00,#00,#00,#00,#00
.l301b
	ld a,(l3017)
	and a
	ld b,a
	ret z
	ld a,(l3019)
	cp #80
	jp z,l3044
	ld a,(l3018)
	dec a
	ld (l3018),a
	ret nz
	ld a,(l3019)
	ld (l3018),a
	ld a,(l3015)
	add b
	bit 4,a
	jp nz,l3053
	ld (l3015),a
	ret
.l3044
	ld a,b
	cp #01
	ld a,#0f
	jp z,l304d
	xor a
.l304d
	ld (l3015),a
	jp l3053
.l3053
	xor a
	ld (l3017),a
	ld a,(l3016)
	and a
	jp nz,l31ec
	ret
.l305f
	ld a,#00
	ld (l3015),a
	ld a,#01
.l3066
	ld (l3017),a
	inc hl
	ld a,(hl)
	ld (l3019),a
	ld (l3018),a
	inc hl
	jp l3552
.l3075
	ld a,#0f
	ld (l3015),a
	ld a,#ff
	jp l3066
.l307f
	ld a,h
	push af
	ld c,l
	cp #07
	jp nz,l308b
	res 7,c
	res 6,c
.l308b
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	pop af
	out (c),a
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	out (c),c
	xor a
	ld b,#f6
	out (c),a
	ret
.l30ad equ $ + 7
.l30ac equ $ + 6
.l30a7 equ $ + 1
.l30a6
	db #00,#01,#00,#00,#00,#00,#00,#f8
.l30b3 equ $ + 5
.l30b1 equ $ + 3
.l30b0 equ $ + 2
.l30af equ $ + 1
.l30ae
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
	db #0c,#05,#00,#08,#01,#ff,#00,#00
	db #00,#01,#08,#00,#00,#04,#00,#00
	db #00,#00,#00,#f7,#14,#0a,#01,#01
	db #00,#08,#04,#a0,#39,#01,#a0,#39
	db #00,#0a,#00,#02,#00,#fe,#00,#00
.l30e0 equ $ + 2
.l30de
	db #00,#00,#00,#00,#00,#0f,#01,#01
	db #02,#01,#ff,#00,#00,#02,#03,#09
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #ef,#ff,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l310d equ $ + 7
.l310b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0a,#01,#02,#02,#ff
	db #00,#00,#04,#05,#0a,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#df,#ff
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
.l313d
	ld a,#0f
	ld (l3015),a
	xor a
	ld (l3017),a
	ld (l3016),a
;
.init_music
.l3149
;
	call l31f4
	ld a,(l3009)
	cp #ff
	jp nz,l3158
	inc a
	ld (l3009),a
.l3158
	ld a,#01
	ld (l30b3),a
	ld (l30e0),a
	ld (l310d),a
	xor a
	ld (l3008),a
	push ix
	ld ix,l30b1
	ld a,(l3009)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,l3986
	add hl,de
	ld (l3189),hl
	inc hl
	inc hl
	ld (l3193),hl
	inc hl
	inc hl
	ld (l319d),hl
.l3189 equ $ + 1
	ld hl,(l39a0)
	call l31c2
	ld ix,l30de
.l3193 equ $ + 1
	ld hl,(l39ad)
	call l31c2
	ld ix,l310b
.l319d equ $ + 1
	ld hl,(l39b2)
	call l31c2
	ld a,#01
	ld (l3007),a
	ld h,#07
	ld l,#f8
	call l307f
	ld a,(l3009)
	cp #01
	pop ix
	ret
.l31b6	; test player
	halt
	call l3220
	ld a,(l3007)
	and a
	jp nz,l31b6
	ret
.l31c2
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call l3669
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ret
;
.stop_music
.l31ec
;
	call l31f4
	xor a
	ld (l3007),a
	ret
.l31f4
	ld h,#07
	ld l,#ff
	call l307f
	ld hl,l30a6
	ld de,l30a7
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#f8
	ld (l30ad),a
.l320d
	ld b,#0b
	ld h,#00
	ld de,l30a6
.l3214
	ld a,(de)
	ld l,a
	push bc
	call l307f
	pop bc
	inc h
	inc de
	djnz l3214
	ret
;
.play_music
.l3220
;
	ld a,(l3006)
	and a
	jp z,l3250
	ld b,a
	xor a
	ld (l3006),a
	ld a,b
	cp #ff
	jp z,l31ec
	cp #fe
	jp nz,l3249
	ld a,#01
	ld (l3016),a
	ld a,#ff
	ld (l3017),a
	ld a,#0a
	ld (l3019),a
	jp l3250
.l3249
	dec a
	ld (l3009),a
	jp l313d
.l3250
	call l301b
	ld a,(l3007)
	and a
	jr z,l32b2
	push ix
	ld ix,l30b1
	bit 7,(ix+#0c)
	call z,l32b3
	ld ix,l30de
	bit 7,(ix+#0c)
	call z,l32b3
	ld ix,l310b
	bit 7,(ix+#0c)
	call z,l32b3
	ld a,(l3015)
	cpl
	and #0f
	ld b,a
	ld a,(l3008)
	and a
	ld a,#10
	jp nz,l3294
	ld a,(l30ae)
	sub b
	jp nc,l3294
	xor a
.l3294
	ld (l30ae),a
	ld a,(l30af)
	sub b
	jp nc,l329f
	xor a
.l329f
	ld (l30af),a
	ld a,(l30b0)
	sub b
	jp nc,l32aa
	xor a
.l32aa
	ld (l30b0),a
	call l320d
	pop ix
.l32b2
	ret
.l32b3
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l3448
.l32bc
	ld a,(ix+#0c)
	and #03
	jp z,l337c
	cp #01
	jp z,l32d6
	cp #02
	jp z,l3316
	cp #03
	jp z,l3360
	jp l33ad
.l32d6
	ld a,(ix+#0b)
	and a
	jr z,l32e2
	dec (ix+#0b)
	jp l33ad
.l32e2
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,l3303
	jr nc,l32fd
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp l33ad
.l32fd
	ld a,(ix+#05)
	ld (ix+#04),a
.l3303
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp l33ad
.l3316
	ld a,(ix+#25)
	and a
	jr z,l3322
	dec (ix+#25)
	jp l33ad
.l3322
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,l3341
	ld b,(ix+#26)
	cp b
	jr z,l334e
	jr c,l3348
	ld a,(ix+#09)
	ld (ix+#25),a
	jr l33ad
.l3341
	ld (ix+#04),#00
	jp l334e
.l3348
	ld a,(ix+#26)
	ld (ix+#04),a
.l334e
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr l33ad
.l3360
	ld a,(ix+#27)
	and a
	jr z,l336b
	dec (ix+#27)
	jr l33ad
.l336b
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp l33ad
.l337c
	ld a,(ix+#29)
	and a
	jr z,l3387
	dec (ix+#29)
	jr l33ad
.l3387
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,l339d
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr l33ad
.l339d
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr l33ad
.l33ad
	ld a,(ix+#04)
	ld hl,l30a6
	ld d,#00
	ld e,(ix+#0f)
	add hl,de
	ld (hl),a
	ld h,(ix+#14)
	ld l,(ix+#13)
	ld d,#00
	ld e,(ix+#10)
	add hl,de
	ld a,(ix+#03)
	push af
	ld a,(hl)
	add (ix+#03)
	ld (ix+#03),a
	call l34cf
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,l33e9
	ld a,(ix+#11)
	ld (ix+#10),a
.l33e9
	ld a,(ix+#1a)
	cp #ff
	jr z,l3421
	and a
	jr z,l33f8
	dec (ix+#1a)
	jr nz,l3421
.l33f8
	dec (ix+#1f)
	jr nz,l340b
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#1c)
	xor #01
	ld (ix+#1c),a
.l340b
	bit 0,(ix+#1c)
	ld b,(ix+#1b)
	ld a,(ix+#1d)
	jr z,l341a
	add b
	jr l341b
.l341a
	sub b
.l341b
	ld (ix+#1d),a
	call l342c
.l3421
	ld a,(ix+#2b)
	and a
	call nz,l342c
	ld a,(ix+#02)
	ret
.l342c
	ld c,a
	ld b,#ff
	bit 7,a
	jr nz,l3435
	ld b,#00
.l3435
	ld hl,l30a6
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l3448
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (ix+#10),#00
.l3452
	ld a,(hl)
	cp #60
	jr z,l34cd
	cp #61
	jp z,l355b
	cp #64
	jp z,l351e
	cp #65
	jp z,l352f
	cp #fc
	jp z,l305f
	cp #fd
	jp z,l3075
	cp #fe
	jp z,l353d
	cp #ff
	jp z,l3527
	ld b,a
	ld a,(ix+#0c)
	and #fc
	or #01
	ld (ix+#0c),a
	ld a,b
.l3487 equ $ + 1
	sub #00
	ld (ix+#03),a
.l348b
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(l300a)
	add hl,de
	ld a,(hl)
	pop hl
	inc hl
	ld b,(ix+#2c)
	add b
	ld (ix+#2c),#00
	ld (ix+#02),a
	ld a,(ix+#07)
	ld (ix+#0b),a
	ld (ix+#00),l
	ld (ix+#01),h
	call l34cf
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1e)
	srl a
	ld (ix+#1f),a
	ld (ix+#1c),#01
	ld (ix+#1d),#00
	jp l32bc
.l34cd
	jr l348b
.l34cf
	ld a,(ix+#17)
	and a
	call nz,l3513
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,l36c8
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l30a6
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(l3008)
	and a
	ret z
	ld a,(ix+#0f)
	cp #08
	ret nz
	ld de,#00c0
	add hl,de
	ex de,hl
	ld h,#0b
	ld a,(de)
	ld l,a
	call l307f
	inc de
	inc h
	ld a,(de)
	ld l,a
	call l307f
	ret
.l3513
	ld a,(ix+#03)
	neg
	and #1f
	ld (l30ac),a
	ret
.l351e
	inc hl
	ld a,(hl)
	inc hl
	ld (l30ac),a
	jp l3552
.l3527
	inc hl
	ld (ix+#04),#00
	jp l3552
.l352f
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call l307f
	pop hl
	jp l3552
.l353d
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,l354c
	jp l365b
	jp l3452
.l354c
	ld l,(ix+#15)
	ld h,(ix+#16)
.l3552
	ld (ix+#01),h
	ld (ix+#00),l
	jp l3452
.l355b
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	add a
	ld h,#00
	ld l,a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l3828
	add hl,de
	ld d,#00
	add b
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	ld (ix+#2a),a
	inc hl
	ld a,(hl)
	ld (ix+#28),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld (ix+#14),h
	ld (ix+#13),l
	ld (ix+#10),#00
	ld de,#0010
	add hl,de
	ld a,(hl)
	ld (ix+#17),#00
	and a
	jp z,l35e6
	ld b,a
	or #c0
	ld (l30ad),a
	ld a,b
	bit 7,a
	jp z,l35e6
	cpl
	and #38
	ld (ix+#17),a
.l35e6
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,l3602
	ld a,(hl)
	ld (l3008),a
	and a
	jp z,l3602
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call l307f
	pop hl
.l3602
	pop hl
	jp l3452
.l3606
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,l3818
	add hl,de
	ld (l300a),hl
	pop hl
	jp l366f
.l361b
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2c),a
	jp l366f
.l3624
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2b),a
	jp l366f
.l362d
	inc hl
	ld a,(hl)
	inc hl
	ld (l3487),a
	jp l366f
.l3636
	inc hl
	ld b,(hl)
	inc hl
	ld a,(l3487)
	add b
	ld (l3487),a
	jp l366f
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,l32bc
	call l31ec
	jp l32bc
.l365b
	call l3669
	jp l3448
.l3661
	pop bc
	jp l31ec
.l3665
	pop bc
	jp l3149
.l3669
	ld l,(ix+#20)
	ld h,(ix+#21)
.l366f
	ld a,(hl)
	cp #f8
	jp z,l361b
	cp #f9
	jp z,l3624
	cp #fa
	jp z,l3636
	cp #fb
	jp z,l362d
	cp #fc
	jp z,l3606
	cp #fd
	jp z,l3665
	cp #fe
	jr z,l36bc
	cp #ff
	jr z,l3661
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l398c
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#15),e
	ld (ix+#16),d
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ret
.l36bc
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr l366f
.l36c8 equ $ + 4
	db #00,#00,#00,#00,#00,#00
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04d4
	dw #0470,#0431,#03f4,#03dc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	dw #006a,#0064,#005e,#005a
	dw #0054,#004f,#004a,#0047
	dw #0043,#003f,#003b,#0038
	dw #0035,#0032,#002f,#002d
	dw #002a,#0028,#0025,#0023
	dw #0021,#0020,#001e,#001c
	dw #001b,#0019,#0018,#0016
	dw #0015,#0014,#0013,#0012
	dw #0011,#0010,#000f,#000e
	dw #000d,#000c,#000b,#000a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3818
	db #02,#04,#06,#08,#0a,#0c,#0e,#10
	db #12,#14,#16,#18,#1a,#1c,#1e,#20
.l3828
	db #01,#0f,#05,#03,#ff,#0b,#64,#03
	db #ff,#1e,#01,#04,#00,#06,#00,#0c
	db #00,#0c,#00,#00,#18,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0a,#00,#ff
	db #0e,#04,#00,#ff,#0a,#01,#03,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0a,#00,#00,#0f
	db #0f,#02,#fe,#00,#00,#03,#ff,#00
	db #05,#01,#00,#03,#00,#04,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#aa,#00,#00,#00
	db #00,#00,#0f,#01,#02,#ff,#0a,#3c
	db #0a,#ff,#ff,#00,#00,#00,#03,#00
	db #04,#07,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0f,#0f,#00
	db #00,#0f,#01,#00,#fc,#01,#64,#64
	db #00,#01,#f4,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#f8,#00,#00,#00,#00,#00
	db #08,#05,#00,#00,#0a,#00,#00,#fc
	db #00,#ec,#14,#00,#02,#0c,#0b,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#0f,#08,#03,#ff,#0b
	db #64,#03,#ff,#ff,#00,#00,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#01
	db #02,#ff,#0a,#64,#0a,#ff,#ff,#00
	db #00,#00,#03,#00,#04,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#ff,#00,#ff,#00,#00,#00
	db #ff,#00,#05,#05,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#0f,#05,#03,#ff
	db #0b,#64,#03,#ff,#1e,#01,#04,#00
	db #03,#00,#00,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l398c equ $ + 6
.l3986
	dw l39a0,l39ad,l39b2,l39d1
	dw l39f2,l3a55,l3b26,l3b57
	dw l3b9c,l3bbf,l3c1e,l3c4b
	dw l3bbd
.l39a0
	db #fc,#00,#fb,#11,#01,#04,#06,#02
.l39ad equ $ + 5
	db #01,#04,#06,#04,#fe,#02,#06,#02
.l39b2 equ $ + 2
	db #06,#fe,#00,#01,#03,#01,#04,#01
	db #05,#01,#07,#01,#08,#01,#00,#01
	db #03,#01,#04,#01,#05,#01,#07,#01
	db #08,#01,#f9,#02,#09,#02,#f9,#00
.l39d1 equ $ + 1
	db #fe,#60,#0c,#60,#0c,#60,#0c,#60
	db #0c,#60,#0c,#60,#0c,#60,#0c,#60
	db #0c,#60,#0c,#60,#0c,#60,#0c,#60
	db #0c,#60,#0c,#60,#0c,#60,#0c,#60
.l39f2 equ $ + 2
	db #06,#fe,#61,#01,#31,#06,#31,#03
	db #31,#03,#3d,#03,#38,#03,#31,#0c
	db #3d,#03,#38,#03,#31,#03,#3d,#03
	db #38,#03,#31,#03,#2f,#06,#2f,#03
	db #2f,#03,#3b,#03,#36,#03,#2f,#0c
	db #3b,#03,#36,#03,#2f,#03,#3b,#03
	db #36,#03,#2f,#03,#2a,#06,#2a,#03
	db #2a,#03,#36,#03,#2f,#03,#2a,#0c
	db #36,#03,#2f,#03,#2a,#03,#36,#03
	db #2f,#03,#2a,#03,#2c,#06,#2c,#03
	db #2c,#03,#38,#03,#31,#03,#2c,#0c
	db #38,#03,#31,#03,#2c,#03,#38,#03
.l3a55 equ $ + 5
	db #31,#03,#2c,#03,#fe,#61,#04,#25
	db #03,#61,#05,#49,#03,#49,#03,#49
	db #03,#61,#02,#0d,#03,#61,#05,#49
	db #03,#49,#03,#49,#03,#61,#04,#25
	db #03,#61,#05,#49,#03,#49,#03,#49
	db #03,#61,#02,#0d,#03,#61,#05,#49
	db #03,#49,#03,#61,#02,#0d,#03,#61
	db #04,#25,#03,#61,#05,#49,#03,#49
	db #03,#49,#03,#61,#02,#0d,#03,#61
	db #05,#49,#03,#49,#03,#49,#03,#61
	db #04,#25,#03,#61,#05,#49,#03,#61
	db #02,#0d,#03,#61,#05,#49,#03,#61
	db #02,#0d,#03,#61,#05,#49,#03,#61
	db #02,#0d,#03,#0d,#03,#61,#04,#25
	db #03,#61,#05,#49,#03,#49,#03,#49
	db #03,#61,#02,#0d,#03,#61,#05,#49
	db #03,#49,#03,#49,#03,#61,#04,#25
	db #03,#61,#05,#49,#03,#49,#03,#49
	db #03,#61,#02,#0d,#03,#61,#05,#49
	db #03,#61,#02,#0d,#03,#0d,#03,#61
	db #04,#25,#03,#61,#05,#49,#03,#61
	db #02,#0d,#03,#61,#05,#49,#03,#61
	db #02,#0d,#03,#0d,#03,#61,#05,#49
	db #03,#61,#02,#0d,#03,#61,#05,#49
	db #03,#61,#02,#0d,#03,#61,#05,#49
	db #03,#61,#02,#0d,#03,#0d,#03,#0d
.l3b26 equ $ + 6
	db #03,#0d,#03,#0d,#03,#fe,#61,#06
	db #49,#06,#4c,#06,#4c,#06,#4b,#06
	db #49,#06,#4b,#06,#49,#06,#44,#06
	db #47,#0f,#60,#0f,#4b,#06,#49,#06
	db #44,#06,#42,#0c,#60,#0c,#40,#06
	db #42,#0c,#40,#06,#44,#0f,#60,#0f
.l3b57 equ $ + 7
	db #60,#06,#60,#06,#60,#06,#fe,#50
	db #06,#53,#06,#50,#06,#53,#06,#50
	db #06,#4e,#06,#50,#06,#53,#06,#55
	db #0f,#60,#0f,#55,#03,#50,#03,#53
	db #03,#4e,#03,#50,#03,#4c,#03,#4e
	db #03,#49,#03,#49,#06,#49,#03,#49
	db #03,#4e,#06,#4e,#03,#4e,#03,#4c
	db #06,#4c,#03,#4c,#03,#53,#06,#50
	db #0f,#60,#0f,#60,#06,#60,#06,#60
.l3b9c equ $ + 4
	db #06,#60,#06,#fe,#61,#06,#3d,#10
	db #60,#10,#60,#10,#61,#07,#36,#10
	db #60,#10,#60,#10,#61,#06,#42,#10
	db #60,#10,#60,#10,#61,#03,#3b,#10
.l3bbf equ $ + 7
.l3bbd equ $ + 5
	db #60,#10,#60,#10,#fe,#61,#01,#2c
	db #06,#2c,#06,#2c,#03,#2c,#06,#2c
	db #06,#2c,#03,#38,#03,#2a,#03,#36
	db #03,#31,#03,#2f,#03,#31,#03,#2a
	db #06,#2a,#06,#2a,#03,#2a,#06,#2a
	db #06,#2a,#03,#36,#03,#28,#03,#34
	db #03,#2f,#03,#2c,#03,#2f,#03,#25
	db #06,#25,#06,#25,#03,#25,#06,#25
	db #06,#25,#03,#31,#03,#23,#03,#2f
	db #03,#2a,#03,#28,#03,#2a,#03,#28
	db #06,#28,#06,#28,#03,#28,#06,#28
	db #03,#2a,#03,#2a,#03,#2a,#03,#2a
.l3c1e equ $ + 6
	db #06,#2a,#03,#28,#06,#fe,#61,#06
	db #44,#10,#60,#10,#60,#10,#40,#03
	db #42,#03,#42,#03,#40,#03,#42,#03
	db #42,#03,#40,#03,#42,#03,#44,#06
	db #42,#06,#40,#06,#3d,#06,#38,#10
	db #60,#10,#60,#10,#3b,#10,#60,#10
.l3c4b equ $ + 3
	db #60,#10,#fe,#44,#10,#60,#10,#60
	db #10,#40,#03,#42,#03,#42,#03,#40
	db #03,#42,#03,#42,#03,#40,#03,#42
	db #03,#44,#06,#42,#06,#47,#06,#44
	db #06,#49,#10,#60,#10,#60,#10,#3d
	db #03,#40,#03,#42,#03,#44,#03,#49
	db #06,#3d,#03,#40,#03,#42,#03,#44
	db #03,#49,#0c,#60,#03,#60,#03,#fe
	db #00,#00
;org #022f	; stop music
;ld hl,#073f
;call #307f
;ld hl,#0800
;call #307f
;ld hl,#0900
;call #307f
;ld hl,#0a00
;call #307f
;ret

;org #021d
;call #3000	;init

;org #0226
;call #3003	;play
;
.music_info
	db "Mutant Fortress (1989)(Players Premier)(Andy Severn)",0
	db "",0

	read "music_end.asm"
