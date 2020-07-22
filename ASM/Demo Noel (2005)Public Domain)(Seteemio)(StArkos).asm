; Music of Demo Noel (2005)Public Domain)(Seteemio)(StArkos)
; Ripped by Megachur the 12/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DEMONOEL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #2100

	read "music_header.asm"

.l2100
	db #53,#4b,#31,#30,#00,#21,#01,#32
	db #00,#22,#21,#25,#21,#4f,#21,#52
	db #21,#1a,#21,#22,#21,#25,#21,#4f
	db #21,#04,#c0,#00,#00,#40,#0c,#07
	db #40,#00,#bf,#05,#7e,#96,#22,#d3
	db #22,#ec,#22,#ed,#22,#2b,#23,#45
	db #23,#82,#23,#b2,#23,#d4,#23,#1c
	db #24,#58,#24,#72,#24,#1c,#24,#58
	db #24,#72,#24,#82,#23,#b2,#23,#d4
	db #23,#ae,#24,#b2,#24,#b6,#24,#0c
	db #ba,#24,#5a,#21,#64,#21,#9b,#21
	db #62,#22,#61,#21,#64,#21,#ff,#37
	db #00,#00,#00,#00,#61,#21,#9b,#21
	db #00,#b7,#00,#4f,#ff,#ff,#4f,#01
	db #00,#4f,#ff,#ff,#4e,#01,#00,#4e
	db #ff,#ff,#4e,#01,#00,#4d,#ff,#ff
	db #4d,#01,#00,#4c,#ff,#ff,#4c,#01
	db #00,#4b,#ff,#ff,#4a,#01,#00,#49
	db #ff,#ff,#48,#01,#00,#45,#ff,#ff
	db #42,#01,#00,#61,#21,#62,#22,#00
	db #b7,#00,#44,#ff,#ff,#48,#ff,#ff
	db #4c,#ff,#ff,#4c,#ff,#ff,#4c,#01
	db #00,#4c,#01,#00,#4c,#01,#00,#4c
	db #01,#00,#4c,#ff,#ff,#4c,#ff,#ff
	db #4c,#ff,#ff,#4c,#ff,#ff,#4c,#01
	db #00,#4c,#01,#00,#4c,#01,#00,#4c
	db #01,#00,#4c,#ff,#ff,#4c,#ff,#ff
	db #4c,#ff,#ff,#4c,#ff,#ff,#4c,#01
	db #00,#4c,#01,#00,#4c,#01,#00,#4c
	db #01,#00,#4c,#ff,#ff,#4c,#ff,#ff
	db #4c,#ff,#ff,#4c,#ff,#ff,#4c,#01
	db #00,#4c,#01,#00,#4c,#01,#00,#4c
	db #01,#00,#4c,#ff,#ff,#4c,#ff,#ff
	db #4c,#ff,#ff,#4c,#ff,#ff,#4c,#01
	db #00,#4c,#01,#00,#4c,#01,#00,#4c
	db #01,#00,#4c,#ff,#ff,#4c,#ff,#ff
	db #4c,#ff,#ff,#4c,#ff,#ff,#4c,#01
	db #00,#4c,#01,#00,#4c,#01,#00,#4c
	db #01,#00,#4c,#ff,#ff,#4c,#ff,#ff
	db #4c,#ff,#ff,#4c,#ff,#ff,#4c,#01
	db #00,#4c,#01,#00,#4c,#01,#00,#4c
	db #01,#00,#4c,#ff,#ff,#4c,#ff,#ff
	db #4c,#ff,#ff,#4c,#ff,#ff,#4c,#01
	db #00,#4c,#01,#00,#4c,#01,#00,#4c
	db #01,#00,#61,#21,#96,#22,#00,#b7
	db #00,#0f,#0f,#0f,#0e,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0a,#09,#08,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#dc,#4c
	db #80,#01,#d2,#57,#d2,#57,#ce,#5b
	db #ce,#57,#ce,#55,#ce,#51,#d2,#51
	db #d2,#51,#d2,#5b,#d2,#5b,#ce,#5f
	db #ce,#5b,#ce,#57,#ce,#55,#d2,#4d
	db #d2,#4d,#d2,#5f,#d2,#5f,#ce,#61
	db #ce,#5f,#ce,#5b,#ce,#57,#d2,#51
	db #d2,#4d,#ce,#4d,#ce,#51,#d2,#5b
	db #d2,#55,#c2,#e4,#46,#80,#02,#e2
	db #49,#e2,#4b,#e2,#4d,#e2,#4f,#e2
	db #51,#d2,#4d,#d2,#4d,#d2,#49,#d2
	db #4d,#d2,#43,#c2,#c2,#56,#80,#01
	db #da,#4d,#d2,#57,#d2,#57,#ce,#5b
	db #ce,#57,#ce,#55,#ce,#51,#d2,#51
	db #d2,#51,#d2,#5b,#d2,#5b,#ce,#5f
	db #ce,#5b,#ce,#57,#ce,#55,#d2,#4d
	db #d2,#4d,#d2,#5f,#d2,#5f,#ce,#61
	db #ce,#5f,#ce,#5b,#ce,#57,#d2,#51
	db #d2,#4d,#ce,#4d,#ce,#51,#d2,#5b
	db #d2,#55,#c2,#3e,#80,#02,#e2,#47
	db #e2,#49,#e2,#4b,#e2,#4d,#e2,#4f
	db #e2,#51,#d2,#4d,#d2,#4d,#d2,#49
	db #d2,#4d,#d2,#43,#c2,#dc,#4c,#80
	db #03,#d2,#57,#d2,#57,#ce,#5b,#ce
	db #57,#ce,#55,#ce,#51,#d2,#51,#d2
	db #51,#d2,#5b,#d2,#5b,#ce,#5f,#ce
	db #5b,#ce,#57,#ce,#55,#d2,#4d,#d2
	db #4d,#d2,#5f,#d2,#5f,#ce,#61,#ce
	db #5f,#ce,#5b,#ce,#57,#d2,#51,#d2
	db #4d,#ce,#4d,#ce,#51,#d2,#5b,#d2
	db #55,#c2,#56,#80,#01,#e2,#57,#d2
	db #57,#d2,#57,#d2,#55,#d2,#55,#d2
	db #55,#d2,#57,#d2,#55,#d2,#51,#d2
	db #55,#d2,#4d,#d2,#4d,#d2,#5f,#d2
	db #5b,#d2,#57,#d2,#65,#d2,#4d,#d2
	db #4d,#ce,#4d,#ce,#51,#d2,#5b,#d2
	db #55,#c2,#3e,#80,#02,#e2,#47,#e2
	db #43,#e2,#47,#d2,#43,#d2,#3f,#d2
	db #3d,#e2,#47,#d2,#43,#d2,#3f,#d2
	db #4d,#d2,#4d,#d2,#4d,#d2,#49,#d2
	db #4d,#d2,#43,#c2,#56,#80,#03,#da
	db #4d,#d2,#57,#ce,#5b,#ce,#5f,#ce
	db #65,#ce,#5f,#ce,#57,#ce,#55,#ce
	db #5b,#ce,#65,#ce,#69,#ce,#65,#ce
	db #5b,#ce,#57,#ce,#6f,#ce,#55,#ce
	db #6d,#ce,#51,#ce,#69,#ce,#55,#ce
	db #5b,#ce,#65,#ce,#69,#ce,#6d,#d2
	db #65,#d2,#61,#d2,#5f,#d2,#6f,#d2
	db #57,#d2,#57,#ce,#57,#ce,#57,#d2
	db #61,#d2,#5b,#c2,#56,#80,#01,#e2
	db #57,#d2,#57,#ce,#5b,#ce,#57,#ce
	db #55,#ce,#51,#d2,#51,#d2,#51,#d2
	db #5b,#d2,#5b,#ce,#5f,#ce,#5b,#ce
	db #57,#ce,#55,#d2,#4d,#d2,#4d,#d2
	db #5f,#d2,#5f,#ce,#61,#ce,#5f,#ce
	db #5b,#ce,#57,#d2,#51,#d2,#4d,#ce
	db #4d,#ce,#51,#d2,#5b,#d2,#55,#c2
	db #3e,#80,#02,#e2,#47,#e2,#49,#e2
	db #4b,#e2,#4d,#e2,#4f,#e2,#51,#d2
	db #4d,#d2,#4d,#d2,#49,#d2,#4d,#d2
	db #43,#c2,#5e,#80,#03,#e2,#57,#d2
	db #57,#ce,#5b,#ce,#57,#ce,#55,#ce
	db #51,#d2,#51,#d2,#51,#d2,#5b,#d2
	db #5b,#ce,#5f,#ce,#5b,#ce,#57,#ce
	db #55,#d2,#4d,#d2,#4d,#d2,#5f,#d2
	db #5f,#ce,#61,#ce,#5f,#ce,#5b,#ce
	db #57,#d2,#51,#d2,#4d,#ce,#4d,#ce
	db #51,#d2,#5b,#d2,#55,#c2,#56,#80
	db #01,#c2,#3e,#80,#02,#c2,#5e,#80
	db #03,#c2,#ff,#00,#00,#00,#00,#00
