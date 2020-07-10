; Music of Renegade (1987)(Imagine)(Fred Gray)()
; Ripped by Megachur the 14/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RENEGADE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #2630
FIRST_THEME				equ 1
LAST_THEME				equ 34

	read "music_header.asm"

;
.play_music
;
	call l26ab
	call l2759
	ld hl,(la7b0)
	xor a
	call l267d
	ld hl,(la7b2)
	ld a,#02
	call l267d
	ld hl,(la7b4)
	ld a,#04
	call l267d
	ld a,(la7bf)
	ld c,a
	ld a,#06
	call l2689
	ld a,(la7ad)
	ld c,a
	ld a,#08
	call l2689
	ld a,(la7ae)
	ld c,a
	ld a,#09
	call l2689
	ld a,(la7af)
	ld c,a
	ld a,#0a
	call l2689
	ld a,(la7c0)
	and #3f
	ld c,a
	ld a,#07
	call l2689
	ret
.l267d
	ld c,l
	ld e,a
	call l2689
	ld a,e
	inc a
	ld c,h
	call l2689
	ret
.l2689
	push bc
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
	pop bc
	ret
.l26ab
	call l2708
	ld hl,(la7c3)
	dec hl
	ld (la7c3),hl
	ld a,h
	or l
	jr nz,l26bf
	ld a,(la7c2)
	ld (la737),a
.l26bf
	ld a,(la7c9)
	and #0f
	ld e,a
	ld a,(la7c9)
	srl a
	srl a
	srl a
	srl a
	call l2869
	ld a,(la7c6)
	dec a
	ld (la7c6),a
	ret p
	ld a,(la7c5)
	ld (la7c6),a
	ld hl,la7c8
	ld a,(la7c1)
	add (hl)
	ld (la7c1),a
	ld (la7bf),a
	srl a
	srl a
	srl a
	srl a
	ld (la7b1),a
	ld a,(la7c1)
	sla a
	sla a
	sla a
	sla a
	ld (la7b0),a
	ret
.l2708
	ld a,(la737)
	and a
	ret z
	dec a
	sla a
	sla a
	sla a
	ld c,a
	ld b,#00
	ld hl,l2da4
	add hl,bc
	ld a,(hl)
	ld (la7c1),a
	inc hl
	ld a,(hl)
	ld (la7c0),a
	inc hl
	ld a,(hl)
	ld (la7c9),a
	inc hl
	ld a,(hl)
	ld (la7c8),a
	inc hl
	ld a,(hl)
	ld (la7c5),a
	ld (la7c6),a
	inc hl
	ld a,(hl)
	ld (la7c2),a
	inc hl
	ld a,(hl)
	ld (la7c3),a
	inc hl
	ld a,(hl)
	ld (la7c4),a
	ld a,(la7aa)
	ld (la7a7),a
	xor a
	ld (la7b6),a
	ld (la7a4),a
	ld (la737),a
	ld (la7b0),a
	ret
.l2759
	ld a,(la73e)
	or a
	jr z,l277d
;
.init_music
;
	ld (la73f),a
	xor a
	ld (la73e),a
	ld de,#0000
	ld (la7b0),de
	ld (la7b2),de
.l2771
	ld (la7b4),de
	ld (la7bb),de
	ld (la7bd),de
.l277d
	ld a,(la73f)
	or a
	jr nz,l278c
	ld (la7ad),a
	ld (la7ae),a
	ld (la7af),a
.l278c
	jp m,l27a4
	xor a
	ld (la7a2),a
	ld (la7a3),a
	ld (la7a1),a
	ld a,#0f
	ld (la7aa),a
	ld (la7ab),a
	ld (la7ac),a
.l27a4
	ld a,(la73f)
	or #80
	ld (la73f),a
	and #7f
	add a
	ld l,a
	ld h,#00
	ld de,l2983
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp (hl)
.l27bb
	add hl,bc
	ld a,(hl)
	or a
	ret z
	add a
	ld l,a
	ld h,#00
	cp #02
	jr z,l27cc
	sla e
	ld d,#00
	add hl,de
.l27cc
	ld de,lb720
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (la7b4),de
	ld (la7bb),de
	ld a,(la7ac)
	ld (la7a9),a
	xor a
	ld (la7b8),a
	ld (la7a6),a
.l27e8
	ret
