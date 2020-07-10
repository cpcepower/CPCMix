; Music of Emlyn Hughes Arcade Quiz (1991)(Audiogenic Software LTD)(David Whittaker)()
; Ripped by Megachur the 15/12/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EMLYNHAQ.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #b047
FIRST_THEME				equ 0
LAST_THEME				equ 8

	read "music_header.asm"

;
.init_music
;
	push af
	call lb278
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,lbbaa
	add hl,bc
	ld a,(hl)
	ld (lb123),a
	ld (lb465),a
	inc hl
	ld ix,lb0a2
	ld c,#22
	ld a,#03
.lb068
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#20),b
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
	jr nz,lb068
	ld (lb3da),a
	dec a
	ld (lb466),a
	ld (lb460),a
	ret
.lb0a2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.lb0c4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.lb0e6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(lb460)
	ld hl,lb461
	or (hl)
	inc hl
	or (hl)
	inc hl
	or (hl)
	ret z
	call lb6f6
	ld a,(lb460)
	and a
	jr z,lb16e
.lb11e equ $ + 1
	ld a,#00
	ld (lb16a),a
.lb123 equ $ + 1
	ld a,#01
	ld hl,lb466
	add (hl)
	ld (hl),a
	jr nc,lb142
	ld b,#00
	ld ix,lb0a2
	call lb32b
	ld ix,lb0c4
	call lb32b
	ld ix,lb0e6
	call lb32b
.lb142
	ld ix,lb0a2
	call lb3a7
	ld (lb467),hl
	ld (lb46f),a
	ld ix,lb0c4
	call lb3a7
	ld (lb469),hl
	ld (lb470),a
	ld ix,lb0e6
	call lb3a7
	ld (lb46b),hl
	ld (lb471),a
.lb16a equ $ + 1
	ld a,#00
	ld (lb46d),a
.lb16e
	ld a,(lb460)
	and a
	jr nz,lb184
	ld (lb46f),a
	ld (lb470),a
	ld (lb471),a
	ld a,#3f
	ld (lb46e),a
	jr lb1ac
.lb184
	ld a,(lb464)
	and #0f
	xor #0f
	jr z,lb1ac
	ld b,a
	ld a,(lb46f)
	sub b
	jr nc,lb195
	xor a
.lb195
	ld (lb46f),a
	ld a,(lb470)
	sub b
	jr nc,lb19f
	xor a
.lb19f
	ld (lb470),a
	ld a,(lb471)
	sub b
	jr nc,lb1a9
	xor a
.lb1a9
	ld (lb471),a
.lb1ac
	ld a,(lb461)
	and a
	jr z,lb1d4
	ld hl,(lb474)
	ld (lb467),hl
	ld a,(lbb52)
	ld b,a
	bit 3,a
	jr nz,lb1c6
	ld a,(lb47a)
	ld (lb46d),a
.lb1c6
	ld hl,lb46e
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(lb47c)
	ld (lb46f),a
.lb1d4
	ld a,(lb462)
	and a
	jr z,lb1fe
	ld hl,(lb476)
	ld (lb469),hl
	ld a,(lbb67)
	ld b,a
	bit 3,a
	jr nz,lb1ee
	ld a,(lb47a)
	ld (lb46d),a
.lb1ee
	ld hl,lb46e
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(lb47d)
	ld (lb470),a
.lb1fe
	ld a,(lb463)
	and a
	jr z,lb22a
	ld hl,(lb478)
	ld (lb46b),hl
	ld a,(lbb7c)
	ld b,a
	bit 3,a
	jr nz,lb218
	ld a,(lb47a)
	ld (lb46d),a
.lb218
	ld hl,lb46e
	ld a,(hl)
.lb21c
	or #24
	rlc b
	rlc b
	and b
	ld (hl),a
	ld a,(lb47e)
	ld (lb471),a
.lb22a
	ld hl,lb471
	ld d,#0a
.lb22f
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
	jp p,lb22f
	ret
.lb250
	ld de,#0a00
.lb253
	call lb25d
	dec d
	jp p,lb253
	ld de,#073f
.lb25d
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
.lb278
;
	xor a
	ld (lb460),a
	call lb28f
	xor a
	ld (lb46f),a
	ld (lb470),a
	ld (lb471),a
	ld a,#0f
	ld (lb464),a
	ret
