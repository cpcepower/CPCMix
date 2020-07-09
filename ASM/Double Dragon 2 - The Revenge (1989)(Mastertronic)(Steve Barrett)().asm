; Music of Double Dragon 2 - The Revenge (1989)(Mastertronic)(Steve Barrett)()
; Ripped by Megachur the 13/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DOUBD2TR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 13
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #5e00
FIRST_THEME				equ 1
LAST_THEME				equ 3

	read "music_header.asm"

.l5e00
	db #00	; theme number = 1 (main theme),etc.
.music_end
.l5e01
	db #00
.l5e02
	db #00
.l5e03
	db #00

	jp l5ee8

	db #20,#44,#6f,#75,#62,#6c,#65,#20
	db #44,#72,#61,#67,#6f,#6e,#20,#32
	db #20,#6d,#75,#73,#69,#63,#20,#62
	db #79,#20,#53,#74,#65,#76,#65,#20
	db #42,#61,#72,#72,#65,#74,#74,#2e
	db #20,#5a,#38,#30,#20,#4d,#75,#73
	db #69,#63,#20,#26,#20,#46,#58,#20
	db #70,#72,#6f,#67,#72,#61,#6d,#6d
	db #69,#6e,#67,#20,#62,#79,#20,#52
	db #44,#41,#20,#28,#43,#29,#20,#31
	db #39,#39,#30,#20,#43,#72,#65,#61
	db #74,#69,#76,#65,#20,#4d,#61,#74
	db #65,#72,#69,#61,#6c,#73,#20,#4c
	db #74,#64,#20
.l5e72
	ld iy,l6421
	add a
	ld b,a
	add a
	add b
	ld d,#00
	ld e,a
	add iy,de
	ld a,#03
	ld (l6186),a
	ld (l6187),a
	ld hl,l619e
	ld de,l619f
	ld bc,#0059
	ld (hl),#00
	ldir
	ld b,#03
	ld ix,l619e
