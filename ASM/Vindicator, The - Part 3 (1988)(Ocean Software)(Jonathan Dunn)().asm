; Music of Vindicator, The - Part 3 (1988)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 04/07/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "VINDICP3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #20d7
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.real_init_music
;
	ld hl,l26ec
	ld b,#00
	ld (hl),b
	ld hl,l291b
	add hl,bc
	ld a,(hl)
	ld (l21b8),a
	inc hl
	ld ix,l2128
	ld c,#21
	ld a,#03
.l20ee
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
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
	jr nz,l20ee
	ld (l2457),a
	inc a
	ld (l218b),a
	ld (l26eb),a
	ret
.l2128
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.l2149
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.l216a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
.l218b
	db #00
;
.play_music
;
	call l2751
	ld a,(l26eb)
	and a
	jp z,l21e8
.l2197 equ $ + 1
	ld a,#00
	ld (l21e4),a
	ld hl,l218b
	dec (hl)
	jr nz,l21bc
	ld b,(hl)
	ld ix,l2128
	call l2366
	ld ix,l2149
	call l2366
	ld ix,l216a
	call l2366
.l21b8 equ $ + 1
	ld a,#01
	ld (l218b),a
.l21bc
	ld ix,l2128
	call l2424
	ld (l2534),hl
	ld (l253c),a
	ld ix,l2149
	call l2424
	ld (l2536),hl
	ld (l253d),a
	ld ix,l216a
	call l2424
	ld (l2538),hl
	ld (l253e),a
.l21e4 equ $ + 1
	ld a,#00
	ld (l253a),a
.l21e8
	ld a,(l26ec)
	and a
	jr z,l2218
	ld hl,(l2541)
	ld (l2534),hl
	ld hl,(l2545)
	ld (l2538),hl
	ld a,(l2547)
	ld (l253a),a
	ld a,(l253b)
.l2203
	or #2d
	ld hl,l2548
	and (hl)
	ld (l253b),a
	ld a,(l2549)
	ld (l253c),a
	ld a,(l254b)
	ld (l253e),a
.l2218
	ld a,(l26eb)
	ld hl,l26ec
	or (hl)
	ret z
	ld hl,l253f
	ld d,#0b
.l2225
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
	jp p,l2225
	ret
.l2246
	ld de,#0d00
.l2249
	call l2253
	dec d
	jp p,l2249
	ld de,#073f
