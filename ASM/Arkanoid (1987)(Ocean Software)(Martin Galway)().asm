; Music of Arkanoid (1987)(Ocean Software)(Martin Galway)()
; Ripped by Megachur the 21/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ARKANOID.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0dd8
FIRST_THEME				equ 1
LAST_THEME				equ 8

	read "music_header.asm"

	ld a,#c3
	ld (#0038),a
	ld hl,l0dfa
	ld (#0039),hl	; set interrupt
	ei
	ret
;
.stop_music
;
	ld a,#08
	ld (l100c),a
	xor a
	ld (l11fa),a
	ld (l1487),a
	ld (l11f8),a
	ld (l1486),a
	jp l10f2
;
.play_music_interrupt
;
.l0dfa		; #38 music interrupt
	di
	exx
	ex af,af'
	push ix
	ld a,(l11f8)
	and a
	jp nz,l0f52
	ld a,(l11fa)
	and a
	jp nz,l0fdd
	ld a,(l1486)
	and a
	jp nz,l0e2c
	ld a,(l1487)
	and a
	jp nz,l0e29
.l0e1b
	pop ix
	ex af,af'
	exx
	ei
	ret
.l0e21
	halt
	ld a,(l1487)
	and a
	jr nz,l0e21
	ret
.l0e2a equ $ + 1
.l0e29
	jp #0000
.l0e2c
	ld hl,l1494
	ld bc,#0008
.l0e32
	dec a
	jp z,l0e3a
	add hl,bc
	jp l0e32
.l0e3a
	ld (l1488),hl
	ld a,#01
	ld (l1487),a
	dec a
	ld (l1486),a
	ld de,l148c
	ld bc,#0008
	ldir
	ld a,(l1493)
	and a
	jp nz,l0eae
	ld a,(l1491)
	ld (l148a),a
	ld a,(l1492)
	ld (l148b),a
	call l10e6
	ld c,#0f
	call l0f2a
	ld hl,l0e6f
	ld (l0e2a),hl
.l0e6f
	call l0f3a
	ld hl,l148a
	dec (hl)
	jp nz,l0e88
	ld a,(l1491)
	ld (hl),a
	ld hl,(l148c)
	ld bc,(l148f)
	add hl,bc
	ld (l148c),hl
.l0e88
	ld hl,l148b
	dec (hl)
	jp nz,l0e1b
	ld a,(l1492)
	ld (hl),a
	ld hl,(l1488)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l148c),de
	ld hl,l148e
	dec (hl)
	jp nz,l0e1b
.l0ea4
	xor a
	ld (l1487),a
	call l10f2
	jp l0e1b
.l0eae
	ld a,#0f
	ld (l148a),a
	xor a
	ld (l148b),a
	ld (l1492),a
	ld (l148f),a
	call l10e6
	call l0f3a
	ld hl,l0ec9
	ld (l0e2a),hl
.l0ec9
	ld a,(l148b)
	and a
	jp z,l0eea
	ld c,#00
	call l0f2a
	ld a,(l1492)
	inc a
	ld (l1492),a
	ld hl,l1491
	cp (hl)
	jp c,l0e1b
	xor a
	ld (l1492),a
	jp l0f1f
.l0eea
	ld a,(l148a)
	ld c,a
	call l0f2a
	ld a,(l1492)
	inc a
	ld (l1492),a
	ld hl,l1491
	cp (hl)
	jp c,l0e1b
	xor a
	ld (l1492),a
	ld a,(l148f)
	inc a
	ld (l148f),a
	ld hl,l148e
	cp (hl)
	jp c,l0e1b
	xor a
	ld (l148f),a
	ld a,(l148a)
	dec a
	jp z,l0ea4
	ld (l148a),a
.l0f1f
	ld a,(l148b)
	xor #01
	ld (l148b),a
	jp l0e1b
.l0f2a
	ld a,#08
.l0f2c
	push af
	push bc
	call l1103
	pop bc
	pop af
	inc a
	cp #0b
	jp c,l0f2c
	ret
.l0f3a
	ld bc,(l148c)
	push bc
	xor a
	call l10d9
	pop bc
	push bc
	inc bc
	ld a,#01
	call l10d9
	pop bc
	dec bc
	ld a,#02
	jp l10d9
;
.real_init_music
.l0f52
;
	ld a,#01
	ld (l11fa),a
	ld a,(l11f8)
	ld (l11f9),a
	ld hl,l127a
	ld bc,#0006
.l0f63
	dec a
	jp z,l0f6b
	add hl,bc
	jp l0f63
.l0f6b
	ld ix,l1204
	ld b,#03
	xor a
	ld (l1201),a
.l0f75
	ld (ix+#05),a
	ld (ix+#0d),a
	ld (ix+#0c),a
	ld (ix+#02),a
	ld (ix+#03),a
	push af
	ld a,(hl)
	ld e,a
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld d,a
	ld (ix+#0b),a
	inc hl
	push hl
	push bc
	ld a,(de)
	inc de
	ld (ix+#06),e
	ld (ix+#07),d
	call l10a0
	ld hl,l1201
	inc (hl)
	pop bc
	pop hl
	pop af
	ld de,#0010
	add ix,de
	djnz l0f75
	ld (l11fb),a
	ld (l11fe),a
	ld (l11ff),a
	ld (l11fc),a
	ld (l100b),a
	ld (l11f8),a
	ld hl,l122e
	ld a,(hl)
	inc hl
	or (hl)
	ld (l1203),a
	ld b,#38
	jp nz,l0fce
	ld b,#3c
.l0fce
	ld a,b
	ld (l1202),a
	ld a,#05
	ld (l100d),a
	call l10e6
	jp l0e1b
.l0fdd
	ld a,(l100d)
	inc a
	ld (l100d),a
	cp #06
	jp nz,l0e1b
;
.real_play_music
;
	xor a
	ld (l100d),a
	ld a,(l100b)
	inc a
	ld (l100b),a
	ld hl,l100c
	cp (hl)
	jp z,l1001
	call l11ef
	jp l0e1b
.l1001
	call l11c7
	xor a
	ld (l100b),a
	jp l0e1b
.l100b
	nop
.l100c
	ex af,af'
.l100d
	nop
.l100e
	ld a,(ix+#05)
	and a
	jp z,l104f
	dec (ix+#05)
	ret nz
	jp l104f
.l101c
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld a,(hl)
	inc hl
	ld (ix+#06),l
	ld (ix+#07),h
	and a
	jp nz,l104c
	ld a,(l11f9)
	cp #08
	jp z,l103d
	xor a
	ld (l11fa),a
	jp l10f2
.l103d
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	ld (ix+#06),l
	ld (ix+#07),h
	jp l101c
.l104c
	call l10a0
.l104f
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld a,(hl)
	ld c,a
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	and a
	jp z,l101c
	bit 7,a
	jp nz,l1079
	dec c
	call l10c0
	ld a,#0f
	ld (ix+#01),a
	ld c,a
	ld a,(l1201)
	add #08
	jp l1103
.l1079
	cp #d0
	jp z,l108e
	cp #c0
	jp nz,l1099
	ld a,(l100c)
	sla a
	ld (l100c),a
	jp l104f
.l108e
	ld a,(l100c)
	srl a
	ld (l100c),a
	jp l104f
.l1099
	ld a,c
	and #0f
	ld (ix+#05),a
	ret
.l10a0
	ld hl,l12e8
	ld b,a
	ld a,(l1201)
	cp #02
	ld a,b
	jp nz,l10b0
	ld hl,l130c
.l10b0
	dec a
	ld c,a
	ld b,#00
	add hl,bc
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#08),e
	ld (ix+#09),d
	ret
.l10c0
	ld hl,l1234
	ld b,#00
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld a,(l1201)
	cp #01
	jp nz,l10d3
	inc bc
.l10d3
	ld (ix+#02),c
	ld (ix+#03),b
.l10d9
	add a
	push bc
	push af
	call l1103
	pop af
	pop bc
	inc a
	ld c,b
	jp l1103
.l10e6
	call l10f2
	ld a,(l1202)
	ld c,a
	ld a,#07
	jp l1103
.l10f2
	ld bc,#000d
.l10f5
	ld a,b
	push bc
	call l1103
	pop bc
	dec b
	jp p,l10f5
	ld a,#07
	ld c,#3f
.l1103
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
.l1121
	ld ix,l1204
	xor a
	ld (l1201),a
	call l1146
	ld ix,l1214
	ld a,#01
	ld (l1201),a
	call l1146
	ld a,(l1203)
	and a
	ret z
	ld ix,l1224
	ld a,#02
	ld (l1201),a
.l1146
	ld a,(ix+#0d)
	inc a
	ld (ix+#0d),a
	cp (ix+#00)
	ret c
	ld (ix+#0d),#00
	ld a,(ix+#01)
	sub #01
	ret c
	ld (ix+#01),a
	ld c,a
	ld a,(l1201)
	add #08
	jp l1103
.l1167
	ld a,(l11fc)
	inc a
	ld (l11fc),a
	ld hl,l11fd
	cp (hl)
	ret c
	xor a
	ld (l11fc),a
	ld a,(l11fb)
	xor #01
	ld (l11fb),a
	ld bc,(l1206)
	ld de,(l1216)
	and a
	jp z,l1190
	dec bc
	dec de
	jp l1192
.l1190
	inc bc
	inc de
.l1192
	xor a
	push de
	call l10d9
	pop bc
	ld a,#01
	jp l10d9
.l119d
	ld a,(l1203)
	and a
	ret z
	ld a,(l11ff)
	inc a
	ld (l11ff),a
	ld hl,l1200
	cp (hl)
	ret c
	xor a
	ld (l11ff),a
	ld bc,(l1226)
	ld a,(l11fe)
	xor #01
	ld (l11fe),a
	ld a,#02
	jp nz,l10d9
	inc bc
	jp l10d9
.l11c7
	ld ix,l1204
	xor a
	ld (l1201),a
	call l100e
	ld ix,l1214
	ld a,#01
	ld (l1201),a
	call l100e
	ld a,(l1203)
	and a
	ret z
	ld ix,l1224
	ld a,#02
	ld (l1201),a
	jp l100e
.l11ef
	call l1121
	call l1167
	jp l119d
.l11ff equ $ + 7
.l11fe equ $ + 6
.l11fd equ $ + 5
.l11fc equ $ + 4
.l11fb equ $ + 3
.l11fa equ $ + 2
.l11f9 equ $ + 1
.l11f8
	db #00,#00,#00,#00,#00,#04,#00,#00
.l1203 equ $ + 3
.l1202 equ $ + 2
.l1201 equ $ + 1
.l1200
	db #01,#00,#38,#00
.l1206 equ $ + 2
.l1204
	db #03,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1216 equ $ + 2
.l1214
	db #03,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1226 equ $ + 2
.l1224
	db #03,#00,#00,#00,#01,#00,#00,#00
.l122e equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1234
	dw #003c,#003f,#0043,#0047
	dw #004b,#0050,#0054,#0059
	dw #005f,#0064,#006a,#0071
	dw #0077,#007f,#0086,#008e
	dw #0096,#009f,#00a9,#00c9
	dw #00d5,#00ef,#00fd,#011c
	dw #013f,#0152,#0192,#01de
	dw #0166,#017b,#01aa,#0238
	dw #027e,#02cc,#02f6
.l127a
	dw l12aa,l12c4,l12cc,l12ac
	dw l12ac,l12ae,l12ae,l12c6
	dw l12c6,l12b2,l12b2,#0000
	dw l12b4,l12b4,#0000,l12b6
	dw l12b6,#0000,l12b8,l12ca
	dw l12d1,l12ba,l12ba,l12d7
.l12ae equ $ + 4
.l12ac equ $ + 2
.l12aa
	db #01,#00,#03,#00,#04,#10,#11,#00
.l12b8 equ $ + 6
.l12b6 equ $ + 4
.l12b4 equ $ + 2
.l12b2
	db #06,#00,#07,#00,#08,#00,#09,#00
.l12ba
	db #0b,#0c,#0b,#0d,#0b,#0c,#0e,#0f
.l12c6 equ $ + 4
.l12c4 equ $ + 2
	db #0f,#00,#02,#00,#05,#10,#12,#00
.l12d1 equ $ + 7
.l12cc equ $ + 2
.l12ca
	db #0a,#00,#01,#02,#01,#03,#00,#06
.l12d7 equ $ + 5
	db #01,#01,#01,#07,#00,#08,#09,#0a
	db #0b,#08,#09,#0a,#09,#08,#09,#0a
	db #0b,#08,#09,#0a,#0b,#00
.l12e8
	dw l1322,l1337,l134c,l1357
	dw l1369,l137b,l1386,l1394
	dw l139c,l13b8,l13c4,l13cd
	dw l13d4,l13dd,l13ec,l13fc
.l130c equ $ + 4
	dw l1419,l141d,l1421,l142a
	dw l1433,l1436,l1446,l145b
	dw l145d,l1462,l146b,l1474
	dw l147d
.l1322
	db #0d,#f2,#06,#f5,#07,#06,#04,#06
	db #f3,#0d,#f2,#06,#f3,#04,#06,#07
.l1337 equ $ + 5
	db #06,#04,#06,#f4,#00,#0d,#f2,#09
	db #f5,#0a,#09,#08,#09,#f3,#0d,#f2
	db #09,#f3,#08,#09,#0a,#09,#08,#09
.l134c equ $ + 2
	db #f4,#00,#09,#09,#06,#f3,#07,#09
.l1357 equ $ + 5
	db #0b,#07,#09,#f7,#00,#06,#07,#09
	db #08,#f1,#07,#06,#f1,#07,#07,#f1
.l1369 equ $ + 7
	db #07,#07,#f1,#07,#07,#f1,#00,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#f1,#0d,#0d,#f1,#0d,#0d,#f1
.l137b equ $ + 1
	db #00,#09,#08,#07,#06,#05,#04,#03
.l1386 equ $ + 4
	db #02,#01,#f6,#00,#02,#06,#05,#09
	db #08,#0c,#0b,#0e,#11,#11,#11,#11
.l1394 equ $ + 2
	db #f4,#00,#12,#0f,#0d,#0b,#08,#06
.l139c equ $ + 2
	db #f6,#00,#12,#12,#12,#f1,#0d,#f1
	db #0e,#f1,#0b,#f1,#0d,#f1,#12,#f4
	db #12,#12,#f1,#0d,#f1,#0e,#f1,#0b
.l13b8 equ $ + 6
	db #f1,#0d,#0e,#0d,#f4,#00,#fc,#09
	db #f1,#08,#f1,#09,#f9,#09,#0b,#09
.l13c4 equ $ + 2
	db #f4,#00,#10,#f1,#0e,#0d,#0e,#f1
.l13cd equ $ + 3
	db #10,#f1,#00,#0e,#f1,#09,#f1,#0e
.l13d4 equ $ + 2
	db #f3,#00,#10,#f1,#11,#f1,#10,#f1
.l13dd equ $ + 3
	db #0e,#f1,#00,#0d,#f1,#0b,#09,#0b
	db #f1,#0d,#f1,#0b,#f1,#06,#f1,#0b
.l13ec equ $ + 2
	db #f3,#00,#02,#02,#f2,#02,#02,#f2
	db #02,#02,#f2,#02,#04,#06,#0b,#09
.l13fc equ $ + 2
	db #ff,#00,#d0,#04,#07,#0a,#0d,#10
	db #13,#14,#16,#18,#1a,#1b,#1c,#18
	db #1b,#16,#1a,#14,#18,#13,#16,#10
.l1419 equ $ + 7
	db #14,#0d,#0a,#10,#07,#0d,#00,#c0
.l1421 equ $ + 7
.l141d equ $ + 3
	db #07,#f4,#00,#c0,#0a,#f4,#00,#1c
	db #f1,#21,#f1,#1c,#f1,#21,#f1,#00
.l142a
	db #1c,#f1,#21,#f1,#1c,#21,#20,#21
.l1436 equ $ + 4
.l1433 equ $ + 1
	db #00,#1c,#ff,#00,#f2,#1c,#f1,#21
	db #f1,#1f,#f1,#1e,#f1,#20,#23,#20
.l1446 equ $ + 4
	db #23,#20,#f3,#00,#1c,#19,#1c,#19
	db #1c,#19,#1c,#19,#1c,#1b,#1c,#1b
	db #1c,#1b,#1c,#1b,#ff,#fd,#1c,#f4
.l145d equ $ + 3
.l145b equ $ + 1
	db #00,#f2,#00,#1c,#f1,#1c,#f5,#00
.l1462
	db #20,#20,#18,#18,#20,#20,#18,#18
.l146b equ $ + 1
	db #00,#21,#21,#19,#19,#21,#21,#19
.l1474 equ $ + 2
	db #19,#00,#22,#22,#1d,#1d,#22,#22
.l147d equ $ + 3
	db #1d,#1d,#00,#23,#23,#1e,#1e,#23
.l1488 equ $ + 6
.l1487 equ $ + 5
.l1486 equ $ + 4
	db #23,#1e,#1e,#00,#00,#00,#00,#00
.l1491 equ $ + 7
.l148f equ $ + 5
.l148e equ $ + 4
.l148c equ $ + 2
.l148b equ $ + 1
.l148a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1494 equ $ + 2
.l1493 equ $ + 1
.l1492
	db #00,#00,#20,#03,#01,#f6,#ff,#02
	db #64,#00,#1e,#00,#0a,#00,#00,#01
	db #00,#01,#84,#03,#06,#00,#00,#02
	db #00,#01,#3d,#00,#01,#00,#00,#0a
	db #00,#01,#29,#00,#01,#00,#00,#0a
	db #00,#01,#50,#00,#05,#28,#00,#04
	db #28,#00,#c8,#00,#01,#14,#00,#02
	db #64,#00,#32,#00,#07,#14,#00,#04
	db #23,#00,#64,#00,#04,#14,#00,#06
	db #28,#00,#00,#00,#03,#0a,#00,#01
	db #6e,#00,#05
;
; a=01 -> #08 - main theme
; ld (#11f8),a	; init theme
; call l0f52	; init
;
; #2223
;call #0de5
;ld a,#03
;ld (#11f8),a
;jp #0c11
;
; #4aab
;ld a,#02
;ld (#11f8),a 
;call #0c9c
;
; #5019
;ld a,#04
;ld (#11f8),a
;
; #0212
;and #07
;jr z,#020f
;ld (#11f8),a
;
; #025a
;ld a,#01
;ld (#11f8),a
;call #0c11
;call #0c1e
;
; #0384
;ld a,#07
;ld (#11f8),a
;
; #06a8
;ld a,#02
;ld (#11f8),a
;
; #0c1e
;ld a,#07
;ld (#100c),a
;ld a,#08
;ld (#11f8),a
;ret
;
.play_music
;
	di
	exx
	ex af,af'
	push ix
	jp real_play_music
;
.init_music	; added by Megachur
;
	ld (l11f8),a
	jp real_init_music
;
.music_info
	db "Arkanoid (1987)(Ocean Software)(Martin Galway)",0
	db "",0

	read "music_end.asm"
