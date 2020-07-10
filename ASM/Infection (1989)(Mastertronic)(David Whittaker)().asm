; Music of Infection (1989)(Mastertronic)(David Whittaker)()
; Ripped by Megachur the 15/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "INFECTIO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #0384
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

;
.init_music
;
	push af
	call l0570
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l0e63
	add hl,bc
	ld a,(hl)
	ld (l086d),a
	inc hl
	ld ix,l03f3
	ld c,#22
	ld a,#03
.l03a2
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
	ld hl,l0957
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
	jr nz,l03a2
	ld (l0789),a
	dec a
	ld (l086e),a
	ld (l086a),a
	ld a,#0f
	ld (l086c),a
	ret
.l03f3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l0415
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l0437
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(l086a)
	ld hl,l086b
	or (hl)
	ret z
	call l0b45
	ld a,(l086a)
	and a
	jr z,l04bc
.l046b equ $ + 1
	ld a,#00
	ld (l04b8),a
	ld a,(l086d)
	ld hl,l086e
	add (hl)
	ld (hl),a
	jr nc,l0490
	ld b,#00
	ld ix,l03f3
	call l0699
	ld ix,l0415
	call l0699
	ld ix,l0437
	call l0699
.l0490
	ld ix,l03f3
	call l0756
	ld (l086f),hl
	ld (l0877),a
	ld ix,l0415
	call l0756
	ld (l0871),hl
	ld (l0878),a
	ld ix,l0437
	call l0756
	ld (l0873),hl
	ld (l0879),a
.l04b8 equ $ + 1
	ld a,#00
	ld (l0875),a
.l04bc
	ld a,(l086a)
	and a
	jr nz,l04d2
	ld (l0877),a
	ld (l0878),a
	ld (l0879),a
	ld a,#3f
	ld (l0876),a
	jr l04fa
.l04d2
	ld a,(l086c)
	and #0f
	xor #0f
	jr z,l04fa
	ld b,a
	ld a,(l0877)
	sub b
	jr nc,l04e3
	xor a
.l04e3
	ld (l0877),a
	ld a,(l0878)
	sub b
	jr nc,l04ed
	xor a
.l04ed
	ld (l0878),a
	ld a,(l0879)
	sub b
	jr nc,l04f7
	xor a
.l04f7
	ld (l0879),a
.l04fa
	ld a,(l086b)
	and a
	jr z,l0522
	ld hl,(l087c)
	ld (l086f),hl
	ld a,(l0e35)
.l0509
	ld b,a
	bit 3,a
	jr nz,l0514
	ld a,(l0882)
	ld (l0875),a
.l0514
	ld hl,l0876
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l0884)
	ld (l0877),a
.l0522
	ld hl,l0879
	ld d,#0a
.l0527
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
	jp p,l0527
	ret
.l0548
	ld de,&0a00
.l054b
	call l0555
	dec d
	jp p,l054b
	ld de,l073f
.l0555
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
.l0570
;
	xor a
	ld (l086a),a
	call l0582
	xor a
	ld (l0877),a
	ld (l0878),a
	ld (l0879),a
	ret
