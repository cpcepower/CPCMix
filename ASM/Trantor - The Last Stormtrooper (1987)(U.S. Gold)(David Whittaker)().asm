; Music of Trantor - The Last Stormtrooper (1987)(U.S. Gold)(David Whittaker)()
; Ripped by Megachur the 28/10/2006
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "TRANTTLS.BIN"
	ENDIF

music_date_rip_day		equ 28
music_date_rip_month	equ 10
music_date_rip_year		equ 2006
music_adr				equ &0100
first_theme				equ 0
last_theme				equ 2	; 0 -> 2

	read "music_header.asm"

; 15/03/2016 - addresses checked - ok
;
.init_music
;
	ex af,af'
	xor a
	ld (l0671),a
	ld (l0672),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l0910
	add hl,bc
	ld a,(hl)
	ld (l01f2),a
	inc hl
	ld ix,l0159
	ld c,#20
	ld a,#03
.l0122
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
	jr nz,l0122
	ld (l0487),a
	inc a
	ld (l01b9),a
	ld (l0671),a
	ret
.l0159
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l0179
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l0199
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.l01b9
	db #06
;
.play_music
.l01ba
;
	ld hl,l0670
	dec (hl)
	jr nz,l01c3
	ld (hl),#0a
	ret
.l01c3
	call l06c4
	ld a,(l0671)
	and a
	jp z,l021f
.l01ce equ $ + 1
	ld a,#00
	ld (l021b),a
	ld hl,l01b9
	dec (hl)
	jr nz,l01f3
	ld b,(hl)
	ld ix,l0159
	call l0394
	ld ix,l0179
	call l0394
	ld ix,l0199
	call l0394
	ld hl,l01b9
.l01f2 equ $ + 1
	ld (hl),#09
.l01f3
	ld ix,l0159
	call l043b
	ld (l054a),hl
	ld (l0552),a
	ld ix,l0179
	call l043b
	ld (l054c),hl
	ld (l0553),a
	ld ix,l0199
	call l043b
	ld (l054e),hl
	ld (l0554),a
.l021b equ $ + 1
	ld a,#00
	ld (l0550),a
.l021f
	ld a,(l0672)
	and a
	jr z,l024f
	ld hl,(l0557)
	ld (l054a),hl
	ld hl,(l055b)
	ld (l054e),hl
	ld a,(l055d)
	ld (l0550),a
	ld a,(l0551)
.l023a
	or #2d
	ld hl,l055e
	and (hl)
	ld (l0551),a
	ld a,(l055f)
	ld (l0552),a
	ld a,(l0561)
	ld (l0554),a
.l024f
	ld hl,l0672
	ld a,(l0671)
	or (hl)
	ret z
	ld hl,l0555
	ld d,#0b
.l025c
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
	jp p,l025c
	ret
.l027d
	ld de,&0d00
.l0280
	call l028a
	dec d
	jp p,l0280
	ld de,l073f
.l028a
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
.stop_music	; l02a5
;
	xor a
	ld (l0671),a
	ld (l0672),a
	call l027d
	xor a
	ld (l0552),a
	ld (l0553),a
	ld (l0554),a
	ret
;
.jumps_table
;
	db l0385-$	 ; #cb
	db l036e-$	 ; #b3
	db l0373-$	 ; #b7
	db l0379-$	 ; #bc
	db l0338-$	 ; #7a
	db l0368-$	 ; #a9
	db l0364-$	 ; #a4
	db l02d2-$	 ; #11
	db l0355-$	 ; #93
	db l034e-$	 ; #8b
	db l0314-$	 ; #50
	db l02ff-$	 ; #3a
	db l0328-$	 ; #62
	db l037f-$	 ; #b8
	db l02ca-$	 ; #02
	db l038e-$	 ; #c5
.l02ca
	xor a
	ld (l0671),a
	pop hl
	jp l027d
