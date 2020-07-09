; Music of Defcom (1986)(1001 Ltd)(David Whittaker)()
; Ripped by Megachur the 22/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DEFCOM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #2d20

	read "music_header.asm"

;
.init_music
;
	xor a
	ld hl,#0000
	ld (l3269),hl
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l342d
	add hl,bc
	ld ix,l2d97
	ld c,#1f
	ld a,#03
.l2d3a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,l2d3a
	inc a
	ld (l2df4),a
	ld (l3269),a
	ret
; sound effects
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l342d
	add hl,bc
	ld a,(hl)
	ld (l2d9a),a
	inc hl
	ld a,(hl)
	ld (l2d9b),a
	inc hl
	ld a,(hl)
	ld (l2db9),a
	inc hl
	ld a,(hl)
	ld (l2dba),a
	inc hl
	ld a,(hl)
	ld (l2dd8),a
	inc hl
	ld a,(hl)
	ld (l2dd9),a
	ret
.l2d9b equ $ + 4
.l2d9a equ $ + 3
.l2d97
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l2dba equ $ + 4
.l2db9 equ $ + 3
.l2db6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l2dd9 equ $ + 4
.l2dd8 equ $ + 3
.l2dd5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.l2df4
	db #00
;
.play_music
;
	call l32bf
	ld a,(l3269)
	and a
	ret z
.l2dfe equ $ + 1
	ld a,#00
	ld (l2e4b),a
	ld hl,l2df4
	dec (hl)
	jr nz,l2e23
	ld b,(hl)
	ld ix,l2d97
	call l2f9e
	ld ix,l2db6
	call l2f9e
	ld ix,l2dd5
	call l2f9e
	ld hl,l2df4
.l2e22 equ $ + 1
	ld (hl),#01
.l2e23
	ld ix,l2d97
	call l3040
	ld (l3151),hl
	ld (l3159),a
	ld ix,l2db6
	call l3040
	ld (l3153),hl
	ld (l315a),a
	ld ix,l2dd5
	call l3040
	ld (l3155),hl
	ld (l315b),a
.l2e4b equ $ + 1
	ld a,#00
	ld (l3157),a
	ld a,(l326a)
	and a
	jr z,l2e85
	ld hl,(l315e)
.l2e59 equ $ + 1
	ld (l3151),hl
	ld hl,(l3162)
	ld (l3155),hl
	ld a,(l3164)
	ld (l3157),a
	ld a,(l3158)
	or #2d
	ld hl,l3165
	and (hl)
	ld (l3158),a
	ld a,(l3166)
	ld (l3159),a
	ld a,(l3168)
	ld (l315b),a
	ld a,(l316a)
	ld (l315d),a
.l2e85
	ld hl,l315d
	ld d,#0c
.l2e8a
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
	dec hl
	dec d
	jp p,l2e8a
	ret
;
.stop_music
;
	ld hl,#0000
	ld (l3269),hl
.l2eb1
	ld de,#0d00	; original is ld de,#d000 should be ld de,&0d00 !!!
.l2eb4
	call l2ebe
	dec e
	jp p,l2eb4
	ld de,#073f
