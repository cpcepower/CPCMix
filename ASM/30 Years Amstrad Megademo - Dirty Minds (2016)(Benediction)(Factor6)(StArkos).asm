; Music of 30 Years Amstrad Megademo - Dirty Minds (2016)(Benediction)(Factor6)(StArkos)
; Ripped by Megachur the 22/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "30YEAMDM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

.l4000
	db #53,#4b,#31,#30,#00,#40,#01,#32
	db #00,#1e,#40,#20,#40,#98,#40,#a4
	db #40,#1a,#40,#1e,#40,#20,#40,#98
	db #40,#04,#c0,#00,#00,#25,#7f,#13
	db #af,#41,#f1,#41,#0f,#42,#51,#42
	db #f1,#41,#0f,#42,#95,#42,#f1,#41
	db #0f,#42,#95,#42,#f1,#41,#0f,#42
	db #95,#42,#13,#43,#0f,#42,#95,#42
	db #13,#43,#0f,#42,#95,#42,#4e,#43
	db #0f,#42,#95,#42,#72,#43,#0f,#42
	db #95,#42,#13,#43,#0f,#42,#95,#42
	db #13,#43,#0f,#42,#95,#42,#92,#43
	db #0f,#42,#95,#42,#92,#43,#0f,#42
	db #95,#42,#13,#44,#0f,#42,#95,#42
	db #37,#44,#0f,#42,#95,#42,#13,#44
	db #0f,#42,#95,#42,#37,#44,#0f,#42
	db #95,#42,#92,#43,#0f,#42,#95,#42
	db #92,#43,#0f,#42,#95,#42,#f1,#41
	db #0f,#42,#95,#42,#f1,#41,#0f,#42
	db #01,#55,#44,#04,#56,#44,#02,#5c
	db #44,#1a,#55,#44,#b6,#40,#c0,#40
	db #d5,#40,#f9,#40,#12,#41,#55,#41
	db #76,#41,#83,#41,#a7,#41,#bd,#40
	db #c0,#40,#ff,#37,#00,#00,#00,#00
	db #bd,#40,#d5,#40,#00,#b7,#00,#3f
	db #21,#0c,#2f,#0c,#0e,#0c,#0a,#04
	db #0a,#09,#07,#04,#00,#bd,#40,#f9
	db #40,#00,#b7,#00,#0f,#2e,#18,#0d
	db #0b,#2a,#18,#0a,#09,#2c,#18,#0b
	db #0a,#28,#18,#07,#07,#26,#18,#09
	db #08,#27,#18,#05,#04,#24,#18,#03
	db #01,#bd,#40,#12,#41,#00,#b7,#00
	db #0e,#2c,#04,#2b,#07,#0b,#2b,#04
	db #2a,#07,#09,#27,#04,#25,#07,#02
	db #00,#00,#bd,#40,#55,#41,#00,#b7
	db #00,#1e,#28,#0e,#2e,#04,#1e,#26
	db #5d,#26,#10,#00,#5c,#26,#20,#00
	db #5b,#26,#30,#00,#5a,#26,#40,#00
	db #59,#26,#50,#00,#58,#26,#60,#00
	db #57,#26,#70,#00,#56,#26,#80,#00
	db #55,#26,#90,#00,#54,#26,#a0,#00
	db #53,#26,#b0,#00,#52,#26,#c0,#00
	db #51,#26,#d0,#00,#00,#bd,#40,#76
	db #41,#00,#b7,#00,#1f,#27,#4f,#50
	db #00,#4e,#b0,#00,#4d,#10,#01,#4c
	db #50,#01,#49,#e0,#01,#47,#40,#02
	db #45,#a0,#02,#43,#50,#03,#81,#41
	db #83,#41,#00,#37,#00,#1f,#23,#80
	db #10,#80,#10,#97,#41,#a7,#41,#00
	db #37,#00,#0f,#2e,#13,#4e,#ff,#ff
	db #4d,#fe,#ff,#4d,#ff,#ff,#0c,#0c
	db #4b,#01,#00,#0b,#0b,#4b,#ff,#ff
	db #4a,#fe,#ff,#4a,#ff,#ff,#09,#ae
	db #41,#af,#41,#00,#37,#00,#0e,#50
	db #80,#01,#39,#39,#51,#39,#39,#51
	db #39,#51,#39,#39,#51,#39,#51,#3f
	db #57,#49,#31,#31,#49,#31,#31,#49
	db #31,#49,#31,#49,#31,#31,#31,#49
	db #31,#4d,#35,#35,#4d,#35,#35,#4d
	db #35,#4d,#35,#35,#4d,#35,#4d,#3f
	db #57,#51,#39,#39,#51,#39,#39,#51
	db #39,#51,#39,#39,#51,#39,#39,#51
	db #39,#68,#81,#02,#d2,#69,#d6,#69
	db #ce,#65,#ce,#69,#ce,#6f,#de,#6f
	db #ce,#73,#ce,#77,#ce,#73,#de,#73
	db #ce,#77,#ce,#7d,#ce,#81,#c2,#80
	db #80,#03,#ce,#81,#ce,#81,#81,#81
	db #ce,#81,#ce,#81,#81,#ce,#81,#87
	db #ce,#79,#ce,#79,#ce,#79,#79,#79
	db #ce,#79,#ce,#79,#79,#ce,#79,#79
	db #79,#7d,#ce,#7d,#7d,#ce,#7d,#7d
	db #ce,#7d,#7d,#ce,#7d,#ce,#7d,#87
	db #87,#81,#ce,#81,#81,#ce,#81,#81
	db #ce,#81,#81,#ce,#81,#81,#81,#81
	db #81,#50,#80,#01,#39,#39,#51,#39
	db #39,#51,#39,#51,#39,#39,#51,#39
	db #51,#3f,#57,#49,#31,#31,#49,#31
	db #31,#49,#31,#49,#31,#31,#49,#31
	db #31,#49,#31,#4d,#35,#35,#4d,#35
	db #35,#4d,#35,#35,#4d,#35,#4d,#35
	db #35,#3f,#57,#51,#39,#39,#51,#39
	db #39,#51,#39,#51,#39,#39,#51,#48
	db #80,#04,#49,#49,#49,#56,#80,#05
	db #50,#80,#06,#51,#69,#48,#80,#04
	db #50,#80,#06,#69,#51,#56,#80,#05
	db #50,#80,#06,#51,#69,#48,#80,#04
	db #68,#80,#06,#57,#6f,#56,#80,#05
	db #48,#80,#06,#49,#61,#48,#80,#04
	db #48,#80,#06,#61,#49,#56,#80,#05
	db #48,#80,#06,#49,#61,#48,#80,#04
	db #48,#80,#06,#61,#49,#56,#80,#05
	db #4c,#80,#06,#4d,#65,#48,#80,#04
	db #4c,#80,#06,#65,#4d,#56,#80,#05
	db #4c,#80,#06,#4d,#65,#48,#80,#04
	db #64,#80,#06,#57,#6f,#56,#80,#05
	db #50,#80,#06,#51,#69,#48,#80,#04
	db #50,#80,#06,#69,#51,#56,#80,#05
	db #50,#80,#06,#51,#69,#48,#80,#04
	db #49,#49,#49,#80,#80,#07,#7d,#81
	db #7d,#81,#87,#81,#87,#8f,#8b,#87
	db #81,#7d,#79,#7d,#87,#79,#7d,#79
	db #7d,#81,#7d,#81,#83,#81,#87,#8b
	db #87,#85,#ce,#7d,#ce,#7d,#81,#85
	db #8b,#7d,#81,#85,#8b,#95,#91,#8b
	db #85,#7d,#81,#85,#8b,#81,#e2,#a3
	db #c6,#04,#c6,#08,#c6,#0c,#80,#80
	db #07,#d2,#81,#d6,#81,#ce,#85,#ce
	db #81,#ce,#87,#d2,#87,#d6,#87,#ce
	db #8b,#ce,#8f,#ce,#8b,#d2,#8b,#d6
	db #8b,#ce,#8f,#ce,#95,#ce,#99,#d2
	db #99,#c2,#98,#80,#07,#d2,#99,#d6
	db #99,#ce,#9d,#ce,#9f,#ce,#91,#d2
	db #91,#da,#99,#d2,#95,#d2,#95,#d6
	db #95,#ce,#99,#ce,#9f,#ce,#a7,#d2
	db #a7,#c2,#68,#81,#08,#70,#09,#70
	db #01,#68,#09,#76,#01,#70,#09,#80
	db #01,#76,#09,#88,#01,#80,#09,#80
	db #01,#88,#09,#76,#01,#80,#09,#70
	db #01,#76,#09,#60,#01,#70,#09,#68
	db #01,#60,#09,#6e,#01,#68,#09,#78
	db #01,#6e,#09,#80,#01,#78,#09,#78
	db #01,#80,#09,#6e,#01,#78,#09,#68
	db #01,#6e,#09,#64,#01,#68,#09,#6c
	db #01,#64,#09,#72,#01,#6c,#09,#7c
	db #01,#72,#09,#84,#01,#7c,#09,#7c
	db #01,#84,#09,#72,#01,#7c,#09,#6c
	db #01,#72,#09,#68,#01,#6c,#09,#70
	db #01,#68,#09,#76,#01,#70,#09,#80
	db #01,#76,#09,#88,#01,#80,#09,#80
	db #01,#88,#09,#76,#01,#80,#09,#70
	db #01,#76,#09,#68,#81,#02,#d2,#69
	db #d6,#69,#ce,#6d,#ce,#69,#ce,#6f
	db #d2,#6f,#d6,#6f,#ce,#73,#ce,#77
	db #ce,#73,#d2,#73,#d6,#73,#ce,#77
	db #ce,#7d,#ce,#81,#d2,#81,#c2,#80
	db #81,#02,#d2,#81,#d6,#81,#ce,#85
	db #ce,#87,#ce,#79,#d2,#79,#da,#81
	db #d2,#7d,#d2,#7d,#d6,#7d,#ce,#81
	db #ce,#87,#ce,#8f,#c2,#ff,#75,#06
	db #0a,#0e,#12,#16,#07,#1a,#0d,#1a
	db #0d,#1a,#0d,#1a,#0d,#1a,#0d,#1a
	db #0d,#1a,#0d,#1e,#ff,#00,#00,#00
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
	jp l4d70
	jp l450d
	jp l4d54
