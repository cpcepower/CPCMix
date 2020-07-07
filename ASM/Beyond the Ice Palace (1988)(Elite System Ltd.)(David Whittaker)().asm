; Music of Beyond the Ice Palace (1988)(Elite System Ltd.)(David Whittaker)()
; Ripped by Megachur the 02/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BEYONTIP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #0110
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

;
.init_music	; a=0,1
;
	push af
	push bc
	push de
	push hl
	push ix
	call l0120
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l0120
	ld hl,l0754
	ld (hl),#00
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l0755
	add hl,bc
	ld a,(hl)
	ld (l020f),a
	inc hl
	ld ix,l0175
	ld c,#20
	ld a,#03
.l013e
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
	jr nz,l013e
	ld (l046d),a
	inc a
	ld (l01d5),a
	ld (l0754),a
	ret
.l0175
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l0195
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l01b5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.l01d5
	db #00
;
.play_music	; l01e6
;
	push af
	push bc
	push de
	push hl
	push ix
	call l01e6
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l01e6
	ld a,(l0754)
	and a
	jp z,l023f
.l01ee equ $ + 1
	ld a,#00
	ld (l023b),a
	ld hl,l01d5
	dec (hl)
	jr nz,l0213
	ld b,(hl)
	ld ix,l0175
	call l038a
	ld ix,l0195
	call l038a
	ld ix,l01b5
	call l038a
.l020f equ $ + 1
	ld a,#01
	ld (l01d5),a
.l0213
	ld ix,l0175
	call l043a
	ld (l0531),hl
	ld (l0539),a
	ld ix,l0195
	call l043a
	ld (l0533),hl
	ld (l053a),a
	ld ix,l01b5
	call l043a
.l0234
	ld (l0535),hl
	ld (l053b),a
.l023b equ $ + 1
	ld a,#00
	ld (l0537),a
.l023f
	ld a,(l0754)
	and a
	ret z
	ld hl,l053c
	ld d,#0b
.l0249
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
	jp p,l0249
	ret
.l026a
	ld de,#0d00
.l026d
	call l0277
	dec d
	jp p,l026d
	ld de,l073f
.l0277
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
.stop_music	;l0292
;
	xor a
	ld (l0754),a
	call l026a
	xor a
	ld (l0539),a
	ld (l053a),a
	ld (l053b),a
	ret
.l02a4
	push af
	push bc
	push de
	push hl
	push ix
	call stop_music	;l0292
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
;
.jumps_table
;
	db l037b-$	; #c7
	db l0364-$	; #af
	db l0369-$	; #b3
	db l036f-$	; #b8
	db l032e-$	; #76
	db l035e-$	; #a5
	db l035a-$	; #a0
	db l02c8-$	; #0d
	db l034b-$	; #8f
	db l0344-$	; #87
	db l030a-$	; #4c
	db l02f5-$	; #36
	db l031e-$	; #5e
	db l0375-$	; #b4
	db l02c4-$	; #02
	db l0384-$	; #c1
.l02c4
	pop hl
	jp stop_music	;l02a4
.l02c8
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
	jr nz,l02ea
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l02ea
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l0398
.l02f5
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,l0516
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l0398
.l030a
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l0516
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l0398
.l031e
	ld hl,l0516
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l0398
.l032e
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l0398
.l0344
	ld a,(de)
	inc de
	ld (l046d),a
	jr l0398
