; Music of The Further Adventures Of Fred - Game Over (1989)(Public Domain)(Sean McManus)()
; Ripped by Megachur the 01/09/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THFAOFGO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8ebc
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

;
.init_music
;
	ld bc,l8ec5
	ld hl,l8eee
	jp #bcd1		; init music
.l8ec5
	dw l8ed3
	jp l8efd
	jp l8f0c
	jp l8ef4
	jp l8ef8
.l8ed3
	db #4d,#55,#53,#49,#43,#4f,#ce,#4d
	db #55,#53,#49,#43,#4f,#46,#c6,#52
	db #45,#50,#4f,#ce,#52,#45,#50,#4f
.l8ef2 equ $ + 7
.l8eee equ $ + 3
	db #46,#c6,#00,#c8,#8a,#c5,#8e,#00
.l8ef3
	db #01
.l8ef4
	ld a,#01
	jr l8ef9
.l8ef8
	xor a
.l8ef9
	ld (l8ef2),a
	ret
;
.stop_music
.l8efd
;
	call l8f1b
	ld hl,l9241
	ld b,#81
	ld de,l8f62
	call #bcd7
	ret
.l8f0c
	ld hl,l9241
	call #bcdd
	call #bca7
	ld a,#01
	ld (l8ef3),a
	ret
.l8f1b
	xor a
	ld (l8ef3),a
	call #bca7
	ld hl,l9041
	ld a,#01
	ld b,#0f
.l8f29
	push af
	push bc
	call #bcbc
	pop bc
	pop af
	inc a
	djnz l8f29
	ld hl,l9131
	ld a,#01
	ld b,#0f
.l8f3a
	push af
	push bc
	call #bcbf
	pop bc
	pop af
	inc a
	djnz l8f3a
.l8f44
	ld ix,l9012
	ld b,#03
