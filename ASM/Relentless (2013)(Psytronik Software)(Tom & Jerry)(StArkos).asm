; Music of Relentless (2013)(Psytronik Software)(Tom & Jerry)(StArkos)
; Ripped by Megachur the 22/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RELENTLE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #80c0
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

.l80c0	; game over
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#27,#00,#d2,#80,#db,#80
	db #e6,#80,#00,#00,#00,#00,#00,#00
	db #0d,#d4,#80,#05,#00,#99,#ff,#0f
	db #1e,#f0,#0f,#0d,#dd,#80,#02,#00
	db #64,#03,#64,#03,#64,#07,#64,#0a
	db #0d,#ea,#80,#28,#00,#00,#00,#24
	db #81,#00,#5b,#81,#5b,#81,#25,#81
	db #12,#00,#2b,#81,#5b,#81,#25,#81
	db #24,#02,#fd,#2b,#81,#5b,#81,#25
	db #81,#02,#fb,#2b,#81,#5b,#81,#25
	db #81,#02,#f9,#2b,#81,#5b,#81,#25
	db #81,#01,#00,#81,#00,#5a,#e0,#00
	db #00,#01,#00,#ba,#f1,#00,#00,#02
	db #02,#42,#0f,#02,#42,#0d,#02,#42
	db #0b,#02,#42,#09,#02,#42,#07,#02
	db #42,#05,#02,#42,#03,#0a,#42,#05
	db #02,#42,#07,#02,#42,#09,#02,#42
	db #0b,#02,#42,#0d,#02,#42,#0f,#06
	db #42,#11,#00,#42,#60,#00,#42,#80
	db #00,#00,#00
