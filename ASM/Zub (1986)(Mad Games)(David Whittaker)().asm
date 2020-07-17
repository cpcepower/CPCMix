; Music of Zub (1986)(Mad Games)(David Whittaker)()
; Ripped by Megachur the 05/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ZUB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #2117
FIRST_THEME				equ 0
LAST_THEME				equ 7

	read "music_header.asm"

;
.init_music
.l2117
;
	push af
	call l227d		; stop_music
	pop af
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l280a
	add hl,bc
	ld ix,l2164
	ld c,#1f
	ld a,#03
.l212f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jp nz,l212f
	inc a
	ld (l21c1),a
	ld (l2641),a
	ret
.l2164
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l2183
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l21a2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.l21c1
	db #00
;
.play_music
.l21c2
;
	ld a,(l2642)
	and a
	call nz,l269c
	ld a,(l2641)
	and a
	jr z,l2221
.l21d0 equ $ + 1
	ld a,#00
	ld (l221d),a
	ld hl,l21c1
	dec (hl)
	jr nz,l21f5
	ld b,(hl)
	ld ix,l2164
	call l2372
	ld ix,l2183
	call l2372
	ld ix,l21a2
	call l2372
	ld hl,l21c1
.l21f4 equ $ + 1
	ld (hl),#01
.l21f5
	ld ix,l2164
	call l2414
	ld (l2525),hl
	ld (l252d),a
	ld ix,l2183
	call l2414
	ld (l2527),hl
	ld (l252e),a
	ld ix,l21a2
	call l2414
	ld (l2529),hl
	ld (l252f),a
.l221d equ $ + 1
	ld a,#00
	ld (l252b),a
.l2221
	ld a,(l2642)
	and a
	jr z,l2257
	ld hl,(l2532)
	ld (l2525),hl
	ld hl,(l2536)
;.l2231 equ $ + 1
	ld (l2529),hl
	ld a,(l2538)
	ld (l252b),a
	ld a,(l252c)
	or #2d
	ld hl,l2539
	and (hl)
	ld (l252c),a
	ld a,(l253a)
	ld (l252d),a
	ld a,(l253c)
	ld (l252f),a
	ld a,(l253e)
	ld (l2531),a
.l2257
	ld hl,l2531
	ld d,#0c
.l225c
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l225c
	ret
;
.stop_music
.l227d
;
	ld hl,#0000
	ld (l2641),hl
	ld (l252d),hl
	ld (l252f),hl
	ld de,#0d00	; modified by Megachur - original is ld de,#d000 should be ld de,#0d00 !!!
.l228c
	call l2296
	dec e
	jp p,l228c
	ld de,#073f
.l2296
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	ret
;
.jumps_table
;
	db l2369-$	; #b8
	db l2352-$	; #a0
	db l2357-$	; #a4
	db l235d-$	; #a9
	db l231c-$	; #67
	db l234c-$	; #96
	db l2348-$	; #91
	db l22c4-$	; #0c
	db l2339-$	; #80
	db l2332-$	; #78
	db l2301-$	; #46
	db l22f1-$	; #35
	db l2311-$	; #54
	db l2363-$	; #a5
	db l22c0-$	; #01

.l22c0
	pop hl
	jp l227d	; stop_music