.l5e9a
	ld l,(iy+#00)
	ld h,(iy+#01)
	inc iy
	inc iy
	ld (ix+#00),l
	ld (ix+#01),h
	ld c,#01
.l5eac
	ld a,(hl)
	inc hl
	or a
	jp p,l5ebc
	sub #28
	and #7f
	ld (ix+#11),a
	inc c
	jr l5eac
.l5ebc
	and #7f
	add a
	ld d,#00
	ld e,a
	ld hl,l6433
	add hl,de
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	ld (ix+#02),c
	ld de,#001e
	add ix,de
	djnz l5e9a
	ret
;
.stop_music
.l5eda
;
	ld hl,#0000
	xor a
	ld (l6191),hl
	ld (l6190),a
	ld (l5e01),a
	ret
;
.play_music
;
.l5ee8
	ld a,(l5e00)
	or a
	jr z,l5f06
	jp m,l5efe
;
.init_music	; theme 1->3
;
	ld (l5e01),a
	dec a
	call l5e72
	xor a
	ld (l5e00),a
	jr l5f06
.l5efe
	call l5eda
	ld (l5e00),a
	jr l5f60
.l5f06
	ld a,(l5e01)
	or a
	jr z,l5f60
	ld a,(l6186)
	dec a
	ld (l6186),a
	jp p,l5f31
	ld ix,l619e
	call l5f94
	ld ix,l61bc
	call l5f94
	ld ix,l61da
	call l5f94
	ld a,(l6187)
	ld (l6186),a
.l5f31
	ld ix,l619e
	call l60bb
	ld (l6188),hl
	ld a,b
	ld (l6190),a
	ld ix,l61bc
	call l60bb
	ld (l618a),hl
	ld a,b
	ld (l6191),a
	ld ix,l61da
	call l60bb
	ld (l618c),hl
	ld a,b
	ld (l6192),a
	ld a,#38
	ld (l618f),a
.l5f60
	call l6a27
	ld b,#0b
	ld hl,l6193
	ld de,l6188
	ld c,#00
.l5f6d
	ld a,(de)
	cp (hl)
	jr z,l5f8e
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
.l5f8e
	inc c
	inc hl
	inc de
	djnz l5f6d
	ret
.l5f94
	dec (ix+#09)
	ret p
.l5f98
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	push hl
	pop iy
	ld a,(iy+#00)
	inc iy
	cp #ff
	jr nz,l6004
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld d,#00
	ld e,(ix+#02)
	add hl,de
	inc (ix+#02)
	ld a,(hl)
	inc hl
	cp #fe
	jr nz,l5fc6
	pop hl
	call l5eda
	jp l5f60
.l5fc6
	cp #ff
	jr nz,l5fe3
	ld (ix+#02),#01
	ld l,(ix+#00)
	ld h,(ix+#01)
	bit 7,(hl)
	jr z,l5fe2
	ld a,(hl)
	inc hl
	sub #a8
	ld (ix+#11),a
	inc (ix+#02)
.l5fe2
	ld a,(hl)
.l5fe3
	bit 7,a
	jr z,l5ff1
	sub #a8
	ld (ix+#11),a
	ld a,(hl)
	inc hl
	inc (ix+#02)
.l5ff1
	add a
	ld hl,l6433
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	jr l5f98
.l6004
	cp #c0
	jr c,l6064
	and #1f
	add a
	ld hl,l633f
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
	ld hl,l62ba
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
.l6064
	cp #80
	jr c,l607a
	and #3f
	ld (ix+#09),a
	ld (ix+#1b),a
	ld a,(iy+#00)
	ld (ix+#15),a
	inc iy
	jr l6083
.l607a
	ld (ix+#15),a
	ld a,(ix+#1b)
	ld (ix+#09),a
.l6083
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
.l60bb
	dec (ix+#10)
	jr nz,l60e6
	ld a,(ix+#14)
	ld (ix+#10),a
.l60c6
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	inc (ix+#0e)
	jr nz,l60d4
	inc (ix+#0f)
.l60d4
	ld a,(hl)
	inc a
	jr nz,l60ec
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	jr l60c6
.l60e6
	ld l,(ix+#0e)
	ld h,(ix+#0f)
.l60ec
	ld a,(hl)
	add (ix+#15)
	add (ix+#11)
	sub #24
	jp p,l60f9
	xor a
.l60f9
	ld hl,l61f8
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
	jr z,l6155
	ld d,(ix+#17)
	ld e,(ix+#19)
	bit 7,b
	jr nz,l611c
	bit 0,b
	jr z,l614a
.l611c
	ld a,(ix+#1d)
	or a
	jr z,l6127
	dec (ix+#1d)
	jr l615d
.l6127
	bit 5,b
	jr nz,l613a
	ld a,e
	sub (ix+#18)
	ld e,a
	jr nc,l6147
	set 5,(ix+#1a)
	ld e,#00
	jr l6147
.l613a
	ld a,e
	add (ix+#18)
	ld e,a
	cp d
	jr c,l6147
	res 5,(ix+#1a)
	ld e,d
.l6147
	ld (ix+#19),e
.l614a
	srl d
	ld a,e
	sub d
	ld e,a
	ld d,#00
	jr nc,l6154
	dec d
.l6154
	add hl,de
.l6155
	ld a,(ix+#1a)
	xor #01
	ld (ix+#1a),a
.l615d
	ld e,(ix+#04)
	ld d,(ix+#05)
	push de
	pop iy
	dec (ix+#06)
	jr nz,l6182
	ld a,(ix+#07)
	ld (ix+#06),a
	ld a,(iy+#01)
	inc a
	jr z,l6182
	inc iy
	push iy
	pop de
	ld (ix+#04),e
	ld (ix+#05),d
.l6182
	ld b,(iy+#00)
	ret
.l618c equ $ + 6
.l618a equ $ + 4
.l6188 equ $ + 2
.l6187 equ $ + 1
.l6186
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6193 equ $ + 5
.l6192 equ $ + 4
.l6191 equ $ + 3
.l6190 equ $ + 2
.l618f equ $ + 1
.l618e
	db #00,#38,#00,#00,#00,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
.l619f equ $ + 1
.l619e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l61bc equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l61da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l61f8 equ $ + 2
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
.l62ba
	dw l62d6,l62dc,l62ea,l62f0
	dw l62f6,l62fc,l6303,l630c
	dw l6315,l631d,l6323,l632b
	dw l6331,l6339
.l62dc equ $ + 6
.l62d6
	db #01,#00,#00,#00,#00,#ff,#01,#0c
	db #00,#00,#00,#00,#07,#00,#00,#00
.l62ea equ $ + 4
	db #00,#00,#00,#ff,#01,#0c,#16,#0f
.l62f0 equ $ + 2
	db #18,#ff,#01,#0c,#15,#11,#18,#ff
.l62fc equ $ + 6
.l62f6
	db #01,#0c,#14,#0f,#18,#ff,#01,#0c
.l6303 equ $ + 5
	db #15,#0f,#0f,#18,#ff,#01,#18,#0c
.l630c equ $ + 6
	db #00,#00,#00,#00,#00,#ff,#01,#0c
.l6315 equ $ + 7
	db #00,#00,#0c,#00,#00,#00,#ff,#01
.l631d equ $ + 7
	db #0c,#00,#0c,#00,#00,#0c,#ff,#01
.l6323 equ $ + 5
	db #00,#05,#08,#0c,#ff,#01,#0c,#07
.l632b equ $ + 5
	db #18,#00,#0c,#07,#ff,#01,#00,#04
.l6331 equ $ + 3
	db #07,#0c,#ff,#01,#0c,#07,#03,#00
.l6339 equ $ + 3
	db #0c,#07,#ff,#01,#00,#05,#09,#0c
	db #ff
.l633f
	dw l6361,l6368,l6371,l6379
	dw l6381,l6389,l6391,l63a6
	dw l63b4,l63c0,l63c9,l63d5
	dw l63df,l63ec,l63f6,l640b
	dw l6415
.l6368 equ $ + 7
.l6361
	db #00,#04,#00,#00,#00,#00,#ff,#01
	db #04,#00,#00,#00,#0f,#0e,#0c,#ff
.l6371
	db #02,#04,#00,#00,#00,#0b,#07,#ff
.l6379
	db #03,#04,#00,#00,#00,#0b,#07,#ff
.l6381
	db #04,#04,#00,#00,#00,#0c,#07,#ff
.l6389
	db #05,#04,#00,#00,#00,#0c,#07,#ff
.l6391
	db #00,#06,#09,#10,#07,#0e,#0e,#0d
	db #0d,#0c,#09,#09,#08,#07,#06,#05
.l63a6 equ $ + 5
	db #04,#03,#02,#01,#ff,#00,#0f,#09
	db #10,#15,#0e,#0e,#0d,#0d,#0d,#0c
.l63b4 equ $ + 3
	db #0b,#0a,#ff,#07,#04,#09,#10,#14
.l63c0 equ $ + 7
	db #0f,#0f,#0e,#0d,#0c,#0b,#ff,#08
	db #04,#00,#00,#00,#0f,#0e,#0c,#ff
.l63c9
	db #0a,#04,#00,#00,#00,#0f,#0f,#0e
.l63d5 equ $ + 4
	db #0d,#09,#08,#ff,#09,#04,#00,#00
.l63df equ $ + 6
	db #00,#0e,#0c,#09,#08,#ff,#06,#03
	db #00,#00,#00,#0f,#0f,#0e,#0c,#0c
.l63ec equ $ + 3
	db #0b,#0a,#ff,#0b,#03,#00,#00,#00
.l63f6 equ $ + 5
	db #0e,#0c,#09,#08,#ff,#0c,#02,#00
	db #00,#00,#0f,#0f,#0e,#0c,#0a,#0a
	db #0a,#09,#09,#09,#09,#08,#08,#07
.l640b equ $ + 2
	db #07,#ff,#0d,#03,#00,#00,#00,#0e
.l6415 equ $ + 4
	db #0c,#09,#08,#ff,#00,#04,#09,#10
	db #14,#0f,#0f,#0e,#0d,#0c,#0b,#ff
.l6421
	dw l6467,l6478,l648b,l662f
	dw l6635,l6638,l6760,l6763
	dw l6766
.l6433
	dw l64a6,l64aa,l651f,l6565
	dw l6576,l65b0,l663b,l6698
	dw l66ca,l66e3,l67cc,l67f5
	dw l6823,l682a,l65cb,l6864
	dw l6877,l689d,l65fd,l6786
	dw l68c3,l665a,l6679,l6769
	dw l6772,l677f
.l6467
	db #cc,#01,#01,#01,#01,#01,#01,#09
	db #09,#09,#01,#01,#0f,#0f,#09,#09
.l6478 equ $ + 1
	db #ff,#c0,#04,#c0,#02,#02,#02,#02
	db #13,#c0,#0a,#0a,#0a,#02,#13,#10
.l648b equ $ + 4
	db #10,#0a,#0a,#ff,#c0,#00,#00,#00
	db #00,#03,#c0,#05,#0e,#12,#c0,#0c
	db #0b,#cc,#0d,#c0,#05,#cc,#0e,#00
.l64a6 equ $ + 7
	db #00,#c0,#11,#cc,#0d,#14,#ff,#c0
.l64aa equ $ + 3
	db #bf,#00,#ff,#c1,#81,#1b,#c2,#27
	db #c1,#1b,#1b,#c2,#27,#c1,#1b,#c2
	db #1b,#c1,#19,#c1,#81,#1b,#c2,#27
	db #c1,#1b,#1b,#c2,#27,#c1,#1b,#c2
	db #1b,#c1,#19,#c1,#1e,#c3,#25,#c1
	db #1e,#1e,#c3,#25,#c1,#1e,#c3,#19
	db #c1,#20,#c1,#1e,#c3,#25,#c1,#1e
	db #1e,#c3,#25,#c1,#1e,#c3,#19,#c1
	db #1e,#c1,#20,#c4,#24,#c1,#20,#20
	db #c4,#24,#c1,#20,#c4,#18,#c1,#1e
	db #c1,#20,#c4,#24,#c1,#20,#20,#c4
	db #24,#c1,#20,#c4,#18,#c1,#1e,#c1
	db #16,#c4,#26,#26,#26,#c1,#16,#c4
	db #26,#26,#26,#c1,#16,#c5,#29,#29
	db #29,#c1,#16,#c5,#29,#29,#29,#ff
.l651f
	db #c6,#83,#3a,#3a,#3a,#81,#38,#36
	db #38,#36,#83,#33,#33,#31,#83,#3a
	db #85,#3a,#83,#38,#81,#36,#38,#36
	db #83,#33,#81,#33,#36,#33,#31,#33
	db #36,#83,#38,#c8,#30,#c6,#81,#33
	db #36,#38,#36,#33,#36,#33,#31,#83
	db #30,#81,#32,#35,#83,#38,#c8,#32
	db #c6,#81,#32,#83,#3a,#81,#3c,#3e
.l6565 equ $ + 6
	db #3c,#3a,#38,#37,#35,#ff,#c7,#97
	db #3f,#87,#3a,#97,#3d,#87,#42,#97
.l6576 equ $ + 7
	db #3f,#87,#3c,#8f,#3e,#41,#ff,#cc
	db #83,#3f,#85,#3f,#83,#27,#81,#27
	db #83,#3f,#85,#3f,#83,#1b,#81,#1b
	db #83,#3f,#85,#3f,#83,#27,#81,#27
	db #83,#3f,#85,#3f,#83,#1b,#81,#1b
	db #83,#3f,#85,#3f,#83,#27,#81,#27
	db #83,#3f,#85,#3f,#83,#1b,#81,#1b
	db #83,#41,#8b,#41,#83,#44,#8b,#44
.l65b0 equ $ + 1
	db #ff,#c9,#93,#3f,#83,#3a,#85,#3f
	db #81,#42,#93,#3f,#83,#3a,#85,#3f
	db #81,#42,#93,#3f,#83,#3a,#3f,#41
.l65cb equ $ + 4
	db #8f,#3e,#46,#ff,#cc,#93,#3f,#81
	db #3a,#83,#3f,#42,#81,#3a,#3f,#42
	db #8f,#3f,#81,#3a,#83,#3f,#42,#81
	db #3a,#3f,#42,#8f,#3f,#81,#3a,#83
	db #3f,#42,#81,#3f,#83,#3e,#81,#3e
	db #83,#3f,#81,#3f,#83,#41,#81,#41
.l65fd equ $ + 6
	db #85,#42,#83,#44,#44,#ff,#d0,#93
	db #3f,#81,#3a,#83,#3f,#42,#81,#3a
	db #3f,#42,#8f,#3f,#81,#3a,#83,#3f
	db #42,#81,#3a,#3f,#42,#8f,#3f,#81
	db #3a,#83,#3f,#42,#81,#3f,#83,#3e
	db #81,#3e,#83,#3f,#81,#3f,#83,#41
	db #81,#41,#85,#42,#83,#44,#44,#ff
.l6635 equ $ + 6
.l662f
	db #cc,#06,#15,#06,#16,#fe,#c0,#07
.l663b equ $ + 4
.l6638 equ $ + 1
	db #ff,#c0,#08,#ff,#c1,#81,#1d,#cb
	db #83,#24,#81,#24,#c1,#1d,#cb,#83
	db #24,#81,#24,#c1,#81,#1d,#cb,#83
	db #24,#81,#24,#c1,#1d,#cb,#83,#24
.l665a equ $ + 3
	db #81,#24,#ff,#c1,#81,#1e,#cf,#83
	db #25,#81,#25,#c1,#1e,#cf,#83,#25
	db #81,#25,#c1,#81,#19,#cd,#83,#25
	db #81,#25,#c1,#19,#cd,#83,#25,#81
.l6679 equ $ + 2
	db #25,#ff,#c1,#81,#18,#cb,#83,#2b
	db #81,#2b,#c1,#18,#cb,#83,#2b,#81
	db #2b,#c1,#81,#19,#cd,#83,#31,#81
	db #31,#c1,#19,#cd,#83,#31,#81,#31
.l6698 equ $ + 1
	db #ff,#c9,#87,#3c,#83,#3a,#3c,#81
	db #38,#37,#89,#35,#81,#38,#3d,#3a
	db #38,#3a,#83,#3d,#3f,#41,#81,#3f
	db #41,#3d,#3f,#3d,#3a,#87,#3c,#83
	db #3a,#3c,#81,#38,#37,#35,#37,#83
	db #38,#35,#8b,#33,#83,#33,#35,#33
.l66ca equ $ + 3
	db #87,#31,#ff,#c7,#87,#38,#37,#8f
	db #35,#87,#3a,#38,#83,#33,#8b,#31
	db #87,#38,#37,#8f,#35,#8b,#3c,#83
.l66e3 equ $ + 4
	db #37,#8f,#35,#ff,#c1,#81,#1b,#c2
	db #27,#c1,#1b,#1b,#c2,#27,#c1,#1b
	db #c2,#1b,#c1,#19,#c1,#81,#1b,#c2
	db #27,#c1,#1b,#1b,#c2,#27,#c1,#1b
	db #c2,#1b,#c1,#19,#c1,#19,#c4,#29
	db #c1,#19,#19,#c4,#29,#c1,#19,#c4
	db #1d,#c1,#19,#c1,#19,#c4,#29,#c1
	db #19,#19,#c4,#29,#c1,#19,#c4,#1d
	db #c1,#19,#c1,#20,#c4,#24,#c1,#20
	db #20,#c4,#24,#c1,#20,#c4,#18,#c1
	db #1e,#c1,#20,#c4,#24,#c1,#20,#20
	db #c4,#24,#c1,#20,#c4,#18,#c1,#1e
	db #c1,#81,#1b,#c2,#27,#c1,#1b,#1b
	db #c2,#27,#c1,#1b,#c2,#1b,#c1,#19
	db #c1,#81,#1b,#c2,#27,#c1,#1b,#1b
	db #c2,#27,#c1,#1b,#c2,#1b,#c1,#19
.l6766 equ $ + 7
.l6763 equ $ + 4
.l6760 equ $ + 1
	db #ff,#cc,#17,#fe,#c0,#18,#fe,#cc
.l6769 equ $ + 2
	db #19,#fe,#ce,#87,#27,#cf,#25,#ce
.l6772 equ $ + 3
	db #9f,#27,#ff,#c9,#81,#3d,#3d,#3a
	db #38,#3a,#36,#33,#31,#9f,#33,#ff
.l6786 equ $ + 7
.l677f
	db #c7,#87,#1b,#1e,#9f,#1b,#ff,#c6
	db #83,#3a,#3a,#3a,#81,#38,#36,#38
	db #36,#83,#33,#33,#31,#83,#3a,#85
	db #3a,#83,#38,#81,#36,#38,#36,#83
	db #33,#81,#33,#36,#33,#31,#33,#36
	db #83,#38,#c8,#30,#c6,#81,#33,#36
	db #38,#36,#33,#36,#33,#31,#83,#30
	db #81,#32,#35,#83,#38,#c8,#32,#c6
	db #81,#32,#83,#3a,#81,#3c,#3e,#41
.l67cc equ $ + 5
	db #44,#46,#48,#4a,#ff,#c6,#81,#33
	db #36,#38,#91,#33,#ca,#87,#33,#c6
	db #81,#33,#36,#38,#91,#35,#ca,#87
	db #31,#c6,#81,#33,#36,#38,#91,#33
	db #ca,#87,#2c,#cc,#81,#33,#36,#38
.l67f5 equ $ + 6
	db #91,#33,#ca,#87,#27,#ff,#c7,#8b
	db #3a,#81,#38,#3a,#3d,#3f,#3d,#3a
	db #3d,#3a,#38,#3a,#83,#36,#81,#38
	db #83,#33,#81,#35,#93,#31,#81,#33
	db #83,#38,#81,#33,#83,#36,#81,#33
	db #83,#35,#33,#81,#31,#33,#31,#83
.l6823 equ $ + 4
	db #2e,#9f,#33,#ff,#c7,#9f,#33,#35
.l682a equ $ + 3
	db #33,#33,#ff,#c7,#89,#3a,#81,#36
	db #38,#3a,#3d,#3a,#3d,#3f,#3d,#3a
	db #38,#3a,#83,#36,#81,#38,#83,#33
	db #81,#35,#8d,#31,#81,#2e,#31,#33
	db #33,#36,#87,#38,#81,#33,#36,#38
	db #36,#38,#3a,#80,#36,#38,#81,#36
	db #33,#31,#83,#33,#81,#36,#31,#36
.l6864 equ $ + 5
	db #33,#31,#91,#33,#ff,#ce,#87,#2e
	db #2e,#2e,#2e,#2c,#2c,#2c,#2c,#33
	db #33,#33,#33,#33,#33,#33,#33,#ff
.l6877
	db #c6,#81,#36,#35,#83,#35,#35,#35
	db #35,#35,#35,#35,#81,#35,#33,#83
	db #33,#33,#33,#33,#33,#33,#33,#81
	db #31,#33,#83,#33,#33,#33,#33,#33
.l689d equ $ + 6
	db #33,#33,#33,#9b,#33,#ff,#c8,#81
	db #3a,#38,#35,#38,#83,#35,#33,#35
	db #38,#35,#33,#81,#35,#33,#83,#2d
	db #33,#35,#33,#2d,#27,#2c,#83,#31
	db #ad,#33,#c7,#81,#33,#36,#38,#3a
.l68c3 equ $ + 4
	db #3d,#3f,#42,#ff,#c7,#80,#33,#36
	db #38,#8a,#3a,#81,#38,#3d,#3f,#3d
	db #3f,#81,#42,#3f,#80,#3d,#3f,#3d
	db #3a,#81,#38,#3a,#81,#36,#35,#36
	db #35,#8d,#31,#81,#2e,#31,#33,#80
	db #33,#36,#38,#33,#36,#38,#33,#36
	db #38,#33,#36,#38,#33,#36,#38,#33
	db #36,#38,#33,#36,#38,#33,#36,#38
	db #33,#3a,#38,#3a,#81,#36,#33,#31
	db #33,#31,#2e,#2c,#2a,#2c,#25,#8f
.l6911 equ $ + 2
	db #27,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09,#00
	db #00,#00,#00,#01,#01,#01,#01,#01
	db #01
.l6928
	dw l693e,l6948,l695c,l6970
	dw l6988,l699c,l69ad,l69c5
	dw l69cf,l69d9,l69e3
.l693e
	db #01,#0f,#02,#ff,#05,#ff,#01,#07
.l6948 equ $ + 2
	db #03,#06,#01,#05,#07,#05,#04,#01
	db #01,#02,#dc,#05,#02,#02,#07,#0a
.l695c equ $ + 6
	db #04,#ff,#01,#07,#0a,#06,#01,#05
	db #07,#05,#04,#01,#01,#02,#14,#05
	db #fe,#02,#07,#0a,#04,#ff,#01,#07
.l6970 equ $ + 2
	db #0a,#06,#08,#0f,#00,#00,#14,#04
	db #ff,#02,#07,#04,#08,#02,#00,#00
	db #28,#07,#01,#00,#00,#32,#07,#01
.l6988 equ $ + 2
	db #09,#06,#08,#0f,#00,#00,#1e,#07
	db #03,#04,#ff,#03,#00,#00,#14,#03
.l699c equ $ + 6
	db #00,#01,#02,#07,#14,#06,#08,#0f
	db #00,#05,#00,#07,#04,#00,#04,#00
.l69ad equ $ + 7
	db #03,#00,#1e,#01,#07,#0a,#06,#08
	db #0f,#00,#05,#00,#04,#ff,#04,#08
	db #05,#03,#ff,#ec,#02,#07,#05,#03
.l69c5 equ $ + 7
	db #00,#15,#02,#07,#05,#09,#06,#01
	db #0f,#04,#ff,#02,#02,#ff,#07,#0a
.l69cf equ $ + 1
	db #06,#01,#0f,#04,#ff,#04,#02,#ff
.l69d9 equ $ + 3
	db #07,#32,#06,#01,#0f,#04,#ff,#01
.l69e3 equ $ + 5
	db #02,#9b,#07,#0f,#06,#08,#0a,#00
	db #00,#23,#04,#01,#01,#07,#03,#04
	db #ff,#01,#07,#0f,#06
.l69f3
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
	ld hl,l6928
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
.l6a27
	ld ix,l6911
	ld a,(l5e02)
	or a
	jr z,l6a3c
	dec a
	ld (l5e03),a
	call l69f3
	xor a
	ld (l5e02),a
.l6a3c
	ld a,(ix+#0c)
	cp #09
	ret z
	call l6a6f
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld (l618a),hl
	ld a,(ix+#0a)
	ld (l6191),a
	bit 3,(ix+#0c)
	jr nz,l6a60
	ld a,(ix+#0b)
	ld (l618e),a
.l6a60
	ld a,(ix+#0c)
	add a
	ld b,a
	ld a,(l618f)
	and #ed
	or b
	ld (l618f),a
	ret
.l6a6f
	dec (ix+#07)
	jp nz,l6b0f
	ld l,(ix+#02)
	ld h,(ix+#03)
.l6a7b
	ld a,(hl)
	inc hl
	ld b,(hl)
	inc hl
	or a
	jr z,l6ac9
	dec a
	jr z,l6ad3
	dec a
	jr z,l6ad8
	dec a
	jr z,l6add
	dec a
	jr z,l6aee
	dec a
	jr z,l6afa
	dec a
	jr z,l6b06
	dec a
	jr z,l6ab5
	dec a
	jr z,l6aaa
	dec (ix+#06)
	jr z,l6aa7
	ld l,(ix+#04)
	ld h,(ix+#05)
	jr l6a7b
.l6aa7
	dec hl
	jr l6a7b
.l6aaa
	ld (ix+#04),l
	ld (ix+#05),h
	ld (ix+#06),b
	jr l6ac1
.l6ab5
	ld (ix+#07),b
	ld (ix+#02),l
	ld (ix+#03),h
	jr l6b0f
.l6ac0
	inc hl
.l6ac1
	ld (ix+#02),l
	ld (ix+#03),h
	jr l6a7b
.l6ac9
	ld (ix+#09),b
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	jr l6ac1
.l6ad3
	ld (ix+#0a),b
	jr l6ac1
.l6ad8
	ld (ix+#0b),b
	jr l6ac1
.l6add
	ld (ix+#0e),b
	ld a,(hl)
	ld (ix+#0d),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	ld (ix+#12),a
	jr l6ac0
.l6aee
	ld (ix+#0f),b
	ld a,(hl)
	ld (ix+#13),a
	ld (ix+#14),a
	jr l6ac0
.l6afa
	ld (ix+#10),b
	ld a,(hl)
	ld (ix+#15),a
	ld (ix+#16),a
	jr l6ac0
.l6b06
	ld (ix+#0c),#09
	xor a
	ld (l5e03),a
	ret
.l6b0f
	dec (ix+#11)
	jr nz,l6b2d
	ld a,(ix+#12)
	ld (ix+#11),a
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld e,(ix+#0d)
	ld d,(ix+#0e)
	add hl,de
	ld (ix+#08),l
	ld (ix+#09),h
.l6b2d
	dec (ix+#13)
	jr nz,l6b4b
	ld a,(ix+#14)
	ld (ix+#13),a
	ld a,(ix+#0a)
	add (ix+#0f)
	jp p,l6b42
	xor a
.l6b42
	cp #10
	jr c,l6b48
	ld a,#0f
.l6b48
	ld (ix+#0a),a
.l6b4b
	dec (ix+#15)
	jr nz,l6b5f
	ld a,(ix+#16)
	ld (ix+#15),a
	ld a,(ix+#0b)
	add (ix+#10)
	ld (ix+#0b),a
.l6b5f
	ret
	pop hl
	ret
;
; #5e07
; db " Double Dragon 2 music by Steve Barrett. Z80 Music & FX programming by RDA (C) 1990 Creative Materials Ltd "
;
.music_info
	db "Double Dragon 2 - The Revenge (1989)(Mastertronic)(Steve Barrett)",0
	db "Double Dragon 2 music by Steve Barrett. Z80 Music & FX programming by RDA (C) 1990 Creative Materials Ltd",0

	read "music_end.asm"
