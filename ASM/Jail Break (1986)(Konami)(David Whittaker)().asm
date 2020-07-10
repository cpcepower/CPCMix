; Music of Jail Break (1986)(Konami)(David Whittaker)()
; Ripped by Megachur the 25/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JAILBREA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #8e60

	read "music_header.asm"

;
.init_music
.l8e60
;
	xor a
	ld (l9323_play_music_yesno),a
	ld hl,l9324
	ld ix,l8ea5
	ld b,#00
	ld c,#1f
	ld a,#03
.l8e71
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl

	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
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
	jr nz,l8e71

	inc a
	ld (l8f02),a
	ld (l9323_play_music_yesno),a
	ret

.l8ea5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l8ec4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l8ee3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.l8f02
	db #00
;
.play_music	;.l8f03
;
	ld a,(l9323_play_music_yesno)
	and a
	ret z

	ld hl,l9322
	dec (hl)
	jp p,l8f12
	ld (hl),#08
	ret
.l8f13 equ $ + 1
.l8f12
	ld a,#00
	ld (l8f60),a
	ld hl,l8f02
	dec (hl)
	jr nz,l8f38

	ld b,(hl)
	ld ix,l8ea5
	call l905e

	ld ix,l8ec4
	call l905e

	ld ix,l8ee3
	call l905e

	ld hl,l8f02
.l8f37 equ $ + 1
.l8f36
	ld (hl),#01
.l8f38
	ld ix,l8ea5
	call l9100
	ld (l9211),hl
	ld (l9219),a

	ld ix,l8ec4
	call l9100
	ld (l9213),hl
	ld (l921a),a

	ld ix,l8ee3
	call l9100
	ld (l9215),hl
	ld (l921b),a

.l8f60 equ $ + 1
	ld a,#00
	ld (l9217),a

	ld hl,l921d
	ld d,#0c
.l8f69
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
	jp p,l8f69
	ret
;
.stop_music
;
	xor a
	ld (l9323_play_music_yesno),a

	ld de,#0d00	; original is ld de,#d000 should be ld de,&0d00 !!!
.l8f91
	call l8f9b
	dec e
	jp p,l8f91
	ld de,#073f
.l8f9b
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
	ret
;
.jumps_table
;
	db l9055-$	;#9f
	db l903e-$	;#87
	db l9043-$	;#8b
	db l9049-$	;#90
	db l9012-$	;#58
	db l903e-$	;#83
	db l903e-$	;#82
	db l8fc5-$	;#08
	db l902f-$	;#71
	db l9028-$	;#69
	db l9002-$	;#42
	db l8ff2-$	;#31
	db l9012-$	;#50
	db l904f-$	;#8c
	db l8fc5-$	;#01
