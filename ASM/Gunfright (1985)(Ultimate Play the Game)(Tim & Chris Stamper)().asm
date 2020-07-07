; Music of Gunfright (1985)(Ultimate Play the Game)(Tim & Chris Stamper)()
; Ripped by Megachur the 06/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GUNFRIGH.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #8000

	read "music_header.asm"
	
.l8000
	db #00		; enable init <> 0
.l8001
	db #00
.l8002
	db #00		; theme number
.l8003
	halt		; test player
	halt
	halt
	halt
	halt
	halt
	call l800f
	jp l8003
;
.play_music
.l800f
;
	call l825c
	call l8019
	call l8c4c
	ret
.l8019
	ld a,(l8000)
	or a
	jr z,l8036
	ld (l8001),a
	ld a,#00
	ld (l8000),a
	ld de,#0000
	ld (l8bdb),de
	ld (l8bdd),de
	ld (l8bdf),de
.l8036
	call l80a8
	ld a,(l8001)
	or a
	jp m,l805d
	ld a,#ff
	ld (l8514),a
	xor a
	ld (l8515),a
	ld (l8bcd),a
	ld (l8bce),a
	ld (l8bcc),a
	ld a,#0f
	ld (l8bd5),a
	ld (l8bd6),a
	ld (l8bd7),a
.l805d
	ld a,(l8001)
	or #80
	ld (l8001),a
	and #7f
	add a
	ld l,a
	ld h,#00
	ld de,l8074
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp (hl)
.l8074
	dw l80b7,l8396,l83f5,l83f5
	dw l83f5,l83f5,l8444,l8444
	dw l849e,l849e,l849e,l8444
	dw l8444,l8396,l84fd,l8564
	dw l859c,l85a3,l85aa,l85b1
	dw l85b8,l85bf,l85c6,l85cd
	dw l8516,l853f
.l80a8
.stop_music
	ld a,(l8001)
	or a
	ret nz
	xor a
	ld (l8bd8),a
	ld (l8bd9),a
	ld (l8bda),a
.l80b7
	ret
.l80b8
	add hl,bc
	ld a,(hl)
	or a
	ret z
	add a
	ld l,a
	ld h,#00
	cp #02
	jr z,l80c9
	sla e
	ld d,#00
	add hl,de
.l80c9
	ld de,l8b06
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l8bdf),de
	ld (l8be8),de
	ld a,(l8bd7)
	ld (l8bd4),a
	ld a,#00
	ld (l8be5),a
	ld (l8bd1),a
	ret
.l80e7
	ld hl,(l8be8)
	ld a,(l8bcc)
	and e
	jr nz,l80f4
	srl h
	rr l
.l80f4
	ld (l8bdf),hl
	ret
.l80f8
	add hl,bc
	ld a,(hl)
	or a
	ret z
	add a
	ld l,a
	ld h,#00
	cp #02
	jr z,l8109
	sla e
	ld d,#00
	add hl,de
.l8109
	ld de,l8b06
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l8bdb),de
	ld a,(l8bd5)
	ld (l8bd2),a
	ld a,#00
	ld (l8be3),a
	ld (l8bcf),a
	ret
.l8123
	add hl,bc
	ld a,(hl)
	or a
	ret z
	add e
	ld (l8be6),a
	sub e
	call l8165
	ld a,(l8bd6)
	ld (l8bd3),a
	ld a,#00
	ld (l8be4),a
	ld (l8bd0),a
	ret
.l813e
	ld bc,(l8bcd)
	xor a
	or b
	or c
	jr nz,l814d
	ld a,(l8be6)
	ld (l8be7),a
.l814d
	ld a,(l8be7)
	ld hl,l8be6
	cp (hl)
	jr z,l815c
	jr nc,l815b
	inc a
	jr l815c
.l815b
	dec a
.l815c
	ld (l8be7),a
	add a
	ld l,a
	ld h,#00
	jr l8172
.l8165
	add a
	ld l,a
	ld h,#00
	cp #02
	jr z,l8172
	sla e
	ld d,#00
	add hl,de
.l8172
	ld de,l8b06
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l8bdd),de
	ld (l8bea),de
	ret
.l8182
	ld hl,(l8bea)
	ld a,(l8bcc)
	and e
	jr nz,l818f
	srl h
	rr l
.l818f
	ld (l8bdd),hl
	ret