.lb28f
	xor a
	ld (lb461),a
	ld (lb462),a
	ld (lb463),a
	jp lb250
	db #84,#78,#71,#00,#00,#00,#00,#10
	db #5e,#4f,#3a,#00,#00,#00,#05,#7e
	db #00,#00,#4d
	pop hl
	jp lb278
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
	jr nz,lb2d5
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb2d5
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb338
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,lb445
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb338
	ld a,(de)
	inc de
	ld (lb3da),a
	jr lb338
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr lb338
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr lb338
	ld (ix+#1d),b
	jr lb338
	set 1,(ix+#00)
	jr lb338
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb367
	jr lb363
.lb32b
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb338
	ld a,(de)
	inc de
	and a
	jp m,lb374
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb34a
	ld (lb11e),a
.lb34a
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.lb363
	set 5,(ix+#00)
.lb367
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.lb374
	cp #c0
	jr c,lb39f
	add #20
	jr c,lb380
	add #10
	jr c,lb387
.lb380
	inc a
	ld (ix+#11),a
	jp lb338
.lb387
	ld hl,lb510
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
	jp lb338
.lb39f
	ld hl,lb21c
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb3a7
	ld c,(ix+#00)
	bit 5,c
	jr z,lb3d9
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,lb3d3
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,lb3d3
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.lb3d3
	ld a,(ix+#18)
	ld (ix+#13),a
.lb3da equ $ + 1
.lb3d9
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld hl,lb480
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb43b
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb404
	bit 0,c
	jr nz,lb422
.lb404
	bit 5,l
	jr nz,lb414
	sub (ix+#1b)
	jr nc,lb41f
	set 5,(ix+#1d)
	sub a
	jr lb41f
.lb414
	add (ix+#1b)
	cp b
	jr c,lb41f
	res 5,(ix+#1d)
	ld a,b
.lb41f
	ld (ix+#1c),a
.lb422
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb42d
	dec d
.lb42d
	add #a0
	jr c,lb439
.lb431
	sla e
	rl d
	add #18
	jr nc,lb431
.lb439
	add hl,de
	ex de,hl
.lb43b
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.lb445 equ $ + 1
	ld a,#38
	jr nz,lb452
	ld a,(lb11e)
	xor #08
	ld (lb16a),a
	ld a,#07
.lb452
	ld hl,lb46e
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.lb467 equ $ + 7
.lb466 equ $ + 6
.lb465 equ $ + 5
.lb464 equ $ + 4
.lb463 equ $ + 3
.lb462 equ $ + 2
.lb461 equ $ + 1
.music_end
.lb460
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb46f equ $ + 7
.lb46e equ $ + 6
.lb46d equ $ + 5
.lb46b equ $ + 3
.lb469 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#3f,#0f
.lb477 equ $ + 7
.lb476 equ $ + 6
.lb475 equ $ + 5
.lb474 equ $ + 4
.lb471 equ $ + 1
.lb470
	db #0f,#0f,#00,#00,#00,#00,#00,#00
.lb47e equ $ + 6
.lb47d equ $ + 5
.lb47c equ $ + 4
.lb47a equ $ + 2
.lb479 equ $ + 1
.lb478
	db #00,#00,#00,#3f,#00,#00,#00,#00
.lb480
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
.lb510
	dw lb531,lb540,lb547,lb559
	dw lb56b,lb56f,lb574,lb57b
	dw lb584,lb595,lb59f,lb5a9
	dw lb5b3,lb5c4,lb5d4,lb5d7
.lb531 equ $ + 1
	db #01,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#01
.lb547 equ $ + 7
.lb540
	db #0d,#0e,#0f,#0e,#0d,#87,#01,#0f
	db #0e,#0d,#0b,#0d,#0c,#0a,#09,#0b
	db #0a,#08,#07,#09,#08,#06,#05,#87
.lb559 equ $ + 1
	db #01,#0f,#0f,#0d,#0b,#0d,#0c,#0a
	db #09,#0b,#0a,#08,#07,#09,#08,#06
.lb56f equ $ + 7
.lb56b equ $ + 3
	db #05,#87,#01,#0f,#0e,#87,#01,#0f
.lb574 equ $ + 4
	db #0e,#0d,#87,#01,#0e,#0f,#0e,#0d
.lb57b equ $ + 3
	db #0c,#87,#02,#0e,#0d,#0c,#0b,#0a
.lb584 equ $ + 4
	db #09,#08,#87,#08,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.lb595 equ $ + 5
	db #03,#02,#01,#87,#02,#0f,#0e,#0d
.lb59f equ $ + 7
	db #0c,#0b,#0a,#09,#08,#87,#04,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#87
.lb5a9 equ $ + 1
	db #03,#0f,#0e,#0d,#0c,#0b,#0a,#09
.lb5b3 equ $ + 3
	db #08,#87,#01,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.lb5c4 equ $ + 4
	db #02,#01,#87,#01,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.lb5d7 equ $ + 7
.lb5d4 equ $ + 4
	db #02,#01,#87,#01,#0f,#87,#01,#0c
	db #87
	ld hl,lb5e2
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb5e2
	inc bc
	ld e,l
	or a
	ld hl,lb461
	ld (hl),#00
	ld hl,lb922
	add a
	add l
	ld l,a
	jr nc,lb5f3
	inc h
.lb5f3
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbb4c
.lb5fb
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb5fb
	ld a,(lbb4d)
	ld (lbb5a),a
	ld hl,(lbb4e)
	ld (lb474),hl
	ld a,(lbb52)
	bit 3,a
	jr nz,lb618
	ld a,l
	ld (lb47a),a
.lb618
	ld a,(lbb57)
	ld (lbb5b),a
	ld a,(lbb59)
	ld (lbb60),a
	ld a,(lbb56)
	ld hl,lbac2
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbb5c),hl
	ld (lbb5e),hl
	ld a,(hl)
	ld (lb47c),a
	ld hl,lb461
	inc (hl)
	ret
	ld hl,lb462
	ld (hl),#00
	ld hl,lb922
	add a
	add l
	ld l,a
	jr nc,lb64e
	inc h
.lb64e
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbb61
.lb656
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb656
	ld a,(lbb62)
	ld (lbb6f),a
	ld hl,(lbb63)
	ld (lb476),hl
	ld a,(lbb67)
	bit 3,a
	jr nz,lb673
	ld a,l
	ld (lb47a),a
.lb673
	ld a,(lbb6c)
	ld (lbb70),a
	ld a,(lbb6e)
	ld (lbb75),a
	ld a,(lbb6b)
	ld hl,lbac2
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbb71),hl
	ld (lbb73),hl
	ld a,(hl)
	ld (lb47d),a
	ld hl,lb462
	inc (hl)
	ret
	ld hl,lb463
	ld (hl),#00
	ld hl,lb922
	add a
	add l
	ld l,a
	jr nc,lb6a9
	inc h
.lb6a9
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbb76
.lb6b1
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb6b1
	ld a,(lbb77)
	ld (lbb84),a
	ld hl,(lbb78)
	ld (lb478),hl
	ld a,(lbb7c)
	bit 3,a
	jr nz,lb6ce
	ld a,l
	ld (lb47a),a
.lb6ce
	ld a,(lbb81)
	ld (lbb85),a
	ld a,(lbb83)
	ld (lbb8a),a
	ld a,(lbb80)
	ld hl,lbac2
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbb86),hl
	ld (lbb88),hl
	ld a,(hl)
	ld (lb47e),a
	ld hl,lb463
	inc (hl)
	ret
.lb6f6
	call lbb8b
	ld a,(lb461)
	and a
	call nz,lb7be
	ld a,(lb462)
	and a
	call nz,lb870
	ld a,(lb463)
	and a
	ret z
	ld a,(lbb76)
	and a
	jr nz,lb71c
	ld a,(lbb82)
	and a
	jr nz,lb71c
	ld (lb463),a
	ret
.lb71c
	dec a
	ld (lbb76),a
	ld a,(lbb84)
	and a
	jr nz,lb754
	ld a,(lbb82)
	and a
	jr nz,lb732
	ld a,(lbb7f)
	and a
	jr z,lb796
.lb732
	dec a
	ld (lbb7f),a
	ld a,(lbb77)
	ld (lbb84),a
	ld a,(lbb7d)
	and a
	jr z,lb745
	ld a,(lbba8)
.lb745
	ld b,a
	ld a,(lbb78)
	add b
	ld (lb478),a
	ld a,(lbb79)
	add b
	ld (lb479),a
.lb754
	ld hl,lbb84
	dec (hl)
	ld hl,lbb83
	ld a,(hl)
	and a
	jr z,lb766
	ld hl,lbb8a
	dec (hl)
	jr nz,lb789
	ld (hl),a
.lb766
	ld a,(lbb7e)
	and a
	jr z,lb789
	jp p,lb77c
	ld hl,(lb478)
	ld de,(lbb7a)
	add hl,de
	ld (lb478),hl
	jr lb789
.lb77c
	ld hl,(lb478)
	ld de,(lbb7a)
	and a
	sbc hl,de
	ld (lb478),hl
.lb789
	ld a,(lbb7c)
	bit 3,a
	jr nz,lb796
	ld a,(lb478)
	ld (lb47a),a
.lb796
	ld a,(lbb85)
	dec a
	ld (lbb85),a
	jr nz,lb7bd
	ld a,(lbb81)
	ld (lbb85),a
	ld hl,(lbb88)
	ld a,(hl)
	inc hl
	and a
	jp p,lb7b7
	cp #80
	jr nz,lb7bd
	ld hl,(lbb86)
	ld a,(hl)
	inc hl
.lb7b7
	ld (lbb88),hl
	ld (lb47e),a
.lb7bd
	ret
.lb7be
	ld a,(lbb4c)
	and a
	jr nz,lb7ce
	ld a,(lbb58)
	and a
	jr nz,lb7ce
	ld (lb461),a
	ret
.lb7ce
	dec a
	ld (lbb4c),a
	ld a,(lbb5a)
	and a
	jr nz,lb806
	ld a,(lbb58)
	and a
	jr nz,lb7e4
	ld a,(lbb55)
	and a
	jr z,lb848
.lb7e4
	dec a
	ld (lbb55),a
	ld a,(lbb4d)
	ld (lbb5a),a
	ld a,(lbb53)
	and a
	jr z,lb7f7
	ld a,(lbba6)
.lb7f7
	ld b,a
	ld a,(lbb4e)
	add b
	ld (lb474),a
	ld a,(lbb4f)
	add b
	ld (lb475),a
.lb806
	ld hl,lbb5a
	dec (hl)
	ld hl,lbb59
	ld a,(hl)
	and a
	jr z,lb818
	ld hl,lbb60
	dec (hl)
	jr nz,lb83b
	ld (hl),a
.lb818
	ld a,(lbb54)
	and a
	jr z,lb83b
	jp p,lb82e
	ld hl,(lb474)
	ld de,(lbb50)
	add hl,de
	ld (lb474),hl
	jr lb83b
.lb82e
	ld hl,(lb474)
	ld de,(lbb50)
	and a
	sbc hl,de
	ld (lb474),hl
.lb83b
	ld a,(lbb52)
	bit 3,a
	jr nz,lb848
	ld a,(lb474)
	ld (lb47a),a
.lb848
	ld a,(lbb5b)
	dec a
	ld (lbb5b),a
	jr nz,lb86f
	ld a,(lbb57)
	ld (lbb5b),a
	ld hl,(lbb5e)
	ld a,(hl)
	inc hl
	and a
	jp p,lb869
	cp #80
	jr nz,lb86f
	ld hl,(lbb5c)
	ld a,(hl)
	inc hl
.lb869
	ld (lbb5e),hl
	ld (lb47c),a
.lb86f
	ret
.lb870
	ld a,(lbb61)
	and a
	jr nz,lb880
	ld a,(lbb6d)
	and a
	jr nz,lb880
	ld (lb462),a
	ret
.lb880
	dec a
	ld (lbb61),a
	ld a,(lbb6f)
	and a
	jr nz,lb8b8
	ld a,(lbb6d)
	and a
	jr nz,lb896
	ld a,(lbb6a)
	and a
	jr z,lb8fa
.lb896
	dec a
	ld (lbb6a),a
	ld a,(lbb62)
	ld (lbb6f),a
	ld a,(lbb68)
	and a
	jr z,lb8a9
	ld a,(lbba7)
.lb8a9
	ld b,a
	ld a,(lbb63)
	add b
	ld (lb476),a
	ld a,(lbb64)
	add b
	ld (lb477),a
.lb8b8
	ld hl,lbb6f
	dec (hl)
	ld hl,lbb6e
	ld a,(hl)
	and a
	jr z,lb8ca
	ld hl,lbb75
	dec (hl)
	jr nz,lb8ed
	ld (hl),a
.lb8ca
	ld a,(lbb69)
	and a
	jr z,lb8ed
	jp p,lb8e0
	ld hl,(lb476)
	ld de,(lbb65)
	add hl,de
	ld (lb476),hl
	jr lb8ed
.lb8e0
	ld hl,(lb476)
	ld de,(lbb65)
	and a
	sbc hl,de
	ld (lb476),hl
.lb8ed
	ld a,(lbb67)
	bit 3,a
	jr nz,lb8fa
	ld a,(lb476)
	ld (lb47a),a
.lb8fa
	ld a,(lbb70)
	dec a
	ld (lbb70),a
	jr nz,lb921
	ld a,(lbb6c)
	ld (lbb70),a
	ld hl,(lbb73)
	ld a,(hl)
	inc hl
	and a
	jp p,lb91b
	cp #80
	jr nz,lb921
	ld hl,(lbb71)
	ld a,(hl)
	inc hl
.lb91b
	ld (lbb73),hl
	ld (lb47d),a
.lb921
	ret
.lb922
	dw #b956,#b964,#b972,#b980
	dw #b98e,#b99c,#b9aa,#b9b8
	dw #b9c6,#b9d4,#b9e2,#b9f0
	dw #b9fe,#ba0c,#ba1a,#ba28
	dw #ba36,#ba44,#ba52,#ba60
	dw #ba6e,#ba7c,#ba8a,#ba98
	dw #baa6,#bab4
	db #28,#63,#88,#01,#00,#00,#f6,#00
	db #01,#ff,#01,#02,#00,#02,#78,#ff
	db #00,#03,#03,#00,#fe,#00,#01,#ff
	db #0a,#02,#00,#00,#0a,#02,#84,#00
	db #02,#00,#fe,#00,#01,#63,#00,#01
	db #00,#00,#0a,#02,#18,#07,#08,#00
	db #fe,#00,#01,#63,#00,#01,#00,#00
	db #04,#02,#18,#02,#01,#00,#fe,#00
	db #01,#63,#09,#01,#00,#00,#1e,#0a
	db #00,#04,#01,#02,#fe,#00,#ff,#00
	db #00,#06,#00,#0a,#1e,#0a,#80,#05
	db #01,#02,#fe,#00,#ff,#00,#00,#06
	db #00,#0a,#19,#63,#08,#01,#00,#00
	db #f6,#00,#01,#ff,#01,#02,#00,#02
	db #1e,#05,#c7,#00,#41,#00,#f6,#00
	db #ff,#63,#00,#02,#00,#00,#0f,#02
	db #77,#04,#08,#00,#fe,#00,#ff,#63
	db #00,#05,#00,#00,#18,#0f,#28,#00
	db #06,#00,#fe,#00,#01,#63,#08,#02
	db #00,#04,#18,#0f,#50,#00,#0c,#00
	db #fe,#00,#01,#63,#08,#02,#00,#04
	db #0a,#06,#09,#05,#21,#00,#f6,#00
	db #ff,#00,#00,#01,#00,#00,#07,#05
	db #cc,#00,#21,#00,#f6,#00,#ff,#63
	db #08,#01,#00,#00,#23,#0b,#01,#04
	db #21,#00,#fe,#00,#01,#63,#00,#05
	db #00,#00,#2d,#0b,#81,#03,#21,#00
	db #fe,#00,#ff,#63,#00,#05,#00,#00
	db #14,#63,#87,#00,#21,#00,#f6,#00
	db #ff,#63,#00,#02,#00,#00,#32,#16
	db #01,#05,#11,#00,#fe,#00,#ff,#63
	db #0b,#03,#ff,#00,#32,#12,#81,#05
	db #09,#00,#fe,#00,#01,#63,#0b,#03
	db #ff,#00,#32,#09,#01,#06,#11,#00
	db #fe,#00,#01,#63,#07,#01,#ff,#00
	db #32,#0f,#81,#02,#11,#00,#fe,#00
	db #ff,#63,#0b,#03,#ff,#00,#08,#02
	db #00,#03,#20,#00,#fe,#00,#ff,#63
	db #00,#02,#00,#00,#37,#0f,#3c,#00
	db #0c,#00,#fe,#00,#01,#63,#00,#04
	db #00,#05,#14,#04,#f6,#02,#0a,#00
	db #fe,#00,#01,#ff,#08,#02,#00,#00
	db #0f,#02,#54,#00,#09,#00,#fe,#00
	db #01,#63,#08,#02,#00,#00,#23,#01
	db #28,#00,#00,#00,#f6,#00,#00,#00
.lbac2 equ $ + 4
	db #00,#04,#00,#00,#da,#ba,#ea,#ba
	db #03,#bb,#0a,#bb,#1b,#bb,#21,#bb
	db #2a,#bb,#2f,#bb,#31,#bb,#40,#bb
	db #44,#bb,#46,#bb,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
	db #03,#02,#01,#ff,#06,#08,#0a,#0b
	db #0c,#0d,#0e,#0e,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#09,#08,#07,#06,#05
	db #04,#03,#02,#01,#ff,#06,#08,#0a
	db #0b,#0c,#0d,#ff,#06,#08,#0a,#0b
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
	db #04,#03,#02,#01,#ff,#01,#04,#07
	db #09,#0c,#ff,#0d,#00,#00,#0e,#00
	db #00,#0d,#00,#ff,#01,#04,#07,#09
	db #80,#0c,#80,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#ff,#0d,#09,#01,#ff,#0b,#80
.lbb4d equ $ + 7
.lbb4c equ $ + 6
	db #0a,#0b,#0c,#0d,#0c,#80,#00,#00
.lbb55 equ $ + 7
.lbb54 equ $ + 6
.lbb53 equ $ + 5
.lbb52 equ $ + 4
.lbb50 equ $ + 2
.lbb4f equ $ + 1
.lbb4e
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb5c equ $ + 6
.lbb5b equ $ + 5
.lbb5a equ $ + 4
.lbb59 equ $ + 3
.lbb58 equ $ + 2
.lbb57 equ $ + 1
.lbb56
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb65 equ $ + 7
.lbb64 equ $ + 6
.lbb63 equ $ + 5
.lbb62 equ $ + 4
.lbb61 equ $ + 3
.lbb60 equ $ + 2
.lbb5e
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb6d equ $ + 7
.lbb6c equ $ + 6
.lbb6b equ $ + 5
.lbb6a equ $ + 4
.lbb69 equ $ + 3
.lbb68 equ $ + 2
.lbb67 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb75 equ $ + 7
.lbb73 equ $ + 5
.lbb71 equ $ + 3
.lbb70 equ $ + 2
.lbb6f equ $ + 1
.lbb6e
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb7d equ $ + 7
.lbb7c equ $ + 6
.lbb7a equ $ + 4
.lbb79 equ $ + 3
.lbb78 equ $ + 2
.lbb77 equ $ + 1
.lbb76
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb85 equ $ + 7
.lbb84 equ $ + 6
.lbb83 equ $ + 5
.lbb82 equ $ + 4
.lbb81 equ $ + 3
.lbb80 equ $ + 2
.lbb7f equ $ + 1
.lbb7e
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb8a equ $ + 4
.lbb88 equ $ + 2
.lbb86
	db #00,#00,#00,#00,#00
.lbb8b
	ld a,(lbba6)
	and #48
	adc #38
	sla a
	sla a
	ld hl,lbba9
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.lbba9 equ $ + 3
.lbba8 equ $ + 2
.lbba7 equ $ + 1
.lbba6
	db #ff,#80,#1b,#34
.lbbaa
	db #2a
	dw lbc41,lbbe9,lbc8f
	db #34
	dw lbc41,lbbe9,lbe31
	db #60
	dw lbe51,lbe4d,lbe55
	db #42
	dw lbe87,lbe83,lbe8b
	db #60
	dw lbeb9,lbeb5,lbebd
	db #32
	dw lbefd,lbef9,lbf01
	db #27
	dw lbf39,lbf35,lbf3d
	db #ff
	dw lbf78,lbf74,lbf7c
	db #ff
	dw lbfb4,lbfb0,lbfb8
.lbbe9
	dw lbccb,lbd15,lbccb,lbccb
	dw lbce2,lbce2,lbccb,lbccb
	dw lbce2,lbcf3,lbccb,lbccb
	dw lbce2,lbce2,lbccb,lbccb
	dw lbce2,lbcf3,lbff3,lbce2
	dw lbff6,lbce2,lbff9,lbce2
	dw lbcf3,lbffc,lbccb,lbccb
	dw lbce2,lbce2,lbccb,lbccb
	dw lbce2,lbcf3,lbccb,lbccb
	dw lbce2,lbce2,lbccb,lbccb
	dw lbce2,lbcf3,lbff9,#0000
.lbc41
	dw lbd26,lbd6d,lbd26,lbd26
	dw lbd3a,lbd3a,lbd26,lbd26
	dw lbd3a,lbd4b,lbd26,lbd26
	dw lbd3a,lbd3a,lbd26,lbd26
	dw lbd3a,lbd4b,lbd3a,lbd3a
	dw lbd3a,lbd4b,lbd26,lbd26
	dw lbd3a,lbd3a,lbd26,lbd26
	dw lbd3a,lbd4b,lbd26,lbd26
	dw lbd3a,lbd3a,lbd26,lbd26
.lbc8f equ $ + 6
	dw lbd3a,lbd4b,#0000,lbd7e
	dw lbda4,lbdc7,lbda4,lbde8
	dw lbfef,lbda4,lbfec,lbdc7
	dw lbfef,lbda4,lbfec,lbde8
	dw lbe09,lbe09,lbe09,lbe1d
	dw lbda4,lbdc7,lbda4,lbde8
	dw lbfef,lbda4,lbfec,lbdc7
	dw lbfef,lbda4,lbfec,lbde8
	dw #0000
.lbccb
	db #8a,#da,#88,#01,#01,#e0,#18,#80
	db #1f,#80,#13,#80,#1f,#18,#80,#18
.lbce2 equ $ + 7
	db #1f,#80,#13,#80,#1f,#80,#87,#11
	db #80,#18,#80,#0c,#80,#18,#11,#80
	db #11,#18,#80,#0c,#80,#18,#80,#87
.lbcf3
	db #13,#80,#1a,#80,#0e,#80,#1a,#13
	db #80,#13,#1a,#80,#0e,#80,#1a,#80
	db #87,#15,#80,#1c,#80,#10,#80,#1c
	db #15,#80,#15,#1c,#80,#10,#80,#1c
.lbd15 equ $ + 2
	db #80,#87,#11,#80,#18,#80,#0c,#80
	db #18,#13,#80,#13,#1a,#80,#0e,#80
.lbd26 equ $ + 3
	db #1a,#80,#87,#8a,#da,#e0,#18,#80
	db #1c,#80,#13,#80,#1c,#18,#80,#18
.lbd3a equ $ + 7
	db #1c,#80,#13,#80,#1c,#80,#87,#11
	db #80,#15,#80,#0c,#80,#15,#11,#80
	db #11,#15,#80,#0c,#80,#15,#80,#87
.lbd4b
	db #13,#80,#17,#80,#0e,#80,#17,#13
	db #80,#13,#17,#80,#0e,#80,#17,#80
	db #87,#15,#80,#18,#80,#10,#80,#18
	db #15,#80,#15,#18,#80,#10,#80,#18
.lbd6d equ $ + 2
	db #80,#87,#11,#80,#15,#80,#0c,#80
	db #15,#13,#80,#13,#17,#80,#0e,#80
.lbd7e equ $ + 3
	db #17,#80,#87,#8a,#88,#01,#01,#dc
	db #e0,#80,#80,#28,#80,#80,#80,#28
	db #80,#80,#80,#28,#80,#80,#80,#28
	db #80,#80,#80,#29,#80,#80,#2a,#80
	db #80,#2b,#e2,#80,#e0,#37,#e2,#80
.lbda4 equ $ + 1
	db #87,#e0,#db,#28,#80,#2b,#80,#2d
	db #80,#27,#28,#8f,#2b,#2d,#80,#2c
	db #80,#2d,#8f,#28,#80,#2b,#80,#2d
	db #80,#27,#28,#8f,#2b,#2d,#80,#30
.lbdc7 equ $ + 4
	db #80,#2d,#8f,#87,#30,#80,#32,#80
	db #34,#80,#2d,#30,#8f,#32,#34,#80
	db #33,#80,#34,#8f,#30,#80,#32,#80
	db #34,#80,#2d,#30,#8f,#32,#34,#80
.lbde8 equ $ + 5
	db #35,#80,#34,#8f,#87,#26,#80,#28
	db #80,#29,#80,#2b,#80,#2d,#80,#2f
	db #80,#30,#80,#32,#8f,#34,#80,#32
	db #80,#30,#80,#2f,#80,#2d,#80,#2b
.lbe09 equ $ + 6
	db #80,#28,#80,#27,#8f,#87,#dc,#92
	db #f4,#35,#80,#37,#80,#39,#80,#35
	db #37,#8f,#39,#35,#80,#37,#80,#39
.lbe1d equ $ + 2
	db #8f,#87,#db,#37,#80,#39,#80,#3b
	db #80,#37,#39,#8f,#3b,#3c,#80,#3e
.lbe31 equ $ + 6
	db #80,#3f,#8f,#92,#00,#87,#35,#be
	db #00,#00,#8a,#88,#01,#01,#e0,#db
	db #89,#03,#28,#80,#2b,#80,#2d,#80
	db #27,#28,#8f,#2b,#2d,#80,#dc,#e1
	db #30,#8e
.lbe51 equ $ + 4
.lbe4d
	dw lbe59,#0000,lbe67,#0000
.lbe55
	dw lbe75,#0000
.lbe59
	db #8a,#dd,#88,#01,#01,#e2,#89,#0d
.lbe67 equ $ + 6
	db #1f,#23,#26,#e5,#2b,#8e,#8a,#dd
	db #88,#01,#01,#e0,#80,#e2,#23,#26
.lbe75 equ $ + 4
	db #2b,#e8,#2f,#8e,#8a,#88,#01,#01
	db #dd,#e1,#80,#e2,#26,#2b,#2f,#e8
	db #32,#8e
.lbe87 equ $ + 4
.lbe83
	db #8f,#be,#00,#00,#9d,#be,#00,#00
.lbe8b
	db #a9,#be,#00,#00
	db #8a,#dc,#88,#01,#01,#e0,#89,#f8
	db #22,#21,#20,#e3,#1f,#8e,#8a,#dc
	db #88,#01,#01,#e0,#27,#26,#25,#e3
	db #24,#8e,#8a,#88,#01,#01,#dc,#e0
	db #2e,#2d,#2c,#e3,#27,#8e
.lbeb9 equ $ + 4
.lbeb5
	dw lbec1,#0000,lbee2,#0000
.lbebd
	dw lbeec,#0000
.lbec1
	db #8a,#dd,#88,#01,#01,#e0,#89,#07
	db #13,#8f,#1c,#80,#1c,#80,#13,#8f
	db #1c,#80,#1c,#80,#13,#8f,#1c,#80
	db #1c,#80,#13,#8f,#1c,#80,#1c,#80
.lbee2 equ $ + 1
	db #8e,#8a,#dd,#e0,#13,#8f,#1f,#80
.lbeec equ $ + 3
	db #1f,#80,#87,#8a,#88,#01,#01,#dd
	db #e0,#1c,#80,#24,#80,#24,#80,#87
.lbefd equ $ + 4
.lbef9
	dw lbf05,#0000,lbf15,#0000
.lbf01
	dw lbf25,#0000
.lbf05
	db #8a,#da,#88,#01,#01,#e0,#11,#80
	db #11,#80,#13,#80,#13,#e7,#18,#8e
.lbf15
	db #8a,#db,#88,#01,#01,#e0,#21,#80
	db #21,#80,#23,#80,#23,#e7,#24,#8e
.lbf25
	db #8a,#db,#88,#01,#01,#e0,#24,#80
	db #24,#80,#26,#80,#26,#e7,#28,#8e
.lbf39 equ $ + 4
.lbf35
	dw lbf41,#0000,lbf52,#0000
.lbf3d
	dw lbf63,#0000
.lbf41
	db #8a,#da,#88,#01,#01,#e0,#1a,#80
	db #80,#1a,#80,#80,#1a,#80,#e3,#1a
.lbf52 equ $ + 1
	db #8e,#8a,#da,#88,#01,#01,#e0,#15
	db #80,#80,#15,#80,#80,#15,#80,#e3
.lbf63 equ $ + 2
	db #1e,#8e,#8a,#88,#01,#01,#db,#e0
	db #21,#26,#2a,#26,#2a,#2d,#2a,#2d
	db #e3,#32,#8e
.lbf78 equ $ + 4
.lbf74
	dw lbf80,#0000,lbf90,#0000
.lbf7c
	dw lbfa0,#0000
.lbf80
	db #8a,#d0,#88,#01,#01,#e2,#89,#0a
	db #13,#17,#1a,#1f,#23,#e2,#26,#8e
.lbf90
	db #8a,#d0,#88,#01,#01,#e0,#80,#e2
	db #17,#1a,#1f,#23,#26,#e8,#2b,#8e
.lbfa0
	db #8a,#88,#01,#01,#d0,#e1,#80,#e2
	db #1a,#1f,#23,#26,#2b,#e8,#2f,#8e
.lbfb4 equ $ + 4
.lbfb0
	dw lbfbc,#0000,lbfcc,#0000
.lbfb8
	dw lbfdc,#0000
.lbfbc
	db #8a,#d0,#88,#01,#01,#e2,#89,#f6
	db #33,#30,#2b,#27,#24,#e3,#1f,#8e
.lbfcc
	db #8a,#d0,#88,#01,#01,#e0,#80,#e2
	db #30,#2b,#27,#24,#1f,#e8,#1b,#8e
.lbfdc
	db #8a,#88,#01,#01,#d0,#e1,#80,#e2
	db #2b,#27,#24,#1f,#1b,#e8,#18,#8e
.lbff3 equ $ + 7
.lbfef equ $ + 3
.lbfec
	db #92,#00,#87,#92,#0c,#dc,#87,#89
.lbff9 equ $ + 5
.lbff6 equ $ + 2
	db #fe,#87,#89,#ff,#87,#89,#00,#87
.lbffc
	db #89,#03,#87
;
.music_info
	db "Emlyn Hughes Arcade Quiz (1991)(Audiogenic Software LTD)(David Whittaker)",0
	db "",0

	read "music_end.asm"
