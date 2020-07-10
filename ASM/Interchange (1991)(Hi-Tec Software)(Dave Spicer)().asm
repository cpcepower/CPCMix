; Music of Interchange (1991)(Hi-Tec Software)(Dave Spicer)()
; Ripped by Megachur the 04/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "INTERCHA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #7558
FIRST_THEME				equ 1
LAST_THEME				equ 2

	read "music_header.asm"

;
.init_music	; theme 1-2
.l7558
;
	dec a
	ret m
	add a
	ld e,a
	add a
	add e
	ld e,a
	ld d,#00
	ld hl,l7963
	add hl,de
	ld ix,l78a7
	ld de,#001d
	ld b,#03
.l756e
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld (ix+#0b),#c1
	ld (ix+#0c),#7c
	xor a
	ld (ix+#1a),a
	ld (ix+#0e),a
	ld (ix+#0d),#01
	add ix,de
	djnz l756e
	xor a
	ld (l759c),a
	ld (l77c7),a
	inc a
	ld (l75a5),a
	ret
;
.play_music
.l759b
;
.l759c equ $ + 1
	ld a,#01
	and a
	jr nz,l7558
	ld hl,l77c7
	inc (hl)
.l75a5 equ $ + 1
	ld a,#05
	cp (hl)
	jr nz,l75c0
	ld (hl),#00
	ld ix,l78a7
	call l763c
	ld ix,l78c4
	call l763c
	ld ix,l78e1
	call l763c
.l75c0
	xor a
	ld (l7606),a
	ld ix,l78a7
	call l7719
	ld (l7906),a
	ld (l78fe),hl
	ld a,c
	ld (l7905),a
	ld ix,l78c4
	call l7719
	ld (l7907),a
	ld (l7900),hl
	ld a,(l7905)
	sla c
	or c
	ld (l7905),a
	ld ix,l78e1
	call l7719
	ld (l7908),a
	ld (l7902),hl
	ld a,(l7905)
	sla c
	sla c
	or c
	xor #3f
	ld (l7905),a
.l7606 equ $ + 1
	ld a,#00
	and a
	jr z,l7616
	ld a,(l77c7)
	cp #01
	jr nz,l7616
.l7612 equ $ + 1
	ld a,#00
	ld (l7904),a
.l7616
	ld hl,l7908
	ld e,#0a
.l761b
	ld d,(hl)
	ld b,#f4
	out (c),e
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),d
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec e
	jp p,l761b
	ret
.l763c
	dec (ix+#0d)
	ret nz
	ld l,(ix+#0b)
	ld h,(ix+#0c)
.l7646
	ld a,(hl)
	and a
	jp p,l7660
	inc hl
	inc a
	jr nz,l7651
	jr l76aa
.l7651
	inc a
	jr nz,l7659
	call l7700
	jr l7646
.l7659
	ld a,(hl)
	ld (l75a5),a
	inc hl
	jr l7646
.l7660
	and #3f
	ld (ix+#0d),a
	bit 6,(hl)
	jr nz,l769d
	xor a
	ld (ix+#1c),a
	ld (ix+#17),a
	ld (ix+#18),a
	ld a,(ix+#06)
	ld (ix+#19),a
	ld a,#02
	ld (ix+#16),a
	push hl
	push ix
	pop hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld a,(bc)
	ld (ix+#1b),a
	inc bc
	ld (ix+#0f),c
	ld (ix+#10),b
	ex de,hl
	ld hl,#000f
	add hl,de
	ex de,hl
	ld bc,#0004
	ldir
	pop hl
.l769d
	inc hl
	ld a,(hl)
	ld (ix+#15),a
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	ret
.l76aa
	ld l,(ix+#09)
	ld h,(ix+#0a)
.l76b0
	ld a,(hl)
	inc hl
	and a
	jp p,l76eb
	inc a
	jr nz,l76bf
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jr l76b0
.l76bf
	inc a
	jr nz,l76c8
	ld a,(hl)
	call l7700
	jr l76b0
.l76c8
	inc a
	jr nz,l76d1
	ld (ix+#0e),#00
	jr l76b0
.l76d1
	inc a
	jr nz,l76e4
	ld (ix+#0e),#01
	ld a,(hl)
	ld (l7612),a
	inc hl
	ld a,(hl)
	ld (l77d3),a
	inc hl
	jr l76b0
.l76e4
	ld a,(hl)
	ld (ix+#1a),a
	inc hl
	jr l76b0
.l76eb
	ld (ix+#09),l
	ld (ix+#0a),h
	add a
	ld e,a
	ld d,#00
	ld hl,l7a46
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l7646
.l7700
	ld a,(hl)
	ld e,a
	add a
	add a
	add a
	add e
	push hl
	ld e,a
	ld d,#00
	ld hl,l7cc2
	add hl,de
	push ix
	pop de
	ld bc,#0009
	ldir
	pop hl
	inc hl
	ret
.l7719
	ld l,(ix+#11)
	ld h,(ix+#12)
	ld a,(hl)
	and a
	jr nz,l7729
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
.l7729
	ld c,a
	inc hl
	ld (ix+#11),l
	ld (ix+#12),h
	ld l,(ix+#13)
	ld h,(ix+#14)
	ld a,(hl)
	cp #ff
	jr nz,l7742
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
.l7742
	and a
	ld a,(ix+#15)
	jp m,l774a
	add (hl)
.l774a
	and #7f
	bit 3,c
	jr z,l7753
	ld (l7904),a
.l7753
	add (ix+#1a)
	inc hl
	ld (ix+#13),l
	ld (ix+#14),h
	add a
	ld e,a
	ld d,#00
	ld hl,l77e7
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld e,(ix+#17)
	ld d,(ix+#18)
	add hl,de
	push hl
	ld a,(ix+#19)
	and a
	jr z,l777c
	dec (ix+#19)
	jr l7798
.l777c
	ex de,hl
	ld e,(ix+#07)
	ld d,(ix+#08)
	bit 2,(ix+#16)
	jr nz,l778c
	add hl,de
	jr l778f
.l778c
	and a
	sbc hl,de
.l778f
	inc (ix+#16)
	ld (ix+#17),l
	ld (ix+#18),h
.l7798
	ld l,(ix+#0f)
	ld h,(ix+#10)
	ld a,(ix+#1c)
	add (hl)
	ld (ix+#1c),a
	dec (ix+#1b)
	jr nz,l77bf
	inc hl
	ld a,(hl)
	and a
	jr nz,l77b5
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
.l77b5
	ld (ix+#1b),a
	inc hl
	ld (ix+#0f),l
	ld (ix+#10),h
.l77bf
	pop hl
	ld a,(ix+#0e)
	and a
	jr z,l77d5
.l77c7 equ $ + 1
	ld a,#02
	cp #01
	jr nz,l77d5
	ld a,#08
	ld c,a
	ld (l7606),a
.l77d3 equ $ + 1
	ld a,#0e
	ret
.l77d5
	ld a,(ix+#1c)
	rra
	rra
	rra
	rra
	and #0f
	ex af,af'
	ld a,(ix+#15)
	sub #60
	ret z
	ex af,af'
	ret
.l77e7
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
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.l78a7
	dw l7d34,l7d2f,l7d25
	db #00,#00,#00
	dw l79bd,l7b52
	db #01
	db #00
	dw l7d37,l7d31,l7d28
	db #18,#05,#00,#00,#00,#00,#0c,#c2
.l78c4
	dw l7d60,l7d86,l7d57
	db #00,#00,#00,#fc,#79,#10,#7b,#08
	db #01
	dw l7d63,l7d87,l7d5a
	db #3e,#05,#00,#00,#00,#00,#01,#d0
.l78e1
	dw l7d34,l7d2f,l7d25
	db #00,#00,#00
	dw l7a37,l7b52
	db #01,#00
	dw l7d37,l7d31,l7d28
	db #18,#05,#00,#00,#00,#00,#0c,#c2
.l7905 equ $ + 7
.l7904 equ $ + 6
.l7902 equ $ + 4
.l7900 equ $ + 2
.l78fe
	db #0b,#01,#35,#00,#0b,#01,#00,#3c
.l7906
	db #00
.l7907
	db #00
.l7908
	db #0c,#4e,#61,#66,#66,#20,#5a,#38
	db #30,#20,#6d,#75,#73,#69,#63,#20
	db #70,#6c,#61,#79,#65,#72,#20,#76
	db #32,#2e,#30,#2c,#20,#28,#43,#29
	db #20,#44,#61,#76,#65,#20,#53,#70
	db #69,#63,#65,#72,#20,#31,#36,#2f
	db #32,#2f,#39,#31,#20,#28,#4d,#75
	db #73,#74,#20,#6e,#6f,#74,#20,#62
	db #65,#20,#75,#73,#65,#64,#20,#77
	db #69,#74,#68,#6f,#75,#74,#20,#70
	db #65,#72,#6d,#69,#73,#73,#69,#6f
	db #6e,#21,#29
.l7963
	dw l79a6,l79cd,l7a19,l796f
	dw l797a,l799d
.l796f
	db #fe,#07,#0e,#10,#0e,#11,#13,#13
	db #ff
	dw l796f
.l797a
	db #15,#15,#16,#16,#17,#17,#18,#18
	db #15,#15,#16,#16,#19,#19,#16,#16
	db #19,#19,#15,#15,#1a,#1a,#16,#16
	db #19,#19,#15,#15,#1a,#1a,#16,#1b
	db #ff
	dw l797a
.l799d
	db #fe,#07,#0f,#12,#14,#14,#ff
	dw l799d
.l79a6
	db #03,#04,#05,#04,#04,#04,#00,#00
	db #00,#01,#01,#fe,#05,#04,#00,#00
	db #00,#02,#0a,#0a,#0a,#0a,#0a
.l79bd
	db #0a,#fe,#00,#01,#01,#02,#00,#00
	db #00,#00,#00,#00,#02,#ff
	dw l79a6
.l79cd
	db #fe,#02,#02,#02,#06,#06,#07,#06
	db #06,#07,#02,#06,#06,#07,#06,#06
	db #07,#fe,#05,#04,#fe,#02,#0c,#0c
	db #06,#06,#07,#fe,#05,#04,#fc,#00
	db #0e,#04,#0d,#02,#02,#0a,#fe,#06
	db #04,#fe,#02,#06,#06,#07,#06,#06
	db #07,#0c,#fe,#05,#05,#05,#04,#04
	db #fd,#04,#fe,#02,#06,#06,#07,#06
	db #06,#07,#06,#06,#07,#06,#06,#07
	db #02,#ff
	dw l79cd
.l7a19
	db #fe,#03,#02,#02,#08,#08,#08,#08
	db #09,#09,#09,#0b,#0a,#0a,#08,#08
	db #0a,#0a,#08,#08,#08,#08,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a
.l7a37
	db #0a,#0a,#0a,#0a,#0a,#08,#08,#0a
	db #0a,#0a,#0a,#02,#ff
	dw l7a19
.l7a46
	dw l7a7e,l7ab3,l7ae8
	dw l7aed,l7af2,l7afb,l7b04
	dw l7b11,l7b24,l7b2f,l7b40
	dw l7bad,l7bc4,l7c05,l7c0e
	dw l7c24,l7c1f,l7c2d,l7c32
	dw l7c3b,l7c4c,l7c55,l7c64
	dw l7c73,l7c82,l7c91,l7ca0
	dw l7caf
.l7a7e
	db #fe,#00,#04,#0e,#02,#0e,#04,#0e
	db #02,#0e,#02,#0e,#02,#0e,#04,#11
	db #02,#11,#02,#11,#02,#11,#04,#11
	db #02,#11,#04,#0c,#02,#0c,#04,#0c
	db #02,#0c,#02,#0c,#02,#0c,#04,#0e
	db #02,#0e,#04,#0e,#02,#0e,#02,#0e
	db #01,#0e,#01,#1a,#ff
.l7ab3
	db #02,#0e,#02,#0e,#01,#0e,#01,#0e
	db #02,#0e,#02,#0e,#01,#0e,#03,#1a
	db #02,#0c,#04,#0e,#08,#0e,#04,#1a
	db #02,#0c,#01,#0c,#03,#0c,#02,#0c
	db #01,#0c,#03,#18,#01,#0c,#03,#0c
	db #02,#10,#04,#10,#02,#10,#01,#10
	db #03,#10,#04
	db #1c,#ff
.l7ae8
	db #20,#60,#20,#60,#ff
.l7aed
	db #fd,#07,#fe,#01,#ff
.l7af2
	db #10,#39,#10,#3e,#10,#41,#10,#3e
	db #ff
.l7afb
	db #10,#39,#10,#3e,#10,#3c,#10,#39
	db #ff
.l7b04
	db #02,#3e,#02,#3e,#02,#3e,#01,#3e
	db #01,#41,#08,#3e,#ff
.l7b11
	db #02,#3c,#04,#3c,#04,#3c,#06,#3c
	db #04,#3e,#02,#3e,#02,#3e,#02,#3e
	db #06,#3e,#ff
.l7b24
	db #04,#60,#08,#24,#08,#24,#08,#24
	db #04,#24,#ff
.l7b2f
	db #fe,#04,#04,#18,#fe,#03,#04,#24
	db #fe,#04,#04,#18,#fe,#03,#04,#24
	db #ff
.l7b40
	db #fe,#04,#01,#18,#02,#18,#01,#18
	db #fe,#03,#02,#24,#fe,#04,#02,#18
	db #01,#18
.l7b52
	db #03,#18,#fe,#03,#04,#24,#fe,#04
	db #01,#18,#02,#18,#01,#18,#fe,#03
	db #02,#24,#fe,#04,#02,#18,#01,#18
	db #01,#18,#01,#18,#01,#18,#fe,#03
	db #03,#24,#01,#24,#fe,#04,#01,#18
	db #02,#18,#01,#18,#fe,#03,#02,#24
	db #fe,#04,#02,#18,#01,#18,#02,#18
	db #01,#18,#fe,#03,#04,#24,#fe,#04
	db #01,#18,#02,#18,#01,#18,#fe,#03
	db #02,#24,#fe,#04,#02,#18,#01,#18
	db #03,#18,#fe,#03,#02,#24,#01,#24
	db #01,#24,#ff
.l7bad
	db #fe,#04,#04,#18,#fe,#03,#04,#24
	db #fe,#04,#04,#18,#fd,#05,#fe,#03
	db #02,#24,#01,#24,#01,#24,#ff
.l7bc4
	db #02,#3e,#02,#3e,#02,#3e,#01,#3e
	db #01,#41,#02,#40,#04,#3e,#02,#3c
	db #02,#3e,#02,#3e,#02,#3e,#01,#3e
	db #01,#41,#06,#40,#02,#3c,#02,#3c
	db #02,#3c,#02,#3c,#01,#3c,#01,#40
	db #02,#3e,#04,#3c,#02,#3b,#02,#3b
	db #01,#3b,#01,#3b,#02,#3b,#01,#3b
	db #01,#3e,#02,#3c,#04,#39,#02,#37
	db #ff
.l7c05
	db #10,#39,#10,#3e,#10,#3c,#10,#3e
	db #ff
.l7c0e
	db #fd,#06,#0c,#35,#04,#34,#0a,#32
	db #02,#34,#02,#35,#02,#37,#0c,#35
	db #ff
.l7c1f
	db #04,#32,#10,#30,#ff
.l7c24
	db #10,#32,#10,#2d,#10,#2e,#10,#29
	db #ff
.l7c2d
	db #04,#30,#10,#37,#ff
.l7c32
	db #10,#32,#10,#2d,#10,#2e,#10,#34
	db #ff
.l7c3b
	db #10,#31,#0a,#35,#02,#34,#02,#35
	db #02,#37,#0c,#35,#04,#30,#10,#37
	db #ff
.l7c4c
	db #10,#2e,#10,#32,#10,#32,#10,#34
	db #ff
.l7c55
	db #fe,#00,#02,#1d,#02,#29,#fe,#03
	db #02,#24,#fe,#00,#02,#29,#ff
.l7c64
	db #fe,#00,#02,#18,#02,#24,#fe,#03
	db #02,#24,#fe,#00,#02,#24,#ff
.l7c73
	db #fe,#00,#02,#1a,#02,#26,#fe,#03
	db #02,#24,#fe,#00,#02,#26,#ff
.l7c82
	db #fe,#00,#02,#15,#02,#21,#fe,#03
	db #02,#24,#fe,#00,#02,#21,#ff
.l7c91
	db #fe,#00,#02,#16,#02,#22,#fe,#03
	db #02,#24,#fe,#00,#02,#22,#ff
.l7ca0
	db #fe,#00,#02,#1f,#02,#2b,#fe,#03
	db #02,#24,#fe,#00,#02,#2b,#ff
.l7caf
	db #fe,#00,#02,#18,#02,#24,#fe,#03
	db #02,#24,#fe,#00,#01,#24,#fe,#03
	db #01,#24,#ff
.l7cc2
	dw l7d6b,l7d84,l7d8a
	db #02,#01,#00
	dw l7d76,l7d86,l7d8a
	db #30,#01,#00
	dw l7d60,l7d86,l7d57
	db #00,#00,#00
	dw l7d4e,l7d3d,l7d45
	db #00,#00,#00
	dw l7d34,l7d2f,l7d25
	db #00,#00,#00
	dw l7d7d,l7d86,l7d8a
	db #28,#01,#00
	dw l7d1e,l7d86,l7d8a
	db #28,#01,#00
	dw l7d0a,l7d86,l7d8a
	db #05,#01,#00
.l7d0a
	db #01,#eb,#04,#fc,#30,#00,#eb,#ff
	db #00
	dw l7d0a
.l7d15
	db #55,#03,#5f,#00,#08,#e1,#00
	dw l7d15
.l7d20 equ $ +2
.l7d1e
	db #01,#d0,#ff,#00,#00
	dw l7d20
.l7d25
	db #80,#12,#0a
.l7d2b equ $ +3
.l7d28
	db #08,#06,#03,#00,#ff
	dw l7d2b
.l7d34 equ $ + 5
.l7d31 equ $ + 2
.l7d2f
	db #08,#01,#00,#30,#7d,#01,#e0,#0e
.l7d3d equ $ + 6
.l7d37
	db #f1,#ff,#00,#00,#38,#7d,#01,#08
.l7d45 equ $ + 6
	db #01,#01,#08,#00,#41,#7d,#00,#80
.l7d4e equ $ + 7
	db #13,#0b,#86,#80,#ff,#49,#7d,#01
	db #e0,#11,#f3,#ff,#00,#00,#52,#7d
.l7d5a equ $ + 3
.l7d57
	db #00,#0c,#00,#00,#0c,#00,#ff,#5c
.l7d63 equ $ + 4
.l7d60 equ $ + 1
	db #7d,#01,#d0,#03,#00,#1d,#f9,#ff
.l7d6b equ $ + 4
	db #00,#00,#66,#7d,#01,#ff,#05,#00
.l7d76 equ $ + 7
	db #14,#f4,#ff,#00,#00,#71,#7d,#38
.l7d7d equ $ + 6
	db #03,#38,#fd,#00,#76,#7d,#28,#05
.l7d86 equ $ + 7
.l7d84 equ $ + 5
	db #28,#fb,#00,#7d,#7d,#01,#09,#01
.l7d8a equ $ + 3
.l7d87
	db #00,#86,#7d,#00,#ff
	dw l7d8a
	db #58,#6f,#98,#6f,#d8,#6f,#18,#70
	db #58,#70,#98,#70,#d8,#70,#18,#71
	db #00,#00,#d8,#70,#98,#70,#58,#70
	db #18,#70,#d8,#6f,#98,#6f,#00,#00
	db #d8,#73,#18,#74,#00,#00,#7e,#f7
	db #00,#de,#58,#71,#98,#71,#d8,#71
	db #18,#72,#58,#72,#98,#72,#00,#00
	db #52,#ef,#56,#ef,#5a,#ef,#00,#00
	db #d8,#72,#18,#73,#00,#00,#58,#73
	db #98,#73,#00,#00,#b0,#e7,#9a,#ef
	db #00,#00,#10,#8e,#7d,#10,#ae,#7d
	db #18,#b4,#7d,#10,#ce,#7d,#20,#da
	db #7d,#2c,#c6,#7d,#1c,#d4,#7d,#1c
	db #d4,#7d,#18,#3d,#01,#47,#3d,#ff
	db #a9,#3b,#80,#0b,#7f,#06,#67,#4e
	db #32,#0b,#7f,#02,#27,#4e,#80,#27
	db #4e,#80,#1e,#ff,#1c,#92,#30,#fc
	db #82,#cd,#24,#7e,#c6,#0c,#4f,#7b
	db #cd,#24,#7e,#c6,#04,#c9,#87,#87
	db #87,#47,#87,#80,#c9,#00,#02,#01
	db #04,#06,#03,#05,#0a,#09,#07,#08
	db #0b,#0e,#0f,#0d,#0c,#00,#02,#04
	db #02,#00,#fe,#fc,#fe,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#40,#00
	db #40,#00,#40,#00,#40,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#c0,#00
	db #c0,#00,#c0,#00,#c0,#00,#00,#00
	db #40,#00,#00,#00,#80,#00,#00,#00
	db #40,#00,#00,#00,#80,#00,#00,#00
	db #40,#00,#00,#00,#80,#00,#00,#00
	db #40,#00,#00,#00,#80,#00,#00,#00
	db #40,#00,#00,#00,#80,#00,#c0,#00
	db #00,#01,#c0,#00,#40,#01,#80,#01
	db #c0,#01,#80,#01,#00,#02,#40,#02
	db #80,#02,#40,#02,#c0,#02,#01,#0a
	db #00,#ed,#b0,#c9,#45,#f6,#80,#00
	db #49,#f6,#10,#00,#48,#f6,#08,#00
	db #48,#f6,#20,#00,#44,#f6,#04,#00
	db #43,#f6,#08,#00,#45,#f6,#80,#00
	db #46,#f6,#20,#00,#45,#f6,#04,#00
	db #49,#f6,#01,#00,#49,#f6,#02,#00
	db #49,#f6,#04,#00,#49,#f6,#08,#00
	db #49,#f6,#10,#00,#46,#f6,#20,#00
	db #45,#f6,#04,#00
;
; #7909
; db "Naff Z80 music player v2.0, (C) Dave Spicer 16/2/91 (Must not be used without permission!)"
;
; #4c77
; ld a,#01
; ld (#759c),a	; init main theme
;
; #00d2
; call #759b	; play
;
.music_info
	db "Interchange (1991)(Hi-Tec Software)(Dave Spicer)",0
	db "Naff Z80 music player v2.0, (C) Dave Spicer 16/2/91 (Must not be used without permission!)",0

	read "music_end.asm"
