; Music of Colossus 4 Bridge (1986)(CDS Software LTD)()()
; Ripped by Megachur the 22/08/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COLOSS4B.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #9d20

	read "music_header.asm"

.l9d20
	db #00,#00,#60,#00,#00,#0c,#bd,#00
	db #0c,#b2,#00,#0c,#9f,#00,#0c,#8d
	db #00,#0c,#9f,#00,#0c,#bd,#00,#0c
	db #b2,#00,#0c,#9f,#00,#18,#8d,#00
	db #0c,#9f,#00,#0c,#9f,#00,#0c,#bd
	db #00,#0c,#b2,#00,#0c,#a8,#00,#0c
	db #9f,#00,#18,#8d,#00,#0c,#9f,#00
	db #0c,#9f,#00,#18,#00,#00,#18,#d4
	db #00,#0c,#d4,#00,#18,#ee,#00,#0c
	db #ee,#00,#18,#d4,#00,#18,#3e,#01
	db #3c,#bd,#00,#0c,#b2,#00,#0c,#a8
	db #00,#0c,#9f,#00,#18,#8d,#00,#0c
	db #9f,#00,#0c,#9f,#00,#0c,#bd,#00
	db #0c,#b2,#00,#0c,#a8,#00,#0c,#9f
	db #00,#18,#8d,#00,#0c,#9f,#00,#0c
	db #9f,#00,#30,#00,#00,#60,#00,#00
	db #3c,#3e,#01,#0c,#51,#01,#0c,#3e
	db #01,#0c,#ee,#00,#18,#1b,#01,#0c
	db #ee,#00,#0c,#ee,#00,#0c,#1b,#01
	db #0c,#ee,#00,#0c,#1b,#01,#0c,#3e
	db #01,#0c,#ee,#00,#0c,#bd,#00,#0c
	db #9f,#00,#0c,#9f,#00,#0c,#bd,#00
	db #0c,#ee,#00,#0c,#9f,#00,#0c,#1b
	db #01,#18,#ee,#00,#18,#bd,#00,#0c
	db #d4,#00,#18,#ee,#00,#0c,#ee,#00
.l9dec equ $ + 4
	db #48,#ff,#ff,#ff,#1b,#01,#0c,#fc
	db #00,#0c,#ee,#00,#0c,#d4,#00,#0c
	db #bd,#00,#0c,#d4,#00,#0c,#ee,#00
	db #0c,#d4,#00,#0c,#3e,#01,#18,#00
	db #00,#30,#ee,#00,#0c,#d4,#00,#0c
	db #bd,#00,#18,#b2,#00,#0c,#bd,#00
	db #0c,#bd,#00,#0c,#ee,#00,#0c,#d4
	db #00,#0c,#c8,#00,#0c,#bd,#00,#18
	db #b2,#00,#0c,#bd,#00,#0c,#bd,#00
	db #0c,#9f,#00,#0c,#8d,#00,#0c,#85
	db #00,#0c,#7e,#00,#0c,#7e,#00,#18
	db #7e,#00,#0c,#7e,#00,#0c,#8d,#00
	db #0c,#a8,#00,#0c,#d4,#00,#0c,#9f
	db #00,#3c,#ee,#00,#0c,#d4,#00,#0c
	db #c8,#00,#0c,#bd,#00,#18,#b2,#00
	db #0c,#bd,#00,#0c,#bd,#00,#0c,#ee
	db #00,#0c,#d4,#00,#0c,#c8,#00,#0c
	db #bd,#00,#18,#b2,#00,#0c,#bd,#00
	db #0c,#bd,#00,#0c,#bd,#00,#0c,#ee
	db #00,#0c,#3e,#01,#0c,#1b,#01,#0c
	db #fc,#00,#0c,#ee,#00,#0c,#d4,#00
	db #0c,#bd,#00,#0c,#d4,#00,#0c,#ee
	db #00,#0c,#d4,#00,#0c,#ee,#00,#48
	db #0b,#01,#18,#65,#01,#18,#65,#01
	db #18,#1b,#01,#18,#1b,#01,#18,#7a
	db #01,#18,#7a,#01,#18,#7a,#01,#18
	db #7a,#01,#18,#51,#01,#18,#51,#01
	db #18,#65,#01,#0c,#65,#01,#18,#7a
	db #01,#0c,#7a,#01,#48,#00,#00,#18
.l9ed0
	db #0a,#02,#18,#65,#01,#18,#0a,#02
	db #18,#65,#01,#18,#f5,#02,#18,#ee
	db #00,#18,#7c,#02,#18,#ee,#00,#18
	db #dd,#01,#18,#ee,#00,#18,#7c,#02
	db #18,#ee,#00,#18,#dd,#01,#18,#ee
	db #00,#18,#7a,#01,#18,#91,#01,#18
	db #a8,#01,#18,#3e,#01,#18,#a8,#01
	db #18,#1b,#01,#18,#3e,#01,#18,#65
	db #01,#18,#7a,#01,#18,#a8,#01,#18
	db #dd,#01,#18,#ee,#00,#18,#7c,#02
	db #18,#ee,#00,#18,#dd,#01,#18,#3e
	db #01,#18,#7c,#02,#18,#3e,#01,#18
	db #ca,#02,#18,#65,#01,#18,#ca,#02
	db #18,#65,#01,#18,#f5,#02,#18,#3e
	db #01,#18,#dd,#01,#18,#7a,#01,#18
	db #ca,#02,#18,#ca,#02,#18,#a2,#02
	db #18,#a2,#02,#18,#7c,#02,#18,#7c
	db #02,#18,#7c,#02,#18,#7c,#02,#18
	db #a8,#01,#18,#a8,#01,#18,#7c,#02
	db #18,#7c,#02,#18,#dd,#01,#18,#3e
	db #01,#18,#dd,#01,#18,#00,#00,#18
