; Music of Gazza 2 (1990)(Empire)(David Whittaker)()
; Ripped by Megachur the 18/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GAZZA2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #8000
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

	jp l8016	; init
	jp l80ef	; play
.l8006
	jp l8260	; stop
	jp l8752
	jp l8272
.l8015 equ $ + 6
.l8014 equ $ + 5
.l8013 equ $ + 4
.l8012 equ $ + 3
.l8011 equ $ + 2
.l8010 equ $ + 1
.l800f
.music_end
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music	; a=0->3
.l8016
;
	push af
	call l8006
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l8d36
	add hl,bc
	ld a,(hl)
	ld (l8011),a
	ld (l8012),a
	inc hl
	ld ix,l8089
	ld c,#22
	ld a,#03
.l8037
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
	ld hl,l8648
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
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
	jr nz,l8037
	ld (l847d),a
	ld a,#0e
	ld (l8010),a
	ld a,#ff
	ld (l855e),a
	ld (l800f),a
	ret
.l8089
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l80ab
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l80cd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
.l80ef
;
	ld a,(l800f)
	ld hl,l8013
	or (hl)
	inc hl
	or (hl)
	inc hl
	or (hl)
	ret z
	call l886f
	ld a,(l800f)
	and a
	jr z,l8156
.l8105 equ $ + 1
	ld a,#00
	ld (l8152),a
	ld a,(l8011)
	ld hl,l855e
	add (hl)
	ld (hl),a
	jr nc,l812a
	ld b,#00
	ld ix,l8089
	call l8385
	ld ix,l80ab
	call l8385
	ld ix,l80cd
	call l8385
.l812a
	ld ix,l8089
	call l844a
	ld (l8560),hl
	ld (l8568),a
	ld ix,l80ab
	call l844a
	ld (l8562),hl
	ld (l8569),a
	ld ix,l80cd
	call l844a
	ld (l8564),hl
	ld (l856a),a
.l8152 equ $ + 1
	ld a,#00
	ld (l8566),a
.l8156
	ld a,(l800f)
	and a
	jr nz,l816c
	ld (l8568),a
	ld (l8569),a
	ld (l856a),a
	ld a,#3f
	ld (l8567),a
	jr l8194
.l816c
	ld a,(l8010)
	and #0f
	xor #0f
	jr z,l8194
	ld b,a
	ld a,(l8568)
	sub b
	jr nc,l817d
	xor a
.l817d
	ld (l8568),a
	ld a,(l8569)
	sub b
	jr nc,l8187
	xor a
.l8187
	ld (l8569),a
	ld a,(l856a)
	sub b
	jr nc,l8191
	xor a
.l8191
	ld (l856a),a
.l8194
	ld a,(l8013)
	and a
	jr z,l81bc
	ld hl,(l856d)
	ld (l8560),hl
	ld a,(l8cde)
	ld b,a
	bit 3,a
	jr nz,l81ae
	ld a,(l8573)
	ld (l8566),a
.l81ae
	ld hl,l8567
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l8575)
	ld (l8568),a
.l81bc
	ld a,(l8014)
	and a
	jr z,l81e6
	ld hl,(l856f)
	ld (l8562),hl
	ld a,(l8cf3)
	ld b,a
	bit 3,a
	jr nz,l81d6
	ld a,(l8573)
	ld (l8566),a
.l81d6
	ld hl,l8567
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(l8576)
	ld (l8569),a
.l81e6
	ld a,(l8015)
	and a
	jr z,l8212
	ld hl,(l8571)
	ld (l8564),hl
	ld a,(l8d08)
	ld b,a
	bit 3,a
	jr nz,l8200
	ld a,(l8573)
.l81ff equ $ + 2
	ld (l8566),a
.l8200
	ld hl,l8567
	ld a,(hl)
	or #24
	rlc b
	rlc b
	and b
	ld (hl),a
	ld a,(l8577)
	ld (l856a),a
.l8212
	ld hl,l856a
	ld d,#0a
.l8217
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
	jp p,l8217
	ret
.l8238
	ld de,#0a00
.l823b
	call l8245
	dec d
	jp p,l823b
	ld de,#073f
.l8245
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
.l8260
;
	xor a
	ld (l800f),a
	call l8272
	xor a
	ld (l8568),a
	ld (l8569),a
	ld (l856a),a
	ret
