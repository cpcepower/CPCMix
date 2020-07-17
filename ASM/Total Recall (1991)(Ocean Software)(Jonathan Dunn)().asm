; Music of Total Recall (1991)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 16/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TOTALREC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #3ee5
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

	call lb65d
	ld a,(l3f62)
	and a
	jr z,l3f18
	ld hl,(lb7cc)
	ld (l3f63),hl
	ld hl,(lb7d0)
	ld (l3f67),hl
	ld a,(lb7d2)
	ld (l3f69),a
	ld a,(l3f6a)
	or #2d
	ld hl,lb7d3
	and (hl)
	ld (l3f6a),a
	ld a,(lb7d4)
	ld (l3f6b),a
	ld a,(lb7d6)
	ld (l3f6d),a
.l3f18
	ld a,(l3f62)
	or a
	ret z
	ld hl,l3f6e
	ld d,#0b
.l3f22
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
	jp p,l3f22
	ret
.l3f43
	ld a,(l3f5e)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l3f61
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l3f61 equ $ + 3
.l3f5e
	db #ff,#00,#36,#68
.l3f69 equ $ + 7
.l3f67 equ $ + 5
.l3f65 equ $ + 3
.l3f63 equ $ + 1
.l3f62
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3f6e equ $ + 4
.l3f6d equ $ + 3
.l3f6c equ $ + 2
.l3f6b equ $ + 1
.l3f6a
	db #3f,#0f,#0f,#0f,#00,#00
.l3f70
	ld de,#0d00
.l3f73
	call l3f7d
	dec d
	jp p,l3f73
	ld de,#073f
.l3f7d
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
	xor a
	ld (l3f62),a
	ld (l3f6b),a
	ld (l3f6c),a
	ld (l3f6d),a
	ret

	db #0b,#1f,#1f,#04,#14,#14,#04,#0b
	db #0b,#0b,#0b,#00,#00,#00,#00,#0b
	db #0b,#0b,#0b,#10,#14,#a4,#50,#af
	db #8f,#af,#0f,#00,#10,#44,#00,#1f
	db #0f,#5f,#0b,#40,#00,#00,#00,#0b
	db #0b,#0b,#0b,#30,#b0,#10,#e4,#0b
	db #0b,#0b,#0b,#00,#00,#00,#00,#0b
	db #0b,#0b,#0b,#00,#00,#00,#00,#0b
	db #0b,#0b,#0b,#00,#00,#00,#00,#0f
	db #0b,#0b,#0f,#30,#04,#30,#00,#0b
	db #0b,#0b,#0b,#00,#14,#d4,#00,#0b
	db #0b,#0b,#5b
;
.init_music	;l4000
;
	ld hl,l8602
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
	ld hl,l47e1
	add hl,bc
	ld a,(hl)
	ld (l40fc),a
	inc hl
	ld ix,l405a
	ld c,#27
	ld a,#03