.l8193
	ld (l81b8),a
	ld a,(l8be3)
	and a
	jr z,l81a9
	ld a,(l8bcf)
	inc a
	cp e
	jp nz,l81a5
	xor a
.l81a5
	ld (l8bcf),a
	ret nz
.l81a9
	ld a,#01
	ld (l8be3),a
	ld a,(l8bd2)
	and a
	ret z
	dec a
	ld (l8bd2),a
.l81b8 equ $ + 1
	xor #00
	ld (l8bd8),a
	ret
.l81bd
	ld (l81e2),a
	ld a,(l8be4)
	and a
	jr z,l81d3
	ld a,(l8bd0)
	inc a
	cp e
	jp nz,l81cf
	xor a
.l81cf
	ld (l8bd0),a
	ret nz
.l81d3
	ld a,#01
	ld (l8be4),a
	ld a,(l8bd3)
	and a
	ret z
	dec a
	ld (l8bd3),a
.l81e2 equ $ + 1
	xor #00
	ld (l8bd9),a
	ret
.l81e7
	ld (l820c),a
	ld a,(l8be5)
	and a
	jr z,l81fd
	ld a,(l8bd1)
	inc a
	cp e
	jp nz,l81f9
	xor a
.l81f9
	ld (l8bd1),a
	ret nz
.l81fd
	ld a,#01
	ld (l8be5),a
	ld a,(l8bd4)
	and a
	ret z
	dec a
	ld (l8bd4),a
.l820c equ $ + 1
	xor #00
	ld (l8bda),a
	ret
	ld hl,(l8bdf)
	ld a,h
	or l
	ret z
	ld a,(l8be1)
	inc a
	cp d
	jp nz,l8220
	xor a
.l8220
	ld (l8be1),a
	ret nz
	ld hl,(l8bdf)
	ld d,#00
	ld a,(l8be2)
	xor #ff
	ld (l8be2),a
	jr z,l8238
	add hl,de
	ld (l8bdf),hl
	ret
.l8238
	and a
	sbc hl,de
	ld (l8bdf),hl
	ret
.l823f
	ld bc,(l8bcd)
	ld a,(l8bcc)
	inc a
	cp e
	jp nz,l824d
	ld a,#00
.l824d
	ld (l8bcc),a
	ret
.l8251
	ld hl,(l8bcd)
	inc hl
	ld (l8bcd),hl
	and a
	sbc hl,de
	ret
.l825c
	ld a,(l8001)
	and #7f
	jr z,l8266
	cp #0e
	ret c
.l8266
	call l82c3
	ld hl,(l8317)
	dec hl
	ld (l8317),hl
	ld a,h
	or l
	jr nz,l827a
	ld a,(l8316)
	ld (l8002),a
.l827a
	ld a,(l831e)
	and #0f
	ld e,a
	ld a,(l831e)
	srl a
	srl a
	srl a
	srl a
	call l8193
	ld a,(l831a)
	dec a
	ld (l831a),a
	ret p
	ld a,(l8319)
	ld (l831a),a
	ld hl,l831c
	ld a,(l8315)
	add (hl)
	ld (l8315),a
	ld (l8c95),a
	srl a
	srl a
	srl a
	srl a
	ld (l8bdc),a
	ld a,(l8315)
	sla a
	sla a
	sla a
	sla a
	ld (l8bdb),a
	ret
.l82c3
	ld a,(l8002)
	and a
	ret z
	dec a
	sla a
	sla a
	sla a
	ld c,a
	ld b,#00
	ld hl,l831e
	add hl,bc
	ld a,(hl)
	ld (l8315),a
	inc hl
	ld a,(hl)
	ld (l8c94),a
	inc hl
	ld a,(hl)
	ld (l831e),a
	inc hl
	ld a,(hl)
	ld (l831c),a
	inc hl
	ld a,(hl)
	ld (l8319),a
	ld (l831a),a
	inc hl
	ld a,(hl)
	ld (l8316),a
	inc hl
	ld a,(hl)
	ld (l8317),a
	inc hl
	ld a,(hl)
	ld (l8318),a
	ld a,(l8bd5)
	ld (l8bd2),a
	ld a,#00
	ld (l8be3),a
	ld (l8bcf),a
	ld (l8002),a
	ld (l8bdb),a
	ret
.l8315
	db #00
.l8316
	db #00
.l8317
	db #00
.l8318
	db #00
.l8319
	db #00
.l831a
	db #00,#00
