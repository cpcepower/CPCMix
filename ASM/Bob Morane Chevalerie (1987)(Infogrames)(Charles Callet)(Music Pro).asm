; Music of Bob Morane Chevalerie (1987)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 03/04/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOBMORAC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #a926

	read "music_header.asm"

;
.init_music
;
	xor a
	ld (lae70),a
	ld (lae72),a
	ld hl,lae79
	ld (hl),#00
	ld de,lae7a
	ld bc,#0128
	ldir
	ld a,(lb0a3)
	ld (lafa2),a
	ld bc,lb0a2
	ld hl,(lb0a4)
	add hl,bc
	ld (lafa5),hl
	ld hl,(lb0a6)
	add hl,bc
	ld (lafa7),hl
	ld hl,(lb0a8)
	add hl,bc
	ld (lae7e),hl
	ld hl,(lb0aa)
	add hl,bc
	ld (laeb9),hl
	ld hl,(lb0ac)
	add hl,bc
	ld (laef4),hl
	ld hl,lb0ae
	ld (lafa3),hl
	ld a,#0f
	ld (lafaa),a
	ld hl,lae73
	ld de,lae79
	ld bc,#0005
	ldir
	ld hl,lae73
	ld de,laeb4
	ld bc,#0005
	ldir
	ld hl,lae73
	ld de,laeef
	ld bc,#0005
	ldir
	ld a,#ff
	ld (lae70),a
	ld c,#38
	ld a,#07
	jp lb080
;
.play_music
;
	ld a,(lae70)
	or a
	ret z
	xor a
	ld (lae70),a
	ld a,#08
	ld (lafad),a
	cpl
	ld (lafac),a
	ld a,(lafaa)
	ld e,a
	ld b,#03
	ld hl,laf0e
.la9b9
	ld c,(hl)
	ld a,c
	cp e
	jp c,la9c0
	ld a,e
.la9c0
	ld c,a
	ld a,b
	add #07
	push de
	call lb080
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz la9b9
	ld hl,lafa2
	dec (hl)
	ld ix,lae79
	xor a
