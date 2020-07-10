; Music of Feud (1987)(Bulldog Software)(David Whittaker)()
; Ripped by Megachur the 28/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FEUD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #3939
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

;
.init_music	;.l3939
;
	ex af,af'
	xor a
	ld (l3e86),a
	ld (l3e87),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l40cc
	add hl,bc
	ld ix,l398d
	ld c,#20
	xor a
	ld (l3cb3),a
	ld a,#03
.l3959
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
	jr nz,l3959
	inc a
	ld (l39ed),a
	ld (l3e86),a
	ret
.l398d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l39ad
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l39cd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.l39ed
	db #00
;
.play_music	;.l39ee
;
	call l3ee5
	ld a,(l3e86)
	or a
	jp z,l3a4a
.l39f9 equ $ + 1
	ld a,#00
	ld (l3a46),a
	ld hl,l39ed
	dec (hl)
	jr nz,l3a1e
	ld b,(hl)
	ld ix,l398d
	call l3bc0
	ld ix,l39ad
	call l3bc0
	ld ix,l39cd
	call l3bc0
	ld hl,l39ed
.l3a1d equ $ + 1
	ld (hl),#01
.l3a1e
	ld ix,l398d
	call l3c67
	ld (l3d76),hl
	ld (l3d7e),a
	ld ix,l39ad
	call l3c67
	ld (l3d78),hl
	ld (l3d7f),a
	ld ix,l39cd
	call l3c67
	ld (l3d7a),hl
	ld (l3d80),a
.l3a46 equ $ + 1
	ld a,#00
	ld (l3d7c),a
.l3a4a
	ld a,(l3e87)
	and a
	jr z,l3a80
	ld hl,(l3d83)
	ld (l3d76),hl
	ld hl,(l3d87)
	ld (l3d7a),hl
	ld a,(l3d89)
	ld (l3d7c),a
	ld a,(l3d7d)
	or #2d
	ld hl,l3d8a
	and (hl)
;.l3a6d equ $ + 2
	ld (l3d7d),a
	ld a,(l3d8b)
	ld (l3d7e),a
	ld a,(l3d8d)
	ld (l3d80),a
	ld a,(l3d8f)
	ld (l3d82),a
.l3a80
	ld a,(l3e86)
	ld hl,l3e87
	or (hl)
	jr nz,l3a9f
	ret
;
.stop_music	;.l3a8a
;
	xor a
	ld (l3e86),a
	ld (l3e87),a
	call l3ac5
	xor a
	ld (l3d7e),a
	ld (l3d7f),a
	ld (l3d80),a
	ret
.l3a9f
	ld hl,l3d82
	ld d,#0c
.l3aa4
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
	jp p,l3aa4
	ret
.l3ac5
	ld de,#0d00
.l3ac8
	call l3ad2
	dec d
	jp p,l3ac8
	ld de,#073f
