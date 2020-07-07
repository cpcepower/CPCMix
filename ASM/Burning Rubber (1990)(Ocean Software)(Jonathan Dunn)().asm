; Music of Burning Rubber (1990)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 19/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BURNINGR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #0a3c
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"
;
.init_music	; a=0 (main theme)->4
.l0a3c
;
	ld hl,l0b09
	ld (hl),#00
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l119f
	add hl,bc
	ld a,(hl)
	ld (l0b31),a
	inc hl
	ld ix,l0a93
	ld c,#27
	ld a,#03
.l0a5a
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
	jr nz,l0a5a
	ld (l0d9f),a
	inc a
	ld (l0b08),a
	ld (l0b09),a
	ret
.l0a93
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l0aba
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l0ae1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.l0b08
	db #00
.l0b09
.music_end
	db #00
;
.play_music
.l0b0a
;
	ld a,(l0b09)
	and a
	ret z
.l0b10 equ $ + 1
	ld a,#00
	ld (l0b5d),a
	ld hl,l0b08
	dec (hl)
	jr nz,l0b35
	ld b,(hl)
	ld ix,l0a93
	call l0c9d
	ld ix,l0aba
	call l0c9d
	ld ix,l0ae1
	call l0c9d
.l0b31 equ $ + 1
	ld a,#01
	ld (l0b08),a
.l0b35
	ld ix,l0a93
	call l0d6c
	ld (l0e7d),hl
	ld (l0e85),a
	ld ix,l0aba
	call l0d6c
	ld (l0e7f),hl
	ld (l0e86),a
.l0b4f
	ld ix,l0ae1
	call l0d6c
	ld (l0e81),hl
	ld (l0e87),a
.l0b5d equ $ + 1
	ld a,#00
	ld (l0e83),a
	ld hl,l0e88
	ld d,#0b
.l0b66
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
	jp p,l0b66
	ret
.l0b87
	xor a
	ld (l0b09),a
.l0b8b
	ld de,#0d00
.l0b8e
	call l0b98
	dec d
	jp p,l0b8e
	ld de,#073f
.l0b98
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
	ld (l0e85),a
	ld (l0e86),a
	ld (l0e87),a
	ret
