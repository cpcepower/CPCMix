; Music of Fantasy World Dizzy (1989)(Codemasters)(The Oliver Twins)()
; Ripped by Megachur the 04/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FANTASWD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #0040
FIRST_THEME				equ 0
LAST_THEME				equ 6

	read "music_header.asm"

;
.init_music	; #0040
;
	push af
	call l0217
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l0920
	add hl,bc
	ld a,(hl)
	ld (l0118),a
	ld (l0415),a
	inc hl
	ld ix,l009b
	ld c,#22
	ld a,#03
	.l0061
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
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
	jr nz,l0061
	ld (l038c),a
	dec a
	ld (l0416),a
	ld (l0412),a
	ret
.l009b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l00bd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l00df
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(l0412)
	ld hl,l0413
	or (hl)
	ret z
	call l0601
	ld a,(l0412)
	and a
	jr z,l0163
.l0113 equ $ + 1
	ld a,#00
	ld (l015f),a
.l0118 equ $ + 1
	ld a,#01
	ld hl,l0416
	add (hl)
	ld (hl),a
	jr nc,l0137
	ld b,#00
	ld ix,l009b
	call l02dd
	ld ix,l00bd
	call l02dd
	ld ix,l00df
	call l02dd
.l0137
	ld ix,l009b
	call l0359
	ld (l0417),hl
	ld (l041f),a
	ld ix,l00bd
	call l0359
	ld (l0419),hl
	ld (l0420),a
	ld ix,l00df
	call l0359
	ld (l041b),hl
	ld (l0421),a
.l015f equ $ + 1
	ld a,#00
	ld (l041d),a
.l0163
	ld a,(l0412)
	and a
	jr nz,l0179
	ld (l041f),a
	ld (l0420),a
	ld (l0421),a
	ld a,#3f
	ld (l041e),a
	jr l01a1
.l0179
	ld a,(l0414)
	and #0f
	xor #0f
	jr z,l01a1
	ld b,a
	ld a,(l041f)
	sub b
	jr nc,l018a
	xor a
.l018a
	ld (l041f),a
	ld a,(l0420)
	sub b
	jr nc,l0194
	xor a
.l0194
	ld (l0420),a
	ld a,(l0421)
	sub b
	jr nc,l019e
	xor a
.l019e
	ld (l0421),a
.l01a1
	ld a,(l0413)
	and a
	jr z,l01c9
	ld hl,(l0424)
	ld (l0417),hl
	ld a,(l08f2)
	ld b,a
	bit 3,a
	jr nz,l01bb
.l01b5
	ld a,(l042a)
	ld (l041d),a
.l01bb
	ld hl,l041e
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l042c)
	ld (l041f),a
.l01c9
	ld hl,l0421
	ld d,#0a
.l01ce
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
	jp p,l01ce
	ret
.l01ef
	ld de,&0a00
.l01f2
	call l01fc
	dec d
	jp p,l01f2
	ld de,&073f
.l01fc
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
.l0217
;
	xor a
	ld (l0412),a
	call l022e
	xor a
	ld (l041f),a
	ld (l0420),a
	ld (l0421),a
	ld a,#0f
	ld (l0414),a
	ret
