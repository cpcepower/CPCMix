; Music of Rastan (1988)(Ocean Software)(Jason C. Brooke)()
; Ripped by Megachur the 19/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RASTAN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #4000
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"
	
;
.play_music
;
	sub a
.l4002 equ $ + 1
.music_end equ $ + 1
	cp #00
	push ix
	jr z,l4040
	ld b,a
	ld ix,l42c0
	ld hl,l4305
	dec (hl)
	jr nz,l4020
.l4013 equ $ + 1
	ld (hl),#06
	call l4161
	call l415f
	call l415f
	ld lx,l42c0	;#c0
.l4021 equ $ + 1
.l4020
	ld a,#00
	ld (l430c),a
	ld bc,l430e
	call l41ed
	ld (l4306),hl
	ld bc,l430f
	call l41eb
	ld (l4308),hl
	ld bc,l4310
	call l41eb
	ld (l430a),hl
.l4040
	ld hl,l42c2
	ld a,#fe
	or (hl)
	dec l
	ld c,(hl)
	dec l
	rr c
	rla
	ld c,(hl)
	rr c
	rla
	ld c,a
	add a
	add a
	add a
	xor c
.l4056 equ $ + 1
	ld (l430d),a
	sub a
.l405a equ $ + 1
	cp #00
	ld hl,l4312
	ld c,a
	ld de,#0cf6
	jr z,l4069
	inc d
	inc l
	ld (l405a),a
.l4069
	ld a,#c0
.l406b
	ld b,#f4
	out (c),d
	ld b,e
	out (c),a
	rlca
	out (c),c
	dec b
	outd
	ld b,e
	out (c),a
	rrca
	out (c),c
	dec d
	jp p,l406b
	pop ix
	ret
;
.init_music
;
	push bc
	push de
	push hl
	ld de,l42c1
	ld bc,#0044
	ld hl,l4002
	push hl
	ld (hl),b
	ld hl,l42c0
	push hl
	ld (hl),b
	ldir
	ld hl,l4509
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld (l4013),a
	ex (sp),ix
	ld bc,#0301
	ld a,c
	ld (de),a
