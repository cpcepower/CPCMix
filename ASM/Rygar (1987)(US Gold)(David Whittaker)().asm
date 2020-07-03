; Music of Rygar (1987)(US Gold)(David Whittaker)()
; Ripped by Megachur the 21/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RYGAR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #746b
FIRST_THEME				equ 0
LAST_THEME				equ 5

	read "music_header.asm"

;
.init_music	; 0-5
;
	ex af,af'
	xor a
	ld (l79ce),a
	ld (l79cf),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l7c6d
	add hl,bc
	ld a,(hl)
	ld (l7551),a
	inc hl
	ld ix,l74c4
	ld c,#20
	ld a,#03
.l748d
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
	jr nz,l748d
	ld (l77e8),a
	inc a
	ld (l7524),a
	ld (l79ce),a
	ret
.l74c4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l74e4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l7504
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.l7524
	db #00
;
.play_music
;
	call l7a21
	ld a,(l79ce)
	and a
	jp z,l7581
.l7530 equ $ + 1
	ld a,#00
	ld (l757d),a
	ld hl,l7524
	dec (hl)
	jr nz,l7555
	ld b,(hl)
	ld ix,l74c4
	call l76f2
	ld ix,l74e4
	call l76f2
	ld ix,l7504
	call l76f2
.l7551 equ $ + 1
	ld a,#01
	ld (l7524),a
.l7555
	ld ix,l74c4
	call l779c
	ld (l78ab),hl
	ld (l78b3),a
	ld ix,l74e4
	call l779c
	ld (l78ad),hl
	ld (l78b4),a
	ld ix,l7504
	call l779c
	ld (l78af),hl
	ld (l78b5),a
.l757d equ $ + 1
	ld a,#00
	ld (l78b1),a
.l7581
	ld a,(l79cf)
	and a
	jr z,l75b1
	ld hl,(l78b8)
	ld (l78ab),hl
	ld hl,(l78bc)
	ld (l78af),hl
	ld a,(l78be)
	ld (l78b1),a
	ld a,(l78b2)
.l759c
	or #2d
	ld hl,l78bf
	and (hl)
	ld (l78b2),a
	ld a,(l78c0)
	ld (l78b3),a
	ld a,(l78c2)
	ld (l78b5),a
.l75b1
	ld hl,l79cf
	ld a,(l79ce)
	or (hl)
	ret z
	ld hl,l78b6
	ld d,#0b
.l75be
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
	jp p,l75be
	ret
.l75df
	ld de,#0d00
.l75e2
	call l75ec
	dec d
	jp p,l75e2
	ld de,#073f
