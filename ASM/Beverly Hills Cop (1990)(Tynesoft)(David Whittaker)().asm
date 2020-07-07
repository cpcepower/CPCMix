; Music of Beverly Hills Cop (1990)(Tynesoft)(David Whittaker)()
; Ripped by Megachur the 08/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BEVERLHC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #9ebd

	read "music_header.asm"

;
.init_music
;
	call la05a
	ld b,#00
	ld hl,la4ea
	ld a,(hl)
	ld (l9f83),a
	ld (la305),a
	inc hl
	ld ix,l9f12
	ld c,#22
	ld a,#03
.l9ed5
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#20),b
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
	jr nz,l9ed5
	ld (la23e),a
	dec a
	ld (la306),a
	ld (la303),a
	ret
.l9f12
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l9f34
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l9f56
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(la303)
	and a
	ret z
.l9f7e equ $ + 1
	ld a,#00
	ld (l9fca),a
.l9f83 equ $ + 1
	ld a,#01
	ld hl,la306
	add (hl)
	ld (hl),a
	jr nc,l9fa2
	ld b,#00
	ld ix,l9f12
	call la173
	ld ix,l9f34
	call la173
	ld ix,l9f56
	call la173
.l9fa2
	ld ix,l9f12
	call la20b
	ld (la307),hl
	ld (la30f),a
	ld ix,l9f34
	call la20b
	ld (la309),hl
	ld (la310),a
	ld ix,l9f56
	call la20b
	ld (la30b),hl
	ld (la311),a
.l9fca equ $ + 1
	ld a,#00
	ld (la30d),a
	ld a,(la303)
	and a
	jr nz,l9fe4
	ld (la30f),a
	ld (la310),a
	ld (la311),a
	ld a,#3f
	ld (la30e),a
	jr la00c
.l9fe4
	ld a,(la304)
	and #0f
	xor #0f
.l9fec equ $ + 1
	jr z,la00c
	ld b,a
	ld a,(la30f)
	sub b
	jr nc,l9ff5
	xor a
.l9ff5
	ld (la30f),a
	ld a,(la310)
	sub b
	jr nc,l9fff
	xor a
.l9fff
	ld (la310),a
	ld a,(la311)
	sub b
	jr nc,la009
	xor a
.la009
	ld (la311),a
.la00c
	ld hl,la311
	ld d,#0a
.la011
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
	jp p,la011
	ret
.la032
	ld de,#0a00
.la035
	call la03f
	dec d
	jp p,la035
	ld de,#073f
