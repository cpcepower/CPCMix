; Music of Victory Road and Guerilla War (1988)(Imagine)(Jonathan Dunn)()
; Ripped by Megachur the 28/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "VICTORYR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #8000
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
.init_music	;l8000 a=0->3 (main theme)
;
	ld hl,l865c
	ld b,#00
	ld (hl),b
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld hl,l8875
	add hl,bc
	ld a,(hl)
	ld (l80e1),a
	inc hl
	ld ix,l8051
	ld c,#21
	ld a,#03
.l8017
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl

	push hl
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
	jr nz,l8017
	ld (l8380),a
	inc a
	ld (l80b4),a
	ld (l865b),a
	ret
.l8051
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.l8072
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.l8093
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
.l80b4
	db #00
;
.play_music	; l80b5
;
	call l86ae
	ld a,(l865b)
	and a
	jp z,l8111
.l80c0 equ $ + 1
	ld a,#00
	ld (l810d),a
	ld hl,l80b4
	dec (hl)
	jr nz,l80e5
	ld b,(hl)
	ld ix,l8051
	call l828f
	ld ix,l8072
	call l828f
	ld ix,l8093
	call l828f
.l80e1 equ $ + 1
	ld a,#01
	ld (l80b4),a
.l80e5
	ld ix,l8051
	call l834d
	ld (l845d),hl
	ld (l8465),a
	ld ix,l8072
	call l834d
	ld (l845f),hl
	ld (l8466),a
	ld ix,l8093
	call l834d
	ld (l8461),hl
	ld (l8467),a
.l810d equ $ + 1
	ld a,#00
	ld (l8463),a
.l8111
	ld a,(l865c)
	and a
	jr z,l8141
	ld hl,(l846a)
	ld (l845d),hl
	ld hl,(l846e)
	ld (l8461),hl
	ld a,(l8470)
	ld (l8463),a
	ld a,(l8464)
.l812c
	or #2d
	ld hl,l8471
	and (hl)
	ld (l8464),a
	ld a,(l8472)
	ld (l8465),a
	ld a,(l8474)
	ld (l8467),a
.l8141
	ld a,(l865b)
	ld hl,l865c
	or (hl)
	ret z
	ld hl,l8468
	ld d,#0b
.l814e
	ld e,(hl)
	call l817c
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
	jp p,l814e
	ret
.l816f
	ld de,#0d00
.l8172
	call l817c
	dec d
	jp p,l8172
	ld a,&07
	ld de,#073f
.l817c
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
.l8197
;
	xor a
	ld (l865b),a
	ld (l865c),a
	call l816f
	xor a
	ld (l8465),a
	ld (l8466),a
	ld (l8467),a
	ret
;
.jumps_table	;l81ac
;
	db l8275-$	; #c9
	db l825e-$	; #b1
	db l8263-$	; #b5
	db l8269-$	; #ba
	db l8228-$	; #78
	db l8258-$	; #a7
	db l8254-$	; #a2
	db l81c2-$	; #0f
	db l8245-$	; #91
	db l823e-$	; #89
	db l8204-$	; #4e
	db l81ef-$	; #38
	db l8218-$	; #60
	db l826f-$	; #b6
	db l81be-$	; #04
	db l827e-$	; #c3
	db l8284-$	; #c8
	db l828a-$	; #cd
.l81be
	pop hl
	jp l8197
.l81c2
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
	jr nz,l81e4
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l81e4
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l829d
.l81ef
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,l8429
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l829d
.l8204
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,l8429
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l829d
.l8218
	ld hl,l8429
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l829d
.l8228
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l829d
.l823e
	ld a,(de)
	inc de
	ld (l8380),a
	jr l829d
