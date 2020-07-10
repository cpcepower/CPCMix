; Music of Kong Strikes Back (1985)(Ocean Software)(Martin Galway)()
; Ripped by Megachur the 02/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "KONGSTRB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #3200

	read "music_header.asm"

.l3200
	db #00,#09,#32,#12,#32,#1b,#32,#24
	db #32,#32,#00,#2d,#32,#30,#00,#45
	db #32,#0f,#32,#38,#2d,#32,#30,#00
	db #3c,#32,#1f,#1e,#38,#57,#32,#14
	db #00,#4e,#32,#00,#1e,#00,#6f,#32
	db #64,#00,#66,#32,#05,#02,#02,#02
	db #02,#05,#00,#05,#00,#05,#00,#05
	db #00,#00,#01,#81,#02,#01,#14,#0a
	db #03,#0f,#05,#32,#01,#02,#02,#0a
	db #0a,#03,#0f,#05,#1e,#01,#04,#01
	db #05,#0a,#0a,#0f,#05,#05,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#03,#02
	db #07,#0a,#06,#0f,#06,#0a,#01,#01
	db #01,#01,#64,#0a,#00,#0a,#00,#0a
	db #00,#0a,#00,#01,#01,#81,#8e,#58
	db #36,#8a,#46,#36,#88,#28,#36,#84
	db #be,#35,#2b,#01,#2d,#01,#2e,#01
	db #2f,#02,#26,#01,#2b,#01,#2d,#01
	db #2f,#01,#32,#01,#30,#01,#2f,#01
	db #2d,#01,#30,#01,#2f,#01,#2d,#01
	db #2b,#01,#2a,#01,#28,#01,#26,#02
	db #28,#01,#2a,#01,#2b,#01,#2d,#02
	db #28,#01,#2a,#01,#2b,#01,#2d,#01
	db #2f,#01,#2b,#01,#2d,#01,#2a,#01
	db #28,#01,#26,#05,#32,#01,#31,#01
	db #32,#04,#2f,#02,#30,#08,#2d,#01
	db #2c,#01,#2d,#04,#29,#02,#2a,#05
	db #84,#be,#35,#2f,#01,#2e,#01,#2d
	db #01,#2b,#05,#2b,#03,#2d,#06,#26
	db #01,#32,#01,#2f,#01,#2d,#01,#2b
	db #01,#28,#01,#26,#01,#26,#03,#28
	db #06,#26,#01,#28,#01,#29,#01,#2a
	db #01,#2d,#01,#2f,#01,#2d,#01,#2a
	db #01,#29,#01,#2a,#01,#2d,#01,#34
	db #01,#32,#01,#30,#01,#2d,#01,#2a
	db #01,#29,#01,#28,#01,#26,#02,#28
	db #01,#2a,#02,#2b,#01,#2a,#01,#2b
	db #01,#2d,#01,#2f,#01,#32,#01,#34
	db #01,#32,#01,#26,#01,#27,#01,#28
	db #01,#29,#01,#2a,#01,#2b,#01,#2c
	db #01,#2d,#01,#2b,#03,#2d,#06,#26
	db #01,#32,#01,#2f,#01,#2d,#01,#2b
	db #01,#28,#01,#26,#01,#24,#03,#26
	db #02,#24,#03,#25,#01,#25,#02,#26
	db #02,#25,#03,#30,#01,#28,#01,#2b
	db #01,#30,#01,#34,#01,#32,#01,#30
	db #01,#32,#01,#2f,#01,#23,#01,#26
	db #01,#2b,#01,#28,#01,#2c,#01,#2f
	db #01,#34,#01,#2d,#01,#26,#01,#30
	db #01,#2a,#01,#32,#01,#30,#01,#2f
	db #01,#2d,#01,#2b,#05,#86,#87,#32
	db #8e,#58,#36,#8a,#4f,#36,#88,#37
	db #36,#68,#03,#92,#03,#13,#02,#17
	db #02,#0e,#02,#12,#02,#13,#02,#17
	db #02,#0e,#02,#17,#02,#94,#15,#02
	db #19,#02,#19,#02,#1c,#02,#1a,#02
	db #1a,#02,#1a,#02,#0e,#02,#13,#02
	db #17,#02,#17,#02,#1a,#02,#18,#02
	db #1c,#02,#1c,#02,#1f,#02,#11,#02
	db #15,#02,#15,#02,#18,#03,#1a,#02
	db #18,#01,#17,#02,#15,#02,#13,#02
	db #17,#02,#0e,#02,#12,#02,#13,#02
	db #17,#02,#0e,#02,#17,#02,#13,#02
	db #17,#02,#0e,#02,#12,#02,#1a,#01
	db #1c,#01,#1e,#01,#1f,#03,#1a,#02
	db #13,#02,#17,#02,#0e,#02,#17,#02
	db #13,#02,#17,#02,#10,#02,#0f,#02
	db #92,#04,#0e,#02,#12,#02,#09,#02
	db #12,#02,#94,#13,#02,#17,#02,#0e
	db #02,#17,#02,#0e,#01,#0f,#01,#10
	db #01,#11,#01,#12,#01,#13,#01,#14
	db #01,#15,#01,#13,#02,#17,#02,#0e
	db #02,#17,#02,#13,#02,#17,#02,#13
	db #02,#17,#02,#18,#02,#1c,#02,#13
	db #02,#1c,#02,#15,#02,#19,#02,#10
	db #02,#19,#02,#18,#02,#1c,#02,#13
	db #02,#1c,#02,#13,#02,#17,#02,#10
	db #02,#14,#02,#15,#02,#18,#02,#0e
	db #02,#12,#02,#13,#02,#0e,#02,#07
	db #04,#86,#ab,#33,#8e,#58,#36,#8a
	db #4f,#36,#88,#37,#36,#84,#f3,#35
	db #2b,#01,#2d,#01,#1a,#01,#2f,#02
	db #26,#01,#1a,#01,#2d,#01,#2f,#01
	db #32,#01,#1a,#01,#2f,#01,#2d,#01
	db #30,#01,#15,#01,#2d,#01,#2b,#01
	db #2a,#01,#1a,#01,#26,#02,#28,#01
	db #1a,#01,#2b,#01,#2d,#02,#1c,#01
	db #2a,#01,#2b,#01,#2d,#01,#1c,#01
	db #2b,#01,#21,#01,#2a,#01,#23,#01
	db #26,#01,#24,#01,#28,#01,#26,#01
	db #24,#01,#88,#28,#36,#8a,#46,#36
	db #35,#01,#34,#01,#35,#04,#32,#02
	db #34,#08,#33,#01,#32,#01,#33,#04
	db #30,#02,#32,#05,#88,#37,#36,#8a
	db #4f,#36,#84,#f3,#35,#32,#01,#31
	db #01,#30,#01,#2f,#06,#68,#0b,#2b
	db #02,#2d,#06,#26,#01,#32,#01,#2f
	db #01,#2d,#01,#2b,#01,#28,#01,#26
	db #01,#26,#03,#28,#06,#26,#01,#28
	db #01,#29,#01,#2a,#01,#2d,#01,#2f
	db #01,#2d,#01,#2a,#01,#29,#01,#2a
	db #01,#2d,#01,#34,#01,#32,#01,#30
	db #01,#2d,#01,#2a,#01,#29,#01,#28
	db #01,#26,#02,#28,#01,#2a,#02,#2b
	db #01,#2a,#01,#2b,#01,#2d,#01,#2f
	db #01,#32,#01,#34,#01,#32,#01,#26
	db #01,#27,#01,#28,#01,#29,#01,#2a
	db #01,#2b,#01,#2c,#01,#2d,#01,#2b
	db #03,#2d,#06,#26,#01,#32,#01,#2f
	db #01,#2d,#01,#2b,#01,#28,#01,#26
	db #01,#24,#03,#26,#02,#24,#03,#25
	db #01,#25,#02,#26,#02,#25,#03,#30
	db #01,#28,#01,#2b,#01,#30,#01,#34
	db #01,#32,#01,#30,#01,#32,#01,#2f
	db #01,#23,#01,#26,#01,#2b,#01,#28
	db #01,#2c,#01,#2f,#01,#34,#01,#2d
	db #01,#26,#01,#30,#01,#2a,#01,#32
	db #01,#30,#01,#2f,#01,#2d,#01,#2b
	db #04,#68,#0b,#86,#8d,#34,#26,#01
	db #2b,#01,#2d,#01,#2f,#01,#2b,#01
	db #26,#01,#23,#01,#2d,#01,#2a,#01
	db #26,#01,#21,#01,#26,#01,#25,#01
	db #24,#01,#23,#02,#24,#01,#26,#01
	db #24,#01,#26,#01,#2b,#01,#34,#01
	db #32,#01,#26,#01,#2a,#01,#32,#01
	db #30,#01,#82,#26,#01,#2b,#01,#2d
	db #01,#2f,#01,#2b,#01,#1a,#01,#23
	db #01,#2d,#01,#2a,#01,#15,#01,#21
	db #01,#26,#01,#25,#01,#1a,#01,#23
	db #02,#24,#01,#1a,#01,#24,#01,#26
	db #01,#2b,#01,#1a,#01,#32,#01,#26
	db #01,#2a,#01,#15,#01,#30,#01,#82
	db #02,#04,#01,#01,#01,#00,#ff,#ff
	db #01,#00,#01,#00,#0e,#01,#01,#01
	db #01,#01,#05,#01,#00,#01,#00,#01
	db #00,#01,#00,#0f,#02,#81,#01,#01
	db #0a,#0d,#00,#0f,#05,#50,#01,#01
	db #01,#08,#0d,#00,#0f,#0a,#14,#01
	db #08,#10,#18,#20,#28,#30,#38,#40
	db #48,#50,#04,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l380f equ $ + 7
