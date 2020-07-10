; Music of Leviathan (1987)(English Software)(David Whittaker)()
; Ripped by Megachur the 11/03/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LEVIATHA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #22de
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

	jp l23a8	; play
	jp l22f0	; init
	jp l249e	; stop
	jp l287e
	jp l28cc
	jp l28d8
;
.init_music
.l22f0
;
	ex af,af'
	xor a
	ld (l287a),a
	ld (l287b),a
	ld (l287c),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l2a5f
	add hl,bc
	ld ix,l2347
	ld c,#20
	xor a
	ld (l26a4),a
	ld a,#03
.l2313
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
	jr nz,l2313
	inc a
	ld (l23a7),a
	ld (l287a),a
	ret
.l2347
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l2367
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l2387
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.l23a7
	db #00
;
.play_music
.l23a8
;
	ld hl,l2879
	dec (hl)
	jr nz,l23b1
	ld (hl),#00
	ret
.l23b1
	call l28e5
	ld a,(l287a)
	and a
	jp z,l240d
.l23bc equ $ + 1
	ld a,#00
	ld (l2409),a
	ld hl,l23a7
	dec (hl)
	jr nz,l23e1
	ld b,(hl)
	ld ix,l2347
	call l25b1
	ld ix,l2367
	call l25b1
	ld ix,l2387
	call l25b1
	ld hl,l23a7
.l23e0 equ $ + 1
	ld (hl),#01
.l23e1
	ld ix,l2347
	call l2658
	ld (l2767),hl
	ld (l276f),a
	ld ix,l2367
	call l2658
	ld (l2769),hl
	ld (l2770),a
	ld ix,l2387
	call l2658
	ld (l276b),hl
	ld (l2771),a
.l2409 equ $ + 1
	ld a,#00
	ld (l276d),a
.l240d
	ld a,(l287c)
	and a
	jr z,l2438
	ld hl,(l2781)
	ld a,(l287d)
	xor #01
	ld (l287d),a
	jr z,l2424
	srl h
	rr l
.l2424
	ld (l2769),hl
	ld a,(l276e)
	or #12
	ld hl,l2783
	and (hl)
	ld (l276e),a
	ld a,#0d
	ld (l2770),a
.l2438
	ld a,(l287b)
	and a
	jr z,l246e
	ld hl,(l2774)
	ld (l2767),hl
	ld hl,(l2778)
	ld (l276b),hl
	ld a,(l277a)
	ld (l276d),a
	ld a,(l276e)
	or #2d
	ld hl,l277b
	and (hl)
	ld (l276e),a
.l245e equ $ + 2
	ld a,(l277c)
	ld (l276f),a
	ld a,(l277e)
	ld (l2771),a
	ld a,(l2780)
	ld (l2773),a
.l246e
	ld hl,l287b
	ld a,(l287a)
	or (hl)
	inc hl
	or (hl)
	ret z
	ld hl,l2773
	ld d,#0c
.l247d
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
	jp p,l247d
	ret
;
.stop_music
.l249e
;
	xor a
	ld (l287a),a
	ld (l287b),a
	ld (l287c),a
.l24a8
	ld de,#0d00
.l24ab
	call l24c3
	dec d
	jp p,l24ab
	ld de,#073f
	call l24c3
	xor a
	ld (l276f),a
	ld (l2770),a
	ld (l2771),a
	ret
