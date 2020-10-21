; Music of Megawar Intro (1990)(Black System)(Luc Guillaume)()
; Ripped by Megachur the 08/03/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MEGAWARI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #8000
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

	push af
	call #bca7
	pop af
	cp #01
	ret nz
	ld a,(ix+#00)
	cp #01
	jp z,l8018
	ld hl,l82b9
	jp #bcdd
.l8018 equ $ + 2
	ld (#3e83),hl
	ld bc,#cf21
	add d
	call #bcbc
	ld a,#01
	ld hl,l82d9
	call #bcbf
	ld a,#02
	ld hl,l82e0
	call #bcbc
	ld a,#02
	ld hl,l82e4
	call #bcbf
	ld a,#03
	ld hl,l82eb
	call #bcbc
	ld a,#03
	ld hl,l82f2
	call #bcbf
	ld a,#04
	ld hl,l82f9
	call #bcbc
	ld a,#05
	ld hl,l8306
	call #bcbc
	ld a,#06
	ld hl,l830a
	call #bcbc
	ld a,#07
	ld hl,l8314
	call #bcbc
	ld a,#08
	ld hl,l831b
	call #bcbc
	xor a
	ld (l82cd),a
	ld (l82ce),a
	ld (l81c5),a
	ld a,#01
	ld (l82c8),a
	ld hl,l8323
	ld (l82cb),hl
	call l814d
	ld hl,l82b9
	ld bc,l8100
	ld de,l8094
	jp #bcd7
.l8094
	di
	push af
	push de
	push hl
	push bc
	push ix
	push iy
	call l80ab
	pop iy
	pop ix
	pop bc
	pop hl
	pop de
	pop af
	ei
	reti
.l80ab
	ld a,(l82c8)
	dec a
	cp #00
	jp z,l80b8
	ld (l82c8),a
	ret
.l80b8
	ld b,#03
	ld ix,(l82c9)
.l80be
	push bc
	push ix
	ld de,#0001
	ld a,(ix+#00)
	cp #00
	jp z,l80d2
	call l8129
	ld de,#0005
.l80d2
	pop ix
	pop bc
	add ix,de
	djnz l80be
	ld a,(ix+#00)
	inc a
	ld (l82c8),a
	inc ix
	ld (l82c9),ix
	ld a,(ix+#00)
	cp #ff
	ret nz
	xor a
	ld (l81c5),a
	jp l814d
.l80f3
	ld a,#0f
	ld iy,l81ea
	jp l810e
.l80fc
	ld a,#0f
.l8100 equ $ + 2
	ld iy,l81f3
	jp l810e
.l8105
	ld a,#0f
	ld iy,l8217
	jp l810e
.l810e
	push af
	push ix
	push iy
	ld (iy+#06),a
	call l8197
	pop iy
	pop ix
	pop af
	dec a
	cp #09
	jp nz,l810e
	ld (iy+#06),#0f
	ret
.l8129
	ld a,(ix+#04)
	cp #10
	jp z,l80f3
	cp #11
	jp z,l80fc
	cp #13
	jp z,l8105
	ld iy,l81ea
.l813f
	dec a
	cp #00
	jp z,l8197
	ld de,#0009
	add iy,de
	jp l813f
.l814d
	ld hl,(l82cb)
	inc hl
	ld a,(hl)
	cp #00
	jp nz,l8165
	xor a
	ld (l82cd),a
	ld (l82ce),a
	ld (l81c5),a
	ld hl,l8324
	ld a,(hl)
.l8165
	ld (l82cb),hl
	cp #64
	jp z,l81d2
	cp #65
	jp z,l81da
	ld ix,(l8322)
	ld de,l8322
	add ix,de
.l817b
	dec a
	cp #00
	jp z,l8189
	ld de,#0002
	add ix,de
	jp l817b
.l8189
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld de,l8322
	add hl,de
	ld (l82c9),hl
	ret
.l8197
	ld a,(ix+#00)
	ld (iy+#00),a
	ld l,(ix+#01)
	ld h,(ix+#02)
	call l81ca
	ld (iy+#03),l
	ld (iy+#04),h
	ld a,(ix+#03)
	ld (iy+#07),a
	ld (iy+#08),#00
	push iy
	pop hl
	ld a,(l82ce)
	cp #00
	jp z,#bcaa
	ld a,(ix+#00)
.l81c5 equ $ + 1
	cp #00
	jp nz,#bcaa
	ret
.l81ca
	ld a,(l82cd)
	cp #00
	ret z
	add hl,hl
	ret
.l81d2
	ld a,#01
	ld (l82cd),a
	jp l814d
.l81da
	ld a,#01
	ld (l82ce),a
	inc hl
	ld a,(hl)
	ld (l81c5),a
	ld (l82cb),hl
	jp l814d
.l81ea
	db #00,#01,#00,#00,#00,#00,#0f,#00
.l81f3 equ $ + 1
	db #00,#00,#02,#00,#00,#00,#05,#0f
	db #00,#00,#00,#03,#00,#00,#00,#00
	db #0f,#00,#00,#00,#04,#00,#00,#00
	db #00,#00,#00,#00,#00,#02,#00,#00
.l8217 equ $ + 5
	db #00,#00,#0f,#00,#00,#00,#02,#00
	db #00,#00,#0f,#0f,#00,#00,#00,#02
	db #00,#00,#00,#19,#0f,#00,#00,#00
	db #05,#00,#00,#00,#05,#0f,#00,#00
	db #00,#05,#00,#00,#00,#0f,#0f,#00
	db #00,#00,#05,#00,#00,#00,#0f,#0f
	db #00,#00,#00,#05,#00,#00,#00,#00
	db #0f,#00,#00,#00,#03,#01,#00,#00
	db #00,#0f,#00,#00,#00,#06,#00,#00
	db #00,#01,#00,#00,#00,#04,#00,#02
	db #77,#00,#00,#0c,#9d,#00,#00,#03
	db #02,#00,#00,#00,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#03,#01,#00,#0a,#0a,#ff,#01
	db #01,#00,#04,#02,#00,#00,#00,#00
	db #00,#00,#01,#0f,#ff,#02,#82,#03
	db #01,#03,#03,#00,#03,#03,#00,#00
	db #00,#00,#00,#00,#02,#07,#00,#86
	db #00,#00,#00,#0c,#00,#00,#08,#00
	db #00,#00,#03,#00,#00,#00,#00,#05
	db #00,#00,#00,#01,#0f,#00,#00
.l82b9
	db #f9,#b7,#fb,#b7,#00,#81,#94,#80
.l82c8 equ $ + 7
	db #00,#0f,#05,#0a,#ff,#02,#02,#01
.l82ce equ $ + 5
.l82cd equ $ + 4
.l82cb equ $ + 2
.l82c9
	db #4d,#85,#2d,#83,#00,#00,#03,#01
	db #00,#0a,#0a,#ff,#01,#01,#00,#0a
.l82e0 equ $ + 7
.l82d9
	db #82,#14,#01,#01,#14,#ff,#01,#01
.l82e4 equ $ + 3
	db #0f,#ff,#02,#82,#03,#01,#03,#03
.l82eb equ $ + 2
	db #ff,#03,#02,#0a,#ff,#08,#05,#ff
.l82f2 equ $ + 1
	db #04,#03,#50,#01,#01,#14,#02,#01
.l82f9
	db #04,#01,#07,#01,#03,#02,#01,#01
.l8306 equ $ + 5
	db #00,#02,#0a,#ff,#05,#01,#0f,#ff
.l830a equ $ + 1
	db #01,#03,#01,#0a,#01,#01,#00,#04
.l8314 equ $ + 3
	db #05,#fe,#01,#02,#01,#0f,#05,#0a
.l831b equ $ + 2
	db #ff,#02,#02,#01,#0c,#01,#0c,#ff
.l8324 equ $ + 3
.l8323 equ $ + 2
.l8322 equ $ + 1
	db #01,#39,#00,#06,#07,#06,#07,#08
	db #07,#08,#07,#09,#07,#09,#07,#01
	db #02,#01,#04,#03,#02,#03,#04,#05
	db #02,#05,#04,#01,#65,#02,#02,#65
	db #02,#01,#65,#02,#04,#03,#65,#02
	db #02,#65,#02,#03,#65,#02,#04,#05
	db #65,#02,#02,#65,#02,#05,#65,#02
	db #04,#00,#54,#00,#96,#00,#07,#01
	db #48,#01,#b9,#01,#fa,#01,#23,#02
	db #54,#02,#7d,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#0c,#01
	db #0c,#04,#02,#86,#00,#0c,#15,#04
	db #00,#00,#0c,#11,#05,#01,#1c,#01
	db #0c,#04,#02,#8e,#00,#0c,#15,#00
	db #05,#01,#3f,#01,#0c,#04,#02,#9f
	db #00,#0c,#15,#00,#05,#01,#66,#01
	db #0c,#04,#02,#b3,#00,#0c,#15,#00
	db #05,#01,#3f,#01,#0c,#04,#02,#9f
	db #00,#90,#0e,#00,#05,#ff,#00,#01
	db #00,#00,#0c,#0d,#00,#00,#05,#01
	db #66,#01,#0c,#04,#04,#59,#00,#0c
	db #15,#00,#05,#01,#3f,#01,#0c,#04
	db #04,#50,#00,#0c,#15,#00,#05,#01
	db #00,#00,#0c,#08,#00,#00,#05,#01
	db #66,#01,#0c,#04,#04,#59,#00,#0c
	db #15,#00,#05,#01,#3f,#01,#0c,#04
	db #04,#50,#00,#0c,#15,#00,#05,#01
	db #00,#00,#0c,#0d,#00,#00,#05,#01
	db #66,#01,#0c,#04,#04,#59,#00,#0c
	db #15,#00,#05,#01,#3f,#01,#0c,#04
	db #04,#50,#00,#0c,#15,#00,#05,#01
	db #00,#00,#0c,#08,#00,#00,#05,#01
	db #00,#00,#0c,#16,#00,#00,#05,#ff
	db #01,#0c,#01,#0c,#04,#02,#86,#00
	db #0c,#15,#04,#00,#00,#0c,#11,#05
	db #01,#1c,#01,#0c,#04,#02,#8e,#00
	db #0c,#15,#00,#05,#01,#0c,#01,#0c
	db #04,#02,#86,#00,#0c,#15,#00,#05
	db #01,#ef,#00,#0c,#04,#02,#77,#00
	db #0c,#15,#00,#05,#01,#d5,#00,#0c
	db #04,#02,#6a,#00,#90,#0e,#00,#05
	db #ff,#01,#00,#00,#0c,#0d,#00,#00
	db #05,#01,#66,#01,#0c,#04,#04,#59
	db #00,#0c,#15,#00,#05,#01,#3f,#01
	db #0c,#04,#04,#50,#00,#0c,#15,#00
	db #05,#01,#00,#00,#0c,#08,#00,#00
	db #05,#01,#66,#01,#0c,#04,#04,#59
	db #00,#0c,#15,#00,#05,#01,#3f,#01
	db #0c,#04,#04,#50,#00,#0c,#15,#00
	db #05,#01,#00,#00,#0c,#0d,#00,#00
	db #05,#01,#0c,#01,#0c,#04,#04,#43
	db #00,#0c,#15,#00,#05,#01,#3f,#01
	db #0c,#04,#04,#50,#00,#0c,#15,#00
	db #05,#01,#00,#00,#0c,#08,#00,#00
	db #05,#01,#00,#00,#0c,#16,#00,#00
	db #05,#ff,#01,#c9,#00,#0c,#04,#02
	db #64,#00,#0c,#15,#04,#00,#00,#0c
	db #11,#05,#01,#d5,#00,#0c,#04,#02
	db #6a,#00,#0c,#15,#00,#05,#01,#ef
	db #00,#0c,#04,#02,#77,#00,#0c,#15
	db #00,#05,#01,#0c,#01,#0c,#04,#02
	db #86,#00,#0c,#15,#00,#05,#01,#ef
	db #00,#0c,#04,#02,#77,#00,#90,#0e
	db #00,#05,#ff,#00,#02,#86,#00,#0c
	db #15,#00,#05,#00,#02,#8e,#00,#0c
	db #15,#00,#05,#00,#02,#9f,#00,#0c
	db #15,#00,#05,#00,#02,#b3,#00,#0c
	db #15,#00,#05,#00,#04,#9f,#00,#9d
	db #0e,#00,#05,#ff,#00,#00,#00,#05
	db #00,#00,#00,#05,#00,#00,#00,#05
	db #00,#00,#00,#05,#00,#00,#00,#05
	db #00,#00,#00,#05,#00,#00,#00,#05
	db #00,#00,#00,#05,#00,#00,#00,#05
	db #00,#00,#00,#05,#00,#00,#00,#05
	db #00,#00,#00,#05,#ff,#00,#02,#86
	db #00,#0c,#15,#00,#05,#00,#02,#8e
	db #00,#0c,#15,#00,#05,#00,#02,#86
	db #00,#0c,#15,#00,#05,#00,#02,#77
	db #00,#0c,#15,#00,#05,#00,#04,#6a
	db #00,#9d,#0e,#00,#05,#ff,#00,#02
	db #64,#00,#0c,#15,#00,#05,#00,#02
	db #6a,#00,#0c,#15,#00,#05,#00,#02
	db #77,#00,#0c,#15,#00,#05,#00,#02
	db #86,#00,#0c,#15,#00,#05,#00,#04
	db #77,#00,#9d,#0e,#00,#05,#ff
;
; #0154
; ld a,#01
; call #800b
;
.music_info
	db "Megawar Intro (1990)(Black System)(Luc Guillaume)",0
	db "",0

	read "music_end.asm"