.l831c
	db #00
	db #00
.l831e
	db #00,#39,#00,#00,#00,#00,#00,#01
	db #14,#31,#01,#00,#00,#01,#de,#00
	db #10,#31,#01,#00,#00,#01,#de,#00
	db #0c,#31,#01,#00,#00,#01,#de,#00
	db #1a,#31,#03,#01,#00,#01,#0f,#27
	db #10,#31,#03,#01,#00,#01,#0f,#27
	db #14,#38,#08,#39,#00,#01,#0f,#27
	db #13,#38,#01,#23,#00,#01,#0f,#27
	db #1a,#30,#0f,#00,#01,#01,#0f,#27
	db #13,#38,#08,#3b,#00,#01,#0f,#27
	db #13,#38,#08,#41,#00,#01,#0f,#27
	db #13,#38,#08,#01,#03,#01,#0f,#27
	db #13,#38,#04,#00,#00,#01,#0f,#27
	db #c7,#31,#ff,#04,#47,#01,#4d,#01
	db #13,#38,#08,#db,#00,#01,#0f,#27
.l8396
	call l8bec
	call l813e
	call l813e
	ld e,#02
	call l8182
	ld e,#03
	call l823f
	ret nz
	call l8503
	ld a,c
	and #01
	jr nz,l83be
	ld a,c
	srl a
	ld c,a
	ld hl,l87e0
	ld e,#24
	call l80f8
.l83be
	ld a,(l8515)
	ld c,a
	ld b,#00
	ld a,(l8514)
	and a
	jr nz,l83da
	ld hl,l8846
	ld e,#24
	call l8123
	ld hl,l888a
	ld e,#18
	call l80b8
.l83da
	ld de,#00a8
	ld a,(l8001)
	cp #8d
	jr nz,l83e7
	ld de,#00cc
.l83e7
	call l8251
	ret nz
	ld a,(l8001)
	inc a
	and #7f
	ld (l8001),a
	ret
.l83f5
	call l8bec
	ld e,#02
	call l8182
	ld e,#03
	call l823f
	ret nz
	call l8503
	ld a,c
	and #01
	jr nz,l8417
	ld a,c
	srl a
	ld c,a
	ld hl,l88ce
	ld e,#24
	call l80f8
.l8417
	ld a,(l8515)
	ld c,a
	ld b,#00
	ld a,(l8514)
	and a
	jr nz,l8433
	ld hl,l88e6
	ld e,#30
	call l8123
	ld hl,l88f6
	ld e,#18
	call l80b8
.l8433
	ld de,#0030
	call l8251
	ret nz
	ld a,(l8001)
	inc a
	and #7f
	ld (l8001),a
	ret
.l8444
	call l8c02
	call l813e
	call l813e
	ld e,#02
	call l80e7
	ld e,#03
	call l823f
	ret nz
	call l8503
	ld a,(l8001)
	cp #8b
	jr z,l8471
	ld a,(l8001)
	cp #86
	jr z,l8471
	ld hl,l8906
	ld e,#24
	call l8123
.l8471
	ld a,(l8515)
	ld c,a
	ld b,#00
	ld a,(l8514)
	and a
	jr nz,l848d
	ld hl,l89c6
	ld e,#30
	call l80b8
	ld hl,l8a06
	ld e,#18
	call l80f8
.l848d
	ld de,#00c0
	call l8251
	ret nz
	ld a,(l8001)
	inc a
	and #7f
	ld (l8001),a
	ret
.l849e
	call l8c02
	call l813e
	call l813e
	ld e,#02
	call l8182
	ld e,#03
	call l823f
	ret nz
	call l8503
	ld a,(l8515)
	ld c,a
	ld b,#00
	ld a,(l8514)
	and a
	jr nz,l84ec
	ld hl,l8a86
	ld e,#18
	call l80f8
	ld hl,l8a46
	ld a,(l8001)
	cp #8a
	jr z,l84d6
	ld hl,l8a86
.l84d6
	ld e,#30
	ld a,(l8001)
	cp #88
	jr nz,l84e1
	ld e,#24
.l84e1
	call l8123
	ld hl,l8ac6
	ld e,#18
	call l80b8
.l84ec
	ld de,#00c0
	call l8251
	ret nz
	ld a,(l8001)
	inc a
	and #7f
	ld (l8001),a
	ret
.l84fd
	ld a,#01
	ld (l8001),a
	ret
