; Music of Daley Thompson's Olympic Challenge (1988)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 09/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DALEYTOC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #05d3
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.real_init_music
.l05d3
;
	ld hl,l0bfe
	ld b,#00
	ld (hl),b
	ld hl,l0dc7
	add hl,bc
	ld a,(hl)
	ld (l06b4),a
	inc hl
	ld ix,l0624
	ld c,#21
	ld a,#03
.l05ea
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
	jr nz,l05ea
	ld (l0953),a
	inc a
	ld (l0687),a
	ld (l0bfd),a
	ret
.l0624
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.l0645
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.l0666
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
.l0687
	db #00
;
.play_music	
.l0688
;
	call l0c5b
	ld a,(l0bfd)
	and a
	jp z,l06e4
.l0693 equ $ + 1
	ld a,#00
	ld (l06e0),a
	ld hl,l0687
	dec (hl)
	jr nz,l06b8
	ld b,(hl)
	ld ix,l0624
	call l0862
	ld ix,l0645
	call l0862
	ld ix,l0666
	call l0862
.l06b4 equ $ + 1
	ld a,#01
	ld (l0687),a
.l06b8
	ld ix,l0624
	call l0920
	ld (l0a30),hl
	ld (l0a38),a
	ld ix,l0645
	call l0920
	ld (l0a32),hl
	ld (l0a39),a
	ld ix,l0666
	call l0920
	ld (l0a34),hl
	ld (l0a3a),a
.l06e0 equ $ + 1
	ld a,#00
	ld (l0a36),a
.l06e4
	ld a,(l0bfe)
	and a
	jr z,l0714
	ld hl,(l0a3d)
	ld (l0a30),hl
	ld hl,(l0a41)
	ld (l0a34),hl
	ld a,(l0a43)
	ld (l0a36),a
	ld a,(l0a37)
;.l06ff
	or #2d
	ld hl,l0a44
	and (hl)
	ld (l0a37),a
	ld a,(l0a45)
	ld (l0a38),a
	ld a,(l0a47)
	ld (l0a3a),a
.l0714
	ld a,(l0bfd)
	ld hl,l0bfe
	or (hl)
	ret z
	ld hl,l0a3b
	ld d,#0b
.l0721
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
	jp p,l0721
	ret
.l0742
	ld de,&0d00
.l0745
	call l074f
	dec d
	jp p,l0745
	ld de,&073f