.l24c0
	jp l2d30	; init
	jp l24cd	; play
	jp l2d14	; stop
	dw l24c0
.l24cc equ $ + 1
.l24cb
	db #00,#00
;
.play_music
.l24cd
;
	xor a
	ld (l24cb),a
	ld (l2cfb),a
.l24d5 equ $ + 1
	ld a,#00
.l24d7 equ $ + 1
	cp #00
	jr z,l24e1
	inc a
	ld (l24d5),a
	jp l2770
.l24e1
	xor a
	ld (l24d5),a
.l24e5
	or a
	jp nc,l25c7
	ld (l25ef),a
	ld (l265a),a
	ld (l26c5),a
	ld a,#b7
	ld (l24e5),a
.l24f8 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l252e
.l24fe equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l252b
	ld b,a
	and #1f
	bit 4,a
	jr z,l250f
	or #e0
.l250f
	ld (l25fc),a
	rl b
	rl b
	jr nc,l251d
	ld a,(hl)
	ld (l2667),a
	inc hl
.l251d
	rl b
	jr nc,l2526
	ld a,(hl)
	ld (l26d2),a
	inc hl
.l2526
	ld (l24fe),hl
	jr l2531
.l252b
	ld (l24fe),hl
.l252e
	ld (l24f8),a
