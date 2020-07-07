; Music of Gauntlet (1985)(U.S. Gold)(Ben Daglish)()
; Ripped by Megachur the 13/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GAUNTLET.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 13
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #89aa

	read "music_header.asm"

.l89aa
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l89b4
	db #00,#00,#00,#00
.l89b8
	db #00
.l89b9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l89c3
	db #00,#00,#00,#00
.l89c7
	db #00
.l89c8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l89d2
	db #00,#00,#00,#00
.l89d6
	db #00
.music_end
.l89d7
	db #00
.l89d8
	db #00
.l89d9
	db #00,#00
.l89db
	db #00
.l89dc
	db #00
.l89dd
	db #00
;
.real_init_music
;
	push hl
	pop ix
	ld e,(ix+#00)
	ld d,(ix+#01)
	add ix,de
	inc ix
	inc ix
	inc ix
	inc ix
	ld (l89b9),ix
	inc hl
	inc hl
	push hl
	pop ix
	ld e,(ix+#00)
	ld d,(ix+#01)
	add ix,de
	inc ix
	inc ix
	inc ix
	inc ix
	ld (l89c8),ix
	inc hl
	inc hl
	ld (l89aa),hl
	ld a,#01
	ld (l89b4),a
	ld (l89c3),a
	ld (l89d2),a
	ld (l89d7),a
	ld a,#07
	ld c,#38
	call l8d09
	ld c,#00
	inc a
	call l8d09
	inc a
	call l8d09
	inc a
	call l8d09
	ret
;
.play_music
.l8a37
;
	ld a,(l89d7)
	and a
	ret z
	ld ix,l89aa
	call l8ac7
	ld ix,l89b9
	call l8ac7
	ld ix,l89c8
	call l8ac7
	call l8c0c
	ld ix,l89aa
	sub a
	bit 2,(ix+#09)
	jr z,l8a64
	call l8aa8
	jr l8a67
.l8a64
	call l8ab9
.l8a67
	ld a,#08
	ld c,(ix+#0e)
	call l8d09
	ld ix,l89b9
	ld a,#02
	bit 2,(ix+#09)
	jr z,l8a80
	call l8aa8
	jr l8a83
.l8a80
	call l8ab9
.l8a83
	ld a,#09
	ld c,(ix+#0e)
	call l8d09
	ld ix,l89c8
	ld a,#04
	bit 2,(ix+#09)
	jr z,l8a9c
	call l8aa8
	jr l8a9f
.l8a9c
	call l8ab9
.l8a9f
	ld a,#0a
	ld c,(ix+#0e)
	call l8d09
	ret
.l8aa8
	ld hl,(l89d9)
	ld c,l
	call l8d09
	inc a
	ld c,h
	call l8d09
	res 2,(ix+#09)
	ret
.l8ab9
	ld c,(ix+#0b)
	call l8d09
	inc a
	ld c,(ix+#0c)
	call l8d09
	ret
.l8ac7
	dec (ix+#0a)
	ret nz
	ld a,(ix+#03)
	and a
	jr z,l8ad9
	dec (ix+#03)
	ld (ix+#0a),#ff
	ret
.l8ad9
	ld l,(ix+#00)
	ld h,(ix+#01)
.l8adf
	ld a,(hl)
	inc hl
	ld c,(hl)
	inc hl
	and a
	jp m,l8b98
	push hl
	ld hl,l8bce
	add a
	call l8bc9
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ex (sp),hl
	ret
	ld (ix+#0a),c
	ld (ix+#0e),#00
	ld (ix+#02),#08
	jp l8b59
	dec c
	ld (ix+#03),c
	ld (ix+#0e),#00
	ld (ix+#0a),#ff
	ld (ix+#02),#08
	jp l8b59
	sub a
	ld (l89d7),a
	ld (l89b8),a
	ld (l89c7),a
	ld (l89d6),a
	jp l8b59
	ld (ix+#04),l
	ld (ix+#05),h
	set 7,(ix+#09)
	jr l8adf
	bit 7,(ix+#09)
	jr z,l8b3f
	res 7,(ix+#09)
	ld (ix+#06),c
.l8b3f
	dec (ix+#06)
	jr z,l8b4a
	ld l,(ix+#04)
	ld h,(ix+#05)
.l8b4a
	jp l8adf
	ld (ix+#07),c
	jp l8adf
	ld (ix+#08),c
	jp l8adf
.l8b59
	ld (ix+#00),l
	ld (ix+#01),h
	ret
	ld a,c
	sub #64
	ld (l89d8),a
	jp l8adf
	ld a,c
	and a
	res 0,(ix+#09)
	jr z,l8b75
	set 0,(ix+#09)
.l8b75
	jp l8adf
	ld a,c
	ld (l89db),a
	ld (l89dc),a
	jp l8adf
	ld a,c
	ld (l89dd),a
	jp l8adf
	ld a,c
	and a
	res 1,(ix+#09)
	jr z,l8b95
	set 1,(ix+#09)
.l8b95
	jp l8adf
.l8b98
	call l8b59
	add a
	push hl
	ld hl,l8d6b
	call l8bc9
	ld e,(hl)
	inc hl
	ld d,(hl)
	pop hl
	ld a,c
	cp #ff
	jr nz,l8bb3
	ld (l89d9),de
	jp l8adf
.l8bb3
	ld (ix+#0c),d
	ld (ix+#0b),e
	ld (ix+#02),#07
	ld (ix+#0a),c
	ld (ix+#0d),#00
	ld (ix+#0e),#00
	ret
.l8bc9
	add l
	ld l,a
	ret nc
	inc h
	ret
.l8bce
	dw #8af5,#8adf,#8b4d,#8adf
	dw #8adf,#8b60,#8b78,#8adf
	dw #8b69,#8adf,#8b53,#8adf
	dw #8adf,#8b82,#8adf,#8b89
	dw #8b32,#8b26,#8adf,#8adf
	dw #8adf,#8adf,#8adf,#8adf
	dw #8adf,#8b03,#8adf,#8adf
	dw #8adf,#8adf,#8b16
.l8c0c
	ld d,#00
	ld ix,l89aa
	call l8c24
	ld ix,l89b9
	call l8c24
	ld ix,l89c8
	call l8c24
	ret
.l8c24
	bit 3,(ix+#02)
	ret nz
	ld a,(l89d8)
	and a
	jr z,l8c3b
	cp (ix+#0a)
	jr nz,l8c3b
	ld (ix+#02),#00
	jp l8cbd
.l8c3b
	bit 0,(ix+#09)
	jr z,l8c54
	ld a,(l89db)
	dec a
	ld (l89db),a
	jr nz,l8c54
	set 2,(ix+#09)
	ld a,(l89dc)
	ld (l89db),a
.l8c54
	bit 1,(ix+#09)
	jr z,l8c66
	ld hl,(l89d9)
	ld a,(l89dd)
	call l8bc9
	ld (l89d9),hl
.l8c66
	bit 2,(ix+#02)
	jr z,l8c8e
	ld a,(ix+#07)
	rra
	rra
	rra
	and #1e
	ld hl,l8d2b
	call l8ce1
	add hl,de
	ld a,h
	cp #10
	jr nc,l8c87
	ld hl,#0f00
	res 2,(ix+#02)
.l8c87
	ld (ix+#0e),h
	ld (ix+#0d),l
	ret nc
.l8c8e
	bit 1,(ix+#02)
	jr z,l8cbd
	ld a,(ix+#07)
	add a
	and #1e
	ld hl,l8d4b
	call l8ce1
	and a
	sbc hl,de
	ld a,(ix+#08)
	rra
	rra
	rra
	rra
	and #0f
	cp h
	jr nc,l8cb6
	ld h,a
	ld l,#00
	res 1,(ix+#02)
.l8cb6
	ld (ix+#0e),h
	ld (ix+#0d),l
	ret nc
.l8cbd
	bit 0,(ix+#02)
	ret nz
	ld a,(ix+#08)
	add a
	and #1e
	ld hl,l8d4b
	call l8ce1
	and a
	sbc hl,de
	jr nc,l8cda
	ld hl,#0000
	set 3,(ix+#02)
.l8cda
	ld (ix+#0e),h
	ld (ix+#0d),l
	ret
.l8ce1
	call l8bc9
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld d,(ix+#0e)
	ld e,(ix+#0d)
	ret
	ld bc,#7f10
	out (c),c
	or #40
	out (c),a
	and #3f
	ret
	ld bc,#f500
.l8cfe
	in a,(c)
	rrca
	jr nc,l8cfe
.l8d03
	in a,(c)
	rrca
	jr c,l8d03
	ret
.l8d09
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
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	pop af
	ret
.l8d2b
	db #00,#0f,#00,#0f,#00,#0f,#00,#0f
	db #00,#0f,#80,#07,#00,#05,#c0,#03
	db #00,#03,#40,#01,#99,#00,#60,#00
	db #4c,#00,#19,#00,#0f,#00,#09,#00
.l8d4b
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#80,#02,#aa,#01,#40,#01
	db #00,#01,#6a,#00,#33,#00,#20,#00
	db #19,#00,#08,#00,#05,#00,#03,#00
.l8d6b
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
.l8e2b
	db #3a,#00,#7a,#00,#01,#0f,#00,#01	; code ?
	db #03,#41,#02,#18,#0a,#bc,#05,#68
	db #04,#08,#11,#00,#93,#08,#96,#08
	db #98,#08,#98,#08,#96,#08,#98,#10
	db #98,#08,#10,#0a,#11,#00,#93,#08
	db #96,#08,#98,#08,#98,#08,#96,#08
	db #98,#10,#98,#08,#1b,#fd,#10,#04
	db #00,#01,#00,#01,#1e,#01,#00,#01
	db #03,#41,#04,#08,#02,#35,#0b,#1e
	db #0a,#d3,#00,#08,#11,#00,#ae,#08
	db #b0,#08,#a9,#08,#ab,#08,#a4,#10
	db #a4,#10,#10,#03,#00,#20,#ab,#08
	db #b0,#08,#b7,#08,#b5,#28,#b5,#10
	db #b7,#48,#ba,#28,#ba,#10,#bc,#48
	db #be,#28,#be,#10,#bf,#50,#11,#01
	db #00,#fe,#10,#ff,#00,#01,#00,#01
	db #03,#41,#02,#35,#0a,#c3,#04,#08
	db #11,#00,#93,#08,#96,#08,#98,#08
	db #98,#08,#96,#08,#98,#10,#98,#08
	db #10,#03,#93,#08,#96,#08,#98,#08
	db #98,#08,#b0,#ff,#96,#08,#a7,#08
	db #ab,#08,#b3,#08,#b2,#28,#b2,#10
	db #b3,#10,#03,#11,#02,#1f,#0d,#14
	db #0f,#01,#08,#01,#06,#03,#b3,#38
	db #08,#00,#0f,#00,#03,#41,#02,#35
	db #b6,#28,#b6,#10,#b8,#48,#ba,#28
	db #ba,#10,#bb,#50,#11,#01,#00,#fe
	db #10,#ff,#00,#01,#cd,#fb,#8c,#3e
	db #00,#0e,#01,#cd,#12,#8f,#c9,#06
	db #bc,#ed,#49,#04,#ed,#79,#c9,#21
	db #4e,#8f,#18,#03,#21,#3e,#8f,#16
	db #10,#01,#00,#7f,#7e,#f6,#40,#ed
	db #49,#ed,#79,#23,#0c,#15,#20,#f4
	db #cd,#fb,#8c,#3e,#28,#0e,#01,#cd
	db #12,#8f,#c9,#14,#15,#0b,#07,#0a
	db #0d,#12,#17,#05,#06,#1c,#0c,#0e
	db #00,#13,#1f,#14,#0e,#0c,#0a,#0a
	db #0d,#12,#17,#05,#06,#1c,#0c,#0e
	db #00,#13,#1f,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#40,#80,#00
	db #21,#00,#18,#02
;
; #8034
; ld a,(#89d7)	; fin musique
; and a
; jr z,#8044
;
; play &8a37
;
.init_music
;
	ld hl,l8e2b	; added by Megachur init music
	jp real_init_music
;
.music_info
	db "Gauntlet (1985)(U.S. Gold)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