.l2253
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
.stop_music
.l226e
;
	xor a
	ld (l26eb),a
	ld (l26ec),a
	call l2246
	xor a
	ld (l253c),a
	ld (l253d),a
	ld (l253e),a
	ret
	db #c9
	db #b1
	db #b5
	db #ba
	db #78
	db #a7
	db #a2
	db #0f
	db #91
	db #89
	db #4e
	db #38
	db #60
	db #b6
	db #04
	db #c3
	db #c8
	db #cd
	pop hl
	jp l226e
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
	jr nz,l22bb
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l22bb
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l2374
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,l2500
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l2374
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,l2500
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l2374
	ld hl,l2500
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l2374
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l2374
	ld a,(de)
	inc de
	ld (l2457),a
	jr l2374
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l2374
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l2374
	ld (ix+#1d),b
	jr l2374
	ld (ix+#1d),#40
	jr l2374
	ld (ix+#1d),#c0
	jr l2374
	set 1,(ix+#00)
	jr l2374
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l23a3
	res 5,(ix+#00)
	jr l23a3
	ld (ix+#1f),#ff
	jr l2374
	ld (ix+#1f),b
	jr l2374
.l2366
	dec (ix+#10)
	jr nz,l23be
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l2374
	ld a,(de)
	inc de
	and a
	jp m,l23cf
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l2386
	ld (l2197),a
.l2386
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
	set 5,(ix+#00)
.l23a3
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	ret z
	ld a,(l26ec)
	and a
	ret nz
	ld (ix+#1f),#ff
	ret
.l23be
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l23cb
	inc (ix+#12)
	ret
.l23cb
	dec (ix+#12)
	ret
.l23cf
	cp #b8
	jr c,l241c
	add #20
	jr c,l23fd
	add #10
	jr c,l2404
	add #10
	jr nc,l23f5
	ld c,a
	ld hl,l260d
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l2374
.l23f5
	add #09
	ld (l21b8),a
	jp l2374
.l23fd
	inc a
	ld (ix+#11),a
	jp l2374
.l2404
	ld hl,l2647
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp l2374
.l241c
	ld hl,l2203
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l2424
	ld c,(ix+#00)
	bit 5,c
	jr z,l2456
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l2450
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l2450
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l2450
	ld a,(ix+#18)
	ld (ix+#13),a
.l2457 equ $ + 1
.l2456
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l2470
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l2470
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l254d
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l24d1
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l249a
	bit 0,c
	jr nz,l24b8
.l249a
	bit 5,l
	jr nz,l24aa
	sub (ix+#1b)
	jr nc,l24b5
	set 5,(ix+#1d)
	sub a
	jr l24b5
.l24aa
	add (ix+#1b)
	cp b
	jr c,l24b5
	res 5,(ix+#1d)
	ld a,b
.l24b5
	ld (ix+#1c),a
.l24b8
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l24c3
	dec d
.l24c3
	add #a0
	jr c,l24cf
.l24c7
	sla e
	rl d
	add #18
	jr nc,l24c7
.l24cf
	add hl,de
	ex de,hl
.l24d1
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l24fc
	ld b,(ix+#0e)
	djnz l24f9
	ld c,(ix+#0d)
	bit 7,c
	jr z,l24e8
	dec b
.l24e8
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l24fc
.l24f9
	ld (ix+#0e),b
.l24fc
	cpl
	and #03
.l2500 equ $ + 1
	ld a,#38
	jr nz,l250d
	ld a,(l2197)
	xor #08
	ld (l21e4),a
	ld a,#07
.l250d
	ld hl,l253b
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l252f
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#20)
	and #38
	cpl
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l21e4),a
.l252f
	ex de,hl
	ld a,(ix+#13)
	ret
.l253b equ $ + 7
.l253a equ $ + 6
.l2538 equ $ + 4
.l2536 equ $ + 2
.l2534
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l2542 equ $ + 6
.l2541 equ $ + 5
.l253f equ $ + 3
.l253e equ $ + 2
.l253d equ $ + 1
.l253c
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l254b equ $ + 7
.l2549 equ $ + 5
.l2548 equ $ + 4
.l2547 equ $ + 3
.l2545 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l254d
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
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.l260d
	db #0e,#0e,#0f,#12,#13,#16,#19,#1c
	db #1f,#22,#25,#28,#2b,#2c,#80,#00
	db #81,#00,#07,#0a,#8c,#0c,#80,#00
	db #04,#07,#8c,#00,#05,#08,#8c,#00
	db #03,#07,#8c,#00,#03,#08,#8c,#00
	db #03,#09,#8c,#0c,#00,#00,#80,#00
	db #05,#07,#8c,#00,#05,#09,#8c,#0c
	db #80,#80
.l2647
	dw l265e,l2667,l2671,l267b
	dw l2685,l269e,l26a4,l26ad
	dw l26c2,l26d0,l26db
.l265e equ $ + 1
	db #02,#0f,#0b,#0b,#07,#06,#05,#04
.l2667 equ $ + 2
	db #87,#01,#0f,#0d,#0b,#0a,#09,#07
.l2671 equ $ + 4
	db #06,#05,#87,#01,#0e,#0a,#09,#08
.l267b equ $ + 6
	db #07,#05,#03,#01,#87,#03,#0f,#0e
	db #0d,#0c,#0b,#09,#08,#07,#87,#04
.l2685
	db #0f,#0e,#05,#04,#0d,#0c,#0b,#04
	db #05,#03,#02,#09,#0f,#0e,#05,#04
	db #0e,#0d,#03,#09,#08,#04,#09,#87
.l26a4 equ $ + 7
.l269e equ $ + 1
	db #01,#0d,#0c,#0b,#0a,#87,#00,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#87,#01
.l26ad
	db #0f,#0f,#0e,#0d,#0c,#0b,#09,#08
	db #07,#06,#09,#08,#07,#06,#05,#04
.l26c2 equ $ + 5
	db #02,#01,#00,#87,#00,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l26d0 equ $ + 3
	db #00,#87,#01,#0c,#0d,#0c,#0b,#09
.l26db equ $ + 6
	db #08,#07,#06,#05,#87,#01,#0f,#0d
	db #0c,#0b,#0a,#09,#0b,#0a,#06,#05
.l26ec equ $ + 7
.music_end equ $ + 6
.l26eb equ $ + 6
	db #04,#03,#02,#01,#00,#87,#00,#00
.l26ed
	db #00
	push bc
	push hl
	ld c,a
	ld a,(l26ed)
	cp c
	jr z,l26fa
	jp nc,l274e
.l26fa
	ld a,c
	ld (l26ed),a
	ld hl,l26ec
	ld (hl),#00
	ld hl,l27f2
	add a
	add l
	ld l,a
	jr nc,l270c
	inc h
.l270c
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l28e9
.l2714
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l2714
	ld a,(l28ea)
	ld (l28fa),a
	ld hl,(l28eb)
	ld (l2541),hl
	ld de,(l28ed)
	ld (l2545),de
	ld a,l
	ld (l2547),a
	ld a,(l28f0)
	ld (l2548),a
	ld a,(l28ef)
	ld e,a
	ld d,#0c
	call l2253
	ld a,(l28f9)
	ld e,a
	ld d,#0d
	call l2253
	ld hl,l26ec
	inc (hl)
.l274e
	pop hl
	pop bc
	ret
.l2751
	call l28fc
	ld a,(l26ec)
	and a
	ret z
	ld a,(l28e9)
	and a
	jr nz,l2768
	ld (l26ec),a
	ld (l26ed),a
	jp l2246
.l2768
	dec a
	ld (l28e9),a
	ld a,(l28fa)
	and a
	jr nz,l27a1
	ld a,(l28f7)
	and a
	ret z
	dec a
	ld (l28f7),a
	ld a,(l28ea)
	ld (l28fa),a
	ld a,(l28f8)
	and a
	jr z,l278a
	ld a,(l2917)
.l278a
	ld b,a
	ld a,(l28eb)
	add b
	ld (l2541),a
	ld a,(l28ec)
	add b
	and #0f
	ld (l2542),a
	ld hl,(l28ed)
	ld (l2545),hl
.l27a1
	ld hl,l28fa
	dec (hl)
	ld a,(l28f5)
	and a
	jr z,l27c8
	jp p,l27bb
	ld hl,(l2541)
	ld de,(l28f1)
	add hl,de
	ld (l2541),hl
	jr l27c8
.l27bb
	ld hl,(l2541)
	ld de,(l28f1)
	and a
	sbc hl,de
	ld (l2541),hl
.l27c8
	ld a,(l28f6)
	and a
	jr z,l27eb
	jp p,l27de
	ld hl,(l2545)
	ld de,(l28f3)
	add hl,de
	ld (l2545),hl
	jr l27eb
.l27de
	ld hl,(l2545)
	ld de,(l28f3)
	and a
	sbc hl,de
	ld (l2545),hl
.l27eb
	ld a,(l2541)
	ld (l2547),a
	ret
.l27f2
	dw l280c,l281d,l282e,l283f
	dw l2850,l2861,l2872,l2883
	dw l2894,l28a5,l28b6,l28c7
	dw l28d8
.l280c
	db #05
	db #ff,#09,#00,#02,#00,#0a,#f3,#08
	db #04,#00,#04,#01,#01,#ff,#00,#00
.l281d
	db #03,#46,#00,#03,#80,#03,#14,#d3
	db #05,#00,#02,#00,#ff,#ff,#0a,#00
.l282e equ $ + 1
	db #00,#07,#03,#04,#00,#0b,#20,#0f
	db #fa,#10,#00,#08,#04,#ff,#01,#0a
.l283f equ $ + 2
	db #00,#00,#1e,#ff,#10,#00,#12,#00
	db #32,#fa,#00,#00,#00,#00,#ff,#ff
.l2850 equ $ + 3
	db #00,#00,#00,#1e,#07,#c4,#00,#8b
	db #01,#0c,#f2,#78,#00,#78,#00,#ff
.l2861 equ $ + 4
	db #ff,#0a,#00,#00,#1e,#0a,#14,#00
	db #0b,#07,#0c,#f2,#40,#00,#03,#00
.l2872 equ $ + 5
	db #ff,#ff,#0a,#00,#00,#3c,#ff,#00
	db #02,#00,#02,#32,#fa,#08,#00,#09
.l2883 equ $ + 6
	db #00,#01,#01,#02,#00,#00,#02,#ff
	db #28,#00,#0b,#00,#32,#fa,#02,#00
.l2894 equ $ + 7
	db #02,#00,#ff,#ff,#0a,#00,#00,#05
	db #ff,#00,#01,#03,#01,#32,#fa,#24
	db #00,#29,#00,#ff,#ff,#01,#00,#00
.l28a5
	db #04,#ff,#80,#01,#a0,#02,#0a,#f2
	db #02,#00,#04,#00,#01,#01,#ff,#00
.l28b6 equ $ + 1
	db #00,#01,#01,#00,#07,#10,#07,#02
	db #d3,#00,#00,#00,#00,#ff,#ff,#01
.l28c7 equ $ + 2
	db #00,#00,#0a,#ff,#42,#00,#02,#01
	db #0a,#f2,#22,#00,#1a,#00,#ff,#ff
.l28d8 equ $ + 3
	db #ff,#00,#00,#32,#ff,#90,#01,#80
	db #03,#64,#f6,#00,#00,#00,#00,#ff
.l28ec equ $ + 7
.l28eb equ $ + 6
.l28ea equ $ + 5
.l28e9 equ $ + 4
	db #ff,#01,#00,#00,#00,#00,#00,#00
.l28f3 equ $ + 6
.l28f1 equ $ + 4
.l28f0 equ $ + 3
.l28ef equ $ + 2
.l28ed
	db #00,#00,#00,#00,#00,#00,#00,#00
.l28fa equ $ + 5
.l28f9 equ $ + 4
.l28f8 equ $ + 3
.l28f7 equ $ + 2
.l28f6 equ $ + 1
.l28f5
	db #00,#00,#00,#00,#00,#00,#00
.l28fc
	ld a,(l2917)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l291a
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l291a equ $ + 3
.l2917
	db #ff,#80,#1b,#34
.l291b
	db #03
	dw l2ae6,l2a22,l294c
	db #03
	dw l2930,l2936,l293c
	db #03
	dw l2940,l2944,l2948
.l2936 equ $ + 6
.l2930
	dw l2e6a,l2e27,#0000,l2e6a
.l293c equ $ + 4
	dw l2e43,#0000,l2e6d,#0000
.l2944 equ $ + 4
.l2940
	dw l2e89,#0000,l2ea4,#0000
.l294c equ $ + 4
.l2948
	dw l2ebf,#0000,l2c27,l2c27
	dw l2c27,l2c27,l2c27,l2c27
	dw l2c27,l2c27,l2d53,l2d5d
	dw l2d5d,l2d7a,l2d5d,l2d5d
	dw l2d7a,l2c27,l2c27,l2c27
	dw l2c27,l2c27,l2c27,l2c27
	dw l2c27,l2d53,l2d89,l2d89
	dw l2c27,l2c27,l2c27,l2c27
	dw l2c27,l2c27,l2c23,l2dad
	dw l2dad,l2d7a,l2c27,l2c27
	dw l2ed5,l2c27,l2c27,l2ed2
	dw l2c27,l2c27,l2ed5,l2c27
	dw l2c27,l2ed2,l2c23,l2c23
	dw l2cec,l2cec,l2cec,l2cec
	dw l2cec,l2cec,l2cec,l2cec
	dw l2cec,l2cec,l2cec,l2cec
	dw l2cec,l2cec,l2cec,l2cec
	dw l2cec,l2cec,l2cec,l2cec
	dw l2cec,l2cec,l2cec,l2cec
	dw l2cec,l2cec,l2cec,l2cec
	dw l2cec,l2cec,l2cec,l2cec
	dw l2cec,l2cec,l2cec,l2cec
	dw l2cec,l2cec,l2cec,l2cec
	dw l2cec,l2cec,l2cec,l2cec
	dw l2cec,l2cec,l2c23,l2c23
	dw l2d1a,l2d1a,l2c23,l2c23
	dw l2dcf,l2dcf,l2c23,l2c23
.l2a22 equ $ + 2
	dw #0000,l2c3d,l2c3d,l2c3d
	dw l2c3d,l2c3d,l2c3d,l2c3d
	dw l2c3d,l2c3d,l2c3d,l2c3d
	dw l2c3d,l2c3d,l2c3d,l2c3d
	dw l2c3d,l2c3d,l2c3d,l2c3d
	dw l2c3d,l2c3d,l2c3d,l2c3d
	dw l2c3d,l2c3d,l2c3d,l2c3d
	dw l2c3d,l2c3d,l2c3d,l2c3d
	dw l2c3d,l2c3d,l2c3d,l2c3d
	dw l2c3d,l2c3d,l2c3d,l2c3d
	dw l2c3d,l2c3d,l2c3d,l2c3d
	dw l2c3d,l2c3d,l2c3d,l2c3d
	dw l2c3d,l2c3d,l2c3d,l2c3d
	dw l2c3d,l2c23,l2c23,l2c23
	dw l2c23,l2c23,l2c23,l2c23
	dw l2c23,l2c23,l2c3d,l2c3d
	dw l2c3d,l2c3d,l2c3d,l2c3d
	dw l2c3d,l2c3d,l2c23,l2c23
	dw l2c23,l2c23,l2cbc,l2c23
	dw l2c23,l2cde,l2cde,l2ed5
	dw l2cec,l2cec,l2ed2,l2c23
	dw l2c23,l2cfe,l2d0e,l2d0e
	dw l2d0e,l2d0e,l2c23,l2c23
	dw l2dee,l2d1a,l2d1a,l2d1a
.l2ae6 equ $ + 6
	dw l2d1a,l2d1a,#0000,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c7a
	dw l2c7a,l2c7a,l2c7a,l2c7a
	dw l2c7a,l2c7a,l2c7a,l2c7a
	dw l2c7a,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c56,l2c56,l2c56
	dw l2c56,l2c20,l2c20,l2c7a
	dw l2c7a,l2c7a,l2c7a,l2c7a
	dw l2c7a,l2c7a,l2c7a,l2c7a
	dw l2c7a,l2c7a,l2c7a,l2c7a
	dw l2c7a,l2c7a,l2c7a,l2c7a
	dw l2c7a,l2c7a,l2c7a,l2c7a
	dw l2c7a,l2c7a,l2c7a,l2c20
	dw l2c20,l2c20,l2c20,l2ca7
	dw l2ca7,l2ca7,l2ca7,l2ca7
	dw l2ca7,l2ca7,l2ca7,l2ca7
	dw l2ca7,l2ca7,l2ca7,l2ca7
	dw l2ca7,l2ca7,l2ca7,l2ca7
	dw l2ca7,l2ca7,l2ca7,#0000
.l2c27 equ $ + 7
.l2c23 equ $ + 3
.l2c20
	db #ff,#80,#87,#ff,#80,#8f,#87,#8a
	db #88,#01,#01,#82,#c0,#d0,#91,#e3
	db #1a,#1a,#e5,#1d,#e3,#1a,#1a,#e1
.l2c3d equ $ + 5
	db #1a,#e3,#15,#18,#87,#8a,#88,#01
	db #01,#83,#c0,#d1,#90,#e3,#26,#26
	db #e5,#84,#ff,#01,#29,#e3,#26,#26
.l2c56 equ $ + 6
	db #e1,#26,#e3,#21,#24,#87,#d2,#c3
	db #81,#8c,#e3,#3e,#e1,#4a,#3e,#c1
	db #8b,#da,#e3,#27,#c3,#d2,#8c,#e1
	db #3e,#e3,#3e,#e1,#4a,#e3,#3e,#c1
	db #8b,#da,#e3,#27,#c3,#d2,#8c,#e3
.l2c7a equ $ + 2
	db #3e,#87,#d2,#81,#c1,#8b,#d8,#e3
	db #3f,#8c,#c3,#d2,#e1,#4a,#4a,#c1
	db #8b,#da,#e3,#27,#8c,#c3,#d2,#e1
	db #4a,#4a,#c1,#8b,#d8,#e5,#3f,#8c
	db #c3,#d2,#e1,#4a,#c1,#8b,#da,#e3
.l2ca7 equ $ + 7
	db #27,#8c,#c3,#d2,#e3,#4a,#87,#c1
	db #8b,#d8,#e7,#3f,#da,#e5,#27,#d8
	db #e3,#3f,#e1,#3f,#e3,#3f,#da,#e3
.l2cbc equ $ + 4
	db #27,#d8,#3f,#87,#fb,#80,#8a,#d3
	db #88,#01,#01,#83,#c0,#91,#e3,#35
	db #eb,#37,#e1,#35,#33,#ef,#32,#eb
	db #80,#e1,#30,#2e,#e7,#2d,#2b,#c2
.l2cde equ $ + 6
	db #d0,#e3,#2d,#fb,#2d,#87,#d4,#81
	db #91,#8a,#c4,#ff,#39,#8f,#c5,#3a
.l2cec equ $ + 4
	db #8f,#37,#8f,#87,#8a,#88,#01,#01
	db #82,#c0,#d1,#91,#e5,#1a,#1b,#e7
.l2cfe equ $ + 6
	db #1a,#e3,#18,#18,#18,#87,#88,#01
	db #01,#82,#d3,#ff,#4b,#8f,#8f,#8f
.l2d0e equ $ + 6
	db #4a,#8f,#8f,#85,#8f,#87,#d5,#81
	db #ef,#c6,#32,#c7,#32,#c8,#32,#c7
.l2d1a equ $ + 2
	db #32,#87,#8a,#88,#01,#01,#82,#c0
	db #d1,#91,#e7,#1a,#e3,#1a,#e1,#18
	db #e3,#1a,#e1,#1a,#e3,#1a,#19,#17
	db #e7,#15,#e3,#15,#e1,#13,#e3,#15
	db #e1,#15,#e3,#15,#17,#19,#e7,#1a
	db #e3,#1a,#e1,#18,#e3,#1a,#e1,#1a
	db #e3,#1a,#19,#17,#15,#e1,#21,#21
.l2d53 equ $ + 3
	db #f7,#15,#87,#8a,#81,#c4,#d6,#ff
.l2d5d equ $ + 5
	db #26,#8f,#8f,#8f,#87,#c9,#d7,#88
	db #01,#01,#82,#e3,#24,#eb,#26,#e3
	db #29,#eb,#26,#e3,#2d,#2b,#29,#ef
	db #26,#e3,#24,#26,#2e,#ff,#2d,#f7
.l2d7a equ $ + 2
	db #8f,#87,#c4,#e3,#26,#e7,#26,#eb
	db #26,#e7,#24,#ca,#e3,#32,#fb,#32
.l2d89 equ $ + 1
	db #87,#c3,#88,#01,#01,#82,#d0,#e3
	db #35,#34,#35,#34,#35,#34,#35,#34
	db #e7,#39,#e3,#30,#f3,#32,#e3,#34
	db #35,#34,#eb,#35,#e7,#37,#e3,#30
.l2dad equ $ + 5
	db #e7,#35,#f3,#32,#87,#88,#01,#02
	db #82,#d3,#e7,#32,#e3,#30,#32,#35
	db #32,#30,#32,#80,#30,#32,#30,#37
	db #35,#34,#8f,#35,#32,#30,#37,#8f
.l2dcf equ $ + 7
	db #35,#34,#35,#ff,#32,#d7,#87,#8a
	db #c3,#88,#01,#01,#d0,#e3,#39,#fb
	db #39,#e3,#31,#e7,#31,#32,#eb,#31
	db #e3,#32,#e7,#39,#36,#eb,#32,#ef
.l2dee equ $ + 6
	db #32,#84,#01,#08,#31,#87,#8a,#88
	db #01,#01,#82,#c0,#d1,#91,#e7,#26
	db #e3,#26,#e1,#24,#e3,#26,#e1,#26
	db #e3,#26,#25,#23,#e7,#21,#e3,#21
	db #e1,#1f,#e3,#21,#e1,#21,#e3,#21
	db #23,#25,#e7,#26,#e3,#26,#e1,#24
	db #e3,#26,#e1,#26,#e3,#26,#25,#23
.l2e27 equ $ + 7
	db #21,#e1,#2d,#2d,#f7,#21,#87,#8a
	db #d9,#81,#e3,#80,#c5,#39,#e7,#39
	db #e3,#39,#e7,#39,#e3,#39,#e3,#80
	db #cb,#37,#e7,#37,#e3,#37,#e7,#37
.l2e43 equ $ + 3
	db #e3,#37,#87,#8a,#d1,#81,#c3,#e1
	db #90,#3e,#40,#41,#3e,#3c,#41,#3e
	db #41,#43,#43,#43,#41,#3e,#3e,#41
	db #43,#3e,#41,#45,#41,#43,#45,#3e
	db #43,#41,#3e,#40,#41,#3c,#3e,#40
.l2e6d equ $ + 5
.l2e6a equ $ + 2
	db #3e,#8e,#e7,#80,#87,#8a,#88,#01
	db #01,#82,#c0,#d1,#90,#e7,#18,#e3
	db #1a,#1a,#26,#26,#1a,#1a,#26,#26
	db #1a,#1a,#26,#26,#1a,#1a,#26,#26
.l2e89 equ $ + 1
	db #87,#8a,#81,#82,#cc,#d0,#90,#e3
	db #48,#46,#43,#42,#41,#3f,#3c,#3f
	db #3c,#3a,#37,#3a,#37,#36,#35,#33
.l2ea4 equ $ + 4
	db #30,#e1,#80,#87,#8a,#81,#82,#cc
	db #d0,#e1,#80,#90,#e3,#48,#46,#43
	db #42,#41,#3f,#3c,#3f,#3c,#3a,#37
.l2ebf equ $ + 7
	db #3a,#37,#36,#35,#33,#30,#8e,#8a
	db #88,#01,#01,#82,#c0,#d1,#eb,#18
	db #24,#e7,#18,#eb,#18,#24,#e7,#18
.l2ed5 equ $ + 5
.l2ed2 equ $ + 2
	db #18,#8e,#89,#00,#87,#89,#05,#87
	db #89,#0c,#87
;
.init_music		; added by Megachur
;
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	jp real_init_music
;
.music_info
	db "The Vindicator - Part 3 (1988)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