.l2532 equ $ + 1
.l2531
	ld a,#00
	sub #01
	jr c,l253e
	ld (l2532),a
.l253b equ $ + 1
	ld a,#00
	jr l2559
.l253f equ $ + 1
.l253e
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l254c
	ld (l253f),hl
	jr l2559
.l254c
	ld (l253b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l253f),hl
	ld (l2532),a
	ld a,b
.l2559
	ld (l2730),a
.l255d equ $ + 1
	ld hl,#0000
	ld de,l25f5
	ldi
	ldi
	ld de,l2660
	ldi
	ldi
	ld de,l26cb
	ldi
	ldi
	ld (l255d),hl
.l2578 equ $ + 1
	ld a,#00
	or a
	jr nz,l258a
.l257d equ $ + 1
	ld a,#00
	sub #01
	jr c,l2598
	ld (l257d),a
.l2586 equ $ + 1
	ld hl,#0000
	jr l25d0
.l258b equ $ + 1
.l258a
	ld a,#00
	sub #01
	jr c,l2598
	ld (l258b),a
	ld hl,(l2599)
	jr l25bd
.l2599 equ $ + 1
.l2598
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l25b5
	ld (l257d),a
	xor a
	ld (l2578),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l2599),hl
	ex de,hl
	ld (l2586),hl
	jr l25d0
.l25b5
	ld (l258b),a
	ld a,#01
	ld (l2578),a
.l25bd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l2599),hl
	ex de,hl
	jr l25d0
.l25c8 equ $ + 1
.l25c7
	ld a,#00
	sub #01
	jr nc,l25eb
.l25ce equ $ + 1
	ld hl,#0000
.l25d0
	ld a,(hl)
	inc hl
	srl a
	jr c,l25e8
	srl a
	jr c,l25df
	ld (l24d7),a
	jr l25e7
.l25df
	ld (l24cb),a
.l25e3 equ $ + 1
	ld a,#01
	ld (l24cc),a
.l25e7
	xor a
.l25e8
	ld (l25ce),hl
.l25eb
	ld (l25c8),a
.l25ef equ $ + 1
	ld a,#00
	sub #01
	jr nc,l2656
.l25f5 equ $ + 1
	ld hl,#0000
.l25f8 equ $ + 1
	ld bc,#0100
