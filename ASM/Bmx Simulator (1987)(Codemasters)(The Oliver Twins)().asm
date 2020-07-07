; Music of Bmx Simulator (1987)(Codemasters)(The Oliver Twins)()
; Ripped by Megachur the 20/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BMXSIMUL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #7060
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.init_music
.l7060
;
	ld hl,#0000
	ld (l756e),hl
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l7570
	add hl,bc
	ld ix,l70ad
	ld c,#20
	ld a,#03
.l7079
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
	jr nz,l7079
	inc a
	ld (l710d),a
	ld (l756e),a
	ret
.l70ad
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l70cd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l70ed
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.l710d
	db #00
;
.play_music
.l710e
;
	call l7934
	ld a,(l756e)
	and a
	jp z,l716a
.l7119 equ $ + 1
	ld a,#00
	ld (l7166),a
	ld hl,l710d
	dec (hl)
	jr nz,l713e
	ld b,(hl)
	ld ix,l70ad
	call l72bc
	ld ix,l70cd
	call l72bc
	ld ix,l70ed
	call l72bc
	ld hl,l710d
.l713d equ $ + 1
	ld (hl),#01
.l713e
	ld ix,l70ad
	call l7351
	ld (l7460),hl
	ld (l7468),a
	ld ix,l70cd
	call l7351
	ld (l7462),hl
	ld (l7469),a
	ld ix,l70ed
	call l7351
	ld (l7464),hl
	ld (l746a),a
.l7166 equ $ + 1
	ld a,#00
	ld (l7466),a
.l716a
	ld a,(l756f)
	and a
	jr z,l71a0
	ld hl,(l746d)
	ld (l7460),hl
	ld hl,(l7471)
	ld (l7464),hl
	ld a,(l7473)
	ld (l7466),a
	ld a,(l7467)
	or #2d
	ld hl,l7474
.l718a
	and (hl)
	ld (l7467),a
	ld a,(l7475)
	ld (l7468),a
	ld a,(l7477)
	ld (l746a),a
	ld a,(l7479)
	ld (l746c),a
.l71a0
	ld hl,l756f
	ld a,(l756e)
	or (hl)
	ret z
	ld hl,l746c
	ld d,#0c
.l71ad
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
	jp p,l71ad
	ret
;
.stop_music	;71ce
;
	ld hl,#0000
	ld (l756e),hl
.l71d4
	ld de,#0d00
.l71d7
	call l71ef
	dec d
	jp p,l71d7
	ld de,#073f
	call l71ef
	xor a
	ld (l7468),a
	ld (l7469),a
	ld (l746a),a
	ret