.l022e
	xor a
	ld (l0413),a
	jp l01ef
	db #9d,#91,#8a,#00,#00,#00,#00,#29
	db #77,#68,#53,#00,#00,#00,#1e,#97
	db #00,#00
	db #66
	db #01
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
	jp l02ea
	pop hl
	jp l0217
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
	jr nz,l0287
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l0287
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l02ea
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l03f7
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l02ea
	ld a,(de)
	inc de
	ld (l038c),a
	jr l02ea
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l02ea
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l02ea
	ld (ix+#1d),b
	jr l02ea
	set 1,(ix+#00)
	jr l02ea
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l0319
	jr l0315
.l02dd
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l02ea
	ld a,(de)
	inc de
	and a
	jp m,l0326
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l02fc
	ld (l0113),a
.l02fc
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.l0315
	set 5,(ix+#00)
.l0319
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l0326
	cp #c0
	jr c,l0351
	add #20
	jr c,l0332
	add #10
	jr c,l0339
.l0332
	inc a
	ld (ix+#11),a
	jp l02ea
.l0339
	ld hl,l04dc
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
	jp l02ea
.l0351
	ld hl,l01b5
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l0359
	ld c,(ix+#00)
	bit 5,c
	jr z,l038b
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l0385
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l0385
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l0385
	ld a,(ix+#18)
	ld (ix+#13),a
.l038c equ $ + 1
.l038b
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld hl,l0430
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l03ed
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l03b6
	bit 0,c
	jr nz,l03d4
.l03b6
	bit 5,l
	jr nz,l03c6
	sub (ix+#1b)
	jr nc,l03d1
	set 5,(ix+#1d)
	sub a
	jr l03d1
.l03c6
	add (ix+#1b)
	cp b
	jr c,l03d1
	res 5,(ix+#1d)
	ld a,b
.l03d1
	ld (ix+#1c),a
.l03d4
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l03df
	dec d
.l03df
	add #a0
	jr c,l03eb
.l03e3
	sla e
	rl d
	add #18
	jr nc,l03e3
.l03eb
	add hl,de
	ex de,hl
.l03ed
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.l03f7 equ $ + 1
	ld a,#38
	jr nz,l0404
	ld a,(l0113)
	xor #08
	ld (l015f),a
	ld a,#07
.l0404
	ld hl,l041e
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l0419 equ $ + 7
.l0417 equ $ + 5
.l0416 equ $ + 4
.l0415 equ $ + 3
.l0414 equ $ + 2
.l0413 equ $ + 1
.l0412
.music_end
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0421 equ $ + 7
.l0420 equ $ + 6
.l041f equ $ + 5
.l041e equ $ + 4
.l041d equ $ + 3
.l041b equ $ + 1
	db #00,#00,#00,#00,#3f,#0f,#0f,#0f
.l0425 equ $ + 3
.l0424 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l042c equ $ + 2
.l042a
	db #00,#3f,#00,#00,#00,#00
.l0430
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
	dw #000e,#000e
.l04dc
	dw l04fd,l050c,l0513,l0525
	dw l0537,l053c,l0541,l0548
	dw l0551,l0562,l056c,l0576
	dw l0580,l0591,l05a1,l05a4
.l04fd equ $ + 1
	db #01,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#01
.l0513 equ $ + 7
.l050c
	db #0d,#0e,#0f,#0e,#0d,#87,#01,#0f
	db #0e,#0d,#0b,#0d,#0c,#0a,#09,#0b
	db #0a,#08,#07,#09,#08,#06,#05,#87
.l0525 equ $ + 1
	db #01,#0f,#0f,#0d,#0b,#0d,#0c,#0a
	db #09,#0b,#0a,#08,#07,#09,#08,#06
.l0537 equ $ + 3
	db #05,#87,#01,#0f,#0e,#0d,#87,#01
.l0541 equ $ + 5
.l053c
	db #0f,#0e,#0c,#87,#01,#0f,#0e,#0d
.l0548 equ $ + 4
	db #0c,#0b,#87,#02,#0e,#0d,#0c,#0b
.l0551 equ $ + 5
	db #0a,#09,#08,#87,#08,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l0562 equ $ + 6
	db #04,#03,#02,#01,#87,#02,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#87,#04
.l056c
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
.l0576 equ $ + 2
	db #87,#03,#0f,#0e,#0d,#0c,#0b,#0a
.l0580 equ $ + 4
	db #09,#08,#87,#01,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l0591 equ $ + 5
	db #03,#02,#01,#87,#01,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l05a1 equ $ + 5
	db #03,#02,#01,#87,#01,#0f,#87,#01
.l05a4
	db #0c,#87
	ld hl,l0413
	ld (hl),#00
	ld hl,l06bb
	add a
	add l
	ld l,a
	jr nc,l05b4
	inc h
.l05b4
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l08ec
.l05bc
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l05bc
	ld a,(l08ed)
	ld (l08fa),a
	ld hl,(l08ee)
	ld (l0424),hl
	ld a,(l08f2)
	bit 3,a
	jr nz,l05d9
	ld a,l
	ld (l042a),a
.l05d9
	ld a,(l08f7)
	ld (l08fb),a
	ld a,(l08f9)
	ld (l0900),a
	ld a,(l08f6)
	ld hl,l085d
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l08fc),hl
	ld (l08fe),hl
	ld a,(hl)
	ld (l042c),a
	ld hl,l0413
	inc (hl)
	ret
.l0601
	call l0901
	ld a,(l0413)
	and a
	ret z
	ld a,(l08ec)
	and a
	jr nz,l0619
	ld a,(l08f8)
	and a
	jr nz,l0619
	ld (l0413),a
	ret
.l0619
	dec a
	ld (l08ec),a
	ld a,(l08fa)
	and a
	jr nz,l0651
	ld a,(l08f8)
	and a
	jr nz,l062f
	ld a,(l08f5)
	and a
	jr z,l0693
.l062f
	dec a
	ld (l08f5),a
	ld a,(l08ed)
	ld (l08fa),a
	ld a,(l08f3)
	and a
	jr z,l0642
	ld a,(l091c)
.l0642
	ld b,a
	ld a,(l08ee)
	add b
	ld (l0424),a
	ld a,(l08ef)
	add b
	ld (l0425),a
.l0651
	ld hl,l08fa
	dec (hl)
	ld hl,l08f9
	ld a,(hl)
	and a
	jr z,l0663
	ld hl,l0900
	dec (hl)
	jr nz,l0686
	ld (hl),a
.l0663
	ld a,(l08f4)
	and a
	jr z,l0686
	jp p,l0679
	ld hl,(l0424)
	ld de,(l08f0)
	add hl,de
	ld (l0424),hl
	jr l0686
.l0679
	ld hl,(l0424)
	ld de,(l08f0)
	and a
	sbc hl,de
	ld (l0424),hl
.l0686
	ld a,(l08f2)
	bit 3,a
	jr nz,l0693
	ld a,(l0424)
	ld (l042a),a
.l0693
	ld a,(l08fb)
	dec a
	ld (l08fb),a
	jr nz,l06ba
	ld a,(l08f7)
	ld (l08fb),a
	ld hl,(l08fe)
	ld a,(hl)
	inc hl
	and a
	jp p,l06b4
	cp #80
	jr nz,l06ba
	ld hl,(l08fc)
	ld a,(hl)
	inc hl
.l06b4
	ld (l08fe),hl
	ld (l042c),a
.l06ba
	ret
.l06bb
	dw l06ef,l06fd,l070b,l0719
	dw l0727,l0735,l0743,l0751
	dw l075f,l076d,l077b,l0789
	dw l0797,l07a5,l07b3,l07c1
	dw l07cf,l07df,l07ed,l07fb
	dw l0809,l0817,l0825,l0833
	dw l0841,l084f
.l06ef
	db #02,#04,#02,#04,#00,#00,#f6,#01
.l06fd equ $ + 6
	db #00,#63,#03,#01,#00,#00,#02,#04
	db #88,#01,#00,#00,#f6,#01,#00,#63
.l070b equ $ + 4
	db #03,#01,#00,#00,#02,#04,#8c,#01
	db #00,#00,#f7,#01,#00,#63,#04,#01
.l0719 equ $ + 2
	db #00,#00,#02,#04,#84,#01,#00,#00
	db #f7,#01,#00,#63,#04,#01,#00,#00
.l0727
	db #05,#01,#af,#00,#00,#00,#fe,#00
.l0735 equ $ + 6
	db #ff,#63,#09,#01,#00,#00,#05,#01
	db #2f,#01,#00,#00,#fe,#00,#ff,#63
.l0743 equ $ + 4
.l073f
	db #09,#01,#00,#00,#09,#0e,#01,#01
	db #14,#00,#fe,#00,#01,#00,#00,#01
.l0751 equ $ + 2
	db #00,#00,#0f,#03,#0f,#05,#30,#00
	db #f6,#00,#ff,#ff,#00,#01,#00,#00
.l075f
	db #0c,#02,#1e,#00,#01,#00,#fe,#00
.l076d equ $ + 6
	db #01,#63,#08,#02,#00,#00,#0c,#63
	db #26,#00,#00,#00,#fe,#00,#01,#63
.l077b equ $ + 4
	db #05,#02,#00,#00,#32,#63,#1f,#00
	db #11,#00,#f7,#00,#01,#63,#01,#02
.l0789 equ $ + 2
	db #00,#02,#0c,#63,#81,#00,#0c,#00
	db #fe,#00,#ff,#63,#08,#02,#00,#03
.l0797
	db #c8,#ff,#10,#00,#01,#04,#fe,#00
.l07a5 equ $ + 6
	db #ff,#63,#01,#08,#00,#00,#0c,#05
	db #c8,#00,#20,#00,#f6,#00,#ff,#63
.l07b3 equ $ + 4
	db #00,#01,#00,#00,#0c,#02,#0f,#00
	db #11,#00,#f7,#ff,#01,#ff,#00,#01
.l07c1 equ $ + 2
	db #00,#00,#32,#0a,#50,#00,#0c,#00
	db #fe,#00,#ff,#63,#08,#05,#00,#02
.l07cf
	db #0b,#05,#0f,#00,#04,#00,#f6,#00
	db #01,#0a,#08,#01,#00,#00,#ff,#00
.l07df
	db #19,#28,#1f,#00,#01,#00,#f6,#00
.l07ed equ $ + 6
	db #01,#00,#06,#02,#00,#03,#50,#03
	db #f8,#03,#44,#00,#fe,#00,#ff,#63
.l07fb equ $ + 4
	db #07,#02,#00,#00,#46,#03,#08,#05
	db #30,#00,#f6,#00,#ff,#ff,#04,#02
.l0809 equ $ + 2
	db #00,#00,#50,#04,#00,#04,#16,#00
	db #f6,#01,#ff,#63,#00,#04,#00,#00
.l0817
	db #14,#63,#90,#00,#08,#00,#fe,#00
.l0825 equ $ + 6
	db #01,#63,#00,#05,#00,#02,#0f,#63
	db #f0,#00,#21,#00,#fe,#00,#ff,#63
.l0833 equ $ + 4
	db #04,#01,#00,#00,#0f,#63,#c8,#00
	db #10,#00,#f6,#00,#ff,#63,#05,#01
.l0841 equ $ + 2
	db #00,#00,#32,#0a,#0a,#00,#03,#00
	db #f6,#01,#ff,#0a,#00,#04,#00,#00
.l084f
	db #3c,#06,#81,#00,#24,#00,#f6,#00
	db #ff,#63,#00,#04,#00,#00
.l085d
	dw l0871,l0881,l089a,l08b2
	dw l08b9,l08be,l08c7,l08d4
	dw l08d6,l08e5
.l0871
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l0881
	db #06,#08,#0a,#0b,#0c,#0d,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l089a equ $ + 1
	db #ff,#06,#08,#0a,#0c,#0e,#0f,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l08b2 equ $ + 1
	db #ff,#0a,#00,#00,#00,#0a,#00,#ff
.l08be equ $ + 5
.l08b9
	db #06,#08,#0a,#0c,#ff,#0f,#00,#00
.l08c7 equ $ + 6
	db #0e,#00,#00,#0d,#00,#ff,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.l08d6 equ $ + 5
.l08d4 equ $ + 3
	db #02,#01,#ff,#0c,#80,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l08e5 equ $ + 4
	db #03,#02,#01,#ff,#0d,#00,#00,#00
.l08f0 equ $ + 7
.l08ef equ $ + 6
.l08ee equ $ + 5
.l08ed equ $ + 4
.l08ec equ $ + 3
	db #0b,#00,#ff,#00,#00,#00,#00,#00
.l08f8 equ $ + 7
.l08f7 equ $ + 6
.l08f6 equ $ + 5
.l08f5 equ $ + 4
.l08f4 equ $ + 3
.l08f3 equ $ + 2
.l08f2 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0900 equ $ + 7
.l08fe equ $ + 5
.l08fc equ $ + 3
.l08fb equ $ + 2
.l08fa equ $ + 1
.l08f9
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0901
	ld a,(l091c)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l091f
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l091f equ $ + 3
.l091c
	db #ff,#80,#1b,#34
.l0920
	db #2a
	dw l0983,l0951,l09b5
	db #80
	dw l0983,l0951,l0a53
	db #40
	dw l0a7f,l0a7b,l0a83
	db #32
	dw l0ab7,l0ab3,l0abb
	db #24
	dw l0b2a,l0b26,l0b2e
	db #50
	dw l0b71,l0b6d,l0b75
	db #2a
	dw l0bf1,l0ba3,l0bed
.l0951
	dw l09c3,l09c3,l09c3,l09ce
	dw l09c3,l09c3,l09c3,l09c3
	dw l09d1,l09d1,l09d1,l09d1
	dw l09c3,l09c3,l09c3,l09c3
	dw l09d1,l09d1,l09d1,l09d1
	dw l09d6,l09d6,l09d6,l09d6
	dw #0000
.l0983
	dw l09db,l09db,l09db,l09e7
	dw l09db,l09db,l09db,l09db
	dw l09eb,l09eb,l09eb,l09eb
	dw l09db,l09db,l09db,l09db
	dw l09eb,l09eb,l09eb,l09eb
	dw l09f4,l09f4,l09f4,l09f4
	dw #0000
.l09b5
	dw l09fd,l0a1b,l0a06,l0deb
	dw l0a1b,l0a30,#0000
.l09c3
	db #8a,#d3,#88,#01,#01,#e1,#18,#1f
.l09d1 equ $ + 6
.l09ce equ $ + 3
	db #13,#17,#87,#e7,#18,#87,#18,#1d
.l09d6 equ $ + 3
	db #11,#17,#87,#1a,#1f,#13,#19,#87
.l09db
	db #8a,#da,#e0,#18,#80,#1c,#80,#13
.l09e7 equ $ + 4
	db #80,#1c,#80,#87,#d3,#e7,#0c,#87
.l09eb
	db #18,#80,#21,#80,#11,#80,#21,#80
.l09f4 equ $ + 1
	db #87,#1a,#80,#23,#80,#13,#80,#23
.l0a00 equ $ + 5
.l09fd equ $ + 2
	db #80,#87,#8a,#88,#01,#01,#92,#f4
.l0a06 equ $ + 3
	db #db,#ff,#80,#e1,#30,#2b,#30,#39
	db #80,#37,#32,#33,#34,#8f,#e0,#33
	db #80,#e1,#34,#8f,#2b,#2d,#2f,#87
.l0a1b
	db #e1,#30,#29,#2d,#35,#80,#30,#2d
	db #2e,#30,#8f,#e0,#2f,#80,#e1,#30
.l0a30 equ $ + 5
	db #8f,#2d,#2e,#2f,#87,#dc,#e0,#3b
	db #39,#37,#35,#39,#37,#35,#34,#37
	db #35,#34,#32,#35,#34,#32,#30,#32
	db #30,#2f,#2d,#30,#2f,#2d,#2b,#2f
	db #2d,#2b,#29,#2b,#29,#28,#26,#87
.l0a53
	dw l0a57,#0000
.l0a57
	db #8a,#89,#00,#dd,#e0,#18,#1a,#1c
	db #1d,#1f,#21,#23,#24,#26,#28,#29
	db #2b,#2d,#2f,#30,#32,#18,#1a,#1c
	db #1d,#1f,#21,#23,#24,#26,#28,#29
	db #2a,#e3,#2b,#8e
.l0a7b
	dw l0a87,#0000
.l0a7f
	dw l0a97,#0000
.l0a83
	dw l0aa5,#0000
.l0a87
	db #8a,#d2,#88,#01,#01,#89,#f4,#e5
	db #2e,#e0,#2d,#2c,#dc,#e5,#2b,#8e
.l0a97
	db #8a,#d2,#88,#01,#01,#e5,#33,#e0
.l0aa5 equ $ + 6
	db #32,#31,#dc,#e5,#30,#8e,#8a,#d2
	db #88,#01,#01,#e5,#3a,#e0,#39,#38
	db #dc,#e5,#33,#8e
.l0ab3
	dw l0ac9,#0000
.l0ab7
	dw l0ad8,#0000
.l0abb
	dw l0af1,l0af7,l0df1,l0af1
	dw l0af7,l0dee,#0000
.l0ac9
	db #8a,#d9,#88,#01,#01,#e1,#11,#18
.l0ad8 equ $ + 7
	db #0c,#1d,#11,#21,#0c,#1d,#87,#8a
	db #dc,#88,#01,#01,#e1,#92,#f4,#80
	db #24,#80,#24,#80,#24,#80,#24,#80
	db #24,#80,#23,#24,#29,#80,#23,#87
.l0af7 equ $ + 6
.l0af1
	db #8a,#88,#01,#01,#92,#f4,#db,#e1
	db #24,#e3,#29,#e1,#24,#2d,#29,#2d
	db #2e,#e5,#30,#e1,#2f,#30,#dc,#81
	db #2d,#2e,#2f,#82,#db,#e1,#30,#e3
	db #35,#e1,#30,#32,#30,#2d,#2e,#e5
	db #30,#e1,#2f,#30,#dc,#81,#30,#2f
	db #2e,#82,#92,#00,#87
.l0b2a equ $ + 4
.l0b26
	dw l0b32,#0000,l0b45,#0000
.l0b2e
	dw l0b59,#0000
.l0b32
	db #8a,#d9,#88,#01,#01,#e0,#18,#1c
	db #1c,#13,#1f,#1f,#80,#1a,#e2,#0c
.l0b45 equ $ + 3
	db #e1,#18,#8e,#8a,#dc,#88,#01,#01
	db #e0,#80,#1f,#1f,#80,#23,#23,#80
.l0b59 equ $ + 7
	db #23,#24,#1f,#1f,#e1,#1f,#8e,#8a
	db #dc,#88,#01,#01,#e0,#0c,#24,#24
	db #07,#26,#26,#24,#26,#28,#24,#24
	db #e1,#24,#8e
.l0b71 equ $ + 4
.l0b6d
	dw l0b79,#0000,l0b87,#0000
.l0b75
	dw l0b95,#0000
.l0b79
	db #8a,#dd,#88,#01,#01,#e2,#89,#f4
.l0b87 equ $ + 6
	db #1f,#23,#26,#e5,#2b,#8e,#8a,#dd
	db #88,#01,#01,#e0,#80,#e2,#23,#26
.l0b95 equ $ + 4
	db #2b,#e8,#2f,#8e,#8a,#88,#01,#01
	db #dd,#e1,#80,#e2,#26,#2b,#2f,#e8
	db #32,#8e
.l0ba3
	dw l0c25,l0c25,l0c25,l0c25
	dw l0c25,l0c25,l0c3c,l0c4d
	dw l0c25,l0c25,l0c25,l0c25
	dw l0c25,l0c25,l0c5e,l0c5e
	dw l0c5e,l0c5e,l0c5e,l0c5e
	dw l0c7f,l0c7f,l0c7f,l0c91
	dw l0c7f,l0c88,l0c9a,l0c7f
	dw l0c7f,l0c7f,l0c7f,l0c91
	dw l0c7f,l0c88,l0c9a,l0c7f
	dw #0000
.l0bf1 equ $ + 4
.l0bed
	dw l0df1,l0ca3,l0caa,l0cce
	dw l0caa,l0d02,l0caa,l0cce
	dw l0caa,l0de8,l0d21,l0deb
	dw l0d21,l0de8,l0d47,l0deb
	dw l0d47,l0de8,l0df4,l0d47
	dw l0deb,l0d47,l0df7,l0d6d
	dw l0df4,l0d6d,l0df1,#0000
.l0c25
	db #8a,#d3,#88,#01,#01,#e1,#0c,#18
	db #13,#1f,#0c,#18,#07,#13,#0c,#18
.l0c3c equ $ + 7
	db #13,#1f,#0c,#07,#09,#0b,#87,#11
	db #1d,#18,#24,#11,#1d,#0c,#18,#11
	db #1d,#18,#24,#11,#0c,#0e,#10,#87
.l0c4d
	db #11,#1d,#18,#24,#11,#1d,#0c,#18
	db #13,#1f,#1a,#26,#13,#1f,#0e,#1a
.l0c5e equ $ + 1
	db #87,#0a,#16,#0a,#16,#0a,#16,#0a
	db #16,#0a,#16,#0a,#16,#0a,#16,#0a
	db #16,#08,#14,#08,#14,#08,#14,#08
	db #14,#05,#11,#05,#11,#05,#11,#05
.l0c7f equ $ + 2
	db #11,#87,#0c,#18,#0c,#18,#0c,#18
.l0c88 equ $ + 3
	db #0c,#18,#87,#11,#1d,#11,#1d,#11
.l0c91 equ $ + 4
	db #1d,#11,#1d,#87,#13,#1f,#13,#1f
.l0c9a equ $ + 5
	db #13,#1f,#13,#1f,#87,#0c,#18,#0c
.l0ca3 equ $ + 6
	db #18,#13,#1f,#13,#1f,#87,#88,#01
.l0caa equ $ + 5
	db #01,#93
	dw l0bf1
	db #87,#8a,#dc,#e1
	db #80,#1c,#80,#1b,#80,#1c,#80,#1b
	db #80,#1c,#80,#1f,#18,#1c,#1d,#1e
	db #80,#28,#80,#27,#80,#28,#80,#27
	db #80,#28,#80,#2b,#24,#1f,#22,#23
.l0cce equ $ + 1
	db #87,#dc,#e1,#1c,#e3,#1f,#e0,#1e
	db #1f,#e0,#21,#1f,#e1,#1e,#e2,#1f
	db #e0,#1d,#e1,#1c,#1f,#1e,#1f,#e6
	db #1c,#e0,#80,#e1,#1c,#e3,#1f,#e0
	db #1e,#1f,#e0,#21,#1f,#e1,#1e,#e2
	db #1f,#e0,#1d,#e1,#1c,#1a,#18,#17
.l0d02 equ $ + 5
	db #15,#13,#12,#11,#87,#e1,#21,#24
	db #8f,#26,#27,#26,#24,#26,#27,#26
	db #8f,#24,#e7,#21,#e1,#21,#24,#8f
	db #26,#27,#26,#24,#26,#21,#1f,#8f
.l0d21 equ $ + 4
	db #1e,#e7,#1f,#87,#d6,#e2,#22,#24
	db #e3,#25,#e1,#22,#24,#25,#e2,#22
	db #24,#e3,#25,#e1,#22,#24,#25,#d2
	db #27,#27,#e0,#27,#e2,#25,#e7,#24
	db #e1,#24,#24,#e0,#24,#e2,#22,#e7
.l0d47 equ $ + 2
	db #21,#87,#d6,#e2,#1d,#1e,#e3,#20
	db #e1,#1d,#1e,#20,#e2,#1d,#1e,#e3
	db #20,#e1,#1d,#1e,#20,#d2,#20,#20
	db #e0,#20,#e2,#1e,#e7,#1d,#e1,#24
	db #24,#e0,#24,#e2,#22,#e7,#21,#87
.l0d6d
	db #dc,#e1,#1b,#1c,#e2,#1c,#e0,#1c
	db #e1,#1b,#1c,#1d,#1b,#e3,#1c,#d0
	db #e0,#1b,#1c,#1b,#1c,#1b,#1c,#1b
	db #1c,#1b,#1c,#1b,#1c,#dc,#e1,#1b
	db #1c,#e2,#1c,#e0,#1c,#e1,#1b,#1c
	db #1d,#1e,#e3,#1f,#d0,#e0,#1b,#1c
	db #1b,#1c,#1b,#1c,#1b,#1c,#1b,#1c
	db #1b,#1c,#1e,#1f,#1e,#1f,#1e,#1f
	db #1e,#1f,#1b,#1c,#1b,#1c,#1b,#1c
	db #1b,#1c,#17,#18,#17,#18,#17,#18
	db #17,#18,#1c,#1d,#1c,#1d,#1c,#1d
	db #1c,#1d,#1e,#1f,#1e,#1f,#1e,#1f
	db #1e,#1f,#1e,#1f,#1e,#1f,#1e,#1f
	db #1e,#1f,#1e,#1f,#1e,#1f,#1e,#1f
	db #1e,#1f,#1b,#1c,#1b,#1c,#1b,#1c
.l0deb equ $ + 6
.l0de8 equ $ + 3
	db #1b,#1c,#87,#92,#f4,#87,#92,#00
.l0df4 equ $ + 7
.l0df1 equ $ + 4
.l0dee equ $ + 1
	db #87,#89,#00,#87,#89,#01,#87,#89
	db #02,#87
.l0df7
	db #89,#03,#87
;
.music_info
	db "Fantasy World Dizzy (1989)(Codemasters)(The Oliver Twins)",0
	db "",0

	read "music_end.asm"