.l3ad2
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
;
.jumps_table
;
	db #ca
	db #b2
	db #b6
	db #bb
	db #79
	db #a8
	db #a3
	db #10
	db #92
	db #8a
	db #4f
	db #39
	db #61
	db #b7
	db #01
	xor a
	ld (l3e86),a
	pop hl
	jp l3ac5
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
	jr nz,l3b26
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l3b26
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l3bce
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,l3d5b
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l3bce
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l3d5b
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l3bce
	ld hl,l3d5b
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l3bce
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l3bce
	ld a,(de)
	inc de
	ld (l3cb3),a
	jr l3bce
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l3bce
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l3bce
	ld (ix+#1d),b
	jr l3bce
	ld (ix+#1d),#40
	jr l3bce
	ld (ix+#1d),#c0
	jr l3bce
	set 1,(ix+#00)
	jr l3bce
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l3bfa
.l3bc0
	dec (ix+#10)
	jr nz,l3c07
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l3bce
	ld a,(de)
	inc de
	and a
	jp m,l3c18
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l3be0
	ld (l39f9),a
.l3be0
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l3bfa
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l3c07
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l3c14
	inc (ix+#12)
	ret
.l3c14
	dec (ix+#12)
	ret
.l3c18
	cp #b8
	jr c,l3c5f
	add #20
	jr c,l3c44
	add #10
	jr c,l3c4a
	add #10
	jr nc,l3c3d
	ld c,a
	ld hl,l3e38
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr l3bce
.l3c3d
	add #09
	ld (l3a1d),a
	jr l3bce
.l3c44
	inc a
	ld (ix+#11),a
	jr l3bce
.l3c4a
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
	jp l3bce
.l3c5f
	ld hl,jumps_table-&80	;l3a6d
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l3c67
	ld c,(ix+#00)
	bit 5,c
	jr z,l3cb2
	ld a,(ix+#16)
	sub #10
	jr nc,l3c9a
	bit 6,c
	jr z,l3c9f
	add (ix+#13)
	jr nc,l3c7f
	sbc a
.l3c7f
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l3c95
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l3cb2
.l3c95
	ld (ix+#18),a
	jr l3cb2
.l3c9a
	ld (ix+#16),a
	jr l3cb2
.l3c9f
	cpl
	sub #0f
	add (ix+#13)
	jr c,l3ca8
	sub a
.l3ca8
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l3cb2
	res 5,c
.l3cb3 equ $ + 1
.l3cb2
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,l3cca
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l3cca
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	
	ld hl,l3d78
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l3d2c
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l3cf5
	bit 0,c
	jr nz,l3d13
.l3cf5
	bit 5,l
	jr nz,l3d05
	sub (ix+#1b)
	jr nc,l3d10
	set 5,(ix+#1d)
	sub a
	jr l3d10
.l3d05
	add (ix+#1b)
	cp b
	jr c,l3d10
	res 5,(ix+#1d)
	ld a,b
.l3d10
	ld (ix+#1c),a
.l3d13
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l3d1e
	dec d
.l3d1e
	add #a0
	jr c,l3d2a
.l3d22
	sla e
	rl d
	add #18
	jr nc,l3d22
.l3d2a
	add hl,de
	ex de,hl
.l3d2c
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l3d57
	ld b,(ix+#0e)
	djnz l3d54
	ld c,(ix+#0d)
	bit 7,c
	jr z,l3d43
	dec b
.l3d43
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l3d57
.l3d54
	ld (ix+#0e),b
.l3d57
	cpl
	and #03
.l3d5b equ $ + 1
	ld a,#38
	jr nz,l3d68
	ld a,(l39f9)
	xor #08
	ld (l3a46),a
	ld a,#07
.l3d68
	ld hl,l3d7d
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l3d7d equ $ + 7
.l3d7c equ $ + 6
.l3d7a equ $ + 4
.l3d78 equ $ + 2
.l3d76
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l3d84 equ $ + 6
.l3d83 equ $ + 5
.l3d82 equ $ + 4
.l3d80 equ $ + 2
.l3d7f equ $ + 1
.l3d7e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3d8d equ $ + 7
.l3d8b equ $ + 5
.l3d8a equ $ + 4
.l3d89 equ $ + 3
.l3d87 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10

	db #00
.l3d8f
	db #ff
;
; frequency table
;
	defw #077c,#0708,#06b0,#0640
	defw #05ec,#0594,#0544,#04f8
	defw #04b0,#0470,#042c,#03f0
	defw #03be,#0384,#0358,#0320
	defw #02f6,#02ca,#02a2,#027c
	defw #0258,#0238,#0216,#01f8
	defw #01df,#01c2,#01ac,#0190
	defw #017b,#0165,#0151,#013e
	defw #012c,#011c,#010b,#00fc
	defw #00ef,#00e1,#00d6,#00c8
	defw #00bd,#00b2,#00a8,#009f
	defw #0096,#008e,#0085,#007e
	defw #0077,#0070,#006b,#0064
	defw #005e,#0059,#0054,#004f
	defw #004b,#0047,#0042,#003f
	defw #003b,#0038,#0035,#0032
	defw #002f,#002c,#002a,#0027
	defw #0025,#0023,#0021,#001f
	defw #001d,#001c,#001a,#0019
	defw #0017,#0016,#0015,#0013
	defw #0012,#0011,#0010,#000f
.l3e38
	db #10,#11,#14,#17,#1a,#1e,#21,#24
	db #27,#2a,#2c,#2f,#33,#35,#37,#3c
	db #00,#87,#00,#03,#07,#87,#00,#04
	db #07,#87,#00,#02,#07,#87,#00,#04
	db #07,#0c,#87,#07,#0c,#0f,#87,#07
	db #0c,#10,#87,#03,#07,#0c,#87,#04
	db #07,#0c,#87,#00,#0c,#87,#03,#01
	db #00,#87,#05,#03,#02,#00,#87,#05
	db #00,#87,#00,#07,#87,#00,#00,#00
	db #00,#0c,#87,#02,#00,#87
.l3e86
.music_end
	db #00
.l3e87
	db #00
; sound effects
	push hl
	push de
	push bc
	ld hl,l3e87
	ld (hl),#00
	ld hl,l3f7d
	add a
	add l
	ld l,a
	ld a,#01
	ld (#0c38),a
	jr nc,l3e9e
	inc h
.l3e9e
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld bc,#0011
	ld de,l409a
	ldir
	ld a,(l409b)
	ld (l40ab),a
	ld hl,(l409c)
	ld (l3d83),hl
	ld de,(l409e)
	ld (l3d87),de
	ld a,l
	ld (l3d89),a
	ld a,(l40a1)
	ld (l3d8a),a
	ld a,(l40a0)
	ld (l3d8f),a
	ld a,(l40aa)
	ld e,a
	ld d,#0d
	call l3ad2
	ld hl,l3e87
	inc (hl)
	pop bc
	pop de
	pop hl
	ret
.l3edf
	ld (l3e87),a
	jp l3ac5
.l3ee5
	call l40ad
	ld a,(l3e87)
	and a
	ret z
	ld a,(l409a)
	and a
	jr z,l3edf
	dec a
	ld (l409a),a
	ld a,(l40ab)
	and a
	jr nz,l3f2c
	ld a,(l40a8)
	and a
	ret z
	dec a
	ld (l40a8),a
	ld a,(l409b)
	ld (l40ab),a
	ld a,(l40a9)
	and a
	jr z,l3f15
	ld a,(l40c8)
.l3f15
	ld b,a
	ld a,(l409c)
	add b
	ld (l3d83),a
	ld a,(l409d)
	add b
	and #0f
	ld (l3d84),a
	ld hl,(l409e)
	ld (l3d87),hl
.l3f2c
	ld hl,l40ab
	dec (hl)
	ld a,(l40a6)
	and a
	jr z,l3f53
	jp p,l3f46
	ld hl,(l3d83)
	ld de,(l40a2)
	add hl,de
	ld (l3d83),hl
	jr l3f53
.l3f46
	ld hl,(l3d83)
	ld de,(l40a2)
	and a
	sbc hl,de
	ld (l3d83),hl
.l3f53
	ld a,(l40a7)
	and a
	jr z,l3f76
	jp p,l3f69
	ld hl,(l3d87)
	ld de,(l40a4)
	add hl,de
	ld (l3d87),hl
	jr l3f76
.l3f69
	ld hl,(l3d87)
	ld de,(l40a4)
	and a
	sbc hl,de
	ld (l3d87),hl
.l3f76
	ld a,(l3d83)
	ld (l3d89),a
	ret
.l3f7d
	dw l3f9b,l3fac,l3fbd,l3fce
	dw l3fdf,l3ff0,l4001,l4012
	dw l4023,l4034,l4045,l4056
	dw l4067,l4078,l4089
l3f9b
	db #3c,#14,#80,#00,#a0,#00,#28,#f2
	db #01,#00,#01,#00,#ff,#ff,#0a,#00
	db #00
l3fac
	db #3c,#14,#60,#00,#88,#00,#28,#f2
	db #01,#00,#01,#00,#ff,#ff,#0a,#00
	db #00
l3fbd
	db #19,#07,#00,#04,#10,#04,#0f,#fa
	db #98,#00,#98,#00,#ff,#ff,#05,#00
	db #00
l3fce
	db #19,#07,#80,#04,#90,#04,#0f,#fa
	db #98,#00,#98,#00,#ff,#ff,#05,#00
	db #00
l3fdf
	db #50,#06,#8a,#02,#60,#02,#0d,#fa
	db #40,#00,#40,#00,#01,#01,#0f,#01
	db #0e
l3ff0
	db #50,#06,#0a,#02,#00,#02,#0d,#fa
	db #40,#00,#40,#00,#01,#01,#0f,#01
	db #0e
l4001
	db #23,#07,#c0,#01,#80,#03,#14,#fa
	db #20,#00,#18,#00,#01,#01,#3c,#00
	db #00
l4012
	db #2d,#0a,#08,#00,#0b,#00,#0f,#fa
	db #08,#00,#08,#00,#ff,#ff,#0a,#00
	db #00
l4023
	db #3c,#14,#20,#00,#47,#00,#1e,#fa
	db #01,#04,#01,#04,#01,#01,#ff,#00
	db #00
l4034
	db #1e,#1f,#0f,#02,#0f,#02,#05,#d7
	db #00,#00,#00,#00,#01,#01,#00,#00
	db #0e
l4045
	db #32,#0a,#0a,#00,#0f,#00,#23,#d2
	db #03,#00,#04,#00,#ff,#01,#0a,#01
	db #00
l4056
	db #32,#1a,#b8,#00,#98,#00,#1e,#fa
	db #03,#00,#04,#00,#01,#01,#03,#00
	db #00
l4067
	db #32,#12,#00,#02,#05,#01,#1e,#fa
	db #20,#00,#10,#00,#01,#01,#0a,#00
	db #00
l4078
	db #3c,#0d,#80,#00,#10,#02,#1e,#fa
	db #06,#00,#14,#00,#01,#01,#ff,#00
	db #00
l4089
	db #0a,#05,#0a,#01,#17,#01,#09,#fa
	db #1f,#00,#1c,#00,#ff,#ff,#05,#00
	db #00
.l409a
	db #00
.l409b
	db #00
.l409c
	db #00
.l409d
	db #00
.l409e
	db #00,#00
.l40a7 equ $ + 7
.l40a6 equ $ + 6
.l40a4 equ $ + 4
.l40a2 equ $ + 2
.l40a1 equ $ + 1
.l40a0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l40ab equ $ + 3
.l40aa equ $ + 2
.l40a9 equ $ + 1
.l40a8
	db #00,#00,#00,#00,#00
.l40ad
	ld a,(l40c8)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l40cb
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l40cb	equ $ +3
.l40c8
	db #ff,#80,#1b,#34
.l40cc
	dw l40d8,l413a,l419c
	dw l4456,l4480,l44a2
.l40d8
	dw l41fe,l421f
	dw l41fe,l421f,l41fe,l421f
	dw l41fe,l421f,l41fe,l421f
	dw l41fe,l421f,l41fe,l421f
	dw l41fe,l421f,l41fe,l421f
	dw l41fe,l421f,l41fe,l421f
	dw l41fe,l421f,l423e,l423e
	dw l423e,l423e,l423e,l423e
	dw l423e,l423e,l425d,l425d
	dw l425d,l425d,l423e,l423e
	dw l423e,l423e,l423e,l423e
	dw l423e,l423e,l425d,l425d
	dw l425d,l425d,#0000
.l413a
	dw l4289,l4289,l4289,l4289
	dw l4289,l4289,l4289,l4289
	dw l4289,l4289,l4289,l4289
	dw l4289,l4289,l4289,l4289
	dw l4289,l4289,l4289,l4289
	dw l4289,l4289,l4289,l4289
	dw l4299,l4299,l4299,l4299
	dw l4299,l4299,l4299,l4299
	dw l42a9,l42a9,l42a9,l42a9
	dw l4299,l4299,l4299,l4299
	dw l4299,l4299,l4299,l4299
	dw l42a9,l42a9,l42a9,l42a9
	dw #0000
.l419c
	dw l42bf,l42bf,l42bf,l42bf
	dw l42bf,l42bf,l42bf,l42bf
	dw l42c9,l42f9,l4329,l4359
	dw l4389,l43b9,l43e9,l4419
	dw l42c9,l42f9,l4329,l4359
	dw l4389,l43b9,l43e9,l4419
	dw l42c9,l42f9,l4329,l4359
	dw l4389,l43b9,l43e9,l4419
	dw l4449,l4449,l4449,l4449
	dw l42c9,l42f9,l4329,l4359
	dw l4389,l43b9,l43e9,l4419
	dw l4449,l4449,l4449,l4449
	dw #0000
.l41fe
	db #bd,#88,#02,#04,#e1,#82,#df,#00
	db #11,#05,#c0,#8a,#18,#18,#8b,#8d
	db #33,#8a,#18,#1f,#18,#8b,#8d,#27
	db #dc,#00,#11,#04,#81,#8c,#c4,#48
	db #87
.l421f
	db #88,#02,#04,#e1,#82,#df,#00,#11
	db #06,#c0,#8a,#18,#18,#8b,#8d,#33
	db #8a,#18,#1f,#8c,#8d,#27,#18,#dc
	db #00,#11,#04,#81,#c4,#48,#87
.l423e
	db #88,#02,#04,#e1,#82,#df,#00,#11
	db #06,#c0,#8a,#1d,#1d,#8b,#8d,#33
	db #8a,#1d,#24,#8c,#8d,#27,#1d,#dc
	db #00,#11,#04,#81,#c4,#4d,#87
.l425d
	db #bd,#e1,#8b,#df,#00,#11,#06,#1f
	db #de,#00,#11,#06,#04,#dd,#00,#11
	db #06,#08,#dc,#00,#11,#06,#0c,#db
	db #00,#11,#06,#10,#da,#00,#11,#06
	db #14,#d9,#00,#11,#06,#18,#d7,#00
	db #11,#06,#1c,#87
.l4289
	db #88,#01,#01,#82,#8a,#d7,#00,#f1
	db #01,#ef,#84,#fc,#3c,#c8,#30,#87
.l4299
	db #88,#01,#01,#82,#8a,#d7,#00,#f1
	db #01,#ef,#84,#fc,#3c,#c8,#35,#87
.l42a9
	db #88,#01,#02,#82,#8a,#e1,#da,#00
	db #11,#08,#c3,#3c,#c1,#3c,#3c,#3c
	db #3c,#3c,#3c,#85,#48,#87
.l42bf
	db #81,#8a,#c0,#df,#00,#11,#05,#ef
	db #18,#87
.l42c9
	db #88,#01,#01,#82,#8a,#cc,#e1,#dd
	db #00,#11,#08,#37,#dc,#00,#11,#08
	db #37,#db,#00,#11,#08,#37,#dd,#00
	db #11,#08,#37,#dc,#00,#11,#08,#37
	db #db,#00,#11,#08,#37,#dd,#00,#11
	db #08,#37,#db,#00,#11,#08,#37,#87
.l42f9
	db #88,#01,#01,#82,#8a,#cf,#e1,#dc
	db #00,#11,#08,#3a,#dc,#00,#11,#08
	db #3a,#db,#00,#11,#08,#3a,#dd,#00
	db #11,#08,#3a,#dc,#00,#11,#08,#3a
	db #db,#00,#11,#08,#3a,#dd,#00,#11
	db #08,#3a,#db,#00,#11,#08,#3a,#87
.l4329
	db #88,#01,#01,#82,#8a,#ca,#e1,#dd
	db #00,#11,#08,#39,#dc,#00,#11,#08
	db #39,#db,#00,#11,#08,#39,#dd,#00
	db #11,#08,#39,#dc,#00,#11,#08,#39
	db #db,#00,#11,#08,#39,#dd,#00,#11
	db #08,#39,#db,#00,#11,#08,#39,#87
.l4359
	db #88,#01,#01,#82,#8a,#cb,#e1,#dd
	db #00,#11,#08,#37,#dc,#00,#11,#08
	db #37,#db,#00,#11,#08,#37,#dd,#00
	db #11,#08,#37,#dc,#00,#11,#08,#37
	db #db,#00,#11,#08,#37,#dd,#00,#11
	db #08,#37,#db,#00,#11,#08,#37,#87
.l4389
	db #88,#01,#01,#82,#8a,#cc,#e1,#dd
	db #00,#11,#08,#43,#dc,#00,#11,#08
	db #43,#db,#00,#11,#08,#43,#dd,#00
	db #11,#08,#43,#dc,#00,#11,#08,#43
	db #db,#00,#11,#08,#43,#dd,#00,#11
	db #08,#43,#db,#00,#11,#08,#43,#87
.l43b9
	db #88,#01,#01,#82,#8a,#cf,#e1,#dd
	db #00,#11,#08,#46,#dc,#00,#11,#08
	db #46,#db,#00,#11,#08,#46,#dd,#00
	db #11,#08,#46,#dc,#00,#11,#08,#46
	db #db,#00,#11,#08,#46,#dd,#00,#11
	db #08,#46,#db,#00,#11,#08,#46,#87
.l43e9
	db #88,#01,#01,#82,#8a,#ca,#e1,#dd
	db #00,#11,#08,#45,#dc,#00,#11,#08
	db #45,#db,#00,#11,#08,#45,#dd,#00
	db #11,#08,#45,#dc,#00,#11,#08,#45
	db #db,#00,#11,#08,#45,#dd,#00,#11
	db #08,#45,#db,#00,#11,#08,#45,#87
.l4419
	db #88,#01,#01,#82,#8a,#cb,#e1,#dd
	db #00,#11,#08,#43,#dc,#00,#11,#08
	db #43,#db,#00,#11,#08,#43,#dd,#00
	db #11,#08,#43,#dc,#00,#11,#08,#43
	db #db,#00,#11,#08,#43,#dd,#00,#11
	db #08,#43,#db,#00,#11,#08,#43,#87
.l4449
	db #88,#01,#02,#82,#8a,#ef,#d6,#00
	db #11,#01,#c0,#54,#87
.l4456
	dw l44c4,l41fe,l421f,l41fe
	dw l421f,l44c7,l41fe,l421f
	dw l41fe,l421f,l44ca,l41fe
	dw l421f,l41fe,l421f,l44cd
	dw l41fe,l421f,l41fe,l421f
	dw #0000
.l4480
	dw l4289,l4289,l4289,l4289
	dw l4289,l4289,l4289,l4289
	dw l4289,l4289,l4289,l4289
	dw l4289,l4289,l4289,l4289
	dw #0000
.l44a2
	dw l42bf,l42bf,l42bf,l42bf
	dw l42bf,l42bf,l42bf,l42bf
	dw l42bf,l42bf,l42bf,l42bf
	dw l42bf,l42bf,l42bf,l42bf
	dw #0000
.l44c4
	db #89,#00,#87
.l44c7
	db #89,#03,#87
.l44ca
	db #89,#06,#87
.l44cd
	db #89,#09,#87
;
.music_info
	db "Feud (1987)(Bulldog Software)(David Whittaker)",0
	db "",0

	read "music_end.asm"
