; Music of Elektra Glide (1986)(English Software)(David Whittaker)()
; Ripped by Megachur the 15/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ELEKTRAG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #0040
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

	jp l004c	; init music
	jp l00fc	; play music
	jp l0d3c	; sound effects
	jp l01b2	; stop music
;
.init_music
.l004c
;
	ld hl,#0000
	ld (l0551),hl
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l0553
	add hl,bc
	ld ix,l0099
	ld c,#21
.l0064 equ $ + 1
	ld a,#03
.l0065
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
	jr nz,l0065
	inc a
	ld (l01e0),a
	ld (l0551),a
	ret
.l0099
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
	dw l0c0a
.l00ba
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
	dw l0cb4
.l00db
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.l00fa
	dw l0cca
;
.play_music
;
.l00fc
	call l0db8
	ld a,(l0551)
	and a
	ret z
.l0105 equ $ + 1
.l0104
	ld a,#00
	ld (l0152),a
	ld hl,l01e0
	dec (hl)
	jr nz,l012a
	ld b,(hl)
	ld ix,l0099
	call l02ac
	ld ix,l00ba
	call l02ac
	ld ix,l00db
.l0122
	call l02ac
	ld hl,l01e0
.l0129 equ $ + 1
	ld (hl),#01
.l012c equ $ + 2
.l012a
	ld ix,l0099
	call l034e
	ld (l045f),hl
	ld (l0467),a
	ld ix,l00ba
	call l034e
	ld (l0461),hl
	ld (l0468),a
	ld ix,l00db
	call l034e
	ld (l0463),hl
	ld (l0469),a
.l0152 equ $ + 1
	ld a,#00
	ld (l0465),a
	ld a,(l0552)
	and a
	jr z,l018c
	ld hl,(l046d)
.l0161 equ $ + 2
	ld (l045f),hl
	ld hl,(l0471)
	ld (l0463),hl
	ld a,(l0473)
	ld (l0465),a
	ld a,(l0466)
	or #2d
	ld hl,l0474
	and (hl)
	ld (l0466),a
	ld a,(l0475)
	ld (l0467),a
	ld a,(l0477)
	ld (l0469),a
	ld a,(l0479)
	ld (l046b),a
.l018c
	ld hl,l046b
.l0190 equ $ + 1
	ld d,#0c
.l0191
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
	jp p,l0191
	ret
;
.stop_music
.l01b2
;
	ld hl,#0000
	ld (l0551),hl
.l01b8
	ld de,#0d00	; original is ld de,#d000 should be ld de,&0d00 !!!
.l01bb
	call l01c5
	dec d		;dec e
	jp p,l01bb
	ld de,&073f
.l01c5
	ld b,#f4
