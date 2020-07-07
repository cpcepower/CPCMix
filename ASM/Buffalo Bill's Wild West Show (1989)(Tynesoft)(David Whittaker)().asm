; Music of Buffalo Bill's Wild West Show (1989)(Tynesoft)(David Whittaker)()
; Ripped by Megachur the 02/04/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BUFFBWWS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #9000
FIRST_THEME				equ 0
LAST_THEME				equ 5

	read "music_header.asm"

;
.init_music
;
	push af
	call l921c
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l9abd
	add hl,bc
	ld a,(hl)
	ld (l90ec),a
	ld (l94ff),a
	inc hl
	ld ix,l906d
	ld c,#22
	ld a,#03
.l9021
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
	ld hl,l95e9
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
	jr nz,l9021
	ld (l941a),a
	dec a
	ld (l9500),a
	ld (l94fb),a
	ret
.l906d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l908f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l90b1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(l94fb)
	ld hl,l94fc
	or (hl)
	inc hl
	or (hl)
	ret z
	call l97de
	ld a,(l94fb)
	and a
	jr z,l9137
.l90e7 equ $ + 1
	ld a,#00
	ld (l9133),a
.l90ec equ $ + 1
	ld a,#01
	ld hl,l9500
	add (hl)
	ld (hl),a
	jr nc,l910b
	ld b,#00
	ld ix,l906d
	call l931d
	ld ix,l908f
	call l931d
	ld ix,l90b1
	call l931d
.l910b
	ld ix,l906d
	call l93e7
	ld (l9501),hl
	ld (l9509),a
	ld ix,l908f
	call l93e7
	ld (l9503),hl
	ld (l950a),a
	ld ix,l90b1
	call l93e7
	ld (l9505),hl
	ld (l950b),a
.l9133 equ $ + 1
	ld a,#00
	ld (l9507),a
.l9137
	ld a,(l94fb)
	and a
	jr nz,l914d
	ld (l9509),a
	ld (l950a),a
	ld (l950b),a
	ld a,#3f
	ld (l9508),a
	jr l9175
.l914d
	ld a,(l94fe)
	and #0f
	xor #0f
	jr z,l9175
	ld b,a
	ld a,(l9509)
	sub b
	jr nc,l915e
	xor a
.l915e
	ld (l9509),a
	ld a,(l950a)
	sub b
	jr nc,l9168
	xor a
.l9168
	ld (l950a),a
	ld a,(l950b)
	sub b
	jr nc,l9172
	xor a
.l9172
	ld (l950b),a
.l9176 equ $ + 1
.l9175
	ld a,#00
	xor #ff
	ld (l9176),a
	ld a,(l94fc)
	and a
	jr z,l91a4
	ld hl,(l950e)
	ld (l9501),hl
	ld a,(l9a7a)
	ld b,a
	bit 3,a
	jr nz,l9196
	ld a,(l9514)
	ld (l9507),a
.l9196
	ld hl,l9508
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l9516)
	ld (l9509),a
.l91a4
	ld a,(l94fd)
	and a
	jr z,l91ce
	ld hl,(l9510)
	ld (l9503),hl
	ld a,(l9a8f)
	ld b,a
	bit 3,a
	jr nz,l91be
.l91b8
	ld a,(l9514)
	ld (l9507),a
.l91be
	ld hl,l9508
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(l9517)
	ld (l950a),a
.l91ce
	ld hl,l950b
	ld d,#0a
.l91d3
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
	jp p,l91d3
	ret
.l91f4
	ld de,#0a00
.l91f7
	call l9201
	dec d
	jp p,l91f7
	ld de,#073f
.l9201
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
;
.l921c
	xor a
	ld (l94fb),a
	call l922e
	xor a
	ld (l9509),a
	ld (l950a),a
	ld (l950b),a
	ret
