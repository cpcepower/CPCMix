; Music of Gilbert Escape from Drill (1989)(Enigma Variations)(David Whittaker)()
; Ripped by Megachur the 14/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GILBEEFD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #af63
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.init_music
;
	push af
	call lb1b1
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,lbc50
	add hl,bc
	ld a,(hl)
	ld (lb055),a
	ld (lb4d0),a
	inc hl
	ld ix,lafd4
	ld c,#22
	ld a,#03
.laf83
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
	ld hl,lb5ba
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
	jr nz,laf83
	ld (lb3ea),a
	dec a
	ld (lb4d1),a
	ld (lb4cb),a
	ld a,#0f
	ld (lb4cf),a
	ret
.lafd4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.laff6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.lb018
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(lb4cb)
	ld hl,lb4cc
	or (hl)
	inc hl
	or (hl)
	inc hl
	or (hl)
	ret z
	call lb7e5
	ld a,(lb4cb)
	and a
	jr z,lb0a0
.lb050 equ $ + 1
	ld a,#00
	ld (lb09c),a
.lb055 equ $ + 1
	ld a,#01
	ld hl,lb4d1
	add (hl)
	ld (hl),a
	jr nc,lb074
	ld b,#00
	ld ix,lafd4
	call lb2e0
	ld ix,laff6
	call lb2e0
	ld ix,lb018
	call lb2e0
.lb074
	ld ix,lafd4
	call lb3b7
	ld (lb4d2),hl
	ld (lb4da),a
	ld ix,laff6
	call lb3b7
	ld (lb4d4),hl
	ld (lb4db),a
	ld ix,lb018
	call lb3b7
	ld (lb4d6),hl
	ld (lb4dc),a
.lb09c equ $ + 1
	ld a,#00
	ld (lb4d8),a
.lb0a0
	ld a,(lb4cb)
	and a
	jr nz,lb0b6
	ld (lb4da),a
	ld (lb4db),a
	ld (lb4dc),a
	ld a,#3f
	ld (lb4d9),a
	jr lb0de
.lb0b6
	ld a,(lb4cf)
	and #0f
	xor #0f
	jr z,lb0de
	ld b,a
	ld a,(lb4da)
	sub b
	jr nc,lb0c7
	xor a
.lb0c7
	ld (lb4da),a
	ld a,(lb4db)
	sub b
	jr nc,lb0d1
	xor a
.lb0d1
	ld (lb4db),a
	ld a,(lb4dc)
	sub b
	jr nc,lb0db
	xor a
.lb0db
	ld (lb4dc),a
.lb0df equ $ + 1
.lb0de
	ld a,#ff
	xor #ff
	ld (lb0df),a
	ld a,(lb4cc)
	and a
	jr z,lb10d
	ld hl,(lb4df)
	ld (lb4d2),hl
	ld a,(lbbf8)
	ld b,a
	bit 3,a
	jr nz,lb0ff
	ld a,(lb4e5)
	ld (lb4d8),a
.lb0ff
	ld hl,lb4d9
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(lb4e7)
	ld (lb4da),a
.lb10d
	ld a,(lb4cd)
	and a
	jr z,lb137
	ld hl,(lb4e1)
	ld (lb4d4),hl
	ld a,(lbc0d)
	ld b,a
	bit 3,a
	jr nz,lb127
	ld a,(lb4e5)
	ld (lb4d8),a
.lb127
	ld hl,lb4d9
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(lb4e8)
	ld (lb4db),a
.lb137
	ld a,(lb4ce)
	and a
	jr z,lb163
	ld hl,(lb4e3)
	ld (lb4d6),hl
	ld a,(lbc22)
	ld b,a
	bit 3,a
	jr nz,lb151
	ld a,(lb4e5)
.lb150 equ $ + 2
	ld (lb4d8),a
.lb151
	ld hl,lb4d9
	ld a,(hl)
	or #24
	rlc b
	rlc b
	and b
	ld (hl),a
	ld a,(lb4e9)
	ld (lb4dc),a
.lb163
	ld hl,lb4dc
	ld d,#0a
.lb168
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
	jp p,lb168
	ret
.lb189
	ld de,#0a00
.lb18c
	call lb196
	dec d
	jp p,lb18c
	ld de,#073f
.lb196
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
.stop_music
.lb1b1
;
	xor a
	ld (lb4cb),a
	call lb1c3
	xor a
	ld (lb4da),a
	ld (lb4db),a
	ld (lb4dc),a
	ret
