; Music of Super Hero (1988)(Codemasters)(Guy Stevens)()
; Ripped by Megachur the 12/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SUPERHER.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #a8df
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"
	
	ld a,#03
	ld (lae0f),a
	ld a,#3f
	ld (lae64),a
.la8e9
	ld bc,#f782
	out (c),c
	ld hl,lae5d
	ld d,#00
.la8f3
	ld e,(hl)
	inc hl
	call la912
	inc d
	ld a,d
	cp #0b
	jr nz,la8f3
	ld bc,#f40e
	out (c),c
	ld bc,#f600
	ld a,#c0
	out (c),a
	out (c),c
	inc b
	ld a,#92
	out (c),a
	ret
.la912
	ld b,#f4
	out (c),d
	ld bc,#f600
	ld a,#c0
	out (c),a
	out (c),c
	ld a,#80
	ld b,#f4
	out (c),e
	ld b,#f6
	out (c),a
	out (c),c
	ret
	ld bc,#f40e
	out (c),c
	ld bc,#f600
	ld a,#c0
	out (c),a
	out (c),c
	inc b
	ld a,#5c
	out (c),a
	ret
.la940
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777
;
.play_music
;
	ld hl,lb1b5
	inc (hl)
	ld a,(hl)
	sub #01			; Modified by Megachur #06
	ret c
	ld (hl),#00
	ld a,(lae0f)
	rla
	ret nc
	call laa07
	xor a
	ld (lae0e),a
	ld a,#3f
	ld (lae64),a
	ld hl,lae0e
