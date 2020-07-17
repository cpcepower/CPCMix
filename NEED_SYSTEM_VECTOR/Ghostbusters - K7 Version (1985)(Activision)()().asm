; Music of Ghostbusters - K7 Version (1985)(Activision)()()
; Ripped by Megachur the 17/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GHOSTK7V.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6358
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

;
.init_music
;
	call l649f
.l635b
	call l645f
	call l64a2
	jr z,l635b
	call #bcc8
	call #bca7
	ret
.l636a
	ld ix,l6708
	ld b,#03
.l6370
	push bc
	call l65e8
	pop bc
	ld de,#000a
	add ix,de
	djnz l6370
	xor a
	ld (l69bd),a
	ld a,(l69bc)
	cp #00
	ret z
	call #bca7
	ld a,#01
	nop
	nop
	nop
	ld a,#00
	ld bc,#0000
	call #bc32
	ld a,#01
	ld bc,#0606
	call #bc32
	ld a,#02
	ld bc,#1a1a
	call #bc32
	ld a,#03
	ld bc,#0808
	call #bc32
	ld bc,#0000
	call #bc38
	ld hl,l6fc8
	inc hl
	ld (l6fc6),hl
	ld hl,#0415
	ld de,#2418
	call #bb66
	ld a,#00
	ld (l6969),a
	call l6416
	push hl
	ld a,#02
	call #bb90
	ld hl,#0101
	call #bb75
	pop hl
	call l642f
	ld a,#01
	call #bb90
	ld hl,l6969
	inc (hl)
	ld hl,#0000
	ld (l6dc6),hl
	ld hl,#0054
	ld (l6dc8),hl
	ld hl,l6e3b
	ld (l6dcc),hl
	ld a,#f1
	ld hl,l6fba
	call #bba8
	call l6589
	ld b,#81
	ld de,l64e9
	ld hl,l6dce
	call #bcd7
	ld a,#f0
	ld hl,l6ff5
	call #bba8
	ret
.l6416
	ld hl,l6d93
	ld e,a
	ld d,#00
	call l6703
	add hl,de
	ld a,(hl)
	ld e,a
	inc hl
	ld a,(hl)
	ld d,a
	ex de,hl
	ret
.l6427
	push hl
	ld hl,#0103
	call #bb75
	pop hl
.l642f
	ld a,(hl)
	inc hl
	ld b,a
.l6432
	ld a,#20
	push hl
	push bc
	call #bb5d
	pop bc
	pop hl
	djnz l6432
.l643d
	ld a,(hl)
	inc hl
	cp #80
	jr nc,l644a
	push hl
	call #bb5d
	pop hl
	jr l643d
.l644a
	sub #80
	call #bb5d
	ret
.l6450
	ld b,#02
.l6452
	push bc
	call #bb69
	ld a,#00
	call #bc50
	pop bc
	djnz l6452
	ret
.l645f
	ld a,(l6d92)
	cp #ff
	ret nz
	xor a
	ld (l6d92),a
	ld a,(l6969)
	cp #17
	ret z
	call l6450
	ld a,(l6969)
	call l6416
	push hl
	ld hl,#0101
	call #bb75
	ld a,#02
	call #bb90
	pop hl
	call l642f
	ld a,#01
	call #bb90
	ld hl,(l6fc6)
	ld a,(hl)
	inc hl
	ld (l6fc6),hl
	ld (l6969),a
	call l6416
	call l6427
	ret
.l649f
	call l636a
.l64a2
	ld ix,l6708
	ld bc,#0304
.l64a9
	push bc
	ld a,c
	ld hl,l6960
	ld (hl),a
	call #bcad
	and #07
	cp #03
	call nc,l6621
	pop bc
	ld de,#000a
	add ix,de
	srl c
	djnz l64a9
	ld a,(l69bc)
	cp #00
	ret z
	ld a,(l69bd)
	cp #ff
	jr z,l64d6
	ld a,#12
	call #bb1e
	ret
.l64d6
	ld hl,#0f03
	call #bb75
	ld a,#f0
	call #bb5d
.l64e1
	ld a,#12
	call #bb1e
	jr z,l64e1
	ret
.l64e9
	ld hl,(l6dc3)
	ld a,(hl)
	ld bc,(l6dc5)
	bit 7,c
	jr z,l64f8
	dec hl
	jr l64f9