.la03f
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
.stop_music
.la05a
;
	xor a
	ld (la303),a
	call la032
	xor a
	ld (la30f),a
	ld (la310),a
	ld (la311),a
	ret
	db #f1,#d5,#ce,#d8,#9b,#e0,#db,#32
	db #bb,#ac,#71,#5b,#83,#de,#27,#eb
	db #ec,#f1,#aa,#0a,#01,#1a,#13
	ld (l9f83),a
	jp la181
	ld a,(de)
	ld (ix+#03),a
	ld l,a
	inc de
	ld a,(de)
	ld (ix+#04),a
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	jp la181
	pop hl
	jp la05a
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
	jr nz,la0c7
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.la0c7
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp la181
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,la2ce
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp la181
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,la2ce
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp la181
	ld hl,la2ce
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr la181
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr la181
	ld a,(de)
	inc de
	ld (la23e),a
	jr la181
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr la181
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr la181
	ld (ix+#1d),b
	jr la181
	ld (ix+#1d),#c0
	jr la181
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr la181
	set 1,(ix+#00)
	jr la181
	ld (ix+#13),b
	res 5,(ix+#00)
	jr la1b0
	jr la1ac
	ld (ix+#1f),#ff
	jr la181
	ld (ix+#1f),b
	jr la181
.la173
	dec (ix+#10)
	jr nz,la1c7
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.la181
	ld a,(de)
	inc de
	and a
	jp m,la1d8
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,la193
	ld (l9f7e),a
.la193
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.la1ac
	set 5,(ix+#00)
.la1b0
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,la1c6
	ld (ix+#1f),#ff
.la1c6
	ret
.la1c7
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,la1d4
	inc (ix+#12)
	ret
.la1d4
	dec (ix+#12)
	ret
.la1d8
	cp #c0
	jr c,la203
	add #20
	jr c,la1e4
	add #10
	jr c,la1eb
.la1e4
	inc a
	ld (ix+#11),a
	jp la181
.la1eb
	ld hl,la3d4
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp la181
.la203
	ld hl,l9fec
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.la20b
	ld c,(ix+#00)
	bit 5,c
	jr z,la23d
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,la237
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,la237
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.la237
	ld a,(ix+#18)
	ld (ix+#13),a
.la23e equ $ + 1
.la23d
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld hl,la314
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,la29f
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,la268
	bit 0,c
	jr nz,la286
.la268
	bit 5,l
	jr nz,la278
	sub (ix+#1b)
	jr nc,la283
	set 5,(ix+#1d)
	sub a
	jr la283
.la278
	add (ix+#1b)
	cp b
	jr c,la283
	res 5,(ix+#1d)
	ld a,b
.la283
	ld (ix+#1c),a
.la286
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,la291
	dec d
.la291
	add #a0
	jr c,la29d
.la295
	sla e
	rl d
	add #18
	jr nc,la295
.la29d
	add hl,de
	ex de,hl
.la29f
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,la2ca
	ld b,(ix+#0e)
	djnz la2c7
	ld c,(ix+#0d)
	bit 7,c
	jr z,la2b6
	dec b
.la2b6
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr la2ca
.la2c7
	ld (ix+#0e),b
.la2ca
	cpl
	and #03
.la2ce equ $ + 1
	ld a,#38
	jr nz,la2db
	ld a,(l9f7e)
	xor #08
	ld (l9fca),a
	ld a,#07
.la2db
	ld hl,la30e
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,la2fe
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l9fca),a
.la2fe
	ex de,hl
	ld a,(ix+#13)
	ret
.la309 equ $ + 6
.la307 equ $ + 4
.la306 equ $ + 3
.la305 equ $ + 2
.la304 equ $ + 1
.la303
.music_end
	db #00,#0f,#00,#00,#00,#00,#00,#00
.la311 equ $ + 6
.la310 equ $ + 5
.la30f equ $ + 4
.la30e equ $ + 3
.la30d equ $ + 2
.la30b
	db #00,#00,#00,#3f,#0f,#0f,#0f,#00
	db #00
.la314
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
.la3d4
	dw la3f5,la406,la412,la424
	dw la436,la449,la45a,la46d
	dw la472,la483,la494,la4a3
	dw la4b4,la4c3,la4d4,la4e4
.la3f5 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.la406 equ $ + 2
	db #87,#01,#0e,#0d,#0b,#09,#07,#05
.la412 equ $ + 6
	db #04,#03,#02,#01,#87,#01,#0f,#0e
	db #0d,#0b,#0d,#0c,#0a,#09,#0b,#0a
	db #08,#07,#09,#08,#06,#05,#87,#01
.la424
	db #0f,#0f,#0d,#0b,#0d,#0c,#0a,#09
	db #0b,#0a,#08,#07,#09,#08,#06,#05
.la436 equ $ + 2
	db #87,#01,#0d,#0e,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.la449 equ $ + 5
	db #03,#02,#01,#87,#01,#0c,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.la45a equ $ + 6
	db #04,#03,#02,#01,#87,#02,#0d,#0e
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.la472 equ $ + 6
.la46d equ $ + 1
	db #01,#0b,#0d,#0e,#87,#05,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.la483 equ $ + 7
	db #05,#04,#03,#02,#01,#87,#06,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#0c
.la494
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.la4a3 equ $ + 7
	db #05,#04,#03,#02,#01,#87,#03,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#07
.la4b4
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.la4c3 equ $ + 7
	db #05,#04,#03,#02,#01,#87,#02,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#02
.la4d4
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#01
.la4e4
	db #0c,#09,#07,#04,#01,#87
.la4ea
	db #28
	dw la517,la4f1,la575
.la4f1
	dw la597,la5c6,la5fb,la5fb
	dw la5c6,la5c6,la5fb,la5fb
	dw la5fb,la5fb,la66b,la66b
	dw la7f8,la66b,la66b,la7f5
	dw la5c6,la5c6,#0000
.la517
	dw la6de,la6de,la708,la708
	dw la740,la740,la740,la740
	dw la740,la740,la740,la740
	dw la740,la740,la740,la740
	dw la740,la740,la740,la740
	dw la708,la708,la740,la740
	dw la740,la740,la740,la740
	dw la740,la740,la740,la740
	dw la740,la740,la740,la740
	dw la740,la740,la740,la740
	dw la740,la740,la740,la740
	dw la740,la740,#0000
.la575
	dw la754,la754,la781,la781
	dw la7fb,la7e3,la754,la754
	dw la781,la781,la7b9,la7b9
	dw la7b9,la7b9,la7fb,la7e3
	dw #0000
.la597
	db #8c,#d0,#90,#ed,#80,#e1,#84,#28
	db #01,#24,#ed,#84,#28,#01,#24,#e1
	db #84,#28,#01,#24,#ed,#84,#28,#01
	db #24,#e1,#84,#28,#01,#24,#e8,#84
	db #28,#01,#24,#8a,#db,#88,#01,#01
.la5c6 equ $ + 7
	db #e0,#0f,#e1,#0c,#0a,#08,#87,#88
	db #01,#01,#8a,#db,#e3,#05,#e2,#11
	db #e1,#0f,#e0,#0f,#e1,#0c,#0c,#0f
	db #e3,#05,#e4,#11,#e0,#0f,#e1,#0c
	db #0f,#11,#e3,#0d,#e2,#0d,#e1,#0f
	db #e0,#0f,#e1,#0c,#0f,#d9,#05,#e8
	db #84,#04,#14,#11,#db,#e0,#0f,#e1
.la5fb equ $ + 4
	db #0c,#0a,#08,#87,#8a,#db,#e3,#05
	db #d0,#e2,#8c,#84,#28,#01,#8d,#30
	db #db,#8a,#e1,#0f,#e0,#0f,#e1,#0c
	db #d0,#8c,#84,#28,#01,#2b,#db,#8a
	db #0f,#e3,#11,#d0,#e2,#8c,#84,#28
	db #01,#8d,#30,#db,#8a,#e1,#05,#e0
	db #0f,#e1,#0c,#d0,#8c,#84,#28,#01
	db #2b,#8a,#db,#11,#e3,#0d,#d0,#e2
	db #8c,#84,#28,#01,#8d,#30,#db,#8a
	db #e1,#0f,#e0,#0f,#e1,#0c,#d0,#8c
	db #84,#28,#01,#2b,#8a,#db,#11,#e3
	db #11,#d0,#e2,#8c,#84,#28,#01,#8d
	db #30,#db,#8a,#e1,#11,#e0,#0f,#e1
	db #0c,#d0,#8c,#84,#28,#01,#2b,#8a
.la66b equ $ + 4
	db #8a,#db,#08,#87,#8a,#db,#e3,#11
	db #d0,#e2,#8c,#84,#28,#01,#30,#db
	db #8a,#e1,#11,#e0,#11,#e1,#11,#d0
	db #8c,#84,#28,#01,#30,#db,#8a,#11
	db #92,#fe,#e3,#11,#d0,#e2,#8c,#84
	db #28,#01,#30,#db,#8a,#e1,#11,#e0
	db #11,#e1,#11,#d0,#8c,#84,#28,#01
	db #30,#db,#8a,#11,#92,#fd,#e3,#11
	db #d0,#e2,#8c,#84,#28,#01,#30,#db
	db #8a,#e1,#11,#e0,#11,#e1,#11,#d0
	db #8c,#84,#28,#01,#30,#db,#8a,#11
	db #92,#fe,#e3,#11,#d0,#e2,#8c,#84
	db #28,#01,#30,#db,#8a,#e1,#11,#e0
	db #11,#e1,#11,#d0,#8c,#84,#28,#01
.la6de equ $ + 7
	db #30,#db,#8a,#11,#92,#00,#87,#81
	db #8a,#d5,#e3,#29,#e2,#2c,#e1,#29
	db #e0,#29,#e1,#2e,#29,#27,#e3,#29
	db #e2,#30,#e1,#29,#e0,#29,#e1,#31
	db #30,#2c,#29,#30,#35,#e0,#29,#e1
	db #27,#e0,#27,#e1,#24,#2b,#f1,#29
.la708 equ $ + 1
	db #87,#8a,#88,#01,#01,#e1,#80,#d5
	db #2d,#2d,#e0,#2d,#e1,#30,#30,#e0
	db #30,#e1,#2e,#2e,#8f,#2d,#2d,#e0
	db #2d,#e1,#30,#e0,#30,#e1,#2e,#e5
	db #2d,#e1,#29,#29,#29,#e0,#29,#e1
	db #2b,#2b,#e0,#2b,#e1,#2b,#2b,#2d
	db #2d,#2d,#e0,#2b,#e1,#2d,#e4,#2d
.la740 equ $ + 1
	db #87,#8b,#df,#e0,#41,#41,#41,#41
	db #41,#41,#41,#41,#41,#41,#41,#41
.la754 equ $ + 5
	db #41,#41,#41,#41,#87,#8a,#88,#01
	db #01,#d4,#e3,#29,#e2,#2c,#e1,#29
	db #e0,#29,#e1,#2e,#29,#27,#e3,#29
	db #e2,#30,#e1,#29,#e0,#29,#e1,#31
	db #30,#2c,#29,#30,#35,#e0,#29,#e1
	db #27,#e0,#27,#e1,#24,#2b,#f1,#d6
.la781 equ $ + 2
	db #29,#87,#88,#01,#01,#e1,#80,#d5
	db #30,#30,#e0,#30,#e1,#33,#33,#e0
	db #33,#e1,#32,#32,#8f,#30,#30,#e0
	db #30,#e1,#33,#e0,#33,#e1,#32,#e5
	db #30,#e1,#2c,#2c,#2c,#e0,#2c,#e1
	db #2e,#2e,#e0,#2e,#e1,#2e,#2e,#30
	db #30,#30,#e0,#2e,#e1,#30,#d4,#e4
.la7b9 equ $ + 2
	db #30,#87,#dd,#e2,#29,#24,#29,#24
	db #e0,#29,#29,#e1,#24,#e2,#29,#24
	db #29,#24,#e0,#29,#29,#e1,#24,#e2
	db #29,#24,#29,#24,#e0,#29,#29,#e1
	db #24,#e2,#29,#24,#29,#24,#e0,#24
.la7e3 equ $ + 4
	db #26,#29,#2b,#87,#8a,#88,#01,#01
	db #dc,#e5,#41,#e7,#3f,#3c,#e5,#3a
.la7f5 equ $ + 6
	db #e3,#38,#da,#ff,#35,#87,#89,#00
.la7fb equ $ + 4
.la7f8 equ $ + 1
	db #87,#89,#03,#87,#ff,#80,#80,#87
;
.music_info
	db "Beverly Hills Cop (1990)(Tynesoft)(David Whittaker)",0
	db "",0

	read "music_end.asm"
