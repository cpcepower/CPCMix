; Music of Jukebox 3 - 4 - Santiano (2003)(RoundSoft)(Napo)(ST-128 Module)
; Ripped by Megachur the 07/02/2016
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "JUKEB34S.BIN"
	ENDIF

music_date_rip_day		equ 07
music_date_rip_month	equ 02
music_date_rip_year		equ 2016
music_adr				equ &73a5

	read "music_header.asm"

	jr l73a9
	jr l73b8
.l73a9
	call l73dc
	ld hl,l73c9
	ld de,l73c1
	ld bc,#81ff
	jp #bcd7
.l73b8
	ld hl,l73c9
	call #bcdd
	jp l7454
.l73c1
	push ix
	call l7470
	pop ix
	ret
.l73c9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l73dc
	jp l7470
	jp l7454
;
.init_music
.l73dc
;
	xor a
	ld hl,l7987
	call l744d
	ld hl,l79b5
	call l744d
	ld hl,l79e3
	call l744d
	ld ix,l7983
	ld iy,l7a0d
	ld de,#002e
	ld b,#03
.l73fc
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l73fc
	ld hl,l789c
	ld (hl),#04
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l7898),hl
	ld (l789a),hl
	ld a,#0c
	ld c,d
	call l7878
	ld a,#0d
	ld c,d
	jp l7878
.l744d
	ld b,#2a
.l744f
	ld (hl),a
	inc hl
	djnz l744f
	ret
;
.stop_music
.l7454
;
	ld a,#07
	ld c,#3f
	call l7878
	ld a,#08
	ld c,#00
	call l7878
	ld a,#09
	ld c,#00
	call l7878
	ld a,#0a
	ld c,#00
	jp l7878
;
.play_music
.l7470
;
	ld hl,l789e
	dec (hl)
	ld ix,l7983
	ld bc,l7991
	call l7512
	ld ix,l79b1
	ld bc,l79bf
	call l7512
	ld ix,l79df
	ld bc,l79ed
	call l7512
	ld hl,l7897
	ld de,l789e
	ld b,#06
	call l74ef
	ld b,#07
	call l74ef
	ld b,#0b
	call l74ef
	ld b,#0d
	call l74ef
	ld de,l789e
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l79a2
	call l74c8
	ld hl,l79d0
	call l74c8
	ld hl,l79fe
