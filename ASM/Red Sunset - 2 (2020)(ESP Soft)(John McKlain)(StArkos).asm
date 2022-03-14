; Music of Red Sunset - 2 (2020)(ESP Soft)(John McKlain)(StArkos)
; Ripped by Megachur the 24/03/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "REDSUNS2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #0720

	read "music_header.asm"

	jp l0813
	jp l089d
	jp l0887
	ld (l072f),hl
	ret
	dec a
.l072f equ $ + 1
	ld hl,#0000
	ld e,a
	ld d,#00
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	inc de
	ex af,af'
	ld a,b
	ld hl,l07fb
	ld b,#00
	sla c
	sla c
	sla c
	add hl,bc
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#00
	inc hl
	ex af,af'
	ld (hl),a
	ret
	add a
	add a
	add a
	ld e,a
	ld d,#00
	ld hl,l07fb
	add hl,de
	ld (hl),d
	inc hl
	ld (hl),d
	ret
.l0763
	rla
	rla
	ld ix,l07fb
	ld iy,l0c2c
	ld c,a
	call l0790
	ld ix,l0803
	ld iy,l0c38
	srl c
	call l0790
	ld ix,l080b
	ld iy,l0c44
	rr c
	call l0790
	ld a,c
	ld (l0c55),a
	ret
.l0790
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,l
	or h
	ret z
	ld a,(hl)
	inc hl
	ld b,a
	rra
	jr c,l07cc
	rra
	rra
	jr c,l07ad
	call l07ef
	rl b
	call c,l07dc
	jr l07b5
