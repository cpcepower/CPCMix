; Music of Disc Mac Challenge Issue 20 - Music 1 (1996)(Hypnomega)()(ST-Module)
; Ripped by Megachur the 06/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DMCI20M1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #3000

	read "music_header.asm"

	jp l300b
	jp l3093
	jp l3077
	db #66,#04
;
.init_music
.l300b
;
	ld b,#03
	ld ix,l33da
	ld iy,l3306
	ld de,#001c
.l3018
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l3018
	ld a,#06
	ld (l30bb),a
	ld a,d
	ld (l30cf),a
	inc a
	ld (l30b6),a
	ld a,#38
	ld (l30c0),a
	ld a,#ff
	ld (l3302),a
	ld (l3303),a
	ld (l3304),a
	ld (l3305),a
	ld a,#0c
	ld c,d
	call l32e4
	ld a,#0d
	ld c,d
	jp l32e4
;
.stop_music
.l3077
;
	ld a,#07
	ld c,#3f
	call l32e4
	ld a,#08
	ld c,#00
	call l32e4
	ld a,#09
	ld c,#00
	call l32e4
	ld a,#0a
	ld c,#00
	jp l32e4
;
.play_music
.l3093
;
	ld hl,l30b6
	dec (hl)
	ld ix,l33da
	ld bc,l33e8
	call l3149
	ld ix,l33f6
	ld bc,l3404
	call l3149
	ld ix,l3412
	ld bc,l3420
	call l3149
.l30b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l30bf
.l30bb equ $ + 1
	ld a,#00
	ld (l30b6),a
.l30c0 equ $ + 1
.l30bf
	ld a,#00
	ld hl,l3303
	cp (hl)
	jr z,l30ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l32e4
.l30cf equ $ + 1
.l30ce
	ld a,#00
	ld hl,l3302
	cp (hl)
	jr z,l30dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l32e4
.l30de equ $ + 1
.l30dd
	ld a,#00
	ld hl,l3304
	cp (hl)
	jr z,l30ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l32e4
.l30ed equ $ + 1
.l30ec
	ld a,#00
	ld hl,l3305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l32e4
