; Music of Kwik Snax Dizzy (1990)(Codemasters)(Lyndon Sharp)()
; Ripped by Megachur the 25/03/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "KWIKSNAD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #4553
FIRST_THEME				equ 0
LAST_THEME				equ 5

	read "music_header.asm"

;
.init_music_1
;
	ld hl,l522a
	ld bc,l5254
	ld de,l527e
	ld a,#08
	jp l45a7
;
.init_music_2
;
	ld hl,l4b22
	ld bc,l4b14
	ld de,l4b30
	ld a,#07
	jp l45a7
;
.init_music_3
;
	ld hl,l57be
	ld bc,l57d4
	ld de,l57ea
	ld a,#06
	jp l45a7
;
.init_music_4
;
	ld hl,l4fff
	ld bc,l5009
	ld de,l5013
	ld a,#06
	jp l45a7
;
.init_music_5
;
	ld hl,l5161
	ld bc,l5163
	ld de,l5165
	ld a,#07
	jp l45a7
;
.init_music_6
;
	ld hl,l4dcc
	ld bc,l4de4
	ld de,l4dfc
	ld a,#06
	jp l45a7
.l45a7
	ld (l4783),hl
	ld (l477d),hl
	ld (l4785),bc
	ld (l477f),bc
	ld (l4787),de
	ld (l4781),de
	ld (l47c4),a
	ld a,#01
	ld (l47c5),a
	ld (l47bd),a
	ret
;
.play_music
;
	ld a,(l47c5)
	dec a
	ld (l47c5),a
	jp nz,l4654
	ld a,(l47c4)
	ld (l47c5),a
	ld a,(l47bd)
	dec a
	jp nz,l462e
	ld hl,(l477d)
	ld a,(hl)
	cp #ff
	jp nz,l45ec
	ld hl,(l4783)
.l45ec
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l477d),hl
	ld (l47be),bc
	ld hl,(l477f)
	ld a,(hl)
	cp #ff
	jp nz,l4603
	ld hl,(l4785)
.l4603
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l477f),hl
	ld (l47c0),bc
	ld hl,(l4781)
	ld a,(hl)
	cp #ff
	jp nz,l461a
	ld hl,(l4787)
.l461a
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4781),hl
	ld (l47c2),bc
