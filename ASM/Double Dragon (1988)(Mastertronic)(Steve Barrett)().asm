; Music of Double Dragon (1988)(Mastertronic)(Steve Barrett)()
; Ripped by Megachur the 18/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DOUBLEDR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #4800
first_theme				equ 1
last_theme				equ 3

	read "music_header.asm"

.l4800
	db #00
.music_end
.l4801
	db #00
.l4802
	db #00
.l4803
	db #00
	db #20,#44,#6f,#75,#62,#6c,#65,#20
	db #44,#72,#61,#67,#6f,#6e,#20,#31
	db #20,#6d,#75,#73,#69,#63,#20,#62
	db #79,#20,#53,#74,#65,#76,#65,#20
	db #42,#61,#72,#72,#65,#74,#74,#2e
	db #20,#5a,#38,#30,#20,#4d,#75,#73
	db #69,#63,#20,#26,#20,#46,#58,#20
	db #70,#72,#6f,#67,#72,#61,#6d,#6d
	db #69,#6e,#67,#20,#62,#79,#20,#52
	db #44,#41,#20,#28,#43,#29,#20,#31
	db #39,#38,#39,#20,#42,#69,#6e,#61
	db #72,#79,#20,#44,#65,#73,#69,#67
	db #6e,#20,#4c,#74,#64,#20
;
;.init_music
.l486a
;
	ld iy,l4e19
	add a
	ld b,a
	add a
	add b
	ld d,#00
	ld e,a
	add iy,de
	ld a,#03
	ld (l4b7e),a
	ld (l4b7f),a
	ld hl,l4b96
	ld de,l4b97
	ld bc,#0059
	ld (hl),#00
	ldir
	ld b,#03
	ld ix,l4b96
