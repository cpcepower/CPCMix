; Music of Sontag Beat (2021)(Public Domain)(Glafouk)()
; Ripped by Megachur the 19/03/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SONTAGBE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #8000

	read "music_header.asm"

	jp l8006	; init
	jp l8028	; play
;
.real_init_music
.l8006
;
	inc hl
	ld a,(hl)
	inc hl
	ld de,#0004
.l800c
	add hl,de
	sub #03
	jr z,l8013
	jr nc,l800c
.l8013
	ld (l803a),hl
	ld a,#b7
	ld (l80c7),a
	ld (l80d8),a
	ld (l80e9),a
	ld hl,#0001
	ld (l802d),hl
	ret
;
.play_music
.l8028
;
	ld (l8159),sp
.l802d equ $ + 1
	ld hl,#0001
	dec hl
	ld a,l
	or h
	jr z,l8039
	ld (l802d),hl
	jr l8061
.l803a equ $ + 1
.l8039
	ld sp,#0000
	pop hl
	ld a,l
	or h
	jr nz,l8044
	pop hl		; reset music
	ld sp,hl
	pop hl
.l8044
	ld (l802d),hl
	pop hl
	ld (l806c),hl
	pop hl
	ld (l8086),hl
	pop hl
	ld (l80a0),hl
	ld (l803a),sp
	ld a,#01
	ld (l807c),a
	ld (l8096),a
	jr l8066
.l8062 equ $ + 1
.l8061
	ld a,#01
	dec a
	jr nz,l8078
.l8066
	ld a,#b7
	ld (l80c7),a
.l806c equ $ + 1
	ld sp,#0000
	dec sp
	pop af
	pop hl
	ld (l806c),sp
	ld (l80c5),hl
.l8078
	ld (l8062),a
.l807c equ $ + 1
	ld a,#01
	dec a
	jr nz,l8092
	ld a,#b7
	ld (l80d8),a
.l8086 equ $ + 1
	ld sp,#0000
	dec sp
	pop af
	pop hl
	ld (l8086),sp
	ld (l80d6),hl
.l8092
	ld (l807c),a
.l8096 equ $ + 1
	ld a,#01
	dec a
	jr nz,l80ac
	ld a,#b7
	ld (l80e9),a
.l80a0 equ $ + 1
	ld sp,#0000
	dec sp
	pop af
	pop hl
	ld (l80a0),sp
	ld (l80e7),hl
.l80ac
	ld (l8096),a
	ld hl,#0008
	ld de,#f4f6
	ld bc,#f690
	ld a,#c0
	out (c),a
	ex af,af'
	exx
	ld bc,#e0ff
	ld sp,l83b0
.l80c5 equ $ + 1
	ld hl,#0000
.l80c7
	or a
	jp l815c
	ld a,#37
	ld (l80c7),a
	ld (l80c5),hl
	srl b
.l80d6 equ $ + 1
	ld hl,#0000
.l80d8
	or a
	jp l815c
	ld a,#37
	ld (l80d8),a
	ld (l80d6),hl
	rr b
.l80e7 equ $ + 1
	ld hl,#0000
.l80e9
	or a
	jp l815c
	ld a,#37
	ld (l80e9),a
	ld (l80e7),hl
	ld a,b
	exx
	inc h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	dec h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld hl,l83ac
	dec b
	outi
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	ld a,#0b
	ld b,d
	out (c),a
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc a
	ld b,d
	out (c),a
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	ld a,(hl)
.l8141 equ $ + 1
	cp #ff
	jr z,l8158
	ld (l8141),a
	ld b,d
	ld l,#0d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
.l8159 equ $ + 1
.l8158
	ld sp,#0000
	ret
.l815c
	ld a,(hl)
	inc hl
	jp c,l826a
	rra
	jr c,l81bf
	rra
	jr c,l8189
	rra
	jr nc,l8171
	ld de,l83ac
	ldi
	res 5,b
.l8171
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	inc h
	inc h
	exx
	set 2,b
	ret
.l8189
	rra
	jr nc,l8191
	set 7,a
	ld (l8141),a
.l8191
	rra
	jr nc,l819b
	ld de,l83ac
	ldi
	res 5,b
.l819b
	and #0f
	ld (l83af),a
	ld de,l83ad
	ldi
	ldi
	set 2,b
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	inc h
	inc h
	exx
	ret
.l81bf
	rra
	jr c,l820a
	rra
	jr nc,l81cc
	ld de,l83ac
	ldi
	res 5,b
.l81cc
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	ret
.l820a
	rra
	jr nc,l8212
	set 7,a
	ld (l8141),a
.l8212
	rra
	jr nc,l821c
	ld de,l83ac
	ldi
	res 5,b
.l821c
	and #0f
	ld (l83af),a
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	ld de,l83ad
	ldi
	ldi
	ret
.l8264
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
.l826a
	rra
	jr c,l82a2
	rra
	jp c,l82ff
	ld e,a
	and #03
	cp #02
	jr z,l8264
	set 2,b
	ld a,e
	rra
	jr nc,l8292
	and #0f
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	exx
.l8292
	exx
	inc l
	inc h
	inc h
	exx
	bit 5,e
	ret z
	ld a,(hl)
	ld (l83ac),a
	inc hl
	res 5,b
	ret
.l82a2
	rra
	jp c,l8333
	ld e,a
	and #0f
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	bit 4,e
	jr z,l82d4
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	exx
.l82d4
	bit 5,e
	jr nz,l82dd
	exx
	inc h
	inc h
	exx
	ret
.l82dd
	ld a,(hl)
	inc hl
	exx
	inc h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	rla
	ret nc
	res 5,b
	rla
	ret nc
	ld de,l83ac
	ldi
	ret