;	ld a,(#2731)
;	inc a
;	ld (#2731),a
	defs 7,0	; modified by Megachur
	
	ld a,#40
.l462e
	ld (l47bd),a
	ld hl,(l47be)
	ld iy,l4789
	call l4a88
	ld (l47be),hl
	ld hl,(l47c0)
	ld iy,l4793
	call l4a88
	ld (l47c0),hl
	ld hl,(l47c2)
	call l4aef
	ld (l47c2),hl
.l4654
	ld hl,(l478b)
	ld a,(hl)
	cp #ff
	jp z,l46a3
	ld (l47b5),a
	inc hl
	push hl
	ld a,(hl)
	ld (l4791),a
	ld c,a
	ld a,(l4790)
	or a
	jp z,l4670
	ld c,#00
.l4670
	ld a,(l478e)
	add c
	ld l,a
	ld h,#00
	ld bc,l49c6
	add hl,hl
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(l4790)
	or a
	jp z,l469b
	ld a,(l4791)
	bit 7,a
	ld b,#00
	jp z,l4698
	and #7f
	ld c,a
	add hl,bc
	jp l469b
.l4698
	ld c,a
	sbc hl,bc
.l469b
	ld (l47ad),hl
	pop hl
	inc hl
	ld (l478b),hl
.l46a3
	ld hl,(l4795)
	ld a,(hl)
	cp #ff
	jp z,l46f2
	ld (l47b6),a
	inc hl
	push hl
	ld a,(hl)
	ld (l479b),a
	ld c,a
	ld a,(l479a)
	or a
	jp z,l46bf
	ld c,#00
.l46bf
	ld a,(l4798)
	add c
	ld l,a
	ld h,#00
	ld bc,l49c6
	add hl,hl
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(l479a)
	or a
	jp z,l46ea
	ld a,(l479b)
	bit 7,a
	ld b,#00
	jp z,l46e7
	and #7f
	ld c,a
	add hl,bc
	jp l46ea
.l46e7
	ld c,a
	sbc hl,bc
.l46ea
	ld (l47af),hl
	pop hl
	inc hl
	ld (l4795),hl
.l46f2
	ld hl,(l47c6)
	push hl
	ld a,(hl)
	bit 7,a
	jp nz,l471a
	ld c,#fb
	ld b,#20
	ld l,a
	ld a,(l47b4)
	and c
	or b
	ld (l47b4),a
	ld bc,l49c6
	ld h,#00
	add hl,hl
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l47b1),hl
	jp l4730
.l471a
	cp #ff
	jp z,l4749
	and #1f
	ld (l47b3),a
	ld c,#df
	ld b,#04
	ld a,(l47b4)
	and c
	or b
	ld (l47b4),a
.l4730
	pop hl
	inc hl
	ld (l47c6),hl
	ld hl,(l47c8)
	ld a,(hl)
	ld (l47b7),a
	inc hl
	ld (l47c8),hl
	jp l4752
	ld hl,l479d
	jp l4755
.l4749
	pop hl
	ld a,(l47b4)
	or #24
	ld (l47b4),a
.l4752
	ld hl,l47ad
.l4755
	xor a
.l4756
	ex af,af'
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	ex af,af'
	out (c),a
	ex af,af'
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	ld a,(hl)
	out (c),a
	ld b,#f6
	xor a
	out (c),a
	inc hl
	ex af,af'
	inc a
	cp #0f
	jp nz,l4756
	ret
	db #00
.l4781 equ $ + 4
.l477f equ $ + 2
.l477d
	dw l522a,l5254,l527e
.l4789 equ $ + 6
.l4787 equ $ + 4
.l4785 equ $ + 2
.l4783
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4791 equ $ + 6
.l4790 equ $ + 5
.l478e equ $ + 3
.l478b
	db #00,#00,#01,#00,#01,#00,#00,#00
.l479a equ $ + 7
.l4798 equ $ + 5
.l4795 equ $ + 2
.l4793
	db #00,#00,#00,#00,#01,#00,#01,#00
.l479d equ $ + 2
.l479b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#3c,#00,#00,#00,#00,#00,#00
.l47b1 equ $ + 6
.l47af equ $ + 4
.l47ad equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l47b7 equ $ + 4
.l47b6 equ $ + 3
.l47b5 equ $ + 2
.l47b4 equ $ + 1
.l47b3
	db #00,#3c,#00,#00,#00,#00,#00,#00
.l47c2 equ $ + 7
.l47c0 equ $ + 5
.l47be equ $ + 3
.l47bd equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l47c8 equ $ + 5
.l47c6 equ $ + 3
.l47c5 equ $ + 2
.l47c4 equ $ + 1
	db #00,#01,#01,#00,#00,#00,#00
.l47ca
	dw l47ee,l47fe,l480d,l481d
	dw l482c,l483a,l4846,l4853
	dw l485f,l486c,l4878,l4889
	dw l4899,l48a8,l48b8,l48be
	dw l48c3,l48d1
.l47ee
	db #28,#84,#26,#84,#24,#84,#22,#20
	db #1e,#1c,#1a,#18,#16,#14,#00,#ff
.l47fe
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
.l480d equ $ + 7
	db #0d,#0c,#0c,#0c,#0b,#0a,#00,#1e
	db #80,#1c,#80,#1a,#80,#18,#16,#14
.l481d equ $ + 7
	db #12,#10,#0e,#0c,#0a,#00,#ff,#0f
	db #0f,#0f,#0f,#0e,#0e,#0e,#0e,#0d
.l482c equ $ + 6
	db #0d,#0d,#0d,#0c,#0c,#00,#32,#31
	db #30,#2f,#2e,#2d,#2c,#2b,#2a,#29
.l483a equ $ + 4
	db #28,#80,#00,#ff,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#00
.l4846
	db #2e,#2d,#2c,#2b,#2a,#29,#28,#27
.l4853 equ $ + 5
	db #26,#25,#24,#00,#ff,#0f,#0f,#0f
	db #0e,#0e,#0e,#0d,#0d,#0d,#0c,#0c
.l485f equ $ + 1
	db #00,#2a,#29,#28,#27,#26,#25,#24
.l486c equ $ + 6
	db #23,#22,#21,#20,#00,#ff,#0f,#0f
	db #0f,#0e,#0e,#0e,#0d,#0d,#0d,#0c
.l4878 equ $ + 2
	db #0c,#00,#9f,#8c,#9f,#8b,#9f,#8a
	db #9f,#89,#9f,#88,#9f,#87,#87,#9f
.l4889 equ $ + 3
	db #86,#00,#ff,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.l4899 equ $ + 3
	db #02,#01,#00,#8c,#20,#8a,#1c,#80
	db #18,#8c,#14,#8a,#86,#88,#89,#88
.l48a8 equ $ + 2
	db #87,#ff,#0f,#0f,#0f,#0e,#0e,#0d
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l48b8 equ $ + 2
	db #05,#00,#88,#86,#84,#80,#00,#ff
.l48c3 equ $ + 5
.l48be
	db #0f,#0d,#0b,#09,#00,#8e,#8a,#8c
	db #88,#8a,#86,#88,#84,#86,#82,#84
.l48d1 equ $ + 3
	db #80,#00,#ff,#0f,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0b,#0a,#0a,#00
.l48de
	dw l48ee,l4904,l491a,l492a
	dw l4940,l4998,l499c,l49b4
.l48ee
	db #01,#0d,#01,#0e,#81,#0f,#02,#0f
	db #82,#0f,#03,#0f,#83,#0d,#00,#0c
.l4904 equ $ + 6
	db #00,#0b,#00,#08,#00,#ff,#01,#0d
	db #02,#0e,#82,#0d,#01,#0c,#81,#0b
	db #00,#0b,#00,#0a,#00,#09,#00,#08
.l491a equ $ + 4
	db #00,#07,#00,#ff,#00,#0f,#00,#0f
	db #0c,#0f,#18,#0e,#00,#0d,#0c,#0c
.l492a equ $ + 4
	db #18,#08,#00,#ff,#01,#0f,#08,#0f
	db #88,#0f,#08,#0f,#88,#0e,#04,#0d
	db #84,#0c,#04,#0b,#84,#09,#00,#08
.l4940 equ $ + 2
	db #00,#ff,#01,#0f,#82,#0f,#82,#0f
	db #84,#0f,#84,#0f,#86,#0f,#86,#0e
	db #88,#0e,#88,#0e,#8a,#0e,#8a,#0e
	db #8c,#0e,#8c,#0e,#8e,#0e,#8e,#0e
	db #90,#0e,#90,#0e,#92,#0d,#92,#0d
	db #92,#0d,#94,#0d,#94,#0d,#96,#0d
	db #96,#0d,#98,#0d,#98,#0c,#9a,#0c
	db #9a,#0b,#9c,#0b,#9c,#0a,#9e,#0a
	db #9e,#09,#a0,#09,#a0,#08,#a2,#08
	db #a2,#07,#a4,#07,#a4,#06,#a6,#06
	db #a6,#05,#a8,#05,#a8,#04,#aa,#04
.l499c equ $ + 6
.l4998 equ $ + 2
	db #aa,#ff,#00,#00,#00,#ff,#00,#0f
	db #00,#0f,#0c,#0f,#00,#0e,#0c,#0d
	db #00,#0c,#0c,#0a,#00,#08,#18,#06
.l49b4 equ $ + 6
	db #00,#04,#18,#02,#00,#ff,#00,#0f
	db #00,#0f,#04,#0f,#07,#0f,#0c,#0e
	db #07,#0d,#04,#0c,#00,#00,#00,#ff
.l49c6
	db #00,#00
	dw #0e29,#0d5d,#0c9c,#0be7
	dw #0b3c,#0a9b,#0a02,#0973
	dw #08eb,#086b,#07f2,#0780
	dw #0714,#06ae,#064e,#05f4
	dw #059e,#054d,#0501,#04b9
	dw #0475,#0435,#03f9,#03c0
	dw #038a,#0357,#0327,#02fa
	dw #02cf,#02a7,#0281,#025d
	dw #023b,#021b,#01fc,#01e0
	dw #01c5,#01ac,#0194,#017d
	dw #0168,#0153,#0140,#012e
	dw #011d,#010d,#00fe,#00f0
	dw #00e2,#00d6,#00ca,#00be
	dw #00b4,#00aa,#00a0,#0097
	dw #008f,#0087,#007f,#0078
	dw #0071,#006b,#0065,#005f
	dw #005a,#0055,#0050,#004c
	dw #0047,#0043,#0040,#003c
	dw #0039,#0035,#0032,#0030
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010,#000f
.l4a88
	ld a,(hl)
	or a
	jp z,l4b12
	ld a,(iy+#00)
	ld (iy+#02),a
	ld a,(iy+#01)
	ld (iy+#03),a
.l4a99
	ld a,(hl)
	or a
	jp z,l4b12
	push af
	bit 7,a
	jp z,l4ae2
	and #e0
	cp #e0
	jp z,l4ad8
	cp #c0
	jp z,l4ab2
	pop af
	ret
.l4ab2
	pop af
	push hl
	ld b,#00
	and #1f
	add a
	ld c,a
	ld hl,l48de
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (iy+#07),a
	ld (iy+#00),l
	ld (iy+#02),l
	ld (iy+#01),h
	ld (iy+#03),h
	pop hl
	inc hl
	jp l4a99
.l4ad8
	pop af
	and #0f
	ld (l47c4),a
	inc hl
	jp l4a99
.l4ae2
	pop af
	add #06
	ld (iy+#05),a
	ld a,#01
	ld (iy+#09),a
	inc hl
	ret
.l4aef
	ld a,(hl)
	or a
	jp z,l4b12
	push hl
	ld a,(hl)
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	ld bc,l47ca
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l47c6),bc
	ld (l47c8),hl
	pop hl
	inc hl
	ret
.l4b12
	inc hl
	ret
.l4b14
	dw l4b5f,l4b81,l4b3e,l4b81
	dw l4b81,l4bc3
	db #ff,#00
.l4b22
	dw l4c03,l4c45,l4c87,l4cc9
	dw l4cc9,l4d0a
	db #ff,#00
.l4b30
	dw l4d6c,l4d8c,l4d4c,l4d8c
	dw l4d8c,l4d4c
.l4b3e equ $ + 2
	db #ff,#00,#c3,#18,#18,#24,#18,#00
	db #18,#24,#18,#18,#18,#24,#18,#00
	db #18,#24,#18,#1d,#1d,#29,#00,#1d
	db #1d,#29,#1f,#00,#1f,#29,#00,#1d
.l4b5f equ $ + 3
	db #1d,#29,#1d,#e7,#c3,#18,#18,#24
	db #18,#00,#18,#24,#18,#18,#18,#24
	db #18,#00,#18,#24,#18,#18,#18,#24
	db #18,#00,#18,#24,#18,#18,#18,#24
.l4b81 equ $ + 5
	db #18,#00,#18,#24,#18,#c3,#18,#18
	db #24,#18,#00,#18,#24,#18,#18,#18
	db #24,#18,#00,#18,#24,#18,#1d,#1d
	db #29,#00,#1d,#1d,#29,#1f,#00,#1f
	db #29,#00,#1d,#1d,#29,#1d,#c3,#18
	db #18,#24,#18,#00,#18,#24,#18,#18
	db #18,#24,#18,#00,#18,#24,#18,#1d
	db #1d,#29,#00,#1d,#1d,#29,#1f,#00
.l4bc3 equ $ + 7
	db #1f,#29,#00,#1d,#1d,#29,#1d,#18
	db #18,#24,#18,#00,#18,#24,#18,#18
	db #18,#24,#18,#00,#18,#24,#18,#18
	db #18,#24,#18,#00,#18,#24,#18,#18
	db #18,#24,#18,#00,#18,#24,#18,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4c03 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#c7
	db #30,#30,#00,#00,#30,#30,#00,#00
	db #30,#30,#00,#30,#00,#35,#35,#35
	db #30,#30,#00,#00,#30,#30,#00,#00
	db #30,#30,#00,#30,#00,#35,#35,#35
	db #c0,#2b,#00,#2b,#00,#2b,#2f,#30
	db #32,#00,#34,#00,#30,#00,#30,#32
	db #30,#35,#30,#34,#30,#32,#30,#35
	db #32,#00,#32,#32,#32,#00,#30,#2f
.l4c45 equ $ + 1
	db #2d,#c0,#2b,#00,#2b,#00,#2b,#2f
	db #30,#32,#00,#34,#00,#30,#00,#30
	db #32,#30,#35,#30,#34,#30,#32,#30
	db #35,#37,#00,#37,#37,#37,#00,#35
	db #34,#32,#c2,#37,#00,#37,#35,#00
	db #37,#35,#00,#34,#35,#34,#35,#34
	db #30,#30,#00,#39,#37,#39,#37,#00
	db #39,#37,#39,#37,#35,#34,#32,#00
.l4c87 equ $ + 3
	db #30,#2f,#2d,#c2,#37,#00,#37,#35
	db #00,#35,#34,#00,#34,#35,#34,#30
	db #00,#2b,#2e,#00,#30,#00,#32,#00
	db #34,#00,#35,#37,#00,#37,#37,#37
	db #39,#37,#39,#37,#c7,#30,#30,#00
	db #00,#30,#30,#00,#00,#30,#30,#00
	db #30,#00,#35,#35,#35,#30,#30,#00
	db #00,#30,#30,#00,#00,#30,#30,#00
.l4cc9 equ $ + 5
	db #30,#00,#35,#35,#35,#c0,#34,#37
	db #00,#34,#37,#00,#34,#37,#00,#34
	db #37,#34,#39,#37,#35,#34,#35,#35
	db #35,#00,#35,#34,#35,#37,#39,#37
	db #35,#32,#00,#32,#32,#00,#35,#34
	db #35,#34,#35,#34,#30,#35,#00,#34
	db #35,#34,#35,#34,#30,#00,#35,#39
	db #00,#35,#39,#00,#35,#39,#37,#3b
.l4d0a equ $ + 6
	db #00,#37,#3b,#00,#37,#37,#c0,#30
	db #00,#00,#30,#00,#00,#30,#00,#00
	db #30,#00,#00,#30,#30,#30,#00,#c4
	db #30,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4d4c
	db #02,#00,#01,#00,#02,#02,#01,#02
	db #00,#02,#01,#00,#02,#02,#01,#00
	db #02,#00,#01,#00,#02,#02,#01,#02
	db #00,#02,#01,#00,#02,#03,#03,#00
.l4d6c
	db #02,#00,#01,#00,#02,#02,#01,#02
	db #00,#02,#01,#00,#02,#02,#01,#00
	db #02,#00,#01,#00,#02,#02,#01,#02
	db #01,#02,#02,#01,#02,#02,#01,#02
.l4d8c
	db #02,#00,#01,#00,#02,#02,#01,#02
	db #00,#02,#01,#00,#02,#02,#01,#00
	db #02,#00,#01,#00,#02,#02,#01,#02
	db #00,#02,#01,#00,#02,#03,#03,#00
	db #02,#00,#01,#00,#02,#02,#01,#02
	db #00,#02,#01,#00,#02,#02,#01,#00
	db #02,#00,#01,#00,#02,#02,#01,#02
	db #00,#02,#01,#00,#02,#03,#03,#00
.l4dcc
	dw l4e35,l4e35,l4e35,l4e14
	dw l4e35,l4e35,l4e76,l4e35
	dw l4e35,l4e14,l4e76
	db #ff,#00
.l4de4
	dw l4eb7,l4ef9,l4ef9,l4f3b
	dw l4ef9,l4ef9,l4f7d,l4ef9
	dw l4ef9,l4f3b,l4f7d
	db #ff,#00
.l4dfc
	dw l4fbf,l5a90,l5a90,l5a90
	dw l5a90,l5a90,l5a90,l5a90
	dw l5a90,l5a90,l5a90
	db #ff,#00
.l4e14
	db #c0,#1d,#00,#1d,#00,#29,#29,#00
	db #27,#00,#24,#00,#24,#22,#00,#20
	db #00,#1d,#00,#1d,#00,#29,#29,#00
	db #27,#00,#24,#00,#24,#22,#00,#20
.l4e35 equ $ + 1
	db #00,#c0,#18,#00,#18,#00,#24,#24
	db #00,#22,#00,#1f,#00,#1f,#1d,#00
	db #1b,#00,#18,#00,#18,#00,#24,#24
	db #00,#22,#00,#1f,#00,#1f,#1d,#00
	db #1b,#00,#18,#00,#18,#00,#24,#24
	db #00,#22,#00,#1f,#00,#1f,#1d,#00
	db #1b,#00,#18,#00,#18,#00,#24,#24
	db #00,#22,#00,#1f,#00,#1f,#1d,#00
.l4e76 equ $ + 2
	db #1b,#00,#c0,#1f,#00,#1f,#00,#2b
	db #2b,#00,#29,#00,#26,#00,#26,#24
	db #00,#22,#00,#1f,#00,#1f,#00,#2b
	db #2b,#00,#29,#00,#26,#00,#26,#24
	db #00,#22,#00,#18,#00,#18,#00,#24
	db #24,#00,#22,#00,#1f,#00,#1f,#1d
	db #00,#1b,#00,#18,#00,#18,#00,#24
	db #24,#00,#22,#00,#1f,#00,#1f,#1d
.l4eb7 equ $ + 3
	db #00,#1b,#00,#c5,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#c7,#30,#00,#30
	db #30,#30,#30,#00,#00,#30,#30,#30
	db #30,#00,#00,#00,#00,#30,#00,#30
	db #30,#30,#30,#00,#00,#30,#30,#30
.l4ef9 equ $ + 5
	db #30,#00,#00,#00,#00,#c2,#37,#00
	db #37,#00,#00,#00,#00,#00,#35,#37
	db #39,#37,#00,#00,#00,#00,#37,#00
	db #37,#00,#00,#00,#00,#00,#37,#35
	db #34,#35,#00,#34,#30,#00,#c0,#37
	db #35,#00,#37,#35,#00,#37,#35,#00
	db #37,#35,#00,#37,#35,#37,#35,#39
	db #37,#35,#37,#00,#00,#00,#00,#35
.l4f3b equ $ + 7
	db #37,#00,#35,#34,#00,#30,#00,#c2
	db #39,#00,#39,#00,#39,#37,#00,#39
	db #00,#39,#00,#39,#37,#00,#39,#37
	db #39,#00,#39,#00,#39,#39,#00,#39
	db #00,#37,#39,#00,#39,#37,#39,#00
	db #c0,#37,#35,#34,#30,#00,#00,#37
	db #35,#00,#37,#30,#00,#37,#35,#37
	db #30,#35,#00,#35,#00,#35,#34,#35
	db #35,#00,#35,#34,#00,#35,#34,#30
.l4f7d equ $ + 1
	db #30,#c2,#3b,#00,#3b,#39,#3b,#00
	db #3b,#39,#3b,#39,#37,#37,#00,#00
	db #00,#00,#3b,#39,#3b,#39,#3b,#3c
	db #37,#3e,#00,#3e,#3e,#3e,#00,#3e
	db #3e,#00,#c0,#37,#3a,#00,#37,#3a
	db #00,#37,#3a,#00,#37,#3a,#00,#37
	db #3a,#37,#35,#34,#30,#00,#00,#2e
	db #00,#30,#2b,#00,#00,#00,#00,#00
.l4fbf equ $ + 3
	db #00,#00,#00,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#02,#00,#08,#02,#01
	db #00,#08,#02,#02,#00,#08,#02,#01
	db #00,#08,#02,#02,#00,#08,#02,#01
	db #00,#08,#02,#02,#00,#08,#02,#01
	db #01,#01,#01
.l4fff
	dw l501d
	dw l501d,l505e,l505e
	db #ff,#00
.l5009
	dw l509f,l509f,l50e0,l50e0
	db #ff,#00
.l5013
	dw l5121,l5121,l5121,l5121
	db #ff,#00
.l501d
	db #c0,#18,#00,#18,#00,#24,#00,#24
	db #00,#22,#00,#22,#00,#1f,#00,#1f
	db #00,#18,#00,#18,#00,#24,#00,#24
	db #00,#22,#00,#22,#00,#1f,#00,#1f
	db #00,#18,#00,#18,#00,#24,#00,#24
	db #00,#22,#00,#22,#00,#1f,#00,#1f
	db #00,#18,#00,#18,#00,#24,#00,#24
	db #00,#22,#00,#22,#00,#1f,#00,#1f
.l505e equ $ + 1
	db #00,#c0,#13,#00,#13,#00,#1f,#00
	db #1f,#00,#1d,#00,#1d,#00,#1a,#00
	db #1a,#00,#13,#00,#13,#00,#1f,#00
	db #1f,#00,#1d,#00,#1d,#00,#1a,#00
	db #1a,#00,#18,#00,#18,#00,#24,#00
	db #24,#00,#22,#00,#22,#00,#1f,#00
	db #1f,#00,#18,#00,#18,#00,#24,#00
	db #24,#00,#22,#00,#22,#00,#1f,#00
.l509f equ $ + 2
	db #1f,#00,#c6,#30,#00,#30,#00,#00
	db #00,#00,#00,#30,#00,#00,#2e,#00
	db #2b,#2e,#2b,#2e,#00,#2b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#2e,#00,#2e,#00,#00
	db #00,#00,#00,#2e,#00,#00,#2e,#00
	db #2b,#2e,#2b,#2e,#00,#30,#00,#00
	db #00,#00,#00,#30,#34,#37,#30,#34
.l50e0 equ $ + 3
	db #37,#30,#34,#c2,#37,#00,#37,#00
	db #35,#37,#35,#34,#00,#32,#00,#32
	db #00,#32,#32,#00,#37,#00,#37,#00
	db #35,#37,#3b,#37,#3c,#3b,#3c,#3b
	db #00,#00,#00,#00,#37,#00,#00,#37
	db #00,#00,#37,#00,#00,#35,#00,#00
	db #37,#37,#35,#00,#37,#00,#00,#35
	db #00,#00,#34,#00,#00,#32,#00,#00
.l5121 equ $ + 4
	db #2b,#2d,#2f,#30,#05,#00,#02,#00
	db #01,#00,#05,#05,#00,#05,#05,#00
	db #01,#00,#02,#00,#05,#00,#02,#00
	db #01,#00,#05,#05,#00,#05,#05,#00
	db #01,#00,#02,#00,#05,#00,#02,#00
	db #01,#00,#05,#05,#00,#05,#05,#00
	db #01,#00,#02,#00,#05,#00,#02,#00
	db #01,#00,#05,#05,#00,#05,#05,#00
	db #01,#00,#02,#00
.l5165 equ $ + 4
.l5163 equ $ + 2
.l5161
	dw l5167,l51a9,l51ea
.l5167
	db #c3,#e6,#18,#00,#18,#00,#18,#18
	db #18,#1f,#00,#1f,#00,#1f,#00,#1f
	db #1d,#1c,#1d,#00,#1d,#00,#1d,#1d
	db #1d,#1f,#00,#1f,#00,#1f,#00,#1f
	db #1f,#1f,#18,#00,#18,#00,#18,#18
	db #18,#1f,#00,#1f,#00,#1f,#00,#1f
	db #1f,#1f,#1d,#00,#1d,#00,#1c,#1a
	db #18,#00,#18,#18,#00,#18,#00,#00
.l51a9 equ $ + 2
	db #00,#00,#c2,#30,#00,#30,#00,#30
	db #2f,#2d,#2b,#00,#2b,#00,#2b,#00
	db #2b,#29,#28,#29,#00,#28,#00,#26
	db #28,#29,#2b,#00,#2b,#00,#2b,#00
	db #2b,#2f,#2d,#30,#00,#30,#00,#30
	db #2f,#2d,#2b,#00,#2b,#00,#2b,#00
	db #2b,#29,#28,#2b,#00,#2b,#00,#29
	db #28,#26,#24,#00,#24,#00,#24,#00
.l51ea equ $ + 3
	db #00,#00,#00,#01,#00,#08,#02,#07
	db #00,#08,#07,#02,#00,#08,#02,#07
	db #00,#08,#09,#01,#00,#08,#02,#07
	db #00,#08,#07,#02,#00,#08,#02,#07
	db #00,#08,#09,#01,#00,#08,#02,#07
	db #00,#08,#07,#02,#00,#08,#02,#07
	db #00,#08,#09,#01,#00,#08,#02,#07
	db #00,#08,#07,#00,#01,#01,#07,#05
	db #00,#00,#00
.l522a
	dw l52a8,l52ea,l52ea,l532b
	dw l52a8,l536d,l536d,l53ae
	dw l536d,l536d,l53ef,l53ef
	dw l536d,l536d,l53ae,l536d
	dw l536d,l53ef,l5430,l5430
	db #ff,#00
.l5254
	dw l5473,l54b5,l54b5,l54f6
	dw l5538,l557a,l557a,l55bb
	dw l557a,l557a,l55fc,l55fc
	dw l557a,l557a,l55bb,l557a
	dw l557a,l55fc,l563d,l563d
	db #ff,#00
.l527e
	dw l567e,l567e,l567e,l56be
	dw l56fe,l573e,l573e,l577e
	dw l573e,l573e,l577e,l577e
	dw l573e,l573e,l577e,l573e
	dw l573e,l577e,l573e,l573e
	db #ff,#00
.l52a8
	db #e8,#c5,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l52ea equ $ + 2
	db #00,#00,#c1,#34,#35,#34,#00,#00
	db #00,#00,#00,#34,#35,#37,#37,#00
	db #37,#35,#34,#35,#37,#37,#00,#00
	db #00,#35,#34,#35,#37,#37,#37,#00
	db #37,#35,#34,#37,#34,#30,#30,#00
	db #30,#35,#34,#35,#37,#00,#37,#00
	db #37,#35,#34,#37,#30,#35,#30,#34
	db #30,#32,#37,#00,#30,#35,#30,#34
.l532b equ $ + 3
	db #30,#32,#30,#c0,#35,#34,#35,#00
	db #30,#00,#00,#00,#35,#34,#35,#37
	db #00,#37,#35,#34,#34,#35,#34,#35
	db #00,#34,#30,#00,#34,#35,#34,#35
	db #00,#35,#30,#00,#37,#00,#37,#00
	db #37,#37,#00,#37,#00,#37,#00,#37
	db #37,#37,#37,#37,#37,#00,#00,#00
	db #00,#00,#00,#00,#c4,#30,#00,#00
.l536d equ $ + 5
	db #00,#00,#00,#00,#00,#c2,#34,#30
	db #00,#34,#30,#00,#34,#30,#34,#30
	db #00,#34,#30,#00,#35,#30,#37,#32
	db #00,#37,#32,#00,#37,#32,#37,#32
	db #00,#37,#32,#00,#37,#32,#30,#34
	db #35,#35,#00,#35,#34,#32,#30,#34
	db #35,#35,#00,#35,#34,#35,#37,#30
	db #35,#30,#34,#30,#32,#37,#00,#30
.l53ae equ $ + 6
	db #35,#30,#34,#30,#32,#30,#c6,#39
	db #39,#00,#39,#39,#00,#3b,#3c,#3e
	db #3c,#3b,#3c,#39,#00,#39,#3b,#3c
	db #00,#3b,#00,#39,#00,#3b,#39,#00
	db #39,#00,#3b,#37,#00,#37,#00,#39
	db #39,#00,#39,#39,#00,#37,#39,#3e
	db #3c,#00,#3e,#00,#3e,#3c,#3e,#40
	db #3e,#3c,#3e,#3c,#3b,#39,#3b,#37
.l53ef equ $ + 7
	db #39,#35,#39,#34,#37,#32,#35,#c6
	db #30,#00,#30,#00,#34,#35,#37,#30
	db #00,#30,#00,#30,#00,#30,#34,#35
	db #32,#00,#32,#00,#32,#34,#35,#37
	db #00,#37,#00,#37,#00,#37,#37,#00
	db #30,#00,#30,#00,#30,#34,#35,#37
	db #00,#35,#34,#30,#00,#30,#23,#30
	db #32,#34,#30,#32,#00,#32,#32,#30
	db #32,#34,#30,#32,#00,#32,#32,#30
.l5430
	db #c6,#38,#38,#00,#38,#00,#38,#39
	db #38,#39,#3b,#00,#3b,#00,#3b,#3b
	db #3b,#36,#39,#36,#39,#36,#39,#36
	db #39,#36,#32,#32,#32,#c4,#32,#00
	db #00,#00,#c6,#38,#38,#00,#38,#00
	db #38,#39,#3b,#3e,#40,#40,#00,#40
	db #00,#40,#40,#3d,#40,#3d,#40,#3d
	db #40,#3d,#40,#3d,#3b,#00,#39,#00
.l5473 equ $ + 3
	db #38,#36,#34,#c5,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#c3,#18,#18,#00
	db #00,#18,#00,#00,#00,#18,#18,#00
	db #1d,#00,#1d,#1d,#1d,#1f,#1f,#00
	db #00,#1f,#00,#00,#00,#1f,#00,#00
.l54b5 equ $ + 5
	db #1d,#00,#1d,#1d,#1d,#c3,#18,#18
	db #00,#00,#18,#00,#00,#00,#18,#18
	db #00,#1d,#00,#1d,#1d,#1d,#1f,#1f
	db #00,#00,#1f,#00,#00,#00,#1f,#00
	db #00,#1d,#00,#1d,#1d,#1d,#18,#18
	db #00,#00,#18,#00,#00,#00,#18,#18
	db #00,#1d,#00,#1d,#1d,#1d,#1f,#1f
	db #00,#00,#1f,#00,#00,#00,#1f,#00
.l54f6 equ $ + 6
	db #00,#1d,#00,#1d,#1d,#1d,#c3,#1d
	db #1d,#00,#00,#1d,#00,#00,#00,#1d
	db #1d,#00,#1d,#00,#1d,#1d,#1d,#1c
	db #1c,#00,#00,#1c,#00,#00,#1c,#00
	db #00,#1c,#00,#1c,#1c,#1c,#00,#1f
	db #00,#00,#1f,#00,#00,#1f,#00,#00
	db #1f,#00,#1f,#1f,#1f,#1f,#00,#1f
	db #00,#00,#00,#00,#00,#00,#00,#c4
	db #2d,#00,#00,#00,#00,#00,#00,#00
.l5538
	db #e7,#c3,#18,#18,#24,#18,#18,#24
	db #18,#24,#18,#18,#24,#18,#18,#24
	db #18,#24,#18,#18,#24,#18,#18,#24
	db #18,#24,#18,#18,#24,#18,#18,#24
	db #18,#24,#18,#18,#24,#18,#18,#24
	db #18,#24,#18,#18,#24,#18,#18,#24
	db #18,#24,#18,#18,#24,#18,#18,#24
	db #18,#24,#18,#18,#24,#18,#18,#24
.l557a equ $ + 2
	db #18,#24,#c3,#18,#18,#24,#18,#18
	db #24,#18,#24,#18,#18,#24,#18,#18
	db #24,#1d,#29,#1f,#1f,#2b,#1f,#1f
	db #2b,#1f,#2b,#1f,#1f,#2b,#1f,#1f
	db #2b,#1f,#2b,#1d,#1d,#29,#1d,#1d
	db #29,#1d,#29,#1d,#1d,#29,#1d,#1d
	db #29,#1d,#29,#1f,#1f,#2b,#1f,#1f
	db #2b,#1f,#2b,#1f,#1f,#2b,#1f,#1f
.l55bb equ $ + 3
	db #2b,#1f,#2b,#c3,#1d,#1d,#29,#1d
	db #1d,#29,#1d,#29,#1d,#1d,#29,#1d
	db #1d,#29,#1d,#29,#1f,#1f,#2b,#1f
	db #1f,#2b,#1f,#2b,#1f,#1f,#2b,#1f
	db #1f,#2b,#1f,#2b,#1d,#1d,#29,#1d
	db #1d,#29,#1d,#29,#1d,#1d,#29,#1d
	db #1d,#29,#1d,#29,#1f,#1f,#2b,#1f
	db #1f,#2b,#1f,#2b,#1f,#1f,#1d,#29
.l55fc equ $ + 4
	db #1c,#28,#1a,#26,#c3,#1d,#1d,#29
	db #1d,#1d,#29,#1d,#29,#1d,#1d,#29
	db #1d,#1d,#29,#1d,#29,#1f,#1f,#2b
	db #1f,#1f,#2b,#1f,#2b,#1f,#1f,#2b
	db #1f,#1f,#2b,#1f,#2b,#1d,#1d,#29
	db #1d,#1d,#29,#1d,#29,#1d,#1d,#29
	db #1d,#1d,#29,#1d,#29,#1a,#1a,#26
	db #1a,#1a,#26,#1a,#26,#1a,#1a,#26
.l563d equ $ + 5
	db #1a,#1a,#26,#1a,#26,#c3,#1c,#1c
	db #28,#1c,#1c,#28,#1c,#28,#1c,#1c
	db #28,#1c,#1c,#28,#1c,#28,#1a,#1a
	db #26,#1a,#1a,#26,#1a,#26,#1a,#1a
	db #26,#1a,#1a,#26,#1a,#26,#1c,#1c
	db #28,#1c,#1c,#28,#1c,#28,#1c,#1c
	db #28,#1c,#1c,#28,#1c,#28,#21,#21
	db #2d,#21,#21,#2d,#21,#2d,#21,#21
.l567e equ $ + 6
	db #2d,#21,#21,#2c,#2a,#28,#06,#00
	db #00,#00,#06,#06,#00,#00,#06,#00
	db #00,#00,#06,#06,#00,#00,#06,#00
	db #00,#00,#06,#06,#00,#00,#06,#00
	db #00,#00,#06,#06,#00,#00,#06,#00
	db #00,#00,#06,#06,#00,#00,#06,#00
	db #00,#00,#06,#06,#00,#00,#06,#00
	db #00,#00,#06,#06,#00,#00,#06,#00
.l56be equ $ + 6
	db #00,#00,#06,#06,#00,#00,#06,#00
	db #00,#00,#06,#06,#00,#00,#06,#00
	db #00,#00,#06,#06,#00,#00,#06,#00
	db #00,#00,#06,#06,#00,#00,#06,#00
	db #00,#00,#06,#06,#00,#00,#06,#00
	db #00,#00,#06,#06,#00,#00,#06,#00
	db #00,#00,#06,#06,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56fe equ $ + 6
	db #00,#00,#00,#00,#00,#00,#07,#08
	db #08,#08,#07,#08,#08,#08,#07,#08
	db #08,#07,#08,#02,#02,#08,#07,#08
	db #08,#08,#07,#08,#08,#08,#07,#08
	db #08,#07,#08,#02,#02,#08,#02,#08
	db #01,#08,#02,#08,#01,#02,#08,#02
	db #01,#08,#02,#02,#01,#08,#02,#08
	db #01,#08,#02,#08,#01,#02,#08,#02
.l573e equ $ + 6
	db #01,#08,#04,#05,#05,#05,#02,#08
	db #01,#08,#07,#08,#01,#02,#08,#02
	db #01,#08,#02,#02,#01,#08,#02,#08
	db #01,#08,#07,#08,#01,#02,#08,#02
	db #01,#08,#02,#05,#04,#05,#02,#08
	db #01,#08,#07,#08,#01,#02,#08,#02
	db #01,#08,#02,#02,#01,#08,#02,#08
	db #01,#08,#07,#08,#01,#02,#08,#02
.l577e equ $ + 6
	db #01,#08,#02,#04,#09,#00,#02,#08
	db #01,#08,#07,#08,#01,#02,#08,#02
	db #01,#08,#07,#02,#01,#08,#02,#08
	db #01,#08,#07,#08,#01,#02,#08,#02
	db #01,#08,#02,#07,#07,#07,#02,#08
	db #01,#08,#07,#08,#01,#02,#08,#02
	db #01,#08,#07,#02,#01,#08,#02,#08
	db #01,#08,#07,#08,#01,#02,#01,#02
	db #01,#02,#01,#04,#09,#00
.l57be
	dw l5800,l5822,l5822,l58a4
	dw l58a4,l58e5,l58e5,l5822
	dw l5822,l5863
	db #ff,#00
.l57d4
	dw l5926,l5968,l5968,l59ee
	dw l59ee,l5a2f,l5a2f,l5968
	dw l5968,l59a9
	db #ff,#00
.l57ea
	dw l5a70,l5a90,l5a90,l5a90
	dw l5a90,l5a90,l5a90,l5a90
	dw l5a90,l5a90
	db #ff,#00
.l5800
	db #e6,#c3,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5822 equ $ + 2
	db #00,#00,#c0,#18,#00,#18,#00,#24
	db #18,#00,#18,#18,#00,#18,#18,#22
	db #24,#22,#00,#18,#00,#18,#00,#24
	db #18,#00,#18,#18,#00,#18,#18,#22
	db #24,#22,#00,#18,#00,#18,#00,#24
	db #18,#00,#18,#18,#00,#18,#18,#22
	db #24,#22,#00,#18,#00,#18,#00,#24
	db #18,#00,#18,#18,#00,#18,#18,#22
.l5863 equ $ + 3
	db #24,#22,#00,#c0,#1f,#00,#1f,#00
	db #2b,#1f,#00,#1f,#1f,#00,#1f,#1f
	db #29,#2b,#29,#00,#1d,#00,#1d,#00
	db #29,#1d,#00,#1d,#1d,#00,#1d,#1d
	db #27,#29,#27,#00,#18,#00,#18,#00
	db #24,#18,#00,#18,#18,#00,#18,#18
	db #22,#24,#22,#00,#18,#00,#18,#00
	db #24,#18,#00,#18,#18,#00,#18,#18
.l58a4 equ $ + 4
	db #22,#24,#22,#00,#c0,#1f,#00,#1f
	db #00,#2b,#1f,#00,#1f,#1f,#00,#1f
	db #1f,#29,#2b,#29,#00,#1d,#00,#1d
	db #00,#29,#1d,#00,#1d,#1d,#00,#1d
	db #1d,#27,#29,#27,#00,#1b,#00,#1b
	db #00,#27,#1b,#00,#1b,#1b,#00,#1b
	db #1b,#25,#1b,#25,#00,#18,#00,#18
	db #00,#24,#18,#00,#18,#1a,#00,#1a
.l58e5 equ $ + 5
	db #1a,#22,#24,#22,#00,#c0,#1f,#00
	db #1f,#00,#2b,#1f,#00,#1f,#1f,#00
	db #1f,#1f,#29,#2b,#29,#00,#1d,#00
	db #1d,#00,#29,#1d,#00,#1d,#1d,#00
	db #1d,#1d,#27,#29,#27,#00,#18,#00
	db #18,#00,#24,#18,#00,#18,#18,#00
	db #18,#18,#22,#24,#22,#00,#1d,#00
	db #1d,#00,#29,#1d,#00,#1d,#1f,#00
.l5926 equ $ + 6
	db #1f,#1f,#29,#2b,#29,#00,#c5,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5968
	db #c6,#30,#00,#30,#00,#34,#00,#30
	db #34,#00,#30,#34,#00,#34,#30,#35
	db #00,#30,#00,#30,#00,#35,#00,#30
	db #35,#00,#30,#35,#34,#35,#34,#30
	db #00,#30,#00,#30,#00,#34,#00,#30
	db #34,#00,#30,#34,#00,#34,#30,#35
	db #00,#30,#35,#00,#30,#35,#00,#30
	db #34,#00,#30,#37,#35,#34,#32,#30
.l59a9 equ $ + 1
	db #00,#c0,#37,#00,#37,#00,#3a,#00
	db #37,#35,#00,#c4,#37,#00,#00,#00
	db #00,#00,#00,#c0,#35,#00,#35,#00
	db #37,#00,#35,#34,#00,#c4,#30,#00
	db #00,#00,#00,#00,#00,#c0,#34,#00
	db #34,#00,#35,#34,#30,#35,#00,#34
	db #35,#34,#35,#34,#30,#00,#34,#00
	db #34,#00,#35,#34,#35,#37,#00,#35
.l59ee equ $ + 6
	db #37,#35,#34,#32,#30,#00,#c6,#37
	db #00,#37,#37,#3e,#3c,#3a,#3c,#00
	db #3a,#00,#3a,#00,#3a,#37,#3a,#3c
	db #00,#3c,#3a,#3c,#3a,#39,#3a,#00
	db #39,#00,#35,#00,#35,#37,#39,#3a
	db #00,#3a,#3a,#3c,#3a,#3c,#3e,#00
	db #3c,#00,#3a,#00,#39,#37,#00,#3c
	db #00,#3c,#00,#3c,#3c,#3a,#3c,#3e
.l5a2f equ $ + 7
	db #3c,#00,#3a,#00,#39,#00,#39,#c2
	db #43,#41,#00,#43,#3e,#00,#43,#41
	db #00,#43,#3e,#43,#41,#43,#3e,#00
	db #41,#40,#41,#40,#41,#40,#3c,#41
	db #00,#40,#41,#40,#41,#40,#3c,#00
	db #43,#41,#00,#43,#40,#00,#43,#41
	db #00,#43,#3e,#3c,#3b,#39,#37,#00
	db #35,#37,#35,#37,#39,#37,#39,#3b
	db #00,#3c,#00,#3e,#00,#3c,#3b,#00
.l5a70
	db #02,#08,#08,#08,#02,#08,#08,#08
	db #02,#08,#08,#08,#02,#08,#08,#08
	db #02,#08,#08,#08,#02,#08,#08,#08
	db #02,#08,#02,#08,#01,#01,#01,#01
.l5a90
	db #02,#00,#08,#02,#01,#00,#08,#02
	db #02,#00,#08,#02,#01,#00,#08,#02
	db #02,#00,#08,#02,#01,#00,#08,#02
	db #02,#00,#08,#02,#01,#00,#01,#01
	db #02,#00,#08,#02,#01,#00,#08,#02
	db #02,#00,#08,#02,#01,#00,#08,#02
	db #02,#00,#08,#02,#01,#00,#08,#02
	db #02,#00,#08,#02,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00
;
.init_music
;
	or a
	jp z,init_music_1
	dec a
	jp z,init_music_2
	dec a
	jp z,init_music_3
	dec a
	jp z,init_music_4
	dec a
	jp z,init_music_5
	jp init_music_6	
;
.music_info
	db "Kwik Snax Dizzy (1990)(Codemasters)(Lyndon Sharp)",0
	db "",0

	read "music_end.asm"