.l74c8
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l74dd
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l74dd
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l74ef
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l7878
.l74fa
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l7878
.l7512
	ld a,(l789e)
	or a
	jp nz,l75ca
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l75ca
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l74fa
	or a
	jp z,l75bf
	ld r,a
	and #7f
	cp #10
	jr c,l759a
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l7712
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l7573
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l7573
	rrca
	ld c,a
	ld hl,l7a13
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l7592
	ld (ix+#1e),b
.l7592
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l75b3
.l759a
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l78a3
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	ld sp,#3332
	inc (hl)
	dec (hl)
.l75b3 equ $ + 1
	ld (hl),#7a
	or a
	jr nz,l75c1
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l75c1
.l75bf
	ld a,(hl)
	inc hl
.l75c1
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l75ca
	ld a,(ix+#17)
	or a
	jr nz,l75e0
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l75e0
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l75f6
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l75f6
	ld a,(ix+#0d)
	or a
	jr z,l7604
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l7622
.l7604
	ld a,(ix+#1a)
	or a
	jp z,l7629
	ld c,a
	cp #03
	jr nz,l7611
	xor a
.l7611
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l7622
	ld a,(ix+#18)
	dec c
	jr z,l7622
	ld a,(ix+#19)
.l7622
	add (ix+#07)
	ld b,d
	call l7712
.l7629
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l7651
	dec (ix+#1b)
	jr nz,l7651
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l7689
.l7651
	ld a,(ix+#29)
	or a
	jr z,l7689
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l7680
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l7677
	ld (ix+#29),#ff
	jr l7680
.l7677
	cp (ix+#2b)
	jr nz,l7680
	ld (ix+#29),#01
.l7680
	ld b,d
	or a
	jp p,l7686
	dec b
.l7686
	ld c,a
	jr l7694
.l7689
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l7694
	pop hl
	bit 7,(ix+#14)
	jr z,l769d
	ld h,d
	ld l,d
.l769d
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l7878
	ld c,h
	ld a,(ix+#02)
	call l7878
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l76f0
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l76df
	dec (ix+#09)
	jr nz,l76df
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l76d7
	xor a
	jr l76dc
.l76d7
	cp #10
	jr nz,l76dc
	dec a
.l76dc
	ld (ix+#1e),a
.l76df
	ld a,b
	sub (ix+#1e)
	jr nc,l76e6
	xor a
.l76e6
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l7878
.l76f0
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l789f)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l770e
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l770e
	ld (l789f),hl
	ret
.l7712
	ld hl,l78c1
	cp #61
	jr nc,l771c
	add a
	ld c,a
	add hl,bc
.l771c
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l7726
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l784b
	ld (ix+#1e),a
	jp l75b3
.l7738
	dec b
.l7739
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l7744
	neg
.l7744
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l75b3
.l775a
	dec b
	jr l775e
.l775d
	inc b
.l775e
	call l784b
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l75b3
.l776d
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l7830
.l777e
	ld a,(hl)
	inc hl
	or a
	jr z,l77a0
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l77a0
	ld (ix+#29),a
	jp l75b3
.l77a6
	dec hl
	ld a,(hl)
	and #0f
	ld (l78a2),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l78a1),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l75b3
.l77c0
	ld a,(hl)
	or a
	jr z,l77d1
	call l784d
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l75b3
.l77d1
	ld hl,#0101
	ld (l789d),hl
	jp l75b3
.l77da
	call l784b
	ld (ix+#1e),a
	jp l75b3
.l77e3
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l785c
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l785c
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l75b3
.l7805
	ld a,(hl)
	inc hl
	ld (l789c),a
	jp l75b3
.l780d
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l75b3
.l782c
	call l784b
	add a
.l7830
	ld b,#00
	ld c,a
	push hl
	ld hl,l7a93
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l75b3
.l784b
	ld a,(hl)
	inc hl
.l784d
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l785c
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l7a13
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	ld d,e
	ld d,h
	dec l
	ld sp,#3832
	jr nz,l78c0
	ld l,a
	ld h,h
	ld (hl),l
	ld l,h
	ld h,l
.l7878
	di
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	ei
.l7897
	ret
.l789f equ $ + 7
.l789e equ $ + 6
.l789d equ $ + 5
.l789c equ $ + 4
.l789a equ $ + 2
.l7898
	db #00,#00,#00,#00,#00,#00,#00,#00
.l78a2 equ $ + 2
.l78a1 equ $ + 1
	db #38,#00,#00
.l78a3
	dw l7726,l7739,l7738,l775d
	dw l775a,l776d,l777e,l77a6
	dw l77c0,l77a6,l77da,l77e3
.l78c0 equ $ + 5
	dw l7805,l780d,l782c
.l78c1
	dw #0000,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
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
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
.l7983 equ $ + 2
	dw #000f,#0008
.l7987 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l7991 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l79a2 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l79b1 equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l79b5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l79bf equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l79d0 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l79e3 equ $ + 6
.l79df equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l79ed
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l79fe equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7a13 equ $ + 6
.l7a0d
	db #13,#7c,#1c,#7c,#25,#7c,#bd,#ad
	db #fd,#ad,#1d,#ae,#00,#00,#b3,#7a
	db #f3,#7a,#13,#7b,#00,#00,#b3,#7a
	db #33,#7b,#13,#7b,#00,#00,#b3,#7a
	db #53,#7b,#73,#7b,#00,#00,#27,#9d
	db #07,#9e,#27,#9e,#00,#00,#b3,#7a
	db #93,#7b,#b3,#7b,#00,#00,#27,#9d
	db #87,#9e,#87,#9d,#00,#00,#27,#9d
	db #a7,#9e,#c7,#9e,#00,#00,#27,#9d
	db #67,#9d,#87,#9d,#00,#00,#b3,#7a
	db #d3,#7b,#f3,#7b,#00,#00,#ff,#6c
	db #ff,#6c,#ff,#6c,#00,#00,#ff,#6c
	db #ff,#6c,#ff,#6c,#00,#00,#ff,#6c
	db #ff,#6c,#ff,#6c,#00,#00,#ff,#6c
	db #ff,#6c,#ff,#6c,#00,#00,#ff,#6c
	db #ff,#6c,#ff,#6c,#00,#00,#ff,#6c
.l7a93 equ $ + 6
	db #ff,#6c,#ff,#6c,#00,#00,#ff,#6c
	db #ff,#6c,#ff,#6c,#ff,#6c,#ff,#6c
	db #ff,#6c,#ff,#6c,#ff,#6c,#ff,#6c
	db #ff,#6c,#ff,#6c,#ff,#6c,#ff,#6c
	db #ff,#6c,#ff,#6c,#ff,#6c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0d,#0c,#0b,#0a,#09,#07,#06
	db #05,#04,#04,#03,#05,#05,#04,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0e,#0e,#0e,#0d,#0a,#0a,#09,#09
	db #07,#08,#07,#07,#04,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0c
	db #0a,#07,#04,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#1e,#1d
	db #1d,#1d,#1d,#1e,#1f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0a,#0a
	db #0a,#0a,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09,#07
	db #07,#07,#07,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0c
	db #0e,#0c,#0d,#0c,#0a,#08,#05,#04
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12,#19
	db #1f,#1b,#1f,#1b,#19,#1a,#14,#1b
	db #19,#15,#1b,#1b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#2e
	db #7c,#00,#6e,#7c,#80,#13,#7c,#00
	db #a8,#7c,#00,#19,#7d,#80,#1c,#7c
	db #00,#8a,#7d,#00,#8a,#7d,#80,#25
	db #7c,#50,#1d,#04,#03,#d0,#10,#50
	db #10,#02,#52,#10,#02,#53,#10,#04
	db #53,#10,#02,#55,#10,#02,#57,#10
	db #04,#57,#10,#04,#55,#10,#04,#5a
	db #10,#02,#5a,#10,#02,#57,#10,#04
	db #53,#1e,#49,#02,#53,#1e,#49,#02
	db #53,#1e,#49,#04,#52,#11,#20,#53
	db #10,#02,#55,#10,#04,#55,#10,#0c
	db #ff,#55,#10,#04,#55,#10,#04,#55
	db #10,#04,#52,#10,#02,#53,#10,#02
	db #55,#10,#04,#52,#10,#02,#50,#10
	db #02,#4e,#10,#04,#55,#10,#02,#55
	db #10,#02,#53,#10,#04,#53,#10,#04
	db #52,#10,#04,#4e,#10,#04,#50,#10
	db #04,#50,#10,#04,#50,#10,#04,#57
	db #10,#04,#ff,#38,#21,#20,#3b,#2e
	db #40,#02,#33,#21,#20,#3b,#2e,#40
	db #02,#38,#21,#20,#3b,#2e,#40,#02
	db #33,#21,#20,#3b,#2e,#40,#02,#38
	db #21,#20,#3b,#2e,#40,#02,#33,#21
	db #20,#3b,#2e,#40,#02,#36,#21,#20
	db #3a,#2e,#30,#02,#31,#21,#20,#3a
	db #2e,#30,#02,#38,#21,#20,#3b,#2e
	db #40,#02,#33,#21,#20,#3b,#2e,#40
	db #02,#38,#21,#20,#3b,#2e,#40,#02
	db #33,#21,#20,#3b,#2e,#40,#02,#36
	db #21,#20,#3a,#2e,#30,#02,#31,#21
	db #20,#3a,#2e,#30,#02,#36,#21,#20
	db #3a,#2e,#30,#02,#31,#21,#20,#3a
	db #2e,#30,#02,#ff,#31,#21,#20,#40
	db #2e,#44,#02,#2c,#21,#20,#40,#2e
	db #44,#02,#31,#21,#20,#40,#2e,#44
	db #02,#2c,#21,#20,#40,#2e,#44,#02
	db #31,#21,#20,#40,#2e,#44,#02,#2c
	db #21,#20,#40,#2e,#44,#02,#36,#21
	db #20,#46,#2e,#33,#02,#31,#21,#20
	db #46,#2e,#33,#02,#33,#21,#20,#3d
	db #2e,#25,#02,#2e,#21,#20,#3d,#2e
	db #25,#02,#33,#21,#20,#3d,#2e,#25
	db #02,#2e,#21,#20,#3d,#2e,#25,#02
	db #38,#21,#20,#3b,#2e,#49,#02,#33
	db #21,#20,#3b,#2e,#49,#02,#38,#21
	db #20,#3b,#2e,#49,#02,#33,#21,#20
	db #3b,#2e,#49,#02,#ff,#34,#30,#02
	db #74,#50,#02,#74,#90,#02,#74,#50
	db #02,#34,#30,#02,#74,#50,#02,#74
	db #90,#02,#74,#50,#02,#34,#30,#02
	db #74,#50,#02,#74,#90,#02,#74,#50
	db #02,#34,#30,#02,#74,#50,#02,#74
	db #90,#02,#74,#50,#02,#34,#30,#02
	db #74,#50,#02,#74,#90,#02,#74,#50
	db #02,#34,#30,#02,#74,#50,#02,#74
	db #90,#02,#74,#50,#02,#34,#30,#02
	db #74,#50,#02,#74,#90,#02,#74,#50
	db #02,#34,#30,#02,#74,#50,#02,#74
	db #90,#02,#74,#50,#02,#ff,#00,#00
;
.music_info
	db "Jukebox 3 - 4 - Santiano (2003)(RoundSoft)(Napo)",0
	db "ST-128 Module",0

	read "music_end.asm"