.l450c equ $ + 3
.l450b equ $ + 2
	db #00,#45,#00,#00
;
.play_music
.l450d
;
	xor a
	ld (l450b),a
	ld (l4d3b),a
.l4515 equ $ + 1
	ld a,#00
.l4517 equ $ + 1
	cp #00
	jr z,l4521
	inc a
	ld (l4515),a
	jp l47b0
.l4521
	xor a
	ld (l4515),a
.l4525
	or a
	jp nc,l4607
	ld (l462f),a
	ld (l469a),a
	ld (l4705),a
	ld a,#b7
	ld (l4525),a
.l4538 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l456e
.l453e equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l456b
	ld b,a
	and #1f
	bit 4,a
	jr z,l454f
	or #e0
.l454f
	ld (l463c),a
	rl b
	rl b
	jr nc,l455d
	ld a,(hl)
	ld (l46a7),a
	inc hl
.l455d
	rl b
	jr nc,l4566
	ld a,(hl)
	ld (l4712),a
	inc hl
.l4566
	ld (l453e),hl
	jr l4571
.l456b
	ld (l453e),hl
.l456e
	ld (l4538),a
.l4572 equ $ + 1
.l4571
	ld a,#00
	sub #01
	jr c,l457e
	ld (l4572),a
.l457b equ $ + 1
	ld a,#00
	jr l4599