.l8163	; end
	db #41,#54,#31,#30,#01
	db #40,#42,#0f,#02,#06,#78,#00,#7f
	db #81,#88,#81,#95,#81,#af,#81,#b6
	db #81,#c0,#81,#d3,#81,#dd,#81,#00
	db #00,#00,#00,#00,#00,#0d,#81,#81
	db #01,#fe,#2c,#2c,#2c,#28,#2c,#2c
	db #2c,#28,#0d,#90,#81,#02,#fe,#30
	db #74,#0c,#38,#74,#0c,#34,#70,#0c
	db #2c,#6c,#0c,#2c,#6c,#0c,#28,#68
	db #0c,#24,#60,#0c,#0d,#81,#81,#05
	db #00,#05,#3a,#0d,#81,#81,#02,#00
	db #36,#02,#60,#0c,#20,#0d,#ba,#81
	db #01,#00,#3a,#0a,#7c,#14,#7c,#0c
	db #7c,#08,#78,#04,#74,#03,#70,#02
	db #0d,#81,#81,#03,#00,#34,#74,#03
	db #74,#07,#0d,#d5,#81,#03,#00,#34
	db #74,#04,#74,#07,#0d,#df,#81,#01
	db #00,#00,#00,#a9,#82,#00,#d0,#83
	db #d0,#83,#d0,#83,#10,#aa,#82,#34
	db #83,#02,#83,#10,#08,#00,#aa,#82
	db #34,#83,#02,#83,#00,#aa,#82,#34
	db #83,#02,#83,#00,#aa,#82,#34,#83
	db #02,#83,#00,#aa,#82,#cc,#82,#02
	db #83,#00,#aa,#82,#cc,#82,#02,#83
	db #00,#aa,#82,#24,#83,#02,#83,#00
	db #aa,#82,#24,#83,#02,#83,#0e,#05
	db #05,#f9,#aa,#82,#cc,#82,#02,#83
	db #00,#aa,#82,#cc,#82,#02,#83,#00
	db #aa,#82,#24,#83,#02,#83,#04,#f9
	db #aa,#82,#24,#83,#02,#83,#0e,#00
	db #03,#00,#aa,#82,#34,#83,#02,#83
	db #04,#05,#aa,#82,#34,#83,#02,#83
	db #0c,#00,#fd,#56,#83,#78,#83,#02
	db #83,#08,#fb,#93,#83,#b5,#83,#02
	db #83,#0a,#fe,#f9,#93,#83,#78,#83
	db #02,#83,#0a,#00,#fd,#56,#83,#78
	db #83,#02,#83,#00,#56,#83,#78,#83
	db #02,#83,#08,#fb,#93,#83,#b5,#83
	db #dc,#82,#0e,#fe,#05,#f9,#93,#83
	db #b5,#83,#dc,#82,#0e,#00,#00,#04
	db #56,#83,#78,#83,#02,#83,#01,#fc
	db #81,#00,#a2,#e1,#00,#00,#01,#02
	db #aa,#40,#a2,#4b,#b0,#41,#aa,#4b
	db #a2,#41,#b0,#4b,#ac,#41,#a2,#4b
	db #b4,#41,#ac,#4b,#ba,#41,#b4,#4b
	db #b4,#41,#ba,#4b,#c8,#e7,#00,#00
	db #02,#0a,#7b,#02,#89,#02,#85,#02
	db #83,#02,#7b,#00,#8a,#e0,#00,#00
	db #03,#02,#8a,#60,#04,#02,#72,#60
	db #05,#a2,#60,#03,#02,#8a,#60,#04
	db #8a,#60,#03,#8a,#60,#04,#8a,#60
	db #03,#02,#72,#60,#05,#02,#8a,#60
	db #04,#00,#8a,#e0,#00,#00,#03,#02
	db #72,#60,#04,#02,#33,#02,#72,#60
	db #05,#02,#8a,#60,#03,#72,#60,#05
	db #a2,#60,#03,#02,#72,#60,#04,#02
	db #72,#60,#05,#00,#d2,#e0,#00,#00
	db #02,#02,#89,#06,#93,#02,#89,#06
	db #93,#02,#89,#00,#42,#80,#08,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#9c,#e1
	db #00,#00,#01,#02,#a2,#40,#9c,#4b
	db #aa,#41,#a2,#4b,#9c,#41,#aa,#4b
	db #b4,#41,#9c,#4b,#9c,#41,#b4,#4b
	db #ba,#41,#9c,#4b,#b4,#41,#ba,#4b
	db #b4,#ef,#00,#00,#06,#02,#42,#0d
	db #02,#42,#0b,#02,#42,#09,#02,#42
	db #07,#02,#42,#05,#02,#42,#07,#02
	db #42,#0b,#00,#98,#e1,#00,#00,#01
	db #02,#a0,#40,#98,#47,#a6,#41,#a0
	db #47,#98,#41,#a6,#47,#b0,#41,#98
	db #47,#98,#41,#b0,#47,#b8,#41,#98
	db #47,#b0,#41,#b8,#47,#b0,#ef,#00
	db #00,#07,#02,#42,#0d,#02,#42,#0b
	db #02,#42,#09,#02,#42,#07,#02,#42
	db #05,#02,#42,#03,#02,#42,#07,#00
	db #42,#60,#00
