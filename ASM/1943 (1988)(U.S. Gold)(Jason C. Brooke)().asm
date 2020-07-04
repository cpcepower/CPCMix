; Music of 1943 (1988)(U.S. Gold)(Jason C. Brooke)()
; Ripped by Megachur the Megachur the 10/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "1943.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #9d00
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

;
.play_music
;
	push ix
	sub a
.l9d04 equ $ + 1
.music_end equ $ + 1
	cp #00
	jr z,l9d42
	ld b,a
	ld ix,la08c
.l9d0d equ $ + 1
	ld a,#00
.l9d0f equ $ + 1
	add #00
	ld (l9d0f),a
	jr nc,l9d21
	call l9e84
	call l9e82
	call l9e82
	ld lx,la08c	;#8c
.l9d22 equ $ + 1
.l9d21
	ld a,#00
	ld (la18e),a
	ld bc,la190
	call l9f10
	ld (la188),hl
	ld bc,la191
	call l9f0e
	ld (la18a),hl
	ld bc,la192
	call l9f0e
	ld (la18c),hl
.l9d41
	sub a
.l9d43 equ $ + 1
.l9d42
	cp #00
	jr z,l9da1
	ld hl,la085
	dec (hl)
	jr nz,l9d54
	ld (la192),a
	ld (l9d43),a
	jr l9da1
.l9d54
	ld de,(la079)
	ld hl,la087
	dec (hl)
	jr nz,l9d71
	ld a,(la082)
	ld (hl),a
	ld hl,la083
;.l9d66 equ $ + 1
	rrc (hl)
	ld hl,(la07d)
	jr c,l9d6f
	ld hl,(la07f)
.l9d6f
	add hl,de
	ex de,hl
.l9d71
	ld hl,(la077)
	add hl,de
	ex de,hl
	ld hl,la086
	dec (hl)
	jr nz,l9d84
	ld a,(la081)
	ld (hl),a
	ld de,(la07b)
.l9d84
	ex de,hl
	ld (la079),hl
	ld a,#10
	ld (la192),a
	ld (la18c),hl
	ld a,l
	ld hl,la084
	rrc (hl)
	ld hl,la08e
	res 0,(hl)
	jr nc,l9da1
	inc (hl)
	ld (la18e),a
.l9da1
	ld hl,la08e
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
	ld (la18f),a
	ld hl,la194
	sub a
.l9dbe equ $ + 1
	cp #00
	ld c,a
	ld de,#0cf6
	jr z,l9dca
	inc d
	inc l
	ld (l9dbe),a
.l9dca
	ld a,#c0
.l9dcc
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
	jp p,l9dcc
	pop ix
	ret
;
.jumps_table
;
	db #ed
	db #87
	db #53
	db #7b
	db #7e
	db #1b
	db #64
	db #8f
	db #06
	db #45
	db #88
	db #82
	db #3d
	db #30

	ld hl,l9d41
	ex (sp),hl