.l457f equ $ + 1
.l457e
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l458c
	ld (l457f),hl
	jr l4599
.l458c
	ld (l457b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l457f),hl
	ld (l4572),a
	ld a,b
.l4599
	ld (l4770),a
.l459d equ $ + 1
	ld hl,#0000
	ld de,l4635
	ldi
	ldi
	ld de,l46a0
	ldi
	ldi
	ld de,l470b
	ldi
	ldi
	ld (l459d),hl
.l45b8 equ $ + 1
	ld a,#00
	or a
	jr nz,l45ca
.l45bd equ $ + 1
	ld a,#00
	sub #01
	jr c,l45d8
	ld (l45bd),a
.l45c6 equ $ + 1
	ld hl,#0000
	jr l4610
.l45cb equ $ + 1
.l45ca
	ld a,#00
	sub #01
	jr c,l45d8
	ld (l45cb),a
	ld hl,(l45d9)
	jr l45fd
.l45d9 equ $ + 1
.l45d8
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l45f5
	ld (l45bd),a
	xor a
	ld (l45b8),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l45d9),hl
	ex de,hl
	ld (l45c6),hl
	jr l4610
.l45f5
	ld (l45cb),a
	ld a,#01
	ld (l45b8),a
.l45fd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l45d9),hl
	ex de,hl
	jr l4610
