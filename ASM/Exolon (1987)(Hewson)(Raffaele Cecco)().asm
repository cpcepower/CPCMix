; Music of Exolon (1987)(Hewson)(Raffaele Cecco)()
; Ripped by Megachur the 28/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EXOLON.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #59fa

	read "music_header.asm"

.l59fa
	ld a,(l5a09)
	ld (l623a),a
	inc a
	ld (l61ea),a
	ld (l628a),a
	ret
	db #00
.l5a09
	db #0c
.l5a0a
	db #00,#00,#03
;.music_end
.l5a0d
	db #ff
.l5a0e
	db #00
.l5a0f
	dw l5d2a
.l5a11
	dw l5ebc
.l5a13
	dw l5d2a
;
.init_music
;
	ld bc,l5d2a
	ld de,l5ebc
	ld hl,l6059
	ld a,#ff
	ld (l5a0d),a
	ld (l5a0f),bc
	ld (l5a11),de
	ld (l5a13),hl
	ld ix,l61e2
	call l5a59
	ld ix,l6232
	call l5a59
	ld ix,l6282
	call l5a59
	call l59fa
	call l5a7c
	ld a,#01
	ld (l61e4),a
	ld (l6234),a
	ld (l6284),a
	xor a
	ld (l5a0d),a
	ret
