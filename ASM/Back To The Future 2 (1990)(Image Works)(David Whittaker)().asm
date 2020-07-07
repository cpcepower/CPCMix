; Music of Back To The Future 2 (1990)(Image Works)(David Whittaker)()
; Ripped by Megachur the 20/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BACKTTF2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b08d
FIRST_THEME				equ 0
LAST_THEME				equ 5

	read "music_header.asm"

;
.init_music
;
	push af
	call lb2a2
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,lbc81
	add hl,bc
	ld a,(hl)
	ld (lb179),a
	ld (lb599),a
	inc hl
	ld ix,lb0fa
	ld c,#22
	ld a,#03
.lb0ae
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
	ld hl,lb683
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
	jr nz,lb0ae
	ld (lb4b4),a
	dec a
	ld (lb59a),a
	ld (lb595),a
	ret
.lb0fa
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.lb11c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.lb13e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(lb595)
	ld hl,lb596
	or (hl)
	inc hl
	or (hl)
	ret z
	call lb87d
	ld a,(lb595)
	and a
	jr z,lb1c4
.lb174 equ $ + 1
	ld a,#00
	ld (lb1c0),a
.lb179 equ $ + 1
	ld a,#01
	ld hl,lb59a
	add (hl)
	ld (hl),a
	jr nc,lb198
	ld b,#00
	ld ix,lb0fa
	call lb3c9
	ld ix,lb11c
	call lb3c9
	ld ix,lb13e
	call lb3c9
.lb198
	ld ix,lb0fa
	call lb481
	ld (lb59b),hl
	ld (lb5a3),a
	ld ix,lb11c
	call lb481
	ld (lb59d),hl
	ld (lb5a4),a
	ld ix,lb13e
	call lb481
	ld (lb59f),hl
	ld (lb5a5),a
.lb1c0 equ $ + 1
	ld a,#00
	ld (lb5a1),a
.lb1c4
	ld a,(lb595)
	and a
	jr nz,lb1da
	ld (lb5a3),a
	ld (lb5a4),a
	ld (lb5a5),a
	ld a,#3f
	ld (lb5a2),a
	jr lb202
.lb1da
	ld a,(lb598)
	and #0f
	xor #0f
	jr z,lb202
	ld b,a
	ld a,(lb5a3)
	sub b
	jr nc,lb1eb
	xor a
.lb1eb
	ld (lb5a3),a
	ld a,(lb5a4)
	sub b
	jr nc,lb1f5
	xor a
.lb1f5
	ld (lb5a4),a
	ld a,(lb5a5)
	sub b
	jr nc,lb1ff
	xor a
.lb1ff
	ld (lb5a5),a
.lb202
	ld a,(lb596)
	and a
	jr z,lb22a
	ld hl,(lb5a8)
	ld (lb59b),hl
	ld a,(lbc3e)
	ld b,a
	bit 3,a
	jr nz,lb21c
	ld a,(lb5ae)
	ld (lb5a1),a
.lb21c
	ld hl,lb5a2
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(lb5b0)
	ld (lb5a3),a
.lb22a
	ld a,(lb597)
	and a
	jr z,lb254
	ld hl,(lb5aa)
	ld (lb59d),hl
	ld a,(lbc53)
	ld b,a
	bit 3,a
	jr nz,lb244
	ld a,(lb5ae)
.lb243 equ $ + 2
	ld (lb5a1),a
.lb244
	ld hl,lb5a2
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(lb5b1)
	ld (lb5a4),a
.lb254
	ld hl,lb5a5
	ld d,#0a
.lb259
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
	jp p,lb259
	ret
.lb27a
	ld de,#0a00
.lb27d
	call lb287
	dec d
	jp p,lb27d
	ld de,#073f
.lb287
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
.lb2a2
.stop_music
;
	xor a
	ld (lb595),a
	call lb2b9
	xor a
	ld (lb5a3),a
	ld (lb5a4),a
	ld (lb5a5),a
	ld a,#0f
	ld (lb598),a
	ret