.l27e9
	ld hl,(la7bb)
	ld a,(la7a1)
	and e
	jr nz,l27f6
	srl h
	rr l
.l27f6
	ld (la7b4),hl
	ret
.l27fa
	add hl,bc
	ld a,(hl)
	or a
	ret z
	add e
	ld (la7b9),a
	sub e
	call l283b
	ld a,(la7ab)
	ld (la7a8),a
	xor a
	ld (la7b7),a
	ld (la7a5),a
	ret
.l2814
	ld bc,(la7a2)
	xor a
	or b
	or c
	jr nz,l2823
	ld a,(la7b9)
	ld (la7ba),a
.l2823
	ld a,(la7ba)
	ld hl,la7b9
	cp (hl)
	jr z,l2832
	jr nc,l2831
	inc a
	jr l2832
.l2831
	dec a
.l2832
	ld (la7ba),a
	add a
	ld l,a
	ld h,#00
	jr l2848
.l283b
	add a
	ld l,a
	ld h,#00
	cp #02
	jr z,l2848
.l2843
	sla e
	ld d,#00
	add hl,de
.l2848
	ld de,lb720
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l2851 equ $ + 2
	ld (la7b2),de
	ld (la7bd),de
	ret
.l2858
	ld hl,(la7bd)
	ld a,(la7a1)
	and e
	jr nz,l2865
	srl h
	rr l
.l2865
	ld (la7b2),hl
	ret
.l2869
	ld (l288e),a
	ld a,(la7b6)
	and a
	jr z,l287f
	ld a,(la7a4)
	inc a
	cp e
	jp nz,l287b
	xor a
.l287b
	ld (la7a4),a
	ret nz
.l287f
	ld a,#01
	ld (la7b6),a
	ld a,(la7a7)
	and a
	ret z
	dec a
	ld (la7a7),a
.l288e equ $ + 1
	xor #00
	ld (la7ad),a
	ret
.l2893
	ld (l28b8),a
	ld a,(la7b7)
	and a
	jr z,l28a9
	ld a,(la7a5)
	inc a
	cp e
	jp nz,l28a5
	xor a
.l28a5
	ld (la7a5),a
	ret nz
.l28a9
	ld a,#01
	ld (la7b7),a
	ld a,(la7a8)
	and a
	ret z
	dec a
	ld (la7a8),a
.l28b8 equ $ + 1
	xor #00
	ld (la7ae),a
	ret
.l28bd
	ld (l28e2),a
	ld a,(la7b8)
	and a
	jr z,l28d3
	ld a,(la7a6)
	inc a
	cp e
	jp nz,l28cf
	xor a
.l28cf
	ld (la7a6),a
	ret nz
.l28d3
	ld a,#01
	ld (la7b8),a
	ld a,(la7a9)
	and a
	ret z
	dec a
	ld (la7a9),a
.l28e2 equ $ + 1
	xor #00
	ld (la7af),a
	ret
.l28e7
	ld bc,(la7a2)
	ld a,(la7a1)
	inc a
	cp e
	jp nz,l28f4
	xor a
.l28f4
	ld (la7a1),a
	ret
.l28f8
	ld hl,(la7a2)
	inc hl
	ld (la7a2),hl
	and a
	sbc hl,de
	ret
.l2903
	call l28f8
	jr nz,l2911
	ld a,(la73f)
	inc a
	and #7f
	ld (la73f),a
.l2911
	ret
.l2912
	call l28f8
	jr nz,l291c
	ld a,#03
	ld (la73f),a
.l291c
	ret
.l291d
	xor a
	ld e,#02
	call l2893
	xor a
	ld e,#02
	jp l28bd
.l2929
	xor a
	ld e,#04
	call l2893
	xor a
.l2931 equ $ + 1
	ld e,#01
	jp l28bd
.l2935
	call l291d
	ld e,#07
	call l2858
	ld e,#02
	call l27e9
	ld e,#08
	jp l28e7
.l2947
	call l291d
	ld e,#07
	call l2858
	ld e,#06
	call l27e9
	ld e,#08
	jp l28e7
.l2959
	call l291d
	ld e,#07
	call l2858
	ld e,#02
	call l27e9
	ld e,#06
	jp l28e7
.l296b
	call l291d
	call l2814
	call l2814
	ld e,#02
	call l2858
	ld e,#07
	call l27e9
	ld e,#08
	jp l28e7
