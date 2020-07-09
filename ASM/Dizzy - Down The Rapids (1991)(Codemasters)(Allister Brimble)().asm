; Music of Dizzy - Down The Rapids (1991)(Codemasters)(Allister Brimble)()
; Ripped by Megachur the 11/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DIZZYDTR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #6e3d
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

;
.stop_music
;
	xor a
	ld (l72f7),a
	jp l7c14
;
.init_music
;
	ex af,af'
	xor a
	ld (l72f7),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l72f9
	add hl,bc
	ld ix,l6e91
	ld c,#1f
	ld a,#03
.l6e5d
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
	jr nz,l6e5d
	inc a
	ld (l6f96),a
	ld (l72f7),a
	ret
.l6e95 equ $ + 4
.l6e94 equ $ + 3
.l6e91
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l6eb4 equ $ + 4
.l6eb3 equ $ + 3
.l6eb0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l6ed3 equ $ + 4
.l6ed2 equ $ + 3
.l6ecf
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
	ld hl,l72f9
	add hl,bc
	ld a,(hl)
	ld (l6e94),a
	inc hl
	ld a,(hl)
	ld (l6e95),a
	inc hl
	ld a,(hl)
	ld (l6eb3),a
	inc hl
	ld a,(hl)
	ld (l6eb4),a
	inc hl
	ld a,(hl)
	ld (l6ed2),a
	inc hl
	ld a,(hl)
	ld (l6ed3),a
	ret
;
.play_music
.l6f17
;
	ld a,(l72f7)
	and a
	ret z
.l6f1d equ $ + 1
	ld a,#00
	ld (l6f6a),a
	ld hl,l6f96
	dec (hl)
	jr nz,l6f42
	ld b,(hl)
	ld ix,l6e91
	call l705c
	ld ix,l6eb0
	call l705c
	ld ix,l6ecf
	call l705c
	ld hl,l6f96
.l6f41 equ $ + 1
	ld (hl),#01
.l6f42
	ld ix,l6e91
	call l70fe
	ld (l720f),hl
	ld (l7217),a
	ld ix,l6eb0
	call l70fe
	ld (l7211),hl
	ld (l7218),a
	ld ix,l6ecf
	call l70fe
	ld (l7213),hl
	ld (l7219),a
.l6f6a equ $ + 1
	ld a,#00
	ld (l7215),a
	ld hl,l721c
	ld d,#0d
.l6f73
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
	jp p,l6f73
	ret
