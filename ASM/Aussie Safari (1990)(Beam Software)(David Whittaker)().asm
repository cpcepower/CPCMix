; Music of Aussie Safari (1990)(Beam Software)(David Whittaker)()
; Ripped by Megachur the 05/06/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AUSSIESA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #7465
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"
;
.init_music
;
	push af
	call l7639
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l7cf7
	add hl,bc
	ld a,(hl)
	ld (l753a),a
	ld (l7820),a
	inc hl
	ld ix,l74bd
	ld c,#22
	ld a,#03
.l7486
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
	jr nz,l7486
	ld (l779a),a
	dec a
	ld (l7821),a
	ld (l781d),a
	ret
.l74bd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l74df
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l7501
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(l781d)
	ld hl,l781e
	or (hl)
	ret z
	call l7a29
	ld a,(l781d)
	and a
	jr z,l7585
.l7535 equ $ + 1
	ld a,#00
	ld (l7581),a
.l753a equ $ + 1
	ld a,#01
	ld hl,l7821
	add (hl)
	ld (hl),a
	jr nc,l7559
	ld b,#00
	ld ix,l74bd
	call l76eb
	ld ix,l74df
	call l76eb
	ld ix,l7501
	call l76eb
.l7559
	ld ix,l74bd
	call l7767
	ld (l7822),hl
	ld (l782a),a
	ld ix,l74df
	call l7767
	ld (l7824),hl
	ld (l782b),a
	ld ix,l7501
	call l7767
	ld (l7826),hl
	ld (l782c),a
.l7581 equ $ + 1
	ld a,#00
	ld (l7828),a
.l7585
	ld a,(l781d)
	and a
	jr nz,l759b
	ld (l782a),a
	ld (l782b),a
	ld (l782c),a
	ld a,#3f
	ld (l7829),a
	jr l75c3
.l759b
	ld a,(l781f)
	and #0f
	xor #0f
	jr z,l75c3
	ld b,a
	ld a,(l782a)
	sub b
	jr nc,l75ac
	xor a
.l75ac
	ld (l782a),a
	ld a,(l782b)
	sub b
	jr nc,l75b6
	xor a
.l75b6
	ld (l782b),a
	ld a,(l782c)
	sub b
	jr nc,l75c0
	xor a
.l75c0
	ld (l782c),a
.l75c3
	ld a,(l781e)
	and a
	jr z,l75eb
	ld hl,(l782f)
	ld (l7822),hl
	ld a,(l7cc9)
.l75d2
	ld b,a
	bit 3,a
	jr nz,l75dd
	ld a,(l7835)
	ld (l7828),a
.l75dd
	ld hl,l7829
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l7837)
	ld (l782a),a
.l75eb
	ld hl,l782c
	ld d,#0a
.l75f0
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
	jp p,l75f0
	ret
.l7611
	ld de,#0a00
.l7614
	call l761e
	dec d
	jp p,l7614
	ld de,#073f
.l761e
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
.l7639
	xor a
	ld (l781d),a
	call l764b
	xor a
	ld (l782a),a
	ld (l782b),a
	ld (l782c),a
	ret
