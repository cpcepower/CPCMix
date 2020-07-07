; Music of Glider Rider (1986)(Quicksilva)(David Whittaker)()
; Ripped by Megachur the 19/04/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GLIDERRI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #17ad
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

	xor a
	ld (l1c61),a
	jp l2632
;
.init_music
.l17b4
;
	ex af,af'
	xor a
	ld (l1c61),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l1c63
	add hl,bc
	ld ix,l1801
	ld c,#1f
	ld a,#03
.l17cd
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
	jr nz,l17cd
	inc a
	ld (l1904),a
	ld (l1c61),a
	ret
.l1805 equ $ + 4
.l1804 equ $ + 3
.l1801
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1820 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#09,#00
.l1824 equ $ + 3
.l1823 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l183f equ $ + 6
	db #00,#00,#00,#00,#00,#12,#00,#00
.l1843 equ $ + 2
.l1842 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#24
;
;.sound_fx
;
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l1c63
	add hl,bc
	ld a,(hl)
	ld (l1804),a
	inc hl
	ld a,(hl)
	ld (l1805),a
	inc hl
	ld a,(hl)
	ld (l1823),a
	inc hl
	ld a,(hl)
	ld (l1824),a
	inc hl
	ld a,(hl)
	ld (l1842),a
	inc hl
	ld a,(hl)
.l1885 equ $ + 2
	ld (l1843),a
	ret
;
.play_music
;
	ld a,(l1c61)
	and a
	ret z
.l188d equ $ + 1
	ld a,#00
	ld (l18da),a
	ld hl,l1904
	dec (hl)
	jr nz,l18b2
	ld b,(hl)
	ld ix,l1801
	call l19ca
	ld ix,l1820
	call l19ca
	ld ix,l183f
	call l19ca
	ld hl,l1904
.l18b1 equ $ + 1
	ld (hl),#01
.l18b2
	ld ix,l1801
	call l1a6c
	ld (l1b7d),hl
	ld (l1b85),a
	ld ix,l1820
	call l1a6c
	ld (l1b7f),hl
	ld (l1b86),a
	ld ix,l183f
	call l1a6c
	ld (l1b81),hl
	ld (l1b87),a
.l18da equ $ + 1
	ld a,#00
	ld (l1b83),a
	ld hl,l1b8a
	ld d,#0d
.l18e3
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
	jp p,l18e3
	ret
