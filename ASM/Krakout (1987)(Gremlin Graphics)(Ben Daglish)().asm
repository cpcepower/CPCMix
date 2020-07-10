; Music of Krakout (1987)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 29/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "KRAKOUT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #a260
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

.la260
	db #b0,#01,#48,#03,#01,#8e,#02,#18
	db #0a,#5a,#00,#a0,#11,#00,#98,#0a
	db #a8,#0a,#9c,#0a,#a8,#0a,#9d,#0a
	db #a9,#0a,#a9,#0a,#9a,#14,#aa,#0a
	db #9e,#0a,#aa,#0a,#9f,#0a,#ab,#0a
	db #9d,#05,#9b,#0f,#10,#08,#11,#00
	db #9b,#0a,#a7,#0a,#9f,#0a,#a7,#0a
	db #a0,#0a,#a7,#0a,#a7,#0a,#9d,#14
	db #a9,#0a,#a1,#0a,#a9,#0a,#a2,#0a
	db #a9,#0a,#a0,#05,#9e,#0f,#10,#03
	db #13,#00,#11,#00,#98,#0a,#a8,#0a
	db #9c,#0a,#a8,#0a,#9d,#0a,#a9,#0a
	db #96,#0a,#a9,#0a,#10,#02,#14,#02
	db #12,#09,#13,#00,#11,#00,#93,#0a
	db #93,#0a,#9f,#0a,#9f,#05,#93,#0a
	db #93,#0a,#93,#05,#9f,#0a,#9f,#0a
	db #10,#04,#14,#04,#12,#02,#14,#05
	db #11,#00,#93,#0a,#93,#05,#93,#05
	db #9d,#05,#9f,#0a,#9d,#0a,#9a,#0a
	db #98,#0a,#97,#05,#93,#0a,#14,#07
	db #10,#02,#11,#00,#94,#0a,#94,#0a
	db #94,#05,#96,#0a,#98,#0a,#98,#0a
	db #98,#0a,#96,#05,#94,#0a,#14,#09
	db #10,#02,#14,#0a,#11,#00,#95,#0a
	db #a1,#0a,#92,#0a,#9e,#0a,#93,#0a
	db #9f,#0a,#94,#0a,#a0,#0a,#10,#0e
	db #14,#07,#98,#0a,#a4,#0a,#95,#0a
	db #a4,#0a,#96,#0a,#a6,#0a,#91,#0a
	db #a4,#0a,#8f,#0a,#a2,#0a,#94,#0a
	db #a4,#0a,#91,#0a,#a4,#0a,#96,#0a
	db #a6,#0a,#13,#00,#98,#0a,#a4,#0a
	db #95,#0a,#a4,#0a,#96,#0a,#a6,#0a
	db #97,#0a,#a6,#0a,#12,#02,#98,#0a
	db #a4,#0a,#95,#0a,#a4,#0a,#96,#0a
	db #a6,#0a,#91,#0a,#a4,#0a,#8f,#0a
	db #a2,#0a,#94,#0a,#a4,#0a,#91,#0a
	db #a4,#0a,#96,#0a,#a6,#0a,#11,#00
	db #91,#0a,#a4,#0a,#96,#0a,#a6,#0a
	db #98,#0a,#a8,#0a,#8c,#0a,#a8,#0a
	db #10,#03,#11,#00,#91,#0a,#a4,#0a
	db #96,#0a,#a6,#0a,#10,#02,#11,#00
	db #98,#0a,#a8,#0a,#9c,#0a,#a8,#0a
	db #9d,#0a,#a9,#0a,#a9,#0a,#9a,#14
	db #aa,#0a,#9e,#0a,#aa,#0a,#9f,#0a
	db #ab,#0a,#9d,#05,#9b,#0f,#10,#07
	db #14,#09,#11,#00,#98,#0a,#a8,#0a
	db #90,#0a,#a8,#0a,#91,#0a,#a9,#0a
	db #a9,#0a,#8e,#14,#aa,#0a,#92,#0a
	db #aa,#0a,#93,#0a,#ab,#0a,#91,#05
	db #8f,#0f,#10,#04,#11,#00,#00,#0a
	db #a8,#0a,#00,#0a,#a8,#0a,#00,#0a
	db #a9,#0a,#a9,#0a,#00,#14,#aa,#0a
	db #00,#0a,#aa,#0a,#00,#0a,#a9,#0a
	db #91,#05,#8f,#0f,#10,#02,#8c,#0a
	db #00,#96,#00,#01,#01,#8e,#02,#18
	db #0a,#5a,#00,#a0,#11,#00,#98,#0a
	db #ab,#0a,#9c,#0a,#ab,#0a,#9d,#0a
	db #ad,#0a,#ad,#0a,#9a,#14,#ad,#0a
	db #9e,#0a,#ad,#0a,#9f,#0a,#af,#0a
	db #af,#14,#10,#08,#11,#00,#9b,#0a
	db #ab,#0a,#9f,#0a,#ab,#0a,#a0,#0a
	db #ac,#0a,#ac,#0a,#9d,#14,#ad,#0a
	db #a1,#0a,#ad,#0a,#a2,#0a,#ae,#0a
	db #ae,#14,#10,#03,#13,#00,#11,#00
	db #98,#0a,#ab,#0a,#9c,#0a,#ab,#0a
	db #9d,#0a,#ad,#0a,#96,#0a,#ae,#0a
	db #10,#02,#14,#02,#12,#09,#01,#8b
	db #00,#f0,#0f,#04,#0d,#05,#11,#00
	db #13,#00,#c1,#05,#12,#04,#18,#fc
	db #10,#04,#14,#00,#02,#06,#0a,#0c
	db #0f,#00,#03,#21,#11,#00,#8c,#0a
	db #d4,#05,#d4,#05,#ab,#0a,#d4,#05
	db #d4,#05,#8c,#05,#8c,#05,#8c,#0a
	db #ab,#0a,#d4,#05,#d4,#05,#10,#0a
	db #14,#0a,#02,#18,#0a,#2c,#01,#8e
	db #03,#00,#11,#00,#95,#0a,#a5,#0a
	db #92,#0a,#a5,#0a,#93,#0a,#a6,#0a
	db #94,#0a,#a7,#0a,#10,#0c,#14,#07
	db #98,#0a,#a8,#0a,#95,#0a,#a8,#0a
	db #96,#0a,#a9,#0a,#91,#0a,#a9,#0a
	db #8f,#0a,#ab,#0a,#94,#0a,#a7,#0a
	db #91,#0a,#a9,#0a,#96,#0a,#a9,#0a
	db #13,#00,#98,#0a,#a8,#0a,#95,#0a
	db #a8,#0a,#96,#0a,#a9,#0a,#97,#0a
	db #ab,#0a,#12,#02,#98,#0a,#a8,#0a
	db #95,#0a,#a8,#0a,#96,#0a,#a9,#0a
	db #91,#0a,#a9,#0a,#8f,#0a,#ab,#0a
	db #94,#0a,#a7,#0a,#91,#0a,#a9,#0a
	db #96,#0a,#a9,#0a,#11,#00,#91,#0a
	db #a9,#0a,#96,#0a,#a9,#0a,#98,#0a
	db #ab,#0a,#8c,#0a,#ab,#0a,#10,#03
	db #11,#00,#91,#0a,#a9,#0a,#96,#0a
	db #a9,#0a,#10,#02,#11,#00,#98,#0a
	db #ab,#0a,#9c,#0a,#ab,#0a,#9d,#0a
	db #ad,#0a,#ad,#0a,#9a,#14,#ad,#0a
	db #9e,#0a,#ad,#0a,#9f,#0a,#af,#0a
	db #af,#14,#10,#07,#14,#09,#11,#00
	db #98,#0a,#ab,#0a,#9c,#0a,#ab,#0a
	db #9d,#0a,#ad,#0a,#ad,#0a,#9a,#14
	db #ad,#0a,#9e,#0a,#a1,#0a,#9f,#0a
	db #af,#0a,#af,#14,#10,#04,#11,#00
	db #00,#0a,#ab,#0a,#00,#0a,#ab,#0a
	db #00,#0a,#ad,#0a,#ad,#0a,#00,#14
	db #ad,#0a,#00,#0a,#ad,#0a,#00,#0a
	db #af,#0a,#af,#14,#10,#02,#b0,#0a
	db #00,#96,#00,#01,#01,#8c,#0f,#04
	db #0d,#02,#0a,#12,#11,#00,#02,#08
	db #d4,#05,#02,#03,#d4,#05,#d4,#05
	db #d4,#05,#02,#08,#d4,#05,#02,#03
	db #d4,#05,#d4,#05,#02,#08,#d4,#05
	db #02,#03,#d4,#05,#02,#08,#d4,#05
	db #02,#03,#d4,#05,#02,#08,#d4,#05
	db #d4,#05,#02,#03,#d4,#05,#d4,#05
	db #d4,#05,#10,#08,#11,#00,#02,#1b
	db #0f,#01,#19,#04,#0d,#04,#0a,#55
	db #bf,#0a,#bf,#0a,#c1,#0a,#c2,#14
	db #c1,#14,#bd,#0a,#be,#0a,#be,#0a
	db #bf,#0a,#c1,#14,#bf,#0a,#bd,#05
	db #bc,#0f,#02,#18,#0f,#00,#98,#0a
	db #b0,#0a,#9c,#0a,#b0,#0a,#9d,#0a
	db #b0,#0a,#b0,#0a,#9a,#14,#b2,#0a
	db #9e,#0a,#b2,#0a,#9f,#0a,#b2,#0a
	db #b2,#14,#10,#02,#02,#1b,#0f,#01
	db #c4,#0a,#c4,#0a,#bf,#0a,#c1,#0a
	db #c2,#0a,#c4,#05,#c2,#0f,#c1,#14
	db #c1,#0a,#bf,#0a,#be,#0a,#bf,#0a
	db #bd,#0a,#bb,#05,#ba,#0f,#02,#18
	db #0f,#00,#9b,#0a,#ae,#0a,#9f,#0a
	db #ae,#0a,#a0,#0a,#b0,#0a,#b0,#0a
	db #9d,#14,#b0,#0a,#a1,#0a,#b0,#0a
	db #a2,#0a,#b2,#0a,#b2,#14,#02,#1b
	db #0f,#01,#c4,#0a,#c7,#0a,#bf,#0a
	db #c2,#0a,#c0,#0a,#c4,#05,#c2,#0f
	db #c1,#14,#bf,#0a,#bd,#0a,#c1,#0a
	db #c2,#0a,#bd,#0a,#bb,#05,#ba,#0f
	db #02,#18,#0f,#00,#9b,#0a,#ae,#0a
	db #9f,#0a,#ae,#0a,#a0,#0a,#b0,#0a
	db #b0,#0a,#9d,#14,#b0,#0a,#a1,#0a
	db #b0,#0a,#a2,#0a,#b2,#0a,#b2,#14
	db #11,#00,#98,#0a,#b0,#0a,#9c,#0a
	db #b0,#0a,#9d,#0a,#b0,#0a,#96,#0a
	db #b2,#0a,#10,#02,#14,#04,#0f,#01
	db #19,#04,#13,#00,#02,#19,#c1,#0a
	db #c1,#0a,#be,#05,#c1,#0f,#c3,#0a
	db #c6,#0a,#c4,#0a,#c1,#14,#c1,#0a
	db #c6,#0a,#ca,#0a,#cb,#0a,#c9,#0a
	db #c8,#05,#c4,#0f,#02,#18,#0f,#00
	db #11,#00,#98,#0a,#b0,#0a,#9c,#0a
	db #b0,#0a,#9d,#0a,#b0,#0a,#96,#0a
	db #b2,#0a,#10,#02,#0f,#01,#12,#02
	db #13,#00,#0f,#01,#c6,#0a,#c6,#0a
	db #c1,#0a,#c6,#0a,#c3,#0a,#c6,#0a
	db #c4,#05,#bf,#0f,#c1,#0a,#c1,#0a
	db #be,#0a,#c1,#0a,#c3,#0a,#c6,#0a
	db #c4,#05,#c8,#0f,#0f,#00,#11,#00
	db #98,#0a,#b0,#0a,#9c,#0a,#b0,#0a
	db #9d,#0a,#b0,#0a,#96,#0a,#b2,#0a
	db #10,#02,#0f,#01,#12,#02,#0f,#04
	db #0d,#02,#0a,#12,#11,#00,#02,#08
	db #d4,#05,#02,#03,#d4,#05,#d4,#05
	db #d4,#05,#02,#08,#d4,#05,#02,#03
	db #d4,#05,#d4,#05,#02,#08,#d4,#05
	db #02,#03,#d4,#05,#02,#08,#d4,#05
	db #02,#03,#d4,#05,#02,#08,#d4,#05
	db #d4,#05,#02,#03,#d4,#05,#d4,#05
	db #d4,#05,#10,#10,#0a,#2c,#13,#00
	db #02,#18,#11,#00,#14,#0a,#95,#0a
	db #a8,#0a,#92,#0a,#ad,#0a,#93,#0a
	db #af,#0a,#94,#0a,#af,#0a,#10,#02
	db #02,#1d,#19,#03,#14,#00,#09,#0a
	db #0f,#01,#c7,#14,#cc,#28,#cc,#0a
	db #ca,#0a,#19,#fe,#cc,#14,#19,#fc
	db #c7,#14,#c5,#14,#be,#05,#c5,#0f
	db #12,#02,#13,#00,#02,#18,#11,#00
	db #14,#0a,#0f,#00,#95,#0a,#a8,#0a
	db #92,#0a,#ad,#0a,#93,#0a,#af,#0a
	db #94,#0a,#af,#0a,#10,#02,#02,#1a
	db #09,#05,#14,#00,#c7,#0a,#c7,#0a
	db #19,#fe,#0f,#01,#c5,#14,#0f,#00
	db #c5,#0a,#c5,#0a,#19,#fd,#0f,#01
	db #c3,#14,#0f,#00,#be,#0a,#c1,#0a
	db #c3,#0a,#c6,#0a,#c8,#0a,#c6,#0a
	db #19,#fc,#0f,#01,#c5,#14,#12,#02
	db #02,#1b,#11,#00,#c0,#0a,#c0,#0a
	db #c1,#05,#c5,#0f,#09,#12,#0f,#01
	db #19,#0c,#c3,#28,#10,#03,#bc,#0a
	db #bc,#0a,#bc,#05,#be,#0f,#c0,#0a
	db #c0,#0a,#c1,#05,#c5,#0f,#09,#00
	db #0f,#04,#0d,#02,#0a,#12,#11,#00
	db #02,#08,#d4,#05,#02,#03,#d4,#05
	db #d4,#05,#d4,#05,#02,#08,#d4,#05
	db #02,#03,#d4,#05,#d4,#05,#02,#08
	db #d4,#05,#02,#03,#d4,#05,#02,#08
	db #d4,#05,#02,#03,#d4,#05,#02,#08
	db #d4,#05,#d4,#05,#02,#03,#d4,#05
	db #d4,#05,#d4,#05,#10,#06,#14,#07
	db #13,#00,#09,#09,#11,#00,#02,#1b
	db #0f,#03,#0d,#01,#0a,#55,#c3,#0a
	db #c3,#0a,#c5,#0a,#c6,#14,#c5,#14
	db #c1,#0a,#c2,#0a,#c2,#0a,#c3,#0a
	db #c5,#14,#c3,#0a,#c1,#05,#c0,#0f
	db #02,#18,#0f,#00,#98,#0a,#b0,#0a
	db #9c,#0a,#b0,#0a,#9d,#0a,#b0,#0a
	db #b0,#0a,#9a,#14,#b2,#0a,#9e,#0a
	db #b2,#0a,#9f,#0a,#b2,#0a,#b2,#14
	db #10,#02,#14,#09,#12,#02,#14,#00
	db #0d,#02,#0f,#04,#09,#00,#0a,#12
	db #11,#00,#02,#08,#d4,#05,#02,#03
	db #d4,#05,#d4,#05,#d4,#05,#02,#08
	db #d4,#05,#02,#03,#d4,#05,#d4,#05
	db #02,#08,#d4,#05,#02,#03,#d4,#05
	db #02,#08,#d4,#05,#02,#03,#d4,#05
	db #02,#08,#d4,#05,#d4,#05,#02,#03
	db #d4,#05,#d4,#05,#d4,#05,#10,#06
	db #11,#00,#00,#c8,#10,#c8,#00
	db #01
