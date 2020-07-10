; Music of Ivan 'Ironman' Stewart's Super Off Road (1990)(Virgin Mastertronic)()()
; Ripped by Megachur the 26/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "IROISSOR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #95bd
FIRST_THEME				equ 1
LAST_THEME				equ 1

	read "music_header.asm"

; See timing for playing !!!

.l95c1 equ $ + 4
.l95bd
	db #00,#00,#00,#00,#00
;
.real_play_music
;
.l95c2
	ld hl,l95bd
	ld a,(hl)
	and a
	jr z,l95e4
	ld b,(hl)
	ld (hl),#00
	ld hl,l9dce
	ld a,(hl)
	and a
	jr z,l95e0
	cp #0c
	jr nc,l95e0
	ld a,b
	cp #0c
	jr nc,l95e4
	ld a,(hl)
	cp b
	jr nc,l95e4
.l95e0
	ld a,b
	ld (l9dcf),a
.l95e4
	ld hl,(l9e0d)
	jp (hl)
.l95e8
	ld ix,l9d9f
	xor a
.l95ed
	ld (l9e0b),a
	ld a,(ix+#0d)
	and a
	jr z,l9670
	ld (ix+#0c),a
	dec a
	ld hl,l9cc7
	add a
	ld c,a
	add a
	add c
	ld e,a
	xor a
	ld (ix+#0d),a
	ld d,a
	add hl,de
	add hl,de
	ld bc,#000c
	push ix
	pop de
	ldir
	ld a,(ix+#0b)
	add a
	add a
	add a
	ld l,a
	ld h,#00
	ld de,l9c6f
	add hl,de
	ld bc,#0008
	push hl
	push ix
	pop hl
	ld de,#0010
	add hl,de
	ex de,hl
	pop hl
	ldir
	ld (ix+#0f),#01
	ld a,(ix+#04)
	ld (ix+#20),a
	ld a,(ix+#09)
	ld (ix+#21),a
	ld a,(ix+#06)
	bit 2,a
	jr nz,l9650
	ld a,(ix+#00)
	ld (ix+#07),a
	ld a,(ix+#01)
	ld (ix+#08),a
.l9650
	ld a,(ix+#10)
	ld (ix+#1f),a
	ld a,(l9e0a)
	or (ix+#0e)
	ld d,a
	ld a,(ix+#16)
	and (ix+#0e)
	cpl
	and d
	ld (l9e0a),a
	ld d,a
	ld a,#07
	call l97b2
	jr l9677
.l9670
	ld a,(ix+#0c)
	and a
	jp z,l97a3
.l9677
	ld a,(ix+#0f)
	dec a
	jr z,l969f
	dec a
	jr z,l9688
	dec a
	jr z,l96b6
	ld c,(ix+#17)
	jr l9693
.l9688
	dec (ix+#14)
	jr nz,l9690
	inc (ix+#0f)
.l9690
	ld c,(ix+#12)
.l9693
	ld a,(ix+#1f)
	sub c
	jp c,l979a
	ld (ix+#1f),a
	jr l96c0
.l969f
	dec (ix+#13)
	jr nz,l96a7
	inc (ix+#0f)
.l96a7
	ld a,(ix+#11)
	add (ix+#1f)
	jr nc,l96b1
	ld a,#ff
.l96b1
	ld (ix+#1f),a
	jr l96c0
.l96b6
	dec (ix+#15)
	jr nz,l96d4
	inc (ix+#0f)
	jr l96d4
.l96c0
	ld a,(ix+#1f)
	srl a
	srl a
	srl a
	srl a
	ld d,a
	ld a,(l9e0b)
	add #08
	call l97b2
.l96d4
	ld l,(ix+#00)
	ld h,(ix+#01)
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld a,(l9e0b)
	dec a
	jr nz,l96f2
	ld d,h
	ld a,#06
	call l97b2
.l96f2
	srl h
	rr l
	ld a,(l9e0b)
	add a
	ld e,a
	ld d,l
	call l97b2
	inc e
	ld d,h
	ld a,e
	call l97b2
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(ix+#1d)
	and a
	jr nz,l971a
	ld e,(ix+#02)
	ld d,(ix+#03)
	add hl,de
	jr l972c
.l971a
	ld b,a
	ld e,(ix+#1e)
	ld d,(ix+#1f)
	ex de,hl
	and a
	sbc hl,de
.l9725
	sra h
	rr l
	djnz l9725
	add hl,de
.l972c
	dec (ix+#21)
	jr nz,l97a3
	ld a,(ix+#09)
	ld (ix+#21),a
	ld (ix+#00),l
	ld (ix+#01),h
	dec (ix+#04)
	jp nz,l97a3
	dec (ix+#05)
	jr nz,l974f
	ld (ix+#0c),#00
	jp l979a
.l974f
	ld a,(ix+#06)
	and a
	jr z,l9792
	bit 2,a
	jr nz,l975f
	bit 1,a
	jr z,l977f
	jr nz,l9773
.l975f
	ld l,(ix+#07)
	ld h,(ix+#08)
	ld a,(ix+#00)
	ld (ix+#07),a
	ld a,(ix+#01)
	ld (ix+#08),a
	jr l978c
.l9773
	ld hl,#0000
	xor a
	sbc hl,de
	ld (ix+#02),l
	ld (ix+#03),h
.l977f
	ld a,(ix+#06)
	bit 0,a
	jr z,l9792
	ld l,(ix+#07)
	ld h,(ix+#08)
.l978c
	ld (ix+#00),l
	ld (ix+#01),h
.l9792
	ld a,(ix+#20)
	ld (ix+#04),a
	jr l97a3
.l979a
	call l97ec
	ld a,(ix+#0a)
	ld (ix+#0d),a
.l97a3
	ld bc,#0023
	add ix,bc
	ld a,(l9e0b)
	inc a
	cp #03
	jp nz,l95ed
	ret
.l97b2
	ld b,#f4
	out (c),a
	inc b
	inc b
	ld a,#c0
	out (c),a
	xor a
	out (c),a
	dec b
	dec b
	out (c),d
	inc b
	inc b
	ld a,#80
	out (c),a
	xor a
	out (c),a
	ret
	;
.stop_music
.l97cd
	;
	ld hl,l95e8
	ld (l9e0d),hl
	ld b,#f7
	ld a,#82
	out (c),a
	xor a
	ld ix,l9d9f
	call l97ec
	ld ix,l9dc2
	call l97ec
	ld ix,l9de5
.l97ec
	ld a,(l9e0a)
	or (ix+#0e)
	ld (l9e0a),a
	ld d,a
	ld a,#07
	call l97b2
	xor a
	ld (ix+#0c),a
	ld (ix+#0d),a
	ld (ix+#1d),a
	ld (l95bd),a
	ret
.l9809
	db #00
;
.init_music
;
.l980a
	ld (l95c1),a
	dec a
	ld e,a
	ld d,#00
	ld hl,l99da
	add hl,de
	ld a,(hl)
	ld (l999f),a
	ld (l9809),a
	ld hl,l99dc
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld (l9e08),hl
	ld hl,l982f
	ld (l9e0d),hl
	ret
.l982f
	ld ix,l9d9f
	ld b,#03
.l9835
	ld hl,(l9e08)
	ld a,(hl)
	cp #fe
	jp nc,l994c
	inc hl
	ld (l9e08),hl
	add a
	ld e,a
	ld d,#00
	ld hl,l99ae
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#18),e
	ld (ix+#19),d
	ld (ix+#1c),#01
	ld de,#0023
	add ix,de
	djnz l9835
	ld hl,l9864
	ld (l9e0d),hl
.l9864
	ld hl,l9809
	dec (hl)
	jp nz,l95e8
	ld a,(l999f)
	ld (hl),a
	ld ix,l9d9f
	xor a
.l9874
	ld (l999e),a
	dec (ix+#1c)
	jp nz,l993b
	ld l,(ix+#18)
	ld h,(ix+#19)
.l9883
	ld a,(hl)
	inc hl
	and a
	jr z,l98ae
	cp #c0
	jr c,l98dd
	cp #cf
	jr c,l98c3
	jr z,l98b4
	cp #e0
	jr c,l98a1
	cp #f0
	jr c,l98d4
	and #0f
	ld (ix+#1d),a
	jr l9883
.l98a1
	and #0f
	add #0b
	ld (ix+#18),l
	ld (ix+#19),h
	jp l9931
.l98ae
	ld hl,(l9e08)
	jp l982f
.l98b4
	ld a,(ix+#1a)
	ld (ix+#1c),a
	ld (ix+#18),l
	ld (ix+#19),h
	jp l993b
.l98c3
	and #0f
	ld c,a
	ld b,#00
	ex de,hl
	ld hl,l99a0
	add hl,bc
	ld a,(hl)
	ex de,hl
	ld (ix+#1a),a
	jr l9883
.l98d4
	and #0f
	add #0b
	ld (ix+#1b),a
	jr l9883
.l98dd
	ld (ix+#18),l
	ld (ix+#19),h
	ld c,a
	rrca
	rrca
	rrca
	and #1e
	ld l,a
	ld h,#00
	ld de,l9986
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,c
	and #07
	jr z,l98ff
.l98f8
	srl d
	rr e
	dec a
	jr nz,l98f8
.l98ff
	ld a,(ix+#1b)
	ld hl,l9cc7
	add a
	ld c,a
	add a
	add c
	ld c,a
	ld b,#00
	add hl,bc
	add hl,bc
	ld a,(ix+#1d)
	and a
	jr z,l9925
	ld c,(ix+#1e)
	ld b,(ix+#1f)
	ld (hl),c
	inc hl
	ld (hl),b
	ld (ix+#1e),e
	ld (ix+#1f),d
	jr l992e
.l9925
	ld (hl),e
	ld (ix+#1e),e
	inc hl
	ld (hl),d
	ld (ix+#1f),d
.l992e
	ld a,(ix+#1b)
.l9931
	inc a
	ld (ix+#0d),a
	ld a,(ix+#1a)
	ld (ix+#1c),a
.l993b
	ld bc,#0023
	add ix,bc
	ld a,(l999e)
	inc a
	cp #03
	jp nz,l9874
	jp l95e8
.l994c
	ld a,(hl)
	cp #ff
	jr z,l995a
	ld a,(l95c1)
	call l980a
	jp l95e8
.l995a
	call l9960
	jp l95e8
.l9960
	xor a
	ld (l95c1),a
	call l97cd
	ret
	call l980a	; init music
.l996b
	defs 3,0	;call #7242
	defs 3,0	;call #6cad
	jr nz,l9982
	call l95c2	; play_music
	ld hl,#1000
	defs 3,0	;call #745a	tempo
	ld a,(l95c1)
	and a
	jr nz,l996b
.l9982
	call l97cd	; stop music
	ret
.l9986
	db #e0,#ee,#80,#e1,#e0,#d4,#e0,#c8
	db #a0,#bd,#00,#b3,#e0,#a8,#80,#9f
	db #80,#9a,#00,#8e,#20,#86,#80,#7e
.l99a0 equ $ + 2
.l999f equ $ + 1
.l999e
	db #00,#00,#01,#02,#03,#04,#06,#08
	db #09,#0a,#0b,#0c,#0e,#10,#18,#20
.l99ae
	db #fd,#99,#ff,#99,#0a,#9a,#1f,#9a
	db #42,#9a,#55,#9a,#7a,#9a,#a3,#9a
	db #bb,#9a,#e0,#9a,#05,#9b,#20,#9b
	db #45,#9b,#86,#9b,#9d,#9b,#b7,#9b
	db #d0,#9b,#ea,#9b,#0c,#9c,#2b,#9c
.l99dc equ $ + 6
.l99da equ $ + 4
	db #43,#9c,#57,#9c,#03,#03,#e0,#99
	db #f9,#99,#02,#01,#03,#04,#01,#05
	db #07,#06,#08,#0a,#09,#0b,#0d,#0c
	db #0e,#0f,#0c,#0e,#11,#10,#0e,#11
	db #06,#12,#fe,#13,#14,#15,#ff,#f0
	db #00,#f0,#c5,#d2,#d2,#d2,#d2,#d2
	db #d2,#d2,#d2,#00,#c3,#d4,#c5,#d5
	db #c4,#d5,#c1,#d5,#c5,#d5,#d5,#d5
	db #c4,#d5,#c3,#d5,#d5,#d5,#c1,#d5
	db #00,#c1,#d4,#e1,#42,#62,#62,#c4
	db #72,#c3,#92,#c1,#92,#b2,#b2,#c4
	db #03,#c3,#42,#c1,#42,#62,#62,#c4
	db #72,#c3,#92,#c1,#92,#b2,#b2,#03
	db #13,#93,#42,#00,#c3,#d4,#c5,#d5
	db #d5,#d5,#d5,#d5,#c4,#d5,#c1,#d5
	db #c5,#d5,#c1,#d5,#e0,#44,#00,#c1
	db #d4,#e1,#42,#62,#62,#c4,#72,#c3
	db #92,#c1,#92,#b2,#b2,#c4,#03,#c3
	db #43,#c1,#43,#23,#13,#b2,#03,#c3
	db #13,#c1,#92,#a2,#b2,#c3,#42,#c1
	db #43,#42,#43,#00,#c3,#d2,#c1,#d5
	db #d2,#c3,#d2,#c1,#d5,#d2,#d2,#c3
	db #d5,#c1,#d5,#d2,#c3,#d5,#c1,#d5
	db #c3,#d2,#c1,#d5,#d2,#c3,#d2,#c1
	db #d5,#d2,#d2,#c3,#d5,#c1,#d5,#d2
	db #c3,#d5,#c1,#d5,#00,#c1,#d4,#e0
	db #74,#94,#a4,#b4,#25,#45,#c3,#95
	db #c1,#95,#75,#45,#c3,#75,#cb,#45
	db #cf,#c1,#d4,#45,#00,#c1,#e1,#42
	db #43,#62,#63,#73,#83,#43,#c3,#92
	db #c1,#93,#b2,#b3,#03,#04,#93,#93
	db #42,#43,#62,#63,#73,#83,#44,#c3
	db #93,#c1,#92,#73,#72,#63,#62,#72
	db #42,#00,#c3,#d2,#c1,#d5,#d2,#c3
	db #d2,#c1,#d5,#d2,#d2,#c3,#d5,#c1
	db #d5,#d2,#c3,#d5,#c1,#d5,#d2,#d6
	db #d5,#d6,#d2,#d6,#d5,#d6,#d2,#d6
	db #d5,#d6,#d2,#d6,#d5,#d6,#00,#c1
	db #d4,#e0,#45,#25,#b4,#74,#84,#c3
	db #44,#c1,#05,#15,#44,#c9,#74,#c1
	db #25,#75,#c9,#85,#c1,#94,#25,#c7
	db #35,#00,#c1,#e1,#42,#43,#62,#63
	db #73,#83,#44,#c3,#92,#c1,#93,#b2
	db #b3,#03,#04,#93,#93,#42,#43,#42
	db #c3,#43,#c1,#42,#43,#42,#b2,#b3
	db #92,#93,#72,#73,#62,#63,#00,#c1
	db #d2,#c0,#d3,#d3,#d3,#d3,#c1,#d2
	db #d2,#c0,#d3,#d3,#d3,#d3,#c1,#d2
	db #d2,#c0,#d3,#d3,#d3,#d3,#c1,#d2
	db #d2,#d2,#c0,#d3,#d3,#c1,#d2,#c1
	db #d2,#c0,#d3,#d3,#d3,#d3,#c1,#d2
	db #d2,#c0,#d3,#d3,#d3,#d3,#c1,#d2
	db #d2,#c0,#d3,#d3,#d3,#d3,#c1,#d2
	db #d2,#d2,#c0,#d3,#d3,#c1,#d2,#00
	db #c4,#e0,#84,#84,#c5,#84,#c3,#94
	db #84,#84,#c4,#74,#74,#c5,#74,#c3
	db #15,#c1,#25,#25,#35,#35,#00,#c4
	db #e1,#42,#42,#c5,#42,#c1,#62,#63
	db #72,#73,#82,#83,#c4,#92,#92,#c5
	db #92,#c1,#12,#13,#22,#23,#32,#33
	db #00,#c4,#e0,#45,#45,#c5,#45,#c3
	db #45,#45,#25,#c1,#05,#15,#25,#c7
	db #15,#c1,#94,#94,#94,#c3,#74,#74
	db #74,#00,#c3,#d2,#d5,#d2,#d5,#c1
	db #d2,#d5,#c3,#d5,#d2,#d5,#d2,#d5
	db #d2,#d5,#c1,#d2,#d5,#d2,#d5,#d2
	db #d5,#d2,#d5,#00,#c1,#d4,#e0,#25
	db #75,#85,#25,#15,#c4,#b4,#c1,#15
	db #b4,#74,#c7,#84,#c1,#75,#06,#16
	db #75,#65,#c3,#45,#c1,#b4,#b5,#94
	db #95,#74,#75,#64,#65,#00,#c1,#e1
	db #b2,#92,#72,#c4,#42,#c5,#42,#c1
	db #62,#63,#72,#73,#82,#83,#43,#23
	db #03,#c4,#92,#c5,#92,#c1,#12,#13
	db #22,#23,#32,#33,#00,#c1,#e0,#74
	db #b4,#74,#b4,#74,#c5,#25,#c1,#75
	db #75,#75,#c4,#75,#c1,#75,#45,#c4
	db #05,#c9,#06,#cf,#00,#c0,#d5,#d5
	db #c1,#d2,#d5,#d2,#d5,#d5,#d6,#d6
	db #d6,#c8,#d6,#cf,#e0,#c9,#75,#cf
	db #00,#c1,#e1,#72,#42,#22,#b1,#91
	db #c5,#71,#c1,#72,#72,#72,#c4,#72
	db #c1,#72,#42,#c4,#02,#c9,#03,#cf
.l9c6f equ $ + 1
	db #00,#ff,#00,#02,#01,#01,#02,#07
	db #42,#10,#35,#03,#08,#80,#08,#07
	db #03,#ff,#00,#0e,#01,#18,#01,#38
	db #01,#cf,#00,#27,#01,#01,#01,#38
	db #22,#7f,#20,#04,#02,#12,#02,#07
	db #02,#ef,#82,#10,#01,#03,#02,#07
	db #03,#8f,#00,#51,#01,#04,#02,#38
	db #02,#bf,#00,#51,#01,#04,#02,#38
	db #02,#00,#00,#00,#01,#01,#02,#00
	db #02,#df,#00,#41,#01,#04,#02,#38
	db #04,#bf,#00,#41,#01,#04,#02,#38
.l9cc7 equ $ + 1
	db #02,#ff,#03,#02,#00,#63,#01,#00
	db #40,#40,#01,#00,#00,#ff,#e0,#00
	db #10,#10,#01,#00,#00,#00,#00,#00
	db #00,#00,#ef,#00,#30,#01,#01,#00
	db #00,#0c,#02,#00,#03,#00,#12,#ef
	db #ff,#01,#08,#04,#30,#18,#02,#00
	db #01,#82,#08,#00,#00,#02,#05,#04
	db #00,#07,#02,#00,#01,#58,#af,#f0
	db #ff,#0f,#01,#01,#18,#04,#0c,#00
	db #02,#e0,#30,#60,#00,#43,#08,#00
	db #80,#02,#01,#00,#01,#f2,#01,#fd
	db #ff,#01,#01,#00,#5f,#07,#03,#00
	db #00,#00,#00,#20,#ef,#10,#01,#01
	db #00,#0c,#01,#00,#02,#80,#02,#e0
	db #ff,#06,#01,#00,#00,#00,#01,#00
	db #03,#00,#03,#f0,#00,#08,#21,#04
	db #00,#04,#02,#00,#01,#00,#03,#08
	db #00,#02,#52,#02,#00,#00,#01,#00
	db #04,#a3,#82,#00,#00,#06,#42,#01
	db #00,#00,#01,#00,#05,#ff,#ff,#00
	db #00,#42,#02,#01,#00,#00,#01,#00
	db #06,#00,#10,#00,#00,#00,#02,#01
	db #00,#00,#01,#00,#07,#ff,#ff,#08
	db #01,#01,#01,#01,#00,#00,#01,#00
	db #08,#8e,#20,#10,#20,#42,#02,#01
	db #00,#00,#01,#00,#09,#00,#00,#00
	db #40,#01,#01,#01,#00,#00,#01,#00
.l9d9f equ $ + 1
	db #0a,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9dc2 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9dcf equ $ + 1
.l9dce
	db #00,#00,#12,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9de5 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#24,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9e0d equ $ + 7
.l9e0b equ $ + 5
.l9e0a equ $ + 4
.l9e08 equ $ + 2
	db #00,#00,#00,#00,#3f,#00,#06,#e8
	db #95,#f6,#40,#e6,#5f,#32,#1f,#9e
;	
; #745a
; .l745a
; dec hl
; ld a,h
; or l
; jr nz,l745a
; ret
;
.play_music	; added by Megachur
;
	call play_music_test
	call play_music_test
	call play_music_test
	call play_music_test
	call play_music_test
	jp play_music_test
;
.play_music_test
;
test equ $+1
	ld a,9
	dec a
	ld (test),a
	ret nz
	ld a,9
	ld (test),a
	jp real_play_music
;
.music_info
	db "Ivan 'Ironman' Stewart's Super Off Road (1990)(Virgin Mastertronic)()",0
	db "",0

	read "music_end.asm"
