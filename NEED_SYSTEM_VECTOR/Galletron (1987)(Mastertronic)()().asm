; Music of Galletron (1987)(Mastertronic)()()
; Ripped by Megachur the 15/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GALLETRO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6d9b
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

;
.init_music
;
	ld a,#01
	ld hl,l6e25
	call #bcbc
	ld a,#02
	ld hl,l6e40
	call #bcbc
	ld a,#03
	ld hl,l6e4a
	call #bcbc
	ld a,#04
	ld hl,l6e54
	call #bcbc
	ld a,#05
	ld hl,l6e2f
	call #bcbc
	ld a,#06
	ld hl,l6e36
	call #bcbc
	ld a,#07
	ld hl,l6e5e
	call #bcbc
	ld a,#08
	ld hl,l6e62
	call #bcbc
	ret
	ld a,#01
	ld hl,l6e66
	call #bcbf
	ld a,#02
	ld hl,l6e6d
	call #bcbf
	ld a,#03
	ld hl,l6e74
	call #bcbf
	ld a,#04
	ld hl,l6e7b
	call #bcbf
	ld a,#05
	ld hl,l6e82
	call #bcbf
	ld a,#06
	ld hl,l6e89
	call #bcbf
	ld a,#07
	ld hl,l6e90
	call #bcbf
	ld a,#08
	ld hl,l6e97
	call #bcbf
	ld a,#09
	ld hl,l6e9e
	call #bcbf
	ret
.l6e25
	db #03,#02,#01,#02,#06,#02,#02,#08
.l6e2f equ $ + 2
	db #01,#02,#02,#2a,#07,#18,#01,#08
.l6e36 equ $ + 1
	db #06,#03,#01,#11,#0a,#01,#f0,#03
.l6e40 equ $ + 3
	db #16,#06,#03,#03,#01,#01,#01,#0c
.l6e4a equ $ + 5
	db #02,#11,#00,#00,#ff,#03,#01,#01
.l6e54 equ $ + 7
	db #01,#01,#01,#01,#01,#02,#18,#03
	db #01,#05,#0f,#01,#fd,#09,#01,#05
.l6e62 equ $ + 5
.l6e5e equ $ + 1
	db #14,#01,#05,#09,#07,#01,#01,#0b
.l6e66 equ $ + 1
	db #09,#02,#27,#1c,#01,#27,#e4,#01
.l6e74 equ $ + 7
.l6e6d
	db #02,#01,#f2,#0b,#01,#0e,#0b,#02
.l6e7b equ $ + 6
	db #05,#e2,#01,#05,#1e,#01,#02,#06
.l6e82 equ $ + 5
	db #1a,#03,#06,#e6,#03,#02,#32,#1a
.l6e89 equ $ + 4
	db #03,#32,#e6,#03,#02,#17,#10,#01
.l6e90 equ $ + 3
	db #17,#f0,#01,#02,#06,#1c,#01,#06
.l6e97 equ $ + 2
	db #e4,#01,#02,#02,#e5,#01,#02,#1b
.l6e9e equ $ + 1
	db #01,#02,#26,#ec,#01,#26,#14,#01
.l6ea5
	db #02,#01,#01,#90,#01,#00,#07,#05
.l6eae equ $ + 1
	db #00,#02,#00,#01,#90,#01,#00,#0f
	db #0a,#00

	ld a,#02
	call #bcad
	bit 1,a
	jp nz,l6ec7
	bit 2,a
	jp nz,l6ec7
	ret
.l6ec7
	ld hl,l6ece
	call #bcaa
	ret
.l6ece
	db #02,#00,#02,#1e,#00,#09,#05,#05
	db #00
	ld hl,l6ede
	call #bcaa
	ret
.l6ede
	db #04,#02,#00,#14,#00,#01,#00,#1e
	db #01
	ld hl,l6eee
	call #bcaa
	ret
.l6eee
	db #02,#00,#06,#50,#00,#01,#07,#0a
	db #00
	ld hl,l6efe
	call #bcaa
	ret
.l6efe
	db #02,#00,#00,#a6,#04,#00,#07,#28
	db #00
	push iy
	push ix
	push hl
	push de
	push bc
	push af
	ld hl,l6f1e
	call #bcaa
	pop af
	pop bc
	pop de
	pop hl
	pop ix
	pop iy
	ret
.l6f1e
	db #82,#03,#00,#0a,#00,#01,#03,#28
	db #00
	ld hl,l6f2e
	call #bcaa
	ret
