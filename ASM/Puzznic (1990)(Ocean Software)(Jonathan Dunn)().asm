; Music of Puzznic (1990)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 08/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PUZZNIC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 1
music_adr				equ #0043
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

	jp l0051	; init
	jp l077d
	jp l0121	; play
	jp l01db
.music_end
.l004f
	db #00
.l0050
	db #00
;
.init_music
.l0051
;
	ld hl,l004f
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
	ld hl,l098e
	add hl,bc
	ld a,(hl)
	ld (l014d),a
	inc hl
	ld ix,l00ab
	ld c,#27
	ld a,#03
.l0072
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
	jr nz,l0072
	ld (l03fe),a
	inc a
	ld (l0120),a
	ld (l004f),a
	ret
.l00ab
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l00d2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l00f9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.l0121 equ $ + 1
.l0120
	db #00,#00,#00
;
.play_music
;
	ld a,(l004f)
	and a
	jp z,l017d
.l012c equ $ + 1
	ld a,#00
	ld (l0179),a
	ld hl,l0120
	dec (hl)
	jr nz,l0151
	ld b,(hl)
	ld ix,l00ab
	call l02f6
	ld ix,l00d2
	call l02f6
	ld ix,l00f9
	call l02f6
.l014d equ $ + 1
	ld a,#01
	ld (l0120),a
.l0151
	ld ix,l00ab
	call l03cb
	ld (l04dc),hl
	ld (l04e4),a
	ld ix,l00d2
	call l03cb
	ld (l04de),hl
	ld (l04e5),a
	ld ix,l00f9
	call l03cb
	ld (l04e0),hl
	ld (l04e6),a
.l0179 equ $ + 1
	ld a,#00
	ld (l04e2),a
.l017d
	ld a,(l0050)
	and a
	jr z,l01ad
	ld hl,(l04e9)
	ld (l04dc),hl
	ld hl,(l04ed)
	ld (l04e0),hl
	ld a,(l04ef)
	ld (l04e2),a
	ld a,(l04e3)
	or #2d
	ld hl,l04f0
	and (hl)
	ld (l04e3),a
	ld a,(l04f1)
	ld (l04e4),a
.l01a8 equ $ + 1
	ld a,(l04f3)
	ld (l04e6),a
.l01ad
	ld a,(l004f)
	ld hl,l0050
	or (hl)
	ret z
	ld hl,l04e7
	ld d,#0b
.l01ba
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
	jp p,l01ba
	ret
.l01db
	ld hl,#0000
	ld (l004f),hl
.l01e1
	ld de,&0d00
.l01e4
	call l01ee
	dec d
	jp p,l01e4
	ld de,l073f
.l01ee
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
	xor a
	ld (l04e4),a
	ld (l04e5),a
	ld (l04e6),a
	ret
