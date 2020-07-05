; Music of All Point Bulletin (1989)(Domark)(David Whittaker)()
; Ripped by Megachur the 17/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ALLPOINB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #8000
FIRST_THEME				equ 0
LAST_THEME				equ 7

	read "music_header.asm"

;
.init_music		; a = 0 -> 7
;
	push af
	call l8206
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l8b56
	add hl,bc
	ld a,(hl)
	ld (l849f),a
	inc hl
	ld ix,l805d
	ld c,#22
	ld a,#03
.l801e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#20),b
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
	jr nz,l801e
	dec a
	ld (l84a0),a
	ld (l849b),a
	ld a,#0f
	ld (l849e),a
	ret
.l805d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l807f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l80a1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(l849b)
	ld hl,l849c
	or (hl)
	inc hl
	or (hl)
	ret z
	call l86f9
	ld a,(l849b)
	and a
	jr z,l8128
.l80d7 equ $ + 1
	ld a,#00
	ld (l8124),a
	ld a,(l849f)
	ld hl,l84a0
	add (hl)
	ld (hl),a
	jr nc,l80fc
	ld b,#00
	ld ix,l805d
	call l830a
	ld ix,l807f
	call l830a
	ld ix,l80a1
	call l830a
.l80fc
	ld ix,l805d
	call l83a8
	ld (l84a1),hl
	ld (l84a9),a
	ld ix,l807f
	call l83a8
	ld (l84a3),hl
	ld (l84aa),a
	ld ix,l80a1
	call l83a8
	ld (l84a5),hl
	ld (l84ab),a
.l8124 equ $ + 1
	ld a,#00
	ld (l84a7),a
.l8128
	ld a,(l849b)
	and a
	jr nz,l813e
	ld (l84a9),a
	ld (l84aa),a
	ld (l84ab),a
	ld a,#3f
	ld (l84a8),a
	jr l8166
.l813e
	ld a,(l849e)
	and #0f
	xor #0f
	jr z,l8166
	ld b,a
	ld a,(l84a9)
	sub b
	jr nc,l814f
	xor a
.l814f
	ld (l84a9),a
	ld a,(l84aa)
	sub b
	jr nc,l8159
	xor a
.l8159
	ld (l84aa),a
	ld a,(l84ab)
	sub b
	jr nc,l8163
	xor a
.l8163
	ld (l84ab),a
.l8166
	ld a,(l849c)
	and a
	jr z,l818e
	ld hl,(l84ae)
	ld (l84a1),hl
	ld a,(l8b13)
	ld b,a
	bit 3,a
	jr nz,l8180
	ld a,(l84b4)
	ld (l84a7),a
.l8180
	ld hl,l84a8
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l84b6)
	ld (l84a9),a
.l818e
	ld a,(l849d)
	and a
	jr z,l81b8
	ld hl,(l84b0)
	ld (l84a3),hl
	ld a,(l8b28)
	ld b,a
	bit 3,a
	jr nz,l81a8
.l81a2
	ld a,(l84b4)
	ld (l84a7),a
.l81a8
	ld hl,l84a8
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(l84b7)
	ld (l84aa),a
.l81b8
	ld hl,l84ab
	ld d,#0a
.l81bd
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
	jp p,l81bd
	ret
.l81de
	ld de,#0a00
.l81e1
	call l81eb
	dec d
	jp p,l81e1
	ld de,#073f
.l81eb
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
.stop_music
.l8206
;
	xor a
	ld (l849b),a
	call l8218
	xor a
	ld (l84a9),a
	ld (l84aa),a
	ld (l84ab),a
	ret
