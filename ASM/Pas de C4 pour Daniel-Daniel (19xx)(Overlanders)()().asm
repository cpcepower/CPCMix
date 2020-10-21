; Music of Pas de C4 pour Daniel-Daniel (19xx)(Overlanders)()()
; Ripped by Megachur the 02/09/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PASDC4PD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #2ec0

	read "music_header.asm"

.l2ec0
	db #82,#07,#01,#2e,#00,#01,#06,#01
	db #01,#9f,#01,#01,#db,#01,#01,#f4
	db #01,#01,#63,#02,#01,#72,#02,#01
	db #93,#02,#01,#bf,#02,#01,#ef,#02
	db #01,#22,#03,#01,#5f,#03,#01,#7e
	db #03,#01,#8d,#03,#ff,#ff,#ff,#ff
	db #ff,#ff,#f3,#02,#73,#83,#13,#d3
	db #53,#bc,#fd,#06,#bd,#50,#bd,#fa
	db #06,#de,#fd,#12,#df,#df,#f0,#ff
	db #0d,#51,#a3,#00,#00,#f4,#0c,#fa
	db #00,#d5,#fd,#30,#13,#d6,#d6,#aa
	db #fd,#36,#ab,#ab,#f4,#2a,#fa,#18
	db #d2,#fa,#36,#ee,#30,#f6,#fd,#66
	db #f7,#f7,#fa,#66,#7b,#9f,#fd,#72
	db #7c,#7c,#fa,#48,#f4,#6c,#fa,#60
	db #fa,#84,#fa,#7e,#fe,#f4,#8a,#ee
	db #78,#f4,#96,#01,#06,#01,#05,#ee
	db #04,#d4,#d5,#4a,#07,#ca,#da,#6a
	db #2a,#aa,#d0,#a6,#f4,#3a,#e8,#14
	db #e9,#fa,#50,#01,#02,#19,#01,#bc
	db #fd,#48,#bd,#bd,#fa,#48,#4f,#de
	db #fd,#54,#df,#df,#fa,#2a,#f4,#4e
	db #fa,#1e,#fa,#66,#f8,#fa,#60,#f4
	db #6c,#ee,#5a,#fa,#90,#a0,#42,#75
	db #f5,#05,#09,#95,#55,#d5,#aa,#fd
	db #08,#ab,#ab,#fa,#08,#4f,#d5,#fd
	db #14,#d6,#d6,#fa,#ea,#f4,#0e,#fa
	db #a2,#fa,#26,#fd,#fa,#20,#f4,#2c
	db #ee,#1a,#fa,#50,#a0,#02,#fa,#9e
	db #fa,#fd,#c8,#29,#fb,#fb,#fa,#c8
	db #fd,#fd,#d4,#fe,#fe,#fa,#aa,#81
	db #f4,#ce,#f3,#73,#83,#13,#d3,#53
	db #fa,#e6,#f8,#fa,#e0,#f4,#ec,#ee
	db #da,#fa,#10,#a0,#c2,#03,#05,#07
	db #08,#09,#06,#03,#f4,#05,#01,#fb
	db #12,#03,#00,#01,#03,#02,#00,#00
	db #f4,#0c,#fa,#00,#fd,#fe,#1c,#fc
	db #31,#ee,#24,#fa,#18,#f9,#12,#ef
	db #31,#02,#f5,#66,#ff,#f4,#12,#f4
	db #6c,#fa,#60,#fa,#84,#fa,#7e,#f4
	db #8a,#ee,#78,#f4,#96,#f0,#01,#06
	db #01,#05,#ee,#04,#d4,#d5,#02,#05
	db #06,#07,#7f,#05,#f9,#39,#d6,#ac
	db #f4,#3a,#e8,#14,#f9,#0d,#01,#03
	db #1a,#02,#7f,#03,#f5,#48,#f4,#24
	db #f4,#4e,#f4,#1e,#f9,#4d,#ef,#1f
	db #f3,#60,#c1,#fb,#9c,#a0,#42,#01
	db #04,#06,#06,#04,#fe,#ea,#ff,#f5
	db #08,#fe,#ee,#fb,#15,#fb,#eb,#f4
	db #0e,#fa,#a2,#f9,#15,#fb,#38,#fc
	db #f4,#2c,#ee,#1a,#f9,#0d,#a1,#03
	db #fa,#9e,#dc,#68,#03,#07,#0e,#08
	db #09,#06,#03,#f4,#b6,#f4,#ec,#88
	db #aa,#bf,#74,#be,#fe,#01,#fe,#00
	db #fa,#00,#5f,#fd,#0c,#60,#60,#03
	db #3f,#2f,#28,#3f,#30,#29,#fa,#06
	db #f4,#12,#fe,#dc,#0c,#f4,#00,#ee
	db #54,#01,#0c,#01,#ab,#94,#0a,#f3
	db #d5,#f0,#22,#ff,#51,#fa,#e3,#a3
	db #00,#00,#ee,#e9,#00,#f8,#6a,#40
	db #01,#38,#01,#d7,#01,#d6,#13,#35
	db #00,#e5,#01,#00,#01,#00,#1b,#fe
	db #01,#03,#fa,#e3,#02,#fb,#e1,#fc
	db #f0,#ec,#01,#ff,#01,#01,#01,#00
	db #01,#ff,#7c,#fe,#7f,#f9,#01,#00
	db #01,#00,#01,#ff,#01,#fe,#7b,#fc
	db #bf,#be,#fe,#83,#99,#f2,#82,#aa
	db #a9,#fe,#95,#f2,#94,#a0,#9f,#fe
	db #a7,#e6,#d8,#a6,#f0,#d1,#be,#82
	db #8f,#8e,#fe,#25,#f2,#24,#80,#cf
	db #fd,#7f,#f8,#36,#78,#77,#fe,#43
	db #e4,#42,#cc,#61,#f4,#36,#ff,#d0
	db #b2,#f4,#96,#fa,#da,#ee,#24,#f4
	db #b6,#fe,#04,#fe,#03,#e4,#02,#fe
	db #c6,#21,#fa,#fa,#ee,#e4,#f2,#70
	db #e4,#81,#ee,#ae,#ee,#6e,#78,#73
	db #77,#fe,#c3,#e4,#c2,#cc,#e1,#80
	db #7f,#fe,#17,#fe,#16,#f0,#fa,#bc