.l380e equ $ + 6
.l380d equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#0a,#0c
.l381c equ $ + 7
.l381b equ $ + 6
.l3819 equ $ + 4
.l3815
	db #01,#0f,#04,#28,#01,#01,#ab,#00
.l3823 equ $ + 6
.l3820 equ $ + 3
	db #00,#00,#00,#00,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3860 equ $ + 5
	db #00,#00,#01,#7e,#32,#5c,#38,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3881 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00
.l3882
	ld (l3f32),sp
	ld h,#38
	ld l,#1a
	dec (hl)
	jr nz,l38d2
	ld a,(l3819)
	ld (hl),a
	ld sp,l3815
	pop de
	pop bc
	ld l,#1b
	ld l,(hl)
	jp (hl)
	ld a,e
	sub c
	ld e,a
	cp d
	jr nc,l38bd
	ld l,#14
	ld e,(hl)
	ld l,#bd
	jp (hl)
	ld a,e
	sub c
	ld e,a
	jr nc,l38cc
	ld e,#00
	ld a,#cc
	jr l38c9
	ld a,e
	add c
	ld e,a
	cp d
	jr c,l38bd
	ld l,#11
	ld c,(hl)
	ld l,#9a
	ld e,d
.l38bd
	djnz l38c8
	ld l,#12
	ld c,(hl)
	inc l
	ld b,(hl)
	inc l
	ld e,(hl)
	ld l,#a6