.l07ad
	xor a
	ld (ix+#00),a
	ld (ix+#01),a
	ret
.l07b5
	ld a,(ix+#03)
	cp (ix+#04)
	jr c,l07c8
	ld (ix+#03),#00
	ld (ix+#00),l
	ld (ix+#01),h
	ret
.l07c8
	inc (ix+#03)
	ret
.l07cc
	rra
	call l07ef
	rl b
	call c,l07dc
	res 2,c
	call l07e4
	jr l07b5
.l07dc
	ld a,(hl)
	ld (l0c51),a
	inc hl
	res 5,c
	ret
.l07e4
	ld a,(hl)
	ld (iy+#05),a
	inc hl
	ld a,(hl)
	ld (iy+#09),a
	inc hl
	ret
.l07ef
	and #0f
	sub (ix+#02)
	jr nc,l07f7
	xor a
.l07f7
	ld (iy+#01),a
	ret
.l07fb
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0803
	db #00,#00,#00,#00,#00,#00,#00,#00
.l080b
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.real_init_music
.l0813
;
	ld de,l0923
	ldi
	ldi
	inc hl
	inc hl
	inc hl
	inc hl
	add a
	ld e,a
	ld d,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld ix,l086d
	ld a,#0d
.l082d
	ld e,(ix+#00)
	ld d,(ix+#01)
	inc ix
	inc ix
	ldi
	dec a
	jr nz,l082d
	ld (l08aa),a
	ex de,hl
	ld hl,l08b9
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l0bed
	ld de,l0bee
	ld bc,#0014
	ld (hl),a
	ldir
	ld a,(l08a5)
	dec a
	ld (l08a2),a
	ld hl,(l0923)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	ld (l0bf7),de
	ld (l0c0c),de
	ld (l0c21),de
	ret
.l086d
	dw #0926,#0927,#08b5,#08b6
	dw #08a5,#0a52,#0a4e,#0a90
	dw #0a94,#08c6,#08d1,#08dc
	dw #09fe
;
.stop_music
.l0887
;
	ld (l0998),sp
	xor a
	ld (l0c2d),a
	ld (l0c39),a
	ld (l0c45),a
	ld a,#3f
	ld (l0c55),a
	jp l097a
;
.play_music
.l089d
;
	ld (l0998),sp
.l08a2 equ $ + 1
	ld a,#00
	inc a
.l08a5 equ $ + 1
	cp #01
	jp nz,l093f
.l08aa equ $ + 1
	ld a,#00
	sub #01
	jr c,l08b4
	ld (l08aa),a
	jr l0922
.l08b4
	ld de,#0000
	exx
.l08b9 equ $ + 1
	ld hl,#0000
.l08bb
	xor a
	ld (l0bed),a
	ld (l0c02),a
	ld (l0c17),a
	ld a,#00
	ld (l0bf4),a
	ld (l0c09),a
	ld (l0c1e),a
	ld a,#00
	ld (l0bf5),a
	ld (l0c0a),a
	ld (l0c1f),a
	ld a,#00
	ld (l0bf6),a
	ld (l0c0b),a
	ld (l0c20),a
	ld b,(hl)
	inc hl
	rr b
	jr nc,l08fa
	ld a,(hl)
	inc hl
	or a
	jr nz,l08f7
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jr l08bb
.l08f7
	ld (l08a5),a
.l08fa
	rr b
	jr nc,l0905
	ld a,(hl)
	inc hl
	ld (l0906),a
	jr l0907
.l0906 equ $ + 1
.l0905
	ld a,#00
.l0907
	ld (l08aa),a
	ld ix,l0bed
	call l099b
	ld ix,l0c02
	call l099b
	ld ix,l0c17
	call l099b
	ld (l08b9),hl
.l0923 equ $ + 1
.l0922
	ld de,#0000
	ld bc,#0000
	exx
	ld ix,l0bed
	call l09e7
	ld ix,l0c02
	call l09e7
	ld ix,l0c17
	call l09e7
	xor a
.l093f
	ld (l08a2),a
	ld de,l0c58
	exx
	ld c,#e0
	ld ix,l0bed
	call l0adb
	ld iy,l0c2c
	call l0b0a
	srl c
	ld ix,l0c02
	call l0adb
	ld iy,l0c38
	call l0b0a
	rr c
	ld ix,l0c17
	call l0adb
	ld iy,l0c44
	call l0b0a
	ld a,c
	call l0763
.l097a
	ld sp,l0c2c
	ld bc,#f680
	ld a,#c0
	ld de,#f4f6
	out (c),a
	pop hl
	jp l56d8		; #56d8 modified by megachur
.l098b
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),h
	ld b,e
	out (c),c
	out (c),a
	ret
.l0998 equ $ + 1
	ld sp,#bff6
	ret
.l099b
	rr b
	jr nc,l09a4
	ld a,(hl)
	ld (ix+#01),a
	inc hl
.l09a4
	rr b
	jr nc,l09da
	ld a,(hl)
	inc hl
	sla a
	jr nc,l09c4
	exx
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	ld (ix+#02),a
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#03),a
	ld (ix+#05),a
	exx
	ret
.l09c4
	rra
	ld d,a
	ld e,(hl)
	inc hl
	ld c,l
	ld a,h
	add hl,de
	ld (ix+#02),l
	ld (ix+#03),h
	ld (ix+#04),l
	ld (ix+#05),h
	ld l,c
	ld h,a
	ret
.l09da
	ld a,(ix+#02)
	ld (ix+#04),a
	ld a,(ix+#03)
	ld (ix+#05),a
	ret
.l09e7
	ld a,(ix+#00)
	sub #01
	jr c,l09f2
	ld (ix+#00),a
	ret
.l09f2
	ld l,(ix+#04)
	ld h,(ix+#05)
.l09f8
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	cp #0c
	jr c,l0a27
	sub #0c
	jr z,l0a17
	dec a
	jr z,l0a1d
	dec a
	jr z,l0a10
	ld a,(ix+#07)
	jr l0a2e
.l0a10
	ld a,(hl)
	ld (ix+#07),a
	inc hl
	jr l0a2e
.l0a17
	dec a
	ld (l0a99),a
	jr l09f8
.l0a1d
	bit 4,b
	jr z,l0a76
	ld a,b
	ld (l0a99),a
	jr l0a76
.l0a27
	exx
	ld l,a
	ld h,#00
	add hl,bc
	ld a,(hl)
	exx
.l0a2e
	add (ix+#01)
	ld (ix+#06),a
	ld a,b
	and #30
	jr z,l0a48
	cp #10
	jr z,l0a51
	cp #20
	jr z,l0a4d
	ld a,(hl)
	inc hl
	ld (ix+#08),a
	jr l0a53
.l0a48
	ld a,(ix+#08)
	jr l0a53
.l0a4d
	ld a,#00
	jr l0a53
.l0a51
	ld a,#00
.l0a53
	exx
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (ix+#0d),a
	ld (ix+#0a),l
	ld (ix+#0b),h
	exx
	xor a
	ld (ix+#0c),a
	ld (ix+#0f),a
	ld (ix+#10),a
	ld (ix+#11),a
.l0a76
	ld a,b
	and #c0
	jr z,l0a8a
	cp #40
	jr z,l0a8f
	cp #80
	jr z,l0a93
	ld a,(hl)
	inc hl
	ld (ix+#09),a
	jr l0a95
.l0a8a
	ld a,(ix+#09)
	jr l0a95
.l0a8f
	ld a,#00
	jr l0a95
.l0a93
	ld a,#00
.l0a95
	ld (ix+#00),a
.l0a99 equ $ + 1
	ld a,#00
	or a
	jr nz,l0aa4
.l0a9d
	ld (ix+#04),l
	ld (ix+#05),h
	ret
.l0aa4
	xor a
	ld (l0a99),a
.l0aa8
	ld iy,l0bbe
	ld b,(hl)
	ld a,b
	inc hl
	and #0e
	ld e,a
	ld d,#00
	add iy,de
	ld a,b
	rra
	rra
	rra
	rra
	and #0f
	jp (iy)
.l0abf
	bit 0,b
	jr nz,l0aa8
	jr l0a9d
	ld a,(hl)
	inc hl
	ld (ix+#00),a
	jr l0ad4
	ld a,b
	rlca
	rlca
	and #03
	ld (ix+#00),a
.l0ad4
	ld (ix+#04),l
	ld (ix+#05),h
	ret
.l0adb
	ld a,(ix+#0f)
	or a
	jr z,l0b09
	ld l,(ix+#12)
	ld h,(ix+#10)
	ld e,(ix+#13)
	ld d,(ix+#14)
	ld a,(ix+#11)
	bit 7,d
	jr nz,l0af9
	add hl,de
	adc #00
	jr l0b00
.l0af9
	res 7,d
	or a
	sbc hl,de
	sbc #00
.l0b00
	ld (ix+#11),a
	ld (ix+#12),l
	ld (ix+#10),h
.l0b09
	ret
.l0b0a
	ld l,(ix+#0a)
	ld h,(ix+#0b)
.l0b10
	ld a,(hl)
	ld b,a
	inc hl
	rra
	jr c,l0b32
	rra
	rra
	jr nc,l0b26
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#0a),l
	ld (ix+#0b),h
	jr l0b10
.l0b26
	set 2,c
	call l0b6f
	ld (iy+#01),a
	rl b
	jr l0b58
.l0b32
	rra
	call l0b6f
	ld (iy+#01),a
	ld d,#00
	rl b
	jr nc,l0b47
	ld a,(hl)
	inc hl
	sra a
	ld d,a
	call c,l0b77
.l0b47
	ld a,d
	call l0b7f
	rl b
	call c,l0bac
	exx
	ld (iy+#05),l
	ld (iy+#09),h
	exx
.l0b58
	ld a,(ix+#0c)
	cp (ix+#0d)
	jr nc,l0b64
	inc (ix+#0c)
	ret
.l0b64
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld (ix+#0c),#00
	ret
.l0b6f
	and #0f
	sub (ix+#0e)
	ret nc
	xor a
	ret
.l0b77
	ld a,(hl)
	inc hl
	ld (l0c51),a
	res 5,c
	ret
.l0b7f
	exx
	ld h,#00
	add (ix+#06)
	ld bc,#ff0c
.l0b88
	inc b
	sub c
	jr nc,l0b88
	add c
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,b
	or a
	jr z,l0ba0
.l0b9a
	srl h
	rr l
	djnz l0b9a
.l0ba0
	jr nc,l0ba3
	inc hl
.l0ba3
	ld c,(ix+#10)
	ld b,(ix+#11)
	add hl,bc
	exx
	ret
.l0bac
	ld a,(hl)
	inc hl
	exx
	ld c,a
	exx
	ld a,(hl)
	inc hl
	exx
	ld b,a
	add hl,bc
	exx
	ret
.l0bb8
	ld (ix+#0e),a
	jp l0abf
.l0bbe
	jr l0bbe
	jr l0bb8
	jr l0bcc
.l0bc4
	jr l0bc4
.l0bc6
	jr l0bc6
.l0bc8
	jr l0bc8
.l0bca
	jr l0bca
.l0bcc
	rra
	jr nc,l0be0
	ld (ix+#0f),#ff
	ld a,(hl)
	inc hl
	ld (ix+#13),a
	ld a,(hl)
	inc hl
	ld (ix+#14),a
	jp l0abf
.l0be0
	ld (ix+#0f),#00
	jp l0abf
	cp #0f
	ret c
	ld a,(hl)
	inc hl
	ret
.l0bf4 equ $ + 7
.l0bee equ $ + 1
.l0bed
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0bf7 equ $ + 2
.l0bf6 equ $ + 1
.l0bf5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c02 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c0c equ $ + 7
.l0c0b equ $ + 6
.l0c0a equ $ + 5
.l0c09 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c17 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c21 equ $ + 4
.l0c20 equ $ + 3
.l0c1f equ $ + 2
.l0c1e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c2c equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#08
.l0c2d
	db #00,#87,#09,#00,#00,#87,#09,#01
.l0c39 equ $ + 4
.l0c38 equ $ + 3
	db #00,#87,#09,#09,#00,#87,#09,#02
.l0c44 equ $ + 7
	db #00,#87,#09,#03,#00,#87,#09,#0a
.l0c45
	db #00,#87,#09,#04,#00,#87,#09,#05
.l0c51 equ $ + 4
	db #00,#87,#09,#06,#00,#87,#09,#07
.l0c58 equ $ + 3
.l0c55
	db #3f,#97,#09,#ee,#0e,#18,#0e,#4d
	db #0d,#8e,#0c,#da,#0b,#2f,#0b,#8f
	db #0a,#f7,#09,#68,#09,#e1,#08,#61
	db #08,#e9,#07,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#90,#0c,#c4,#0c,#d8
	db #0c,#07,#0d,#27,#0d,#47,#0d,#5d
	db #0d,#71,#0d,#00,#bd,#09,#54,#00
	db #b9,#09,#1e,#00,#bd,#09,#0d,#00
	db #b9,#09,#1e,#00,#bd,#09,#54,#00
	db #b5,#09,#3c,#00,#b9,#09,#24,#00
	db #b5,#09,#54,#00,#31,#3c,#00,#2d
	db #8e,#00,#25,#a9,#00,#21,#ef,#00
	db #1d,#1c,#01,#19,#52,#01,#04,#02
	db #bd,#16,#c9,#00,#b5,#18,#0c,#01
	db #a9,#1a,#2d,#01,#a1,#1c,#52,#01
	db #b0,#1d,#04,#01,#3d,#77,#00,#3d
	db #5f,#00,#3d,#47,#00,#35,#3f,#00
	db #35,#2f,#00,#31,#77,#00,#31,#5f
	db #00,#31,#47,#00,#29,#3f,#00,#29
	db #2f,#00,#1d,#77,#00,#1d,#5f,#00
	db #1d,#47,#00,#15,#3f,#00,#15,#2f
	db #00,#04,#00,#3d,#17,#00,#19,#57
	db #00,#3d,#3a,#00,#19,#20,#00,#35
	db #61,#00,#11,#41,#00,#29,#98,#00
	db #0d,#a7,#00,#21,#c0,#00,#05,#d3
	db #00,#04,#00,#3d,#0b,#00,#39,#2b
	db #00,#3d,#1e,#00,#31,#0f,#00,#2d
	db #31,#00,#29,#20,#00,#25,#4d,#00
	db #21,#52,#00,#1d,#61,#00,#19,#68
	db #00,#04,#09,#bd,#16,#92,#01,#b5
	db #18,#18,#02,#a9,#1a,#5a,#02,#a1
	db #1c,#a4,#02,#99,#1d,#f6,#02,#04
	db #04,#bd,#16,#b4,#00,#b5,#18,#f7
	db #00,#a9,#1a,#19,#01,#a1,#1c,#50
	db #01,#b0,#1d,#04,#03,#39,#2a,#00
	db #01,#6a,#00,#01,#6a,#00,#01,#6a
	db #00,#3d,#2a,#00,#01,#6a,#00,#01
	db #6a,#00,#3d,#2a,#00,#01,#6a,#00
	db #2d,#2a,#00,#01,#6a,#00,#21,#2a
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
;	ds #0dac-$,#00
;
.l0dac
	db #b4,#0d,#00,#00,#00,#00,#9b,#0e
	db #c8,#0d,#cd,#0d,#ec,#0d,#fd,#0d
	db #0c,#0e,#28,#0e,#32,#0e,#52,#0e
	db #6a,#0e,#79,#0e,#ff,#00,#04,#c9
	db #0d,#00,#b1,#26,#39,#35,#31,#31
	db #71,#ff,#ff,#71,#fe,#ff,#71,#ff
	db #ff,#31,#71,#01,#00,#71,#02,#00
	db #71,#01,#00,#31,#31,#04,#d4,#0d
	db #00,#ed,#18,#01,#00,#75,#fe,#ff
	db #71,#02,#00,#6d,#fe,#ff,#04,#ed
	db #0d,#00,#b9,#19,#0d,#bd,#12,#b5
	db #0c,#b1,#06,#29,#25,#04,#08,#0e
	db #00,#b9,#fd,#0e,#b5,#f9,#09,#b1
	db #f5,#09,#ad,#f1,#09,#a9,#ed,#09
	db #a5,#e9,#09,#a1,#e3,#09,#9d,#df
	db #09,#04,#c9,#0d,#00,#b9,#19,#09
	db #b9,#01,#06,#04,#29,#0e,#00,#b5
	db #02,#39,#35,#31,#31,#71,#ff,#ff
	db #71,#fd,#ff,#71,#ff,#ff,#31,#31
	db #71,#01,#00,#71,#03,#00,#71,#01
	db #00,#31,#31,#04,#39,#0e,#00,#b1
	db #02,#75,#01,#00,#71,#ff,#ff,#6d
	db #01,#00,#69,#ff,#ff,#65,#01,#00
	db #61,#ff,#ff,#04,#c9,#0d,#00,#b1
	db #02,#75,#01,#00,#6d,#ff,#ff,#65
	db #01,#00,#04,#6b,#0e,#00,#b1,#26
	db #39,#35,#31,#31,#31,#31,#31,#71
	db #fe,#ff,#71,#fc,#ff,#71,#fe,#ff
	db #31,#71,#02,#00,#71,#04,#00,#71
	db #02,#00,#31,#31,#04,#83,#0e,#23
	db #14,#12,#0f,#08,#01,#02,#00,#01
	db #4c,#03,#00,#0c,#ae,#1f,#f4,#03
	db #b3,#81,#03,#b0,#ce,#3f,#00,#82
	db #00,#83,#08,#84,#88,#82,#85,#08
	db #84,#ab,#04,#7f,#86,#87,#88,#00
	db #a8,#80,#89,#8a,#00,#ab,#08,#3f
	db #82,#81,#83,#08,#84,#88,#82,#85
	db #08,#84,#ab,#04,#7f,#86,#87,#88
	db #00,#a8,#80,#89,#8a,#00,#e3,#08
	db #01,#81,#0c,#80,#54,#fc,#fc,#08
	db #54,#f9,#f9,#05,#54,#fb,#fb,#07
	db #56,#00,#00,#00,#0c,#44,#fc,#08
	db #44,#f9,#05,#44,#fb,#07,#44,#00
	db #0c,#44,#fc,#08,#44,#f9,#05,#44
	db #f7,#03,#01,#00,#b0,#0e,#97,#12
	db #28,#0f,#07,#11,#92,#0f,#bc,#10
	db #22,#10,#a8,#11,#f6,#11,#52,#11
	db #b4,#13,#ea,#12,#0c,#44,#02,#6e
	db #21,#71,#04,#62,#74,#03,#6f,#71
	db #04,#62,#74,#03,#6f,#71,#04,#62
	db #74,#03,#44,#71,#04,#74,#03,#64
	db #44,#71,#04,#62,#74,#03,#6f,#71
	db #04,#62,#74,#03,#6f,#71,#04,#62
	db #74,#03,#44,#71,#04,#62,#7b,#03
	db #6e,#26,#71,#04,#6e,#32,#7b,#03
	db #6e,#26,#71,#04,#6e,#32,#7b,#03
	db #6e,#26,#71,#04,#6e,#32,#7b,#03
	db #4b,#71,#04,#7b,#03,#69,#4e,#1c
	db #71,#04,#68,#7f,#03,#69,#71,#04
	db #68,#7f,#03,#69,#71,#04,#68,#7f
	db #03,#4f,#71,#04,#e8,#7f,#0c,#91
	db #12,#50,#0c,#50,#32,#0c,#56,#12
	db #0c,#56,#32,#0c,#55,#12,#0c,#55
	db #33,#f4,#00,#02,#0c,#5e,#48,#12
	db #55,#56,#55,#56,#53,#56,#91,#0c
	db #51,#33,#f4,#00,#02,#0c,#50,#12
	db #0c,#50,#32,#0c,#56,#12,#0c,#56
	db #32,#0c,#55,#12,#0c,#55,#33,#f4
	db #00,#02,#0c,#5f,#12,#55,#56,#55
	db #56,#53,#56,#9e,#3e,#0c,#5f,#33
	db #f4,#00,#02,#0c,#53,#12,#0c,#53
	db #32,#0c,#56,#12,#0c,#56,#32,#0c
	db #55,#12,#0c,#55,#33,#f4,#00,#02
	db #0c,#5e,#48,#12,#55,#56,#55,#56
	db #53,#5f,#9e,#4c,#0c,#5f,#33,#f4
	db #00,#02,#0c,#5e,#4a,#12,#5e,#48
	db #5e,#4a,#5d,#f4,#00,#02,#5e,#48
	db #55,#5f,#5d,#f4,#00,#02,#53,#56
	db #55,#5f,#55,#de,#43,#7f,#0c,#bf
	db #09,#12,#5d,#22,#5d,#53,#f4,#00
	db #02,#4f,#0c,#4e,#48,#12,#45,#86
	db #5d,#22,#5d,#53,#f4,#00,#02,#46
	db #5d,#f4,#00,#02,#0c,#46,#12,#45
	db #5d,#f4,#00,#02,#8f,#5d,#22,#5d
	db #53,#f4,#00,#02,#4f,#0c,#45,#12
	db #46,#83,#5d,#22,#5d,#53,#f4,#00
	db #02,#43,#5d,#f4,#00,#02,#0c,#43
	db #72,#5d,#f4,#00,#02,#0c,#43,#92
	db #0c,#8e,#3e,#12,#5d,#22,#5d,#53
	db #f4,#00,#02,#4f,#5d,#f4,#00,#02
	db #0c,#40,#12,#83,#5d,#22,#5d,#53
	db #f4,#00,#02,#43,#5d,#f4,#00,#02
	db #0c,#40,#12,#46,#5d,#f4,#00,#02
	db #85,#5d,#22,#5d,#53,#f4,#00,#02
	db #45,#5d,#f4,#00,#02,#0c,#4e,#48
	db #12,#85,#5d,#22,#5d,#53,#f4,#00
	db #02,#45,#5d,#73,#f4,#00,#02,#45
	db #5d,#f4,#00,#02,#0c,#c5,#7f,#92
	db #0c,#98,#12,#5d,#f4,#00,#02,#72
	db #08,#72,#07,#42,#79,#06,#c2,#02
	db #47,#0a,#47,#18,#5d,#f4,#00,#02
	db #72,#08,#72,#07,#42,#79,#06,#02
	db #47,#0a,#47,#11,#5d,#f4,#00,#02
	db #7e,#32,#08,#7f,#07,#4f,#7a,#06
	db #0f,#48,#0e,#35,#48,#1e,#3b,#5d
	db #f4,#00,#02,#78,#08,#78,#07,#48
	db #7a,#06,#07,#47,#0a,#47,#dd,#7f
	db #f4,#00,#02,#0c,#98,#12,#5d,#f4
	db #00,#02,#72,#08,#72,#07,#42,#79
	db #06,#c2,#02,#47,#0a,#47,#18,#5d
	db #f4,#00,#02,#72,#08,#72,#07,#42
	db #79,#06,#02,#47,#0a,#47,#11,#5d
	db #f4,#00,#02,#7e,#29,#08,#7f,#07
	db #4f,#79,#06,#0f,#49,#0f,#42,#1e
	db #3b,#5d,#f4,#00,#02,#7a,#08,#7a
	db #07,#4a,#7e,#32,#06,#07,#47,#0a
	db #47,#dd,#7f,#f4,#00,#02,#0c,#90
	db #12,#9e,#3c,#9e,#3b,#f1,#09,#02
	db #1d,#f4,#00,#02,#90,#9e,#3c,#9e
	db #3b,#01,#1d,#f4,#00,#02,#90,#9e
	db #3c,#9e,#3b,#91,#10,#1e,#3c,#90
	db #16,#10,#96,#15,#10,#96,#15,#1e
	db #48,#95,#c3,#08,#dd,#02,#f4,#00
	db #02,#90,#d3,#05,#96,#15,#9f,#c0
	db #09,#dd,#03,#f4,#00,#02,#9e,#3c
	db #1e,#3b,#9d,#f4,#00,#02,#9f,#1e
	db #3c,#9d,#f4,#00,#02,#de,#3b,#02
	db #1d,#f4,#00,#02,#0c,#d1,#03,#12
	db #9d,#f4,#00,#02,#b2,#08,#b2,#07
	db #82,#b9,#06,#c2,#05,#87,#0a,#87
	db #18,#9d,#f4,#00,#02,#b2,#08,#b2
	db #07,#82,#b9,#06,#02,#87,#0a,#87
	db #1e,#35,#9d,#f4,#00,#02,#be,#29
	db #08,#bf,#07,#8f,#0c,#9e,#37,#22
	db #11,#9e,#3c,#1e,#3e,#90,#11,#9d
	db #f4,#00,#02,#0c,#b9,#08,#12,#b9
	db #07,#89,#0c,#9a,#22,#17,#97,#1a
	db #d7,#7f,#0c,#84,#02,#ae,#21,#b1
	db #04,#a2,#b4,#03,#af,#b1,#04,#a2
	db #b4,#03,#af,#b1,#04,#a2,#b4,#03
	db #84,#b1,#04,#b4,#03,#a4,#84,#b1
	db #04,#a2,#b4,#03,#af,#b1,#04,#a2
	db #b4,#03,#af,#b1,#04,#a2,#b4,#03
	db #84,#b1,#04,#a2,#bb,#03,#ae,#26
	db #b1,#04,#ae,#32,#bb,#03,#ae,#26
	db #b1,#04,#ae,#32,#bb,#03,#ae,#26
	db #b1,#04,#ae,#32,#bb,#03,#8b,#b1
	db #04,#bb,#03,#a9,#8e,#1c,#b1,#04
	db #a8,#bf,#03,#a9,#b1,#04,#a8,#bf
	db #03,#a9,#b1,#04,#a8,#bf,#03,#8f
	db #b1,#04,#e8,#7f,#fa,#00,#07,#0c
	db #7e,#3c,#05,#b3,#f4,#40,#80,#5d
	db #a2,#5d,#92,#5d,#82,#5d,#72,#5d
	db #62,#5d,#52,#5d,#72,#5d,#82,#5d
	db #92,#5d,#a2,#5d,#b2,#5d,#c2,#5d
	db #d2,#5d,#e2,#5d,#f2,#0c,#51,#22
	db #5e,#3b,#5e,#3c,#50,#56,#55,#5e
	db #48,#d5,#7f,#0c,#d8,#03,#12,#9d
	db #f4,#00,#02,#b2,#08,#b2,#07,#82
	db #b9,#06,#c2,#05,#87,#0a,#87,#18
	db #9d,#f4,#00,#02,#b2,#08,#b2,#07
	db #82,#b9,#06,#02,#87,#0a,#87,#1e
	db #35,#9d,#f4,#00,#02,#bf,#08,#bf
	db #07,#8f,#b8,#06,#0f,#8e,#37,#01
	db #8e,#3c,#1e,#35,#9d,#f4,#00,#02
	db #bf,#08,#bf,#07,#8f,#ba,#06,#d7
	db #03,#9d,#f4,#00,#02,#92,#17,#9d
	db #f4,#00,#02,#de,#2b,#7f,#0c,#90
	db #12,#0c,#50,#32,#50,#0c,#90,#12
	db #0c,#50,#32,#50,#0c,#90,#12,#0c
	db #50,#32,#50,#0c,#90,#12,#0c,#50
	db #32,#50,#0c,#90,#12,#0c,#50,#32
	db #50,#0c,#90,#12,#0c,#50,#32,#50
	db #0c,#90,#12,#96,#95,#90,#9d,#f4
	db #00,#02,#0c,#50,#32,#50,#0c,#90
	db #12,#0c,#50,#32,#50,#0c,#90,#12
	db #0c,#50,#32,#50,#0c,#90,#12,#0c
	db #50,#32,#50,#0c,#90,#12,#0c,#50
	db #32,#50,#0c,#90,#12,#0c,#50,#32
	db #50,#0c,#90,#12,#96,#95,#d3,#02
	db #5d,#f4,#00,#02,#0c,#53,#33,#f4
	db #00,#02,#53,#0c,#93,#12,#0c,#53
	db #32,#53,#0c,#93,#12,#0c,#53,#32
	db #53,#0c,#93,#12,#0c,#53,#32,#53
	db #0c,#93,#12,#0c,#53,#32,#53,#0c
	db #93,#12,#0c,#53,#32,#53,#0c,#93
	db #12,#95,#9e,#4a,#93,#9d,#f4,#00
	db #02,#0c,#53,#32,#53,#0c,#93,#12
	db #0c,#53,#32,#53,#0c,#93,#12,#0c
	db #53,#32,#53,#0c,#96,#12,#90,#9d
	db #f4,#00,#02,#0c,#50,#32,#50,#0c
	db #90,#12,#0c,#50,#32,#50,#0c,#90
	db #12,#90,#50,#5e,#3c,#5e,#3b,#18
	db #0c,#84,#02,#ae,#21,#b1,#04,#a2
	db #b4,#03,#af,#b1,#04,#a2,#b4,#03
	db #af,#b1,#04,#a2,#b4,#03,#84,#b1
	db #04,#b4,#03,#a4,#84,#b1,#04,#a2
	db #b4,#03,#af,#b1,#04,#a2,#b4,#03
	db #af,#b1,#04,#a2,#b4,#03,#84,#b1
	db #04,#a2,#bb,#03,#ae,#26,#b1,#04
	db #ae,#32,#bb,#03,#ae,#26,#b1,#04
	db #ae,#32,#bb,#03,#ae,#26,#b1,#04
	db #ae,#32,#bb,#03,#8b,#b1,#04,#bb
	db #03,#ae,#29,#8e,#1d,#b1,#04,#ae
	db #35,#be,#1d,#03,#ae,#29,#b1,#04
	db #a8,#be,#1c,#03,#a9,#b1,#04,#a8
	db #bf,#03,#8f,#b1,#04,#e8,#7f,#40
	db #39,#2d,#41,#15,#47,#45,#2f,#34
	db #28,#30,#1a,#00
;
;	#30cd
;	ld hl,#0dac
;	xor a
;	call #0813
;
; #56d2 - added by Megachur
;
.l56d2
	ld a,h
	and #0f
	ld h,a
	jr l56e8
.l56d8
	ld (l56e9),a
	ld a,l
	cp #08
	jr z,l56d2
	cp #09
	jr z,l56d2
	cp #0a
	jr z,l56d2
.l56e9 equ $ + 1
.l56e8
	ld a,#c0
	ld b,d
	out (c),l
	jp l098b
;
.init_music		; added by Megachur
;
	ld hl,l0dac
	xor a
	jp real_init_music
;
.music_info
	db "Red Sunset - 2 (2020)(ESP Soft)(John McKlain)",0
	db "StArkos",0

	read "music_end.asm"
