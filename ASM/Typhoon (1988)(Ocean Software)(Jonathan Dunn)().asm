; Music of Typhoon (1988)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 16/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TYPHOON.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #8000
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.init_music
;
	ld c,a			; added by Megachur
	add a
	add a
	add a
	sub c
	ld c,a			; added by Megachur
	ld hl,l8638		;org #8000
	ld b,#00
	ld (hl),b
	ld hl,l8818
	add hl,bc
	ld a,(hl)
	ld (l80e1),a
	inc hl
	ld ix,l8051
	ld c,#21
	ld a,#03
.l8017
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
	jr nz,l8017
	ld (l8380),a
	inc a
	ld (l80b4),a
	ld (l8637),a
	ret
.l8051
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.l8072
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.l8093
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
.l80b4
	db #00
;
.play_music	;l80b5
;
	call l868a
	ld a,(l8637)
	and a
	jp z,l8111
.l80c0 equ $ + 1
	ld a,#00
	ld (l810d),a
	ld hl,l80b4
	dec (hl)
	jr nz,l80e5
	ld b,(hl)
	ld ix,l8051
	call l828f
	ld ix,l8072
	call l828f
	ld ix,l8093
	call l828f
.l80e1 equ $ + 1
	ld a,#01
	ld (l80b4),a
.l80e5
	ld ix,l8051
	call l834d
	ld (l845d),hl
	ld (l8465),a
	ld ix,l8072
	call l834d
	ld (l845f),hl
	ld (l8466),a
	ld ix,l8093
	call l834d
	ld (l8461),hl
	ld (l8467),a
.l810d equ $ + 1
	ld a,#00
	ld (l8463),a
.l8111
	ld a,(l8638)
	and a
	jr z,l8141
	ld hl,(l846a)
	ld (l845d),hl
	ld hl,(l846e)
	ld (l8461),hl
	ld a,(l8470)
	ld (l8463),a
	ld a,(l8464)
.l812c
	or #2d
	ld hl,l8471
	and (hl)
	ld (l8464),a
	ld a,(l8472)
	ld (l8465),a
	ld a,(l8474)
	ld (l8467),a
.l8141
	ld a,(l8637)
	ld hl,l8638
	or (hl)
	ret z
	ld hl,l8468
	ld d,#0b
.l814e
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
	jp p,l814e
	ret
.l816f
	ld de,#0d00
.l8172
	call l817c
	dec d
	jp p,l8172
	ld de,#073f
