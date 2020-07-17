; Music of Trans Muter (1987)(Codemasters)(David Whittaker)()
; Ripped by Megachur the 21/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TRANSMUT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #4650
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
.init_music	; 0-3
;
	ex af,af'
	xor a
	ld (l4b4b),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l4b4c
	add hl,bc
	ld a,(hl)
	ld (l4733),a
	inc hl
	ld ix,l46a6
	ld c,#20
	ld a,#03
.l466f
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
	jr nz,l466f
	ld (l498b),a
	inc a
	ld (l4706),a
	ld (l4b4b),a
	ret
.l46a6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l46c6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l46e6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.l4706
	db #00
;
.play_music
;
	ld a,(l4b4b)
	and a
	jp z,l4760
.l470f equ $ + 1
	ld a,#00
	ld (l475c),a
	ld hl,l4706
	dec (hl)
	jr nz,l4734
	ld b,(hl)
	ld ix,l46a6
	call l48a1
	ld ix,l46c6
	call l48a1
	ld ix,l46e6
	call l48a1
	ld hl,l4706
.l4733 equ $ + 1
	ld (hl),#01
.l4734
	ld ix,l46a6
	call l493f
	ld (l4a4e),hl
	ld (l4a56),a
	ld ix,l46c6
.l4747 equ $ + 2
	call l493f
	ld (l4a50),hl
	ld (l4a57),a
	ld ix,l46e6
	call l493f
	ld (l4a52),hl
	ld (l4a58),a
.l475c equ $ + 1
	ld a,#00
	ld (l4a54),a
.l4760
	ld a,(l4b4b)
	and a
	jr nz,l4779
	ret
	xor a
	ld (l4b4b),a
	call l479f
	xor a
	ld (l4a56),a
	ld (l4a57),a
	ld (l4a58),a
	ret
.l4779
	ld hl,l4a59
	ld d,#0b
.l477e
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
	jp p,l477e
	ret
;
.stop_music
.l479f
;
	ld de,#0d00
.l47a2
	call l47ac
	dec d
	jp p,l47a2
	ld de,#073f