.l30fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l31fa
.l3109
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l32e4
.l3123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l3138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l3138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l315c
.l3149
	ld a,(l30b6)
	or a
	jp nz,l31fa
	dec (ix+#06)
	jp nz,l31fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l315c
	ld a,(hl)
	or a
	jr z,l30fa
	cp #fe
	jr z,l3109
	cp #ff
	jr z,l3123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l330c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l3198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l3198
	and #7f
	ld (ix+#06),a
	jr l31eb
.l3198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l31ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l31ac
	add a
	add a
	add a
	ld e,a
	ld hl,l3442
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l31eb
	cp #f0
	jp z,l32a0
	cp #d0
	jp z,l32bc
	cp #b0
	jp z,l32c4
	cp #80
	jp nc,l32cc
	cp #10
	jr nz,l31eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l31eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l31fa
	ld a,(ix+#17)
	or a
	jr nz,l320e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l320e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l3239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l330c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l3239
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l32e4
	ld c,h
	ld a,(ix+#03)
	call l32e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l3277
	and #0f
	sub (ix+#0a)
	jr nc,l326d
	xor a
.l326d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l32e4
.l3277
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l3294
	ld b,a
	ld a,c
	ld (l30cf),a
	ld a,b
	sub #40
.l3294
	ld (l329b),a
	ld a,(l30c0)
.l329b equ $ + 1
	bit 0,a
	ld (l30c0),a
	ret
.l32a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l34c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l31eb
.l32bc
	inc hl
	ld a,(hl)
	ld (l30bb),a
	jp l31eb
.l32c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l31eb
.l32cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l30ed),a
	inc hl
	ld a,(hl)
	ld (l30de),a
	jp l31eb
.l32e4
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
	ret
.l3305 equ $ + 3
.l3304 equ $ + 2
.l3303 equ $ + 1
.l3302
	db #ff,#ff,#ff,#ff
.l3306
	dw l3722,l373d,l3758
.l330c
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
	dw #000f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l33da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l33e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l33f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l3404 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3412 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l3420 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l3442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#34,#22,#35
	db #42,#35,#00,#00,#62,#35,#a2,#35
	db #c2,#35,#00,#00,#dc,#2e,#dc,#2e
	db #dc,#2e,#00,#00,#dc,#2e,#dc,#2e
	db #dc,#2e,#00,#00,#dc,#2e,#dc,#2e
	db #dc,#2e,#00,#00,#dc,#2e,#dc,#2e
	db #dc,#2e,#00,#00,#e2,#35,#22,#36
	db #42,#36,#00,#00,#62,#36,#a2,#36
	db #42,#35,#18,#07,#c2,#36,#02,#37
	db #42,#35,#18,#07,#dc,#2e,#b8,#5d
	db #94,#8c,#b8,#5d,#94,#8c,#b8,#5d
	db #94,#8c,#b8,#5d,#b8,#5d,#5c,#2f
	db #f8,#5e,#7c,#30,#f8,#5f,#a0,#60
	db #fe,#65,#42,#37,#b8,#5d,#b8,#5d
	db #b8,#5d,#dc,#2e,#b8,#5d,#b8,#5d
	db #b8,#5d,#dc,#2e,#b8,#5d,#b8,#5d
.l34c2 equ $ + 4
	db #dc,#2e,#00,#00,#dc,#2e,#dc,#2e
	db #dc,#2e,#dc,#2e,#dc,#2e,#dc,#2e
	db #dc,#2e,#dc,#2e,#dc,#2e,#dc,#2e
	db #dc,#2e,#dc,#2e,#dc,#2e,#dc,#2e
	db #dc,#2e,#dc,#2e,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#40,#00
	db #80,#00,#c0,#00,#00,#01,#40,#01
	db #80,#01,#c0,#01,#00,#02,#40,#02
	db #80,#02,#c0,#02,#00,#03,#40,#03
	db #80,#03,#c0,#03,#00,#04,#40,#04
	db #80,#04,#c0,#04,#00,#05,#40,#05
	db #80,#05,#c0,#05,#00,#06,#40,#06
	db #80,#06,#c0,#06,#00,#07,#40,#07
	db #80,#07,#c0,#07,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#03,#00,#00,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#38,#00,#60,#00
	db #b0,#00,#18,#01,#48,#01,#80,#01
	db #c8,#01,#10,#02,#58,#02,#b0,#02
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0c,#0b,#09,#07,#06,#03,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#05
	db #04,#04,#03,#02,#01,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#07,#06,#06
	db #06,#05,#05,#05,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0e,#0e,#0e,#0d
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#07
	db #05,#07,#09,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#09
.l3722 equ $ + 4
	db #09,#09,#09,#09,#00,#73,#37,#00
	db #8f,#37,#00,#ab,#37,#00,#bd,#37
	db #00,#dc,#37,#00,#f9,#37,#00,#dc
.l373d equ $ + 7
	db #37,#00,#dc,#37,#80,#22,#37,#00
	db #16,#38,#00,#1e,#38,#00,#26,#38
	db #00,#32,#38,#00,#3e,#38,#00,#3e
	db #38,#00,#80,#38,#00,#80,#38,#80
.l3758 equ $ + 2
	db #3d,#37,#00,#c2,#38,#00,#de,#38
	db #00,#fa,#38,#00,#fa,#38,#00,#0c
	db #39,#00,#28,#39,#00,#44,#39,#00
	db #44,#39,#80,#58,#37,#00,#06,#3f
	db #02,#00,#3f,#82,#3f,#82,#3a,#84
	db #3a,#82,#3a,#84,#3a,#90,#3f,#82
	db #3f,#82,#3f,#82,#41,#82,#3f,#92
	db #ff,#00,#06,#3f,#02,#00,#3f,#82
	db #3f,#82,#3a,#84,#3a,#82,#3f,#84
	db #3e,#92,#3f,#82,#3f,#82,#3f,#82
	db #41,#82,#3f,#90,#ff,#00,#08,#38
	db #02,#00,#38,#86,#3a,#82,#3a,#8a
	db #3a,#84,#3c,#84,#30,#9c,#ff,#00
	db #08,#38,#02,#00,#38,#86,#3a,#82
	db #3a,#8a,#3a,#84,#3c,#84,#30,#8c
	db #37,#03,#01,#35,#83,#33,#83,#32
	db #83,#30,#82,#2e,#82,#ff,#2e,#08
	db #01,#3a,#06,#06,#3a,#82,#2e,#08
	db #01,#3a,#08,#06,#2e,#08,#01,#3a
	db #06,#06,#3a,#82,#2e,#08,#01,#3a
	db #08,#06,#ff,#2e,#08,#01,#3a,#06
	db #06,#3a,#82,#2e,#08,#01,#3a,#08
	db #06,#2e,#08,#01,#3a,#06,#06,#3a
	db #82,#2e,#08,#01,#3a,#08,#06,#ff
	db #27,#10,#07,#22,#90,#24,#a0,#ff
	db #27,#10,#07,#22,#90,#24,#a0,#ff
	db #20,#10,#07,#22,#90,#24,#98,#24
	db #84,#22,#84,#ff,#20,#10,#07,#22
	db #90,#24,#98,#24,#84,#22,#84,#ff
	db #27,#02,#00,#27,#82,#27,#82,#27
	db #82,#27,#82,#27,#82,#27,#82,#27
	db #82,#22,#82,#22,#82,#22,#82,#22
	db #82,#22,#82,#22,#82,#22,#82,#22
	db #82,#24,#82,#24,#82,#24,#82,#24
	db #82,#24,#82,#24,#82,#24,#82,#24
	db #82,#24,#82,#24,#82,#24,#82,#24
	db #82,#24,#82,#24,#82,#24,#82,#24
	db #82,#ff,#20,#02,#00,#20,#82,#20
	db #82,#20,#82,#20,#82,#20,#82,#20
	db #82,#20,#82,#22,#82,#22,#82,#22
	db #82,#22,#82,#22,#82,#22,#82,#22
	db #82,#22,#82,#24,#82,#24,#82,#24
	db #82,#24,#82,#24,#82,#24,#82,#24
	db #82,#24,#82,#24,#82,#24,#82,#24
	db #82,#24,#82,#22,#82,#22,#82,#22
	db #82,#22,#82,#ff,#00,#06,#43,#02
	db #00,#43,#82,#41,#82,#3f,#84,#41
	db #82,#41,#84,#41,#90,#43,#82,#43
	db #82,#43,#82,#44,#82,#43,#92,#ff
	db #00,#06,#43,#02,#00,#43,#82,#41
	db #82,#3f,#84,#41,#82,#46,#84,#46
	db #92,#43,#82,#43,#82,#43,#82,#44
	db #82,#43,#90,#ff,#00,#08,#43,#02
	db #00,#43,#86,#41,#82,#41,#8a,#43
	db #84,#3f,#84,#3c,#9c,#ff,#00,#06
	db #43,#02,#08,#43,#82,#41,#82,#3f
	db #84,#41,#82,#41,#84,#41,#90,#43
	db #82,#43,#82,#43,#82,#44,#82,#43
	db #92,#ff,#00,#06,#43,#02,#08,#43
	db #82,#41,#82,#3f,#84,#41,#82,#46
	db #84,#46,#92,#43,#82,#43,#82,#43
	db #82,#44,#82,#43,#90,#ff,#00,#08
	db #43,#02,#08,#43,#86,#41,#82,#41
	db #8a,#43,#84,#3f,#84,#3c,#9c,#ff
;
.music_info
	db "Disc Mac Challenge Issue 20 - Music 1 (1996)(Hypnomega)()",0
	db "ST-Module",0

	read "music_end.asm"
