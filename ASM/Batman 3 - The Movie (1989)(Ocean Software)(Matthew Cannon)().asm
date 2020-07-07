; Music of Batman 3 - The Movie (1989)(Ocean Software)(Matthew Cannon)()
; Ripped by Megachur the 09/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BATMA3TM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #018f
FIRST_THEME				equ 0
LAST_THEME				equ 7

	read "music_header.asm"

;
.init_music
;
	or a
	ret c
	ld (l018e),a
	ld hl,l0526
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
	ld hl,l0528
	add hl,bc
	ld a,(hl)
	ld (le713),a
	inc hl
	ld ix,l018f
	ld c,#25
	ld a,#03
.le677
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#20),#00
	ld (ix+#21),#00
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
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
	jr nz,le677
	ld (l03ba),a
	inc a
	ld (l01fe),a
	ld (l0526),a
	ret
.l018f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#09
.l01b4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#12
.l01d9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#24
.l01fe
	db #00
.l018e
	db #00
.le6d8
	db #01
;
.play_music
;
	call ld600
	ld a,(l0526)
	and a
	jp z,le743
	ld a,(l018e)
	cp #03
	jr nz,le6f1
	ld hl,le6d8
	dec (hl)
	ret p
	ld (hl),#03
.le6f2 equ $ + 1
.le6f1
	ld a,#00
	ld (le73f),a
	ld hl,l01fe
	dec (hl)
	jr nz,le717
	ld b,(hl)
	ld ix,l018f
	call l02b8
	ld ix,l01b4
	call l02b8
	ld ix,l01d9
	call l02b8
.le713 equ $ + 1
	ld a,#01
	ld (l01fe),a
.le717
	ld ix,l018f
	call l0387
	ld (l0498),hl
	ld (l04a0),a
	ld ix,l01b4
	call l0387
	ld (l049a),hl
	ld (l04a1),a
	ld ix,l01d9
	call l0387
	ld (l049c),hl
	ld (l04a2),a
.le73f equ $ + 1
	ld a,#00
	ld (l049e),a
.le743
	ld a,(l0527)
	and a
	jr z,le773
	ld hl,(l04a5)
	ld (l0498),hl
	ld hl,(l04a9)
	ld (l049c),hl
	ld a,(l04ab)
	ld (l049e),a
	ld a,(l049f)
	or #2d
	ld hl,l04ac
	and (hl)
	ld (l049f),a
	ld a,(l04ad)
	ld (l04a0),a
	ld a,(l04af)
	ld (l04a2),a
.le773
	ld a,(l0526)
	ld hl,l0527
	or (hl)
	ret z
	ld hl,l04a3
	ld d,#0b
.le780
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
	jp p,le780
	ret
.le7a1
	ld de,&0d00
.le7a4
	call le7ae
	dec d
	jp p,le7a4
	ld de,#0000
.le7ae
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
	ld (l0527),a
	ld (l04a0),a
	ld (l04a1),a
	ld (l04a2),a
	ret
.le7d6
	push af
	push bc
	push de
	push hl
	push ix
	call le7e6
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
;
.le7e6
.stop_music
;
	xor a
	ld (l018e),a
	ld (l0526),a
	ld (l0527),a
	call le7a1
	xor a
	ld (l04a0),a
	ld (l04a1),a
	ld (l04a2),a
	ret
;
.jumps_table
;
	db #9f,#87,#8b,#90,#4e,#7d,#78
	db #0f,#67,#5f,#24,#0e,#36,#8c,#04
	db #99,#9e,#a3
	pop hl
	jp le7d6
	jp l04b1
	ld a,(ix+#24)
	ld c,a
	and #07
	ld hl,l0463
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l02c6
	ld a,(ix+#24)
	ld c,a
	and #38
	ld hl,l0463
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l02c6
	ld hl,l0463
	ld a,(ix+#24)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l02c6
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l02c6
	ld a,(de)
	inc de
	ld (l03ba),a
	jr l02c6
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l02c6
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l02c6
	ld (ix+#1d),b
	jr l02c6
	ld (ix+#1d),#40
	jr l02c6
	ld (ix+#1d),#c0
	jr l02c6
	set 1,(ix+#00)
	jr l02c6
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l0304
	res 5,(ix+#00)
	jr l0304
	ld (ix+#1f),#ff
	jr l02c6
	ld (ix+#1f),b
	jr l02c6
.l02b8
	dec (ix+#10)
	jr nz,l0321
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l02c6
	ld a,(de)
	inc de
	and a
	jp m,l0332
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l02db
	ld (le6f2),a
.l02db
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
.l0304
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l0320
	ld a,(l0527)
	and a
	jr nz,l0320
	ld (ix+#1f),#ff
.l0320
	ret
.l0321
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l032e
	inc (ix+#12)
	ret
.l032e
	dec (ix+#12)
	ret
.l0332
	cp #b0
	jr c,l037f
	add #20
	jr c,l0360
	add #10
	jr c,l0367
	add #18
	jr nc,l0358
	ld c,a
	ld hl,lde13
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l02c6
.l0358
	add #09
	ld (le713),a
	jp l02c6
.l0360
	inc a
	ld (ix+#11),a
	jp l02c6
.l0367
	ld hl,lcec0
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
	jp l02c6
.l037f
	ld hl,jumps_table-&80	;#017f
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l0387
	ld c,(ix+#00)
	bit 5,c
	jr z,l03b9
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l03b3
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l03b3
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l03b3
	ld a,(ix+#18)
	ld (ix+#13),a
.l03ba equ $ + 1
.l03b9
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l03d3
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l03d3
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lce00
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l0434
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l03fd
	bit 0,c
	jr nz,l041b
.l03fd
	bit 5,l
	jr nz,l040d
	sub (ix+#1b)
	jr nc,l0418
	set 5,(ix+#1d)
	sub a
	jr l0418
.l040d
	add (ix+#1b)
	cp b
	jr c,l0418
	res 5,(ix+#1d)
	ld a,b
.l0418
	ld (ix+#1c),a
.l041b
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l0426
	dec d
.l0426
	add #a0
	jr c,l0432
.l042a
	sla e
	rl d
	add #18
	jr nc,l042a
.l0432
	add hl,de
	ex de,hl
.l0434
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l045f
	ld b,(ix+#0e)
	djnz l045c
	ld c,(ix+#0d)
	bit 7,c
	jr z,l044b
	dec b
.l044b
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l045f
.l045c
	ld (ix+#0e),b
.l045f
	cpl
	and #03
.l0463 equ $ + 1
	ld a,#00
	jr nz,l0470
	ld a,(le6f2)
	xor #08
	ld (le73f),a
	ld a,#07
.l0470
	ld hl,l049f
	xor (hl)
	and (ix+#24)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l0493
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#24)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (le73f),a
.l0493
	ex de,hl
	ld a,(ix+#13)
	ret
.l049f equ $ + 7
.l049e equ $ + 6
.l049c equ $ + 4
.l049a equ $ + 2
.l0498
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l04a6 equ $ + 6
.l04a5 equ $ + 5
.l04a3 equ $ + 3
.l04a2 equ $ + 2
.l04a1 equ $ + 1
.l04a0
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l04af equ $ + 7
.l04ad equ $ + 5
.l04ac equ $ + 4
.l04ab equ $ + 3
.l04a9 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l04b1
	ld c,(ix+#05)
	ld b,(ix+#06)
.l04b7
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	ld a,(ix+#21)
	dec a
	jp m,l04d4
	ld (ix+#21),a
	ld e,(ix+#22)
	ld d,(ix+#23)
	jr nz,l04eb
	inc bc
	inc bc
	jr l04b7
.l04d4
	ld (ix+#20),#00
.l04d8
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l04f6
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l04eb
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l02c6
.l04f6
	dec de
	ld a,d
	or e
	jr nz,l0507
	inc hl
	ld a,(hl)
	ld (ix+#20),a
	inc hl
	inc bc
	inc bc
	inc bc
	inc de
	jr l04d8
.l0507
	dec de
	ld a,d
	or e
	inc de
	inc de
	jr nz,l0522
	inc hl
	ld a,(hl)
	ld (ix+#21),a
	inc hl
	ld e,(hl)
	ld (ix+#22),e
	inc hl
	ld d,(hl)
	ld (ix+#23),d
	inc bc
	inc bc
	inc bc
	jr l04eb
.l0522
	inc bc
	inc bc
	jr l04eb
.l0526
.music_end
	db #00
.l0527
	db #00
.l0528
	db #03
	dw l0560,l05a3,l05bd
	db #05
	dw l1221,l123a,l1257
	db #03
	dw l0c28,l0c69,l0caa
	db #01
	dw l13c3,l13db,l13f2
	db #03
	dw l080b,l0853,l08d6
	db #02
	dw l0f02,l0f39,l0fca
	db #03
	dw ldf3e,ldf42,ldf46
	db #03
	dw l166a,l166e,l1672
.l0560
	dw l072b
	db #02,#00,#03
	dw l072b
	dw l05de
	db #01,#00,#f4
	dw l05de
	db #01,#00,#00
	dw l05de
	db #01,#00,#f4
	dw l05de
	db #01,#00,#00
	dw l05de
	db #01,#00,#f4
	dw l05de
	db #01,#00,#00
	dw l05de
	db #01,#00,#f4
	dw l05de
	db #01,#00,#00
	db #02,#00,#08
	dw l0659,l06b5,l06b5
	db #02,#00,#02
	dw l0776,l06b5,l06b5,#0000
.l05a3
	dw l05f1
	db #02,#00,#07
	dw l05f1,l06f1
	db #02,#00,#04
	dw l067e
	db #02,#00,#02
	dw l07da
	db #02,#00,#02
	dw l067e,#0000
.l05bd
	dw l0615,l0615,l0615,l0615
	db #02,#00,#08
	dw l063e
	db #02,#00,#04
	dw l0708
	db #02,#00,#02
	dw l0745
	db #02,#00,#04
	dw l0708,#0000
.l05de equ $ + 3
.l05db
	db #ff,#80,#87,#d0,#8a,#90,#81,#b9
	db #e1,#2e,#2d,#2b,#2a,#27,#26,#27
.l05f1 equ $ + 6
	db #2a,#2b,#2a,#27,#26,#87,#d1,#8a
	db #91,#ba,#e7,#37,#d3,#bb,#8c,#e7
	db #1f,#d1,#8a,#bc,#e3,#33,#80,#d1
	db #8a,#91,#ba,#e7,#37,#d3,#bb,#8c
	db #e3,#21,#21,#d1,#8a,#bc,#e3,#33
.l0615 equ $ + 2
	db #80,#87,#d2,#8a,#90,#b8,#83,#88
	db #01,#01,#e1,#13,#13,#11,#13,#e7
	db #80,#e3,#0f,#80,#ef,#13,#e3,#11
	db #e3,#80,#e1,#13,#13,#11,#13,#e7
	db #80,#e3,#14,#80,#ef,#13,#e3,#11
.l063e equ $ + 3
	db #e3,#80,#87,#d4,#8a,#b8,#90,#82
	db #88,#01,#01,#e5,#13,#e1,#13,#e3
	db #0e,#11,#e7,#13,#e5,#13,#e1,#13
.l0659 equ $ + 6
	db #e3,#0e,#11,#16,#15,#87,#d5,#8a
	db #b8,#91,#bc,#e1,#37,#e3,#1f,#e1
	db #1f,#e3,#37,#e1,#1f,#1f,#37,#1f
	db #1f,#1f,#e1,#37,#e3,#1f,#e1,#1f
	db #e3,#37,#e1,#1f,#1f,#e3,#37,#e1
.l067e equ $ + 3
	db #37,#37,#87,#d1,#8a,#91,#81,#b9
	db #e1,#2b,#2d,#2e,#32,#d3,#bb,#8c
	db #1f,#d1,#8a,#b9,#32,#35,#37,#ef
	db #80,#d3,#bb,#8c,#e3,#21,#21,#e7
	db #80,#d1,#8a,#b9,#e1,#2b,#2b,#29
	db #2b,#d3,#bb,#8c,#e3,#1f,#80,#ef
	db #80,#d3,#bb,#8c,#e3,#21,#21,#e7
.l06b5 equ $ + 2
	db #80,#87,#d5,#8a,#b8,#83,#88,#01
	db #01,#e1,#37,#39,#3a,#32,#35,#3e
	db #41,#43,#37,#35,#32,#2e,#e1,#2b
	db #32,#2b,#2b,#26,#2b,#29,#2b,#2e
	db #32,#35,#37,#e1,#43,#43,#41,#43
	db #32,#2b,#32,#35,#37,#35,#32,#2e
	db #e1,#2b,#32,#2b,#2b,#37,#37,#35
.l06f1 equ $ + 6
	db #37,#35,#2e,#2d,#2b,#87,#d6,#8a
	db #b8,#91,#83,#88,#01,#01,#f7,#1f
	db #80,#1f,#80,#1f,#80,#e3,#1d,#1f
.l0708 equ $ + 5
	db #ff,#1f,#e7,#80,#87,#d4,#8a,#b8
	db #90,#82,#88,#01,#01,#e1,#13,#e3
	db #13,#e1,#13,#e3,#0e,#11,#e1,#13
	db #11,#0e,#80,#e5,#13,#e1,#13,#e3
	db #0e,#11,#e1,#13,#11,#16,#18,#87
.l072b
	db #d5,#8a,#b8,#91,#83,#88,#01,#01
	db #e1,#43,#43,#41,#43,#e3,#32,#33
	db #3a,#39,#e3,#3a,#39,#32,#33,#3a
.l0745 equ $ + 2
	db #39,#87,#d4,#8a,#b8,#90,#82,#88
	db #01,#01,#e1,#13,#13,#11,#13,#e3
	db #80,#0e,#11,#13,#e1,#0e,#0e,#0c
	db #0e,#e3,#80,#09,#0c,#0e,#e1,#15
	db #15,#13,#15,#e3,#80,#10,#13,#15
	db #e1,#10,#10,#0e,#10,#e3,#80,#0b
.l0776 equ $ + 3
	db #0e,#10,#87,#d5,#8a,#81,#91,#bc
	db #e3,#80,#e1,#37,#e3,#37,#37,#e1
	db #37,#d3,#bb,#8c,#21,#d5,#b8,#8a
	db #bc,#37,#37,#37,#e3,#80,#e1,#32
	db #e3,#32,#32,#e1,#32,#d3,#bb,#8c
	db #21,#d5,#b8,#8a,#bc,#32,#d3,#bb
	db #8c,#21,#21,#d5,#b8,#8a,#bc,#e3
	db #80,#e1,#39,#e3,#39,#39,#e1,#39
	db #d3,#bb,#8c,#21,#d5,#b8,#8a,#bc
	db #39,#39,#39,#e3,#80,#e1,#34,#e3
	db #34,#34,#e1,#34,#d3,#bb,#8c,#21
	db #d5,#b8,#8a,#bc,#34,#d3,#bb,#8c
.l07da equ $ + 7
	db #21,#21,#d5,#b8,#8a,#bc,#87,#d5
	db #8a,#b8,#91,#82,#88,#01,#01,#e1
	db #43,#43,#41,#43,#e3,#80,#32,#35
	db #37,#e1,#3e,#3e,#3c,#3e,#e3,#80
	db #39,#30,#32,#e1,#45,#45,#43,#45
	db #e3,#80,#34,#37,#39,#e1,#40,#40
	db #3e,#40,#e3,#80,#3b,#32,#34,#87
.l080b
	dw l09f4,l09f4
	db #02,#00,#08
	dw l0a55,l0a65,l0b9a
	db #02,#00,#03
	dw l05db,l0a65
	db #02,#00,#02
	dw l0bde
	db #01,#00,#f9
	dw l0bde
	db #01,#00,#f9
	dw l0bde
	db #01,#00,#00
	dw l0bde
	db #01,#00,#f9
	dw l0bde
	db #01,#00,#fe
	dw l0bde
	db #01,#00,#02
	dw l0bde
	db #01,#00,#fd
	dw l0bde
	db #01,#00,#04
	dw l0bde
	db #02,#00,#02
	dw l0c00,#0000
.l0853
	dw l093d,l093d
	db #02,#00,#04
	dw l0a18
	db #01,#00,#03
	dw l0a18
	db #01,#00,#03
	dw l0a18,l0a18,l0a18,l0a18
	dw l0a18,l0b19,l0a18,l0a18
	dw l0b5a
	db #02,#00,#04
	dw l0a18,l0a18,l0a18,l0b19
	dw l0a18,l0a18,l0b5a
	db #02,#00,#02
	dw l0a18
	db #01,#00,#03
	dw l0a18,l0a18
	db #02,#00,#04
	dw l0ba1,l0a18,l0a18,l0ba1
	dw l0ba1
	db #01,#00,#fe
	dw l0a18
	db #01,#00,#fe
	dw l0a18
	db #01,#00,#02
	dw l0a18
	db #01,#00,#02
	dw l0a18
	db #01,#00,#fd
	dw l0a18
	db #01,#00,#fd
	dw l0a18
	db #01,#00,#04
	dw l0a18
	db #01,#00,#04
	dw l0a18
	db #02,#00,#02
	dw l0a18
	db #01,#00,#03
	dw l0a18,l0a18,#0000
.l08d6
	dw l095c,l09a9
	db #02,#00,#08
	dw l0a3c,l0a3c,l0a3c,l0abe
	dw l0a3c,l0a3c,l0aeb
	db #02,#00,#04
	dw l0a3c,l0a3c,l0a3c,l0abe
	dw l0a3c,l0a3c,l0aeb
	db #02,#00,#04
	dw l0a3c
	db #02,#00,#04
	dw l0bc5,l0a3c,l0a3c,l0bc5
	dw l0bc5
	db #01,#00,#fe
	dw l0a3c
	db #01,#00,#fe
	dw l0a3c
	db #01,#00,#02
	dw l0a3c
	db #01,#00,#02
	dw l0a3c
	db #01,#00,#fd
	dw l0a3c
	db #01,#00,#fd
	dw l0a3c
	db #01,#00,#04
	dw l0a3c
	db #01,#00,#04
	dw l0a3c
	db #02,#00,#04
	dw l0a3c,#0000
.l093d
	db #d6,#8a,#b8,#91,#83,#88,#01,#01
	db #ff,#0c,#11,#13,#ef,#14,#13,#ff
	db #0f,#0e,#ff,#17,#f7,#13,#e3,#80
.l095c equ $ + 7
	db #d3,#bb,#8c,#e1,#21,#21,#87,#d1
	db #8a,#b8,#90,#82,#88,#01,#01,#e3
	db #24,#e7,#24,#24,#24,#e3,#24,#e3
	db #24,#e7,#24,#24,#24,#e3,#24,#e3
	db #24,#e7,#23,#23,#23,#e3,#23,#e3
	db #26,#e7,#27,#e3,#27,#27,#e7,#26
	db #e3,#26,#e3,#24,#e7,#24,#24,#24
	db #e3,#24,#e3,#26,#e7,#26,#26,#26
	db #e3,#26,#e3,#23,#e7,#23,#23,#23
	db #e3,#23,#e3,#23,#e7,#23,#23,#23
.l09a9 equ $ + 4
	db #e1,#23,#23,#87,#d1,#8a,#91,#81
	db #b9,#e3,#24,#e7,#24,#30,#24,#e1
	db #24,#24,#e3,#24,#e7,#24,#30,#24
	db #e1,#24,#24,#e3,#25,#e7,#26,#32
	db #26,#e3,#26,#e3,#26,#e7,#27,#33
	db #e3,#27,#33,#26,#e3,#24,#e7,#24
	db #30,#24,#e1,#24,#24,#e3,#26,#e7
	db #26,#32,#26,#e1,#26,#26,#e3,#23
	db #e7,#23,#2f,#23,#e1,#23,#23,#e3
.l09f4 equ $ + 7
	db #1f,#e7,#1f,#1f,#eb,#80,#87,#d2
	db #8a,#91,#bc,#f7,#24,#e7,#24,#c3
	db #f7,#24,#e7,#24,#c1,#f7,#26,#e7
	db #26,#f7,#27,#e7,#27,#c5,#f7,#27
	db #e7,#27,#c2,#f7,#26,#e7,#26,#ff
.l0a18 equ $ + 3
	db #23,#80,#87,#d0,#8a,#b8,#81,#91
	db #e1,#18,#18,#18,#18,#d3,#bb,#8c
	db #e3,#21,#d0,#b8,#8a,#d0,#16,#18
	db #18,#d3,#bb,#8c,#e3,#21,#d0,#b8
.l0a3c equ $ + 7
	db #8a,#d0,#90,#e1,#18,#18,#87,#da
	db #8a,#91,#81,#bc,#e1,#24,#24,#24
	db #24,#e3,#24,#e1,#24,#24,#24,#24
	db #24,#24,#e3,#24,#e1,#24,#24,#87
.l0a55
	db #d1,#8a,#b8,#90,#b9,#e3,#80,#e5
	db #30,#32,#e5,#35,#32,#e3,#30,#87
.l0a65
	db #d4,#8a,#b8,#91,#82,#88,#01,#01
	db #e3,#24,#1f,#24,#27,#24,#27,#2b
	db #27,#2e,#2b,#2e,#e7,#2e,#eb,#30
	db #b9,#81,#e3,#1f,#24,#26,#27,#e5
	db #29,#2b,#e3,#2c,#ff,#2b,#b8,#82
	db #88,#01,#01,#e3,#24,#1f,#24,#27
	db #24,#27,#2b,#27,#2e,#2b,#2e,#e7
	db #2e,#e3,#30,#30,#32,#eb,#33,#e3
	db #32,#eb,#30,#b9,#81,#e3,#26,#e1
	db #1d,#20,#24,#29,#29,#2c,#30,#35
	db #1f,#23,#26,#2b,#2b,#2f,#32,#37
.l0abe equ $ + 1
	db #87,#da,#8a,#91,#81,#bc,#e1,#24
	db #24,#24,#24,#e3,#24,#e1,#24,#24
	db #29,#29,#29,#29,#e3,#29,#e1,#29
	db #29,#c2,#e1,#2b,#2b,#2b,#2b,#e3
	db #2b,#e1,#2b,#2b,#2b,#2b,#2b,#2b
.l0aeb equ $ + 6
	db #e3,#2b,#e1,#2b,#2b,#87,#da,#8a
	db #91,#81,#c4,#e1,#24,#24,#24,#24
	db #e3,#24,#e1,#24,#24,#24,#24,#24
	db #24,#e3,#24,#e1,#24,#24,#bc,#e1
	db #29,#29,#29,#29,#e3,#29,#e1,#29
	db #29,#c2,#2b,#2b,#2b,#2b,#e3,#2b
.l0b19 equ $ + 4
	db #e1,#2b,#2b,#87,#d0,#8a,#b8,#81
	db #90,#e1,#18,#18,#18,#18,#d3,#bb
	db #8c,#e3,#21,#d0,#b8,#8a,#d0,#16
	db #18,#1d,#d3,#bb,#8c,#e3,#21,#d0
	db #b8,#8a,#d0,#e1,#1d,#1d,#e1,#1f
	db #1f,#1f,#1f,#d3,#bb,#8c,#e3,#21
	db #d0,#b8,#8a,#d0,#1f,#1f,#1f,#d3
	db #bb,#8c,#e1,#21,#d0,#b8,#8a,#91
.l0b5a equ $ + 5
	db #e1,#13,#1d,#1f,#87,#d0,#8a,#b8
	db #81,#90,#e1,#14,#14,#14,#14,#d3
	db #bb,#8c,#e3,#21,#d0,#b8,#8a,#d0
	db #12,#14,#14,#d3,#bb,#8c,#e3,#21
	db #d0,#b8,#8a,#d0,#e1,#14,#14,#e1
	db #11,#11,#11,#11,#d3,#bb,#8c,#e3
	db #21,#d0,#b8,#8a,#d0,#0f,#11,#13
	db #d3,#bb,#8c,#e3,#21,#d0,#b8,#8a
.l0b9a equ $ + 5
	db #d0,#e1,#13,#13,#87,#d3,#8a,#b9
.l0ba1 equ $ + 4
	db #91,#ff,#24,#87,#d0,#8a,#b8,#81
	db #90,#e1,#1d,#1d,#1d,#1d,#d3,#bb
	db #8c,#e3,#21,#d0,#b8,#8a,#d0,#16
	db #1d,#1d,#d3,#bb,#8c,#e3,#21,#d0
	db #b8,#8a,#d0,#90,#e1,#1d,#1d,#87
.l0bc5
	db #da,#8a,#91,#81,#bc,#e1,#29,#29
	db #29,#29,#e3,#29,#e1,#29,#29,#29
	db #29,#29,#29,#e3,#29,#e1,#29,#29
.l0bde equ $ + 1
	db #87,#da,#8a,#91,#b9,#81,#e3,#27
	db #24,#27,#2b,#27,#e1,#2b,#e3,#27
	db #e1,#27,#e3,#24,#e3,#33,#30,#33
	db #37,#33,#e1,#37,#e3,#33,#e1,#33
.l0c00 equ $ + 3
	db #e3,#30,#87,#da,#8a,#91,#b9,#81
	db #e1,#27,#24,#30,#27,#2b,#1b,#27
	db #30,#24,#27,#30,#27,#2b,#33,#24
	db #30,#e1,#27,#24,#30,#27,#2b,#1b
	db #27,#30,#24,#27,#30,#27,#2b,#33
	db #24,#30,#87
.l0c28
	dw l0d56
	db #02,#00,#08
	dw l0d03,l0d79
	db #02,#00,#04
	dw l0d03,l0d79,l0e1d,l0e1d
	dw l0e1d
	db #01,#00,#01
	dw l0e1d
	db #01,#00,#01
	dw l0e1d
	db #01,#00,#02
	dw l0e1d
	db #01,#00,#02
	dw l0e1d,l0e2f,l0e6d
	db #01,#00,#01
	dw l0e6d
	db #01,#00,#02
	dw l0e6d
	db #01,#00,#03
	dw l0e6d,l0e7f,#0000
.l0c69
	dw l0d5f
	db #02,#00,#08
	dw l0cec,l0da2
	db #02,#00,#04
	dw l0cec,l0da2,l0cec,l0cec
	dw l0cec
	db #01,#00,#01
	dw l0cec
	db #01,#00,#01
	dw l0cec
	db #01,#00,#02
	dw l0cec
	db #01,#00,#02
	dw l0cec,l0e89,l0ea6
	db #01,#00,#01
	dw l0ea6
	db #01,#00,#02
	dw l0ea6
	db #01,#00,#03
	dw l0ea6,l0ebd,#0000
.l0caa
	dw l0d4a
	db #02,#00,#04
	dw l0d68
	db #02,#00,#04
	dw l0d1a,l0dcb
	db #02,#00,#04
	dw l0d1a,l0dcb,l0d1a,l0d1a
	dw l0d1a
	db #01,#00,#01
	dw l0d1a
	db #01,#00,#01
	dw l0d1a
	db #01,#00,#02
	dw l0d1a
	db #01,#00,#02
	dw l0d1a
	db #02,#00,#04
	dw l0ec8
	db #02,#00,#04
	dw l0ed4
	db #02,#00,#04
	dw l0ee0,l0ef4,#0000
.l0cec
	db #d1,#8a,#91,#81,#bc,#e1,#2b,#2b
	db #2b,#e5,#2b,#e1,#2b,#2b,#2b,#e5
.l0d03 equ $ + 7
.l0d00 equ $ + 4
	db #2b,#c2,#e1,#29,#e5,#29,#87,#da
	db #8a,#91,#81,#b9,#e1,#26,#2e,#32
	db #37,#2b,#2e,#32,#37,#2b,#2e,#32
.l0d1a equ $ + 6
	db #37,#29,#2d,#30,#35,#87,#91,#81
	db #d9,#c6,#8c,#e3,#3c,#d0,#8a,#b8
	db #e1,#13,#13,#d3,#bb,#8c,#e3,#21
	db #d0,#8a,#b8,#e1,#13,#13,#d9,#c6
	db #8c,#e3,#3c,#d0,#8a,#b8,#e1,#13
	db #13,#d3,#bb,#8c,#e1,#21,#d3,#bb
.l0d4a equ $ + 6
	db #8c,#e3,#21,#e1,#21,#87,#d2,#8a
	db #91,#b8,#82,#88,#00,#00,#ef,#0f
.l0d56 equ $ + 2
	db #11,#87,#d2,#8a,#90,#81,#b9,#ef
.l0d5f equ $ + 3
	db #33,#35,#87,#d2,#8a,#91,#81,#c2
.l0d68 equ $ + 4
	db #ef,#27,#29,#87,#d4,#8a,#91,#b8
	db #82,#88,#00,#00,#f7,#13,#e3,#11
.l0d79 equ $ + 5
	db #90,#e1,#11,#11,#87,#e1,#27,#2b
	db #2e,#33,#27,#2b,#2e,#33,#e1,#27
	db #2b,#30,#33,#27,#2b,#30,#33,#e1
	db #29,#2d,#30,#35,#29,#2d,#30,#35
	db #e1,#2a,#2d,#32,#36,#b8,#2a,#2d
.l0da2 equ $ + 6
	db #e0,#32,#33,#32,#33,#87,#c4,#e1
	db #2b,#2b,#37,#e5,#37,#e1,#2b,#2b
	db #c3,#e1,#2b,#2b,#37,#e5,#37,#e1
	db #2b,#2b,#ca,#e1,#24,#24,#30,#e5
	db #30,#e1,#24,#24,#c2,#e1,#26,#26
.l0dcb equ $ + 7
	db #32,#e5,#32,#e1,#26,#26,#87,#d9
	db #c6,#8c,#e3,#3c,#d0,#8a,#b8,#e1
	db #0f,#0f,#d3,#bb,#8c,#21,#d0,#8a
	db #b8,#0f,#0f,#0f,#d9,#c6,#8c,#e3
	db #3c,#d0,#8a,#b8,#e1,#0c,#0c,#d3
	db #bb,#8c,#21,#d0,#8a,#b8,#0c,#0c
	db #0c,#d9,#c6,#8c,#e3,#3c,#d0,#8a
	db #b8,#e1,#11,#11,#d3,#bb,#8c,#21
	db #d0,#8a,#b8,#11,#11,#11,#d9,#c6
	db #8c,#e3,#3c,#d0,#8a,#b8,#e1,#0e
	db #0e,#d3,#bb,#8c,#21,#21,#21,#21
.l0e1d equ $ + 1
	db #87,#e1,#37,#36,#36,#37,#37,#36
	db #36,#37,#37,#36,#36,#37,#37,#36
.l0e2f equ $ + 3
	db #36,#37,#87,#da,#8a,#b8,#91,#81
	db #b9,#e1,#24,#28,#2b,#30,#34,#37
	db #35,#34,#b8,#e0,#30,#31,#30,#31
	db #30,#31,#30,#31,#30,#31,#30,#31
	db #30,#31,#30,#31,#b9,#e1,#20,#23
	db #28,#2c,#2f,#34,#39,#38,#b8,#e0
	db #34,#35,#34,#35,#34,#35,#34,#35
	db #34,#35,#34,#35,#34,#35,#34,#35
.l0e6d equ $ + 1
	db #87,#e1,#32,#31,#2d,#32,#31,#2d
	db #39,#34,#32,#31,#2d,#32,#31,#2d
.l0e7f equ $ + 3
	db #39,#34,#87,#b9,#e3,#2d,#2d,#2d
.l0e89 equ $ + 5
	db #e1,#2d,#ff,#2d,#87,#d4,#8a,#91
	db #81,#c1,#e7,#2b,#eb,#2b,#e1,#2b
	db #2b,#2b,#2b,#e3,#2b,#c4,#e7,#2c
	db #eb,#2c,#e1,#2c,#2c,#2c,#2c,#e3
.l0ea6 equ $ + 2
	db #2c,#87,#d0,#c2,#e3,#2d,#e1,#2d
	db #2d,#e3,#2d,#e1,#2d,#2d,#e3,#2d
	db #e1,#2d,#2d,#e3,#2d,#e1,#2d,#2d
.l0ebd equ $ + 1
	db #87,#c7,#e3,#2d,#2d,#2d,#e1,#2d
.l0ec8 equ $ + 4
	db #c2,#ff,#2d,#87,#d9,#c6,#8c,#e3
	db #3c,#d0,#b8,#8a,#e1,#0c,#0c,#87
.l0ed4
	db #d9,#c6,#8c,#e3,#3c,#d0,#b8,#8a
	db #e1,#10,#10,#87
.l0ee0
	db #d9,#c6,#8c,#e7
	db #3c,#d3,#bb,#21,#d9,#c6,#8c,#e7
	db #3c,#d3,#bb,#e1,#21,#e5,#21,#87
.l0ef4
	db #d4,#b8,#8a,#90,#81,#e3,#15,#15
	db #15,#e1,#15,#ff,#15,#87
.l0f02
	dw l1022
	db #02,#00,#0d
	dw l1022,l10ba,l10ba,l119a
	dw l10d1,l10d1,l11e4,l11e4
	dw l10d1,l11e4,l1070
	db #01,#00,#03
	dw l1070
	db #01,#00,#ff
	dw l1070,l1070,l1070
	db #01,#00,#03
	dw l1070
	db #01,#00,#ff
	dw l1070,l1070,#0000
.l0f39
	dw l05db
	db #02,#00,#07
	dw l05db
	db #02,#00,#08
	dw l1070
	db #02,#00,#08
	dw l109f,l109f,l109f,l1134
	dw l1134,l114f,l114f,l116a
	dw l109f,l109f,l1134,l1134
	dw l114f,l114f,l116a,l109f
	dw l109f,l1134,l1134,l114f
	dw l114f,l116a,l109f,l109f
	dw l1134,l1134,l114f,l114f
	dw l116a,l109f,l109f,l1134
	dw l1134,l114f,l114f,l116a
	dw l109f,l109f,l1134,l1134
	dw l114f,l114f,l116a,l109f
	dw l109f,l1134,l1134,l114f
	dw l114f,l116a,l109f,l109f
	dw l1134,l1134,l114f,l114f
	dw l116a,l109f,l109f,l1134
	dw l1134,l114f,l114f,l116a
	dw #0000
.l0fca
	dw l105b
	db #02,#00,#07
	dw l105b
	db #02,#00,#08
	dw l108a,l108a
	db #01,#00,#fe
	dw l108a,l110e,l108a
	db #01,#00,#fe
	dw l108a,l110e,l108a
	db #01,#00,#fe
	dw l108a,l110e,l108a
	db #01,#00,#fe
	dw l108a,l110e,l108a
	db #01,#00,#fe
	dw l108a,l110e,l119a,l108a
	db #01,#00,#fe
	dw l108a,l110e,l108a
	db #01,#00,#fe
	dw l108a,l110e,l108a
	db #01,#00,#fe
	dw l108a,l110e,#0000
.l1022
	db #91,#81,#d9,#c6,#8c,#e3,#3c,#d9
	db #8a,#37,#1f,#1f,#37,#1f,#2b,#1f
	db #d9,#c6,#8c,#e3,#3c,#d9,#8a,#37
	db #1f,#1f,#37,#1f,#2b,#1f,#87,#d1
	db #8a,#91,#b8,#83,#88,#00,#00,#e0
	db #13,#16,#1a,#1f,#22,#26,#2b,#2e
	db #32,#37,#3a,#3e,#43,#46,#4a,#4f
.l105b equ $ + 1
	db #87,#d7,#8a,#91,#81,#bc,#e3,#2b
	db #e7,#2b,#2b,#2b,#e3,#2b,#2b,#e7
.l1070 equ $ + 6
	db #2b,#2b,#2b,#e3,#2b,#87,#d1,#8a
	db #90,#b8,#82,#88,#00,#00,#e3,#32
	db #4a,#32,#32,#3e,#32,#4a,#32,#32
	db #4a,#32,#32,#3e,#3e,#4a,#32,#87
.l108a
	db #d4,#8a,#91,#81,#bc,#e3,#1f,#e7
	db #1f,#1f,#1f,#e3,#2b,#1f,#e7,#1f
.l109f equ $ + 5
	db #1f,#1f,#e3,#2b,#87,#d4,#8a,#91
	db #81,#b8,#e7,#13,#e3,#13,#13,#d3
	db #bb,#8c,#e3,#21,#d0,#b8,#8a,#e1
	db #13,#13,#e3,#13,#e1,#11,#11,#87
.l10ba
	db #d0,#8a,#91,#81,#b9,#e3,#43,#37
	db #2b,#1f,#37,#1f,#2b,#2e,#1f,#37
.l10d1 equ $ + 7
	db #2b,#1f,#37,#1f,#37,#2b,#87,#d4
	db #8a,#91,#81,#b9,#ef,#2b,#29,#2b
	db #e3,#1a,#1d,#e1,#1f,#22,#e3,#26
	db #29,#2e,#e1,#30,#35,#e3,#36,#ff
	db #35,#ef,#80,#e3,#29,#31,#35,#e1
	db #35,#36,#f7,#35,#e7,#80,#e7,#33
	db #31,#ef,#26,#32,#ef,#b8,#82,#88
	db #01,#01,#e1,#2a,#2b,#2a,#2b,#ef
.l110e equ $ + 4
	db #2a,#e7,#80,#87,#d4,#8a,#91,#81
	db #c4,#e3,#1d,#e7,#1d,#1d,#1d,#e3
	db #29,#1d,#e7,#1d,#1d,#1d,#e3,#29
	db #c1,#e3,#1d,#e7,#1d,#1d,#1d,#e3
	db #29,#c4,#1e,#e7,#1e,#1e,#1e,#e3
.l1134 equ $ + 2
	db #2a,#87,#d4,#8a,#91,#81,#b8,#e7
	db #11,#e3,#11,#11,#d3,#bb,#8c,#e3
	db #21,#d0,#b8,#8a,#e1,#11,#11,#e3
.l114f equ $ + 5
	db #11,#e1,#0f,#0f,#87,#d4,#8a,#91
	db #81,#b8,#e7,#19,#e3,#19,#19,#d3
	db #bb,#8c,#e3,#21,#d0,#b8,#8a,#e1
	db #19,#19,#e3,#19,#e1,#17,#17,#87
.l116a
	db #d4,#8a,#91,#81,#b8,#e7,#16,#e3
	db #16,#16,#d3,#bb,#8c,#e3,#21,#d0
	db #b8,#8a,#e1,#16,#16,#e3,#16,#e1
	db #14,#14,#e7,#1a,#e3,#1a,#1a,#d3
	db #bb,#8c,#e3,#21,#d0,#b8,#8a,#e1
	db #1a,#1a,#e3,#1a,#e1,#24,#26,#87
.l119a
	db #d1,#8a,#b8,#90,#82,#88,#00,#00
	db #e3,#1f,#22,#26,#2b,#2e,#32,#2e
	db #2b,#1f,#22,#26,#2b,#2e,#32,#2e
	db #2b,#1d,#20,#24,#29,#2c,#30,#2c
	db #29,#1d,#20,#24,#29,#2c,#30,#2c
	db #29,#1d,#20,#25,#29,#2c,#31,#2c
	db #29,#1d,#20,#25,#29,#2c,#31,#2c
	db #29,#1d,#22,#26,#29,#2e,#32,#2e
	db #29,#1e,#21,#26,#2a,#2d,#32,#2d
.l11e4 equ $ + 2
	db #2a,#87,#d4,#8a,#91,#b8,#82,#88
	db #00,#00,#e3,#2b,#29,#2b,#eb,#2e
	db #e7,#2b,#e3,#2b,#29,#2b,#eb,#2e
	db #e7,#2b,#e3,#2c,#e7,#2c,#2c,#e3
	db #30,#ef,#29,#80,#e7,#80,#81,#b9
	db #e3,#2c,#29,#2c,#31,#2c,#31,#35
	db #31,#e3,#25,#20,#25,#29,#2c,#2e
	db #30,#31,#ff,#32,#80,#87,#87
.l1221
	dw l12ad
	db #02,#00,#0b
	dw l12ad,l12d9
	db #02,#00,#08
	dw l12fa
	db #02,#00,#08
	dw l1309,l1360,l137c,#0000
.l123a
	dw l1278
	db #02,#00,#04
	dw l1278
	db #02,#00,#04
	dw l1278
	db #02,#00,#02
	dw l132b
	db #02,#00,#02
	dw l1278
	db #02,#00,#02
	dw l132b,#0000
.l1257
	dw l13b3,l13b3
	db #02,#00,#04
	dw l12c0,l05db
	db #02,#00,#04
	dw l12ad
	db #02,#00,#04
	dw l1318
	db #02,#00,#04
	dw l12ad
	db #02,#00,#04
	dw l1318,#0000
.l1278
	db #d0,#8a,#b8,#90,#82,#88,#00,#00
	db #e1,#15,#15,#d3,#bb,#8c,#21,#d0
	db #b8,#8a,#1f,#15,#15,#d3,#bb,#8c
	db #21,#21,#d0,#b8,#8a,#15,#15,#d3
	db #bb,#8c,#21,#d0,#b8,#8a,#16,#e1
	db #15,#e0,#15,#15,#d3,#bb,#8c,#e0
.l12ad equ $ + 5
	db #21,#21,#e1,#21,#87,#d0,#8a,#91
	db #81,#bc,#e1,#21,#21,#2d,#21,#21
	db #e0,#21,#21,#e1,#21,#e1,#2d,#87
.l12c0
	db #d9,#8a,#91,#81,#b9,#e1,#2d,#2d
	db #39,#2d,#2d,#34,#2d,#2d,#39,#2d
	db #2d,#34,#2d,#d1,#bc,#37,#38,#39
.l12d9 equ $ + 1
	db #87,#d9,#8a,#90,#b8,#82,#88,#00
	db #00,#e1,#21,#21,#21,#21,#21,#21
	db #21,#21,#21,#21,#e0,#21,#e1,#21
	db #21,#e0,#21,#1f,#1e,#1d,#1c,#18
.l12fa equ $ + 2
	db #15,#87,#d9,#8a,#91,#81,#b9,#e0
	db #34,#32,#30,#2d,#34,#32,#30,#2d
.l1309 equ $ + 1
	db #87,#d9,#8a,#91,#81,#b9,#e0,#30
	db #2e,#2d,#29,#30,#2e,#2d,#29,#87
.l1318
	db #d0,#8a,#91,#81,#c4,#e1,#21,#21
	db #2d,#21,#21,#e0,#21,#21,#e1,#21
.l132b equ $ + 3
	db #e1,#2d,#87,#d0,#8a,#b8,#90,#82
	db #88,#00,#00,#e1,#1d,#1d,#d3,#bb
	db #8c,#21,#d0,#b8,#8a,#1d,#1d,#1d
	db #d3,#bb,#8c,#21,#21,#d0,#b8,#8a
	db #1d,#1d,#d3,#bb,#8c,#21,#d0,#b8
	db #8a,#1d,#e1,#1d,#e0,#1d,#1d,#d3
	db #bb,#8c,#e0,#21,#21,#e1,#21,#87
.l1360
	db #d1,#8a,#91,#81,#b9,#e5,#39,#e5
	db #3b,#37,#39,#e3,#35,#37,#e5,#39
	db #e5,#3b,#37,#39,#e1,#41,#e0,#43
.l137c equ $ + 4
	db #41,#e3,#40,#87,#d1,#8a,#90,#b8
	db #82,#88,#00,#00,#e1,#29,#24,#29
	db #e3,#2d,#e1,#29,#2d,#e3,#2e,#e1
	db #2d,#2e,#2d,#24,#29,#2e,#2d,#e1
	db #29,#24,#29,#e3,#2d,#e1,#29,#2d
	db #e3,#2e,#e1,#2d,#2e,#e0,#30,#35
	db #b9,#e0,#3a,#39,#35,#30,#2e,#2d
.l13b3 equ $ + 3
	db #29,#24,#87,#d4,#8a,#91,#81,#bc
	db #e1,#32,#e3,#2d,#ef,#2d,#e7,#80
	db #e1,#80,#87
.l13c3
	dw l165b,l165b,l14a6,l14a6
	dw l1589,l14a6,l14a6,l1589
	dw l15da,l15da,l1613,#0000
.l13db
	dw l14cf
	db #02,#00,#03
	dw l14cf,l1510,l14cf,l14cf
	dw l1510,l14cf,l14cf,l1510
	dw #0000
.l13f2
	dw l1409
	db #02,#00,#03
	dw l1409,l1440,l1409,l1409
	dw l1440,l1409,l1409,l1440
	dw #0000
.l1409
	db #d9,#8a,#91,#81,#cb,#e1,#29,#2c
	db #30,#2c,#30,#2c,#29,#2c,#30,#2c
	db #30,#2c,#29,#2c,#30,#2c,#30,#2c
	db #29,#2c,#30,#2c,#30,#2c,#27,#2b
	db #30,#2b,#30,#2b,#27,#2b,#30,#2b
	db #30,#2b,#27,#2b,#30,#2b,#30,#2b
.l1440 equ $ + 7
	db #27,#2b,#30,#2b,#30,#2b,#87,#d9
	db #91,#81,#cb,#e1,#29,#2c,#30,#2c
	db #30,#2c,#29,#2c,#30,#2c,#30,#2c
	db #29,#2c,#31,#2c,#31,#2c,#29,#2c
	db #31,#2c,#31,#2c,#2b,#2f,#32,#2f
	db #32,#2f,#2b,#2f,#32,#2f,#32,#2f
	db #2b,#30,#34,#30,#34,#30,#2b,#30
	db #34,#30,#34,#30,#2d,#30,#35,#30
	db #35,#30,#2d,#30,#35,#30,#35,#30
	db #2e,#32,#35,#32,#35,#32,#2e,#32
	db #35,#32,#35,#32,#2d,#32,#34,#32
	db #34,#32,#2d,#32,#34,#32,#34,#32
	db #2d,#31,#34,#31,#34,#31,#2d,#31
.l14a6 equ $ + 5
	db #34,#31,#34,#31,#87,#d4,#b8,#8a
	db #91,#81,#e3,#35,#38,#3c,#35,#38
	db #3c,#e1,#37,#38,#ef,#35,#e3,#80
	db #81,#cb,#e1,#2b,#27,#2b,#30,#2b
	db #30,#33,#30,#33,#37,#33,#37,#3e
	db #3f,#ef,#3c,#e3,#80,#87
.l14cf
	db #d9,#8a,#b8,#90,#82,#88,#00,#00
	db #e3,#11,#e1,#1d,#1d,#1d,#1d,#e3
	db #11,#e1,#1d,#1d,#e3,#1d,#e3,#11
	db #e1,#1d,#1d,#1d,#1d,#e3,#11,#e1
	db #1d,#1d,#e3,#1d,#e3,#0c,#e1,#18
	db #18,#18,#18,#e3,#0c,#e1,#18,#18
	db #e3,#18,#e3,#0c,#e1,#18,#18,#18
	db #18,#e3,#0c,#e1,#18,#18,#e3,#18
.l1510 equ $ + 1
	db #87,#d9,#8a,#b8,#90,#82,#88,#00
	db #00,#e3,#11,#e1,#1d,#1d,#1d,#1d
	db #e3,#11,#e1,#1d,#1d,#e3,#1d,#e3
	db #0d,#e1,#19,#19,#19,#19,#e3,#0d
	db #e1,#19,#19,#e3,#19,#e3,#13,#e1
	db #1f,#1f,#1f,#1f,#e3,#13,#e1,#1f
	db #1f,#e3,#1f,#e3,#0c,#e1,#18,#18
	db #18,#18,#e3,#0c,#e1,#18,#18,#e3
	db #18,#e3,#11,#e1,#1d,#1d,#1d,#1d
	db #e3,#11,#e1,#1d,#1d,#e3,#1d,#e3
	db #16,#e1,#22,#22,#22,#22,#e3,#16
	db #e1,#22,#22,#e3,#22,#e3,#15,#e1
	db #21,#21,#21,#21,#e3,#15,#e1,#21
	db #21,#e3,#21,#e3,#15,#e1,#21,#21
	db #21,#21,#e1,#15,#1d,#1c,#1a,#19
.l1589 equ $ + 2
	db #16,#87,#d4,#8a,#91,#81,#cb,#e3
	db #35,#38,#3c,#35,#38,#3c,#3d,#e5
	db #38,#e1,#3d,#e3,#38,#35,#31,#e1
	db #2b,#2f,#32,#37,#3b,#3e,#e3,#3c
	db #3c,#3b,#e1,#30,#34,#37,#3c,#40
	db #43,#b8,#e0,#34,#35,#34,#35,#e3
	db #34,#30,#cb,#e3,#3a,#39,#35,#3a
	db #39,#35,#3a,#35,#32,#b8,#e0,#16
	db #18,#1a,#1b,#1d,#1f,#22,#24,#26
	db #27,#28,#29,#82,#88,#00,#00
.l15da equ $ + 4
	db #f7,#2d,#31,#87,#d0,#8a,#91,#81
	db #cb,#e1,#35,#38,#37,#35,#3c,#35
	db #35,#e3,#38,#e1,#35,#3c,#37,#e1
	db #35,#38,#37,#35,#3c,#35,#35,#e3
	db #38,#e1,#35,#3c,#37,#e3,#33,#32
	db #30,#2b,#e1,#27,#26,#e3,#24,#e3
	db #33,#32,#30,#e1,#2b,#3f,#3e,#e0
.l1613 equ $ + 5
	db #3f,#3e,#e3,#3c,#87,#d0,#8a,#91
	db #81,#b8,#e3,#29,#2c,#30,#29,#2c
	db #30,#e3,#29,#2c,#31,#e1,#29,#2c
	db #31,#35,#e3,#38,#e3,#2b,#2f,#32
	db #2b,#2f,#32,#e3,#2b,#30,#34,#e1
	db #2b,#30,#34,#e0,#34,#35,#34,#35
	db #e1,#34,#e3,#2d,#30,#35,#2d,#30
	db #35,#e3,#2e,#32,#35,#2e,#32,#35
	db #cb,#e3,#21,#26,#28,#2d,#32,#34
.l165b equ $ + 5
	db #e7,#34,#32,#31,#87,#d2,#8a,#91
	db #81,#cb,#ef,#35,#33,#35,#e7,#32
	db #33,#ff,#30,#87
.l166a
	dw l1676,#0000
.l166e
	dw l1689,#0000
.l1672
	dw l16a3,#0000
.l1676
	db #d0,#8a,#91,#81,#b9,#e1,#3a,#39
	db #37,#36,#e3,#33,#32,#30,#2e,#2d
	db #ff,#2b,#87
.l1689
	db #d1,#8a,#91,#b8,#82,#88,#00,#00
	db #e1,#2b,#32,#37,#2b,#32,#37,#2b
	db #32,#37,#2b,#32,#37,#3e,#41,#ff
	db #43,#87
.l16a3
	db #d1,#8a,#91,#81,#bc,#e3,#1f,#e1
	db #1f,#1f,#d3,#8c,#bb,#e3,#21,#d1
	db #8a,#bc,#e1,#1f,#1f,#e3,#1f,#e1
	db #1f,#1f,#d3,#8c,#bb,#e3,#21,#d1
	db #8a,#bc,#e1,#1f,#d3,#8c,#bb,#e3
	db #21,#d1,#8a,#bc,#f7,#80,#e1,#80
	db #87
.lce00
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
.lcec0
	dw lced7,lcee3,lcef2,lcf0a
	dw lcf13,lcf29,lcf36,lcf6a
	dw lcf76,lcf97,lcfa0
.lced7 equ $ + 1
	db #01,#0f,#0c,#0a,#09,#08,#06,#04
.lcee3 equ $ + 5
	db #02,#01,#00,#87,#01,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#02
.lcef2 equ $ + 4
	db #01,#00,#87,#02,#0f,#0e,#0d,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.lcf0a equ $ + 4
	db #01,#80,#87,#02,#0f,#0c,#0a,#06
.lcf13 equ $ + 5
	db #04,#02,#80,#87,#01,#0f,#0e,#0d
	db #0c,#0a,#0a,#0a,#0a,#08,#08,#06
	db #06,#04,#04,#02,#02,#01,#01,#00
.lcf29 equ $ + 3
	db #80,#87,#01,#0a,#0a,#08,#06,#06
	db #04,#04,#02,#02,#00,#80,#87,#01
.lcf36
	db #0f,#0f,#0f,#0f,#0e,#0d,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #08,#08,#08,#08,#06,#06,#06,#06
	db #04,#04,#04,#04,#02,#02,#02,#02
.lcf6a equ $ + 4
	db #00,#80,#87,#01,#0f,#0e,#0d,#0a
	db #09,#07,#05,#03,#01,#00,#87,#05
.lcf76
	db #01,#02,#03,#04,#05,#06,#07,#08
	db #09,#0a,#0b,#0c,#0d,#0e,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#07
	db #06,#05,#04,#03,#02,#01,#00,#87
.lcf97 equ $ + 1
	db #01,#0f,#0d,#0c,#0a,#08,#07,#06
.lcfa0 equ $ + 2
	db #87,#02,#0c,#0a,#08,#06,#04,#02
	db #80,#87
.ld600
	call le6b9
	ld a,(l0527)
	and a
	ret z
	ld a,(lde00)
	and a
	jr nz,ld614
	ld (l0527),a
	jp le7a1
.ld614
	dec a
	ld (lde00),a
	ld a,(lde11)
	and a
	jr nz,ld64d
	ld a,(lde0e)
	and a
	ret z
	dec a
	ld (lde0e),a
	ld a,(lde01)
	ld (lde11),a
	ld a,(lde0f)
	and a
	jr z,ld636
	ld a,(le6d4)
.ld636
	ld b,a
	ld a,(lde02)
	add b
	ld (l04a5),a
	ld a,(lde03)
	add b
	and #0f
	ld (l04a6),a
	ld hl,(lde04)
	ld (l04a9),hl
.ld64d
	ld hl,lde11
	dec (hl)
	ld a,(lde0c)
	and a
	jr z,ld674
	jp p,ld667
	ld hl,(l04a5)
	ld de,(lde08)
	add hl,de
	ld (l04a5),hl
	jr ld674
.ld667
	ld hl,(l04a5)
	ld de,(lde08)
	and a
	sbc hl,de
	ld (l04a5),hl
.ld674
	ld a,(lde0d)
	and a
	jr z,ld697
	jp p,ld68a
	ld hl,(l04a9)
	ld de,(lde0a)
	add hl,de
	ld (l04a9),hl
	jr ld697
.ld68a
	ld hl,(l04a9)
	ld de,(lde0a)
	and a
	sbc hl,de
	ld (l04a9),hl
.ld697
	ld a,(l04a5)
	ld (l04ab),a
	ret
.ld69e
	dw ld6c4,ld6d5,ld6e6,ld6f7
	dw ld708,ld719,ld72a,ld73b
	dw ld74c,ld75d,ld76e,ld77f
	dw ld790,ld7a1,ld7b2,ld7b2
	dw ld7c3,ld7d4,ld7e5
.ld6c4
	db #1e,#c8,#00,#01,#00,#10,#0a,#d7
	db #50,#00,#60,#00,#ff,#01,#ff,#00
.ld6d5 equ $ + 1
	db #00,#1e,#c8,#40,#00,#40,#00,#0a
	db #d7,#a8,#00,#44,#00,#ff,#ff,#01
.ld6e6 equ $ + 2
	db #00,#00,#0a,#c8,#09,#00,#02,#02
	db #04,#d7,#a0,#00,#48,#00,#01,#01
.ld6f7 equ $ + 3
	db #ff,#00,#00,#0a,#c8,#18,#00,#10
	db #00,#04,#fa,#00,#00,#00,#00,#ff
.ld708 equ $ + 4
	db #ff,#01,#00,#00,#1e,#c8,#10,#00
	db #18,#00,#0f,#fa,#02,#00,#00,#00
.ld719 equ $ + 5
	db #ff,#ff,#01,#00,#00,#46,#ff,#08
	db #00,#08,#00,#14,#d7,#02,#00,#00
.ld72a equ $ + 6
	db #00,#ff,#ff,#01,#01,#00,#0a,#ff
	db #08,#00,#18,#00,#0a,#8c,#00,#00
.ld73b equ $ + 7
	db #00,#00,#ff,#ff,#01,#00,#00,#14
	db #ff,#08,#00,#18,#00,#05,#8c,#2a
	db #01,#2a,#01,#ff,#ff,#01,#00,#00
.ld74c
	db #28,#ff,#88,#00,#78,#00,#0f,#fa
	db #ff,#07,#ff,#07,#ff,#ff,#01,#00
.ld75d equ $ + 1
	db #00,#28,#ff,#78,#00,#88,#00,#0f
	db #fa,#00,#00,#01,#00,#ff,#ff,#01
.ld76e equ $ + 2
	db #00,#00,#06,#ff,#22,#00,#22,#00
	db #01,#fa,#00,#00,#00,#00,#ff,#ff
.ld77f equ $ + 3
	db #01,#00,#00,#1e,#ff,#ff,#7f,#80
	db #00,#0a,#8c,#fe,#07,#ff,#07,#ff
.ld790 equ $ + 4
	db #ff,#01,#00,#00,#03,#c8,#08,#00
	db #48,#00,#02,#d7,#00,#00,#00,#00
.ld7a1 equ $ + 5
	db #01,#01,#ff,#00,#00,#19,#ff,#28
	db #01,#30,#00,#14,#8c,#08,#00,#10
.ld7b2 equ $ + 6
	db #00,#ff,#ff,#01,#00,#00,#08,#ff
	db #08,#00,#08,#00,#02,#8c,#00,#00
.ld7c3 equ $ + 7
	db #00,#00,#01,#01,#ff,#00,#00,#0f
	db #ff,#98,#00,#78,#00,#07,#d7,#ff
	db #07,#fe,#07,#ff,#ff,#01,#00,#00
.ld7d4
	db #04,#c8,#c0,#02,#00,#03,#02,#8c
	db #80,#7f,#01,#00,#01,#01,#ff,#00
.ld7e5 equ $ + 1
	db #00,#0c,#c8,#10,#00,#10,#00,#00
	db #fa,#10,#00,#10,#00,#ff,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.lde04 equ $ + 6
.lde03 equ $ + 5
.lde02 equ $ + 4
.lde01 equ $ + 3
.lde00 equ $ + 2
	db #c0,#c0,#00,#00,#00,#00,#00,#00
.lde0d equ $ + 7
.lde0c equ $ + 6
.lde0a equ $ + 4
.lde08 equ $ + 2
.lde07 equ $ + 1
.lde06
	db #00,#00,#00,#00,#00,#00,#00,#00
.lde13 equ $ + 5
.lde11 equ $ + 3
.lde10 equ $ + 2
.lde0f equ $ + 1
.lde0e
	db #00,#00,#00,#00,#00,#14,#14,#17
	db #1f,#31,#36,#40,#45,#5c,#73,#78
	db #7d,#82,#87,#8c,#8d,#a8,#ad,#b2
	db #b7,#80,#00,#00,#0c,#8c,#00,#00
	db #00,#03,#03,#03,#07,#07,#87,#00
	db #0c,#01,#0b,#02,#0a,#03,#09,#04
	db #08,#05,#07,#06,#05,#04,#03,#02
	db #01,#80,#00,#00,#03,#03,#07,#87
	db #00,#00,#0c,#0c,#03,#03,#03,#07
	db #07,#07,#87,#00,#03,#05,#07,#0c
	db #83,#00,#00,#00,#00,#00,#00,#00
	db #00,#03,#03,#03,#03,#03,#03,#03
	db #03,#07,#07,#07,#07,#07,#07,#07
	db #87,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#04,#04,#04,#04,#04,#04
	db #04,#07,#07,#07,#07,#07,#07,#07
	db #87,#00,#00,#05,#05,#09,#89,#00
	db #00,#04,#04,#07,#87,#00,#00,#05
	db #05,#08,#88,#00,#00,#03,#03,#08
	db #88,#00,#00,#04,#04,#09,#89,#00
	db #8c,#01,#01,#00,#00,#06,#06,#05
	db #05,#0d,#0d,#0c,#0c,#12,#12,#11
	db #11,#19,#19,#18,#18,#1e,#1e,#1d
	db #1d,#25,#25,#24,#a4,#00,#00,#03
	db #03,#07,#87,#00,#00,#01,#01,#07
	db #87,#00,#00,#03,#03,#05,#85,#80
	db #00,#81,#5e,#23,#56,#23,#ed,#53
	db #ff,#de,#7e,#23,#b7,#c8,#cd,#f1
	db #de,#18,#f7,#e5,#d6,#2e,#87,#87
	db #6f,#26,#00,#29,#11,#00,#46,#19
	db #11,#00,#c0,#06,#08,#c5,#06,#04
	db #d5,#4e,#2c,#cb,#11,#1a,#30,#02
	db #e6,#55,#cb,#11,#30,#02,#e6,#aa
	db #12,#12,#cb,#da,#12,#12,#cb,#9a
	db #1c,#10,#e8,#d1,#7a,#c6,#10,#57
	db #cb,#77,#20,#08,#7b,#c6,#40,#5f
	db #7a,#ce,#c0,#57,#c1,#10,#ce,#21
	db #ff,#de,#7e,#c6,#04,#77,#e1,#c9
.ldf3e
	dw ldf4a,#0000
.ldf42
	dw ldf59,#0000
.ldf46
	dw ldf6f,#0000
.ldf4a
	db #d2,#8a,#91,#cc,#ff,#48,#f7,#80
	db #ef,#80,#e3,#80,#e0,#80,#87
.ldf59
	db #d2,#8b,#b8,#91,#e0,#24,#25,#26
	db #27,#28,#29,#2a,#2b,#2c,#2d,#2e
	db #2f,#30,#ff,#80,#80,#87
.ldf6f
	db #d2,#8a,#b8,#91,#e0,#18,#19,#1a
	db #1b,#1c,#1d,#1e,#1f,#20,#21,#22
	db #23,#24,#ff,#80,#80,#87
	
	ld hl,l0527
	ld (hl),#00
	ld hl,ld69e
	add a
	add l
	ld l,a
	jr nc,le60e
	inc h
.le60e
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,lde00
.le616
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz le616
	ld a,(lde01)
	ld (lde11),a
	ld hl,(lde02)
	ld (l04a5),hl
	ld de,(lde04)
	ld (l04a9),de
	ld a,l
	ld (l04ab),a
	ld a,(lde07)
	ld (l04ac),a
	ld a,(lde06)
	ld e,a
	ld d,#0c
	call le7ae
	ld a,(lde10)
	ld e,a
	ld d,#0d
	call le7ae
	ld hl,l0527
	inc (hl)
	ret
.le6b9
	ld a,(le6d4)
	and #48
	adc #38
	sla a
	sla a
	ld hl,le6d7
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.le6d7 equ $ + 3
.le6d4
	db #ff,#80,#1b,#34
;
.music_info
	db "Batman 3 - The Movie (1989)(Ocean Software)(Matthew Cannon)",0
	db "",0

	read "music_end.asm"