.l4608 equ $ + 1
.l4607
	ld a,#00
	sub #01
	jr nc,l462b
.l460e equ $ + 1
	ld hl,#0000
.l4610
	ld a,(hl)
	inc hl
	srl a
	jr c,l4628
	srl a
	jr c,l461f
	ld (l4517),a
	jr l4627
.l461f
	ld (l450b),a
.l4623 equ $ + 1
	ld a,#01
	ld (l450c),a
.l4627
	xor a
.l4628
	ld (l460e),hl
.l462b
	ld (l4608),a
.l462f equ $ + 1
	ld a,#00
	sub #01
	jr nc,l4696
.l4635 equ $ + 1
	ld hl,#0000
.l4638 equ $ + 1
	ld bc,#0100
.l463c equ $ + 2
.l463b equ $ + 1
	ld de,#0000
.l463f equ $ + 2
	ld lx,#00
	call l48ad
	ld a,lx
	ld (l463f),a
	ld (l47ba),hl
	exx
	ld (l4635),hl
	ld a,c
	ld (l4638),a
	ld (l47b4),a
	xor a
	or hy
	jr nz,l4694
	ld (l47d7),a
	ld d,a
	ld a,e
	ld (l463b),a
	ld l,d
	ld h,l
	ld (l47b7),hl
.l4669 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l47e8
	ldi
	ldi
	ld de,l47e0
	ldi
	ldi
	ld de,l47d9
	ldi
	ld de,l47ea
	ldi
	ld a,(hl)
	inc hl
	ld (l47c9),hl
	ld hl,l4d3b
	or (hl)
	ld (hl),a
.l4694
	ld a,ly
.l4696
	ld (l462f),a
.l469a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l4701
.l46a0 equ $ + 1
	ld hl,#0000
.l46a3 equ $ + 1
	ld bc,#0200
.l46a7 equ $ + 2
.l46a6 equ $ + 1
	ld de,#0000
.l46aa equ $ + 2
	ld lx,#00
	call l48ad
	ld a,lx
	ld (l46aa),a
	ld (l480b),hl
	exx
	ld (l46a0),hl
	ld a,c
	ld (l46a3),a
	ld (l4805),a
	xor a
	or hy
	jr nz,l46ff
	ld (l4828),a
	ld d,a
	ld a,e
	ld (l46a6),a
	ld l,d
	ld h,l
	ld (l4808),hl
.l46d4 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l4839
	ldi
	ldi
	ld de,l4831
	ldi
	ldi
	ld de,l482a
	ldi
	ld de,l483b
	ldi
	ld a,(hl)
	inc hl
	ld (l481a),hl
	ld hl,l4d3b
	or (hl)
	ld (hl),a
.l46ff
	ld a,ly
.l4701
	ld (l469a),a
.l4705 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l476c
.l470b equ $ + 1
	ld hl,#0000
.l470e equ $ + 1
	ld bc,#0300
.l4712 equ $ + 2
.l4711 equ $ + 1
	ld de,#0000
.l4715 equ $ + 2
	ld lx,#00
	call l48ad
	ld a,lx
	ld (l4715),a
	ld (l485c),hl
	exx
	ld (l470b),hl
	ld a,c
	ld (l470e),a
	ld (l4856),a
	xor a
	or hy
	jr nz,l476a
	ld (l4879),a
	ld d,a
	ld a,e
	ld (l4711),a
	ld l,d
	ld h,l
	ld (l4859),hl
.l473f equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l488a
	ldi
	ldi
	ld de,l4882
	ldi
	ldi
	ld de,l487b
	ldi
	ld de,l488c
	ldi
	ld a,(hl)
	inc hl
	ld (l486b),hl
	ld hl,l4d3b
	or (hl)
	ld (hl),a
.l476a
	ld a,ly
.l476c
	ld (l4705),a
.l4770 equ $ + 1
	ld a,#00
	sub #01
	jr c,l477a
	ld (l4770),a
	jr l47b0
.l477a
	ld a,#37
	ld (l4525),a
	ld hl,(l459d)
.l4783 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l47b0
	ld (l4538),a
	ld (l4572),a
	ld (l4608),a
.l4794 equ $ + 1
	ld hl,#0000
	ld (l453e),hl
.l479a equ $ + 1
	ld hl,#0000
	ld (l457f),hl
.l47a0 equ $ + 1
	ld hl,#0000
	ld (l459d),hl