.l25fc equ $ + 2
.l25fb equ $ + 1
	ld de,#0000
.l25ff equ $ + 2
	ld lx,#00
	call l286d
	ld a,lx
	ld (l25ff),a
	ld (l277a),hl
	exx
	ld (l25f5),hl
	ld a,c
	ld (l25f8),a
	ld (l2774),a
	xor a
	or hy
	jr nz,l2654
	ld (l2797),a
	ld d,a
	ld a,e
	ld (l25fb),a
	ld l,d
	ld h,l
	ld (l2777),hl
.l2629 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l27a8
	ldi
	ldi
	ld de,l27a0
	ldi
	ldi
	ld de,l2799
	ldi
	ld de,l27aa
	ldi
	ld a,(hl)
	inc hl
	ld (l2789),hl
	ld hl,l2cfb
	or (hl)
	ld (hl),a
.l2654
	ld a,ly
.l2656
	ld (l25ef),a
.l265a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l26c1
.l2660 equ $ + 1
	ld hl,#0000
.l2663 equ $ + 1
	ld bc,#0200
.l2667 equ $ + 2
.l2666 equ $ + 1
	ld de,#0000
.l266a equ $ + 2
	ld lx,#00
	call l286d
	ld a,lx
	ld (l266a),a
	ld (l27cb),hl
	exx
	ld (l2660),hl
	ld a,c
	ld (l2663),a
	ld (l27c5),a
	xor a
	or hy
	jr nz,l26bf
	ld (l27e8),a
	ld d,a
	ld a,e
	ld (l2666),a
	ld l,d
	ld h,l
	ld (l27c8),hl
.l2694 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l27f9
	ldi
	ldi
	ld de,l27f1
	ldi
	ldi
	ld de,l27ea
	ldi
	ld de,l27fb
	ldi
	ld a,(hl)
	inc hl
	ld (l27da),hl
	ld hl,l2cfb
	or (hl)
	ld (hl),a
.l26bf
	ld a,ly
.l26c1
	ld (l265a),a
.l26c5 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l272c
.l26cb equ $ + 1
	ld hl,#0000
.l26ce equ $ + 1
	ld bc,#0300
.l26d2 equ $ + 2
.l26d1 equ $ + 1
	ld de,#0000
.l26d5 equ $ + 2
	ld lx,#00
	call l286d
	ld a,lx
	ld (l26d5),a
	ld (l281c),hl
	exx
	ld (l26cb),hl
	ld a,c
	ld (l26ce),a
	ld (l2816),a
	xor a
	or hy
	jr nz,l272a
	ld (l2839),a
	ld d,a
	ld a,e
	ld (l26d1),a
	ld l,d
	ld h,l
	ld (l2819),hl
.l26ff equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l284a
	ldi
	ldi
	ld de,l2842
	ldi
	ldi
	ld de,l283b
	ldi
	ld de,l284c
	ldi
	ld a,(hl)
	inc hl
	ld (l282b),hl
	ld hl,l2cfb
	or (hl)
	ld (hl),a
.l272a
	ld a,ly
.l272c
	ld (l26c5),a
.l2730 equ $ + 1
	ld a,#00
	sub #01
	jr c,l273a
	ld (l2730),a
	jr l2770
.l273a
	ld a,#37
	ld (l24e5),a
	ld hl,(l255d)
.l2743 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l2770
	ld (l24f8),a
	ld (l2532),a
	ld (l25c8),a
.l2754 equ $ + 1
	ld hl,#0000
	ld (l24fe),hl
.l275a equ $ + 1
	ld hl,#0000
	ld (l253f),hl
.l2760 equ $ + 1
	ld hl,#0000
	ld (l255d),hl
.l2766 equ $ + 1
	ld hl,#0000
	ld (l2599),hl
.l276c equ $ + 1
	ld a,#00
	ld (l2578),a
.l2770
	ld hl,l2cfb
.l2774 equ $ + 1
	ld d,#00
	exx
.l2777 equ $ + 1
	ld hl,#0000
.l277a equ $ + 1
	ld de,#0000
	add hl,de
	ld (l2777),hl
	ld (l29a8),hl
	ld a,(l25ff)
	ld lx,a
.l2789 equ $ + 1
	ld hl,#0000
	ld iy,l2b96
	ld a,(l2797)
	call l2902
	ex de,hl
