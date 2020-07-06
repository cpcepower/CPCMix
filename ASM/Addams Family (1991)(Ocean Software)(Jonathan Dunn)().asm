; Music of Addams Family (1991)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 07/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ADDAMSFA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #6d00
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

;
.init_music
;
	ld hl,l6ddb
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
	ld hl,l7c0b
	add hl,bc
	ld a,(hl)
	ld (l6e09),a
	inc hl
	ld ix,l6d65
	ld c,#27
	ld a,#03
.l6d21
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
	jr nz,l6d21
	ld (l70bb),a
	inc a
	ld (l6dda),a
	ld (l6ddb),a
	ld a,#01
	ld (l6d75),a
	ld (l6d9c),a
	ld (l6dc3),a
	ret
.l6d65
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6d75
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l6d8c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6d9c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l6db3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6dc3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.l6dda
	db #00
.l6ddb
.music_end
	db #00
.l6ddc
	db #00
;
.play_music
;
	call l74ed
	ld a,(l6ddb)
	and a
	jp z,l6e39
.l6de8 equ $ + 1
	ld a,#00
	ld (l6e35),a
	ld hl,l6dda
	dec (hl)
	jr nz,l6e0d
	ld b,(hl)
	ld ix,l6d65
	call l6fb3
	ld ix,l6d8c
	call l6fb3
	ld ix,l6db3
	call l6fb3
.l6e09 equ $ + 1
	ld a,#01
	ld (l6dda),a
.l6e0d
	ld ix,l6d65
	call l7088
	ld (l7199),hl
	ld (l71a1),a
	ld ix,l6d8c
	call l7088
	ld (l719b),hl
	ld (l71a2),a
	ld ix,l6db3
	call l7088
	ld (l719d),hl
	ld (l71a3),a
.l6e35 equ $ + 1
	ld a,#00
	ld (l719f),a
.l6e39
	ld a,(l6ddc)
	and a
	jr z,l6e69
	ld hl,(l71a6)
	ld (l7199),hl
	ld hl,(l71aa)
	ld (l719d),hl
	ld a,(l71ac)
	ld (l719f),a
	ld a,(l71a0)
	or #2d
	ld hl,l71ad
	and (hl)
	ld (l71a0),a
	ld a,(l71ae)
	ld (l71a1),a
.l6e65 equ $ + 2
	ld a,(l71b0)
	ld (l71a3),a
.l6e69
	ld a,(l6ddb)
	ld hl,l6ddc
	or (hl)
	ret z
	ld hl,l71a4
	ld d,#0b
.l6e76
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
	jp p,l6e76
	ret
.l6e97
	xor a
	ld (l6ddb),a
.l6e9b
	ld de,#0d00
.l6e9e
	call l6ea8
	dec d
	jp p,l6e9e
	ld de,#073f
.l6ea8
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
	ld (l6ddc),a
	ld (l71a1),a
	ld (l71a2),a
	ld (l71a3),a
	ret
