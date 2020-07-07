; Music of Grand Prix Simulator 2 (1989)(CodeMasters)(David Whittaker)(Zx Spectrum Player)
; Ripped by Megachur the 21/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GRANDPS2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #c000
FIRST_THEME				equ 0
LAST_THEME				equ 4	; 0 -> 4

	read "music_header.asm"

	jp lc00c	; init
	jp lc0dc	; play
.lc006
	jp lc2c2	; stop
	jp lc644	; sound fx
;
.init_music
.lc00c
;
	push af
	call lc006
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,lcaa7
	add hl,bc
	ld a,(hl)
	ld (lc0eb),a
	inc hl
	ld ix,lc076
	ld c,#22
	ld a,#03
.lc02a
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
	ld hl,lc5d4
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
	jr nz,lc02a
	ld (lc455),a
	dec a
	ld (lc643),a
	ld (lc63c),a
	ret
.lc076
	db #21,#73,#cb,#dc,#ca,#02,#00,#00
	db #00,#d4,#c5,#d4,#c5,#00,#00,#01
	db #03,#03,#29,#0f,#0f,#c6,#0f,#c6
	db #0f,#00,#02,#01,#04,#40,#00,#00
.lc098 equ $ + 2
	db #00,#09,#21,#1c,#cb,#ca,#ca,#02
	db #00,#00,#00,#d4,#c5,#d4,#c5,#00
	db #00,#01,#01,#01,#18,#0f,#f6,#c5
	db #f6,#c5,#0f,#00,#02,#02,#02,#40
.lc0ba equ $ + 4
	db #00,#7f,#00,#12,#21,#c1,#cb,#ea
	db #ca,#02,#00,#00,#00,#d5,#c5,#d6
	db #c5,#00,#00,#01,#03,#03,#2d,#0f
	db #0f,#c6,#0f,#c6,#0f,#00,#02,#01
	db #04,#40,#00,#00,#00,#24
;
.play_music
.lc0dc
;
	call lc756
	ld a,(lc63c)
	and a
	jr z,lc136
.lc0e6 equ $ + 1
	ld a,#00
	ld (lc132),a
.lc0eb equ $ + 1
	ld a,#20
	ld hl,lc643
	add (hl)
	ld (hl),a
	jr nc,lc10a
	ld b,#00
	ld ix,lc076
	call lc35d
	ld ix,lc098
	call lc35d
	ld ix,lc0ba
	call lc35d
.lc10a
	ld ix,lc076
	call lc422
	ld (lc511),hl
	ld (lc519),a
	ld ix,lc098
	call lc422
	ld (lc513),hl
	ld (lc51a),a
	ld ix,lc0ba
	call lc422
	ld (lc515),hl
	ld (lc51b),a
.lc132 equ $ + 1
	ld a,#41
	ld (lc517),a
.lc136
	ld a,(lc63c)
	and a
	jr nz,lc14c
	ld (lc519),a
	ld (lc51a),a
	ld (lc51b),a
	ld a,#3f
	ld (lc518),a
	jr lc174
.lc14c
	ld a,(lc63b)
	and #0f
	xor #0f
	jr z,lc174
	ld b,a
	ld a,(lc519)
	sub b
	jr nc,lc15d
	xor a
.lc15d
	ld (lc519),a
	ld a,(lc51a)
	sub b
	jr nc,lc167
	xor a
.lc167
	ld (lc51a),a
	ld a,(lc51b)
	sub b
	jr nc,lc171
	xor a
.lc171
	ld (lc51b),a
.lc175 equ $ + 1
.lc174
	ld a,#ff
	xor #ff
	ld (lc175),a
	ld a,(lc640)
	and a
	jr z,lc1aa
	ld a,(lc518)
	or #09
	and #fe
	ld (lc518),a
	ld a,#0a
	ld (lc519),a
.lc191 equ $ + 1
	ld hl,#0000
	ld a,(lcaa3)
	and #3f
	ld e,a
	ld d,#00
	sbc hl,de
	ld a,(lc175)
	or a
	jr z,lc1a7
	srl h
	rr l
.lc1a7
	ld (lc511),hl
.lc1aa
	ld a,(lc641)
	and a
	jr z,lc1d9
	ld a,(lc518)
	or #12
	and #fd
	ld (lc518),a
	ld a,#0a
	ld (lc51a),a