.lb2b9
	xor a
	ld (lb596),a
	ld (lb597),a
	jp lb27a
	db #f0,#de,#d7,#e1,#a4,#00,#00,#3b
	db #c4,#b5,#7a,#64,#8c,#dd,#30,#ea
	db #eb,#f0,#b3,#13,#0a,#01,#1a,#13
	ld (lb598),a
	jp lb3d6
	ld a,(de)
	inc de
	ld (lb179),a
	jp lb3d6
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
	jp lb3d6
	pop hl
	jp lb2a2
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
	jr nz,lb327
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb327
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb3d6
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,lb560
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb3d6
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,lb560
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb3d6
	ld hl,lb560
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr lb3d6
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lb3d6
	ld a,(de)
	inc de
	ld (lb4b4),a
	jr lb3d6
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr lb3d6
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr lb3d6
	ld (ix+#1d),b
	jr lb3d6
	ld (ix+#1d),#c0
	jr lb3d6
	set 1,(ix+#00)
	jr lb3d6
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb405
	jr lb401
	ld (ix+#1f),#ff
	jr lb3d6
	ld (ix+#1f),b
	jr lb3d6
.lb3c9
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb3d6
	ld a,(de)
	inc de
	and a
	jp m,lb436
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb3e8
	ld (lb174),a
.lb3e8
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.lb401
	set 5,(ix+#00)
.lb405
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,lb435
	ld a,(lb596)
	and a
	jr z,lb424
	ld a,(lbc3e)
	bit 3,a
	jr z,lb435
.lb424
	ld a,(lb597)
	and a
	jr z,lb431
	ld a,(lbc53)
	bit 3,a
	jr z,lb435
.lb431
	ld (ix+#1f),#ff
.lb435
	ret
.lb436
	cp #c0
	jr c,lb479
	add #20
	jr c,lb45a
	add #10
	jr c,lb461
	add #10
	ld c,a
	ld hl,lb674
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp lb3d6
.lb45a
	inc a
	ld (ix+#11),a
	jp lb3d6
.lb461
	ld hl,lb6ae
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
	jp lb3d6
.lb479
	ld hl,lb243
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb481
	ld c,(ix+#00)
	bit 5,c
	jr z,lb4b3
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,lb4ad
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,lb4ad
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.lb4ad
	ld a,(ix+#18)
	ld (ix+#13),a
.lb4b4 equ $ + 1
.lb4b3
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,lb4d0
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.lb4d0
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lb5b4
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb531
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb4fa
	bit 0,c
	jr nz,lb518
.lb4fa
	bit 5,l
	jr nz,lb50a
	sub (ix+#1b)
	jr nc,lb515
	set 5,(ix+#1d)
	sub a
	jr lb515
.lb50a
	add (ix+#1b)
	cp b
	jr c,lb515
	res 5,(ix+#1d)
	ld a,b
.lb515
	ld (ix+#1c),a
.lb518
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb523
	dec d
.lb523
	add #a0
	jr c,lb52f
.lb527
	sla e
	rl d
	add #18
	jr nc,lb527
.lb52f
	add hl,de
	ex de,hl
.lb531
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lb55c
	ld b,(ix+#0e)
	djnz lb559
	ld c,(ix+#0d)
	bit 7,c
	jr z,lb548
	dec b
.lb548
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lb55c
.lb559
	ld (ix+#0e),b
.lb55c
	cpl
	and #03
.lb560 equ $ + 1
	ld a,#38
	jr nz,lb56d
	ld a,(lb174)
	xor #08
	ld (lb1c0),a
	ld a,#07
.lb56d
	ld hl,lb5a2
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,lb590
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (lb1c0),a
.lb590
	ex de,hl
	ld a,(ix+#13)
	ret
.lb59b equ $ + 6
.lb59a equ $ + 5
.lb599 equ $ + 4
.lb598 equ $ + 3
.lb597 equ $ + 2
.lb596 equ $ + 1
.lb595
.music_end
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb5a4 equ $ + 7
.lb5a3 equ $ + 6
.lb5a2 equ $ + 5
.lb5a1 equ $ + 4
.lb59f equ $ + 2
.lb59d
	db #00,#00,#00,#00,#00,#3f,#0f,#0f
.lb5ab equ $ + 6
.lb5aa equ $ + 5
.lb5a9 equ $ + 4
.lb5a8 equ $ + 3
.lb5a5
	db #0f,#00,#00,#00,#00,#00,#00,#00
.lb5b1 equ $ + 4
.lb5b0 equ $ + 3
.lb5ae equ $ + 1
	db #00,#00,#3f,#00,#00,#00,#00
.lb5b4
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
.lb674
	db #0f,#0f,#11,#13,#15,#17,#19,#1b
.lb683 equ $ + 7
	db #1d,#1f,#20,#21,#22,#23,#24,#80
	db #00,#03,#87,#00,#04,#87,#04,#07
	db #8a,#00,#04,#8a,#07,#0c,#8f,#07
	db #0c,#90,#03,#07,#8c,#04,#07,#8c
	db #00,#8c,#00,#83,#00,#84,#00,#85
	db #00,#87,#0c,#00,#00,#00,#00,#00
	db #00,#80
.lb6ae
	dw lb6cf,lb6e2,lb6e9,lb6fb
	dw lb70a,lb712,lb723,lb733
	dw lb75a,lb76b,lb77c,lb78d
	dw lb79e,lb7a7,lb7b7,lb7ba
.lb6cf equ $ + 1
	db #02,#0d,#0e,#0f,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0b,#0a,#0a,#09
.lb6e2 equ $ + 4
	db #09,#08,#87,#01,#0d,#0b,#07,#03
.lb6e9 equ $ + 3
	db #01,#87,#01,#0f,#0f,#0d,#0b,#0d
	db #0c,#0a,#09,#0b,#0a,#08,#07,#09
.lb6fb equ $ + 5
	db #08,#06,#05,#87,#01,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.lb70a equ $ + 4
	db #02,#01,#87,#01,#0d,#0f,#0e,#0d
.lb712 equ $ + 4
	db #0c,#0b,#87,#01,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.lb723 equ $ + 5
	db #03,#02,#01,#87,#01,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.lb733 equ $ + 5
	db #03,#02,#01,#87,#04,#04,#06,#07
	db #08,#09,#0a,#0b,#0c,#0d,#0e,#0f
	db #0f,#0e,#0e,#0e,#0e,#0d,#0d,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#09,#09,#09,#08,#08
.lb75a equ $ + 4
	db #08,#07,#87,#08,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.lb76b equ $ + 5
	db #03,#02,#01,#87,#01,#09,#0b,#0d
	db #0e,#0e,#0e,#0e,#0e,#0d,#0d,#0c
.lb77c equ $ + 6
	db #0c,#0c,#0c,#0b,#87,#0e,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.lb78d equ $ + 7
	db #05,#04,#03,#02,#01,#87,#02,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#03
.lb79e
	db #0d,#0d,#0c,#0b,#0a,#09,#08,#87
.lb7a7 equ $ + 1
	db #02,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.lb7ba equ $ + 4
.lb7b7 equ $ + 1
	db #01,#0e,#87,#01,#0f,#87
	ld hl,lb7c5
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb7c5
	ld (bc),a
	ld e,h
	ld hl,lb596
	ld (hl),#00
	ld hl,lb9f0
	add a
	add l
	ld l,a
	jr nc,lb7d5
	inc h
.lb7d5
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbc38
.lb7dd
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb7dd
	ld a,(lbc39)
	ld (lbc46),a
	ld hl,(lbc3a)
	ld (lb5a8),hl
	ld a,(lbc3e)
	bit 3,a
	jr nz,lb7fa
	ld a,l
	ld (lb5ae),a
.lb7fa
	ld a,(lbc43)
	ld (lbc47),a
	ld a,(lbc45)
	ld (lbc4c),a
	ld a,(lbc42)
	ld hl,lbb90
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbc48),hl
	ld (lbc4a),hl
	ld a,(hl)
	ld (lb5b0),a
	ld hl,lb596
	inc (hl)
	ret
	ld hl,lb597
	ld (hl),#00
	ld hl,lb9f0
	add a
	add l
	ld l,a
	jr nc,lb830
	inc h
.lb830
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbc4d
.lb838
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb838
	ld a,(lbc4e)
	ld (lbc5b),a
	ld hl,(lbc4f)
	ld (lb5aa),hl
	ld a,(lbc53)
	bit 3,a
	jr nz,lb855
	ld a,l
	ld (lb5ae),a
.lb855
	ld a,(lbc58)
	ld (lbc5c),a
	ld a,(lbc5a)
	ld (lbc61),a
	ld a,(lbc57)
	ld hl,lbb90
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbc5d),hl
	ld (lbc5f),hl
	ld a,(hl)
	ld (lb5b1),a
	ld hl,lb597
	inc (hl)
	ret
.lb87d
	call lbc62
	ld a,(lb596)
	and a
	call nz,lb93e
	ld a,(lb597)
	and a
	ret z
	ld a,(lbc4d)
	and a
	jr nz,lb89c
	ld a,(lbc59)
	and a
	jr nz,lb89c
	ld (lb597),a
	ret
.lb89c
	dec a
	ld (lbc4d),a
	ld a,(lbc5b)
	and a
	jr nz,lb8d4
	ld a,(lbc59)
	and a
	jr nz,lb8b2
	ld a,(lbc56)
	and a
	jr z,lb916
.lb8b2
	dec a
	ld (lbc56),a
	ld a,(lbc4e)
	ld (lbc5b),a
	ld a,(lbc54)
	and a
	jr z,lb8c5
	ld a,(lbc7e)
.lb8c5
	ld b,a
	ld a,(lbc4f)
	add b
	ld (lb5aa),a
	ld a,(lbc50)
	add b
	ld (lb5ab),a
.lb8d4
	ld hl,lbc5b
	dec (hl)
	ld hl,lbc5a
	ld a,(hl)
	and a
	jr z,lb8e6
	ld hl,lbc61
	dec (hl)
	jr nz,lb909
	ld (hl),a
.lb8e6
	ld a,(lbc55)
	and a
	jr z,lb909
	jp p,lb8fc
	ld hl,(lb5aa)
	ld de,(lbc51)
	add hl,de
	ld (lb5aa),hl
	jr lb909
.lb8fc
	ld hl,(lb5aa)
	ld de,(lbc51)
	and a
	sbc hl,de
	ld (lb5aa),hl
.lb909
	ld a,(lbc53)
	bit 3,a
	jr nz,lb916
	ld a,(lb5aa)
	ld (lb5ae),a
.lb916
	ld a,(lbc5c)
	dec a
	ld (lbc5c),a
	jr nz,lb93d
	ld a,(lbc58)
	ld (lbc5c),a
	ld hl,(lbc5f)
	ld a,(hl)
	inc hl
	and a
	jp p,lb937
	cp #80
	jr nz,lb93d
	ld hl,(lbc5d)
	ld a,(hl)
	inc hl
.lb937
	ld (lbc5f),hl
	ld (lb5b1),a
.lb93d
	ret
.lb93e
	ld a,(lbc38)
	and a
	jr nz,lb94e
	ld a,(lbc44)
	and a
	jr nz,lb94e
	ld (lb596),a
	ret
.lb94e
	dec a
	ld (lbc38),a
	ld a,(lbc46)
	and a
	jr nz,lb986
	ld a,(lbc44)
	and a
	jr nz,lb964
	ld a,(lbc41)
	and a
	jr z,lb9c8
.lb964
	dec a
	ld (lbc41),a
	ld a,(lbc39)
	ld (lbc46),a
	ld a,(lbc3f)
	and a
	jr z,lb977
	ld a,(lbc7d)
.lb977
	ld b,a
	ld a,(lbc3a)
	add b
	ld (lb5a8),a
	ld a,(lbc3b)
	add b
	ld (lb5a9),a
.lb986
	ld hl,lbc46
	dec (hl)
	ld hl,lbc45
	ld a,(hl)
	and a
	jr z,lb998
	ld hl,lbc4c
	dec (hl)
	jr nz,lb9bb
	ld (hl),a
.lb998
	ld a,(lbc40)
	and a
	jr z,lb9bb
	jp p,lb9ae
	ld hl,(lb5a8)
	ld de,(lbc3c)
	add hl,de
	ld (lb5a8),hl
	jr lb9bb
.lb9ae
	ld hl,(lb5a8)
	ld de,(lbc3c)
	and a
	sbc hl,de
	ld (lb5a8),hl
.lb9bb
	ld a,(lbc3e)
	bit 3,a
	jr nz,lb9c8
	ld a,(lb5a8)
	ld (lb5ae),a
.lb9c8
	ld a,(lbc47)
	dec a
	ld (lbc47),a
	jr nz,lb9ef
	ld a,(lbc43)
	ld (lbc47),a
	ld hl,(lbc4a)
	ld a,(hl)
	inc hl
	and a
	jp p,lb9e9
	cp #80
	jr nz,lb9ef
	ld hl,(lbc48)
	ld a,(hl)
	inc hl
.lb9e9
	ld (lbc4a),hl
	ld (lb5b0),a
.lb9ef
	ret
.lb9f0
	dw lba24,lba32,lba40,lba4e
	dw lba5c,lba6a,lba78,lba86
	dw lbaa2,lbab0,lbabe,lba94
	dw lbacc,lbada,lbae8,lbaf6
	dw lbb04,lbb12,lbb20,lbb2e
	dw lbb3c,lbb4a,lbb58,lbb66
	dw lbb74,lbb82
.lba24
	db #0c,#03,#15,#00,#02,#00,#f7,#00
.lba32 equ $ + 6
	db #01,#63,#08,#01,#00,#00,#0a,#63
	db #86,#01,#20,#00,#f6,#00,#ff,#00
.lba40 equ $ + 4
	db #00,#01,#00,#02,#32,#63,#1f,#00
	db #01,#00,#f7,#00,#01,#63,#01,#02
.lba4e equ $ + 2
	db #00,#03,#07,#05,#41,#02,#14,#00
	db #f6,#00,#ff,#ff,#03,#01,#00,#00
.lba5c
	db #0a,#63,#0b,#00,#01,#00,#f6,#00
.lba6a equ $ + 6
	db #01,#00,#00,#01,#00,#00,#ff,#28
	db #1f,#00,#01,#00,#f6,#00,#01,#00
.lba78 equ $ + 4
	db #06,#02,#00,#03,#50,#03,#a0,#03
	db #44,#00,#fe,#00,#ff,#63,#07,#02
.lba86 equ $ + 2
	db #ff,#00,#ff,#01,#7f,#07,#16,#00
	db #f6,#00,#00,#ff,#07,#02,#ff,#00
.lba94
	db #07,#02,#0f,#00,#11,#00,#f7,#ff
.lbaa2 equ $ + 6
	db #01,#ff,#01,#01,#00,#00,#14,#02
	db #1f,#00,#10,#00,#f7,#00,#01,#63
.lbab0 equ $ + 4
	db #02,#02,#00,#00,#96,#ff,#10,#00
	db #01,#00,#fe,#00,#ff,#63,#01,#08
.lbabe equ $ + 2
	db #00,#02,#32,#63,#1f,#00,#11,#00
	db #f7,#00,#01,#63,#01,#02,#00,#02
.lbacc
	db #c8,#ff,#10,#00,#01,#04,#fe,#00
.lbada equ $ + 6
	db #ff,#63,#01,#08,#00,#00,#0c,#05
	db #c8,#00,#20,#00,#f6,#00,#ff,#63
.lbae8 equ $ + 4
	db #00,#01,#00,#00,#0c,#02,#0f,#00
	db #11,#00,#f7,#ff,#01,#ff,#00,#01
.lbaf6 equ $ + 2
	db #00,#00,#1e,#02,#40,#02,#0c,#00
	db #fe,#00,#ff,#63,#04,#01,#00,#00
.lbb04
	db #1e,#02,#c0,#00,#04,#00,#fe,#00
.lbb12 equ $ + 6
	db #ff,#63,#04,#01,#00,#00,#09,#63
	db #09,#05,#11,#00,#f6,#00,#ff,#00
.lbb20 equ $ + 4
	db #08,#01,#00,#00,#19,#05,#41,#02
	db #14,#00,#f6,#01,#ff,#ff,#01,#01
.lbb2e equ $ + 2
	db #00,#00,#46,#03,#08,#05,#30,#00
	db #f6,#00,#ff,#ff,#04,#02,#00,#00
.lbb3c
	db #50,#04,#00,#04,#16,#00,#f6,#01
.lbb4a equ $ + 6
	db #ff,#63,#00,#04,#00,#00,#0f,#03
	db #0f,#05,#30,#00,#f6,#00,#ff,#ff
.lbb58 equ $ + 4
	db #00,#01,#00,#00,#0f,#63,#f0,#00
	db #21,#00,#fe,#00,#ff,#63,#04,#01
.lbb66 equ $ + 2
	db #00,#00,#0b,#05,#0f,#00,#04,#00
	db #f6,#00,#01,#0a,#00,#01,#00,#00
.lbb74
	db #32,#0a,#0a,#00,#03,#00,#f6,#01
.lbb82 equ $ + 6
	db #ff,#0a,#00,#04,#00,#00,#3c,#06
	db #81,#00,#24,#00,#f6,#00,#ff,#63
.lbb90 equ $ + 4
	db #00,#04,#00,#00,#a4,#bb,#b4,#bb
	db #cd,#bb,#dd,#bb,#ec,#bb,#10,#bc
	db #1f,#bc,#21,#bc,#24,#bc,#32,#bc
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
	db #06,#08,#0a,#0b,#0c,#0d,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #ff,#06,#08,#0a,#0b,#0c,#0d,#0c
	db #0b,#0a,#08,#06,#04,#03,#02,#01
	db #ff,#0b,#0c,#0d,#0c,#0b,#0a,#09
	db #08,#08,#07,#07,#06,#06,#05,#ff
	db #0f,#0d,#0c,#0b,#0a,#0d,#0c,#0b
	db #0a,#09,#0b,#0a,#09,#08,#07,#09
	db #08,#07,#06,#05,#07,#06,#05,#04
	db #03,#05,#04,#03,#02,#01,#03,#02
	db #01,#02,#01,#ff,#0a,#0c,#0e,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#ff,#0d,#80,#0a,#09,#80
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#ff,#08,#09
.lbc3b equ $ + 7
.lbc3a equ $ + 6
.lbc39 equ $ + 5
.lbc38 equ $ + 4
	db #0a,#0b,#09,#80,#00,#00,#00,#00
.lbc43 equ $ + 7
.lbc42 equ $ + 6
.lbc41 equ $ + 5
.lbc40 equ $ + 4
.lbc3f equ $ + 3
.lbc3e equ $ + 2
.lbc3c
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbc4a equ $ + 6
.lbc48 equ $ + 4
.lbc47 equ $ + 3
.lbc46 equ $ + 2
.lbc45 equ $ + 1
.lbc44
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbc53 equ $ + 7
.lbc51 equ $ + 5
.lbc50 equ $ + 4
.lbc4f equ $ + 3
.lbc4e equ $ + 2
.lbc4d equ $ + 1
.lbc4c
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbc5b equ $ + 7
.lbc5a equ $ + 6
.lbc59 equ $ + 5
.lbc58 equ $ + 4
.lbc57 equ $ + 3
.lbc56 equ $ + 2
.lbc55 equ $ + 1
.lbc54
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbc61 equ $ + 5
.lbc5f equ $ + 3
.lbc5d equ $ + 1
.lbc5c
	db #00,#00,#00,#00,#00,#00
.lbc62
	ld a,(lbc7d)
	and #48
	adc #38
	sla a
	sla a
	ld hl,lbc80
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.lbc80 equ $ + 3
.lbc7e equ $ + 1
.lbc7d
	db #ff,#80,#1b,#34
.lbc81
	db #34
	dw lbc88,lbc94,lbc9e
;*** merged by Megachur
	db #58
	dw Level_1_lbc88,Level_1_lbca2,Level_1_lbcc2
	db #32
	dw Level_2_lbc8c,Level_2_lbc88,Level_2_lbc90
	db #32
	dw Level_3_lbc8e,Level_3_lbc88,Level_3_lbc94
	db #3e
	dw Level_4_lbc94,Level_4_lbc88,Level_4_lbc98
	db #2b
	dw Level_5_lbc8c,Level_5_lbc88,Level_5_lbcb8
;*** merged by Megachur
.lbc88
	dw lbca8,lbcde,lbdbb,lbcde
	dw lbdd2,#0000
.lbc94
	dw lbddd,lbe10,lbe10,lbffb
	dw #0000
.lbc9e
	dw lbf04,lbf3b,lbf3b,lbffb
	dw #0000
.lbca8
	db #89,#01,#95,#0d,#8a,#88,#01,#01
	db #d9,#e5,#0c,#e8,#13,#e2,#18,#da
	db #e5,#16,#07,#09,#0a,#95,#0e,#eb
	db #0c,#d2,#e2,#0c,#0c,#0c,#0c,#da
	db #f7,#0c,#d9,#eb,#0f,#11,#eb,#13
	db #e2,#d8,#90,#13,#13,#13,#13,#eb
.lbcde equ $ + 6
	db #13,#94,#4c,#95,#0f,#87,#d2,#e2
	db #0c,#e5,#0c,#e2,#0c,#0c,#e5,#0c
	db #e2,#0c,#0c,#e5,#0c,#e2,#0c,#0c
	db #e5,#0c,#e2,#0c,#0c,#e5,#0c,#e2
	db #0c,#0c,#e5,#0c,#e2,#0c,#da,#e5
	db #80,#17,#8f,#13,#d8,#80,#e8,#15
	db #e5,#15,#e2,#15,#d2,#e2,#0e,#e5
	db #0e,#e2,#0e,#0e,#e5,#0e,#e2,#0e
	db #0e,#e5,#0e,#e2,#0e,#0e,#e5,#0e
	db #e2,#0e,#11,#e5,#11,#e2,#11,#11
	db #e5,#11,#e2,#11,#11,#e5,#11,#e2
	db #11,#11,#e5,#11,#e2,#11,#da,#e5
	db #11,#80,#80,#11,#80,#10,#8f,#09
	db #d8,#80,#e8,#0e,#e5,#0e,#e2,#0e
	db #d2,#13,#e5,#13,#e2,#13,#13,#e5
	db #13,#e2,#13,#13,#e5,#13,#e2,#13
	db #13,#e5,#13,#e2,#13,#da,#eb,#0e
	db #10,#d2,#e2,#13,#e5,#13,#e2,#13
	db #13,#e5,#13,#e2,#13,#da,#eb,#0a
	db #0c,#0e,#10,#11,#10,#0f,#0e,#8f
	db #14,#d2,#e2,#14,#e5,#14,#e2,#14
	db #14,#e5,#14,#e2,#14,#da,#eb,#80
	db #12,#d2,#e2,#12,#e5,#12,#e2,#12
	db #12,#e5,#12,#e2,#12,#da,#eb,#80
	db #10,#d2,#e2,#10,#e5,#10,#e2,#10
	db #10,#e5,#10,#e2,#10,#da,#eb,#80
	db #0f,#0f,#0d,#e5,#0c,#16,#14,#13
	db #14,#13,#11,#16,#17,#16,#14,#0d
.lbdbb equ $ + 3
	db #0e,#0d,#87,#d2,#e2,#14,#e5,#14
	db #e2,#14,#14,#e5,#14,#e2,#14,#14
	db #e5,#14,#e2,#14,#14,#e5,#14,#e2
.lbdd2 equ $ + 2
	db #14,#87,#da,#f7,#30,#8f,#f7,#80
.lbddd equ $ + 5
	db #80,#91,#94,#36,#87,#8a,#81,#d9
	db #e5,#18,#e8,#1f,#e2,#24,#e9,#22
	db #d0,#e0,#21,#1f,#e3,#21,#1f,#1d
	db #d9,#e9,#1f,#90,#d6,#e0,#13,#13
	db #88,#01,#01,#db,#eb,#13,#91,#d9
	db #e5,#80,#18,#e8,#1f,#e2,#24,#eb
	db #29,#24,#da,#eb,#26,#f7,#8f,#87
.lbe10
	db #da,#eb,#24,#1f,#f5,#21,#81,#e0
	db #2b,#2d,#82,#e3,#28,#24,#81,#24
	db #82,#e9,#26,#81,#e0,#2b,#2d,#82
	db #e5,#26,#23,#26,#2f,#eb,#2b,#e9
	db #28,#81,#e0,#2f,#31,#82,#f7,#2a
	db #dc,#e2,#81,#26,#2b,#26,#2b,#30
	db #2d,#32,#37,#82,#da,#eb,#2d,#24
	db #f5,#2b,#81,#e0,#30,#32,#82,#e3
	db #2d,#29,#81,#29,#82,#e9,#2b,#81
	db #e0,#30,#32,#82,#e5,#2b,#28,#2d
	db #30,#eb,#30,#e9,#32,#81,#e0,#34
	db #36,#82,#f7,#2f,#8f,#d9,#e7,#2d
	db #81,#e1,#34,#32,#82,#e3,#30,#2b
	db #8f,#d2,#e7,#2b,#e1,#2b,#2b,#eb
	db #2b,#d9,#e7,#2e,#81,#e1,#34,#32
	db #82,#e3,#30,#2b,#8f,#d2,#e7,#26
	db #e1,#26,#26,#d4,#e3,#26,#2d,#2f
	db #81,#e7,#30,#82,#e1,#2f,#2d,#e3
	db #2f,#2b,#32,#32,#81,#32,#82,#e1
	db #30,#2e,#e3,#30,#30,#81,#35,#82
	db #e7,#32,#e1,#30,#2e,#eb,#2e,#f7
	db #8f,#e7,#30,#e1,#2e,#2c,#eb,#2c
	db #f7,#8f,#e7,#2e,#e1,#2c,#2a,#eb
	db #2a,#dc,#e3,#2e,#2c,#2a,#2a,#2c
	db #2e,#e2,#81,#25,#22,#27,#24,#29
	db #25,#2b,#27,#2c,#29,#2e,#2b,#30
	db #2c,#30,#2e,#d9,#82,#eb,#30,#27
	db #f3,#29,#81,#e1,#33,#35,#82,#e3
	db #33,#2f,#81,#2f,#82,#e7,#2c,#81
	db #e1,#36,#38,#82,#d0,#eb,#36,#da
.lbf04 equ $ + 4
	db #f7,#33,#8f,#87,#8a,#88,#01,#01
	db #d9,#e5,#18,#e8,#1f,#e2,#24,#e9
	db #22,#d0,#e0,#21,#1f,#e3,#21,#1f
	db #1d,#d9,#e9,#1f,#d6,#e0,#1f,#1f
	db #db,#eb,#1f,#d9,#e5,#80,#24,#e8
	db #2b,#e2,#30,#e9,#2e,#d0,#e0,#2d
	db #2b,#e3,#2d,#2b,#29,#da,#eb,#2b
.lbf3b equ $ + 3
	db #f7,#8f,#87,#da,#eb,#2b,#24,#f5
	db #2a,#e0,#2b,#2d,#e3,#2b,#28,#24
	db #e9,#2a,#e0,#2b,#2d,#e5,#2b,#26
	db #2b,#32,#eb,#32,#e9,#31,#e0,#2f
	db #31,#f7,#32,#dc,#e2,#26,#2b,#26
	db #2b,#30,#2d,#32,#37,#da,#eb,#30
	db #29,#f5,#2f,#e0,#30,#32,#e3,#30
	db #2d,#29,#e9,#2f,#e0,#30,#32,#e5
	db #30,#2b,#30,#37,#eb,#37,#e9,#36
	db #e0,#34,#36,#f7,#37,#8f,#d9,#e7
	db #35,#e1,#34,#32,#e3,#34,#32,#30
	db #f1,#32,#e5,#37,#e7,#35,#e1,#34
	db #32,#e3,#34,#32,#30,#f7,#32,#dc
	db #e7,#30,#e3,#34,#e7,#37,#e3,#39
	db #3a,#32,#35,#39,#30,#35,#d4,#e7
	db #35,#e1,#33,#32,#eb,#32,#f7,#8f
	db #e7,#33,#e1,#31,#30,#eb,#30,#f7
	db #8f,#e7,#31,#e1,#2f,#2e,#eb,#2e
	db #dc,#e3,#30,#2f,#2e,#2e,#2f,#31
	db #e2,#25,#22,#27,#24,#29,#25,#2b
	db #27,#2c,#29,#2e,#2b,#30,#2c,#30
	db #2e,#d9,#eb,#33,#2c,#f3,#32,#e1
	db #33,#35,#e3,#36,#33,#2f,#e7,#35
	db #e1,#36,#38,#d0,#eb,#39,#da,#f7
	db #38,#8f,#87
.lbffb
	db #f7,#80,#80,#87
;
; #bc81 - Back To The Future 2 Level 1 
;
.Level_1_lbc88
	dw Level_1_lbcce,Level_1_lbcd6,Level_1_lbcd6,Level_1_lbcd6
	dw Level_1_lbcd6,Level_1_lbcd6,Level_1_lbcd6,Level_1_lbcd6
	dw Level_1_lbcd6,Level_1_lbce9,Level_1_lbd49,Level_1_lbd64
.Level_1_lbca2 equ $ + 2
	dw #0000,Level_1_lbdb1,Level_1_lbdb9,Level_1_lbdb9
	dw Level_1_lbdb9,Level_1_lbdb9,Level_1_lbdb9,Level_1_lbdb9
	dw Level_1_lbdb9,Level_1_lbdb9,Level_1_lbdcc,Level_1_lbe19
	dw Level_1_lbe19,Level_1_lbe19,Level_1_lbe19,Level_1_lbe24
.Level_1_lbcc2 equ $ + 2
	dw #0000,Level_1_lbe89,Level_1_lbe91,Level_1_lbef9
	dw Level_1_lbf39,Level_1_lbf3f,#0000
.Level_1_lbcce
	db #8a,#88,#01,#01,#d8,#e8,#25,#87
.Level_1_lbcd6
	db #d6,#e2,#1e,#1e,#1e,#1e,#1e,#1e
	db #1e,#1e,#1e,#1e,#1e,#1e,#1e,#1e
.Level_1_lbce9 equ $ + 3
	db #1e,#1e,#87,#88,#01,#01,#d2,#e2
	db #0c,#e5,#0c,#e2,#0c,#0c,#e5,#0c
	db #e2,#0c,#0c,#e5,#0c,#e2,#0c,#0c
	db #e5,#0c,#e2,#0c,#0c,#e5,#0c,#e2
	db #0c,#0c,#e5,#0c,#e2,#0c,#da,#e5
	db #80,#17,#8f,#13,#d8,#80,#e8,#15
	db #e5,#15,#e2,#15,#d2,#e2,#0e,#e5
	db #0e,#e2,#0e,#0e,#e5,#0e,#e2,#0e
	db #0e,#e5,#0e,#e2,#0e,#0e,#e5,#0e
	db #e2,#0e,#11,#e5,#11,#e2,#11,#11
	db #e5,#11,#e2,#11,#11,#e5,#11,#e2
	db #11,#11,#e5,#11,#e2,#11,#d8,#eb
.Level_1_lbd49 equ $ + 3
	db #11,#11,#87,#d4,#e5,#95,#0c,#19
	db #19,#19,#19,#95,#0d,#19,#19,#19
	db #19,#95,#0e,#19,#19,#19,#19,#95
.Level_1_lbd64 equ $ + 6
	db #0f,#19,#19,#19,#19,#87,#89,#02
	db #da,#eb,#0e,#10,#d2,#e2,#13,#e5
	db #13,#e2,#13,#13,#e5,#13,#e2,#13
	db #da,#eb,#0a,#0c,#0e,#10,#11,#10
	db #0f,#0e,#8f,#14,#d2,#e2,#14,#e5
	db #14,#e2,#14,#14,#e5,#14,#e2,#14
	db #da,#eb,#80,#12,#d2,#e2,#12,#e5
	db #12,#e2,#12,#12,#e5,#12,#e2,#12
	db #da,#eb,#80,#10,#d2,#e2,#10,#e5
	db #10,#e2,#10,#10,#e5,#10,#e2,#10
.Level_1_lbdb1 equ $ + 3
	db #89,#00,#87,#8a,#88,#01,#01,#d8
.Level_1_lbdb9 equ $ + 3
	db #e8,#29,#87,#d3,#e2,#24,#27,#23
	db #26,#24,#27,#23,#26,#24,#27,#23
.Level_1_lbdcc equ $ + 6
	db #26,#24,#27,#23,#26,#87,#81,#88
	db #01,#01,#d8,#eb,#24,#1f,#f5,#21
	db #81,#e0,#2b,#2d,#82,#e3,#28,#24
	db #81,#24,#82,#e9,#26,#81,#e0,#2b
	db #2d,#82,#e5,#26,#23,#26,#2f,#eb
	db #2b,#e9,#28,#81,#e0,#2f,#31,#82
	db #f7,#2a,#dc,#e2,#81,#26,#2b,#26
	db #2b,#30,#2d,#32,#37,#82,#da,#eb
	db #2d,#24,#f5,#2b,#81,#e0,#30,#32
	db #82,#e3,#2d,#29,#81,#29,#82,#d8
.Level_1_lbe19 equ $ + 3
	db #eb,#2b,#87,#d3,#e2,#26,#28,#25
.Level_1_lbe24 equ $ + 6
	db #23,#26,#23,#25,#23,#87,#d9,#e7
	db #2d,#81,#e1,#34,#32,#82,#e3,#30
	db #2b,#8f,#d2,#e7,#2b,#e1,#2b,#2b
	db #eb,#2b,#d9,#e7,#2e,#81,#e1,#34
	db #32,#82,#e3,#30,#2b,#8f,#d2,#e7
	db #26,#e1,#26,#26,#d4,#e3,#26,#2d
	db #2f,#81,#e7,#30,#82,#e1,#2f,#2d
	db #e3,#2f,#2b,#32,#32,#81,#32,#82
	db #e1,#30,#2e,#e3,#30,#30,#81,#35
	db #82,#e7,#32,#e1,#30,#2e,#eb,#2e
	db #f7,#8f,#e7,#30,#e1,#2e,#2c,#eb
	db #2c,#f7,#8f,#e7,#2e,#e1,#2c,#2a
	db #eb,#2a,#dc,#e3,#2e,#2c,#2a,#2a
.Level_1_lbe89 equ $ + 3
	db #2c,#2e,#87,#8a,#88,#01,#01,#d8
.Level_1_lbe91 equ $ + 3
	db #e8,#2b,#87,#95,#0d,#e5,#80,#d6
	db #81,#e8,#42,#c9,#d6,#e5,#27,#24
	db #f4,#80,#d5,#e5,#1b,#18,#c0,#da
	db #82,#eb,#37,#ee,#30,#db,#e5,#36
	db #f7,#80,#c9,#d5,#e5,#1c,#19,#c0
	db #d6,#81,#eb,#46,#e8,#45,#c9,#e5
	db #27,#24,#f7,#80,#d5,#e5,#1b,#18
	db #c0,#dd,#81,#eb,#4f,#f7,#4e,#8f
	db #c9,#d5,#e5,#1b,#1a,#c0,#dd,#81
	db #eb,#4f,#f7,#4e,#95,#0e,#82,#d4
	db #e3,#32,#36,#ef,#3c,#c9,#d5,#e5
	db #1b,#1a,#c0,#82,#d4,#e2,#32,#36
	db #e7,#3c,#e0,#32,#35,#38,#3b,#da
.Level_1_lbef9 equ $ + 3
	db #f7,#3e,#87,#89,#02,#88,#01,#01
	db #d8,#eb,#2b,#24,#f5,#2a,#e0,#2b
	db #2d,#e3,#2b,#28,#24,#e9,#2a,#e0
	db #2b,#2d,#e5,#2b,#26,#2b,#32,#eb
	db #32,#e9,#31,#e0,#2f,#31,#f7,#32
	db #dc,#e2,#26,#2b,#26,#2b,#30,#2d
	db #32,#37,#da,#eb,#30,#29,#f5,#2f
	db #e0,#30,#32,#e3,#30,#2d,#29,#d8
.Level_1_lbf39 equ $ + 3
	db #eb,#2f,#87,#f7,#80,#80,#80,#80
.Level_1_lbf3f equ $ + 1
	db #87,#d9,#e7,#35,#e1,#34,#32,#e3
	db #34,#32,#30,#f1,#32,#e5,#37,#e7
	db #35,#e1,#34,#32,#e3,#34,#32,#30
	db #f7,#32,#dc,#e7,#30,#e3,#34,#e7
	db #37,#e3,#39,#3a,#32,#35,#39,#30
	db #35,#d4,#e7,#35,#e1,#33,#32,#eb
	db #32,#f7,#8f,#e7,#33,#e1,#31,#30
	db #eb,#30,#f7,#8f,#e7,#31,#e1,#2f
	db #2e,#eb,#2e,#dc,#e3,#30,#2f,#2e
	db #2e,#2f,#31,#87
;
; #bc81 - Back To The Future 2 Level 2
;	
.Level_2_lbc8c equ $ + 4
.Level_2_lbc88
	dw Level_2_lbc94,#0000,Level_2_lbce8,#0000
.Level_2_lbc90
	dw Level_2_lbce3,#0000
.Level_2_lbc94
	db #8a,#88,#01,#01,#da,#ff,#0d,#ef
	db #8f,#ff,#0d,#ef,#8f,#ff,#0d,#f6
	db #8f,#fb,#0d,#ff,#10,#ef,#8f,#ff
	db #10,#ef,#8f,#ef,#10,#f3,#14,#ff
	db #13,#ff,#80,#fd,#0d,#d7,#e7,#04
	db #da,#ff,#04,#da,#e5,#80,#14,#13
	db #11,#80,#14,#13,#11,#80,#11,#10
	db #0e,#80,#80,#e3,#13,#e0,#14,#15
	db #e5,#16,#80,#80,#e3,#16,#e0,#17
.Level_2_lbce3 equ $ + 7
	db #18,#e5,#19,#ff,#da,#07,#87,#88
.Level_2_lbce8 equ $ + 4
	db #01,#01,#95,#0d,#8a,#d4,#e5,#80
	db #e0,#17,#18,#e9,#19,#e1,#1a,#80
	db #d5,#0e,#0d,#01,#01,#80,#ef,#80
	db #d4,#e5,#80,#e0,#17,#18,#e9,#19
	db #e2,#1b,#95,#0e,#e1,#1a,#80,#d5
	db #0e,#0d,#01,#01,#80,#ec,#80,#d4
	db #e5,#80,#e0,#17,#18,#e6,#19,#e0
	db #1c,#e9,#1d,#e1,#1c,#e6,#1d,#e1
	db #1c,#80,#d5,#0e,#0d,#01,#01,#d4
	db #e3,#80,#1a,#e1,#19,#80,#d5,#0e
	db #0d,#01,#01,#ef,#80,#d4,#e5,#80
	db #e0,#1a,#1b,#e9,#1c,#e1,#1d,#80
	db #d5,#11,#10,#04,#04,#80,#ef,#80
	db #d4,#e5,#80,#e0,#1a,#1b,#e9,#1c
	db #e2,#1e,#e1,#1d,#80,#d5,#11,#10
	db #04,#04,#80,#ec,#80,#d4,#e5,#80
	db #e0,#1a,#1b,#e5,#1c,#e0,#1e,#1f
	db #eb,#20,#e1,#22,#e5,#23,#e1,#22
	db #d5,#11,#10,#04,#04,#80,#d4,#e3
	db #20,#e1,#1f,#e5,#80,#e1,#d5,#11
	db #10,#04,#04,#d0,#e0,#40,#3b,#fd
	db #35,#8b,#d2,#e5,#3f,#f7,#80
	
; Back To The Future 2 Level 3
	
;org #bc81
.Level_3_lbc8e equ $ + 6
.Level_3_lbc88
	dw Level_3_lbc9a,Level_3_lbce1,#0000,Level_3_lbcec
.Level_3_lbc94 equ $ + 4
	dw Level_3_lbd35,#0000,Level_3_lbd5e,Level_3_lbdbb
	dw #0000
.Level_3_lbc9a
	db #89,#00,#95,#0c,#8a,#88,#01,#01
	db #d7,#f7,#37,#8f,#ff,#38,#37,#8f
	db #e7,#80,#f7,#37,#8f,#ff,#38,#37
	db #35,#e7,#80,#f7,#3a,#8f,#ff,#3b
	db #3a,#8f,#95,#0d,#d0,#e1,#1f,#ef
	db #20,#e1,#1e,#95,#0c,#ff,#1f,#8f
	db #8f,#8f,#f7,#8f,#95,#0d,#d0,#e1
	db #1f,#eb,#20,#e1,#1e,#ff,#1f,#8f
.Level_3_lbce1 equ $ + 7
	db #8f,#8f,#f7,#8f,#95,#0e,#da,#ff
	db #11,#ef,#8f,#ff,#11,#ef,#8f,#89
.Level_3_lbcec equ $ + 2
	db #01,#87,#8a,#88,#01,#01,#d7,#f7
	db #80,#44,#ff,#8f,#8f,#8f,#e7,#80
	db #f7,#80,#44,#ff,#8f,#8f,#8f,#e7
	db #80,#f7,#80,#47,#ff,#8f,#8f,#8f
	db #d0,#e1,#2e,#ef,#2c,#e1,#2d,#ff
	db #2b,#f7,#8f,#d7,#ef,#31,#32,#2e
	db #2f,#2b,#d0,#2c,#d0,#e1,#2e,#eb
	db #2c,#e1,#2d,#ff,#2b,#f7,#8f,#d7
	db #ef,#19,#1a,#16,#17,#13,#d0,#14
.Level_3_lbd35 equ $ + 3
	db #88,#01,#01,#d4,#e5,#80,#e0,#1b
	db #1c,#e9,#1d,#e1,#1e,#80,#d5,#12
	db #11,#05,#05,#80,#ef,#80,#d4,#e5
	db #80,#e0,#1b,#1c,#e9,#1d,#e2,#1f
	db #e1,#1e,#80,#d5,#12,#11,#05,#05
.Level_3_lbd5e equ $ + 4
	db #80,#ec,#80,#87,#8a,#88,#01,#01
	db #d7,#ff,#80,#80,#e7,#2b,#31,#ef
	db #32,#f7,#31,#2f,#e7,#80,#ff,#80
	db #80,#e7,#2b,#31,#ef,#32,#f7,#31
	db #2f,#e7,#80,#ff,#80,#80,#e7,#2e
	db #34,#ef,#35,#f7,#34,#32,#f3,#80
	db #ff,#80,#d9,#e7,#38,#3d,#ef,#3e
	db #e7,#3d,#37,#3d,#3b,#3a,#34,#3a
	db #38,#37,#38,#d0,#37,#d0,#e1,#3a
	db #eb,#38,#e1,#39,#ff,#37,#d9,#e7
	db #20,#25,#ef,#26,#e7,#25,#1f,#25
	db #23,#22,#1c,#22,#20,#1f,#20,#d0
.Level_3_lbdbb equ $ + 1
	db #1f,#d4,#e5,#80,#e0,#27,#28,#e9
	db #29,#e1,#2a,#80,#d5,#1e,#1d,#11
	db #11,#80,#ef,#80,#d4,#e5,#80,#e0
	db #27,#28,#e9,#29,#e2,#2b,#e1,#2a
	db #80,#d5,#1e,#1d,#11,#11,#80,#ec
	db #80,#87
;
; #bc81 - Back To The Future 2 Level 4
;	
.Level_4_lbc88
	dw Level_4_lbca6,Level_4_lbcbd,Level_4_lbcb4,Level_4_lbcc6
.Level_4_lbc94 equ $ + 4
	dw Level_4_lbcb4,#0000,Level_4_lbccf,#0000
.Level_4_lbc98
	dw Level_4_lbd55,Level_4_lbd5b,Level_4_lbe21,Level_4_lbd55
	dw Level_4_lbd5b,Level_4_lbe1e,#0000
.Level_4_lbca6
	db #8a,#88,#01,#01,#d2,#e3,#05,#09
.Level_4_lbcb4 equ $ + 6
	db #0c,#0e,#11,#0e,#0c,#09,#05,#09
.Level_4_lbcbd equ $ + 7
	db #0c,#0e,#0f,#0e,#0c,#0e,#87,#0a
	db #0e,#11,#13,#14,#13,#11,#0e,#87
.Level_4_lbcc6
	db #0c,#10,#13,#15,#16,#15,#13,#10
.Level_4_lbccf equ $ + 1
	db #87,#8a,#d1,#90,#e1,#ca,#2d,#2d
	db #8d,#2d,#2d,#2d,#2d,#8d,#2d,#2c
	db #2d,#2d,#8d,#2d,#2d,#2d,#2d,#8d
	db #2d,#2d,#30,#30,#8d,#30,#30,#30
	db #30,#8d,#30,#2f,#30,#30,#8d,#30
	db #30,#30,#30,#8d,#30,#30,#32,#32
	db #8d,#32,#32,#32,#32,#8d,#32,#32
	db #35,#35,#8d,#35,#35,#35,#35,#8d
	db #35,#35,#2d,#2d,#8d,#2d,#2d,#2d
	db #2d,#8d,#2d,#2d,#30,#30,#8d,#30
	db #30,#30,#30,#8d,#30,#2f,#cc,#43
	db #43,#ca,#8d,#43,#43,#40,#40,#cb
	db #8d,#3c,#3c,#cc,#37,#37,#ca,#8d
	db #37,#37,#34,#34,#cb,#8d,#30,#30
	db #cb,#35,#35,#8d,#35,#35,#35,#35
	db #8d,#35,#35,#cc,#30,#30,#8d,#30
.Level_4_lbd55 equ $ + 7
	db #30,#30,#30,#8d,#30,#30,#87,#8a
.Level_4_lbd5b equ $ + 5
	db #88,#01,#01,#92,#00,#d6,#e1,#24
	db #dd,#24,#22,#21,#22,#e3,#24,#24
	db #e1,#24,#22,#21,#22,#e3,#24,#27
	db #e1,#27,#26,#24,#26,#24,#26,#e3
	db #29,#20,#1d,#db,#e3,#20,#dd,#22
	db #e1,#20,#22,#20,#22,#20,#22,#db
	db #eb,#24,#e3,#27,#dd,#22,#e1,#21
	db #22,#21,#22,#21,#22,#db,#ef,#24
	db #dd,#e3,#24,#e1,#21,#22,#21,#22
	db #21,#22,#e3,#24,#28,#29,#e5,#2b
	db #db,#e3,#29,#20,#e5,#1d,#e3,#29
	db #20,#d5,#e1,#20,#db,#e7,#1d,#d5
	db #e1,#1d,#1d,#21,#21,#24,#24,#26
	db #db,#f1,#29,#e0,#2c,#2b,#e1,#29
	db #e0,#2c,#2b,#e1,#29,#e0,#2c,#2b
	db #e1,#29,#30,#f1,#35,#dd,#e0,#38
	db #37,#e1,#35,#e0,#38,#37,#e1,#35
	db #e0,#38,#37,#e1,#35,#38,#f1,#3a
	db #db,#e0,#2c,#2b,#e1,#29,#e0,#2c
	db #2b,#e1,#29,#e0,#2c,#2b,#e1,#29
	db #30,#f1,#db,#35,#d5,#e1,#24,#21
	db #22,#21,#22,#21,#22,#e3,#24,#28
	db #29,#e5,#2b,#db,#e3,#29,#20,#e5
	db #1d,#e3,#29,#20,#d5,#e1,#20,#db
	db #e7,#1d,#92,#0c,#88,#01,#01,#87
.Level_4_lbe1e
	db #89,#00,#87
.Level_4_lbe21
	db #89,#01,#87,#00
;
; #bc81 - Back To The Future 2 Level 5
;
.Level_5_lbc8c equ $ + 4
.Level_5_lbc88
	dw Level_5_lbcbc,#0000,Level_5_lbd15,Level_5_lbd15
	dw Level_5_lbd15,Level_5_lbd15,Level_5_lbd2e,Level_5_lbd15
	dw Level_5_lbd15,Level_5_lbd15,Level_5_lbd15,Level_5_lbd15
	dw Level_5_lbd15,Level_5_lbd15,Level_5_lbd15,Level_5_lbd15
	dw Level_5_lbd15,Level_5_lbd15,Level_5_lbd15,Level_5_lbd15
	dw Level_5_lbd15,Level_5_lbd15,Level_5_lbd15,#0000
.Level_5_lbcb8
	dw Level_5_lbd45,#0000
.Level_5_lbcbc
	db #8a,#88,#01,#01,#db,#e5,#13,#13
	db #13,#13,#13,#13,#13,#13,#13,#13
	db #13,#13,#13,#13,#13,#13,#13,#13
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
.Level_5_lbd15 equ $ + 1
	db #87,#88,#01,#01,#e0,#d1,#8b,#27
	db #27,#27,#8a,#90,#07,#91,#80,#80
	db #8b,#27,#27,#27,#8a,#90,#07,#91
.Level_5_lbd2e equ $ + 2
	db #80,#80,#8b,#27,#27,#27,#8a,#90
	db #07,#91,#80,#80,#8b,#27,#27,#27
	db #8a,#d2,#90,#07,#07,#07,#91,#d1
.Level_5_lbd45 equ $ + 1
	db #87,#95,#0e,#8a,#88,#01,#01,#db
	db #e5,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#95,#0f,#07,#de,#eb,#1c
	db #da,#1c,#95,#0e,#d4,#e4,#29,#e0
	db #28,#eb,#29,#e5,#2b,#2c,#2b,#29
	db #d0,#28,#d4,#e4,#29,#e0,#28,#ea
	db #29,#df,#e0,#1a,#e4,#1c,#e0,#1a
	db #da,#eb,#19,#d9,#e5,#37,#38,#3a
	db #37,#3b,#35,#80,#d7,#eb,#34,#d9
	db #e5,#35,#37,#34,#38,#32,#de,#eb
	db #1c,#da,#1c,#d4,#e4,#29,#e0,#28
	db #eb,#29,#e5,#2b,#2c,#2b,#29,#d0
	db #28,#d4,#e4,#29,#e0,#28,#ea,#29
	db #df,#e0,#17,#e4,#1c,#e0,#17,#da
	db #eb,#16,#95,#0d,#d9,#e5,#34,#35
	db #37,#34,#38,#32,#80,#d7,#eb,#3d
	db #d9,#e5,#3e,#40,#3d,#41,#3b,#87
;
; Back To The Future 2 end
; music end same as first intro music !
;
.music_info
	db "Back To The Future 2 (1990)(Image Works)(David Whittaker)",0
	db "All levels music and main theme merged by Megachur",0

	read "music_end.asm"