.l034b
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l0398
.l035a
	set 7,(ix+#00)
.l035e
	set 3,(ix+#00)
	jr l0398
.l0364
	ld (ix+#1d),b
	jr l0398
.l0369
	ld (ix+#1d),#40
	jr l0398
.l036f
	ld (ix+#1d),#c0
	jr l0398
.l0375
	set 1,(ix+#00)
	jr l0398
.l037b
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l03c7
.l0384
	res 5,(ix+#00)
	jr l03c7
.l038a
	dec (ix+#10)
	jr nz,l03d4
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l0398
	ld a,(de)
	inc de
	and a
	jp m,l03e5
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l03aa
	ld (l01ee),a
.l03aa
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
.l03c7
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l03d4
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l03e1
	inc (ix+#12)
	ret
.l03e1
	dec (ix+#12)
	ret
.l03e5
	cp #b8
	jr c,l0432
	add #20
	jr c,l0413
	add #10
	jr c,l041a
	add #10
	jr nc,l040b
	ld c,a
	ld hl,l060a
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l0398
.l040b
	add #09
	ld (l020f),a
	jp l0398
.l0413
	inc a
	ld (ix+#11),a
	jp l0398
.l041a
	ld hl,l063d
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
	jp l0398
.l0432
	ld hl,jumps_table-&80	;l0234
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l043a
	ld c,(ix+#00)
	bit 5,c
	jr z,l046c
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l0466
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l0466
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l0466
	ld a,(ix+#18)
	ld (ix+#13),a
.l046d equ $ + 1
.l046c
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l0486
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l0486
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l054a
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l04e7
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l04b0
	bit 0,c
	jr nz,l04ce
.l04b0
	bit 5,l
	jr nz,l04c0
	sub (ix+#1b)
	jr nc,l04cb
	set 5,(ix+#1d)
	sub a
	jr l04cb
.l04c0
	add (ix+#1b)
	cp b
	jr c,l04cb
	res 5,(ix+#1d)
	ld a,b
.l04cb
	ld (ix+#1c),a
.l04ce
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l04d9
	dec d
.l04d9
	add #a0
	jr c,l04e5
.l04dd
	sla e
	rl d
	add #18
	jr nc,l04dd
.l04e5
	add hl,de
	ex de,hl
.l04e7
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l0512
	ld b,(ix+#0e)
	djnz l050f
	ld c,(ix+#0d)
	bit 7,c
	jr z,l04fe
	dec b
.l04fe
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l0512
.l050f
	ld (ix+#0e),b
.l0512
	cpl
	and #03
.l0516 equ $ + 1
	ld a,#38
	jr nz,l0523
	ld a,(l01ee)
	xor #08
	ld (l023b),a
	ld a,#07
.l0523
	ld hl,l0538
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l0531
	db #00,#00
.l0533
	db #00,#00
.l0535
	db #00,#00
.l0537
	db #00
.l0538
	db #3f
.l0539
	db #0f
.l053a
	db #0f
.l053b
	db #0f
.l053c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#3f,#10,#00,#10,#00
.l054a
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
.l060a
	db #0e,#0e,#10,#12,#14,#16,#17,#1a
	db #1d,#1f,#20,#21,#22,#23,#80,#07
	db #0c,#8f,#03,#07,#8c,#00,#03,#87
	db #00,#04,#87,#00,#8c,#0c,#00,#00
	db #80,#00,#03,#07,#8c,#07,#0c,#90
	db #00,#83,#00,#84,#00,#85,#00,#87
	db #04,#07,#8c
.l063d
	dw l065e,l0661,l0668,l067a
	dw l06a4,l06b3,l06dd,l06eb
	dw l06f7,l06ff,l0702,l0713
	dw l0725,l0732,l0743,l074a
.l065e equ $ + 1
	db #00,#0d,#87
.l0661 equ $ + 1
	db #07,#0e,#0d,#0c,#0b,#0a,#87
.l0668 equ $ + 1
	db #01,#0f,#0e,#0c,#0b,#0d,#0c,#0a
	db #09,#0b,#0a,#08,#07,#09,#08,#06
	db #05,#87
.l067a equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0d,#0c
	db #0b,#0a,#09,#0b,#0a,#09,#08,#07
	db #09,#08,#07,#06,#05,#07,#06,#05
	db #04,#03,#05,#04,#03,#02,#01,#04
	db #03,#02,#01,#03,#02,#01,#02,#01
	db #00,#87
.l06a4 equ $ + 1
	db #03,#0f,#0e,#0d,#0c,#0b,#0d,#0c
	db #0b,#0a,#09,#0b,#0a,#09,#87
.l06b3 equ $ + 1
	db #02,#0f,#0e,#0d,#0c,#0b,#0d,#0c
	db #0b,#0a,#09,#0b,#0a,#09,#08,#07
	db #09,#08,#07,#06,#05,#07,#06,#05
	db #04,#03,#05,#04,#03,#02,#01,#04
	db #03,#02,#01,#03,#02,#01,#02,#01
	db #00,#87
.l06dd equ $ + 1
	db #0a,#0c,#0b,#0a,#09,#08,#07,#06
.l06eb equ $ + 7
	db #05,#04,#03,#02,#01,#87,#0a,#09
	db #08,#07,#06,#05,#04,#03,#03,#02
	db #01,#87
.l06f7 equ $ + 1
	db #0a,#06,#05,#04,#03,#02,#01,#87
.l06ff equ $ + 1
	db #ff,#0e,#87
.l0702 equ $ + 1
	db #01,#0e,#0c,#0b,#0a,#0c,#0a,#09
	db #08,#0a,#08,#07,#06,#08,#06,#05
	db #87
.l0713 equ $ + 1
	db #01,#0f,#0e,#0c,#0b,#0d,#0c,#0a
	db #09,#01,#0a,#08,#07,#0a,#08,#06
	db #05,#87
.l0725 equ $ + 1
	db #01,#0c,#0d,#0e,#0c,#0b,#0b,#0a
	db #09,#08,#0a,#09,#87
.l0732 equ $ + 1
	db #03,#0a,#0b,#0c,#0d,#0e,#0f,#0e
.l073f equ $ + 6
	db #0c,#0b,#0d,#0c,#0a,#09,#0b,#0a
	db #87
.l0743 equ $ + 1
	db #0a,#0d,#0c,#0b,#0a,#09,#87,#01
.l074a
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#87
.l0754
.music_end
	db #00
.l0755
	db #08
	dw l07e3,l0763,l0883
	db #07
	dw l0b44,l0b32,l0b48
.l0763
	dw l0bd7,l08d1,l08e2,l0906
	dw l08e2,l0906,l0b2e,l0923
	dw l0923,l0950,l0923,l0923
	dw l0950,l0bda,l0923,l0923
	dw l0950,l0bd4,l0923,l0923
	dw l0950,l0bdd,l0923,l0923
	dw l0950,l0be0,l0923,l0923
	dw l0950,l0b2e,l0b2e,l0b2e
	dw l0923,l0923,l0950,l0923
	dw l0923,l0950,l0b2e,l0b2e
	dw l0b2e,l0bda,l0923,l0923
	dw l0950,l0b2e,l0b2e,l0b2e
	dw l0bd4,l0923,l0923,l0950
	dw l0bdd,l0923,l0923,l0950
	dw l0be0,l0923,l0923,l0950
	dw l0b2e,l0b2e,l0b2e,#0000
.l07e3
	dw l099a,l08e0,l08e6,l0906
	dw l08e6,l09a5,l0b2e,l09bd
	dw l09bd,l09bd,l09bd,l09d1
	dw l09bd,l09bd,l09bd,l09bd
	dw l09d1,l09bd,l09bd,l09bd
	dw l09bd,l09d1,l09bd,l09bd
	dw l09bd,l09bd,l09d1,l09bd
	dw l09bd,l09bd,l09bd,l09d1
	dw l09bd,l09bd,l09bd,l09bd
	dw l09d1,l0b2e,l0b2e,l0b2e
	dw l09bd,l09bd,l09bd,l09bd
	dw l09d1,l09bd,l09bd,l09bd
	dw l09bd,l09d1,l0b2e,l0b2e
	dw l0b2e,l09bd,l09bd,l09bd
	dw l09bd,l09d1,l0b2e,l0b2e
	dw l0b2e,l09bd,l09bd,l09bd
	dw l09bd,l09d1,l09bd,l09bd
	dw l09bd,l09bd,l09d1,l09bd
	dw l09bd,l09bd,l09bd,l09d1
	dw l0b2e,l0b2e,l0b2e,#0000
.l0883
	dw l0a14,l0a25,l0a4c,l0a25
	dw l0a60,l0b2e,l0a78,l0ab1
	dw l0a78,l0ab1,l0a78,l0ab1
	dw l0afa,l0a78,l0ab1,l0afa
	dw l0b2e,l0b2e,l0b2e,l0a78
	dw l0ab1,l0b2e,l0b2e,l0b2e
	dw l0a78,l0ab1,l0b2e,l0b2e
	dw l0b2e,l0a78,l0ab1,l0afa
	dw l0a78,l0ab1,l0afa,l0b2e
	dw l0b2e,l0b2e,#0000
.l08d1
	db #bf,#8a,#88,#01,#02,#82,#d5,#c0
	db #e7,#07,#07,#07,#0a,#be,#87
.l08e0
	db #81,#87
.l08e2
	db #88,#01,#02,#82
.l08e6
	db #8a,#d5,#c0,#e3,#0c,#0c,#0c,#e1
	db #0c,#16,#e3,#0c,#0c,#0c,#e1,#0c
	db #16,#e3,#0c,#0c,#0c,#e1,#0c,#16
	db #e3,#0c,#0c,#0c,#e1,#0c,#16,#87
.l0906
	db #e3,#07,#07,#07,#e1,#07,#06,#e3
	db #07,#07,#07,#e1,#07,#06,#e3,#07
	db #07,#07,#e1,#07,#06,#e3,#07,#07
	db #07,#e1,#07,#06,#87
.l0923
	db #bb,#8a,#88,#01,#01,#d2,#c0,#e1
	db #0c,#0c,#13,#13,#8d,#07,#07,#13
	db #13,#0c,#0c,#0f,#0f,#8d,#07,#07
	db #0f,#0f,#0c,#0c,#13,#13,#8d,#07
	db #07,#13,#13,#07,#07,#13,#13,#8d
	db #07,#07,#13,#13,#87
.l0950
	db #08,#08,#14,#14,#8d,#08,#08,#14
	db #14,#05,#05,#11,#11,#8d,#05,#05
	db #11,#11,#07,#07,#13,#13,#8d,#07
	db #07,#13,#13,#13,#13,#1f,#1f,#8d
	db #13,#13,#1f,#1f,#08,#08,#14,#14
	db #8d,#08,#08,#14,#14,#05,#05,#11
	db #11,#8d,#05,#05,#11,#11,#03,#03
	db #0f,#0f,#8d,#03,#03,#0f,#0f,#07
	db #07,#13,#13,#8d,#13,#13,#8d,#1f
	db #1f,#87
.l099a
	db #d5,#8b,#e9,#8d,#0e,#8d,#08,#eb
	db #8d,#05,#87
.l09a5
	db #d1,#8a,#88,#01,#02,#82,#c0,#ed
	db #37,#e1,#43,#ed,#3e,#e1,#42,#ed
	db #43,#e1,#4a,#ed,#4a,#e1,#4a,#87
.l09bd
	db #8a,#df,#81,#e3,#c3,#3c,#43,#48
	db #43,#e1,#3c,#3c,#43,#43,#48,#48
	db #c1,#43,#43,#87
.l09d1
	db #e1,#c5,#44,#44,#44,#44,#44,#44
	db #44,#44,#41,#41,#41,#41,#41,#41
	db #41,#41,#43,#43,#43,#43,#43,#43
	db #43,#43,#4f,#4f,#4f,#4f,#4f,#4f
	db #4f,#4f,#44,#44,#44,#44,#44,#44
	db #44,#44,#41,#41,#41,#41,#41,#41
	db #41,#41,#3f,#3f,#3f,#3f,#4b,#4b
	db #4b,#4b,#43,#43,#43,#43,#4f,#4f
	db #4f,#4f,#87
.l0a14
	db #8a,#88,#01,#01,#82,#dd,#c0,#f7
	db #52,#e5,#85,#8f,#e1,#d5,#cb,#38
	db #87
.l0a25
	db #8a,#88,#01,#01,#82,#d4,#ed,#84
	db #01,#46,#37,#e1,#cc,#3d,#ed,#84
	db #01,#46,#3c,#e1,#cc,#44,#ed,#84
	db #01,#46,#43,#e1,#cc,#49,#ed,#84
	db #01,#46,#48,#e1,#cc,#50,#87
.l0a4c
	db #d4,#8a,#c5,#ed,#3e,#e1,#42,#ed
	db #43,#e1,#49,#ed,#4a,#e1,#4e,#ed
	db #4f,#e1,#4f,#87
.l0a60
	db #d1,#8a,#88,#01,#01,#82,#c0,#ed
	db #3e,#e1,#42,#ed,#43,#e1,#49,#ed
	db #4a,#e1,#4e,#ed,#4f,#e1,#4f,#87
.l0a78
	db #d3,#8a,#88,#02,#02,#82,#c6,#e9
	db #30,#e1,#32,#e3,#33,#e9,#37,#e1
	db #37,#e3,#38,#e9,#35,#e1,#32,#e3
	db #33,#e9,#32,#e1,#33,#e3,#32,#c5
	db #e9,#30,#e1,#32,#e3,#33,#e9,#37
	db #e1,#37,#e3,#38,#e9,#35,#e1,#32
	db #e3,#33,#e9,#32,#e1,#33,#e3,#32
	db #87
.l0ab1
	db #da,#8a,#81,#c0,#e1,#3b,#3c,#3c
	db #3c,#3e,#3c,#3c,#3c,#3b,#3c,#3c
	db #3c,#33,#3c,#3c,#3c,#3c,#3e,#3e
	db #3e,#3f,#3e,#3e,#3e,#48,#4a,#4a
	db #4a,#4b,#4a,#4a,#4a,#c5,#3b,#3c
	db #3c,#3c,#3e,#3c,#3c,#3c,#3b,#3c
	db #3c,#3c,#33,#3c,#3c,#3c,#cb,#39
	db #3a,#3a,#3a,#45,#46,#46,#46,#cc
	db #38,#37,#37,#37,#44,#43,#43,#43
	db #87
.l0afa
	db #db,#8a,#81,#e5,#c0,#48,#43,#44
	db #41,#43,#3e,#3f,#3b,#3c,#37,#38
	db #35,#37,#32,#33,#2f,#c6,#48,#43
	db #44,#41,#43,#3e,#3f,#3b,#3c,#37
	db #38,#35,#37,#32,#33,#2f,#c5,#48
	db #43,#44,#41,#43,#3e,#3f,#3b,#3c
	db #37,#e3,#8f,#87
.l0b2e
	db #e5,#85,#8f,#87
.l0b32
	dw l0b56,l0b56,l0b56,l0b56
	dw l0b56,l0b56,l0b69,l0b56
	dw #0000
.l0b44
	dw l0b74,#0000
.l0b48
	dw l0bd7,l0b8b,l0bda,l0b8b
	dw l0bd4,l0b8b,#0000
.l0b56
	db #8a,#88,#01,#01,#82,#d4,#c0,#e1
	db #0c,#18,#8d,#0c,#18,#0c,#8d,#18
	db #0c,#18,#87
.l0b69
	db #0f,#1b,#8d,#0f,#1b,#0f,#8d,#1b
	db #0f,#1b,#87
.l0b74
	db #8a,#88,#01,#01,#82,#dc,#ef,#cd
	db #30,#c4,#30,#c3,#30,#c8,#24,#cd
	db #30,#c4,#30,#c8,#27,#24,#87
.l0b8b
	db #8a,#88,#01,#02,#82,#dc,#c0,#e5
	db #34,#e0,#30,#32,#e1,#30,#e0,#2b
	db #2d,#e1,#2b,#2d,#eb,#28,#e0,#2b
	db #28,#e1,#2b,#eb,#27,#e0,#2b,#27
	db #e1,#2b,#ef,#84,#02,#46,#28,#c5
	db #e5,#34,#e0,#30,#32,#e1,#30,#e0
	db #2b,#2d,#e1,#2b,#2d,#eb,#28,#e0
	db #2b,#28,#e1,#2b,#eb,#27,#e0,#2b
	db #27,#e1,#2b,#ef,#84,#02,#46,#28
	db #87
.l0bd4
	db #89,#ff,#87
.l0bd7
	db #89,#00,#87
.l0bda
	db #89,#01,#87
.l0bdd
	db #89,#02,#87
.l0be0
	db #89,#03,#87
;
.music_info
	db "Beyond the Ice Palace (1988)(Elite System Ltd.)(David Whittaker)",0
	db "",0

	read "music_end.asm"