.l3135 equ $ + 5
	db #fa,#16,#e6,#24,#c0,#41,#00,#ff
	db #01,#00,#01,#00,#01,#ff,#01,#fe
	db #01,#fd,#01,#fc,#01,#fb,#78,#fa
	db #01,#bf,#e9,#00,#05,#fd,#18,#e8
	db #00,#01,#04,#01,#43,#4f,#02,#fc
	db #b8,#ef,#fa,#e6,#f8,#b6,#f4,#ef
	db #03,#2d,#10,#01,#15,#01,#e4,#01
	db #e3,#80,#50,#a2,#30,#6f,#38,#ea
	db #01,#fc,#00,#30,#f3,#00,#ee,#00
	db #f4,#2a,#ee,#18,#fb,#e8,#24,#01
	db #12,#01,#b1,#94,#10,#f9,#db,#28
	db #f8,#e1,#fe,#e8,#fe,#fe,#ed,#ee
	db #ea,#64,#40,#01,#3e,#01,#dd,#01
	db #dc,#19,#3b,#0f,#80,#fc,#00,#0b
	db #1f,#1f,#1e,#1e,#1d,#1d,#c3,#f4
	db #06,#fe,#03,#0e,#0d,#0a,#08,#f2
	db #0c,#f0,#02,#fd,#f4,#2a,#ee,#18
	db #e8,#24,#01,#12,#01,#b1,#9a,#10
	db #00,#d5,#d6,#f8,#6a,#40,#01,#38
	db #01,#d7,#01,#d6,#13,#35,#0f,#04
	db #0f,#0e,#0a,#06,#01,#f7,#00,#0e
	db #0d,#7f,#0d,#f7,#0c,#f4,#09,#d6
	db #09,#f4,#03,#ee,#57,#01,#0f,#01
	db #ae,#b8,#97,#0d,#00,#f4,#d6,#fd
	db #d0,#fa,#e3,#0d,#0a,#08,#be,#ee
	db #e9,#05,#6a,#40,#01,#38,#01,#d7
	db #01,#d6,#13,#35,#0c,#be,#fb,#00
	db #00,#01,#06,#01,#06,#01,#05,#01
	db #04,#81,#02,#0f,#2f,#0f,#0d,#fe
	db #84,#0c,#fd,#87,#fd,#84,#fa,#86
	db #e2,#82,#ff,#ee,#94,#f6,#bc,#fc
	db #c7,#f0,#d1,#be,#82,#b2,#94,#dc
	db #71,#82,#a6,#ff,#be,#54,#f4,#cc
	db #c4,#02,#d0,#d2,#b8,#0e,#f4,#5c
	db #ac,#c2,#f4,#75,#08,#ab,#fb,#00
	db #05,#d7,#06,#09,#cb,#30,#06,#a1
	db #66,#01,#06,#f5,#01,#05,#01,#a6
	db #01,#c3,#7a,#c1,#05,#41,#48,#09
	db #41,#08,#40,#08,#47,#c8,#00,#ff
	db #01,#00,#01,#00,#01,#ff,#01,#fe
	db #01,#fd,#01,#fc,#01,#fb,#78,#fa
	db #0a,#7f,#ff,#01,#01,#01,#01,#01
	db #00,#01,#ff,#01,#fe,#01,#fd,#01
	db #fc,#80,#79,#fa
	jp l3295
	jp l32c1
	jp l32d6