.l8245
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l829d
.l8254
	set 7,(ix+#00)
.l8258
	set 3,(ix+#00)
	jr l829d
.l825e
	ld (ix+#1d),b
	jr l829d
.l8263
	ld (ix+#1d),#40
	jr l829d
.l8269
	ld (ix+#1d),#c0
	jr l829d
.l826f
	set 1,(ix+#00)
	jr l829d
.l8275
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l82cc
.l827e
	res 5,(ix+#00)
	jr l82cc
.l8284
	ld (ix+#1f),#ff
	jr l829d
.l828a
	ld (ix+#1f),b
	jr l829d
.l828f
	dec (ix+#10)
	jr nz,l82e7
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l829d
	ld a,(de)
	inc de
	and a
	jp m,l82f8
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l82af
	ld (l80c0),a
.l82af
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
.l82cc
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	ret z
	ld a,(l865c)
	and a
	ret nz
	ld (ix+#1f),#ff
	ret
.l82e7
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l82f4
	inc (ix+#12)
	ret
.l82f4
	dec (ix+#12)
	ret
.l82f8
	cp #b8
	jr c,l8345
	add #20
	jr c,l8326
	add #10
	jr c,l832d
	add #10
	jr nc,l831e
	ld c,a
	ld hl,l8536
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l829d
.l831e
	add #09
	ld (l80e1),a
	jp l829d
.l8326
	inc a
	ld (ix+#11),a
	jp l829d
.l832d
	ld hl,l85c3
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
	jp l829d
.l8345
	ld hl,jumps_table-&80	;	l812c
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l834d
	ld c,(ix+#00)
	bit 5,c
	jr z,l837f
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l8379
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l8379
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l8379
	ld a,(ix+#18)
	ld (ix+#13),a
.l8380 equ $ + 1
.l837f
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l8399
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l8399
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l8476
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l83fa
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l83c3
	bit 0,c
	jr nz,l83e1
.l83c3
	bit 5,l
	jr nz,l83d3
	sub (ix+#1b)
	jr nc,l83de
	set 5,(ix+#1d)
	sub a
	jr l83de
.l83d3
	add (ix+#1b)
	cp b
	jr c,l83de
	res 5,(ix+#1d)
	ld a,b
.l83de
	ld (ix+#1c),a
.l83e1
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l83ec
	dec d
.l83ec
	add #a0
	jr c,l83f8
.l83f0
	sla e
	rl d
	add #18
	jr nc,l83f0
.l83f8
	add hl,de
	ex de,hl
.l83fa
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l8425
	ld b,(ix+#0e)
	djnz l8422
	ld c,(ix+#0d)
	bit 7,c
	jr z,l8411
	dec b
.l8411
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l8425
.l8422
	ld (ix+#0e),b
.l8425
	cpl
	and #03
.l8429 equ $ + 1
	ld a,#38
	jr nz,l8436
	ld a,(l80c0)
	xor #08
	ld (l810d),a
	ld a,#07
.l8436
	ld hl,l8464
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l8458
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#20)
	and #38
	cpl
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l810d),a
.l8458
	ex de,hl
	ld a,(ix+#13)
	ret
.l8464 equ $ + 7
.l8463 equ $ + 6
.l8461 equ $ + 4
.l845f equ $ + 2
.l845d
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l846b equ $ + 6
.l846a equ $ + 5
.l8468 equ $ + 3
.l8467 equ $ + 2
.l8466 equ $ + 1
.l8465
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l8474 equ $ + 7
.l8472 equ $ + 5
.l8471 equ $ + 4
.l8470 equ $ + 3
.l846e equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l8476
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
.l8536
	db #0e,#0e,#0f,#10,#11,#25,#39,#4d
	db #61,#64,#72,#74,#77,#7d,#80,#18
	db #80,#00,#8c,#18,#80,#00,#00,#00
	db #05,#05,#05,#08,#08,#08,#0c,#0c
	db #0c,#11,#11,#11,#14,#14,#14,#18
	db #18,#98,#00,#00,#00,#03,#03,#03
	db #07,#07,#07,#0c,#0c,#0c,#0f,#0f
	db #0f,#13,#13,#13,#18,#18,#98,#00
	db #00,#00,#04,#04,#04,#07,#07,#07
	db #0c,#0c,#0c,#10,#10,#10,#13,#13
	db #13,#18,#18,#98,#00,#00,#00,#05
	db #05,#05,#09,#09,#09,#0c,#0c,#0c
	db #11,#11,#11,#15,#15,#15,#18,#18
	db #98,#00,#03,#07,#8c,#0c,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#80,#00,#04,#8c,#0c
	db #00,#00,#80,#18,#00,#00,#00,#00
	db #00,#80,#04,#07,#8c
.l85c3
	dw l85da,l85e6,l85f0
	dw l85ff,l8608,l8615
	dw l861f,l8626,l8644
	dw l864b,l8654
.l85da	equ $ +1
	db #01,#0e,#0d,#0c,#0b,#0a,#09,#07
	db #06,#05,#04,#87
.l85e6	equ $ +1
	db #00,#0f,#0e,#0d,#0b,#0a,#09,#07
	db #06,#87
.l85f0	equ $ +1
	db #01,#0e,#0d,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#00,#87
.l85ff	equ $ +1
	db #02,#0e,#0c,#0b,#0a,#09,#08,#07
	db #87
.l8608	equ $ +1
	db #00,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#87
.l8615	equ $ +1
	db #00,#0d,#0d,#0c,#0b,#0a,#09,#08
	db #00,#87
.l861f	equ $ +1
	db #00,#0e,#0d,#0c,#0a,#08,#87
.l8626	equ $ +1
	db #04,#06,#07,#08,#09,#0a,#0b,#0c
	db #0d,#0e,#0f,#0e,#0e,#0d,#0c,#0c
	db #0b,#0a,#0a,#09,#08,#07,#06,#05
	db #04,#03,#02,#01,#00,#87
.l8644	equ $ +1
	db #02,#0f,#0d,#0c,#0a,#09,#87
.l864b	equ $ +1
	db #00,#0e,#0d,#0c,#0a,#08,#07,#00
	db #87
.l8654	equ $ +1
	db #01,#0e,#0d,#0c,#0b,#0a,#06,#87
.l865b
.music_end
	db #00
.l865c
	db #00
;.l865d				; ???
	ld hl,l865c
	ld (hl),#00
	ld hl,l874c
	add a
	add l
	ld l,a
	jr nc,l866b
	inc h
.l866b
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11

	ld hl,l8843
.l8673
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l8673
	ld a,(l8844)
	ld (l8854),a
	ld hl,(l8845)
	ld (l846a),hl
	ld de,(l8847)
	ld (l846e),de
	ld a,l
	ld (l8470),a
	ld a,(l884a)
	ld (l8471),a
	ld a,(l8849)
	ld e,a
	ld d,#0c
	call l817c
	ld a,(l8853)
	ld e,a
	ld d,#0d
	call l817c
	ld hl,l865c
	inc (hl)
	ret
.l86ae
	call l8856
	ld a,(l865c)
	and a
	ret z
	ld a,(l8843)
	and a
	jr nz,l86c2
	ld (l865c),a
	jp l816f
.l86c2
	dec a
	ld (l8843),a
	ld a,(l8854)
	and a
	jr nz,l86fb
	ld a,(l8851)
	and a
	ret z
	dec a
	ld (l8851),a
	ld a,(l8844)
	ld (l8854),a
	ld a,(l8852)
	and a
	jr z,l86e4
	ld a,(l8871)
.l86e4
	ld b,a
	ld a,(l8845)
	add b
	ld (l846a),a
	ld a,(l8846)
	add b
	and #0f
	ld (l846b),a
	ld hl,(l8847)
	ld (l846e),hl
.l86fb
	ld hl,l8854
	dec (hl)
	ld a,(l884f)
	and a
	jr z,l8722
	jp p,l8715
	ld hl,(l846a)
	ld de,(l884b)
	add hl,de
	ld (l846a),hl
	jr l8722
.l8715
	ld hl,(l846a)
	ld de,(l884b)
	and a
	sbc hl,de
	ld (l846a),hl
.l8722
	ld a,(l8850)
	and a
	jr z,l8745
	jp p,l8738
	ld hl,(l846e)
	ld de,(l884d)
	add hl,de
	ld (l846e),hl
	jr l8745
.l8738
	ld hl,(l846e)
	ld de,(l884d)
	and a
	sbc hl,de
	ld (l846e),hl
.l8745
	ld a,(l846a)
	ld (l8470),a
	ret
.l874c
	dw l8766,l8777,l8788,l8799
	dw l87aa,l87bb,l87cc,l87dd
	dw l87ee,l87ff,l8810,l8821
	dw l8832
.l8766
	db #07,#03,#04,#00,#0b,#20,#0f,#fa
	db #10,#00,#08,#04,#ff,#01,#0a,#00
	db #00
.l8777
	db #05,#0a,#02,#00,#03,#00,#0c,#fa
	db #01,#00,#02,#00,#ff,#ff,#01,#00
	db #00
.l8788
	db #1e,#ff,#00,#02,#00,#02,#32,#fa
	db #08,#00,#09,#00,#01,#01,#02,#00
	db #00
.l8799
	db #1e,#ff,#10,#00,#10,#00,#32,#fa
	db #01,#00,#03,#00,#ff,#ff,#00,#00
	db #00
.l87aa
	db #07,#0a,#a8,#00,#8b,#03,#16,#f2
	db #22,#00,#22,#00,#ff,#ff,#0a,#00
	db #00
.l87bb
	db #05,#05,#08,#00,#00,#02,#05,#f6
	db #18,#00,#10,#00,#01,#01,#0a,#01
	db #00
.l87cc
	db #07,#03,#04,#00,#0b,#00,#0f,#fa
	db #10,#00,#08,#00,#ff,#ff,#0a,#00
	db #00
.l87dd
	db #04,#08,#40,#01,#60,#01,#09,#fa
	db #04,#00,#04,#00,#ff,#ff,#01,#00
	db #00
.l87ee
	db #14,#06,#01,#02,#11,#02,#14,#f2
	db #c8,#00,#cc,#00,#ff,#ff,#ff,#00
	db #00
.l87ff
	db #14,#03,#00,#44,#00,#00,#14,#d7
	db #80,#00,#40,#00,#ff,#01,#1e,#01
	db #00
.l8810
	db #0a,#ff,#42,#00,#0a,#00,#0a,#f2
	db #22,#00,#40,#00,#ff,#ff,#ff,#00
	db #00
.l8821
	db #14,#ff,#09,#00,#02,#00,#0a,#f3
	db #00,#04,#00,#04,#01,#01,#ff,#00
	db #00
.l8832
	db #03,#46,#80,#00,#80,#00,#14,#d2
	db #25,#00,#22,#00,#01,#ff,#0a,#00
	db #00
.l8843
	db #00
.l884b equ $ + 7
.l884a equ $ + 6
.l8849 equ $ + 5
.l8847 equ $ + 3
.l8846 equ $ + 2
.l8845 equ $ + 1
.l8844
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8853 equ $ + 7
.l8852 equ $ + 6
.l8851 equ $ + 5
.l8850 equ $ + 4
.l884f equ $ + 3
.l884d equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8854
	db #00,#00
.l8856
	ld a,(l8871)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l8874
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l8874 equ $ + 3
.l8871
	db #ff,#80,#1b,#34
.l8875
	db #06
	dw l8891,l88af,l88b3
	db #06
	dw l89a2,l89a6,l89aa
	db #07
	dw l89f9,l8a05,l8a11
	db #06
	dw l8aad,l8afb,l8b95
.l8891
	dw l88c1,l88c1,l88c1,l88da
	dw l88c1,l88da,l88eb,l88fc
	dw l88eb,l88da,l88c1,l88eb
	dw l88c1,l88eb,&0000
.l88af
	dw l890d,&0000
.l88b3
	dw l891f,l8932,l8932,l8943
	dw l8965,l8965,&0000
.l88c1
	db #8a,#d0,#88,#01,#01,#82,#c0,#90
	db #e2,#1c,#1c,#1c,#e0,#1c,#1c,#1c
	db #e2,#1c,#1c,#1c,#e0,#1c,#1c,#1c
	db #87
.l88da
	db #e2,#17,#17,#17,#e0,#17,#17,#17
	db #e2,#17,#17,#17,#e0,#17,#17,#17
	db #87
.l88eb
	db #e2,#18,#18,#18,#e0,#18,#18,#18
	db #e2,#18,#18,#18,#e0,#18,#18,#18
	db #87
.l88fc
	db #e2,#1a,#1a,#1a,#e0,#1a,#1a,#1a
	db #e2,#1a,#1a,#1a,#e0,#1a,#1a,#1a
	db #87
.l890d
	db #8b,#d1,#c0,#e1,#41,#e0,#41,#8c
	db #d2,#c1,#e1,#24,#8b,#d1,#c0,#e0
	db #41,#87
.l891f
	db #eb,#80,#91,#8a,#c0,#d3,#88,#01
	db #01,#82,#e0,#1f,#21,#23,#f7,#1c
	db #e8,#8f,#87
.l8932
	db #e4,#34,#e0,#3b,#e4,#37,#e0,#3e
	db #e7,#3b,#e2,#3b,#e0,#3b,#f7,#3b
	db #87
.l8943
	db #e4,#30,#e0,#2f,#e4,#30,#e0,#2f
	db #e7,#30,#e2,#2f,#e0,#2f,#f7,#32
	db #e4,#30,#e0,#2f,#e4,#30,#e0,#2f
	db #e7,#30,#e2,#2f,#e0,#2f,#eb,#34
	db #33,#87
.l8965
	db #8c,#d2,#c1,#81,#e4,#26,#e3,#25
	db #e2,#24,#d0,#c2,#90,#8a,#e1,#1c
	db #e0,#28,#e1,#1e,#e0,#2a,#e1,#1f
	db #e0,#2b,#e1,#23,#e0,#2f,#8c,#d2
	db #c1,#81,#e4,#26,#e3,#25,#e2,#24
	db #d0,#c2,#90,#8a,#e1,#18,#e0,#24
	db #e1,#1a,#e0,#26,#e1,#1c,#e0,#28
	db #e1,#1f,#e0,#2b,#87
.l89a2
	dw l89ae,#0000
.l89a6
	dw l89ca,#0000
.l89aa
	dw l89e8,#0000
.l89ae
	db #8a,#d3,#c0,#88,#01,#01,#82,#91
	db #e3,#39,#3b,#e0,#3c,#3b,#39,#e9
	db #39,#e0,#3e,#3c,#e7,#3b,#e1,#39
	db #39,#e9,#39,#8e
.l89ca
	db #d3,#c0,#88,#01,#01,#82,#c2,#8a
	db #90,#e7,#80,#e0,#37,#39,#3b,#e8
	db #3c,#e0,#39,#3b,#3c,#e8,#3e,#e0
	db #3b,#3c,#3e,#e8,#40,#8e
.l89e8
	db #c0,#8a,#d1,#88,#01,#02,#82,#e3
	db #21,#23,#ed,#21,#e9,#23,#eb,#21
	db #8e
.l89f9
	dw l8a1d,l8a1d,l8a1d,l8a1d
	dw l8a32,#0000
.l8a05
	dw l8a51,l8a87,l8a87,l8a87
	dw l8a9f,#0000
.l8a11
	dw l8a6b,l8a93,l8a93,l8a93
	dw l8aa6,#0000
.l8a1d
	db #8a,#90,#88,#01,#01,#82,#d0,#c0
	db #e2,#1c,#e0,#1c,#1c,#1c,#e2,#1c
	db #e0,#1c,#1c,#1c,#87
.l8a32
	db #e2,#21,#21,#21,#e0,#21,#21,#21
	db #e2,#1f,#1f,#1f,#e0,#1f,#1f,#1f
	db #e2,#1d,#1d,#1d,#e0,#1d,#1d,#1d
	db #e2,#1c,#e1,#1c,#e6,#1c,#8e
.l8a51
	db #8a,#90,#81,#d4,#c3,#e0,#2c,#28
	db #2c,#e8,#2f,#e0,#31,#2d,#31,#e8
	db #34,#e0,#38,#34,#38,#e8,#3b,#eb
	db #80,#87
.l8a6b
	db #8a,#90,#81,#d4,#c3,#e0,#80,#e0
	db #2c,#28,#2c,#e8,#2f,#e0,#31,#2d
	db #31,#e8,#34,#e0,#38,#34,#38,#e8
	db #3b,#ea,#80,#87
.l8a87
	db #c0,#88,#01,#02,#82,#e8,#2d,#e0
	db #2d,#2d,#2d,#87
.l8a93
	db #c0,#88,#01,#02,#82,#e8,#34,#e0
	db #34,#34,#34,#87
.l8a9f
	db #e2,#2d,#e1,#2c,#e6,#2c,#8e
.l8aa6
	db #e2,#28,#e1,#28,#e6,#28,#8e
.l8aad
	dw l8bb2,l8bb2,l8bb2,l8bb2
	dw l8bb2,l8bb2,l8bb2,l8bb2
	dw l8bb2,l8bb2,l8bb2,l8bb2
	dw l8bb2,l8bb2,l8bb2,l8bb2
	dw l8bed,l8c32,l8bcc,l8c11
	dw l8bed,l8c32,l8bcc,l8c11
	dw l8bed,l8bed,l8bb2,l8bb2
	dw l8bb2,l8bb2,l8bb2,l8bb2
	dw l8bb2,l8bb2,l8bb2,l8bb2
	dw l8bb2,l8bb2,&0000
.l8afb
	dw l8c53,l8c53,l8c53,l8c53
	dw l8c53,l8c53,l8c53,l8c53
	dw l8c53,l8c53,l8c53,l8c53
	dw l8c53,l8c53,l8c53,l8c53
	dw l8c53,l8c53,l8c79,l8c79
	dw l8c53,l8c53,l8c79,l8c79
	dw l8c53,l8c53,l8c79,l8c79
	dw l8c53,l8c53,l8c79,l8c79
	dw l8c96,l8c96,l8cb3,l8cb3
	dw l8c53,l8c53,l8c79,l8c79
	dw l8c96,l8c96,l8cb3,l8cb3
	dw l8c53,l8c53,l8c79,l8c79
	dw l8c96,l8c96,l8c96,l8c96
	dw l8c53,l8c53,l8c79,l8c79
	dw l8c53,l8c53,l8c79,l8c79
	dw l8c53,l8c53,l8c79,l8c79
	dw l8c53,l8c53,l8c79,l8c79
	dw l8c53,l8c53,l8c79,l8c79
	dw l8c53,l8c53,l8c79,l8c79
	dw &0000
.l8b95
	dw l8cd0,l8cd0,l8cde,l8cde
	dw l8cf3,l8cf3,l8baf,l8baf
	dw l8cde,l8cde,l8cf9,l8cf9
	dw &0000
.l8baf
	db #ff,#80,#87
.l8bb2
	db #8a,#90,#88,#01,#01,#82,#d1,#e1
	db #c0,#3c,#37,#3c,#37,#3c,#37,#3c
	db #37,#3f,#37,#3f,#37,#3e,#37,#3e
	db #37,#87
.l8bcc
	db #0c,#18,#24,#30,#3c,#48,#54,#48
	db #3c,#30,#24,#30,#3c,#30,#24,#18
	db #0c,#18,#24,#30,#3c,#48,#54,#48
	db #3c,#30,#24,#30,#3c,#30,#24,#18
	db #87
.l8bed
	db #c2,#e0,#d9,#0f,#1b,#27,#33,#3f
	db #4b,#57,#4b,#3f,#33,#27,#33,#3f
	db #33,#27,#1b,#0f,#1b,#27,#33,#3f
	db #4b,#57,#4b,#3f,#33,#27,#33,#3f
	db #33,#27,#1b,#87
.l8c11
	db #11,#1d,#29,#35,#41,#48,#59,#4d
	db #41,#35,#29,#35,#41,#35,#29,#1d
	db #11,#1d,#29,#35,#41,#48,#59,#4d
	db #41,#35,#29,#35,#41,#35,#29,#1d
	db #87
.l8c32
	db #0a,#16,#22,#2e,#3a,#46,#52,#46
	db #52,#46,#3a,#2e,#3a,#2e,#22,#16
	db #0a,#16,#22,#2e,#3a,#46,#52,#46
	db #52,#46,#3a,#2e,#3a,#2e,#22,#16
	db #87
.l8c53
	db #8a,#90,#d6,#88,#01,#01,#82,#c0
	db #e0,#0c,#18,#24,#26,#8b,#d2,#c1
	db #24,#d6,#c0,#8a,#24,#0c,#18,#24
	db #27,#0c,#26,#8b,#d2,#c1,#24,#d6
	db #c0,#8a,#26,#26,#24,#87
.l8c79
	db #11,#1d,#29,#2b,#8b,#d2,#c1,#24
	db #d6,#c0,#8a,#29,#11,#1d,#29,#2c
	db #11,#2b,#8b,#d2,#c1,#24,#d6,#c0
	db #8a,#2b,#2b,#29,#87
.l8c96
	db #0f,#1b,#27,#26,#8b,#d2,#c1,#24
	db #d6,#c0,#8a,#27,#0f,#1b,#27,#2a
	db #0f,#29,#8b,#d2,#c1,#24,#d6,#c0
	db #8a,#29,#29,#27,#87
.l8cb3
	db #0a,#16,#22,#24,#8b,#d2,#c1,#24
	db #d6,#c0,#8a,#22,#0a,#16,#22,#22
	db #0a,#24,#8b,#d2,#c1,#24,#d6,#c0
	db #8a,#24,#24,#22,#87
.l8cd0
	db #d7,#8a,#81,#91,#c4,#ff,#37,#c5
	db #37,#c6,#35,#c7,#35,#87
.l8cde
	db #c0,#88,#01,#01,#82,#d8,#e5,#3f
	db #3e,#e3,#3c,#ed,#37,#e0,#39,#3a
	db #ff,#38,#80,#80,#87
.l8cf3
	db #ff,#27,#80,#24,#80,#87
.l8cf9
	db #da,#90,#81,#c2,#e3,#37,#e1,#38
	db #e7,#37,#e0,#32,#35,#e3,#37,#e1
	db #38,#e7,#37,#e1,#32,#e1,#3c,#e3
	db #37,#e1,#3e,#e3,#37,#e1,#3f,#e3
	db #37,#e1,#41,#e3,#37,#e3,#3f,#3e
	db #87
;
; #7010
; ld c,#0
; jp &8000
;
; #7020
; ld c,#07
; jp &8000
;
; #7030
; ld c,#0e
; jp &8000
;
; main theme
;
; #7040
; ld c,#15
; jp &8000
;
.music_info
	db "Victory Road and Guerilla War (1988)(Imagine)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
