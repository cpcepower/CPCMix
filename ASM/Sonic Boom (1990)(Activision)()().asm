; Music of Sonic Boom (1990)(Activision)()()
; Ripped by Megachur the 08/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SONICBOO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

.l8005 equ $ + 5
.l8003 equ $ + 3
.l8001 equ $ + 1
.l8000
	db #00,#00,#00,#e8,#82,#00

;
.real_init_music
;
	ld de,l8005
	ld a,(de)
	or a
	jr z,l805d
	ld l,a
	sla l
	ld h,#00
	xor a
	ld (de),a
	ld de,l82ae
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld ix,l815d
	ld a,(hl)
	inc hl
	sla a
	ld (l8052),a
	ld (l8034),a
	inc a
	ld (l8039),a
	ld (l8057),a
	ld a,(hl)
.l8034 equ $ + 2
	ld (ix+#00),a
	inc hl
	ld a,(hl)
.l8039 equ $ + 2
	ld (ix+#01),a
	ld (ix+#06),#ff
	inc hl
	ld a,(hl)
	ld c,a
	inc hl
	ld a,(l8164)
	and c
	or (hl)
	ld (l8164),a
	inc hl
	ld ix,l822b
	ld a,(hl)
.l8052 equ $ + 2
	ld (ix+#00),a
	inc hl
	ld a,(hl)
.l8057 equ $ + 2
	ld (ix+#01),a
	ld a,#01
	ld (l80d3),a
.l805d
	ld hl,l8000
	bit 7,(hl)
	jr nz,l807d
	ld e,(hl)
	set 7,(hl)
	sla e
	ld d,#00
	ld hl,l82e4
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l8003),de
	ld (l80fc),de
	jp l807d
;
.play_music
.l807d
;
	call l80a2
	ld hl,l8001
	ld a,(hl)
	or a
	jr z,l80e8
	dec a
	or a
	jr z,l80e8
	dec a
	or a
	jr z,l80e8
	dec a
	or a
	jr z,l80e8
	dec a
	or a
	jr z,l80e8
	dec a
	or a
	jr z,l80e8
	dec a
	or a
	jr z,l80e8
	ld (hl),a
	ret
.l80a1
	ld (bc),a
.l80a2
	ld hl,l80a1
	dec (hl)
	jr nz,l80c7
	ld (hl),#02
	ld bc,l8165
	ld hl,l822b
	call l80d4
	ld bc,l8166
	ld hl,l822d
	call l80d4
	ld bc,l8167
	ld hl,l822f
	call l80d4
	jr l80d0
.l80c7
	ld a,(l80d3)
	or a
	ret z
	xor a
	ld (l80d3),a
.l80d0
	jp l8147
.l80d3
	nop
.l80d4
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,d
	or e
	ret z
	inc de
	ld a,(de)
	or a
	jr nz,l80e2
	ld d,a
	ld e,a
	ld (de),a
.l80e2
	ld (hl),d
	dec hl
	ld (hl),e
	ld a,(de)
	ld (bc),a
	ret
.l80e8
	ld a,(l8000)
	and #7f
	ret z
	ld hl,(l8003)
	ld a,(hl)
	cp #ff
	jr nz,l8138
	inc hl
	ld a,(hl)
	or a
	jr nz,l8101
.l80fc equ $ + 1
	ld hl,l82e8	; reset music ?
	jp l8140
.l8101
	and #03
	ld c,a
	inc hl
	ld a,c
	or a
	jr z,l8144
	ld de,l815f
	dec a
	jr z,l8112
	ld de,l8161
.l8112
	ld a,(hl)
	push hl
	push de
	sub #0c
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l816b
	add hl,de
	pop de
	ld a,(hl)
	ld (de),a
	inc hl
	inc de
	ld a,(hl)
	ld (de),a
	ld hl,l8231
	ld (l822d),hl
	ld (l822f),hl
	ld a,#01
	ld (l80d3),a
	pop hl
	inc hl
	jr l8140
.l8138
	inc hl
	and #7f
	add #0a
	ld (l8001),a
.l8140
	ld (l8003),hl
	ret
.l8144
	inc hl
	jr l8140
.l8147
	push hl
	ld b,#00
	ld hl,l815d
.l814d
	ld c,(hl)
	inc hl
	ld a,b
	push bc
	call l8290
	pop bc
	inc b
	ld a,b
	cp #10
	jr nz,l814d
	pop hl
	ret
.l8164 equ $ + 7
.l8161 equ $ + 4
.l815f equ $ + 2
.l815d
	db #00,#00,#00,#00,#00,#00,#01,#38
.l8167 equ $ + 2
.l8166 equ $ + 1
.l8165
	db #00,#00,#00,#00,#00,#00
.l816b
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
.l8231 equ $ + 6
.l822f equ $ + 4
.l822d equ $ + 2
.l822b
	db #00,#00,#00,#00,#00,#00,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #02,#01,#00,#0a,#0a,#0b,#0b,#0c
	db #0c,#0d,#0d,#0e,#0e,#0f,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00
.l8290
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
.l82ae
	dw #0000,l82bc,l82c3,l82ca
	dw l82d1,l82d8,l82df
.l82c3 equ $ + 7
.l82bc
	db #00,#2c,#01,#f6,#01,#31,#82,#01
.l82ca equ $ + 6
	db #90,#01,#ed,#02,#71,#82,#02,#0a
.l82d1 equ $ + 5
	db #00,#db,#04,#56,#82,#02,#0a,#00
.l82d8 equ $ + 4
	db #db,#04,#46,#82,#02,#0a,#00,#db
.l82df equ $ + 3
	db #04,#56,#82,#02,#50,#00,#db,#20
.l82e8 equ $ + 4
.l82e4
	db #46,#82,#e8,#82,#ff,#91,#34,#ff
	db #92,#4c,#99,#ff,#91,#37,#99,#ff
	db #91,#37,#99,#ff,#91,#37,#99,#ff
	db #91,#34,#99,#ff,#91,#37,#99,#ff
	db #91,#37,#99,#ff,#91,#37,#99,#ff
	db #91,#34,#99,#ff,#91,#37,#99,#ff
	db #91,#37,#99,#ff,#91,#37,#99,#ff
	db #91,#34,#99,#ff,#91,#37,#99,#ff
	db #91,#37,#ff,#92,#4a,#99,#ff,#91
	db #37,#ff,#92,#4c,#99,#ff,#91,#35
	db #ff,#92,#4d,#99,#ff,#91,#38,#99
	db #ff,#91,#38,#99,#ff,#91,#38,#99
	db #ff,#91,#35,#99,#ff,#91,#38,#99
	db #ff,#91,#38,#ff,#92,#4d,#99,#ff
	db #91,#38,#99,#ff,#91,#35,#ff,#92
	db #4f,#99,#ff,#91,#38,#99,#ff,#91
	db #38,#ff,#92,#4d,#99,#ff,#91,#38
	db #99,#ff,#91,#35,#99,#ff,#91,#38
	db #99,#ff,#91,#38,#ff,#92,#4c,#99
	db #ff,#91,#38,#99,#ff,#91,#34,#99
	db #ff,#91,#37,#99,#ff,#91,#37,#99
	db #ff,#91,#37,#99,#ff,#91,#34,#99
	db #ff,#91,#37,#99,#ff,#91,#37,#99
	db #ff,#91,#37,#99,#ff,#91,#34,#99
	db #ff,#91,#37,#99,#ff,#91,#37,#99
	db #ff,#91,#37,#99,#ff,#91,#34,#99
	db #ff,#91,#37,#99,#ff,#91,#37,#ff
	db #92,#4a,#99,#ff,#91,#37,#ff,#92
	db #4c,#99,#ff,#91,#35,#ff,#92,#4d
	db #99,#ff,#91,#38,#99,#ff,#91,#38
	db #99,#ff,#91,#38,#99,#ff,#91,#35
	db #99,#ff,#91,#38,#99,#ff,#91,#38
	db #ff,#92,#4d,#99,#ff,#91,#38,#99
	db #ff,#91,#35,#ff,#92,#4f,#99,#ff
	db #91,#38,#99,#ff,#91,#38,#ff,#92
	db #4d,#99,#ff,#91,#38,#99,#ff,#91
	db #35,#99,#ff,#91,#38,#99,#ff,#91
	db #38,#ff,#92,#4c,#99,#ff,#91,#38
	db #99,#ff,#91,#34,#99,#ff,#91,#37
	db #99,#ff,#91,#37,#99,#ff,#91,#37
	db #99,#ff,#91,#34,#99,#ff,#91,#37
	db #99,#ff,#91,#37,#99,#ff,#91,#37
	db #99,#ff,#91,#34,#99,#ff,#91,#37
	db #99,#ff,#91,#37,#99,#ff,#91,#37
	db #99,#ff,#91,#34,#99,#ff,#91,#37
	db #99,#ff,#91,#37,#ff,#92,#4a,#99
	db #ff,#91,#37,#ff,#92,#4c,#99,#ff
	db #91,#35,#ff,#92,#4d,#99,#ff,#91
	db #38,#99,#ff,#91,#38,#99,#ff,#91
	db #38,#99,#ff,#91,#35,#99,#ff,#91
	db #38,#99,#ff,#91,#38,#ff,#92,#4d
	db #99,#ff,#91,#38,#99,#ff,#91,#35
	db #ff,#92,#4f,#99,#ff,#91,#38,#99
	db #ff,#91,#38,#ff,#92,#4d,#99,#ff
	db #91,#38,#99,#ff,#91,#35,#99,#ff
	db #91,#38,#99,#ff,#91,#38,#ff,#92
	db #4c,#99,#ff,#91,#38,#99,#ff,#91
	db #34,#99,#ff,#91,#37,#99,#ff,#91
	db #37,#ff,#92,#48,#99,#ff,#91,#37
	db #99,#ff,#91,#34,#99,#ff,#91,#37
	db #99,#ff,#91,#37,#ff,#92,#45,#99
	db #ff,#91,#37,#99,#ff,#91,#34,#99
	db #ff,#91,#37,#99,#ff,#91,#37,#ff
	db #92,#43,#99,#ff,#91,#37,#99,#ff
	db #91,#34,#99,#ff,#91,#37,#99,#ff
	db #91,#37,#99,#ff,#91,#37,#99,#ff
	db #91,#35,#ff,#92,#44,#99,#ff,#91
	db #38,#99,#ff,#91,#38,#99,#ff,#91
	db #38,#99,#ff,#91,#35,#ff,#92,#48
	db #99,#ff,#91,#38,#99,#ff,#91,#38
	db #99,#ff,#91,#38,#99,#ff,#91,#35
	db #ff,#92,#4b,#99,#ff,#91,#38,#99
	db #ff,#91,#38,#99,#ff,#91,#38,#99
	db #ff,#91,#35,#ff,#92,#4f,#99,#ff
	db #91,#38,#99,#ff,#91,#38,#99,#ff
	db #91,#38,#99,#ff,#91,#39,#ff,#92
	db #4f,#99,#ff,#91,#3a,#99,#ff,#91
	db #3a,#99,#ff,#91,#3a,#99,#ff,#91
	db #39,#99,#ff,#91,#3a,#99,#ff,#91
	db #3a,#ff,#92,#51,#99,#ff,#91,#3a
	db #ff,#92,#4f,#99,#ff,#91,#39,#ff
	db #92,#4d,#99,#ff,#91,#3a,#99,#ff
	db #91,#3a,#99,#ff,#91,#3a,#99,#ff
	db #91,#39,#99,#ff,#91,#3a,#99,#ff
	db #91,#3a,#99,#ff,#91,#3a,#99,#ff
	db #91,#39,#ff,#92,#52,#99,#ff,#91
	db #3a,#99,#ff,#91,#3a,#99,#ff,#91
	db #3a,#ff,#92,#51,#99,#ff,#91,#39
	db #99,#ff,#91,#3a,#99,#ff,#91,#3a
	db #ff,#92,#4f,#99,#ff,#91,#3a,#99
	db #ff,#91,#39,#ff,#92,#4d,#99,#ff
	db #91,#3a,#99,#ff,#91,#3a,#99,#ff
	db #91,#3a,#99,#ff,#91,#39,#99,#ff
	db #91,#3a,#99,#ff,#91,#3a,#99,#ff
	db #91,#3a,#99,#ff,#91,#39,#ff,#92
	db #4f,#99,#ff,#91,#3a,#99,#ff,#91
	db #3a,#99,#ff,#91,#3a,#99,#ff,#91
	db #39,#99,#ff,#91,#3a,#99,#ff,#91
	db #3a,#ff,#92,#51,#99,#ff,#91,#3a
	db #ff,#92,#4f,#99,#ff,#91,#39,#ff
	db #92,#4d,#99,#ff,#91,#3a,#99,#ff
	db #91,#3a,#99,#ff,#91,#3a,#99,#ff
	db #91,#39,#99,#ff,#91,#3a,#99,#ff
	db #91,#3a,#99,#ff,#91,#3a,#99,#ff
	db #91,#39,#ff,#92,#52,#99,#ff,#91
	db #3a,#99,#ff,#91,#3a,#99,#ff,#91
	db #3a,#ff,#92,#51,#99,#ff,#91,#39
	db #99,#ff,#91,#3a,#99,#ff,#91,#3a
	db #ff,#92,#4f,#99,#ff,#91,#3a,#99
	db #ff,#91,#39,#ff,#92,#4d,#99,#ff
	db #91,#3a,#99,#ff,#91,#3a,#99,#ff
	db #91,#3a,#99,#ff,#91,#39,#99,#ff
	db #91,#3a,#99,#ff,#91,#3a,#99,#ff
	db #91,#3a,#99,#ff,#91,#34,#ff,#92
	db #4c,#99,#ff,#91,#37,#99,#ff,#91
	db #37,#99,#ff,#91,#37,#99,#ff,#91
	db #34,#99,#ff,#91,#37,#99,#ff,#91
	db #37,#99,#ff,#91,#37,#99,#ff,#91
	db #34,#99,#ff,#91,#37,#99,#ff,#91
	db #37,#99,#ff,#91,#37,#99,#ff,#91
	db #34,#99,#ff,#91,#37,#99,#ff,#91
	db #37,#ff,#92,#4c,#99,#ff,#91,#37
	db #99,#ff,#91,#35,#ff,#92,#4d,#99
	db #ff,#91,#38,#99,#ff,#91,#38,#99
	db #ff,#91,#38,#99,#ff,#91,#35,#99
	db #ff,#91,#38,#99,#ff,#91,#38,#ff
	db #92,#4d,#99,#ff,#91,#38,#99,#ff
	db #91,#35,#ff,#92,#4f,#99,#ff,#91
	db #38,#99,#ff,#91,#38,#ff,#92,#4d
	db #99,#ff,#91,#38,#99,#ff,#91,#35
	db #99,#ff,#91,#38,#99,#ff,#91,#38
	db #ff,#92,#4c,#99,#ff,#91,#38,#99
	db #ff,#91,#34,#99,#ff,#91,#37,#99
	db #ff,#91,#37,#99,#ff,#91,#37,#99
	db #ff,#91,#34,#99,#ff,#91,#37,#99
	db #ff,#91,#37,#99,#ff,#91,#37,#99
	db #ff,#91,#34,#99,#ff,#91,#37,#99
	db #ff,#91,#37,#99,#ff,#91,#37,#99
	db #ff,#91,#34,#99,#ff,#91,#37,#99
	db #ff,#91,#37,#ff,#92,#4c,#99,#ff
	db #91,#37,#99,#ff,#91,#35,#ff,#92
	db #4d,#99,#ff,#91,#38,#99,#ff,#91
	db #38,#99,#ff,#91,#38,#99,#ff,#91
	db #35,#99,#ff,#91,#38,#99,#ff,#91
	db #38,#ff,#92,#4d,#99,#ff,#91,#38
	db #99,#ff,#91,#35,#ff,#92,#4f,#99
	db #ff,#91,#38,#99,#ff,#91,#38,#ff
	db #92,#4d,#99,#ff,#91,#38,#99,#ff
	db #91,#35,#99,#ff,#91,#38,#99,#ff
	db #91,#38,#ff,#92,#4c,#99,#ff,#91
	db #38,#99,#ff,#91,#34,#99,#ff,#91
	db #37,#99,#ff,#91,#37,#ff,#92,#48
	db #99,#ff,#91,#37,#99,#ff,#91,#34
	db #99,#ff,#91,#37,#99,#ff,#91,#37
	db #ff,#92,#45,#99,#ff,#91,#37,#99
	db #ff,#91,#34,#99,#ff,#91,#37,#99
	db #ff,#91,#37,#ff,#92,#43,#99,#ff
	db #91,#37,#99,#ff,#91,#34,#99,#ff
	db #91,#37,#99,#ff,#91,#37,#99,#ff
	db #91,#37,#ff,#92,#43,#99,#ff,#91
	db #35,#ff,#92,#44,#99,#ff,#91,#38
	db #99,#ff,#91,#38,#99,#ff,#91,#38
	db #99,#ff,#91,#35,#99,#ff,#91,#38
	db #ff,#92,#48,#99,#ff,#91,#38,#99
	db #ff,#91,#38,#99,#ff,#91,#35,#99
	db #ff,#91,#38,#ff,#92,#4b,#99,#ff
	db #91,#38,#99,#ff,#91,#38,#99,#ff
	db #91,#35,#99,#ff,#91,#38,#ff,#92
	db #4f,#99,#ff,#91,#38,#99,#ff,#91
	db #38,#99,#ff,#91,#37,#99,#ff,#91
	db #3a,#ff,#92,#4f,#99,#ff,#91,#3a
	db #99,#ff,#91,#3a,#99,#ff,#91,#37
	db #99,#ff,#91,#3a,#99,#ff,#91,#3a
	db #99,#ff,#91,#3a,#ff,#92,#50,#99
	db #ff,#91,#37,#ff,#92,#4f,#99,#ff
	db #91,#3a,#ff,#92,#4d,#99,#ff,#91
	db #3a,#99,#ff,#91,#3a,#99,#ff,#91
	db #37,#99,#ff,#91,#3a,#99,#ff,#91
	db #3a,#99,#ff,#91,#3a,#99,#ff,#91
	db #37,#99,#ff,#91,#3a,#ff,#92,#52
	db #99,#ff,#91,#3a,#99,#ff,#91,#3a
	db #99,#ff,#91,#37,#ff,#92,#50,#99
	db #ff,#91,#3a,#99,#ff,#91,#3a,#99
	db #ff,#91,#3a,#ff,#92,#4f,#99,#ff
	db #91,#37,#99,#ff,#91,#3a,#ff,#92
	db #50,#99,#ff,#91,#3a,#99,#ff,#91
	db #3a,#99,#ff,#91,#37,#ff,#92,#4f
	db #99,#ff,#91,#3a,#99,#ff,#91,#3a
	db #99,#ff,#91,#3a,#ff,#92,#4d,#99
	db #ff,#91,#3a,#ff,#91,#3a,#ff,#92
	db #4d,#ff,#92,#4d,#ff

;
.init_music		; added by Megachur
;
	ld a,#01
	ld (l8000),a
	ld a,#38
	ld (l8164),a
	jp real_init_music
;
.stop_music
;
	xor a
	ld (l8000),a
	jp real_init_music

; #8a4e
; ld a,#01
; ld (#8000),a
; ld a,#38
; ld (#8164),a
; call #8e8f
; xor a
; ld (#8000),a
; call #9a20

;
.music_info
	db "Sonic Boom (1990)(Activision)()",0
	db "",0

	read "music_end.asm"