.l2983
	dw l27e8,l29c9,l29f2,l2a0c
	dw l2a0f,l2a29,l2a43,l2a5d
	dw l2a77,l2a7d,l2a97,l2a97
	dw l2a97,l2a97,l2ab1,l2acb
	dw l2ad1,l2ad1,l2ad1,l2ad1
	dw l2ad1,l2ad1,l2b12,l2b42
	dw l2b6b,l2b71,l2b71,l2b8b
	dw l2ba8,l2bae,l2be1,l2bae
	dw l2be1,l2c03,l2c27
.l29c9
	call l2929
	ld e,#06
	call l2858
	ld e,#02
	call l27e9
	ld e,#08
	call l28e7
	ret nz
	ld hl,l2c2d
	ld e,#1f
	call l27bb
	ld hl,l2c2d
	ld e,#18
	call l27fa
	ld de,#000d
	jp l2912
.l29f2
	call l2959
	ret nz
	ld hl,l2c3a
	ld e,#1f
	call l27bb
	ld hl,l2c3a
	ld e,#18
	call l27fa
	ld de,#002b
	jp l2912
.l2a0c
	jp l2959
.l2a0f
	call l2959
	ret nz
	ld hl,l2c65
	ld e,#0c
	call l27fa
	ld hl,l2c65
	ld e,#30
	call l27bb
	ld de,#002e
	jp l2912
.l2a29
	call l2959
	ret nz
	ld hl,l2caa
	ld e,#0c
	call l27fa
	ld hl,l2cc7
	ld e,#18
	call l27bb
.l2a3f equ $ + 2
	ld de,#001d
	jp l2912
.l2a43
	call l2935
	ret nz
	ld hl,l2c93
	ld e,#0c
	call l27fa
	ld hl,l2c93
	ld e,#24
	call l27bb
	ld de,#0017
	jp l2912
.l2a5d
	call l2935
	ret nz
	ld hl,l2ce4
	ld e,#0c
	call l27fa
	ld hl,l2d44
	ld e,#18
	call l27bb
	ld de,#0060
	jp l2903
.l2a77
	ld a,#07
	ld (la73f),a
	ret
.l2a7e equ $ + 1
.l2a7d
	call l2935
	ret nz
	ld hl,(lbe00)
	ld e,#18
	call l27fa
	ld hl,(lbe06)
	ld e,#0c
	call l27bb
	ld de,#0050
	jp l2903
.l2a97
	call l2935
	ret nz
	ld hl,(lbe02)
	ld e,#24
	call l27fa
	ld hl,(lbe08)
	ld e,#0c
	call l27bb
	ld de,#0020
	jp l2903
.l2ab1
	call l2935
	ret nz
	ld hl,(lbe04)
	ld e,#24
	call l27fa
	ld hl,(lbe08)
	ld e,#0c
	call l27bb
	ld de,#003f
	jp l2903
.l2acb
	ld a,#09
	ld (la73f),a
	ret
.l2ad1
	call l291d
	ld a,(la7b9)
	ld (la7ba),a
	call l2814
	ld e,#08
	call l2858
	ld e,#06
	call l27e9
	ld e,#08
	call l28e7
	ret nz
	ld hl,(lbe06)
	ld e,#18
	call l27bb
	ld a,(la73f)
	cp #8b
	jr c,l2b04
	ld hl,(lbe00)
	ld e,#24
	call l27bb
.l2b04
	ld hl,(lbe06)
	ld e,#0c
	call l27fa
	ld de,#0010
	jp l2903
.l2b12
	call l291d
	ld e,#06
	call l2858
	ld e,#02
	call l27e9
	ld e,#08
	call l28e7
	ret nz
	ld e,#0c
	ld a,c
	cp #10
	jr c,l2b2e
	ld e,#1f
.l2b2e
	ld hl,(lbe02)
	call l27bb
	ld hl,(lbe02)
	ld e,#18
	call l27fa
	ld de,#004a
	jp l2903
.l2b42
	call l291d
	ld e,#06
	call l2858
	ld e,#02
	call l27e9
	ld e,#04
	call l28e7
	ret nz
	ld hl,(lbe04)
	ld e,#24
	call l27fa
	ld hl,(lbe08)
	ld e,#13
	call l27bb
	ld de,#008c
	jp l2903
