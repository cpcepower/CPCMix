; Music of Cyberbig (1990)(Animagic)(Pablo Toledo)()
; Ripped by Megachur the 12/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CYBERBIG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #aae6

	read "music_header.asm"

;
.init_music
;
	di
	xor a
	ld de,lb3bd
	call lab13
	ld de,lb4bc
	inc a
	call lab13
	ld de,lb5bf
	inc a
	call lab13
	ei
	ret
;
.stop_music
;
	di
	xor a
	ld de,#0000
	call lab13
	inc a
	call lab13
	inc a
	call lab13
	call lab32
	ei
	ret
.lab13
	push af
	push de
	ld de,#002e
	call laeb1
	ld de,lb009
	add hl,de
	push hl
	xor a
	ld b,#2e
.lab23
	ld (hl),a
	inc hl
	djnz lab23
	pop hl
	pop de
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),e
	inc hl
	ld (hl),d
	pop af
	ret
;
.play_music
.lab32
;
	push af
	ld b,#03
	xor a
	ld ix,lb009
	ld de,laffe
	ld hl,lb006
.lab40
	push af
	push hl
	push de
	push bc
	ld (laffc),a
	ld a,(ix+#04)
	or (ix+#05)
	jp nz,labab
	xor a
	call lae52
	ld c,(ix+#02)
	ld b,(ix+#03)
	ld a,b
	or c
	jp z,lac64
.lab5f
	ld a,(bc)
	cp #80
	jp c,lab6e
	sub #80
	ld hl,lafe0
	call laee0
	jp (hl)
.lab6e
	push af
	call laea6
	pop af
	add (hl)
	ld hl,laf20
	call laee0
	ld (ix+#0a),l
	ld (ix+#0b),h
	inc bc
.lab81
	ld a,(ix+#08)
	call lae52
	call lace0
	ld (ix+#2a),#00
	call lacf8
	ld (ix+#2b),#00
	ld (ix+#2c),#00
.lab99
	ld (ix+#02),c
	ld (ix+#03),b
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld (ix+#04),l
	ld (ix+#05),h
.labab
	ld l,(ix+#04)
	ld h,(ix+#05)
	dec hl
	ld (ix+#04),l
	ld (ix+#05),h
	push ix
	pop iy
	ld d,#02
	ld c,#00
.labc0
	ld a,(iy+#0c)
	or a
	jr z,labcd
	dec a
	ld (iy+#0c),a
	inc c
	jr labee
.labcd
	ld a,(iy+#0e)
	or a
	jr z,labe9
	dec a
	ld (iy+#0e),a
	ld a,(ix+#2a)
	add (iy+#1b)
	ld (ix+#2a),a
	ld a,(iy+#20)
	ld (iy+#0c),a
	inc c
	jr labee
.labe9
	inc iy
	dec d
	jr nz,labc0
.labee
	ld a,c
	or a
	jr nz,labf9
	bit 0,(ix+#2d)
	call nz,lace0
.labf9
	push ix
	pop iy
	ld d,#03
	ld c,#00
.lac01
	ld a,(iy+#10)
	or a
	jr z,lac0e
	dec a
	ld (iy+#10),a
	inc c
	jr lac59
.lac0e
	ld a,(iy+#13)
	or a
	jr z,lac54
	dec a
	ld (iy+#13),a
	ld a,(iy+#1d)
	or a
	jp p,lac38
	ld a,(iy+#1d)
	cpl
	inc a
	ld e,a
	ld a,(ix+#2b)
	sub e
	ld (ix+#2b),a
	ld a,(ix+#2c)
	sbc #00
	and #0f
	ld (ix+#2c),a
	jr lac4b
.lac38
	ld a,(ix+#2b)
	add (iy+#1d)
	ld (ix+#2b),a
	ld a,(ix+#2c)
	adc #00
	and #0f
	ld (ix+#2c),a
.lac4b
	ld a,(iy+#22)
	ld (iy+#10),a
	inc c
	jr lac59
.lac54
	inc iy
	dec d
	jr nz,lac01
.lac59
	ld a,c
	or a
	jr nz,lac64
	bit 1,(ix+#2d)
	call nz,lacf8
.lac64
	pop bc
	pop de
	pop hl
	ld a,(ix+#09)
	add (ix+#2a)
	and #0f
	ld (hl),a
	ld a,(ix+#0a)
	add (ix+#2b)
	ld (de),a
	inc de
	ld a,(ix+#0b)
	adc (ix+#2c)
	ld (de),a
	inc de
	push de
	ld de,#002e
	add ix,de
	pop de
	pop af
	inc a
	inc hl
	dec b
	jp nz,lab40
	ld iy,lb093
	ld d,#02
	ld c,#00
.lac96
	ld a,(iy+#00)
	or a
	jr z,laca3
	dec a
	ld (iy+#00),a
	inc c
	jr lacc4
.laca3
	ld a,(iy+#02)
	or a
	jr z,lacbf
	dec a
	ld (iy+#02),a
	ld a,(lb09f)
	add (iy+#06)
	ld (lb09f),a
	ld a,(iy+#08)
	ld (iy+#00),a
	inc c
	jr lacc4
.lacbf
	inc iy
	dec d
	jr nz,lac96
.lacc4
	ld a,c
	or a
	jr nz,lacd0
	ld a,(lb09d)
	bit 2,a
	call nz,lad10
.lacd0
	ld a,(lb09e)
	ld e,a
	ld a,(lb09f)
	add e
	ld (lb004),a
	call laeed
	pop af
	ret
.lace0
	push ix
	ld d,#02
.lace4
	ld a,(ix+#20)
	ld (ix+#0c),a
	ld a,(ix+#16)
	ld (ix+#0e),a
	inc ix
	dec d
	jr nz,lace4
	pop ix
	ret
.lacf8
	ld d,#03
	push ix
.lacfc
	ld a,(ix+#22)
	ld (ix+#10),a
	ld a,(ix+#18)
	ld (ix+#13),a
	inc ix
	dec d
	jr nz,lacfc
	pop ix
	ret
.lad10
	ld d,#02
	push iy
	ld iy,lb093
.lad18
	ld a,(iy+#08)
	ld (iy+#00),a
	ld a,(iy+#04)
	ld (iy+#02),a
	inc iy
	dec d
	jr nz,lad18
	pop iy
	ret
.lad2c
	inc bc
	ld a,(bc)
	ld (ix+#09),a
	inc bc
	jp lab5f
.lad35
	inc bc
	ld a,(bc)
	ld de,(laffd)
	ld d,#00
	call laeb1
	ld (ix+#06),l
	ld (ix+#07),h
	inc bc
	jp lab5f
.lad4a
	inc bc
	ld a,(bc)
	and #09
	ld (ix+#08),a
	inc bc
	jp lab5f
.lad55
	push ix
	pop hl
	xor a
	ld b,#2e
.lad5b
	ld (hl),a
	inc hl
	djnz lad5b
	ld a,(laffc)
	ld hl,lb0a0
	xor (hl)
	jp nz,lac64
	ld hl,lb093
	ld de,lb094
	ld bc,#000a
	ld (hl),a
	ldir
	inc de
	ld (de),a
	jp lac64
.lad7a
	inc bc
	ld a,(bc)
	push bc
	ld de,#0010
	call laeb1
	ld bc,#0bb8
	push hl
	pop de
	call laec6
	ld a,c
	ld (laffd),a
	pop bc
	inc bc
	jp lab5f
.lad94
	inc bc
	ld a,(bc)
	push af
	and #1f
	ld (lb09e),a
	call lad10
	pop af
	inc bc
	or a
	jp m,lab5f
	jp lab81
.lada8
	inc bc
	jp lab99
.ladac
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld (ix+#02),c
	ld (ix+#03),b
	jp lab5f
.ladbb
	inc bc
	ld a,(bc)
	ld e,a
	or (ix+#2d)
	ld (ix+#2d),a
	ld a,(lb09d)
	or e
	ld (lb09d),a
	inc bc
	jp lab5f
.ladcf
	inc bc
	res 0,(ix+#2d)
	res 1,(ix+#2d)
	ld a,(bc)
	ld de,#000f
	call laeb1
	ld de,lb0aa
	add hl,de
	push ix
	ld d,#0f
.lade7
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	inc ix
	dec d
	jp nz,lade7
	pop ix
	inc bc
	ld (ix+#0c),#00
	ld (ix+#0d),#00
	ld (ix+#10),#00
	ld (ix+#11),#00
	ld (ix+#12),#00
	ld (ix+#2a),#00
	ld (ix+#2b),#00
	ld (ix+#2c),#00
	jp lab5f
.lae18
	inc bc
	ld a,(lb09d)
	res 2,a
	ld (lb09d),a
	ld a,(bc)
	ld de,#0006
	call laeb1
	ld de,lb19a
	add hl,de
	ld iy,lb093
	call m,#00b6
	nop
	ld (iy+#01),#00
	ld d,#06
.lae3a
	ld a,(hl)
	ld (iy+#04),a
	inc hl
	inc iy
	dec d
	jr nz,lae3a
	xor a
	ld (lb09f),a
	inc bc
	ld a,(laffc)
	ld (lb0a0),a
	jp lab5f
.lae52
	push de
	cpl
	ld e,a
	ld d,#09
	ld a,(laffc)
.lae5a
	dec a
	jp m,lae65
	scf
	rl e
	sla d
	jr lae5a
.lae65
	ld a,(lb005)
	or d
	and e
	ld (lb005),a
	pop de
	ret
.lae6f
	ld a,(laffc)
	inc bc
	add a
	ld l,a
	ld h,#00
	ld a,(bc)
	inc bc
	ld de,lb0a1
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ld hl,lb1a6
	call laee0
	ld b,h
	ld c,l
	jp lab5f
.lae8b
	ld a,(laffc)
	add a
	ld l,a
	ld h,#00
	ld de,lb0a1
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	jp lab5f
.lae9c
	inc bc
	call laea6
	ld a,(bc)
	inc bc
	ld (hl),a
	jp lab5f
.laea6
	ld a,(laffc)
	ld l,a
	ld h,#00
	ld de,lb0a7
	add hl,de
	ret
.laeb1
	ld hl,#0000
	and a
	ret z
	push bc
	ld b,#08
.laeb9
	srl a
	jr nc,laebe
	add hl,de
.laebe
	sla e
	rl d
	djnz laeb9
	pop bc
	ret
.laec6
	push af
	ld hl,#0000
	ld a,b
	ld b,#10
.laecd
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr nc,laed7
	add hl,de
.laed7
	ccf
	djnz laecd
	rl c
	rla
	ld b,a
	pop af
	ret
.laee0
	push af
	add a
	add l
	ld l,a
	jr nc,laee7
	inc h
.laee7
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	pop af
	ret
.laeed
	ld b,#f7
	ld c,#82
	out (c),c
	ld hl,laffe
	ld a,#00
	ld d,#0b
.laefa
	push af
	ld c,(hl)
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
	pop af
	inc a
	inc hl
	dec d
	jr nz,laefa
	ret
.laf20
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
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
.lafe0
	dw lad2c,lad4a,ladac,lad35
	dw lada8,lad7a,ladcf,lad94
	dw lae18,ladbb,lad55,lae6f
	dw lae8b,lae9c
.laffe equ $ + 2
.laffd equ $ + 1
.laffc
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb009 equ $ + 5
.lb006 equ $ + 2
.lb005 equ $ + 1
.lb004
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
.lb093 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb094
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb0a1 equ $ + 5
.lb0a0 equ $ + 4
.lb09f equ $ + 3
.lb09e equ $ + 2
.lb09d equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb0aa equ $ + 6
.lb0a7 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#0e,#00
	db #00,#00,#00,#ff,#00,#00,#00,#00
	db #07,#00,#00,#00,#00,#0a,#00,#00
	db #00,#00,#ff,#00,#00,#00,#00,#01
	db #00,#00,#00,#00,#0c,#00,#1e,#00
	db #00,#ff,#00,#1e,#00,#00,#01,#00
	db #01,#00,#00,#01,#01,#00,#00,#00
	db #04,#fc,#00,#00,#00,#01,#01,#00
	db #00,#00,#01,#01,#01,#02,#00,#01
	db #fe,#02,#ff,#00,#01,#03,#01,#01
	db #00,#01,#01,#14,#01,#00,#00,#f6
	db #00,#00,#00,#01,#01,#00,#00,#00
	db #0f,#00,#01,#01,#00,#ff,#00,#01
	db #ff,#00,#02,#00,#01,#01,#00,#01
	db #01,#01,#01,#00,#01,#fd,#01,#ff
	db #00,#01,#01,#01,#01,#00,#01,#01
	db #04,#04,#00,#01,#fe,#e2,#1e,#00
	db #04,#04,#01,#01,#00,#01,#01,#00
	db #00,#00,#fe,#02,#00,#00,#00,#01
	db #01,#00,#00,#00,#08,#08,#50,#00
	db #00,#01,#ff,#ff,#00,#00,#06,#0f
	db #08,#00,#00,#02,#08,#00,#00,#00
	db #00,#ff,#00,#00,#00,#01,#01,#00
	db #00,#00,#07,#0f,#00,#00,#00,#01
	db #ff,#00,#00,#00,#01,#02,#00,#00
	db #00,#01,#0a,#00,#00,#00,#0a,#ff
	db #00,#00,#00,#00,#02,#00,#00,#00
	db #01,#01,#01,#01,#00,#05,#fc,#02
	db #fc,#00,#01,#01,#01,#01,#00,#04
	db #0e,#01,#01,#00,#01,#ff,#02,#fe
.lb19a equ $ + 6
	db #00,#08,#1e,#01,#01,#00,#0a,#0f
	db #02,#00,#14,#00,#1e,#00,#f7,#00
	db #01,#00
.lb1a6
	dw lb1f2,lb1f6,lb20a,lb21e
	dw lb22e,lb23e,lb24e,lb284
	dw lb299,lb2a6,lb2b3,lb2c0
	dw lb2d3,lb2e0,lb2f4,lb2f8
	dw lb302,lb30a,lb30e,lb31f
	dw lb327,lb32e,lb339,lb345
	dw lb356,lb35e,lb36f,lb37a
	dw lb382,lb389,lb390,lb398
	dw lb39f,lb3a6,lb3ad,lb3b1
	dw lb3b5,lb3b9
.lb1f6 equ $ + 4
.lb1f2
	db #83,#20,#84,#8c,#83,#06,#1c,#83
	db #04,#1c,#21,#1c,#83,#02,#24,#24
	db #83,#04,#23,#21,#83,#02,#15,#8c
.lb20a
	db #83,#06,#1d,#83,#04,#1d,#21,#1d
	db #83,#02,#24,#24,#83,#04,#23,#21
.lb21e equ $ + 4
	db #83,#02,#1d,#8c,#83,#04,#1c,#1c
	db #21,#1c,#83,#02,#24,#24,#83,#04
.lb22e equ $ + 4
	db #23,#21,#15,#8c,#83,#04,#1d,#1d
	db #21,#1d,#83,#02,#24,#24,#83,#04
.lb23e equ $ + 4
	db #23,#21,#1d,#8c,#83,#04,#1f,#1f
	db #23,#1d,#83,#02,#26,#26,#83,#04
.lb24e equ $ + 4
	db #24,#2f,#29,#8c,#86,#02,#89,#00
	db #81,#01,#80,#0c,#83,#04,#24,#86
	db #05,#81,#09,#80,#0a,#88,#01,#83
	db #02,#18,#18,#83,#04,#18,#24,#0c
	db #86,#0b,#81,#08,#80,#0a,#88,#00
	db #83,#08,#0c,#86,#0e,#89,#00,#81
	db #01,#80,#0c,#83,#01,#39,#3a,#3b
.lb284 equ $ + 2
	db #3c,#8c,#83,#02,#24,#24,#24,#24
	db #83,#04,#24,#24,#83,#02,#24,#24
.lb299 equ $ + 7
	db #24,#24,#83,#04,#24,#24,#8c,#83
	db #04,#45,#45,#40,#83,#0c,#45,#83
.lb2a6 equ $ + 4
	db #04,#40,#45,#8c,#83,#04,#47,#83
	db #10,#48,#83,#04,#30,#83,#08,#30
.lb2b3 equ $ + 1
	db #8c,#83,#04,#45,#83,#0c,#43,#83
.lb2c0 equ $ + 6
	db #04,#26,#2b,#2f,#32,#8c,#83,#02
	db #24,#2b,#30,#37,#2b,#30,#37,#3c
	db #48,#43,#3c,#37,#43,#3c,#37,#30
.lb2d3 equ $ + 1
	db #8c,#83,#08,#0c,#83,#0c,#13,#83
.lb2e0 equ $ + 6
	db #04,#13,#83,#08,#18,#8c,#83,#04
	db #0c,#83,#06,#0c,#83,#02,#0c,#83
	db #04,#0c,#83,#08,#0c,#83,#04,#18
.lb2f8 equ $ + 6
.lb2f4 equ $ + 2
	db #0c,#8c,#83,#20,#24,#8c,#83,#0c
	db #2d,#83,#04,#2f,#83,#10,#30,#8c
.lb302
	db #83,#10,#30,#83,#08,#32,#34,#8c
.lb30e equ $ + 4
.lb30a
	db #83,#20,#24,#8c,#83,#04,#37,#83
	db #08,#35,#83,#04,#2d,#83,#08,#34
.lb31f equ $ + 5
	db #83,#04,#30,#30,#8c,#83,#10,#2b
.lb327 equ $ + 5
	db #83,#08,#2d,#2f,#8c,#83,#08,#32
.lb32e equ $ + 4
	db #30,#2f,#2b,#8c,#83,#0c,#2d,#83
.lb339 equ $ + 7
	db #04,#28,#83,#08,#2d,#30,#8c,#83
	db #08,#2f,#83,#04,#23,#28,#2c,#2f
.lb345 equ $ + 3
	db #34,#2f,#8c,#83,#04,#39,#39,#3b
	db #3c,#83,#02,#3f,#83,#06,#40,#83
.lb356 equ $ + 4
	db #04,#3e,#3c,#8c,#83,#10,#39,#83
.lb35e equ $ + 4
	db #08,#39,#3b,#8c,#83,#04,#3c,#3b
	db #83,#08,#39,#83,#04,#37,#83,#08
.lb36f equ $ + 5
	db #39,#83,#04,#3b,#8c,#83,#04,#3c
	db #3b,#39,#3b,#3c,#3b,#39,#3b,#8c
.lb37a
	db #83,#10,#39,#83,#08,#3b,#3c,#8c
.lb389 equ $ + 7
.lb382
	db #83,#18,#3b,#83,#08,#39,#8c,#83
.lb390 equ $ + 6
	db #08,#37,#34,#37,#3b,#8c,#83,#10
.lb398 equ $ + 6
	db #39,#83,#08,#35,#37,#8c,#83,#08
.lb39f equ $ + 5
	db #35,#2d,#30,#35,#8c,#83,#08,#32
.lb3a6 equ $ + 4
	db #2b,#37,#32,#8c,#83,#18,#34,#83
.lb3b1 equ $ + 7
.lb3ad equ $ + 3
	db #08,#3b,#8c,#83,#20,#3c,#8c,#83
.lb3b9 equ $ + 7
.lb3b5 equ $ + 3
	db #80,#24,#8c,#83,#40,#24,#8c,#83
	db #60,#3c,#8c
.lb3bd
	db #85
	db #32,#8d,#00,#86,#0f,#89,#02,#81
	db #01,#80,#0a,#8d,#01,#8b,#01,#8b
	db #01,#8b,#02,#8b,#02,#8b,#01,#8b
	db #01,#8b,#02,#8b,#02,#8b,#03,#8b
	db #03,#8b,#04,#8b,#04,#86,#0f,#89
	db #02,#81,#01,#80,#0b,#8b,#03,#8b
	db #03,#8b,#04,#8b,#04,#8b,#03,#8b
	db #03,#8b,#04,#8b,#04,#8b,#05,#8b
	db #05,#8b,#03,#8d,#00,#8b,#04,#86
	db #00,#89,#00,#81,#01,#80,#0b,#8d
	db #0a,#8b,#06,#8b,#06,#8d,#06,#8b
	db #06,#8d,#08,#8b,#06,#8d,#0a,#8b
	db #06,#8b,#06,#8d,#06,#8b,#06,#8d
	db #08,#8b,#06,#86,#06,#89,#00,#81
	db #01,#80,#0c,#8d,#0a,#8b,#07,#8b
	db #07,#8d,#06,#8b,#07,#8d,#08,#8b
	db #07,#8d,#16,#8b,#07,#8b,#07,#8d
	db #12,#8b,#07,#8d,#14,#8b,#07,#86
	db #07,#89,#01,#81,#01,#80,#0b,#8d
	db #0a,#8b,#07,#8b,#07,#8b,#07,#8b
	db #07,#86,#04,#89,#03,#81,#01,#80
	db #0d,#8d,#01,#8b,#08,#8b,#09,#8b
	db #08,#8b,#0a,#86,#07,#89,#03,#81
	db #01,#80,#0c,#8d,#06,#8b,#0b,#8d
	db #08,#8b,#0b,#8d,#05,#8b,#0b,#8d
	db #0a,#8b,#0b,#8d,#06,#8b,#0b,#8d
	db #08,#8b,#0b,#8d,#05,#8b,#0b,#8d
	db #0a,#8b,#0b,#8d,#06,#8b,#0b,#8d
	db #08,#8b,#0b,#8d,#05,#8b,#0b,#8d
	db #0a,#8b,#0b,#8d,#06,#8b,#0b,#8d
	db #08,#8b,#0b,#8d,#0d,#8b,#0b,#8b
	db #0b,#8b,#0b,#8b,#0b,#82
.lb4bc
	db #85
	db #32,#8d,#00,#86,#00,#89,#00,#81
	db #01,#80,#0c,#8d,#01,#8b,#03,#8b
	db #03,#8b,#04,#8b,#04,#8b,#03,#8b
	db #03,#8b,#04,#8b,#04,#8d,#0a,#8b
	db #0c,#8b,#0c,#8d,#06,#8b,#0c,#8b
	db #0c,#86,#00,#89,#00,#81,#01,#80
	db #0d,#8d,#0a,#8b,#0c,#8b,#0c,#8d
	db #06,#8b,#0c,#8b,#0c,#8d,#0a,#8b
	db #0c,#8b,#0c,#8d,#06,#8b,#0c,#8b
	db #0c,#8d,#08,#8b,#0c,#8b,#0c,#8d
	db #0a,#8b,#0c,#8d,#05,#8b,#0c,#86
	db #00,#89,#00,#81,#01,#80,#0d,#8d
	db #0a,#8b,#0d,#8b,#0d,#8d,#06,#8b
	db #0d,#8d,#08,#8b,#0d,#8d,#0a,#8b
	db #0d,#8b,#0d,#8d,#06,#8b,#0d,#8d
	db #08,#8b,#0d,#8d,#0a,#8b,#0d,#8b
	db #0d,#8d,#06,#8b,#0d,#8d,#08,#8b
	db #0d,#8d,#0a,#8b,#0d,#8b,#0d,#8d
	db #06,#8b,#0d,#8d,#08,#8b,#0d,#8d
	db #0a,#8b,#0d,#8b,#0d,#8d,#06,#8b
	db #0d,#8d,#08,#8b,#0d,#8d,#0a,#8b
	db #0d,#8b,#0d,#8d,#06,#8b,#0d,#8d
	db #08,#8b,#0d,#8d,#06,#8b,#0d,#8d
	db #08,#8b,#0d,#8d,#05,#8b,#0d,#8d
	db #0a,#8b,#0d,#8d,#06,#8b,#0d,#8d
	db #08,#8b,#0d,#8d,#05,#8b,#0d,#8d
	db #0a,#8b,#0d,#8d,#06,#8b,#0d,#8d
	db #08,#8b,#0d,#8d,#05,#8b,#0d,#8d
	db #0a,#8b,#0d,#8d,#06,#8b,#0d,#8d
	db #08,#8b,#0d,#8d,#0d,#8b,#0d,#86
	db #06,#89,#00,#81,#01,#80,#0f,#8d
	db #08,#8b,#0b,#8d,#05,#8b,#0b,#8b
	db #0e,#82
.lb5bf
	db #85
	db #32,#8d,#00,#86,#0f,#89,#03,#81
	db #01,#80,#0b,#8d,#16,#8b,#23,#8d
	db #0a,#8b,#23,#86,#00,#89,#00,#81
	db #01,#80,#0c,#8d,#01,#8b,#01,#8b
	db #01,#8b,#02,#8b,#02,#8d,#01,#86
	db #0f,#89,#03,#81,#01,#80,#0b,#8b
	db #0f,#8b,#10,#8d,#0f,#8b,#24,#8d
	db #01,#8b,#0f,#8b,#10,#8b,#12,#8d
	db #0d,#8b,#11,#8d,#01,#8b,#13,#8b
	db #14,#8b,#15,#8b,#16,#8d,#0a,#8b
	db #24,#86,#09,#89,#01,#81,#01,#80
	db #0e,#8d,#0a,#8b,#24,#86,#07,#89
	db #01,#81,#01,#80,#0e,#8d,#0a,#8b
	db #07,#8b,#07,#8d,#06,#8b,#07,#8d
	db #08,#8b,#07,#86,#04,#89,#03,#81
	db #01,#80,#0e,#8d,#01,#8b,#17,#8b
	db #17,#8b,#17,#8b,#17,#8b,#08,#8b
	db #09,#8b,#08,#8b,#0a,#86,#0f,#89
	db #02,#81,#01,#80,#0b,#8d,#01,#8b
	db #18,#8b,#19,#8b,#1a,#8b,#19,#86
	db #00,#89,#00,#81,#01,#80,#0e,#8d
	db #f5,#8b,#18,#8b,#19,#8b,#1a,#8b
	db #19,#86,#09,#89,#01,#81,#01,#80
	db #0d,#8d,#01,#8b,#1b,#8b,#1c,#8b
	db #1d,#8b,#1e,#8b,#1f,#8b,#20,#8b
	db #21,#8b,#22,#8b,#1b,#8b,#20,#8b
	db #1d,#8b,#22,#8b,#1b,#8b,#25,#86
	db #04,#89,#01,#81,#01,#80,#0e,#8d
	db #08,#8b,#0b,#8b,#0e,#82,#85,#64
	db #8d,#00,#86,#08,#89,#03,#81,#01
	db #80,#0c,#8b,#23,#8a,#85,#64,#8d
	db #03,#86,#08,#89,#03,#81,#01,#80
	db #0c,#8b,#23,#8a,#85,#64,#8d,#08
	db #86,#08,#89,#03,#81,#01,#80,#0c
	db #8b,#23,#8a
;
.music_info
	db "Cyberbig (1990)(Animagic)(Pablo Toledo)",0
	db "",0

	read "music_end.asm"
