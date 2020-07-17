; Music of Wild Streets (1990)(Titus)()()
; Ripped by Megachur the 15/10/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "WILDSTRE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #5793

	read "music_header.asm"

	push af
	ld a,#01
	ld (l58eb),a
	ld a,#0a
	ld c,#10
	call l8364
	ld a,#07
	ld c,#1c
	call l8364
	pop af
	ld c,a
	ld a,#06
	call l8364
	ld c,e
	ld a,#0b
	call l8364
	ld c,d
	ld a,#0c
	call l8364
	ld a,d
	srl a
	srl a
	inc a
	ld (l58f0),a
	ld a,#0d
	ld c,#00
	jp l8364
	ld a,(l58f0)
	or a
	ret z
	dec a
	ld (l58f0),a
	ret nz
	ld (l58eb),a
	ld hl,(l58ec)
	ld a,#04
	ld c,l
	call l8364
	ld a,#05
	ld c,h
	call l8364
	ld c,#38
	ld a,#07
	call l8364
	ld a,#0a
	ld c,#0d
	jp l8364
	di
	ld a,#c3
	ld (#0038),a
	ld hl,#5764
	ld (#0039),hl
	ei
	ld a,#07
	ld c,#38
	call l8364
	ld a,#08
	ld c,#00
	call l8364
	ld a,#09
	ld c,#00
	call l8364
	ld a,#0a
	ld c,#00
	jp l8364
.l581d
	ld (ix+#02),#01
	ld a,(ix+#05)
	or a
	jr nz,l586e
	ld hl,#0000
	ld a,(ix+#06)
	call l5a16
	jr l586e
;
.real_play_music
;
	ld hl,l5a4f
	dec (hl)
	ret nz
	dec hl
	ld a,(hl)
	inc hl
	ld (hl),a
	ld hl,l58ee
	ld b,(hl)
	inc hl
	ld a,(hl)
	sub b
	jr nc,l5845
	xor a
.l5845
	ld (hl),a
	or a
	jr nz,l5856
	ld a,(l58eb)
	or a
	jr nz,l5856
	ld a,#07
	ld c,#38
	call l8364
.l5856
	ld b,#04
	ld ix,l5a50
.l585c
	push bc
	ld a,(ix+#02)
	cp #ff
	jr z,l586e
	cp #02
	jr z,l581d
	dec (ix+#02)
	call z,l5877
.l586e
	ld de,#000b
	add ix,de
	pop bc
	djnz l585c
	ret
.l5877
	push bc
.l5878
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	or a
	jp m,l58f1
	ld hl,#0000
	ld e,a
	and #0f
	cp #0c
	jr z,l58ba
	add a
	ld c,a
	ld b,#00
	ld a,(ix+#04)
	or a
	jr nz,l58c8
	ld hl,l5a36
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,e
	srl a
	srl a
	srl a
	srl a
	and #07
	jr z,l58ba
	ld b,a
.l58b4
	srl h
	rr l
	djnz l58b4
.l58ba
	ld a,(ix+#06)
	call l5a16
.l58c0
	ld a,(ix+#03)
	ld (ix+#02),a
.l58c6
	pop bc
	ret
.l58c8
	ld a,(l58eb)
	or a
	jr nz,l58c0
	ld a,e
	rra
	rra
	rra
	and #1c
	ld c,a
	ld a,#06
	call l8364
	ld a,#07
	ld c,#18
	call l8364
	ld hl,l58ee
	ld (hl),#02
	inc hl
	ld (hl),#0f
	jr l58c0
.l58eb
	nop
.l58ec
	nop
	nop
.l58ee
	nop
	nop
.l58f0
	nop
.l58f1
	ld e,a
	and #70
	srl a
	srl a
	srl a
	ld hl,l5907
	add l
	ld l,a
	adc h
	sub l
	ld h,a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l5907
	dw l5917,l5931,l5940,l5943
	dw l5955,l595e,l5967,l5970
.l5917
	ld d,(ix+#0a)
	ld a,e
	and #07
	cp #07
	jr z,l592b
	ld d,#60
	or a
	jr z,l592b
	ld b,a
.l5927
	srl d
	djnz l5927
.l592b
	ld (ix+#03),d
	jp l5878
.l5931
	ld a,e
	and #0f
	ld c,a
	ld a,(ix+#06)
	add #08
	call l8364
	jp l5878
.l5940
	jp l5878
.l5943
	ld d,#40
	ld a,e
	and #07
	jr z,l594f
	ld b,a
.l594b
	srl d
	djnz l594b
.l594f
	ld (ix+#0a),d
	jp l5878
.l5955
	ld a,e
	and #0f
	ld (ix+#05),a
	jp l5878
.l595e
	ld a,e
	and #03
	ld (ix+#06),a
	jp l5878
.l5967
	ld a,e
	and #0f
	ld (ix+#04),a
	jp l5878
.l5970
	ld a,e
	and #0f
	add a
	ld e,a
	ld d,#00
	ld hl,l5980
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l5980
	dw l59fd,l59f1,l59c8,l59b9
	dw l59a7,l5878,l5878,l5878
	dw l5878,l5878,l5878,l5878
	dw l5878,l5878,l5878,l59a0
.l59a0
	ld (ix+#02),#ff
	jp l58c6
.l59a7
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld (ix+#00),a
	ld (ix+#01),h
	jp l5878
.l59b9
	ld a,(ix+#08)
	ld (ix+#00),a
	ld a,(ix+#09)
	ld (ix+#01),a
	jp l5878
.l59c8
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(ix+#07)
	or a
	jr z,l59e6
	dec a
	ld (ix+#07),a
	jr z,l59e6
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld (ix+#00),a
	ld (ix+#01),h
	jp l5878
.l59e6
	inc hl
.l59e7
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l5878
.l59f1
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	ld (ix+#07),a
	jr l59e7
.l59fd
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	ld (ix+#00),e
	ld (ix+#01),d
	jp l5878
.l5a16
	ex af,af'
	ld a,(l58eb)
	or a
	jr z,l5a26
	ex af,af'
	cp #02
	jr nz,l5a27
	ld (l58ec),hl
	ret
.l5a26
	ex af,af'
.l5a27
	cp #03
	ret z
	add a
	push af
	ld c,l
	call l8364
	pop af
	inc a
	ld c,h
	jp l8364
.l5a36
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
.l5a4f equ $ + 1
.l5a4e
	dw #0103
.l5a50
	dw l5a7c
	db #01,#01,#00,#00
	db #00,#00,#00,#00,#08
	dw l5b43
	db #01,#01,#00,#00,#01,#00,#00,#00
	db #08
	dw l5b9e
	db #01,#01,#00,#00,#02,#00,#00,#00
	db #08
	dw l5c08
	db #01,#01,#01,#00,#03,#00,#00,#00
.l5a7c equ $ + 1
	db #08,#f1,#08
	db #f0,#44,#5c,#f2,#7e,#5a,#f0,#44
	db #5c,#f0,#50,#5c,#f0,#5c,#5c,#f0
	db #68,#5c,#f0,#44,#5c,#f0,#50,#5c
	db #f0,#5c,#5c,#f0,#74,#5c,#f1,#02
	db #f0,#44,#5c,#f0,#44,#5c,#f0,#50
	db #5c,#f0,#50,#5c,#f0,#80,#5c,#f0
	db #80,#5c,#f0,#8c,#5c,#f2,#9e,#5a
	db #f1,#08,#f0,#44,#5c,#f2,#b8,#5a
	db #f0,#44,#5c,#f0,#50,#5c,#f0,#5c
	db #5c,#f0,#68,#5c,#f0,#44,#5c,#f0
	db #50,#5c,#f0,#5c,#5c,#f0,#74,#5c
	db #f0,#44,#5c,#f0,#44,#5c,#f0,#50
	db #5c,#f0,#50,#5c,#f0,#80,#5c,#f0
	db #80,#5c,#f0,#8c,#5c,#f1,#02,#f0
	db #80,#5c,#f0,#80,#5c,#f0,#a0,#5c
	db #f0,#a0,#5c,#f2,#ed,#5a,#f0,#5c
	db #5c,#f0,#5c,#5c,#f0,#50,#5c,#f0
	db #50,#5c,#f1,#08,#f0,#44,#5c,#f2
	db #0a,#5b,#f0,#44,#5c,#f0,#50,#5c
	db #f0,#5c,#5c,#f0,#68,#5c,#f0,#44
	db #5c,#f0,#50,#5c,#f0,#5c,#5c,#f0
	db #74,#5c,#f1,#09,#f0,#44,#5c,#f2
	db #2a,#5b,#f1,#04,#f0,#5c,#5c,#f2
	db #32,#5b,#f1,#08,#f0,#50,#5c,#f2
.l5b43 equ $ + 5
	db #3a,#5b,#f4,#7c,#5a,#f1,#04,#f0
	db #ac,#5c,#f2,#45,#5b,#f1,#02,#f0
	db #b6,#5c,#f2,#4d,#5b,#f1,#04,#f0
	db #ac,#5c,#f2,#55,#5b,#f0,#b6,#5c
	db #f1,#02,#f0,#fd,#5c,#f0,#fd,#5c
	db #f0,#09,#5d,#f0,#09,#5d,#f2,#60
	db #5b,#f0,#15,#5d,#f0,#15,#5d,#f0
	db #21,#5d,#f0,#21,#5d,#f1,#04,#f0
	db #ac,#5c,#f2,#7d,#5b,#f1,#09,#f0
	db #e9,#5d,#f2,#85,#5b,#f1,#04,#f0
	db #01,#5e,#f2,#8d,#5b,#f1,#08,#f0
	db #f5,#5d,#f2,#95,#5b,#f4,#43,#5b
.l5b9e
	db #f1,#02,#f0,#2d,#5d,#f2,#a0,#5b
	db #f0,#37,#5d,#f0,#5a,#5d,#f0,#37
	db #5d,#f0,#66,#5d,#f1,#02,#f0,#72
	db #5d,#f2,#b4,#5b,#f1,#02,#f0,#2d
	db #5d,#f2,#bc,#5b,#f0,#37,#5d,#f0
	db #5a,#5d,#f0,#37,#5d,#f0,#66,#5d
	db #f0,#72,#5d,#f1,#02,#f0,#b9,#5d
	db #f0,#b9,#5d,#f0,#c5,#5d,#f0,#c5
	db #5d,#f2,#d3,#5b,#f0,#d1,#5d,#f0
	db #d1,#5d,#f0,#dd,#5d,#f0,#dd,#5d
	db #f1,#02,#f0,#2d,#5d,#f2,#f0,#5b
	db #f0,#37,#5d,#f0,#5a,#5d,#f0,#37
	db #5d,#f0,#66,#5d,#f0,#0d,#5e,#f4
.l5c08 equ $ + 2
	db #9e,#5b,#f1,#08,#f0,#d9,#5e,#f2
	db #0a,#5c,#f1,#08,#f0,#e5,#5e,#f2
	db #12,#5c,#f1,#05,#f0,#f1,#5e,#f2
	db #1a,#5c,#f1,#04,#f0,#d9,#5e,#f2
	db #22,#5c,#f1,#04,#f0,#e5,#5e,#f2
	db #2a,#5c,#f0,#2d,#5f,#f1,#04,#f0
	db #f1,#5e,#f2,#35,#5c,#f0,#2d,#5f
	db #f0,#e5,#5e,#f4,#08,#5c,#83,#9d
	db #c0,#17,#07,#17,#07,#17,#07,#17
	db #07,#f3,#83,#9d,#c0,#15,#05,#15
	db #05,#15,#05,#15,#05,#f3,#83,#9d
	db #c0,#13,#03,#13,#03,#13,#03,#13
	db #03,#f3,#83,#9d,#c0,#10,#00,#10
	db #00,#12,#02,#12,#02,#f3,#83,#9d
	db #c0,#12,#02,#12,#02,#13,#03,#15
	db #05,#f3,#83,#9d,#c0,#10,#00,#10
	db #00,#10,#00,#10,#00,#f3,#83,#9d
	db #c0,#12,#02,#12,#02,#12,#02,#12
	db #02,#13,#03,#13,#03,#13,#03,#15
	db #05,#f3,#83,#9d,#c0,#12,#02,#12
	db #02,#12,#02,#12,#02,#f3,#80,#9d
	db #c0,#27,#25,#c1,#23,#c0,#23,#f3
	db #82,#9d,#c0,#2a,#83,#29,#82,#27
	db #c1,#25,#83,#c0,#25,#80,#27,#82
	db #2a,#83,#29,#82,#27,#c1,#2a,#83
	db #c0,#2a,#80,#30,#82,#2a,#83,#29
	db #82,#27,#c1,#25,#83,#c0,#25,#81
	db #c1,#27,#82,#27,#83,#c0,#27,#27
	db #82,#2a,#83,#29,#82,#27,#c1,#25
	db #83,#c0,#25,#82,#2a,#83,#29,#82
	db #27,#c1,#25,#83,#c0,#25,#f3,#83
	db #9d,#c0,#27,#17,#27,#17,#27,#17
	db #27,#17,#f3,#83,#9d,#c0,#29,#19
	db #29,#19,#29,#19,#29,#19,#f3,#83
	db #9d,#c0,#2a,#1a,#2a,#1a,#2a,#1a
	db #2a,#1a,#f3,#83,#9d,#c0,#30,#20
	db #30,#20,#30,#20,#30,#20,#f3,#80
	db #9d,#c0,#2a,#29,#c1,#27,#c0,#27
	db #f3,#82,#9d,#c1,#2a,#83,#c0,#2a
	db #c1,#30,#82,#c0,#30,#2a,#c1,#29
	db #83,#c0,#29,#c1,#30,#82,#c0,#30
	db #29,#c1,#27,#83,#c0,#27,#c1,#30
	db #81,#c0,#30,#f3,#83,#0c,#9d,#c0
	db #20,#23,#27,#22,#25,#82,#29,#f3
	db #83,#9d,#c0,#22,#25,#27,#2a,#29
	db #27,#25,#22,#f3,#82,#9d,#c0,#32
	db #83,#30,#82,#2a,#c1,#29,#83,#c0
	db #29,#80,#2a,#82,#32,#83,#30,#82
	db #2a,#c1,#30,#83,#c0,#30,#80,#35
	db #82,#32,#83,#30,#82,#2a,#c1,#29
	db #83,#c0,#29,#81,#c1,#2a,#82,#2a
	db #83,#c0,#2a,#27,#82,#32,#83,#30
	db #82,#2a,#c1,#29,#83,#c0,#29,#82
	db #32,#83,#30,#82,#2a,#c1,#29,#83
	db #c0,#29,#f3,#83,#9d,#c0,#22,#23
	db #27,#23,#22,#23,#27,#23,#f3,#83
	db #9d,#c0,#24,#25,#29,#25,#24,#25
	db #29,#25,#f3,#83,#9d,#c0,#25,#27
	db #2a,#27,#25,#27,#2a,#27,#f3,#83
	db #9d,#c0,#27,#29,#2a,#29,#27,#29
	db #2a,#30,#f3,#83,#9c,#c0,#27,#17
	db #27,#17,#27,#17,#27,#17,#f3,#83
	db #9c,#c0,#25,#15,#25,#15,#25,#15
	db #25,#15,#f3,#83,#9d,#c0,#23,#13
	db #23,#13,#23,#13,#23,#13,#f3,#83
	db #9d,#c0,#27,#0c,#0c,#82,#0c,#83
	db #27,#2a,#31,#81,#c1,#32,#83,#c0
	db #32,#27,#2a,#31,#81,#c1,#32,#83
	db #c0,#32,#27,#2a,#31,#35,#82,#34
	db #32,#83,#31,#82,#c1,#32,#81,#32
	db #83,#c0,#32,#27,#2a,#31,#81,#c1
	db #32,#83,#c0,#32,#27,#2a,#31,#81
	db #c1,#32,#83,#c0,#32,#27,#2a,#31
	db #35,#82,#34,#32,#83,#31,#82,#c1
	db #32,#81,#32,#83,#c0,#32,#27,#2a
	db #32,#c1,#35,#82,#c0,#35,#37,#83
	db #27,#2a,#32,#c1,#35,#82,#c0,#35
	db #33,#83,#27,#2a,#32,#c1,#35,#82
	db #c0,#35,#37,#83,#27,#2a,#32,#c1
	db #35,#82,#c0,#35,#33,#83,#29,#2a
	db #30,#c1,#32,#82,#c0,#32,#30,#83
	db #27,#29,#2a,#c1,#30,#82,#c0,#30
	db #2a,#83,#29,#2a,#30,#c1,#32,#82
	db #c0,#32,#30,#83,#27,#29,#2a,#c1
	db #30,#82,#c0,#30,#25,#83,#29,#2a
	db #30,#c1,#32,#82,#c0,#32,#30,#83
	db #27,#29,#2a,#c1,#30,#82,#c0,#30
	db #29,#83,#29,#2a,#30,#c1,#32,#82
	db #c0,#32,#30,#83,#29,#2a,#30,#82
	db #32,#83,#30,#82,#2a,#c1,#29,#83
	db #c0,#29,#f3,#83,#9c,#c0,#10,#10
	db #10,#10,#10,#10,#10,#10,#f3,#83
	db #9c,#c0,#20,#10,#10,#10,#20,#10
	db #10,#10,#f3,#82,#9c,#c0,#20,#10
	db #83,#20,#20,#82,#10,#20,#10,#83
	db #20,#20,#82,#10,#20,#10,#20,#10
	db #83,#20,#20,#82,#10,#83,#20,#20
	db #82,#10,#20,#10,#83,#20,#20,#82
	db #10,#20,#10,#83,#20,#20,#82,#10
	db #20,#10,#83,#20,#20,#82,#10,#20
	db #10,#83,#20,#20,#10,#10,#f3,#82
	db #9c,#c0,#20,#10,#83,#20,#20,#82
	db #10,#20,#10,#83,#20,#20,#82,#10
	db #20,#10,#83,#20,#20,#82,#10,#20
	db #10,#83,#20,#20,#10,#10,#f3
;---------code cleared----------
	di
	ld a,(&7445)
	cp #ff
	ret z
;
.l5f4d
.init_music
;
	ld e,a
	ld d,#00
	ld hl,l6a7d
	add hl,de
	ex de,hl
;ld a,#ff		; modified by Megachur
;ld (#7445),a
	defs 5,0		; modified by Megachur
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,de
	ld ix,l5a50
	ld b,#04
.l5f6b
	ld a,(hl)
	ld (ix+#00),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
	inc hl
	ld (ix+#02),#01
	ld (ix+#05),#00
	ld (ix+#07),#00
	ld (ix+#0a),#08
	ld de,#000b
	add ix,de
	djnz l5f6b
	ld a,(hl)
	ld (l5a4e),a
	ld a,#01
	ld (l5a4f),a
	ret
.l6a7d
	db #7c,#5a,#43,#5b,#9e,#5b,#08,#5c
	db #03,#de
;---------code cleared----------
.l8364
	di
	call l836a
	ei
	ret
.l836a
	push bc
	ld bc,#f782
	out (c),c
	pop bc
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	ld bc,#f792
	out (c),c
	ret
; #5764
; push af
; ex af,af'
; push af
; push bc
; push de
; push hl
; push ix
; ld bc,#fee8
; out (c),c
; call #5f4d
; ld hl,#743d
; inc (hl)
; ld a,(#a79f)
; or a
; call nz,#83b5
; ld (#a79e),a
; xor a
; ld (#a79f),a
; call #5832
; pop ix
; pop hl
; pop de
; pop bc
; pop af
; ex af,af'
; pop af
; ei
; ret
;
.play_music		; added by Megachur
;
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	jp real_play_music
;
.music_info
	db "Wild Streets (1990)(Titus)()",0
	db "",0

	read "music_end.asm"