.l817c
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
.l8197
;
	xor a
	ld (l8637),a
	ld (l8638),a
	call l816f
	xor a
	ld (l8465),a
	ld (l8466),a
	ld (l8467),a
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
	jp l8197
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
	jr nz,l81e4
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l81e4
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l829d
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,l8429
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l829d
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,l8429
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l829d
	ld hl,l8429
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l829d
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l829d
	ld a,(de)
	inc de
	ld (l8380),a
	jr l829d
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l829d
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l829d
	ld (ix+#1d),b
	jr l829d
	ld (ix+#1d),#40
	jr l829d
	ld (ix+#1d),#c0
	jr l829d
	set 1,(ix+#00)
	jr l829d
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l82cc
	res 5,(ix+#00)
	jr l82cc
	ld (ix+#1f),#ff
	jr l829d
	ld (ix+#1f),b
	jr l829d
.l828f
	dec (ix+#10)
	jr nz,l82e7
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l829d
	ld a,(de)
	inc de
	and a
	jp m,l82f8
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l82af
	ld (l80c0),a
.l82af
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
.l82cc
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	ret z
	ld a,(l8638)
	and a
	ret nz
	ld (ix+#1f),#ff
	ret
.l82e7
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l82f4
	inc (ix+#12)
	ret
.l82f4
	dec (ix+#12)
	ret
.l82f8
	cp #b8
	jr c,l8345
	add #20
	jr c,l8326
	add #10
	jr c,l832d
	add #10
	jr nc,l831e
	ld c,a
	ld hl,l8536
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l829d
.l831e
	add #09
	ld (l80e1),a
	jp l829d
.l8326
	inc a
	ld (ix+#11),a
	jp l829d
.l832d
	ld hl,l857b
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
	jp l829d
.l8345
	ld hl,l812c
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l834d
	ld c,(ix+#00)
	bit 5,c
	jr z,l837f
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l8379
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l8379
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l8379
	ld a,(ix+#18)
	ld (ix+#13),a
.l8380 equ $ + 1
.l837f
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l8399
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l8399
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l8476
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l83fa
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l83c3
	bit 0,c
	jr nz,l83e1
.l83c3
	bit 5,l
	jr nz,l83d3
	sub (ix+#1b)
	jr nc,l83de
	set 5,(ix+#1d)
	sub a
	jr l83de
.l83d3
	add (ix+#1b)
	cp b
	jr c,l83de
	res 5,(ix+#1d)
	ld a,b
.l83de
	ld (ix+#1c),a
.l83e1
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l83ec
	dec d
.l83ec
	add #a0
	jr c,l83f8
.l83f0
	sla e
	rl d
	add #18
	jr nc,l83f0
.l83f8
	add hl,de
	ex de,hl
.l83fa
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l8425
	ld b,(ix+#0e)
	djnz l8422
	ld c,(ix+#0d)
	bit 7,c
	jr z,l8411
	dec b
.l8411
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l8425
.l8422
	ld (ix+#0e),b
.l8425
	cpl
	and #03
.l8429 equ $ + 1
	ld a,#38
	jr nz,l8436
	ld a,(l80c0)
	xor #08
	ld (l810d),a
	ld a,#07
.l8436
	ld hl,l8464
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l8458
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#20)
	and #38
	cpl
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l810d),a
.l8458
	ex de,hl
	ld a,(ix+#13)
	ret
.l8464 equ $ + 7
.l8463 equ $ + 6
.l8461 equ $ + 4
.l845f equ $ + 2
.l845d
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l846b equ $ + 6
.l846a equ $ + 5
.l8468 equ $ + 3
.l8467 equ $ + 2
.l8466 equ $ + 1
.l8465
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l8474 equ $ + 7
.l8472 equ $ + 5
.l8471 equ $ + 4
.l8470 equ $ + 3
.l846e equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l8476
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
.l8536
	db #0e,#0e,#0f,#12,#14,#15,#16,#17
	db #19,#1c,#2a,#2c,#2f,#35,#80,#18
	db #80,#24,#18,#0c,#80,#18,#0c,#80
	db #00,#98,#0c,#80,#18,#80,#00,#03
	db #87,#00,#03,#07,#8c,#0c,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#80,#00,#04,#8c,#0c
	db #00,#00,#80,#18,#00,#00,#00,#00
	db #00,#80,#04,#07,#8c
.l857b
	dw l8592,l85a5,l85b6
	dw l85c3,l85cd,l85e1,l85f2
	dw l85fc,l8612,l8624,l8627
.l8592 equ $ + 1
	db #00,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#08,#07,#06,#05,#04,#03,#02
	db #01,#00,#87
.l85a5 equ $ + 1
	db #01,#0f,#0e,#0d,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #87
.l85b6 equ $ + 1
	db #01,#0f,#0b,#0a,#07,#06,#05,#04
	db #03,#02,#01,#00,#87
.l85c3 equ $ + 1
	db #02,#0e,#0c,#0a,#08,#06,#04
	db #02,#00,#87
.l85cd equ $ + 1
	db #00,#0f,#0f,#0f,#0e,#0d,#0c,#0b
	db #09,#08,#07,#07,#07,#06,#05,#03
	db #02,#01,#00,#87
.l85e1 equ $ + 1
	db #01,#0e,#0d,#0a,#09,#08,#07,#00
	db #06,#00,#05,#04,#03,#02,#01,#00
	db #87
.l85f2 equ $ + 1
	db #00,#0e,#0d,#0c,#0b,#0a,#05,#03
	db #00,#87
.l85fc equ $ + 1
	db #00,#0f,#0f,#0f,#0e,#0d
	db #0b,#0a,#09,#08,#07,#06,#09,#08
	db #07,#06,#05,#04,#02,#01,#00,#87
.l8612 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #00,#87
.l8624 equ $ + 1
	db #00,#0c,#87
.l8627 equ $ + 1
	db #01,#0f,#0d,#0c,#0b,#0a,#09,#0b
	db #0a,#06,#05,#04,#03,#02,#01,#00
	db #87
.l8637
.music_end
	db #00
.l8638
	db #00

	ld hl,l8638
	ld (hl),#00
	ld hl,l8728
	add a
	add l
	ld l,a
	jr nc,l8647
	inc h
.l8647
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l87e6
.l864f
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l864f
	ld a,(l87e7)
	ld (l87f7),a
	ld hl,(l87e8)
	ld (l846a),hl
	ld de,(l87ea)
	ld (l846e),de
	ld a,l
	ld (l8470),a
	ld a,(l87ed)
	ld (l8471),a
	ld a,(l87ec)
	ld e,a
	ld d,#0c
	call l817c
	ld a,(l87f6)
	ld e,a
	ld d,#0d
	call l817c
	ld hl,l8638
	inc (hl)
	ret
.l868a
	call l87f9
	ld a,(l8638)
	and a
	ret z
	ld a,(l87e6)
	and a
	jr nz,l869e
	ld (l8638),a
	jp l816f
.l869e
	dec a
	ld (l87e6),a
	ld a,(l87f7)
	and a
	jr nz,l86d7
	ld a,(l87f4)
	and a
	ret z
	dec a
	ld (l87f4),a
	ld a,(l87e7)
	ld (l87f7),a
	ld a,(l87f5)
	and a
	jr z,l86c0
	ld a,(l8814)
.l86c0
	ld b,a
	ld a,(l87e8)
	add b
	ld (l846a),a
	ld a,(l87e9)
	add b
	and #0f
	ld (l846b),a
	ld hl,(l87ea)
	ld (l846e),hl
.l86d7
	ld hl,l87f7
	dec (hl)
	ld a,(l87f2)
	and a
	jr z,l86fe
	jp p,l86f1
	ld hl,(l846a)
	ld de,(l87ee)
	add hl,de
	ld (l846a),hl
	jr l86fe
.l86f1
	ld hl,(l846a)
	ld de,(l87ee)
	and a
	sbc hl,de
	ld (l846a),hl
.l86fe
	ld a,(l87f3)
	and a
	jr z,l8721
	jp p,l8714
	ld hl,(l846e)
	ld de,(l87f0)
	add hl,de
	ld (l846e),hl
	jr l8721
.l8714
	ld hl,(l846e)
	ld de,(l87f0)
	and a
	sbc hl,de
	ld (l846e),hl
.l8721
	ld a,(l846a)
	ld (l8470),a
	ret
.l8728
	dw l873c,l874d,l875e,l876f
	dw l8780,l8791,l87a2,l87b3
	dw l87c4,l87d5
.l873c
	db #04,#ff,#c0,#00,#a0,#00,#32,#f2
	db #25,#00,#29,#00,#ff,#ff,#01,#00
	db #00
.l874d
	db #03,#ff,#09,#00,#02,#01,#32,#f2
	db #20,#00,#28,#00,#ff,#01,#01,#00
	db #00
.l875e
	db #0a,#ff,#42,#00,#0a,#00,#0a,#f2
	db #22,#00,#40,#00,#ff,#ff,#ff,#00
	db #00
.l876f
	db #14,#ff,#09,#00,#02,#00,#0a,#f3
	db #00,#04,#00,#04,#01,#01,#ff,#00
	db #00
.l8780
	db #0a,#ff,#98,#00,#9a,#00,#32,#fa
	db #29,#00,#29,#00,#ff,#ff,#01,#00
	db #00
.l8791
	db #1e,#07,#c4,#00,#8b,#01,#0c,#f2
	db #78,#00,#78,#00,#ff,#ff,#0a,#00
	db #00
.l87a2
	db #3c,#0a,#14,#00,#0b,#07,#0c,#f2
	db #40,#00,#03,#00,#ff,#ff,#0a,#00
	db #00
.l87b3
	db #3c,#ff,#00,#02,#00,#02,#32,#fa
	db #08,#00,#09,#00,#01,#01,#02,#00
	db #00
.l87c4
	db #05,#ff,#09,#00,#02,#00,#0a,#f3
	db #08,#04,#00,#04,#01,#01,#ff,#00
	db #00
.l87d5
	db #03,#46,#80,#00,#80,#00,#14
	db #d2,#25,#00,#22,#00,#01,#ff
.l87ea equ $ + 7
.l87e9 equ $ + 6
.l87e8 equ $ + 5
.l87e7 equ $ + 4
.l87e6 equ $ + 3
	db #0a,#00,#00,#00,#00,#00,#00,#00
.l87f2 equ $ + 7
.l87f0 equ $ + 5
.l87ee equ $ + 3
.l87ed equ $ + 2
.l87ec equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l87f7 equ $ + 4
.l87f6 equ $ + 3
.l87f5 equ $ + 2
.l87f4 equ $ + 1
.l87f3
	db #00,#00,#00,#00,#00,#00
.l87f9
	ld a,(l8814)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l8817
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l8817 equ $ + 3
.l8814
	db #ff,#80,#1b,#34
.l8818
	db #03
	dw l882d,l8833,l8839
	db #05
	dw l883d,l8841,l8845
	db #07
	dw l8849,l8855,l887b
.l882d
	dw l88df,l8896,#0000
.l8833
	dw l88b4,l8896,#0000
.l8839
	dw l88ba,#0000
.l883d
	dw l88e6,#0000
.l8841
	dw l88fd,#0000
.l8845
	dw l8917,#0000
.l8849
	dw l8930,l8930,l89c2,l89e7
	dw l89e7,#0000
.l8855
	dw l8966,l8966,l8966,l8966
	dw l8966,l8966,l8966,l8966
	dw l8966,l8966,l8966,l8966
	dw l8966,l8966,l8966,l8966
	dw l8966,l8977,#0000
.l887b
	dw l894c,l894c,l894c,l894c
	dw l897e,l898f,l89a0,l89b1
	dw l897e,#0000

	db #ff,#80,#87
	db #ff,#80,#8f,#87
.l8896
	db #8a,#e3,#30,#e1,#2e,#e3,#30,#e1
	db #2e,#e3,#30,#e1,#2e,#e3,#30,#2e
	db #e1,#30,#2e,#3c,#3a,#37,#e5,#84
	db #01,#04,#33,#f5,#30,#8e
.l88b4
	db #e0,#80,#90,#d1,#c1,#87
.l88ba
	db #8a,#d0,#90,#c0,#88,#01,#01,#82
	db #e3,#24,#e1,#22,#e3,#24,#e1,#22
	db #e3,#24,#e1,#22,#e3,#24,#22,#e1
	db #24,#22,#30,#2e,#2b,#e5,#84,#01
	db #09,#27,#f5,#24,#87
.l88df
	db #c0,#d0,#88,#01,#01,#82,#87
.l88e6
	db #8a,#d1,#c2,#90,#81,#e1,#24,#27
	db #29,#27,#29,#2b,#29,#2b,#2e,#2b
	db #2e,#30,#2e,#30,#33,#30,#8e
.l88fd
	db #8b,#d3,#c1,#91,#e0,#27,#27,#27
	db #27,#e3,#3f,#e7,#80,#e0,#27,#27
	db #27,#27,#e3,#3f,#e1,#27,#e3,#3f
	db #3f,#8e
.l8917
	db #8a,#88,#01,#01,#c1,#90,#d2,#e1
	db #18,#18,#24,#24,#18,#18,#24,#24
	db #18,#18,#24,#24,#18,#18,#24,#24
	db #8e
.l8930
	db #8a,#c3,#81,#d4,#90,#e1,#30,#e0
	db #2b,#e4,#2e,#e1,#2d,#e0,#29,#e4
	db #2b,#e1,#30,#e0,#2b,#e1,#2e,#35
	db #34,#e6,#30,#87
.l894c
	db #8a,#88,#01,#01,#82,#c4,#d6,#90
	db #e0,#18,#18,#24,#24,#18,#18,#18
	db #24,#18,#24,#24,#18,#18,#24,#18
	db #18,#87
.l8966
	db #8c,#d5,#c0,#81,#c1,#e1,#3c,#d8
	db #24,#e0,#d5,#3c,#3c,#e1,#d8,#24
	db #87
.l8977
	db #e1,#d8,#29,#28,#27,#26,#87
.l897e
	db #1f,#1f,#2b,#2b,#1f,#1f,#1f,#2b
	db #1f,#2b,#2b,#1f,#1f,#2b,#1f,#1f
	db #87
.l898f
	db #1d,#1d,#29,#29,#1d,#1d,#1d,#29
	db #1d,#29,#29,#1d,#1d,#29,#1d,#1d
	db #87
.l89a0
	db #1b,#1b,#27,#27,#1b,#1b,#1b,#27
	db #1b,#27,#27,#1b,#1b,#27,#1b,#1b
	db #87
.l89b1
	db #1a,#1a,#26,#26,#1a,#1a,#1a,#26
	db #1a,#26,#26,#1a,#1a,#26,#1a,#1a
	db #87
.l89c2
	db #81,#d7,#c1,#e0,#34,#34,#34,#e1
	db #34,#35,#37,#e6,#37,#e0,#39,#39
	db #39,#e1,#39,#35,#35,#e6,#30,#e0
	db #33,#33,#33,#e1,#33,#35,#37,#e2
	db #37,#e1,#35,#33,#87
.l89e7
	db #c3,#d3,#e0,#32,#35,#37,#32,#35
	db #37,#32,#35,#37,#32,#35,#37,#32
	db #35,#37,#35,#87
;
.music_info
	db "Typhoon (1988)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