.l8272
	xor a
	ld (l8013),a
	ld (l8014),a
	ld (l8015),a
	jp l8238
	db #f0,#de,#d7,#e1,#a4,#00,#00,#3b
	db #c4,#b5,#7a,#64,#8c,#dd,#30,#ea
	db #eb,#f0,#b3,#13,#0a,#01
	ld a,(de)
	inc de
	ld (l8010),a
	jp l8392
	ld a,(de)
	inc de
	ld (l8011),a
	jp l8392
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
	jp l8392
	pop hl
	jp l8006
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
	jr nz,l82e3
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l82e3
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l8392
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,l8529
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l8392
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l8529
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l8392
	ld hl,l8529
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l8392
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l8392
	ld a,(de)
	inc de
	ld (l847d),a
	jr l8392
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l8392
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l8392
	ld (ix+#1d),b
	jr l8392
	ld (ix+#1d),#c0
	jr l8392
	set 1,(ix+#00)
	jr l8392
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l83c1
	jr l83bd
	ld (ix+#1f),#ff
	jr l8392
	ld (ix+#1f),b
	jr l8392
.l8385
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l8392
	ld a,(de)
	inc de
	and a
	jp m,l83ff
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l83a4
	ld (l8105),a
.l83a4
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.l83bd
	set 5,(ix+#00)
.l83c1
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l83fe
	ld a,(l8013)
	and a
	jr z,l83e0
	ld a,(l8cde)
	bit 3,a
	jr z,l83fe
.l83e0
	ld a,(l8014)
	and a
	jr z,l83ed
	ld a,(l8cf3)
	bit 3,a
	jr z,l83fe
.l83ed
	ld a,(l8015)
	and a
	jr z,l83fa
	ld a,(l8d08)
	bit 3,a
	jr z,l83fe
.l83fa
	ld (ix+#1f),#ff
.l83fe
	ret
.l83ff
	cp #c0
	jr c,l8442
	add #20
	jr c,l8423
	add #10
	jr c,l842a
	add #10
	ld c,a
	ld hl,l8639
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l8392
.l8423
	inc a
	ld (ix+#11),a
	jp l8392
.l842a
	ld hl,l867c
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
	jp l8392
.l8442
	ld hl,l81ff
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l844a
	ld c,(ix+#00)
	bit 5,c
	jr z,l847c
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l8476
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l8476
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l8476
	ld a,(ix+#18)
	ld (ix+#13),a
.l847d equ $ + 1
.l847c
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l8499
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l8499
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l8579
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l84fa
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l84c3
	bit 0,c
	jr nz,l84e1
.l84c3
	bit 5,l
	jr nz,l84d3
	sub (ix+#1b)
	jr nc,l84de
	set 5,(ix+#1d)
	sub a
	jr l84de
.l84d3
	add (ix+#1b)
	cp b
	jr c,l84de
	res 5,(ix+#1d)
	ld a,b
.l84de
	ld (ix+#1c),a
.l84e1
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l84ec
	dec d
.l84ec
	add #a0
	jr c,l84f8
.l84f0
	sla e
	rl d
	add #18
	jr nc,l84f0
.l84f8
	add hl,de
	ex de,hl
.l84fa
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l8525
	ld b,(ix+#0e)
	djnz l8522
	ld c,(ix+#0d)
	bit 7,c
	jr z,l8511
	dec b
.l8511
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l8525
.l8522
	ld (ix+#0e),b
.l8525
	cpl
	and #03
.l8529 equ $ + 1
	ld a,#38
	jr nz,l8536
	ld a,(l8105)
	xor #08
	ld (l8152),a
	ld a,#07
.l8536
	ld hl,l8567
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l8559
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l8152),a
.l8559
	ex de,hl
	ld a,(ix+#13)
	ret
.l8564 equ $ + 6
.l8562 equ $ + 4
.l8560 equ $ + 2
.l855e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l856d equ $ + 7
.l856a equ $ + 4
.l8569 equ $ + 3
.l8568 equ $ + 2
.l8567 equ $ + 1
.l8566
	db #00,#3f,#0f,#0f,#0f,#00,#00,#00
.l8575 equ $ + 7
.l8573 equ $ + 5
.l8572 equ $ + 4
.l8571 equ $ + 3
.l8570 equ $ + 2
.l856f equ $ + 1
.l856e
	db #00,#00,#00,#00,#00,#00,#3f,#00
.l8577 equ $ + 1
.l8576
	db #00,#00,#00
.l8579
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
.l8639
	dw #0f0f,#1311,#1815,#1c1a
.l8648 equ $ + 7
	dw #201e,#2221,#2423,#8025
	dw #0300,#0087,#8704,#0704
	dw #008a,#0c00,#078c,#8f0c
	dw #0c07,#0390,#8c07,#0704
	dw #008c,#008c,#0083,#0084
	dw #0085
	db #87,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #80
.l867c
	dw l869d,l86a5,l86b1,l86c3
	dw l86d5,l86dc,l86e3,l86f8
	dw l8701,l8712,l8723,l8733
	dw l8744,l874a,l874d,l8750
.l869d equ $ + 1
	db #01,#0f,#0d,#0b,#08,#05,#02,#87
.l86a5 equ $ + 1
	db #01,#0e,#0d,#0b,#09,#07,#05,#04
.l86b1 equ $ + 5
	db #03,#02,#01,#87,#01,#0f,#0e,#0d
	db #0b,#0d,#0c,#0a,#09,#0b,#0a,#08
.l86c3 equ $ + 7
	db #07,#09,#08,#06,#05,#87,#01,#0f
	db #0f,#0d,#0b,#0d,#0c,#0a,#09,#0b
	db #0a,#08,#07,#09,#08,#06,#05,#87
.l86d5 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#87,#01
.l86e3 equ $ + 7
.l86dc
	db #0e,#0d,#0c,#0b,#0a,#87,#01,#0e
	db #0d,#0c,#0b,#0a,#09,#01,#08,#01
	db #07,#01,#06,#01,#05,#01,#04,#01
.l86f8 equ $ + 4
	db #02,#01,#87,#02,#08,#09,#0a,#0b
.l8701 equ $ + 5
	db #0c,#0d,#0e,#87,#05,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l8712 equ $ + 6
	db #04,#03,#02,#01,#87,#08,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l8723 equ $ + 7
	db #05,#04,#03,#02,#01,#87,#04,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l8733 equ $ + 7
	db #05,#04,#03,#02,#01,#87,#04,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#08
.l874a equ $ + 6
.l8744
	db #0f,#0e,#0d,#0c,#87,#01,#0b,#87
.l8750 equ $ + 4
.l874d equ $ + 1
	db #01,#0f,#87,#01,#0c,#87
.l8752
	ld hl,l875b
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l875b
	db #03,#5d,#b7
	ld hl,l8013
	ld (hl),#00
	ld hl,l8a9b
	add a
	add l
	ld l,a
	jr nc,l876c
	inc h
.l876c
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l8cd8
.l8774
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l8774
	ld a,(l8cd9)
	ld (l8ce6),a
	ld hl,(l8cda)
	ld (l856d),hl
	ld a,(l8cde)
	bit 3,a
	jr nz,l8791
	ld a,l
	ld (l8573),a
.l8791
	ld a,(l8ce3)
	ld (l8ce7),a
	ld a,(l8ce5)
	ld (l8cec),a
	ld a,(l8ce2)
	ld hl,l8c3b
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l8ce8),hl
	ld (l8cea),hl
	ld a,(hl)
	ld (l8575),a
	ld hl,l8013
	inc (hl)
	ret
	ld hl,l8014
	ld (hl),#00
	ld hl,l8a9b
	add a
	add l
	ld l,a
	jr nc,l87c7
	inc h
.l87c7
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l8ced
.l87cf
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l87cf
	ld a,(l8cee)
	ld (l8cfb),a
	ld hl,(l8cef)
	ld (l856f),hl
	ld a,(l8cf3)
	bit 3,a
	jr nz,l87ec
	ld a,l
	ld (l8573),a
.l87ec
	ld a,(l8cf8)
	ld (l8cfc),a
	ld a,(l8cfa)
	ld (l8d01),a
	ld a,(l8cf7)
	ld hl,l8c3b
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l8cfd),hl
	ld (l8cff),hl
	ld a,(hl)
	ld (l8576),a
	ld hl,l8014
	inc (hl)
	ret
	ld hl,l8015
	ld (hl),#00
	ld hl,l8a9b
	add a
	add l
	ld l,a
	jr nc,l8822
	inc h
.l8822
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l8d02
.l882a
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l882a
	ld a,(l8d03)
	ld (l8d10),a
	ld hl,(l8d04)
	ld (l8571),hl
	ld a,(l8d08)
	bit 3,a
	jr nz,l8847
	ld a,l
	ld (l8573),a
.l8847
	ld a,(l8d0d)
	ld (l8d11),a
	ld a,(l8d0f)
	ld (l8d16),a
	ld a,(l8d0c)
	ld hl,l8c3b
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l8d12),hl
	ld (l8d14),hl
	ld a,(hl)
	ld (l8577),a
	ld hl,l8015
	inc (hl)
	ret
.l886f
	call l8d17
	ld a,(l8013)
	and a
	call nz,l8937
	ld a,(l8014)
	and a
	call nz,l89e9
	ld a,(l8015)
	and a
	ret z
	ld a,(l8d02)
	and a
	jr nz,l8895
	ld a,(l8d0e)
	and a
	jr nz,l8895
	ld (l8015),a
	ret
.l8895
	dec a
	ld (l8d02),a
	ld a,(l8d10)
	and a
	jr nz,l88cd
	ld a,(l8d0e)
	and a
	jr nz,l88ab
	ld a,(l8d0b)
	and a
	jr z,l890f
.l88ab
	dec a
	ld (l8d0b),a
	ld a,(l8d03)
	ld (l8d10),a
	ld a,(l8d09)
	and a
	jr z,l88be
	ld a,(l8d34)
.l88be
	ld b,a
	ld a,(l8d04)
	add b
	ld (l8571),a
	ld a,(l8d05)
	add b
	ld (l8572),a
.l88cd
	ld hl,l8d10
	dec (hl)
	ld hl,l8d0f
	ld a,(hl)
	and a
	jr z,l88df
	ld hl,l8d16
	dec (hl)
	jr nz,l8902
	ld (hl),a
.l88df
	ld a,(l8d0a)
	and a
	jr z,l8902
	jp p,l88f5
	ld hl,(l8571)
	ld de,(l8d06)
	add hl,de
	ld (l8571),hl
	jr l8902
.l88f5
	ld hl,(l8571)
	ld de,(l8d06)
	and a
	sbc hl,de
	ld (l8571),hl
.l8902
	ld a,(l8d08)
	bit 3,a
	jr nz,l890f
	ld a,(l8571)
	ld (l8573),a
.l890f
	ld a,(l8d11)
	dec a
	ld (l8d11),a
	jr nz,l8936
	ld a,(l8d0d)
	ld (l8d11),a
	ld hl,(l8d14)
	ld a,(hl)
	inc hl
	and a
	jp p,l8930
	cp #80
	jr nz,l8936
	ld hl,(l8d12)
	ld a,(hl)
	inc hl
.l8930
	ld (l8d14),hl
	ld (l8577),a
.l8936
	ret
.l8937
	ld a,(l8cd8)
	and a
	jr nz,l8947
	ld a,(l8ce4)
	and a
	jr nz,l8947
	ld (l8013),a
	ret
.l8947
	dec a
	ld (l8cd8),a
	ld a,(l8ce6)
	and a
	jr nz,l897f
	ld a,(l8ce4)
	and a
	jr nz,l895d
	ld a,(l8ce1)
	and a
	jr z,l89c1
.l895d
	dec a
	ld (l8ce1),a
	ld a,(l8cd9)
	ld (l8ce6),a
	ld a,(l8cdf)
	and a
	jr z,l8970
	ld a,(l8d32)
.l8970
	ld b,a
	ld a,(l8cda)
	add b
	ld (l856d),a
	ld a,(l8cdb)
	add b
	ld (l856e),a
.l897f
	ld hl,l8ce6
	dec (hl)
	ld hl,l8ce5
	ld a,(hl)
	and a
	jr z,l8991
	ld hl,l8cec
	dec (hl)
	jr nz,l89b4
	ld (hl),a
.l8991
	ld a,(l8ce0)
	and a
	jr z,l89b4
	jp p,l89a7
	ld hl,(l856d)
	ld de,(l8cdc)
	add hl,de
	ld (l856d),hl
	jr l89b4
.l89a7
	ld hl,(l856d)
	ld de,(l8cdc)
	and a
	sbc hl,de
	ld (l856d),hl
.l89b4
	ld a,(l8cde)
	bit 3,a
	jr nz,l89c1
	ld a,(l856d)
	ld (l8573),a
.l89c1
	ld a,(l8ce7)
	dec a
	ld (l8ce7),a
	jr nz,l89e8
	ld a,(l8ce3)
	ld (l8ce7),a
	ld hl,(l8cea)
	ld a,(hl)
	inc hl
	and a
	jp p,l89e2
	cp #80
	jr nz,l89e8
	ld hl,(l8ce8)
	ld a,(hl)
	inc hl
.l89e2
	ld (l8cea),hl
	ld (l8575),a
.l89e8
	ret
.l89e9
	ld a,(l8ced)
	and a
	jr nz,l89f9
	ld a,(l8cf9)
	and a
	jr nz,l89f9
	ld (l8014),a
	ret
.l89f9
	dec a
	ld (l8ced),a
	ld a,(l8cfb)
	and a
	jr nz,l8a31
	ld a,(l8cf9)
	and a
	jr nz,l8a0f
	ld a,(l8cf6)
	and a
	jr z,l8a73
.l8a0f
	dec a
	ld (l8cf6),a
	ld a,(l8cee)
	ld (l8cfb),a
	ld a,(l8cf4)
	and a
	jr z,l8a22
	ld a,(l8d33)
.l8a22
	ld b,a
	ld a,(l8cef)
	add b
	ld (l856f),a
	ld a,(l8cf0)
	add b
	ld (l8570),a
.l8a31
	ld hl,l8cfb
	dec (hl)
	ld hl,l8cfa
	ld a,(hl)
	and a
	jr z,l8a43
	ld hl,l8d01
	dec (hl)
	jr nz,l8a66
	ld (hl),a
.l8a43
	ld a,(l8cf5)
	and a
	jr z,l8a66
	jp p,l8a59
	ld hl,(l856f)
	ld de,(l8cf1)
	add hl,de
	ld (l856f),hl
	jr l8a66
.l8a59
	ld hl,(l856f)
	ld de,(l8cf1)
	and a
	sbc hl,de
	ld (l856f),hl
.l8a66
	ld a,(l8cf3)
	bit 3,a
	jr nz,l8a73
	ld a,(l856f)
	ld (l8573),a
.l8a73
	ld a,(l8cfc)
	dec a
	ld (l8cfc),a
	jr nz,l8a9a
	ld a,(l8cf8)
	ld (l8cfc),a
	ld hl,(l8cff)
	ld a,(hl)
	inc hl
	and a
	jp p,l8a94
	cp #80
	jr nz,l8a9a
	ld hl,(l8cfd)
	ld a,(hl)
	inc hl
.l8a94
	ld (l8cff),hl
	ld (l8576),a
.l8a9a
	ret
.l8a9b
	dw l8acf,l8add,l8aeb,l8af9
	dw l8b07,l8b15,l8b23,l8b31
	dw l8b3f,l8b4d,l8b5b,l8b69
	dw l8b77,l8b85,l8b93,l8ba1
	dw l8baf,l8bbd,l8bcb,l8bd9
	dw l8be7,l8bf5,l8c03,l8c11
	dw l8c1f,l8c2d
.l8acf
	db #07,#04,#12,#00,#01,#00,#f7,#00
.l8add equ $ + 6
	db #ff,#63,#0b,#01,#00,#00,#05,#04
	db #04,#00,#01,#00,#f7,#00,#ff,#63
.l8aeb equ $ + 4
	db #0b,#01,#00,#00,#0a,#05,#4c,#01
	db #09,#00,#f6,#00,#ff,#63,#00,#01
.l8af9 equ $ + 2
	db #00,#00,#09,#05,#c7,#00,#20,#00
	db #f6,#00,#ff,#63,#00,#01,#00,#00
.l8b07
	db #09,#05,#c0,#00,#20,#00,#f6,#00
.l8b15 equ $ + 6
	db #ff,#63,#08,#01,#00,#00,#0f,#63
	db #12,#00,#01,#00,#f7,#00,#01,#63
.l8b23 equ $ + 4
	db #02,#01,#00,#00,#1f,#63,#00,#00
	db #01,#00,#f7,#00,#ff,#63,#02,#02
.l8b31 equ $ + 2
	db #00,#01,#0f,#63,#0f,#04,#0c,#04
	db #fe,#00,#01,#00,#08,#01,#00,#00
.l8b3f
	db #0f,#63,#8f,#07,#0c,#04,#fe,#00
.l8b4d equ $ + 6
	db #01,#00,#08,#01,#00,#00,#0f,#63
	db #0f,#05,#0c,#00,#fe,#00,#01,#00
.l8b5b equ $ + 4
	db #08,#01,#00,#00,#c8,#03,#10,#00
	db #01,#00,#f7,#00,#ff,#00,#0d,#02
.l8b69 equ $ + 2
	db #ff,#00,#64,#03,#10,#00,#01,#00
	db #f7,#00,#ff,#00,#01,#04,#00,#00
.l8b77
	db #a0,#03,#16,#00,#01,#00,#f7,#00
.l8b85 equ $ + 6
	db #ff,#00,#01,#06,#00,#00,#11,#03
	db #12,#00,#01,#00,#fe,#00,#ff,#63
.l8b93 equ $ + 4
	db #06,#01,#00,#00,#2d,#03,#12,#00
	db #01,#00,#fe,#00,#ff,#63,#06,#01
.l8ba1 equ $ + 2
	db #00,#00,#04,#02,#00,#03,#08,#00
	db #fe,#00,#ff,#63,#09,#01,#00,#00
.l8baf
	db #07,#05,#00,#00,#08,#00,#f6,#01
.l8bbd equ $ + 6
	db #ff,#63,#08,#02,#00,#00,#0e,#ff
	db #0a,#00,#03,#00,#f6,#00,#ff,#0a
.l8bcb equ $ + 4
	db #08,#02,#00,#00,#3c,#0f,#1f,#00
	db #02,#00,#f6,#00,#ff,#63,#08,#05
.l8bd9 equ $ + 2
	db #00,#00,#19,#63,#0f,#00,#11,#00
	db #f7,#00,#ff,#00,#02,#02,#00,#00
.l8be7
	db #28,#63,#04,#00,#00,#00,#f7,#00
.l8bf5 equ $ + 6
	db #00,#63,#01,#02,#00,#63,#1e,#0f
	db #80,#00,#20,#00,#fe,#00,#01,#00
.l8c03 equ $ + 4
	db #08,#03,#00,#05,#46,#02,#c0,#01
	db #0c,#00,#fe,#00,#ff,#63,#00,#05
.l8c11 equ $ + 2
	db #00,#00,#3c,#04,#00,#03,#00,#03
	db #fe,#00,#ff,#02,#00,#03,#00,#0a
.l8c1f
	db #0c,#63,#09,#05,#11,#00,#f6,#00
.l8c2d equ $ + 6
	db #ff,#00,#00,#01,#00,#00,#09,#63
	db #18,#00,#01,#00,#f7,#00,#ff,#63
	db #08,#01,#00,#02
.l8c3b
	dw l8c57,l8c67,l8c80,l8c90
	dw l8c98,l8c9d,l8ca3,l8caa
	dw l8cac,l8cbb,l8cbf,l8cc1
	dw l8cc8,l8cd1
.l8c57
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l8c67
	db #06,#08,#0a,#0b,#0c,#0d,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l8c80 equ $ + 1
	db #ff,#06,#08,#0a,#0b,#0c,#0d,#0c
	db #0b,#0a,#08,#06,#04,#03,#02,#01
.l8c90 equ $ + 1
	db #ff,#0d,#0b,#09,#07,#05,#04,#03
.l8c9d equ $ + 6
.l8c98 equ $ + 1
	db #ff,#01,#04,#07,#0a,#80,#01,#03
.l8ca3 equ $ + 4
	db #06,#08,#0a,#80,#01,#03,#06,#08
.l8cac equ $ + 5
.l8caa equ $ + 3
	db #0a,#0c,#ff,#0b,#80,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l8cbb equ $ + 4
	db #03,#02,#01,#ff,#0d,#09,#01,#ff
.l8cc1 equ $ + 2
.l8cbf
	db #09,#80,#0d,#0a,#03,#08,#04,#01
.l8cc8 equ $ + 1
	db #ff,#0f,#0a,#05,#01,#0d,#08,#03
.l8cd1 equ $ + 2
	db #00,#ff,#03,#04,#05,#06,#07,#08
.l8cde equ $ + 7
.l8cdc equ $ + 5
.l8cdb equ $ + 4
.l8cda equ $ + 3
.l8cd9 equ $ + 2
.l8cd8 equ $ + 1
	db #ff,#00,#00,#00,#00,#00,#00,#00
.l8ce6 equ $ + 7
.l8ce5 equ $ + 6
.l8ce4 equ $ + 5
.l8ce3 equ $ + 4
.l8ce2 equ $ + 3
.l8ce1 equ $ + 2
.l8ce0 equ $ + 1
.l8cdf
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8cee equ $ + 7
.l8ced equ $ + 6
.l8cec equ $ + 5
.l8cea equ $ + 3
.l8ce8 equ $ + 1
.l8ce7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8cf6 equ $ + 7
.l8cf5 equ $ + 6
.l8cf4 equ $ + 5
.l8cf3 equ $ + 4
.l8cf1 equ $ + 2
.l8cf0 equ $ + 1
.l8cef
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8cfd equ $ + 6
.l8cfc equ $ + 5
.l8cfb equ $ + 4
.l8cfa equ $ + 3
.l8cf9 equ $ + 2
.l8cf8 equ $ + 1
.l8cf7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8d06 equ $ + 7
.l8d05 equ $ + 6
.l8d04 equ $ + 5
.l8d03 equ $ + 4
.l8d02 equ $ + 3
.l8d01 equ $ + 2
.l8cff
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8d0e equ $ + 7
.l8d0d equ $ + 6
.l8d0c equ $ + 5
.l8d0b equ $ + 4
.l8d0a equ $ + 3
.l8d09 equ $ + 2
.l8d08 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8d16 equ $ + 7
.l8d14 equ $ + 5
.l8d12 equ $ + 3
.l8d11 equ $ + 2
.l8d10 equ $ + 1
.l8d0f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8d17
	ld a,(l8d32)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l8d35
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l8d35 equ $ + 3
.l8d34 equ $ + 2
.l8d33 equ $ + 1
.l8d32
	db #ff,#80,#1b,#34
.l8d36
	db #2e
	dw l8d92,l8d52,l8dac
	db #2c
	dw l8f5f,l8f45,l8f79
	db #30
	dw l900d,l9009,l9011
	db #20
	dw l90ea,l90e6,l90ee
.l8d52
	dw l916a,l8dbe
.l8d56
	dw l8dcf,l8de2
	dw l8de2,l8e00,l8de2,l8de2
	dw l8e00,l8de2,l8de2,l8e00
	dw l8de2,l8de2,l8e00,l8dcf
	dw l916d,l8de2,l8de2,l8e00
	dw l8de2,l8de2,l8e00,l8de2
	dw l8de2,l8e00,l8de2,l8de2
	dw l8e00,l8dcf,l916a,#0000
.l8d92
	dw l8e37
.l8d94
	dw l8e45,l8ea1,l8ea1
	dw l8e60,l8e60,l8e45,l8ea1
	dw l8ea1,l8e60,l8e60,l8e45
	dw #0000
.l8dac
	dw l8ecf
.l8dae
	dw l8edd,l8ef3,l8ef3
	dw l8edd,l8ef3,l8ef3,l8edd
	dw #0000
.l8dbe
	db #8a,#88,#01,#01,#d7,#e7,#84,#f1
	db #08,#07,#88,#01,#01,#93
	dw l8d56
.l8dcf equ $ + 1
	db #87,#d3,#e3,#0c,#0c,#e0,#0c,#e1
	db #0c,#e0,#0c,#e1,#0c,#0b,#e5,#0c
.l8de2 equ $ + 4
	db #dc,#e9,#18,#87,#e1,#db,#0c,#8b
	db #d0,#41,#8a,#d0,#8d,#84,#1e,#01
	db #24,#db,#0c,#8b,#d0,#41,#8a,#db
	db #07,#d0,#8d,#84,#1e,#01,#24,#db
.l8e00 equ $ + 2
	db #13,#87,#0c,#8b,#d0,#41,#8a,#d0
	db #8d,#84,#1e,#01,#24,#db,#13,#8b
	db #d0,#41,#8a,#db,#0b,#d0,#8d,#84
	db #1e,#01,#24,#db,#09,#13,#8b,#d0
	db #41,#8a,#d0,#8d,#84,#1e,#01,#24
	db #db,#13,#8b,#d0,#41,#8a,#db,#13
	db #d0,#8d,#84,#1e,#01,#24,#db,#13
.l8e37 equ $ + 1
	db #87,#88,#01,#01,#8a,#d7,#e7,#84
.l8e45 equ $ + 7
	db #f1,#08,#0b,#93
	dw l8d94
	db #87,#d3
	db #88,#01,#01,#90,#e3,#1f,#1f,#e0
	db #1f,#e1,#1f,#e0,#1f,#e1,#1f,#1f
	db #e5,#1f,#d9,#88,#01,#01,#e9,#2b
.l8e60 equ $ + 2
	db #91,#87,#e0,#d1,#88,#01,#01,#18
	db #1f,#24,#1f,#18,#1f,#24,#1f,#18
	db #1f,#24,#1f,#18,#1f,#24,#1f,#18
	db #1f,#24,#1f,#18,#1f,#24,#1f,#18
	db #1f,#24,#1f,#18,#1f,#24,#1f,#18
	db #1f,#24,#1f,#18,#1f,#24,#1f,#17
	db #1f,#23,#1f,#15,#1d,#21,#1d,#d2
	db #e3,#23,#e4,#23,#e1,#23,#e0,#23
.l8ea1 equ $ + 3
	db #e3,#23,#87,#e0,#80,#d2,#88,#01
	db #01,#e1,#1f,#e3,#2b,#24,#e1,#28
	db #2b,#29,#e1,#1c,#e3,#28,#24,#e1
	db #26,#28,#26,#e1,#1f,#e3,#28,#24
	db #e1,#26,#28,#e0,#26,#d3,#e3,#1a
	db #e4,#1a,#e1,#1a,#e0,#1a,#e3,#1a
.l8ecf equ $ + 1
	db #87,#8a,#88,#01,#01,#d7,#e7,#84
.l8edd equ $ + 7
	db #f1,#08,#0e,#93
	dw l8dae
	db #87,#d3
	db #88,#01,#01,#e3,#24,#24,#e0,#24
	db #e1,#24,#e0,#24,#e1,#24,#23,#e5
.l8ef3 equ $ + 5
	db #24,#d9,#e9,#30,#87,#d2,#88,#01
	db #01,#e1,#1f,#e3,#2b,#24,#e1,#28
	db #2b,#29,#e1,#1c,#e3,#28,#24,#e1
	db #26,#28,#26,#e1,#1f,#e3,#28,#24
	db #e1,#26,#28,#26,#d3,#e3,#1f,#e4
	db #1f,#e1,#1f,#e0,#1f,#e3,#1f,#d2
	db #e1,#1f,#e3,#2b,#24,#e1,#28,#2b
	db #29,#e1,#1c,#e3,#28,#24,#e1,#26
	db #28,#26,#e1,#1f,#e3,#28,#24,#e1
	db #28,#29,#2a,#d3,#e3,#2b,#e4,#2b
	db #e1,#2b,#e0,#2b,#e3,#2b,#87
.l8f45
	dw l8f7d,l8f7d,l8f7d,l8f7d
	dw l8f7d,l8f7d,l8f9f,l8f9f
	dw l8f7d,l8f7d,l8f7d,l8f7d
	dw #0000
.l8f5f
	dw l8fbb,l8fbb,l8fbb,l8fbb
	dw l8fbb,l8fbb,l8fd2,l8fd2
	dw l8fbb,l8fbb,l8fbb,l8fbb
	dw #0000
.l8f79
	dw l8fe3,#0000
.l8f7d
	db #8a,#88,#01,#01,#e1,#db,#0c,#8b
	db #d0,#41,#8a,#d0,#8d,#84,#1e,#01
	db #24,#db,#0c,#8b,#d0,#41,#8a,#db
	db #07,#d0,#8d,#84,#1e,#01,#24,#db
.l8f9f equ $ + 2
	db #13,#87,#07,#8b,#d0,#41,#8a,#d0
	db #8d,#84,#1e,#01,#24,#db,#0e,#8b
	db #d0,#41,#8a,#db,#07,#d0,#8d,#84
.l8fbb equ $ + 6
	db #1e,#01,#24,#db,#13,#87,#8a,#88
	db #01,#01,#e0,#d1,#18,#1f,#24,#1f
	db #18,#1f,#24,#1f,#18,#1f,#24,#1f
.l8fd2 equ $ + 5
	db #18,#1f,#24,#1f,#87,#1a,#1f,#23
	db #1f,#1a,#1f,#23,#1f,#1a,#1f,#23
.l8fe3 equ $ + 6
	db #1f,#1a,#1f,#23,#1f,#87,#8a,#88
	db #01,#01,#dc,#ed,#1f,#e1,#21,#ed
	db #24,#e1,#28,#ff,#1c,#ed,#1c,#e1
	db #1d,#ed,#1f,#e1,#21,#ff,#1a,#ed
	db #18,#e1,#17,#ef,#18,#ed,#1c,#e1
	db #1a,#ef,#1c,#87
.l9009
	dw l9015,#0000
.l900d
	dw l9052,#0000
.l9011
	dw l906f,#0000
.l9015
	db #8a,#88,#01,#01,#d3,#e1,#11,#e3
	db #11,#11,#e1,#11,#e2,#11,#e0,#13
	db #e1,#15,#e3,#15,#15,#e1,#15,#e2
	db #15,#e0,#17,#e1,#18,#e3,#18,#18
	db #e1,#18,#e2,#18,#e0,#1a,#e1,#1d
	db #e3,#1d,#1d,#e1,#1d,#e2,#1d,#e0
	db #1d,#e1,#11,#e3,#11,#11,#e1,#11
.l9052 equ $ + 5
	db #e2,#11,#e0,#10,#87,#8b,#e1,#d0
	db #27,#e0,#d0,#41,#41,#e1,#d0,#27
	db #e0,#d0,#41,#e1,#d0,#27,#27,#e0
	db #d0,#41,#e1,#d0,#27,#e0,#d0,#41
.l906f equ $ + 2
	db #41,#87,#8a,#88,#01,#01,#da,#e0
	db #18,#1d,#21,#1d,#18,#1d,#21,#1d
	db #18,#1d,#21,#1d,#18,#1d,#21,#18
	db #1d,#21,#24,#21,#1d,#21,#24,#21
	db #1d,#21,#24,#21,#1d,#21,#24,#1d
	db #21,#24,#28,#24,#21,#24,#28,#24
	db #21,#24,#28,#24,#21,#24,#28,#24
	db #21,#24,#29,#24,#21,#24,#29,#24
	db #21,#24,#29,#24,#21,#24,#29,#24
	db #95,#0d,#21,#24,#29,#24,#95,#0c
	db #21,#24,#29,#24,#95,#0b,#21,#24
	db #29,#24,#95,#0a,#21,#24,#29,#24
	db #95,#09,#21,#24,#29,#24,#95,#08
	db #21,#24,#29,#24,#95,#06,#21,#24
	db #29,#24,#95,#03,#21,#24,#29,#24
	db #8e
.l90e6
	dw l90f2,#0000
.l90ea
	dw l9112,#0000
.l90ee
	dw l9136,#0000
.l90f2
	db #8a,#88,#01,#01,#db,#90,#e2,#11
	db #11,#0e,#0e,#15,#15,#15,#15,#11
	db #11,#15,#15,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#87
.l9112
	db #8a,#88,#01,#01,#d5,#e3,#24,#e0
	db #24,#24,#e1,#26,#26,#26,#eb,#24
	db #e3,#24,#e0,#24,#24,#e1,#24,#24
	db #24,#e2,#21,#21,#21,#21,#21,#21
.l9136 equ $ + 4
	db #21,#21,#21,#8e,#8a,#88,#01,#01
	db #d5,#e3,#29,#e0,#29,#29,#e1,#29
	db #29,#29,#eb,#28,#e3,#29,#e0,#29
	db #29,#e1,#28,#28,#28,#e2,#26,#95
	db #0d,#26,#95,#0c,#26,#95,#0b,#26
	db #95,#0a,#26,#95,#09,#26,#95,#08
	db #26,#95,#06,#26,#95,#03,#26,#8e
.l916a
	db #89,#02,#87
.l916d
	db #89,#05,#87
;
.music_info
	db "Gazza 2 (1990)(Empire)(David Whittaker)",0
	db "",0

	read "music_end.asm"