.l75ec
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
.l7607
;
	xor a
	ld (l79ce),a
	ld (l79cf),a
	call l75df
	xor a
	ld (l78b3),a
	ld (l78b4),a
	ld (l78b5),a
	ret
	db #c7,#af,#b3,#b8,#76,#a5,#a0,#0d
	db #8f,#87,#4c,#36,#5e,#b4,#02,#c1
	pop hl
	jp l7607
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
	jr nz,l7652
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l7652
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l7700
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,l7890
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l7700
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l7890
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l7700
	ld hl,l7890
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l7700
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l7700
	ld a,(de)
	inc de
	ld (l77e8),a
	jr l7700
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l7700
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l7700
	ld (ix+#1d),b
	jr l7700
	ld (ix+#1d),#40
	jr l7700
	ld (ix+#1d),#c0
	jr l7700
	set 1,(ix+#00)
	jr l7700
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l772c
	res 5,(ix+#00)
	jr l772c
.l76f2
	dec (ix+#10)
	jr nz,l7739
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l7700
	ld a,(de)
	inc de
	and a
	jp m,l774a
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l7712
	ld (l7530),a
.l7712
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l772c
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l7739
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l7746
	inc (ix+#12)
	ret
.l7746
	dec (ix+#12)
	ret
.l774a
	cp #b8
	jr c,l7794
	add #20
	jr c,l7778
	add #10
	jr c,l777f
	add #10
	jr nc,l7770
	ld c,a
	ld hl,l7984
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l7700
.l7770
	add #09
	ld (l7551),a
	jp l7700
.l7778
	inc a
	ld (ix+#11),a
	jp l7700
.l777f
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
	jp l7700
.l7794
	ld hl,l759c
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l779c
	ld c,(ix+#00)
	bit 5,c
	jr z,l77e7
	ld a,(ix+#16)
	sub #10
	jr nc,l77cf
	bit 6,c
	jr z,l77d4
	add (ix+#13)
	jr nc,l77b4
	sbc a
.l77b4
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l77ca
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l77e7
.l77ca
	ld (ix+#18),a
	jr l77e7
.l77cf
	ld (ix+#16),a
	jr l77e7
.l77d4
	cpl
	sub #0f
	add (ix+#13)
	jr c,l77dd
	sub a
.l77dd
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l77e7
	res 5,c
.l77e8 equ $ + 1
.l77e7
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,l77ff
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l77ff
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l78ac
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l7861
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l782a
	bit 0,c
	jr nz,l7848
.l782a
	bit 5,l
	jr nz,l783a
	sub (ix+#1b)
	jr nc,l7845
	set 5,(ix+#1d)
	sub a
	jr l7845
.l783a
	add (ix+#1b)
	cp b
	jr c,l7845
	res 5,(ix+#1d)
	ld a,b
.l7845
	ld (ix+#1c),a
.l7848
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l7853
	dec d
.l7853
	add #a0
	jr c,l785f
.l7857
	sla e
	rl d
	add #18
	jr nc,l7857
.l785f
	add hl,de
	ex de,hl
.l7861
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l788c
	ld b,(ix+#0e)
	djnz l7889
	ld c,(ix+#0d)
	bit 7,c
	jr z,l7878
	dec b
.l7878
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l788c
.l7889
	ld (ix+#0e),b
.l788c
	cpl
	and #03
.l7890 equ $ + 1
	ld a,#38
	jr nz,l789d
	ld a,(l7530)
	xor #08
	ld (l757d),a
	ld a,#07
.l789d
	ld hl,l78b2
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l78b2 equ $ + 7
.l78b1 equ $ + 6
.l78af equ $ + 4
.l78ad equ $ + 2
.l78ac equ $ + 1
.l78ab
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l78b9 equ $ + 6
.l78b8 equ $ + 5
.l78b6 equ $ + 3
.l78b5 equ $ + 2
.l78b4 equ $ + 1
.l78b3
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l78c2 equ $ + 7
.l78c0 equ $ + 5
.l78bf equ $ + 4
.l78be equ $ + 3
.l78bc equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
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
.l7984
	db #0f,#10,#13,#16,#19,#1d,#20,#23
	db #26,#29,#2b,#2d,#2f,#34,#36,#00
	db #87,#00,#03,#07,#87,#00,#04,#07
	db #87,#00,#02,#07,#87,#00,#04,#07
	db #0c,#87,#07,#0c,#0f,#87,#07,#0c
	db #10,#87,#03,#07,#0c,#87,#04,#07
	db #0c,#87,#00,#0c,#87,#00,#03,#87
	db #00,#04,#87,#0c,#0c,#0c,#0c,#00
	db #87,#00,#07,#87,#00,#00,#00,#00
.l79cf equ $ + 3
.l79ce equ $ + 2
.music_end equ $ + 2
	db #0c,#87,#00,#00
	ld hl,l79cf
	ld (hl),#00
	ld hl,l7abf
	add a
	add l
	ld l,a
	jr nc,l79de
	inc h
.l79de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l7c3b
.l79e6
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l79e6
	ld a,(l7c3c)
	ld (l7c4c),a
	ld hl,(l7c3d)
	ld (l78b8),hl
	ld de,(l7c3f)
	ld (l78bc),de
	ld a,l
	ld (l78be),a
	ld a,(l7c42)
	ld (l78bf),a
	ld a,(l7c41)
	ld e,a
	ld d,#0c
	call l75ec
	ld a,(l7c4b)
	ld e,a
	ld d,#0d
	call l75ec
	ld hl,l79cf
	inc (hl)
	ret
.l7a21
	call l7c4e
	ld a,(l79cf)
	and a
	ret z
	ld a,(l7c3b)
	and a
	jr nz,l7a35
	ld (l79cf),a
	jp l75df
.l7a35
	dec a
	ld (l7c3b),a
	ld a,(l7c4c)
	and a
	jr nz,l7a6e
	ld a,(l7c49)
	and a
	ret z
	dec a
	ld (l7c49),a
	ld a,(l7c3c)
	ld (l7c4c),a
	ld a,(l7c4a)
	and a
	jr z,l7a57
	ld a,(l7c69)
.l7a57
	ld b,a
	ld a,(l7c3d)
	add b
	ld (l78b8),a
	ld a,(l7c3e)
	add b
	and #0f
	ld (l78b9),a
	ld hl,(l7c3f)
	ld (l78bc),hl
.l7a6e
	ld hl,l7c4c
	dec (hl)
	ld a,(l7c47)
	and a
	jr z,l7a95
	jp p,l7a88
	ld hl,(l78b8)
	ld de,(l7c43)
	add hl,de
	ld (l78b8),hl
	jr l7a95
.l7a88
	ld hl,(l78b8)
	ld de,(l7c43)
	and a
	sbc hl,de
	ld (l78b8),hl
.l7a95
	ld a,(l7c48)
	and a
	jr z,l7ab8
	jp p,l7aab
	ld hl,(l78bc)
	ld de,(l7c45)
	add hl,de
	ld (l78bc),hl
	jr l7ab8
.l7aab
	ld hl,(l78bc)
	ld de,(l7c45)
	and a
	sbc hl,de
	ld (l78bc),hl
.l7ab8
	ld a,(l78b8)
	ld (l78be),a
	ret
.l7abf
	dw l7ae7,l7af8,l7b09,l7b1a
	dw l7b2b,l7b3c,l7b4d,l7b5e
	dw l7b6f,l7b80,l7b91,l7ba2
	dw l7bb3,l7bc4,l7bd5,l7be6
	dw l7bf7,l7c08,l7c19,l7c2a
.l7ae7
	db #19,#1f,#05,#00,#05,#00,#04,#d7
	db #01,#00,#01,#00,#01,#01,#63,#00
.l7af8 equ $ + 1
	db #0e,#14,#11,#01,#02,#06,#01,#0a
	db #fa,#20,#00,#10,#00,#01,#01,#0a
.l7b09 equ $ + 2
	db #00,#00,#46,#09,#01,#04,#01,#07
	db #2d,#f2,#61,#00,#70,#00,#01,#01
.l7b1a equ $ + 3
	db #50,#01,#00,#14,#14,#0f,#00,#0f
	db #00,#03,#d7,#01,#00,#01,#00,#01
.l7b2b equ $ + 4
	db #01,#00,#00,#0e,#28,#1f,#05,#00
	db #05,#00,#06,#d7,#00,#00,#00,#00
.l7b3c equ $ + 5
	db #ff,#ff,#63,#00,#0e,#46,#09,#01
	db #04,#01,#02,#2d,#d2,#61,#00,#70
.l7b4d equ $ + 6
	db #00,#01,#01,#50,#01,#00,#78,#ff
	db #04,#00,#03,#00,#2d,#da,#01,#00
.l7b5e equ $ + 7
	db #01,#00,#ff,#ff,#00,#00,#00,#14
	db #0a,#81,#01,#91,#01,#0a,#fa,#48
	db #00,#4c,#00,#ff,#ff,#ff,#00,#00
.l7b6f
	db #46,#0a,#0a,#00,#0e,#00,#16,#d2
	db #04,#00,#04,#00,#ff,#01,#0a,#01
.l7b80 equ $ + 1
	db #00,#1e,#0a,#09,#00,#0c,#00,#0f
	db #fa,#08,#00,#08,#00,#ff,#ff,#0a
.l7b91 equ $ + 2
	db #00,#00,#28,#1e,#01,#01,#11,#01
	db #19,#fa,#28,#00,#2c,#00,#ff,#ff
.l7ba2 equ $ + 3
	db #ff,#00,#00,#14,#07,#81,#00,#06
	db #01,#06,#d6,#24,#00,#29,#00,#ff
.l7bb3 equ $ + 4
	db #ff,#15,#00,#00,#14,#06,#21,#00
	db #86,#00,#0a,#d2,#24,#00,#29,#00
.l7bc4 equ $ + 5
	db #ff,#ff,#15,#00,#00,#1e,#14,#90
	db #00,#cf,#00,#0c,#fa,#01,#00,#01
.l7bd5 equ $ + 6
	db #00,#ff,#ff,#ff,#00,#00,#28,#1e
	db #b8,#00,#d0,#00,#0c,#fa,#01,#00
.l7be6 equ $ + 7
	db #01,#00,#ff,#ff,#ff,#00,#00,#28
	db #06,#01,#03,#11,#03,#14,#fa,#c8
	db #00,#cc,#00,#ff,#ff,#ff,#00,#00
.l7bf7
	db #03,#63,#1f,#02,#10,#02,#01,#df
	db #00,#00,#00,#00,#01,#01,#00,#00
.l7c08 equ $ + 1
	db #0e,#14,#07,#aa,#00,#ae,#00,#11
	db #fa,#20,#00,#20,#00,#ff,#ff,#06
.l7c19 equ $ + 2
	db #00,#00,#14,#07,#c1,#01,#81,#03
	db #11,#fa,#20,#00,#18,#00,#01,#01
.l7c2a equ $ + 3
	db #3c,#00,#00,#14,#06,#81,#00,#86
	db #00,#28,#d2,#24,#00,#29,#00,#ff
.l7c3e equ $ + 7
.l7c3d equ $ + 6
.l7c3c equ $ + 5
.l7c3b equ $ + 4
	db #ff,#15,#00,#00,#00,#00,#00,#00
.l7c45 equ $ + 6
.l7c43 equ $ + 4
.l7c42 equ $ + 3
.l7c41 equ $ + 2
.l7c3f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7c4c equ $ + 5
.l7c4b equ $ + 4
.l7c4a equ $ + 3
.l7c49 equ $ + 2
.l7c48 equ $ + 1
.l7c47
	db #00,#00,#00,#00,#00,#00,#00
.l7c4e
	ld a,(l7c69)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l7c6c
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l7c6c equ $ + 3
.l7c69
	db #ff,#80,#1b,#34
.l7c6d
	db #07
	dw l7cc8,l7c98,l7cbe
	db #07
	dw l7d9f,l7da3,l7da7
	db #07
	dw l7e05,l7deb,l7e09
	db #07
	dw l7eb9,l7ebb,l7ebd
	db #07
	dw l7eff,l7f01,l7f03
	db #07
	dw l7f36,l7f3a,l7f46
	db #07
.l7c98
	dw l7cd0,l7cd0,l7cd0,l7cd0
	dw l7cd0,l7cd0,l7cd0,l7cd0
	dw l7cd0,l7cd0,l7cef,l7cd0
	dw l7cef,l7cd0,l7cef,l7cd0
	dw l7cef,l7cd0,#0000
.l7cbe
	dw l7cce,l7cd4,l7cd4,l7d01
	dw #0000
.l7cc8
	dw l7ffb,l7d50,#0000
.l7cd4 equ $ + 6
.l7cd0 equ $ + 2
.l7cce
	db #81,#87,#88,#01,#02,#82,#8a,#df
	db #00,#21,#04,#c0,#e1,#1a,#e0,#1a
	db #e1,#18,#e0,#15,#1c,#18,#e1,#1a
	db #e0,#1a,#e1,#18,#e0,#15,#1c,#18
.l7cef equ $ + 1
	db #87,#e1,#16,#15,#16,#e0,#18,#e1
	db #18,#e0,#0c,#e1,#18,#e0,#1f,#1d
.l7d01 equ $ + 3
	db #1c,#18,#87,#8a,#c0,#88,#01,#02
	db #82,#de,#00,#f1,#07,#ff,#32,#30
	db #32,#30,#e5,#2e,#e9,#30,#e9,#32
	db #e1,#30,#32,#30,#e5,#2e,#e9,#30
	db #e7,#32,#de,#00,#21,#05,#e0,#34
	db #34,#34,#de,#00,#f1,#07,#e2,#32
	db #e1,#30,#e5,#2e,#e9,#30,#e7,#32
	db #e0,#34,#32,#30,#34,#32,#30,#32
	db #30,#e5,#2e,#e9,#30,#e8,#32,#df
	db #00,#21,#05,#e0,#32,#32,#32,#e3
.l7d50 equ $ + 2
	db #32,#87,#8a,#c0,#88,#01,#02,#82
	db #de,#00,#f1,#07,#ff,#35,#34,#35
	db #34,#e5,#32,#e9,#34,#e9,#35,#e1
	db #34,#35,#34,#e5,#32,#e9,#34,#e7
	db #35,#de,#00,#21,#05,#e0,#37,#37
	db #37,#de,#00,#f1,#07,#e2,#35,#e1
	db #34,#e5,#32,#e9,#34,#e7,#35,#e0
	db #37,#35,#34,#37,#35,#34,#35,#34
	db #e5,#32,#e9,#34,#e8,#35,#de,#00
	db #21,#05,#e0,#35,#35,#35,#e3,#35
	db #87
.l7d9f
	dw l7dab,#0000
.l7da3
	dw l7db9,#0000
.l7da7
	dw l7dd2,#0000
.l7dab
	db #8a,#88,#01,#02,#82,#c0,#df,#00
.l7db9 equ $ + 6
	db #f1,#04,#eb,#18,#1a,#8e,#8a,#c0
	db #de,#00,#61,#04,#88,#01,#02,#82
	db #e2,#34,#e0,#39,#3b,#3c,#e2,#3b
.l7dd2 equ $ + 7
	db #34,#de,#00,#c1,#07,#eb,#3b,#8a
	db #c0,#de,#00,#61,#04,#88,#01,#02
	db #82,#e2,#37,#e0,#3c,#3e,#40,#e2
	db #3e,#37,#de,#00,#c1,#07,#eb,#3e
.l7deb
	dw l7e0d,l7e29,l7e0d,l7e29
	dw l7e3a,l7e29,l7e0d,l7e0d
	dw l7e3a,l7e29,l7e0d,l7e0d
	dw #0000
.l7e05
	dw l7e4b,#0000
.l7e09
	dw l7e82,#0000
.l7e0d
	db #8a,#88,#01,#02,#82,#c0,#e0,#df
	db #00,#11,#05,#1c,#1c,#1c,#1c,#1c
	db #1c,#1c,#1c,#1c,#1c,#1c,#1c,#1c
.l7e29 equ $ + 4
	db #1c,#1c,#1c,#87,#1a,#1a,#1a,#1a
	db #1a,#1a,#1a,#1a,#1a,#1a,#1a,#1a
.l7e3a equ $ + 5
	db #1a,#1a,#1a,#1a,#87,#18,#18,#18
	db #18,#18,#18,#18,#18,#18,#18,#18
.l7e4b equ $ + 6
	db #18,#18,#18,#18,#18,#87,#8a,#c0
	db #88,#01,#02,#82,#de,#00,#c1,#06
	db #ee,#2f,#e0,#2f,#ef,#30,#ee,#2f
	db #e0,#2f,#e7,#30,#e3,#32,#30,#e7
	db #30,#2b,#32,#2d,#ee,#2f,#e0,#2d
	db #e8,#2f,#e0,#2d,#2f,#2d,#e1,#2f
	db #2d,#e7,#30,#2b,#32,#2d,#ee,#2f
.l7e82 equ $ + 5
	db #e0,#2d,#ef,#2f,#87,#8a,#c0,#88
	db #01,#02,#82,#de,#00,#c1,#06,#ee
	db #34,#e0,#34,#ef,#35,#ee,#34,#e0
	db #34,#e7,#35,#e3,#36,#36,#e7,#34
	db #30,#36,#32,#ee,#34,#e0,#32,#e8
	db #34,#e0,#32,#34,#32,#e1,#34,#32
	db #e7,#34,#30,#36,#32,#ee,#34,#e0
	db #32,#ef,#34,#87
.l7eb9
	dw l7ebf
.l7ebb
	dw l7ed5
.l7ebd
	dw l7eea
.l7ebf
	db #8a,#c0,#88,#02,#05,#82,#df,#00
	db #51,#05,#e3,#24,#e1,#23,#22,#21
.l7ed5 equ $ + 6
	db #20,#1f,#1e,#e3,#1d,#8e,#8a,#c0
	db #88,#02,#04,#82,#de,#00,#51,#05
	db #e3,#28,#e1,#27,#26,#25,#24,#23
.l7eea equ $ + 3
	db #22,#e3,#21,#8a,#c0,#88,#02,#04
	db #82,#de,#00,#51,#05,#e3,#2b,#e1
	db #2a,#29,#28,#27,#26,#25,#e3,#24
.l7eff
	dw l7f05
.l7f01
	dw l7f16
.l7f03
	dw l7f26
.l7f05
	db #8a,#c0,#88,#01,#01,#82,#de,#00
	db #41,#08,#e0,#39,#3b,#3d,#e1,#3e
.l7f16 equ $ + 1
	db #8e,#8a,#c0,#88,#01,#01,#82,#df
	db #00,#41,#08,#e0,#15,#17,#19,#e1
.l7f26 equ $ + 1
	db #1a,#8a,#c0,#88,#01,#01,#82,#de
	db #00,#41,#08,#e0,#2d,#2f,#31,#e1
	db #32
.l7f36
	dw l7f52,#0000
.l7f3a
	dw l7f62,l7f62,l7f62,l7f62
	dw l7f7a,#0000
.l7f46
	dw l7fab,l7fab,l7fab,l7fab
	dw l7fc6,#0000
.l7f52
	db #8a,#88,#01,#02,#82,#c0,#df,#00
	db #f1,#03,#f7,#18,#15,#11,#13,#87
.l7f62
	db #8a,#c0,#88,#01,#01,#82,#de,#00
	db #21,#04,#e1,#3c,#35,#37,#3c,#35
	db #37,#3c,#35,#37,#3c,#35,#3b,#87
.l7f7a
	db #40,#37,#3c,#40,#37,#3c,#40,#37
	db #3c,#40,#37,#3c,#40,#39,#3c,#40
	db #39,#3c,#40,#39,#3c,#40,#39,#3c
	db #40,#35,#3c,#40,#35,#3c,#40,#35
	db #3c,#40,#35,#3c,#40,#37,#3b,#40
	db #37,#3b,#40,#37,#3b,#40,#37,#3b
.l7fab equ $ + 1
	db #87,#8a,#c0,#88,#01,#01,#82,#de
	db #00,#21,#04,#e0,#8f,#e1,#39,#3b
	db #35,#39,#3b,#35,#39,#3b,#35,#39
.l7fc6 equ $ + 4
	db #3e,#e0,#37,#87,#e0,#8f,#e1,#3c
	db #3e,#37,#3c,#41,#37,#3c,#3e,#37
	db #3c,#41,#37,#3c,#3e,#39,#3c,#41
	db #39,#3c,#3e,#39,#3c,#41,#39,#3c
	db #3e,#35,#3c,#41,#35,#3c,#3e,#35
	db #3c,#41,#35,#3b,#3e,#37,#3b,#41
	db #37,#3b,#3e,#37,#3b,#41,#e0,#37
	db #87
.l7ffb
	db #ff,#80,#87
;
.music_info
	db "Rygar (1987)(US Gold)(David Whittaker)",0
	db "",0

	read "music_end.asm"
