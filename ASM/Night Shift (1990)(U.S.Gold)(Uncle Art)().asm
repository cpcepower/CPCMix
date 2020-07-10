; Music of Night Shift (1990)(U.S.Gold)(Uncle Art)()
; Ripped by Megachur the 30/10/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "NIGHTSHI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #cd55

	read "music_header.asm"
	
;
.lcd55
.play_music
;
	push hl
	push de
	push bc
	push af
	push ix
	call lcd67
	pop ix
	pop af
	pop bc
	pop de
	pop hl
	ret
.lcd65
	db #01
.lcd66
	db #00
.lcd67
	ld ix,ld0ff
	ld hl,ld125
	ld (ld0f4),hl
	ld a,#08
	ld (ld0f6),a
	ld a,#f6
	ld (ld0f7),a
	ld a,(lcd65)
	and a
	jr z,lcd8a
	ld a,(lcd66)
	and a
	jr nz,lcd8a
	call lce06
.lcd8a
	ld ix,ld101
	ld hl,ld13e
	ld (ld0f4),hl
	ld a,#07
	ld (ld0f6),a
	ld a,#ed
	ld (ld0f7),a
	ld a,(lcd65)
	and a
	jr z,lcdab
	ld a,(lcd66)
	and a
	call z,lce06
.lcdab
	ld a,(lcd65)
	and a
	jr z,lcdce
	ld a,(lcd66)
	and a
	jr nz,lcdce
	ld hl,ld157
	ld (ld0f4),hl
	ld ix,ld103
	ld a,#06
	ld (ld0f6),a
	ld a,#db
	ld (ld0f7),a
	call lce06
.lcdce
	ld a,#0a
	ld hl,ld109
.lcdd3
	ld c,(hl)
	call lcdea
	dec a
	dec hl
	cp #06
	jr nz,lcdd3
	ld a,#05
	dec hl
.lcde0
	ld c,(hl)
	call lcdea
	dec a
	dec hl
	jp p,lcde0
	ret
.lcdea
	ld d,a
	ld e,c
	push af
	ld b,#f4
	out (c),d
	ld bc,#f6c0
	out (c),c
	xor a
	out (c),a
	ld b,#f4
	out (c),e
	ld bc,#f680
	out (c),c
	out (c),a
	pop af
	ret
.lce06
	ld a,(hl)
	ld e,a
	inc hl
	or (hl)
	jr z,lce1b
	ld a,e
	dec a
	cp #ff
	jr nz,lce13
	dec (hl)	; reinit music !
.lce13
	dec hl
	ld (hl),a
	call ld039
	jp lcf8c