.l71ef
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
	db #a9
	db #91
	db #95
	db #9a
	db #69
	db #00
	db #00
	db #10
	db #7b
	db #00
	db #4f
	db #39
	db #00
	db #96
	db #01
	xor a
	ld (l756e),a
	pop hl
	jp l71d4
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
	jr nz,l7243
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l7243
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l72c9
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,l7445
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l72c9
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l7445
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l72c9
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l72c9
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l72c9
	ld (ix+#1d),b
	jr l72c9
	ld (ix+#1d),#40
	jr l72c9
	ld (ix+#1d),#c0
	jr l72c9
	set 1,(ix+#00)
	jr l72c9
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l72f5
.l72bc
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l72c9
	ld a,(de)
	inc de
	and a
	jp m,l7302
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l72db
	ld (l7119),a
.l72db
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l72f5
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l7302
	cp #b8
	jr c,l7349
	add #20
	jr c,l732e
	add #10
	jr c,l7334
	add #10
	jr nc,l7327
	ld c,a
	ld hl,l7522
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr l72c9
.l7327
	add #09
	ld (l713d),a
	jr l72c9
.l732e
	inc a
	ld (ix+#11),a
	jr l72c9
.l7334
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
	jp l72c9
.l7349
	ld hl,l718a
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l7351
	ld c,(ix+#00)
	bit 5,c
	jr z,l739c
	ld a,(ix+#16)
	sub #10
	jr nc,l7384
	bit 6,c
	jr z,l7389
	add (ix+#13)
	jr nc,l7369
	sbc a
.l7369
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l737f
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l739c
.l737f
	ld (ix+#18),a
	jr l739c
.l7384
	ld (ix+#16),a
	jr l739c
.l7389
	cpl
	sub #0f
	add (ix+#13)
	jr c,l7392
	sub a
.l7392
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l739c
	res 5,c
.l739c
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,l73b4
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l73b4
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l747a
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l7416
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l73df
	bit 0,c
	jr nz,l73fd
.l73df
	bit 5,l
	jr nz,l73ef
	sub (ix+#1b)
	jr nc,l73fa
	set 5,(ix+#1d)
	sub a
	jr l73fa
.l73ef
	add (ix+#1b)
	cp b
	jr c,l73fa
	res 5,(ix+#1d)
	ld a,b
.l73fa
	ld (ix+#1c),a
.l73fd
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l7408
	dec d
.l7408
	add #a0
	jr c,l7414
.l740c
	sla e
	rl d
	add #18
	jr nc,l740c
.l7414
	add hl,de
	ex de,hl
.l7416
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l7441
	ld b,(ix+#0e)
	djnz l743e
	ld c,(ix+#0d)
	bit 7,c
	jr z,l742d
	dec b
.l742d
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l7441
.l743e
	ld (ix+#0e),b
.l7441
	cpl
	and #03
.l7445 equ $ + 1
	ld a,#38
	jr nz,l7452
	ld a,(l7119)
	xor #08
	ld (l7166),a
	ld a,#07
.l7452
	ld hl,l7467
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l7467 equ $ + 7
.l7466 equ $ + 6
.l7464 equ $ + 4
.l7462 equ $ + 2
.l7460
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l746e equ $ + 6
.l746d equ $ + 5
.l746c equ $ + 4
.l746a equ $ + 2
.l7469 equ $ + 1
.l7468
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7477 equ $ + 7
.l7475 equ $ + 5
.l7474 equ $ + 4
.l7473 equ $ + 3
.l7471 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l7479
	db #ff
.l747a
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
.l7522
	db #10,#11,#14,#17,#1b,#1f,#22,#25
	db #28,#2b,#2d,#2f,#31,#33,#35,#39
	db #00,#87,#00,#03,#07,#87,#00,#04
	db #07,#87,#00,#03,#07,#0c,#87,#00
	db #04,#07,#0c,#87,#07,#0c,#0f,#87
	db #07,#0c,#10,#87,#03,#07,#0c,#87
	db #04,#07,#0c,#87,#00,#0c,#87,#00
	db #04,#87,#00,#03,#87,#00,#05,#87
	db #00,#07,#87,#00,#00,#00,#0c,#87
	db #07,#0c,#11,#87
.l756e
.music_end
	db #00
.l756f
	db #00
.l7570
	dw l7582,l758c,l75ba,l7813
	dw l7817,l7821,l787f,l7883
	dw l7887
.l7582
	dw l75dc,l7616,l75dc,l7656
	dw #0000
.l758c
	dw l768b,l768b,l768b,l768b
	dw l768b,l768b,l768b,l768b
	dw l768b,l768b,l768b,l768b
	dw l76a7,l76b8,l76c9,l76da
	dw l768b,l76c9,l76eb,l76fc
	dw l770d,l770d,#0000
.l75ba
	dw l771e,l771e,l771e,l771e
	dw l7737,l7737,l7774,l778f
	dw l77a5,l77d1,l77e7,l77e7
	dw l77e7,l77e7,l77fd,l77fd
	dw #0000
.l75dc
	db #ba,#c0,#8b,#df,#00,#12,#08,#e1
	db #8d,#3f,#df,#00,#12,#08,#41,#41
	db #41,#df,#00,#11,#08,#e3,#8d,#27
	db #df,#00,#12,#08,#e1,#41,#41,#df
	db #00,#12,#08,#8d,#3f,#df,#00,#12
	db #08,#41,#41,#41,#df,#00,#11,#08
	db #8d,#27,#df,#00,#12,#08,#41,#41
	db #41,#87
.l7616
	db #8b,#df,#00,#12,#08,#e1,#8d,#3f
	db #df,#00,#12,#08,#41,#41,#41,#df
	db #00,#11,#08,#e3,#8d,#27,#e1,#df
	db #00,#12,#08,#8d,#3f,#df,#00,#12
	db #08,#41,#df,#00,#12,#08,#8d,#3f
	db #df,#00,#11,#08,#e3,#8d,#27,#e1
	db #df,#00,#12,#08,#41,#41,#41,#df
	db #00,#11,#08,#e3,#8d,#27,#e1,#87
.l7656
	db #8b,#df,#00,#12,#08,#e1,#8d,#3f
	db #df,#00,#12,#08,#41,#41,#41,#df
	db #00,#11,#08,#e3,#8d,#27,#e1,#df
	db #00,#12,#08,#41,#41,#df,#00,#12
	db #08,#8d,#3f,#df,#00,#12,#08,#41
	db #df,#00,#11,#08,#e3,#8d,#27,#8d
	db #27,#e1,#27,#27,#87
.l768b
	db #c0,#8a,#82,#88,#01,#01,#df,#00
	db #12,#02,#e1,#0c,#0c,#0c,#18,#0c
	db #0c,#18,#0c,#0c,#0c,#0c,#18,#0c
	db #0c,#18,#0c,#87
.l76a7
	db #10,#10,#10,#1c,#10,#10,#1c,#10
	db #10,#10,#10,#1c,#10,#10,#1c,#10
	db #87
.l76b8
	db #0e,#0e,#0e,#1a,#0e,#0e,#1a,#0e
	db #0e,#0e,#0e,#1a,#0e,#0e,#1a,#0e
	db #87
.l76c9
	db #0b,#0b,#0b,#17,#0b,#0b,#17,#0b
	db #0b,#0b,#0b,#17,#0b,#0b,#17,#0b
	db #87
.l76da
	db #07,#07,#07,#13,#07,#07,#13,#07
	db #07,#07,#07,#13,#07,#07,#13,#07
	db #87
.l76eb
	db #0a,#0a,#0a,#16,#0a,#0a,#16,#0a
	db #0a,#0a,#0a,#16,#0a,#0a,#16,#0a
	db #87
.l76fc
	db #09,#09,#09,#15,#09,#09,#15,#09
	db #09,#09,#09,#15,#09,#09,#15,#09
	db #87
.l770d
	db #08,#08,#08,#14,#08,#08,#14,#08
	db #08,#08,#08,#14,#08,#08,#14,#08
	db #87
.l771e
	db #c0,#81,#8a,#e1,#df,#00,#12,#02
	db #00,#00,#00,#0c,#00,#00,#0c,#00
	db #00,#00,#00,#0c,#00,#00,#0c,#00
	db #87
.l7737
	db #ce,#8a,#82,#88,#01,#01,#df,#00
	db #91,#05,#f3,#28,#e3,#26,#e1,#28
	db #26,#e3,#28,#f3,#2b,#e3,#28,#e1
	db #24,#28,#e3,#24,#f3,#21,#e3,#21
	db #e1,#24,#21,#e3,#1f,#ef,#1c,#df
	db #00,#12,#02,#e0,#1c,#1f,#24,#28
	db #1f,#24,#28,#2b,#24,#28,#2b,#30
	db #28,#2b,#30,#34,#87
.l7774
	db #8a,#82,#88,#01,#01,#df,#00,#11
	db #07,#e1,#30,#2f,#2f,#30,#2f,#28
	db #2f,#28,#30,#2f,#2f,#30,#2f,#28
	db #28,#2f,#87
.l778f
	db #8a,#82,#88,#01,#01,#30,#2d,#2d
	db #30,#2d,#26,#2d,#26,#30,#2d,#2d
	db #30,#2d,#26,#26,#2d,#87
.l77a5
	db #8a,#82,#88,#01,#01,#30,#2a,#2a
	db #30,#2a,#23,#2a,#23,#30,#2a,#2a
	db #30,#2a,#23,#23,#2a,#87,#8a,#82
	db #88,#01,#01,#30,#2f,#2f,#30,#2f
	db #2b,#2f,#2b,#30,#2f,#2f,#30,#2f
	db #2b,#2b,#2f,#87
.l77d1
	db #8a,#82,#88,#01,#01,#30,#2f,#3b
	db #30,#2f,#36,#3b,#2a,#30,#2f,#2f
	db #30,#2f,#2a,#36,#3b,#87
.l77e7
	db #8a,#82,#88,#01,#01,#30,#30,#30
	db #3c,#30,#30,#3c,#30,#30,#30,#30
	db #3c,#30,#30,#3c,#30,#87
.l77fd
	db #8a,#82,#88,#01,#01,#27,#27,#27
	db #2c,#2c,#2c,#2f,#2f,#33,#2f,#2c
	db #2f,#2d,#2c,#2d,#2d,#87
.l7813
	dw l7825,#0000
.l7817
	dw l7844,l7844,l7858,l7862
	dw #0000
.l7821
	dw l7869,#0000
.l7825
	db #be,#c0,#8a,#82,#88,#01,#01,#df
	db #00,#71,#06,#e2,#0c,#0c,#e1,#0c
	db #e2,#09,#09,#e1,#09,#e2,#05,#05
	db #e1,#07,#e7,#0c,#8e,#00,#87
.l7844
	db #c0,#8a,#82,#88,#01,#01,#df,#00
	db #21,#06,#e0,#1c,#1a,#1a,#1c,#1a
	db #1a,#1c,#1a,#87
.l7858
	db #e0,#1c,#1a,#1a,#1c,#1a,#1a,#1d
	db #1a,#87
.l7862
	db #df,#00,#91,#06,#e7,#18,#87
.l7869
	db #8a,#82,#88,#01,#01,#df,#00,#81
	db #06,#e7,#c4,#30,#c3,#2d,#e5,#c4
	db #35,#e1,#37,#e7,#3c,#87
.l787f
	dw l788b,#0000
.l7883
	dw l78a1,#0000
.l7887
	dw l78c0,#0000
.l788b
	db #bd,#c0,#8a,#82,#88,#01,#01,#df
	db #00,#91,#04,#e7,#11,#13,#84,#ff
	db #18,#18,#0c,#8e,#00,#87
.l78a1
	db #c0,#8a,#82,#88,#01,#01,#df,#00
	db #21,#07,#e0,#24,#24,#e5,#24,#e0
	db #26,#26,#e5,#26,#e0,#2b,#2b,#e5
	db #84,#fe,#0c,#2b,#e7,#37,#87
.l78c0
	db #c0,#8a,#82,#88,#01,#01,#df,#00
	db #21,#07,#e0,#27,#27,#e5,#29,#e0
	db #2a,#2a,#e5,#2b,#e0,#2f,#2f,#e5
	db #84,#fe,#0c,#30,#e7,#3c,#87
;
; sound effects ?
;
	ld hl,l756f
	ld (hl),#00
	ld hl,l79cc
	sla a
	add l
	ld l,a
	jr nc,l78ee
	inc h
.l78ee
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l7a75
.l78f6
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l78f6
	ld a,(l7a76)
	ld (l7a86),a
	ld hl,(l7a77)
	ld (l746d),hl
	ld de,(l7a79)
	ld (l7471),de
	ld a,l
	ld (l7473),a
	ld a,(l7a7c)
	ld (l7474),a
	ld a,(l7a7b)
	ld (l7479),a
	ld a,(l7a85)
	ld e,a
	ld d,#0d
	call l71ef
	ld hl,l756f
	inc (hl)
	ret
.l792e
	ld (l756f),a
	jp l71d4
.l7934
	ld a,(l756f)
	and a
	ret z
	call l7a88
	ld a,(l7a75)
	and a
	jr z,l792e
	dec a
	ld (l7a75),a
	ld a,(l7a86)
	and a
	jr nz,l797b
	ld a,(l7a83)
	and a
	ret z
	dec a
	ld (l7a83),a
	ld a,(l7a76)
	ld (l7a86),a
	ld a,(l7a84)
	and a
	jr z,l7964
	ld a,(l7aa3)
.l7964
	ld b,a
	ld a,(l7a77)
	add b
	ld (l746d),a
	ld a,(l7a78)
	add b
	and #0f
	ld (l746e),a
	ld hl,(l7a79)
	ld (l7471),hl
.l797b
	ld hl,l7a86
	dec (hl)
	ld a,(l7a81)
	and a
	jr z,l79a2
	jp p,l7995
	ld hl,(l746d)
	ld de,(l7a7d)
	add hl,de
	ld (l746d),hl
	jr l79a2
.l7995
	ld hl,(l746d)
	ld de,(l7a7d)
	and a
	sbc hl,de
	ld (l746d),hl
.l79a2
	ld a,(l7a82)
	and a
	jr z,l79c5
	jp p,l79b8
	ld hl,(l7471)
	ld de,(l7a7f)
	add hl,de
	ld (l7471),hl
	jr l79c5
.l79b8
	ld hl,(l7471)
	ld de,(l7a7f)
	and a
	sbc hl,de
	ld (l7471),hl
.l79c5
	ld a,(l746d)
	ld (l7473),a
	ret
.l79cc
	dw l79de,l79ef,l79fe,l7a0f
	dw l7a20,l7a31,l7a42,l7a53
	dw l7a64
.l79de
	db #14,#15,#80,#00,#a8,#00,#0f,#f2
	db #99,#00,#9b,#00,#ff,#ff,#00,#00
	db #00
.l79ef
	db #1e,#05,#80,#01,#90,#01,#0c,#fa
	db #10,#10,#01,#01,#06,#00,#00
.l79fe
	db #05,#02,#18,#00,#19,#00,#02,#fa
	db #02,#00,#02,#00,#01,#01,#02,#00
	db #00
.l7a0f
	db #64,#08,#80,#00,#85,#00,#28,#d2
	db #23,#00,#28,#00,#ff,#ff,#14,#00
	db #00
.l7a20
	db #64,#06,#0a,#00,#0f,#00,#28,#d2
	db #03,#00,#04,#00,#ff,#01,#14,#01
	db #00
.l7a31
	db #64,#19,#80,#01,#83,#01,#2c,#fa
	db #08,#00,#08,#00,#01,#01,#0a,#00
	db #00
.l7a42
	db #63,#63,#00,#00,#01,#00,#28,#d2
	db #01,#00,#01,#00,#ff,#ff,#00,#00
	db #00
.l7a53
	db #05,#05,#00,#00,#00,#00,#01,#f7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e
.l7a64
	db #05,#05,#04,#00,#00,#00,#01,#f7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e
.l7a75
	db #00
.l7a7d equ $ + 7
.l7a7c equ $ + 6
.l7a7b equ $ + 5
.l7a79 equ $ + 3
.l7a78 equ $ + 2
.l7a77 equ $ + 1
.l7a76
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7a85 equ $ + 7
.l7a84 equ $ + 6
.l7a83 equ $ + 5
.l7a82 equ $ + 4
.l7a81 equ $ + 3
.l7a7f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7a86
	db #00,#00
.l7a88
	ld a,(l7aa3)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l7aa6
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l7aa6 equ $ +3
.l7aa3
	db #ff,#80,#1b,#34
;
; #7050
;	ld a,#00		; test player
;	call l7060		; init 
;.l7055
;	call l710e		; play
;	halt
;	halt
;	halt
;	halt
;	halt
;	halt
;	jr l7055
;
.music_info
	db "Bmx Simulator (1987)(Codemasters)(The Oliver Twins)",0
	db "",0

	read "music_end.asm"
