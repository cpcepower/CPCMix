; Music of Dj Puff (1992)(Codemasters)(Allister Brimble)()
; Ripped by Megachur the 13/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DJPUFF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 13
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #0ac7
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"

;
.stop_music
;
	xor a
	ld (l0f82),a
	jp l15b6
;
.init_music
;
	ex af,af'
	xor a
	ld (l0f82),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l0f84
	add hl,bc
	ld ix,l0b1b
	ld c,#1f
	ld a,#03
.l0ae7
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
	jr nz,l0ae7
	inc a
	ld (l0c20),a
	ld (l0f82),a
	ret
.l0b1f equ $ + 4
.l0b1e equ $ + 3
.l0b1b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l0b3e equ $ + 4
.l0b3d equ $ + 3
.l0b3a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l0b5d equ $ + 4
.l0b5c equ $ + 3
.l0b59
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l0f84
	add hl,bc
	ld a,(hl)
	ld (l0b1e),a
	inc hl
	ld a,(hl)
	ld (l0b1f),a
	inc hl
	ld a,(hl)
	ld (l0b3d),a
	inc hl
	ld a,(hl)
	ld (l0b3e),a
	inc hl
	ld a,(hl)
	ld (l0b5c),a
	inc hl
	ld a,(hl)
	ld (l0b5d),a
	ret
;
.play_music
.l0ba1
;
	ld a,(l0f82)
	and a
	ret z
.l0ba7 equ $ + 1
	ld a,#00
	ld (l0bf4),a
	ld hl,l0c20
	dec (hl)
	jr nz,l0bcc
	ld b,(hl)
	ld ix,l0b1b
	call l0ce6
	ld ix,l0b3a
	call l0ce6
	ld ix,l0b59
	call l0ce6
	ld hl,l0c20
.l0bcb equ $ + 1
	ld (hl),#01
.l0bcc
	ld ix,l0b1b
	call l0d88
	ld (l0e99),hl
	ld (l0ea1),a
	ld ix,l0b3a
	call l0d88
	ld (l0e9b),hl
	ld (l0ea2),a
	ld ix,l0b59
	call l0d88
	ld (l0e9d),hl
	ld (l0ea3),a
.l0bf4 equ $ + 1
	ld a,#00
	ld (l0e9f),a
	ld hl,l0ea6
	ld d,#0d
.l0bfd
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#d0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	or #00                  ; ???
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l0bfd
	ret