.l8503
	ld a,(l8514)
	inc a
	cp #03
	jr nz,l8510
	xor a
	ld hl,l8515
	inc (hl)
.l8510
	ld (l8514),a
	ret
.l8514
	db &00
.l8515
	db &00
.l8516
	ld de,#0000
	ld (l8bdf),de
	call l8c18
	ld e,#05
	call l823f
	ret nz
	ld hl,l853b
	add hl,bc
	ld a,(hl)
	ld (l8002),a
	ld de,#0004
	call l8251
	ret nz
	ld a,#18
	ld (l8001),a
	ret
.l853b
	inc b
	inc bc
	ld (bc),a
	nop
.l853f
	call l8c18
	ld e,#02
	call l80e7
	ld e,#03
	call l823f
	ret nz
	ld a,c
	ld e,a
	ld hl,l89c6
	ld c,#00
	call l80b8
	ld de,#0037
	call l8251
	ret nz
	ld a,#00
	ld (l8001),a
	ret
.l8564
	call l8c18
	ld e,#06
	call l8182
	ld e,#03
	call l80e7
	ld a,(l85df)
	ld e,a
	call l823f
	ret nz
	ld hl,l85de
	ld a,c
	or (hl)
	ld c,a
	ld hl,l85e0
	ld e,#30
	call l8123
	ld hl,l86e0
	ld e,#18
	call l80b8
	ld de,#0020
	call l8251
	ret nz
	xor a
	ld (l8001),a
	ret
	nop
.l859c
	ld e,#0a
	ld a,#00
	jp l85d1
.l85a3
	ld e,#06
	ld a,#20
	jp l85d1
.l85aa
	ld e,#05
	ld a,#40
	jp l85d1
.l85b1
	ld e,#09
	ld a,#60
	jp l85d1
.l85b8
	ld e,#08
	ld a,#80
	jp l85d1
.l85bf
	ld e,#06
	ld a,#a0
	jp l85d1
.l85c6
	ld e,#09
	ld a,#c0
	jp l85d1
.l85cd
	ld e,#06
	ld a,#e0
.l85d1
	ld (l85de),a
	ld a,e
	ld (l85df),a
	ld a,#0f
	ld (l8000),a
	ret
.l85de
	db #00
.l85df
	db #00
.l85e0
	db #00,#08,#0d,#0f,#11,#0d,#12,#11
	db #0f,#00,#00,#00,#0d,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#00,#0d,#08,#0a,#08,#05,#08
	db #0d,#00,#0d,#08,#0a,#08,#05,#08
	db #0d,#00,#00,#0d,#11,#0f,#00,#00
	db #0d,#00,#14,#00,#19,#00,#00,#00
	db #19,#00,#19,#19,#19,#00,#19,#19
	db #19,#00,#19,#19,#19,#00,#19,#00
	db #1e,#00,#00,#00,#22,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #20,#00,#1c,#19,#1c,#00,#19,#14
	db #00,#14,#19,#1c,#20,#20,#1e,#1c
	db #19,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#08,#0d,#0f,#11,#0d,#0c,#0a
	db #12,#12,#12,#12,#12,#11,#0f,#0d
	db #0c,#0d,#0f,#0d,#11,#14,#19,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#00,#00,#00,#0a,#00,#00,#0a
	db #0a,#00,#00,#00,#0d,#00,#00,#0c
	db #0c,#00,#00,#0a,#0a,#00,#00,#09
	db #0a,#00,#00,#00,#00,#00,#00,#00
	db #16,#18,#19,#16,#18,#19,#00,#00
	db #00,#16,#19,#16,#19,#18,#00,#16
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #25,#2a,#25,#2a,#25,#00,#00,#00
	db #00,#00,#00,#00,#21,#00,#00,#00
	db #23,#00,#00,#00,#1e,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l86e0
	db #00,#0d,#11,#14,#0d,#00,#00,#00
	db #0b,#00,#00,#00,#09,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#19,#0d,#19,#0a,#16,#0b,#17
	db #0d,#19,#0d,#19,#0a,#16,#08,#14
	db #06,#12,#06,#12,#08,#14,#08,#14
	db #0d,#19,#0d,#19,#0d,#00,#00,#00
	db #0d,#00,#0d,#0d,#0d,#00,#0d,#0d
	db #0d,#00,#0d,#0d,#0d,#00,#0d,#00
	db #12,#00,#00,#00,#16,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#19,#0b,#17,#0a,#16,#09,#15
	db #08,#14,#08,#14,#08,#14,#0a,#0c
	db #0d,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0d,#11,#11,#08,#11,#10,#0f
	db #16,#16,#0d,#16,#0f,#0d,#11,#11
	db #08,#0a,#0c,#0d,#11,#14,#19,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#00,#00,#00,#0a,#00,#00,#0a
	db #0a,#00,#00,#00,#0d,#00,#00,#0c
	db #0c,#00,#00,#0a,#0a,#00,#00,#09
	db #0a,#00,#00,#00,#00,#00,#00,#00
	db #22,#00,#20,#00,#1e,#00,#1d,#1c
	db #00,#00,#00,#00,#1b,#00,#00,#16
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #19,#1e,#19,#1e,#19,#00,#00,#00
	db #00,#00,#00,#00,#15,#00,#00,#00
	db #17,#00,#00,#00,#12,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l87e0
	db #19,#1b,#1c,#19,#1b,#1c,#19,#1b
	db #1c,#19,#1b,#1c,#19,#1b,#1c,#19
	db #1b,#1c,#19,#1b,#1c,#19,#1b,#1c
	db #19,#1b,#1c,#19,#1b,#1c,#19,#1b
	db #1c,#19,#1b,#1c,#19,#1b,#1c,#19
	db #1b,#1c,#19,#1b,#1c,#19,#1b,#1c
	db #18,#19,#1b,#18,#19,#1b,#18,#19
	db #1b,#18,#19,#1b,#19,#1b,#1c,#19
	db #1b,#1c,#19,#1b,#1c,#19,#1b,#1c
	db #1b,#1c,#1e,#1b,#1c,#1e,#1b,#1c
	db #1e,#1b,#1c,#1e,#00,#00,#00,#00
	db #00,#00,#14,#00,#00,#00,#00,#00
	db #14,#15,#16,#17,#18,#19
