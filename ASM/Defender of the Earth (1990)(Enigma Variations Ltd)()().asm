; Music of Defender of the Earth (1990)(Enigma Variations Ltd)()()
; Ripped by Megachur the 19/04/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DEFENOTE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #b000
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

.lb000
	jp lb08e
.lb003
	jp lb116
.lb006
	db #00
	jp lb011
	xor a
	ld (lb006),a
	jp lbd8b
;
;.soundfx ?
.lb011
;
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,lbb6f
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,lbcd0
	call lbd07
	set 7,(ix+#11)
	ret
.lb03e equ $ + 7
.lb038 equ $ + 1
.lb037
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb046 equ $ + 7
.lb044 equ $ + 5
.lb043 equ $ + 4
.lb042 equ $ + 3
.lb041 equ $ + 2
.lb040 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb04d equ $ + 6
.lb04c equ $ + 5
	db #00,#00,#00,#00,#00,#08,#00,#00
.lb056 equ $ + 7
.lb055 equ $ + 6
.lb053 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb05b equ $ + 4
.lb059 equ $ + 2
.lb058 equ $ + 1
.lb057
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb062 equ $ + 3
.lb061 equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.lb06e equ $ + 7
.lb06d equ $ + 6
.lb06c equ $ + 5
.lb06b equ $ + 4
.lb06a equ $ + 3
.lb068 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb076 equ $ + 7
.lb070 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music
.lb08e
;
	push af
	call lbd8b
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,lb9cb
	add l
	ld l,a
	jr nc,lb09f
	inc h
.lb09f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb038),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb04d),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb062),de
	xor a
	ld (lb041),a
	ld (lb056),a
	ld (lb06b),a
	ld (lb046),a
	ld (lb05b),a
	ld (lb070),a
	cpl
	ld (lb042),a
	ld (lb057),a
	ld (lb06c),a
	ld a,#01
	ld (lb040),a
	ld (lb055),a
	ld (lb06a),a
	ld (lb043),a
	ld (lb058),a
	ld (lb06d),a
	ld hl,lb076
	ld bc,#030a
.lb0ee
	xor a
.lb0ef
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,lb0ef
	djnz lb0ee
	ld hl,lbabb
	ld (lb03e),hl
	ld (lb053),hl
	ld (lb068),hl
	ld a,#ff
	ld (lb044),a
	ld (lb059),a
	ld (lb06e),a
	ld (lb006),a
	ret
;
.play_music
.lb116
;
	call lbdcc
	ld a,(lb006)
	and a
	ret z
	ld a,(lb044)
	ld hl,lb059
	or (hl)
	ld hl,lb06e
	or (hl)
	ld (lb006),a
	jr nz,lb140
	xor a
	ld (lb006),a
	ld a,(lbccf)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (lb006),a
	ret
.lb140
	ld iy,lb037
	ld ix,lbcd0
	call lb15e
	ld iy,lb04c
	ld ix,lbce2
	call lb15e
	ld iy,lb061
	ld ix,lbcf4
