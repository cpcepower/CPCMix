; Music of Aliens (1986)(Electric Dreams)()()
; Ripped by Megachur the 24/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ALIENS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #3400
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

.l3400
	jp l3460
.l3403
	db #ff
.l3404
	db #ff
.l3405
	db #ff
.l3406
	di
	ld hl,l35fd
	ld (l35ec),hl
	ld (l35f0),hl
	ld (l35f4),hl
	ld (l35f8),hl
	ld a,#08
	dec a
	ld (l35dd),a
	xor a
	ld (l35fc),a
	ld a,#f3
	ld (l3400),a
	ei
	ret
;
.stop_music
;
	ld a,#c9
	ld (l3400),a
	ld de,#073f
	jp l38dd
;
.init_ingame
;
	ld hl,l3586
	push hl
	ld hl,l35aa
	ld de,l3a32
	jr l3448
;
.init_intro
;
	ld hl,l3598
	push hl
	ld hl,l35bb
	ld de,l3daa
.l3448
	di
	ld (l370d),de
	ld de,l35ec
	ld bc,#0011
	ldir
	pop hl
	ld de,l3574
	ld bc,#0012
	ldir
	jr l3406
;
.play_music
.l3460
;
	ld a,(l3405)
	inc a
	jr z,l34c1
	ld (l3405),a
	sub #14
	ld b,a
	jr nc,l3491
	ld a,(l35d6)
	set 5,a
	res 2,a
	ld (l35d6),a
	ld hl,l35d3
	ld a,b
	sub #dc
	ld (hl),a
	xor a
	inc hl
	ld (hl),a
	ld hl,l35d9
	ld a,#0f
	ld (hl),a
	ld e,#04
	ld b,#07
	call l38fe
	jr l34bc
.l3491
	cp #0f
	jr nz,l34a0
	ld a,#ff
	ld (l3405),a
	xor a
	ld (l35d9),a
	jr l34c1
.l34a0
	rlca
	ld (l35d5),a
	ld a,(l35d6)
	set 2,a
	res 5,a
	ld (l35d6),a
	ld a,(l35d9)
	dec a
	ld (l35d9),a
	ld e,#06
	ld b,#05
	call l38fe
.l34bc
	ld a,(l3403)
	inc a
	ret z
.l34c1
	ld a,(l3403)
	inc a
	jp z,l363b
	ret
	dec a
	ld b,a
	ld a,(l3404)
	cp b
	ret z
	ld a,b
	ld (l3404),a
	ld a,(l35d6)
	and #24
	or #18
	ld hl,l35d7
	ld a,#10
	ld (hl),a
	inc hl
	ld (hl),a
	inc hl
	inc hl
	xor a
	ld (hl),a
	inc hl
	ld a,b
	and #07
	ld (hl),a
	ld a,#08
	inc hl
	ld (hl),a
	ld a,b
	rrca
	rrca
	rrca
	ld c,#01
	ld hl,l35cf
	ld (hl),a
	inc hl
	ld (hl),c
	inc hl
	dec a
	ld (hl),a
	inc hl
	ld (hl),c
	ld e,#00
	ld b,#0e
	jp l38fe
.l3508
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#0000
.l3574
	db #06,#04,#1a,#04,#1f,#08,#09,#70
	db #1f,#70,#0a,#07,#11,#07,#1c,#07
	db #1e,#20
.l3586
	db #06,#04,#1a,#04,#1f,#08,#09,#70
	db #1f,#70,#0a,#07,#11,#07,#1c,#07
	db #1e,#20
.l3598
	db #04,#50,#1f,#50,#02,#20,#15,#20
	db #01,#60,#1d,#60,#1d,#0d,#1a,#0d
	db #00,#03
.l35aa
	db #fd,#35,#3e,#39,#fd,#35,#7b,#39
	db #fd,#35,#b8,#39,#fd,#35,#f5,#39
	db #00
