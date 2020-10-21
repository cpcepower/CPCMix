; Music of Night Breed (1990)(Ocean Software)()()
; Ripped by Megachur the 14/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "NIGHTBRE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #043f

	read "music_header.asm"
	
.l043f
	db #01
;
.music_interrupt
;
	push af
	push hl
	ld hl,l043f
	dec (hl)
	jr nz,l0465
	ld (hl),#06
	push bc
	push de
	push ix
	push iy
	exx
	ex af,af'
	push af
	push hl
	push bc
	push de
	call l0491
	pop de
	pop bc
	pop hl
	pop af
	ex af,af'
	exx
	pop iy
	pop ix
	pop de
	pop bc
.l0465
	pop hl
	pop af
	ei
	reti
.l0470 equ $ + 6
.l046f equ $ + 5
.l046e equ $ + 4
.l046d equ $ + 3
.l046c equ $ + 2
.l046b equ $ + 1
.l046a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0479 equ $ + 7
.l0474 equ $ + 2
.l0472
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0481 equ $ + 7
.l0480 equ $ + 6
.l047f equ $ + 5
.l047d equ $ + 3
.l047b equ $ + 1
.l047a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0489 equ $ + 7
.l0487 equ $ + 5
.l0486 equ $ + 4
.l0485 equ $ + 3
.l0483 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l048f equ $ + 5
.l048d equ $ + 3
.l048b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00
;
.play_music
.l0491
;
	call l082d
	ld ix,l046a
	call l04b5
	call l0671
	inc ix
	inc ix
	call l0551
	call l06c0
	inc ix
	inc ix
	call l05e1
	call l0710
	jp l083b
.l04b5
	ld hl,l0849
	dec (hl)
	ret nz
	ld a,(l047a)
	ld (l0479),a
	ld hl,(l047d)
	ld (l047b),hl
	ld de,(l0854)
	ld a,(de)
	cp #ff
	jp nz,l0500
	ld hl,l046b
	dec (hl)
	jp m,l04dd
	ld de,(l0470)
	jr l04ff
.l04dd
	ld hl,(l084c)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l046a),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0470),de
	ld (l084c),hl
	inc de
	ld a,d
	or e
	jp nz,l04fe
	call l07da
	jr l04b5
.l04fe
	dec de
.l04ff
	ld a,(de)
.l0500
	bit 7,a
	jr z,l0532
	bit 0,a
	jr nz,l0522
	and #7f
	add a
	ld c,a
	ld b,#00
	ld hl,l08fd
	add hl,bc
	ld a,(hl)
	ld (l047a),a
	ld (l0479),a
	inc hl
	ld (l047d),hl
	ld (l047b),hl
	jr l052e
.l0522
	and #70
	ld c,a
	ld b,#00
	ld hl,l087d
	add hl,bc
	ld (l048b),hl
.l052e
	inc de
	ld a,(de)
	jr l0500
.l0532
	ld (l084b),a
	inc de
	ld a,(de)
	ld (l0849),a
	inc de
	ld (l0854),de
	ld hl,#0000
	ld (l0850),hl
	ld a,#01
	ld (l084a),a
	ld hl,(l048b)
	ld (l084e),hl
	ret
.l0551
	ld hl,l0856
	dec (hl)
	ret nz
	ld a,(l0480)
	ld (l047f),a
	ld hl,(l0483)
	ld (l0481),hl
	ld de,(l0867)
	ld a,(de)
	cp #ff
	jp nz,l0590
	ld hl,l046d
	dec (hl)
	jp m,l0579
	ld de,(l0472)
	jr l058f
.l0579
	ld hl,(l085f)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l046c),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0472),de
	ld (l085f),hl
.l058f
	ld a,(de)
.l0590
	bit 7,a
	jr z,l05c2
	bit 0,a
	jr nz,l05b2
	and #7f
	add a
	ld c,a
	ld b,#00
	ld hl,l08fd
	add hl,bc
	ld a,(hl)
	ld (l0480),a
	ld (l047f),a
	inc hl
	ld (l0483),hl
	ld (l0481),hl
	jr l05be