.l8846
	db #14,#10,#0d,#10,#14,#10,#0d,#10
	db #16,#13,#0f,#13,#16,#13,#0f,#13
	db #17,#14,#10,#14,#17,#14,#10,#14
	db #19,#16,#12,#16,#19,#16,#12,#16
	db #1b,#18,#14,#18,#1b,#18,#14,#18
	db #1c,#19,#15,#19,#1c,#19,#15,#19
	db #1e,#1b,#17,#1b,#1e,#1b,#17,#1b
	db #00,#00,#00,#00,#19,#00,#00,#00
	db #18,#17,#16,#15
.l888a
	db #0d,#19,#0d,#19,#0d,#19,#0d,#19
	db #0d,#19,#0d,#19,#0d,#19,#0d,#19
	db #0d,#19,#0d,#19,#0d,#19,#0d,#19
	db #0d,#19,#0d,#19,#0d,#19,#0d,#19
	db #0d,#19,#0d,#19,#0d,#19,#0d,#19
	db #0d,#19,#0d,#19,#0d,#19,#0d,#19
	db #0d,#19,#0d,#19,#0c,#17,#0a,#15
	db #00,#00,#00,#00,#0d,#00,#00,#00
	db #00,#00,#00,#00
.l88ce
	db #1c,#1e,#20,#1c,#1e,#20,#1b,#1c
	db #1e,#1b,#1c,#1e,#18,#19,#1b,#18
	db #19,#1b,#18,#19,#1b,#18,#19,#1b
.l88e6
	db #1e,#1b,#14,#1b,#1c,#19,#14,#19
	db #1b,#18,#14,#18,#1b,#14,#12,#14
.l88f6
	db #08,#14,#08,#14,#08,#14,#08,#14
	db #08,#14,#06,#12,#04,#10,#03,#0f
