; Music of Steg (1992)(Codemasters Software)()()
; Ripped by Megachur the 01/03/2015
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STEG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2015
music_adr				equ #07e0
FIRST_THEME				equ 0
LAST_THEME				equ 4	; 0 -> 4

	read "music_header.asm"

	jp l07f0
	jp l08c3
	jp l07e9
;
.stop_music
.l07e9
;
	xor a
	ld (l0ca4),a
	jp l1379
;
.init_music
.l07f0
;
	ex af,af'
	xor a
	ld (l0ca4),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l0ca6
	add hl,bc
	ld ix,l083d
	ld c,#1f
	ld a,#03
.l0809
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
	jr nz,l0809
	inc a
	ld (l0942),a
	ld (l0ca4),a
	ret
.l0841 equ $ + 4
.l0840 equ $ + 3
.l083d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l085c equ $ + 7
	db #00,#00,#00,#00,#00,#00,#09,#00
.l0860 equ $ + 3
.l085f equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l087b equ $ + 6
	db #00,#00,#00,#00,#00,#12,#00,#00
.l087f equ $ + 2
.l087e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#24
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l0ca6
	add hl,bc
	ld a,(hl)
	ld (l0840),a
	inc hl
	ld a,(hl)
	ld (l0841),a
	inc hl
	ld a,(hl)
	ld (l085f),a
	inc hl
	ld a,(hl)
	ld (l0860),a
	inc hl
	ld a,(hl)
	ld (l087e),a
	inc hl
	ld a,(hl)
	ld (l087f),a
	ret
;
.play_music
.l08c3
;
	ld a,(l0ca4)
	and a
	ret z
.l08c9 equ $ + 1
	ld a,#00
	ld (l0916),a
	ld hl,l0942
	dec (hl)
	jr nz,l08ee
	ld b,(hl)
	ld ix,l083d
	call l0a08
	ld ix,l085c
	call l0a08
	ld ix,l087b
	call l0a08
	ld hl,l0942
.l08ed equ $ + 1
	ld (hl),#01
.l08ee
	ld ix,l083d
	call l0aaa
	ld (l0bbb),hl
	ld (l0bc3),a
	ld ix,l085c
	call l0aaa
	ld (l0bbd),hl
	ld (l0bc4),a
	ld ix,l087b
	call l0aaa
	ld (l0bbf),hl
	ld (l0bc5),a
.l0916 equ $ + 1
	ld a,#00
	ld (l0bc1),a
	ld hl,l0bc8
	ld d,#0d
.l091f
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f610
	out (c),c
	ld a,#d0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	or #10
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l091f
	ret
