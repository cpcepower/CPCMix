; Music of Rad Ramp Racer (1989)(Mastertronic)()()
; Ripped by Megachur the 04/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RADRAMPR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #73b0
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
.init_music	;73b0 0->3
;
	push af
	call l75eb
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l8007
	add hl,bc
	ld a,(hl)
	ld (l748f),a
	ld (l78cd),a
	inc hl
	ld ix,l740e
	ld c,#22
	ld a,#03
.l73d1
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
	jr nz,l73d1
	ld (l7803),a
	dec a
	ld (l78ce),a
	ld (l78c8),a
	ret
.l740e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l7430
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l7452
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music	;7474
;
	ld a,(l78c8)
	ld hl,l78c9
	or (hl)
	inc hl
	or (hl)
	inc hl
	or (hl)
	ret z
	call l7b9c
	ld a,(l78c8)
	and a
	jr z,l74da
.l748a equ $ + 1
	ld a,#00
	ld (l74d6),a
.l748f equ $ + 1
	ld a,#01
	ld hl,l78ce
	add (hl)
	ld (hl),a
	jr nc,l74ae
	ld b,#00
	ld ix,l740e
	call l7711
	ld ix,l7430
	call l7711
	ld ix,l7452
	call l7711
.l74ae
	ld ix,l740e
	call l77d0
	ld (l78cf),hl
	ld (l78d7),a
	ld ix,l7430
	call l77d0
	ld (l78d1),hl
	ld (l78d8),a
	ld ix,l7452
	call l77d0
	ld (l78d3),hl
	ld (l78d9),a
.l74d6 equ $ + 1
	ld a,#00
	ld (l78d5),a
.l74da
	ld a,(l78c8)
	and a
	jr nz,l74f0
	ld (l78d7),a
	ld (l78d8),a
	ld (l78d9),a
	ld a,#3f
	ld (l78d6),a
	jr l7518
.l74f0
	ld a,(l78cc)
	and #0f
	xor #0f
	jr z,l7518
	ld b,a
	ld a,(l78d7)
	sub b
	jr nc,l7501
	xor a
.l7501
	ld (l78d7),a
	ld a,(l78d8)
	sub b
	jr nc,l750b
	xor a
.l750b
	ld (l78d8),a
	ld a,(l78d9)
	sub b
	jr nc,l7515
	xor a
.l7515
	ld (l78d9),a
.l7519 equ $ + 1
.l7518
	ld a,#00
	xor #ff
	ld (l7519),a
	ld a,(l78c9)
	and a
	jr z,l7547
	ld hl,(l78dc)
	ld (l78cf),hl
	ld a,(l7faf)
	ld b,a
	bit 3,a
	jr nz,l7539
	ld a,(l78e2)
	ld (l78d5),a
.l7539
	ld hl,l78d6
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l78e4)
	ld (l78d7),a
.l7547
	ld a,(l78ca)
	and a
	jr z,l7571
	ld hl,(l78de)
	ld (l78d1),hl
	ld a,(l7fc4)
	ld b,a
	bit 3,a
	jr nz,l7561
	ld a,(l78e2)
	ld (l78d5),a
.l7561
	ld hl,l78d6
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(l78e5)
	ld (l78d8),a
.l7571
	ld a,(l78cb)
	and a
	jr z,l759d
	ld hl,(l78e0)
	ld (l78d3),hl
	ld a,(l7fd9)
	ld b,a
	bit 3,a
	jr nz,l758b
	ld a,(l78e2)
.l758a equ $ + 2
	ld (l78d5),a
.l758b
	ld hl,l78d6
	ld a,(hl)
	or #24
	rlc b
	rlc b
	and b
	ld (hl),a
	ld a,(l78e6)
	ld (l78d9),a
.l759d
	ld hl,l78d9
	ld d,#0a
.l75a2
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
	jp p,l75a2
	ret
.l75c3
	ld de,#0a00
.l75c6
	call l75d0
	dec d
	jp p,l75c6
	ld de,#073f
