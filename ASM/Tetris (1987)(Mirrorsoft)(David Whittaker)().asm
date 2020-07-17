; Music of Tetris (1987)(Mirrorsoft)(David Whittaker)()
; Ripped by Megachur the 02/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TETRIS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #3000
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"
;
.init_music	; a=0,1,2
.l3000
;
	ex af,af'
	xor a
	ld (l3563),a
	ld (l3564),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l3802
	add hl,bc
	ld a,(hl)
	ld (l30e6),a
	inc hl
	ld ix,l3059
	ld c,#20
	ld a,#03
.l3022
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
	jr nz,l3022
	ld (l337d),a
	inc a
	ld (l30b9),a
	ld (l3563),a
	ret
.l3059
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l3079
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l3099
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.l30b9
	db #00
;
.play_music	; .l30ba
;
	call l35b6
	ld a,(l3563)
	and a
	jp z,l3116
.l30c5 equ $ + 1
	ld a,#00
	ld (l3112),a
	ld hl,l30b9
	dec (hl)
	jr nz,l30ea
	ld b,(hl)
	ld ix,l3059
	call l3287
	ld ix,l3079
	call l3287
	ld ix,l3099
	call l3287
.l30e6 equ $ + 1
	ld a,#01
	ld (l30b9),a
.l30ea
	ld ix,l3059
	call l3331
	ld (l3440),hl
	ld (l3448),a
	ld ix,l3079
	call l3331
	ld (l3442),hl
	ld (l3449),a
	ld ix,l3099
	call l3331
	ld (l3444),hl
	ld (l344a),a
.l3112 equ $ + 1
	ld a,#00
	ld (l3446),a
.l3116
	ld a,(l3564)
	and a
	jr z,l3146
	ld hl,(l344d)
	ld (l3440),hl
	ld hl,(l3451)
	ld (l3444),hl
	ld a,(l3453)
	ld (l3446),a
	ld a,(l3447)
;.l3131
	or #2d
	ld hl,l3454
	and (hl)
	ld (l3447),a
	ld a,(l3455)
	ld (l3448),a
	ld a,(l3457)
	ld (l344a),a
.l3146
	ld hl,l3564
	ld a,(l3563)
	or (hl)
	ret z
	ld hl,l344b
	ld d,#0b
.l3153
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
	jp p,l3153
	ret
.l3174
	ld de,#0d00
.l3177
	call l3181
	dec d
	jp p,l3177
	ld de,#073f
.l3181
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
.stop_music	;.l319c
;
	xor a
	ld (l3563),a
	ld (l3564),a
	call l3174
	xor a
	ld (l3448),a
	ld (l3449),a
	ld (l344a),a
	ret
;
.jumps_table
;
	defb #c7
	defb #af
	defb #b3
	defb #b8
	defb #76
	defb #a5
	defb #a0
	defb #0d
	defb #8f
	defb #87
	defb #4c
	defb #36
	defb #5e
	defb #b4
	defb #02
	defb #c1
.l31c1
	pop hl
	jp stop_music	;l319c