.l02d2
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
	jr nz,l02f4
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l02f4
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l03a2
.l02ff
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,l052f
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l03a2
.l0314
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l052f
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l03a2
.l0328
	ld hl,l052f
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l03a2
.l0338
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l03a2
.l034e
	ld a,(de)
	inc de
	ld (l0487),a
	jr l03a2
.l0355
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l03a2
.l0364
	set 7,(ix+#00)
.l0368
	set 3,(ix+#00)
	jr l03a2
.l036e
	ld (ix+#1d),b
	jr l03a2
.l0373
	ld (ix+#1d),#40
	jr l03a2
.l0379
	ld (ix+#1d),#c0
	jr l03a2
.l037f
	set 1,(ix+#00)
	jr l03a2
.l0385
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l03ce
.l038e
	res 5,(ix+#00)
	jr l03ce
.l0394
	dec (ix+#10)
	jr nz,l03db
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l03a2
	ld a,(de)
	inc de
	and a
	jp m,l03ec
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l03b4
	ld (l01ce),a
.l03b4
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l03ce
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l03db
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l03e8
	inc (ix+#12)
	ret
.l03e8
	dec (ix+#12)
	ret
.l03ec
	cp #b8
	jr c,l0433
	add #20
	jr c,l0418
	add #10
	jr c,l041e
	add #10
	jr nc,l0411
	ld c,a
	ld hl,l0623
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr l03a2
.l0411
	add #09
	ld (l01f2),a
	jr l03a2
.l0418
	inc a
	ld (ix+#11),a
	jr l03a2
.l041e
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
	jp l03a2
.l0433
	ld hl,jumps_table-&80	;l023a
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l043b
	ld c,(ix+#00)
	bit 5,c
	jr z,l0486
	ld a,(ix+#16)
	sub #10
	jr nc,l046e
	bit 6,c
	jr z,l0473
	add (ix+#13)
	jr nc,l0453
	sbc a
.l0453
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l0469
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l0486
.l0469
	ld (ix+#18),a
	jr l0486
.l046e
	ld (ix+#16),a
	jr l0486
.l0473
	cpl
	sub #0f
	add (ix+#13)
	jr c,l047c
	sub a
.l047c
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l0486
	res 5,c
.l0487 equ $ + 1
.l0486
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,l049e
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l049e
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l0563
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l0500
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l04c9
	bit 0,c
	jr nz,l04e7
.l04c9
	bit 5,l
	jr nz,l04d9
	sub (ix+#1b)
	jr nc,l04e4
	set 5,(ix+#1d)
	sub a
	jr l04e4
.l04d9
	add (ix+#1b)
	cp b
	jr c,l04e4
	res 5,(ix+#1d)
	ld a,b
.l04e4
	ld (ix+#1c),a
.l04e7
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l04f2
	dec d
.l04f2
	add #a0
	jr c,l04fe
.l04f6
	sla e
	rl d
	add #18
	jr nc,l04f6
.l04fe
	add hl,de
	ex de,hl
.l0500
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l052b
	ld b,(ix+#0e)
	djnz l0528
	ld c,(ix+#0d)
	bit 7,c
	jr z,l0517
	dec b
.l0517
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l052b
.l0528
	ld (ix+#0e),b
.l052b
	cpl
	and #03
.l052f equ $ + 1
	ld a,#38
	jr nz,l053c
	ld a,(l01ce)
	xor #08
	ld (l021b),a
	ld a,#07
.l053c
	ld hl,l0551
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l0551 equ $ + 7
.l0550 equ $ + 6
.l054e equ $ + 4
.l054c equ $ + 2
.l054a
	db #d2,#02,#69,#01,#3c,#00,#00,#38
.l0558 equ $ + 6
.l0557 equ $ + 5
.l0555 equ $ + 3
.l0554 equ $ + 2
.l0553 equ $ + 1
.l0552
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l0561 equ $ + 7
.l055f equ $ + 5
.l055e equ $ + 4
.l055d equ $ + 3
.l055b equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l0563
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
.l0623
	db #10,#11,#14,#17,#1b,#1f,#22,#25
	db #28,#2b,#2d,#2f,#31,#33,#35,#39
	db #00,#87,#00,#03,#07,#87,#00,#04
	db #07,#87,#00,#03,#07,#0c,#87,#00
	db #04,#07,#0c,#87,#07,#0c,#0f,#87
	db #07,#0c,#10,#87,#03,#07,#0c,#87
	db #04,#07,#0c,#87,#00,#0c,#87,#00
	db #04,#87,#00,#03,#87,#00,#05,#87
	db #00,#07,#87,#00,#00,#0c,#0c,#87
	db #00,#03,#07,#0a,#87
.l0670
	db #05
.music_end
.l0671
	db #00
.l0672
	db #00

	ld hl,l0672
	ld (hl),#00
	ld hl,l0762
	add a
	add l
	ld l,a
	jr nc,l0681
	inc h
.l0681
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l08de
.l0689
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l0689
	ld a,(l08df)
	ld (l08ef),a
	ld hl,(l08e0)
	ld (l0557),hl
	ld de,(l08e2)
	ld (l055b),de
	ld a,l
	ld (l055d),a
	ld a,(l08e5)
	ld (l055e),a
	ld a,(l08e4)
	ld e,a
	ld d,#0c
	call l028a
	ld a,(l08ee)
	ld e,a
	ld d,#0d
	call l028a
	ld hl,l0672
	inc (hl)
	ret
.l06c4
	call l08f1
	ld a,(l0672)
	and a
	ret z
	ld a,(l08de)
	and a
	jr nz,l06d8
	ld (l0672),a
	jp l027d
.l06d8
	dec a
	ld (l08de),a
	ld a,(l08ef)
	and a
	jr nz,l0711
	ld a,(l08ec)
	and a
	ret z
	dec a
	ld (l08ec),a
	ld a,(l08df)
	ld (l08ef),a
	ld a,(l08ed)
	and a
	jr z,l06fa
	ld a,(l090c)
.l06fa
	ld b,a
	ld a,(l08e0)
	add b
	ld (l0557),a
	ld a,(l08e1)
	add b
	and #0f
	ld (l0558),a
	ld hl,(l08e2)
	ld (l055b),hl
.l0711
	ld hl,l08ef
	dec (hl)
	ld a,(l08ea)
	and a
	jr z,l0738
	jp p,l072b
	ld hl,(l0557)
	ld de,(l08e6)
	add hl,de
	ld (l0557),hl
	jr l0738
.l072b
	ld hl,(l0557)
	ld de,(l08e6)
	and a
	sbc hl,de
	ld (l0557),hl
.l0738
	ld a,(l08eb)
	and a
	jr z,l075b
.l073f equ $ + 1
	jp p,l074e
	ld hl,(l055b)
	ld de,(l08e8)
	add hl,de
	ld (l055b),hl
	jr l075b
.l074e
	ld hl,(l055b)
	ld de,(l08e8)
	and a
	sbc hl,de
	ld (l055b),hl
.l075b
	ld a,(l0557)
	ld (l055d),a
	ret
.l0762
	dw l078a,l079b,l07ac,l07bd
	dw l07ce,l07df,l07f0,l0801
	dw l0812,l0823,l0834,l0845
	dw l0856,l0867,l0878,l0889
	dw l089a,l08ab,l08bc,l08cd
l078a
	db #3c,#14,#80,#00,#a0,#00,#28,#f2
	db #01,#00,#01,#00,#ff,#ff,#0a,#00
	db #00
l079b
	db #3c,#14,#60,#00,#88,#00,#28,#f2
	db #01,#00,#01,#00,#ff,#ff,#0a,#00
	db #00
l07ac
	db #19,#07,#00,#04,#10,#04,#0f,#fa
	db #98,#00,#98,#00,#ff,#ff,#05,#00
	db #00
l07bd
	db #19,#07,#80,#04,#90,#04,#0f,#fa
	db #98,#00,#98,#00,#ff,#ff,#05,#00
	db #00
l07ce
	db #50,#06,#8a,#02,#60,#02,#0c,#fa
	db #40,#00,#40,#00,#01,#01,#0f,#01
	db #0e
l07df
	db #50,#06,#0a,#02,#00,#02,#0c,#fa
	db #40,#00,#40,#00,#01,#01,#0f,#01
	db #0e
l07f0
	db #23,#07,#c0,#01,#80,#03,#14,#fa
	db #20,#00,#18,#00,#01,#01,#3c,#00
	db #00
l0801
	db #2d,#0a,#08,#00,#0b,#00,#0f,#fa
	db #08,#00,#08,#00,#ff,#ff,#0a,#00
	db #00
l0812
	db #3c,#14,#20,#00,#47,#00,#1e,#fa
	db #01,#04,#01,#04,#01,#01,#ff,#00
	db #00
l0823
	db #1e,#1f,#0f,#02,#0f,#02,#05,#d7
	db #00,#00,#00,#00,#01,#01,#00,#00
	db #0e
l0834
	db #32,#0a,#0a,#00,#0f,#00,#23,#d2
	db #03,#00,#04,#00,#ff,#01,#0a,#01
	db #00
l0845
	db #32,#1a,#b8,#00,#98,#00,#1e,#fa
	db #03,#00,#04,#00,#01,#01,#03,#00
	db #00
l0856
	db #32,#12,#00,#02,#05,#01,#1e,#fa
	db #20,#00,#10,#00,#01,#01,#0a,#00
	db #00
l0867
	db #3c,#0d,#80,#00,#10,#02,#1e,#fa
	db #06,#00,#14,#00,#01,#01,#ff,#00
	db #00
l0878
	db #0a,#05,#0a,#01,#17,#01,#09,#fa
	db #1f,#00,#1c,#00,#ff,#ff,#05,#00
	db #00
l0889
	db #28,#06,#01,#03,#11,#03,#14,#fa
	db #c8,#00,#cc,#00,#ff,#ff,#ff,#00
	db #00
l089a
	db #03,#63,#1f,#02,#10,#02,#01,#df
	db #00,#00,#00,#00,#01,#01,#00,#00
	db #0e
l08ab
	db #14,#07,#aa,#00,#ae,#00,#11,#fa
	db #20,#00,#20,#00,#ff,#ff,#06,#00
	db #00
l08bc
	db #14,#07,#c1,#01,#81,#03,#11,#fa
	db #20,#00,#18,#00,#01,#01,#3c,#00
	db #00
l08cd
	db #14,#06,#81,#00,#86,#00,#28,#d2
	db #24,#00,#29,#00,#ff,#ff,#15,#00
	db #00
.l08de
	db #00
.l08df
	db #00
.l08e0
	db #00
.l08e1
	db #00
.l08e2
	db #00,#00
.l08eb equ $ + 7
.l08ea equ $ + 6
.l08e8 equ $ + 4
.l08e6 equ $ + 2
.l08e5 equ $ + 1
.l08e4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l08ef equ $ + 3
.l08ee equ $ + 2
.l08ed equ $ + 1
.l08ec
	db #00,#00,#00,#00,#00
.l08f1
	ld a,(l090c)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l090f
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l090c
	db #3b,#0b,#b2
.l090f
	db #e1
.l0910
	db #09
	dw l0925,l0939,l094d
	db #05
	dw l0a29,l0a31,l0a2d
	db #05
	dw l0c5a,l0bc2,l0c7c
.l0925
	dw l0961,l0982,l0982,l0982
	dw l0982,l0982,l0982,l0982
	dw l0982,#0000
.l0939
	dw l09a3,l09ba,l09ba,l09ba
	dw l09ba,l09ba,l09ba,l09ba
	dw l09ba,#0000
.l094d
	dw l09c3,l09ef,l09ef,l09ef
	dw l09ef,l09ef,l09ef,l09ef
	dw l09ef,#0000
.l0961
	db #8a,#88,#01,#01,#82,#d3,#f1,#f1
	db #f4,#ce,#f7,#13,#df,#00,#f1,#03
	db #ef,#11,#df,#00,#51,#03,#c0,#e3
	db #11,#11,#11,#11,#11,#11,#11,#11
	db #87
.l0982
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #13,#13,#13,#13,#13,#13,#13,#13
	db #15,#15,#15,#15,#15,#15,#15,#15
	db #11,#11,#11,#11,#11,#11,#11,#11
	db #87
.l09a3
	db #8a,#88,#01,#01,#82,#d3,#f1,#f1
	db #c3,#ce,#f7,#19,#df,#00,#f1,#04
	db #ff,#c4,#1d,#ef,#8f,#ff,#87
.l09ba
	db #c4,#24,#c3,#1f,#c3,#21,#c4,#1d
	db #87
.l09c3
	db #8a,#88,#01,#01,#82,#d3,#f1,#f1
	db #f2,#ce,#f7,#84,#fc,#09,#03,#8a
	db #d3,#12,#f1,#f3,#88,#04,#08,#fd
	db #84,#01,#09,#3c,#ef,#84,#01,#09
	db #8d,#8f,#88,#01,#01,#dc,#00,#f1
	db #03,#e1,#2e,#87
.l09ef
	db #c2,#ed,#84,#01,#24,#3c,#e1,#3a
	db #ed,#84,#01,#24,#3c,#e1,#3c,#ed
	db #84,#01,#24,#3a,#e1,#3c,#ed,#84
	db #01,#24,#3a,#e1,#3a,#ed,#84,#01
	db #24,#3c,#e1,#3a,#ed,#84,#01,#24
	db #3c,#e1,#3a,#ed,#84,#01,#24,#3c
	db #e1,#3a,#ed,#84,#01,#24,#3c,#e1
	db #3a,#87

.l0a29
	dw l0a35,#0000
.l0a2d
	dw l0a79,#0000
.l0a31
	dw l0b49,#0000
.l0a35
	db #8a,#88,#01,#01,#82,#df,#00,#71
	db #05,#c0,#e5,#0c,#0c,#0c,#0c,#09
	db #09,#05,#05,#0c,#0c,#0c,#0c,#09
	db #09,#09,#09,#07,#07,#07,#07,#10
	db #10,#10,#10,#05,#05,#05,#05,#07
	db #07,#07,#07,#0c,#0c,#0c,#0c,#08
	db #08,#08,#08,#0c,#0c,#0c,#0c,#08
	db #08,#08,#08,#05,#05,#05,#05,#07
	db #07,#07,#07,#87
.l0a79
	db #8a,#88,#01,#01,#82,#dd,#00,#11
	db #04,#e3,#c2,#24,#e0,#24,#24,#e7
	db #24,#e1,#24,#24,#24,#24,#24,#e3
	db #c7,#21,#e0,#21,#21,#e7,#21,#c6
	db #e1,#1d,#1d,#1d,#1d,#1d,#e3,#c2
	db #24,#e0,#24,#24,#e7,#24,#e1,#24
	db #24,#24,#24,#24,#e3,#c5,#21,#e0
	db #21,#21,#e7,#21,#e1,#21,#21,#21
	db #21,#21,#e3,#c6,#1f,#e0,#1f,#1f
	db #e7,#1f,#e1,#1f,#1f,#1f,#1f,#1f
	db #e3,#c5,#1c,#e0,#1c,#1c,#e7,#1c
	db #e1,#1c,#1c,#1c,#1c,#1c,#e3,#c6
	db #1d,#e0,#1d,#1d,#e7,#1d,#e1,#1d
	db #1d,#1d,#1d,#1d,#e3,#c6,#1d,#e0
	db #1d,#1d,#e7,#1d,#e1,#1f,#1f,#1f
	db #1f,#1f,#e3,#c1,#24,#e0,#24,#24
	db #e7,#24,#e1,#24,#24,#24,#24,#24
	db #e3,#c2,#20,#e0,#20,#20,#e7,#20
	db #e1,#20,#20,#20,#20,#20,#e3,#c1
	db #24,#e0,#24,#24,#e7,#24,#e1,#24
	db #24,#24,#24,#24,#e3,#c2,#2c,#e0
	db #2c,#2c,#e7,#2c,#e1,#2c,#2c,#2c
	db #2c,#2c,#e3,#c1,#29,#e0,#29,#29
	db #e7,#29,#e1,#29,#29,#29,#29,#29
	db #e3,#29,#e0,#29,#29,#e7,#c2,#2b
	db #e1,#c4,#2b,#2b,#2b,#2b,#2b,#87
.l0b49
	db #8a,#88,#01,#01,#82,#df,#00,#11
	db #03,#ce,#e3,#1c,#e0,#1c,#1c,#f1
	db #1f,#e3,#21,#e0,#21,#21,#f1,#24
	db #e3,#1c,#e0,#1c,#1c,#f1,#1f,#e3
	db #24,#e0,#24,#24,#f1,#28,#e3,#26
	db #e0,#26,#26,#f1,#23,#e3,#23,#e0
	db #23,#23,#f1,#1f,#e3,#21,#e0,#21
	db #21,#f1,#21,#e3,#21,#e0,#21,#21
	db #e7,#21,#e1,#23,#23,#23,#23,#23
	db #e3,#1f,#e0,#1f,#1f,#f1,#1b,#e3
	db #1b,#e0,#1b,#1b,#f1,#18,#e3,#1f
	db #e0,#1f,#1f,#f1,#1b,#e3,#27,#e0
	db #27,#27,#f1,#24,#e3,#24,#e0,#24
	db #24,#f1,#20,#e3,#20,#e0,#20,#20
	db #e7,#23,#e1,#2b,#2b,#2b,#2b,#2b
	db #87
.l0bc2
	dw l0ca6,l0fb0,l0cb6,l0cb6
	dw l0ce7,l0ce7,l0cb6,l0cb6
	dw l0ce7,l0ce7,l0cb6,l0cb6
	dw l0ce7,l0ce7,l0cb6,l0cb6
	dw l0ce7,l0ce7,l0d18,l0d18
	dw l0d48,l0d48,l0d18,l0d18
	dw l0d48,l0d48,l0d18,l0d18
	dw l0d48,l0d48,l0d18,l0d18
	dw l0d48,l0d48,l0d18,l0d18
	dw l0d48,l0d48,l0d18,l0d18
	dw l0d48,l0d48,l0d18,l0d18
	dw l0d48,l0d48,l0d18,l0d18
	dw l0d48,l0d48,l0fb7,l0d48
	dw l0d48,l0d78,l0d78,l0d48
	dw l0d48,l0d78,l0d78,l0d48
	dw l0d48,l0d78,l0d78,l0d48
	dw l0d48,l0d78,l0d78,l0d48
	dw l0d48,l0d78,l0d78,l0d48
	dw l0d48,l0d78,l0d78,#0000
.l0c7c
	dw l0da8,l0fb0,l0df4,l0df4
	dw l0df4,l0df4,l0df4,l0df4
	dw l0df4,l0df4,l0e3f,l0e3f
	dw l0e3f,l0e3f,l0fb7,l0e4d
	dw #0000
.l0c5a
	dw l0e6b,l0fb0,l0eba,l0eba
	dw l0ee4,l0ee4,l0faa,l0f09
	dw l0fa7,l0f47,l0f47,l0fad
	dw l0f47,l0f47,l0fa7,l0fb7
	dw l0f6f,l0faa,l0f96,l0fa7
	dw #0000
.l0ca6
	db #8a,#88,#01,#01,#82,#df,#00,#f1
	db #02,#c0,#ff,#09,#09,#09,#09,#87
.l0cb6
	db #8a,#c0,#df,#00,#71,#03,#e1,#09
	db #d8,#11,#00,#50,#8b,#41,#dd,#00
	db #11,#07,#8d,#27,#df,#00,#71,#03
	db #8a,#e1,#09,#d8,#11,#00,#50,#8b
	db #41,#dd,#00,#11,#07,#8d,#27,#df
	db #00,#71,#03,#8a,#e1,#09,#c9,#1f
	db #87
.l0ce7
	db #8a,#c0,#df,#00,#71,#04,#e1,#0c
	db #d8,#11,#00,#50,#8b,#41,#dd,#00
	db #11,#07,#8d,#27,#df,#00,#71,#04
	db #8a,#e1,#0c,#d8,#11,#00,#50,#8b
	db #41,#dd,#00,#11,#07,#8d,#27,#df
	db #00,#71,#04,#8a,#e1,#0c,#c9,#23
	db #87
.l0d18
	db #8a,#c0,#df,#00,#71,#04,#e1,#09
	db #d8,#11,#00,#50,#8b,#41,#dd,#00
	db #11,#07,#8d,#27,#df,#00,#71,#04
	db #8a,#e1,#09,#d8,#11,#00,#50,#8b
	db #41,#dd,#00,#11,#07,#8d,#27,#df
	db #00,#71,#04,#8a,#e1,#09,#07,#87
.l0d48
	db #8a,#c0,#df,#00,#71,#04,#e1,#0c
	db #d8,#11,#00,#50,#8b,#41,#dd,#00
	db #11,#07,#8d,#27,#df,#00,#71,#04
	db #8a,#e1,#0c,#d8,#11,#00,#50,#8b
	db #41,#dd,#00,#11,#07,#8d,#27,#df
	db #00,#71,#04,#8a,#e1,#0c,#0b,#87
.l0d78
	db #8a,#c0,#df,#00,#71,#04,#e1,#11
	db #d8,#11,#00,#50,#8b,#41,#dd,#00
	db #11,#07,#8d,#27,#df,#00,#71,#04
	db #8a,#e1,#11,#d8,#11,#00,#50,#8b
	db #41,#dd,#00,#11,#07,#8d,#27,#df
	db #00,#71,#04,#8a,#e1,#11,#10,#87
.l0da8
	db #8a,#88,#01,#01,#82,#df,#00,#11
	db #04,#c0,#e1,#48,#45,#40,#48,#45
	db #40,#47,#43,#3e,#47,#43,#3e,#45
	db #41,#3c,#41,#48,#45,#40,#48,#45
	db #40,#47,#43,#3e,#47,#43,#3e,#45
	db #41,#3c,#41,#3c,#39,#34,#3c,#39
	db #34,#3b,#37,#32,#3b,#37,#32,#39
	db #35,#30,#35,#3c,#39,#34,#3c,#39
	db #34,#3b,#37,#32,#3b,#37,#32,#39
	db #35,#30,#35,#87
.l0df4
	db #8a,#ce,#88,#01,#01,#dc,#00,#11
	db #05,#e0,#2d,#30,#34,#30,#2d,#30
	db #34,#30,#2d,#30,#34,#30,#2d,#30
	db #34,#30,#2d,#30,#34,#30,#2d,#30
	db #34,#30,#2d,#30,#34,#30,#2d,#30
	db #34,#30,#30,#34,#37,#34,#30,#34
	db #37,#34,#30,#34,#37,#34,#30,#34
	db #37,#34,#30,#34,#37,#34,#30,#34
	db #37,#34,#30,#34,#37,#34,#30,#34
	db #37,#34,#87
.l0e3f
	db #8a,#88,#01,#01,#df,#00,#f1,#04
	db #ff,#c3,#2d,#c4,#30,#87
.l0e4d
	db #8a,#88,#01,#01,#df,#00,#f1,#04
	db #ff,#c4,#24,#29,#c4,#24,#29,#c1
	db #24,#c6,#1d,#c1,#24,#c6,#1d,#c4
	db #24,#29,#c4,#24,#29,#87
.l0e6b
	db #8a,#88,#01,#01,#82,#df,#00,#11
	db #04,#c0,#e0,#8f,#e1,#48,#45,#40
	db #48,#45,#40,#47,#43,#3e,#47,#43
	db #3e,#45,#41,#3c,#41,#48,#45,#40
	db #48,#45,#40,#47,#43,#3e,#47,#43
	db #3e,#45,#41,#3c,#41,#3c,#39,#34
	db #3c,#39,#34,#3b,#37,#32,#3b,#37
	db #32,#39,#35,#30,#35,#3c,#39,#34
	db #3c,#39,#34,#3b,#37,#32,#3b,#37
	db #32,#39,#35,#30,#e0,#35,#87
.l0eba
	db #8a,#88,#01,#02,#df,#00,#91,#01
	db #c0,#ed,#1c,#e1,#1f,#ed,#21,#e1
	db #23,#ef,#84,#fc,#3c,#24,#2b,#88
	db #01,#01,#ce,#ed,#30,#e1,#2f,#ed
	db #2b,#e1,#2d,#ff,#84,#02,#50,#cc
	db #28,#87
.l0ee4
	db #8a,#df,#00,#21,#05,#c9,#e5,#40
	db #e3,#39,#e1,#39,#e5,#40,#e3,#39
	db #39,#e1,#39,#3c,#3e,#e5,#40,#e3
	db #39,#e1,#39,#e5,#40,#e3,#39,#39
	db #e1,#39,#3c,#3e,#87
.l0f09
	db #8a,#e5,#40,#e3,#39,#e1,#39,#e5
	db #40,#e3,#39,#39,#e1,#39,#3c,#3e
	db #e5,#40,#e3,#39,#e1,#39,#e5,#40
	db #e3,#39,#39,#e1,#39,#3c,#3e,#e5
	db #4c,#e3,#45,#e1,#45,#e5,#4c,#e3
	db #45,#45,#e1,#45,#48,#4a,#e5,#4c
	db #e3,#45,#e1,#45,#e5,#4c,#e3,#45
	db #45,#e1,#45,#48,#4a,#87
.l0f47
	db #8a,#df,#00,#11,#06,#c9,#e1,#39
	db #39,#39,#37,#37,#37,#39,#39,#39
	db #37,#37,#39,#39,#37,#39,#3a,#39
	db #39,#39,#37,#37,#37,#39,#39,#39
	db #37,#37,#39,#39,#37,#39,#3a,#87
.l0f6f
	db #8a,#df,#00,#11,#03,#c9,#fd,#37
	db #e1,#38,#fd,#39,#e1,#44,#fd,#37
	db #e1,#38,#fd,#39,#e1,#44,#fd,#37
	db #e1,#36,#fd,#35,#e1,#36,#fd,#37
	db #e1,#36,#fd,#35,#e1,#36,#87
.l0f96
	db #fd,#37,#e1,#38,#fd,#39,#e1,#44
	db #fd,#37,#e1,#38,#fd,#39,#e1,#44
	db #87
.l0fa7
	db #89,#00,#87
.l0faa
	db #89,#01,#87
.l0fad
	db #89,#ff,#87
.l0fb0
	db #de,#00,#81,#05,#e3,#8f,#87
.l0fb7
	db #e7,#de,#00,#f1,#05,#84,#fb,#01
	db #8f,#87
.l0fc1
	db #ff,#80,#80,#80,#80,#80,#80,#80
	db #80,#87
;
.music_info
	db "Trantor - The Last Stormtrooper (1987)(U.S. Gold)(David Whittaker)",0
	db "",0

	read "music_end.asm"
