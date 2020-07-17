; Music of Tiger Road (1987)(US Gold)(Jason C. Brooke)()
; Ripped by Megachur the 01/03/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TIGERROA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #7562
FIRST_THEME				equ 0
LAST_THEME				equ 5

	read "music_header.asm"

;
.init_music	; a=0->5
;
	push af
	call l7731
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l7e96
	add hl,bc
	ld a,(hl)
	ld (l7632),a
	ld (l7b32),a
	inc hl
	ld ix,l75bd
	ld c,#22
	ld a,#03
.l7583
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
	jr nz,l7583
	dec a
	ld (l7b33),a
	ld (l7b30),a
	ret
.l75bd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l75df
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l7601
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	call l7b8f
	ld a,(l7b30)
	and a
	jr z,l767d
.l762d equ $ + 1
	ld a,#00
	ld (l7679),a
.l7632 equ $ + 1
	ld a,#01
	ld hl,l7b33
	add (hl)
	ld (hl),a
	jr nc,l7651
	ld b,#00
	ld ix,l75bd
	call l77e9
	ld ix,l75df
	call l77e9
	ld ix,l7601
	call l77e9
.l7651
	ld ix,l75bd
	call l787c
	ld (l794d),hl
	ld (l7955),a
	ld ix,l75df
	call l787c
	ld (l794f),hl
	ld (l7956),a
	ld ix,l7601
	call l787c
	ld (l7951),hl
	ld (l7957),a
.l7679 equ $ + 1
	ld a,#00
	ld (l7953),a
.l767d
	ld a,(l7b30)
	and a
	jr nz,l7693
	ld (l7955),a
	ld (l7956),a
	ld (l7957),a
	ld a,#3f
	ld (l7954),a
	jr l76bb
.l7693
	ld a,(l7b2f)
	and #0f
	xor #0f
	jr z,l76bb
	ld b,a
	ld a,(l7955)
	sub b
	jr nc,l76a4
	xor a
.l76a4
	ld (l7955),a
	ld a,(l7956)
	sub b
	jr nc,l76ae
	xor a
.l76ae
	ld (l7956),a
	ld a,(l7957)
	sub b
	jr nc,l76b8
	xor a
.l76b8
	ld (l7957),a
.l76bb
	ld a,(l7b31)
	and a
	jr z,l76e3
	ld hl,(l795a)
.l76c6 equ $ + 2
	ld (l794d),hl
	ld a,(l7e33)
	ld b,a
	bit 3,a
	jr nz,l76d5
	ld a,(l7960)
	ld (l7953),a
.l76d5
	ld hl,l7954
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l7962)
	ld (l7955),a
.l76e3
	ld hl,l7957
	ld d,#0a
.l76e8
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
	jp p,l76e8
	ret
.l7709
	ld de,#0a00
.l770c
	call l7716
	dec d
	jp p,l770c
	ld de,#073f
