; Music of Xenon (1988)(Melbourne House)(David Whittaker)()
; Ripped by Megachur the 14/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XENON.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #1303
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.init_music	; 1303
;
	ld b,#00
	ld hl,l13b7
	ld (hl),b
	inc hl
	ld (hl),b
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld hl,l1a7f
	add hl,bc
	ld a,(hl)
	ld (l1835),a
	inc hl
	ld ix,l1356
	ld c,#20
	ld a,#03
.l1322
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
	call l14df
	add ix,bc
	dec a
	jr nz,l1322
;.l134d equ $ + 2
	ld (l1589),a
	inc a
	ld (l13b6),a
	ld (l13b7),a
	ret
.l1356
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l1376
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l1396
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.l13b6
	db #00
.l13b7
.music_end
	db #00
.l13b8
	db #00
;
.stop_music
.l13b9
;
	xor a
	ld (l13b7),a
	ld (l13b8),a
	call l18ba
	xor a
	ld hl,l1ee5
	ld (hl),a
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	ret
;
.jumps_table
;
	db #c9
	db #b1
	db #b5
	db #ba
	db #78
	db #a7
	db #a2
	db #0f
	db #91
	db #89
	db #4e
	db #38
	db #60
	db #b6
	db #04
	db #fd
	db #d0
	db #cf
	pop hl
	jp l13b9
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
	jr nz,l1405
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l1405
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l14ad
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,l1631
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l14ad
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l1631
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l14ad
	ld hl,l1631
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l14ad
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l14ad
	ld a,(de)
	inc de
	ld (l1589),a
	jr l14ad
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l14ad
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l14ad
	ld (ix+#1d),b
	jr l14ad
	ld (ix+#1d),#40
	jr l14ad
	ld (ix+#1d),#c0
	jr l14ad
	set 1,(ix+#00)
	jr l14ad
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l14d9
.l149f
	dec (ix+#10)
	jr nz,l14e6
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l14ad
	ld a,(de)
	inc de
	or a
	jp m,l14f7
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l14bf
	ld (l1811),a
.l14bf
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l14d9
	ld a,(ix+#11)
	ld (ix+#10),a
.l14df
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l14e6
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l14f3
	inc (ix+#12)
	ret
.l14f3
	dec (ix+#12)
	ret
.l14f7
	cp #c0
	jr c,l1535
	add #20
	jr c,l151a
	add #10
	jr c,l1520
	add #10
	ld c,a
	ld hl,l1a3f
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr l14ad
.l151a
	inc a
	ld (ix+#11),a
	jr l14ad
.l1520
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
	jp l14ad
.l1535
	ld hl,jumps_table-&80	;l134d
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l153d
	ld c,(ix+#00)
	bit 5,c
	jr z,l1588
	ld a,(ix+#16)
	sub #10
	jr nc,l1570
	bit 6,c
	jr z,l1575
	add (ix+#13)
	jr nc,l1555
	sbc a
.l1555
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l156b
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l1588
.l156b
	ld (ix+#18),a
	jr l1588
.l1570
	ld (ix+#16),a
	jr l1588
.l1575
	cpl
	sub #0f
	add (ix+#13)
	jr c,l157e
	sub a
.l157e
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l1588
	res 5,c
.l1589 equ $ + 1
.l1588
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,l15a0
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l15a0
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l1634
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l1602
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l15cb
	bit 0,c
	jr nz,l15e9
.l15cb
	bit 5,l
	jr nz,l15db
	sub (ix+#1b)
	jr nc,l15e6
	set 5,(ix+#1d)
	sub a
	jr l15e6
.l15db
	add (ix+#1b)
	cp b
	jr c,l15e6
	res 5,(ix+#1d)
	ld a,b
.l15e6
	ld (ix+#1c),a
.l15e9
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l15f4
	dec d
.l15f4
	add #a0
	jr c,l1600
.l15f8
	sla e
	rl d
	add #18
	jr nc,l15f8
.l1600
	add hl,de
	ex de,hl
.l1602
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l162d
	ld b,(ix+#0e)
	djnz l162a
	ld c,(ix+#0d)
	bit 7,c
	jr z,l1619
	dec b
.l1619
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l162d
.l162a
	ld (ix+#0e),b
.l162d
	cpl
	and #03
.l1631 equ $ + 1
	ld a,#38
	jr nz,l163e
.l1634
	ld a,(l1811)
	xor #08
	ld (l185e),a
	ld a,#07
.l163e
	ld hl,l1ee4
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
	dw #0ef8,#0e10,#0d60,#0c80
	dw #0bd8,#0b28,#0a88,#09f0
	dw #0960,#08e0,#0858,#07e0
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

	db #6e,#61,#6d,#65,#78,#41,#20,#64
	db #61,#4d,#20,#65,#68,#54,#20,#79
	db #6e,#69,#54,#20,#38,#38,#39,#31
	db #20,#29,#63,#28

	ld hl,l13b8
	ld bc,#0010
	ld (hl),b
	push hl
	ld l,a
	ld h,b
	add hl,hl
	add hl,hl
	ld d,h
	ld e,l
	add hl,hl
	add hl,hl
	ld e,a
	ld d,b
	add hl,de
	ld de,l18d8
	add hl,de
	ld de,l1a2c
	ldir
	ld a,(l1a32)
	ld e,a
	ld d,#0c
	call l18b0
	ld e,(hl)
	inc d
	call l18b0
	ld a,(l1a2d)
	ld (l1a3d),a
	ld hl,(l1a2e)
	ld (l1ee9),hl
	ld (l1eef),hl
	ld de,(l1a30)
	ld (l1eed),de
	ld a,(l1a33)
	ld (l1ef0),a
	pop hl
	inc (hl)
	ret
.l175a
	ld (l13b8),a
	jp l18ba
.l1760
	call l17e2
	ld a,(l13b8)
	or a
	ret z
	ld hl,l1a2c
	ld a,(hl)
	or a
	jr z,l175a
	dec (hl)
	ld a,(l1a3d)
	or a
	jr nz,l17a3
	ld hl,l1a3a
	ld a,(hl)
	or a
	ret z
	dec (hl)
	ld a,(l1a2d)
	ld (l1a3d),a
	ld a,(l1a3b)
	or a
	jr z,l178c
	ld a,(l17fd)
.l178c
	ld b,a
	ld a,(l1a2e)
	add b
	ld (l1ee9),a
	ld a,(l1a2f)
	add b
	and #0f
	ld (l1eea),a
	ld hl,(l1a30)
	ld (l1eed),hl
.l17a3
	ld hl,l1a3d
	dec (hl)
	ld a,(l1a38)
	or a
	jr z,l17c2
	ld hl,(l1ee9)
	ld de,(l1a34)
	jp p,l17bd
	add hl,de
	ld (l1ee9),hl
	jr l17c2
.l17bd
	sbc hl,de
	ld (l1ee9),hl
.l17c2
	ld a,(l1ee9)
	ld (l1eef),a
	ld a,(l1a39)
	or a
	ret z
	ld hl,(l1eed)
	ld de,(l1a36)
	jp p,l17dc
	add hl,de
	ld (l1eed),hl
	ret
.l17dc
	sbc hl,de
	ld (l1eed),hl
	ret
.l17e2
	ld a,(l17fd)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l1800
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l1800 equ $ + 3
.l17fd
	db #68,#f5,#50,#ca
;
.play_music	; l1801
;
	ld a,(l1f08)
	and a
	ret z
	call l1760
	ld a,(l13b7)
	or a
	jp z,l1862
.l1811 equ $ + 1
	ld a,#00
	ld (l185e),a
	ld hl,l13b6
	dec (hl)
	jr nz,l1836
	ld b,(hl)
	ld ix,l1356
	call l149f
	ld ix,l1376
	call l149f
	ld ix,l1396
	call l149f
	ld hl,l13b6
.l1835 equ $ + 1
	ld (hl),#01
.l1836
	ld ix,l1356
	call l153d
	ld (l1edd),hl
	ld (l1ee5),a
	ld ix,l1376
	call l153d
	ld (l1edf),hl
	ld (l1ee6),a
	ld ix,l1396
	call l153d
	ld (l1ee1),hl
	ld (l1ee7),a
.l185e equ $ + 1
	ld a,#00
	ld (l1ee3),a
.l1862
	ld a,(l13b8)
	or a
	jr z,l1892
	ld hl,(l1ee9)
	ld (l1edd),hl
	ld hl,(l1eed)
	ld (l1ee1),hl
	ld a,(l1eef)
	ld (l1ee3),a
	ld a,(l1ee4)
	or #2d
	ld hl,l1ef0
	and (hl)
	ld (l1ee4),a
	ld a,(l1ef1)
	ld (l1ee5),a
	ld a,(l1ef3)
	ld (l1ee7),a
.l1892
	ld hl,l13b7
	ld a,(hl)
	inc hl
	or (hl)
	ret z
	jp l189c
.l189c
	jp l1f09
	ld a,#0b
.l18a1
	ld b,#00
	ld c,#a0
	out (c),a
	ld c,#a1
	outd
	dec a
	jp p,l18a1
	ret
.l18b0
	jp l1f3c
	out (c),d
	ld c,#a1
	out (c),e
	ret
.l18ba
	jp l1f5c
	ld b,#00
	sub a
.l18c0
	ld c,#a0
	out (c),d
	ld c,#a1
	out (c),a
	dec d
	jp p,l18c0
	ld de,#073f
	ld c,#a0
	out (c),d
	ld c,#a1
	out (c),e
	ret
.l18d8
	db #37,#09,#00,#08,#00,#0e,#5a,#f2
	db #c1,#00,#e0,#00,#01,#01,#b4,#00
	db #00,#32,#06,#14,#00,#1e,#00,#46
	db #d2,#07,#00,#08,#00,#ff,#01,#14
	db #01,#00,#1e,#07,#80,#03,#00,#07
	db #28,#fa,#40,#00,#30,#00,#01,#01
	db #00,#00,#00,#3c,#0d,#00,#01,#20
	db #04,#3c,#fa,#0c,#00,#28,#00,#01
	db #01,#ff,#00,#00,#32,#63,#00,#00
	db #02,#00,#50,#d2,#02,#00,#02,#00
	db #ff,#ff,#00,#00,#00,#3c,#0f,#00
	db #04,#20,#04,#3c,#fa,#30,#00,#28
	db #00,#01,#01,#ff,#00,#00,#32,#0f
	db #00,#01,#20,#01,#3c,#fa,#30,#00
	db #38,#00,#ff,#ff,#ff,#00,#00,#32
	db #0a,#00,#03,#20,#03,#3c,#fa,#90
	db #00,#98,#00,#ff,#ff,#ff,#00,#00
	db #32,#14,#00,#03,#20,#03,#3c,#fa
	db #90,#00,#98,#00,#ff,#ff,#ff,#00
	db #00,#32,#0a,#10,#00,#17,#00,#1e
	db #fa,#10,#00,#10,#00,#ff,#ff,#0a
	db #00,#00,#32,#06,#14,#04,#1e,#08
	db #5a,#fa,#80,#00,#80,#00,#01,#01
	db #0f,#01,#00,#32,#1a,#80,#01,#40
	db #01,#3c,#fa,#08,#00,#0a,#00,#01
	db #01,#03,#00,#00,#14,#06,#14,#02
	db #1e,#02,#1e,#f2,#2f,#00,#28,#00
	db #ff,#ff,#05,#01,#00,#14,#06,#00
	db #08,#20,#08,#1e,#fa,#30,#01,#30
	db #01,#ff,#ff,#05,#00,#00,#32,#14
	db #00,#01,#8f,#00,#3c,#fa,#02,#00
	db #03,#00,#01,#01,#ff,#00,#00,#19
	db #1f,#1f,#04,#1f,#04,#0a,#d7,#01
	db #00,#01,#00,#01,#01,#00,#00,#0e
	db #16,#1a,#08,#04,#40,#04,#0a,#d6
	db #41,#00,#41,#00,#01,#01,#00,#00
	db #0e,#12,#07,#50,#01,#57,#01,#1e
	db #fa,#40,#00,#40,#00,#ff,#ff,#06
	db #00,#00,#28,#0a,#14,#00,#1e,#00
	db #28,#d2,#07,#00,#08,#00,#ff,#01
	db #0a,#01,#00,#3c,#06,#00,#01,#0a
	db #01,#50,#d2,#46,#00,#50,#00,#ff
	db #ff,#14,#00,#00
.l1a2c
	db #00
.l1a2d
	db #00
.l1a2e
	db #00
.l1a2f
	db #00
.l1a30
	db #00,#00
.l1a32
	db #00
.l1a33
	db #00
.l1a34
	db #00,#00
.l1a36
	db #00,#00
.l1a38
	db #00
.l1a39
	db #00
.l1a3a
	db #00
.l1a3b
	db #00,#00
.l1a3d
	db #00,#00
.l1a3f
	db #0e,#0f,#12,#15,#18,#1c,#1e,#22
	db #26,#28,#2a,#2c,#2e,#30,#00,#87
	db #00,#0c,#0f,#87,#03,#07,#0c,#87
	db #00,#03,#07,#87,#00,#04,#07,#0c
	db #87,#00,#0c,#87,#00,#00,#00,#0c
	db #87,#00,#03,#07,#0c,#87,#00,#01
	db #87,#00,#03,#87,#00,#04,#87,#00
	db #05,#87,#00,#07,#87,#00,#02,#87
.l1a7f
	db #05
	dw l1a9e,l1a94,l1ab6
	db #05
	dw l1c52,l1c4e,l1c56
	db #05
	dw l1d04,l1cea,l1d12
.l1a94
	dw l1ae6
	dw l1ae6,l1ae6,l1ae6,#0000
.l1a9e
	dw l1aff,l1b44,l1b44,l1b60
	dw l1b60,l1b8b,l1b8b,l1b60
	dw l1b60,l1b60,l1b60,#0000
.l1ab6
	dw l1ed4,l1bac,l1bac,l1bcb
	dw l1bcb,l1bea,l1c16,l1eda
	dw l1bac,l1bac,l1bcb,l1bcb
	dw l1bea,l1c16,l1ece,l1bac
	dw l1bac,l1bcb,l1bcb,l1bea
	dw l1c16,l1c3b,l1c3b,#0000
.l1ae6
	db #88,#01,#02,#82,#c0,#e1,#df,#00
	db #21,#04,#8a,#0c,#18,#8c,#0c,#8a
	db #13,#0c,#18,#8b,#8d,#0c,#8a,#1a
	db #87
.l1aff
	db #8a,#82,#e7,#c0,#da,#00,#01,#00
	db #88,#00,#04,#30,#88,#03,#06,#8f
	db #88,#04,#08,#8f,#88,#05,#0a,#8f
	db #88,#06,#0c,#8f,#88,#07,#0e,#8f
	db #88,#08,#10,#8f,#88,#09,#12,#8f
	db #88,#0a,#14,#8f,#88,#0b,#16,#8f
	db #88,#0c,#18,#8f,#88,#0d,#1a,#8f
	db #88,#0e,#1c,#8f,#88,#0f,#1e,#f7
	db #84,#ff,#01,#8f,#87
.l1b44
	db #8a,#88,#02,#04,#82,#c0,#e3,#de
	db #00,#31,#05,#30,#30,#30,#30,#30
	db #30,#30,#30,#2b,#2b,#2b,#2b,#2b
	db #2b,#2b,#2b,#87
.l1b60
	db #8a,#88,#01,#02,#c0,#e0,#dd,#00
	db #12,#05,#24,#27,#2b,#27,#2b,#2e
	db #2b,#2e,#30,#2e,#30,#33,#30,#33
	db #37,#33,#37,#3a,#37,#3a,#3c,#3a
	db #3c,#3f,#3c,#3f,#43,#3f,#43,#46
	db #43,#46,#87
.l1b8b
	db #2b,#2e,#32,#2e,#32,#35,#32,#35
	db #37,#35,#37,#3a,#37,#3a,#3e,#3a
	db #3e,#41,#3e,#41,#43,#41,#43,#46
	db #43,#46,#4a,#46,#4a,#4d,#4a,#4d
	db #87
.l1bac
	db #8a,#88,#01,#02,#82,#c0,#df,#00
	db #11,#05,#e3,#c5,#3c,#3c,#3c,#3c
	db #3c,#3c,#3c,#3c,#e4,#c8,#47,#47
	db #47,#47,#47,#47,#e1,#47,#87
.l1bcb
	db #c0,#8a,#88,#02,#04,#82,#e1,#de
	db #00,#31,#05,#8f,#e3,#32,#33,#35
	db #37,#32,#33,#35,#37,#30,#33,#37
	db #3e,#30,#33,#37,#e1,#3e,#87
.l1bea
	db #88,#02,#04,#df,#00,#21,#07,#c0
	db #e3,#30,#33,#37,#e1,#30,#e3,#33
	db #37,#e1,#30,#e3,#33,#37,#c9,#e3
	db #30,#ca,#33,#c9,#37,#e1,#30,#e3
	db #ca,#33,#c9,#37,#e1,#30,#e3,#ca
	db #33,#c9,#37,#87
.l1c16
	db #c0,#e3,#37,#3a,#3e,#e1,#37,#e3
	db #3a,#3e,#e1,#37,#e3,#3a,#3e,#c9
	db #e3,#37,#ca,#3a,#c9,#3e,#e1,#37
	db #e3,#ca,#3a,#c9,#3e,#e1,#37,#e3
	db #ca,#3a,#c9,#3e,#87
.l1c3b
	db #cd,#e3,#3a,#3a,#3a,#3a,#3a,#3a
	db #3a,#3a,#e4,#3a,#3a,#3a,#3a,#3a
	db #e6,#3a,#87
.l1c4e
	dw l1c80,#0000
.l1c52
	dw l1c8e,#0000
.l1c56
	dw l1ece,l1c9f
	dw l1ccb,l1ccb,l1ccb,l1ed1
	dw l1c9f,l1ccb,l1ccb,l1ccb
	dw l1ed4,l1c9f,l1ccb,l1ccb
	dw l1ccb,l1ed7,l1c9f,l1ccb
	dw l1ccb,l1ccb,#0000
.l1c80
	db #8a,#88,#01,#01,#82,#c0,#df,#00
	db #21,#07,#e1,#0c,#18,#87
.l1c8e
	db #90,#8a,#88,#02,#04,#82,#c0,#df
	db #00,#21,#07,#e5,#18,#1b,#e3,#1b
	db #87
.l1c9f
	db #8c,#82,#88,#01,#01,#e0,#c5,#de
	db #00,#11,#05,#24,#27,#2b,#2e,#27
	db #2b,#2e,#30,#2b,#2e,#30,#33,#2e
	db #30,#33,#37,#30,#33,#37,#3a,#33
	db #37,#3a,#3c,#37,#3a,#3c,#3f,#3a
	db #3c,#3f,#43,#87
.l1ccb
	db #8a,#82,#88,#01,#02,#e1,#dd,#00
	db #12,#05,#ca,#30,#30,#30,#c9,#30
	db #30,#30,#30,#30,#ca,#3c,#3c,#3c
	db #c9,#3c,#3c,#3c,#3c,#3c,#87
.l1cea
	dw l1d3e,l1d3e,l1d3e,l1d3e
	dw l1d55,l1d55,l1d3e,l1d3e
	dw l1d55,l1d55,l1d3e,l1d3e
	dw #0000
.l1d04
	dw l1d62,l1d77,l1d82
	dw l1d62,l1d8e,l1d62,#0000
.l1d12
	dw l1ecb,l1d9d,l1dc9,l1dc9
	dw l1dc9,l1dc9,l1df3,l1dc9
	dw l1dc9,l1dc9,l1dc9,l1ed1
	dw l1e39,l1e39,l1ed4,l1e80
	dw l1e80,l1eaa,l1e80,l1eaa
	dw l1e80,#0000
.l1d3e
	db #88,#01,#02,#82,#c0,#df,#00,#21
	db #07,#90,#8a,#e0,#0c,#0c,#e1,#18
	db #0c,#18,#0c,#18,#0c,#18,#87
.l1d55
	db #8a,#e0,#0a,#0a,#e1,#16,#0a,#16
	db #0a,#16,#0a,#16,#87
.l1d62
	db #8a,#88,#01,#02,#82,#df,#00,#21
	db #07,#c9,#e5,#28,#28,#e3,#28,#e5
	db #28,#28,#e3,#28,#87
.l1d77
	db #e5,#34,#34,#e3,#34,#e5,#34,#34
	db #e3,#34,#87
.l1d82
	db #c9,#e5,#2b,#2b,#e3,#2b,#e5,#2b
	db #2b,#e3,#2b,#87
.l1d8e
	db #c9,#e5,#2b,#2b,#cd,#e3,#2e,#ca
	db #e5,#2e,#2e,#cd,#e3,#2e,#87
.l1d9d
	db #8a,#88,#01,#01,#82,#c6,#e1,#dc
	db #00,#11,#06,#80,#34,#35,#34,#80
	db #34,#35,#34,#80,#34,#35,#34,#80
	db #34,#35,#34,#80,#40,#41,#40,#80
	db #40,#41,#40,#80,#40,#41,#40,#80
	db #40,#41,#40,#87
.l1dc9
	db #c5,#88,#01,#01,#dd,#00,#12,#05
	db #e0,#37,#37,#e1,#3a,#3c,#e0,#3a
	db #3a,#e1,#3c,#37,#e0,#3c,#3c,#e1
	db #37,#3a,#e0,#37,#37,#e1,#3a,#3c
	db #e0,#3a,#3a,#e1,#3c,#37,#e0,#3c
	db #3c,#87
.l1df3
	db #88,#01,#02,#e1,#c5,#df,#00,#21
	db #07,#8c,#24,#8a,#30,#35,#34,#8c
	db #24,#8a,#30,#35,#34,#8c,#24,#8a
	db #30,#35,#34,#8c,#24,#8a,#30,#35
	db #34,#c5,#8c,#24,#8a,#ca,#30,#35
	db #c9,#34,#c5,#8c,#24,#8a,#ca,#30
	db #35,#c9,#34,#c5,#8c,#24,#8a,#ca
	db #30,#35,#c9,#34,#c5,#8c,#24,#8a
	db #ca,#30,#35,#c9,#34,#87
.l1e39
	db #88,#01,#02,#c5,#de,#00,#11,#05
	db #e1,#28,#29,#2b,#e3,#2c,#2b,#f1
	db #28,#e1,#28,#2b,#2d,#e3,#2e,#2d
	db #f1,#28,#e1,#35,#37,#39,#e3,#3a
	db #39,#f1,#32,#e1,#ca,#35,#c9,#37
	db #39,#e3,#ca,#3a,#c9,#39,#f1,#34
	db #e1,#35,#37,#39,#e3,#3a,#39,#f1
	db #32,#e1,#ca,#35,#c9,#37,#39,#e3
	db #ca,#3a,#c9,#39,#f1,#34,#87
.l1e80
	db #88,#01,#01,#c0,#e0,#dd,#00,#12
	db #05,#18,#1c,#1f,#24,#1c,#1f,#24
	db #34,#1f,#24,#34,#37,#24,#34,#37
	db #3c,#34,#37,#3c,#40,#37,#3c,#40
	db #43,#3c,#40,#43,#48,#40,#43,#48
	db #4c,#87
.l1eaa
	db #16,#1a,#1d,#22,#1a,#1d,#22,#26
	db #1d,#22,#26,#29,#22,#26,#29,#2e
	db #26,#29,#2e,#32,#29,#2e,#32,#35
	db #2e,#32,#35,#3a,#32,#35,#3a,#3e
	db #87
.l1ecb
	db #89,#0b,#87
.l1ece
	db #89,#0c,#87
.l1ed1
	db #89,#0d,#87
.l1ed4
	db #89,#0e,#87
.l1ed7
	db #89,#0f,#87
.l1eda
	db #89,#10,#87
.l1edd
	db #00,#00
.l1edf
	db #00,#00
.l1ee1
	db #00,#00
.l1ee3
	db #00
.l1ee4
	db #3f
.l1ee5
	db #0f
.l1ee6
	db #0f
.l1ee7
	db #0f,#00
.l1ee9
	db #00
.l1eea
	db #00,#00,#00
.l1eed
	db #00,#00
.l1eef
	db #00
.l1ef0
	db #3f
.l1ef1
	db #10,#00
.l1ef3
	db #10,#00,#ff,#80,#80,#80,#80,#87
	db #4c,#31,#30,#0d,#9a,#53,#48,#49
	db #5a,#59,#44,#52,#4f
.l1f08
	db #01
.l1f09
	ld hl,l1edd
.l1f0c
	ld b,#f7
	ld c,#82
	out (c),c
	ld a,#00
	ld d,#0b
.l1f16
	push af
	ld c,(hl)
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
	pop af
	inc a
	inc hl
	dec d
	jr nz,l1f16
	ret
.l1f3c
	ld a,d
	ld c,e
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
.l1f5c
	push hl
	ld hl,l1f65
	call l1f0c
	pop hl
	ret
.l1f65
	db #00,#00,#00,#00,#00,#00,#00,#3f
	db #00,#00,#00,#00,#00,#00
;
; #7d51
; call #1f5c	; stop music
;
; #0623
; ld a,#01
; ld (#1f08),a	; enable play
;
; #0630
; xor a
; di
; call #1303	; init
; ei
;
; #0637
; .l0638 equ $ + 1
; ld a,#00
; dec a
; call p,#1710	; sound fx ?
; xor a
; ld (l0638),a
; call #1801
; ret
;
.music_info
	db "Xenon (1988)(Melbourne House)(David Whittaker)",0
	db "",0

	read "music_end.asm"