.l8f4a
	res 6,(ix+#00)
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#0b),l
	ld (ix+#0c),h
	ld de,#000d
	add ix,de
	djnz l8f4a
	ret
.l8f62
	push ix
	push iy
	ld ix,l9012
	bit 6,(ix+#00)
	jr z,l8f8c
	bit 6,(ix+#0d)
	jr z,l8f8c
	bit 6,(ix+#1a)
	jr z,l8f8c
	ld a,(l8ef2)
	and a
	jr z,l8f87	; reset music
	call l8f44
	jr l8f8c
.l8f87
	call l8f0c
	jr l8faf
.l8f8c
	ld ix,l9012
	ld b,#03
	ld a,#01
.l8f94
	ld (ix+#00),a
	push bc
	push af
	call #bcad
	bit 6,a
	jr nz,l8fa5
	bit 7,a
	call z,l8fb4
.l8fa5
	ld bc,#000d
	add ix,bc
	pop af
	add a
	pop bc
	djnz l8f94
.l8faf
	pop iy
	pop ix
	ret
.l8fb4
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	or (hl)
	dec hl
	ld a,(hl)
	jr nz,l8fc6
	set 6,(ix+#00)
	ret
.l8fc6
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	push hl
	ld a,(hl)
	and #0f
	ld (ix+#01),a
	ld (ix+#02),a
	add a
	ld e,a
	ld d,#00
	ld hl,l9221
	add hl,de
	ld a,(hl)
	ld (ix+#05),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	pop hl
	ld a,(hl)
	and #70
	srl a
	or (ix+#00)
	ld (ix+#00),a
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	push ix
	push ix
	pop hl
	call #bcaa
	pop ix
	ret
.l9012
	db #41,#00,#00,#00,#00,#00,#00,#48
	db #00,#4a,#92,#26,#93,#42,#00,#00
	db #00,#00,#00,#00,#48,#00,#28,#93
	db #04,#94,#44,#00,#00,#00,#00,#00
	db #00,#48,#00,#06,#94,#e2,#94,#de
.l9041 equ $ + 7
	db #03,#96,#03,#48,#00,#48,#00,#04
	db #01,#0f,#01,#03,#ff,#01,#05,#00
	db #01,#0c,#ff,#05,#00,#00,#00,#02
	db #03,#03,#03,#02,#02,#06,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #03,#fb,#05,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #0f,#ff,#0a,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #04,#fe,#02,#04,#02,#02,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #0f,#ff,#03,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #0f,#01,#01,#0f,#ff,#05,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #01,#0f,#02,#05,#fd,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #01,#0f,#02,#05,#fd,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #01,#0f,#02,#05,#fd,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#03
	db #01,#0f,#01,#04,#fe,#02,#07,#ff
	db #04,#00,#00,#00,#00,#00,#00,#02
	db #07,#02,#01,#0e,#ff,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #01,#0f,#01,#0f,#ff,#02,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #01,#0f,#02,#05,#fd,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #01,#0f,#02,#05,#fd,#04,#00,#00
.l9131 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #07,#02,#01,#07,#fe,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #0f,#fe,#03,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#fe
	db #01,#4b,#01,#04,#19,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#fe
	db #01,#4b,#01,#04,#19,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #01,#9c,#01,#05,#19,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#fd
	db #01,#04,#02,#01,#f8,#02,#01,#04
	db #02,#00,#00,#00,#00,#00,#00,#fe
	db #04,#01,#01,#04,#ff,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#fe
	db #01,#4b,#01,#04,#19,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9221 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #00,#14,#00,#1f,#00,#0d,#00,#01
.l9241 equ $ + 7
	db #00,#01,#00,#0f,#00,#0a,#00,#e7
	db #00,#00,#00,#00,#81,#62,#8f,#07
	db #24,#00,#be,#00,#67,#12,#00,#8e
	db #00,#67,#12,#00,#59,#00,#67,#12
	db #00,#5f,#00,#67,#12,#00,#77,#00
	db #67,#24,#00,#6a,#00,#67,#12,#00
	db #8e,#00,#67,#12,#00,#be,#00,#67
	db #12,#00,#8e,#00,#67,#12,#00,#59
	db #00,#67,#12,#00,#5f,#00,#67,#12
	db #00,#77,#00,#67,#24,#00,#6a,#00
	db #67,#12,#00,#be,#00,#67,#12,#00
	db #8e,#00,#67,#12,#00,#59,#00,#67
	db #12,#00,#5f,#00,#67,#12,#00,#59
	db #00,#67,#12,#00,#5f,#00,#67,#12
	db #00,#59,#00,#67,#12,#00,#77,#00
	db #67,#12,#00,#8e,#00,#67,#12,#00
	db #b3,#00,#67,#12,#00,#59,#00,#67
	db #12,#00,#5f,#00,#67,#12,#00,#59
	db #00,#67,#12,#00,#6a,#00,#67,#12
	db #00,#59,#00,#67,#12,#00,#7f,#00
	db #67,#12,#00,#00,#00,#60,#12,#00
	db #00,#00,#60,#12,#00,#be,#00,#67
	db #24,#00,#8e,#00,#67,#12,#00,#00
	db #00,#60,#12,#00,#00,#00,#60,#12
	db #00,#be,#00,#67,#24,#00,#8e,#00
	db #67,#12,#00,#00,#00,#60,#12,#00
	db #00,#00,#60,#12,#00,#be,#00,#67
	db #12,#00,#8e,#00,#67,#12,#00,#be
	db #00,#67,#48,#00,#8e,#00,#67,#48
	db #00,#00,#00,#60,#00,#00,#24,#00
	db #7e,#02,#51,#12,#00,#de,#01,#51
	db #12,#00,#1c,#01,#51,#12,#00,#3f
	db #01,#51,#12,#00,#7b,#01,#51,#24
	db #00,#66,#01,#51,#12,#00,#de,#01
	db #51,#12,#00,#7e,#02,#51,#12,#00
	db #de,#01,#51,#12,#00,#1c,#01,#51
	db #12,#00,#3f,#01,#51,#12,#00,#7b
	db #01,#51,#24,#00,#66,#01,#51,#12
	db #00,#7e,#02,#51,#12,#00,#de,#01
	db #51,#12,#00,#cc,#02,#51,#12,#00
	db #7e,#02,#51,#12,#00,#cc,#02,#51
	db #12,#00,#7e,#02,#51,#12,#00,#cc
	db #02,#51,#12,#00,#de,#01,#51,#12
	db #00,#de,#01,#51,#12,#00,#38,#02
	db #51,#12,#00,#1c,#01,#57,#12,#00
	db #3f,#01,#57,#12,#00,#1c,#01,#57
	db #12,#00,#66,#01,#57,#12,#00,#1c
	db #01,#57,#12,#00,#aa,#01,#57,#12
	db #00,#7e,#02,#57,#12,#00,#fa,#01
	db #57,#12,#00,#00,#00,#50,#24,#00
	db #00,#00,#50,#12,#00,#7e,#02,#57
	db #12,#00,#fa,#01,#57,#12,#00,#00
	db #00,#50,#24,#00,#00,#00,#50,#12
	db #00,#00,#00,#50,#12,#00,#00,#00
	db #50,#12,#00,#00,#00,#50,#12,#00
	db #00,#00,#50,#12,#00,#7e,#02,#57
	db #48,#00,#fa,#01,#57,#48,#00,#00
	db #00,#50,#00,#00,#24,#00,#00,#00
	db #30,#12,#00,#00,#00,#30,#12,#00
	db #00,#00,#30,#12,#00,#00,#00,#30
	db #12,#00,#00,#00,#30,#24,#00,#00
	db #00,#30,#12,#00,#00,#00,#30,#12
	db #00,#00,#00,#30,#12,#00,#00,#00
	db #30,#12,#00,#00,#00,#30,#12,#00
	db #00,#00,#30,#12,#00,#00,#00,#30
	db #24,#00,#00,#00,#30,#12,#00,#00
	db #00,#30,#12,#00,#00,#00,#30,#12
	db #00,#00,#00,#30,#12,#00,#00,#00
	db #30,#12,#00,#00,#00,#30,#12,#00
	db #00,#00,#30,#12,#00,#00,#00,#30
	db #12,#00,#00,#00,#30,#12,#00,#00
	db #00,#30,#12,#00,#00,#00,#30,#12
	db #00,#00,#00,#30,#12,#00,#00,#00
	db #30,#12,#00,#00,#00,#30,#12,#00
	db #00,#00,#30,#12,#00,#00,#00,#30
	db #12,#00,#00,#00,#30,#12,#00,#00
	db #00,#30,#12,#00,#00,#00,#30,#12
	db #00,#00,#00,#30,#24,#00,#00,#00
	db #30,#12,#00,#00,#00,#30,#12,#00
	db #00,#00,#30,#12,#00,#00,#00,#30
	db #24,#00,#00,#00,#30,#12,#00,#7b
	db #01,#37,#12,#00,#3f,#01,#37,#12
	db #00,#00,#00,#30,#12,#00,#00,#00
	db #30,#12,#00,#7b,#01,#37,#48,#00
	db #3f,#01,#37,#48,#00,#00,#00,#30
	db #00,#00,#00

;
.music_info
	db "The Further Adventures Of Fred - Game Over (1989)(Public Domain)(Sean McManus)",0
	db "",0

	read "music_end.asm"