.l2b6b
	ld a,#12
	ld (la73f),a
	ret
.l2b71
	call l2947
	ret nz
	ld hl,(lbe00)
	ld e,#18
	call l27bb
	ld hl,(lbe04)
	ld e,#18
	call l27fa
	ld de,#0020
	jp l2903
.l2b8b
	call l2814
	call l2947
	ret nz
	ld hl,(lbe02)
	ld e,#18
	call l27fa
	ld hl,(lbe06)
	ld e,#0c
	call l27bb
	ld de,#00a0
	jp l2903
.l2ba8
	ld a,#19
	ld (la73f),a
	ret
.l2bae
	call l291d
	call l2814
	call l2814
	ld e,#02
	call l2858
	ld e,#08
	call l27e9
	ld e,#04
	call l28e7
	ret nz
	ld a,c
	and #3f
	ld c,a
	ld hl,(lbe06)
	ld e,#18
	call l27fa
	ld hl,(lbe00)
	ld e,#18
	call l27bb
	ld de,#0080
	jp l2903
.l2be1
	call l296b
	ret nz
	ld a,c
	and #1f
	ld c,a
	ld hl,(lbe08)
	ld e,#18
	call l27fa
	ld a,c
	and #1f
	ld c,a
	ld hl,(lbe02)
	ld e,#24
	call l27bb
	ld de,#0040
	jp l2903
.l2c03
	call l296b
	ret nz
	ld a,c
	cp #20
	jr nc,l2c0e
	and #0f
.l2c0e
	and #1f
	ld c,a
	ld hl,(lbe0a)
	ld e,#24
	call l27fa
	ld hl,(lbe04)
	ld e,#24
	call l27bb
	ld de,#0040
	jp l2903
.l2c27
	ld a,#1d
	ld (la73f),a
	ret
.l2c2d
	db #12,#12,#12,#0f,#0f,#0f,#12,#0f
	db #12,#14,#00,#19,#16
.l2c3a
	db #0a,#00,#0a,#08,#00,#00,#0d,#00
	db #0d,#0a,#00,#00,#0a,#00
.l2c48
	db #0a,#08,#00,#00,#0d,#00,#0d,#0a
	db #00,#00,#0a,#08,#0a,#0f,#0d,#0a
	db #0a,#08,#0a,#0f,#0d,#0a,#0d,#0a
	db #0d,#0f,#0d,#0f,#11
.l2c65
	db #0f,#00,#0f,#14,#00,#00,#14,#14
	db #16,#17,#00,#00,#14,#00,#00,#15
	db #00,#00,#15,#17,#19,#17,#00,#00
	db #17,#19,#1b,#19,#00,#19,#17,#15
	db #17,#19,#00,#19,#17,#15,#17,#19
	db #17,#19,#1b,#19,#1b,#20
.l2c93
	db #16,#16,#19,#1b,#22,#00,#22,#21
	db #00,#21,#20,#00,#00,#1c,#1b,#19
	db #16,#00,#00,#10,#0f,#0d,#0a
.l2caa
	db #14,#15,#16,#17,#00,#00,#17,#17
	db #19,#1b,#00,#00,#17,#00,#00,#1a
	db #00,#00,#00,#00,#00,#00,#19,#00
	db #1a,#00,#1b,#00,#1c
.l2cc7
	db #0f,#0f
.l2cc9
	db #0f,#14,#00,#00,#14,#14,#16,#17
	db #00,#00,#14,#00,#00,#1a,#00,#00
	db #00,#00,#00,#00,#19,#00,#18,#00
	db #17,#00,#16
.l2ce4
	db #11,#11,#11,#11,#11
.l2ce9
	db #11,#11,#11,#11,#11,#11,#11,#11
	db #11,#11,#11,#11,#11,#11,#11,#11
	db #11,#11,#11,#11,#11,#11,#11,#11
	db #11,#14,#15,#16,#16,#16,#16,#16
	db #16,#16,#16,#16,#16,#16,#16,#16
	db #16,#16,#16,#11,#11,#11,#11,#11
	db #11,#11,#11,#11,#11,#11,#11,#11
	db #11,#11,#11,#18,#18,#18,#18,#18
	db #18,#18,#18,#16,#16,#16,#16,#16
	db #16,#16,#16,#11,#11,#11,#11,#11
	db #11,#11,#11,#18,#18,#18,#18,#18
	db #18,#18,#18
