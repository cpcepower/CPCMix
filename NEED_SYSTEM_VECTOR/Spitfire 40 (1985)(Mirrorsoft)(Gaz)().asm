; Music of Spitfire 40 (1985)(Mirrorsoft)(Gaz)()
; Ripped by Megachur the 08/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SPITFIR4.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9bcf
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

;
.init_music
;
	call #bca7
	ld a,#01
	ld hl,l9c05
	call #bcbc
	ld a,#02
	ld hl,l9c0c
	call #bcbc
	ld a,#03
	ld hl,l9c13
	call #bcbc
	ld a,#04
	ld hl,l9c1a
	call #bcbc
	ld a,#01
	ld hl,l9c21
	call #bcbf
	ld a,#05
	ld hl,l9c28
	call #bcbc
	jp l9cfa
.l9c0c equ $ + 7
.l9c05
	db #02,#01,#0e,#01,#0f,#ff,#08,#02
.l9c13 equ $ + 6
	db #8a,#00,#fe,#08,#00,#0a,#02,#83
.l9c1a equ $ + 5
	db #00,#4e,#02,#00,#0a,#02,#88,#00
.l9c21 equ $ + 4
	db #9c,#04,#00,#0a,#82,#02,#01,#01
.l9c28 equ $ + 3
	db #02,#ff,#01,#02,#0a,#01,#04,#0a
	db #ff,#04,#21,#39,#9c,#18,#62,#21
	db #42,#9c,#18,#5d,#02,#00,#00,#ff
	db #0f,#05,#0f,#20,#00,#02,#00,#00
	db #ff,#0f,#0a,#0d,#20,#00,#21,#55
	db #9c,#18,#46,#21,#5e,#9c,#18,#41
	db #82,#01,#00,#a9,#00,#00,#0f,#4b
	db #00,#02,#01,#00,#ff,#00,#00,#0c
	db #30,#00
	ld hl,l9c78
	call l9c96
	ld hl,l9c81
	call l9c96
	ld hl,l9c8a
	jr l9c96
.l9c78
	db #b9,#02,#00,#00,#04,#1f,#00,#80
.l9c81 equ $ + 1
	db #00,#ba,#03,#00,#00,#00,#0f,#00
.l9c8a equ $ + 2
	db #40,#00,#bc,#04,#00,#00,#04,#0a
	db #00,#80,#00
	ld hl,l9c99
.l9c96
	jp #bcaa
