; Music of Lone Wolf (1991)(Audiogenic Software)(David Whittaker)()
; Ripped by Megachur the 13/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LONEWOLF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 13
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #8b00

	read "music_header.asm"
	
	jp l8b0d	; init
	jp l8bd8	; play
.l8b06
	jp l8cbb
.l8b09
.music_end
	db #00
.l8b0c equ $ + 2
.l8b0b equ $ + 1
.l8b0a
	db #0d,#50,#50
;
.init_music
.l8b0d
;
	call l8b06
	ld b,#00
	ld hl,l9175
	add hl,bc
	ld a,(hl)
	ld (l8b0b),a
	ld (l8b0c),a
	inc hl
	ld ix,l8b72
	ld c,#22
	ld a,#03
.l8b26
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
	ld hl,l906e
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
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
	jr nz,l8b26
	ld (l8ea4),a
	dec a
	ld (l8f85),a
	ld (l8b09),a
	ret
.l8b72
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l8b94
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l8bb6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
.l8bd8
;
	ld a,(l8b09)
	and a
	ret z
.l8bde equ $ + 1
	ld a,#00
	ld (l8c2b),a
	ld a,(l8b0b)
	ld hl,l8f85
	add (hl)
	ld (hl),a
	jr nc,l8c03
	ld b,#00
	ld ix,l8b72
	call l8dd3
	ld ix,l8b94
	call l8dd3
	ld ix,l8bb6
	call l8dd3
.l8c03
	ld ix,l8b72
	call l8e71
	ld (l8f86),hl
	ld (l8f8e),a
	ld ix,l8b94
	call l8e71
	ld (l8f88),hl
	ld (l8f8f),a
	ld ix,l8bb6
	call l8e71
	ld (l8f8a),hl
	ld (l8f90),a
.l8c2b equ $ + 1
	ld a,#00
	ld (l8f8c),a
	ld a,(l8b09)
	and a
	jr nz,l8c45
	ld (l8f8e),a
	ld (l8f8f),a
	ld (l8f90),a
	ld a,#3f
	ld (l8f8d),a
	jr l8c6d
.l8c45
	ld a,(l8b0a)
	and #0f
	xor #0f
.l8c4d equ $ + 1
	jr z,l8c6d
	ld b,a
	ld a,(l8f8e)
	sub b
	jr nc,l8c56
	xor a
.l8c56
	ld (l8f8e),a
	ld a,(l8f8f)
	sub b
	jr nc,l8c60
	xor a
.l8c60
	ld (l8f8f),a
	ld a,(l8f90)
	sub b
	jr nc,l8c6a
	xor a
.l8c6a
	ld (l8f90),a
.l8c6d
	ld hl,l8f90
	ld d,#0a
.l8c72
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
	jp p,l8c72
	ret
.l8c93
	ld de,#0a00
.l8c96
	call l8ca0
	dec d
	jp p,l8c96
	ld de,#073f
