; Music of Arcade Trivia Quiz Simulator (1989)(Zeppelin Games)(Paul Hiley)()
; Ripped by Megachur the 19/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ARCADTQS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #3219
FIRST_THEME				equ 1
LAST_THEME				equ 11

	read "music_header.asm"

; Revision the 01/04/2018

	jp l322d	; play music
	jp l3425	; init music	a = 1 -> 11
	jp l33c9	; sound fx ?
	jp l3264	; stop music ?
.l3228 equ $ + 3
.l3227 equ $ + 2
	db #00,#00,#00,#00
	jp l33e3
.music_end              ; ???
.l322c
	db #01
;
.play_music
.l322d
;
	push af
	push bc
	push de
	push hl
	push ix
	ld a,(l322c)
	or a
	jp z,l325d
	call l3439
	call l33eb
	call l3372
	ld ix,l329a
	call l32ca
	ld ix,l32aa
	call l32ca
	ld ix,l32ba
	call l32ca
	ld c,#00
	call l3575
.l325d
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
;
.stop_music
.l3264
;
	push af
	push bc
	push de
	push hl
	sub a
	ld (l3228),a
	ld (l3227),a
	ld (l34a3),a
	ld hl,l39f3
	ld (l393d),hl
	ld (l33c1),hl
	ld hl,l3298
	ld (l32a0),hl
	ld (l32b0),hl
	ld (l32c0),hl
	ld (l329a),hl
	ld (l32aa),hl
	ld (l32ba),hl
	call l34a4
	pop hl
	pop de
	pop bc
	pop af
	ret
.l3298
	db #ff,#ff
.l329a
	dw l3298
	db #00,#00,#04,#0a
.l32a4 equ $ + 4
.l32a3 equ $ + 3
.l32a2 equ $ + 2
.l32a0
	dw l3298
	db #00,#02,#98,#32,#01,#01
.l32a8
	db #01,#00
.l32aa
	dw l3298
	db #00,#00,#00,#08
.l32b4 equ $ + 4
.l32b3 equ $ + 3
.l32b2 equ $ + 2
.l32b0
	dw l3298
	db #00,#02,#98,#32,#01,#01
.l32bd equ $ + 5
.l32bc equ $ + 4
.l32ba equ $ + 2
.l32b8
	db #01,#00
	dw l3298
	db #00,#00,#02,#09
.l32c7 equ $ + 7
.l32c4 equ $ + 4
.l32c3 equ $ + 3
.l32c2 equ $ + 2
.l32c0
	dw l3298
	db #00,#02
	dw l3298
	db #01,#01
.l32c8
	db #01
.l32c9
	db #01