;
.stop_music
;
	xor a
	ld (l0b09),a
	call l0b8b
	xor a
	ld (l0e85),a
	ld (l0e86),a
	ld (l0e87),a
	ret
	db #a2,#8a,#8e,#93,#51,#80,#7b,#11
	db #6a,#62,#26,#10,#38,#8f,#06,#9c
	db #a1,#a6,#aa,#b0
	pop hl
	jp l0b87
	jp l1112
	ld a,(ix+#26)
	ld c,a
	and #07
	ld hl,l0e48
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l0cb2
	ld a,(ix+#26)
	ld c,a
	and #38
	ld hl,l0e48
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l0cb2
	ld hl,l0e48
	ld a,(ix+#26)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l0cb2
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l0cb2
	ld a,(de)
	inc de
	ld (l0d9f),a
	jr l0cb2
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l0cb2
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l0cb2
	ld (ix+#1d),b
	jr l0cb2
	ld (ix+#1d),#40
	jr l0cb2
	ld (ix+#1d),#c0
	jr l0cb2
	set 1,(ix+#00)
	jr l0cb2
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l0cf0
	res 5,(ix+#00)
	jr l0cf0
	ld (ix+#1f),#ff
	jr l0cb2
	ld (ix+#1f),b
	jr l0cb2
	ld a,#01
	ld (ix+#24),a
	jr l0cb2
	ld a,(de)
	inc de
	ld (ix+#11),a
	ld (ix+#24),#00
	jr l0cb2
.l0c9d
	dec (ix+#10)
	jr nz,l0d11
	ld (ix+#00),b
	ld a,(ix+#25)
	or a
	jp nz,l1112
	ld e,(ix+#01)
	ld d,(ix+#02)
.l0cb2
	ld a,(de)
	inc de
	and a
	jp m,l0d22
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l0cc7
	ld (l0b10),a
.l0cc7
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
.l0cf0
	ld a,(ix+#24)
	or a
	jr z,l0cfa
	ld a,(de)
	inc de
	jr l0cfd
.l0cfa
	ld a,(ix+#11)
.l0cfd
	ld (ix+#10),a
.l0d00
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l0d10
	ld (ix+#1f),#ff
.l0d10
	ret
.l0d11
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l0d1e
	inc (ix+#12)
	ret
.l0d1e
	dec (ix+#12)
	ret
.l0d22
	cp #b0
	jr c,l0d64
	add #20
	jr c,l0d4c
	add #30
	jr nc,l0d44
	ld c,a
	ld hl,l0f4a
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l0cb2
.l0d44
	add #09
	ld (l0b31),a
	jp l0cb2
.l0d4c
	ld hl,l0fe5
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
	jp l0cb2
.l0d64
	ld hl,l0b4f
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l0d6c
	ld c,(ix+#00)
	bit 5,c
	jr z,l0d9e
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l0d98
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l0d98
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l0d98
	ld a,(ix+#18)
	ld (ix+#13),a
.l0d9f equ $ + 1
.l0d9e
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l0db8
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l0db8
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l0e8a
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l0e19
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l0de2
	bit 0,c
	jr nz,l0e00
.l0de2
	bit 5,l
	jr nz,l0df2
	sub (ix+#1b)
	jr nc,l0dfd
	set 5,(ix+#1d)
	sub a
	jr l0dfd
.l0df2
	add (ix+#1b)
	cp b
	jr c,l0dfd
	res 5,(ix+#1d)
	ld a,b
.l0dfd
	ld (ix+#1c),a
.l0e00
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l0e0b
	dec d
.l0e0b
	add #a0
	jr c,l0e17
.l0e0f
	sla e
	rl d
	add #18
	jr nc,l0e0f
.l0e17
	add hl,de
	ex de,hl
.l0e19
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l0e44
	ld b,(ix+#0e)
	djnz l0e41
	ld c,(ix+#0d)
	bit 7,c
	jr z,l0e30
	dec b
.l0e30
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l0e44
.l0e41
	ld (ix+#0e),b
.l0e44
	cpl
	and #03
.l0e48 equ $ + 1
	ld a,#00
	jr nz,l0e55
	ld a,(l0b10)
	xor #08
	ld (l0b5d),a
	ld a,#07
.l0e55
	ld hl,l0e84
	xor (hl)
	and (ix+#26)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l0e78
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#26)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l0b5d),a
.l0e78
	ex de,hl
	ld a,(ix+#13)
	ret
.l0e84 equ $ + 7
.l0e83 equ $ + 6
.l0e81 equ $ + 4
.l0e7f equ $ + 2
.l0e7d
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l0e88 equ $ + 3
.l0e87 equ $ + 2
.l0e86 equ $ + 1
.l0e85
	db #0f,#0f,#0f,#00,#00
.l0e8a
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
.l0f4a
	db #16,#16,#19,#1e,#23,#28,#2d,#32
	db #37,#4c,#4f,#52,#57,#5c,#61,#66
	db #72,#75,#78,#7b,#7f,#82,#80,#10
	db #0c,#04,#80,#18,#0c,#13,#07,#10
	db #84,#1c,#10,#18,#0c,#13,#87,#1c
	db #10,#16,#0a,#13,#87,#13,#07,#0f
	db #03,#0c,#80,#18,#0c,#13,#07,#11
	db #84,#1d,#11,#18,#0c,#13,#87,#18
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#80,#0c,#0c,#00
	db #80,#11,#0c,#05,#80,#13,#07,#10
	db #04,#0c,#80,#18,#0c,#13,#07,#0f
	db #83,#13,#07,#11,#05,#0c,#80,#00
	db #00,#00,#02,#02,#82,#00,#04,#00
	db #02,#00,#01,#00,#04,#00,#02,#00
	db #01,#80,#0c,#07,#05,#80,#0c,#07
	db #03,#80,#0c,#07,#04,#80,#0c,#0a
	db #07,#03,#80,#0c,#09,#05,#80,#0c
	db #08,#05,#80
.l0fe5
	dw l1000,l100f,l101b,l1028
	dw l103b,l1061,l1070,l1099
	dw l10cb,l10d9,l10ed,l10f8
	dw l1109
.l1000 equ $ + 1
	db #01,#0d,#0c,#0b,#0a,#09,#08,#06
	db #05,#04,#03,#02,#01,#00,#87,#01
.l100f
	db #0a,#09,#08,#07,#06,#05,#03,#02
.l101b equ $ + 4
	db #01,#00,#87,#00,#0a,#0b,#0c,#0b
	db #0a,#09,#09,#08,#07,#06,#05,#87
.l1028 equ $ + 1
	db #01,#0c,#0b,#0a,#09,#09,#09,#08
	db #08,#08,#07,#06,#05,#04,#03,#02
.l103b equ $ + 4
	db #01,#00,#87,#01,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#08,#08,#08,#08
	db #07,#07,#07,#07,#06,#06,#06,#06
	db #05,#05,#05,#04,#04,#04,#03,#03
	db #03,#02,#02,#02,#01,#01,#01,#00
.l1061 equ $ + 2
	db #87,#05,#00,#01,#02,#03,#04,#05
	db #06,#07,#07,#08,#08,#09,#89,#87
.l1070 equ $ + 1
	db #01,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#08,#07,#07,#07,#06,#06,#06
	db #05,#05,#05,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
.l1099 equ $ + 2
	db #87,#01,#0c,#0b,#0a,#09,#00,#00
	db #00,#00,#0b,#0a,#09,#08,#00,#00
	db #00,#00,#0a,#09,#08,#06,#00,#00
	db #00,#00,#09,#08,#07,#05,#00,#00
	db #00,#00,#08,#07,#06,#04,#00,#00
	db #00,#00,#05,#04,#03,#02,#00,#00
.l10cb equ $ + 4
	db #00,#00,#87,#02,#0c,#0b,#0a,#09
	db #08,#06,#05,#04,#03,#02,#01,#00
.l10d9 equ $ + 2
	db #87,#00,#0f,#0f,#0e,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l10ed equ $ + 6
	db #03,#02,#01,#00,#87,#00,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#87
.l10f8 equ $ + 1
	db #00,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
.l1109 equ $ + 2
	db #87,#00,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#06,#87
.l1112
	xor a
	ld (ix+#25),a
	ld l,(ix+#03)
	ld h,(ix+#04)
.l111c
	ld a,(ix+#21)
	or a
	jp z,l1138
	dec a
	ld (ix+#21),a
	jp z,l113c
	ld l,(ix+#22)
	ld h,(ix+#23)
	ld (ix+#03),l
	ld (ix+#04),h
	jr l113c
.l1138
	ld (ix+#20),#00
.l113c
	ld a,(hl)
	inc hl
	or a
	jp m,l115f
	ld (ix+#03),l
	ld (ix+#04),h
	add a
	ld e,a
	ld d,#00
	ld hl,l11c2
	add hl,de
	ld a,(hl)
	ld e,a
	inc hl
	ld d,(hl)
	ld (ix+#01),e
	ld (ix+#02),d
	ld b,#00
	jp l0cb2
.l115f
	cp #fd
	jr z,l1196
	cp #ff
	jr z,l118e
	cp #fe
	jr z,l1180
	cp #fc
	jr z,l1179
.l116f
	ld a,r
	out (#fe),a
	ld b,#64
.l1175
	djnz l1175
	jr l116f
.l1179
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l113c
.l1180
	ld a,(hl)
	inc hl
	ld (ix+#21),a
	ld (ix+#22),l
	ld (ix+#23),h
	jp l113c
.l118e
	ld a,(hl)
	inc hl
	ld (ix+#20),a
	jp l113c
.l1196
	ld l,(ix+#05)
	ld h,(ix+#06)
	jp l111c
.l119f
	db #01
	dw l120a,l122c,l123e
	db #01
	dw l15df,l15f1,l15fb
	db #01
	dw l16e7,l16f3,l16fd
	db #01
	dw l18fa,l1901,l1942
	db #01
	dw l1a28,l1a29,l1a2a
.l11c2
	dw l1258,l125b,l12d8,l1305
	dw l13f0,l1467,l14b9,l14d5
	dw l14d8,l14d9,l14df,l12b4
	dw l12bf,l1291,l1538,l1569
	dw l15b1,l1605,l1609,l1697
	dw l16b2,l1729,l17e7,l1839
	dw l1884,l18b8,l194c,l1950
	dw l1993,l19b9,l19d2,l19f9
	dw l1a21,l1a2b,l1a40,l1a50
.l120a
	db #09,#01,#0d,#0b,#01,#0d,#0c,#ff
	db #0c,#0a,#01,#0d,#0e,#ff,#02,#01
	db #ff,#02,#0d,#ff,#02,#0b,#ff,#02
	db #01,#ff,#02,#0d,#ff,#02,#0b,#07
	db #fd,#00
.l122c
	db #fe,#0a,#05,#03,#fe,#04,#05,#fe
	db #03,#0f,#05,#fe,#08,#ff,#02,#05
	db #fd,#00
.l123e
	db #fe,#0a,#ff,#f4,#02,#04,#fe,#04
	db #ff,#f4,#02,#fe,#03,#ff,#f4,#10
	db #ff,#f4,#02,#fe,#08,#ff,#f6,#02
	db #fd,#00
.l125b equ $ + 3
.l1258
	db #80,#60,#87,#8a,#e3,#91,#81,#b9
	db #2d,#0c,#32,#24,#38,#02,#39,#2e
	db #32,#0c,#39,#0c,#35,#0c,#37,#06
	db #80,#06,#37,#03,#80,#03,#37,#12
	db #39,#18,#30,#0c,#32,#24,#38,#02
	db #39,#2e,#26,#0c,#2b,#06,#80,#06
	db #2c,#06,#80,#06,#2d,#0c,#32,#30
.l1291 equ $ + 1
	db #87,#2d,#0c,#32,#24,#38,#02,#39
	db #2e,#32,#0c,#39,#0c,#35,#0c,#37
	db #06,#80,#06,#37,#03,#80,#03,#37
	db #12,#39,#18,#30,#0c,#32,#24,#38
.l12b4 equ $ + 4
	db #02,#39,#22,#87,#38,#02,#39,#0a
.l12bf equ $ + 7
	db #37,#06,#35,#06,#32,#54,#87,#b0
	db #93,#06,#1a,#1d,#21,#26,#29,#26
	db #29,#2b,#2d,#29,#2d,#30,#32,#2d
	db #30,#32,#35,#37,#39,#3c,#92,#87
.l12d8
	db #91,#8a,#e2,#92,#bc,#32,#12,#b5
	db #32,#12,#bc,#32,#12,#b5,#32,#12
	db #bc,#32,#0c,#b5,#32,#0c,#bc,#32
	db #12,#b5,#32,#12,#bc,#32,#0c,#b3
	db #29,#0c,#29,#0c,#e3,#2b,#0c,#e2
.l1305 equ $ + 5
	db #2b,#06,#80,#06,#87,#16,#12,#16
	db #06,#e9,#8c,#bf,#22,#0c,#8a,#b8
	db #e0,#16,#12,#16,#0c,#16,#06,#e9
	db #8c,#bf,#22,#0c,#8a,#b8,#e0,#16
	db #0c,#11,#12,#11,#06,#e9,#8c,#bf
	db #22,#0c,#8a,#b8,#e0,#11,#12,#11
	db #0c,#11,#06,#e9,#8c,#bf,#22,#06
	db #8a,#b8,#e0,#11,#06,#11,#0c,#16
	db #12,#16,#06,#e9,#8c,#bf,#22,#0c
	db #8a,#b8,#e0,#16,#12,#16,#0c,#16
	db #06,#e9,#8c,#bf,#22,#0c,#8a,#b8
	db #e0,#16,#0c,#1a,#12,#1a,#06,#e9
	db #8c,#bf,#22,#0c,#8a,#b8,#e0,#1a
	db #12,#1a,#0c,#1a,#06,#26,#06,#0e
	db #06,#1a,#0c,#16,#12,#16,#06,#e9
	db #8c,#bf,#22,#0c,#8a,#b8,#e0,#16
	db #12,#16,#0c,#16,#06,#e9,#8c,#bf
	db #22,#0c,#8a,#b8,#e0,#b0,#16,#03
	db #16,#03,#16,#03,#16,#03,#b8,#13
	db #12,#13,#06,#e9,#8c,#bf,#22,#0c
	db #8a,#b8,#e0,#13,#12,#13,#0c,#13
	db #06,#e9,#8c,#bf,#22,#06,#8a,#b8
	db #e0,#13,#06,#13,#0c,#16,#12,#16
	db #06,#e9,#8c,#bf,#22,#0c,#8a,#b8
	db #e0,#16,#12,#16,#0c,#16,#06,#e9
	db #8c,#bf,#22,#0c,#8a,#b8,#e0,#16
	db #0c,#15,#12,#15,#06,#e9,#8c,#bf
	db #22,#0c,#8a,#b8,#e0,#15,#12,#15
	db #0c,#15,#06,#e9,#8c,#bf,#22,#0c
	db #8a,#b8,#e0,#0c,#06,#0d,#06,#87
.l13f0
	db #b3,#2e,#12,#2e,#12,#2e,#12,#2e
	db #0c,#2e,#06,#2e,#0c,#2e,#0c,#bb
	db #35,#12,#35,#12,#35,#12,#35,#0c
	db #35,#06,#35,#0c,#35,#0c,#b3,#2e
	db #12,#2e,#12,#2e,#12,#2e,#0c,#2e
	db #06,#2e,#0c,#2e,#0c,#bc,#32,#12
	db #32,#12,#32,#12,#32,#0c,#32,#06
	db #32,#0c,#32,#0c,#b3,#2e,#12,#2e
	db #12,#2e,#12,#2e,#0c,#2e,#06,#2e
	db #0c,#2e,#0c,#b5,#37,#12,#37,#12
	db #37,#12,#37,#0c,#37,#06,#37,#0c
	db #37,#0c,#b3,#2e,#12,#2e,#12,#2e
	db #12,#2e,#0c,#2e,#06,#2e,#0c,#2e
	db #0c,#2d,#12,#2d,#12,#2d,#12,#2d
.l1467 equ $ + 7
	db #12,#90,#8c,#bf,#20,#18,#87,#8a
	db #e0,#90,#b8,#92,#88,#00,#00,#82
	db #0e,#12,#1a,#06,#e9,#8c,#bf,#22
	db #0c,#e0,#8a,#b8,#18,#06,#1a,#06
	db #0e,#0c,#0e,#0c,#e9,#8c,#bf,#22
	db #0c,#e0,#8a,#b8,#18,#06,#1a,#06
	db #0e,#12,#1a,#06,#8c,#e9,#bf,#22
	db #0c,#e0,#8a,#b8,#18,#06,#1a,#06
	db #11,#0c,#11,#0c,#8c,#e9,#bf,#22
	db #06,#e0,#8a,#b8,#13,#06,#15,#06
	db #8c,#e9,#bf,#22,#06,#e0,#8a,#b8
.l14b9 equ $ + 1
	db #87,#8a,#e2,#b9,#93,#0c,#32,#2d
	db #26,#32,#2d,#26,#32,#2d,#26,#32
	db #2d,#26,#93,#06,#35,#30,#29,#30
.l14d5 equ $ + 5
	db #37,#32,#2b,#32,#87,#80,#0c,#87
.l14df equ $ + 7
.l14d9 equ $ + 1
.l14d8
	db #87,#92,#80,#c0,#80,#b4,#87,#83
	db #88,#00,#00,#32,#24,#2e,#30,#2d
	db #06,#2e,#06,#30,#0c,#2d,#0c,#2b
	db #0c,#29,#18,#93,#06,#24,#29,#2b
	db #29,#2d,#30,#92,#32,#24,#2e,#30
	db #32,#0c,#2d,#06,#80,#06,#26,#06
	db #80,#06,#2b,#06,#2d,#0c,#26,#36
	db #32,#24,#2e,#30,#2e,#06,#2e,#06
	db #2e,#0c,#2d,#0c,#2d,#0c,#2b,#18
	db #26,#18,#26,#06,#28,#06,#29,#0c
	db #28,#0c,#28,#0c,#28,#24,#29,#0c
	db #28,#24,#26,#0c,#25,#30,#81,#87
.l1538
	db #38,#02,#39,#0a,#37,#06,#35,#06
	db #32,#48,#e4,#b0,#83,#88,#01,#01
	db #32,#0c,#34,#06,#35,#06,#32,#a8
	db #32,#0c,#34,#06,#35,#06,#32,#a8
	db #32,#0c,#34,#06,#35,#06,#32,#a8
	db #32,#0c,#34,#06,#35,#06,#32,#b4
.l1569 equ $ + 1
	db #87,#8a,#e0,#90,#b8,#92,#0e,#12
	db #1a,#06,#e9,#8c,#bf,#22,#0c,#e0
	db #8a,#b8,#18,#06,#1a,#06,#0e,#0c
	db #0e,#0c,#e9,#8c,#bf,#22,#0c,#e0
	db #8a,#b8,#18,#06,#1a,#06,#0e,#12
	db #1a,#06,#8c,#e9,#bf,#22,#0c,#e0
	db #8a,#b8,#18,#06,#1a,#06,#0e,#0c
	db #0e,#0c,#e9,#8c,#bf,#22,#06,#e0
	db #8a,#b8,#13,#06,#14,#06,#15,#06
.l15b1 equ $ + 1
	db #87,#91,#8a,#e2,#92,#bc,#32,#12
	db #b5,#32,#12,#bc,#32,#12,#b5,#32
	db #12,#bc,#32,#0c,#b5,#32,#0c,#bc
	db #32,#12,#b5,#32,#12,#bc,#32,#0c
	db #b5,#32,#0c,#32,#0c,#bc,#e3,#32
	db #0c,#e2,#32,#06,#80,#06,#87
.l15df
	db #fe,#08,#11,#ff,#f4,#fe,#02,#14
	db #fe,#04,#11,#ff,#02,#fe,#02,#14
.l15f1 equ $ + 2
	db #fd,#00,#fe,#05,#13,#ff,#02,#fe
	db #02,#13,#fd,#00
.l15fb
	db #fe,#05,#12,#ff,#02,#fe,#02,#12
	db #fd,#00
.l1609 equ $ + 4
.l1605
	db #92,#80,#70,#87,#8a,#e8,#90,#b8
	db #92,#88,#00,#00,#83,#0e,#15,#1a
	db #07,#e9,#8c,#bf,#24,#0e,#e8,#8a
	db #b8,#18,#07,#1a,#07,#0e,#0e,#0e
	db #0e,#e9,#8c,#bf,#24,#0e,#e8,#8a
	db #b8,#1c,#0e,#11,#15,#1d,#07,#8c
	db #e9,#bf,#24,#0e,#e8,#8a,#b8,#1c
	db #07,#1d,#07,#11,#0e,#11,#0e,#8c
	db #e9,#bf,#24,#07,#e8,#8a,#b8,#11
	db #07,#13,#0e,#15,#15,#21,#07,#e9
	db #8c,#bf,#24,#0e,#e8,#8a,#b8,#1f
	db #07,#21,#07,#15,#0e,#15,#0e,#e9
	db #8c,#bf,#24,#0e,#e8,#8a,#b8,#1d
	db #0e,#10,#15,#1c,#07,#8c,#e9,#bf
	db #24,#0e,#e8,#8a,#b8,#1a,#07,#1c
	db #07,#11,#0e,#11,#0e,#8c,#e9,#bf
	db #24,#07,#8a,#b8,#e8,#1d,#07,#8c
	db #e9,#bf,#24,#07,#8a,#b8,#e8,#1d
.l1697 equ $ + 2
	db #07,#87,#91,#8a,#e7,#92,#c1,#26
	db #54,#28,#1c,#c2,#29,#54,#2b,#1c
	db #c1,#2d,#54,#c2,#2b,#1c,#c1,#28
.l16b2 equ $ + 5
	db #38,#c2,#29,#38,#87,#91,#8a,#ea
	db #92,#b0,#83,#88,#01,#01,#3e,#2a
	db #39,#0e,#3c,#15,#39,#15,#41,#0e
	db #40,#15,#3c,#15,#39,#38,#3c,#0e
	db #40,#38,#3e,#38,#3b,#15,#3c,#15
	db #34,#16,#85,#8f,#06,#e1,#b8,#41
	db #0e,#3c,#07,#39,#07,#35,#07,#80
	db #07,#87
.l16e7
	db #fe,#04,#18,#19,#19,#ff,#01,#fe
	db #04,#18,#fd,#00
.l16f3
	db #ff,#f4,#fe,#03,#15,#ff,#f5,#15
	db #fd,#00
.l16fd
	db #16,#ff,#03,#16,#ff,#05,#16,#ff
	db #05,#17,#16,#ff,#03,#16,#ff,#05
	db #16,#ff,#05,#17,#16,#ff,#03,#16
	db #ff,#05,#16,#ff,#05,#17,#ff,#01
	db #16,#ff,#04,#16,#ff,#06,#16,#ff
	db #06,#17,#fd,#00
.l1729
	db #eb,#8a,#92,#81,#c1,#80,#0c,#30
	db #12,#80,#06,#30,#06,#80,#06,#30
	db #0c,#80,#06,#30,#0c,#80,#06,#30
	db #06,#30,#06,#80,#0c,#30,#12,#80
	db #06,#30,#06,#80,#06,#30,#0c,#80
	db #06,#30,#0c,#80,#06,#30,#06,#30
	db #06,#c3,#80,#0c,#30,#12,#80,#06
	db #30,#06,#80,#06,#30,#0c,#80,#06
	db #30,#0c,#80,#06,#30,#06,#30,#06
	db #80,#0c,#30,#12,#80,#06,#30,#06
	db #80,#06,#30,#0c,#80,#06,#30,#0c
	db #80,#06,#30,#06,#30,#06,#c0,#80
	db #0c,#35,#12,#80,#06,#35,#06,#80
	db #06,#35,#0c,#80,#06,#35,#0c,#80
	db #06,#35,#06,#35,#06,#c2,#80,#0c
	db #35,#12,#80,#06,#35,#06,#80,#06
	db #35,#0c,#80,#06,#35,#0c,#80,#06
	db #35,#06,#35,#06,#c0,#80,#0c,#35
	db #12,#80,#06,#35,#06,#80,#06,#35
	db #0c,#80,#06,#35,#0c,#80,#06,#35
	db #06,#35,#06,#c2,#80,#0c,#35,#12
	db #80,#06,#35,#06,#c0,#80,#06,#35
	db #0c,#80,#06,#35,#06,#80,#06,#35
.l17e7 equ $ + 6
	db #06,#35,#06,#35,#06,#87,#8a,#e0
	db #90,#b8,#92,#88,#00,#00,#83,#0c
	db #12,#18,#06,#e9,#8c,#bf,#22,#0c
	db #e0,#8a,#b8,#18,#06,#18,#06,#0c
	db #0c,#0c,#0c,#e9,#8c,#bf,#22,#0c
	db #e0,#8a,#b8,#18,#06,#18,#06,#0c
	db #12,#18,#06,#8c,#e9,#bf,#22,#0c
	db #e0,#8a,#b8,#18,#06,#18,#06,#0c
	db #0c,#0c,#0c,#8c,#e9,#bf,#22,#06
	db #e0,#8a,#b8,#0c,#06,#0c,#06,#8c
	db #e9,#bf,#22,#06,#e0,#8a,#b8,#87
.l1839
	db #0c,#12,#18,#06,#e9,#8c,#bf,#22
	db #0c,#e0,#8a,#b8,#18,#06,#18,#06
	db #0c,#0c,#0c,#0c,#e9,#8c,#bf,#22
	db #0c,#e0,#8a,#b8,#18,#06,#18,#06
	db #0c,#12,#18,#03,#18,#03,#8c,#e9
	db #bf,#22,#0c,#e0,#8a,#b8,#18,#06
	db #18,#06,#0c,#0c,#13,#0c,#8c,#e9
	db #bf,#22,#06,#e0,#8a,#b8,#16,#06
	db #18,#06,#8c,#e9,#bf,#22,#06,#e0
.l1884 equ $ + 3
	db #8a,#b8,#87,#8a,#e1,#b8,#90,#92
	db #83,#88,#00,#00,#30,#0c,#80,#12
	db #30,#06,#80,#06,#30,#06,#80,#0c
	db #30,#06,#80,#0c,#30,#06,#80,#06
	db #30,#06,#30,#0c,#80,#12,#30,#06
	db #80,#06,#30,#06,#80,#0c,#30,#06
.l18b8 equ $ + 7
	db #80,#0c,#32,#06,#80,#0c,#87,#8a
	db #ec,#91,#b0,#82,#88,#01,#01,#80
	db #0c,#37,#0c,#3c,#0c,#37,#0c,#3e
	db #12,#37,#12,#3c,#18,#37,#0c,#3e
	db #3c,#3c,#06,#3e,#06,#3f,#30,#3c
	db #24,#43,#60,#41,#06,#43,#06,#46
	db #30,#41,#30,#3f,#30,#3e,#30,#3a
	db #30,#37,#18,#3a,#0c,#3c,#6c,#87
	db #11,#fd,#00
	db #11,#fd,#00
	db #11,#fd,#00
.l18fa
	db #ff,#f4,#fe,#08,#1b,#fd,#00
.l1901
	db #1c,#ff,#03,#1c,#ff,#fe,#1c,#ff
	db #f9,#1c,#1c,#ff,#03,#1c,#ff,#fe
	db #1c,#ff,#f9,#1c,#1c,#ff,#03,#1c
	db #ff,#fe,#1c,#ff,#f9,#1c,#1c,#ff
	db #03,#1c,#ff,#fe,#1c,#ff,#f9,#1c
	db #1c,#ff,#03,#1c,#ff,#fe,#1c,#ff
	db #f9,#1c,#1c,#ff,#03,#1c,#ff,#fe
	db #1c,#ff,#f9,#1c,#fe,#08,#20,#fd
	db #00
.l1942
	db #1d,#1d,#1f,#1f,#1e,#1e,#1d,#1d
	db #fd,#00
.l1950 equ $ + 4
.l194c
	db #92,#80,#a0,#87,#8a,#ec,#81,#91
	db #92,#c1,#32,#14,#32,#14,#c2,#30
	db #0a,#c1,#32,#14,#c2,#30,#0a,#c2
	db #35,#14,#35,#14,#c1,#34,#0a,#c2
	db #35,#14,#c1,#34,#0a,#c4,#37,#14
	db #37,#14,#c2,#37,#0a,#c4,#37,#0a
	db #c2,#37,#0a,#c4,#37,#14,#37,#14
	db #37,#14,#37,#0a,#8c,#bf,#e0,#91
.l1993 equ $ + 7
	db #30,#0a,#30,#05,#30,#05,#87,#8a
	db #e0,#90,#b8,#92,#88,#00,#00,#83
	db #1a,#14,#8c,#e9,#bf,#2b,#0a,#e0
	db #8a,#b8,#0e,#0a,#1a,#0a,#1a,#0a
	db #8c,#e9,#bf,#2b,#0a,#e0,#8a,#b8
.l19b9 equ $ + 5
	db #18,#05,#1a,#05,#87,#8a,#e4,#91
	db #b0,#81,#92,#88,#00,#00,#83,#2d
	db #46,#30,#0a,#32,#46,#30,#0a,#2b
.l19d2 equ $ + 6
	db #46,#30,#0a,#32,#50,#87,#ea,#88
	db #00,#00,#83,#b0,#32,#14,#32,#14
	db #32,#0a,#35,#0a,#37,#14,#38,#02
	db #39,#12,#3c,#0a,#39,#28,#3c,#05
	db #3e,#05,#41,#14,#40,#14,#3e,#14
.l19f9 equ $ + 5
	db #40,#0a,#3e,#5a,#87,#eb,#81,#b9
	db #35,#1e,#34,#1e,#30,#14,#35,#0a
	db #34,#14,#30,#14,#2b,#0a,#2d,#0a
	db #30,#0a,#35,#1e,#34,#1e,#30,#14
	db #35,#0a,#34,#14,#30,#14,#37,#0a
.l1a21 equ $ + 5
	db #35,#0a,#32,#0a,#87,#80,#14,#8c
	db #bf,#24,#3c,#87
.l1a2a equ $ + 2
.l1a29 equ $ + 1
.l1a28
	db #21,#22,#23
.l1a2b
	db #8a,#91,#ec,#b0,#92,#83,#88,#01
	db #01,#93,#0a,#37,#35,#34,#35,#34
.l1a40 equ $ + 5
	db #30,#92,#32,#1e,#8e,#8a,#90,#b0
	db #ea,#92,#83,#88,#01,#01,#16,#1e
.l1a50 equ $ + 5
	db #18,#1e,#1a,#1e,#8e,#8a,#90,#b0
	db #ec,#92,#81,#c1,#2e,#1e,#30,#1e
	db #c4,#2d,#1e,#8e
;
; push af
; push bc
; ld b,#f5
; in a,(c)
; rra
; jr nc,l1a83
; push de
; push hl
; exx
; ex af,af'
; push af
; push bc
; push de
; push hl
; push ix
; push iy
; call l0b0a
; pop iy
; pop ix
; pop hl
; pop de
; pop bc
; pop af
; ex af,af'
; exx
; pop hl
; pop de
; .l1a83
; pop bc
; pop af
; ei
; ret
; xor a
; call l0a3c
;
.music_info
	db "Burning Rubber (1990)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