.la918
	db #2a,#00,#4c,#00,#01,#8e,#02,#18
	db #0a,#2c,#11,#00,#98,#0a,#a4,#0a
	db #9c,#0a,#a4,#0a,#14,#fe,#10,#02
	db #14,#00,#98,#0a,#a4,#0a,#9c,#0a
	db #a4,#0a,#a4,#05,#9f,#05,#9c,#05
	db #9f,#05,#98,#14,#00,#01,#01,#8e
	db #02,#18,#0a,#2c,#11,#00,#98,#0a
	db #a8,#0a,#9c,#0a,#a8,#0a,#14,#fe
	db #10,#02,#14,#00,#98,#0a,#a8,#0a
	db #9c,#0a,#a8,#0a,#98,#28,#00,#01
	db #01,#8c,#02,#19,#0a,#5a,#19,#02
	db #0f,#01,#0d,#04,#c6,#0a,#c6,#0a
	db #c4,#05,#c1,#0f,#bf,#0a,#bc,#0a
	db #ba,#05,#bc,#0f,#ba,#0a,#bc,#05
	db #bd,#05,#be,#05,#c1,#05,#c3,#05
	db #c1
	db #05
.music_end equ $ + 4
.la996 equ $ + 4
	db #c6,#28,#00,#01,#00
	ld bc,#f500             ; test player
