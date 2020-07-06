; Music of Amazing End Part (1989)(Logon System)()()
; Ripped by Megachur the 19/03/2011
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AMAZINEP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2011
music_adr				equ #0040

	read "music_header.asm"

; 09/04/2018 - fix ym

.l0040
	db #00,#00,#ae,#06,#00,#00,#1f,#08
	db #00,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l0070
	db #00,#00,#4f,#07,#00,#00,#23,#08
	db #00,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l00a0
	db #00,#00,#cd,#06,#00,#00,#57,#08
	db #00,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
;
.init_music
.play_music
.l00d0
;
	ld a,(l052e)
	or a
	ret z
.l00d6 equ $ + 1
	ld a,#00
	ld (l0124),a
	ld hl,l014d
	dec (hl)
	jr nz,l00fc
	ld b,#00
	ld ix,l0040
	call l0238
	ld ix,l0070
	call l0238
	ld ix,l00a0
	call l0238
	ld hl,l014d
.l00fb equ $ + 1
	ld (hl),#03
.l00fc
	ld ix,l0040
	call l02fe
	ld (l03fe),hl
	ld (l0406),a
	ld ix,l0070
	call l02fe
	ld (l0400),hl
	ld (l0407),a
	ld ix,l00a0
	call l02fe
	ld (l0402),hl
	ld (l0408),a
.l0124 equ $ + 1
	ld a,#00
	srl a
	ld (l0404),a
	ld hl,l040b
	ld d,#0d
	xor a
.l0130
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f6c0
	out (c),c
	out (c),a
	ld b,#f4
	out (c),e
	ld bc,#f680
	out (c),c
	out (c),a
	dec hl
	dec d
	jp p,l0130
	ret
.l014d
	db #01
.l014e
	dw l0233,l021c,l0221,l0227
	dw l01e4,l0216,l0212,l017b
	dw l0203,l01fb,l01c1,l01ad
	dw l01d4,l022d,l016e,l0175
