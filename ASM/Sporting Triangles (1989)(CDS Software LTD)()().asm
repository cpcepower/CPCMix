; Music of Sporting Triangles (1989)(CDS Software LTD)()()
; Ripped by Megachur the 22/05/2015
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "SPORTINT.BIN"
	ENDIF

music_date_rip_day		equ 22
music_date_rip_month	equ 05
music_date_rip_year		equ 2015
music_adr				equ &b6f7
first_theme				equ 0
last_theme				equ 4	; 0 -> 4

	read "music_header.asm"

;
.init_music
.lb6f7
;
	push af
	call lb8b5
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,lbda1
	add hl,bc
	ld a,(hl)
	ld (lbb9d),a
	inc hl
	ld ix,lb766
	ld c,#22
	ld a,#03
.lb715
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
	ld hl,lbc87
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
	jr nz,lb715
	ld (lbaba),a
	dec a
	ld (lbb9e),a
	ld (lbb9b),a
	ld a,#0f
	ld (lbb9c),a
	ret
.lb766
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.lb788
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.lb7aa
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
.lb7cc
;
	ld a,(lbb9b)
	or a
	ret z
	ld a,(lbb9b)
	and a
	jr z,lb829
.lb7d8 equ $ + 1
	ld a,#00
	ld (lb825),a
	ld a,(lbb9d)
	ld hl,lbb9e
	add (hl)
	ld (hl),a
	jr nc,lb7fd
	ld b,#00
	ld ix,lb766
	call lb9d7
	ld ix,lb788
	call lb9d7
	ld ix,lb7aa
	call lb9d7
.lb7fd
	ld ix,lb766
	call lba87
	ld (lbb9f),hl
	ld (lbba7),a
	ld ix,lb788
	call lba87
	ld (lbba1),hl
	ld (lbba8),a
	ld ix,lb7aa
	call lba87
	ld (lbba3),hl
	ld (lbba9),a
.lb825 equ $ + 1
	ld a,#00
	ld (lbba5),a
.lb829
	ld a,(lbb9b)
	and a
	jr nz,lb83f
	ld (lbba7),a
	ld (lbba8),a
	ld (lbba9),a
	ld a,#3f
	ld (lbba6),a
	jr lb867
.lb83f
	ld a,(lbb9c)
	and #0f
	xor #0f
.lb847 equ $ + 1
	jr z,lb867
	ld b,a
	ld a,(lbba7)
	sub b
	jr nc,lb850
	xor a
.lb850
	ld (lbba7),a
	ld a,(lbba8)
	sub b
	jr nc,lb85a
	xor a
.lb85a
	ld (lbba8),a
	ld a,(lbba9)
	sub b
	jr nc,lb864
	xor a
.lb864
	ld (lbba9),a
.lb867
	ld hl,lbba9
	ld d,#0a
.lb86c
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
	jp p,lb86c
	ret
.lb88d
	ld de,#0a00
.lb890
	call lb89a
	dec d
	jp p,lb890
	ld de,#073f