;
; #83d3	; menu music
;
.l83d3
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#05,#6e,#00,#f1,#83,#fa,#83
	db #01,#84,#0b,#84,#12,#84,#25,#84
	db #2f,#84,#39,#84,#43,#84,#00,#00
	db #00,#00,#00,#00,#0d,#f3,#83,#02
	db #fe,#30,#28,#0d,#f3,#83,#02,#00
	db #36,#02,#60,#0c,#20,#0d,#05,#84
	db #05,#00,#05,#3a,#0d,#f3,#83,#01
	db #00,#3a,#0a,#7c,#14,#7c,#0c,#7c
	db #08,#78,#04,#74,#03,#70,#02,#0d
	db #f3,#83,#03,#00,#34,#74,#03,#74
	db #07,#0d,#27,#84,#03,#00,#34,#74
	db #04,#74,#07,#0d,#31,#84,#03,#00
	db #34,#74,#04,#74,#09,#0d,#3b,#84
	db #03,#00,#34,#74,#03,#74,#08,#0d
	db #45,#84,#01,#00,#00,#00,#8e,#85
	db #00,#54,#86,#54,#86,#54,#86,#1e
	db #f4,#f4,#00,#8f,#85,#a3,#85,#e4
	db #85,#10,#00,#8f,#85,#a3,#85,#be
	db #85,#06,#00,#00,#8f,#85,#a3,#85
	db #be,#85,#00,#8f,#85,#a3,#85,#be
	db #85,#00,#8f,#85,#a3,#85,#b8,#85
	db #06,#03,#03,#8f,#85,#a3,#85,#b8
	db #85,#06,#05,#05,#8f,#85,#a3,#85
	db #b8,#85,#06,#00,#00,#8f,#85,#a3
	db #85,#be,#85,#00,#8f,#85,#a3,#85
	db #be,#85,#06,#03,#03,#8f,#85,#a3
	db #85,#be,#85,#06,#05,#05,#8f,#85
	db #a3,#85,#e4,#85,#06,#00,#00,#8f
	db #85,#a3,#85,#be,#85,#10,#06,#86
	db #a3,#85,#e4,#85,#08,#10,#06,#86
	db #1a,#86,#e4,#85,#10,#00,#06,#86
	db #1a,#86,#be,#85,#00,#06,#86,#20
	db #86,#e4,#85,#10,#06,#86,#26,#86
	db #be,#85,#08,#00,#06,#86,#2c,#86
	db #e4,#85,#1a,#fc,#fc,#06,#86,#1a
	db #86,#be,#85,#10,#00,#06,#86,#1a
	db #86,#be,#85,#0a,#fb,#fb,#06,#86
	db #2c,#86,#e4,#85,#04,#fb,#06,#86
	db #1a,#86,#be,#85,#0e,#fc,#fe,#fc
	db #06,#86,#20,#86,#be,#85,#04,#00
	db #06,#86,#5c,#86,#e4,#85,#0a,#fe
	db #fe,#06,#86,#20,#86,#e4,#85,#00
	db #06,#86,#5c,#86,#be,#85,#0a,#00
	db #00,#06,#86,#1a,#86,#b8,#85,#0a
	db #f9,#f9,#06,#86,#1a,#86,#b8,#85
	db #0a,#fb,#fb,#06,#86,#2c,#86,#e4
	db #85,#04,#fb,#06,#86,#1a,#86,#be
	db #85,#0e,#00,#00,#00,#06,#86,#26
	db #86,#be,#85,#14,#f4,#06,#86,#26
	db #86,#be,#85,#01,#14,#00,#06,#86
	db #32,#86,#b8,#85,#10,#0a,#fd,#fd
	db #06,#86,#32,#86,#be,#85,#0a,#fb
	db #fb,#06,#86,#32,#86,#e4,#85,#0a
	db #f9,#f9,#8f,#85,#54,#86,#be,#85
	db #01,#5a,#84,#00,#8a,#e1,#00,#00
	db #01,#02,#63,#02,#71,#02,#7b,#02
	db #4b,#02,#63,#02,#71,#02,#7b,#00
	db #42,#80,#00,#00,#98,#69,#01,#02
	db #4b,#02,#63,#02,#71,#02,#7b,#02
	db #4b,#02,#63,#02,#71,#72,#e3,#00
	db #00,#02,#00,#8a,#e0,#00,#00,#03
	db #02,#8a,#60,#02,#02,#72,#60,#04
	db #a2,#60,#03,#02,#8a,#60,#02,#8a
	db #60,#03,#8a,#60,#02,#8a,#60,#03
	db #02,#72,#60,#04,#02,#8a,#60,#02
	db #00,#8a,#e1,#00,#00,#03,#02,#72
	db #60,#02,#02,#33,#02,#72,#60,#04
	db #02,#8a,#60,#03,#72,#60,#04,#a2
	db #60,#03,#02,#72,#60,#02,#02,#72
	db #60,#04,#00,#8a,#e1,#00,#00,#01
	db #71,#63,#63,#71,#7b,#7b,#89,#4b
	db #93,#63,#63,#71,#7b,#7b,#89,#ba
	db #e0,#00,#00,#05,#00,#b6,#e0,#00
	db #00,#06,#00,#c0,#e0,#00,#00,#07
	db #00,#be,#e0,#00,#00,#08,#00,#42
	db #80,#08,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#60,#00,#42,#80,#00,#00
	db #00,#42,#80,#00,#00,#00,#57,#56
	db #46,#44,#5e,#4e
