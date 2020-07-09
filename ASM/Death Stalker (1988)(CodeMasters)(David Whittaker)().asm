; Music of Death Stalker (1988)(CodeMasters)(David Whittaker)()
; Ripped by Megachur the 09/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DEATHSTA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b41a
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
.init_music
;
	push af
	call lb603
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,lbd64
	add hl,bc
	ld a,(hl)
	ld (lb504),a
	ld (lba8b),a
	inc hl
	ld ix,lb487
	ld c,#22
	ld a,#03
.lb43b
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
	ld hl,lb95d
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
	jr nz,lb43b
	ld (lb7b8),a
	dec a
	ld (lba8c),a
	ld (lba87),a
	ret
.lb487
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.lb4a9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.lb4cb
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(lba87)
	ld hl,lba88
	or (hl)
	ret z
	call lbae8
	ld a,(lba87)
	and a
	jr z,lb54f
.lb4ff equ $ + 1
	ld a,#00
	ld (lb54b),a
.lb504 equ $ + 1
	ld a,#01
	ld hl,lba8c
	add (hl)
	ld (hl),a
	jr nc,lb523
	ld b,#00
	ld ix,lb487
	call lb6c9
	ld ix,lb4a9
	call lb6c9
	ld ix,lb4cb
	call lb6c9
.lb523
	ld ix,lb487
	call lb785
	ld (lb874),hl
	ld (lb87c),a
	ld ix,lb4a9
	call lb785
	ld (lb876),hl
	ld (lb87d),a
	ld ix,lb4cb
	call lb785
	ld (lb878),hl
	ld (lb87e),a
.lb54b equ $ + 1
	ld a,#00
	ld (lb87a),a
.lb54f
	ld a,(lba87)
	and a
	jr nz,lb565
	ld (lb87c),a
	ld (lb87d),a
	ld (lb87e),a
	ld a,#3f
	ld (lb87b),a
	jr lb58d
.lb565
	ld a,(lba8a)
	and #0f
	xor #0f
	jr z,lb58d
	ld b,a
	ld a,(lb87c)
	sub b
	jr nc,lb576
	xor a
.lb576
	ld (lb87c),a
	ld a,(lb87d)
	sub b
	jr nc,lb580
	xor a
.lb580
	ld (lb87d),a
	ld a,(lb87e)
	sub b
	jr nc,lb58a
	xor a
.lb58a
	ld (lb87e),a
.lb58d
	ld a,(lba88)
	and a
	jr z,lb5b5
	ld hl,(lb881)
.lb598 equ $ + 2
	ld (lb874),hl
	ld a,(lbd2b)
	ld b,a
	bit 3,a
	jr nz,lb5a7
	ld a,(lb887)
	ld (lb87a),a
.lb5a7
	ld hl,lb87b
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(lb889)
	ld (lb87c),a
.lb5b5
	ld hl,lb87e
	ld d,#0a
.lb5ba
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
	jp p,lb5ba
	ret
.lb5db
	ld de,#0a00
.lb5de
	call lb5e8
	dec d
	jp p,lb5de
	ld de,#073f
