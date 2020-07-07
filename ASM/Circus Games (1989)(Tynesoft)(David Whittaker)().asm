; Music of Circus Games (1989)(Tynesoft)(David Whittaker)()
; Ripped by Megachur the 14/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CIRCUSGA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b0bd
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"

;
.init_music
;
	push af		; added by Megachur
	call lb307
	pop af		; added by Megachur
	ld c,a		; added by Megachur
	add a		; added by Megachur
	add c		; added by Megachur
	add a		; added by Megachur
	add c		; added by Megachur
	ld c,a		; added by Megachur
	ld b,#00
	ld hl,lbd84
	add hl,bc	; added by Megachur
	ld a,(hl)
	ld (lb1ab),a
	ld (lb61d),a
	inc hl
	ld ix,lb12a
	ld c,#22
	ld a,#03
.lb0de
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
	ld hl,lb707
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
	jr nz,lb0de
	ld (lb537),a
	dec a
	ld (lb61e),a
	ld (lb618),a
	ret
.lb12a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.lb14c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.lb16e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(lb618)
	ld hl,lb619
	or (hl)
	inc hl
	or (hl)
	inc hl
	or (hl)
	ret z
	call lb943
	ld a,(lb618)
	and a
	jr z,lb1f6
.lb1a6 equ $ + 1
	ld a,#00
	ld (lb1f2),a
.lb1ab equ $ + 1
	ld a,#01
	ld hl,lb61e
	add (hl)
	ld (hl),a
	jr nc,lb1ca
	ld b,#00
	ld ix,lb12a
	call lb42d
	ld ix,lb14c
	call lb42d
	ld ix,lb16e
	call lb42d
.lb1ca
	ld ix,lb12a
	call lb504
	ld (lb61f),hl
	ld (lb627),a
	ld ix,lb14c
	call lb504
	ld (lb621),hl
	ld (lb628),a
	ld ix,lb16e
	call lb504
	ld (lb623),hl
	ld (lb629),a
.lb1f2 equ $ + 1
	ld a,#00
	ld (lb625),a
.lb1f6
	ld a,(lb618)
	and a
	jr nz,lb20c
	ld (lb627),a
	ld (lb628),a
	ld (lb629),a
	ld a,#3f
	ld (lb626),a
	jr lb234
.lb20c
	ld a,(lb61c)
	and #0f
	xor #0f
	jr z,lb234
	ld b,a
	ld a,(lb627)
	sub b
	jr nc,lb21d
	xor a
.lb21d
	ld (lb627),a
	ld a,(lb628)
	sub b
	jr nc,lb227
	xor a
.lb227
	ld (lb628),a
	ld a,(lb629)
	sub b
	jr nc,lb231
	xor a
.lb231
	ld (lb629),a
.lb235 equ $ + 1
.lb234
	ld a,#00
	xor #ff
	ld (lb235),a
	ld a,(lb619)
	and a
	jr z,lb263
	ld hl,(lb62c)
	ld (lb61f),hl
	ld a,(lbd2c)
	ld b,a
	bit 3,a
	jr nz,lb255
	ld a,(lb632)
	ld (lb625),a
.lb255
	ld hl,lb626
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(lb634)
	ld (lb627),a
.lb263
	ld a,(lb61a)
	and a
	jr z,lb28d
	ld hl,(lb62e)
	ld (lb621),hl
	ld a,(lbd41)
	ld b,a
	bit 3,a
	jr nz,lb27d
	ld a,(lb632)
	ld (lb625),a
.lb27d
	ld hl,lb626
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(lb635)
	ld (lb628),a
.lb28d
	ld a,(lb61b)
	and a
	jr z,lb2b9
	ld hl,(lb630)
	ld (lb623),hl
	ld a,(lbd56)
	ld b,a
	bit 3,a
	jr nz,lb2a7
	ld a,(lb632)
.lb2a6 equ $ + 2
	ld (lb625),a
.lb2a7
	ld hl,lb626
	ld a,(hl)
	or #24
	rlc b
	rlc b
	and b
	ld (hl),a
	ld a,(lb636)
	ld (lb629),a
.lb2b9
	ld hl,lb629
	ld d,#0a
.lb2be
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
	jp p,lb2be
	ret
.lb2df
	ld de,#0a00
.lb2e2
	call lb2ec
	dec d
	jp p,lb2e2
	ld de,#073f
.lb2ec
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
.lb307
;
	xor a
	ld (lb618),a
	call lb319
	xor a
	ld (lb627),a
	ld (lb628),a
	ld (lb629),a
	ret
