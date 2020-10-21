; Music of Atlantis (1985)(Anirog Software)()()
; Ripped by Megachur the 12/09/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ATLANTIS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #8b20
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

;
.init_music
.play_music
;.l8b20
;
	ld a,#0f	; play/init
	ld hl,l8bea
	call #bcbc
	ld a,#01
	call #bcad
	and #07
	jr z,l8b86
.l8b31
	ld hl,(l8be6)
	ld a,(hl)
	inc hl
	ld (l8be6),hl
	cp #ff
	jr nz,l8b45
	ld hl,l8c65
	ld (l8be6),hl
	jr l8b31
.l8b45
	sla a
	ld e,a
	ld d,#00
	ld hl,l8c03
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l8bf4),de
	ld hl,(l8be6)
	ld a,(hl)
	inc hl
	ld (l8be6),hl
	push af
	and #80
	rrca
	rrca
	or #01
	ld (l8bf1),a
	pop af
	res 7,a
	ld e,a
	ld d,#00
	ld (l8bf8),de
	ld hl,(l8bf4)
	ld a,h
	or l
	jr nz,l8b7b
	ld (l8bf2),a
.l8b7b
	ld hl,l8bf1
	call #bcaa
	ld a,#0f
	ld (l8bf2),a
.l8b86
	ld a,#04
	call #bcad
	and #07
	ret z
	ld hl,(l8be8)
	ld a,(hl)
	inc hl
	ld (l8be8),hl
	cp #ff
	jr nz,l8ba2
	ld hl,l8e66
	ld (l8be8),hl
	jr l8b86
.l8ba2
	sla a
	ld e,a
	ld d,#00
	ld hl,l8c03
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l8bfd),de
	ld hl,(l8be8)
	ld a,(hl)
	inc hl
	ld (l8be8),hl
	push af
	and #80
	rrca
	rrca
	rrca
	rrca
	or #04
	ld (l8bfa),a
	pop af
	res 7,a
	ld e,a
	ld d,#00
	ld (l8c01),de
	ld hl,(l8bfd)
	ld a,h
	or l
	jr nz,l8bda
	ld (l8bfb),a
.l8bda
	ld hl,l8bfa
	call #bcaa
	ld a,#0f
	ld (l8bfb),a
	ret
.l8be8 equ $ + 2
.l8be6
	dw l8c65,l8e66
.l8bf1 equ $ + 7
.l8bea
	db #02,#03,#05,#01,#0f,#ff,#0f,#00
.l8bf8 equ $ + 6
.l8bf4 equ $ + 2
.l8bf2
	db #0f,#00,#00,#00,#00,#00,#00,#00
.l8c01 equ $ + 7
.l8bfd equ $ + 3
.l8bfb equ $ + 1
.l8bfa
	db #00,#0f,#00,#00,#00,#00,#00,#00
	db #00
.l8c03
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
	dw #0000