.l2d44
	db #11,#11,#15,#11
.l2d48
	db #18,#11,#1a,#18,#1b,#1b,#1a,#1a
	db #18,#1b,#1a,#18,#11,#11,#15,#11
	db #18,#11,#1a,#18,#1b,#1b,#1a,#1a
	db #18,#1b,#1a,#18,#16,#16,#1a,#16
	db #1d,#16,#1f,#1d,#20,#20,#1f,#1f
	db #1d,#20,#1f,#1d,#11,#11,#15,#11
	db #18,#11,#1a,#18,#1b,#1b,#1a,#1a
	db #18,#1b,#1a,#18,#18,#18,#1c,#18
	db #1f,#18,#21,#1f,#16,#16,#1a,#16
	db #1d,#20,#1f,#1d,#11,#11,#15,#11
	db #18,#11,#1a,#18,#00,#1f,#1f,#1f
	db #1f,#1f,#1f,#1f
.l2da4
	db #00,#39,#00,#00,#00,#00,#01,#00
	db #01,#31,#01,#01,#00,#01,#de,#00
	db #02,#31,#01,#02,#00,#01,#de,#00
	db #10,#31,#02,#01,#00,#01,#0f,#27
	db #14,#38,#08,#39,#00,#01,#0f,#27
	db #31,#30,#f1,#fe,#00,#01,#10,#00
	db #63,#31,#f1,#02,#00,#01,#10,#00
	db #fe,#31,#0a,#00,#01,#01,#0f,#27
	db #06,#31,#01,#10,#00,#01,#03,#00
	db #c3,#9c,#1c,#c3,#de,#1c,#c3,#ab
	db #1d,#c3,#1e,#1d,#18,#8e,#3a,#8e
	db #63,#8e,#89,#8e,#af,#8e,#cc,#8e
	db #01,#00,#6e,#94,#01,#00,#76,#84
	db #02,#00,#66,#a4,#01,#00,#9a,#a4
	db #02,#00,#a8,#94,#01,#00,#00,#00
	db #02,#00,#00,#00,#00,#03,#04,#00
	db #00,#ff,#01,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#00,#00,#02,#00
	db #00,#00,#ff,#01,#00,#66,#94,#02
	db #00,#76,#9c,#01,#00,#80,#7c,#02
	db #00,#8a,#8c,#01,#00,#9a,#94,#01
	db #00,#00,#00,#02,#00,#00,#00,#01
	db #00,#00,#00,#00,#03,#04,#00,#00
	db #ff,#01,#00,#68,#84,#02,#00,#70
	db #a0,#01,#00,#98,#a4,#02,#00,#90
	db #88,#00,#01,#00,#00,#00,#02,#00
	db #00,#00,#01,#00,#00,#00,#02,#00
	db #00,#00,#03,#04,#00,#00,#ff,#01
	db #00,#6e,#94,#01,#00,#76,#a0,#01
	db #00,#8a,#84,#01,#00,#9a,#9c,#01
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #00,#00,#00,#ff,#01,#00,#00,#00
	db #01,#00,#00,#00,#01,#00,#00,#00
	db #01,#00,#00,#00,#03,#04,#00,#00
	db #ff
.la737
	db #00,#c3,#45,#0f,#00,#00,#80
.la73e
	db #01
.la73f
	db #00
.la740
	db #7c,#00
.la742
	db #05,#01
.la744
	db #02
.la745
	db #00,#32,#2c,#8e,#d0,#af,#ff,#e1
	db #8e,#29,#8f,#11,#8f,#41,#8f,#59
	db #8f,#71,#8f,#ca,#a7,#ff,#3d,#00
	db #c8,#00,#40,#50,#60,#70,#00,#00
	db #00
.la766
	db #00,#00,#f9,#30,#bd,#00,#00
.la76d
	db #01
.la76e
	db #00
.la76f
	db #04,#04,#00,#00,#3e,#00,#3e,#18
	db #2e,#0c,#36,#d0,#30,#0c,#36
.la77e
	db #b3
.la785 equ $ + 6
.la784 equ $ + 5
.la782 equ $ + 3
.la780 equ $ + 1
	db #87,#00,#00,#00,#00,#00,#00