.l6f2e
	db #02,#04,#03,#c8,#00,#01,#00,#33
	db #00
	push iy
	push ix
	push hl
	push de
	push bc
	push af
	ld hl,l6f4e
	call #bcaa
	pop af
	pop bc
	pop de
	pop hl
	pop ix
	pop iy
	ret
.l6f4e
	db #01,#00,#04,#68,#01,#00,#07,#32
	db #00
	ld hl,l6f5e
	call #bcaa
	ret
.l6f5e
	db #82,#00,#05,#64,#00,#01,#0f,#00
	db #00
	ld hl,l6f6e
	call #bcaa
	ret
.l6f6e
	db #02,#07,#07,#6e,#00,#00,#0e,#0a
	db #00
	ld hl,l6f7e
	call #bcaa
	ret
.l6f7e
	db #84,#00,#09,#c8,#00,#00,#07,#0a
	db #00
	ld hl,l6f8e
	call #bcaa
	ret
.l6f8e
	db #04,#08,#08,#86,#01,#00,#0f,#04
	db #00
	ld a,#04
	call #bcad
	and #04
	ret z
	ld hl,l6fa6
	call #bcaa
	ret
.l6fa6
	db #04,#00,#00,#68,#01,#07,#0f,#02
	db #00
	call l6fc5
	ret z
	ld hl,l6ea5
	call #bcaa
	ret
	call l6fc5
	ret z
	ld hl,l6eae
	call #bcaa
	ret
.l6fc5
	ld a,#02
	call #bcad
	and #07
	ret
.l6fcf equ $ + 2
.l6fce equ $ + 1
.l6fcd
	db #00,#00,#21,#00,#00,#00,#00,#00
	db #07,#00,#00,#0c,#00,#00,#00,#00
	db #00,#07,#00,#00
.l6fe1
	ld a,(l6cbc)
	and a
	ret nz
	ld a,(l6fcd)
	cp #00
	call z,#bca7
	cp #82
	jp z,l704c