.l764b
	xor a
	ld (l781e),a
	jp l7611
	db #90,#84,#7d,#00,#00,#00,#00,#0e
	db #6a,#62,#4d,#37,#00,#7d,#00,#00
	db #00,#00,#00,#00,#00
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
	jr nz,l7689
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l7689
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l76f8
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,l7802
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l76f8
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l7802
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l76f8
	ld a,(de)
	inc de
	ld (l779a),a
	jr l76f8
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l76f8
	ld (ix+#1d),b
	jr l76f8
	set 1,(ix+#00)
	jr l76f8
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l7727
.l76eb
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l76f8
	ld a,(de)
	inc de
	and a
	jp m,l7734
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l770a
	ld (l7535),a
.l770a
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
.l7727
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l7734
	cp #c0
	jr c,l775f
	add #20
	jr c,l7740
	add #10
	jr c,l7747
.l7740
	inc a
	ld (ix+#11),a
	jp l76f8
.l7747
	ld hl,l78fb
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
	jp l76f8
.l775f
	ld hl,l75d2
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l7767
	ld c,(ix+#00)
	bit 5,c
	jr z,l7799
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l7793
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l7793
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l7793
	ld a,(ix+#18)
	ld (ix+#13),a
.l779a equ $ + 1
.l7799
	ld a,#00
	add (ix+#12)
	ld hl,l783b
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l77f8
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l77c1
	bit 0,c
	jr nz,l77df
.l77c1
	bit 5,l
	jr nz,l77d1
	sub (ix+#1b)
	jr nc,l77dc
	set 5,(ix+#1d)
	sub a
	jr l77dc
.l77d1
	add (ix+#1b)
	cp b
	jr c,l77dc
	res 5,(ix+#1d)
	ld a,b
.l77dc
	ld (ix+#1c),a
.l77df
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l77ea
	dec d
.l77ea
	add #a0
	jr c,l77f6
.l77ee
	sla e
	rl d
	add #18
	jr nc,l77ee
.l77f6
	add hl,de
	ex de,hl
.l77f8
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.l7802 equ $ + 1
	ld a,#38
	jr nz,l780f
	ld a,(l7535)
	xor #08
	ld (l7581),a
	ld a,#07
.l780f
	ld hl,l7829
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l7824 equ $ + 7
.l7822 equ $ + 5
.l7821 equ $ + 4
.l7820 equ $ + 3
.l781f equ $ + 2
.l781e equ $ + 1
.music_end
.l781d
	db #00,#00,#0f,#00,#00,#00,#00,#00
.l782c equ $ + 7
.l782b equ $ + 6
.l782a equ $ + 5
.l7829 equ $ + 4
.l7828 equ $ + 3
.l7826 equ $ + 1
	db #00,#00,#00,#00,#3f,#0f,#0f,#0f
.l7830 equ $ + 3
.l782f equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7837 equ $ + 2
.l7835
	db #00,#3f,#00,#00,#00,#00
.l783b
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
.l78fb
	dw l791c,l7924,l7930,l7942
	dw l7954,l795b,l7962,l7977
	dw l7980,l7991,l79a2,l79b2
	dw l79c3,l79c6,l79c9,l79cc
	db #01
.l791c
	db #0f,#0d,#0b,#08,#05,#02,#87,#01
.l7924
	db #0e,#0d,#0b,#09,#07,#05,#04,#03
.l7930 equ $ + 4
	db #02,#01,#87,#01,#0f,#0e,#0d,#0b
	db #0d,#0c,#0a,#09,#0b,#0a,#08,#07
.l7942 equ $ + 6
	db #09,#08,#06,#05,#87,#01,#0f,#0f
	db #0d,#0b,#0d,#0c,#0a,#09,#0b,#0a
	db #08,#07,#09,#08,#06,#05,#87,#01
.l795b equ $ + 7
.l7954
	db #0f,#0e,#0d,#0c,#0b,#87,#01,#0e
.l7962 equ $ + 6
	db #0d,#0c,#0b,#0a,#87,#01,#0e,#0d
	db #0c,#0b,#0a,#09,#01,#08,#01,#07
	db #01,#06,#01,#05,#01,#04,#01,#02
.l7977 equ $ + 3
	db #01,#87,#04,#08,#09,#0a,#0b,#0c
.l7980 equ $ + 4
	db #0d,#0e,#87,#05,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l7991 equ $ + 5
	db #03,#02,#01,#87,#08,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l79a2 equ $ + 6
	db #04,#03,#02,#01,#87,#04,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l79b2 equ $ + 6
	db #04,#03,#02,#01,#87,#04,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l79c3 equ $ + 7
	db #05,#04,#03,#02,#01,#87,#01,#0c
.l79c9 equ $ + 5
.l79c6 equ $ + 2
	db #87,#01,#0d,#87,#01,#0e,#87,#01
.l79cc
	db #0f,#87
	ld hl,l781e
	ld (hl),#00
	ld hl,l7ae3
	add a
	add l
	ld l,a
	jr nc,l79dc
	inc h
.l79dc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l7cc3
.l79e4
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l79e4
	ld a,(l7cc4)
	ld (l7cd1),a
	ld hl,(l7cc5)
	ld (l782f),hl
	ld a,(l7cc9)
	bit 3,a
	jr nz,l7a01
	ld a,l
	ld (l7835),a
.l7a01
	ld a,(l7cce)
	ld (l7cd2),a
	ld a,(l7cd0)
	ld (l7cd7),a
	ld a,(l7ccd)
	ld hl,l7c42
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l7cd3),hl
	ld (l7cd5),hl
	ld a,(hl)
	ld (l7837),a
	ld hl,l781e
	inc (hl)
	ret
.l7a29
	call l7cd8
	ld a,(l781e)
	and a
	ret z
	ld a,(l7cc3)
	and a
	jr nz,l7a41
	ld a,(l7ccf)
	and a
	jr nz,l7a41
	ld (l781e),a
	ret
.l7a41
	dec a
	ld (l7cc3),a
	ld a,(l7cd1)
	and a
	jr nz,l7a79
	ld a,(l7ccf)
	and a
	jr nz,l7a57
	ld a,(l7ccc)
	and a
	jr z,l7abb
.l7a57
	dec a
	ld (l7ccc),a
	ld a,(l7cc4)
	ld (l7cd1),a
	ld a,(l7cca)
	and a
	jr z,l7a6a
	ld a,(l7cf3)
.l7a6a
	ld b,a
	ld a,(l7cc5)
	add b
	ld (l782f),a
	ld a,(l7cc6)
	add b
	ld (l7830),a
.l7a79
	ld hl,l7cd1
	dec (hl)
	ld hl,l7cd0
	ld a,(hl)
	and a
	jr z,l7a8b
	ld hl,l7cd7
	dec (hl)
	jr nz,l7aae
	ld (hl),a
.l7a8b
	ld a,(l7ccb)
	and a
	jr z,l7aae
	jp p,l7aa1
	ld hl,(l782f)
	ld de,(l7cc7)
	add hl,de
	ld (l782f),hl
	jr l7aae
.l7aa1
	ld hl,(l782f)
	ld de,(l7cc7)
	and a
	sbc hl,de
	ld (l782f),hl
.l7aae
	ld a,(l7cc9)
	bit 3,a
	jr nz,l7abb
	ld a,(l782f)
	ld (l7835),a
.l7abb
	ld a,(l7cd2)
	dec a
	ld (l7cd2),a
	jr nz,l7ae2
	ld a,(l7cce)
	ld (l7cd2),a
	ld hl,(l7cd5)
	ld a,(hl)
	inc hl
	and a
	jp p,l7adc
	cp #80
	jr nz,l7ae2
	ld hl,(l7cd3)
	ld a,(hl)
	inc hl
.l7adc
	ld (l7cd5),hl
	ld (l7837),a
.l7ae2
	ret
.l7ae3
	dw l7b0f,l7b1d,l7b2b,l7b39
	dw l7b47,l7b55,l7b63,l7b70
	dw l7b7e,l7b8c,l7b9a,l7ba8
	dw l7bb6,l7bc4,l7bd2,l7be0
	dw l7bee,l7bfc,l7c0a,l7c18
	dw l7c26,l7c34
.l7b0f
	db #05,#10,#0a,#00,#01,#00,#f7,#00
.l7b1d equ $ + 6
	db #01,#63,#04,#01,#ff,#02,#05,#10
	db #0a,#00,#01,#00,#f7,#00,#01,#63
.l7b2b equ $ + 4
	db #05,#01,#ff,#02,#0f,#0f,#10,#00
	db #01,#00,#f7,#00,#ff,#00,#00,#02
.l7b39 equ $ + 2
	db #00,#00,#09,#0f,#0f,#02,#01,#00
	db #f6,#00,#01,#00,#08,#01,#00,#00
.l7b47
	db #06,#63,#09,#05,#11,#00,#f6,#00
.l7b55 equ $ + 6
	db #ff,#00,#00,#01,#00,#00,#06,#63
	db #1e,#00,#01,#00,#f7,#00,#01,#00
.l7b63 equ $ + 4
	db #08,#01,#00,#00,#3c,#03,#04,#00
	db #02,#00,#f7,#00,#01,#0a,#00,#05
.l7b70 equ $ + 1
	db #00,#50,#04,#00,#00,#03,#00,#f7
.l7b7e equ $ + 7
	db #01,#ff,#63,#00,#05,#00,#00,#09
	db #63,#18,#00,#01,#00,#f7,#00,#ff
.l7b8c equ $ + 5
	db #63,#00,#02,#00,#04,#14,#0a,#1f
	db #00,#02,#00,#f6,#00,#01,#63,#08
.l7b9a equ $ + 3
	db #02,#00,#00,#07,#ff,#e0,#00,#0e
	db #00,#fe,#00,#01,#03,#08,#01,#00
.l7ba8 equ $ + 1
	db #00,#0f,#ff,#30,#00,#02,#04,#fe
.l7bb6 equ $ + 7
	db #ff,#01,#63,#08,#02,#00,#00,#0b
	db #05,#0f,#00,#04,#00,#f6,#00,#01
.l7bc4 equ $ + 5
	db #0a,#00,#01,#00,#00,#14,#ff,#0a
	db #00,#03,#00,#f6,#00,#ff,#0a,#08
.l7bd2 equ $ + 3
	db #02,#00,#00,#1e,#06,#20,#00,#03
	db #00,#fe,#00,#01,#63,#00,#02,#00
.l7be0 equ $ + 1
	db #00,#11,#05,#c7,#00,#20,#00,#f6
.l7bee equ $ + 7
	db #00,#ff,#63,#00,#01,#00,#00,#1e
	db #05,#0a,#00,#4b,#00,#fe,#00,#ff
.l7bfc equ $ + 5
	db #ff,#00,#03,#00,#00,#32,#03,#a1
	db #00,#14,#00,#f6,#00,#ff,#ff,#00
.l7c0a equ $ + 3
	db #04,#00,#00,#32,#0a,#0a,#00,#03
	db #00,#f6,#01,#ff,#0a,#00,#04,#00
.l7c18 equ $ + 1
	db #00,#1e,#ff,#0f,#00,#01,#00,#f7
.l7c26 equ $ + 7
	db #00,#01,#63,#01,#01,#00,#04,#0f
	db #63,#f0,#00,#21,#00,#fe,#00,#ff
.l7c34 equ $ + 5
	db #63,#00,#01,#00,#00,#1f,#20,#00
	db #00,#01,#00,#f7,#00,#ff,#05,#00
	db #0c,#00,#00
.l7c42
	dw l7c54,l7c64,l7c7d,l7c8d
	dw l7c95,l7c9a,l7ca0,l7ca2
	dw l7cb4
.l7c54
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l7c64
	db #06,#08,#0a,#0b,#0c,#0d,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l7c7d equ $ + 1
	db #ff,#06,#08,#0a,#0b,#0c,#0d,#0c
	db #0b,#0a,#08,#06,#04,#03,#02,#01
.l7c8d equ $ + 1
	db #ff,#0d,#0b,#09,#07,#05,#04,#03
.l7c9a equ $ + 6
.l7c95 equ $ + 1
	db #ff,#01,#04,#07,#0a,#80,#01,#03
.l7ca2 equ $ + 6
.l7ca0 equ $ + 4
	db #06,#08,#0a,#80,#0d,#80,#0f,#0f
	db #0e,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l7cb4
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
.l7cc3 equ $ + 7
	db #06,#05,#04,#03,#02,#01,#ff,#00
.l7ccb equ $ + 7
.l7cca equ $ + 6
.l7cc9 equ $ + 5
.l7cc7 equ $ + 3
.l7cc6 equ $ + 2
.l7cc5 equ $ + 1
.l7cc4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7cd3 equ $ + 7
.l7cd2 equ $ + 6
.l7cd1 equ $ + 5
.l7cd0 equ $ + 4
.l7ccf equ $ + 3
.l7cce equ $ + 2
.l7ccd equ $ + 1
.l7ccc
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7cd7 equ $ + 3
.l7cd5 equ $ + 1
	db #00,#00,#00,#00
.l7cd8
	ld a,(l7cf3)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l7cf6
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l7cf6 equ $ + 3
.l7cf3
	db #ff,#80,#1b,#34
.l7cf7
	db #74
	dw l7d1d,l7d13,l7d27
	db #2a
	dw l7e31,l7e2b,l7e37
	db #2a
	dw l7fd2,l7fc6,l7fda
	db #15
	dw l80f8,l80ec,l8100
.l7d13
	dw l7d2f,l7d2f,l7d31,l7d31
	dw #0000
.l7d1d
	dw l7db9,l7dbf,l7e06,l7de0
	dw #0000
.l7d27
	dw l7dbb,l7e06,l7de0,#0000
.l7d31 equ $ + 2
.l7d2f
	db #89,#01,#8a,#88,#01,#01,#e5,#d8
	db #18,#8b,#d1,#8d,#27,#8a,#d8,#13
	db #8b,#d1,#8d,#27,#8a,#d8,#0c,#8b
	db #d1,#e2,#8d,#27,#8d,#27,#e5,#8a
	db #d8,#11,#8b,#d1,#8d,#27,#8a,#d8
	db #0c,#8b,#d1,#8d,#27,#8a,#d8,#18
	db #8b,#d1,#8d,#27,#8a,#d8,#1a,#8b
	db #d1,#e2,#8d,#27,#8d,#27,#e5,#8a
	db #d8,#13,#8b,#d1,#8d,#27,#8a,#d8
	db #18,#8b,#d1,#8d,#27,#8a,#d8,#13
	db #8b,#d1,#8d,#27,#8a,#d8,#0c,#8b
	db #d1,#e2,#8d,#27,#8d,#27,#e5,#8a
	db #d8,#15,#8b,#d1,#8d,#27,#8a,#d8
	db #18,#8b,#d1,#8d,#27,#8a,#d8,#13
	db #8b,#d1,#8d,#27,#8a,#d8,#17,#8b
	db #d1,#e2,#8d,#27,#8d,#27,#e5,#8a
	db #d8,#0c,#8b,#d1,#8d,#27,#8a,#89
.l7dbb equ $ + 4
.l7db9 equ $ + 2
	db #00,#87,#d5,#87,#88,#01,#01,#d4
.l7dbf
	db #8a,#e2,#28,#28,#28,#28,#e5,#26
	db #26,#e2,#24,#26,#28,#24,#21,#23
	db #e5,#24,#1f,#e3,#24,#e1,#28,#e5
	db #2b,#e2,#2b,#2b,#2b,#2b,#e5,#2b
.l7de0 equ $ + 1
	db #2b,#e2,#24,#26,#e5,#28,#e2,#28
	db #28,#e5,#26,#26,#e2,#24,#26,#28
	db #24,#21,#23,#e5,#24,#1f,#e3,#24
	db #e1,#28,#e5,#2b,#e2,#29,#28,#e5
.l7e06 equ $ + 7
	db #26,#e2,#26,#26,#eb,#24,#87,#e5
	db #2b,#e3,#2b,#e1,#2b,#e5,#2b,#28
	db #e5,#30,#e3,#30,#e1,#30,#e5,#2f
	db #2d,#2b,#e3,#2b,#e1,#2b,#e5,#2d
	db #e3,#2b,#e1,#2b,#e5,#2b,#e2,#29
	db #28,#e5,#26,#87
.l7e2b
	dw l7e3b,l7e41,#0000
.l7e31
	dw l7db9,l7f45,#0000
.l7e37
	dw l7f41,#0000
.l7e41 equ $ + 6
.l7e3b
	db #89,#ff,#8a,#88,#01,#01,#e1,#80
	db #d8,#0c,#8b,#d1,#8d,#27,#8a,#d8
	db #10,#8b,#d1,#8d,#27,#8a,#d8,#11
	db #8b,#d1,#e0,#8d,#27,#8d,#27,#e1
	db #8a,#d8,#18,#8b,#d1,#8d,#27,#8a
	db #d8,#0c,#8b,#d1,#8d,#27,#8a,#d8
	db #10,#8b,#d1,#8d,#27,#8a,#d8,#0e
	db #8b,#d1,#e0,#8d,#27,#8d,#27,#e1
	db #8a,#d8,#13,#8b,#d1,#8d,#27,#8a
	db #d8,#0c,#8b,#d1,#8d,#27,#8a,#d8
	db #10,#8b,#d1,#8d,#27,#8a,#d8,#11
	db #8b,#d1,#e0,#8d,#27,#8d,#27,#e1
	db #8a,#d8,#12,#8b,#d1,#8d,#27,#8a
	db #d8,#13,#8b,#d1,#8d,#27,#8a,#d8
	db #17,#8b,#d1,#8d,#27,#8a,#d8,#18
	db #8b,#d1,#e0,#8d,#27,#8d,#27,#e1
	db #8a,#d8,#0c,#8b,#d1,#8d,#27,#8a
	db #d8,#13,#8b,#d1,#8d,#27,#8a,#d8
	db #17,#8b,#d1,#8d,#27,#8a,#d8,#18
	db #8b,#d1,#e0,#8d,#27,#8d,#27,#e1
	db #8a,#d8,#0c,#8b,#d1,#8d,#27,#8a
	db #d8,#11,#8b,#d1,#8d,#27,#8a,#d8
	db #12,#8b,#d1,#8d,#27,#8a,#d8,#13
	db #8b,#d1,#e0,#8d,#27,#8d,#27,#e1
	db #8a,#d8,#17,#8b,#d1,#8d,#27,#8a
	db #d8,#0c,#8b,#d1,#8d,#27,#8a,#d8
	db #10,#8b,#d1,#8d,#27,#8a,#d8,#11
	db #8b,#d1,#e0,#8d,#27,#8d,#27,#e1
	db #8a,#d8,#12,#8b,#d1,#8d,#27,#8a
	db #d8,#13,#8b,#d1,#8d,#27,#8a,#d8
	db #17,#8b,#d1,#8d,#27,#8a,#d8,#18
	db #8b,#d1,#e0,#8d,#27,#8d,#27,#e1
.l7f41 equ $ + 6
	db #8a,#d8,#0c,#89,#00,#87,#88,#01
.l7f45 equ $ + 2
	db #01,#d4,#8a,#e0,#24,#28,#e1,#2b
	db #e0,#2b,#2d,#e1,#2b,#e0,#28,#24
	db #29,#2b,#2d,#2f,#e1,#30,#e0,#2f
	db #2d,#e1,#2b,#e0,#2b,#2d,#2b,#2b
	db #e0,#28,#24,#e5,#26,#e0,#24,#28
	db #2b,#2b,#2b,#2d,#2b,#28,#24,#24
	db #29,#29,#29,#29,#e1,#30,#e0,#2f
	db #2d,#e1,#2b,#e0,#2f,#2d,#2b,#2b
	db #29,#26,#e5,#24,#e0,#30,#30,#2f
	db #2f,#2f,#2f,#e1,#2f,#e0,#2d,#2b
	db #30,#30,#2b,#28,#e1,#24,#e0,#26
	db #28,#e1,#29,#e0,#29,#29,#29,#30
	db #2f,#2d,#e5,#2b,#e0,#24,#28,#2b
	db #2b,#2b,#2b,#2b,#28,#24,#24,#29
	db #29,#29,#2d,#e1,#30,#e0,#2f,#2d
	db #2b,#2b,#2f,#2d,#2b,#2b,#29,#26
	db #e5,#24,#87
.l7fc6
	dw l7fde,l7fe4,l8075,l7fe4
	dw l7fe4,#0000
.l7fd2
	dw l7db9,l80b6,l8078,#0000
.l7fda
	dw l80b2,#0000
.l7fe4 equ $ + 6
.l7fde
	db #89,#ff,#8a,#88,#01,#01,#e1,#80
	db #d8,#0c,#8b,#d1,#8d,#27,#8d,#27
	db #8a,#d8,#13,#8b,#d1,#8d,#27,#8d
	db #27,#8a,#d8,#0c,#8b,#d1,#8d,#27
	db #8d,#27,#8a,#d8,#07,#8b,#d1,#8d
	db #27,#8d,#27,#8a,#d8,#0c,#8b,#d1
	db #8d,#27,#8d,#27,#8a,#d8,#11,#8b
	db #d1,#8d,#27,#8d,#27,#8a,#d8,#13
	db #8b,#d1,#8d,#27,#8d,#27,#8a,#d8
	db #17,#8b,#d1,#8d,#27,#8d,#27,#8a
	db #d8,#18,#8b,#d1,#8d,#27,#8d,#27
	db #8a,#d8,#13,#8b,#d1,#8d,#27,#8d
	db #27,#8a,#d8,#0c,#8b,#d1,#8d,#27
	db #8d,#27,#8a,#d8,#11,#8b,#d1,#8d
	db #27,#8d,#27,#8a,#d8,#0c,#8b,#d1
	db #8d,#27,#8d,#27,#8a,#d8,#13,#8b
	db #d1,#8d,#27,#8d,#27,#8a,#d8,#0c
	db #8b,#d1,#8d,#27,#8d,#27,#8a,#d8
.l8075 equ $ + 7
	db #13,#8b,#d1,#8d,#27,#8a,#87,#89
.l8078 equ $ + 2
	db #00,#87,#88,#01,#01,#d4,#e0,#28
	db #26,#e1,#24,#28,#28,#23,#26,#26
	db #e0,#24,#23,#e7,#1f,#e1,#28,#24
	db #28,#2b,#24,#29,#2d,#e9,#28,#e0
	db #29,#2b,#e1,#2b,#2b,#2b,#2f,#2d
	db #29,#e0,#28,#24,#e7,#21,#e0,#1f
	db #23,#e1,#24,#28,#28,#23,#26,#24
.l80b2 equ $ + 4
	db #e9,#1f,#81,#87,#88,#01,#01,#d4
.l80b6
	db #8a,#e0,#2b,#29,#e1,#28,#2b,#2b
	db #26,#29,#29,#e0,#28,#26,#e7,#24
	db #e1,#2b,#28,#2b,#30,#29,#2d,#30
	db #e9,#2b,#e0,#2d,#2f,#e1,#30,#2f
	db #30,#32,#30,#2d,#e0,#2b,#28,#e7
	db #24,#e0,#24,#26,#e1,#28,#2b,#2b
	db #26,#29,#28,#e9,#24,#87
.l80ec
	dw l8104,l810a,l8075,l810a
	dw l810a,#0000
.l80f8
	dw l7db9,l81cc,l8192,#0000
.l8100
	dw l81c8,#0000
.l810a equ $ + 6
.l8104
	db #89,#ff,#8a,#88,#01,#01,#e0,#80
	db #d8,#0c,#8b,#d1,#8d,#27,#8d,#27
	db #8a,#d8,#10,#8b,#d1,#8d,#27,#8d
	db #27,#8a,#d8,#0e,#8b,#d1,#8d,#27
	db #8d,#27,#8a,#d8,#07,#8b,#d1,#8d
	db #27,#8d,#27,#8a,#d8,#0c,#8b,#d1
	db #8d,#27,#8d,#27,#8a,#d8,#13,#8b
	db #d1,#8d,#27,#8d,#27,#8a,#d8,#1a
	db #8b,#d1,#8d,#27,#8d,#27,#8a,#d8
	db #13,#8b,#d1,#8d,#27,#8d,#27,#8a
	db #d8,#13,#8b,#d1,#8d,#27,#8d,#27
	db #8a,#d8,#11,#8b,#d1,#8d,#27,#8d
	db #27,#8a,#d8,#0c,#8b,#d1,#8d,#27
	db #8d,#27,#8a,#d8,#0e,#8b,#d1,#8d
	db #27,#8d,#27,#8a,#d8,#13,#8b,#d1
	db #8d,#27,#8d,#27,#8a,#d8,#11,#8b
	db #d1,#8d,#27,#8d,#27,#8a,#d8,#0c
.l8192 equ $ + 6
	db #8b,#d1,#8d,#27,#8a,#87,#88,#01
	db #01,#e0,#26,#2b,#e2,#24,#e0,#26
	db #24,#23,#26,#29,#e1,#26,#e0,#26
	db #2b,#e2,#24,#e0,#26,#24,#23,#26
	db #29,#e1,#26,#e0,#26,#28,#29,#28
	db #26,#24,#23,#e1,#1f,#e0,#26,#26
	db #26,#26,#28,#29,#28,#26,#24,#23
.l81c8 equ $ + 4
	db #e1,#1f,#81,#87,#88,#01,#01,#d8
.l81cc
	db #8a,#e0,#2b,#30,#e2,#2b,#e0,#29
	db #28,#26,#29,#2d,#e1,#2b,#e0,#2b
	db #30,#e2,#2b,#e0,#29,#28,#26,#29
	db #2d,#e1,#2b,#e0,#2b,#2b,#2d,#2b
	db #29,#28,#26,#e1,#24,#e0,#2b,#2b
	db #2b,#2b,#2b,#2d,#2b,#29,#28,#26
	db #e1,#24,#87
;
.music_info
	db "Aussie Safari (1990)(Beam Software)(David Whittaker)",0
	db "same as Aussie Games (1990)(U.S. Gold)(David Whittaker)",0

	read "music_end.asm"
