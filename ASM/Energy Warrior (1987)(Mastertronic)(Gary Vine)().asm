; Music of Energy Warrior (1987)(Mastertronic)(Gary Vine)()
; Ripped by Megachur the 16/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ENERGYWA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #3400
FIRST_THEME				equ 1
LAST_THEME				equ 1

	read "music_header.asm"

.l3400
	push bc
	push de
	ld b,#f4
	out (c),d
	push bc
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	pop bc
	out (c),e
	ld bc,#f600
	add a
	out (c),a
	out (c),c
	pop de
	pop bc
	inc d
	ret
;
.play_music
;
	ld a,(l3429)
	or a
	ret nz
	jp l3493
.l3429
	db #00
;
.init_music     ; a = 1
;
	di
	or a
	jp z,l3488
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l38a9
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l38a7),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l3868),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l3871),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l387a),de
	ld hl,l3882
	ld (l3866),hl
	ld (l386f),hl
	ld (l3878),hl
	ld (l386a),hl
	ld (l3873),hl
	ld (l387c),hl
	ld a,#08
	dec a
	ld (l3864),a
	xor a
	ld (l3429),a
	ld a,#3f
	ld (l3892),a
	ld a,#01
	ld (l386d),a
	ld (l3876),a
	ld (l387f),a
	ei
	ret
;
.stop_music
.l3488
;
	ld a,#01
	ld (l3429),a
	ld de,#073f
	jp l379b
.l3493
	ld a,(l3864)
	inc a
	and #07
	ld (l3864),a
	and #07
	jr nz,l34a4
	xor a
	ld (l38a0),a
.l34a4
	call l34bf
	xor a
	call l37b8
	ld a,#01
	call l37b8
	ld a,#02
	call l37b8
	call l3778
	ld e,#00
	ld b,#06
	jp l37a9
.l34bf
	ld a,(l386d)
	dec a
	ld (l386d),a
	jr nz,l34df
	ld a,(l386e)
	ld (l386d),a
	ld ix,l3866
	ld a,#08
	call l3550
	ld (l3884),a
	ld c,#01
	call l3617
.l34df
	ld a,(l3876)
	dec a
	ld (l3876),a
	jr nz,l34ff
	ld a,(l3877)
	ld (l3876),a
	ld ix,l386f
	ld a,#10
	call l3550
	ld (l3885),a
	ld c,#02
	call l3617
.l34ff
	ld a,(l387f)
	dec a
	ld (l387f),a
	jr nz,l351f
	ld a,(l3880)
	ld (l387f),a
	ld ix,l3878
	ld a,#20
	call l3550
	ld (l3886),a
	ld c,#03
	call l3617
.l351f
	call l3713
	ld hl,l388b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l3541
	inc hl
	inc hl
	call l3541
	dec hl
	dec hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l3541
	ld e,#00
	ld b,#0b
	jp l37a9