.l9f7f equ $ + 7
.l9f7d equ $ + 5
.l9f7b equ $ + 3
.l9f7a equ $ + 2
.l9f79 equ $ + 1
.l9f78
	db #0c,#0c,#0a,#00,#00,#00,#00,#00
	db #00
.l9f86 equ $ + 5
.l9f85 equ $ + 4
.l9f84 equ $ + 3
.l9f83 equ $ + 2
.l9f82 equ $ + 1
.l9f81
	db #00,#00,#00,#00,#00,#00,#00
.l9f88
	call la108
	ld hl,l9d20
	ld (l9f7b),hl
	ld hl,l9dec
	ld (l9f7d),hl
	ld hl,l9ed0
	ld (l9f7f),hl
	ld a,#01
	ld (l9f81),a
	ld (l9f82),a
	ld (l9f83),a
	ld a,#38
	ld (la0ee),a
	ret
.l9fae
	db #00,#00
	;
.init_music
.l9fb0	; init
	;
	ld a,(l9fae)
	cp #00
	ret nz
	ld a,#02
	ld (l9f84),a
	ld (l9f85),a
	ld (l9f86),a
	call l9f88
	ret
	ld a,#00	; stop ?
	ld (l9f84),a
	ld (l9f85),a
	ld (l9f86),a
	call la108
	ret
	;
.play_music
.l9fd4		; play
	;
	ld a,(l9f84)
	cp #02
	jp nz,la03a
	ld a,(l9f81)
	dec a
	ld (l9f81),a
	or a
	jp nz,la03a
	ld a,#07
	call la0f0
	or #01
	ld e,a
	ld a,#07
	call la0f4
	ld ix,(l9f7b)
	ld e,(ix+#00)
	ld a,#00
	call la0f4
	ld a,(ix+#01)
	cp #ff
	jp nz,la00e
	call l9f88
	jp la0ed
.la00e
	ld e,a
	ld a,#01
	call la0f4
	ld a,(ix+#02)
	ld (l9f81),a
	ld a,(l9f78)
	ld e,a
	ld a,#08
	call la0f4
	ld a,#07
	call la0f0
	and #fe
	ld e,a
	ld a,#07
	call la0f4
	inc ix
	inc ix
	inc ix
	ld (l9f7b),ix
.la03a
	ld a,(l9f85)
	cp #02
	jp nz,la094
	ld a,(l9f82)
	dec a
	ld (l9f82),a
	or a
	jp nz,la094
	ld a,#07
	call la0f0
	or #02
	ld e,a
	ld a,#07
	call la0f4
	ld ix,(l9f7d)
	ld e,(ix+#00)
	ld a,#02
	call la0f4
	ld e,(ix+#01)
	ld a,#03
	call la0f4
	ld a,(l9f79)
	ld e,a
	ld a,#09
	call la0f4
	ld a,#07
	call la0f0
	and #fd
	ld e,a
	ld a,#07
	call la0f4
	ld a,(ix+#02)
	ld (l9f82),a
	inc ix
	inc ix
	inc ix
	ld (l9f7d),ix
.la094
	ld a,(l9f86)
	cp #02
	jp nz,la0ed
	ld a,(l9f83)
	dec a
	ld (l9f83),a
	or a
	jr nz,la0ed
	ld a,#07
	call la0f0
	or #04
	ld e,a
	ld a,#07
	call la0f4
	ld ix,(l9f7f)
	ld e,(ix+#00)
	ld a,#04
	call la0f4
	ld e,(ix+#01)
	ld a,#05
	call la0f4
	ld a,(ix+#02)
	ld (l9f83),a
	ld a,(l9f7a)
	ld e,a
	ld a,#0a
	call la0f4
	ld a,#07
	call la0f0
	and #fb
	ld e,a
	ld a,#07
	call la0f4
	inc ix
	inc ix
	inc ix
	ld (l9f7f),ix
.la0ed
	ret
.la0ee
	ccf
	nop
.la0f0
	ld a,(la0ee)
	ret
.la0f4
	push ix
	ld c,e
	cp #07
	jp nz,la102
	push af
	ld a,c
	ld (la0ee),a
	pop af
.la102
	call lbd34	; call #bd34 - modified by Megachur
	pop ix
	ret
.la108
	ld a,#07
	ld c,#3f
	jp lbd34	; call #bd34
	; ret - modified by Megachur
	; db #00,#00

	read "bd34.asm"

	; org #17f8
	; call #9fb0	; init
	; ld bc,#05dc
	; .l17fe
	; push bc
	; call #bd19
	; call #9fd4	; play
	; call #bb1b
	; pop bc
	; jp c,#1817
	; dec bc
	; ld a,b
	; or c
	; jp nz,l17fe

	; use vector system
;
.music_info
	db "Colossus 4 Bridge (1986)(CDS Software LTD)()",0
	db "",0

	read "music_end.asm"