.l38c8
	ld a,l
.l38c9
	ld (l381b),a
.l38cc
	push bc
	push de
	ld sp,(l3f32)
.l38d2
	ld c,#08
	ld l,#15
	ld e,(hl)
	call l3bb6
	ld l,#0c
	ld a,(hl)
	or a
	jr z,l38e3
	dec (hl)
	jr nz,l3920
.l38e3
	ld l,#22
	dec (hl)
	jr nz,l3920
	ld a,(l380d)
	ld (hl),a
	ld sp,l381c
	pop bc
	pop de
	pop hl
	inc b
	dec b
	jr z,l391d
	add hl,de
	djnz l391d
	dec c
	jp p,l390b
	ld c,#03
	ld a,(l380e)
	or a
	jr z,l391d
	jp p,l390b
	ld hl,(l380f)
.l390b
	ld b,#38
	ld a,(bc)
	push af
	ld a,c
	ld d,c
	add a
	add #04
	ld c,a
	ld a,(bc)
	ld e,a
	inc bc
	ld a,(bc)
	ld c,d
	ld d,a
	pop af
	ld b,a
.l391d
	push hl
	push de
	push bc
.l3920
	ld c,#00
	ld sp,(l3f32)
	ld hl,(l3820)
	call l3bb0
	ld d,#38
	ld e,#81
	ld a,(de)
	or a
	jp nz,l3a86
	ld sp,(l3860)
	call l3e13
	ld (l3860),sp
	ld sp,(l3f32)
	ld e,#80
	ex de,hl
	dec (hl)
	jp p,l3a86
	inc (hl)
	jp nc,l3a86
	ld a,#00
	ld e,#38
	ld hl,l3823
	call l3b5c
	jp l3a86
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3a0f equ $ + 3
.l3a0e equ $ + 2
	db #00,#00,#00,#00,#01,#01,#01,#0a
