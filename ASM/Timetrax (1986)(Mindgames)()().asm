; Music of Timetrax (1986)(Mindgames)()()
; Ripped by Megachur the 14/07/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TIMETRAX.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #b000

	read "music_header.asm"

;
.stop_music
;
	xor a
	ld (lb4c1),a
	jp lb12c
;
.init_music
;
	xor a
	ld (lb4c1),a
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,lb4c3
	add hl,bc
	ld ix,lb052
	ld c,#1f
	ld a,#03
.lb01e
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
	jr nz,lb01e
	inc a
	ld (lb154),a
	ld (lb4c1),a
	ret
.lb052
	db #00
	dw lb55b,lb4c9
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.lb071
	db #00
	dw lb9d7,lb4cf
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.lb090
	db #00
	dw lb9b9,lb515
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(lb4c1)
	and a
	ret z
.lb0b5 equ $ + 1
	ld a,#00
	ld (lb102),a
	ld hl,lb154
	dec (hl)
	jr nz,lb0da
	ld b,(hl)
	ld ix,lb052
	call lb21a
	ld ix,lb071
	call lb21a
	ld ix,lb090
	call lb21a
.lb0d5
	ld hl,lb154
.lb0d9 equ $ + 1
	ld (hl),#01
.lb0da
	ld ix,lb052
	call lb2bc
	ld (lb3cd),hl
	ld (lb3d5),a
	ld ix,lb071
	call lb2bc
	ld (lb3cf),hl
	ld (lb3d6),a
	ld ix,lb090
	call lb2bc
	ld (lb3d1),hl
	ld (lb3d7),a
.lb102 equ $ + 1
	ld a,#00
	ld (lb3d3),a
	ld hl,lb3da
	ld d,#0d
.lb10b
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
	jp p,lb10b
	ret
.lb12c
	ld de,#0d00	; original is ld de,#d000 should be ld de,&0d00 !!!
.lb12f
	call lb139
	dec e
	jp p,lb12f
	ld de,#073f