.l074f
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
.l076a
;
	xor a
	ld (l0bfd),a
	ld (l0bfe),a
	call l0742
	xor a
	ld (l0a38),a
	ld (l0a39),a
	ld (l0a3a),a
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
	db #c3
	db #c8
	db #cd
	pop hl
	jp l076a
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
	jr nz,l07b7
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l07b7
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l0870
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,l09fc
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l0870
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,l09fc
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l0870
	ld hl,l09fc
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l0870
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l0870
	ld a,(de)
	inc de
	ld (l0953),a
	jr l0870
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l0870
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l0870
	ld (ix+#1d),b
	jr l0870
	ld (ix+#1d),#40
	jr l0870
	ld (ix+#1d),#c0
	jr l0870
	set 1,(ix+#00)
	jr l0870
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l089f
	res 5,(ix+#00)
	jr l089f
	ld (ix+#1f),#ff
	jr l0870
	ld (ix+#1f),b
	jr l0870
.l0862
	dec (ix+#10)
	jr nz,l08ba
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l0870
	ld a,(de)
	inc de
	and a
	jp m,l08cb
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l0882
	ld (l0693),a
.l0882
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
.l089f
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	ret z
	ld a,(l0bfe)
	and a
	ret nz
	ld (ix+#1f),#ff
	ret
.l08ba
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l08c7
	inc (ix+#12)
	ret
.l08c7
	dec (ix+#12)
	ret
.l08cb
	cp #b8
	jr c,l0918
	add #20
	jr c,l08f9
	add #10
	jr c,l0900
	add #10
	jr nc,l08f1
	ld c,a
	ld hl,l0b09
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l0870
.l08f1
	add #09
	ld (l06b4),a
	jp l0870
.l08f9
	inc a
	ld (ix+#11),a
	jp l0870
.l0900
	ld hl,l0b5e
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
	jp l0870
.l0918
	ld hl,jumps_table-&80	;l06ff
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l0920
	ld c,(ix+#00)
	bit 5,c
	jr z,l0952
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l094c
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l094c
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l094c
	ld a,(ix+#18)
	ld (ix+#13),a
.l0953 equ $ + 1
.l0952
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l096c
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l096c
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l0a49
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l09cd
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l0996
	bit 0,c
	jr nz,l09b4
.l0996
	bit 5,l
	jr nz,l09a6
	sub (ix+#1b)
	jr nc,l09b1
	set 5,(ix+#1d)
	sub a
	jr l09b1
.l09a6
	add (ix+#1b)
	cp b
	jr c,l09b1
	res 5,(ix+#1d)
	ld a,b
.l09b1
	ld (ix+#1c),a
.l09b4
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l09bf
	dec d
.l09bf
	add #a0
	jr c,l09cb
.l09c3
	sla e
	rl d
	add #18
	jr nc,l09c3
.l09cb
	add hl,de
	ex de,hl
.l09cd
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l09f8
	ld b,(ix+#0e)
	djnz l09f5
	ld c,(ix+#0d)
	bit 7,c
	jr z,l09e4
	dec b
.l09e4
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l09f8
.l09f5
	ld (ix+#0e),b
.l09f8
	cpl
	and #03
.l09fc equ $ + 1
	ld a,#38
	jr nz,l0a09
	ld a,(l0693)
	xor #08
	ld (l06e0),a
	ld a,#07
.l0a09
	ld hl,l0a37
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l0a2b
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#20)
	and #38
	cpl
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l06e0),a
.l0a2b
	ex de,hl
	ld a,(ix+#13)
	ret
.l0a37 equ $ + 7
.l0a36 equ $ + 6
.l0a34 equ $ + 4
.l0a32 equ $ + 2
.l0a30
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l0a3e equ $ + 6
.l0a3d equ $ + 5
.l0a3b equ $ + 3
.l0a3a equ $ + 2
.l0a39 equ $ + 1
.l0a38
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l0a47 equ $ + 7
.l0a45 equ $ + 5
.l0a44 equ $ + 4
.l0a43 equ $ + 3
.l0a41 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l0a49
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
.l0b09
	db #0e,#0e,#15,#1c,#23,#24,#26,#27
	db #29,#2c,#3a,#3c,#3f,#45,#80,#00
	db #00,#03,#03,#07,#07,#0c,#8c,#00
	db #00,#03,#03,#08,#08,#0c,#8c,#00
	db #00,#03,#03,#0a,#0a,#0c,#8c,#00
	db #98,#00,#03,#85,#0c,#80,#18,#0c
	db #80,#00,#03,#07,#8c,#0c,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#80,#00,#04,#8c,#0c
	db #00,#00,#80,#18,#00,#00,#00,#00
	db #00,#80,#04,#07,#8c
.l0b5e
	dw l0b75,l0b80,l0b89,l0b91
	dw l0ba1,l0bac,l0bb6,l0bc2
	dw l0bd8,l0bea,l0bed
.l0b75 equ $ + 1
	db #01,#0a,#0c,#0e,#0d,#0c,#0a,#09
	db #08,#07,#87
.l0b80 equ $ + 1
	db #00,#0f,#0e,#0d,#0b,#0a,#09,#08
	db #87
.l0b89 equ $ + 1
	db #01,#0f,#0e,#0d,#0a,#09,#08,#87
.l0b91 equ $ + 1
	db #02,#0e,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#87
.l0ba1 equ $ + 1
	db #02,#0a,#0b,#0c,#0d,#0c,#0b,#0a
	db #09,#08,#87
.l0bac equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#87
.l0bb6 equ $ + 1
	db #00,#0e,#0c,#0b,#09,#08,#07,#06
	db #05,#04,#03,#87
.l0bc2 equ $ + 1
	db #00,#0f,#0f,#0f,#0e,#0d,#0b,#0a
	db #09,#08,#07,#06,#09,#08,#07,#06
	db #05,#04,#02,#01,#00,#87
.l0bd8 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #00,#87
.l0bea equ $ + 1
	db #00,#0c,#87
.l0bed equ $ + 1
	db #01,#0f,#0d,#0c,#0b,#0a,#09,#0b
	db #0a,#06,#05,#04,#03,#02,#01,#00
	db #87
.music_end
.l0bfd
	db #00
.l0bfe
	db #00
.l0bff
	db #ff

	ld hl,l0bfe
	ld b,a
	ld a,(l0bff)
	cp b
	ret c
	ld a,b
	ld (hl),#00
	ld (l0bff),a
	ld hl,l0cfd
	add a
	add l
	ld l,a
	jr nc,l0c18
	inc h
.l0c18
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l0d95
.l0c20
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l0c20
	ld a,(l0d96)
	ld (l0da6),a
	ld hl,(l0d97)
	ld (l0a3d),hl
	ld de,(l0d99)
	ld (l0a41),de
	ld a,l
	ld (l0a43),a
	ld a,(l0d9c)
	ld (l0a44),a
	ld a,(l0d9b)
	ld e,a
	ld d,#0c
	call l074f
	ld a,(l0da5)
	ld e,a
	ld d,#0d
	call l074f
	ld hl,l0bfe
	inc (hl)
	ret
.l0c5b
	call l0da8
	ld a,(l0bfe)
	and a
	ret z
	ld a,(l0d95)
	and a
	jr nz,l0c73
	ld (l0bfe),a
	cpl
	ld (l0bff),a
	jp l0742
.l0c73
	dec a
	ld (l0d95),a
	ld a,(l0da6)
	and a
	jr nz,l0cac
	ld a,(l0da3)
	and a
	ret z
	dec a
	ld (l0da3),a
	ld a,(l0d96)
	ld (l0da6),a
	ld a,(l0da4)
	and a
	jr z,l0c95
	ld a,(l0dc3)
.l0c95
	ld b,a
	ld a,(l0d97)
	add b
	ld (l0a3d),a
	ld a,(l0d98)
	add b
	and #0f
	ld (l0a3e),a
	ld hl,(l0d99)
	ld (l0a41),hl
.l0cac
	ld hl,l0da6
	dec (hl)
	ld a,(l0da1)
	and a
	jr z,l0cd3
	jp p,l0cc6
	ld hl,(l0a3d)
	ld de,(l0d9d)
	add hl,de
	ld (l0a3d),hl
	jr l0cd3
.l0cc6
	ld hl,(l0a3d)
	ld de,(l0d9d)
	and a
	sbc hl,de
	ld (l0a3d),hl
.l0cd3
	ld a,(l0da2)
	and a
	jr z,l0cf6
	jp p,l0ce9
	ld hl,(l0a41)
	ld de,(l0d9f)
	add hl,de
	ld (l0a41),hl
	jr l0cf6
.l0ce9
	ld hl,(l0a41)
	ld de,(l0d9f)
	and a
	sbc hl,de
	ld (l0a41),hl
.l0cf6
	ld a,(l0a3d)
	ld (l0a43),a
	ret
.l0cfd
	dw l0d0d,l0d1e,l0d2f,l0d40
	dw l0d51,l0d62,l0d73,l0d84
.l0d0d
	db #01,#01,#00,#07,#10,#07,#01,#d3
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00
.l0d1e
	db #07,#03,#04,#00,#0b,#20,#0f,#fa
	db #10,#00,#08,#04,#ff,#01,#0a,#00
	db #00
.l0d2f
	db #05,#0a,#02,#00,#03,#00,#0c,#fa
	db #01,#00,#02,#00,#ff,#ff,#01,#00
	db #00
.l0d40
	db #32,#ff,#00,#02,#00,#02,#32,#fa
	db #08,#00,#09,#00,#01,#01,#02,#00
	db #00
.l0d51
	db #32,#ff,#10,#00,#10,#00,#32,#fa
	db #01,#00,#03,#00,#ff,#ff,#00,#00
	db #00
.l0d62
	db #02,#1e,#00,#02,#13,#02,#0c,#fa
	db #34,#00,#34,#00,#ff,#ff,#01,#00
	db #00
.l0d73
	db #a0,#ff,#40,#03,#40,#06,#1e,#fa
	db #08,#00,#08,#00,#01,#01,#0a,#00
	db #00
.l0d84
	db #07,#0a,#a8,#00,#8b,#03,#16,#f2
	db #22,#00,#22,#00,#ff,#ff,#0a,#00
	db #00
.l0d9c equ $ + 7
.l0d9b equ $ + 6
.l0d99 equ $ + 4
.l0d98 equ $ + 3
.l0d97 equ $ + 2
.l0d96 equ $ + 1
.l0d95
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0da4 equ $ + 7
.l0da3 equ $ + 6
.l0da2 equ $ + 5
.l0da1 equ $ + 4
.l0d9f equ $ + 2
.l0d9d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0da6 equ $ + 1
.l0da5
	db #00,#00,#00
.l0da8
	ld a,(l0dc3)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l0dc6
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l0dc6 equ $ + 3
.l0dc3
	db #ff,#00,#36,#68
.l0dc7
	db #06
	dw l0ddc,l0de0,l0de6
	db #05
	dw l0dea,l0dee,l0df2
	db #06
	dw l0fed,l1021,l1077
.l0ddc
	dw l0df9,#0000
.l0de0
	dw l0e12,l0df9,#0000
.l0de6
	dw l0e15,#0000
.l0dea
	dw l0e4c,#0000
.l0dee
	dw l0e61,#0000
.l0df2
	dw l0e75,#0000
	db #ff,#80,#87
.l0df9
	db #8a,#d0,#81,#90,#e3,#80,#c1,#36
	db #c2,#36,#c1,#36,#c2,#36,#c1,#36
	db #e1,#c2,#36,#e5,#c3,#36,#e1,#80
	db #8e
.l0e12
	db #e0,#80,#87
.l0e15
	db #8a,#90,#d1,#c0,#88,#01,#01,#82
	db #e1,#21,#e0,#21,#15,#e1,#d2,#8c
	db #27,#8a,#d1,#21,#e1,#21,#e0,#21
	db #15,#e1,#d2,#8c,#27,#8a,#d1,#21
	db #1c,#e0,#1c,#28,#e1,#d2,#8c,#27
	db #8a,#d1,#1c,#1a,#e0,#1a,#0e,#e1
	db #d2,#8c,#27,#8a,#d1,#1a,#8e
.l0e4c
	db #8a,#90,#c4,#88,#01,#02,#82,#d3
	db #e3,#3c,#3b,#39,#37,#35,#34,#32
	db #30,#2f,#e1,#80,#8e
.l0e61
	db #8a,#90,#c4,#88,#01,#02,#82,#d3
	db #e1,#80,#e3,#35,#34,#32,#30,#2f
	db #2d,#2b,#29,#8e
.l0e75
	db #8b,#c4,#81,#d1,#e1,#41,#41,#41
	db #41,#8a,#3c,#8b,#27,#8a,#30,#3c
	db #e3,#8b,#41,#e1,#41,#41,#8a,#40
	db #8b,#27,#8a,#30,#43,#8b,#41,#8a
	db #e3,#3b,#8e
.l0e98
	db #8a,#88,#01,#02,#c0,#82,#d4,#ef
	db #31,#e7,#2d,#2a,#ef,#31,#e7,#2d
	db #2a,#ef,#2d,#8f,#80,#80,#87
.l0eaf
	db #8a,#88,#01,#02,#c0,#82,#d4,#ef
	db #2d,#e7,#28,#26,#ef,#2d,#e7,#28
	db #26,#ef,#28,#8f,#87
.l0ec4
	db #8a,#d0,#81,#90,#e3,#80,#c1,#36
	db #c2,#36,#c1,#36,#c2,#36,#c1,#36
	db #e1,#c2,#36,#e5,#c3,#36,#e1,#87
.l0edc
	db #8a,#90,#d1,#c0,#88,#01,#01,#82
	db #e1,#21,#e0,#21,#15,#e1,#d2,#8c
	db #27,#8a,#d1,#21,#e1,#21,#e0,#21
	db #15,#e1,#d2,#8c,#27,#8a,#d1,#21
	db #1c,#e0,#1c,#28,#e1,#d2,#8c,#27
	db #8a,#d1,#1c,#1a,#e0,#1a,#0e,#e1
	db #d2,#8c,#27,#8a,#d1,#1a,#87
.l0f13
	db #e1,#1e,#e0,#1e,#1e,#e1,#d2,#8c
	db #27,#8a,#d1,#1e,#e1,#1e,#e0,#1e
	db #12,#e1,#d2,#8c,#27,#8a,#d1,#1e
	db #1c,#e0,#1c,#1c,#e1,#d2,#8c,#27
	db #8a,#d1,#1c,#1c,#e0,#1c,#10,#e1
	db #d2,#8c,#27,#8a,#d1,#1c,#87
.l0f42
	db #e1,#1e,#1f,#d2,#8c,#e3,#27,#e0
	db #c4,#2c,#2b,#2a,#29,#28,#27,#26
	db #25,#87
.l0f54
	db #e1,#1e,#e0,#1e,#1e,#e1,#2a,#1e
	db #e1,#1e,#e0,#1e,#12,#e1,#2a,#1e
	db #1c,#e0,#1c,#1c,#e1,#28,#1c,#1c
	db #e0,#1c,#10,#e1,#28,#1c,#87
.l0f73
	db #c5,#e3,#31,#e1,#31,#31,#e3,#31
	db #e1,#31,#31,#31,#80,#31,#e3,#31
	db #e1,#31,#e3,#31,#87
.l0f88
	db #ef,#80,#87
.l0f8b
	db #d5,#c6,#8a,#90,#81,#e7,#42,#ef
	db #40,#e1,#3d,#3e,#3d,#3e,#3d,#e3
	db #39,#f9,#34,#87
.l0f9f
	db #c0,#88,#01,#01,#82,#e1,#40,#42
	db #45,#e3,#47,#f5,#45,#e1,#40,#42
	db #45,#e3,#47,#e5,#45,#e3,#47,#49
	db #e1,#47,#e5,#45,#87
.l0fbc
	db #88,#01,#02,#c0,#82,#d4,#ef,#31
	db #e7,#2d,#2a,#ef,#31,#e7,#2d,#2a
	db #87
.l0fcd
	db #d6,#81,#c6,#e0,#34,#36,#39,#34
	db #36,#3b,#32,#36,#39,#32,#34,#31
	db #39,#34,#36,#3b,#87
.l0fe2
	db #ef,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#87
.l0fed
	dw l0e98,l0f8b,l0f8b,l0f9f
	dw l0f9f,l0f8b,l0f8b,l0f9f
	dw l0f9f,l0fbc,l0fbc,l0f88
	dw l0fcd,l0fcd,l0fcd,l0fcd
	dw l0fcd,l0fcd,l0fcd,l0fcd
	dw l0f8b,l0f8b,l0f9f,l0f9f
	dw l0fe2,#0000
.l1021
	dw l0ec4,l0ec4,l0ec4,l0ec4
	dw l0ec4,l0ec4,l0ec4,l0ec4
	dw l0ec4,l0ec4,l0ec4,l0ec4
	dw l0ec4,l0ec4,l0ec4,l0ec4
	dw l0ec4,l0ec4,l0ec4,l0ec4
	dw l0f73,l0f73,l0f73,l0f73
	dw l0f88,l0ec4,l0ec4,l0ec4
	dw l0ec4,l0ec4,l0ec4,l0ec4
	dw l0ec4,l0ec4,l0ec4,l0ec4
	dw l0ec4,l0f73,l0f73,l0f73
	dw l0f73,l0f88,#0000
.l1077
	dw l0eaf,l0edc,l0edc,l0edc
	dw l0edc,l0edc,l0edc,l0edc
	dw l0edc,l0edc,l0edc,l0edc
	dw l0edc,l0edc,l0edc,l0edc
	dw l0edc,l0edc,l0f13,l0f13
	dw l0f13,l0f13,l0f42,l0edc
	dw l0edc,l0edc,l0edc,l0edc
	dw l0edc,l0edc,l0edc,l0edc
	dw l0edc,l0edc,l0edc,l0f54
	dw l0f54,l0f54,l0f54,l0f42
	dw #0000
;
; #9ca0
; call #05d3
; .l9ca3
; ld a,(#0bfd)
; or a
; jr nz,l9ca3
; call #076a
;
.init_music		; added by Megachur
;
	ld c,a		; added by Megachur
	add a
	add c
	add a
	add c
	ld c,a		; added by Megachur
	jp real_init_music
;
.music_info
	db "Daley Thompson's Olympic Challenge (1988)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