;
.init_music
.l3295
;
	di
	exx
	ex af,af'
	push af
	push bc
	push de
	push hl
	call l371d
	call l3724
	call l37ab
	call l37aa
	call l3847
	call l32d6
	ld a,(l39e9)
.l32b1
	push af
	call l34b2
	pop af
	dec a
	jr nz,l32b1
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	exx
	ei
	ret
;
.play_music
.l32c1
;
	di
	exx
	ex af,af'
	push af
	push bc
	push de
	push hl
	call l34b2
	call l331c
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	exx
	ei
	ret
;
.stop_music
.l32d6
;
	ld b,#0e
	ld c,#0d
	xor a
.l32db
	push bc
	call l32e4
	pop bc
	dec c
	djnz l32db
	ret
.l32e4
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	out (c),c
	db #ed,#71 ; out (c),0
	ld b,#f4
	out (c),a
	ld bc,#f680
	out (c),c
	db #ed,#71 ; out (c),0
	ret
.l32fb
	ld a,(hl)
	cp #00
	jr z,l3311
	ld (#0000),a
.l3303
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l3311
	inc c
.l3312
	inc de
	ld a,d
	and #03
	ld d,a
	ld (l3327),de
	ret
.l331c
	ld de,#c080
	ld hl,#f4f6
	ld b,l
	out (c),d
	exx
.l3327 equ $ + 1
	ld de,#0000
	ld l,e
	ld b,#f4
	ld c,#00
.l332e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l34b2
	ld (l34d0),sp
	ld a,(l39e9)
	dec a
.l34bc equ $ + 2
	ld hx,#00
	ld iy,l34c4
.l34c2 equ $ + 1
	jp l3573
.l34c4
	ld hl,(l34c2)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (l34c2),de
.l34d0 equ $ + 1
	ld sp,#0000
	ret
	ld a,e
	dec (hl)
.l34d6 equ $ + 1
.l34d5
	ld hl,#0000
	ld c,l
	ld d,#00
	ld a,(l39e9)
	ld e,a
	or a
	sbc hl,de
	ld (l34d6),hl
	dec a
	jp nc,l3573
	ld b,d
	ld de,l3513
	ld (l34c2),de
	ld de,(l2ec0)
	add hl,de
	ld (l34d6),hl
	ld a,c
	ld (l3529),a
	ld (l3514),a
	ld hl,(l3327)
	add hl,bc
	ld a,(l39e9)
	ld c,a
	add hl,bc
	ld a,h
	and #03
	ld (l34bc),a
	ld a,l
	ld (l353c),a
.l3514 equ $ + 1
.l3513
	ld a,#00
	dec a
	jp m,l3520
	ld iy,l3525
.l351e equ $ + 1
.l351d
	jp l3573
.l3520
	ld a,(l39e9)
	jr l352b
.l3525
	ld a,(l39e9)
.l3529 equ $ + 1
	ld b,#00
	sub b
.l352b
	ld hl,(l351e)
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	inc de
	inc de
	inc de
	ld hl,#00a1
	add hl,de
	ex de,hl
.l353c equ $ + 1
	ld (hl),#00
	inc hl
	ex de,hl
	ldi
	ldi
	ldi
	ldi
	ldi
	ld iy,l3550
	dec a
	jr l351d
.l3550
	ld hl,(l351e)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld hl,#cb2a
	add hl,de
	jr c,l3567
	ld hl,l34d5
	ld (l34c2),de
	ld de,l3573
.l3567
	ld (l351e),de
	ld sp,(l34d0)
	ei
	ret
	ld a,e
	dec (hl)
.l3573
	ld sp,l38a9
.l3577 equ $ + 1
	jp l3686
	add e
	dec (hl)
	ld sp,l38b3
	jp l3605
	adc e
	dec (hl)
	ld sp,l38bd
	jp l3686
	sub e
	dec (hl)
	ld sp,l38c7
	jp l3605
	sbc e
	dec (hl)
	ld sp,l38d1
	jp l3686
	and e
	dec (hl)
	ld sp,l38db
	jp l3605
	xor e
	dec (hl)
	ld sp,l38e5
	jp l3605
	or e
	dec (hl)
	ld sp,l38ef
	jp l3605
	cp e
	dec (hl)
	ld sp,l38f9
	jp l3605
	jp l3135
	inc bc
	add hl,sp
	jp l3605
	sll l
	ld sp,l390d
	jp l3605
	out (#35),a
	ld sp,l3917
	jp l3605
	in a,(#35)
	ld sp,l3921
	jp l3605
	push de
	inc (hl)
	ld sp,l392b
	jp l3605
	ex de,hl
	dec (hl)
	ld sp,l3935
	jp l3605
	ld (hl),e
	dec (hl)
	ld sp,l393f
	jp l3605
.l35f1
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc e
	ex af,af'
	dec a
	exx
	jp p,l361e
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l3605
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l361b
	exx
	ld d,a
	exx
	add b
	jr nc,l365e
	ex af,af'
.l3613
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l3613
	ex af,af'
.l361b
	exx
	pop bc
	pop hl
.l361e
	sla c
	jr nz,l3626
	ld c,(hl)
	inc hl
	sll c
.l3626
	jr nc,l35f1
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l3643
	ex af,af'
	ld a,b
	exx
	ld b,a
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
.l3638
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l3638
	ex af,af'
	exx
	jr l361e
.l3643
	ex af,af'
	ld a,d
	exx
	ld b,a
	inc b
	exx
	ld a,(hl)
	inc hl
	push hl
	push bc
	exx
	add c
	ld l,a
.l3650
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	djnz l3650
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l365e
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l3666
	ld a,(hl)
	ld (de),a
	inc l
	inc e
	djnz l3666
	push hl
	push de
	jp (iy)
.l3670
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc de
	res 2,d
	ex af,af'
	dec a
	exx
	jp p,l36a3
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l3686
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l36a0
	exx
	ld d,a
	exx
	add b
	jr nc,l3707
	ex af,af'
.l3694
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l3694
	ex af,af'
.l36a0
	exx
	pop bc
	pop hl
.l36a3
	sla c
	jr nz,l36ab
	ld c,(hl)
	inc hl
	sll c
.l36ab
	jr nc,l3670
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l36da
	ex af,af'
	ld a,b
	exx
	ld b,a
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
	ld a,d
	res 0,a
	res 1,a
	exx
	adc (hl)
	add hx
	and #fb
	inc hl
	exx
	ld h,a
.l36cb
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l36cb
	ex af,af'
	exx
	jr l36a3
.l36da
	ex af,af'
	ld a,d
	exx
	ld b,a
	inc b
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
	ld a,d
	res 0,a
	res 1,a
	exx
	adc (hl)
	add hx
	and #fb
	inc hl
	push hl
	push bc
	exx
	ld h,a
.l36f5
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	djnz l36f5
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l3707
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l370f
	ld a,(hl)
	ld (de),a
	inc hl
	res 2,h
	inc de
	res 2,d
	djnz l370f
	push hl
	push de
	jp (iy)
.l371d
	ld hl,(l2ec0)
	ld (l34d6),hl
	ret
.l3724
	ld hl,l39ec
	ld d,#40
	exx
	ld hl,(l39ea)
	inc hl
	inc hl
	push hl
	ld de,#0003
	ld a,(l39e9)
	ld b,a
	ld c,#00
.l3739
	ld a,(hl)
	cp #01
	jr z,l374a
	exx
	ld (hl),d
	inc hl
	ld (hl),#04
	dec hl
	ld a,d
	add #08
	ld d,a
	exx
	inc c
.l374a
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l3739
	ld hl,l39ec
	ld d,#40
	ld b,#03
	exx
	pop hl
	push hl
	ld de,#0003
	ld a,(l39e9)
	ld b,a
.l3762
	ld a,(hl)
	cp #04
	jr z,l377f
	exx
	ld a,b
	inc a
	and #03
	ld b,a
	jr nz,l3778
	ld a,c
	or a
	jr z,l3778
	dec c
	ld a,d
	add #04
	ld d,a
.l3778
	ld (hl),d
	inc hl
	ld (hl),#01
	dec hl
	inc d
	exx
.l377f
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l3762
	ld hl,l3577
	ld bc,#0007
	exx
	pop hl
	ld de,#0003
	ld a,(l39e9)
	ld b,a
.l3795
	ld a,(hl)
	cp #01
	exx
	ld de,l3605
	jr z,l37a1
	ld de,l3686
.l37a1
	ld (hl),e
	inc hl
	ld (hl),d
	add hl,bc
	exx
	add hl,de
	djnz l3795
	ret
.l37aa
	ret
.l37ab
	ld hl,l39ec
	ld de,l332e
	ld b,(hl)
	inc hl
	ld a,(hl)
	inc hl
	cp #01
	call z,l382c
	call nz,l3839
	ld b,#0d
.l37bf
	push bc
	call l3809
	ld b,(hl)
	inc hl
	ld a,(hl)
	cp #04
	call z,l3839
	jr z,l37e2
	dec hl
	dec hl
	cp (hl)
	call nz,l382c
	jr nz,l37e0
	dec hl
	ld a,(hl)
	inc hl
	sub b
	inc a
	call z,l3834
	call nz,l382c
.l37e0
	inc hl
	inc hl
.l37e2
	inc hl
	pop bc
	djnz l37bf
	ex de,hl
	ld (hl),#7e
	inc hl
	ld (hl),#3c
	inc hl
	ld (hl),#28
	inc hl
	ld (hl),#0f
	inc hl
	ld (hl),#3d
	inc hl
	ex de,hl
	ld hl,l3303
	ld bc,#000f
	ldir
	dec de
	ld hl,l3312
	ld bc,#000a
	ldir
	ret
.l3809
	push hl
	ld hl,l32fb
	ldi
	ldi
	ld b,d
	ld c,#ff
	ld a,e
	ldi
	ldi
	ldi
	ldi
	ld (de),a
	inc de
	ld a,b
	ld (de),a
	inc de
	ld hl,l3303
	ld bc,#000f
	ldir
	pop hl
	ret
.l382c
	ex de,hl
	ld (hl),#26
	inc hl
	ld (hl),b
	inc hl
	ex de,hl
	ret
.l3834
	ld a,#24
	ld (de),a
	inc de
	ret
.l3839
	ex de,hl
	ld (hl),#3e
	inc hl
	ld (hl),b
	inc hl
	ld (hl),#b2
	inc hl
	ld (hl),#67
	inc hl
	ex de,hl
	ret
.l3847
	ld hl,l34d5
	ld (l34c2),hl
	ld hl,l3573
	ld (l351e),hl
	xor a
	ld (l34bc),a
	ld hl,#0000
	ld (l3327),hl
	call l386c
	ld hl,l38a9
	ld de,l3949
	ld bc,#00a0
	ldir
	ret
.l386c
	ld hl,l39ec
	exx
	ld a,(l39e9)
	ld b,a
	ld de,(l39ea)
	inc de
	inc de
	ld hl,l38a9
.l387d
	push bc
	exx
	ld a,(hl)
	inc hl
	inc hl
	exx
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#40
	inc hl
	inc hl
	ex de,hl
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	push hl
	add hl,bc
	ld b,h
	ld c,l
	pop hl
	inc hl
	ex de,hl
	ld (hl),c
	inc hl
	ld (hl),b
	inc hl
	pop bc
	djnz l387d
	ret
.l38a9
	db #00,#00,#00,#00,#00,#00,#00,#00
.l38b3 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l38bd equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l38c7 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l38d1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l38db equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l38e5 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l38ef equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l38f9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l390d equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3917 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3921
	db #00,#00,#00,#00,#00,#00,#00,#00
.l392b equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3935 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l393f equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3949
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
.l39ec equ $ + 3
.l39ea equ $ + 1
.l39e9
	db #0e,#c0,#2e,#c0,#04,#c4,#01,#c8
	db #04,#c5,#01,#d0,#04,#c6,#01,#c7
	db #01,#cc,#01,#cd,#01,#ce,#01,#cf
	db #01,#d4,#01,#d5,#01,#d6,#01,#d7
	db #01,#d8,#01,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00

;
.music_info
	db "Pas de C4 pour Daniel-Daniel (19xx)(Overlanders)()",0
	db "",0

	read "music_end.asm"