.l7716
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
.l7731
;
	xor a
	ld (l7b30),a
	call l7e72
	call l7709
	xor a
	ld (l7955),a
	ld (l7956),a
	ld (l7957),a
	ret
	db #8d,#00,#00,#00,#00,#00,#00,#10
	db #6c,#00,#4f,#39,#00,#7a,#05,#87
	db #88,#8d,#5b
	pop hl
	jp l7731
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
	jr nz,l777f
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l777f
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l77f6
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,l7918
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l77f6
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l7918
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l77f6
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l77f6
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l77f6
	set 1,(ix+#00)
	jr l77f6
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l7825
	jr l7821
	ld (ix+#1f),#ff
	jr l77f6
	ld (ix+#1f),b
	jr l77f6
.l77e9
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l77f6
	ld a,(de)
	inc de
	and a
	jp m,l7849
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l7808
	ld (l762d),a
.l7808
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.l7821
	set 5,(ix+#00)
.l7825
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l7848
	ld a,(l7b31)
	and a
	jr z,l7844
	ld a,(l7e33)
	bit 3,a
	jr z,l7848
.l7844
	ld (ix+#1f),#ff
.l7848
	ret
.l7849
	cp #c0
	jr c,l7874
	add #20
	jr c,l7855
	add #10
	jr c,l785c
.l7855
	inc a
	ld (ix+#11),a
	jp l77f6
.l785c
	ld hl,l7a62
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
	jp l77f6
.l7874
	ld hl,l76c6
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l787c
	ld c,(ix+#00)
	bit 5,c
	jr z,l78ae
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l78a8
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l78a8
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l78a8
	ld a,(ix+#18)
	ld (ix+#13),a
.l78ae
	ld a,(ix+#12)
	add (ix+#20)
	ld hl,l7966
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l790e
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l78d7
	bit 0,c
	jr nz,l78f5
.l78d7
	bit 5,l
	jr nz,l78e7
	sub (ix+#1b)
	jr nc,l78f2
	set 5,(ix+#1d)
	sub a
	jr l78f2
.l78e7
	add (ix+#1b)
	cp b
	jr c,l78f2
	res 5,(ix+#1d)
	ld a,b
.l78f2
	ld (ix+#1c),a
.l78f5
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l7900
	dec d
.l7900
	add #a0
	jr c,l790c
.l7904
	sla e
	rl d
	add #18
	jr nc,l7904
.l790c
	add hl,de
	ex de,hl
.l790e
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.l7918 equ $ + 1
	ld a,#38
	jr nz,l7925
	ld a,(l762d)
	xor #08
	ld (l7679),a
	ld a,#07
.l7925
	ld hl,l7954
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l7948
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l7679),a
.l7948
	ex de,hl
	ld a,(ix+#13)
	ret
.l7954 equ $ + 7
.l7953 equ $ + 6
.l7951 equ $ + 4
.l794f equ $ + 2
.l794d
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l795b equ $ + 6
.l795a equ $ + 5
.l7957 equ $ + 2
.l7956 equ $ + 1
.l7955
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l7962 equ $ + 5
.l7960 equ $ + 3
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l7966
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
	db #0f,#0f,#11,#13,#16,#19,#1b,#1d
	db #1f,#21,#22,#23,#24,#25,#26,#80
	db #00,#03,#87,#00,#04,#87,#00,#03
	db #07,#8c,#00,#04,#07,#8c,#07,#0c
	db #8f,#07,#0c,#90,#03,#07,#8c,#04
	db #07,#8c,#00,#8c,#00,#83,#00,#84
	db #00,#85,#00,#87,#0c,#00,#00,#00
	db #00,#00,#00,#80
.l7a62
	dw l7a7f,l7a84,l7a91,l7aa2
	dw l7aa3,l7aaa,l7ad4,l7ada
	dw l7adb,l7aeb,l7aec,l7af8
	dw l7b09,l7b11
.l7a84 equ $ + 6
.l7a7f equ $ + 1
	db #01,#0e,#0d,#05,#87,#01,#0e,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#03
.l7a91 equ $ + 3
	db #01,#87,#01,#0f,#0e,#0c,#0b,#0d
	db #0c,#0a,#09,#0b,#0a,#08,#07,#09
.l7aa3 equ $ + 5
.l7aa2 equ $ + 4
	db #08,#06,#05,#87,#01,#0f,#0e,#0d
.l7aaa equ $ + 4
	db #0c,#0b,#87,#02,#0f,#0e,#0d,#0c
	db #0b,#0d,#0c,#0b,#0a,#09,#0b,#0a
	db #09,#08,#07,#09,#08,#07,#06,#05
	db #07,#06,#05,#04,#03,#05,#04,#03
	db #02,#01,#04,#03,#02,#01,#03,#02
.l7ad4 equ $ + 6
	db #01,#02,#01,#00,#87,#01,#0e,#0d
.l7adb equ $ + 5
.l7ada equ $ + 4
	db #0c,#0b,#0a,#87,#05,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l7aec equ $ + 6
.l7aeb equ $ + 5
	db #04,#03,#02,#01,#87,#01,#0e,#0d
	db #0c,#0b,#0a,#09,#0b,#0a,#09,#08
.l7af8 equ $ + 2
	db #87,#02,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l7b09 equ $ + 3
	db #01,#87,#03,#0e,#0d,#0c,#0b,#0a
.l7b11 equ $ + 3
	db #09,#87,#01,#0a,#0b,#0c,#0d,#0e
	db #0d,#0d,#0c,#0c,#0c,#0c,#0b,#0b
	db #0b,#0b,#0a,#0a,#0a,#0a,#09,#09
	db #09,#09,#08,#08,#08,#07,#06,#87
.l7b33 equ $ + 5
.l7b32 equ $ + 4
.l7b31 equ $ + 3
.l7b30 equ $ + 2
.music_end equ $ + 2
.l7b2f equ $ + 1
	db #00,#0f,#00,#00,#00,#00
	ld hl,l7b31
	ld (hl),#00
	ld hl,l7c49
	add a
	add l
	ld l,a
	jr nc,l7b42
	inc h
.l7b42
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l7e2d
.l7b4a
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l7b4a
	ld a,(l7e2e)
	ld (l7e3b),a
	ld hl,(l7e2f)
	ld (l795a),hl
	ld a,(l7e33)
	bit 3,a
	jr nz,l7b67
	ld a,l
	ld (l7960),a
.l7b67
	ld a,(l7e38)
	ld (l7e3c),a
	ld a,(l7e3a)
	ld (l7e41),a
	ld a,(l7e37)
	ld hl,l7da9
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l7e3d),hl
	ld (l7e3f),hl
	ld a,(hl)
	ld (l7962),a
	ld hl,l7b31
	inc (hl)
	ret
.l7b8f
	call l7e77
	ld a,(l7b31)
	and a
	ret z
	ld a,(l7e2d)
	and a
	jr nz,l7ba7
	ld a,(l7e39)
	and a
	jr nz,l7ba7
	ld (l7b31),a
	ret
.l7ba7
	dec a
	ld (l7e2d),a
	ld a,(l7e3b)
	and a
	jr nz,l7bdf
	ld a,(l7e39)
	and a
	jr nz,l7bbd
	ld a,(l7e36)
	and a
	jr z,l7c21
.l7bbd
	dec a
	ld (l7e36),a
	ld a,(l7e2e)
	ld (l7e3b),a
	ld a,(l7e34)
	and a
	jr z,l7bd0
	ld a,(l7e92)
.l7bd0
	ld b,a
	ld a,(l7e2f)
	add b
	ld (l795a),a
	ld a,(l7e30)
	add b
	ld (l795b),a
.l7bdf
	ld hl,l7e3b
	dec (hl)
	ld hl,l7e3a
	ld a,(hl)
	and a
	jr z,l7bf1
	ld hl,l7e41
	dec (hl)
	jr nz,l7c14
	ld (hl),a
.l7bf1
	ld a,(l7e35)
	and a
	jr z,l7c14
	jp p,l7c07
	ld hl,(l795a)
	ld de,(l7e31)
	add hl,de
	ld (l795a),hl
	jr l7c14
.l7c07
	ld hl,(l795a)
	ld de,(l7e31)
	and a
	sbc hl,de
	ld (l795a),hl
.l7c14
	ld a,(l7e33)
	bit 3,a
	jr nz,l7c21
	ld a,(l795a)
	ld (l7960),a
.l7c21
	ld a,(l7e3c)
	dec a
	ld (l7e3c),a
	jr nz,l7c48
	ld a,(l7e38)
	ld (l7e3c),a
	ld hl,(l7e3f)
	ld a,(hl)
	inc hl
	and a
	jp p,l7c42
	cp #80
	jr nz,l7c48
	ld hl,(l7e3d)
	ld a,(hl)
	inc hl
.l7c42
	ld (l7e3f),hl
	ld (l7962),a
.l7c48
	ret
.l7c49
	dw l7c75,l7c83,l7c91,l7c9f
	dw l7cad,l7cbb,l7cc9,l7cd7
	dw l7ce5,l7cf3,l7d01,l7d0f
	dw l7d1d,l7d2b,l7d39,l7d47
	dw l7d55,l7d63,l7d71,l7d7f
	dw l7d8d,l7d9b
.l7c75
	db #32,#ff,#80,#00,#01,#04,#fe,#00
.l7c83 equ $ + 6
	db #01,#63,#00,#03,#00,#00,#28,#1f
	db #1f,#00,#01,#00,#f7,#00,#01,#00
.l7c91 equ $ + 4
	db #00,#05,#00,#00,#28,#1f,#1f,#00
	db #01,#00,#f6,#00,#01,#00,#00,#05
.l7c9f equ $ + 2
	db #00,#00,#46,#0f,#08,#00,#01,#00
	db #f7,#00,#ff,#00,#00,#04,#00,#00
.l7cad
	db #1e,#03,#91,#00,#15,#00,#f6,#00
.l7cbb equ $ + 6
	db #ff,#ff,#00,#02,#00,#00,#14,#63
	db #05,#00,#01,#00,#f7,#00,#ff,#63
.l7cc9 equ $ + 4
	db #01,#01,#00,#00,#0a,#14,#70,#00
	db #28,#00,#fe,#00,#ff,#63,#07,#01
.l7cd7 equ $ + 2
	db #00,#00,#1e,#06,#c0,#00,#12,#00
	db #f6,#00,#ff,#63,#02,#ff,#00,#00
.l7ce5
	db #0f,#06,#f0,#00,#17,#00,#fe,#00
.l7cf3 equ $ + 6
	db #ff,#63,#04,#01,#00,#00,#3c,#06
	db #81,#00,#24,#00,#f6,#00,#ff,#63
.l7d01 equ $ + 4
	db #00,#04,#00,#00,#11,#05,#c8,#00
	db #20,#00,#f6,#00,#ff,#63,#00,#02
.l7d0f equ $ + 2
	db #00,#00,#32,#07,#08,#00,#02,#00
	db #f7,#00,#ff,#00,#00,#03,#00,#00
.l7d1d
	db #0a,#63,#f0,#00,#21,#00,#fe,#00
.l7d2b equ $ + 6
	db #ff,#63,#00,#08,#00,#00,#3c,#0a
	db #04,#00,#02,#00,#f7,#00,#ff,#00
.l7d39 equ $ + 4
	db #05,#07,#00,#00,#0a,#14,#70,#00
	db #28,#00,#f6,#00,#ff,#63,#07,#01
.l7d47 equ $ + 2
	db #00,#00,#0f,#14,#11,#00,#31,#00
	db #fe,#00,#ff,#63,#00,#02,#00,#00
.l7d55
	db #32,#09,#0f,#00,#04,#00,#f6,#00
.l7d63 equ $ + 6
	db #01,#0a,#00,#06,#00,#00,#0f,#05
	db #02,#02,#c9,#00,#f6,#00,#ff,#ff
.l7d71 equ $ + 4
	db #00,#03,#00,#00,#1e,#05,#12,#00
	db #4b,#00,#fe,#00,#ff,#ff,#00,#03
.l7d7f equ $ + 2
	db #00,#00,#1e,#04,#0f,#00,#02,#00
	db #f7,#00,#01,#ff,#01,#02,#00,#00
.l7d8d
	db #1e,#63,#b7,#00,#11,#00,#f6,#00
.l7d9b equ $ + 6
	db #ff,#63,#05,#02,#00,#00,#28,#05
	db #d0,#00,#03,#00,#f7,#00,#ff,#63
	db #00,#03,#00,#00
.l7da9
	dw l7db9,l7dc9,l7de1,l7de3
	dw l7df9,l7e0a,l7e19,l7e1b
.l7db9
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l7dc9
	db #08,#09,#0a,#0b,#0c,#0d,#0e,#0e
	db #0f,#0f,#0f,#0f,#0f,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0b,#0a,#09,#80
.l7de3 equ $ + 2
.l7de1
	db #0e,#80,#07,#08,#09,#09,#08,#07
	db #08,#09,#0a,#09,#08,#08,#07,#07
	db #08,#07,#08,#07,#08,#07,#07,#80
.l7df9
	db #0d,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
.l7e0a equ $ + 1
	db #80,#0a,#0c,#0e,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#ff
.l7e1b equ $ + 2
.l7e19
	db #0b,#80,#0f,#0f,#0e,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l7e30 equ $ + 7
.l7e2f equ $ + 6
.l7e2e equ $ + 5
.l7e2d equ $ + 4
	db #03,#02,#01,#ff,#00,#00,#00,#00
.l7e38 equ $ + 7
.l7e37 equ $ + 6
.l7e36 equ $ + 5
.l7e35 equ $ + 4
.l7e34 equ $ + 3
.l7e33 equ $ + 2
.l7e31
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7e3f equ $ + 6
.l7e3d equ $ + 4
.l7e3c equ $ + 3
.l7e3b equ $ + 2
.l7e3a equ $ + 1
.l7e39
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7e41
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
	call l7e72
	jp l7709
.l7e72
	xor a
	ld (l7b31),a
	ret
.l7e77
	ld a,(l7e92)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l7e95
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l7e95 equ $ + 3
.l7e92
	db #ff,#80,#1b,#34
.l7e96
	db #24
	dw l7ec4,l7ec0,l7ec8
	db #30
	dw l7f2b,l7f27,l7f2f
	db #28
	dw l7fae,l7faa,l7fb2
	db #14
	dw l8074,l8070,l8078
	db #2c
	dw l80ae,l80aa,l80b2
	db #36
	dw l80f7,l80f3,l80fb
.l7ec4 equ $ + 4
.l7ec0
	dw l7ecc,#0000,l7eea,#0000
.l7ec8
	dw l7f09,#0000
.l7ecc
	db #8a,#88,#01,#01,#d2,#e0,#20,#20
	db #d4,#e3,#20,#e2,#1b,#e1,#1b,#e0
	db #1b,#e2,#1e,#e1,#1e,#e0,#1e,#e2
.l7eea equ $ + 6
	db #1b,#19,#d8,#e8,#1b,#8e,#8a,#88
	db #01,#01,#90,#d2,#e0,#27,#27,#d4
	db #e3,#27,#e2,#22,#e1,#22,#e0,#22
	db #e2,#22,#e1,#22,#e0,#22,#e2,#22
.l7f09 equ $ + 5
	db #20,#d8,#e8,#20,#8e,#8a,#88,#01
	db #01,#d2,#e0,#2c,#2c,#d4,#e3,#2c
	db #e2,#27,#e1,#27,#e0,#27,#e2,#2a
	db #e1,#29,#e0,#29,#e2,#27,#25,#d8
	db #e8,#0f,#8e
.l7f2b equ $ + 4
.l7f27
	dw l7f33,#0000,l7f79,#0000
.l7f2f
	dw l7f89,#0000
.l7f33
	db #8a,#88,#01,#01,#d4,#e0,#14,#14
	db #e1,#14,#e2,#0f,#e1,#14,#14,#e0
	db #14,#0f,#0f,#12,#13,#e0,#14,#14
	db #e1,#14,#e2,#0f,#e1,#14,#14,#e0
	db #14,#0f,#0f,#12,#13,#e0,#12,#12
	db #e1,#12,#e2,#0d,#e1,#12,#12,#e0
	db #12,#0d,#0d,#10,#11,#e0,#12,#12
	db #e1,#12,#e2,#0d,#e1,#12,#12,#e0
.l7f79 equ $ + 6
	db #12,#0d,#0d,#10,#11,#87,#8a,#88
	db #01,#01,#90,#d2,#e0,#27,#27,#e1
.l7f89 equ $ + 6
	db #27,#e2,#27,#e8,#27,#87,#8a,#88
	db #01,#01,#d2,#e0,#2e,#2e,#e1,#2e
	db #e2,#2c,#e8,#2e,#e0,#2e,#2e,#e1
	db #2e,#e2,#2c,#e1,#2e,#da,#e0,#42
	db #3f,#3d,#3a,#38,#36,#38,#87
.l7fae equ $ + 4
.l7faa
	dw l7fb6,#0000,l7fca,#0000
.l7fb2
	dw l800c,#0000
.l7fb6
	db #8a,#88,#01,#01,#d4,#e1,#15,#15
	db #e0,#13,#e1,#13,#15,#15,#13,#e0
.l7fca equ $ + 4
	db #13,#13,#13,#87,#e0,#8b,#d1,#e0
	db #8d,#3f,#d0,#41,#41,#41,#d1,#8d
	db #27,#d0,#41,#41,#41,#d1,#8d,#3f
	db #d0,#41,#41,#41,#d2,#8a,#8d,#48
	db #8b,#d0,#41,#41,#41,#8b,#d1,#e0
	db #8d,#3f,#d0,#41,#41,#41,#d1,#8d
	db #27,#d0,#41,#41,#41,#d1,#8d,#3f
	db #d0,#41,#41,#41,#d2,#8a,#8d,#43
.l800c equ $ + 6
	db #8b,#d0,#41,#41,#41,#87,#e3,#80
	db #8a,#88,#01,#01,#dc,#e3,#1f,#24
	db #2b,#ed,#28,#e0,#26,#28,#e1,#2b
	db #28,#e0,#26,#e1,#28,#fc,#21,#e3
	db #1f,#24,#2b,#ed,#28,#e0,#2f,#2f
	db #e2,#30,#2b,#f9,#2d,#d4,#e0,#2d
	db #2b,#2d,#30,#2d,#2b,#2d,#e1,#34
	db #e0,#30,#32,#30,#2d,#2b,#2d,#39
	db #37,#34,#37,#32,#34,#30,#32,#30
	db #2d,#2b,#2d,#2d,#2b,#28,#26,#d8
	db #ee,#28,#e1,#2b,#e7,#26,#e3,#24
	db #26,#28,#2b,#30,#2b,#d4,#e0,#2d
	db #2b,#28,#2b,#28,#26,#24,#26,#f7
	db #21,#87
.l8074 equ $ + 4
.l8070
	dw l807c,#0000,l8085,#0000
.l8078
	dw l8091,#0000
.l807c
	db #8a,#88,#01,#01,#db,#e1,#3e,#3f
.l8085 equ $ + 1
	db #87,#8a,#88,#01,#01,#db,#e0,#8f
.l8091 equ $ + 5
	db #e1,#3d,#e0,#3c,#87,#8a,#88,#01
	db #01,#ef,#80,#e0,#d6,#32,#31,#33
	db #30,#32,#31,#33,#30,#32,#31,#33
	db #30,#32,#31,#33,#30,#87
.l80ae equ $ + 4
.l80aa
	dw l80b6,#0000,l80c9,#0000
.l80b2
	dw l80de,#0000
.l80b6
	db #8a,#88,#01,#01,#db,#e0,#20,#1b
	db #1e,#19,#1b,#17,#19,#16,#17,#16
.l80c9 equ $ + 3
	db #e7,#14,#8e,#8a,#88,#01,#01,#db
	db #e0,#92,#18,#20,#1b,#1e,#19,#1b
	db #17,#19,#16,#17,#16,#e7,#14,#8e
.l80de
	db #8a,#88,#01,#01,#db,#e0,#92,#13
	db #20,#1b,#1e,#19,#1b,#17,#19,#16
	db #17,#16,#e7,#25,#8e
.l80f7 equ $ + 4
.l80f3
	dw l80ff,#0000,l815c,#0000
.l80fb
	dw l81bc,#0000
.l80ff
	db #8a,#88,#01,#01,#d4,#e1,#1f,#e3
	db #22,#1f,#22,#22,#e1,#22,#22,#d8
	db #e7,#22,#db,#e1,#27,#27,#d8,#e5
	db #29,#da,#e2,#0c,#15,#1e,#27,#30
	db #39,#42,#d1,#e1,#33,#33,#e0,#30
	db #33,#e1,#30,#e0,#2e,#30,#e1,#2e
	db #2b,#29,#e1,#33,#33,#e0,#30,#33
	db #e1,#30,#e0,#2e,#30,#e1,#2e,#2b
	db #29,#e1,#35,#e0,#35,#33,#e1,#30
	db #2e,#e1,#35,#e0,#35,#33,#e1,#30
	db #2e,#e1,#35,#e0,#35,#33,#e1,#30
.l815c equ $ + 5
	db #2e,#ef,#d8,#30,#87,#8a,#88,#01
	db #01,#d4,#e1,#22,#e3,#27,#22,#27
	db #27,#e1,#27,#25,#d8,#e7,#27,#db
	db #e1,#2b,#2b,#d8,#e5,#2d,#da,#e0
	db #8f,#e2,#0f,#18,#21,#2a,#33,#3c
	db #e1,#45,#d1,#e1,#2e,#2e,#e0,#2b
	db #2e,#e1,#2b,#e0,#29,#2b,#e1,#29
	db #26,#24,#e1,#2e,#2e,#e0,#2b,#2e
	db #e1,#2b,#e0,#29,#2b,#e1,#29,#26
	db #24,#e1,#30,#e0,#30,#2e,#e1,#2b
	db #29,#e1,#30,#e0,#30,#2e,#e1,#2b
	db #29,#e1,#30,#e0,#30,#2e,#e1,#2b
.l81bc equ $ + 5
	db #29,#ef,#d8,#2b,#87,#8a,#88,#01
	db #01,#d4,#90,#e1,#27,#e3,#29,#27
	db #29,#2b,#e1,#2e,#2c,#d8,#e7,#2e
	db #db,#e1,#2e,#2e,#d8,#e5,#30,#da
	db #91,#e1,#8f,#e2,#12,#1b,#24,#2d
	db #36,#3f,#e0,#48,#dd,#e3,#27,#24
	db #27,#22,#27,#2b,#2e,#2b,#35,#e1
	db #33,#2e,#e3,#35,#e1,#33,#2e,#e3
	db #35,#e1,#33,#2e,#ef,#d8,#3c,#87
;
.music_info
	db "Tiger Road (1987)(US Gold)(Jason C. Brooke)",0
	db "",0

	read "music_end.asm"