.l0582
	xor a
	ld (l086b),a
	jp l0548
	db #fa,#de,#d7,#e1,#a4,#e9,#e4,#3b
	db #c4,#b5,#7a,#64,#8c,#e7,#30,#f4
	db #f5,#fa,#b3,#13,#0a,#01,#1a,#13
	ld (l086c),a
	jp l06a7
	ld a,(de)
	inc de
	ld (l086d),a
	jp l06a7
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
	jp l06a7
	pop hl
	jp l0570
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
	jr nz,l05ed
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l05ed
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l06a7
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,l0835
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l06a7
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l0835
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l06a7
	ld hl,l0835
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l06a7
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l06a7
	ld a,(de)
	inc de
	ld (l0789),a
	jr l06a7
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l06a7
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l06a7
	ld (ix+#1d),b
	jr l06a7
	ld (ix+#1d),#c0
	jr l06a7
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l06a7
	set 1,(ix+#00)
	jr l06a7
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l06d6
	jr l06d2
	ld (ix+#1f),#ff
	jr l06a7
	ld (ix+#1f),b
	jr l06a7
.l0699
	dec (ix+#10)
	jr nz,l06fa
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l06a7
	ld a,(de)
	inc de
	and a
	jp m,l070b
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l06b9
	ld (l046b),a
.l06b9
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.l06d2
	set 5,(ix+#00)
.l06d6
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l06f9
	ld a,(l086b)
	and a
	jr z,l06f5
	ld a,(l0e35)
	bit 3,a
	jr z,l06f9
.l06f5
	ld (ix+#1f),#ff
.l06f9
	ret
.l06fa
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l0707
	inc (ix+#12)
	ret
.l0707
	dec (ix+#12)
	ret
.l070b
	cp #c0
	jr c,l074e
	add #20
	jr c,l072f
	add #10
	jr c,l0736
	add #10
	ld c,a
	ld hl,l0948
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l06a7
.l072f
	inc a
	ld (ix+#11),a
	jp l06a7
.l0736
	ld hl,l0983
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
.l073f
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp l06a7
.l074e
	ld hl,l0509
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l0756
	ld c,(ix+#00)
	bit 5,c
	jr z,l0788
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l0782
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l0782
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l0782
	ld a,(ix+#18)
	ld (ix+#13),a
.l0789 equ $ + 1
.l0788
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l07a5
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l07a5
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l0888
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l0806
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l07cf
	bit 0,c
	jr nz,l07ed
.l07cf
	bit 5,l
	jr nz,l07df
	sub (ix+#1b)
	jr nc,l07ea
	set 5,(ix+#1d)
	sub a
	jr l07ea
.l07df
	add (ix+#1b)
	cp b
	jr c,l07ea
	res 5,(ix+#1d)
	ld a,b
.l07ea
	ld (ix+#1c),a
.l07ed
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l07f8
	dec d
.l07f8
	add #a0
	jr c,l0804
.l07fc
	sla e
	rl d
	add #18
	jr nc,l07fc
.l0804
	add hl,de
	ex de,hl
.l0806
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l0831
	ld b,(ix+#0e)
	djnz l082e
	ld c,(ix+#0d)
	bit 7,c
	jr z,l081d
	dec b
.l081d
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l0831
.l082e
	ld (ix+#0e),b
.l0831
	cpl
	and #03
.l0835 equ $ + 1
	ld a,#38
	jr nz,l0842
	ld a,(l046b)
	xor #08
	ld (l04b8),a
	ld a,#07
.l0842
	ld hl,l0876
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l0865
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l04b8),a
.l0865
	ex de,hl
	ld a,(ix+#13)
	ret
.l0871 equ $ + 7
.l086f equ $ + 5
.l086e equ $ + 4
.l086d equ $ + 3
.l086c equ $ + 2
.l086b equ $ + 1
.l086a
.music_end
	db #00,#00,#0f,#00,#00,#00,#00,#00
.l0879 equ $ + 7
.l0878 equ $ + 6
.l0877 equ $ + 5
.l0876 equ $ + 4
.l0875 equ $ + 3
.l0873 equ $ + 1
	db #00,#00,#00,#00,#3f,#0f,#0f,#0f
.l087d equ $ + 3
.l087c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0884 equ $ + 2
.l0882
	db #00,#3f,#00,#00,#00,#00
.l0888
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
.l0948
	db #0f,#0f,#11,#13,#15,#18,#1a,#1c
.l0957 equ $ + 7
	db #1e,#20,#21,#22,#23,#24,#25,#80
	db #00,#03,#87,#00,#04,#87,#04,#07
	db #8a,#00,#00,#0c,#8c,#07,#0c,#8f
	db #07,#0c,#90,#03,#07,#8c,#04,#07
	db #8c,#00,#8c,#00,#83,#00,#84,#00
	db #85,#00,#87,#0c,#00,#00,#00,#00
	db #00,#00,#80
.l0983
	dw l09a4,l09ad,l09df,l09f1
	dw l0a03,l0a0b,l0a3d,l0a70
	dw l0a7d,l0a8e,l0a9f,l0ab3
	dw l0ac4,l0ad5,l0ae5,l0ae8
.l09a4 equ $ + 1
	db #02,#0c,#0d,#0e,#0f,#0e,#0d,#0c
.l09ad equ $ + 2
	db #87,#07,#0f,#0e,#0d,#0c,#0e,#0d
	db #0c,#0b,#0d,#0c,#0b,#0a,#0c,#0b
	db #0a,#09,#0b,#0a,#09,#08,#0a,#09
	db #08,#07,#09,#08,#07,#06,#08,#07
	db #06,#05,#07,#06,#05,#04,#06,#05
	db #04,#03,#05,#04,#03,#02,#04,#03
.l09df equ $ + 4
	db #02,#01,#87,#01,#0f,#0e,#0d,#0b
	db #0d,#0c,#0a,#09,#0b,#0a,#08,#07
.l09f1 equ $ + 6
	db #09,#08,#06,#05,#87,#01,#0f,#0f
	db #0d,#0b,#0d,#0c,#0a,#09,#0b,#0a
	db #08,#07,#09,#08,#06,#05,#87,#01
.l0a03
	db #0c,#0d,#0f,#0e,#0d,#0c,#87,#04
.l0a0b
	db #06,#08,#09,#0a,#0b,#0c,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#07,#06,#06
	db #06,#05,#05,#05,#04,#04,#04,#04
	db #03,#03,#03,#03,#02,#02,#02,#01
.l0a3d equ $ + 2
	db #87,#06,#0d,#0e,#0f,#0f,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0c
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#08,#07,#07
	db #07,#06,#06,#06,#05,#05,#05,#04
	db #04,#04,#04,#03,#03,#03,#03,#02
.l0a70 equ $ + 5
	db #02,#02,#01,#87,#01,#08,#09,#0a
	db #0b,#0c,#0d,#0e,#0e,#0e,#0d,#0c
.l0a7d equ $ + 2
	db #87,#05,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l0a8e equ $ + 3
	db #01,#87,#08,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.l0a9f equ $ + 4
	db #02,#01,#87,#02,#0c,#0d,#0e,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#01
.l0ab3
	db #0c,#0d,#0f,#0e,#0c,#0b,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.l0ac4 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l0ad5 equ $ + 2
	db #87,#01,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l0ae8 equ $ + 5
.l0ae5 equ $ + 2
	db #87,#01,#0e,#87,#01,#0c,#87
	ld hl,l086b
	ld (hl),#00
	ld hl,l0bfe
	add a
	add l
	ld l,a
	jr nc,l0af8
	inc h
.l0af8
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l0e2f
.l0b00
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l0b00
	ld a,(l0e30)
	ld (l0e3d),a
	ld hl,(l0e31)
	ld (l087c),hl
	ld a,(l0e35)
	bit 3,a
	jr nz,l0b1d
	ld a,l
	ld (l0882),a
.l0b1d
	ld a,(l0e3a)
	ld (l0e3e),a
	ld a,(l0e3c)
	ld (l0e43),a
	ld a,(l0e39)
	ld hl,l0d9e
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l0e3f),hl
	ld (l0e41),hl
	ld a,(hl)
	ld (l0884),a
	ld hl,l086b
	inc (hl)
	ret
.l0b45
	call l0e44
	ld a,(l086b)
	ret z
	ld a,(l0e2f)
	and a
	jr nz,l0b5c
	ld a,(l0e3b)
	and a
	jr nz,l0b5c
	ld (l086b),a
	ret
.l0b5c
	dec a
	ld (l0e2f),a
	ld a,(l0e3d)
	and a
	jr nz,l0b94
	ld a,(l0e3b)
	and a
	jr nz,l0b72
	ld a,(l0e38)
	and a
	jr z,l0bd6
.l0b72
	dec a
	ld (l0e38),a
	ld a,(l0e30)
	ld (l0e3d),a
	ld a,(l0e36)
	and a
	jr z,l0b85
	ld a,(l0e5f)
.l0b85
	ld b,a
	ld a,(l0e31)
	add b
	ld (l087c),a
	ld a,(l0e32)
	add b
	ld (l087d),a
.l0b94
	ld hl,l0e3d
	dec (hl)
	ld hl,l0e3c
	ld a,(hl)
	and a
	jr z,l0ba6
	ld hl,l0e43
	dec (hl)
	jr nz,l0bc9
	ld (hl),a
.l0ba6
	ld a,(l0e37)
	and a
	jr z,l0bc9
	jp p,l0bbc
	ld hl,(l087c)
	ld de,(l0e33)
	add hl,de
	ld (l087c),hl
	jr l0bc9
.l0bbc
	ld hl,(l087c)
	ld de,(l0e33)
	and a
	sbc hl,de
	ld (l087c),hl
.l0bc9
	ld a,(l0e35)
	bit 3,a
	jr nz,l0bd6
	ld a,(l087c)
	ld (l0882),a
.l0bd6
	ld a,(l0e3e)
	dec a
	ld (l0e3e),a
	jr nz,l0bfd
	ld a,(l0e3a)
	ld (l0e3e),a
	ld hl,(l0e41)
	ld a,(hl)
	inc hl
	and a
	jp p,l0bf7
	cp #80
	jr nz,l0bfd
	ld hl,(l0e3f)
	ld a,(hl)
	inc hl
.l0bf7
	ld (l0e41),hl
	ld (l0884),a
.l0bfd
	ret
.l0bfe
	dw l0c32,l0c40,l0c4e,l0c5c
	dw l0c6a,l0c78,l0c86,l0c94
	dw l0ca2,l0cb0,l0cbe,l0ccc
	dw l0cda,l0ce8,l0cf6,l0d04
	dw l0d12,l0d20,l0d2e,l0d3c
	dw l0d4a,l0d58,l0d66,l0d74
	dw l0d82,l0d90
.l0c32
	db #2d,#63,#1f,#00,#01,#00,#f7,#00
.l0c40 equ $ + 6
	db #01,#63,#01,#02,#00,#03,#38,#02
	db #1f,#00,#10,#00,#f7,#00,#01,#63
.l0c4e equ $ + 4
	db #02,#03,#00,#00,#0f,#04,#00,#00
	db #06,#00,#f7,#01,#ff,#63,#00,#01
.l0c5c equ $ + 2
	db #00,#00,#0a,#05,#c1,#00,#14,#00
	db #f6,#01,#ff,#ff,#08,#01,#00,#00
.l0c6a
	db #09,#63,#09,#05,#11,#00,#f6,#00
.l0c78 equ $ + 6
	db #ff,#00,#08,#01,#00,#00,#32,#03
	db #96,#01,#02,#00,#fe,#00,#ff,#ff
.l0c86 equ $ + 4
	db #00,#04,#00,#00,#32,#03,#16,#02
	db #02,#00,#fe,#00,#ff,#ff,#00,#04
.l0c94 equ $ + 2
	db #00,#00,#32,#03,#96,#02,#02,#00
	db #fe,#00,#ff,#ff,#00,#04,#00,#00
.l0ca2
	db #0f,#04,#a0,#06,#20,#00,#fe,#00
.l0cb0 equ $ + 6
	db #01,#63,#08,#01,#00,#00,#19,#02
	db #74,#00,#02,#00,#fe,#00,#01,#63
.l0cbe equ $ + 4
	db #08,#03,#00,#00,#28,#03,#a1,#00
	db #14,#00,#f6,#00,#ff,#ff,#00,#03
.l0ccc equ $ + 2
	db #00,#00,#32,#03,#44,#00,#03,#00
	db #fe,#00,#ff,#63,#04,#01,#00,#00
.l0cda
	db #32,#04,#00,#04,#16,#00,#f6,#01
.l0ce8 equ $ + 6
	db #ff,#63,#00,#04,#00,#00,#19,#09
	db #1a,#00,#03,#00,#f6,#01,#ff,#0a
.l0cf6 equ $ + 4
	db #08,#02,#00,#00,#05,#05,#cc,#00
	db #21,#00,#f6,#00,#ff,#63,#06,#01
.l0d04 equ $ + 2
	db #00,#00,#3c,#09,#9a,#00,#03,#00
	db #f6,#01,#ff,#0a,#00,#04,#00,#00
.l0d12
	db #50,#02,#40,#01,#04,#00,#fe,#00
.l0d20 equ $ + 6
	db #ff,#63,#04,#01,#00,#00,#1e,#0f
	db #10,#00,#01,#00,#f7,#00,#ff,#00
.l0d2e equ $ + 4
	db #00,#03,#00,#00,#2c,#02,#6c,#00
	db #01,#00,#fe,#00,#01,#63,#08,#03
.l0d3c equ $ + 2
	db #00,#00,#11,#02,#70,#03,#20,#00
	db #fe,#00,#ff,#63,#04,#01,#00,#00
.l0d4a
	db #06,#63,#10,#00,#02,#00,#f7,#00
.l0d58 equ $ + 6
	db #ff,#63,#08,#01,#00,#00,#1e,#02
	db #24,#00,#01,#00,#fe,#00,#01,#63
.l0d66 equ $ + 4
	db #08,#04,#00,#00,#0a,#05,#10,#00
	db #01,#00,#fe,#00,#ff,#63,#00,#01
.l0d74 equ $ + 2
	db #00,#00,#04,#02,#9f,#00,#01,#00
	db #fe,#00,#ff,#63,#08,#01,#00,#00
.l0d82
	db #01,#02,#10,#00,#00,#00,#f7,#00
.l0d90 equ $ + 6
	db #00,#00,#06,#01,#00,#00,#3f,#10
	db #60,#00,#04,#00,#fe,#00,#ff,#63
	db #04,#02,#00,#00
.l0d9e
	dw l0db0,l0dbf,l0dd8,l0df0
	dw l0e01,l0e08,l0e12,l0e1e
.l0db0 equ $ + 2
	dw l0e20,l0e0f
	db #0d,#0b,#0a,#09,#08,#07,#06,#05
.l0dbf equ $ + 5
	db #04,#03,#02,#01,#ff,#06,#08,#0a
	db #0b,#0c,#0d,#0e,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#09,#08,#07,#06
.l0dd8 equ $ + 6
	db #05,#04,#03,#02,#01,#ff,#06,#08
	db #0a,#0c,#0e,#0f,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#09,#08,#07,#06
.l0df0 equ $ + 6
	db #05,#04,#03,#02,#01,#ff,#06,#08
	db #0a,#0b,#0c,#0b,#0a,#09,#08,#07
.l0e01 equ $ + 7
	db #06,#05,#04,#03,#02,#01,#ff,#06
.l0e08 equ $ + 6
	db #07,#08,#0a,#0b,#0c,#ff,#0d,#00
.l0e0f equ $ + 5
	db #00,#0e,#00,#00,#00,#0c,#00,#ff
.l0e12
	db #0c,#0a,#09,#08,#07,#06,#05,#04
.l0e20 equ $ + 6
.l0e1e equ $ + 4
	db #03,#02,#01,#ff,#0a,#80,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l0e31 equ $ + 7
.l0e30 equ $ + 6
.l0e2f equ $ + 5
	db #04,#03,#02,#01,#ff,#00,#00,#00
.l0e39 equ $ + 7
.l0e38 equ $ + 6
.l0e37 equ $ + 5
.l0e36 equ $ + 4
.l0e35 equ $ + 3
.l0e33 equ $ + 1
.l0e32
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0e41 equ $ + 7
.l0e3f equ $ + 5
.l0e3e equ $ + 4
.l0e3d equ $ + 3
.l0e3c equ $ + 2
.l0e3b equ $ + 1
.l0e3a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0e43 equ $ + 1
	db #00,#00
.l0e44
	ld a,(l0e5f)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l0e62
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l0e62 equ $ + 3
.l0e5f
	db #ff,#80,#1b,#34
.l0e63
	db #20
	dw l0e71,l0e79,l0e75
	db #20
	dw l0e7f,l0e79,l0e83
.l0e71
	dw l0e87,#0000
.l0e75
	dw l0f50,#0000
.l0e79
	dw l0f88,l0f91,#0000
.l0e7f
	dw l0f2d,#0000
.l0e83
	dw l0f9c,#0000
.l0e87
	db #8a,#88,#01,#02,#ff,#d7,#0c,#8f
	db #0c,#0f,#d3,#88,#01,#01,#90,#e1
	db #24,#26,#27,#24,#1f,#24,#26,#27
	db #e0,#24,#24,#e1,#26,#27,#24,#1f
	db #24,#26,#27,#24,#26,#27,#24,#1f
	db #24,#26,#27,#e0,#24,#24,#e1,#26
	db #27,#24,#1f,#24,#26,#27,#d6,#88
	db #01,#02,#91,#ef,#1f,#21,#ff,#22
	db #ef,#24,#26,#ff,#27,#d7,#0c,#8f
	db #92,#fe,#88,#01,#01,#c4,#d2,#90
	db #e1,#24,#26,#27,#24,#2b,#24,#26
	db #27,#e0,#24,#24,#e1,#26,#27,#24
	db #2b,#24,#26,#27,#24,#26,#27,#24
	db #2b,#24,#26,#27,#e0,#24,#24,#e1
	db #26,#27,#24,#2b,#24,#26,#27,#c0
	db #d4,#92,#f2,#24,#26,#27,#24,#2b
	db #24,#26,#27,#e0,#24,#24,#e1,#26
	db #27,#24,#2b,#24,#26,#27,#92,#fe
	db #24,#26,#27,#24,#2b,#24,#26,#27
	db #e0,#24,#24,#e1,#26,#27,#24,#2b
.l0f2d equ $ + 6
	db #24,#26,#27,#92,#00,#87,#8b,#d5
	db #81,#ff,#3f,#3f,#3f,#3f,#8a,#88
	db #01,#02,#ff,#d7,#0c,#8f,#0c,#0f
	db #0c,#0f,#0c,#0f,#0c,#0f,#0c,#8f
	db #92,#fe,#0c,#0f,#0c,#0f,#92,#00
.l0f50 equ $ + 1
	db #87,#8b,#d5,#81,#ff,#3f,#3f,#8a
	db #d1,#88,#01,#02,#ef,#1b,#1d,#ff
	db #1f,#ef,#1b,#1d,#ff,#1f,#ef,#1b
	db #1d,#ff,#1f,#ef,#1b,#1d,#ff,#1f
	db #24,#24,#92,#fe,#eb,#20,#e3,#1f
	db #e7,#20,#22,#ff,#1f,#eb,#20,#e3
	db #1f,#e7,#20,#22,#ff,#1f,#92,#00
.l0f88 equ $ + 1
	db #87,#8b,#ed,#d3,#80,#e1,#93,#7b
.l0f91 equ $ + 2
	db #0e,#87,#8b,#3f,#e5,#3f,#d2,#8d
.l0f9c equ $ + 5
	db #27,#e1,#41,#d3,#87,#8a,#d0,#fe
	db #80,#87
;
.music_info
	db "Infection (1989)(Mastertronic)(David Whittaker)",0
	db "",0

	read "music_end.asm"
