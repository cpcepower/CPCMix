; Music of Pasteman Pat (1988)(Firebird)()()
; Ripped by Megachur the 27/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PASTEPAT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #229c
FIRST_THEME				equ 0
LAST_THEME				equ 12

	read "music_header.asm"

;
.play_music
;
	ld hl,l283d		; music play
	ld a,(hl)
	cp #00
	ret z
	ld hl,l27ff
	cp (hl)
	jr z,l22ae
	call l250f
	jr l22b8
.l22ae
	ld hl,l283c
	dec (hl)
	jr nz,l22d1
	ld a,(l283e)
	ld (hl),a
.l22b8
	xor a
	ld (l2800),a
	ld hl,l2827
	dec (hl)
	call z,l2402
	ld hl,l2828
	dec (hl)
	call z,l2421
	ld hl,l2829
	dec (hl)
	call z,l2440
.l22d1
	ld b,#02
.l22d3
	push bc
	call l2318
	call l2334
	ld a,(l2800)
	cp #00
	jr z,l22f2
	call l277e
	ld b,#0b
	ld hl,l2855
	xor a
.l22ea
	ld c,(hl)
	call l22f6
	inc hl
	inc a
	djnz l22ea
.l22f2
	pop bc
	djnz l22d3
	ret
.l22f6
	push bc
	push af
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
	pop af
	pop bc
	ret
.l2318
	ld ix,l2803
	ld hl,(l2860)
	inc hl
	ld b,#01
	call l235f
	ld hl,(l2862)
	inc hl
	call l235c
	ld hl,(l2864)
	inc hl
	call l235c
	ret
.l2334
	ld ix,l2812
	ld hl,(l2860)
	ld bc,#000b
	add hl,bc
	ld de,l2855
	call l235f
	ld hl,(l2862)
	ld bc,#000b
	add hl,bc
	inc de
	call l235c
	ld hl,(l2864)
	ld bc,#000b
	add hl,bc
	inc de
	call l235c
	ret
.l235c
	inc ix
	inc de