.l32ca
	call l332d
	dec (ix+#0e)
	ret nz
	ld a,(ix+#0d)
	ld (ix+#0e),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	inc hl
	inc a
	jr z,l3319
	dec a
	ld c,(ix+#05)
	bit 0,(ix+#0c)
	call nz,l3548
	ld a,(hl)
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	ld a,(ix+#0f)
	and #03
	jr z,l3305
	ld a,#1f
	sub b
	ld c,#06
	call l354f
.l3305
	ld a,(ix+#02)
	add (ix+#03)
	ld (ix+#02),a
	add b
	call l34b0
	ex de,hl
	ld c,(ix+#04)
	jp l353b
.l3319
	bit 1,(ix+#0f)
	ret z
	res 1,(ix+#0f)
	sub a
	ld (l3227),a
	ld a,#38
	ld c,#07
	jp l354f
.l332d
	dec (ix+#08)
	ret nz
	ld a,(ix+#09)
	ld (ix+#08),a
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld a,(hl)
	inc a
	ret z
	dec a
	inc hl
	ld (ix+#06),l
	ld (ix+#07),h
	or a
	ret z
	bit 1,(ix+#0f)
	ret nz
	rlca
	rlca
	ld hl,l34d5
	add (hl)
	ld (ix+#02),a
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	call l3536
	ld (ix+#0e),#01
	ld (ix+#0d),e
	ld (ix+#03),d
	ld (ix+#00),l
	ld (ix+#01),h
	ret
.l3372
	ld a,(l32a2)
	dec a
	ret nz
	ld hl,(l32a0)
	ld a,(hl)
	inc a
	ret nz
	ld hl,(l33c1)
	ld a,(hl)
	inc hl
	or (hl)
	dec hl
	jr nz,l339f
	ld hl,(l393d)
	ld a,(l34a3)
	or a
	jr nz,l339f
	ld (l3228),a
	ld hl,l3298
	ld (l32a0),hl
	ld (l32b0),hl
	ld (l32c0),hl
	ret
.l339f
	call l33c3
	ld (l32a3),a
	ld (l32a0),de
	call l33c3
	ld (l32b3),a
	ld (l32b0),de
	call l33c3
	ld (l32c3),a
	ld (l32c0),de
	ld (l33c1),hl
	ret
.l33c1
	di
	add hl,sp
.l33c3
	call l3536
	ld a,(de)
	inc de
	ret
.l33c9
	cp #11
	ret nc
	push af
	ld (l3227),a
	ld (l33e2),a
	ld a,#01
	ld (l322c),a
	ld a,(l35e3)
	add #04
	ld (l35e3),a
	pop af
	ret
.l33e2
	nop
.l33e3
	push af
	ld a,#28
	ld (l35e3),a
	pop af
	ret
.l33eb
	ld a,(l33e2)
	or a
	ret z
	rlca
	rlca
	ld l,a
	ld h,#00
	ld bc,l35a0
	add hl,bc
	call l33c3
	ld (l32c7),a
	ld a,(de)
	ld (l32bd),a
	inc de
	ld a,#01
	ld (l32c8),a
	ld (l32ba),de
	ld a,(hl)
	ld c,#07
	call l354f
	inc hl
	ld a,(hl)
	ld (l32bc),a
	ld a,(l32c9)
	or #02
	ld (l32c9),a
	sub a
	ld (l33e2),a
	ret
;
.init_music
.l3425
;
	cp #12
	ret nc
	or a
	ret z
	push af
	ld (l3228),a
	ld (l3438),a
	ld a,#01
	ld (l322c),a
	pop af
	ret
.l3438
	db #00
.l3439
	ld a,(l3438)
	or a
	ret z
	ld c,a
	rlca
	rlca
	add c
	rlca
	ld c,a
	ld b,#00
	ld hl,l393f
	add hl,bc
	call l3536
	ld (l33c1),de
	ld (l393d),de
	call l3536
	ld (l32a4),de
	call l3536
	ld (l32b4),de
	call l3536
	ld (l32c4),de
	ld a,(l32c9)
	and #02
	or (hl)
	ld (l32c9),a
	inc hl
	ld a,(hl)
	ld (l34a3),a
	ld hl,l3298
	ld (l32a0),hl
	ld a,#01
	ld (l32a2),a
	ld (l32b2),a
	ld (l32c2),a
	ld (l32a8),a
	ld (l32b8),a
	ld (l32c8),a
	ld a,#38
	ld c,#07
	call l354f
	sub a
	ld (l3438),a
	ld (l3227),a
	jp l34a4
.l34a3
	nop
.l34a4
	ld c,#08
	sub a
	ld h,a
	ld l,a
	call l354f
	inc c
	jp l353b
.l34b0
	push af
	push bc
	push hl
	ld b,#02
	sub #04
.l34b7
	cp #30
	jr c,l34c0
	sub #30
	inc b
	jr l34b7
.l34c0
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l34d6
	add hl,de
	call l3536
.l34cb
	srl d
	rr e
	djnz l34cb
	pop hl
	pop bc
	pop af
	ret
.l34d5
	db #48
.l34d6
	dw #0eee,#0eb7,#0e81,#0e4b
	dw #0e17,#0de3,#0db0,#0d7e
	dw #0d4d,#0d1c,#0cec,#0cbc
	dw #0c8d,#0c5f,#0c32,#0c05
	dw #0bd9,#0bae,#0b83,#0b58
	dw #0b2f,#0b06,#0add,#0ab5
	dw #0a8e,#0a67,#0a41,#0a1b
	dw #09f6,#09d2,#09ae,#098a
	dw #0967,#0945,#0923,#0901
	dw #08e0,#08bf,#089f,#0880
	dw #0861,#0842,#0823,#0806
	dw #07e8,#07cb,#07ae,#0792
.l3536
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ret
.l353b
	push af
	ld a,l
	call l354f
	inc c
	ld a,h
	call l354f
	dec c
	pop af
	ret
.l3548
	or a
	jr z,l354f
	srl a
	add #08
.l354f
	push af
	push bc
	push af
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	in a,(c)
	or c
	out (c),a
	xor c
	out (c),a
	pop af
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #80
	out (c),a
	xor #80
	out (c),a
	pop bc
	pop af
	ret
.l3575
	push bc
	push af
	push bc
	ld bc,#f40e
	out (c),c
	ld bc,#f6c0
	in a,(c)
	or c
	out (c),a
	xor c
	out (c),a
	pop bc
	pop af
	ld b,#f7
	ld a,#92
	out (c),a
	push bc
	set 6,c
	ld b,#f6
	out (c),c
	ld b,#f4
	in a,(c)
	pop bc
	push af
	ld a,#82
.l35a0 equ $ + 1
	out (c),a
	pop af
	pop bc
	ret
	db #e4,#35,#2a,#32,#01,#36,#2a,#64
	db #30,#36,#2a,#00,#3d,#36,#38,#64
	db #be,#36,#38,#b4,#5e,#36,#38,#32
	db #6b,#36,#38,#c8,#78,#36,#38,#96
	db #24,#37,#38,#90,#ef,#36,#38,#90
	db #ef,#36,#38,#a0,#eb,#38,#38,#90
	db #0e,#38,#38,#c0,#53,#37,#38,#46
.l35e3 equ $ + 7
	db #53,#37,#38,#52,#2c,#39,#38,#64
	db #01,#00,#05,#0a,#0a,#0b,#0a,#0c
	db #0b,#14,#0c,#18,#0a,#16,#08,#15
	db #07,#14,#06,#14,#05,#14,#04,#16
	db #02,#18,#00,#01,#ff,#01,#00,#05
	db #08,#08,#0a,#0a,#0c,#0b,#14,#0c
	db #0a,#0c,#14,#0c,#13,#0c,#14,#0c
	db #13,#0c,#14,#0c,#13,#0c,#14,#0c
	db #13,#0a,#14,#09,#13,#08,#14,#07
	db #12,#07,#13,#06,#11,#06,#12,#05
.l3630 equ $ + 4
	db #10,#00,#01,#ff,#01,#00,#0f,#0a
	db #0a,#08,#06,#06,#03,#03,#00,#01
	db #ff,#02,#fc,#0e,#40,#0d,#00,#0c
	db #40,#0b,#00,#0a,#40,#09,#00,#08
	db #40,#07,#00,#06,#40,#05,#00,#04
	db #40,#03,#00,#02,#40,#01,#00,#00
	db #01,#ff,#04,#30,#0e,#00,#0a,#00
	db #08,#00,#04,#00,#00,#01,#ff,#04
	db #d0,#0e,#00,#0a,#00,#08,#00,#04
	db #00,#00,#01,#ff,#03,#f4,#0e,#00
	db #0e,#00,#0e,#00,#0a,#24,#0a,#24
	db #0a,#24,#06,#48,#06,#48,#06,#48
	db #03,#6c,#03,#6c,#03,#6c,#01,#90
	db #01,#90,#01,#90,#00,#01,#ff,#03
	db #0c,#0e,#00,#0e,#00,#0e,#00,#0a
	db #24,#0a,#24,#0a,#24,#06,#48,#06
	db #48,#06,#48,#03,#6c,#03,#6c,#03
	db #6c,#01,#90,#01,#90,#01,#90,#00
	db #01,#ff,#02,#fe,#0f,#1c,#0f,#00
	db #0e,#1c,#0e,#00,#0d,#1c,#0d,#00
	db #0c,#1c,#0b,#00,#0a,#1c,#09,#00
	db #08,#1c,#08,#00,#07,#1c,#07,#00
	db #06,#1c,#06,#00,#05,#1c,#05,#00
	db #04,#1c,#04,#00,#03,#1c,#02,#00
	db #00,#01,#ff,#01,#00,#0f,#08,#0f
	db #14,#0f,#28,#0c,#08,#0c,#14,#0c
	db #28,#0a,#08,#0a,#14,#0a,#28,#08
	db #08,#08,#14,#08,#28,#06,#08,#06
	db #14,#06,#28,#03,#08,#03,#14,#03
	db #28,#02,#08,#02,#14,#02,#28,#01
	db #08,#01,#14,#01,#28,#00,#01,#ff
	db #04,#00,#0f,#60,#0e,#30,#0d,#00
	db #0c,#60,#0c,#30,#0b,#00,#0b,#60
	db #0a,#30,#0a,#00,#08,#60,#08,#30
	db #08,#00,#06,#60,#06,#30,#06,#00
	db #03,#60,#03,#30,#03,#00,#02,#60
.l3753 equ $ + 7
	db #02,#30,#02,#00,#00,#01,#ff,#01
	db #00,#0d,#00,#0d,#04,#0f,#08,#0d
.l3760 equ $ + 4
	db #00,#00,#01,#ff,#02,#00,#04,#01
	db #08,#00,#0c,#ff,#0c,#00,#0c,#02
	db #0c,#00,#0b,#fe,#0b,#00,#0a,#04
	db #0a,#00,#0a,#fc,#0a,#00,#09,#04
	db #09,#00,#09,#fc,#09,#00,#08,#05
	db #08,#00,#08,#fb,#08,#00,#07,#05
	db #07,#00,#07,#fb,#07,#00,#06,#05
	db #06,#00,#06,#fb,#06,#00,#05,#06
	db #05,#00,#05,#fa,#05,#00,#04,#06
	db #04,#00,#04,#fa,#04,#00,#03,#05
	db #03,#00,#03,#fb,#03,#00,#03,#05
	db #03,#00,#03,#fb,#03,#00,#02,#04
	db #02,#00,#02,#fc,#02,#00,#02,#03
	db #02,#00,#02,#fd,#02,#00,#02,#02
	db #02,#00,#02,#fe,#02,#00,#00,#01
.l37d5 equ $ + 1
	db #ff,#01,#00,#0a,#ff,#0a,#00,#0a
	db #01,#0a,#00,#09,#ff,#09,#00,#09
	db #01,#09,#00,#08,#ff,#08,#00,#08
	db #ff,#08,#00,#07,#01,#07,#00,#06
	db #ff,#06,#00,#05,#01,#05,#00,#04
	db #ff,#04,#00,#03,#01,#03,#00,#02
	db #ff,#02,#00,#01,#01,#01,#00,#00
.l380e equ $ + 2
	db #01,#ff,#01,#00,#0f,#fe,#0e,#ff
	db #0d,#00,#0c,#01,#0b,#02,#0a,#01
	db #09,#00,#09,#ff,#08,#fe,#08,#ff
	db #07,#00,#07,#01,#06,#02,#06,#01
	db #05,#00,#05,#ff,#04,#fe,#04,#ff
	db #04,#00,#04,#01,#03,#02,#03,#01
	db #03,#00,#03,#ff,#02,#fe,#02,#ff
	db #02,#00,#02,#01,#01,#02,#01,#01
.l384f equ $ + 3
	db #00,#01,#ff,#01,#00,#0f,#03,#0d
	db #02,#0b,#01,#0a,#00,#09,#00,#08
	db #00,#07,#00,#06,#00,#05,#00,#04
	db #00,#03,#00,#03,#00,#02,#00,#02
	db #00,#02,#00,#02,#00,#01,#00,#01
.l3878 equ $ + 4
	db #00,#00,#01,#ff,#01,#00,#0f,#07
	db #0d,#03,#0b,#02,#0a,#ff,#09,#01
	db #07,#00,#06,#ff,#05,#00,#04,#01
	db #03,#00,#03,#ff,#02,#00,#02,#01
.l3899 equ $ + 5
	db #01,#00,#00,#01,#ff,#01,#fe,#0f
	db #f4,#0d,#f8,#0b,#fc,#0a,#fe,#09
	db #ff,#08,#00,#07,#00,#06,#00,#05
	db #00,#04,#00,#03,#00,#03,#00,#02
	db #00,#02,#00,#02,#00,#02,#00,#01
.l38c2 equ $ + 6
	db #00,#01,#00,#00,#01,#ff,#01,#03
	db #05,#00,#0a,#00,#0d,#00,#0e,#00
	db #0c,#00,#0a,#00,#08,#00,#07,#00
	db #06,#00,#05,#00,#04,#00,#04,#00
	db #03,#00,#03,#00,#02,#00,#02,#00
.l38eb equ $ + 7
	db #01,#00,#01,#00,#00,#01,#ff,#01
	db #00,#0c,#f4,#0c,#fa,#0b,#00,#0b
	db #06,#0a,#0c,#0a,#06,#09,#00,#09
	db #fa,#08,#f4,#08,#fa,#07,#00,#07
	db #06,#06,#0c,#06,#06,#05,#00,#05
	db #fa,#04,#f4,#04,#fa,#04,#00,#04
	db #06,#03,#0c,#03,#06,#03,#00,#03
	db #fa,#02,#f4,#02,#fa,#02,#00,#02
	db #06,#01,#0c,#01,#06,#00,#01,#ff
	db #01,#0c,#0a,#00,#0d,#00,#0e,#00
	db #0a,#00,#06,#00,#04,#00,#00
	db #01,#ff
.l393d
	dw l39f3
.l393f
	dw l39f3
	db #00,#00,#00,#00,#00,#00,#00,#01
	dw l3b23,l380e,l384f,l384f
	dw #0100,l39f5,l37d5,l380e
	dw l384f,#0100,l3d6d,l37d5
	dw l380e,l37d5,#0000,l3dde
	dw l37d5,l380e,l37d5,#0000
	dw l3e1c,l384f,l3878,l384f
	dw #0000,l3e5b,l384f,l3878
	dw l3878,#0000,l3f00,l380e
	dw l380e,l380e,#0000,l3f0e
	dw l380e,l380e,l380e,#0000
	dw l3f55,l3899,l3899,l3899
	dw #0000,l3fa0,l380e,l384f
	dw l38eb,#0000,l3e9a,l380e
	dw l37d5,l380e,#0000,l3f7d
	dw l38c2,l38c2,l38c2,#0000
	dw l3f7d,l38c2,l38c2,l38c2
	dw #0000,l3fd9,l380e,l384f
	dw l384f,#0000,l3ff9,l380e
	dw l384f,l384f,#0000
	dw l3b23,l3753,l3630,l3753
	dw #0100,l3b23,l3760,l3878
	dw l3878
.l39f3 equ $ + 2
	db #00,#01,#00,#00
.l39f5
	dw l3a87,l3a87,l3b03,l3a87
	dw l3a87,l3b03,l3a87,l3a87
	dw l3b0b,l3a87,l3a87,l3b0b
	dw l3a8a,l3a8a,l3b03,l3a92
	dw l3a92,l3b03,l3a95,l3a95
	dw l3b03,l3a9d,l3a9d,l3b0b
	dw l3a8a,l3a8a,l3b13,l3aa5
	dw l3aa5,l3b13,l3aa8,l3aa8
	dw l3b13,l3ab0,l3ab0,l3b1b
	dw l3ab8,l3ab8,l3b03,l3ac0
	dw l3ac0,l3b03,l3ac8,l3ac8
	dw l3b03,l3ad0,l3ad0,l3b0b
	dw l3a8a,l3a8a,l3b13,l3ad8
	dw l3ad8,l3b13,l3ae0,l3ae0
	dw l3b13,l3ae8,l3ae8,l3b1b
	dw l3af0,l3af0,l3b03,l3af0
	dw l3af0,l3b03,l3af8,l3af8
	dw l3b0b,l3b00,l3b00,l3b0b
	dw #0000
.l3a8a equ $ + 3
.l3a87
	db #24,#00,#ff,#06,#14,#14,#14,#18
.l3a95 equ $ + 6
.l3a92 equ $ + 3
	db #00,#1b,#ff,#24,#20,#ff,#06,#14
.l3a9d equ $ + 6
	db #00,#14,#14,#18,#14,#ff,#06,#11
.l3aa5 equ $ + 6
	db #00,#11,#11,#13,#11,#ff,#24,#19
.l3aa8 equ $ + 1
	db #ff,#06,#14,#14,#14,#14,#18,#14
.l3ab0 equ $ + 1
	db #ff,#06,#11,#11,#11,#0f,#13,#16
.l3ab8 equ $ + 1
	db #ff,#06,#14,#14,#14,#18,#1b,#18
.l3ac0 equ $ + 1
	db #ff,#06,#20,#00,#00,#00,#14,#14
.l3ac8 equ $ + 1
	db #ff,#06,#14,#14,#14,#0f,#16,#13
.l3ad0 equ $ + 1
	db #ff,#06,#11,#11,#11,#0f,#13,#16
.l3ad8 equ $ + 1
	db #ff,#06,#20,#1b,#1d,#20,#00,#00
.l3ae0 equ $ + 1
	db #ff,#06,#14,#00,#14,#14,#16,#14
.l3ae8 equ $ + 1
	db #ff,#06,#11,#11,#11,#0f,#13,#16
.l3af0 equ $ + 1
	db #ff,#06,#14,#14,#14,#16,#18,#16
.l3af8 equ $ + 1
	db #ff,#06,#14,#00,#00,#00,#18,#16
.l3b03 equ $ + 4
.l3b00 equ $ + 1
	db #ff,#24,#14,#ff,#06,#08,#00,#00
.l3b0b equ $ + 4
	db #00,#03,#07,#ff,#06,#08,#03,#07
.l3b13 equ $ + 4
	db #08,#0c,#0a,#ff,#06,#05,#00,#00
.l3b1b equ $ + 4
	db #00,#08,#07,#ff,#06,#05,#08,#07
	db #05,#03,#07,#ff
.l3b23
	dw l3be5,l3cf3,l3d25,l3bf7
	dw l3cf3,l3d25,l3c09,l3cf3
	dw l3d25,l3c1b,l3cfd,l3d37
	dw l3c2d,l3d11,l3d5b,l3c2d
	dw l3d11,l3d5b,l3c3f,l3d1b
	dw l3d5b,l3c51,l3d11,l3d5b
	dw l3be5,l3cf3,l3d49,l3bf7
	dw l3cfd,l3d25,l3c09,l3cfd
	dw l3d49,l3c1b,l3d07,l3d25
	dw l3c2d,l3d1b,l3d5b,l3c2d
	dw l3d11,l3d5b,l3c3f,l3d1b
	dw l3d5b,l3c63,l3d11,l3d5b
	dw l3c75,l3cf3,l3d25,l3c87
	dw l3cf3,l3d25,l3c99,l3cf3
	dw l3d25,l3cab,l3cfd,l3d37
	dw l3cbd,l3d11,l3d5b,l3ccf
	dw l3d11,l3d5b,l3cbd,l3d1b
	dw l3d5b,l3ce1,l3d11,l3d5b
	dw l3c75,l3cf3,l3d25,l3c87
	dw l3cf3,l3d25,l3c99,l3cf3
	dw l3d25,l3cab,l3cfd,l3d37
	dw l3cbd,l3d11,l3d5b,l3ccf
	dw l3d11,l3d5b,l3cbd,l3d1b
	dw l3d5b,l3ce1,l3d11,l3d5b
	dw #0000
.l3be5
	db #03,#20,#00,#00,#00,#00,#1b,#00
	db #00,#18,#00,#00,#19,#00,#1b,#00
.l3bf7 equ $ + 2
	db #00,#ff,#03,#20,#00,#00,#00,#00
	db #1b,#00,#00,#20,#00,#00,#00,#00
.l3c09 equ $ + 4
	db #22,#00,#00,#ff,#03,#24,#00,#00
	db #00,#00,#22,#00,#00,#20,#00,#00
.l3c1b equ $ + 6
	db #00,#00,#1f,#00,#00,#ff,#03,#20
	db #00,#00,#00,#00,#1f,#00,#00,#1d
	db #00,#00,#00,#00,#1b,#00,#00,#ff
.l3c2d
	db #03,#1b,#00,#00,#00,#00,#16,#00
	db #00,#13,#00,#00,#14,#00,#16,#00
.l3c3f equ $ + 2
	db #00,#ff,#03,#1b,#00,#00,#00,#00
	db #16,#00,#00,#1b,#00,#00,#00,#00
.l3c51 equ $ + 4
	db #1d,#00,#00,#ff,#03,#1f,#00,#00
	db #00,#00,#1d,#00,#00,#1b,#00,#00
.l3c63 equ $ + 6
	db #00,#00,#1f,#00,#00,#ff,#03,#1f
	db #00,#00,#00,#00,#22,#00,#00,#24
	db #00,#00,#22,#00,#20,#00,#00,#ff
.l3c75
	db #03,#20,#00,#00,#1e,#00,#1d,#00
	db #00,#18,#00,#00,#19,#00,#1b,#00
.l3c87 equ $ + 2
	db #00,#ff,#03,#20,#00,#00,#00,#00
	db #1b,#00,#00,#18,#00,#00,#19,#00
.l3c99 equ $ + 4
	db #1b,#00,#00,#ff,#03,#24,#00,#00
	db #22,#00,#20,#00,#00,#20,#00,#00
.l3cab equ $ + 6
	db #1f,#00,#1d,#00,#00,#ff,#03,#1b
	db #00,#00,#19,#00,#18,#00,#00,#16
	db #00,#00,#18,#00,#19,#00,#00,#ff
.l3cbd
	db #03,#1b,#00,#00,#16,#00,#13,#00
	db #00,#1b,#00,#00,#16,#00,#14,#00
.l3ccf equ $ + 2
	db #00,#ff,#03,#1b,#00,#00,#16,#00
	db #13,#00,#00,#13,#00,#00,#14,#00
.l3ce1 equ $ + 4
	db #16,#00,#00,#ff,#03,#1f,#00,#00
	db #1d,#00,#1b,#00,#00,#1b,#00,#00
.l3cf3 equ $ + 6
	db #1d,#00,#1f,#00,#00,#ff,#06,#03
	db #07,#08,#00,#00,#00,#00,#00,#ff
.l3cfd
	db #06,#03,#07,#08,#00,#0c,#00,#00
.l3d07 equ $ + 2
	db #08,#ff,#06,#03,#07,#08,#00,#08
.l3d11 equ $ + 4
	db #0f,#14,#00,#ff,#06,#0a,#0d,#0f
.l3d1b equ $ + 6
	db #00,#13,#00,#0f,#00,#ff,#06,#0a
	db #0d,#0f,#00,#0a,#0d,#0f,#00,#ff
.l3d25
	db #03,#08,#00,#00,#00,#00,#00,#00
	db #00,#0c,#00,#00,#00,#00,#05,#07
.l3d37 equ $ + 2
	db #08,#ff,#03,#08,#00,#00,#00,#00
	db #08,#08,#08,#14,#00,#00,#00,#00
.l3d49 equ $ + 4
	db #08,#08,#08,#ff,#03,#08,#00,#00
	db #00,#00,#00,#00,#00,#14,#00,#00
.l3d5b equ $ + 6
	db #00,#00,#05,#07,#08,#ff,#03,#03
	db #00,#00,#00,#00,#08,#00,#00,#0f
	db #00,#00,#00,#00,#03,#03,#03,#ff
.l3d6d
	dw l3d84,l3d84,l3dba,l3d96
	dw l3d96,l3dcc,l3da8,l3da8
	dw l3d81,#0000
.l3d84 equ $ + 3
.l3d81
	db #30,#00,#ff,#03,#18,#00,#00,#00
	db #00,#1b,#00,#00,#1f,#00,#00,#20
.l3d96 equ $ + 5
	db #00,#24,#00,#00,#ff,#03,#20,#00
	db #00,#00,#00,#1b,#00,#00,#18,#00
.l3da8 equ $ + 7
	db #00,#19,#00,#1b,#00,#00,#ff,#03
	db #20,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3dba equ $ + 1
	db #ff,#03,#03,#00,#00,#07,#00,#0a
	db #00,#00,#08,#00,#00,#00,#00,#03
.l3dcc equ $ + 3
	db #00,#00,#ff,#03,#03,#00,#00,#07
	db #00,#0a,#00,#00,#0c,#00,#00,#0a
	db #00,#08,#00,#00,#ff
.l3dde
	dw l3df2,l3df2,l3e07,l3df2
	dw l3df2,l3e07,l3e04,l3e04
	dw l3e19,#0000
.l3df2
	db #03,#20,#00,#00,#00,#00,#1b,#00
	db #00,#18,#00,#00,#19,#00,#1b,#00
.l3e07 equ $ + 5
.l3e04 equ $ + 2
	db #00,#ff,#30,#20,#ff,#03,#03,#00
	db #00,#08,#00,#0a,#00,#00,#0c,#00
.l3e19 equ $ + 7
	db #00,#0a,#00,#08,#00,#00,#ff,#30
	db #14,#ff
.l3e1c
	dw l3e30,l3e30,l3e47,l3e3a
	dw l3e3a,l3e51,l3e44,l3e44
	dw l3e44,#0000
.l3e30
	db #06,#20,#1f,#1d,#18,#1b,#00,#14
.l3e3a equ $ + 2
	db #14,#ff,#06,#16,#18,#19,#1b,#20
.l3e47 equ $ + 7
.l3e44 equ $ + 4
	db #00,#00,#00,#ff,#0c,#00,#ff,#06
	db #08,#00,#08,#00,#0f,#00,#0d,#0c
.l3e51 equ $ + 1
	db #ff,#06,#0c,#0c,#0d,#0f,#08,#00
	db #00,#00,#ff
.l3e5b
	dw l3e6f,l3e6f,l3e86,l3e79
	dw l3e79,l3e90,l3e83,l3e83
	dw l3e83,#0000
.l3e6f
	db #06,#20,#1f,#1d,#18,#20,#1f,#1d
.l3e79 equ $ + 2
	db #18,#ff,#06,#18,#19,#1b,#1f,#20
.l3e86 equ $ + 7
.l3e83 equ $ + 4
	db #00,#14,#00,#ff,#0c,#00,#ff,#06
	db #08,#08,#08,#00,#0c,#00,#0f,#0f
.l3e90 equ $ + 1
	db #ff,#06,#0c,#0c,#0f,#0f,#0c,#00
	db #08,#00,#ff
.l3e9a
	dw l3eb4,l3eb4,l3ed5,l3ebe
	dw l3ebe,l3edf,l3ec8,l3ec8
	dw l3ee9,l3ed2,l3ed2,l3ef3
	dw #0000
.l3eb4
	db #06,#14,#00,#18,#00,#1b,#00,#18
.l3ebe equ $ + 2
	db #14,#ff,#06,#16,#00,#19,#00,#1d
.l3ec8 equ $ + 4
	db #00,#19,#16,#ff,#06,#1f,#00,#1f
.l3ed2 equ $ + 6
	db #00,#1d,#1f,#00,#00,#ff,#30,#20
.l3ed5 equ $ + 1
	db #ff,#06,#08,#08,#0a,#0c,#0f,#0d
.l3edf equ $ + 3
	db #0c,#0a,#ff,#06,#0a,#0a,#0c,#0d
.l3ee9 equ $ + 5
	db #11,#0f,#0d,#0c,#ff,#06,#13,#13
.l3ef3 equ $ + 7
	db #13,#13,#13,#13,#11,#13,#ff,#06
	db #14,#0f,#0c,#0a,#08,#00,#00,#00
.l3efd equ $ + 1
	db #ff,#24,#00,#ff
.l3f00
	dw l3f1c,l3f23,l3f2f,l3efd
	dw l3efd,l3efd,#0000
.l3f0e
	dw l3f36,l3f3d,l3f49,l3efd
	dw l3efd,l3efd,#0000
.l3f23 equ $ + 7
.l3f1c
	db #0c,#14,#00,#00,#0f,#0c,#ff,#06
	db #00,#00,#0f,#00,#00,#0d,#00,#00
.l3f2f equ $ + 3
	db #0f,#00,#ff,#0c,#00,#00,#0c,#00
.l3f36 equ $ + 2
	db #14,#ff,#0c,#14,#00,#00,#0f,#0c
.l3f3d equ $ + 1
	db #ff,#06,#00,#00,#00,#00,#00,#0d
.l3f49 equ $ + 5
	db #00,#00,#0f,#00,#ff,#06,#00,#13
	db #11,#00,#0c,#00,#00,#00,#14,#00
	db #ff
.l3f55
	dw l3f63,l3f6a,l3f76,l3efd
	dw l3efd,l3efd,#0000
.l3f6a equ $ + 7
.l3f63
	db #0c,#14,#00,#0c,#00,#14,#ff,#06
	db #00,#14,#00,#0f,#00,#00,#00,#00
.l3f76 equ $ + 3
	db #0f,#00,#ff,#0c,#00,#0f,#00,#08
	db #0c,#ff
.l3f7d
	dw l3f85,l3f8e,l3f97,#0000
.l3f85
	db #06,#0f,#00,#00,#00,#00,#00,#00
.l3f8e equ $ + 1
	db #ff,#06,#00,#14,#00,#00,#00,#00
.l3f97 equ $ + 2
	db #00,#ff,#06,#00,#00,#18,#00,#00
	db #00,#00,#ff
.l3fa0
	dw l3fae,l3fb8,l3fc2,l3fc5
	dw l3fcf,l3fc2,#0000
.l3fae
	db #06,#20,#00,#1b,#1b,#18,#00,#14
.l3fb8 equ $ + 2
	db #00,#ff,#06,#0c,#0c,#0d,#0f,#0c
.l3fc5 equ $ + 7
.l3fc2 equ $ + 4
	db #0f,#0c,#0a,#ff,#30,#00,#ff,#06
	db #1b,#19,#16,#00,#14,#00,#00,#00
.l3fcf equ $ + 1
	db #ff,#06,#0c,#0c,#0d,#0f,#08,#00
	db #00,#00,#ff
.l3fd9
	dw l3fe1,l3feb,l3ff5,#0000
.l3fe1
	db #08,#08,#00,#18,#00,#14,#00,#00
.l3feb equ $ + 2
	db #00,#ff,#08,#00,#0c,#00,#16,#00
.l3ff5 equ $ + 4
	db #00,#00,#00,#ff,#20,#00,#14,#ff
.l3ff9
	dw l4001,l400b,l4015,#0000
.l4001
	db #08,#08,#00,#18,#00,#20,#00,#00
.l400b equ $ + 2
	db #00,#ff,#08,#00,#0c,#00,#16,#00
	db #00,#00,#00,#ff
.l4015
	db #20,#00,#18,#ff
;
.music_info
	db "Arcade Trivia Quiz Simulator (1989)(Zeppelin Games)(Paul Hiley)",0
	db "",0

	read "music_end.asm"