.lc1c0 equ $ + 1
	ld hl,#0000
	ld a,(lcaa4)
	and #3f
	ld e,a
	ld d,#00
	sbc hl,de
	ld a,(lc175)
	or a
	jr nz,lc1d6
	srl h
	rr l
.lc1d6
	ld (lc513),hl
.lc1d9
	ld a,(lc642)
	and a
	jr z,lc208
	ld a,(lc518)
	or #24
	and #fb
	ld (lc518),a
	ld a,#0a
	ld (lc51b),a
.lc1ef equ $ + 1
	ld hl,#0000
	ld a,(lcaa5)
	and #3f
	ld e,a
	ld d,#00
	sbc hl,de
	ld a,(lc175)
	or a
	jr z,lc205
	srl h
	rr l
.lc205
	ld (lc515),hl
.lc208
	ld a,(lc63d)
	and a
	jr z,lc230
	ld hl,(lc51e)
	ld (lc511),hl
	ld a,(lca06)
	ld b,a
	bit 3,a
	jr nz,lc222
	ld a,(lc524)
	ld (lc517),a
.lc222
	ld hl,lc518
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(lc526)
	ld (lc519),a
.lc230
	ld a,(lc63e)
	and a
	jr z,lc25a
	ld hl,(lc520)
	ld (lc513),hl
	ld a,(lca1b)
	ld b,a
	bit 3,a
	jr nz,lc24a
	ld a,(lc524)
	ld (lc517),a
.lc24a
	ld hl,lc518
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
.lc256 equ $ + 2
	ld a,(lc527)
	ld (lc51a),a
.lc25a
	ld a,(lc63f)
	and a
	jr z,lc286
	ld hl,(lc522)
	ld (lc515),hl
	ld a,(lca30)
	ld b,a
	bit 3,a
	jr nz,lc274
	ld a,(lc524)
	ld (lc517),a
.lc274
	ld hl,lc518
	ld a,(hl)
	or #24
	rlc b
	rlc b
	and b
	ld (hl),a
	ld a,(lc528)
	ld (lc51b),a
.lc286
	ld hl,lc51b
; modified by Megachur
	ld d,#0a
	jp send_all_data_to_ay
	defs 22,0
.lc2a4
	ld de,#0a00
send_data_to_ay_loop
	call send_data_to_ay
	dec d
	jp p,send_data_to_ay_loop
	ld de,#073f
	jp send_data_to_ay
	defs 14,0
; modified by Megachur
;
.stop_music
.lc2c2
;
	xor a
	ld (lc63c),a
	ld (lc640),a
	ld (lc641),a
	ld (lc642),a
	call lca7b
	xor a
	ld (lc519),a
	ld (lc51a),a
	ld (lc51b),a
	ret