;
; #a362 - reallocated by Megachur
;
	jp la9d6
	jp la36c
	jp laa2b
.la36b
	nop
;
.play_music
.la36c
;
	xor a
	ld (la36b),a
.la371 equ $ + 1
	ld a,#01
	dec a
	jp nz,la53d
.la377 equ $ + 1
	ld a,#01
	dec a
	jr nz,la3e3
.la37c equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,la38a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.la38a
	rra
	jr nc,la392
	ld de,la433
	ldi
.la392
	rra
	jr nc,la39a
	ld de,la498
	ldi
.la39a
	rra
	jr nc,la3a2
	ld de,la4fd
	ldi
.la3a2
	ld de,la412
	ldi
	ldi
	ld de,la477
	ldi
	ldi
	ld de,la4dc
	ldi
	ldi
	rra
	jr nc,la3bf
	ld de,la3e2
	ldi
.la3bf
	rra
	jr nc,la3ca
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la3ce),de
.la3ca
	ld (la37c),hl
.la3ce equ $ + 1
	ld hl,#0000
	ld (la3ec),hl
	ld a,#01
	ld (la3e7),a
	ld (la40d),a
	ld (la472),a
	ld (la4d7),a
.la3e2 equ $ + 1
	ld a,#01
.la3e3
	ld (la377),a
.la3e7 equ $ + 1
	ld a,#01
	dec a
	jr nz,la409
.la3ec equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,la406
	srl a
	jr nz,la3fa
	ld a,(hl)
	inc hl
.la3fa
	jr nc,la401
	ld (la36b),a
	jr la404
.la401
	ld (la53c),a
.la404
	ld a,#01
.la406
	ld (la3ec),hl
.la409
	ld (la3e7),a
.la40d equ $ + 1
	ld a,#01
	dec a
	jr nz,la46e
.la412 equ $ + 1
	ld hl,#0000
	call la882
	ld (la412),hl
	jr c,la46e
	ld a,d
	rra
	jr nc,la425
	and #0f
	ld (la5bf),a
.la425
	rl d
	jr nc,la42d
	ld (la5ad),ix
.la42d
	rl d
	jr nc,la46c
	ld a,e
.la433 equ $ + 1
	add #00
	ld (la5be),a
	ld hl,#0000
	ld (la5aa),hl
	rl d
	jr c,la44c
.la442 equ $ + 1
	ld hl,#0000
	ld a,(la5cf)
	ld (la5c7),a
	jr la469
.la44c
	ld l,b
	add hl,hl
.la44f equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (la5cf),a
	ld (la5c7),a
	ld a,(hl)
	or a
	jr z,la465
	ld (la6ad),a
.la465
	inc hl
	ld (la442),hl
.la469
	ld (la5c1),hl
.la46c
	ld a,#01
.la46e
	ld (la40d),a
.la472 equ $ + 1
	ld a,#01
	dec a
	jr nz,la4d3
.la477 equ $ + 1
	ld hl,#0000
	call la882
	ld (la477),hl
	jr c,la4d3
	ld a,d
	rra
	jr nc,la48a
	and #0f
	ld (la58b),a
.la48a
	rl d
	jr nc,la492
	ld (la579),ix
.la492
	rl d
	jr nc,la4d1
	ld a,e
.la498 equ $ + 1
	add #00
	ld (la58a),a
	ld hl,#0000
	ld (la576),hl
	rl d
	jr c,la4b1
