; Music of Battle Command (1991)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 06/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BATTLECO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #707a

	read "music_header.asm"

;
.init_music
;
	ld hl,l714a
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
	ld hl,l78fc
	add hl,bc
	ld a,(hl)
	ld (l7178),a
	inc hl
	ld ix,l70d4
	ld c,#27
	ld a,#03
.l709b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#20),#00
	ld (ix+#21),#00
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#03),e
	ld (ix+#04),d
	ld (ix+#05),e
	ld (ix+#06),d
	ld (ix+#25),#01
	add ix,bc
	dec a
	jr nz,l709b
	ld (l7430),a
	inc a
	ld (l7149),a
	ld (l714a),a
	ret
.l70d4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l70fb
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l7122
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.l7149
	db #00
.l714a
.music_end
	db #00
.l714b
	db #00
;
.play_music
;
	call l76d1
	ld a,(l714a)
	and a
	jp z,l71a8
.l7157 equ $ + 1
	ld a,#22
	ld (l71a4),a
	ld hl,l7149
	dec (hl)
	jr nz,l717c
	ld b,(hl)
	ld ix,l70d4
	call l7328
	ld ix,l70fb
	call l7328
	ld ix,l7122
	call l7328
.l7178 equ $ + 1
	ld a,#01
	ld (l7149),a
.l717c
	ld ix,l70d4
	call l73fd
	ld (l750e),hl
	ld (l7516),a
	ld ix,l70fb
	call l73fd
	ld (l7510),hl
	ld (l7517),a
	ld ix,l7122
	call l73fd
	ld (l7512),hl
	ld (l7518),a
.l71a4 equ $ + 1
	ld a,#22
	ld (l7514),a
.l71a8
	ld a,(l714b)
	and a
	jr z,l71d8
	ld hl,(l751b)
	ld (l750e),hl
	ld hl,(l751f)
	ld (l7512),hl
	ld a,(l7521)
	ld (l7514),a
	ld a,(l7515)
	or #2d
	ld hl,l7522
	and (hl)
	ld (l7515),a
	ld a,(l7523)
	ld (l7516),a
	ld a,(l7525)
	ld (l7518),a
.l71da equ $ + 2
.l71d8
	ld a,(l714a)
	ld hl,l714b
	or (hl)
	ret z
	ld hl,l7519
	ld d,#0b
.l71e5
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),e
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l71e5
	ret
.l7209
	xor a
	ld (l714a),a
.l720d
	ld de,#0d00
.l7210
	call l721a
	dec d
	jp p,l7210
	ld de,#073f
.l721a
	ld b,#f4
	out (c),d
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),e
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	xor a
	ld (l714b),a
	ld (l7516),a
	ld (l7517),a
	ld (l7518),a
	ret
;
.stop_music
;
	xor a
	ld (l714a),a
	ld (l714b),a
	call l720d
	xor a
	ld (l7516),a
	ld (l7517),a
	ld (l7518),a
	ret
	db #a2,#8a,#8e,#93,#51,#80,#7b,#11
	db #6a,#62,#26,#10,#38,#8f,#06,#9c
	db #a1,#a6,#aa,#b0
	pop hl
	jp l7209
	jp l75e7
	ld a,(ix+#26)
	ld c,a
	and #07
	ld hl,l74d9
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l733d
	ld a,(ix+#26)
	ld c,a
	and #38
	ld hl,l74d9
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l733d
	ld hl,l74d9
	ld a,(ix+#26)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l733d
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l733d
	ld a,(de)
	inc de
	ld (l7430),a
	jr l733d
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l733d
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l733d
	ld (ix+#1d),b
	jr l733d
	ld (ix+#1d),#40
	jr l733d
	ld (ix+#1d),#c0
	jr l733d
	set 1,(ix+#00)
	jr l733d
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l737b
	res 5,(ix+#00)
	jr l737b
	ld (ix+#1f),#ff
	jr l733d
	ld (ix+#1f),b
	jr l733d
	ld a,#01
	ld (ix+#24),a
	jr l733d
	ld a,(de)
	inc de
	ld (ix+#11),a
	ld (ix+#24),#00
	jr l733d
.l7328
	dec (ix+#10)
	jr nz,l73a2
	ld (ix+#00),b
	ld a,(ix+#25)
	or a
	jp nz,l75e7
	ld e,(ix+#01)
	ld d,(ix+#02)
.l733d
	ld a,(de)
	inc de
	and a
	jp m,l73b3
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l7352
	ld (l7157),a
.l7352
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#0b),l
	ld (ix+#0c),h
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
.l737b
	ld a,(ix+#24)
	or a
	jr z,l7385
	ld a,(de)
	inc de
	jr l7388
.l7385
	ld a,(ix+#11)
.l7388
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l73a1
	ld a,(l714b)
	and a
	jr nz,l73a1
	ld (ix+#1f),#ff
.l73a1
	ret
.l73a2
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l73af
	inc (ix+#12)
	ret
.l73af
	dec (ix+#12)
	ret
.l73b3
	cp #b0
	jr c,l73f5
	add #20
	jr c,l73dd
	add #30
	jr nc,l73d5
	ld c,a
	ld hl,l77b4
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l733d
.l73d5
	add #09
	ld (l7178),a
	jp l733d
.l73dd
	ld hl,l77ed
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
	jp l733d
.l73f5
	ld hl,l71da
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l73fd
	ld c,(ix+#00)
	bit 5,c
	jr z,l742f
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l7429
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l7429
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l7429
	ld a,(ix+#18)
	ld (ix+#13),a
.l7430 equ $ + 1
.l742f
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l7449
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l7449
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l7527
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l74aa
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l7473
	bit 0,c
	jr nz,l7491
.l7473
	bit 5,l
	jr nz,l7483
	sub (ix+#1b)
	jr nc,l748e
	set 5,(ix+#1d)
	sub a
	jr l748e
.l7483
	add (ix+#1b)
	cp b
	jr c,l748e
	res 5,(ix+#1d)
	ld a,b
.l748e
	ld (ix+#1c),a
.l7491
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l749c
	dec d
.l749c
	add #a0
	jr c,l74a8
.l74a0
	sla e
	rl d
	add #18
	jr nc,l74a0
.l74a8
	add hl,de
	ex de,hl
.l74aa
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l74d5
	ld b,(ix+#0e)
	djnz l74d2
	ld c,(ix+#0d)
	bit 7,c
	jr z,l74c1
	dec b
.l74c1
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l74d5
.l74d2
	ld (ix+#0e),b
.l74d5
	cpl
	and #03
.l74d9 equ $ + 1
	ld a,#18
	jr nz,l74e6
	ld a,(l7157)
	xor #08
	ld (l71a4),a
	ld a,#07
.l74e6
	ld hl,l7515
	xor (hl)
	and (ix+#26)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l7509
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#26)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l71a4),a
.l7509
	ex de,hl
	ld a,(ix+#13)
	ret
.l7515 equ $ + 7
.l7514 equ $ + 6
.l7512 equ $ + 4
.l7510 equ $ + 2
.l750e
	db #80,#04,#80,#04,#ef,#00,#22,#18
.l751c equ $ + 6
.l751b equ $ + 5
.l7519 equ $ + 3
.l7518 equ $ + 2
.l7517 equ $ + 1
.l7516
	db #03,#03,#09,#00,#00,#00,#00,#00
.l7525 equ $ + 7
.l7523 equ $ + 5
.l7522 equ $ + 4
.l7521 equ $ + 3
.l751f equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l7527
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
.l75e7
	xor a
	ld (ix+#25),a
	ld l,(ix+#03)
	ld h,(ix+#04)
.l75f1
	ld a,(ix+#21)
	or a
	jp z,l760d
	dec a
	ld (ix+#21),a
	jp z,l7611
	ld l,(ix+#22)
	ld h,(ix+#23)
	ld (ix+#03),l
	ld (ix+#04),h
	jr l7611
.l760d
	ld (ix+#20),#00
.l7611
	ld a,(hl)
	inc hl
	or a
	jp m,l7634
	ld (ix+#03),l
	ld (ix+#04),h
	add a
	ld e,a
	ld d,#00
	ld hl,l7903
	add hl,de
	ld a,(hl)
	ld e,a
	inc hl
	ld d,(hl)
	ld (ix+#01),e
	ld (ix+#02),d
	ld b,#00
	jp l733d
.l7634
	cp #fd
	jr z,l766b
	cp #ff
	jr z,l7663
	cp #fe
	jr z,l7655
	cp #fc
	jr z,l764e
.l7644
	ld a,r
	out (#fe),a
	ld b,#64
.l764a
	djnz l764a
	jr l7644
.l764e
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l7611
.l7655
	ld a,(hl)
	inc hl
	ld (ix+#21),a
	ld (ix+#22),l
	ld (ix+#23),h
	jp l7611
.l7663
	ld a,(hl)
	inc hl
	ld (ix+#20),a
	jp l7611
.l766b
	ld l,(ix+#05)
	ld h,(ix+#06)
	jp l75f1
	push af
	push bc
	push de
	push hl
	push ix
	ld hl,l714b
	ld (hl),#00
	ld hl,l776f
	add a
	add l
	ld l,a
	jr nc,l7688
	inc h
.l7688
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l7782
.l7690
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l7690
	ld a,(l7783)
	ld (l7793),a
	ld hl,(l7784)
	ld (l751b),hl
	ld de,(l7786)
	ld (l751f),de
	ld a,l
	ld (l7521),a
	ld a,(l7789)
	ld (l7522),a
	ld a,(l7788)
	ld e,a
	ld d,#0c
	call l721a
	ld a,(l7792)
	ld e,a
	ld d,#0d
	call l721a
	ld hl,l714b
	inc (hl)
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l76d1
	call l7795
	ld a,(l714b)
	and a
	ret z
	ld a,(l7782)
	and a
	jr nz,l76e5
	ld (l714b),a
	jp l720d
.l76e5
	dec a
	ld (l7782),a
	ld a,(l7793)
	and a
	jr nz,l771e
	ld a,(l7790)
	and a
	ret z
	dec a
	ld (l7790),a
	ld a,(l7783)
	ld (l7793),a
	ld a,(l7791)
	and a
	jr z,l7707
	ld a,(l77b0)
.l7707
	ld b,a
	ld a,(l7784)
	add b
	ld (l751b),a
	ld a,(l7785)
	add b
	and #0f
	ld (l751c),a
	ld hl,(l7786)
	ld (l751f),hl
.l771e
	ld hl,l7793
	dec (hl)
	ld a,(l778e)
	and a
	jr z,l7745
	jp p,l7738
	ld hl,(l751b)
	ld de,(l778a)
	add hl,de
	ld (l751b),hl
	jr l7745
.l7738
	ld hl,(l751b)
	ld de,(l778a)
	and a
	sbc hl,de
	ld (l751b),hl
.l7745
	ld a,(l778f)
	and a
	jr z,l7768
	jp p,l775b
	ld hl,(l751f)
	ld de,(l778c)
	add hl,de
	ld (l751f),hl
	jr l7768
.l775b
	ld hl,(l751f)
	ld de,(l778c)
	and a
	sbc hl,de
	ld (l751f),hl
.l7768
	ld a,(l751b)
	ld (l7521),a
	ret
.l776f
	dw l7771
.l7771
	db #07,#00,#30,#00,#80,#00,#03,#d2
	db #78,#00,#78,#00,#ff,#ff,#01,#00
.l7788 equ $ + 7
.l7786 equ $ + 5
.l7785 equ $ + 4
.l7784 equ $ + 3
.l7783 equ $ + 2
.l7782 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7790 equ $ + 7
.l778f equ $ + 6
.l778e equ $ + 5
.l778c equ $ + 3
.l778a equ $ + 1
.l7789
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7793 equ $ + 2
.l7792 equ $ + 1
.l7791
	db #00,#00,#00,#00
.l7795
	ld a,(l77b0)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l77b3
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l77b3 equ $ + 3
.l77b0
	db #66,#80,#e0,#30
.l77b4
	db #07,#07,#0c,#13,#17,#1b,#22,#80
	db #00,#00,#00,#0c,#0c,#8c,#00,#00
	db #18,#18,#06,#06,#0c,#8c,#10,#07
	db #04,#10,#80,#0f,#07,#03,#0f,#80
	db #00,#04,#00,#02,#00,#01,#80,#18
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #80
.l77ed
	dw l7808,l7834,l783b,l7851
	dw l7863,l7866,l7871,l78a1
	dw l78b8,l78c7,l78d2,l78d8
	dw l78e8
.l7808 equ $ + 1
	db #00,#0c,#0d,#0c,#08,#08,#00,#00
	db #00,#00,#00,#00,#06,#06,#08,#08
	db #06,#06,#00,#00,#00,#00,#00,#00
	db #06,#06,#08,#08,#06,#06,#00,#00
	db #00,#00,#00,#00,#03,#03,#06,#06
.l7834 equ $ + 5
	db #03,#03,#00,#87,#00,#0c,#0b,#0a
.l783b equ $ + 4
	db #09,#08,#87,#00,#0e,#0d,#0c,#0c
	db #0c,#0c,#0a,#0a,#0a,#0a,#08,#08
	db #08,#06,#06,#06,#03,#03,#03,#00
.l7851 equ $ + 2
	db #87,#08,#03,#04,#05,#06,#07,#08
	db #09,#0a,#0b,#0c,#0d,#0c,#0b,#0a
.l7866 equ $ + 7
.l7863 equ $ + 4
	db #09,#08,#87,#00,#06,#87,#00,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l7871 equ $ + 2
	db #87,#00,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#07,#07,#06
	db #06,#06,#06,#05,#05,#05,#05,#04
	db #04,#04,#04,#03,#03,#03,#03,#02
	db #02,#02,#02,#01,#01,#01,#01,#00
.l78a1 equ $ + 2
	db #87,#00,#0e,#0e,#0e,#0e,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0b,#87
.l78b8 equ $ + 1
	db #00,#0d,#0c,#0c,#0b,#09,#08,#06
	db #05,#04,#03,#02,#01,#00,#87,#00
.l78c7
	db #0b,#0c,#0d,#0e,#0d,#0c,#0b,#0a
.l78d2 equ $ + 3
	db #09,#87,#00,#0e,#0a,#08,#00,#87
.l78d8 equ $ + 1
	db #00,#0c,#0e,#0d,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#87
.l78e8 equ $ + 1
	db #00,#0f,#0f,#0e,#0e,#0d,#0c,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
	db #03,#02,#01,#00,#87
.l78fc
	db #01
	dw l7925,l7955,l7969
.l7903
	dw l799f,l79c7,l79f3,l7a11
	dw l7a45,l7a97,l7a6f,l7a9b
	dw l7ae1,l7b0b,l7b31,l7b4d
	dw l7b88,l7b97,l7ba9,l7bbb
	dw l7bf7
.l7925
	db #0d,#00,#fe,#02,#07,#08,#ff,#fe
	db #08,#ff,#fc,#08,#09,#08,#ff,#fe
	db #08,#ff,#fc,#08,#09,#08,#ff,#fe
	db #08,#ff,#fc,#08,#09,#08,#ff,#fe
	db #08,#ff,#fc,#08,#09,#fe,#05,#ff
	db #fb,#08,#fe,#02,#05,#fc,#25,#79
.l7955
	db #0e,#01,#fe,#08,#05,#fe,#02,#07
	db #ff,#f4,#03,#ff,#f4,#03,#fe,#07
.l7969 equ $ + 4
	db #05,#fc
	dw l7955
	db #fe,#03,#0b,#0f
	db #0c,#0c,#02,#fe,#04,#04,#fe,#04
	db #06,#fe,#04,#04,#fe,#04,#06,#fe
	db #04,#04,#fe,#04,#06,#fe,#04,#04
	db #fe,#04,#06,#fe,#04,#04,#fe,#04
	db #06,#fe,#04,#04,#fe,#04,#06,#fe
	db #02,#05,#fe,#06,#0a,#0b,#0f,#fc
.l799f equ $ + 2
	dw l7969
	db #e0,#8a,#b0,#93,#18,#81
	db #2d,#34,#2d,#34,#2d,#34,#2d,#34
	db #2d,#34,#2d,#34,#2d,#34,#2d,#34
	db #2d,#34,#2d,#34,#2d,#34,#2d,#34
	db #2d,#34,#2d,#34,#2d,#34,#2d,#34
.l79c7 equ $ + 2
	db #92,#87,#e0,#8a,#b0,#81,#92,#80
	db #0c,#93,#18,#32,#36,#32,#36,#32
	db #36,#32,#36,#32,#36,#32,#36,#32
	db #36,#32,#36,#32,#35,#32,#35,#32
	db #35,#32,#35,#32,#35,#32,#35,#32
.l79f3 equ $ + 6
	db #35,#32,#92,#35,#0c,#87,#8b,#92
	db #1f,#30,#1f,#30,#1f,#30,#1f,#30
	db #1f,#30,#1f,#30,#1f,#30,#1f,#18
	db #1f,#0c,#8c,#b5,#22,#04,#22,#04
.l7a11 equ $ + 4
	db #22,#04,#b0,#87,#e9,#8a,#92,#83
	db #88,#01,#01,#84,#05,#ae,#3e,#b4
	db #42,#06,#80,#06,#43,#18,#45,#0c
	db #43,#18,#42,#06,#80,#06,#43,#60
	db #3e,#18,#3a,#24,#39,#1e,#80,#06
	db #35,#48,#32,#0c,#34,#18,#35,#0c
	db #36,#06,#84,#05,#b4,#37,#ba,#87
.l7a45
	db #8a,#e5,#b3,#32,#06,#32,#06,#32
	db #0c,#b5,#ec,#8c,#22,#0c,#8a,#b3
	db #e5,#32,#06,#32,#06,#26,#06,#32
	db #06,#32,#06,#32,#06,#b5,#ec,#8c
	db #22,#0c,#8a,#b3,#e5,#26,#06,#32
.l7a6f equ $ + 2
	db #06,#87,#b4,#32,#06,#32,#06,#32
	db #0c,#b5,#ec,#8c,#22,#0c,#8a,#b4
	db #e5,#32,#06,#32,#06,#b3,#30,#0c
	db #30,#06,#b4,#32,#06,#b5,#ec,#8c
	db #22,#0c,#8a,#e5,#b3,#30,#06,#30
.l7a9b equ $ + 6
.l7a97 equ $ + 2
	db #06,#87,#92,#80,#c0,#87,#e0,#8a
	db #91,#93,#0c,#2d,#32,#34,#36,#2d
	db #32,#34,#36,#2d,#32,#34,#36,#2d
	db #32,#34,#36,#2d,#32,#34,#36,#2d
	db #32,#34,#36,#2d,#32,#34,#36,#2d
	db #32,#34,#36,#2d,#32,#34,#35,#2d
	db #32,#34,#35,#2d,#32,#34,#35,#2d
	db #32,#34,#35,#2d,#32,#34,#35,#2d
	db #32,#34,#35,#2d,#32,#34,#35,#2d
.l7ae1 equ $ + 4
	db #32,#34,#35,#87,#8a,#90,#b6,#e8
	db #93,#06,#0e,#1a,#26,#0e,#18,#26
	db #0e,#26,#0e,#1a,#26,#0e,#18,#26
	db #0e,#26,#0e,#1a,#26,#0e,#18,#26
	db #0e,#26,#0e,#1a,#26,#0e,#18,#26
.l7b0b equ $ + 6
	db #8c,#eb,#b5,#25,#25,#87,#8a,#90
	db #b6,#e8,#13,#1f,#2b,#13,#1f,#2b
	db #13,#2b,#13,#1f,#2b,#13,#1f,#2b
	db #13,#2b,#18,#24,#30,#18,#24,#30
	db #18,#30,#15,#21,#2d,#15,#21,#2d
.l7b31 equ $ + 4
	db #1f,#11,#91,#87,#92,#8a,#81,#b4
	db #32,#06,#32,#06,#32,#18,#32,#06
	db #32,#06,#b3,#30,#0c,#30,#06,#b4
	db #32,#12,#b3,#30,#06,#30,#06,#87
.l7b4d
	db #eb,#8c,#81,#91,#b5,#92,#22,#02
	db #22,#0e,#22,#08,#22,#02,#22,#0e
	db #22,#08,#22,#02,#22,#0e,#22,#08
	db #22,#02,#22,#0e,#22,#08,#22,#02
	db #22,#06,#22,#08,#22,#08,#22,#02
	db #22,#06,#22,#08,#22,#08,#22,#02
	db #22,#0e,#22,#08,#22,#02,#22,#0e
.l7b88 equ $ + 3
	db #22,#08,#87,#eb,#8b,#b0,#81,#91
	db #92,#1f,#30,#1f,#30,#1f,#30,#1f
.l7b97 equ $ + 2
	db #30,#87,#92,#8a,#e3,#b0,#82,#88
	db #01,#02,#91,#09,#c0,#8f,#c0,#8f
.l7ba9 equ $ + 4
	db #c0,#8f,#c0,#87,#92,#8a,#e3,#b0
	db #82,#88,#01,#02,#91,#09,#c0,#8f
.l7bbb equ $ + 6
	db #c0,#8f,#c0,#8f,#c0,#87,#92,#22
	db #02,#22,#0e,#22,#08,#22,#02,#22
	db #0e,#22,#08,#22,#02,#22,#0e,#22
	db #08,#22,#02,#22,#0e,#22,#08,#22
	db #02,#22,#06,#22,#08,#22,#08,#22
	db #02,#22,#06,#22,#08,#22,#08,#22
	db #02,#22,#0e,#22,#08,#22,#02,#22
	db #06,#22,#04,#22,#04,#22,#04,#22
	db #04,#87
.l7bf7
	db #22,#04,#22,#04,#22,#04,#22,#04
	db #87

;	db #4e,#00,#4e,#00,#23,#00,#dd
;	db #ff,#b2,#ff,#b2,#ff,#dd,#ff,#23
;	db #00,#46,#00,#46,#00,#ba,#ff,#ba
;	db #ff,#11,#00,#ee,#ff,#23,#00,#dd
;	db #ff,#23,#00,#11,#00,#dd,#ff,#ee
;	db #ff,#11,#00,#ee,#ff,#11,#00,#ee
;	db #ff,#cb,#ff,#34,#00,#11,#00,#ee
;	db #ff,#22,#00,#33,#00,#dd,#ff,#cc
;	db #ff,#46,#00,#46,#00,#46,#00,#46
;	db #00,#ba,#ff,#ba,#ff,#46,#00,#46
;	db #00,#ba,#ff,#ba,#ff,#ba,#ff,#ba
;	db #ff,#ba,#ff,#ba,#ff,#ba,#ff,#ba
;	db #ff,#dd,#ff,#dd,#ff,#dd,#ff,#dd
;	db #ff,#21,#75,#00,#00,#23,#00,#ba
;	db #ff,#dd,#ff,#00,#00,#08,#00,#00
;	db #00,#00,#00,#00,#00,#ba,#ff,#46
;	db #00

;
.music_info
	db "Battle Command (1991)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