.l9c99
	db #82,#02,#00,#80,#01,#01,#0f,#20
	db #00
	ld a,(#101d)
	or a
	ret z
	ld l,a
	ld h,#00
	ld a,(#1038)
	ld e,a
	ld d,#00
	add hl,de
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,#1000
	ex de,hl
	sbc hl,de
	ld (l9ccf),hl
	inc hl
	ld (l9cd8),hl
	ld hl,l9ccc
	call l9c96
	ld hl,l9cd5
	jr l9c96
.l9ccf equ $ + 3
.l9ccc
	db #04,#00,#00,#ff,#ff,#00,#0f,#18
	db #00
.l9cd8 equ $ + 3
.l9cd5
	db #01,#00,#00,#ff,#ff,#00,#0f,#18
	db #00
	ld hl,l9ce3
	jr l9c96
.l9ce3
	db #82,#03,#00,#00,#00,#1f,#00,#18
	db #00
	ld hl,l9cf1
	jr l9c96
.l9cf1
	db #82,#03,#00,#00,#00,#05,#00,#08
	db #00
.l9cfa
	ld b,#81
	ld c,#00
	ld de,l9d3d
	ld hl,l9d34
	call #bcef
	ret
	ld bc,#0005
	ld de,#0001
	ld hl,l9d2e
	call #bce9
	ld hl,l9d99
	ld (l9d3b),hl
	ret
	ld hl,l9d2e
	call #bcec
	call #bca7
	ret
	db #00,#01,#00,#00,#00,#00,#0f,#19
.l9d34 equ $ + 7
.l9d2e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9d3b equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.play_music_interrupt
.l9d3d
;
	ld hl,(l9d3b)
	ld a,(hl)
	cp #ff
	jr nz,l9d4c
	ld hl,l9d99		; reinit music
	ld (l9d3b),hl
	ret
.l9d4c
	push ix
	ld ix,l9d87
	push hl
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#10),a
	inc hl
	inc hl
	ld a,(hl)
	ld (ix+#03),a
	dec a
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ld (ix+#0d),a
	inc hl
	push ix
	ex (sp),hl
	call #bcaa
	jr nc,l9d7f
	ld hl,l9d90
	call #bcaa
	pop hl
	pop de
	jr l9d81
.l9d7f
	pop hl
	pop hl
.l9d81
	ld (l9d3b),hl
	pop ix
	ret
.l9d87
	db #21,#01,#00,#00,#00,#00,#0f,#00
.l9d90 equ $ + 1
	db #00,#0c,#00,#00,#00,#00,#00,#0f
.l9d99 equ $ + 2
	db #00,#00,#24,#00,#3f,#01,#24,#00
	db #ef,#00,#24,#00,#d5,#00,#24,#00
	db #be,#00,#12,#00,#d5,#00,#12,#00
	db #ef,#00,#24,#00,#d5,#00,#24,#00
	db #3f,#01,#24,#00,#8e,#00,#12,#00
	db #9f,#00,#12,#00,#b3,#00,#24,#00
	db #9f,#00,#24,#00,#ef,#00,#24,#00
	db #ef,#00,#12,#00,#d5,#00,#12,#00
	db #be,#00,#24,#00,#d5,#00,#48,#00
	db #3f,#01,#24,#00,#3f,#01,#24,#00
	db #ef,#00,#24,#00,#d5,#00,#24,#00
	db #be,#00,#12,#00,#d5,#00,#12,#00
	db #ef,#00,#24,#00,#d5,#00,#24,#00
	db #3f,#01,#24,#00,#8e,#00,#12,#00
	db #9f,#00,#12,#00,#b3,#00,#24,#00
	db #9f,#00,#24,#00,#ef,#00,#24,#00
	db #ef,#00,#12,#00,#d5,#00,#12,#00
	db #be,#00,#24,#00,#d5,#00,#48,#00
	db #3f,#01,#24,#00,#77,#00,#12,#00
	db #7f,#00,#12,#00,#8e,#00,#24,#00
	db #7f,#00,#24,#00,#9f,#00,#24,#00
	db #8e,#00,#24,#00,#b3,#00,#48,#00
	db #9f,#00,#24,#00,#77,#00,#12,#00
	db #7f,#00,#12,#00,#8e,#00,#24,#00
	db #7f,#00,#24,#00,#9f,#00,#24,#00
	db #8e,#00,#24,#00,#b3,#00,#48,#00
	db #ef,#00,#24,#00,#77,#00,#12,#00
	db #7f,#00,#12,#00,#8e,#00,#24,#00
	db #7f,#00,#24,#00,#9f,#00,#24,#00
	db #8e,#00,#24,#00,#b3,#00,#48,#00
	db #9f,#00,#24,#00,#b3,#00,#24,#00
	db #be,#00,#24,#00,#d5,#00,#24,#00
	db #9f,#00,#24,#00,#ef,#00,#24,#00
	db #3f,#01,#24,#00,#ef,#00,#24,#00
	db #d5,#00,#24,#00,#be,#00,#12,#00
	db #d5,#00,#12,#00,#ef,#00,#24,#00
	db #d5,#00,#24,#00,#3f,#01,#24,#00
	db #8e,#00,#12,#00,#9f,#00,#12,#00
	db #b3,#00,#24,#00,#9f,#00,#24,#00
	db #ef,#00,#24,#00,#ef,#00,#12,#00
	db #d5,#00,#12,#00,#be,#00,#24,#00
	db #d5,#00,#48,#00,#3f,#01,#24,#00
	db #3f,#01,#24,#00,#ef,#00,#24,#00
	db #d5,#00,#24,#00,#be,#00,#12,#00
	db #d5,#00,#12,#00,#ef,#00,#24,#00
	db #d5,#00,#24,#00,#3f,#01,#24,#00
	db #8e,#00,#12,#00,#9f,#00,#12,#00
	db #b3,#00,#24,#00,#9f,#00,#24,#00
	db #ef,#00,#24,#00,#ef,#00,#12,#00
	db #d5,#00,#12,#00,#be,#00,#24,#00
	db #d5,#00,#48,#00,#3f,#01,#24,#00
	db #b3,#00,#24,#00,#be,#00,#24,#00
	db #d5,#00,#24,#00,#9f,#00,#90,#00
	db #ef,#00,#ff
;
; #6820
; call #9bcf; init music 
; call #9d08; init music interrupt
; call #9d1b	; stop music interrupt
;
.music_info
	db "Spitfire 40 (1985)(Mirrorsoft)(Gaz)",0
	db "",0

	read "music_end.asm"