.lb89a
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
.lb8b5
;
	xor a
	ld (lbb9b),a
	call lb88d
	xor a
	ld (lbba7),a
	ld (lbba8),a
	ld (lbba9),a
	ret
	db #fa
	db #de
	db #d7
	db #e1
	db #a4
	db #e9
	db #e4
	db #3b
	db #c4
	db #b5
	db #7a
	db #64
	db #8c
	db #e7
	db #30
	db #f4
	db #f5
	db #fa
	db #b3
	db #13
	db #0a
	db #01
	ld a,(de)
	inc de
	ld (lbb9c),a
	jp lb9e5
	ld a,(de)
	inc de
	ld (lbb9d),a
	jp lb9e5
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
	jp lb9e5
	pop hl
	jp lb8b5
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
	jr nz,lb92b
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb92b
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb9e5
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,lbb66
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb9e5
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,lbb66
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb9e5
	ld hl,lbb66
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr lb9e5
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lb9e5
	ld a,(de)
	inc de
	ld (lbaba),a
	jr lb9e5
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr lb9e5
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr lb9e5
	ld (ix+#1d),b
	jr lb9e5
	ld (ix+#1d),#c0
	jr lb9e5
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lb9e5
	set 1,(ix+#00)
	jr lb9e5
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lba14
	jr lba10
	ld (ix+#1f),#ff
	jr lb9e5
	ld (ix+#1f),b
	jr lb9e5
.lb9d7
	dec (ix+#10)
	jr nz,lba2b
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb9e5
	ld a,(de)
	inc de
	and a
	jp m,lba3c
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb9f7
	ld (lb7d8),a
.lb9f7
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.lba10
	set 5,(ix+#00)
.lba14
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,lba2a
	ld (ix+#1f),#ff
.lba2a
	ret
.lba2b
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lba38
	inc (ix+#12)
	ret
.lba38
	dec (ix+#12)
	ret
.lba3c
	cp #c0
	jr c,lba7f
	add #20
	jr c,lba60
	add #10
	jr c,lba67
	add #10
	ld c,a
	ld hl,lbc78
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp lb9e5
.lba60
	inc a
	ld (ix+#11),a
	jp lb9e5
.lba67
	ld hl,lbcb1
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
	jp lb9e5
.lba7f
	ld hl,lb847
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lba87
	ld c,(ix+#00)
	bit 5,c
	jr z,lbab9
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,lbab3
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,lbab3
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.lbab3
	ld a,(ix+#18)
	ld (ix+#13),a
.lbaba equ $ + 1
.lbab9
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,lbad6
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.lbad6
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lbbb8
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lbb37
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lbb00
	bit 0,c
	jr nz,lbb1e
.lbb00
	bit 5,l
	jr nz,lbb10
	sub (ix+#1b)
	jr nc,lbb1b
	set 5,(ix+#1d)
	sub a
	jr lbb1b
.lbb10
	add (ix+#1b)
	cp b
	jr c,lbb1b
	res 5,(ix+#1d)
	ld a,b
.lbb1b
	ld (ix+#1c),a
.lbb1e
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lbb29
	dec d
.lbb29
	add #a0
	jr c,lbb35
.lbb2d
	sla e
	rl d
	add #18
	jr nc,lbb2d
.lbb35
	add hl,de
	ex de,hl
.lbb37
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lbb62
	ld b,(ix+#0e)
	djnz lbb5f
	ld c,(ix+#0d)
	bit 7,c
	jr z,lbb4e
	dec b
.lbb4e
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lbb62
.lbb5f
	ld (ix+#0e),b
.lbb62
	cpl
	and #03
.lbb66 equ $ + 1
	ld a,#38
	jr nz,lbb73
	ld a,(lb7d8)
	xor #08
	ld (lb825),a
	ld a,#07
.lbb73
	ld hl,lbba6
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,lbb96
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (lb825),a
.lbb96
	ex de,hl
	ld a,(ix+#13)
	ret
.lbba1 equ $ + 6
.lbb9f equ $ + 4
.lbb9e equ $ + 3
.lbb9d equ $ + 2
.lbb9c equ $ + 1
.music_end
.lbb9b
	db #00,#0f,#00,#00,#00,#00,#00,#00
.lbba9 equ $ + 6
.lbba8 equ $ + 5
.lbba7 equ $ + 4
.lbba6 equ $ + 3
.lbba5 equ $ + 2
.lbba3
	db #00,#00,#00,#3f,#0f,#0f,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #3f,#00,#00,#00,#00
.lbbb8
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
.lbc78
	db #0f,#0f,#11,#13,#15,#1c,#1e,#20
.lbc87 equ $ + 7
	db #22,#24,#25,#26,#27,#28,#29,#80
	db #00,#03,#87,#00,#04,#87,#04,#07
	db #8a,#0c,#00,#00,#00,#00,#00,#00
	db #80,#07,#0c,#8f,#07,#0c,#90,#03
	db #07,#8c,#04,#07,#8c,#00,#8c,#00
	db #83,#00,#84,#00,#85,#00,#87,#00
	db #81
.lbcb1
	dw lbcd2,lbcda,lbce1,lbcf3
	dw lbd05,lbd0d,lbd15,lbd24
	dw lbd34,lbd45,lbd56,lbd6a
	dw lbd7b,lbd8c,lbd9c,lbd9f
.lbcd2 equ $ + 1
	db #01,#0f,#0e,#0c,#09,#05,#01,#87
.lbcda equ $ + 1
	db #01,#0e,#0c,#0a,#05,#01,#87,#01
.lbce1
	db #0f,#0e,#0d,#0b,#0d,#0c,#0a,#09
	db #0b,#0a,#08,#07,#09,#08,#06,#05
.lbcf3 equ $ + 2
	db #87,#01,#0f,#0f,#0d,#0b,#0d,#0c
	db #0a,#09,#0b,#0a,#08,#07,#09,#08
.lbd05 equ $ + 4
	db #06,#05,#87,#01,#0c,#0d,#0f,#0e
.lbd0d equ $ + 4
	db #0d,#0c,#87,#01,#0c,#0d,#0e,#0d
.lbd15 equ $ + 4
	db #0c,#0b,#87,#08,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.lbd24 equ $ + 3
	db #01,#87,#05,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.lbd34 equ $ + 3
	db #01,#87,#08,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.lbd45 equ $ + 4
	db #02,#01,#87,#0c,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.lbd56 equ $ + 5
	db #03,#02,#01,#87,#02,#0c,#0d,#0e
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.lbd6a equ $ + 1
	db #01,#0c,#0d,#0f,#0e,#0c,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.lbd7b equ $ + 2
	db #87,#01,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.lbd8c equ $ + 3
	db #01,#87,#01,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.lbd9f equ $ + 6
.lbd9c equ $ + 3
	db #01,#87,#01,#0f,#87,#01,#0c,#87
.lbda1
	db #2e
	dw lbde2,lbdc4,lbe08
	db #38
	dw lbf83,lbf81,lbf85
	db #2e
	dw lbde2,lbdc4,lbe18
	db #2e
	dw lbfbf,lbfb9,lbfc5
	db #2e
	dw lbfcd,lbfc9,lbfd7
.lbdc4
	dw lbe28,lbe3c,lbe5b,lbe5b
	dw lbe5b,lbe5b,lbe5b,lbe5b
	dw lbe5b,lbe5b,lbe5b,lbe5b
	dw lbe5b,lbe81,#0000
.lbde2
	dw lbe94,lbea5,lbea5,lbea5
	dw lbeb8,lbea5,lbea5,lbea5
	dw lbeb8,lbf13,lbed1,lbed1
	dw lbed1,lbed1,lbed1,lbed1
	dw lbed1,lbee9,#0000
.lbe08
	dw lbefb,lbf0b,lbf0b,lbf0b
	dw lbefb,lbf14,lbf37,#0000
.lbe18
	dw lbefb,lbf0b,lbf0b,lbf0b
	dw lbefb,lbf14,lbf37,lbffe
.lbe28
	db #89,#02,#8a,#88,#01,#01,#90,#d3
	db #e3,#84,#14,#01,#2b,#80,#84,#14
	db #01,#2b,#80,#87
.lbe3c
	db #8a,#d8,#e5,#0c,#e9,#0c,#e5,#0c
	db #e3,#0c,#e0,#11,#13,#e1,#11,#13
	db #e5,#0c,#e9,#0c,#e5,#13,#e3,#13
	db #e0,#11,#13,#e1,#11,#13,#87
.lbe5b
	db #90,#e1,#88,#01,#01,#8a,#d8,#0c
	db #8b,#d0,#41,#d2,#8c,#84,#14,#01
	db #30,#8a,#d8,#0c,#8b,#d0,#41,#e0
	db #8a,#d3,#07,#07,#e1,#8c,#84,#14
	db #01,#2b,#8a,#d8,#11,#87
.lbe81
	db #e1,#8a,#d8,#0c,#8b,#d0,#41,#d2
	db #8c,#84,#14,#01,#30,#8a,#d8,#11
	db #e7,#0c,#87
.lbe94
	db #8a,#88,#01,#01,#90,#d3,#c9,#e4
	db #29,#e2,#80,#e4,#29,#e2,#80,#c0
	db #87
.lbea5
	db #90,#8b,#d0,#e1,#8d,#3f,#d1,#e0
	db #41,#41,#d0,#e1,#8d,#3f,#d1,#e0
	db #41,#41,#87
.lbeb8
	db #d0,#e1,#8d,#3f,#d2,#8c,#e0,#84
	db #14,#01,#30,#84,#14,#01,#30,#e1
	db #84,#14,#01,#2b,#84,#14,#01,#30
	db #87
.lbed1
	db #90,#8a,#81,#e1,#80,#d1,#e0,#c6
	db #24,#e2,#24,#e0,#24,#e2,#24,#e0
	db #c8,#29,#e2,#29,#e0,#29,#29,#87
.lbee9
	db #e1,#8f,#e0,#c6,#24,#e2,#24,#e0
	db #24,#24,#c0,#e7,#d8,#88,#01,#01
	db #18,#87
.lbefb
	db #8a,#88,#01,#01,#d3,#c9,#e4,#2b
	db #e2,#80,#e4,#2b,#e2,#80,#c0,#87
.lbf0b
	db #d7,#e1,#24,#1f,#24,#e9,#1f,#87
.lbf13
	db #81
.lbf14
	db #8a,#d7,#e1,#24,#1f,#24,#1f,#21
	db #e3,#1d,#24,#e1,#1f,#24,#1f,#21
	db #24,#e3,#29,#e1,#24,#1f,#24,#1f
	db #21,#e3,#1d,#1f,#e1,#1d,#1c,#1d
	db #e7,#18,#87
.lbf37
	db #d8,#e1,#24,#1f,#24,#1f,#21,#e3
	db #1d,#24,#e1,#1f,#24,#1f,#21,#24
	db #e3,#29,#e1,#24,#1f,#24,#1f,#21
	db #e3,#1d,#1f,#e1,#1d,#1c,#1d,#e7
	db #18,#e1,#24,#1f,#24,#1f,#21,#e3
	db #1d,#24,#e1,#1f,#24,#1f,#21,#24
.lbf69 equ $ + 2
	db #e3,#29,#89,#02,#8a,#d8,#88,#01
	db #01,#e1,#24,#1f,#24,#1f,#21,#e3
	db #1d,#1f,#e1,#1d,#1c,#1d,#d7,#e7
	db #24,#87
.lbf81
	db #87
.lbf83 equ $ + 1
	db #bf,#9a
.lbf85 equ $ + 1
	db #bf,#aa,#bf,#90,#89,#07,#8a,#88
	db #01,#01,#d2,#e2,#11,#11,#e0,#18
	db #18,#18,#d8,#e8,#1d,#8e,#90,#8a
	db #88,#01,#01,#d8,#e2,#1d,#21,#e0
	db #24,#24,#24,#e7,#21,#8e,#8a,#88
	db #01,#01,#d8,#e2,#21,#24,#e0,#28
	db #28,#28,#e7,#29,#8e
.lbfbf equ $ + 6
.lbfb9
	dw lbe5b,lbe81,lbffe,lbed1
.lbfc5 equ $ + 4
	dw lbee9,lbffe,lbf69,lbffe
.lbfcd equ $ + 4
.lbfc9
	dw lbfdb,#0000,lbea5,lbea5
.lbfd7 equ $ + 6
	dw lbea5,lbeb8,#0000,lbff2
	dw #0000
.lbfdb
	db #89,#02,#8a,#d8,#90,#88,#01,#01
	db #e5,#0c,#e9,#0c,#e5,#0c,#e3,#0c
.lbff2 equ $ + 7
	db #e0,#11,#13,#e1,#11,#13,#8e,#8a
	db #d7,#88,#01,#01,#e1,#24,#1f,#24
	db #e9,#1f,#87
.lbffe
	db #8e,#00
;
.music_info
	db "Sporting Triangles (1989)(CDS Software LTD)()",0
	db "",0

	read "music_end.asm"