.l40b0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#24),c
	ld (ix+#09),e
	ld (ix+#0c),d
	ld (ix+#0f),#02
	ld a,(de)
	ld (ix+#03),a
	inc e
	ld a,(de)
	ld (ix+#06),a
	inc lx
	djnz l40b0
	pop ix
	pop hl
	ld (hl),c
	pop hl
	pop de
	pop bc
	ret
	db #da,#74,#45,#68,#6b,#1a,#51,#7c
	db #05,#37,#75,#6f,#2f

	ld hl,l4040
	ex (sp),hl
;
.stop_music
;
	sub a
	ld (l4002),a
	ld (l430e),a
	ld (l430f),a
	ld (l4310),a
	ret
	ld c,(ix+#0f)
	ld l,(ix+#09)
	ld h,(ix+#0c)
	add hl,bc
	ld a,(hl)
	inc l
	or (hl)
	jr nz,l4107
	sbc hl,bc
	ld c,b
.l4107
	ld d,(hl)
	dec l
	ld e,(hl)
	inc c
	inc c
	ld (ix+#0f),c
	jr l4174
	ld (ix+#2a),a
	jr l4174
	ld a,(de)
	inc de
	ld (ix+#3f),a
	jr l4174
	ld a,(de)
	inc de
	ld (ix+#1e),a
	set 3,(ix+#42)
	ld a,(de)
	inc de
	ld (ix+#21),a
	jr l4174
	ld a,(de)
	inc de
	ld (ix+#39),a
	ld a,(de)
	inc de
	ld (ix+#3c),a
	add a
	ld (ix+#36),a
	set 4,(ix+#42)
	jr l4174
	set 7,(ix+#42)
	set 6,(ix+#42)
	jr l4174
	ld (ix+#42),b
	jr l4174
	ld a,(de)
	inc de
	ld (l42ab),a
	set 2,(ix+#42)
	set 1,(ix+#42)
	jr l4174
.l415f
	inc lx
.l4161
	dec (ix+#24)
	ld a,(ix+#42)
	jr nz,l41a4
	and #30
	ld (ix+#42),a
	ld e,(ix+#03)
	ld d,(ix+#06)
.l4174
	ld a,(de)
	inc de
	cp #b0
	jr c,l4198
	add #20
	jr c,l418d
	add #20
	jr c,l4193
	ld c,a
	ld hl,l433e
	add hl,bc
	ld c,(hl)
	ld (ix+#18),c
	jr l4174
.l418d
	inc a
	ld (ix+#27),a
	jr l4174
.l4193
	ld (ix+#33),a
	jr l4174
.l4198
	or a
	jp p,l41b6
	ld c,a
	ld hl,l4056
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l41a4
	add a
	ret p
	sbc a
	or #01
	add (ix+#2a)
	ld (ix+#2a),a
	ret
	ld (ix+#30),#f0
	jr l41de
.l41b6
	ld (ix+#12),b
	ld (ix+#15),b
	bit 7,(ix+#2a)
	ld (ix+#2a),a
	jr nz,l41cb
	ld (ix+#30),b
	ld (ix+#2d),b
.l41cb
	ld c,(ix+#18)
	ld (ix+#1b),c
	ld c,b
	sub #54
	jr c,l41db
	ld c,#02
	ld (l4021),a
.l41db
	ld (ix+#00),c
.l41de
	ld a,(ix+#27)
	ld (ix+#24),a
	ld (ix+#06),d
	ld (ix+#03),e
	ret
.l41eb
	inc lx
.l41ed
	ld d,#00
	ld a,(ix+#30)
	cp #f0
	jr nc,l4211
	sub #10
	ld (ix+#30),a
	jr nc,l4211
	ld hl,l443b
	ld e,(ix+#33)
	add hl,de
	ld a,(hl)
	add (ix+#2d)
	ld e,a
	add hl,de
	ld a,(hl)
	inc (ix+#2d)
	ld (ix+#30),a
.l4211
	or #f0
	add #0f
	inc a
	jr c,l4219
	sub a
.l4219
	ld (bc),a
	ld hl,l4431
	ld e,(ix+#1b)
	inc e
	add hl,de
	ld a,(hl)
	or a
	jp p,l422c
	ld e,(ix+#18)
	and #7f
.l422c
	ld (ix+#1b),e
	add (ix+#2a)
	add (ix+#3f)
	add a
	ld hl,l4314
	ld e,a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld c,(ix+#42)
	bit 4,c
	jr z,l4270
	sub a
	or (ix+#39)
	jr nz,l424d
	inc a
	and c
.l424d
	ld b,(ix+#36)
	ld l,a
	ld a,(ix+#3c)
	bit 5,c
	jr nz,l425f
	sub l
	jr nz,l4265
	set 5,c
	jr l4265
.l425f
	add l
	cp b
	jr nz,l4265
	res 5,c
.l4265
	ld (ix+#3c),a
	srl b
	sub b
	ld l,a
	sbc a
	ld h,a
	add hl,de
	ex de,hl
.l4270
	ld a,c
	xor #01
	ld (ix+#42),a
	bit 3,c
	jr z,l429b
	ld b,(ix+#21)
	djnz l4298
	ld c,(ix+#1e)
	bit 7,c
	jr z,l4287
	dec b
.l4287
	ld l,(ix+#12)
	ld h,(ix+#15)
	add hl,bc
	ld (ix+#12),l
	ld (ix+#15),h
	add hl,de
	ex de,hl
	jr l429b
.l4298
	ld (ix+#21),b
.l429b
	cpl
	and #03
	ld a,(ix+#00)
	ld c,a
	res 0,c
	rra
	jr nz,l42ae
	ld hl,l430c
.l42ab equ $ + 1
	ld (hl),#17
	or #01
.l42ae
	or c
	bit 2,(ix+#42)
	jr z,l42b9
	res 1,(ix+#42)
.l42b9
	ld (ix+#00),a
	ex de,hl
	ret
	db #00,#00
.l42c2 equ $ + 2
.l42c1 equ $ + 1
.l42c0
	db #54,#68,#69,#73,#20,#41,#59,#20
	db #6d,#75,#73,#69,#63,#20,#6d,#6f
	db #64,#75,#6c,#65,#20,#69,#73,#20
	db #63,#6f,#70,#79,#72,#69,#67,#68
	db #74,#20,#31,#39,#38,#37,#20,#4a
	db #61,#73,#2e,#43,#2e,#42,#72,#6f
	db #6f,#6b,#65,#2e,#20,#2d,#50,#72
	db #65,#70,#61,#72,#65,#20,#74,#6f
.l4306 equ $ + 6
.l4305 equ $ + 5
	db #20,#64,#69,#65,#21,#2d,#00,#00
.l430f equ $ + 7
.l430e equ $ + 6
.l430d equ $ + 5
.l430c equ $ + 4
.l430a equ $ + 2
.l4308
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4312 equ $ + 2
.l4310
	db #00,#00,#00,#00
.l4314
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
.l433e equ $ + 2
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
.l43bc
	dw l451b,#0000
.l43c0
	dw l4543,l4571,l4543,l45a4
	dw #0000
.l43ca
	dw l45b3,l45e5,l45b3,l460c
	dw #0000
.l43d4
	dw l461a,l461c,l461c,l461c
	dw l461c,l46df,l46eb,l46df
	dw l46ed,l461c,l461c,l46df
	dw l4706,l471d,l4754,l4754
	dw l4754,l4765,l47dc,#0000
.l43fc
	dw l469f,l46ed,l46d9,l46ed
	dw l46d0,l4706,l4717,l4728
	dw l478d,l47ca,l47ca,l47ca
	dw l47ca,l47ca,l47d6,#0000
.l441c
	dw l463d,l4771,l4771,l4771
	dw l4782,l47fe,l4811,l47f1
	dw #0000
.l4431 equ $ + 3
	db #00,#01,#03,#09,#80,#0c,#80,#00
.l443b equ $ + 5
	db #00,#00,#03,#03,#83,#10,#1b,#26
	db #43,#4a,#59,#66,#6f,#7b,#84,#8e
	db #9a,#a1,#a7,#a7,#b8,#09,#0e,#0c
	db #0b,#09,#16,#15,#14,#13,#12,#11
	db #f0,#0c,#0e,#0c,#0b,#09,#16,#15
	db #14,#13,#12,#11,#f0,#0c,#1d,#0b
	db #0a,#09,#08,#07,#0a,#09,#08,#07
	db #06,#05,#04,#03,#04,#03,#02,#05
	db #04,#03,#02,#01,#04,#03,#02
	db #01
	db #02,#41,#f0,#4a,#4b,#4c,#7d,#7c
	db #7b,#7a,#f9,#0a,#25,#26,#27,#28
	db #49,#48,#77,#48,#77,#46,#75,#44
	db #73,#44,#f3,#09,#07,#05,#06,#04
	db #05,#03,#04,#02,#03,#01,#02,#01
	db #f0,#08,#1a,#07,#06,#05,#04,#03
	db #02,#01,#f0,#27,#28,#29,#2a,#4b
	db #4a,#79,#4a,#79,#48,#77,#46,#f5
	db #0b,#1a,#29,#28,#27,#26,#25,#07
	db #26,#f5,#0a,#29,#28,#27,#26,#25
	db #24,#23,#22,#21,#f0,#0a,#00,#08
	db #06,#00,#07,#05,#08,#05,#02,#06
	db #01,#f4,#47,#48,#49,#7a,#79,#78
	db #77,#f6,#0d,#0e,#0d,#1c,#1b,#1a
	db #f9,#0e,#0d,#0e,#0d,#0c,#0b,#1a
	db #0b,#0a,#09,#18,#17,#08,#07,#06
	db #15,#14,#05,#f4,#16,#55,#d5,#d6
	db #d7,#d8,#f9
.l4509
	db #05
	dw l43bc,l43c0,l43ca
	db #06
	dw l441c,l43fc,l43d4
.l451b equ $ + 4
	db #ff,#80,#80,#85,#86,#02,#04,#c0
	db #b0,#e0,#8b,#0d,#8a,#0e,#8a,#0e
	db #8a,#0e,#8a,#0e,#c1,#8a,#0e,#c0
	db #80,#8a,#0e,#8a,#0e,#8a,#0e,#80
	db #c1,#8a,#0e,#c0,#80,#0e,#0e,#c1
.l4543 equ $ + 4
	db #e1,#8a,#0e,#85,#b1,#c2,#86,#01
	db #02,#e1,#32,#2d,#2b,#29,#2b,#2d
	db #e5,#26,#e7,#80,#b0,#86,#06,#0c
	db #c3,#e5,#1f,#ef,#21,#b1,#c2,#86
	db #01,#02,#e1,#32,#2d,#2b,#29,#2b
	db #2d,#e9,#30,#c4,#b0,#e5,#35,#e7
.l4574 equ $ + 5
.l4571 equ $ + 2
	db #34,#85,#e1,#80,#e5,#34,#c6,#e1
	db #35,#32,#e3,#c9,#87,#82,#14,#03
	db #2d,#87,#82,#14,#03,#2d,#eb,#80
	db #e5,#ca,#86,#03,#03,#8a,#82,#ff
	db #0c,#3e,#8a,#82,#ff,#0c,#3e,#b1
	db #c2,#86,#01,#02,#e1,#32,#2d,#2b
.l45a4 equ $ + 5
	db #29,#2b,#2d,#e7,#26,#cb,#b0,#fd
	db #34,#32,#34,#e1,#32,#8c,#84,#32
.l45b3 equ $ + 4
	db #8c,#fd,#34,#85,#b0,#c4,#86,#01
	db #02,#ef,#2d,#e1,#8c,#29,#ed,#8c
	db #2d,#e1,#8c,#29,#c5,#e3,#39,#e0
	db #32,#32,#e1,#39,#e7,#c4,#2d,#8c
	db #e5,#26,#e7,#8c,#29,#e3,#80,#c5
	db #e1,#3a,#86,#02,#04,#c4,#e1,#84
.l45e5 equ $ + 6
	db #2d,#8c,#e3,#2e,#e7,#85,#e3,#2d
	db #86,#01,#02,#c5,#e5,#39,#86,#02
	db #04,#c4,#2d,#c6,#e1,#29,#26,#c4
	db #e3,#26,#e7,#26,#c8,#e0,#32,#34
	db #32,#34,#eb,#35,#e3,#80,#c4,#86
.l460c equ $ + 5
	db #04,#08,#ef,#2d,#e3,#2d,#cb,#86
	db #02,#04,#fd,#2d,#2d,#2d,#2d,#8c
.l461c equ $ + 5
.l461a equ $ + 3
	db #e3,#2d,#85,#e7,#80,#b0,#89,#00
	db #86,#03,#06,#c0,#8b,#17,#e0,#09
	db #8a,#e4,#09,#8a,#e0,#09,#8a,#e8
	db #09,#8a,#e0,#09,#8a,#e4,#09,#8a
.l463d equ $ + 6
	db #e0,#09,#8a,#e8,#09,#85,#89,#00
	db #c3,#b0,#86,#02,#04,#ff,#39,#e2
	db #8c,#39,#cc,#e2,#39,#ff,#35,#ce
	db #e3,#34,#86,#00,#00,#ca,#e5,#45
	db #c9,#86,#03,#06,#e0,#1d,#21,#1b
	db #1f,#18,#1d,#e9,#80,#c3,#86,#02
	db #04,#fd,#39,#8c,#39,#e3,#ca,#40
	db #45,#40,#cd,#e3,#0f,#e5,#0f,#e9
	db #8c,#1b,#eb,#80,#e3,#0f,#e5,#0f
	db #e9,#8c,#1b,#eb,#80,#c3,#86,#02
	db #04,#ff,#39,#8c,#39,#cd,#e3,#0f
	db #e5,#0f,#8c,#1b,#ef,#80,#cd,#e3
	db #0f,#e5,#0f,#8c,#1b,#ff,#80,#85
.l469f
	db #ef,#80,#cc,#b0,#86,#01,#02,#e0
	db #39,#38,#35,#e2,#34,#e9,#80,#e0
	db #39,#38,#39,#e2,#3b,#ff,#3c,#ce
	db #e3,#39,#86,#00,#01,#ca,#e0,#45
	db #45,#45,#e2,#45,#c9,#86,#02,#04
	db #e0,#29,#2d,#27,#2b,#24,#29,#f1
.l46d0 equ $ + 1
	db #80,#cf,#86,#03,#06,#ef,#21,#24
.l46d9 equ $ + 2
	db #21,#24,#cd,#e3,#09,#e5,#09,#85
.l46df
	db #b1,#cd,#89,#00,#e3,#02,#e5,#02
.l46ed equ $ + 6
.l46eb equ $ + 4
	db #b0,#89,#0c,#85,#89,#f4,#c8,#e0
	db #1a,#e1,#1b,#1b,#e0,#80,#e1,#1b
	db #1b,#1b,#e0,#1b,#e1,#1b,#e0,#1a
.l4706 equ $ + 7
	db #1b,#1a,#1b,#1a,#1b,#1a,#85,#c8
	db #e0,#0e,#0e,#0f,#8c,#0e,#0e,#82
	db #01,#30,#ea,#16,#e5,#8c,#15,#85
.l471d equ $ + 6
.l4717
	db #cd,#e3,#09,#e1,#09,#85,#b1,#cd
	db #89,#00,#e3,#02,#e1,#02,#b0,#89
.l4728 equ $ + 1
	db #0c,#c8,#e0,#2b,#2d,#e3,#2e,#e1
	db #2d,#2b,#2a,#27,#2a,#27,#e0,#2a
	db #27,#2a,#b2,#27,#27,#27,#27,#27
	db #27,#27,#27,#27,#27,#27,#27,#27
	db #e3,#b0,#8c,#82,#fe,#12,#27,#8c
.l4754 equ $ + 5
	db #82,#02,#12,#27,#85,#86,#03,#06
	db #e3,#c8,#09,#c3,#0e,#c8,#09,#c3
.l4765 equ $ + 6
	db #0e,#c8,#09,#c3,#0e,#85,#c8,#09
	db #c3,#0e,#c8,#09,#c3,#0e,#c8,#0a
.l4771 equ $ + 2
	db #09,#85,#86,#02,#04,#e3,#c8,#0e
	db #c3,#15,#c8,#0e,#c3,#15,#c8,#0e
.l4782 equ $ + 3
	db #c3,#15,#85,#c8,#0e,#c3,#15,#c8
.l478d equ $ + 6
	db #0e,#c3,#15,#e7,#1a,#85,#cc,#b1
	db #86,#01,#02,#f1,#32,#e1,#30,#32
	db #e5,#33,#e1,#32,#30,#2e,#30,#2e
	db #e9,#2d,#e3,#33,#e1,#32,#30,#32
	db #e3,#2e,#e1,#30,#2e,#30,#e0,#2e
	db #30,#2e,#f8,#2d,#cb,#b0,#ed,#22
	db #e1,#24,#ef,#26,#e9,#80,#e1,#1d
	db #1b,#1d,#1b,#e0,#1d,#1b,#fb,#1a
.l47ca equ $ + 3
	db #eb,#80,#c8,#e1,#26,#28,#29,#28
.l47d6 equ $ + 7
	db #29,#26,#28,#2b,#e3,#29,#85,#cb
.l47dc equ $ + 5
	db #ef,#26,#e3,#80,#85,#ff,#cb,#16
	db #8c,#16,#8c,#16,#f3,#8c,#16,#8c
	db #16,#8c,#16,#8c,#16,#8c,#16,#ef
.l47f1 equ $ + 2
	db #80,#b1,#ce,#e1,#0e,#10,#11,#10
.l47fe equ $ + 7
	db #11,#0e,#10,#13,#e3,#80,#85,#ff
	db #cb,#29,#8c,#29,#8c,#29,#f3,#8c
	db #29,#8c,#29,#80,#ef,#80,#c8,#86
.l4811 equ $ + 2
	db #01,#02,#89,#00,#e1,#29,#2b,#2d
	db #2b,#2d,#29,#2b,#2e,#e3,#2d,#89
	db #24,#85
;
; #486f
; ld a,#01
; call #4085	; init 00 main 01 intro
; call #49c1
; .l4877
; call #bd19
; call #4000
; call #bb09
; jr nc,l4877
; call #40e7
; call #4000
; xor a
; ld (#4afc),a
; "This AY music module is copyright 1987 Jas.C.Brooke. -Prepare to die!-"
;
.music_info
	db "Rastan (1988)(Ocean Software)(Jason C. Brooke)()",0
	db "This AY music module is copyright 1987 Jas.C.Brooke. -Prepare to die!-",0

	read "music_end.asm"
