; Music of Cisco Heat (1991)(Image Works)()()
; Ripped by Megachur the 10/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CISCOHEA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #80b0
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"
	
;
.play_music
;
	ld ix,l8b85
	call l81f3
	ld ix,l8b9c
	ld a,(l22ab)
	and a
	jr z,l80c8
	ld a,#0b
	ld (l8be4),a
	jr l80e7
.l80c8
	ld a,(l22ac)
	and a
	jr z,l80d5
	ld a,#0c
	ld (l8be4),a
	jr l80e7
.l80d5
	ld a,(l22a8)
	and a
	jr z,l80e2
	ld a,#08
	ld (l8be4),a
	jr l80e7
.l80e2
	ld a,#00
	ld (l8be4),a
.l80e7
	ld a,#01
	ld (l8be3),a
	call l830c
	call l81f3
	ld a,(l22a1)
	and a
	jr z,l80ff
	ld a,#01
	ld (l8be4),a
	jr l8179
.l80ff
	ld a,(l22a2)
	and a
	jr z,l810c
	ld a,#02
	ld (l8be4),a
	jr l8179
.l810c
	ld a,(l22a3)
	and a
	jr z,l8119
	ld a,#03
	ld (l8be4),a
	jr l8179
.l8119
	ld a,(l22a9)
	and a
	jr z,l8126
	ld a,#09
	ld (l8be4),a
	jr l8179
.l8126
	ld a,(l22a5)
	and a
	jr z,l8133
	ld a,#05
	ld (l8be4),a
	jr l8179
.l8133
	ld a,(l22a6)
	and a
	jr z,l8140
	ld a,#06
	ld (l8be4),a
	jr l8179
.l8140
	ld a,(l22a7)
	and a
	jr z,l814d
	ld a,#07
	ld (l8be4),a
	jr l8179
.l814d
	ld a,(l22aa)
	and a
	jr z,l815a
	ld a,#0a
	ld (l8be4),a
	jr l8179
.l815a
	ld a,(l22a4)
	and a
	jr z,l8167
	ld a,#04
	ld (l8be4),a
	jr l8179
.l8167
	ld a,(l22ad)
	and a
	jr z,l8174
	ld a,#0d
	ld (l8be4),a
	jr l8179
.l8174
	ld a,#00
	ld (l8be4),a
.l8179
	ld a,#02
	ld (l8be3),a
	ld ix,l8bb3
	call l830c
	ld a,(l8be5)
	ld c,a
	ld a,(l8be6)
	and c
	ld (l8bca),a
	ld a,#0a
	ld hl,l8bb9
	ld c,(hl)
	call l83e4
	ld a,#09
	ld hl,l8ba2
	ld c,(hl)
	call l83e4
	ld a,#08
	ld hl,l8b8b
	ld c,(hl)
	call l83e4
	ld a,#07
	ld hl,l8bca
	ld c,(hl)
	call l83e4
	ld a,#06
	ld hl,l8bc9
	ld c,(hl)
	call l83e4
	ld a,#05
	ld hl,l8bb8
	ld c,(hl)
	call l83e4
	ld a,#04
	ld hl,l8bb7
	ld c,(hl)
	call l83e4
	ld a,#03
	ld hl,l8ba1
	ld c,(hl)
	call l83e4
	ld a,#02
	ld hl,l8ba0
	ld c,(hl)
	call l83e4
	ld a,#01
	ld hl,l8b8a
	ld c,(hl)
	call l83e4
	xor a
	ld hl,l8b89
	ld c,(hl)
	call l83e4
	ret
