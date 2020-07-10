; Music of Pro Golf Simulator (1990)(Codemasters Software)(Lyndon Sharp)()
; Ripped by Megachur the 18/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PROGOLFS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #71c4
FIRST_THEME				equ 1
LAST_THEME				equ 3

	read "music_header.asm"

.l71c7 equ $ + 3
.l71c6 equ $ + 2
.l71c5 equ $ + 1
.l71c4
	db #01	; init
	db #00	; theme number
	db #00,#00
	jp l7241
.l71cb
	ld iy,l77b3
	add a
	ld b,a
	add a
	add b
	ld d,#00
	ld e,a
	add iy,de
	ld a,#01
	ld (l74df),a
	ld (l74e0),a
	ld hl,l74f7
	ld de,l74f8
	ld bc,#0059
	ld (hl),#00
	ldir
	ld b,#03
	ld ix,l74f7
.l71f3
	ld l,(iy+#00)
	ld h,(iy+#01)
	inc iy
	inc iy
	ld (ix+#00),l
	ld (ix+#01),h
	ld c,#01
.l7205
	ld a,(hl)
	inc hl
	or a
	jp p,l7215
	sub #28
	and #7f
	ld (ix+#11),a
	inc c
	jr l7205
.l7215
	and #7f
	add a
	ld d,#00
	ld e,a
	ld hl,l77c5
	add hl,de
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	ld (ix+#02),c
	ld de,#001e
	add ix,de
	djnz l71f3
	ret
.l7233
	ld hl,#0000
	xor a
	ld (l74ea),hl
	ld (l74e9),a
	ld (l71c5),a
	ret
;
.play_music
.l7241
;
	ld a,(l71c4)
	or a
	jr z,l725f
	jp m,l7257
;
.init_music
;
	ld (l71c5),a
	dec a
	call l71cb
	xor a
	ld (l71c4),a
	jr l725f
.l7257
	call l7233
	ld (l71c4),a
	jr l72b9
.l725f
	ld a,(l71c5)
	or a
	jr z,l72b9
	ld a,(l74df)
	dec a
	ld (l74df),a
	jp p,l728a
	ld ix,l74f7
	call l72ed
	ld ix,l7515
	call l72ed
	ld ix,l7533
	call l72ed
	ld a,(l74e0)
	ld (l74df),a
.l728a
	ld ix,l74f7
	call l7414
	ld (l74e1),hl
	ld a,b
	ld (l74e9),a
	ld ix,l7515
	call l7414
	ld (l74e3),hl
	ld a,b
	ld (l74ea),a
	ld ix,l7533
	call l7414
	ld (l74e5),hl
	ld a,b
	ld (l74eb),a
	ld a,#38
	ld (l74e8),a
.l72b9
	call l79f8
	ld b,#0b
	ld hl,l74ec
	ld de,l74e1
	ld c,#00
.l72c6
	ld a,(de)
	cp (hl)
	jr z,l72e7
	ld (hl),a
	push bc
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	ld a,(hl)
	out (c),a
	ld b,#f6
	xor a
	out (c),a
	pop bc
.l72e7
	inc c
	inc hl
	inc de
	djnz l72c6
	ret
.l72ed
	dec (ix+#09)
	ret p
.l72f1
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	push hl
	pop iy
	ld a,(iy+#00)
	inc iy
	cp #ff
	jr nz,l735d
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld d,#00
	ld e,(ix+#02)
	add hl,de
	inc (ix+#02)
	ld a,(hl)
	inc hl
	cp #fe
	jr nz,l731f
	pop hl
	call l7233
	jp l72b9
.l731f
	cp #ff
	jr nz,l733c
	ld (ix+#02),#01
	ld l,(ix+#00)
	ld h,(ix+#01)
	bit 7,(hl)
	jr z,l733b
	ld a,(hl)
	inc hl
	sub #a8
	ld (ix+#11),a
	inc (ix+#02)
.l733b
	ld a,(hl)
.l733c
	bit 7,a
	jr z,l734a
	sub #a8
	ld (ix+#11),a
	ld a,(hl)
	inc hl
	inc (ix+#02)
.l734a
	add a
	ld hl,l77c5
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	jr l72f1
.l735d
	cp #c0
	jr c,l73bd
	and #1f
	add a
	ld hl,l7682
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld b,(hl)
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#17),a
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1c),a
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ld (ix+#12),l
	ld (ix+#13),h
	ld a,b
	add a
	ld d,#00
	ld e,a
	ld hl,l7613
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	ld (ix+#10),a
	ld (ix+#14),a
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#0e),l
	ld (ix+#0f),h
	ld a,(iy+#00)
	inc iy
.l73bd
	cp #80
	jr c,l73d3
	and #3f
	ld (ix+#09),a
	ld (ix+#1b),a
	ld a,(iy+#00)
	ld (ix+#15),a
	inc iy
	jr l73dc
.l73d3
	ld (ix+#15),a
	ld a,(ix+#1b)
	ld (ix+#09),a
.l73dc
	set 6,(ix+#1a)
	push iy
	pop hl
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld a,(ix+#07)
	ld (ix+#06),a
	ld a,(ix+#14)
	ld (ix+#10),a
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	ld a,(ix+#12)
	ld (ix+#04),a
	ld a,(ix+#13)
	ld (ix+#05),a
	ld a,(ix+#1c)
	ld (ix+#1d),a
	ret
.l7414
	dec (ix+#10)
	jr nz,l743f
	ld a,(ix+#14)
	ld (ix+#10),a
.l741f
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	inc (ix+#0e)
	jr nz,l742d
	inc (ix+#0f)
.l742d
	ld a,(hl)
	inc a
	jr nz,l7445
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	jr l741f
.l743f
	ld l,(ix+#0e)
	ld h,(ix+#0f)
.l7445
	ld a,(hl)
	add (ix+#15)
	add (ix+#11)
	sub #24
	jp p,l7452
	xor a
.l7452
	ld hl,l7551
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld c,#00
	ld b,(ix+#1a)
	bit 6,b
	jr z,l74ae
	ld d,(ix+#17)
	ld e,(ix+#19)
	bit 7,b
	jr nz,l7475
	bit 0,b
	jr z,l74a3
.l7475
	ld a,(ix+#1d)
	or a
	jr z,l7480
	dec (ix+#1d)
	jr l74b6
.l7480
	bit 5,b
	jr nz,l7493
	ld a,e
	sub (ix+#18)
	ld e,a
	jr nc,l74a0
	set 5,(ix+#1a)
	ld e,#00
	jr l74a0
.l7493
	ld a,e
	add (ix+#18)
	ld e,a
	cp d
	jr c,l74a0
	res 5,(ix+#1a)
	ld e,d
.l74a0
	ld (ix+#19),e
.l74a3
	srl d
	ld a,e
	sub d
	ld e,a
	ld d,#00
	jr nc,l74ad
	dec d
.l74ad
	add hl,de
.l74ae
	ld a,(ix+#1a)
	xor #01
	ld (ix+#1a),a
.l74b6
	ld e,(ix+#04)
	ld d,(ix+#05)
	push de
	pop iy
	dec (ix+#06)
	jr nz,l74db
	ld a,(ix+#07)
	ld (ix+#06),a
	ld a,(iy+#01)
	inc a
	jr z,l74db
	inc iy
	push iy
	pop de
	ld (ix+#04),e
	ld (ix+#05),d
.l74db
	ld b,(iy+#00)
	ret
.l74e5 equ $ + 6
.l74e3 equ $ + 4
.l74e1 equ $ + 2
.l74e0 equ $ + 1
.l74df
	db #00,#00,#00,#00,#00,#00,#00,#00
.l74ec equ $ + 5
.l74eb equ $ + 4
.l74ea equ $ + 3
.l74e9 equ $ + 2
.l74e8 equ $ + 1
.l74e7
	db #00,#38,#00,#00,#00,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
.l74f8 equ $ + 1
.l74f7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7515 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7533 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7551 equ $ + 2
	db #00,#00,#00,#00
	dw #0e29,#0d5d,#0c9c,#0be7
	dw #0b3c,#0a9b,#0a02,#0973
	dw #08eb,#086b,#07f2,#0780
	dw #0714,#06ae,#064e,#05f4
	dw #059e,#054d,#0501,#04b9
	dw #0475,#0435,#03f9,#03c0
	dw #038a,#0357,#0327,#02fa
	dw #02cf,#02a7,#0281,#025d
	dw #023b,#021b,#01fc,#01e0
	dw #01c5,#01ac,#0194,#017d
	dw #0168,#0153,#0140,#012e
	dw #011d,#010d,#00fe,#00f0
	dw #00e2,#00d6,#00ca,#00be
	dw #00b4,#00aa,#00a0,#0097
	dw #008f,#0087,#007f,#0078
	dw #0071,#006b,#0065,#005f
	dw #005a,#0055,#0050,#004c
	dw #0047,#0043,#0040,#003c
	dw #0039,#0035,#0032,#0030
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010,#000f
.l7613
	dw l762d,l7633,l7640,l7646
	dw l764c,l7652,l7658,l765e
	dw l7664,l7668,l766e,l7676
	dw l767c
.l7633 equ $ + 6
.l762d
	db #01,#00,#00,#00,#00,#ff,#01,#14
	db #12,#10,#04,#0c,#0a,#08,#06,#04
.l7640 equ $ + 3
	db #02,#00,#ff,#01,#00,#05,#09,#0c
.l764c equ $ + 7
.l7646 equ $ + 1
	db #ff,#01,#00,#04,#07,#0c,#ff,#02
.l7652 equ $ + 5
	db #00,#04,#07,#0c,#ff,#01,#00,#04
.l7658 equ $ + 3
	db #07,#0c,#ff,#02,#00,#03,#08,#0c
.l7664 equ $ + 7
.l765e equ $ + 1
	db #ff,#01,#00,#05,#09,#0c,#ff,#01
.l7668 equ $ + 3
	db #00,#0c,#ff,#01,#00,#05,#08,#0c
.l766e equ $ + 1
	db #ff,#01,#0c,#07,#18,#00,#0c,#07
.l767c equ $ + 7
.l7676 equ $ + 1
	db #ff,#01,#00,#04,#07,#0c,#ff,#01
	db #00,#00,#00,#00,#ff
.l7682
	dw l76a4,l76ab,l76bd,l76d0
	dw l76e3,l76f3,l7703,l7716
	dw l7729,l773a,l7747,l7755
	dw l775f,l776c,l777d,l7796
	dw l77a7
.l76ab equ $ + 7
.l76a4
	db #00,#04,#00,#00,#00,#00,#ff,#01
	db #01,#00,#00,#00,#0f,#0f,#0f,#0e
	db #0e,#0c,#0b,#09,#07,#05,#03,#01
.l76bd equ $ + 1
	db #ff,#02,#01,#00,#00,#00,#0e,#0f
	db #0f,#0f,#0e,#0e,#0c,#0b,#09,#07
.l76d0 equ $ + 4
	db #05,#03,#01,#ff,#03,#01,#00,#00
	db #00,#0e,#0f,#0f,#0f,#0e,#0e,#0c
.l76e3 equ $ + 7
	db #0b,#09,#07,#05,#03,#01,#ff,#00
	db #02,#08,#08,#06,#0f,#0f,#0e,#0e
.l76f3 equ $ + 7
	db #0d,#0c,#0b,#0a,#09,#08,#ff,#08
	db #02,#08,#08,#08,#0f,#0f,#0e,#0e
.l7703 equ $ + 7
	db #0d,#0c,#0b,#0a,#09,#08,#ff,#00
	db #01,#00,#00,#00,#0f,#0f,#0e,#0f
	db #0f,#0e,#0e,#0d,#0c,#0b,#0a,#09
.l7716 equ $ + 2
	db #08,#ff,#00,#03,#04,#04,#04,#0f
	db #0f,#0e,#0f,#0f,#0e,#0e,#0d,#0c
.l7729 equ $ + 5
	db #0b,#0a,#09,#08,#ff,#00,#03,#09
	db #10,#14,#0f,#0e,#0d,#0c,#0b,#0a
.l773a equ $ + 6
	db #09,#08,#07,#06,#05,#ff,#00,#04
	db #08,#08,#08,#0f,#0e,#0d,#0c,#0d
.l7747 equ $ + 3
	db #0e,#0f,#ff,#04,#02,#04,#1e,#fd
	db #0e,#0f,#0e,#0d,#0c,#0d,#0e,#0f
.l7755 equ $ + 1
	db #ff,#09,#04,#00,#00,#00,#0e,#0c
.l775f equ $ + 3
	db #09,#08,#ff,#06,#03,#00,#00,#00
	db #0f,#0f,#0e,#0c,#0c,#0b,#0a,#ff
.l776c
	db #0b,#03,#08,#10,#10,#0e,#0f,#0f
	db #0e,#0e,#0d,#0c,#0b,#0a,#09,#08
.l777d equ $ + 1
	db #ff,#0c,#08,#1c,#02,#01,#01,#03
	db #04,#06,#08,#0a,#0c,#0e,#0f,#0f
	db #0f,#0e,#0c,#0a,#08,#06,#04,#03
.l7796 equ $ + 2
	db #01,#ff,#0c,#0a,#04,#08,#40,#0e
	db #0f,#0f,#0e,#0e,#0d,#0c,#0b,#0a
.l77a7 equ $ + 3
	db #09,#08,#ff,#00,#04,#09,#10,#14
	db #0f,#0f,#0e,#0d,#0c,#0b,#ff
.l77b3
	dw l77df,l77ec,l77f5,l77f8
	dw l77fc,l77ff
.l77c5 equ $ + 6
	dw l7802,l7806,l7809,l780c
	dw l7814,l7828,l7834,l7840
	dw l78d7,l78fa,l787d,l7888
	dw l7895,l789f,l791d,l7810
.l77df
	db #c0,#01,#02,#01,#03,#c2,#04,#07
.l77ec equ $ + 5
	db #08,#07,#09,#0a,#ff,#ce,#05,#05
.l77f5 equ $ + 6
	db #06,#06,#06,#06,#06,#ff,#c2,#0b
.l77fc equ $ + 5
.l77f8 equ $ + 1
	db #ff,#c0,#01,#03,#fe,#c2,#05,#ff
.l7806 equ $ + 7
.l7802 equ $ + 3
.l77ff
	db #c0,#0b,#ff,#c2,#07,#09,#fe,#c2
.l780c equ $ + 5
.l7809 equ $ + 2
	db #06,#ff,#c0,#0b,#ff,#c0,#bf,#00
.l7814 equ $ + 5
.l7810 equ $ + 1
	db #ff,#c0,#86,#00,#ff,#c5,#83,#32
	db #32,#34,#87,#35,#83,#35,#37,#87
	db #39,#83,#39,#3c,#8f,#3e,#83,#39
.l7828 equ $ + 1
	db #ff,#c5,#83,#41,#39,#40,#39,#3e
.l7834 equ $ + 5
	db #39,#3c,#a2,#39,#ff,#c5,#83,#41
	db #39,#40,#39,#3e,#39,#3c,#a3,#3e
.l7840 equ $ + 1
	db #ff,#c4,#83,#37,#3c,#3f,#37,#3c
	db #3f,#37,#3c,#38,#3c,#3f,#38,#3c
	db #3f,#38,#3c,#37,#3b,#3e,#37,#3b
	db #3e,#37,#3b,#37,#3c,#3f,#37,#3c
	db #3f,#37,#3c,#37,#3c,#3f,#37,#3c
	db #3f,#37,#3c,#38,#3c,#3f,#38,#3c
	db #3f,#38,#3c,#37,#3b,#3e,#37,#3b
.l787d equ $ + 6
	db #3e,#37,#3b,#a0,#3c,#ff,#c9,#8b
	db #43,#3c,#83,#41,#43,#8b,#44,#3c
.l7888 equ $ + 1
	db #ff,#88,#44,#8b,#3b,#3e,#87,#43
.l7895 equ $ + 6
	db #8a,#3f,#3e,#88,#3c,#ff,#88,#44
	db #8a,#3b,#3e,#87,#3b,#a0,#3c,#ff
.l789f
	db #c5,#81,#48,#46,#43,#41,#43,#41
	db #3f,#3c,#3f,#3c,#3a,#37,#3a,#37
	db #35,#33,#35,#33,#30,#2e,#30,#2e
	db #2b,#29,#2b,#29,#27,#24,#27,#24
	db #22,#1f,#22,#1f,#1d,#1b,#1d,#1b
	db #18,#16,#18,#16,#15,#13,#15,#13
	db #11,#0e,#11,#0e,#0e,#99,#0c,#ff
.l78d7
	db #c8,#83,#18,#18,#24,#18,#16,#16
	db #22,#16,#13,#13,#1f,#18,#18,#24
	db #18,#18,#1b,#1b,#27,#1b,#1d,#1d
	db #29,#1d,#18,#18,#24,#18,#18,#24
.l78fa equ $ + 3
	db #22,#24,#ff,#c8,#83,#18,#18,#24
	db #18,#18,#24,#18,#18,#1d,#1d,#29
	db #1d,#1d,#29,#1d,#1d,#1f,#1f,#2b
	db #1f,#1f,#2b,#1f,#1f,#18,#18,#24
.l791d equ $ + 6
	db #18,#18,#24,#18,#18,#ff,#c1,#83
	db #1a,#00,#1e,#00,#1a,#00,#20,#00
	db #1a,#00,#1e,#00,#1a,#20,#00,#20
	db #1a,#00,#1e,#00,#1a,#00,#20,#00
	db #1a,#00,#1e,#00,#20,#20,#20,#20
	db #ff
.l7940
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#09,#00,#00,#00
	db #00,#01,#01,#01,#01,#01,#01
.l7957
	dw l7999,l79a3,l7963,l7977
	dw l798f,l79b3
.l7963
	db #01,#05,#07,#0a,#04,#01,#01,#02
	db #14,#05,#fe,#02,#07,#0a,#04,#ff
.l7977 equ $ + 4
	db #01,#07,#0a,#06,#08,#0f,#00,#0a
	db #14,#04,#ff,#02,#07,#08,#08,#02
	db #00,#00,#28,#07,#01,#00,#00,#32
.l798f equ $ + 4
	db #07,#01,#09,#06,#01,#0f,#02,#05
.l7999 equ $ + 6
	db #05,#20,#01,#07,#0a,#06,#01,#0f
	db #04,#64,#0a,#02,#ff,#07,#01,#06
.l79a3
	db #08,#0a,#00,#01,#23,#04,#01,#01
	db #07,#03,#04,#ff,#01,#07,#0f,#06
.l79b3
	db #08,#0f,#00,#00,#64,#07,#14,#03
	db #ff,#ff,#01,#04,#ff,#03,#07,#0f
	db #06
.l79c4
	push ix
	pop hl
	ld d,h
	ld e,l
	inc de
	ld (hl),#00
	ld bc,#0016
	ldir
	add a
	ld d,#00
	ld e,a
	ld hl,l7957
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#02),l
	ld (ix+#03),h
	ld (ix+#07),#01
	ret
.l79f8
	ld ix,l7940
	ld a,(l71c6)
	or a
	jr z,l7a0d
	dec a
	ld (l71c7),a
	call l79c4
	xor a
	ld (l71c6),a
.l7a0d
	ld a,(ix+#0c)
	cp #09
	ret z
	call l7a40
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld (l74e3),hl
	ld a,(ix+#0a)
	ld (l74ea),a
	bit 3,(ix+#0c)
	jr nz,l7a31
	ld a,(ix+#0b)
	ld (l74e7),a
.l7a31
	ld a,(ix+#0c)
	add a
	ld b,a
	ld a,(l74e8)
	and #ed
	or b
	ld (l74e8),a
	ret
.l7a40
	dec (ix+#07)
	jp nz,l7ae0
	ld l,(ix+#02)
	ld h,(ix+#03)
.l7a4c
	ld a,(hl)
	inc hl
	ld b,(hl)
	inc hl
	or a
	jr z,l7a9a
	dec a
	jr z,l7aa4
	dec a
	jr z,l7aa9
	dec a
	jr z,l7aae
	dec a
	jr z,l7abf
	dec a
	jr z,l7acb
	dec a
	jr z,l7ad7
	dec a
	jr z,l7a86
	dec a
	jr z,l7a7b
	dec (ix+#06)
	jr z,l7a78
	ld l,(ix+#04)
	ld h,(ix+#05)
	jr l7a4c
.l7a78
	dec hl
	jr l7a4c
.l7a7b
	ld (ix+#04),l
	ld (ix+#05),h
	ld (ix+#06),b
	jr l7a92
.l7a86
	ld (ix+#07),b
	ld (ix+#02),l
	ld (ix+#03),h
	jr l7ae0
.l7a91
	inc hl
.l7a92
	ld (ix+#02),l
	ld (ix+#03),h
	jr l7a4c
.l7a9a
	ld (ix+#09),b
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	jr l7a92
.l7aa4
	ld (ix+#0a),b
	jr l7a92
.l7aa9
	ld (ix+#0b),b
	jr l7a92
.l7aae
	ld (ix+#0e),b
	ld a,(hl)
	ld (ix+#0d),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	ld (ix+#12),a
	jr l7a91
.l7abf
	ld (ix+#0f),b
	ld a,(hl)
	ld (ix+#13),a
	ld (ix+#14),a
	jr l7a91
.l7acb
	ld (ix+#10),b
	ld a,(hl)
	ld (ix+#15),a
	ld (ix+#16),a
	jr l7a91
.l7ad7
	ld (ix+#0c),#09
	xor a
	ld (l71c7),a
	ret
.l7ae0
	dec (ix+#11)
	jr nz,l7afe
	ld a,(ix+#12)
	ld (ix+#11),a
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld e,(ix+#0d)
	ld d,(ix+#0e)
	add hl,de
	ld (ix+#08),l
	ld (ix+#09),h
.l7afe
	dec (ix+#13)
	jr nz,l7b1c
	ld a,(ix+#14)
	ld (ix+#13),a
	ld a,(ix+#0a)
	add (ix+#0f)
	jp p,l7b13
	xor a
.l7b13
	cp #10
	jr c,l7b19
	ld a,#0f
.l7b19
	ld (ix+#0a),a
.l7b1c
	dec (ix+#15)
	jr nz,l7b30
	ld a,(ix+#16)
	ld (ix+#15),a
	ld a,(ix+#0b)
	add (ix+#10)
	ld (ix+#0b),a
.l7b30
	ret
	pop hl
	ei
	ret
;
.music_info
	db "Pro Golf Simulator (1990)(Codemasters Software)(Lyndon Sharp)",0
	db "",0

	read "music_end.asm"