.l8906
	db #1c,#00,#1e,#00,#20,#00,#21,#00
	db #22,#00,#23,#00,#24,#00,#25,#00
	db #27,#00,#28,#00,#2a,#00,#2c,#00
	db #2d,#00,#2e,#00,#2f,#00,#30,#00
	db #31,#00,#30,#00,#31,#00,#30,#00
	db #31,#00,#30,#00,#31,#00,#30,#00
	db #31,#00,#30,#00,#2f,#00,#2e,#00
	db #2d,#00,#2c,#00,#2b,#00,#2a,#00
	db #29,#00,#28,#00,#27,#00,#26,#00
	db #25,#00,#24,#00,#23,#00,#22,#00
	db #21,#00,#20,#00,#1f,#00,#20,#00
	db #1f,#00,#20,#00,#1f,#00,#20,#00
	db #00,#00,#00,#20,#00,#00,#1f,#00
	db #00,#19,#00,#00,#1f,#00,#00,#00
	db #00,#00,#20,#00,#00,#19,#00,#00
	db #00,#00,#00,#20,#00,#00,#1f,#00
	db #00,#19,#00,#00,#1f,#00,#00,#00
	db #00,#00,#20,#00,#00,#19,#00,#00
	db #00,#00,#00,#20,#00,#00,#1f,#00
	db #00,#19,#00,#00,#1f,#00,#00,#00
	db #00,#00,#20,#00,#00,#1b,#00,#00
	db #00,#00,#00,#20,#00,#00,#1f,#00
	db #00,#1b,#00,#00,#1f,#00,#00,#00
	db #00,#00,#20,#00,#00,#00,#00,#00
.l89c6
	db #20,#00,#1c,#19,#1c,#00,#19,#14
	db #00,#14,#19,#1c,#20,#00,#1e,#1c
	db #1e,#00,#1b,#17,#1b,#00,#17,#12
	db #00,#12,#17,#1b,#1e,#00,#1c,#1b
	db #1c,#00,#19,#15,#19,#00,#15,#10
	db #00,#10,#15,#19,#1c,#00,#1b,#19
	db #19,#00,#00,#00,#00,#00,#18,#16
	db #18,#00,#18,#00,#19,#00,#1b,#00
.l8a06
	db #0d,#19,#0d,#19,#0d,#19,#0d,#19
	db #0d,#19,#0d,#19,#0d,#19,#0d,#18
	db #0b,#17,#0b,#17,#0b,#17,#0b,#17
	db #0b,#17,#0b,#17,#0b,#17,#0b,#16
	db #09,#15,#09,#15,#09,#15,#09,#15
	db #09,#15,#09,#15,#09,#15,#09,#12
	db #08,#14,#08,#14,#08,#14,#08,#14
	db #08,#14,#06,#12,#04,#10,#03,#0f
.l8a46
	db #17,#00,#17,#19,#17,#00,#14,#00
	db #17,#17,#17,#19,#17,#00,#14,#00
	db #14,#00,#12,#1e,#00,#00,#00,#1c
	db #19,#1c,#1e,#19,#1c,#1e,#19,#1c
	db #17,#00,#17,#19,#17,#00,#14,#00
	db #17,#17,#17,#19,#17,#00,#14,#00
	db #12,#00,#10,#1c,#00,#00,#00,#19
	db #17,#19,#1c,#17,#19,#1c,#17,#19
.l8a86
	db #23,#00,#20,#1c,#20,#00,#1c,#17
	db #00,#17,#1c,#20,#23,#23,#21,#20
	db #23,#00,#1e,#1b,#1e,#00,#1b,#17
	db #00,#17,#1b,#1e,#23,#23,#21,#20
	db #23,#00,#21,#20,#21,#00,#20,#1c
	db #00,#1c,#1c,#1c,#20,#00,#21,#00
	db #23,#00,#21,#20,#21,#00,#20,#1c
	db #00,#1c,#1c,#1c,#20,#00,#21,#00
.l8ac6
	db #10,#1c,#10,#1c,#10,#1c,#10,#1c
	db #10,#1c,#10,#1c,#10,#1c,#10,#1c
	db #0b,#17,#0b,#17,#0b,#17,#0b,#17
	db #0b,#17,#0b,#17,#0b,#17,#0b,#17
	db #0e,#1a,#0e,#1a,#0e,#1a,#0e,#1a
	db #0e,#1a,#0e,#1a,#0e,#1a,#0e,#1a
	db #09,#15,#09,#15,#09,#15,#09,#15
	db #09,#15,#09,#15,#09,#15,#09,#15
