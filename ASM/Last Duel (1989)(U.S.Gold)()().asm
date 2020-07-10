; Music of Last Duel (1989)(U.S.Gold)()()
; Ripped by Megachur the 11/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LASTDUEL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #f000
FIRST_THEME				equ 1
LAST_THEME				equ 3

	read "music_header.asm"

.lf000
	db #00
.lf001
	db #00
	db #00
	jp lf063
	jp lf08f
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
	push hl
	push bc
	push de
	push af
	push ix
	push iy
	ld hl,lf00a
	dec (hl)
	jr nz,lf084
	ld (hl),#06
	call lf08f
.lf084
	pop iy
	pop ix
	pop af
	pop de
	pop bc
	pop hl
	ei
	reti
;
.lf08f
.play_music
;
	ld a,(lf001)
	cp #fd
	ret z
	cp #ff
	jp z,lf295
	cp #fe
	jp z,lf335
	jp lf0a2
.lf0a2
	ld a,(lf001)
;
.init_music
;
	ld c,a
	ld a,#ff
	ld (lf001),a
	ld a,c
	ld iy,lf776
	cp #01
	jp z,lf19d
	ld iy,lf76e
	cp #02
	jp z,lf19d
	ld iy,lf766
	cp #03
	jp z,lf19d
	cp #00
	jr nz,lf0d3
	ld a,#fd
	ld (lf001),a
	jp lf1e4
.lf0d3
	ld a,#fe
	ld (lf001),a
	ld iy,lf4b9
	ld a,c
	cp #04
	jp z,lf4cb
	ld iy,lf4bf
	cp #05
	jp z,lf4cb
	ld iy,lf4c5
	cp #06
	jp z,lf4cb
	ret