.l75d0
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
.l75eb
;
	xor a
	ld (l78c8),a
	call l75fd
	xor a
	ld (l78d7),a
	ld (l78d8),a
	ld (l78d9),a
	ret
.l75fd
	xor a
	ld (l78c9),a
	ld (l78ca),a
	ld (l78cb),a
	jp l75c3
	db #f1
	db #d5
	db #ce
	db #d8
	db #9b
	db #e0
	db #db
	db #32
	db #bb
	db #ac
	db #71
	db #5b
	db #83
	db #de
	db #27
	db #eb
	db #ec
	db #f1
	db #aa
	db #0a
	db #01
	db #1a
	db #13
	ld (l748f),a
	jp l771f
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
	jp l771f
	pop hl
	jp l75eb
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
	jr nz,l7665
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l7665
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l771f
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,l7893
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l771f
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l7893
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l771f
	ld hl,l7893
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l771f
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l771f
	ld a,(de)
	inc de
	ld (l7803),a
	jr l771f
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l771f
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l771f
	ld (ix+#1d),b
	jr l771f
	ld (ix+#1d),#c0
	jr l771f
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l771f
	set 1,(ix+#00)
	jr l771f
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l774e
	jr l774a
	ld (ix+#1f),#ff
	jr l771f
	ld (ix+#1f),b
	jr l771f
.l7711
	dec (ix+#10)
	jr nz,l778c
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l771f
	ld a,(de)
	inc de
	and a
	jp m,l779d
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l7731
	ld (l748a),a
.l7731
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.l774a
	set 5,(ix+#00)
.l774e
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l778b
	ld a,(l78c9)
	and a
	jr z,l776d
	ld a,(l7faf)
	bit 3,a
	jr z,l778b
.l776d
	ld a,(l78ca)
	and a
	jr z,l777a
	ld a,(l7fc4)
	bit 3,a
	jr z,l778b
.l777a
	ld a,(l78cb)
	and a
	jr z,l7787
	ld a,(l7fd9)
	bit 3,a
	jr z,l778b
.l7787
	ld (ix+#1f),#ff
.l778b
	ret
.l778c
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l7799
	inc (ix+#12)
	ret
.l7799
	dec (ix+#12)
	ret
.l779d
	cp #c0
	jr c,l77c8
	add #20
	jr c,l77a9
	add #10
	jr c,l77b0
.l77a9
	inc a
	ld (ix+#11),a
	jp l771f
.l77b0
	ld hl,l79ac
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
	jp l771f
.l77c8
	ld hl,l758a
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l77d0
	ld c,(ix+#00)
	bit 5,c
	jr z,l7802
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l77fc
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l77fc
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l77fc
	ld a,(ix+#18)
	ld (ix+#13),a
.l7803 equ $ + 1
.l7802
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld hl,l78e8
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l7864
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l782d
	bit 0,c
	jr nz,l784b
.l782d
	bit 5,l
	jr nz,l783d
	sub (ix+#1b)
	jr nc,l7848
	set 5,(ix+#1d)
	sub a
	jr l7848
.l783d
	add (ix+#1b)
	cp b
	jr c,l7848
	res 5,(ix+#1d)
	ld a,b
.l7848
	ld (ix+#1c),a
.l784b
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l7856
	dec d
.l7856
	add #a0
	jr c,l7862
.l785a
	sla e
	rl d
	add #18
	jr nc,l785a
.l7862
	add hl,de
	ex de,hl
.l7864
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l788f
	ld b,(ix+#0e)
	djnz l788c
	ld c,(ix+#0d)
	bit 7,c
	jr z,l787b
	dec b
.l787b
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l788f
.l788c
	ld (ix+#0e),b
.l788f
	cpl
	and #03
.l7893 equ $ + 1
	ld a,#38
	jr nz,l78a0
	ld a,(l748a)
	xor #08
	ld (l74d6),a
	ld a,#07
.l78a0
	ld hl,l78d6
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l78c3
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l74d6),a
.l78c3
	ex de,hl
	ld a,(ix+#13)
	ret
.l78c8
.music_end
	db #00
.l78ca equ $ + 1
.l78c9
	db #00,#00
.l78d1 equ $ + 6
.l78cf equ $ + 4
.l78ce equ $ + 3
.l78cd equ $ + 2
.l78cc equ $ + 1
.l78cb
	db #00,#0f,#00,#00,#00,#00,#00,#00
.l78d9 equ $ + 6
.l78d8 equ $ + 5
.l78d7 equ $ + 4
.l78d6 equ $ + 3
.l78d5 equ $ + 2
.l78d3
	db #00,#00,#00,#3f,#0f,#0f,#0f,#00
.l78e2 equ $ + 7
.l78e1 equ $ + 6
.l78e0 equ $ + 5
.l78df equ $ + 4
.l78de equ $ + 3
.l78dd equ $ + 2
.l78dc equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l78e6 equ $ + 3
.l78e5 equ $ + 2
.l78e4 equ $ + 1
	db #3f,#00,#00,#00,#00
.l78e8
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
	db #00,#00,#00,#80
.l79ac
	dw l79cd,l79d5,l79e1,l79f3
	dw l7a05,l7a0c,l7a13,l7a28
	dw l7a31,l7a42,l7a53,l7a63
	dw l7a74,l7a77,l7a7a,l7a7d
.l79cd equ $ + 1
	db #01,#0f,#0d,#0b,#08,#05,#02,#87
.l79d5 equ $ + 1
	db #01,#0e,#0d,#0b,#09,#07,#05,#04
.l79e1 equ $ + 5
	db #03,#02,#01,#87,#01,#0f,#0e,#0d
	db #0b,#0d,#0c,#0a,#09,#0b,#0a,#08
.l79f3 equ $ + 7
	db #07,#09,#08,#06,#05,#87,#01,#0f
	db #0f,#0d,#0b,#0d,#0c,#0a,#09,#0b
	db #0a,#08,#07,#09,#08,#06,#05,#87
.l7a05 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#87,#01
.l7a13 equ $ + 7
.l7a0c
	db #0e,#0d,#0c,#0b,#0a,#87,#01,#0e
	db #0d,#0c,#0b,#0a,#09,#01,#08,#01
	db #07,#01,#06,#01,#05,#01,#04,#01
.l7a28 equ $ + 4
	db #02,#01,#87,#04,#08,#09,#0a,#0b
.l7a31 equ $ + 5
	db #0c,#0d,#0e,#87,#05,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l7a42 equ $ + 6
	db #04,#03,#02,#01,#87,#08,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l7a53 equ $ + 7
	db #05,#04,#03,#02,#01,#87,#04,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l7a63 equ $ + 7
	db #05,#04,#03,#02,#01,#87,#04,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#01
.l7a7a equ $ + 6
.l7a77 equ $ + 3
.l7a74
	db #0c,#87,#01,#0d,#87,#01,#0e,#87
.l7a7d equ $ + 1
	db #01,#0f,#87
	ld hl,l7a88
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l7a88
	inc bc
	ld e,l
	or a
	ld hl,l78c9
	ld (hl),#00
	ld hl,l7dc8
	add a
	add l
	ld l,a
	jr nc,l7a99
	inc h
.l7a99
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l7fa9
.l7aa1
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l7aa1
	ld a,(l7faa)
	ld (l7fb7),a
	ld hl,(l7fab)
	ld (l78dc),hl
	ld a,(l7faf)
	bit 3,a
	jr nz,l7abe
	ld a,l
	ld (l78e2),a
.l7abe
	ld a,(l7fb4)
	ld (l7fb8),a
	ld a,(l7fb6)
	ld (l7fbd),a
	ld a,(l7fb3)
	ld hl,l7f28
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l7fb9),hl
	ld (l7fbb),hl
	ld a,(hl)
	ld (l78e4),a
	ld hl,l78c9
	inc (hl)
	ret
	ld hl,l78ca
	ld (hl),#00
	ld hl,l7dc8
	add a
	add l
	ld l,a
	jr nc,l7af4
	inc h
.l7af4
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l7fbe
.l7afc
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l7afc
	ld a,(l7fbf)
	ld (l7fcc),a
	ld hl,(l7fc0)
	ld (l78de),hl
	ld a,(l7fc4)
	bit 3,a
	jr nz,l7b19
	ld a,l
	ld (l78e2),a
.l7b19
	ld a,(l7fc9)
	ld (l7fcd),a
	ld a,(l7fcb)
	ld (l7fd2),a
	ld a,(l7fc8)
	ld hl,l7f28
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l7fce),hl
	ld (l7fd0),hl
	ld a,(hl)
	ld (l78e5),a
	ld hl,l78ca
	inc (hl)
	ret
	ld hl,l78cb
	ld (hl),#00
	ld hl,l7dc8
	add a
	add l
	ld l,a
	jr nc,l7b4f
	inc h
.l7b4f
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l7fd3
.l7b57
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l7b57
	ld a,(l7fd4)
	ld (l7fe1),a
	ld hl,(l7fd5)
	ld (l78e0),hl
	ld a,(l7fd9)
	bit 3,a
	jr nz,l7b74
	ld a,l
	ld (l78e2),a
.l7b74
	ld a,(l7fde)
	ld (l7fe2),a
	ld a,(l7fe0)
	ld (l7fe7),a
	ld a,(l7fdd)
	ld hl,l7f28
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l7fe3),hl
	ld (l7fe5),hl
	ld a,(hl)
	ld (l78e6),a
	ld hl,l78cb
	inc (hl)
	ret
.l7b9c
	call l7fe8
	ld a,(l78c9)
	and a
	call nz,l7c64
	ld a,(l78ca)
	and a
	call nz,l7d16
	ld a,(l78cb)
	and a
	ret z
	ld a,(l7fd3)
	and a
	jr nz,l7bc2
	ld a,(l7fdf)
	and a
	jr nz,l7bc2
	ld (l78cb),a
	ret
.l7bc2
	dec a
	ld (l7fd3),a
	ld a,(l7fe1)
	and a
	jr nz,l7bfa
	ld a,(l7fdf)
	and a
	jr nz,l7bd8
	ld a,(l7fdc)
	and a
	jr z,l7c3c
.l7bd8
	dec a
	ld (l7fdc),a
	ld a,(l7fd4)
	ld (l7fe1),a
	ld a,(l7fda)
	and a
	jr z,l7beb
	ld a,(l8005)
.l7beb
	ld b,a
	ld a,(l7fd5)
	add b
	ld (l78e0),a
	ld a,(l7fd6)
	add b
	ld (l78e1),a
.l7bfa
	ld hl,l7fe1
	dec (hl)
	ld hl,l7fe0
	ld a,(hl)
	and a
	jr z,l7c0c
	ld hl,l7fe7
	dec (hl)
	jr nz,l7c2f
	ld (hl),a
.l7c0c
	ld a,(l7fdb)
	and a
	jr z,l7c2f
	jp p,l7c22
	ld hl,(l78e0)
	ld de,(l7fd7)
	add hl,de
	ld (l78e0),hl
	jr l7c2f
.l7c22
	ld hl,(l78e0)
	ld de,(l7fd7)
	and a
	sbc hl,de
	ld (l78e0),hl
.l7c2f
	ld a,(l7fd9)
	bit 3,a
	jr nz,l7c3c
	ld a,(l78e0)
	ld (l78e2),a
.l7c3c
	ld a,(l7fe2)
	dec a
	ld (l7fe2),a
	jr nz,l7c63
	ld a,(l7fde)
	ld (l7fe2),a
	ld hl,(l7fe5)
	ld a,(hl)
	inc hl
	and a
	jp p,l7c5d
	cp #80
	jr nz,l7c63
	ld hl,(l7fe3)
	ld a,(hl)
	inc hl
.l7c5d
	ld (l7fe5),hl
	ld (l78e6),a
.l7c63
	ret
.l7c64
	ld a,(l7fa9)
	and a
	jr nz,l7c74
	ld a,(l7fb5)
	and a
	jr nz,l7c74
	ld (l78c9),a
	ret
.l7c74
	dec a
	ld (l7fa9),a
	ld a,(l7fb7)
	and a
	jr nz,l7cac
	ld a,(l7fb5)
	and a
	jr nz,l7c8a
	ld a,(l7fb2)
	and a
	jr z,l7cee
.l7c8a
	dec a
	ld (l7fb2),a
	ld a,(l7faa)
	ld (l7fb7),a
	ld a,(l7fb0)
	and a
	jr z,l7c9d
	ld a,(l8003)
.l7c9d
	ld b,a
	ld a,(l7fab)
	add b
	ld (l78dc),a
	ld a,(l7fac)
	add b
	ld (l78dd),a
.l7cac
	ld hl,l7fb7
	dec (hl)
	ld hl,l7fb6
	ld a,(hl)
	and a
	jr z,l7cbe
	ld hl,l7fbd
	dec (hl)
	jr nz,l7ce1
	ld (hl),a
.l7cbe
	ld a,(l7fb1)
	and a
	jr z,l7ce1
	jp p,l7cd4
	ld hl,(l78dc)
	ld de,(l7fad)
	add hl,de
	ld (l78dc),hl
	jr l7ce1
.l7cd4
	ld hl,(l78dc)
	ld de,(l7fad)
	and a
	sbc hl,de
	ld (l78dc),hl
.l7ce1
	ld a,(l7faf)
	bit 3,a
	jr nz,l7cee
	ld a,(l78dc)
	ld (l78e2),a
.l7cee
	ld a,(l7fb8)
	dec a
	ld (l7fb8),a
	jr nz,l7d15
	ld a,(l7fb4)
	ld (l7fb8),a
	ld hl,(l7fbb)
	ld a,(hl)
	inc hl
	and a
	jp p,l7d0f
	cp #80
	jr nz,l7d15
	ld hl,(l7fb9)
	ld a,(hl)
	inc hl
.l7d0f
	ld (l7fbb),hl
	ld (l78e4),a
.l7d15
	ret
.l7d16
	ld a,(l7fbe)
	and a
	jr nz,l7d26
	ld a,(l7fca)
	and a
	jr nz,l7d26
	ld (l78ca),a
	ret
.l7d26
	dec a
	ld (l7fbe),a
	ld a,(l7fcc)
	and a
	jr nz,l7d5e
	ld a,(l7fca)
	and a
	jr nz,l7d3c
	ld a,(l7fc7)
	and a
	jr z,l7da0
.l7d3c
	dec a
	ld (l7fc7),a
	ld a,(l7fbf)
	ld (l7fcc),a
	ld a,(l7fc5)
	and a
	jr z,l7d4f
	ld a,(l8004)
.l7d4f
	ld b,a
	ld a,(l7fc0)
	add b
	ld (l78de),a
	ld a,(l7fc1)
	add b
	ld (l78df),a
.l7d5e
	ld hl,l7fcc
	dec (hl)
	ld hl,l7fcb
	ld a,(hl)
	and a
	jr z,l7d70
	ld hl,l7fd2
	dec (hl)
	jr nz,l7d93
	ld (hl),a
.l7d70
	ld a,(l7fc6)
	and a
	jr z,l7d93
	jp p,l7d86
	ld hl,(l78de)
	ld de,(l7fc2)
	add hl,de
	ld (l78de),hl
	jr l7d93
.l7d86
	ld hl,(l78de)
	ld de,(l7fc2)
	and a
	sbc hl,de
	ld (l78de),hl
.l7d93
	ld a,(l7fc4)
	bit 3,a
	jr nz,l7da0
	ld a,(l78de)
	ld (l78e2),a
.l7da0
	ld a,(l7fcd)
	dec a
	ld (l7fcd),a
	jr nz,l7dc7
	ld a,(l7fc9)
	ld (l7fcd),a
	ld hl,(l7fd0)
	ld a,(hl)
	inc hl
	and a
	jp p,l7dc1
	cp #80
	jr nz,l7dc7
	ld hl,(l7fce)
	ld a,(hl)
	inc hl
.l7dc1
	ld (l7fd0),hl
	ld (l78e5),a
.l7dc7
	ret
.l7dc8
	dw l7df4,l7e02,l7e10,l7e1e
	dw l7e2c,l7e3a,l7e48,l7e56
	dw l7e64,l7e72,l7e80,l7e8e
	dw l7e9c,l7eaa,l7eb8,l7ec6
	dw l7ed4,l7ee2,l7ef0,l7efe
	dw l7f0c,l7f1a
.l7df4
	db #0f,#ff,#1f,#00,#01,#00,#f7,#00
.l7e02 equ $ + 6
	db #01,#63,#01,#01,#00,#02,#2d,#00
	db #07,#00,#01,#00,#f6,#00,#ff,#ff
.l7e10 equ $ + 4
	db #00,#04,#00,#00,#14,#0a,#1f,#00
	db #02,#00,#f6,#00,#01,#63,#08,#02
.l7e1e equ $ + 2
	db #00,#00,#14,#ff,#0a,#00,#03,#00
	db #f6,#00,#ff,#0a,#08,#02,#00,#00
.l7e2c
	db #19,#05,#60,#00,#08,#00,#fe,#00
.l7e3a equ $ + 6
	db #01,#63,#08,#02,#00,#00,#14,#ff
	db #0a,#00,#08,#00,#fe,#00,#ff,#0a
.l7e48 equ $ + 4
	db #08,#02,#00,#00,#32,#03,#80,#01
	db #05,#00,#fe,#00,#01,#63,#07,#04
.l7e56 equ $ + 2
	db #00,#00,#14,#04,#00,#00,#03,#00
	db #f7,#01,#ff,#63,#00,#01,#00,#00
.l7e64
	db #fa,#09,#08,#04,#68,#00,#f6,#01
.l7e72 equ $ + 6
	db #01,#63,#00,#0f,#00,#00,#15,#07
	db #e0,#00,#0e,#00,#fe,#00,#01,#03
.l7e80 equ $ + 4
	db #08,#03,#00,#00,#07,#ff,#e0,#00
	db #0e,#00,#fe,#00,#01,#03,#08,#01
.l7e8e equ $ + 2
	db #00,#00,#0f,#ff,#30,#00,#02,#04
	db #fe,#ff,#01,#63,#08,#02,#00,#00
.l7e9c
	db #0b,#05,#0f,#00,#04,#00,#f6,#00
.l7eaa equ $ + 6
	db #01,#0a,#00,#01,#00,#00,#0f,#0f
	db #0f,#01,#01,#00,#f6,#00,#01,#00
.l7eb8 equ $ + 4
	db #00,#01,#00,#00,#1e,#06,#20,#00
	db #03,#00,#fe,#00,#01,#63,#00,#02
.l7ec6 equ $ + 2
	db #00,#00,#11,#05,#c7,#00,#20,#00
	db #f6,#00,#ff,#63,#00,#01,#00,#00
.l7ed4
	db #1e,#05,#0a,#00,#4b,#00,#fe,#00
.l7ee2 equ $ + 6
	db #ff,#ff,#00,#03,#00,#00,#32,#03
	db #a1,#00,#14,#00,#f6,#00,#ff,#ff
.l7ef0 equ $ + 4
	db #00,#04,#00,#00,#32,#0a,#0a,#00
	db #03,#00,#f6,#01,#ff,#0a,#00,#04
.l7efe equ $ + 2
	db #00,#00,#1e,#ff,#0f,#00,#01,#00
	db #f7,#00,#01,#63,#01,#01,#00,#04
.l7f0c
	db #0f,#63,#f0,#00,#21,#00,#fe,#00
.l7f1a equ $ + 6
	db #ff,#63,#00,#01,#00,#00,#1f,#20
	db #00,#00,#01,#00,#f7,#00,#ff,#05
	db #00,#0c,#00,#00
.l7f28
	dw l7f3a,l7f4a,l7f63,l7f73
	dw l7f7b,l7f80,l7f86,l7f88
	dw l7f9a
.l7f3a
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l7f4a
	db #06,#08,#0a,#0b,#0c,#0d,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l7f63 equ $ + 1
	db #ff,#06,#08,#0a,#0b,#0c,#0d,#0c
	db #0b,#0a,#08,#06,#04,#03,#02,#01
.l7f73 equ $ + 1
	db #ff,#0d,#0b,#09,#07,#05,#04,#03
.l7f80 equ $ + 6
.l7f7b equ $ + 1
	db #ff,#01,#05,#09,#0d,#80,#01,#04
.l7f88 equ $ + 6
.l7f86 equ $ + 4
	db #07,#09,#0c,#80,#0d,#80,#0f,#0f
	db #0e,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l7f9a
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
.l7fa9 equ $ + 7
	db #06,#05,#04,#03,#02,#01,#ff,#00
.l7fb1 equ $ + 7
.l7fb0 equ $ + 6
.l7faf equ $ + 5
.l7fad equ $ + 3
.l7fac equ $ + 2
.l7fab equ $ + 1
.l7faa
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7fb9 equ $ + 7
.l7fb8 equ $ + 6
.l7fb7 equ $ + 5
.l7fb6 equ $ + 4
.l7fb5 equ $ + 3
.l7fb4 equ $ + 2
.l7fb3 equ $ + 1
.l7fb2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7fc1 equ $ + 7
.l7fc0 equ $ + 6
.l7fbf equ $ + 5
.l7fbe equ $ + 4
.l7fbd equ $ + 3
.l7fbb equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7fc9 equ $ + 7
.l7fc8 equ $ + 6
.l7fc7 equ $ + 5
.l7fc6 equ $ + 4
.l7fc5 equ $ + 3
.l7fc4 equ $ + 2
.l7fc2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7fd0 equ $ + 6
.l7fce equ $ + 4
.l7fcd equ $ + 3
.l7fcc equ $ + 2
.l7fcb equ $ + 1
.l7fca
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7fd9 equ $ + 7
.l7fd7 equ $ + 5
.l7fd6 equ $ + 4
.l7fd5 equ $ + 3
.l7fd4 equ $ + 2
.l7fd3 equ $ + 1
.l7fd2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7fe1 equ $ + 7
.l7fe0 equ $ + 6
.l7fdf equ $ + 5
.l7fde equ $ + 4
.l7fdd equ $ + 3
.l7fdc equ $ + 2
.l7fdb equ $ + 1
.l7fda
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7fe7 equ $ + 5
.l7fe5 equ $ + 3
.l7fe3 equ $ + 1
.l7fe2
	db #00,#00,#00,#00,#00,#00
.l7fe8
	ld a,(l8003)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l8006
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l8006 equ $ + 3
.l8005 equ $ + 2
.l8004 equ $ + 1
.l8003
	db #ff,#80,#1b,#34
.l8007
	db #30
	dw l8043,l8023,l802d
	db #2a
	dw l814a,l8142,l8146
	db #32
	dw l8193,l818b,l818f
	db #40
	dw l81c8,l81c0,l81c4
.l8023
	dw l8047,l8047,l805f,l8070
	dw #0000
.l802d
	dw l8081,l8081,l80a9,l80a9
	dw l81fc,l8081,l8081,l80a9
	dw l80a9,l81f9,#0000
.l8043
	dw l8115,#0000
.l8047
	db #8a,#90,#88,#01,#01,#d3,#e0,#0c
	db #0c,#18,#18,#0c,#0c,#18,#18,#0c
	db #0c,#18,#18,#0c,#0c,#18,#18,#87
.l805f
	db #11,#11,#1d,#1d,#11,#11,#1d,#1d
	db #11,#11,#1d,#1d,#11,#11,#1d,#1d
	db #87
.l8070
	db #13,#13,#1f,#1f,#13,#13,#1f,#1f
	db #13,#13,#1f,#1f,#13,#13,#1f,#1f
	db #87
.l8081
	db #8a,#d4,#88,#01,#01,#e1,#1f,#24
	db #27,#e0,#26,#e8,#1f,#e1,#1f,#24
	db #27,#e0,#24,#e8,#1f,#e1,#27,#27
	db #27,#e0,#29,#e8,#27,#e1,#26,#26
	db #26,#e0,#27,#e4,#26,#e3,#23,#87
.l80a9
	db #e1,#18,#1a,#1b,#e0,#1d,#e8,#1f
	db #e1,#20,#1b,#1a,#e0,#1f,#e8,#18
	db #e1,#2c,#20,#29,#e0,#20,#e8,#24
	db #e1,#23,#23,#23,#e0,#24,#e4,#26
	db #e3,#23,#87,#e0,#30,#30,#e1,#30
	db #34,#e0,#30,#e1,#35,#e2,#80,#df
	db #e3,#84,#0f,#01,#1c,#d4,#e0,#30
	db #30,#e1,#30,#34,#e0,#30,#e1,#35
	db #e2,#80,#df,#e3,#84,#0f,#01,#1c
	db #d4,#e0,#30,#30,#e1,#30,#34,#e0
	db #30,#e1,#35,#e0,#80,#e1,#30,#34
	db #e0,#30,#e1,#35,#e0,#80,#d8,#e5
	db #30,#df,#e3,#84,#0f,#01,#1c,#84
	db #0f,#01,#1c,#87
.l8115
	db #8b,#d1,#e3,#3f,#8d,#3f,#3f,#8d
	db #3f,#3f,#8d,#3f,#3f,#8d,#3f,#3f
	db #8d,#3f,#3f,#8d,#3f,#3f,#8d,#3f
	db #3f,#d2,#e0,#8c,#84,#14,#01,#30
	db #84,#14,#01,#30,#84,#14,#01,#30
	db #84,#14,#01,#30,#87
.l8142
	dw l814e,#0000
.l8146
	dw l8161,#0000
.l814a
	dw l8170,#0000
.l814e
	db #8a,#90,#88,#01,#01,#d3,#e0,#0c
	db #0c,#18,#18,#0c,#0c,#18,#18,#e7
	db #d8,#0c,#8e
.l8161
	db #8a,#d4,#88,#01,#01,#e1,#1f,#24
	db #27,#e0,#26,#d8,#f0,#24,#8e
.l8170
	db #8b,#d1,#e3,#3f,#8d,#3f,#3f,#d2
	db #e0,#8c,#84,#14,#01,#30,#84,#14
	db #01,#30,#84,#14,#01,#30,#84,#14
	db #01,#30,#8e
.l818b
	dw l8197,#0000
.l818f
	dw l81a6,#0000
.l8193
	dw l81b5,#0000
.l8197
	db #8a,#88,#01,#01,#90,#d2,#e0,#18
	db #19,#1a,#1c,#1d,#e6,#1f,#8e
.l81a6
	db #8a,#88,#01,#01,#90,#d2,#e0,#1f
	db #20,#21,#22,#23,#e6,#24,#8e
.l81b5
	db #8b,#d2,#e4,#80,#e6,#8c,#84,#14
	db #01,#30,#8e
.l81c0
	dw l81cc,#0000
.l81c4
	dw l81dd,#0000
.l81c8
	dw l81ee,#0000
.l81cc
	db #8a,#88,#01,#01,#90,#d2,#e0,#24
	db #23,#21,#1f,#1d,#1c,#1a,#e6,#18
	db #8e
.l81dd
	db #8a,#88,#01,#01,#90,#d2,#e0,#2b
	db #29,#28,#26,#24,#23,#21,#e6,#1f
	db #8e
.l81ee
	db #8b,#d2,#e6,#80,#e6,#8c,#84,#14
	db #01,#30,#8e
.l81f9
	db #89,#00,#87
.l81fc
	db #89,#01,#87
;
.music_info
	db "Rad Ramp Racer (1989)(Mastertronic)()",0
	db "",0

	read "music_end.asm"