.l3a1b equ $ + 7
.l3a19 equ $ + 5
.l3a15 equ $ + 1
	db #0c,#01,#0f,#04,#28,#01,#01,#ab
.l3a23 equ $ + 7
.l3a20 equ $ + 4
.l3a1c
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3a60 equ $ + 4
	db #00,#01,#a0,#33,#5c,#3a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l3a86
	ld h,#3a
	ld l,#1a
	dec (hl)
	jr nz,l3ad2
	ld a,(l3a19)
	ld (hl),a
	ld sp,l3a15
	pop de
	pop bc
	ld l,#1b
	ld l,(hl)
	jp (hl)
	ld a,e
	sub c
	ld e,a
	cp d
	jr nc,l3abd
	ld l,#14
	ld e,(hl)
	ld l,#bd
	jp (hl)
	ld a,e
	sub c
	ld e,a
	jr nc,l3acc
	ld e,#00
	ld a,#cc
	jr l3ac9
	ld a,e
	add c
	ld e,a
	cp d
	jr c,l3abd
	ld l,#11
	ld c,(hl)
	ld l,#9a
	ld e,d
.l3abd
	djnz l3ac8
	ld l,#12
	ld c,(hl)
	inc l
	ld b,(hl)
	inc l
	ld e,(hl)
	ld l,#a6
.l3ac8
	ld a,l
.l3ac9
	ld (l3a1b),a
.l3acc
	push bc
	push de
	ld sp,(l3f32)
.l3ad2
	ld c,#09
	ld l,#15
	ld e,(hl)
	call l3bb6
	ld l,#0c
	ld a,(hl)
	or a
	jr z,l3ae3
	dec (hl)
	jr nz,l3b20
.l3ae3
	ld l,#22
	dec (hl)
	jr nz,l3b20
	ld a,(l380d)
	ld (hl),a
	ld sp,l3a1c
	pop bc
	pop de
	pop hl
	inc b
	dec b
	jr z,l3b1d
	add hl,de
	djnz l3b1d
	dec c
	jp p,l3b0b
	ld c,#03
	ld a,(l3a0e)
	or a
	jr z,l3b1d
	jp p,l3b0b
	ld hl,(l3a0f)
.l3b0b
	ld b,#3a
	ld a,(bc)
	push af
	ld a,c
	add a
	add #04
	ld d,c
	ld c,a
	ld a,(bc)
	ld e,a
	inc bc
	ld a,(bc)
	ld c,d
	ld d,a
	pop af
	ld b,a
.l3b1d
	push hl
	push de
	push bc