.l0942
	db #00,#bc,#a4,#a8,#ad,#6b,#9a,#95
	db #10,#84,#7c,#4a,#39,#58,#a9,#01
	db #af,#32,#a4,#0c
	pop hl
	jp l1379
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
	jr nz,l097c
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l097c
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l0a16
	ld a,(ix+#1e)
	ld c,a
	and #07
	ld hl,l0ba0
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l0a16
	ld a,(ix+#1e)
	ld c,a
	and #38
	ld hl,l0ba0
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l0a16
	ld hl,l0ba0
	ld a,(ix+#1e)
	cpl
	and (hl)
	ld (hl),a
	jr l0a16
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l0a16
	ld a,(de)
	inc de
	ld (l08c9),a
	jr l0a16
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l0a16
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l0a16
	ld (ix+#1d),b
	jr l0a16
	ld (ix+#1d),#40
	jr l0a16
	ld (ix+#1d),#c0
	jr l0a16
	set 1,(ix+#00)
	jr l0a16
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l0a39
.l0a08
	dec (ix+#10)
	jr nz,l0a46
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l0a16
	ld a,(de)
	inc de
	and a
	jp m,l0a57
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l0a39
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l0a46
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l0a53
	inc (ix+#12)
	ret
.l0a53
	dec (ix+#12)
	ret
.l0a57
	cp #b8
	jr c,l0aa2
	add #20
	jr c,l0a87
	add #10
	jr c,l0a8d
	add #10
	jr nc,l0a80
	ld c,a
	ld hl,l0c71
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	set 4,(ix+#00)
	jr l0a16
.l0a80
	add #09
	ld (l08ed),a
	jr l0a16
.l0a87
	inc a
	ld (ix+#11),a
	jr l0a16
.l0a8d
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
	jp l0a16
.l0aa2
	ld hl,l08c3
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l0aaa
	ld c,(ix+#00)
	bit 5,c
	jr z,l0af5
	ld a,(ix+#16)
	sub #10
	jr nc,l0add
	bit 6,c
	jr z,l0ae2
	add (ix+#13)
	jr nc,l0ac2
	sbc a
.l0ac2
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l0ad8
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l0af5
.l0ad8
	ld (ix+#18),a
	jr l0af5
.l0add
	ld (ix+#16),a
	jr l0af5
.l0ae2
	cpl
	sub #0f
	add (ix+#13)
	jr c,l0aeb
	sub a
.l0aeb
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l0af5
	res 5,c
.l0af5
	ld a,(ix+#12)
	bit 4,c
	jr z,l0b17
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,l0b0f
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l0b0f
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
.l0b17
	ld hl,l0bc9
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l0b71
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l0b3a
	bit 0,c
	jr nz,l0b58
.l0b3a
	bit 5,l
	jr nz,l0b4a
	sub (ix+#1b)
	jr nc,l0b55
	set 5,(ix+#1d)
	sub a
	jr l0b55
.l0b4a
	add (ix+#1b)
	cp b
	jr c,l0b55
	res 5,(ix+#1d)
	ld a,b
.l0b55
	ld (ix+#1c),a
.l0b58
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l0b63
	dec d
.l0b63
	add #a0
	jr c,l0b6f
.l0b67
	sla e
	rl d
	add #18
	jr nc,l0b67
.l0b6f
	add hl,de
	ex de,hl
.l0b71
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l0b9c
	ld b,(ix+#0e)
	djnz l0b99
	ld c,(ix+#0d)
	bit 7,c
	jr z,l0b88
	dec b
.l0b88
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l0b9c
.l0b99
	ld (ix+#0e),b
.l0b9c
	cpl
	and #03
.l0ba0 equ $ + 1
	ld a,#38
	jr nz,l0bad
	ld a,(l08c9)
	xor #08
	ld (l0916),a
	ld a,#07
.l0bad
	ld hl,l0bc2
	xor (hl)
	and (ix+#1e)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l0bc2 equ $ + 7
.l0bc1 equ $ + 6
.l0bbf equ $ + 4
.l0bbd equ $ + 2
.l0bbb
	db #00,#00,#00,#00,#00,#00,#00,#38
.l0bc8 equ $ + 5
.l0bc5 equ $ + 2
.l0bc4 equ $ + 1
.l0bc3
	db #0f,#0f,#0d,#00,#00,#00
.l0bc9
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
.l0c71
	db #09,#0e,#11,#16,#19,#1e,#21,#25
	db #27,#00,#04,#07,#0c,#87,#00,#03
	db #08,#0c,#87,#00,#05,#09,#0c,#87
	db #00,#05,#07,#0c,#87,#00,#03,#07
	db #0c,#87,#00,#0c,#00,#0c,#87,#00
	db #03,#09,#87,#00,#05,#08,#87,#00
.l0ca4 equ $ + 3
	db #05,#08,#87,#00,#00
.l0ca6
	dw l0d82,l0de0,l0e08,l0d4c
	dw l0d5a,l0d68,l0d40,l0d44
	dw l0d48,l0d34,l0d38,l0d3c
	dw l0cf8,l0cfc,l0cf4,l0d00
	dw l0d04,l0cf4,l0d08,l0cf4
	dw l0cf4,l0d0c,l0d10,l0cf4
	dw l0d14,l0d18,l0cf4,l0d1c
	dw l0cf4,l0cf4,l0d20,l0d24
	dw l0cf4,l0d28,l0cf4,l0cf4
	dw l0d2c,l0d30,l0cf4
.l0cf8 equ $ + 4
.l0cf4
	dw l1370,#0000,l1299,#0000
.l0d00 equ $ + 4
.l0cfc
	dw l12a5,#0000,l12b1,#0000
.l0d08 equ $ + 4
.l0d04
	dw l12c1,#0000,l12d1,#0000
.l0d10 equ $ + 4
.l0d0c
	dw l12dc,#0000,l12eb,#0000
.l0d18 equ $ + 4
.l0d14
	dw l12fa,#0000,l1305,#0000
.l0d20 equ $ + 4
.l0d1c
	dw l1310,#0000,l131b,#0000
.l0d28 equ $ + 4
.l0d24
	dw l1327,#0000,l1336,#0000
.l0d30 equ $ + 4
.l0d2c
	dw l1342,#0000,l1351,#0000
.l0d38 equ $ + 4
.l0d34
	dw l0e66,#0000,l0e85,#0000
.l0d40 equ $ + 4
.l0d3c
	dw l0ea7,#0000,l0ec9,#0000
.l0d48 equ $ + 4
.l0d44
	dw l0f04,#0000,l0ee7,#0000
.l0d4c
	dw l0f36,l0f36,l0f36,l0f36
.l0d5a equ $ + 6
	dw l0f36,l0f36,#0000,l0f7d
	dw l0f7d,l0f7d,l0f7d,l0f7d
.l0d68 equ $ + 4
	dw l0f7d,#0000,l0ff7,l0ff7
	dw l1027,l1027,l108c,l108c
	dw l108c,l10bb,l108c,l108c
.l0d82 equ $ + 6
	dw l108c,l10bb,#0000,l10ea
	dw l10ea,l10ea,l10ea,l10ea
	dw l10ea,l10ea,l10ea,l10ea
	dw l10ea,l10ea,l10ea,l10ea
	dw l10ea,l10ea,l10ea,l10ea
	dw l10ea,l10ea,l10ea,l10ea
	dw l10ea,l10ea,l10ea,l10ea
	dw l10ea,l10ea,l10ea,l10ea
	dw l10ea,l10ea,l10ea,l10ea
	dw l10ea,l10ea,l10ea,l10ea
	dw l10ea,l10ea,l10ea,l10ea
	dw l10ea,l10ea,l10ea,l10ea
.l0de0 equ $ + 4
	dw l10ea,#0000,l10fd,l10fd
	dw l10fd,l10fd,l1170,l1370
	dw l1170,l1370,l1184,l1184
	dw l1170,l1370,l1170,l1370
	dw l11b8,l11c8,l11c8,l11c8
.l0e08 equ $ + 4
	dw l11c8,#0000,l1111,l1132
	dw l1111,l1152,l1111,l1132
	dw l1111,l1152,l1111,l1132
	dw l1111,l1152,l1111,l1132
	dw l1111,l1152,l1111,l1132
	dw l1111,l1152,l1111,l1132
	dw l1111,l1152,l1111,l1132
	dw l1111,l1152,l1370,l1370
	dw l1276,l1287,l1276,l1287
	dw l120c,l121d,l120c,l122f
	dw l1276,l1287,l1276,l1287
	dw l1241,l1252,l1241,l1264
	dw #0000
.l0e66
	db #8a,#88,#01,#01,#83,#df,#00,#01
	db #16,#bd,#e0,#40,#3e,#3b,#3a,#39
	db #3a,#3b,#3a,#39,#37,#39,#37,#3a
.l0e85 equ $ + 7
	db #39,#37,#e1,#32,#e7,#34,#8e,#8a
	db #88,#01,#02,#83,#de,#00,#01,#02
	db #e1,#1c,#e0,#1c,#e1,#1a,#e0,#1a
	db #e1,#17,#e0,#17,#e1,#15,#e0,#15
	db #e1,#16,#e0,#17,#e1,#0e,#e7,#10
.l0ea7 equ $ + 1
	db #87,#8a,#88,#01,#01,#83,#de,#00
	db #11,#09,#e1,#34,#e0,#34,#e1,#32
	db #e0,#32,#e1,#2f,#e0,#2f,#e1,#2d
	db #e0,#2d,#e1,#2e,#e0,#2f,#e1,#26
.l0ec9 equ $ + 3
	db #e7,#28,#87,#8a,#88,#01,#01,#83
	db #df,#00,#01,#16,#bc,#e1,#26,#26
	db #32,#26,#32,#32,#2f,#2d,#26,#26
	db #32,#26,#2f,#2d,#2f,#2d,#e7,#1a
.l0ee7 equ $ + 1
	db #8e,#8a,#88,#01,#02,#82,#de,#00
	db #01,#56,#e1,#26,#26,#32,#26,#32
	db #32,#2f,#2d,#26,#26,#32,#26,#2f
.l0f04 equ $ + 6
	db #2d,#2f,#2d,#e7,#1a,#8e,#8a,#88
	db #01,#01,#83,#de,#00,#11,#09,#e1
	db #c0,#32,#c0,#32,#c0,#32,#c0,#32
	db #c0,#32,#c0,#32,#c0,#32,#c0,#32
	db #e1,#c0,#2b,#c0,#2b,#c0,#2b,#c0
	db #2b,#c0,#2d,#c0,#2d,#c0,#2d,#c0
	db #2d,#e7,#c0,#84,#02,#18,#26,#87
.l0f36
	db #8a,#88,#01,#01,#83,#df,#00,#01
	db #16,#bc,#e1,#0e,#0e,#e2,#0e,#e1
	db #0e,#0e,#e0,#0e,#e1,#11,#e0,#0c
	db #0c,#e1,#0e,#0e,#e2,#0e,#e1,#0e
	db #0e,#e0,#0e,#e1,#11,#e0,#0c,#0c
	db #e1,#13,#13,#e2,#13,#e1,#13,#13
	db #e0,#13,#e1,#16,#e0,#11,#11,#e1
	db #15,#15,#e2,#15,#e1,#15,#15,#e0
.l0f7d equ $ + 7
	db #15,#e1,#19,#e0,#15,#15,#87,#8a
	db #89,#1a,#de,#00,#01,#0f,#8d,#e3
	db #1a,#e1,#89,#24,#8d,#26,#e3,#89
	db #1a,#8d,#1a,#e1,#8d,#1a,#89,#24
	db #8d,#26,#89,#1a,#8d,#1a,#e3,#8d
	db #1a,#e1,#89,#24,#8d,#26,#e3,#89
	db #1a,#8d,#1a,#e1,#8d,#1a,#89,#24
	db #8d,#26,#89,#1a,#8d,#1a,#e3,#8d
	db #1a,#e1,#89,#24,#8d,#26,#e3,#89
	db #1a,#8d,#1a,#e1,#8d,#1a,#89,#24
	db #8d,#26,#89,#1a,#8d,#1a,#e0,#89
	db #1a,#8d,#1a,#e2,#89,#24,#8d,#26
	db #e1,#8d,#26,#e0,#89,#1a,#8d,#1a
	db #e1,#89,#24,#8d,#26,#e0,#8d,#26
	db #e1,#89,#1a,#8d,#0e,#e0,#89,#24
	db #8d,#2b,#8d,#2b,#8d,#2b,#8d,#37
.l0ff7 equ $ + 1
	db #87,#8a,#88,#01,#01,#83,#df,#00
	db #01,#16,#e2,#84,#01,#04,#26,#24
	db #26,#84,#ff,#04,#24,#e1,#29,#2b
	db #e2,#26,#24,#26,#24,#e1,#29,#2b
	db #e2,#2b,#29,#2b,#29,#e1,#2e,#2b
	db #e2,#2d,#2b,#2d,#2b,#e1,#31,#34
.l1027 equ $ + 1
	db #87,#8a,#88,#01,#01,#83,#de,#00
	db #11,#09,#e1,#c5,#32,#c5,#26,#c5
	db #39,#e0,#c5,#26,#e1,#c5,#35,#e0
	db #c5,#26,#e1,#c5,#35,#c5,#37,#c5
	db #26,#e1,#c5,#32,#c5,#26,#c5,#39
	db #e0,#c5,#26,#e1,#c5,#35,#e0,#c5
	db #26,#e1,#c5,#35,#c5,#37,#c5,#26
	db #e1,#c5,#32,#c5,#26,#c5,#39,#e0
	db #c5,#26,#e1,#c5,#35,#e0,#c5,#26
	db #e1,#c5,#35,#c5,#37,#c5,#26,#c5
	db #2d,#c5,#21,#c5,#34,#e0,#c5,#21
	db #e1,#c5,#32,#e0,#c5,#2d,#e1,#c5
.l108c equ $ + 6
	db #34,#c5,#32,#c5,#31,#87,#8a,#88
	db #01,#01,#83,#de,#00,#11,#09,#e0
	db #c5,#2d,#c5,#26,#c5,#2b,#e0,#c5
	db #2d,#c5,#26,#c5,#2b,#e0,#c5,#2d
	db #c5,#26,#c5,#2d,#e0,#c5,#26,#c5
	db #2b,#c5,#2d,#e0,#c5,#26,#c5,#2d
.l10bb equ $ + 5
	db #c5,#26,#c5,#2b,#87,#8a,#88,#01
	db #01,#83,#de,#00,#11,#09,#e0,#c5
	db #34,#c5,#2d,#c5,#32,#e0,#c5,#34
	db #c5,#2d,#c5,#32,#e0,#c5,#34,#c5
	db #2d,#c5,#34,#e0,#c5,#2d,#c5,#32
	db #c5,#34,#e0,#c5,#2d,#c5,#34,#c5
.l10ea equ $ + 4
	db #2d,#c5,#2b,#87,#8a,#88,#01,#02
	db #83,#de,#00,#01,#02,#e1,#0c,#18
.l10fd equ $ + 7
	db #10,#1c,#1d,#11,#1e,#1f,#87,#8a
	db #88,#02,#02,#83,#de,#00,#01,#02
	db #bc,#e1,#0c,#18,#10,#1c,#1d,#11
.l1111 equ $ + 3
	db #1e,#1f,#87,#8a,#89,#1a,#de,#00
	db #01,#0f,#8d,#e3,#18,#89,#24,#8d
	db #e1,#3c,#89,#1a,#8d,#1f,#8d,#e3
	db #37,#89,#24,#8d,#e1,#3c,#89,#1a
.l1132 equ $ + 4
	db #8d,#e3,#1f,#87,#8a,#89,#1a,#de
	db #00,#01,#0f,#8d,#8d,#e1,#1f,#8d
	db #89,#24,#3c,#8d,#89,#1a,#1f,#8d
	db #e3,#1f,#e1,#89,#24,#8d,#3c,#89
.l1152 equ $ + 4
	db #1a,#8d,#24,#87,#8a,#89,#1a,#de
	db #00,#01,#0f,#8d,#8d,#e1,#1f,#8d
	db #89,#24,#3c,#8d,#89,#1a,#1f,#8d
	db #1f,#89,#24,#8d,#3c,#8d,#3c,#8d
.l1170 equ $ + 2
	db #48,#87,#8a,#88,#01,#02,#82,#df
	db #00,#11,#b4,#f7,#2b,#e1,#2b,#e3
.l1184 equ $ + 6
	db #2a,#e7,#29,#e9,#28,#87,#8a,#88
	db #01,#01,#83,#df,#00,#01,#16,#e3
	db #c1,#34,#c0,#35,#c2,#37,#c1,#39
	db #c2,#37,#c0,#35,#c1,#34,#c0,#35
	db #e3,#c1,#34,#c0,#35,#c2,#37,#c1
	db #39,#e1,#c2,#37,#c0,#35,#c2,#37
	db #e3,#c0,#35,#e1,#c1,#34,#e3,#c0
.l11b8 equ $ + 2
	db #30,#87,#8a,#88,#01,#02,#82,#df
	db #00,#11,#b4,#ff,#c0,#84,#fe,#1e
.l11c8 equ $ + 2
	db #24,#87,#8a,#88,#01,#01,#83,#df
	db #00,#01,#16,#e3,#c5,#34,#c5,#37
	db #e1,#c5,#34,#e3,#c5,#35,#e1,#c5
	db #34,#e3,#c5,#37,#e1,#c5,#34,#e3
	db #c5,#35,#e1,#c5,#34,#e3,#c5,#30
	db #e3,#c5,#34,#c5,#37,#e1,#c5,#34
	db #e3,#c5,#35,#e1,#c5,#34,#e3,#c5
	db #37,#e1,#c5,#34,#e3,#c5,#35,#e1
.l120c equ $ + 6
	db #c5,#34,#e3,#c5,#37,#87,#8a,#88
	db #01,#01,#83,#de,#00,#11,#09,#e5
.l121d equ $ + 7
	db #c5,#3c,#c5,#40,#c5,#41,#87,#8a
	db #88,#01,#01,#83,#de,#00,#11,#09
	db #e5,#c5,#3c,#e3,#c5,#40,#c5,#41
.l122f equ $ + 1
	db #87,#8a,#88,#01,#01,#83,#de,#00
	db #11,#09,#e5,#c5,#40,#e3,#c5,#41
.l1241 equ $ + 3
	db #c5,#43,#87,#8a,#88,#01,#01,#83
	db #de,#00,#11,#09,#e5,#c5,#48,#c5
.l1252 equ $ + 4
	db #4c,#c5,#4d,#87,#8a,#88,#01,#01
	db #83,#de,#00,#11,#09,#e5,#c5,#48
.l1264 equ $ + 6
	db #e3,#c5,#4c,#c5,#4d,#87,#8a,#88
	db #01,#01,#83,#de,#00,#11,#09,#e5
	db #c5,#4c,#e3,#c5,#4d,#c5,#4f,#87
.l1276
	db #8a,#88,#01,#01,#83,#de,#00,#11
	db #09,#e5,#c3,#30,#c3,#24,#c3,#30
.l1287 equ $ + 1
	db #87,#8a,#88,#01,#01,#83,#de,#00
	db #11,#09,#e5,#c0,#24,#e3,#c0,#30
.l1299 equ $ + 3
	db #c0,#24,#87,#8a,#88,#04,#02,#82
.l12a5 equ $ + 7
	db #de,#01,#51,#0a,#e7,#32,#8e,#8a
	db #88,#00,#00,#82,#de,#01,#51,#0a
.l12b1 equ $ + 3
	db #e7,#32,#8e,#8a,#88,#04,#02,#82
	db #de,#01,#51,#0a,#e0,#26,#2a,#2d
.l12c1 equ $ + 3
	db #e7,#32,#8e,#8a,#88,#00,#00,#82
	db #de,#01,#51,#0a,#e0,#26,#2a,#2d
.l12d1 equ $ + 3
	db #e7,#32,#8e,#8c,#81,#dd,#00,#01
.l12dc equ $ + 6
	db #00,#89,#19,#e1,#10,#8e,#8a,#88
	db #01,#01,#82,#de,#00,#01,#06,#e5
.l12eb equ $ + 5
	db #84,#fe,#01,#32,#8e,#8a,#88,#32
	db #46,#82,#de,#00,#01,#06,#e5,#84
.l12fa equ $ + 4
	db #fe,#01,#32,#8e,#8b,#df,#00,#01
.l1305 equ $ + 7
	db #aa,#89,#10,#eb,#8d,#0c,#8e,#8b
	db #df,#00,#01,#aa,#89,#10,#eb,#8d
.l1310 equ $ + 2
	db #24,#8e,#8c,#81,#de,#00,#01,#a0
.l131b equ $ + 5
	db #89,#1a,#e1,#13,#8e,#8a,#81,#de
	db #00,#01,#e2,#e9,#84,#05,#01,#15
.l1327 equ $ + 1
	db #8e,#8a,#88,#0a,#0a,#82,#de,#00
	db #01,#e2,#e9,#84,#05,#01,#13,#8e
.l1336
	db #8a,#88,#1e,#14,#82,#db,#00,#01
.l1342 equ $ + 4
	db #00,#e1,#43,#8e,#8a,#88,#14,#05
	db #82,#de,#00,#01,#e4,#e9,#84,#fc
.l1351 equ $ + 3
	db #01,#24,#8e,#8a,#88,#0a,#04,#82
	db #de,#00,#01,#e4,#e9,#84,#fc,#01
	db #26,#8e,#8a,#88,#01,#01,#82,#db
	db #00,#01,#01,#84,#fe,#01,#ef,#c0
.l1370 equ $ + 2
	db #1e,#87,#bc,#8a,#df,#00,#f1,#01
	db #ef,#80,#87
.l1379
	ld de,#d000
.l137c
	call l1386
	dec e
	jp p,l137c
	ld de,#073f
.l1386
	ld b,#f4
	out (c),d
	ld bc,#f610
	out (c),c
	ld a,#d0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	or #10
	out (c),a
	out (c),c
	ret
;
; #29ba
; ld a,#00	-> #04 music -> #0c soundfx
; call #07e0
;
.music_info
	db "Steg (1992)(Codemasters Software)()",0
	db "",0

	read "music_end.asm"