.la978
	ld b,(hl)
	call laa1d
	jr c,la9d1
	call lac56
	push hl
	pop ix
	bit 5,(hl)
	jr nz,la9d1
	ld iy,lae5d
	ld e,a
	ld d,#00
	push de
	sla e
	add iy,de
	ld hl,lae65
	pop de
	add hl,de
	ld a,(ix+#08)
	ld (iy+#00),a
	ld a,(ix+#09)
	ld (iy+#01),a
	ld b,d
	ld e,(ix+#01)
	ld d,(ix+#02)
	ex de,hl
	ld c,(ix+#03)
	add hl,bc
	ex de,hl
	ld a,(de)
	and #0f
	jr z,la9c0
	add (ix+#0b)
	cp #10
	jr c,la9c0
	ld a,#0f
.la9c0
	ld (hl),a
	ld a,(lae0e)
	ld b,a
	inc b
	ld a,#ff
	and a
.la9c9
	rla
	djnz la9c9
	ld hl,lae64
	and (hl)
	ld (hl),a
.la9d1
	ld hl,lae0e
	ld a,#02
	cp (hl)
	jp z,la9dd
	inc (hl)
	jr la978
.la9dd
	ld hl,lae1c
	ld a,#08
	xor (hl)
	and #28
	jp nz,la8e9
	ld a,(lae0f)
	rra
	jp c,la8e9
	ld hl,lae63
	ld iy,lae55
	ld a,(iy+#07)
	ld (hl),a
	inc hl
	ld a,(iy+#00)
	and #01
	or (hl)
	and #f7
	ld (hl),a
	jp la8e9
.laa07
	xor a
	ld (lae0e),a
.laa0b
	ld b,a
	call laa1d
	call nc,laa25
	ld hl,lae0e
	ld a,(hl)
	cp #02
	ret z
	inc a
	ld (hl),a
	jr laa0b
.laa1d
	ld a,(lae0f)
	inc b
.laa21
	rrca
	djnz laa21
	ret
.laa25
	ld hl,lae0e
	ld l,(hl)
	ld de,lae16
	ld h,#00
	add hl,hl
	add hl,de
	ld (lae09),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	pop ix
	call lac56
	push hl
	pop iy
	bit 1,(hl)
	jp nz,labee
	dec (iy+#0d)
	jr nz,laa5c
	call lac2f
	bit 3,(iy+#00)
	ret z
	ld iy,lae55
	xor a
	ld (iy+#03),a
	jp laade
.laa5c
	dec (iy+#04)
	call z,laafa
	ld l,(iy+#08)
	ld h,(iy+#09)
	bit 7,(iy+#00)
	jr z,laa99
	ld a,#01
	bit 7,(iy+#0c)
	jr z,laa78
	ld a,#ff
.laa78
	add (iy+#0f)
	ld (iy+#0f),a
	ld b,a
	ld a,(iy+#0c)
	cp b
	jr nz,laa8c
	neg
	ld (iy+#0c),a
	neg
.laa8c
	ld e,(iy+#0e)
	ld d,#00
	rlca
	jr c,laa98
	sbc hl,de
	jr laa99
.laa98
	add hl,de
.laa99
	ld a,(iy+#00)
	and #50
	cp #40
	jr nz,laacb
	ld e,(iy+#11)
	ld d,(iy+#12)
	add hl,de
	ld d,h
	ld e,l
	ld c,(iy+#06)
	ld b,(iy+#07)
	xor a
	sbc hl,bc
	rla
	xor (iy+#00)
	and #01
	ex de,hl
	jr nz,laacb
	set 4,(iy+#00)
	xor a
	ld (iy+#0f),a
	ld l,(iy+#06)
	ld h,(iy+#07)
.laacb
	ld (iy+#08),l
	ld (iy+#09),h
	bit 3,(iy+#00)
	ret z
	ld iy,lae55
	dec (iy+#04)
	ret nz
.laade
	call laafa
	and a
	jr nz,laae8
	or (iy+#03)
	ret nz
.laae8
	ld a,(hl)
	and #0f
	bit 7,(iy+#00)
	jr z,laaf3
	neg
.laaf3
	add (iy+#06)
	ld (iy+#07),a
	ret
.laafa
	ld l,(iy+#01)
	ld h,(iy+#02)
	ld e,(iy+#03)
	xor a
	ld d,a
	add hl,de
	bit 7,(hl)
	jr nz,lab27
	bit 6,(hl)
	jr z,lab21
	bit 2,(iy+#00)
	set 2,(iy+#00)
	jr z,lab24
	res 2,(iy+#00)
	ld (iy+#03),a
	jr lab24
.lab21
	inc (iy+#03)
.lab24
	ld a,(iy+#05)
.lab27
	ld (iy+#04),a
	ret
.lab2b
	ld hl,lae0b
	ld a,(lae0e)
	ld e,a
	ld d,#00
	add hl,de
	ld (hl),#ff
	ld b,a
.lab38
	inc b
	ld hl,lae0f
	xor a
	scf
.lab3e
	rla
	djnz lab3e
	ld b,a
	or (hl)
	ld (hl),a
	ret
;
.stop_music
;
	ld a,#ff
	ld (lae0f),a
	ld b,#c0
;
.real_init_music
;
	ld a,b
	and #3f
	cp #3f
	jr nz,lab55
	ld a,#ff
.lab55
	ld c,a
	ld a,b
	rlca
	rlca
	and #03
	ld b,a
	cp #03
	jr z,laba6
	ld hl,lae0b
	ld e,b
	ld d,#00
	add hl,de
	ld a,(hl)
	cp c
	ret z
	cp #80
	ret z
	ld (hl),c
	ld a,c
	inc a
	jr z,lab38
	ld hl,lb141
	sla e
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld e,c
	sla e
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ld hl,lae10
	ld e,b
	sla e
	add hl,de
	push hl
	ld a,b
	call lac59
	ld d,h
	ld e,l
	ld b,a
	call lab38
	ld a,b
	pop hl
	pop bc
	ld (hl),c
	inc hl
	ld (hl),b
	ex de,hl
	set 1,(hl)
	ld hl,lae0f
	xor (hl)
	ld (hl),a
	ret
.laba6
	ld h,#00
	ld l,c
	add hl,hl
	ld d,h
	ld e,l
	add hl,hl
	add hl,de
	ld de,lb147
	add hl,de
	ld a,#03
.labb4
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push de
	push hl
	dec a
	call lac59
	pop de
	push hl
	ex de,hl
	and a
	jr nz,labb4
	ld hl,lae0f
	ld a,#07
	or (hl)
	ld (hl),a
	ld hl,lae0b
	ld bc,#0380
	ld a,b
.labd2
	ld (hl),c
	inc hl
	djnz labd2
	ld hl,lae10
.labd9
	pop de
	pop bc
	ld (hl),c
	inc hl
	ld (hl),b
	inc hl
	ex de,hl
	set 1,(hl)
	ex de,hl
	dec a
	jr nz,labd9
	ld hl,lae0f
	ld a,#f8
	and (hl)
	ld (hl),a
	ret
.labee
	call lac07
	ld bc,#0203
	call lad3f
	ld (iy+#0a),d
	ld (iy+#0b),e
	inc ix
	call lad4e
	inc ix
	jp lac2f
.lac07
	ld hl,(lae09)
	ld de,#fffa
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	pop ix
	ret
.lac15
	call lac07
	inc ix
	jr lac2a
.lac1c
	inc ix
	cp (ix+#00)
	jr z,lac15
	dec a
	cp (ix+#00)
	jp z,lab2b
.lac2a
	call lad4e
	inc ix
.lac2f
	res 4,(iy+#00)
	ld a,(ix+#00)
	inc a
	jp z,lac1c
	ld bc,#0307
	call lad3f
	ld c,d
	ld hl,lae6b
	ld d,#00
	add hl,de
	ld a,(hl)
	ld (iy+#0d),a
	xor a
	cp c
	jr nz,lac66
	set 5,(iy+#00)
	jp lad2b
.lac56
	ld a,(lae0e)
.lac59
	ld hl,lae1c
	and a
	ret z
	ld de,#0013
	ld b,a
.lac62
	add hl,de
	djnz lac62
	ret
.lac66
	res 5,(iy+#00)
	ld a,(iy+#0a)
	add c
	ld bc,#ff0c
.lac71
	inc b
	sub c
	jr nc,lac71
	add c
	add a
	ld e,a
	ld d,#00
	ld hl,la940
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld a,(hl)
	inc b
	jr lac90
.lac88
	srl a
	rr c
	srl d
	rr e
.lac90
	djnz lac88
	ld b,a
	ld a,(iy+#00)
	and #42
	cp #40
	jr nz,laca4
	ld (iy+#06),e
	ld (iy+#07),d
	jr lacaa
.laca4
	ld (iy+#08),e
	ld (iy+#09),d
.lacaa
	bit 7,(iy+#00)
	jr z,lacd7
	ex de,hl
	and a
	sbc hl,bc
	srl l
	srl l
	ld a,(iy+#10)
	and a
	jr z,lacd0
	ld h,a
	ld a,l
	jp m,laccb
.lacc3
	rrc h
	jr c,laccf
	add a
	jr lacc3
.lacca
	rra
.laccb
	rrc h
	jr nc,lacca
.laccf
	ld l,a
.lacd0
	ld (iy+#0e),l
	xor a
	ld (iy+#0f),a
.lacd7
	ld a,(iy+#00)
	bit 6,a
	jr z,lad21
	bit 1,a
	jr z,lace8
	set 4,(iy+#00)
	jr lad21
.lace8
	ld l,(iy+#06)
	ld h,(iy+#07)
	ld e,(iy+#08)
	ld d,(iy+#09)
	rr (iy+#00)
	xor a
	sbc hl,de
	rl (iy+#00)
	ld c,(iy+#0d)
	ld e,#80
	ld b,#08
.lad06
	ld a,e
	and c
	jr nz,lad0e
	rrc e
	djnz lad06
.lad0e
	rrca
	jr c,lad17
	sra h
	rr l
	jr lad0e
.lad17
	ld (iy+#11),l
	ld (iy+#12),h
	res 4,(iy+#00)
.lad21
	ld (iy+#03),#00
	ld a,(iy+#05)
	ld (iy+#04),a
.lad2b
	res 1,(iy+#00)
	push ix
	pop de
	inc de
	ld hl,(lae09)
	ld (hl),e
	inc hl
	ld (hl),d
	ret
.lad3a
	ld bc,#040f
	jr lad42
.lad3f
	ld d,(ix+#00)
.lad42
	ld a,d
	and c
	ld e,a
	ld a,c
	cpl
	and d
	ld d,a
.lad49
	rrc d
	djnz lad49
	ret
.lad4e
	ld bc,#040f
	call lad3f
	ld a,#02
	and (iy+#00)
	ld (iy+#00),a
	bit 2,d
	jr z,lad64
	set 6,(iy+#00)
.lad64
	ld a,#03
	and d
	jr z,lad97
	push de
	dec a
	ld hl,lae68
	ld e,a
	ld d,#00
	add hl,de
	ld d,(hl)
	call lad3a
	ld (iy+#0c),e
	ld a,d
	cp e
	ld a,#00
	jr z,lad8f
	jr nc,lad86
	ld a,d
	ld d,e
	ld e,a
	ld a,#80
.lad86
	rr e
	jr c,lad8e
	rrc d
	jr lad86
.lad8e
	or d
.lad8f
	ld (iy+#10),a
	set 7,(iy+#00)
	pop de
.lad97
	ld hl,lae85
	ld d,#00
	add hl,de
	ld d,(hl)
	call lad3a
	ld (iy+#05),d
	ld (iy+#04),d
	call ladfa
	ld a,(lae0e)
	and a
	jr nz,ladb4
	res 3,(iy+#00)
.ladb4
	bit 7,(ix+#00)
	ret z
	inc ix
	and a
	ret nz
	set 3,(iy+#00)
	push iy
	ld iy,lae55
	ld e,(ix+#00)
	ld a,#c0
	and e
	rlca
	ld (iy+#00),a
	ld a,#0f
	and e
	ld e,a
	ld hl,lae73
	rlc e
	ld d,#00
	add hl,de
	ld d,(hl)
	call lad3a
	ld (iy+#04),d
	ld (iy+#05),d
	inc hl
	ld a,(hl)
	ld (iy+#06),a
	call ladfa
	add (hl)
	ld (iy+#07),a
	xor a
	ld (iy+#03),a
	pop iy
	ret
.ladfa
	ld hl,lae7b
	ld d,#00
	add hl,de
	ld e,(hl)
	add hl,de
	ld (iy+#01),l
	ld (iy+#02),h
	ret
.lae10 equ $ + 7
.lae0f equ $ + 6
.lae0e equ $ + 5
.music_end equ $ + 2
.lae0b equ $ + 2
.lae09
	db #00,#00,#ff,#ff,#ff,#00,#c7,#00
.lae16 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lae1c equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.lae55
	db #00,#00,#00,#00,#00,#00,#00,#00
.lae64 equ $ + 7
.lae63 equ $ + 6
.lae5d
	db #00,#00,#00,#00,#00,#00,#00,#3f
.lae6b equ $ + 6
.lae68 equ $ + 3
.lae65
	db #00,#00,#00,#12,#42,#84,#01,#02
.lae73 equ $ + 6
	db #04,#06,#08,#0c,#10,#20,#23,#06
.lae7b equ $ + 6
	db #8e,#05,#25,#00,#13,#10,#17,#18
	db #1a,#1e,#1a,#28,#2f,#16,#32,#3c
.lae85
	db #21,#22,#15,#13,#20,#25,#14,#16
	db #27,#18,#19,#23,#11,#02,#05,#07
	db #0a,#0b,#0c,#08,#04,#01,#80,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
	db #03,#02,#81,#01,#02,#03,#04,#04
	db #03,#02,#41,#04,#04,#04,#01,#80
	db #02,#00,#00,#04,#00,#00,#06,#00
.laec3 equ $ + 6
	db #00,#09,#00,#0c,#00,#40,#70,#00
	db #94,#ac,#cc,#ac,#84,#ac,#cc,#ac
	db #74,#94,#ac,#94,#6c,#8c,#bc,#a4
.laed7 equ $ + 2
	db #ff,#00,#42,#01,#94,#6c,#ae,#84
	db #6c,#86,#94,#74,#ae,#a4,#8c,#be
	db #6c,#ce,#04,#4c,#ae,#04,#ac,#94
	db #ba,#aa,#94,#8c,#6c,#7c,#8c,#ff
.laef6 equ $ + 1
	db #00,#d1,#0d,#36,#35,#ff,#4d,#6a
	db #ff,#0d,#6f,#5c,#4c,#5e,#6e,#4e
	db #37,#ff,#01,#37,#ad,#a5,#94,#a6
	db #8e,#ff,#0d,#4e,#4d,#ff,#4d,#6a
	db #ff,#0d,#6f,#5c,#6c,#76,#96,#8e
	db #6f,#ff,#01,#6f,#ad,#a5,#94,#a6
	db #ae,#ff,#0d,#6e,#6d,#ff,#4d,#92
	db #ff,#0d,#97,#84,#74,#6e,#5e,#6e
	db #4e,#4d,#ff,#4d,#82,#ff,#0d,#87
	db #74,#6c,#5e,#4e,#46,#36,#35,#ff
	db #4d,#6a,#ff,#0d,#6f,#5c,#4c,#46
	db #5e,#46,#37,#36,#ff,#01,#36,#07
.laf59 equ $ + 4
	db #07,#04,#ff,#ff,#90,#4d,#34,#6c
	db #ff,#01,#6c,#74,#6c,#5c,#4c,#4c
	db #ff,#0d,#46,#37,#ff,#01,#36,#ff
.laf6e equ $ + 1
	db #ff,#c0,#14,#06,#6c,#74,#6c,#5c
	db #4c,#4c,#46,#35,#ff,#1d,#32,#36
.laf82 equ $ + 5
	db #ff,#11,#36,#ff,#ff,#a0,#42,#32
.laf8a equ $ + 5
	db #3a,#42,#cf,#ff,#ff,#b8,#7a,#32
.laf92 equ $ + 5
	db #2a,#42,#ef,#ff,#ff,#c3,#f9,#00
	db #32,#32,#32,#cf,#ff,#e2,#01,#b4
.laf9f equ $ + 2
	db #ff,#ff,#a0,#42,#c2,#ba,#c2,#3f
.lafa7 equ $ + 2
	db #ff,#ff,#b8,#4a,#f2,#e2,#d2,#1f
.lafaf equ $ + 2
	db #ff,#ff,#c3,#f9,#00,#c2,#ba,#c2
.lafbc equ $ + 7
	db #3f,#ff,#e2,#01,#54,#ff,#ff,#b0
.lafc1 equ $ + 4
	db #23,#96,#ff,#ff,#b0,#23,#b6,#ff
.lafc6 equ $ + 1
	db #ff,#00,#82,#83,#02,#14,#ff,#00
.lafd2 equ $ + 5
.lafcd
	db #b0,#12,#ce,#ff,#ff,#92,#0b,#36
	db #4e,#6e,#4c,#34,#16,#04,#6b,#ff
	db #4d,#71,#ff,#0b,#73,#6c,#46,#37
.lafe7 equ $ + 2
	db #ff,#ff,#c0,#01,#94,#ac,#cc,#ac
	db #84,#ac,#cc,#ac,#76,#06,#6c,#8c
.laffa equ $ + 5
	db #a4,#8c,#96,#ff,#ff,#30,#04,#36
	db #4e,#46,#36,#76,#06,#07,#36,#ff
.lb006 equ $ + 1
	db #ff,#93,#0d,#36,#56,#ff,#1d,#6f
	db #ff,#0d,#56,#36,#0e,#06,#0e,#ff
	db #4d,#0c,#34,#ff,#1d,#36,#ff,#1b
.lb020 equ $ + 3
	db #36,#ff,#ff,#c0,#0d,#6e,#6d,#ff
	db #5d,#92,#97,#ff,#0d,#8e,#7e,#6e
	db #06,#46,#ff,#4d,#44,#34,#ff,#1d
.lb03b equ $ + 6
	db #36,#ff,#1b,#36,#ff,#ff,#c0,#1c
	db #6b,#63,#6b,#7b,#8d,#6d,#97,#ff
.lb046 equ $ + 1
	db #ff,#60,#03,#46,#04,#6d,#55,#35
.lb04f equ $ + 2
	db #ff,#ff,#92,#00,#6b,#63,#6b,#7b
.lb05a equ $ + 5
	db #55,#45,#37,#ff,#ff,#50,#01,#32
.lb064 equ $ + 7
	db #22,#32,#ff,#43,#a4,#ff,#ff,#f2
	db #47,#32,#ca,#04,#ca,#32,#04,#ff
.lb06e equ $ + 1
	db #00,#23,#72,#30,#42,#0e,#ff,#ff
.lb07c equ $ + 7
.lb075
	db #60,#72,#63,#d4,#66,#ff,#ff,#51
.lb083 equ $ + 6
	db #75,#08,#94,#35,#ff,#ff,#d0,#06
	db #51,#71,#01,#61,#49,#01,#51,#39
.lb093 equ $ + 6
	db #01,#49,#61,#01,#ff,#00,#d8,#06
	db #51,#71,#00,#61,#49,#00,#51,#39
.lb0a3 equ $ + 6
	db #00,#49,#61,#00,#ff,#00,#60,#43
.lb0a9 equ $ + 4
	db #30,#6d,#ff,#ff,#60,#03,#20,#01
.lb0b0 equ $ + 3
	db #33,#ff,#ff,#a0,#07,#32,#42,#52
	db #5a,#6a,#7a,#82,#8a,#94,#ff,#ff
.lb0c2 equ $ + 5
.lb0bd
	db #c1,#35,#a7,#ff,#00,#a0,#08,#6b
.lb0c7 equ $ + 2
	db #ff,#ff,#00,#86,#82,#16,#ff,#00
.lb0d4 equ $ + 7
.lb0cd
	db #30,#c3,#03,#62,#0d,#ff,#ff,#80
.lb0db equ $ + 6
.lb0d7 equ $ + 2
	db #c3,#01,#92,#6d,#ff,#ff,#82,#18
.lb0e2 equ $ + 5
	db #92,#f1,#92,#ff,#ff,#d2,#41,#42
.lb0ec equ $ + 7
	db #ca,#8c,#ff,#43,#0f,#ff,#ff,#72
	db #4d,#20,#51,#00,#30,#61,#00,#30
.lb0fc equ $ + 7
	db #6b,#00,#ff,#43,#0f,#ff,#ff,#43
.lb104 equ $ + 7
	db #e3,#43,#3c,#24,#0e,#ff,#ff,#b0
	db #1b,#6c,#64,#6c,#64,#6e,#44,#4c
	db #56,#6e,#56,#46,#34,#2c,#34,#3c
.lb11c equ $ + 7
	db #44,#2c,#1c,#2c,#0f,#ff,#ff,#53
	db #03,#6e,#44,#44,#6e,#46,#56,#2c
	db #2c,#56,#2e,#36,#56,#46,#66,#6f
.lb12f equ $ + 2
	db #ff,#ff,#01,#88,#c2,#06,#17,#17
	db #14,#14,#06,#17,#14,#14,#16,#12
	db #05,#17,#ff,#ff
.lb141
	dw lb1a9,lb19f,lb195
.lb147
	dw lb0d7,lb0d7,lb0d7,laec3
	dw laed7,laef6,laf59,laf6e
	dw lb0d7,lafbc,lafc1,lb0d7
	dw laf82,laf8a,laf92,laf9f
	dw lafa7,lafaf,lafbc,lafc1
	dw lafc6,lafbc,lafc1,lafcd
	dw lafd2,lafe7,laffa,lb006
	dw lb020,lb006,lb03b,lb046
	dw lb04f,lb0e2,lb0ec,lb0fc
.lb195 equ $ + 6
	dw lb104,lb11c,lb12f,lb05a
	dw lb064,lb06e,lb075,lb07c
.lb19f
	dw lb083,lb093,lb0a3,lb0a9
.lb1a9 equ $ + 2
	dw lb0b0,lb0bd,lb0c2,lb0c7
	dw lb0cd,lb0d4,lb0db
.lb1b5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
;
;org #1b4d
;.l1b4d
;ld hl,(#ae0b)	; end music detection
;ld a,(#ae0d)
;and h
;and l
;inc a
;jr nz,l1b4d
;
; ab4c init sound 	ld b,&c1	; &c1->&d1	; &c1 &cc main theme
; c1
; c0 (stop)
; c7
;
init_music	; added by Megachur - 2->17 sound fx
;
	or a
	jr z,call_real_init_music
	add #0a
call_real_init_music
	add #c1         ; added by Megachur
	ld b,a          ; modified by Megachur
	jp real_init_music
;
.music_info
	db "Super Hero (1988)(Codemasters)(Guy Stevens)",0
	db "",0

	read "music_end.asm"