.l1904
	db #00,#bc,#a4,#a8,#ad,#6b,#9a,#95
	db #10,#84,#7c,#4a,#39,#58,#a9,#01
	xor a
	ld (l1c61),a
	pop hl
	jp l2632
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
	jr nz,l193e
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l193e
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l19d8
	ld a,(ix+#1e)
	ld c,a
	and #07
	ld hl,l1b62
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l19d8
	ld a,(ix+#1e)
	ld c,a
	and #38
	ld hl,l1b62
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l19d8
	ld hl,l1b62
	ld a,(ix+#1e)
	cpl
	and (hl)
	ld (hl),a
	jr l19d8
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l19d8
	ld a,(de)
	inc de
	ld (l188d),a
	jr l19d8
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l19d8
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l19d8
	ld (ix+#1d),b
	jr l19d8
	ld (ix+#1d),#40
	jr l19d8
	ld (ix+#1d),#c0
	jr l19d8
	set 1,(ix+#00)
	jr l19d8
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l19fb
.l19ca
	dec (ix+#10)
	jr nz,l1a08
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l19d8
	ld a,(de)
	inc de
	and a
	jp m,l1a19
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l19fb
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l1a08
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l1a15
	inc (ix+#12)
	ret
.l1a15
	dec (ix+#12)
	ret
.l1a19
	cp #b8
	jr c,l1a64
	add #20
	jr c,l1a49
	add #10
	jr c,l1a4f
	add #10
	jr nc,l1a42
	ld c,a
	ld hl,l1c33
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	set 4,(ix+#00)
	jr l19d8
.l1a42
	add #09
	ld (l18b1),a
	jr l19d8
.l1a49
	inc a
	ld (ix+#11),a
	jr l19d8
.l1a4f
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
	jp l19d8
.l1a64
	ld hl,l1885
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l1a6c
	ld c,(ix+#00)
	bit 5,c
	jr z,l1ab7
	ld a,(ix+#16)
	sub #10
	jr nc,l1a9f
	bit 6,c
	jr z,l1aa4
	add (ix+#13)
	jr nc,l1a84
	sbc a
.l1a84
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l1a9a
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l1ab7
.l1a9a
	ld (ix+#18),a
	jr l1ab7
.l1a9f
	ld (ix+#16),a
	jr l1ab7
.l1aa4
	cpl
	sub #0f
	add (ix+#13)
	jr c,l1aad
	sub a
.l1aad
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l1ab7
	res 5,c
.l1ab7
	ld a,(ix+#12)
	bit 4,c
	jr z,l1ad9
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,l1ad1
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l1ad1
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
.l1ad9
	ld hl,l1b8b
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l1b33
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l1afc
	bit 0,c
	jr nz,l1b1a
.l1afc
	bit 5,l
	jr nz,l1b0c
	sub (ix+#1b)
	jr nc,l1b17
	set 5,(ix+#1d)
	sub a
	jr l1b17
.l1b0c
	add (ix+#1b)
	cp b
	jr c,l1b17
	res 5,(ix+#1d)
	ld a,b
.l1b17
	ld (ix+#1c),a
.l1b1a
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l1b25
	dec d
.l1b25
	add #a0
	jr c,l1b31
.l1b29
	sla e
	rl d
	add #18
	jr nc,l1b29
.l1b31
	add hl,de
	ex de,hl
.l1b33
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l1b5e
	ld b,(ix+#0e)
	djnz l1b5b
	ld c,(ix+#0d)
	bit 7,c
	jr z,l1b4a
	dec b
.l1b4a
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l1b5e
.l1b5b
	ld (ix+#0e),b
.l1b5e
	cpl
	and #03
.l1b62 equ $ + 1
	ld a,#38
	jr nz,l1b6f
	ld a,(l188d)
	xor #08
	ld (l18da),a
	ld a,#07
.l1b6f
	ld hl,l1b84
	xor (hl)
	and (ix+#1e)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l1b84 equ $ + 7
.l1b83 equ $ + 6
.l1b81 equ $ + 4
.l1b7f equ $ + 2
.l1b7d
	db #00,#00,#00,#00,#00,#00,#00,#38
.l1b8a equ $ + 5
.l1b87 equ $ + 2
.l1b86 equ $ + 1
.l1b85
	db #0f,#0f,#0d,#00,#00,#00
.l1b8b
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
.l1c33
	db #09,#0c,#0f,#13,#17,#1a,#1d,#20
	db #23,#00,#03,#07,#87,#00,#04,#07
	db #87,#00,#03,#07,#0c,#87,#00,#04
	db #07,#0c,#87,#07,#0c,#0f,#87,#07
	db #0c,#10,#87,#03,#07,#0c,#87,#04
.music_end equ $ + 6
.l1c61 equ $ + 6
	db #07,#0c,#87,#00,#0c,#87,#00,#00
.l1c63
	dw l1c75,l1cb5,l1cf5,l1d35
	dw l1d75,l1db5,l1df5,l1e35
.l1c75 equ $ + 2
	dw l1e75,l1eb5,l1eb5,l1eb5
	dw l1eb5,l1eb5,l1eb5,l1eb5
	dw l1eb5,l1eb5,l1eb5,l1eb5
	dw l1eb5,l1eb5,l1eb5,l1eb5
	dw l1eb5,l1eb5,l1eb5,l1eb5
	dw l1eb5,l1eb5,l1eb5,l1eb5
	dw l1f3c,l1f3c,l1f3c,l1f3c
	dw l1f3c,l1f3c,l1f3c,l1f3c
	dw #0000
.l1cb5
	dw l24fe,l24e4,l202a,l202a
	dw l1fa9,l1fd4,l1fff,l202a
	dw l1fa9,l1fd4,l1fff,l202a
	dw l202a,l1fa9,l1fd4,l1fff
	dw l202a,l1fa9,l1fd4,l1fff
	dw l202a,l202a,l24e4,l2055
	dw l2080,l2055,l2080,l20ab
	dw l20ab,l20ab,l20ab,#0000
.l1cf5
	dw l24fe,l24f1,l24a7,l24a7
	dw l20d6,l20f4,l2112,l2130
	dw l20d6,l20f4,l2112,l2130
	dw l24a7,l214e,l217c,l21aa
	dw l21d8,l214e,l217c,l21aa
	dw l21d8,l24a7,l24f1,l2206
	dw l2229,l224d,l226c,l2287
	dw l22a8,l2287,l22a8,#0000
.l1d35
	dw l1eb5,l1eb5,l1eb5,l1eb5
	dw l1eb5,l1eb5,l1eb5,l1eb5
	dw l1eb5,l1eb5,l1eb5,l1eb5
	dw l1eb5,l1eb5,l1eb5,l1eb5
	dw l1eb5,l1eb5,l1eb5,l1eb5
	dw l1eb5,l1eb5,l1eb5,l1f3c
	dw l1f3c,l1f3c,l1f3c,l1f3c
	dw l1f3c,l1f3c,l1f3c,#0000
.l1d75
	dw l24fe,l24e4,l202a,l202a
	dw l1fa9,l1fd4,l1fff,l202a
	dw l1fa9,l1fd4,l1fff,l202a
	dw l202a,l1fa9,l1fd4,l1fff
	dw l202a,l1fa9,l1fd4,l1fff
	dw l202a,l202a,l24e4,l2055
	dw l2080,l2055,l2080,l20ab
	dw l20ab,l20ab,l20ab,#0000
.l1db5
	dw l24fe,l24f1,l24a7,l24a7
	dw l23f7,l2413,l242f,l244b
	dw l23f7,l2413,l242f,l244b
	dw l24a7,l2467,l2477,l2487
	dw l2497,l2467,l2477,l2487
	dw l2497,l24a7,l24f1,l22cb
	dw l2316,l22cb,l2316,l2361
	dw l23ac,l2361,l23ac,#0000
.l1df5
	dw l2506,l2529,l2506,l2529
	dw l254c,l256f,l2506,l2529
	dw l254c,l256f,l2506,l2529
	dw l2506,l2529,l254c,l256f
	dw l2506,l2529,l254c,l256f
	dw l2506,l2529,l2506,l2529
	dw l254c,l256f,l2506,l2529
	dw l254c,l256f,l2506,#0000
.l1e35
	dw l2592,l25a3,l2592,l25a3
	dw l25b4,l25c5,l2592,l25a3
	dw l25b4,l25c5,l2592,l25a3
	dw l2592,l25a3,l25b4,l25c5
	dw l2592,l25a3,l25b4,l25c5
	dw l2592,l25a3,l2592,l25a3
	dw l25b4,l25c5,l2592,l25a3
	dw l25b4,l25c5,l2592,#0000
.l1e75
	dw l25d6,l25ed,l25d6,l25ed
	dw l2604,l261b,l25d6,l25ed
	dw l2604,l261b,l25d6,l25ed
	dw l25d6,l25ed,l2604,l261b
	dw l25d6,l25ed,l2604,l261b
	dw l25d6,l25ed,l25d6,l25ed
	dw l2604,l261b,l25d6,l25ed
	dw l2604,l261b,l25d6,#0000
.l1eb5
	db #bc,#8b,#88,#01,#01,#82,#df,#00
	db #02,#09,#e0,#89,#1f,#8d,#00,#df
	db #00,#03,#05,#89,#01,#00,#00,#00
	db #df,#00,#01,#09,#e1,#89,#07,#8d
	db #00,#e0,#89,#15,#8d,#00,#df,#00
	db #03,#05,#89,#01,#00,#df,#00,#02
	db #09,#89,#07,#8d,#00,#df,#00,#03
	db #05,#89,#01,#00,#00,#00,#df,#00
	db #01,#09,#e1,#89,#07,#8d,#00,#df
	db #00,#03,#05,#e0,#89,#01,#00,#00
	db #8b,#df,#00,#11,#09,#e1,#89,#1f
	db #8d,#00,#df,#00,#03,#05,#e0,#89
	db #01,#00,#00,#df,#00,#01,#09,#e1
	db #89,#07,#8d,#00,#89,#15,#8d,#00
	db #89,#07,#8d,#00,#df,#00,#03,#05
	db #e0,#89,#01,#00,#00,#df,#00,#01
.l1f3c equ $ + 7
	db #09,#e3,#89,#07,#8d,#00,#87,#bc
	db #8b,#df,#00,#01,#09,#e1,#89,#1f
	db #8d,#00,#df,#00,#03,#05,#89,#01
	db #00,#df,#00,#01,#09,#89,#07,#8d
	db #00,#89,#15,#8d,#00,#89,#1f,#8d
	db #00,#df,#00,#03,#05,#89,#01,#00
	db #df,#00,#01,#09,#89,#07,#8d,#00
	db #89,#01,#00,#8b,#df,#00,#01,#09
	db #e1,#89,#1f,#8d,#00,#df,#00,#03
	db #05,#89,#01,#00,#df,#00,#01,#09
	db #e0,#89,#07,#00,#00,#e1,#89,#01
	db #00,#e1,#89,#1f,#8d,#00,#df,#00
	db #03,#05,#89,#01,#00,#df,#00,#02
	db #05,#e1,#89,#07,#8d,#00,#e0,#89
.l1fa9 equ $ + 4
	db #01,#00,#00,#87,#8a,#88,#01,#01
	db #82,#df,#00,#11,#08,#e0,#0e,#0e
	db #0e,#1a,#0e,#0e,#1a,#0e,#0e,#0e
	db #0e,#1a,#0e,#0e,#1a,#0e,#0e,#0e
	db #0e,#1a,#0e,#0e,#1a,#0e,#0e,#0e
.l1fd4 equ $ + 7
	db #1a,#1a,#0e,#1a,#26,#32,#87,#8a
	db #88,#01,#01,#82,#df,#00,#11,#08
	db #e0,#0a,#0a,#0a,#16,#0a,#0a,#16
	db #0a,#0a,#0a,#0a,#16,#0a,#0a,#16
	db #0a,#0a,#0a,#0a,#16,#0a,#0a,#16
	db #0a,#0a,#0a,#16,#16,#0a,#16,#22
.l1fff equ $ + 2
	db #2e,#87,#8a,#88,#01,#01,#82,#df
	db #00,#11,#08,#e0,#05,#05,#05,#11
	db #05,#05,#11,#05,#05,#05,#05,#11
	db #05,#05,#11,#05,#05,#05,#05,#11
	db #05,#05,#11,#05,#05,#05,#11,#11
.l202a equ $ + 5
	db #05,#11,#1d,#29,#87,#8a,#88,#01
	db #01,#82,#df,#00,#11,#08,#e0,#0c
	db #0c,#0c,#18,#0c,#0c,#18,#0c,#0c
	db #0c,#0c,#18,#0c,#0c,#18,#0c,#0c
	db #0c,#0c,#18,#0c,#0c,#18,#0c,#0c
	db #0c,#18,#18,#0c,#18,#24,#30,#87
.l2055
	db #8a,#88,#01,#01,#82,#df,#00,#11
	db #08,#e0,#0b,#0b,#0b,#17,#0b,#0b
	db #17,#0b,#0b,#0b,#17,#17,#0b,#17
	db #23,#2f,#0e,#0e,#0e,#1a,#0e,#0e
	db #1a,#0e,#0e,#0e,#1a,#1a,#0e,#1a
.l2080 equ $ + 3
	db #26,#32,#87,#8a,#88,#01,#01,#82
	db #df,#00,#11,#08,#e0,#12,#12,#12
	db #1e,#12,#12,#1e,#12,#12,#12,#12
	db #1e,#12,#12,#1e,#12,#12,#12,#12
	db #1e,#12,#12,#1e,#12,#12,#12,#1e
.l20ab equ $ + 6
	db #1e,#12,#1e,#2a,#36,#87,#8a,#88
	db #01,#01,#82,#df,#00,#11,#08,#e0
	db #09,#09,#09,#15,#09,#09,#21,#15
	db #09,#09,#15,#15,#09,#15,#21,#2d
	db #12,#12,#12,#1e,#12,#12,#1e,#12
	db #12,#12,#1e,#1e,#12,#1e,#2a,#36
.l20d6 equ $ + 1
	db #87,#8a,#88,#01,#01,#82,#df,#00
	db #51,#05,#e1,#2d,#29,#26,#e3,#c8
	db #2e,#e5,#c8,#2d,#e1,#29,#26,#21
.l20f4 equ $ + 7
	db #e3,#c8,#3a,#e5,#c8,#39,#87,#8a
	db #88,#01,#01,#82,#df,#00,#51,#05
	db #e1,#29,#26,#22,#e3,#c8,#2d,#e5
	db #c8,#2e,#e1,#26,#22,#1d,#e3,#c8
.l2112 equ $ + 5
	db #39,#e5,#c8,#3a,#87,#8a,#88,#01
	db #01,#82,#df,#00,#51,#05,#e1,#2d
	db #29,#24,#e3,#c8,#2e,#e5,#c8,#2d
	db #e1,#29,#24,#21,#e3,#c8,#3a,#e5
.l2130 equ $ + 3
	db #c8,#39,#87,#8a,#88,#01,#01,#82
	db #df,#00,#51,#05,#e1,#2b,#28,#24
	db #e3,#c8,#2e,#e5,#c8,#2d,#e1,#30
	db #2e,#2d,#e3,#c8,#39,#e5,#c8,#3a
.l214e equ $ + 1
	db #87,#8a,#88,#01,#01,#82,#df,#00
	db #41,#05,#e3,#c0,#32,#e0,#df,#00
	db #11,#07,#39,#35,#32,#2d,#35,#32
	db #2d,#29,#32,#2d,#29,#26,#e3,#c0
	db #3e,#e0,#2d,#29,#26,#21,#29,#26
.l217c equ $ + 7
	db #21,#1d,#26,#21,#1d,#1a,#87,#8a
	db #88,#01,#01,#82,#df,#00,#41,#05
	db #e3,#c1,#2e,#e0,#df,#00,#11,#07
	db #3a,#35,#32,#2e,#35,#32,#2e,#29
	db #32,#2e,#29,#26,#e3,#c1,#3a,#e0
	db #2e,#29,#26,#22,#29,#26,#22,#1d
.l21aa equ $ + 5
	db #26,#22,#1d,#1a,#87,#8a,#88,#01
	db #01,#82,#df,#00,#41,#05,#e3,#c1
	db #29,#e0,#df,#00,#11,#07,#3c,#39
	db #35,#30,#39,#35,#30,#2d,#35,#30
	db #2d,#29,#e3,#c1,#35,#e0,#30,#2d
	db #29,#24,#2d,#29,#24,#21,#29,#24
.l21d8 equ $ + 3
	db #21,#1d,#87,#8a,#88,#01,#01,#82
	db #df,#00,#41,#05,#e3,#c1,#24,#e0
	db #df,#00,#11,#07,#3c,#37,#34,#30
	db #37,#34,#30,#2b,#34,#30,#2b,#28
	db #e3,#c1,#30,#e0,#30,#2b,#28,#24
	db #2b,#28,#24,#1f,#28,#24,#1f,#1c
.l2206 equ $ + 1
	db #87,#8a,#88,#01,#01,#82,#df,#00
	db #21,#05,#e1,#2a,#2a,#e0,#28,#e1
	db #26,#28,#e2,#2a,#e3,#c8,#2a,#e1
	db #2a,#2a,#e0,#28,#e1,#26,#e4,#2a
.l2229 equ $ + 4
	db #e3,#c8,#2a,#87,#8a,#88,#01,#01
	db #82,#df,#00,#31,#05,#e1,#80,#2f
	db #e0,#2f,#e1,#2f,#e8,#c8,#2d,#e1
	db #80,#c2,#2f,#e0,#c2,#2f,#e1,#c2
	db #2f,#e8,#84,#04,#0a,#c3,#2d,#87
.l224d
	db #8a,#88,#01,#01,#82,#df,#00,#31
	db #05,#e1,#2a,#2a,#e0,#28,#e1,#26
	db #28,#e2,#2a,#e3,#c8,#2a,#e1,#32
.l226c equ $ + 7
	db #2d,#2a,#28,#2a,#e5,#28,#87,#8a
	db #88,#01,#01,#82,#df,#00,#31,#05
	db #eb,#84,#04,#10,#2a,#e1,#c8,#2a
	db #e5,#c8,#25,#e1,#c8,#25,#e9,#c8
.l2287 equ $ + 2
	db #1e,#87,#8a,#88,#01,#01,#82,#df
	db #00,#31,#05,#e1,#2d,#2d,#2f,#31
	db #31,#e0,#32,#e2,#31,#e1,#2f,#e1
	db #2a,#2a,#2d,#e0,#2a,#e8,#84,#05
.l22a8 equ $ + 3
	db #10,#2f,#87,#8a,#88,#01,#01,#82
	db #df,#00,#41,#05,#e1,#21,#21,#23
	db #25,#25,#e0,#26,#e2,#25,#e1,#23
	db #e1,#1e,#1e,#21,#1e,#2a,#e0,#23
.l22cb equ $ + 6
	db #e1,#2a,#e2,#c8,#2f,#87,#8a,#88
	db #01,#01,#82,#df,#00,#21,#05,#e0
	db #c0,#47,#c0,#47,#c4,#3b,#c4,#3b
	db #c6,#3b,#c6,#3b,#c0,#3b,#c0,#3b
	db #c4,#2f,#c4,#2f,#c6,#2f,#c6,#2f
	db #c0,#2f,#c0,#2f,#c4,#23,#c4,#23
	db #c1,#3e,#c1,#3e,#c5,#32,#c5,#32
	db #c7,#32,#c7,#32,#c1,#32,#c1,#32
	db #c5,#26,#c5,#26,#c7,#26,#c7,#26
	db #c1,#26,#c1,#26,#c5,#1a,#c5,#1a
.l2316 equ $ + 1
	db #87,#8a,#88,#01,#01,#82,#df,#00
	db #21,#05,#e0,#c0,#4e,#c0,#4e,#c4
	db #42,#c4,#42,#c6,#42,#c6,#42,#c0
	db #42,#c0,#42,#c4,#36,#c4,#36,#c6
	db #36,#c6,#36,#c0,#36,#c0,#36,#c4
	db #2a,#c4,#2a,#c0,#1e,#c0,#1e,#c6
	db #1e,#c6,#1e,#c4,#1e,#c4,#1e,#c0
	db #2a,#c0,#2a,#c6,#2a,#c6,#2a,#c4
	db #2a,#c4,#2a,#c0,#36,#c0,#36,#c6
.l2361 equ $ + 4
	db #36,#c6,#36,#87,#8a,#88,#01,#01
	db #82,#df,#00,#21,#05,#e0,#c1,#45
	db #c1,#45,#c5,#39,#c5,#39,#c7,#39
	db #c7,#39,#c1,#39,#c1,#39,#c5,#2d
	db #c5,#2d,#c7,#2d,#c7,#2d,#c1,#2d
	db #c1,#2d,#c5,#21,#c5,#21,#c0,#1e
	db #c0,#1e,#c6,#1e,#c6,#1e,#c4,#1e
	db #c4,#1e,#c0,#2a,#c0,#2a,#c6,#2a
	db #c6,#2a,#c4,#2a,#c4,#2a,#c0,#36
.l23ac equ $ + 7
	db #c0,#36,#c6,#36,#c6,#36,#87,#8a
	db #88,#01,#01,#82,#df,#00,#21,#05
	db #e0,#c1,#45,#c1,#45,#c5,#39,#c5
	db #39,#c7,#39,#c7,#39,#c1,#39,#c1
	db #39,#c5,#2d,#c5,#2d,#c7,#2d,#c7
	db #2d,#c1,#2d,#c1,#2d,#c5,#21,#c5
	db #21,#c0,#1e,#c0,#1e,#c6,#36,#c6
	db #36,#c4,#2a,#c4,#2a,#c0,#42,#c0
	db #42,#c6,#2a,#c6,#2a,#c4,#36,#c4
	db #36,#c0,#42,#c0,#42,#c6,#4e,#c6
.l23f7 equ $ + 2
	db #4e,#87,#8a,#88,#01,#01,#82,#df
	db #00,#51,#05,#e1,#21,#21,#21,#e3
	db #c8,#22,#c8,#21,#c8,#2e,#c8,#2d
.l2413 equ $ + 6
	db #c8,#3a,#e5,#c8,#39,#87,#8a,#88
	db #01,#01,#82,#df,#00,#51,#05,#e1
	db #21,#21,#21,#e3,#c8,#1f,#c8,#21
	db #c8,#2b,#c8,#2d,#c8,#37,#e5,#c8
.l242f equ $ + 2
	db #39,#87,#8a,#88,#01,#01,#82,#df
	db #00,#51,#05,#e1,#1d,#1d,#1d,#e3
	db #c8,#20,#c8,#1f,#c8,#2c,#c8,#2b
.l244b equ $ + 6
	db #c8,#38,#e5,#c8,#37,#87,#8a,#88
	db #01,#01,#82,#df,#00,#51,#05,#e1
	db #1d,#1d,#1d,#e3,#c8,#1b,#c8,#18
	db #c8,#27,#c8,#24,#c8,#33,#e5,#c8
.l2467 equ $ + 2
	db #30,#87,#8a,#88,#01,#01,#82,#d4
	db #f1,#f1,#f4,#ff,#84,#ff,#3c,#c0
.l2477 equ $ + 2
	db #26,#87,#8a,#88,#01,#01,#82,#d4
	db #f1,#f1,#f4,#ff,#84,#ff,#3c,#c0
.l2487 equ $ + 2
	db #22,#87,#8a,#88,#01,#01,#82,#d4
	db #f1,#f1,#f3,#ff,#84,#ff,#3c,#c0
.l2497 equ $ + 2
	db #1d,#87,#8a,#88,#01,#01,#82,#d4
	db #f1,#f1,#f3,#ff,#84,#ff,#3c,#c0
.l24a7 equ $ + 2
	db #24,#87,#8a,#88,#01,#01,#82,#df
	db #00,#61,#05,#e1,#84,#3c,#01,#18
	db #84,#3c,#01,#18,#84,#3c,#01,#18
	db #e3,#84,#3c,#01,#14,#e5,#80,#e1
	db #84,#3c,#01,#24,#84,#3c,#01,#24
	db #84,#3c,#01,#24,#e3,#84,#3c,#01
	db #24,#e1,#84,#3c,#01,#29,#84,#3c
.l24e4 equ $ + 7
	db #01,#24,#84,#3c,#01,#1d,#87,#8a
	db #88,#01,#01,#82,#df,#00,#f1,#01
.l24f1 equ $ + 4
	db #ff,#86,#00,#87,#8a,#88,#01,#01
	db #82,#df,#00,#f1,#01,#ff,#86,#01
.l24fe equ $ + 1
	db #87,#8a,#df,#00,#f1,#01,#ff,#80
.l2506 equ $ + 1
	db #87,#bc,#8a,#88,#01,#01,#82,#df
	db #00,#21,#09,#e1,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#df,#00,#11,#09,#e0,#0c
.l2529 equ $ + 4
	db #0c,#0c,#0c,#87,#bc,#8a,#88,#01
	db #01,#82,#df,#00,#21,#09,#e1,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#df,#00,#11
.l254c equ $ + 7
	db #09,#e0,#07,#07,#07,#07,#87,#bc
	db #8a,#88,#01,#01,#82,#df,#00,#21
	db #09,#e1,#11,#11,#11,#11,#11,#11
	db #11,#11,#11,#11,#11,#11,#11,#11
	db #df,#00,#11,#09,#e0,#11,#11,#11
.l256f equ $ + 2
	db #11,#87,#bc,#8a,#88,#01,#01,#82
	db #df,#00,#21,#09,#e1,#13,#13,#13
	db #13,#13,#13,#13,#13,#13,#13,#13
	db #13,#13,#13,#df,#00,#11,#09,#e0
.l2592 equ $ + 5
	db #13,#1f,#2b,#37,#87,#bc,#8a,#88
	db #01,#01,#82,#db,#00,#11,#01,#84
.l25a3 equ $ + 6
	db #01,#32,#ff,#c5,#30,#87,#bc,#8a
	db #88,#01,#01,#82,#db,#00,#11,#01
.l25b4 equ $ + 7
	db #84,#01,#32,#ff,#c1,#37,#87,#bc
	db #8a,#88,#01,#01,#82,#db,#00,#11
	db #01,#84,#01,#32,#ff,#c5,#35,#87
.l25c5
	db #bc,#8a,#88,#01,#01,#82,#db,#00
	db #11,#01,#84,#01,#32,#ff,#c5,#37
.l25d6 equ $ + 1
	db #87,#bc,#8a,#88,#01,#02,#82,#d8
	db #12,#81,#15,#e9,#40,#e1,#37,#3c
	db #40,#e3,#41,#e7,#40,#e3,#41,#87
.l25ed
	db #bc,#8a,#88,#01,#01,#82,#d8,#12
	db #81,#15,#e9,#40,#e1,#37,#3b,#3e
.l2604 equ $ + 7
	db #e3,#41,#e7,#40,#e3,#43,#87,#bc
	db #8a,#88,#01,#01,#82,#d8,#12,#81
	db #15,#e9,#41,#e1,#35,#39,#3c,#e3
.l261b equ $ + 6
	db #40,#e7,#41,#e3,#40,#87,#bc,#8a
	db #88,#01,#01,#82,#d8,#12,#81,#15
	db #e9,#43,#e1,#37,#3b,#3e,#e3,#40
	db #e7,#41,#e3,#40,#87
;
.stop_music
.l2632
;
	ld de,#0d00 ; modified by Megachur - ld de,#d000 
.l2635
	call l263f
	dec e
	jp p,l2635
	ld de,#073f
.l263f
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
.music_info
	db "Glider Rider (1986)(Quicksilva)(David Whittaker)",0
	db "",0

	read "music_end.asm"
