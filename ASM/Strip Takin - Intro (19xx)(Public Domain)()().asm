; Music of Strip Takin - Intro (19xx)(Public Domain)()()
; Ripped by Megachur the 29/08/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STRIPTAI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #9000

	read "music_header.asm"

;
.play_music

;
	ld a,(l9175)
	or a
	call z,l90bb
	ld a,(l9174)
	ld (l915d),a
	ld hl,l9175
	dec (hl)
	ld a,(l9170)
	ld (l9165),a
	ld hl,l9171
	dec (hl)
	call z,l911b
	ld a,(l9174)
.l9021
	inc a
	ld (l9174),a
	ld hl,l916b
	dec (hl)
	jr nz,l9038
	ld a,#05
	ld (l916b),a
	ld a,(l9021)
	xor #01
	ld (l9021),a
.l9038
	ld a,(l9180)
	or a
	call z,l90e1
	ld a,(l917e)
	ld (l915f),a
	ld a,(l917f)
	ld (l9160),a
	ld hl,l9180
	dec (hl)
	ld a,(l917a)
	ld (l9166),a
	ld hl,l917b
	dec (hl)
	call z,l9131
	ld a,(l917e)
.l905f
	inc a
.l9060
	inc a
	ld (l917e),a
	ld a,(l905f)
	xor #01
	ld (l905f),a
	ld (l9060),a
	ld a,(l918a)
	or a
	call z,l90ff
	ld a,(l9189)
	ld (l9163),a
	ld hl,l918a
	dec (hl)
	ld a,(l9189)
	or a
	jr z,l9089
	ld a,(l9185)
.l9089
	ld (l9167),a
	ld hl,l9186
	dec (hl)
	call z,l9147
	ld hl,l915d
	ld d,#00
.l9098
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
	inc hl
	inc d
	ld a,d
	cp #0d
	jr nz,l9098
	ret
.l90bb
	ld hl,(l918b)
	ld a,(hl)
	or a
	jr nz,l90c8
	ld hl,l9200	; reset music
	ld (l918b),hl
.l90c8
	ld de,l9174
	ldi
	ldi
	ld (l918b),hl
	ld hl,l916c
	ld de,l9170
	ldi
	ldi
	ldi
	ldi
	ret
.l90e1
	ld hl,(l918b)
	ld de,l917e
	ldi
	ldi
	ldi
	ld (l918b),hl
	ld hl,l9176
	ld de,l917a
	ldi
	ldi
	ldi
	ldi
	ret
.l90ff
	ld hl,(l918b)
	ld de,l9189
	ldi
	ldi
	ld (l918b),hl
	ld hl,l9181
	ld de,l9185
	ldi
	ldi
	ldi
	ldi
	ret
.l911b
	ld hl,l9172
	ld a,(l9170)
	sub (hl)
	cp #00
	jr nc,l9127
	xor a
.l9127
	ld (l9170),a
	ld a,(l9173)
	ld (l9171),a
	ret
.l9131
	ld hl,l917c
	ld a,(l917a)
	sub (hl)
	cp #00
	jr nc,l913d
	xor a
.l913d
	ld (l917a),a
	ld a,(l917d)
	ld (l917b),a
	ret
.l9147
	ld hl,l9187
	ld a,(l9185)
	sub (hl)
	cp #00
	jr nc,l9153
	xor a
.l9153
	ld (l9185),a
	ld a,(l9188)
	ld (l9186),a
	ret
.l9163 equ $ + 6
.l9160 equ $ + 3
.l915f equ $ + 2
.l915d
	db #00,#00,#00,#00,#00,#00,#00,#1c
.l916c equ $ + 7
.l916b equ $ + 6
.l9167 equ $ + 2
.l9166 equ $ + 1
.l9165
	db #00,#00,#00,#00,#00,#00,#05,#0c
.l9174 equ $ + 7
.l9173 equ $ + 6
.l9172 equ $ + 5
.l9171 equ $ + 4
.l9170 equ $ + 3
	db #0a,#01,#0f,#00,#00,#00,#00,#00
.l917c equ $ + 7
.l917b equ $ + 6
.l917a equ $ + 5
.l9176 equ $ + 1
.l9175
	db #00,#0d,#0a,#01,#01,#00,#00,#00
.l9181 equ $ + 4
.l9180 equ $ + 3
.l917f equ $ + 2
.l917e equ $ + 1
.l917d
	db #00,#00,#00,#00,#0c,#01,#02,#03