.l8218
	xor a
	ld (l849c),a
	ld (l849d),a
	jp l81de
	jp nc,#bfc6
	db #00,#9a,#00,#00,#31,#ac,#00,#70
	db #5a,#82,#bf,#26,#cc,#cd,#d2,#0a
	db #01,#1a,#13
	ld (l849e),a
	jp l8317
	ld a,(de)
	ld (ix+#03),a
	ld l,a
	inc de
	ld a,(de)
	ld (ix+#04),a
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	jp l8317
	pop hl
	jp l8206
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
	jr nz,l827c
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l827c
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l8317
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,l8466
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l8317
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l8466
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l8317
	ld hl,l8466
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l8317
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l8317
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l8317
	ld (ix+#1d),b
	jr l8317
	set 1,(ix+#00)
	jr l8317
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l8346
	jr l8342
	ld (ix+#1f),#ff
	jr l8317
	ld (ix+#1f),b
	jr l8317
.l830a
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l8317
	ld a,(de)
	inc de
	and a
	jp m,l8377
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l8329
	ld (l80d7),a
.l8329
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.l8342
	set 5,(ix+#00)
.l8346
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l8376
	ld a,(l849c)
	and a
	jr z,l8365
	ld a,(l8b13)
	bit 3,a
	jr z,l8376
.l8365
	ld a,(l849d)
	and a
	jr z,l8372
	ld a,(l8b28)
	bit 3,a
	jr z,l8376
.l8372
	ld (ix+#1f),#ff
.l8376
	ret
.l8377
	cp #c0
	jr c,l83a0
	add #20
	jr c,l8399
	add #10
	ld hl,l8542
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
	jp l8317
.l8399
	inc a
	ld (ix+#11),a
	jp l8317
.l83a0
	ld hl,l81a2
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l83a8
	ld c,(ix+#00)
	bit 5,c
	jr z,l83da
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l83d4
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l83d4
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l83d4
	ld a,(ix+#18)
	ld (ix+#13),a
.l83da
	ld a,(ix+#12)
	ld hl,l84b2
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l8437
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l8400
	bit 0,c
	jr nz,l841e
.l8400
	bit 5,l
	jr nz,l8410
	sub (ix+#1b)
	jr nc,l841b
	set 5,(ix+#1d)
	sub a
	jr l841b
.l8410
	add (ix+#1b)
	cp b
	jr c,l841b
	res 5,(ix+#1d)
	ld a,b
.l841b
	ld (ix+#1c),a
.l841e
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l8429
	dec d
.l8429
	add #a0
	jr c,l8435
.l842d
	sla e
	rl d
	add #18
	jr nc,l842d
.l8435
	add hl,de
	ex de,hl
.l8437
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l8462
	ld b,(ix+#0e)
	djnz l845f
	ld c,(ix+#0d)
	bit 7,c
	jr z,l844e
	dec b
.l844e
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l8462
.l845f
	ld (ix+#0e),b
.l8462
	cpl
	and #03
.l8466 equ $ + 1
	ld a,#38
	jr nz,l8473
	ld a,(l80d7)
	xor #08
	ld (l8124),a
	ld a,#07
.l8473
	ld hl,l84a8
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l8496
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l8124),a
.l8496
	ex de,hl
	ld a,(ix+#13)
	ret
.l84a1 equ $ + 6
.l84a0 equ $ + 5
.l849f equ $ + 4
.l849e equ $ + 3
.l849d equ $ + 2
.l849c equ $ + 1
.l849b
.music_end
	db #00,#00,#00,#0f,#00,#00,#00,#00
.l84aa equ $ + 7
.l84a9 equ $ + 6
.l84a8 equ $ + 5
.l84a7 equ $ + 4
.l84a5 equ $ + 2
.l84a3
	db #00,#00,#00,#00,#00,#3f,#0f,#0f
.l84b2 equ $ + 7
.l84b1 equ $ + 6
.l84b0 equ $ + 5
.l84af equ $ + 4
.l84ae equ $ + 3
.l84ab
	db #0f,#00,#00,#00,#00,#00,#00,#00
.l84b7 equ $ + 4
.l84b6 equ $ + 3
.l84b4 equ $ + 1
	db #00,#00,#3f,#00,#00,#00,#00
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
.l8542
	dw l8563,l856b,l8572,l8584
	dw l8596,l859e,l85ac,l85bb
	dw l85cb,l85dc,l85ed,l8601
	dw l8612,l8623,l8633,l8636
.l8563 equ $ + 1
	db #01,#0f,#0e,#0c,#09,#05,#01,#87
.l856b equ $ + 1
	db #01,#0e,#0c,#0a,#05,#01,#87,#01
.l8572
	db #0f,#0e,#0d,#0b,#0d,#0c,#0a,#09
	db #0b,#0a,#08,#07,#09,#08,#06,#05
.l8584 equ $ + 2
	db #87,#01,#0f,#0f,#0d,#0b,#0d,#0c
	db #0a,#09,#0b,#0a,#08,#07,#09,#08
.l8596 equ $ + 4
	db #06,#05,#87,#01,#0c,#0d,#0f,#0e
.l859e equ $ + 4
	db #0d,#0c,#87,#08,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l85ac equ $ + 2
	db #87,#08,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.l85bb equ $ + 1
	db #05,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.l85cb equ $ + 1
	db #08,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l85dc equ $ + 2
	db #87,#0c,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l85ed equ $ + 3
	db #01,#87,#02,#0c,#0d,#0e,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l8601 equ $ + 7
	db #05,#04,#03,#02,#01,#87,#01,#0c
	db #0d,#0f,#0e,#0c,#0b,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#01
.l8612
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.l8623 equ $ + 1
	db #01,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.l8636 equ $ + 4
.l8633 equ $ + 1
	db #01,#0d,#87,#01,#0c,#87
	ld hl,l8641
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l8641
	ld (bc),a
	ld e,h
	ld hl,l849c
	ld (hl),#00
	ld hl,l886c
	add a
	add l
	ld l,a
	jr nc,l8651
	inc h
.l8651
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l8b0d
.l8659
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l8659
	ld a,(l8b0e)
	ld (l8b1b),a
	ld hl,(l8b0f)
	ld (l84ae),hl
	ld a,(l8b13)
	bit 3,a
	jr nz,l8676
	ld a,l
	ld (l84b4),a
.l8676
	ld a,(l8b18)
	ld (l8b1c),a
	ld a,(l8b1a)
	ld (l8b21),a
	ld a,(l8b17)
	ld hl,l8a7c
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l8b1d),hl
	ld (l8b1f),hl
	ld a,(hl)
	ld (l84b6),a
	ld hl,l849c
	inc (hl)
	ret
	ld hl,l849d
	ld (hl),#00
	ld hl,l886c
	add a
	add l
	ld l,a
	jr nc,l86ac
	inc h
.l86ac
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l8b22
.l86b4
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l86b4
	ld a,(l8b23)
	ld (l8b30),a
	ld hl,(l8b24)
	ld (l84b0),hl
	ld a,(l8b28)
	bit 3,a
	jr nz,l86d1
	ld a,l
	ld (l84b4),a
.l86d1
	ld a,(l8b2d)
	ld (l8b31),a
	ld a,(l8b2f)
	ld (l8b36),a
	ld a,(l8b2c)
	ld hl,l8a7c
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l8b32),hl
	ld (l8b34),hl
	ld a,(hl)
	ld (l84b7),a
	ld hl,l849d
	inc (hl)
	ret
.l86f9
	call l8b37
	ld a,(l849c)
	and a
	call nz,l87ba
	ld a,(l849d)
	and a
	ret z
	ld a,(l8b22)
	and a
	jr nz,l8718
	ld a,(l8b2e)
	and a
	jr nz,l8718
	ld (l849d),a
	ret
.l8718
	dec a
	ld (l8b22),a
	ld a,(l8b30)
	and a
	jr nz,l8750
	ld a,(l8b2e)
	and a
	jr nz,l872e
	ld a,(l8b2b)
	and a
	jr z,l8792
.l872e
	dec a
	ld (l8b2b),a
	ld a,(l8b23)
	ld (l8b30),a
	ld a,(l8b29)
	and a
	jr z,l8741
	ld a,(l8b53)
.l8741
	ld b,a
	ld a,(l8b24)
	add b
	ld (l84b0),a
	ld a,(l8b25)
	add b
	ld (l84b1),a
.l8750
	ld hl,l8b30
	dec (hl)
	ld hl,l8b2f
	ld a,(hl)
	and a
	jr z,l8762
	ld hl,l8b36
	dec (hl)
	jr nz,l8785
	ld (hl),a
.l8762
	ld a,(l8b2a)
	and a
	jr z,l8785
	jp p,l8778
	ld hl,(l84b0)
	ld de,(l8b26)
	add hl,de
	ld (l84b0),hl
	jr l8785
.l8778
	ld hl,(l84b0)
	ld de,(l8b26)
	and a
	sbc hl,de
	ld (l84b0),hl
.l8785
	ld a,(l8b28)
	bit 3,a
	jr nz,l8792
	ld a,(l84b0)
	ld (l84b4),a
.l8792
	ld a,(l8b31)
	dec a
	ld (l8b31),a
	jr nz,l87b9
	ld a,(l8b2d)
	ld (l8b31),a
	ld hl,(l8b34)
	ld a,(hl)
	inc hl
	and a
	jp p,l87b3
	cp #80
	jr nz,l87b9
	ld hl,(l8b32)
	ld a,(hl)
	inc hl
.l87b3
	ld (l8b34),hl
	ld (l84b7),a
.l87b9
	ret
.l87ba
	ld a,(l8b0d)
	and a
	jr nz,l87ca
	ld a,(l8b19)
	and a
	jr nz,l87ca
	ld (l849c),a
	ret
.l87ca
	dec a
	ld (l8b0d),a
	ld a,(l8b1b)
	and a
	jr nz,l8802
	ld a,(l8b19)
	and a
	jr nz,l87e0
	ld a,(l8b16)
	and a
	jr z,l8844
.l87e0
	dec a
	ld (l8b16),a
	ld a,(l8b0e)
	ld (l8b1b),a
	ld a,(l8b14)
	and a
	jr z,l87f3
	ld a,(l8b52)
.l87f3
	ld b,a
	ld a,(l8b0f)
	add b
	ld (l84ae),a
	ld a,(l8b10)
	add b
	ld (l84af),a
.l8802
	ld hl,l8b1b
	dec (hl)
	ld hl,l8b1a
	ld a,(hl)
	and a
	jr z,l8814
	ld hl,l8b21
	dec (hl)
	jr nz,l8837
	ld (hl),a
.l8814
	ld a,(l8b15)
	and a
	jr z,l8837
	jp p,l882a
	ld hl,(l84ae)
	ld de,(l8b11)
	add hl,de
	ld (l84ae),hl
	jr l8837
.l882a
	ld hl,(l84ae)
	ld de,(l8b11)
	and a
	sbc hl,de
	ld (l84ae),hl
.l8837
	ld a,(l8b13)
	bit 3,a
	jr nz,l8844
	ld a,(l84ae)
	ld (l84b4),a
.l8844
	ld a,(l8b1c)
	dec a
	ld (l8b1c),a
	jr nz,l886b
	ld a,(l8b18)
	ld (l8b1c),a
	ld hl,(l8b1f)
	ld a,(hl)
	inc hl
	and a
	jp p,l8865
	cp #80
	jr nz,l886b
	ld hl,(l8b1d)
	ld a,(hl)
	inc hl
.l8865
	ld (l8b1f),hl
	ld (l84b6),a
.l886b
	ret
.l886c
	dw l88ae,l88bc,l88ca,l88d8
	dw l88e6,l88f4,l8902,l8910
	dw l891e,l892c,l893a,l8948
	dw l8956,l8964,l8972,l8980
	dw l898e,l899c,l89aa,l89b8
	dw l89c6,l89d4,l89e2,l89f0
	dw l89fe,l8a0c,l8a1a,l8a28
	dw l8a36,l8a44,l8a52,l8a60
	dw l8a6e
.l88ae
	db #ff,#04,#a0,#06,#20,#00,#fe,#00
.l88bc equ $ + 6
	db #01,#63,#07,#02,#ff,#00,#06,#63
	db #09,#05,#11,#00,#f6,#00,#ff,#00
.l88ca equ $ + 4
	db #08,#01,#00,#00,#06,#63,#10,#00
	db #02,#00,#f7,#00,#ff,#63,#08,#01
.l88d8 equ $ + 2
	db #00,#00,#01,#02,#10,#00,#00,#00
	db #f7,#00,#00,#00,#06,#01,#00,#00
.l88e6
	db #09,#03,#40,#00,#01,#00,#f7,#00
.l88f4 equ $ + 6
	db #ff,#63,#05,#01,#00,#00,#07,#63
	db #0e,#00,#02,#00,#f7,#00,#01,#63
.l8902 equ $ + 4
	db #02,#01,#00,#00,#1e,#04,#00,#00
	db #06,#00,#f7,#01,#ff,#63,#00,#02
.l8910 equ $ + 2
	db #00,#00,#19,#09,#1a,#00,#03,#00
	db #f6,#01,#ff,#0a,#08,#02,#00,#00
.l891e
	db #0c,#05,#41,#04,#14,#00,#f6,#00
.l892c equ $ + 6
	db #ff,#ff,#01,#01,#00,#00,#19,#02
	db #74,#00,#02,#00,#fe,#00,#01,#63
.l893a equ $ + 4
	db #08,#03,#00,#00,#28,#03,#a1,#00
	db #14,#00,#f6,#00,#ff,#ff,#00,#03
.l8948 equ $ + 2
	db #00,#00,#32,#03,#44,#00,#03,#00
	db #fe,#00,#ff,#63,#04,#01,#00,#00
.l8956
	db #32,#04,#00,#04,#16,#00,#f6,#01
.l8964 equ $ + 6
	db #ff,#63,#00,#04,#00,#00,#5a,#09
	db #9a,#00,#03,#00,#f6,#01,#ff,#0a
.l8972 equ $ + 4
	db #00,#08,#00,#00,#05,#05,#cc,#00
	db #21,#00,#f6,#00,#ff,#63,#06,#01
.l8980 equ $ + 2
	db #00,#00,#1e,#03,#16,#02,#02,#00
	db #fe,#00,#ff,#ff,#00,#03,#00,#00
.l898e
	db #50,#02,#40,#01,#04,#00,#fe,#00
.l899c equ $ + 6
	db #ff,#63,#04,#01,#00,#00,#1e,#0f
	db #10,#00,#01,#00,#f7,#00,#ff,#00
.l89aa equ $ + 4
	db #00,#03,#00,#00,#2c,#02,#6c,#00
	db #01,#00,#fe,#00,#01,#63,#08,#03
.l89b8 equ $ + 2
	db #00,#00,#11,#02,#70,#03,#20,#00
	db #fe,#00,#ff,#63,#04,#01,#00,#00
.l89c6
	db #0a,#05,#c1,#00,#14,#00,#f6,#01
.l89d4 equ $ + 6
	db #ff,#ff,#08,#01,#00,#00,#1e,#02
	db #24,#00,#01,#00,#fe,#00,#01,#63
.l89e2 equ $ + 4
	db #08,#04,#00,#00,#0a,#05,#10,#00
	db #01,#00,#fe,#00,#ff,#63,#00,#01
.l89f0 equ $ + 2
	db #00,#00,#04,#02,#9f,#00,#01,#00
	db #fe,#00,#ff,#63,#08,#01,#00,#00
.l89fe
	db #5a,#02,#1d,#00,#01,#00,#f7,#00
.l8a0c equ $ + 6
	db #ff,#63,#01,#04,#00,#00,#3f,#10
	db #60,#00,#04,#00,#fe,#00,#ff,#63
.l8a1a equ $ + 4
	db #04,#02,#00,#00,#78,#28,#00,#02
	db #40,#00,#fe,#00,#ff,#00,#01,#06
.l8a28 equ $ + 2
	db #00,#28,#14,#09,#70,#04,#41,#00
	db #fe,#00,#01,#63,#02,#01,#00,#00
.l8a36
	db #0f,#09,#70,#06,#41,#00,#fe,#00
.l8a44 equ $ + 6
	db #01,#63,#02,#01,#00,#00,#0c,#09
	db #70,#03,#41,#00,#fe,#00,#01,#63
.l8a52 equ $ + 4
	db #02,#01,#00,#00,#0a,#0a,#70,#02
	db #11,#00,#fe,#00,#01,#63,#02,#01
.l8a60 equ $ + 2
	db #00,#00,#0a,#0a,#70,#02,#11,#00
	db #fe,#00,#ff,#63,#02,#01,#00,#00
.l8a6e
	db #14,#09,#70,#04,#41,#00,#fe,#00
	db #ff,#63,#02,#01,#00,#00
.l8a7c
	dw l8a8e,l8a9d,l8ab6,l8ace
	dw l8adf,l8ae6,l8af0,l8afc
	dw l8afe
.l8a8e
	db #0f,#0e,#0d,#0b,#0a,#09,#08,#07
.l8a9d equ $ + 7
	db #06,#05,#04,#03,#02,#01,#ff,#06
	db #08,#0a,#0b,#0c,#0d,#0e,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l8ab6
	db #06,#08,#0a,#0c,#0e,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l8ace
	db #06,#08,#0a,#0b,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l8adf equ $ + 1
	db #ff,#06,#07,#08,#0a,#0b,#0c,#ff
.l8ae6
	db #0d,#00,#00,#0e,#00,#00,#00,#0c
.l8af0 equ $ + 2
	db #00,#ff,#0c,#0a,#09,#08,#07,#06
.l8afc equ $ + 6
	db #05,#04,#03,#02,#01,#ff,#0b,#80
.l8afe
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
.l8b0d equ $ + 7
	db #06,#05,#04,#03,#02,#01,#ff,#00
.l8b15 equ $ + 7
.l8b14 equ $ + 6
.l8b13 equ $ + 5
.l8b11 equ $ + 3
.l8b10 equ $ + 2
.l8b0f equ $ + 1
.l8b0e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8b1d equ $ + 7
.l8b1c equ $ + 6
.l8b1b equ $ + 5
.l8b1a equ $ + 4
.l8b19 equ $ + 3
.l8b18 equ $ + 2
.l8b17 equ $ + 1
.l8b16
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8b25 equ $ + 7
.l8b24 equ $ + 6
.l8b23 equ $ + 5
.l8b22 equ $ + 4
.l8b21 equ $ + 3
.l8b1f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8b2d equ $ + 7
.l8b2c equ $ + 6
.l8b2b equ $ + 5
.l8b2a equ $ + 4
.l8b29 equ $ + 3
.l8b28 equ $ + 2
.l8b26
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8b34 equ $ + 6
.l8b32 equ $ + 4
.l8b31 equ $ + 3
.l8b30 equ $ + 2
.l8b2f equ $ + 1
.l8b2e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8b36
	db #00
.l8b37
	ld a,(l8b52)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l8b55
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l8b55 equ $ + 3
.l8b53 equ $ + 1
.l8b52
	db #ff,#80,#1b,#34
.l8b56
	db #4c
	dw l8ba4,l8ba0,l8b8e
	db #4c
	dw l8c20,l8bfe,l8bce
	db #4c
	dw l8d66,l8d64,l8d6e
	db #33
	dw l8e0a,l8e06,l8e10
	db #33
	dw l8e8c,l8e88,l8e90
	db #2a
	dw l8f17,l8f13,l8f1b
	db #2a
	dw l8f6d,l8f69,l8f71
	db #24
	dw l8fb6,l8fb2,l8fba
.l8b8e
	dw l8ba8,l8ba8,l8ba8,l8ba8
	dw l8ba8,l8ba8,l8ba8,l8bbf
	dw #0000
.l8ba0
	dw l8fea,#0000
.l8ba4
	dw l8fea,#0000
.l8ba8
	db #8a,#88,#01,#01,#e1,#d3,#10,#10
	db #d0,#8b,#27,#d3,#8a,#10,#10,#10
.l8bbf equ $ + 7
	db #d0,#8b,#27,#d3,#8a,#10,#87,#10
	db #10,#d0,#8b,#27,#d3,#8a,#10,#10
	db #d0,#8b,#27,#27,#27,#87
.l8bce
	dw l8ba8,l8ba8,l8ba8,l8ba8
	dw l8ba8,l8ba8,l8c3c,l8ba8
	dw l8ba8,l8ba8,l8ba8,l8ba8
	dw l8ba8,l8c3c,l8c5d,l8ba8
	dw l8ba8,l8ba8,l8ba8,l8ba8
	dw l8ba8,l8c3c,l8c5d,#0000
.l8bfe
	dw l8cc4,l8cc4,l8cc4,l8cdd
	dw l8cc4,l8cc4,l8cc4,l8cdd
	dw l8cff,l8d03,l8cc4,l8cc4
	dw l8cc4,l8cdd,l8cff,l8d03
	dw #0000
.l8c20
	dw l8ce3,l8ce3,l8ce3,l8cfa
	dw l8ce3,l8ce3,l8ce3,l8cfa
	dw l8cff,l8d04,l8d2c,l8cff
	dw l8d04,#0000
.l8c3c
	db #15,#15,#d0,#8b,#27,#d3,#8a,#15
	db #15,#15,#d0,#8b,#27,#d3,#8a,#15
	db #17,#17,#d0,#8b,#27,#d3,#8a,#17
	db #17,#17,#d0,#8b,#27,#d3,#8a,#17
.l8c5d equ $ + 1
	db #87,#8b,#e1,#81,#d0,#27,#27,#d1
	db #e0,#3f,#80,#e1,#d0,#27,#27,#d1
	db #e0,#3f,#80,#e1,#d0,#27,#27,#d1
	db #e0,#3f,#80,#e1,#d0,#27,#27,#d1
	db #e0,#3f,#80,#e1,#d0,#27,#d1,#e0
	db #3f,#80,#e1,#d0,#27,#d1,#e0,#3f
	db #80,#e1,#2f,#2f,#e0,#3f,#80,#e1
	db #2f,#2f,#e0,#3f,#80,#e1,#2f,#2f
	db #e0,#3f,#80,#e1,#2f,#2f,#27,#29
	db #2b,#2d,#2f,#d0,#f9,#3f,#d1,#e0
	db #27,#27,#27,#27,#27,#27,#e1,#27
	db #27,#27,#27,#27,#27,#27,#27,#3f
	db #3f,#3f,#3f,#3f,#3f,#3f,#3f,#87
.l8cc4
	db #8a,#d8,#88,#01,#01,#e1,#22,#dc
	db #e3,#23,#d8,#e1,#22,#ef,#23,#81
	db #d7,#e3,#26,#dc,#e2,#25,#e0,#80
.l8ce3 equ $ + 7
.l8cdd equ $ + 1
	db #87,#82,#d8,#ef,#21,#23,#87,#8a
	db #d8,#88,#01,#01,#e1,#2a,#dc,#e3
	db #2c,#d8,#e1,#2a,#ef,#2c,#e3,#26
.l8cfa equ $ + 6
	db #dc,#e2,#25,#e0,#80,#87,#d8,#ef
.l8d03 equ $ + 7
.l8cff equ $ + 3
	db #31,#33,#87,#ff,#80,#80,#87,#81
.l8d04
	db #d1,#e0,#34,#33,#32,#31,#30,#2f
	db #2e,#2d,#2c,#2b,#2a,#29,#28,#27
	db #26,#25,#d0,#28,#27,#26,#25,#24
	db #23,#22,#21,#20,#1f,#1e,#1d,#1c
	db #1b,#1a,#19,#d9,#ff,#10,#82,#87
.l8d2c
	db #d8,#e1,#2d,#e3,#2f,#e1,#2d,#e3
	db #2f,#e1,#2d,#e3,#2f,#e1,#2d,#2f
	db #2d,#32,#31,#2f,#2d,#2f,#31,#32
	db #34,#ed,#36,#e1,#32,#2f,#36,#34
	db #32,#2f,#36,#34,#32,#2f,#36,#34
	db #32,#2f,#36,#34,#32,#2f,#36,#34
	db #32,#36,#38,#39,#f9,#d9,#3b,#87
.l8d66 equ $ + 2
.l8d64
	dw l8d74,l8d9c,l8d9c,l8db1
	dw #0000
.l8d6e
	dw l8dca,l8dca,l8de7
.l8d74
	db #8a,#d9
	db #88,#01,#01,#e2,#80,#e8,#90,#10
	db #0e,#0d,#0c,#10,#0e,#0d,#0c,#10
	db #0e,#0d,#e2,#0c,#e5,#0e,#e8,#10
	db #e2,#0c,#e5,#0e,#e8,#10,#dc,#e2
.l8d9c equ $ + 6
	db #04,#04,#04,#e5,#04,#8e,#8a,#88
	db #01,#01,#de,#90,#e2,#80,#e7,#80
	db #e0,#2a,#f1,#84,#01,#30,#2b,#e2
.l8db1 equ $ + 3
	db #28,#80,#87,#de,#80,#e7,#80,#e0
	db #2a,#f1,#84,#01,#30,#2b,#d7,#e2
	db #28,#e5,#2a,#e8,#28,#e2,#28,#e5
	db #2a,#f7,#28,#8e
.l8dca
	db #8a,#88,#01,#01
	db #d0,#e0,#28,#2b,#2f,#d9,#e7,#2e
	db #dc,#e0,#32,#e2,#34,#d8,#34,#37
	db #39,#37,#34,#e5,#84,#01,#0c,#3a
	db #87
.l8de7
	db #d0,#e0,#28,#2b,#2f,#d9,#e7
	db #2e,#dc,#e0,#32,#e2,#34,#d8,#34
	db #37,#39,#37,#34,#37,#e5,#36,#e8
	db #34,#e2,#34,#e5,#36,#f7,#38,#8e
.l8e06
	dw l8e14,#0000
.l8e0a
	dw l8e2f
.l8e0c
	dw l8e3b
.l8e10 equ $ + 2
	dw #0000,l8e62,#0000
.l8e14
	db #8a,#dc,#88,#01,#01,#90,#e1,#11
	db #11,#13,#11,#d0,#8d,#14,#dc,#0f
	db #80,#11,#80,#11,#13,#11,#14,#0c
.l8e2f equ $ + 3
	db #13,#0c,#87,#8a,#d5,#88,#01,#01
.l8e3b equ $ + 7
	db #93,#0e,#e7,#80,#92
	dw l8e0c
	db #e5
	db #35,#33,#eb,#3e,#e7,#8f,#e5,#2f
	db #e3,#2e,#e1,#3e,#eb,#3f,#e7,#8f
	db #eb,#41,#e5,#43,#44,#e7,#8f,#e5
	db #33,#35,#e1,#3a,#38,#3a,#38,#3a
.l8e62 equ $ + 6
	db #3c,#e7,#8f,#93,#0d,#87,#8a,#88
	db #01,#01,#dc,#e3,#80,#22,#20,#e5
	db #80,#ed,#22,#e3,#80,#22,#20,#e5
	db #80,#ed,#27,#e3,#80,#22,#20,#e5
	db #80,#ed,#23,#e3,#80,#22,#20,#e5
	db #80,#ed,#27,#87
.l8e88
	dw l8e94,#0000
.l8e8c
	dw l8ed4,#0000
.l8e90
	dw l8eef,#0000
.l8e94
	db #8a,#dc,#88,#01,#01,#90,#e1,#13
	db #14,#8f,#13,#11,#0c,#0f,#11,#13
	db #14,#8f,#13,#11,#0c,#0f,#11,#13
	db #14,#8f,#13,#11,#0c,#0f,#11,#13
	db #14,#8f,#13,#11,#0c,#0f,#11,#93
	db #0d,#13,#14,#8f,#13,#93,#0c,#11
	db #0c,#0f,#11,#93,#0b,#13,#14,#8f
	db #13,#93,#0a,#11,#0c,#0f,#11,#8e
.l8ed4
	db #8a,#88,#01,#01,#d5,#ef,#2b,#2b
	db #e7,#29,#e3,#1f,#e2,#1d,#e0,#80
	db #e5,#80,#e3,#31,#e1,#31,#d6,#ff
.l8eef equ $ + 3
	db #32,#8f,#87,#8a,#88,#01,#01,#d6
	db #ef,#30,#31,#e7,#2e,#e3,#2b,#e2
	db #29,#e0,#80,#8b,#e0,#d1,#27,#28
	db #29,#2a,#2b,#2c,#8a,#d7,#e3,#36
	db #e1,#36,#d8,#ff,#35,#8f,#87
.l8f17 equ $ + 4
.l8f13
	dw l8f1f,#0000,l8f35,#0000
.l8f1b
	dw l8f40,#0000
.l8f1f
	db #8a,#88,#01,#01,#df,#f7,#22,#e8
	db #d6,#21,#df,#e7,#84,#ff,#02,#24
.l8f35 equ $ + 6
	db #ef,#84,#01,#02,#27,#87,#8a,#88
	db #01,#01,#df,#f7,#26,#ff,#d6,#27
.l8f40 equ $ + 1
	db #87,#8a,#88,#01,#01,#90,#d0,#93
	db #0d,#e3,#37,#39,#3a,#e1,#3c,#3e
	db #93,#0e,#e3,#3f,#e1,#3e,#3f,#93
	db #0f,#e7,#42,#91,#df,#e7,#84,#ff
	db #02,#24,#93,#0d,#ef,#84,#01,#02
	db #27,#8e
.l8f6d equ $ + 4
.l8f69
	dw l8f75,#0000,l8fa0,#0000
.l8f71
	dw l8fa9,#0000
.l8f75
	db #8a,#88,#01,#01,#d7,#93,#0c,#e5
	db #24,#90,#d1,#93,#0d,#e1,#18,#e5
	db #18,#93,#0e,#e1,#18,#e5,#18,#e1
	db #18,#e0,#18,#93,#0d,#15,#e1,#15
	db #e2,#15,#e3,#15,#93,#0c,#e4,#15
.l8fa0 equ $ + 3
	db #e5,#15,#8e,#8a,#88,#01,#01,#d9
.l8fa9 equ $ + 4
	db #ff,#26,#8f,#8e,#8a,#88,#01,#01
	db #d9,#ff,#27,#8f,#8e
.l8fb2
	dw l8fbe,#0000
.l8fb6
	dw l8fca,#0000
.l8fba
	dw l8fd9,#0000
.l8fbe
	db #8c,#88,#01,#01,#d9,#e7,#80,#dd
	db #e3,#8d,#27,#8e
.l8fca
	db #8a,#90,#d7,#e2
	db #2b,#dc,#e0,#2b,#d9,#e3,#30,#dd
	db #e3,#24,#8e
.l8fd9
	db #8a,#88,#01,#01,#d7
	db #e2,#2b,#dc,#e0,#2b,#d9,#e3,#30
.l8fea equ $ + 4
	db #dd,#e3,#25,#8e,#8a,#d0,#fe,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#87
;
.music_info
	db "All Point Bulletin (1989)(Domark)(David Whittaker)",0
	db "",0

	read "music_end.asm"