.l01c7
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
.l01e0
	db #00,#c2,#aa,#ae,#b3,#71,#a0,#9b
	db #10,#8a,#82,#50,#3f,#5e
	db #af
	db #01
	xor a
	ld (l0551),a
	pop hl
	jp l01b8
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
	jr nz,l0220
	ld l,(ix+#1f)
	ld h,(ix+#20)
	ld (ix+#03),l
	ld (ix+#04),h
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l0220
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l02ba
	ld a,(ix+#1e)
	ld c,a
	and #07
	ld hl,l0444
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l02ba
	ld a,(ix+#1e)
	ld c,a
	and #38
	ld hl,l0444
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l02ba
	ld hl,l0444
	ld a,(ix+#1e)
	cpl
	and (hl)
	ld (hl),a
	jr l02ba
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l02ba
	ld a,(de)
	inc de
	ld (l0105),a
	jr l02ba
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l02ba
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l02ba
	ld (ix+#1d),b
	jr l02ba
	ld (ix+#1d),#40
	jr l02ba
	ld (ix+#1d),#c0
	jr l02ba
	set 1,(ix+#00)
	jr l02ba
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l02dd
.l02ac
	dec (ix+#10)
	jr nz,l02ea
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l02ba
	ld a,(de)
	inc de
	and a
	jp m,l02fb
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l02dd
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l02ea
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l02f7
.l02f3
	inc (ix+#12)
	ret
.l02f7
	dec (ix+#12)
	ret
.l02fb
	cp #b8
	jr c,l0346
	add #20
	jr c,l032b
	add #10
	jr c,l0331
	add #10
	jr nc,l0324
	ld c,a
	ld hl,l0523
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
.l0320 equ $ + 2
	set 4,(ix+#00)
	jr l02ba
.l0324
	add #09
	ld (l0129),a
	jr l02ba
.l032b
	inc a
	ld (ix+#11),a
	jr l02ba
.l0331
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
	jp l02ba
.l0346
	ld hl,l0161
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l034e
	ld c,(ix+#00)
	bit 5,c
	jr z,l0399
	ld a,(ix+#16)
	sub #10
	jr nc,l0381
	bit 6,c
	jr z,l0386
	add (ix+#13)
	jr nc,l0366
	sbc a
.l0366
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l037c
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l0399
.l037c
	ld (ix+#18),a
	jr l0399
.l0381
	ld (ix+#16),a
.l0384
	jr l0399
.l0386
	cpl
	sub #0f
	add (ix+#13)
	jr c,l038f
	sub a
.l038f
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l0399
	res 5,c
.l0399
	ld a,(ix+#12)
	bit 4,c
	jr z,l03bb
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,l03b3
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l03b3
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
.l03bb
	ld hl,l047b
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l0415
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l03de
	bit 0,c
	jr nz,l03fc
.l03de
	bit 5,l
	jr nz,l03ee
	sub (ix+#1b)
	jr nc,l03f9
	set 5,(ix+#1d)
	sub a
	jr l03f9
.l03ee
	add (ix+#1b)
	cp b
	jr c,l03f9
	res 5,(ix+#1d)
	ld a,b
.l03f9
	ld (ix+#1c),a
.l03fc
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l0407
	dec d
.l0407
	add #a0
	jr c,l0413
.l040b
	sla e
	rl d
	add #18
	jr nc,l040b
.l0413
	add hl,de
	ex de,hl
.l0415
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l0440
	ld b,(ix+#0e)
	djnz l043d
	ld c,(ix+#0d)
	bit 7,c
	jr z,l042c
	dec b
.l042c
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l0440
.l043d
	ld (ix+#0e),b
.l0440
	cpl
	and #03
.l0444 equ $ + 1
	ld a,#38
	jr nz,l0451
	ld a,(l0105)
	xor #08
	ld (l0152),a
	ld a,#07
.l0451
	ld hl,l0466
	xor (hl)
	and (ix+#1e)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l0466 equ $ + 7
.l0465 equ $ + 6
.l0463 equ $ + 4
.l0461 equ $ + 2
.l045f
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l046e equ $ + 7
.l046d equ $ + 6
.l046b equ $ + 4
.l0469 equ $ + 2
.l0468 equ $ + 1
.l0467
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l0475 equ $ + 6
.l0474 equ $ + 5
.l0473 equ $ + 4
.l0472 equ $ + 3
.l0471 equ $ + 2
	db #00,#00,#00,#00,#00,#3f,#10,#0f
.l0479 equ $ + 2
.l0477
	db #10,#ff,#ff,#00
.l047b
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
.l0523
	db #09,#0c,#0f,#13,#17,#1a,#1d,#20
	db #23,#00,#03,#07,#87,#00,#04,#07
	db #87,#00,#03,#07,#0c,#87,#00,#04
	db #07,#0c,#87,#07,#0c,#0f,#87,#07
	db #0c,#10,#87,#03,#07,#0c,#87,#04
.l0552 equ $ + 7
.l0551 equ $ + 6
.music_end equ $ + 6
	db #07,#0c,#87,#00,#0c,#87,#00,#00
.l0553
	dw l0c0a,l0cb4,l0cca
	dw l0c2a,l0cbc,l0cda
	dw l0c5e,l0cc2,l0ce4
	dw l0c92,l0cc6,l0d36
.l056b
	db #bc,#8b,#df,#00,#12,#06,#e0,#89
	db #1f,#8d,#00,#89,#01,#00,#00,#00
	db #e1,#89,#07,#8d,#00,#e0,#89,#15
	db #8d,#00,#89,#01,#00,#89,#07,#8d
	db #00,#89,#01,#00,#00,#00,#e1,#89
	db #07,#8d,#00,#e0,#89,#01,#00,#00
.l059c equ $ + 1
	db #87,#8b,#df,#00,#12,#06,#e0,#89
	db #1f,#00,#89,#01,#00,#00,#00,#e1
	db #89,#07,#8d,#00,#e0,#89,#15,#8d
	db #00,#89,#01,#00,#89,#13,#8d,#00
	db #89,#01,#00,#e1,#89,#07,#8d,#00
.l05c9 equ $ + 6
	db #8d,#00,#e0,#00,#00,#87,#8b,#df
	db #00,#12,#06,#e0,#89,#1f,#8d,#00
	db #89,#01,#00,#00,#00,#e1,#89,#07
.l05dc equ $ + 1
	db #8d,#00,#e0,#89,#15,#8d,#00,#89
	db #01,#00,#89,#1f,#8d,#00,#89,#01
	db #00,#df,#00,#71,#06,#8a,#e1,#84
	db #32,#01,#1d,#84,#32,#01,#24,#84
.l05ff equ $ + 4
	db #32,#01,#1d,#87,#df,#00,#71,#06
	db #8a,#e1,#84,#32,#01,#1a,#84,#32
	db #01,#1c,#84,#32,#01,#1e,#e0,#8b
	db #89,#07,#8d,#00,#8a,#e1,#84,#32
	db #01,#1c,#e0,#84,#32,#01,#1e,#e1
	db #84,#32,#01,#1e,#84,#32,#01,#1d
.l0631 equ $ + 6
	db #8b,#89,#04,#8d,#00,#87,#df,#00
	db #71,#06,#8a,#e1,#84,#32,#01,#10
	db #84,#32,#01,#20,#84,#32,#01,#24
	db #e0,#8b,#89,#0c,#8d,#00,#8a,#e1
	db #84,#32,#01,#20,#e0,#84,#32,#01
	db #24,#e1,#84,#32,#01,#24,#84,#32
	db #01,#21,#8b,#89,#07,#8d,#00,#87
.l0663
	db #df,#00,#31,#05,#8a,#88,#01,#01
	db #83,#e0,#10,#1c,#10,#1c,#10,#1c
	db #10,#1c,#10,#1c,#10,#1c,#10,#1c
	db #10,#1c,#10,#1c,#10,#1c,#10,#1c
	db #10,#1c,#10,#1c,#10,#1c,#10,#1c
	db #1c,#28,#0d,#19,#0d,#19,#0d,#19
	db #0d,#19,#0d,#19,#0d,#19,#0d,#19
	db #0d,#19,#0d,#19,#0d,#19,#0d,#19
	db #0d,#19,#0d,#19,#0d,#19,#0d,#19
	db #19,#25,#06,#12,#06,#12,#06,#12
	db #06,#12,#06,#12,#06,#12,#06,#12
	db #06,#12,#06,#12,#06,#12,#06,#12
	db #06,#12,#06,#12,#06,#12,#06,#12
	db #12,#1e,#0b,#17,#0b,#17,#0b,#17
	db #0b,#17,#0b,#17,#0b,#17,#0b,#17
.l06de equ $ + 3
	db #0b,#17,#87,#e1,#0b,#0b,#0b,#0b
.l06ea equ $ + 7
	db #0b,#0b,#0b,#e0,#17,#23,#87,#e0
	db #15,#21,#14,#20,#12,#1e,#e3,#17
	db #e0,#0c,#18,#0c,#18,#0c,#18,#87
.l06fb
	db #df,#00,#31,#05,#8a,#88,#01,#01
	db #83,#e1,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#e0,#19,#25,#e1,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#e0,#19,#25,#e1
	db #e1,#0d,#0d,#0d,#19,#0d,#19,#0d
	db #0d,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
.l073f equ $ + 4
	db #e0,#17,#23,#e1,#08,#08,#08,#08
	db #08,#08,#08,#e0,#14,#20,#e1,#08
	db #14,#08,#08,#14,#08,#08,#08,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#e0,#17
	db #23,#e1,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#e0,#19,#25,#e1,#0d,#19,#0f
	db #1b,#10,#1c,#0f,#1b,#09,#09,#09
	db #09,#09,#09,#09,#e0,#15,#21,#e1
	db #09,#09,#09,#09,#09,#0b,#0d,#10
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#e0
	db #10,#1c,#e1,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#e0,#17,#23,#e1,#0d,#0d
	db #0d,#e0,#19,#25,#e1,#0b,#0b,#0b
.l07b7 equ $ + 4
	db #e0,#17,#23,#87,#df,#00,#31,#05
	db #8a,#88,#01,#01,#83,#e1,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#e0,#19,#25
	db #e1,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #e0,#19,#25,#e1,#0d,#0d,#0d,#19
	db #0d,#19,#0d,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#e0,#17,#23,#e1,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#e0,#14,#20
	db #e1,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #e0,#17,#23,#e1,#0b,#0b,#0b,#0b
	db #0b,#0c,#0c,#0c,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#e0,#19,#25,#e1,#0d
	db #19,#0f,#1b,#10,#1c,#0f,#1b,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #15,#0b,#17,#0d,#19,#0b,#17,#04
	db #04,#10,#10,#10,#04,#04,#10,#10
	db #04,#04,#10,#10,#04,#10,#04,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#e0
	db #19,#25,#e1,#0b,#0b,#0b,#0b,#0b
.l0869 equ $ + 6
	db #0b,#0b,#e0,#17,#23,#87,#e1,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#e0,#1c
	db #28,#e1,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#e0,#19,#25,#e1,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#e0,#15,#21,#e1
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#e0
.l08b6 equ $ + 3
	db #17,#23,#87,#df,#00,#31,#05,#8a
	db #88,#01,#01,#83,#e1,#13,#13,#13
	db #13,#13,#13,#13,#13,#13,#13,#13
	db #13,#13,#13,#13,#e0,#1f,#2b,#e1
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#e0
	db #1c,#28,#e1,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#e0,#15,#21,#e1,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#e0,#1a,#26
	db #e1,#0e,#0e,#0e,#0e,#10,#10,#10
	db #10,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #e0,#15,#21,#e1,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#e0,#19,#25,#e1,#13
	db #13,#13,#13,#13,#13,#13,#e0,#1f
	db #2b,#e1,#15,#15,#15,#15,#15,#15
	db #15,#e0,#21,#2d,#e1,#17,#17,#17
	db #17,#17,#17,#17,#17,#23,#23,#23
.l0959 equ $ + 6
	db #23,#23,#23,#23,#23,#87,#8a,#88
	db #01,#01,#83,#df,#00,#61,#04,#e1
	db #23,#2f,#28,#23,#2f,#28,#23,#2f
	db #28,#23,#2f,#28,#23,#2f,#31,#2f
.l0974 equ $ + 1
	db #87,#e1,#23,#e0,#2f,#3b,#e1,#28
	db #23,#e0,#2f,#3b,#e1,#28,#23,#e0
	db #2f,#3b,#2d,#39,#2c,#38,#28,#34
.l0991 equ $ + 6
	db #e3,#23,#e5,#c8,#24,#87,#8a,#88
	db #01,#01,#83,#e1,#df,#00,#71,#05
	db #23,#23,#23,#23,#23,#e3,#84,#06
	db #0a,#25,#e1,#20,#23,#23,#23,#23
	db #23,#e0,#25,#31,#25,#31,#25,#e2
	db #31,#e1,#25,#28,#2a,#2b,#2a,#28
	db #2a,#2c,#2f,#2b,#e5,#28,#e3,#84
	db #06,#0a,#2a,#e1,#21,#21,#21,#21
	db #21,#e3,#84,#06,#0a,#23,#e1,#1e
	db #21,#21,#21,#21,#21,#e0,#23,#2f
	db #23,#2f,#23,#e2,#2f,#e1,#20,#23
	db #e3,#27,#e0,#28,#27,#e1,#25,#27
	db #28,#27,#25,#e3,#25,#e1,#23,#25
	db #e0,#23,#22,#e4,#23,#e0,#2f,#23
	db #25,#e4,#23,#e0,#2f,#23,#25,#e1
	db #23,#25,#23,#20,#1e,#1c,#e0,#19
	db #25,#19,#e2,#25,#e5,#28,#e0,#28
	db #27,#26,#25,#e1,#25,#28,#2a,#2b
	db #2a,#e5,#28,#e1,#2a,#28,#2b,#2c
	db #2d,#2e,#2f,#28,#2a,#28,#2c,#2f
	db #31,#2f,#2b,#2a,#e0,#28,#27,#26
	db #e2,#25,#e1,#34,#31,#2f,#2c,#2a
	db #e0,#28,#27,#26,#25,#2c,#2d,#2f
	db #2d,#2c,#2b,#2c,#2b,#e1,#2a,#28
	db #25,#28,#e3,#2c,#e1,#2a,#28,#e7
	db #2a,#e0,#28,#2a,#28,#25,#28,#25
	db #23,#20,#23,#20,#1e,#1c,#1c,#1e
.l0a66 equ $ + 3
	db #1c,#19,#87,#8a,#88,#01,#01,#83
	db #e0,#df,#00,#61,#05,#23,#24,#25
.l0a79 equ $ + 6
	db #26,#27,#26,#25,#24,#87,#e0,#23
	db #22,#21,#20,#1f,#1e,#1d,#1c,#87
.l0a83
	db #e0,#1b,#1c,#1d,#1e,#1f,#20,#21
.l0a8d equ $ + 2
	db #22,#87,#e0,#2f,#30,#31,#32,#33
.l0a97 equ $ + 4
	db #32,#31,#30,#87,#e0,#23,#24,#25
	db #26,#27,#28,#29,#28,#e7,#c8,#2a
	db #c8,#27,#e0,#27,#28,#27,#25,#27
	db #25,#23,#21,#23,#25,#23,#21,#23
	db #21,#20,#1e,#e7,#c8,#2c,#c8,#2a
	db #e1,#28,#27,#28,#e3,#c8,#2a,#e0
	db #29,#28,#27,#26,#25,#24,#23,#22
	db #23,#25,#27,#26,#27,#28,#2a,#28
	db #27,#28,#2a,#2c,#2f,#2a,#2f,#2d
	db #2f,#31,#33,#31,#33,#34,#36,#34
.l0aea equ $ + 7
	db #33,#31,#33,#31,#2f,#31,#87,#e0
.l0af0 equ $ + 5
	db #34,#31,#2f,#31,#87,#e1,#34,#e0
.l0af6 equ $ + 3
	db #2d,#2f,#87,#e0,#34,#2f,#2d,#2f
.l0b02 equ $ + 7
.l0afc equ $ + 1
	db #87,#e1,#34,#e0,#28,#36,#87,#e0
.l0b08 equ $ + 5
	db #2c,#2a,#28,#2a,#87,#e1,#2d,#e0
.l0b0e equ $ + 3
	db #2c,#2d,#87,#e0,#2f,#2d,#2c,#2d
.l0b14 equ $ + 1
	db #87,#e0,#2f,#2d,#2c,#2a,#28,#27
.l0b21 equ $ + 6
	db #e9,#84,#fb,#0a,#23,#87,#e1,#2f
	db #e0,#3b,#47,#e1,#34,#2f,#e0,#3b
	db #47,#e1,#34,#2f,#e0,#3b,#47,#e1
	db #34,#2f,#e0,#3b,#47,#e1,#34,#2f
.l0b42 equ $ + 7
	db #34,#e0,#3b,#47,#e1,#3d,#87,#e1
	db #2f,#e0,#3b,#47,#e1,#34,#2f,#e0
	db #3b,#47,#e1,#34,#2f,#e0,#3b,#47
	db #e1,#34,#2f,#e0,#3b,#47,#e1,#34
	db #2f,#34,#e0,#3b,#3a,#39,#38,#87
.l0b63
	db #8a,#88,#01,#01,#83,#e1,#df,#00
	db #71,#05,#28,#2a,#2b,#2a,#28,#26
	db #23,#24,#2b,#24,#23,#21,#23,#24
	db #23,#21,#1f,#21,#1f,#1e,#1f,#21
	db #1f,#1e,#e7,#c8,#1c,#e1,#1a,#1c
	db #1f,#1c,#1f,#1e,#1f,#21,#1f,#1e
	db #1c,#1e,#1c,#1a,#18,#17,#18,#1a
	db #1c,#1a,#1c,#1e,#1f,#21,#1f,#21
	db #1f,#21,#23,#21,#1f,#1c,#1f,#21
	db #1f,#21,#25,#28,#2a,#e3,#2b,#e0
	db #2c,#2b,#e1,#28,#25,#e0,#28,#27
	db #26,#24,#e1,#25,#e3,#28,#e1,#25
	db #28,#25,#21,#20,#21,#20,#1e,#1c
	db #1e,#1c,#1e,#20,#23,#20,#1e,#1c
	db #1e,#1c,#e3,#1f,#e1,#23,#26,#26
	db #23,#1f,#23,#e3,#25,#e1,#21,#25
.l0be8 equ $ + 5
	db #28,#25,#21,#25,#87,#e0,#17,#1b
	db #1e,#23,#27,#2a,#2f,#33,#36,#3b
	db #3f,#42,#47,#4b,#4e,#53,#17,#1b
	db #1e,#23,#27,#2a,#2f,#2e,#2d,#2c
	db #2d,#2c,#2b,#2a,#29,#28,#87
.l0c0a
	dw l056b,l05c9,l056b,l05c9
	dw l056b,l05c9,l056b,l05ff
	dw l056b,l05c9,l056b,l05c9
	dw l056b,l059c,l05ff,l0631
.l0c2a
	dw l056b,l056b,l056b,l05c9
	dw l056b,l059c,l056b,l056b
	dw l05c9,l05c9,l056b,l056b
	dw l056b,l056b,l056b,l056b
	dw l056b,l05c9,l056b,l05c9
	dw l056b,l05c9,l056b,l059c
.l0c5e equ $ + 4
	dw l05ff,l0631,l056b,l056b
	dw l056b,l059c,l05c9,l056b
	dw l05c9,l056b,l056b,l05c9
	dw l056b,l05c9,l056b,l05c9
	dw l056b,l05c9,l056b,l05c9
	dw l056b,l05c9,l056b,l05c9
	dw l056b,l059c,l05ff,l0631
.l0c92
	dw l056b,l056b,l056b,l059c
	dw l056b,l056b,l056b,l05c9
	dw l056b,l056b,l056b,l059c
	dw l059c,l05c9,l0631,l05ff
	dw #0000
.l0cb4
	dw l0663,l06de,l0663,l06ea
.l0cc2 equ $ + 6
.l0cbc
	dw l06fb,l0663,l06ea,l07b7
.l0cc6 equ $ + 2
	dw l0869,l08b6,#0000
.l0cca
	dw l0959,l0959,l0959,l0959
	dw l0b21,l0b21,l0b21,l0974
.l0cda
	dw l0991,l0b21,l0b21,l0b21
.l0ce4 equ $ + 2
	dw l0974,l0a66,l0a66,l0a79
	dw l0a83,l0a8d,l0a66,l0a8d
	dw l0a97,l0aea,l0aea,l0aea
	dw l0aea,l0aea,l0aea,l0aea
	dw l0af0,l0af6,l0af6,l0af6
	dw l0af6,l0af6,l0af6,l0af6
	dw l0afc,l0b02,l0b02,l0b02
	dw l0b02,l0b02,l0b02,l0b02
	dw l0b08,l0b0e,l0b0e,l0b0e
	dw l0b0e,l0b14,l0b21,l0b21
.l0d36 equ $ + 4
	dw l0b21,l0b42,l0b63,l0be8
	dw #0000
.l0d3c	; sound fx
	ld (l106c),a
	ld hl,l0552
	ld (hl),#01
	ld hl,l0d72
	sla a
	add l
	ld l,a
	jr nc,l0d4e
	inc h
.l0d4e
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l0d56),de
.l0d56 equ $ + 1
	call l1091
	ld a,#10
	ld (l0475),a
	ld a,#10
	ld (l0477),a
	ld a,(l106c)
	ld hl,l0daa
	ld e,a
	ld d,#00
	add hl,de
	ld e,(hl)
	ld d,#0d
	jp l01c5
.l0d72
	dw l0de2,l0dff,l0e1e,l0e4b
	dw l0e61,l0e91,l0ec6,l0edc
	dw l0f32,l0f48,l0f93,l0fcf
	dw l1023,l1046
.l0d8e
	dw l0dfe,l0e0f,l0e3a,l0e60
	dw l0e7e,l0ead,l0edb,l0efd
	dw l0f47,l0f69,l0fb2,l0ff4
	dw l1045,l105c
.l0daa
	db #00,#00,#00,#0e,#00,#00,#0e,#00
	db #0e,#00,#00
	db #00,#00,#00
.l0db8
	ld a,(l0552)
	and a
	ret z
	ld a,(l106f)
	and a
	jr z,l0dde
	dec a
	ld (l106f),a
	ld hl,l0d8e
	ld a,(l106c)
	sla a
	add l
	ld l,a
	jr nc,l0dd4
	inc h
.l0dd4
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l0ddc),de
.l0ddc equ $ + 1
	jp l1091
.l0dde
	ld (l0552),a
	ret
.l0de2
	ld hl,l02f3
	ld (l046d),hl
	ld hl,l05dc
	ld (l0471),hl
	ld a,#05
	ld (l106f),a
	ld a,#fa
	ld (l0474),a
	ld a,#0a
	ld (l0479),a
	ret
.l0dfe
	ret
.l0dff
	ld a,#28
	ld (l106f),a
	ld a,#f2
	ld (l0474),a
	ld a,#28
	ld (l0479),a
	ret
.l0e0f
	call l1072
	ld (l0473),a
	ld (l046e),a
	add #05
	ld (l0472),a
	ret
.l0e1e
	ld hl,l01c7
	ld (l046d),hl
	ld hl,l0384
	ld (l0471),hl
	ld a,#05
	ld (l106f),a
	ld a,#f2
	ld (l0474),a
	ld a,#0a
	ld (l0479),a
	ret
.l0e3a
	call l1072
	and #07
	ld (l0473),a
	ld b,a
	ld a,(l0472)
	add b
	ld (l0472),a
	ret
.l0e4b
	ld a,#3c
	ld (l106f),a
	ld a,#d7
	ld (l0474),a
	ld a,#14
	ld (l0473),a
	ld a,#0a
	ld (l0479),a
	ret
.l0e60
	ret
.l0e61
	ld hl,#0000
	ld (l046d),hl
	ld a,#32
	ld (l106f),a
	ld a,#f2
	ld (l0474),a
	ld a,#28
	ld (l0479),a
	xor a
	ld (l046e),a
	ld (l0472),a
	ret
.l0e7e
	ld a,(l046d)
	add #07
	ld (l0473),a
	add #40
	ld (l046d),a
	sla a
	ld (l0471),a
	ret
.l0e91
	ld hl,l0122
	ld (l046d),hl
	ld hl,l012c
	ld (l0471),hl
	ld a,#28
	ld (l106f),a
	ld a,#fa
	ld (l0474),a
	ld a,#19
	ld (l0479),a
	ret
.l0ead
	ld hl,(l046d)
	ld de,#0002
	and a
	sbc hl,de
	ld (l046d),hl
	ld hl,(l0471)
	ld de,#0003
	and a
	sbc hl,de
	ld (l0471),hl
	ret
.l0ec6
	ld a,#1e
	ld (l106f),a
	ld a,#d7
	ld (l0474),a
	ld a,#0a
	ld (l0473),a
	ld a,#05
	ld (l0479),a
	ret
.l0edb
	ret
.l0edc
	ld hl,l0064
	ld (l046d),hl
	ld hl,l012c
	ld (l0471),hl
	ld a,#46
	ld (l106f),a
	ld a,#06
	ld (l106d),a
	ld a,#f2
	ld (l0474),a
	ld a,#28
	ld (l0479),a
	ret
.l0efd
	ld hl,l106d
	ld a,(hl)
	and a
	jr nz,l0f14
	ld (hl),#06
	ld bc,l0064
	ld (l046d),bc
	ld bc,l012c
	ld (l0471),bc
.l0f14
	dec (hl)
	ld a,(l046d)
	ld (l0473),a
	ld hl,(l046d)
	ld de,#0005
	add hl,de
	ld (l046d),hl
	ld hl,(l0471)
	ld de,#0006
	and a
	sbc hl,de
	ld (l0471),hl
	ret
.l0f32
	ld a,#1e
	ld (l106f),a
	ld a,#d7
	ld (l0474),a
	ld a,#03
	ld (l0473),a
	ld a,#05
	ld (l0479),a
	ret
.l0f47
	ret
.l0f48
	ld a,#06
	ld (l106d),a
	ld a,#1e
	ld (l106f),a
	ld hl,l0190
	ld (l046d),hl
	ld hl,l012c
	ld (l0471),hl
	ld a,#fa
	ld (l0474),a
	ld a,#28
	ld (l0479),a
	ret
.l0f69
	ld hl,l106d
	inc (hl)
	dec (hl)
	jr nz,l0f7d
	ld bc,l012c
	ld (l046d),bc
	ld (l0471),bc
	ld (hl),#05
.l0f7d
	dec (hl)
	ld hl,(l046d)
	ld de,#001e
	add hl,de
	ld (l046d),hl
	ld hl,(l0471)
	ld de,#0023
	add hl,de
	ld (l0471),hl
	ret
.l0f93
	ld a,#3c
	ld (l106f),a
	ld a,#08
	ld (l106d),a
	ld a,#07
	ld (l0fc8),a
	ld a,#00
	ld (l0fca),a
	ld a,#d7
	ld (l0474),a
	ld a,#28
	ld (l0479),a
	ret
.l0fb2
	ld hl,l106d
	inc (hl)
	dec (hl)
	jr nz,l0fc3
	ld a,#1f
	ld (l0fc8),a
	ld a,#18
	ld (l0fca),a
.l0fc3
	dec (hl)
	call l1072
.l0fc8 equ $ + 1
	and #00
.l0fca equ $ + 1
	or #00
	ld (l0473),a
	ret
.l0fcf
	ld hl,l00fa
	ld (l046d),hl
	ld hl,l0104
	ld (l0471),hl
	ld a,#50
	ld (l106f),a
	ld a,#04
	ld (l106d),a
	xor a
	ld (l1071),a
	ld a,#fa
	ld (l0474),a
	ld a,#31
	ld (l0479),a
	ret
.l0ff4
	ld a,(l106d)
	and a
	jr nz,l101e
	ld a,#04
	ld (l106d),a
	ld hl,l00fa
	ld (l046d),hl
	ld hl,l0104
	ld (l0471),hl
	ld a,(l1071)
	xor #01
	ld (l1071),a
	jr z,l101e
	ld hl,#0000
	ld (l046d),hl
	ld (l0471),hl
.l101e
	ld hl,l106d
	dec (hl)
	ret
.l1023
	ld a,#7f
	ld (l046d),a
	xor a
	ld (l046e),a
	ld a,#77
	ld (l0471),a
	xor a
	ld (l0472),a
	ld a,#1e
	ld (l106f),a
	ld a,#fa
	ld (l0474),a
	ld a,#23
	ld (l0479),a
	ret
.l1045
	ret
.l1046
	ld hl,l0320
	ld (l046d),hl
	ld a,#50
	ld (l106f),a
	ld a,#fa
	ld (l0474),a
	ld a,#3c
	ld (l0479),a
	ret
.l105c
	ld hl,(l046d)
	ld de,#0001
	add hl,de
	ld (l046d),hl
	add hl,de
	add hl,de
	ld (l0471),hl
	ret
.l1071 equ $ + 5
.l106f equ $ + 3
.l106d equ $ + 1
.l106c
	db #00,#00,#00,#00,#00,#00
.l1072
	ld a,(l108d)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l1090
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l1090 equ $ +3
.l108d
	db #ff,#80,#1b,#34
.l1091
	db &00
;
.music_info
	db "Elektra Glide (1986)(English Software)(David Whittaker)",0
	db "",0

	read "music_end.asm"
