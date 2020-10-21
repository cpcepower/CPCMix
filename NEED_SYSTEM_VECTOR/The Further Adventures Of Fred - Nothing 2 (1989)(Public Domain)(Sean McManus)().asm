; Music of The Further Adventures Of Fred - Nothing 2 (1989)(Public Domain)(Sean McManus)()
; Ripped by Megachur the 01/09/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THEFUAOF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8a96
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

	ld bc,l8a9f
	ld hl,l8ac8
	jp #bcd1

.l8a9f
	xor l
	adc d
	jp l8ad7
	jp l8ae6
	jp l8ace
	jp l8ad2
	db #4d,#55,#53,#49,#43,#4f,#ce,#4d
	db #55,#53,#49,#43,#4f,#46,#c6,#52
	db #45,#50,#4f,#ce,#52,#45,#50,#4f
.l8acc equ $ + 7
.l8ac8 equ $ + 3
	db #46,#c6,#00,#63,#84,#9f,#8a,#00
.l8ace equ $ + 1
.l8acd
	db #01,#3e,#01,#18,#01
.l8ad2
	xor a
	ld (l8acc),a
	ret
.l8ad7
	call l8af5
	ld hl,l8e1b
	ld b,#81
	ld de,l8b3c
	call #bcd7
	ret
.l8ae6
	ld hl,l8e1b
	call #bcdd
	call #bca7
	ld a,#01
	ld (l8acd),a
	ret
.l8af5
	xor a
	ld (l8acd),a
	call #bca7
	ld hl,l8c1b
	ld a,#01
	ld b,#0f
.l8b03
	push af
	push bc
	call #bcbc
	pop bc
	pop af
	inc a
	djnz l8b03
	ld hl,l8d0b
	ld a,#01
	ld b,#0f
.l8b14
	push af
	push bc
	call #bcbf
	pop bc
	pop af
	inc a
	djnz l8b14
.l8b1e
	ld ix,l8bec
	ld b,#03
.l8b24
	res 6,(ix+#00)
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#0b),l
	ld (ix+#0c),h
	ld de,#000d
	add ix,de
	djnz l8b24
	ret
.l8b3c
	push ix
	push iy
	ld ix,l8bec
	bit 6,(ix+#00)
	jr z,l8b66
	bit 6,(ix+#0d)
	jr z,l8b66
	bit 6,(ix+#1a)
	jr z,l8b66
	ld a,(l8acc)
	and a
	jr z,l8b61
	call l8b1e
	jr l8b66
.l8b61
	call l8ae6
	jr l8b89
.l8b66
	ld ix,l8bec
	ld b,#03
	ld a,#01
.l8b6e
	ld (ix+#00),a
	push bc
	push af
	call #bcad
	bit 6,a
	jr nz,l8b7f
	bit 7,a
	call z,l8b8e
.l8b7f
	ld bc,#000d
	add ix,bc
	pop af
	add a
	pop bc
	djnz l8b6e
.l8b89
	pop iy
	pop ix
	ret
.l8b8e
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	or (hl)
	dec hl
	ld a,(hl)
	jr nz,l8ba0
	set 6,(ix+#00)
	ret
.l8ba0
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
	ld hl,l8dfb
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
.l8bec
	db #41,#08,#08,#0e,#01,#02,#00,#90
	db #00,#24,#8e,#65,#8e,#42,#01,#01
	db #77,#00,#00,#00,#48,#00,#67,#8e
	db #8f,#8e,#44,#01,#01,#de,#01,#00
	db #00,#24,#00,#91,#8e,#b9,#8e,#20
.l8c1b equ $ + 7
	db #01,#d8,#00,#48,#00,#24,#00,#04
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
.l8d0b equ $ + 7
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
.l8dfb equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #00,#14,#00,#1f,#00,#0d,#00,#01
.l8e1b equ $ + 7
	db #00,#01,#00,#0f,#00,#0a,#00,#c1
	db #00,#00,#00,#00,#81,#3c,#8b,#07
	db #12,#00,#7e,#02,#62,#12,#00,#38
	db #02,#42,#12,#00,#10,#00,#0d,#12
	db #00,#b4,#00,#4b,#12,#00,#10,#00
	db #2d,#12,#00,#10,#00,#6d,#12,#00
	db #b4,#00,#2b,#12,#00,#10,#00,#6d
	db #12,#00,#84,#03,#6a,#12,#00,#00
	db #00,#0e,#12,#00,#10,#00,#6d,#12
	db #00,#b8,#01,#09,#90,#00,#0e,#01
	db #68,#00,#00,#48,#00,#be,#00,#51
	db #12,#00,#9f,#00,#11,#12,#00,#7f
	db #00,#51,#12,#00,#9f,#00,#11,#12
	db #00,#6a,#00,#51,#24,#00,#59,#00
	db #51,#24,#00,#7f,#00,#51,#48,#00
	db #77,#00,#51,#00,#00,#12,#00,#7e
	db #02,#37,#24,#00,#38,#02,#11,#24
	db #00,#fa,#01,#11,#24,#00,#de,#01
	db #31,#12,#00,#7e,#02,#31,#24,#00
	db #38,#02,#31,#24,#00,#fa,#01,#31
	db #24,#00,#de,#01,#31,#00,#00,#00
;
.music_info
	db "The Further Adventures Of Fred - Nothing 2 (1989)(Public Domain)(Sean McManus)",0
	db "",0

	read "music_end.asm"