.lce1b
	ld hl,(ld0f4)
	ld de,#0005
	add hl,de
	ld e,l
	ld d,h
	inc hl
	inc hl
	ldi
	ldi
	ld hl,(ld0f4)
	ld de,#0015
	add hl,de
	ld a,(hl)
	dec hl
	ld (hl),a
	ld hl,(ld0f4)
	inc hl
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
.lce3c
	ld a,(bc)
	cp #00
	jr z,lce73
	cp #04
	jr z,lce63
	ld (ix+#00),a
	inc bc
	ld a,(bc)
	ld (ix+#01),a
.lce4d
	inc bc
	ld a,(bc)
	ld e,a
	inc bc
	ld a,(bc)
	ld d,a
	dec de
	ld hl,(ld0f4)
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	inc bc
	ld (hl),c
	inc hl
	ld (hl),b
	call ld039
	ret
.lce63
	ld hl,(ld0f4)
	ld de,#0005
	add hl,de
	ld de,ld170
	ld (hl),e
	inc hl
	ld (hl),d
	inc bc
	jr lce4d
.lce73
	inc bc
	ld a,(bc)
	ld e,a
	ld d,#00
	ld hl,lce7d
	add hl,de
	jp (hl)
.lce7d
	db #00,#00,#00
	jp lce9b
	jp lcedb
	jp lcef8
	jp lcf19
	jp lcf43
	jp lcf4f
	jp lcf5b
	jp lced3
	jp lcedb
.lce9b
	db #00
.lce9c
	ld hl,(ld0f4)
	ld de,#0009
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	ld a,(de)
	and a
	jr z,lcec2
	cp #01
	jr z,lced3
	dec de
	ld a,(de)
	ld c,a
	inc de
	ld a,(de)
	ld b,a
	inc de
	ld (hl),d
	dec hl
	ld (hl),e
	ld hl,(ld0f4)
	inc hl
	inc hl
	inc hl
	jp lce3c
.lcec2
	ld hl,(ld0f4)
	ld de,#0009
	add hl,de
	ld e,l
	ld d,h
	inc hl
	inc hl
	ldi
	ldi
	jr lce9c
.lced3
	call ld07d
	xor a
	ld (lcd65),a
	ret
.lcedb
	inc bc
	ld hl,(ld0f4)
	ld de,#0005
	add hl,de
	ld a,(bc)
	ld e,a
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	ld (hl),a
	inc hl
	ld (hl),e
	inc hl
	ld (hl),a
	inc bc
	ld hl,(ld0f4)
	inc hl
	inc hl
	inc hl
	jp lce3c
.lcef8
	inc bc
	ld hl,(ld0f4)
	ld de,#000d
	add hl,de
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	jp lcf39
.lcf19
	ld a,#99
	ld hl,(ld0f4)
	ld de,#0013
	add hl,de
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	ld (hl),a
	inc hl
	inc bc
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	inc bc
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	inc bc
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	inc bc
	ld (hl),a
.lcf39
	inc bc
	ld hl,(ld0f4)
	inc hl
	inc hl
	inc hl
	jp lce3c
.lcf43
	ld hl,(ld0f4)
	ld de,#0013
	add hl,de
	ld (hl),#00
	jp lcf39
.lcf4f
	ld hl,(ld0f4)
	ld de,#000d
	add hl,de
	ld (hl),#00
	jp lcf39
.lcf5b
	push de
	ld e,c
	ld d,b
	ld c,#fd
.lcf60
	inc de
	ld a,(de)
	cp #ff
	jr z,lcf77
	cp #fe
	jp z,lcf7e
	ld b,#ff
	out (c),a
	inc de
	ld a,(de)
	ld b,#bf
	out (c),a
	jr lcf60
.lcf77
	ld c,e
	ld b,d
	pop de
	inc bc
	jp lcf39
.lcf7e
	ld c,e
	ld b,d
	pop de
	ld hl,(ld0f4)
	inc hl
	inc hl
	inc bc
	inc bc
	ld (hl),c
	inc hl
	ld (hl),b
	ret
.lcf8c
	ld hl,(ld0f4)
	ld de,#000d
	add hl,de
	ld a,(hl)
	and a
	jp z,lcff2
	inc hl
	cp #02
	jr z,lcfc7
	ld e,(hl)
	ld a,(ix+#00)
	sub e
	jr nc,lcfa7
	dec (ix+#01)
.lcfa7
	ld (ix+#00),a
	inc hl
	ld d,(hl)
	inc hl
	ld a,(hl)
	ld e,a
	cp (ix+#01)
	jr c,lcfc5
	ld a,d
	cp (ix+#00)
	jr c,lcfc5
	ld (ix+#01),e
	dec hl
	ld (ix+#00),d
	dec hl
	dec hl
	ld (hl),#00
.lcfc5
	jr ld038
.lcfc7
	ld e,(hl)
	ld a,(ix+#00)
	ld d,a
	add e
	jr nc,lcfd2
	inc (ix+#01)
.lcfd2
	ld (ix+#00),a
	inc hl
	ld d,(hl)
	inc hl
	ld a,(hl)
	ld e,a
	cp (ix+#01)
	jr nc,lcff0
	ld a,d
	cp (ix+#00)
	jr nc,lcff0
	ld (ix+#01),e
	dec hl
	ld (ix+#00),d
	dec hl
	dec hl
	ld (hl),#00
.lcff0
	jr ld038
.lcff2
	ld hl,(ld0f4)
	ld de,#0013
	add hl,de
	ld a,(hl)
	and a
	jr z,ld038
	ld e,a
	ld b,h
	ld c,l
	inc hl
	ld a,#00
	cp (hl)
	jr z,ld00a
	dec (hl)
	jp ld038
.ld00a
	inc hl
	inc hl
	ld a,(hl)
	dec a
	ld (hl),a
	jr nz,ld038
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	rlc e
	jr c,ld029
	inc hl
	ld a,(ix+#00)
	add (hl)
	ld (ix+#00),a
	jr nc,ld036
	inc (ix+#01)
	jp ld036
.ld029
	inc hl
	ld a,(ix+#00)
	sub (hl)
	ld (ix+#00),a
	jr nc,ld036
	dec (ix+#01)
.ld036
	ld a,e
	ld (bc),a
.ld038
	ret
.ld039
	ld hl,(ld0f4)
	ld de,#0005
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(ld0f6)
	ld (ld056),a
	ld a,(de)
	cp #ff
	jr nz,ld04f
	ret
.ld04f
	sub #02
	jr nc,ld054
	xor a
.ld056 equ $ + 2
.ld054
	ld (ix+#00),a
	inc de
	ld a,(ld106)
	ld b,a
	ld a,(ld0f7)
	push af
	and b
	ld b,a
	ld a,(de)
	ld c,a
	pop af
	rr a
	jr nc,ld071
	rlc c
	rr a
	jr nc,ld071
	rlc c
.ld071
	ld a,c
	or b
	jr ld075
.ld075
	ld (ld106),a
	inc de
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.ld07d
	di
	call ld08c
	call ld0a2
	call ld0a9
	xor a
	ld (lcd65),a
	ret
.ld08c
	ld a,#0d
	ld e,#00
.ld090
	push af
	call lcdea
	pop af
	dec a
	and a
	jr z,ld09b
	jr ld090
.ld09b
	ld a,#07
	ld c,#3f
	jp lcdea
.ld0a2
	ld b,#a3
	ld hl,ld0ff
	jr ld0ae
.ld0a9
	ld b,#73
	ld hl,ld125
.ld0ae
	ld (hl),#00
	inc hl
	djnz ld0ae
	ret
;
.ld0b4
.init_music
;
	ld hl,lcd65
	ld a,(hl)
	add a
	add a
	add a
	ld e,a
	ld d,#00
	ld hl,ld173
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ld130),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ld149),de
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ld162),de
	ld hl,ld0fa
	ld (ld12e),hl
	ld (ld147),hl
	ld (ld160),hl
	ld hl,ld0f8
	ld (ld127),hl
	ld (ld140),hl
	ld (ld159),hl
	ret
.ld0f8 equ $ + 6
.ld0f7 equ $ + 5
.ld0f6 equ $ + 4
.ld0f4 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#03
.ld0fa
	db #00,#00,#00,#00,#00
.ld106 equ $ + 7
.ld103 equ $ + 4
.ld101 equ $ + 2
.ld0ff
	db #00,#00,#00,#00,#00,#00,#00,#00
.ld109 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#08
	db #09,#0a,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.ld125 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.ld12e equ $ + 7
.ld127
	db #00,#00,#04,#00,#00,#00,#00,#00
.ld130 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.ld13e equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.ld140 equ $ + 1
	db #00,#00,#00,#04,#00,#00,#00,#00
.ld149 equ $ + 2
.ld147
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.ld159 equ $ + 2
.ld157
	db #00,#00,#00,#00,#04,#00,#00,#00
.ld162 equ $ + 3
.ld160 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.ld173 equ $ + 4
.ld170 equ $ + 1
	db #00,#00,#00,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#81,#d1,#47,#d2
	db #5f,#d3,#9b,#d3,#9b,#d3,#9b,#d3
	db #9b,#d3,#9b,#d3,#9b,#d3,#9b,#d3
	db #9b,#d3,#6b,#d5,#6b,#d5,#6b,#d5
	db #6b,#d5,#6b,#d5,#6b,#d5,#6b,#d5
	db #6b,#d5,#6b,#d5,#6b,#d5,#6b,#d5
	db #6b,#d5,#6b,#d5,#6b,#d5,#6b,#d5
	db #6b,#d5,#81,#d4,#b5,#d4,#cb,#d4
	db #81,#d4,#b5,#d4,#cb,#d4,#81,#d4
	db #b5,#d4,#cb,#d4,#81,#d4,#b5,#d4
	db #cb,#d4,#81,#d4,#b5,#d4,#cb,#d4
	db #81,#d4,#b5,#d4,#cb,#d4,#81,#d4
	db #b5,#d4,#cb,#d4,#81,#d4,#b5,#d4
	db #cb,#d4,#9b,#d3,#9b,#d3,#9b,#d3
	db #9b,#d3,#9b,#d3,#9b,#d3,#9b,#d3
	db #9b,#d3,#9b,#d3,#53,#d4,#81,#d4
	db #b5,#d4,#cb,#d4,#81,#d4,#b5,#d4
	db #cb,#d4,#81,#d4,#b5,#d4,#cb,#d4
	db #81,#d4,#b5,#d4,#cb,#d4,#81,#d4
	db #b5,#d4,#cb,#d4,#81,#d4,#b5,#d4
	db #cb,#d4,#81,#d4,#b5,#d4,#cb,#d4
	db #81,#d4,#b5,#d4,#cb,#d4,#6b,#d5
	db #6b,#d5,#6b,#d5,#6b,#d5,#6b,#d5
	db #6b,#d5,#6b,#d5,#6b,#d5,#ed,#d3
	db #ed,#d3,#ed,#d3,#ed,#d3,#ed,#d3
	db #ed,#d3,#ed,#d3,#53,#d4,#00,#00
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #f3,#d5,#d7,#d6,#45,#d6,#39,#d7
	db #c3,#d7,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#75,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#75,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #75,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#db,#da,#db,#da
	db #db,#da,#db,#da,#c3,#d7,#45,#d6
	db #39,#d7,#45,#d6,#39,#d7,#00,#00
	db #df,#d5,#8f,#d8,#8f,#d8,#23,#d9
	db #81,#d9,#b9,#d8,#ed,#d8,#23,#d9
	db #81,#d9,#c7,#d9,#ed,#d4,#ed,#d4
	db #ed,#d4,#ed,#d4,#ed,#d4,#ed,#d4
	db #ed,#d4,#ed,#d4,#ed,#d4,#ed,#d4
	db #c7,#d9,#8f,#d8,#8f,#d8,#57,#d9
	db #81,#d9,#b9,#d8,#ed,#d8,#23,#d9
	db #81,#d9,#00,#00,#00,#15,#06,#c8
	db #ff,#00,#00,#06,#1e,#db,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
	db #10,#00,#00,#06,#ce,#db,#00,#15
	db #06,#1f,#ff,#00,#00,#09,#02,#c8
	db #a7,#06,#00,#00,#6a,#00,#10,#00
	db #00,#15,#06,#0d,#ff,#00,#00,#06
	db #84,#db,#00,#09,#02,#45,#a7,#06
	db #00,#00,#d5,#00,#10,#00,#00,#15
	db #06,#03,#ff,#00,#00,#06,#a5,#db
	db #24,#00,#10,#00,#00,#03,#00,#06
	db #1e,#db,#00,#09,#02,#c8,#a7,#06
	db #00,#00,#a9,#00,#08,#00,#00,#06
	db #a5,#db,#24,#00,#08,#00,#00,#06
	db #fd,#da,#00,#09,#02,#64,#a7,#06
	db #00,#00,#6a,#00,#08,#00,#00,#06
	db #a5,#db,#24,#00,#08,#00,#00,#06
	db #1e,#db,#00,#09,#02,#c8,#a7,#06
	db #00,#00,#d5,#00,#08,#00,#00,#06
	db #a5,#db,#24,#00,#04,#00,#24,#00
	db #04,#00,#00,#06,#fd,#da,#00,#09
	db #02,#64,#a7,#06,#00,#00,#47,#00
	db #08,#00,#00,#06,#a5,#db,#24,#00
	db #08,#00,#00,#03,#00,#06,#fd,#da
	db #00,#09,#02,#64,#a7,#06,#00,#00
	db #47,#00,#08,#00,#47,#00,#08,#00
	db #47,#00,#08,#00,#47,#00,#08,#00
	db #47,#00,#08,#00,#47,#00,#08,#00
	db #47,#00,#08,#00,#47,#00,#08,#00
	db #00,#03,#00,#06,#df,#db,#00,#15
	db #06,#1f,#ff,#00,#01,#00,#01,#00
	db #00,#15,#06,#1e,#fe,#00,#00,#15
	db #06,#1e,#fe,#00,#00,#15,#06,#17
	db #fe,#00,#00,#15,#06,#16,#fe,#00
	db #01,#00,#03,#00,#00,#06,#df,#db
	db #01,#00,#10,#00,#00,#03,#00,#06
	db #e9,#d4,#86,#00,#02,#00,#86,#00
	db #02,#00,#86,#00,#02,#00,#86,#00
	db #02,#00,#00,#03,#00,#06,#fd,#da
	db #00,#09,#02,#64,#a7,#06,#00,#00
	db #47,#00,#08,#00,#47,#00,#08,#00
	db #47,#00,#08,#00,#47,#00,#08,#00
	db #00,#03,#0e,#08,#ff,#00,#00,#06
	db #2c,#dc,#00,#0c,#01,#01,#01,#00
	db #01,#00,#01,#00,#00,#15,#06,#20
	db #ff,#00,#00,#09,#02,#c8,#60,#ea
	db #00,#00,#a7,#06,#08,#00,#a7,#06
	db #08,#00,#a7,#06,#08,#00,#a7,#06
	db #08,#00,#00,#06,#aa,#db,#00,#15
	db #06,#1f,#ff,#00,#70,#04,#02,#00
	db #a7,#06,#02,#00,#70,#04,#02,#00
	db #a7,#06,#02,#00,#70,#04,#02,#00
	db #a7,#06,#02,#00,#24,#00,#04,#00
	db #00,#15,#06,#c8,#ff,#00,#00,#06
	db #2c,#dc,#00,#0c,#01,#01,#02,#00
	db #02,#00,#01,#00,#00,#15,#06,#20
	db #ff,#00,#00,#09,#02,#c8,#60,#ea
	db #00,#00,#a7,#06,#08,#00,#a7,#06
	db #08,#00,#00,#03,#00,#15,#06,#c8
	db #ff,#00,#00,#06,#1e,#db,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
	db #08,#00,#00,#06,#a5,#db,#8e,#00
	db #08,#00,#00,#06,#ce,#db,#00,#15
	db #06,#1f,#ff,#00,#00,#09,#02,#c8
	db #a7,#06,#00,#00,#6a,#00,#08,#00
	db #00,#15,#06,#03,#ff,#00,#00,#06
	db #a5,#db,#8e,#00,#08,#00,#00,#15
	db #06,#0d,#ff,#00,#00,#06,#84,#db
	db #00,#09,#02,#45,#a7,#06,#00,#00
	db #d5,#00,#10,#00,#00,#15,#06,#03
	db #ff,#00,#00,#06,#a5,#db,#24,#00
	db #04,#00,#24,#00,#04,#00,#24,#00
	db #04,#00,#24,#00,#04,#00,#00,#03
	db #00,#06,#81,#db,#00,#09,#02,#03
	db #a7,#06,#00,#00,#24,#00,#00,#02
	db #00,#12,#00,#03,#00,#06,#2d,#db
	db #53,#03,#08,#00,#53,#03,#08,#00
	db #aa,#01,#10,#00,#53,#03,#10,#00
	db #aa,#01,#10,#00,#53,#03,#10,#00
	db #aa,#01,#10,#00,#53,#03,#10,#00
	db #aa,#01,#10,#00,#53,#03,#08,#00
	db #53,#03,#08,#00,#aa,#01,#10,#00
	db #53,#03,#10,#00,#aa,#01,#10,#00
	db #53,#03,#08,#00,#53,#03,#08,#00
	db #aa,#01,#10,#00,#f6,#02,#10,#00
	db #7b,#01,#10,#00,#00,#03,#00,#06
	db #2d,#db,#a7,#06,#04,#00,#53,#03
	db #04,#00,#a7,#06,#04,#00,#53,#03
	db #04,#00,#aa,#01,#08,#00,#53,#03
	db #08,#00,#a7,#06,#08,#00,#53,#03
	db #08,#00,#aa,#01,#08,#00,#53,#03
	db #08,#00,#53,#03,#08,#00,#a7,#06
	db #08,#00,#aa,#01,#08,#00,#53,#03
	db #08,#00,#53,#03,#08,#00,#a7,#06
	db #08,#00,#aa,#01,#08,#00,#53,#03
	db #08,#00,#53,#03,#04,#00,#a7,#06
	db #04,#00,#53,#03,#08,#00,#aa,#01
	db #08,#00,#53,#03,#08,#00,#53,#03
	db #08,#00,#a7,#06,#08,#00,#53,#03
	db #08,#00,#aa,#01,#08,#00,#53,#03
	db #08,#00,#53,#03,#08,#00,#aa,#01
	db #08,#00,#53,#03,#08,#00,#f6,#02
	db #08,#00,#ed,#05,#08,#00,#7b,#01
	db #08,#00,#f6,#02,#08,#00,#00,#03
	db #cc,#02,#10,#00,#66,#01,#10,#00
	db #cc,#02,#10,#00,#66,#01,#08,#00
	db #66,#01,#08,#00,#cc,#02,#10,#00
	db #66,#01,#10,#00,#cc,#02,#10,#00
	db #66,#01,#10,#00,#f6,#02,#10,#00
	db #7b,#01,#10,#00,#f6,#02,#10,#00
	db #7b,#01,#04,#00,#7b,#01,#04,#00
	db #7b,#01,#04,#00,#7b,#01,#04,#00
	db #0c,#01,#08,#00,#1c,#01,#08,#00
	db #2d,#01,#08,#00,#3f,#01,#08,#00
	db #52,#01,#08,#00,#66,#01,#08,#00
	db #7b,#01,#08,#00,#92,#01,#08,#00
	db #00,#03,#cc,#02,#08,#00,#66,#01
	db #08,#00,#cc,#02,#08,#00,#66,#01
	db #08,#00,#cc,#02,#08,#00,#66,#01
	db #08,#00,#66,#01,#08,#00,#66,#01
	db #08,#00,#cc,#02,#08,#00,#66,#01
	db #08,#00,#66,#01,#08,#00,#cc,#02
	db #08,#00,#cc,#02,#08,#00,#66,#01
	db #08,#00,#66,#01,#08,#00,#cc,#02
	db #08,#00,#f6,#02,#08,#00,#7b,#01
	db #08,#00,#7b,#01,#08,#00,#f6,#02
	db #08,#00,#f6,#02,#08,#00,#7b,#01
	db #08,#00,#7b,#01,#04,#00,#f6,#02
	db #04,#00,#7b,#01,#04,#00,#7b,#01
	db #04,#00,#0c,#01,#08,#00,#1c,#01
	db #08,#00,#2d,#01,#08,#00,#3f,#01
	db #08,#00,#52,#01,#08,#00,#66,#01
	db #08,#00,#7b,#01,#08,#00,#92,#01
	db #08,#00,#00,#03,#00,#06,#40,#db
	db #00,#0c,#01,#01,#04,#00,#04,#00
	db #0c,#00,#18,#02,#08,#00,#31,#04
	db #08,#00,#18,#02,#08,#00,#31,#04
	db #08,#00,#00,#06,#53,#db,#18,#02
	db #20,#00,#00,#06,#40,#db,#18,#02
	db #08,#00,#31,#04,#08,#00,#18,#02
	db #08,#00,#31,#04,#08,#00,#00,#06
	db #53,#db,#18,#02,#20,#00,#00,#06
	db #40,#db,#38,#02,#08,#00,#70,#04
	db #08,#00,#38,#02,#08,#00,#70,#04
	db #08,#00,#38,#02,#08,#00,#70,#04
	db #08,#00,#38,#02,#08,#00,#70,#04
	db #08,#00,#00,#06,#53,#db,#38,#02
	db #40,#00,#00,#06,#40,#db,#7e,#02
	db #08,#00,#fc,#04,#08,#00,#7e,#02
	db #10,#00,#fc,#04,#10,#00,#7e,#02
	db #08,#00,#fc,#04,#08,#00,#7e,#02
	db #08,#00,#fc,#04,#08,#00,#7e,#02
	db #04,#00,#fc,#04,#04,#00,#7e,#02
	db #04,#00,#fc,#04,#04,#00,#7e,#02
	db #10,#00,#fc,#04,#08,#00,#7e,#02
	db #08,#00,#38,#02,#08,#00,#70,#04
	db #08,#00,#38,#02,#10,#00,#70,#04
	db #10,#00,#38,#02,#08,#00,#00,#06
	db #53,#db,#38,#02,#48,#00,#00,#03
	db #00,#06,#56,#db,#59,#00,#02,#00
	db #54,#00,#06,#00,#59,#00,#08,#00
	db #5f,#00,#08,#00,#64,#00,#08,#00
	db #6a,#00,#08,#00,#77,#00,#08,#00
	db #86,#00,#10,#00,#8e,#00,#40,#00
	db #00,#03,#00,#06,#6d,#db,#00,#0c
	db #01,#01,#01,#00,#01,#00,#06,#00
	db #2d,#00,#02,#00,#2a,#00,#06,#00
	db #2d,#00,#08,#00,#2f,#00,#08,#00
	db #32,#00,#08,#00,#35,#00,#08,#00
	db #3c,#00,#08,#00,#43,#00,#10,#00
	db #47,#00,#40,#00,#00,#03,#00,#06
	db #6d,#db,#00,#0c,#01,#01,#01,#00
	db #01,#00,#06,#00,#2d,#00,#02,#00
	db #2a,#00,#06,#00,#2d,#00,#08,#00
	db #2f,#00,#08,#00,#32,#00,#08,#00
	db #35,#00,#08,#00,#3c,#00,#08,#00
	db #43,#00,#10,#00,#47,#00,#40,#00
	db #00,#0f,#00,#03,#7f,#00,#04,#00
	db #77,#00,#0c,#00,#77,#00,#10,#00
	db #77,#00,#08,#00,#7f,#00,#08,#00
	db #8e,#00,#10,#00,#77,#00,#08,#00
	db #6a,#00,#08,#00,#5f,#00,#08,#00
	db #00,#0c,#01,#01,#01,#00,#01,#00
	db #06,#00,#59,#00,#28,#00,#00,#03
	db #7f,#00,#04,#00,#77,#00,#0c,#00
	db #77,#00,#10,#00,#77,#00,#08,#00
	db #7f,#00,#08,#00,#8e,#00,#10,#00
	db #77,#00,#08,#00,#6a,#00,#08,#00
	db #5f,#00,#08,#00,#59,#00,#28,#00
	db #00,#03,#59,#00,#03,#00,#5f,#00
	db #05,#00,#64,#00,#08,#00,#5f,#00
	db #08,#00,#59,#00,#08,#00,#54,#00
	db #08,#00,#50,#00,#08,#00,#4b,#00
	db #08,#00,#47,#00,#08,#00,#43,#00
	db #08,#00,#3f,#00,#08,#00,#3c,#00
	db #08,#00,#38,#00,#08,#00,#35,#00
	db #08,#00,#32,#00,#08,#00,#2f,#00
	db #08,#00,#2d,#00,#08,#00,#00,#03
	db #00,#06,#76,#db,#00,#12,#00,#0c
	db #01,#01,#01,#00,#01,#00,#0a,#00
	db #2d,#00,#08,#00,#47,#00,#08,#00
	db #2f,#00,#08,#00,#47,#00,#08,#00
	db #35,#00,#20,#00,#2d,#00,#08,#00
	db #47,#00,#08,#00,#2f,#00,#08,#00
	db #47,#00,#08,#00,#35,#00,#20,#00
	db #2f,#00,#08,#00,#47,#00,#08,#00
	db #35,#00,#08,#00,#47,#00,#08,#00
	db #3c,#00,#08,#00,#47,#00,#08,#00
	db #35,#00,#08,#00,#47,#00,#08,#00
	db #2f,#00,#40,#00,#2d,#00,#08,#00
	db #47,#00,#08,#00,#2f,#00,#08,#00
	db #47,#00,#08,#00,#35,#00,#08,#00
	db #47,#00,#08,#00,#2f,#00,#08,#00
	db #2d,#00,#28,#00,#35,#00,#20,#00
	db #24,#00,#06,#00,#04,#00,#02,#00
	db #24,#00,#06,#00,#04,#00,#02,#00
	db #24,#00,#0e,#00,#04,#00,#02,#00
	db #24,#00,#0e,#00,#04,#00,#02,#00
	db #24,#00,#06,#00,#04,#00,#02,#00
	db #24,#00,#48,#00,#00,#03,#00,#06
	db #c9,#db,#6a,#00,#02,#00,#64,#00
	db #02,#00,#5f,#00,#02,#00,#59,#00
	db #02,#00,#54,#00,#02,#00,#50,#00
	db #02,#00,#4b,#00,#02,#00,#47,#00
	db #02,#00,#43,#00,#02,#00,#3f,#00
	db #02,#00,#3c,#00,#02,#00,#38,#00
	db #02,#00,#35,#00,#02,#00,#32,#00
	db #02,#00,#2f,#00,#02,#00,#2d,#00
	db #02,#00,#2a,#00,#02,#00,#28,#00
	db #02,#00,#26,#00,#02,#00,#24,#00
	db #02,#00,#22,#00,#02,#00,#20,#00
	db #02,#00,#1e,#00,#02,#00,#1c,#00
	db #02,#00,#00,#03,#00,#06,#b5,#db
	db #01,#00,#02,#00,#00,#06,#ba,#db
	db #01,#00,#02,#00,#00,#06,#bf,#db
	db #01,#00,#02,#00,#00,#06,#c4,#db
	db #01,#00,#02,#00,#00,#03,#0f,#00
	db #0f,#08,#0f,#08,#0f,#00,#0f,#08
	db #0f,#00,#0c,#08,#0c,#00,#09,#08
	db #07,#00,#07,#08,#07,#00,#06,#08
	db #06,#00,#06,#08,#05,#08,#ff,#0f
	db #00,#0f,#08,#0f,#08,#0f,#08,#07
	db #08,#03,#08,#00,#08,#ff,#0f,#08
	db #0f,#08,#0f,#08,#0f,#08,#0f,#08
	db #0e,#08,#0e,#08,#0c,#08,#08,#08
	db #ff,#0f,#00,#0f,#08,#0f,#08,#0f
	db #08,#0f,#08,#0f,#08,#0e,#08,#0a
	db #08,#00,#08,#ff,#0f,#08,#ff,#0d
	db #08,#0d,#08,#02,#08,#0d,#08,#0d
	db #08,#0d,#08,#0c,#08,#08,#08,#07
	db #08,#06,#08,#02,#08,#ff,#0d,#08
	db #0c,#08,#02,#00,#0b,#08,#ff,#0f
	db #08,#0e,#08,#00,#08,#00,#08,#0f
	db #08,#ff,#0d,#08,#ff,#0f,#01,#0e
	db #01,#0e,#01,#0d,#01,#0d,#01,#0c
	db #01,#0b,#01,#0b,#01,#09,#01,#07
	db #01,#07,#01,#07,#01,#06,#01,#06
	db #01,#06,#01,#05,#01,#ff,#0d,#01
	db #00,#01,#ff,#0f,#00,#0e,#00,#09
	db #00,#08,#00,#00,#00,#ff,#05,#01
	db #06,#01,#ff,#06,#01,#07,#01,#ff
	db #09,#01,#0b,#01,#ff,#0b,#01,#0c
	db #01,#ff,#0e,#08,#00,#08,#ff,#0f
	db #01,#0e,#01,#0d,#08,#0c,#08,#0a
	db #08,#09,#08,#08,#08,#00,#08,#ff
	db #0f,#01,#0e,#01,#0d,#00,#0c,#01
	db #0b,#01,#0a,#01,#07,#01,#06,#01
	db #06,#01,#06,#01,#06,#01,#06,#01
	db #06,#01,#06,#01,#06,#01,#06,#01
	db #06,#01,#04,#01,#04,#01,#04,#01
	db #04,#01,#04,#01,#04,#01,#04,#01
	db #04,#01,#04,#01,#04,#01,#02,#01
	db #02,#01,#02,#01,#02,#01,#02,#01
	db #02,#01,#02,#01,#02,#01,#02,#01
	db #02,#01,#00,#01,#ff,#0c,#08,#0c
	db #08,#0c,#08,#0c,#08,#0c,#08,#0c
	db #08,#0c,#08,#ff
;
; #7e98
; call #cd55 ; play
;
; #7e0c
; ld a,#01
; call #d0b4 ; init
;
; ld a,#01 is not needed.
; a poke will be better -> ld (lcd65),#01 but there is only 1 theme of music !
;
.music_info
	db "Night Shift (1990)(U.S.Gold)(Uncle Art)",0
	db "",0

	read "music_end.asm"
