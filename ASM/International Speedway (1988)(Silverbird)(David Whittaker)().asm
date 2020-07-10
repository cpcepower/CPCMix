; Music of International Speedway (1988)(Silverbird)(David Whittaker)()
; Ripped by Megachur the 15/12/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "INTESPEE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #7421
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"
;
.init_music
;
	push af
	call l7682
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l7ca5
	add hl,bc
	ld a,(hl)
	ld (l74f4),a
	ld (l794d),a
	inc hl
	ld ix,l747f
	ld c,#22
	ld a,#03
.l7442
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
	jr nz,l7442
	ld (l77f2),a
	dec a
	ld (l794e),a
	ld (l7948),a
	ret
.l747f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l74a1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l74c3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	call l7a10
	ld a,(l7948)
	and a
	jr z,l753f
.l74ef equ $ + 1
	ld a,#00
	ld (l753b),a
.l74f4 equ $ + 1
	ld a,#01
	ld hl,l794e
	add (hl)
	ld (hl),a
	jr nc,l7513
	ld b,#00
	ld ix,l747f
	call l771f
	ld ix,l74a1
	call l771f
	ld ix,l74c3
	call l771f
.l7513
	ld ix,l747f
	call l77bf
	ld (l7892),hl
	ld (l789a),a
	ld ix,l74a1
	call l77bf
	ld (l7894),hl
	ld (l789b),a
	ld ix,l74c3
	call l77bf
	ld (l7896),hl
	ld (l789c),a
.l753b equ $ + 1
	ld a,#00
	ld (l7898),a
.l753f
	ld a,(l7948)
	and a
	jr nz,l7555
	ld (l789a),a
	ld (l789b),a
	ld (l789c),a
	ld a,#3f
	ld (l7899),a
	jr l757d
.l7555
	ld a,(l7947)
	and #0f
	xor #0f
	jr z,l757d
	ld b,a
	ld a,(l789a)
	sub b
	jr nc,l7566
	xor a
.l7566
	ld (l789a),a
	ld a,(l789b)
	sub b
	jr nc,l7570
	xor a
.l7570
	ld (l789b),a
	ld a,(l789c)
	sub b
	jr nc,l757a
	xor a
.l757a
	ld (l789c),a
.l757e equ $ + 1
.l757d
	ld a,#00
	xor #ff
	ld (l757e),a
	ld a,(l794b)
	and a
	jr z,l75b3
	ld a,(l7899)
	or #09
	and #fe
	ld (l7899),a
	ld a,#0a
	ld (l789a),a
.l759a equ $ + 1
	ld hl,#0000
	ld a,(l7ca1)
	and #3f
	ld e,a
	ld d,#00
	sbc hl,de
	ld a,(l757e)
	or a
	jr z,l75b0
	srl h
	rr l
.l75b0
	ld (l7892),hl
.l75b3
	ld a,(l794c)
	and a
	jr z,l75e2
	ld a,(l7899)
	or #12
	and #fd
	ld (l7899),a
	ld a,#0a
	ld (l789b),a
.l75c9 equ $ + 1
	ld hl,#0000
	ld a,(l7ca2)
	and #3f
	ld e,a
	ld d,#00
	sbc hl,de
	ld a,(l757e)
	or a
	jr nz,l75df
	srl h
	rr l
.l75df
	ld (l7894),hl
.l75e2
	ld a,(l7949)
	and a
	jr z,l760a
	ld hl,(l789f)
	ld (l7892),hl
	ld a,(l7c30)
	ld b,a
	bit 3,a
	jr nz,l75fc
	ld a,(l78a5)
	ld (l7898),a
.l75fc
	ld hl,l7899
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l78a7)
	ld (l789a),a
.l760a
	ld a,(l794a)
	and a
	jr z,l7634
	ld hl,(l78a1)
	ld (l7894),hl
	ld a,(l7c45)
	ld b,a
.l761a
	bit 3,a
	jr nz,l7624
	ld a,(l78a5)
	ld (l7898),a
.l7624
	ld hl,l7899
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(l78a8)
	ld (l789b),a