.l24c3
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
	db #ca,#b2,#b6,#bb,#79,#a8,#a3,#10
	db #92,#8a,#4f,#39,#61,#b7,#01
	xor a
	ld (l287a),a
	pop hl
	jp l24a8
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
	jr nz,l2517
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l2517
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l25bf
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,l274c
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l25bf
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l274c
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l25bf
	ld hl,l274c
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l25bf
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l25bf
	ld a,(de)
	inc de
	ld (l26a4),a
	jr l25bf
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l25bf
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l25bf
	ld (ix+#1d),b
	jr l25bf
	ld (ix+#1d),#40
	jr l25bf
	ld (ix+#1d),#c0
	jr l25bf
	set 1,(ix+#00)
	jr l25bf
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l25eb
.l25b1
	dec (ix+#10)
	jr nz,l25f8
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l25bf
	ld a,(de)
	inc de
	and a
	jp m,l2609
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l25d1
	ld (l23bc),a
.l25d1
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l25eb
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l25f8
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l2605
	inc (ix+#12)
	ret
.l2605
	dec (ix+#12)
	ret
.l2609
	cp #b8
	jr c,l2650
	add #20
	jr c,l2635
	add #10
	jr c,l263b
	add #10
	jr nc,l262e
	ld c,a
	ld hl,l282c
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr l25bf
.l262e
	add #09
	ld (l23e0),a
	jr l25bf
.l2635
	inc a
	ld (ix+#11),a
	jr l25bf
.l263b
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
	jp l25bf
.l2650
	ld hl,l245e
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l2658
	ld c,(ix+#00)
	bit 5,c
	jr z,l26a3
	ld a,(ix+#16)
	sub #10
	jr nc,l268b
	bit 6,c
	jr z,l2690
	add (ix+#13)
	jr nc,l2670
	sbc a
.l2670
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l2686
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l26a3
.l2686
	ld (ix+#18),a
	jr l26a3
.l268b
	ld (ix+#16),a
	jr l26a3
.l2690
	cpl
	sub #0f
	add (ix+#13)
	jr c,l2699
	sub a
.l2699
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l26a3
	res 5,c
.l26a4 equ $ + 1
.l26a3
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,l26bb
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l26bb
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l276c
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l271d
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l26e6
	bit 0,c
	jr nz,l2704
.l26e6
	bit 5,l
	jr nz,l26f6
	sub (ix+#1b)
	jr nc,l2701
	set 5,(ix+#1d)
	sub a
	jr l2701
.l26f6
	add (ix+#1b)
	cp b
	jr c,l2701
	res 5,(ix+#1d)
	ld a,b
.l2701
	ld (ix+#1c),a
.l2704
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l270f
	dec d
.l270f
	add #a0
	jr c,l271b
.l2713
	sla e
	rl d
	add #18
	jr nc,l2713
.l271b
	add hl,de
	ex de,hl
.l271d
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l2748
	ld b,(ix+#0e)
	djnz l2745
	ld c,(ix+#0d)
	bit 7,c
	jr z,l2734
	dec b
.l2734
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l2748
.l2745
	ld (ix+#0e),b
.l2748
	cpl
	and #03
.l274c equ $ + 1
	ld a,#38
	jr nz,l2759
	ld a,(l23bc)
	xor #08
	ld (l2409),a
	ld a,#07
.l2759
	ld hl,l276e
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l276e equ $ + 7
.l276d equ $ + 6
.l276c equ $ + 5
.l276b equ $ + 4
.l2769 equ $ + 2
.l2767
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l2775 equ $ + 6
.l2774 equ $ + 5
.l2773 equ $ + 4
.l2771 equ $ + 2
.l2770 equ $ + 1
.l276f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l277e equ $ + 7
.l277c equ $ + 5
.l277b equ $ + 4
.l277a equ $ + 3
.l2778 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
.l2783 equ $ + 4
.l2781 equ $ + 2
.l2780 equ $ + 1
	db #00,#ff,#00,#00,#fd
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
	dw #0012,#0011,#0010
	db #0f
.l282c equ $ + 1
	db #00,#10,#11,#14,#17,#1b,#1f,#22
	db #25,#28,#2b,#2d,#2f,#31,#33,#35
	db #39,#00,#87,#00,#03,#07,#87,#00
	db #04,#07,#87,#00,#03,#07,#0c,#87
	db #00,#04,#07,#0c,#87,#07,#0c,#0f
	db #87,#07,#0c,#10,#87,#03,#07,#0c
	db #87,#04,#07,#0c,#87,#00,#0c,#87
	db #00,#04,#87,#00,#03,#87,#00,#05
	db #87,#00,#07,#87,#00,#00,#0c,#0c
.l287a equ $ + 7
.music_end equ $ + 7
.l2879 equ $ + 6
	db #87,#00,#03,#07,#0a,#87,#00,#00
.l287d equ $ + 2
.l287c equ $ + 1
.l287b
	db #00,#00,#00
.l287e
	ld hl,l287b
	ld (hl),#00
	ld hl,l297d
	add a
	add l
	ld l,a
	jr nc,l288c
	inc h
.l288c
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l2a2d
.l2894
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l2894
	ld a,(l2a2e)
	ld (l2a3e),a
	ld hl,(l2a2f)
	ld (l2774),hl
	ld de,(l2a31)
	ld (l2778),de
	ld a,l
	ld (l277a),a
	ld a,(l2a34)
	ld (l277b),a
	ld a,(l2a33)
	ld (l2780),a
	ld a,(l2a3d)
	ld e,a
	ld d,#0d
	call l24c3
	ld hl,l287b
	inc (hl)
	ret
.l28cc
	ld a,#01
	ld (l287c),a
	ld hl,#0f00
	ld (l2781),hl
	ret
.l28d8
	xor a
	ld (l287c),a
	jp l24a8
.l28df
	ld (l287b),a
	jp l24a8
.l28e5
	call l2a40
	ld a,(l287b)
	and a
	ret z
	ld a,(l2a2d)
	and a
	jr z,l28df
	dec a
	ld (l2a2d),a
	ld a,(l2a3e)
	and a
	jr nz,l292c
	ld a,(l2a3b)
	and a
	ret z
	dec a
	ld (l2a3b),a
	ld a,(l2a2e)
	ld (l2a3e),a
	ld a,(l2a3c)
	and a
	jr z,l2915
	ld a,(l2a5b)
.l2915
	ld b,a
	ld a,(l2a2f)
	add b
	ld (l2774),a
	ld a,(l2a30)
	add b
	and #0f
	ld (l2775),a
	ld hl,(l2a31)
	ld (l2778),hl
.l292c
	ld hl,l2a3e
	dec (hl)
	ld a,(l2a39)
	and a
	jr z,l2953
	jp p,l2946
	ld hl,(l2774)
	ld de,(l2a35)
	add hl,de
	ld (l2774),hl
	jr l2953
.l2946
	ld hl,(l2774)
	ld de,(l2a35)
	and a
	sbc hl,de
	ld (l2774),hl
.l2953
	ld a,(l2a3a)
	and a
	jr z,l2976
	jp p,l2969
	ld hl,(l2778)
	ld de,(l2a37)
	add hl,de
	ld (l2778),hl
	jr l2976
.l2969
	ld hl,(l2778)
	ld de,(l2a37)
	and a
	sbc hl,de
	ld (l2778),hl
.l2976
	ld a,(l2774)
	ld (l277a),a
	ret
.l297d
	dw l29a5,l29a5,l29a5,l29a5
	dw l29b6,l29a5,l29a5,l29a5
	dw l29a5,l29c7,l29a5,l29d8
	dw l29e9,l29a5,l29fa,l29a5
	dw l2a0b,l29a5,l29a5,l2a1c
.l29a5
	db #78,#0d,#80,#00,#10,#02,#3c,#fa
	db #06,#00,#14,#00,#01,#01,#ff,#00
.l29b6 equ $ + 1
	db #00,#50,#63,#00,#00,#01,#00,#50
	db #d2,#01,#00,#01,#00,#ff,#ff,#00
.l29c7 equ $ + 2
	db #00,#00,#64,#0a,#08,#00,#0b,#00
	db #1e,#fa,#08,#00,#08,#00,#ff,#ff
.l29d8 equ $ + 3
	db #0a,#00,#00,#50,#1a,#c0,#00,#a0
	db #00,#3c,#fa,#04,#00,#05,#00,#01
.l29e9 equ $ + 4
	db #01,#03,#00,#00,#19,#06,#0a,#01
	db #0f,#01,#1e,#f2,#17,#00,#14,#00
.l29fa equ $ + 5
	db #ff,#ff,#05,#01,#00,#8c,#14,#80
	db #00,#47,#00,#3c,#fa,#01,#00,#01
.l2a0b equ $ + 6
	db #00,#01,#01,#ff,#00,#00,#19,#1a
	db #04,#02,#20,#02,#0a,#d6,#20,#00
.l2a1c equ $ + 7
	db #20,#00,#01,#01,#00,#00,#0e,#64
	db #06,#80,#00,#85,#00,#50,#d2,#23
	db #00,#28,#00,#ff,#ff,#14,#00,#00
.l2a34 equ $ + 7
.l2a33 equ $ + 6
.l2a31 equ $ + 4
.l2a30 equ $ + 3
.l2a2f equ $ + 2
.l2a2e equ $ + 1
.l2a2d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2a3c equ $ + 7
.l2a3b equ $ + 6
.l2a3a equ $ + 5
.l2a39 equ $ + 4
.l2a37 equ $ + 2
.l2a35
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2a3e equ $ + 1
.l2a3d
	db #00,#00,#00
.l2a40
	ld a,(l2a5b)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l2a5e
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l2a5e equ $ + 3
.l2a5b
	db #ff,#80,#1b,#34
.l2a5f
	dw l2a6b,l2ad5,l2b3f,l2dfa
	dw l2dfe,l2e02
.l2a6b
	dw l2b8b,l2b8b,l2b8b,l2b8b
	dw l2ba8,l2ba8,l2bc4,l2bc4
	dw l2bc4,l2bc4,l2bfb,l2c19
	dw l2c33,l2c51,l2bfb,l2c19
	dw l2c51,l2c51,l2bfb,l2c19
	dw l2c33,l2c51,l2bfb,l2c19
	dw l2c51,l2c51,l2bfb,l2c19
	dw l2c33,l2c51,l2bfb,l2c19
	dw l2c51,l2c51,l2bfb,l2c19
	dw l2c33,l2c51,l2bfb,l2c19
	dw l2c51,l2c51,l2bfb,l2c19
	dw l2c33,l2c51,l2bfb,l2c19
	dw l2c51,l2c51,l2c6b,l2c6b
	dw #0000
.l2ad5
	dw l2c80,l2c80,l2c80,l2c80
	dw l2c80,l2c80,l2c90,l2c90
	dw l2cbb,l2cbb,l2ce2,l2cea
	dw l2cf2,l2cfa,l2ce2,l2cea
	dw l2cfa,l2cfa,l2ce2,l2cea
	dw l2cf2,l2cfa,l2ce2,l2cea
	dw l2cfa,l2cfa,l2ce2,l2cea
	dw l2cf2,l2cfa,l2ce2,l2cea
	dw l2cfa,l2cfa,l2ce2,l2cea
	dw l2cf2,l2cfa,l2ce2,l2cea
	dw l2cfa,l2cfa,l2ce2,l2cea
	dw l2cf2,l2cfa,l2ce2,l2cea
	dw l2cfa,l2cfa,l2d02,l2d02
	dw #0000
.l2b3f
	dw l2d17,l2d17,l2d17,l2d17
	dw l2d27,l2d27,l2d3a,l2d4c
	dw l2d3a,l2d4c,l2d62,l2d72
	dw l2d82,l2da9,l2d62,l2d72
	dw l2d8f,l2d62,l2d72,l2d82
	dw l2da9,l2d62,l2d72,l2d9c
	dw l2d62,l2d72,l2d82,l2da9
	dw l2d62,l2d72,l2d82,l2dc6
	dw l2dd3,l2db9,l2dd3,l2de5
	dw l2de5,#0000
.l2b8b
	db #bc,#88,#01,#01,#82,#c0,#8a,#e1
	db #df,#00,#11,#06,#18,#18,#18,#18
	db #18,#18,#18,#18,#18,#18,#18,#18
.l2ba8 equ $ + 5
	db #18,#18,#18,#18,#87,#8a,#e1,#18
	db #e0,#18,#18,#8b,#e1,#8d,#33,#8a
	db #18,#18,#18,#18,#18,#18,#8b,#8d
	db #27,#8a,#18,#18,#18,#18,#18,#18
.l2bc4 equ $ + 1
	db #87,#88,#01,#02,#82,#8a,#e1,#18
	db #e0,#18,#18,#e1,#8b,#8d,#33,#8a
	db #e0,#18,#27,#e1,#18,#e0,#18,#18
	db #e1,#8b,#8d,#27,#8d,#1b,#8a,#e1
	db #1f,#e0,#1f,#1f,#e1,#8b,#8d,#27
	db #8a,#e0,#1f,#22,#e1,#1f,#e0,#1f
	db #1f,#e1,#8b,#8d,#1b,#8d,#0f,#87
.l2bfb
	db #88,#01,#01,#82,#8a,#e1,#18,#e0
	db #18,#18,#e1,#8b,#8d,#33,#8a,#e0
	db #18,#1f,#e1,#18,#e0,#18,#18,#e1
.l2c19 equ $ + 6
	db #8b,#8d,#27,#8d,#1b,#87,#8a,#e1
	db #1f,#e0,#1f,#1f,#e1,#8b,#8d,#27
	db #8a,#e0,#1f,#1c,#e1,#1f,#e0,#1f
	db #1f,#e1,#8b,#8d,#1b,#8d,#0f,#87
.l2c33
	db #88,#01,#01,#82,#8a,#e1,#21,#e0
	db #21,#21,#e1,#8b,#8d,#33,#8a,#e0
	db #21,#28,#e1,#21,#e0,#21,#21,#e1
.l2c51 equ $ + 6
	db #8b,#8d,#27,#8d,#1b,#87,#8a,#e1
	db #1d,#e0,#1d,#1d,#e1,#8b,#8d,#27
	db #8a,#e0,#1d,#24,#e1,#1d,#e0,#1d
	db #1d,#e1,#8b,#8d,#1b,#8d,#0f,#87
.l2c6b
	db #88,#02,#04,#82,#c0,#8a,#df,#00
	db #91,#02,#ef,#84,#f6,#28,#18,#ef
.l2c80 equ $ + 5
	db #84,#0a,#28,#2f,#87,#88,#03,#06
	db #82,#c0,#8a,#de,#00,#f1,#05,#ff
.l2c90 equ $ + 5
	db #84,#05,#78,#24,#87,#88,#01,#01
	db #82,#8a,#df,#00,#11,#07,#e0,#18
	db #18,#18,#24,#18,#18,#24,#18,#18
	db #18,#18,#18,#18,#18,#18,#24,#18
	db #18,#18,#24,#18,#18,#24,#18,#18
	db #18,#18,#18,#18,#18,#18,#24,#87
.l2cbb
	db #88,#01,#01,#82,#8a,#e0,#24,#30
	db #3c,#24,#30,#3c,#24,#30,#24,#30
	db #3c,#24,#30,#3c,#24,#30,#30,#3c
	db #48,#30,#3c,#48,#30,#3c,#30,#3c
.l2ce2 equ $ + 7
	db #48,#30,#3c,#48,#30,#3c,#87,#df
.l2cea equ $ + 7
	db #00,#91,#05,#ef,#c6,#30,#87,#df
.l2cf2 equ $ + 7
	db #00,#91,#05,#ef,#c2,#37,#87,#df
.l2cfa equ $ + 7
	db #00,#91,#05,#ef,#c5,#39,#87,#df
.l2d02 equ $ + 7
	db #00,#91,#05,#ef,#c6,#35,#87,#88
	db #03,#06,#82,#c0,#8a,#df,#00,#91
	db #02,#ef,#84,#f6,#28,#1c,#ef,#84
.l2d17 equ $ + 4
	db #0a,#28,#32,#87,#88,#03,#06,#82
	db #c0,#8a,#de,#00,#f1,#03,#ff,#84
.l2d27 equ $ + 4
	db #05,#78,#2b,#87,#88,#01,#02,#df
	db #00,#21,#04,#e0,#c2,#3c,#cf,#3c
.l2d3a equ $ + 7
	db #fd,#c2,#84,#02,#46,#3c,#87,#88
	db #02,#04,#82,#c0,#8a,#df,#00,#91
	db #02,#f7,#84,#02,#50,#28,#e7,#26
.l2d4c equ $ + 1
	db #87,#88,#02,#04,#82,#c0,#8a,#df
	db #00,#91,#02,#e6,#34,#e0,#33,#ef
.l2d62 equ $ + 7
	db #84,#02,#28,#34,#e7,#32,#87,#88
	db #02,#04,#82,#c0,#8a,#df,#00,#91
.l2d72 equ $ + 7
	db #02,#ef,#84,#ff,#3c,#2b,#87,#88
	db #02,#04,#82,#c0,#8a,#df,#00,#91
.l2d82 equ $ + 7
	db #02,#ef,#84,#ff,#3c,#37,#87,#88
	db #02,#04,#82,#c0,#8a,#df,#00,#91
.l2d8f equ $ + 4
	db #02,#ef,#39,#87,#88,#02,#04,#82
	db #c0,#8a,#df,#00,#91,#02,#ff,#39
.l2d9c equ $ + 1
	db #87,#88,#02,#04,#82,#c0,#8a,#df
.l2da9 equ $ + 6
	db #00,#91,#02,#ff,#35,#87,#88,#02
	db #04,#82,#c0,#8a,#df,#00,#91,#02
.l2db9 equ $ + 6
	db #ef,#84,#02,#3c,#35,#87,#88,#01
	db #02,#82,#c0,#8a,#df,#00,#91,#02
.l2dc6 equ $ + 3
	db #ef,#3c,#87,#88,#01,#02,#82,#c0
	db #8a,#df,#00,#91,#02,#ff,#3c,#87
.l2dd3
	db #88,#01,#02,#82,#c0,#8a,#df,#00
	db #91,#02,#ef,#3e,#40,#41,#ff,#43
.l2de5 equ $ + 2
	db #43,#87,#88,#03,#06,#c0,#8a,#df
	db #00,#91,#02,#c0,#ef,#84,#f6,#28
	db #1f,#ef,#84,#0a,#28,#37,#87
.l2dfe equ $ + 4
.l2dfa
	dw l2e06,#0000,l2e1e,#0000
.l2e02
	dw l2e38,#0000
.l2e06
	db #bd,#88,#01,#01,#82,#8a,#df,#00
	db #11,#07,#e0,#1f,#1f,#df,#00,#f1
	db #08,#e5,#84,#02,#14,#1d,#8e,#87
.l2e1e
	db #88,#01,#01,#82,#8a,#df,#00,#11
	db #07,#e0,#c6,#30,#c6,#30,#df,#00
	db #f1,#08,#e5,#c8,#84,#02,#14,#41
	db #8e,#87
.l2e38
	db #88,#01,#01,#82,#8a,#df,#00,#11
	db #07,#e0,#34,#34,#df,#00,#f1,#08
	db #e5,#84,#02,#14,#35,#8e,#87
;
.music_info
	db "Leviathan (1987)(English Software)(David Whittaker)",0
	db "",0

	read "music_end.asm"
