; Music of Pick'N Pile (1990)(Ubi Soft)()()
; Ripped by Megachur the 27/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PICKNPIL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #af38
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

;
.real_init_music
.init_music1
;
	call lb257		; init game over music
	ld hl,lb2ab
	jp laf47
.init_music2
	call lb257		; init menu music
	ld hl,lb312
.laf47
	push hl
	pop ix
	ld a,#b8
	ld (lb557),a
	ld c,a
	ld a,#07
	call lb287
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (laf93),hl
	ld (laf95),hl
	ld l,(ix+#02)
	ld h,(ix+#03)
	ld (lafa8),hl
	ld (lafaa),hl
	ld l,(ix+#04)
	ld h,(ix+#05)
	ld (lafbd),hl
	ld (lafbf),hl
	xor a
	ld (laf9a),a
	ld (lafaf),a
	ld (lafc4),a
	ld (laf91),a
	inc a
	ld (laf97),a
	ld (lafac),a
	ld (lafc1),a
	ret
.laf97 equ $ + 6
.laf95 equ $ + 4
.laf93 equ $ + 2
.laf91
	db #00,#00,#05,#00,#00,#00,#1d,#00
.laf9a equ $ + 1
	db #08,#ff,#00,#00,#09,#fe,#f7,#0f
.lafa8 equ $ + 7
	db #0f,#02,#02,#03,#1c,#00,#1d,#05
.lafaf equ $ + 6
.lafac equ $ + 3
.lafaa equ $ + 1
	db #00,#00,#00,#1d,#02,#09,#ff,#00
	db #00,#12,#fd,#ef,#0d,#0d,#01,#02
.lafbf equ $ + 6
.lafbd equ $ + 4
	db #03,#1c,#00,#1d,#05,#00,#00,#00
.lafc4 equ $ + 3
.lafc1
	db #1d,#04,#0a,#ff,#00,#00,#24,#fb
	db #df,#0c,#11,#05,#01,#01,#1c,#00
	db #1d
;
.play_music
.lafd2
;
	ld a,(laf91)		; play music
	or a
	jp nz,lb0aa
	ld ix,laf93
	call lafeb
	ld ix,lafa8
	call lafeb
	ld ix,lafbd
.lafeb
	dec (ix+#04)
	jp nz,lb088
	ld l,(ix+#00)
	ld h,(ix+#01)
.laff7
	ld a,(hl)
	cp #64
	jr nc,lb02d
	ld c,a
	sla c
	ld b,#00
	ld a,(ix+#0e)
	ld (ix+#0d),a
	ld a,(ix+#14)
	ld (ix+#04),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld hl,lb4a9
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (ix+#12),c
	ld (ix+#13),b
	ld a,(ix+#05)
	call lb287
	ld c,b
	call lb286
	jr lb088
.lb02d
	cp #fe
	jr nz,lb035
	pop hl
	jp lb257
.lb035
	cp #ff
	jr nz,lb041
	ld l,(ix+#02)	; reinit music bloc !
	ld h,(ix+#03)
	jr laff7
.lb041
	cp #c0
	jr nz,lb050
	inc hl
	ld a,(hl)
	add (ix+#0f)
	ld (ix+#0e),a
	inc hl
	jr laff7
.lb050
	cp #c1
	jr nz,lb054
.lb054
	cp #c2
	jr nz,lb06d
	ld a,(lb557)
	or (ix+#0a)
	and (ix+#0c)
	ld (lb557),a
	ld c,a
	ld a,#07
	call lb287
	inc hl
	jr laff7
.lb06d
	cp #c3
	jr nz,lb07f
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	inc hl
	jp laff7
.lb07f
	sub #d0
	ld (ix+#14),a
	inc hl
	jp laff7
.lb088
	dec (ix+#10)
	ret nz
	ld a,(ix+#11)
	ld (ix+#10),a
	ld a,(ix+#0d)
	or a
	jr z,lb0a1
	sub (ix+#0f)
	jr nc,lb09e
	xor a
.lb09e
	ld (ix+#0d),a
.lb0a1
	ld c,(ix+#0d)
	ld a,(ix+#06)
	jp lb287
.lb0aa
	ld a,(lb56b)
	or a
	jr z,lb0cc
	ld a,(lb56c)
	dec a
	ld (lb56c),a
	jr nz,lb0ec
	ld a,(lb56b)
	dec a
	ld (lb56b),a
	call lb595
	ld a,r
	and #0f
	add #05
	ld (lb56c),a
.lb0cc
	ld a,#07
	ld c,#9c
	call lb287
	ld a,(lb55e)
	or a
	jr z,lb0fb
	xor a
	ld (lb55e),a
	ld a,(lb55f)
	xor #01
	ld (lb55f),a
	ld c,#1f
	or a
	jr z,lb0ec
	ld c,#05
.lb0ec
	ld a,#06
	call lb287
	ld a,#0a
	ld c,#0f
	call lb287
	jp lb102
.lb0fb
	ld a,#0a
	ld c,#00
	call lb287
.lb102
	ld a,(lb560)
	or a
	jr z,lb139
	dec a
	ld (lb560),a
	ld hl,#002b
	ld a,(lb560)
	and #01
	jr nz,lb117
	add hl,hl
.lb117
	xor a
	ld c,l
	call lb287
	ld c,h
	call lb286
	ld c,#94
	ld a,#07
	call lb287
	ld hl,(lb560)
	ld de,lb247
	ld h,#00
	add hl,de
	ld c,(hl)
	ld a,#08
	call lb287
	jp lb1a7
.lb139
	ld a,(lb561)
	or a
	jr z,lb16b
	dec a
	ld (lb561),a
	xor a
	ld c,#c8
	call lb287
	ld c,#00
	call lb286
	ld a,#06
	ld c,#0f
	call lb287
	ld c,#90
	call lb286
	ld bc,(lb561)
	ld b,#00
	ld hl,lb251
	add hl,bc
	ld c,(hl)
	call lb286
	jp lb1a7
.lb16b
	ld a,(lb562)
	or a
	jr z,lb1a7
	dec a
	ld (lb562),a
	ld hl,(lb563)
	ld de,#0005
	add hl,de
	ld (lb563),hl
	xor a
	ld c,l
	call lb287
	ld c,h
	call lb286
	ld bc,(lb565)
	ld a,#06
	call lb287
	ld c,#94
	call lb286
	ld bc,(lb562)
	ld hl,lb212
	ld b,#00
	add hl,bc
	ld c,(hl)
	call lb286
	jp lb1a7
.lb1a7
	ld a,(lb566)
	or a
	jr z,lb1cc
	dec a
	ld (lb566),a
	ld hl,#0000
	and #04
	jr z,lb1bb
	ld hl,#0014
.lb1bb
	ld a,#02
	ld c,l
	call lb287
	ld c,h
	call lb286
	ld a,#09
	ld c,#0f
	jp lb287
.lb1cc
	ld a,(lb567)
	or a
	jr z,lb211
	ld a,(lb568)
	dec a
	ld (lb568),a
	jr nz,lb1f6
	ld a,#0a
	ld (lb568),a
	ld hl,#003c
	ld (lb569),hl
	ld a,(lb567)
	dec a
	ld (lb567),a
	jr nz,lb1f6
	ld a,#09
	ld c,#00
	jp lb287
.lb1f6
	ld hl,(lb569)
	ld de,#0008
	add hl,de
	ld (lb569),hl
	ld a,#02
	ld c,l
	call lb287
	ld c,h
	call lb286
	ld a,#09
	ld c,#0a
	call lb287
.lb211
	ret
.lb212
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #08,#09,#0a,#0b,#0c,#0d,#0e,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
.lb247 equ $ + 5
	db #0f,#0f,#0f,#0f,#0f,#00,#04,#08
.lb251 equ $ + 7
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#00
	db #03,#06,#09,#0c,#0f
.lb257
	xor a
	ld (lb56b),a
	ld (lb55e),a
	ld (lb560),a
	ld (lb561),a
	ld (lb567),a
	ld (lb566),a
	ld (lb562),a
	ld a,#ff
	ld (laf91),a
	ld a,#06
	ld c,#04
	call lb287
	ld c,#9c
	call lb286
	ld c,#00
	call lb286
	call lb286
.lb286
	inc a
.lb287
	di
	push bc
	push af
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
	pop af
	pop bc
	ei
	ret
.lb2ab
	dw lb2b1,lb2cf,lb2ed
.lb2b1
	db #d7,#3c,#3a,#de,#38,#38,#d7,#3a
	db #38,#37,#38,#de,#3a,#3c,#e5,#3a
	db #d7,#37,#ec,#33,#de,#00,#d7,#35
	db #33,#de,#3c,#3a,#38,#fe
.lb2cf
	db #d7,#33,#31,#de,#30,#30,#d7,#31
	db #30,#2e,#30,#de,#31,#33,#e5,#31
	db #d7,#2e,#ec,#2b,#de,#00,#d7,#2b
	db #2b,#de,#33,#31,#30,#ff
.lb2ed
	db #c3,#02,#01,#c0,#0c,#d7,#00,#00
	db #2c,#33,#30,#33,#2c,#33,#30,#33
	db #2c,#33,#30,#33,#27,#2e,#2b,#2e
	db #27,#2e,#2b,#2e,#27,#2e,#2b,#2e
	db #de,#30,#2e,#2c,#ff
.lb312
	dw lb347,lb3e3,lb318
.lb318
	db #c3,#01,#05,#c2,#c0,#0d,#de,#00
	db #d7,#00,#00,#de,#00,#d7,#00,#00
	db #de,#00,#d7,#00,#00,#de,#00,#d7
	db #00,#00,#de,#00,#d7,#00,#00,#de
	db #00,#d7,#00,#00,#00,#00,#d7,#00
	db #00,#de,#00,#d7,#00,#00,#ff
.lb347
	db #c0,#0f,#de,#33,#37,#3a,#d7,#37
	db #de,#38,#38,#d7,#3c,#de,#3f,#3c
	db #3a,#3e,#41,#d7,#3e,#de,#3f,#3f
	db #d7,#43,#ec,#3a,#ec,#00,#00,#00
	db #00,#00,#00,#00,#00,#de,#3c,#3f
	db #43,#d7,#3c,#de,#3a,#3a,#d7,#3f
	db #de,#43,#3a,#38,#3f,#43,#d7,#38
	db #de,#37,#37,#d7,#3b,#de,#3e,#3b
	db #ec,#00,#00,#00,#00,#00,#00,#00
	db #00,#e5,#43,#3f,#de,#3a,#ec,#00
	db #00,#00,#d7,#00,#3a,#3e,#41,#e5
	db #44,#43,#de,#41,#e5,#43,#3f,#de
	db #3a,#ec,#00,#00,#00,#d7,#00,#3e
	db #41,#44,#48,#de,#48,#e5,#46,#de
	db #44,#f3,#46,#d7,#48,#46,#45,#f3
	db #46,#d7,#48,#46,#45,#e5,#46,#44
	db #de,#43,#e5,#44,#43,#de,#41,#e5
	db #43,#3f,#de,#3a,#ec,#00,#00,#00
	db #00,#d7,#46,#d7,#3a,#3e,#41,#44
	db #41,#3e,#3a,#ff
.lb3e3
	db #c0,#0e,#de,#1b,#1f,#22,#d7,#1f
	db #de,#20,#20,#d7,#1b,#de,#18,#14
	db #16,#1a,#1d,#d7,#1a,#de,#1b,#1b
	db #d7,#1f,#de,#1b,#d7,#18,#16,#de
	db #1b,#1f,#22,#d7,#1f,#de,#20,#20
	db #d7,#1b,#de,#18,#14,#16,#1a,#1d
	db #d7,#1a,#ec,#1b,#d7,#00,#de,#1b
	db #d7,#18,#16,#de,#18,#18,#24,#d7
	db #18,#de,#16,#16,#d7,#16,#de,#22
	db #16,#de,#14,#14,#20,#d7,#14,#de
	db #13,#13,#d7,#13,#de,#1f,#13,#de
	db #14,#14,#20,#d7,#14,#de,#1b,#1b
	db #d7,#1b,#de,#27,#1b,#de,#14,#14
	db #20,#d7,#14,#de,#16,#d7,#16,#18
	db #1a,#1b,#1d,#1f,#20,#e5,#0f,#13
	db #de,#16,#e5,#14,#18,#de,#1b,#e5
	db #16,#1a,#de,#1d,#e5,#20,#1f,#de
	db #1d,#e5,#1b,#1f,#de,#22,#e5,#20
	db #24,#de,#27,#e5,#22,#26,#de,#29
	db #e5,#2c,#2b,#de,#29,#e5,#0f,#13
	db #de,#16,#e5,#14,#18,#de,#1b,#e5
	db #16,#1a,#de,#1d,#e5,#20,#1f,#de
	db #1d,#e5,#1b,#1f,#de,#22,#e5,#20
	db #24,#de,#27,#e5,#22,#26,#de,#29
.lb4a9 equ $ + 6
	db #e5,#2c,#2b,#de,#29,#ff,#00,#00
	db #10,#07,#ab,#06,#4b,#06,#f1,#05
	db #9b,#05,#4b,#05,#ff
	db #04,#b7,#04,#73,#04,#33,#04,#f7
	db #03,#be,#03,#88,#03,#55,#03,#26
	db #03,#f8,#02,#ce,#02,#a5,#02,#7f
	db #02,#5c,#02,#3a,#02,#1a,#02,#fb
	db #01,#df,#01,#c4,#01,#ab,#01,#93
	db #01,#7c,#01,#67,#01,#53,#01,#40
	db #01,#2e,#01,#1d,#01,#0d,#01,#fe
	db #00,#ef,#00,#e2,#00,#d5,#00,#c9
	db #00,#be,#00,#b3,#00,#a9,#00,#a0
	db #00,#97,#00,#8e,#00,#86,#00,#7f
	db #00,#78,#00,#71,#00,#6b,#00,#65
	db #00,#5f,#00,#5a,#00,#55,#00,#50
	db #00,#4b,#00,#47,#00,#43,#00,#3f
	db #00,#3c,#00,#39,#00,#35,#00,#32
	db #00,#30,#00,#2d,#00,#2a,#00,#28
	db #00,#26,#00,#24,#00,#22,#00,#20
	db #00,#1e,#00,#1c,#00,#1b,#00,#19
	db #00,#18,#00,#16,#00,#15,#00,#14
	db #00,#13,#00,#12,#00,#11,#00,#10
.lb557 equ $ + 7
	db #00,#0f,#00,#0e,#00,#0d,#00,#00
	ld a,#ff
	ld (lb55e),a
	ret
.lb565 equ $ + 7
.lb563 equ $ + 5
.lb562 equ $ + 4
.lb561 equ $ + 3
.lb560 equ $ + 2
.lb55f equ $ + 1
.lb55e
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb56c equ $ + 6
.lb56b equ $ + 5
.lb569 equ $ + 3
.lb568 equ $ + 2
.lb567 equ $ + 1
.lb566
	db #00,#00,#00,#00,#00,#00,#00
	ld a,#0a
	ld (lb560),a
	ret
	ld a,#06
	ld (lb561),a
	ret
	ld a,#06
	ld (lb567),a
	ld a,#01
	ld (lb568),a
	ret
	ld a,#0f
	ld (lb56b),a
	ld a,#01
	ld (lb56c),a
	ret
	ld a,#32
	ld (lb566),a
	ret
.lb595
	ld a,#14
	ld (lb562),a
	ld a,r
	and #1c
	ld e,a
	ld d,#00
	ld hl,lb5b2
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (lb563),de
	inc hl
	ld a,(hl)
	ld (lb565),a
	ret
.lb5b2
	dw #008c,#001f,#00a0,#000f
	dw #00b4,#000a,#0078,#000a
	dw #0096,#0014,#008c,#001f
	dw #012c,#000a,#008c,#0013
;
; #022e
;	call #b257
;	call #af41
;
.init_music
;
	or a
	jp z,init_music1
	jp init_music2
;
.music_info
	db "Pick'N Pile (1990)(Ubi Soft)()",0
	db "",0

	read "music_end.asm"