.l22c4
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l22e6
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l22e6
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l2380
.l22f1
	ld a,(ix+#1e)
	ld c,a
	and #07
	ld hl,l250a
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l2380
.l2301
	ld a,(ix+#1e)
	ld c,a
	and #38
	ld hl,l250a
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l2380
.l2311
	ld hl,l250a
	ld a,(ix+#1e)
	cpl
	and (hl)
	ld (hl),a
	jr l2380
.l231c
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l2380
.l2332
	ld a,(de)
	inc de
	ld (l21d0),a
	jr l2380
.l2339
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l2380
.l2348
	set 7,(ix+#00)
.l234c
	set 3,(ix+#00)
	jr l2380
.l2352
	ld (ix+#1d),b
	jr l2380
.l2357
	ld (ix+#1d),#40
	jr l2380
.l235d
	ld (ix+#1d),#c0
	jr l2380
.l2363
	set 1,(ix+#00)
	jr l2380
.l2369
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l23a3
.l2372
	dec (ix+#10)
	jr nz,l23b0
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l2380
	ld a,(de)
	inc de
	and a
	jp m,l23c1
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l23a3
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l23b0
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l23bd
	inc (ix+#12)
	ret
.l23bd
	dec (ix+#12)
	ret
.l23c1
	cp #b8
	jr c,l240c
	add #20
	jr c,l23f1
	add #10
	jr c,l23f7
	add #10
	jr nc,l23ea
	ld c,a
	ld hl,l2603
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	set 4,(ix+#00)
	jr l2380
.l23ea
	add #09
	ld (l21f4),a
	jr l2380
.l23f1
	inc a
	ld (ix+#11),a
	jr l2380
.l23f7
	ld (ix+#19),a
	ld a,(de)
	inc de
	ld (ix+#14),a
	ld a,(de)
	inc de
	ld (ix+#15),a
	ld a,(de)
	inc de
	ld (ix+#17),a
	jp l2380
.l240c
	ld hl,jumps_table-&80	;l2231
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l2414
	ld c,(ix+#00)
	bit 5,c
	jr z,l245f
	ld a,(ix+#16)
	sub #10
	jr nc,l2447
	bit 6,c
	jr z,l244c
	add (ix+#13)
	jr nc,l242c
	sbc a
.l242c
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l2442
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l245f
.l2442
	ld (ix+#18),a
	jr l245f
.l2447
	ld (ix+#16),a
	jr l245f
.l244c
	cpl
	sub #0f
	add (ix+#13)
	jr c,l2455
	sub a
.l2455
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l245f
	res 5,c
.l245f
	ld a,(ix+#12)
	bit 4,c
	jr z,l2481
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,l2479
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l2479
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
.l2481
	ld hl,l253f
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l24db
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l24a4
	bit 0,c
	jr nz,l24c2
.l24a4
	bit 5,l
	jr nz,l24b4
	sub (ix+#1b)
	jr nc,l24bf
	set 5,(ix+#1d)
	sub a
	jr l24bf
.l24b4
	add (ix+#1b)
	cp b
	jr c,l24bf
	res 5,(ix+#1d)
	ld a,b
.l24bf
	ld (ix+#1c),a
.l24c2
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l24cd
	dec d
.l24cd
	add #a0
	jr c,l24d9
.l24d1
	sla e
	rl d
	add #18
	jr nc,l24d1
.l24d9
	add hl,de
	ex de,hl
.l24db
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l2506
	ld b,(ix+#0e)
	djnz l2503
	ld c,(ix+#0d)
	bit 7,c
	jr z,l24f2
	dec b
.l24f2
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l2506
.l2503
	ld (ix+#0e),b
.l2506
	cpl
	and #03
.l250a equ $ + 1
	ld a,#38
	jr nz,l2517
	ld a,(l21d0)
	xor #08
	ld (l221d),a
	ld a,#07
.l2517
	ld hl,l252c
	xor (hl)
	and (ix+#1e)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l252c equ $ + 7
.l252b equ $ + 6
.l2529 equ $ + 4
.l2527 equ $ + 2
.l2525
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l2533 equ $ + 6
.l2532 equ $ + 5
.l2531 equ $ + 4
.l252f equ $ + 2
.l252e equ $ + 1
.l252d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l253c equ $ + 7
.l253a equ $ + 5
.l2539 equ $ + 4
.l2538 equ $ + 3
.l2536 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
.l253e equ $ + 1
	db #00,#ff
.l253f
	dw #0ef8,#0e10,#0d60,#0c80
	dw #0bd8,#0b28,#0a88,#09f0
	dw #0960,#08e0,#0858,#07e0
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
	dw #000e,#000e
.l2603
	db #0d,#10,#13,#17,#1b,#1e,#21,#24
	db #27,#29,#2b,#2d,#2f,#00,#03,#07
	db #87,#00,#04,#07,#87,#00,#03,#07
	db #0c,#87,#00,#04,#07,#0c,#87,#07
	db #0c,#0f,#87,#07,#0c,#10,#87,#03
	db #07,#0c,#87,#04,#07,#0c,#87,#00
	db #0c,#87,#00,#04,#87,#00,#03,#87
	db #00,#05,#87,#00,#07,#87
.l2641
.music_end
	db #00
.l2642
	db #00
;
.noise_player	; l2643
;
	ld hl,l2642
	ld (hl),#00
	ld hl,l272f
	sla a
	add l
	ld l,a
	jr nc,l2652
	inc h
.l2652
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l27d8
.l265a
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l265a
	ld a,(l27d9)
	ld (l27e9),a
	ld hl,(l27da)
	ld (l2532),hl
	ld de,(l27dc)
	ld (l2536),de
	ld a,l
	ld (l2538),a
	ld a,(l27df)
	ld (l2539),a
	ld a,(l27de)
	ld (l253e),a
	ld a,(l27e8)
	ld e,a
	ld d,#0d
	call l2296
	ld hl,l2642
	inc (hl)
	ret
.l2692
	ld (l2642),a
	ld (l252d),a
	ld (l252f),a
	ret
.l269c
	call l27eb
	ld a,(l27d8)
	and a
	jr z,l2692
	dec a
	ld (l27d8),a
	ld a,(l27e9)
	and a
	jr nz,l26de
	ld a,(l27e6)
	and a
	ret z
	dec a
	ld (l27e6),a
	ld a,(l27d9)
	ld (l27e9),a
	ld a,(l27e7)
	and a
	jr z,l26c7
	ld a,(l2806)
.l26c7
	ld b,a
	ld a,(l27da)
	add b
	ld (l2532),a
	ld a,(l27db)
	add b
	and #0f
	ld (l2533),a
	ld hl,(l27dc)
	ld (l2536),hl
.l26de
	ld hl,l27e9
	dec (hl)
	ld a,(l27e4)
	and a
	jr z,l2705
	jp p,l26f8
	ld hl,(l2532)
	ld de,(l27e0)
	add hl,de
	ld (l2532),hl
	jr l2705
.l26f8
	ld hl,(l2532)
	ld de,(l27e0)
	and a
	sbc hl,de
	ld (l2532),hl
.l2705
	ld a,(l27e5)
	and a
	jr z,l2728
	jp p,l271b
	ld hl,(l2536)
	ld de,(l27e2)
	add hl,de
	ld (l2536),hl
	jr l2728
.l271b
	ld hl,(l2536)
	ld de,(l27e2)
	and a
	sbc hl,de
	ld (l2536),hl
.l2728
	ld a,(l2532)
	ld (l2538),a
	ret
.l272f
	dw l2741,l2752,l2761,l2772
	dw l2783,l2794,l27a5,l27b6
	dw l27c7
.l2741
	db #14,#15,#80,#00,#a8,#00,#1e,#f2
	db #99,#00,#9b,#00,#ff,#ff,#00,#00
	db #00
.l2752
	db #28,#05,#80,#01,#a8,#01,#1e,#fa
	db #23,#28,#01,#01,#05,#00,#00
.l2761
	db #02,#02,#80,#00,#81,#00,#02,#fa
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l2772
	db #64,#08,#80,#00,#85,#00,#50,#d2
	db #23,#00,#28,#00,#ff,#ff,#14,#00
	db #00
.l2783
	db #32,#06,#0a,#00,#0f,#00,#28,#d2
	db #03,#00,#04,#00,#ff,#01,#0a,#01
	db #00
.l2794
	db #14,#06,#28,#00,#2b,#00,#1e,#fa
	db #20,#00,#20,#00,#ff,#ff,#06,#00
	db #00
.l27a5
	db #fa,#fa,#00,#00,#01,#00,#a0,#d2
	db #01,#00,#01,#00,#ff,#ff,#00,#00
	db #00
.l27b6
	db #1e,#1e,#00,#00,#01,#00,#0a,#d2
	db #01,#00,#01,#00,#01,#01,#00,#00
	db #0e
.l27c7
	db #1e,#0f,#00,#02,#20,#02,#28,#fa
	db #20,#00,#20,#00,#ff,#ff,#00,#00
	db #00
.l27d8
	db #00
.l27d9
	db #00
.l27da
	db #00
.l27db
	db #00
.l27dc
	db #00,#00
.l27de
	db #00
.l27e6 equ $ + 7
.l27e5 equ $ + 6
.l27e4 equ $ + 5
.l27e2 equ $ + 3
.l27e0 equ $ + 1
.l27df
	db #00,#00,#00,#00,#00,#00,#00,#00
.l27e9 equ $ + 2
.l27e8 equ $ + 1
.l27e7
	db #00,#00,#00,#00
.l27eb
	ld a,(l2806)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l2809
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l2809	equ $ +3
.l2806
	db #ff,#80,#1b,#34
.l280a
	dw l283a,l283e,l2842
	dw l28d8,l28dc,l28e0
	dw l2936,l293a,l293e
	dw l2a76,l2a80,l2a8a
	dw l2b22,l2b5a,l2b92
	dw l2ecb,l2ecf,l2ed3
	dw l2faa,l2fae,l2fb2
	dw l3055,l3059,l305d
.l283a
	dw l2846,#0000
.l283e
	dw l2878,#0000
.l2842
	dw l28b2,#0000
.l2846
	db #bb,#8a,#df,#00,#31,#03,#e1,#15
	db #21,#2d,#14,#20,#2c,#13,#1f,#2b
	db #12,#1e,#2a,#11,#1d,#29,#10,#1c
	db #28,#0f,#1b,#27,#0e,#1a,#26,#0d
	db #19,#25,#0c,#18,#24,#0b,#17,#23
	db #0a,#16,#22,#df,#00,#71,#07,#8e
	db #00,#87
.l2878
	db #de,#00,#11,#07,#8a,#e1,#88,#01
	db #01,#83,#42,#30,#39,#41,#3b,#38
	db #40,#3a,#37,#3f,#39,#36,#3e,#38
	db #35,#3d,#37,#34,#3c,#36,#33,#3b
	db #35,#32,#3a,#34,#31,#39,#33,#30
	db #38,#32,#2f,#37,#31,#2e,#df,#00
	db #f1,#05,#ff,#84,#01,#04,#18,#8e
	db #00,#87
.l28b2
	db #de,#00,#f1,#02,#8a,#f7,#88,#01
	db #01,#83,#84,#01,#02,#c2,#4e,#84
	db #01,#02,#c2,#36,#84,#01,#02,#c2
	db #1e,#df,#00,#f1,#05,#ff,#c2,#84
	db #01,#04,#21,#8e,#00,#87
.l28d8
	dw l28e4,#0000
.l28dc
	dw l2900,#0000
.l28e0
	dw l291b,#0000
.l28e4
	db #bf,#8a,#88,#02,#02,#83,#dc,#11
	db #91,#34,#e1,#24,#23,#22,#e5,#84
	db #02,#18,#21,#dc,#11,#f1,#36,#e7
	db #15,#8e,#00,#87
.l2900
	db #8a,#88,#02,#02,#83,#dc,#11,#91
	db #34,#e1,#3c,#3b,#3a,#e5,#84,#02
	db #18,#39,#dc,#11,#f1,#36,#e7,#2d
	db #8e,#00,#87
.l291b
	db #8a,#88,#02,#02,#83,#dc,#11,#91
	db #34,#e1,#39,#38,#37,#e5,#84,#02
	db #18,#35,#dc,#11,#f1,#36,#e7,#29
	db #8e,#00,#87
.l2936
	dw l2942,#0000
.l293a
	dw l29d1,#0000
.l293e
	dw l2a1d,#0000
.l2942
	db #8a,#bb,#df,#00,#11,#04,#e0,#18
	db #24,#18,#24,#13,#1f,#13,#1f,#18
	db #24,#18,#24,#13,#1f,#13,#1f,#18
	db #24,#18,#24,#11,#1d,#11,#1d,#13
	db #1f,#13,#1f,#13,#1f,#13,#1f,#18
	db #24,#18,#24,#13,#1f,#13,#1f,#18
	db #24,#18,#24,#13,#1f,#13,#1f,#18
	db #24,#18,#24,#11,#1d,#11,#1d,#13
	db #1f,#13,#1f,#13,#1f,#13,#1f,#df
	db #00,#11,#04,#e0,#18,#24,#18,#24
	db #13,#1f,#13,#1f,#18,#24,#18,#24
	db #13,#1f,#13,#1f,#18,#24,#18,#24
	db #11,#1d,#11,#1d,#13,#1f,#13,#1f
	db #13,#1f,#13,#1f,#18,#24,#18,#24
	db #13,#1f,#13,#1f,#bc,#18,#24,#18
	db #24,#13,#1f,#13,#1f,#bd,#18,#24
	db #18,#24,#11,#1d,#11,#1d,#13,#1f
	db #13,#1f,#13,#1f,#13,#1f,#87
.l29d1
	db #8a,#88,#01,#01,#83,#df,#00,#21
	db #05,#e0,#33,#32,#e1,#30,#32,#37
	db #e0,#30,#32,#e1,#33,#32,#35,#e0
	db #33,#32,#e1,#30,#e0,#35,#37,#e1
	db #38,#df,#00,#91,#04,#e7,#c7,#2b
	db #df,#00,#21,#05,#e0,#30,#32,#e1
	db #33,#32,#37,#e0,#33,#32,#e1,#30
	db #32,#35,#e0,#30,#32,#e1,#33,#e0
	db #38,#37,#e1,#35,#df,#00,#91,#04
	db #e7,#c5,#2b,#87
.l2a1d
	db #8a,#88,#01,#01,#83,#df,#00,#14
	db #04,#e0,#48,#48,#48,#48,#48,#48
	db #48,#48,#48,#48,#48,#48,#48,#48
	db #48,#48,#48,#48,#48,#48,#48,#48
	db #48,#48,#4f,#4f,#4f,#4f,#df,#00
	db #71,#05,#e3,#8b,#8d,#1f,#df,#00
	db #14,#04,#e0,#8a,#48,#48,#48,#48
	db #48,#48,#48,#48,#48,#48,#48,#48
	db #48,#48,#48,#48,#48,#48,#48,#48
	db #48,#48,#48,#48,#43,#43,#43,#43
	db #df,#00,#71,#05,#e3,#8b,#8d,#07
	db #87
.l2a76
	dw l2a94,l2a94,l2a94,l2a94
	dw &0000
.l2a80
	dw l2aac,l2aac,l2aac,l2aac
	dw &0000
.l2a8a
	dw l2ac6,l2ac6,l2ad9,l2ad9
	dw &0000
.l2a94
	db #be,#8a,#88,#01,#01,#83,#df,#00
	db #b1,#07,#e1,#18,#1d,#24,#29,#30
	db #35,#18,#1d,#24,#29,#30,#35,#87
.l2aac
	db #8a,#88,#01,#01,#83,#de,#00,#b1
	db #07,#e0,#80,#e1,#18,#1d,#24,#29
	db #30,#35,#18,#1d,#24,#29,#30,#e0
	db #35,#87
.l2ac6
	db #8a,#88,#01,#01,#82,#df,#00,#f1
	db #03,#eb,#84,#0a,#2a,#11,#84,#14
	db #2a,#11,#87
.l2ad9
	db #8a,#88,#01,#02,#82,#df,#00,#91
	db #04,#e9,#50,#e1,#50,#e9,#4f,#e1
	db #4f,#e9,#52,#e1,#52,#e9,#54,#e1
	db #54,#e9,#4b,#e1,#4b,#e9,#4a,#e1
	db #4a,#f7,#84,#01,#54,#c8,#3c,#88
	db #01,#03,#e9,#44,#e1,#44,#e9,#43
	db #e1,#43,#e9,#46,#e1,#46,#e9,#48
	db #e1,#48,#e9,#3f,#e1,#3f,#e9,#3e
	db #e1,#3e,#f7,#84,#01,#54,#c8,#30
	db #87
.l2b22
	dw l2bc2,l2be9,l2be9,l2be9
	dw l2c11,l2c39,l2c39,l2be9
	dw l2c11,l2c39,l2c39,l2c39
	dw l2c39,l2be9,l2c11,l2c39
	dw l2c39,l2c39,l2c39,l2c49
	dw l2c49,l2c49,l2c49,l2c49
	dw l2c49,l2c49,l2c49,#0000
.l2b5a
	dw l2c71,l2d0c,l2d0c,l2d0c
	dw l2d34,l2d5c,l2d5c,l2d0c
	dw l2d34,l2d5c,l2d5c,l2d5c
	dw l2d5c,l2d0c,l2d34,l2d5c
	dw l2d5c,l2d5c,l2d5c,l2d6c
	dw l2d6c,l2d6c,l2d6c,l2d6c
	dw l2d6c,l2d6c,l2d6c,#0000
.l2b92
	dw l2d8f,l2daa,l2daa,l2dd2
	dw l2e06,l2e3a,l2e3a,l2dd2
	dw l2e06,l2e3a,l2e3a,l2e4d
	dw l2dd2,l2e06,l2e3a,l2e3a
	dw l2e4d,l2e7e,l2e7e,l2e99
	dw l2e99,l2e7e,l2e7e,#0000
.l2bc2
	db #ba,#8a,#88,#01,#02,#83,#df,#00
	db #a1,#02,#eb,#20,#e5,#20,#eb,#1f
	db #e5,#1f,#eb,#1e,#e5,#1e,#eb,#1f
	db #e5,#1f,#eb,#20,#e5,#20,#eb,#1e
	db #e5,#1e,#f1,#1f,#f1,#1f,#87
.l2be9
	db #8a,#88,#01,#01,#83,#df,#00,#41
	db #07,#e5,#0c,#0c,#0c,#e3,#0c,#df
	db #00,#11,#04,#e0,#22,#23,#df,#00
	db #41,#07,#e5,#0c,#0c,#0c,#e3,#0c
	db #df,#00,#11,#04,#e0,#22,#23,#87
.l2c11
	db #8a,#88,#01,#01,#83,#df,#00,#41
	db #07,#e5,#11,#11,#11,#e3,#11,#df
	db #00,#11,#04,#e0,#0f,#10,#df,#00
	db #41,#07,#e5,#11,#11,#11,#e3,#11
	db #df,#00,#11,#04,#e0,#0f,#10,#87
.l2c39
	db #8a,#88,#01,#01,#83,#df,#00,#41
	db #03,#eb,#11,#e9,#13,#e1,#11,#87
.l2c49
	db #8a,#88,#01,#01,#83,#df,#00,#21
	db #07,#e5,#0c,#0c,#0c,#e3,#0c,#df
	db #00,#11,#04,#e0,#1f,#23,#df,#00
	db #11,#07,#e5,#0c,#0c,#0c,#e3,#0c
	db #df,#00,#11,#04,#e0,#1f,#23,#87
.l2c71
	db #8a,#88,#01,#00,#83,#db,#00,#11
	db #07,#e0,#38,#44,#38,#44,#38,#44
	db #38,#44,#38,#44,#38,#44,#38,#44
	db #38,#44,#38,#44,#37,#43,#37,#43
	db #37,#43,#37,#43,#37,#43,#37,#43
	db #37,#43,#37,#43,#37,#43,#33,#3f
	db #33,#3f,#33,#3f,#33,#3f,#33,#3f
	db #33,#3f,#33,#3f,#33,#3f,#33,#3f
	db #32,#3e,#32,#3e,#32,#3e,#32,#3e
	db #32,#3e,#32,#3e,#32,#3e,#32,#3e
	db #32,#3e,#33,#3f,#33,#3f,#33,#3f
	db #33,#3f,#33,#3f,#33,#3f,#33,#3f
	db #33,#3f,#33,#3f,#38,#44,#38,#44
	db #38,#44,#38,#44,#38,#44,#38,#44
	db #38,#44,#38,#44,#38,#44,#37,#43
	db #37,#43,#37,#43,#37,#43,#37,#43
	db #37,#43,#37,#43,#37,#43,#37,#43
	db #37,#43,#37,#43,#37,#43,#37,#43
	db #37,#43,#37,#43,#37,#43,#37,#43
	db #37,#43,#87
.l2d0c
	db #8a,#88,#01,#01,#83,#df,#00,#41
	db #07,#e5,#18,#18,#18,#e3,#18,#df
	db #00,#11,#04,#e0,#16,#17,#df,#00
	db #41,#07,#e5,#18,#18,#18,#e3,#18
	db #df,#00,#11,#04,#e0,#16,#17,#87
.l2d34
	db #8a,#88,#01,#01,#83,#df,#00,#41
	db #07,#e5,#1d,#1d,#1d,#e3,#1d,#df
	db #00,#11,#04,#e0,#1b,#1c,#df,#00
	db #41,#07,#e5,#1d,#1d,#1d,#e3,#1d
	db #df,#00,#11,#04,#e0,#1b,#1c,#87
.l2d5c
	db #8a,#88,#01,#01,#83,#df,#00,#41
	db #03,#eb,#1d,#e9,#1f,#e1,#1d,#87
.l2d6c
	db #8a,#88,#01,#01,#83,#dd,#00,#11
	db #07,#e1,#18,#18,#18,#18,#18,#18
	db #18,#18,#18,#18,#18,#18,#18,#18
	db #18,#18,#18,#18,#18,#18,#18,#18
	db #18,#18,#87
.l2d8f
	db #8a,#88,#01,#01,#83,#dc,#00,#01
	db #01,#f1,#c8,#4f,#c8,#4f,#c8,#4f
	db #c8,#4f,#c8,#4f,#c8,#4f,#c8,#4f
	db #c8,#4f,#87
.l2daa
	db #8a,#88,#02,#04,#83,#df,#00,#41
	db #07,#e5,#24,#24,#24,#e3,#24,#df
	db #00,#11,#04,#e0,#22,#23,#df,#00
	db #41,#07,#e5,#24,#24,#24,#e3,#24
	db #df,#00,#11,#04,#e0,#22,#23,#87
.l2dd2
	db #8a,#88,#01,#02,#83,#df,#00,#11
	db #05,#e1,#c8,#33,#c8,#32,#c8,#30
	db #c8,#33,#c8,#32,#c8,#30,#e1,#c8
	db #33,#c8,#32,#c8,#30,#c8,#33,#c8
	db #32,#c8,#30,#e1,#c8,#33,#c8,#32
	db #c8,#30,#c8,#33,#c8,#32,#c8,#30
	db #eb,#c8,#37,#87
.l2e06
	db #8a,#88,#01,#02,#83,#df,#00,#11
	db #05,#e1,#c8,#38,#c8,#37,#c8,#35
	db #c8,#38,#c8,#37,#c8,#35,#e1,#c8
	db #38,#c8,#37,#c8,#35,#c8,#38,#c8
	db #37,#c8,#35,#e1,#c8,#38,#c8,#37
	db #c8,#35,#c8,#38,#c8,#37,#c8,#35
	db #eb,#c8,#3c,#87
.l2e3a
	db #8a,#88,#01,#02,#83,#df,#00,#11
	db #04,#eb,#c8,#38,#e9,#c8,#37,#e1
	db #c8,#38,#87
.l2e4d
	db #8a,#88,#01,#02,#83,#df,#00,#11
	db #05,#e1,#c8,#38,#c8,#37,#c8,#38
	db #e5,#c8,#37,#e1,#c8,#44,#c8,#43
	db #c8,#44,#e5,#c8,#43,#e1,#c8,#38
	db #c8,#37,#c8,#33,#c8,#32,#c8,#30
	db #c8,#2c,#eb,#84,#ff,#0c,#c8,#2b
	db #87
.l2e7e
	db #8a,#88,#01,#01,#83,#e5,#df,#00
	db #21,#07,#c5,#24,#c5,#24,#c5,#24
	db #c5,#24,#c4,#24,#c4,#24,#c4,#24
	db #c4,#24,#87
.l2e99
	db #8a,#88,#01,#01,#83,#dc,#00,#01
	db #01,#eb,#c8,#4f,#c8,#4f,#c8,#4f
	db #e1,#c8,#4f,#c8,#4d,#c8,#4b,#c8
	db #4a,#c8,#48,#c8,#44,#eb,#c8,#43
	db #c8,#43,#c8,#43,#e1,#c8,#43,#c8
	db #44,#c8,#48,#c8,#4a,#c8,#4b,#c8
	db #4d,#87
.l2ecb
	dw l2ed9,#0000
.l2ecf
	dw l2f07,#0000
.l2ed3
	dw l2f74,l2f8e,#0000
.l2ed9
	db #bd,#8a,#88,#01,#02,#83,#df,#00
	db #41,#07,#e2,#13,#13,#13,#13,#13
	db #13,#13,#13,#11,#11,#11,#11,#11
	db #11,#11,#11,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#18,#18,#18,#18,#18
	db #18,#18,#18,#8e,#00,#87
.l2f07
	db #8a,#88,#01,#02,#83,#df,#00,#11
	db #07,#e0,#1f,#1f,#1f,#1f,#1f,#1f
	db #1f,#1f,#1f,#1f,#1f,#1f,#1f,#1f
	db #1f,#1f,#1f,#1f,#1f,#1f,#1f,#1f
	db #1f,#1f,#1d,#1d,#1d,#1d,#1d,#1d
	db #1d,#1d,#1d,#1d,#1d,#1d,#1d,#1d
	db #1d,#1d,#1d,#1d,#1d,#1d,#1d,#1d
	db #1d,#1d,#18,#18,#18,#18,#18,#18
	db #18,#18,#18,#18,#18,#18,#18,#18
	db #18,#18,#18,#18,#18,#18,#18,#18
	db #18,#18,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#8e,#00,#87
.l2f74
	db #8a,#88,#01,#02,#83,#df,#00,#21
	db #06,#e0,#c8,#2b,#c8,#2d,#c8,#2e
	db #e1,#c8,#2d,#f2,#84,#ff,#15,#c8
	db #2b,#87
.l2f8e
	db #8a,#88,#01,#02,#83,#df,#00,#11
	db #06,#e0,#c8,#37,#c8,#39,#c8,#3a
	db #e1,#c8,#39,#f2,#84,#ff,#15,#c8
	db #37,#8e,#00,#87
.l2faa
	dw l2fb6,#0000
.l2fae
	dw l2fe4,#0000
.l2fb2
	dw l3028,#0000
.l2fb6
	db #bd,#8a,#88,#01,#02,#83,#df,#00
	db #41,#07,#e1,#1a,#e0,#1a,#1a,#e1
	db #1c,#e0,#1c,#1c,#e1,#21,#e0,#21
	db #21,#e1,#19,#e0,#19,#19,#e1,#1a
	db #e0,#1a,#1a,#e1,#1c,#e0,#1c,#1c
	db #e3,#21,#21,#8e,#00,#87
.l2fe4
	db #8a,#88,#01,#02,#83,#df,#00,#11
	db #05,#e1,#c5,#26,#e0,#c5,#26,#c5
	db #26,#e1,#c5,#28,#e0,#c5,#28,#c5
	db #28,#e1,#c7,#2d,#e0,#c7,#2d,#c7
	db #2d,#e1,#c0,#31,#e0,#c0,#31,#c0
	db #31,#e1,#c5,#26,#e0,#c5,#26,#c5
	db #26,#e1,#c5,#28,#e0,#c5,#28,#c5
	db #28,#e3,#84,#01,#08,#c7,#2d,#c7
	db #21,#8e,#00,#87
.l3028
	db #bd,#8a,#88,#01,#01,#83,#de,#00
	db #12,#03,#e1,#45,#e0,#45,#45,#e1
	db #45,#e0,#45,#45,#e1,#45,#e0,#45
	db #45,#e1,#44,#e0,#44,#44,#e1,#51
	db #e0,#51,#51,#e1,#51,#e0,#51,#51
	db #e7,#51,#8e,#00,#87
.l3055
	dw l3061,#0000
.l3059
	dw l3077,#0000
.l305d
	dw l308f,#0000
.l3061
	db #bd,#8a,#88,#01,#03,#83,#df,#00
	db #f1,#04,#f1,#25,#eb,#84,#fc,#24
	db #20,#f7,#2c,#8e,#00,#87
.l3077
	db #bd,#8a,#88,#01,#03,#83,#df,#00
	db #f1,#04,#e5,#80,#eb,#26,#eb,#84
	db #fc,#24,#23,#f7,#2f,#8e,#00,#87
.l308f
	db #bd,#8a,#88,#01,#03,#83,#df,#00
	db #f1,#03,#eb,#80,#e5,#27,#eb,#84
	db #fc,#24,#28,#f7,#c3,#34,#8e,#00
	db #87
;
; #0e6d	; sound fx
; ld a,#06
; call #2643
;
.music_info
	db "Zub (1986)(Mad Games)(David Whittaker)",0
	db "",0

	read "music_end.asm"