.l64f8
	inc hl
.l64f9
	ld (l6dc3),hl
	cp #fe
	jr z,l6564
	cp #ff
	jr z,l6574
	cp #fd
	ret z
	push af
	ld a,#20
	call l65d3
	pop af
	push af
	call l66f4
	ld d,#00
	ld e,a
	ld hl,(l6dc6)
	add hl,de
	ld (l6dc6),hl
	pop af
	and #0f
	call l65c2
	ld hl,(l6dc8)
	add hl,de
	ld (l6dc8),hl
	ld bc,#0240
	ld hl,(l6dc6)
	and a
	sbc hl,bc
	jr c,l655e
	ld a,#ff
	ld (l6d92),a
	ld hl,#0054
	ld (l6dc8),hl
	ld hl,#0000
	ld (l6dc6),hl
	ld hl,(l6dc3)
	push hl
	ld a,#ff
	ld bc,#0000
	cpdr
	pop de
	ex de,hl
	and a
	sbc hl,de
	ld de,l6dd8
	add hl,de
	dec hl
	ld (l6dc3),hl
	ret
.l655e
	ld a,#f1
	call l65d3
	ret
.l6564
	ld a,#ff
	ld (l6dc5),a
	ld hl,(l6dc3)
	dec hl
	dec hl
	ld (l6dc3),hl
	jp l64e9
.l6574
	ld hl,l6dca
	dec (hl)
	jr z,l6589
	ld hl,(l6dc3)
	inc hl
	inc hl
	ld (l6dc3),hl
	xor a
	ld (l6dc5),a
	jp l64e9
.l6589
	ld hl,(l6dcc)
	ld a,(hl)
	inc hl
	ld (l6dcc),hl
	push af
	rr a
	rr a
	rr a
	rr a
	rr a
	and #07
	inc a
	ld (l6dca),a
	pop af
	and #1f
	ld e,a
	ld d,#00
	push de
	pop hl
	call l66ff
	sla e
	rl d
	ex de,hl
	add hl,de
	ld de,l6dd8
	add hl,de
	inc hl
	ld (l6dc3),hl
	xor a
	ld (l6dc5),a
	jp l64e9
.l65c2
	ld de,#0000
	ld bc,(l6dc5)
	bit 7,c
	jr z,l65d1
	neg
	ld d,#ff
.l65d1
	ld e,a
	ret
.l65d3
	ld de,(l6dc6)
	ld hl,(l6dc8)
	push af
	ld a,#03
	call #bbde
	call #bbc0
	pop af
	call #bbfc
	ret
