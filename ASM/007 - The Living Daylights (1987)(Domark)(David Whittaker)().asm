; Music of 007 - The Living Daylights (1987)(Domark)(David Whittaker)()
; Ripped by Megachur the 08/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "007THELD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #342f
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"

;
.init_music
.l342f
;
	ex af,af'
	xor a
	ld (l05d8),a
	ld (l05d9),a
	ld (l05da),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l3b4c
	add hl,bc
	ld a,(hl)
	ld (l3503),a
	inc hl
	ld ix,l055e
	ld c,#20
	ld a,#03
.l3454
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
	jr nz,l3454
	ld (l3787),a
	inc a
	ld (l05be),a
	ld (l05d8),a
	ret
	ld (l05bf),a
	ret
	ld (l05c0),a
	ret
;
.play_music
;
	ld hl,l05bf
	ld a,(hl)
	ld (hl),#ff
	cp (hl)
	call nz,l342f
	ld hl,l05c0
	ld a,(hl)
	ld (hl),#ff
	cp (hl)
	call nz,l3919
	ld a,(l05d9)
	or a
	call nz,l396d
	ld a,(l05d8)
	or a
	call nz,l34de
	ld a,(l05da)
	or a
	call nz,l355f
	ld a,(l05d9)
	or a
	call nz,l3592
	ld hl,l05d9
	ld a,(l05d8)
	or (hl)
	inc hl
	or (hl)
	inc hl
	or (hl)
	ret z
	ld hl,l05cf
	ld d,#0b
.l34d4
	ld e,(hl)
	call l35e2
	dec hl
	dec d
	jp p,l34d4
	ret
.l34df equ $ + 1
.l34de
	ld a,#00
	ld (l352c),a
	ld hl,l05be
	dec (hl)
	jr nz,l3504
	ld b,(hl)
	ld ix,l055e
	call l3694
	ld ix,l057e
	call l3694
	ld ix,l059e
	call l3694
	ld hl,l05be
.l3503 equ $ + 1
	ld (hl),#01
.l3504
	ld ix,l055e
	call l373b
	ld (l05c4),hl
	ld (l05cc),a
	ld ix,l057e
	call l373b
	ld (l05c6),hl
	ld (l05cd),a
	ld ix,l059e
	call l373b
	ld (l05c8),hl
	ld (l05ce),a
.l352c equ $ + 1
	ld a,#00
	ld (l05ca),a
	ret
	ld a,(l05da)
	or a
	ret nz
	ld a,#03
	ld (l05c1),a
	xor a
	ld (l05c2),a
	call l35bd
	ld a,#07
	ld (l05c3),a
	ld a,#01
	ld (l05da),a
	ret
	ld a,(l05da)
	or a
	ret z
	xor a
	ld (l05da),a
	ld (l05cd),a
	ld e,a
	ld d,#09
	jp l35e2
.l355f
	ld a,(l05cb)
	or #12
	and #ef
	ld (l05cb),a
	call #2a15
	and #03
	add #04
	ld (l05ca),a
	ld hl,l05c2
	inc (hl)
	ld a,(l05c1)
	cp (hl)
	ret nz
	xor a
;.l357d
	ld (l05c2),a
	ld a,(l05c3)
	add #04
	cp #0f
	jr nz,l358b
	ld a,#07
.l358b
	ld (l05c3),a
	ld (l05cd),a
	ret
.l3592
	ld hl,(l05d0)
	ld (l05c4),hl
	ld hl,(l05d2)
	ld (l05c8),hl
	ld a,(l05d4)
	ld (l05ca),a
	ld a,(l05cb)
	or #2d
	ld hl,l05d5
	and (hl)
	ld (l05cb),a
	ld a,(l05d6)
	ld (l05cc),a
	ld a,(l05d7)
	ld (l05ce),a
	ret
;
.stop_music
.l35bd
;
	xor a
	ld (l05d8),a
	ld (l05da),a
.l35c4
	ld (l05d9),a
.l35c7
	call l35d5
	xor a
	ld (l05cc),a
	ld (l05cd),a
	ld (l05ce),a
	ret
.l35d5
	ld de,#0d00
.l35d8
	call l35e2
	dec d
	jp p,l35d8
	ld de,#073f
