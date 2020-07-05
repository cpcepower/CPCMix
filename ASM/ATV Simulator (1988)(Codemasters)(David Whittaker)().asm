; Music of ATV Simulator (1988)(Codemasters)(David Whittaker)()
; Ripped by Megachur the 26/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ATVSIMUL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #ab98
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
; Revision the 12/04/2018
;
.init_music
.lab98
;
	ld hl,lb095
	ld (hl),#00
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#00
	inc hl
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
	ld hl,lb512
	add hl,bc
	ld a,(hl)
	ld (lac8b),a
	inc hl
	ld ix,labfc
	ld c,#21
	ld a,#03
.labc2
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
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
	jr nz,labc2
	ld (lafb7),a
	inc a
	ld (lac5f),a
	ld (lb095),a
	ret
.labfc
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.lac1d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.lac3e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
.lac5f
	db #00
;
.play_music
.lac60
;
	call lb350
	ld a,(lb095)
	and a
	jr z,lacbb
.lac6a equ $ + 1
	ld a,#00
	ld (lacb7),a
	ld hl,lac5f
	dec (hl)
	jr nz,lac8f
	ld b,(hl)
	ld ix,labfc
	call laec0
	ld ix,lac1d
	call laec0
	ld ix,lac3e
	call laec0
.lac8b equ $ + 1
	ld a,#01
	ld (lac5f),a
.lac8f
	ld ix,labfc
	call laf84
	ld (lb09f),hl
	ld (lb0a7),a
	ld ix,lac1d
	call laf84
	ld (lb0a1),hl
	ld (lb0a8),a
	ld ix,lac3e
	call laf84
	ld (lb0a3),hl
	ld (lb0a9),a
.lacb7 equ $ + 1
	ld a,#00
	ld (lb0a5),a
.lacbb
	ld a,(lb09e)
	xor #01
	ld (lb09e),a
	ld a,(lb096)
	and a
	jr nz,lacee
	ld a,(lb098)
	and a
	jr z,lacee
	ld hl,(lb09a)
	ld a,(lb09e)
	and a
	jr z,lacdc
	srl h
	rr l
.lacdc
	ld (lb09f),hl
	ld a,(lb0a6)
	or #09
	and #fe
	ld (lb0a6),a
	ld a,#0c
	ld (lb0a7),a
.lacee
	ld a,(lb097)
	and a
	jr nz,lad19
	ld a,(lb099)
	and a
	jr z,lad19
	ld hl,(lb09c)
	ld a,(lb09e)
	and a
	jr nz,lad07
	srl h
	rr l
.lad07
	ld (lb0a3),hl
	ld a,(lb0a6)
	or #24
	and #fb
	ld (lb0a6),a
	ld a,#0c
	ld (lb0a9),a
.lad19
	ld a,(lb096)
	and a
	jr z,lad3d
	ld hl,(lb0ac)
	ld (lb09f),hl
	ld a,(lb0b2)
	ld (lb0a5),a
	ld a,(lb0a6)
	or #09
	ld hl,lb0b3
	and (hl)
	ld (lb0a6),a
	ld a,(lb0b4)
	ld (lb0a7),a
.lad3d
	ld a,(lb097)
	and a
	jr z,lad61
	ld hl,(lb0b0)
	ld (lb0a3),hl
	ld a,(lb0b2)
	ld (lb0a5),a
	ld a,(lb0a6)
	or #24
	ld hl,lb0b3
	and (hl)
	ld (lb0a6),a
.lad5d equ $ + 2
	ld a,(lb0b6)
	ld (lb0a9),a
.lad61
	ld hl,lb0aa
	ld d,#0b
.lad66
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
	jp p,lad66
	ret
.lad87
	ld de,#0d00
.lad8a
	call lad94
	dec d
	jp p,lad8a
	ld de,#073f