.l7634
	ld hl,l789c
	ld d,#0a
.l7639
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
	jp p,l7639
	ret
.l765a
	ld de,#0a00
.l765d
	call l7667
	dec d
	jp p,l765d
	ld de,#073f
.l7667
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
.l7682
;
	xor a
	ld (l7948),a
	ld (l794b),a
	ld (l794c),a
	call l7c7c
	xor a
	ld (l789a),a
	ld (l789b),a
	ld (l789c),a
	ret
	db #00,#00,#00,#00,#00,#00,#00,#10
	db #5e,#4f,#3a,#00,#00,#6c,#05,#00
	db #6f,#00
	ld c,l
	pop hl
	jp l7682
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
	jr nz,l76d3
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l76d3
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l772c
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l785d
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l772c
	ld a,(de)
	inc de
	ld (l77f2),a
	jr l772c
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l772c
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l772c
	set 1,(ix+#00)
	jr l772c
	ld (ix+#1f),#ff
	jr l772c
.l771f
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l772c
	ld a,(de)
	inc de
	and a
	jp m,l778c
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l773e
	ld (l74ef),a
.l773e
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
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l778b
	ld a,(l7949)
	and a
	jr z,l777a
	ld a,(l7c30)
	bit 3,a
	jr z,l778b
.l777a
	ld a,(l794a)
	and a
	jr z,l7787
	ld a,(l7c45)
	bit 3,a
	jr z,l778b
.l7787
	ld (ix+#1f),#ff
.l778b
	ret
.l778c
	cp #c0
	jr c,l77b7
	add #20
	jr c,l7798
	add #10
	jr c,l779f
.l7798
	inc a
	ld (ix+#11),a
	jp l772c
.l779f
	ld hl,l7917
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
	jp l772c
.l77b7
	ld hl,l761a
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l77bf
	ld c,(ix+#00)
	bit 5,c
	jr z,l77f1
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l77eb
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l77eb
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l77eb
	ld a,(ix+#18)
	ld (ix+#13),a
.l77f2 equ $ + 1
.l77f1
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld hl,l7893
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l7853
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l781c
	bit 0,c
	jr nz,l783a
.l781c
	bit 5,l
	jr nz,l782c
	sub (ix+#1b)
	jr nc,l7837
	set 5,(ix+#1d)
	sub a
	jr l7837
.l782c
	add (ix+#1b)
	cp b
	jr c,l7837
	res 5,(ix+#1d)
	ld a,b
.l7837
	ld (ix+#1c),a
.l783a
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l7845
	dec d
.l7845
	add #a0
	jr c,l7851
.l7849
	sla e
	rl d
	add #18
	jr nc,l7849
.l7851
	add hl,de
	ex de,hl
.l7853
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.l785d equ $ + 1
	ld a,#38
	jr nz,l786a
	ld a,(l74ef)
	xor #08
	ld (l753b),a
	ld a,#07
.l786a
	ld hl,l7899
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l788d
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l753b),a
.l788d
	ex de,hl
	ld a,(ix+#13)
	ret
.l7899 equ $ + 7
.l7898 equ $ + 6
.l7896 equ $ + 4
.l7894 equ $ + 2
.l7893 equ $ + 1
.l7892
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l78a1 equ $ + 7
.l78a0 equ $ + 6
.l789f equ $ + 5
.l789c equ $ + 2
.l789b equ $ + 1
.l789a
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l78a8 equ $ + 6
.l78a7 equ $ + 5
.l78a5 equ $ + 3
.l78a2
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
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
	dw #002f,#002c
.l7917
	dw l791e,l7930,l7937
.l791e equ $ + 1
	db #01,#0f,#0e,#0c,#0b,#0d,#0c,#0a
	db #09,#0b,#0a,#08,#07,#09,#08,#06
.l7930 equ $ + 3
	db #05,#87,#01,#0f,#0d,#0c,#0b,#0a
.l7937 equ $ + 2
	db #87,#05,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l794c equ $ + 7
.l794b equ $ + 6
.l794a equ $ + 5
.l7949 equ $ + 4
.l7948 equ $ + 3
.l7947 equ $ + 2
	db #01,#87,#0f,#00,#00,#00,#00,#00
.l794e equ $ + 1
.l794d
	db #00,#00
	ld hl,l7958
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l7958
	ld (bc),a
	ld e,h
	ld hl,l7949
	ld (hl),#00
	ld hl,l7b83
	add a
	add l
	ld l,a
	jr nc,l7968
	inc h
.l7968
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l7c2a
.l7970
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l7970
	ld a,(l7c2b)
	ld (l7c38),a
	ld hl,(l7c2c)
	ld (l789f),hl
	ld a,(l7c30)
	bit 3,a
	jr nz,l798d
	ld a,l
	ld (l78a5),a
.l798d
	ld a,(l7c35)
	ld (l7c39),a
	ld a,(l7c37)
	ld (l7c3e),a
	ld a,(l7c34)
	ld hl,l7bf3
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l7c3a),hl
	ld (l7c3c),hl
	ld a,(hl)
	ld (l78a7),a
	ld hl,l7949
	inc (hl)
	ret
	ld hl,l794a
	ld (hl),#00
	ld hl,l7b83
	add a
	add l
	ld l,a
	jr nc,l79c3
	inc h
.l79c3
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l7c3f
.l79cb
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l79cb
	ld a,(l7c40)
	ld (l7c4d),a
	ld hl,(l7c41)
	ld (l78a1),hl
	ld a,(l7c45)
	bit 3,a
	jr nz,l79e8
	ld a,l
	ld (l78a5),a
.l79e8
	ld a,(l7c4a)
	ld (l7c4e),a
	ld a,(l7c4c)
	ld (l7c53),a
	ld a,(l7c49)
	ld hl,l7bf3
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l7c4f),hl
	ld (l7c51),hl
	ld a,(hl)
	ld (l78a8),a
	ld hl,l794a
	inc (hl)
	ret
.l7a10
	call l7c86
	ld a,(l7949)
	and a
	call nz,l7ad1
	ld a,(l794a)
	and a
	ret z
	ld a,(l7c3f)
	and a
	jr nz,l7a2f
	ld a,(l7c4b)
	and a
	jr nz,l7a2f
	ld (l794a),a
	ret
.l7a2f
	dec a
	ld (l7c3f),a
	ld a,(l7c4d)
	and a
	jr nz,l7a67
	ld a,(l7c4b)
	and a
	jr nz,l7a45
	ld a,(l7c48)
	and a
	jr z,l7aa9
.l7a45
	dec a
	ld (l7c48),a
	ld a,(l7c40)
	ld (l7c4d),a
	ld a,(l7c46)
	and a
	jr z,l7a58
	ld a,(l7ca2)
.l7a58
	ld b,a
	ld a,(l7c41)
	add b
	ld (l78a1),a
	ld a,(l7c42)
	add b
	ld (l78a2),a
.l7a67
	ld hl,l7c4d
	dec (hl)
	ld hl,l7c4c
	ld a,(hl)
	and a
	jr z,l7a79
	ld hl,l7c53
	dec (hl)
	jr nz,l7a9c
	ld (hl),a
.l7a79
	ld a,(l7c47)
	and a
	jr z,l7a9c
	jp p,l7a8f
	ld hl,(l78a1)
	ld de,(l7c43)
	add hl,de
	ld (l78a1),hl
	jr l7a9c
.l7a8f
	ld hl,(l78a1)
	ld de,(l7c43)
	and a
	sbc hl,de
	ld (l78a1),hl
.l7a9c
	ld a,(l7c45)
	bit 3,a
	jr nz,l7aa9
	ld a,(l78a1)
	ld (l78a5),a
.l7aa9
	ld a,(l7c4e)
	dec a
	ld (l7c4e),a
	jr nz,l7ad0
	ld a,(l7c4a)
	ld (l7c4e),a
	ld hl,(l7c51)
	ld a,(hl)
	inc hl
	and a
	jp p,l7aca
	cp #80
	jr nz,l7ad0
	ld hl,(l7c4f)
	ld a,(hl)
	inc hl
.l7aca
	ld (l7c51),hl
	ld (l78a8),a
.l7ad0
	ret
.l7ad1
	ld a,(l7c2a)
	and a
	jr nz,l7ae1
	ld a,(l7c36)
	and a
	jr nz,l7ae1
	ld (l7949),a
	ret
.l7ae1
	dec a
	ld (l7c2a),a
	ld a,(l7c38)
	and a
	jr nz,l7b19
	ld a,(l7c36)
	and a
	jr nz,l7af7
	ld a,(l7c33)
	and a
	jr z,l7b5b
.l7af7
	dec a
	ld (l7c33),a
	ld a,(l7c2b)
	ld (l7c38),a
	ld a,(l7c31)
	and a
	jr z,l7b0a
	ld a,(l7ca1)
.l7b0a
	ld b,a
	ld a,(l7c2c)
	add b
	ld (l789f),a
	ld a,(l7c2d)
	add b
	ld (l78a0),a
.l7b19
	ld hl,l7c38
	dec (hl)
	ld hl,l7c37
	ld a,(hl)
	and a
	jr z,l7b2b
	ld hl,l7c3e
	dec (hl)
	jr nz,l7b4e
	ld (hl),a
.l7b2b
	ld a,(l7c32)
	and a
	jr z,l7b4e
	jp p,l7b41
	ld hl,(l789f)
	ld de,(l7c2e)
	add hl,de
	ld (l789f),hl
	jr l7b4e
.l7b41
	ld hl,(l789f)
	ld de,(l7c2e)
	and a
	sbc hl,de
	ld (l789f),hl
.l7b4e
	ld a,(l7c30)
	bit 3,a
	jr nz,l7b5b
	ld a,(l789f)
	ld (l78a5),a
.l7b5b
	ld a,(l7c39)
	dec a
	ld (l7c39),a
	jr nz,l7b82
	ld a,(l7c35)
	ld (l7c39),a
	ld hl,(l7c3c)
	ld a,(hl)
	inc hl
	and a
	jp p,l7b7c
	cp #80
	jr nz,l7b82
	ld hl,(l7c3a)
	ld a,(hl)
	inc hl
.l7b7c
	ld (l7c3c),hl
	ld (l78a7),a
.l7b82
	ret
.l7b83
	dw l7b91,l7b9f,l7bad,l7bbb
	dw l7bc9,l7bd7,l7be5
.l7b91
	db #06,#05,#47,#03,#20,#00,#f6,#00
.l7b9f equ $ + 6
	db #ff,#63,#03,#03,#00,#00,#14,#06
	db #01,#02,#c8,#00,#f6,#00,#ff,#ff
.l7bad equ $ + 4
	db #00,#02,#00,#00,#32,#0a,#0a,#00
	db #03,#00,#f6,#01,#ff,#0a,#00,#04
.l7bbb equ $ + 2
	db #00,#00,#11,#05,#c7,#00,#20,#00
	db #f6,#00,#ff,#63,#00,#01,#00,#00
.l7bc9
	db #1e,#63,#11,#06,#10,#00,#fe,#00
.l7bd7 equ $ + 6
	db #ff,#ff,#00,#04,#00,#00,#0f,#03
	db #60,#00,#08,#00,#fe,#00,#ff,#63
.l7be5 equ $ + 4
	db #08,#01,#00,#00,#32,#02,#2b,#00
	db #02,#00,#fe,#00,#ff,#ff,#08,#02
	db #00,#00
.l7bf3
	dw l7c05,l7c12,l7c12,l7c12
	dw l7c1a,l7c1a,l7c1a,l7c1a
	dw l7c1a
.l7c05
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
.l7c12 equ $ + 5
	db #07,#06,#05,#04,#ff,#0d,#0b,#09
.l7c1a equ $ + 5
	db #07,#05,#04,#03,#ff,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l7c2c equ $ + 7
.l7c2b equ $ + 6
.l7c2a equ $ + 5
	db #03,#02,#01,#00,#ff,#00,#00,#00
.l7c34 equ $ + 7
.l7c33 equ $ + 6
.l7c32 equ $ + 5
.l7c31 equ $ + 4
.l7c30 equ $ + 3
.l7c2e equ $ + 1
.l7c2d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7c3c equ $ + 7
.l7c3a equ $ + 5
.l7c39 equ $ + 4
.l7c38 equ $ + 3
.l7c37 equ $ + 2
.l7c36 equ $ + 1
.l7c35
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7c43 equ $ + 6
.l7c42 equ $ + 5
.l7c41 equ $ + 4
.l7c40 equ $ + 3
.l7c3f equ $ + 2
.l7c3e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7c4c equ $ + 7
.l7c4b equ $ + 6
.l7c4a equ $ + 5
.l7c49 equ $ + 4
.l7c48 equ $ + 3
.l7c47 equ $ + 2
.l7c46 equ $ + 1
.l7c45
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7c53 equ $ + 6
.l7c51 equ $ + 4
.l7c4f equ $ + 2
.l7c4e equ $ + 1
.l7c4d
	db #00,#00,#00,#00,#00,#00,#00
	ld hl,#0680
	ld (l759a),hl
	ld a,#ff
	ld (l794b),a
	ret
	xor a
	ld (l794b),a
	ld (l789a),a
	ret
	ld hl,#0640
	ld (l75c9),hl
	ld a,#ff
	ld (l794c),a
	ret
	xor a
	ld (l794c),a
	ld (l789b),a
	ret
.l7c7c
	xor a
	ld (l7949),a
	ld (l794a),a
	jp l765a
.l7c86
	ld a,(l7ca1)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l7ca4
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l7ca4 equ $ + 3
.l7ca2 equ $ + 1
.l7ca1
	db #ff,#80,#1b,#34
.l7ca5
	db #24
	dw l7d01,l7cb3,l7d27
	db #28
	dw l7e67,l7e5f,l7e6d
.l7cb3
	dw l7d4d,l7d68,l7d4d,l7d7d
	dw l7d4d,l7d68,l7d7d,l7d92
	dw l7d92,l7d4d,l7d68,l7d4d
	dw l7d7d,l7d4d,l7d68
	dw l7d7d,l7d92,l7d92,l7efc
	dw l7d4d,l7d68,l7d4d,l7d7d
	dw l7d4d,l7d68,l7d7d,l7d92
	dw l7d92,l7d4d,l7d68,l7d4d
	dw l7d7d,l7d4d,l7d68,l7d7d
	dw l7d92,l7d92,l7ef6,#0000
.l7d01
	dw l7da7,l7dc1,l7da7,l7dd5
	dw l7da7,l7dc1,l7dd5,l7de2
	dw l7ef3,l7da7,l7dc1,l7da7
	dw l7dd5,l7da7,l7dc1,l7dd5
	dw l7de2,l7ef0,#0000
.l7d27
	dw l7e03,l7e1d,l7e03,l7e31
	dw l7e03,l7e1d,l7e31,l7e3e
	dw l7ef3,l7e03,l7e1d,l7e03
	dw l7e31,l7e03,l7e1d,l7e31
	dw l7e3e,l7ef0,#0000
.l7d4d
	db #d0,#88,#01,#01,#8a,#e0,#15,#15
	db #8d,#15,#15,#15,#15,#8d,#15,#15
	db #15,#15,#8d,#15,#15,#15,#15,#8d
.l7d68 equ $ + 3
	db #15,#18,#87,#11,#11,#8d,#11,#11
	db #11,#11,#8d,#11,#11,#11,#11,#8d
	db #11,#11,#11,#11,#8d,#11,#18,#87
.l7d7d
	db #13,#13,#8d,#13,#13,#13,#13,#8d
	db #13,#13,#10,#10,#8d,#10,#10,#10
.l7d92 equ $ + 5
	db #10,#8d,#10,#18,#87,#18,#18,#8d
	db #18,#18,#18,#18,#8d,#18,#18,#18
	db #18,#8d,#18,#18,#18,#18,#8d,#18
.l7da7 equ $ + 2
	db #24,#87,#8a,#d1,#88,#01,#01,#e0
	db #21,#21,#1f,#e1,#21,#e0,#21,#1f
	db #e1,#21,#e0,#21,#1f,#e1,#21,#e0
.l7dc1 equ $ + 4
	db #24,#23,#21,#87,#1d,#1d,#1c,#e1
	db #1d,#e0,#1d,#1c,#e1,#1d,#e0,#1d
	db #1c,#e1,#1d,#e0,#1c,#1d,#1f,#87
.l7dd5
	db #e0,#23,#23,#21,#e4,#23,#e0,#23
.l7de2 equ $ + 5
	db #23,#21,#e4,#23,#87,#e0,#24,#24
	db #23,#e1,#26,#e2,#24,#e0,#28,#28
	db #24,#e1,#29,#e2,#28,#e0,#24,#24
	db #23,#e1,#26,#e2,#24,#e0,#29,#29
.l7e03 equ $ + 6
	db #28,#e1,#26,#e2,#24,#87,#8a,#d1
	db #88,#01,#01,#e0,#24,#24,#23,#e1
	db #24,#e0,#24,#23,#e1,#24,#e0,#24
	db #23,#e1,#24,#e0,#28,#26,#24,#87
.l7e1d
	db #21,#21,#1f,#e1,#21,#e0,#21,#1f
	db #e1,#21,#e0,#21,#1f,#e1,#21,#e0
.l7e31 equ $ + 4
	db #1f,#21,#23,#87,#e0,#26,#26,#24
	db #e4,#26,#e0,#26,#26,#24,#e4,#26
.l7e3e equ $ + 1
	db #87,#e0,#28,#28,#26,#e1,#29,#e2
	db #28,#e0,#2b,#2b,#28,#e1,#2d,#e2
	db #2b,#e0,#28,#28,#26,#e1,#29,#e2
	db #28,#e0,#2d,#2d,#2b,#e1,#29,#e2
	db #28,#87
.l7e5f
	dw l7e73,l7ef9,l7e73,l7e9b
.l7e6d equ $ + 6
.l7e67
	dw l7ea1,l7ea1,l7ec2,l7ec9
	dw l7ec9,l7ee9
.l7e73
	db #8a,#d2,#88,#01,#01,#e0,#13,#13
	db #e3,#18,#e1,#18,#e0,#13,#13,#e1
	db #18,#13,#e3,#18,#e1,#18,#e0,#13
	db #13,#e3,#1a,#e1,#1a,#e0,#13,#13
	db #e1,#1a,#13,#e3,#1a,#e1,#1a,#87
.l7ea1 equ $ + 6
.l7e9b
	db #e0,#13,#13,#eb,#18,#8e,#8a,#d1
	db #88,#01,#01,#90,#e0,#28,#28,#e5
	db #2b,#e0,#28,#28,#e1,#2b,#28,#e5
	db #2b,#e0,#28,#28,#e5,#2b,#e0,#2b
.l7ec2 equ $ + 7
	db #2b,#e1,#2f,#2b,#e5,#2f,#87,#e0
.l7ec9 equ $ + 6
	db #2f,#2f,#d2,#eb,#30,#8e,#8a,#d1
	db #88,#01,#01,#e0,#2b,#2b,#e5,#30
	db #e0,#2b,#2b,#e1,#30,#2b,#e5,#30
	db #e0,#2b,#2b,#e5,#32,#e0,#2f,#2f
.l7ee9 equ $ + 6
	db #e1,#32,#2f,#e5,#32,#87,#e0,#32
	db #32,#d2,#eb,#34,#8e
.l7ef0
	db #92,#00,#87
.l7ef3
	db #92,#0c,#87
.l7ef6
	db #89,#00,#87
.l7ef9
	db #89,#02,#87
.l7efc
	db #89,#03,#87
;
.music_info
	db "International Speedway (1988)(Silverbird)(David Whittaker)",0
	db "",0

	read "music_end.asm"
