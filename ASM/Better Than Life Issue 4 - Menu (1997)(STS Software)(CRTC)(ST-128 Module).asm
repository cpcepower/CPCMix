; Music of Better Than Life Issue 4 - Menu (1997)(STS Software)(CRTC)(ST-128 Module)
; Ripped by Megachur the 27/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BETTLI4M.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #a600

	read "music_header.asm"

	jp la633	; init
	jp la7a5	; play
	jp la6b9	; stop
	jp la616	; sound fx
	ld bc,lab37
	ld de,lab66
	ld hl,lab95
	ret
.la616
	ld ix,labb4
	ld (la7d6),ix
	ld (ix+#0a),#00
	ld (ix+#0b),#20
	ld (ix+#0e),#01
	ld (ix+#0f),d
	ld a,e
	and #f0
	jp la8e5
;
.real_init_music
.la633
;
	ld iy,labe0
.la637
	dec e
	jr z,la644
	ld c,(iy+#00)
	ld b,(iy+#01)
	add iy,bc
	jr la637
.la644
	ld b,#03
	ld ix,lab27
	ld de,#002f
.la64d
	inc iy
	inc iy
	ld (ix-#06),#01
	ld (ix+#09),#00
	ld (ix+#0b),#ff
	ld (ix+#0c),#00
	ld (ix+#0d),#0f
	ld (ix+#0e),#01
	ld (ix+#13),#00
	ld l,(iy+#00)
	ld (ix-#02),l
	ld h,(iy+#01)
	ld (ix-#01),h
	ld a,(hl)
	ld (ix-#05),a
	inc hl
	ld a,(hl)
	ld (ix-#04),a
	inc hl
	ld a,(hl)
	ld (ix-#03),a
	add ix,de
	djnz la64d
	ld a,#01
	ld (la7a6),a
	ld a,(iy+#04)
	ld (la7c9),a
	ld e,#05
	add iy,de
	ld (labda),iy
	ld a,#38
	ld (la7f3),a
	ld hl,labdc
	ld b,#04
.la6a8
	ld (hl),#ff
	inc hl
	djnz la6a8
	ld a,#0c
	ld c,d
	call la85a
	ld a,#0d
	ld c,d
	call la85a
;
.stop_music
.la6b9
;
	ld a,#08
	ld c,#00
	call la85a
	ld a,#09
	ld c,#00
	call la85a
	ld a,#0a
	ld c,#00
	call la85a
	ld a,#07
	ld c,#1f
.la6d3 equ $ + 1
	jp la85a
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
	dw #000f,#000e,#000d,#000c
	dw #000c,#000b,#000a,#0000
;
.play_music
.la7a5
;
.la7a6 equ $ + 1
	ld a,#00
	dec a
	ld (la7a6),a
	jr nz,la7cd
.la7ad
	ld ix,lab27
	call la878
	jr nc,la817
	ld ix,lab56
	call la878
	jr nc,la817
	ld ix,lab85
	call la878
	jr nc,la817
.la7c9 equ $ + 1
	ld a,#00
	ld (la7a6),a
.la7cd
	ld ix,lab27
	call laa17
.la7d6 equ $ + 2
	ld ix,lab56
	call laa17
	ld ix,lab85
	call laa17
	ld hl,labdc
.la7e6 equ $ + 1
	ld a,#00
	cp (hl)
	jr z,la7f1
	ld (hl),a
	ld c,a
	ld a,#06
	call la85a
.la7f1
	inc hl
.la7f3 equ $ + 1
	ld a,#00
	cp (hl)
	jr z,la7fe
	ld (hl),a
	ld c,a
	ld a,#07
	call la85a
.la7fe
	inc hl
.la800 equ $ + 1
	ld a,#00
	cp (hl)
	jr z,la80b
	ld (hl),a
	ld c,a
	ld a,#0b
	call la85a
.la80b
	inc hl
.la80d equ $ + 1
	ld a,#00
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp la85a
.la817
	ld ix,lab27
	ld b,#03
.la81d
	ld l,(ix-#02)
	ld h,(ix-#01)
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	cp #80
	jr nz,la830
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
.la830
	ld (ix-#02),l
	ld (ix-#01),h
	ld a,(hl)
	inc hl
	ld (ix-#05),a
	ld a,(hl)
	inc hl
	ld (ix-#04),a
	ld a,(hl)
	ld (ix-#03),a
	ld (ix+#0d),#0f
	ld (ix-#06),#01
	ld (ix+#13),#00
	ld de,#002f
	add ix,de
	djnz la81d
	jp la7ad
.la85a
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
.la878
	ld (ix+#1c),#00
	scf
	dec (ix-#06)
	ret nz
	ld l,(ix-#04)
	ld h,(ix-#03)
	ld a,(hl)
	cp #ff
	ret z
	or a
	jr z,la8d7
	cp #fe
	jr z,la8c8
	bit 7,a
	jr nz,la8ba
	ld (ix+#0f),a
	inc hl
	ld e,(hl)
	bit 7,e
	jr nz,la8a4
	inc hl
	ld a,(hl)
	call la8e5
.la8a4
	res 7,e
.la8a6
	inc hl
	ld (ix-#04),l
	ld (ix-#03),h
	ld (ix+#0a),#00
	ld (ix+#0b),#20
	ld (ix-#06),e
	scf
	ret
.la8ba
	and #7f
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	call la8e5
	ld e,#01
	jr la8a6
.la8c8
	ld c,#00
	ld (ix+#0b),#ff
	ld (ix+#10),c
	ld a,(ix-#08)
	call la85a
.la8d7
	inc hl
	ld a,(hl)
	ld (ix-#06),a
	inc hl
	ld (ix-#04),l
	ld (ix-#03),h
	scf
	ret
.la8e5
	ld b,a
	and #f0
	cp (ix+#0e)
	jr z,la917
	push de
	push hl
	ld (ix+#0e),a
	ld hl,(labda)
	rrca
	add #20
	ld e,a
	ld d,#00
	add hl,de
	push ix
	pop de
	ld c,#08
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop hl
	pop de
	ld (ix+#0d),#0f
.la917
	ld a,b
	and #0f
	ret z
	cp #0f
	jr z,la961
	cp #0e
	jr z,la97d
	cp #0d
	jr z,la997
	cp #0c
	jr z,la99d
	cp #0b
	jp z,la9d2
	cp #0a
	jr z,la94d
	cp #08
	jr z,la94d
	cp #06
	jp z,la9d8
	cp #02
	jp z,la9e8
	cp #03
	jp z,la9ee
	cp #01
	jp z,laa0c
	ret
.la94d
	ld (la80d),a
	ld (ix+#0c),#10
	inc hl
	ld a,(hl)
	ld (la800),a
	xor a
	ld (ix+#09),a
	ld (ix+#13),a
	ret
.la961
	inc hl
	ld a,(hl)
	add a
.la964
	ld b,#00
	ld (ix+#0c),b
	ld (ix+#13),b
	push hl
	ld c,a
	ld hl,(labda)
	add hl,bc
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	pop hl
	ret
.la97d
	inc hl
	xor a
	ld (ix+#09),a
	inc a
	ld (ix+#13),a
	ld a,(hl)
	and #0f
	ld (ix+#14),a
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#15),a
	ret
.la997
	inc hl
	ld a,(hl)
	ld (la7c9),a
	ret
.la99d
	inc hl
	ld d,(hl)
	push hl
	ld a,d
	and #0f
	rla
	rla
	rla
	add #20
	ld bc,(labda)
	add #02
	ld l,a
	ld h,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#02),a
	inc hl
	ld a,(hl)
	ld (ix+#03),a
	ld a,d
	and #f0
	rra
	add #20
	add #04
	ld l,a
	ld h,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	pop hl
	ret
.la9d2
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	ret
.la9d8
	inc hl
	ld a,(hl)
	and #0f
	ld (ix+#0d),a
	ld a,(hl)
	and #f0
	rrca
	rrca
	rrca
	jp la964
.la9e8
	inc hl
	ld a,(hl)
	and #0f
	jr la9f4
.la9ee
	inc hl
	ld a,(hl)
	and #0f
	neg
.la9f4
	ld (ix+#1c),a
	ld a,(hl)
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld (ix+#21),a
	ld (ix+#22),a
	xor a
	ld (ix+#1d),a
	ld (ix+#1e),a
	ret
.laa0c
	xor a
	ld (ix+#09),a
	ld (ix+#0c),a
	ld (ix+#13),a
	ret
.laa17
	ld a,(ix+#0b)
	cp #ff
	ret z
	ld e,(ix+#0a)
	ld d,#00
	ld c,d
	ld a,(ix+#0f)
	cp #68
	jr z,laa5c
	ld a,(ix+#09)
	or a
	jr z,laa38
	ld l,(ix+#08)
	ld h,a
	add hl,de
	ld c,(hl)
	jr laa55
.laa38
	ld a,(ix+#13)
	or a
	jr z,laa55
	dec a
	jr z,laa49
	dec a
	jr z,laa4d
	ld c,(ix+#15)
	jr laa52
.laa49
	ld a,#02
	jr laa52
.laa4d
	ld c,(ix+#14)
	ld a,#03
.laa52
	ld (ix+#13),a
.laa55
	ld a,(ix-#05)
	add (ix+#0f)
	add c
.laa5c
	ld c,a
	ld b,d
	ld hl,la6d3
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld a,(ix+#1c)
	or a
	jr z,laa92
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	dec (ix+#22)
	jr nz,laaa0
	ld a,e
	ld e,(ix+#1c)
	bit 7,e
	jr z,laa80
	dec d
.laa80
	add hl,de
	ld e,a
	ld d,#00
	ld (ix+#1d),l
	ld (ix+#1e),h
	ld a,(ix+#21)
	ld (ix+#22),a
	jr laaa0
.laa92
	ld l,(ix+#04)
	ld h,(ix+#05)
	add hl,de
	add hl,de
	push de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	pop de
.laaa0
	add hl,bc
	ld a,(ix-#09)
	ld c,l
	call la85a
	ld a,(ix-#09)
	inc a
	ld c,h
	call la85a
	ld (ix+#11),l
	ld (ix+#12),h
	ld l,(ix+#00)
	ld h,(ix+#01)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,laad6
	ld c,(ix+#0d)
	cp c
	jr c,laac9
	ld a,c
.laac9
	ld (ix+#10),a
	or (ix+#0c)
	ld c,a
	ld a,(ix-#08)
	call la85a
.laad6
	ld l,(ix+#02)
	ld h,(ix+#03)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,laaf8
	ld c,(ix-#07)
	or a
	jr z,laaef
	ld (la7e6),a
	ld a,c
	sub #40
	ld c,a
.laaef
	ld hl,laaf7
	ld (hl),c
	ld hl,la7f3
.laaf7 equ $ + 1
	set 0,(hl)
.laaf8
	dec (ix+#0b)
	jr nz,lab14
	ld a,(ix+#07)
	or a
	jr z,lab0d
	ld (ix+#0b),a
	ld a,(ix+#06)
	ld (ix+#0a),a
	ret
.lab0d
	ld hl,lab56
	ld (la7d6),hl
	ret
.lab14
	db #1c,#dd,#73,#0a,#c9,#a4,#43,#52
	db #54,#43,#00,#08,#de,#00,#00,#00
.lab27 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lab37 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#02,#09,#e6,#00,#00,#00,#00
.lab56 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lab66 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#0a,#ee,#00,#00,#00,#00,#00
.lab85 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lab95 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #09,#e6,#00,#00,#00,#00,#00,#00
.labb4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#12,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.labda equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.labe0 equ $ + 4
.labdc
	db #00,#00,#00,#00,#8b,#05,#1a,#b1
	db #35,#b1,#50,#b1,#ba,#03,#07,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#9a
	db #af,#ba,#af,#da,#af,#00,#00,#1a
	db #b0,#b9,#af,#b9,#af,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#3a
	db #b0,#b9,#af,#5a,#b0,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#9a
	db #b0,#ba,#b0,#b9,#af,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#9a
	db #b0,#b8,#af,#b9,#af,#00,#00,#da
	db #b0,#fa,#b0,#b9,#af,#00,#00,#1b
	db #02,#20,#1b,#82,#24,#81,#27,#82
	db #24,#81,#27,#82,#24,#81,#27,#82
	db #24,#81,#22,#82,#1b,#82,#1b,#82
	db #24,#81,#27,#82,#24,#81,#27,#82
	db #24,#81,#27,#82,#24,#81,#22,#82
	db #ff,#e8,#c0,#68,#81,#68,#81,#68
	db #81,#68,#02,#f0,#e8,#c0,#68,#81
	db #68,#81,#68,#81,#68,#81,#68,#81
	db #68,#02,#f0,#e8,#c0,#68,#81,#68
	db #81,#68,#81,#68,#81,#68,#81,#68
	db #02,#f0,#e8,#c0,#68,#81,#68,#81
	db #68,#81,#68,#81,#68,#81,#68,#02
	db #f0,#e8,#c0,#68,#81,#ff,#33,#0c
	db #7e,#04,#30,#04,#7e,#08,#33,#0c
	db #7e,#04,#30,#04,#7e,#08,#ff,#1b
	db #02,#20,#1b,#82,#24,#81,#27,#82
	db #24,#81,#27,#82,#24,#81,#27,#82
	db #24,#81,#22,#82,#1b,#82,#1b,#82
	db #24,#81,#27,#82,#24,#81,#27,#82
	db #24,#81,#27,#81,#b7,#10,#a4,#20
	db #22,#82,#ff,#33,#0c,#7e,#04,#30
	db #04,#7e,#08,#33,#0c,#7e,#04,#30
	db #02,#7e,#08,#38,#02,#11,#ff,#9b
	db #20,#e8,#c0,#1b,#02,#20,#24,#81
	db #27,#82,#24,#81,#27,#82,#24,#81
	db #27,#81,#b8,#10,#a4,#20,#22,#82
	db #1b,#81,#e8,#c0,#1b,#02,#20,#24
	db #81,#27,#82,#24,#81,#27,#82,#24
	db #81,#27,#81,#b8,#10,#a4,#20,#22
	db #82,#ff,#3a,#02,#10,#e8,#c0,#68
	db #81,#68,#02,#f0,#e8,#c0,#68,#81
	db #68,#81,#68,#81,#68,#81,#68,#81
	db #68,#02,#f0,#e8,#c0,#68,#81,#3a
	db #02,#10,#e8,#c0,#68,#81,#68,#02
	db #f0,#e8,#c0,#68,#81,#68,#81,#68
	db #81,#68,#81,#68,#81,#68,#02,#f0
	db #e8,#c0,#68,#81,#ff,#33,#02,#7e
	db #04,#3a,#02,#11,#38,#82,#38,#81
	db #37,#82,#37,#81,#37,#82,#30,#02
	db #7e,#08,#38,#02,#11,#33,#02,#7e
	db #04,#3a,#02,#11,#38,#82,#38,#81
	db #37,#82,#37,#81,#37,#82,#30,#02
	db #7e,#08,#38,#02,#11,#ff,#9d,#20
	db #e8,#c0,#1d,#02,#20,#1b,#81,#1d
	db #82,#1b,#81,#1d,#82,#1b,#81,#1d
	db #82,#1b,#81,#1d,#82,#20,#81,#e8
	db #c0,#20,#02,#20,#1e,#81,#20,#82
	db #1e,#81,#20,#82,#1e,#81,#20,#81
	db #b8,#10,#9e,#20,#20,#82,#ff,#37
	db #02,#10,#e8,#c0,#68,#81,#68,#02
	db #f0,#e8,#c0,#68,#81,#68,#81,#68
	db #81,#68,#81,#68,#81,#68,#02,#f0
	db #e8,#c0,#68,#81,#38,#02,#10,#e8
	db #c0,#68,#81,#68,#02,#f0,#e8,#c0
	db #68,#81,#68,#81,#68,#81,#68,#81
	db #68,#81,#e8,#f0,#b7,#10,#e8,#c0
	db #68,#81,#ff,#30,#02,#7e,#08,#35
	db #02,#11,#35,#82,#33,#81,#35,#85
	db #30,#04,#7e,#08,#33,#08,#7e,#05
	db #b8,#11,#37,#81,#38,#81,#37,#81
	db #33,#02,#7e,#05,#33,#02,#11,#ff
	db #9b,#20,#e8,#c0,#1b,#02,#20,#24
	db #81,#27,#82,#24,#81,#27,#82,#24
	db #81,#27,#82,#24,#81,#22,#82,#1b
	db #82,#1b,#82,#24,#81,#27,#82,#24
	db #81,#27,#82,#24,#81,#22,#82,#1f
	db #81,#1b,#82,#ff,#33,#02,#10,#e8
	db #c0,#68,#81,#68,#02,#f0,#e8,#c0
	db #68,#81,#68,#81,#68,#81,#68,#81
	db #68,#81,#68,#02,#f0,#e8,#c0,#68
	db #81,#68,#81,#68,#81,#68,#81,#68
	db #81,#68,#02,#f0,#e8,#c0,#68,#81
	db #68,#81,#68,#81,#68,#81,#68,#81
	db #e8,#f0,#e8,#e0,#68,#81,#68,#81
	db #ff,#33,#0c,#7e,#04,#30,#04,#7e
	db #08,#33,#10,#7e,#04,#ff,#a4,#20
	db #e8,#c0,#24,#02,#20,#22,#81,#24
	db #82,#24,#81,#22,#82,#22,#81,#be
	db #10,#a0,#20,#22,#82,#22,#81,#20
	db #81,#e8,#c0,#20,#02,#20,#1e,#81
	db #20,#82,#20,#81,#20,#82,#20,#82
	db #1e,#81,#20,#82,#20,#81,#ff,#37
	db #02,#10,#e8,#c0,#68,#81,#68,#02
	db #f0,#e8,#c0,#68,#81,#68,#81,#68
	db #81,#68,#81,#68,#81,#68,#02,#f0
	db #e8,#c0,#68,#81,#33,#02,#10,#e8
	db #c0,#68,#81,#68,#02,#f0,#e8,#c0
	db #68,#81,#68,#81,#68,#81,#68,#81
	db #68,#81,#68,#02,#f0,#e8,#c0,#68
	db #81,#ff,#33,#03,#7e,#04,#3f,#03
	db #11,#37,#82,#35,#84,#32,#02,#7e
	db #03,#35,#02,#11,#30,#03,#7e,#03
	db #3c,#03,#11,#33,#82,#33,#83,#3c
	db #83,#33,#82,#ff,#33,#03,#7e,#04
	db #3f,#03,#11,#37,#82,#35,#84,#32
	db #02,#7e,#03,#35,#02,#11,#30,#03
	db #7e,#03,#3c,#03,#11,#33,#82,#33
	db #84,#37,#82,#38,#82,#ff,#0f,#0f
	db #0f,#0e,#0e,#0e,#0d,#0d,#0d,#0c
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#08,#07,#07
	db #06,#05,#04,#02,#01,#00,#00,#00

	;org #afbc
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
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#09,#08,#07,#06,#05
	db #04,#03,#02,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#1f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0e,#0e,#0e,#0e,#0e,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#8b
	db #ac,#00,#03,#ad,#00,#43,#ad,#00
	db #43,#ad,#00,#e2,#ad,#00,#74,#ae
	db #00,#ea,#ae,#00,#ea,#ae,#80,#20
	db #b1,#00,#b5,#ac,#00,#b5,#ac,#00
	db #76,#ad,#00,#76,#ad,#00,#13,#ae
	db #00,#a0,#ae,#00,#1b,#af,#00,#1b
	db #af,#80,#3b,#b1,#00,#f2,#ac,#00
	db #2f,#ad,#00,#b1,#ad,#00,#b1,#ad
	db #00,#4f,#ae,#00,#dd,#ae,#00,#56
	db #af,#00,#78,#af,#80,#56,#b1,#00
	db #00
;
; #81d6
; ld e,#01
; call #4000
;
.init_music	; added by Megachur
;
	ld e,#01
	jp real_init_music
;
.music_info
	db "Better Than Life Issue 4 - Menu (1997)(STS Software)(CRTC)",0
	db "ST-128 Module",0

	read "music_end.asm"
