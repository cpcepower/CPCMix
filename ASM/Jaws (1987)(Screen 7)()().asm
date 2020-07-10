; Music of Jaws (1987)(Screen 7)()()
; Ripped by Megachur the 24/03/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JAWS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #b353
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.init_music
;
	push af
	call lb574
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,lbdbe
	add hl,bc
	ld a,(hl)
	ld (lb444),a
	ld (lb809),a
	inc hl
	ld ix,lb3c5
	ld c,#22
	ld a,#03
.lb374
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
	ld hl,lb8aa
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
	jr nz,lb374
	ld (lb749),a
	dec a
	ld (lb80a),a
	ld (lb805),a
	ld a,#0f
	ld (lb808),a
	ret
.lb3c5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.lb3e7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.lb409
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(lb805)
	ld hl,lb806
	or (hl)
	inc hl
	or (hl)
	ret z
	call lba43
	ld a,(lb805)
	and a
	jr z,lb48f
.lb43f equ $ + 1
	ld a,#00
	ld (lb48b),a
.lb444 equ $ + 1
	ld a,#01
	ld hl,lb80a
	add (hl)
	ld (hl),a
	jr nc,lb463
	ld b,#00
	ld ix,lb3c5
	call lb65e
	ld ix,lb3e7
	call lb65e
	ld ix,lb409
	call lb65e
.lb463
	ld ix,lb3c5
	call lb716
	ld (lb80b),hl
	ld (lb813),a
	ld ix,lb3e7
	call lb716
	ld (lb80d),hl
	ld (lb814),a
	ld ix,lb409
	call lb716
	ld (lb80f),hl
	ld (lb815),a
.lb48b equ $ + 1
	ld a,#00
	ld (lb811),a
.lb48f
	ld a,(lb805)
	and a
	jr nz,lb4a5
	ld (lb813),a
	ld (lb814),a
	ld (lb815),a
	ld a,#3f
	ld (lb812),a
	jr lb4cd
.lb4a5
	ld a,(lb808)
	and #0f
	xor #0f
	jr z,lb4cd
	ld b,a
	ld a,(lb813)
	sub b
	jr nc,lb4b6
	xor a
.lb4b6
	ld (lb813),a
	ld a,(lb814)
	sub b
	jr nc,lb4c0
	xor a
.lb4c0
	ld (lb814),a
	ld a,(lb815)
	sub b
	jr nc,lb4ca
	xor a
.lb4ca
	ld (lb815),a
.lb4ce equ $ + 1
.lb4cd
	ld a,#00
	xor #ff
	ld (lb4ce),a
	ld a,(lb806)
	and a
	jr z,lb4fc
	ld hl,(lb818)
	ld (lb80b),hl
	ld a,(lbd7b)
	ld b,a
	bit 3,a
	jr nz,lb4ee
	ld a,(lb81e)
	ld (lb811),a
.lb4ee
	ld hl,lb812
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(lb820)
	ld (lb813),a
.lb4fc
	ld a,(lb807)
	and a
	jr z,lb526
	ld hl,(lb81a)
	ld (lb80d),hl
	ld a,(lbd90)
	ld b,a
	bit 3,a
	jr nz,lb516
.lb510
	ld a,(lb81e)
	ld (lb811),a
.lb516
	ld hl,lb812
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(lb821)
	ld (lb814),a
.lb526
	ld hl,lb815
	ld d,#0a
.lb52b
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
	jp p,lb52b
	ret
.lb54c
	ld de,#0a00
.lb54f
	call lb559
	dec d
	jp p,lb54f
	ld de,#073f
.lb559
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
;
.lb574
	xor a
	ld (lb805),a
	call lb586
	xor a
	ld (lb813),a
	ld (lb814),a
	ld (lb815),a
	ret