.l0c20
	db #00,#bc,#a4,#a8,#ad,#6b,#9a,#95
	db #10,#84,#7c,#4a,#39,#58,#a9,#01
	xor a
	ld (l0f82),a
	pop hl
	jp l15b6
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
	jr nz,l0c5a
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l0c5a
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l0cf4
	ld a,(ix+#1e)
	ld c,a
	and #07
	ld hl,l0e7e
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l0cf4
	ld a,(ix+#1e)
	ld c,a
	and #38
	ld hl,l0e7e
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l0cf4
	ld hl,l0e7e
	ld a,(ix+#1e)
	cpl
	and (hl)
	ld (hl),a
	jr l0cf4
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l0cf4
	ld a,(de)
	inc de
	ld (l0ba7),a
	jr l0cf4
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l0cf4
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l0cf4
	ld (ix+#1d),b
	jr l0cf4
	ld (ix+#1d),#40
	jr l0cf4
	ld (ix+#1d),#c0
	jr l0cf4
	set 1,(ix+#00)
	jr l0cf4
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l0d17
.l0ce6
	dec (ix+#10)
	jr nz,l0d24
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l0cf4
	ld a,(de)
	inc de
	and a
	jp m,l0d35
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l0d17
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l0d24
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l0d31
	inc (ix+#12)
	ret
.l0d31
	dec (ix+#12)
	ret
.l0d35
	cp #b8
	jr c,l0d80
	add #20
	jr c,l0d65
	add #10
	jr c,l0d6b
	add #10
	jr nc,l0d5e
	ld c,a
	ld hl,l0f4f
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	set 4,(ix+#00)
	jr l0cf4
.l0d5e
	add #09
	ld (l0bcb),a
	jr l0cf4
.l0d65
	inc a
	ld (ix+#11),a
	jr l0cf4
.l0d6b
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
	jp l0cf4
.l0d80
	ld hl,l0ba1
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l0d88
	ld c,(ix+#00)
	bit 5,c
	jr z,l0dd3
	ld a,(ix+#16)
	sub #10
	jr nc,l0dbb
	bit 6,c
	jr z,l0dc0
	add (ix+#13)
	jr nc,l0da0
	sbc a
.l0da0
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l0db6
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l0dd3
.l0db6
	ld (ix+#18),a
	jr l0dd3
.l0dbb
	ld (ix+#16),a
	jr l0dd3
.l0dc0
	cpl
	sub #0f
	add (ix+#13)
	jr c,l0dc9
	sub a
.l0dc9
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l0dd3
	res 5,c
.l0dd3
	ld a,(ix+#12)
	bit 4,c
	jr z,l0df5
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,l0ded
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l0ded
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
.l0df5
	ld hl,l0ea7
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l0e4f
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l0e18
	bit 0,c
	jr nz,l0e36
.l0e18
	bit 5,l
	jr nz,l0e28
	sub (ix+#1b)
	jr nc,l0e33
	set 5,(ix+#1d)
	sub a
	jr l0e33
.l0e28
	add (ix+#1b)
	cp b
	jr c,l0e33
	res 5,(ix+#1d)
	ld a,b
.l0e33
	ld (ix+#1c),a
.l0e36
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l0e41
	dec d
.l0e41
	add #a0
	jr c,l0e4d
.l0e45
	sla e
	rl d
	add #18
	jr nc,l0e45
.l0e4d
	add hl,de
	ex de,hl
.l0e4f
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l0e7a
	ld b,(ix+#0e)
	djnz l0e77
	ld c,(ix+#0d)
	bit 7,c
	jr z,l0e66
	dec b
.l0e66
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l0e7a
.l0e77
	ld (ix+#0e),b
.l0e7a
	cpl
	and #03
.l0e7e equ $ + 1
	ld a,#38
	jr nz,l0e8b
	ld a,(l0ba7)
	xor #08
	ld (l0bf4),a
	ld a,#07
.l0e8b
	ld hl,l0ea0
	xor (hl)
	and (ix+#1e)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l0ea0 equ $ + 7
.l0e9f equ $ + 6
.l0e9d equ $ + 4
.l0e9b equ $ + 2
.l0e99
	db #00,#00,#00,#00,#00,#00,#00,#38
.l0ea6 equ $ + 5
.l0ea3 equ $ + 2
.l0ea2 equ $ + 1
.l0ea1
	db #0f,#0f,#0d,#00,#00,#00
.l0ea7
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
.l0f4f
	db #09,#0e,#11,#16,#19,#1e,#21,#25
	db #27,#00,#05,#09,#0c,#87,#00,#03
	db #07,#0c,#87,#00,#05,#08,#0c,#87
	db #00,#04,#07,#0c,#87,#00,#03,#07
	db #0c,#87,#00,#0c,#00,#0c,#87,#00
	db #03,#09,#87,#00,#05,#08,#87,#00
.l0f82 equ $ + 3
.music_end equ $ + 3
	db #05,#08,#87,#00,#00
.l0f84
	dw l10da,l10fc,l111e,l0fa2
	dw l100c,l1076,l1140,l1144
	dw l1148,l114c,l1150,l1154
.l0fa2 equ $ + 6
	dw l1158,l115c,l1160,l125e
	dw l1294,l12ae,l12db,l125e
	dw l1294,l12ae,l12db,l125e
	dw l1294,l12ae,l12db,l12f5
	dw l132b,l1345,l139f,l12f5
	dw l132b,l1345,l139f,l13b9
	dw l13c5,l13c8,l13c5,l13b9
	dw l13c5,l13c8,l13c5,l13b9
	dw l13c5,l13c8,l13c5,l13b9
	dw l13c5,l13c8,l13c5,l12f5
	dw l132b,l1345,l139f,l12f5
	dw l132b,l1345,l139f,l12f5
	dw l132b,l1345,l139f,l12f5
	dw l132b,l1345,l139f,#0000
.l100c
	dw l13cb,l13cb,l13e6,l13e6
	dw l13cb,l13cb,l13e6,l13e6
	dw l13cb,l13cb,l13e6,l13e6
	dw l13f8,l13f8,l13cb,l13cb
	dw l13f8,l13f8,l13cb,l13cb
	dw l1425,l1435,l143c,l1435
	dw l1425,l1435,l143c,l1435
	dw l1425,l1435,l143c,l1435
	dw l1425,l1435,l143c,l1435
	dw l13f8,l13f8,l13cb,l13cb
	dw l13f8,l13f8,l13cb,l13cb
	dw l13f8,l13f8,l13cb,l13cb
	dw l13f8,l13f8,l13cb,l13cb
	dw #0000
.l1076
	dw l15ad,l15ad,l15ad,l15ad
	dw l1443,l1443,l1452,l146b
	dw l1486,l1495,l149b,l14aa
	dw l14b9,l14bf,l14ca,l14e5
	dw l14f4,l14fc,l1507,l1522
	dw l153b,l154d,l1554,l1522
	dw l153b,l1564,l1522,l153b
	dw l154d,l1554,l1522,l153b
	dw l1564,l14aa,l14b9,l14bf
	dw l14ca,l14e5,l14f4,l14fc
	dw l15ad,l1573,l158b,l1573
	dw l159b,l1573,l158b,l1573
	dw l159b,#0000
.l10da
	dw l125e,l1294,l12ae,l12db
	dw l125e,l1294,l12ae,l12db
	dw l12f5,l132b,l1345,l139f
	dw l12f5,l132b,l1372,l1372
	dw #0000
.l10fc
	dw l13cb,l13cb,l13e6,l13e6
	dw l13cb,l13cb,l13e6,l13e6
	dw l13f8,l13f8,l13cb,l13cb
	dw l13f8,l13f8,l1413,l1413
	dw #0000
.l111e
	dw l11bb,l11bb,l11d7,l11f2
	dw l11bb,l11bb,l11d7,l11f2
	dw l120d,l120d,l1228,l1228
	dw l120d,l120d,l1243,l1243
	dw #0000
.l1140
	dw l1168,#0000
.l1144
	dw l1178,#0000
.l1148
	dw l15ad,#0000
.l114c
	dw l1187,#0000
.l1150
	dw l1199,#0000
.l1154
	dw l15ad,#0000
.l1158
	dw l11ab,#0000
.l115c
	dw l15ad,#0000
.l1160
	dw l15ad,#0000
	dw l15ad,#0000
.l1168
	db #8a,#88,#02,#02,#83,#df,#00,#01
	db #18,#bd,#e3,#84,#d8,#01,#18,#8e
.l1178
	db #8a,#88,#02,#02,#83,#df,#00,#01
.l1187 equ $ + 7
	db #18,#e3,#84,#d8,#01,#1a,#8e,#8c
	db #88,#01,#02,#82,#df,#00,#01,#06
	db #bd,#89,#04,#e3,#84,#32,#01,#24
.l1199 equ $ + 1
	db #8e,#8c,#88,#01,#02,#82,#df,#00
	db #01,#06,#bd,#89,#04,#e3,#84,#32
.l11ab equ $ + 3
	db #01,#26,#8e,#8b,#88,#01,#02,#82
	db #df,#00,#01,#68,#bd,#89,#28,#e3
.l11bb equ $ + 3
	db #8d,#30,#8e,#8a,#88,#02,#02,#83
	db #df,#00,#01,#18,#bd,#e1,#c5,#24
	db #c5,#28,#c5,#2b,#c5,#30,#c5,#24
.l11d7 equ $ + 7
	db #c5,#28,#c5,#2b,#c5,#30,#87,#8a
	db #88,#02,#02,#83,#df,#00,#01,#18
	db #e1,#c5,#22,#c5,#26,#c5,#29,#c5
	db #2e,#c5,#22,#c5,#26,#c5,#29,#c5
.l11f2 equ $ + 2
	db #2e,#87,#8a,#88,#02,#02,#83,#df
	db #00,#01,#18,#e1,#c5,#22,#c5,#26
	db #c5,#29,#c5,#2e,#c5,#29,#c5,#26
.l120d equ $ + 5
	db #c5,#22,#c5,#1d,#87,#8a,#88,#02
	db #02,#83,#df,#00,#01,#18,#e1,#c5
	db #26,#c5,#2d,#c5,#2a,#c5,#32,#c5
	db #2d,#c5,#36,#c5,#32,#c5,#39,#87
.l1228
	db #8a,#88,#02,#02,#83,#df,#00,#01
	db #18,#e1,#c5,#37,#c5,#30,#c5,#34
	db #c5,#2b,#c5,#30,#c5,#28,#c5,#2b
.l1243 equ $ + 3
	db #c5,#24,#87,#8a,#88,#02,#02,#83
	db #df,#00,#01,#18,#e1,#c5,#3e,#c5
	db #37,#c5,#3b,#c5,#32,#c5,#37,#c5
.l125e equ $ + 6
	db #2f,#c5,#32,#c5,#2b,#87,#8a,#88
	db #02,#02,#83,#df,#00,#01,#07,#e1
	db #0c,#0c,#8a,#89,#1a,#de,#00,#01
	db #0f,#8d,#30,#8a,#88,#02,#02,#83
	db #df,#00,#01,#07,#0c,#11,#13,#8a
	db #89,#1a,#de,#00,#01,#0f,#8d,#3c
	db #8a,#88,#02,#02,#83,#df,#00,#01
.l1294 equ $ + 4
	db #07,#e3,#0c,#87,#e1,#0c,#8a,#89
	db #1a,#de,#00,#01,#0f,#8d,#3c,#8a
	db #88,#02,#02,#83,#df,#00,#01,#07
.l12ae equ $ + 6
	db #0c,#11,#13,#07,#09,#87,#e1,#0a
	db #0a,#8a,#89,#1a,#de,#00,#01,#0f
	db #8d,#3c,#8a,#88,#02,#02,#83,#df
	db #00,#01,#07,#0a,#13,#11,#8a,#89
	db #1a,#de,#00,#01,#0f,#8d,#3c,#8a
	db #88,#02,#02,#83,#df,#00,#01,#07
.l12db equ $ + 3
	db #e3,#0a,#87,#e1,#0a,#8a,#89,#1a
	db #de,#00,#01,#0f,#8d,#3c,#8a,#88
	db #02,#02,#83,#df,#00,#01,#07,#0a
.l12f5 equ $ + 5
	db #07,#13,#0a,#0b,#87,#8a,#88,#02
	db #02,#83,#df,#00,#01,#07,#e1,#0e
	db #0e,#8a,#89,#1a,#de,#00,#01,#0f
	db #8d,#32,#8a,#88,#02,#02,#83,#df
	db #00,#01,#07,#0e,#13,#15,#8a,#89
	db #1a,#de,#00,#01,#0f,#8d,#3e,#8a
	db #88,#02,#02,#83,#df,#00,#01,#07
.l132b equ $ + 3
	db #e3,#0e,#87,#e1,#0e,#8a,#89,#1a
	db #de,#00,#01,#0f,#8d,#3e,#8a,#88
	db #02,#02,#83,#df,#00,#01,#07,#0e
.l1345 equ $ + 5
	db #13,#15,#09,#0b,#87,#e1,#0c,#0c
	db #8a,#89,#1a,#de,#00,#01,#0f,#8d
	db #3e,#8a,#88,#02,#02,#83,#df,#00
	db #01,#07,#0c,#15,#13,#8a,#89,#1a
	db #de,#00,#01,#0f,#8d,#3e,#8a,#88
	db #02,#02,#83,#df,#00,#01,#07,#e3
.l1372 equ $ + 2
	db #0c,#87,#e1,#13,#13,#8a,#89,#1a
	db #de,#00,#01,#0f,#8d,#4f,#8a,#88
	db #02,#02,#83,#df,#00,#01,#07,#13
	db #1c,#1a,#8a,#89,#1a,#de,#00,#01
	db #0f,#8d,#5b,#8a,#88,#02,#02,#83
.l139f equ $ + 7
	db #df,#00,#01,#07,#e1,#13,#87,#e1
	db #0c,#8a,#89,#1a,#de,#00,#01,#0f
	db #8d,#3e,#8a,#88,#02,#02,#83,#df
	db #00,#01,#07,#0c,#09,#15,#0c,#0d
.l13b9 equ $ + 1
	db #87,#8a,#88,#02,#02,#83,#de,#00
.l13c5 equ $ + 5
	db #01,#f5,#ef,#0e,#87,#ef,#0c,#87
.l13cb equ $ + 3
.l13c8
	db #ef,#0b,#87,#8a,#88,#01,#02,#82
	db #dd,#00,#01,#06,#e1,#c0,#2b,#c0
	db #2b,#c0,#2b,#c0,#2b,#c0,#2b,#c0
.l13e6 equ $ + 6
	db #2b,#c0,#2b,#c0,#2b,#87,#e1,#c0
	db #29,#c0,#29,#c0,#29,#c0,#29,#c0
	db #29,#c0,#29,#c0,#29,#c0,#29,#87
.l13f8
	db #8a,#88,#01,#02,#82,#dd,#00,#01
	db #06,#e1,#c0,#2d,#c0,#2d,#c0,#2d
	db #c0,#2d,#c0,#2d,#c0,#2d,#c0,#2d
.l1413 equ $ + 3
	db #c0,#2d,#87,#e1,#c0,#32,#c0,#32
	db #c0,#32,#c0,#32,#c0,#32,#c0,#32
.l1425 equ $ + 5
	db #c0,#32,#c0,#32,#87,#8a,#88,#02
	db #02,#83,#dd,#00,#01,#75,#ef,#84
.l1435 equ $ + 5
	db #ff,#36,#c3,#32,#87,#ef,#84,#01
.l143c equ $ + 4
	db #36,#c3,#30,#87,#ef,#84,#ff,#36
.l1443 equ $ + 3
	db #c1,#2f,#87,#8a,#88,#02,#02,#83
	db #dd,#00,#01,#75,#e5,#34,#32,#e3
.l1452 equ $ + 2
	db #30,#87,#e3,#32,#8a,#88,#01,#02
	db #82,#dd,#00,#01,#06,#e1,#c5,#2e
	db #c5,#2e,#c5,#2b,#c5,#29,#c5,#2b
.l146b equ $ + 3
	db #c5,#29,#87,#8a,#88,#01,#02,#82
	db #dd,#00,#01,#06,#e1,#c5,#22,#c5
	db #3c,#e3,#c5,#2e,#e1,#c5,#32,#c5
.l1486 equ $ + 6
	db #30,#c5,#2e,#c5,#29,#87,#8a,#88
	db #02,#02,#83,#dd,#00,#01,#75,#e5
.l1495 equ $ + 5
	db #37,#35,#e3,#34,#87,#e5,#32,#34
.l149b equ $ + 3
	db #e3,#37,#87,#e1,#35,#34,#e7,#32
	db #e1,#c5,#2d,#f1,#84,#01,#1e,#c3
.l14aa equ $ + 2
	db #2e,#87,#8a,#88,#02,#02,#83,#dd
	db #00,#01,#75,#e5,#36,#34,#e3,#32
.l14bf equ $ + 7
.l14b9 equ $ + 1
	db #87,#e5,#36,#37,#e3,#39,#87,#e1
	db #3c,#3b,#e7,#39,#e1,#c5,#23,#c5
.l14ca equ $ + 2
	db #24,#87,#8a,#88,#01,#02,#82,#dd
	db #00,#01,#06,#e1,#c5,#24,#c5,#3e
	db #e3,#c5,#30,#e1,#c5,#34,#c5,#32
.l14e5 equ $ + 5
	db #c5,#30,#c5,#2b,#87,#8a,#88,#02
	db #02,#83,#dd,#00,#01,#75,#e5,#39
.l14f4 equ $ + 4
	db #37,#e3,#36,#87,#e1,#39,#3b,#e3
.l14fc equ $ + 4
	db #39,#37,#36,#87,#e1,#34,#36,#e7
.l1507 equ $ + 7
	db #37,#e1,#c5,#32,#c5,#30,#87,#8a
	db #88,#01,#02,#82,#dd,#00,#01,#06
	db #e0,#3c,#3e,#3c,#3e,#3c,#3e,#3c
	db #3e,#43,#45,#43,#45,#43,#45,#43
.l1522 equ $ + 2
	db #45,#87,#8a,#88,#02,#02,#83,#df
	db #00,#01,#18,#e1,#c5,#39,#c5,#36
	db #c5,#34,#e3,#c5,#36,#c5,#32,#e1
.l153b equ $ + 3
	db #c5,#34,#87,#e1,#c5,#37,#c5,#39
	db #c5,#37,#e3,#c5,#34,#e1,#c5,#30
.l154d equ $ + 5
	db #c5,#2d,#c5,#2b,#87,#e1,#c5,#2a
.l1554 equ $ + 4
	db #ed,#c5,#32,#87,#e1,#c5,#34,#e3
	db #c5,#32,#c5,#34,#e1,#c5,#32,#c5
.l1564 equ $ + 4
	db #34,#c5,#36,#87,#e1,#c5,#2d,#c5
	db #2f,#e7,#c5,#32,#e1,#c5,#2f,#f1
.l1573 equ $ + 3
	db #c5,#32,#87,#8a,#88,#02,#02,#83
	db #df,#00,#01,#18,#e3,#c5,#32,#c5
	db #32,#e1,#c5,#32,#c5,#2d,#c5,#2f
.l158b equ $ + 3
	db #c5,#2d,#87,#e1,#c5,#32,#e3,#c5
	db #32,#c5,#32,#e1,#c5,#2d,#c5,#2f
.l159b equ $ + 3
	db #c5,#2d,#87,#e1,#c5,#30,#c5,#3c
	db #c5,#2f,#c5,#3b,#c5,#2b,#c5,#37
.l15ad equ $ + 5
	db #c5,#34,#c5,#32,#87,#bd,#8a,#df
	db #00,#f1,#01,#ef,#80,#87
.l15b6
	ld de,#0d00	; original is ld de,#d000 should be ld de,#0d00 !!!
.l15b9
	call l15c3
	dec e
	jp p,l15b9
	ld de,#073f
.l15c3
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
.music_info
	db "Dj Puff (1992)(Codemasters)(Allister Brimble)",0
	db "",0

	read "music_end.asm"