.l5a59
	ld a,(l5a09)
	ld (ix+#03),a
	xor a
	ld (ix+#09),a
	ld (ix+#0c),a
	ld (ix+#0d),a
	ld (ix+#00),a
	ld (ix+#01),a
	ld (ix+#02),#01
	ld (ix+#04),#05
	ld (ix+#05),#05
	ret
;
.l5a7c
.stop_music
;
	ld a,#b8
	ld (l5a0e),a
	ld c,a
	ld a,#07
	ld e,#04
.l5a86
	call l6315
	ld c,#00
	inc a
	dec e
	jr nz,l5a86
	ret
;
.play_music
.l5a90
;
	xor a
	ld (l5a0a),a
	ld a,(l5a0d)
	or a
	jr nz,l5ac7
	ld ix,l61e2
	ld iy,(l5a0f)
	call l5ac8
	ld (l5a0f),iy
	ld ix,l6232
	ld iy,(l5a11)
	call l5ac8
	ld (l5a11),iy
	ld ix,l6282
	ld iy,(l5a13)
	call l5ac8
	ld (l5a13),iy
.l5ac7
	ret
.l5ac8
	ld a,(ix+#0d)
	or a
	jr z,l5ad7
	ld (ix+#0d),#00
	call l5bb8
	jr l5add
.l5ad7
	dec (ix+#02)
	jp z,l5bb8
.l5add
	dec (ix+#1b)
	jp nz,l5b4b
	ld a,(ix+#19)
	add (ix+#1d)
	ld (ix+#19),a
	dec (ix+#1c)
	jr nz,l5b21
	ld a,(ix+#1a)
	add #03
	ld (ix+#1a),a
	cp (ix+#1f)
	jr nz,l5b02
	xor a
	ld (ix+#1a),a
.l5b02
	add #20
	ld (l5b11),a
	inc a
	ld (l5b17),a
	inc a
	ld (l5b1d),a
.l5b11 equ $ + 2
	ld a,(ix+#00)
	ld (ix+#1c),a
.l5b17 equ $ + 2
	ld a,(ix+#00)
	ld (ix+#1d),a
.l5b1d equ $ + 2
	ld a,(ix+#00)
	ld (ix+#1e),a
.l5b21
	ld a,(ix+#1e)
	ld (ix+#1b),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,l
	or h
	jr z,l5b3e
	ld d,#ff
	ld a,(ix+#19)
	or a
	jp m,l5b3c
	ld d,#00
.l5b3c
	ld e,a
	add hl,de
.l5b3e
	ld a,(ix+#06)
	inc a
	ld c,h
	call l6315
	dec a
	ld c,l
	call l6315
.l5b4b
	dec (ix+#36)
	jr nz,l5bb7
	ld a,(ix+#03)
	add (ix+#38)
	jp p,l5b5a
	xor a
.l5b5a
	ld (ix+#03),a
	ld a,(ix+#08)
	cp (ix+#03)
	jr nc,l5b68
	ld (ix+#03),a
.l5b68
	dec (ix+#37)
	jr nz,l5ba7
	ld a,(ix+#35)
	add #03
	ld (ix+#35),a
	cp (ix+#3a)
	jr nz,l5b88
	ld (ix+#38),#00
	ld (ix+#37),#ff
	ld (ix+#39),#ff
	jr l5ba7
.l5b88
	add #3b
	ld (l5b97),a
	inc a
	ld (l5b9d),a
	inc a
	ld (l5ba3),a
.l5b97 equ $ + 2
	ld a,(ix+#00)
	ld (ix+#37),a
.l5b9d equ $ + 2
	ld a,(ix+#00)
	ld (ix+#38),a
.l5ba3 equ $ + 2
	ld a,(ix+#00)
	ld (ix+#39),a
.l5ba7
	ld a,(ix+#39)
	ld (ix+#36),a
	ld a,(ix+#03)
	ld c,a
	ld a,(ix+#07)
	jp l6315
.l5bb7
	ret
.l5bb8
	ld a,(l5a0a)
	or a
	jr z,l5bc2
	ld (ix+#0d),a
	ret
.l5bc2
	dec a
	ld (l5a0a),a
.l5bc6
	ld a,(iy+#00)
	cp #32
	jr nc,l5c25
.l5bcd
	or a
	jr z,l5bd3
	add (ix+#09)
.l5bd3
	ld l,a
	sla l
	ld h,#00
	push de
	ld de,l6335
	add hl,de
	pop de
	ld a,(hl)
	ld (ix+#00),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
	ld a,(ix+#0a)
	ld (ix+#02),a
	ld (ix+#03),#00
	inc iy
	ld (ix+#05),#01
	ld (ix+#19),#00
	ld (ix+#1b),#01
	ld (ix+#1c),#01
	ld (ix+#1a),#fd
	ld (ix+#1d),#00
	ld a,(ix+#3b)
	ld (ix+#37),a
	ld a,(ix+#3c)
	ld (ix+#38),a
	ld a,(ix+#3d)
	ld (ix+#39),a
	ld (ix+#36),a
	ld (ix+#35),#00
	ret
.l5c25
	cp #64
	jr nc,l5c38
	ld a,(iy+#01)
	ld (ix+#0a),a
	ld a,(iy+#00)
	inc iy
	sub #32
	jr l5bcd
.l5c38
	cp #64
	jr nz,l5c4f
	ld hl,l5a0e
	ld a,(hl)
	xor (ix+#0b)
	ld (hl),a
	ld c,a
	ld a,#07
	call l6315
.l5c4a
	inc iy
	jp l5bc6
.l5c4f
	cp #79
	jr nz,l5c62
	inc iy
	ld c,(iy+#00)
	ld a,#06
	call l6315
	inc iy
	jp l5bc6
.l5c62
	cp #75
	jr nc,l5c6d
	sub #65
	ld (ix+#08),a
	jr l5c4a
.l5c6d
	cp #75
	jr nz,l5c9d
	ld l,(iy+#01)
	ld h,(iy+#02)
	inc iy
	inc iy
	inc iy
	push iy
	pop bc
	ld a,(ix+#0c)
	sla a
	add #0e
	ld (l5c90),a
	inc a
	ld (l5c93),a
.l5c90 equ $ + 2
	ld (ix+#00),c
.l5c93 equ $ + 2
	ld (ix+#01),b
	inc (ix+#0c)
	push hl
	pop iy
	jp l5bc6
.l5c9d
	cp #76
	jr nz,l5cbe
	dec (ix+#0c)
	ld a,(ix+#0c)
	sla a
	add #0e
	ld (l5cb4),a
	inc a
	ld (l5cb7),a
.l5cb4 equ $ + 2
	ld c,(ix+#00)
.l5cb7 equ $ + 2
	ld b,(ix+#01)
	push bc
	pop iy
	jp l5bc6
.l5cbe
	cp #77
	jr nz,l5ccf
	inc iy
	ld a,(iy+#00)
	ld (ix+#09),a
	inc iy
	jp l5bc6
.l5ccf
	cp #78
	jr nz,l5cdf
	ld l,(iy+#01)
	ld h,(iy+#02)
	push hl
	pop iy
	jp l5bc6
.l5cdf
	cp #ff
	jr z,l5d20
	cp #89
	jr nz,l5d01
	inc iy
	ld a,(iy+#00)
	ld b,a
	inc b
	push ix
.l5cf0
	ld a,(iy+#00)
	ld (ix+#1f),a
	inc iy
	inc ix
	djnz l5cf0
	pop ix
	jp l5bc6
.l5d01
	cp #8a
	jr nz,l5d1f
	inc iy
	ld a,(iy+#00)
	ld b,a
	inc b
	push ix
.l5d0e
	ld a,(iy+#00)
	ld (ix+#3a),a
	inc iy
	inc ix
	djnz l5d0e
	pop ix
	jp l5bc6
.l5d1f
	ret
.l5d20
	ld (l5a0d),a
	call l5a7c
	pop af
	jp l5ac7
.l5d2a
	db #75,#58,#61,#75,#92,#5e,#75,#7f
	db #5e,#75,#7f,#5e,#75,#70,#5e,#75
	db #70,#5e,#75,#42,#5e,#75,#70,#5e
	db #75,#70,#5e,#75,#42,#5e,#75,#14
	db #5e,#75,#70,#5e,#75,#70,#5e,#75
	db #70,#5e,#75,#70,#5e,#75,#07,#5e
	db #75,#07,#5e,#75,#ec,#5d,#75,#70
	db #5e,#75,#70,#5e,#75,#70,#5e,#75
	db #70,#5e,#75,#07,#5e,#75,#07,#5e
	db #75,#ec,#5d,#75,#70,#5e,#75,#70
	db #5e,#75,#70,#5e,#75,#70,#5e,#75
	db #df,#5d,#75,#df,#5d,#75,#d0,#5d
	db #75,#d0,#5d,#75,#b3,#5d,#75,#96
	db #5d,#4e,#a0,#ff,#55,#14,#24,#53
	db #0a,#55,#14,#21,#23,#1f,#51,#0a
	db #53,#14,#51,#14,#21,#50,#0a,#51
	db #14,#1e,#1f,#1c,#4e,#0a,#50,#14
	db #76,#50,#14,#1f,#4e,#0a,#50,#14
	db #1e,#1f,#1c,#4e,#0a,#50,#14,#50
	db #14,#1f,#4e,#0a,#50,#14,#1b,#1c
	db #1e,#51,#0a,#53,#14,#76,#4e,#14
	db #1d,#4c,#0a,#4e,#14,#1c,#1d,#1a
	db #4c,#0a,#4e,#14,#76,#4c,#14,#1c
	db #4a,#0a,#4c,#14,#17,#18,#15,#49
	db #1e,#76,#50,#14,#1f,#4e,#0a,#50
	db #14,#1b,#1c,#19,#4d,#1e,#50,#14
	db #1f,#4e,#0a,#50,#14,#1b,#1c,#1e
	db #51,#0a,#53,#14,#76,#51,#14,#21
	db #50,#0a,#51,#14,#1c,#1e,#1a,#4e
	db #1e,#76,#75,#d6,#61,#4a,#28,#15
	db #4a,#1e,#18,#4e,#0a,#1a,#4a,#28
	db #13,#4a,#1e,#18,#4e,#0a,#1a,#4a
	db #28,#18,#4a,#1e,#18,#4e,#0a,#1a
	db #4a,#28,#18,#4a,#0a,#1c,#18,#1c
	db #1f,#1c,#1f,#23,#75,#6a,#61,#76
	db #75,#4f,#61,#53,#14,#53,#0a,#75
	db #6a,#61,#51,#32,#51,#14,#4a,#0a
	db #53,#14,#4a,#0a,#51,#14,#75,#4f
	db #61,#4e,#14,#4e,#0a,#75,#6a,#61
	db #4c,#32,#4c,#14,#45,#0a,#4e,#14
	db #45,#0a,#4c,#0a,#13,#76,#55,#14
	db #24,#53,#0a,#55,#14,#1f,#21,#1e
	db #55,#0a,#4e,#14,#76,#51,#28,#51
	db #1e,#23,#55,#14,#21,#1f,#51,#28
	db #51,#1e,#23,#55,#14,#21,#1f,#76
	db #75,#9d,#5e,#51,#14,#75,#9d,#5e
	db #53,#14,#76,#51,#0a,#1a,#1f,#23
	db #58,#14,#1a,#1c,#56,#0a,#23,#24
	db #23,#53,#1e,#50,#0a,#1f,#53,#14
	db #50,#0a,#4c,#14,#24,#56,#0a,#55
	db #1e,#76
.l5ebc
	db #75,#46,#61,#64,#75,#3a,#60,#75
	db #3a,#60,#75,#3a,#60,#75,#3a,#60
	db #64,#75,#58,#61,#75,#19,#60,#75
	db #19,#60,#75,#0a,#60,#75,#0a,#60
	db #75,#dc,#5f,#75,#0a,#60,#75,#0a
	db #60,#75,#dc,#5f,#75,#b4,#5f,#75
	db #0a,#60,#75,#0a,#60,#75,#0a,#60
	db #75,#0a,#60,#75,#a7,#5f,#75,#a7
	db #5f,#75,#8c,#5f,#75,#0a,#60,#75
	db #0a,#60,#75,#0a,#60,#75,#0a,#60
	db #75,#a7,#5f,#75,#a7,#5f,#75,#8c
	db #5f,#75,#0a,#60,#75,#0a,#60,#75
	db #0a,#60,#75,#0a,#60,#75,#7f,#5f
	db #75,#7f,#5f,#75,#70,#5f,#75,#70
	db #5f,#75,#53,#5f,#75,#36,#5f,#49
	db #a0,#ff,#51,#14,#21,#50,#0a,#51
	db #14,#1e,#1f,#1c,#4e,#0a,#50,#14
	db #4e,#14,#1e,#4c,#0a,#4e,#14,#1b
	db #1c,#19,#4b,#0a,#4d,#14,#76,#4d
	db #14,#1c,#4b,#0a,#4d,#14,#1b,#1c
	db #19,#4b,#0a,#4d,#14,#4d,#14,#1c
	db #4b,#0a,#4d,#14,#17,#19,#1b,#4e
	db #0a,#50,#14,#76,#4a,#14,#1a,#49
	db #0a,#4a,#14,#18,#1a,#17,#49,#0a
	db #4a,#14,#76,#49,#14,#18,#47,#0a
	db #49,#14,#13,#15,#12,#45,#1e,#76
	db #4d,#14,#1c,#4b,#0a,#4d,#14,#17
	db #19,#15,#49,#1e,#4d,#14,#1c,#4b
	db #0a,#4d,#14,#17,#19,#1b,#4e,#0a
	db #50,#14,#76,#4e,#14,#1e,#4c,#0a
	db #4e,#14,#18,#1a,#17,#4a,#1e,#76
	db #75,#d6,#61,#32,#28,#15,#32,#14
	db #47,#1e,#15,#32,#28,#13,#32,#14
	db #45,#1e,#13,#32,#14,#15,#00,#15
	db #32,#14,#47,#1e,#15,#32,#14,#13
	db #00,#13,#32,#50,#75,#6a,#61,#76
	db #75,#4f,#61,#4f,#14,#4f,#0a,#75
	db #6a,#61,#4e,#32,#4e,#14,#4a,#0a
	db #4f,#14,#4a,#0a,#4e,#14,#75,#4f
	db #61,#4a,#14,#4a,#0a,#75,#6a,#61
	db #49,#32,#49,#14,#45,#0a,#4a,#14
	db #45,#0a,#49,#0a,#13,#76,#51,#14
	db #21,#50,#0a,#51,#14,#1c,#1e,#1a
	db #50,#0a,#49,#14,#76,#4e,#14,#17
	db #1c,#49,#0a,#51,#14,#49,#0a,#1f
	db #17,#1e,#17,#1c,#17,#4e,#14,#18
	db #1c,#4a,#0a,#51,#14,#4a,#0a,#1f
	db #18,#1e,#18,#1c,#18,#76,#79,#1f
	db #32,#14,#00,#00,#32,#05,#79,#0f
	db #00,#79,#1f,#00,#79,#0f,#00,#79
	db #1f,#32,#14,#00,#00,#79,#1f,#32
	db #0a,#79,#0f,#00,#76
.l6059
	db #75,#c4,#61,#75,#40,#61,#75,#40
	db #61,#75,#3c,#61,#75,#3c,#61,#75
	db #c3,#60,#75,#c3,#60,#75,#21,#61
	db #75,#c3,#60,#75,#c3,#60,#75,#21
	db #61,#75,#14,#61,#75,#0c,#61,#75
	db #0c,#61,#75,#0c,#61,#75,#36,#61
	db #75,#fa,#60,#75,#03,#61,#75,#0c
	db #61,#75,#0c,#61,#75,#0c,#61,#75
	db #36,#61,#75,#fa,#60,#75,#03,#61
	db #75,#ef,#60,#75,#ef,#60,#75,#ef
	db #60,#75,#ef,#60,#75,#d4,#60,#75
	db #d4,#60,#75,#dd,#60,#75,#dd,#60
	db #75,#e6,#60,#75,#e6,#60,#75,#ca
	db #60,#ff,#75,#cd,#61,#36,#50,#10
	db #76,#42,#50,#0e,#0c,#0b,#75,#6a
	db #61,#10,#76,#75,#cd,#61,#39,#8c
	db #45,#0a,#07,#76,#75,#cd,#61,#3e
	db #8c,#4a,#0a,#0c,#76,#75,#cd,#61
	db #3d,#8c,#49,#0a,#0b,#76,#75,#cd
	db #61,#42,#78,#3d,#14,#42,#0a,#0b
	db #76,#3e,#78,#39,#28,#3e,#78,#39
	db #28,#76,#3d,#78,#38,#28,#3d,#78
	db #3d,#28,#76,#75,#cd,#61,#42,#78
	db #3d,#28,#76,#75,#d6,#61,#43,#50
	db #11,#10,#10,#11,#11,#10,#10,#76
	db #75,#4f,#61,#3e,#14,#75,#b2,#61
	db #3e,#8c,#75,#4f,#61,#39,#14,#75
	db #b2,#61,#39,#8c,#76,#75,#cd,#61
	db #36,#a0,#76,#42,#a0,#0c,#76,#39
	db #50,#0c,#0e,#07,#76,#8a,#06,#01
	db #0f,#01,#0f,#ff,#01,#76,#8a,#06
	db #01,#0f,#01,#0f,#ff,#02,#76,#8a
	db #06,#02,#07,#01,#0f,#ff,#03,#76
	db #8a,#06,#02,#07,#01,#0f,#ff,#04
	db #76,#8a,#06,#02,#07,#01,#0f,#ff
	db #05,#76,#8a,#06,#02,#07,#01,#0f
	db #ff,#06,#76,#8a,#06,#02,#07,#01
	db #0f,#ff,#07,#76,#8a,#06,#02,#07
	db #01,#0f,#ff,#08,#76,#8a,#06,#02
	db #07,#01,#0f,#ff,#09,#76,#8a,#06
	db #02,#07,#01,#0f,#ff,#0a,#76,#8a
	db #06,#02,#07,#01,#0f,#ff,#0b,#76
	db #8a,#06,#02,#07,#01,#0f,#ff,#0c
	db #76,#8a,#06,#02,#07,#01,#0f,#ff
	db #0d,#76,#8a,#06,#02,#07,#01,#0f
	db #ff,#0e,#76,#8a,#06,#02,#07,#01
	db #0f,#ff,#0f,#76,#8a,#06,#04,#04
	db #01,#0f,#ff,#17,#76,#8a,#09,#01
	db #0f,#01,#03,#ff,#05,#32,#00,#32
	db #76
.l61e2
	db #3c,#00
.l61e4
	db #1e,#0a,#05,#05,#00,#08
.l61ea
	db #0f,#00,#1e,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#01,#00,#00,#09
	db #02,#01,#02,#04,#ff,#02,#02,#01
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #00,#00,#06,#03,#05,#01,#0f,#ff
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6232
	db #3c,#00
.l6234
	db #1e,#0a,#04,#04,#02,#09
.l623a
	db #0f,#00,#1e,#12,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#01,#00,#00,#09
	db #03,#01,#01,#06,#ff,#01,#03,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #00,#00,#06,#03,#05,#01,#0f,#ff
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6282
	db #3c,#00
.l6284
	db #1e,#0f,#04,#04,#04,#0a
.l628a
	db #0f,#00,#1e,#24,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#01,#00,#00,#09
	db #03,#01,#01,#06,#ff,#01,#03,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #00,#00,#06,#03,#05,#01,#0f,#ff
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62d2
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff
	ld hl,l62d2
	ld bc,#f40e
	out (c),c
	ld b,#f6
	in a,(c)
	and #30
	ld c,a
	or #c0
	out (c),a
	out (c),c
	inc b
	ld a,#92
	out (c),a
	push bc
	ld a,c
	set 6,c
.l62fa
	ld b,#f6
	out (c),c
	ld b,#f4
	in a,(c)
	ld (hl),a
	inc hl
	inc c
	ld a,c
	and #0f
	cp #0a
	jr nz,l62fa
	pop bc
	ld a,#82
	out (c),a
	dec b
	out (c),c
	ret
.l6315
	push af
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
	pop af
	ret
.l6335
	db #00,#00
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
	xor a
	ld (l6a1b),a
	ld a,#bf
	ld (l6a1a),a
	ld a,#f6
	ld (l6a18),a
	ld ix,l6a1c
	ld b,#10
.l63c3
	push ix
	push bc
	ld a,(ix+#00)
	cp #ff
	jr z,l63d5
	call l63f0
	ld hl,l6a18
	rlc (hl)
.l63d5
	pop bc
	pop ix
	ld de,#0010
	add ix,de
	djnz l63c3
	ld a,#06
	ld bc,(l6a19)
	call l6315
	ld bc,(l6a1a)
	inc a
	jp l6315
.l63f0
	dec (ix+#03)
	call z,l6412
	dec (ix+#06)
	jp nz,l640f
	ld a,(ix+#07)
	ld (ix+#06),a
	ld a,(ix+#04)
	or a
	jp z,l640f
	sub (ix+#08)
	ld (ix+#04),a
.l640f
	jp l648b
.l6412
	ld l,(ix+#01)
	ld h,(ix+#02)
.l6418
	ld a,(hl)
	cp #ff
	jr nz,l6423
	ld (ix+#00),#ff
	pop af
	ret
.l6423
	cp #fe
	jr nz,l642f
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	inc hl
	jr l6418
.l642f
	cp #fd
	jr nz,l6446
	inc hl
	ld a,(hl)
	ld (ix+#07),a
	srl a
	inc a
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	jr l6418
.l6446
	cp #fc
	jr nz,l6452
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	inc hl
	jr l6418
.l6452
	cp #fb
	jr nz,l645b
	inc hl
	ld a,(hl)
	ld (l6a19),a
.l645b
	cp #60
	jr c,l6466
	sub #60
	inc hl
	ld c,(hl)
	ld (ix+#0c),c
.l6466
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l6b1c
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#09),e
	ld (ix+#0a),d
	ld a,(ix+#0c)
	ld (ix+#03),a
	ld a,(ix+#05)
	ld (ix+#04),a
	ret
.l648b
	ld a,(l6a1b)
	ld l,a
	inc a
	ld (l6a1b),a
	ld h,#00
	add hl,hl
	ld de,l64a8
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld e,(ix+#09)
	ld d,(ix+#0a)
	ld c,(ix+#04)
	jp (hl)
.l64a8
	dw l64c8,l64e2,l64fd,l6bdc
	dw l6bdc,l6bdc,l6bdc,l6bdc
	dw l6bdc,l6bdc,l6bdc,l6bdc
	dw l6bdc,l6bdc,l6bdc,l6bdc
.l64c8
	ld hl,l6a1a
	ld a,(l6a18)
	or (ix+#0b)
	and (hl)
	ld (hl),a
	ld a,#08
	call l6315
	xor a
	ld c,e
	call l6315
	inc a
	ld c,d
	jp l6315
.l64e2
	ld hl,l6a1a
	ld a,(l6a18)
	or (ix+#0b)
	and (hl)
	ld (hl),a
	ld a,#09
	call l6315
	ld a,#02
	ld c,e
	call l6315
	inc a
	ld c,d
	jp l6315
.l64fd
	ld hl,l6a1a
	ld a,(l6a18)
	or (ix+#0b)
	and (hl)
	ld (hl),a
	ld a,#0a
	call l6315
	ld a,#04
	ld c,e
	call l6315
	inc a
	ld c,d
	jp l6315
	push af
	push bc
	ld a,#0d
	ld bc,l6695
	call l6604
	pop bc
	pop af
	ret
	push af
	push bc
	ld a,#02
	ld bc,l6649
	call l6604
	pop bc
	pop af
	ret
	push af
	push bc
	ld a,#02
	ld bc,l666f
	call l6604
	pop bc
	pop af
	ret
	ld a,#04
	ld bc,l698e
	jp l6604
	ld a,#0e
	ld bc,l697e
	call l6604
	ld a,#05
	ld bc,l699e
	jp l6604
	ld a,#0d
	ld bc,l69eb
	jp l6604
	push af
	push bc
	ld a,#05
	ld bc,l66b1
	call l6604
	pop bc
	pop af
	ret
	push af
	push bc
	ld a,#07
	ld bc,l66f8
	call l6604
	pop bc
	pop af
	ret
	push af
	push bc
	ld a,#06
	ld bc,l6736
	call l6604
	pop bc
	pop af
	ret
	push af
	push bc
	ld a,#08
	ld bc,l676f
	call l6604
	pop bc
	pop af
	ret
	push af
	push bc
	ld a,#0d
	ld bc,l6893
	call l6604
	pop bc
	pop af
	ret
	ld a,#0c
	ld bc,l69f9
	jp l6604
	ld a,#0f
	ld bc,l69d2
	jp l6604
	ld a,#08
	ld bc,l69a8
	call l6604
	inc a
	ld bc,l69b6
	call l6604
	inc a
	ld bc,l69c4
	jp l6604
	push af
	push bc
	xor a
	ld bc,l687b
	call l6604
	ld a,#0f
	ld bc,l6970
	call l6604
	pop bc
	pop af
	ret
	push af
	push bc
	ld a,#01
	ld bc,l678d
	call l6604
	ld a,#0b
	ld bc,l6792
	call l6604
	pop bc
	pop af
	ret
	push af
	push bc
	ld a,#09
	ld bc,l6797
	call l6604
	ld a,#0f
	ld bc,l6809
	call l6604
	pop bc
	pop af
	ret
.l6604
	push ix
	push hl
	push de
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l6a1c
	add hl,de
	push hl
	pop ix
	ld (ix+#00),#ff
	ld (ix+#01),c
	ld (ix+#02),b
	ld (ix+#03),#01
	ld (ix+#04),#0f
	ld (ix+#05),#0f
	ld (ix+#08),#01
	ld (ix+#09),#00
	ld (ix+#0a),#00
	ld (ix+#0b),#38
	ld (ix+#0c),#01
	ld (ix+#00),#00
	pop de
	pop hl
	pop ix
	ret
.l6649
	db #fe,#0d,#af,#03,#47,#3f,#37,#fe
	db #0b,#4f,#47,#3f,#37,#fe,#09,#4f
	db #47,#3f,#37,#fe,#07,#4f,#47,#3f
	db #37,#fe,#05,#4f,#47,#3f,#37,#fe
	db #03,#4f,#47,#3f,#37,#ff
.l666f
	db #fe,#0d,#b4,#03,#4c,#44,#3c,#fe
	db #0b,#54,#4c,#44,#3c,#fe,#09,#54
	db #4c,#44,#3c,#fe,#07,#54,#4c,#44
	db #3c,#fe,#05,#54,#4c,#44,#3c,#fe
	db #03,#54,#4c,#44,#3c,#ff
.l6695
	db #fc,#00,#fe,#0d,#fb,#00,#ab,#01
	db #fe,#0c,#4b,#fe,#0b,#4b,#fe,#0a
	db #4b,#fe,#05,#ab,#03,#fe,#04,#4b
	db #fe,#03,#4b,#ff
.l66b1
	db #fe,#0c,#9c,#03,#00,#3c,#00,#3c
	db #00,#3c,#00,#3c,#00,#3c,#00,#3c
	db #00,#3c,#00,#3c,#00,#3c,#00,#3c
	db #00,#3c,#00,#3c,#00,#3c,#00,#3c
	db #00,#3c,#00,#3c,#00,#3c,#00,#3c
	db #00,#3c,#00,#3c,#00,#3c,#00,#3c
	db #00,#3c,#00,#3c,#00,#3c,#00,#3c
	db #00,#3c,#00,#3c,#00,#3c,#00,#3c
	db #00,#3c,#00,#3c,#00,#3c,#ff
.l66f8
	db #fc,#07,#fe,#0e,#fb,#00,#63,#01
	db #fb,#02,#01,#fb,#04,#01,#fb,#06
	db #01,#fb,#08,#01,#fb,#0a,#01,#fb
	db #0c,#01,#fb,#0e,#01,#fb,#10,#01
	db #fb,#12,#01,#fb,#14,#01,#fb,#16
	db #01,#fe,#08,#fb,#18,#01,#fe,#06
	db #fb,#1a,#01,#fe,#04,#fb,#1c,#01
	db #fe,#02,#fb,#1e,#01,#ff
.l6736
	db #fc,#00,#fb,#1f,#fe,#0f,#88,#02
	db #27,#26,#25,#24,#fe,#0e,#23,#22
	db #fe,#0d,#21,#20,#fe,#0c,#1f,#fe
	db #0b,#1e,#fe,#0a,#1d,#fe,#09,#1c
	db #fe,#08,#1a,#fe,#07,#18,#fe,#06
	db #16,#fe,#05,#14,#fe,#04,#12,#fe
	db #03,#10,#fe,#02,#0e,#fe,#01,#0c
	db #ff
.l676f
	db #fc,#00,#fb,#00,#fe,#0e,#92,#01
	db #fe,#0d,#30,#fe,#0c,#2e,#fe,#0b
	db #2c,#fe,#09,#2a,#fe,#07,#28,#fe
	db #05,#26,#fe,#03,#24,#ff
.l678d
	db #fe,#0c,#61,#0a,#ff
.l6792
	db #fe,#0c,#62,#0a,#ff
.l6797
	db #fe,#01,#af,#01,#fe,#03,#4e,#fe
	db #05,#4d,#fe,#07,#4c,#fe,#09,#4b
	db #fe,#0b,#4a,#fe,#0d,#49,#fe,#0f
	db #48,#47,#46,#45,#fe,#0e,#44,#43
	db #42,#41,#fe,#0d,#40,#3f,#3e,#3d
	db #fe,#0c,#3c,#3b,#3a,#39,#fe,#0b
	db #38,#37,#36,#35,#fe,#0a,#34,#33
	db #32,#31,#fe,#09,#30,#2f,#2e,#2d
	db #fe,#08,#2c,#2b,#2a,#29,#fe,#07
	db #28,#27,#26,#25,#fe,#06,#24,#23
	db #22,#21,#fe,#05,#20,#1f,#1e,#1d
	db #fe,#04,#1c,#1b,#1a,#19,#fe,#03
	db #18,#17,#16,#15,#fe,#02,#14,#14
	db #13,#12,#fe,#01,#11,#10,#0f,#0e
	db #0d,#ff
.l6809
	db #fe,#01,#9b,#01,#fe,#03,#3a,#fe
	db #05,#39,#fe,#07,#38,#fe,#09,#37
	db #fe,#0b,#36,#fe,#0d,#35,#fe,#0f
	db #34,#33,#32,#31,#fe,#0e,#30,#2f
	db #2e,#2d,#fe,#0d,#2c,#2b,#2a,#29
	db #fe,#0c,#28,#27,#26,#25,#fe,#0b
	db #24,#23,#22,#21,#fe,#0a,#20,#1f
	db #1e,#1d,#fe,#09,#1c,#1b,#1a,#19
	db #fe,#08,#18,#17,#16,#15,#fe,#07
	db #14,#13,#12,#11,#fe,#06,#10,#0f
	db #0e,#0d,#fe,#05,#0c,#0b,#0a,#13
	db #fe,#04,#12,#11,#10,#0f,#fe,#03
	db #0e,#0d,#0c,#0b,#fe,#02,#0a,#0a
	db #09,#08,#fe,#01,#07,#06,#05,#04
	db #03,#ff
.l687b
	db #fe,#0f,#9c,#02,#40,#43,#3b,#3f
	db #42,#3a,#3e,#41,#39,#3d,#40,#38
	db #3c,#3f,#37,#3b,#3e,#9c,#06,#ff
.l6893
	db #fc,#00,#fe,#0f,#9c,#01,#fe,#0e
	db #3c,#fe,#0d,#3c,#fe,#0c,#3c,#fe
	db #0f,#3c,#01,#fe,#0e,#3c,#fe,#0d
	db #3c,#fe,#0c,#3c,#fe,#0e,#3c,#fe
	db #0d,#3c,#fe,#0c,#3c,#fe,#0b,#3c
	db #fe,#0e,#3c,#fe,#0d,#3c,#fe,#0c
	db #3c,#fe,#0b,#3c,#fe,#0d,#3c,#fe
	db #0c,#3c,#fe,#0b,#3c,#fe,#0a,#3c
	db #fe,#0d,#3c,#fe,#0c,#3c,#fe,#0b
	db #3c,#fe,#0a,#3c,#fe,#0c,#3c,#fe
	db #0b,#3c,#fe,#0a,#3c,#fe,#09,#3c
	db #fe,#0c,#3c,#fe,#0b,#3c,#fe,#0a
	db #3c,#fe,#09,#3c,#fe,#0b,#3c,#fe
	db #0a,#3c,#fe,#09,#3c,#fe,#08,#3c
	db #fe,#0b,#3c,#fe,#0a,#3c,#fe,#09
	db #3c,#fe,#08,#3c,#fe,#0a,#3c,#fe
	db #09,#3c,#fe,#08,#3c,#fe,#07,#3c
	db #fe,#0a,#3c,#fe,#09,#3c,#fe,#08
	db #3c,#fe,#07,#3c,#fe,#09,#3c,#fe
	db #08,#3c,#fe,#07,#3c,#fe,#06,#3c
	db #fe,#09,#3c,#fe,#08,#3c,#fe,#07
	db #3c,#fe,#06,#3c,#fe,#08,#3c,#fe
	db #07,#3c,#fe,#06,#3c,#fe,#05,#3c
	db #fe,#08,#3c,#fe,#07,#3c,#fe,#06
	db #3c,#fe,#05,#3c,#fe,#07,#3c,#fe
	db #06,#3c,#fe,#05,#3c,#fe,#04,#3c
	db #fe,#07,#3c,#fe,#06,#3c,#fe,#05
	db #3c,#fe,#04,#3c,#ff
.l6970
	db #fe,#0f,#fd,#01,#01,#90,#06,#2f
	db #2e,#2d,#2c,#2b,#30,#ff
.l697e
	db #fe,#0f,#fd,#02,#01,#a3,#09,#a0
	db #03,#3e,#40,#a1,#06,#40,#3c,#ff
.l698e
	db #fe,#0f,#fd,#01,#01,#a3,#01,#41
	db #46,#45,#43,#41,#46,#a5,#02,#ff
.l699e
	db #fe,#0c,#fd,#04,#01,#9c,#0c,#37
	db #3c,#ff
.l69a8
	db #fe,#0f,#fd,#01,#01,#a8,#04,#43
	db #40,#3c,#40,#43,#48,#ff
.l69b6
	db #fe,#0a,#fd,#01,#01,#a3,#04,#40
	db #3c,#37,#3c,#40,#43,#ff
.l69c4
	db #fe,#0a,#fd,#01,#01,#a0,#04,#3c
	db #37,#34,#37,#3c,#40,#ff
.l69d2
	db #fc,#00,#fe,#0d,#fb,#0f,#74,#01
	db #fe,#0b,#14,#fe,#09,#14,#fe,#07
	db #14,#fe,#03,#74,#03,#fe,#02,#14
	db #ff
.l69eb
	db #fe,#0f,#fd,#02,#01,#a5,#02,#46
	db #47,#48,#47,#46,#45,#ff
.l69f9
	db #fe,#0d,#fd,#03,#01,#fc,#00,#fb
	db #00,#88,#03,#89,#01,#2a,#2b,#2c
	db #2d,#2e,#2f,#30,#31,#32,#33,#34
	db #35,#36,#37,#98,#04,#ff,#00
.l6a18
	db #00
.l6a19
	db #00
.l6a1a
	db #00
.l6a1b
	db #00
.l6a1c
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b1c
	db #00,#00,#84,#03,#92,#03
	dw #0c8e,#0bda,#0b2f,#0a8f
	dw #09f7,#0968,#08e1,#0861
	dw #07e9,#0777,#070c,#06a7
	dw #0647,#05ed,#0598,#0547
	dw #04fc,#04b4,#0470,#0431
	dw #03f4,#03bc,#0386,#0353
	dw #0324,#02f6,#02cc,#02a4
	dw #027e,#025a,#0238,#0218
	dw #01fa,#01de,#01c3,#01aa
	dw #0192,#017b,#0166,#0152
	dw #013f,#012d,#011c,#010c
	dw #00fd,#00ef,#00e1,#00d5
	dw #00c9,#00be,#00b3,#00a9
	dw #009f,#0096,#008e,#0086
	dw #007f,#0077,#0071,#006a
	dw #0064,#005f,#0059,#0054
	dw #0050,#004b,#0047,#0043
	dw #003f,#003c,#0038,#0035
	dw #0032,#002f,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020,#001e,#001c,#001b
	dw #0019,#0018,#0016,#0015
	dw #0014,#0013,#0012,#0011
	dw #0010
.l6bdc
	ret
;
;.play_music     x 6
;
;l0270 equ $ + 1
;	ld a,0
;	inc a
;	ld (l0270),a
;	cp #04
;	jr nz,not_playing_music
;	xor a
;	ld (l0270),a
;	call play_music
;not_playing_music
;	ret
;
.music_info
	db "Exolon (1987)(Hewson)(Raffaele Cecco)",0
	db "",0

	read "music_end.asm"