.l016e
	ld (ix+#2e),#01
	jp l0247
.l0175
	ld (ix+#2e),b
	jp l0247
.l017b
	ld c,(ix+#0a)
	ld b,(ix+#0b)
	ld l,(ix+#06)
	ld h,(ix+#07)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l01a2
	ld a,#01		; reinit next bloc
	ld (l03fd),a
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l01a2
	ld (ix+#0a),c
	ld (ix+#0b),b
	ld b,#00
	jp l0247
.l01ad
	ld a,(ix+#2f)
	ld c,a
	and #07
	ld hl,l03db
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld (ix+#2d),#01
	jp l0247
.l01c1
	ld a,(ix+#2f)
	ld c,a
	and #38
	ld hl,l03db
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld (ix+#2d),b
	jp l0247
.l01d4
	ld hl,l03db
	ld a,(ix+#2f)
	cpl
	and (hl)
	ld (hl),a
	ld (ix+#2d),#01
	jp l0247
.l01e4
	ld a,(de)
	inc de
	ld (ix+#18),a
	ld a,(de)
	inc de
	ld (ix+#19),a
	ld (ix+#0e),b
	ld (ix+#0f),b
	set 2,(ix+#00)
	jp l0247
.l01fb
	ld a,(de)
	inc de
	ld (l03fa),a
	jp l0247
.l0203
	ld a,(de)
	inc de
	ld (ix+#2a),a
	ld (ix+#29),a
	ld a,(de)
	inc de
	ld (ix+#2b),a
	jr l0247
.l0212
	set 7,(ix+#00)
.l0216
	set 3,(ix+#00)
	jr l0247
.l021c
	ld (ix+#2c),b
	jr l0247
.l0221
	ld (ix+#2c),#40
	jr l0247
.l0227
	ld (ix+#2c),#c0
	jr l0247
.l022d
	set 1,(ix+#00)
	jr l0247
.l0233
	ld (ix+#1e),b
	jr l0281
.l0238
	dec (ix+#1b)
	jp nz,l028e
	ld (ix+#00),b
	ld e,(ix+#02)
	ld d,(ix+#03)
.l0247
	ld a,(de)
	inc de
	and a
	jp m,l029f
	ld (ix+#1d),a
	ld c,a
	ld a,(ix+#2d)
	or a
	jr z,l025b
	ld a,c
	ld (l00d6),a
.l025b
	ld l,(ix+#24)
	ld h,(ix+#25)
	ld a,(ix+#2e)
	or a
	jr nz,l026d
	ld (ix+#20),l
	ld (ix+#21),h
.l026d
	ld a,(hl)
	ld (ix+#28),a
	ld (ix+#1e),a
	ld (ix+#2e),b
	ld a,(ix+#1a)
	ld (ix+#1f),a
	set 5,(ix+#00)
.l0281
	ld a,(ix+#1c)
	ld (ix+#1b),a
	ld (ix+#02),e
	ld (ix+#03),d
	ret
.l028e
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l029b
	inc (ix+#1d)
	ret
.l029b
	dec (ix+#1d)
	ret
.l029f
	cp #b8
	jr c,l02f0
	add #20
	jr c,l02d0
	add #10
	jr c,l02d7
	add #10
	jr nc,l02c8
	sla a
	ld c,a
	ld hl,l04cc
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld (ix+#14),a
	ld (ix+#10),a
	ld (ix+#15),h
	ld (ix+#11),h
	jp l0247
.l02c8
	add #09
	ld (l00fb),a
	jp l0247
.l02d0
	inc a
	ld (ix+#1c),a
	jp l0247
.l02d7
	sla a
	ld c,a
	ld hl,(l03fb)
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#24),a
	ld (ix+#25),h
	dec hl
	ld a,(hl)
	ld (ix+#1a),a
	jp l0247
.l02f0
	and #7f
	ld hl,l014e
	sla a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l02fe
	ld c,(ix+#00)
	bit 5,c
	jr z,l0330
	dec (ix+#1f)
	ld a,(ix+#1f)
	cp #ff
	jr nz,l032a
	ld a,(ix+#1a)
	ld (ix+#1f),a
	ld l,(ix+#20)
	ld h,(ix+#21)
	inc hl
	ld a,(hl)
	cp #87
	jr z,l032a
	ld (ix+#28),a
	ld (ix+#20),l
	ld (ix+#21),h
.l032a
	ld a,(ix+#28)
	ld (ix+#1e),a
.l0330
	ld hl,l03fa
	ld a,(ix+#1d)
	add (hl)
	ld e,a
	ld l,(ix+#14)
	ld h,(ix+#15)
	ld a,(hl)
	cp #87
	jr nz,l034a
	ld l,(ix+#10)
	ld h,(ix+#11)
	ld a,(hl)
.l034a
	inc hl
	ld (ix+#14),l
	ld (ix+#15),h
	add e
	add a
	ld e,a
	ld d,#00
	ld hl,l040c
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld l,(ix+#2c)
	bit 6,l
	jr z,l03ac
	ld h,a
	ld b,(ix+#29)
	sla b
	bit 7,l
	ld a,(ix+#2b)
	jr z,l0375
	bit 0,c
	jr nz,l0393
.l0375
	bit 5,l
	jr nz,l0385
	sub (ix+#2a)
	jr nc,l0390
	set 5,(ix+#2c)
	sub a
	jr l0390
.l0385
	add (ix+#2a)
	cp b
	jr c,l0390
	res 5,(ix+#2c)
	ld a,b
.l0390
	ld (ix+#2b),a
.l0393
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l039e
	dec d
.l039e
	add #a0
	jr c,l03aa
.l03a2
	sla e
	rl d
	add #18
	jr nc,l03a2
.l03aa
	add hl,de
	ex de,hl
.l03ac
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,a
	jr z,l03d7
	ld b,(ix+#19)
	djnz l03d4
	ld c,(ix+#18)
	bit 7,c
	jr z,l03c3
	dec b
.l03c3
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	add hl,bc
	ld (ix+#0e),l
	ld (ix+#0f),h
	add hl,de
	ex de,hl
	jr l03d7
.l03d4
	ld (ix+#19),b
.l03d7
	cpl
	and #03
.l03db equ $ + 1
	ld a,#38
	jr nz,l03e8
	ld a,(l00d6)
	xor #08
	ld (l0124),a
	ld a,#07
.l03e8
	ld hl,l0405
	xor (hl)
	and (ix+#2f)
	xor (hl)
	ld (hl),a
	ex de,hl
	srl h
	rr l
	ld a,(ix+#1e)
	ret
.l0400 equ $ + 6
.l03fe equ $ + 4
.l03fd equ $ + 3
.l03fb equ $ + 1
.l03fa
	db #00,#3f,#05,#00,#00,#00,#00,#00
.l0408 equ $ + 6
.l0407 equ $ + 5
.l0406 equ $ + 4
.l0405 equ $ + 3
.l0404 equ $ + 2
.l0402
	db #00,#00,#00,#38,#0f,#0f,#0e,#00
.l040b equ $ + 1
	db #00,#00
.l040c
	dw #ee0e,#170e,#4d0d,#8e0c
	dw #d90b,#2f0b,#8e0a,#f709
	dw #6709,#e008,#6108,#e807
	dw #7707,#0b07,#a606,#4706
	dw #ec05,#9705,#4705,#fb04
	dw #b304,#7004,#3004,#f403
	dw #bb03,#8503,#5303,#2303
	dw #f602,#cb02,#a302,#7d02
	dw #5902,#3802,#1802,#fa01
	dw #dd01,#c201,#a901,#9101
	dw #7b01,#6501,#5101,#3e01
	dw #2c01,#1c01,#0c01,#fd00
	dw #ee00,#e100,#d400,#c800
	dw #bd00,#b200,#a800,#9f00
	dw #9600,#8e00,#8600,#7e00
	dw #7700,#7000,#6a00,#6400
	dw #5e00,#5900,#5400,#4f00
	dw #4b00,#4700,#4300,#3f00
	dw #3b00,#3800,#3500,#3200
	dw #2f00,#2c00,#2a00,#2700
	dw #2500,#2300,#2100,#1f00
	dw #1d00,#1c00,#1a00,#1900
	dw #1700,#1600,#1500,#1300
	dw #1200,#1100,#1000,#0f00
.l04cc
	dw l04ee,l04f0,l04f4,l04f8
	dw l04fe,l0504,l0508,l050c
	dw l0510,l0514,l0518,l051c
	dw l0520,l0524,l0528
.l04f0 equ $ + 6
.l04ee equ $ + 4
	db #00,#00,#00,#00,#00,#87,#00,#03
.l04f8 equ $ + 6
.l04f4 equ $ + 2
	db #07,#87,#00,#04,#07,#87,#00,#03
.l04fe equ $ + 4
	db #07,#0c,#87,#00,#00,#04,#07,#0c
.l0508 equ $ + 6
.l0504 equ $ + 2
	db #87,#00,#07,#0c,#0f,#87,#07,#0c
.l0510 equ $ + 6
.l050c equ $ + 2
	db #10,#87,#03,#07,#0c,#87,#04,#07
.l0518 equ $ + 6
.l0514 equ $ + 2
	db #0c,#87,#00,#0c,#87,#00,#00,#04
.l0520 equ $ + 6
.l051c equ $ + 2
	db #87,#00,#00,#03,#87,#00,#00,#03
.l0528 equ $ + 6
.l0524 equ $ + 2
	db #87,#00,#00,#05,#87,#00,#00,#00
	db #00,#0c,#87,#00
.l052e
	db #01
	dw l081f,l0823,l0857
	db #00,#00,#3f,#05,#00,#00,#00,#00
	db #00,#00,#4f,#05,#5f,#05,#6f,#05
	db #7f,#05,#8f,#05,#9f,#05,#af,#05
	db #bf,#05,#31,#13,#3e,#12,#b6,#8c
	db #b6,#05,#2f,#05,#2f,#05,#2f,#05
	db #2f,#05,#07,#02,#0d,#0d,#0d,#0d
	db #0d,#0d,#0b,#0c,#0c,#87,#00,#00
	db #00,#00,#02,#0d,#0d,#0a,#0a,#09
	db #08,#09,#08,#09,#08,#87,#00,#00
	db #00,#00,#02,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#87,#02
	db #01,#87,#0d,#0d,#0d,#87,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#02,#0f,#0e,#0d,#87,#87
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#02,#0e,#0d,#0e,#0d,#0b
	db #0d,#0c,#0d,#0c,#0d,#0b,#0b,#0a
	db #0a,#87,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#06,#01,#30,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#06,#01,#30,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#06,#01,#30,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#b9,#89,#f4,#e0,#80,#87
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d1,#88,#01,#01,#82,#8a
	db #e3,#3f,#41,#3f,#41,#ef,#3a,#e7
	db #80,#e3,#3f,#44,#41,#3f,#e7,#41
	db #e3,#3f,#41,#3f,#3d,#e7,#3f,#3a
	db #ff,#80,#87,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d1,#88,#01,#02,#82,#8a
	db #c0,#e7,#e7,#18,#d2,#e3,#8d,#10
	db #8d,#10,#d1,#e3,#1b,#1c,#d2,#8d
	db #10,#d1,#18,#80,#18,#d2,#8d,#10
	db #8d,#10,#d1,#1d,#1c,#d2,#8d,#10
	db #8d,#10,#87,#00,#00,#00,#00,#00
	db #00,#b9,#d3,#c9,#88,#01,#01,#82
	db #8a,#e7,#3f,#44,#46,#44,#4b,#44
	db #46,#44,#87,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #89,#f4,#d1,#88,#01,#01,#82,#c0
	db #ef,#20,#d2,#e7,#8d,#10,#d1,#20
	db #20,#20,#d2,#8d,#10,#d1,#1b,#87
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d1,#88,#01,#01,#82,#8a
	db #ef,#1d,#d2,#e7,#8d,#10,#d1,#1d
	db #1d,#1d,#d2,#8d,#10,#d1,#18,#87
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d1,#88,#01,#01,#82,#8a
	db #ef,#19,#d2,#e7,#8d,#10,#d1,#19
	db #19,#19,#d2,#8d,#10,#d1,#20,#87
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d1,#88,#01,#01,#82,#8a
	db #ef,#1b,#d2,#e7,#8d,#10,#d1,#1b
	db #1b,#1b,#d2,#8d,#10,#d1,#22,#87
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d4,#88,#01,#02,#82,#c0
	db #8a,#89,#f4,#ff,#3c,#3c,#ef,#3c
	db #d5,#e3,#3d,#3c,#3d,#3c,#e7,#3d
	db #3f,#3d,#3c,#3d,#ef,#3c,#d4,#f7
	db #38,#ff,#38,#d5,#87,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d5,#e7,#35,#f7,#3d,#ef
	db #3c,#e7,#3c,#ef,#3a,#e7,#3a,#d4
	db #ff,#3a,#3a,#3a,#d5,#87,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#e7,#80,#88,#01,#02,#82
	db #d5,#ef,#3c,#f7,#3f,#e7,#3d,#3c
	db #80,#ef,#3c,#f7,#3c,#e7,#3a,#38
	db #87,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d6,#88,#00,#01,#ce,#82
	db #8a,#e7,#44,#48,#49,#48,#44,#49
	db #48,#49,#87,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d4,#88,#01,#01,#82,#8a
	db #c0,#e3,#44,#84,#ff,#02,#44,#84
	db #00,#02,#46,#84,#01,#02,#46,#ff
	db #44,#d4,#ef,#3f,#87,#00,#00,#00
	db #00,#00,#d4,#e3,#4b,#84,#ff,#02
	db #4b,#4d,#84,#01,#02,#4d,#ff,#4b
	db #ef,#49,#e3,#46,#84,#ff,#02,#46
	db #48,#84,#01,#02,#48,#ff,#46,#ef
.l0823 equ $ + 6
.l081f equ $ + 2
	db #46,#87,#ae,#06,#00,#00,#4f,#07
	db #5e,#07,#7f,#07,#4f,#07,#5e,#07
	db #7f,#07,#9f,#07,#9f,#07,#9f,#07
	db #9f,#07,#bf,#07,#bf,#07,#bf,#07
	db #bf,#07,#bf,#07,#bf,#07,#bf,#07
	db #bf,#07,#df,#07,#df,#07,#df,#07
	db #df,#07,#df,#07,#df,#07,#ff,#07
.l0857 equ $ + 2
	db #00,#00,#cd,#06,#cf,#06,#ef,#06
	db #ef,#06,#0f,#07,#0f,#07,#2f,#07
	db #2f,#07,#00,#00,#84,#48,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
;
.music_info
	db "Amazing End Part (1989)(Logon System)()",0
	db "Atari ST Transfert by Longshot",0

	read "music_end.asm"