.lb319
	xor a
	ld (lb619),a
	ld (lb61a),a
	ld (lb61b),a
	jp lb2df
	db #f1,#d5,#ce,#d8,#9b,#e0,#db,#32
	db #bb,#ac,#71,#5b,#83,#de,#27,#eb
	db #ec,#f1,#aa,#0a,#01,#1a,#13
	ld (lb1ab),a
	jp lb43b
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
	jp lb43b
	pop hl
	jp lb307
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
	jr nz,lb381
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb381
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb43b
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,lb5e3
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb43b
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,lb5e3
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb43b
	ld hl,lb5e3
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr lb43b
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lb43b
	ld a,(de)
	inc de
	ld (lb537),a
	jr lb43b
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr lb43b
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr lb43b
	ld (ix+#1d),b
	jr lb43b
	ld (ix+#1d),#c0
	jr lb43b
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lb43b
	set 1,(ix+#00)
	jr lb43b
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb46a
	jr lb466
	ld (ix+#1f),#ff
	jr lb43b
	ld (ix+#1f),b
	jr lb43b
.lb42d
	dec (ix+#10)
	jr nz,lb4a8
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb43b
	ld a,(de)
	inc de
	and a
	jp m,lb4b9
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb44d
	ld (lb1a6),a
.lb44d
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.lb466
	set 5,(ix+#00)
.lb46a
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,lb4a7
	ld a,(lb619)
	and a
	jr z,lb489
	ld a,(lbd2c)
	bit 3,a
	jr z,lb4a7
.lb489
	ld a,(lb61a)
	and a
	jr z,lb496
	ld a,(lbd41)
	bit 3,a
	jr z,lb4a7
.lb496
	ld a,(lb61b)
	and a
	jr z,lb4a3
	ld a,(lbd56)
	bit 3,a
	jr z,lb4a7
.lb4a3
	ld (ix+#1f),#ff
.lb4a7
	ret
.lb4a8
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lb4b5
	inc (ix+#12)
	ret
.lb4b5
	dec (ix+#12)
	ret
.lb4b9
	cp #c0
	jr c,lb4fc
	add #20
	jr c,lb4dd
	add #10
	jr c,lb4e4
	add #10
	ld c,a
	ld hl,lb6f8
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp lb43b
.lb4dd
	inc a
	ld (ix+#11),a
	jp lb43b
.lb4e4
	ld hl,lb732
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
	jp lb43b
.lb4fc
	ld hl,lb2a6
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb504
	ld c,(ix+#00)
	bit 5,c
	jr z,lb536
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,lb530
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,lb530
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.lb530
	ld a,(ix+#18)
	ld (ix+#13),a
.lb537 equ $ + 1
.lb536
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,lb553
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.lb553
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lb638
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb5b4
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb57d
	bit 0,c
	jr nz,lb59b
.lb57d
	bit 5,l
	jr nz,lb58d
	sub (ix+#1b)
	jr nc,lb598
	set 5,(ix+#1d)
	sub a
	jr lb598
.lb58d
	add (ix+#1b)
	cp b
	jr c,lb598
	res 5,(ix+#1d)
	ld a,b
.lb598
	ld (ix+#1c),a
.lb59b
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb5a6
	dec d
.lb5a6
	add #a0
	jr c,lb5b2
.lb5aa
	sla e
	rl d
	add #18
	jr nc,lb5aa
.lb5b2
	add hl,de
	ex de,hl
.lb5b4
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lb5df
	ld b,(ix+#0e)
	djnz lb5dc
	ld c,(ix+#0d)
	bit 7,c
	jr z,lb5cb
	dec b
.lb5cb
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lb5df
.lb5dc
	ld (ix+#0e),b
.lb5df
	cpl
	and #03
.lb5e3 equ $ + 1
	ld a,#38
	jr nz,lb5f0
	ld a,(lb1a6)
	xor #08
	ld (lb1f2),a
	ld a,#07
.lb5f0
	ld hl,lb626
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,lb613
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (lb1f2),a
.lb613
	ex de,hl
	ld a,(ix+#13)
	ret
.lb61f equ $ + 7
.lb61e equ $ + 6
.lb61d equ $ + 5
.lb61c equ $ + 4
.lb61b equ $ + 3
.lb61a equ $ + 2
.lb619 equ $ + 1
.lb618
.music_end
	db #00,#00,#00,#00,#0f,#00,#00,#00
.lb627 equ $ + 7
.lb626 equ $ + 6
.lb625 equ $ + 5
.lb623 equ $ + 3
.lb621 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#3f,#0f
.lb62f equ $ + 7
.lb62e equ $ + 6
.lb62d equ $ + 5
.lb62c equ $ + 4
.lb629 equ $ + 1
.lb628
	db #0f,#0f,#00,#00,#00,#00,#00,#00
.lb636 equ $ + 6
.lb635 equ $ + 5
.lb634 equ $ + 4
.lb632 equ $ + 2
.lb631 equ $ + 1
.lb630
	db #00,#00,#00,#3f,#00,#00,#00,#00
.lb638
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
.lb6f8
	db #0f,#0f,#11,#13,#15,#17,#19,#1b
.lb707 equ $ + 7
	db #1d,#1f,#20,#21,#22,#23,#24,#80
	db #00,#03,#87,#00,#04,#87,#04,#07
	db #8a,#00,#04,#8a,#07,#0c,#8f,#07
	db #0c,#90,#03,#07,#8c,#04,#07,#8c
	db #00,#8c,#00,#83,#00,#84,#00,#85
	db #00,#87,#0c,#00,#00,#00,#00,#00
	db #00,#80
.lb732
	dw lb751,lb757,lb75e,lb770
	dw lb77e,lb785,lb795,lb7a9
	dw lb7d2,lb7e3,lb7fc,lb808
	dw lb819,lb821,lb824
.lb757 equ $ + 7
.lb751 equ $ + 1
	db #01,#0f,#0e,#0d,#05,#87,#01,#0d
.lb75e equ $ + 6
	db #0b,#07,#03,#01,#87,#01,#0f,#0e
	db #0c,#0b,#0d,#0c,#0a,#09,#0b,#0a
	db #08,#07,#09,#08,#06,#05,#87,#01
.lb770
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.lb77e equ $ + 6
	db #04,#03,#02,#01,#87,#01,#0f,#0d
.lb785 equ $ + 5
	db #0c,#0b,#0a,#87,#01,#0d,#0e,#0f
	db #0e,#0d,#0a,#08,#07,#06,#05,#04
.lb795 equ $ + 5
	db #03,#02,#01,#87,#01,#0d,#0c,#0b
	db #0a,#09,#01,#08,#01,#07,#01,#06
	db #01,#05,#01,#04,#01,#02,#01,#87
.lb7a9 equ $ + 1
	db #08,#04,#06,#07,#08,#09,#0a,#0b
	db #0c,#0d,#0e,#0f,#0f,#0e,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#09
	db #09,#09,#09,#08,#08,#08,#07,#06
.lb7d2 equ $ + 2
	db #87,#05,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.lb7e3 equ $ + 3
	db #01,#87,#01,#09,#0b,#0d,#0e,#0e
	db #0e,#0e,#0e,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
.lb7fc equ $ + 4
	db #0a,#09,#87,#01,#0e,#0d,#0c,#0b
	db #0a,#09,#0b,#0a,#09,#08,#87,#02
.lb808
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.lb819 equ $ + 1
	db #03,#0e,#0d,#0c,#0b,#0a,#09,#87
.lb824 equ $ + 4
.lb821 equ $ + 1
	db #01,#0d,#87,#01,#0f,#87
	ld hl,lb82f
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb82f
	inc bc
	ld e,l
	or a
	ld hl,lb619
	ld (hl),#00
	ld hl,lbb6f
	add a
	add l
	ld l,a
	jr nc,lb840
	inc h
.lb840
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbd26
.lb848
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb848
	ld a,(lbd27)
	ld (lbd34),a
	ld hl,(lbd28)
	ld (lb62c),hl
	ld a,(lbd2c)
	bit 3,a
	jr nz,lb865
	ld a,l
	ld (lb632),a
.lb865
	ld a,(lbd31)
	ld (lbd35),a
	ld a,(lbd33)
	ld (lbd3a),a
	ld a,(lbd30)
	ld hl,lbc7f
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbd36),hl
	ld (lbd38),hl
	ld a,(hl)
	ld (lb634),a
	ld hl,lb619
	inc (hl)
	ret
	ld hl,lb61a
	ld (hl),#00
	ld hl,lbb6f
	add a
	add l
	ld l,a
	jr nc,lb89b
	inc h
.lb89b
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbd3b
.lb8a3
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb8a3
	ld a,(lbd3c)
	ld (lbd49),a
	ld hl,(lbd3d)
	ld (lb62e),hl
	ld a,(lbd41)
	bit 3,a
	jr nz,lb8c0
	ld a,l
	ld (lb632),a
.lb8c0
	ld a,(lbd46)
	ld (lbd4a),a
	ld a,(lbd48)
	ld (lbd4f),a
	ld a,(lbd45)
	ld hl,lbc7f
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbd4b),hl
	ld (lbd4d),hl
	ld a,(hl)
	ld (lb635),a
	ld hl,lb61a
	inc (hl)
	ret
	ld hl,lb61b
	ld (hl),#00
	ld hl,lbb6f
	add a
	add l
	ld l,a
	jr nc,lb8f6
	inc h
.lb8f6
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbd50
.lb8fe
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb8fe
	ld a,(lbd51)
	ld (lbd5e),a
	ld hl,(lbd52)
	ld (lb630),hl
	ld a,(lbd56)
	bit 3,a
	jr nz,lb91b
	ld a,l
	ld (lb632),a
.lb91b
	ld a,(lbd5b)
	ld (lbd5f),a
	ld a,(lbd5d)
	ld (lbd64),a
	ld a,(lbd5a)
	ld hl,lbc7f
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbd60),hl
	ld (lbd62),hl
	ld a,(hl)
	ld (lb636),a
	ld hl,lb61b
	inc (hl)
	ret
.lb943
	call lbd65
	ld a,(lb619)
	and a
	call nz,lba0b
	ld a,(lb61a)
	and a
	call nz,lbabd
	ld a,(lb61b)
	and a
	ret z
	ld a,(lbd50)
	and a
	jr nz,lb969
	ld a,(lbd5c)
	and a
	jr nz,lb969
	ld (lb61b),a
	ret
.lb969
	dec a
	ld (lbd50),a
	ld a,(lbd5e)
	and a
	jr nz,lb9a1
	ld a,(lbd5c)
	and a
	jr nz,lb97f
	ld a,(lbd59)
	and a
	jr z,lb9e3
.lb97f
	dec a
	ld (lbd59),a
	ld a,(lbd51)
	ld (lbd5e),a
	ld a,(lbd57)
	and a
	jr z,lb992
	ld a,(lbd82)
.lb992
	ld b,a
	ld a,(lbd52)
	add b
	ld (lb630),a
	ld a,(lbd53)
	add b
	ld (lb631),a
.lb9a1
	ld hl,lbd5e
	dec (hl)
	ld hl,lbd5d
	ld a,(hl)
	and a
	jr z,lb9b3
	ld hl,lbd64
	dec (hl)
	jr nz,lb9d6
	ld (hl),a
.lb9b3
	ld a,(lbd58)
	and a
	jr z,lb9d6
	jp p,lb9c9
	ld hl,(lb630)
	ld de,(lbd54)
	add hl,de
	ld (lb630),hl
	jr lb9d6
.lb9c9
	ld hl,(lb630)
	ld de,(lbd54)
	and a
	sbc hl,de
	ld (lb630),hl
.lb9d6
	ld a,(lbd56)
	bit 3,a
	jr nz,lb9e3
	ld a,(lb630)
	ld (lb632),a
.lb9e3
	ld a,(lbd5f)
	dec a
	ld (lbd5f),a
	jr nz,lba0a
	ld a,(lbd5b)
	ld (lbd5f),a
	ld hl,(lbd62)
	ld a,(hl)
	inc hl
	and a
	jp p,lba04
	cp #80
	jr nz,lba0a
	ld hl,(lbd60)
	ld a,(hl)
	inc hl
.lba04
	ld (lbd62),hl
	ld (lb636),a
.lba0a
	ret
.lba0b
	ld a,(lbd26)
	and a
	jr nz,lba1b
	ld a,(lbd32)
	and a
	jr nz,lba1b
	ld (lb619),a
	ret
.lba1b
	dec a
	ld (lbd26),a
	ld a,(lbd34)
	and a
	jr nz,lba53
	ld a,(lbd32)
	and a
	jr nz,lba31
	ld a,(lbd2f)
	and a
	jr z,lba95
.lba31
	dec a
	ld (lbd2f),a
	ld a,(lbd27)
	ld (lbd34),a
	ld a,(lbd2d)
	and a
	jr z,lba44
	ld a,(lbd80)
.lba44
	ld b,a
	ld a,(lbd28)
	add b
	ld (lb62c),a
	ld a,(lbd29)
	add b
	ld (lb62d),a
.lba53
	ld hl,lbd34
	dec (hl)
	ld hl,lbd33
	ld a,(hl)
	and a
	jr z,lba65
	ld hl,lbd3a
	dec (hl)
	jr nz,lba88
	ld (hl),a
.lba65
	ld a,(lbd2e)
	and a
	jr z,lba88
	jp p,lba7b
	ld hl,(lb62c)
	ld de,(lbd2a)
	add hl,de
	ld (lb62c),hl
	jr lba88
.lba7b
	ld hl,(lb62c)
	ld de,(lbd2a)
	and a
	sbc hl,de
	ld (lb62c),hl
.lba88
	ld a,(lbd2c)
	bit 3,a
	jr nz,lba95
	ld a,(lb62c)
	ld (lb632),a
.lba95
	ld a,(lbd35)
	dec a
	ld (lbd35),a
	jr nz,lbabc
	ld a,(lbd31)
	ld (lbd35),a
	ld hl,(lbd38)
	ld a,(hl)
	inc hl
	and a
	jp p,lbab6
	cp #80
	jr nz,lbabc
	ld hl,(lbd36)
	ld a,(hl)
	inc hl
.lbab6
	ld (lbd38),hl
	ld (lb634),a
.lbabc
	ret
.lbabd
	ld a,(lbd3b)
	and a
	jr nz,lbacd
	ld a,(lbd47)
	and a
	jr nz,lbacd
	ld (lb61a),a
	ret
.lbacd
	dec a
	ld (lbd3b),a
	ld a,(lbd49)
	and a
	jr nz,lbb05
	ld a,(lbd47)
	and a
	jr nz,lbae3
	ld a,(lbd44)
	and a
	jr z,lbb47
.lbae3
	dec a
	ld (lbd44),a
	ld a,(lbd3c)
	ld (lbd49),a
	ld a,(lbd42)
	and a
	jr z,lbaf6
	ld a,(lbd81)
.lbaf6
	ld b,a
	ld a,(lbd3d)
	add b
	ld (lb62e),a
	ld a,(lbd3e)
	add b
	ld (lb62f),a
.lbb05
	ld hl,lbd49
	dec (hl)
	ld hl,lbd48
	ld a,(hl)
	and a
	jr z,lbb17
	ld hl,lbd4f
	dec (hl)
	jr nz,lbb3a
	ld (hl),a
.lbb17
	ld a,(lbd43)
	and a
	jr z,lbb3a
	jp p,lbb2d
	ld hl,(lb62e)
	ld de,(lbd3f)
	add hl,de
	ld (lb62e),hl
	jr lbb3a
.lbb2d
	ld hl,(lb62e)
	ld de,(lbd3f)
	and a
	sbc hl,de
	ld (lb62e),hl
.lbb3a
	ld a,(lbd41)
	bit 3,a
	jr nz,lbb47
	ld a,(lb62e)
	ld (lb632),a
.lbb47
	ld a,(lbd4a)
	dec a
	ld (lbd4a),a
	jr nz,lbb6e
	ld a,(lbd46)
	ld (lbd4a),a
	ld hl,(lbd4d)
	ld a,(hl)
	inc hl
	and a
	jp p,lbb68
	cp #80
	jr nz,lbb6e
	ld hl,(lbd4b)
	ld a,(hl)
	inc hl
.lbb68
	ld (lbd4d),hl
	ld (lb635),a
.lbb6e
	ret
.lbb6f
	dw lbb91,lbb9f,lbbad,lbbbb
	dw lbbc9,lbbd7,lbbe5,lbbf3
	dw lbc01,lbc0f,lbc1d,lbc2b
	dw lbc39,lbc47,lbc55,lbc63
	dw lbc71
.lbb91
	db #05,#02,#0c,#00,#01,#00,#f7,#00
.lbb9f equ $ + 6
	db #ff,#63,#03,#01,#00,#00,#06,#05
	db #47,#03,#20,#00,#f6,#00,#ff,#63
.lbbad equ $ + 4
	db #03,#03,#00,#00,#1e,#ff,#0f,#00
	db #01,#00,#f7,#00,#01,#63,#01,#01
.lbbbb equ $ + 2
	db #00,#02,#14,#06,#01,#02,#c8,#00
	db #f6,#00,#ff,#ff,#00,#02,#00,#00
.lbbc9
	db #12,#63,#c0,#01,#08,#00,#fe,#00
.lbbd7 equ $ + 6
	db #01,#63,#02,#01,#00,#00,#0a,#63
	db #10,#04,#08,#00,#fe,#00,#01,#63
.lbbe5 equ $ + 4
	db #03,#02,#00,#00,#0b,#05,#0f,#00
	db #04,#00,#f6,#00,#01,#0a,#00,#01
.lbbf3 equ $ + 2
	db #00,#00,#32,#ff,#1f,#00,#01,#00
	db #f7,#00,#01,#ff,#01,#02,#00,#04
.lbc01
	db #1e,#02,#0b,#00,#01,#00,#fe,#00
.lbc0f equ $ + 6
	db #ff,#00,#08,#02,#00,#00,#0c,#63
	db #11,#07,#14,#00,#fe,#00,#01,#ff
.lbc1d equ $ + 4
	db #03,#03,#00,#00,#0a,#63,#4f,#00
	db #01,#00,#f6,#00,#01,#00,#03,#01
.lbc2b equ $ + 2
	db #00,#00,#0a,#02,#03,#00,#01,#00
	db #f7,#00,#01,#ff,#02,#01,#00,#00
.lbc39
	db #05,#63,#10,#03,#08,#00,#fe,#00
.lbc47 equ $ + 6
	db #01,#63,#03,#01,#00,#00,#0f,#0f
	db #0f,#01,#01,#00,#f6,#00,#01,#00
.lbc55 equ $ + 4
	db #00,#01,#00,#00,#32,#05,#00,#00
	db #06,#00,#f7,#00,#ff,#63,#00,#03
.lbc63 equ $ + 2
	db #00,#00,#11,#05,#c7,#00,#20,#00
	db #f6,#00,#ff,#63,#00,#01,#00,#00
.lbc71
	db #14,#63,#2f,#00,#00,#00,#f6,#00
	db #01,#63,#00,#01,#00,#00
.lbc7f
	dw lbc91,lbc9e,lbcb7,lbcc7
	dw lbccf,lbcf4,lbd03,lbd05
	dw lbd17
.lbc91
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
.lbc9e equ $ + 5
	db #07,#06,#05,#04,#ff,#06,#08,#0a
	db #0b,#0c,#0d,#0e,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#09,#08,#07,#06
.lbcb7 equ $ + 6
	db #05,#04,#03,#02,#01,#ff,#06,#08
	db #0a,#0b,#0c,#0d,#0c,#0b,#0a,#08
.lbcc7 equ $ + 6
	db #06,#04,#03,#02,#01,#ff,#0d,#0b
.lbccf equ $ + 6
	db #09,#07,#05,#04,#03,#ff,#0f,#0d
	db #0c,#0b,#0a,#0d,#0c,#0b,#0a,#09
	db #0b,#0a,#09,#08,#07,#09,#08,#07
	db #06,#05,#07,#06,#05,#04,#03,#05
	db #04,#03,#02,#01,#03,#02,#01,#02
.lbcf4 equ $ + 3
	db #01,#00,#ff,#0a,#0c,#0e,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.lbd05 equ $ + 4
.lbd03 equ $ + 2
	db #05,#ff,#0a,#80,#0f,#0f,#0e,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.lbd17 equ $ + 6
	db #05,#04,#03,#02,#01,#ff,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.lbd28 equ $ + 7
.lbd27 equ $ + 6
.lbd26 equ $ + 5
	db #04,#03,#02,#01,#ff,#00,#00,#00
.lbd30 equ $ + 7
.lbd2f equ $ + 6
.lbd2e equ $ + 5
.lbd2d equ $ + 4
.lbd2c equ $ + 3
.lbd2a equ $ + 1
.lbd29
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd38 equ $ + 7
.lbd36 equ $ + 5
.lbd35 equ $ + 4
.lbd34 equ $ + 3
.lbd33 equ $ + 2
.lbd32 equ $ + 1
.lbd31
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd3f equ $ + 6
.lbd3e equ $ + 5
.lbd3d equ $ + 4
.lbd3c equ $ + 3
.lbd3b equ $ + 2
.lbd3a equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd48 equ $ + 7
.lbd47 equ $ + 6
.lbd46 equ $ + 5
.lbd45 equ $ + 4
.lbd44 equ $ + 3
.lbd43 equ $ + 2
.lbd42 equ $ + 1
.lbd41
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd50 equ $ + 7
.lbd4f equ $ + 6
.lbd4d equ $ + 4
.lbd4b equ $ + 2
.lbd4a equ $ + 1
.lbd49
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd58 equ $ + 7
.lbd57 equ $ + 6
.lbd56 equ $ + 5
.lbd54 equ $ + 3
.lbd53 equ $ + 2
.lbd52 equ $ + 1
.lbd51
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd60 equ $ + 7
.lbd5f equ $ + 6
.lbd5e equ $ + 5
.lbd5d equ $ + 4
.lbd5c equ $ + 3
.lbd5b equ $ + 2
.lbd5a equ $ + 1
.lbd59
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd64 equ $ + 3
.lbd62 equ $ + 1
	db #00,#00,#00,#00
.lbd65
	ld a,(lbd80)
	and #48
	adc #38
	sla a
	sla a
	ld hl,lbd83
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.lbd83 equ $ + 3
.lbd82 equ $ + 2
.lbd81 equ $ + 1
.lbd80
	db #ff,#80,#1b,#34
.lbd84
	db #2a
	dw lbd8b,lbdb3,lbdc7
.l1_lbd84
	db #24
	dw l1_lbd8b,l1_lbd8f,l1_lbd99
.l2_lbd84
	db #24
	dw l2_lbd8b,l2_lbd9d,l2_lbda5
.l3_lbd84
	db #20
	dw l3_lbd8b,l3_lbd8f,l3_lbd99
.l4_lbd84
	db #28
	dw l4_lbd8b,l4_lbd8f,l4_lbd99

.lbd8b
	dw lbddf,lbe0d,lbe3f,lbe0d
	dw lbe59,lbe0d,lbe3f,lbe0d
	dw lbe59,lbf9d,lbde1,lbe0d
	dw lbe3f,lbe0d,lbe59,lbe0d
	dw lbe3f,lbe0d,lbe59,#0000
.lbdb3
	dw lbe6e,lbec2,lbf1a,lbec2
	dw lbf3a,lbec5,lbf1a,lbec5
	dw lbf3a,#0000
.lbdc7
	dw lbf5a,lbf5a,lbf5a,lbf69
	dw lbf85,lbf69,lbf85,lbf69
	dw lbf85,lbf69,lbf85,#0000
.lbde1 equ $ + 2
.lbddf
	db #89,#0c,#92,#f4,#8a,#d2,#88,#01
	db #01,#e5,#1c,#e0,#1c,#1c,#e5,#1c
	db #e0,#1c,#1c,#ef,#1c,#e5,#1e,#e0
	db #1e,#1e,#e5,#1e,#e0,#1e,#1e,#ef
	db #1e,#e5,#1f,#e0,#1f,#1f,#e5,#1f
.lbe0d equ $ + 6
	db #e0,#1f,#1f,#ef,#1f,#87,#e1,#0c
	db #18,#13,#18,#0c,#18,#13,#18,#0c
	db #18,#13,#18,#0c,#18,#13,#18,#17
	db #23,#13,#23,#17,#23,#13,#23,#0e
	db #23,#13,#23,#0e,#23,#13,#23,#0c
	db #18,#13,#18,#0c,#18,#13,#18,#0c
	db #18,#13,#18,#0c,#18,#13,#18,#87
.lbe3f
	db #17,#1e,#17,#1e,#10,#1c,#10,#1c
	db #e1,#17,#e0,#17,#17,#e1,#17,#17
	db #e0,#17,#17,#17,#17,#17,#17,#e1
.lbe59 equ $ + 2
	db #17,#87,#1a,#1e,#1a,#1e,#19,#1f
	db #19,#1f,#1a,#1f,#1a,#26,#1f,#e0
.lbe6e equ $ + 7
	db #13,#13,#13,#11,#10,#0e,#87,#8a
	db #d2,#88,#01,#01,#e5,#28,#e0,#28
	db #28,#e5,#28,#e0,#28,#28,#28,#27
	db #26,#25,#24,#23,#22,#21,#20,#1f
	db #1e,#1d,#1c,#1b,#1a,#19,#e5,#2a
	db #e0,#2a,#2a,#e5,#2a,#e0,#2a,#2a
	db #2a,#29,#28,#27,#26,#25,#24,#23
	db #22,#21,#20,#1f,#1e,#1d,#1c,#1b
	db #e5,#2b,#e0,#2b,#2b,#e5,#2b,#e0
	db #2b,#2b,#1f,#20,#21,#22,#23,#24
	db #25,#26,#27,#28,#29,#2a,#2b,#2c
.lbec5 equ $ + 6
.lbec2 equ $ + 3
	db #2d,#2f,#87,#d4,#92,#0c,#e1,#24
	db #23,#e0,#22,#23,#22,#21,#e1,#20
	db #1f,#1e,#1f,#e1,#21,#20,#e0,#1f
	db #20,#1f,#1e,#e1,#1d,#1c,#1b,#1c
	db #e0,#1f,#80,#1d,#1d,#e1,#19,#1a
	db #e0,#1f,#80,#1d,#1d,#e1,#19,#1a
	db #e0,#17,#18,#19,#1a,#1b,#1c,#1d
	db #1e,#1f,#20,#21,#23,#e1,#21,#1f
	db #e1,#24,#23,#e0,#22,#23,#22,#21
	db #e1,#20,#1f,#1e,#1f,#e1,#21,#20
	db #e0,#1f,#20,#1f,#1e,#e1,#1d,#1c
.lbf1a equ $ + 3
	db #1b,#1c,#87,#1b,#e0,#1b,#1b,#e1
	db #1e,#17,#e0,#1f,#21,#1f,#1e,#e1
	db #1c,#17,#23,#e0,#23,#23,#e1,#23
	db #23,#e0,#23,#22,#21,#20,#1f,#1e
.lbf3a equ $ + 3
	db #1d,#1a,#87,#1a,#e0,#1a,#1a,#e1
	db #21,#1a,#1b,#e0,#1b,#1b,#e3,#22
	db #e0,#23,#26,#25,#24,#e1,#23,#21
	db #1f,#e0,#1f,#1f,#1f,#1d,#1c,#1a
.lbf5a equ $ + 3
	db #92,#00,#87,#8b,#d1,#e5,#27,#e0
	db #27,#27,#e5,#27,#e0,#27,#27,#ef
.lbf69 equ $ + 2
	db #27,#87,#e1,#80,#e3,#27,#27,#27
	db #27,#27,#27,#27,#27,#27,#27,#27
	db #27,#27,#27,#27,#27,#27,#27,#27
.lbf85 equ $ + 6
	db #27,#27,#27,#27,#27,#87,#27,#27
	db #27,#e1,#27,#27,#e0,#27,#27,#e1
	db #27,#27,#e7,#27,#87
	db #89,#ff,#87,#89,#00,#87,#89,#01
.lbf9d equ $ + 1
	db #87,#89,#0b,#87
;	,#00,#0d,#80,#1c
;	db #8f,#e3,#1d,#e1,#1d,#1c,#1c,#1c
;	db #e5,#18,#e3,#19,#e1,#19,#14,#18
;	db #1b,#21,#e3,#21,#e1,#20,#20,#19
;	db #e3,#1a,#e1,#1b,#19,#1b,#1b,#e3
;	db #1b,#e1,#1b,#e3,#18,#e1,#18,#80
;	db #18,#80,#e3,#18,#e1,#1b,#21,#e2
;	db #21,#e0,#21,#e1,#20,#20,#19,#e3
;	db #1a,#e1,#19,#19,#18,#19,#1b,#e2
;	db #1a,#e0,#19,#e1,#18,#80,#c2,#1b
;	db #20,#80,#80,#c0,#92,#18,#87,#89
;	db #ff,#87,#89,#00,#87,#89,#01,#87
;	db #89,#0b,#87
;

;.l1_lbd84
;	db #24
;	dw lbd8b,lbd8f,lbd99
.l1_lbd8b
	dw l1_lbd9d,#0000
.l1_lbd8f
	dw l1_lbdd3,l1_lbe96,l1_lbdd3,l1_lbe99
	dw #0000
.l1_lbd99
	dw l1_lbe2b,#0000
.l1_lbd9d
	db #d2,#88,#01,#01,#e5,#21,#1c,#15
	db #1c,#15,#1c,#17,#1c,#17,#1c,#17
	db #1c,#17,#e4,#1c,#e0,#17,#e5,#15
	db #1c,#21,#1c,#15,#1c,#19,#e3,#1c
	db #e1,#21,#e5,#1a,#15,#17,#17,#e1
	db #19,#21,#1f,#e5,#1e,#17,#1c,#e3
.l1_lbdd3 equ $ + 6
	db #21,#e1,#1c,#e5,#21,#87,#88,#01
	db #01,#8a,#d4,#e5,#25,#e1,#24,#25
	db #28,#e7,#2d,#e1,#2c,#2d,#2f,#2d
	db #2c,#2d,#e2,#25,#e0,#28,#eb,#2c
	db #e5,#26,#e1,#25,#26,#28,#e7,#2c
	db #e1,#2b,#2c,#2d,#2c,#2b,#2c,#e2
	db #26,#e0,#2c,#eb,#25,#e5,#25,#e1
	db #24,#25,#28,#e7,#2d,#e1,#2c,#2d
	db #2f,#2d,#2c,#2d,#e2,#25,#e0,#28
	db #eb,#2a,#e5,#2a,#e1,#2a,#2c,#2d
	db #e7,#28,#e1,#27,#28,#2a,#2c,#2d
.l1_lbe2b equ $ + 6
	db #2f,#2d,#2c,#eb,#2d,#87,#8a,#d6
	db #e1,#90,#c8,#2d,#2d,#2d,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#c6,#28,#28
	db #28,#28,#28,#28,#28,#28,#28,#28
	db #28,#28,#28,#28,#28,#28,#28,#28
	db #28,#28,#28,#28,#28,#28,#c8,#2d
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#c2
	db #32,#32,#32,#32,#32,#32,#32,#32
	db #32,#32,#32,#32,#c2,#2d,#2d,#2d
	db #2d,#2d,#2d,#c6,#28,#28,#28,#28
	db #28,#28,#c8,#2d,#2d,#2d,#e5,#2d
.l1_lbe99 equ $ + 4
.l1_lbe96 equ $ + 1
	db #87,#89,#ff,#87,#89,#00,#87

;.l2_lbd84
;	db #24
;	dw l2_lbd8b,l2_lbd9d,l2_lbda5
.l2_lbd8b
	dw l2_lbff6,l2_lbdad
	dw l2_lbdd1,l2_lbdd1,l2_lbff3,l2_lbdad
	dw l2_lbdd1
	dw l2_lbdd1,#0000
.l2_lbd9d
	dw l2_lbe66,l2_lbe8b,l2_lbe8b,#0000
.l2_lbda5
	dw l2_lbf2c,l2_lbf51,l2_lbf51,#0000
.l2_lbdad
	db #8a,#88,#01,#01,#db,#e3,#14,#e1
	db #12,#e3,#11,#e1,#11,#16,#1d,#22
	db #16,#1d,#22,#e3,#0f,#e1,#0f,#0f
	db #e2,#0f,#e0,#0f,#e1,#14,#80,#0f
.l2_lbdd1 equ $ + 4
	db #14,#80,#80,#87,#e1,#14,#1b,#1b
	db #14,#1b,#1b,#16,#1d,#20,#16,#1c
	db #1d,#1b,#1b,#1b,#1b,#1d,#1f,#14
	db #1b,#1b,#20,#1f,#1d,#e5,#1b,#1c
	db #1d,#e1,#22,#1d,#1c,#1b,#21,#22
	db #e3,#1b,#e1,#0f,#14,#1b,#1c,#e3
	db #1b,#e1,#80,#e5,#1d,#18,#e1,#11
	db #18,#1f,#1d,#18,#80,#e3,#11,#e1
	db #1d,#e3,#18,#e1,#0c,#11,#18,#1a
	db #19,#18,#80,#e5,#1d,#18,#e1,#11
	db #18,#18,#e5,#18,#e3,#1d,#e1,#1b
	db #e3,#18,#e1,#0c,#e5,#11,#e3,#0f
	db #e1,#80,#14,#1b,#1b,#e3,#1d,#e1
	db #11,#16,#1d,#20,#16,#1d,#80,#0f
	db #1b,#1d,#1f,#1d,#1f,#14,#1d,#1c
	db #e3,#14,#e1,#80,#e3,#14,#e1,#12
	db #e3,#11,#e1,#11,#e3,#16,#e1,#20
	db #16,#1d,#1c,#e3,#1b,#e1,#0f,#1b
	db #1d,#1f,#20,#80,#1b,#14,#80,#80
	db #87
.l2_lbe66
	db #88,#01,#01,#8a,#d8,#92,#0c
	db #e1,#1b,#20,#22,#24,#25,#24,#24
	db #22,#1d,#e3,#22,#e1,#20,#1f,#1e
	db #1f,#24,#e2,#24,#e0,#22,#e1,#20
	db #8f,#27,#2c,#80,#1b,#87
.l2_lbe8b
	db #1b,#20
	db #22,#24,#25,#24,#24,#22,#1d,#e5
	db #22,#e1,#1b,#1f,#20,#22,#24,#22
	db #22,#20,#18,#e3,#1b,#e1,#80,#1b
	db #20,#22,#24,#25,#24,#24,#22,#1d
	db #e3,#22,#e1,#20,#1f,#1e,#1f,#24
	db #e2,#24,#e0,#22,#e7,#20,#e1,#80
	db #20,#20,#22,#20,#1f,#20,#1f,#1d
	db #e5,#18,#e1,#80,#20,#20,#22,#20
	db #1f,#e2,#20,#e0,#1f,#e9,#1d,#e1
	db #1f,#20,#22,#20,#1f,#20,#1f,#1d
	db #18,#18,#e3,#24,#e1,#22,#20,#22
	db #20,#1f,#20,#1f,#e5,#1d,#e3,#1b
	db #e1,#19,#18,#1b,#20,#24,#e2,#25
	db #e0,#24,#e1,#24,#22,#1d,#e3,#22
	db #e1,#1b,#1b,#1f,#20,#22,#24,#22
	db #22,#20,#18,#e3,#1b,#e1,#1b,#1b
	db #20,#22,#24,#e2,#25,#e0,#24,#e1
	db #24,#22,#1d,#e3,#22,#e1,#20,#1f
	db #1e,#1f,#24,#e2,#24,#e0,#22,#e7
	db #20,#e1,#80,#1b,#92,#18,#87
.l2_lbf2c
	db #88
	db #01,#01,#8a,#db,#92,#0c,#e1,#18
	db #1b,#1b,#21,#21,#21,#20,#20,#19
	db #e3,#1a,#e1,#1a,#19,#18,#19,#1f
	db #e2,#1f,#e0,#1f,#e1,#1b,#8f,#22
	db #27,#80,#80,#87
.l2_lbf51
	db #18,#18,#19,#1b
	db #1d,#1b,#20,#20,#19,#e5,#20,#e1
	db #19,#19,#19,#19,#19,#19,#e3,#1b
	db #e1,#18,#d8,#e5,#18,#18,#1c,#1d
	db #db,#e3,#1d,#e1,#19,#19,#18,#19
	db #1f,#e2,#1f,#e0,#1f,#e3,#1b,#e1
	db #19,#e3,#18,#e1,#80,#1d,#1d,#1d
	db #1c,#1c,#1c,#18,#e7,#14,#e1,#80
	db #1d,#1d,#1d,#1c,#e2,#1c,#e0,#1c
	db #e9,#18,#e1,#1c,#1d,#1d,#1d,#1c
	db #1c,#1c,#80,#14,#0d,#80,#1c,#8f
	db #e3,#1d,#e1,#1d,#1c,#1c,#1c,#e5
	db #18,#e3,#19,#e1,#19,#14,#18,#1b
	db #21,#e3,#21,#e1,#20,#20,#19,#e3
	db #1a,#e1,#1b,#19,#1b,#1b,#e3,#1b
	db #e1,#1b,#e3,#18,#e1,#18,#80,#18
	db #80,#e3,#18,#e1,#1b,#21,#e2,#21
	db #e0,#21,#e1,#20,#20,#19,#e3,#1a
	db #e1,#19,#19,#18,#19,#1b,#e2,#1a
	db #e0,#19,#e1,#18,#80,#c2,#1b,#20
.l2_lbff3 equ $ + 6
	db #80,#80,#c0,#92,#18,#87,#89,#ff
.l2_lbff6 equ $ + 1
	db #87,#89,#00,#87,#89,#01,#87,#89
	db #0b,#87

;.l3_lbd84
;	db #20
;	dw l3_lbd8b,l3_lbd8f,l3_lbd99
.l3_lbd8b
	dw l3_lbd9f,#0000
.l3_lbd8f
	dw l3_lbe4e,l3_lbdd0,l3_lbe4b,l3_lbdd4
	dw #0000
.l3_lbd99
	dw l3_lbdcd,l3_lbdd4,#0000
.l3_lbd9f
	db #8a,#88,#01,#01,#d8,#e2,#11,#e0
	db #12,#e5,#17,#12,#17,#12,#17,#1b
	db #19,#12,#16,#12,#16,#12,#19,#12
	db #17,#12,#17,#12,#17,#12,#17,#1b
	db #19,#19,#19,#12,#16,#12,#19,#12
.l3_lbdcd equ $ + 6
	db #e1,#17,#12,#1b,#17,#87,#88,#01
.l3_lbdd4 equ $ + 5
.l3_lbdd0 equ $ + 1
	db #01,#8a,#d9,#92,#0c,#e2,#1d,#e0
	db #1e,#e7,#27,#e2,#22,#e0,#23,#e7
	db #23,#e2,#22,#e0,#23,#e3,#1e,#e0
	db #22,#23,#e3,#1e,#e0,#22,#23,#e7
	db #1c,#e2,#1f,#e0,#20,#e7,#28,#e2
	db #24,#e0,#25,#e7,#25,#e2,#23,#e0
	db #1c,#e1,#23,#e2,#22,#e0,#1c,#e1
	db #22,#e2,#20,#e0,#1c,#e7,#1b,#e2
	db #1d,#e0,#1e,#e7,#27,#e2,#22,#e0
	db #23,#e7,#23,#e2,#22,#e0,#23,#e3
	db #1e,#e0,#22,#23,#e3,#1e,#e0,#22
	db #23,#e7,#1c,#e2,#1f,#e0,#20,#e7
	db #28,#e2,#24,#e0,#25,#e7,#25,#e2
	db #23,#e0,#1c,#e1,#23,#e2,#22,#e0
	db #1c,#e1,#22,#e2,#20,#e0,#16,#e7
.l3_lbe4e equ $ + 7
.l3_lbe4b equ $ + 4
	db #17,#92,#18,#87,#89,#ff,#87,#89
	db #00,#87

;.l4_lbd84
;	db #28
;	dw l4_lbd8b,l4_lbd8f,l4_lbd99
.l4_lbd8b
	dw l4_lbd9d,#0000
.l4_lbd8f
	dw l4_lbec7,l4_lbdcf,l4_lbec4,l4_lbdd7
	dw #0000
.l4_lbd99
	dw l4_lbe44,#0000
.l4_lbd9d
	db #8a,#d2,#88,#01,#01,#e5,#80,#0e
	db #0e,#0e,#0e,#10,#10,#10,#10,#09
	db #09,#09,#09,#0e,#0e,#0e,#0e,#12
	db #12,#06,#06,#07,#07,#e3,#07,#e1
	db #10,#10,#13,#17,#e5,#10,#09,#0e
	db #12,#13,#15,#e1,#cb,#0e,#80,#0e
.l4_lbdcf equ $ + 2
	db #c0,#87,#8a,#d4,#88,#01,#01,#e1
.l4_lbdd7 equ $ + 2
	db #92,#0c,#1a,#1e,#21,#e3,#21,#e1
	db #2d,#2d,#80,#2a,#2a,#80,#1a,#1a
	db #1e,#21,#e3,#21,#e1,#2d,#2d,#80
	db #2b,#2b,#80,#19,#19,#1c,#23,#e3
	db #23,#e1,#2f,#2f,#80,#2b,#2b,#80
	db #19,#19,#1c,#1f,#e3,#23,#e1,#2f
	db #2f,#80,#2a,#2a,#80,#1a,#1a,#1e
	db #21,#e3,#26,#e1,#32,#32,#80,#2d
	db #2d,#80,#1a,#1a,#1e,#21,#e3,#26
	db #e1,#32,#32,#80,#2f,#2f,#80,#1c
	db #1c,#1f,#23,#e7,#23,#e1,#20,#21
	db #e7,#2a,#e1,#26,#1e,#e3,#1e,#e1
	db #1c,#e3,#23,#e1,#21,#1a,#e0,#80
.l4_lbe44 equ $ + 7
	db #1a,#e1,#1a,#92,#18,#d2,#87,#8a
	db #d6,#e5,#80,#e1,#80,#c6,#26,#26
	db #80,#c6,#26,#26,#80,#c8,#26,#26
	db #80,#26,#c6,#26,#80,#c4,#2d,#2d
	db #80,#c4,#2d,#2d,#80,#c3,#2d,#2d
	db #80,#c3,#2d,#2d,#80,#c4,#2d,#2d
	db #80,#c4,#2d,#2d,#80,#c3,#2d,#2d
	db #80,#c3,#2d,#2d,#80,#c6,#26,#26
	db #80,#c6,#26,#26,#80,#c8,#26,#26
	db #80,#26,#c6,#26,#80,#c6,#26,#26
	db #80,#c6,#26,#26,#80,#c6,#1a,#1a
	db #80,#c6,#1a,#1a,#80,#cc,#2f,#2f
	db #80,#cc,#2f,#2f,#c2,#2b,#80,#c0
	db #1c,#1c,#1f,#23,#80,#c3,#2d,#2d
	db #80,#c3,#2d,#2d,#80,#c6,#26,#26
	db #80,#c6,#26,#26,#e5,#c1,#28,#c3
.l4_lbec4 equ $ + 7
	db #21,#e1,#cb,#26,#80,#26,#87,#89
.l4_lbec7 equ $ + 2
	db #ff,#87,#89,#00,#87
;
.music_info
	db "Circus Games (1989)(Tynesoft)(David Whittaker)",0
	db "Intro + all levels musics assembled by Megachur",0

	read "music_end.asm"