.l05b2
	and #70
	ld c,a
	ld b,#00
	ld hl,l087d
	add hl,bc
	ld (l048d),hl
.l05be
	inc de
	ld a,(de)
	jr l0590
.l05c2
	ld (l0859),a
	inc de
	ld a,(de)
	ld (l0856),a
	inc de
	ld (l0867),de
	ld hl,#0000
	ld (l0863),hl
	ld a,#01
	ld (l0857),a
	ld hl,(l048d)
	ld (l0861),hl
	ret
.l05e1
	ld hl,l0869
	dec (hl)
	ret nz
	ld a,(l0486)
	ld (l0485),a
	ld hl,(l0489)
	ld (l0487),hl
	ld de,(l087a)
	ld a,(de)
	cp #ff
	jp nz,l0620
	ld hl,l046f
	dec (hl)
	jp m,l0609
	ld de,(l0474)
	jr l061f
.l0609
	ld hl,(l0872)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l046e),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0474),de
	ld (l0872),hl
.l061f
	ld a,(de)
.l0620
	bit 7,a
	jr z,l0652
	bit 0,a
	jr nz,l0642
	and #7f
	add a
	ld c,a
	ld b,#00
	ld hl,l08fd
	add hl,bc
	ld a,(hl)
	ld (l0486),a
	ld (l0485),a
	inc hl
	ld (l0489),hl
	ld (l0487),hl
	jr l064e
.l0642
	and #70
	ld c,a
	ld b,#00
	ld hl,l087d
	add hl,bc
	ld (l048f),hl
.l064e
	inc de
	ld a,(de)
	jr l0620
.l0652
	ld (l086c),a
	inc de
	ld a,(de)
	ld (l0869),a
	inc de
	ld (l087a),de
	ld hl,#0000
	ld (l0876),hl
	ld a,#01
	ld (l086a),a
	ld hl,(l048f)
	ld (l0874),hl
	ret
.l0671
	ld hl,l084a
	dec (hl)
	ld bc,(l0852)
	jp nz,l068f
	ld hl,(l084e)
	ld a,(hl)
	ld (l084a),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l084e),hl
	ld (l0852),bc
.l068f
	ld hl,(l0850)
	ld a,h
	ex af,af'
	add hl,bc
	ld (l0850),hl
	ld d,h
	ld hl,l0479
	dec (hl)
	ld hl,(l047b)
	jr nz,l06b3
	ld a,(l047a)
	ld (l0479),a
	inc hl
	bit 7,(hl)
	jr z,l06b0
	ld hl,(l047d)
.l06b0
	ld (l047b),hl
.l06b3
	ld a,(l084b)
	add (hl)
	call l0760
	xor a
	ld e,#08
	jp l0772
.l06c0
	ld hl,l0857
	dec (hl)
	ld bc,(l0865)
	jp nz,l06de
	ld hl,(l0861)
	ld a,(hl)
	ld (l0857),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l0861),hl
	ld (l0865),bc
.l06de
	ld hl,(l0863)
	ld a,h
	ex af,af'
	add hl,bc
	ld (l0863),hl
	ld d,h
	ld hl,l047f
	dec (hl)
	ld hl,(l0481)
	jr nz,l0702
	ld a,(l0480)
	ld (l047f),a
	inc hl
	bit 7,(hl)
	jr z,l06ff
	ld hl,(l0483)
.l06ff
	ld (l0481),hl
.l0702
	ld a,(l0859)
	add (hl)
	call l0760
	ld a,#02
	ld e,#09
	jp l0772
.l0710
	ld hl,l086a
	dec (hl)
	ld bc,(l0878)
	jp nz,l072e
	ld hl,(l0874)
	ld a,(hl)
	ld (l086a),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l0874),hl
	ld (l0878),bc
