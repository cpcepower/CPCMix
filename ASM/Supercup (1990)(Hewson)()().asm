; Music of Supercup (1990)(Hewson)()()
; Ripped by Megachur the 03/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SUPERCUP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8500
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

;
.play_music
.l8500	; play 
;
	ld a,(l8581)
	ld b,a
	ld a,(l8580)
	ld c,a
	dec b
	jp p,l8512
.l850d equ $ + 1
	ld b,#00
	dec b
	inc b
	jr nz,l8517
.l8512
	dec c
	jr nz,l8517
.l8516 equ $ + 1
	ld c,#00
.l8517
	ld a,b
	ld (l8581),a
	ld a,c
	ld (l8580),a
	ld ix,l858d
	ld a,(ix+#0f)
	or a
	jr z,l8532
	call l8626
	ld (l858a),a
	ld (l8582),hl
.l8532
	ld ix,l85b5
	ld a,(ix+#0f)
	or a
	jr z,l8545
	call l8626
	ld (l858b),a
	ld (l8584),hl
.l8545
	ld ix,l85dd
	ld a,(ix+#0f)
	or a
	jr z,l8558
	call l8626
	ld (l858c),a
	ld (l8586),hl
.l8558
	ld hl,l858c
	ld a,#0a
.l855d
	push af
	ld b,#f4
	out (c),a
	ld b,#f6
	ld a,#c0
	out (c),a
	xor a
	out (c),a
	ld b,#f4
	ld a,(hl)
	dec hl
	out (c),a
	ld b,#f6
	ld a,#80
	out (c),a
	xor a
	out (c),a
	pop af
	dec a
	jp p,l855d
	ret
.l8586 equ $ + 6
.l8584 equ $ + 4
.l8582 equ $ + 2
.l8581 equ $ + 1
.l8580
	db #00,#00,#00,#00,#00,#00,#00,#00
.l858d equ $ + 5
.l858c equ $ + 4
.l858b equ $ + 3
.l858a equ $ + 2
.l8589 equ $ + 1
.l8588
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85b5 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85dd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8605 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#01,#02
	db #02,#01,#00,#ff,#fe,#fe,#ff
	add b
.l8610
	ld e,#7b
	ld b,(ix+#14)
	ld a,(l8589)
.l8618
	rlc e
	rlc d
	djnz l8618
	and e
	or d
	res 6,a
	ld (l8589),a
	ret
.l8626
	ld a,(l8580)
	ld c,a
	ld a,(l8516)
	cp c
	jr nz,l863c
	inc (ix+#0c)
	ld a,(ix+#0c)
	cp (ix+#10)
	jp z,l8717
.l863c
	ld a,(ix+#13)
	ld c,(ix+#0c)
	inc a
	jr nz,l8649
.l8645
	ld hl,#0000
	ret
.l8649
	ld a,(ix+#10)
	sub (ix+#15)
	cp c
	jr c,l8645
	ld a,(ix+#16)
	cp #10
	jr nz,l8661
	ld a,(ix+#1b)
	ld (l8588),a
	jr l86d7
.l8661
	ld a,(ix+#0b)
	and a
	jr nz,l86d7
	ld d,#04
	call l8610
	bit 1,(ix+#16)
	ld d,(ix+#17)
	jr z,l869b
	ld l,(ix+#02)
	ld h,(ix+#03)
	dec (ix+#0e)
	jr nz,l8687
	ld a,(ix+#0d)
	ld (ix+#0e),a
	inc hl
.l8687
	ld a,(hl)
	cp #80
	jr nz,l8693
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
.l8693
	ld (ix+#02),l
	ld (ix+#03),h
	add d
	ld d,a
.l869b
	bit 0,(ix+#16)
	ld bc,#0000
	jr z,l86cb
	ld a,(ix+#1b)
	cp (ix+#0c)
	jr nc,l86cb
	ld l,(ix+#1c)
	ld h,(ix+#1d)
	ld a,(hl)
	cp #80
	jr nz,l86bb
	ld hl,l8605
	ld a,(hl)
.l86bb
	ld c,a
	bit 7,a
	ld b,#00
	jr z,l86c4
	ld b,#ff
.l86c4
	inc hl
	ld (ix+#1c),l
	ld (ix+#1d),h
.l86cb
	ld hl,l9000
	ld l,d
	ld e,(hl)
	set 7,l
	ld d,(hl)
	ex de,hl
	add hl,bc
	jr l86e0
.l86d7
	ld d,#80
	ld (ix+#0b),#00
	call l8610
.l86e0
	ld a,(ix+#10)
	sub (ix+#27)
	ld b,(ix+#12)
	cp (ix+#0c)
	jr nc,l8700
	dec (ix+#11)
	jr nz,l8712
	xor a
	cp b
	jr z,l8712
	dec b
	ld a,(ix+#25)
	ld (ix+#11),a
	jr l8712
.l8700
	ld a,b
	cp (ix+#26)
	jr z,l8713
	dec (ix+#11)
	jr nz,l8713
	dec b
	ld a,(ix+#24)
	ld (ix+#11),a
.l8712
	ld a,b
.l8713
	ld (ix+#12),a
	ret
.l8717
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld a,(hl)
	cp #ff
	call z,l8838
.l8723
	ld a,(hl)
	inc hl
	cp #60
	jr nc,l8795
	ld (ix+#08),l
	ld (ix+#09),h
.l8730 equ $ + 1
	add #00
	add (ix+#18)
	ld (ix+#12),#0f
	ld (ix+#17),a
	ld a,(ix+#21)
	ld (ix+#0b),a
	ld (ix+#13),#00
	ld a,(ix+#20)
	ld (ix+#10),a
	ld de,l8605
	ld (ix+#1c),e
	ld (ix+#1d),d
	ld a,(ix+#24)
	ld (ix+#11),a
	ld a,(ix+#0d)
	ld (ix+#0e),a
	ld a,(ix+#22)
	ld (ix+#02),a
	ld a,(ix+#23)
	ld (ix+#03),a
	ld (ix+#0c),#00
	ld a,#0f
	cp (ix+#0a)
	jr nz,l8783
	ld a,(ix+#10)
	ld (ix+#27),a
	ld a,(ix+#25)
	ld (ix+#11),a
.l8783
	xor a
	cp (ix+#24)
	ret nz
	ld a,(ix+#26)
	ld (ix+#12),a
	ld a,(ix+#25)
	ld (ix+#11),a
	ret
.l8795
	cp #80
	jr nc,l87ca
	push hl
	sub #60
	add a
	ld b,#00
	ld c,a
	ld hl,l891d
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	inc de
	ld (ix+#22),e
	ld (ix+#23),d
	ex de,hl
	ld d,a
	and #0f
	ld c,a
	add hl,bc
	ld (ix+#00),l
	ld (ix+#01),h
	ld a,d
	rrca
	rrca
	rrca
	rrca
	and #0f
	inc a
	ld (ix+#0d),a
	pop hl
	jp l8723
.l87ca
	cp #c0
	jr nc,l87d6
	sub #80
	ld (ix+#20),a
	jp l8723
.l87d6
	cp #e0
	jr c,l87ee
	sub #e0
	ld (ix+#0c),#00
	ld (ix+#10),a
	ld (ix+#13),#ff
	ld (ix+#08),l
	ld (ix+#09),h
	ret
.l87ee
	sub #c0
	add a
	ld b,a
	add a
	add b
	ld c,a
	ld b,#00
	push hl
	ld hl,l8999
	add hl,bc
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	inc hl
	ld a,(hl)
	ld (ix+#25),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	ld (ix+#27),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#16),a
	ld (ix+#21),#00
	bit 3,a
	jr z,l8828
	ld (ix+#21),#ff
.l8828
	ld (ix+#15),#00
	bit 2,a
	jr z,l8834
	ld (ix+#15),#03
.l8834
	pop hl
	jp l8723
.l8838
	xor a
	cp (ix+#19)
	jr z,l8846
	dec (ix+#19)
	ld a,(ix+#1a)
	jr l8858
.l8846
	ld e,(ix+#04)
	ld d,(ix+#05)
.l884c
	ld a,(de)
	inc de
	ld (ix+#04),e
	ld (ix+#05),d
	cp #40
	jr nc,l8868
.l8858
	ld (ix+#1a),a
	ld hl,l8a3b
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ret
.l8868
	cp #80
	jr nc,l8873
	sub #40
	ld (ix+#19),a
	jr l884c
.l8873
	cp #a0
	jr nc,l887e
	sub #80
	ld (ix+#18),a
	jr l884c
.l887e
	cp #fe
	jr nz,l8888
	xor a
	ld (ix+#0f),a
	pop de
	ret
.l8888	; reset music
	ld e,(ix+#06)
	ld (ix+#04),e
	ld d,(ix+#07)
	ld (ix+#05),d
	jr l884c
;
.init_music
.l8896
;
	ld b,a		; init music
	add a
	add a
	add a
	add b
	ld hl,l89e1
	ld b,#00
	ld c,a
	add hl,bc
	ld bc,l8907
	ld ix,l858d
	di
	call l88de
	ld ix,l85b5
	call l88de
	ld ix,l85dd
	call l88de
	ld a,#3a
	ld (l8500),a
	xor a
	ld (l8588),a
	ld a,(hl)
	ld (l8516),a
	inc hl
	ld a,(hl)
	ld (l850d),a
	inc hl
	ld a,(hl)
	ld (l8730),a
	ld a,#02
	ld (l8581),a
	ld a,#01
	ld (l8580),a
	ei
	ret
.l88de
	ld a,(hl)
	ld (ix+#04),a
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#08),c
	ld (ix+#09),b
	ld (ix+#05),a
	ld (ix+#07),a
	ld (ix+#10),#01
	xor a
	ld (ix+#19),a
	ld (ix+#18),a
	ld (ix+#0c),a
	ld (ix+#0f),#ff
	ret
.l8907
	rst #38
;
.stop_music
;
	ld a,#c9		; stop music
	ld (l8500),a
	xor a
	ld (l858a),a
	ld (l858b),a
	ld (l858c),a
	di
	call l8558
	ei
	ret
.l891d
	dw l893b,l8942,l8949,l8950
	dw l8957,l895e,l8969,l8970
	dw l8976,l897d,l8982,l8987
	dw l898c,l8991,l8995
.l8942 equ $ + 7
.l893b
	db #02,#0c,#00,#03,#07,#00,#80,#02
.l8949 equ $ + 6
	db #0c,#00,#04,#07,#00,#80,#02,#0c
.l8950 equ $ + 5
	db #00,#05,#08,#00,#80,#02,#0c,#00
.l8957 equ $ + 4
	db #05,#09,#00,#80,#02,#0c,#00,#03
.l895e equ $ + 3
	db #08,#00,#80,#02,#00,#04,#07,#00
.l8969 equ $ + 6
	db #00,#04,#04,#07,#07,#80,#11,#00
.l8970 equ $ + 5
	db #00,#04,#07,#0a,#80,#20,#00,#04
.l8976 equ $ + 3
	db #07,#0c,#80,#11,#00,#00,#0a,#04
.l8982 equ $ + 7
.l897d equ $ + 2
	db #07,#80,#10,#00,#04,#07,#80,#10
.l8987 equ $ + 4
	db #00,#03,#07,#80,#10,#00,#03,#08
.l8991 equ $ + 6
.l898c equ $ + 1
	db #80,#10,#00,#04,#09,#80,#00,#00
.l8999 equ $ + 6
.l8995 equ $ + 2
	db #02,#80,#20,#00,#0c,#80,#01,#0a
	db #01,#01,#00,#05,#02,#08,#02,#04
	db #00,#09,#00,#0a,#02,#0f,#00,#02
	db #01,#0a,#01,#01,#01,#05,#00,#0a
	db #01,#0f,#00,#02,#00,#0a,#02,#04
	db #00,#02,#00,#0a,#02,#01,#00,#0a
	db #02,#00,#02,#0f,#00,#02,#01,#0a
	db #0f,#00,#00,#05,#00,#0e,#02,#03
	db #00,#02,#00,#0c,#03,#0f,#05,#10
	db #01,#00,#01,#00,#0f,#10
.l89e1
	dw l8ace,l8b1e,l8b35
	db #03,#00,#0b
	dw l8e1d,l8e20,l8e33
	db #03,#00,#00
	dw l8eb2,l8eb5,l8eb8
	db #02,#04,#00
	dw l8f38,l8f3c,l8f3f
	db #03,#06,#06
	dw l8f6b,l8f6e,l8f71
	db #03,#00,#00
	dw l8aa1,l8aa3,l8aa3
	db #03,#00,#0b
	dw l8aa4,l8aa4,l8aa3
	db #03,#00,#0b
	dw l8aa6,l8aa3,l8aa3
	db #03,#00,#05
	dw l8aa8,l8aa3,l8aa3
	db #03,#00,#00
	dw l8aaa,l8aa3,l8aa3
	db #03,#00,#00
.l8a3b
	dw l8e1a,l8b4d,l8b6f,l8bd8
	dw l8be9,l8c2a,l8c3b,l8c77
	dw l8cb7,l8cfe,l8ba9,l8bbe
	dw l8c5c,l8c69,l8d2b,l8d37
	dw l8d3e,l8d47,l8d50,l8d55
	dw l8d93,l8dda,l8df3,l8e05
	dw l8e4a,l8e83,l8e91,l8e8a
	dw l8e98,l8e9a,l8e9f,l8ea5
	dw l8eab,l8ebb,l8ed6,l8f1a
	dw l8f43,l8f4c,l8f69,l8dc6
	dw l8dd2,l8f74,l8fa1,l8fc0
	dw l8d87,l8d8d,l8aac,l8ab1
	dw l8ab7,l8abb,l8abf
.l8aa8 equ $ + 7
.l8aa6 equ $ + 5
.l8aa4 equ $ + 3
.l8aa3 equ $ + 2
.l8aa1
	db #2e,#fe,#fe,#2f,#fe,#30,#fe,#32
.l8aac equ $ + 3
.l8aaa equ $ + 1
	db #fe,#31,#fe,#c9,#86,#6d,#4f,#ff
.l8ab7 equ $ + 6
.l8ab1
	db #c4,#82,#6d,#1e,#22,#ff,#c1,#82
.l8abf equ $ + 6
.l8abb equ $ + 2
	db #1e,#ff,#ca,#88,#00,#ff,#cb,#82
	db #00,#ff,#00,#00,#00,#07,#19,#d1
.l8ace equ $ + 5
	db #01,#20,#00,#ed,#b0,#80,#01,#02
	db #0a,#07,#42,#0e,#0f,#85,#42,#0e
	db #10,#87,#0e,#0e,#85,#0e,#11,#80
	db #0e,#0e,#12,#42,#0e,#0f,#85,#42
	db #0e,#10,#87,#0e,#0e,#85,#0e,#11
	db #80,#0e,#0e,#12,#07,#42,#0e,#0f
	db #85,#42,#0e,#10,#87,#0e,#0e,#85
	db #0e,#11,#80,#0e,#0e,#12,#42,#0e
	db #0f,#85,#42,#0e,#10,#87,#0e,#0e
	db #85,#0e,#11,#80,#0e,#0e,#12,#02
.l8b1e equ $ + 5
	db #0b,#8c,#15,#15,#ff,#98,#00,#03
	db #8c,#04,#08,#91,#13,#2c,#13,#2d
	db #8c,#08,#91,#13,#2c,#13,#2d,#8c
.l8b35 equ $ + 4
	db #04,#16,#16,#ff,#8c,#00,#05,#06
	db #0c,#09,#85,#14,#27,#14,#28,#8c
	db #09,#85,#14,#27,#14,#28,#8c,#06
.l8b4d equ $ + 4
	db #0d,#17,#17,#ff,#c0,#82,#2b,#2a
	db #2b,#2d,#86,#2b,#e2,#82,#1f,#1e
	db #1f,#21,#86,#1f,#e2,#82,#2f,#2f
	db #e2,#2e,#2d,#e2,#2c,#e2,#84,#2b
.l8b6f equ $ + 6
	db #e4,#c2,#88,#68,#1f,#ff,#c0,#84
	db #24,#86,#24,#e2,#84,#26,#28,#2b
	db #29,#28,#26,#86,#26,#e2,#84,#24
	db #88,#23,#e8,#84,#29,#86,#29,#e2
	db #84,#28,#26,#23,#24,#26,#90,#24
	db #ec,#84,#2b,#30,#86,#30,#e2,#84
	db #2f,#32,#30,#32,#34,#35,#86,#35
	db #e2,#84,#37,#39,#3b,#3c,#3e,#ff
.l8ba9
	db #c0,#86,#3f,#e2,#84,#3e,#3f,#40
	db #3c,#37,#34,#35,#37,#35,#32,#86
.l8bbe equ $ + 5
	db #30,#e2,#24,#e2,#ff,#c0,#84,#40
	db #3c,#37,#34,#3c,#37,#34,#30,#83
	db #33,#e1,#88,#33,#84,#32,#86,#30
.l8bd8 equ $ + 7
	db #e2,#c2,#84,#67,#24,#e4,#ff,#c1
	db #82,#13,#84,#13,#82,#11,#84,#0e
	db #0b,#07,#e4,#c2,#88,#61,#13,#ff
.l8be9
	db #c1,#84,#0c,#18,#07,#18,#0c,#0c
	db #05,#09,#07,#13,#02,#13,#07,#13
	db #02,#13,#07,#13,#02,#13,#07,#07
	db #09,#0b,#0c,#18,#07,#18,#0c,#07
	db #09,#0b,#0c,#18,#07,#18,#0c,#0a
	db #09,#07,#05,#11,#00,#11,#05,#00
	db #02,#04,#88,#05,#e8,#0c,#e8,#84
	db #07,#08,#09,#0b,#0c,#e4,#00,#e4
.l8c2a equ $ + 1
	db #ff,#c3,#82,#2b,#84,#2b,#82,#29
	db #84,#28,#26,#1f,#e4,#c2,#88,#66
.l8c3b equ $ + 2
	db #1f,#ff,#e4,#c2,#88,#64,#1c,#1c
	db #1c,#1c,#63,#1a,#1a,#1a,#1a,#1a
	db #1a,#1a,#1a,#64,#1c,#1c,#1c,#1c
	db #1c,#1c,#1c,#1c,#61,#1d,#1d,#1d
.l8c5c equ $ + 3
	db #84,#1d,#ff,#c2,#90,#64,#21,#1c
	db #63,#1a,#88,#64,#1c,#61,#24,#ff
.l8c69
	db #c2,#90,#63,#1f,#64,#1c,#63,#1a
.l8c77 equ $ + 6
	db #88,#64,#1c,#61,#24,#ff,#c0,#84
	db #2d,#2d,#2d,#2f,#30,#30,#2f,#2d
	db #2b,#2b,#2b,#29,#88,#28,#e8,#84
	db #26,#26,#26,#28,#29,#29,#2b,#2d
	db #2d,#2b,#2b,#2a,#88,#2b,#e8,#84
	db #2d,#2d,#2d,#2f,#30,#30,#2f,#2d
	db #2b,#2b,#2b,#28,#88,#2b,#e8,#84
	db #2a,#2a,#2a,#2b,#2d,#2f,#30,#31
.l8cb7 equ $ + 6
	db #90,#32,#c2,#66,#1f,#ff,#c1,#84
	db #05,#11,#00,#11,#05,#11,#05,#11
	db #0c,#18,#07,#18,#0c,#0c,#0b,#09
	db #07,#13,#02,#13,#07,#08,#09,#0b
	db #0c,#18,#07,#18,#86,#0c,#e2,#86
	db #04,#e2,#84,#05,#11,#00,#11,#05
	db #07,#09,#0b,#0c,#18,#07,#18,#0c
	db #18,#07,#18,#86,#02,#e2,#03,#e2
	db #86,#04,#e2,#05,#e2,#8e,#07,#e2
.l8cfe equ $ + 5
	db #c2,#90,#66,#2b,#ff,#e4,#c2,#88
	db #61,#1d,#1d,#1d,#1d,#64,#1c,#1c
	db #1c,#1c,#63,#1a,#1a,#1a,#1a,#64
	db #1c,#84,#1c,#94,#1c,#88,#61,#1d
	db #1d,#1d,#1d,#64,#1c,#1c,#1c,#84
	db #1c,#90,#61,#1a,#1a,#63,#1a,#61
.l8d2b equ $ + 2
	db #1f,#ff,#c1,#84,#0c,#c2,#65,#24
.l8d37 equ $ + 6
	db #c1,#07,#c2,#65,#24,#ff,#c1,#84
.l8d3e equ $ + 5
	db #0c,#0c,#0e,#10,#ff,#c1,#86,#0c
.l8d47 equ $ + 6
	db #82,#0c,#84,#0b,#0c,#ff,#c1,#82
.l8d50 equ $ + 7
	db #0c,#0c,#84,#0c,#0b,#09,#ff,#c2
.l8d55 equ $ + 4
	db #a0,#65,#24,#ff,#c0,#84,#23,#23
	db #23,#94,#21,#e4,#86,#23,#23,#84
	db #21,#84,#1f,#21,#23,#28,#28,#26
	db #9c,#24,#ec,#84,#24,#23,#24,#88
	db #26,#84,#24,#23,#88,#21,#84,#21
	db #23,#88,#24,#84,#24,#8c,#24,#88
.l8d87 equ $ + 6
	db #26,#84,#24,#23,#21,#ff,#c0,#94
.l8d8d equ $ + 4
	db #1a,#f0,#f0,#ff,#c0,#94,#1f,#f0
.l8d93 equ $ + 2
	db #f0,#ff,#c3,#84,#26,#26,#26,#94
	db #24,#e4,#86,#2b,#2b,#84,#29,#28
	db #29,#2b,#2b,#2b,#29,#9c,#28,#ec
	db #84,#28,#26,#28,#88,#2a,#84,#28
	db #26,#88,#24,#84,#24,#26,#88,#28
	db #84,#28,#8c,#28,#88,#2a,#84,#28
.l8dc6 equ $ + 5
	db #26,#24,#94,#2f,#ff,#e3,#c3,#81
	db #29,#8c,#2b,#84,#28,#26,#23,#26
.l8dd2 equ $ + 1
	db #ff,#f0,#c2,#88,#69,#1f,#6b,#17
.l8dda equ $ + 1
	db #ff,#c6,#86,#6d,#43,#e2,#87,#43
	db #e1,#84,#43,#43,#86,#43,#e2,#84
	db #43,#43,#43,#43,#e4,#43,#86,#43
.l8df3 equ $ + 2
	db #e2,#ff,#c7,#88,#6e,#00,#00,#84
	db #00,#00,#88,#00,#00,#8c,#00,#84
.l8e05 equ $ + 4
	db #00,#88,#00,#ff,#c2,#88,#64,#1c
	db #1c,#84,#1c,#1c,#88,#1c,#84,#1c
	db #1c,#1c,#88,#1c,#84,#1c,#88,#1c
.l8e20 equ $ + 7
.l8e1d equ $ + 4
.l8e1a equ $ + 1
	db #ff,#f0,#f0,#ff,#8c,#18,#fe,#8c
	db #1c,#42,#19,#1b,#93,#19,#1b,#8c
	db #1d,#42,#19,#1b,#93,#19,#1b,#8c
.l8e33 equ $ + 2
	db #1f,#fe,#8c,#1c,#42,#1a,#1c,#1c
	db #93,#1a,#1c,#1c,#8c,#1e,#42,#1a
	db #1c,#1c,#93,#1a,#1c,#1c,#8c,#20
.l8e4a equ $ + 1
	db #fe,#c0,#86,#2b,#82,#2b,#94,#28
	db #e4,#88,#28,#83,#2b,#e1,#90,#28
	db #e4,#88,#24,#98,#26,#83,#28,#e1
	db #83,#26,#e1,#87,#24,#e1,#88,#2b
	db #94,#28,#e4,#88,#28,#84,#2b,#90
	db #28,#e4,#88,#24,#98,#26,#83,#28
	db #e1,#26,#e1,#87,#24,#e1,#88,#1f
.l8e83 equ $ + 2
	db #24,#ff,#c1,#84,#0c,#1c,#07,#1c
.l8e8a equ $ + 1
	db #ff,#c1,#84,#0c,#0e,#10,#11,#ff
.l8e98 equ $ + 7
.l8e91
	db #e4,#c1,#84,#1f,#e4,#1f,#ff,#e8
.l8e9f equ $ + 6
.l8e9a equ $ + 1
	db #ff,#c1,#88,#0c,#13,#ff,#c2,#88
.l8ea5 equ $ + 4
	db #61,#24,#24,#ff,#c1,#88,#0c,#07
.l8eab equ $ + 2
	db #0c,#ff,#c2,#88,#61,#24,#24,#24
.l8eb8 equ $ + 7
.l8eb5 equ $ + 4
.l8eb2 equ $ + 1
	db #ff,#8c,#21,#fe,#8c,#22,#fe,#8c
.l8ebb equ $ + 2
	db #23,#fe,#c1,#88,#0c,#07,#11,#0c
	db #0c,#07,#84,#13,#0e,#10,#12,#88
	db #0c,#07,#11,#0c,#0c,#07,#84,#0c
.l8ed6 equ $ + 5
	db #07,#c0,#88,#2b,#ff,#c8,#82,#2b
	db #2b,#2b,#84,#2b,#82,#28,#24,#e2
	db #30,#30,#30,#84,#30,#82,#2d,#29
	db #e2,#2b,#2b,#2b,#84,#2b,#82,#28
	db #24,#e2,#87,#26,#e1,#2b,#e1,#82
	db #2b,#2b,#2b,#84,#2b,#82,#28,#24
	db #e2,#30,#30,#30,#84,#30,#82,#2d
	db #29,#e2,#2b,#2b,#2b,#84,#2b,#82
	db #24,#26,#e2,#87,#24,#e1,#88,#30
.l8f1a equ $ + 1
	db #ff,#e4,#c2,#88,#61,#24,#24,#63
	db #24,#24,#61,#24,#24,#63,#26,#26
	db #61,#24,#24,#63,#24,#24,#61,#24
.l8f38 equ $ + 7
	db #84,#24,#88,#24,#c0,#28,#ff,#8c
.l8f3f equ $ + 6
.l8f3c equ $ + 3
	db #24,#00,#fe,#8c,#25,#fe,#8c,#26
.l8f43 equ $ + 2
	db #24,#fe,#c5,#98,#69,#24,#22,#a0
.l8f4c equ $ + 3
	db #6a,#21,#ff,#c1,#86,#09,#84,#09
	db #82,#09,#84,#10,#15,#e2,#88,#07
	db #84,#07,#82,#07,#84,#13,#82,#0e
	db #84,#13,#82,#07,#a0,#05,#e6,#ff
.l8f6e equ $ + 5
.l8f6b equ $ + 2
.l8f69
	db #e2,#ff,#8c,#29,#fe,#8c,#2a,#fe
.l8f74 equ $ + 3
.l8f71
	db #8c,#2b,#fe,#c1,#84,#0c,#c2,#61
	db #24,#c1,#07,#c2,#24,#c1,#0c,#c2
	db #24,#c1,#07,#c2,#24,#c1,#11,#c2
	db #63,#24,#c1,#0c,#c2,#24,#c1,#13
	db #c2,#26,#c1,#0e,#c2,#26,#c1,#88
	db #0c,#e8,#c1,#0a,#0b,#84,#0c,#ff
.l8fa1
	db #c0,#84,#29,#29,#28,#8c,#24,#84
	db #26,#28,#84,#29,#29,#88,#29,#86
	db #2b,#2b,#84,#2b,#8c,#28,#e4,#c2
.l8fc0 equ $ + 7
	db #88,#61,#22,#23,#84,#24,#ff,#c3
	db #84,#2d,#2d,#2b,#8c,#28,#84,#29
	db #2b,#2d,#2d,#88,#2d,#86,#2f,#2f
	db #84,#2f,#8c,#30,#e4,#c2,#88,#64
	db #26,#27,#84,#28,#ff,#00,#00,#03
	db #c0,#3e,#05,#fd,#cb,#07,#66,#c0
	db #af,#dd,#6e,#00,#dd,#66,#01,#3c
	db #cb,#7e,#23,#28,#fa,#c9,#d9,#e5
.l9000 equ $ + 7
	db #fd,#e5,#06,#01,#fd,#7e,#06,#b8
	db #38,#ce,#78,#35,#04,#e5,#d5,#d5
	db #e3,#ff,#27,#5c,#9c,#e7,#3c,#9a
	db #02,#72,#ea,#6a,#d6,#7f,#13,#ae
	db #4e,#f3,#9e,#4d,#01,#b9,#75,#35
	db #f8,#bf,#89,#57,#27,#f9,#cf,#a6
	db #80,#5c,#3a,#1a,#fc,#df,#c4,#ab
	db #93,#7c,#67,#53,#40,#2e,#1d,#0d
	db #fe,#ef,#e2,#d5,#c9,#be,#b3,#a9
	db #a0,#97,#8e,#86,#7f,#77,#71,#6a
	db #64,#5f,#59,#54,#51,#4b,#47,#43
	db #3f,#3b,#38,#35,#32,#2f,#2c,#2a
	db #28,#25,#23,#21,#1f,#1d,#1c,#1a
	db #19,#17,#16,#15,#14,#12,#11,#10
	db #0f,#0e,#0e,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#1a
	db #19,#17,#16,#15,#14,#12,#11,#10
	db #0f,#0e,#0e,#0d,#0c,#0b,#0b,#0a
	db #0a,#09,#08,#08,#07,#07,#07,#06
	db #06,#05,#05,#05,#05,#04,#04,#04
	db #03,#03,#03,#03,#03,#02,#02,#02
	db #02,#02,#02,#02,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
; a=0,1
;
; #19f0
; .l19f0
; db #00,#01,#03,#04,#08,#07,#06,#05
; db #02,#05,#05,#ff,#ff,#ff,#ff,#ff
; push af
; push hl
; push de
; push bc
; ld hl,l19f0
; add l
; ld l,a
; jr nc,l1a0c
; inc h
; .l1a0c
; ld a,(hl)
; cp #ff
; jr z,#1a1d
; push ix
; call #8896	; init
; pop ix
; pop bc
; pop de
; pop hl
; pop af
; ret
;
.music_info
	db "Supercup (1990)(Hewson)()",0
	db "",0

	read "music_end.asm"