.l8c65
	db #28,#0f,#2a,#0f,#2b,#8f,#2a,#0f
	db #28,#0f,#26,#0f,#28,#8f,#26,#0f
	db #24,#0f,#23,#0f,#24,#8f,#23,#0f
	db #21,#0f,#1f,#0f,#21,#8f,#1f,#0f
	db #1e,#0f,#1c,#0f,#1a,#8f,#1c,#0f
	db #1e,#0f,#1f,#0f,#21,#0f,#23,#0f
	db #24,#0f,#26,#0f,#23,#9e,#1f,#1e
	db #1f,#9e,#30,#1e,#23,#9e,#23,#0f
	db #23,#0f,#23,#1e,#23,#0f,#23,#0f
	db #23,#1e,#1c,#1e,#1f,#9e,#23,#1e
	db #21,#1e,#21,#0f,#21,#0f,#21,#1e
	db #21,#0f,#21,#0f,#21,#1e,#1a,#1e
	db #1e,#9e,#21,#1e,#23,#1e,#23,#0f
	db #23,#0f,#23,#1e,#23,#0f,#23,#0f
	db #23,#9e,#25,#1e,#26,#1e,#28,#1e
	db #26,#9e,#23,#1e,#21,#9e,#1e,#1e
	db #1c,#bc,#1c,#3c,#1c,#9e,#1f,#1e
	db #1c,#1e,#18,#1e,#1c,#9e,#1f,#1e
	db #1c,#1e,#18,#1e,#1a,#9e,#1d,#1e
	db #1a,#1e,#17,#1e,#1a,#9e,#1d,#1e
	db #1a,#1e,#17,#1e,#1c,#9e,#1f,#1e
	db #1c,#1e,#18,#1e,#1c,#9e,#1f,#1e
	db #1c,#1e,#18,#1e,#1a,#9e,#1d,#1e
	db #1a,#1e,#17,#1e,#18,#bc,#18,#1e
	db #2b,#0f,#2a,#0f,#2b,#9e,#1f,#1e
	db #1f,#1e,#26,#0f,#24,#0f,#23,#0f
	db #26,#0f,#2b,#0f,#2a,#0f,#2b,#1e
	db #2a,#0f,#2b,#0f,#2d,#1e,#21,#1e
	db #21,#1e,#2d,#0f,#2b,#0f,#2a,#1e
	db #2b,#0f,#2d,#0f,#26,#1e,#28,#0f
	db #2a,#0f,#2b,#0f,#2a,#0f,#28,#0f
	db #26,#0f,#28,#0f,#26,#0f,#24,#0f
	db #23,#0f,#24,#0f,#23,#0f,#21,#0f
	db #1f,#0f,#21,#0f,#1f,#0f,#1e,#0f
	db #1c,#0f,#1a,#8f,#1c,#0f,#1e,#0f
	db #1f,#0f,#21,#0f,#23,#0f,#24,#0f
	db #26,#0f,#23,#9e,#1f,#1e,#1f,#1e
	db #2b,#0f,#2a,#0f,#23,#0f,#26,#0f
	db #2b,#0f,#26,#0f,#23,#0f,#26,#0f
	db #2b,#0f,#26,#0f,#28,#1e,#24,#1e
	db #24,#1e,#28,#0f,#26,#0f,#24,#8f
	db #28,#0f,#2d,#0f,#28,#0f,#24,#0f
	db #28,#0f,#2d,#0f,#28,#0f,#2a,#1e
	db #26,#1e,#26,#1e,#28,#0f,#2a,#0f
	db #2b,#8f,#2a,#0f,#28,#0f,#26,#0f
	db #28,#8f,#26,#0f,#24,#0f,#23,#0f
	db #24,#8f,#23,#0f,#21,#0f,#1f,#0f
	db #21,#8f,#1f,#0f,#1e,#0f,#1c,#0f
	db #1a,#8f,#1c,#0f,#1e,#0f,#1f,#0f
	db #21,#0f,#23,#0f,#24,#0f,#26,#0f
	db #26,#9e,#1f,#1e,#1f,#9e,#28,#0f
	db #2a,#0f,#2b,#9e,#1f,#1e,#1f,#1e
	db #26,#0f,#24,#0f,#23,#0f,#24,#0f
	db #2b,#0f,#2a,#0f,#2b,#1e,#2a,#0f
	db #2b,#0f,#2d,#9e,#21,#1e,#21,#1e
	db #2d,#0f,#2b,#0f,#2a,#8f,#2b,#0f
	db #2d,#1e,#26,#1e,#28,#0f,#2a,#0f
	db #2b,#0f,#2a,#0f,#28,#0f,#26,#0f
	db #28,#0f,#26,#0f,#24,#0f,#23,#0f
	db #24,#0f,#23,#0f,#21,#0f,#1f,#0f
	db #21,#0f,#1f,#0f,#1e,#0f,#1c,#0f
	db #1a,#0f,#1c,#0f,#1e,#0f,#1f,#0f
	db #21,#0f,#23,#0f,#24,#0f,#26,#0f
	db #23,#1e,#1f,#1e,#1f,#1e,#30,#1e
.l8e66 equ $ + 1
	db #ff,#13,#9e,#0c,#9e,#15,#9e,#09
	db #9e,#0e,#da,#13,#9e,#07,#9e,#10
	db #9e,#10,#8f,#17,#0f,#1c,#1e,#0e
	db #1e,#0e,#8f,#15,#0f,#1a,#1e,#10
	db #1e,#0e,#da,#07,#9e,#0e,#9e,#10
	db #bc,#10,#3c,#0c,#bc,#0c,#bc,#07
	db #bc,#07,#bc,#0c,#bc,#0c,#bc,#07
	db #bc,#0c,#bc,#0c,#1e,#07,#bc,#0b
	db #3c,#07,#3c,#0b,#3c,#09,#3c,#0c
	db #3c,#0e,#3c,#02,#3c,#07,#3c,#0c
	db #3c,#09,#3c,#06,#3c,#0e,#da,#13
	db #bc,#07,#3c,#13,#3c,#07,#3c,#0c
	db #5a,#15,#bc,#09,#3c,#0e,#5a,#13
	db #9e,#09,#9e,#15,#9e,#09,#9e,#0e
	db #da,#13,#9e,#07,#9e,#07,#9e,#0e
	db #9e,#15,#bc,#0e,#3c,#17,#0f,#15
	db #0f,#13,#0f,#12,#0f,#13,#0f,#12
	db #0f,#10,#0f,#0e,#0f,#10,#0f,#0e
	db #0f,#0c,#0f,#0b,#0f,#0c,#0f,#0b
	db #0f,#09,#0f,#07,#0f,#06,#3c,#02
	db #3c,#06,#3c,#07,#1e,#ff
;
.music_info
	db "Atlantis (1985)(Anirog Software)()",0
	db "",0

	read "music_end.asm"