.l072e
	ld hl,(l0876)
	ld a,h
	ex af,af'
	add hl,bc
	ld (l0876),hl
	ld d,h
	ld hl,l0485
	dec (hl)
	ld hl,(l0487)
	jr nz,l0752
	ld a,(l0486)
	ld (l0485),a
	inc hl
	bit 7,(hl)
	jr z,l074f
	ld hl,(l0489)
.l074f
	ld (l0487),hl
.l0752
	ld a,(l086c)
	add (hl)
	call l0760
	ld a,#04
	ld e,#0a
	jp l0772
.l0760
	add (ix+#00)
	add a
	ld hl,l0e1e
	add l
	ld l,a
	jp nc,l076d
	inc h
.l076d
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ret
.l0772
	ld b,#f4
	out (c),a
	exx
	out (c),c
	out (c),e
	exx
	out (c),l
	exx
	out (c),d
	out (c),e
	exx
	inc a
	out (c),a
	exx
	out (c),c
	out (c),e
	exx
	out (c),h
	exx
	out (c),d
	out (c),e
	exx
	out (c),e
	exx
	out (c),c
	out (c),e
	exx
	out (c),d
	exx
	out (c),d
	out (c),e
	exx
	ret
.l07a6
	ld b,#f4
	out (c),a
	exx
	out (c),c
	out (c),e
	exx
	out (c),d
	exx
	out (c),d
	out (c),e
	exx
	ret
;
.init_music
;
	call l082d
	ld a,#07
	ld d,#38
	call l07a6
	ld a,#0b
	ld d,#11
	call l07a6
	inc a
	ld d,#00
	call l07a6
	ld a,#0d
	ld d,#08
	call l07a6
	call l083b
.l07da
	ld hl,l0ab9
	ld (l0854),hl
	ld (l0867),hl
	ld (l087a),hl
	ld hl,l09b1
	ld (l084c),hl
	ld hl,l0a01
	ld (l085f),hl
	ld hl,l0a4d
	ld (l0872),hl
	ld hl,l08fe
	ld (l047d),hl
	ld (l0483),hl
	ld (l0489),hl
	xor a
	ld (l046b),a
	ld (l046d),a
	ld (l046f),a
	inc a
	ld (l0849),a
	ld (l0856),a
	ld (l0869),a
	ret
;
.stop_music
;
	call l082d
	ld a,#08
	ld d,#00
	call l07a6
	inc a
	call l07a6
	inc a
	call l07a6
	jr l083b
.l082d
	ld bc,#f782
	out (c),c
	exx
	ld bc,#f6c0
	ld de,#8000
	exx
	ret
.l083b
	ld bc,#f40e
	out (c),c
	ld bc,#f6c0
	out (c),c
	xor a
	out (c),a
	ret
.l0849
	db #00
.l0850 equ $ + 6
.l084e equ $ + 4
.l084c equ $ + 2
.l084b equ $ + 1
.l084a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0859 equ $ + 7
.l0857 equ $ + 5
.l0856 equ $ + 4
.l0854 equ $ + 2
.l0852
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0861 equ $ + 7
.l085f equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0869 equ $ + 7
.l0867 equ $ + 5
.l0865 equ $ + 3
.l0863 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l086c equ $ + 2
.l086a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0878 equ $ + 6
.l0876 equ $ + 4
.l0874 equ $ + 2
.l0872
	db #00,#00,#00,#00,#00,#00,#00,#00
.l087d equ $ + 3
.l087a
	db #00,#00,#00,#01,#00,#0f,#08,#20
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#0e,#0e,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#0e,#1c,#80
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#0e,#70,#e0
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#0d,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#48,#0d,#c8,#f4
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#10,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l08fe equ $ + 4
.l08fd equ $ + 3
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#00,#00,#01
	db #18,#0c,#00,#ff,#00,#00,#00,#00
	db #00,#00,#00,#01,#13,#07,#10,#04
	db #0c,#ff,#00,#00,#00,#00,#00,#01
	db #18,#0c,#13,#07,#10,#04,#ff,#00
	db #00,#00,#00,#01,#1c,#10,#18,#0c
	db #13,#07,#ff,#00,#00,#00,#00,#01
	db #13,#07,#0f,#03,#0c,#00,#ff,#00
	db #00,#00,#00,#01,#18,#0c,#13,#07
	db #0f,#03,#ff,#00,#00,#00,#00,#01
	db #1b,#0f,#18,#0c,#13,#07,#ff,#00
	db #00,#00,#00,#01,#13,#07,#11,#05
	db #0c,#00,#ff,#00,#00,#00,#00,#01
	db #18,#0c,#13,#07,#13,#07,#11,#05
	db #ff,#00,#00,#01,#1d,#11,#18,#0c
	db #13,#07,#ff,#00,#00,#00,#00,#01
	db #13,#07,#10,#04,#0e,#02,#0c,#00
	db #ff,#00,#00,#03,#13,#0f,#0c,#00
	db #03,#07,#ff,#00,#00,#00,#00,#06
	db #13,#0c,#0f,#00,#07,#03,#ff,#00
	db #00,#00,#00,#01,#18,#0c,#14,#08
.l09b1 equ $ + 7
	db #10,#04,#ff,#00,#00,#00,#00,#00
	db #00,#9d,#0a,#00,#00,#9d,#0a,#03
	db #02,#a1,#0a,#02,#00,#a1,#0a,#03
	db #01,#a1,#0a,#05,#01,#a1,#0a,#00
	db #11,#d8,#0b,#00,#01,#09,#0b,#00
	db #01,#d8,#0b,#00,#00,#22,#0b,#00
	db #01,#d8,#0b,#00,#01,#09,#0b,#00
	db #00,#5c,#0c,#00,#00,#ba,#0a,#07
	db #05,#a1,#0a,#09,#01,#a1,#0a,#07
	db #05,#a1,#0a,#09,#01,#a1,#0a,#0e
.l0a01 equ $ + 7
	db #0f,#a1,#0a,#00,#00,#ff,#ff,#00
	db #00,#52,#0b,#00,#00,#a6,#0b,#00
	db #09,#f1,#0b,#04,#01,#f1,#0b,#00
	db #01,#f1,#0b,#fe,#01,#f1,#0b,#00
	db #01,#f1,#0b,#04,#01,#f1,#0b,#05
	db #00,#f1,#0b,#07,#00,#f1,#0b,#00
	db #00,#f1,#0b,#05,#00,#f1,#0b,#00
	db #00,#11,#0d,#00,#03,#ea,#0c,#02
	db #03,#3c,#0d,#05,#01,#3c,#0d,#fd
	db #00,#3c,#0d,#01,#00,#3c,#0d,#00
.l0a4d equ $ + 3
	db #13,#9d,#0a,#0c,#00,#71,#0b,#0c
	db #00,#8f,#0b,#00,#00,#be,#0b,#00
	db #07,#e4,#0a,#00,#00,#09,#0c,#00
	db #01,#58,#0d,#00,#00,#9a,#0d,#00
	db #00,#dc,#0d,#00,#01,#58,#0d,#00
	db #00,#9a,#0d,#00,#00,#dc,#0d,#02
	db #05,#e4,#0a,#00,#01,#c3,#0c,#02
	db #05,#e4,#0a,#00,#01,#c3,#0c,#00
	db #03,#03,#0d,#00,#00,#18,#0d,#00
	db #03,#03,#0d,#00,#00,#18,#0d,#00
	db #13,#9d,#0a,#e1,#07,#60,#ff,#81
	db #86,#07,#0c,#1f,#06,#1f,#06,#07
	db #0c,#07,#0c,#1f,#06,#1f,#06,#07
.l0ab9 equ $ + 7
	db #0c,#07,#06,#07,#06,#07,#0c,#ff
	db #d1,#9e,#1a,#c0,#1a,#c0,#8c,#1d
	db #c0,#98,#15,#c0,#a4,#1a,#a8,#e1
	db #07,#18,#d1,#1a,#a8,#e1,#07,#18
	db #d1,#92,#1d,#a8,#e1,#07,#18,#d1
	db #d4,#21,#60,#92,#21,#30,#e1,#07
	db #30,#ff,#d1,#a4,#0c,#06,#18,#06
	db #18,#06,#18,#06,#24,#06,#18,#06
	db #18,#06,#80,#3c,#06,#47,#06,#30
	db #06,#a4,#18,#06,#18,#06,#24,#06
	db #18,#06,#24,#06,#24,#06,#ff,#a1
	db #9e,#07,#0c,#28,#06,#28,#06,#07
	db #0c,#07,#0c,#28,#06,#28,#06,#28
	db #0c,#07,#06,#07,#06,#07,#0c,#ff
	db #91,#b0,#07,#0c,#22,#06,#22,#06
	db #07,#0c,#07,#0c,#22,#06,#22,#06
	db #22,#0c,#07,#06,#07,#06,#07,#0c
	db #8c,#07,#0c,#22,#06,#22,#06,#07
	db #0c,#07,#0c,#22,#06,#22,#06,#22
	db #0c,#07,#06,#07,#06,#07,#0c,#ff
	db #c1,#02,#c0,#b1,#13,#12,#11,#12
	db #13,#3c,#0f,#60,#0c,#48,#0a,#18
	db #05,#60,#13,#12,#11,#12,#13,#3c
	db #0f,#60,#08,#60,#0c,#60,#ff,#c1
	db #98,#1a,#c0,#b1,#a4,#1f,#12,#92
	db #1d,#12,#a4,#1f,#3c,#92,#1b,#60
	db #aa,#18,#48,#98,#16,#18,#b0,#1d
	db #30,#8c,#1d,#30,#ff,#b1,#a4,#1f
	db #12,#92,#1d,#12,#a4,#1f,#3c,#92
	db #1b,#60,#92,#14,#60,#98,#14,#30
	db #92,#18,#30,#ff,#b1,#0f,#a8,#e1
	db #07,#18,#b1,#0f,#a8,#e1,#07,#18
	db #b1,#0f,#a8,#e1,#07,#18,#b1,#0f
	db #90,#0c,#30,#ff,#d1,#aa,#18,#60
	db #e1,#07,#60,#d1,#18,#60,#e1,#07
	db #60,#d1,#18,#60,#e1,#07,#60,#d1
	db #18,#60,#e1,#07,#60,#ff,#91,#a4
	db #07,#0c,#24,#06,#24,#06,#07,#0c
	db #07,#0c,#24,#06,#24,#06,#24,#0c
	db #07,#06,#07,#06,#07,#0c,#ff,#a1
	db #0c,#12,#0c,#06,#0c,#0c,#0c,#0c
	db #0c,#06,#0c,#06,#0c,#0c,#0c,#06
	db #0c,#06,#0c,#06,#0a,#06,#ff,#b1
	db #24,#60,#2b,#24,#29,#24,#27,#18
	db #28,#60,#23,#60,#24,#60,#2b,#24
	db #29,#24,#27,#18,#27,#48,#1d,#0c
	db #22,#6c,#24,#60,#2b,#24,#29,#24
	db #27,#18,#28,#60,#2f,#60,#2d,#48
	db #2f,#06,#2d,#06,#2f,#06,#30,#06
	db #32,#60,#35,#0c,#34,#0c,#e1,#07
	db #0c,#b1,#35,#0c,#34,#0c,#e1,#07
	db #0c,#b1,#34,#0c,#35,#60,#e1,#07
	db #0c,#b1,#35,#06,#e1,#07,#c0,#07
	db #ba,#ff,#a1,#8c,#07,#0c,#29,#06
	db #29,#06,#07,#0c,#07,#0c,#29,#06
	db #29,#06,#29,#0c,#07,#06,#07,#06
	db #07,#0c,#07,#0c,#2b,#06,#2b,#06
	db #07,#0c,#07,#0c,#2b,#06,#2b,#06
	db #2b,#0c,#07,#06,#07,#06,#07,#0c
	db #98,#07,#0c,#24,#06,#24,#06,#07
	db #0c,#07,#0c,#24,#06,#24,#06,#24
	db #0c,#07,#06,#07,#06,#07,#0c,#92
	db #07,#0c,#29,#06,#29,#06,#07,#0c
	db #07,#0c,#29,#06,#29,#06,#29,#0c
	db #07,#06,#07,#06,#07,#06,#07,#06
	db #d1,#13,#c0,#1f,#90,#e1,#07,#30
	db #ff,#b1,#98,#15,#06,#09,#06,#09
	db #06,#21,#06,#2d,#06,#09,#06,#09
	db #06,#80,#81,#39,#06,#44,#06,#2d
	db #06,#a4,#b1,#09,#06,#09,#06,#2d
	db #06,#09,#06,#09,#06,#21,#06,#ff
	db #d1,#0e,#a8,#0c,#18,#0e,#a8,#09
	db #18,#11,#a8,#10,#18,#15,#48,#e1
	db #07,#18,#d1,#09,#48,#e1,#07,#18
	db #ff,#b1,#9e,#26,#12,#8c,#24,#12
	db #9e,#26,#24,#e1,#07,#18,#ff,#d1
	db #05,#c0,#e1,#07,#c0,#ff,#b1,#98
	db #1d,#12,#8c,#24,#12,#98,#1d,#24
	db #e1,#07,#18,#b1,#1d,#12,#8c,#24
	db #12,#98,#1d,#24,#e1,#07,#18,#b1
	db #d4,#21,#60,#92,#21,#48,#e1,#07
	db #18,#ff,#d1,#0c,#12,#0c,#06,#0c
	db #0c,#0c,#0c,#0c,#06,#0c,#06,#0c
	db #0c,#0c,#06,#0c,#06,#0c,#06,#0a
	db #06,#ff,#e1,#07,#c0,#ff,#81,#3e
	db #06,#30,#06,#39,#06,#3e,#06,#30
	db #06,#2d,#06,#3e,#06,#30,#06,#3e
	db #06,#30,#06,#3e,#06,#39,#06,#3e
	db #06,#30,#06,#2d,#06,#32,#06,#3e
	db #06,#30,#06,#39,#06,#3e,#06,#30
	db #06,#2d,#06,#3e,#06,#30,#06,#3e
	db #06,#30,#06,#3e,#06,#39,#06,#3e
	db #06,#30,#06,#2d,#06,#32,#06,#ff
	db #81,#41,#06,#2d,#06,#30,#06,#41
	db #06,#30,#06,#2d,#06,#41,#06,#2d
	db #06,#41,#06,#2d,#06,#41,#06,#30
	db #06,#41,#06,#2d,#06,#30,#06,#35
	db #06,#41,#06,#2d,#06,#30,#06,#41
	db #06,#30,#06,#2d,#06,#41,#06,#2d
	db #06,#41,#06,#2d,#06,#41,#06,#30
	db #06,#41,#06,#2d,#06,#30,#06,#35
	db #06,#ff,#81,#41,#06,#2d,#06,#31
	db #06,#41,#06,#31,#06,#2d,#06,#41
	db #06,#2d,#06,#41,#06,#2d,#06,#41
	db #06,#31,#06,#41,#06,#2d,#06,#31
	db #06,#35,#06,#40,#06,#2d,#06,#31
	db #06,#40,#06,#31,#06,#2d,#06,#40
	db #06,#2d,#06,#40,#06,#2d,#06,#40
	db #06,#31,#06,#40,#06,#2d,#06,#31
	db #06,#34,#06,#ff
.l0e1e
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
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
;
.music_info
	db "Night Breed (1990)(Ocean Software)()",0
	db "",0

	read "music_end.asm"