.l3b20
	ld c,#02
	ld sp,(l3f32)
	ld hl,(l3a20)
	call l3bb0
	ld d,#3a
	ld e,#81
	ld a,(de)
	or a
	jp nz,l3c86
	ld sp,(l3a60)
	call l3e13
	ld (l3a60),sp
	ld sp,(l3f32)
	ld e,#80
	ex de,hl
	dec (hl)
	jp p,l3c86
	inc (hl)
	jp nc,l3c86
	ld a,#01
	ld e,#38
	ld hl,l3a23
	call l3b5c
	jp l3c86
.l3b5c
	ld d,a
	push de
	add a
	or #38
	ld d,a
	ld e,#00
	ld bc,#001a
	push de
	pop ix
	ldir
	dec hl
	ldi
	ex de,hl
	ld (hl),#b1
	inc hl
	ld (hl),#04
	inc hl
	ld a,(ix+#03)
	ld (hl),a
	inc hl
	ld a,(ix+#0a)
	ld (hl),a
	inc hl
	ld a,(ix+#0b)
	ld (hl),a
	inc hl
	ld a,(ix+#0f)
	ld (hl),a
	inc hl
	ld a,(ix+#10)
	ld (hl),a
	ld a,(ix+#0d)
	ld (ix+#22),a
	pop bc
	inc b
	ld a,#09
	rra
.l3b99
	rla
	djnz l3b99
	ld hl,l3baf
	ld d,a
	cpl
	and (hl)
	and #3f
	ld b,a
	ld a,d
	and c
	or b
	ld (hl),a
	ld e,a
	ld c,#07
	jp l3bb6
.l3baf
	ccf
.l3bb0
	ld e,l
	call l3bb6
	ld e,h
	inc c
.l3bb6
	ld b,#f4
	out (c),c
	exx
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	nop
	nop
	out (c),c
	exx
	out (c),e
	exx
	add a
	out (c),a
	nop
	nop
	out (c),c
	exx
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3c0f equ $ + 2
.l3c0e equ $ + 1
.l3c0d
	db #00,#00,#00,#01,#01,#01,#0a,#0c
.l3c1c equ $ + 7
.l3c1b equ $ + 6
.l3c19 equ $ + 4
.l3c15
	db #01,#0f,#04,#28,#01,#01,#ab,#00
.l3c23 equ $ + 6
.l3c20 equ $ + 3
	db #00,#00,#00,#00,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3c60 equ $ + 3
	db #01,#84,#34,#5c,#3c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l3c86
	ld h,#3c
	ld l,#1a
	dec (hl)
	jr nz,l3cd2
	ld a,(l3c19)
	ld (hl),a
	ld sp,l3c15
	pop de
	pop bc
	ld l,#1b
	ld l,(hl)
	jp (hl)
	ld a,e
	sub c
	ld e,a
	cp d
	jr nc,l3cbd
	ld l,#14
	ld e,(hl)
	ld l,#bd
	jp (hl)
	ld a,e
	sub c
	ld e,a
	jr nc,l3ccc
	ld e,#00
	ld a,#cc
	jr l3cc9
	ld a,e
	add c
	ld e,a
	cp d
	jr c,l3cbd
	ld l,#11
	ld c,(hl)
	ld l,#9a
	ld e,d
.l3cbd
	djnz l3cc8
	ld l,#12
	ld c,(hl)
	inc l
	ld b,(hl)
	inc l
	ld e,(hl)
	ld l,#a6
.l3cc8
	ld a,l
.l3cc9
	ld (l3c1b),a
.l3ccc
	push bc
	push de
	ld sp,(l3f32)
.l3cd2
	ld c,#0a
	ld l,#15
	ld e,(hl)
	call l3bb6
	ld l,#0c
	ld a,(hl)
	or a
	jr z,l3ce3
	dec (hl)
	jr nz,l3d20
.l3ce3
	ld l,#22
	dec (hl)
	jr nz,l3d20
	ld a,(l3c0d)
	ld (hl),a
	ld sp,l3c1c
	pop bc
	pop de
	pop hl
	inc b
	dec b
	jr z,l3d1d
	add hl,de
	djnz l3d1d
	dec c
	jp p,l3d0b
	ld c,#03
	ld a,(l3c0e)
	or a
	jr z,l3d1d
	jp p,l3d0b
	ld hl,(l3c0f)
.l3d0b
	ld b,#3c
	ld a,(bc)
	push af
	ld a,c
	add a
	add #04
	ld d,c
	ld c,a
	ld a,(bc)
	ld e,a
	inc bc
	ld a,(bc)
	ld c,d
	ld d,a
	pop af
	ld b,a
.l3d1d
	push hl
	push de
	push bc
.l3d20
	ld c,#04
	ld sp,(l3f32)
	ld hl,(l3c20)
	call l3bb0
	ld d,#3c
	ld e,#81
	ld a,(de)
	or a
	jp nz,l3d5c
	ld sp,(l3c60)
	call l3e13
	ld (l3c60),sp
	ld sp,(l3f32)
	ld e,#80
	ex de,hl
	dec (hl)
	jp p,l3d5c
	inc (hl)
	jp nz,l3d5c
	jp nc,l3d5c
	ld a,#02
	ld e,#38
	ld hl,l3c23
	call l3b5c
.l3d5c
	ld hl,l3200
	ld a,(hl)
	or a
	ret z
	jp p,l3d80
	inc a
	ld (hl),#00
	ld hl,l3881
	ld (hl),a
	inc h
	inc h
	ld (hl),a
	inc h
	inc h
	ld (hl),a
	ld h,#38
	ld l,#1b
	ld a,#ab
	ld (hl),a
	inc h
	inc h
	ld (hl),a
	inc h
	inc h
	ld (hl),a
	ret
.l3d80
	and #03
	ld a,#02
	ld e,a
	ld a,(hl)
	ld (hl),#00
	ld hl,#31ff
	and #fc
	srl a
	add l
	ld l,a
	jr nc,l3d94
	inc h
.l3d94
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,e
	add a
	or #38
	ld b,a
	ld c,#80
	ld a,(hl)
	ld (bc),a
	push bc
	inc hl
	ld a,e
	ld e,(hl)
	inc hl
	push hl
	ld b,a
	ld c,e
	inc b
	ld a,#09
	rra
.l3dad
	rla
	djnz l3dad
	ld hl,l3baf
	ld d,a
	cpl
	and (hl)
	and #3f
	ld b,a
	ld a,d
	and c
	or b
	ld (hl),a
	ld e,a
	ld c,#07
	call l3bb6
	pop hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex (sp),hl
	ex de,hl
	ld bc,#000f
	ld e,#00
	push de
	pop ix
	ldir
	pop hl
	ldi
	ldi
	ld a,(hl)
	inc hl
	push hl
	ld h,(hl)
	ld l,a
	ld bc,#0009
	ldir
	dec hl
	ldi
	ex de,hl
	ld (hl),#b1
	inc hl
	ld (hl),#04
	inc hl
	ld a,(ix+#03)
	ld (hl),a
	inc hl
	ld a,(ix+#0a)
	ld (hl),a
	inc hl
	ld a,(ix+#0b)
	ld (hl),a
	inc hl
	ld a,(ix+#0f)
	ld (hl),a
	inc hl
	ld a,(ix+#10)
	ld (hl),a
	ld a,(ix+#0d)
	ld (ix+#22),a
	pop hl
	inc hl
	ld e,(hl)
	ld c,#06
	jp l3bb6
.l3e13
	pop ix
	pop bc
	dec b
	jp nz,l3f2e
	pop hl
.l3e1b
	ld a,(hl)
	inc hl
	add a
	jp nc,l3ef3
	jp nz,l3e2d
	ld e,#81
	ld a,#ff
	ld (de),a
	push hl
	jp l3f2e
.l3e2d
	srl a
	srl a
	dec a
	jr nz,l3e3b
	pop hl
	dec c
	jp m,#4a39
	jr l3e1b
.l3e3b
	dec a
	jr nz,l3e4f
	inc c
	ld a,c
	cp #10
	jp nc,#4a39
	ld e,(hl)
	inc hl
	ld a,d
	ld d,(hl)
	inc hl
	push hl
	ex de,hl
	ld d,a
	jr l3e1b
.l3e4f
	dec a
	jr nz,l3e5a
	ld e,(hl)
	inc hl
	ld a,d
	ld d,(hl)
	ex de,hl
	ld d,a
	jr l3e1b
.l3e5a
	dec a
	jr nz,l3e72
	ld e,(hl)
	inc hl
	ld a,d
	ld d,(hl)
	inc hl
	push hl
	ld h,a
	ld l,#23
	ex de,hl
	ld b,#0f
.l3e69
	ld a,(hl)
	ld (de),a
	inc hl
	inc de
	djnz l3e69
	pop hl
	jr l3e1b
.l3e72
	dec a
	jr nz,l3e8a
	ld e,(hl)
	inc hl
	ld a,d
	ld d,(hl)
	inc hl
	push hl
	ld l,#34
	ld h,a
	ex de,hl
	ld b,#09
.l3e81
	ld a,(hl)
	ld (de),a
	inc hl
	inc de
	djnz l3e81
	pop hl
	jr l3e1b
.l3e8a
	dec a
	jr nz,l3ea3
	ld e,(hl)
	inc hl
	ld a,d
	ld d,(hl)
	inc hl
	push hl
	ld l,#23
	ld h,a
	ex de,hl
	ld b,#1a
.l3e99
	ld a,(hl)
	ld (de),a
	inc hl
	inc de
	djnz l3e99
	pop hl
	jp l3e1b
.l3ea3
	dec a
	jr nz,l3ebc
	ld e,(hl)
	inc hl
	ld a,d
	ld d,(hl)
	inc hl
	push hl
	ld l,#62
	ld h,a
	ex de,hl
	ld b,#20
.l3eb2
	ld a,(hl)
	ld (de),a
	inc hl
	inc de
	djnz l3eb2
	pop hl
	jp l3e1b
.l3ebc
	dec a
	jr nz,l3ec5
	ld a,(hl)
	ld (de),a
	inc hl
	jp l3e1b
.l3ec5
	dec a
	jr nz,l3ed8
	ld a,(hl)
	inc hl
	push hl
	push af
	ld a,c
	add #04
	ld c,a
	cp #10
	jp nc,#4a39
	jp l3e1b
.l3ed8
	dec a
	jr nz,l3ef0
	pop af
	dec a
	jr z,l3ee5
	pop hl
	push hl
	push af
	jp l3e1b
.l3ee5
	pop af
	ld a,c
	sub #04
	ld c,a
	jp m,#4a39
	jp l3e1b
.l3ef0
	jp #4a39
.l3ef3
	cp #d0
	jr c,l3f0d
	jr nz,l3f05
.l3ef9
	ld a,(hl)
	inc hl
	add #61
	ld e,a
	ld a,(de)
	ld b,a
	push hl
	push bc
	or a
	jp (ix)
.l3f05
	ld a,(#00ab)
	ld e,#1b
	ld (de),a
	jr l3ef9
.l3f0d
	push af
	ld a,(hl)
	add #61
	ld e,a
	ld a,(de)
	ld b,a
	inc hl
	pop af
	push hl
	push bc
	ld hl,l3f34
	add l
	ld l,a
	jr nc,l3f20
	inc h
.l3f20
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld e,#32
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	scf
	ex de,hl
	jp (ix)
.l3f2e
	or a
	push bc
	jp (ix)
.l3f32
	dw #0000
.l3f34
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
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
	dw #0030,#0028,#0027,#0025
	dw #0024,#0022,#0021,#0020
	dw #0019,#0018,#0017,#0016
	db #00
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff
;
.init_music		; added by Megachur
.play_music
;
	di	; add
	push bc
	push ix
	push de
	exx
	push bc
	exx
	call l3882	; play !
	exx
	pop bc
	exx
	pop de
	pop ix
	pop bc
	ei	; add
	ret
;
.music_info
	db "Kong Strikes Back (1985)(Ocean Software)(Martin Galway)",0
	db "",0

	read "music_end.asm"