.l6f96
	db #00,#bc,#a4,#a8,#ad,#6b,#9a,#95
	db #10,#84,#7c,#4a,#39,#58,#a9,#01

	xor a		;	db #af,#32,#f7,#72
	ld (l72f7),a
	pop hl
	jp l7c14
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
	jr nz,l6fd0
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l6fd0
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l706a
	ld a,(ix+#1e)
	ld c,a
	and #07
	ld hl,l71f4
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l706a
	ld a,(ix+#1e)
	ld c,a
	and #38
	ld hl,l71f4
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l706a
	ld hl,l71f4
	ld a,(ix+#1e)
	cpl
	and (hl)
	ld (hl),a
	jr l706a
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l706a
	ld a,(de)
	inc de
	ld (l6f1d),a
	jr l706a
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l706a
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l706a
	ld (ix+#1d),b
	jr l706a
	ld (ix+#1d),#40
	jr l706a
	ld (ix+#1d),#c0
	jr l706a
	set 1,(ix+#00)
	jr l706a
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l708d
.l705c
	dec (ix+#10)
	jr nz,l709a
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l706a
	ld a,(de)
	inc de
	and a
	jp m,l70ab
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l708d
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l709a
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l70a7
	inc (ix+#12)
	ret
.l70a7
	dec (ix+#12)
	ret
.l70ab
	cp #b8
	jr c,l70f6
	add #20
	jr c,l70db
	add #10
	jr c,l70e1
	add #10
	jr nc,l70d4
	ld c,a
	ld hl,l72c5
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	set 4,(ix+#00)
	jr l706a
.l70d4
	add #09
	ld (l6f41),a
	jr l706a
.l70db
	inc a
	ld (ix+#11),a
	jr l706a
.l70e1
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
	jp l706a
.l70f6
	ld hl,l6f17
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l70fe
	ld c,(ix+#00)
	bit 5,c
	jr z,l7149
	ld a,(ix+#16)
	sub #10
	jr nc,l7131
	bit 6,c
	jr z,l7136
	add (ix+#13)
	jr nc,l7116
	sbc a
.l7116
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l712c
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l7149
.l712c
	ld (ix+#18),a
	jr l7149
.l7131
	ld (ix+#16),a
	jr l7149
.l7136
	cpl
	sub #0f
	add (ix+#13)
	jr c,l713f
	sub a
.l713f
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l7149
	res 5,c
.l7149
	ld a,(ix+#12)
	bit 4,c
	jr z,l716b
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,l7163
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l7163
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
.l716b
	ld hl,l721d
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l71c5
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l718e
	bit 0,c
	jr nz,l71ac
.l718e
	bit 5,l
	jr nz,l719e
	sub (ix+#1b)
	jr nc,l71a9
	set 5,(ix+#1d)
	sub a
	jr l71a9
.l719e
	add (ix+#1b)
	cp b
	jr c,l71a9
	res 5,(ix+#1d)
	ld a,b
.l71a9
	ld (ix+#1c),a
.l71ac
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l71b7
	dec d
.l71b7
	add #a0
	jr c,l71c3
.l71bb
	sla e
	rl d
	add #18
	jr nc,l71bb
.l71c3
	add hl,de
	ex de,hl
.l71c5
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l71f0
	ld b,(ix+#0e)
	djnz l71ed
	ld c,(ix+#0d)
	bit 7,c
	jr z,l71dc
	dec b
.l71dc
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l71f0
.l71ed
	ld (ix+#0e),b
.l71f0
	cpl
	and #03
.l71f4 equ $ + 1
	ld a,#38
	jr nz,l7201
	ld a,(l6f1d)
	xor #08
	ld (l6f6a),a
	ld a,#07
.l7201
	ld hl,l7216
	xor (hl)
	and (ix+#1e)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l7216 equ $ + 7
.l7215 equ $ + 6
.l7213 equ $ + 4
.l7211 equ $ + 2
.l720f
	db #00,#00,#00,#00,#00,#00,#00,#38
.l721c equ $ + 5
.l7219 equ $ + 2
.l7218 equ $ + 1
.l7217
	db #0f,#0f,#0d,#00,#00,#00
.l721d
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
.l72c5
	db #09
	db #0e,#11,#16,#19,#1e,#21,#25,#27
	db #00,#04,#07,#0c,#87,#00,#03,#08
	db #0c,#87,#00,#05,#09,#0c,#87,#00
	db #0c,#00,#0c,#87,#00,#03,#07,#0c
	db #87,#00,#0c,#00,#0c,#87,#03,#07
	db #0c,#87,#04,#07,#0c,#87,#00,#0c
.l72f7 equ $ + 1
.music_end equ $ + 1
	db #87,#00,#00
.l72f9
	dw l7305,l736f,l73f9,l7483
.l7305 equ $ + 4
	dw l7489,l748f,l74a4,l74a4
	dw l74a4,l74a4,l74a4,l74a4
	dw l7519,l7519,l7519,l7519
	dw l7519,l7519,l758e,l7c0c
	dw l7c0c,l7c0c,l7c0c,l7c0c
	dw l7c0c,l7c0c,l759a,l759a
	dw l75d4,l75d4,l759a,l759a
	dw l75d4,l759a,l759a,l759a
	dw l759a,l760e,l760e,l760e
	dw l7648,l7648,l759a,l759a
	dw l75d4,l759a,l759a,l759a
	dw l759a,l760e,l760e,l760e
	dw l7648,l7648,l74a4,l74a4
	dw l7519,l7519,#0000
.l736f
	dw l7682,l769e,l7682,l76ba
	dw l76d6,l76f1,l76d6,l76f1
	dw l76d6,l76f1,l76d6,l76f1
	dw l7727,l770c,l7727,l770c
	dw l7727,l770c,l7727,l770c
	dw l7727,l770c,l7727,l770c
	dw l7778,l7778,l7778,l7778
	dw l7778,l7778,l7778,l7778
	dw l7778,l7778,l7778,l7778
	dw l7778,l7778,l77a3,l7778
	dw l7778,l7778,l7778,l77ce
	dw l7727,l7742,l775d,l775d
	dw l7778,l7778,l77a3,l7778
	dw l7778,l7778,l77f9,l784f
	dw l7727,l7742,l775d,l775d
	dw l76d6,l76f1,l76d6,l76f1
	dw l7727,l770c,l7727,l770c
	dw #0000
.l73f9
	dw l7c0c,l7c0c,l7c0c,l7c0c
	dw l787a,l78a2,l78d2,l7c0c
	dw l787a,l78a2,l78fa,l7920
	dw l793e,l7969,l793e,l7994
	dw l79dd,l7a05,l7a35,l7c0c
	dw l79dd,l7a05,l7a35,l79bf
	dw l7c0c,l7c0c,l7c0c,l7c0c
	dw l77f9,l77f9,l7824,l7824
	dw l77f9,l77f9,l7824,l7824
	dw l7a5d,l7a96,l7ad4,l7aff
	dw l7a5d,l7a96,l7b1d,l7b48
	dw l7b66,l7b72,l7bae,l7bea
	dw l7a5d,l7a96,l7ad4,l7aff
	dw l7a5d,l7a96,l7b1d,l7b48
	dw l7b66,l7b72,l7bae,l7bea
	dw l787a,l78a2,l78d2,l7c0c
	dw l79dd,l7a05,l790d,l79bf
	dw #0000
.l7483
	dw l79bf,l7493,#0000
.l7489
	dw l770c,l7c0c,#0000
.l748f
	dw l7c0c,#0000
.l7493
	db #8a,#88,#01,#01,#83,#de,#00,#11
	db #0b,#eb,#c0,#84,#01,#1e,#39,#8e
.l74a4 equ $ + 1
	db #87,#bd,#8a,#88,#02,#01,#83,#de
	db #00,#11,#0b,#e1,#07,#e0,#13,#13
	db #8b,#89,#28,#de,#00,#01,#08,#e1
	db #3c,#8a,#88,#02,#01,#83,#df,#00
	db #11,#0b,#e0,#0c,#0e,#0c,#18,#8b
	db #89,#3c,#dc,#00,#01,#0f,#e1,#37
	db #8b,#89,#28,#de,#00,#01,#08,#3c
	db #8a,#88,#02,#01,#83,#de,#00,#11
	db #0b,#e3,#09,#e1,#09,#8b,#89,#28
	db #de,#00,#01,#08,#3c,#8a,#88,#02
	db #01,#83,#de,#00,#11,#0b,#e0,#0e
	db #10,#e1,#0e,#8b,#89,#3c,#dc,#00
	db #01,#0f,#30,#8b,#89,#28,#de,#00
	db #01,#08,#3c,#8a,#88,#02,#01,#83
.l7519 equ $ + 6
	db #de,#00,#11,#0b,#10,#87,#bd,#8a
	db #88,#02,#01,#83,#de,#00,#11,#0b
	db #e1,#09,#e0,#15,#15,#8b,#89,#28
	db #de,#00,#01,#08,#e1,#3c,#8a,#88
	db #02,#01,#83,#de,#00,#11,#0b,#e0
	db #0e,#10,#0e,#1a,#8b,#89,#3c,#dc
	db #00,#01,#0f,#e1,#37,#8b,#89,#28
	db #de,#00,#01,#08,#3c,#8a,#88,#02
	db #01,#83,#de,#00,#11,#0b,#e3,#0b
	db #e1,#0b,#8b,#89,#28,#de,#00,#01
	db #08,#3c,#8a,#88,#02,#01,#83,#de
	db #00,#11,#0b,#e0,#10,#12,#e1,#10
	db #8b,#89,#3c,#dc,#00,#01,#0f,#30
	db #8b,#89,#28,#de,#00,#01,#08,#3c
	db #8a,#88,#02,#01,#83,#de,#00,#11
.l758e equ $ + 3
	db #0b,#12,#87,#8a,#88,#02,#01,#83
.l759a equ $ + 7
	db #df,#00,#11,#0b,#ef,#09,#87,#8a
	db #88,#02,#01,#83,#df,#00,#11,#0b
	db #e1,#09,#e0,#09,#15,#8b,#89,#28
	db #de,#00,#01,#08,#3c,#8a,#88,#02
	db #01,#83,#df,#00,#11,#0b,#09,#e1
	db #15,#e3,#09,#8b,#89,#28,#de,#00
	db #01,#08,#e1,#3c,#8a,#88,#02,#01
	db #83,#df,#00,#11,#0b,#e0,#09,#15
.l75d4 equ $ + 1
	db #87,#8a,#88,#02,#01,#83,#df,#00
	db #11,#0b,#e1,#07,#e0,#07,#13,#8b
	db #89,#28,#de,#00,#01,#08,#3c,#8a
	db #88,#02,#01,#83,#df,#00,#11,#0b
	db #07,#e1,#13,#e3,#07,#8b,#89,#28
	db #de,#00,#01,#08,#e1,#3c,#8a,#88
	db #02,#01,#83,#df,#00,#11,#0b,#e0
.l760e equ $ + 3
	db #07,#13,#87,#8a,#88,#02,#01,#83
	db #df,#00,#11,#0b,#e1,#0b,#e0,#0b
	db #17,#8b,#89,#28,#de,#00,#01,#08
	db #3c,#8a,#88,#02,#01,#83,#df,#00
	db #11,#0b,#0b,#e1,#17,#e3,#0b,#8b
	db #89,#28,#de,#00,#01,#08,#e1,#3c
	db #8a,#88,#02,#01,#83,#df,#00,#11
.l7648 equ $ + 5
	db #0b,#e0,#0b,#17,#87,#8a,#88,#02
	db #01,#83,#df,#00,#11,#0b,#e1,#0d
	db #e0,#0d,#19,#8b,#89,#28,#de,#00
	db #01,#08,#3c,#8a,#88,#02,#01,#83
	db #df,#00,#11,#0b,#0d,#e1,#19,#e3
	db #0d,#8b,#89,#28,#de,#00,#01,#08
	db #e1,#3c,#8a,#88,#02,#01,#83,#df
.l7682 equ $ + 7
	db #00,#11,#0b,#e0,#0d,#19,#87,#8a
	db #88,#01,#01,#82,#dc,#00,#01,#09
	db #e1,#1f,#e0,#1f,#1f,#e1,#2b,#e0
	db #1f,#2b,#1f,#2b,#e1,#1f,#2b,#e0
.l769e equ $ + 3
	db #1f,#2b,#87,#8a,#88,#01,#01,#82
	db #dc,#00,#01,#09,#e1,#21,#e0,#21
	db #21,#e1,#2d,#e0,#21,#2d,#21,#2d
.l76ba equ $ + 7
	db #e1,#21,#2d,#e0,#21,#2d,#87,#8a
	db #88,#01,#01,#82,#dc,#00,#01,#07
	db #e1,#21,#e0,#21,#21,#e1,#2d,#e0
	db #21,#2d,#21,#23,#24,#26,#28,#2a
.l76d6 equ $ + 3
	db #2b,#2d,#87,#8a,#88,#02,#01,#82
	db #de,#00,#01,#08,#e1,#c0,#2b,#c0
	db #2b,#c0,#2b,#c0,#2b,#c2,#2b,#c2
.l76f1 equ $ + 6
	db #2b,#c2,#2b,#c2,#2b,#87,#8a,#88
	db #02,#01,#82,#de,#00,#01,#08,#e1
	db #c4,#2d,#c4,#2d,#c4,#2d,#c4,#2d
	db #c2,#2d,#c2,#2d,#c2,#2d,#c2,#2d
.l770c equ $ + 1
	db #87,#8a,#88,#02,#01,#82,#de,#00
	db #01,#08,#e1,#c4,#2f,#c4,#2f,#c4
	db #2f,#c4,#2f,#c2,#2f,#c2,#2f,#c2
.l7727 equ $ + 4
	db #2f,#c2,#2f,#87,#8a,#88,#02,#01
	db #82,#de,#00,#01,#08,#e1,#c0,#2d
	db #c0,#2d,#c0,#2d,#c0,#2d,#c2,#2d
.l7742 equ $ + 7
	db #c2,#2d,#c2,#2d,#c2,#2d,#87,#8a
	db #88,#02,#01,#82,#de,#00,#01,#08
	db #e1,#c0,#2f,#c0,#2f,#c0,#2f,#c0
	db #2f,#c2,#2f,#c2,#2f,#c2,#2f,#c2
.l775d equ $ + 2
	db #2f,#87,#8a,#88,#02,#01,#82,#de
	db #00,#01,#08,#e1,#c0,#31,#c0,#31
	db #c0,#31,#c0,#31,#c2,#31,#c2,#31
.l7778 equ $ + 5
	db #c2,#31,#c2,#31,#87,#8a,#88,#01
	db #01,#83,#dc,#00,#01,#08,#e0,#c5
	db #21,#c5,#28,#c5,#2d,#c5,#21,#c5
	db #28,#c5,#2d,#c5,#21,#c5,#28,#e1
	db #c5,#2d,#e0,#c5,#21,#c5,#28,#c5
	db #2d,#c5,#21,#c5,#28,#c5,#2d,#87
.l77a3
	db #8a,#88,#01,#01,#82,#dc,#00,#01
	db #08,#e0,#c5,#1f,#c5,#26,#c5,#2b
	db #c5,#1f,#c5,#26,#c5,#2b,#c5,#1f
	db #c5,#26,#e1,#c5,#2b,#e0,#c5,#1f
	db #c5,#26,#c5,#2b,#c5,#1f,#c5,#26
.l77ce equ $ + 3
	db #c5,#2b,#87,#8a,#88,#01,#01,#82
	db #dc,#00,#01,#08,#e0,#c5,#23,#c5
	db #2a,#c5,#2f,#c5,#23,#c5,#2a,#c5
	db #2f,#c5,#23,#c5,#2a,#e1,#c5,#2f
	db #e0,#c5,#23,#c5,#2a,#c5,#2f,#c5
.l77f9 equ $ + 6
	db #23,#c5,#2a,#c5,#2f,#87,#8a,#88
	db #01,#01,#82,#dc,#00,#01,#08,#e0
	db #c5,#28,#c5,#2f,#c5,#34,#c5,#28
	db #c5,#2f,#c5,#34,#c5,#28,#c5,#2f
	db #e1,#c5,#34,#e0,#c5,#28,#c5,#2f
	db #c5,#34,#c5,#28,#c5,#2f,#c5,#34
.l7824 equ $ + 1
	db #87,#8a,#88,#01,#01,#82,#dc,#00
	db #01,#08,#e0,#c5,#26,#c5,#2d,#c5
	db #32,#c5,#26,#c5,#2d,#c5,#32,#c5
	db #26,#c5,#2d,#e1,#c5,#32,#e0,#c5
	db #26,#c5,#2d,#c5,#32,#c5,#26,#c5
.l784f equ $ + 4
	db #2d,#c5,#32,#87,#8a,#88,#01,#01
	db #82,#dc,#00,#01,#08,#e0,#c5,#2f
	db #c5,#36,#c5,#3b,#c5,#2f,#c5,#36
	db #c5,#3b,#c5,#2f,#c5,#36,#e1,#c5
	db #3b,#e0,#c5,#2f,#c5,#36,#c5,#3b
.l787a equ $ + 7
	db #c5,#2f,#c5,#36,#c5,#3b,#87,#8a
	db #88,#01,#01,#82,#df,#00,#11,#06
	db #e1,#80,#32,#32,#e0,#32,#8a,#88
	db #02,#03,#82,#df,#00,#11,#04,#e2
	db #34,#8a,#88,#01,#01,#82,#df,#00
.l78a2 equ $ + 7
	db #11,#06,#e1,#32,#30,#2f,#87,#8a
	db #88,#02,#03,#82,#df,#00,#11,#06
	db #e1,#30,#8a,#88,#01,#01,#82,#df
	db #00,#11,#06,#2f,#2d,#e0,#2b,#8a
	db #88,#02,#03,#82,#df,#00,#11,#06
	db #e4,#2d,#8a,#88,#01,#01,#82,#df
.l78d2 equ $ + 7
	db #00,#11,#06,#e1,#2f,#30,#87,#8a
	db #88,#01,#01,#82,#df,#00,#11,#07
	db #e1,#32,#37,#36,#e0,#32,#8a,#88
	db #02,#03,#82,#df,#00,#11,#06,#e2
	db #30,#8a,#88,#01,#01,#82,#df,#00
.l78fa equ $ + 7
	db #11,#07,#e1,#32,#34,#32,#87,#8a
	db #88,#01,#01,#82,#df,#00,#11,#07
	db #e1,#32,#34,#32,#2f,#34,#36,#37
.l790d equ $ + 2
	db #39,#87,#8a,#88,#01,#01,#82,#df
	db #00,#11,#07,#e1,#34,#36,#34,#31
.l7920 equ $ + 5
	db #36,#38,#39,#3b,#87,#8a,#88,#01
	db #01,#82,#dd,#00,#01,#07,#e0,#c5
	db #39,#c5,#39,#e1,#c5,#34,#c5,#39
	db #c5,#34,#c5,#37,#c5,#36,#c5,#34
.l793e equ $ + 3
	db #c5,#36,#87,#8a,#88,#01,#01,#82
	db #dd,#00,#01,#07,#e0,#c5,#2d,#c5
	db #37,#c5,#39,#c5,#2d,#c5,#37,#c5
	db #39,#c5,#2d,#c5,#37,#c5,#39,#c5
	db #2d,#c5,#37,#c5,#39,#c5,#2d,#c5
.l7969 equ $ + 6
	db #37,#c5,#39,#c5,#2d,#87,#8a,#88
	db #01,#01,#82,#dd,#00,#01,#07,#e0
	db #c5,#2f,#c5,#39,#c5,#3b,#c5,#2f
	db #c5,#39,#c5,#3b,#c5,#2f,#c5,#39
	db #c5,#3b,#c5,#2f,#c5,#39,#c5,#3b
	db #c5,#2f,#c5,#39,#c5,#3b,#c5,#2f
.l7994 equ $ + 1
	db #87,#8a,#88,#01,#01,#82,#dd,#00
	db #01,#07,#e0,#c5,#23,#c5,#2d,#c5
	db #2f,#c5,#23,#c5,#2d,#c5,#2f,#c5
	db #23,#c5,#2d,#c5,#28,#c5,#29,#c5
	db #2a,#c5,#2b,#c5,#2c,#c5,#2d,#c5
.l79bf equ $ + 4
	db #2e,#c5,#2f,#87,#8a,#88,#01,#01
	db #82,#dd,#00,#01,#07,#e0,#c5,#3b
	db #c5,#3b,#e1,#c5,#36,#c5,#3b,#c5
	db #36,#c5,#39,#c5,#38,#c5,#36,#c5
.l79dd equ $ + 2
	db #38,#87,#8a,#88,#01,#01,#82,#df
	db #00,#11,#06,#e1,#80,#34,#34,#e0
	db #34,#8a,#88,#02,#03,#82,#df,#00
	db #11,#04,#e2,#36,#8a,#88,#01,#01
	db #82,#df,#00,#11,#06,#e1,#34,#32
.l7a05 equ $ + 2
	db #31,#87,#8a,#88,#02,#03,#82,#df
	db #00,#11,#06,#e1,#32,#8a,#88,#01
	db #01,#82,#df,#00,#11,#06,#31,#2f
	db #e0,#2d,#8a,#88,#02,#03,#82,#df
	db #00,#11,#06,#e4,#2f,#8a,#88,#01
	db #01,#82,#df,#00,#11,#06,#e1,#31
.l7a35 equ $ + 2
	db #32,#87,#8a,#88,#01,#01,#82,#df
	db #00,#11,#07,#e1,#34,#39,#38,#e0
	db #34,#8a,#88,#02,#03,#82,#df,#00
	db #11,#06,#e2,#32,#8a,#88,#01,#01
	db #82,#df,#00,#11,#07,#e1,#34,#36
.l7a5d equ $ + 2
	db #34,#87,#8a,#88,#01,#01,#82,#df
	db #00,#11,#08,#e0,#2d,#2f,#e1,#2d
	db #8a,#88,#02,#03,#82,#df,#00,#11
	db #09,#28,#8a,#88,#01,#01,#82,#df
	db #00,#11,#07,#2d,#2f,#2d,#8a,#88
	db #02,#03,#82,#df,#00,#11,#09,#28
	db #8a,#88,#01,#01,#82,#df,#00,#11
.l7a96 equ $ + 3
	db #07,#2d,#87,#8a,#88,#01,#01,#82
	db #df,#00,#11,#07,#e0,#31,#2f,#8a
	db #88,#02,#03,#82,#df,#00,#11,#09
	db #e1,#2d,#8a,#88,#01,#01,#82,#df
	db #00,#11,#08,#e1,#31,#32,#e0,#34
	db #32,#31,#32,#8a,#88,#02,#03,#82
	db #df,#00,#11,#08,#e1,#34,#8a,#88
	db #01,#01,#82,#df,#00,#11,#07,#2d
.l7ad4 equ $ + 1
	db #87,#8a,#88,#02,#01,#82,#de,#00
	db #01,#08,#e0,#c0,#2b,#e0,#c0,#2b
	db #c0,#2b,#c0,#2b,#e1,#c0,#2b,#e0
	db #c0,#2b,#c0,#2b,#e1,#c2,#2b,#e0
	db #c2,#2b,#c2,#2b,#c2,#2b,#c2,#2b
.l7aff equ $ + 4
	db #e1,#c1,#2a,#87,#8a,#88,#02,#01
	db #82,#de,#00,#01,#08,#e7,#c2,#28
	db #e0,#c5,#39,#c5,#3a,#c5,#3b,#c5
	db #3c,#c5,#3d,#c5,#3e,#c5,#3f,#c5
.l7b1d equ $ + 2
	db #40,#87,#8a,#88,#02,#01,#82,#de
	db #00,#01,#08,#e0,#c0,#2d,#e0,#c0
	db #2d,#c0,#2d,#c0,#2d,#e1,#c0,#2d
	db #e0,#c0,#2d,#c0,#2d,#e1,#c2,#2d
	db #e0,#c2,#2d,#c2,#2d,#c2,#2d,#c2
.l7b48 equ $ + 5
	db #2d,#e1,#c1,#2c,#87,#8a,#88,#02
	db #01,#82,#de,#00,#01,#08,#e7,#c2
	db #2a,#e0,#c5,#3b,#c5,#3c,#c5,#3d
	db #c5,#3e,#c5,#3f,#c5,#40,#c5,#41
.l7b66 equ $ + 3
	db #c5,#42,#87,#8a,#88,#01,#01,#82
.l7b72 equ $ + 7
	db #df,#00,#11,#0d,#ef,#2f,#87,#8a
	db #88,#01,#01,#82,#df,#00,#11,#07
	db #e1,#3b,#8a,#88,#02,#03,#82,#df
	db #00,#11,#06,#3b,#8a,#88,#01,#01
	db #82,#df,#00,#11,#07,#3d,#e0,#3b
	db #8a,#88,#02,#03,#82,#df,#00,#11
	db #06,#e2,#40,#8a,#88,#01,#01,#82
	db #df,#00,#11,#07,#e1,#3f,#e0,#3d
.l7bae equ $ + 3
	db #e2,#3b,#87,#8a,#88,#01,#01,#82
	db #df,#00,#11,#07,#e1,#3d,#8a,#88
	db #02,#03,#82,#df,#00,#11,#06,#3d
	db #8a,#88,#01,#01,#82,#df,#00,#11
	db #07,#3f,#e0,#3d,#8a,#88,#02,#03
	db #82,#df,#00,#11,#06,#e2,#42,#8a
	db #88,#01,#01,#82,#df,#00,#11,#07
.l7bea equ $ + 7
	db #e1,#41,#e0,#3f,#e2,#3d,#87,#8a
	db #88,#01,#01,#82,#df,#00,#11,#07
	db #e1,#3d,#38,#36,#e0,#38,#e8,#31
	db #87,#8a,#88,#01,#01,#82,#db,#00
	db #11,#01,#84,#fe,#01,#ef,#c0,#1e
.l7c0c equ $ + 1
	db #87,#8a,#df,#00,#f1,#01,#ef,#80
	db #87
.l7c14
	ld de,#0d00	; original was #d000 !
.l7c17
	call l7c21
	dec e
	jp p,l7c17
	ld de,#073f
.l7c21
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
	db "Dizzy - Down The Rapids (1991)(Codemasters)(Allister Brimble)",0
	db "",0

	read "music_end.asm"