.lf0f5
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
.lf19d
	call lf1e4
	ld ix,lf014
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld (lf00e),hl
	ld (lf00c),hl
	call lf224
	inc ix
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld (lf010),hl
	ld (lf00c),hl
	call lf224
	inc ix
	ld l,(iy+#04)
	ld h,(iy+#05)
	ld (lf012),hl
	ld (lf00c),hl
	call lf224
	ld a,#07
	ld c,(iy+#06)
	call lf03b
	ld c,#00
	ld a,#06
	jp lf03b
;
.stop_music
.lf1e4
;
	xor a
	ld (lf000),a
	ld b,#00
.lf1ea
	push bc
	ld a,b
	cp #06
	jr nz,lf1f2
	ld b,#08
.lf1f2
	ld a,b
	ld c,#00
	call lf03b
	pop bc
	inc b
	ld a,b
	cp #0b
	jr nz,lf1ea
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
.lf224
	ld hl,(lf00c)
	ld a,(ix+#0f)
	ld e,a
	ld d,#00
	add hl,de
	ld a,(hl)
	cp #ff
	jp z,lf26f
	cp #95
	jp z,lf278
	cp #9e
	jr nz,lf251
	inc hl
	ld a,(hl)
	ld (ix+#15),a
	inc hl
	ld a,(ix+#0f)
	add #02
	ld (ix+#0f),a
	ld (ix+#18),a
	jp lf224
.lf251
	cp #9d
	jr nz,lf277
	dec (ix+#15)
	jr z,lf263
	ld a,(ix+#18)
	ld (ix+#0f),a
	jp lf224
.lf263
	inc hl
	ld a,(hl)
	cp #ff
	jr z,lf26f
	inc (ix+#0f)
	jp lf224
.lf26f
	call lf1e4
	ld a,#01
	ld (lf000),a
.lf277
	ret
.lf278
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
.lf295
	xor a
	ld (lf00b),a
	ld hl,(lf00e)
	ld (lf00c),hl
	ld ix,lf014
	call lf2cf
	ld a,#01
	ld (lf00b),a
	ld hl,(lf010)
	ld (lf00c),hl
	inc ix
	call lf2cf
	ld a,#02
	ld (lf00b),a
	ld hl,(lf012)
	ld (lf00c),hl
	inc ix
	call lf2cf
	ld a,(lf000)
	and a
	ret nz
	call lf335
	ret
.lf2cf
	dec (ix+#09)
	ret nz
.lf2d3
	ld l,(ix+#00)
	ld h,(ix+#03)
	ld e,(ix+#06)
	ld d,#00
	add hl,de
	ld a,#80
	and (hl)
	jr z,lf308
	inc (ix+#06)
	ld a,#94
	cp (hl)
	jr nz,lf301
	ld (ix+#06),#00
	dec (ix+#12)
	jp nz,lf2d3
	call lf224
	ld a,(lf000)
	and a
	ret nz
	jp lf2d3
.lf301
	ld a,(hl)
	ld (ix+#24),a
	jp lf2d3
.lf308
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
	ld hl,lf0f5
	add hl,de
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld a,(hl)
	ld (ix+#21),a
	ret
.lf335
	ld ix,lf014
	xor a
	ld (lf00b),a
	call lf352
	inc ix
	ld hl,lf00b
	inc (hl)
	call lf352
	inc ix
	ld hl,lf00b
	inc (hl)
	jp lf352
.lf352
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
	ld de,lf3d9
	add hl,de
	add hl,bc
	ld a,(hl)
	cp #ff
	jr nz,lf375
	ld (ix+#1b),#00
	jp lf352
.lf375
	push af
	ld a,(ix+#1b)
	cp #0f
	jr z,lf380
	inc (ix+#1b)
.lf380
	ld bc,#0010
	add hl,bc
	ld a,(hl)
	and a
	jr nz,lf390
	ld l,(ix+#1e)
	ld h,(ix+#21)
	jr lf3ba
.lf390
	and #80
	jr z,lf3a9
	ld c,(ix+#1e)
	ld b,(ix+#21)
	ld a,(hl)
	neg
	ld l,a
	ld h,#00
	add hl,bc
	ld (ix+#1e),l
	ld (ix+#21),h
	jr lf3ba
.lf3a9
	ld c,(hl)
	ld b,#00
	ld l,(ix+#1e)
	ld h,(ix+#21)
	sbc hl,bc
	ld (ix+#1e),l
	ld (ix+#21),h
.lf3ba
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
.lf3d9
	db #0d,#0c,#0b,#0a,#08,#06,#04,#02
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #05,#03,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#ff,#00,#ff,#00
	db #ff,#00,#ff,#00,#01,#00,#01,#00
	db #0c,#0c,#0c,#0c,#ff,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #02,#fe,#fe,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#0a,#0a,#0a,#0a
	db #0f,#0c,#0f,#0c,#0f,#0c,#0f,#0c
	db #0f,#0c,#0f,#0c,#0d,#0b,#0a,#09
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#00
	db #50,#46,#3c,#32,#28,#1e,#14,#0a
	db #05,#04,#02,#01,#00,#00,#00,#00
	db #0f,#0c,#0a,#08,#06,#05,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #50,#46,#3c,#28,#14,#0a,#05,#02
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #0c,#0c,#0c,#0c,#ff,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #01,#ff,#ff,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf4b9
	db #ed,#10,#01,#84,#78,#01
.lf4bf
	db #f6,#01,#00,#85,#32,#01
.lf4c5
	db #ed,#12,#02,#86,#00,#02
.lf4cb
	ld a,(lf009)
	and (iy+#00)
	or (iy+#01)
	ld c,a
	ld a,#07
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
	ld c,#1f
	ld a,#06
	call lf03b
	jp lf08f
	db #80,#01,#08,#01,#08,#01,#08,#01
	db #08,#94,#01,#10,#01,#10,#04,#04
	db #02,#04,#01,#10,#01,#10,#04,#04
	db #02,#04,#01,#08,#01,#08,#01,#08
	db #01,#08,#01,#10,#94
.lf52a
	db #95,#08,#00,#05,#f5,#95,#01,#00
	db #0f,#f5,#ff,#81,#0c,#04,#0d,#04
	db #0e,#04,#0f,#04,#10,#04,#11,#04
	db #12,#04,#13,#04,#14,#04,#15,#04
	db #16,#04,#17,#04,#18,#04,#19,#04
	db #94,#1f,#04,#21,#04,#1a,#08,#1d
	db #10,#1d,#08,#1c,#08,#1c,#08,#1a
	db #08,#1f,#04,#21,#04,#86,#3e,#60
	db #81,#3c,#04,#3e,#04,#3c,#04,#39
	db #04,#3c,#04,#39,#04,#37,#04,#39
	db #04,#1a,#10,#1a,#18,#1a,#10,#1a
	db #18,#18,#08,#18,#08,#18,#08,#18
	db #08,#1a,#10,#94
.lf58e
	db #95,#01,#0c,#35,#f5,#95,#01,#00
	db #53,#f5,#ff,#81,#1a,#08,#32,#10
	db #34,#08,#35,#08,#34,#08,#32,#38
	db #32,#08,#32,#08,#32,#08,#82,#32
	db #2a,#33,#02,#34,#02,#35,#02,#36
	db #02,#37,#02,#38,#02,#39,#02,#3a
	db #02,#3b,#02,#3c,#02,#3d,#02,#3e
	db #40,#81,#32,#10,#32,#18,#32,#10
	db #32,#18,#30,#08,#30,#08,#30,#08
	db #30,#08,#32,#10,#94
.lf5db
	db #95,#01,#00,#99,#f5,#ff,#80,#01
	db #18,#01,#08,#01,#10,#01,#10,#94
	db #01,#10,#01,#08,#01,#08,#01,#10
.lf5f6 equ $ + 3
	db #01,#10,#94,#95,#08,#00,#e1,#f5
	db #95,#ff,#00,#eb,#f5,#81,#0c,#08
	db #0c,#10,#0c,#08,#0c,#20,#0b,#08
	db #0b,#10,#0b,#08,#10,#10,#04,#10
	db #09,#08,#09,#10,#09,#08,#09,#20
	db #07,#08,#07,#10,#07,#08,#0c,#10
.lf626 equ $ + 3
	db #13,#10,#94,#9e,#20,#95,#01,#0c
	db #00,#f6,#95,#01,#11,#00,#f6,#9d
	db #fe,#82,#1f,#10,#2f,#08,#30,#06
	db #31,#02,#32,#08,#30,#08,#2f,#08
	db #2b,#08,#2d,#1e,#2e,#02,#2f,#30
	db #2b,#06,#2c,#02,#2d,#08,#2f,#08
	db #2d,#08,#2b,#08,#2a,#08,#2a,#0a
.lf660 equ $ + 5
	db #2b,#06,#26,#30,#94,#9e,#20,#95
	db #01,#05,#34,#f6,#95,#01,#0a,#34
	db #f6,#9d,#fe,#80,#01,#04,#01,#04
	db #01,#08,#01,#08,#01,#04,#01,#04
	db #01,#04,#01,#04,#01,#08,#01,#08
	db #01,#08,#07,#04,#01,#04,#01,#04
	db #06,#04,#01,#04,#01,#04,#05,#04
	db #01,#04,#01,#04,#04,#04,#01,#04
	db #01,#04,#03,#04,#01,#04,#02,#04
.lf6a9 equ $ + 6
	db #01,#04,#94,#01,#40,#94,#95,#02
	db #00,#6e,#f6,#95,#01,#00,#a6,#f6
	db #ff,#82,#3b,#08,#36,#08,#2f,#08
	db #3b,#08,#36,#08,#2f,#08,#3b,#08
	db #36,#08,#28,#0c,#26,#0c,#23,#0c
	db #21,#0c,#1f,#08,#1c,#08,#3b,#08
	db #36,#08,#2f,#08,#3b,#08,#36,#08
	db #2f,#08,#3b,#08,#36,#08,#28,#0a
	db #27,#02,#26,#08,#25,#02,#24,#02
	db #23,#0a,#22,#02,#21,#0c,#26,#06
.lf6fa equ $ + 7
	db #27,#02,#28,#08,#23,#40,#94,#95
	db #01,#00,#b4,#f6,#ff,#86,#2f,#02
	db #30,#02,#31,#02,#32,#02,#33,#02
	db #34,#02,#35,#02,#36,#02,#37,#02
	db #38,#02,#39,#02,#3a,#02,#3b,#18
	db #2f,#10,#34,#0a,#33,#02,#32,#08
	db #31,#02,#30,#02,#2f,#0a,#2e,#02
	db #2d,#0a,#2c,#02,#2b,#08,#28,#08
	db #2f,#02,#30,#02,#31,#02,#32,#02
	db #33,#02,#34,#02,#35,#02,#36,#02
	db #37,#02,#38,#02,#39,#02,#3a,#02
	db #3b,#18,#2f,#10,#34,#0c,#32,#0c
	db #2f,#0c,#2d,#0c,#32,#06,#33,#02
.lf760 equ $ + 5
	db #34,#08,#2f,#40,#94,#95,#01,#00
	db #00,#f7,#ff
.lf766
	dw lf6a9,lf6fa,lf760,#0031
.lf76e
	dw lf5f6,lf626,lf660,#0031
.lf776
	dw lf52a,lf58e,lf5db
	db #31,#00,#00,#00
;
; #0694
; ld a,#01
; ld (#f001),a
; ei
; halt
; .l069b
; ld a,(#f000)
; and a
; jr z,l069b
;
; poke f001,theme
; init f0a2
; play &f08f
;
.music_info
	db "Last Duel (1989)(U.S.Gold)()",0
	db "",0

	read "music_end.asm"