.l8fc5
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l8fe7
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l8fe7
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l906c
.l8ff2
	ld a,(ix+#1e)
	ld c,a
	and #07
	ld hl,l91f6
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l906c
.l9002
	ld a,(ix+#1e)
	ld c,a
	and #38
	ld hl,l91f6
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l906c
.l9012
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l906c
.l9028
	ld a,(de)
	inc de
	ld (l8f13),a
	jr l906c
.l902f
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l906c
.l903e
	ld (ix+#1d),b
	jr l906c
.l9043
	ld (ix+#1d),#40
	jr l906c
.l9049
	ld (ix+#1d),#c0
	jr l906c
.l904f
	set 1,(ix+#00)
	jr l906c
.l9055
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l908f
.l905e
	dec (ix+#10)
	jr nz,l909c
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l906c
	ld a,(de)
	inc de
	and a
	jp m,l90ad
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l908f
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l909c
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l90a9
	inc (ix+#12)
	ret
.l90a9
	dec (ix+#12)
	ret
.l90ad
	cp #b8
	jr c,l90f8
	add #20
	jr c,l90dd
	add #10
	jr c,l90e3
	add #10
	jr nc,l90d6
	ld c,a
	ld hl,l92de
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	set 4,(ix+#00)
	jr l906c
.l90d6
	add #09
	ld (l8f37),a
	jr l906c
.l90dd
	inc a
	ld (ix+#11),a
	jr l906c
.l90e3
	ld (ix+#19),a
	ld a,(de)
	inc de
	ld (ix+#14),a
	ld a,(de)
	inc de
	ld (ix+#15),a
	ld a,(de)
	inc de
	ld (ix+#17),a
	jp l906c
.l90f8
	ld hl,jumps_table-&80	;l8f36
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l9100
	ld c,(ix+#00)
	bit 5,c
	jr z,l914b
	ld a,(ix+#16)
	sub #10
	jr nc,l9133
	bit 6,c
	jr z,l9138
	add (ix+#13)
	jr nc,l9118
	sbc a
.l9118
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l912e
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l914b
.l912e
	ld (ix+#18),a
	jr l914b
.l9133
	ld (ix+#16),a
	jr l914b
.l9138
	cpl
	sub #0f
	add (ix+#13)
	jr c,l9141
	sub a
.l9141
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l914b
	res 5,c
.l914b
	ld a,(ix+#12)
	bit 4,c
	jr z,l916d
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,l9165
	ld l,(ix+#09)	; next
	ld h,(ix+#0a)
	ld a,(hl)
.l9165
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
.l916d
	ld hl,l921e	; choix fréquence note ?
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l91c7
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l9190
	bit 0,c
	jr nz,l91ae
.l9190
	bit 5,l
	jr nz,l91a0
	sub (ix+#1b)
	jr nc,l91ab
	set 5,(ix+#1d)
	sub a
	jr l91ab
.l91a0
	add (ix+#1b)
	cp b
	jr c,l91ab
	res 5,(ix+#1d)
	ld a,b
.l91ab
	ld (ix+#1c),a
.l91ae
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l91b9
	dec d
.l91b9
	add #a0
	jr c,l91c5
.l91bd
	sla e
	rl d
	add #18
	jr nc,l91bd
.l91c5
	add hl,de
	ex de,hl
.l91c7
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l91f2
	ld b,(ix+#0e)
	djnz l91ef
	ld c,(ix+#0d)
	bit 7,c
	jr z,l91de
	dec b
.l91de
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l91f2
.l91ef
	ld (ix+#0e),b
.l91f2
	cpl
	and #03
.l91f6 equ $ + 1
	ld a,#38
	jr nz,l9203
	ld a,(l8f13)
	xor #08
	ld (l8f60),a
	ld a,#07
.l9203
	ld hl,l9218
	xor (hl)
	and (ix+#1e)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l9211
	defw 0	; reg0-reg1
.l9213
	defw 0	; reg2-reg3
.l9215
	defw 0	; reg4-reg5
.l9217
	db #00		; reg6
.l9218
	db #3f		; reg7
.l9219
	db #0f		; reg8
.l921a
	db #0f		; reg9
.l921b
	db #0f		; reg10
	db #00		; reg11
.l921d
	db #00		; reg12
;
; frequency table
;
.l921e
	defw #0ef8,#0e10,#0d60,#0c80
	defw #0bd8,#0b28,#0a88,#09f0
	defw #0960,#08e0,#0858,#07e0
	defw #077c,#0708,#06b0,#0640
	defw #05ec,#0594,#0544,#04f8
	defw #04b0,#0470,#042c,#03f0
	defw #03be,#0384,#0358,#0320
	defw #02f6,#02ca,#02a2,#027c
	defw #0258,#0238,#0216,#01f8
	defw #01df,#01c2,#01ac,#0190
	defw #017b,#0165,#0151,#013e
	defw #012c,#011c,#010b,#00fc
	defw #00ef,#00e1,#00d6,#00c8
	defw #00bd,#00b2,#00a8,#009f
	defw #0096,#008e,#0085,#007e
	defw #0077,#0070,#006b,#0064
	defw #005e,#0059,#0054,#004f
	defw #004b,#0047,#0042,#003f
	defw #003b,#0038,#0035,#0032
	defw #002f,#002c,#002a,#0027
	defw #0025,#0023,#0021,#001f
	defw #001d,#001c,#001a,#0019
	defw #0017,#0016,#0015,#0013
	defw #0012,#0011,#0010,#000f
.l92de
	db #0e,#11,#14,#18,#1c,#1f,#22,#25
	db #28,#2a,#2c,#2e,#30,#32,#00,#03
	db #07,#87,#00,#04,#07,#87,#00,#03
	db #07,#0c,#87,#00,#04,#07,#0c,#87
	db #07,#0c,#0f,#87,#07,#0c,#10,#87
	db #03,#07,#0c,#87,#04,#07,#0c,#87
	db #00,#0c,#87,#00,#04,#87,#00,#03
	db #87,#00,#05,#87,#00,#07,#87,#00
	db #00,#07,#07,#87
.l9322
	db #00
.l9323_play_music_yesno
.music_end

	db #00
.l9324	; 1st sequence ptr
	dw l932a,l936a,l939e
.l932a
	dw l93d2,l93f7,l93f7,l93f7
	dw l93f7,l9433,l9433,l9433
	dw l9433,l9433,l9433,l9433
	dw l9477,l9477,l9477,l9477
	dw l9477,l9477,l9477,l9477
	dw l9477,l9433,l9433,l9433
	dw l9433,l9433,l9433,l9433
	dw l964f,l9477,l96eb,&0000
.l936a
	dw l94a5,l94a8,l94a8,l94a8
	dw l94a8,l94a8,l94a8,l94a8
	dw l94a8,l94a8,l94a8,l94a8
	dw l94d3,l94df,l951f,l94df
	dw l951f,l94a8,l94a8,l94a8
	dw l94a8,l94a8,l94a8,l94a8
	dw l9541,&0000
.l939e
	dw l9575,l9578,l9578,l95a9
	dw l95bd,l95df,l95df,l95ec
	dw l960a,l962c,l964f,l964f
	dw l964f,l9681,l9681,l964f
	dw l964f,l9681,l9681,l95df
	dw l95df,l95ec,l960a,l96eb
	dw l96b3,&0000
.l93d2
	db #b9,#d9,#00,#14,#06,#e0,#8b,#8d
	db #1f,#8d,#1b,#db,#00,#14,#06,#8d
	db #17,#8d,#13,#dd,#00,#14,#06,#8d
	db #0f,#8d,#07,#df,#00,#14,#06,#8d
	db #0b,#8d,#07,#bc,#87
.l93f7
	db #8a,#88,#01,#02,#82,#e0,#df,#00
	db #12,#02,#18,#18,#8b,#01,#8a,#18
	db #18,#18,#8b,#01,#8a,#18,#18,#18
	db #8b,#01,#8a,#18,#18,#18,#8b,#01
	db #8a,#18,#18,#18,#8b,#01,#8a,#18
	db #18,#18,#8b,#01,#8a,#18,#18,#8b
	db #01,#8a,#15,#8b,#01,#8a,#16,#8b
	db #01,#e1,#01,#87
.l9433
	db #8a,#88,#01,#02,#82,#e0,#df,#00
	db #12,#02,#8d,#18,#18,#8b,#01,#8a
	db #18,#8d,#18,#18,#8b,#01,#8a,#18
	db #8d,#18,#18,#8b,#01,#8a,#18,#8d
	db #18,#18,#8b,#01,#8a,#18,#8d,#18
	db #18,#8b,#01,#8a,#18,#8d,#18,#18
	db #8b,#01,#8a,#18,#8d,#18,#8b,#01
	db #8a,#8d,#15,#8b,#01,#8a,#16,#8b
	db #01,#e1,#01,#87
.l9477
	db #8b,#de,#00,#12,#05,#e0,#07,#07
	db #e1,#07,#e0,#07,#07,#e1,#07,#e0
	db #07,#07,#e1,#07,#e0,#07,#07,#e1
	db #07,#e0,#07,#07,#e1,#07,#e0,#07
	db #07,#e1,#07,#e0,#07,#07,#e1,#07
	db #e0,#07,#07,#e1,#07,#87
.l94a5
	db #e7,#80,#87
.l94a8
	db #8a,#88,#01,#02,#82,#e0,#dc,#00
	db #11,#04,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#21,#21,#22,#22
	db #23,#23,#87
.l94d3
	db #8a,#88,#01,#02,#82,#df,#00,#f1
	db #03,#ff,#16,#87
.l94df
	db #8a,#88,#01,#02,#82,#df,#00,#31
	db #06,#e1,#cc,#35,#cc,#35,#cc,#37
	db #cc,#38,#cc,#3a,#e7,#cc,#38,#e1
	db #cc,#35,#cc,#37,#cc,#38,#cc,#3a
	db #e5,#cc,#38,#e1,#cc,#35,#cc,#35
	db #cc,#37,#cc,#38,#cc,#3a,#e3,#cc
	db #38,#cc,#38,#cc,#37,#e1,#cc,#33
	db #df,#00,#31,#02,#e7,#cd,#35,#87
.l951f
	db #8a,#88,#02,#04,#82,#df,#00,#91
	db #06,#e3,#24,#1c,#e5,#18,#e3,#24
	db #1c,#e1,#18,#e7,#18,#e3,#24,#1c
	db #e5,#18,#e3,#24,#1c,#e1,#18,#e7
	db #18,#87
.l9541
	db #8a,#88,#02,#04,#82,#df,#00,#91
	db #06,#e5,#22,#27,#2c,#ed,#c8,#2c
	db #df,#00,#91,#06,#e0,#c8,#2c,#c8
	db #2c,#ed,#c8,#2c,#e0,#c8,#2c,#c8
	db #2c,#ed,#c8,#2c,#df,#00,#f1,#04
	db #ef,#84,#0a,#28,#c8,#2c,#df,#00
	db #91,#0f,#22,#87
.l9575
	db #e7,#80,#87
.l9578
	db #8a,#88,#01,#02,#82,#df,#00,#12
	db #02,#e1,#80,#e0,#18,#80,#e1,#80
	db #e0,#18,#80,#e1,#80,#e0,#18,#80
	db #e1,#80,#e0,#18,#80,#e1,#80,#e0
	db #18,#80,#e1,#80,#e0,#18,#80,#e0
	db #80,#18,#80,#15,#80,#16,#17,#17
	db #87
.l95a9
	db #8a,#88,#01,#02,#82,#df,#00,#71
	db #04,#e5,#c8,#29,#c8,#2e,#c8,#33
	db #ed,#c8,#38,#87
.l95bd
	db #8a,#88,#01,#02,#82,#df,#00,#11
	db #07,#e0,#c8,#38,#c8,#38,#ed,#c8
	db #38,#e0,#c8,#38,#c8,#38,#e7,#c8
	db #38,#df,#00,#41,#07,#e1,#0c,#0c
	db #0c,#87
.l95df
	db #8a,#88,#01,#02,#82,#dc,#00,#91
	db #02,#ff,#cc,#2b,#87
.l95ec
	db #8a,#88,#01,#02,#82,#df,#00,#f1
	db #04,#e1,#c8,#33,#f3,#c8,#32,#e1
	db #c8,#30,#e3,#c8,#33,#c8,#35,#e1
	db #c8,#33,#fd,#c8,#32,#87
.l960a
	db #8a,#88,#01,#02,#82,#df,#00,#f1
	db #04,#e1,#c8,#33,#f3,#c8,#32,#e1
	db #c8,#30,#e3,#c8,#33,#c8,#35,#e1
	db #c8,#33,#c8,#2e,#c8,#2f,#f9,#c8
	db #30,#87
.l962c
	db #8b,#df,#00,#12,#09,#e3,#01,#e3
	db #07,#e0,#09,#06,#03,#00,#0c,#09
	db #06,#03,#0f,#0c,#09,#06,#12,#0f
	db #0c,#09,#15,#12,#0f,#0c,#1f,#1a
	db #15,#10,#87
.l964f
	db #8a,#88,#01,#02,#82,#de,#00,#11
	db #06,#e0,#22,#22,#e1,#22,#e0,#22
	db #22,#e1,#22,#e0,#22,#22,#e1,#22
	db #e0,#22,#22,#e1,#22,#e0,#22,#22
	db #e1,#22,#e0,#22,#22,#e1,#22,#e0
	db #22,#22,#e1,#22,#e0,#22,#22,#e1
	db #22,#87
.l9681
	db #8a,#88,#01,#02,#82,#df,#00,#11
	db #06,#e0,#18,#18,#e1,#18,#e0,#18
	db #18,#e1,#18,#e0,#18,#18,#e1,#18
	db #e0,#18,#18,#e1,#18,#e0,#18,#18
	db #e1,#18,#e0,#18,#18,#e1,#18,#e0
	db #18,#18,#e1,#18,#e0,#18,#18,#e1
	db #18,#87
.l96b3
	db #8a,#88,#01,#02,#82,#df,#00,#91
	db #06,#e5,#c8,#2e,#c8,#33,#c8,#38
	db #ed,#c8,#44,#df,#00,#11,#06,#e0
	db #c8,#44,#c8,#44,#ed,#c8,#44,#e0
	db #c8,#44,#c8,#44,#ed,#c8,#44,#df
	db #00,#f1,#04,#ef,#84,#28,#28,#c8
	db #38,#df,#00,#91,#0f,#c2,#2e,#87
.l96eb
	db #ff,#80,#87
;
.music_info
	db "Jail Break (1986)(Konami)(David Whittaker)",0
	db "",0

	read "music_end.asm"