.l47a6 equ $ + 1
	ld hl,#0000
	ld (l45d9),hl
.l47ac equ $ + 1
	ld a,#00
	ld (l45b8),a
.l47b0
	ld hl,l4d3b
.l47b4 equ $ + 1
	ld d,#00
	exx
.l47b7 equ $ + 1
	ld hl,#0000
.l47ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l47b7),hl
	ld (l49e8),hl
	ld a,(l463f)
	ld lx,a
.l47c9 equ $ + 1
	ld hl,#0000
	ld iy,l4bd6
	ld a,(l47d7)
	call l4942
	ex de,hl
.l47d7 equ $ + 1
	ld a,#00
.l47d9 equ $ + 1
	cp #00
	jr z,l47df
	inc a
	jr l47fc
.l47e0 equ $ + 1
.l47df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l47f8
.l47e8 equ $ + 1
	ld de,#0000
.l47ea
	or a
	jr c,l47f8
.l47ee equ $ + 1
	ld hl,#0000
	ld (l47e0),hl
	dec a
	ld (l47d9),a
	inc a
.l47f8
	ld (l47c9),de
.l47fc
	ld (l47d7),a
	ld a,hx
	ld (l48a9),a
.l4805 equ $ + 1
	ld d,#00
	exx
.l4808 equ $ + 1
	ld hl,#0000
.l480b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4808),hl
	ld (l49e8),hl
	ld a,(l46aa)
	ld lx,a
.l481a equ $ + 1
	ld hl,#0000
	ld iy,l4c27
	ld a,(l4828)
	call l4942
	ex de,hl
.l4828 equ $ + 1
	ld a,#00
.l482a equ $ + 1
	cp #00
	jr z,l4830
	inc a
	jr l484d
.l4831 equ $ + 1
.l4830
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l4849
.l4839 equ $ + 1
	ld de,#0000
.l483b
	or a
	jr c,l4849
.l483f equ $ + 1
	ld hl,#0000
	ld (l4831),hl
	dec a
	ld (l482a),a
	inc a
.l4849
	ld (l481a),de
.l484d
	ld (l4828),a
	ld a,hx
	ld (l48a6),a
.l4856 equ $ + 1
	ld d,#00
	exx
.l4859 equ $ + 1
	ld hl,#0000
.l485c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4859),hl
	ld (l49e8),hl
	ld a,(l4715)
	ld lx,a
.l486b equ $ + 1
	ld hl,#0000
	ld iy,l4c78
	ld a,(l4879)
	call l4942
	ex de,hl
.l4879 equ $ + 1
	ld a,#00
.l487b equ $ + 1
	cp #00
	jr z,l4881
	inc a
	jr l489e
.l4882 equ $ + 1
.l4881
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l489a
.l488a equ $ + 1
	ld de,#0000
.l488c
	or a
	jr c,l489a
.l4890 equ $ + 1
	ld hl,#0000
	ld (l4882),hl
	dec a
	ld (l487b),a
	inc a
.l489a
	ld (l486b),de
.l489e
	ld (l4879),a
	ld a,hx
	sla a
.l48a6 equ $ + 1
	or #00
	rla
.l48a9 equ $ + 1
	or #00
	jp l4bcb
.l48ad
	ld a,(hl)
	inc hl
	srl a
	jr c,l48e6
	cp #60
	jr nc,l48ee
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l48c6
	and #0f
	ld c,a
.l48c6
	rl b
	jr nc,l48cc
	ld e,(hl)
	inc hl
.l48cc
	rl b
	jr nc,l48de
.l48d0
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l48da
	dec h
.l48da
	ld ly,#00
	ret
.l48de
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l48e6
	ld hy,#00
	add d
	ld lx,a
	jr l48de
.l48ee
	ld hy,#01
	sub #60
	jr z,l490f
	dec a
	jr z,l4926
	dec a
	jr z,l4918
	dec a
	jr z,l48d0
	dec a
	jr z,l4922
	dec a
	jr z,l4937
	dec a
	jr z,l492e
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l490f
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l4918
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l4922
	ld c,(hl)
	inc hl
	jr l48d0
.l4926
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l492e
	ld a,(hl)
	inc hl
	ld (l450b),a
	ld a,b
	ld (l450c),a
.l4937
	ld iy,#0100
	ld e,#00
	exx
	ld hl,#0000
	ret