.lb15e
	call lb29f
	ld a,(iy+#0b)
	and a
	jr z,lb1e3
.lb167
	dec (iy+#09)
	jr z,lb17e
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr lb1e3
.lb17e
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.lb188
	ld a,(hl)
	cp #80
	jr c,lb1c3
	cp #fe
	jr nz,lb19a
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp lb188
.lb19a
	cp #ff
	jr nz,lb1a3
	xor a
	ld (iy+#0d),a
	ret
.lb1a3
	cp #c0
	jr nc,lb1b0
	and #1f
	ld (iy+#09),a
	inc hl
	jp lb188
.lb1b0
	and #07
	add (iy+#00)
	ld de,lb076
	add e
	ld e,a
	jr nc,lb1bd
	inc d
.lb1bd
	inc hl
	ldi
	jp lb188
.lb1c3
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,lb96b
	add hl,bc
	ld e,(hl)
	ld hl,lb99b
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr lb1e9
.lb1e3
	ld e,(iy+#05)
	ld d,(iy+#06)
.lb1e9
	dec (iy+#0c)
	jr z,lb1fb
	ld a,(de)
	cp #80
	call nc,lb265
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.lb1fb
	ld a,(de)
	cp #80
	jr c,lb20c
	call lb265
	ld a,(iy+#0b)
	and a
	jr z,lb1fb
	jp lb167
.lb20c
	cp #7f
	jr z,lb258
	cp #7e
	jr nz,lb21d
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp lb231
.lb21d
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,lbc25
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.lb231
	ld a,(iy+#0f)
	or #c0
	ld (iy+#14),a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld c,a
	ld (iy+#05),e
	ld (iy+#06),d
	ld e,(iy+#07)
	ld a,(iy+#08)
	ld hy,a
	ld ly,e
	bit 7,(ix+#11)
	ret nz
	jp lbd07
.lb258
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.lb265
	ld a,(de)
	cp #88
	jr nc,lb283
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,lb076
	add hl,bc
	ld c,(hl)
	ld hl,lbabb
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.lb283
	cp #ff
	jr nz,lb28c
	ld (iy+#0b),#ff
	ret
.lb28c
	cp #c0
	jr nc,lb297
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.lb297
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.lb29f
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,lb2b3
	res 7,(iy+#14)
	ret
.lb2b3
	ld d,#07
	bit 6,(iy+#14)
	jr nz,lb2e7
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,lb2e7
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,lb2d6
	inc h
	ld (iy+#11),h
.lb2d6
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp lb31c
.lb2e7
	ld hl,lb43f
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,lb301
	bit 6,(iy+#14)
	jr nz,lb301
	ld (iy+#13),#01
	ret
.lb301
	res 6,(iy+#14)
	ld a,(hl)
	rrca
	rrca
	rrca
	and d
	ld (iy+#12),a
	ld a,(hl)
	and d
	inc a
	ld (iy+#13),a
	ld (iy+#10),l
	ld (iy+#11),h
	ld a,(iy+#0e)
.lb31c
	add a
	ld hl,lbc25
	add l
	ld l,a
	jr nc,lb325
	inc h
.lb325
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
	db #80,#01,#0a,#01,#0a,#01,#0a,#01
	db #0a,#ff,#83,#36,#a0,#ff,#80,#06
	db #0a,#82,#01,#0a,#80,#06,#0a,#82
	db #01,#0a,#80,#06,#0a,#82,#01,#0a
	db #80,#06,#0a,#82,#01,#0a,#80,#06
	db #0a,#82,#01,#0a,#80,#06,#14,#06
	db #14,#06,#14,#ff,#81,#01,#1e,#0b
	db #05,#0d,#05,#ff,#83,#36,#46,#84
	db #12,#05,#12,#05,#0b,#1e,#17,#05
	db #17,#05,#14,#05,#14,#05,#14,#05
	db #14,#05,#0f,#05,#0f,#05,#0f,#05
	db #0f,#05,#80,#2a,#78,#ff,#80,#06
	db #0a,#82,#01,#0a,#80,#06,#0a,#82
	db #01,#0a,#80,#06,#0a,#82,#01,#0a
	db #80,#06,#0a,#81,#01,#05,#0d,#05
	db #01,#3c,#85,#19,#0a,#19,#05,#19
	db #05,#ff,#81,#06,#0a,#06,#0a,#85
	db #19,#0a,#81,#06,#0a,#04,#0a,#06
	db #0a,#85,#19,#0a,#81,#06,#28,#10
	db #05,#12,#05,#ff,#86,#91,#21,#0a
	db #21,#0a,#21,#0a,#21,#0a,#21,#0a
	db #21,#0a,#92,#20,#0a,#91,#21,#32
	db #90,#ff,#81,#0e,#0a,#0e,#05,#0e
	db #05,#1a,#05,#0e,#0a,#10,#0a,#10
	db #05,#17,#0a,#0b,#05,#0d,#05,#10
	db #05,#12,#05,#06,#0a,#12,#05,#06
	db #05,#10,#05,#12,#0a,#10,#0a,#0b
	db #05,#0d,#0a,#17,#05,#15,#05,#12
	db #05,#10,#05,#0e,#0a,#0e,#05,#0e
	db #05,#1a,#05,#0e,#0a,#10,#0a,#10
	db #05,#17,#0a,#0b,#05,#0d,#05,#10
	db #05,#12,#05,#0d,#0a,#0d,#0a,#19
	db #05,#17,#05,#19,#05,#0b,#0a,#0b
	db #05,#0f,#0a,#12,#05,#15,#05,#17
.lb43f
	db #05,#15,#05,#0b,#05,#0b,#05,#0f
	db #05,#0b,#05,#10,#05,#0b,#05,#0f
	db #05,#0b,#05,#ff,#87,#31,#0a,#2f
	db #0a,#2d,#0a,#31,#28,#31,#0a,#31
	db #0a,#2f,#0a,#2d,#0a,#2a,#0a,#7f
	db #28,#2d,#0a,#2d,#0a,#2d,#0a,#2f
	db #14,#2d,#0a,#2f,#14,#31,#0f,#2f
	db #0f,#2d,#0a,#2a,#28,#80,#2a,#28
	db #87,#31,#0a,#31,#0a,#2f,#0a,#31
	db #14,#31,#14,#31,#0a,#31,#0a,#2f
	db #0a,#2d,#0a,#2a,#0a,#7f,#1e,#2a
	db #0a,#2d,#0f,#2d,#0f,#2d,#0a,#2f
	db #0a,#2f,#14,#2f,#0a,#31,#0f,#2f
	db #0f,#2d,#0a,#2f,#0f,#2d,#05,#2a
	db #14,#92,#80,#2a,#1e,#84,#90,#1e
	db #05,#1e,#05,#17,#1e,#23,#05,#23
	db #05,#ff,#86,#92,#1e,#0a,#1e,#0a
	db #85,#19,#0a,#86,#1e,#0a,#20,#0a
	db #20,#0a,#85,#19,#0a,#86,#20,#0a
	db #91,#21,#0a,#21,#0a,#85,#19,#0a
	db #86,#21,#0a,#21,#0a,#21,#0a,#85
	db #19,#0a,#86,#21,#0a,#92,#1e,#0a
	db #1e,#0a,#85,#19,#0a,#86,#1e,#0a
	db #20,#0a,#20,#0a,#85,#19,#0a,#86
	db #20,#0a,#1d,#0a,#1d,#0a,#85,#19
	db #0a,#86,#1d,#0a,#1b,#0a,#1b,#0a
	db #85,#19,#0a,#86,#1b,#0a,#1b,#0a
	db #1b,#0a,#85,#19,#0a,#86,#1b,#0a
	db #ff,#84,#90,#14,#05,#14,#05,#14
	db #05,#14,#05,#0f,#05,#0f,#05,#0f
	db #05,#0f,#05,#ff,#1b,#28,#ff,#7f
	db #50,#ff,#87,#91,#21,#3c,#92,#20
	db #0a,#91,#21,#0a,#86,#21,#28,#90
	db #ff,#81,#09,#0a,#09,#0a,#04,#0a
	db #05,#0a,#85,#19,#14,#81,#05,#0a
	db #09,#14,#09,#0a,#04,#0a,#05,#0a
	db #85,#19,#14,#81,#05,#14,#85,#19
	db #14,#19,#0a,#19,#0a,#ff,#86,#92
	db #25,#0a,#95,#28,#0a,#94,#2d,#0a
	db #95,#28,#0a,#95,#24,#0a,#94,#29
	db #0a,#92,#2d,#0a,#94,#29,#0a,#92
	db #25,#0a,#95,#28,#0a,#94,#2d,#0a
	db #95,#28,#0a,#95,#24,#0a,#94,#29
	db #0a,#92,#2d,#0a,#94,#29,#0a,#95
	db #24,#0a,#94,#29,#0a,#92,#2d,#0a
	db #94,#29,#0a,#ff,#87,#90,#21,#14
	db #1c,#0a,#1c,#0a,#1d,#14,#1d,#0a
	db #21,#14,#1c,#14,#1c,#0a,#1d,#14
	db #1d,#32,#1d,#0a,#21,#0a,#21,#0a
	db #1c,#14,#1d,#0a,#1d,#0a,#1d,#0a
	db #21,#14,#1c,#14,#1c,#0a,#1d,#14
	db #1d,#3c,#ff,#81,#02,#0a,#0e,#0a
	db #04,#0a,#10,#0a,#ff,#87,#92,#1e
	db #0a,#1e,#0a,#20,#0a,#20,#0a,#ff
	db #81,#0b,#0a,#0b,#0a,#09,#0a,#0b
	db #0a,#85,#19,#14,#81,#0b,#0a,#02
	db #14,#02,#0a,#09,#0a,#0e,#0a,#85
	db #19,#14,#19,#0a,#19,#0a,#81,#04
	db #0a,#04,#0a,#0b,#0a,#04,#0a,#85
	db #19,#14,#81,#06,#0a,#08,#0a,#81
	db #01,#0a,#01,#0a,#85,#19,#0a,#81
	db #01,#0a,#01,#0a,#01,#0a,#85,#19
	db #0a,#19,#05,#19,#05,#81,#01,#28
	db #ff,#86,#94,#23,#0a,#92,#27,#0a
	db #95,#2a,#0a,#92,#27,#0a,#94,#23
	db #0a,#92,#27,#0a,#95,#2a,#0a,#92
	db #27,#0a,#95,#21,#0a,#94,#26,#0a
	db #92,#2a,#0a,#94,#26,#0a,#95,#21
	db #0a,#94,#26,#0a,#92,#2a,#0a,#94
	db #26,#0a,#95,#23,#0a,#94,#28,#0a
	db #92,#2c,#0a,#94,#28,#0a,#95,#23
	db #0a,#94,#28,#0a,#92,#2c,#0a,#94
	db #28,#0a,#94,#25,#14,#25,#1e,#25
	db #05,#25,#0a,#25,#05,#25,#0a,#25
	db #28,#ff,#87,#1e,#0f,#1e,#0f,#1e
	db #0a,#1e,#0a,#1e,#1e,#21,#0a,#21
	db #0a,#21,#0a,#21,#32,#23,#0a,#23
	db #0a,#23,#0a,#23,#28,#23,#0a,#25
	db #0a,#23,#0a,#21,#0a,#25,#50,#7f
	db #0a,#ff,#80,#06,#0a,#81,#3d,#0a
	db #85,#19,#0a,#81,#3d,#0a,#ff,#87
	db #91,#21,#50,#ff,#80,#7f,#0a,#36
	db #05,#36,#0a,#36,#0a,#36,#05,#36
	db #0a,#36,#14,#3d,#05,#3d,#05,#ff
	db #90,#84,#1e,#0a,#80,#36,#05,#36
	db #0a,#36,#0a,#36,#05,#36,#0a,#36
	db #0a,#84,#25,#0a,#80,#3d,#05,#3d
	db #05,#ff,#7f,#28,#ff,#ff,#ff,#ff
	db #ff,#81,#0d,#0a,#0d,#05,#0d,#05
	db #10,#05,#0d,#05,#0d,#05,#12,#0a
	db #0d,#05,#14,#0a,#12,#05,#14,#05
	db #17,#05,#14,#05,#0d,#28,#ff,#80
	db #36,#28,#ff,#80,#2f,#05,#30,#05
	db #31,#0a,#34,#0a,#30,#0a,#2f,#0a
	db #2d,#0a,#2f,#0a,#2d,#0a,#30,#0a
	db #2f,#0a,#2d,#0a,#2a,#28,#23,#05
	db #25,#05,#28,#0a,#28,#0a,#2a,#0a
	db #2d,#0a,#30,#05,#31,#05,#31,#0a
	db #2f,#05,#2d,#05,#2a,#05,#2d,#05
	db #31,#0a,#2f,#0a,#2d,#0a,#2f,#0f
	db #2d,#05,#2a,#46,#3b,#05,#39,#05
	db #36,#05,#34,#05,#3b,#05,#39,#05
	db #36,#05,#34,#05,#31,#0a,#34,#0a
	db #39,#0a,#36,#14,#36,#0a,#31,#0a
	db #34,#05,#30,#05,#2f,#05,#2d,#05
	db #2f,#05,#2d,#05,#31,#0a,#2f,#05
	db #2d,#05,#2a,#0a,#2a,#0a,#28,#0a
	db #2d,#14,#2a,#0a,#28,#0a,#2a,#5a
	db #7f,#28,#93,#87,#2d,#0a,#2a,#14
	db #28,#14,#2a,#14,#28,#14,#25,#0a
	db #23,#0a,#21,#0a,#24,#14,#23,#0a
	db #21,#0a,#23,#0a,#21,#0a,#1e,#0a
	db #1c,#14,#1e,#0a,#21,#0a,#1e,#82
	db #2f,#0a,#2d,#14,#2a,#14,#28,#14
	db #2a,#14,#2a,#0a,#2d,#0a,#2a,#0a
	db #31,#0a,#2f,#0a,#2d,#0a,#2a,#0a
	db #23,#0a,#25,#0a,#28,#0a,#24,#0a
	db #23,#0a,#1e,#0a,#1c,#0a,#1e,#82
	db #ff,#80,#01,#14,#ff,#81,#06,#14
	db #80,#01,#14,#01,#14,#01,#14,#ff
	db #91,#87,#21,#50,#ff,#85,#19,#50
	db #ff,#81,#02,#14,#02,#14,#85,#19
	db #0a,#81,#04,#0a,#06,#0a,#09,#0a
	db #81,#06,#14,#06,#14,#85,#19,#0a
	db #81,#09,#0a,#06,#0a,#04,#0a,#81
	db #02,#14,#02,#14,#85,#19,#0a,#81
	db #04,#0a,#06,#0a,#04,#0a,#01,#0a
	db #01,#0a,#85,#19,#0a,#19,#0a,#81
	db #0b,#14,#0b,#14,#85,#19,#14,#81
	db #09,#0a,#0b,#0a,#ff,#86,#92,#1e
	db #0a,#1e,#0a,#1e,#0a,#1e,#0a,#20
	db #0a,#20,#0a,#20,#0a,#20,#0a,#91
	db #21,#0a,#21,#0a,#21,#0a,#21,#0a
	db #21,#0a,#21,#0a,#21,#0a,#21,#0a
	db #92,#1e,#0a,#1e,#0a,#1e,#0a,#1e
	db #0a,#20,#0a,#20,#0a,#20,#0a,#20
	db #0a,#95,#20,#0a,#20,#0a,#20,#0a
	db #20,#0a,#1e,#0a,#1e,#0a,#1e,#0a
	db #1e,#0a,#1e,#0a,#1e,#0a,#1e,#0a
	db #1e,#0a,#ff,#85,#19,#14,#19,#0a
	db #19,#0a,#ff,#86,#92,#1e,#0a,#1e
	db #0a,#85,#20,#0a,#86,#1e,#0a,#20
	db #0a,#20,#0a,#85,#20,#0a,#86,#20
	db #0a,#91,#21,#0a,#21,#0a,#85,#20
	db #0a,#86,#21,#0a,#21,#0a,#21,#0a
	db #85,#20,#0a,#86,#21,#0a,#92,#1e
	db #0a,#1e,#0a,#85,#20,#0a,#86,#1e
	db #0a,#20,#0a,#20,#0a,#85,#20,#05
	db #25,#05,#23,#05,#22,#05,#19,#50
	db #ff,#81,#0e,#0a,#0e,#05,#0e,#05
	db #1a,#05,#0e,#0a,#10,#0a,#10,#05
	db #17,#0a,#0b,#05,#0d,#05,#10,#05
	db #12,#05,#06,#0a,#12,#05,#06,#05
	db #10,#05,#12,#0a,#10,#0a,#0b,#05
	db #0d,#0a,#17,#05,#15,#05,#12,#05
	db #10,#05,#0e,#0a,#0e,#05,#0e,#05
	db #1a,#05,#0e,#0a,#10,#0a,#10,#05
	db #17,#0a,#0b,#05,#0d,#05,#10,#05
	db #12,#05,#06,#50,#ff,#80,#36,#28
	db #34,#0a,#31,#0a,#2f,#0a,#30,#02
	db #31,#1c,#30,#02,#31,#12,#31,#02
	db #2f,#08,#2d,#0a,#2a,#0a,#28,#0a
	db #23,#05,#25,#05,#28,#05,#23,#05
	db #26,#05,#28,#05,#2a,#05,#2d,#05
	db #2f,#0a,#31,#0a,#34,#0a,#36,#0a
.lb96b equ $ + 4
	db #ff,#ff,#ff,#ff,#2f,#39,#3d,#63
	db #6b,#8d,#b1,#cb,#e1,#53,#c1,#20
	db #33,#36,#39,#48,#6d,#ab,#da,#e4
	db #ef,#38,#91,#b9,#c6,#cb,#df,#f9
	db #fc,#fd,#fe,#ff,#00,#1e,#22,#f0
	db #f4,#ff,#04,#08,#4c,#9a,#a2,#e8
.lb99b equ $ + 4
	db #34,#68,#69,#6a,#b3,#b3,#b3,#b3
	db #b3,#b3,#b3,#b3,#b3,#b4,#b4,#b5
	db #b5,#b5,#b5,#b5,#b5,#b5,#b5,#b5
	db #b5,#b6,#b6,#b6,#b6,#b6,#b6,#b6
	db #b6,#b6,#b6,#b6,#b7,#b7,#b7,#b7
	db #b7,#b7,#b8,#b8,#b8,#b8,#b8,#b8
	db #b9,#b9,#b9,#b9
.lb9cb
	dw lb9dd,lba1a,lba54,lba98
	dw lbaa1,lbaa6,lbaad,lbab1
	dw lbab5
.lb9dd
	db #0d,#0d,#92,#00,#03,#12,#06,#08
	db #08,#03,#12,#06,#0f,#0f,#12,#06
	db #08,#08,#03,#12,#06,#14,#12,#06
	db #12,#c0,#5a,#c1,#64,#86,#17,#0c
	db #c1,#0a,#12,#06,#12,#06,#12,#84
	db #08,#03,#12,#06,#0f,#0f,#12,#06
	db #08,#08,#03,#12,#06,#14,#12,#c0
.lba1a equ $ + 5
	db #82,#24,#8c,#23,#ff,#fe,#0c,#84
	db #0d,#83,#01,#c0,#50,#04,#fe,#00
	db #0a,#0a,#0c,#13,#07,#10,#10,#13
	db #07,#0a,#0a,#0c,#13,#07,#15,#13
	db #07,#13,#18,#82,#0d,#1b,#13,#07
	db #13,#07,#13,#84,#0a,#0c,#13,#07
	db #10,#10,#13,#07,#0a,#0a,#0c,#13
.lba54 equ $ + 7
	db #07,#15,#13,#25,#0d,#0d,#ff,#c0
	db #82,#90,#23,#83,#02,#05,#07,#fe
	db #f4,#c0,#50,#09,#fe,#00,#0b,#0e
	db #11,#0b,#0e,#fe,#f4,#09,#fe,#00
	db #0b,#0e,#16,#0b,#0e,#0b,#fe,#f4
	db #18,#82,#0d,#1b,#fe,#00,#0b,#0e
	db #0b,#0e,#0b,#c0,#78,#22,#c0,#00
	db #0b,#0b,#0e,#11,#0b,#0e,#fe,#f4
	db #09,#fe,#00,#0b,#0e,#16,#0b,#26
.lba98 equ $ + 3
	db #0d,#0d,#ff,#c0,#50,#fe,#e8,#09
.lbaa1 equ $ + 4
	db #fe,#fc,#0b,#ff,#27,#27,#03,#29
.lbaa6 equ $ + 1
	db #ff,#28,#28,#fe,#03,#0c,#0d,#ff
.lbab1 equ $ + 4
.lbaad
	db #fe,#fd,#2a,#ff,#fe,#fd,#2b,#ff
.lbabb equ $ + 6
.lbab5
	db #fe,#fd,#c0,#78,#2c,#ff,#7f,#fe
	db #01,#ff,#64,#00,#06,#0a,#00,#01
	db #7f,#fc,#01,#ff,#7f,#00,#06,#05
	db #00,#01,#7f,#ff,#01,#ff,#64,#00
	db #00,#00,#00,#01,#7f,#ff,#1f,#ff
	db #50,#00,#03,#14,#00,#03,#7f,#fc
	db #01,#ff,#64,#00,#00,#63,#00,#01
	db #7f,#fc,#01,#ff,#64,#00,#00,#3c
	db #00,#03,#7f,#fd,#01,#ff,#5a,#00
	db #00,#00,#00,#01,#28,#fe,#1f,#ff
	db #64,#04,#06,#02,#00,#01,#7f,#ff
	db #46,#ff,#55,#00,#00,#01,#00,#02
	db #7f,#f8,#01,#ff,#7f,#00,#00,#3c
	db #00,#01,#7f,#fa,#01,#ff,#5a,#00
	db #00,#00,#00,#02,#7f,#f6,#01,#ff
	db #64,#00,#00,#00,#00,#03,#7f,#ff
	db #01,#ff,#5a,#08,#04,#02,#00,#01
	db #7f,#f8,#01,#ff,#64,#00,#00,#3c
	db #00,#01,#8a,#21,#49,#00,#00,#00
	db #00,#00,#8a,#19,#41,#00,#00,#00
	db #00,#00,#89,#61,#00,#00,#00,#00
	db #00,#00,#8a,#21,#39,#00,#00,#00
	db #00,#00,#8a,#29,#49,#00,#00,#00
.lbb6f equ $ + 2
	db #00,#00,#7f,#fd,#01,#ff,#7f,#04
	db #02,#05,#00,#01,#32,#00,#19,#7f
	db #fd,#01,#ff,#7f,#00,#00,#4b,#00
	db #03,#48,#00,#19,#7f,#fe,#01,#ff
	db #7f,#00,#00,#4b,#00,#02,#48,#00
	db #28,#7f,#ff,#01,#ff,#7f,#00,#00
	db #72,#00,#02,#01,#00,#3c,#7f,#f7
	db #01,#ff,#64,#00,#00,#00,#00,#02
	db #10,#00,#1e,#7f,#fc,#01,#ff,#7f
	db #00,#00,#00,#00,#02,#46,#00,#1e
	db #7f,#fd,#01,#ff,#7f,#00,#00,#03
	db #00,#02,#64,#00,#28,#04,#fe,#01
	db #ff,#7f,#04,#04,#11,#00,#03,#3c
	db #00,#64,#08,#fa,#01,#ff,#03,#00
	db #07,#0f,#00,#05,#64,#00,#50,#7f
	db #fd,#01,#ff,#7f,#02,#04,#63,#00
	db #01,#3c,#01,#1c,#7f,#fc,#3c,#fe
	db #7f,#00,#00,#64,#00,#03,#3c,#01
	db #1e,#7f,#f7,#01,#ff,#7f,#00,#00
	db #00,#00,#03,#64,#00,#08,#7f,#f2
	db #01,#ff,#7f,#00,#00,#1e,#00,#03
	db #3c,#03,#08,#08,#e9,#01,#ff,#64
	db #28,#00,#05,#00,#05,#2d
	db #04,#30
.lbc25
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
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
	dw #0018
.lbcd5 equ $ + 6
.lbcd4 equ $ + 5
.lbcd3 equ $ + 4
.lbcd0 equ $ + 1
.lbccf
	db #3f,#fe,#f7,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbce6 equ $ + 7
.lbce5 equ $ + 6
.lbce2 equ $ + 3
.lbce1 equ $ + 2
	db #00,#00,#00,#fd,#ef,#12,#00,#00
.lbce7
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbcf4 equ $ + 5
.lbcf3 equ $ + 4
	db #00,#00,#00,#00,#00,#fb,#df,#24
.lbcf9 equ $ + 2
.lbcf8 equ $ + 1
.lbcf7
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd06 equ $ + 7
.lbd05 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd07
	ld a,ly
	ld (ix+#0f),a
	ld a,hy
	ld (ix+#10),a
	ld (ix+#03),l
	ld (ix+#04),h
	ld (ix+#06),c
	ld a,(iy+#05)
	ld (ix+#07),a
	ld a,(iy+#06)
	and #7f
	srl a
	jr nz,lbd2b
	ld a,#01
.lbd2b
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(lbccf)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,lbd54
	and (ix+#00)
.lbd54
	bit 1,c
	jr z,lbd5b
	and (ix+#01)
.lbd5b
	ld (lbccf),a
	bit 2,c
	jr nz,lbd6c
	ld hl,lbeba
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lbd6c
	call lbf72
	ld a,(iy+#00)
	ld c,#0d
	call lbf89
	ld a,(iy+#04)
	ld c,#0b
	call lbf89
	inc c
	xor a
	call lbf89
	ld (ix+#05),#ff
	jp lbf7e
.lbd8b
	call lbf72
	ld c,#07
	ld a,(lbccf)
	or #3f
	ld (lbccf),a
	call lbf89
	xor a
	inc c
	call lbf89
	inc c
	call lbf89
	inc c
	call lbf89
	ld a,#01
	inc c
	call lbf89
	inc c
	xor a
	call lbf89
	inc c
	call lbf89
	ld (lbce1),a
	ld (lbcf3),a
	ld (lbd05),a
	ld (lbcd5),a
	ld (lbce7),a
	ld (lbcf9),a
	jp lbf7e
.lbdcc
	ld a,(lbccf)
	and #3f
	cp #3f
	ret z
	ld ix,lbcd0
	call lbe88
	ld ix,lbce2
	call lbe88
	ld ix,lbcf4
	call lbe88
	call lbf72
	ld ix,lbcd0
	ld c,#07
	ld a,(lbccf)
	call lbf89
	ld c,#00
	ld a,(lbcd3)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,lbe0a
	ld (lbd06),a
.lbe0a
	call lbf89
	inc c
	ld a,(lbcd4)
	adc (ix+#0a)
	call lbf89
	inc c
	ld a,(lbce5)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,lbe28
	ld (lbd06),a
.lbe28
	call lbf89
	inc c
	ld a,(lbce6)
	adc (ix+#1c)
	call lbf89
	inc c
	ld a,(lbcf7)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,lbe46
	ld (lbd06),a
.lbe46
	call lbf89
	inc c
	ld a,(lbcf8)
	adc (ix+#2e)
	call lbf89
	inc c
	ld a,(lbd06)
	rrca
	rrca
	rrca
	call lbf89
	ld c,#08
	ld a,(lbcd5)
	srl a
	srl a
	srl a
	call lbf89
	inc c
	ld a,(lbce7)
	srl a
	srl a
	srl a
	call lbf89
	inc c
	ld a,(lbcf9)
	srl a
	srl a
	srl a
	call lbf89
	jp lbf7e
.lbe88
	ld a,(lbccf)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,lbea9
	cp #ff
	jr z,lbea9
	dec (ix+#06)
.lbea9
	call lbf30
	bit 2,(iy+#09)
	jp nz,lbf29
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.lbeba
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,lbec9
	ld (ix+#05),a
	ret
.lbec9
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,lbed9
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lbed9
	ld a,(ix+#05)
	add (iy+#01)
	jp m,lbeeb
	cp (iy+#02)
	jr c,lbeeb
	ld (ix+#05),a
	ret
.lbeeb
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,lbefb
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lbefb
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,lbf0a
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lbf0a
	ld a,(ix+#05)
	add (iy+#03)
	jp m,lbf17
	ld (ix+#05),a
	ret
.lbf17
	ld (ix+#05),#00
	ld a,(lbccf)
	or (ix+#02)
	ld (lbccf),a
	res 7,(ix+#11)
	ret
.lbf29
	ld a,(ix+#06)
	and a
	ret nz
	jr lbf17
.lbf30
	ld a,(ix+#07)
	and a
	jr z,lbf3d
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.lbf3d
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld c,(ix+#0b)
	ld b,(ix+#0c)
	add hl,bc
	ld (ix+#09),l
	ld (ix+#0a),h
	dec (ix+#08)
	ret nz
	ld a,(iy+#06)
	and a
	ret z
	jp p,lbf61
	ld (ix+#07),#ff
	ret
.lbf61
	ld (ix+#08),a
	ld a,c
	cpl
	ld c,a
	ld a,b
	cpl
	ld b,a
	inc bc
	ld (ix+#0b),c
	ld (ix+#0c),b
	ret
.lbf72
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.lbf7e
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.lbf89
	ld b,#f4
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ld b,#f4
	out (c),a
	ld b,h
	out (c),l
	out (c),e
	ret
	xor a		; test player
	call lb000
.lbfa0
	ld b,#f5
.lbfa2
	in a,(c)
	rrca
	jr nc,lbfa2
	call lb003
	jr lbfa0
;
.music_info
	db "Defender of the Earth (1990)(Enigma Variations Ltd)()",0
	db "",0

	read "music_end.asm"