.la786
	db #20,#20,#20,#20,#20,#20,#20
.la78d
	db #00,#00
	db #00,#00,#00,#00,#01,#02,#00,#00
	db #00,#00,#00,#00,#00,#00,#03,#00
.la7a6 equ $ + 7
.la7a5 equ $ + 6
.la7a4 equ $ + 5
.la7a3 equ $ + 4
.la7a2 equ $ + 3
.la7a1 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.la7ae equ $ + 7
.la7ad equ $ + 6
.la7ac equ $ + 5
.la7ab equ $ + 4
.la7aa equ $ + 3
.la7a9 equ $ + 2
.la7a8 equ $ + 1
.la7a7
	db #00,#00,#00,#0f,#0f,#08,#00,#00
.la7af
	db #00
.la7b0
	db #00
.la7b1
	db #00
.la7b2
	db #00,#00
.la7b4
	db #00,#00
.la7b6
	db #00
.la7b7
	db #00
.la7b8
	db #00
.la7b9
	db #00
.la7ba
	db #00
.la7bb
	db #00,#00
.la7bd
	db #00,#00
.la7bf
	db #00
.la7c0
	db #38
.la7c1
	db #00
.la7c2
	db #00
.la7c3
	db #00
.la7c4
	db #00
.la7c5
	db #00
.la7c6
	db #00,#00
.la7c8
	db #00
.la7c9
	db #00,#00,#00,#40,#00,#60,#00,#00
	db #07,#00,#00,#00,#02,#00,#00,#00
	db #00,#00,#00,#50,#00,#40,#00,#00
	db #08,#00,#00,#90,#00,#90,#00,#00
	db #09,#00,#00,#50,#03,#00,#00,#00
	db #00,#00,#00,#50,#03,#00,#00,#00
	db #10,#30,#08,#02,#08,#ff
	
.lb720
	db #00,#00,#00,#10,#1a,#0f,#41,#0e
	db #74,#0d,#b3,#0c,#fd,#0b,#50,#0b
	db #ae,#0a,#14,#0a,#83,#09,#fb,#08
	db #7a,#08,#00,#08,#8d,#07,#21,#07
	db #ba,#06,#59,#06,#fe,#05,#a8,#05
	db #57,#05,#0a,#05,#c2,#04,#7d,#04
	db #3d,#04,#00,#04,#c7,#03,#90,#03
	db #5d,#03,#2d,#03,#ff,#02,#d4,#02
	db #ab,#02,#85,#02,#61,#02,#3f,#02
	db #1e,#02,#00,#02,#e3,#01,#c8,#01
	db #af,#01,#96,#01,#80,#01,#6a,#01
	db #56,#01,#43,#01,#30,#01,#1f,#01
	db #0f,#01,#00,#01,#f2,#00,#e4,#00
	db #d7,#00,#cb,#00,#c0,#00,#b5,#00
	db #ab,#00,#a1,#00,#98,#00,#90,#00
	db #88,#00,#80,#00,#79,#00,#71,#00
	db #6c,#00,#66,#00,#60,#00,#5b,#00
	db #55,#00,#51,#00,#4c,#00,#48,#00
	db #44,#00,#40,#00,#3c,#00,#39,#00
	db #36,#00,#33,#00,#30,#00,#2d,#00
	db #2b,#00,#28,#00,#26,#00,#24,#00
	db #22,#00,#20,#00,#1e,#00,#1c,#00
	db #1b,#00,#19,#00,#18,#00,#17,#00
	db #15,#00,#14,#00,#13,#00,#12,#00
	db #11,#00,#10,#00,#0c,#14,#14,#00
	db #0b,#1e,#03,#16,#1a,#06,#13,#04
	db #15,#17,#07,#0e,#1c,#0c,#ff,#ff
	db #03,#00,#00,#00,#00,#00,#81,#61
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#f0,#0f,#0f,#0c,#00
	db #0f,#0f,#0f,#3c,#0f,#0f,#0c,#00
	db #0f,#c0,#00,#00,#0f,#0f,#0f,#3c
	db #0f,#c0,#03,#3c,#0f,#0f,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #30,#c0,#00,#f0,#30,#f0,#f0,#f0
	db #30,#c0,#00,#f0,#30,#f0,#f0,#f0
	db #00,#f0,#f0,#f0,#30,#c0,#00,#f0
	db #30,#f0,#f0,#c0,#30,#f0,#f0,#f0
