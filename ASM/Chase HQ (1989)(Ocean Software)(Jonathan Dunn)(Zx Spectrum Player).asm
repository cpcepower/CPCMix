; Music of Chase HQ (1989)(Ocean Software)(Jonathan Dunn)(Zx Spectrum Player)
; Ripped by Megachur the 18/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CHASEHQ.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #eb9e
FIRST_THEME				equ 0
LAST_THEME				equ 3	; 0 -> 3

	read "music_header.asm"

;
.init_music
;
	ld hl,lf223
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
	ld hl,lf225
	add hl,bc
	ld a,(hl)
	ld (lec9a),a
	inc hl
	ld ix,lec01
	ld c,#25
	ld a,#03
.lebbf
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
	jr nz,lebbf
	ld (leed1),a
	inc a
	ld (lec70),a
	ld (lf223),a
	ret
.lec01
	db #20,#b7,#f2,#41,#f2,#0d,#00,#00
	db #00,#91,#f0,#93,#f0,#00,#00,#01
	db #04,#04,#12,#0f,#3a,#f1,#3b,#f1
	db #0f,#01,#01,#02,#00,#00,#00,#7f
.lec26 equ $ + 5
	db #00,#00,#6e,#f2,#09,#20,#60,#f5
	db #5a,#f2,#09,#00,#00,#00,#c7,#f0
	db #c7,#f0,#00,#00,#04,#04,#04,#40
	db #0f,#4c,#f1,#4c,#f1,#0f,#02,#03
	db #02,#00,#00,#00,#00,#00,#00,#6b
.lec4b equ $ + 2
	db #f2,#12,#00,#22,#f4,#65,#f2,#04
	db #00,#00,#00,#bb,#f0,#00,#00,#00
	db #4d,#00,#00,#04,#39,#00,#47,#f1
	db #49,#f1,#0b,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.lec70
	db #01
;
.play_music
;
	ld a,(lf223)
	and a
	jp z,lecca
.lec79 equ $ + 1
	ld a,#00
	ld (lecc6),a
	ld hl,lec70
	dec (hl)
	jr nz,lec9e
	ld b,(hl)
	ld ix,lec01
	call ledd6
	ld ix,lec26
	call ledd6
	ld ix,lec4b
	call ledd6
.lec9a equ $ + 1
	ld a,#02
.lec9d equ $ + 2
	ld (lec70),a
.lec9e
	ld ix,lec01
	call lee9e
	ld (lefaf),hl
	ld (lefb7),a
	ld ix,lec26
	call lee9e
	ld (lefb1),hl
	ld (lefb8),a
	ld ix,lec4b
	call lee9e
	ld (lefb3),hl
	ld (lefb9),a
.lecc6 equ $ + 1
	ld a,#00
	ld (lefb5),a
.lecca
	ld a,(lf223)
	and a
	ret z
	ld hl,lefba
; added by Megachur
.send_data_to_ay
	ld d,#0b
.lecd6
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
	jp p,lecd6
; added by Megachur
	ret
.led0b
	xor a
	ld (lf223),a
	ld (lefb7),a
	ld (lefb8),a
	ld (lefb9),a
; added by Megachur
	ld hl,clear_sound
	jp send_data_to_ay
	defs 21,0