.l6ff3
	ld c,a
	ld b,#00
	inc a
	ld (l6fcd),a
	ld hl,l708e
	ld iy,l6fcf
	add hl,bc
	add hl,bc
	add hl,bc
	add hl,bc
	push hl
	pop ix
	ld a,#01
	ld (iy+#00),a
	ld a,(ix+#00)
	ld (iy+#03),a
	ld a,(ix+#01)
	ld (iy+#04),a
	ld a,(ix+#02)
	ld (iy+#07),a
	ld a,(ix+#03)
	ld (iy+#08),a
	push iy
	call l705c
	pop hl
	ret z
	push hl
	call #bcaa
	jp nc,l7053
	pop ix
	ld a,(ix+#03)
	and a
	ret z
	dec a
	dec a
	dec a
	ld (ix+#03),a
	ld a,#04
	ld (ix+#00),a
	push ix
	pop hl
	call #bcaa
	ret
.l704c
	xor a
	ld (l6fcd),a
	jp l6ff3
.l7053
	ld a,(l6fcd)
	dec a
	ld (l6fcd),a
	xor a
	ret
.l705c
	ld a,#01
	call #bcad
	and #07
	ret nz
	jp l7053
	call #bca7
	ld a,(l6cbc)
	xor #01
	ld (l6cbc),a
	xor a
	ld (l6fcd),a
	ld (l6fce),a
	ret
	push af		; play music interrupt ?
	push bc
	push de
	push hl
	push ix
	push iy
	call l6fe1	; play music ?
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l708e
	db #be,#00,#32,#00,#b3,#00,#32,#00
	db #be,#00,#32,#00,#b3,#00,#32,#00
	db #ef,#00,#32,#00,#d5,#00,#32,#00
	db #7f,#00,#32,#00,#be,#00,#32,#00
	db #d5,#00,#32,#00,#be,#00,#32,#00
	db #fd,#00,#32,#00,#ef,#00,#32,#00
	db #fd,#00,#32,#00,#1c,#01,#32,#00
	db #ef,#00,#32,#00,#fd,#00,#32,#00
	db #1c,#01,#32,#00,#1c,#01,#32,#00
	db #fd,#00,#32,#00,#7b,#01,#32,#00
	db #3f,#01,#32,#00,#fd,#00,#32,#00
	db #be,#00,#32,#00,#d5,#00,#32,#00
	db #be,#00,#32,#00,#1c,#01,#32,#00
	db #ef,#00,#32,#00,#be,#00,#32,#00
	db #8e,#00,#32,#00,#b3,#00,#32,#00
	db #8e,#00,#32,#00,#d5,#00,#32,#00
	db #b3,#00,#32,#00,#8e,#00,#32,#00
	db #d5,#00,#32,#00,#7f,#00,#32,#00
	db #fa,#01,#32,#00,#9f,#00,#32,#00
	db #7f,#00,#32,#00,#fa,#01,#32,#00
	db #b3,#00,#32,#00,#be,#00,#32,#00
	db #9f,#00,#32,#00,#ef,#00,#32,#00
	db #be,#00,#32,#00,#9f,#00,#32,#00
	db #1c,#01,#32,#00,#1c,#01,#32,#00
	db #ef,#00,#32,#00,#d5,#00,#32,#00
	db #be,#00,#32,#00,#b3,#00,#32,#00
	db #1c,#01,#32,#00,#fd,#00,#32,#00
	db #d5,#00,#32,#00,#be,#00,#32,#00
	db #b3,#00,#32,#00,#9f,#00,#32,#00
	db #fd,#00,#32,#00,#ef,#00,#32,#00
	db #be,#00,#32,#00,#b3,#00,#32,#00
	db #be,#00,#32,#00,#d5,#00,#32,#00
	db #ef,#00,#32,#00,#fd,#00,#32,#00
	db #d5,#00,#32,#00,#3f,#01,#32,#00
	db #fd,#00,#32,#00,#d5,#00,#32,#00
	db #be,#00,#32,#00,#d5,#00,#32,#00
	db #fd,#00,#32,#00,#be,#00,#32,#00
	db #fd,#00,#32,#00,#b3,#00,#32,#00
	db #fd,#00,#32,#00,#9f,#00,#32,#00
	db #fd,#00,#32,#00,#b3,#00,#32,#00
	db #fd,#00,#32,#00,#d5,#00,#32,#00
	db #b3,#00,#32,#00,#9f,#00,#32,#00
	db #be,#00,#32,#00,#d5,#00,#32,#00
	db #7f,#00,#32,#00,#ef,#00,#32,#00
	db #8e,#00,#32,#00,#7f,#00,#32,#00
	db #b3,#00,#32,#00,#d5,#00,#32,#00
	db #b3,#00,#32,#00,#7f,#00,#32,#00
	db #d5,#00,#32,#00,#ef,#00,#32,#00
	db #7f,#00,#32,#00,#8e,#00,#32,#00
	db #9f,#00,#32,#00,#8e,#00,#32,#00
	db #ef,#00,#32,#00,#fd,#00,#32,#00
	db #8e,#00,#32,#00,#9f,#00,#32,#00
	db #a9,#00,#32,#00,#9f,#00,#32,#00
	db #7f,#00,#32,#00,#1c,#01,#32,#00
	db #e1,#00,#32,#00,#a9,#00,#32,#00
	db #8e,#00,#32,#00,#1c,#01,#32,#00
	db #9f,#00,#32,#00,#b3,#00,#32,#00
	db #8e,#00,#32,#00,#d5,#00,#32,#00
	db #b3,#00,#32,#00,#1c,#01,#32,#00
	db #d5,#00,#32,#00,#fd,#00,#32,#00
	db #d5,#00,#32,#00,#66,#01,#32,#00
	db #d5,#00,#32,#00,#52,#01,#32,#00
	db #e1,#00,#32,#00,#d5,#00,#96,#00
	db #00,#00,#96,#00,#00,#00,#32,#00
	db #1c,#01,#32,#00,#fd,#00,#32,#00
	db #1c,#01,#32,#00,#fd,#00,#32,#00
	db #66,#01,#32,#00,#3f,#01,#32,#00
	db #52,#01,#32,#00,#1c,#01,#32,#00
	db #3f,#01,#32,#00,#1c,#01,#32,#00
	db #7b,#01,#32,#00,#66,#01,#32,#00
	db #52,#01,#32,#00,#aa,#01,#32,#00
	db #66,#01,#32,#00,#7b,#01,#32,#00
	db #aa,#01,#32,#00,#47
;
; #6030
; call #6d9b	; init music !
; call #6ddc
;
; #6cbc
.l6cbc
	db #00,#4f,#09,#08,#42
	db #01,#06,#00,#02,#00,#00,#01
;
.music_info
	db "Galletron (1987)(Mastertronic)()",0
	db "",0

	read "music_end.asm"