.l35bb
	db #fd,#35,#3a,#3d,#fd,#35,#56,#3d
	db #fd,#35,#72,#3d,#fd,#35,#8e,#3d
	db #00
.l35cc
	db #09,#09,#09
.l35cf
	db #f6,#02,#f7,#02
.l35d9 equ $ + 6
.l35d7 equ $ + 4
.l35d6 equ $ + 3
.l35d5 equ $ + 2
.l35d3
	db #f8,#02,#00,#38,#09,#09,#09,#00
.l35e1 equ $ + 6
.l35de equ $ + 3
.l35dd equ $ + 2
	db #00,#00,#04,#00,#00,#00,#00,#00
.l35e5 equ $ + 2
.l35e4 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l35f0 equ $ + 5
.l35ec equ $ + 1
.l35eb
	db #00,#3e,#39,#3e,#39,#7b,#39,#7b
.l35f8 equ $ + 5
.l35f4 equ $ + 1
	db #39,#b8,#39,#b8,#39,#f5,#39,#f5
.l3602 equ $ + 7
.l3601 equ $ + 6
.l3600 equ $ + 5
.l35ff equ $ + 4
.l35fd equ $ + 2
.l35fc equ $ + 1
	db #39,#01,#ff,#ff,#04,#04,#04,#00
.l3603
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #05,#0a,#0b,#0a,#08,#07,#06,#05
	db #08,#0c,#0e,#0e,#0d,#0b,#09,#04
	db #0a,#0d,#0f,#0e,#0d,#0c,#0b,#0a
	db #0d,#0c,#0b,#0a,#09,#07,#05,#03
	db #0e,#0b,#08,#05,#0c,#09,#06,#03
	db #06,#04,#02,#04,#06,#04,#02,#04
.l363b
	ld a,(l35dd)
	inc a
	ld (l35dd),a
	cp #08
	call z,l3662
	xor a
	call l390d
	ld a,#01
	call l390d
	ld a,#02
	call l390d
	call l388d
	call l38b0
	ld e,#00
	ld b,#06
	jp l38fe
.l3662
	ld hl,l35d6
	ld b,#3f
	ld (hl),b
	inc hl
	ld b,#00
	call l37e9
	ld hl,l35dd
	ld (hl),b
	inc hl
	call l37e9
	ld hl,l35e4
	ld (hl),b
	inc hl
	call l37e9
	inc hl
	call l37e9
	ld hl,l35f8
	call l36f4
	call l37ad
	ld hl,l35ec
	call l36f4
	ld (l35ff),a
	ld c,#01
	call l3730
	ld hl,l35f0
	call l36f4
	ld (l3600),a
	ld c,#02
	call l3730
	ld hl,l35f4
	call l36f4
	ld (l3601),a
	ld c,#03
	call l3730
	call l3828
	ld hl,l35cf
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l36e5
	inc hl
	inc hl
	call l36e5
	dec hl
	dec hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l36e5
	ld e,#00
	ld b,#0b
	call l38fe
	ld a,(l35fc)
	inc a
.l36db
	ld (l35fc),a
	cp #08
	ret nz
	xor a
	jr l36db
	ret
.l36e5
	ld a,(hl)
	cp e
	ret nz
	inc hl
	ld a,(hl)
	dec hl
	cp d
	ret nz
	inc de
	ld (hl),e
	inc hl
	ld (hl),d
	dec hl
	dec de
	ret
.l36f4
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(l35fc)
	cp #00
	jr nz,l36ff
	inc de
.l36ff
	ld a,(de)
	cp #ff
	jp z,l3728
	ld (hl),d
	dec hl
	ld (hl),e
	dec a
	ld l,a
	ld h,#00
.l370d equ $ + 1
	ld de,#3a32
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,de
	ld a,(l35fc)
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	ld b,a
	add a
	ld e,a
	ld hl,l3508
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ex de,hl
	ld a,b
	ret
.l3728
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	dec hl
	jr l36ff
