; Music of Mega Twins (1991)(US Gold)()()
; Ripped by Megachur the 28/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MEGATWIN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #f200
FIRST_THEME				equ 1
LAST_THEME				equ 2

	read "music_header.asm"

	jp lf608	; play
	jp lf43a	; init
	jp lf43a
.lf20a equ $ + 1
.lf209
	db #00,#13,#0f,#01,#01,#01,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0a
	db #08,#07,#06,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf22d equ $ + 4
	db #00,#00,#00,#00,#13,#0f,#01,#01
	db #01,#0d,#0d,#0c,#0c,#0b,#0b,#0a
	db #0a,#09,#08,#06,#05,#04,#03,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf250 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#13
	db #09,#01,#01,#01,#0b,#0a,#09,#08
	db #06,#04,#03,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf26e equ $ + 5
	db #00,#00,#00,#00,#00,#13,#09,#01
	db #01,#01,#0f,#0e,#0d,#0c,#0a,#08
	db #03,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf28c equ $ + 3
	db #00,#00,#00,#13,#20,#01,#01,#01
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #05,#05,#05,#05,#05,#03,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#ff,#01,#ff,#01,#ff,#01,#ff
	db #01,#ff,#01,#ff,#01,#ff,#01,#ff
.lf2d1
	db #13,#30,#01,#01,#01,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#09,#09,#09,#09,#08,#08,#08
	db #08,#08,#03,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf336 equ $ + 5
	db #00,#00,#00,#00,#00,#13,#02,#01
.lf33f equ $ + 6
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
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
.lf417
	dw lfae8,lfb15,lfb94,lfc4d
.lf425 equ $ + 6
.lf421 equ $ + 2
	dw lfcff,lfd63,#0000,lf20a
	dw lf22d,lf250,lf26e,lf28c
.lf431 equ $ + 2
	dw lf2d1,lf336,#0000
.lf435
	jp lf622
.lf439 equ $ + 1
.lf438
	db #00,#00
;
.real_init_music
.lf43a
;
	ld (lf438),a
	ld a,c
	ld (lf439),a
	ld a,(lf438)
	ld iy,lfa10
	dec a
	jp m,lf4d6
	call lf4d6
	ld a,#01
	ld (lf209),a
	call lf48c
	ld a,(lf438)
	dec a
	ld e,a
	add a
	add e
	add a
	ld e,a
	ld d,#00
	ld hl,lf417
	add hl,de
	ex de,hl
	ld hl,lf421
	sbc hl,de
	jp c,lf4d6
	ex de,hl
	ld ix,lfa30
	ld b,#03