.l4942
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l49f8
	bit 4,e
	jr z,l49aa
	ld a,(hl)
	bit 6,a
	jr z,l4977
	ld d,#08
	inc hl
	and #1f
	jr z,l495e
	ld (l4cc9),a
	res 3,d
.l495e
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l4967
	xor a
.l4967
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l4977
	ld (l4cc9),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l4993
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l498c
	xor a
.l498c
	ld (iy+#36),a
	ld hx,d
	jr l49bd
.l4993
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l499c
	xor a
.l499c
	ld (iy+#36),a
.l499f
	ld hx,d
	ret
.l49a2
	ld (iy+#36),#00
	ld d,#09
	jr l499f
.l49aa
	ld d,#08
	ld a,e
	and #0f
	jr z,l49a2
	exx
	sub d
	exx
	jr nc,l498c
	xor a
	ld (iy+#36),a
	ld hx,#08
.l49bd
	bit 5,e
	jr z,l49c5
	ld a,(hl)
	inc hl
	jr l49c6
.l49c5
	xor a
.l49c6
	bit 6,e
	jr z,l49d0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l49d3
.l49d0
	ld de,#0000
.l49d3
	add lx
	cp #60
	jr c,l49db
	ld a,#60
.l49db
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l4b0b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l49e8 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l49f8
	or a
	jr nz,l4a02
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l4a02
	ld a,e
	or #08
	and #09
	ld d,a
	ld (iy+#36),#10
	ld b,(hl)
	inc hl
	ld a,b
	and #03
	add a
	add #08
	ld (l4d34),a
	bit 3,e
	jr z,l4a24
	ld a,(hl)
	inc hl
	ld (l4cc9),a
	res 3,d
	jr l4a24
.l4a24
	ld hx,d
	xor a
	bit 7,b
	jr z,l4a36
	bit 6,b
	jr z,l4a31
	ld a,(hl)
	inc hl
.l4a31
	ld (l4ae5),a
	ld a,#01
.l4a36
	ld (l4a7e),a
	ld a,b
	rra
	and #0e
	ld (l4a8f),a
	bit 4,e
	jp nz,l4af0
	bit 1,e
	jr z,l4a4d
	ld a,(hl)
	inc hl
	jr l4a4e
.l4a4d
	xor a
.l4a4e
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l4a5b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l4a5e
.l4a5b
	ld de,#0000
.l4a5e
	add lx
	cp #60
	jr c,l4a66
	ld a,#60
.l4a66
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l4b0b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l49e8)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l4a7e equ $ + 1
	ld a,#00
	or a
	jr nz,l4a8e
	ex af,af'
	bit 5,a
	jr nz,l4af9
.l4a87
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l4a8f equ $ + 1
.l4a8e
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l4a99),a
	ld a,c
.l4a99 equ $ + 1
	jr l4a9a
.l4a9a
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	ld c,a
	jr nc,l4ab3
	inc bc
.l4ab3
	ld a,c
	ld (l4cfe),a
	ld a,b
	ld (l4d19),a
	ld a,(l4a7e)
	or a
	jr z,l4aee
	ld a,(l4a8f)
	ld e,a
	srl a
	add e
	ld (l4acd),a
	ld a,b
.l4acd equ $ + 1
	jr l4ace
.l4ace
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	ld b,a
.l4ae5 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l4aee
	pop hl
	ret
.l4af0
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l4a87
.l4af9
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l4cfe),a
	inc hl
	ld a,(hl)
	ld (l4d19),a
	inc hl
	ret
.l4b0b
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
.l4bcb
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l4bd6 equ $ + 1
	ld a,#00
.l4bd8 equ $ + 1
	cp #00
	jr z,l4bf0
	ld d,#00
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4bd8),a
	exx
.l4bf0
	ld a,#00
.l4bf3 equ $ + 1
	cp #00
	jr z,l4c0b
	ld d,#01
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4bf3),a
	exx
.l4c0c equ $ + 1
.l4c0b
	ld a,#00
.l4c0e equ $ + 1
	cp #00
	jr z,l4c26
	ld d,#08
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4c0e),a
	exx
.l4c27 equ $ + 1
.l4c26
	ld a,#00
.l4c29 equ $ + 1
	cp #00
	jr z,l4c41
	ld d,#02
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4c29),a
	exx
.l4c41
	ld a,#00
.l4c44 equ $ + 1
	cp #00
	jr z,l4c5c
	ld d,#03
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4c44),a
	exx
.l4c5d equ $ + 1
.l4c5c
	ld a,#00
