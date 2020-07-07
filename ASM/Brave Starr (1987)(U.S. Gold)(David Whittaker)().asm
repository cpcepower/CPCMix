; Music of Brave Starr (1987)(U.S. Gold)(David Whittaker)()
; Ripped by Megachur the 10/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BRAVESTA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #39bc

	read "music_header.asm"

.l39c2 equ $ + 6
.l39bc
	dw l3a02,l3a0f,l3a1c,l3a48
	dw l3a59,l3a6b,l3a7c,l3a8d
	dw l3b10,l3b6c,l3b6c,l3b6c
	dw l3b6c,l3b6c,l3b75,l3bca
.l39e2 equ $ + 6
	dw l3c4d,l3c4d,l3c4d,l3c4d
	dw l3c5e,l3cdf,l3d00,l3d00
.l39f2 equ $ + 6
	dw l3d21,l3d21,l3d42,l3d42
	dw l3d63,l3d84,l3d84,l3d84
	dw l3d84,l3d84,l3d84
.l3a02
	db #0b,#02,#0b,#04,#0c,#0c,#06,#06
.l3a0f equ $ + 5
	db #0c,#0c,#06,#06,#00,#02,#02,#01
	db #03,#0d,#0d,#05,#05,#0d,#0d,#05
.l3a1c equ $ + 2
	db #05,#00,#01,#01,#01,#01,#07,#05
	db #03,#05,#07,#05,#03,#05,#02,#02
	db #07,#05,#03,#05,#07,#05,#03,#05
.l3a36 equ $ + 4
.l3a35 equ $ + 3
	db #02,#02,#00,#01,#02,#01,#01,#01
	db #02,#01,#01,#01,#02,#01,#01,#01
.l3a48 equ $ + 6
	db #02,#01,#01,#01,#02,#00,#16,#f1
	db #16,#16,#22,#f1,#16,#16,#16,#f1
.l3a59 equ $ + 7
	db #16,#16,#18,#19,#18,#14,#00,#c0
	db #0a,#f1,#0a,#0a,#16,#f1,#0a,#0a
	db #0a,#f1,#0a,#0a,#0c,#0d,#0c,#08
.l3a6b equ $ + 1
	db #00,#0a,#f1,#0a,#0a,#16,#f1,#0a
	db #0a,#22,#20,#1d,#20,#1d,#1b,#19
.l3a7c equ $ + 2
	db #1b,#00,#16,#f1,#16,#16,#22,#f1
	db #16,#16,#25,#24,#22,#24,#22,#20
.l3a8d equ $ + 3
	db #1b,#20,#00,#c7,#01,#0d,#08,#14
	db #0d,#19,#0d,#14,#08,#0d,#08,#14
	db #0d,#19,#0d,#14,#08,#0d,#08,#14
	db #0d,#19,#0d,#14,#08,#08,#03,#0f
	db #08,#14,#0f,#08,#03,#16,#05,#16
	db #16,#22,#16,#11,#0a,#16,#05,#16
	db #16,#22,#16,#11,#0a,#16,#05,#16
	db #16,#22,#16,#11,#0a,#06,#01,#12
	db #06,#12,#0d,#06,#01,#14,#03,#14
	db #14,#20,#14,#0f,#08,#14,#03,#14
	db #14,#20,#14,#0f,#08,#14,#03,#14
	db #14,#20,#14,#0f,#08,#0d,#08,#14
	db #0d,#19,#0d,#14,#08,#12,#01,#12
	db #12,#1e,#12,#0d,#06,#12,#01,#12
	db #12,#1e,#12,#0d,#06,#12,#01,#12
	db #12,#1e,#12,#0d,#06,#01,#08,#0d
.l3b10 equ $ + 6
	db #01,#14,#0f,#08,#03,#00,#25,#25
	db #25,#25,#f4,#c6,#c7,#02,#f2,#25
	db #25,#29,#f1,#2c,#f1,#2c,#f1,#29
	db #f5,#f4,#27,#f1,#25,#f1,#27,#f1
	db #29,#f5,#f2,#25,#f1,#27,#f1,#29
	db #f1,#2a,#f1,#29,#f1,#27,#f1,#22
	db #f1,#25,#f3,#29,#2a,#29,#25,#27
	db #f7,#f4,#25,#27,#25,#22,#24,#f2
	db #25,#f2,#27,#f1,#25,#f2,#27,#f2
	db #29,#f1,#25,#f7,#f4,#22,#f1,#20
	db #f1,#25,#f3,#22,#f2,#20,#c7,#03
	db #c5,#25,#25,#25,#f1,#24,#24,#24