.lb586
	xor a
	ld (lb806),a
	ld (lb807),a
	jp lb54c
	db #b8,#a6,#9f,#a9,#00,#00,#00,#19
	db #8c,#7d,#58,#42,#6a,#a5,#0e,#b2
	db #b3,#b8,#7b,#01
	ld a,(de)
	inc de
	ld (lb808),a
	jp lb66b
	pop hl
	jp lb574
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
	jr nz,lb5d2
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb5d2
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb66b
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,lb7d0
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb66b
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,lb7d0
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb66b
	ld hl,lb7d0
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr lb66b
	ld a,(de)
	inc de
	ld (lb749),a
	jr lb66b
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr lb66b
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr lb66b
	ld (ix+#1d),b
	jr lb66b
	ld (ix+#1d),#c0
	jr lb66b
	set 1,(ix+#00)
	jr lb66b
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb69a
	jr lb696
	ld (ix+#1f),#ff
	jr lb66b
	ld (ix+#1f),b
	jr lb66b
.lb65e
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb66b
	ld a,(de)
	inc de
	and a
	jp m,lb6cb
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb67d
	ld (lb43f),a
.lb67d
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.lb696
	set 5,(ix+#00)
.lb69a
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,lb6ca
	ld a,(lb806)
	and a
	jr z,lb6b9
	ld a,(lbd7b)
	bit 3,a
	jr z,lb6ca
.lb6b9
	ld a,(lb807)
	and a
	jr z,lb6c6
	ld a,(lbd90)
	bit 3,a
	jr z,lb6ca
.lb6c6
	ld (ix+#1f),#ff
.lb6ca
	ret
.lb6cb
	cp #c0
	jr c,lb70e
	add #20
	jr c,lb6ef
	add #10
	jr c,lb6f6
	add #10
	ld c,a
	ld hl,lb8a8
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp lb66b
.lb6ef
	inc a
	ld (ix+#11),a
	jp lb66b
.lb6f6
	ld hl,lb8ad
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
	jp lb66b
.lb70e
	ld hl,lb510
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb716
	ld c,(ix+#00)
	bit 5,c
	jr z,lb748
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,lb742
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,lb742
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.lb742
	ld a,(ix+#18)
	ld (ix+#13),a
.lb749 equ $ + 1
.lb748
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,lb765
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.lb765
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lb824
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb7c6
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb78f
	bit 0,c
	jr nz,lb7ad
.lb78f
	bit 5,l
	jr nz,lb79f
	sub (ix+#1b)
	jr nc,lb7aa
	set 5,(ix+#1d)
	sub a
	jr lb7aa
.lb79f
	add (ix+#1b)
	cp b
	jr c,lb7aa
	res 5,(ix+#1d)
	ld a,b
.lb7aa
	ld (ix+#1c),a
.lb7ad
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb7b8
	dec d
.lb7b8
	add #a0
	jr c,lb7c4
.lb7bc
	sla e
	rl d
	add #18
	jr nc,lb7bc
.lb7c4
	add hl,de
	ex de,hl
.lb7c6
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.lb7d0 equ $ + 1
	ld a,#38
	jr nz,lb7dd
	ld a,(lb43f)
	xor #08
	ld (lb48b),a
	ld a,#07
.lb7dd
	ld hl,lb812
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,lb800
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (lb48b),a
.lb800
	ex de,hl
	ld a,(ix+#13)
	ret
.lb80b equ $ + 6
.lb80a equ $ + 5
.lb809 equ $ + 4
.lb808 equ $ + 3
.lb807 equ $ + 2
.lb806 equ $ + 1
.music_end
.lb805
	db #00,#00,#00,#0f,#00,#00,#00,#00
.lb814 equ $ + 7
.lb813 equ $ + 6
.lb812 equ $ + 5
.lb811 equ $ + 4
.lb80f equ $ + 2
.lb80d
	db #00,#00,#00,#00,#00,#3f,#0f,#0f
.lb81b equ $ + 6
.lb81a equ $ + 5
.lb819 equ $ + 4
.lb818 equ $ + 3
.lb815
	db #0f,#00,#00,#00,#00,#00,#00,#00
.lb821 equ $ + 4
.lb820 equ $ + 3
.lb81e equ $ + 1
	db #00,#00,#3f,#00,#00,#00,#00
.lb824
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
	dw #002f,#002c
.lb8aa equ $ + 2
.lb8a8
	db #02,#02,#80,#00,#81
.lb8ad
	dw lb8ce,lb8d7,lb8de,lb8f0
	dw lb902,lb90a,lb912,lb927
	dw lb930,lb941,lb952,lb966
	dw lb977,lb97a,lb97d,lb980
.lb8ce equ $ + 1
	db #02,#0c,#0d,#0e,#0f,#0e,#0d,#0c
.lb8d7 equ $ + 2
	db #87,#02,#0d,#0e,#0f,#0e,#0d,#87
.lb8de equ $ + 1
	db #01,#0f,#0e,#0d,#0b,#0d,#0c,#0a
	db #09,#0b,#0a,#08,#07,#09,#08,#06
.lb8f0 equ $ + 3
	db #05,#87,#01,#0f,#0f,#0d,#0b,#0d
	db #0c,#0a,#09,#0b,#0a,#08,#07,#09
.lb902 equ $ + 5
	db #08,#06,#05,#87,#01,#0c,#0d,#0f
.lb90a equ $ + 5
	db #0e,#0d,#0c,#87,#01,#0c,#0d,#0e
.lb912 equ $ + 5
	db #0d,#0c,#0b,#87,#01,#0e,#0d,#0c
	db #0b,#0a,#09,#01,#08,#01,#07,#01
	db #06,#01,#05,#01,#04,#01,#02,#01
.lb927 equ $ + 2
	db #87,#04,#08,#09,#0a,#0b,#0c,#0d
.lb930 equ $ + 3
	db #0e,#87,#05,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.lb941 equ $ + 4
	db #02,#01,#87,#08,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.lb952 equ $ + 5
	db #03,#02,#01,#87,#02,#0c,#0d,#0e
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.lb966 equ $ + 1
	db #01,#0c,#0d,#0f,#0e,#0c,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.lb97a equ $ + 5
.lb977 equ $ + 2
	db #87,#01,#0a,#87,#01,#0b,#87,#01
.lb980 equ $ + 3
.lb97d
	db #0f,#87,#01,#0c,#87
	ld hl,lb98b
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb98b
	ld (bc),a
	ld e,h
	ld hl,lb806
	ld (hl),#00
	ld hl,lbbb6
	add a
	add l
	ld l,a
	jr nc,lb99b
	inc h
.lb99b
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbd75
.lb9a3
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb9a3
	ld a,(lbd76)
	ld (lbd83),a
	ld hl,(lbd77)
	ld (lb818),hl
	ld a,(lbd7b)
	bit 3,a
	jr nz,lb9c0
	ld a,l
	ld (lb81e),a
.lb9c0
	ld a,(lbd80)
	ld (lbd84),a
	ld a,(lbd82)
	ld (lbd89),a
	ld a,(lbd7f)
	ld hl,lbcb6
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbd85),hl
	ld (lbd87),hl
	ld a,(hl)
	ld (lb820),a
	ld hl,lb806
	inc (hl)
	ret
	ld hl,lb807
	ld (hl),#00
	ld hl,lbbb6
	add a
	add l
	ld l,a
	jr nc,lb9f6
	inc h
.lb9f6
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbd8a
.lb9fe
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb9fe
	ld a,(lbd8b)
	ld (lbd98),a
	ld hl,(lbd8c)
	ld (lb81a),hl
	ld a,(lbd90)
	bit 3,a
	jr nz,lba1b
	ld a,l
	ld (lb81e),a
.lba1b
	ld a,(lbd95)
	ld (lbd99),a
	ld a,(lbd97)
	ld (lbd9e),a
	ld a,(lbd94)
	ld hl,lbcb6
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbd9a),hl
	ld (lbd9c),hl
	ld a,(hl)
	ld (lb821),a
	ld hl,lb807
	inc (hl)
	ret
.lba43
	call lbd9f
	ld a,(lb806)
	and a
	call nz,lbb04
	ld a,(lb807)
	and a
	ret z
	ld a,(lbd8a)
	and a
	jr nz,lba62
	ld a,(lbd96)
	and a
	jr nz,lba62
	ld (lb807),a
	ret
.lba62
	dec a
	ld (lbd8a),a
	ld a,(lbd98)
	and a
	jr nz,lba9a
	ld a,(lbd96)
	and a
	jr nz,lba78
	ld a,(lbd93)
	and a
	jr z,lbadc
.lba78
	dec a
	ld (lbd93),a
	ld a,(lbd8b)
	ld (lbd98),a
	ld a,(lbd91)
	and a
	jr z,lba8b
	ld a,(lbdbb)
.lba8b
	ld b,a
	ld a,(lbd8c)
	add b
	ld (lb81a),a
	ld a,(lbd8d)
	add b
	ld (lb81b),a
.lba9a
	ld hl,lbd98
	dec (hl)
	ld hl,lbd97
	ld a,(hl)
	and a
	jr z,lbaac
	ld hl,lbd9e
	dec (hl)
	jr nz,lbacf
	ld (hl),a
.lbaac
	ld a,(lbd92)
	and a
	jr z,lbacf
	jp p,lbac2
	ld hl,(lb81a)
	ld de,(lbd8e)
	add hl,de
	ld (lb81a),hl
	jr lbacf
.lbac2
	ld hl,(lb81a)
	ld de,(lbd8e)
	and a
	sbc hl,de
	ld (lb81a),hl
.lbacf
	ld a,(lbd90)
	bit 3,a
	jr nz,lbadc
	ld a,(lb81a)
	ld (lb81e),a
.lbadc
	ld a,(lbd99)
	dec a
	ld (lbd99),a
	jr nz,lbb03
	ld a,(lbd95)
	ld (lbd99),a
	ld hl,(lbd9c)
	ld a,(hl)
	inc hl
	and a
	jp p,lbafd
	cp #80
	jr nz,lbb03
	ld hl,(lbd9a)
	ld a,(hl)
	inc hl
.lbafd
	ld (lbd9c),hl
	ld (lb821),a
.lbb03
	ret
.lbb04
	ld a,(lbd75)
	and a
	jr nz,lbb14
	ld a,(lbd81)
	and a
	jr nz,lbb14
	ld (lb806),a
	ret
.lbb14
	dec a
	ld (lbd75),a
	ld a,(lbd83)
	and a
	jr nz,lbb4c
	ld a,(lbd81)
	and a
	jr nz,lbb2a
	ld a,(lbd7e)
	and a
	jr z,lbb8e
.lbb2a
	dec a
	ld (lbd7e),a
	ld a,(lbd76)
	ld (lbd83),a
	ld a,(lbd7c)
	and a
	jr z,lbb3d
	ld a,(lbdba)
.lbb3d
	ld b,a
	ld a,(lbd77)
	add b
	ld (lb818),a
	ld a,(lbd78)
	add b
	ld (lb819),a
.lbb4c
	ld hl,lbd83
	dec (hl)
	ld hl,lbd82
	ld a,(hl)
	and a
	jr z,lbb5e
	ld hl,lbd89
	dec (hl)
	jr nz,lbb81
	ld (hl),a
.lbb5e
	ld a,(lbd7d)
	and a
	jr z,lbb81
	jp p,lbb74
	ld hl,(lb818)
	ld de,(lbd79)
	add hl,de
	ld (lb818),hl
	jr lbb81
.lbb74
	ld hl,(lb818)
	ld de,(lbd79)
	and a
	sbc hl,de
	ld (lb818),hl
.lbb81
	ld a,(lbd7b)
	bit 3,a
	jr nz,lbb8e
	ld a,(lb818)
	ld (lb81e),a
.lbb8e
	ld a,(lbd84)
	dec a
	ld (lbd84),a
	jr nz,lbbb5
	ld a,(lbd80)
	ld (lbd84),a
	ld hl,(lbd87)
	ld a,(hl)
	inc hl
	and a
	jp p,lbbaf
	cp #80
	jr nz,lbbb5
	ld hl,(lbd85)
	ld a,(hl)
	inc hl
.lbbaf
	ld (lbd87),hl
	ld (lb820),a
.lbbb5
	ret
.lbbb6
	dw lbbd6,lbbe4,lbbf2,lbc00
	dw lbc0e,lbc1c,lbc2a,lbc38
	dw lbc46,lbc54,lbc62,lbc70
	dw lbc7e,lbc8c,lbc9a,lbca8
.lbbd6
	db #0a,#63,#40,#00,#02,#00,#fe,#00
.lbbe4 equ $ + 6
	db #01,#63,#00,#01,#00,#00,#0a,#63
	db #00,#04,#10,#00,#fe,#00,#ff,#63
.lbbf2 equ $ + 4
	db #00,#02,#00,#00,#19,#01,#2b,#00
	db #00,#00,#f6,#00,#00,#00,#00,#02
.lbc00 equ $ + 2
	db #00,#00,#28,#06,#01,#02,#c9,#00
	db #f6,#00,#ff,#63,#00,#04,#00,#00
.lbc0e
	db #14,#14,#20,#06,#11,#00,#fe,#00
.lbc1c equ $ + 6
	db #01,#63,#0a,#02,#ff,#00,#0a,#03
	db #01,#01,#14,#00,#f6,#00,#ff,#63
.lbc2a equ $ + 4
	db #05,#02,#00,#00,#1e,#06,#09,#05
	db #10,#00,#f6,#ff,#ff,#00,#00,#02
.lbc38 equ $ + 2
	db #00,#00,#32,#05,#30,#01,#20,#00
	db #fe,#00,#01,#63,#00,#02,#00,#00
.lbc46
	db #19,#0f,#10,#00,#01,#00,#f7,#00
.lbc54 equ $ + 6
	db #ff,#00,#00,#02,#00,#00,#0c,#63
	db #09,#05,#11,#00,#f6,#00,#ff,#00
.lbc62 equ $ + 4
	db #00,#01,#00,#00,#0f,#05,#c7,#00
	db #20,#00,#f6,#00,#ff,#63,#00,#01
.lbc70 equ $ + 2
	db #00,#00,#1e,#06,#20,#00,#03,#00
	db #fe,#00,#01,#63,#00,#02,#00,#00
.lbc7e
	db #14,#0c,#20,#04,#11,#00,#fe,#00
.lbc8c equ $ + 6
	db #01,#63,#0a,#02,#ff,#00,#1e,#06
	db #40,#00,#05,#00,#fe,#00,#01,#63
.lbc9a equ $ + 4
	db #00,#02,#00,#00,#41,#02,#0e,#00
	db #01,#00,#f7,#00,#01,#00,#0c,#05
.lbca8 equ $ + 2
	db #00,#00,#41,#02,#1a,#00,#01,#00
	db #f7,#00,#ff,#00,#0c,#04,#00,#00
.lbcb6
	dw lbcd2,lbce2,lbcea,lbcfd
	dw lbd02,lbd07,lbd2b,lbd2d
	dw lbd36,lbd44,lbd46,lbd48
	dw lbd4a,lbd5c
.lbcd2
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.lbce2
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#ff
.lbcea
	db #06,#07,#08,#09,#0a,#0b,#0c,#0d
	db #0e,#0f,#0f,#0e,#0e,#0e,#0d,#0d
.lbcfd equ $ + 3
	db #0d,#0c,#ff,#0f,#0f,#0e,#0d,#0c
.lbd07 equ $ + 5
.lbd02
	db #0f,#0e,#0d,#0c,#0b,#0e,#0d,#0c
	db #0b,#0a,#0d,#0c,#0b,#09,#08,#0c
	db #0b,#0a,#09,#08,#0b,#0a,#09,#08
	db #07,#09,#08,#07,#06,#05,#07,#06
	db #05,#04,#03,#05,#04,#03,#02,#01
.lbd2d equ $ + 3
.lbd2b equ $ + 1
	db #ff,#0a,#80,#08,#09,#0a,#0b,#0c
.lbd36 equ $ + 4
	db #0d,#0e,#0f,#ff,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.lbd48 equ $ + 6
.lbd46 equ $ + 4
.lbd44 equ $ + 2
	db #01,#ff,#0e,#80,#0c,#80,#0b,#80
.lbd4a
	db #06,#07,#08,#09,#0a,#0b,#0b,#0b
	db #0b,#09,#07,#05,#04,#03,#02,#01
.lbd5c equ $ + 2
	db #00,#ff,#06,#07,#08,#09,#0a,#0b
	db #0c,#0d,#0e,#0f,#0f,#0e,#0e,#0e
	db #0d,#0d,#0d,#0c,#0c,#0b,#0a,#09
.lbd79 equ $ + 7
.lbd78 equ $ + 6
.lbd77 equ $ + 5
.lbd76 equ $ + 4
.lbd75 equ $ + 3
	db #07,#05,#ff,#00,#00,#00,#00,#00
.lbd81 equ $ + 7
.lbd80 equ $ + 6
.lbd7f equ $ + 5
.lbd7e equ $ + 4
.lbd7d equ $ + 3
.lbd7c equ $ + 2
.lbd7b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd89 equ $ + 7
.lbd87 equ $ + 5
.lbd85 equ $ + 3
.lbd84 equ $ + 2
.lbd83 equ $ + 1
.lbd82
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd91 equ $ + 7
.lbd90 equ $ + 6
.lbd8e equ $ + 4
.lbd8d equ $ + 3
.lbd8c equ $ + 2
.lbd8b equ $ + 1
.lbd8a
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd99 equ $ + 7
.lbd98 equ $ + 6
.lbd97 equ $ + 5
.lbd96 equ $ + 4
.lbd95 equ $ + 3
.lbd94 equ $ + 2
.lbd93 equ $ + 1
.lbd92
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd9e equ $ + 4
.lbd9c equ $ + 2
.lbd9a
	db #00,#00,#00,#00,#00
.lbd9f
	ld a,(lbdba)
	and #48
	adc #38
	sla a
	sla a
	ld hl,lbdbd
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.lbdbd equ $ + 3
.lbdbb equ $ + 1
.lbdba
	db #ff,#80,#1b,#34
.lbdbe
	db #30
	dw lbddb,lbdd3,lbde3
	db #36
	dw lbf54,lbf4c,lbf50
	db #1a
	dw lbf95,lbf83,lbf9d
.lbdd3
	dw lbdeb,lbe13,lbff5,#0000
.lbddb
	dw lbde9,lbe96,lbff5,#0000
.lbde3
	dw lbef2,lbff5,#0000
.lbdeb equ $ + 2
.lbde9
	db #92,#f4,#8a,#88,#01,#01,#da,#93
	db #0a,#e3,#11,#fb,#12,#93,#0b,#e3
	db #11,#fb,#12,#e3,#11,#12,#e3,#11
	db #fb,#12,#93,#0c,#e3,#11,#12,#e3
	db #11,#12,#e3,#11,#12,#e3,#11,#ef
.lbe13 equ $ + 2
	db #12,#87,#db,#e1,#93,#0d,#11,#12
	db #11,#12,#11,#12,#11,#12,#11,#12
	db #11,#12,#11,#12,#11,#12,#93,#0e
	db #11,#12,#11,#12,#11,#12,#11,#12
	db #11,#12,#11,#12,#11,#12,#11,#12
	db #11,#12,#11,#12,#11,#12,#11,#12
	db #11,#12,#11,#12,#11,#12,#11,#12
	db #11,#12,#11,#12,#11,#12,#11,#12
	db #11,#12,#11,#12,#11,#12,#11,#12
	db #93,#0f,#11,#12,#11,#12,#11,#12
	db #11,#12,#11,#12,#11,#12,#11,#12
	db #11,#12,#11,#12,#11,#12,#11,#12
	db #11,#12,#11,#12,#11,#12,#11,#12
	db #11,#12,#11,#12,#11,#12,#11,#12
	db #11,#12,#11,#12,#11,#12,#11,#12
	db #11,#12,#11,#12,#11,#12,#11,#12
.lbe96 equ $ + 5
	db #11,#12,#11,#12,#87,#d9,#92,#00
	db #eb,#80,#e7,#0f,#0f,#e3,#0f,#eb
	db #8f,#e7,#0f,#0f,#e3,#0f,#eb,#8f
	db #e7,#0f,#0f,#e3,#0f,#eb,#8f,#e7
	db #0f,#0f,#e3,#0f,#db,#e1,#1b,#1c
	db #1b,#1c,#1b,#1c,#1b,#1c,#1b,#1c
	db #1b,#1c,#1b,#1c,#1b,#1c,#1b,#1c
	db #1b,#1c,#1b,#1c,#1b,#1c,#1b,#1c
	db #1b,#1c,#1b,#1c,#1b,#1c,#27,#28
	db #27,#28,#27,#28,#27,#28,#27,#28
	db #27,#28,#27,#28,#27,#28,#27,#28
	db #27,#28,#27,#28,#27,#28,#27,#28
.lbef2 equ $ + 1
	db #87,#8a,#d4,#88,#01,#01,#ff,#80
	db #80,#80,#80,#80,#fb,#80,#e0,#1b
	db #1e,#ff,#26,#e7,#80,#e0,#1b,#1e
	db #e2,#26,#e0,#1b,#1e,#e2,#28,#e1
	db #80,#e0,#1b,#1e,#e5,#26,#e1,#28
	db #23,#1c,#e3,#1a,#eb,#8f,#80,#88
	db #01,#01,#e0,#27,#2a,#f7,#32,#e7
	db #80,#e0,#27,#2a,#e1,#32,#e1,#34
	db #2f,#28,#ff,#26,#db,#e1,#34,#34
	db #34,#34,#34,#34,#34,#34,#d2,#81
	db #e5,#c1,#3f,#e3,#3f,#e5,#3f,#c0
	db #93,#0f,#87
.lbf50 equ $ + 4
.lbf4c
	dw lbf5a,#0000,lbf58,#0000
.lbf54
	dw lbf74,#0000
.lbf5a equ $ + 2
.lbf58
	db #92,#f4,#8a,#88,#01,#01,#db,#93
	db #0c,#e1,#11,#12,#93,#0d,#e1,#11
	db #12,#93,#0e,#e1,#11,#12,#93,#0f
.lbf74 equ $ + 4
	db #e1,#11,#12,#8e,#8a,#88,#01,#01
	db #db,#e1,#0f,#10,#0f,#10,#0f,#10
	db #0f,#10,#87
.lbf83
	dw lbfa1,lbfa3,lbfa3,lbff9
	dw lbfa1,lbfa3,lbfa3,lbffc
.lbf95 equ $ + 2
	dw #0000,lbfda,lbfb7,lbfda
.lbf9d equ $ + 2
	dw #0000,lbfd7,#0000
.lbfa3 equ $ + 2
.lbfa1
	db #93,#0c,#8a,#d1,#88,#01,#01,#e3
	db #16,#e7,#1b,#16,#18,#16,#1b,#16
.lbfb7 equ $ + 6
	db #18,#e3,#16,#93,#0d,#87,#88,#01
	db #01,#e3,#29,#2e,#2b,#32,#29,#e1
	db #33,#35,#37,#33,#e3,#32,#29,#2e
	db #2b,#e1,#32,#35,#33,#32,#38,#37
.lbfd7 equ $ + 6
	db #35,#33,#35,#33,#81,#87,#88,#01
.lbfda equ $ + 1
	db #01,#8a,#d0,#e3,#2e,#33,#2e,#35
	db #2e,#e1,#37,#38,#3a,#37,#e3,#35
	db #2e,#33,#2e,#e1,#35,#38,#37,#35
.lbff5 equ $ + 4
	db #3c,#e9,#3a,#87,#f7,#80,#80,#87
.lbffc equ $ + 3
.lbff9
	db #89,#ff,#87,#89,#00,#87
;
.music_info
	db "Jaws (1987)(Screen 7)()",0
	db "",0

	read "music_end.asm"
