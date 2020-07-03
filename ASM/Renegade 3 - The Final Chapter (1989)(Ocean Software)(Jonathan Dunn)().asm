; Music of Renegade 3 - The Final Chapter (1989)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 08/12/2006
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "RENE3TFC.BIN"
	ENDIF

music_date_rip_day		equ 08
music_date_rip_month	equ 12
music_date_rip_year		equ 2016
music_adr				equ &0489
first_theme				equ 0
last_theme				equ 8	; 0 -> 8

	read "music_header.asm"

;
.init_music
;
	ld hl,l0bba
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
	ld hl,l0d5b
	add hl,bc
	ld a,(hl)
	ld (l0589),a
	inc hl
	ld ix,l04ed
	ld c,#25
	ld a,#03
.l04aa
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
	jr nz,l04aa
	ld (l080b),a
	inc a
	ld (l055c),a
	ld (l0bba),a
	ei
	ret
.l04ed
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#09
.l0512
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#12
.l0537
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#24
.l055c
	db #00
;
.play_music
;
	call l0c15
	ld a,(l0bba)
	and a
	jp z,l05b9
.l0568 equ $ + 1
	ld a,#00
	ld (l05b5),a
	ld hl,l055c
	dec (hl)
	jr nz,l058d
	ld b,(hl)
	ld ix,l04ed
	call l0709
	ld ix,l0512
	call l0709
	ld ix,l0537
	call l0709
.l0589 equ $ + 1
	ld a,#01
	ld (l055c),a
.l058d
	ld ix,l04ed
	call l07d8
	ld (l08e9),hl
	ld (l08f1),a
	ld ix,l0512
	call l07d8
	ld (l08eb),hl
	ld (l08f2),a
	ld ix,l0537
	call l07d8
	ld (l08ed),hl
	ld (l08f3),a
.l05b5 equ $ + 1
	ld a,#00
	ld (l08ef),a
.l05b9
	ld a,(l0bbb)
	and a
	jr z,l05e9
	ld hl,(l08f6)
	ld (l08e9),hl
	ld hl,(l08fa)
	ld (l08ed),hl
	ld a,(l08fc)
.l05d0 equ $ + 2
	ld (l08ef),a
	ld a,(l08f0)
	or #2d
	ld hl,l08fd
	and (hl)
	ld (l08f0),a
	ld a,(l08fe)
	ld (l08f1),a
	ld a,(l0900)
	ld (l08f3),a
.l05e9
	ld a,(l0bba)
	ld hl,l0bbb
	or (hl)
	ret z
	ld hl,l08f4
	ld d,#0b
.l05f6
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
	jp p,l05f6
	ret
.l0617
	di
;
.stop_music
;
	xor a
	ld (l0bba),a
	ld (l0bbb),a
	ld (l08f1),a
	ld (l08f2),a
	ld (l08f3),a
.l0628
	ld de,&0d00
.l062b
	call l0635
	dec d
	jp p,l062b
	ld de,#0000
