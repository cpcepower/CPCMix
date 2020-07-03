; Music of Darkman (1990)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 07/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DARKMAN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #0b00
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
.init_music	; 0 -> 3
;
	ld hl,l0bdc
	ld (hl),#00
	inc hl
	ld (hl),#00
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l19e2
	add hl,bc
	ld a,(hl)
	ld (l0c0a),a
	inc hl
	ld ix,l0b66
	ld c,#27
	ld a,#03
.l0b21
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#20),#00
	ld (ix+#21),#00
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#03),e
	ld (ix+#04),d
	ld (ix+#05),e
	ld (ix+#06),d
	ld (ix+#25),#01
	add ix,bc
	dec a
	jr nz,l0b21
	ld (l0ea7),a
	inc a
	ld (l0bdb),a
	ld (l0bdc),a
	ld a,#02
	ld (l0b76),a
	dec a
	ld (l0b9d),a
	ld (l0bc4),a
	ret
.l0b66
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b76
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l0b8d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b9d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l0bb4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0bc4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.l0bdb
	db #00
.l0bdc
.music_end
	db #00
.l0bdd
	db #00
;
.play_music
;
	call l1347
	ld a,(l0bdc)
	and a
	jp z,l0c3a
.l0be9 equ $ + 1
	ld a,#00
	ld (l0c36),a
	ld hl,l0bdb
	dec (hl)
	jr nz,l0c0e
	ld b,(hl)
	ld ix,l0b66
	call l0d9f
	ld ix,l0b8d
	call l0d9f
	ld ix,l0bb4
	call l0d9f
.l0c0a equ $ + 1
	ld a,#01
	ld (l0bdb),a
.l0c0e
	ld ix,l0b66
	call l0e74
	ld (l0f85),hl
	ld (l0f8d),a
	ld ix,l0b8d
	call l0e74
	ld (l0f87),hl
	ld (l0f8e),a
	ld ix,l0bb4
	call l0e74
	ld (l0f89),hl
	ld (l0f8f),a
.l0c36 equ $ + 1
	ld a,#00
	ld (l0f8b),a
.l0c3a
	ld a,(l0bdd)
	and a
	jr z,l0c6a
	ld hl,(l0f92)
	ld (l0f85),hl
	ld hl,(l0f96)
	ld (l0f89),hl
	ld a,(l0f98)
.l0c51 equ $ + 2
	ld (l0f8b),a
	ld a,(l0f8c)
	or #2d
	ld hl,l0f99
	and (hl)
	ld (l0f8c),a
	ld a,(l0f9a)
	ld (l0f8d),a
	ld a,(l0f9c)
	ld (l0f8f),a
.l0c6a
	ld a,(l0bdc)
	ld hl,l0bdd
	or (hl)
	ret z
	ld hl,l0f90
	ld d,#0b
.l0c77
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
	jp p,l0c77
	ret
;
.stop_music
.l0c98
;
	xor a
	ld (l0bdc),a
.l0c9c
	ld de,&0d00
.l0c9f
	call l0ca9
	dec d
	jp p,l0c9f
	ld de,#073f
.l0ca9
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
	xor a
	ld (l0bdd),a
	ld (l0f8d),a
	ld (l0f8e),a
	ld (l0f8f),a
	ret
	db #a2,#8a,#8e,#93,#51,#80,#7b,#11
	db #6a,#62,#26,#10,#38,#8f,#06,#9c
	db #a1,#a6,#aa,#b0
	pop hl
	jp l0c98
	jp l125d
	ld a,(ix+#26)
	ld c,a
	and #07
	ld hl,l0f50
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l0db4
	ld a,(ix+#26)
	ld c,a
	and #38
	ld hl,l0f50
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l0db4
	ld hl,l0f50
	ld a,(ix+#26)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l0db4
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l0db4
	ld a,(de)
	inc de
	ld (l0ea7),a
	jr l0db4
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l0db4
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l0db4
	ld (ix+#1d),b
	jr l0db4
	ld (ix+#1d),#40
	jr l0db4
	ld (ix+#1d),#c0
	jr l0db4
	set 1,(ix+#00)
	jr l0db4
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l0df2
	res 5,(ix+#00)
	jr l0df2
	ld (ix+#1f),#ff
	jr l0db4
	ld (ix+#1f),b
	jr l0db4
	ld a,#01
	ld (ix+#24),a
	jr l0db4
	ld a,(de)
	inc de
	ld (ix+#11),a
	ld (ix+#24),#00
	jr l0db4
.l0d9f
	dec (ix+#10)
	jr nz,l0e19
	ld (ix+#00),b
	ld a,(ix+#25)
	or a
	jp nz,l125d
	ld e,(ix+#01)
	ld d,(ix+#02)
.l0db4
	ld a,(de)
	inc de
	and a
	jp m,l0e2a
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l0dc9
	ld (l0be9),a
.l0dc9
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#0b),l
	ld (ix+#0c),h
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
	set 5,(ix+#00)
.l0df2
	ld a,(ix+#24)
	or a
	jr z,l0dfc
	ld a,(de)
	inc de
	jr l0dff
.l0dfc
	ld a,(ix+#11)
.l0dff
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l0e18
	ld a,(l0bdd)
	and a
	jr nz,l0e18
	ld (ix+#1f),#ff
.l0e18
	ret
.l0e19
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l0e26
	inc (ix+#12)
	ret
.l0e26
	dec (ix+#12)
	ret
.l0e2a
	cp #b0
	jr c,l0e6c
	add #20
	jr c,l0e54
	add #30
	jr nc,l0e4c
	ld c,a
	ld hl,l105e
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l0db4
.l0e4c
	add #09
	ld (l0c0a),a
	jp l0db4
.l0e54
	ld hl,l11a3
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
	jp l0db4
.l0e6c
	ld hl,l0c51
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l0e74
	ld c,(ix+#00)
	bit 5,c
	jr z,l0ea6
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l0ea0
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l0ea0
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l0ea0
	ld a,(ix+#18)
	ld (ix+#13),a
.l0ea7 equ $ + 1
.l0ea6
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l0ec0
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l0ec0
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l0f9e
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l0f21
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l0eea
	bit 0,c
	jr nz,l0f08
.l0eea
	bit 5,l
	jr nz,l0efa
	sub (ix+#1b)
	jr nc,l0f05
	set 5,(ix+#1d)
	sub a
	jr l0f05
.l0efa
	add (ix+#1b)
	cp b
	jr c,l0f05
	res 5,(ix+#1d)
	ld a,b
.l0f05
	ld (ix+#1c),a
.l0f08
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l0f13
	dec d
.l0f13
	add #a0
	jr c,l0f1f
.l0f17
	sla e
	rl d
	add #18
	jr nc,l0f17
.l0f1f
	add hl,de
	ex de,hl
.l0f21
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l0f4c
	ld b,(ix+#0e)
	djnz l0f49
	ld c,(ix+#0d)
	bit 7,c
	jr z,l0f38
	dec b
.l0f38
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l0f4c
.l0f49
	ld (ix+#0e),b
.l0f4c
	cpl
	and #03
.l0f50 equ $ + 1
	ld a,#00
	jr nz,l0f5d
	ld a,(l0be9)
	xor #08
	ld (l0c36),a
	ld a,#07
.l0f5d
	ld hl,l0f8c
	xor (hl)
	and (ix+#26)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l0f80
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#26)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l0c36),a
.l0f80
	ex de,hl
	ld a,(ix+#13)
	ret
.l0f8c equ $ + 7
.l0f8b equ $ + 6
.l0f89 equ $ + 4
.l0f87 equ $ + 2
.l0f85
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l0f93 equ $ + 6
.l0f92 equ $ + 5
.l0f90 equ $ + 3
.l0f8f equ $ + 2
.l0f8e equ $ + 1
.l0f8d
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l0f9c equ $ + 7
.l0f9a equ $ + 5
.l0f99 equ $ + 4
.l0f98 equ $ + 3
.l0f96 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l0f9e
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
.l105e
	db #21,#21,#2c,#37,#42,#53,#64,#75
	db #80,#8b,#8c,#97,#9c,#a7,#b2,#ba
	db #bf,#c8,#cb,#ce,#d0,#d7,#dc,#dd
	db #e0,#e2,#e4,#e6,#e8,#ea,#ec,#ee
	db #f0,#80,#00,#00,#05,#05,#07,#07
	db #0c,#0c,#11,#11,#13,#93,#00,#00
	db #05,#05,#08,#08,#0c,#0c,#11,#11
	db #14,#94,#00,#00,#02,#02,#07,#07
	db #0c,#0c,#0e,#0e,#13,#93,#00,#00
	db #00,#05,#05,#05,#07,#07,#07,#0c
	db #0c,#0c,#11,#11,#11,#13,#13,#93
	db #00,#00,#00,#05,#05,#05,#08,#08
	db #08,#0c,#0c,#0c,#11,#11,#11,#14
	db #14,#94,#00,#00,#00,#02,#02,#02
	db #07,#07,#07,#0c,#0c,#0c,#0e,#0e
	db #0e,#13,#13,#93,#00,#00,#05,#05
	db #07,#07,#0c,#0c,#11,#11,#13,#93
	db #00,#00,#02,#02,#07,#07,#0c,#0c
	db #0e,#0e,#13,#93,#00,#80,#00,#00
	db #05,#05,#07,#07,#0c,#0c,#11,#11
	db #13,#93,#0c,#0c,#00,#00,#00,#80
	db #00,#00,#03,#03,#07,#07,#0c,#0c
	db #0f,#0f,#13,#93,#00,#00,#04,#04
	db #07,#07,#0c,#0c,#10,#10,#13,#93
	db #00,#00,#00,#05,#05,#05,#0c,#0c
	db #8c,#00,#00,#03,#03,#0c,#8c,#02
	db #04,#00,#00,#02,#02,#07,#07,#0c
	db #8c,#00,#03,#08,#8c,#00,#05,#09
	db #8c,#04,#0c,#80,#00,#00,#04,#04
	db #05,#05,#09,#89,#00,#02,#03,#08
	db #0c,#94,#02,#80,#00,#00,#0c,#8c
	db #00,#05,#88,#00,#05,#87,#00,#04
	db #87,#00,#05,#89,#0c,#04,#80,#0c
	db #03,#80,#00,#04,#89,#00,#03,#87
	db #0c,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#80
.l11a3
	dw l11c0,l11d3,l11dd,l11e5
	dw l11eb,l1200,l1222,l1236
	dw l123b,l1242,l124c,l1253
	dw l1256
	dw l125a
.l11c0 equ $ + 1
	db #00,#0f,#0e,#0e,#0d,#0c,#0a,#09
	db #09,#09,#08,#08,#08,#07,#07,#07
.l11d3 equ $ + 4
	db #06,#06,#87,#00,#0d,#0c,#0a,#07
.l11dd equ $ + 6
	db #05,#03,#01,#00,#87,#00,#0b,#07
.l11e5 equ $ + 6
	db #04,#03,#01,#00,#87,#00,#0f,#0e
.l11eb equ $ + 4
	db #0d,#0b,#87,#00,#0f,#0e,#0d,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#09,#08
	db #08,#08,#07,#07,#07,#06,#06,#87
.l1200 equ $ + 1
	db #00,#0f,#0e,#0d,#0d,#0d,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #08,#08,#08,#08,#08,#08,#08,#08
.l1222 equ $ + 3
	db #08,#87,#00,#0e,#0d,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#09,#08,#08,#08
.l1236 equ $ + 7
	db #07,#07,#07,#06,#06,#87,#00,#0d
.l123b equ $ + 4
	db #0a,#07,#87,#00,#0e,#0f,#0d,#09
.l1242 equ $ + 3
	db #08,#87,#00,#0f,#0f,#0e,#0d,#0d
.l124c equ $ + 5
	db #0c,#0a,#09,#87,#00,#0a,#0c,#0b
.l1256 equ $ + 7
.l1253 equ $ + 4
	db #07,#06,#87,#00,#00,#87,#0e,#0c
.l125a equ $ + 3
	db #00,#87,#04,#0d,#00,#00
.l125d
	xor a
	ld (ix+#25),a
	ld l,(ix+#03)
	ld h,(ix+#04)
.l1267
	ld a,(ix+#21)
	or a
	jp z,l1283
	dec a
	ld (ix+#21),a
	jp z,l1287
	ld l,(ix+#22)
	ld h,(ix+#23)
	ld (ix+#03),l
	ld (ix+#04),h
	jr l1287
.l1283
	ld (ix+#20),#00
.l1287
	ld a,(hl)
	inc hl
	or a
	jp m,l12aa
	ld (ix+#03),l
	ld (ix+#04),h
	add a
	ld e,a
	ld d,#00
	ld hl,l19fe
	add hl,de
	ld a,(hl)
	ld e,a
	inc hl
	ld d,(hl)
	ld (ix+#01),e
	ld (ix+#02),d
	ld b,#00
	jp l0db4
.l12aa
	cp #fd
	jr z,l12e1
	cp #ff
	jr z,l12d9
	cp #fe
	jr z,l12cb
	cp #fc
	jr z,l12c4
.l12ba
	ld a,r
	out (#fe),a
	ld b,#64
.l12c0
	djnz l12c0
	jr l12ba
.l12c4
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l1287
.l12cb
	ld a,(hl)
	inc hl
	ld (ix+#21),a
	ld (ix+#22),l
	ld (ix+#23),h
	jp l1287
.l12d9
	ld a,(hl)
	inc hl
	ld (ix+#20),a
	jp l1287
.l12e1
	ld l,(ix+#05)
	ld h,(ix+#06)
	jp l1267
	push af
	push bc
	push de
	push hl
	push ix
	ld hl,l0bdd
	ld (hl),#00
	ld hl,l13e5
	add a
	add l
	ld l,a
	jr nc,l12fe
	inc h
.l12fe
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l14c9
.l1306
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l1306
	ld a,(l14ca)
	ld (l14da),a
	ld hl,(l14cb)
	ld (l0f92),hl
	ld de,(l14cd)
	ld (l0f96),de
	ld a,l
	ld (l0f98),a
	ld a,(l14d0)
	ld (l0f99),a
	ld a,(l14cf)
	ld e,a
	ld d,#0c
	call l0ca9
	ld a,(l14d9)
	ld e,a
	ld d,#0d
	call l0ca9
	ld hl,l0bdd
	inc (hl)
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l1347
	call l14dc
	ld a,(l0bdd)
	and a
	ret z
	ld a,(l14c9)
	and a
	jr nz,l135b
	ld (l0bdd),a
	jp l0c9c
.l135b
	dec a
	ld (l14c9),a
	ld a,(l14da)
	and a
	jr nz,l1394
	ld a,(l14d7)
	and a
	ret z
	dec a
	ld (l14d7),a
	ld a,(l14ca)
	ld (l14da),a
	ld a,(l14d8)
	and a
	jr z,l137d
	ld a,(l14f7)
.l137d
	ld b,a
	ld a,(l14cb)
	add b
	ld (l0f92),a
	ld a,(l14cc)
	add b
	and #0f
	ld (l0f93),a
	ld hl,(l14cd)
	ld (l0f96),hl
.l1394
	ld hl,l14da
	dec (hl)
	ld a,(l14d5)
	and a
	jr z,l13bb
	jp p,l13ae
	ld hl,(l0f92)
	ld de,(l14d1)
	add hl,de
	ld (l0f92),hl
	jr l13bb
.l13ae
	ld hl,(l0f92)
	ld de,(l14d1)
	and a
	sbc hl,de
	ld (l0f92),hl
.l13bb
	ld a,(l14d6)
	and a
	jr z,l13de
	jp p,l13d1
	ld hl,(l0f96)
	ld de,(l14d3)
	add hl,de
	ld (l0f96),hl
	jr l13de
.l13d1
	ld hl,(l0f96)
	ld de,(l14d3)
	and a
	sbc hl,de
	ld (l0f96),hl
.l13de
	ld a,(l0f92)
	ld (l0f98),a
	ret
.l13e5
	dw l13fd,l140e,l141f,l1430
	dw l1441,l1452,l1463,l1474
	dw l1485,l1496,l14a7,l14b8
.l13fd
	db #05,#04,#02,#01,#83,#00,#07,#fa
	db #38,#00,#40,#00,#ff,#ff,#01,#00
.l140e equ $ + 1
	db #00,#0a,#0a,#fa,#00,#73,#00,#0a
	db #fa,#21,#00,#41,#00,#ff,#ff,#01
.l141f equ $ + 2
	db #00,#00,#1e,#03,#40,#00,#60,#00
	db #0f,#fa,#20,#00,#30,#00,#01,#01
.l1430 equ $ + 3
	db #0a,#00,#00,#1e,#06,#a0,#00,#80
	db #00,#0d,#fa,#08,#00,#08,#00,#ff
.l1441 equ $ + 4
	db #ff,#05,#00,#00,#20,#10,#09,#00
	db #0a,#00,#06,#dd,#00,#00,#00,#00
.l1452 equ $ + 5
	db #ff,#ff,#02,#00,#00,#0a,#02,#80
	db #01,#ff,#07,#00,#d3,#00,#00,#00
.l1463 equ $ + 6
	db #00,#ff,#ff,#05,#00,#0c,#3c,#3c
	db #84,#00,#8b,#00,#06,#d7,#01,#00
.l1474 equ $ + 7
	db #01,#00,#ff,#ff,#01,#00,#0f,#30
	db #08,#40,#00,#60,#01,#0f,#fa,#a4
	db #00,#44,#00,#ff,#ff,#02,#00,#00
.l1485
	db #78,#06,#01,#02,#11,#02,#14,#f2
	db #c8,#00,#cc,#00,#ff,#ff,#ff,#00
.l1496 equ $ + 1
	db #00,#4b,#0a,#00,#44,#00,#00,#14
	db #d7,#80,#00,#40,#00,#ff,#01,#1e
.l14a7 equ $ + 2
	db #01,#00,#3c,#3c,#c2,#00,#0a,#01
	db #0f,#f2,#a2,#01,#c0,#00,#ff,#ff
.l14b8 equ $ + 3
	db #01,#0a,#00,#09,#01,#01,#00,#01
	db #00,#03,#c7,#00,#00,#00,#00,#01
.l14cc equ $ + 7
.l14cb equ $ + 6
.l14ca equ $ + 5
.l14c9 equ $ + 4
	db #01,#01,#00,#00,#00,#00,#00,#00
.l14d3 equ $ + 6
.l14d1 equ $ + 4
.l14d0 equ $ + 3
.l14cf equ $ + 2
.l14cd
	db #00,#00,#00,#00,#00,#00,#00,#00
.l14da equ $ + 5
.l14d9 equ $ + 4
.l14d8 equ $ + 3
.l14d7 equ $ + 2
.l14d6 equ $ + 1
.l14d5
	db #00,#00,#00,#00,#00,#00,#00
.l14dc
	ld a,(l14f7)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l14fa
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l14fa equ $ + 3
.l14f7
	db #ff,#80,#1b,#34
.l14fb
	db #ff,#00,#fe,#04,#00,#ff,#ff,#fe
	db #04,#00,#fc
	dw l14fb
.l1508
	db #fe,#04,#08
	db #fe,#04,#06,#fc
	dw l1508
.l1511
	db #ff,#00
	db #01,#ff,#fb,#01,#ff,#f9,#01,#ff
	db #fb,#01,#ff,#ff,#01,#ff,#fa,#01
	db #ff,#f8,#01,#ff,#fa,#01,#fc
	dw l1511
.l152c
	db #93,#06,#90,#e1,#8a,#cd,#21
	db #cc,#24,#cd,#23,#cc,#24,#cd,#21
	db #cc,#24,#cd,#23,#cc,#24,#cd,#21
	db #cc,#24,#cd,#23,#cc,#24,#cd,#21
	db #cc,#24,#cd,#23,#cc,#24,#cd,#21
	db #cc,#24,#cd,#23,#cc,#24,#cd,#21
	db #cc,#24,#cd,#23,#cc,#24,#cd,#21
	db #cc,#24,#cd,#23,#cc,#24,#cd,#21
	db #cc,#24,#cd,#23,#cc,#24,#cd,#21
	db #cc,#24,#cd,#23,#cc,#24,#cd,#21
.l1582 equ $ + 7
	db #cc,#24,#cd,#23,#cc,#24,#87,#92
	db #d0,#e0,#8a,#15,#0c,#80,#18,#15
	db #0c,#80,#0c,#15,#06,#80,#06,#80
	db #0c,#15,#06,#80,#06,#15,#0c,#80
	db #0c,#15,#0c,#80,#18,#15,#0c,#80
	db #0c,#15,#06,#80,#06,#15,#0c,#80
	db #0c,#18,#09,#80,#03,#1a,#09,#80
.l15b5 equ $ + 2
	db #03,#87,#92,#80,#24,#80,#24,#80
	db #18,#80,#18,#80,#24,#80,#24,#80
.l15c9 equ $ + 6
	db #18,#80,#0c,#80,#0c,#87,#92,#80
	db #78,#e3,#8a,#80,#18,#24,#0c,#80
	db #0c,#23,#0c,#80,#0c,#1f,#12,#80
.l15dd equ $ + 2
	db #1e,#87,#92,#80,#24,#80,#24,#80
	db #18,#80,#18,#80,#24,#80,#24,#80
.l15f1 equ $ + 6
	db #18,#80,#0c,#80,#0c,#87,#92,#80
.l15f8 equ $ + 5
.l15f7 equ $ + 4
.l15f6 equ $ + 3
.l15f5 equ $ + 2
	db #60,#87,#16,#17,#15,#e0,#8a,#92
	db #d0,#90,#0d,#0c,#0d,#0c,#0b,#0c
	db #0d,#0c,#80,#24,#08,#06,#0b,#06
	db #0d,#0c,#0d,#0c,#0b,#0c,#0d,#0c
	db #80,#24,#08,#06,#0b,#06,#0d,#0c
	db #0d,#0c,#0b,#0c,#0d,#0c,#80,#24
	db #08,#06,#0b,#06,#0d,#0c,#0d,#0c
	db #0b,#0c,#0d,#0c,#80,#30,#80,#ff
.l1634 equ $ + 1
	db #8e,#e5,#8a,#82,#88,#00,#00,#b0
	db #92,#91,#20,#02,#22,#02,#23,#02
	db #25,#1e,#20,#24,#22,#0c,#23,#06
	db #22,#06,#20,#24,#1e,#24,#1b,#0c
.l165a equ $ + 7
	db #1c,#06,#1b,#06,#19,#c0,#8e,#92
	db #80,#01,#e5,#8a,#83,#88,#00,#00
	db #b0,#25,#24,#20,#24,#22,#0c,#23
	db #06,#22,#06,#20,#24,#1e,#24,#1b
	db #0c,#1c,#06,#1b,#06,#19,#be,#8e
.l1695 equ $ + 26
.l167b
	db #fe,#04,#ff,#fd,#1a,#fe,#04,#ff
	db #fd,#1a,#fe,#02,#ff,#fd,#1a,#fe
	db #02,#ff,#f9,#1a,#ff,#f8,#1a,#ff
	db #fb,#1a,#fe,#02,#ff,#fd,#1a,#fe
	db #02,#ff,#f9,#1a,#ff,#f8,#1a,#ff
	db #fb,#1a,#fe,#02,#ff,#fe,#1a,#fe
	db #02,#ff,#f9,#1a,#fc
	dw l1695
.l16bd equ $ + 11
.l16b2
	db #fe
	db #04,#02,#fe,#02,#ff,#09,#1f,#ff
	db #09,#1b,#ff,#09,#1b,#ff,#09,#1d
	db #fc
	dw l16bd
.l16cc equ $ + 6
.l16c6
	db #fe,#08,#02,#ff,#fd
	db #1c,#ff,#fd,#1c,#ff,#fd,#1e,#fc
	dw l16cc
.l16d5
	db #e0,#8a,#92,#90,#d0,#81
	db #13,#12,#13,#06,#13,#06,#13,#06
	db #13,#12,#13,#06,#13,#0c,#13,#0c
.l16ee equ $ + 3
	db #13,#0c,#87,#be,#8a,#92,#e4,#81
	db #91,#1a,#12,#1a,#06,#1a,#06,#1a
	db #06,#1a,#12,#1a,#06,#1a,#0c,#1a
	db #0c,#1a,#0c,#1a,#12,#1a,#06,#1a
	db #06,#1a,#06,#1a,#12,#1a,#06,#1a
	db #0c,#1a,#0c,#1a,#0c,#16,#12,#16
	db #06,#16,#06,#16,#06,#16,#12,#16
	db #06,#16,#0c,#16,#0c,#16,#0c,#16
	db #12,#16,#06,#16,#06,#16,#06,#16
	db #12,#16,#06,#16,#0c,#16,#0c,#16
	db #0c,#15,#12,#15,#06,#15,#06,#15
	db #06,#15,#12,#15,#06,#15,#0c,#15
	db #0c,#15,#0c,#13,#12,#13,#06,#13
	db #06,#13,#06,#13,#12,#13,#06,#13
.l1761 equ $ + 6
	db #0c,#13,#0c,#13,#0c,#87,#92,#8a
	db #e3,#b0,#83,#88,#00,#00,#91,#2b
	db #24,#30,#3c,#32,#24,#33,#24,#32
	db #0c,#33,#06,#32,#06,#2e,#b4,#2d
	db #06,#2e,#06,#2d,#60,#29,#30,#26
.l1787 equ $ + 4
	db #18,#29,#18,#87,#bf,#18,#12,#18
	db #06,#18,#06,#18,#06,#18,#12,#18
	db #06,#18,#0c,#18,#0c,#18,#0c,#18
	db #12,#18,#06,#18,#06,#18,#06,#18
	db #12,#18,#06,#18,#0c,#18,#0c,#18
	db #0c,#13,#12,#13,#06,#13,#06,#13
	db #06,#13,#12,#13,#06,#13,#0c,#13
	db #0c,#13,#0c,#13,#12,#13,#06,#13
	db #06,#13,#06,#13,#12,#13,#06,#13
.l17d1 equ $ + 6
	db #0c,#13,#0c,#13,#0c,#87,#30,#60
	db #2e,#30,#2c,#2e,#80,#02,#2c,#18
	db #2b,#0c,#27,#78,#24,#0c,#27,#0c
.l17e6 equ $ + 3
	db #29,#0c,#87,#be,#8a,#92,#e4,#1a
	db #12,#1a,#06,#1a,#06,#1a,#06,#1a
	db #12,#1a,#06,#1a,#0c,#1a,#0c,#1a
	db #0c,#1a,#12,#1a,#06,#1a,#06,#1a
	db #06,#1a,#12,#1a,#06,#1a,#0c,#1a
.l180f equ $ + 4
	db #0c,#1a,#0c,#87,#fe,#08,#45,#fe
	db #02,#ff,#0c,#49,#fe,#02,#ff,#0e
	db #49,#fe,#04,#ff,#0c,#4d,#fc
	dw l180f
.l1824
	db #47,#ff,#fb,#47,#ff,#f9,#47
	db #ff,#f4,#47,#47,#ff,#fb,#47,#ff
	db #f9,#47,#ff,#f4,#47,#ff,#0c,#4b
	db #ff,#02,#47,#ff,#fd,#47,#ff,#fb
	db #47,#ff,#f6,#47,#ff,#0e,#4b,#47
	db #ff,#fb,#47,#47,#ff,#fb,#47,#47
	db #ff,#fb,#47,#47,#ff,#fb,#47,#fc
	dw l1824
.l185d
	db #46,#ff,#07,#46,#ff,#05
	db #46,#46,#46,#ff,#07,#46,#ff,#05
	db #46,#46,#46,#ff,#07,#46,#ff,#05
	db #46,#46,#ff,#02,#46,#ff,#09,#46
	db #ff,#07,#46,#ff,#02,#46,#ff,#02
	db #46,#ff,#09,#46,#ff,#07,#46,#ff
	db #02,#46,#fe,#08,#46,#fc
	dw l185d
.l1897 equ $ + 4
.l1893
	db #92,#80,#60,#87,#92,#8a,#90,#e0
	db #d0,#81,#0c,#06,#0c,#06,#80,#06
	db #0c,#06,#0c,#06,#80,#06,#0c,#06
	db #0c,#06,#80,#06,#0c,#06,#0c,#06
	db #80,#06,#0c,#06,#80,#06,#0c,#06
	db #80,#06,#0c,#06,#0c,#06,#80,#06
	db #0c,#06,#0c,#06,#80,#06,#0c,#06
	db #0c,#06,#80,#06,#0c,#06,#0c,#06
.l18da equ $ + 7
	db #80,#06,#0a,#0c,#0f,#0c,#87,#93
	db #06,#e7,#8a,#91,#c7,#33,#32,#33
	db #32,#33,#32,#33,#32,#33,#32,#33
	db #32,#33,#32,#33,#32,#33,#32,#33
	db #32,#33,#32,#33,#32,#33,#32,#33
.l1901 equ $ + 6
	db #32,#33,#32,#33,#32,#87,#80,#48
.l1906 equ $ + 3
	db #80,#18,#87,#92,#8a,#91,#80,#0c
	db #e8,#b0,#83,#88,#00,#00,#24,#0c
	db #22,#0c,#24,#0c,#27,#06,#26,#0c
	db #24,#0c,#22,#06,#24,#78,#27,#0c
	db #26,#0c,#27,#0c,#26,#06,#24,#0c
	db #26,#0c,#27,#06,#26,#60,#24,#06
	db #22,#06,#20,#30,#22,#30,#24,#18
	db #22,#18,#20,#24,#1f,#06,#20,#06
.l1946 equ $ + 3
	db #1f,#c0,#87,#80,#12,#80,#06,#80
	db #0c,#80,#18,#80,#0c,#80,#0c,#80
.l1955 equ $ + 2
	db #0c,#87,#92,#8a,#80,#14,#ea,#b0
	db #83,#88,#00,#00,#24,#0c,#22,#0c
	db #24,#0c,#27,#06,#26,#0c,#24,#0c
	db #22,#06,#24,#78,#27,#0c,#26,#0c
	db #27,#0c,#26,#06,#24,#0c,#26,#0c
	db #27,#06,#26,#60,#24,#06,#22,#06
	db #20,#30,#22,#30,#24,#18,#22,#18
	db #20,#24,#1f,#06,#20,#06,#1f,#b8
.l1994 equ $ + 1
	db #87,#92,#e8,#c8,#2b,#12,#c9,#2b
	db #12,#c8,#2b,#12,#c9,#2b,#12,#c8
	db #2b,#0c,#c9,#2b,#0c,#c8,#2b,#12
	db #c9,#2b,#12,#c8,#2b,#12,#c9,#2b
	db #12,#c9,#29,#0c,#ca,#29,#0c,#c8
	db #2b,#12,#c9,#2b,#12,#c8,#2b,#12
	db #c9,#2b,#12,#c8,#2b,#0c,#c9,#2b
	db #0c,#c8,#2b,#12,#c9,#2b,#12,#c8
	db #2b,#12,#c9,#2b,#12,#c9,#29,#0c
	db #ca,#29,#0b,#eb,#00
	db #01,#87
.l19e2
	db #01
	dw l14fb,l1508,l1511
	db #01
	dw l167b,l16b2,l16c6
	db #01
	dw l15f5,l15f6,l15f7
	db #01
	dw l180f,l1824,l185d
.l19fe
	dw l152c,l1582,l15f1,l15f5
	dw l15f5,l15f5,l15b5,l15c9
	dw l15dd,l15f5,l15f5,l15f5
	dw l15f5,l15f5,l15f5,l15f5
	dw l15f5,l15f5,l15f5,l15f5
	dw l15f5,l15f8,l1634,l165a
	dw l167b,l167b,l16d5,l16ee
	dw l1761,l1787,l17d1,l17e6
	dw l180f,l180f,l180f,l180f
	dw l180f,l180f,l180f,l180f
	dw l180f,l180f,l180f,l180f
	dw l180f,l180f,l180f,l180f
	dw l180f,l180f,l180f,l180f
	dw l180f,l180f,l180f,l180f
	dw l180f,l180f,l180f,l180f
	dw l180f,l180f,l180f,l180f
	dw l180f,l180f,l180f,l180f
	dw l180f,l1893,l1897,l18da
	dw l1901,l1906,l1946,l1955
	dw l1994,l1994,l19e2,l19e2
	dw l19e2
;
.music_info
	db "Darkman (1990)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
