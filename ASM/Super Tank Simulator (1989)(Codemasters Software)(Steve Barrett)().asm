; Music of Super Tank Simulator (1989)(Codemasters Software)(Steve Barrett)()
; Ripped by Megachur the 30/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SUPERTAS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #a1bb
FIRST_THEME				equ 1
LAST_THEME				equ 1	; 1 -> 1

	read "music_header.asm"

.la1bc equ $ + 1
.la1bb
	db #01,#00,#00,#00
	jp la238
.la1c2
	ld iy,la793
	add a
	ld b,a
	add a
	add b
	ld d,#00
	ld e,a
	add iy,de
	ld a,#01
	ld (la4d2),a
	ld (la4d3),a
	ld hl,la4ea
	ld de,la4eb
	ld bc,#0059
	ld (hl),#00
	ldir
	ld b,#03
	ld ix,la4ea
.la1ea
	ld l,(iy+#00)
	ld h,(iy+#01)
	inc iy
	inc iy
	ld (ix+#00),l
	ld (ix+#01),h
	ld c,#01
.la1fc
	ld a,(hl)
	inc hl
	or a
	jp p,la20c
	sub #28
	and #7f
	ld (ix+#11),a
	inc c
	jr la1fc
.la20c
	and #7f
	add a
	ld d,#00
	ld e,a
	ld hl,la799
	add hl,de
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	ld (ix+#02),c
	ld de,#001e
	add ix,de
	djnz la1ea
	ret
.la22a
	ld hl,#0000	; reset music ?
	xor a
	ld (la4dd),hl
	ld (la4dc),a
	ld (la1bc),a
	ret
.la238
	ld a,(la1bb)
	or a
	jr z,la256
	jp m,la24e
;
.init_music
;
	ld (la1bc),a
	dec a
	call la1c2
	xor a
	ld (la1bb),a
	jr la256
;
.stop_music
.la24e
;
	call la22a
	ld (la1bb),a
	jr la2b0
;
.play_music
.la256
;
	ld a,(la1bc)
	or a
	jr z,la2b0
	ld a,(la4d2)
	dec a
	ld (la4d2),a
	jp p,la281
	ld ix,la4ea
	call la2e0
	ld ix,la508
	call la2e0
	ld ix,la526
	call la2e0
	ld a,(la4d3)
	ld (la4d2),a
.la281
	ld ix,la4ea
	call la407
	ld (la4d4),hl
	ld a,b
	ld (la4dc),a
	ld ix,la508
	call la407
	ld (la4d6),hl
	ld a,b
	ld (la4dd),a
	ld ix,la526
	call la407
	ld (la4d8),hl
	ld a,b
	ld (la4de),a
	ld a,#38
	ld (la4db),a
.la2b0
	nop
	ld b,#0b
	ld hl,la4df
	ld de,la4d4
	ld c,#00
.la2bb
	ld a,(de)
	cp (hl)
	ld (hl),a
	push bc
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	ld a,(hl)
	out (c),a
	ld b,#f6
	xor a
	out (c),a
	pop bc
	inc c
	inc hl
	inc de
	djnz la2bb
	ret
.la2e0
	dec (ix+#09)
	ret p
.la2e4
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	push hl
	pop iy
	ld a,(iy+#00)
	inc iy
	cp #ff
	jr nz,la350
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld d,#00
	ld e,(ix+#02)
	add hl,de
	inc (ix+#02)
	ld a,(hl)
	inc hl
	cp #fe
	jr nz,la312
	pop hl
	call la22a
	jp la2b0
.la312
	cp #ff
	jr nz,la32f
	ld (ix+#02),#01
	ld l,(ix+#00)
	ld h,(ix+#01)
	bit 7,(hl)
	jr z,la32e
	ld a,(hl)
	inc hl
	sub #a8
	ld (ix+#11),a
	inc (ix+#02)
.la32e
	ld a,(hl)
.la32f
	bit 7,a
	jr z,la33d
	sub #a8
	ld (ix+#11),a
	ld a,(hl)
	inc hl
	inc (ix+#02)
.la33d
	add a
	ld hl,la799
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	jr la2e4
.la350
	cp #c0
	jr c,la3b0
	and #1f
	add a
	ld hl,la689
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld b,(hl)
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#17),a
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1c),a
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ld (ix+#12),l
	ld (ix+#13),h
	ld a,b
	add a
	ld d,#00
	ld e,a
	ld hl,la606
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	ld (ix+#10),a
	ld (ix+#14),a
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#0e),l
	ld (ix+#0f),h
	ld a,(iy+#00)
	inc iy
.la3b0
	cp #80
	jr c,la3c6
	and #3f
	ld (ix+#09),a
	ld (ix+#1b),a
	ld a,(iy+#00)
	ld (ix+#15),a
	inc iy
	jr la3cf
.la3c6
	ld (ix+#15),a
	ld a,(ix+#1b)
	ld (ix+#09),a
.la3cf
	set 6,(ix+#1a)
	push iy
	pop hl
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld a,(ix+#07)
	ld (ix+#06),a
	ld a,(ix+#14)
	ld (ix+#10),a
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	ld a,(ix+#12)
	ld (ix+#04),a
	ld a,(ix+#13)
	ld (ix+#05),a
	ld a,(ix+#1c)
	ld (ix+#1d),a
	ret
.la407
	dec (ix+#10)
	jr nz,la432
	ld a,(ix+#14)
	ld (ix+#10),a
.la412
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	inc (ix+#0e)
	jr nz,la420
	inc (ix+#0f)
.la420
	ld a,(hl)
	inc a
	jr nz,la438
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	jr la412
.la432
	ld l,(ix+#0e)
	ld h,(ix+#0f)
.la438
	ld a,(hl)
	add (ix+#15)
	add (ix+#11)
	sub #24
	jp p,la445
	xor a
.la445
	ld hl,la544
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld c,#00
	ld b,(ix+#1a)
	bit 6,b
	jr z,la4a1
	ld d,(ix+#17)
	ld e,(ix+#19)
	bit 7,b
	jr nz,la468
	bit 0,b
	jr z,la496
.la468
	ld a,(ix+#1d)
	or a
	jr z,la473
	dec (ix+#1d)
	jr la4a9
.la473
	bit 5,b
	jr nz,la486
	ld a,e
	sub (ix+#18)
	ld e,a
	jr nc,la493
	set 5,(ix+#1a)
	ld e,#00
	jr la493
.la486
	ld a,e
	add (ix+#18)
	ld e,a
	cp d
	jr c,la493
	res 5,(ix+#1a)
	ld e,d
.la493
	ld (ix+#19),e
.la496
	srl d
	ld a,e
	sub d
	ld e,a
	ld d,#00
	jr nc,la4a0
	dec d
.la4a0
	add hl,de
.la4a1
	ld a,(ix+#1a)
	xor #01
	ld (ix+#1a),a
.la4a9
	ld e,(ix+#04)
	ld d,(ix+#05)
	push de
	pop iy
	dec (ix+#06)
	jr nz,la4ce
	ld a,(ix+#07)
	ld (ix+#06),a
	ld a,(iy+#01)
	inc a
	jr z,la4ce
	inc iy
	push iy
	pop de
	ld (ix+#04),e
	ld (ix+#05),d
.la4ce
	ld b,(iy+#00)
	ret
.la4d8 equ $ + 6
.la4d6 equ $ + 4
.la4d4 equ $ + 2
.la4d3 equ $ + 1
.la4d2
	db #00,#00,#00,#00,#00,#00,#00,#00
.la4df equ $ + 5
.la4de equ $ + 4
.la4dd equ $ + 3
.la4dc equ $ + 2
.la4db equ $ + 1
	db #00,#38,#00,#00,#00,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
.la4eb equ $ + 1
.la4ea
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la508 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#f2,#01
	db #00,#00,#00,#00,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#aa,#0c
.la526 equ $ + 4
	db #b6,#0c,#c2,#0c,#ce,#0c,#da,#0c
	db #16,#0d,#00,#00,#00,#00,#fe,#01
	db #72,#0c,#5e,#02,#d4,#03,#24,#08
	db #00,#00,#9a,#0c,#00,#00,#00,#00
.la544 equ $ + 2
	db #9e,#00,#00,#00
	dw #0e29,#0d5d,#0c9c,#0be7
	dw #0b3c,#0a9b,#0a02,#0973
	dw #08eb,#086b,#07f2,#0780
	dw #0714,#06ae,#064e,#05f4
	dw #059e,#054d,#0501,#04b9
	dw #0475,#0435,#03f9,#03c0
	dw #038a,#0357,#0327,#02fa
	dw #02cf,#02a7,#0281,#025d
	dw #023b,#021b,#01fc,#01e0
	dw #01c5,#01ac,#0194,#017d
	dw #0168,#0153,#0140,#012e
	dw #011d,#010d,#00fe,#00f0
	dw #00e2,#00d6,#00ca,#00be
	dw #00b4,#00aa,#00a0,#0097
	dw #008f,#0087,#007f,#0078
	dw #0071,#006b,#0065,#005f
	dw #005a,#0055,#0050,#004c
	dw #0047,#0043,#0040,#003c
	dw #0039,#0035,#0032,#0030
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010,#000f
.la606
	dw la622,la628,la634,la63a
	dw la640,la646,la64d,la656
	dw la65f,la667,la66d,la675
	dw la67b,la683
.la628 equ $ + 6
.la622
	db #01,#00,#00,#00,#00,#ff,#01,#0c
	db #00,#00,#00,#07,#00,#00,#04,#00
.la634 equ $ + 2
	db #00,#ff,#01,#0c,#16,#0f,#18,#ff
.la640 equ $ + 6
.la63a
	db #01,#0c,#15,#11,#18,#ff,#01,#0c
.la646 equ $ + 4
	db #14,#0f,#18,#ff,#01,#0c,#15,#0f
.la64d equ $ + 3
	db #0f,#18,#ff,#01,#18,#0c,#00,#00
.la656 equ $ + 4
	db #00,#00,#00,#ff,#01,#0c,#00,#00
.la65f equ $ + 5
	db #0c,#00,#00,#00,#ff,#01,#0c,#00
.la667 equ $ + 5
	db #0c,#00,#00,#0c,#ff,#01,#00,#05
.la66d equ $ + 3
	db #08,#0c,#ff,#01,#0c,#07,#18,#00
.la675 equ $ + 3
	db #0c,#07,#ff,#01,#00,#04,#07,#0c
.la67b equ $ + 1
	db #ff,#01,#0c,#07,#03,#00,#0c,#07
.la683 equ $ + 1
	db #ff,#01,#00,#05,#09,#0c,#ff
.la689
	dw la6ab,la6b2,la6bf,la6c7
	dw la6d6,la6e0,la6e8,la6fd
	dw la70c,la71d,la729,la735
	dw la746,la753,la75e,la773
	dw la77d
.la6b2 equ $ + 7
.la6ab
	db #00,#04,#00,#00,#00,#00,#ff,#01
	db #04,#00,#00,#00,#0f,#0e,#0d,#0c
.la6bf equ $ + 4
	db #0c,#0b,#25,#ff,#02,#04,#00,#00
.la6c7 equ $ + 4
	db #00,#0b,#07,#ff,#03,#03,#00,#00
	db #00,#0f,#0e,#0d,#0c,#0b,#0a,#09
.la6d6 equ $ + 3
	db #08,#07,#ff,#04,#04,#00,#00,#00
.la6e0 equ $ + 5
	db #0e,#0f,#0c,#0a,#ff,#05,#04,#00
.la6e8 equ $ + 5
	db #00,#00,#0c,#07,#ff,#00,#06,#09
	db #10,#07,#0e,#0e,#0d,#0d,#0c,#09
	db #09,#08,#07,#06,#05,#04,#03,#02
.la6fd equ $ + 2
	db #01,#ff,#00,#0a,#09,#10,#15,#0e
	db #0f,#0f,#0e,#0e,#0b,#0a,#09,#08
.la70c equ $ + 1
	db #ff,#01,#0e,#08,#10,#08,#0f,#0c
	db #0e,#0f,#0f,#0e,#0e,#0d,#0c,#0b
.la71d equ $ + 2
	db #0a,#ff,#00,#04,#09,#10,#14,#0f
.la729 equ $ + 6
	db #0f,#0e,#0d,#0c,#0b,#ff,#0a,#04
	db #00,#00,#00,#0f,#0f,#0e,#0d,#09
.la735 equ $ + 2
	db #08,#ff,#07,#0a,#02,#08,#0f,#0c
	db #0a,#0e,#0f,#0f,#0e,#0e,#0d,#0c
.la746 equ $ + 3
	db #0b,#0a,#ff,#06,#03,#00,#00,#00
	db #0f,#0f,#0e,#0c,#0c,#0b,#0a,#ff
.la753
	db #0b,#04,#00,#00,#00,#09,#08,#07
.la75e equ $ + 3
	db #06,#05,#ff,#0c,#02,#00,#00,#00
	db #0f,#0f,#0e,#0c,#0a,#0a,#0a,#09
	db #09,#09,#09,#08,#08,#07,#07,#ff
.la773
	db #0d,#03,#00,#00,#00,#0e,#0c,#09
.la77d equ $ + 2
	db #08,#ff,#01,#0c,#00,#00,#00,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#ff
.la799 equ $ + 6
.la793
	dw la7b1,la7bd,la7c9,la7d8
	dw la8db,la812,la824,la7e0
	dw la859,la7f0,la8fb,la8aa
	dw la8b8,la7dc,la920
.la7b1
	db #cc,#01,#01,#01,#01,#01,#d8,#07
.la7bd equ $ + 4
	db #07,#cc,#0b,#fe,#c0,#02,#cc,#03
	db #05,#c0,#07,#cc,#09,#c0,#0b,#fe
.la7c9
	db #cc,#04,#c0,#06,#02,#06,#00,#02
.la7d8 equ $ + 7
	db #0a,#02,#cc,#08,#b4,#0b,#fe,#c0
.la7e0 equ $ + 7
.la7dc equ $ + 3
	db #83,#00,#ff,#c0,#88,#00,#ff,#c0
	db #8b,#00,#00,#00,#00,#00,#00,#00
.la7f0 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#ff,#c0
	db #8a,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#c0
	db #8a,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la812 equ $ + 1
	db #ff,#c3,#88,#32,#9a,#00,#88,#30
	db #9c,#00,#88,#2f,#9a,#00,#88,#30
.la824 equ $ + 3
	db #9c,#00,#ff,#c7,#84,#30,#92,#32
	db #84,#30,#32,#a4,#35,#88,#37,#84
	db #35,#96,#32,#88,#37,#84,#35,#32
	db #88,#30,#8a,#32,#92,#32,#88,#39
	db #84,#37,#35,#88,#32,#84,#34,#88
	db #30,#30,#84,#2d,#2b,#2d,#88,#2f
	db #32,#2f,#30,#34,#37,#8c,#3c,#ff
.la859
	db #c7,#84,#30,#8c,#32,#84,#35,#8c
	db #32,#84,#30,#92,#32,#84,#32,#30
	db #2d,#2f,#8c,#32,#84,#35,#8c,#32
	db #84,#30,#8d,#32,#81,#30,#32,#30
	db #32,#30,#32,#30,#32,#84,#30,#8c
	db #32,#84,#35,#8c,#32,#84,#37,#92
	db #32,#84,#32,#30,#2d,#2f,#8c,#32
	db #84,#35,#8c,#32,#84,#37,#35,#32
	db #30,#c8,#81,#2b,#2d,#30,#32,#35
	db #37,#39,#3c,#3e,#41,#00,#00,#00
.la8aa equ $ + 1
	db #ff,#c7,#a3,#32,#35,#a0,#37,#88
.la8b8 equ $ + 7
	db #32,#9c,#35,#84,#34,#32,#ff,#cd
	db #84,#4a,#4a,#4a,#4a,#4a,#4a,#4a
	db #4a,#4c,#4c,#4c,#4c,#4c,#4c,#4c
	db #4c,#4f,#4f,#4f,#4f,#4f,#4f,#4a
	db #4a,#4d,#4d,#4d,#4d,#4c,#4c,#4c
.la8db equ $ + 2
	db #4c,#ff,#c8,#84,#1a,#88,#1a,#1a
	db #1d,#84,#1a,#18,#88,#18,#18,#1a
	db #84,#15,#17,#88,#17,#17,#1a,#84
	db #17,#18,#88,#18,#18,#84,#1d,#1c
.la8fb equ $ + 2
	db #1d,#ff,#cb,#84,#21,#1a,#1f,#1a
	db #1d,#1a,#1a,#86,#1f,#84,#18,#1d
	db #18,#1c,#1c,#18,#86,#1f,#84,#16
	db #1d,#16,#1a,#16,#1f,#16,#1d,#18
.la920 equ $ + 7
	db #1c,#18,#1d,#18,#1f,#18,#ff,#d0
.la924 equ $ + 3
	db #bf,#32,#ff,#00

.la925	; test player music !
	pop af
	call #bb03
	ld a,#01
	ld (la1bb),a
.la92e
	ld b,#f5
.la930
	in a,(c)
	rra
	jr nc,la930
	di
	ld b,#00
.la938
	nop
	nop
	nop
	nop
	nop
	nop
	djnz la938
	ld bc,#7f10
	ld a,#40
	call la238
	ld bc,#7f10
	ld a,#54
	ei
	call #bb09
	push af
	ld a,(la1bc)
	or a
	jr z,la925
	pop af
	jr nc,la92e
	cp #31
	jr z,la96d
	cp #32
	jr z,la96d
	cp #33
	jr z,la96d
	cp #34
	jr z,la96d
	jr la92e
.la96d
	ld (la924),a
	ld a,#ff
	ld (la1bb),a
	call la238
	ret

; org #a929
; ld a,#01
; ld (#a1bb),a	; init theme 1

;
.music_info
	db "Super Tank Simulator (1989)(Codemasters Software)(Steve Barrett)",0
	db "",0

	read "music_end.asm"