.l918b equ $ + 6
.l918a equ $ + 5
.l9189 equ $ + 4
.l9188 equ $ + 3
.l9187 equ $ + 2
.l9186 equ $ + 1
.l9185
	db #00,#00,#00,#00,#00,#00,#00,#92
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9200 equ $ + 3
	db #00,#00,#00,#5f,#3c,#7b,#01,#0a
	db #1f,#0a,#de,#01,#0a,#00,#0a,#38
	db #02,#0a,#06,#0a,#de,#01,#0a,#06
	db #0a,#7b,#01,#0a,#1f,#0a,#de,#01
	db #0a,#00,#0a,#6a,#0a,#38,#02,#0a
	db #06,#0a,#5f,#0a,#de,#01,#0a,#00
	db #0a,#59,#32,#66,#01,#0a,#1f,#0a
	db #aa,#01,#0a,#00,#0a,#38,#02,#0a
	db #06,#0a,#aa,#01,#0a,#06,#0a,#66
	db #01,#0a,#1f,#0a,#6a,#0a,#aa,#01
	db #0a,#00,#0a,#5f,#0a,#38,#02,#0a
	db #06,#0a,#59,#0a,#aa,#01,#0a,#00
	db #0a,#5f,#50,#7b,#01,#0a,#1f,#0a
	db #de,#01,#0a,#00,#0a,#38,#02,#0a
	db #06,#0a,#de,#01,#0a,#06,#0a,#7b
	db #01,#0a,#1f,#0a,#de,#01,#0a,#00
	db #0a,#38,#02,#0a,#06,#0a,#de,#01
	db #0a,#00,#0a,#8e,#50,#7b,#01,#0a
	db #1f,#0a,#de,#01,#0a,#00,#0a,#38
	db #02,#0a,#06,#0a,#de,#01,#0a,#06
	db #0a,#7b,#01,#0a,#1f,#0a,#de,#01
	db #0a,#00,#0a,#38,#02,#0a,#06,#0a
	db #de,#01,#0a,#00,#0a,#5f,#3c,#7b
	db #01,#0a,#1f,#0a,#de,#01,#0a,#00
	db #0a,#38,#02,#0a,#06,#0a,#de,#01
	db #0a,#06,#0a,#7b,#01,#0a,#1f,#0a
	db #de,#01,#0a,#00,#0a,#64,#0a,#38
	db #02,#0a,#06,#0a,#5f,#0a,#de,#01
	db #0a,#00,#0a,#47,#32,#1c,#01,#0a
	db #1f,#0a,#66,#01,#0a,#00,#0a,#aa
	db #01,#0a,#06,#0a,#66,#01,#0a,#06
	db #0a,#1c,#01,#0a,#1f,#0a,#59,#0a
	db #66,#01,#0a,#00,#0a,#50,#0a,#aa
	db #01,#0a,#06,#0a,#47,#0a,#66,#01
	db #0a,#00,#0a,#50,#50,#3f,#01,#0a
	db #1f,#0a,#aa,#01,#0a,#00,#0a,#fa
	db #01,#0a,#06,#0a,#aa,#01,#0a,#06
	db #0a,#3f,#01,#0a,#1f,#0a,#aa,#01
	db #0a,#00,#0a,#fa,#01,#0a,#06,#0a
	db #aa,#01,#0a,#00,#0a,#5f,#50,#7b
	db #01,#0a,#1f,#0a,#fa,#01,#0a,#00
	db #0a,#5a,#02,#0a,#06,#0a,#fa,#01
	db #0a,#06,#0a,#7b,#01,#0a,#1f,#0a
	db #fa,#01,#0a,#00,#0a,#5a,#02,#0a
	db #06,#0a,#fa,#01,#0a,#00,#0a,#59
	db #3c,#66,#01,#0a,#1f,#0a,#aa,#01
	db #0a,#00,#0a,#38,#02,#0a,#06,#0a
	db #aa,#01,#0a,#06,#0a,#66,#01,#0a
	db #1f,#0a,#aa,#01,#0a,#00,#0a,#6a
	db #0a,#38,#02,#0a,#06,#0a,#5f,#0a
	db #aa,#01,#0a,#00,#0a,#59,#32,#66
	db #01,#0a,#1f,#0a,#aa,#01,#0a,#00
	db #0a,#38,#02,#0a,#06,#0a,#aa,#01
	db #0a,#06,#0a,#66,#01,#0a,#1f,#0a
	db #59,#0a,#aa,#01,#0a,#00,#0a,#50
	db #0a,#38,#02,#0a,#06,#0a,#59,#0a
	db #aa,#01,#0a,#00,#0a,#5f,#50,#7b
	db #01,#0a,#1f,#0a,#de,#01,#0a,#00
	db #0a,#38,#02,#0a,#06,#0a,#de,#01
	db #0a,#06,#0a,#7b,#01,#0a,#1f,#0a
	db #de,#01,#0a,#00,#0a,#38,#02,#0a
	db #06,#0a,#de,#01,#0a,#00,#0a,#8e
	db #50,#7b,#01,#0a,#1f,#0a,#de,#01
	db #0a,#00,#0a,#38,#02,#0a,#06,#0a
	db #de,#01,#0a,#06,#0a,#7b,#01,#0a
	db #1f,#0a,#de,#01,#0a,#00,#0a,#38
	db #02,#0a,#06,#0a,#de,#01,#0a,#00
	db #0a,#77,#3c,#de,#01,#0a,#1f,#0a
	db #38,#02,#0a,#00,#0a,#cc,#02,#0a
	db #06,#0a,#38,#02,#0a,#06,#0a,#de
	db #01,#0a,#1f,#0a,#38,#02,#0a,#00
	db #0a,#7f,#0a,#cc,#02,#0a,#06,#0a
	db #77,#0a,#38,#02,#0a,#00,#0a,#6a
	db #32,#aa,#01,#0a,#1f,#0a,#38,#02
	db #0a,#00,#0a,#cc,#02,#0a,#06,#0a
	db #38,#02,#0a,#06,#0a,#aa,#01,#0a
	db #1f,#0a,#77,#0a,#38,#02,#0a,#00
	db #0a,#7f,#0a,#cc,#02,#0a,#06,#0a
	db #8e,#0a,#38,#02,#0a,#00,#0a,#7f
	db #50,#fa,#01,#0a,#1f,#0a,#5a,#02
	db #0a,#00,#0a,#f6,#02,#0a,#06,#0a
	db #5a,#02,#0a,#06,#0a,#fa,#01,#0a
	db #1f,#0a,#5a,#02,#0a,#00,#0a,#f6
	db #02,#0a,#06,#0a,#5a,#02,#0a,#00
	db #0a,#5f,#50,#fa,#01,#0a,#1f,#0a
	db #5a,#02,#0a,#00,#0a,#f6,#02,#0a
	db #06,#0a,#5a,#02,#0a,#06,#0a,#fa
	db #01,#0a,#1f,#0a,#5a,#02,#0a,#00
	db #0a,#f6,#02,#0a,#06,#0a,#5a,#02
	db #0a,#00,#0a,#00,#00,#00,#00,#00
	db #00,#00,#00,#fc,#92,#01,#50,#3f
	db #fd,#09,#31,#92,#01,#fa,#01,#fd
	db #08,#3c,#92,#fd,#0e,#12,#93,#fd
	db #0d,#58,#92,#08,#fa,#01,#0a,#00
	db #0a,#5a,#02,#0a,#06,#fd,#06,#2f
	db #93,#fd,#0e,#3c,#93,#fd,#06,#54
	db #93,#01,#59,#3c,#fd,#14,#30,#92
	db #fd,#06,#66,#93,#fd,#0d,#1c,#92
	db #00,#aa,#fd,#1e,#2a,#92,#fd,#08
	db #56,#92,#00,#50,#fd,#61,#51,#92
	db #0f,#77,#3c,#de,#01,#0a,#1f,#0a
	db #38,#02,#0a,#00,#0a,#cc,#02,#0a
	db #06,#fd,#06,#0b,#94,#fd,#0a,#18
	db #94,#00,#7f,#fd,#06,#21,#94,#00
	db #77,#fd,#06,#30,#94,#02,#6a,#32
	db #aa,#fd,#0d,#19,#94,#fd,#09,#9d
	db #93,#02,#1f,#0a,#77,#fd,#0d,#30
	db #94,#00,#8e,#fd,#07,#60,#94,#0e
	db #50,#fa,#01,#0a,#1f,#0a,#5a,#02
	db #0a,#00,#0a,#f6,#02,#0a,#06,#fd
	db #06,#59,#93,#fd,#0e,#76,#94,#fd
	db #06,#8e,#94,#00,#5f,#fd,#29,#75
	db #94,#55,#ff
;
.init_music		; added by Megachur
;
	ld hl,l9200	; reset music
	ld (l918b),hl
	ret
;
.music_info
	db "Strip Takin - Intro (19xx)(Public Domain)()",0
	db "",0

	read "music_end.asm"