.l65e8
	ld l,(ix+#00)
	ld (ix+#02),l
	ld h,(ix+#01)
	ld (ix+#03),h
	xor a
	ld (ix+#08),a
.l65f8
	ld a,(hl)
	cp #ff
	jr nz,l6616
	ld a,(l69bc)
	cp #00
	jr z,l65e8
	call #bcc8
	call #bca7
	ld a,#20
	call l65d3
	ld a,#ff
	ld (l69bd),a
	scf
	ret
.l6616
	call l6664
	call l6683
	set 7,(ix+#09)
	ret
.l6621
	bit 7,(ix+#09)
	jr nz,l663d
	dec (ix+#08)
	ld l,(ix+#02)
	ld h,(ix+#03)
	jr nz,l6639
	inc hl
	ld (ix+#02),l
	ld (ix+#03),h
.l6639
	call l65f8
	ret c
.l663d
	ld l,(ix+#04)
	ld h,(ix+#05)
	ld a,(hl)
	call l6695
	push ix
	call #bcaa
	pop ix
	ld l,(ix+#04)
	ld h,(ix+#05)
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ld a,(hl)
	cp #ff
	ret nz
	res 7,(ix+#09)
	ret
.l6664
	push af
	ld l,(ix+#06)
	ld h,(ix+#07)
	and #1f
	ld b,a
	jr z,l667b
	ld a,#ff
.l6672
	push bc
	ld bc,#0000
	cpir
	pop bc
	djnz l6672
.l667b
	ld (ix+#04),l
	ld (ix+#05),h
	pop af
	ret
.l6683
	call l66f4
	rr a
	and #07
	ld c,a
	ld a,(ix+#08)
	cp #00
	ret nz
	ld (ix+#08),c
	ret
.l6695
	ld d,#00
	ld e,a
	call l66ff
	ld hl,l69be
	add hl,de
	push ix
	ld ix,l6960
	ld a,(hl)
	inc hl
	push af
	call l66f4
	ld (ix+#01),a
	pop af
	and #0f
	ld (ix+#02),a
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	ld d,#00
	call l6703
	ld hl,l696a
	add hl,de
	ld a,(hl)
	inc hl
	ld (ix+#03),a
	ld a,(hl)
	ld (ix+#04),a
	pop hl
	ld a,(hl)
	inc hl
	push af
	call l66f4
	ld (ix+#05),a
	pop af
	and #0f
	ld (ix+#06),a
	ld a,(hl)
	ld e,a
	ld d,#00
	call l6703
	ld hl,l69a6
	add hl,de
	ld a,(hl)
	inc hl
	ld (ix+#07),a
	ld a,(hl)
	ld (ix+#08),a
	pop ix
	ld hl,l6960
	ret
.l66f4
	rr a
	rr a
	rr a
	rr a
	and #0f
	ret
.l66ff
	sla e
	rl d
.l6703
	sla e
	rl d
	ret
.l6708
	dw l6726,#0000,#0000,l6742
	dw #0000,l6782,#0000,#0000
	dw l67a9,#0000,l67f0,#0000
	dw #0000,l6849,#0000
.l6726
	db #e0,#20,#21,#22,#23,#24,#e5,#e5
	db #e5,#45,#26,#e5,#e5,#a5,#26,#e5
	db #e5,#25,#27,#e5,#25,#e8,#e5,#e5
.l6742 equ $ + 4
	db #e5,#85,#89,#ff,#00,#00,#00,#00
	db #ff,#0a,#0a,#0a,#0a,#ff,#0b,#0b
	db #0b,#0b,#ff,#0c,#0c,#0c,#0c,#ff
	db #0d,#0d,#0d,#0d,#ff,#23,#23,#4b
	db #23,#23,#23,#4b,#23,#ff,#23,#23
	db #4b,#23,#23,#23,#0d,#0d,#0d,#0d
	db #ff,#4c,#4d,#3d,#39,#ff,#0f,#0f
	db #51,#51,#51,#51,#23,#00,#ff,#0f
.l6782 equ $ + 4
	db #0f,#0f,#0f,#ff,#20,#e1,#e1,#41
	db #22,#23,#24,#22,#23,#24,#e1,#a1
	db #22,#23,#24,#22,#23,#24,#e1,#21
	db #45,#25,#26,#e1,#21,#e7,#e7,#28
	db #22,#23,#24,#22,#23,#24,#e1,#41
.l67a9 equ $ + 3
	db #e1,#89,#ff,#01,#02,#03,#04,#05
	db #06,#07,#08,#ff,#1d,#1d,#1e,#1f
	db #20,#21,#21,#22,#22,#ff,#35,#30
	db #35,#31,#31,#31,#21,#21,#21,#21
	db #ff,#33,#33,#33,#34,#ff,#34,#34
	db #22,#22,#22,#22,#ff,#3e,#3f,#40
	db #40,#00,#0f,#ff,#3e,#41,#42,#43
	db #44,#45,#ff,#50,#50,#50,#50,#ff
	db #5a,#5a,#5a,#5a,#ff,#0f,#0f,#0f
.l67f0 equ $ + 2
	db #0f,#ff,#c0,#21,#60,#62,#23,#24
	db #25,#24,#26,#27,#28,#22,#29,#27
	db #28,#2a,#2b,#2c,#2c,#2d,#2e,#2f
	db #30,#22,#24,#26,#27,#28,#22,#29
	db #27,#28,#2a,#2b,#2c,#2c,#2d,#2e
	db #2f,#24,#25,#24,#26,#31,#32,#33
	db #34,#35,#36,#38,#37,#24,#25,#24
	db #26,#59,#3a,#34,#3b,#3c,#3b,#3d
	db #3b,#3c,#3b,#3e,#2c,#2c,#2d,#2e
	db #2f,#24,#25,#24,#26,#39,#39,#3a
	db #34,#24,#34,#24,#34,#24,#34,#24
.l6849 equ $ + 3
	db #34,#9b,#ff,#08,#09,#08,#09,#ff
	db #00,#09,#08,#09,#ff,#0e,#0e,#0f
	db #10,#00,#11,#00,#ff,#0e,#0e,#0f
	db #10,#10,#11,#00,#ff,#00,#12,#12
	db #13,#14,#15,#10,#0f,#ff,#0f,#12
	db #12,#12,#12,#10,#14,#0f,#ff,#0f
	db #12,#12,#12,#12,#10,#15,#14,#16
	db #16,#ff,#17,#18,#19,#10,#00,#11
	db #16,#1a,#ff,#18,#18,#1b,#10,#00
	db #11,#00,#ff,#0e,#0e,#0f,#10,#10
	db #11,#16,#16,#ff,#0e,#0e,#0f,#15
	db #00,#14,#00,#ff,#0e,#0e,#0f,#15
	db #15,#14,#1c,#ff,#24,#25,#00,#24
	db #25,#00,#24,#25,#00,#24,#25,#00
	db #26,#27,#28,#29,#2a,#ff,#2b,#2c
	db #00,#2b,#2c,#00,#2b,#2c,#00,#2b
	db #2c,#00,#2d,#26,#28,#29,#2a,#ff
	db #2b,#2c,#00,#2b,#2c,#00,#2b,#2c
	db #ff,#00,#2b,#2c,#00,#2d,#26,#2e
	db #ff,#14,#14,#0f,#10,#00,#11,#00
	db #ff,#17,#18,#19,#10,#00,#11,#2f
	db #16,#ff,#18,#18,#1b,#10,#00,#11
	db #18,#ff,#14,#2f,#12,#13,#14,#15
	db #10,#0f,#ff,#0f,#12,#12,#12,#12
	db #10,#15,#14,#00,#ff,#0f,#36,#37
	db #38,#0f,#0f,#0f,#ff,#0f,#37,#39
	db #3a,#0f,#0f,#0f,#ff,#0f,#37,#39
	db #3b,#3c,#3b,#36,#37,#ff,#0f,#46
	db #47,#48,#49,#4a,#0f,#0f,#0f,#ff
	db #4e,#00,#4f,#12,#4e,#15,#14,#ff
	db #14,#12,#12,#14,#14,#15,#10,#0f
	db #ff,#0f,#0f,#0f,#0f,#ff,#52,#52
	db #52,#2f,#53,#54,#55,#ff,#52,#52
	db #52,#00,#2f,#56,#57,#57,#27,#59
	db #ff,#27,#62,#27,#62,#61,#27,#5b
.l6960 equ $ + 2
	db #63,#ff,#00,#00,#00,#00,#00,#00
.l6969 equ $ + 3
	db #00,#00,#00,#00
.l696a
	dw #03f4,#027e,#02a4,#02cc
	dw #02f6,#01aa,#0431,#0238
	dw #0218,#0096,#01fa,#011c
	dw #012d,#00fd,#00c9,#00e1
	dw #00d5,#0152,#0353,#0324
	dw #010c,#00a6,#007b,#025a
	dw #00be,#01c3,#017b,#01c3
.l69a6 equ $ + 4
	dw #0a8f,#0047,#000e,#001c
	dw #0070,#01a4,#0038,#0054
	dw #002a,#0118,#00c4,#007e
.l69be equ $ + 4
.l69bd equ $ + 3
.l69bc equ $ + 2
	dw #0009,#0001,#0000
	dw #0100,#0010,#0200,#0110
	dw #0200,#0210,#0200,#0310
	dw #0200,#0410,#0200,#0510
	dw #0200,#0610,#0300,#0710
	dw #0100,#0810,#0100,#0962
	dw #00f0,#0972,#00f0,#0982
	dw #00f0,#0992,#00f0,#0a30
	dw #010d,#0000,#0400,#0b30
	dw #010d,#0c30,#010d,#0d30
	dw #000d,#0e30,#010d,#0d30
	dw #010d,#0f30,#010d,#0d35
	dw #000d,#1035,#010c,#0d35
	dw #010c,#1035,#040c,#0b35
	dw #000c,#0d35,#040c,#1135
	dw #010d,#0040,#010d,#1240
	dw #000d,#1340,#000d,#0240
	dw #010d,#0740,#010d,#0440
	dw #010d,#0922,#01f0,#1004
	dw #060e,#0d04,#000e,#1004
	dw #010e,#0d04,#010e,#0b04
	dw #000e,#1404,#000e,#0d04
	dw #010e,#1504,#060e,#1004
	dw #000e,#1504,#010e,#1604
	dw #040e,#0000,#0000,#0a40
	dw #040d,#0740,#040d,#1640
	dw #040d,#0c40,#040d,#0440
	dw #040d,#0040,#040d,#10c3
	dw #040d,#0fc3,#040d,#0bc3
	dw #020d,#0bc3,#040d,#0dc3
	dw #020d,#18c3,#040d,#15c3
	dw #040d,#0dc3,#040d,#0a03
	dw #010d,#0703,#070d,#0733
	dw #010d,#0503,#080d,#1103
	dw #040d,#1a03,#040d,#0503
	dw #040d,#1b03,#040d,#10c3
	dw #010d,#18c3,#010d,#15c3
	dw #010d,#18c3,#000d,#10c3
	dw #090d,#16b0,#0100,#10c3
	dw #040d,#0fc3,#040d,#1030
	dw #040d,#0f30,#000d,#1c40
	dw #010d,#0922,#00fc,#1db0
	dw #000d,#1004,#040d,#0f04
	dw #040d,#0b04,#040d,#1130
	dw #010d,#0f30,#000d,#0b30
	dw #010d,#0f30,#040d,#1130
	dw #040d,#0b04,#000d,#1430
	dw #000d,#0d30,#010d,#1830
	dw #010d,#1530,#060d,#0e30
	dw #000d,#0f04,#060d,#0b04
	dw #010d,#1104
	db #0d,#01,#08,#47,#48,#4f,#53,#54
	db #42,#55,#53,#54,#45,#52,#53,#21
	db #a0,#02,#49,#46,#20,#54,#48,#45
	db #52,#45,#27,#53,#20,#53,#4f,#4d
	db #45,#54,#48,#49,#4e,#47,#20,#53
	db #54,#52,#41,#4e,#47,#c5,#02,#49
	db #4e,#20,#54,#48,#45,#20,#4e,#45
	db #49,#47,#48,#42,#4f,#55,#52,#48
	db #4f,#4f,#c4,#06,#57,#48,#4f,#20
	db #59,#4f,#55,#20,#47,#4f,#4e,#4e
	db #41,#20,#43,#41,#4c,#4c,#20,#bf
	db #02,#49,#46,#20,#54,#48,#45,#52
	db #45,#27,#53,#20,#53,#4f,#4d,#45
	db #54,#48,#49,#4e,#47,#20,#57,#45
	db #49,#52,#c4,#02,#41,#4e,#44,#20
	db #49,#54,#20,#44,#4f,#4e,#27,#54
	db #20,#4c,#4f,#4f,#4b,#20,#47,#4f
	db #4f,#c4,#02,#49,#20,#41,#49,#4e
	db #27,#54,#20,#27,#46,#52,#41,#49
	db #44,#20,#4f,#46,#20,#4e,#4f,#20
	db #47,#48,#4f,#53,#54,#20,#a0,#04
	db #49,#46,#20,#59,#4f,#55,#27,#52
	db #45,#20,#53,#45,#45,#49,#4e,#47
	db #20,#54,#48,#49,#4e,#47,#d3,#03
	db #52,#55,#4e,#4e,#49,#4e,#47,#20
	db #54,#48,#52,#4f,#55,#47,#48,#20
	db #59,#4f,#55,#52,#20,#48,#45,#41
	db #c4,#08,#41,#4e,#20,#49,#4e,#56
	db #49,#53,#49,#42,#4c,#45,#20,#4d
	db #41,#ce,#06,#53,#4c,#45,#45,#50
	db #49,#4e,#47,#20,#49,#4e,#20,#59
	db #4f,#55,#52,#20,#42,#45,#c4,#06
	db #49,#46,#20,#59,#4f,#55,#27,#52
	db #45,#20,#41,#4c,#4c,#20,#41,#4c
	db #4f,#4e,#c5,#07,#50,#49,#43,#4b
	db #20,#55,#50,#20,#54,#48,#45,#20
	db #50,#48,#4f,#4e,#c5,#08,#41,#4e
	db #44,#20,#43,#41,#4c,#4c,#2e,#2e
	db #2e,#2e,#ae,#03,#49,#20,#48,#45
	db #41,#52,#20,#48,#45,#20,#4c,#49
	db #4b,#45,#53,#20,#54,#48,#45,#20
	db #47,#49,#52,#4c,#53,#20,#a1,#03
	db #59,#45,#41,#48,#21,#20,#59,#45
	db #41,#48,#21,#20,#59,#45,#41,#48
	db #21,#20,#59,#45,#41,#48,#a1,#01
	db #42,#55,#53,#54,#49,#4e,#27,#20
	db #4d,#41,#4b,#45,#53,#20,#4d,#45
	db #20,#46,#45,#45,#4c,#20,#47,#4f
	db #4f,#44,#20,#a1,#04,#4d,#4d,#2c
	db #20,#49,#46,#20,#59,#4f,#55,#20
	db #48,#41,#56,#45,#20,#41,#20,#47
	db #48,#4f,#53,#d4,#03,#4f,#46,#20
	db #41,#20,#46,#52,#45,#41,#4b,#59
	db #20,#47,#48,#4f,#53,#54,#20,#42
	db #41,#42,#d9,#01,#59,#4f,#55,#27
	db #44,#20,#42,#45,#54,#54,#45,#52
	db #20,#43,#41,#4c,#4c,#20,#47,#48
	db #4f,#53,#54,#42,#55,#53,#54,#45
	db #52,#d3,#01,#44,#4f,#4e,#27,#54
	db #20,#47,#45,#54,#20,#43,#41,#55
	db #47,#48,#54,#20,#41,#4c,#4f,#4e
	db #45,#20,#4f,#48,#20,#4e,#4f,#a1
	db #01,#57,#48,#45,#4e,#20,#49,#54
	db #20,#43,#4f,#4d,#45,#53,#20,#54
	db #48,#52,#4f,#55,#47,#48,#20,#54
	db #48,#45,#20,#44,#4f,#4f,#d2,#01
	db #55,#4e,#4c,#45,#53,#53,#20,#59
	db #4f,#55,#20,#4a,#55,#53,#54,#20
	db #57,#41,#4e,#54,#20,#53,#4f,#4d
	db #45,#20,#4d,#4f,#52,#c5,#01,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
.l6d93 equ $ + 7
.l6d92 equ $ + 6
	db #20,#20,#20,#20,#20,#a0,#00,#4e
	db #6b,#5d,#6b,#7a,#6b,#8f,#6b,#a4
	db #6b,#bf,#6b,#d6,#6b,#f3,#6b,#0b
	db #6c,#25,#6c,#36,#6c,#4b,#6c,#5f
	db #6c,#71,#6c,#7f,#6c,#9b,#6c,#b3
	db #6c,#d0,#6c,#e8,#6c,#ff,#6c,#1e
.l6dc3 equ $ + 7
	db #6d,#3c,#6d,#5b,#6d,#7a,#6d,#00
.l6dca equ $ + 6
.l6dc8 equ $ + 4
.l6dc6 equ $ + 2
.l6dc5 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6dce equ $ + 2
.l6dcc
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6dd8 equ $ + 4
	db #00,#00,#00,#00,#ff,#fd,#fd,#fd
	db #fd,#fd,#fd,#fd,#fe,#ff,#9a,#98
	db #96,#94,#92,#92,#92,#fe,#ff,#8a
	db #68,#66,#64,#62,#62,#62,#fe,#ff
	db #7a,#78,#76,#74,#72,#72,#72,#fe
	db #ff,#0a,#08,#06,#04,#02,#02,#02
	db #fe,#ff,#fa,#f8,#f6,#f4,#f2,#f2
	db #f2,#fe,#ff,#1a,#18,#16,#14,#12
	db #12,#12,#fe,#ff,#4a,#48,#46,#44
	db #42,#22,#22,#fe,#ff,#ea,#c8,#c6
	db #c4,#a2,#a2,#82,#fe,#ff,#ea,#c8
	db #c6,#a4,#a2,#82,#42,#fe,#ff,#6a
.l6e3b equ $ + 7
	db #68,#66,#64,#62,#32,#32,#fe,#e0
	db #e0,#e0,#e0,#e0,#c4,#06,#c4,#06
	db #c4,#06,#c4,#06,#c4,#e4,#a4,#01
	db #04,#02,#03,#44,#05,#00,#02,#05
	db #22,#24,#01,#00,#23,#02,#02,#44
	db #05,#00,#08,#09,#03,#04,#05,#00
	db #05,#04,#02,#0a,#44,#05,#00,#02
	db #05,#22,#24,#01,#00,#23,#02,#01
	db #44,#05,#00,#08,#09,#03,#04,#05
	db #00,#05,#04,#02,#0a,#e4,#e4,#e4
	db #84,#05,#00,#03,#08,#03,#01,#e4
	db #e4,#e4,#04,#01,#00,#03,#08,#03
	db #01,#e4,#e4,#e4,#e4,#04,#01,#00
	db #09,#08,#07,#0a,#24,#05,#00,#29
	db #01,#02,#44,#05,#00,#08,#09,#03
	db #04,#05,#00,#05,#04,#02,#0a,#44
	db #05,#00,#05,#4a,#24,#05,#00,#08
	db #01,#2a,#44,#08,#00,#08,#09,#03
	db #04,#05,#00,#05,#04,#02,#0a,#e4
	db #e4,#e4,#84,#05,#00,#03,#08,#03
	db #01,#e4,#e4,#e4,#04,#01,#00,#03
	db #08,#03,#01,#e4,#e4,#24,#01,#00
	db #08,#09,#03,#04,#05,#00,#05,#04
	db #02,#0a,#44,#05,#00,#28,#27,#44
	db #05,#00,#05,#01,#0a,#24,#05,#00
	db #05,#0a,#09,#24,#05,#00,#05,#04
	db #02,#0a,#e4,#c4,#05,#00,#03,#08
	db #03,#01,#c4,#01,#00,#09,#01,#07
	db #03,#0a,#e4,#44,#08,#00,#03,#08
	db #03,#01,#e4,#01,#00,#09,#04,#03
	db #04,#03,#04,#03,#04,#e4,#a4,#05
	db #00,#08,#09,#03,#04,#05,#00,#05
	db #04,#02,#0a,#44,#05,#00,#05,#01
	db #24,#02,#07,#08,#00,#05,#24,#03
	db #07,#04,#03,#06,#08,#00,#05,#01
	db #44,#02,#04,#02,#07,#e4,#e4,#e4
	db #e4,#e4,#e4,#e4,#84,#09,#00,#02
	db #09,#09,#04,#02,#e4,#e4,#e4,#08
	db #00,#03,#08,#03,#01,#e4,#e4,#e4
	db #04,#01,#00,#03,#08,#03,#01,#e4
	db #e4,#24,#01,#00,#02,#03,#0a,#01
	db #03,#04,#07,#84,#01,#00,#02,#09
	db #24,#01,#05,#24,#02,#00,#02,#01
	db #0a,#02,#22,#24,#01,#00,#02,#01
	db #01,#44,#0a,#04,#02,#0a,#44,#01
	db #00,#08,#09,#03,#04,#05,#00,#05
	db #04,#02,#0a,#08,#c4,#06,#c4,#06
	db #c4,#06,#c4,#06,#e0,#e0,#e0,#e0
.l6fba equ $ + 6
	db #e0,#e0,#e0,#e0,#e0,#e0,#18,#7e
	db #7e,#ff,#ff,#7e,#7e,#18,#00,#00
.l6fc8 equ $ + 4
.l6fc6 equ $ + 2
	db #00,#00,#00,#00,#01,#02,#03,#00
	db #04,#05,#03,#00,#06,#06,#07,#08
	db #03,#00,#09,#0a,#03,#00,#06,#06
	db #03,#00,#0b,#0c,#0d,#00,#06,#0e
	db #06,#0f,#03,#00,#11,#12,#13,#10
	db #06,#06,#14,#15,#16,#13,#03,#00
.l6ff5 equ $ + 1
	db #17,#70,#80,#80,#70,#0e,#05,#05
	db #0e,#c9,#00,#00

	 #706b
	call #6358

	call #64e9 ; play ?

;
.music_info
	db "Ghostbusters - K7 Version (1985)(Activision)()",0
	db "",0

	read "music_end.asm"