.l3730
	ld a,b
	cp #36
	jp nc,l3773
	ld a,l
	or h
	ret z
	ld a,c
	push hl
	add a
	dec a
	ld hl,l35cf
	ld d,#00
	ld e,a
	add hl,de
	pop de
	ld (hl),e
	dec hl
	ld (hl),d
	ld hl,l35e1
	ld e,c
	ld d,#00
	dec e
	add hl,de
	ld a,(hl)
	dec hl
	dec hl
	dec hl
	ld (hl),a
	ld hl,l35cc
	add hl,de
	ld a,(hl)
	ld hl,l35d7
	add hl,de
	ld (hl),a
	ld hl,l35d6
	dec c
	jp nz,l3768
	res 0,(hl)
.l3768
	dec c
	jp nz,l376e
	res 1,(hl)
.l376e
	dec c
	ret nz
	res 2,(hl)
	ret
.l3773
	ld a,h
	ld (l35d5),a
	ld a,l
	and #f0
	cp #00
	jp z,l379e
	rrca
	rrca
	rrca
	rrca
.l3783
	ld hl,l35de
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	ld hl,l35d6
	dec c
	jr nz,l3795
	res 3,(hl)
	ret
.l3795
	dec c
	jr nz,l379b
	res 4,(hl)
	ret
.l379b
	res 5,(hl)
	ret
.l379e
	ld a,l
	and #0f
	ld hl,l35d7
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	xor a
	jr l3783
.l37ad
	ld a,b
	and #03
	ld c,a
	ld a,b
	bit 2,b
	jr nz,l37bc
	bit 3,b
	jp nz,l37ef
	ret
.l37bc
	bit 3,b
	jp nz,l3804
	and #f0
	rrc a
	rrc a
	rrc a
	rrc a
	ld b,a
	xor a
	cp c
	jr z,l37de
	ld hl,l35cc
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),b
	ld b,#00
	jp l3818
.l37de
	ld hl,l35cc
	call l37e9
	ld b,#00
	jp l3822
.l37e9
	ld (hl),b
	inc hl
	ld (hl),b
	inc hl
	ld (hl),b
	ret
.l37ef
	ld a,c
	ld (l35eb),a
	ld a,#e0
	and b
	rlca
	rlca
	rlca
	bit 4,b
	ld b,a
	jr z,l3800
	cpl
	inc a
.l3800
	ld (l35e4),a
	ret
.l3804
	and #e0
	bit 4,b
	jr z,l380e
	ld (l3602),a
	ret
.l380e
	rlca
	rlc a
	rlc a
	ld b,a
	xor a
	cp c
	jr z,l3822
.l3818
	ld d,#00
	ld e,c
	ld hl,l35e1
	add hl,de
	dec hl
	ld (hl),b
	ret
.l3822
	ld hl,l35e1
	jp l37e9
.l3828
	ld hl,l35e4
	xor a
	cp (hl)
	ret z
	ld d,a
	ld c,a
	ld b,(hl)
	ld a,(l35eb)
	ld ix,l35cf
	ld hl,l35ff
	cp d
	jr z,l3848
	dec a
	ld e,a
	add hl,de
	add a
	ld e,a
	add ix,de
	jp l385c
.l3848
	call l385c
	inc ix
	inc ix
	ld hl,l3600
	call l385c
	inc ix
	inc ix
	ld hl,l3601