.lb1c3
	xor a
	ld (lb4cc),a
	ld (lb4cd),a
	ld (lb4ce),a
	jp lb189
	db #fa,#de,#d7,#e1,#a4,#e9,#e4,#3b
	db #c4,#b5,#7a,#64,#8c,#e7,#30,#f4
	db #f5,#fa,#b3,#13,#0a,#01,#1a,#13
	ld (lb4cf),a
	jp lb2ee
	ld a,(de)
	inc de
	ld (lb055),a
	jp lb2ee
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
	jp lb2ee
	pop hl
	jp lb1b1
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
	jr nz,lb234
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb234
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb2ee
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,lb496
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb2ee
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,lb496
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb2ee
	ld hl,lb496
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr lb2ee
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lb2ee
	ld a,(de)
	inc de
	ld (lb3ea),a
	jr lb2ee
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr lb2ee
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr lb2ee
	ld (ix+#1d),b
	jr lb2ee
	ld (ix+#1d),#c0
	jr lb2ee
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lb2ee
	set 1,(ix+#00)
	jr lb2ee
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb31d
	jr lb319
	ld (ix+#1f),#ff
	jr lb2ee
	ld (ix+#1f),b
	jr lb2ee
.lb2e0
	dec (ix+#10)
	jr nz,lb35b
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb2ee
	ld a,(de)
	inc de
	and a
	jp m,lb36c
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb300
	ld (lb050),a
.lb300
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.lb319
	set 5,(ix+#00)
.lb31d
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,lb35a
	ld a,(lb4cc)
	and a
	jr z,lb33c
	ld a,(lbbf8)
	bit 3,a
	jr z,lb35a
.lb33c
	ld a,(lb4cd)
	and a
	jr z,lb349
	ld a,(lbc0d)
	bit 3,a
	jr z,lb35a
.lb349
	ld a,(lb4ce)
	and a
	jr z,lb356
	ld a,(lbc22)
	bit 3,a
	jr z,lb35a
.lb356
	ld (ix+#1f),#ff
.lb35a
	ret
.lb35b
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lb368
	inc (ix+#12)
	ret
.lb368
	dec (ix+#12)
	ret
.lb36c
	cp #c0
	jr c,lb3af
	add #20
	jr c,lb390
	add #10
	jr c,lb397
	add #10
	ld c,a
	ld hl,lb5ab
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp lb2ee
.lb390
	inc a
	ld (ix+#11),a
	jp lb2ee
.lb397
	ld hl,lb5e4
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
	jp lb2ee
.lb3af
	ld hl,lb150
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb3b7
	ld c,(ix+#00)
	bit 5,c
	jr z,lb3e9
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,lb3e3
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,lb3e3
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.lb3e3
	ld a,(ix+#18)
	ld (ix+#13),a
.lb3ea equ $ + 1
.lb3e9
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,lb406
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.lb406
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lb4eb
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb467
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb430
	bit 0,c
	jr nz,lb44e
.lb430
	bit 5,l
	jr nz,lb440
	sub (ix+#1b)
	jr nc,lb44b
	set 5,(ix+#1d)
	sub a
	jr lb44b
.lb440
	add (ix+#1b)
	cp b
	jr c,lb44b
	res 5,(ix+#1d)
	ld a,b
.lb44b
	ld (ix+#1c),a
.lb44e
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb459
	dec d
.lb459
	add #a0
	jr c,lb465
.lb45d
	sla e
	rl d
	add #18
	jr nc,lb45d
.lb465
	add hl,de
	ex de,hl
.lb467
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lb492
	ld b,(ix+#0e)
	djnz lb48f
	ld c,(ix+#0d)
	bit 7,c
	jr z,lb47e
	dec b
.lb47e
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lb492
.lb48f
	ld (ix+#0e),b
.lb492
	cpl
	and #03
.lb496 equ $ + 1
	ld a,#38
	jr nz,lb4a3
	ld a,(lb050)
	xor #08
	ld (lb09c),a
	ld a,#07
.lb4a3
	ld hl,lb4d9
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,lb4c6
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (lb09c),a
.lb4c6
	ex de,hl
	ld a,(ix+#13)
	ret
.lb4d2 equ $ + 7
.lb4d1 equ $ + 6
.lb4d0 equ $ + 5
.lb4cf equ $ + 4
.lb4ce equ $ + 3
.lb4cd equ $ + 2
.lb4cc equ $ + 1
.lb4cb
.music_end
	db #00,#00,#00,#00,#0f,#00,#00,#00
.lb4da equ $ + 7
.lb4d9 equ $ + 6
.lb4d8 equ $ + 5
.lb4d6 equ $ + 3
.lb4d4 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#3f,#00
.lb4e2 equ $ + 7
.lb4e1 equ $ + 6
.lb4e0 equ $ + 5
.lb4df equ $ + 4
.lb4dc equ $ + 1
.lb4db
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb4e9 equ $ + 6
.lb4e8 equ $ + 5
.lb4e7 equ $ + 4
.lb4e5 equ $ + 2
.lb4e4 equ $ + 1
.lb4e3
	db #00,#00,#00,#3f,#00,#0f,#00,#00
.lb4eb
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
.lb5ab
	db #0f,#0f,#11,#13,#15,#1c,#1e,#20
.lb5ba equ $ + 7
	db #22,#24,#25,#26,#27,#28,#29,#80
	db #00,#03,#87,#00,#04,#87,#04,#07
	db #8a,#0c,#00,#00,#00,#00,#00,#00
	db #80,#07,#0c,#8f,#07,#0c,#90,#03
	db #07,#8c,#04,#07,#8c,#00,#8c,#00
	db #83,#00,#84,#00,#85,#00,#87,#00
	db #81
.lb5e4
	dw lb605,lb60f,lb618,lb62a
	dw lb63c,lb64d,lb658,lb66d
	dw lb676,lb687,lb698,lb6ac
	dw lb6bd,lb6c0,lb6c3,lb6c6
.lb605 equ $ + 1
	db #01,#0f,#0d,#0b,#09,#07,#05,#03
.lb60f equ $ + 3
	db #01,#87,#01,#0d,#0b,#09,#07,#05
.lb618 equ $ + 4
	db #03,#01,#87,#01,#0f,#0e,#0d,#0b
	db #0d,#0c,#0a,#09,#0b,#0a,#08,#07
.lb62a equ $ + 6
	db #09,#08,#06,#05,#87,#01,#0f,#0f
	db #0d,#0b,#0d,#0c,#0a,#09,#0b,#0a
	db #08,#07,#09,#08,#06,#05,#87,#01
.lb63c
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.lb64d equ $ + 1
	db #01,#0e,#0d,#0c,#0b,#0a,#09,#08
.lb658 equ $ + 4
	db #07,#06,#87,#01,#0e,#0d,#0c,#0b
	db #0a,#09,#01,#08,#01,#07,#01,#06
	db #01,#05,#01,#04,#01,#02,#01,#87
.lb66d equ $ + 1
	db #04,#08,#09,#0a,#0b,#0c,#0d,#0e
.lb676 equ $ + 2
	db #87,#05,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.lb687 equ $ + 3
	db #01,#87,#08,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.lb698 equ $ + 4
	db #02,#01,#87,#02,#0c,#0d,#0e,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#01
.lb6ac
	db #0c,#0d,#0f,#0e,#0c,#0b,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.lb6c3 equ $ + 7
.lb6c0 equ $ + 4
.lb6bd equ $ + 1
	db #01,#0a,#87,#01,#0b,#87,#01,#0f
.lb6c6 equ $ + 2
	db #87,#01,#0c,#87
	ld hl,lb6d1
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb6d1
	inc bc
	ld e,l
	or a
	ld hl,lb4cc
	ld (hl),#00
	ld hl,lba11
	add a
	add l
	ld l,a
	jr nc,lb6e2
	inc h
.lb6e2
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbbf2
.lb6ea
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb6ea
	ld a,(lbbf3)
	ld (lbc00),a
	ld hl,(lbbf4)
	ld (lb4df),hl
	ld a,(lbbf8)
	bit 3,a
	jr nz,lb707
	ld a,l
	ld (lb4e5),a
.lb707
	ld a,(lbbfd)
	ld (lbc01),a
	ld a,(lbbff)
	ld (lbc06),a
	ld a,(lbbfc)
	ld hl,lbb71
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbc02),hl
	ld (lbc04),hl
	ld a,(hl)
	ld (lb4e7),a
	ld hl,lb4cc
	inc (hl)
	ret
	ld hl,lb4cd
	ld (hl),#00
	ld hl,lba11
	add a
	add l
	ld l,a
	jr nc,lb73d
	inc h
.lb73d
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbc07
.lb745
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb745
	ld a,(lbc08)
	ld (lbc15),a
	ld hl,(lbc09)
	ld (lb4e1),hl
	ld a,(lbc0d)
	bit 3,a
	jr nz,lb762
	ld a,l
	ld (lb4e5),a
.lb762
	ld a,(lbc12)
	ld (lbc16),a
	ld a,(lbc14)
	ld (lbc1b),a
	ld a,(lbc11)
	ld hl,lbb71
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbc17),hl
	ld (lbc19),hl
	ld a,(hl)
	ld (lb4e8),a
	ld hl,lb4cd
	inc (hl)
	ret
	ld hl,lb4ce
	ld (hl),#00
	ld hl,lba11
	add a
	add l
	ld l,a
	jr nc,lb798
	inc h
.lb798
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbc1c
.lb7a0
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb7a0
	ld a,(lbc1d)
	ld (lbc2a),a
	ld hl,(lbc1e)
	ld (lb4e3),hl
	ld a,(lbc22)
	bit 3,a
	jr nz,lb7bd
	ld a,l
	ld (lb4e5),a
.lb7bd
	ld a,(lbc27)
	ld (lbc2b),a
	ld a,(lbc29)
	ld (lbc30),a
	ld a,(lbc26)
	ld hl,lbb71
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbc2c),hl
	ld (lbc2e),hl
	ld a,(hl)
	ld (lb4e9),a
	ld hl,lb4ce
	inc (hl)
	ret
.lb7e5
	call lbc31
	ld a,(lb4cc)
	and a
	call nz,lb8ad
	ld a,(lb4cd)
	and a
	call nz,lb95f
	ld a,(lb4ce)
	and a
	ret z
	ld a,(lbc1c)
	and a
	jr nz,lb80b
	ld a,(lbc28)
	and a
	jr nz,lb80b
	ld (lb4ce),a
	ret
.lb80b
	dec a
	ld (lbc1c),a
	ld a,(lbc2a)
	and a
	jr nz,lb843
	ld a,(lbc28)
	and a
	jr nz,lb821
	ld a,(lbc25)
	and a
	jr z,lb885
.lb821
	dec a
	ld (lbc25),a
	ld a,(lbc1d)
	ld (lbc2a),a
	ld a,(lbc23)
	and a
	jr z,lb834
	ld a,(lbc4e)
.lb834
	ld b,a
	ld a,(lbc1e)
	add b
	ld (lb4e3),a
	ld a,(lbc1f)
	add b
	ld (lb4e4),a
.lb843
	ld hl,lbc2a
	dec (hl)
	ld hl,lbc29
	ld a,(hl)
	and a
	jr z,lb855
	ld hl,lbc30
	dec (hl)
	jr nz,lb878
	ld (hl),a
.lb855
	ld a,(lbc24)
	and a
	jr z,lb878
	jp p,lb86b
	ld hl,(lb4e3)
	ld de,(lbc20)
	add hl,de
	ld (lb4e3),hl
	jr lb878
.lb86b
	ld hl,(lb4e3)
	ld de,(lbc20)
	and a
	sbc hl,de
	ld (lb4e3),hl
.lb878
	ld a,(lbc22)
	bit 3,a
	jr nz,lb885
	ld a,(lb4e3)
	ld (lb4e5),a
.lb885
	ld a,(lbc2b)
	dec a
	ld (lbc2b),a
	jr nz,lb8ac
	ld a,(lbc27)
	ld (lbc2b),a
	ld hl,(lbc2e)
	ld a,(hl)
	inc hl
	and a
	jp p,lb8a6
	cp #80
	jr nz,lb8ac
	ld hl,(lbc2c)
	ld a,(hl)
	inc hl
.lb8a6
	ld (lbc2e),hl
	ld (lb4e9),a
.lb8ac
	ret
.lb8ad
	ld a,(lbbf2)
	and a
	jr nz,lb8bd
	ld a,(lbbfe)
	and a
	jr nz,lb8bd
	ld (lb4cc),a
	ret
.lb8bd
	dec a
	ld (lbbf2),a
	ld a,(lbc00)
	and a
	jr nz,lb8f5
	ld a,(lbbfe)
	and a
	jr nz,lb8d3
	ld a,(lbbfb)
	and a
	jr z,lb937
.lb8d3
	dec a
	ld (lbbfb),a
	ld a,(lbbf3)
	ld (lbc00),a
	ld a,(lbbf9)
	and a
	jr z,lb8e6
	ld a,(lbc4c)
.lb8e6
	ld b,a
	ld a,(lbbf4)
	add b
	ld (lb4df),a
	ld a,(lbbf5)
	add b
	ld (lb4e0),a
.lb8f5
	ld hl,lbc00
	dec (hl)
	ld hl,lbbff
	ld a,(hl)
	and a
	jr z,lb907
	ld hl,lbc06
	dec (hl)
	jr nz,lb92a
	ld (hl),a
.lb907
	ld a,(lbbfa)
	and a
	jr z,lb92a
	jp p,lb91d
	ld hl,(lb4df)
	ld de,(lbbf6)
	add hl,de
	ld (lb4df),hl
	jr lb92a
.lb91d
	ld hl,(lb4df)
	ld de,(lbbf6)
	and a
	sbc hl,de
	ld (lb4df),hl
.lb92a
	ld a,(lbbf8)
	bit 3,a
	jr nz,lb937
	ld a,(lb4df)
	ld (lb4e5),a
.lb937
	ld a,(lbc01)
	dec a
	ld (lbc01),a
	jr nz,lb95e
	ld a,(lbbfd)
	ld (lbc01),a
	ld hl,(lbc04)
	ld a,(hl)
	inc hl
	and a
	jp p,lb958
	cp #80
	jr nz,lb95e
	ld hl,(lbc02)
	ld a,(hl)
	inc hl
.lb958
	ld (lbc04),hl
	ld (lb4e7),a
.lb95e
	ret
.lb95f
	ld a,(lbc07)
	and a
	jr nz,lb96f
	ld a,(lbc13)
	and a
	jr nz,lb96f
	ld (lb4cd),a
	ret
.lb96f
	dec a
	ld (lbc07),a
	ld a,(lbc15)
	and a
	jr nz,lb9a7
	ld a,(lbc13)
	and a
	jr nz,lb985
	ld a,(lbc10)
	and a
	jr z,lb9e9
.lb985
	dec a
	ld (lbc10),a
	ld a,(lbc08)
	ld (lbc15),a
	ld a,(lbc0e)
	and a
	jr z,lb998
	ld a,(lbc4d)
.lb998
	ld b,a
	ld a,(lbc09)
	add b
	ld (lb4e1),a
	ld a,(lbc0a)
	add b
	ld (lb4e2),a
.lb9a7
	ld hl,lbc15
	dec (hl)
	ld hl,lbc14
	ld a,(hl)
	and a
	jr z,lb9b9
	ld hl,lbc1b
	dec (hl)
	jr nz,lb9dc
	ld (hl),a
.lb9b9
	ld a,(lbc0f)
	and a
	jr z,lb9dc
	jp p,lb9cf
	ld hl,(lb4e1)
	ld de,(lbc0b)
	add hl,de
	ld (lb4e1),hl
	jr lb9dc
.lb9cf
	ld hl,(lb4e1)
	ld de,(lbc0b)
	and a
	sbc hl,de
	ld (lb4e1),hl
.lb9dc
	ld a,(lbc0d)
	bit 3,a
	jr nz,lb9e9
	ld a,(lb4e1)
	ld (lb4e5),a
.lb9e9
	ld a,(lbc16)
	dec a
	ld (lbc16),a
	jr nz,lba10
	ld a,(lbc12)
	ld (lbc16),a
	ld hl,(lbc19)
	ld a,(hl)
	inc hl
	and a
	jp p,lba0a
	cp #80
	jr nz,lba10
	ld hl,(lbc17)
	ld a,(hl)
	inc hl
.lba0a
	ld (lbc19),hl
	ld (lb4e8),a
.lba10
	ret
.lba11
	dw lba3d,lba4b,lba59,lba67
	dw lba75,lba83,lba91,lba9f
	dw lbaad,lbabb,lbac9,lbad7
	dw lbae5,lbaf3,lbb01,lbb0f
	dw lbb1d,lbb2b,lbb39,lbb47
	dw lbb55,lbb63
.lba3d
	db #64,#06,#20,#02,#43,#00,#fe,#00
.lba4b equ $ + 6
	db #ff,#63,#00,#08,#00,#00,#0a,#0f
	db #0f,#01,#19,#00,#f6,#00,#ff,#00
.lba59 equ $ + 4
	db #00,#01,#00,#00,#0c,#63,#09,#05
	db #11,#00,#f6,#00,#ff,#00,#00,#01
.lba67 equ $ + 2
	db #00,#00,#19,#06,#e0,#05,#26,#00
	db #fe,#00,#ff,#63,#06,#02,#ff,#00
.lba75
	db #1e,#0f,#80,#00,#80,#00,#fe,#00
.lba83 equ $ + 6
	db #ff,#00,#08,#02,#00,#05,#14,#02
	db #78,#00,#01,#00,#fe,#00,#01,#63
.lba91 equ $ + 4
	db #00,#01,#00,#00,#14,#02,#ef,#00
	db #77,#00,#fe,#00,#01,#63,#00,#02
.lba9f equ $ + 2
	db #00,#00,#0f,#63,#18,#00,#01,#00
	db #f7,#00,#ff,#63,#00,#02,#00,#04
.lbaad
	db #1e,#02,#20,#00,#01,#00,#fe,#00
.lbabb equ $ + 6
	db #01,#63,#08,#02,#00,#00,#28,#02
	db #00,#03,#00,#03,#fe,#00,#ff,#02
.lbac9 equ $ + 4
	db #00,#02,#00,#06,#50,#04,#00,#00
	db #06,#00,#f7,#01,#ff,#63,#00,#05
.lbad7 equ $ + 2
	db #00,#00,#32,#0a,#0a,#00,#03,#00
	db #f6,#01,#ff,#0a,#00,#04,#00,#00
.lbae5
	db #0b,#05,#0f,#00,#04,#00,#f6,#00
.lbaf3 equ $ + 6
	db #01,#0a,#00,#01,#00,#00,#1f,#20
	db #00,#00,#01,#00,#f7,#00,#ff,#05
.lbb01 equ $ + 4
	db #00,#0c,#00,#00,#3c,#03,#04,#00
	db #02,#00,#f7,#00,#01,#0a,#00,#05
.lbb0f equ $ + 2
	db #00,#63,#11,#05,#c7,#00,#20,#00
	db #f6,#00,#ff,#63,#00,#01,#00,#00
.lbb1d
	db #0f,#0f,#10,#00,#01,#00,#f7,#00
.lbb2b equ $ + 6
	db #ff,#00,#00,#02,#00,#00,#32,#03
	db #a1,#00,#14,#00,#f6,#00,#ff,#ff
.lbb39 equ $ + 4
	db #00,#04,#00,#00,#14,#0a,#1f,#00
	db #02,#00,#f6,#00,#01,#63,#08,#02
.lbb47 equ $ + 2
	db #00,#00,#1e,#ff,#1f,#00,#01,#00
	db #f7,#00,#01,#63,#01,#01,#00,#04
.lbb55
	db #0f,#63,#f0,#00,#21,#00,#fe,#00
.lbb63 equ $ + 6
	db #ff,#63,#00,#01,#00,#00,#14,#ff
	db #0a,#00,#03,#00,#f6,#00,#ff,#0a
	db #08,#02,#00,#00
.lbb71
	dw lbb83,lbb93,lbbac,lbbbc
	dw lbbc4,lbbc9,lbbcf,lbbd1
	dw lbbe3
.lbb83
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.lbb93
	db #06,#08,#0a,#0b,#0c,#0d,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.lbbac equ $ + 1
	db #ff,#06,#08,#0a,#0b,#0c,#0d,#0c
	db #0b,#0a,#08,#06,#04,#03,#02,#01
.lbbbc equ $ + 1
	db #ff,#0d,#0b,#09,#07,#05,#04,#03
.lbbc9 equ $ + 6
.lbbc4 equ $ + 1
	db #ff,#01,#04,#07,#0a,#80,#01,#03
.lbbd1 equ $ + 6
.lbbcf equ $ + 4
	db #06,#08,#0a,#80,#0b,#80,#0f,#0f
	db #0e,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.lbbe3
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
.lbbf2 equ $ + 7
	db #06,#05,#04,#03,#02,#01,#ff,#00
.lbbfa equ $ + 7
.lbbf9 equ $ + 6
.lbbf8 equ $ + 5
.lbbf6 equ $ + 3
.lbbf5 equ $ + 2
.lbbf4 equ $ + 1
.lbbf3
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbc02 equ $ + 7
.lbc01 equ $ + 6
.lbc00 equ $ + 5
.lbbff equ $ + 4
.lbbfe equ $ + 3
.lbbfd equ $ + 2
.lbbfc equ $ + 1
.lbbfb
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbc0a equ $ + 7
.lbc09 equ $ + 6
.lbc08 equ $ + 5
.lbc07 equ $ + 4
.lbc06 equ $ + 3
.lbc04 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbc12 equ $ + 7
.lbc11 equ $ + 6
.lbc10 equ $ + 5
.lbc0f equ $ + 4
.lbc0e equ $ + 3
.lbc0d equ $ + 2
.lbc0b
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbc19 equ $ + 6
.lbc17 equ $ + 4
.lbc16 equ $ + 3
.lbc15 equ $ + 2
.lbc14 equ $ + 1
.lbc13
	db #00,#00,#00,#00,#83,#bb,#83,#bb
.lbc22 equ $ + 7
.lbc20 equ $ + 5
.lbc1f equ $ + 4
.lbc1e equ $ + 3
.lbc1d equ $ + 2
.lbc1c equ $ + 1
.lbc1b
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbc2a equ $ + 7
.lbc29 equ $ + 6
.lbc28 equ $ + 5
.lbc27 equ $ + 4
.lbc26 equ $ + 3
.lbc25 equ $ + 2
.lbc24 equ $ + 1
.lbc23
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbc30 equ $ + 5
.lbc2e equ $ + 3
.lbc2c equ $ + 1
.lbc2b
	db #00,#00,#00,#00,#00,#00
.lbc31
	ld a,(lbc4c)
	and #48
	adc #38
	sla a
	sla a
	ld hl,lbc4f
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.lbc4f equ $ + 3
.lbc4e equ $ + 2
.lbc4d equ $ + 1
.lbc4c
	db #ff,#00,#36,#68
.lbc50
	db #33
	dw lbcaf,lbc65,lbcd5
	db #36
	dw lbf05,lbefd,lbf01
	db #36
	dw lbfaa,lbfa6,lbfae
.lbc65
	dw lbcf7,lbcf7,lbd3f,lbd3f
	dw lbd61,lbd61,lbd3f,lbd3f
	dw lbd61,lbd61,lbcf7,lbcf7
	dw lbd3f,lbd3f,lbda1,lbda1
	dw lbd3f,lbd3f,lbda1,lbda1
	dw lbd3f,lbd3f,lbda1,lbda1
	dw lbd3f,lbd3f,lbda1,lbda1
	dw lbd80,lbd80,lbda1,lbda1
	dw lbd80,lbd80,lbda1,lbda1
	dw #0000
.lbcaf
	dw lbe3b,lbdc0,lbddd,lbdec
	dw lbddd,lbe3b,lbe09,lbe18
	dw lbe09,lbe18,lbe09,lbe18
	dw lbe09,lbe18,lbe28,lbe18
	dw lbe28,lbe18,#0000
.lbcd5
	dw lbe38,lbe45,lbe63,lbe88
	dw lbe63,lbe38,lbea6,lbea6
	dw lbff6,lbea6,lbea6,lbee3
	dw lbec7,lbff3,lbee3,lbec7
	dw #0000
.lbcf7
	db #8c,#88,#01,#01,#d0,#e3,#84,#14
	db #01,#30,#e1,#80,#84,#14,#01,#30
	db #e3,#84,#14,#01,#30,#e1,#80,#84
	db #14,#01,#30,#e3,#84,#14,#01,#30
	db #e1,#80,#84,#14,#01,#30,#e0,#84
	db #14,#01,#30,#84,#14,#01,#30,#84
	db #14,#01,#30,#84,#14,#01,#30,#84
	db #14,#01,#2d,#84,#14,#01,#2d,#84
	db #14,#01,#2d,#84,#14,#01,#2d,#87
.lbd3f
	db #8a,#90,#d2,#e1,#0e,#e0,#0e,#0e
	db #e1,#8c,#84,#14,#01,#30,#8a,#e0
	db #0e,#1a,#e1,#0e,#e0,#0e,#0e,#e1
	db #8c,#84,#14,#01,#30,#8a,#e0,#0e
.lbd61 equ $ + 2
	db #1a,#87,#e1,#12,#e0,#12,#12,#e1
	db #8c,#84,#14,#01,#30,#8a,#e0,#12
	db #1e,#e1,#12,#e0,#12,#12,#e1,#8c
	db #84,#14,#01,#30,#8a,#e0,#12,#1e
.lbd80 equ $ + 1
	db #87,#8a,#d2,#e1,#13,#e0,#13,#13
	db #e1,#8c,#84,#14,#01,#30,#8a,#e0
	db #13,#1f,#e1,#13,#e0,#13,#13,#e1
	db #8c,#84,#14,#01,#30,#8a,#e0,#13
.lbda1 equ $ + 2
	db #1f,#87,#e1,#15,#e0,#15,#15,#e1
	db #8c,#84,#14,#01,#30,#8a,#e0,#15
	db #21,#e1,#15,#e0,#15,#15,#e1,#8c
	db #84,#14,#01,#30,#8a,#e0,#15,#21
.lbdc0 equ $ + 1
	db #87,#88,#01,#01,#d5,#c0,#e1,#26
	db #e3,#26,#e1,#26,#e1,#25,#e3,#26
	db #e1,#2a,#26,#e3,#26,#e1,#26,#e1
.lbddd equ $ + 6
	db #25,#e3,#26,#e1,#2a,#87,#d5,#e1
	db #80,#e3,#c8,#2a,#2a,#2a,#2a,#2a
.lbdec equ $ + 5
	db #2a,#2a,#e1,#2a,#87,#88,#01,#01
	db #d5,#c0,#e1,#32,#e3,#32,#e1,#32
	db #e1,#31,#e3,#32,#e1,#36,#32,#e3
	db #32,#e1,#32,#e1,#31,#e3,#32,#e1
.lbe09 equ $ + 2
	db #36,#87,#d5,#e1,#80,#e3,#c8,#26
	db #26,#26,#26,#26,#26,#26,#e1,#26
.lbe18 equ $ + 1
	db #87,#d5,#e1,#80,#e3,#c8,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#c6,#e1,#2d
.lbe28 equ $ + 1
	db #87,#d5,#e1,#80,#e3,#c8,#2b,#2b
	db #2b,#2b,#2b,#2b,#2b,#c6,#e1,#2b
.lbe3b equ $ + 4
.lbe38 equ $ + 1
	db #87,#88,#01,#01,#8a,#d9,#c0,#ff
.lbe45 equ $ + 6
	db #0e,#84,#f8,#32,#0e,#87,#88,#01
	db #01,#d4,#c0,#e1,#2a,#e3,#2a,#e1
	db #2a,#e1,#28,#e3,#2a,#e1,#2d,#e1
	db #2a,#e3,#2a,#e1,#2a,#e1,#28,#e3
.lbe63 equ $ + 4
	db #2a,#e1,#2d,#87,#e0,#81,#d0,#c9
	db #46,#45,#44,#43,#42,#41,#40,#3f
	db #3e,#3d,#3c,#3b,#3a,#39,#38,#37
	db #36,#37,#38,#39,#3a,#3b,#3c,#3d
	db #3e,#3f,#40,#41,#42,#43,#44,#45
.lbe88 equ $ + 1
	db #87,#88,#01,#01,#d4,#c0,#e1,#36
	db #e3,#36,#e1,#36,#e1,#34,#e3,#36
	db #e1,#39,#e1,#36,#e3,#36,#e1,#36
.lbea6 equ $ + 7
	db #e1,#34,#e3,#36,#e1,#39,#87,#81
	db #c9,#d4,#e1,#32,#e0,#32,#32,#e1
	db #36,#e0,#39,#39,#e1,#3b,#39,#e3
	db #36,#e1,#3e,#e0,#3e,#3e,#e1,#42
	db #e0,#45,#45,#e1,#47,#45,#e3,#42
.lbec7
	db #e1,#39,#e0,#39,#3b,#e1,#39,#38
	db #37,#36,#e3,#34,#e1,#45,#e0,#45
	db #47,#e1,#45,#44,#43,#42,#e3,#84
.lbee3 equ $ + 4
	db #01,#06,#40,#87,#81,#c9,#d4,#e0
	db #32,#32,#e1,#31,#32,#34,#32,#31
	db #32,#37,#e0,#32,#32,#e1,#34,#32
	db #31,#32,#37,#32,#31,#87
.lbefd
	dw lbf3f,#0000
.lbf01
	dw lbf54,#0000
.lbf05
	dw lbf57,lbf57,lbf85,lbf85
	dw lbf57,lbf57,lbff6,lbf57
	dw lbf57,lbf85,lbf85,lbf57
	dw lbf57,lbff9,lbf57,lbf57
	dw lbf85,lbf85,lbf57,lbf57
	dw lbffc,lbf57,lbf57,lbf85
	dw lbf85,lbf57,lbf57,lbff3
	dw #0000
.lbf3f
	db #8b,#e0,#d0,#3f,#d1,#27,#27,#27
	db #d0,#e1,#8c,#84,#14,#01,#30,#8b
.lbf54 equ $ + 5
	db #e0,#d1,#27,#27,#87,#88,#01,#01
.lbf57
	db #8a,#d0,#92,#00,#c0,#e1,#15,#e0
	db #21,#21,#e1,#15,#e0,#15,#21,#e1
	db #15,#e0,#21,#21,#e1,#15,#e0,#15
	db #21,#e1,#11,#e0,#1d,#1d,#e1,#11
	db #e0,#11,#1d,#e1,#13,#e0,#1f,#1f
.lbf85 equ $ + 6
	db #e1,#13,#e0,#13,#1f,#87,#c9,#d4
	db #e1,#32,#e0,#30,#e1,#2d,#e0,#2b
	db #e1,#29,#2b,#24,#e3,#26,#e1,#32
	db #e0,#30,#e1,#2d,#e0,#2b,#e1,#29
	db #d8,#e3,#35,#34,#92,#0c,#87
.lbfa6
	dw lbfb2,#0000
.lbfaa
	dw lbfc7,#0000
.lbfae
	db lbfdc,#0000
.lbfb2
	db #8a,#d2,#c9,#e1,#3c,#3a,#38,#37
	db #3c,#3a,#38,#37,#3c,#3a,#38,#37
	db #e3,#3c,#e7,#30,#8e
.lbfc7
	db #8a,#d2,#c9
	db #e1,#24,#22,#20,#1f,#24,#22,#20
	db #1f,#24,#22,#20,#1f,#e3,#24,#e7
	db #18,#8e
.lbfdc
	db #8a,#d2,#88,#01,#01,#e1
	db #30,#2e,#2c,#2b,#30,#2e,#2c,#2b
	db #30,#2e,#2c,#2b,#e3,#30,#e7,#24
.lbff9 equ $ + 7
.lbff6 equ $ + 4
.lbff3 equ $ + 1
	db #8e,#89,#00,#87,#ff,#90,#2a,#02
	db #02,#87
.lbffc
	db #89,#03,#46,#c0
;
.music_info
	db "Gilbert Escape from Drill (1989)(Enigma Variations)(David Whittaker)",0
	db "",0

	read "music_end.asm"
