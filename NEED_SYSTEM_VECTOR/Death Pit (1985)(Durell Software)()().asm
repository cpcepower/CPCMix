; Music of Death Pit (1985)(Durell Software)()()
; Ripped by Megachur the 12/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DEATHPIT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #9858
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

	call #bca7		; init
	ld a,#01
	ld hl,l989c
	call #bcbc
	ld a,#02
	ld hl,l98ac
	call #bcbc
	ld a,#00
	ld (l98d7),a
	ld (l98d9),a
	inc a
	ld (l98d8),a
	ld hl,l99b8
	ld (l98da),hl
	ld a,#29
	ld (l98dc),a
	ld hl,l9a66		; set music interrupt
	ld b,#9f
	ld c,#ff
	ld de,l9920
	call #bcef
	ld hl,l9a60
	ld de,#0001
	ld bc,#0001
	call #bce9
	ret
.l989c
	db #01,#04,#fe,#08,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l98ac
	db #01,#64,#fd,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l98c3 equ $ + 7
.l98bf equ $ + 3
.l98bc
	db #01,#01,#00,#00,#00,#00,#0c,#00
.l98c5 equ $ + 1
	db #00,#02,#02,#00,#00,#00,#01,#0c
.l98ce equ $ + 2
	db #05,#00,#02,#00,#00,#00,#00,#00
.l98d9 equ $ + 5
.l98d8 equ $ + 4
.l98d7 equ $ + 3
	db #00,#73,#00,#00,#01,#00
.l98da
	dw l99b8
.l98dc
	db #29,#4e,#54,#3a,#44,#45,#46,#42
	db #09,#34,#31,#0d,#92,#01,#4f,#52
	db #47,#09,#33,#39,#32,#30,#30,#0d
	db #9a,#01,#45,#4e,#54,#09,#33,#39
	db #32,#30,#30,#0d,#9d,#01,#53,#4f
	db #44,#34,#3a,#50,#55,#53,#48,#09
	db #49,#58,#0d,#9e,#01,#4c,#44,#09
	db #41,#2c,#31,#0d,#9f,#01,#43,#41
	db #4c,#4c,#09,#23
.l9920		; play music interrupt
	push ix
	ld a,#01
	call #bcad
	and #07
	jp z,l99b5
	ld ix,(l98da)
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l98bf),hl
	ld l,(ix+#02)
	ld h,(ix+#03)
	ld a,#14
	cp l
	jr nz,l994b
	ld a,(l98d9)
	neg
	jr l9952
.l994b
	ld a,(l98d9)
	sla a
	neg
.l9952
	add l
	ld l,a
	ld (l98c3),hl
	ld a,(l98d7)
	inc a
	ld (l98d7),a
	cp #0f
	jr c,l9969
	ld a,#00
	ld (l98d7),a
	jr l996f
.l9969
	ld hl,l98c5
	call #bcaa
.l996f
	ld hl,l98bc
	call #bcaa
	ld hl,(l98da)
	ld bc,#0004
	add hl,bc
	ld (l98da),hl
	ld a,(l98dc)
	dec a
	ld (l98dc),a
	jr nz,l99b5
	ld hl,l99b8
	ld (l98da),hl
	ld a,#29
	ld (l98dc),a
	ld hl,l98ce
	call #bcaa
	ld a,(l98d9)
	inc a
	inc a
	ld (l98d9),a
	ld a,(l98d8)
	inc a
	ld (l98d8),a
	cp #07
	jr nz,l99b5
	ld a,#00
	ld (l98d9),a
	inc a
	ld (l98d8),a
.l99b5
	pop ix
	ret
.l99b8
	db #26,#01,#28,#00,#b8,#01,#28,#00
	db #26,#01,#28,#00,#4a,#01,#28,#00
	db #5d,#01,#14,#00,#4a,#01,#14,#00
	db #5d,#01,#14,#00,#26,#01,#14,#00
	db #b8,#01,#28,#00,#5d,#01,#28,#00
	db #88,#01,#28,#00,#b8,#01,#28,#00
	db #ee,#01,#14,#00,#b8,#01,#14,#00
	db #88,#01,#14,#00,#5d,#01,#14,#00
	db #4a,#01,#28,#00,#b8,#01,#28,#00
	db #88,#01,#14,#00,#5d,#01,#14,#00
	db #4a,#01,#14,#00,#5d,#01,#14,#00
	db #26,#01,#28,#00,#b8,#01,#28,#00
	db #26,#01,#28,#00,#4a,#01,#28,#00
	db #5d,#01,#14,#00,#4a,#01,#14,#00
	db #5d,#01,#14,#00,#26,#01,#14,#00
	db #b8,#01,#28,#00,#5d,#01,#28,#00
	db #88,#01,#28,#00,#b8,#01,#28,#00
	db #ee,#01,#14,#00,#b8,#01,#14,#00
	db #88,#01,#14,#00,#5d,#01,#14,#00
	db #5d,#01,#28,#00,#4a,#01,#28,#00
	db #26,#01,#28,#00,#26,#01,#28,#00
.l9a66 equ $ + 6
.l9a60
	db #00,#00,#01,#00,#01,#00,#00,#00
	db #1f,#00,#00,#00,#20,#99,#00,#00

;
.music_info
	db "Death Pit (1985)(Durell Software)()",0
	db "",0

	read "music_end.asm"