.l47ac
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
	db #cb,#b3,#b7,#bc,#7a,#a9,#a4,#11
	db #93,#8b,#50,#3a,#62,#b8,#02,#c5
	xor a
	ld (l4b4b),a
	pop hl
	jp l479f
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
	jr nz,l4801
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l4801
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l48af
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,l4a33
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l48af
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l4a33
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l48af
	ld hl,l4a33
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l48af
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l48af
	ld a,(de)
	inc de
	ld (l498b),a
	jr l48af
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l48af
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l48af
	ld (ix+#1d),b
	jr l48af
	ld (ix+#1d),#40
	jr l48af
	ld (ix+#1d),#c0
	jr l48af
	set 1,(ix+#00)
	jr l48af
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l48db
	res 5,(ix+#00)
	jr l48db
.l48a1
	dec (ix+#10)
	jr nz,l48e8
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l48af
	ld a,(de)
	inc de
	and a
	jp m,l48f9
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l48c1
	ld (l470f),a
.l48c1
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l48db
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l48e8
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l48f5
	inc (ix+#12)
	ret
.l48f5
	dec (ix+#12)
	ret
.l48f9
	cp #c0
	jr c,l4937
	add #20
	jr c,l491c
	add #10
	jr c,l4922
	add #10
	ld c,a
	ld hl,l4b03
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr l48af
.l491c
	inc a
	ld (ix+#11),a
	jr l48af
.l4922
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
	jp l48af
.l4937
	ld hl,l4747
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l493f
	ld c,(ix+#00)
	bit 5,c
	jr z,l498a
	ld a,(ix+#16)
	sub #10
	jr nc,l4972
	bit 6,c
	jr z,l4977
	add (ix+#13)
	jr nc,l4957
	sbc a
.l4957
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l496d
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l498a
.l496d
	ld (ix+#18),a
	jr l498a
.l4972
	ld (ix+#16),a
	jr l498a
.l4977
	cpl
	sub #0f
	add (ix+#13)
	jr c,l4980
	sub a
.l4980
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l498a
	res 5,c
.l498b equ $ + 1
.l498a
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,l49a2
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l49a2
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l4a5b
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l4a04
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l49cd
	bit 0,c
	jr nz,l49eb
.l49cd
	bit 5,l
	jr nz,l49dd
	sub (ix+#1b)
	jr nc,l49e8
	set 5,(ix+#1d)
	sub a
	jr l49e8
.l49dd
	add (ix+#1b)
	cp b
	jr c,l49e8
	res 5,(ix+#1d)
	ld a,b
.l49e8
	ld (ix+#1c),a
.l49eb
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l49f6
	dec d
.l49f6
	add #a0
	jr c,l4a02
.l49fa
	sla e
	rl d
	add #18
	jr nc,l49fa
.l4a02
	add hl,de
	ex de,hl
.l4a04
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l4a2f
	ld b,(ix+#0e)
	djnz l4a2c
	ld c,(ix+#0d)
	bit 7,c
	jr z,l4a1b
	dec b
.l4a1b
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l4a2f
.l4a2c
	ld (ix+#0e),b
.l4a2f
	cpl
	and #03
.l4a33 equ $ + 1
	ld a,#38
	jr nz,l4a40
	ld a,(l470f)
	xor #08
	ld (l475c),a
	ld a,#07
.l4a40
	ld hl,l4a55
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l4a55 equ $ + 7
.l4a54 equ $ + 6
.l4a52 equ $ + 4
.l4a50 equ $ + 2
.l4a4e
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l4a59 equ $ + 3
.l4a58 equ $ + 2
.l4a57 equ $ + 1
.l4a56
	db #0f,#0f,#0f,#00,#00
.l4a5b
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
.l4b03
	db #0f,#10,#13,#16,#1a,#1e,#21,#24
	db #27,#2a,#2c,#2e,#30,#32,#34,#00
	db #87,#00,#03,#07,#87,#00,#04,#07
	db #87,#00,#03,#07,#0c,#87,#00,#04
	db #07,#0c,#87,#07,#0c,#0f,#87,#07
	db #0c,#10,#87,#03,#07,#0c,#87,#04
	db #07,#0c,#87,#00,#0c,#87,#00,#03
	db #87,#00,#04,#87,#00,#05,#87,#00
	db #07,#87,#00,#00,#00,#00,#0c,#87
.l4b4b
.music_end
	db #00
.l4b4c
	db #05
	dw l4b68,l4b6c,l4b70
	db #03
	dw l4bd1,l4bd5,l4bd9
	db #05
	dw l4c2c,l4c30,l4c34
	db #04
	dw l4d02,l4d06,l4d0a
.l4b68
	dw l4b74,#0000
.l4b6c
	dw l4b96,#0000
.l4b70
	dw l4baa,#0000
.l4b74
	db #8a,#88,#01,#01,#83,#df,#00,#11
	db #05,#e1,#c0,#13,#13,#13,#8d,#13
	db #13,#13,#13,#13,#16,#16,#16,#8d
	db #16,#16,#16,#16,#16,#ef,#11,#e7
	db #11,#8e
.l4b96
	db #8a,#c0,#88,#01,#02,#83,#dd,#00
	db #11,#04,#ef,#c3,#2b,#c4,#2e,#ef
	db #35,#e7,#29,#87
.l4baa
	db #8a,#88,#01,#01,#83,#df,#00,#21
	db #05,#e1,#ca,#37,#37,#37,#c1,#37
	db #37,#37,#37,#37,#cb,#3a,#3a,#3a
	db #c2,#3a,#3a,#3a,#3a,#3a,#ef,#c8
	db #84,#04,#28,#35,#e7,#29,#87
.l4bd1
	dw l4bdd,#0000
.l4bd5
	dw l4bf5,#0000
.l4bd9
	dw l4c11,#0000
.l4bdd
	db #8a,#dc,#00,#11,#05,#e1,#c9,#3c
	db #35,#30,#35,#3a,#35,#30,#35,#38
	db #35,#30,#35,#3a,#35,#30,#35,#8e
.l4bf5
	db #8a,#dd,#00,#11,#05,#e1,#c9,#88
	db #01,#01,#83,#3c,#35,#30,#35,#3a
	db #35,#30,#35,#38,#35,#30,#35,#3a
.l4c11 equ $ + 4
	db #35,#30,#35,#87,#8a,#dd,#00,#11
	db #05,#c9,#e0,#80,#e1,#3c,#35,#30
	db #35,#3a,#35,#30,#35,#38,#35,#30
	db #35,#3a,#35,#30,#e0,#35,#87
.l4c2c
	dw l4c4e,#0000
.l4c30
	dw l4c6d,#0000
.l4c34
	dw l4d51,l4cb9,l4c6d,l4d54
	dw l4cb9,l4c6d,l4d57,l4cb9
	dw l4c6d,l4d5a,l4cb9,l4c6d
	dw #0000
.l4c4e
	db #8a,#e0,#c0,#88,#01,#01,#83,#df
	db #00,#12,#05,#11,#11,#11,#1d,#8d
	db #11,#11,#1d,#11,#11,#11,#11,#11
.l4c6d equ $ + 7
	db #8d,#11,#11,#8d,#1d,#1d,#87,#8a
	db #e1,#c0,#88,#01,#01,#83,#de,#00
	db #11,#05,#1d,#1d,#22,#1d,#24,#24
	db #22,#27,#1d,#1d,#22,#1d,#24,#24
	db #22,#29,#1d,#1d,#22,#1d,#24,#24
	db #22,#27,#1d,#1d,#22,#1d,#24,#24
	db #22,#29,#29,#29,#2e,#29,#30,#30
	db #2e,#33,#29,#29,#2e,#29,#30,#30
	db #2e,#35,#29,#29,#2e,#29,#30,#30
	db #2e,#33,#29,#29,#2e,#29,#30,#30
.l4cb9 equ $ + 3
	db #2e,#35,#87,#8a,#e1,#c9,#81,#dd
	db #00,#11,#05,#29,#2e,#35,#2e,#29
	db #30,#35,#2e,#29,#2c,#35,#2e,#29
	db #2d,#35,#2e,#29,#2e,#35,#2e,#29
	db #30,#35,#2e,#29,#2c,#35,#2e,#29
	db #2d,#35,#2e,#3c,#35,#30,#35,#3a
	db #35,#30,#35,#38,#35,#30,#35,#3a
	db #35,#30,#35,#29,#2e,#35,#2e,#29
	db #30,#35,#2e,#29,#2c,#35,#2e,#29
	db #2d,#35,#2e,#87
.l4d02
	dw l4d0e,#0000
.l4d06
	dw l4d23,#0000
.l4d0a
	dw l4d3c,#0000
.l4d0e
	db #8a,#88,#01,#01,#83,#c0,#df,#00
	db #41,#05,#e1,#18,#18,#13,#e3,#18
.l4d23 equ $ + 5
	db #e1,#1a,#e5,#1c,#8e,#8a,#88,#01
	db #01,#83,#de,#00,#41,#05,#e1,#cb
	db #30,#30,#c2,#30,#e3,#cb,#30,#e1
.l4d3c equ $ + 6
	db #c2,#30,#e5,#c4,#30,#87,#8a,#88
	db #01,#02,#83,#de,#00,#41,#05,#c9
	db #e1,#24,#24,#26,#e3,#28,#e1,#2b
.l4d54 equ $ + 6
.l4d51 equ $ + 3
	db #e5,#30,#87,#89,#00,#87,#89,#03
.l4d5a equ $ + 4
.l4d57 equ $ + 1
	db #87,#89,#05,#87,#89,#ff,#87
;
.music_info
	db "Trans Muter (1987)(Codemasters)(David Whittaker)",0
	db "",0

	read "music_end.asm"
