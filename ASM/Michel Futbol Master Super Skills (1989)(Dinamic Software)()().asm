; Music of Michel Futbol Master Super Skills (1989)(Dinamic Software)()()
; Ripped by Megachur the 05/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MITCFMSK.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0455

	read "music_header.asm"

; #0400
;	ld a,#00
;	call #bc0e
;	di
;	ld a,(#0038)
;	ld hl,(#0039)
;	ld (l0455),a
;	ld (l0456),hl
;	ld a,#c3
;	ld hl,l047f		; set int (ret)
;	ld (#0038),a
;	ld (#0039),hl
;	call l04d3		; set colors
;	call l0621		; copy gfx to screen
;	di
;	ld a,#c3
;	ld hl,l0458		; set int #38
;	ld (#0038),a
;	ld (#0039),hl
;	ei
;	ld bc,#0000
;	call l0c0b		; init music ?
;.l0436
;	call l0577		; keyboard test
;	ld a,(l05c2)
;	bit 7,a
;	jr nz,l0436
;	ld hl,l04b9		; stop music
;	call l0480
;	di
;	ld a,(l0455)	; reset int #38
;	ld hl,(l0456)
;	ld (#0038),a
;	ld (#0039),hl
;	ei
;	ret
.l0456 equ $ + 1
.l0455
	db #c9,#00,#00
.l0458			; play music interrupt
	push af
	call l047f
	ld a,(l047e)
	inc a
	ld (l047e),a
	cp #06
	jr nz,l047c
	xor a
	ld (l047e),a
	push bc
	push de
	push hl
	push ix
	push iy
	call l0bc8	 ; play music
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
.l047c
	pop af
	ret
.l047e
	dec b
.l047f
	ret
.l0480
	ld b,#0e
.l0482
	push bc
	ld a,#0e
	sub b
	ld c,(hl)
	inc hl
	call l048f
	pop bc
	djnz l0482
	ret
.l048f
	cp #07
	jr nz,l0499
	ld b,a
	ld a,#3f
	and c
	ld c,a
	ld a,b
.l0499
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
	ret
.l04b9
	db #00,#00,#00,#00,#00,#00,#00,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
.l04c9
	push bc
	ld b,#f5
.l04cc
	in a,(c)
	rra
	jr nc,l04cc
	pop bc
	ret
.l04d3
	ld hl,l05e2
	di
	call l04f2
	ei
	ret
	ld bc,#7f00
	out (c),c
	ld a,#00
	or #9c
	out (c),a
	ret
	ld a,b
	ld b,#7f
	out (c),c
	or #40
	out (c),a
	ret
.l04f2
	ld b,#10
.l04f4
	push bc
	ld a,#10
	sub b
	ld c,a
	ld b,#7f
	out (c),c
	ld a,(hl)
	or #40
	out (c),a
	inc hl
	pop bc
	djnz l04f4
	ld a,(hl)
	or #40
	ld bc,#7f10
	out (c),c
	out (c),a
	ret
	ld de,#0000
	ld hl,l0615
	ld b,#08
.l0519
	srl d
	rr e
	ld a,(hl)
	call l052f
	jr nz,l0525
	set 7,e
.l0525
	inc hl
	djnz l0519
	ld (l052d),de
	ret
.l052d
	nop
	nop
.l052f
	push ix
	ld ix,l05bd
	ld c,a
	srl a
	srl a
	srl a
	ld (l0554),a
	ld a,#07
	and c
	sla a
	sla a
	sla a
	ld c,a
	ld a,(l0555)
	and #c7
	or c
	ld (l0555),a
.l0555 equ $ + 3
.l0554 equ $ + 2
	bit 0,(ix+#00)
	pop ix
	ret
.l0559
	call l0566
	jr z,l0559
	jr l0560
.l0560
	call l0566
	jr nz,l0560
	ret
.l0566
	call l0577
	ld hl,l05bd
	ld b,#0a
	ld a,#ff
.l0570
	and (hl)
	inc hl
	djnz l0570
	cp #ff
	ret
.l0577
	di
	ld bc,#f40e
	out (c),c
	ld b,#f6
	in a,(c)
	and #30
	ld c,a
	or #c0
	out (c),a
	out (c),c
	inc b
	ld a,#92
	out (c),a
	push bc
	ld hl,l05bd
	ld de,l05c7
.l0596
	set 6,c
	ld b,#f6
	out (c),c
	ld b,#f4
	in a,(c)
	ld b,a
	or (hl)
	cpl
	ld (hl),b
	ld b,a
	ld a,(de)
	and b
	or (hl)
	ld (de),a
	inc c
	inc de
	inc hl
	ld a,c
	and #0f
	cp #0a
	jr c,l0596
	pop bc
	ld a,#82
	out (c),a
	dec b
	out (c),c
	ei
	ret
.l05c2 equ $ + 5
.l05bd
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
.l05c7 equ $ + 2
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#00,#0d,#1a,#10
	db #18,#09,#12,#05,#14,#01,#02,#0b
.l05e2 equ $ + 5
	db #0f,#04,#03,#06,#00,#14,#00,#0b
	db #07,#0a,#16,#12,#1d,#13,#04,#15
	db #17,#0e,#18,#1c,#0c,#14,#14,#14
	db #14,#14,#14,#14,#14,#14,#14,#14
.l0600 equ $ + 3
	db #14,#14,#14,#14,#0b,#14,#14,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
.l0615
	db #12,#15,#06,#2f,#09,#17,#15,#42
	db #00,#00,#00,#00
.l0621
	ld hl,l1049
	ld de,#c000
	ld bc,#4000
	di
	call l04c9
.l062e
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	jp pe,l062e
	ei
	ret
.l06ba equ $ + 7
.l06b9 equ $ + 6
.l06b8 equ $ + 5
.l06b7 equ $ + 4
.l06b6 equ $ + 3
.l06b5 equ $ + 2
.l06b4 equ $ + 1
.l06b3
	db #00,#07,#06,#ff,#ff,#00,#00,#bc
	db #06,#b4,#00,#c8,#00,#22,#01,#00
	db #01,#02,#00,#03,#02,#04,#05,#02
	db #06,#07,#02,#04,#08,#02,#09,#0a
	db #02,#04,#0b,#02,#0c,#0d,#02,#04
	db #08,#02,#04,#0f,#10,#02,#11,#12
	db #02,#13,#14,#02,#15,#12,#02,#16
	db #17,#02,#18,#19,#02,#1b,#1c,#02
	db #1d,#19,#1e,#1f,#20,#22,#23,#24
	db #02,#25,#26,#27,#28,#29,#02,#2a
	db #2b,#2d,#2e,#2f,#02,#25,#26,#27
	db #30,#29,#31,#32,#2b,#34,#35,#36
	db #38,#39,#3a,#3c,#3d,#3e,#40,#41
	db #42,#3c,#43,#44,#45,#46,#47,#48
	db #49,#02,#4b,#4c,#4d,#00,#01,#02
	db #00,#4e,#02,#04,#4f,#50,#06,#07
	db #51,#04,#08,#52,#09,#0a,#53,#04
	db #0b,#54,#0c,#0d,#51,#04,#56,#57
	db #58,#59,#5a,#22,#23,#5c,#02,#25
	db #5d,#27,#28,#5e,#02,#2a,#5f,#2d
	db #2e,#61,#02,#25,#62,#27,#30,#5e
	db #31,#32,#5f,#34,#35,#36,#38,#39
	db #3a,#3c,#3d,#3e,#40,#41,#68,#3c
	db #43,#69,#45,#46,#6c,#6d,#6e,#6f
	db #70,#71,#71,#0e,#1a,#21,#2c,#33
	db #37,#3b,#3f,#4a,#55,#5b,#60,#63
.l0788 equ $ + 5
	db #64,#65,#66,#67,#6a,#6b,#72,#b2
	db #07,#b9,#07,#bc,#07,#c5,#07,#d0
	db #07,#e1,#07,#ee,#07,#fd,#07,#06
	db #08,#0f,#08,#1a,#08,#25,#08,#36
	db #08,#47,#08,#58,#08,#61,#08,#6a
	db #08,#6d,#08,#70,#08,#73,#08,#83
	db #b8,#fb,#bd,#9b,#b8,#2b,#01,#ff
	db #ff,#04,#36,#6f,#37,#5c,#38,#4a
	db #39,#38,#05,#ff,#ff,#ff,#fd,#ff
	db #fb,#ff,#f9,#ff,#f7,#08,#e0,#ff
	db #e0,#fe,#e0,#fd,#e0,#fc,#e0,#fb
	db #e0,#fa,#e0,#f9,#e0,#f8,#06,#e0
	db #fc,#e0,#fa,#e0,#f9,#e0,#f7,#e0
	db #f5,#e0,#f3,#07,#20,#0f,#00,#ed
	db #00,#cb,#00,#a9,#00,#97,#00,#86
	db #00,#75,#04,#76,#4f,#77,#2c,#78
	db #0a,#59,#e8,#04,#56,#8f,#57,#6c
	db #59,#4a,#5a,#28,#05,#36,#6c,#37
	db #5b,#38,#4a,#39,#39,#3a,#28,#85
	db #37,#f0,#39,#a0,#3b,#80,#3d,#60
	db #43,#50,#08,#40,#ef,#40,#ce,#40
	db #ad,#40,#8c,#40,#5b,#40,#3a,#40
	db #19,#20,#f8,#08,#40,#4f,#40,#2e
	db #40,#0d,#20,#ec,#20,#bb,#20,#9a
	db #20,#79,#20,#58,#08,#60,#4f,#60
	db #2e,#60,#0d,#40,#ec,#40,#bb,#40
	db #9a,#40,#69,#40,#48,#04,#9f,#ef
	db #88,#59,#85,#18,#64,#d3,#04,#bf
	db #2f,#96,#0a,#6b,#a9,#69,#86,#01
	db #ff,#ff,#01,#ff,#ff,#01,#ff,#ff
.l0876 equ $ + 3
	db #01,#ff,#ff,#0f,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#0c,#0e,#0d,#07,#0c
	db #0e,#0d,#07,#0e,#0d,#0c,#0b,#0a
	db #0a,#09,#08,#0d,#0e,#0d,#0b,#0d
	db #0b,#08,#0a,#0e,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#07,#07,#07,#07,#07
	db #07,#07,#07,#05,#05,#05,#05,#05
	db #05,#05,#04,#0e,#0c,#0b,#0a,#09
	db #08,#07,#00,#0f,#0f,#0f,#0f,#00
	db #00,#00,#00,#09,#08,#08,#07,#07
.l08c6 equ $ + 3
	db #06,#06,#05,#00,#0a,#14,#1e,#1e
	db #14,#0a,#00,#24,#18,#0c,#01,#00
	db #00,#00,#00,#00,#04,#08,#10,#10
	db #08,#04,#00,#28,#1e,#14,#0a,#00
	db #00,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#fb,#05,#fb,#05
	db #fb,#05,#fb,#00,#00,#01,#00,#ff
	db #00,#ff,#01,#00,#fa,#06,#fa,#06
	db #fa,#06,#fa,#18,#f4,#f4,#0c,#0c
	db #f4,#f4,#0c,#0c,#ff,#ff,#ff,#ff
.l0916 equ $ + 3
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ef
	db #fe,#e6,#fa,#38,#e2,#8e,#79,#ff
	db #ff,#ff,#ff,#ff,#ff,#a3,#bf,#28
	db #e2,#cb,#3d,#ff,#ff,#bf,#ff,#ef
	db #fe,#c2,#8a,#61,#a2,#aa,#a8,#ff
	db #ff,#fe,#ff,#ef,#fe,#a2,#5a,#68
	db #86,#a3,#e9,#9a,#8a,#61,#a2,#aa
	db #a8,#fb,#ff,#bf,#ff,#ef,#ff,#e2
	db #5a,#68,#86,#90,#02,#8e,#8a,#61
	db #a2,#aa,#a8,#fb,#ff,#bf,#ff,#ef
	db #fe,#e2,#5a,#68,#86,#83,#e9,#22
	db #33,#33,#33,#3b,#94,#e2,#5a,#68
	db #87,#80,#02,#ff,#30,#00,#fd,#00
	db #cd,#8f,#9b,#21,#e6,#aa,#b9,#0c
	db #28,#ff,#fe,#70,#00,#e2,#5b,#39
	db #86,#83,#e9,#2f,#f1,#7f,#fe,#60
	db #cd,#9b,#9b,#21,#e6,#aa,#a8,#e2
	db #5b,#39,#87,#90,#02,#2f,#ff,#c5
	db #fe,#60,#cd,#8f,#9b,#21,#e6,#aa
	db #a8,#38,#23,#7f,#fe,#30,#00,#34
	db #7f,#1c,#bc,#72,#c3,#e2,#5b,#28
	db #86,#93,#e9,#33,#f1,#ff,#fe,#30
	db #cd,#9b,#9b,#21,#a8,#00,#a8,#ff
	db #ff,#ff,#ff,#74,#cd,#2c,#33,#45
	db #e7,#8e,#fc,#33,#ff,#ff,#ff,#ff
	db #ff,#3c,#0c,#f2,#db,#b6,#e6,#4d
	db #00,#12,#41,#04,#10,#86,#8b,#02
	db #ab,#9b,#38,#ff,#ff,#ff,#fc,#73
	db #82,#84,#fb,#0e,#38,#fb,#03,#37
	db #ff,#cc,#ff,#f2,#c5,#49,#00,#12
	db #41,#04,#10,#8e,#8b,#00,#e4,#3b
	db #39,#ff,#ff,#ff,#fc,#23,#82,#0a
	db #8b,#03,#e4,#1b,#28,#33,#ff,#cd
	db #ff,#f2,#c5,#b5,#0d,#b5,#56,#e4
	db #6e,#69,#04,#12,#41,#04,#10,#29
	db #0b,#12,#e7,#9b,#38,#ff,#ff,#ff
	db #fe,#33,#82,#8c,#0b,#39,#0f,#9b
	db #28,#ff,#ff,#ff,#fe,#cb,#2c,#0a
	db #8b,#39,#0f,#9b,#01,#14,#52,#dd
	db #b9,#57,#f7,#ff,#ff,#d6,#ff,#ff
	db #ff,#98,#0b,#23,#e4,#90,#41,#9c
	db #61,#57,#d4,#61,#4b,#d3,#57,#b4
	db #73,#57,#34,#fc,#0f,#ff,#ff,#f3
	db #c1,#24,#0b,#00,#8f,#93,#82,#81
	db #3f,#f0,#30,#b7,#c1,#73,#57,#ed
	db #1c,#d5,#f4,#ff,#ff,#c0,#ff,#ff
	db #ff,#8c,#0b,#23,#e0,#90,#41,#d4
	db #61,#96,#fd,#52,#ca,#7d,#5f,#d1
	db #c7,#57,#b3,#03,#ff,#cf,#ff,#f0
	db #7f,#0e,#58,#cb,#22,#50,#41,#69
	db #93,#74,#94,#7c,#c0,#24,#0b,#23
	db #8c,#50,#41,#94,#61,#47,#80,#c2
	db #ff,#00,#0f,#c0,#fc,#ff,#c1,#26
	db #1b,#02,#8c,#70,#c2,#41,#08,#0c
	db #fc,#f3,#05,#ff,#ff,#be,#ff,#ef
	db #bf,#f7,#df,#fb,#ef,#ff,#3c,#47
	db #8c,#d5,#cd,#1c,#fe,#e3,#ff,#f9
	db #e7,#ae,#ba,#14,#e3,#ce,#38,#e0
	db #4c,#d4,#e3,#ce,#38,#e0,#4c,#a3
	db #bf,#28,#e3,#9b,#38,#02,#8a,#61
	db #a2,#aa,#a8,#03,#ff,#e1,#ff,#ff
	db #ff,#fe,#5f,#ff,#87,#f3,#ff,#9b
	db #ff,#e1,#ff,#ff,#ff,#fe,#5f,#ff
	db #87,#f0,#02,#8f,#ff,#e1,#ff,#ff
	db #ff,#1c,#3c,#3c,#3c,#3c,#3c,#9a
	db #8a,#61,#a2,#a0,#a8,#9b,#ff,#e1
	db #ff,#f0,#bf,#ff,#ff,#ff,#ff,#00
	db #cd,#2c,#3f,#c2,#ff,#be,#fc,#2c
	db #3f,#c2,#ff,#ae,#ba,#3c,#3c,#f6
	db #ed,#74,#7b,#ff,#71,#04,#22,#63
	db #82,#37,#ff,#cc,#98,#51,#c5,#fe
	db #71,#03,#16,#53,#82,#32,#01,#c5
	db #2c,#c1,#05,#9a,#c5,#23,#5b,#54
	db #5e,#fe,#41,#03,#82,#63,#82,#36
	db #21,#63,#8c,#b8,#c5,#e4,#9b,#84
	db #45,#23,#2d,#d6,#e5,#17,#fd,#f4
	db #d5,#ed,#1c,#d5,#cd,#1c,#d5,#fb
	db #47,#35,#7d,#1f,#57,#f4,#71,#d5
	db #ed,#1f,#35,#69,#93,#74,#d4,#7c
	db #d0,#94,#61,#57,#c0,#c2,#ff,#7d
	db #1e,#35,#7c,#d1,#f5,#70,#d1,#f5
	db #7f,#47,#d5,#40,#0c,#1c,#fc,#f7
	db #15,#ff,#ff,#be,#ff,#ef,#b8,#f7
	db #df,#fb,#ef,#ff,#05,#ff,#ff,#ff
	db #ff,#ff,#f5,#ff,#fe,#7a,#eb,#ae
	db #ff,#38,#f3,#8e,#38,#13,#3f,#fd
	db #1c,#01,#ff,#ff,#ff
;
.play_music
.l0bc8
;
	ld hl,l1027
	ld de,l1028
	ld bc,#000d
	ld (hl),#00
	ldir
	ld a,#38
	ld (l102e),a
	call l0cb3
	call l0c3a
	ld hl,l1034
	ld b,#0e
.l0be5
	push bc
	ld a,b
	dec a
	ld c,(hl)
	dec hl
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
	pop bc
	djnz l0be5
	ret
;
.real_init_music
.l0c0b			; init music ?
;
	push af
	call l0c27
	ld a,c
	ld (l06b8),a
	ld a,#ff
	ld (l06b9),a
	ld (l06b3),a
.l0c1b
	ld a,(l06b9)
	inc a
	nop:nop		; jr z,l0c1b - modified by Megachur
	ld a,b
	ld (l06b8),a
	pop af
	ret
.l0c27
	xor a
	ld (l06b3),a
	dec a
	ld (l06b6),a
	ld (l06b7),a
	ld a,(l06b5)
	dec a
	ld (l06b4),a
	ret
.l0c3a
	ld ix,l1037
	ld b,#08
.l0c40
	push bc
	call l0c4c
	inc ix
	inc ix
	pop bc
	djnz l0c40
	ret
.l0c4c
	ld a,(ix+#00)
	inc a
	ret z
	ld e,(ix+#01)
	ld hl,l0788
	call l0d55
	ld a,(hl)
	ld d,#00
	add hl,de
	add hl,de
	inc hl
	ld d,a
	and #7f
	inc e
	cp e
	jr nz,l0c6b
	ld (ix+#00),#ff
.l0c6b
	ld (ix+#01),e
	call l0d58
	rl d
	ex de,hl
	ld hl,l1031
	jr nc,l0c88
	ld a,d
	rrca
	rrca
	rrca
	rrca
	and #0f
	cp (hl)
	ret c
	ld (hl),a
	ld (l102b),de
	ret
.l0c88
	ld a,d
	and #0f
	dec hl
	cp (hl)
	ret c
	ld (hl),a
	ld a,e
	ld (l102d),a
	rrca
	and #70
	ld e,a
	ld a,d
	rrca
	rrca
	rrca
	rrca
	and #0f
	or e
	ld e,a
	call l0d52
	ld (l1029),hl
	ld a,e
	cp #7f
	ld a,#2a
	jr z,l0caf
	ld a,#28
.l0caf
	ld (l102e),a
	ret
.l0cb3
	ld a,(l06b3)
	and a
	ret z
	ld hl,l06b4
	ld a,(l06b5)
	inc (hl)
	cp (hl)
	call z,l0db5
	ld ix,l0f2b
	ld iy,l1027
	ld b,#03
.l0ccd
	bit 7,(ix+#00)
	jr nz,l0d2d
	ld a,#0b
	sub b
	ld (l0d03),a
	add a
	sub #10
	ld (l0d29),a
	inc a
	ld (l0d2c),a
	ld a,(ix+#01)
	cp #0a
	jr nc,l0d01
	add a
	add a
	add a
	ld d,a
	ld hl,l0876
	ld a,(l06b5)
	cp #09
	ld a,(l06b4)
	jr c,l0cfc
	rra
.l0cfc
	add d
	call l0d5e
	ld a,(hl)
.l0d03 equ $ + 2
.l0d01
	ld (iy+#00),a
	ld a,(ix+#02)
	add a
	add a
	add a
	ld d,a
	ld hl,l08c6
	ld a,(l06b4)
	and #07
	add d
	call l0d5e
	ld a,(hl)
	bit 7,(ix+#03)
	jr z,l0d35
	add (ix+#00)
	ld (ix+#00),a
	call l0d52
.l0d29 equ $ + 2
.l0d27
	ld (iy+#00),l
.l0d2c equ $ + 2
	ld (iy+#00),h
.l0d2d
	ld de,#000c
	add ix,de
	djnz l0ccd
	ret
.l0d35
	ld d,a
	ld a,(ix+#00)
	call l0d52
	ld a,d
	add a
	add a
	ld d,h
	ld e,l
.l0d41
	bit 3,d
	jr nz,l0d4d
	srl a
	rl e
	rl d
	jr l0d41
.l0d4d
	call l0d5e
	jr l0d27
.l0d52
	ld hl,l0f7f
.l0d55
	call l0d5d
.l0d58
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ret
.l0d5d
	add a
.l0d5e
	add l
	ld l,a
	adc h
	sub l
	ld h,a
	ret
.l0d64
	ld hl,l0f2b	; reinit music
	ld de,l0f2c
	ld bc,#0023
	ld (hl),#00
	ldir
	ld a,(l06b8)
	ld hl,l06ba
	call l0d55
	push hl
	pop ix
	ld bc,#0006
	add hl,bc
	ld (l0f4f),hl
	ex de,hl
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l0de3),hl
	add hl,de
	ld (l0f54),hl
	ld l,(ix+#02)
	ld h,(ix+#03)
	add hl,de
	ld (l0f51),hl
	ld l,(ix+#04)
	ld h,(ix+#05)
	add hl,de
	ld (l0f56),hl
	xor a
	ld (l0f53),a
	ld (l0f58),a
	ld (l0f59),a
	ld (l0dea),a
	jr l0dee
.l0db5
	ld a,(l06b9)
	inc a
	jr nz,l0dc5
	ld (l06b9),a
	ld de,#ffff
	ld (l06b6),de
.l0dc5
	ld (hl),#00
	ld hl,(l06b6)
	inc hl
.l0dcb
	ld (l06b6),hl
	ld a,h
	or l
	jr z,l0d64
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld d,h
	ld e,l
	add hl,hl
	add hl,de
.l0de3 equ $ + 1
	ld de,#0000
	sbc hl,de
	jr z,l0dcb
.l0dea equ $ + 1
	ld a,#00
	inc a
	and #07
.l0dee
	jr nz,l0e07
	ld iy,l0f4f
	ld hl,l0f31
	call l0eed
	ld hl,l0f3d
	call l0eed
	ld hl,l0f49
	call l0eed
	xor a
.l0e07
	ld (l0dea),a
	ld ix,l0f2b
	ld b,#03
.l0e10
	push bc
	push ix
	ld a,b
	rra
	ld a,#30
	jr nc,l0e1a
	xor a
.l0e1a
	ld (l0e4a),a
	pop hl
	ld bc,#000b
	add hl,bc
	ld bc,l0600
.l0e25
	call l0f15
	djnz l0e25
	ld a,c
	bit 5,a
	jr nz,l0e91
	and #0f
	cp #09
	jr c,l0e37
	sub #10
.l0e37
	add (ix+#05)
	ld b,#30
	cp b
	jr c,l0e44
	add b
	jr c,l0e44
	sub #60
.l0e44
	ld (ix+#05),a
	add #0c
.l0e4a equ $ + 1
	cp #00
	jr c,l0e4f
	add #0c
.l0e4f
	ld (ix+#00),a
	bit 4,c
	jr z,l0e88
	ld b,#02
	call l0ec7
	cp #01
	jr c,l0e7c
	jr z,l0ebc
	cp #02
	jr z,l0e74
	ld b,#04
	call l0ec7
	ld (ix+#02),a
	cp #05
	ccf
	sbc a
	ld (ix+#03),a
.l0e74
	ld b,#04
	call l0ec7
	ld (ix+#04),a
.l0e7c
	ld l,(ix+#01)
	ld h,(ix+#04)
	ld (ix+#04),l
	ld (ix+#01),h
.l0e88
	ld bc,#000c
	add ix,bc
	pop bc
	djnz l0e10
	ret
.l0e91
	bit 3,a
	jr nz,l0ea7
	and #07
	ld d,a
	ld b,#02
	push bc
	call l0ec7
	pop bc
	add a
	add a
	add a
	or d
	add #09
	jr l0e37
.l0ea7
	rra
	xor c
	and #08
	xor c
	and #0f
	cp #0f
	jr z,l0eb5
	call l0f60
.l0eb5
	ld a,#80
	ld (ix+#00),a
	jr l0e88
.l0ebc
	ld a,(ix+#01)
	dec a
	and #0f
	ld (ix+#01),a
	jr l0e88
.l0ec7
	push hl
	ld c,#00
	ld a,(l0f59)
.l0ecd
	and a
	jr z,l0edf
	dec a
.l0ed1
	ld hl,l0f5f
	call l0f15
	djnz l0ecd
	ld (l0f59),a
	ld a,c
	pop hl
	ret
.l0edf
	ld iy,l0f54
	ld hl,l0f5a
	call l0eed
	ld a,#2f
	jr l0ed1
.l0eed
	push bc
	push de
	ld e,(iy+#00)
	ld d,(iy+#01)
	ld a,(de)
	inc de
	ld (iy+#00),e
	ld (iy+#01),d
	ld c,a
	ld b,#00
	sla c
	rl b
	ex de,hl
	ld h,b
	ld l,c
	add hl,hl
	add hl,bc
	ld bc,l0916
	add hl,bc
	ld bc,#0006
	ldir
	pop de
	pop bc
	ret
.l0f15
	push hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	rl c
	pop hl
	ret
.l0f31 equ $ + 6
.l0f2c equ $ + 1
.l0f2b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0f3d equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0f49 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0f51 equ $ + 6
.l0f4f equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0f5a equ $ + 7
.l0f59 equ $ + 6
.l0f58 equ $ + 5
.l0f56 equ $ + 3
.l0f54 equ $ + 1
.l0f53
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0f5f equ $ + 4
	db #00,#00,#00,#00,#00
.l0f60
	ld (l1035),a
	ld a,#ff
	ld (l1047),a
	ld hl,l1037
	ld bc,#0002
.l0f6e
	ld a,(hl)
	inc a
	jr z,l0f78
	inc hl
	inc hl
	inc c
	inc c
	jr l0f6e
.l0f78
	ld d,h
	ld e,l
	inc de
	dec hl
	lddr
	ret
.l0f7f
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
.l102e equ $ + 7
.l102d equ $ + 6
.l102b equ $ + 4
.l1029 equ $ + 2
.l1028 equ $ + 1
.l1027
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1035 equ $ + 6
.l1034 equ $ + 5
.l1031 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1037
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
.l1049 equ $ + 2
.l1047
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#87,#cf,#8f,#82,#00,#00
	db #00
;
.init_music
;
	ld bc,#0000
	jp real_init_music
;
.music_info
	db "Michel Futbol Master Super Skills (1989)(Dinamic Software)()",0
	db "",0

	read "music_end.asm"