.l82ff
	rla
	ld e,a
	and #0e
	ld (l83af),a
	set 2,b
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	inc h
	inc h
	exx
	ld a,e
	rla
	rla
	jr nc,l8327
	ld de,l83ad
	ldi
.l8327
	rla
	jr nc,l832f
	ld de,l83ae
	ldi
.l832f
	rla
	jr c,l8398
	ret
.l8333
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	rra
	jr nc,l834e
	ld de,l83ad
	ldi
.l834e
	rra
	jr nc,l8356
	ld de,l83ae
	ldi
.l8356
	rra
	jr nc,l836f
	ld e,a
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	exx
	ld a,e
.l836f
	rra
	jr nc,l838a
	ld e,a
	ld a,(hl)
	inc hl
	exx
	inc h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	dec h
	exx
	ld a,e
.l838a
	exx
	inc h
	inc h
	exx
	rra
	jr nc,l8396
	ld de,l83af
	ldi
.l8396
	rra
	ret nc
.l8398
	ld a,(hl)
	inc hl
	rra
	jr nc,l83a2
	set 7,a
	ld (l8141),a
.l83a2
	rra
	ret nc
	res 5,b
	rra
	ret nc
	ld (l83ac),a
	ret
.l83b0 equ $ + 4
.l83af equ $ + 3
.l83ae equ $ + 2
.l83ad equ $ + 1
.l83ac
	db #00,#00,#00,#00,#cb,#80,#dc,#80
	db #ed,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l8400
	db #80,#03,#40,#42,#0f,#00,#cc,#00
	db #04,#90,#04,#90,#04,#90,#78,#00
	db #b1,#8e,#a1,#8f,#01,#90,#78,#00
	db #54,#8e,#ca,#8d,#01,#90,#78,#00
	db #b1,#8e,#a1,#8f,#01,#90,#78,#00
	db #f7,#8d,#38,#8f,#01,#90,#78,#00
	db #b1,#8e,#a1,#8f,#bc,#86,#78,#00
	db #54,#8e,#ca,#8d,#aa,#86,#78,#00
	db #b1,#8e,#a1,#8f,#bc,#86,#78,#00
	db #11,#8f,#1e,#8e,#ce,#86,#78,#00
	db #b1,#8e,#db,#88,#61,#87,#78,#00
	db #54,#8e,#7b,#88,#43,#87,#78,#00
	db #b1,#8e,#db,#88,#61,#87,#78,#00
	db #f7,#8d,#3e,#89,#22,#87,#78,#00
	db #b1,#8e,#d2,#8e,#61,#87,#78,#00
	db #54,#8e,#75,#8e,#43,#87,#78,#00
	db #b1,#8e,#d2,#8e,#61,#87,#78,#00
	db #11,#8f,#6a,#8d,#7c,#87,#78,#00
	db #2c,#8c,#d2,#8e,#9d,#87,#78,#00
	db #65,#8c,#75,#8e,#d3,#87,#78,#00
	db #c5,#8c,#d2,#8e,#9d,#87,#78,#00
	db #c6,#8b,#6a,#8d,#e3,#86,#78,#00
	db #2c,#8c,#d2,#8e,#0c,#88,#78,#00
	db #65,#8c,#75,#8e,#d3,#87,#78,#00
	db #c5,#8c,#d2,#8e,#0c,#88,#78,#00
	db #2b,#8d,#6a,#8d,#42,#88,#78,#00
	db #2c,#8c,#a1,#8f,#0e,#89,#78,#00
	db #65,#8c,#ca,#8d,#ab,#88,#78,#00
	db #c5,#8c,#a1,#8f,#0e,#89,#78,#00
	db #c6,#8b,#1e,#8e,#71,#89,#78,#00
	db #2c,#8c,#db,#88,#0e,#89,#78,#00
	db #65,#8c,#7b,#88,#ab,#88,#78,#00
	db #c5,#8c,#db,#88,#0e,#89,#78,#00
	db #2b,#8d,#3e,#89,#71,#89,#78,#00
	db #2c,#8c,#d2,#8e,#13,#8a,#78,#00
	db #65,#8c,#75,#8e,#dd,#89,#78,#00
	db #c5,#8c,#d2,#8e,#13,#8a,#78,#00
	db #c6,#8b,#6a,#8d,#a7,#89,#78,#00
	db #2c,#8c,#d2,#8e,#13,#8a,#78,#00
	db #65,#8c,#75,#8e,#dd,#89,#78,#00
	db #c6,#8b,#d2,#8e,#13,#8a,#78,#00
	db #2b,#8d,#6a,#8d,#43,#8a,#78,#00
	db #b1,#8e,#a1,#8f,#79,#8a,#78,#00
	db #54,#8e,#ca,#8d,#88,#8a,#78,#00
	db #b1,#8e,#a1,#8f,#97,#8a,#78,#00
	db #f7,#8d,#38,#8f,#a6,#8a,#78,#00
	db #b1,#8e,#a1,#8f,#05,#8f,#78,#00
	db #54,#8e,#ca,#8d,#a5,#8e,#78,#00
	db #b1,#8e,#a1,#8f,#05,#8f,#78,#00
	db #11,#8f,#1e,#8e,#b5,#8a,#78,#00
	db #2c,#8c,#d2,#8e,#4e,#8b,#78,#00
	db #65,#8c,#75,#8e,#12,#8b,#78,#00
	db #c5,#8c,#d2,#8e,#4e,#8b,#78,#00
	db #c6,#8b,#6a,#8d,#d6,#8a,#78,#00
	db #2c,#8c,#d2,#8e,#4e,#8b,#78,#00
	db #65,#8c,#75,#8e,#12,#8b,#78,#00
	db #c5,#8c,#d2,#8e,#4e,#8b,#78,#00
	db #2b,#8d,#6a,#8d,#8a,#8b,#78,#00
	db #2c,#8c,#a1,#8f,#4e,#8b,#78,#00
	db #65,#8c,#ca,#8d,#12,#8b,#78,#00
	db #c5,#8c,#a1,#8f,#4e,#8b,#78,#00
	db #c6,#8b,#38,#8f,#d6,#8a,#78,#00
	db #2c,#8c,#a1,#8f,#4e,#8b,#78,#00
	db #65,#8c,#ca,#8d,#12,#8b,#78,#00
	db #c5,#8c,#a1,#8f,#4e,#8b,#78,#00
	db #2b,#8d,#1e,#8e,#8a,#8b,#78,#00
	db #2c,#8c,#d2,#8e,#04,#8d,#78,#00
	db #65,#8c,#75,#8e,#9e,#8c,#78,#00
	db #c5,#8c,#d2,#8e,#04,#8d,#78,#00
	db #c6,#8b,#6a,#8d,#05,#8c,#78,#00
	db #2c,#8c,#d2,#8e,#04,#8d,#78,#00
	db #65,#8c,#75,#8e,#9e,#8c,#78,#00
	db #c5,#8c,#d2,#8e,#04,#8d,#78,#00
	db #2b,#8d,#6a,#8d,#a0,#8d,#78,#00
	db #b1,#8e,#a1,#8f,#05,#8f,#78,#00
	db #54,#8e,#ca,#8d,#a5,#8e,#78,#00
	db #b1,#8e,#a1,#8f,#05,#8f,#78,#00
	db #f7,#8d,#1e,#8e,#6e,#8f,#78,#00
	db #b1,#8e,#d2,#8e,#05,#8f,#78,#00
	db #54,#8e,#75,#8e,#a5,#8e,#78,#00
	db #b1,#8e,#d2,#8e,#05,#8f,#78,#00
	db #11,#8f,#38,#8f,#6e,#8f,#78,#00
	db #83,#8f,#a1,#8f,#01,#90,#78,#00
	db #cb,#8f,#e6,#8f,#01,#90,#78,#00
	db #01,#90,#01,#90,#01,#90,#00,#00
	db #9e,#86,#1e,#36,#91,#1e,#42,#91
	db #0f,#4a,#91,#0f,#88,#91,#0f,#90
	db #91,#0f,#98,#91,#1e,#36,#91,#1e
	db #42,#91,#0f,#a0,#91,#0f,#a0,#91
	db #0f,#a8,#91,#0f,#98,#91,#1e,#36
	db #91,#1e,#4a,#91,#0f,#a0,#91,#0f
	db #a8,#91,#0f,#b0,#91,#09,#90,#91
	db #06,#98,#91,#09,#36,#91,#06,#c6
	db #91,#03,#36,#91,#06,#cd,#90,#06
	db #36,#91,#03,#4a,#91,#06,#5a,#91
	db #06,#a0,#91,#09,#fd,#90,#06,#4a
	db #91,#09,#e5,#90,#06,#18,#92,#06
	db #a8,#91,#03,#b1,#92,#03,#a8,#91
	db #03,#b1,#92,#06,#b0,#91,#09,#cd
	db #90,#03,#90,#91,#06,#e5,#90,#06
	db #98,#91,#0f,#36,#91,#09,#36,#91
	db #06,#36,#91,#09,#4a,#91,#0f,#a0
	db #91,#15,#4a,#91,#09,#a8,#91,#06
	db #a8,#91,#0f,#b0,#91,#09,#90,#91
	db #06,#98,#91,#0f,#36,#91,#09,#36
	db #91,#06,#36,#91,#09,#42,#91,#0f
	db #b8,#91,#15,#4a,#91,#0f,#88,#91
	db #0f,#90,#91,#09,#98,#91,#06,#b0
	db #91,#0f,#36,#91,#09,#36,#91,#06
	db #36,#91,#09,#42,#91,#0f,#b8,#91
	db #15,#52,#91,#0f,#a8,#91,#0f,#b0
	db #91,#0f,#98,#91,#0f,#36,#91,#09
	db #36,#91,#06,#36,#91,#09,#4a,#91
	db #0f,#a0,#91,#15,#4a,#91,#09,#a8
	db #91,#06,#a8,#91,#0f,#b0,#91,#09
	db #a9,#92,#06,#c7,#93,#09,#36,#91
	db #06,#e5,#90,#03,#36,#91,#06,#18
	db #92,#06,#36,#91,#03,#42,#91,#06
	db #c6,#91,#06,#b8,#91,#09,#cd,#90
	db #06,#52,#91,#09,#e5,#90,#06,#cd
	db #90,#06,#a8,#91,#09,#b1,#92,#06
	db #b0,#91,#09,#c6,#91,#06,#98,#91
	db #09,#cd,#90,#09,#36,#91,#06,#5a
	db #91,#03,#36,#91,#06,#fd,#90,#06
	db #36,#91,#03,#42,#91,#06,#e5,#90
	db #06,#b8,#91,#09,#fd,#90,#06,#4a
	db #91,#09,#cd,#90,#06,#c6,#91,#06
	db #88,#91,#09,#cd,#90,#06,#90,#91
	db #09,#5a,#91,#03,#98,#91,#06,#c6
	db #91,#06,#b0,#91,#09,#36,#91,#06
	db #fd,#90,#03,#36,#91,#06,#cf,#93
	db #06,#36,#91,#03,#42,#91,#06,#fd
	db #90,#06,#b8,#91,#09,#5a,#91,#06
	db #52,#91,#09,#e5,#90,#06,#cd,#90
	db #06,#a8,#91,#09,#b1,#92,#06,#b0
	db #91,#09,#c6,#91,#06,#98,#91,#09
	db #fd,#90,#09,#36,#91,#06,#c6,#91
	db #03,#36,#91,#06,#fd,#90,#06,#36
	db #91,#03,#4a,#91,#06,#18,#92,#06
	db #a0,#91,#09,#5a,#91,#06,#4a,#91
	db #09,#fd,#90,#06,#e5,#90,#09,#a8
	db #91,#06,#a8,#91,#06,#b0,#91,#09
	db #e5,#90,#03,#a9,#92,#06,#cf,#93
	db #06,#c7,#93,#09,#d6,#92,#06,#4e
	db #92,#09,#15,#91,#06,#15,#91,#09
	db #ed,#92,#06,#4e,#92,#09,#15,#91
	db #06,#4e,#92,#09,#d6,#92,#06,#4e
	db #92,#09,#15,#91,#06,#15,#91,#09
	db #ed,#92,#06,#15,#91,#09,#15,#91
	db #06,#15,#91,#09,#c0,#91,#0c,#c6
	db #91,#03,#2b,#93,#06,#16,#93,#09
	db #c0,#91,#06,#2b,#93,#09,#cd,#90
	db #0f,#c0,#91,#06,#b1,#92,#09,#c0
	db #91,#06,#c0,#91,#09,#16,#93,#06
	db #16,#93,#03,#7e,#92,#06,#c6,#91
	db #06,#2b,#93,#09,#d6,#92,#06,#4e
	db #92,#09,#15,#91,#06,#15,#91,#09
	db #ed,#92,#06,#4e,#92,#09,#15,#91
	db #06,#4e,#92,#09,#d6,#92,#06,#4e
	db #92,#09,#15,#91,#06,#15,#91,#09
	db #ed,#92,#03,#15,#91,#03,#15,#91
	db #09,#15,#91,#06,#15,#91,#09,#c0
	db #91,#0f,#c6,#91,#03,#2b,#93,#03
	db #c9,#94,#03,#16,#93,#0c,#7e,#92
	db #09,#e5,#90,#0f,#de,#91,#06,#f0
	db #93,#09,#c0,#91,#06,#c0,#91,#09
	db #16,#93,#06,#16,#93,#03,#2b,#93
	db #06,#b1,#92,#06,#2b,#93,#09,#c4
	db #90,#06,#4e,#92,#09,#15,#91,#06
	db #15,#91,#09,#4e,#92,#06,#4e,#92
	db #09,#15,#91,#06,#4e,#92,#09,#4e
	db #92,#06,#4e,#92,#09,#15,#91,#06
	db #15,#91,#09,#ed,#92,#03,#15,#91
	db #03,#15,#91,#09,#ed,#92,#06,#15
	db #91,#09,#fa,#91,#0c,#c6,#91,#03
	db #c0,#91,#06,#16,#93,#09,#2b,#93
	db #06,#c0,#91,#09,#e5,#90,#06,#c0
	db #91,#09,#5a,#91,#06,#fd,#90,#03
	db #c0,#91,#06,#e5,#90,#06,#c0,#91
	db #09,#16,#93,#06,#16,#93,#03,#7e
	db #92,#06,#5a,#91,#06,#de,#91,#09
	db #e5,#90,#06,#46,#93,#09,#e5,#90
	db #09,#18,#92,#06,#cd,#90,#06,#e5
	db #90,#09,#39,#93,#0f,#c6,#91,#06
	db #4c,#93,#03,#2b,#93,#06,#fd,#90
	db #06,#2b,#93,#03,#c0,#91,#06,#e5
	db #90,#06,#16,#93,#03,#7e,#92,#06
	db #5a,#91,#06,#c0,#91,#09,#cd,#90
	db #06,#0b,#94,#09,#cd,#90,#09,#e5
	db #90,#06,#cd,#90,#06,#18,#92,#09
	db #40,#93,#0f,#5a,#91,#06,#39,#93
	db #03,#2b,#93,#06,#cd,#90,#06,#2b
	db #93,#03,#c0,#91,#06,#cd,#90,#06
	db #16,#93,#03,#7e,#92,#06,#b1,#92
	db #06,#de,#91,#09,#fd,#90,#06,#39
	db #93,#09,#fd,#90,#09,#5a,#91,#06
	db #cd,#90,#06,#e5,#90,#09,#46,#93
	db #0f,#fd,#90,#06,#11,#94,#09,#2b
	db #93,#06,#2b,#93,#09,#c0,#91,#06
	db #16,#93,#03,#7e,#92,#06,#40,#93
	db #06,#c0,#91,#09,#e5,#90,#06,#46
	db #93,#09,#e5,#90,#09,#18,#92,#06
	db #cd,#90,#06,#e5,#90,#09,#4c,#93
	db #0f,#5a,#91,#06,#17,#94,#03,#2b
	db #93,#06,#e5,#90,#06,#2b,#93,#03
	db #c0,#91,#06,#cf,#93,#06,#16,#93
	db #03,#7e,#92,#06,#fd,#90,#06,#c0
	db #91,#4b,#c4,#90,#09,#22,#91,#06
	db #22,#91,#0f,#f4,#91,#0f,#fa,#91
	db #4b,#c4,#90,#09,#22,#91,#06,#22
	db #91,#0f,#00,#92,#0f,#06,#92,#4b
	db #c4,#90,#09,#22,#91,#06,#22,#91
	db #0f,#0c,#92,#0f,#12,#92,#4b,#c4
	db #90,#09,#fa,#91,#06,#fa,#91,#0f
	db #0c,#92,#0f,#12,#92,#2d,#cd,#90
	db #0f,#18,#92,#12,#5a,#91,#03,#b8
	db #91,#03,#5a,#91,#06,#b8,#91,#09
	db #fd,#90,#03,#b8,#91,#06,#5a,#91
	db #03,#52,#91,#09,#5a,#91,#03,#36
	db #91,#06,#e5,#90,#06,#36,#91,#09
	db #52,#91,#06,#52,#91,#09,#4a,#91
	db #06,#4c,#93,#09,#36,#91,#06,#46
	db #93,#03,#36,#91,#06,#cd,#90,#06
	db #39,#93,#03,#36,#91,#06,#c6,#91
	db #06,#11,#94,#09,#90,#91,#06,#40
	db #93,#03,#52,#91,#06,#b1,#92,#06
	db #4c,#93,#03,#36,#91,#06,#e5,#90
	db #06,#36,#91,#09,#b8,#91,#06,#b8
	db #91,#09,#36,#91,#06,#40,#93,#09
	db #4a,#91,#06,#39,#93,#03,#42,#91
	db #06,#fd,#90,#06,#46,#93,#03,#52
	db #91,#06,#18,#92,#06,#11,#94,#09
	db #52,#91,#06,#40,#93,#03,#88,#91
	db #06,#fd,#90,#06,#46,#93,#03,#52
	db #91,#06,#fd,#90,#06,#52,#91,#09
	db #52,#91,#06,#36,#91,#09,#b8,#91
	db #06,#46,#93,#09,#52,#91,#06,#1d
	db #94,#03,#52,#91,#06,#5a,#91,#06
	db #39,#93,#03,#52,#91,#06,#cd,#90
	db #06,#40,#93,#09,#52,#91,#06,#39
	db #93,#03,#b8,#91,#06,#5a,#91,#06
	db #46,#93,#03,#88,#91,#06,#c6,#91
	db #06,#90,#91,#09,#52,#91,#06,#88
	db #91,#09,#90,#91,#06,#40,#93,#09
	db #36,#91,#06,#46,#93,#03,#36,#91
	db #06,#b1,#92,#06,#39,#93,#03,#36
	db #91,#06,#c6,#91,#06,#46,#93,#09
	db #b8,#91,#06,#4c,#93,#03,#4a,#91
	db #06,#23,#94,#06,#17,#94,#09,#58
	db #93,#06,#7a,#91,#03,#74,#94,#06
	db #38,#94,#06,#58,#93,#06,#7a,#91
	db #03,#74,#94,#06,#3e,#94,#06,#9b
	db #93,#03,#d3,#94,#06,#06,#92,#09
	db #5e,#93,#06,#5e,#92,#09,#64,#93
	db #06,#5e,#93,#06,#5e,#92,#03,#71
	db #93,#06,#50,#94,#06,#5e,#93,#03
	db #dd,#94,#06,#6a,#92,#0f,#cd,#90
	db #09,#6b,#93,#06,#cd,#90,#09,#6b
	db #93,#06,#8f,#93,#09,#18,#92,#06
	db #62,#94,#0f,#5a,#91,#0f,#2f,#92
	db #06,#48,#92,#09,#fd,#90,#09,#2f
	db #92,#06,#2f,#92,#09,#58,#93,#06
	db #7a,#91,#03,#e2,#94,#06,#7d,#93
	db #06,#58,#93,#06,#7a,#91,#03,#38
	db #94,#06,#74,#94,#09,#58,#93,#06
	db #3e,#94,#09,#5e,#93,#06,#5e,#92
	db #09,#71,#93,#06,#5e,#93,#09,#5e
	db #92,#06,#64,#93,#06,#5e,#93,#03
	db #dd,#94,#06,#58,#93,#09,#58,#93
	db #06,#7a,#91,#03,#e2,#94,#06,#7d
	db #93,#06,#58,#93,#06,#7a,#91,#03
	db #7d,#93,#06,#7a,#94,#06,#64,#92
	db #09,#7d,#93,#09,#5e,#93,#06,#5e
	db #92,#09,#83,#93,#06,#5e,#93,#06
	db #5e,#92,#09,#89,#93,#06,#70,#92
	db #03,#64,#93,#06,#64,#92,#0f,#e5
	db #90,#09,#8f,#93,#06,#e5,#90,#09
	db #6b,#93,#06,#8f,#93,#09,#5a,#91
	db #06,#6b,#93,#0f,#cd,#90,#0f,#48
	db #92,#09,#48,#92,#06,#8c,#94,#09
	db #fd,#90,#06,#2f,#92,#09,#58,#93
	db #06,#7a,#91,#03,#74,#94,#06,#3e
	db #94,#06,#58,#93,#06,#7a,#91,#03
	db #7d,#93,#06,#3e,#94,#06,#9b,#93
	db #03,#7d,#93,#06,#06,#92,#09,#5e
	db #93,#06,#5e,#92,#09,#83,#93,#06
	db #5e,#93,#09,#5e,#92,#03,#50,#94
	db #03,#71,#93,#06,#5e,#93,#03,#dd
	db #94,#06,#6a,#92,#0f,#e5,#90,#06
	db #6b,#93,#09,#e5,#90,#09,#2f,#92
	db #06,#8c,#94,#09,#5a,#91,#06,#8f
	db #93,#0f,#fd,#90,#0f,#48,#92,#09
	db #2f,#92,#06,#48,#92,#09,#5a,#91
	db #06,#95,#93,#09,#58,#93,#06,#7a
	db #91,#03,#74,#94,#06,#38,#94,#06
	db #58,#93,#06,#7a,#91,#03,#74,#94
	db #06,#3e,#94,#06,#06,#92,#03,#d3
	db #94,#06,#9b,#93,#09,#5e,#93,#06
	db #5e,#92,#09,#64,#93,#06,#5e,#93
	db #06,#5e,#92,#03,#71,#93,#06,#50
	db #94,#06,#6a,#92,#03,#dd,#94,#06
	db #5e,#93,#09,#d6,#92,#06,#98,#94
	db #09,#15,#91,#06,#15,#91,#03,#ed
	db #92,#06,#8b,#92,#06,#a4,#94,#09
	db #15,#91,#06,#98,#94,#09,#d6,#92
	db #06,#84,#92,#09,#15,#91,#06,#15
	db #91,#09,#ed,#92,#03,#15,#91,#03
	db #15,#91,#09,#ed,#92,#06,#15,#91
	db #0f,#cd,#90,#06,#95,#93,#09,#fd
	db #90,#09,#95,#93,#06,#48,#92,#06
	db #18,#92,#09,#2f,#92,#0f,#5a,#91
	db #06,#6b,#93,#09,#5a,#91,#06,#2f
	db #92,#09,#fd,#90,#06,#8c,#94,#09
	db #5a,#91,#09,#4e,#92,#06,#4e,#92
	db #09,#15,#91,#06,#4e,#92,#0f,#4e
	db #92,#0f,#15,#91,#09,#4e,#92,#06
	db #4e,#92,#09,#15,#91,#06,#4e,#92
	db #09,#4e,#92,#03,#15,#91,#03,#15
	db #91,#09,#15,#91,#06,#15,#91,#09
	db #58,#93,#0f,#7a,#91,#06,#58,#93
	db #0f,#7a,#91,#09,#9b,#93,#06,#06
	db #92,#09,#5e,#93,#0f,#5e,#92,#06
	db #5e,#93,#09,#5e,#92,#06,#50,#94
	db #09,#5e,#93,#06,#6a,#92,#09,#4e
	db #92,#06,#4e,#92,#09,#15,#91,#06
	db #4e,#92,#09,#4e,#92,#03,#15,#91
	db #03,#15,#91,#09,#15,#91,#06,#15
	db #91,#09,#d6,#92,#06,#d6,#92,#09
	db #15,#91,#06,#4e,#92,#09,#d6,#92
	db #03,#15,#91,#03,#15,#91,#09,#ed
	db #92,#06,#ed,#92,#09,#58,#93,#0f
	db #7a,#91,#06,#58,#93,#0f,#7a,#91
	db #0f,#64,#92,#09,#5e,#93,#0f,#5e
	db #92,#06,#5e,#93,#0f,#5e,#92,#09
	db #70,#92,#06,#64,#92,#09,#d6,#92
	db #06,#98,#94,#09,#15,#91,#06,#15
	db #91,#03,#ed,#92,#0c,#84,#92,#09
	db #15,#91,#06,#a4,#94,#09,#d6,#92
	db #06,#8b,#92,#09,#15,#91,#06,#15
	db #91,#09,#ed,#92,#06,#15,#91,#09
	db #15,#91,#06,#15,#91,#2d,#e5,#90
	db #0f,#5a,#91,#2d,#cd,#90,#0f,#fd
	db #90,#09,#58,#93,#0f,#7a,#91,#06
	db #58,#93,#0f,#7a,#91,#0f,#6a,#92
	db #09,#5e,#93,#0f,#5e,#92,#06,#5e
	db #93,#0f,#5e,#92,#09,#5e,#93,#06
	db #58,#93,#09,#d6,#92,#06,#98,#94
	db #09,#15,#91,#06,#15,#91,#03,#ed
	db #92,#0c,#8b,#92,#09,#15,#91,#06
	db #b0,#94,#09,#d6,#92,#06,#a4,#94
	db #09,#15,#91,#06,#15,#91,#09,#ed
	db #92,#03,#15,#91,#03,#15,#91,#09
	db #15,#91,#06,#15,#91,#2d,#e5,#90
	db #0f,#5a,#91,#2d,#fd,#90,#0f,#5a
	db #91,#09,#58,#93,#0f,#7a,#91,#06
	db #58,#93,#0f,#7a,#91,#09,#06,#92
	db #06,#9b,#93,#09,#5e,#93,#0f,#5e
	db #92,#06,#5e,#93,#09,#5e,#92,#06
	db #50,#94,#09,#6a,#92,#06,#5e,#93
	db #09,#4e,#92,#06,#4e,#92,#09,#15
	db #91,#06,#4e,#92,#09,#4e,#92,#03
	db #15,#91,#03,#15,#91,#09,#15,#91
	db #06,#15,#91,#09,#15,#91,#06,#4e
	db #92,#09,#15,#91,#06,#4e,#92,#09
	db #15,#91,#03,#15,#91,#03,#15,#91
	db #09,#15,#91,#06,#15,#91,#2d,#cd
	db #90,#0f,#18,#92,#15,#5a,#91,#09
	db #5a,#91,#0c,#fd,#90,#09,#5a,#91
	db #09,#5a,#91,#09,#58,#93,#0f,#7a
	db #91,#06,#58,#93,#0f,#7a,#91,#0f
	db #6a,#92,#09,#5e,#93,#0f,#5e,#92
	db #06,#5e,#93,#0f,#5e,#92,#0f,#70
	db #92,#09,#4e,#92,#06,#4e,#92,#09
	db #15,#91,#06,#4e,#92,#0f,#4e,#92
	db #0f,#15,#91,#09,#4e,#92,#06,#4e
	db #92,#09,#15,#91,#06,#4e,#92,#09
	db #4e,#92,#06,#4e,#92,#09,#15,#91
	db #06,#15,#91,#09,#5e,#92,#06,#5e
	db #92,#09,#5e,#92,#06,#5e,#92,#0f
	db #5e,#92,#0f,#5e,#92,#12,#7a,#91
	db #06,#c0,#91,#24,#22,#91,#09,#4e
	db #92,#06,#4e,#92,#09,#15,#91,#06
	db #4e,#92,#0f,#4e,#92,#0f,#15,#91
	db #09,#4e,#92,#06,#4e,#92,#2d,#15
	db #91,#78,#c4,#90,#06,#c4,#90,#06
	db #c4,#90,#06,#c4,#90,#06,#c4,#90
	db #01,#c4,#90,#01,#c4,#90,#01,#c4
	db #90,#01,#c4,#90,#05,#c4,#90,#05
	db #c4,#90,#05,#c4,#90,#05,#c4,#90
	db #01,#c4,#90,#01,#c4,#90,#01,#c4
	db #90,#01,#c4,#90,#04,#c4,#90,#04
	db #c4,#90,#04,#c4,#90,#04,#c4,#90
	db #01,#c4,#90,#01,#c4,#90,#01,#c4
	db #90,#01,#c4,#90,#03,#c4,#90,#03
	db #c4,#90,#03,#c4,#90,#03,#c4,#90
	db #01,#c4,#90,#01,#c4,#90,#01,#c4
	db #90,#01,#c4,#90,#02,#c4,#90,#02
	db #c4,#90,#02,#c4,#90,#02,#c4,#90
	db #01,#c4,#90,#01,#c4,#90,#01,#c4
	db #90,#01,#c4,#90,#02,#c4,#90,#02
	db #c4,#90,#02,#c4,#90,#02,#c4,#90
	db #03,#c4,#90,#03,#c4,#90,#03,#c4
	db #90,#03,#c4,#90,#04,#c4,#90,#04
	db #c4,#90,#04,#c4,#90,#04,#c4,#90
	db #05,#c4,#90,#05,#c4,#90,#05,#c4
	db #90,#05,#c4,#90,#06,#c4,#90,#06
	db #c4,#90,#06,#c4,#90,#06,#c4,#90
	db #06,#c4,#90,#06,#c4,#90,#06,#c4
	db #90,#06,#c4,#90,#00,#04,#08,#c5
	db #90,#00,#08,#c5,#90,#83,#03,#00
	db #1b,#00,#13,#0b,#13,#0f,#13,#13
	db #13,#18,#13,#19,#13,#17,#13,#15
	db #13,#13,#08,#e0,#90,#83,#01,#00
	db #18,#00,#13,#09,#13,#0d,#13,#11
	db #13,#15,#13,#16,#13,#14,#13,#12
	db #13,#10,#08,#f8,#90,#83,#fe,#ff
	db #10,#00,#33,#04,#00,#13,#07,#13
	db #0b,#13,#0e,#03,#13,#0c,#13,#0a
	db #13,#08,#08,#10,#91,#7c,#01,#ec
	db #01,#dc,#01,#c4,#01,#ac,#01,#08
	db #c5,#90,#79,#5f,#00,#39,#35,#31
	db #2d,#29,#25,#21,#1d,#19,#15,#11
	db #0d,#09,#05,#08,#c5,#90,#83,#2f
	db #00,#2f,#00,#03,#03,#01,#01,#08
	db #c5,#90,#83,#28,#00,#28,#00,#08
	db #3b,#91,#83,#35,#00,#35,#00,#08
	db #3b,#91,#83,#20,#00,#20,#00,#08
	db #3b,#91,#83,#ff,#ff,#12,#00,#33
	db #05,#00,#13,#09,#13,#0c,#13,#10
	db #03,#13,#0e,#13,#0c,#13,#0a,#08
	db #6d,#91,#83,#ff,#ff,#12,#00,#08
	db #5f,#91,#79,#be,#00,#08,#25,#91
	db #83,#35,#00,#35,#00,#08,#3b,#91
	db #83,#1b,#00,#1b,#00,#08,#3b,#91
	db #83,#18,#00,#18,#00,#08,#3b,#91
	db #83,#14,#00,#14,#00,#08,#3b,#91
	db #83,#3f,#00,#3f,#00,#08,#3b,#91
	db #83,#10,#00,#10,#00,#08,#3b,#91
	db #83,#12,#00,#12,#00,#08,#3b,#91
	db #83,#24,#00,#24,#00,#08,#3b,#91
	db #79,#2f,#00,#08,#25,#91,#83,#05
	db #00,#20,#00,#13,#0e,#13,#12,#13
	db #17,#13,#1c,#13,#1e,#13,#1c,#13
	db #1a,#13,#18,#08,#d9,#91,#79,#20
	db #00,#08,#25,#91,#83,#ff,#ff,#12
	db #00,#08,#5f,#91,#83,#fe,#ff,#10
	db #00,#08,#02,#91,#79,#3c,#00,#08
	db #25,#91,#79,#3f,#00,#08,#25,#91
	db #79,#6a,#00,#08,#25,#91,#79,#7f
	db #00,#08,#25,#91,#79,#50,#00,#08
	db #25,#91,#79,#47,#00,#08,#25,#91
	db #83,#00,#00,#14,#00,#13,#07,#13
	db #0a,#13,#0e,#13,#12,#03,#13,#10
	db #13,#0e,#13,#0c,#08,#2a,#92,#69
	db #5f,#00,#31,#2d,#29,#25,#21,#1d
	db #19,#15,#11,#0d,#09,#05,#01,#01
	db #83,#01,#00,#18,#00,#08,#ea,#90
	db #69,#6a,#00,#08,#32,#92,#54,#03
	db #08,#c5,#90,#7c,#01,#08,#17,#91
	db #79,#be,#00,#08,#25,#91,#79,#d5
	db #00,#08,#25,#91,#79,#fd,#00,#08
	db #25,#91,#79,#1c,#01,#08,#25,#91
	db #79,#9f,#00,#08,#25,#91,#83,#05
	db #00,#20,#00,#08,#cb,#91,#79,#24
	db #00,#08,#25,#91,#79,#f4,#03,#3d
	db #08,#87,#92,#79,#fc,#04,#08,#87
	db #92,#83,#fe,#ff,#10,#00,#08,#02
	db #91,#83,#01,#00,#18,#00,#08,#ea
	db #90,#83,#03,#00,#1b,#00,#08,#d2
	db #90,#83,#0a,#00,#0a,#00,#08,#3b
	db #91,#83,#06,#00,#24,#00,#13,#10
	db #13,#15,#13,#1a,#13,#20,#13,#22
	db #13,#20,#13,#1e,#13,#1c,#83,#05
	db #00,#20,#00,#08,#cb,#91,#83,#ff
	db #ff,#12,#00,#08,#5f,#91,#7d,#06
	db #de,#01,#fd,#7e,#02,#fd,#24,#03
	db #79,#bc,#f9,#70,#04,#08,#c5,#90
	db #7c,#01,#08,#17,#91,#7d,#0b,#38
	db #02,#f9,#18,#c2,#0a,#f5,#c3,#c1
	db #09,#f5,#a4,#c2,#08,#f1,#70,#c4
	db #07,#e9,#a4,#c2,#06,#e1,#fa,#c1
	db #05,#d9,#70,#c4,#04,#91,#c4,#03
	db #79,#2f,#00,#08,#25,#91,#79,#28
	db #00,#08,#25,#91,#00,#08,#c5,#90
	db #54,#03,#08,#c5,#90,#79,#3f,#00
	db #08,#25,#91,#79,#35,#00,#08,#25
	db #91,#83,#00,#00,#14,#00,#08,#1d
	db #92,#69,#3f,#00,#35,#08,#3c,#93
	db #69,#47,#00,#08,#3c,#93,#69,#5f
	db #00,#08,#3c,#93,#69,#6a,#00,#08
	db #3c,#93,#79,#5f,#00,#08,#25,#91
	db #79,#7b,#01,#08,#25,#91,#79,#aa
	db #01,#08,#25,#91,#61,#7b,#01,#31
	db #08,#67,#93,#69,#3f,#00,#08,#27
	db #91,#61,#fd,#00,#08,#67,#93,#79
	db #d5,#00,#08,#25,#91,#61,#7f,#00
	db #08,#67,#93,#61,#aa,#01,#08,#67
	db #93,#61,#3f,#01,#08,#67,#93,#69
	db #47,#00,#08,#27,#91,#69,#7f,#00
	db #08,#27,#91,#79,#8e,#00,#08,#25
	db #91,#79,#9f,#00,#08,#25,#91,#83
	db #05,#00,#20,#00,#08,#cb,#91,#83
	db #03,#00,#1b,#00,#08,#d2,#90,#83
	db #ff,#ff,#12,#00,#08,#5f,#91,#83
	db #00,#00,#14,#00,#08,#1d,#92,#83
	db #0c,#00,#0c,#00,#08,#3b,#91,#83
	db #fd,#ff,#0c,#00,#33,#01,#00,#13
	db #04,#13,#07,#13,#0b,#13,#0a,#54
	db #03,#08,#c5,#90,#79,#28,#00,#08
	db #25,#91,#79,#35,#00,#08,#25,#91
	db #83,#08,#00,#28,#00,#13,#13,#13
	db #18,#13,#1e,#13,#24,#13,#26,#69
	db #5f,#00,#08,#3c,#93,#69,#6a,#00
	db #08,#3c,#93,#69,#2f,#00,#08,#3c
	db #93,#69,#50,#00,#08,#3c,#93,#69
	db #7f,#00,#08,#3c,#93,#69,#3c,#00
	db #08,#3c,#93,#83,#0b,#00,#2f,#00
	db #13,#18,#13,#1e,#13,#24,#13,#2a
	db #13,#2d,#79,#be,#00,#08,#25,#91
	db #61,#be,#00,#08,#67,#93,#61,#8e
	db #00,#08,#67,#93,#79,#8e,#00,#08
	db #25,#91,#79,#d5,#00,#08,#25,#91
	db #79,#66,#01,#08,#25,#91,#79,#1c
	db #01,#08,#25,#91,#69,#47,#00,#08
	db #27,#91,#69,#35,#00,#08,#27,#91
	db #69,#6a,#00,#08,#27,#91,#61,#7f
	db #00,#08,#67,#93,#61,#9f,#00,#08
	db #67,#93,#61,#6a,#00,#08,#67,#93
	db #79,#fd,#00,#08,#25,#91,#79,#9f
	db #00,#08,#25,#91,#69,#50,#00,#08
	db #27,#91,#69,#7f,#00,#08,#27,#91
	db #79,#ed,#05,#08,#87,#92,#79,#fc
	db #04,#08,#87,#92,#79,#a7,#06,#08
	db #87,#92,#79,#f4,#03,#08,#87,#92
	db #79,#70,#04,#08,#87,#92,#83,#06
	db #00,#24,#00,#13,#10,#13,#15,#79
	db #35,#00,#39,#35,#79,#24,#00,#39
	db #35,#79,#2d,#00,#39,#35,#61,#9f
	db #00,#31,#31,#61,#d5,#00,#31,#31
	db #61,#fd,#00,#31,#31,#61,#1c,#01
	db #31,#31,#61,#5f,#00,#31,#31,#00
	db #00,#00,#00,#00,#00,#00,#00,#00

; #94f8
;	ld hl,#8400
;	ld a,#00
;	call #8000
;
;
.init_music		; added by Megachur
;
	ld hl,l8400
	ld a,#00
	jp real_init_music
;
.music_info
	db "Sontag Beat (2021)(Public Domain)(Glafouk)",0
	db "",0

	read "music_end.asm"
