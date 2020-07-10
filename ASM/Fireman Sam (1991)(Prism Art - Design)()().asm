; Music of Fireman Sam (1991)(Prism Art - Design)()()
; Ripped by Megachur the 17/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FIREMANS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #9133

	read "music_header.asm"

	di
;
.init_music
;
	ld a,#bc
	ld (l3f9d),a
	call l92bc
	xor a
	ld (l9297),a
	ld hl,l9305
	ld (l9174),hl
	ld hl,l9497
	ld (l9206),hl
	ret                     ; Modified by Megachur
;	ld hl,interrupt38
;	ld (&0039),hl
	ld a,#c3
	ld (#0038),a
;	ei                      ; Modified by Megachur
.l9152
	call l916a
	call #3ca1
	ld a,(#01ff)
	and #10
	jp nz,l92bc
	ld a,(l9297)
	cp #03
	jp z,l92bc
	jr l9152
;
play_music
.l916a
;
	call play_bis        ; added by Megachur
	ld a,(l9297)
	cp #03
	jp z,l92bc
.l9174 equ $ + 2
	ld ix,#0000
.l9177 equ $ + 1
	ld a,#00
	and a
	jp nz,l9204
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(ix+#02)
	cp #ff
	jr nz,l919b
	ld a,(l9297)
	or #01
	ld (l9297),a
	ld a,(l3f9d)
	or #01
	ld (l3f9d),a
	jr l9204
.l919b
	bit 7,h
	jr z,l91be
	push af
	ld a,(ix+#03)
	ld (l92b6),a
	ld a,(ix+#04)
	ld (l92a8),a
	ld a,(ix+#05)
	ld (l92af),a
	ld a,#80
	ld (l929a),a
	inc ix
	inc ix
	inc ix
	pop af
.l91be
	res 7,h
	ld (l9177),a
	ld c,#fe
	ld b,#00
	ld a,l
	or h
	jr nz,l91cf
	ld c,#ff
	ld b,#01
.l91cf
	ld a,(l3f9d)
	and c
	or b
	ld (l3f9d),a
	ld e,#00
	ld a,l
	call l3fce
	ld e,#01
	ld a,h
	call l3fce
	ld e,#08
	ld hl,l91f0
	call l9299
	ld a,#0d
	call l3fce
.l91f0
	ld e,#07
	ld a,(l3f9d)
	res 6,a
	call l3fce
	inc ix
	inc ix
	inc ix
	ld (l9174),ix
.l9206 equ $ + 2
.l9204
	ld ix,#0000
.l9209 equ $ + 1
	ld a,#00
	and a
	jp nz,l9296
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(ix+#02)
	cp #ff
	jr nz,l922d
	ld a,(l9297)
	or #02
	ld (l9297),a
	ld a,(l3f9d)
	or #02
	ld (l3f9d),a
	jr l9296
.l922d
	bit 7,h
	jr z,l9250
	push af
	ld a,(ix+#03)
	ld (l92b6),a
	ld a,(ix+#04)
	ld (l92a8),a
	ld a,(ix+#05)
	ld (l92af),a
	ld a,#80
	ld (l929a),a
	inc ix
	inc ix
	inc ix
	pop af
.l9250
	res 7,h
	ld (l9209),a
	ld c,#fd
	ld b,#00
	ld a,l
	or h
	jr nz,l9261
	ld c,#ff
	ld b,#02
.l9261
	ld a,(l3f9d)
	and c
	or b
	ld (l3f9d),a
	ld e,#02
	ld a,l
	call l3fce
	ld e,#03
	ld a,h
	call l3fce
	ld e,#09
	ld hl,l9282
	call l9299
	ld a,#0d
	call l3fce
.l9282
	ld e,#07
	ld a,(l3f9d)
	res 6,a
	call l3fce
	inc ix
	inc ix
	inc ix
	ld (l9206),ix
.l9297 equ $ + 1
.l9296
	ld a,#00
	ret
.l929a equ $ + 1
.l9299
	ld a,#00
	and a
	ret z
	xor a
	ld (l929a),a
	dec a
	call l3fce
	ld e,#0b
.l92a8 equ $ + 1
	ld a,#00
	call l3fce
	ld e,#0c
.l92af equ $ + 1
	ld a,#00
	call l3fce
	ld e,#0d
.l92b6 equ $ + 1
	ld a,#00
	call l3fce
	pop de
	jp (hl)
;
.stop_music
.l92bc
;
	ld e,#08
	xor a
	call l3fce
	inc e
	call l3fce
	inc e
	call l3fce
	ld a,#07
	ld c,#3f
	jp l3fd0
;
interrupt38	; 92d1
;
	di
	push af
	push hl
	push de
	push bc
	push iy
	push ix
.l92db equ $ + 1
	ld a,#01			; Modified by Megachur #04
	dec a
	ld (l92db),a
	jr nz,l92fb
	ld a,#01			; Modified by Megachur #06
	ld (l92db),a
;
.play_bis
;
	ld a,(l9177)
	and a
	jr z,l92f1
	dec a
	ld (l9177),a
.l92f1
	ld a,(l9209)
	and a
	jr z,l92fb
	dec a
	ld (l9209),a
.l92fb
;	pop ix
	defs 1,0
	ret
	pop iy
	pop bc
	pop de
	pop hl
	pop af
	ei
	ret
.l9305
	db #66,#81,#10,#00,#50,#c3,#ef,#00
	db #10,#66,#01,#10,#ef,#00,#10,#66
	db #01,#10,#ef,#00,#08,#66,#01,#18
	db #1c,#01,#10,#ef,#00,#10,#d5,#00
	db #10,#b3,#00,#10,#1c,#01,#10,#66
	db #01,#08,#3e,#01,#18,#d5,#00,#0c
	db #ef,#00,#0c,#0c,#01,#0a,#1c,#01
	db #0a,#3e,#01,#0a,#66,#01,#0a,#66
	db #01,#10,#ef,#00,#10,#66,#01,#10
	db #ef,#00,#10,#66,#01,#10,#ef,#00
	db #08,#66,#01,#18,#1c,#01,#10,#ef
	db #00,#10,#d5,#00,#10,#b3,#00,#10
	db #1c,#01,#10,#66,#01,#08,#3e,#01
	db #18,#8e,#00,#0c,#9f,#00,#0c,#b3
	db #00,#08,#be,#00,#08,#d5,#00,#10
	db #00,#00,#04,#d5,#00,#10,#9f,#00
	db #10,#be,#00,#10,#d5,#00,#0c,#ef
	db #00,#08,#8e,#00,#08,#9f,#00,#08
	db #b3,#00,#10,#d5,#00,#10,#00,#00
	db #08,#d5,#00,#10,#9f,#00,#10,#be
	db #00,#10,#d5,#00,#08,#ef,#00,#08
	db #fd,#00,#08,#1c,#01,#08,#3e,#01
	db #08,#1c,#01,#18,#1c,#01,#10,#d5
	db #00,#08,#ef,#00,#08,#fd,#00,#08
	db #1c,#01,#08,#fd,#00,#08,#ef,#00
	db #40,#66,#01,#10,#ef,#00,#10,#66
	db #01,#10,#ef,#00,#10,#66,#01,#10
	db #ef,#00,#08,#66,#01,#18,#1c,#01
	db #10,#ef,#00,#10,#d5,#00,#10,#b3
	db #00,#10,#1c,#01,#10,#66,#01,#08
	db #3e,#01,#18,#d5,#00,#0c,#ef,#00
	db #0c,#0c,#01,#0a,#1c,#01,#0a,#3e
	db #01,#0a,#66,#01,#0a,#66,#01,#10
	db #ef,#00,#10,#66,#01,#10,#ef,#00
	db #10,#66,#01,#10,#ef,#00,#08,#66
	db #01,#18,#1c,#01,#10,#ef,#00,#10
	db #d5,#00,#10,#b3,#00,#10,#1c,#01
	db #10,#ef,#00,#08,#d5,#00,#18,#8e
	db #00,#0c,#9f,#00,#0c,#b3,#00,#08
	db #be,#00,#08,#d5,#00,#10,#00,#00
	db #04,#d5,#00,#10,#9f,#00,#10,#be
	db #00,#10,#d5,#00,#0c,#ef,#00,#08
	db #8e,#00,#08,#9f,#00,#08,#b3,#00
	db #10,#d5,#00,#10,#00,#00,#08,#d5
	db #00,#10,#9f,#00,#10,#be,#00,#10
	db #d5,#00,#08,#ef,#00,#08,#fd,#00
	db #08,#1c,#01,#08,#3e,#01,#08,#1c
	db #01,#18,#d5,#00,#10,#9f,#00,#08
	db #b3,#00,#08,#be,#00,#08,#d5,#00
	db #08,#be,#00,#10,#b3,#00,#60,#00
	db #00,#ff
.l9497
	db #98,#85,#08,#00,#40,#9c,#00,#00
	db #08,#98,#05,#08,#00,#00,#08,#98
	db #05,#08,#00,#00,#08,#98,#05,#08
	db #00,#00,#08,#98,#05,#08,#00,#00
	db #08,#98,#05,#06,#00,#00,#02,#98
	db #05,#10,#00,#00,#08,#98,#05,#08
	db #00,#00,#08,#98,#05,#08,#00,#00
	db #08,#a8,#06,#08,#00,#00,#08,#a8
	db #06,#08,#00,#00,#08,#f8,#04,#08
	db #00,#00,#08,#f8,#04,#06,#00,#00
	db #02,#f8,#04,#10,#00,#00,#08,#54
	db #03,#0c,#bc,#03,#0c,#30,#04,#0a
	db #70,#04,#0a,#f8,#04,#0a,#98,#05
	db #0a,#98,#05,#08,#00,#00,#08,#98
	db #05,#08,#00,#00,#08,#98,#05,#08
	db #00,#00,#08,#98,#05,#08,#00,#00
	db #08,#98,#05,#08,#00,#00,#08,#98
	db #05,#06,#00,#00,#02,#98,#05,#10
	db #00,#00,#08,#98,#05,#08,#00,#00
	db #08,#98,#05,#08,#00,#00,#08,#a8
	db #06,#08,#00,#00,#08,#a8,#06,#08
	db #00,#00,#08,#f8,#04,#08,#00,#00
	db #08,#f8,#04,#06,#00,#00,#02,#f8
	db #04,#10,#00,#00,#08,#cc,#02,#3c
	db #30,#04,#20,#bc,#03,#24,#cc,#02
	db #38,#30,#04,#20,#bc,#03,#20,#7c
	db #02,#30,#54,#03,#20,#7c,#02,#18
	db #cc,#02,#20,#f8,#02,#20,#98,#05
	db #08,#00,#00,#08,#98,#05,#08,#00
	db #00,#08,#98,#05,#08,#00,#00,#08
	db #98,#05,#08,#00,#00,#08,#98,#05
	db #08,#00,#00,#08,#98,#05,#06,#00
	db #00,#02,#98,#05,#10,#00,#00,#08
	db #98,#05,#08,#00,#00,#08,#98,#05
	db #08,#00,#00,#08,#a8,#06,#08,#00
	db #00,#08,#a8,#06,#08,#00,#00,#08
	db #f8,#04,#08,#00,#00,#08,#f8,#04
	db #06,#00,#00,#02,#f8,#04,#10,#00
	db #00,#08,#54,#03,#0c,#bc,#03,#0c
	db #30,#04,#0a,#70,#04,#0a,#f8,#04
	db #0a,#98,#05,#0a,#98,#05,#08,#00
	db #00,#08,#98,#05,#08,#00,#00,#08
	db #98,#05,#08,#00,#00,#08,#98,#05
	db #08,#00,#00,#08,#98,#05,#08,#00
	db #00,#08,#98,#05,#06,#00,#00,#02
	db #98,#05,#10,#00,#00,#08,#98,#05
	db #08,#00,#00,#08,#98,#05,#08,#00
	db #00,#08,#a8,#06,#08,#00,#00,#08
	db #a8,#06,#08,#00,#00,#08,#f8,#04
	db #08,#00,#00,#08,#f8,#04,#06,#00
	db #00,#02,#f8,#04,#10,#00,#00,#08
	db #cc,#02,#3c,#30,#04,#20,#bc,#03
	db #24,#cc,#02,#38,#30,#04,#20,#bc
	db #03,#20,#7c,#02,#30,#54,#03,#20
	db #bc,#03,#20,#cc,#02,#20,#f8,#02
	db #20,#cc,#02,#20,#00,#00,#ff
;
; added by Megachur
;	
.l3f9d
	db #00
.l3fce
	ld c,a
	ld a,e
.l3fd0
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
	ret
;
.music_info
	db "Fireman Sam (1991)(Prism Art - Design)()",0
	db "",0

	read "music_end.asm"