.l3b6c equ $ + 2
	db #f1,#00,#c7,#03,#c5,#0a,#f7,#11
.l3b75 equ $ + 3
	db #f7,#c6,#00,#c6,#31,#31,#31,#31
	db #31,#31,#31,#31,#38,#38,#38,#38
	db #38,#38,#38,#38,#f4,#c5,#22,#f3
	db #25,#f3,#27,#f3,#29,#f7,#f4,#2a
	db #f3,#27,#f7,#f8,#c6,#31,#31,#31
	db #31,#31,#31,#31,#31,#38,#38,#38
	db #38,#38,#38,#38,#38,#f4,#c5,#22
	db #f3,#25,#f3,#27,#f3,#29,#29,#29
	db #29,#f4,#27,#27,#27,#27,#25,#25
	db #25,#25,#27,#27,#27,#27,#f4,#25
	db #25,#25,#25,#24,#24,#24,#24,#00
.l3bca
	db #c7,#01,#25,#20,#2c,#25,#2a,#29
	db #25,#20,#25,#20,#2c,#25,#2a,#29
	db #2a,#2c,#25,#20,#2c,#25,#2a,#29
	db #25,#20,#25,#20,#2c,#2a,#29,#25
	db #20,#19,#22,#1d,#29,#22,#25,#24
	db #22,#1d,#22,#1d,#29,#22,#27,#25
	db #22,#1d,#20,#1b,#27,#20,#25,#24
	db #20,#1b,#20,#1b,#27,#25,#24,#20
	db #1b,#14,#1e,#19,#25,#1e,#2a,#25
	db #1e,#19,#1e,#19,#25,#23,#22,#1e
	db #23,#25,#1e,#19,#25,#1e,#2a,#25
	db #1e,#19,#1e,#19,#25,#23,#22,#1e
	db #23,#25,#22,#1d,#29,#22,#25,#24
	db #22,#1d,#22,#1d,#29,#27,#25,#22
	db #1d,#16,#20,#1b,#27,#20,#25,#24
	db #20,#1b,#20,#1b,#27,#25,#24,#20
.l3c4d equ $ + 3
	db #1b,#14,#00,#0a,#f1,#0a,#0a,#0a
	db #f1,#0a,#0a,#0a,#f1,#0a,#0a,#0c
.l3c5e equ $ + 4
	db #0d,#0c,#08,#00,#01,#f1,#01,#01
	db #01,#f1,#01,#01,#01,#f1,#01,#01
	db #01,#f1,#08,#0d,#01,#f1,#01,#01
	db #01,#f1,#01,#01,#08,#f1,#08,#08
	db #08,#f1,#03,#08,#0a,#f1,#0a,#0a
	db #0a,#f1,#0a,#0a,#0a,#f1,#0a,#0a
	db #0a,#f1,#05,#16,#0a,#f1,#0a,#0a
	db #0a,#f1,#0a,#0a,#06,#f1,#06,#06
	db #06,#f1,#01,#06,#08,#f1,#08,#08
	db #08,#f1,#08,#08,#08,#f1,#08,#08
	db #08,#f1,#03,#14,#08,#f1,#08,#08
	db #08,#f1,#08,#08,#01,#f1,#01,#01
	db #01,#f1,#08,#0d,#06,#f1,#06,#06
	db #06,#f1,#06,#06,#06,#f1,#06,#06
	db #06,#f1,#01,#12,#06,#f1,#06,#06
	db #06,#f1,#06,#06,#01,#f1,#01,#01
.l3cdf equ $ + 5
	db #08,#f1,#03,#08,#00,#06,#f1,#06
	db #06,#06,#f1,#06,#06,#06,#f1,#06
	db #06,#06,#0d,#12,#0d,#06,#f1,#06
	db #06,#06,#f1,#06,#06,#06,#f1,#06
.l3d00 equ $ + 6
	db #06,#06,#0d,#12,#0d,#00,#0a,#f1
	db #0a,#0a,#0a,#f1,#08,#08,#0a,#f1
	db #0a,#0a,#0a,#0f,#14,#0f,#08,#f1
	db #08,#08,#08,#f1,#08,#08,#08,#f1
.l3d21 equ $ + 7
	db #08,#08,#08,#0f,#14,#0f,#00,#01
	db #f1,#01,#01,#01,#f1,#01,#01,#01
	db #f1,#01,#01,#01,#08,#0d,#08,#01
	db #f1,#01,#01,#01,#f1,#01,#01,#01
	db #f1,#01,#01,#01,#08,#0d,#08,#00