.lf476
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld (ix+#0a),#01
	ld de,#0018
	add ix,de
	djnz lf476
	ret
.lf48c
	push ix
	ld ix,lfa78
	ld hl,lfa08
	ld a,(lf439)
	ld c,a
	xor a
	ld de,#0018
.lf49d
	dec c
	jp m,lf4a8
	ld (ix+#05),#ff
	ld (hl),#00
	inc hl
.lf4a8
	add ix,de
	inc a
	cp #03
	jr c,lf49d
	pop ix
	ret
	push iy
	push ix
	pop iy
	ld de,#0018
	ld a,(iy+#05)
	cp (ix+#1d)
	jr c,lf4c5
	add iy,de
.lf4c5
	ld a,(iy+#05)
	cp (ix+#35)
	jr c,lf4cf
	add iy,de
.lf4cf
	push iy
	pop ix
	pop iy
	ret
.lf4d6
	ld ix,lfa30
	ld b,#03
	ld hl,lfa18
	ld de,#0018
	ld a,#00
.lf4e4
	ld (hl),a
	inc hl
	ld (ix+#05),a
	ld (ix+#0e),a
	ld (ix+#0f),a
	ld (ix+#13),a
	ld (ix+#14),a
	ld (ix+#06),a
	add ix,de
	djnz lf4e4
	ld (lf209),a
	ret
	ld b,#03
	ld ix,lfa78
	ld hl,lfa08
	ld de,#0018
.lf50c
	ld (hl),#00
	inc hl
	ld a,(ix+#05)
	inc a
	jr z,lf519
	ld (ix+#05),#00
.lf519
	add ix,de
	djnz lf50c
	ret
.lf51e
	ld (ix+#06),#00
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	inc hl
	ld (ix+#07),a
	ld a,(hl)
	inc hl
	ld (ix+#08),a
	ld a,(hl)
	inc hl
	ld (ix+#01),a
	ld a,(hl)
	inc hl
	ld (ix+#02),a
	ld a,(hl)
	ld (ix+#05),a
	ld a,(ix+#07)
	ld c,#00
	rra
	rra
	rra
	rra
	rl c
	sla c
	sla c
	rra
	rl c
	ld b,#09
	ld e,(ix+#00)
.lf557
	dec e
	jp m,lf561
	sla b
	sla c
	jr lf557
.lf561
	ld a,c
	xor b
	ld b,a
	ld a,c
	cpl
	and (iy+#07)
	or b
	ld (iy+#07),a
	ret
.lf56e
	ld b,#03
.lf570
	ld a,(ix+#05)
	and a
	jp z,lf5fe
	inc a
	jp z,lf5fe
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(ix+#06)
	add #05
	ld e,a
	ld d,#00
	add hl,de
	bit 0,(ix+#07)
	jr z,lf5b7
	ld a,(hl)
	cp #ff
	jr nz,lf59b
	ld (ix+#06),#00
	jr lf570
.lf59b
	ld c,a
	ld a,(ix+#00)
	add #08
	ld (lf5a6),a
.lf5a6 equ $ + 2
	ld (iy+#00),c
	ld a,c
	and a
	jr nz,lf5b1
	ld (ix+#05),#00
	jr lf5fe
.lf5b1
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.lf5b7
	bit 1,(ix+#07)
	jr z,lf5f1
	ld e,(hl)
	ld d,#00
	bit 7,e
	jr z,lf5c5
	dec d
.lf5c5
	push hl
	ld l,(ix+#01)
	ld h,(ix+#02)
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	pop hl
	ld a,(ix+#00)
	add a
	ld (lf5e4),a
	inc a
	ld (lf5ea),a
	ld a,(ix+#01)
.lf5e4 equ $ + 2
	ld (iy+#00),a
	ld a,(ix+#02)
.lf5ea equ $ + 2
	ld (iy+#00),a
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.lf5f1
	bit 2,(ix+#07)
	jr z,lf5fb
	ld a,(hl)
	ld (iy+#06),a
.lf5fb
	inc (ix+#06)
.lf5fe
	ld de,#0018
	add ix,de
	dec b
	jp nz,lf570
	ret
;
.play_music
.lf608
;
	call lf79d
	ld a,#ff
	ld (lfa06),a
	ld (lfa16),a
	ld iy,lfa10
	ld ix,lfa30
	call lf56e
	call lf642
	ret
.lf622
	ld a,e
	ld c,d
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
.lf642
	ld iy,lfa00
	ld ix,lfa30
	ld e,#00
	call lf6cb
	ld e,#01
	call lf6cb
	ld e,#08
	call lf6cb
	ld bc,#0018
	add ix,bc
	ld e,#02
	call lf6cb
	ld e,#03
	call lf6cb
	ld e,#09
	call lf6cb
	ld bc,#0018
	add ix,bc
	ld e,#04
	call lf6cb
	ld e,#05
	call lf6cb
	ld e,#0a
	call lf6cb
	ld e,#06
	ld a,(iy+#06)
	cp #ff
	jr nz,lf691
	ld a,(iy+#16)
	cp #ff
	jr z,lf695
.lf691
	ld d,a
	call lf435
.lf695
	ld ix,lfa30
	ld b,#03
	ld c,#09
	ld h,#00
	ld de,#0018
.lf6a2
	ld l,(iy+#17)
	ld a,(ix+#4d)
	and a
	jr z,lf6b3
	inc a
	jr z,lf6b3
	ld l,(iy+#07)
	jr lf6bb
.lf6b3
	ld a,(ix+#05)
	and a
	jr nz,lf6bb
	ld l,#ff
.lf6bb
	ld a,l
	and c
	sla c
	or h
	ld h,a
	add ix,de
	djnz lf6a2
	ld d,h
	ld e,#07
	jp lf435
.lf6cb
	ld a,e
	ld (lf6e2),a
	add #10
	ld (lf6d6),a
.lf6d6 equ $ + 2
	ld d,(iy+#00)
	ld a,(ix+#4d)
	and a
	jr z,lf6e3
	inc a
	jr z,lf6e3
.lf6e2 equ $ + 2
	ld d,(iy+#00)
.lf6e3
	jp lf435
.lf6e6
	push ix
	pop iy
	ld a,(ix+#13)
	and a
	jr z,lf6f5
	ld de,#0006
	add iy,de
.lf6f5
	ld l,(iy+#0c)
	ld h,(iy+#0d)
	ld e,(iy+#0e)
	ld d,#00
	add hl,de
	bit 7,(hl)
	jr nz,lf70c
	inc (iy+#0e)
	inc (iy+#0e)
	ret
.lf70c
	ld a,(hl)
	cp #94
	jp z,lf752
	cp #95
	jp z,lf763
	cp #ff
	jp z,lf786
	cp #fe
	jp z,lf795
	res 7,a
	add a
	ld e,a
	ld d,#00
	ld hl,lf425
	add hl,de
	ex de,hl
	ld hl,lf431
	sbc hl,de
	jr nc,lf736
	ld de,lf425
.lf736
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	push bc
	push iy
	ld iy,lfa10
	call lf51e
	ld (ix+#09),#ff
	pop iy
	pop bc
	inc (iy+#0e)
	jp lf6e6
.lf752
	ld (iy+#0e),#00
	dec (ix+#0b)
	jp nz,lf6e6
	ld (ix+#13),#00
	jp lf6e6
.lf763
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	inc hl
	ld a,(hl)
	ld (ix+#17),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld a,(hl)
	ld (ix+#13),a
	ld a,(ix+#0e)
	add #05
	ld (ix+#0e),a
	ld (ix+#14),#00
	jp lf6e6
.lf786
	pop bc
	pop bc
	ld a,(lf439)
	ld c,a
	ld a,(lf438)
	call lf43a
	jp lf608
.lf795
	pop bc
	pop bc
	call lf4d6
	jp lf608
.lf79d
	ld a,(lf209)
	and a
	ret z
	ld ix,lfa30
	ld b,#03
.lf7a8
	dec (ix+#0a)
	jr nz,lf7dc
	call lf6e6
	ld a,(hl)
	and a
	jr z,lf7b7
	add (iy+#11)
.lf7b7
	add #04
	add a
	ld e,a
	ld d,#00
	ld iy,lf33f
	add iy,de
	ld e,(iy+#00)
	ld d,(iy+#01)
	ld (ix+#02),d
	ld (ix+#01),e
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	ld (ix+#06),#00
	ld (ix+#05),#01
.lf7dc
	ld de,#0018
	add ix,de
	djnz lf7a8
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #f0,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#f0,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lfa00 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.lfa08 equ $ + 4
.lfa06 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.lfa10 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.lfa18 equ $ + 4
.lfa16 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lfa30 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lfa78 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#1c,#10,#21,#10
	db #1c,#10,#23,#10,#1c,#10,#25,#10
	db #94,#34,#05,#34,#05,#34,#06,#94
	db #3d,#05,#3e,#06,#3d,#05,#94,#49
	db #05,#4a,#05,#49,#06,#47,#05,#49
.lfae8 equ $ + 4
	db #06,#4a,#05,#94,#80
	db #95,#01,#00,#c0,#fa,#1c,#10,#28
	db #10,#95,#01,#00,#c0,#fa,#1c,#10
	db #21,#10,#95,#01,#00,#c0,#fa,#1c
	db #10,#28,#11,#25,#10,#26,#10,#25
	db #10,#23,#10,#21,#10,#20,#10,#28
.lfb15 equ $ + 4
	db #20,#1c,#01,#ff,#81,#95,#01,#00
	db #cd,#fa,#39,#10,#95,#01,#00,#cd
	db #fa,#3b,#10,#95,#01,#00,#cd,#fa
	db #95,#01,#00,#d4,#fa,#3b,#05,#3d
	db #05,#3b,#06,#40,#10,#95,#01,#00
	db #cd,#fa,#39,#10,#95,#01,#00,#cd
	db #fa,#3b,#11,#95,#01,#00,#cd,#fa
	db #95,#01,#00,#d4,#fa,#3b,#05,#39
	db #05,#3b,#06,#39,#10,#95,#01,#00
	db #cd,#fa,#39,#10,#95,#01,#00,#cd
	db #fa,#3b,#11,#95,#01,#00,#cd,#fa
	db #95,#01,#00,#d4,#fa,#3b,#06,#3d
	db #05,#3e,#05,#40,#21,#42,#05,#40
	db #05,#3e,#06,#40,#05,#3e,#05,#95
	db #01,#00,#d4,#fa,#3b,#06,#3d,#05
	db #3b,#06,#39,#05,#38,#10,#40,#21
.lfb94 equ $ + 3
	db #34,#01,#ff,#82,#00,#10,#45,#20
	db #95,#01,#00,#db,#fa,#49,#10,#51
	db #30,#45,#20,#95,#01,#00,#db,#fa
	db #49,#10,#45,#30,#45,#20,#95,#01
	db #00,#db,#fa,#49,#10,#51,#30,#4a
	db #05,#4c,#05,#4e,#06,#49,#05,#4a
	db #05,#4c,#06,#47,#05,#49,#05,#4a
	db #06,#45,#05,#47,#06,#49,#05,#44
	db #05,#45,#06,#47,#05,#45,#30,#ff
	db #24,#09,#24,#04,#24,#05,#24,#09
	db #24,#05,#24,#05,#24,#04,#24,#05
	db #24,#04,#24,#05,#24,#09,#24,#05
	db #24,#05,#94,#24,#09,#24,#04,#24
	db #05,#24,#09,#24,#05,#24,#05,#94
	db #43,#2e,#3e,#09,#43,#05,#45,#04
	db #47,#05,#48,#05,#4a,#25,#45,#12
	db #45,#0e,#47,#05,#48,#25,#40,#12
	db #45,#0e,#48,#05,#47,#12,#45,#13
	db #43,#12,#42,#13,#40,#1c,#3f,#04
	db #40,#05,#42,#12,#3b,#13,#43,#1c
	db #42,#04,#43,#05,#45,#12,#48,#13
	db #94,#40,#05,#42,#04,#43,#05,#40
	db #05,#42,#04,#43,#05,#45,#2e,#47
.lfc4d equ $ + 4
	db #05,#48,#04,#94,#83,#95,#01,#07
	db #d9,#fb,#95,#01,#06,#d9,#fb,#95
	db #01,#04,#d9,#fb,#95,#01,#02,#d9
	db #fb,#95,#01,#00,#f4,#fb,#95,#01
	db #02,#f4,#fb,#95,#01,#0b,#f4,#fb
	db #95,#01,#00,#f4,#fb,#95,#01,#02
	db #d9,#fb,#95,#01,#02,#d9,#fb,#95
	db #01,#07,#d9,#fb,#95,#01,#06,#d9
	db #fb,#95,#01,#04,#d9,#fb,#95,#01
	db #02,#d9,#fb,#95,#01,#00,#f4,#fb
	db #95,#01,#02,#f4,#fb,#95,#01,#0b
	db #f4,#fb,#95,#01,#00,#f4,#fb,#95
	db #01,#02,#d9,#fb,#95,#01,#07,#f4
	db #fb,#2b,#09,#2b,#05,#2b,#04,#2b
	db #05,#2b,#05,#2b,#04,#2b,#05,#95
	db #01,#00,#f4,#fb,#95,#01,#02,#f4
	db #fb,#95,#01,#07,#d9,#fb,#95,#01
	db #00,#f4,#fb,#95,#01,#02,#f4,#fb
	db #95,#01,#0b,#d9,#fb,#95,#01,#00
	db #f4,#fb,#95,#01,#02,#f4,#fb,#95
	db #01,#04,#f4,#fb,#95,#01,#06,#f4
	db #fb,#95,#01,#07,#d9,#fb,#95,#01
.lfcff equ $ + 6
	db #07,#d9,#fb,#2b,#01,#ff,#84,#95
	db #01,#00,#01,#fc,#47,#37,#48,#09
	db #4a,#0a,#45,#4a,#95,#01,#00,#01
	db #fc,#47,#2e,#48,#05,#47,#04,#45
	db #0a,#42,#09,#43,#4a,#40,#1c,#40
	db #09,#42,#09,#43,#05,#42,#04,#40
	db #0a,#42,#09,#43,#1c,#3e,#09,#47
	db #09,#45,#09,#43,#0a,#42,#09,#40
	db #1c,#40,#09,#48,#09,#47,#09,#45
	db #0a,#47,#09,#3e,#4a,#40,#1c,#3f
	db #04,#40,#05,#42,#1c,#40,#04,#42
	db #05,#43,#1c,#42,#04,#43,#05,#45
	db #1c,#43,#04,#45,#05,#47,#94,#43
.lfd63 equ $ + 2
	db #01,#ff,#85,#3b,#4a,#39,#4a,#37
	db #25,#34,#12,#39,#0e,#3c,#05,#3b
	db #12,#39,#13,#37,#12,#36,#13,#3c
	db #1b,#3b,#05,#3c,#05,#3e,#2e,#39
	db #04,#3b,#05,#3c,#05,#3b,#04,#3c
	db #05,#3e,#05,#3c,#04,#3e,#05,#40
	db #05,#3e,#04,#40,#05,#42,#04,#40
	db #05,#42,#05,#4a,#12,#3e,#13,#4a
	db #12,#3e,#13,#4a,#12,#3e,#13,#45
	db #12,#3e,#13,#3b,#40,#3b,#03,#3c
	db #03,#3b,#04,#39,#45,#3b,#05,#3c
	db #25,#40,#25,#3e,#12,#3c,#13,#3b
	db #12,#39,#1c,#39,#05,#3b,#04,#3c
	db #05,#39,#05,#3b,#04,#3c,#05,#3e
	db #2e,#3b,#05,#3c,#04,#3e,#05,#3b
	db #05,#3c,#04,#3e,#05,#40,#25,#3e
	db #12,#32,#13,#3e,#12,#32,#13,#43
	db #12,#37,#13,#43,#12,#37,#1c,#95
	db #01,#00,#3a,#fc,#47,#0a,#45,#09
	db #43,#09,#42,#09,#40,#0a,#3e,#12
	db #95,#01,#00,#3a,#fc,#4a,#0a,#43
	db #04,#45,#05,#47,#09,#48,#09,#47
	db #0a,#45,#09,#43,#1c,#42,#04,#43
	db #05,#45,#1c,#43,#04,#45,#05,#47
	db #1c,#45,#04,#47,#05,#48,#1c,#47
	db #04,#48,#05,#47,#13,#3e,#12,#45
	db #13,#3e,#12,#43,#13,#3e,#12,#42
	db #13,#3e,#12,#3b,#01,#ff,#00,#00
;
; #2169
; ld a,#02
; ld c,#00
; call #f203	; main theme
;
; #217a
; ld a,#01
; ld c,#00
; call #f203	; other theme
;
; #2131
; xor a
; ld c,a
; call #f203	; stop music
;
.init_music		; added by Megachur
;
	ld c,#00
	jp real_init_music
;
.stop_music
;
	xor a
	ld c,a
	jp real_init_music
;
.music_info
	db "Mega Twins (1991)(US Gold)()",0
	db "",0

	read "music_end.asm"