; jumptable
	db #10,#5e,#4f,#3a,#00,#00,#6c,#05
	db #70,#71,#00,#4d
	pop hl
	jp lc006
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
	jr nz,lc30f
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lc30f
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lc36a
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,lc4dc
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lc36a
	ld a,(de)
	inc de
	ld (lc455),a
	jr lc36a
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr lc36a
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr lc36a
	set 1,(ix+#00)
	jr lc36a
	jr lc395
	ld (ix+#1f),#ff
	jr lc36a
.lc35d
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lc36a
	ld a,(de)
	inc de
	and a
	jp m,lc3d7
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lc37c
	ld (lc0e6),a
.lc37c
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.lc395
	set 5,(ix+#00)
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,lc3d6
	ld a,(lc63d)
	and a
	jr z,lc3b8
	ld a,(lca06)
	bit 3,a
	jr z,lc3d6
.lc3b8
	ld a,(lc63e)
	and a
	jr z,lc3c5
	ld a,(lca1b)
	bit 3,a
	jr z,lc3d6
.lc3c5
	ld a,(lc63f)
	and a
	jr z,lc3d2
	ld a,(lca30)
	bit 3,a
	jr z,lc3d6
.lc3d2
	ld (ix+#1f),#ff
.lc3d6
	ret
.lc3d7
	cp #c0
	jr c,lc41a
	add #20
	jr c,lc3fb
	add #10
	jr c,lc402
	add #10
	ld c,a
	ld hl,lc5d2
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp lc36a
.lc3fb
	inc a
	ld (ix+#11),a
	jp lc36a
.lc402
	ld hl,lc5dd
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
	jp lc36a
.lc41a
	ld hl,lc256
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lc422
	ld c,(ix+#00)
	bit 5,c
	jr z,lc454
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,lc44e
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,lc44e
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.lc44e
	ld a,(ix+#18)
	ld (ix+#13),a
.lc455 equ $ + 1
.lc454
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,lc471
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.lc471
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lc52a
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lc4d2
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lc49b
	bit 0,c
	jr nz,lc4b9
.lc49b
	bit 5,l
	jr nz,lc4ab
	sub (ix+#1b)
	jr nc,lc4b6
	set 5,(ix+#1d)
	sub a
	jr lc4b6
.lc4ab
	add (ix+#1b)
	cp b
	jr c,lc4b6
	res 5,(ix+#1d)
	ld a,b
.lc4b6
	ld (ix+#1c),a
.lc4b9
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lc4c4
	dec d
.lc4c4
	add #a0
	jr c,lc4d0
.lc4c8
	sla e
	rl d
	add #18
	jr nc,lc4c8
.lc4d0
	add hl,de
	ex de,hl
.lc4d2
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.lc4dc equ $ + 1
	ld a,#38
	jr nz,lc4e9
	ld a,(lc0e6)
	xor #08
	ld (lc132),a
	ld a,#07
.lc4e9
	ld hl,lc518
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,lc50c
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (lc132),a
.lc50c
	ex de,hl
	ld a,(ix+#13)
	ret
.lc518 equ $ + 7
.lc517 equ $ + 6
.lc515 equ $ + 4
.lc513 equ $ + 2
.lc511
	db #69,#01,#be,#03,#90,#00,#41,#28
.lc520 equ $ + 7
.lc51f equ $ + 6
.lc51e equ $ + 5
.lc51b equ $ + 2
.lc51a equ $ + 1
.lc519
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.lc528 equ $ + 7
.lc527 equ $ + 6
.lc526 equ $ + 5
.lc524 equ $ + 3
.lc523 equ $ + 2
.lc522 equ $ + 1
.lc521
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.lc52a
	dw #0ef8,#0e10,#0d60,#0c80
	dw #0bd8,#0b28,#0a88,#09f0
	dw #0960,#08e0,#0858,#07e0
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
; added by Megachur
;	dw #001d,#001c,#001a,#0019
;	dw #0017,#0016,#0015,#0013
;	dw #0012,#0011,#0010,#000f
; added by Megachur
.lc5d4 equ $ + 2
.lc5d2
	db #02,#02,#80,#0c,#00,#00,#00,#00
	db #00,#00,#80
.lc5dd
	dw lc5ea,lc5f6,lc608,lc60f
	dw lc616,lc630
	db #01
.lc5ea
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
.lc5f6 equ $ + 4
	db #07,#06,#87,#01,#0f,#0f,#0d,#0b
	db #0d,#0c,#0a,#09,#0b,#0a,#08,#07
.lc608 equ $ + 6
	db #09,#08,#06,#05,#87,#01,#0f,#0e
.lc60f equ $ + 5
	db #0d,#0c,#0b,#87,#01,#0f,#0f,#0e
.lc616 equ $ + 4
	db #0d,#0c,#87,#01,#0f,#0e,#0d,#01
	db #0c,#01,#0b,#01,#0a,#01,#09,#01
	db #08,#01,#07,#01,#06,#01,#05,#01
.lc630 equ $ + 6
	db #04,#01,#02,#01,#87,#01,#0e,#0d
	db #0c,#0b,#0a,#09,#0b,#0a,#09,#08
	db #87
.lc642 equ $ + 7
.lc641 equ $ + 6
.lc640 equ $ + 5
.lc63f equ $ + 4
.lc63e equ $ + 3
.lc63d equ $ + 2
.music_end equ $ + 1
.lc63c equ $ + 1
.lc63b
	db #0f,#ff,#00,#00,#00,#00,#00,#00
.lc643
	db #1f
.lc644
	ld hl,lc9ff
	ld (hl),b
	ld hl,lc651
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lc651
	inc bc
	ld e,b
	xor l
	ld hl,lc63d
	ld (hl),#00
	ld hl,lc982
	add a
	add l
	ld l,a
	jr nc,lc662
	inc h
.lc662
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lca00
.lc66a
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lc66a
	ld a,(lca01)
	ld (lca0e),a
	ld hl,(lca02)
	ld (lc51e),hl
	ld a,(lca06)
	bit 3,a
	jr nz,lc687
	ld a,l
	ld (lc524),a
.lc687
	ld a,(lca0b)
	ld (lca0f),a
	ld a,(lca0d)
	ld (lca14),a
	ld hl,lc9f2
	ld a,(lc9ff)
	ld c,a
	add hl,bc
	ld (lca10),hl
	ld (lca12),hl
	ld a,(hl)
	ld (lc526),a
	ld hl,lc63d
	inc (hl)
	ret
	ld hl,lc63e
	ld (hl),#00
	ld hl,lc982
	add a
	add l
	ld l,a
	jr nc,lc6b8
	inc h
.lc6b8
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lca15
.lc6c0
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lc6c0
	ld a,(lca16)
	ld (lca23),a
	ld hl,(lca17)
	ld (lc520),hl
	ld a,(lca1b)
	bit 3,a
	jr nz,lc6dd
	ld a,l
	ld (lc524),a
.lc6dd
	ld a,(lca20)
	ld (lca24),a
	ld a,(lca22)
	ld (lca29),a
	ld hl,lc9f2
	ld a,(lc9ff)
	ld c,a
	add hl,bc
	ld (lca25),hl
	ld (lca27),hl
	ld a,(hl)
	ld (lc527),a
	ld hl,lc63e
	inc (hl)
	ret
	ld hl,lc63f
	ld (hl),#00
	ld hl,lc982
	add a
	add l
	ld l,a
	jr nc,lc70e
	inc h
.lc70e
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lca2a
.lc716
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lc716
	ld a,(lca2b)
	ld (lca38),a
	ld hl,(lca2c)
	ld (lc522),hl
	ld a,(lca30)
	bit 3,a
	jr nz,lc733
	ld a,l
	ld (lc524),a
.lc733
	ld a,(lca35)
	ld (lca39),a
	ld a,(lca37)
	ld (lca3e),a
	ld hl,lc9f2
	ld a,(lc9ff)
	ld c,a
	add hl,bc
	ld (lca3a),hl
	ld (lca3c),hl
	ld a,(hl)
	ld (lc528),a
	ld hl,lc63f
	inc (hl)
	ret
.lc756
	call lca88
	ld a,(lc63d)
	and a
	call nz,lc81e
	ld a,(lc63e)
	and a
	call nz,lc8d0
	ld a,(lc63f)
	and a
	ret z
	ld a,(lca2a)
	and a
	jr nz,lc77c
	ld a,(lca36)
	and a
	jr nz,lc77c
	ld (lc63f),a
	ret
.lc77c
	dec a
	ld (lca2a),a
	ld a,(lca38)
	and a
	jr nz,lc7b4
	ld a,(lca36)
	and a
	jr nz,lc792
	ld a,(lca33)
	and a
	jr z,lc7f6
.lc792
	dec a
	ld (lca33),a
	ld a,(lca2b)
	ld (lca38),a
	ld a,(lca31)
	and a
	jr z,lc7a5
	ld a,(lcaa5)
.lc7a5
	ld b,a
	ld a,(lca2c)
	add b
	ld (lc522),a
	ld a,(lca2d)
	add b
	ld (lc523),a
.lc7b4
	ld hl,lca38
	dec (hl)
	ld hl,lca37
	ld a,(hl)
	and a
	jr z,lc7c6
	ld hl,lca3e
	dec (hl)
	jr nz,lc7e9
	ld (hl),a
.lc7c6
	ld a,(lca32)
	and a
	jr z,lc7e9
	jp p,lc7dc
	ld hl,(lc522)
	ld de,(lca2e)
	add hl,de
	ld (lc522),hl
	jr lc7e9
.lc7dc
	ld hl,(lc522)
	ld de,(lca2e)
	and a
	sbc hl,de
	ld (lc522),hl
.lc7e9
	ld a,(lca30)
	bit 3,a
	jr nz,lc7f6
	ld a,(lc522)
	ld (lc524),a
.lc7f6
	ld a,(lca39)
	dec a
	ld (lca39),a
	jr nz,lc81d
	ld a,(lca35)
	ld (lca39),a
	ld hl,(lca3c)
	ld a,(hl)
	inc hl
	and a
	jp p,lc817
	cp #80
	jr nz,lc81d
	ld hl,(lca3a)
	ld a,(hl)
	inc hl
.lc817
	ld (lca3c),hl
	ld (lc528),a
.lc81d
	ret
.lc81e
	ld a,(lca00)
	and a
	jr nz,lc82e
	ld a,(lca0c)
	and a
	jr nz,lc82e
	ld (lc63d),a
	ret
.lc82e
	dec a
	ld (lca00),a
	ld a,(lca0e)
	and a
	jr nz,lc866
	ld a,(lca0c)
	and a
	jr nz,lc844
	ld a,(lca09)
	and a
	jr z,lc8a8
.lc844
	dec a
	ld (lca09),a
	ld a,(lca01)
	ld (lca0e),a
	ld a,(lca07)
	and a
	jr z,lc857
	ld a,(lcaa3)
.lc857
	ld b,a
	ld a,(lca02)
	add b
	ld (lc51e),a
	ld a,(lca03)
	add b
	ld (lc51f),a
.lc866
	ld hl,lca0e
	dec (hl)
	ld hl,lca0d
	ld a,(hl)
	and a
	jr z,lc878
	ld hl,lca14
	dec (hl)
	jr nz,lc89b
	ld (hl),a
.lc878
	ld a,(lca08)
	and a
	jr z,lc89b
	jp p,lc88e
	ld hl,(lc51e)
	ld de,(lca04)
	add hl,de
	ld (lc51e),hl
	jr lc89b
.lc88e
	ld hl,(lc51e)
	ld de,(lca04)
	and a
	sbc hl,de
	ld (lc51e),hl
.lc89b
	ld a,(lca06)
	bit 3,a
	jr nz,lc8a8
	ld a,(lc51e)
	ld (lc524),a
.lc8a8
	ld a,(lca0f)
	dec a
	ld (lca0f),a
	jr nz,lc8cf
	ld a,(lca0b)
	ld (lca0f),a
	ld hl,(lca12)
	ld a,(hl)
	inc hl
	and a
	jp p,lc8c9
	cp #80
	jr nz,lc8cf
	ld hl,(lca10)
	ld a,(hl)
	inc hl
.lc8c9
	ld (lca12),hl
	ld (lc526),a
.lc8cf
	ret
.lc8d0
	ld a,(lca15)
	and a
	jr nz,lc8e0
	ld a,(lca21)
	and a
	jr nz,lc8e0
	ld (lc63e),a
	ret
.lc8e0
	dec a
	ld (lca15),a
	ld a,(lca23)
	and a
	jr nz,lc918
	ld a,(lca21)
	and a
	jr nz,lc8f6
	ld a,(lca1e)
	and a
	jr z,lc95a
.lc8f6
	dec a
	ld (lca1e),a
	ld a,(lca16)
	ld (lca23),a
	ld a,(lca1c)
	and a
	jr z,lc909
	ld a,(lcaa4)
.lc909
	ld b,a
	ld a,(lca17)
	add b
	ld (lc520),a
	ld a,(lca18)
	add b
	ld (lc521),a
.lc918
	ld hl,lca23
	dec (hl)
	ld hl,lca22
	ld a,(hl)
	and a
	jr z,lc92a
	ld hl,lca29
	dec (hl)
	jr nz,lc94d
	ld (hl),a
.lc92a
	ld a,(lca1d)
	and a
	jr z,lc94d
	jp p,lc940
	ld hl,(lc520)
	ld de,(lca19)
	add hl,de
	ld (lc520),hl
	jr lc94d
.lc940
	ld hl,(lc520)
	ld de,(lca19)
	and a
	sbc hl,de
	ld (lc520),hl
.lc94d
	ld a,(lca1b)
	bit 3,a
	jr nz,lc95a
	ld a,(lc520)
	ld (lc524),a
.lc95a
	ld a,(lca24)
	dec a
	ld (lca24),a
	jr nz,lc981
	ld a,(lca20)
	ld (lca24),a
	ld hl,(lca27)
	ld a,(hl)
	inc hl
	and a
	jp p,lc97b
	cp #80
	jr nz,lc981
	ld hl,(lca25)
	ld a,(hl)
	inc hl
.lc97b
	ld (lca27),hl
	ld (lc527),a
.lc981
	ret
.lc982
	dw lc990,lc99e,lc9ac,lc9ba
	dw lc9c8,lc9d6,lc9e4
.lc990
	db #06,#05,#8f,#06,#41,#00,#f6,#00
.lc99e equ $ + 6
	db #ff,#63,#00,#03,#00,#00,#14,#06
	db #02,#04,#91,#01,#f6,#00,#ff,#ff
.lc9ac equ $ + 4
	db #00,#02,#00,#00,#32,#0a,#14,#00
	db #07,#00,#f6,#01,#ff,#0a,#00,#04
.lc9ba equ $ + 2
	db #00,#00,#11,#05,#8f,#01,#41,#00
	db #f6,#00,#ff,#63,#00,#01,#00,#00
.lc9c8
	db #1e,#63,#22,#0c,#20,#00,#fe,#00
.lc9d6 equ $ + 6
	db #ff,#ff,#00,#04,#00,#00,#0f,#03
	db #c0,#00,#10,#00,#fe,#00,#ff,#63
.lc9e4 equ $ + 4
	db #00,#01,#00,#00,#14,#02,#50,#00
	db #04,#00,#fe,#00,#ff,#ff,#00,#02
	db #00,#00
.lc9f2
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#ff
.lca06 equ $ + 7
.lca04 equ $ + 5
.lca03 equ $ + 4
.lca02 equ $ + 3
.lca01 equ $ + 2
.lca00 equ $ + 1
.lc9ff
	db #00,#00,#00,#00,#00,#00,#00,#00
.lca0e equ $ + 7
.lca0d equ $ + 6
.lca0c equ $ + 5
.lca0b equ $ + 4
.lca09 equ $ + 2
.lca08 equ $ + 1
.lca07
	db #00,#00,#00,#00,#00,#00,#00,#00
.lca16 equ $ + 7
.lca15 equ $ + 6
.lca14 equ $ + 5
.lca12 equ $ + 3
.lca10 equ $ + 1
.lca0f
	db #00,#00,#00,#00,#00,#00,#00,#00
.lca1e equ $ + 7
.lca1d equ $ + 6
.lca1c equ $ + 5
.lca1b equ $ + 4
.lca19 equ $ + 2
.lca18 equ $ + 1
.lca17
	db #00,#00,#00,#00,#00,#00,#00,#00
.lca25 equ $ + 6
.lca24 equ $ + 5
.lca23 equ $ + 4
.lca22 equ $ + 3
.lca21 equ $ + 2
.lca20 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lca2e equ $ + 7
.lca2d equ $ + 6
.lca2c equ $ + 5
.lca2b equ $ + 4
.lca2a equ $ + 3
.lca29 equ $ + 2
.lca27
	db #00,#00,#00,#00,#00,#00,#00,#00
.lca36 equ $ + 7
.lca35 equ $ + 6
.lca33 equ $ + 4
.lca32 equ $ + 3
.lca31 equ $ + 2
.lca30 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lca3e equ $ + 7
.lca3c equ $ + 5
.lca3a equ $ + 3
.lca39 equ $ + 2
.lca38 equ $ + 1
.lca37
	db #00,#00,#00,#00,#00,#00,#00,#00
	ld hl,#0d00
	ld (lc191),hl
	ld a,#ff
	ld (lc640),a
	ret
	xor a
	ld (lc640),a
	ld (lc519),a
	ret
	ld hl,#0c80
	ld (lc1c0),hl
	ld a,#ff
	ld (lc641),a
	ret
	xor a
	ld (lc641),a
	ld (lc51a),a
	ret
	ld hl,#0c00
	ld (lc1ef),hl
	ld a,#ff
	ld (lc642),a
	ret
	xor a
	ld (lc642),a
	ld (lc51b),a
	ret
.lca7b
	xor a
	ld (lc63d),a
	ld (lc63e),a
	ld (lc63f),a
	jp lc2a4
.lca88
	ld a,(lcaa3)
	and #48
	adc #38
	sla a
	sla a
	ld hl,lcaa6
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.lcaa3
	db #68
.lcaa4
	db #0e
.lcaa5
	db #03
.lcaa6
	db #0a
.lcaa7
	db #20
	dw lcadc,lcaca,lcaea
	db #2e
	dw lcc17,lcc05,lcc1d
	db #24
	dw lcc9f,lcc93,lccab
	db #28
	dw lcd2a,lcd1c,lcd2e
	db #24
	dw lce11,lce0f,lce13
.lcaca
	dw lcb10,lcb2c,lcb10,lcb2c
	dw lcb41,lcb56,lcb41,lcb2c
	dw #0000
.lcadc
	dw lcb6b,lcb6b,lce41,lcb6b
	dw lcb6b,lce3e,#0000
.lcaea
	dw lcbb8,lce41,lcbb8,lce3e
	dw lcbb8,lce41,lcbb8,lce3e
	dw lce4d,lcbb8,lce41,lcbb8
	dw lce3e,lcbb8,lce41,lcbb8
	dw lce3e,lce44,#0000
.lcb10
	db #d1,#88,#02,#02,#90,#8a,#e0,#0c
.lcb1c equ $ + 4
	db #18,#8d,#0c,#18,#0c,#18,#8d,#0c
	db #18,#0c,#18,#8d,#0c,#1f,#09,#15
	db #8d,#0b,#17,#87
.lcb2c
	db #13,#1f,#8d,#13,#1f,#13,#1f,#8d
	db #13,#1f,#13,#1f,#8d,#13,#1f,#13
	db #1f,#8d,#13,#1f,#87
.lcb41
	db #11,#1d,#8d,#11,#1d,#11,#1d,#8d
	db #11,#1d,#11,#1d,#8d,#11,#1d,#11
	db #1d,#8d,#11,#1d,#87
.lcb56
	db #0e,#1a,#8d,#0e,#1a,#0e,#1a,#8d
	db #0e,#1a,#0e,#1a,#8d,#0e,#1a,#0e
	db #1a,#8d,#0e,#1a,#87
.lcb6b
	db #8a,#88,#01,#02,#d3,#e2,#28,#29
.lcb73
	db #28,#26,#e1,#28,#29,#d1,#e2,#26
	db #26,#26,#26,#e1,#26,#26,#d3,#e2
	db #28,#29,#28,#26,#e1,#28,#29,#d1
	db #e2,#2b,#2d,#2b,#2d,#e1,#2b,#2a
	db #d3,#e2,#29,#2b,#29,#28,#e1,#29
	db #28,#d1,#e2,#26,#26,#26,#26,#e1
	db #26,#26,#d3,#e2,#29,#2b,#29,#28
	db #e1,#29,#2a,#e2,#2b,#2d,#2b,#29
	db #e1,#2b,#2d,#c1,#87
.lcbb8
	db #8a,#88,#01,#02,#c1,#d3,#e2,#2b
.lcbc1 equ $ + 1
	db #2d,#2b,#29,#e1,#2b,#2d,#d1,#e2
	db #2b,#2d,#2b,#2d,#e1,#2b,#2d,#d3
	db #e2,#2b,#2d,#2b,#29,#e1,#2b,#2d
	db #d1,#e2,#2f,#30,#2f,#30,#e1,#2f
	db #2e,#d3,#e2,#2d,#2f,#2d,#2b,#e1
	db #2d,#2b,#d1,#e2,#29,#29,#29,#29
	db #e1,#29,#29,#d3,#e2,#2d,#2f,#2d
	db #2b,#e1,#2d,#2e,#e2,#2f,#30,#2f
	db #2d,#e1,#2f,#30,#87
.lcc05
	dw lcc23,lcc23,lcc3a,lcc3a
	dw lcc23,lcc23,lcc3a,lcc3a
.lcc17 equ $ + 2
	dw lcc4b,lcc59,lcc59,lcc4f
.lcc1d
	dw lcc56,lcc56,lcc8f
.lcc23
	db #88,#02,#02,#90,#8a,#d0,#e1,#18
	db #e0,#18,#8d,#18,#8f,#18,#e1,#18
.lcc3a equ $ + 7
	db #e0,#18,#8d,#18,#8f,#18,#87,#e1
	db #11,#e0,#11,#8d,#11,#8f,#11,#e1
	db #11,#e0,#11,#8d,#11,#8f,#11,#87
.lcc4f equ $ + 4
.lcc4b
	db #e8,#d4,#1c,#8e,#88,#01,#02,#e8
.lcc59 equ $ + 6
.lcc56 equ $ + 3
	db #d4,#1f,#8e,#88,#02,#02,#8a,#d5
	db #e0,#1f,#22,#24,#1f,#22,#24,#1f
	db #22,#24,#1f,#22,#24,#1f,#22,#24
	db #1f,#22,#24,#1f,#22,#24,#1f,#22
	db #24,#1d,#22,#24,#1d,#22,#24,#1d
	db #22,#24,#1d,#22,#24,#1d,#22,#24
	db #1d,#22,#24,#1d,#22,#24,#1d,#22
.lcc8f equ $ + 4
	db #24,#92,#0c,#87,#e8,#d4,#18,#8e
.lcc93
	dw lccb7,lccb7,lcccf,lcccf
	dw lccb7,lcce0
.lcc9f
	dw lccee,lccee,lcd04,lcd04
.lccab equ $ + 4
	dw lccee,lcce4,lcceb,lcceb
	dw lcd04,lcd04,lcceb,lcd18
.lccb7
	db #88,#02,#02,#90,#8a,#d1,#e0,#13
	db #13,#13,#13,#13,#13,#13,#13,#13
	db #13,#13,#13,#13,#13,#13,#13,#87
.lcccf
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
.lcce4 equ $ + 5
.lcce0 equ $ + 1
	db #87,#d4,#e7,#13,#8e,#88,#01,#02
.lccee equ $ + 7
.lcceb equ $ + 4
	db #d4,#e7,#18,#8e,#88,#01,#02,#8a
	db #d3,#e1,#13,#20,#e0,#13,#e1,#1f
	db #e0,#13,#e1,#1b,#e0,#13,#e1,#1a
.lcd04 equ $ + 5
	db #e0,#13,#e1,#16,#87,#e1,#18,#20
	db #e0,#18,#e1,#1f,#e0,#18,#e1,#1b
	db #e0,#18,#e1,#1a,#e0,#18,#e1,#16
.lcd18 equ $ + 1
	db #87,#d4,#e5,#1f,#8e
.lcd1c
	dw lcd32,lce47,lcd32,lce4d
	dw lcd32,lce44,#0000
.lcd2a
	dw lcd73,#0000
.lcd2e
	dw lcdc1,#0000
.lcd32
	db #88,#02,#02,#90,#92,#05,#8a,#d1
	db #e3,#11,#11,#e2,#11,#e0,#11,#e3
	db #18,#18,#e2,#18,#e0,#18,#e3,#13
	db #13,#e2,#13,#e0,#13,#e3,#1a,#1a
	db #e2,#1a,#e0,#1a,#e3,#11,#11,#e2
	db #11,#e0,#11,#e3,#18,#18,#e2,#18
	db #e0,#18,#e3,#13,#13,#e2,#13,#e0
	db #13,#e3,#13,#13,#e2,#13,#e0,#13
	db #87
.lcd73
	db #88,#01,#02,#92,#05,#8a,#d2,#e5
	db #1d,#e0,#1d,#1d,#e2,#1d,#e0,#1d
	db #e5,#24,#e0,#24,#24,#e2,#24,#e0
	db #24,#e5,#23,#e0,#23,#23,#e2,#23
	db #e0,#23,#e5,#26,#e0,#26,#26,#e1
	db #26,#26,#e5,#1d,#e0,#1d,#1d,#e2
	db #1d,#e0,#1d,#e5,#24,#e0,#24,#24
	db #e2,#24,#e0,#24,#e5,#23,#e0,#23
	db #23,#e2,#23,#e0,#23,#e5,#26,#e0
	db #2b,#2b,#e1,#2b,#2b,#87
.lcdc1
	db #88,#01,#02,#92,#05,#8a,#d2,#e5
	db #21,#e0,#21,#21,#e2,#21,#e0,#21
	db #e5,#28,#e0,#28,#28,#e2,#28,#e0
	db #28,#e5,#26,#e0,#26,#26,#e2,#26
	db #e0,#26,#e5,#21,#e0,#21,#21,#e1
	db #21,#21,#e5,#21,#e0,#21,#21,#e2
	db #21,#e0,#21,#e5,#28,#e0,#28,#28
	db #e2,#28,#e0,#28,#e5,#26,#e0,#26
	db #26,#e2,#26,#e0,#26,#e5,#2b,#e0
	db #2f,#2f,#e1,#2f,#2f,#87
.lce13 equ $ + 4
.lce11 equ $ + 2
.lce0f
	dw lce15,lce24,lce31
.lce15
	db #88,#02,#02,#8a,#d3,#89,#01,#e0
.lce24 equ $ + 7
	db #1d,#e2,#20,#d4,#e5,#21,#8e,#88
	db #02,#02,#8a,#d3,#e0,#29,#e2,#2c
.lce31 equ $ + 4
	db #d4,#e5,#29,#8e,#88,#02,#02,#8a
	db #d3,#e0,#24,#e2,#27,#d4,#e5,#24
	db #8e
.lce3e
	db #92,#00,#87
.lce41
	db #92,#0c,#87
.lce44
	db #89,#00,#87
.lce47
	db #89,#01,#87,#89,#03,#87
.lce4d
	db #89,#03,#87
;
.send_data_to_ay		; added by Megachur
;
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
.send_all_data_to_ay	; added by Megachur
;
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
	jp p,send_all_data_to_ay
	ret
;
.music_info
	db "Grand Prix Simulator 2 (1989)(CodeMasters)(David Whittaker)",0
	db "Zx Spectrum Player converted to CPC by Megachur",0

	read "music_end.asm"