.l4c5f equ $ + 1
	cp #00
	jr z,l4c77
	ld d,#09
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4c5f),a
	exx
.l4c78 equ $ + 1
.l4c77
	ld a,#00
.l4c7a equ $ + 1
	cp #00
	jr z,l4c92
	ld d,#04
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4c7a),a
	exx
.l4c92
	ld a,#00
.l4c95 equ $ + 1
	cp #00
	jr z,l4cad
	ld d,#05
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4c95),a
	exx
.l4cae equ $ + 1
.l4cad
	ld a,#00
.l4cb0 equ $ + 1
	cp #00
	jr z,l4cc8
	ld d,#0a
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4cb0),a
	exx
.l4cc9 equ $ + 1
.l4cc8
	ld a,#00
.l4ccb equ $ + 1
	cp #00
	jr z,l4ce3
	ld d,#06
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4ccb),a
	exx
.l4ce3
	ld a,h
.l4ce5 equ $ + 1
	cp #c0
	jr z,l4cfd
	ld d,#07
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4ce5),a
	exx
.l4cfe equ $ + 1
.l4cfd
	ld a,#00
.l4d00 equ $ + 1
	cp #00
	jr z,l4d18
	ld d,#0b
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4d00),a
	exx
.l4d19 equ $ + 1
.l4d18
	ld a,#00
.l4d1b equ $ + 1
	cp #00
	jr z,l4d33
	ld d,#0c
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4d1b),a
	exx
.l4d34 equ $ + 1
.l4d33
	ld a,#00
.l4d36 equ $ + 1
	cp #ff
	jr nz,l4d3f
	ld h,a
.l4d3b equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l4d3f
	ld d,#0d
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l4d36),a
	ret
;
.stop_music
.l4d54
;
	xor a
	ld (l4c0c),a
	ld (l4c5d),a
	ld (l4cae),a
	dec a
	ld (l4c0e),a
	ld (l4c5f),a
	ld (l4cb0),a
	ld (l4ce5),a
	ld a,#3f
	jp l4bcb
;
.real_init_music
.l4d70
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l4623),a
	ld de,#0003
	add hl,de
	ld de,l457f
	ldi
	ldi
	ld de,l459d
	ldi
	ldi
	ld de,l45d9
	ldi
	ldi
	ld de,l4669
	ldi
	ldi
	ld de,l4794
	ldi
	ldi
	ld de,l479a
	ldi
	ldi
	ld de,l47a0
	ldi
	ldi
	ld de,l47a6
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l4517),a
	ld (l4515),a
	ld (l453e),hl
	ld hl,(l45d9)
	ld (l4783),hl
	ld a,(hl)
	and #01
	ld (l45b8),a
	ld hl,(l47a6)
	ld a,(hl)
	and #01
	ld (l47ac),a
	ld hl,(l4669)
	ld (l46d4),hl
	ld (l473f),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l47c9),hl
	ld (l481a),hl
	ld (l486b),hl
	ld (l47e8),hl
	ld (l4839),hl
	ld (l488a),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l47ee),de
	ld (l483f),de
	ld (l4890),de
	ld (l47e0),de
	ld (l4831),de
	ld (l4882),de
	ld a,#37
	ld (l4525),a
	ld hl,l4e2c
.l4e1c
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l4e23
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l4e23
	jr l4e1c
.l4e2c
	jr l4e2e
.l4e2e
	dw #4bd6,#4bf1,#4c27,#4c42
	dw #4c78,#4c93,#4cc9,#4c0c
	dw #4c5d,#4cae,#4cfe,#4d19
	dw #4d34,#4538,#4572,#45bd
	dw #45cb,#4608,#47d7,#4828
	dw #4879,#4638,#46a3,#470e
	dw #ff11,#4bd8,#4bf3,#4c29
	dw #4c44,#4c7a,#4c95,#4ccb
	dw #4ce5,#4c0e,#4c5f,#4cb0
	dw #4d00,#4d1b,#4d36,#47d9
	dw #482a,#487b,#b703,#47ea
	dw #483b,#488c,#0000
;
; #2117
; ld de,#4000
; call #4500
;
.init_music		; added by Megachur
;
	ld de,l4000
	jp real_init_music
;
.music_info
	db "30 Years Amstrad Megademo - Dirty Minds (2016)(Benediction)(Factor6)",0
	db "StArkos",0

	read "music_end.asm"