.lb5e8
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
.lb603
;
	xor a
	ld (lba87),a
	call lbd40
	call lb5db
	xor a
	ld (lb87c),a
	ld (lb87d),a
	ld (lb87e),a
	ret
	db #9b,#8f,#88,#92,#6b,#90,#8f,#12
	db #75,#66,#51,#3b,#63,#88,#07,#95
	db #96,#9b,#64,#02,#01
	pop hl
	jp lb603
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
	jr nz,lb653
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb653
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb6d6
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,lb83f
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb6d6
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,lb83f
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb6d6
	ld a,(de)
	inc de
	ld (lb7b8),a
	jr lb6d6
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr lb6d6
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr lb6d6
	ld (ix+#1d),b
	jr lb6d6
	set 1,(ix+#00)
	jr lb6d6
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb705
	jr lb701
	ld (ix+#1f),#ff
	jr lb6d6
	ld (ix+#1f),b
	jr lb6d6
.lb6c9
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb6d6
	ld a,(de)
	inc de
	and a
	jp m,lb73a
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb6e8
	ld (lb4ff),a
.lb6e8
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.lb701
	set 5,(ix+#00)
.lb705
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,lb728
	ld a,(lba88)
	and a
	jr z,lb724
	ld a,(lbd2b)
	bit 3,a
	jr z,lb728
.lb724
	ld (ix+#1f),#ff
.lb728
	ret
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lb736
	inc (ix+#12)
	ret
.lb736
	dec (ix+#12)
	ret
.lb73a
	cp #c0
	jr c,lb77d
	add #20
	jr c,lb75e
	add #10
	jr c,lb765
	add #10
	ld c,a
	ld hl,lb94d
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp lb6d6
.lb75e
	inc a
	ld (ix+#11),a
	jp lb6d6
.lb765
	ld hl,lb98b
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
	jp lb6d6
.lb77d
	ld hl,lb598
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb785
	ld c,(ix+#00)
	bit 5,c
	jr z,lb7b7
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,lb7b1
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,lb7b1
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.lb7b1
	ld a,(ix+#18)
	ld (ix+#13),a
.lb7b8 equ $ + 1
.lb7b7
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,lb7d4
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.lb7d4
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lb88d
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb835
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb7fe
	bit 0,c
	jr nz,lb81c
.lb7fe
	bit 5,l
	jr nz,lb80e
	sub (ix+#1b)
	jr nc,lb819
	set 5,(ix+#1d)
	sub a
	jr lb819
.lb80e
	add (ix+#1b)
	cp b
	jr c,lb819
	res 5,(ix+#1d)
	ld a,b
.lb819
	ld (ix+#1c),a
.lb81c
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb827
	dec d
.lb827
	add #a0
	jr c,lb833
.lb82b
	sla e
	rl d
	add #18
	jr nc,lb82b
.lb833
	add hl,de
	ex de,hl
.lb835
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.lb83f equ $ + 1
	ld a,#38
	jr nz,lb84c
	ld a,(lb4ff)
	xor #08
	ld (lb54b),a
	ld a,#07
.lb84c
	ld hl,lb87b
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,lb86f
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (lb54b),a
.lb86f
	ex de,hl
	ld a,(ix+#13)
	ret
.lb87b equ $ + 7
.lb87a equ $ + 6
.lb878 equ $ + 4
.lb876 equ $ + 2
.lb874
	db #00,#00,#00,#00,#00,#00,#00,#3f
.lb882 equ $ + 6
.lb881 equ $ + 5
.lb87e equ $ + 2
.lb87d equ $ + 1
.lb87c
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.lb889 equ $ + 5
.lb887 equ $ + 3
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.lb88d
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
.lb94d
	db #10,#10,#12,#14,#16,#19,#1b,#1d
	db #1f,#21,#22,#23,#24,#25,#26,#2d
.lb95d
	db #80,#00,#03,#87,#00,#04,#87,#00
	db #03,#85,#00,#04,#07,#8c,#07,#0c
	db #8f,#07,#0c,#90,#03,#07,#8c,#04
	db #07,#8c,#00,#8c,#00,#83,#00,#84
	db #00,#85,#00,#87,#0c,#00,#00,#00
	db #00,#00,#00,#80,#00,#81
.lb98b
	dw lb9aa,lb9af,lb9bc,lb9ce
	dw lb9dc,lb9e3,lba0d,lba14
	dw lba3d,lba4e,lba5b,lba67
	dw lba78,lba80,lba83
.lb9af equ $ + 6
.lb9aa equ $ + 1
	db #01,#0e,#0d,#05,#87,#01,#0e,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#03
.lb9bc equ $ + 3
	db #01,#87,#01,#0f,#0f,#0e,#0b,#0d
	db #0c,#0a,#09,#0b,#0a,#08,#07,#09
.lb9ce equ $ + 5
	db #08,#06,#05,#87,#02,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.lb9dc equ $ + 3
	db #01,#87,#01,#0f,#0e,#0d,#0c,#0b
.lb9e3 equ $ + 2
	db #87,#02,#0f,#0e,#0d,#0c,#0b,#0d
	db #0c,#0b,#0a,#09,#0b,#0a,#09,#08
	db #07,#09,#08,#07,#06,#05,#07,#06
	db #05,#04,#03,#05,#04,#03,#02,#01
	db #04,#03,#02,#01,#03,#02,#01,#02
.lba0d equ $ + 4
	db #01,#00,#87,#01,#0e,#0d,#0c,#0b
.lba14 equ $ + 3
	db #0a,#87,#04,#04,#06,#07,#08,#09
	db #0a,#0b,#0c,#0d,#0e,#0f,#0f,#0e
	db #0e,#0e,#0e,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#09,#09,#09,#09,#08,#08,#08
.lba3d equ $ + 4
	db #07,#06,#87,#05,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.lba4e equ $ + 5
	db #03,#02,#01,#87,#01,#0d,#0c,#0b
	db #0a,#09,#08,#0a,#09,#08,#07,#87
.lba5b equ $ + 2
	db #01,#01,#0e,#0d,#0c,#0b,#0a,#09
.lba67 equ $ + 6
	db #0b,#0a,#09,#08,#87,#02,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.lba78 equ $ + 7
	db #05,#04,#03,#02,#01,#87,#03,#0e
.lba80 equ $ + 7
	db #0d,#0c,#0b,#0a,#09,#87,#01,#0d
.lba83 equ $ + 2
	db #87,#02,#0f,#0e,#0d,#87
.lba8c equ $ + 5
.lba8b equ $ + 4
.lba8a equ $ + 3
.lba88 equ $ + 1
.lba87
.music_end
	db #00,#00,#00,#0f,#00,#00
	ld hl,lba88
	ld (hl),#00
	ld hl,lbba2
	add a
	add l
	ld l,a
	jr nc,lba9b
	inc h
.lba9b
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbd25
.lbaa3
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lbaa3
	ld a,(lbd26)
	ld (lbd33),a
	ld hl,(lbd27)
	ld (lb881),hl
	ld a,(lbd2b)
	bit 3,a
	jr nz,lbac0
	ld a,l
	ld (lb887),a
.lbac0
	ld a,(lbd30)
	ld (lbd34),a
	ld a,(lbd32)
	ld (lbd39),a
	ld a,(lbd2f)
	ld hl,lbca2
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbd35),hl
	ld (lbd37),hl
	ld a,(hl)
	ld (lb889),a
	ld hl,lba88
	inc (hl)
	ret
.lbae8
	call lbd45
	ld a,(lba88)
	and a
	ret z
	ld a,(lbd25)
	and a
	jr nz,lbb00
	ld a,(lbd31)
	and a
	jr nz,lbb00
	ld (lba88),a
	ret
.lbb00
	dec a
	ld (lbd25),a
	ld a,(lbd33)
	and a
	jr nz,lbb38
	ld a,(lbd31)
	and a
	jr nz,lbb16
	ld a,(lbd2e)
	and a
	jr z,lbb7a
.lbb16
	dec a
	ld (lbd2e),a
	ld a,(lbd26)
	ld (lbd33),a
	ld a,(lbd2c)
	and a
	jr z,lbb29
	ld a,(lbd60)
.lbb29
	ld b,a
	ld a,(lbd27)
	add b
	ld (lb881),a
	ld a,(lbd28)
	add b
	ld (lb882),a
.lbb38
	ld hl,lbd33
	dec (hl)
	ld hl,lbd32
	ld a,(hl)
	and a
	jr z,lbb4a
	ld hl,lbd39
	dec (hl)
	jr nz,lbb6d
	ld (hl),a
.lbb4a
	ld a,(lbd2d)
	and a
	jr z,lbb6d
	jp p,lbb60
	ld hl,(lb881)
	ld de,(lbd29)
	add hl,de
	ld (lb881),hl
	jr lbb6d
.lbb60
	ld hl,(lb881)
	ld de,(lbd29)
	and a
	sbc hl,de
	ld (lb881),hl
.lbb6d
	ld a,(lbd2b)
	bit 3,a
	jr nz,lbb7a
	ld a,(lb881)
	ld (lb887),a
.lbb7a
	ld a,(lbd34)
	dec a
	ld (lbd34),a
	jr nz,lbba1
	ld a,(lbd30)
	ld (lbd34),a
	ld hl,(lbd37)
	ld a,(hl)
	inc hl
	and a
	jp p,lbb9b
	cp #80
	jr nz,lbba1
	ld hl,(lbd35)
	ld a,(hl)
	inc hl
.lbb9b
	ld (lbd37),hl
	ld (lb889),a
.lbba1
	ret
.lbba2
	dw lbbc2,lbbd0,lbbde,lbbec
	dw lbbfa,lbc08,lbc16,lbc24
	dw lbc32,lbc40,lbc4e,lbc5c
	dw lbc6a,lbc78,lbc86,lbc94
.lbbc2
	db #32,#ff,#50,#00,#01,#04,#fe,#ff
.lbbd0 equ $ + 6
	db #01,#63,#00,#03,#00,#00,#05,#01
	db #1f,#00,#01,#00,#f7,#ff,#01,#ff
.lbbde equ $ + 4
	db #01,#02,#00,#00,#5a,#7c,#1f,#00
	db #01,#00,#f6,#00,#01,#00,#00,#05
.lbbec equ $ + 2
	db #00,#04,#0a,#0f,#88,#00,#01,#00
	db #f6,#00,#ff,#00,#04,#01,#00,#00
.lbbfa
	db #1e,#03,#91,#00,#15,#00,#f6,#00
.lbc08 equ $ + 6
	db #ff,#ff,#00,#02,#00,#00,#0b,#63
	db #0b,#00,#01,#00,#f7,#00,#01,#63
.lbc16 equ $ + 4
	db #01,#01,#00,#00,#32,#ff,#07,#00
	db #03,#04,#fe,#00,#01,#63,#01,#04
.lbc24 equ $ + 2
	db #00,#00,#02,#05,#02,#02,#c9,#00
	db #f6,#ff,#ff,#ff,#03,#14,#ff,#00
.lbc32
	db #0f,#06,#f0,#00,#17,#00,#fe,#00
.lbc40 equ $ + 6
	db #01,#63,#04,#01,#00,#00,#3c,#06
	db #81,#00,#24,#00,#f6,#00,#ff,#63
.lbc4e equ $ + 4
	db #00,#04,#00,#00,#11,#05,#c8,#00
	db #20,#00,#f6,#00,#ff,#63,#00,#02
.lbc5c equ $ + 2
	db #00,#00,#1e,#05,#12,#00,#4b,#00
	db #fe,#00,#ff,#ff,#00,#03,#00,#00
.lbc6a
	db #0f,#63,#f0,#00,#21,#00,#fe,#00
.lbc78 equ $ + 6
	db #ff,#63,#04,#01,#00,#00,#02,#63
	db #0a,#00,#01,#00,#f7,#00,#ff,#00
.lbc86 equ $ + 4
	db #01,#01,#00,#00,#0a,#14,#70,#00
	db #28,#00,#f6,#00,#ff,#63,#07,#01
.lbc94 equ $ + 2
	db #00,#00,#0f,#14,#11,#00,#31,#00
	db #fe,#00,#ff,#63,#00,#02,#00,#00
.lbca2
	db #b2,#bc,#c2,#bc,#d9,#bc,#db,#bc
	db #f1,#bc,#02,#bd,#11,#bd,#13,#bd
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
	db #09,#0a,#0b,#0c,#0d,#0e,#0e,#0f
	db #0f,#0f,#0f,#0f,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0b,#0a,#09,#80,#0e
	db #80,#0a,#0b,#0c,#0c,#0b,#0a,#0b
	db #0c,#0d,#0c,#0b,#0b,#0a,#0a,#0b
	db #0a,#0b,#0a,#0b,#0a,#0a,#80,#0d
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #08,#07,#07,#06,#06,#05,#05,#80
	db #0a,#0c,#0e,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#ff,#0b
	db #80,#0f,#0f,#0e,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.lbd29 equ $ + 7
.lbd28 equ $ + 6
.lbd27 equ $ + 5
.lbd26 equ $ + 4
.lbd25 equ $ + 3
	db #02,#01,#ff,#00,#00,#00,#00,#00
.lbd31 equ $ + 7
.lbd30 equ $ + 6
.lbd2f equ $ + 5
.lbd2e equ $ + 4
.lbd2d equ $ + 3
.lbd2c equ $ + 2
.lbd2b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd39 equ $ + 7
.lbd37 equ $ + 5
.lbd35 equ $ + 3
.lbd34 equ $ + 2
.lbd33 equ $ + 1
.lbd32
	db #00,#00,#00,#00,#00,#00,#00,#00
	call lbd40
	jp lb5db
.lbd40
	xor a
	ld (lba88),a
	ret
.lbd45
	ld a,(lbd60)
	and #48
	adc #38
	sla a
	sla a
	ld hl,lbd63
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.lbd63 equ $ + 3
.lbd60
	db #ff,#80,#1b,#34
.lbd64
	db #2a
	dw lbdec,lbd80,lbdbc
	db #1e
	dw lbebf,lbebd,lbec1
	db #28
	dw lbef4,lbef0,lbf14
	db #36
	dw lbf9f,lbf9d,lbfa1
.lbd80
	dw lbdf6,lbdf6,lbdf6,lbdf6
	dw lbdf6,lbdf6,lbe03,lbe03
	dw lbdf6,lbdf6,lbe03,lbe03
	dw lbe0a,lbe0a,lbdf6,lbe03
	dw lbdf6,lbe03,lbdf6,lbe0a
	dw lbe0a,lbe12,lbe12,lbe12
	dw lbe24,lbe12,lbe12,lbe12
	dw lbe24,#0000
.lbdbc
	dw lbe34,lbe34,lbe34,lbe34
	dw lbe34,lbe34,lbe47,lbe47
	dw lbe34,lbe34,lbe47,lbe47
	dw lbe51,lbe51,lbe34,lbe47
	dw lbe34,lbe47,lbe34,lbe51
	dw lbe51,lbe5c,lbe5c,#0000
.lbdec
	dw lbff9,lbe89,lbffc,lbe89
	dw #0000
.lbdf6
	db #8a,#88,#01,#01,#d8,#e3,#11,#1d
.lbe03 equ $ + 5
	db #1d,#11,#1d,#1d,#87,#13,#1f,#1f
.lbe0a equ $ + 4
	db #13,#1f,#1f,#87,#90,#15,#21,#21
.lbe12 equ $ + 4
	db #15,#21,#21,#87,#d2,#e1,#11,#11
	db #11,#8d,#11,#11,#11,#11,#11,#11
.lbe24 equ $ + 6
	db #8d,#11,#11,#8d,#11,#87,#0c,#0c
	db #0c,#8d,#0c,#0c,#0c,#0c,#0c,#0c
.lbe34 equ $ + 6
	db #8d,#0c,#0c,#8d,#0c,#87,#8a,#88
	db #01,#01,#92,#00,#c0,#d8,#e1,#8f
	db #e3,#18,#24,#18,#18,#1f,#e1,#18
.lbe47 equ $ + 1
	db #87,#8f,#e3,#1a,#26,#1a,#1a,#21
.lbe51 equ $ + 3
	db #e1,#1a,#87,#8f,#e3,#90,#1c,#28
.lbe5c equ $ + 6
	db #1c,#1c,#23,#e1,#1c,#87,#81,#d2
	db #e7,#c3,#3c,#e3,#3c,#e7,#c3,#3c
	db #e3,#3c,#e7,#c3,#3c,#e3,#3c,#e7
	db #c3,#3c,#e3,#3c,#e7,#c3,#41,#e3
	db #41,#e7,#c3,#41,#e3,#41,#e7,#c1
	db #3c,#e3,#3c,#e7,#c1,#3c,#e3,#3c
.lbe89 equ $ + 3
	db #92,#0c,#87,#8a,#88,#01,#01,#d7
	db #f7,#21,#18,#21,#24,#2d,#2e,#2d
	db #2e,#2d,#30,#30,#2d,#cf,#44,#4b
	db #c0,#41,#3e,#8b,#d5,#f7,#8d,#3f
	db #8d,#3f,#8d,#3f,#8d,#3f,#8d,#3f
	db #8a,#f7,#dd,#88,#01,#02,#05,#8f
	db #8f,#0c,#05,#8f,#8f,#0c,#87
.lbec1 equ $ + 4
.lbebf equ $ + 2
.lbebd
	dw lbec3,lbed0,lbee0
.lbec3
	db #8a,#88,#02,#02,#d8,#e2,#0f,#16
.lbed0 equ $ + 5
	db #1a,#14,#e7,#0c,#8e,#8a,#88,#02
	db #02,#d8,#e0,#80,#e2,#16,#0e,#15
.lbee0 equ $ + 5
	db #e1,#19,#e7,#13,#8e,#8a,#88,#02
	db #02,#d8,#e1,#80,#e2,#1b,#15,#0d
	db #e0,#14,#e7,#18,#8e
.lbef0
	dw lbf1e,#0000
.lbef4
	dw lbff9,lbf40,lbf72,lbf5b
	dw lbf72,lbff6,lbf40,lbf72
	dw lbf5b,lbf72,lbffc,lbf40
	dw lbf72,lbf5b,lbf72,#0000
.lbf14
	dw lbf3d,lbf88,lbf58,lbf88
	dw #0000
.lbf1e
	db #8a,#88,#01,#01,#d2,#e1,#11,#1d
	db #11,#1d,#11,#1d,#11,#1d,#0c,#18
	db #0c,#18,#0c,#18,#0c,#18,#0c,#18
	db #0c,#18,#0c,#18,#0c,#18,#87
.lbf3d
	db #88,#01,#01
.lbf40
	db #8a,#d4,#92,#00,#e1,#29
	db #e0,#24,#26,#24,#22,#e1,#21,#e0
	db #30,#2e,#e1,#2d,#e0,#3c,#3a,#e1
.lbf58 equ $ + 2
	db #39,#87,#88,#01,#01
.lbf5b
	db #d4,#e1,#2d
	db #e0,#24,#26,#24,#22,#e1,#21,#e0
	db #30,#2e,#e1,#2d,#e0,#3c,#3a,#e1
	db #39,#92,#0c,#87
.lbf72
	db #88,#01,#02,#db
	db #80,#24,#80,#24,#80,#24,#80,#24
	db #80,#28,#80,#28,#80,#28,#80,#28
.lbf88 equ $ + 2
	db #81,#87,#88,#01,#02,#db,#80,#25
	db #80,#26,#80,#27,#80,#28,#80,#29
	db #80,#2a,#80,#2b,#80,#2c,#87
.lbf9d
	dw lbfa3
.lbf9f
	dw lbfbe
.lbfa1
	dw lbfda
.lbfa3
	db #8a,#88,#01,#01,#d1,#e0,#18,#e2
	db #18,#e0,#13,#e2,#13,#e0,#18,#e6
	db #18,#e0,#18,#e2,#18,#e0,#13,#e4
.lbfbe equ $ + 3
	db #13,#18,#8e,#8a,#88,#01,#01,#d1
	db #c9,#e0,#27,#e2,#27,#e0,#26,#e2
	db #26,#e0,#27,#e6,#27,#e0,#27,#e2
.lbfda equ $ + 7
	db #27,#e0,#26,#e4,#26,#24,#8e,#8a
	db #88,#01,#01,#d1,#c9,#e0,#2b,#e2
	db #2b,#e0,#2b,#e2,#2b,#e0,#2b,#e6
	db #2b,#e0,#2b,#e2,#2b,#e0,#2b,#e4
	db #2b,#27,#8e
.lbff6
	db #89,#ff,#87
.lbff9
	db #89,#00,#87
.lbffc
	db #89,#01,#87
;
.music_info
	db "Death Stalker (1988)(CodeMasters)(David Whittaker)",0
	db "",0

	read "music_end.asm"