; added by Megachur
table_jump
	db #9f,#87,#8b,#90,#4e,#7d,#78,#0f
	db #67,#5f,#24,#0e,#36,#8c,#04,#99
	db #9e,#a3
	pop hl
	jp led0b
	jp lf1ae
	ld a,(ix+#24)
	ld c,a
	and #07
	ld hl,lef7a
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lede4
	ld a,(ix+#24)
	ld c,a
	and #38
	ld hl,lef7a
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lede4
	ld hl,lef7a
	ld a,(ix+#24)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr lede4
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lede4
	ld a,(de)
	inc de
	ld (leed1),a
	jr lede4
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr lede4
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lede4
	ld (ix+#1d),b
	jr lede4
	ld (ix+#1d),#40
	jr lede4
	ld (ix+#1d),#c0
	jr lede4
	set 1,(ix+#00)
	jr lede4
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lee22
	res 5,(ix+#00)
	jr lee22
	ld (ix+#1f),#ff
	jr lede4
	ld (ix+#1f),b
	jr lede4
.ledd6
	dec (ix+#10)
	jr nz,lee38
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lede4
	ld a,(de)
	inc de
	and a
	jp m,lee49
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,ledf9
	ld (lec79),a
.ledf9
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
.lee22
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	ret z
	ld (ix+#1f),#ff
	ret
.lee38
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lee45
	inc (ix+#12)
	ret
.lee45
	dec (ix+#12)
	ret
.lee49
	cp #b0
	jr c,lee96
	add #20
	jr c,lee77
	add #10
	jr c,lee7e
	add #18
	jr nc,lee6f
	ld c,a
	ld hl,lf07c
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp lede4
.lee6f
	add #09
	ld (lec9a),a
	jp lede4
.lee77
	inc a
	ld (ix+#11),a
	jp lede4
.lee7e
	ld hl,lf123
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
	jp lede4
.lee96
	ld hl,table_jump-&80
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lee9e
	ld c,(ix+#00)
	bit 5,c
	jr z,leed0
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,leeca
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,leeca
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.leeca
	ld a,(ix+#18)
	ld (ix+#13),a
.leed1 equ $ + 1
.leed0
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,leeea
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.leeea
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lefbc
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lef4b
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lef14
	bit 0,c
	jr nz,lef32
.lef14
	bit 5,l
	jr nz,lef24
	sub (ix+#1b)
	jr nc,lef2f
	set 5,(ix+#1d)
	sub a
	jr lef2f
.lef24
	add (ix+#1b)
	cp b
	jr c,lef2f
	res 5,(ix+#1d)
	ld a,b
.lef2f
	ld (ix+#1c),a
.lef32
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lef3d
	dec d
.lef3d
	add #a0
	jr c,lef49
.lef41
	sla e
	rl d
	add #18
	jr nc,lef41
.lef49
	add hl,de
	ex de,hl
.lef4b
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lef76
	ld b,(ix+#0e)
	djnz lef73
	ld c,(ix+#0d)
	bit 7,c
	jr z,lef62
	dec b
.lef62
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lef76
.lef73
	ld (ix+#0e),b
.lef76
	cpl
	and #03
.lef7a equ $ + 1
	ld a,#38
	jr nz,lef87
	ld a,(lec79)
	xor #08
	ld (lecc6),a
	ld a,#07
.lef87
	ld hl,lefb6
	xor (hl)
	and (ix+#24)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,lefaa
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#24)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (lecc6),a
.lefaa
	ex de,hl
	ld a,(ix+#13)
	ret
.lefb6 equ $ + 7
.lefb5 equ $ + 6
.lefb3 equ $ + 4
.lefb1 equ $ + 2
.lefaf
	db #a2,#02,#2f,#00,#6b,#00,#00,#38
.lefba equ $ + 3
.lefb9 equ $ + 2
.lefb8 equ $ + 1
.lefb7
	db #0f,#0f,#00,#00,#00
.lefbc
;	dw #0ef8,#0e10,#0d60,#0c80
;	dw #0bd8,#0b28,#0a88,#09f0
;	dw #0960,#08e0,#0858,#07e0
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
; added by Megachur
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
; added by Megachur
.lf07c
	db #14,#14,#2e,#30,#32,#34,#39,#3e
	db #43,#44,#49,#54,#59,#71,#74,#77
	db #7a,#89,#8e,#93,#80,#0c,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#80
	db #00,#04,#87,#00,#03,#88,#00,#05
	db #89,#00,#00,#00,#03,#03,#83,#00
	db #00,#00,#05,#05,#85,#00,#00,#00
	db #04,#04,#84,#00,#8c,#00,#00,#00
	db #08,#08,#88,#0c,#0c,#0c,#0c,#0c
	db #0c,#00,#00,#00,#00,#00,#80,#00
	db #00,#03,#03,#07,#87,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#80,#00,#05
	db #07,#8c,#00,#05,#0a,#8c,#00,#05
	db #09,#8c,#00,#00,#00,#00,#04,#04
	db #04,#04,#07,#07,#07,#07,#0c,#0c
	db #0c,#8c,#00,#00,#01,#01,#07,#87
	db #00,#00,#03,#03,#05,#85,#80
.lf123
	dw lf13a,lf142,lf147,lf14c
	dw lf154,lf15d,lf165,lf178
	dw lf190,lf196,lf19f
.lf13a equ $ + 1
	db #01,#0f,#0f,#0e,#0d,#0c,#08,#87
.lf147 equ $ + 6
.lf142 equ $ + 1
	db #02,#0e,#0f,#0e,#87,#02,#0e,#0f
.lf14c equ $ + 3
	db #0b,#87,#04,#0f,#0f,#0f,#0e,#0d
.lf154 equ $ + 3
	db #0a,#87,#04,#0f,#09,#08,#06,#05
.lf15d equ $ + 4
	db #04,#03,#87,#00,#0f,#0e,#0d,#0c
.lf165 equ $ + 4
	db #0b,#06,#87,#02,#0f,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.lf178 equ $ + 7
	db #04,#03,#02,#01,#00,#87,#06,#09
	db #0a,#0b,#0c,#0d,#0e,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.lf190 equ $ + 7
	db #04,#03,#02,#01,#00,#87,#00,#0f
.lf196 equ $ + 5
	db #0e,#0c,#06,#87,#01,#0f,#0d,#0c
.lf19f equ $ + 6
	db #0a,#08,#07,#06,#87,#02,#0a,#0b
	db #0c,#0d,#0e,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#87
.lf1ae
	ld c,(ix+#05)
	ld b,(ix+#06)
.lf1b4
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	ld a,(ix+#21)
	dec a
	jp m,lf1d1
	ld (ix+#21),a
	ld e,(ix+#22)
	ld d,(ix+#23)
	jr nz,lf1e8
	inc bc
	inc bc
	jr lf1b4
.lf1d1
	ld (ix+#20),#00
.lf1d5
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,lf1f3
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lf1e8
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lede4
.lf1f3
	dec de
	ld a,d
	or e
	jr nz,lf204
	inc hl
	ld a,(hl)
	ld (ix+#20),a
	inc hl
	inc bc
	inc bc
	inc bc
	inc de
	jr lf1d5
.lf204
	dec de
	ld a,d
	or e
	inc de
	inc de
	jr nz,lf21f
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
	jr lf1e8
.lf21f
	inc bc
	inc bc
	jr lf1e8
.lf225 equ $ + 2
.music_end
.lf223
	db #01,#00,#02
	dw lf241,lf25a,lf265
	db #04
	dw lf601,lf605,lf609
	db #02
	dw lf666,lf66a,lf66e
	db #03
.lf241 equ $ + 6
	dw lf6f4,lf6f8,lf6fe,lf26e
	db #02,#00,#08
	dw lf26e,lf297,lf288,lf2a7
	dw lf288,lf288,lf297,lf288
	dw lf339,#0000
.lf25a
	dw lf26b
	db #02,#00,#07
	dw lf26b,lf4e1,#0000
.lf265
	dw lf350,lf39f
	db #00,#00
.lf26e equ $ + 3
.lf26b
	db #ff,#80,#87,#8a,#90,#d0,#b9,#88
	db #02,#01,#82,#e3,#15,#15,#21,#15
	db #15,#21,#15,#15,#21,#15,#15,#21
.lf288 equ $ + 5
	db #15,#15,#12,#14,#87,#8a,#90,#d0
	db #b9,#81,#e3,#15,#15,#15,#15,#15
.lf297 equ $ + 4
	db #15,#15,#15,#87,#1a,#1a,#1a,#1a
	db #1a,#1a,#1a,#e7,#18,#17,#15,#e3
.lf2a7 equ $ + 4
	db #13,#12,#10,#87,#13,#13,#13,#13
	db #13,#13,#13,#13,#12,#12,#12,#12
	db #12,#12,#12,#12,#10,#10,#12,#10
	db #13,#10,#15,#13,#10,#10,#12,#10
	db #e1,#10,#12,#13,#15,#16,#17,#1a
	db #19,#e3,#15,#14,#13,#e7,#12,#e3
	db #12,#12,#12,#17,#16,#15,#e7,#14
	db #e3,#14,#14,#14,#19,#18,#17,#e7
	db #15,#e3,#15,#15,#e7,#19,#1a,#e3
	db #1b,#1c,#10,#10,#10,#e3,#15,#14
	db #13,#e7,#12,#e3,#12,#12,#12,#17
	db #16,#15,#e7,#14,#e3,#14,#14,#14
	db #19,#18,#17,#e7,#15,#e3,#15,#15
	db #e7,#16,#e7,#80,#ef,#18,#e3,#80
	db #80,#12,#13,#12,#14,#12,#16,#13
	db #12,#12,#13,#12,#14,#12,#16,#13
	db #80,#12,#13,#12,#14,#12,#16,#13
	db #12,#12,#13,#12,#e1,#10,#12,#13
.lf339 equ $ + 6
	db #15,#16,#17,#1a,#19,#87,#e3,#13
	db #13,#13,#13,#13,#13,#13,#13,#12
	db #12,#12,#12,#e1,#10,#12,#13,#15
.lf350 equ $ + 5
	db #16,#17,#1a,#19,#87,#8a,#91,#d1
	db #81,#ba,#e3,#39,#eb,#80,#ef,#37
	db #e3,#80,#bb,#36,#e7,#80,#ba,#e3
	db #37,#80,#bb,#36,#80,#ba,#39,#eb
	db #80,#ef,#37,#e3,#80,#bb,#36,#e7
	db #80,#e3,#ba,#37,#80,#bb,#36,#80
	db #ba,#e3,#39,#eb,#80,#ef,#37,#e3
	db #80,#bb,#36,#e7,#80,#ba,#e3,#37
	db #80,#bb,#36,#80,#80,#ba,#39,#e7
	db #80,#e3,#37,#80,#bb,#36,#80,#ef
	db #bc,#34,#80,#87
.lf39f
	db #8a,#91,#d2,#81,#bd,#e3,#3d,#eb
	db #80,#ef,#3b,#e3,#80,#be,#39,#e7
	db #80,#bd,#e3,#3b,#80,#be,#39,#80
	db #bd,#3d,#eb,#80,#ef,#3b,#e3,#80
	db #be,#39,#e7,#80,#e3,#bd,#3b,#80
	db #be,#39,#80,#bd,#e3,#3d,#eb,#80
	db #ef,#3b,#e3,#80,#be,#39,#e7,#80
	db #bd,#e3,#3b,#80,#be,#39,#80,#80
	db #bd,#3d,#e7,#80,#e3,#3b,#80,#be
	db #39,#80,#ef,#bf,#39,#80,#bd,#e3
	db #3d,#e7,#80,#e3,#3d,#eb,#80,#e3
	db #3b,#f7,#8f,#e7,#80,#be,#f7,#39
	db #e3,#80,#bd,#3d,#80,#bd,#3b,#80
	db #39,#80,#bf,#37,#e7,#80,#bd,#e3
	db #3d,#eb,#80,#e3,#3d,#eb,#80,#e3
	db #3b,#f7,#8f,#e3,#80,#be,#39,#f7
	db #8f,#e3,#80,#c1,#38,#80,#38,#e7
	db #80,#e3,#38,#eb,#80,#e3,#38,#e7
	db #80,#e3,#38,#ef,#80,#bf,#e3,#39
	db #e7,#80,#bd,#eb,#3a,#e7,#80,#bf
	db #e3,#3b,#e7,#80,#bd,#eb,#3c,#e7
	db #80,#e3,#3d,#e7,#80,#eb,#3d,#e3
	db #80,#3d,#bf,#3e,#80,#3f,#40,#80
	db #bd,#44,#80,#80,#bf,#e3,#39,#e7
	db #80,#bd,#eb,#3a,#e7,#80,#bf,#e3
	db #3b,#e7,#80,#bd,#eb,#3c,#e7,#80
	db #e3,#3d,#e7,#80,#eb,#3d,#e3,#bf
	db #80,#3c,#e7,#8f,#e3,#80,#eb,#3e
	db #e3,#80,#3c,#e7,#8f,#e3,#80,#eb
	db #3e,#e3,#80,#3c,#e7,#8f,#e3,#80
	db #eb,#3e,#e3,#80,#3c,#e7,#8f,#e3
	db #80,#eb,#3e,#e3,#80,#3c,#e7,#8f
	db #e7,#3e,#e3,#80,#e7,#be,#3b,#bd
	db #e3,#3d,#e7,#80,#e3,#3d,#eb,#80
	db #e3,#3b,#f7,#8f,#e7,#80,#be,#f7
	db #39,#e3,#80,#bd,#3d,#80,#bd,#3b
	db #80,#39,#80,#bf,#37,#e7,#80,#bd
	db #e3,#3d,#e7,#80,#e3,#3d,#eb,#80
	db #e3,#3b,#f7,#8f,#e3,#bd,#80,#80
	db #e3,#80,#e7,#80,#e3,#c1,#38,#ef
.lf4e1 equ $ + 2
	db #80,#87,#8a,#c0,#81,#d3,#e7,#80
	db #e3,#39,#39,#39,#37,#36,#37,#80
	db #39,#80,#3b,#80,#3e,#80,#3d,#80
	db #39,#80,#34,#80,#32,#80,#31,#80
	db #39,#eb,#80,#e1,#31,#32,#34,#36
	db #37,#38,#e3,#39,#80,#39,#39,#39
	db #37,#36,#37,#80,#39,#80,#3b,#80
	db #3e,#80,#3d,#80,#39,#80,#34,#80
	db #32,#80,#31,#80,#39,#f7,#80,#e7
	db #80,#b8,#88,#02,#03,#82,#eb,#40
	db #e3,#3e,#3d,#3e,#ff,#3e,#e7,#80
	db #eb,#3e,#e3,#36,#39,#3c,#80,#3b
	db #80,#39,#80,#37,#e7,#80,#81,#c0
	db #e7,#80,#e3,#40,#40,#40,#42,#43
	db #43,#80,#42,#80,#40,#80,#3e,#80
	db #42,#80,#40,#80,#3e,#80,#40,#42
	db #40,#ff,#80,#80,#e3,#39,#38,#37
	db #e7,#36,#e3,#37,#38,#39,#3b,#3a
	db #39,#e7,#38,#e3,#39,#3a,#80,#3d
	db #3c,#3b,#e7,#39,#e3,#3b,#3c,#3d
	db #80,#3e,#80,#3f,#40,#34,#34,#80
	db #e3,#39,#38,#37,#e7,#36,#e3,#37
	db #38,#39,#3b,#3a,#39,#e7,#38,#e3
	db #39,#3a,#80,#3d,#3c,#3b,#e7,#39
	db #e3,#3b,#3d,#3c,#eb,#8f,#e3,#80
	db #ff,#3e,#ef,#80,#e3,#80,#39,#3e
	db #45,#42,#3e,#39,#ef,#3c,#e3,#80
	db #ef,#3e,#e3,#80,#39,#3e,#45,#42
	db #e1,#31,#32,#34,#36,#37,#38,#e7
	db #80,#b8,#88,#02,#03,#82,#eb,#40
	db #e3,#3e,#3d,#3e,#ff,#3e,#e7,#80
	db #eb,#3e,#e3,#36,#39,#3c,#80,#3b
	db #80,#39,#80,#37,#e7,#80,#81,#c0
	db #e7,#80,#e3,#40,#40,#40,#42,#43
	db #43,#80,#42,#80,#40,#80,#3e,#80
	db #42,#80,#40,#80,#3e,#80,#3d,#3b
.lf605 equ $ + 6
.lf601 equ $ + 2
	db #39,#8e,#0d,#f6,#00,#00,#2e,#f6
.lf609 equ $ + 2
	db #00,#00,#43,#f6,#00,#00,#8a,#c0
	db #81,#d4,#91,#e1,#3c,#3c,#3c,#e3
	db #3b,#37,#3a,#3a,#e1,#3a,#e3,#39
	db #35,#e1,#38,#38,#38,#e3,#37,#33
	db #e7,#35,#e1,#80,#e7,#80,#8e,#8a
	db #90,#d3,#c2,#81,#eb,#18,#e3,#80
	db #eb,#16,#e3,#80,#eb,#14,#e3,#80
	db #e7,#11,#80,#87,#d5,#8a,#b8,#81
	db #90,#e1,#4d,#4c,#4b,#4a,#49,#48
	db #47,#46,#45,#44,#43,#42,#41,#40
	db #3f,#3e,#3d,#3c,#3b,#3a,#39,#38
.lf666 equ $ + 7
	db #37,#36,#ef,#8b,#d6,#00,#8e,#72
.lf66e equ $ + 7
.lf66a equ $ + 3
	db #f6,#00,#00,#b1,#f6,#00,#00,#eb
	db #f6,#00,#00,#8a,#81,#c0,#91,#d4
	db #e7,#37,#e3,#39,#37,#36,#34,#32
	db #80,#e7,#34,#e3,#37,#36,#34,#31
	db #2d,#80,#e7,#2b,#e3,#2d,#2f,#31
	db #33,#35,#37,#39,#33,#35,#37,#39
	db #35,#37,#39,#3b,#37,#39,#3b,#3d
	db #39,#3b,#3d,#3f,#3b,#3d,#3f,#41
	db #e1,#43,#41,#3f,#3d,#3b,#39,#37
	db #35,#8e,#8a,#90,#d0,#b9,#81,#e3
	db #21,#15,#21,#15,#21,#15,#21,#15
	db #21,#15,#21,#15,#21,#15,#21,#15
	db #21,#15,#21,#15,#21,#15,#21,#15
	db #21,#15,#21,#12,#1e,#15,#21,#14
	db #20,#15,#21,#12,#1e,#15,#21,#14
	db #20,#15,#21,#12,#1e,#15,#21,#14
	db #20,#80,#80,#8e,#ff,#80,#80,#80
.lf6f4 equ $ + 5
	db #80,#80,#80,#80,#8e,#02,#f7,#00
.lf6fe equ $ + 7
.lf6f8 equ $ + 1
	db #00,#43,#f7,#6e,#f7,#00,#00,#9a
	db #f7,#00,#00,#8a,#d0,#91,#b9,#88
	db #02,#02,#82,#e3,#0c,#13,#11,#13
	db #0c,#e1,#13,#e3,#11,#e1,#11,#e3
	db #13,#e3,#0c,#13,#11,#13,#0c,#e1
	db #13,#e3,#11,#e1,#11,#e3,#13,#e3
	db #0c,#13,#11,#13,#0c,#e1,#13,#e3
	db #11,#e1,#11,#e3,#13,#e3,#0c,#13
	db #11,#13,#0c,#e1,#13,#16,#e3,#18
	db #e1,#13,#11,#87,#8a,#91,#d2,#81
	db #c5,#e3,#80,#e1,#30,#30,#80,#e3
	db #30,#e1,#30,#e1,#80,#30,#e3,#30
	db #80,#e1,#30,#30,#30,#80,#30,#80
	db #80,#30,#30,#30,#e1,#80,#30,#30
	db #30,#e3,#80,#e1,#30,#30,#87,#8a
	db #91,#d6,#81,#c6,#e3,#80,#e1,#30
	db #30,#80,#e3,#30,#e1,#30,#e1,#80
	db #30,#e3,#30,#80,#e1,#30,#30,#c7
	db #30,#80,#30,#80,#80,#30,#30,#30
	db #e1,#80,#30,#30,#30,#e3,#80,#e1
	db #3c,#30,#87,#8a,#d7,#81,#91,#c8
	db #ff,#48,#8f,#80,#80,#ff,#3c,#8f
	db #80,#80,#87
; added by Megachur
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
.clear_sound
;
.music_info
	db "Chase HQ (1989)(Ocean Software)(Jonathan Dunn)",0
	db "Zx Spectrum Player converted to CPC by Megachur",0

	read "music_end.asm"