.l8ca0
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
.l8cbb
;
	xor a
	ld (l8b09),a
	call l8c93
	xor a
	ld (l8f8e),a
	ld (l8f8f),a
	ld (l8f90),a
	ret
	db #f0,#de,#d7,#e1,#a4,#00,#00,#3b
	db #c4,#b5,#7a,#64,#8c,#dd,#30,#ea
	db #eb,#f0,#b3,#13,#0a,#01
	ld a,(de)
	inc de
	ld (l8b0a),a
	jp l8de0
	ld a,(de)
	inc de
	ld (l8b0b),a
	jp l8de0
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
	jp l8de0
	pop hl
	jp l8b06
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
	jr nz,l8d31
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l8d31
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l8de0
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,l8f50
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l8de0
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l8f50
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l8de0
	ld hl,l8f50
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l8de0
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l8de0
	ld a,(de)
	inc de
	ld (l8ea4),a
	jr l8de0
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l8de0
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l8de0
	ld (ix+#1d),b
	jr l8de0
	ld (ix+#1d),#c0
	jr l8de0
	set 1,(ix+#00)
	jr l8de0
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l8e0f
	jr l8e0b
	ld (ix+#1f),#ff
	jr l8de0
	ld (ix+#1f),b
	jr l8de0
.l8dd3
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l8de0
	ld a,(de)
	inc de
	and a
	jp m,l8e26
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l8df2
	ld (l8bde),a
.l8df2
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.l8e0b
	set 5,(ix+#00)
.l8e0f
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l8e25
	ld (ix+#1f),#ff
.l8e25
	ret
.l8e26
	cp #c0
	jr c,l8e69
	add #20
	jr c,l8e4a
	add #10
	jr c,l8e51
	add #10
	ld c,a
	ld hl,l905f
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l8de0
.l8e4a
	inc a
	ld (ix+#11),a
	jp l8de0
.l8e51
	ld hl,l90a2
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
	jp l8de0
.l8e69
	ld hl,l8c4d
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l8e71
	ld c,(ix+#00)
	bit 5,c
	jr z,l8ea3
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l8e9d
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l8e9d
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l8e9d
	ld a,(ix+#18)
	ld (ix+#13),a
.l8ea4 equ $ + 1
.l8ea3
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l8ec0
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l8ec0
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l8f9f
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l8f21
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l8eea
	bit 0,c
	jr nz,l8f08
.l8eea
	bit 5,l
	jr nz,l8efa
	sub (ix+#1b)
	jr nc,l8f05
	set 5,(ix+#1d)
	sub a
	jr l8f05
.l8efa
	add (ix+#1b)
	cp b
	jr c,l8f05
	res 5,(ix+#1d)
	ld a,b
.l8f05
	ld (ix+#1c),a
.l8f08
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l8f13
	dec d
.l8f13
	add #a0
	jr c,l8f1f
.l8f17
	sla e
	rl d
	add #18
	jr nc,l8f17
.l8f1f
	add hl,de
	ex de,hl
.l8f21
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l8f4c
	ld b,(ix+#0e)
	djnz l8f49
	ld c,(ix+#0d)
	bit 7,c
	jr z,l8f38
	dec b
.l8f38
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l8f4c
.l8f49
	ld (ix+#0e),b
.l8f4c
	cpl
	and #03
.l8f50 equ $ + 1
	ld a,#38
	jr nz,l8f5d
	ld a,(l8bde)
	xor #08
	ld (l8c2b),a
	ld a,#07
.l8f5d
	ld hl,l8f8d
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l8f80
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l8c2b),a
.l8f80
	ex de,hl
	ld a,(ix+#13)
	ret
.l8f8c equ $ + 7
.l8f8a equ $ + 5
.l8f88 equ $ + 3
.l8f86 equ $ + 1
.l8f85
	db #ff,#00,#00,#00,#00,#00,#00,#00
.l8f90 equ $ + 3
.l8f8f equ $ + 2
.l8f8e equ $ + 1
.l8f8d
	db #3f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#3f,#00,#00
	db #00,#00
.l8f9f
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
.l905f
	db #0f,#0f,#11,#13
	db #15,#18,#1a,#1c,#1e,#20,#21,#22
.l906e equ $ + 3
	db #23,#24,#25,#80,#00,#03,#87,#00
	db #04,#87,#04,#07,#8a,#00,#00,#0c
	db #8c,#07,#0c,#8f,#07,#0c,#90,#03
	db #07,#8c,#04,#07,#8c,#00,#8c,#00
	db #83,#00,#84,#00,#85,#00,#87,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#80
.l90a2
	dw l90c3,l90cb,l90d7,l90e9
	dw l90fb,l9102,l9109,l911e
	dw l9127,l9138,l9149,l9159
	dw l916a,l916d,l9170,l9173
.l90c3 equ $ + 1
	db #01,#0f,#0d,#0b,#08,#05,#02,#87
.l90cb equ $ + 1
	db #01,#0e,#0d,#0b,#09,#07,#05,#04
.l90d7 equ $ + 5
	db #03,#02,#01,#87,#01,#0f,#0e,#0d
	db #0b,#0d,#0c,#0a,#09,#0b,#0a,#08
.l90e9 equ $ + 7
	db #07,#09,#08,#06,#05,#87,#01,#0f
	db #0f,#0d,#0b,#0d,#0c,#0a,#09,#0b
	db #0a,#08,#07,#09,#08,#06,#05,#87
.l90fb equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#87,#01
.l9109 equ $ + 7
.l9102
	db #0e,#0d,#0c,#0b,#0a,#87,#01,#0e
	db #0d,#0c,#0b,#0a,#09,#01,#08,#01
	db #07,#01,#06,#01,#05,#01,#04,#01
.l911e equ $ + 4
	db #02,#01,#87,#04,#08,#09,#0a,#0b
.l9127 equ $ + 5
	db #0c,#0d,#0e,#87,#05,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l9138 equ $ + 6
	db #04,#03,#02,#01,#87,#08,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l9149 equ $ + 7
	db #05,#04,#03,#02,#01,#87,#04,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l9159 equ $ + 7
	db #05,#04,#03,#02,#01,#87,#04,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#01
.l9170 equ $ + 6
.l916d equ $ + 3
.l916a
	db #0a,#87,#01,#0b,#87,#01,#0f,#87
.l9173 equ $ + 1
	db #01,#0c,#87
.l9175
	db #50
	dw l91f6,l917c,l92f6
.l917c
	dw l933c,l9353,l933c,l936c
	dw l937e,l936c,l9389,l936c
	dw l937e,l9389,l9389,l936c
	dw l937e,l936c,l9389,l936c
	dw l937e,l9389,l9389,l936c
	dw l937e,l936c,l9389,l936c
	dw l937e,l9389,l9389,l936c
	dw l937e,l936c,l9389,l936c
	dw l937e,l9389,l9389,l936c
	dw l937e,l936c,l9389,l936c
	dw l937e,l9389,l9389,l936c
	dw l937e,l936c,l9389,l936c
	dw l937e,l9389,l9389,l936c
	dw l937e,l936c,l9389,l936c
	dw l937e,l9389,l9389,l9330
	dw #0000
.l91f6
	dw l9394,l93af,l93af,l93af
	dw l93af,l93af,l93af,l93a6
	dw l93a6,l93a6,l93a6,l93a6
	dw l93a6,l9394,l93af,l93af
	dw l93bf,l93bf,l93af,l93af
	dw l93c8,l93c8,l93af,l93af
	dw l93bf,l93bf,l93c8,l93c8
	dw l93c8,l93c8,l93af,l93af
	dw l93bf,l93bf,l93af,l93af
	dw l93c8,l93c8,l93af,l93af
	dw l93bf,l93bf,l93c8,l93c8
	dw l93c8,l93c8,l93af,l93af
	dw l93bf,l93bf,l93af,l93af
	dw l93c8,l93c8,l93af,l93af
	dw l93bf,l93bf,l93c8,l93c8
	dw l93c8,l93c8,l93af,l93af
	dw l93bf,l93bf,l93af,l93af
	dw l93c8,l93c8,l93af,l93af
	dw l93bf,l93bf,l93c8,l93c8
	dw l93c8,l93c8,l93af,l93af
	dw l93bf,l93bf,l93af,l93af
	dw l93c8,l93c8,l93af,l93af
	dw l93bf,l93bf,l93c8,l93c8
	dw l93c8,l93c8,l93af,l93af
	dw l93bf,l93bf,l93af,l93af
	dw l93c8,l93c8,l93af,l93af
	dw l93bf,l93bf,l93c8,l93c8
	dw l93c8,l93c8,l93af,l93af
	dw l93bf,l93bf,l93af,l93af
	dw l93c8,l93c8,l93af,l93af
	dw l93bf,l93bf,l93c8,l93c8
	dw l93c8,l93c8,l9334,#0000
.l92f6
	dw l93d1,l93d1,l9456,l93d1
	dw l93d1,l949a,l958b,l949a
	dw l958b,l950b,l958e,l950b
	dw l9588,l950b,l9585,l950b
	dw l9585,l953e,l953e,l9588
	dw l953e,l953e,l958b,l953e
	dw l93d1,l93d1,l9588,l9338
	dw #0000
.l9334 equ $ + 4
.l9330
	db #93
	dw l917c
	db #87,#93
	dw l91f6
	db #87
.l933c equ $ + 4
.l9338
	db #93
	dw l92f6
	db #87,#8a,#88,#01,#01
	db #db,#e7,#15,#15,#15,#15,#15,#15
	db #15,#15,#15,#15,#15,#15,#15,#15
.l9353 equ $ + 3
	db #15,#15,#87,#15,#15,#15,#15,#15
	db #15,#15,#15,#15,#15,#15,#15,#18
	db #18,#18,#18,#18,#18,#18,#18,#18
.l936c equ $ + 4
	db #18,#18,#18,#87,#8a,#88,#01,#01
	db #90,#d3,#e3,#15,#15,#8d,#15,#15
.l937e equ $ + 6
	db #15,#15,#8d,#15,#15,#87,#11,#11
	db #8d,#11,#11,#11,#11,#8d,#11,#11
.l9389 equ $ + 1
	db #87,#10,#10,#8d,#10,#10,#10,#10
.l9394 equ $ + 4
	db #8d,#10,#10,#87,#8a,#88,#01,#01
	db #dc,#cd,#ff,#45,#84,#01,#01,#8f
.l93a6 equ $ + 6
	db #45,#84,#01,#01,#8f,#87,#24,#24
.l93af equ $ + 7
	db #24,#24,#24,#24,#24,#24,#87,#8a
	db #88,#01,#01,#e1,#c0,#d0,#21,#21
.l93bf equ $ + 7
	db #21,#21,#21,#21,#21,#21,#87,#1d
	db #1d,#1d,#1d,#1d,#1d,#1d,#1d,#87
.l93c8
	db #1c,#1c,#1c,#1c,#1c,#1c,#1c,#1c
.l93d1 equ $ + 1
	db #87,#8a,#81,#d0,#e0,#c1,#15,#c5
	db #15,#c7,#15,#c1,#21,#c5,#15,#c7
	db #15,#c1,#21,#c5,#21,#c7,#15,#c1
	db #21,#c5,#21,#c7,#21,#c1,#21,#c5
	db #21,#c7,#21,#c1,#2d,#c5,#21,#c7
	db #21,#c1,#2d,#c5,#2d,#c7,#21,#c1
	db #2d,#c5,#2d,#c7,#2d,#c1,#2d,#c5
	db #2d,#c7,#2d,#c1,#39,#c5,#2d,#c7
	db #2d,#c1,#39,#c5,#39,#c7,#39,#c5
	db #39,#c1,#39,#c7,#2d,#c5,#39,#c1
	db #39,#c7,#2d,#c5,#2d,#c1,#39,#c7
	db #2d,#c5,#2d,#c1,#2d,#c7,#2d,#c5
	db #2d,#c1,#2d,#c7,#21,#c5,#2d,#c1
	db #2d,#c7,#21,#c5,#21,#c1,#2d,#c7
	db #21,#c5,#21,#c1,#21,#c7,#21,#c5
	db #21,#c1,#21,#c7,#15,#c5,#21,#c1
.l9456 equ $ + 6
	db #21,#c7,#15,#c5,#15,#87,#88,#01
	db #01,#d4,#c0,#e3,#2d,#e1,#2d,#2d
	db #e7,#30,#2d,#e3,#30,#e1,#30,#30
	db #e7,#34,#30,#e3,#34,#e1,#34,#34
	db #e7,#37,#2b,#e3,#30,#e1,#30,#30
	db #ef,#34,#e3,#30,#e1,#30,#30,#e7
	db #34,#30,#e3,#34,#e1,#34,#34,#e7
	db #37,#34,#e3,#37,#e1,#37,#37,#e7
	db #3b,#2f,#e3,#34,#e1,#34,#34,#ef
.l949a equ $ + 2
	db #37,#87,#8a,#d2,#c9,#92,#0c,#eb
	db #21,#e1,#21,#21,#24,#21,#23,#24
	db #23,#21,#23,#24,#eb,#1d,#e1,#1d
	db #1d,#21,#1d,#1f,#21,#1f,#1d,#1f
	db #21,#eb,#2d,#e1,#2d,#2d,#30,#2d
	db #2f,#30,#2f,#2d,#2f,#30,#eb,#28
	db #e1,#28,#28,#2b,#28,#29,#2b,#29
	db #28,#29,#2b,#92,#00,#d3,#eb,#21
	db #e1,#21,#21,#24,#21,#23,#24,#23
	db #21,#23,#24,#eb,#1d,#e1,#1d,#1d
	db #21,#1d,#1f,#21,#1f,#1d,#1f,#21
	db #eb,#28,#e1,#28,#28,#2b,#28,#29
	db #2b,#29,#28,#29,#2b,#eb,#28,#e1
	db #28,#28,#2b,#28,#29,#2b,#29,#28
.l950b equ $ + 3
	db #29,#2b,#87,#8a,#d4,#88,#01,#01
	db #c0,#eb,#2d,#e1,#34,#34,#e9,#39
	db #e1,#39,#39,#3b,#e9,#3c,#e1,#3c
	db #3c,#3e,#e9,#40,#e1,#40,#41,#40
	db #c4,#e9,#39,#e1,#39,#39,#3b,#e9
	db #3c,#e1,#3c,#3c,#3e,#e9,#3e,#e1
.l953e equ $ + 6
	db #3c,#3e,#3c,#ef,#3b,#87,#8a,#d6
	db #81,#c0,#e1,#48,#45,#47,#44,#45
	db #41,#44,#43,#48,#45,#47,#44,#45
	db #41,#44,#43,#48,#45,#47,#44,#45
	db #41,#44,#43,#48,#45,#47,#44,#45
	db #41,#44,#43,#c9,#48,#45,#47,#44
	db #45,#41,#44,#43,#48,#45,#47,#44
	db #45,#41,#44,#43,#48,#45,#47,#44
	db #45,#41,#44,#43,#48,#45,#47,#44
.l9585 equ $ + 5
	db #45,#41,#44,#43,#87,#89,#ff,#87
.l958e equ $ + 6
.l958b equ $ + 3
.l9588
	db #89,#00,#87,#89,#01,#87,#89,#02
	db #87
;
.music_info
	db "Lone Wolf (1991)(Audiogenic Software)(David Whittaker)",0
	db "",0

	read "music_end.asm"