.l8b06
	db #00,#00,#00,#00,#00,#10,#1a,#0f
	db #41,#0e,#74,#0d,#b3,#0c,#fd,#0b
	db #50,#0b,#ae,#0a,#14,#0a,#83,#09
	db #fb,#08,#7a,#08,#00,#08,#8d,#07
	db #21,#07,#ba,#06,#59,#06,#fe,#05
	db #a8,#05,#57,#05,#0a,#05,#c2,#04
	db #7d,#04,#3d,#04,#00,#04,#c7,#03
	db #90,#03,#5d,#03,#2d,#03,#ff,#02
	db #d4,#02,#ab,#02,#85,#02,#61,#02
	db #3f,#02,#1e,#02,#00,#02,#e3,#01
	db #c8,#01,#af,#01,#96,#01,#80,#01
	db #6a,#01,#56,#01,#43,#01,#30,#01
	db #1f,#01,#0f,#01,#00,#01,#f2,#00
	db #e4,#00,#d7,#00,#cb,#00,#c0,#00
	db #b5,#00,#ab,#00,#a1,#00,#98,#00
	db #90,#00,#88,#00,#80,#00,#79,#00
	db #71,#00,#6c,#00,#66,#00,#60,#00
	db #5b,#00,#55,#00,#51,#00,#4c,#00
	db #48,#00,#44,#00,#40,#00,#3c,#00
	db #39,#00,#36,#00,#33,#00,#30,#00
	db #2d,#00,#2b,#00,#28,#00,#26,#00
	db #24,#00,#22,#00,#20,#00,#1e,#00
	db #1c,#00,#1b,#00,#19,#00,#18,#00
	db #17,#00,#15,#00,#14,#00,#13,#00
	db #12,#00,#11,#00,#10,#00
.l8bcc
	db #00
.l8bcd
	db #00
.l8bce
	db #00
.l8bcf
	db #00
.l8bd0
	db #00
.l8bd1
	db #00
.l8bd2
	db #00
.l8bd3
	db #00
.l8bd4
	db #00
.l8bd5
	db #0f
.l8bd6
	db #0f
.l8bd7
	db #08
.l8bd8
	db #00
.l8bd9
	db #00
.l8bda
	db #00
.l8bdb
	db #00
.l8bdc
	db #00
.l8bdd
	db #00,#00
.l8bdf
	db #00,#00
.l8be1
	db #00
.l8be2
	db #00
.l8be3
	db #00
.l8be4
	db #00
.l8be5
	db #00
.l8be6
	db #00
.l8be7
	db #00
.l8be8
	db #00,#00
.l8bea
	db #00,#00
.l8bec
	ld a,#00
	ld e,#01
	call l8193
	ld a,#00
	ld e,#04
	call l81bd
	ld a,#00
	ld e,#04
	call l81e7
	ret
.l8c02
	ld a,#00
	ld e,#02
	call l8193
	ld a,#00
	ld e,#04
	call l81bd
	ld a,#00
	ld e,#04
	call l81e7
	ret
.l8c18
	ld a,#00
	ld e,#03
	call l81bd
	ld a,#00
	ld e,#03
	call l81e7
	ret
	ld a,#04
	ld e,#01
	call l81bd
	ld a,#04
	ld e,#01
	call l81bd
	ld a,#00
	ld e,#01
	call l81e7
	ret
	ld a,#07
	ld e,#0f
	call l81bd
	ld a,#07
	ld e,#0f
	call l81e7
	ret
.l8c4c
	ld hl,(l8bdb)
	ld a,#00
	call l8c96
	ld hl,(l8bdd)
	ld a,#02
	call l8c96
	ld hl,(l8bdf)
	ld a,#04
	call l8c96
	ld a,(l8c95)
	ld c,a
	ld a,#06
	call l8ca2
	ld a,(l8bd8)
	ld c,a
	ld a,#08
	call l8ca2
	ld a,(l8bd9)
	ld c,a
	ld a,#09
	call l8ca2
	ld a,(l8bda)
	ld c,a
	ld a,#0a
	call l8ca2
	ld a,(l8c94)
	and #3f
	ld c,a
	ld a,#07
	call l8ca2
	ret
.l8c95 equ $ + 1
.l8c94
	jr c,l8c96
.l8c96
	ld c,l
	ld e,a
	call l8ca2
	ld a,e
	inc a
	ld c,h
	call l8ca2
	ret
.l8ca2
	push bc
	di
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
	ei
	pop bc
	ret
;
; #021b
; ld a,#01
; ld (#8000),a	; init !
;
.init_music
;
	ld (l8002),a	; added by Megachur
	ld a,#01
	ld (l8000),a
	jp play_music	; added by Megachur
;
.music_info
	db "Gunfright (1985)(Ultimate Play the Game)(Tim & Chris Stamper)",0
	db "",0

	read "music_end.asm"