.la4a7 equ $ + 1
	ld hl,#0000
	ld a,(la59b)
	ld (la593),a
	jr la4ce
.la4b1
	ld l,b
	add hl,hl
.la4b4 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (la59b),a
	ld (la593),a
	ld a,(hl)
	or a
	jr z,la4ca
	ld (la6ad),a
.la4ca
	inc hl
	ld (la4a7),hl
.la4ce
	ld (la58d),hl
.la4d1
	ld a,#01
.la4d3
	ld (la472),a
.la4d7 equ $ + 1
	ld a,#01
	dec a
	jr nz,la538
.la4dc equ $ + 1
	ld hl,#0000
	call la882
	ld (la4dc),hl
	jr c,la538
	ld a,d
	rra
	jr nc,la4ef
	and #0f
	ld (la55a),a
.la4ef
	rl d
	jr nc,la4f7
	ld (la548),ix
.la4f7
	rl d
	jr nc,la536
	ld a,e
.la4fd equ $ + 1
	add #00
	ld (la559),a
	ld hl,#0000
	ld (la545),hl
	rl d
	jr c,la516
.la50c equ $ + 1
	ld hl,#0000
	ld a,(la56a)
	ld (la562),a
	jr la533
.la516
	ld l,b
	add hl,hl
.la519 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (la56a),a
	ld (la562),a
	ld a,(hl)
	or a
	jr z,la52f
	ld (la6ad),a
.la52f
	inc hl
	ld (la50c),hl
.la533
	ld (la55c),hl
.la536
	ld a,#01
.la538
	ld (la4d7),a
.la53c equ $ + 1
	ld a,#01
.la53d
	ld (la371),a
	ld iy,la6c4
.la545 equ $ + 1
	ld hl,#0000
.la548 equ $ + 1
	ld de,#0000
	add hl,de
	ld (la545),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.la55a equ $ + 2
.la559 equ $ + 1
	ld de,#0000
.la55c equ $ + 1
	ld hl,#0000
	call la6cf
.la562 equ $ + 1
	ld a,#01
	dec a
	jr nz,la56b
	ld (la55c),hl
.la56a equ $ + 1
	ld a,#06
.la56b
	ld (la562),a
	ld a,lx
	ex af,af'
	ld iy,la6c2
.la576 equ $ + 1
	ld hl,#0000
.la579 equ $ + 1
	ld de,#0000
	add hl,de
	ld (la576),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.la58b equ $ + 2
.la58a equ $ + 1
	ld de,#0000
.la58d equ $ + 1
	ld hl,#0000
	call la6cf
.la593 equ $ + 1
	ld a,#01
	dec a
	jr nz,la59c
	ld (la58d),hl
.la59b equ $ + 1
	ld a,#06
.la59c
	ld (la593),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,la6c0
.la5aa equ $ + 1
	ld hl,#0000
.la5ad equ $ + 1
	ld de,#0000
	add hl,de
	ld (la5aa),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.la5bf equ $ + 2
.la5be equ $ + 1
	ld de,#0000
.la5c1 equ $ + 1
	ld hl,#0000
	call la6cf
.la5c7 equ $ + 1
	ld a,#01
	dec a
	jr nz,la5d0
	ld (la5c1),hl
.la5cf equ $ + 1
	ld a,#06
.la5d0
	ld (la5c7),a
	ex af,af'
	or lx
.la5d6
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,la6c0
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	ld a,(hl)
.la6ad equ $ + 1
	cp #ff
	ret z
	ld (la6ad),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.la6c0
	nop
	nop
.la6c2
	nop
	nop
.la6c4
	nop
	nop
.la6c6
	nop
.la6c7
	nop
	nop
	nop
	nop
	nop
.la6cc
	nop
	nop
.la6ce
	nop