.l3d42
	db #1f,#ff,#ff,#ff,#01,#ff,#ff,#ff
	db #1f,#ff,#1f,#ff,#01,#ff,#ff,#ff
	db #1f,#ff,#ff,#ff,#01,#ff,#ff,#ff
	db #1f,#ff,#1f,#ff,#01,#ff,#ff,#ff
.l3d63 equ $ + 1
	db #00,#1f,#ff,#ff,#ff,#01,#ff,#ff
	db #ff,#1f,#ff,#ff,#ff,#01,#ff,#ff
	db #ff,#1f,#1f,#ff,#1f,#01,#1f,#ff
	db #01,#01,#01,#ff,#0f,#0f,#0f,#1f
	db #1f,#00
.l3d84
	di
	ld hl,#0038
	ld de,l3dac
	ld bc,#0003
	ldir
	ld a,#c3
	ld (#0038),a
	ld hl,l3db9
	ld (#0039),hl
	ei
	ret
	di
	ld hl,l3dac
	ld de,#0038
	ld bc,#0003
	ldir
	ei
	jr l3daf
.l3dac
	ret
	nop
	nop
;
.stop_music
.l3daf
;
	xor a
	ld (l420e),a
	ld (l420d),a
	jp l40cd
.l3db9
;	di
;	push af
;	push bc
;	push de
;	push hl
;	push ix
	ld a,(l420d)
	and a
	jp nz,l3dd6
	ld a,(l420e)
	and a
	jp nz,l3e5d
.l3dce
;	pop ix
;	pop hl
;	pop de
;	pop bc
;	pop af
;	ei
	ret
;
.init_music
.l3dd6
;
	ld a,#01
	ld (l420e),a
	ld hl,l39bc
	ld ix,l4231
	ld b,#03
	xor a
	ld (l4215),a
.l3de8
	ld (ix+#05),a
	ld (ix+#0d),a
	ld (ix+#0c),a
	ld (ix+#02),a
	ld (ix+#03),a
	push af
	ld a,(hl)
	ld e,a
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld d,a
	ld (ix+#0b),a
	inc hl
	push hl
	push bc
	ld a,(de)
	inc de
	ld (ix+#06),e
	ld (ix+#07),d
	call l401e
	ld hl,l4215
	inc (hl)
	pop bc
	pop hl
	pop af
	ld de,#0010
	add ix,de
	djnz l3de8
	ld (l420f),a
	ld (l4212),a
	ld (l4213),a
	ld (l4210),a
	ld (l4225),a
	ld (l420d),a
	ld hl,l425b
	ld a,(hl)
	inc hl
	or (hl)
	ld (l4217),a
	ld b,#38
	jp nz,l3e41
	ld b,#3c
.l3e41
	ld a,b
	ld (l4216),a
	ld a,(l4222)
	dec a
	ld (l4223),a
	call l40c1
	ld hl,l3a36
	ld (l422b),hl
	dec hl
	ld a,(hl)
	call l3f13
	jp l3dce
;
.l3e5d
.play_music
;
	ld a,(l422d)
	and a
	jp z,l3e8d
	ld a,(l422e)
	inc a
	ld (l422e),a
	ld hl,l422f
	cp (hl)
	jp nz,l3e8d
	xor a
	ld (l422e),a
	ld bc,(l4233)
	ld a,(l4230)
	xor #01
	ld (l4230),a
	jp z,l3e89
	srl b
	rr c
.l3e89
	xor a
	call l40a7
.l3e8d
	ld a,(l4223)
	inc a
	ld (l4223),a
	cp #01	;#06
	jp z,l3ecb
.l3e99
	ld hl,l4222
	cp (hl)
	jp nz,l3dce
	xor a
	ld (l4223),a
	ld a,(l4225)
	inc a
	ld (l4225),a
	ld hl,l4224
	cp (hl)
	jp z,l3ebe
	call l40fc
	call l4142
	call l41bb
	jp l3dce
.l3ebe
	call l41e5
	call l3ed8
	xor a
	ld (l4225),a
	jp l3dce
.l3ecb
	ld c,#38
	ld a,#07
	call l40de
	ld a,(l4223)
	jp l3e99
.l3ed8
	ld a,(l4226)
	and a
	ret z
.l3edd
	ld hl,(l4229)
	ld a,(hl)
	inc hl
	ld (l4229),hl
	inc a
	ret z
	dec a
	jp nz,l3f06
	ld hl,(l422b)
.l3eee
	ld a,(hl)
	inc hl
	ld (l422b),hl
	and a
	jp z,l3efd
	call l3f13
	jp l3edd
.l3efd
	ld hl,l3a35
	ld (l422b),hl
	jp l3eee
.l3f06
	ld c,a
	ld a,#06
	call l40de
	ld c,#18
	ld a,#07
	jp l40de
.l3f13
	ld hl,l39f2
.l3f16
	dec a
	jp z,l3f1f
	inc hl
	inc hl
	jp l3f16
.l3f1f
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l4229),de
	ret
.l3f27
	ld a,(ix+#05)
	and a
	jp z,l3f59
	dec (ix+#05)
	ret nz
	jp l3f59
.l3f35
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld a,(hl)
	inc hl
	ld (ix+#06),l
	ld (ix+#07),h
	and a
	jp nz,l3f56
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	ld (ix+#06),l
	ld (ix+#07),h
	jp l3f35
.l3f56
	call l401e
.l3f59
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld a,(hl)
	ld c,a
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	and a
	jp z,l3f35
	bit 7,a
	jp nz,l3f98
	dec c
	call l403e
	ld a,(l4215)
	cp #01
	jp nz,l3f89
	ld a,(l4219)
	and a
	jp z,l3f89
	ld c,#0d
	jp l3f8c
.l3f89
	ld c,(ix+#0e)
.l3f8c
	ld a,c
	ld (ix+#01),a
	ld a,(l4215)
	add #08
	jp l40de
.l3f98
	cp #c0
	jp z,l3fa9
	cp #c1
	jp nz,l3fb1
	xor a
	ld (l4226),a
	jp l3f59
.l3fa9
	ld a,#01
	ld (l4226),a
	jp l3f59
.l3fb1
	cp #c2
	jp nz,l3fc3
	ld a,#01
	ld (l4228),a
	ld a,#03
	ld (l4227),a
	jp l3f59
.l3fc3
	cp #c3
	jp nz,l3fd0
	ld a,#01
	ld (l4219),a
	jp l3f59
.l3fd0
	cp #c4
	jp nz,l3fdc
	xor a
	ld (l4219),a
	jp l3f59
.l3fdc
	cp #c5
	jp nz,l3fe9
	ld a,#01
	ld (l422d),a
	jp l3f59
.l3fe9
	cp #c6
	jp nz,l3ff5
	xor a
	ld (l422d),a
	jp l3f59
.l3ff5
	cp #c7
	jp nz,l4007
	call l400e
	ld (ix+#00),a
	xor a
	ld (ix+#0d),a
	jp l3f59
.l4007
	ld a,c
	and #0f
	ld (ix+#05),a
	ret
.l400e
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld a,(hl)
	ld c,a
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	ret
.l401e
	ld hl,l39c2
	ld b,a
	ld a,(l4215)
	cp #02
	ld a,b
	jp nz,l402e
	ld hl,l39e2
.l402e
	dec a
	ld c,a
	ld b,#00
	add hl,bc
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#08),e
	ld (ix+#09),d
	ret
.l403e
	ld a,(l4215)
	cp #01
	jp nz,l4075
	ld a,(l4219)
	and a
	jp z,l4075
	ld hl,l39bc
	ld b,#00
	sla c
	sla c
	add hl,bc
	ld de,l421a
	ld b,#04
.l405c
	push bc
	ld c,(hl)
	inc hl
	dec c
	call l40b4
	ld a,c
	ld (de),a
	inc de
	ld a,b
	ld (de),a
	inc de
	pop bc
	djnz l405c
	ld bc,(l421a)
	ld a,#01
	jp l40a1
.l4075
	call l40b4
	ld a,(l4215)
	cp #01
	jp nz,l408f
	ld a,(l4233)
	cp c
	jp nz,l408f
	ld a,(l4234)
	cp b
	jp nz,l408f
	dec bc
.l408f
	ld a,(l4215)
	and a
	jp nz,l40a1
	ld a,(l4228)
	and a
	jp z,l40a1
	inc bc
	inc bc
	inc bc
	xor a
.l40a1
	ld (ix+#02),c
	ld (ix+#03),b
.l40a7
	add a
	push bc
	push af
	call l40de
	pop af
	pop bc
	inc a
	ld c,b
	jp l40de
.l40b4
	push hl
	ld hl,l4261
	ld b,#00
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	pop hl
	ret
.l40c1
	call l40cd
	ld a,(l4216)
	ld c,a
	ld a,#07
	jp l40de
.l40cd
	ld bc,#000d
.l40d0
	ld a,b
	push bc
	call l40de
	pop bc
	dec b
	jp p,l40d0
	ld a,#07
	ld c,#3f
.l40de
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
	ret
.l40fc
	ld ix,l4231
	xor a
	ld (l4215),a
	call l4121
	ld ix,l4241
	ld a,#01
	ld (l4215),a
	call l4121
	ld a,(l4217)
	and a
	ret z
	ld ix,l4251
	ld a,#02
	ld (l4215),a
.l4121
	ld a,(ix+#0d)
	inc a
	ld (ix+#0d),a
	cp (ix+#00)
	ret c
	ld (ix+#0d),#00
	ld a,(ix+#01)
	sub #01
	ret c
	ld (ix+#01),a
	ld c,a
	ld a,(l4215)
	add #08
	jp l40de
.l4142
	ld a,(l4227)
	sub #01
	jp nc,l4151
	xor a
	ld (l4228),a
	jp l4161
.l4151
	ld (l4227),a
	ld bc,(l4233)
	dec bc
	ld (l4233),bc
	xor a
	call l40a7
.l4161
	ld a,(l4219)
	and a
	jp z,l4185
	ld a,(l4218)
	inc a
	and #03
	ld (l4218),a
	ld c,a
	ld b,#00
	ld hl,l421a
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (l4243),bc
	ld a,#01
	call l40a7
.l4185
	ld a,(l4210)
	inc a
	ld (l4210),a
	ld hl,l4211
	cp (hl)
	ret c
	xor a
	ld (l4210),a
	ld a,(l420f)
	xor #01
	ld (l420f),a
	ld bc,(l4233)
	ld de,(l4243)
	and a
	jp z,l41ae
	dec bc
	dec de
	jp l41b0
.l41ae
	inc bc
	inc de
.l41b0
	xor a
	push de
	call l40a7
	pop bc
	ld a,#01
	jp l40a7
.l41bb
	ld a,(l4217)
	and a
	ret z
	ld a,(l4213)
	inc a
	ld (l4213),a
	ld hl,l4214
	cp (hl)
	ret c
	xor a
	ld (l4213),a
	ld bc,(l4253)
	ld a,(l4212)
	xor #01
	ld (l4212),a
	ld a,#02
	jp nz,l40a7
	inc bc
	jp l40a7
.l41e5
	ld ix,l4231
	xor a
	ld (l4215),a
	call l3f27
	ld ix,l4241
	ld a,#01
	ld (l4215),a
	call l3f27
	ld a,(l4217)
	and a
	ret z
	ld ix,l4251
	ld a,#02
	ld (l4215),a
	jp l3f27
.l4214 equ $ + 7
.l4213 equ $ + 6
.l4212 equ $ + 5
.l4211 equ $ + 4
.l4210 equ $ + 3
.l420f equ $ + 2
.l420e equ $ + 1
.music_end equ $ + 1
.l420d
	db #01,#00,#00,#00,#04,#00,#00,#01
.l421a equ $ + 5
.l4219 equ $ + 4
.l4218 equ $ + 3
.l4217 equ $ + 2
.l4216 equ $ + 1
.l4215
	db #00,#38,#00,#00,#00,#00,#00,#00
.l4224 equ $ + 7
.l4223 equ $ + 6
.l4222 equ $ + 5
	db #00,#00,#00,#00,#00,#01,#00,#06	;#00,#00,#00,#00,#00,#06,#00,#06
.l422b equ $ + 6
.l4229 equ $ + 4
.l4228 equ $ + 3
.l4227 equ $ + 2
.l4226 equ $ + 1
.l4225
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4234 equ $ + 7
.l4233 equ $ + 6
.l4231 equ $ + 4
.l4230 equ $ + 3
.l422f equ $ + 2
.l422e equ $ + 1
.l422d
	db #00,#00,#01,#00,#03,#00,#00,#00	;#00,#00,#08,#00,#03,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
.l4243 equ $ + 6
.l4241 equ $ + 4
	db #00,#00,#0d,#00,#01,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
.l4253 equ $ + 6
.l4251 equ $ + 4
	db #00,#00,#0d,#00,#02,#00,#00,#00
.l425b equ $ + 6
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#00
.l4261
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
;
.music_info
	db "Brave Starr (1987)(U.S. Gold)(David Whittaker)",0
	db "",0

	read "music_end.asm"