;
.stop_music
;
	xor a
	ld (l6ddb),a
	ld (l6ddc),a
	call l6e9b
	xor a
	ld (l71a1),a
	ld (l71a2),a
	ld (l71a3),a
	ret
	db #a2,#8a,#8e,#93,#51,#80,#7b,#11
	db #6a,#62,#26,#10,#38,#8f,#06,#9c
	db #a1,#a6,#aa,#b0
	pop hl
	jp l6e97
	jp l7403
	ld a,(ix+#26)
	ld c,a
	and #07
	ld hl,l7164
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l6fc8
	ld a,(ix+#26)
	ld c,a
	and #38
	ld hl,l7164
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l6fc8
	ld hl,l7164
	ld a,(ix+#26)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l6fc8
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l6fc8
	ld a,(de)
	inc de
	ld (l70bb),a
	jr l6fc8
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l6fc8
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l6fc8
	ld (ix+#1d),b
	jr l6fc8
	ld (ix+#1d),#40
	jr l6fc8
	ld (ix+#1d),#c0
	jr l6fc8
	set 1,(ix+#00)
	jr l6fc8
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l7006
	res 5,(ix+#00)
	jr l7006
	ld (ix+#1f),#ff
	jr l6fc8
	ld (ix+#1f),b
	jr l6fc8
	ld a,#01
	ld (ix+#24),a
	jr l6fc8
	ld a,(de)
	inc de
	ld (ix+#11),a
	ld (ix+#24),#00
	jr l6fc8
.l6fb3
	dec (ix+#10)
	jr nz,l702d
	ld (ix+#00),b
	ld a,(ix+#25)
	or a
	jp nz,l7403
	ld e,(ix+#01)
	ld d,(ix+#02)
.l6fc8
	ld a,(de)
	inc de
	and a
	jp m,l703e
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l6fdd
	ld (l6de8),a
.l6fdd
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
.l7006
	ld a,(ix+#24)
	or a
	jr z,l7010
	ld a,(de)
	inc de
	jr l7013
.l7010
	ld a,(ix+#11)
.l7013
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l702c
	ld a,(l6ddc)
	and a
	jr nz,l702c
	ld (ix+#1f),#ff
.l702c
	ret
.l702d
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l703a
	inc (ix+#12)
	ret
.l703a
	dec (ix+#12)
	ret
.l703e
	cp #b0
	jr c,l7080
	add #20
	jr c,l7068
	add #30
	jr nc,l7060
	ld c,a
	ld hl,l7272
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l6fc8
.l7060
	add #09
	ld (l6e09),a
	jp l6fc8
.l7068
	ld hl,l733e
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
	jp l6fc8
.l7080
	ld hl,l6e65
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l7088
	ld c,(ix+#00)
	bit 5,c
	jr z,l70ba
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l70b4
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l70b4
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l70b4
	ld a,(ix+#18)
	ld (ix+#13),a
.l70bb equ $ + 1
.l70ba
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l70d4
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l70d4
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l71b2
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l7135
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l70fe
	bit 0,c
	jr nz,l711c
.l70fe
	bit 5,l
	jr nz,l710e
	sub (ix+#1b)
	jr nc,l7119
	set 5,(ix+#1d)
	sub a
	jr l7119
.l710e
	add (ix+#1b)
	cp b
	jr c,l7119
	res 5,(ix+#1d)
	ld a,b
.l7119
	ld (ix+#1c),a
.l711c
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l7127
	dec d
.l7127
	add #a0
	jr c,l7133
.l712b
	sla e
	rl d
	add #18
	jr nc,l712b
.l7133
	add hl,de
	ex de,hl
.l7135
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l7160
	ld b,(ix+#0e)
	djnz l715d
	ld c,(ix+#0d)
	bit 7,c
	jr z,l714c
	dec b
.l714c
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l7160
.l715d
	ld (ix+#0e),b
.l7160
	cpl
	and #03
.l7164 equ $ + 1
	ld a,#00
	jr nz,l7171
	ld a,(l6de8)
	xor #08
	ld (l6e35),a
	ld a,#07
.l7171
	ld hl,l71a0
	xor (hl)
	and (ix+#26)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l7194
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#26)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l6e35),a
.l7194
	ex de,hl
	ld a,(ix+#13)
	ret
.l71a0 equ $ + 7
.l719f equ $ + 6
.l719d equ $ + 4
.l719b equ $ + 2
.l7199
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l71a7 equ $ + 6
.l71a6 equ $ + 5
.l71a4 equ $ + 3
.l71a3 equ $ + 2
.l71a2 equ $ + 1
.l71a1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l71b0 equ $ + 7
.l71ae equ $ + 5
.l71ad equ $ + 4
.l71ac equ $ + 3
.l71aa equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l71b2
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
.l7272
	db #21,#21,#2f,#37,#4e,#51,#6a,#84
	db #98,#98,#98,#98,#98,#98,#98,#99
	db #9a,#9b,#9c,#9d,#9e,#9f,#a0,#a1
	db #a2,#a3,#a4,#a5,#a6,#a7,#a8,#a9
	db #aa,#80,#0c,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #80,#18,#18,#0c,#0c,#0c,#0c,#0c
	db #0c,#8c,#0c,#18,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#80,#18,#18,#0c,#8c,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#80
	db #18,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#8c,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#80
	db #8c,#80,#80,#81,#80,#80,#00,#80
	db #00,#80,#02,#80,#00,#80,#00,#80
	db #04,#80,#00,#80,#00,#80,#02,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#01,#80,#01,#80,#00,#80
	db #00,#80,#01,#80
.l733e
	dw l735b,l7370,l737a,l7385
	dw l7388,l739a,l73b3,l73ca
	dw l73d5,l73ef,l73f2,l73f9
	dw l73fc,l7400
.l735b equ $ + 1
	db #00,#0a,#0c,#0f,#0e,#0d,#0c,#0a
	db #09,#09,#09,#08,#08,#07,#07,#06
.l7370 equ $ + 6
	db #06,#05,#05,#04,#87,#00,#0f,#0c
	db #0a,#08,#06,#04,#02,#00,#87,#00
.l737a
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
.l7388 equ $ + 6
.l7385 equ $ + 3
	db #06,#87,#00,#00,#87,#01,#0e,#0d
	db #0c,#0a,#0a,#09,#09,#09,#08,#08
	db #08,#07,#07,#07,#06,#06,#87,#00
.l739a
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#87
.l73b3 equ $ + 1
	db #00,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#01,#01,#01,#00,#87,#00
.l73ca
	db #0f,#0f,#0c,#0b,#0a,#09,#08,#07
.l73d5 equ $ + 3
	db #06,#87,#00,#0e,#0f,#0d,#09,#08
	db #07,#06,#05,#05,#05,#06,#06,#05
	db #05,#04,#04,#03,#03,#04,#04,#03
.l73ef equ $ + 5
	db #03,#02,#02,#87,#00,#00,#87,#00
.l73f9 equ $ + 7
.l73f2
	db #0a,#0c,#0b,#07,#06,#87,#00,#00
.l7400 equ $ + 6
.l73fc equ $ + 2
	db #87,#0e,#0c,#00,#87,#04,#0d,#00
	db #00
.l7403
	xor a
	ld (ix+#25),a
	ld l,(ix+#03)
	ld h,(ix+#04)
.l740d
	ld a,(ix+#21)
	or a
	jp z,l7429
	dec a
	ld (ix+#21),a
	jp z,l742d
	ld l,(ix+#22)
	ld h,(ix+#23)
	ld (ix+#03),l
	ld (ix+#04),h
	jr l742d
.l7429
	ld (ix+#20),#00
.l742d
	ld a,(hl)
	inc hl
	or a
	jp m,l7450
	ld (ix+#03),l
	ld (ix+#04),h
	add a
	ld e,a
	ld d,#00
	ld hl,l7c19
	add hl,de
	ld a,(hl)
	ld e,a
	inc hl
	ld d,(hl)
	ld (ix+#01),e
	ld (ix+#02),d
	ld b,#00
	jp l6fc8
.l7450
	cp #fd
	jr z,l7487
	cp #ff
	jr z,l747f
	cp #fe
	jr z,l7471
	cp #fc
	jr z,l746a
.l7460
	ld a,r
	out (#fe),a
	ld b,#64
.l7466
	djnz l7466
	jr l7460
.l746a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l742d
.l7471
	ld a,(hl)
	inc hl
	ld (ix+#21),a
	ld (ix+#22),l
	ld (ix+#23),h
	jp l742d
.l747f
	ld a,(hl)
	inc hl
	ld (ix+#20),a
	jp l742d
.l7487
	ld l,(ix+#05)
	ld h,(ix+#06)
	jp l740d
	push af
	push bc
	push de
	push hl
	push ix
	ld hl,l6ddc
	ld (hl),#00
	ld hl,l758b
	add a
	add l
	ld l,a
	jr nc,l74a4
	inc h
.l74a4
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l77c5
.l74ac
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l74ac
	ld a,(l77c6)
	ld (l77d6),a
	ld hl,(l77c7)
	ld (l71a6),hl
	ld de,(l77c9)
	ld (l71aa),de
	ld a,l
	ld (l71ac),a
	ld a,(l77cc)
	ld (l71ad),a
	ld a,(l77cb)
	ld e,a
	ld d,#0c
	call l6ea8
	ld a,(l77d5)
	ld e,a
	ld d,#0d
	call l6ea8
	ld hl,l6ddc
	inc (hl)
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l74ed
	call l77d8
	ld a,(l6ddc)
	and a
	ret z
	ld a,(l77c5)
	and a
	jr nz,l7501
	ld (l6ddc),a
	jp l6e9b
.l7501
	dec a
	ld (l77c5),a
	ld a,(l77d6)
	and a
	jr nz,l753a
	ld a,(l77d3)
	and a
	ret z
	dec a
	ld (l77d3),a
	ld a,(l77c6)
	ld (l77d6),a
	ld a,(l77d4)
	and a
	jr z,l7523
	ld a,(l77f3)
.l7523
	ld b,a
	ld a,(l77c7)
	add b
	ld (l71a6),a
	ld a,(l77c8)
	add b
	and #0f
	ld (l71a7),a
	ld hl,(l77c9)
	ld (l71aa),hl
.l753a
	ld hl,l77d6
	dec (hl)
	ld a,(l77d1)
	and a
	jr z,l7561
	jp p,l7554
	ld hl,(l71a6)
	ld de,(l77cd)
	add hl,de
	ld (l71a6),hl
	jr l7561
.l7554
	ld hl,(l71a6)
	ld de,(l77cd)
	and a
	sbc hl,de
	ld (l71a6),hl
.l7561
	ld a,(l77d2)
	and a
	jr z,l7584
	jp p,l7577
	ld hl,(l71aa)
	ld de,(l77cf)
	add hl,de
	ld (l71aa),hl
	jr l7584
.l7577
	ld hl,(l71aa)
	ld de,(l77cf)
	and a
	sbc hl,de
	ld (l71aa),hl
.l7584
	ld a,(l71a6)
	ld (l71ac),a
	ret
.l758b
	dw l75c7,l75d8,l75e9,l75fa
	dw l760b,l761c,l762d,l763e
	dw l764f,l7660,l7671,l7682
	dw l7693,l76a4,l76b5,l76c6
	dw l76d7,l76e8,l76f9,l770a
	dw l771b,l772c,l773d,l774e
	dw l775f,l7770,l7781,l7792
	dw l77a3,l77b4
.l75c7
	db #05,#04,#02,#01,#83,#00,#07,#fa
	db #38,#00,#40,#00,#ff,#ff,#01,#00
.l75d8 equ $ + 1
	db #00,#46,#0a,#fa,#00,#73,#00,#23
	db #fa,#21,#00,#41,#00,#ff,#ff,#08
.l75e9 equ $ + 2
	db #00,#00,#1e,#03,#40,#00,#60,#00
	db #0f,#fa,#20,#00,#30,#00,#01,#01
.l75fa equ $ + 3
	db #0a,#00,#00,#1e,#06,#a0,#00,#80
	db #00,#0d,#fa,#08,#00,#08,#00,#ff
.l760b equ $ + 4
	db #ff,#05,#00,#00,#20,#10,#09,#00
	db #0a,#00,#04,#dd,#00,#00,#00,#00
.l761c equ $ + 5
	db #ff,#ff,#02,#00,#0f,#0a,#04,#80
	db #01,#ff,#07,#00,#d3,#00,#00,#00
.l762d equ $ + 6
	db #00,#ff,#ff,#05,#00,#0c,#3c,#3c
	db #84,#00,#8b,#00,#02,#d7,#01,#00
.l763e equ $ + 7
	db #01,#00,#ff,#ff,#01,#00,#0f,#30
	db #0c,#e8,#00,#e0,#00,#18,#fa,#1c
	db #00,#1b,#00,#01,#01,#04,#00,#00
.l764f
	db #24,#24,#81,#02,#91,#02,#13,#fa
	db #06,#00,#06,#00,#01,#01,#01,#00
.l7660 equ $ + 1
	db #00,#12,#12,#81,#02,#91,#02,#0a
	db #fa,#21,#00,#21,#00,#01,#01,#01
.l7671 equ $ + 2
	db #00,#00,#09,#09,#80,#02,#91,#02
	db #05,#fa,#40,#00,#40,#00,#01,#01
.l7682 equ $ + 3
	db #01,#00,#00,#21,#21,#04,#00,#01
	db #00,#13,#fa,#00,#00,#00,#00,#ff
.l7693 equ $ + 4
	db #ff,#00,#00,#00,#30,#0c,#04,#01
	db #82,#00,#13,#fa,#10,#00,#10,#00
.l76a4 equ $ + 5
	db #ff,#01,#04,#50,#00,#0a,#05,#80
	db #02,#91,#02,#05,#fa,#48,#00,#40
.l76b5 equ $ + 6
	db #00,#01,#01,#01,#00,#08,#0a,#02
	db #80,#01,#ff,#07,#00,#d7,#10,#00
.l76c6 equ $ + 7
	db #00,#01,#ff,#ff,#05,#00,#00,#06
	db #06,#04,#01,#82,#00,#01,#d7,#00
	db #00,#00,#00,#00,#00,#01,#00,#00
.l76d7
	db #18,#08,#04,#01,#82,#00,#0a,#fa
	db #10,#00,#10,#00,#ff,#ff,#01,#00
.l76e8 equ $ + 1
	db #00,#30,#0c,#84,#00,#82,#00,#09
	db #fa,#10,#00,#10,#00,#01,#01,#01
.l76f9 equ $ + 2
	db #00,#00,#07,#00,#30,#00,#80,#00
	db #03,#d2,#78,#00,#78,#00,#ff,#ff
.l770a equ $ + 3
	db #01,#00,#00,#0f,#00,#10,#00,#50
	db #00,#07,#fa,#68,#00,#68,#00,#ff
.l771b equ $ + 4
	db #ff,#01,#00,#00,#0f,#06,#00,#00
	db #00,#00,#06,#d2,#40,#00,#30,#00
.l772c equ $ + 5
	db #ff,#ff,#0a,#00,#00,#17,#00,#30
	db #00,#60,#00,#07,#d2,#01,#00,#02
.l773d equ $ + 6
	db #00,#ff,#ff,#01,#00,#00,#0a,#00
	db #ab,#00,#00,#01,#04,#fa,#20,#00
.l774e equ $ + 7
	db #20,#00,#ff,#ff,#0a,#00,#00,#0a
	db #00,#90,#00,#8b,#00,#04,#d2,#20
	db #00,#28,#00,#ff,#ff,#0a,#00,#00
.l775f
	db #02,#01,#28,#02,#00,#03,#01,#fa
	db #78,#00,#78,#00,#ff,#ff,#01,#00
.l7770 equ $ + 1
	db #00,#0f,#03,#00,#00,#00,#00,#06
	db #d2,#80,#07,#80,#02,#ff,#ff,#02
.l7781 equ $ + 2
	db #00,#00,#1e,#02,#00,#00,#00,#00
	db #0f,#d7,#10,#00,#18,#00,#01,#ff
.l7792 equ $ + 3
	db #ff,#ff,#00,#04,#03,#10,#00,#30
	db #00,#02,#fa,#08,#00,#08,#00,#ff
.l77a3 equ $ + 4
	db #ff,#0a,#00,#00,#14,#06,#80,#00
	db #80,#00,#07,#fa,#20,#00,#28,#00
.l77b4 equ $ + 5
	db #01,#01,#0a,#00,#00,#0f,#06,#80
	db #00,#28,#01,#06,#d2,#20,#00,#28
.l77c6 equ $ + 7
.l77c5 equ $ + 6
	db #00,#ff,#ff,#0a,#00,#00,#00,#00
.l77cd equ $ + 6
.l77cc equ $ + 5
.l77cb equ $ + 4
.l77c9 equ $ + 2
.l77c8 equ $ + 1
.l77c7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l77d6 equ $ + 7
.l77d5 equ $ + 6
.l77d4 equ $ + 5
.l77d3 equ $ + 4
.l77d2 equ $ + 3
.l77d1 equ $ + 2
.l77cf
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l77d8
	ld a,(l77f3)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l77f6
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l77f6 equ $ + 3
.l77f3
	db #ff,#80,#1b,#34
.l77f7
	db #00,#03,#06,#09,#fc
	dw l77f7
.l77fe
	db #01,#04,#07,#0a,#fc
	dw l77fe
.l7805
	db #02,#05,#08,#0b,#fc
	dw l7805
.l780c
	db #81,#91,#8a,#b1,#e0,#93,#08,#07
	db #09,#0b,#93,#18,#0c,#e1,#8b,#18
	db #18,#8a,#e0,#b1,#93,#08,#09,#0b
	db #0d,#93,#18,#0e,#e1,#8b,#18,#18
	db #8a,#e0,#b1,#93,#08,#09,#0b,#0d
	db #93,#18,#0e,#93,#08,#09,#0b,#0d
	db #93,#18,#0e,#93,#08,#07,#09,#0b
	db #93,#18,#0c,#e1,#8b,#18,#18,#8a
	db #87
.l784d
	db #81,#8a,#b1,#e0,#93,#08,#13,#15
	db #17,#93,#18,#0c,#e1,#8b,#18,#18
	db #8a,#e0,#b1,#93,#08,#15,#17,#19
	db #93,#18,#1a,#e1,#8b,#18,#18,#8a
	db #e0,#b1,#93,#08,#15,#17,#19,#93
	db #18,#1a,#93,#08,#15,#17,#19,#93
	db #18,#1a,#93,#08,#13,#15,#17,#93
	db #18,#18,#e1,#8b,#18,#18,#8a,#87
.l788d
	db #82,#88,#01,#00,#8a,#b1,#93,#c0
	db #80,#80,#87
.l7898
	db #e0,#b1,#93,#08,#07,#09,#0b,#93
	db #18,#0c,#e1,#8b,#18,#18,#8a,#e0
	db #b1,#93,#08,#09,#0b,#0d,#93,#18
	db #0e,#e1,#8b,#18,#18,#8a,#e0,#b1
	db #93,#08,#09,#0b,#0d,#93,#18,#0e
	db #93,#08,#09,#0b,#0d,#93,#18,#0e
	db #93,#08,#07,#09,#0b,#93,#18,#0c
	db #e1,#8b,#18,#8a,#93,#08,#18,#e0
	db #b1,#07,#07,#87
.l78dc
	db #e0,#b1,#93,#08,#13,#15,#17,#93
	db #18,#18,#e1,#8b,#18,#18,#8a,#e0
	db #b1,#93,#08,#15,#17,#19,#93,#18
	db #1a,#e1,#8b,#18,#18,#8a,#e0,#b1
	db #93,#08,#15,#17,#19,#93,#18,#1a
	db #93,#08,#15,#17,#19,#93,#18,#1a
	db #93,#08,#13,#15,#17,#93,#18,#18
	db #e1,#8b,#18,#8a,#93,#08,#18,#e2
.l7920 equ $ + 4
	db #b2,#17,#17,#87,#93,#b8,#80,#80
.l792b equ $ + 7
	db #93,#08,#e2,#b2,#1f,#1f,#87,#e0
	db #b1,#93,#08,#07,#07,#07,#93,#10
	db #0c,#e2,#b2,#93,#08,#13,#e0,#b1
	db #93,#10,#10,#e2,#b2,#93,#08,#13
	db #e0,#b1,#93,#10,#11,#e2,#b2,#93
	db #08,#11,#e0,#b1,#93,#10,#0c,#e2
	db #b2,#93,#08,#11,#e0,#b1,#93,#10
	db #07,#e2,#b2,#93,#08,#13,#e0,#b1
	db #93,#10,#0b,#e2,#b2,#93,#08,#13
	db #e0,#b1,#93,#10,#0c,#e2,#b2,#93
	db #08,#13,#e0,#b1,#93,#10,#07,#e2
	db #b2,#93,#08,#13,#e0,#b1,#93,#10
	db #0c,#e2,#b2,#93,#08,#13,#e0,#b1
	db #93,#10,#10,#e2,#b2,#93,#08,#13
	db #e0,#b1,#93,#10,#11,#e2,#b2,#93
	db #08,#11,#e0,#b1,#93,#10,#0c,#e2
	db #b2,#93,#08,#11,#e0,#b1,#93,#28
	db #07,#93,#08,#0b,#93,#18,#0c,#87
.l79b4
	db #e2,#b2,#93,#08,#17,#17,#17,#e0
	db #b1,#93,#10,#18,#e2,#b2,#93,#08
	db #18,#e0,#b1,#93,#10,#1c,#e2,#b2
	db #93,#08,#18,#e0,#b1,#93,#10,#1d
	db #e2,#b2,#93,#08,#15,#e0,#b1,#93
	db #10,#18,#e2,#b2,#93,#08,#15,#e0
	db #b1,#93,#10,#13,#e2,#b2,#93,#08
	db #17,#e0,#b1,#93,#10,#17,#e2,#b2
	db #93,#08,#17,#e0,#b1,#93,#10,#18
	db #e2,#b2,#93,#08,#18,#e0,#b1,#93
	db #10,#13,#e2,#b2,#93,#08,#18,#e0
	db #b1,#93,#10,#18,#e2,#b2,#93,#08
	db #18,#e0,#b1,#93,#10,#1c,#e2,#b2
	db #93,#08,#18,#e0,#b1,#93,#10,#1d
	db #e2,#b2,#93,#08,#15,#e0,#b1,#93
	db #10,#18,#e2,#b2,#93,#08,#15,#e0
	db #b1,#93,#28,#13,#93,#08,#17,#93
.l7a3f equ $ + 3
	db #18,#18,#87,#e2,#b2,#93,#08,#1f
	db #1f,#1f,#e4,#b3,#93,#10,#24,#93
	db #08,#28,#93,#10,#24,#93,#08,#21
	db #93,#10,#1d,#93,#18,#26,#93,#08
	db #22,#93,#10,#23,#93,#08,#26,#93
	db #10,#23,#93,#08,#1f,#93,#10,#1c
	db #93,#18,#24,#93,#04,#1f,#21,#93
	db #10,#24,#93,#08,#28,#93,#10,#24
	db #93,#08,#21,#93,#10,#1d,#93,#18
	db #26,#93,#08,#24,#93,#04,#23,#24
	db #23,#24,#93,#08,#1f,#93,#10,#21
.l7a9b equ $ + 7
	db #93,#08,#23,#93,#18,#24,#87,#93
	db #18,#80,#e0,#b1,#93,#10,#0c,#93
	db #08,#10,#07,#09,#0b,#93,#10,#0c
	db #93,#08,#10,#07,#09,#0b,#93,#10
	db #0c,#93,#08,#10,#07,#09,#0b,#93
	db #10,#0c,#93,#08,#10,#07,#09,#0b
	db #93,#18,#0c,#e1,#8b,#18,#18,#8a
	db #e0,#b1,#93,#08,#09,#0b,#0d,#93
	db #18,#0e,#e1,#8b,#18,#18,#8a,#e0
	db #b1,#93,#08,#09,#0b,#0d,#93,#18
	db #0e,#93,#08,#09,#0b,#0d,#93,#18
	db #0e,#93,#08,#13,#15,#17,#93,#18
.l7af9 equ $ + 5
	db #18,#93,#58,#0c,#87,#80,#93,#10
	db #18,#93,#08,#1c,#13,#15,#17,#93
	db #10,#18,#93,#08,#1c,#13,#15,#17
	db #93,#10,#18,#93,#08,#1c,#13,#15
	db #17,#93,#10,#18,#93,#08,#1c,#13
	db #15,#17,#93,#18,#18,#e1,#8b,#18
	db #18,#8a,#e0,#b1,#93,#08,#15,#17
	db #19,#93,#18,#1a,#e1,#8b,#18,#18
	db #8a,#e0,#b1,#93,#08,#15,#17,#19
	db #93,#18,#1a,#93,#08,#15,#17,#19
	db #93,#18,#1a,#93,#08,#1f,#21,#23
.l7b53 equ $ + 7
	db #93,#18,#24,#93,#58,#18,#87,#93
.l7b5b equ $ + 7
	db #c0,#80,#80,#93,#e8,#80,#87,#0c
.l7b60 equ $ + 4
.l7b5d equ $ + 1
.l7b5c
	db #0d,#ff,#18,#0e,#81,#b0,#8a,#e0
	db #93,#18,#15,#93,#10,#1a,#93,#08
	db #21,#93,#20,#20,#93,#08,#23,#21
	db #1e,#1a,#93,#10,#15,#93,#08,#1a
	db #93,#28,#14,#93,#08,#17,#15,#17
	db #19,#93,#10,#1a,#93,#08,#21,#93
	db #28,#20,#93,#08,#23,#21,#1e,#1a
.l7b98 equ $ + 4
	db #93,#68,#18,#8e,#81,#b0,#8a,#e0
	db #93,#18,#21,#93,#10,#26,#93,#08
	db #2d,#93,#20,#2c,#93,#08,#2f,#2d
	db #2a,#26,#93,#10,#21,#93,#08,#26
	db #93,#28,#20,#93,#08,#23,#21,#23
	db #25,#93,#10,#26,#93,#08,#2d,#93
	db #28,#2c,#93,#08,#2f,#2d,#2a,#26
.l7bd0 equ $ + 4
	db #93,#68,#1b,#8e,#81,#b0,#8a,#e0
	db #93,#18,#15,#93,#10,#1a,#93,#08
	db #21,#93,#20,#20,#93,#08,#23,#21
	db #1e,#1a,#93,#10,#15,#93,#08,#1a
	db #93,#28,#14,#93,#08,#17,#15,#17
	db #19,#93,#10,#1a,#93,#08,#21,#93
	db #28,#20,#93,#08,#23,#21,#1e,#1a
	db #93,#68,#18,#8e,#93,#10,#80
.l7c0b
	db #01
	dw l77f7,l77fe,l7805
	db #01
	dw l7b5b,l7b5c,l7b5d
.l7c19
	dw l780c,l784d,l788d,l7898
	dw l78dc,l7920,l792b,l79b4
	dw l7a3f,l7a9b,l7af9,l7b53
	dw l7b60,l7b98,l7bd0
;
.music_info
	db "Addams Family (1991)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