.l4892
	ld l,(iy+#00)
	ld h,(iy+#01)
	inc iy
	inc iy
	ld (ix+#00),l
	ld (ix+#01),h
	ld c,#01
.l48a4
	ld a,(hl)
	inc hl
	or a
	jp p,l48b4
	sub #28
	and #7f
	ld (ix+#11),a
	inc c
	jr l48a4
.l48b4
	and #7f
	add a
	ld d,#00
	ld e,a
	ld hl,l4e2b
	add hl,de
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	ld (ix+#02),c
	ld de,#001e
	add ix,de
	djnz l4892
	ret
;
.stop_music
.l48d2
;
	ld hl,#0000
	xor a
	ld (l4b89),hl
	ld (l4b88),a
	ld (l4801),a
	ret
;
.play_music
;
	ld a,(l4800)
	or a
	jr z,l48fe
	jp m,l48f6
;
.init_music	; theme =1,2,3
;
	ld (l4801),a
	dec a
	call l486a
	xor a
	ld (l4800),a
	jr l48fe
.l48f6
	call l48d2
	ld (l4800),a
	jr l4958
.l48fe
	ld a,(l4801)
	or a
	jr z,l4958
	ld a,(l4b7e)
	dec a
	ld (l4b7e),a
	jp p,l4929
	ld ix,l4b96
	call l498c
	ld ix,l4bb4
	call l498c
	ld ix,l4bd2
	call l498c
	ld a,(l4b7f)
	ld (l4b7e),a
.l4929
	ld ix,l4b96
	call l4ab3
	ld (l4b80),hl
	ld a,b
	ld (l4b88),a
	ld ix,l4bb4
	call l4ab3
	ld (l4b82),hl
	ld a,b
	ld (l4b89),a
	ld ix,l4bd2
	call l4ab3
	ld (l4b84),hl
	ld a,b
	ld (l4b8a),a
	ld a,#38
	ld (l4b87),a
.l4958
	call l541b
	ld b,#0b
	ld hl,l4b8b
	ld de,l4b80
	ld c,#00
.l4965
	ld a,(de)
	cp (hl)
	jr z,l4986
	ld (hl),a
	push bc
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	ld a,(hl)
	out (c),a
	ld b,#f6
	xor a
	out (c),a
	pop bc
.l4986
	inc c
	inc hl
	inc de
	djnz l4965
	ret
.l498c
	dec (ix+#09)
	ret p
.l4990
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	push hl
	pop iy
	ld a,(iy+#00)
	inc iy
	cp #ff
	jr nz,l49fc
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld d,#00
	ld e,(ix+#02)
	add hl,de
	inc (ix+#02)
	ld a,(hl)
	inc hl
	cp #fe
	jr nz,l49be
	pop hl
	call l48d2
	jp l4958
.l49be
	cp #ff
	jr nz,l49db
	ld (ix+#02),#01
	ld l,(ix+#00)
	ld h,(ix+#01)
	bit 7,(hl)
	jr z,l49da
	ld a,(hl)
	inc hl
	sub #a8
	ld (ix+#11),a
	inc (ix+#02)
.l49da
	ld a,(hl)
.l49db
	bit 7,a
	jr z,l49e9
	sub #a8
	ld (ix+#11),a
	ld a,(hl)
	inc hl
	inc (ix+#02)
.l49e9
	add a
	ld hl,l4e2b
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	jr l4990
.l49fc
	cp #c0
	jr c,l4a5c
	and #1f
	add a
	ld hl,l4d37
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld b,(hl)
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#17),a
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1c),a
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ld (ix+#12),l
	ld (ix+#13),h
	ld a,b
	add a
	ld d,#00
	ld e,a
	ld hl,l4cb2
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	ld (ix+#10),a
	ld (ix+#14),a
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#0e),l
	ld (ix+#0f),h
	ld a,(iy+#00)
	inc iy
.l4a5c
	cp #80
	jr c,l4a72
	and #3f
	ld (ix+#09),a
	ld (ix+#1b),a
	ld a,(iy+#00)
	ld (ix+#15),a
	inc iy
	jr l4a7b
.l4a72
	ld (ix+#15),a
	ld a,(ix+#1b)
	ld (ix+#09),a
.l4a7b
	set 6,(ix+#1a)
	push iy
	pop hl
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld a,(ix+#07)
	ld (ix+#06),a
	ld a,(ix+#14)
	ld (ix+#10),a
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	ld a,(ix+#12)
	ld (ix+#04),a
	ld a,(ix+#13)
	ld (ix+#05),a
	ld a,(ix+#1c)
	ld (ix+#1d),a
	ret
.l4ab3
	dec (ix+#10)
	jr nz,l4ade
	ld a,(ix+#14)
	ld (ix+#10),a
.l4abe
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	inc (ix+#0e)
	jr nz,l4acc
	inc (ix+#0f)
.l4acc
	ld a,(hl)
	inc a
	jr nz,l4ae4
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	jr l4abe
.l4ade
	ld l,(ix+#0e)
	ld h,(ix+#0f)
.l4ae4
	ld a,(hl)
	add (ix+#15)
	add (ix+#11)
	sub #24
	jp p,l4af1
	xor a
.l4af1
	ld hl,l4bf0
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld c,#00
	ld b,(ix+#1a)
	bit 6,b
	jr z,l4b4d
	ld d,(ix+#17)
	ld e,(ix+#19)
	bit 7,b
	jr nz,l4b14
	bit 0,b
	jr z,l4b42
.l4b14
	ld a,(ix+#1d)
	or a
	jr z,l4b1f
	dec (ix+#1d)
	jr l4b55
.l4b1f
	bit 5,b
	jr nz,l4b32
	ld a,e
	sub (ix+#18)
	ld e,a
	jr nc,l4b3f
	set 5,(ix+#1a)
	ld e,#00
	jr l4b3f
.l4b32
	ld a,e
	add (ix+#18)
	ld e,a
	cp d
	jr c,l4b3f
	res 5,(ix+#1a)
	ld e,d
.l4b3f
	ld (ix+#19),e
.l4b42
	srl d
	ld a,e
	sub d
	ld e,a
	ld d,#00
	jr nc,l4b4c
	dec d
.l4b4c
	add hl,de
.l4b4d
	ld a,(ix+#1a)
	xor #01
	ld (ix+#1a),a
.l4b55
	ld e,(ix+#04)
	ld d,(ix+#05)
	push de
	pop iy
	dec (ix+#06)
	jr nz,l4b7a
	ld a,(ix+#07)
	ld (ix+#06),a
	ld a,(iy+#01)
	inc a
	jr z,l4b7a
	inc iy
	push iy
	pop de
	ld (ix+#04),e
	ld (ix+#05),d
.l4b7a
	ld b,(iy+#00)
	ret
.l4b84 equ $ + 6
.l4b82 equ $ + 4
.l4b80 equ $ + 2
.l4b7f equ $ + 1
.l4b7e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b8b equ $ + 5
.l4b8a equ $ + 4
.l4b89 equ $ + 3
.l4b88 equ $ + 2
.l4b87 equ $ + 1
.l4b86
	db #00,#38,#00,#00,#00,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
.l4b97 equ $ + 1
.l4b96
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l4bb4
	dw #0475,#0435,#03f9,#03c0
	dw #038a,#0357,#0327,#02fa
	dw #02cf,#02a7,#0281,#025d
.l4bd2 equ $ + 6
	dw #023b,#021b,#01fc,#01e0
	dw #01c5,#01ac,#0194,#017d
	dw #0168,#0153,#0140,#012e
	dw #011d,#010d,#00fe,#00f0
.l4bf0 equ $ + 4
	dw #00e2,#00d6,#0000,#0e29
	dw #0d5d,#0c9c,#0be7,#0b3c
	dw #0a9b,#0a02,#0973,#08eb
	dw #086b,#07f2,#0780,#0714
	dw #06ae,#064e,#05f4,#059e
	dw #054d,#0501,#04b9,#0475
	dw #0435,#03f9,#03c0,#038a
	dw #0357,#0327,#02fa,#02cf
	dw #02a7,#0281,#025d,#023b
	dw #021b,#01fc,#01e0,#01c5
	dw #01ac,#0194,#017d,#0168
	dw #0153,#0140,#012e,#011d
	dw #010d,#00fe,#00f0,#00e2
	dw #00d6,#00ca,#00be,#00b4
	dw #00aa,#00a0,#0097,#008f
	dw #0087,#007f,#0078,#0071
	dw #006b,#0065,#005f,#005a
	dw #0055,#0050,#004c,#0047
	dw #0043,#0040,#003c,#0039
	dw #0035,#0032,#0030,#002d
	dw #002a,#0028,#0026,#0024
	dw #0022,#0020,#001e,#001c
	dw #001b,#0019,#0018,#0016
	dw #0015,#0014,#0013,#0012
	dw #0011,#0010,#000f
.l4cb2
	dw l4cce,l4cd4,l4ce2,l4ce8
	dw l4cee,l4cf4,l4cfb,l4d04
	dw l4d0d,l4d15,l4d1b,l4d23
	dw l4d29,l4d31
.l4cd4 equ $ + 6
.l4cce
	db #01,#00,#00,#00,#00,#ff,#01,#0c
	db #00,#00,#00,#00,#07,#00,#00,#00
.l4ce2 equ $ + 4
	db #00,#00,#00,#ff,#01,#0c,#16,#0f
.l4ce8 equ $ + 2
	db #18,#ff,#01,#0c,#15,#11,#18,#ff
.l4cf4 equ $ + 6
.l4cee
	db #01,#0c,#14,#0f,#18,#ff,#01,#0c
.l4cfb equ $ + 5
	db #15,#0f,#0f,#18,#ff,#01,#18,#0c
.l4d04 equ $ + 6
	db #00,#00,#00,#00,#00,#ff,#01,#0c
.l4d0d equ $ + 7
	db #00,#00,#0c,#00,#00,#00,#ff,#01
.l4d15 equ $ + 7
	db #0c,#00,#0c,#00,#00,#0c,#ff,#01
.l4d1b equ $ + 5
	db #00,#05,#08,#0c,#ff,#01,#0c,#07
.l4d23 equ $ + 5
	db #18,#00,#0c,#07,#ff,#01,#00,#04
.l4d29 equ $ + 3
	db #07,#0c,#ff,#01,#0c,#07,#03,#00
.l4d31 equ $ + 3
	db #0c,#07,#ff,#01,#00,#05,#09,#0c
	db #ff
.l4d37
	dw l4d59,l4d60,l4d69,l4d71
	dw l4d79,l4d81,l4d89,l4d9e
	dw l4dac,l4db8,l4dc1,l4dcd
	dw l4dd7,l4de4,l4dee,l4e03
	dw l4e0d
.l4d60 equ $ + 7
.l4d59
	db #00,#04,#00,#00,#00,#00,#ff,#01
	db #04,#00,#00,#00,#0f,#0e,#0c,#ff
.l4d69
	db #02,#04,#00,#00,#00,#0b,#07,#ff
.l4d71
	db #03,#04,#00,#00,#00,#0b,#07,#ff
.l4d79
	db #04,#04,#00,#00,#00,#0c,#07,#ff
.l4d81
	db #05,#04,#00,#00,#00,#0c,#07,#ff
.l4d89
	db #00,#06,#09,#10,#07,#0e,#0e,#0d
	db #0d,#0c,#09,#09,#08,#07,#06,#05
.l4d9e equ $ + 5
	db #04,#03,#02,#01,#ff,#00,#0f,#09
	db #10,#15,#0e,#0e,#0d,#0d,#0d,#0c
.l4dac equ $ + 3
	db #0b,#0a,#ff,#07,#04,#09,#10,#14
.l4db8 equ $ + 7
	db #0f,#0f,#0e,#0d,#0c,#0b,#ff,#08
	db #04,#00,#00,#00,#0f,#0e,#0c,#ff
.l4dc1
	db #0a,#04,#00,#00,#00,#0f,#0f,#0e
.l4dcd equ $ + 4
	db #0d,#09,#08,#ff,#09,#04,#00,#00
.l4dd7 equ $ + 6
	db #00,#0e,#0c,#09,#08,#ff,#06,#03
	db #00,#00,#00,#0f,#0f,#0e,#0c,#0c
.l4de4 equ $ + 3
	db #0b,#0a,#ff,#0b,#03,#00,#00,#00
.l4dee equ $ + 5
	db #0e,#0c,#09,#08,#ff,#0c,#02,#00
	db #00,#00,#0f,#0f,#0e,#0c,#0a,#0a
	db #0a,#09,#09,#09,#09,#08,#08,#07
.l4e03 equ $ + 2
	db #07,#ff,#0d,#03,#00,#00,#00,#0e
.l4e0d equ $ + 4
	db #0c,#09,#08,#ff,#00,#04,#09,#10
	db #14,#0f,#0f,#0e,#0d,#0c,#0b,#ff
.l4e19
	dw l4e5f,l4e70,l4e83,l5027
	dw l502d,l5030,l5158,l515b
	dw l515e
.l4e2b
	dw l4e9e,l4ea2,l4f17,l4f5d
	dw l4f6e,l4fa8,l5033,l5090
	dw l50c2,l50db,l51c4,l51ed
	dw l521b,l5222,l4fc3,l525c
	dw l526f,l5295,l4ff5,l517e
	dw l52bb,l5052,l5071,l5161
	dw l516a,l5177
.l4e5f
	db #cc,#01,#01,#01,#01,#01,#01,#09
	db #09,#09,#01,#01,#0f,#0f,#09,#09
.l4e70 equ $ + 1
	db #ff,#c0,#04,#c0,#02,#02,#02,#02
	db #13,#c0,#0a,#0a,#0a,#02,#13,#10
.l4e83 equ $ + 4
	db #10,#0a,#0a,#ff,#c0,#00,#00,#00
	db #00,#03,#c0,#05,#0e,#12,#c0,#0c
	db #0b,#cc,#0d,#c0,#05,#cc,#0e,#00
	db #00,#c0,#11,#cc,#0d,#14,#ff
.l4ea2 equ $ + 4
.l4e9e
	db #c0,#bf,#00,#ff,#c1,#81,#1b,#c2
	db #27,#c1,#1b,#1b,#c2,#27,#c1,#1b
	db #c2,#1b,#c1,#19,#c1,#81,#1b,#c2
	db #27,#c1,#1b,#1b,#c2,#27,#c1,#1b
	db #c2,#1b,#c1,#19,#c1,#1e,#c3,#25
	db #c1,#1e,#1e,#c3,#25,#c1,#1e,#c3
	db #19,#c1,#20,#c1,#1e,#c3,#25,#c1
	db #1e,#1e,#c3,#25,#c1,#1e,#c3,#19
	db #c1,#1e,#c1,#20,#c4,#24,#c1,#20
	db #20,#c4,#24,#c1,#20,#c4,#18,#c1
	db #1e,#c1,#20,#c4,#24,#c1,#20,#20
	db #c4,#24,#c1,#20,#c4,#18,#c1,#1e
	db #c1,#16,#c4,#26,#26,#26,#c1,#16
	db #c4,#26,#26,#26,#c1,#16,#c5,#29
	db #29,#29,#c1,#16,#c5,#29,#29,#29
.l4f17 equ $ + 1
	db #ff,#c6,#83,#3a,#3a,#3a,#81,#38
	db #36,#38,#36,#83,#33,#33,#31,#83
	db #3a,#85,#3a,#83,#38,#81,#36,#38
	db #36,#83,#33,#81,#33,#36,#33,#31
	db #33,#36,#83,#38,#c8,#30,#c6,#81
	db #33,#36,#38,#36,#33,#36,#33,#31
	db #83,#30,#81,#32,#35,#83,#38,#c8
	db #32,#c6,#81,#32,#83,#3a,#81,#3c
.l4f5d equ $ + 7
	db #3e,#3c,#3a,#38,#37,#35,#ff,#c7
	db #97,#3f,#87,#3a,#97,#3d,#87,#42
	db #97,#3f,#87,#3c,#8f,#3e,#41,#ff
.l4f6e
	db #cc,#83,#3f,#85,#3f,#83,#27,#81
	db #27,#83,#3f,#85,#3f,#83,#1b,#81
	db #1b,#83,#3f,#85,#3f,#83,#27,#81
	db #27,#83,#3f,#85,#3f,#83,#1b,#81
	db #1b,#83,#3f,#85,#3f,#83,#27,#81
	db #27,#83,#3f,#85,#3f,#83,#1b,#81
	db #1b,#83,#41,#8b,#41,#83,#44,#8b
.l4fa8 equ $ + 2
	db #44,#ff,#c9,#93,#3f,#83,#3a,#85
	db #3f,#81,#42,#93,#3f,#83,#3a,#85
	db #3f,#81,#42,#93,#3f,#83,#3a,#3f
.l4fc3 equ $ + 5
	db #41,#8f,#3e,#46,#ff,#cc,#93,#3f
	db #81,#3a,#83,#3f,#42,#81,#3a,#3f
	db #42,#8f,#3f,#81,#3a,#83,#3f,#42
	db #81,#3a,#3f,#42,#8f,#3f,#81,#3a
	db #83,#3f,#42,#81,#3f,#83,#3e,#81
	db #3e,#83,#3f,#81,#3f,#83,#41,#81
.l4ff5 equ $ + 7
	db #41,#85,#42,#83,#44,#44,#ff,#d0
	db #93,#3f,#81,#3a,#83,#3f,#42,#81
	db #3a,#3f,#42,#8f,#3f,#81,#3a,#83
	db #3f,#42,#81,#3a,#3f,#42,#8f,#3f
	db #81,#3a,#83,#3f,#42,#81,#3f,#83
	db #3e,#81,#3e,#83,#3f,#81,#3f,#83
	db #41,#81,#41,#85,#42,#83,#44,#44
.l502d equ $ + 7
.l5027 equ $ + 1
	db #ff,#cc,#06,#15,#06,#16,#fe,#c0
.l5033 equ $ + 5
.l5030 equ $ + 2
	db #07,#ff,#c0,#08,#ff,#c1,#81,#1d
	db #cb,#83,#24,#81,#24,#c1,#1d,#cb
	db #83,#24,#81,#24,#c1,#81,#1d,#cb
	db #83,#24,#81,#24,#c1,#1d,#cb,#83
.l5052 equ $ + 4
	db #24,#81,#24,#ff,#c1,#81,#1e,#cf
	db #83,#25,#81,#25,#c1,#1e,#cf,#83
	db #25,#81,#25,#c1,#81,#19,#cd,#83
	db #25,#81,#25,#c1,#19,#cd,#83,#25
.l5071 equ $ + 3
	db #81,#25,#ff,#c1,#81,#18,#cb,#83
	db #2b,#81,#2b,#c1,#18,#cb,#83,#2b
	db #81,#2b,#c1,#81,#19,#cd,#83,#31
	db #81,#31,#c1,#19,#cd,#83,#31,#81
.l5090 equ $ + 2
	db #31,#ff,#c9,#87,#3c,#83,#3a,#3c
	db #81,#38,#37,#89,#35,#81,#38,#3d
	db #3a,#38,#3a,#83,#3d,#3f,#41,#81
	db #3f,#41,#3d,#3f,#3d,#3a,#87,#3c
	db #83,#3a,#3c,#81,#38,#37,#35,#37
	db #83,#38,#35,#8b,#33,#83,#33,#35
.l50c2 equ $ + 4
	db #33,#87,#31,#ff,#c7,#87,#38,#37
	db #8f,#35,#87,#3a,#38,#83,#33,#8b
	db #31,#87,#38,#37,#8f,#35,#8b,#3c
.l50db equ $ + 5
	db #83,#37,#8f,#35,#ff,#c1,#81,#1b
	db #c2,#27,#c1,#1b,#1b,#c2,#27,#c1
	db #1b,#c2,#1b,#c1,#19,#c1,#81,#1b
	db #c2,#27,#c1,#1b,#1b,#c2,#27,#c1
	db #1b,#c2,#1b,#c1,#19,#c1,#19,#c4
	db #29,#c1,#19,#19,#c4,#29,#c1,#19
	db #c4,#1d,#c1,#19,#c1,#19,#c4,#29
	db #c1,#19,#19,#c4,#29,#c1,#19,#c4
	db #1d,#c1,#19,#c1,#20,#c4,#24,#c1
	db #20,#20,#c4,#24,#c1,#20,#c4,#18
	db #c1,#1e,#c1,#20,#c4,#24,#c1,#20
	db #20,#c4,#24,#c1,#20,#c4,#18,#c1
	db #1e,#c1,#81,#1b,#c2,#27,#c1,#1b
	db #1b,#c2,#27,#c1,#1b,#c2,#1b,#c1
	db #19,#c1,#81,#1b,#c2,#27,#c1,#1b
	db #1b,#c2,#27,#c1,#1b,#c2,#1b,#c1
.l515b equ $ + 5
.l5158 equ $ + 2
	db #19,#ff,#cc,#17,#fe,#c0,#18,#fe
.l5161 equ $ + 3
.l515e
	db #cc,#19,#fe,#ce,#87,#27,#cf,#25
.l516a equ $ + 4
	db #ce,#9f,#27,#ff,#c9,#81,#3d,#3d
	db #3a,#38,#3a,#36,#33,#31,#9f,#33
.l5177 equ $ + 1
	db #ff,#c7,#87,#1b,#1e,#9f,#1b,#ff
.l517e
	db #c6,#83,#3a,#3a,#3a,#81,#38,#36
	db #38,#36,#83,#33,#33,#31,#83,#3a
	db #85,#3a,#83,#38,#81,#36,#38,#36
	db #83,#33,#81,#33,#36,#33,#31,#33
	db #36,#83,#38,#c8,#30,#c6,#81,#33
	db #36,#38,#36,#33,#36,#33,#31,#83
	db #30,#81,#32,#35,#83,#38,#c8,#32
	db #c6,#81,#32,#83,#3a,#81,#3c,#3e
.l51c4 equ $ + 6
	db #41,#44,#46,#48,#4a,#ff,#c6,#81
	db #33,#36,#38,#91,#33,#ca,#87,#33
	db #c6,#81,#33,#36,#38,#91,#35,#ca
	db #87,#31,#c6,#81,#33,#36,#38,#91
	db #33,#ca,#87,#2c,#cc,#81,#33,#36
.l51ed equ $ + 7
	db #38,#91,#33,#ca,#87,#27,#ff,#c7
	db #8b,#3a,#81,#38,#3a,#3d,#3f,#3d
	db #3a,#3d,#3a,#38,#3a,#83,#36,#81
	db #38,#83,#33,#81,#35,#93,#31,#81
	db #33,#83,#38,#81,#33,#83,#36,#81
	db #33,#83,#35,#33,#81,#31,#33,#31
.l521b equ $ + 5
	db #83,#2e,#9f,#33,#ff,#c7,#9f,#33
.l5222 equ $ + 4
	db #35,#33,#33,#ff,#c7,#89,#3a,#81
	db #36,#38,#3a,#3d,#3a,#3d,#3f,#3d
	db #3a,#38,#3a,#83,#36,#81,#38,#83
	db #33,#81,#35,#8d,#31,#81,#2e,#31
	db #33,#33,#36,#87,#38,#81,#33,#36
	db #38,#36,#38,#3a,#80,#36,#38,#81
	db #36,#33,#31,#83,#33,#81,#36,#31
.l525c equ $ + 6
	db #36,#33,#31,#91,#33,#ff,#ce,#87
	db #2e,#2e,#2e,#2e,#2c,#2c,#2c,#2c
	db #33,#33,#33,#33,#33,#33,#33,#33
.l526f equ $ + 1
	db #ff,#c6,#81,#36,#35,#83,#35,#35
	db #35,#35,#35,#35,#35,#81,#35,#33
	db #83,#33,#33,#33,#33,#33,#33,#33
	db #81,#31,#33,#83,#33,#33,#33,#33
.l5295 equ $ + 7
	db #33,#33,#33,#33,#9b,#33,#ff,#c8
	db #81,#3a,#38,#35,#38,#83,#35,#33
	db #35,#38,#35,#33,#81,#35,#33,#83
	db #2d,#33,#35,#33,#2d,#27,#2c,#83
	db #31,#ad,#33,#c7,#81,#33,#36,#38
.l52bb equ $ + 5
	db #3a,#3d,#3f,#42,#ff,#c7,#80,#33
	db #36,#38,#8a,#3a,#81,#38,#3d,#3f
	db #3d,#3f,#81,#42,#3f,#80,#3d,#3f
	db #3d,#3a,#81,#38,#3a,#81,#36,#35
	db #36,#35,#8d,#31,#81,#2e,#31,#33
	db #80,#33,#36,#38,#33,#36,#38,#33
	db #36,#38,#33,#36,#38,#33,#36,#38
	db #33,#36,#38,#33,#36,#38,#33,#36
	db #38,#33,#3a,#38,#3a,#81,#36,#33
	db #31,#33,#31,#2e,#2c,#2a,#2c,#25
.l5309 equ $ + 3
	db #8f,#27,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#01
.l5320
	dw l5336,l5340,l5352,l5364
	dw l537c,l5390,l53a1,l53b9
	dw l53c3,l53cd,l53d7
.l5336
	db #01,#0f,#02,#ff,#05,#ff,#01,#07
.l5340 equ $ + 2
	db #03,#06,#01,#05,#04,#01,#01,#02
	db #dc,#05,#02,#02,#07,#0a,#04,#ff
.l5352 equ $ + 4
	db #01,#07,#0a,#06,#01,#05,#04,#01
	db #01,#02,#14,#05,#fe,#02,#07,#0a
.l5364 equ $ + 6
	db #04,#ff,#01,#07,#0a,#06,#08,#0f
	db #00,#00,#14,#04,#ff,#02,#07,#04
	db #08,#02,#00,#00,#28,#07,#01,#00
.l537c equ $ + 6
	db #00,#32,#07,#01,#09,#06,#08,#0f
	db #00,#00,#1e,#07,#03,#04,#ff,#03
	db #00,#00,#14,#03,#00,#01,#02,#07
.l5390 equ $ + 2
	db #14,#06,#08,#0f,#00,#05,#00,#07
	db #04,#00,#04,#00,#03,#00,#1e,#01
.l53a1 equ $ + 3
	db #07,#0a,#06,#08,#0f,#00,#05,#00
	db #04,#ff,#04,#08,#05,#03,#ff,#ec
	db #02,#07,#05,#03,#00,#15,#02,#07
.l53b9 equ $ + 3
	db #05,#09,#06,#01,#0f,#04,#ff,#02
.l53c3 equ $ + 5
	db #02,#ff,#07,#0a,#06,#01,#0f,#04
.l53cd equ $ + 7
	db #ff,#04,#02,#ff,#07,#32,#06,#01
	db #0f,#04,#ff,#01,#02,#9b,#07,#0f
.l53d7 equ $ + 1
	db #06,#08,#0a,#00,#00,#23,#04,#01
	db #01,#07,#03,#04,#ff
	db #01,#07,#0f,#06
.l53e7
	push ix
	pop hl
	ld d,h
	ld e,l
	inc de
	ld (hl),#00
	ld bc,#0016
	ldir
	add a
	ld d,#00
	ld e,a
	ld hl,l5320
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#02),l
	ld (ix+#03),h
	ld (ix+#07),#01
	ret
.l541b
	ld ix,l5309
	ld a,(l4802)
	or a
	jr z,l5430
	dec a
	ld (l4803),a
	call l53e7
	xor a
	ld (l4802),a
.l5430
	ld a,(ix+#0c)
	cp #09
	ret z
	call l5463
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld (l4b82),hl
	ld a,(ix+#0a)
	ld (l4b89),a
	bit 3,(ix+#0c)
	jr nz,l5454
	ld a,(ix+#0b)
	ld (l4b86),a
.l5454
	ld a,(ix+#0c)
	add a
	ld b,a
	ld a,(l4b87)
	and #ed
	or b
	ld (l4b87),a
	ret
.l5463
	dec (ix+#07)
	jp nz,l5503
	ld l,(ix+#02)
	ld h,(ix+#03)
.l546f
	ld a,(hl)
	inc hl
	ld b,(hl)
	inc hl
	or a
	jr z,l54bd
	dec a
	jr z,l54c7
	dec a
	jr z,l54cc
	dec a
	jr z,l54d1
	dec a
	jr z,l54e2
	dec a
	jr z,l54ee
	dec a
	jr z,l54fa
	dec a
	jr z,l54a9
	dec a
	jr z,l549e
	dec (ix+#06)
	jr z,l549b
	ld l,(ix+#04)
	ld h,(ix+#05)
	jr l546f
.l549b
	dec hl
	jr l546f
.l549e
	ld (ix+#04),l
	ld (ix+#05),h
	ld (ix+#06),b
	jr l54b5
.l54a9
	ld (ix+#07),b
	ld (ix+#02),l
	ld (ix+#03),h
	jr l5503
.l54b4
	inc hl
.l54b5
	ld (ix+#02),l
	ld (ix+#03),h
	jr l546f
.l54bd
	ld (ix+#09),b
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	jr l54b5
.l54c7
	ld (ix+#0a),b
	jr l54b5
.l54cc
	ld (ix+#0b),b
	jr l54b5
.l54d1
	ld (ix+#0e),b
	ld a,(hl)
	ld (ix+#0d),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	ld (ix+#12),a
	jr l54b4
.l54e2
	ld (ix+#0f),b
	ld a,(hl)
	ld (ix+#13),a
	ld (ix+#14),a
	jr l54b4
.l54ee
	ld (ix+#10),b
	ld a,(hl)
	ld (ix+#15),a
	ld (ix+#16),a
	jr l54b4
.l54fa
	ld (ix+#0c),#09
	xor a
	ld (l4803),a
	ret
.l5503
	dec (ix+#11)
	jr nz,l5521
	ld a,(ix+#12)
	ld (ix+#11),a
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld e,(ix+#0d)
	ld d,(ix+#0e)
	add hl,de
	ld (ix+#08),l
	ld (ix+#09),h
.l5521
	dec (ix+#13)
	jr nz,l553f
	ld a,(ix+#14)
	ld (ix+#13),a
	ld a,(ix+#0a)
	add (ix+#0f)
	jp p,l5536
	xor a
.l5536
	cp #10
	jr c,l553c
	ld a,#0f
.l553c
	ld (ix+#0a),a
.l553f
	dec (ix+#15)
	jr nz,l5553
	ld a,(ix+#16)
	ld (ix+#15),a
	ld a,(ix+#0b)
	add (ix+#10)
	ld (ix+#0b),a
.l5553
	ret
	pop hl
	ret
;
; #4804
; db " Double Dragon 1 music by Steve Barrett. Z80 Music & FX programming by RDA (C) 1989 Binary Design Ltd "
;
.music_info
	db "Double Dragon (1988)(Mastertronic)(Steve Barrett)",0
	db "Double Dragon 1 music by Steve Barrett. Z80 Music & FX programming by RDA (C) 1989 Binary Design Ltd",0

	read "music_end.asm"