.lad94
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
.ladaf
	push af
	push bc
	push de
	push hl
	push ix
	call ladbf
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
;
.stop_music
.ladbf
;
	xor a
	ld (lb095),a
	ld (lb096),a
	ld (lb097),a
	ld (lb098),a
	ld (lb099),a
	call lad87
	xor a
	ld (lb0a7),a
	ld (lb0a8),a
	ld (lb0a9),a
	ret
	db #c9
	db #b1
	db #b5
	db #ba
	db #78
	db #a7
	db #a2
	db #0f
	db #91
	db #89
	db #4e
	db #38
	db #60
	db #b6
	db #04
	db #c3
	db #c8
	db #cd
	pop hl
	jp ladaf
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
	jr nz,lae15
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lae15
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp laece
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,lb060
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp laece
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,lb060
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp laece
	ld hl,lb060
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr laece
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr laece
	ld a,(de)
	inc de
	ld (lafb7),a
	jr laece
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr laece
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr laece
	ld (ix+#1d),b
	jr laece
	ld (ix+#1d),#40
	jr laece
	ld (ix+#1d),#c0
	jr laece
	set 1,(ix+#00)
	jr laece
	ld (ix+#13),b
	res 5,(ix+#00)
	jr laefd
	res 5,(ix+#00)
	jr laefd
	ld (ix+#1f),#ff
	jr laece
	ld (ix+#1f),b
	jr laece
.laec0
	dec (ix+#10)
	jr nz,laf1e
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.laece
	ld a,(de)
	inc de
	and a
	jp m,laf2f
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,laee0
	ld (lac6a),a
.laee0
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
.laefd
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,laf1d
	ld a,(lb096)
	ld b,a
	ld a,(lb097)
	or b
	jr nz,laf1d
	ld (ix+#1f),#ff
.laf1d
	ret
.laf1e
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,laf2b
	inc (ix+#12)
	ret
.laf2b
	dec (ix+#12)
	ret
.laf2f
	cp #b8
	jr c,laf7c
	add #20
	jr c,laf5d
	add #10
	jr c,laf64
	add #10
	jr nc,laf55
	ld c,a
	ld hl,lb178
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp laece
.laf55
	add #09
	ld (lac8b),a
	jp laece
.laf5d
	inc a
	ld (ix+#11),a
	jp laece
.laf64
	ld hl,lb19e
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
	jp laece
.laf7c
	ld hl,lad5d
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.laf84
	ld c,(ix+#00)
	bit 5,c
	jr z,lafb6
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,lafb0
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,lafb0
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.lafb0
	ld a,(ix+#18)
	ld (ix+#13),a
.lafb7 equ $ + 1
.lafb6
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,lafd0
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.lafd0
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lb0b8
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb031
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,laffa
	bit 0,c
	jr nz,lb018
.laffa
	bit 5,l
	jr nz,lb00a
	sub (ix+#1b)
	jr nc,lb015
	set 5,(ix+#1d)
	sub a
	jr lb015
.lb00a
	add (ix+#1b)
	cp b
	jr c,lb015
	res 5,(ix+#1d)
	ld a,b
.lb015
	ld (ix+#1c),a
.lb018
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb023
	dec d
.lb023
	add #a0
	jr c,lb02f
.lb027
	sla e
	rl d
	add #18
	jr nc,lb027
.lb02f
	add hl,de
	ex de,hl
.lb031
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lb05c
	ld b,(ix+#0e)
	djnz lb059
	ld c,(ix+#0d)
	bit 7,c
	jr z,lb048
	dec b
.lb048
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lb05c
.lb059
	ld (ix+#0e),b
.lb05c
	cpl
	and #03
.lb060 equ $ + 1
	ld a,#38
	jr nz,lb06d
	ld a,(lac6a)
	xor #08
	ld (lacb7),a
	ld a,#07
.lb06d
	ld hl,lb0a6
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,lb090
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#20)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (lacb7),a
.lb090
	ex de,hl
	ld a,(ix+#13)
	ret
.lb09c equ $ + 7
.lb09a equ $ + 5
.lb099 equ $ + 4
.lb098 equ $ + 3
.lb097 equ $ + 2
.lb096 equ $ + 1
;
.music_end
.lb095
;
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb0a3 equ $ + 6
.lb0a1 equ $ + 4
.lb09f equ $ + 2
.lb09e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb0ac equ $ + 7
.lb0aa equ $ + 5
.lb0a9 equ $ + 4
.lb0a8 equ $ + 3
.lb0a7 equ $ + 2
.lb0a6 equ $ + 1
.lb0a5
	db #00,#3f,#00,#00,#00,#00,#00,#00
.lb0b4 equ $ + 7
.lb0b3 equ $ + 6
.lb0b2 equ $ + 5
.lb0b1 equ $ + 4
.lb0b0 equ $ + 3
.lb0ad
	db #00,#00,#00,#00,#00,#00,#3f,#10
.lb0b6 equ $ + 1
	db #00,#10,#00
.lb0b8
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
.lb178
	db #0a,#0a,#0c,#0e,#10,#13,#15,#17
	db #19,#1b,#80,#00,#03,#87,#00,#04
	db #87,#00,#02,#87,#00,#04,#07,#8c
	db #07,#0c,#8f,#07,#0c,#90,#03,#07
	db #8c,#04,#07,#8c,#00,#8c
.lb19e
	dw lb1b5,lb1b8,lb1c0,lb1d2
	dw lb1fc,lb200,lb22a,lb230
	dw lb254,lb260,lb26c
.lb1b5 equ $ + 1
	db #00,#09,#87
.lb1b8 equ $ + 1
	db #03,#0f,#0e,#0d,#0c,#0b,#0a,#87
.lb1c0 equ $ + 1
	db #01,#0f,#0e,#0c,#0b,#0d,#0c,#0a
	db #09,#0b,#0a,#08,#07,#09,#08,#06
	db #05,#87
.lb1d2 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0d,#0c
	db #0b,#0a,#09,#0b,#0a,#09,#08,#07
	db #09,#08,#07,#06,#05,#07,#06,#05
	db #04,#03,#05,#04,#03,#02,#01,#04
	db #03,#02,#01,#03,#02,#01,#02,#01
	db #00,#87
.lb1fc equ $ + 1
	db #0a,#0f,#0e,#87
.lb200 equ $ + 1
	db #02,#0f,#0e,#0d,#0c,#0b,#0d,#0c
	db #0b,#0a,#09,#0b,#0a,#09,#08,#07
	db #09,#08,#07,#06,#05,#07,#06,#05
	db #04,#03,#05,#04,#03,#02,#01,#04
	db #03,#02,#01,#03,#02,#01,#02,#01
	db #00,#87
.lb22a equ $ + 1
	db #01,#0b,#0f,#0b,#08,#87
.lb230 equ $ + 1
	db #02,#0a,#0b,#0c,#0d,#0e,#0f,#0f
	db #0e,#0e,#0e,#0e,#0d,#0d,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0a,#0a
	db #0a,#0a,#09,#09,#09,#09,#08,#08
	db #08,#07,#06,#87
.lb254 equ $ + 1
	db #01,#0c,#0b,#0a,#09,#08,#07,#09
	db #08,#07,#06,#87
.lb260 equ $ + 1
	db #01,#0d,#0c,#0b,#0a,#09,#08,#0a
	db #09,#08,#07,#87
.lb26c equ $ + 1
	db #01,#0e,#0d,#0c,#0b,#0a,#09,#0b
	db #0a,#09,#08,#87
;
; sound effects
;
	ld hl,lb096
	ld (hl),#00
	ld hl,lb44b
	add a
	add l
	ld l,a
	jr nc,lb285
	inc h
.lb285
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0c
	ld hl,lb4d7
.lb28d
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb28d
	ld a,(lb4d8)
	ld (lb4e3),a
	ld hl,(lb4d9)
	ld (lb0ac),hl
	ld a,l
	ld (lb0b2),a
	ld a,(lb0b3)
	or #09
	ld hl,lb4dc
	and (hl)
	ld (lb0b3),a
	ld a,(lb4db)
	ld e,a
	ld d,#0c
	call lad94
	ld a,(lb4e2)
	ld e,a
	ld d,#0d
	call lad94
	ld hl,lb096
	inc (hl)
	ret
	ld hl,lb097
	ld (hl),#00
	ld hl,lb44b
	add a
	add l
	ld l,a
	jr nc,lb2d4
	inc h
.lb2d4
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0c
	ld hl,lb4e5
.lb2dc
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb2dc
	ld a,(lb4e6)
	ld (lb4f1),a
	ld hl,(lb4e7)
	ld (lb0b0),hl
	ld a,l
	ld (lb0b2),a
	ld a,(lb0b3)
	or #24
	ld l,a
	ld a,(lb4ea)
	rlca
	rlca
	and l
	ld (lb0b3),a
	ld a,(lb4e9)
	ld e,a
	ld d,#0c
	call lad94
	ld a,(lb4f0)
	ld e,a
	ld d,#0d
	call lad94
	ld hl,lb097
	inc (hl)
	ret
	ld a,#01
	ld (lb098),a
	ld hl,#0d00
	ld (lb09a),hl
	ret
	ld a,#01
	ld (lb099),a
	ld hl,#0cb0
	ld (lb09c),hl
	ret
	xor a
	ld (lb098),a
	ld (lb0a7),a
	ld a,(lb0a6)
	or #09
	ld (lb0a6),a
	ret
	xor a
	ld (lb099),a
	ld (lb0a9),a
	ld a,(lb0a6)
	or #24
	ld (lb0a6),a
	ret
.lb350
	call lb4f3
	ld a,(lb096)
	and a
	call nz,lb3d5
	ld a,(lb097)
	and a
	ret z
	ld a,(lb4e5)
	and a
	jr nz,lb374
	ld (lb097),a
	ld (lb0a9),a
	ld a,(lb0a6)
	or #24
	ld (lb0a6),a
	ret
.lb374
	dec a
	ld (lb4e5),a
	ld a,(lb4f1)
	and a
	jr nz,lb3a7
	ld a,(lb4ee)
	and a
	ret z
	dec a
	ld (lb4ee),a
	ld a,(lb4e6)
	ld (lb4f1),a
	ld a,(lb4ef)
	and a
	jr z,lb396
	ld a,(lb50e)
.lb396
	ld b,a
	ld a,(lb4e7)
	add b
	ld (lb0b0),a
	ld a,(lb4e8)
	add b
	and #0f
	ld (lb0b1),a
.lb3a7
	ld hl,lb4f1
	dec (hl)
	ld a,(lb4ed)
	and a
	jr z,lb3ce
	jp p,lb3c1
	ld hl,(lb0b0)
	ld de,(lb4eb)
	add hl,de
	ld (lb0b0),hl
	jr lb3ce
.lb3c1
	ld hl,(lb0b0)
	ld de,(lb4eb)
	and a
	sbc hl,de
	ld (lb0b0),hl
.lb3ce
	ld a,(lb0b0)
	ld (lb0b2),a
	ret
.lb3d5
	ld a,(lb4d7)
	and a
	jr nz,lb3ea
	ld (lb096),a
	ld (lb0a7),a
	ld a,(lb0a6)
	or #09
	ld (lb0a6),a
	ret
.lb3ea
	dec a
	ld (lb4d7),a
	ld a,(lb4e3)
	and a
	jr nz,lb41d
	ld a,(lb4e0)
	and a
	ret z
	dec a
	ld (lb4e0),a
	ld a,(lb4d8)
	ld (lb4e3),a
	ld a,(lb4e1)
	and a
	jr z,lb40c
	ld a,(lb50e)
.lb40c
	ld b,a
	ld a,(lb4d9)
	add b
	ld (lb0ac),a
	ld a,(lb4da)
	add b
	and #0f
	ld (lb0ad),a
.lb41d
	ld hl,lb4e3
	dec (hl)
	ld a,(lb4df)
	and a
	jr z,lb444
	jp p,lb437
	ld hl,(lb0ac)
	ld de,(lb4dd)
	add hl,de
	ld (lb0ac),hl
	jr lb444
.lb437
	ld hl,(lb0ac)
	ld de,(lb4dd)
	and a
	sbc hl,de
	ld (lb0ac),hl
.lb444
	ld a,(lb0ac)
	ld (lb0b2),a
	ret
.lb44b
	dw lb45f,lb46b,lb477,lb483
	dw lb48f,lb49b,lb4a7,lb4b3
	dw lb4bf,lb4cb
.lb45f
	db #01,#12,#61,#00,#02,#fe,#00,#00
	db #00,#00,#00,#00
.lb46b
	db #1e,#09,#b0,#06,#19,#f6,#28,#00
	db #ff,#63,#01,#00
.lb477
	db #1e,#05,#c0,#04,#14,#f6,#20,#00
	db #01,#0f,#01,#00
.lb483
	db #05,#04,#00,#00,#01,#f7,#00,#00
	db #ff,#05,#01,#00
.lb48f
	db #05,#04,#01,#00,#01,#f7,#00,#00
	db #ff,#05,#01,#00
.lb49b
	db #19,#63,#80,#03,#0f,#fe,#01,#00
	db #ff,#06,#00,#00
.lb4a7
	db #19,#63,#80,#02,#0f,#fe,#02,#00
	db #ff,#06,#00,#00
.lb4b3
	db #14,#04,#d0,#00,#0f,#fe,#09,#00
	db #01,#ff,#00,#00
.lb4bf
	db #0a,#14,#80,#01,#1e,#fe,#48,#00
	db #ff,#ff,#00,#00
.lb4cb
	db #28,#ff,#20,#00,#0f,#fe,#00,#00
	db #00,#01,#00,#00
.lb4dd equ $ + 6
.lb4dc equ $ + 5
.lb4db equ $ + 4
.lb4da equ $ + 3
.lb4d9 equ $ + 2
.lb4d8 equ $ + 1
.lb4d7
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb4e6 equ $ + 7
.lb4e5 equ $ + 6
.lb4e3 equ $ + 4
.lb4e2 equ $ + 3
.lb4e1 equ $ + 2
.lb4e0 equ $ + 1
.lb4df
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb4ee equ $ + 7
.lb4ed equ $ + 6
.lb4eb equ $ + 4
.lb4ea equ $ + 3
.lb4e9 equ $ + 2
.lb4e8 equ $ + 1
.lb4e7
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb4f1 equ $ + 2
.lb4f0 equ $ + 1
.lb4ef
	db #00,#00,#00,#00
.lb4f3
	ld a,(lb50e)
	and #48
	adc #38
	sla a
	sla a
	ld hl,lb511
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.lb511 equ $ + 3
.lb50e
	db #ff,#80,#1b,#34
.lb512
	db #03
	dw lb52e,lb560,lb580
	db #03
	dw lb640,lb644,lb648
	db #06
	dw lb69d,lb6a1,lb6a5
	db #05
.lb52e equ $ + 6
	dw lb6e2,lb6ec,lb580,lb584
	dw lb59c,lb584,lb5ad,lb584
	dw lb59c,lb584,lb5ad,lb584
	dw lb59c,lb584,lb5ad,lb584
	dw lb59c,lb584,lb5ad,lb584
	dw lb59c,lb584,lb5ad,lb584
	dw lb59c,lb584,lb5ad,#0000
.lb560
	dw lb6f9,lb5be,lb5d6,lb5be
	dw lb5e7,lb5be,lb5d6,lb5be
	dw lb5e7,lb5f8,lb60f,lb6fc
	dw lb5f8,lb60f,lb6f9,#0000
.lb580
	dw lb625,#0000
.lb584
	db #8a,#88,#01,#01,#82,#d2,#c0,#e3
	db #10,#1c,#e1,#10,#10,#1c,#e5,#10
	db #e3,#1c,#e1,#10,#1c,#10,#1c,#87
.lb59c
	db #e3,#0d,#19,#e1,#0d,#0d,#19,#e5
	db #0d,#e3,#19,#e1,#0d,#19,#0d,#19
	db #87
.lb5ad
	db #e3,#0c,#18,#e1,#0c,#0c,#18,#e5
	db #0c,#e3,#18,#e1,#0c,#18,#0c
	db #18,#87
.lb5be
	db #8a,#88,#01,#01,#82,#d3,#c0,#e3
	db #23,#23,#e1,#20,#20,#23,#e5,#23
	db #e3,#23,#e1,#20,#20,#23,#23,#87
.lb5d6
	db #e3,#20,#20,#e1,#1c,#1c,#20,#e5
	db #20,#e3,#20,#e1,#1c,#1c,#20,#20
	db #87
.lb5e7
	db #1f,#1f,#1f,#1f,#1c,#1c,#1f,#1f
	db #1f,#1f,#1f,#1f,#1c,#1c,#1f,#1f
	db #87
.lb5f8
	db #8a,#88,#02,#02,#d5,#c0,#fb,#28
	db #e1,#23,#ff,#25,#e1,#8f,#fb,#28
	db #e1,#23,#ff,#24,#e1,#8f,#87
.lb60f
	db #8a,#c9,#88,#01,#01,#fb,#34,#e1
	db #2f,#ff,#31,#e1,#8f,#fb,#34,#e1
	db #2f,#ff,#30,#e1,#8f,#87
.lb625
	db #8b,#d8,#e3,#27,#e1,#27,#27,#d9
	db #e3,#8c,#46,#d8,#8b,#e1,#27,#8c
	db #e5,#27,#e1,#27,#27,#d9,#e3,#8c
	db #46,#52,#87
.lb640
	dw lb64e,#0000
.lb644
	dw lb674,#0000
.lb648
	dw lb625,lb69a,#0000
.lb64e
	db #8a,#d2,#c0,#88,#01,#01,#82,#e3
	db #0e,#e3,#1a,#e1,#0e,#0e,#1a,#e5
	db #0e,#e3,#1a,#e1,#0e,#1a,#10,#1a
	db #e7,#0e,#e0,#0f,#10,#11,#12,#13
	db #14,#15,#16,#e7,#1a,#8e
.lb674
	db #8a,#d1,#e1,#c0,#88,#01,#01,#82
	db #21,#21,#21,#21,#1e,#1e,#21,#21
	db #21,#21,#21,#21,#1e,#1e,#21,#21
	db #e7,#15,#e0,#16,#17,#18,#19,#1a
	db #1b,#1c,#1d,#e7,#21,#8e
.lb69a
	db #ff,#80,#87
.lb69d
	dw lb6a9,#0000
.lb6a1
	dw lb6bc,#0000
.lb6a5
	dw lb6cf,#0000
.lb6a9
	db #8a,#88,#01,#01,#82,#c0,#d2,#e1
	db #18,#18,#1b,#1b,#e0,#1d,#e1,#1b
	db #e4,#18,#8e
.lb6bc
	db #8a,#88,#01,#01,#82,#c0,#d2,#e1
	db #24,#24,#27,#27,#e0,#29,#e1,#2a
	db #e4,#2b,#8e
.lb6cf
	db #8a,#88,#01,#01,#82,#c9,#d2,#e1
	db #30,#30,#33,#33,#e0,#35,#e1,#36
	db #e4,#37,#8e
.lb6e2
	dw lb584,lb59c,lb584,lb5ad
	dw #0000
.lb6ec
	dw lb5be,lb5d6,lb5be,lb5e7
	dw #0000
	db #89,#00,#87
.lb6f9
	db #89,#03,#87
.lb6fc
	db #89,#05,#87
;
.music_info
	db "ATV Simulator (1988)(Codemasters)(David Whittaker)",0
	db "",0

	read "music_end.asm"