.l3541
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
.l3550
	ld hl,l3892
	or (hl)
	ld (hl),a
	xor a
	ld (l3572),a
	ld e,(ix+#04)
	ld d,(ix+#05)
.l355f
	ld a,(de)
	cp #ff
	jp z,l35b6
	cp #fd
	jr nz,l3573
	inc de
	ld a,#01
	ld (l3572),a
	ld a,(de)
	jr l359d
.l3572
	nop
.l3573
	cp #fc
	jr nz,l3582
	inc de
	ld a,(de)
	inc de
	push de
	ld b,a
	call l3699
	pop de
	jr l355f
.l3582
	cp #fb
	jr nz,l3591
	inc de
	ld a,(de)
	ld (ix+#07),a
	ld (ix+#08),a
	inc de
	jr l355f
.l3591
	cp #fa
	jr nz,l359d
	inc de
	ld a,(de)
	inc de
	call l35fc
	jr l355f
.l359d
	inc de
	ld (ix+#04),e
	ld (ix+#05),d
	ld d,#00
	ld b,a
	add (ix+#06)
	add a
	ld e,a
	ld hl,l37e8
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ex de,hl
	ld a,b
	ret
.l35b6
	ld l,(ix+#00)
	ld h,(ix+#01)
.l35bc
	ld a,(hl)
	inc hl
	cp #fe
	jr nz,l35c9
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	jr l35bc
.l35c9
	cp #f9
	jr nz,l35d4
	ld a,(hl)
	inc hl
	call l35fc
	jr l35bc
.l35d4
	cp #ff
	jr nz,l35e0
	ld l,(ix+#02)
	ld h,(ix+#03)
	jr l35bc
.l35e0
	ld (ix+#00),l
	ld (ix+#01),h
	dec a
	add a
	ld e,a
	ld d,#00
	ld hl,(l38a7)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#04),e
	ld (ix+#05),d
	jp l355f
.l35fc
	push hl
	push de
	ld hl,l389d
	push af
	and #03
	ld e,a
	ld d,#00
	add hl,de
	pop af
	rrc a
	rrc a
	rrc a
	rrc a
	and #0f
	ld (hl),a
	pop de
	pop hl
	ret
.l3617
	ld a,(l3572)
	or a
	jp nz,l365b
	ld a,l
	or h
	ret z
	ld a,c
	push hl
	add a
	dec a
	ld hl,l388b
	ld d,#00
	ld e,a
	add hl,de
	pop de
	ld (hl),e
	dec hl
	ld (hl),d
	ld hl,l389d
	ld e,c
	ld d,#00
	dec e
	add hl,de
	ld a,(hl)
	dec hl
	dec hl
	dec hl
	ld (hl),a
	ld hl,l3888
	add hl,de
	ld a,(hl)
	ld hl,l3893
	add hl,de
	ld (hl),a
	ld hl,l3892
	dec c
	jp nz,l3650
	res 0,(hl)
.l3650
	dec c
	jp nz,l3656
	res 1,(hl)
.l3656
	dec c
	ret nz
	res 2,(hl)
	ret
.l365b
	ld a,h
	ld (l3891),a
	ld a,l
	and #f0
	cp #00
	jp z,l368a
	rrc a
	rrc a
	rrc a
	rrc a
.l366f
	ld hl,l389a
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	ld hl,l3892
	dec c
	jr nz,l3681
	res 3,(hl)
	ret
.l3681
	dec c
	jr nz,l3687
	res 4,(hl)
	ret
.l3687
	res 5,(hl)
	ret
.l368a
	ld a,l
	and #0f
	ld hl,l3893
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	xor a
	jr l366f
.l3699
	ld a,b
	and #03
	ld c,a
	ld a,b
	bit 2,b
	jr nz,l36a8
	bit 3,b
	jp nz,l36db
	ret
.l36a8
	bit 3,b
	jp nz,l36f3
	and #f0
	rrc a
	rrc a
	rrc a
	rrc a
	ld b,a
	xor a
	cp c
	jr z,l36ca
	ld hl,l3888
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),b
	ld b,#00
	jp l3703
.l36ca
	ld hl,l3888
	call l36d5
	ld b,#00
	jp l370d
.l36d5
	ld (hl),b
	inc hl
	ld (hl),b
	inc hl
	ld (hl),b
	ret
.l36db
	ld a,c
	ld (l3865),a
	ld a,#e0
	and b
	rlc a
	rlc a
	rlc a
	bit 4,b
	ld b,a
	jr z,l36ef
	cpl
	inc a
.l36ef
	ld (l38a0),a
	ret
.l36f3
	and #e0
	bit 4,b
	ret nz
	rlc a
	rlc a
	rlc a
	ld b,a
	xor a
	cp c
	jr z,l370d
.l3703
	ld d,#00
	ld e,c
	ld hl,l389d
	add hl,de
	dec hl
	ld (hl),b
	ret
.l370d
	ld hl,l389d
	jp l36d5
.l3713
	ld hl,l38a0
	xor a
	cp (hl)
	ret z
	ld d,a
	ld c,a
	ld b,(hl)
	ld a,(l3865)
	ld ix,l388b
	ld hl,l3884
	cp d
	jr z,l3733
	dec a
	ld e,a
	add hl,de
	add a
	ld e,a
	add ix,de
	jp l3747
.l3733
	call l3747
	inc ix
	inc ix
	ld hl,l3885
	call l3747
	inc ix
	inc ix
	ld hl,l3886
.l3747
	ld a,(hl)
	add b
	add a
	ld e,a
	ld d,#00
	ld hl,l37e8
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
.l3766
	xor c
	rr h
	rr l
	rr a
	djnz l3766
	or h
	ld (ix+#16),a
	ld (ix+#17),l
	pop bc
	ret
.l3778
	ld hl,l388b
	ld de,l38a1
	ld b,#03
.l3780
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
	jr nc,l378f
	inc hl
.l378f
	ld c,h
	ld a,l
	pop de
	inc de
	pop hl
	ld (hl),a
	inc hl
	ld (hl),c
	inc hl
	djnz l3780
	ret
.l379b
	jp l3400
	nop
	out (c),d
	ld bc,#bffd
	out (c),e
	pop bc
	inc d
	ret
.l37a9
	ld hl,l388b
	ld d,#00
	add hl,de
	ld d,e
.l37b0
	ld e,(hl)
	inc hl
	call l379b
	djnz l37b0
	ret
.l37b8
	ld hl,l3893
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
	ld hl,l38b1
	dec a
	add a
	add a
	add a
	ld d,#00
	ld e,a
	add hl,de
	ld a,(l3864)
	ld e,a
	add hl,de
	ld a,(hl)
	pop hl
	cp (hl)
	ret z
	ld (hl),a
	ld a,c
	add #08
	ld e,a
	ld b,#01
	jp l37a9
.l37e8
	dw #069f,#0640,#05e6,#0591
	dw #0541,#04f6,#04ae,#046b
	dw #042c,#03f0,#03b7,#0382
	dw #034f,#0320,#02f3,#02c8
	dw #02a1,#027b,#0257,#0236
	dw #0216,#01f8,#01dc,#01c1
	dw #01a8,#0190,#0179,#0164
	dw #0150,#013d,#012c,#011b
	dw #010b,#00fc,#00ee,#00e0
	dw #00d4,#00c8,#00bd,#00b2
	dw #00a8,#009f,#0096,#008d
	dw #0085,#007e,#0077,#0070
	dw #006a,#0064,#005e,#0059
	dw #0054,#004f
	db #0c
	dw l3c14
	db #10,#0c
	dw l3c14
	db #10,#14,#10,#1c,#10,#24,#10,#2c
.l3865 equ $ + 2
.l3864 equ $ + 1
	db #10,#00,#00
.l386a equ $ + 4
.l3868 equ $ + 2
.l3866
	dw l3882,l394d,l3b24
.l386e equ $ + 2
.l386d equ $ + 1
	db #00,#01,#08
.l3873 equ $ + 4
.l3871 equ $ + 2
.l386f
	dw l3882,l39da,l3b24
.l3877 equ $ + 2
.l3876 equ $ + 1
	db #00,#01,#08
.l387c equ $ + 4
.l387a equ $ + 2
.l3878
	dw l3882,l3a55,l3b24
.l3882 equ $ + 4
.l3880 equ $ + 2
.l387f equ $ + 1
	db #00,#01,#08,#00,#ff,#ff
.l388b equ $ + 7
.l3888 equ $ + 4
.l3886 equ $ + 2
.l3885 equ $ + 1
.l3884
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3893 equ $ + 7
.l3892 equ $ + 6
.l3891 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l389a equ $ + 6
	db #00,#00,#00,#00,#00,#00,#01,#02
.l38a1 equ $ + 5
.l38a0 equ $ + 4
.l389d equ $ + 1
	db #03,#01,#02,#03,#00,#00,#00,#00
.l38a7 equ $ + 3
	db #00,#00,#00,#00,#00
.l38a9
	dw l3921,l394d,l39da,l3a55
.l38b1
	db #0d,#0c,#0d,#0c,#0d,#0c,#08,#08
	db #0e,#0d,#0e,#0d,#0e,#0d,#08,#08
	db #0f,#0d,#0b,#09,#0b,#0d,#0f,#0f
	db #0d,#0c,#0b,#0c,#0d,#0c,#0b,#0c
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #0e,#0d,#0e,#0d,#0e,#0d,#0e,#0d
	db #0a,#0a,#09,#09,#0a,#0a,#09,#09
	db #0f,#0f,#0f,#0f,#0e,#0e,#0e,#0e
	db #08,#09,#08,#09,#08,#09,#08,#09
	db #0d,#0d,#0e,#0e,#0f,#0f,#0d,#0d
	db #0e,#0e,#0f,#0f,#0f,#0f,#0d,#0d
	db #0f,#0f,#0d,#0d,#0f,#0f,#0d,#0d
	db #0f,#0f,#0d,#0d,#0f,#0f,#0d,#0d
.l3921
	dw l3b24,l3b61,l3b78,l3b8b
	dw l3bae,l3bfa,l3c1e,l3c48
	dw l3c6d,l3c76,l3c89,l3cb0
	dw l3cc3,l3cef,l3d1e,l3d4c
	dw l3d7b,l3da7,l3df4,l3e14
	dw l3e88,l3e9b
.l394d
	db #fe,#00,#03,#03,#03,#03,#02,#02
	db #02,#02,#02,#02,#02,#02,#fe,#fe
	db #02,#02,#fe,#00,#02,#02,#08,#08
	db #08,#08,#08,#08,#08,#0b,#02,#02
	db #02,#02,#fe,#fe,#02,#02,#fe,#00
	db #02,#02,#fe,#03,#02,#fe,#fe,#02
	db #fe,#00,#02,#02,#fe,#03,#02,#fe
	db #fe,#02,#fe,#00,#02,#02,#13,#13
	db #13,#13,#fe,#fe,#13,#13,#fe,#00
	db #13,#13,#08,#08,#08,#08,#08,#08
	db #08,#08,#13,#13,#13,#13,#fe,#fe
	db #13,#13,#fe,#00,#13,#13,#fe,#03
	db #13,#fe,#fe,#13,#fe,#00,#13,#13
	db #fe,#03,#13,#fe,#fe,#13,#fe,#00
	db #13,#13,#02,#02,#fe,#fe,#02,#02
	db #fe,#03,#02,#02,#fe,#00,#02,#02
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #fe,#f4,#03,#03,#ff
.l39da
	db #fe,#00,#01,#01,#01,#01,#01,#01
	db #fe,#fe,#01,#fe,#00,#01,#f9,#31
	db #09,#09,#f9,#21,#f9,#21,#0c,#0c
	db #0c,#0c,#fe,#fe,#0c,#0c,#fe,#00
	db #0c,#0c,#fe,#03,#0c,#fe,#fe,#0c
	db #fe,#00,#0c,#0c,#fe,#03,#0c,#fe
	db #fe,#0c,#fe,#00,#0c,#0c,#01,#01
	db #fe,#fe,#01,#fe,#00,#01,#0c,#0c
	db #fe,#fe,#0c,#0c,#fe,#03,#0c,#0c
	db #fe,#00,#0c,#0c,#0c,#0c,#0c,#0c
	db #fe,#fe,#0c,#0c,#fe,#00,#0c,#0c
	db #fe,#03,#0c,#fe,#fe,#0c,#fe,#00
	db #0c,#0c,#fe,#03,#0c,#fe,#fe,#0c
	db #fe,#00,#0c,#0c,#01,#fe,#fe,#01
	db #fe,#03,#01,#fe,#00,#01,#09,#09
	db #03,#03,#ff
.l3a55
	db #fe,#00,#03,#03,#03,#03,#03,#03
	db #03,#04,#f9,#22,#05,#f9,#12,#06
	db #07,#0a,#0a,#0a,#0a,#15,#15,#15
	db #0a,#0a,#0a,#0a,#0a,#15,#15,#0a
	db #0a,#fe,#02,#0a,#0a,#0a,#0a,#15
	db #15,#15,#0a,#0a,#0a,#0a,#0a,#15
	db #15,#0a,#0a,#fe,#00,#0a,#0a,#0a
	db #0a,#15,#15,#15,#0a,#0a,#0a,#0a
	db #0a,#15,#15,#0a,#0a,#fe,#02,#0a
	db #0a,#0a,#0a,#15,#15,#15,#0a,#0a
	db #0a,#0a,#0a,#15,#15,#0a,#0a,#fe
	db #00,#f9,#12,#0d,#0e,#0f,#10,#f9
	db #32,#11,#12,#f9,#22,#05,#f9,#12
	db #06,#07,#fe,#0c,#03,#03,#fe,#0a
	db #03,#03,#fe,#0f,#03,#03,#fe,#0c
	db #03,#03,#fe,#00,#0d,#0e,#0f,#10
	db #11,#12,#14,#16,#0a,#0a,#0a,#0a
	db #15,#15,#15,#0a,#0a,#0a,#0a,#0a
	db #15,#15,#0a,#0a,#fe,#02,#0a,#0a
	db #0a,#0a,#15,#15,#15,#0a,#0a,#0a
	db #0a,#0a,#15,#15,#0a,#0a,#fe,#00
	db #0a,#0a,#0a,#0a,#15,#15,#15,#0a
	db #0a,#0a,#0a,#0a,#15,#15,#0a,#0a
	db #fe,#02,#0a,#0a,#0a,#0a,#15,#15
	db #15,#0a,#0a,#0a,#0a,#0a,#15,#15
.l3b24 equ $ + 7
	db #0a,#0a,#fe,#0c,#03,#03,#ff,#fb
	db #08,#18,#fb,#10,#24,#fb,#08,#18
	db #fb,#10,#22,#fb,#08,#18,#fb,#10
	db #24,#fb,#08,#18,#fb,#10,#22,#fb
	db #08,#1d,#1f,#fb,#10,#22,#fb,#08
	db #18,#fb,#10,#24,#fb,#08,#18,#fb
	db #10,#22,#fb,#08,#1f,#1b,#1d,#1f
	db #fb,#18,#22,#fb,#08,#fd,#38,#fd
.l3b61 equ $ + 4
	db #38,#fd,#38,#ff,#fb,#08,#0c,#0c
	db #fd,#38,#16,#18,#0c,#fd,#38,#18
	db #0c,#0c,#fd,#38,#16,#18,#0c,#fd
.l3b78 equ $ + 3
	db #38,#18,#ff,#fb,#08,#24,#18,#18
	db #24,#24,#18,#24,#18,#22,#18,#18
.l3b8b equ $ + 6
	db #22,#24,#18,#18,#24,#ff,#fb,#04
	db #25,#19,#26,#1a,#27,#1b,#28,#1c
	db #29,#1d,#2a,#1e,#2b,#1f,#2c,#20
	db #2d,#21,#2e,#22,#2f,#23,#30,#24
	db #31,#25,#32,#26,#33,#27,#34,#28
.l3bae equ $ + 1
	db #ff,#fb,#20,#2b,#fb,#10,#2b,#fb
	db #08,#27,#24,#22,#24,#24,#fb,#18
	db #24,#fb,#08,#22,#24,#fb,#10,#27
	db #fb,#20,#2b,#fb,#08,#2e,#30,#2b
	db #27,#fb,#30,#24,#fb,#10,#2b,#fb
	db #08,#2e,#30,#fb,#10,#33,#30,#fb
	db #08,#2e,#fb,#18,#30,#fb,#08,#2b
	db #2e,#fb,#10,#30,#fb,#08,#2e,#2d
	db #2e,#2d,#2e,#2d,#29,#2d,#fb,#10
.l3bfa equ $ + 5
	db #2b,#fb,#30,#24,#ff,#fb,#20,#26
	db #fb,#10,#27,#29,#2b,#fb,#08,#29
	db #fb,#18,#27,#fb,#10,#29,#26,#27
.l3c14 equ $ + 7
	db #26,#fb,#08,#22,#fb,#10,#20,#fb
	db #08,#22,#fb,#10,#22,#fb,#20,#22
.l3c1e equ $ + 1
	db #ff,#fb,#10,#24,#1f,#22,#fb,#08
	db #21,#fb,#10,#22,#fb,#08,#24,#fb
	db #10,#24,#fb,#08,#24,#22,#24,#fb
	db #18,#27,#fb,#10,#24,#2b,#fb,#08
	db #29,#24,#22,#24,#fb,#10,#24,#fb
.l3c48 equ $ + 3
	db #20,#24,#ff,#fb,#10,#fd,#38,#fd
	db #39,#fb,#08,#fd,#38,#fd,#38,#fd
	db #39,#fb,#10,#fd,#38,#fb,#08,#fd
	db #38,#fd,#39,#fd,#38,#fb,#10,#fd
	db #38,#fb,#08,#fd,#39,#fd,#38,#ff
.l3c6d
	db #fb,#80,#fa,#41,#0a,#0a,#0c,#0c
	db #ff
.l3c76
	db #fb,#01,#29,#2e,#32,#2e,#29,#2e
	db #32,#2e,#29,#2e,#32,#2e,#29,#2e
.l3c89 equ $ + 3
	db #32,#2e,#ff,#fb,#08,#fd,#38,#fd
	db #38,#fb,#10,#fd,#39,#fb,#08,#fd
	db #38,#fd,#38,#fd,#39,#fb,#10,#fd
	db #38,#fb,#08,#fd,#38,#fd,#39,#fd
	db #38,#fd,#38,#fd,#38,#fd,#39,#fd
.l3cb0 equ $ + 2
	db #38,#ff,#fb,#08,#0c,#18,#18,#0c
	db #0c,#18,#16,#18,#0c,#18,#16,#18
.l3cc3 equ $ + 5
	db #16,#18,#0c,#16,#ff,#fb,#08,#22
	db #24,#fb,#10,#22,#24,#fb,#08,#22
	db #21,#22,#24,#fb,#10,#24,#24,#fb
	db #08,#2b,#2d,#fb,#10,#2e,#2d,#fb
	db #08,#2b,#fb,#18,#29,#fb,#28,#2b
	db #fb,#08,#fd,#38,#fd,#38,#fd,#38
.l3cef equ $ + 1
	db #ff,#fb,#08,#28,#29,#28,#fb,#18
	db #29,#fb,#08,#28,#24,#22,#fb,#18
	db #24,#fb,#08,#24,#1f,#24,#fb,#10
	db #22,#fb,#08,#24,#28,#2b,#2e,#2d
	db #2e,#30,#fb,#20,#2b,#fb,#08,#fd
	db #38,#fd,#38,#fb,#10,#fd,#38,#ff
.l3d1e
	db #fb,#08,#22,#24,#26,#fb,#10,#29
	db #fb,#08,#2b,#29,#fb,#10,#26,#fb
	db #08,#24,#26,#fb,#10,#22,#fb,#08
	db #29,#2b,#28,#fb,#10,#29,#fb,#20
	db #26,#fb,#08,#22,#fb,#28,#20,#fb
.l3d4c equ $ + 6
	db #08,#20,#22,#24,#26,#ff,#fb,#10
	db #28,#24,#fb,#08,#24,#2e,#2d,#2e
	db #fb,#10,#2b,#fb,#20,#24,#fb,#08
	db #22,#21,#22,#24,#fb,#10,#24,#fb
	db #20,#24,#fb,#08,#fd,#38,#fd,#38
	db #fb,#10,#fd,#38,#fd,#38,#fb,#08
.l3d7b equ $ + 5
	db #fd,#38,#fd,#38,#ff,#fb,#80,#2b
	db #fb,#70,#29,#fb,#08,#29,#fb,#10
	db #29,#fb,#08,#2b,#fb,#10,#2b,#fb
	db #30,#2b,#fb,#08,#29,#fb,#10,#29
	db #2b,#fb,#08,#22,#24,#22,#fb,#10
	db #24,#fb,#40,#24,#fb,#10,#24,#26
.l3da7 equ $ + 1
	db #ff,#fb,#40,#27,#2e,#29,#fb,#30
	db #22,#fb,#08,#20,#fb,#10,#22,#fb
	db #08,#24,#fb,#10,#24,#24,#fb,#08
	db #2b,#2d,#2e,#2d,#29,#fb,#18,#2b
	db #fb,#08,#24,#22,#fb,#10,#24,#fb
	db #08,#22,#fb,#10,#24,#fb,#08,#22
	db #fb,#10,#24,#fb,#04,#26,#27,#26
	db #27,#26,#27,#fb,#08,#24,#22,#fb
	db #02,#24,#23,#22,#21,#20,#1f,#1e
.l3df4 equ $ + 6
	db #1d,#1c,#1b,#1a,#19,#ff,#fb,#08
	db #0c,#0c,#fd,#38,#fb,#10,#0c,#fb
	db #08,#0c,#fd,#38,#0c,#fb,#10,#0c
	db #fb,#08,#fd,#38,#fb,#10,#0c,#fb
.l3e14 equ $ + 6
	db #08,#0c,#fd,#38,#0c,#ff,#fb,#10
	db #24,#22,#24,#fb,#08,#28,#2b,#2e
	db #2d,#fb,#20,#2b,#fb,#01,#2b,#30
	db #34,#30,#2b,#30,#34,#30,#fb,#02
	db #2b,#30,#34,#30,#fb,#08,#28,#29
	db #fb,#10,#28,#24,#fb,#08,#22,#21
	db #22,#fb,#28,#24,#fb,#01,#2b,#30
	db #34,#30,#2b,#30,#34,#30,#fb,#02
	db #2b,#30,#34,#30,#fb,#08,#26,#24
	db #fb,#10,#26,#22,#fb,#08,#29,#fb
	db #10,#26,#24,#fb,#08,#26,#27,#fb
	db #18,#26,#fb,#08,#26,#27,#29,#fb
	db #18,#2c,#fb,#08,#2b,#2c,#fb,#30
	db #29,#fb,#01,#2b,#2e,#33,#2e,#2b
	db #2e,#33,#2e,#fb,#02,#2b,#2e,#33
.l3e88 equ $ + 2
	db #38,#ff,#fb,#01,#29,#30,#33,#30
	db #29,#30,#33,#30,#29,#30,#33,#30
.l3e9b equ $ + 5
	db #29,#30,#33,#30,#ff,#fb,#08,#2b
	db #27,#22,#2c,#27,#22,#2c,#2e,#2b
	db #27,#22,#2c,#27,#22,#2c,#2e,#2b
	db #2c,#2b,#fb,#18,#27,#fb,#08,#25
	db #24,#25,#fb,#28,#27,#fb,#01,#2e
	db #32,#35,#32,#2e,#32,#35,#32,#fb
	db #02,#2e,#32,#35,#32,#fb,#08,#24
	db #22,#24,#fb,#18,#2b,#fb,#08,#2e
	db #fb,#18,#2d,#fb,#08,#2e,#fb,#18
	db #2b,#fb,#08,#24,#22,#24,#28,#2b
	db #fb,#18,#2e,#fb,#08,#30,#fb,#28
	db #2b,#fb,#08,#fd,#38,#fd,#39,#fd
	db #38,#fd,#39,#ff,#ff,#cb,#07,#08
;
.music_info
	db "Energy Warrior (1987)(Mastertronic)(Gary Vine)",0
	db "",0

	read "music_end.asm"