.l0635
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
	db #9f,#87,#8b,#90,#4e,#7d,#78,#0f
	db #67,#5f,#24,#0e,#36,#8c,#04,#99
	db #9e,#a3
	pop hl
	jp l0617
	jp l0b45
	ld a,(ix+#24)
	ld c,a
	and #07
	ld hl,l08b4
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l0717
	ld a,(ix+#24)
	ld c,a
	and #38
	ld hl,l08b4
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l0717
	ld hl,l08b4
	ld a,(ix+#24)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l0717
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l0717
	ld a,(de)
	inc de
	ld (l080b),a
	jr l0717
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l0717
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l0717
	ld (ix+#1d),b
	jr l0717
	ld (ix+#1d),#40
	jr l0717
	ld (ix+#1d),#c0
	jr l0717
	set 1,(ix+#00)
	jr l0717
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l0755
	res 5,(ix+#00)
	jr l0755
	ld (ix+#1f),#ff
	jr l0717
	ld (ix+#1f),b
	jr l0717
.l0709
	dec (ix+#10)
	jr nz,l0772
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l0717
	ld a,(de)
	inc de
	and a
	jp m,l0783
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l072c
	ld (l0568),a
.l072c
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
.l0755
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l0771
	ld a,(l0bbb)
	and a
	jr nz,l0771
	ld (ix+#1f),#ff
.l0771
	ret
.l0772
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l077f
	inc (ix+#12)
	ret
.l077f
	dec (ix+#12)
	ret
.l0783
	cp #b0
	jr c,l07d0
	add #20
	jr c,l07b1
	add #10
	jr c,l07b8
	add #18
	jr nc,l07a9
	ld c,a
	ld hl,l09c2
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l0717
.l07a9
	add #09
	ld (l0589),a
	jp l0717
.l07b1
	inc a
	ld (ix+#11),a
	jp l0717
.l07b8
	ld hl,l0a9a
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
	jp l0717
.l07d0
	ld hl,l05d0
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l07d8
	ld c,(ix+#00)
	bit 5,c
	jr z,l080a
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l0804
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l0804
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l0804
	ld a,(ix+#18)
	ld (ix+#13),a
.l080b equ $ + 1
.l080a
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l0824
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l0824
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l0902
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l0885
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l084e
	bit 0,c
	jr nz,l086c
.l084e
	bit 5,l
	jr nz,l085e
	sub (ix+#1b)
	jr nc,l0869
	set 5,(ix+#1d)
	sub a
	jr l0869
.l085e
	add (ix+#1b)
	cp b
	jr c,l0869
	res 5,(ix+#1d)
	ld a,b
.l0869
	ld (ix+#1c),a
.l086c
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l0877
	dec d
.l0877
	add #a0
	jr c,l0883
.l087b
	sla e
	rl d
	add #18
	jr nc,l087b
.l0883
	add hl,de
	ex de,hl
.l0885
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l08b0
	ld b,(ix+#0e)
	djnz l08ad
	ld c,(ix+#0d)
	bit 7,c
	jr z,l089c
	dec b
.l089c
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l08b0
.l08ad
	ld (ix+#0e),b
.l08b0
	cpl
	and #03
.l08b4 equ $ + 1
	ld a,#00
	jr nz,l08c1
	ld a,(l0568)
	xor #08
	ld (l05b5),a
	ld a,#07
.l08c1
	ld hl,l08f0
	xor (hl)
	and (ix+#24)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l08e4
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#24)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l05b5),a
.l08e4
	ex de,hl
	ld a,(ix+#13)
	ret
.l08f0 equ $ + 7
.l08ef equ $ + 6
.l08ed equ $ + 4
.l08eb equ $ + 2
.l08e9
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l08f7 equ $ + 6
.l08f6 equ $ + 5
.l08f4 equ $ + 3
.l08f3 equ $ + 2
.l08f2 equ $ + 1
.l08f1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0900 equ $ + 7
.l08fe equ $ + 5
.l08fd equ $ + 4
.l08fc equ $ + 3
.l08fa equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l0902
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
.l09c2
	db #14,#14,#16,#29,#2e,#33,#3e,#49
	db #60,#77,#7f,#87,#89,#91,#99,#9a
	db #b5,#ba,#bf,#c4,#80,#00,#05,#88
	db #13,#12,#11,#10,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
	db #03,#02,#01,#80,#00,#00,#02,#02
	db #07,#87,#00,#00,#05,#05,#09,#89
	db #00,#00,#00,#00,#03,#03,#03,#03
	db #07,#07,#07,#87,#00,#00,#00,#00
	db #04,#04,#04,#04,#07,#07,#07,#87
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #07,#07,#07,#07,#07,#07,#07,#87
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #07,#07,#07,#07,#07,#07,#07,#87
	db #00,#00,#00,#05,#05,#05,#09,#09
	db #89,#00,#00,#00,#04,#04,#04,#07
	db #07,#87,#00,#05,#89,#00,#00,#00
	db #03,#03,#03,#08,#08,#88,#00,#00
	db #00,#03,#03,#03,#05,#05,#85,#00
	db #8c,#01,#01,#00,#00,#06,#06,#05
	db #05,#0d,#0d,#0c,#0c
	db #12,#12,#11,#11,#19,#19,#18,#18
	db #1e,#1e,#1d,#1d,#25,#25,#24,#a4
	db #00,#00,#03,#03,#07,#87,#00,#00
	db #01,#01,#07,#87,#00,#00,#03,#03
	db #05,#85,#80
.l0a9a
	dw l0ab1,l0aba,l0ac3,l0ad5
	dw l0adf,l0aec,l0af4,l0b00
	dw l0b0c,l0b2d,l0b36
.l0ab1 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#09,#08
.l0aba equ $ + 2
	db #87,#00,#0e,#0d,#0c,#0a,#09,#08
.l0ac3 equ $ + 3
	db #00,#87,#04,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.l0ad5 equ $ + 5
	db #02,#01,#00,#87,#02,#0f,#0e,#0d
.l0adf equ $ + 7
	db #0c,#0a,#09,#08,#07,#87,#01,#0e
	db #0c,#0b,#0c,#0a,#08,#05,#04,#03
.l0aec equ $ + 4
	db #02,#00,#87,#00,#0f,#0e,#0d,#0c
.l0af4 equ $ + 4
	db #0b,#0a,#87,#01,#0e,#0d,#0c,#0b
	db #0a,#08,#07,#06,#05,#00,#87,#01
.l0b00
	db #0f,#0e,#0d,#0a,#09,#07,#05,#03
.l0b0c equ $ + 4
	db #01,#00,#87,#05,#01,#02,#03,#04
	db #05,#06,#07,#08,#09,#0a,#0b,#0c
	db #0d,#0e,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#07,#06,#05,#04,#03
.l0b2d equ $ + 5
	db #02,#01,#00,#87,#01,#0f,#0d,#0c
.l0b36 equ $ + 6
	db #0a,#08,#07,#06,#87,#02,#0a,#0b
	db #0c,#0d,#0e,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#87
.l0b45
	ld c,(ix+#05)
	ld b,(ix+#06)
.l0b4b
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	ld a,(ix+#21)
	dec a
	jp m,l0b68
	ld (ix+#21),a
	ld e,(ix+#22)
	ld d,(ix+#23)
	jr nz,l0b7f
	inc bc
	inc bc
	jr l0b4b
.l0b68
	ld (ix+#20),#00
.l0b6c
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l0b8a
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l0b7f
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l0717
.l0b8a
	dec de
	ld a,d
	or e
	jr nz,l0b9b
	inc hl
	ld a,(hl)
	ld (ix+#20),a
	inc hl
	inc bc
	inc bc
	inc bc
	inc de
	jr l0b6c
.l0b9b
	dec de
	ld a,d
	or e
	inc de
	inc de
	jr nz,l0bb6
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
	jr l0b7f
.l0bb6
	inc bc
	inc bc
	jr l0b7f
.l0bba
.music_end
	db #00
.l0bbb
	db #00
	ex af,af'		;data ?
	ld a,(#f6f1)
	bit 0,a
	ret z
	ex af,af'
	ld hl,l0bbb
	ld (hl),#00
	ld hl,l0cb3
	add a
	add l
	ld l,a
	jr nc,l0bd2
	inc h
.l0bd2
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l0d29
.l0bda
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l0bda
	ld a,(l0d2a)
	ld (l0d3a),a
	ld hl,(l0d2b)
	ld (l08f6),hl
	ld de,(l0d2d)
	ld (l08fa),de
	ld a,l
	ld (l08fc),a
	ld a,(l0d30)
	ld (l08fd),a
	ld a,(l0d2f)
	ld e,a
	ld d,#0c
	call l0635
	ld a,(l0d39)
	ld e,a
	ld d,#0d
	call l0635
	ld hl,l0bbb
	inc (hl)
	ret
.l0c15
	call l0d3c
	ld a,(l0bbb)
	and a
	ret z
	ld a,(l0d29)
	and a
	jr nz,l0c29
	ld (l0bbb),a
	jp l0628
.l0c29
	dec a
	ld (l0d29),a
	ld a,(l0d3a)
	and a
	jr nz,l0c62
	ld a,(l0d37)
	and a
	ret z
	dec a
	ld (l0d37),a
	ld a,(l0d2a)
	ld (l0d3a),a
	ld a,(l0d38)
	and a
	jr z,l0c4b
	ld a,(l0d57)
.l0c4b
	ld b,a
	ld a,(l0d2b)
	add b
	ld (l08f6),a
	ld a,(l0d2c)
	add b
	and #0f
	ld (l08f7),a
	ld hl,(l0d2d)
	ld (l08fa),hl
.l0c62
	ld hl,l0d3a
	dec (hl)
	ld a,(l0d35)
	and a
	jr z,l0c89
	jp p,l0c7c
	ld hl,(l08f6)
	ld de,(l0d31)
	add hl,de
	ld (l08f6),hl
	jr l0c89
.l0c7c
	ld hl,(l08f6)
	ld de,(l0d31)
	and a
	sbc hl,de
	ld (l08f6),hl
.l0c89
	ld a,(l0d36)
	and a
	jr z,l0cac
	jp p,l0c9f
	ld hl,(l08fa)
	ld de,(l0d33)
	add hl,de
	ld (l08fa),hl
	jr l0cac
.l0c9f
	ld hl,(l08fa)
	ld de,(l0d33)
	and a
	sbc hl,de
	ld (l08fa),hl
.l0cac
	ld a,(l08f6)
	ld (l08fc),a
	ret
.l0cb3
	dw l0cc3,l0cd4,l0ce5,l0cf6
	dw l0d07,l0d18,l0d29,l0d29
.l0cc3
	db #07,#03,#10,#00,#8b,#00,#0f,#fa
	db #10,#00,#08,#01,#ff,#01,#0a,#00
.l0cd4 equ $ + 1
	db #00,#05,#0a,#02,#01,#83,#00,#0c
	db #fa,#38,#00,#40,#00,#ff,#ff,#01
.l0ce5 equ $ + 2
	db #00,#00,#0a,#ff,#09,#00,#02,#02
	db #02,#d7,#02,#00,#00,#00,#01,#01
.l0cf6 equ $ + 3
	db #ff,#00,#00,#0e,#08,#40,#00,#60
.l0d00 equ $ + 5
	db #01,#09,#fa,#a4,#00,#44,#00,#ff
.l0d07 equ $ + 4
	db #ff,#01,#00,#00,#1e,#c8,#50,#00
	db #60,#00,#0f,#fa,#02,#00,#02,#00
.l0d18 equ $ + 5
	db #ff,#ff,#01,#00,#00,#19,#0a,#82
	db #01,#88,#01,#0c,#fa,#08,#00,#08
.l0d2a equ $ + 7
.l0d29 equ $ + 6
	db #00,#ff,#ff,#01,#00,#00,#00,#00
.l0d31 equ $ + 6
.l0d30 equ $ + 5
.l0d2f equ $ + 4
.l0d2d equ $ + 2
.l0d2c equ $ + 1
.l0d2b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0d3a equ $ + 7
.l0d39 equ $ + 6
.l0d38 equ $ + 5
.l0d37 equ $ + 4
.l0d36 equ $ + 3
.l0d35 equ $ + 2
.l0d33
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l0d3c
	ld a,(l0d57)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l0d5a
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l0d5a equ $ + 3
.l0d57
	db #ff,#80,#1b,#34
.l0d5b
	db #03
	dw l0d9a,l0d9e,l0da2
	db #03
	dw l0def,l0df5,l0e00
	db #04
	dw l0e61,l0e63,l0e65
	db #04
	dw l0e94,l0e98,l0e9f
	db #06
	dw l0f0d,l0f11,l0f1b
	db #03
	dw l0fd0,l0fe8,l100f
	db #03
	dw l132c,l12ce,l12e4
	db #03
	dw l10c5,l10db,l1109
	db #03
	dw l15f2,l15d5,l15af
.l0d9a
	dw l0da9,#0000
.l0d9e
	dw l0dc3,#0000
.l0da2
	dw l0dd9,#0000
.l0da9 equ $ + 3
.l0da6
	db #e0,#80,#87,#8a,#90,#d0,#b8,#e5
	db #3c,#37,#3c,#37,#e3,#3a,#3c,#3f
	db #e1,#3f,#e0,#3e,#3f,#3e,#3f,#e1
.l0dc3 equ $ + 5
	db #3e,#e7,#3c,#80,#8e,#b8,#8a,#d1
	db #e5,#30,#30,#30,#30,#e3,#2e,#30
	db #33,#e1,#33,#e3,#35,#e1,#35,#e7
.l0dd9 equ $ + 3
	db #37,#80,#8e,#b8,#8a,#d1,#e5,#2b
	db #2b,#2b,#2b,#e3,#29,#2b,#2e,#e1
	db #2e,#e3,#30,#e1,#30,#e7,#30,#80
	db #8e
.l0def
	dw l0da6,l0e0b,#0000
.l0df5
	dw l0da6
	db #02,#00,#07
	dw l0e1a,l0e2e,#0000
.l0e00
	dw l0da6,l0e46
	db #01,#00,#05
	dw l0e46,#0000
.l0e0b
	db #d2,#81,#b8,#bb,#ff,#3d,#fb,#8f
.l0e1a equ $ + 7
	db #e3,#3d,#bc,#ff,#3d,#8f,#87,#91
	db #81,#b9,#d1,#8c,#e1,#18,#18,#18
	db #18,#d3,#ba,#e3,#15,#b9,#d1,#e1
.l0e2e equ $ + 3
	db #18,#18,#87,#91,#81,#b9,#d1,#8c
	db #e1,#18,#18,#d3,#ba,#e1,#15,#b9
	db #d1,#e1,#18,#d3,#ba,#e3,#15,#e1
.l0e46 equ $ + 3
	db #15,#15,#8e,#d0,#90,#88,#01,#01
	db #82,#b8,#e3,#19,#1b,#e7,#1b,#1b
	db #e3,#19,#1b,#19,#e7,#19,#e3,#1b
	db #e7,#1b,#e3,#1e,#1b,#87
.l0e61
	dw l0e67
.l0e63
	dw l0e82
.l0e65
	dw l0e8b
.l0e67
	db #8a,#b8,#d2,#88,#01,#01,#82,#e1
	db #39,#37,#39,#37,#39,#37,#39,#37
	db #e3,#39,#37,#32,#35,#37,#35,#34
.l0e82 equ $ + 3
	db #ef,#32,#8e,#81,#8a,#d2,#bd,#ff
.l0e8b equ $ + 4
	db #3e,#be,#3c,#8e,#81,#8a,#d2,#bf
	db #ff,#3e,#c0,#3c,#8e
.l0e94
	dw l0da6,l0ea3
.l0e98
	dw l0da6
	db #01,#00,#fb
	dw l0ea3
.l0e9f
	dw l0da6,l0ec6
.l0ea3
	db #d0,#b8,#88,#01,#01,#82,#90,#8a
	db #e3,#37,#37,#e1,#37,#e3,#35,#e1
	db #33,#e3,#35,#35,#e1,#35,#e3,#33
	db #32,#e5,#30,#32,#33,#35,#e3,#37
.l0ec6 equ $ + 3
	db #3a,#3c,#8e,#81,#d1,#8a,#90,#24
	db #27,#29,#27,#29,#2b,#29,#2b,#2e
	db #2b,#2e,#30,#2e,#30,#33,#32,#30
	db #33,#35,#33,#35,#37,#35,#37,#3a
	db #37,#3a,#3c,#3a,#3c,#3f,#3e,#3c
	db #3f,#41,#3f,#41,#43,#41,#43,#46
	db #43,#46,#48,#46,#48,#4b,#4a,#48
	db #4b,#4d,#4b,#4d,#4f,#4d,#4f,#52
	db #4f,#52,#54,#52,#54,#57,#56,#ff
	db #54,#8e
.l0f0d
	dw l0f89,#0000
.l0f11
	dw l0f69,l0f69,l0f69,l0fb1
	dw #0000
.l0f1b
	dw l0f1f,#0000
.l0f1f
	db #8a,#d0,#88,#01,#01,#b8,#82,#90
	db #e1,#18,#1f,#24,#23,#8f,#1f,#23
	db #24,#18,#1f,#24,#23,#8f,#1f,#23
	db #24,#15,#1f,#24,#23,#8f,#1f,#23
	db #24,#15,#1f,#24,#23,#8f,#1f,#23
	db #24,#11,#1f,#24,#23,#8f,#1f,#23
	db #24,#13,#1f,#24,#23,#8f,#1f,#23
	db #24,#18,#1f,#24,#23,#8f,#1f,#23
	db #24,#13,#1f,#24,#23,#8f,#1f,#23
.l0f69 equ $ + 2
	db #24,#87,#91,#81,#b9,#d1,#8c,#e1
	db #18,#e0,#8f,#18,#d3,#ba,#e1,#15
	db #b9,#d1,#8c,#e1,#18,#18,#e0,#8f
	db #18,#d3,#ba,#e1,#15,#b9,#d1,#e1
.l0f89 equ $ + 2
	db #18,#87,#d2,#8a,#81,#91,#e3,#80
	db #c1,#37,#e5,#c2,#37,#c1,#ef,#37
	db #e1,#8f,#e3,#80,#c1,#37,#c2,#e5
	db #37,#c1,#ef,#37,#e1,#8f,#c2,#ef
	db #35,#c2,#e7,#37,#c1,#37,#c2,#ff
.l0fb1 equ $ + 2
	db #37,#87,#91,#81,#b9,#d1,#8c,#e1
	db #18,#e0,#8f,#18,#d3,#ba,#e1,#15
	db #b9,#d1,#8c,#e1,#18,#18,#e0,#8f
	db #18,#d3,#ba,#e1,#15,#e0,#15,#15
	db #87
.l0fd0
	dw l1036
	db #02,#00,#11
	dw l1036
	db #02,#00,#04
	dw l1099
	db #02,#00,#08
	dw l1036
	db #02,#00,#04
	dw l1036,#0000
.l0fe8
	dw l1099
	db #02,#00,#07
	dw l1099
	db #02,#00,#10
	dw l105d
	db #02,#00,#04
	dw l1099
	db #02,#00,#04
	dw l109c
	db #02,#00,#04
	dw l1099
	db #02,#00,#10
	dw l105d
	db #02,#00,#08
	dw l105d,#0000
.l100f
	dw l1099
	db #02,#00,#0f
	dw l1099
	db #02,#00,#0e
	dw l1072
	db #01,#00,#02,#02,#00,#02
	dw l1072,l1072,l1072
	db #01,#00,#02,#02,#00,#02
	dw l1072
	db #02,#00,#08
	dw l1099,#0000
.l1036
	db #8a
	db #ba,#d4,#88,#01,#01,#82,#90,#e5
	db #0e,#e1,#0e,#e3,#10,#10,#e5,#0e
	db #e1,#0e,#e3,#10,#10,#e5,#0e,#e1
	db #0e,#e3,#10,#10,#e1,#0e,#0c,#0c
	db #0e,#10,#10,#e3,#0e,#87
.l105d
	db #e3,#8c
	db #b9,#d1,#18,#8a,#ba,#15,#15,#15
	db #b9,#8c,#18,#8a,#ba,#15,#15,#e1
	db #15,#15,#87
.l1072
	db #e1,#8a,#90,#b8,#81
	db #d5,#18,#1a,#1a,#80,#1a,#26,#1a
	db #1a,#24,#26,#1a,#1a,#26,#1a,#24
	db #1a,#18,#1a,#26,#1a,#1a,#26,#1a
	db #1a,#24,#26,#1a,#80,#21,#24,#26
	db #1a,#87
.l1099
	db #ff,#80,#87
.l109c
	db #8a,#d5,#81
	db #b9,#ef,#39,#eb,#39,#c3,#ff,#37
	db #e3,#8f,#87,#e7,#80,#e3,#8c,#d1
	db #ba,#e1,#15,#80,#e7,#80,#e3,#15
	db #80,#e7,#80,#e3,#15,#80,#e3,#80
	db #15,#15,#e1,#15,#15,#87
.l10c5
	dw l1146
	db #02,#00,#03
	dw l1146,l11eb,l11eb,l11f2
	dw l11f2
	db #02,#00,#14
	dw l1248,#0000
.l10db
	dw l1151
	db #02,#00,#03
	dw l1151,l11d0,l11d0,l11eb
	dw l11eb,l1230,l1230
	db #02,#00,#03
	dw l1264
	db #01,#00,#f9
	db #02,#00,#02
	dw l1264,l1264,l1264
	db #01,#00,#f9
	db #02,#00,#02
	dw l1264,#0000
.l1109
	dw l115d
	db #02,#00,#04
	dw l11b1,l121b,l121b
	db #02,#00,#04
	dw l1143,l1294,l1294,l12b9
	dw l12b9,l1294,l1294,l12b9
	dw l12b9,#0000
	db #04,#03,#00,#05,#09,#03,#03,#00
	db #04,#07,#04,#03,#00,#03,#08,#04
	db #03,#00,#03,#05,#04,#02,#00,#0c
.l1146 equ $ + 3
.l1143
	db #ff,#80,#87,#c1,#d2,#81,#8a,#90
.l1151 equ $ + 6
	db #ef,#37,#37,#35,#35,#87,#c2,#d2
	db #81,#8a,#90,#ef,#3c,#3c,#c4,#3e
.l115d equ $ + 2
	db #3e,#87,#d2,#b8,#82,#90,#88,#01
	db #01,#e7,#43,#43,#e3,#41,#40,#3e
	db #3c,#e7,#43,#43,#e0,#41,#40,#e1
	db #41,#e3,#40,#3e,#3c,#40,#41,#e7
	db #43,#41,#40,#3e,#43,#e0,#40,#41
	db #40,#41,#e3,#40,#e7,#41,#43,#43
	db #e3,#41,#40,#3e,#3c,#e7,#43,#43
	db #e0,#41,#40,#e1,#41,#e3,#40,#3e
	db #3c,#40,#41,#e7,#43,#41,#40,#3e
	db #43,#e0,#40,#41,#40,#41,#e3,#40
.l11b1 equ $ + 6
	db #e7,#3e,#87,#ff,#3a,#87,#b8,#d1
	db #e3,#3c,#3c,#3c,#3f,#3f,#3c,#3f
	db #41,#41,#41,#41,#41,#41,#41,#e1
	db #3c,#3f,#e3,#41,#41,#41,#41,#46
.l11d0 equ $ + 5
	db #43,#41,#3f,#3c,#87,#b8,#d1,#e3
	db #37,#37,#37,#3a,#3a,#37,#3a,#3c
	db #3c,#3c,#3c,#3c,#3c,#3c,#80,#80
	db #3c,#3c,#3c,#ef,#80,#e3,#8f,#87
.l11f2 equ $ + 7
.l11eb
	db #c5,#d0,#ff,#3c,#8f,#80,#87,#b9
	db #d1,#8c,#e7,#24,#e3,#24,#24,#e7
	db #24,#e3,#24,#24,#e7,#24,#e3,#24
	db #24,#e1,#24,#24,#24,#24,#e3,#24
	db #24,#e7,#24,#e3,#24,#24,#e1,#24
	db #24,#24,#24,#24,#24,#24,#24,#87
.l121b
	db #d2,#88,#01,#01,#82,#b8,#eb,#3c
	db #e3,#80,#ef,#43,#e3,#80,#41,#80
.l1230 equ $ + 5
	db #ef,#43,#e3,#8f,#87,#d2,#88,#01
	db #01,#82,#b8,#eb,#80,#e3,#3c,#ef
	db #80,#e3,#41,#80,#45,#ef,#80,#e3
.l1248 equ $ + 5
	db #8f,#87,#ff,#3c,#87,#b9,#d1,#8c
	db #e7,#24,#e3,#24,#24,#e7,#24,#e3
	db #24,#24,#e7,#24,#e3,#24,#24,#e1
	db #24,#24,#24,#24,#24,#24,#24,#24
.l1264 equ $ + 1
	db #87,#e3,#b8,#88,#01,#01,#82,#d4
	db #90,#2b,#30,#37,#30,#2b,#30,#37
	db #30,#2b,#30,#37,#30,#2b,#30,#e1
	db #37,#35,#34,#32,#e3,#29,#2e,#35
	db #2e,#29,#2e,#35,#2e,#29,#2e,#35
	db #2e,#29,#2e,#e1,#35,#34,#32,#30
.l1294 equ $ + 1
	db #87,#d2,#81,#c6,#e7,#30,#30,#e3
	db #30,#34,#35,#e7,#37,#e3,#35,#34
	db #e7,#34,#e3,#35,#e7,#35,#e3,#35
	db #34,#f7,#30,#e3,#35,#34,#30,#e7
.l12b9 equ $ + 6
	db #3a,#e3,#39,#e7,#35,#87,#b8,#82
	db #eb,#3c,#41,#ff,#43,#e3,#8f,#48
	db #eb,#46,#45,#f7,#46,#e3,#3f,#3e
	db #e7,#3a,#87
.l12ce
	dw l1346
	db #02,#00,#09
	dw l1346
	db #01,#00,#0c,#02,#00,#02
	dw l1346
	db #02,#00,#08
	dw l1346,#0000
.l12e4
	dw l13d7,l13d7,l1391,l1391
	dw l1459,l1459,l1391,l1391
	dw l1459,l1459,l1391,l1391
	dw l1459,l1459
	db #02,#00,#04
	dw l14a9
	db #02,#00,#04
	dw l14d0,l1391,l1391,l1459
	dw l1459,l1391,l1391,l1459
	dw l1459,l1391,l1391,l1459
	dw l1459,l1391,l1391,l1459
	dw l1459,#0000
.l132c
	dw l13e8
	db #02,#00,#08
	dw l1456,l13fe,l13fe,l149f
	dw l149f
	db #02,#00,#04
	dw l14f7,l155f,l155f,#0000
.l1346
	db #8a,#90,#d1,#b8,#81,#e1,#33,#e1
	db #33,#37,#38,#3a,#3b,#3a,#38,#e0
	db #37,#38,#e1,#37,#e3,#38,#37,#34
	db #e1,#33,#33,#37,#38,#3a,#3b,#3a
	db #38,#e3,#37,#38,#3a,#3b,#e1,#33
	db #33,#37,#38,#3a,#3b,#3a,#38,#e0
	db #37,#38,#e1,#37,#e3,#38,#37,#34
	db #e1,#33,#33,#37,#38,#3a,#3b,#3a
	db #38,#e0,#3a,#3b,#e1,#3a,#e3,#3b
.l1391 equ $ + 3
	db #3d,#3f,#87,#d0,#8a,#b8,#88,#01
	db #01,#82,#e3,#1b,#e1,#1c,#1b,#8c
	db #ba,#d4,#18,#8a,#b8,#d0,#1b,#19
	db #e7,#1b,#e1,#8f,#8c,#ba,#d4,#18
	db #8a,#b8,#d0,#1b,#25,#27,#e3,#1b
	db #e1,#1c,#1b,#8c,#ba,#d4,#18,#8a
	db #b8,#d0,#1b,#19,#e7,#1b,#e1,#8f
	db #8c,#ba,#d4,#18,#8a,#b8,#d0,#19
	db #8c,#ba,#d4,#18,#8a,#b8,#d0,#1b
.l13d7 equ $ + 1
	db #87,#8a,#d5,#88,#01,#01,#82,#b8
	db #ff,#1b,#8f,#8f,#8f,#20,#8f,#8f
.l13e8 equ $ + 2
	db #8f,#87,#8a,#d0,#c7,#81,#ff,#22
	db #8f,#8f,#8f,#22,#8f,#8f,#8f,#22
	db #8f,#8f,#8f,#22,#8f,#8f,#8f,#87
.l13fe
	db #8a,#88,#01,#01,#90,#b8,#d2,#82
	db #e3,#80,#e3,#40,#40,#3f,#3f,#3b
	db #3b,#38,#3a,#3a,#38,#e7,#3a,#e3
	db #d5,#81,#47,#4b,#4c,#80,#82,#d2
	db #e3,#40,#40,#3f,#3f,#3b,#3b,#38
	db #ef,#3a,#e3,#8f,#81,#d5,#4c,#4b
	db #47,#80,#82,#d2,#3b,#3b,#3a,#3a
	db #38,#37,#34,#ef,#33,#e3,#8f,#81
	db #d5,#4c,#46,#47,#80,#82,#d2,#3b
	db #3b,#3a,#3a,#33,#34,#37,#ef,#38
	db #e3,#8f,#81,#d5,#47,#46,#49,#87
.l1459 equ $ + 3
.l1456
	db #ff,#80,#87,#d0,#8a,#b8,#88,#01
	db #01,#82,#e3,#20,#e1,#22,#23,#8c
	db #ba,#d4,#18,#8a,#b8,#d0,#22,#1e
	db #e7,#20,#e1,#8f,#8c,#ba,#d4,#18
	db #8a,#b8,#d0,#20,#2a,#2c,#e3,#20
	db #e1,#22,#23,#8c,#ba,#d4,#18,#8a
	db #b8,#d0,#22,#1e,#e7,#20,#e1,#8f
	db #8c,#ba,#d4,#18,#8a,#b8,#d0,#2a
	db #8c,#ba,#d4,#18,#8a,#b8,#d0,#2c
.l149f equ $ + 1
	db #87,#d2,#ef,#80,#ff,#37,#8f,#8f
.l14a9 equ $ + 3
	db #ef,#8f,#87,#d0,#8a,#b8,#88,#01
	db #01,#82,#e3,#0f,#e1,#1b,#1c,#8c
	db #ba,#d4,#18,#8a,#b8,#d0,#1b,#1b
	db #1c,#e7,#27,#8c,#e1,#ba,#d4,#18
	db #8a,#b8,#d0,#28,#27,#8c,#ba,#d4
.l14d0 equ $ + 2
	db #18,#87,#d0,#8a,#b8,#88,#01,#01
	db #82,#e3,#14,#e1,#22,#23,#8c,#ba
	db #d4,#18,#8a,#b8,#d0,#14,#20,#23
	db #e7,#22,#8c,#e1,#ba,#d4,#18,#8a
	db #b8,#d0,#22,#23,#8c,#ba,#d4,#18
.l14f7 equ $ + 1
	db #87,#e0,#81,#d1,#b8,#91,#2f,#2e
	db #34,#33,#3b,#3a,#40,#3f,#47,#46
	db #4c,#4b,#53,#52,#58,#57,#52,#53
	db #4b,#4c,#46,#47,#3f,#40,#3a,#3b
	db #33,#34,#2e,#2f,#27,#28,#e1,#2f
	db #2e,#34,#33,#3b,#3a,#40,#3f,#47
	db #46,#4c,#4b,#53,#52,#58,#57,#52
	db #53,#4b,#4c,#46,#47,#3f,#40,#3a
	db #3b,#33,#34,#2e,#2f,#27,#28,#e0
	db #2f,#2e,#34,#33,#3b,#3a,#40,#3f
	db #47,#46,#4c,#4b,#53,#52,#58,#57
	db #52,#53,#4b,#4c,#46,#47,#3f,#40
	db #3a,#3b,#33,#34,#2e,#2f,#27,#28
.l155f equ $ + 1
	db #87,#e3,#80,#d2,#83,#40,#40,#3f
	db #3f,#3b,#3b,#38,#3a,#3a,#38,#e7
	db #3a,#d5,#81,#e3,#47,#4b,#4c,#80
	db #83,#d2,#40,#40,#3f,#3f,#3b,#3b
	db #38,#ef,#3a,#e3,#8f,#d5,#81,#4c
	db #4b,#47,#80,#83,#d2,#3b,#3b,#3a
	db #3a,#38,#37,#34,#ef,#33,#e3,#8f
	db #d5,#81,#4c,#46,#47,#80,#83,#d2
	db #3b,#3b,#3a,#3a,#33,#34,#37,#ef
	db #38,#e3,#8f
	dw #81d5,#4647,#8749
.l15af
	dw l1143
	db #02,#00,#0f
	dw l1143
	db #02,#00,#06
	dw l1680
	db #02,#00,#08
	dw l1143,l1767,l1767
	db #02,#00,#08
	dw l1143
	db #02,#00,#04
	dw l1680
	db #02,#00,#08
	dw l1143,#0000
.l15d5
	dw l1621
	db #02,#00,#07
	dw l1629
	db #02,#00,#08
	dw l1143
	db #02,#00,#04
	dw l1629
	db #02,#00,#08
	dw l1143
	db #02,#00,#06
	dw l17a0,#0000
.l15f2
	dw l166a,l166a,l166a,l16ac
	dw l166a,l166a,l166a,l16ac
	db #02,#00,#08
	dw l16c5
	db #02,#00,#08
	dw l1143,l16c5,l16c5
	db #02,#00,#08
	dw l1773
	db #02,#00,#04
	dw l16c5
	db #02,#00,#08
	dw l1143,#0000
.l1621
	db #8a,#90,#b8,#88,#01,#01,#82,#d7
.l1629
	db #e1,#18,#18,#e3,#18,#18,#e1,#18
	db #e3,#18,#18,#e1,#18,#e3,#1b,#1b
	db #e1,#18,#18,#e3,#18,#18,#e1,#18
	db #e3,#18,#18,#e1,#18,#e3,#1d,#1d
	db #e1,#18,#18,#e3,#18,#18,#e1,#18
	db #e3,#18,#18,#e1,#18,#e3,#1b,#1b
	db #e1,#18,#18,#e3,#18,#18,#e1,#18
	db #e3,#1f,#1f,#e1,#1f,#e3,#1d,#1f
.l166a equ $ + 1
	db #87,#b9,#d1,#8c,#e1,#24,#24,#e3
	db #24,#24,#e1,#24,#e3,#24,#24,#e1
.l1680 equ $ + 7
	db #24,#e3,#24,#e1,#24,#24,#87,#81
	db #8a,#d6,#c8,#e7,#3c,#e5,#3c,#3c
	db #e7,#3c,#e3,#3c,#c9,#e7,#3e,#e5
	db #3e,#3e,#e7,#3e,#e3,#3e,#c8,#e7
	db #3c,#e5,#3c,#3c,#e7,#3c,#e3,#3c
	db #ca,#e7,#3c,#e5,#3c,#3c,#e7,#3c
.l16ac equ $ + 3
	db #e3,#3c,#87,#b9,#d1,#8c,#e1,#24
	db #24,#e3,#24,#24,#e1,#24,#e3,#24
	db #24,#8c,#e1,#ba,#d4,#18,#e3,#18
.l16c5 equ $ + 4
	db #e1,#18,#18,#87,#b9,#d1,#8c,#e1
	db #24,#24,#e3,#24,#8c,#e3,#ba,#d4
	db #18,#b9,#d1,#8c,#e1,#24,#e3,#24
	db #24,#e1,#24,#8c,#e3,#ba,#d4,#18
	db #b9,#d1,#8c,#e1,#24,#8c,#e1,#ba
	db #d4,#18,#b9,#d1,#8c,#e1,#24,#24
	db #e3,#24,#8c,#e3,#ba,#d4,#18,#b9
	db #d1,#8c,#e1,#24,#8c,#e3,#ba,#d4
	db #18,#b9,#d1,#8c,#e3,#24,#e1,#24
	db #8c,#e3,#ba,#d4,#18,#b9,#d1,#8c
	db #e1,#24,#8c,#e1,#ba,#d4,#18,#b9
	db #d1,#8c,#e1,#24,#24,#e3,#24,#8c
	db #e3,#ba,#d4,#18,#b9,#d1,#8c,#e1
	db #24,#e3,#24,#24,#e1,#24,#8c,#e3
	db #ba,#d4,#18,#b9,#d1,#8c,#e1,#24
	db #8c,#e1,#ba,#d4,#18,#b9,#d1,#8c
	db #e1,#24,#24,#e3,#24,#8c,#e3,#ba
	db #d4,#18,#b9,#d1,#8c,#e1,#24,#8c
	db #e3,#ba,#d4,#18,#e1,#18,#b9,#d1
	db #8c,#e1,#24,#8c,#e1,#ba,#d4,#18
.l1767 equ $ + 6
	db #e3,#18,#e1,#18,#18,#87,#b8,#88
	db #01,#02,#d2,#82,#ff,#3c,#8f,#8f
.l1773 equ $ + 2
	db #8f,#87,#8c,#e1,#ba,#d4,#15,#b9
	db #d1,#8b,#24,#24,#24,#8c,#e1,#ba
	db #d4,#15,#b9,#d1,#8b,#24,#24,#24
	db #8c,#e1,#ba,#d4,#15,#b9,#d1,#8b
	db #24,#24,#24,#8c,#e1,#ba,#d4,#15
.l17a0 equ $ + 7
	db #b9,#d1,#8b,#24,#24,#24,#87,#81
	db #c6,#d1,#e3,#18,#24,#e1,#18,#e3
	db #24,#16,#22,#e1,#16,#e3,#22,#e1
	db #16,#22,#e3,#11,#1d,#e1,#11,#e3
	db #1d,#13,#1f,#e1,#13,#e3,#1f,#e1
	db #13,#1f,#e3,#18,#24,#e1,#18,#e3
	db #24,#16,#22,#e1,#16,#e3,#22,#e1
	db #16,#22,#e3,#1b,#27,#e1,#1b,#e3
	db #27,#e3,#1d,#29,#e1,#1d,#e3,#29
	db #e1,#1d,#29,#87
;
.music_info
	db "Renegade 3 - The Final Chapter (1989)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