.l4021
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#20),#00
	ld (ix+#21),#00
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#03),e
	ld (ix+#04),d
	ld (ix+#05),e
	ld (ix+#06),d
	ld (ix+#25),#01
	add ix,bc
	dec a
	jr nz,l4021
	ld (l43ae),a
	inc a
	ld (l40cf),a
	ld (l8602),a
	ret
.l405a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l4081
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l40a8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.l40cf
	db #00
;
.play_music	;l40b0
;
	call lb65d
	ld a,(l8602)
	and a
	jp z,l412c
.l40db equ $ + 1
	ld a,#00
	ld (l4128),a
	ld hl,l40cf
	dec (hl)
	jr nz,l4100
	ld b,(hl)
	ld ix,l405a
	call l42a6
	ld ix,l4081
	call l42a6
	ld ix,l40a8
	call l42a6
.l40fc equ $ + 1
	ld a,#01
	ld (l40cf),a
.l4100
	ld ix,l405a
	call l437b
	ld (l3f63),hl
	ld (l3f6b),a
	ld ix,l4081
	call l437b
	ld (l3f65),hl
	ld (l3f6c),a
	ld ix,l40a8
	call l437b
	ld (l3f67),hl
	ld (l3f6d),a
.l4128 equ $ + 1
	ld a,#00
	ld (l3f69),a
.l412c
	ld a,(l3f62)
	and a
	jr z,l415c
	ld hl,(lb7cc)
	ld (l3f63),hl
	ld hl,(lb7d0)
	ld (l3f67),hl
	ld a,(lb7d2)
	ld (l3f69),a
	ld a,(l3f6a)
	or #2d
	ld hl,lb7d3
	and (hl)
	ld (l3f6a),a
	ld a,(lb7d4)
	ld (l3f6b),a
.l4158 equ $ + 2
	ld a,(lb7d6)
	ld (l3f6d),a
.l415c
	ld a,(l8602)
	ld hl,l3f62
	or (hl)
	ret z
	ld hl,l3f6e
	ld d,#0b
.l4169
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
	jp p,l4169
	ret
.l418a
	xor a
	ld (l8602),a
.l418e
	ld de,#0d00
.l4191
	call l419b
	dec d
	jp p,l4191
	ld de,#073f
.l419b
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
	xor a
	ld (l3f62),a
	ld (l3f6b),a
	ld (l3f6c),a
	ld (l3f6d),a
	ret
;
.stop_music
;
	xor a
	ld (l8602),a
	ld (l3f62),a
	call l418e
	xor a
	ld (l3f6b),a
	ld (l3f6c),a
	ld (l3f6d),a
	ret
	db #a2
	db #8a
	db #8e
	db #93
	db #51
	db #80
	db #7b
	db #11
	db #6a
	db #62
	db #26
	db #10
	db #38
	db #8f
	db #06
	db #9c
	db #a1
	db #a6
	db #aa
	db #b0
	pop hl
	jp l418a	;#04e4
	jp l4754
	ld a,(ix+#26)
	ld c,a
	and #07
	ld hl,l4457
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l42bb
	ld a,(ix+#26)
	ld c,a
	and #38
	ld hl,l4457
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l42bb
	ld hl,l4457
	ld a,(ix+#26)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l42bb
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l42bb
	ld a,(de)
	inc de
	ld (l43ae),a
	jr l42bb
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l42bb
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l42bb
	ld (ix+#1d),b
	jr l42bb
	ld (ix+#1d),#40
	jr l42bb
	ld (ix+#1d),#c0
	jr l42bb
	set 1,(ix+#00)
	jr l42bb
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l42f9
	res 5,(ix+#00)
	jr l42f9
	ld (ix+#1f),#ff
	jr l42bb
	ld (ix+#1f),b
	jr l42bb
	ld a,#01
	ld (ix+#24),a
	jr l42bb
	ld a,(de)
	inc de
	ld (ix+#11),a
	ld (ix+#24),#00
	jr l42bb
.l42a6
	dec (ix+#10)
	jr nz,l4320
	ld (ix+#00),b
	ld a,(ix+#25)
	or a
	jp nz,l4754
	ld e,(ix+#01)
	ld d,(ix+#02)
.l42bb
	ld a,(de)
	inc de
	and a
	jp m,l4331
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l42d0
	ld (l40db),a
.l42d0
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
.l42f9
	ld a,(ix+#24)
	or a
	jr z,l4303
	ld a,(de)
	inc de
	jr l4306
.l4303
	ld a,(ix+#11)
.l4306
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l431f
	ld a,(l3f62)
	and a
	jr nz,l431f
	ld (ix+#1f),#ff
.l431f
	ret
.l4320
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l432d
	inc (ix+#12)
	ret
.l432d
	dec (ix+#12)
	ret
.l4331
	cp #b0
	jr c,l4373
	add #20
	jr c,l435b
	add #30
	jr nc,l4353
	ld c,a
	ld hl,l454c
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l42bb
.l4353
	add #09
	ld (l40fc),a
	jp l42bb
.l435b
	ld hl,l4654
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
	jp l42bb
.l4373
	ld hl,l4158
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l437b
	ld c,(ix+#00)
	bit 5,c
	jr z,l43ad
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l43a7
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l43a7
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l43a7
	ld a,(ix+#18)
	ld (ix+#13),a
.l43ae equ $ + 1
.l43ad
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l43c7
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l43c7
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l448c
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l4428
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l43f1
	bit 0,c
	jr nz,l440f
.l43f1
	bit 5,l
	jr nz,l4401
	sub (ix+#1b)
	jr nc,l440c
	set 5,(ix+#1d)
	sub a
	jr l440c
.l4401
	add (ix+#1b)
	cp b
	jr c,l440c
	res 5,(ix+#1d)
	ld a,b
.l440c
	ld (ix+#1c),a
.l440f
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l441a
	dec d
.l441a
	add #a0
	jr c,l4426
.l441e
	sla e
	rl d
	add #18
	jr nc,l441e
.l4426
	add hl,de
	ex de,hl
.l4428
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l4453
	ld b,(ix+#0e)
	djnz l4450
	ld c,(ix+#0d)
	bit 7,c
	jr z,l443f
	dec b
.l443f
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l4453
.l4450
	ld (ix+#0e),b
.l4453
	cpl
	and #03
.l4457 equ $ + 1
	ld a,#00
	jr nz,l4464
	ld a,(l40db)
	xor #08
	ld (l4128),a
	ld a,#07
.l4464
	ld hl,l3f6a
	xor (hl)
	and (ix+#26)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l4487
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#26)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l4128),a
.l4487
	ex de,hl
	ld a,(ix+#13)
	ret
.l448c
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
.l454c
	db #07,#07,#09,#7c,#b3,#b9,#bc,#80
	db #00,#03,#87,#0c,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#80,#0f
	db #0f,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#0f,#0f,#03
	db #03,#03,#03,#03,#0c,#0c,#00,#00
	db #00,#00,#00,#0e,#0e,#02,#02,#02
	db #02,#02,#0f,#0f,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #0c,#0c,#00,#00,#00,#00,#80,#00
	db #04,#00,#03,#00,#02,#80,#00,#00
	db #07,#87,#0c,#0c,#00,#00,#00,#00
	db #00,#0e,#0e,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#0e
	db #0e,#02,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#0c,#0c,#00
	db #00,#00,#00,#00,#0e,#0e,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#82
.l4654
	dw l466f,l4679,l4686,l4693
	dw l469f,l46c0,l46d1,l46fa
	dw l4704,l4711,l471e,l473a
	dw l474b
.l466f equ $ + 1
	db #01,#06,#0c,#0b,#0a,#09,#08,#06
	db #05,#87
.l4679 equ $ + 1
	db #00,#05,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#87
.l4686 equ $ + 1
	db #00
	db #0a,#0b,#0c,#0b,#0a,#09,#09,#08
	db #07,#06,#05,#87
.l4693 equ $ + 1
	db #00,#0c,#0b,#0a,#09,#07,#06,#05
	db #04,#03,#02,#87
.l469f equ $ + 1
	db #08,#09,#09,#09,#09,#08,#08,#08
	db #08,#07,#07,#07,#07,#06,#06,#06
	db #06,#05,#05,#05,#04,#04,#04,#03
	db #03,#03,#02,#02,#02,#01,#01,#01
	db #87
.l46c0 equ $ + 1
	db #0b,#06,#05,#05,#04,#04,#04,#03
	db #03,#03,#02,#02,#02,#01,#01,#01
	db #87
.l46d1 equ $ + 1
	db #01,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#08,#07,#07,#07,#06,#06,#06
	db #05,#05,#05,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #87
.l46fa equ $ + 1
	db #02,#08,#0c,#0b,#0a,#08,#07,#06
	db #04,#87
.l4704 equ $ + 1
	db #00,#0e,#0c,#0a,#08,#06,#05,#04
	db #03,#02,#01,#00,#87
.l4711 equ $ + 1
	db #00,#0a,#09,#08,#07,#06,#05,#04
	db #03,#02,#01,#00,#87
.l471e equ $ + 1
	db #0c,#00,#01,#02,#03,#04,#05,#06
	db #07,#08,#09,#0a,#0b,#0c,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
	db #03,#02,#00,#87
.l473a equ $ + 1
	db #00,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #87
.l474b equ $ + 1
	db #00,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #06,#87
.l4754
	xor a
	ld (ix+#25),a
	ld l,(ix+#03)
	ld h,(ix+#04)
.l475e
	ld a,(ix+#21)
	or a
	jp z,l477a
	dec a
	ld (ix+#21),a
	jp z,l477e
	ld l,(ix+#22)
	ld h,(ix+#23)
	ld (ix+#03),l
	ld (ix+#04),h
	jr l477e
.l477a
	ld (ix+#20),#00
.l477e
	ld a,(hl)
	inc hl
	or a
	jp m,l47a1
	ld (ix+#03),l
	ld (ix+#04),h
	add a
	ld e,a
	ld d,#00
	ld hl,l47fd
	add hl,de
	ld a,(hl)
	ld e,a
	inc hl
	ld d,(hl)
	ld (ix+#01),e
	ld (ix+#02),d
	ld b,#00
	jp l42bb
.l47a1
	cp #fd
	jr z,l47d8
	cp #ff
	jr z,l47d0
	cp #fe
	jr z,l47c2
	cp #fc
	jr z,l47bb
.l47b1
	ld a,r
	out (#fe),a
	ld b,#64
.l47b7
	djnz l47b7
	jr l47b1
.l47bb
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l477e
.l47c2
	ld a,(hl)
	inc hl
	ld (ix+#21),a
	ld (ix+#22),l
	ld (ix+#23),h
	jp l477e
.l47d0
	ld a,(hl)
	inc hl
	ld (ix+#20),a
	jp l477e
.l47d8
	ld l,(ix+#05)
	ld h,(ix+#06)
	jp l475e
.l47e1
	db #01
	dw l483f,l487d,l48a3
	db #01
	dw l4be9,l4bca,l4c0f
	db #01
	dw l4d7c,l4d84,l4d8a
	db #01
	dw l4d92,l4d98,l4d99
.l47fd
	dw l48d7,l48db,l491e,l49a2
	dw l49e3,l4a65,l4a17,l4a1f
	dw l4a4b,l4a58,l4a72,l4a9c
	dw l4ab5,l4af0,l4afc,l4b18
	dw l4b35,l4b52,l4b6f,l4b76
	dw l4b85,l4b8c,l4bac,l4c19
	dw l4c56,l4c5a,l4c6e,l4cf1
	dw l4d2b,l4d56,l4d9f,l4dbb
	dw l4dc3
.l4848 equ $ + 9
.l483f
	db #08,#04,#ff,#07,#04,#04,#ff,#07
	db #04,#fe,#04,#06,#ff,#02,#fe,#04
	db #06,#ff,#00,#fe,#04,#0c,#ff,#02
	db #fe,#04,#0c,#06,#fe,#02,#ff,#02
	db #0f,#ff,#02,#10,#ff,#02,#fe,#01
	db #11,#fe,#02,#ff,#fe,#0f,#ff,#fe
	db #10,#ff,#fe,#fe,#01,#11,#ff,#00
	db #06,#ff,#00,#fc
	dw l4848
.l487f equ $ + 2
.l487d
	db #09,#01,#02,#ff,#02,#02,#02,#ff
	db #02,#02,#0d,#0e,#0e,#10,#fe,#01
	db #11,#fe,#02,#ff,#fc,#0e,#ff,#fc
	db #10,#ff,#fc,#fe,#01,#11,#ff,#00
	db #0d,#ff,#00,#fc
	dw l487f
.l48a6 equ $ + 3
.l48a3
	db #05,#03,#03,#ff,#f4,#07,#ff,#f6
	db #0a,#ff,#f4,#07,#ff,#f6,#0a,#ff
	db #07,#06,#fe,#02,#ff,#07,#0f,#ff
	db #07,#10,#ff,#07,#fe,#01,#11,#fe
	db #02,#ff,#03,#0f,#ff,#03,#10,#ff
	db #03,#fe,#01,#11,#ff,#07,#06,#ff
	db #00,#fc
	dw l48a6
.l48d7
	db #92,#80,#70,#87
.l48db
	db #92,#91,#b2,#e2,#11,#46,#0c,#0e
	db #0f,#0e,#0c,#0e,#11,#46,#11,#0e
	db #13,#0e,#14,#0e,#0f,#46,#0c,#0e
	db #0f,#0e,#0c,#0e,#0f,#46,#0c,#15
	db #0f,#15,#11,#46,#0c,#0e,#0f,#0e
	db #0c,#0e,#11,#46,#11,#0e,#13,#0e
	db #14,#0e,#0f,#46,#0c,#0e,#0f,#0e
	db #0c,#0e,#0f,#38,#14,#15,#13,#15
	db #0f,#0e,#87
.l491e
	db #e1,#88,#01,#00,#83,#90,#b2,#11
	db #0e,#11,#15,#11,#15,#11,#15,#0c
	db #15,#0f,#07,#11,#07,#11,#0e,#11
	db #15,#11,#15,#11,#0e,#0c,#07,#0f
	db #07,#11,#07,#0a,#07,#14,#07,#13
	db #07,#0f,#0e,#0f,#15,#0f,#15,#0f
	db #15,#0a,#15,#0c,#07,#0f,#07,#0f
	db #0e,#0f,#15,#0f,#15,#0f,#0e,#0c
	db #07,#0f,#07,#11,#07,#14,#15,#11
	db #0e,#11,#15,#11,#15,#11,#15,#0c
	db #15,#0f,#07,#11,#07,#11,#0e,#11
	db #15,#11,#15,#11,#0e,#0c,#07,#0f
	db #07,#11,#07,#0a,#07,#14,#07,#13
	db #07,#0f,#0e,#0f,#15,#0f,#15,#0f
	db #15,#0a,#15,#0c,#07,#0f,#07,#0f
	db #0e,#0f,#15,#0f,#15,#14,#15,#13
	db #15,#0f,#0e,#87
.l49a2
	db #e2,#8a,#88,#01,#00,#83,#3c,#a8
	db #3f,#15,#3e,#15,#3a,#0e,#e3,#81
	db #38,#0e,#38,#07,#35,#07,#37,#07
	db #38,#0e,#38,#07,#38,#0e,#38,#07
	db #35,#07,#37,#07,#38,#0e,#38,#07
	db #38,#0e,#38,#07,#35,#07,#37,#07
	db #38,#0e,#38,#07,#38,#0e,#38,#07
	db #35,#07,#37,#07,#38,#0e,#38,#07
	db #87
.l49e3
	db #e3,#81,#b2,#38,#0e,#38,#07,#35
	db #07,#37,#07,#38,#0e,#38,#07,#38
	db #0e,#38,#07,#35,#07,#37,#07,#38
	db #0e,#38,#07,#38,#0e,#38,#07,#35
	db #07,#37,#07,#38,#0e,#38,#07,#38
	db #0e,#38,#07,#35,#07,#37,#07,#38
	db #0e,#38,#07,#87
.l4a17
	db #e4,#90,#8a,#b3,#81,#29,#e0,#87
.l4a1f
	db #e0,#88,#00,#00,#83,#8a,#b2,#3c
	db #38,#35,#70,#3c,#15,#35,#15,#3c
	db #0e,#3a,#a8,#33,#15,#37,#15,#3a
	db #0e,#3c,#38,#35,#70,#3c,#15,#35
	db #15,#3c,#0e,#3a,#a8,#3f,#15,#3e
	db #15,#3a,#0e,#87
.l4a4b
	db #ea,#8a,#88,#01,#01,#83,#b0,#92
	db #0c,#ff,#8f,#32,#87
.l4a58
	db #ea,#8a,#88,#01,#02,#83,#b0,#92
	db #0c,#ff,#8f,#32,#87
.l4a65
	db #ea,#8a,#88,#01,#03,#83,#b0,#92
	db #0c,#ff,#8f,#32,#87
.l4a72
	db #90,#8a,#e7,#3c,#38,#35,#70,#3c
	db #15,#35,#15,#3c,#0e,#3a,#a8,#33
	db #15,#37,#15,#3a,#0e,#3c,#38,#35
	db #70,#3c,#15,#35,#15,#3c,#0e,#3a
	db #a8,#3f,#15,#3e,#15,#3a,#0c,#3a
	db #02,#87
.l4a9c
	db #3c,#38,#35,#70,#3c,#15,#35,#15
	db #3c,#0e,#3a,#a8,#33,#15,#37,#15
	db #3a,#0c,#3a,#02,#80,#e0,#80,#e0
	db #87
.l4ab5
	db #e3,#b2,#38,#0e,#38,#07,#35,#07
	db #b1,#29,#0e,#b2,#38,#07,#35,#07
	db #38,#0e,#38,#07,#35,#07,#b1,#29
	db #0e,#b2,#38,#07,#35,#07,#38,#0e
	db #38,#07,#35,#07,#b1,#29,#0e,#b2
	db #38,#07,#35,#07,#38,#0e,#38,#07
	db #35,#07,#b1,#29,#0e,#b2,#38,#07
	db #35,#07,#87
.l4af0
	db #11,#b6,#93,#07,#11,#13,#14,#18
	db #1b,#1f,#92,#87
.l4afc
	db #24,#07,#24,#07,#24,#07,#24,#07
	db #80,#0e,#24,#07,#24,#07,#24,#07
	db #24,#07,#80,#0e,#93,#07,#0c,#0e
	db #13,#18,#92,#87
.l4b18
	db #24,#07,#24,#07,#24,#07,#24,#07
	db #80,#0e,#24,#07,#24,#07,#24,#07
	db #24,#07,#80,#0e,#24,#07,#24,#07
	db #24,#07,#80,#07,#87
.l4b35
	db #24,#07,#24,#07,#24,#07,#24,#07
	db #80,#0e,#24,#07,#24,#07,#24,#07
	db #24,#07,#80,#0e,#24,#07,#24,#07
	db #24,#07,#80,#07,#87
.l4b52
	db #24,#07,#24,#07,#24,#07,#24,#07
	db #80,#0e,#24,#07,#24,#07,#24,#07
	db #24,#07,#80,#0e,#24,#07,#24,#07
	db #24,#07,#80,#07,#87
.l4b6f
	db #37,#e0,#80,#e0,#80,#e0,#87
.l4b76
	db #32,#e0,#80,#e0,#80,#9a,#0f,#0e
	db #14,#15,#13,#15,#0f,#0e,#87
.l4b85
	db #30,#e0,#80,#e0,#80,#e0,#87
.l4b8c
	db #92,#8a,#88,#00,#00,#83,#b0,#e3
	db #90,#24,#07,#24,#07,#24,#07,#24
	db #15,#24,#07,#24,#07,#24,#07,#24
	db #15,#24,#07,#24,#07,#24,#0e,#87
.l4bac
	db #92,#8a,#88,#01,#01,#83,#b0,#24
	db #07,#24,#07,#24,#07,#24,#15,#24
	db #07,#24,#07,#24,#07,#24,#15,#24
	db #07,#24,#07,#24,#0e,#8e
.l4bcd equ $ + 3
.l4bca
	db #fe,#02,#17,#fe,#02,#17,#fe,#02
	db #ff,#05,#17,#fe,#02,#ff,#05,#1b
	db #fe,#02,#ff,#0c,#1b,#ff,#f4,#1c
	db #1d,#ff,#fc,#1d,#fc
	dw l4bcd
.l4bee equ $ + 5
.l4be9
	db #fe,#02,#ff,#03,#17,#fe,#02,#ff
	db #03,#17,#fe,#02,#ff,#08,#17,#ff
	db #00,#fe,#02,#1b,#fe,#02,#ff,#05
	db #1b,#ff,#00,#fe,#02,#1b,#fe,#02
	db #ff,#05,#1b,#fc
	dw l4bee
.l4c13 equ $ + 4
.l4c0f
	db #fe,#03,#18,#19,#fe,#06,#1a,#fc
	dw l4c13
.l4c19
	db #b0,#8a,#93,#08,#b2,#90,#e8,#24
	db #e9,#24,#24,#e8,#24,#e9,#24,#24
	db #e8,#24,#e9,#24,#e8,#24,#e9,#24
	db #24,#e8,#24,#e9,#24,#24,#e8,#24
	db #e9,#24,#e8,#24,#e9,#24,#24,#e8
	db #24,#e9,#24,#24,#e8,#24,#e9,#24
	db #e8,#24,#e9,#24,#24,#e8,#24,#24
	db #e9,#24,#24,#24,#87
.l4c56
	db #92,#80,#80,#87
.l4c5a
	db #80,#50,#93,#08,#8a,#e2,#b2,#91
	db #88,#00,#00,#83,#11,#13,#16,#13
	db #16,#1a,#92,#87
.l4c6e
	db #8a,#18,#10,#18,#08,#18,#08,#8c
	db #b4,#27,#08,#8a,#b2,#18,#08,#16
	db #10,#18,#18,#18,#08,#8c,#b4,#27
	db #08,#8a,#b2,#18,#08,#11,#10,#13
	db #08,#16,#08,#1a,#08,#18,#08,#8c
	db #b4,#27,#08,#8a,#b2,#18,#08,#16
	db #10,#18,#18,#18,#08,#8c,#b4,#27
	db #08,#8a,#b2,#18,#08,#1d,#08,#1f
	db #08,#18,#10,#18,#08,#18,#08,#8c
	db #b4,#27,#08,#8a,#b2,#18,#08,#16
	db #10,#18,#18,#18,#08,#8c,#b4,#27
	db #08,#8a,#b2,#18,#08,#11,#10,#13
	db #08,#16,#08,#1a,#08,#18,#08,#8c
	db #b4,#27,#08,#8a,#b2,#18,#08,#16
	db #10,#18,#18,#8c,#b4,#27,#08,#b4
	db #27,#08,#8a,#b2,#18,#08,#16,#08
	db #11,#08,#87
.l4cf1
	db #93,#08,#b5,#e8,#24,#e9,#24,#24
	db #e8,#24,#e9,#24,#24,#e8,#24,#e9
	db #24,#e8,#24,#e9,#24,#24,#e8,#24
	db #e9,#24,#24,#e8,#24,#e9,#24,#e8
	db #24,#e9,#24,#24,#e8,#24,#e9,#24
	db #24,#e8,#24,#e9,#24,#e8,#24,#e9
	db #24,#24,#e8,#24,#24,#e9,#24,#24
	db #24,#87
.l4d2b
	db #e1,#b0,#88,#00,#00,#83,#93,#10
	db #80,#3c,#3c,#3e,#3e,#3f,#3f,#41
	db #41,#92,#42,#03,#43,#1d,#43,#50
	db #93,#10,#80,#48,#48,#46,#46,#43
	db #43,#41,#41,#92,#43,#20,#42,#03
	db #43,#4d,#87
.l4d56
	db #93,#08,#b2,#81,#e3,#80,#80,#48
	db #48,#80,#48,#48,#80,#3c,#80,#80
	db #3c,#80,#80,#3c,#3c,#80,#80,#48
	db #48,#80,#48,#48,#80,#3c,#3c,#80
	db #3c,#80,#80,#3c,#3c,#87
.l4d7c
	db #ff,#05,#15,#fe,#03,#ff,#05,#16
.l4d84
	db #15,#fe,#03,#ff,#00,#16
.l4d8a
	db #ff,#ff,#15,#fe,#03,#ff,#fd,#16
.l4d92
	db #ff,#f4,#1e,#ff,#f4,#1f
.l4d98
	db #20
.l4d99
	db #ff,#fb,#1e,#ff,#fb,#1f
.l4d9f
	db #e3,#8a,#b0,#92,#88,#00,#00,#83
	db #90,#35,#0e,#37,#07,#38,#07,#35
	db #0e,#33,#07,#35,#0e,#35,#0e,#33
	db #07,#35,#1c,#87
.l4dbb
	db #e5,#8a,#b6,#92,#81,#33,#e0,#8e
.l4dc3
	db #e2,#8a,#b0,#92,#88,#00,#00,#83
	db #b2,#14,#0e,#13,#0e,#90,#11,#e0
	db #80,#cb,#8f,#e0,#8f,#e0,#8f,#e0
	db #8e
;	,#ec,#ee,#ed,#ef,#d0,#d2,#d1
;	db #d3,#d8,#da,#d9,#db,#d4,#d6,#d5
;	db #d7,#dc,#de,#dd,#df,#f0,#f2,#f1
;	db #f3,#f8,#fa,#f9,#fb,#f4,#f6,#f5
;	db #f7,#fc,#fe,#fd,#ff,#e0,#80,#c4
;	db #80,#cf,#8b,#8b,#8b,#c4,#80,#00
;	db #00,#ff,#ab,#ff,#ab,#f4,#a0,#f4
;	db #a0,#ff,#ab,#0b,#ab,#f4,#a0,#f4
;	db #a0,#0b,#0b,#0b,#0b,#00,#00,#00
;	db #00,#0b,#0b,#cf,#8b,#80,#80,#c4
;	db #80,#8b,#8b,#cf,#8b,#44,#00,#00
;	db #00,#eb,#eb,#0b,#0b,#00,#00,#00
;	db #00,#0b,#0b,#0b,#0b,#34,#34,#00
;	db #00,#0b,#0b,#0b,#0b,#00,#00,#00
;	db #00,#0b,#0b,#0b,#0b,#00,#00,#00
;	db #00,#0b,#0b,#0b,#0b,#00,#00,#00
;	db #00,#0b,#0b,#0b,#0b,#40,#14,#40
;	db #00,#4b,#4b,#4b,#0b,#84,#80,#c4
;	db #80,#4f,#4b,#cf,#8b,#84,#80,#00
;	db #00,#0b,#ab,#0b,#0b,#00,#00,#00
;	db #00,#0b,#0b,#4b,#4b,#c0,#c0,#c0
;	db #c0,#cb,#cb,#cb,#cb,#c0,#c0,#c0
;	db #c0,#cb,#db,#cb,#cb,#e0,#c0,#c0
;	db #d0,#6b,#db,#9f,#db,#d0,#c0,#d0
;	db #d0,#cb,#9b,#cf,#cb,#c0,#c0,#c0
;	db #c0,#cb,#cb,#db,#7b,#d0,#d0,#60
;	db #c0,#cb,#cb,#cb,#cb,#c0,#c0,#c0
;	db #c0,#6b,#eb,#cb,#6b,#e0,#e0,#60
;	db #60,#6b,#eb,#cb,#cb,#00,#14,#64
;	db #d0,#9b,#6f,#9b,#2b,#00,#00,#50
;	db #94,#ef,#3f,#3b,#bb,#e0,#80,#00
;	db #b4,#db,#fb,#9b,#7b,#90,#c4,#70
;	db #64,#9f,#9f,#3b,#0b,#14,#64,#30
;	db #c4,#cf,#9b,#3f,#eb,#d0,#90,#70
;	db #c0,#db,#db,#6f,#ef,#94,#20,#00
;	db #10,#bb,#3b,#cf,#6f,#64,#64,#90
;	db #b0,#cf,#bb,#2b,#0b
	
	;org #8602
.l8602
.music_end
	db #00,#12,#34,#56,#00,#00,#00,#14
	db #14,#04,#1e,#14,#04,#00,#01,#00
	db #00,#00,#0b,#00,#00,#00,#00,#00
	db #00,#10,#1c,#a6,#53,#a6,#84,#a6
	db #04,#00,#18,#44,#00,#17,#06,#57
	db #01,#42,#01,#00,#00,#00,#00,#00
	db #00,#30,#b0,#10,#e7,#00,#05,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#04,#00,#01
	db #0e,#30,#06,#30,#00,#00,#00,#00
	db #00,#00,#15,#de,#00,#00,#00,#00
	db #50,#00,#50,#00,#50,#00,#50,#50
	db #59,#59,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l8676
	db #00
.l8677
	db #00
.l8678
	db #00
.l8679
	db #00
.l867a
	db #00,#00
.l867c
	db #00
.l867d
	db #00
.l867e
	db #00,#00
.l8680
	db #00,#00
.l8682
	db #00
.l8683
	db #00
.l8684
	db #00
.l8685
	db #00
.l8686
	db #00
.l8687
	db #00,#00,#00,#02,#02,#02,#01,#ff
	db #ff,#ff,#02,#00,#02,#00,#02,#00
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#03

	;org #b600
	push af
	push bc
	push de
	push hl
	push ix
	ld hl,l3f62
	ld (hl),#00
	ld hl,lb6fb
	add a
	add l
	ld l,a
	jr nc,lb614
	inc h
.lb614
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l8676
.lb61c
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb61c
	ld a,(l8677)
	ld (l8687),a
	ld hl,(l8678)
	ld (lb7cc),hl
	ld de,(l867a)
	ld (lb7d0),de
	ld a,l
	ld (lb7d2),a
	ld a,(l867d)
	ld (lb7d3),a
	ld a,(l867c)
	ld e,a
	ld d,#0c
	call l3f7d
	ld a,(l8686)
	ld e,a
	ld d,#0d
	call l3f7d
	ld hl,l3f62
	inc (hl)
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.lb65d
	call l3f43
	ld a,(l3f62)
	and a
	ret z
	ld a,(l8676)
	and a
	jr nz,lb671
	ld (l3f62),a
	jp l3f70
.lb671
	dec a
	ld (l8676),a
	ld a,(l8687)
	and a
	jr nz,lb6aa
	ld a,(l8684)
	and a
	ret z
	dec a
	ld (l8684),a
	ld a,(l8677)
	ld (l8687),a
	ld a,(l8685)
	and a
	jr z,lb693
	ld a,(l3f5e)
.lb693
	ld b,a
	ld a,(l8678)
	add b
	ld (lb7cc),a
	ld a,(l8679)
	add b
	and #0f
	ld (lb7cd),a
	ld hl,(l867a)
	ld (lb7d0),hl
.lb6aa
	ld hl,l8687
	dec (hl)
	ld a,(l8682)
	and a
	jr z,lb6d1
	jp p,lb6c4
	ld hl,(lb7cc)
	ld de,(l867e)
	add hl,de
	ld (lb7cc),hl
	jr lb6d1
.lb6c4
	ld hl,(lb7cc)
	ld de,(l867e)
	and a
	sbc hl,de
	ld (lb7cc),hl
.lb6d1
	ld a,(l8683)
	and a
	jr z,lb6f4
	jp p,lb6e7
	ld hl,(lb7d0)
	ld de,(l8680)
	add hl,de
	ld (lb7d0),hl
	jr lb6f4
.lb6e7
	ld hl,(lb7d0)
	ld de,(l8680)
	and a
	sbc hl,de
	ld (lb7d0),hl
.lb6f4
	ld a,(lb7cc)
	ld (lb7d2),a
	ret
.lb6fb
	dw lb711,lb722,lb733,lb744
	dw lb755,lb766,lb777,lb788
	dw lb799,lb7aa,lb7bb
.lb711
	db #07,#03,#10,#00,#8b,#00,#0f,#fa
	db #10,#00,#08,#01,#ff,#01,#0a,#00
	db #00
.lb722
	db #05,#0a,#02,#01,#83,#00,#0c,#fa
	db #38,#00,#40,#00,#ff,#ff,#01,#00
	db #00
.lb733
	db #28,#ff,#90,#01,#80,#01,#32,#fa
	db #07,#00,#07,#00,#01,#01,#02,#00
	db #00
.lb744
	db #05,#0a,#a0,#02,#c0,#00,#32,#fa
	db #08,#00,#70,#00,#ff,#ff,#00,#00
	db #00
.lb755
	db #0f,#0a,#00,#04,#ff,#07,#16,#f2
	db #00,#00,#00,#00,#ff,#ff,#0a,#00
	db #00
.lb766
	db #20,#37,#09,#00,#0a,#00,#05,#dd
	db #00,#00,#00,#00,#01,#01,#ff,#00
	db #00
.lb777
	db #07,#03,#04,#00,#0b,#00,#0f,#fa
	db #10,#00,#08,#00,#ff,#ff,#0a,#00
	db #00
.lb788
	db #0e,#08,#40,#00,#60,#01,#09,#fa
	db #a4,#00,#44,#00,#ff,#ff,#01,#00
	db #00
.lb799
	db #f0,#06,#01,#02,#11,#02,#14,#f2
	db #c8,#00,#cc,#00,#ff,#ff,#ff,#00
	db #00
.lb7aa
	db #4b,#0a,#00,#44,#00,#00,#14,#d7
	db #80,#00,#40,#00,#ff,#01,#1e,#01
	db #00
.lb7bb
	db #23,#ff,#c2,#00,#0a,#01,#0a,#f2
	db #a2,#01,#c0,#00,#ff,#ff,#ff,#14
	db #00
.lb7cc
	db #00
.lb7cd
	db #00,#00,#00
.lb7d0
	db #00
.lb7d6 equ $ + 5
.lb7d4 equ $ + 3
.lb7d3 equ $ + 2
.lb7d2 equ $ + 1
	db #00,#00,#3f,#10,#00,#10
;
; #04cb
; push bc
; ld bc,#7fc4
; out (c),c
; call #4000	; init
; jr #04c4
; push bc
; ld bc,#7fc4
; out (c),c
; call #3ee5	; ??? bruitage ?
; call #40d0	; play
; jr #04c4
; push bc
; ld bc,#7fc4
; out (c),c
; call #418a
; jr #04c4
;
.music_info
	db "Total Recall (1991)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