.l31c5
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
	jr nz,l31e7
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l31e7
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l3295
.l31f2
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,l3425
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l3295
.l3207
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l3425
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l3295
.l321b
	ld hl,l3425
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l3295
.l322b
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l3295
.l3241
	ld a,(de)
	inc de
	ld (l337d),a
	jr l3295
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l3295
.l3257
	set 7,(ix+#00)
.l325b
	set 3,(ix+#00)
	jr l3295
.l3261
	ld (ix+#1d),b
	jr l3295
.l3266
	ld (ix+#1d),#40
	jr l3295
.l326c
	ld (ix+#1d),#c0
	jr l3295
.l3272
	set 1,(ix+#00)
	jr l3295
.l3276
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l32c1
.l3281
	res 5,(ix+#00)
	jr l32c1
.l3287
	dec (ix+#10)
	jr nz,l32ce
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l3295
	ld a,(de)
	inc de
	and a
	jp m,l32df
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l32a7
	ld (l30c5),a
.l32a7
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l32c1
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l32ce
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l32db
	inc (ix+#12)
	ret
.l32db
	dec (ix+#12)
	ret
.l32df
	cp #b8
	jr c,l3329
	add #20
	jr c,l330d
	add #10
	jr c,l3314
	add #10
	jr nc,l3305
	ld c,a
	ld hl,l3519
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l3295
.l3305
	add #09
	ld (l30e6),a
	jp l3295
.l330d
	inc a
	ld (ix+#11),a
	jp l3295
.l3314
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
	jp l3295
.l3329
	ld hl,jumps_table-&80	;l3131
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l3331
	ld c,(ix+#00)
	bit 5,c
	jr z,l337c
	ld a,(ix+#16)
	sub #10
	jr nc,l3364
	bit 6,c
	jr z,l3369
	add (ix+#13)
	jr nc,l3349
	sbc a
.l3349
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l335f
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l337c
.l335f
	ld (ix+#18),a
	jr l337c
.l3364
	ld (ix+#16),a
	jr l337c
.l3369
	cpl
	sub #0f
	add (ix+#13)
	jr c,l3372
	sub a
.l3372
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l337c
	res 5,c
.l337d equ $ + 1
.l337c
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,l3394
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l3394
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l3441
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l33f6
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l33bf
	bit 0,c
	jr nz,l33dd
.l33bf
	bit 5,l
	jr nz,l33cf
	sub (ix+#1b)
	jr nc,l33da
	set 5,(ix+#1d)
	sub a
	jr l33da
.l33cf
	add (ix+#1b)
	cp b
	jr c,l33da
	res 5,(ix+#1d)
	ld a,b
.l33da
	ld (ix+#1c),a
.l33dd
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l33e8
	dec d
.l33e8
	add #a0
	jr c,l33f4
.l33ec
	sla e
	rl d
	add #18
	jr nc,l33ec
.l33f4
	add hl,de
	ex de,hl
.l33f6
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l3421
	ld b,(ix+#0e)
	djnz l341e
	ld c,(ix+#0d)
	bit 7,c
	jr z,l340d
	dec b
.l340d
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l3421
.l341e
	ld (ix+#0e),b
.l3421
	cpl
	and #03
.l3425 equ $ + 1
	ld a,#38
	jr nz,l3432
	ld a,(l30c5)
	xor #08
	ld (l3112),a
	ld a,#07
.l3432
	ld hl,l3447
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l3447 equ $ + 7
.l3446 equ $ + 6
.l3444 equ $ + 4
.l3442 equ $ + 2
.l3441 equ $ + 1
.l3440
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l344e equ $ + 6
.l344d equ $ + 5
.l344b equ $ + 3
.l344a equ $ + 2
.l3449 equ $ + 1
.l3448
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l3457 equ $ + 7
.l3455 equ $ + 5
.l3454 equ $ + 4
.l3453 equ $ + 3
.l3451 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
;
; frequency table
;
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
.l3519
	db #0f,#10,#13,#16,#19,#1d,#20,#23
	db #26,#29,#2b,#2d,#2f,#34,#36,#00
	db #87,#00,#03,#07,#87,#00,#04,#07
	db #87,#00,#02,#07,#87,#00,#04,#07
	db #0c,#87,#07,#0c,#0f,#87,#07,#0c
	db #10,#87,#03,#07,#0c,#87,#04,#07
	db #0c,#87,#00,#0c,#87,#00,#03,#87
	db #00,#04,#87,#0c,#0c,#0c,#0c,#00
	db #87,#00,#07,#87,#00,#00,#00,#00
	db #0c,#87
.l3563
.music_end
	db #00
.l3564
	db #00

	ld hl,l3564
	ld (hl),#00
	ld hl,l3654
	add a
	add l
	ld l,a
	jr nc,l3573
	inc h
.l3573
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l37d0
.l357b
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l357b
	ld a,(l37d1)
	ld (l37e1),a
	ld hl,(l37d2)
	ld (l344d),hl
	ld de,(l37d4)
	ld (l3451),de
	ld a,l
	ld (l3453),a
	ld a,(l37d7)
	ld (l3454),a
	ld a,(l37d6)
	ld e,a
	ld d,#0c
	call l3181
	ld a,(l37e0)
	ld e,a
	ld d,#0d
	call l3181
	ld hl,l3564
	inc (hl)
	ret
.l35b6
	call l37e3
	ld a,(l3564)
	and a
	ret z
	ld a,(l37d0)
	and a
	jr nz,l35ca
	ld (l3564),a
	jp l3174
.l35ca
	dec a
	ld (l37d0),a
	ld a,(l37e1)
	and a
	jr nz,l3603
	ld a,(l37de)
	and a
	ret z
	dec a
	ld (l37de),a
	ld a,(l37d1)
	ld (l37e1),a
	ld a,(l37df)
	and a
	jr z,l35ec
	ld a,(l37fe)
.l35ec
	ld b,a
	ld a,(l37d2)
	add b
	ld (l344d),a
	ld a,(l37d3)
	add b
	and #0f
	ld (l344e),a
	ld hl,(l37d4)
	ld (l3451),hl
.l3603
	ld hl,l37e1
	dec (hl)
	ld a,(l37dc)
	and a
	jr z,l362a
	jp p,l361d
	ld hl,(l344d)
	ld de,(l37d8)
	add hl,de
	ld (l344d),hl
	jr l362a
.l361d
	ld hl,(l344d)
	ld de,(l37d8)
	and a
	sbc hl,de
	ld (l344d),hl
.l362a
	ld a,(l37dd)
	and a
	jr z,l364d
	jp p,l3640
	ld hl,(l3451)
	ld de,(l37da)
	add hl,de
	ld (l3451),hl
	jr l364d
.l3640
	ld hl,(l3451)
	ld de,(l37da)
	and a
	sbc hl,de
	ld (l3451),hl
.l364d
	ld a,(l344d)
	ld (l3453),a
	ret
.l3654
	dw l367c,l368d,l369e,l36af
	dw l36c0,l36d1,l36e2,l36d3
	dw l3704,l3715,l3726,l3737
	dw l3748,l3759,l376a,l377b
	dw l378c,l379d,l37ae,l37bf
l367c
	db #19,#1f,#05,#00,#05,#00,#04,#d7
	db #01,#00,#01,#00,#01,#01,#63,#00
	db #0e
l368d
	db #14,#11,#01,#02,#06,#01,#0a,#fa
	db #20,#00,#10,#00,#01,#01,#0a,#00
	db #00
l369e
	db #0a,#08,#82,#00,#80,#00,#03,#fa
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
l36af
	db #14,#14,#0f,#00,#0f,#00,#03,#d7
	db #01,#00,#01,#00,#01,#01,#00,#00
	db #0e
l36c0
	db #28,#1f,#05,#00,#05,#00,#06,#d7
	db #00,#00,#00,#00,#ff,#ff,#63,#00
	db #0e
l36d1
	db #46,#09,#01,#04,#01,#02,#2d,#d2
	db #61,#00,#70,#00,#01,#01,#50,#01
	db #00
l36e2
	db #78,#ff,#04,#00,#03,#00,#2d,#da
	db #01,#00,#01,#00,#ff,#ff,#00,#00
	db #00
l36d3
	db #14,#0a,#81,#01,#91,#01,#0a,#fa
	db #48,#00,#4c,#00,#ff,#ff,#ff,#00
	db #00
l3704
	db #46,#0a,#0a,#00,#0e,#00,#16,#d2
	db #04,#00,#04,#00,#ff,#01,#0a,#01
	db #00
l3715
	db #1e,#0a,#09,#00,#0c,#00,#0f,#fa
	db #08,#00,#08,#00,#ff,#ff,#0a,#00
	db #00
l3726
	db #28,#1e,#01,#01,#11,#01,#19,#fa
	db #28,#00,#2c,#00,#ff,#ff,#ff,#00
	db #00
l3737
	db #14,#07,#81,#00,#06,#01,#06,#d6
	db #24,#00,#29,#00,#ff,#ff,#15,#00
	db #00
l3748
	db #14,#06,#21,#00,#86,#00,#0a,#d2
	db #24,#00,#29,#00,#ff,#ff,#15,#00
l3759
	db #00,#1e,#14,#90,#00,#cf,#00,#0c
	db #fa,#01,#00,#01,#00,#ff,#ff,#ff
	db #00,#00
l376a
	db #28,#1e,#b8,#00,#d0,#00,#0c,#fa
	db #01,#00,#01,#00,#ff,#ff,#ff,#00
	db #00
l377b
	db #28,#06,#01,#03,#11,#03,#14,#fa
	db #c8,#00,#cc,#00,#ff,#ff,#ff,#00
	db #00
l378c
	db #03,#63,#1f,#02,#10,#02,#01,#df
	db #00,#00,#00,#00,#01,#01,#00,#00
	db #0e
l379d
	db #14,#07,#aa,#00,#ae,#00,#11
	db #fa,#20,#00,#20,#00,#ff,#ff,#06
	db #00,#00
l37ae
	db #14,#07,#c1,#01,#81,#03,#11,#fa
	db #20,#00,#18,#00,#01,#01,#3c,#00
	db #00
l37bf
	db #14,#06,#81,#00,#86,#00,#28,#d2
	db #24,#00,#29,#00,#ff,#ff,#15,#00
	db #00
.l37d0
	db #00
.l37d1
	db #00
.l37d2
	db #00
.l37d3
	db #00
.l37da equ $ + 6
.l37d8 equ $ + 4
.l37d7 equ $ + 3
.l37d6 equ $ + 2
.l37d4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l37e1 equ $ + 5
.l37e0 equ $ + 4
.l37df equ $ + 3
.l37de equ $ + 2
.l37dd equ $ + 1
.l37dc
	db #00,#00,#00,#00,#00,#00,#00
.l37e3
	ld a,(l37fe)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l3801
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l3801 equ $ +3
.l37fe
	db #ff,#80,#1b,#34
.l3802
	db #07
	dw l3817,l382f,l3845
	db #07
	dw l3af0,l3af4,l3b0a
	db #06
	dw l3bc7,l3bc9,l3bcb
.l3817
	dw l3877,l3877,l388b,l3877
	dw l3877,l388b,l3896,l3896
	dw l38a0,l38b4,l38bf,#0000
.l382f
	dw l3873,l38f4,l3928,l3875
	dw l38f4,l3928,l3946,l397e
	dw l399d,l39b0,#0000
.l3845
	dw l3c08,l3873,l39e8,l3a24
	dw l3875,l39e8,l3a24,l3a4c
	dw l3a86,l3aa5,l3ab8,l3c0b
	dw l3873,l39e8,l3a24,l3875
	dw l39e8,l3a24,l3a4c,l3a86
	dw l3aa5,l3ab8,#0000
.l3873
	db #c0,#87
.l3875
	db #cc,#87
.l3877
	db #8a,#88,#01,#03,#82,#c0,#df,#00
	db #41,#06,#e5,#29,#2d,#29,#30,#29
	db #33,#29,#32,#87
.l388b
	db #26,#29,#2d,#2e,#26,#29,#2d,#2e
	db #8f,#8f,#87
.l3896
	db #e5,#3a,#3a,#3a,#3a,#35,#35,#35
	db #35,#87
.l38a0
	db #df,#00,#11,#03,#c9,#81,#e1,#48
	db #48,#48,#48,#48,#48,#48,#48,#48
	db #48,#48,#48,#87
.l38b4
	db #df,#00,#11,#03,#88,#01,#01,#82
	db #f7,#54,#87
.l38bf
	db #c0,#df,#00,#51,#04,#88,#01,#01
	db #82,#e5,#45,#45,#46,#46,#51,#51
	db #52,#52,#45,#45,#46,#46,#51,#51
	db #52,#52,#dd,#00,#51,#04,#45,#45
	db #db,#00,#51,#04,#45,#45,#d9,#00
	db #51,#04,#45,#45,#d7,#00,#51,#04
	db #45,#45,#45,#45,#87
.l38f4
	db #8a,#82,#df,#00,#51,#04,#88,#01
	db #02,#e3,#35,#e5,#35,#e3,#35,#3e
	db #e5,#39,#e3,#35,#e7,#35,#88,#01
	db #02,#e3,#41,#e7,#41,#e3,#35,#e5
	db #35,#e3,#35,#3e,#e5,#39,#e3,#35
	db #e7,#35,#88,#01,#02,#e1,#41,#45
	db #41,#e5,#46,#87
.l3928
	db #c0,#88,#01,#02,#e3,#3e,#e7,#45
	db #e3,#3e,#e7,#41,#81,#e3,#4a,#e7
	db #51,#e3,#56,#e7,#56,#88,#01,#01
	db #82,#e3,#56,#e7,#56,#87
.l3946
	db #c0,#88,#01,#02,#82,#e1,#46,#45
	db #41,#3e,#41,#45,#46,#45,#41,#3e
	db #41,#45,#46,#45,#41,#3c,#41,#45
	db #46,#45,#41,#3c,#41,#45,#46,#45
	db #41,#3e,#41,#45,#46,#45,#41,#3e
	db #41,#45,#81,#c9,#52,#51,#4d,#48
	db #4d,#51,#52,#51,#52,#e5,#51,#87
.l397e
	db #c0,#88,#01,#01,#82,#e0,#24,#2e
	db #28,#30,#2b,#34,#2e,#37,#30,#3a
	db #34,#3c,#37,#40,#3a,#43,#3c,#46
	db #40,#48,#43,#4c,#46,#4f,#87
.l399d
	db #c0,#88,#01,#01,#82,#e1,#30,#33
	db #36,#39,#3c,#3f,#42,#45,#48,#4b
	db #4e,#51,#87
.l39b0
	db #c0,#df,#00,#51,#04,#88,#01,#01
	db #82,#e1,#8f,#e5,#48,#48,#4a,#4a
	db #54,#54,#56,#56,#48,#48,#4a,#4a
	db #54,#54,#56,#56,#dd,#00,#51,#04
	db #48,#48,#db,#00,#51,#04,#48,#48
	db #d9,#00,#51,#04,#48,#48,#d7,#00
	db #51,#04,#48,#48,#48,#e3,#48,#87
.l39e8
	db #8a,#82,#df,#00,#51,#04,#88,#01
	db #02,#e1,#80,#e3,#39,#e5,#3c,#e3
	db #3f,#e7,#35,#e1,#8f,#e3,#39,#e5
	db #3a,#88,#01,#02,#e1,#8f,#e3,#45
	db #e5,#46,#e1,#8f,#e3,#39,#e5,#3c
	db #e3,#3f,#e7,#35,#e1,#8f,#e3,#39
	db #e5,#3a,#88,#01,#02,#e1,#45,#48
	db #45,#e5,#4a,#87
.l3a24
	db #c0,#88,#01,#02,#e1,#8f,#e3,#41
	db #e5,#46,#e1,#8f,#e3,#45,#e5,#46
	db #81,#e1,#8f,#e3,#4d,#e5,#52,#e1
	db #8f,#e3,#51,#e5,#52,#88,#01,#01
	db #82,#e1,#8f,#e3,#51,#e5,#52,#87
.l3a4c
	db #c0,#88,#01,#02,#82,#e0,#8f,#e1
	db #46,#45,#41,#3e,#41,#45,#46,#45
	db #41,#3e,#41,#45,#46,#45,#41,#3c
	db #41,#45,#46,#45,#41,#3c,#41,#45
	db #46,#45,#41,#3e,#41,#45,#46,#45
	db #41,#3e,#41,#45,#81,#c9,#52,#51
	db #4d,#48,#4d,#51,#52,#51,#52,#e4
	db #51,#87
.l3a86
	db #c0,#88,#01,#01,#82,#e0,#8f,#24
	db #2e,#28,#30,#2b,#34,#2e,#37,#30
	db #3a,#34,#3c,#37,#40,#3a,#43,#3c
	db #46,#40,#48,#43,#4c,#46,#87
.l3aa5
	db #c0,#81,#e0,#8f,#e1,#30,#33,#36
	db #39,#3c,#3f,#42,#45,#48,#4b,#4e
	db #e0,#51,#87
.l3ab8
	db #c0,#df,#00,#51,#04,#88,#01,#01
	db #82,#e3,#8f,#e5,#4b,#4b,#4d,#4d
	db #57,#57,#59,#59,#4b,#4b,#4d,#4d
	db #57,#57,#59,#59,#dd,#00,#51,#04
	db #4b,#4b,#db,#00,#51,#04,#4b,#4b
	db #d9,#00,#51,#04,#4b,#4b,#d7,#00
	db #51,#04,#4b,#4b,#4b,#e1,#4b,#87
.l3af0
	dw l3b10,#0000
.l3af4
	dw l3b22,l3b22,l3b22,l3b22
	dw l3b36,l3b36,l3b36,l3b36
	dw l3b36,l3b36,#0000
.l3b0a
	dw l3b3f,l3b7c,#0000
.l3b10
	db #8a,#88,#01,#01,#82,#c0,#dd,#00
	db #21,#06,#e1,#3c,#3c,#8c,#3c,#8a
	db #3c,#87
.l3b22
	db #8a,#88,#01,#01,#82,#c0,#dd,#00
	db #21,#06,#e1,#43,#43,#43,#43,#43
	db #43,#43,#43,#87
.l3b36
	db #41,#41,#41,#41,#41,#41,#41,#41
	db #87
.l3b3f
	db #8a,#82,#df,#00,#31,#05,#88,#01
	db #01,#c0,#e1,#80,#4a,#e3,#4c,#e1
	db #8f,#ca,#47,#e3,#cb,#48,#c0,#e1
	db #8f,#45,#e3,#43,#e1,#8f,#cb,#41
	db #e3,#ca,#40,#c0,#e1,#8f,#4a,#e3
	db #4c,#e1,#8f,#ca,#4a,#e3,#4c,#c0
	db #e1,#8f,#41,#e3,#40,#e1,#8f,#ca
	db #3e,#e3,#cb,#3c,#87
.l3b7c
	db #df,#00,#61,#05,#88,#01,#01,#c0
	db #e1,#3c,#e3,#41,#e1,#3c,#e3,#40
	db #e1,#3c,#e3,#3e,#e1,#3c,#e3,#40
	db #e1,#48,#e3,#4d,#e1,#48,#e3,#4c
	db #e1,#48,#e3,#4a,#e1,#48,#e3,#4c
	db #e1,#3c,#e3,#41,#e1,#3c,#e3,#40
	db #e1,#3c,#e3,#3e,#e1,#3c,#e3,#40
	db #81,#e1,#54,#e3,#59,#e1,#54,#e3
	db #58,#e1,#54,#e3,#56,#e1,#54,#82
	db #e3,#58,#87
.l3bc7
	dw l3bcd
.l3bc9
	dw l3be1
.l3bcb
	dw l3bf5
.l3bcd
	db #8a,#88,#01,#02,#82,#c0,#df,#00
	db #51,#04,#e1,#24,#e0,#27,#24,#e1
	db #27,#e3,#29,#8e
.l3be1
	db #8a,#88,#01,#01,#82,#c0,#dd,#00
	db #21,#06,#e1,#c2,#30,#e0,#33,#30
	db #e1,#33,#e3,#35
.l3bf5
	db #8a,#82,#df,#00,#61,#04,#88,#01
	db #02,#c0,#e1,#37,#e0,#3a,#37,#e1
	db #3a,#e3,#3c
.l3c08
	db #89,#00,#87
.l3c0b
	db #89,#fe,#87

	db #f7,#80,#87
;
.music_info
	db "Tetris (1987)(Mirrorsoft)(David Whittaker)",0
	db "",0

	read "music_end.asm"