.l922e
	xor a
	ld (l94fc),a
	ld (l94fd),a
	jp l91f4
	db #cf,#b3,#ac,#b6,#79,#be,#b9,#10
	db #99,#8a,#4f,#39,#61,#bc,#05,#c9
	db #ca,#cf,#88
	pop hl
	jp l921c
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
	jr nz,l9271
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l9271
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l932b
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,l94c6
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l932b
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l94c6
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l932b
	ld hl,l94c6
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l932b
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l932b
	ld a,(de)
	inc de
	ld (l941a),a
	jr l932b
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l932b
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l932b
	ld (ix+#1d),b
	jr l932b
	ld (ix+#1d),#c0
	jr l932b
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l932b
	set 1,(ix+#00)
	jr l932b
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l935a
	jr l9356
	ld (ix+#1f),#ff
	jr l932b
	ld (ix+#1f),b
	jr l932b
.l931d
	dec (ix+#10)
	jr nz,l938b
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l932b
	ld a,(de)
	inc de
	and a
	jp m,l939c
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l933d
	ld (l90e7),a
.l933d
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.l9356
	set 5,(ix+#00)
.l935a
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l938a
	ld a,(l94fc)
	and a
	jr z,l9379
	ld a,(l9a7a)
	bit 3,a
	jr z,l938a
.l9379
	ld a,(l94fd)
	and a
	jr z,l9386
	ld a,(l9a8f)
	bit 3,a
	jr z,l938a
.l9386
	ld (ix+#1f),#ff
.l938a
	ret
.l938b
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l9398
	inc (ix+#12)
	ret
.l9398
	dec (ix+#12)
	ret
.l939c
	cp #c0
	jr c,l93df
	add #20
	jr c,l93c0
	add #10
	jr c,l93c7
	add #10
	ld c,a
	ld hl,l95da
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l932b
.l93c0
	inc a
	ld (ix+#11),a
	jp l932b
.l93c7
	ld hl,l9615
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
	jp l932b
.l93df
	ld hl,l91b8
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l93e7
	ld c,(ix+#00)
	bit 5,c
	jr z,l9419
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l9413
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l9413
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l9413
	ld a,(ix+#18)
	ld (ix+#13),a
.l941a equ $ + 1
.l9419
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l9436
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l9436
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l951a
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l9497
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l9460
	bit 0,c
	jr nz,l947e
.l9460
	bit 5,l
	jr nz,l9470
	sub (ix+#1b)
	jr nc,l947b
	set 5,(ix+#1d)
	sub a
	jr l947b
.l9470
	add (ix+#1b)
	cp b
	jr c,l947b
	res 5,(ix+#1d)
	ld a,b
.l947b
	ld (ix+#1c),a
.l947e
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l9489
	dec d
.l9489
	add #a0
	jr c,l9495
.l948d
	sla e
	rl d
	add #18
	jr nc,l948d
.l9495
	add hl,de
	ex de,hl
.l9497
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l94c2
	ld b,(ix+#0e)
	djnz l94bf
	ld c,(ix+#0d)
	bit 7,c
	jr z,l94ae
	dec b
.l94ae
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l94c2
.l94bf
	ld (ix+#0e),b
.l94c2
	cpl
	and #03
.l94c6 equ $ + 1
	ld a,#38
	jr nz,l94d3
	ld a,(l90e7)
	xor #08
	ld (l9133),a
	ld a,#07
.l94d3
	ld hl,l9508
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l94f6
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l9133),a
.l94f6
	ex de,hl
	ld a,(ix+#13)
	ret
.l9501 equ $ + 6
.l9500 equ $ + 5
.l94ff equ $ + 4
.l94fe equ $ + 3
.l94fd equ $ + 2
.l94fc equ $ + 1
.music_end
.l94fb
	db #00,#00,#00,#0f,#00,#00,#00,#00
.l950a equ $ + 7
.l9509 equ $ + 6
.l9508 equ $ + 5
.l9507 equ $ + 4
.l9505 equ $ + 2
.l9503
	db #00,#00,#00,#00,#00,#3f,#0f,#0f
.l9511 equ $ + 6
.l9510 equ $ + 5
.l950f equ $ + 4
.l950e equ $ + 3
.l950b
	db #0f,#00,#00,#00,#00,#00,#00,#00
.l9517 equ $ + 4
.l9516 equ $ + 3
.l9514 equ $ + 1
	db #00,#00,#3f,#00,#00,#00,#00
.l951a
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
.l95da
	db #0f,#0f,#11,#13,#15,#18,#1a,#1c
.l95e9 equ $ + 7
	db #1e,#20,#21,#22,#23,#24,#25,#80
	db #00,#03,#87,#00,#04,#87,#04,#07
	db #8a,#00,#00,#0c,#8c,#07,#0c,#8f
	db #07,#0c,#90,#03,#07,#8c,#04,#07
	db #8c,#00,#8c,#00,#83,#00,#84,#00
	db #85,#00,#87,#0c,#00,#00,#00,#00
	db #00,#00,#80
.l9615
	dw l9636,l9645,l9651,l9663
	dw l9675,l967d,l9685,l969a
	dw l969f,l96b0,l96c1,l96d1
	dw l96e2,l96e9,l96fa,l970a
.l9636 equ $ + 1
	db #02,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#01
.l9645
	db #0e,#0d,#0b,#09,#07,#05,#04,#03
.l9651 equ $ + 4
	db #02,#01,#87,#01,#0f,#0e,#0d,#0b
	db #0d,#0c,#0a,#09,#0b,#0a,#08,#07
.l9663 equ $ + 6
	db #09,#08,#06,#05,#87,#01,#0f,#0f
	db #0d,#0b,#0d,#0c,#0a,#09,#0b,#0a
	db #08,#07,#09,#08,#06,#05,#87,#01
.l9675
	db #0c,#0e,#0f,#0e,#0d,#0c,#87,#01
.l967d
	db #0c,#0d,#0e,#0d,#0c,#0b,#87,#01
.l9685
	db #0e,#0d,#0c,#0b,#0a,#09,#01,#08
	db #01,#07,#01,#06,#01,#05,#01,#04
.l969a equ $ + 5
	db #01,#02,#01,#87,#01,#0b,#0d,#0e
.l969f equ $ + 2
	db #87,#05,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l96b0 equ $ + 3
	db #01,#87,#08,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.l96c1 equ $ + 4
	db #02,#01,#87,#04,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.l96d1 equ $ + 4
	db #02,#01,#87,#04,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l96e2 equ $ + 5
	db #03,#02,#01,#87,#01,#0f,#0e,#0d
.l96e9 equ $ + 4
	db #0c,#0b,#87,#02,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l96fa equ $ + 5
	db #03,#02,#01,#87,#02,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l970a equ $ + 5
	db #03,#02,#01,#87,#01,#0f,#0e,#0d
	db #0d,#0c,#0c,#0b,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
	ld hl,l9726
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l9726
	ld (bc),a
	ld e,h
	ld hl,l94fc
	ld (hl),#00
	ld hl,l9950
	add a
	add l
	ld l,a
	jr nc,l9736
	inc h
.l9736
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l9a74
.l973e
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l973e
	ld a,(l9a75)
	ld (l9a82),a
	ld hl,(l9a76)
	ld (l950e),hl
	ld a,(l9a7a)
	bit 3,a
	jr nz,l975b
	ld a,l
	ld (l9514),a
.l975b
	ld a,(l9a7f)
	ld (l9a83),a
	ld a,(l9a81)
	ld (l9a88),a
	ld a,(l9a7e)
	ld hl,l99d0
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l9a84),hl
	ld (l9a86),hl
	ld a,(hl)
	ld (l9516),a
	ld hl,l94fc
	inc (hl)
	ret
	ld hl,l94fd
	ld (hl),#00
	ld hl,l9950
	add a
	add l
	ld l,a
	jr nc,l9791
	inc h
.l9791
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l9a89
.l9799
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l9799
	ld a,(l9a8a)
	ld (l9a97),a
	ld hl,(l9a8b)
	ld (l9510),hl
	ld a,(l9a8f)
	bit 3,a
	jr nz,l97b6
	ld a,l
	ld (l9514),a
.l97b6
	ld a,(l9a94)
	ld (l9a98),a
	ld a,(l9a96)
	ld (l9a9d),a
	ld a,(l9a93)
	ld hl,l99d0
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l9a99),hl
	ld (l9a9b),hl
	ld a,(hl)
	ld (l9517),a
	ld hl,l94fd
	inc (hl)
	ret
.l97de
	call l9a9e
	ld a,(l94fc)
	and a
	call nz,l989e
	ld a,(l94fd)
	ret z
	ld a,(l9a89)
	and a
	jr nz,l97fc
	ld a,(l9a95)
	and a
	jr nz,l97fc
	ld (l94fd),a
	ret
.l97fc
	dec a
	ld (l9a89),a
	ld a,(l9a97)
	and a
	jr nz,l9834
	ld a,(l9a95)
	and a
	jr nz,l9812
	ld a,(l9a92)
	and a
	jr z,l9876
.l9812
	dec a
	ld (l9a92),a
	ld a,(l9a8a)
	ld (l9a97),a
	ld a,(l9a90)
	and a
	jr z,l9825
	ld a,(l9aba)
.l9825
	ld b,a
	ld a,(l9a8b)
	add b
	ld (l9510),a
	ld a,(l9a8c)
	add b
	ld (l9511),a
.l9834
	ld hl,l9a97
	dec (hl)
	ld hl,l9a96
	ld a,(hl)
	and a
	jr z,l9846
	ld hl,l9a9d
	dec (hl)
	jr nz,l9869
	ld (hl),a
.l9846
	ld a,(l9a91)
	and a
	jr z,l9869
	jp p,l985c
	ld hl,(l9510)
	ld de,(l9a8d)
	add hl,de
	ld (l9510),hl
	jr l9869
.l985c
	ld hl,(l9510)
	ld de,(l9a8d)
	and a
	sbc hl,de
	ld (l9510),hl
.l9869
	ld a,(l9a8f)
	bit 3,a
	jr nz,l9876
	ld a,(l9510)
	ld (l9514),a
.l9876
	ld a,(l9a98)
	dec a
	ld (l9a98),a
	jr nz,l989d
	ld a,(l9a94)
	ld (l9a98),a
	ld hl,(l9a9b)
	ld a,(hl)
	inc hl
	and a
	jp p,l9897
	cp #80
	jr nz,l989d
	ld hl,(l9a99)
	ld a,(hl)
	inc hl
.l9897
	ld (l9a9b),hl
	ld (l9517),a
.l989d
	ret
.l989e
	ld a,(l9a74)
	and a
	jr nz,l98ae
	ld a,(l9a80)
	and a
	jr nz,l98ae
	ld (l94fc),a
	ret
.l98ae
	dec a
	ld (l9a74),a
	ld a,(l9a82)
	and a
	jr nz,l98e6
	ld a,(l9a80)
	and a
	jr nz,l98c4
	ld a,(l9a7d)
	and a
	jr z,l9928
.l98c4
	dec a
	ld (l9a7d),a
	ld a,(l9a75)
	ld (l9a82),a
	ld a,(l9a7b)
	and a
	jr z,l98d7
	ld a,(l9ab9)
.l98d7
	ld b,a
	ld a,(l9a76)
	add b
	ld (l950e),a
	ld a,(l9a77)
	add b
	ld (l950f),a
.l98e6
	ld hl,l9a82
	dec (hl)
	ld hl,l9a81
	ld a,(hl)
	and a
	jr z,l98f8
	ld hl,l9a88
	dec (hl)
	jr nz,l991b
	ld (hl),a
.l98f8
	ld a,(l9a7c)
	and a
	jr z,l991b
	jp p,l990e
	ld hl,(l950e)
	ld de,(l9a78)
	add hl,de
	ld (l950e),hl
	jr l991b
.l990e
	ld hl,(l950e)
	ld de,(l9a78)
	and a
	sbc hl,de
	ld (l950e),hl
.l991b
	ld a,(l9a7a)
	bit 3,a
	jr nz,l9928
	ld a,(l950e)
	ld (l9514),a
.l9928
	ld a,(l9a83)
	dec a
	ld (l9a83),a
	jr nz,l994f
	ld a,(l9a7f)
	ld (l9a83),a
	ld hl,(l9a86)
	ld a,(hl)
	inc hl
	and a
	jp p,l9949
	cp #80
	jr nz,l994f
	ld hl,(l9a84)
	ld a,(hl)
	inc hl
.l9949
	ld (l9a86),hl
	ld (l9516),a
.l994f
	ret
.l9950
	dw l9960,l996e,l997c,l998a
	dw l9998,l99a6,l99b4,l99c2
.l9960
	db #06,#63,#09,#05,#11,#00,#f6,#00
.l996e equ $ + 6
	db #ff,#00,#00,#01,#00,#00,#3c,#14
	db #00,#07,#04,#00,#fe,#00,#ff,#63
.l997c equ $ + 4
	db #01,#02,#00,#00,#21,#11,#28,#00
	db #01,#00,#fe,#00,#ff,#63,#03,#02
.l998a equ $ + 2
	db #00,#00,#0a,#09,#10,#00,#01,#00
	db #f7,#ff,#01,#63,#07,#01,#00,#00
.l9998
	db #0f,#63,#00,#00,#01,#00,#f7,#00
.l99a6 equ $ + 6
	db #ff,#63,#02,#01,#00,#00,#11,#05
	db #c7,#00,#20,#00,#f6,#00,#ff,#63
.l99b4 equ $ + 4
	db #00,#01,#00,#00,#32,#0a,#0a,#00
	db #03,#00,#f6,#01,#ff,#0a,#00,#04
.l99c2 equ $ + 2
	db #00,#00,#0f,#63,#f0,#00,#21,#00
	db #fe,#00,#ff,#63,#00,#01,#00,#00
.l99d0
	dw l99e2,l99f2,l9a0f,l9a2d
	dw l9a3c,l9a4d,l9a60,l9a62
	dw l9a66
.l99e2
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l99f2
	db #08,#09,#0a,#0b,#0c,#0d,#0e,#0e
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0b,#0b
.l9a0f equ $ + 5
	db #0b,#0a,#0a,#09,#ff,#08,#0a,#0c
	db #0d,#0f,#0e,#0d,#0d,#0d,#0c,#0c
	db #0b,#0b,#01,#0a,#01,#09,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
.l9a2d equ $ + 3
	db #06,#06,#ff,#0b,#0d,#0c,#0b,#0a
	db #09,#08,#08,#07,#07,#06,#06,#05
.l9a3c equ $ + 2
	db #05,#ff,#0d,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#08,#07,#07,#06,#06
.l9a4d equ $ + 3
	db #05,#05,#ff,#0a,#0b,#0c,#0d,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l9a60 equ $ + 6
	db #05,#04,#03,#02,#01,#ff,#0e,#80
.l9a66 equ $ + 4
.l9a62
	db #05,#0d,#01,#80,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l9a78 equ $ + 6
.l9a77 equ $ + 5
.l9a76 equ $ + 4
.l9a75 equ $ + 3
.l9a74 equ $ + 2
	db #01,#ff,#00,#00,#00,#00,#00,#00
.l9a81 equ $ + 7
.l9a80 equ $ + 6
.l9a7f equ $ + 5
.l9a7e equ $ + 4
.l9a7d equ $ + 3
.l9a7c equ $ + 2
.l9a7b equ $ + 1
.l9a7a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a89 equ $ + 7
.l9a88 equ $ + 6
.l9a86 equ $ + 4
.l9a84 equ $ + 2
.l9a83 equ $ + 1
.l9a82
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a91 equ $ + 7
.l9a90 equ $ + 6
.l9a8f equ $ + 5
.l9a8d equ $ + 3
.l9a8c equ $ + 2
.l9a8b equ $ + 1
.l9a8a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a99 equ $ + 7
.l9a98 equ $ + 6
.l9a97 equ $ + 5
.l9a96 equ $ + 4
.l9a95 equ $ + 3
.l9a94 equ $ + 2
.l9a93 equ $ + 1
.l9a92
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a9d equ $ + 3
.l9a9b equ $ + 1
	db #00,#00,#00,#00
.l9a9e
	ld a,(l9ab9)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l9abc
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l9abc equ $ + 3
.l9aba equ $ + 1
.l9ab9
	db #ff,#80,#1b,#34
.l9abd
	db #18
	dw l9aeb,l9ae7,l9aef
	db #30
	dw l9aeb,l9ae7,l9aef
	db #2a
	dw l9d1e,l9cba,l9d2c
	db #2a
	dw l9f2c,l9f16,l9f3a
	db #2a
	dw la262,la24c,la26c
	db #2c
	dw la622,la614,la630
.l9aeb equ $ + 4
.l9ae7
	dw #9af9,#0000,#9b71,#0000
.l9aef
	dw #9c07,#a8db,#9c07,#a8d8
	dw #0000
	db #8a,#88,#01,#01,#d8,#e0,#11,#0e
	db #e1,#16,#1a,#1a,#16,#1a,#1a,#16
	db #1a,#18,#e5,#11,#e1,#16,#1a,#1a
	db #1d,#1d,#1b,#1a,#22,#1d,#1a,#16
	db #8f,#16,#1a,#1a,#16,#1a,#1a,#16
	db #1a,#18,#e5,#11,#e1,#16,#1a,#1a
	db #1d,#1d,#1b,#16,#22,#1d,#1a,#16
	db #8f,#d9,#e3,#22,#e1,#22,#e5,#1f
	db #e3,#24,#e1,#24,#e5,#1d,#e3,#22
	db #e1,#22,#e3,#1d,#e1,#1d,#e3,#16
	db #e1,#18,#e5,#11,#e1,#16,#1a,#16
	db #e3,#1b,#e1,#1b,#d8,#e2,#18,#e0
	db #1a,#1b,#1a,#e3,#1d,#e0,#1d,#1b
	db #d9,#e3,#1a,#e1,#16,#e3,#16,#e1
	db #1a,#e3,#1d,#e1,#1d,#e3,#16,#87
	db #8a,#da,#81,#e0,#29,#26,#88,#01
	db #01,#e1,#80,#1d,#1d,#8f,#1d,#1d
	db #8f,#1d,#1f,#e5,#1d,#e1,#8f,#1d
	db #1d,#8f,#8f,#8f,#81,#1a,#22,#1d
	db #1a,#16,#8f,#82,#80,#1d,#1d,#8f
	db #1d,#1d,#8f,#1d,#1f,#e5,#db,#1d
	db #d5,#e1,#8f,#1d,#1d,#8f,#8f,#8f
	db #81,#16,#22,#1d,#1a,#16,#d5,#82
	db #e0,#2e,#2e,#e1,#2e,#30,#32,#e3
	db #2e,#81,#e0,#33,#32,#82,#e3,#2b
	db #e1,#2b,#db,#e5,#2d,#d5,#e2,#29
	db #81,#e0,#30,#e1,#2e,#e2,#2d,#e0
	db #2b,#e1,#2d,#82,#26,#81,#26,#82
	db #22,#e3,#21,#e1,#81,#29,#82,#e1
	db #26,#29,#26,#e3,#27,#e1,#27,#da
	db #e2,#27,#e0,#29,#2b,#24,#e1,#26
	db #24,#e0,#81,#29,#29,#d9,#82,#e3
	db #22,#e1,#22,#e3,#22,#e1,#22,#e3
	db #22,#e1,#21,#e3,#22,#87,#8a,#d4
	db #88,#01,#01,#e0,#29,#26,#e2,#22
	db #e0,#26,#e1,#29,#e3,#2e,#e0,#32
	db #30,#e1,#2e,#26,#28,#e3,#29,#e0
	db #29,#29,#e2,#32,#e0,#30,#e1,#2e
	db #e2,#2d,#e0,#2b,#e1,#2d,#2e,#2e
	db #29,#26,#22,#e0,#22,#22,#e2,#22
	db #e0,#26,#e1,#29,#e3,#2e,#e0,#32
	db #30,#e1,#2e,#26,#28,#e3,#29,#e0
	db #29,#29,#e2,#32,#e0,#30,#e1,#2e
	db #e2,#2d,#e0,#2b,#e1,#2d,#2e,#2e
	db #29,#26,#22,#e0,#32,#32,#e1,#32
	db #33,#35,#d8,#e3,#35,#d4,#e0,#33
	db #32,#e1,#30,#32,#33,#d8,#e3,#33
	db #d4,#e1,#33,#e2,#32,#e0,#30,#e1
	db #2e,#e2,#2d,#e0,#2b,#e1,#2d,#e1
	db #2e,#26,#28,#e3,#29,#e1,#29,#94
	db #17,#2e,#2e,#2e,#2b,#2b,#2b,#94
	db #16,#30,#e0,#33,#32,#30,#2e,#e1
	db #2e,#2d,#e0,#29,#29,#94,#15,#e1
	db #2e,#e0,#2e,#30,#32,#33,#e1,#35
	db #32,#2e,#94,#14,#e2,#32,#94,#12
	db #e0,#33,#e1,#30,#e3,#2e,#94,#18
	db #87
.l9cba
	dw #9d4a,#9d51,#9d51,#9d51
	dw #9d6e,#9d51,#9d51,#9d8b
	dw #9d51,#9d51,#9d51,#9d51
	dw #9d6e,#9d51,#9d51,#9d8b
	dw #9d51,#9d51,#9d51,#9d51
	dw #9d6e,#9d51,#9d51,#9d8b
	dw #9d51,#9d51,#9d51,#9d51
	dw #9d6e,#9d51,#9d51,#9d8b
	dw #9d51,#9d51,#9d51,#9d51
	dw #9d6e,#9d51,#9d51,#9d8b
	dw #9d51,#9d51,#9d51,#9d51
	dw #9d6e,#9d51,#9d51,#9d8b
.l9d1e equ $ + 4
	dw #9da8,#0000,#9db1,#9e4a
	dw #9db1,#9e4a,#9db1,#9e54
.l9d2c equ $ + 2
	dw #0000,#9e61,#9f00,#9e61
	dw #9f00,#9e61,#9f0b,#a8db
	dw #9e61,#9f00,#9e61,#9f00
	dw #9e61,#9f0b,#a8d8,#0000
	db #8a,#88,#01,#01,#e1,#80,#87,#d8
	db #16,#8b,#d1,#8d,#27,#8a,#d8,#11
	db #8b,#d1,#8d,#27,#8a,#d8,#16,#8b
	db #d1,#8d,#27,#8a,#d8,#11,#8b,#d1
	db #8d,#27,#8a,#87,#d8,#18,#8b,#d1
	db #8d,#27,#8a,#d8,#11,#8b,#d1,#8d
	db #27,#8a,#d8,#18,#8b,#d1,#8d,#27
	db #8a,#d8,#11,#8b,#d1,#8d,#27,#8a
	db #87,#d8,#18,#8b,#d1,#8d,#27,#8a
	db #d8,#15,#8b,#d1,#8d,#27,#8a,#d8
	db #18,#8b,#d1,#8d,#27,#8a,#d8,#15
	db #8b,#d1,#8d,#27,#8a,#87,#d9,#e3
	db #16,#11,#1a,#18,#f5,#16,#87,#8a
	db #d0,#e1,#80,#80,#c2,#2e,#80,#2e
	db #c6,#27,#c2,#2e,#8f,#c3,#29,#80
	db #c2,#2e,#80,#2e,#80,#2e,#80,#2e
	db #80,#2e,#80,#2e,#80,#2e,#80,#2e
	db #80,#c3,#29,#80,#29,#80,#29,#80
	db #29,#80,#c2,#2e,#80,#2e,#c6,#27
	db #c2,#2e,#8f,#c3,#29,#80,#c2,#2e
	db #80,#2e,#80,#2e,#80,#2e,#80,#c3
	db #29,#80,#29,#80,#29,#80,#29,#80
	db #c2,#2e,#80,#c3,#29,#e5,#c2,#2e
	db #e1,#80,#80,#c2,#2e,#80,#2e,#c6
	db #27,#c2,#2e,#8f,#c3,#29,#80,#c2
	db #2e,#80,#2e,#80,#2e,#80,#2e,#80
	db #2e,#80,#2e,#80,#2e,#80,#2e,#80
	db #c3,#29,#80,#29,#80,#c3,#29,#80
	db #29,#80,#c2,#2e,#80,#2e,#c6,#27
	db #c2,#2e,#8f,#c3,#29,#80,#c2,#2e
	db #80,#2e,#80,#2e,#80,#2e,#80,#c3
	db #29,#80,#29,#80,#29,#80,#29,#87
	db #80,#c2,#2e,#80,#c3,#29,#e5,#c2
	db #2e,#87,#e7,#c2,#2e,#c3,#29,#c6
	db #22,#c7,#27,#e5,#c6,#22,#87,#8a
	db #dc,#88,#01,#01,#e0,#29,#27,#e1
	db #26,#29,#29,#29,#2b,#29,#8f,#27
	db #26,#29,#e2,#2e,#e0,#30,#e5,#32
	db #d3,#e1,#32,#32,#29,#29,#32,#dc
	db #32,#e3,#30,#e1,#2e,#e2,#2d,#e0
	db #2e,#e2,#30,#e0,#32,#e5,#30,#e1
	db #29,#26,#29,#29,#29,#2b,#29,#8f
	db #27,#26,#29,#e2,#2e,#e0,#30,#e5
	db #32,#e1,#29,#29,#33,#33,#33,#33
	db #32,#e2,#30,#e0,#2e,#e2,#2e,#e0
	db #29,#e2,#32,#e0,#30,#e5,#2e,#e0
	db #2b,#29,#e1,#26,#29,#29,#29,#2b
	db #29,#8f,#27,#26,#29,#e2,#2e,#e0
	db #30,#e5,#32,#e1,#29,#29,#32,#32
	db #32,#32,#30,#8f,#2e,#2d,#2e,#30
	db #32,#e5,#30,#e0,#29,#27,#e1,#26
	db #29,#29,#29,#2b,#29,#29,#27,#26
	db #29,#e2,#2e,#e0,#30,#e5,#32,#e0
	db #29,#29,#e1,#29,#33,#33,#33,#33
	db #32,#e2,#30,#e0,#2e,#87,#e2,#2e
	db #e0,#29,#e2,#32,#e0,#30,#e5,#2e
	db #87,#e3,#2e,#29,#e5,#32,#e1,#30
	db #d9,#f5,#2e,#87
.l9f16
	dw la0d2,la0d2,la110,la110
	dw la0d2,la0d2,la110,la110
.l9f2c equ $ + 6
	dw l9f66,l9f66,#0000,la149
	dw la149,la07d,la04c,la081
.l9f3a equ $ + 4
	dw la04c,#0000,la1cf,la1d6
	dw la07a,la0a9,la081,la0a9
	dw la8db,la1cf,la1d6,la07a
	dw la0a9,la081,la0a9,la8de
	dw la1cf,la1d6,la07a,la0a9
	dw la081,la0a9,la8d8,#0000
.l9f66
	db #8a,#88,#01,#01,#e1,#d8,#13,#8b
	db #d1,#8d,#27,#8a,#d8,#0e,#8b,#d1
	db #8d,#27,#8a,#d8,#13,#8b,#d1,#8d
	db #27,#8a,#d8,#0e,#8b,#d1,#8d,#27
	db #8a,#d8,#13,#8b,#d1,#8d,#27,#8a
	db #d8,#19,#8b,#d1,#8d,#27,#8a,#d8
	db #1a,#8b,#d1,#8d,#27,#8a,#d8,#0e
	db #8b,#d1,#8d,#27,#8a,#d8,#13,#8b
	db #d1,#8d,#27,#8a,#d8,#0e,#8b,#d1
	db #8d,#27,#8a,#d8,#13,#8b,#d1,#8d
	db #27,#8a,#d8,#0e,#8b,#d1,#8d,#27
	db #8a,#d8,#15,#8b,#d1,#8d,#27,#8a
	db #d8,#1a,#8b,#d1,#8d,#27,#8a,#d8
	db #13,#8b,#d1,#8d,#27,#8a,#d8,#0e
	db #8b,#d1,#8d,#27,#8a,#d8,#0c,#8b
	db #d1,#8d,#27,#8a,#d8,#10,#8b,#d1
	db #8d,#27,#8a,#d8,#13,#8b,#d1,#8d
	db #27,#8a,#d8,#10,#8b,#d1,#8d,#27
	db #8a,#d8,#17,#8b,#d1,#8d,#27,#8a
	db #d8,#19,#8b,#d1,#8d,#27,#8a,#d8
	db #1a,#8b,#d1,#8d,#27,#8a,#d8,#0e
	db #8b,#d1,#8d,#27,#8a,#d8,#13,#8b
	db #d1,#8d,#27,#8a,#d8,#0e,#8b,#d1
	db #8d,#27,#8a,#d8,#13,#8b,#d1,#8d
	db #27,#8a,#d8,#0e,#8b,#d1,#8d,#27
	db #8a,#d8,#15,#8b,#d1,#8d,#27,#8a
	db #d8,#1a,#8b,#d1,#8d,#27,#8a,#d8
	db #13,#8b,#d1,#8d,#27,#8a,#d8,#1a
.la04c equ $ + 6
	db #8b,#d1,#8d,#27,#8a,#87,#88,#01
	db #01,#dd,#e3,#2b,#2b,#e1,#2b,#e3
	db #2b,#e1,#2b,#2b,#2b,#81,#2f,#2b
	db #82,#e5,#2a,#81,#e0,#2b,#2d,#e1
	db #2f,#32,#32,#34,#32,#2f,#e2,#2b
	db #e0,#2d,#e1,#2f,#2f,#2d,#2d,#e7
.la07d equ $ + 7
.la07a equ $ + 4
	db #2b,#92,#00,#87,#88,#01,#02,#8a
.la081 equ $ + 3
	db #de,#92,#f4,#e1,#2f,#32,#32,#34
	db #32,#2f,#e2,#2b,#e0,#2d,#e1,#2f
	db #2f,#2d,#2b,#e5,#2d,#e0,#2b,#2d
	db #e1,#2f,#32,#32,#34,#32,#2f,#e2
	db #2b,#e0,#2d,#e1,#2f,#2f,#2d,#2d
.la0a9 equ $ + 3
	db #e7,#2b,#87,#dd,#e3,#30,#30,#e1
	db #34,#e3,#34,#e1,#34,#32,#32,#2f
	db #2b,#e5,#2d,#e0,#2b,#2d,#de,#e1
	db #2f,#32,#32,#34,#32,#2f,#e2,#2b
	db #e0,#2d,#e1,#2f,#2f,#2d,#2d,#e7
.la0d2 equ $ + 4
	db #2b,#92,#00,#87,#8a,#88,#01,#01
	db #e1,#d8,#18,#8b,#d1,#8d,#27,#8a
	db #d8,#13,#8b,#d1,#8d,#27,#8a,#d8
	db #18,#8b,#d1,#8d,#27,#8a,#d8,#13
	db #8b,#d1,#8d,#27,#8a,#d8,#18,#8b
	db #d1,#8d,#27,#8a,#d8,#15,#8b,#d1
	db #8d,#27,#8a,#d8,#10,#8b,#d1,#8d
	db #27,#8a,#d8,#0c,#8b,#d1,#8d,#27
.la110 equ $ + 2
	db #8a,#87,#d8,#0c,#8b,#d1,#8d,#27
	db #8a,#d8,#13,#8b,#d1,#8d,#27,#8a
	db #d8,#0c,#8b,#d1,#8d,#27,#8a,#d8
	db #13,#8b,#d1,#8d,#27,#8a,#d8,#0c
	db #8b,#d1,#8d,#27,#8a,#d8,#13,#8b
	db #d1,#8d,#27,#8a,#d8,#17,#8b,#d1
	db #8d,#27,#8a,#d8,#18,#8b,#d1,#8d
.la149 equ $ + 3
	db #27,#8a,#87,#8a,#de,#88,#01,#01
	db #e0,#28,#e1,#28,#e0,#29,#28,#e2
	db #28,#e0,#28,#e1,#28,#e0,#29,#e3
	db #28,#e0,#2b,#2b,#29,#29,#28,#28
	db #28,#28,#23,#e1,#23,#e4,#1f,#e0
	db #28,#e1,#29,#e2,#28,#e1,#81,#2d
	db #82,#e1,#28,#e0,#29,#e4,#28,#e0
	db #2b,#2b,#29,#29,#28,#28,#28,#28
	db #23,#e1,#23,#e4,#1f,#e0,#81,#24
	db #24,#82,#28,#28,#27,#27,#e1,#27
	db #81,#24,#82,#28,#e3,#28,#81,#e0
	db #24,#24,#82,#28,#28,#27,#27,#e1
	db #27,#e0,#23,#e1,#23,#e4,#1f,#e0
	db #81,#24,#24,#82,#28,#28,#27,#27
	db #e1,#27,#81,#24,#82,#28,#e3,#28
	db #e0,#2b,#2b,#82,#29,#29,#28,#28
	db #e1,#28,#e0,#23,#e1,#23,#e4,#1f
.la1cf equ $ + 1
	db #87,#8a,#dd,#88,#01,#01,#92,#00
.la1d6
	db #e0,#30,#e1,#30,#e0,#2d,#2b,#e2
	db #2b,#e0,#30,#e1,#30,#e0,#2d,#e3
	db #2b,#e0,#30,#30,#2d,#2d,#2b,#2b
	db #2d,#2d,#28,#e1,#26,#e4,#24,#e0
	db #30,#e1,#2d,#e2,#2b,#e1,#2d,#e1
	db #30,#e0,#2d,#e4,#2b,#e0,#30,#30
	db #2d,#2d,#2b,#2b,#2d,#2d,#28,#e1
	db #26,#e4,#24,#e0,#24,#24,#2d,#2d
	db #2b,#2b,#e1,#2d,#24,#2d,#2b,#2d
	db #e0,#24,#24,#2d,#2d,#2b,#2b,#e1
	db #2d,#e0,#28,#e1,#26,#e4,#24,#e0
	db #24,#24,#2d,#2d,#2b,#2b,#e1,#2d
	db #24,#2d,#2b,#2d,#e0,#30,#30,#2d
	db #2d,#2b,#2b,#e1,#2d,#e0,#28,#e1
	db #26,#e4,#24,#92,#0c,#87
.la24c
	dw la28c,la36b,la301,la373
	dw la28c,la36b,la301,la373
.la262 equ $ + 6
	dw la47a,la47a,#0000,la37b
	dw la37b,la560,la560,#0000
.la26c
	dw la3f0,la3f7,la5c3,la5c9
	dw la8d5,la3f0,la3f7,la5c3
	dw la5c9,la8db,la3f0,la3f7
	dw la5c3,la5c9,la8d8,#0000
.la28c
	db #8a,#88,#01,#01,#e1,#d8,#17,#8b
	db #d1,#8d,#27,#8a,#d8,#13,#8b,#d1
	db #8d,#27,#8a,#d8,#17,#8b,#d1,#8d
	db #27,#8a,#d8,#13,#8b,#d1,#8d,#27
	db #8a,#d8,#17,#8b,#d1,#8d,#27,#8a
	db #d8,#16,#8b,#d1,#8d,#27,#8a,#d8
	db #15,#8b,#d1,#8d,#27,#8a,#d8,#0e
	db #8b,#d1,#8d,#27,#8a,#d8,#15,#8b
	db #d1,#8d,#27,#8a,#d8,#0e,#8b,#d1
	db #8d,#27,#8a,#d8,#15,#8b,#d1,#8d
	db #27,#8a,#d8,#0e,#8b,#d1,#8d,#27
	db #8a,#d8,#15,#8b,#d1,#8d,#27,#8a
	db #d8,#17,#8b,#d1,#8d,#27,#8a,#d8
	db #13,#8b,#d1,#8d,#27,#8a,#d8,#1f
.la301 equ $ + 5
	db #8b,#d1,#8d,#27,#8a,#d8,#13,#8b
	db #d1,#8d,#27,#8a,#d8,#0e,#8b,#d1
	db #8d,#27,#8a,#d8,#13,#8b,#d1,#8d
	db #27,#8a,#d8,#16,#8b,#d1,#8d,#27
	db #8a,#d8,#15,#8b,#d1,#8d,#27,#8a
	db #d8,#10,#8b,#d1,#8d,#27,#8a,#d8
	db #15,#8b,#d1,#8d,#27,#8a,#d8,#13
	db #8b,#d1,#8d,#27,#8a,#d8,#12,#8b
	db #d1,#8d,#27,#8a,#d8,#0e,#8b,#d1
	db #8d,#27,#8a,#d8,#12,#8b,#d1,#8d
	db #27,#8a,#d8,#15,#8b,#d1,#8d,#27
	db #8a,#d8,#13,#8b,#d1,#8d,#27,#8a
	db #d8,#0e,#8b,#d1,#8d,#27,#8a,#d8
.la36b equ $ + 7
	db #13,#8b,#d1,#8d,#27,#8a,#87,#d8
.la373 equ $ + 7
	db #1a,#8b,#d1,#8d,#27,#8a,#87,#d8
.la37b equ $ + 7
	db #07,#8b,#d1,#8d,#27,#8a,#87,#8a
	db #de,#88,#01,#01,#92,#00,#c0,#e1
	db #26,#28,#e3,#26,#e1,#26,#28,#e3
	db #26,#e1,#26,#28,#e3,#26,#e1,#26
	db #2a,#e3,#2a,#e1,#24,#24,#e3,#24
	db #e1,#24,#24,#e3,#24,#e1,#24,#28
	db #26,#2a,#e7,#26,#e5,#23,#e1,#26
	db #26,#24,#e0,#23,#e2,#23,#e5,#24
	db #e1,#28,#28,#26,#e0,#24,#e2,#23
	db #e1,#24,#24,#24,#28,#2a,#2a,#2a
	db #26,#e3,#26,#26,#e7,#2b,#e5,#1f
	db #e1,#23,#26,#24,#e0,#23,#e2,#23
	db #e5,#21,#e1,#24,#28,#26,#e0,#24
	db #e2,#24,#e1,#26,#26,#26,#28,#24
	db #24,#2a,#2a,#e3,#2b,#e1,#2a,#26
.la3f0 equ $ + 4
	db #e3,#23,#2f,#87,#8a,#dd,#88,#01
.la3f7 equ $ + 3
	db #01,#92,#00,#e1,#2f,#2f,#e0,#2f
	db #2d,#2b,#2d,#e1,#2f,#2f,#2f,#e0
	db #2b,#2d,#e1,#2f,#2f,#e0,#2f,#2d
	db #2f,#30,#e1,#2f,#2d,#2d,#e0,#2a
	db #2b,#e1,#2d,#2d,#2d,#e0,#2a,#2b
	db #e1,#2d,#2d,#2d,#e0,#2a,#2b,#e1
	db #2d,#30,#2f,#2d,#e7,#2b,#e5,#26
	db #e1,#2b,#2f,#2d,#e0,#2b,#e2,#26
	db #e5,#28,#e1,#2d,#30,#2f,#e0,#2d
	db #e2,#2b,#e1,#2a,#2a,#2a,#2b,#2d
	db #2d,#2d,#2a,#e2,#2b,#e0,#2a,#e1
	db #2b,#2d,#e7,#2f,#e5,#26,#e1,#2b
	db #2f,#2d,#e0,#2b,#e2,#26,#e5,#28
	db #e1,#2d,#30,#2f,#e0,#2d,#e2,#2b
	db #e1,#2a,#2a,#2a,#2b,#2d,#2d,#30
	db #30,#e2,#2f,#e0,#30,#e1,#2f,#2d
.la47a equ $ + 6
	db #e3,#2b,#1f,#92,#0c,#87,#8a,#88
	db #01,#01,#e1,#d8,#18,#8b,#d1,#8d
	db #27,#8a,#d8,#13,#8b,#d1,#8d,#27
	db #8a,#d8,#18,#8b,#d1,#8d,#27,#8a
	db #d8,#13,#8b,#d1,#8d,#27,#8a,#d8
	db #18,#8b,#d1,#8d,#27,#8a,#d8,#13
	db #8b,#d1,#8d,#27,#8a,#d8,#15,#8b
	db #d1,#8d,#27,#8a,#d8,#17,#8b,#d1
	db #8d,#27,#8a,#d8,#18,#8b,#d1,#8d
	db #27,#8a,#d8,#13,#8b,#d1,#8d,#27
	db #8a,#d8,#18,#8b,#d1,#8d,#27,#8a
	db #d8,#13,#8b,#d1,#8d,#27,#8a,#d8
	db #18,#8b,#d1,#8d,#27,#8a,#d8,#13
	db #8b,#d1,#8d,#27,#8a,#d8,#18,#8b
	db #d1,#8d,#27,#8a,#d8,#13,#8b,#d1
	db #8d,#27,#8a,#d8,#18,#8b,#d1,#8d
	db #27,#8a,#d8,#13,#8b,#d1,#8d,#27
	db #8a,#d8,#15,#8b,#d1,#8d,#27,#8a
	db #d8,#17,#8b,#d1,#8d,#27,#8a,#d8
	db #0c,#8b,#d1,#8d,#27,#8a,#d8,#10
	db #8b,#d1,#8d,#27,#8a,#d8,#10,#8b
	db #d1,#8d,#27,#8a,#d8,#0e,#8b,#d1
	db #8d,#27,#8a,#d8,#18,#8b,#d1,#8d
	db #27,#8a,#d8,#13,#8b,#d1,#8d,#27
	db #8a,#d8,#15,#8b,#d1,#8d,#27,#8a
	db #d8,#17,#8b,#d1,#8d,#27,#8a,#d8
	db #10,#8b,#d1,#8d,#27,#8a,#d8,#13
	db #8b,#d1,#8d,#27,#8a,#d8,#18,#8b
	db #d1,#8d,#27,#8a,#d8,#0c,#8b,#d1
.la560 equ $ + 4
	db #8d,#27,#8a,#87,#8a,#d0,#e1,#c6
	db #80,#24,#80,#24,#c2,#80,#30,#80
	db #30,#c6,#29,#c2,#30,#c6,#80,#24
	db #c2,#80,#30,#80,#30,#c6,#80,#24
	db #80,#24,#c2,#80,#30,#80,#30,#c6
	db #80,#24,#80,#c3,#2b,#c8,#80,#24
	db #80,#24,#80,#c8,#e3,#30,#e1,#c2
	db #30,#e3,#c6,#29,#c2,#30,#e1,#c6
	db #29,#e3,#c2,#30,#e1,#cb,#30,#c2
	db #80,#30,#80,#30,#e1,#80,#c8,#e3
	db #30,#e1,#c2,#30,#e3,#c6,#29,#c2
	db #30,#e1,#c6,#24,#e3,#24,#c9,#e1
.la5c3 equ $ + 7
	db #26,#80,#c8,#24,#80,#24,#87,#8a
.la5c9 equ $ + 5
	db #88,#01,#01,#92,#00,#dd,#e1,#28
	db #e0,#28,#28,#e1,#26,#24,#28,#2b
	db #e3,#2b,#e1,#2d,#e3,#2b,#e1,#28
	db #e7,#2b,#e1,#28,#e0,#28,#28,#e1
	db #26,#24,#28,#2b,#e3,#2b,#e1,#28
	db #e3,#28,#e1,#26,#e9,#24,#db,#e3
	db #30,#e1,#2b,#e3,#2d,#2b,#e1,#2d
	db #e3,#2b,#e1,#28,#e9,#2b,#e3,#30
	db #e1,#2b,#e3,#2d,#2b,#e1,#28,#e3
	db #28,#e1,#26,#e7,#24,#92,#0c,#87
.la614
	dw la74f,la74f,la650,la650
.la622 equ $ + 6
	dw la650,la650,#0000,la830
	dw la830,la6c6,la6c6,la6c6
	dw la6c6,#0000
.la630
	dw la882,la889,la6ef,la6f6
	dw la8db,la882,la889,la6ef
	dw la6f6,la8de,la882,la889
	dw la6ef,la6f6,la8d8,#0000
.la650
	db #8a,#88,#01,#01,#e1,#d8,#11,#8b
	db #d1,#8d,#27,#8a,#d8,#0c,#8b,#d1
	db #8d,#27,#8a,#d8,#11,#8b,#d1,#8d
	db #27,#8a,#d8,#18,#8b,#d1,#8d,#27
	db #8a,#d8,#13,#8b,#d1,#8d,#27,#8a
	db #d8,#0c,#8b,#d1,#8d,#27,#8a,#d8
	db #13,#8b,#d1,#8d,#27,#8a,#d8,#18
	db #8b,#d1,#8d,#27,#8a,#d8,#11,#8b
	db #d1,#8d,#27,#8a,#d8,#0c,#8b,#d1
	db #8d,#27,#8a,#d8,#11,#8b,#d1,#8d
	db #27,#8a,#d8,#18,#8b,#d1,#8d,#27
	db #8a,#d8,#0c,#8b,#d1,#8d,#27,#8a
	db #d8,#13,#8b,#d1,#8d,#27,#8a,#d8
	db #11,#8b,#d1,#8d,#27,#8a,#d8,#1d
.la6c6 equ $ + 6
	db #8b,#d1,#8d,#27,#8a,#87,#8a,#d0
	db #e1,#c6,#80,#29,#80,#29,#80,#29
	db #80,#29,#c3,#80,#30,#80,#30,#80
	db #30,#80,#30,#c6,#80,#29,#80,#29
	db #80,#29,#80,#29,#c3,#80,#30,#80
.la6ef equ $ + 7
	db #30,#c6,#80,#29,#80,#29,#87,#8a
.la6f6 equ $ + 6
	db #88,#01,#01,#dd,#92,#f4,#e1,#2d
	db #2d,#29,#29,#e0,#2d,#2d,#e1,#2d
	db #e3,#30,#e1,#2b,#2b,#28,#28,#e0
	db #2b,#2b,#e1,#2b,#e3,#2e,#e1,#2d
	db #2d,#29,#29,#e0,#2d,#2d,#e1,#2d
	db #e3,#30,#e1,#2b,#e0,#2d,#2e,#e1
	db #2d,#2b,#e3,#29,#29,#2d,#29,#e1
	db #2d,#e0,#2d,#2d,#e3,#30,#2b,#28
	db #e1,#2b,#e0,#2b,#2b,#e3,#2e,#2d
	db #29,#e1,#2d,#e0,#2d,#2d,#e3,#30
	db #e1,#2b,#e0,#2d,#2e,#e1,#2d,#2b
.la74f equ $ + 7
	db #e3,#29,#29,#92,#00,#de,#87,#8a
	db #88,#01,#01,#e1,#80,#80,#d8,#13
	db #8b,#d1,#8d,#27,#8a,#d8,#0e,#8b
	db #d1,#8d,#27,#8a,#d8,#13,#8b,#d1
	db #8d,#27,#8a,#d8,#0e,#8b,#d1,#8d
	db #27,#8a,#d8,#1a,#8b,#d1,#8d,#27
	db #8a,#d8,#1b,#8b,#d1,#8d,#27,#8a
	db #d8,#1a,#8b,#d1,#8d,#27,#8a,#d8
	db #17,#8b,#d1,#8d,#27,#8a,#d8,#13
	db #8b,#d1,#8d,#27,#8a,#d8,#0e,#8b
	db #d1,#8d,#27,#8a,#d8,#13,#8b,#d1
	db #8d,#27,#8a,#d8,#0e,#8b,#d1,#8d
	db #27,#8a,#d8,#0e,#8b,#d1,#8d,#27
	db #8a,#d8,#13,#8b,#d1,#8d,#27,#8a
	db #d8,#12,#8b,#d1,#8d,#27,#8a,#d8
	db #0e,#8b,#d1,#8d,#27,#8a,#d8,#13
	db #8b,#d1,#8d,#27,#8a,#d8,#0e,#8b
	db #d1,#8d,#27,#8a,#d8,#13,#8b,#d1
	db #8d,#27,#8a,#d8,#13,#8b,#d1,#8d
	db #27,#8a,#d8,#18,#8b,#d1,#8d,#27
	db #8a,#d8,#18,#8b,#d1,#8d,#27,#8a
	db #d8,#18,#8b,#d1,#8d,#27,#8a,#d8
	db #19,#8b,#d1,#8d,#27,#8a,#d8,#1a
	db #8b,#d1,#8d,#27,#8a,#d8,#0e,#8b
	db #d1,#8d,#27,#8a,#d8,#1a,#8b,#d1
	db #8d,#27,#8a,#d8,#0e,#8b,#d1,#8d
	db #27,#8a,#d8,#13,#8b,#d1,#8d,#27
	db #8a,#d8,#0f,#8b,#d1,#8d,#27,#8a
	db #d8,#13,#8b,#d1,#8d,#27,#8a,#87
.la830
	db #8a,#d0,#e1,#80,#80,#c8,#80,#2b
	db #80,#2b,#80,#2b,#80,#2b,#80,#2b
	db #80,#c1,#30,#c8,#80,#2b,#80,#2b
	db #80,#2b,#80,#2b,#80,#2b,#80,#2b
	db #c8,#80,#32,#80,#32,#c3,#80,#32
	db #80,#32,#c8,#80,#2b,#80,#2b,#c3
	db #80,#2b,#80,#2b,#c6,#80,#24,#80
	db #24,#c5,#80,#24,#80,#24,#c8,#80
	db #2b,#80,#2b,#c3,#80,#32,#80,#32
	db #c8,#80,#2b,#c3,#80,#27,#c8,#80
.la882 equ $ + 2
	db #2b,#87,#8a,#88,#01,#01,#dd,#92
.la889 equ $ + 1
	db #f4,#e1,#26,#28,#2b,#2b,#e2,#2b
	db #e0,#2b,#e1,#28,#26,#23,#26,#eb
	db #2b,#e1,#2b,#2d,#2f,#2f,#e2,#2f
	db #e0,#2f,#e1,#32,#2f,#2d,#2b,#eb
	db #2d,#e1,#32,#32,#2f,#2f,#e2,#2f
	db #e0,#2f,#e1,#2d,#2b,#29,#29,#28
	db #28,#e2,#28,#e0,#28,#e1,#2d,#2b
	db #2a,#28,#26,#26,#e2,#26,#e0,#26
	db #e1,#2f,#2d,#2a,#26,#eb,#2b,#92
.la8d5 equ $ + 5
	db #00,#87,#89,#fe,#87,#89,#ff,#87
.la8de equ $ + 6
.la8db equ $ + 3
.la8d8
	db #89,#00,#87,#89,#01,#87,#89,#02
	db #87
;
.music_info
	db "Buffalo Bill's Wild West Show (1989)(Tynesoft)(David Whittaker)",0
	db "",0

	read "music_end.asm"