.l2797 equ $ + 1
	ld a,#00
.l2799 equ $ + 1
	cp #00
	jr z,l279f
	inc a
	jr l27bc
.l27a0 equ $ + 1
.l279f
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l27b8
.l27a8 equ $ + 1
	ld de,#0000
.l27aa
	or a
	jr c,l27b8
.l27ae equ $ + 1
	ld hl,#0000
	ld (l27a0),hl
	dec a
	ld (l2799),a
	inc a
.l27b8
	ld (l2789),de
.l27bc
	ld (l2797),a
	ld a,hx
	ld (l2869),a
.l27c5 equ $ + 1
	ld d,#00
	exx
.l27c8 equ $ + 1
	ld hl,#0000
.l27cb equ $ + 1
	ld de,#0000
	add hl,de
	ld (l27c8),hl
	ld (l29a8),hl
	ld a,(l266a)
	ld lx,a
.l27da equ $ + 1
	ld hl,#0000
	ld iy,l2be7
	ld a,(l27e8)
	call l2902
	ex de,hl
.l27e8 equ $ + 1
	ld a,#00
.l27ea equ $ + 1
	cp #00
	jr z,l27f0
	inc a
	jr l280d
.l27f1 equ $ + 1
.l27f0
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l2809
.l27f9 equ $ + 1
	ld de,#0000
.l27fb
	or a
	jr c,l2809
.l27ff equ $ + 1
	ld hl,#0000
	ld (l27f1),hl
	dec a
	ld (l27ea),a
	inc a
.l2809
	ld (l27da),de
.l280d
	ld (l27e8),a
	ld a,hx
	ld (l2866),a
.l2816 equ $ + 1
	ld d,#00
	exx
.l2819 equ $ + 1
	ld hl,#0000
.l281c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l2819),hl
	ld (l29a8),hl
	ld a,(l26d5)
	ld lx,a
.l282b equ $ + 1
	ld hl,#0000
	ld iy,l2c38
	ld a,(l2839)
	call l2902
	ex de,hl
.l2839 equ $ + 1
	ld a,#00
.l283b equ $ + 1
	cp #00
	jr z,l2841
	inc a
	jr l285e
.l2842 equ $ + 1
.l2841
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l285a
.l284a equ $ + 1
	ld de,#0000
.l284c
	or a
	jr c,l285a
.l2850 equ $ + 1
	ld hl,#0000
	ld (l2842),hl
	dec a
	ld (l283b),a
	inc a
.l285a
	ld (l282b),de
.l285e
	ld (l2839),a
	ld a,hx
	sla a
.l2866 equ $ + 1
	or #00
	rla
.l2869 equ $ + 1
	or #00
	jp l2b8b
.l286d
	ld a,(hl)
	inc hl
	srl a
	jr c,l28a6
	cp #60
	jr nc,l28ae
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l2886
	and #0f
	ld c,a
.l2886
	rl b
	jr nc,l288c
	ld e,(hl)
	inc hl
.l288c
	rl b
	jr nc,l289e
.l2890
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l289a
	dec h
.l289a
	ld ly,#00
	ret
.l289e
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l28a6
	ld hy,#00
	add d
	ld lx,a
	jr l289e
.l28ae
	ld hy,#01
	sub #60
	jr z,l28cf
	dec a
	jr z,l28e6
	dec a
	jr z,l28d8
	dec a
	jr z,l2890
	dec a
	jr z,l28e2
	dec a
	jr z,l28f7
	dec a
	jr z,l28ee
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l28cf
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l28d8
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l28e2
	ld c,(hl)
	inc hl
	jr l2890
.l28e6
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l28ee
	ld a,(hl)
	inc hl
	ld (l24cb),a
	ld a,b
	ld (l24cc),a
.l28f7
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l2902
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l29b8
	bit 4,e
	jr z,l296a
	ld a,(hl)
	bit 6,a
	jr z,l2937
	ld d,#08
	inc hl
	and #1f
	jr z,l291e
	ld (l2c89),a
	res 3,d
.l291e
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l2927
	xor a
.l2927
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l2937
	ld (l2c89),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l2953
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l294c
	xor a