.la6cf
	ld b,(hl)
	inc hl
	rr b
	jp c,la72d
	rr b
	jr c,la6fd
	ld a,b
	and #0f
	jr nz,la6e6
	ld (iy+#07),a
	ld lx,#09
	ret
.la6e6
	ld lx,#08
	sub d
	jr nc,la6ed
	xor a
.la6ed
	ld (iy+#07),a
	rr b
	call la856
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.la6fd
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,la70d
	ld (la6c6),a
	ld lx,#00
.la70d
	ld a,b
	and #0f
	sub d
	jr nc,la714
	xor a
.la714
	ld (iy+#07),a
	bit 5,c
	jr nz,la71e
	inc lx
	ret
.la71e
	rr b
	bit 6,c
	call la848
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.la72d
	rr b
	jr nc,la740
	ld a,(la5c7)
	ld c,a
	ld a,(la5cf)
	cp c
	jr nz,la740
	ld a,#fe
	ld (la6ad),a
.la740
	bit 1,b
	jp nz,la7f9
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (la6ce),a
	bit 0,b
	jr z,la7af
	bit 2,b
	call la848
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (la76f),a
	ld a,b
	exx
.la76f equ $ + 1
	jr la770
.la770
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,la78f
	inc hl
.la78f
	bit 5,a
	jr z,la79f
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.la79f
	ld (la6cc),hl
	exx
.la7a3
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (la6c6),a
	ld lx,#00
	ret
.la7af
	bit 2,b
	call la848
	ld (la6cc),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (la7c3),a
	ld a,b
	exx
.la7c3 equ $ + 1
	jr la7c4
.la7c4
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,la7f0
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.la7f0
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr la7a3
.la7f9
	bit 0,b
	jr z,la804
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp la6cf
.la804
	ld (iy+#07),#10
	bit 5,b
	jr nz,la811
	ld lx,#09
	jr la824
.la811
	ld lx,#08
	ld hx,e
	bit 2,b
	call la848
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.la824
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (la6ce),a
	rr b
	rr b
	bit 2,b
	call la848
	ld (la6cc),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (la6c6),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.la848
	jr z,la856
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.la856
	bit 4,b
	jr z,la866
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.la866
	ld a,e
	bit 3,b
	jr z,la873
	add (hl)
	inc hl
	cp #90
	jr c,la873
	ld a,#8f
.la873
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,la8b6
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.la882
	ld a,(hl)
	inc hl
	srl a
	jr c,la8a9
	sub #20
	jr c,la8b3
	jr z,la8a5
	dec a
	ld e,a
.la890
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,la89e
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.la89e
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.la8a5
	ld e,(hl)
	inc hl
	jr la890
.la8a9
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.la8b3
	add #20
	ret
.la8b6
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.la9d6
;
	ld hl,#0009
	add hl,de
	ld de,la53c
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (la44f),hl
	ld (la4b4),hl
	ld (la519),hl
	add hl,bc
	ld de,la3e2
	ldi
	ld de,la433
	ldi
	ld de,la498
	ldi
	ld de,la4fd
	ldi
	ld de,la3ce
	ldi
	ldi
	ld (la37c),hl
	ld a,#01
	ld (la371),a
	ld (la377),a
	ld a,#ff
	ld (la6ce),a
	ld hl,(la44f)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (la5c1),hl
	ld (la58d),hl
	ld (la55c),hl
	ret
;
.stop_music
.laa2b
;
	ld hl,la6c7
	ld bc,#0300
.laa31
	ld (hl),c
	inc hl
	djnz laa31
	ld a,#3f
	jp la5d6
;
; #86cc
; ld de,#83d3
; call #a9d6
;
; #98fa
; ld de,#80c0
; call #a9d6
;
;
.init_music		; added by Megachur
;
	ld de,l83d3
	or a
	jp z,real_init_music
	ld de,l80c0
	dec a
	jp z,real_init_music
	ld de,l8163
	jp real_init_music
;
.music_info
	db "Relentless (2013)(Psytronik Software)(Tom & Jerry)",0
	db "StArkos",0

	read "music_end.asm"