;
.stop_music
;
	xor a
	ld (l004f),a
	ld (l0050),a
	call l01e1
	xor a
	ld (l04e4),a
	ld (l04e5),a
	ld (l04e6),a
	ret
	db #a2,#8a,#8e,#93,#51,#80,#7b,#11
	db #6a,#62,#26,#10,#38,#8f,#06,#9c
	db #a1,#a6,#aa,#b0
	pop hl
	jp l01db
	jp l06f0
	ld a,(ix+#26)
	ld c,a
	and #07
	ld hl,l04a7
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l030b
	ld a,(ix+#26)
	ld c,a
	and #38
	ld hl,l04a7
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l030b
	ld hl,l04a7
	ld a,(ix+#26)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l030b
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l030b
	ld a,(de)
	inc de
	ld (l03fe),a
	jr l030b
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l030b
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l030b
	ld (ix+#1d),b
	jr l030b
	ld (ix+#1d),#40
	jr l030b
	ld (ix+#1d),#c0
	jr l030b
	set 1,(ix+#00)
	jr l030b
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l0349
	res 5,(ix+#00)
	jr l0349
	ld (ix+#1f),#ff
	jr l030b
	ld (ix+#1f),b
	jr l030b
	ld a,#01
	ld (ix+#24),a
	jr l030b
	ld a,(de)
	inc de
	ld (ix+#11),a
	ld (ix+#24),#00
	jr l030b
.l02f6
	dec (ix+#10)
	jr nz,l0370
	ld (ix+#00),b
	ld a,(ix+#25)
	or a
	jp nz,l06f0
	ld e,(ix+#01)
	ld d,(ix+#02)
.l030b
	ld a,(de)
	inc de
	and a
	jp m,l0381
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l0320
	ld (l012c),a
.l0320
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
.l0349
	ld a,(ix+#24)
	or a
	jr z,l0353
	ld a,(de)
	inc de
	jr l0356
.l0353
	ld a,(ix+#11)
.l0356
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l036f
	ld a,(l0050)
	and a
	jr nz,l036f
	ld (ix+#1f),#ff
.l036f
	ret
.l0370
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l037d
	inc (ix+#12)
	ret
.l037d
	dec (ix+#12)
	ret
.l0381
	cp #b0
	jr c,l03c3
	add #20
	jr c,l03ab
	add #30
	jr nc,l03a3
	ld c,a
	ld hl,l05b5
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l030b
.l03a3
	add #09
	ld (l014d),a
	jp l030b
.l03ab
	ld hl,l064e
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
	jp l030b
.l03c3
	ld hl,l01a8
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l03cb
	ld c,(ix+#00)
	bit 5,c
	jr z,l03fd
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l03f7
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l03f7
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l03f7
	ld a,(ix+#18)
	ld (ix+#13),a
.l03fe equ $ + 1
.l03fd
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l0417
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l0417
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l04f5
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l0478
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l0441
	bit 0,c
	jr nz,l045f
.l0441
	bit 5,l
	jr nz,l0451
	sub (ix+#1b)
	jr nc,l045c
	set 5,(ix+#1d)
	sub a
	jr l045c
.l0451
	add (ix+#1b)
	cp b
	jr c,l045c
	res 5,(ix+#1d)
	ld a,b
.l045c
	ld (ix+#1c),a
.l045f
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l046a
	dec d
.l046a
	add #a0
	jr c,l0476
.l046e
	sla e
	rl d
	add #18
	jr nc,l046e
.l0476
	add hl,de
	ex de,hl
.l0478
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l04a3
	ld b,(ix+#0e)
	djnz l04a0
	ld c,(ix+#0d)
	bit 7,c
	jr z,l048f
	dec b
.l048f
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l04a3
.l04a0
	ld (ix+#0e),b
.l04a3
	cpl
	and #03
.l04a7 equ $ + 1
	ld a,#38
	jr nz,l04b4
	ld a,(l012c)
	xor #08
	ld (l0179),a
	ld a,#07
.l04b4
	ld hl,l04e3
	xor (hl)
	and (ix+#26)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l04d7
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#26)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l0179),a
.l04d7
	ex de,hl
	ld a,(ix+#13)
	ret
.l04e3 equ $ + 7
.l04e2 equ $ + 6
.l04e0 equ $ + 4
.l04de equ $ + 2
.l04dc
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l04ea equ $ + 6
.l04e9 equ $ + 5
.l04e7 equ $ + 3
.l04e6 equ $ + 2
.l04e5 equ $ + 1
.l04e4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l04f3 equ $ + 7
.l04f1 equ $ + 5
.l04f0 equ $ + 4
.l04ef equ $ + 3
.l04ed equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l04f5
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
.l05b5
	db #14,#14,#19,#1e,#23,#2e,#39,#3e
	db #4d,#53,#5f,#64,#69,#6e,#71,#74
	db #79,#7c,#7f,#82,#80,#18,#0c,#13
	db #07,#0f,#83,#18,#0c,#08,#07,#0f
	db #83,#1b,#0f,#0c,#0a,#13,#87,#00
	db #00,#00,#05,#05,#05,#09,#09,#09
	db #04,#04,#84,#00,#00,#00,#05,#05
	db #05,#08,#08,#08,#03,#03,#83,#13
	db #07,#11,#05,#0c,#80,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#80,#18,#0c,#00
	db #00,#00,#00,#80,#00,#03,#00,#02
	db #00,#01,#00,#03,#00,#02,#00,#01
	db #80,#1c,#10,#18,#0c,#13,#87,#1c
	db #10,#18,#0b,#13,#87,#1c,#10,#18
	db #0a,#13,#87,#0c,#0c,#00,#80,#00
	db #04,#05,#89,#18,#0c,#13,#09,#10
	db #84,#00,#03,#05,#88,#04,#04,#00
	db #80,#03,#03,#00,#80,#05,#05,#00
	db #80
.l064e
	dw l065f,l066c,l067c,l0697
	dw l06a3,l06ac,l06c3,l06cf
.l065f equ $ + 1
	db #01,#0e,#0d,#0b,#0a,#08,#07,#06
.l066c equ $ + 6
	db #04,#02,#01,#00,#87,#03,#0c,#0b
	db #0a,#08,#08,#08,#08,#08,#08,#07
.l067c equ $ + 6
	db #07,#07,#07,#07,#87,#03,#0a,#0b
	db #0a,#09,#09,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#87
.l0697 equ $ + 1
	db #03,#0c,#0b,#09,#07,#05,#04,#03
.l06a3 equ $ + 5
	db #02,#01,#00,#87,#02,#0f,#0c,#08
.l06ac equ $ + 6
	db #06,#03,#01,#00,#87,#03,#0f,#0d
	db #0b,#0a,#09,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
.l06c3 equ $ + 5
	db #01,#01,#00,#87,#02,#0f,#0d,#0b
	db #0a,#08,#06,#04,#02,#01,#00,#87
.l06cf equ $ + 1
	db #09,#01,#02,#03,#04,#05,#06,#07
	db #08,#09,#0a,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#02,#01,#01
	db #00,#87
.l06f0
	xor a
	ld (ix+#25),a
	ld l,(ix+#03)
	ld h,(ix+#04)
.l06fa
	ld a,(ix+#21)
	or a
	jp z,l0716
	dec a
	ld (ix+#21),a
	jp z,l071a
	ld l,(ix+#22)
	ld h,(ix+#23)
	ld (ix+#03),l
	ld (ix+#04),h
	jr l071a
.l0716
	ld (ix+#20),#00
.l071a
	ld a,(hl)
	inc hl
	or a
	jp m,l073d
	ld (ix+#03),l
	ld (ix+#04),h
	add a
	ld e,a
	ld d,#00
	ld hl,l099c
	add hl,de
	ld a,(hl)
	ld e,a
	inc hl
	ld d,(hl)
	ld (ix+#01),e
	ld (ix+#02),d
	ld b,#00
	jp l030b
.l073d
	cp #fd
.l073f
	jr z,l0774
	cp #ff
	jr z,l076c
	cp #fe
	jr z,l075e
	cp #fc
	jr z,l0757
.l074d
	ld a,r
	out (#fe),a
	ld b,#64
.l0753
	djnz l0753
	jr l074d
.l0757
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l071a
.l075e
	ld a,(hl)
	inc hl
	ld (ix+#21),a
	ld (ix+#22),l
	ld (ix+#23),h
	jp l071a
.l076c
	ld a,(hl)
	inc hl
	ld (ix+#20),a
	jp l071a
.l0774
	ld l,(ix+#05)
	ld h,(ix+#06)
	jp l06fa
.l077d
	push af
	push bc
	push de
	push hl
	push ix
	ld hl,l0050
	ld (hl),#00
	ld hl,l0878
	add a
	add l
	ld l,a
	jr nc,l0791
	inc h
.l0791
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l095c
.l0799
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l0799
	ld a,(l095d)
	ld (l096d),a
	ld hl,(l095e)
	ld (l04e9),hl
	ld de,(l0960)
	ld (l04ed),de
	ld a,l
	ld (l04ef),a
	ld a,(l0963)
	ld (l04f0),a
	ld a,(l0962)
	ld e,a
	ld d,#0c
	call l01ee
	ld a,(l096c)
	ld e,a
	ld d,#0d
	call l01ee
	ld hl,l0050
	inc (hl)
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
	call l096f
	ld a,(l0050)
	and a
	ret z
	ld a,(l095c)
	and a
	jr nz,l07ee
	ld (l0050),a
	jp l01e1
.l07ee
	dec a
	ld (l095c),a
	ld a,(l096d)
	and a
	jr nz,l0827
	ld a,(l096a)
	and a
	ret z
	dec a
	ld (l096a),a
	ld a,(l095d)
	ld (l096d),a
	ld a,(l096b)
	and a
	jr z,l0810
	ld a,(l098a)
.l0810
	ld b,a
	ld a,(l095e)
	add b
	ld (l04e9),a
	ld a,(l095f)
	add b
	and #0f
	ld (l04ea),a
	ld hl,(l0960)
	ld (l04ed),hl
.l0827
	ld hl,l096d
	dec (hl)
	ld a,(l0968)
	and a
	jr z,l084e
	jp p,l0841
	ld hl,(l04e9)
	ld de,(l0964)
	add hl,de
	ld (l04e9),hl
	jr l084e
.l0841
	ld hl,(l04e9)
	ld de,(l0964)
	and a
	sbc hl,de
	ld (l04e9),hl
.l084e
	ld a,(l0969)
	and a
	jr z,l0871
	jp p,l0864
	ld hl,(l04ed)
	ld de,(l0966)
	add hl,de
	ld (l04ed),hl
	jr l0871
.l0864
	ld hl,(l04ed)
	ld de,(l0966)
	and a
	sbc hl,de
	ld (l04ed),hl
.l0871
	ld a,(l04e9)
	ld (l04ef),a
	ret
.l0878
	dw l0890,l08a1,l08b2,l08c3
	dw l08d4,l08e5,l08f6,l0907
	dw l0918,l0929,l093a,l094b
.l0890
	db #07,#00,#30,#00,#80,#00,#03,#d2
	db #78,#00,#78,#00,#ff,#ff,#01,#00
.l08a1 equ $ + 1
	db #00,#0f,#00,#10,#00,#50,#00,#07
	db #fa,#68,#00,#68,#00,#ff,#ff,#01
.l08b2 equ $ + 2
	db #00,#00,#0f,#06,#00,#00,#00,#00
	db #06,#d2,#40,#00,#30,#00,#ff,#ff
.l08c3 equ $ + 3
	db #0a,#00,#00,#17,#00,#30,#00,#60
	db #00,#07,#d2,#01,#00,#02,#00,#ff
.l08d4 equ $ + 4
	db #ff,#01,#00,#00,#0a,#00,#ab,#00
	db #00,#01,#04,#fa,#20,#00,#20,#00
.l08e5 equ $ + 5
	db #ff,#ff,#0a,#00,#00,#0a,#00,#90
	db #00,#8b,#00,#04,#d2,#20,#00,#28
.l08f6 equ $ + 6
	db #00,#ff,#ff,#0a,#00,#00,#02,#01
	db #28,#02,#00,#03,#01,#fa,#78,#00
.l0907 equ $ + 7
	db #78,#00,#ff,#ff,#01,#00,#00,#0f
	db #03,#00,#00,#00,#00,#06,#d2,#80
	db #07,#80,#02,#ff,#ff,#02,#00,#00
.l0918
	db #1e,#02,#00,#00,#00,#00,#0f,#d7
	db #10,#00,#18,#00,#01,#ff,#ff,#ff
.l0929 equ $ + 1
	db #00,#04,#03,#10,#00,#30,#00,#02
	db #fa,#08,#00,#08,#00,#ff,#ff,#0a
.l093a equ $ + 2
	db #00,#00,#14,#06,#80,#00,#80,#00
	db #07,#fa,#20,#00,#28,#00,#01,#01
.l094b equ $ + 3
	db #0a,#00,#00,#0f,#06,#80,#00,#28
	db #01,#06,#d2,#20,#00,#28,#00,#ff
	db #ff,#0a
.l0960 equ $ + 6
.l095f equ $ + 5
.l095e equ $ + 4
.l095d equ $ + 3
.l095c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0969 equ $ + 7
.l0968 equ $ + 6
.l0966 equ $ + 4
.l0964 equ $ + 2
.l0963 equ $ + 1
.l0962
	db #00,#00,#00,#00,#00,#00,#00,#00
.l096d equ $ + 3
.l096c equ $ + 2
.l096b equ $ + 1
.l096a
	db #00,#00,#00,#00,#00
.l096f
	ld a,(l098a)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l098d
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l098d equ $ + 3
.l098a
	db #ff,#80,#1b,#34
.l098e
	db #01
	dw l09c6,l09e3,l0a00
	db #01
	dw l0d29,l0d32,l0d3b
.l099c
	dw l0a29,l0a2d,l0a76,l0abf
	dw l0adc,l0b18,l0b61,l0b8d
	dw l0bd6,l0c1f,l0c48,l0ccd
	dw l0cfb,l0d13,l0d1b,l0d44
	dw l0dcb,l0e18,l0e43,l0e4b
	dw l0e52
.l09c7 equ $ + 1
.l09c6
	db #00,#01,#07,#09,#ff,#02,#01,#ff
	db #00,#07,#09,#ff,#02,#01,#ff,#00
	db #07,#0c,#0c,#ff,#f6,#01,#ff,#f4
.l09e4 equ $ + 6
.l09e3 equ $ + 5
	db #07,#09,#fc
	dw l09c7
	db #00,#02,#08
	db #0a,#ff,#02,#02,#ff,#00,#08,#0a
	db #ff,#02,#02,#ff,#00,#08,#0d,#0d
	db #ff,#f6,#02,#ff,#f4,#08,#0a,#fc
	dw l09e4
.l0a01 equ $ + 1
.l0a00
	db #0e,#03,#06,#04,#04,#05
	db #05,#ff,#02,#03,#ff,#00,#06,#04
	db #04,#05,#05,#ff,#02,#03,#ff,#00
	db #06,#fe,#02,#ff,#fe,#0b,#ff,#02
	db #03,#ff,#00,#06,#04,#04,#05,#05
.l0a2d equ $ + 7
.l0a29 equ $ + 3
	db #fc
	dw l0a01
	db #92,#80,#20,#87,#92
	db #8a,#e1,#b0,#80,#10,#c1,#37,#20
	db #c2,#36,#08,#80,#10,#34,#08,#80
	db #10,#c1,#32,#08,#80,#10,#c2,#34
	db #08,#80,#10,#c1,#32,#08,#80,#10
	db #c2,#34,#08,#80,#10,#80,#10,#c1
	db #37,#20,#c2,#36,#08,#80,#10,#34
	db #08,#80,#10,#c1,#32,#08,#80,#10
	db #c2,#34,#08,#80,#08,#c1,#32,#08
	db #80,#10,#c2,#34,#08,#80,#18,#87
.l0a76
	db #92,#8a,#e1,#b0,#80,#10,#c1,#32
	db #20,#c2,#31,#08,#80,#10,#2f,#08
	db #80,#10,#c1,#2d,#08,#80,#10,#c2
	db #2f,#08,#80,#10,#c1,#2d,#08,#80
	db #10,#c2,#2f,#08,#80,#10,#80,#10
	db #c1,#32,#20,#c2,#31,#08,#80,#10
	db #2f,#08,#80,#10,#c1,#2d,#08,#80
	db #10,#c2,#2f,#08,#80,#08,#c1,#2d
	db #08,#80,#10,#c2,#2f,#08,#80,#18
.l0abf equ $ + 1
	db #87,#10,#48,#0e,#10,#0b,#48,#0b
	db #08,#0e,#08,#0b,#08,#0e,#08,#10
	db #48,#10,#10,#12,#18,#12,#08,#13
.l0adc equ $ + 6
	db #18,#12,#18,#0e,#18,#87,#e6,#10
	db #10,#10,#08,#e0,#8c,#b9,#20,#10
	db #8a,#e6,#b7,#10,#08,#10,#10,#10
	db #08,#e0,#8c,#b9,#20,#10,#8a,#e6
	db #b7,#10,#08,#10,#10,#10,#08,#e0
	db #8c,#b9,#20,#10,#8a,#e6,#b7,#10
	db #08,#10,#10,#10,#08,#e0,#8c,#b9
	db #20,#08,#8a,#e6,#b7,#0e,#08,#0b
.l0b18 equ $ + 2
	db #08,#87,#e5,#10,#10,#e6,#10,#08
	db #e0,#8c,#b9,#20,#08,#e6,#8a,#b7
	db #0e,#08,#0b,#08,#e5,#10,#10,#e6
	db #10,#08,#e0,#8c,#b9,#20,#08,#e6
	db #8a,#b7,#0e,#08,#0b,#08,#e5,#10
	db #10,#e6,#10,#08,#e0,#8c,#b9,#20
	db #08,#e6,#8a,#b7,#0e,#08,#0b,#08
	db #e5,#17,#08,#e6,#0b,#08,#e5,#15
	db #08,#e6,#0b,#08,#e5,#13,#08,#e6
.l0b61 equ $ + 3
	db #0b,#08,#87,#10,#48,#10,#10,#0e
	db #20,#0b,#28,#0b,#08,#0e,#08,#0b
	db #08,#0e,#08,#10,#58,#09,#08,#15
	db #10,#e4,#09,#08,#e5,#15,#10,#e4
	db #09,#08,#e5,#17,#10,#e4,#0b,#08
.l0b8d equ $ + 7
	db #e5,#17,#10,#e4,#1c,#08,#87,#92
	db #8a,#e1,#b0,#80,#10,#c1,#37,#20
	db #c2,#36,#08,#80,#10,#34,#08,#80
	db #10,#c1,#32,#08,#80,#10,#c2,#34
	db #08,#80,#10,#c1,#32,#08,#80,#10
	db #c2,#34,#08,#80,#10,#80,#10,#c1
	db #37,#20,#c2,#36,#08,#80,#10,#34
	db #08,#80,#10,#36,#08,#80,#10,#36
	db #08,#80,#10,#c1,#37,#08,#80,#10
	db #37,#08,#80,#08,#c3,#3b,#08,#87
.l0bd6
	db #92,#8a,#e1,#b0,#80,#10,#c1,#32
	db #20,#c2,#31,#08,#80,#10,#2f,#08
	db #80,#10,#c1,#2d,#08,#80,#10,#c2
	db #2f,#08,#80,#10,#c1,#2d,#08,#80
	db #10,#c2,#2f,#08,#80,#10,#80,#10
	db #c1,#32,#20,#c2,#31,#08,#80,#10
	db #2f,#08,#80,#10,#31,#08,#80,#10
	db #31,#08,#80,#10,#c1,#32,#08,#80
	db #10,#32,#08,#80,#08,#c2,#34,#08
.l0c1f equ $ + 1
	db #87,#e0,#bb,#1f,#60,#1f,#28,#1f
	db #38,#bf,#21,#60,#21,#28,#21,#38
	db #e1,#bb,#1f,#28,#1f,#60,#bb,#1f
	db #08,#1f,#0b,#80,#0d,#bc,#21,#0b
	db #80,#0d,#bf,#26,#28,#26,#78,#26
.l0c48 equ $ + 2
	db #20,#87,#e3,#b7,#32,#08,#34,#08
	db #34,#08,#34,#10,#34,#10,#80,#20
	db #2f,#08,#32,#08,#34,#08,#34,#08
	db #80,#10,#2f,#08,#32,#08,#34,#08
	db #34,#08,#80,#10,#2f,#08,#32,#08
	db #34,#08,#34,#08,#34,#10,#34,#10
	db #80,#20,#2f,#08,#32,#08,#34,#08
	db #34,#08,#80,#08,#34,#10,#32,#10
	db #34,#10,#80,#08,#37,#08,#36,#08
	db #80,#08,#32,#08,#80,#10,#34,#30
	db #32,#08,#36,#08,#37,#08,#36,#08
	db #34,#10,#32,#18,#2f,#08,#32,#08
	db #2f,#08,#32,#08,#33,#02,#34,#06
	db #80,#08,#33,#02,#34,#06,#32,#10
	db #2f,#30,#2f,#08,#32,#10,#33,#02
	db #34,#06,#32,#10,#2f,#18,#2d,#08
.l0ccd equ $ + 7
	db #2b,#08,#2a,#08,#26,#08,#87,#e5
	db #10,#18,#10,#18,#10,#18,#1c,#10
	db #10,#18,#10,#08,#1c,#10,#10,#08
	db #19,#18,#17,#18,#0b,#18,#0b,#18
	db #0b,#18,#17,#10,#0b,#18,#0b,#08
	db #17,#10,#0b,#08,#14,#08,#15,#08
.l0cfb equ $ + 5
	db #14,#08,#12,#18,#87,#e1,#be,#2d
	db #18,#2d,#18,#2d,#70,#2d,#08,#80
	db #10,#2d,#08,#c0,#2f,#a0,#2f,#08
.l0d13 equ $ + 5
	db #80,#10,#2f,#08,#87,#e7,#b4,#39
.l0d1b equ $ + 5
	db #c0,#b5,#3b,#c0,#87,#92,#8a,#e5
	db #b7,#90,#0b,#08,#0e,#08,#0b,#08
.l0d2c equ $ + 6
.l0d29 equ $ + 3
	db #0e,#08,#87,#ff,#00,#13,#ff,#02
.l0d35 equ $ + 7
.l0d32 equ $ + 4
	db #11,#fc
	dw l0d2c
	db #ff,#00,#14,#ff
.l0d3e equ $ + 8
.l0d3b equ $ + 5
	db #02,#10,#fc
	dw l0d35
	db #ff,#00,#12
.l0d44 equ $ + 6
	db #ff,#02,#0f,#fc
	dw l0d3e
	db #92,#8a
	db #e3,#b8,#32,#06,#34,#06,#34,#06
	db #34,#0c,#34,#0c,#80,#18,#2f,#06
	db #32,#06,#34,#06,#34,#06,#80,#0c
	db #2f,#06,#32,#06,#34,#06,#34,#06
	db #80,#0c,#2f,#06,#32,#06,#34,#06
	db #34,#06,#34,#0c,#34,#0c,#80,#18
	db #2f,#06,#32,#06,#34,#06,#34,#06
	db #80,#06,#34,#0c,#32,#0c,#34,#0c
	db #80,#06,#37,#06,#36,#06,#80,#06
	db #32,#06,#80,#0c,#34,#24,#32,#06
	db #36,#06,#37,#06,#36,#06,#34,#0c
	db #32,#12,#2f,#06,#32,#06,#2f,#06
	db #32,#06,#33,#02,#34,#04,#80,#06
	db #33,#02,#34,#04,#32,#0c,#2f,#24
	db #2f,#06,#32,#0c,#33,#02,#34,#04
	db #32,#0c,#2f,#12,#2f,#06,#32,#06
.l0dcb equ $ + 5
	db #2f,#06,#32,#06,#87,#92,#8a,#b8
	db #90,#e5,#10,#0c,#e6,#10,#06,#e0
	db #8c,#b9,#20,#06,#e6,#8a,#b8,#0e
	db #06,#0b,#06,#e5,#10,#0c,#e6,#10
	db #06,#e0,#8c,#b9,#20,#06,#e6,#8a
	db #b8,#0e,#06,#0b,#06,#e5,#10,#0c
	db #e6,#10,#06,#e0,#8c,#b9,#20,#06
	db #e6,#8a,#b8,#0e,#06,#0b,#06,#e5
	db #17,#06,#e6,#0b,#06,#e5,#15,#06
	db #e6,#0b,#06,#e5,#13,#06,#e6,#0b
.l0e18 equ $ + 2
	db #06,#87,#92,#8a,#e0,#bb,#1f,#48
	db #1f,#1e,#1f,#2a,#bf,#21,#48,#21
	db #1e,#21,#2a,#e1,#bb,#1f,#1e,#1f
	db #48,#bb,#1f,#06,#1f,#09,#80,#09
	db #bc,#21,#09,#80,#09,#bf,#26,#1e
.l0e43 equ $ + 5
	db #26,#5a,#26,#18,#87,#92,#8a,#e5
.l0e4b equ $ + 5
	db #90,#b8,#17,#24,#87,#92,#8a,#e5
.l0e52 equ $ + 4
	db #b1,#23,#24,#87,#92,#8a,#e5,#b0
	db #83,#88,#01,#01,#2f,#24,#81,#87
;
.music_info
	db "Puzznic (1990)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