.l2ebe
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
	ret
	db #bc,#a4,#a8,#ad,#6b,#9a,#95,#10
	db #84,#7c,#4a,#39,#58,#a9,#01
	xor a
	ld (l3269),a
	pop hl
	jp l2eb1
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l2f12
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l2f12
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l2fac
	ld a,(ix+#1e)
	ld c,a
	and #07
	ld hl,l3136
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l2fac
	ld a,(ix+#1e)
	ld c,a
	and #38
	ld hl,l3136
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l2fac
	ld hl,l3136
	ld a,(ix+#1e)
	cpl
	and (hl)
	ld (hl),a
	jr l2fac
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l2fac
	ld a,(de)
	inc de
	ld (l2dfe),a
	jr l2fac
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l2fac
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l2fac
	ld (ix+#1d),b
	jr l2fac
	ld (ix+#1d),#40
	jr l2fac
	ld (ix+#1d),#c0
	jr l2fac
	set 1,(ix+#00)
	jr l2fac
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l2fcf
.l2f9e
	dec (ix+#10)
	jr nz,l2fdc
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l2fac
	ld a,(de)
	inc de
	and a
	jp m,l2fed
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l2fcf
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l2fdc
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l2fe9
	inc (ix+#12)
	ret
.l2fe9
	dec (ix+#12)
	ret
.l2fed
	cp #b8
	jr c,l3038
	add #20
	jr c,l301d
	add #10
	jr c,l3023
	add #10
	jr nc,l3016
	ld c,a
	ld hl,l322b
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	set 4,(ix+#00)
	jr l2fac
.l3016
	add #09
	ld (l2e22),a
	jr l2fac
.l301d
	inc a
	ld (ix+#11),a
	jr l2fac
.l3023
	ld (ix+#19),a
	ld a,(de)
	inc de
	ld (ix+#14),a
	ld a,(de)
	inc de
	ld (ix+#15),a
	ld a,(de)
	inc de
	ld (ix+#17),a
	jp l2fac
.l3038
	ld hl,l2e59
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l3040
	ld c,(ix+#00)
	bit 5,c
	jr z,l308b
	ld a,(ix+#16)
	sub #10
	jr nc,l3073
	bit 6,c
	jr z,l3078
	add (ix+#13)
	jr nc,l3058
	sbc a
.l3058
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l306e
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l308b
.l306e
	ld (ix+#18),a
	jr l308b
.l3073
	ld (ix+#16),a
	jr l308b
.l3078
	cpl
	sub #0f
	add (ix+#13)
	jr c,l3081
	sub a
.l3081
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l308b
	res 5,c
.l308b
	ld a,(ix+#12)
	bit 4,c
	jr z,l30ad
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,l30a5
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l30a5
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
.l30ad
	ld hl,l316b
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l3107
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l30d0
	bit 0,c
	jr nz,l30ee
.l30d0
	bit 5,l
	jr nz,l30e0
	sub (ix+#1b)
	jr nc,l30eb
	set 5,(ix+#1d)
	sub a
	jr l30eb
.l30e0
	add (ix+#1b)
	cp b
	jr c,l30eb
	res 5,(ix+#1d)
	ld a,b
.l30eb
	ld (ix+#1c),a
.l30ee
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l30f9
	dec d
.l30f9
	add #a0
	jr c,l3105
.l30fd
	sla e
	rl d
	add #18
	jr nc,l30fd
.l3105
	add hl,de
	ex de,hl
.l3107
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l3132
	ld b,(ix+#0e)
	djnz l312f
	ld c,(ix+#0d)
	bit 7,c
	jr z,l311e
	dec b
.l311e
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l3132
.l312f
	ld (ix+#0e),b
.l3132
	cpl
	and #03
.l3136 equ $ + 1
	ld a,#38
	jr nz,l3143
	ld a,(l2dfe)
	xor #08
	ld (l2e4b),a
	ld a,#07
.l3143
	ld hl,l3158
	xor (hl)
	and (ix+#1e)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l3158 equ $ + 7
.l3157 equ $ + 6
.l3155 equ $ + 4
.l3153 equ $ + 2
.l3151
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l315f equ $ + 6
.l315e equ $ + 5
.l315d equ $ + 4
.l315b equ $ + 2
.l315a equ $ + 1
.l3159
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l3168 equ $ + 7
.l3166 equ $ + 5
.l3165 equ $ + 4
.l3164 equ $ + 3
.l3162 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
.l316a equ $ + 1
	db #00,#ff
.l316b
	dw #0ef8,#0e10,#0d60,#0c80
	dw #0bd8,#0b28,#0a88,#09f0
	dw #0960,#08e0,#0858,#07e0
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
.l322b
	db #0d,#10,#13,#17,#1b,#1e,#21,#24
	db #27,#29,#2b,#2d,#2f,#00,#03,#07
	db #87,#00,#04,#07,#87,#00,#03,#07
	db #0c,#87,#00,#04,#07,#0c,#87,#07
	db #0c,#0f,#87,#07,#0c,#10,#87,#03
	db #07,#0c,#87,#04,#07,#0c,#87,#00
	db #0c,#87,#00,#04,#87,#00,#03,#87
.l326a equ $ + 7
.l3269 equ $ + 6
.music_end equ $ + 6
	db #00,#05,#87,#00,#07,#87,#00,#00
	ld e,a
	ld a,#00
	or a
	ret nz
	ld d,a
	ld hl,l326a
	ld (hl),a
	sla e
	ld hl,l3352
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l33fb
.l3283
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l3283
	ld a,(l33fc)
	ld (l340c),a
	ld hl,(l33fd)
	ld (l315e),hl
	ld de,(l33ff)
	ld (l3162),de
	ld a,l
	ld (l3164),a
	ld a,(l3402)
	ld (l3165),a
	ld a,(l3401)
	ld (l316a),a
	ld a,(l340b)
	ld e,a
	ld d,#0d
	call l2ebe
	ld hl,l326a
	inc (hl)
	ret
.l32bb
	ld (l326a),a
	ret
.l32bf
	call l340e
	ld a,(l33fb)
	and a
	jr z,l32bb
	dec a
	ld (l33fb),a
	ld a,(l340c)
	and a
	jr nz,l3301
	ld a,(l3409)
	and a
	ret z
	dec a
	ld (l3409),a
	ld a,(l33fc)
	ld (l340c),a
	ld a,(l340a)
	and a
	jr z,l32ea
	ld a,(l3429)
.l32ea
	ld b,a
	ld a,(l33fd)
	add b
	ld (l315e),a
	ld a,(l33fe)
	add b
	and #0f
	ld (l315f),a
	ld hl,(l33ff)
	ld (l3162),hl
.l3301
	ld hl,l340c
	dec (hl)
	ld a,(l3407)
	and a
	jr z,l3328
	jp p,l331b
	ld hl,(l315e)
	ld de,(l3403)
	add hl,de
	ld (l315e),hl
	jr l3328
.l331b
	ld hl,(l315e)
	ld de,(l3403)
	and a
	sbc hl,de
	ld (l315e),hl
.l3328
	ld a,(l3408)
	and a
	jr z,l334b
	jp p,l333e
	ld hl,(l3162)
	ld de,(l3405)
	add hl,de
	ld (l3162),hl
	jr l334b
.l333e
	ld hl,(l3162)
	ld de,(l3405)
	and a
	sbc hl,de
	ld (l3162),hl
.l334b
	ld a,(l315e)
	ld (l3164),a
	ret
.l3352
	dw l3364,l3375,l3384,l3395
	dw l33a6,l33b7,l33c8,l33d9
	dw l33ea
.l3364
	db #14,#15,#80,#00,#a8,#00,#0f,#f2
	db #99,#00,#9b,#00,#ff,#ff,#00,#00
.l3375 equ $ + 1
	db #00,#28,#05,#80,#01,#a8,#01,#0f
	db #fa,#23,#28,#01,#01,#05,#00,#00
.l3384
	db #02,#02,#80,#00,#81,#00,#01,#fa
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3395 equ $ + 1
	db #00,#64,#08,#80,#00,#85,#00,#28
	db #d2,#23,#00,#28,#00,#ff,#ff,#14
.l33a6 equ $ + 2
	db #00,#00,#32,#06,#0a,#00,#0f,#00
	db #14,#d2,#03,#00,#04,#00,#ff,#01
.l33b7 equ $ + 3
	db #0a,#01,#00,#14,#06,#28,#00,#2b
	db #00,#0f,#fa,#20,#00,#20,#00,#ff
.l33c8 equ $ + 4
	db #ff,#06,#00,#00,#63,#63,#00,#00
	db #01,#00,#28,#d2,#01,#00,#01,#00
.l33d9 equ $ + 5
	db #ff,#ff,#00,#00,#00,#1e,#1e,#00
	db #00,#01,#00,#05,#d2,#01,#00,#01
.l33ea equ $ + 6
	db #00,#01,#01,#00,#00,#0e,#1e,#0f
	db #00,#02,#20,#02,#14,#fa,#20,#00
.l33fb equ $ + 7
	db #20,#00,#ff,#ff,#00,#00,#00,#00
.l3403 equ $ + 7
.l3402 equ $ + 6
.l3401 equ $ + 5
.l33ff equ $ + 3
.l33fe equ $ + 2
.l33fd equ $ + 1
.l33fc
	db #00,#00,#00,#00,#00,#00,#00,#00
.l340b equ $ + 7
.l340a equ $ + 6
.l3409 equ $ + 5
.l3408 equ $ + 4
.l3407 equ $ + 3
.l3405 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l340c
	db #00,#00
.l340e
	ld a,(l3429)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l342c
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l342c equ $ + 3
.l3429
	db #ff,#80,#1b,#34
.l342d
	dw l3433,l34a5,l350f
.l3433
	dw l3575,l3575,l35b3,l35b3
	dw l3575,l3575,l35b3,l35b3
	dw l3575,l3575,l35b3,l35b3
	dw l3575,l3575,l35b3,l35b3
	dw l35f0,l35f0,l35f0,l35f0
	dw l3575,l3575,l35b3,l35b3
	dw l3575,l3575,l35b3,l35b3
	dw l3575,l3575,l35b3,l35b3
	dw l362d,l362d,l362d,l362d
	dw l362d,l362d,l362d,l362d
	dw l366d,l366d,l366d,l366d
	dw l366d,l366d,l366d,l366d
	dw l362d,l362d,l362d,l362d
	dw l362d,l362d,l362d,l362d
.l34a5 equ $ + 2
	dw #0000,l36a1,l36a1,l36b9
	dw l36b9,l36a1,l36a1,l36b9
	dw l36b9,l36a1,l36a1,l36b9
	dw l36b9,l36a1,l36a1,l36b9
	dw l36b9,l36d1,l36d1,l36d1
	dw l36d1,l36a1,l36a1,l36b9
	dw l36b9,l36a1,l36a1,l36b9
	dw l36b9,l36a1,l36a1,l36b9
	dw l36b9,l36e9,l36e9,l3700
	dw l3700,l36e9,l36e9,l3700
	dw l3700,l3717,l3771,l3717
	dw l3771,l36e9,l36e9,l3700
	dw l3700,l36a1,l36a1,l36b9
.l350f equ $ + 4
	dw l36b9,#0000,l37cb,l37cb
	dw l37d7,l37d7,l37cb,l37cb
	dw l37d7,l37d7,l37e3,l3813
	dw l37fb,l3813,l37e3,l3813
	dw l3822,l383a,l3849,l3849
	dw l37cb,l37cb,l37d7,l37d7
	dw l37e3,l3813,l37fb,l3813
	dw l37e3,l3813,l3822,l383a
	dw l3874,l3874,l388f,l388f
	dw l3874,l3874,l388f,l388f
	dw l38aa,l3904,l38aa,l3904
	dw l37cb,l37cb,l37d7,l37d7
	dw l37cb,l37cb,l37d7,l37d7
	dw #0000
.l3575
	db #bd,#8a,#df,#00,#91,#04,#e1,#19
	db #df,#00,#11,#06,#e0,#c8,#44,#c8
	db #49,#e1,#df,#00,#21,#06,#8b,#84
	db #04,#01,#8d,#13,#df,#00,#91,#04
	db #8a,#20,#19,#df,#00,#11,#06,#e0
	db #c8,#50,#c8,#49,#e1,#df,#00,#21
	db #06,#8b,#84,#04,#01,#8d,#07,#df
.l35b3 equ $ + 6
	db #00,#91,#04,#8a,#14,#87,#df,#00
	db #91,#04,#8a,#e1,#1e,#df,#00,#11
	db #06,#e0,#c8,#42,#c8,#49,#e1,#df
	db #00,#21,#06,#8b,#84,#04,#01,#8d
	db #13,#df,#00,#91,#06,#8a,#25,#1e
	db #df,#00,#11,#06,#e0,#c8,#4e,#c8
	db #49,#e1,#df,#00,#21,#06,#8b,#84
	db #04,#01,#8d,#07,#df,#00,#91,#06
.l35f0 equ $ + 3
	db #8a,#19,#87,#df,#00,#91,#04,#8a
	db #e1,#1b,#df,#00,#11,#06,#e0,#c8
	db #3f,#c8,#46,#e1,#df,#00,#21,#06
	db #8b,#84,#04,#01,#8d,#13,#df,#00
	db #91,#04,#8a,#22,#1b,#df,#00,#11
	db #06,#e0,#c8,#46,#c8,#3f,#e1,#df
	db #00,#21,#06,#8b,#84,#04,#01,#8d
	db #07,#df,#00,#91,#04,#8a,#16,#87
.l362d
	db #bd,#8b,#81,#df,#00,#11,#06,#e0
	db #8d,#1f,#df,#00,#11,#06,#01,#01
	db #01,#df,#00,#11,#06,#84,#04,#01
	db #8d,#07,#df,#00,#11,#06,#01,#01
	db #df,#00,#11,#06,#e1,#8d,#1f,#e0
	db #df,#00,#11,#06,#01,#01,#01,#df
	db #00,#11,#06,#84,#04,#01,#8d,#07
	db #df,#00,#11,#06,#01,#01,#01,#87
.l366d
	db #8b,#81,#e0,#df,#00,#11,#06,#8d
	db #1f,#df,#00,#11,#06,#01,#01,#01
	db #df,#00,#11,#06,#8d,#1f,#df,#00
	db #11,#06,#01,#01,#01,#df,#00,#11
	db #06,#8d,#1f,#df,#00,#11,#06,#01
	db #01,#df,#00,#21,#06,#e2,#84,#04
.l36a1 equ $ + 4
	db #01,#8d,#07,#87,#df,#00,#11,#06
	db #8a,#e0,#19,#19,#19,#20,#19,#19
	db #20,#19,#19,#19,#19,#20,#19,#19
.l36b9 equ $ + 4
	db #20,#c8,#20,#87,#df,#00,#11,#06
	db #8a,#e0,#1e,#1e,#1e,#2a,#1e,#1e
	db #2a,#1e,#1e,#1e,#1e,#2a,#1e,#1e
.l36d1 equ $ + 4
	db #2a,#c8,#2a,#87,#df,#00,#11,#06
	db #8a,#e0,#1b,#1b,#1b,#22,#1b,#1b
	db #22,#22,#1b,#1b,#1b,#22,#1b,#1b
.l36e9 equ $ + 4
	db #22,#c8,#22,#87,#df,#00,#11,#06
	db #8a,#e0,#18,#19,#19,#19,#18,#19
	db #19,#19,#18,#19,#19,#19,#19,#19
.l3700 equ $ + 3
	db #19,#19,#87,#df,#00,#11,#06,#8a
	db #e0,#1d,#1e,#1e,#1e,#1d,#1e,#1e
	db #1e,#1d,#1e,#1e,#1e,#1e,#1e,#1e
.l3717 equ $ + 2
	db #1e,#87,#8a,#88,#01,#01,#83,#df
	db #00,#11,#06,#e0,#18,#df,#00,#08
	db #30,#19,#19,#19,#df,#00,#11,#06
	db #18,#df,#00,#11,#06,#19,#19,#19
	db #df,#00,#11,#06,#18,#df,#00,#11
	db #06,#19,#19,#df,#00,#11,#06,#e2
	db #1a,#df,#00,#11,#06,#e0,#18,#df
	db #00,#11,#06,#19,#19,#19,#df,#00
	db #11,#06,#18,#df,#00,#11,#06,#19
	db #19,#19,#df,#00,#11,#06,#18,#df
	db #00,#11,#06,#19,#19,#df,#00,#11
.l3771 equ $ + 4
	db #06,#e2,#1c,#87,#8a,#88,#01,#01
	db #83,#df,#00,#11,#06,#e0,#1d,#df
	db #00,#11,#06,#1e,#1e,#1e,#df,#00
	db #11,#06,#1d,#df,#00,#11,#06,#1e
	db #1e,#1e,#df,#00,#11,#06,#1d,#df
	db #00,#11,#06,#1e,#1e,#df,#00,#11
	db #06,#e2,#1f,#df,#00,#11,#06,#e0
	db #1d,#df,#00,#11,#06,#1e,#1e,#1e
	db #df,#00,#11,#06,#1d,#df,#00,#11
	db #06,#1e,#1e,#1e,#df,#00,#11,#06
	db #1d,#df,#00,#11,#06,#1e,#1e,#df
.l37cb equ $ + 6
	db #00,#11,#06,#e2,#21,#87,#df,#00
	db #91,#04,#8a,#ef,#84,#ff,#48,#c7
.l37d7 equ $ + 2
	db #49,#87,#df,#00,#91,#04,#8a,#ef
.l37e3 equ $ + 6
	db #84,#ff,#48,#c3,#42,#87,#8a,#88
	db #01,#02,#83,#df,#00,#21,#04,#e5
	db #80,#e0,#31,#31,#df,#00,#41,#04
.l37fb equ $ + 6
	db #e2,#32,#31,#e1,#2f,#87,#8a,#88
	db #01,#02,#83,#df,#00,#21,#04,#e5
	db #80,#e0,#31,#31,#df,#00,#41,#04
.l3813 equ $ + 6
	db #e2,#33,#31,#e1,#2e,#87,#8a,#df
	db #00,#91,#03,#88,#01,#02,#83,#ef
.l3822 equ $ + 5
	db #84,#08,#30,#31,#87,#8a,#88,#01
	db #02,#83,#df,#00,#21,#04,#e5,#80
	db #e0,#38,#38,#df,#00,#41,#04,#e2
.l383a equ $ + 5
	db #39,#3f,#e1,#3d,#87,#df,#00,#91
	db #03,#8a,#88,#01,#02,#83,#ef,#84
.l3849 equ $ + 4
	db #08,#30,#3a,#87,#8a,#88,#01,#01
	db #83,#df,#00,#11,#06,#e0,#4b,#4b
	db #4b,#4b,#4b,#4b,#42,#42,#44,#44
	db #44,#42,#42,#42,#41,#41,#42,#42
	db #42,#42,#42,#42,#4e,#4e,#50,#50
.l3874 equ $ + 7
	db #50,#4e,#4e,#4e,#4d,#4d,#87,#8a
	db #df,#00,#21,#06,#88,#01,#01,#83
	db #e0,#24,#25,#25,#25,#24,#25,#25
	db #25,#24,#25,#25,#25,#25,#25,#25
.l388f equ $ + 2
	db #25,#87,#8a,#df,#00,#21,#06,#88
	db #01,#01,#83,#e0,#29,#2a,#2a,#2a
	db #29,#2a,#2a,#2a,#29,#2a,#2a,#2a
.l38aa equ $ + 5
	db #2a,#2a,#2a,#2a,#87,#8a,#88,#01
	db #01,#83,#df,#00,#21,#05,#e0,#24
	db #df,#00,#21,#05,#25,#25,#25,#df
	db #00,#21,#05,#24,#df,#00,#21,#05
	db #25,#25,#25,#df,#00,#21,#05,#24
	db #df,#00,#21,#05,#25,#25,#df,#00
	db #21,#03,#e2,#26,#df,#00,#21,#05
	db #e0,#24,#df,#00,#21,#05,#25,#25
	db #25,#df,#00,#21,#05,#24,#df,#00
	db #21,#05,#25,#25,#25,#df,#00,#21
	db #05,#24,#df,#00,#21,#05,#25,#25
.l3904 equ $ + 7
	db #df,#00,#21,#03,#e2,#28,#87,#8a
	db #88,#01,#01,#83,#df,#00,#21,#05
	db #e0,#29,#df,#00,#21,#05,#2a,#2a
	db #2a,#df,#00,#21,#05,#29,#df,#00
	db #21,#05,#2a,#2a,#2a,#df,#00,#21
	db #05,#29,#df,#00,#21,#05,#2a,#2a
	db #df,#00,#21,#03,#e2,#2b,#df,#00
	db #21,#05,#e0,#29,#df,#00,#21,#05
	db #2a,#2a,#2a,#df,#00,#21,#05,#29
	db #df,#00,#21,#05,#2a,#2a,#2a,#df
	db #00,#21,#05,#29,#df,#00,#21,#05
	db #2a,#2a,#df,#00,#21,#03,#e2,#2d
	db #87
;
.music_info
	db "Defcom (1986)(1001 Ltd)(David Whittaker)",0
	db "",0

	read "music_end.asm"