.l294c
	ld (iy+#36),a
	ld hx,d
	jr l297d
.l2953
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l295c
	xor a
.l295c
	ld (iy+#36),a
.l295f
	ld hx,d
	ret
.l2962
	ld (iy+#36),#00
	ld d,#09
	jr l295f
.l296a
	ld d,#08
	ld a,e
	and #0f
	jr z,l2962
	exx
	sub d
	exx
	jr nc,l2977
	xor a
.l2977
	ld (iy+#36),a
	ld hx,#08
.l297d
	bit 5,e
	jr z,l2985
	ld a,(hl)
	inc hl
	jr l2986
.l2985
	xor a
.l2986
	bit 6,e
	jr z,l2990
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l2993
.l2990
	ld de,#0000
.l2993
	add lx
	cp #60
	jr c,l299b
	ld a,#60
.l299b
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l2acb
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l29a8 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l29b8
	or a
	jr nz,l29c2
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l29c2
	ld a,e
	or #08
	and #09
	ld d,a
	ld (iy+#36),#10
	ld b,(hl)
	inc hl
	ld a,b
	and #03
	add a
	add #08
	ld (l2cf4),a
	bit 3,e
	jr z,l29e4
	ld a,(hl)
	inc hl
	ld (l2c89),a
	res 3,d
	jr l29e4
.l29e4
	ld hx,d
	xor a
	bit 7,b
	jr z,l29f6
	bit 6,b
	jr z,l29f1
	ld a,(hl)
	inc hl
.l29f1
	ld (l2aa5),a
	ld a,#01
.l29f6
	ld (l2a3e),a
	ld a,b
	rra
	and #0e
	ld (l2a4f),a
	bit 4,e
	jp nz,l2ab0
	bit 1,e
	jr z,l2a0d
	ld a,(hl)
	inc hl
	jr l2a0e
.l2a0d
	xor a
.l2a0e
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l2a1b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l2a1e
.l2a1b
	ld de,#0000
.l2a1e
	add lx
	cp #60
	jr c,l2a26
	ld a,#60
.l2a26
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l2acb
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l29a8)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l2a3e equ $ + 1
	ld a,#00
	or a
	jr nz,l2a4e
	ex af,af'
	bit 5,a
	jr nz,l2ab9
.l2a47
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l2a4f equ $ + 1
.l2a4e
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l2a59),a
	ld a,c
.l2a59 equ $ + 1
	jr l2a5a
.l2a5a
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	ld c,a
	jr nc,l2a73
	inc bc
.l2a73
	ld a,c
	ld (l2cbe),a
	ld a,b
	ld (l2cd9),a
	ld a,(l2a3e)
	or a
	jr z,l2aae
	ld a,(l2a4f)
	ld e,a
	srl a
	add e
	ld (l2a8d),a
	ld a,b
.l2a8d equ $ + 1
	jr l2a8e
.l2a8e
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	ld b,a
.l2aa5 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l2aae
	pop hl
	ret
.l2ab0
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l2a47
.l2ab9
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l2cbe),a
	inc hl
	ld a,(hl)
	ld (l2cd9),a
	inc hl
	ret
.l2acb
	dw #0eee,#0e18,#0d4d,#0c8e
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
.l2b8b
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l2b96 equ $ + 1
	ld a,#00
.l2b98 equ $ + 1
	cp #00
	jr z,l2bb0
	ld d,#00
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l2b98),a
	exx
.l2bb1 equ $ + 1
.l2bb0
	ld a,#00
.l2bb3 equ $ + 1
	cp #00
	jr z,l2bcb
	ld d,#01
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l2bb3),a
	exx
.l2bcc equ $ + 1
.l2bcb
	ld a,#00
.l2bce equ $ + 1
	cp #00
	jr z,l2be6
	ld d,#08
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l2bce),a
	exx
.l2be7 equ $ + 1
.l2be6
	ld a,#00
.l2be9 equ $ + 1
	cp #00
	jr z,l2c01
	ld d,#02
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l2be9),a
	exx
.l2c02 equ $ + 1
.l2c01
	ld a,#00
.l2c04 equ $ + 1
	cp #00
	jr z,l2c1c
	ld d,#03
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l2c04),a
	exx
.l2c1d equ $ + 1
.l2c1c
	ld a,#00
.l2c1f equ $ + 1
	cp #00
	jr z,l2c37
	ld d,#09
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l2c1f),a
	exx
