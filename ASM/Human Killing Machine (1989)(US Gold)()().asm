; Music of Human Killing Machine (1989)(US Gold)()()
; Ripped by Megachur the 03/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HUMANKIM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #f000
FIRST_THEME				equ 1
LAST_THEME				equ 3

	read "music_header.asm"

	jp lf063
.music_end equ $ + 1
.lf004 equ $ + 1
.lf003
	db #00,#00,#00
	jp lf090
.lf010 equ $ + 7
.lf00e equ $ + 5
.lf00c equ $ + 3
.lf00b equ $ + 2
.lf00a equ $ + 1
.lf009
	db #00,#06,#00,#00,#00,#00,#00,#00
.lf015 equ $ + 4
.lf014 equ $ + 3
.lf012 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.lf03b
	cp #07
	jr nz,lf045
	ld a,c
	ld (lf009),a
	ld a,#07
.lf045
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
.lf063
	di
	ld a,#c3
	ld (#0038),a
	ld hl,lf071
	ld (#0039),hl
	ei
	ret
.lf071
	di
	push hl
	push bc
	push de
	push af
	push ix
	push iy
	ld hl,lf00a
	dec (hl)
	jr nz,lf085
	ld (hl),#06
	call lf090
.lf085
	pop iy
	pop ix
	pop af
	pop de
	pop bc
	pop hl
	ei
	reti
;
.lf090
.play_music
;
	ld a,(lf004)
	cp #fd
	ret z
	cp #ff
	jp z,lf296
	cp #fe
	jp z,lf336
	jp lf0a3
.lf0a3
	ld a,(lf004)
;
.init_music
;
	ld c,a
	ld a,#ff
	ld (lf004),a
	ld a,c
	ld iy,lf75e
	cp #01
	jp z,lf19e
	ld iy,lf756
	cp #02
	jp z,lf19e
	ld iy,lf74e
	cp #03
	jp z,lf19e
	cp #00
	jr nz,lf0d4
	ld a,#fd
	ld (lf004),a
	jp lf1e5
.lf0d4
	ld a,#fe
	ld (lf004),a
	ld iy,lf4ba
	ld a,c
	cp #04
	jp z,lf4cc
	ld iy,lf4c0
	cp #05
	jp z,lf4cc
	ld iy,lf4c6
	cp #06
	jp z,lf4cc
	ret
.lf0f6
	xor #0e
	jr lf108
	dw #0d4d,#0c8e,#0bda,#0b2f
.lf108 equ $ + 6
	dw #0a8f,#09f7,#0968,#08e1
	dw #0861,#07e9,#0777,#070c
	dw #06a7,#0647,#05ed,#0598
	dw #0547,#04fc,#04b4,#0470
	dw #0431,#03f4,#03bc,#0386
	dw #0353,#0324,#02f6,#02cc
	dw #02a4,#027e,#025a,#0238
	dw #0218,#01fa,#01de,#01c3
	dw #01aa,#0192,#017b,#0166
	dw #0152,#013f,#012d,#011c
	dw #010c,#00fd,#00ef,#00e1
	dw #00d5,#00c9,#00be,#00b3
	dw #00a9,#009f,#0096,#008e
	dw #0086,#007f,#0077,#0071
	dw #006a,#0064,#005f,#0059
	dw #0054,#0050,#004b,#0047
	dw #0043,#003f,#003c,#0038
	dw #0035,#0032,#002f,#002d
	dw #002a,#0028,#0026,#0024
	dw #0022,#0020
.lf19e
	call lf1e5
	ld ix,lf014
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld (lf00e),hl
	ld (lf00c),hl
	call lf225
	inc ix
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld (lf010),hl
	ld (lf00c),hl
	call lf225
	inc ix
	ld l,(iy+#04)
	ld h,(iy+#05)
	ld (lf012),hl
	ld (lf00c),hl
	call lf225
	ld a,#07
	ld c,(iy+#06)
	call lf03b
	ld a,#06
	ld c,#00
	jp lf03b
.lf1e5
	xor a
	ld (lf003),a
	ld b,#00
.lf1eb
	push bc
	ld a,b
	cp #06
	jr nz,lf1f3
	ld b,#08
.lf1f3
	ld a,b
	ld c,#00
	call lf03b
	pop bc
	inc b
	ld a,b
	cp #0b
	jr nz,lf1eb
	ld c,#3f
	ld a,#07
	call lf03b
	ld hl,lf014
	ld de,lf015
	ld bc,#0026
	ld (hl),#00
	ldir
	ld ix,lf014
	ld (ix+#09),#01
	ld (ix+#0a),#01
	ld (ix+#0b),#01
	ret
.lf225
	ld hl,(lf00c)
	ld a,(ix+#0f)
	ld e,a
	ld d,#00
	add hl,de
	ld a,(hl)
	cp #ff
	jp z,lf270
	cp #95
	jp z,lf279
	cp #9e
	jr nz,lf252
	inc hl
	ld a,(hl)
	ld (ix+#15),a
	inc hl
	ld a,(ix+#0f)
	add #02
	ld (ix+#0f),a
	ld (ix+#18),a
	jp lf225
.lf252
	cp #9d
	jr nz,lf278
	dec (ix+#15)
	jr z,lf264
	ld a,(ix+#18)
	ld (ix+#0f),a
	jp lf225
.lf264
	inc hl
	ld a,(hl)
	cp #ff
	jr z,lf270
	inc (ix+#0f)
	jp lf225
.lf270
	call lf1e5
	ld a,#01
	ld (lf003),a
.lf278
	ret
.lf279
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#00),a
	inc hl
	ld a,(hl)
	ld (ix+#03),a
	ld a,(ix+#0f)
	add #05
	ld (ix+#0f),a
	ret
.lf296
	xor a
	ld (lf00b),a
	ld hl,(lf00e)
	ld (lf00c),hl
	ld ix,lf014
	call lf2d0
	ld a,#01
	ld (lf00b),a
	ld hl,(lf010)
	ld (lf00c),hl
	inc ix
	call lf2d0
	ld a,#02
	ld (lf00b),a
	ld hl,(lf012)
	ld (lf00c),hl
	inc ix
	call lf2d0
	ld a,(lf003)
	and a
	ret nz
	call lf336
	ret
.lf2d0
	dec (ix+#09)
	ret nz
.lf2d4
	ld l,(ix+#00)
	ld h,(ix+#03)
	ld e,(ix+#06)
	ld d,#00
	add hl,de
	ld a,#80
	and (hl)
	jr z,lf309
	inc (ix+#06)
	ld a,#94
	cp (hl)
	jr nz,lf302
	ld (ix+#06),#00
	dec (ix+#12)
	jp nz,lf2d4
	call lf225
	ld a,(lf003)
	and a
	ret nz
	jp lf2d4
.lf302
	ld a,(hl)
	ld (ix+#24),a
	jp lf2d4
.lf309
	ld a,(ix+#06)
	add #02
	ld (ix+#06),a
	ld (ix+#1b),#00
	ld a,(ix+#0c)
	add (hl)
	sub #0c
	sla a
	ld e,a
	inc hl
	ld a,(hl)
	srl a
	ld c,a
	add c
	add c
	ld (ix+#09),a
	ld hl,lf0f6
	add hl,de
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld a,(hl)
	ld (ix+#21),a
	ret
.lf336
	ld ix,lf014
	xor a
	ld (lf00b),a
	call lf353
	inc ix
	ld hl,lf00b
	inc (hl)
	call lf353
	inc ix
	ld hl,lf00b
	inc (hl)
	jp lf353
.lf353
	ld a,(ix+#1b)
	ld c,a
	ld b,#00
	ld l,(ix+#24)
	res 7,l
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,lf3da
	add hl,de
	add hl,bc
	ld a,(hl)
	cp #ff
	jr nz,lf376
	ld (ix+#1b),#00
	jp lf353
.lf376
	push af
	ld a,(ix+#1b)
	cp #0f
	jr z,lf381
	inc (ix+#1b)
.lf381
	ld bc,#0010
	add hl,bc
	ld a,(hl)
	and a
	jr nz,lf391
	ld l,(ix+#1e)
	ld h,(ix+#21)
	jr lf3bb
.lf391
	and #80
	jr z,lf3aa
	ld c,(ix+#1e)
	ld b,(ix+#21)
	ld a,(hl)
	neg
	ld l,a
	ld h,#00
	add hl,bc
	ld (ix+#1e),l
	ld (ix+#21),h
	jr lf3bb
.lf3aa
	ld c,(hl)
	ld b,#00
	ld l,(ix+#1e)
	ld h,(ix+#21)
	sbc hl,bc
	ld (ix+#1e),l
	ld (ix+#21),h
.lf3bb
	ld c,l
	ld a,(lf00b)
	sla a
	call lf03b
	ld c,h
	ld a,(lf00b)
	sla a
	add #01
	call lf03b
	pop af
	ld c,a
	ld a,(lf00b)
	add #08
	call lf03b
	ret
.lf3da
	db #0f,#0d,#0a,#08,#06,#04,#02,#02
	db #02,#02,#00,#00,#00,#00,#00,#00
	db #9d,#9d,#9d,#9d,#63,#63,#63,#63
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#f6,#f6,#f6,#f6,#0a,#0a
	db #0a,#0a,#f6,#f6,#f6,#f6,#0a,#0a
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #ff,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #02,#02,#fe,#fe,#fe,#fe,#02,#02
	db #02,#02,#fe,#fe,#fe,#fe,#02,#02
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#0a,#0a,#0a,#0a
	db #0f,#0c,#0f,#0c,#0f,#0c,#0f,#0c
	db #0f,#0c,#0f,#0c,#0d,#0b,#0a,#09
	db #0f,#0d,#0a,#08,#06,#04,#02,#02
	db #02,#02,#00,#00,#00,#00,#00,#00
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf4c0 equ $ + 6
.lf4ba
	db #fd,#10,#01,#82,#00,#03,#f6,#01
.lf4c6 equ $ + 4
	db #00,#85,#00,#08,#fe,#00,#02,#86
	db #00,#02
.lf4cc
	ld a,(lf009)
	and (iy+#00)
	or (iy+#01)
	ld c,a
	ld a,#07
	call lf03b
	ld a,#06
	ld c,#1f
	call lf03b
	ld e,(iy+#02)
	ld d,#00
	ld ix,lf014
	add ix,de
	ld a,(iy+#03)
	ld (ix+#24),a
	ld (ix+#1b),#00
	ld a,(iy+#04)
	ld (ix+#1e),a
	ld a,(iy+#05)
	ld (ix+#21),a
	jp lf090
	db #80,#1a,#05,#26,#05,#94,#1a,#c8
.lf50f equ $ + 1
	db #94,#95,#10,#0c,#06,#f5,#95,#01
	db #0c,#0c,#f5,#ff,#82,#2a,#05,#26
	db #05,#26,#05,#2a,#05,#26,#05,#26
	db #05,#2a,#05,#26,#05,#2b,#05,#26
	db #05,#26,#05,#2b,#05,#26,#05,#26
	db #05,#2b,#05,#26,#05,#2d,#05,#26
	db #05,#26,#05,#2d,#05,#26,#05,#26
	db #05,#2d,#05,#26,#05,#2b,#05,#26
	db #05,#26,#05,#2b,#05,#26,#05,#26
	db #05,#2b,#05,#26,#05,#2a,#c8,#94
.lf55e
	db #95,#01,#0c,#1a,#f5,#ff,#82,#2d
	db #05,#26,#05,#26,#05,#2d,#05,#26
	db #05,#26,#05,#2d,#05,#26,#05,#2f
	db #05,#26,#05,#26,#05,#2f,#05,#26
	db #05,#26,#05,#2f,#05,#26,#05,#30
	db #05,#26,#05,#26,#05,#30,#05,#26
	db #05,#26,#05,#30,#05,#26,#05,#2f
	db #05,#26,#05,#26,#05,#2f,#05,#26
	db #05,#26,#05,#2f,#05,#26,#05,#2d
.lf5a8 equ $ + 2
	db #c8,#94,#95,#01,#0c,#64,#f5,#ff
	db #80,#01,#04,#01,#04,#01,#04,#01
.lf5bd equ $ + 7
	db #04,#94,#01,#08,#01,#38,#94,#95
	db #08,#00,#ae,#f5,#95,#01,#00,#b8
	db #f5,#ff,#82,#21,#40,#24,#40,#26
.lf5d0 equ $ + 2
	db #40,#94,#95,#01,#0c,#c8,#f5,#ff
	db #82,#2d,#04,#2b,#04,#2d,#04,#30
.lf5e5 equ $ + 7
	db #04,#94,#30,#08,#32,#38,#94,#95
	db #08,#18,#d6,#f5,#95,#01,#18,#e0
	db #f5,#ff,#80,#01,#08,#21,#04,#21
	db #04,#01,#08,#21,#04,#21,#04,#01
	db #08,#21,#04,#21,#04,#01,#08,#21
	db #04,#21,#04,#01,#08,#24,#04,#24
	db #04,#01,#08,#24,#04,#24,#04,#01
	db #08,#26,#04,#26,#04,#01,#08,#26
	db #04,#26,#04,#94,#82,#21,#04,#21
	db #04,#23,#04,#23,#04,#24,#04,#24
	db #04,#26,#04,#26,#04,#28,#04,#28
	db #04,#29,#04,#29,#04,#2b,#04,#2b
.lf644 equ $ + 6
	db #04,#2d,#04,#2d,#04,#94,#95,#c8
	db #00,#f0,#f5,#ff,#81,#0c,#04,#00
	db #04,#0c,#04,#0c,#04,#16,#04,#18
	db #04,#0c,#04,#0c,#04,#94,#00,#80
	db #00,#80,#94,#82,#24,#04,#24,#04
	db #26,#04,#26,#04,#28,#04,#28,#04
	db #29,#04,#29,#04,#2b,#04,#2b,#04
	db #2d,#04,#2d,#04,#2f,#04,#2f,#04
.lf683 equ $ + 5
	db #30,#04,#30,#04,#94,#9e,#c8,#95
	db #02,#15,#4a,#f6,#95,#01,#18,#4a
	db #f6,#95,#01,#1a,#4a,#f6,#95,#02
	db #15,#4a,#f6,#95,#01,#18,#4a,#f6
	db #95,#01,#1a,#4a,#f6,#9d,#ff,#0c
	db #04,#0c,#04,#18,#04,#18,#04,#94
	db #40,#08,#3e,#08,#40,#08,#3e,#10
	db #3c,#10,#39,#08,#3c,#08,#39,#08
	db #3c,#08,#3e,#10,#39,#08,#3c,#08
	db #3e,#08,#40,#08,#3e,#08,#40,#08
	db #3e,#10,#3c,#10,#39,#08,#37,#08
	db #34,#08,#37,#08,#39,#10,#39,#08
	db #37,#08,#34,#08,#94,#39,#70,#37
	db #10,#39,#08,#37,#08,#32,#08,#34
	db #68,#39,#70,#37,#10,#39,#08,#37
	db #08,#32,#08,#40,#68,#94,#00,#80
	db #00,#80,#94,#82,#39,#40,#3c,#20
	db #3e,#20,#94,#39,#80,#2d,#80,#94
	db #28,#04,#28,#04,#29,#04,#29,#04
	db #2b,#04,#2b,#04,#2d,#04,#2d,#04
	db #2f,#04,#2f,#04,#30,#04,#30,#04
	db #32,#04,#32,#04,#34,#04,#34,#04
.lf72f equ $ + 1
	db #94,#95,#02,#00,#01,#f7,#95,#02
	db #00,#ae,#f6,#95,#01,#00,#09,#f7
	db #95,#01,#00,#e3,#f6,#95,#01,#0c
	db #e3,#f6,#95,#04,#00,#ae,#f6,#ff
.lf74e
	dw lf644,lf683,lf72f
	db #30,#00
.lf756
	dw lf5bd,lf5d0,lf5e5
	db #30,#00
.lf75e
	dw lf50f,lf55e,lf5a8
	db #38,#00,#00
;
; #15c9
; ld a,#00
; ld (#0503),a
; ld (#f004),a
; call #f000
; ld a,#03
; ld (#f004),a	; main theme

; #14d3
; call #f000
; ld a,#02
; ld (#f004),a
; .l14db
; ld a,(#f003)
; cp #00
; jr z,l14db
; ld a,#00
; ld (#f004),a
;
.music_info
	db "Human Killing Machine (1989)(US Gold)()",0
	db "",0

	read "music_end.asm"