.la99a
	in a,(c)
	and #01
	jr z,la99a
	jp la9e8
;
.la9a3
.init_music     ; a=0,...
;
	ld hl,la260
	or a
	jr z,la9ac
	ld hl,la918
.la9ac
	push hl
	ld hl,lb032
	ld de,lb033
	ld bc,#007d
	ld (hl),#00
	ldir
	pop hl
	ld (lafbe),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld a,l
	ld (lb049),a
	ld a,h
	ld (lb04a),a
	push hl
	add hl,de
	ld a,l
	ld (lb073),a
	ld a,h
	ld (lb074),a
	pop hl
	add hl,bc
	ld a,l
	ld (lb09d),a
	ld a,h
	ld (lb09e),a
	ld a,#01
	ld (la996),a
	ret
;
.play_music
.la9e8
;
	ld a,(la996)
	or a
	ret z
	xor a
	ld (lafc1),a
	ld ix,lb032
	call laa0d
	ld a,#01
	ld (lafc1),a
	ld ix,lb05c
	call laa0d
	ld a,#02
	ld (lafc1),a
	ld ix,lb086
.laa0d
	ld a,(ix+#00)
	or a
	jr z,laa89
	dec (ix+#00)
	ld a,(ix+#08)
	or a
	jr z,laa22
	dec a
	ld (ix+#08),a
	jr laa37
.laa22
	ld a,(ix+#0a)
	or a
	jr z,laa2e
	dec a
	ld (ix+#0a),a
	jr laa37
.laa2e
	ld a,(ix+#09)
	ld (ix+#0a),a
	inc (ix+#0b)
.laa37
	ld a,(ix+#01)
	and #03
	ld l,a
	ld h,#00
	add hl,hl
	ld de,lafda
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call lab01
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(ix+#11)
	add h
	ld h,a
	ld (ix+#0d),h
	ld a,(ix+#01)
	srl a
	srl a
	srl a
	and #07
	ld b,a
	call nz,lad0a
	ld a,(ix+#01)
	rlca
	rlca
	and #03
	ld b,a
	call nz,laca9
	call laccd
	ld a,(ix+#02)
	and #03
	call nz,lacef
	call lab73
	call lab02
	ld c,#0e
	jp l7fe7
.laa89
	ld a,(ix+#16)
	ld (ix+#24),a
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,(hl)
	or a
	jp z,lad5e
	bit 7,a
	jp nz,lad76
	cp #1a
	jp nc,laab7
	push hl
	pop iy
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,lafe0
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call lab01
.laab7
	ld l,(ix+#17)
	ld h,(ix+#18)
	inc hl
	inc hl
	ld (ix+#17),l
	ld (ix+#18),h
	ld a,(lafc1)
	or a
	jp nz,laa0d
	ld de,(lafbe)
	push hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	inc hl
	inc hl
	add hl,de
	ex de,hl
	pop hl
	or a
	sbc hl,de
	jp c,laa0d
;
.stop_music
.laae5
;
	xor a
	ld (la996),a
	push hl
	push de
	push bc
	ld c,#08
	xor a
	call l7fe7
	inc c
	xor a
	call l7fe7
	inc c
	xor a
	call l7fe7
	ld c,#0e
	call l7fe7
	pop bc
	pop de
	pop hl
	ret
.lab01
	jp (hl)
.lab02
	ld a,(ix+#28)
	bit 7,a
	ld c,#00
	jr z,lab0d
	ld c,#ff
.lab0d
	add l
	ld l,a
	ld a,h
	adc c
	ld h,a
	ld a,(lafc1)
	add a
	ld e,a
	ld c,l
	call lb0b0
	ld a,e
	inc a
	ld c,h
	call lb0b0
	ld a,(ix+#06)
	ld c,a
	ld a,(lafc1)
	add #08
	call lb0b0
	bit 2,(ix+#02)
	jr z,lab3b
	ld c,(ix+#20)
	ld a,#06
	call lb0b0
.lab3b
	bit 6,(ix+#02)
	jr z,lab67
	ld c,(ix+#21)
	ld a,#0b
	call lb0b0
	ld c,(ix+#22)
	ld a,#0c
	call lb0b0
	ld a,(ix+#02)
	and #03
	jr z,lab67
	ld a,(ix+#24)
	and #80
	jr nz,lab67
	ld c,(ix+#23)
	ld a,#0d
	call lb0b0
.lab67
	ld a,(lafc0)
	or #80
	ld c,a
	ld a,#07
	call lb0b0
	ret
.lab73
	call labac
	ld a,(ix+#24)
	and #80
	ret nz
	ld a,(ix+#0c)
	or (ix+#0d)
	call z,lac19
	bit 2,(ix+#02)
	call nz,labca
	bit 3,(ix+#02)
	call nz,lac33
	bit 4,(ix+#02)
	call nz,lac1e
	bit 5,(ix+#02)
	jr z,laba4
	ld (ix+#06),#10
.laba4
	bit 6,(ix+#02)
	call nz,labea
	ret
.labac
	ld a,(lafc1)
	ld d,#08
	ld e,#01
.labb3
	or a
	jr z,labbd
	dec a
	rlc d
	rlc e
	jr labb3
.labbd
	ld a,e
	xor #ff
	ld e,a
	ld a,(lafc0)
	and e
	or d
	ld (lafc0),a
	ret
.labca
	ld a,(ix+#0c)
	or (ix+#0d)
	ret z
	ld a,(lafc1)
	ld d,#08
.labd6
	or a
	jr z,labde
	dec a
	rlc d
	jr labd6
.labde
	ld a,d
	xor #ff
	ld d,a
	ld a,(lafc0)
	and d
	ld (lafc0),a
	ret
.labea
	ld (ix+#21),l
	ld (ix+#22),h
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	ret
.lac19
	xor a
	ld (ix+#06),a
	ret
.lac1e
	ld a,(lafc1)
	ld d,#01
.lac23
	or a
	jr z,lac2b
	dec a
	rlc d
	jr lac23
.lac2b
	ld a,(lafc0)
	or d
	ld (lafc0),a
	ret
.lac33
	push hl
	ld b,#06
.lac36
	srl h
	rr l
	djnz lac36
	ld a,l
	pop hl
	ld (ix+#20),a
	ret
.lac42
	dec (ix+#27)
	ret nz
	ld a,(ix+#25)
	ld (ix+#27),a
	ld a,(ix+#04)
	srl a
	srl a
	srl a
	srl a
	add (ix+#06)
	cp (ix+#03)
	jr c,lac69
	inc (ix+#01)
	ld a,(ix+#03)
	ld (ix+#27),#01
.lac69
	ld (ix+#06),a
	ret
.lac6d
	dec (ix+#27)
	ret nz
	ld a,(ix+#26)
	ld (ix+#27),a
	ld a,(ix+#04)
	and #0f
	ld b,a
	ld c,(ix+#05)
	srl c
	srl c
	srl c
	srl c
	ld a,(ix+#03)
	cp c
	jr nc,lac8f
	ld c,a
.lac8f
	ld a,(ix+#06)
	sub b
	jr c,lac98
	cp c
	jr nc,lac9c
.lac98
	inc (ix+#01)
	ld a,c
.lac9c
	ld (ix+#06),a
.lac9f
	ret
.laca0
	ld a,(ix+#01)
	xor #04
	ld (ix+#01),a
	ret
.laca9
	ld a,(ix+#0a)
	or a
	call z,laca0
	ld a,b
	cp #02
	jr nz,lacc0
	ld a,(ix+#01)
	and #04
	ret z
	srl h
	rr l
	ret
.lacc0
	ld a,(ix+#01)
	and #04
	ret z
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	ret
.laccd
	ld a,(ix+#08)
	or a
	ret nz
	ld a,(ix+#0a)
	or a
	ret nz
	ld a,(ix+#0b)
	bit 0,a
	ret z
	and #03
	cp #02
	jr c,lace9
	ld a,(ix+#19)
	add l
	ld l,a
	ret
.lace9
	ld a,l
	sub (ix+#19)
	ld l,a
	ret
.lacef
	cp #01
	jr z,lacf4
	ret
.lacf4
	ld a,(ix+#24)
	and #7f
	jr nz,lad06
	ld a,(ix+#24)
	xor #80
	or (ix+#16)
	ld (ix+#24),a
.lad06
	dec (ix+#24)
	ret
.lad0a
	ld a,(ix+#08)
	or a
	ret nz
	ld a,b
	cp #01
	jr z,lad2f
	ld e,(ix+#10)
	ld d,#00
	cp #03
	jr nz,lad27
	ld a,e
	cpl
	add #01
	ld e,a
	ld a,d
	cpl
	adc #00
	ld d,a
.lad27
	add hl,de
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.lad2f
	push hl
	ld c,(ix+#10)
	ld b,#00
	ld e,(ix+#0e)
	ld d,(ix+#0f)
	or a
	sbc hl,de
	pop hl
	ret z
	jr c,lad4e
	or a
	sbc hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr nc,lad57
	jr lad56
.lad4e
	add hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr c,lad57
.lad56
	ex de,hl
.lad57
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.lad5e
	ld (ix+#0c),#00
	ld (ix+#0d),#00
.lad66
	inc hl
	ld a,(hl)
	cp #ff
	jp z,lade5
	ld (ix+#00),a
	call ladf4
	jp laab7
.lad76
	push hl
	res 7,a
	call ladad
	add (ix+#15)
	ld b,#00
.lad81
	cp #0c
	jr c,lad8a
	sub #0c
	inc b
	jr lad81
.lad8a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,lafc2
	add hl,de
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld a,b
	or a
	jr z,lad66
.lada0
	srl (ix+#0d)
	rr (ix+#0c)
	djnz lada0
	jp lad66
.ladad
	push af
	ld a,(ix+#29)
	or a
	jr z,lade3
	pop af
	push af
	add (ix+#29)
	ld b,#00
.ladbb
	cp #0c
	jr c,ladc4
	sub #0c
	inc b
	jr ladbb
.ladc4
	ld l,a
	ld h,#00
	add hl,hl
	ld de,lafc2
	add hl,de
	ld a,(hl)
	ld (ix+#0e),a
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	ld a,b
	or a
	jr z,lade3
.ladd9
	srl (ix+#0f)
	rr (ix+#0e)
	djnz ladd9
.lade3
	pop af
	ret
.lade5
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	jp laab7
.ladf4
	ld (ix+#06),#00
	ld a,(ix+#07)
	ld (ix+#08),a
	ld a,(ix+#01)
	and #fc
	ld (ix+#01),a
	ld (ix+#27),#01
	ret
.lae0b
	ld a,(iy+#01)
	bit 7,a
	jr z,lae18
	and #0f
	ld (ix+#03),a
	ret
.lae18
	push ix
	and #0f
	ld ix,lb032
	ld (ix+#03),a
	ld ix,lb05c
	ld (ix+#03),a
	ld ix,lb086
	ld (ix+#03),a
	pop ix
	ret
.lae34
	push hl
	push de
	push bc
	ld a,(iy+#01)
	srl a
	srl a
	srl a
	srl a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,lb012
	add hl,de
	ld c,(hl)
	sla c
	sla c
	sla c
	sla c
	inc hl
	ld a,(hl)
	ld (ix+#25),a
	ld a,(iy+#01)
	and #0f
	ld l,a
	ld h,#00
	add hl,hl
	ld de,lb012
	add hl,de
	ld a,(hl)
	and #0f
	or c
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	ld (ix+#27),#01
	pop bc
	pop de
	pop hl
	ret
.lae79
	ld a,(iy+#01)
	res 6,(ix+#02)
	bit 7,a
	jr z,lae8c
	set 6,(ix+#02)
	set 5,(ix+#02)
.lae8c
	res 7,a
	or a
	jr z,lae9d
	set 2,(ix+#02)
	cp #20
	jr nc,laea6
	ld (ix+#20),a
	ret
.lae9d
	ld a,(ix+#02)
	and #03
	ld (ix+#02),a
	ret
.laea6
	set 3,(ix+#02)
	cp #21
	ret c
	set 4,(ix+#02)
	bit 6,a
	ret z
	res 6,a
	res 4,a
	ld (ix+#20),a
	ret
.laebc
	ret
.laebd
	ld a,(iy+#01)
	or a
	jr z,laed1
	ld (ix+#16),a
	ld a,(ix+#02)
	and #fc
	or #01
	ld (ix+#02),a
	ret
.laed1
	ld a,(ix+#02)
	and #fc
	ld (ix+#02),a
	res 7,(ix+#24)
	ld (ix+#16),#00
	ret
.laee2
	ld a,(iy+#01)
	ld (ix+#09),a
	ld (ix+#0a),a
	ret
.laeec
	ret
.laeed
	ld a,(iy+#01)
	and #03
	rrca
	rrca
	ld b,a
	ld a,(ix+#01)
	and #3f
	or b
	ld (ix+#01),a
	ret
.laeff
	ld a,(iy+#01)
	ld (ix+#07),a
	ret
.laf06
	ld a,(iy+#01)
	ld (ix+#05),a
	ret
.laf0d
	ld a,(iy+#01)
	xor #ff
	srl a
	srl a
	srl a
	srl a
	srl a
	srl a
	ld (ix+#19),a
	ret
.laf22
	ld a,(iy+#01)
	ld (ix+#11),a
	ret
.laf29
	ld a,(iy+#01)
	ld (ix+#10),a
	ret
.laf30
	ret
.laf31
	ld a,(iy+#01)
	and #07
	ld b,a
	sla b
	sla b
	sla b
	ld a,(ix+#01)
	and #c7
	or b
	ld (ix+#01),a
	ret
.laf47
	ld a,(ix+#1c)
	or a
	jr nz,laf50
	ld a,(iy+#01)
.laf50
	dec a
	ld (ix+#1c),a
	ret z
	ld a,(ix+#1a)
	ld (ix+#17),a
	ld a,(ix+#1b)
	ld (ix+#18),a
	ret
.laf62
	ld a,(ix+#17)
	ld (ix+#1a),a
	ld a,(ix+#18)
	ld (ix+#1b),a
	ret
.laf6f
	ld a,(ix+#1f)
	or a
	jr nz,laf78
	ld a,(iy+#01)
.laf78
	dec a
	ld (ix+#1f),a
	ret z
	ld a,(ix+#1d)
	ld (ix+#17),a
	ld a,(ix+#1e)
	ld (ix+#18),a
	ret
.laf8a
	ld a,(ix+#17)
	ld (ix+#1d),a
	ld a,(ix+#18)
	ld (ix+#1e),a
	ret
.laf97
	ld a,(iy+#01)
	ld (ix+#15),a
	ret
.laf9e
	ld a,(iy+#01)
	ld (ix+#23),a
	ret
.lafa5
	ld a,(iy+#01)
	ld (ix+#28),a
	ret
.lafac
	ret
.lafad
	ld a,(iy+#01)
	add (ix+#15)
	ld (ix+#15),a
	ret
.lafb7
	ld a,(iy+#01)
	ld (ix+#29),a
	ret
.lafbe
	db #00,#00
.lafc0
	db #00
.lafc1
	db #00
.lafc2
	dw #0edd,#0e07,#0d3e,#0c80
	dw #0bcc,#0b23,#0a83,#09ec
	dw #095d,#08d6,#0857,#07e0
.lafda
	dw lac42,lac6d,lac9f
.lafe0
	dw lae0b,lae34,lae79,laebc
	dw laebd,laee2,laeec,laeed
	dw laeff,laf06,laf0d,laf22
	dw laf29,laf30,laf31,laf47
	dw laf62,laf6f,laf8a,laf97
	dw laf9e,lafa5,lafac,lafad
	dw lafb7
.lb012
	db #0f,#01,#0d,#01,#0b,#01,#09,#01
	db #07,#01,#05,#01,#03,#01,#02,#01
	db #01,#01,#01,#0a,#01,#1e,#01,#46
	db #01,#6e,#01,#b4,#01,#dc,#01,#ff
.lb033 equ $ + 1
.lb032
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb049 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb04a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb05c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb074 equ $ + 2
.lb073 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb086 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb09e equ $ + 4
.lb09d equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.lb0b0
	push af
	push bc
	push de
	ld b,#f4
	ld de,#c000
	out (c),a
	ld b,#f6
	out (c),d
	out (c),e
	ld b,#f4
	out (c),c
	ld a,#80
	ld b,#f6
	out (c),a
	out (c),e
	pop de
	pop bc
	pop af
	ret
	
.l7fe7
	push bc
	push de
	ld b,#f4
	ld de,#c000
	out (c),c
	ld b,#f6
	out (c),d
	out (c),e
	ld b,#f4
	out (c),a
	ld a,#80
	ld b,#f6
	out (c),a
	out (c),e
	pop de
	pop bc
	ret
;
; #86c0
; xor a
; call #a9a3
;
; #86cd
; call #a997
; ld a,(#a996)
; or a
; call z,#a9a3
;
.music_info
	db "Krakout (1987)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