.l235f
	ld (l2801),hl
	xor a
	cp (ix+#0c)
	ret z
	dec (ix+#00)
	ret nz
.l236b
	cp (ix+#03)
	jr z,l23c3
	dec (ix+#03)
.l2373
	xor a
	cp b
	jr z,l23a0
	ld a,(ix+#42)
	add (ix+#2d)
	ld c,a
	ld a,(ix+#36)
	add (hl)
	ld (ix+#36),a
	add (ix+#3f)
	add (ix+#2d)
	cp c
	jr c,l2390
	dec c
	ld a,c
.l2390
	ld (ix+#5a),a
	ld a,(ix+#27)
	cp #f0
	jr nz,l23b8
	xor a
	ld (ix+#5a),a
	jr l23b8
.l23a0
	ld a,(de)
	add (hl)
	ld (de),a
	inc de
	ld a,(de)
	bit 7,(hl)
	jr nz,l23ae
	adc #00
	ld (de),a
	jr l23b7
.l23ae
	rl c
	bit 0,c
	jr nz,l23b7
	sub #01
	ld (de),a
.l23b7
	dec de
.l23b8
	inc hl
	ld a,(hl)
	ld (ix+#00),a
	ld a,#01
	ld (l2800),a
	ret
.l23c3
	inc hl
	inc hl
	inc hl
	cp (ix+#06)
	jr z,l23d0
	dec (ix+#06)
	jr l2373
.l23d0
	inc hl
	inc hl
	inc hl
	cp (ix+#09)
	jr z,l23dd
	dec (ix+#09)
	jr l2373
.l23dd
	ld a,#ff
	cp (ix+#0c)
	jr z,l23e8
	dec (ix+#0c)
	ret z
.l23e8
	ld hl,(l2801)
	push de
	ld de,#0003
	dec hl
	call l2500
	pop de
	ld hl,(l2801)
	xor a
	cp b
	jp z,l236b
	ld (ix+#36),a
	jp l236b
.l2403 equ $ + 1
.l2402
	ld de,#0000
	ld ix,l2803
	ld hl,l284e
	call l254f
	ld hl,l2866
	ld iy,l267f
	ld bc,l2855
	call l245f
	ld (l2403),de
	ret
.l2422 equ $ + 1
.l2421
	ld de,#0000
	ld ix,l2804
	ld hl,l2850
	call l254f
	ld hl,l2866
	ld iy,l269b
	ld bc,l2857
	call l245f
	ld (l2422),de
	ret
.l2441 equ $ + 1
.l2440
	ld de,#0000
	ld ix,l2805
	ld hl,l2852
	call l254f
	ld hl,l2866
	ld iy,l26b7
	ld bc,l2859
	call l245f
	ld (l2441),de
	ret
.l245f
	push iy
	push bc
	ld b,#00
	ld a,(de)
	and #0f
	ld c,a
	add hl,bc
	ld a,(hl)
	ld (ix+#24),a
	ld a,(de)
	and #f0
	cp #70
	jp z,l2581
	inc de
	ld a,(de)
	ld c,a
	push de
	and #f8
	srl a
	srl a
	ld e,a
	ld d,#00
	ld hl,l2873
	add hl,de
	jp l26d3
.l2489
	ld c,(hl)
	inc hl
	ld b,(hl)
.l248c
	ld a,(ix+#3c)
	dec a
	jr z,l249b
.l2492
	srl b
	rr c
	dec a
	cp #00
	jr nz,l2492
.l249b
	pop de
	pop hl
	ld (hl),c
	inc hl
	ld (hl),b
	inc de
	ld bc,#000a
	add hl,bc
	push de
	push hl
	ld a,(de)
	and #0e
	cp #00
	jr z,l24c3
	srl a
	ld (ix+#30),a
	ld b,a
	ld hl,l28d1
	ld de,#0016
.l24ba
	add hl,de
	djnz l24ba
	ex de,hl
	pop hl
	push hl
	ld (hl),e
	inc hl
	ld (hl),d
.l24c3
	pop hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld de,#0003
	call l24f2
	xor a
	ld (ix+#36),a
	ld (ix+#27),a
	ld bc,#000f
	push ix
	add ix,bc
	inc hl
	call l24f2
	call l275e
	pop ix
	pop de
	call l2720
	call l2728
	inc de
	pop hl
	call l2586
	ret
.l24f2
	ld a,#01
	ld (ix+#00),a
	call l2500
	add hl,de
	ld a,(hl)
	ld (ix+#0c),a
	ret
.l2500
	ld a,(hl)
	ld (ix+#03),a
	add hl,de
	ld a,(hl)
	ld (ix+#06),a
	add hl,de
	ld a,(hl)
	ld (ix+#09),a
	ret
.l250f
	ld (hl),a
	ld b,a
	ld hl,l2981		; music theme data
	ld de,#0016
	or a
	sbc hl,de
.l251a
	add hl,de
	djnz l251a
	ld a,(hl)
	ld (l283c),a
	ld de,l283e
	ld bc,#0016
	ldir
	call l275b
	call l2620
	call l25fc
	ld hl,(l284e)
	ld (l2403),hl
	ld hl,(l2850)
	ld (l2422),hl
	ld hl,(l2852)
	ld (l2441),hl
	ld hl,l2827
	ld a,#01
	ld (hl),a
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	ret
.l254f
	ld a,(de)
	and #0f
	cp #0f
	jr z,l255f
	cp #0e
	jr z,l2569
	cp #0d
	jr z,l2570
	ret
.l255f
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1e),e
	ld (ix+#21),d
	ret
.l2569
	ld e,(ix+#1e)
	ld d,(ix+#21)
	ret
.l2570
	pop hl
	pop hl
;
.stop_music
;
	ld c,#bf
	ld a,#07
	call l22f6
	xor a
	ld (l283d),a		; music_end ?
	ld (l27ff),a
	ret
.l2581
	pop bc
	pop hl
	inc de
	inc de
	inc de
.l2586
	push de
	dec de
	dec de
	dec de
	ld a,(de)
	and #f0
	cp #80
	jr z,l25c5
	cp #70
	jr z,l2599
	cp #00
	jr z,l25c5
.l2599
	push de
	ex de,hl
	call l264e
	pop de
	xor a
	cp (ix+#33)
	jr nz,l25b6
	ld a,(de)
	and #f0
	cp #20
	jr z,l25c7
	cp #30
	jr z,l25cf
	cp #50
	jr z,l25cf
	jr l25c5
.l25b6
	ld a,(de)
	and #f0
	cp #40
	jr z,l25da
	cp #30
	jr z,l25f1
	cp #50
	jr z,l25f1
.l25c5
	pop de
	ret
.l25c7
	pop de
	ld (ix+#1e),e
	ld (ix+#21),d
	ret
.l25cf
	pop de
	inc (ix+#33)
	ld e,(ix+#1e)
	ld d,(ix+#21)
	ret
.l25da
	pop bc
	dec (ix+#33)
	ex de,hl
	ld de,#0003
.l25e2
	add hl,de
	ld a,(hl)
	and #f0
	cp #50
	jr z,l25ee
	cp #30
	jr nz,l25e2
.l25ee
	add hl,de
	ex de,hl
	ret
.l25f1
	pop de
	dec (ix+#33)
	ld (ix+#1e),e
	ld (ix+#21),d
	ret
.l25fc
	ld ix,l2803
	ld hl,(l284e)
	ld (ix+#1e),l
	ld (ix+#21),h
	inc ix
	ld hl,(l2850)
	ld (ix+#1e),l
	ld (ix+#21),h
	inc ix
	ld hl,(l2852)
	ld (ix+#1e),l
	ld (ix+#21),h
	ret
.l2620
	ld hl,l2663
	ld b,#1c
	xor a
.l2626
	ld (hl),a
	inc hl
	djnz l2626
	ld hl,l2663
	ld de,l284a
	ld a,(de)
	ld c,a
	call l2657
	call l2657
	call l2657
	call l264b
	call l2646
	ld de,l26b7
	jr l264e
.l2646
	ld de,l269b
	jr l264e
.l264b
	ld de,l267f
.l264e
	ld hl,l2663
	ld bc,#001c
	ldir
	ret
.l2657
	inc de
	ld a,(de)
	ld b,#08
.l265b
	rra
	jr nc,l265f
	ld (hl),c
.l265f
	inc hl
	djnz l265b
	ret
.l2663
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l267f equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l269b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l26b7 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l26d3
	srl e
	add iy,de
	ld a,c
	and #07
	cp #00
	jr z,l26e6
	cp #03
	jr nz,l26e3
	xor a
.l26e3
	ld (iy+#00),a
.l26e6
	ld a,(iy+#00)
	cp #00
	jp z,l2489
	cp #01
	jr z,l2711
	cp #02
	jr z,l2708
	cp #05
	jr z,l2703
	ld bc,#003c
	call l2716
	jp nz,l248c
.l2703
	inc hl
	inc hl
	jp l2489
.l2708
	ld bc,#003a
	call l2716
	jp nz,l248c
.l2711
	dec hl
	dec hl
	jp l2489
.l2716
	push hl
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	pop hl
	ld a,#ff
	cp b
	ret
.l2720
	ld a,(de)
	cp #f0
	ret z
	ld (ix+#27),a
	ret
.l2728
	ld a,(ix+#2a)
	cp #00
	jr z,l2736
	ld (ix+#2d),a
	xor a
	ld (ix+#2a),a
.l2736
	ld a,(de)
	and #f0
	cp #00
	ret z
	cp #f0
	ret z
	srl a
	srl a
	srl a
	srl a
	cp #07
	jr nc,l274f
	ld (ix+#2d),a
	ret
.l274f
	sub #02
	ld c,(ix+#2d)
	ld (ix+#2a),c
	ld (ix+#2d),a
	ret
.l275b
	ld hl,l2847
.l275e
	inc hl
	inc hl
	ld a,(hl)
	and #c0
	cp #00
	ret nz
	ld a,(hl)
	ld c,a
	and #1f
	ld (l2849),a
	ld a,c
	and #20
	srl a
	srl a
	srl a
	srl a
	srl a
	ld (l2854),a
	ret
.l277e
	ld b,#b8
	ld hl,l285d
	ld ix,(l2860)
	ld c,#08
	call l27df
	inc hl
	ld ix,(l2862)
	ld c,#10
	call l27df
	inc hl
	ld ix,(l2864)
	ld c,#20
	call l27df
	ld a,b
	ld (l285c),a
	ld hl,l27de
	dec (hl)
	ret nz
	ld a,(l2848)
	ld (hl),a
	ld ix,l2848
	xor a
	cp (ix+#0c)
	jr z,l27c7
.l27b7
	ld a,#1f
	cp (ix+#01)
	jr z,l27c3
	inc (ix+#01)
	jr l27d7
.l27c3
	xor a
	ld (ix+#0c),a
.l27c7
	cp (ix+#01)
	jr z,l27d1
	dec (ix+#01)
	jr l27d7
.l27d1
	inc a
	ld (ix+#0c),a
	jr l27b7
.l27d7
	ld a,(ix+#01)
	ld (l285b),a
	ret
.l27df equ $ + 1
.l27de
	ld bc,#ddaf
	cp (hl)
	inc d
	ret z
	ld a,(ix+#14)
	and #f0
	srl a
	srl a
	srl a
	srl a
	dec a
	cp (hl)
	ret nc
	ld a,(ix+#14)
	and #0f
	cp (hl)
	ret c
	ld a,b
	sub c
	ld b,a
	ret
.l2805 equ $ + 6
.l2804 equ $ + 5
.l2803 equ $ + 4
.l2801 equ $ + 2
.l2800 equ $ + 1
.l27ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2812 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2829 equ $ + 2
.l2828 equ $ + 1
.l2827
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#06,#06,#06,#00,#00,#00,#00
.l283e equ $ + 7
.music_end equ $ + 6
.l283d equ $ + 6	; music_end ?
.l283c equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l284e equ $ + 7
.l284a equ $ + 3
.l2849 equ $ + 2
.l2848 equ $ + 1
.l2847
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2855 equ $ + 6
.l2854 equ $ + 5
.l2852 equ $ + 3
.l2850 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l285d equ $ + 6
.l285c equ $ + 5
.l285b equ $ + 4
.l2859 equ $ + 2
.l2857
	db #00,#00,#00,#00,#00,#b8,#00,#00
.l2866 equ $ + 7
.l2864 equ $ + 5
.l2862 equ $ + 3
.l2860 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #02,#03,#04,#06,#08,#0c,#10,#18
.l2873 equ $ + 4
	db #20,#30,#da,#0b,#2f,#0b,#f7,#09
	db #e1,#08,#e9,#07,#77,#07,#a7,#06
	db #ed,#05,#98,#05,#fc,#04,#70,#04
	db #f4,#03,#bc,#03,#53,#03,#f6,#02
	db #cc,#02,#7e,#02,#38,#02,#fa,#01
	db #de,#01,#aa,#01,#7b,#01,#66,#01
	db #3f,#01,#1c,#01,#fd,#00,#ef,#00
	db #d5,#00,#be,#00,#b3,#00,#ff,#ff
	db #8f,#0a,#68,#09,#61,#08,#ff,#ff
	db #0c,#07,#47,#06,#ff,#ff,#47,#05
	db #b4,#04,#31,#04,#ff,#ff,#86,#03
	db #24,#03,#ff,#ff,#a4,#02,#5a,#02
.l28d1 equ $ + 2
	db #18,#02,#ff,#ff,#c3,#01,#92,#01
	db #ff,#ff,#52,#01,#2d,#01,#0c,#01
	db #ff,#ff,#e1,#00,#c9,#00,#ff,#ff
	db #01,#0e,#02,#01,#ec,#01,#01,#00
	db #01,#01,#01,#00,#01,#01,#00,#01
	db #01,#00,#01,#00,#af,#ff,#01,#0a
	db #01,#01,#f6,#01,#01,#00,#01,#ff
	db #01,#fb,#01,#02,#10,#01,#02,#f3
	db #02,#ff,#00,#00,#02,#04,#01,#06
	db #ff,#01,#01,#00,#01,#01,#02,#fc
	db #02,#02,#02,#02,#02,#02,#02,#ff
	db #00,#00,#02,#02,#02,#02,#03,#02
	db #02,#02,#01,#01,#01,#fa,#01,#01
	db #0a,#01,#01,#fa,#01,#ff,#00,#00
	db #03,#05,#01,#01,#f3,#01,#01,#00
	db #01,#01,#04,#07,#01,#02,#03,#01
	db #01,#01,#01,#ff,#ab,#ff,#0f,#0a
	db #01,#06,#ff,#09,#01,#00,#01,#01
	db #02,#01,#01,#04,#ff,#01,#02,#01
	db #01,#ff,#00,#ff,#0b,#01,#05,#01
	db #00,#01,#01,#00,#01,#01,#01,#00
	db #01,#01,#00,#01,#01,#00,#01,#00
	db #ab,#ff
.l2981
	db #02,#03,#03,#03,#03,#03,#05,#09
	db #09,#08,#14,#0f,#00,#00,#00,#00
	dw l4600,l4631,l46ce
	db #0c,#01,#02,#01,#03,#02,#03,#09
	db #0a,#09,#00,#00,#02,#48,#00,#12
	dw l472f,l4735,l4732
	db #02,#03,#04,#05,#06,#07,#08,#08
	db #09,#0a,#00,#00,#00,#00,#00,#00
	dw l4e00,l4e06,l4e03
	db #01,#01,#02,#01,#00,#00,#00,#08
	db #08,#08,#05,#2b,#00,#00,#00,#00
	dw l4e10,l4e10,l4e10
	db #03,#03,#04,#05,#00,#00,#00,#05
	db #06,#07,#00,#00,#00,#00,#00,#00
	dw l4e17,l4e1d,l4e1a
	db #02,#03,#03,#04,#03,#00,#03,#09
	db #09,#08,#14,#0f,#00,#00,#00,#00
	dw l4e82,l4e21,l4e82
	db #04,#01,#03,#02,#05,#05,#08,#09
	db #09,#09,#00,#00,#00,#00,#00,#00
	dw l4f13,l4f19,l4f16
	db #01,#01,#02,#03,#00,#00,#00,#08
	db #09,#0a,#00,#00,#00,#00,#00,#00
	dw l4f47,l4f47,l4f47
	db #07,#05,#07,#06,#06,#07,#08,#08
	db #09,#0a,#00,#00,#00,#00,#00,#00
	dw l4f47,l4f47,l4f47
	db #04,#03,#04,#05,#06,#07,#08,#08
	db #09,#0a,#00,#00,#00,#00,#00,#00
	dw l4f4e,l4f54,l4f51
	db #01,#06,#07,#05,#03,#02,#03,#07
	db #08,#07,#00,#00,#02,#48,#00,#12
	dw l472f,l4735,l4732

; #4600
.l4600
	db #03,#88,#3a,#03,#48,#00,#03,#58
	db #00,#03,#40,#00,#03,#68,#00,#03
	db #48,#00,#03,#48,#00,#03,#38,#00
	db #03,#48,#00,#03,#48,#00,#03,#58
	db #00,#03,#40,#00,#03,#68,#00,#03
	db #38,#00,#03,#40,#00,#03,#38,#00
.l4631 equ $ + 1
	db #0f,#05,#60,#6c,#05,#68,#00,#05
	db #78,#00,#05,#80,#00,#03,#90,#01
	db #06,#80,#00,#07,#80,#00,#06,#80
	db #00,#03,#90,#01,#05,#80,#00,#05
	db #78,#00,#05,#68,#00,#05,#60,#00
	db #05,#60,#00,#05,#68,#00,#05,#78
	db #00,#05,#80,#00,#07,#90,#01,#05
	db #80,#00,#05,#78,#00,#05,#68,#00
	db #07,#60,#00,#05,#68,#00,#05,#78
	db #00,#09,#80,#00,#03,#80,#00,#03
	db #78,#00,#03,#68,#00,#06,#60,#00
	db #09,#60,#00,#03,#60,#00,#03,#68
	db #00,#03,#78,#00,#03,#80,#00,#03
	db #80,#00,#03,#78,#00,#03,#68,#00
	db #03,#60,#00,#09,#60,#00,#05,#80
	db #00,#03,#90,#01,#06,#80,#00,#07
	db #80,#00,#06,#80,#00,#03,#90,#01
	db #05,#80,#00,#05,#78,#00,#05,#68
	db #00,#05,#60,#00,#05,#60,#00,#09
.l46ce equ $ + 6
	db #60,#00,#07,#60,#00,#0f,#05,#28
	db #5e,#05,#28,#00,#05,#20,#00,#05
	db #28,#00,#05,#28,#00,#05,#10,#00
	db #05,#28,#00,#05,#28,#00,#05,#20
	db #00,#05,#28,#00,#05,#28,#00,#05
	db #10,#00,#05,#10,#00,#05,#28,#00
	db #05,#28,#00,#05,#20,#00,#05,#28
	db #00,#05,#28,#00,#05,#10,#00,#05
	db #10,#00,#05,#28,#00,#05,#28,#00
	db #05,#20,#00,#05,#28,#00,#05,#28
	db #00,#05,#10,#00,#05,#10,#00,#05
	db #10,#00,#05,#28,#00,#05,#28,#00
.l472f equ $ + 7
	db #05,#20,#00,#05,#28,#00,#0f,#00
.l4735 equ $ + 5
.l4732 equ $ + 2
	db #78,#f0,#20,#78,#f0,#13,#98,#07
	db #01,#b0,#01,#01,#a8,#01,#05,#b0
	db #01,#03,#98,#01,#03,#90,#01,#01
	db #a8,#01,#04,#88,#01,#01,#90,#01
	db #01,#78,#00,#01,#98,#01,#03,#78
	db #00,#01,#90,#01,#13,#88,#01,#01
	db #a8,#01,#04,#90,#01,#01,#80,#01
	db #04,#b0,#01,#01,#a8,#01,#01,#b0
	db #01,#04,#a8,#01,#01,#98,#01,#01
	db #78,#00,#01,#98,#01,#14,#88,#01
	db #01,#b0,#01,#01,#a8,#01,#05,#b0
	db #01,#04,#98,#01,#01,#90,#01,#01
	db #a8,#01,#04,#88,#01,#01,#90,#01
	db #01,#78,#00,#01,#98,#01,#02,#78
	db #00,#01,#90,#01,#11,#88,#01,#01
	db #a8,#01,#04,#90,#01,#01,#80,#00
	db #0e,#01,#00,#00,#00,#00,#84,#00
	db #03,#01,#01,#0a,#16,#47,#00,#a0
	db #0b,#0b,#00,#24,#10,#05,#06,#00
	db #00,#ff,#05,#06,#00,#24,#10,#0b
	db #0b,#0b,#0b,#00,#24,#10,#05,#06
	db #04,#00,#00,#80,#01,#00,#00,#03
	db #01,#01,#33,#00,#42,#00,#15,#4d
	db #45,#4e,#53,#41,#00,#29,#15,#4f
	db #4e,#4c,#59,#00,#00,#47,#00,#29
	db #2c,#53,#4d,#41,#52,#54,#00,#29
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0e,#07
	db #09,#04,#09,#0f,#0c,#03,#0c,#03
	db #0c,#03,#0e,#07,#08,#03,#08,#01
	db #08,#01,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#08
	db #00,#07,#0f,#0f,#0f,#0f,#0f,#0f
	db #0c,#00,#00,#00,#0e,#00,#07,#0f
	db #0e,#00,#0e,#01,#0e,#00,#00,#0f
	db #0c,#00,#00,#03,#0f,#0f,#09,#04
	db #09,#0f,#09,#0f,#09,#09,#0f,#0f
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #0e,#07,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0c,#01
	db #08,#03,#0f,#0f,#0f,#0f,#0f,#0f
	db #00,#08,#04,#03,#08,#00,#00,#0f
	db #0c,#07,#08,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #ff,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0e,#00,#00,#01,#0f,#00
	db #04,#01,#0e,#00,#0f,#0f,#0f,#08
	db #00,#03,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#09,#09,#0c,#03,#0f,#0f
	db #0c,#01,#09,#09,#0e,#07,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#7f
	db #ef,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0c,#00,#00,#0f,#08,#03
	db #00,#07,#0c,#00,#00,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#09,#04
	db #0e,#07,#09,#09,#0e,#07,#0f,#0f
	db #09,#04,#09,#0f,#09,#09,#08,#0f
	db #09,#09,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#78
	db #87,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#3c,#e1
	db #1e,#c3,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#08
	db #07,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#6f,#0f
	db #6f,#6f,#3f,#cf,#6f,#bf,#3f,#cf
	db #1f,#8f,#1f,#8f,#3f,#cf,#6f,#6f
	db #1f,#8f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0c,#01
	db #0e,#03,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#ff,#ff,#ef,#3f,#df,#ef,#ff
	db #1f,#ef,#1f,#ef,#3f,#ff,#ff,#cf
	db #0f,#ff,#cf,#0f,#0f,#0f,#6f,#6f
	db #6f,#6f,#1f,#8f,#1f,#8f,#6f,#0f
	db #0f,#0f,#1f,#8f,#6f,#6f,#6f,#0f
	db #6f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#7f
	db #ff,#8f,#0f,#0f,#0f,#0f,#0f,#0f
	db #7f,#ff,#ff,#8f,#ff,#7f,#bf,#cf
	db #3f,#8f,#7f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#3f,#ef
	db #7f,#cf,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#ff,#ff,#ef,#1f,#ff
	db #8f,#0f,#1f,#ff,#ff,#0f,#7f,#ef
	db #0f,#0f,#0f,#0f,#0f,#0f,#6f,#6f
	db #3f,#cf,#1f,#8f,#0f,#0f,#3f,#cf
	db #3f,#cf,#0f,#0f,#7f,#cf,#6f,#6f
	db #7f,#cf,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#1e
	db #f0,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#7f,#cf,#7f,#8f,#7f,#ff
	db #ff,#cf,#3f,#ff,#ef,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #1f,#8f,#1f,#8f,#7f,#0f,#0f,#0f
	db #6f,#0f,#6f,#6f,#7f,#0f,#7f,#ef
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#78,#c3
	db #78,#c3,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0c
	db #00,#07,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0c,#00
	db #00,#03,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#69,#b4
	db #3c,#c3,#3c,#87,#1e,#87,#69,#69
	db #3c,#e1,#0f,#0f,#3c,#c3,#69,#0f
	db #1e,#87,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#7f
	db #ff,#8f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#1e,#f0,#3c,#e1,#0f,#3c
	db #f0,#0f,#1e,#f0,#1e,#e1,#1e,#f0
	db #f0,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#69,#69,#69,#69,#c3,#69
	db #1e,#87,#69,#69,#69,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#3f,#ff
	db #ff,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#78,#c3,#78,#c3,#0f,#f0
	db #c3,#0f,#3c,#f0,#c3,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#78
	db #f0,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#f0,#f0,#e1,#3c,#f0,#f0,#c3
	db #3c,#e1,#f0,#c3,#1e,#f0,#e1,#0f
	db #3c,#f0,#f0,#0f,#0f,#0f,#3c,#c3
	db #1e,#87,#69,#b4,#69,#0f,#78,#e1
	db #1e,#87,#3c,#c3,#1e,#87,#1e,#87
	db #3c,#c3,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#3c,#c3
	db #3c,#c3,#0f,#0f,#0f,#0f,#0f,#0f
	db #78,#f0,#f0,#87,#1e,#f0,#87,#0f
	db #1e,#f0,#c3,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#1f,#8f,#0f,#0f
	db #78,#0f,#1e,#87,#69,#69,#69,#69
	db #1e,#87,#69,#0f,#69,#69,#78,#0f
	db #0f,#0f,#1f,#8f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#07,#0e,#0f,#0f,#0f
	db #0f,#0f,#0f,#07,#0e,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#ff,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#ff,#0f,#0f,#0f,#0f,#0f
	db #0e,#00,#00,#00,#00,#00,#05,#00
	db #00,#0a,#00,#00,#00,#00,#00,#07
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #06,#0d,#0f,#0f,#0f,#0f,#0f,#0c
	db #03,#0f,#0f,#0f,#0f,#0f,#0b,#06
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#09,#09
	db #7f,#ef,#3c,#e1,#0f,#0f,#09,#0f
	db #3f,#cf,#3c,#c3,#0e,#07,#7f,#ef
	db #69,#69,#0f,#0f,#0f,#0f,#0f,#0f
	db #00,#01,#09,#0e,#00,#03,#00,#03
	db #00,#03,#0c,#0f,#00,#01,#09,#04
.l4e06 equ $ + 6
.l4e03 equ $ + 3
.l4e00
	db #00,#d8,#fa,#00,#d8,#fa,#29,#d8
	db #6a,#0a,#d8,#34,#0a,#d8,#34,#0d
.l4e17 equ $ + 7
.l4e10
	db #04,#00,#62,#04,#10,#00,#0f,#00
.l4e1d equ $ + 5
.l4e1a equ $ + 2
	db #d8,#f8,#20,#d8,#f8,#0a,#00,#68
.l4e21 equ $ + 1
	db #0e,#03,#08,#0a,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
	db #00,#03,#20,#00,#03,#20,#00,#03
	db #20,#00,#03,#20,#00,#03,#20,#00
	db #03,#20,#00,#03,#20,#00,#03,#20
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#33,#08
.l4e82 equ $ + 2
	db #00,#0f,#07,#98,#0c,#03,#a8,#01
	db #03,#98,#01,#03,#90,#01,#03,#88
	db #01,#03,#90,#01,#03,#78,#00,#04
	db #88,#01,#01,#88,#01,#03,#78,#00
	db #03,#88,#01,#05,#88,#f1,#01,#60
	db #00,#01,#58,#00,#01,#50,#00,#01
	db #58,#00,#04,#58,#00,#01,#50,#00
	db #05,#40,#00,#03,#40,#00,#01,#58
	db #00,#01,#60,#00,#01,#50,#00,#04
	db #40,#00,#05,#40,#00,#03,#40,#f0
	db #03,#60,#00,#03,#70,#00,#03,#78
	db #00,#04,#88,#01,#01,#88,#01,#65
	db #78,#00,#73,#78,#00,#03,#60,#00
	db #03,#70,#00,#03,#78,#00,#04,#88
	db #01,#01,#88,#01,#65,#78,#00,#77
	db #78,#00,#07,#b0,#01,#03,#b0,#01
	db #03,#a8,#01,#03,#98,#01,#01,#90
	db #01,#01,#88,#01,#03,#78,#00,#09
.l4f16 equ $ + 6
.l4f13 equ $ + 3
	db #78,#00,#0d,#00,#c0,#fe,#20,#c2
.l4f19 equ $ + 1
	db #fe,#02,#b0,#6e,#01,#d8,#00,#02
	db #b0,#00,#02,#b2,#01,#01,#da,#01
	db #02,#b0,#01,#02,#a8,#01,#01,#d0
	db #01,#02,#a8,#01,#05,#c2,#01,#05
	db #a8,#f1,#03,#a8,#01,#03,#b0,#01
.l4f47 equ $ + 7
	db #03,#a8,#01,#06,#b4,#01,#0d,#04
.l4f4e equ $ + 6
	db #00,#68,#04,#10,#00,#0d,#00,#d8
.l4f54 equ $ + 4
.l4f51 equ $ + 1
	db #fa,#00,#d8,#fa,#2a,#d8,#6a,#0d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#10
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#60,#00,#00,#00,#10,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c0,#00,#00,#32,#00,#00,#00,#01
	db #c0,#09,#c0,#00,#00,#00,#00,#00
	db #10,#00,#00,#2c,#00,#00,#20,#00
	db #00,#00,#10,#1c,#00,#00,#90,#00
	db #f0,#00,#28,#01,#80,#00,#60,#00
	db #00,#00,#00,#21,#20,#00,#00,#41
	db #00,#00,#00,#02,#20,#16,#20,#00
	db #00,#00,#00,#00,#68,#00,#40,#42
	db #00,#01,#d3,#c0,#00,#00,#28,#23
	db #80,#01,#10,#01,#08,#00,#44,#06
	db #40,#00,#90,#06,#00,#00,#00,#51
	db #10,#00,#00,#20,#b0,#00,#80,#02
	db #20,#20,#10,#00,#00,#00,#00,#00
	db #84,#01,#a0,#81,#00,#02,#14,#2c
;
; #1cce
; ld a,#01
; ld (#283d),a	; intro
;
; theme 1->12
;
;
.init_music		; added by Megachur
;
	ld (l27ff),a
	inc a
	ld (l283d),a	; to start play_music a<>0 !
	ret
;
.music_info
	db "Pasteman Pat (1988)(Firebird)()",0
	db "",0

	read "music_end.asm"