.l385c
	ld a,(hl)
	add b
	add a
	ld e,a
	ld d,#00
	ld hl,l3508
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#00)
	ld h,(ix+#01)
	ex de,hl
	xor a
	sbc hl,de
	add hl,hl
	ld a,l
	ld l,h
	ld h,a
	xor a
	push bc
	ld b,#04
.l387b
	xor c
	rr h
	rr l
	rr a
	djnz l387b
	or h
	ld (ix+#16),a
	ld (ix+#17),l
	pop bc
	ret
.l388d
	ld hl,l35cf
	ld de,l35e5
	ld b,#03
.l3895
	ld a,(hl)
	push hl
	inc hl
	ld h,(hl)
	ld l,a
	ex de,hl
	ld a,(hl)
	inc hl
	push hl
	ld h,(hl)
	ld l,a
	add hl,de
	jr nc,l38a4
	inc hl
.l38a4
	ld c,h
	ld a,l
	pop de
	inc de
	pop hl
	ld (hl),a
	inc hl
	ld (hl),c
	inc hl
	djnz l3895
	ret
.l38b0
	ld hl,l35cf
	ld a,(l3602)
	ld c,a
	bit 5,c
	call nz,l38c8
	inc hl
	inc hl
	bit 6,c
	call nz,l38c8
	inc hl
	inc hl
	bit 7,c
	ret z
.l38c8
	ld a,(l35dd)
	ld e,(hl)
	inc hl
	ld d,(hl)
	rrca
	rrca
	rrca
	dec de
	dec de
	jr nc,l38d9
	inc de
	inc de
	inc de
	inc de
.l38d9
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l38dd
	push bc
	ld b,#f4
	out (c),d
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),e
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	inc d
	ret
.l38fe
	ld hl,l35cf
	ld d,#00
	add hl,de
	ld d,e
.l3905
	ld e,(hl)
	inc hl
	call l38dd
	djnz l3905
	ret
.l390d
	ld hl,l35d7
	ld c,a
	ld e,a
	ld d,#00
	add hl,de
	ex de,hl
	ld hl,#0007
	add hl,de
	ld a,(hl)
	cp #00
	ret z
	push de
	ld hl,l3603
	dec a
	rla
	rla
	rla
	ld d,#00
	ld e,a
	add hl,de
	ld a,(l35dd)
	ld e,a
	add hl,de
	ld a,(hl)
	pop hl
	ld b,(hl)
	cp b
	ret z
	ld (hl),a
	ld a,c
	add #08
	ld e,a
	ld b,#01
	jp l38fe
;&393e
	db #03,#03,#03,#03,#03,#04,#04,#04
	db #05,#06,#04,#03,#03,#07,#07,#03
	db #03,#03,#08,#09,#02,#0a,#0b,#0c
	db #0d,#0e,#0f,#10,#11,#02,#02,#12
	db #03,#03,#04,#04,#04,#04,#04,#04
	db #03,#03,#11,#13,#14,#02,#05,#05
	db #03,#03,#15,#15,#16,#17,#18,#18
	db #17,#03,#03,#03,#ff,#03,#19,#1a
	db #1b,#1c,#04,#04,#04,#04,#04,#04
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#1d,#1e,#0e,#1f,#0e,#08
	db #20,#21,#22,#02,#12,#03,#03,#04
	db #04,#04,#04,#04,#04,#03,#03,#03
	db #05,#05,#05,#23,#05,#24,#03,#25
	db #26,#27,#28,#29,#2a,#2b,#2c,#2d
	db #2e,#ff,#03,#03,#03,#03,#03,#02
	db #02,#10,#2f,#30,#31,#10,#2f,#02
	db #11,#02,#32,#32,#32,#33,#10,#02
	db #0b,#0a,#0d,#34,#35,#36,#21,#35
	db #10,#10,#37,#38,#39,#02,#3a,#3b
	db #3c,#02,#10,#10,#3d,#3e,#05,#3f
	db #05,#05,#03,#03,#03,#03,#40,#17
	db #17,#17,#17,#03,#03,#03,#ff,#41
	db #42,#43,#01,#01,#41,#44,#45,#46
	db #47,#01,#45,#48,#01,#01,#01,#49
	db #01,#4a,#4b,#45,#4c,#4d,#4e,#4f
	db #01,#01,#01,#01,#50,#45,#51,#01
	db #01,#52,#01,#01,#01,#01,#53,#54
	db #55,#56,#57,#58,#59,#01,#5a,#5b
	db #5c,#01,#01,#5d,#5e,#5f,#5f,#60
	db #5a,#01,#61,#ff
;org #3a32
.l3a32
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#02,#03,#04,#05,#06,#07,#07
	db #04,#03,#04,#03,#04,#03,#04,#03
	db #37,#37,#37,#37,#37,#37,#37,#37
	db #10,#17,#1c,#3a,#37,#04,#04,#04
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #13,#13,#13,#13,#13,#13,#13,#13
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #35,#26,#26,#26,#2b,#2b,#2d,#2d
	db #2f,#2f,#2f,#2f,#2f,#2f,#2f,#2f
	db #36,#36,#36,#36,#36,#36,#36,#36
	db #35,#35,#35,#35,#04,#04,#04,#04
	db #01,#01,#01,#01,#01,#01,#01,#35
	db #04,#06,#05,#0a,#30,#2f,#2e,#2d
	db #06,#03,#06,#03,#06,#03,#06,#03
	db #08,#08,#08,#08,#09,#09,#09,#09
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#06,#05,#04,#05
	db #35,#35,#35,#35,#39,#35,#35,#35
	db #2f,#23,#17,#2f,#23,#17,#01,#01
	db #35,#35,#35,#35,#3a,#35,#35,#35
	db #39,#35,#35,#35,#35,#35,#35,#35
	db #04,#07,#07,#07,#07,#07,#07,#07
	db #36,#38,#36,#38,#35,#35,#35,#35
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #35,#19,#19,#19,#1c,#1c,#1c,#1c
	db #1f,#1f,#1f,#1f,#22,#22,#22,#22
	db #23,#23,#23,#23,#27,#27,#27,#27
	db #37,#35,#35,#36,#36,#37,#35,#35
	db #39,#04,#04,#04,#04,#04,#04,#04
	db #28,#35,#28,#35,#35,#35,#35,#35
	db #1c,#35,#1c,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#08,#08,#08,#08
	db #08,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #2e,#2d,#2c,#2b,#2a,#29,#28,#27
	db #26,#25,#24,#23,#22,#21,#20,#1f
	db #1e,#1d,#1d,#1d,#1d,#1d,#1d,#1d
	db #10,#0f,#10,#0f,#1c,#1b,#1c,#1b
	db #36,#36,#36,#36,#39,#37,#35,#35
	db #2f,#35,#2f,#35,#2f,#35,#2f,#35
	db #2f,#2f,#2f,#2f,#35,#35,#35,#35
	db #35,#35,#3a,#35,#35,#39,#35,#35
	db #35,#35,#35,#39,#39,#35,#35,#35
	db #2f,#2f,#2e,#2e,#2f,#2f,#2b,#2b
	db #2b,#2b,#2b,#2b,#2b,#2b,#2b,#2b
	db #35,#1b,#1b,#1b,#1f,#1f,#21,#21
	db #23,#23,#23,#23,#23,#23,#23,#23
	db #19,#19,#19,#19,#1c,#1c,#1c,#1c
	db #2f,#2f,#35,#35,#35,#35,#35,#35
	db #35,#35,#37,#36,#37,#36,#36,#35
	db #35,#35,#35,#35,#35,#35,#36,#36
	db #35,#35,#39,#35,#39,#35,#35,#35
	db #0e,#0f,#0e,#35,#35,#35,#37,#35
	db #37,#39,#35,#35,#35,#35,#35,#35
	db #2f,#2f,#2f,#2f,#2f,#2f,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#01
	db #35,#35,#35,#35,#35,#35,#39,#39
	db #08,#08,#08,#08,#01,#01,#01,#01
	db #94,#a4,#b4,#c4,#b4,#a4,#84,#64
	db #5c,#00,#2b,#00,#00,#00,#3b,#00
	db #3c,#00,#00,#00,#00,#00,#00,#00
	db #3c,#00,#59,#00,#00,#00,#29,#00
	db #a7,#57,#97,#47,#77,#27,#57,#17
	db #47,#17,#27,#17,#00,#00,#00,#1c
	db #29,#29,#29,#29,#29,#29,#3c,#00
	db #47,#17,#27,#17,#00,#00,#00,#00
	db #37,#00,#00,#00,#00,#00,#00,#00
	db #1c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#35,#00,#00,#00,#00
	db #6a,#00,#00,#00,#00,#00,#00,#00
	db #67,#00,#00,#00,#00,#00,#00,#00
	db #5c,#00,#00,#00,#00,#00,#00,#1c
	db #74,#00,#00,#00,#00,#00,#00,#00
	db #9c,#00,#00,#00,#00,#00,#00,#00
	db #44,#17,#37,#17,#27,#17,#dc,#00
	db #54,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#5c
	db #f7,#97,#e7,#87,#c7,#77,#b7,#77
	db #97,#57,#87,#47,#77,#37,#47,#17
	db #37,#17,#27,#17,#00,#00,#00,#00
	db #3c,#00,#00,#00,#00,#00,#67,#ed
	db #e9,#e9,#79,#a9,#39,#39,#39,#39
	db #65,#00,#00,#00,#00,#00,#00,#00
	db #84,#00,#00,#00,#00,#00,#00,#00
	db #bc,#00,#00,#96,#a6,#b6,#c6,#b6
	db #96,#86,#76,#66,#00,#00,#00,#00
	db #94,#00,#00,#00,#00,#00,#00,#00
	db #4a,#00,#00,#00,#00,#00,#00,#46
	db #3a,#3a,#3a,#3a,#3a,#3a,#3a,#3a
	db #3a,#00,#00,#00,#00,#00,#00,#00
	db #5c,#00,#00,#00,#00,#00,#00,#00
	db #03,#02,#04,#05,#06,#07,#08,#09
	db #02,#0a,#0b,#0c,#0d,#0e,#0f,#10
	db #11,#12,#13,#14,#13,#15,#13,#16
	db #17,#18,#18,#ff,#03,#03,#03,#03
	db #02,#19,#1a,#1b,#1c,#1d,#1e,#1f
	db #1f,#20,#21,#22,#23,#22,#24,#25
	db #25,#26,#27,#28,#29,#18,#18,#ff
	db #2a,#02,#2b,#2b,#2b,#2b,#2c,#2b
	db #2b,#2b,#2b,#2b,#2b,#2b,#2d,#2e
	db #2f,#30,#30,#30,#30,#31,#32,#30
	db #30,#33,#34,#ff,#35,#36,#37,#38
	db #39,#3a,#3b,#3a,#3a,#3a,#3c,#3a
	db #3a,#3a,#3d,#3e,#3f,#40,#41,#40
	db #42,#40,#3a,#3a,#42,#43,#44,#ff
;org #3daa
.l3daa
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #1b,#35,#18,#35,#1b,#35,#18,#35
	db #0c,#18,#24,#0c,#18,#24,#0c,#18
	db #24,#0c,#18,#24,#0c,#18,#24,#0c
	db #0c,#18,#24,#0c,#18,#24,#26,#24
	db #0c,#18,#26,#24,#1f,#1d,#1b,#18
	db #35,#35,#35,#35,#37,#37,#3b,#3b
	db #2b,#29,#27,#22,#1f,#1d,#1b,#1a
	db #35,#35,#1b,#1d,#1f,#20,#1d,#1f
	db #35,#1f,#1e,#1f,#20,#35,#1f,#35
	db #35,#1d,#1b,#1d,#1f,#1d,#1b,#1f
	db #35,#35,#1b,#1d,#20,#35,#1d,#35
	db #35,#1d,#18,#1a,#1b,#1a,#18,#1a
	db #37,#37,#35,#3b,#26,#35,#27,#35
	db #24,#30,#2b,#24,#30,#2b,#24,#30
	db #24,#2b,#30,#24,#27,#26,#22,#23
	db #18,#18,#18,#18,#1b,#1b,#1b,#1d
	db #1f,#1f,#1f,#1f,#1f,#1f,#1f,#1f
	db #17,#17,#17,#17,#1b,#1b,#1b,#1d
	db #16,#16,#16,#16,#1b,#1b,#1b,#1d
	db #14,#14,#14,#14,#18,#18,#18,#18
	db #1b,#1b,#1b,#1b,#1f,#1f,#1f,#1f
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #13,#13,#13,#13,#13,#13,#13,#13
	db #11,#11,#11,#11,#11,#11,#11,#11
	db #0f,#0f,#0f,#0f,#0e,#0e,#0f,#0f
	db #0c,#0c,#0c,#0c,#0c,#0f,#13,#17
	db #18,#18,#18,#18,#18,#18,#18,#18
	db #18,#18,#18,#18,#18,#18,#18,#35
	db #07,#07,#13,#07,#35,#07,#13,#35
	db #05,#05,#11,#05,#35,#05,#11,#35
	db #03,#03,#0f,#03,#35,#03,#0f,#35
	db #00,#0c,#03,#0f,#02,#0e,#07,#13
	db #00,#0c,#03,#0f,#02,#0e,#07,#38
	db #00,#0c,#03,#0f,#02,#0e,#07,#3a
	db #07,#13,#08,#14,#07,#13,#02,#0e
	db #14,#35,#13,#35,#14,#35,#16,#35
	db #14,#35,#13,#35,#14,#35,#0f,#35
	db #08,#35,#08,#35,#08,#35,#08,#35
	db #08,#14,#20,#2c,#2e,#2c,#27,#2c
	db #1b,#35,#18,#35,#35,#35,#35,#35
	db #07,#35,#36,#07,#07,#35,#36,#35
	db #07,#35,#36,#07,#07,#35,#3b,#3b
	db #07,#35,#3b,#07,#07,#35,#36,#35
	db #2b,#2a,#2b,#2c,#35,#2b,#27,#2b
	db #2b,#2a,#2b,#2c,#35,#2c,#2b,#26
	db #07,#38,#36,#07,#07,#38,#36,#38
	db #07,#3a,#3a,#07,#07,#3a,#36,#36
	db #07,#3b,#3a,#07,#07,#3b,#37,#36
	db #3e,#3e,#3e,#3e,#3e,#3e,#3e,#3e
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #8c,#1c,#00,#00,#4c,#00,#00,#00
	db #56,#00,#00,#8d,#36,#af,#00,#8e
	db #fb,#00,#00,#fb,#fb,#af,#00,#56
	db #fb,#00,#00,#fb,#fb,#af,#00,#76
	db #fb,#5c,#00,#fb,#fb,#00,#00,#00
	db #fb,#00,#00,#fb,#fb,#00,#00,#00
	db #fb,#cd,#00,#fb,#fb,#00,#00,#00
	db #fb,#66,#56,#fb,#fb,#36,#00,#4e
	db #fb,#00,#00,#fb,#fb,#00,#00,#b5
	db #2f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#af
	db #fb,#00,#00,#fb,#fb,#00,#49,#00
	db #fb,#00,#00,#fb,#fb,#00,#00,#1c
	db #fb,#00,#00,#fb,#fb,#00,#00,#af
	db #c6,#00,#00,#47,#00,#00,#00,#00
	db #5c,#b6,#a6,#95,#86,#75,#66,#55
;
; init in game music
;
; #2f05
; ld a,#ff
; ld (#3403),a
; ld (#3404),a
; jp #3432
;
; init intro music
; #2ed4
; ld a,#ff
; ld (#3403),a
; ld (#3404),a
; jp #343e
;
.init_music		; added by Megachur
;
	or a
	jp z,init_ingame
	jp init_intro
;
.music_info
	db "Aliens (1986)(Electric Dreams)()",0
	db "",0

	read "music_end.asm"
