; Music of Knight Tyme (1986)(Mastertronic)(David Jones)()
; Ripped by Megachur the 21/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "KNIGHTTY.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #80de

	read "music_header.asm"
;
.init_music
;
	call l8106
	call l8119
	ret
.l80e5
	push af
	push bc
	ld b,#f4
	out (c),a
	ld a,#c0
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	pop bc
	push bc
	ld b,#f4
	out (c),c
	ld a,#80
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	pop bc
	pop af
	ret
;
.stop_music
.l8106
;
	ld b,#0e
.l8108
	ld a,b
	dec a
	ld c,#00
	call l80e5
	djnz l8108
	ld a,#07
	ld c,#bf
	call l80e5
	ret
.l8119
	ld ix,l82f3
	ld b,#03
.l811f
	push bc
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#02),e
	ld (ix+#03),d
	ld (ix+#04),l
	ld (ix+#05),h
	call l81ff
	ld bc,#0014
	add ix,bc
	pop bc
	djnz l811f
	ret
;
.play_music
;
	ld a,#00	;&ff
	or a
	ret nz
	push ix
	ld ix,l82f3
	ld a,#80
	ld (l8193),a
	ld b,#03
.l8153
	push bc
	ld a,(ix+#06)
	dec a
	ld (ix+#06),a
	ld (l81c1),a
	call z,l81ff
	ld a,(ix+#10)
	or a
	jp z,l8175
	add a
	ld e,a
	ld d,#00
	ld hl,l8192
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l8175
	ld c,(ix+#0d)
	ld a,(l8193)
	or c
	ld (l8193),a
	ld bc,#0014
	add ix,bc
	pop bc
	djnz l8153
	ld a,(l8193)
	ld c,a
	ld a,#07
	call l80e5
	pop ix
.l8192
	ret
.l8193
	nop
	dw l81d0,l81c0,l819a
.l819a
	ld a,(ix+#12)
	inc a
	and #07
	ld (ix+#12),a
	ld e,#00
	jp z,l81e4
	cp #04
	jp nz,l8175
	ld a,(ix+#11)
	ld e,a
	ld d,#00
	ld hl,l832f
	add hl,de
	ld a,(hl)
	inc a
	ld c,a
	ld a,(ix+#08)
	jp l81f3
.l81c1 equ $ + 1
.l81c0
	ld a,#01
	or a
	jp nz,l8175
	ld a,#0d
	ld c,#0b
	call l80e5
	jp l8175
.l81d0
	ld a,(ix+#12)
	inc a
.l81d5 equ $ + 1
	and #03
	ld (ix+#12),a
	ld e,#00
	jr z,l81e4
.l81de equ $ + 1
	ld e,#18
.l81e0 equ $ + 1
	cp #02
	jp nz,l8175
.l81e4
	ld a,(ix+#11)
	add e
	ld c,a
	ld b,#00
	ld hl,l832f
	add hl,bc
	ld a,(ix+#08)
	ld c,(hl)
.l81f3
	inc hl
	call l80e5
	inc a
	ld c,(hl)
	call l80e5
	jp l8175
.l81ff
	ld l,(ix+#02)
	ld h,(ix+#03)
	ld a,(hl)
	cp #ff
	call z,l82d4
	ld a,(hl)
	bit 7,a
	jp nz,l8248
.l8211
	inc hl
	ld c,(hl)
	inc hl
	ld (ix+#02),l
	ld (ix+#03),h
	ld (ix+#06),c
	add (ix+#07)
	add a
	ld (ix+#11),a
	ld c,a
	ld b,#00
	ld hl,l832f
	add hl,bc
	ld a,(ix+#08)
	ld c,(hl)
	inc hl
	call l80e5
	inc a
	ld c,(hl)
	call l80e5
	ld a,(ix+#0a)
	ld (ix+#0d),a
	ld c,(ix+#0e)
.l8241
	ld a,(ix+#0f)
	call l80e5
	ret
.l8248
	and #7f
	push hl
	add a
	ld e,a
	ld d,#00
	ld hl,l8258
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l8258
	dw l8289,l829d,l8269,l82bc
	dw l8264
	dw l827e
.l8264
	pop hl
	inc hl
	xor a
	jr l8282
.l8269
	pop hl
	inc hl
	ld a,(hl)
	ld (l81d5),a
	inc hl
	ld a,(hl)
	ld (l81e0),a
	inc hl
	ld a,(hl)
	ld (l81de),a
	inc hl
	ld a,#01
	jr l8282
.l827e
	pop hl
	inc hl
	ld a,#03
.l8282
	ld (ix+#10),a
	ld a,(hl)
	jp l8211
.l8289
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#02),l
	ld (ix+#03),h
	ld a,(ix+#09)
	ld (ix+#0d),a
	ret
.l829d
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#02),l
	ld (ix+#03),h
	ld a,#06
	ld c,#14
	call l80e5
	ld a,(ix+#0b)
	ld (ix+#0d),a
	ld c,#0c
	jp l8241
.l82bc
	pop hl
	inc hl
	ld a,#02
	ld (ix+#10),a
	ld a,#0b
	ld c,(hl)
	inc hl
	call l80e5
	inc a
	ld c,(hl)
	inc hl
	call l80e5
	ld a,(hl)
	jp l8211
.l82d4
	ld l,(ix+#04)
	ld h,(ix+#05)
	inc hl
	ld a,(hl)
	dec hl
	cp #ff
	jr nz,l82e7
	ld l,(ix+#00)
	ld h,(ix+#01)
.l82e7
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ex de,hl
	ret
.l82f3
	dw l83bd,#0000,#0000
	db #00,#0c,#00,#09,#08,#01,#00,#00
	db #0c,#08,#00,#00,#00,#00,#e3,#83
	db #00,#00,#00,#00,#00,#0c,#02,#12
	db #10,#02,#00,#00,#0d,#09,#00,#00
	db #00,#00,#09,#84,#00,#00,#00,#00
	db #00,#0c,#04,#24,#20,#04,#00,#00
	db #0f,#0a,#00,#00,#00,#00
.l832f
	dw #06a7,#0647,#05ed,#0598
	dw #0547,#04fc,#04b4,#0470
	dw #0431,#03f4,#03bc,#0386
	dw #0353,#0324,#02f6,#02cc
	dw #02a4,#027e,#025a,#0238
	dw #0218,#01fa,#01de,#01c3
	dw #01aa,#0192,#017b,#0166
	dw #0152,#013f,#012d,#011c
	dw #010c,#00fd,#00ef,#00e1
	dw #00d5,#00c9,#00be,#00b3
	dw #00a9,#009f,#0096,#008e
	dw #0086,#007f,#0077,#0071
	dw #006a,#0064,#005f,#0059
	dw #0054,#0050,#004b,#0047
	dw #0043,#003f,#003c,#0038
	dw #0035,#0032,#002f,#002d
	dw #002a,#0028,#0026,#0024
	dw #0022,#0020,#001e
.l83bd
	dw l8449,l8449
	dw l84a9,l858a,l8602,l8602
	dw l860b,l860b,l8612,l8449
	dw l86fa,l86fa,l8705,l86fa
	dw l86fa,l8705,l8718,l858a
	dw #ffff,l8457,l8457,l84de
	dw l85b1,l863d,l863d,l8656
	dw l8656,l8677,l8457,l8779
	dw l8779,l8784,l8779,l8779
	dw l8784,l8797,l85b1,#ffff
	dw l8495,l8495,l8495,l8495
	dw l8569,l8569,l8572,l8569
	dw l8569,l8572,l84a0,l857b
	dw l85d8,l86a2,l86a2,l86b6
	dw l86b6,l86c7,l8495,l8495
	dw l87f8,l87f8,l87f8,l87f8
	dw l8809,l8809,l8809,l8809
	dw l8812,l8809,l85d8,#ffff
.l8449
	db #85,#2d,#60,#2b,#30,#2d,#30
.l8457 equ $ + 7
	db #2d,#60,#2b,#30,#2d,#30,#ff,#85
	db #21,#18,#26,#12,#24,#06,#23,#0c
	db #21,#0c,#23,#0c,#21,#06,#23,#06
	db #24,#0c,#23,#0c,#21,#0c,#1f,#0c
	db #21,#12,#23,#06,#21,#18,#21,#18
	db #26,#12,#24,#06,#23,#0c,#21,#0c
	db #23,#0c,#1f,#06,#21,#06,#1f,#0c
	db #1e,#0c,#1c,#0c,#1a,#0c,#1a,#12
.l8495 equ $ + 5
	db #1c,#06,#1a,#18,#ff,#83,#00,#02
	db #0e,#18,#15,#18,#0e,#18,#15,#18
.l84a0
	db #0c,#18,#13,#18,#0e,#18,#15,#18
.l84a9 equ $ + 1
	db #ff,#25,#60,#31,#60,#2f,#30,#31
	db #30,#25,#60,#31,#60,#2f,#30,#31
	db #30,#2b,#30,#2d,#30,#27,#0c,#26
	db #0c,#24,#0c,#22,#18,#21,#0c,#1f
	db #18,#1f,#48,#80,#0c,#24,#06,#26
	db #06,#27,#0c,#26,#0c,#24,#0c,#22
.l84de equ $ + 6
	db #18,#21,#0c,#1f,#18,#ff,#19,#18
	db #1e,#12,#1c,#06,#1b,#0c,#19,#0c
	db #1b,#18,#25,#18,#2a,#12,#28,#06
	db #27,#0c,#25,#0c,#27,#0c,#19,#06
	db #1b,#06,#1c,#0c,#1b,#0c,#19,#0c
	db #17,#0c,#19,#12,#1b,#06,#19,#18
	db #19,#18,#1e,#12,#1c,#06,#1b,#0c
	db #19,#0c,#1b,#18,#25,#18,#2a,#12
	db #28,#06,#27,#0c,#25,#0c,#27,#0c
	db #1e,#06,#20,#06,#21,#0c,#20,#0c
	db #1e,#0c,#1c,#0c,#1e,#12,#20,#06
	db #1e,#0c,#20,#06,#23,#06,#24,#0c
	db #23,#0c,#21,#0c,#1f,#0c,#1e,#0c
	db #1c,#0c,#1a,#0c,#24,#06,#26,#06
	db #1f,#0c,#1d,#0c,#1b,#0c,#1d,#18
	db #1b,#0c,#1a,#18,#1a,#48,#80,#0c
	db #1b,#06,#1d,#06,#1f,#0c,#1d,#0c
	db #1b,#0c,#1d,#18,#1b,#0c,#1a,#18
.l8569 equ $ + 1
	db #ff,#06,#18,#0d,#18,#06,#18,#0d
.l8572 equ $ + 2
	db #18,#ff,#04,#18,#0b,#18,#06,#18
.l857b equ $ + 3
	db #0d,#18,#ff,#0c,#24,#11,#24,#13
	db #18,#13,#60,#0c,#24,#11,#24,#13
.l858a equ $ + 2
	db #18,#ff,#21,#24,#1f,#0c,#21,#24
	db #1f,#0c,#21,#0c,#23,#0c,#21,#0c
	db #1f,#0c,#21,#18,#1f,#18,#21,#18
	db #21,#18,#1f,#18,#1e,#0c,#1c,#0c
	db #1e,#12,#1c,#06,#1e,#18,#80,#30
.l85b1 equ $ + 1
	db #ff,#1e,#24,#1c,#0c,#1e,#24,#1c
	db #0c,#1e,#0c,#1f,#0c,#1e,#0c,#1c
	db #0c,#1e,#18,#1c,#18,#1e,#18,#19
	db #18,#17,#18,#15,#0c,#13,#0c,#15
	db #12,#13,#06,#15,#18,#80,#30,#ff
.l85d8
	db #83,#64,#00,#0e,#24,#0e,#0c,#0e
	db #24,#0e,#0c,#0e,#0c,#0e,#0c,#0e
	db #0c,#0e,#0c,#0e,#18,#0e,#18,#0e
	db #18,#0e,#18,#0e,#18,#0e,#0c,#0e
	db #0c,#0e,#12,#09,#06,#0e,#18,#0e
.l8602 equ $ + 2
	db #30,#ff,#21,#30,#2d,#30,#21,#30
.l860b equ $ + 3
	db #2d,#30,#ff,#24,#30,#30,#30,#2c
.l8612 equ $ + 2
	db #60,#ff,#23,#30,#20,#18,#27,#18
	db #26,#30,#23,#18,#2a,#18,#29,#30
	db #26,#18,#2d,#18,#2c,#30,#29,#18
	db #24,#18,#2a,#18,#2d,#18,#2c,#18
	db #2a,#0c,#28,#0c,#2a,#12,#28,#06
.l863d equ $ + 5
	db #2a,#30,#80,#18,#ff,#1a,#0c,#1c
	db #0c,#1a,#0c,#1c,#0c,#1d,#0c,#1f
	db #24,#26,#18,#21,#12,#24,#06,#23
.l8656 equ $ + 6
	db #0c,#21,#0c,#17,#18,#ff,#1d,#0c
	db #1f,#0c,#1d,#0c,#1f,#0c,#20,#0c
	db #22,#0c,#20,#0c,#22,#0c,#24,#0c
	db #26,#0c,#27,#0c,#26,#0c,#24,#0c
.l8677 equ $ + 7
	db #26,#0c,#24,#0c,#22,#0c,#ff,#20
	db #30,#1b,#18,#23,#18,#23,#30,#1e
	db #18,#26,#18,#26,#30,#21,#18,#29
	db #18,#29,#30,#24,#18,#20,#18,#21
	db #18,#24,#18,#23,#18,#21,#0c,#1f
	db #0c,#21,#12,#1f,#06,#21,#30,#80
.l86a2 equ $ + 2
	db #18,#ff,#83,#00,#02,#0e,#18,#15
	db #18,#0e,#18,#15,#18,#0e,#18,#15
.l86b6 equ $ + 6
	db #18,#0e,#18,#15,#18,#ff,#05,#18
	db #0c,#18,#05,#18,#0c,#18,#05,#18
.l86c7 equ $ + 7
	db #0c,#18,#05,#18,#0c,#18,#ff,#08
	db #18,#0f,#18,#08,#18,#0f,#18,#0b
	db #18,#12,#18,#0b,#18,#12,#18,#0e
	db #18,#15,#18,#0e,#18,#15,#18,#05
	db #18,#0c,#18,#05,#18,#0c,#18,#12
	db #18,#15,#18,#14,#18,#12,#0c,#10
	db #0c,#12,#12,#10,#06,#12,#30,#80
.l86fa equ $ + 2
	db #18,#ff,#20,#12,#1e,#06,#20,#30
.l8705 equ $ + 5
	db #20,#0c,#1e,#0c,#ff,#20,#18,#23
	db #18,#21,#18,#20,#0c,#1e,#0c,#20
	db #12,#1e,#06,#20,#30,#80,#18,#ff
.l8718
	db #26,#12,#24,#06,#26,#30,#26,#0c
	db #27,#0c,#26,#12,#24,#06,#26,#30
	db #26,#0c,#27,#0c,#29,#18,#27,#18
	db #26,#18,#24,#0c,#26,#0c,#26,#12
	db #24,#06,#26,#30,#80,#18,#1d,#12
	db #1c,#06,#1d,#18,#80,#0c,#19,#0c
	db #1d,#0c,#22,#0c,#20,#12,#1f,#06
	db #20,#18,#80,#0c,#1c,#0c,#20,#0c
	db #25,#0c,#23,#12,#22,#06,#23,#18
	db #80,#0c,#1f,#0c,#23,#0c,#28,#0c
	db #26,#12,#25,#06,#26,#0c,#25,#0c
	db #26,#12,#25,#06,#26,#0c,#22,#0c
.l8779 equ $ + 1
	db #ff,#1c,#12,#1b,#06,#1c,#30,#1c
.l8784 equ $ + 4
	db #0c,#1b,#0c,#ff,#1c,#18,#1b,#18
	db #19,#18,#17,#0c,#15,#0c,#17,#12
.l8797 equ $ + 7
	db #15,#06,#17,#30,#80,#18,#ff,#23
	db #12,#21,#06,#23,#30,#23,#0c,#24
	db #0c,#23,#12,#21,#06,#23,#30,#23
	db #0c,#24,#0c,#26,#18,#24,#18,#23
	db #18,#21,#0c,#23,#0c,#23,#12,#21
	db #06,#23,#30,#80,#18,#19,#12,#18
	db #06,#19,#18,#80,#0c,#16,#0c,#19
	db #0c,#1d,#0c,#1c,#12,#1b,#06,#1c
	db #18,#80,#0c,#19,#0c,#1c,#0c,#20
	db #0c,#1f,#12,#1e,#06,#1f,#18,#80
	db #0c,#1c,#0c,#1f,#0c,#23,#0c,#22
	db #12,#21,#06,#22,#0c,#21,#0c,#22
	db #12,#21,#06,#22,#0c,#1f,#0c,#ff
.l87f8
	db #10,#18,#17,#18,#10,#18,#17,#18
	db #10,#18,#17,#18,#10,#18,#0b,#18
.l8809 equ $ + 1
	db #ff,#07,#18,#0e,#18,#07,#18,#0e
.l8812 equ $ + 2
	db #18,#ff,#0a,#18,#11,#18,#0a,#18
	db #11,#18,#0d,#18,#14,#18,#0d,#18
	db #14,#18,#10,#18,#17,#18,#10,#18
	db #17,#18,#ff
;
; #1588
; call #8106	; stop music
; ld a,#ff
; ld (#8143),a
;
; #1685
; call #80de	; enable music
; xor a
; ld (#8143),a
;
.music_info
	db "Knight Tyme (1986)(Mastertronic)(David Jones)",0
	db "",0

	read "music_end.asm"