.lbe00
	dw lbe5a
.lbe02
	dw lbeea
.lbe04
	dw lbf0a
.lbe06
	dw lbe0a
.lbe08
	dw lbeaa
.lbe0a
	db #06,#12,#06,#12,#06,#12,#06,#12
	db #06,#12,#06,#12,#06,#12,#06,#12
	db #0b,#17,#0b,#17,#0b,#17,#0b,#17
	db #0b,#17,#0b,#17,#0b,#17,#0b,#17
	db #06,#12,#06,#12,#06,#12,#06,#12
	db #06,#12,#06,#12,#06,#12,#06,#12
	db #00,#19,#19,#19,#19,#19,#19,#17
	db #00,#00,#17,#1a,#00,#17,#1a,#00
	db #12,#12,#12,#12,#12,#12,#12,#12
	db #00,#19,#19,#19,#19,#19,#19,#19
.lbe5a
	db #0d,#0d,#0f,#0d,#10,#0d,#0f,#0d
	db #00,#0d,#0f,#0d,#10,#0d,#0f,#0d
	db #12,#12,#14,#12,#15,#12,#14,#12
	db #00,#12,#14,#12,#15,#12,#14,#12
	db #0d,#0d,#0f,#0d,#10,#0d,#0f,#0d
	db #00,#0d,#0f,#0d,#10,#0d,#0f,#0d
	db #00,#14,#14,#14,#14,#14,#14,#12
	db #00,#00,#17,#1a,#00,#17,#1a,#00
	db #0d,#0d,#0f,#0d,#10,#0d,#0f,#0d
	db #00,#14,#14,#14,#14,#14,#14,#14
.lbeaa
	db #06,#12,#06,#12,#06,#12,#06,#12
	db #06,#12,#06,#12,#06,#12,#06,#12
	db #0b,#17,#0b,#17,#0b,#17,#0b,#17
	db #0b,#17,#0b,#17,#0b,#17,#0b,#17
	db #06,#12,#06,#12,#06,#12,#06,#12
	db #06,#12,#06,#12,#06,#12,#06,#12
	db #08,#14,#08,#14,#08,#14,#08
.lbee1
	db #0d,#00,#00,#0b,#0a,#00,#08,#00
	db #00
.lbeea
	db #00,#0d,#0d,#0d,#0d,#0d,#0f,#0d
	db #10,#0f,#00,#0d,#00,#15,#14
.lbef9
	db #12,#00,#12,#12,#12,#12,#12,#14
	db #12,#15,#12,#14,#12,#15,#12,#14
	db #12
.lbf0a
	db #0d,#0d,#0f,#0d,#10,#0d,#0f,#0d
	db #00,#0d,#0f,#12,#15,#14,#12,#0f
	db #12,#12
.lbf1c
	db #14,#12,#15,#12,#14,#12,#00,#12
	db #14,#12,#00,#12,#15,#14,#12,#12
	db #0f,#0d,#10,#0d,#0f,#0d,#00,#0d
	db #0f,#12,#15,#14,#12,#0f,#14,#14
	db #14,#14,#14,#14,#14,#19,#00,#00
	db #17,#16,#00,#14,#00,#00,#00
;
; #01b3
;
; xor a
; ld (#a767),a
; ld hl,(#a745)
; or l
; jr z,l01c5
; ld a,h
; dec a
; ld (#a746),a
; call z,#25b5
; .l01c5
; ld hl,(#a740)
; ld a,h
; or l
; jr z,l01d0
; dec hl
; ld (#a740),hl
; .l01d0
; ld a,(#a76d)
; or a
; call nz,#2630	 ; play
; ld a,(#a763)
; cp #02
; jr nz,#01fe
; ld a,(#a766)
; dec a
; and #1f
; ld (#a766),a
; jr nz,#01fe
;
; #0968
;
; xor a		; init first music
; ld (#a737),a
; ld a,#01
; ld (#a73e),a	; init theme 
; ld (#a76d),a
; ld hl,#007d	; count for music end !
; ld (#a740),hl
; .l097a
; ld a,(#a740)	; wait end of music
; or a
; jr nz,l097a
;
.music_info
	db "Renegade (1987)(Imagine)(Fred Gray)",0
	db "",0

	read "music_end.asm"