.lb139
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
.lb154
	db #01,#bc,#a4,#a8,#ad,#6b,#9a,#95
	db #10,#84,#7c,#4a,#39,#58,#a9,#01
	xor a
	ld (lb4c1),a
	pop hl
	jp lb12c
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
	jr nz,lb18e
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb18e
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb228
	ld a,(ix+#1e)
	ld c,a
	and #07
	ld hl,lb3b2
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp lb228
	ld a,(ix+#1e)
	ld c,a
	and #38
	ld hl,lb3b2
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp lb228
	ld hl,lb3b2
	ld a,(ix+#1e)
	cpl
	and (hl)
	ld (hl),a
	jr lb228
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lb228
	ld a,(de)
	inc de
	ld (lb0b5),a
	jr lb228
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr lb228
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lb228
	ld (ix+#1d),b
	jr lb228
	ld (ix+#1d),#40
	jr lb228
	ld (ix+#1d),#c0
	jr lb228
	set 1,(ix+#00)
	jr lb228
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb24b
.lb21a
	dec (ix+#10)
	jr nz,lb258
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb228
	ld a,(de)
	inc de
	and a
	jp m,lb269
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.lb24b
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.lb258
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lb265
	inc (ix+#12)
	ret
.lb265
	dec (ix+#12)
	ret
.lb269
	cp #b8
	jr c,lb2b4
	add #20
	jr c,lb299
	add #10
	jr c,lb29f
	add #10
	jr nc,lb292
	ld c,a
	ld hl,lb483
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	set 4,(ix+#00)
	jr lb228
.lb292
	add #09
	ld (lb0d9),a
	jr lb228
.lb299
	inc a
	ld (ix+#11),a
	jr lb228
.lb29f
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
	jp lb228
.lb2b4
	ld hl,lb0d5
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb2bc
	ld c,(ix+#00)
	bit 5,c
	jr z,lb307
	ld a,(ix+#16)
	sub #10
	jr nc,lb2ef
	bit 6,c
	jr z,lb2f4
	add (ix+#13)
	jr nc,lb2d4
	sbc a
.lb2d4
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,lb2ea
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr lb307
.lb2ea
	ld (ix+#18),a
	jr lb307
.lb2ef
	ld (ix+#16),a
	jr lb307
.lb2f4
	cpl
	sub #0f
	add (ix+#13)
	jr c,lb2fd
	sub a
.lb2fd
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,lb307
	res 5,c
.lb307
	ld a,(ix+#12)
	bit 4,c
	jr z,lb329
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,lb321
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.lb321
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
.lb329
	ld hl,lb3db
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb383
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb34c
	bit 0,c
	jr nz,lb36a
.lb34c
	bit 5,l
	jr nz,lb35c
	sub (ix+#1b)
	jr nc,lb367
	set 5,(ix+#1d)
	sub a
	jr lb367
.lb35c
	add (ix+#1b)
	cp b
	jr c,lb367
	res 5,(ix+#1d)
	ld a,b
.lb367
	ld (ix+#1c),a
.lb36a
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb375
	dec d
.lb375
	add #a0
	jr c,lb381
.lb379
	sla e
	rl d
	add #18
	jr nc,lb379
.lb381
	add hl,de
	ex de,hl
.lb383
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lb3ae
	ld b,(ix+#0e)
	djnz lb3ab
	ld c,(ix+#0d)
	bit 7,c
	jr z,lb39a
	dec b
.lb39a
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lb3ae
.lb3ab
	ld (ix+#0e),b
.lb3ae
	cpl
	and #03
.lb3b2 equ $ + 1
	ld a,#38
	jr nz,lb3bf
	ld a,(lb0b5)
	xor #08
	ld (lb102),a
	ld a,#07
.lb3bf
	ld hl,lb3d4
	xor (hl)
	and (ix+#1e)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.lb3d4 equ $ + 7
.lb3d3 equ $ + 6
.lb3d1 equ $ + 4
.lb3cf equ $ + 2
.lb3cd
	db #00,#00,#00,#00,#00,#00,#00,#38
.lb3da equ $ + 5
.lb3d7 equ $ + 2
.lb3d6 equ $ + 1
.lb3d5
	db #0f,#0f,#0d,#00,#00,#00
.lb3db
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
.lb483
	db #0d,#10,#13,#17,#1b,#1e,#21,#24
	db #27,#29,#2b,#2d,#2f,#00,#03,#07
	db #87,#00,#04,#07,#87,#00,#03,#07
	db #0c,#87,#00,#04,#07,#0c,#87,#07
	db #0c,#0f,#87,#07,#0c,#10,#87,#03
	db #07,#0c,#87,#04,#07,#0c,#87,#00
	db #0c,#87,#00,#04,#87,#00,#03,#87
.lb4c1 equ $ + 6
.music_end equ $ + 6
	db #00,#05,#87,#00,#07,#87,#01,#00
.lb4c9 equ $ + 6
.lb4c3
	dw lb4c9,lb4cf,lb515,lb55b
	dw lb5e5,#0000
.lb4cf
	dw lb9d7,lb9c6,lb67e,lb69c
	dw lb67e,lb69c,lb6ba,lb6d8
	dw lb6ba,lb6d8,lb6f6,lb720
	dw lb6f6,lb720,lb6f6,lb720
	dw lb6f6,lb720,lb74a,lb74a
	dw lb74a,lb74a,lb774,lb774
	dw lb94a,lb74a,lb74a,lb74a
	dw lb74a,lb74a,lb774,lb774
	dw lb74a,lb74a,#0000
.lb515
	dw lb9b9,lb9b9,lb79e,lb7bc
	dw lb79e,lb7bc,lb7da,lb809
	dw lb7da,lb809,lb838,lb85a
	dw lb838,lb85a,lb87f,lb8ba
	dw lb87f,lb8ba,lb8f5,lb917
	dw lb8f5,lb917,lb945,lb945
	dw lb97f,lb97f,lb8f5,lb917
	dw lb8f5,lb917,lb945,lb945
	dw lb97f,lb97f,#0000
.lb55b
	db #be,#8b,#88,#01,#01,#83,#e0,#df
	db #00,#02,#09,#89,#1f,#8d,#00,#df
	db #00,#05,#03,#89,#01,#00,#00,#df
	db #00,#01,#09,#89,#07,#8d,#00,#df
	db #00,#05,#03,#89,#01,#00,#df,#00
	db #02,#09,#89,#1f,#8d,#00,#8d,#00
	db #df,#00,#05,#03,#89,#01,#00,#00
	db #df,#00,#01,#09,#89,#07,#8d,#00
	db #df,#00,#05,#03,#89,#01,#00,#00
	db #df,#00,#02,#09,#89,#1f,#8d,#00
	db #df,#00,#05,#03,#89,#01,#00,#00
	db #df,#00,#01,#09,#89,#07,#8d,#00
	db #df,#00,#05,#03,#89,#01,#00,#df
	db #00,#02,#09,#89,#1f,#8d,#00,#8d
	db #00,#df,#00,#05,#03,#89,#01,#00
	db #00,#df,#00,#01,#09,#89,#07,#8d
	db #00,#df,#00,#05,#03,#89,#01,#00
.lb5e5 equ $ + 2
	db #00,#87,#8b,#88,#01,#01,#83,#e0
	db #df,#00,#02,#09,#89,#1f,#8d,#00
	db #df,#00,#05,#03,#89,#01,#00,#00
	db #df,#00,#01,#09,#89,#07,#8d,#00
	db #df,#00,#05,#03,#89,#01,#00,#df
	db #00,#02,#09,#89,#1f,#8d,#00,#8d
	db #00,#df,#00,#05,#03,#89,#01,#00
	db #00,#df,#00,#01,#09,#89,#07,#8d
	db #00,#df,#00,#05,#03,#89,#01,#00
	db #00,#df,#00,#02,#09,#89,#1f,#8d
	db #00,#df,#00,#05,#03,#89,#01,#00
	db #00,#df,#00,#01,#09,#89,#07,#8d
	db #00,#df,#00,#05,#03,#89,#01,#00
	db #df,#00,#02,#09,#89,#1f,#8d,#00
	db #8d,#00,#df,#00,#02,#09,#89,#07
	db #8d,#00,#df,#00,#02,#09,#89,#1f
	db #8d,#00,#df,#00,#02,#09,#89,#07
	db #8d,#00,#df,#00,#02,#09,#89,#1f
	db #8d,#00,#df,#00,#02,#09,#89,#07
.lb67e equ $ + 3
	db #8d,#00,#87,#8a,#88,#01,#01,#83
	db #df,#00,#91,#05,#e1,#05,#e3,#06
	db #e1,#05,#e5,#84,#0a,#15,#06,#e0
	db #05,#e1,#06,#e6,#84,#0a,#15,#0e
.lb69c equ $ + 1
	db #87,#8a,#88,#01,#01,#83,#df,#00
	db #91,#05,#e1,#05,#e3,#06,#e1,#05
	db #e5,#84,#0a,#15,#06,#e0,#05,#e1
.lb6ba equ $ + 7
	db #06,#e6,#84,#0a,#15,#11,#87,#8a
	db #88,#02,#02,#83,#df,#00,#61,#05
	db #e1,#12,#e3,#15,#e1,#12,#e3,#19
	db #e1,#12,#e0,#15,#e1,#19,#e6,#c1
.lb6d8 equ $ + 5
	db #84,#03,#1c,#26,#87,#8a,#88,#02
	db #02,#83,#df,#00,#61,#05,#e1,#12
	db #e3,#15,#e1,#12,#e3,#19,#e1,#12
	db #e0,#19,#e1,#1e,#e6,#c1,#84,#03
.lb6f6 equ $ + 3
	db #1c,#25,#87,#8a,#88,#01,#01,#83
	db #df,#00,#21,#07,#e1,#12,#e0,#1e
	db #e1,#12,#e0,#1e,#e1,#12,#e0,#1e
	db #e1,#12,#e0,#1e,#e1,#12,#e0,#1e
	db #e1,#12,#e0,#1e,#e1,#0e,#e0,#1a
.lb720 equ $ + 5
	db #e1,#0e,#e0,#1a,#87,#8a,#88,#01
	db #01,#83,#df,#00,#21,#07,#e1,#12
	db #e0,#1e,#e1,#12,#e0,#1e,#e1,#12
	db #e0,#1e,#e1,#12,#e0,#1e,#e1,#12
	db #e0,#1e,#e1,#0d,#e0,#19,#e1,#0d
.lb74a equ $ + 7
	db #e0,#19,#e1,#0d,#e0,#19,#87,#8a
	db #88,#01,#01,#83,#df,#00,#21,#07
	db #e1,#15,#e0,#15,#e1,#21,#e0,#21
	db #e1,#13,#e0,#13,#e1,#1f,#e0,#1f
	db #e1,#11,#e0,#11,#e1,#1d,#e0,#1d
	db #e1,#13,#e0,#13,#e1,#1f,#e0,#1f
.lb774 equ $ + 1
	db #87,#8a,#88,#01,#01,#83,#df,#00
	db #21,#07,#e1,#18,#e0,#18,#e1,#24
	db #e0,#24,#e1,#18,#e0,#18,#e1,#24
	db #e0,#24,#e1,#15,#e0,#15,#e1,#21
	db #e0,#21,#e1,#13,#e0,#13,#e1,#1f
.lb79e equ $ + 3
	db #e0,#1f,#87,#8a,#88,#01,#01,#83
	db #df,#00,#81,#05,#e1,#11,#e3,#12
	db #e1,#11,#e5,#84,#0a,#15,#12,#e0
	db #11,#e1,#12,#e6,#84,#0a,#15,#1a
.lb7bc equ $ + 1
	db #87,#8a,#88,#01,#01,#83,#df,#00
	db #81,#05,#e1,#11,#e3,#12,#e1,#11
	db #e5,#84,#0a,#15,#12,#e0,#11,#e1
.lb7da equ $ + 7
	db #12,#e6,#84,#0a,#15,#1d,#87,#8a
	db #88,#01,#01,#83,#df,#00,#03,#03
	db #e0,#42,#42,#42,#c8,#42,#c8,#42
	db #c8,#42,#42,#42,#42,#c8,#42,#c8
	db #42,#c8,#42,#42,#42,#42,#c8,#42
	db #c8,#42,#c8,#42,#42,#42,#42,#c8
.lb809 equ $ + 6
	db #42,#c8,#42,#c8,#42,#87,#8a,#88
	db #01,#01,#83,#df,#00,#03,#03,#e0
	db #42,#42,#42,#c8,#42,#c8,#42,#c8
	db #42,#42,#42,#42,#c8,#42,#c8,#42
	db #c8,#42,#42,#42,#42,#c8,#42,#c8
	db #42,#c8,#42,#3d,#3d,#3d,#c8,#3d
.lb838 equ $ + 5
	db #c8,#3d,#c8,#3d,#87,#8a,#88,#01
	db #01,#83,#df,#00,#01,#06,#e2,#80
	db #e1,#c4,#2a,#e0,#c4,#2a,#e2,#80
	db #e1,#c4,#2a,#e0,#c4,#2a,#e2,#80
.lb85a equ $ + 7
	db #e1,#c4,#2a,#e6,#c1,#32,#87,#8a
	db #88,#01,#01,#83,#df,#00,#01,#06
	db #e2,#80,#e1,#c4,#2a,#e0,#c4,#2a
	db #e2,#80,#e1,#c4,#2a,#e0,#c4,#2a
	db #e1,#80,#e0,#c1,#31,#e1,#c1,#31
.lb87f equ $ + 4
	db #e6,#c1,#31,#87,#8a,#88,#01,#01
	db #83,#df,#00,#01,#06,#e0,#c8,#1e
	db #ca,#36,#ca,#36,#c8,#1e,#cb,#31
	db #cb,#31,#c8,#1e,#c9,#2d,#c9,#2d
	db #c8,#1e,#ca,#2a,#ca,#2a,#c8,#1e
	db #cb,#25,#cb,#25,#c8,#1e,#c9,#21
	db #c9,#21,#c8,#1a,#c9,#1a,#c9,#1a
.lb8ba equ $ + 7
	db #c8,#1a,#c9,#1a,#c9,#1a,#87,#8a
	db #88,#01,#01,#83,#df,#00,#01,#06
	db #e0,#c8,#1e,#ca,#36,#ca,#36,#c8
	db #2a,#cb,#31,#cb,#31,#c8,#2a,#c9
	db #2d,#c9,#2d,#c8,#2a,#ca,#2a,#ca
	db #2a,#c8,#2a,#cb,#25,#cb,#25,#c8
	db #2a,#c9,#21,#c9,#21,#c8,#25,#c9
	db #19,#c9,#19,#c8,#25,#c9,#19,#c9
.lb8f5 equ $ + 2
	db #19,#87,#8a,#88,#01,#01,#83,#df
	db #00,#11,#06,#e1,#c8,#34,#e0,#c8
	db #34,#e1,#c8,#34,#ec,#c8,#2d,#e1
	db #c8,#34,#e0,#c8,#34,#e1,#c8,#35
.lb917 equ $ + 4
	db #e0,#c8,#35,#87,#8a,#88,#01,#01
	db #83,#df,#00,#11,#06,#e1,#c8,#34
	db #e0,#c8,#34,#e1,#c8,#34,#e6,#c8
	db #2d,#e1,#c8,#39,#e0,#c8,#39,#e1
	db #c8,#37,#e0,#c8,#37,#e1,#c8,#34
	db #e0,#c8,#34,#e1,#c8,#35,#e0,#c8
.lb94a equ $ + 7
.lb945 equ $ + 2
	db #35,#87,#8a,#88,#01,#01,#83,#df
	db #00,#11,#06,#e1,#ca,#34,#e0,#ca
	db #34,#e1,#ca,#34,#e0,#ca,#34,#e1
	db #ca,#34,#e0,#ca,#34,#e1,#ca,#34
	db #e0,#ca,#34,#e1,#c9,#35,#e0,#c9
	db #35,#e1,#c9,#35,#e0,#c9,#35,#e1
	db #cb,#32,#e0,#cb,#32,#e1,#cb,#32
	db #e0,#cb,#32,#87
.lb97f
	db #8a,#88,#01,#01,#83,#df,#00,#11
	db #06,#e1,#cb,#34,#e0,#cb,#34,#e1
	db #cb,#34,#e0,#cb,#34,#e1,#cb,#32
	db #e0,#cb,#32,#e1,#cb,#32,#e0,#cb
	db #32,#e1,#cc,#30,#e0,#cc,#30,#e1
	db #cc,#30,#e0,#cc,#30,#e1,#c8,#34
	db #e0,#c8,#34,#e1,#c8,#34,#e0,#c8
.lb9b9 equ $ + 2
	db #34,#87,#8a,#88,#01,#03,#83,#d9
.lb9c6 equ $ + 7
	db #00,#81,#01,#eb,#4e,#4e,#87,#8a
	db #88,#01,#03,#83,#da,#00,#81,#01
	db #eb,#51,#c8,#84,#01,#01,#51,#87
.lb9d7
	db #8a,#df,#00,#f1,#01,#f7,#80,#87
;
.music_info
	db "Timetrax (1986)(Mindgames)()",0
	db "",0

	read "music_end.asm"
