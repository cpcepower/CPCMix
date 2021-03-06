; Music of A Christmas Carol (1986)(Database Software)()()
; Ripped by Megachur the 09/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CHRISTMC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7000
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

	jp l7099
	jp l7006
.l7006
	push af
	push bc
	push de
	push hl
	push ix
	ld a,#01
	ld (l7325),a
	ld a,(ix+#00)
	call l711b
	ld hl,l7029
	ld b,#81
	ld de,l7032
	call #bcd7
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l7029
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l7032
	push af
	push bc
	push de
	push hl
	push ix
	ld hl,(l7295)
	ld a,(l7297)
	and h
	and l
	jr nz,l7071
	ld a,#42
	call #bb1e
	jp nz,l705a
	ld a,(l7325)
	cp #02
	jp nz,l706b
	ld a,#2f
	call #bb1e
	jp z,l706b
.l705a
	ld hl,l7029
	call #bcdd
	call #bca7
	ld a,#02
	ld (l7325),a
	jp l7074
.l706b
	call l70f0
	jp l7074
.l7071
	call l707b
.l7074
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l707b
	ld a,#01
	call #bcad
	ret m
	ld a,#02
	call #bcad
	ret m
	ld a,#04
	call #bcad
	ret m
	ld hl,l7029
	call #bcdd
	ld a,#00
	ld (l7325),a
	ret
.l7099
	ld a,(ix+#00)
.l709c
	push af
	call l711b
.l70a0
	ld hl,(l7295)
	ld a,(l7297)
	and l
	and h
	jr nz,l70b6
	call l70f0
	ld a,#2f
	call #bb1e
	jr nz,l70c7
	jr l70a0
.l70b6
	call l70cf
	call l70e7
	pop af
	inc a
	cp #1d
	jr nz,l70c4
	ld a,#01
.l70c4
	jp l709c
.l70c7
	call l70cf
	call l70e7
	pop af
	ret
.l70cf
	ld b,#01
	call l70db
	ld b,#02
	call l70db
	ld b,#04
.l70db
	ei
	push bc
	ld a,b
	call #bcad
	pop bc
	or a
	jp m,l70db
	ret
.l70e7
	ld hl,#ffff
.l70ea
	dec hl
	ld a,h
	or l
	jr nz,l70ea
	ret
.l70f0
	ld a,#01
	call #bcad
	and #07
	jr z,l70fe
	ld a,#01
	call l7171
.l70fe
	ld a,#02
	call #bcad
	and #07
	jr z,l710c
	ld a,#02
	call l7171
.l710c
	ld a,#04
	call #bcad
	and #07
	jr z,l711a
	ld a,#03
	call l7171
.l711a
	ret
.l711b
	ld e,a
	ld a,(l7324)
	cp e
	ret c
	dec e
	ld d,#00
	ld hl,l72a5
	add hl,de
	ld a,(hl)
	ld (l729b),a
	ld a,e
	add a
	ld e,a
	add a
	add e
	ld l,a
	ld h,#00
	ld de,l7326
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld hl,l7326
	add hl,de
	ld (l7287),hl
	pop hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld hl,l7326
	add hl,de
	ld (l728b),hl
	pop hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,l7326
	add hl,de
	ld (l728f),hl
	ld a,#00
	ld (l7289),a
	ld (l728d),a
	ld (l7291),a
	ld (l7295),a
	ld (l7296),a
	ld (l7297),a
	ret
.l7171
	dec a
	ld (l7285),a
	ld l,a
	ld h,#00
	ld de,l7295
	add hl,de
	ld (l7293),hl
	ld a,(hl)
	or a
	ret nz
	ld hl,(l7285)
	add hl,hl
	add hl,hl
	ld de,l7287
	add hl,de
	push hl
	pop ix
	call l7206
	ld hl,(l7293)
	ld a,(hl)
	or a
	ret nz
	call l7237
	call l719e
	ret
.l719e
	ld hl,(l7285)
	ld de,l72c1
	add hl,de
	ld a,(hl)
	ld (l729c),a
	ld hl,(l729f)
	ld a,h
	or l
	jr nz,l71bd
	ld a,#00
	ld (l729d),a
	ld (l729e),a
	ld (l72a2),a
	jr l71fa
.l71bd
	ld hl,(l7285)
	ld de,l7298
	add hl,de
	ld a,(hl)
	or a
	jp m,l71d6
	ld (l729d),a
	ld (l729e),a
	ld a,#00
	ld (l72a2),a
	jr l71fa
.l71d6
	xor #ff
	inc a
	ld (l72a2),a
	ld c,#ff
.l71de
	inc c
	call #b915
	cp #80
	jr nz,l71de
	ld a,h
	or a
	jr nz,l71f2
	ld a,(l72a2)
	srl a
	ld (l72a2),a
.l71f2
	ld a,#00
	ld (l729d),a
	ld (l729e),a
.l71fa
	ld a,#00
	ld (l72a1),a
	ld hl,l729c
	call #bcaa
	ret
.l7206
	ld h,#06
	call l7259
	ld a,l
	cp #3f
	jr z,l7221
	cp #3e
	jr z,l7227
	add hl,hl
	ld de,l72c4
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l729f),de
	ret
.l7221
	ld hl,(l7293)
	ld (hl),#ff
	ret
.l7227
	ld h,#08
	call l7259
	ld a,l
	ld hl,(l7285)
	ld de,l7298
	add hl,de
	ld (hl),a
	jr l7206
.l7237
	ld h,#03
	call l7259
	ld de,l731c
	add hl,de
	ld e,(hl)
	ld d,#00
	ld a,(l729b)
	ld hl,#0000
	ld b,#08
.l724b
	rra
	jr nc,l724f
	add hl,de
.l724f
	sla e
	rl d
	djnz l724b
	ld (l72a3),hl
	ret
.l7259
	ld e,(ix+#00)
	ld d,(ix+#01)
	ld b,(ix+#02)
	ld c,(ix+#03)
	ld l,#00
.l7267
	ld a,b
	or a
	jr nz,l7270
	ld b,#08
	ld a,(de)
	ld c,a
	inc de
.l7270
	rl c
	rl l
	dec b
	dec h
	jr nz,l7267
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#02),b
	ld (ix+#03),c
	ret
.l728b equ $ + 6
.l7289 equ $ + 4
.l7287 equ $ + 2
.l7285
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7293 equ $ + 6
.l7291 equ $ + 4
.l728f equ $ + 2
.l728d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l729c equ $ + 7
.l729b equ $ + 6
.l7298 equ $ + 3
.l7297 equ $ + 2
.l7296 equ $ + 1
.l7295
	db #00,#00,#00,#00,#00,#00,#00,#00
.l72a3 equ $ + 6
.l72a2 equ $ + 5
.l72a1 equ $ + 4
.l729f equ $ + 2
.l729e equ $ + 1
.l729d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l72a5
	db #02,#01,#02,#04,#02,#02,#02,#02
	db #02,#03,#02,#03,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#01
.l72c1 equ $ + 4
	db #02,#02,#02,#02,#01,#02,#04
.l72c4
	dw #0000,#02cc,#02a4,#027e
	dw #025a,#0238,#0233,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
.l731c
	db #50,#3c,#28,#1e,#14,#0f,#0a,#05
.l7326 equ $ + 2
.l7325 equ $ + 1
.l7324
	db #1c,#00,#a8,#00,#e0,#00,#1a,#01
	db #54,#01,#ce,#01,#66,#02,#fb,#02
	db #4d,#03,#a1,#03,#f4,#03,#6b,#04
	db #3c,#05,#8b,#05,#dd,#05,#2d,#06
	db #7d,#06,#e0,#06,#3e,#07,#8b,#07
	db #b0,#07,#d7,#07,#fc,#07,#57,#08
	db #b0,#08,#0b,#09,#53,#09,#9d,#09
	db #e7,#09,#28,#0a,#70,#0a,#ae,#0a
	db #ef,#0a,#37,#0b,#78,#0b,#b8,#0b
	db #f0,#0b,#28,#0c,#7c,#0c,#bc,#0c
	db #fc,#0c,#36,#0d,#6f,#0d,#a3,#0d
	db #25,#0e,#b6,#0e,#4f,#0f,#93,#0f
	db #d7,#0f,#17,#10,#57,#10,#97,#10
	db #d6,#10,#1d,#11,#6a,#11,#ab,#11
	db #fd,#11,#4f,#12,#98,#12,#e3,#12
	db #39,#13,#84,#13,#cc,#13,#15,#14
	db #5b,#14,#a6,#14,#f1,#14,#3a,#15
	db #68,#15,#97,#15,#c5,#15,#09,#16
	db #51,#16,#95,#16,#d6,#16,#1f,#17
	db #61,#17,#b0,#17,#fd,#17,#47,#18
	db #70,#18,#99,#18,#c4,#18,#fc,#18
	db #31,#19,#f8,#06,#19,#0c,#7e,#43
	db #1d,#8e,#46,#a3,#51,#d8,#fc,#86
	db #49,#21,#50,#a9,#24,#31,#f9,#0c
	db #76,#39,#1a,#8d,#47,#63,#f1,#a8
	db #ec,#71,#34,#9a,#8c,#46,#a3,#91
	db #d8,#e6,#6b,#30,#be,#f6,#71,#3f
	db #21,#4d,#47,#63,#89,#a3,#ff,#ff
	db #ff,#ff,#f8,#09,#98,#d4,#72,#31
	db #1a,#8c,#c5,#62,#d1,#58,#b4,#76
	db #39,#18,#8b,#c6,#52,#b1,#c8,#bc
	db #66,#2b,#18,#8a,#c4,#63,#11,#a8
	db #b4,#62,#26,#97,#47,#43,#21,#d1
	db #08,#8c,#43,#1d,#8c,#5f,#7b,#26
	db #97,#8c,#24,#62,#d1,#88,#bc,#48
	db #ff,#ff,#ff,#ff,#fb,#e3,#ef,#62
	db #61,#70,#d8,#4c,#3a,#21,#11,#89
	db #c4,#62,#10,#e8,#64,#46,#1d,#09
	db #48,#c4,#62,#71,#08,#74,#26,#15
	db #0a,#84,#c2,#a0,#f0,#98,#64,#42
	db #26,#8e,#86,#43,#a2,#11,#18,#86
	db #3b,#18,#8c,#43,#c1,#51,#50,#78
	db #4a,#38,#ff,#ff,#ff,#ff,#f8,#05
	db #b9,#24,#8a,#41,#1b,#40,#46,#f3
	db #79,#b9,#24,#8a,#41,#1d,#0e,#c9
	db #64,#92,#28,#f8,#9e,#4f,#25,#91
	db #49,#03,#72,#49,#14,#82,#36,#80
	db #8d,#e6,#f3,#72,#49,#14,#82,#3a
	db #1d,#92,#c9,#24,#52,#79,#3c,#9e
	db #4f,#29,#93,#c9,#64,#52,#02,#04
	db #f8,#06,#49,#24,#91,#49,#24,#92
	db #29,#24,#f2,#07,#16,#90,#4b,#25
	db #92,#b9,#74,#b2,#49,#24,#93,#49
	db #a4,#91,#48,#a4,#92,#25,#3a,#92
	db #49,#24,#52,#49,#24,#8a,#49,#3c
	db #81,#c5,#a4,#12,#c9,#64,#ae,#5d
	db #2c,#92,#49,#24,#d2,#69,#e4,#f2
	db #59,#14,#80,#81,#3f,#ff,#ff,#ff
	db #f8,#18,#08,#a4,#02,#29,#00,#8a
	db #40,#22,#99,#4c,#04,#52,#01,#14
	db #80,#45,#20,#11,#4c,#a6,#02,#29
	db #00,#8a,#40,#22,#70,#08,#9e,#4f
	db #01,#13,#80,#43,#e0,#11,#48,#04
	db #53,#29,#80,#8a,#40,#22,#90,#08
	db #a4,#02,#29,#94,#c0,#45,#20,#11
	db #48,#04,#52,#01,#14,#ca,#60,#22
	db #90,#08,#a6,#53,#01,#16,#80,#45
	db #a0,#11,#68,#04,#3e,#01,#14,#80
	db #45,#32,#9a,#09,#04,#81,#41,#20
	db #90,#28,#23,#f1,#b6,#fe,#80,#3b
	db #1d,#8e,#b7,#73,#b1,#b8,#dc,#83
	db #41,#a0,#8f,#c7,#e4,#11,#f4,#fa
	db #02,#31,#00,#8c,#40,#23,#10,#08
	db #c4,#02,#31,#00,#8c,#40,#22,#90
	db #08,#a4,#02,#29,#00,#8a,#40,#23
	db #10,#08,#c4,#02,#2d,#00,#89,#c5
	db #23,#11,#48,#04,#ff,#ff,#ff,#ff
	db #f8,#0c,#88,#7c,#0e,#1f,#08,#87
	db #c0,#e1,#f0,#88,#7c,#0e,#1f,#01
	db #84,#43,#61,#10,#a8,#8c,#16,#23
	db #03,#85,#43,#e1,#50,#38,#7c,#2a
	db #0f,#08,#81,#c1,#60,#f0,#88,#7c
	db #0e,#1f,#08,#87,#c0,#e1,#f0,#88
	db #7c,#0e,#1f,#01,#86,#c2,#21,#b0
	db #a8,#8c,#16,#23,#03,#83,#c2,#a0
	db #f0,#a8,#3c,#0e,#0f,#08,#81,#c1
	db #60,#f0,#88,#54,#32,#1b,#0f,#86
	db #c3,#21,#50,#88,#54,#32,#15,#08
	db #83,#41,#60,#70,#18,#1c,#16,#0f
	db #08,#85,#43,#21,#10,#a8,#44,#1e
	db #0b,#03,#81,#c1,#60,#f0,#88,#7c
	db #0e,#1f,#08,#87,#c0,#e1,#f0,#88
	db #7c,#0e,#1f,#08,#83,#41,#60,#70
	db #18,#8c,#22,#23,#08,#8a,#41,#62
	db #90,#38,#9c,#2a,#1f,#08,#81,#c2
	db #20,#13,#ff,#ff,#ff,#f8,#19,#88
	db #c4,#7e,#3f,#1d,#8d,#c6,#a3,#11
	db #68,#c4,#6a,#37,#1d,#8f,#96,#23
	db #11,#f8,#fc,#76,#37,#1a,#8c,#45
	db #a3,#11,#a8,#dc,#76,#3e,#80,#8f
	db #c8,#23,#b1,#f9,#04,#8a,#49,#1f
	db #8e,#c6,#e3,#11,#a8,#dc,#75,#37
	db #1d,#8f,#a8,#23,#f1,#f8,#ec,#6e
	db #35,#18,#4d,#e6,#b3,#11,#d4,#dc
	db #76,#3f,#20,#91,#49,#23,#f1,#d8
	db #dc,#6a,#30,#7f,#ff,#ff,#ff,#f8
	db #19,#88,#c4,#6e,#35,#17,#8c,#45
	db #a2,#91,#38,#7c,#5e,#31,#18,#8b
	db #96,#23,#11,#b8,#d4,#5e,#31,#16
	db #8a,#44,#e1,#f1,#78,#c4,#62,#2e
	db #80,#88,#46,#22,#d1,#68,#dc,#66
	db #31,#16,#8b,#c6,#22,#b1,#68,#b4
	db #6a,#29,#18,#8b,#45,#93,#11,#68
	db #dc,#6a,#31,#17,#87,#a4,#f2,#79
	db #58,#d4,#5a,#31,#1a,#89,#c3,#e2
	db #d1,#48,#b4,#52,#27,#17,#87,#9f
	db #ff,#ff,#ff,#fb,#d8,#c8,#64,#32
	db #17,#07,#86,#41,#e1,#10,#38,#44
	db #1e,#19,#08,#83,#93,#21,#90,#c8
	db #5c,#1e,#19,#07,#84,#40,#e1,#10
	db #78,#64,#22,#0e,#80,#86,#44,#61
	db #d0,#f8,#64,#1e,#11,#03,#83,#c3
	db #21,#90,#a8,#3c,#29,#19,#0e,#87
	db #a2,#21,#f0,#38,#2c,#1e,#0f,#0c
	db #46,#63,#31,#90,#a8,#44,#1e,#0b
	db #03,#86,#41,#e1,#10,#38,#2c,#1e
	db #0f,#0c,#3f,#ff,#ff,#ff,#f8,#05
	db #ba,#ef,#6f,#30,#db,#ae,#f6,#f3
	db #0e,#29,#16,#7d,#c1,#20,#cd,#b7
	db #63,#ba,#0a,#ff,#77,#37,#5d,#ed
	db #e6,#1b,#b1,#dd,#05,#7f,#bb,#9b
	db #ae,#f6,#f3,#0e,#29,#16,#96,#c5
	db #df,#d0,#39,#1c,#19,#bc,#c6,#6e
	db #b3,#d6,#ca,#35,#3a,#7d,#4e,#b7
	db #63,#b3,#fe,#0c,#6e,#bb,#db,#cc
	db #36,#eb,#bd,#bc,#c3,#8a,#45,#9f
	db #70,#48,#33,#6d,#d8,#ee,#82,#bf
	db #dd,#cd,#d7,#7b,#79,#86,#ec,#77
	db #41,#5f,#ee,#e6,#eb,#bd,#bc,#c3
	db #8a,#45,#a5,#b1,#77,#f4,#0e,#47
	db #06,#6f,#31,#9b,#ac,#f5,#b2,#8e
	db #07,#ff,#ff,#ff,#ff,#f8,#09,#8a
	db #cf,#63,#28,#d8,#ac,#f6,#32,#8d
	db #98,#ce,#65,#b1,#18,#cc,#36,#63
	db #39,#da,#df,#67,#31,#59,#ec,#65
	db #1b,#31,#9c,#ed,#6f,#b3,#98,#ac
	db #f6,#32,#8d,#f8,#fe,#8a,#bf,#db
	db #cc,#36,#db,#11,#4c,#9b,#31,#98
	db #fe,#0d,#53,#9f,#cc,#c7,#e5,#39
	db #fd,#4e,#7f,#33,#9f,#d4,#e7,#f3
	db #31,#f9,#4e,#7f,#53,#9f,#cc,#e7
	db #f3,#fa,#7d,#9e,#df,#67,#ad,#cf
	db #e9,#f6,#7a,#dd,#3e,#b7,#53,#b1
	db #db,#ec,#75,#3b,#1d,#4e,#c7,#6f
	db #b1,#d4,#ec,#76,#7a,#9d,#9e,#ef
	db #67,#a9,#d9,#ea,#76,#7a,#9d,#9e
	db #a7,#53,#9f,#d4,#ec,#75,#39,#fd
	db #4e,#7f,#53,#9f,#cc,#e7,#f6,#7a
	db #9d,#9e,#ef,#67,#a9,#d9,#ea,#76
	db #7a,#9d,#9e,#a7,#53,#9f,#d4,#ec
	db #75,#39,#fd,#4e,#7f,#53,#9f,#cc
	db #e7,#f3,#fa,#7d,#6e,#cf,#5b,#a7
	db #cf,#e9,#f5,#ba,#7c,#fe,#9f,#53
	db #b1,#db,#f0,#76,#fb,#1d,#4e,#c7
	db #6f,#c1,#db,#ec,#75,#3b,#1c,#fe
	db #a7,#3f,#99,#cf,#e6,#f2,#b9,#bc
	db #ae,#3f,#03,#99,#cf,#ea,#76,#3b
	db #7d,#87,#ff,#ff,#ff,#ff,#fb,#e4
	db #88,#46,#21,#91,#08,#c4,#30,#d8
	db #6c,#88,#46,#21,#9b,#0d,#c6,#b2
	db #19,#18,#ac,#66,#36,#1b,#8d,#64
	db #32,#30,#f8,#5c,#1c,#1f,#1f,#8a
	db #c3,#e2,#21,#18,#88,#46,#21,#87
	db #07,#c4,#32,#19,#0c,#86,#43,#21
	db #86,#c3,#64,#32,#31,#58,#cc,#6b
	db #35,#90,#c8,#66,#b3,#59,#0c,#86
	db #1b,#1d,#90,#c8,#64,#30,#d9,#0c
	db #87,#ff,#ff,#ff,#ff,#f8,#06,#06
	db #f6,#76,#37,#19,#8d,#c7,#63,#31
	db #bc,#ee,#7b,#37,#9d,#6d,#e6,#63
	db #11,#95,#03,#7b,#3b,#1b,#8c,#c6
	db #e3,#b1,#98,#de,#77,#3d,#9b,#ce
	db #b6,#f3,#31,#88,#ca,#6d,#bb,#9e
	db #8d,#c7,#5b,#da,#08,#dc,#77,#3f
	db #a0,#91,#69,#34,#b2,#49,#14,#81
	db #40,#de,#ce,#c6,#e3,#31,#b8,#ec
	db #66,#45,#a2,#d1,#68,#b4,#0d,#ec
	db #ec,#6e,#32,#bf,#ff,#ff,#ff,#f8
	db #09,#d6,#de,#66,#31,#16,#8c,#46
	db #62,#d1,#8c,#ce,#6f,#31,#99,#6c
	db #64,#62,#91,#14,#eb,#6f,#33,#18
	db #8b,#46,#23,#31,#68,#c6,#67,#37
	db #98,#cc,#b6,#32,#31,#48,#8a,#61
	db #b3,#9b,#8c,#46,#5b,#39,#98,#c4
	db #66,#33,#1d,#8e,#c6,#e3,#31,#84
	db #eb,#6f,#33,#18,#8b,#46,#23,#31
	db #68,#ce,#67,#33,#99,#cc,#b6,#f3
	db #31,#88,#8a,#ff,#ff,#ff,#ff,#f8
	db #08,#d6,#66,#36,#11,#0a,#84,#43
	db #61,#b0,#8c,#46,#23,#11,#8d,#63
	db #62,#21,#10,#d4,#6b,#33,#1b,#08
	db #85,#42,#21,#b0,#d8,#46,#23,#11
	db #88,#c6,#b1,#b1,#10,#88,#6a,#21
	db #91,#88,#84,#43,#59,#b8,#d8,#64
	db #36,#23,#0d,#85,#43,#e1,#f0,#84
	db #6b,#33,#1b,#08,#85,#42,#21,#b0
	db #d8,#96,#4b,#25,#92,#c8,#b4,#b2
	db #90,#88,#6a,#ff,#ff,#ff,#ff,#f8
	db #05,#f8,#fc,#7e,#45,#22,#70,#67
	db #f3,#b9,#bc,#de,#7e,#3b,#1f,#91
	db #48,#9c,#19,#f4,#fc,#7e,#3f,#22
	db #91,#38,#33,#f9,#dc,#de,#6f,#3f
	db #1d,#8f,#c8,#a4,#4e,#0c,#fa,#89
	db #49,#a2,#d0,#67,#f4,#0a,#2d,#06
	db #7f,#3b,#9f,#50,#67,#f3,#b9,#bc
	db #eb,#5b,#2c,#9b,#8e,#c7,#e4,#11
	db #f4,#ea,#89,#49,#a2,#d0,#67,#f4
	db #0a,#2d,#06,#7f,#3b,#9f,#50,#67
	db #f3,#b9,#bc,#eb,#5b,#2c,#9b,#8e
	db #c7,#e4,#11,#f4,#ea,#6c,#7f,#ff
	db #ff,#ff,#f8,#09,#b8,#dc,#6e,#37
	db #1b,#8d,#46,#d3,#71,#a8,#c4,#6e
	db #3f,#1a,#8b,#25,#a2,#f0,#f8,#9c
	db #4e,#35,#16,#4d,#c6,#a3,#11,#b8
	db #fc,#6a,#2c,#9f,#8f,#e7,#73,#71
	db #c8,#ec,#77,#37,#9d,#8d,#46,#e3
	db #79,#ac,#c2,#3e,#1d,#14,#4b,#46
	db #a3,#71,#b8,#da,#69,#45,#a0,#cf
	db #e7,#73,#6a,#0c,#fe,#77,#37,#9a
	db #4f,#e7,#73,#79,#ac,#c2,#3e,#1d
	db #14,#4b,#43,#a1,#f0,#fc,#8e,#4e
	db #29,#16,#8a,#44,#c7,#ff,#ff,#ff
	db #fb,#dc,#f8,#7c,#3e,#27,#11,#8b
	db #43,#d1,#f0,#a8,#7c,#4e,#2d,#0a
	db #87,#a3,#e1,#d0,#c8,#7c,#46,#2d
	db #0f,#47,#c2,#a1,#f1,#38,#b4,#2a
	db #1e,#8f,#46,#24,#51,#50,#e8,#7a
	db #22,#13,#0a,#85,#43,#91,#f0,#a8
	db #7c,#52,#2d,#15,#8b,#23,#d1,#89
	db #14,#54,#3a,#1e,#88,#84,#c2,#a1
	db #50,#e4,#3c,#2a,#1f,#08,#85,#22
	db #91,#e3,#ff,#ff,#ff,#f8,#05,#b8
	db #fb,#7f,#3b,#1b,#90,#48,#23,#f1
	db #d8,#fc,#8a,#45,#21,#91,#17,#e4
	db #8e,#2d,#04,#7e,#3b,#1b,#8d,#47
	db #e3,#b1,#b8,#dc,#6a,#36,#3f,#ff
	db #ff,#ff,#f8,#09,#38,#db,#6f,#35
	db #13,#8c,#46,#22,#d1,#a8,#b4,#6e
	db #3b,#18,#8d,#16,#e3,#6d,#fc,#dc
	db #6e,#35,#18,#8b,#c5,#a3,#51,#3c
	db #ae,#5a,#2d,#94,#c9,#8f,#ff,#ff
	db #ff,#f8,#0c,#f8,#7b,#3f,#15,#0c
	db #84,#42,#21,#f0,#a8,#7c,#4e,#23
	db #11,#85,#13,#e2,#8c,#fc,#64,#3e
	db #15,#0c,#83,#c3,#e1,#50,#c8,#54
	db #2a,#06,#3f,#ff,#ff,#ff,#f8,#05
	db #68,#dc,#6d,#b5,#9b,#8f,#c7,#e3
	db #b2,#29,#14,#89,#c1,#9f,#8e,#c7
	db #d2,#d1,#b8,#db,#6b,#37,#1f,#8f
	db #c7,#64,#51,#d8,#eb,#6b,#35,#18
	db #8b,#28,#a4,#52,#28,#dc,#82,#3f
	db #1f,#8e,#c8,#a4,#52,#28,#dc,#82
	db #3f,#1f,#8e,#c9,#24,#92,#49,#14
	db #82,#3f,#20,#4e,#c7,#f4,#1a,#26
	db #de,#6e,#3b,#1f,#52,#39,#34,#92
	db #29,#04,#7e,#40,#9d,#8f,#e8,#34
	db #4d,#bc,#dc,#76,#36,#bf,#ff,#ff
	db #ff,#f8,#09,#38,#9c,#4e,#27,#16
	db #8b,#46,#e3,#51,#b8,#d4,#62,#3b
	db #1b,#8d,#46,#d2,#71,#38,#9c,#4e
	db #27,#1b,#8c,#45,#63,#51,#88,#d4
	db #5a,#2d,#15,#8b,#25,#a2,#d1,#68
	db #b4,#76,#2d,#16,#8d,#45,#a2,#d1
	db #68,#b4,#76,#2d,#16,#8d,#46,#e3
	db #71,#b8,#fc,#76,#39,#1d,#4d,#46
	db #a3,#71,#b8,#9c,#6a,#2c,#9b,#8d
	db #c6,#e3,#71,#d8,#c4,#61,#35,#1a
	db #8d,#c6,#e2,#d1,#a8,#9a,#ff,#ff
	db #ff,#ff,#f8,#0c,#f8,#7c,#3e,#15
	db #07,#81,#c2,#a1,#50,#78,#3c,#22
	db #11,#0a,#85,#40,#d1,#f0,#f8,#7c
	db #2a,#19,#0a,#84,#c1,#60,#f0,#98
	db #54,#0a,#07,#05,#85,#22,#a1,#50
	db #a8,#9c,#3a,#1f,#0a,#85,#42,#a1
	db #50,#a8,#9c,#3a,#1f,#0a,#85,#42
	db #21,#10,#88,#44,#22,#19,#11,#88
	db #c5,#22,#91,#38,#7c,#2a,#15,#03
	db #4a,#45,#22,#91,#38,#8c,#42,#23
	db #0f,#87,#45,#22,#70,#f8,#54,#2a
	db #06,#bf,#ff,#ff,#ff,#f8,#05,#d4
	db #c4,#76,#3e,#98,#50,#c7,#e4,#32
	db #29,#0a,#7d,#3a,#9c,#8d,#47,#23
	db #b1,#f9,#0c,#71,#35,#18,#8c,#09
	db #14,#52,#19,#12,#85,#3f,#21,#8e
	db #c7,#e3,#89,#88,#ec,#76,#39,#1d
	db #8f,#c7,#53,#12,#19,#0c,#7e,#43
	db #22,#90,#a7,#e4,#32,#29,#0c,#7e
	db #3b,#1c,#4e,#c8,#a4,#29,#f4,#ee
	db #74,#ff,#ff,#ff,#ff,#f8,#09,#54
	db #ac,#56,#38,#93,#4c,#47,#23,#11
	db #a8,#c4,#6a,#38,#95,#4c,#45,#e3
	db #11,#88,#c4,#62,#30,#97,#88,#44
	db #03,#89,#a8,#c4,#76,#39,#1d,#4c
	db #46,#22,#b1,#a8,#9a,#42,#31,#18
	db #8c,#46,#23,#11,#84,#ac,#62,#31
	db #18,#8c,#46,#a3,#09,#c8,#c4,#72
	db #31,#18,#8c,#44,#d3,#11,#d8,#ea
	db #71,#2b,#95,#3f,#ff,#ff,#ff,#f8
	db #0d,#14,#2c,#26,#19,#0e,#88,#24
	db #62,#11,#18,#54,#31,#18,#8e,#46
	db #41,#e1,#90,#98,#24,#16,#0e,#87
	db #86,#43,#02,#a9,#38,#8c,#4d,#22
	db #90,#88,#c3,#a1,#50,#c4,#64,#56
	db #2b,#13,#8a,#c5,#a2,#a9,#18,#8c
	db #46,#21,#11,#85,#43,#11,#91,#18
	db #9c,#46,#21,#0e,#86,#42,#a1,#30
	db #e8,#62,#31,#0b,#85,#3f,#ff,#ff
	db #ff,#f8,#05,#68,#d4,#6d,#b7,#9b
	db #cd,#66,#f3,#b9,#d8,#dc,#6e,#3f
	db #22,#6f,#e7,#f3,#b9,#bc,#d6,#6d
	db #2d,#1a,#8d,#b6,#f3,#79,#ac,#de
	db #77,#3b,#1b,#8d,#c7,#e4,#4d,#fc
	db #fe,#77,#37,#9a,#cd,#a9,#24,#92
	db #25,#04,#82,#3e,#a4,#92,#48,#9b
	db #f9,#fc,#ee,#6f,#35,#9b,#1f,#ff
	db #ff,#ff,#f8,#09,#38,#a4,#59,#ad
	db #93,#ca,#65,#32,#99,#a8,#9c,#4e
	db #37,#1b,#6d,#e6,#33,#19,#6c,#b6
	db #4d,#27,#14,#8b,#35,#b2,#b9,#5c
	db #ae,#57,#2d,#94,#c9,#c4,#e3,#71
	db #b6,#b6,#63,#31,#96,#ca,#64,#d3
	db #71,#b8,#fe,#6b,#37,#9b,#cd,#c6
	db #a2,#c9,#b8,#dc,#7f,#35,#9b,#cb
	db #66,#33,#19,#6c,#b6,#4c,#7f,#ff
	db #ff,#ff,#f8,#0c,#38,#2c,#1d,#87
	db #8a,#85,#42,#a1,#f0,#f8,#64,#1d
	db #87,#88,#85,#40,#d0,#70,#58,#3b
	db #0f,#19,#05,#85,#43,#e1,#f0,#c8
	db #3b,#0f,#11,#0a,#81,#a2,#31,#58
	db #cc,#76,#3f,#23,#93,#c7,#e2,#a1
	db #50,#f4,#46,#2b,#19,#8e,#c7,#b3
	db #f1,#10,#a8,#18,#ff,#ff,#ff,#ff
	db #f8,#05,#c8,#e4,#72,#3d,#1c,#8e
	db #45,#d3,#31,#78,#cc,#6e,#38,#9c
	db #4e,#47,#23,#91,#e8,#e4,#72,#2e
	db #99,#8b,#c6,#63,#71,#c4,#e2,#8e
	db #43,#20,#8f,#48,#23,#d1,#c4,#cc
	db #5e,#33,#1b,#8e,#27,#12,#f1,#78
	db #cc,#6e,#39,#1c,#8f,#28,#e4,#32
	db #08,#f4,#71,#42,#9c,#1f,#ff,#ff
	db #ff,#f8,#09,#48,#a4,#66,#2f,#14
	db #8a,#45,#12,#b1,#48,#ae,#53,#25
	db #14,#4a,#25,#22,#91,#98,#bc,#52
	db #29,#14,#4a,#c5,#22,#b9,#4c,#94
	db #51,#28,#9b,#8c,#e6,#f3,#91,#b8
	db #bc,#66,#28,#95,#8a,#45,#62,#f9
	db #5c,#a2,#51,#29,#14,#8a,#e5,#32
	db #51,#48,#a4,#55,#37,#19,#8b,#e6
	db #73,#71,#94,#ca,#50,#7f,#ff,#ff
	db #ff,#f8,#0d,#08,#84,#26,#1f,#10
	db #88,#44,#11,#30,#88,#4c,#2e,#20
	db #90,#48,#44,#21,#30,#f8,#84,#42
	db #20,#89,#84,#42,#61,#71,#04,#82
	db #22,#13,#0b,#85,#c4,#21,#30,#b4
	db #4c,#22,#0d,#0b,#82,#21,#12,#11
	db #08,#4c,#2e,#21,#10,#87,#a2,#21
	db #30,#b8,#5c,#25,#12,#90,#1f,#ff
	db #ff,#ff,#f8,#05,#68,#dc,#6e,#3b
	db #9f,#cd,#c6,#e3,#fa,#0d,#14,#8a
	db #49,#20,#4e,#e7,#f4,#12,#09,#14
	db #7e,#3f,#1b,#cf,#e7,#63,#11,#b8
	db #d2,#5a,#37,#1b,#8e,#e7,#f3,#71
	db #b8,#fe,#83,#45,#22,#92,#48,#13
	db #b9,#fd,#04,#82,#45,#1f,#8f,#c6
	db #f3,#f9,#d8,#c4,#6a,#36,#7f,#ff
	db #ff,#ff,#f8,#09,#68,#9c,#4e,#2d
	db #13,#89,#c5,#a3,#71,#b8,#fc,#61
	db #31,#18,#8c,#46,#a2,#d1,#68,#c4
	db #56,#2b,#15,#8b,#25,#a2,#71,#38
	db #b4,#4e,#27,#16,#8f,#c7,#e3,#f1
	db #84,#c4,#6a,#35,#1a,#8b,#45,#a3
	db #11,#8c,#b6,#52,#2d,#13,#3f,#ff
	db #ff,#ff,#f8,#0c,#a8,#7c,#3e,#1d
	db #0f,#87,#c3,#a2,#71,#3c,#8e,#42
	db #22,#51,#88,#c2,#a1,#f0,#fc,#76
	db #32,#19,#05,#82,#c2,#91,#50,#f8
	db #7c,#3a,#1f,#0f,#87,#c3,#e1,#f1
	db #08,#8a,#46,#15,#0a,#85,#43,#e1
	db #f0,#88,#44,#22,#15,#0f,#3f,#ff
	db #ff,#ff,#f8,#05,#48,#cc,#66,#33
	db #1b,#8e,#e6,#f3,#b9,#ed,#04,#76
	db #3d,#1d,#cc,#e6,#e3,#71,#92,#a4
	db #66,#33,#19,#8d,#c7,#73,#79,#dc
	db #f6,#82,#3b,#1e,#8e,#e6,#73,#71
	db #b8,#c9,#67,#3b,#a0,#71,#68,#33
	db #d9,#dc,#de,#67,#37,#9d,#cf,#68
	db #22,#91,#98,#ec,#6e,#33,#14,#2a
	db #46,#63,#31,#98,#dc,#77,#37,#9d
	db #cf,#68,#23,#b1,#e8,#ee,#67,#37
	db #1b,#8c,#8f,#ff,#ff,#ff,#f8,#09
	db #48,#8c,#46,#23,#18,#8a,#46,#63
	db #11,#98,#b4,#52,#31,#18,#88,#84
	db #62,#31,#18,#c4,#52,#33,#18,#8c
	db #c5,#a2,#91,#88,#c4,#44,#30,#96
	db #8c,#44,#63,#31,#88,#8c,#5a,#2d
	db #16,#8b,#46,#02,#31,#18,#8c,#62
	db #29,#19,#8c,#46,#22,#d1,#68,#c4
	db #62,#22,#3f,#ff,#ff,#ff,#f8,#0c
	db #88,#6c,#36,#1b,#08,#86,#c2,#a1
	db #10,#d8,#94,#36,#11,#08,#86,#83
	db #61,#b0,#d8,#44,#36,#15,#08,#86
	db #c4,#a1,#b0,#88,#44,#34,#22,#92
	db #84,#43,#61,#50,#88,#6c,#1a,#0d
	db #06,#83,#42,#01,#b0,#d8,#6c,#22
	db #1b,#0a,#84,#42,#20,#d0,#68,#44
	db #22,#1a,#3f,#ff,#ff,#ff,#f8,#05
	db #bc,#ce,#5d,#b3,#9b,#ce,#67,#94
	db #1a,#2d,#1c,#8a,#41,#1e,#50,#68
	db #b4,#72,#29,#04,#7a,#41,#22,#91
	db #c7,#a3,#91,#b4,#de,#67,#2e,#d9
	db #cd,#e7,#33,#ca,#3d,#16,#81,#41
	db #1e,#31,#c8,#a4,#11,#e9,#04,#8a
	db #47,#1e,#8e,#46,#cf,#ff,#ff,#ff
	db #f8,#08,#fc,#6e,#3d,#25,#94,#cb
	db #a5,#f3,#3a,#08,#f4,#5e,#36,#97
	db #cc,#e8,#23,#d1,#78,#dc,#72,#3d
	db #20,#8b,#45,#22,#49,#2c,#86,#3d
	db #a1,#92,#ca,#66,#d4,#19,#ec,#ba
	db #5e,#36,#5b,#8b,#c5,#e3,#71,#c8
	db #f4,#82,#2d,#14,#89,#1f,#ff,#ff
	db #ff,#f8,#0c,#fc,#6e,#2d,#17,#8b
	db #c7,#a3,#e2,#11,#08,#84,#2d,#17
	db #10,#88,#44,#21,#70,#b8,#7c,#42
	db #25,#06,#85,#a2,#e1,#68,#bc,#5e
	db #3d,#1f,#10,#48,#42,#c9,#70,#f8
	db #84,#2e,#21,#12,#88,#44,#a0,#d0
	db #b1,#ff,#ff,#ff,#ff,#f8,#05,#bc
	db #ec,#6f,#31,#20,#8e,#c6,#cb,#79
	db #dc,#de,#77,#37,#20,#8f,#86,#73
	db #71,#9c,#b4,#7e,#3b,#1b,#2d,#e7
	db #73,#79,#dc,#dc,#76,#30,#1b,#ce
	db #c6,#f3,#12,#08,#ec,#6c,#b7,#9d
	db #cd,#e7,#73,#72,#08,#f8,#67,#37
	db #19,#cb,#47,#e3,#b1,#b2,#de,#77
	db #37,#9d,#cd,#c8,#a4,#01,#d8,#ec
	db #82,#3b,#1b,#8c,#46,#d3,#31,#d8
	db #dc,#66,#30,#56,#8b,#45,#a3,#71
	db #d8,#fc,#7e,#3e,#a0,#90,#47,#e3
	db #b1,#b8,#cc,#59,#37,#9d,#8d,#e6
	db #24,#11,#d8,#d9,#6f,#3b,#9b,#ce
	db #e6,#e4,#11,#f0,#ce,#6e,#33,#96
	db #8f,#c7,#63,#65,#bc,#ee,#6f,#3b
	db #9b,#91,#48,#07,#ff,#ff,#ff,#f8
	db #08,#08,#c4,#02,#31,#00,#8c,#40
	db #23,#10,#08,#c4,#02,#31,#13,#88
	db #c3,#e1,#b0,#08,#b4,#02,#2d,#00
	db #8b,#40,#22,#d0,#08,#b4,#02,#2d
	db #14,#8b,#45,#22,#70,#08,#c4,#02
	db #31,#00,#8c,#40,#23,#10,#08,#c4
	db #02,#31,#1b,#4d,#c6,#60,#11,#68
	db #04,#5a,#01,#16,#80,#45,#a0,#11
	db #68,#04,#5a,#31,#18,#8c,#c6,#e2
	db #91,#48,#ec,#52,#31,#14,#8c,#24
	db #62,#91,#38,#8c,#3e,#27,#14,#8a
	db #44,#e2,#71,#38,#a4,#5a,#2d,#00
	db #8b,#46,#23,#11,#68,#a4,#4e,#23
	db #13,#40,#46,#20,#11,#88,#04,#62
	db #01,#18,#80,#46,#20,#11,#88,#04
	db #5a,#01,#16,#80,#45,#a0,#11,#68
	db #04,#5a,#01,#16,#80,#45,#a0,#11
	db #68,#04,#02,#31,#3f,#ff,#ff,#ff
	db #f8,#0c,#88,#a4,#0e,#29,#08,#8a
	db #40,#e2,#90,#88,#a4,#0e,#29,#0f
	db #86,#c3,#21,#50,#f8,#9c,#2a,#27
	db #0f,#89,#c2,#a2,#70,#f8,#9c,#2a
	db #27,#08,#83,#c1,#60,#70,#88,#a4
	db #0e,#29,#08,#8a,#40,#e2,#90,#88
	db #a4,#0e,#29,#0a,#84,#41,#e0,#b0
	db #a8,#9c,#0e,#27,#0a,#89,#c3,#e2
	db #70,#a8,#9c,#3e,#27,#08,#84,#42
	db #a1,#90,#d8,#44,#36,#1b,#08,#87
	db #c2,#21,#f0,#ac,#66,#36,#1f,#0a
	db #84,#42,#a1,#90,#e8,#7c,#2a,#1f
	db #0a,#88,#64,#72,#70,#f8,#9c,#46
	db #23,#0a,#85,#43,#e1,#50,#fc,#6e
	db #33,#15,#88,#8a,#40,#e2,#90,#88
	db #a4,#0e,#29,#08,#8a,#42,#22,#90
	db #a8,#9c,#0e,#27,#0a,#89,#c3,#e2
	db #70,#a8,#9c,#3e,#27,#0a,#89,#c3
	db #e2,#70,#88,#a4,#21,#7f,#ff,#ff
	db #ff,#f8,#05,#b6,#ee,#6e,#35,#18
	db #6b,#65,#93,#71,#d9,#04,#7e,#3e
	db #dd,#ce,#a6,#db,#b9,#b8,#d4,#61
	db #ad,#96,#4d,#c7,#63,#f2,#08,#eb
	db #6f,#36,#a2,#71,#68,#23,#f1,#d8
	db #dc,#69,#44,#e2,#d0,#47,#e3,#b1
	db #b8,#d2,#6d,#bb,#9b,#8d,#46,#1a
	db #d9,#65,#13,#7f,#37,#20,#8f,#c7
	db #63,#6b,#ff,#ff,#ff,#f8,#09,#34
	db #a4,#5a,#1f,#11,#89,#c5,#22,#71
	db #68,#dc,#5a,#37,#1b,#8d,#24,#d2
	db #91,#68,#7c,#46,#27,#14,#89,#c5
	db #22,#d1,#88,#a2,#4d,#26,#d3,#cc
	db #45,#a2,#d1,#38,#8a,#6d,#b7,#98
	db #8b,#46,#22,#d1,#14,#9b,#4f,#2b
	db #16,#89,#c5,#71,#f8,#e4,#db,#5b
	db #31,#1b,#8d,#45,#22,#6b,#ff,#ff
	db #ff,#f8,#0c,#f4,#2c,#1e,#10,#83
	db #47,#c3,#a1,#90,#f8,#52,#2a,#11
	db #0f,#42,#c1,#e1,#08,#34,#62,#2a
	db #11,#0a,#47,#a3,#d9,#f8,#f8,#7c
	db #3a,#1f,#0a,#43,#b1,#f1,#10,#38
	db #2c,#1f,#11,#8a,#46,#33,#30,#b0
	db #78,#1c,#16,#15,#08,#83,#b3,#f1
	db #10,#58,#54,#2a,#06,#bf,#ff,#ff
	db #ff,#f8,#05,#d6,#f6,#82,#3b,#1b
	db #4c,#c6,#63,#6d,#dc,#dc,#5a,#36
	db #9b,#4e,#b7,#b4,#11,#d8,#da,#66
	db #33,#1b,#8e,#c6,#db,#39,#94,#ca
	db #79,#bb,#9e,#90,#48,#a4,#51,#d8
	db #ec,#82,#3b,#1b,#8c,#c6,#0b,#11
	db #d6,#f6,#82,#3b,#1b,#4c,#c6,#63
	db #71,#d8,#db,#67,#32,#3f,#ff,#ff
	db #ff,#f8,#09,#46,#ce,#66,#29,#11
	db #48,#c4,#62,#cd,#6c,#b4,#5a,#24
	db #98,#4a,#36,#73,#31,#48,#8a,#46
	db #23,#16,#8c,#c6,#1a,#39,#14,#8a
	db #65,#a9,#99,#8b,#c6,#63,#31,#98
	db #cc,#66,#31,#16,#8a,#43,#c9,#f1
	db #46,#ce,#66,#29,#16,#48,#c4,#62
	db #d1,#98,#c3,#47,#22,#3f,#ff,#ff
	db #ff,#f8,#0c,#d6,#7e,#46,#1b,#0a
	db #45,#42,#a0,#cc,#6c,#34,#16,#06
	db #88,#46,#b3,#f2,#30,#d8,#52,#2a
	db #15,#06,#83,#42,#19,#b8,#d4,#6a
	db #29,#9b,#8a,#82,#c1,#a0,#d0,#a8
	db #54,#16,#29,#06,#88,#c2,#09,#10
	db #d6,#7e,#46,#1b,#0a,#45,#42,#a0
	db #c8,#86,#6e,#34,#7f,#ff,#ff,#ff
	db #f8,#05,#98,#ce,#67,#3d,#1e,#8d
	db #c5,#e2,#91,#bc,#de,#66,#3b,#1b
	db #8b,#c5,#83,#32,#29,#04,#7a,#37
	db #17,#8a,#46,#f3,#79,#98,#f4,#77
	db #3d,#a0,#8f,#08,#a4,#52,#39,#1c
	db #82,#41,#22,#71,#67,#a3,#d2,#08
	db #f4,#74,#b7,#19,#91,#48,#23,#d1
	db #b8,#bc,#52,#37,#19,#8f,#47,#73
	db #da,#08,#f0,#ff,#ff,#ff,#ff,#f8
	db #09,#68,#b6,#5b,#33,#19,#8a,#45
	db #22,#f1,#4c,#be,#46,#29,#17,#8a
	db #44,#82,#d1,#98,#cc,#66,#2f,#0f
	db #85,#c5,#f2,#f9,#68,#b4,#53,#2d
	db #97,#8b,#06,#74,#19,#ec,#ee,#6f
	db #45,#a0,#cf,#67,#73,#d9,#dc,#de
	db #65,#b3,#96,#8b,#45,#e2,#f1,#92
	db #bc,#5a,#33,#17,#8b,#45,#e1,#f0
	db #b8,#bc,#5a,#2d,#14,#cb,#65,#e2
	db #c3,#ff,#ff,#ff,#f8,#0c,#68,#34
	db #2a,#15,#0b,#84,#42,#21,#70,#d8
	db #6c,#36,#1b,#06,#03,#41,#a1,#50
	db #a8,#5c,#2e,#11,#08,#86,#c3,#61
	db #b0,#d8,#90,#4a,#25,#0b,#85,#c3
	db #61,#b1,#26,#96,#3e,#1f,#08,#84
	db #43,#4a,#31,#28,#94,#2a,#15,#0b
	db #85,#c2,#21,#10,#d8,#6c,#36,#1b
	db #12,#1f,#ff,#ff,#ff,#f8,#05,#e8
	db #f4,#83,#3d,#9d,#cd,#e6,#4b,#31
	db #b8,#f4,#7a,#3b,#1e,#4f,#27,#a3
	db #d2,#0c,#f6,#77,#37,#99,#2c,#c6
	db #e3,#d1,#e8,#ec,#79,#3c,#a5,#71
	db #e8,#b4,#7a,#5d,#16,#8d,#c5,#a0
	db #d1,#68,#f4,#1a,#27,#06,#7b,#41
	db #a2,#cf,#68,#1b,#d9,#dc,#f6,#83
	db #3b,#9e,#6e,#e6,#f3,#b9,#ec,#de
	db #75,#b7,#99,#8c,#c6,#e3,#d1,#e8
	db #ec,#79,#3c,#bf,#ff,#ff,#ff,#f8
	db #09,#68,#cc,#6f,#37,#97,#cb,#e4
	db #4a,#51,#28,#bc,#52,#29,#16,#4b
	db #25,#a3,#31,#bc,#de,#5f,#2f,#91
	db #29,#44,#a2,#f1,#48,#a4,#59,#2c
	db #99,#8a,#45,#a2,#51,#ec,#ee,#6f
	db #33,#9b,#cc,#e5,#e2,#d1,#9c,#be
	db #5a,#37,#1b,#cc,#e5,#f2,#d9,#7c
	db #b6,#52,#25,#16,#ca,#64,#a2,#f1
	db #4c,#b6,#5f,#2d,#94,#8b,#45,#e2
	db #f1,#48,#cc,#59,#2c,#bf,#ff,#ff
	db #ff,#f8,#0c,#68,#54,#2f,#17,#88
	db #c4,#63,#49,#50,#b8,#7c,#36,#1b
	db #06,#43,#21,#a1,#50,#bc,#5e,#23
	db #11,#8d,#25,#42,#e1,#f0,#d8,#6c
	db #19,#0c,#8d,#88,#c4,#a1,#50,#88
	db #54,#2f,#15,#88,#85,#44,#61,#f0
	db #68,#2c,#1a,#11,#86,#c2,#c1,#a1
	db #50,#b8,#7c,#36,#1f,#11,#89,#42
	db #e1,#f0,#d8,#6c,#19,#0c,#bf,#ff
	db #ff,#ff,#f8,#05,#b8,#dd,#6f,#b7
	db #24,#91,#47,#db,#79,#bc,#de,#6e
	db #49,#22,#51,#68,#33,#f9,#dc,#dc
	db #7f,#3f,#98,#cc,#65,#a3,#79,#dc
	db #fe,#83,#3f,#1d,#8d,#c6,#db,#79
	db #ba,#df,#6e,#49,#22,#8f,#c6,#eb
	db #7d,#bc,#de,#6e,#49,#22,#91,#38
	db #33,#f9,#dc,#de,#6f,#3f,#9f,#cc
	db #45,#a3,#79,#dc,#fe,#83,#3f,#1d
	db #8d,#9f,#ff,#ff,#ff,#f8,#09,#38
	db #9d,#4f,#ad,#98,#cd,#e7,#73,#f1
	db #66,#9e,#63,#2d,#94,#89,#c4,#61
	db #d0,#fc,#7e,#2b,#11,#8a,#8c,#65
	db #b2,#99,#3c,#8e,#4f,#1f,#16,#cc
	db #65,#b3,#19,#a8,#9c,#4d,#a7,#93
	db #a9,#f4,#e1,#f1,#38,#b4,#62,#a9
	db #d6,#ca,#64,#f2,#38,#fc,#8e,#6a
	db #31,#1a,#8d,#e4,#72,#79,#5c,#b6
	db #5b,#2d,#94,#c9,#e4,#72,#79,#4c
	db #b6,#63,#37,#9a,#cc,#66,#b2,#67
	db #ff,#ff,#ff,#f8,#0c,#f8,#7d,#3f
	db #a7,#08,#87,#c3,#e2,#71,#4c,#9e
	db #46,#1f,#0e,#85,#43,#31,#d8,#fc
	db #8e,#4e,#1f,#8f,#c8,#e3,#f1,#d0
	db #c8,#56,#23,#15,#0a,#87,#c3,#d9
	db #f8,#ca,#67,#2a,#11,#0f,#87,#c5
	db #2a,#3d,#3c,#8e,#3f,#1d,#8c,#83
	db #c2,#21,#50,#cc,#66,#33,#19,#8e
	db #c7,#62,#21,#50,#c8,#56,#23,#15
	db #0a,#81,#9f,#ff,#ff,#ff,#fb,#e1
	db #98,#e4,#82,#41,#20,#8f,#48,#64
	db #11,#e8,#e4,#7a,#41,#1c,#8c,#c7
	db #23,#d1,#b8,#cc,#5e,#32,#5e,#8f
	db #46,#63,#31,#b8,#e2,#6e,#33,#17
	db #2e,#47,#a4,#12,#09,#04,#7a,#43
	db #20,#8f,#47,#0c,#72,#33,#04,#80
	db #c1,#1e,#90,#c8,#23,#d1,#c8,#f4
	db #82,#39,#19,#8e,#47,#a3,#71,#98
	db #bc,#64,#7f,#ff,#ff,#ff,#fb,#e1
	db #58,#cc,#4a,#39,#1b,#8a,#c6,#62
	db #f1,#98,#a4,#5e,#2f,#17,#88,#45
	db #e3,#71,#78,#84,#52,#20,#57,#8a
	db #c5,#22,#11,#58,#ba,#4a,#21,#0f
	db #2a,#46,#e2,#f1,#c8,#cc,#56,#33
	db #17,#8d,#c5,#e2,#b1,#48,#94,#50
	db #af,#1c,#2e,#45,#63,#31,#78,#ac
	db #52,#2b,#17,#8a,#44,#22,#f1,#64
	db #a4,#4a,#22,#3f,#ff,#ff,#ff,#fb
	db #e1,#28,#84,#3e,#1b,#0b,#83,#41
	db #a0,#d0,#98,#6c,#3e,#21,#08,#84
	db #c2,#21,#68,#d8,#84,#36,#17,#09
	db #84,#41,#a0,#90,#98,#34,#20,#93
	db #0b,#26,#c2,#e1,#10,#d8,#84,#48
	db #a5,#14,#89,#44,#21,#f1,#02,#44
	db #34,#9b,#12,#8a,#c5,#22,#51,#08
	db #94,#36,#21,#0d,#86,#c1,#91,#08
	db #d1,#ff,#ff,#ff,#ff,#f8,#05,#f8
	db #ee,#6e,#31,#9a,#cd,#e6,#b3,#0d
	db #f8,#ee,#6e,#31,#9a,#cd,#e6,#b3
	db #0d,#b8,#de,#76,#3b,#9f,#8f,#e8
	db #b4,#19,#fc,#ee,#7f,#3b,#9b,#8d
	db #66,#1b,#51,#dc,#dc,#6f,#37,#16
	db #cd,#c6,#33,#6d,#b8,#de,#6e,#2d
	db #9b,#8c,#66,#db,#71,#bc,#ec,#7f
	db #41,#1f,#ce,#c7,#f3,#71,#bc,#dc
	db #5b,#37,#18,#cd,#bf,#ff,#ff,#ff
	db #f8,#09,#b8,#d6,#4e,#1f,#97,#cc
	db #65,#f1,#ed,#b8,#d6,#4e,#1f,#97
	db #cc,#65,#f1,#ed,#38,#9e,#6a,#35
	db #96,#8b,#66,#f3,#59,#6c,#d6,#6f
	db #35,#98,#8b,#e3,#da,#31,#ac,#9c
	db #4f,#27,#13,#c9,#c3,#f2,#6d,#38
	db #9e,#4e,#27,#93,#87,#e4,#da,#71
	db #3c,#d4,#6b,#31,#16,#cd,#46,#b2
	db #71,#3c,#9c,#3f,#31,#0f,#c9,#bf
	db #ff,#ff,#ff,#f8,#0c,#c8,#66,#32
	db #19,#87,#83,#e3,#19,#90,#cc,#64
	db #33,#0f,#07,#c6,#33,#21,#98,#a8
	db #56,#3e,#1f,#93,#c8,#e3,#f2,#39
	db #1c,#8e,#4e,#0f,#8c,#65,#45,#31
	db #f0,#fc,#7c,#3f,#19,#08,#c7,#b3
	db #e1,#f8,#f8,#7e,#32,#11,#8f,#66
	db #43,#31,#50,#ac,#44,#3f,#15,#0a
	db #c7,#c3,#f1,#f0,#7c,#44,#23,#1e
	db #ff,#ff,#ff,#ff,#f8,#05,#68,#c4
	db #6a,#37,#1a,#8c,#45,#a2,#d1,#d8
	db #ec,#7e,#43,#22,#51,#28,#a4,#92
	db #19,#14,#7e,#3b,#1a,#8d,#c7,#5b
	db #79,#a8,#c4,#5a,#31,#1a,#8d,#c7
	db #5b,#79,#a8,#c4,#59,#2c,#bf,#ff
	db #ff,#ff,#f8,#09,#18,#ac,#46,#2d
	db #15,#8a,#c3,#a1,#f1,#68,#d4,#5a
	db #37,#1a,#89,#c6,#93,#51,#f8,#c4
	db #6a,#35,#15,#8b,#46,#22,#b1,#88
	db #ac,#56,#27,#13,#8a,#c4,#e2,#d1
	db #88,#ac,#56,#1c,#8e,#5f,#ff,#ff
	db #ff,#f8,#0c,#e8,#64,#2a,#0f,#05
	db #82,#c2,#a1,#90,#e8,#54,#3e,#19
	db #13,#87,#c2,#92,#70,#f8,#8c,#4e
	db #1f,#11,#89,#c3,#e1,#d0,#f8,#8c
	db #16,#0e,#85,#81,#c0,#a0,#70,#58
	db #2c,#29,#14,#bf,#ff,#ff,#ff,#f8
	db #05,#98,#ca,#66,#3a,#9e,#90,#28
	db #a4,#0a,#08,#ca,#66,#3a,#9e,#90
	db #28,#a4,#06,#05,#14,#81,#3d,#1d
	db #4d,#c6,#4b,#69,#b8,#ea,#6e,#32
	db #9b,#8e,#98,#14,#52,#04,#f4,#75
	db #37,#19,#4c,#c6,#d3,#71,#d4,#dc
	db #65,#37,#1d,#2b,#25,#a3,#09,#88
	db #c9,#80,#ba,#9d,#8d,#a6,#e3,#27
	db #ff,#ff,#ff,#f8,#09,#18,#b2,#46
	db #33,#18,#8b,#44,#53,#31,#84,#8c
	db #59,#23,#19,#8c,#45,#a2,#29,#98
	db #c1,#65,#33,#18,#4c,#46,#53,#11
	db #12,#92,#5a,#32,#98,#88,#a4,#a2
	db #85,#94,#cc,#65,#31,#19,#4c,#45
	db #92,#91,#64,#b4,#65,#31,#11,#49
	db #46,#4a,#49,#28,#a2,#52,#28,#59
	db #4c,#46,#53,#31,#64,#c4,#44,#ff
	db #ff,#ff,#ff,#f8,#0c,#d8,#6a,#36
	db #1a,#8d,#86,#93,#d1,#b0,#d4,#6c
	db #35,#1b,#0d,#43,#42,#08,#a8,#68
	db #42,#22,#1a,#88,#86,#90,#d0,#d0
	db #84,#44,#35,#1b,#0d,#28,#a4,#a2
	db #28,#f8,#6a,#22,#14,#85,#83,#21
	db #a1,#08,#88,#6a,#36,#1a,#46,#43
	db #41,#90,#d0,#52,#8a,#3e,#1a,#8a
	db #83,#22,#21,#a7,#ff,#ff,#ff,#f8
	db #05,#6c,#b6,#6e,#37,#1a,#cd,#e7
	db #63,#b1,#fd,#06,#8a,#41,#1f,#ce
	db #e6,#d2,#d9,#6c,#dc,#6e,#35,#9b
	db #ce,#c7,#63,#fa,#0d,#14,#82,#3f
	db #9d,#cd,#a6,#f3,#59,#88,#c4,#77
	db #37,#9a,#8d,#47,#f3,#b9,#b8,#dc
	db #83,#3f,#9d,#8e,#c7,#f4,#1a,#29
	db #04,#7f,#3b,#9b,#5f,#ff,#ff,#ff
	db #f8,#09,#6c,#b6,#4e,#27,#11,#c9
	db #e5,#a2,#d1,#6c,#c6,#4e,#37,#1a
	db #ca,#64,#d2,#d9,#6c,#9c,#4e,#2d
	db #96,#cb,#63,#f3,#51,#6c,#c6,#4e
	db #37,#1a,#cd,#64,#d2,#d9,#6c,#a6
	db #5b,#29,#93,#cc,#66,#32,#d9,#8c
	db #b6,#53,#35,#9a,#cc,#66,#b3,#19
	db #6c,#c6,#63,#35,#1a,#8b,#66,#33
	db #71,#88,#d6,#6b,#26,#bf,#ff,#ff
	db #ff,#f8,#0c,#ac,#56,#3e,#1f,#0a
	db #c6,#63,#a1,#d0,#fc,#7e,#3e,#19
	db #0a,#c5,#63,#d1,#58,#ac,#7c,#3e
	db #15,#8c,#c7,#63,#31,#50,#fc,#7e
	db #3e,#19,#0a,#c5,#63,#d0,#f8,#7c
	db #44,#22,#11,#88,#c5,#42,#a1,#58
	db #ac,#64,#32,#11,#89,#c5,#42,#a0
	db #78,#5c,#3c,#22,#15,#8a,#c7,#af
	db #ff,#ff,#ff,#f8,#05,#9c,#de,#76
	db #37,#19,#8d,#e7,#73,#d1,#d8,#dc
	db #82,#41,#1d,#8f,#68,#34,#52,#02
	db #ee,#7b,#41,#20,#8e,#c6,#63,#d1
	db #d8,#dc,#67,#37,#9d,#cf,#68,#23
	db #b1,#b8,#c9,#66,#31,#16,#8c,#46
	db #e3,#2d,#8c,#b4,#76,#37,#19,#8c
	db #45,#a2,#85,#49,#04,#7a,#3b,#1b
	db #ce,#e7,#a3,#b1,#b8,#ce,#6f,#3b
	db #9e,#d0,#47,#63,#71,#91,#ff,#ff
	db #ff,#ff,#f8,#09,#1c,#96,#52,#31
	db #11,#8b,#66,#73,#11,#48,#c4,#6e
	db #33,#14,#8c,#c6,#62,#25,#4c,#b6
	db #62,#31,#19,#88,#c5,#a2,#91,#88
	db #8e,#4b,#33,#19,#8c,#c6,#22,#25
	db #18,#ac,#46,#25,#15,#88,#b5,#71
	db #b1,#38,#a4,#5a,#29,#13,#86,#13
	db #23,#31,#b8,#d4,#4b,#35,#96,#cc
	db #66,#63,#11,#1c,#96,#67,#37,#9d
	db #8c,#c6,#22,#23,#ff,#ff,#ff,#f8
	db #0c,#d8,#6c,#22,#1b,#12,#c8,#e3
	db #e1,#b0,#88,#94,#46,#1b,#0a,#83
	db #43,#49,#b0,#88,#44,#2a,#15,#06
	db #86,#c2,#21,#b0,#a8,#2e,#1b,#11
	db #08,#86,#92,#a1,#90,#d8,#7c,#46
	db #14,#cf,#c5,#42,#a1,#90,#d8,#7c
	db #0e,#10,#48,#82,#c1,#b1,#18,#a8
	db #54,#0e,#0b,#86,#c4,#42,#a0,#b0
	db #3c,#0e,#22,#11,#0d,#1f,#ff,#ff
	db #ff,#f8,#05,#6c,#dc,#6f,#3b,#1f
	db #d1,#47,#f3,#b2,#0c,#fc,#6f,#37
	db #1f,#ce,#c6,#b2,#d1,#6c,#dc,#6f
	db #3b,#1f,#d1,#47,#f3,#b2,#0c,#fc
	db #6f,#37,#9d,#cf,#e7,#5b,#6f,#ff
	db #ff,#ff,#f8,#09,#6c,#9c,#4f,#35
	db #1a,#cd,#c5,#b3,#51,#8c,#b4,#4f
	db #27,#1a,#cc,#45,#71,#d1,#6c,#9c
	db #4f,#2d,#1a,#c9,#c5,#b3,#51,#8c
	db #b4,#4f,#27,#94,#cb,#65,#1a,#6f
	db #ff,#ff,#ff,#f8,#0c,#ac,#7c,#33
	db #15,#0a,#c3,#c0,#f1,#50,#8c,#7c
	db #0f,#19,#0a,#c4,#61,#f0,#b8,#a8
	db #56,#3e,#19,#8e,#87,#e3,#e1,#f8
	db #a8,#46,#3e,#1f,#8f,#c7,#63,#f1
	db #4c,#f7,#ff,#ff,#ff,#ff,#f8,#05
	db #68,#b4,#6f,#37,#9b,#8d,#66,#f3
	db #b9,#fd,#06,#77,#3e,#e0,#d1,#49
	db #34,#19,#fc,#de,#76,#36,#56,#8b
	db #46,#f3,#79,#b8,#d6,#6f,#3b,#9f
	db #d0,#67,#73,#ea,#28,#ee,#7f,#41
	db #1f,#d0,#68,#a4,#9a,#0c,#fe,#6f
	db #3b,#1b,#1f,#ff,#ff,#ff,#f8,#09
	db #68,#9c,#4e,#2d,#16,#8d,#66,#f3
	db #b9,#ac,#db,#77,#37,#1b,#cc,#65
	db #b2,#79,#48,#99,#2a,#27,#13,#8b
	db #45,#a3,#59,#bc,#ee,#6b,#2c,#9d
	db #8d,#66,#f3,#71,#ac,#c6,#6e,#37
	db #98,#cd,#e6,#32,#d9,#4c,#98,#ff
	db #ff,#ff,#ff,#f8,#0c,#a8,#1a,#1d
	db #14,#8f,#43,#c2,#21,#50,#e8,#79
	db #2a,#06,#87,#45,#23,#d1,#c8,#c8
	db #56,#23,#0f,#08,#85,#43,#a1,#e3
	db #ff,#ff,#ff
;
; 100 GOSUB 1380:' Set Up Envelopes  
;
; 1380 ENV 1,1,15,1,15,-1,10  
; 1390 ENV 2,1,15,1,15,-1,10  
; 1400 ENV 3,1,15,1,15,-1,10  
; 1410 ENV 4,1,15,1,15,-1,10 
; 1420 ENV 5,1,15,1,15,-1,10   
; 1430 ENV 6,1,15,1,15,-1,10  
; 1440 ENV 7,1,15,1,15,-1,10
; 1450 ENV 8,1,15,1,15,-1,10
; 1460 ENV 9,1,15,1,15,-1,10 
; 1470 ENV 10,1,15,1,15,-1,10 
; 1480 ENV 11,1,15,1,15,-1,10  
; 1490 ENV 12,1,15,1,15,-1,10 
; 1500 ENV 13,1,15,1,15,-1,10 
; 1510 ENV 14,1,15,1,15,-1,10
; 1520 ENV 15,1,15,1,15,-1,10  
; 1530 RETURN
;
.music_info
	db "A Christmas Carol (1986)(Database Software)()",0
	db "",0

	read "music_end.asm"
