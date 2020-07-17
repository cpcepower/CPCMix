; Music of Wec Le Mans (1988)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "WECLEMAN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #3159
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"

;
.init_music
.l3159
;
	ld hl,l37fc
	ld (hl),#00
	inc hl
	ld (hl),#00
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l39a7
	add hl,bc
	ld a,(hl)
	ld (l3258),a
	inc hl
	ld ix,l31bc
	ld c,#25
	ld a,#03
.l317a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#20),#00
	ld (ix+#21),#00
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
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
	jr nz,l317a
	ld (l3502),a
	inc a
	ld (l322b),a
	ld (l37fc),a
	ret
.l31bc
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#09
.l31e1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#12
.l3206
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#24
.l322b
	db #00
;
.play_music
.l322c
;
	call l3852
	ld a,(l37fc)
	and a
	jp z,l3288
.l3237 equ $ + 1
	ld a,#00
	ld (l3284),a
	ld hl,l322b
	dec (hl)
	jr nz,l325c
	ld b,(hl)
	ld ix,l31bc
	call l3400
	ld ix,l31e1
	call l3400
	ld ix,l3206
	call l3400
.l3258 equ $ + 1
	ld a,#01
	ld (l322b),a
.l325c
	ld ix,l31bc
	call l34cf
	ld (l35e0),hl
	ld (l35e8),a
	ld ix,l31e1
	call l34cf
	ld (l35e2),hl
	ld (l35e9),a
	ld ix,l3206
	call l34cf
	ld (l35e4),hl
	ld (l35ea),a
.l3284 equ $ + 1
	ld a,#00
	ld (l35e6),a
.l3288
	ld a,(l37fd)
	and a
	jr z,l32b8
	ld hl,(l35ed)
	ld (l35e0),hl
	ld hl,(l35f1)
	ld (l35e4),hl
	ld a,(l35f3)
	ld (l35e6),a
	ld a,(l35e7)
	or #2d
	ld hl,l35f4
	and (hl)
	ld (l35e7),a
	ld a,(l35f5)
	ld (l35e8),a
	ld a,(l35f7)
	ld (l35ea),a
.l32b8
	ld a,(l37fc)
	and a
	jr nz,l32e7
	ld a,(#08dd)
	ld hl,#08b0
	or (hl)
	jr z,l32d3
.l32c7
	ld a,(l37fd)
	and a
	ret z
	ld a,(l35e7)
	set 1,a
	jr l32e4
.l32d3
	ld bc,#0000
	ld (l35e2),bc
	ld a,#0f
	ld (l35e9),a
	ld a,(l35e7)
	res 1,a
.l32e4
	ld (l35e7),a
.l32e7
	ld hl,l35eb
	ld d,#0b
.l32ec
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
	jp p,l32ec
	ret
;
.stop_music
;
.l330d
	di
	xor a
	ld (l37fc),a
.l3312
	ld de,#0d00
.l3315
	call l331f
	dec d
	jp p,l3315
	ld de,#0700
.l331f
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
	xor a
	ld (l37fd),a
	ld (l35e8),a
	ld (l35e9),a
	ld (l35ea),a
	ret
	db #9f
	db #87
	db #8b
	db #90
	db #4e
	db #7d
	db #78
	db #0f
	db #67
	db #5f
	db #24
	db #0e
	db #36
	db #8c
	db #04
	db #99
	db #9e
	db #a3
	pop hl
	jp l330d
	jp l3787
	ld a,(ix+#24)
	ld c,a
	and #07
	ld hl,l35ab
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l340e
	ld a,(ix+#24)
	ld c,a
	and #38
	ld hl,l35ab
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l340e
	ld hl,l35ab
	ld a,(ix+#24)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l340e
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l340e
	ld a,(de)
	inc de
	ld (l3502),a
	jr l340e
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l340e
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l340e
	ld (ix+#1d),b
	jr l340e
	ld (ix+#1d),#40
	jr l340e
	ld (ix+#1d),#c0
	jr l340e
	set 1,(ix+#00)
	jr l340e
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l344c
	res 5,(ix+#00)
	jr l344c
	ld (ix+#1f),#ff
	jr l340e
	ld (ix+#1f),b
	jr l340e
.l3400
	dec (ix+#10)
	jr nz,l3469
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l340e
	ld a,(de)
	inc de
	and a
	jp m,l347a
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l3423
	ld (l3237),a
.l3423
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#0b),l
	ld (ix+#0c),h
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
	set 5,(ix+#00)
.l344c
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l3468
	ld a,(l37fd)
	and a
	jr nz,l3468
	ld (ix+#1f),#ff
.l3468
	ret
.l3469
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l3476
	inc (ix+#12)
	ret
.l3476
	dec (ix+#12)
	ret
.l347a
	cp #b8
	jr c,l34c7
	add #20
	jr c,l34a8
	add #10
	jr c,l34af
	add #10
	jr nc,l34a0
	ld c,a
	ld hl,l36b9
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l340e
.l34a0
	add #09
	ld (l3258),a
	jp l340e
.l34a8
	inc a
	ld (ix+#11),a
	jp l340e
.l34af
	ld hl,l36ee
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp l340e
.l34c7
	ld hl,l32c7
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l34cf
	ld c,(ix+#00)
	bit 5,c
	jr z,l3501
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l34fb
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l34fb
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l34fb
	ld a,(ix+#18)
	ld (ix+#13),a
.l3502 equ $ + 1
.l3501
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l351b
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l351b
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l35f9
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l357c
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l3545
	bit 0,c
	jr nz,l3563
.l3545
	bit 5,l
	jr nz,l3555
	sub (ix+#1b)
	jr nc,l3560
	set 5,(ix+#1d)
	sub a
	jr l3560
.l3555
	add (ix+#1b)
	cp b
	jr c,l3560
	res 5,(ix+#1d)
	ld a,b
.l3560
	ld (ix+#1c),a
.l3563
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l356e
	dec d
.l356e
	add #a0
	jr c,l357a
.l3572
	sla e
	rl d
	add #18
	jr nc,l3572
.l357a
	add hl,de
	ex de,hl
.l357c
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l35a7
	ld b,(ix+#0e)
	djnz l35a4
	ld c,(ix+#0d)
	bit 7,c
	jr z,l3593
	dec b
.l3593
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l35a7
.l35a4
	ld (ix+#0e),b
.l35a7
	cpl
	and #03
.l35ab equ $ + 1
	ld a,#00
	jr nz,l35b8
	ld a,(l3237)
	xor #08
	ld (l3284),a
	ld a,#07
.l35b8
	ld hl,l35e7
	xor (hl)
	and (ix+#24)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l35db
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#24)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l3284),a
.l35db
	ex de,hl
	ld a,(ix+#13)
	ret
.l35e7 equ $ + 7
.l35e6 equ $ + 6
.l35e4 equ $ + 4
.l35e2 equ $ + 2
.l35e0
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l35ee equ $ + 6
.l35ed equ $ + 5
.l35eb equ $ + 3
.l35ea equ $ + 2
.l35e9 equ $ + 1
.l35e8
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l35f7 equ $ + 7
.l35f5 equ $ + 5
.l35f4 equ $ + 4
.l35f3 equ $ + 3
.l35f1 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l35f9
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
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.l36b9
	db #07,#07,#09,#1c,#2a,#2b,#2d,#80
	db #00,#05,#87,#13,#12,#11,#10,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#80,#0c
	db #0c,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#80,#00,#8c
	db #00,#05,#88,#18,#80
.l36ee
	dw l3705,l3711,l371c,l3727
	dw l3731,l3744,l374e,l3759
	dw l3765,l376f,l3779
.l3705 equ $ + 1
	db #00,#0c,#0d,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#06,#87
.l3711 equ $ + 1
	db #01,#0f,#0f,#0e,#0d,#0c,#0b,#09
	db #08,#05,#87
.l371c equ $ + 1
	db #01,#0c,#0e,#0d,#0a,#09,#08,#06
	db #05,#06,#87
.l3727 equ $ + 1
	db #02,#0f,#0e,#0d,#0c,#0a,#09,#08
	db #07,#87
.l3731 equ $ + 1
	db #06,#07,#08,#09,#0a,#0b,#0c,#0d
	db #0e,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#87
.l3744 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#87
.l374e equ $ + 1
	db #00,#0f,#0e,#0d,#0b,#0a,#09,#08
	db #06,#05,#87
.l3759 equ $ + 1
	db #01,#0c,#0e,#0f,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#87
.l3765 equ $ + 1
	db #00,#0c,#0d,#0c,#0b,#0a,#09,#08
	db #00,#87
.l376f equ $ + 1
	db #01,#0c,#0d,#0e,#0f,#0e,#0d,#0b
	db #0a,#87
.l3779 equ $ + 1
	db #02,#0f,#0e,#0c,#0b,#0a,#09,#08
	db #05,#04,#03,#02,#01,#00,#87
.l3787
	ld c,(ix+#05)
	ld b,(ix+#06)
.l378d
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	ld a,(ix+#21)
	dec a
	jp m,l37aa
	ld (ix+#21),a
	ld e,(ix+#22)
	ld d,(ix+#23)
	jr nz,l37c1
	inc bc
	inc bc
	jr l378d
.l37aa
	ld (ix+#20),#00
.l37ae
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l37cc
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l37c1
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l340e
.l37cc
	dec de
	ld a,d
	or e
	jr nz,l37dd
	inc hl
	ld a,(hl)
	ld (ix+#20),a
	inc hl
	inc bc
	inc bc
	inc bc
	inc de
	jr l37ae
.l37dd
	dec de
	ld a,d
	or e
	inc de
	inc de
	jr nz,l37f8
	inc hl
	ld a,(hl)
	ld (ix+#21),a
	inc hl
	ld e,(hl)
	ld (ix+#22),e
	inc hl
	ld d,(hl)
	ld (ix+#23),d
	inc bc
	inc bc
	inc bc
	jr l37c1
.l37f8
	inc bc
	inc bc
	jr l37c1
.l37fc
.music_end
	db #00
.l37fd
	db #00
	db #ff

	ld b,a
	ld a,(l37fd)
	or a
	ret nz
	ld a,b
	ld hl,l38f0
	add a
	add l
	ld l,a
	jr nc,l380f
	inc h
.l380f
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l3975
.l3817
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l3817
	ld a,(l3976)
	ld (l3986),a
	ld hl,(l3977)
	ld (l35ed),hl
	ld de,(l3979)
	ld (l35f1),de
	ld a,l
	ld (l35f3),a
	ld a,(l397c)
	ld (l35f4),a
	ld a,(l397b)
	ld e,a
	ld d,#0c
	call l331f
	ld a,(l3985)
	ld e,a
	ld d,#0d
	call l331f
	ld hl,l37fd
	inc (hl)
	ret
.l3852
	call l3988
	ld a,(l37fd)
	and a
	ret z
	ld a,(l3975)
	and a
	jr nz,l3866
	ld (l37fd),a
	jp l3312
.l3866
	dec a
	ld (l3975),a
	ld a,(l3986)
	and a
	jr nz,l389f
	ld a,(l3983)
	and a
	ret z
	dec a
	ld (l3983),a
	ld a,(l3976)
	ld (l3986),a
	ld a,(l3984)
	and a
	jr z,l3888
	ld a,(l39a3)
.l3888
	ld b,a
	ld a,(l3977)
	add b
	ld (l35ed),a
	ld a,(l3978)
	add b
	and #0f
	ld (l35ee),a
	ld hl,(l3979)
	ld (l35f1),hl
.l389f
	ld hl,l3986
	dec (hl)
	ld a,(l3981)
	and a
	jr z,l38c6
	jp p,l38b9
	ld hl,(l35ed)
	ld de,(l397d)
	add hl,de
	ld (l35ed),hl
	jr l38c6
.l38b9
	ld hl,(l35ed)
	ld de,(l397d)
	and a
	sbc hl,de
	ld (l35ed),hl
.l38c6
	ld a,(l3982)
	and a
	jr z,l38e9
	jp p,l38dc
	ld hl,(l35f1)
	ld de,(l397f)
	add hl,de
	ld (l35f1),hl
	jr l38e9
.l38dc
	ld hl,(l35f1)
	ld de,(l397f)
	and a
	sbc hl,de
	ld (l35f1),hl
.l38e9
	ld a,(l35ed)
	ld (l35f3),a
	ret
.l38f0
	dw l38fe,l390f,l3920,l3931
	dw l3942,l3953,l3964
.l38fe
	db #07,#03,#10,#00,#8b,#00,#0f,#fa
	db #10,#00,#08,#01,#ff,#01,#0a,#00
	db #00
.l390f
	db #04,#0a,#ff,#7f,#f0,#7f,#0c,#f2
	db #18,#00,#16,#00,#ff,#ff,#01,#00
	db #00
.l3920
	db #14,#ff,#80,#01,#90,#01,#c8,#fa
	db #28,#00,#28,#00,#ff,#ff,#02,#00
	db #50
.l3931
	db #05,#0a,#a0,#02,#c0,#00,#32,#fa
	db #08,#00,#70,#00,#ff,#ff,#00,#00
	db #00
.l3942
	db #11,#03,#04,#00,#0b,#00,#0f,#fa
	db #09,#03,#08,#00,#ff,#ff,#0a,#00
	db #00
.l3953
	db #0f,#ff,#c2,#00,#0a,#01,#0a,#f2
	db #a2,#01,#c0,#00,#ff,#ff,#ff,#14
	db #00
.l3964
	db #1e,#ff,#09,#00,#02,#00,#0a,#f3
	db #00,#04,#00,#04,#01,#01,#ff,#00
	db #00
.l3975
	db #00
.l397d equ $ + 7
.l397c equ $ + 6
.l397b equ $ + 5
.l3979 equ $ + 3
.l3978 equ $ + 2
.l3977 equ $ + 1
.l3976
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3985 equ $ + 7
.l3984 equ $ + 6
.l3983 equ $ + 5
.l3982 equ $ + 4
.l3981 equ $ + 3
.l397f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3986
	db #00,#00
.l3988
	ld a,(l39a3)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l39a6
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l39a6 equ $ + 3
.l39a3
	db #ff,#80,#1b,#34
.l39a7
	db #05
	dw l39ca,l39f1,l3a20
	db #05
	dw l3ba8,l3bb9,l3bc7
	db #05
	dw l3c1c,l3c20,l3c24
	db #05
	dw l3c7e,l3c84,l3c88
	db #05
	dw l3ca6,l3cac,l3cb5
.l39ca
	dw l3a9b,l3a9b,l3ab0,l3ae9
	dw l3ae9,l3b29,l3b30,l3b29
	dw l3b30,l3ae9,l3ae9,l3b29
	dw l3b30,l3b29,l3b30,l3b5f
	db #02,#00,#03
	dw l3b95,#0000
.l39f1
	dw l3a5f
	db #02,#00,#0b
	dw l3a5f,l3b0d
	db #01,#00,#fe
	dw l3b0d,l3b0d
	db #01,#00,#fe
	dw l3b0d
	db #02,#00,#04
	dw l3a5f,l3b0d
	db #01,#00,#fe
	dw l3b0d,l3b0d
	db #01,#00,#fe
	dw l3b0d
	db #02,#00,#03
	dw l3a5f
	dw #0000
.l3a20
	dw l3a40
	db #02,#00,#2f
	dw l3a40
	db #02,#00,#10
	dw l3b36
	db #02,#00,#10
	dw l3a40
	db #02,#00,#10
	dw l3b36
	db #02,#00,#0c
	dw l3a40,#0000

	db #ff,#80,#87
.l3a40
	db #d0,#c1,#8a,#81,#91,#e3,#38,#d3
	db #8c,#c2,#e1,#13,#d0,#c1,#8a,#e1
	db #38,#38,#8c,#d3,#c2,#e1,#11,#13
	db #d0,#c1,#8a,#e0,#38,#38,#87
.l3a5f
	db #d1,#8a,#88,#01,#01,#82,#c3,#90
	db #e1,#14,#14,#12,#e3,#14,#d2,#c4
	db #81,#e1,#31,#36,#38,#e3,#3a,#e1
	db #38,#e3,#36,#d1,#c3,#82,#e1,#0d
	db #0f,#12,#14,#14,#12,#e3,#14,#d2
	db #c4,#81,#e1,#36,#38,#3a,#e3,#3b
	db #e1,#3a,#e3,#33,#d1,#c3,#82,#e1
	db #20,#1e,#1b,#87
.l3a9b
	db #8a,#d4,#88,#01,#02,#82,#c0,#91
	db #ff,#38,#8f,#d5,#ef,#3b,#3a,#d4
	db #ff,#33,#8f,#80,#87
.l3ab0
	db #d6,#81,#ef,#80,#ff,#80,#80,#e0
	db #14,#16,#19,#1b,#1e,#20,#1b,#1e
	db #20,#22,#25,#27,#2a,#2c,#27,#2a
	db #2c,#2e,#31,#33,#36,#38,#33,#36
	db #38,#3a,#3d,#3f,#42,#44,#3f,#42
	db #44,#46,#49,#4b,#4e,#50,#4b,#4e
	db #50,#52,#55,#57,#5a,#5c,#57,#5a
	db #87
.l3ae9
	db #d7,#88,#01,#01,#81,#c0,#e5,#3f
	db #82,#3f,#ff,#84,#01,#78,#3f,#e7
	db #80,#81,#e1,#3d,#3b,#3d,#3f,#82
	db #e3,#3b,#e5,#3a,#38,#f7,#33,#e3
	db #8f,#f7,#80,#87
.l3b0d
	db #e1,#16,#16,#14,#e7,#16,#e3,#14
	db #e7,#80,#e1,#0f,#12,#14,#16,#16
	db #14,#e7,#16,#e3,#14,#e7,#80,#e1
	db #20,#1e,#1b,#87
.l3b29
	db #d4,#c5,#81,#ff,#3a,#80,#87
.l3b30
	db #d4,#c1,#ff,#38,#80,#87
.l3b36
	db #c2,#d3,#8c,#e1,#11,#c0,#d8,#8b
	db #e0,#41,#41,#d3,#8c,#c2,#e1,#18
	db #c0,#d8,#8b,#e0,#41,#41,#41,#41
	db #c2,#d3,#8c,#e1,#11,#d3,#8c,#c2
	db #e1,#18,#c0,#d8,#8b,#e0,#41,#41
	db #87
.l3b5f
	db #81,#c0,#d6,#e0,#5a,#57,#5c,#5a
	db #57,#55,#52,#50,#4e,#4b,#50,#4e
	db #4b,#49,#46,#44,#42,#3f,#44,#42
	db #3f,#3d,#3a,#38,#36,#33,#38,#36
	db #33,#31,#2e,#2c,#2a,#27,#2c,#2a
	db #27,#25,#22,#20,#1e,#1b,#20,#1e
	db #1b,#19,#16,#14,#ef,#80
.l3b95
	db #e1,#80,#c4,#3b,#3a,#3b,#e3,#38
	db #e1,#3b,#e3,#3a,#e1,#3b,#3a,#3b
	db #e7,#3d,#87
.l3ba8
	dw l3bcb
	db #02,#00,#03
	dw l3bcb
	db #01,#00,#03,#02,#00,#04
	dw l3bcb,#0000
.l3bb9
	dw l3c06,l3c06
	db #01,#00,#03,#02,#00,#02
	dw l3c06,#0000
.l3bc7
	dw l3bdd,#0000
.l3bcb
	db #d0,#8a,#88,#01,#01,#82,#c3,#90
	db #e1,#17,#17,#15,#17,#1a,#19,#17
	db #15,#87
.l3bdd
	db #c2,#d3,#8c,#e1,#11,#c0,#d8,#8b
	db #e0,#41,#41,#d3,#8c,#c2,#e1,#15
	db #c0,#d8,#8b,#e0,#41,#41,#41,#41
	db #c2,#d3,#8c,#e1,#11,#d3,#8c,#c2
	db #e1,#15,#c0,#d8,#8b,#e0,#41,#41
	db #87
.l3c06
	db #d5,#c6,#81,#91,#e1,#2f,#2f,#2d
	db #2f,#80,#2a,#2c,#2d,#2f,#2f,#2d
	db #2f,#80,#2f,#32,#31,#87
.l3c1c
	dw l3c2d,#0000
.l3c20
	dw l3c2f,#0000
.l3c24
	dw l3c66
	db #02,#00,#03
	dw l3c66,#0000
.l3c2d
	db #e0,#80
.l3c2f
	db #81,#c0,#d6,#e0,#5a,#57,#5c,#5a
	db #57,#55,#52,#50,#4e,#4b,#50,#4e
	db #4b,#49,#46,#44,#42,#3f,#44,#42
	db #3f,#3d,#3a,#38,#36,#33,#38,#36
	db #33,#31,#2e,#2c,#2a,#27,#2c,#2a
	db #27,#25,#22,#20,#1e,#1b,#20,#1e
	db #1b,#19,#16,#14,#e0,#80,#8e
.l3c66
	db #d1,#8a,#88,#01,#01,#82,#c3,#90
	db #e1,#14,#14,#12,#e7,#14,#eb,#80
	db #e1,#0d,#0f,#12,#87
.l3c7b
	db #e0,#80,#87
.l3c7e
	dw l3c7b,l3c91,#0000
.l3c84
	dw l3c7b,#0000
.l3c88
	dw l3c7b
	db #01,#00,#05
	dw l3c91,#0000
.l3c91
	db #d6,#c4,#81,#8a,#91,#e0,#38,#2e
	db #31,#33,#38,#33,#36,#44,#3a,#3d
	db #3f,#44,#3f,#42,#8e
.l3ca6
	dw l3c7b,l3cbe,#0000
.l3cac
	dw l3c7b
	db #01,#00,#07
	dw l3cbe,#0000
.l3cb5
	dw l3c7b
	db #01,#00,#03
	dw l3cbe,#0000
.l3cbe
	db #d1,#c0,#82,#88,#01,#01,#8a,#91
	db #e5,#26,#26,#84,#ff,#1e,#ef,#26
	db #8e,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#3c,#0f,#3c,#07,#3c,#07,#3c
	db #07,#3c,#07,#0e,#07,#3c,#0f,#0e
	db #07,#0f,#0f,#69,#c3,#f0,#e1,#68
	db #c0,#f0,#e1,#68,#c0,#0c,#09,#0f
	db #0f,#0f,#c3,#1e,#81,#1e,#83,#1e
	db #83,#1e,#83,#1e,#83,#0f,#c3,#0f
	db #09,#69,#0f,#3c,#0f,#3c,#07,#3c
	db #07,#3c,#07,#3c,#07,#68,#07,#0c
	db #0f,#0f,#0f,#69,#c3,#3c,#81,#f0
	db #e1,#38,#80,#68,#c3,#0c,#09,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#69,#0f,#68,#0f,#0c
	db #0f,#78,#c3,#c0,#61,#c1,#68,#c1
	db #68,#c1,#68,#c1,#68,#78,#c0,#0c
	db #01,#1e,#87
;
.music_info
	db "Wec Le Mans (1988)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