.la9da
	ld (lafa9),a
	ld a,(ix+#07)
	or a
	jp nz,lac95
.la9e4
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.la9ee
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jp nz,laa4d
	ld l,(ix+#01)
	ld h,(ix+#02)
.laa00
	ld a,(hl)
	cp #ff
	jp nz,laa2e
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(lafa9)
	cp #02
	jp c,laa00
	ld a,(lae72)
	or a
	jp nz,laa00
	ld a,(lae71)
	ld (lb151),a
	xor a
	ld (lae71),a
	jp laa00
.laa2e
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(lafa3)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,lb0a2
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp la9ee
.laa4d
	bit 7,a
	jp nz,laabd
	ld hl,lafb4
	or a
	jp z,laa5c
	add (ix+#20)
.laa5c
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld e,(hl)
	ld (ix+#36),e
	ld (ix+#38),e
	inc hl
	ld e,(hl)
	ld (ix+#37),e
	ld (ix+#39),e
	ld (ix+#0a),#00
	ld (ix+#21),#00
	ld (ix+#1f),#00
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ex de,hl
	ld a,(lafa9)
	inc a
	ld hl,laf16
	ld bc,#0014
.laa8e
	add hl,bc
	dec a
	jp nz,laa8e
	call lae0b
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(lafa9)
	inc a
	ld hl,laf52
	ld bc,#0014
.laaa8
	add hl,bc
	dec a
	jp nz,laaa8
	call lae0b
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp lac81
.laabd
	bit 6,a
	jp nz,lab10
	bit 5,a
	jp z,laafd
	push af
	xor a
	ld (lafae),a
	pop af
.laacd
	and #1f
	ld b,a
	jp z,laae5
	ld a,(lafab)
	push hl
	ld hl,lafac
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call lb080
	jp laaf4
.laae5
	ld a,(lafab)
	push hl
	ld hl,lafad
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call lb080
.laaf4
	ld c,b
	ld a,#06
	call lb080
	jp lac81
.laafd
	and #1f
	ld hl,lb074
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp lac81
.lab10
	bit 5,a
	jp nz,lab83
	and #1f
	add a
	add a
	add a
	ld hl,(lafa5)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.lab2c
	ld a,(de)
	bit 7,a
	jp nz,lab3f
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp lab58
.lab3f
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#ff
	bit 7,a
	jp nz,lab52
	ld b,#01
.lab52
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.lab58
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,lab2c
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,laf16
	ld a,(lafa9)
	inc a
.lab77
	add hl,bc
	dec a
	jp nz,lab77
	ex de,hl
	call lae0b
	jp lac81
.lab83
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,lab9a
	and #1f
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.lab9a
	and d
	xor e
	call m,#f7ab
	xor e
	xor d
	xor e
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp lac81
	pop hl
	ld a,(hl)
	ld (lafae),a
	and #3f
	ld (lafb0),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (lafb1),a
	ld a,(lafae)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (lafae),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,lafae
	or (hl)
	ld (lafae),a
	ld (lafaf),a
	ld a,(lafb0)
	ld (lafb3),a
	ld hl,lafb1
	ld b,#ff
	cp (hl)
	jp nc,labed
	ld b,#01
.labed
	ld a,b
	ld (lafb2),a
	ld a,(lafb3)
	jp laacd
	ld a,#02
	jp labfe
	ld a,#01
.labfe
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,lac76
	add a
	add a
	add a
	ld hl,(lafa7)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.lac1d
	ld a,(de)
	bit 7,a
	jp nz,lac32
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	neg
	ld (hl),a
	jp lac4b
.lac32
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#01
	bit 7,a
	jp nz,lac45
	ld b,#ff
.lac45
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.lac4b
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,lac1d
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,laf52
	ld a,(lafa9)
	inc a
.lac6a
	add hl,bc
	dec a
	jp nz,lac6a
	ex de,hl
	call lae0b
	jp lac7b
.lac76
	ld a,#00
	ld (ix+#09),a
.lac7b
	ld a,(ix+#09)
	ld (ix+#3a),a
.lac81
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,la9e4
.lac95
	ld a,(lafa2)
	or a
	jp nz,lac9f
	dec (ix+#07)
.lac9f
	ld a,(ix+#0a)
	cp #04
	jp z,laced
	push ix
	pop hl
	ld b,a
	add a
	add a
	add b
	add #0b
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jp nz,lacce
	dec (hl)
	jp nz,lacc1
	inc (ix+#0a)
.lacc1
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp laced
.lacce
	dec (hl)
	jp nz,lace4
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	dec hl
	jp lace6
.lace4
	inc hl
	inc hl
.lace6
	dec (hl)
	jp nz,laced
	inc (ix+#0a)
.laced
	ld a,(ix+#09)
	or a
	jp z,lad92
	push ix
	pop hl
	ld a,(ix+#21)
	ld b,a
	add a
	add a
	add b
	add #22
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jp nz,lad2d
	dec (hl)
	jp nz,lad11
	inc (ix+#21)
.lad11
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,lad1d
	inc b
.lad1d
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp lad5d
.lad2d
	dec (hl)
	jp nz,lad54
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	push hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,lad42
	inc b
.lad42
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp lad56
.lad54
	inc hl
	inc hl
.lad56
	dec (hl)
	jp nz,lad5d
	inc (ix+#21)
.lad5d
	ld a,(ix+#21)
	cp #04
	jp nz,lad92
	ld a,(ix+#09)
	cp #02
	jp nz,lad74
	xor a
	ld (ix+#09),a
	jp lad92
.lad74
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(lafa9)
	inc a
	ld hl,laf52
	ld bc,#0014
.lad8a
	add hl,bc
	dec a
	jp nz,lad8a
	call lae0b
.lad92
	ld c,(ix+#36)
	ld a,(lafa9)
	add a
	call lb080
	ld c,(ix+#37)
	inc a
	call lb080
	ld bc,#003b
	add ix,bc
	ld a,(lafad)
	rlc a
	ld (lafad),a
	cpl
	ld (lafac),a
	ld a,(lafa9)
	inc a
	cp #03
	jp nz,la9da
	ld a,(lafae)
	or a
	jp z,ladf8
	dec a
	ld (lafae),a
	or a
	jp nz,ladf8
	ld a,(lafaf)
	ld (lafae),a
	ld a,(lafb3)
	ld hl,lafb2
	add (hl)
	ld (lafb3),a
	ld c,a
	ld hl,lafb0
	cp (hl)
	jp z,ladeb
	ld hl,lafb1
	cp (hl)
	jp nz,ladf3
.ladeb
	ld a,(lafb2)
	xor #fe
	ld (lafb2),a
.ladf3
	ld a,#06
	call lb080
.ladf8
	ld a,(lafa2)
	or a
	jp nz,lae05
	ld a,(lb0a3)
	ld (lafa2),a
.lae05
	ld a,#ff
	ld (lae70),a
	ret
.lae0b
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ret
	push hl
	push de
	push bc
	push af
	ld hl,lae62
	rst #00
	ld c,a
	xor a
	ld (lae70),a
	ld a,c
	ld (lae71),a
	ld hl,lae73
	ld de,laeef
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (laef6),a
	dec a
	ld (lae70),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.lae62
	db #00,#1a,#1b,#1c,#1d,#1e,#1f,#20
	db #21,#22,#23,#24,#25,#26
.lae73 equ $ + 3
.lae72 equ $ + 2
.lae71 equ $ + 1
.music_end
.lae70
	db #00,#00,#ff,#00
	dw lae78,lae78
.lae7a equ $ + 2
.lae79 equ $ + 1
.lae78
	db #ff,#00,#00
.lae7e equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.laeb9 equ $ + 6
.laeb4 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.laeef equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.laef6 equ $ + 3
.laef4 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.laf0e equ $ + 3
	db #00,#00,#00,#0f,#00,#00,#00,#00
.laf16 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.laf52 equ $ + 7
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
.lafa2 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.lafaa equ $ + 7
.lafa9 equ $ + 6
.lafa7 equ $ + 4
.lafa5 equ $ + 2
.lafa3
	db #00,#00,#00,#00,#00,#00,#00,#00
.lafb2 equ $ + 7
.lafb1 equ $ + 6
.lafb0 equ $ + 5
.lafaf equ $ + 4
.lafae equ $ + 3
.lafad equ $ + 2
.lafac equ $ + 1
.lafab
	db #38,#00,#00,#00,#00,#00,#00,#00
.lafb4 equ $ + 1
.lafb3
	db #00,#00,#00
	dw #0c9c,#0be7,#0b3c,#0a9b
	dw #0a02,#0973,#08eb,#086b
	dw #07f2,#0780,#0714,#06ae
	dw #064e,#05f4,#059e,#054d
	dw #0501,#0469,#0475,#0435
	dw #03f9,#03c0,#038a,#0357
	dw #0327,#02fa,#02cf,#02a7
	dw #0281,#025d,#023b,#021b
	dw #01fc,#01e0,#01c5,#01ac
	dw #0194,#017d,#0168,#0153
	dw #0140,#012e,#011d,#010d
	dw #00fe,#00f0,#00e2,#00d6
	dw #00ca,#00be,#00b4,#00aa
	dw #00a0,#0097,#008f,#0087
	dw #007f,#0078,#0071,#006b
	dw #0065,#005f,#005a,#0055
	dw #0050,#004c,#0047,#0043
	dw #0040,#003c,#0039,#0035
	dw #0032,#0030,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020,#001e,#001c,#001b
	dw #0019,#0018,#0016,#0015
	dw #0014,#0013,#0012,#0011
	dw #0010,#000f,#000e
.lb074
	ld (bc),a
	inc bc
	inc b
	ld b,#08
	inc c
	djnz lb094
	jr nz,lb0ae
	ld b,b
	ld h,b
.lb080
	push af
	push bc
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
.lb094
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	pop af
	ret
.lb0a8 equ $ + 6
.lb0a6 equ $ + 4
.lb0a4 equ $ + 2
.lb0a3 equ $ + 1
.lb0a2
	db #00,#01,#d8,#05,#50,#06,#5a,#00
.lb0ae equ $ + 4
.lb0ac equ $ + 2
.lb0aa
	db #87,#00,#af,#00,#b1,#00,#b9,#00
	db #d4,#00,#ec,#00,#0e,#01,#2c,#01
	db #47,#01,#5f,#01,#8b,#01,#a3,#01
	db #bb,#01,#e3,#01,#0b,#02,#0b,#02
	db #0b,#02,#15,#02,#75,#02,#d5,#02
	db #33,#03,#93,#03,#af,#03,#0f,#04
	db #6f,#04,#cf,#04,#2d,#05,#34,#05
	db #52,#05,#5d,#05,#66,#05,#7a,#05
	db #85,#05,#90,#05,#99,#05,#a4,#05
	db #ad,#05,#b6,#05,#bf,#05,#c8,#05
	db #d1,#05,#00,#00,#01,#02,#01,#02
	db #03,#03,#03,#03,#01,#04,#01,#02
	db #05,#06,#05,#06,#07,#08,#08,#09
	db #09,#0a,#0b,#08,#08,#09,#09,#0a
	db #0b,#05,#06,#05,#06,#08,#08,#09
	db #09,#0a,#0b,#0a,#0b,#0e,#ff,#0f
	db #0f,#10,#11,#10,#11,#0f,#11,#0f
	db #11,#10,#11,#10,#11,#12,#12,#12
	db #12,#13,#14,#15,#16,#17,#14,#15
	db #16,#17,#12,#12,#12,#12,#14,#15
.lb151 equ $ + 7
	db #16,#17,#16,#17,#19,#19,#ff,#00
	db #ff,#e0,#00,#a0,#c0,#8a,#30,#30
	db #ff,#e0,#00,#a0,#c9,#e2,#01,#86
	db #37,#84,#33,#30,#86,#38,#84,#37
	db #86,#32,#84,#32,#35,#3a,#86,#38
	db #84,#37,#35,#ff,#e0,#00,#a0,#c9
	db #e2,#01,#86,#37,#84,#33,#30,#86
	db #38,#84,#37,#c1,#e1,#07,#8a,#26
	db #c0,#84,#26,#ff,#e0,#00,#a0,#c9
	db #e2,#01,#84,#30,#30,#c0,#30,#c9
	db #30,#30,#c0,#30,#30,#c9,#30,#c0
	db #30,#c9,#30,#c0,#30,#c9,#30,#30
	db #c0,#30,#30,#c9,#30,#ff,#e0,#00
	db #a0,#c9,#e2,#01,#86,#37,#84,#33
	db #30,#86,#38,#84,#37,#32,#c0,#3e
	db #c9,#3e,#37,#c0,#37,#37,#c9,#3e
	db #37,#c0,#37,#ff,#e0,#02,#a0,#c9
	db #e2,#01,#86,#37,#84,#33,#30,#86
	db #38,#84,#37,#86,#32,#84,#32,#35
	db #3a,#86,#38,#84,#37,#35,#ff,#e0
	db #02,#a0,#c9,#e2,#01,#86,#37,#84
	db #33,#30,#86,#38,#84,#37,#c1,#e1
	db #07,#8a,#26,#c0,#84,#26,#ff,#e0
	db #fe,#a0,#c7,#e1,#04,#86,#2f,#2b
	db #84,#30,#2d,#88,#2a,#84,#2b,#2d
	db #86,#2f,#2b,#84,#33,#34,#88,#33
	db #84,#31,#33,#86,#34,#30,#84,#2f
	db #2d,#86,#32,#2f,#2b,#26,#2b,#2a
	db #89,#2b,#ff,#e0,#fe,#a0,#c7,#e1
	db #04,#82,#37,#36,#37,#34,#2f,#34
	db #37,#36,#37,#34,#2f,#34,#37,#36
	db #37,#34,#ff,#e0,#00,#a0,#c7,#e1
	db #04,#82,#37,#36,#37,#34,#2d,#34
	db #37,#36,#37,#34,#2d,#34,#37,#36
	db #37,#34,#ff,#e0,#00,#a0,#c7,#e1
	db #04,#82,#39,#37,#39,#35,#32,#35
	db #39,#37,#39,#35,#32,#35,#39,#37
	db #39,#35,#3a,#39,#3a,#37,#32,#37
	db #3a,#39,#3a,#37,#32,#37,#3a,#39
	db #3a,#37,#ff,#e0,#00,#a0,#c3,#e2
	db #04,#82,#3c,#3b,#3c,#39,#35,#39
	db #3c,#3b,#3c,#39,#35,#39,#3c,#3b
	db #3c,#39,#3e,#3c,#3e,#3a,#35,#3a
	db #3e,#3c,#3e,#3a,#35,#3a,#3e,#3c
	db #3e,#3a,#ff,#e0,#fa,#a0,#c1,#e1
	db #07,#8a,#30,#30,#ff,#e0,#00,#a0
	db #c9,#e2,#01,#84,#18,#18,#a5,#e1
	db #02,#82,#2c,#cb,#2c,#a0,#c9,#e2
	db #01,#84,#18,#18,#a1,#ce,#e2,#00
	db #82,#00,#c2,#00,#a5,#c9,#e1,#02
	db #2c,#cb,#2c,#a0,#c9,#e2,#01,#84
	db #18,#a1,#c2,#e2,#00,#82,#00,#a2
	db #c4,#00,#a0,#c9,#e2,#01,#84,#18
	db #a5,#e1,#02,#82,#2c,#cb,#2c,#a0
	db #c9,#e2,#01,#84,#18,#18,#a1,#c2
	db #e2,#00,#82,#00,#a2,#c4,#00,#a5
	db #c9,#e1,#02,#2c,#cb,#2c,#a0,#c9
	db #e2,#01,#84,#18,#ff,#e0,#00,#a0
	db #c9,#e2,#01,#84,#18,#18,#a5,#e1
	db #02,#82,#2c,#cb,#2c,#a0,#c9,#e2
	db #01,#84,#14,#14,#a1,#ce,#e2,#00
	db #82,#00,#c2,#00,#a5,#c9,#e1,#02
	db #2c,#cb,#2c,#a0,#c9,#e2,#01,#84
	db #16,#a1,#c2,#e2,#00,#82,#00,#a2
	db #c4,#00,#a0,#c9,#e2,#01,#84,#16
	db #a5,#e1,#02,#82,#2c,#cb,#2c,#a0
	db #c9,#e2,#01,#84,#13,#13,#a1,#c2
	db #e2,#00,#82,#00,#a2,#c4,#00,#a5
	db #c9,#e1,#02,#2c,#cb,#2c,#a0,#c9
	db #e2,#01,#84,#13,#ff,#e0,#00,#a0
	db #c9,#e2,#01,#84,#18,#18,#a5,#e1
	db #02,#82,#2c,#cb,#2c,#a0,#c9,#e2
	db #01,#84,#14,#14,#a1,#ce,#e2,#00
	db #82,#00,#c2,#00,#a5,#c9,#e1,#02
	db #2c,#cb,#2c,#a0,#c9,#e2,#01,#84
	db #16,#a1,#c2,#e2,#00,#82,#00,#a2
	db #c4,#00,#a0,#c9,#e2,#01,#84,#16
	db #a5,#e1,#02,#82,#2c,#cb,#2c,#a0
	db #c9,#e2,#01,#84,#13,#13,#a1,#c2
	db #e2,#00,#82,#00,#a2,#c4,#00,#a5
	db #c9,#e1,#02,#2c,#cb,#2c,#c9,#2c
	db #cb,#2c,#ff,#e0,#02,#a0,#c9,#e2
	db #01,#84,#18,#18,#a5,#e1,#02,#82
	db #2c,#cb,#2c,#a0,#c9,#e2,#01,#84
	db #14,#14,#a1,#ce,#e2,#00,#82,#00
	db #c2,#00,#a5,#c9,#e1,#02,#2c,#cb
	db #2c,#a0,#c9,#e2,#01,#84,#16,#a1
	db #c2,#e2,#00,#82,#00,#a2,#c4,#00
	db #a0,#c9,#e2,#01,#84,#16,#a5,#e1
	db #02,#82,#2c,#cb,#2c,#a0,#c9,#e2
	db #01,#84,#13,#13,#a1,#c2,#e2,#00
	db #82,#00,#a2,#c4,#00,#a5,#c9,#e1
	db #02,#2c,#cb,#2c,#a0,#c9,#e2,#01
	db #84,#13,#ff,#e0,#fe,#a0,#cd,#e1
	db #05,#89,#1f,#1a,#88,#1f,#86,#21
	db #89,#23,#86,#24,#21,#26,#84,#23
	db #1f,#88,#1a,#89,#1a,#1f,#ff,#e0
	db #02,#a0,#c9,#e2,#01,#84,#18,#18
	db #a5,#e1,#02,#82,#2c,#cb,#2c,#a0
	db #c9,#e2,#01,#84,#18,#18,#a1,#ce
	db #e2,#00,#82,#00,#c2,#00,#a5,#c9
	db #e1,#02,#2c,#cb,#2c,#a0,#c9,#e2
	db #01,#84,#18,#a1,#c2,#e2,#00,#82
	db #00,#a2,#c4,#00,#a0,#c9,#e2,#01
	db #84,#18,#a5,#e1,#02,#82,#2c,#cb
	db #2c,#a0,#c9,#e2,#01,#84,#18,#18
	db #a1,#c2,#e2,#00,#82,#00,#a2,#c4
	db #00,#a5,#c9,#e1,#02,#2c,#cb,#2c
	db #a0,#c9,#e2,#01,#84,#18,#ff,#e0
	db #fd,#a0,#c9,#e2,#01,#84,#18,#18
	db #a5,#e1,#02,#82,#2c,#cb,#2c,#a0
	db #c9,#e2,#01,#84,#18,#18,#a1,#ce
	db #e2,#00,#82,#00,#c2,#00,#a5,#c9
	db #e1,#02,#2c,#cb,#2c,#a0,#c9,#e2
	db #01,#84,#18,#a1,#c2,#e2,#00,#82
	db #00,#a2,#c4,#00,#a0,#c9,#e2,#01
	db #84,#18,#a5,#e1,#02,#82,#2c,#cb
	db #2c,#a0,#c9,#e2,#01,#84,#18,#18
	db #a1,#c2,#e2,#00,#82,#00,#a2,#c4
	db #00,#a5,#c9,#e1,#02,#2c,#cb,#2c
	db #a0,#c9,#e2,#01,#84,#18,#ff,#e0
	db #02,#a0,#c9,#e2,#01,#84,#18,#18
	db #a5,#e1,#02,#82,#2c,#cb,#2c,#a0
	db #c9,#e2,#01,#84,#18,#18,#a1,#ce
	db #e2,#00,#82,#00,#c2,#00,#a5,#c9
	db #e1,#02,#2c,#cb,#2c,#a0,#c9,#e2
	db #01,#84,#1a,#a1,#c2,#e2,#00,#82
	db #00,#a2,#c4,#00,#a0,#c9,#e2,#01
	db #84,#1a,#a5,#e1,#02,#82,#2c,#cb
	db #2c,#a0,#c9,#e2,#01,#84,#1a,#1a
	db #a1,#c2,#e2,#00,#82,#00,#a2,#c4
	db #00,#a5,#c9,#e1,#02,#2c,#cb,#2c
	db #a0,#c9,#e2,#01,#84,#1a,#ff,#e0
	db #00,#a0,#c9,#e2,#01,#84,#1d,#1d
	db #a5,#e1,#02,#82,#2c,#cb,#2c,#a0
	db #c9,#e2,#01,#84,#1d,#1d,#a1,#ce
	db #e2,#00,#82,#00,#c2,#00,#a5,#c9
	db #e1,#02,#2c,#cb,#2c,#a0,#c9,#e2
	db #01,#84,#1f,#a1,#c2,#e2,#00,#82
	db #00,#a2,#c4,#00,#a0,#c9,#e2,#01
	db #84,#1f,#a5,#e1,#02,#82,#2c,#cb
	db #2c,#a0,#c9,#e2,#01,#84,#1f,#1f
	db #a1,#c2,#e2,#00,#82,#00,#a2,#c4
	db #00,#a5,#c9,#e1,#02,#2c,#cb,#2c
	db #c9,#2c,#cb,#2c,#ff,#e0,#00,#a0
	db #c0,#86,#30,#ff,#e0,#00,#a5,#cc
	db #e1,#02,#82,#2c,#2c,#29,#29,#cb
	db #28,#28,#c9,#27,#27,#cc,#2c,#2c
	db #29,#29,#cb,#28,#28,#c9,#27,#cc
	db #2c,#ff,#e0,#00,#a0,#c1,#e2,#00
	db #82,#3c,#48,#54,#ff,#e0,#00,#a0
	db #c1,#e1,#02,#8b,#30,#ff,#e0,#00
	db #a0,#c9,#e2,#01,#81,#1f,#1d,#1c
	db #1a,#18,#c1,#e1,#06,#24,#30,#3c
	db #48,#ff,#e0,#01,#a0,#c1,#e1,#07
	db #84,#24,#18,#0c,#ff,#e0,#00,#e3
	db #81,#5f,#c8,#e2,#00,#8a,#00,#ff
	db #e0,#00,#a0,#ca,#e1,#09,#8b,#3f
	db #ff,#e0,#00,#e3,#01,#42,#c8,#e1
	db #08,#8a,#39,#ff,#e0,#00,#a0,#c1
	db #e1,#06,#86,#46,#ff,#e0,#00,#a0
	db #c1,#e1,#07,#8b,#3f,#ff,#e0,#00
	db #a0,#c1,#e1,#06,#89,#34,#ff,#e0
	db #00,#a0,#c9,#e1,#03,#87,#24,#ff
	db #e0,#00,#a0,#c9,#e2,#01,#86,#30
	db #ff,#e0,#00,#a0,#c0,#86,#30,#ff
	db #0f,#00,#0f,#00,#0f,#00,#0f,#00
	db #01,#0f,#86,#da,#01,#00,#01,#00
	db #01,#0d,#01,#00,#01,#f3,#01,#00
	db #01,#0b,#83,#a1,#01,#00,#01,#00
	db #01,#0f,#01,#00,#01,#f1,#01,#00
	db #01,#0f,#06,#00,#0f,#ff,#01,#00
	db #01,#0a,#9e,#3c,#09,#00,#01,#00
	db #01,#0a,#01,#00,#03,#00,#01,#00
	db #05,#03,#8a,#8a,#82,#9c,#01,#00
	db #01,#0f,#0f,#ff,#01,#00,#01,#00
	db #07,#02,#04,#00,#87,#b1,#8b,#cd
	db #01,#0b,#0b,#ff,#01,#00,#01,#00
	db #01,#09,#09,#ff,#01,#00,#01,#00
	db #01,#0f,#04,#ff,#08,#00,#88,#d3
	db #01,#0b,#01,#00,#01,#f5,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#02,#84,#08,#82,#88,#84,#08
	db #01,#00,#01,#3c,#03,#ec,#01,#ef
	db #86,#86,#01,#f1,#01,#2b,#01,#ef
	db #88,#08,#82,#04,#04,#fe,#03,#02
	db #08,#00,#84,#08,#82,#88,#84,#08
	db #08,#00,#01,#0a,#01,#0a,#01,#0a
	db #01,#00,#01,#63,#03,#e2,#01,#d1
	db #01,#00,#01,#01,#01,#01,#01,#01
	db #03,#00,#04,#02,#04,#fc,#01,#05
;
.music_info
	db "Bob Morane Chevalerie (1987)(Infogrames)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"