.l81f3
	ld l,(ix+#07)
	ld h,(ix+#08)
	ld a,(hl)
	cp #f6
	jp z,l8305
	cp #ff
	jp z,l8268
	ld a,(ix+#13)
	dec a
	ld (ix+#13),a
	jp z,l8269
	ld a,(ix+#09)
	cp #00
	jp nz,l8305
	ld a,(ix+#0a)
	and a
	jp nz,l8305
	ld a,(ix+#0b)
	sub #0c
	ld c,a
	ld a,(l8be3)
	and a
	jr nz,l823a
	ld a,(l8be2)
	ld e,a
	and a
	jr nz,l8234
	ld a,c
	sub #0c
	ld c,a
.l8234
	ld a,e
	xor #01
	ld (l8be2),a
.l823a
	ex de,hl
	ld hl,l8ac3
	ld b,#00
	add hl,bc
	add hl,bc
	ld b,h
	ld c,l
	ex de,hl
	ld a,(bc)
	ld (ix+#04),a
	inc bc
	ld a,(bc)
	ld (ix+#05),a
	ld e,(ix+#0c)
	ld d,(ix+#0d)
	ld a,(de)
	ld (ix+#06),a
	inc de
	ld a,(de)
	cp #fd
	jr nz,l825f
	dec de
.l825f
	ld (ix+#0c),e
	ld (ix+#0d),d
	jp l8305
.l8268
	inc hl
.l8269
	ld a,(hl)
	cp #fb
	jr nz,l827c
	inc hl
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	ld (ix+#14),l
	ld (ix+#15),h
	jr l8295
.l827c
	ld a,(hl)
	cp #fa
	jr nz,l8295
	ld a,(ix+#16)
	dec a
	ld (ix+#16),a
	jr z,l8292
	ld l,(ix+#14)
	ld h,(ix+#15)
	jr l8295
.l8292
	inc hl
	jr l8269
.l8295
	xor a
	ld (ix+#0a),a
	ld a,(ix+#09)
	cp #00
	jr nz,l82a4
	xor a
	ld (ix+#06),a
.l82a4
	ld a,(hl)
	cp #00
	jr nz,l82af
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	ret
.l82af
	ld a,(hl)
	cp #fe
	jr nz,l82bc
	ld a,#01
	ld (ix+#0a),a
	inc hl
	jr l82e0
.l82bc
	ld a,(hl)
	sub #0c
	inc hl
	ld (ix+#0b),a
	ld c,a
	ld a,(ix+#09)
	cp #00
	jr nz,l82e0
	ld a,c
	ex de,hl
	ld hl,l8ac3
	ld b,#00
	add hl,bc
	add hl,bc
	ld b,h
	ld c,l
	ex de,hl
	ld a,(bc)
	ld (ix+#04),a
	inc bc
	ld a,(bc)
	ld (ix+#05),a
.l82e0
	ld a,(hl)
	inc hl
	ld (ix+#13),a
	ld a,(ix+#0a)
	cp #01
	jp z,l8305
	ld a,(ix+#09)
	cp #00
	jr nz,l8305
	ld e,(ix+#00)
	ld d,(ix+#01)
	ld a,(de)
	ld (ix+#06),a
	inc de
	ld (ix+#0c),e
	ld (ix+#0d),d
.l8305
	ld (ix+#07),l
	ld (ix+#08),h
	ret
.l830c
	ld a,(l8be4)
	cp #00
	jr z,l831c
	ld a,(ix+#09)
	cp #00
	jr nz,l833e
	jr l8348
.l831c
	ld a,(ix+#09)
	cp #00
	jp z,l83e3
.l8324
	ld hl,l8be6
	ld a,(ix+#02)
	or (hl)
	ld (hl),a
	ld hl,l8be5
	ld a,(ix+#03)
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#00
	ld (ix+#09),a
	jp l83e3
.l833e
	ld a,(l8be4)
	ld c,a
	ld a,(ix+#09)
	cp c
	jr z,l8383
.l8348
	ld hl,l8be6
	ld a,(ix+#02)
	xor #ff
	and (hl)
	ld (hl),a
	ld hl,l8be5
	ld a,(ix+#03)
	or (hl)
	ld (hl),a
	ld a,(l8be4)
	ld (ix+#09),a
	ld hl,l8852
	ld e,a
	ld d,#00
	add hl,de
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (ix+#0f),a
	ld a,(hl)
	inc hl
	ld (ix+#0e),a
	ld a,(hl)
	inc hl
	ld (ix+#12),a
	ld (ix+#10),l
	ld (ix+#11),h
	jr l833e
.l8383
	ld a,(ix+#0f)
	cp #fc
	jr z,l838b
	dec a
.l838b
	ld (ix+#0f),a
	and a
	jr z,l83d0
	ld l,(ix+#10)
	ld h,(ix+#11)
	ld a,(hl)
	ld c,a
	cp #00
	jr nz,l83af
	ld a,(ix+#12)
	neg
	add l
	ld l,a
	jr c,l83a7
	dec h
.l83a7
	ld (ix+#10),l
	ld (ix+#11),h
	jr l83e3
.l83af
	inc hl
	ld a,(l8be3)
	cp #01
	jr z,l83c2
	ld a,c
	ld (l8bc9),a
	ld a,(hl)
	inc hl
	ld (ix+#06),a
	jr l83a7
.l83c2
	ld a,#0f
	ld (ix+#06),a
	ld (ix+#04),c
	xor a
	ld (ix+#05),a
	jr l83a7
.l83d0
	ld e,(ix+#09)
	ld a,#00
	ld (ix+#09),a
	ld hl,l22a0
	ld d,#00
	add hl,de
	ld (hl),#00
	jp l8324
.l83e3
	ret
.l83e4
	push bc
	ld bc,#f782
	out (c),c
	pop bc
	cp #07
	jr nz,l83f9
	bit 6,c
	jr z,l83f9
	ld a,#07
	res 6,c
	res 7,c
.l83f9
	ld d,a
	ld e,c
	push af
	ld b,#f4
	out (c),d
	ld bc,#f6c0
	out (c),c
	xor a
	out (c),a
	ld b,#f4
	out (c),e
	ld bc,#f680
	out (c),c
	out (c),a
	pop af
	ret
;
.init_music1
;.l8415
;
	ld hl,l847c
	ld bc,l856a
	ld de,l855f
	jr l8420
.l8420
	ld (l8b8c),hl
	ld (l8ba3),bc
	ld (l8bba),de
	ld a,#00
	ld (l8b8e),a
	ld (l8ba5),a
	ld (l8bbc),a
	ld a,#f8
	ld (l8be5),a
	ret
;
.init_music2
;
	ld hl,l8725
	ld bc,l866b
	ld de,l871b
	jr l8420
;
.init_music3
;
	ld hl,l872f
	ld bc,l8736
	ld de,l873c
	jr l8420
;
.init_music4
;
	ld hl,l8742
	ld bc,l87aa
	ld de,l87e6
	jr l8420
;
.stop_music     ; ?
;
	ld hl,l847a
	ld (l8b8c),hl
	ld (l8ba3),hl
	ld (l8bba),hl
	ld a,#ff
	ld (l8be5),a
	ld (l8bca),a
	ld (l8be6),a
	ld c,a
	ld a,#07
	jp l83e4
.l847c equ $ + 2
.l847a
	db #f6,#f6,#ff,#fb,#02,#48,#18,#46
	db #06,#48,#06,#fe,#06,#43,#06,#fe
	db #06,#48,#06,#46,#24,#fe,#0c,#43
	db #06,#fe,#06,#41,#06,#43,#06,#fe
	db #06,#3f,#06,#fe,#06,#43,#06,#41
	db #24,#fe,#0c,#48,#06,#fe,#06,#46
	db #06,#48,#06,#fe,#06,#43,#06,#fe
	db #06,#48,#06,#46,#24,#3f,#06,#41
	db #06,#43,#06,#41,#06,#43,#06,#44
	db #06,#43,#06,#44,#06,#46,#06,#44
	db #06,#46,#06,#48,#06,#46,#0c,#48
	db #06,#fe,#06,#fa,#fb,#02,#48,#18
	db #46,#06,#48,#06,#fe,#06,#43,#06
	db #fe,#06,#48,#06,#46,#24,#fe,#0c
	db #43,#06,#fe,#06,#41,#06,#43,#06
	db #fe,#06,#3f,#06,#fe,#06,#43,#06
	db #41,#24,#fe,#0c,#48,#06,#fe,#06
	db #46,#06,#48,#06,#fe,#06,#43,#06
	db #fe,#06,#48,#06,#46,#24,#3f,#06
	db #41,#06,#43,#06,#41,#06,#43,#06
	db #44,#06,#43,#06,#44,#06,#46,#06
	db #44,#06,#46,#06,#48,#06,#46,#0c
	db #48,#06,#fe,#06,#fa,#fb,#04,#52
	db #06,#fe,#06,#52,#0c,#46,#0c,#52
	db #06,#48,#06,#fe,#06,#48,#06,#52
	db #0c,#46,#0c,#52,#0c,#4d,#06,#fe
	db #06,#4d,#0c,#46,#0c,#4d,#06,#4d
	db #0c,#46,#06,#4d,#0c,#44,#0c,#44
.l855f equ $ + 5
	db #0c,#fa,#00,#15,#84,#ff,#fb,#ff
	db #fe,#ff,#fe,#ff,#fa,#00,#15,#84
.l856a
	db #ff,#48,#18,#46,#06,#48,#06,#fe
	db #06,#43,#06,#fe,#06,#48,#06,#46
	db #24,#fe,#0c,#43,#06,#fe,#06,#41
	db #06,#43,#06,#fe,#06,#3f,#06,#fe
	db #06,#43,#06,#41,#24,#fe,#0c,#48
	db #06,#fe,#06,#46,#06,#48,#06,#fe
	db #06,#43,#06,#fe,#06,#48,#06,#46
	db #24,#3f,#06,#41,#06,#43,#06,#41
	db #06,#43,#06,#44,#06,#43,#06,#44
	db #06,#46,#06,#44,#06,#46,#06,#48
	db #06,#46,#0c,#48,#06,#fe,#06,#41
	db #18,#3f,#06,#41,#06,#fe,#06,#3c
	db #06,#fe,#06,#41,#06,#3f,#24,#fe
	db #0c,#3f,#06,#fe,#06,#3d,#06,#3f
	db #06,#fe,#06,#3a,#06,#fe,#06,#3f
	db #06,#3d,#24,#fe,#0c,#41,#06,#fe
	db #06,#3f,#06,#41,#06,#fe,#06,#3c
	db #06,#fe,#06,#41,#06,#3f,#24,#33
	db #06,#35,#06,#37,#06,#35,#06,#37
	db #06,#38,#06,#37,#06,#38,#06,#3a
	db #06,#38,#06,#3a,#06,#3c,#06,#3a
	db #0c,#3c,#06,#fe,#06,#fb,#10,#52
	db #18,#54,#12,#52,#06,#fe,#06,#52
	db #06,#54,#0c,#52,#0c,#57,#0c,#59
	db #18,#5b,#12,#59,#06,#fe,#06,#59
	db #06,#5b,#0c,#59,#0c,#54,#0c,#52
	db #18,#54,#12,#52,#06,#fe,#06,#52
	db #06,#54,#0c,#52,#0c,#57,#0c,#59
	db #06,#4d,#06,#4f,#06,#4d,#06,#59
	db #06,#50,#06,#4f,#06,#50,#06,#59
	db #06,#50,#06,#59,#06,#54,#06,#59
	db #0c,#54,#06,#fe,#06,#fa,#00,#15
.l866b equ $ + 1
	db #84,#ff,#fb,#10,#5e,#05,#fe,#01
	db #5e,#06,#fe,#06,#5e,#05,#fe,#01
	db #5e,#05,#fe,#01,#5e,#06,#fe,#06
	db #5e,#05,#fe,#01,#5e,#05,#fe,#01
	db #5e,#06,#fe,#06,#5e,#05,#fe,#01
	db #5b,#05,#fe,#01,#5b,#05,#fe,#01
	db #59,#05,#fe,#01,#59,#05,#fe,#01
	db #fa,#fb,#03,#57,#05,#fe,#01,#57
	db #06,#fe,#06,#57,#05,#fe,#01,#57
	db #05,#fe,#01,#57,#06,#fe,#06,#57
	db #05,#fe,#01,#59,#05,#fe,#01,#59
	db #06,#fe,#06,#59,#05,#fe,#01,#59
	db #05,#fe,#01,#59,#05,#fe,#01,#59
	db #05,#fe,#01,#59,#05,#fe,#01,#fa
	db #fb,#10,#57,#05,#fe,#01,#fa,#fb
	db #08,#5e,#05,#fe,#01,#5e,#06,#fe
	db #06,#52,#05,#fe,#01,#5e,#05,#fe
	db #01,#5e,#06,#fe,#06,#52,#05,#fe
	db #01,#5e,#05,#fe,#01,#5e,#06,#fe
	db #06,#52,#05,#fe,#01,#5b,#05,#fe
	db #01,#4f,#05,#fe,#01,#59,#05,#fe
	db #01,#4d,#05,#fe,#01,#fa,#00,#3c
.l871b equ $ + 1
	db #84,#ff,#fe,#c0,#fb,#ff,#fe,#ff
.l8725 equ $ + 3
	db #fe,#ff,#fa,#ff,#fb,#7f,#fe,#ff
.l872f equ $ + 5
	db #fe,#ff,#fa,#3c,#84,#ff,#74,#60
.l8736 equ $ + 4
	db #00,#f5,#47,#84,#ff,#60,#60,#00
.l873c equ $ + 2
	db #47,#84,#ff,#6a,#60,#00,#47,#84
.l8742
	db #ff,#4d,#13,#fe,#01,#50,#09,#fe
	db #01,#54,#1d,#fe,#01,#50,#1d,#fe
	db #01,#4d,#1d,#fe,#01,#48,#3b,#fe
	db #01,#44,#13,#fe,#01,#46,#09,#fe
	db #01,#48,#1d,#fe,#01,#50,#1d,#fe
	db #01,#4e,#1d,#fe,#01,#4d,#3b,#fe
	db #01,#4d,#13,#fe,#01,#4d,#09,#fe
	db #01,#44,#31,#fe,#01,#46,#09,#fe
	db #01,#48,#1d,#fe,#01,#49,#3b,#fe
	db #01,#4b,#13,#fe,#01,#49,#09,#fe
	db #01,#48,#1d,#fe,#01,#48,#1d,#fe
	db #01,#4d,#1d,#fe,#01,#50,#1d,#fe
	db #01,#54,#3c,#fe,#0a,#00,#52,#84
.l87aa
	db #ff,#59,#1d,#fe,#01,#54,#59,#fe
	db #01,#57,#59,#fe,#01,#54,#3b,#fe
	db #01,#52,#1d,#fe,#01,#59,#59,#fe
	db #01,#54,#3b,#fe,#01,#52,#09,#fe
	db #01,#50,#09,#fe,#01,#4e,#09,#fe
	db #01,#4d,#59,#fe,#01,#54,#3b,#fe
	db #01,#59,#1d,#fe,#01,#54,#59,#fe
.l87e6 equ $ + 4
	db #01,#00,#52,#84,#ff,#4d,#13,#fe
	db #02,#50,#09,#fe,#01,#54,#1d,#fe
	db #01,#54,#1d,#fe,#01,#52,#1d,#fe
	db #01,#4b,#3b,#fe,#01,#48,#13,#fe
	db #01,#4d,#09,#fe,#01,#48,#1d,#fe
	db #01,#54,#1d,#fe,#01,#52,#1d,#fe
	db #01,#48,#1d,#fe,#01,#49,#1d,#fe
	db #01,#4d,#13,#fe,#01,#4f,#09,#fe
	db #01,#48,#31,#fe,#01,#49,#09,#fe
	db #01,#4d,#1d,#fe,#01,#4d,#3b,#fe
	db #01,#4d,#13,#fe,#01,#4e,#09,#fe
	db #01,#54,#1d,#fe,#01,#54,#1d,#fe
	db #01,#4d,#1d,#fe,#01,#54,#1d,#fe
	db #01,#60,#3c,#fe,#0a,#00,#52,#84
.l8852
	db #00,#00,#a9,#89,#25,#8a,#ad,#88
	db #a9,#89,#47,#89,#25,#8a,#5b,#8a
	db #9c,#88,#67,#89,#85,#89,#86,#88
	db #70,#88,#5b,#8a,#00,#00,#08,#0f
	db #12,#c8,#e0,#f8,#c8,#e0,#f8,#c8
	db #e0,#f8,#c8,#e0,#f8,#c8,#e0,#f8
	db #c8,#e0,#f8,#00,#08,#0b,#12,#64
	db #36,#08,#64,#36,#08,#64,#36,#08
	db #64,#36,#08,#64,#36,#08,#64,#36
	db #08,#00,#fc,#0f,#0e,#0b,#0c,#0d
	db #0e,#0f,#10,#11,#12,#13,#14,#15
	db #16,#17,#00,#4b,#0f,#96,#0a,#01
	db #0a,#01,#0a,#01,#0a,#01,#0a,#01
	db #0a,#02,#0a,#02,#0a,#02,#0a,#02
	db #0a,#02,#0a,#03,#0a,#03,#0a,#03
	db #0a,#03,#0a,#03,#0a,#04,#0a,#04
	db #0a,#04,#0a,#04,#0a,#04,#0a,#05
	db #0a,#05,#0a,#05,#0a,#05,#0a,#05
	db #0a,#06,#0a,#06,#0a,#06,#0a,#06
	db #0a,#06,#0a,#07,#0a,#07,#0a,#07
	db #0a,#07,#0a,#07,#0a,#08,#0a,#08
	db #0a,#08,#0a,#08,#0a,#08,#0a,#09
	db #0a,#09,#0a,#09,#0a,#09,#0a,#09
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0b,#0a,#0b,#0a,#0b
	db #0a,#0b,#0a,#0b,#0a,#0c,#0a,#0c
	db #0a,#0c,#0a,#0c,#0a,#0c,#0a,#0d
	db #0a,#0d,#0a,#0d,#0a,#0d,#0a,#0d
	db #0a,#0e,#0a,#0e,#0a,#0e,#0a,#0e
	db #0a,#0e,#0a,#0f,#0a,#0f,#0a,#0f
	db #0a,#0f,#0a,#0f,#00,#0c,#0f,#18
	db #18,#0f,#18,#0f,#18,#0f,#18,#0f
	db #18,#0d,#16,#0c,#14,#0b,#13,#0a
	db #12,#06,#10,#05,#0e,#04,#0c,#03
	db #0a,#02,#08,#01,#00,#0d,#0f,#1a
	db #1d,#0d,#1c,#0d,#1b,#0a,#1a,#09
	db #19,#08,#18,#07,#17,#06,#16,#06
	db #15,#05,#14,#04,#13,#03,#12,#02
	db #11,#01,#00,#10,#0f,#20,#01,#0e
	db #02,#0e,#03,#0e,#05,#0e,#07,#0e
	db #09,#0e,#0c,#0e,#0f,#0d,#11,#0d
	db #14,#0d,#16,#0d,#19,#0c,#1c,#0b
	db #1d,#0b,#1e,#0a,#1f,#09,#00,#3c
	db #0f,#78,#0f,#0f,#0e,#0f,#0d,#0f
	db #0c,#0f,#0b,#0f,#0a,#0f,#09,#0f
	db #08,#0f,#07,#0f,#07,#0f,#04,#0f
	db #04,#0f,#03,#0f,#03,#0f,#02,#0f
	db #02,#0f,#02,#0f,#02,#0f,#02,#0f
	db #02,#0f,#01,#0f,#01,#0f,#01,#0f
	db #01,#0f,#01,#0f,#01,#0e,#01,#0e
	db #01,#0d,#01,#0d,#01,#0c,#01,#0b
	db #01,#0b,#01,#0a,#01,#0a,#01,#0a
	db #01,#09,#01,#09,#01,#09,#01,#08
	db #01,#08,#01,#07,#01,#07,#01,#07
	db #01,#06,#01,#06,#01,#05,#01,#05
	db #01,#04,#01,#04,#01,#03,#01,#03
	db #01,#03,#01,#02,#01,#02,#01,#02
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#00,#19,#0f,#32,#14,#0f
	db #14,#0f,#14,#0f,#14,#0f,#14,#0f
	db #14,#0e,#14,#0f,#14,#0c,#14,#0a
	db #14,#0a,#14,#0a,#14,#0a,#14,#0a
	db #14,#0a,#14,#0a,#14,#09,#14,#08
	db #14,#07,#14,#06,#14,#05,#14,#04
	db #14,#03,#14,#02,#14,#02,#14,#02
	db #00,#32,#0f,#64,#1c,#0f,#1c,#0f
	db #1c,#0f,#1c,#0f,#1c,#0f,#1c,#0f
	db #1c,#0f,#1c,#0f,#1c,#0f,#1c,#0f
	db #1c,#0e,#1c,#0f,#1c,#0c,#1c,#0a
	db #1c,#0a,#1c,#0e,#1c,#0f,#1c,#0c
	db #1c,#0a,#1c,#0a,#1c,#0a,#1c,#0a
	db #1c,#0a,#1c,#0a,#1c,#0a,#1c,#0a
	db #1c,#0a,#1c,#0a,#1c,#0a,#1c,#0a
	db #1c,#09,#1c,#08,#1c,#07,#1c,#06
	db #1c,#05,#1c,#09,#1c,#08,#1c,#07
	db #1c,#06,#1c,#05,#1c,#04,#1c,#03
	db #1c,#02,#1c,#02,#1c,#02,#1c,#04
	db #1c,#03,#1c,#02,#1c,#02,#1c,#02
	db #00
.l8ac3
	dw #0010,#0010,#0011,#0012
	dw #0013,#0014,#0015,#0016
	dw #0018,#0019,#001b,#001c
	dw #001e,#0020,#0022,#0024
	dw #0026,#0028,#002a,#002d
	dw #002f,#0032,#0035,#0038
	dw #003c,#003f,#0043,#0047
	dw #004b,#0050,#0054,#0059
	dw #005f,#0064,#006a,#0071
	dw #0077,#007f,#0086,#008e
	dw #0096,#009f,#00a9,#00b3
	dw #00be,#00c9,#00d5,#00e1
	dw #00ef,#00fd,#010c,#0120
	dw #012d,#013f,#0152,#0166
	dw #017b,#0192,#01aa,#01c3
	dw #01de,#01fa,#0218,#0238
	dw #025a,#027e,#02a4,#02cc
	dw #02f6,#0324,#0353,#0386
	dw #03bc,#03f4,#0431,#0470
	dw #04b4,#04fc,#0547,#0598
	dw #05ed,#0647,#06a7,#070c
	dw #0777,#07e9,#0861,#08e1
	dw #0968,#09f7,#0a8f,#0b2f
	dw #0bda,#0c8e,#0d4d,#0e18
	dw #0eee
.l8b8c equ $ + 7
.l8b8b equ $ + 6
.l8b8a equ $ + 5
.l8b89 equ $ + 4
.l8b85
	db #cb,#8b,#01,#00,#ef,#e5,#e5,#8f
.l8b8e equ $ + 1
	db #0a,#ef,#e5,#e5,#8f,#0a,#fa,#f0
.l8b9c equ $ + 7
	db #e0,#a4,#08,#ae,#a4,#e0,#e0,#d8
.l8ba3 equ $ + 6
.l8ba2 equ $ + 5
.l8ba1 equ $ + 4
.l8ba0 equ $ + 3
	db #8b,#02,#02,#c0,#80,#ef,#e5,#e5
.l8ba5
	db #cf,#0a,#ff,#f0,#8f,#ef,#e5,#8f
.l8bb3 equ $ + 6
	db #ae,#a4,#48,#ae,#a4,#c0,#dd,#8b
.l8bbc equ $ + 7
.l8bba equ $ + 5
.l8bb9 equ $ + 4
.l8bb8 equ $ + 3
.l8bb7 equ $ + 2
	db #20,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#dd,#8b,#00,#00,#00,#00
.l8bca equ $ + 5
.l8bc9 equ $ + 4
	db #00,#00,#00,#00,#00,#ff,#0f,#0d
	db #0c,#0b,#0a,#09,#09,#08,#07,#06
	db #05,#04,#fd,#0d,#0d,#0d,#04,#fd
.l8be4 equ $ + 7
.l8be3 equ $ + 6
.l8be2 equ $ + 5
	db #0b,#09,#07,#05,#fd,#00,#00,#00
.l8be6 equ $ +1
.l8be5
	db #f8,#ff,#00,#00

.l22a7 equ $ + 7
.l22a6 equ $ + 6
.l22a5 equ $ + 5
.l22a4 equ $ + 4
.l22a3 equ $ + 3
.l22a2 equ $ + 2
.l22a1 equ $ + 1
.l22a0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l22ad equ $ + 5
.l22ac equ $ + 4
.l22ab equ $ + 3
.l22aa equ $ + 2
.l22a9 equ $ + 1
.l22a8
	db #00,#00,#00,#00,#00,#00,#00,#00
;
; #2981
; call #8415		; init 1
; ret
; call #843c		; init 2
; ret
; call #8452		; init 3
; ret
;
; #3f9c
; ld a,(#229e)
; ld (#8ba5),a
; ld a,(#229f)
; ld (#8bbc),a
; call #80b0		; play
; ld a,(#8ba5)
; ld (#229e),a
; ld a,(#8bbc)
; ld (#229f),a
; ret
;
.init_music                     ; added by Megachur
;
	or a
	jp z,init_music1
	dec a
	jp z,init_music2
;	dec a
;	jp z,init_music3	; don't work (reset)
	jp init_music4

;
.music_info
	db "Cisco Heat (1991)(Image Works)()",0
	db "",0

	read "music_end.asm"