;
.stop_music
;
	sub a
	ld (l9d04),a
	ld (la190),a
	ld (la191),a
	ld (la192),a
	ret

	ld a,(ix+#15)
	ld l,(ix+#09)
	ld h,(ix+#0c)
	add #02
	cp (ix+#0f)
	jr c,l9e19
	ld a,(ix+#12)
.l9e19
	ld c,a
	add hl,bc
	ld e,(hl)
	inc l
	ld d,(hl)
	ld (ix+#15),a
	jr l9e97
	ld a,(de)
	ld (ix+#4e),a
	inc de
	ld a,(de)
	ld (ix+#51),a
	inc de
	jr l9e97
	ld (ix+#33),a
	jr l9e97
	ld a,(de)
	inc de
	ld (ix+#48),a
	jr l9e97
	ld a,(de)
	inc de
	ld (ix+#24),a
	ld a,(de)
	inc de
	ld (ix+#27),a
	ld a,(de)
	inc de
	ld (ix+#2a),a
	set 3,(ix+#4b)
	jr l9e97
	ld a,(de)
	inc de
	ld (ix+#42),a
	ld a,(de)
	inc de
	ld (ix+#45),a
	add a
	ld (ix+#3f),a
	set 4,(ix+#4b)
	jr l9e97
	set 7,(ix+#4b)
	set 6,(ix+#4b)
	jr l9e97
	ld (ix+#4b),b
	jr l9e97
	ld a,(de)
	inc de
	ld (l9fd0),a
	set 2,(ix+#4b)
	set 1,(ix+#4b)
	jr l9e97
.l9e82
	inc lx
.l9e84
	dec (ix+#2d)
	ld a,(ix+#4b)
	jr nz,l9ec7
	and #30
	ld (ix+#4b),a
	ld e,(ix+#03)
	ld d,(ix+#06)
.l9e97
	ld a,(de)
	inc de
	cp #b0
	jr c,l9ebb
	add #20
	jr c,l9eb0
	add #20
	jr c,l9eb6
	ld c,a
	ld hl,la128
	add hl,bc
	ld c,(hl)
	ld (ix+#1e),c
	jr l9e97
.l9eb0
	inc a
	ld (ix+#30),a
	jr l9e97
.l9eb6
	ld (ix+#3c),a
	jr l9e97
.l9ebb
	or a
	jp p,l9ed9
	ld c,a
	ld hl,jumps_table-&80	;l9d66
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l9ec7
	add a
	ret p
	sbc a
	or #01
	add (ix+#33)
	ld (ix+#33),a
	ret
	ld (ix+#39),#f0
	jr l9f01
.l9ed9
	ld (ix+#18),b
	ld (ix+#1b),b
	bit 7,(ix+#33)
	ld (ix+#33),a
	jr nz,l9eee
	ld (ix+#39),b
	ld (ix+#36),b
.l9eee
	ld c,(ix+#1e)
	ld (ix+#21),c
	ld c,b
	sub #54
	jr c,l9efe
	ld c,#02
	ld (l9d22),a
.l9efe
	ld (ix+#00),c
.l9f01
	ld a,(ix+#30)
	ld (ix+#2d),a
	ld (ix+#06),d
	ld (ix+#03),e
	ret
.l9f0e
	inc lx
.l9f10
	ld d,#00
	ld a,(ix+#39)
	cp #f0
	jr nc,l9f34
	sub #10
	ld (ix+#39),a
	jr nc,l9f34
	ld hl,la25f
	ld e,(ix+#3c)
	add hl,de
	ld a,(hl)
	add (ix+#36)
	ld e,a
	add hl,de
	ld a,(hl)
	inc (ix+#36)
	ld (ix+#39),a
.l9f34
	or #f0
	add #0f
	inc a
	jr c,l9f3c
	sub a
.l9f3c
	ld (bc),a
	ld hl,la220
	ld e,(ix+#21)
	inc e
	add hl,de
	ld a,(hl)
	or a
	jp p,l9f53
	inc a
	jr z,l9f56
	ld e,(ix+#1e)
	dec a
	and #7f
.l9f53
	ld (ix+#21),e
.l9f56
	add (ix+#33)
	add (ix+#48)
	add a
	ld hl,la0e0
	ld e,a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld c,(ix+#4b)
	bit 4,c
	jr z,l9f97
	sub a
	or (ix+#42)
	jr nz,l9f74
	inc a
	and c
.l9f74
	ld b,(ix+#3f)
	ld l,a
	ld a,(ix+#45)
	bit 5,c
	jr nz,l9f86
	sub l
	jr nz,l9f8c
	set 5,c
	jr l9f8c
.l9f86
	add l
	cp b
	jr nz,l9f8c
	res 5,c
.l9f8c
	ld (ix+#45),a
	srl b
	sub b
	ld l,a
	sbc a
	ld h,a
	add hl,de
	ex de,hl
.l9f97
	ld a,c
	xor #01
	ld (ix+#4b),a
	bit 3,c
	jr z,l9fc0
	ld b,(ix+#2a)
	djnz l9fbd
	ld c,(ix+#24)
	ld b,(ix+#27)
	ld l,(ix+#18)
	ld h,(ix+#1b)
	add hl,bc
	ld (ix+#18),l
	ld (ix+#1b),h
	add hl,de
	ex de,hl
	jr l9fc0
.l9fbd
	ld (ix+#2a),b
.l9fc0
	cpl
	and #03
	ld a,(ix+#00)
	ld c,a
	res 0,c
	rra
	jr nz,l9fd3
	ld hl,la18e
.l9fd0 equ $ + 1
	ld (hl),#10
	or #01
.l9fd3
	or c
	bit 2,(ix+#4b)
	jr z,l9fde
	res 1,(ix+#4b)
.l9fde
	ld (ix+#00),a
	ld l,(ix+#4e)
	ld h,(ix+#51)
	add hl,de
	ret
;
.init_music
;
	push bc
	push de
	push hl
	ld de,la08d
	ld bc,#0053
	ld hl,l9d04
	push hl
	ld (hl),b
	ld hl,la08c
	push hl
	ld (hl),b
	ldir
	ld hl,la1fe
	ld c,a
	add a
	add c
	add a
	add a
	add c
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld (l9d0d),a
	ex (sp),ix
	ld bc,#0301
	ld a,#ff
	ld (l9d0f),a
.la018
	ld a,(hl)
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#2d),c
	ld (ix+#09),e
	ld (ix+#0c),d
	ld a,(de)
	ld (ix+#03),a
	inc e
	ld a,(de)
	ld (ix+#06),a
	inc lx
	djnz la018
	pop ix
	pop hl
	ld (hl),c
	pop hl
	pop de
	pop bc
	ret
; ???
	push bc
	push de
	push hl
	add a
	ld c,a
	add a
	add a
	ld b,#00
	ld hl,la497
	add hl,bc
	ld c,a
	add hl,bc
	add hl,bc
	ld de,la077
	ld c,#0f
	sub a
	ld (l9d43),a
	ldir
	ld c,#03
	ld de,la193
	ldir
	ld hl,(la081)
	ld (la086),hl
	inc a
	ld (l9d43),a
	ld (l9dbe),a
	pop hl
	pop de
	pop bc
	ret
.la07d equ $ + 6
.la07b equ $ + 4
.la079 equ $ + 2
.la077
	db #00,#00,#00,#00,#00,#00,#00,#00
.la086 equ $ + 7
.la085 equ $ + 6
.la084 equ $ + 5
.la083 equ $ + 4
.la082 equ $ + 3
.la081 equ $ + 2
.la07f
	db #00,#00,#00,#00,#00,#00,#00,#00
.la087
	db #00,#00,#00,#00,#00
.la08c
	db #54
.la08d
	db #68
.la08e
	db #65,#20,#53,#4e,#44,#20,#73,#6f
	db #75,#6e,#64,#20,#6d,#6f,#64,#75
	db #6c,#65,#20,#28,#43,#29,#20,#4a
	db #61,#73,#2e,#43,#2e,#42,#72,#6f
	db #6f,#6b,#65,#2e,#20,#4c,#61,#74
	db #65,#73,#74,#20,#76,#65,#72,#73
	db #69,#6f,#6e,#20,#31,#36,#74,#68
	db #20,#4a,#75,#6e,#65,#20,#31,#39
	db #38,#38,#2e,#20,#28,#42,#6f,#72
	db #6e,#20,#69,#6e,#20,#31,#39,#38
	db #36,#29
.la0e0
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
.la128
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
.la188
	db #00,#00
.la18a
	db #00,#00
.la18c
	db #00,#00
.la18e
	db #00
.la18f
	db #00
.la190
	db #00
.la191
	db #00
.la192
	db #00
.la193
	db #00
.la194
	db #00,#00
.la196
	dw la30e,la30e,la333,la333
	dw la3f5,la3f5,la287,la285
	dw la2c2,la287,la287,la2c8
	dw la287,la285,la2c5,la287
	dw la2cb,la287,la285,la2c2
	dw la287,la287,la2c8,la287
	dw la285,la2c5,la287,la287
	dw la2ad
.la1d0
	dw la2f4,la367,la367,la404
	dw la414,la367,la384,la404
	dw la414
.la1e2
	dw la302,la3a2,la3a2,la40a
	dw la456,la3cb,la3cb,la40a
	dw la410
.la1f4
	dw la2f4
.la1f6
	dw la302
.la1f8
	dw la30e,la315,la332
.la1fe
	db #40,#3a,#04
	dw la196
	db #12,#02
	dw la1d0
	db #12,#02
	dw la1e2
	db #40,#80,#80
	dw la1f8
	db #80,#80
	dw la1f4
	db #80,#80
	dw la1f6
	db #00,#01,#09,#11,#19,#21,#29,#31
.la220
	db #39,#80,#00,#0f,#00,#00,#0f,#00
	db #0f,#ff,#00,#10,#00,#00,#10,#00
	db #10,#ff,#00,#11,#00,#00,#11,#00
	db #11,#ff,#00,#13,#00,#00,#13,#00
	db #13,#ff,#00,#14,#00,#00,#14,#00
	db #14,#ff,#00,#15,#00,#00,#15,#00
	db #15,#ff,#00,#05,#00,#00,#05,#00
	db #05,#ff,#0c,#00,#0c,#0c,#ff
.la25f
	db #05,#0c,#14,#19,#1e,#0b,#0c,#0b
	db #1a,#79,#78,#77,#f6,#0c,#0e,#0d
	db #0c,#0b,#7a,#79,#78,#f7,#0b,#0e
	db #0c,#08,#07,#f5,#0c,#1e,#0b,#08
	db #07,#f5,#09,#0a,#07,#f0
.la285
	db #89,#ff
.la287
	db #8a,#c3,#e1,#b8,#0d,#c2,#e0,#b0
	db #0d,#0d,#e1,#0d,#8a,#c3,#e0,#b8
	db #0d,#c2,#b0,#0d,#8a,#c3,#e1,#b8
	db #0d,#c2,#e0,#b0,#0d,#0d,#e1,#0d
	db #e0,#0d,#0d,#89,#00,#85
.la2ad
	db #8a,#e0,#c2,#b0,#0d,#0d,#0d,#0d
	db #8a,#0d,#0d,#0d,#0d,#e1,#8a,#0d
	db #0d,#8a,#0d,#0d,#85
.la2c2
	db #89,#fd,#85
.la2c5
	db #89,#fb,#85
.la2c8
	db #89,#02,#85
.la2cb
	db #8a,#c3,#e1,#b8,#0d,#c2,#e0,#b0
	db #0d,#0d,#8a,#c3,#e1,#b8,#0c,#c2
	db #e0,#b0,#0d,#0d,#8a,#c3,#e1,#b8
	db #0a,#c2,#e0,#b0,#0d,#0d,#8a,#c3
	db #e1,#b8,#08,#c2,#e0,#b0,#0d,#0d
	db #85
.la2f4
	db #c1,#e3,#86,#01,#01,#1d,#1e,#1f
	db #20,#21,#22,#23,#24,#85
.la302
	db #c0,#ef,#80,#e3,#86,#01,#01,#1d
	db #1e,#1f,#20,#85
.la30e
	db #c4,#e0,#8b,#0d,#0c,#8a,#0c
.la315
	db #8a,#0c,#8a,#0c,#8a,#0c,#8a,#0c
	db #8a,#0c,#8a,#0c,#8a,#0c,#8a,#0c
	db #8a,#0c,#8a,#0c,#8a,#0c,#8a,#0c
	db #8a,#0c,#8a,#0c,#85
.la332
	db #88
.la333
	db #e1,#86,#03,#06,#c3,#8b,#00,#0d
	db #0d,#0d,#0d,#8a,#0d,#0d,#8a,#0d
	db #0d,#8a,#0b,#0b,#0b,#0b,#8a,#0b
	db #0b,#8a,#0b,#0b,#8a,#09,#09,#09
	db #09,#8a,#09,#09,#8a,#09,#09,#8a
	db #0a,#0a,#0a,#0a,#8a,#0c,#0c,#8a
	db #0c,#8a,#0c,#85
.la367
	db #c1,#e1,#31,#80,#31,#80,#80,#2f
	db #31,#f1,#2f,#e1,#2d,#80,#2d,#80
	db #80,#2d,#2d,#2d,#e5,#2e,#e1,#2e
	db #e5,#30,#e1,#30,#85
.la384
	db #e1,#31,#80,#31,#80,#34,#33,#31
	db #f1,#2f,#e1,#31,#80,#31,#80,#34
	db #33,#31,#34,#e2,#36,#31,#e1,#36
	db #e2,#38,#33,#e1,#38,#85
.la3a2
	db #c0,#b2,#e1,#28,#80,#28,#80,#80
	db #28,#28,#f1,#28,#b3,#e1,#28,#80
	db #28,#80,#80,#28,#b1,#2a,#b3,#28
	db #b4,#e2,#27,#b6,#25,#b4,#e1,#27
	db #b3,#e2,#27,#b5,#24,#b3,#e1,#27
	db #85
.la3cb
	db #c0,#b2,#e1,#28,#80,#28,#80,#80
	db #28,#28,#f1,#28,#b3,#e1,#28,#80
	db #28,#80,#80,#28,#b1,#2a,#b3,#28
	db #c1,#b4,#e2,#27,#b6,#25,#b4,#e1
	db #27,#b3,#e2,#27,#b5,#24,#b3,#e1
	db #27,#85
.la3f5
	db #e1,#8a,#0d,#0d,#8a,#0d,#0d,#8a
	db #0d,#0d,#0d,#e0,#0b,#0c,#85
.la404
	db #b0,#fb,#35,#e3,#80,#85
.la40a
	db #b7,#fb,#2c,#e3,#80,#85
.la410
	db #8d,#ff,#7f,#b0
.la414
	db #eb,#29,#e1,#2a,#2b,#ef,#2c,#e9
	db #2e,#e1,#30,#31,#33,#ef,#35,#e9
	db #36,#e3,#3a,#e1,#38,#ef,#36,#e9
	db #33,#e3,#36,#e1,#35,#ef,#31,#eb
	db #29,#e1,#2a,#2b,#ef,#2c,#e9,#2e
	db #e1,#30,#31,#33,#ef,#35,#e9,#36
	db #e3,#3a,#e1,#38,#ef,#36,#e7,#33
	db #e3,#2c,#33,#ef,#31,#8d,#00,#00
	db #80,#85
.la456
	db #c0,#b0,#eb,#20,#e1,#22,#23,#ef
	db #24,#e9,#25,#e1,#27,#29,#2b,#ef
	db #2c,#e9,#2e,#e3,#31,#e1,#31,#ef
	db #30,#e9,#2c,#e3,#30,#e1,#2c,#ef
	db #29,#eb,#20,#e1,#22,#23,#ef,#24
	db #e9,#25,#e1,#27,#29,#2b,#ef,#2c
	db #e9,#2e,#e3,#31,#e1,#31,#ef,#30
	db #e7,#2c,#e3,#27,#2c,#ef,#29,#80
	db #85
.la497
	db #09,#00,#aa,#00,#af,#00,#0a,#00
	db #f6,#7f,#00,#01,#55,#00,#0c,#3a
	db #07,#09,#09,#00,#aa,#00,#c8,#00
	db #1e,#00,#e2,#7f,#00,#01,#55,#00
	db #12,#2e,#09,#09,#09,#00,#96,#00
	db #e6,#00,#32,#00,#ce,#7f,#00,#01
	db #33,#00,#18,#22,#0b,#09,#28,#00
	db #eb,#00,#e7,#00,#09,#00,#f7,#7f
	db #00,#03,#55,#00,#0a,#b8,#0b,#09
	db #dd,#7f,#58,#02,#58,#02,#04,#00
	db #fc,#7f,#00,#01,#55,#00,#0a,#04
	db #10,#09,#00,#00,#26,#00,#26,#00
	db #01,#00,#fe,#7f,#00,#01,#55,#00
	db #0a,#34,#21,#09,#00,#00,#41,#00
	db #32,#00,#19,#00,#e7,#7f,#04,#01
	db #55,#00,#08,#ac,#0d,#09,#f1,#7f
	db #96,#00,#96,#00,#0f,#00,#f1,#7f
	db #00,#01,#55,#00,#0a,#dc,#05,#09
	db #00,#00,#46,#00,#50,#00,#19,#00
	db #e7,#7f,#05,#01,#55,#00,#0a,#dc
	db #05,#09,#fe,#ff,#1e,#00,#1d,#00
	db #04,#00,#fd,#ff,#10,#01,#ab,#ff
	db #50,#3e,#17,#09,#01,#00,#09,#00
	db #08,#00,#04,#00,#fc,#ff,#14,#01
	db #ba,#ff,#50,#3e,#17,#09,#01,#00
	db #06,#00,#00,#00,#03,#00,#fe,#ff
	db #0f,#01,#55,#ff,#1e,#68,#10,#09
	db #01,#00,#06,#00,#00,#00,#03,#00
	db #fe,#ff,#0f,#01,#55,#ff,#05,#58
	db #02,#09,#04,#00,#11,#00,#11,#00
	db #00,#00,#00,#00,#04,#01,#55,#ff
	db #08,#ec,#13,#09,#09,#08,#0f,#0b
	db #0a,#0b,#0b,#09,#0a,#0b,#0d,#09
	db #0a,#08,#0a,#0b,#09,#0d,#0a,#0a
	db #09,#0f,#0c,#0c,#0e,#0c,#0f,#0c
	db #0e,#0c,#0c,#0c,#0e,#0c,#0d,#0c
	db #0d,#0c,#0e,#0c,#0d,#0c,#0c,#0f
	db #0f,#0c,#0d,#0f,#0c,#0c,#0d,#0c
	db #0c,#0f,#0c,#0e,#0d,#0c,#0d,#0c
	db #0c,#0c,#0e,#0c,#0e,#0f,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0f
	db #0c,#0c,#0c,#0c,#0e,#0c,#0c,#0c
	db #0c,#0c,#0d,#0c,#0c,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0f,#0e,#0e,#0e
	db #0f,#00,#00
;
; #a08f
; db " SND sound module (C) Jas.C.Brooke. Latest version 16th June 1988. (Born in 1986)"
;
.music_info
	db "1943 (1988)(U.S. Gold)(Jason C. Brooke)",0
	db "The SND sound module (C) Jas.C.Brooke. Latest version 16th June 1988. (Born in 1986)",0

	read "music_end.asm"