.l35e2
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
.jumps_table	; 35fd
;
	db l360d-$ ;#10
	db l360d-$ ;#0f
	db l3682-$ ;#83
	db l360d-$ ;#0d
	db l3656-$ ;#55
	db l360d-$ ;#0b
	db l360d-$ ;#0a
	db l3615-$ ;#11
	db l3673-$ ;#6e
	db l366c-$ ;#66
	db l3642-$ ;#3b
	db l360d-$ ;#05
	db l360d-$ ;#04
	db l3688-$ ;#7e
	db l360d-$ ;#02
	db l368e-$ ;#82
.l360d
	xor a
	ld (l05d8),a
	pop hl
	jp l35c7
.l3615
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
	jr nz,l3637
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l3637
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l36a2
.l3642
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l3831
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l36a2
.l3656
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l36a2
.l366c
	ld a,(de)
	inc de
	ld (l3787),a
	jr l36a2
.l3673
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l36a2
.l3682
	ld (ix+#1d),#40
	jr l36a2
.l3688
	set 1,(ix+#00)
	jr l36a2
.l368e
	res 5,(ix+#00)
	jr l36ce
.l3694
	dec (ix+#10)
	jr nz,l36db
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l36a2
	ld a,(de)
	inc de
	or a
	jp m,l36ec
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l36b4
	ld (l34df),a
.l36b4
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l36ce
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l36db
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l36e8
	inc (ix+#12)
	ret
.l36e8
	dec (ix+#12)
	ret
.l36ec
	cp #b8
	jr c,l3733
	add #20
	jr c,l3718
	add #10
	jr c,l371e
	add #10
	jr nc,l3711
	ld c,a
	ld hl,l38cc
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr l36a2
.l3711
	add #09
	ld (l3503),a
	jr l36a2
.l3718
	inc a
	ld (ix+#11),a
	jr l36a2
.l371e
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
	jp l36a2
.l3733
	ld hl,jumps_table-&80	;l357d
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l373b
	ld c,(ix+#00)
	bit 5,c
	jr z,l3786
	ld a,(ix+#16)
	sub #10
	jr nc,l376e
	bit 6,c
	jr z,l3773
	add (ix+#13)
	jr nc,l3753
	sbc a
.l3753
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l3769
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l3786
.l3769
	ld (ix+#18),a
	jr l3786
.l376e
	ld (ix+#16),a
	jr l3786
.l3773
	cpl
	sub #0f
	add (ix+#13)
	jr c,l377c
	sub a
.l377c
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l3786
	res 5,c
.l3787 equ $ + 1
.l3786
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,l379e
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l379e
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l384c
	ld d,#00
	sub #0c
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l3802
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l37cb
	bit 0,c
	jr nz,l37e9
.l37cb
	bit 5,l
	jr nz,l37db
	sub (ix+#1b)
	jr nc,l37e6
	set 5,(ix+#1d)
	sub a
	jr l37e6
.l37db
	add (ix+#1b)
	cp b
	jr c,l37e6
	res 5,(ix+#1d)
	ld a,b
.l37e6
	ld (ix+#1c),a
.l37e9
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l37f4
	dec d
.l37f4
	add #a0
	jr c,l3800
.l37f8
	sla e
	rl d
	add #18
	jr nc,l37f8
.l3800
	add hl,de
	ex de,hl
.l3802
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l382d
	ld b,(ix+#0e)
	djnz l382a
	ld c,(ix+#0d)
	bit 7,c
	jr z,l3819
	dec b
.l3819
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l382d
.l382a
	ld (ix+#0e),b
.l382d
	cpl
	and #03
.l3831 equ $ + 1
	ld a,#38
	jr nz,l383e
	ld a,(l34df)
	xor #08
	ld (l352c),a
	ld a,#07
.l383e
	ld hl,l05cb
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l384c
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
.l38cc
	db #10,#11,#14,#17,#1b,#1f,#22,#25
	db #28,#2b,#2d,#2f,#31,#33,#35,#39
	db #00,#87,#00,#03,#07,#87,#00,#04
	db #07,#87,#00,#03,#07,#0c,#87,#00
	db #04,#07,#0c,#87,#07,#0c,#0f,#87
	db #07,#0c,#10,#87,#03,#07,#0c,#87
	db #04,#07,#0c,#87,#00,#0c,#87,#00
	db #04,#87,#00,#03,#87,#00,#05,#87
	db #00,#07,#87,#00,#00,#0c,#0c,#87
	db #00,#03,#07,#0a,#87
.l3919
	ld hl,l05d9
	ld (hl),#00
	ld e,a
	ld d,#00
	ld h,d
	add a
	add a
	add a
	ld l,a
	add hl,hl
	add hl,de
	ld de,l39f8
	add hl,de
	ex de,hl
	ld b,#11
	ld hl,l05db
.l3932
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l3932
	ld a,(l05dc)
	ld (l05ec),a
	ld hl,(l05dd)
	ld (l05d0),hl
	ld de,(l05df)
	ld (l05d2),de
	ld a,l
	ld (l05d4),a
	ld a,(l05e2)
	ld (l05d5),a
	ld a,(l05e1)
	ld e,a
	ld d,#0c
	call l35e2
	ld a,(l05eb)
	ld e,a
	ld d,#0d
	call l35e2
	ld hl,l05d9
	inc (hl)
	ret
.l396d
	ld hl,l05db
	ld a,(hl)
	or a
	jp z,l35c4
	dec (hl)
	ld a,(l05ec)
	or a
	jr nz,l39a7
	ld hl,l05e9
	ld a,(hl)
	or a
	ret z
	dec (hl)
	ld a,(l05dc)
	ld (l05ec),a
	ld a,(l05ea)
	or a
	call nz,#2a15
	ld b,a
	ld a,(l05dd)
	add b
	ld (l05d0),a
	ld a,(l05de)
	add b
	and #0f
	ld (l05d1),a
	ld hl,(l05df)
	ld (l05d2),hl
.l39a7
	ld hl,l05ec
	dec (hl)
	ld a,(l05e7)
	or a
	jr z,l39ce
	jp p,l39c1
	ld hl,(l05d0)
	ld de,(l05e3)
	add hl,de
	ld (l05d0),hl
	jr l39ce
.l39c1
	ld hl,(l05d0)
	ld de,(l05e3)
	or a
	sbc hl,de
	ld (l05d0),hl
.l39ce
	ld a,(l05e8)
	or a
	jr z,l39f1
	jp p,l39e4
	ld hl,(l05d2)
	ld de,(l05e5)
	add hl,de
	ld (l05d2),hl
	jr l39f1
.l39e4
	ld hl,(l05d2)
	ld de,(l05e5)
	or a
	sbc hl,de
	ld (l05d2),hl
.l39f1
	ld a,(l05d0)
	ld (l05d4),a
	ret
.l39f8
	db #19,#1f,#05,#00,#05,#00,#04,#d7
	db #01,#00,#01,#00,#01,#01,#63,#00
	db #0e,#14,#11,#01,#02,#06,#01,#0a
	db #fa,#20,#00,#10,#00,#01,#01,#0a
	db #00,#00,#46,#09,#01,#04,#01,#07
	db #2d,#f2,#61,#00,#70,#00,#01,#01
	db #50,#01,#00,#14,#14,#0f,#00,#0f
	db #00,#03,#d7,#01,#00,#01,#00,#01
	db #01,#00,#00,#0e,#28,#1f,#05,#00
	db #05,#00,#06,#d7,#00,#00,#00,#00
	db #ff,#ff,#63,#00,#0e,#46,#09,#01
	db #04,#01,#02,#2d,#d2,#61,#00,#70
	db #00,#01,#01,#50,#01,#00,#78,#ff
	db #04,#00,#03,#00,#2d,#da,#01,#00
	db #01,#00,#ff,#ff,#00,#00,#00,#14
	db #0a,#81,#01,#91,#01,#0a,#fa,#48
	db #00,#4c,#00,#ff,#ff,#ff,#00,#00
	db #46,#0a,#0a,#00,#0e,#00,#16,#d2
	db #04,#00,#04,#00,#ff,#01,#0a,#01
	db #00,#1e,#0a,#09,#00,#0c,#00,#0f
	db #fa,#08,#00,#08,#00,#ff,#ff,#0a
	db #00,#00,#28,#1e,#01,#01,#11,#01
	db #19,#fa,#28,#00,#2c,#00,#ff,#ff
	db #ff,#00,#00,#14,#63,#00,#00,#01
	db #00,#05,#d7,#02,#00,#02,#00,#ff
	db #ff,#15,#00,#00,#14,#07,#81,#00
	db #06,#01,#06,#d2,#14,#00,#11,#00
	db #ff,#ff,#15,#00,#00,#1e,#14,#90
	db #00,#cf,#00,#0c,#fa,#01,#00,#01
	db #00,#ff,#ff,#ff,#00,#00,#28,#1e
	db #b8,#00,#d0,#00,#0c,#fa,#01,#00
	db #01,#00,#ff,#ff,#ff,#00,#00,#28
	db #06,#01,#03,#11,#03,#14,#fa,#c8
	db #00,#cc,#00,#ff,#ff,#ff,#00,#00
	db #03,#63,#1f,#02,#10,#02,#01,#df
	db #00,#00,#00,#00,#01,#01,#00,#00
	db #0e,#14,#07,#aa,#00,#ae,#00,#11
	db #fa,#20,#00,#20,#00,#ff,#ff,#06
	db #00,#00,#14,#07,#c1,#01,#81,#03
	db #11,#fa,#20,#00,#18,#00,#01,#01
	db #3c,#00,#00,#14,#06,#81,#00,#86
	db #00,#28,#d2,#24,#00,#29,#00,#ff
	db #ff,#15,#00,#00
.l3b4c
	db #05
	dw l3b6f,l3b73,l3b85
	db #07
	dw l3c01,l3c05,l3c09
	db #05
	dw l3c4e,l3c52,l3c56
	db #07
	dw l3cad,l3cb1,l3cb5
	db #05
	dw l3cf6,l3cfa,l3cfe
.l3b6f
	dw l3b89,#0000
.l3b73
	dw l3d32,l3baa,l3d35,l3baa
	dw l3d32,l3bcc,l3d35,l3bcc
	dw #0000
.l3b85
	dw l3be5,#0000
.l3b89
	db #8a,#c0,#88,#01,#01,#82,#df,#00
	db #21,#07,#e1,#0c,#0c,#8d,#0c,#0c
	db #0c,#0c,#8d,#0c,#0c,#0c,#0c,#8d
	db #0c,#0c,#0c,#0c,#8d,#0c,#8d,#13
	db #87
.l3baa
	db #8a,#88,#01,#01,#82,#df,#00,#51
	db #05,#ce,#e5,#24,#eb,#26,#e3,#24
	db #26,#e1,#26,#e3,#26,#cb,#e5,#24
	db #eb,#26,#e3,#24,#26,#e1,#26
	db #e3,#26,#87
.l3bcc
	db #ce,#e5,#30,#eb,#32,#e3,#30,#32
	db #e1,#32,#e3,#32,#cb,#e5,#30,#eb
	db #32,#e3,#30,#32,#e1,#32,#e3,#32
	db #87
.l3be5
	db #8a,#88,#01,#01,#82,#dd,#00,#11
	db #09,#c9,#e1,#37,#37,#37,#37,#37
	db #37,#37,#37,#37,#37,#37,#37,#37
	db #37,#37,#37,#87
.l3c01
	dw l3c17,#0000
.l3c05
	dw l3c28,#0000
.l3c09
	dw l3d32,l3c39,l3c39,l3d38
	dw l3c39,l3c39
	dw #0000
.l3c17
	db #8a,#c0,#88,#01,#01,#82,#df,#00
	db #61,#05,#e3,#0c,#0c,#0c,#8d,#0c
	db #87
.l3c28
	db #8a,#88,#01,#02,#82,#dd,#00,#91
	db #04,#e3,#c3,#ff,#84,#02,#70,#3c
	db #87
.l3c39
	db #8a,#88,#01,#02,#82,#de,#00,#f1
	db #05,#e1,#8f,#cb,#33,#ed,#32,#e1
	db #cc,#33,#eb,#32,#87
.l3c4e
	dw l3c5a,#0000
.l3c52
	dw l3c78,#0000
.l3c56
	dw l3c93,#0000
.l3c5a
	db #8a,#c0,#88,#01,#02,#82,#df,#00
	db #21,#05,#e1,#10,#e0,#12,#12,#e1
	db #12,#e3,#12,#e1,#10,#10,#10,#df
	db #00,#91,#03,#ef,#10
	db #8e
.l3c78
	db #8a,#88,#01,#02,#82,#df,#00,#11
	db #05,#c1,#e1,#34,#e0,#34,#34,#e1
	db #34,#e3,#34,#e1,#34,#34,#34,#c4
	db #ef,#34,#87
.l3c93
	db #8a,#88,#01,#02,#82,#df,#00,#11
	db #05,#c0,#e1,#34,#e0,#36,#36,#e1
	db #36,#e3,#36,#e1,#34,#34,#34,#ef
	db #40,#87
.l3cad
	dw l3cb9,#0000
.l3cb1
	dw l3ccd,#0000
.l3cb5
	dw l3ce2,#0000
.l3cb9
	db #8a,#c0,#88,#01,#02,#82,#df,#00
	db #21,#03,#e1,#0f,#e0,#0e,#0f,#e1
.l3ccd equ $ + 4
	db #0f,#ef,#0c,#8e,#8a,#88,#01,#02
	db #82,#df,#00,#11,#05,#c2,#e1,#38
	db #e0,#38,#38,#e1,#38,#c5,#ef,#24
.l3ce2 equ $ + 1
	db #87,#8a,#88,#01,#01,#82,#df,#00
	db #11,#05,#c0,#e1,#3f,#e0,#3e,#3f
	db #e1,#43,#ef,#48,#87
.l3cf6
	dw l3d02,#0000
.l3cfa
	dw l3d12,#0000
.l3cfe
	dw l3d22,#0000
.l3d02
	db #8a,#88,#01,#02,#82,#dd,#00,#91
	db #0f,#c0,#e5,#84,#ec,#0a,#16,#8e
.l3d12
	db #8a,#88,#01,#02,#82,#dd,#00,#91
	db #0f,#c0,#e5,#84,#ec,#0a,#19,#87
.l3d22
	db #8a,#88,#01,#02,#82,#dd,#00,#91
	db #0f,#c0,#e5,#84,#ec,#0a,#1e,#87
.l3d38 equ $ + 6
.l3d35 equ $ + 3
.l3d32
	db #89,#00,#87,#89,#01,#87,#89,#03
	db #87
;-------------	
.l0557
	db #00,#00,#00,#00,#00,#00,#00
.l055e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l057e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l059e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.l05be
	db #00
.l05c6 equ $ + 7
.l05c4 equ $ + 5
.l05c3 equ $ + 4
.l05c2 equ $ + 3
.l05c1 equ $ + 2
.l05c0 equ $ + 1
.l05bf
	db #ff,#ff,#00,#00,#00,#00,#00,#00
.l05ce equ $ + 7
.l05cd equ $ + 6
.l05cc equ $ + 5
.l05cb equ $ + 4
.l05ca equ $ + 3
.l05c8 equ $ + 1
	db #00,#00,#00,#00,#3f,#0f,#0f,#0f
.l05d6 equ $ + 7
.l05d5 equ $ + 6
.l05d4 equ $ + 5
.l05d2 equ $ + 3
.l05d1 equ $ + 2
.l05d0 equ $ + 1
.l05cf
	db #00,#00,#00,#00,#00,#00,#3f,#10
.l05d7
	db #10
.l05df equ $ + 7
.l05de equ $ + 6
.l05dd equ $ + 5
.l05dc equ $ + 4
.l05db equ $ + 3
.l05da equ $ + 2
.l05d9 equ $ + 1
.music_end
.l05d8
	db #00,#00,#00,#00,#00,#00,#00,#00
.l05e7 equ $ + 7
.l05e5 equ $ + 5
.l05e3 equ $ + 3
.l05e2 equ $ + 2
.l05e1 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l05ef equ $ + 7
.l05ee equ $ + 6
.l05ed equ $ + 5
.l05ec equ $ + 4
.l05eb equ $ + 3
.l05ea equ $ + 2
.l05e9 equ $ + 1
.l05e8
	db #00,#00,#00,#00,#00,#00,#00,#00
.l05f0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ca,#0f,#30,#03,#25,#03
;
.music_info
	db "007 - The Living Daylights (1987)(Domark)(David Whittaker)",0
	db "",0

	read "music_end.asm"