.l2c38 equ $ + 1
.l2c37
	ld a,#00
.l2c3a equ $ + 1
	cp #00
	jr z,l2c52
	ld d,#04
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l2c3a),a
	exx
.l2c53 equ $ + 1
.l2c52
	ld a,#00
.l2c55 equ $ + 1
	cp #00
	jr z,l2c6d
	ld d,#05
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l2c55),a
	exx
.l2c6e equ $ + 1
.l2c6d
	ld a,#00
.l2c70 equ $ + 1
	cp #00
	jr z,l2c88
	ld d,#0a
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l2c70),a
	exx
.l2c89 equ $ + 1
.l2c88
	ld a,#00
.l2c8b equ $ + 1
	cp #00
	jr z,l2ca3
	ld d,#06
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l2c8b),a
	exx
.l2ca3
	ld a,h
.l2ca5 equ $ + 1
	cp #c0
	jr z,l2cbd
	ld d,#07
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l2ca5),a
	exx
.l2cbe equ $ + 1
.l2cbd
	ld a,#00
.l2cc0 equ $ + 1
	cp #00
	jr z,l2cd8
	ld d,#0b
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l2cc0),a
	exx
.l2cd9 equ $ + 1
.l2cd8
	ld a,#00
.l2cdb equ $ + 1
	cp #00
	jr z,l2cf3
	ld d,#0c
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l2cdb),a
	exx
.l2cf4 equ $ + 1
.l2cf3
	ld a,#00
.l2cf6 equ $ + 1
	cp #ff
	jr nz,l2cff
	ld h,a
.l2cfb equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l2cff
	ld d,#0d
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l2cf6),a
	ret
;
.stop_music
.l2d14
;
	xor a
	ld (l2bcc),a
	ld (l2c1d),a
	ld (l2c6e),a
	dec a
	ld (l2bce),a
	ld (l2c1f),a
	ld (l2c70),a
	ld (l2ca5),a
	ld a,#3f
	jp l2b8b
;
.real_init_music
.l2d30
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l25e3),a
	ld de,#0003
	add hl,de
	ld de,l253f
	ldi
	ldi
	ld de,l255d
	ldi
	ldi
	ld de,l2599
	ldi
	ldi
	ld de,l2629
	ldi
	ldi
	ld de,l2754
	ldi
	ldi
	ld de,l275a
	ldi
	ldi
	ld de,l2760
	ldi
	ldi
	ld de,l2766
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l24d7),a
	ld (l24d5),a
	ld (l24fe),hl
	ld hl,(l2599)
	ld (l2743),hl
	ld a,(hl)
	and #01
	ld (l2578),a
	ld hl,(l2766)
	ld a,(hl)
	and #01
	ld (l276c),a
	ld hl,(l2629)
	ld (l2694),hl
	ld (l26ff),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l2789),hl
	ld (l27da),hl
	ld (l282b),hl
	ld (l27a8),hl
	ld (l27f9),hl
	ld (l284a),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l27ae),de
	ld (l27ff),de
	ld (l2850),de
	ld (l27a0),de
	ld (l27f1),de
	ld (l2842),de
	ld a,#37
	ld (l24e5),a
	ld hl,l2dec
.l2ddc
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l2de3
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l2de3
	jr l2ddc
.l2dec
	jr l2dee
.l2dee
	dw l2b96,l2bb1,l2be7,l2c02
	dw l2c38,l2c53,l2c89,l2bcc
	dw l2c1d,l2c6e,l2cbe,l2cd9
	dw l2cf4,l24f8,l2532,l257d
	dw l258b,l25c8,l2797,l27e8
	dw l2839,l25f8,l2663,l26ce
	dw #ff11,l2b98,l2bb3,l2be9
	dw l2c04,l2c3a,l2c55,l2c8b
	dw l2ca5,l2bce,l2c1f,l2c70
	dw l2cc0,l2cdb,l2cf6,l2799
	dw l27ea,l283b,#b703,l27aa
	dw l27fb,l284c,#0000,#0000
	dw #0000
;
.init_music		; added by Megachur
;
	ld de,l2100
	jp real_init_music
;
.music_info
	db "Demo Noel (2005)Public Domain)(Seteemio)",0
	db "StArkos",0

	read "music_end.asm"
