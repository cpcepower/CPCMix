; Music of Cosmic Shock Absurber (1987)(Martech)()()
; Ripped by Megachur the 28/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COSMICSA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #4070

	read "music_header.asm"

;
;.play_music_interrupt
.l4070
;
	di
	push af
	push de
	push hl
	push bc
	push ix
	call l419b
	pop ix
	pop bc
	pop hl
	pop de
	pop af
	ei
	ret
;
.init_music
;
	di
	ld hl,l415d
	ld (l414c),hl
	ld (l4150),hl
	ld (l4154),hl
	ld (l4158),hl
	ld a,#08
	dec a
	ld (l413d),a
	xor a
	ld (l415c),a
	ld a,#f3
	ld (l4070),a
	ei
	ret
;
.stop_music
;
	ld a,#c9
	ld (l4070),a
	ld de,#073f
	jp l4407
.l40ae
	dw #03bc,#0386,#0353,#0324
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
	dw #002f
	db #00,#00,#08,#09,#18,#09,#00,#30
	db #1c,#30,#04,#10,#0c,#10,#14,#10
.l412f equ $ + 7
.l412c equ $ + 4
	db #1c,#10,#1e,#60,#00,#00,#00,#00
.l4137 equ $ + 7
.l4136 equ $ + 6
.l4135 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#3f,#00
.l413e equ $ + 6
.l413d equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4145 equ $ + 5
.l4144 equ $ + 4
.l4141 equ $ + 1
	db #00,#07,#00,#05,#00,#00,#00,#00
.l414b equ $ + 3
	db #00,#00,#00,#00
.l4150 equ $ + 4
.l414c
	dw l415d,l4468,l415d,l4487
.l4158 equ $ + 4
.l4154
	dw l415d,l44a6,l415d,l44c5
.l4163 equ $ + 7
.l4161 equ $ + 5
.l4160 equ $ + 4
.l415f equ $ + 3
.l415d equ $ + 1
.l415c
	db #00,#ff,#ff,#00,#00,#00,#00,#06
	db #04,#07,#09,#0b,#0b,#0b,#0b,#0f
	db #0d,#0b,#09,#07,#05,#03,#01,#0c
	db #0a,#03,#09,#05,#07,#03,#06,#05
	db #08,#0d,#0c,#0b,#0a,#08,#06,#0b
	db #0c,#0c,#0c,#0c,#0c,#0c,#0b,#0b
	db #0b,#0a,#09,#05,#04,#03,#03,#08
	db #0c,#0e,#0c,#0b,#0a,#09,#09
;
.play_music
.l419b
;
	ld a,(l413d)
	inc a
	ld (l413d),a
	cp #08
	call z,l41bf
	xor a
	call l4437
	ld a,#01
	call l4437
	ld a,#02
	call l4437
	call l43e4
	ld e,#00
	ld b,#06
	jp l4428
.l41bf
	ld hl,l4136
	ld b,#3f
	ld (hl),b
	inc hl
	ld b,#00
	call l4345
	ld hl,l413d
	ld (hl),b
	inc hl
	call l4345
	ld hl,l4144
	ld (hl),b
	inc hl
	call l4345
	inc hl
	call l4345
	ld hl,l4158
	call l4251
	call l4309
	ld hl,l414c
	call l4251
	ld (l415f),a
	ld c,#01
	call l428c
	ld hl,l4150
	call l4251
	ld (l4160),a
	ld c,#02
	call l428c
	ld hl,l4154
	call l4251
	ld (l4161),a
	ld c,#03
	call l428c
	call l437f
	ld hl,l412f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l4242
	inc hl
	inc hl
	call l4242
	dec hl
	dec hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l4242
	ld e,#00
	ld b,#0b
	call l4428
	ld a,(l415c)
	inc a
.l4238
	ld (l415c),a
	cp #08
	ret nz
	xor a
	jr l4238
	ret
.l4242
	ld a,(hl)
	cp e
	ret nz
	inc hl
	ld a,(hl)
	dec hl
	cp d
	ret nz
	inc de
	ld (hl),e
	inc hl
	ld (hl),d
	dec hl
	dec de
	ret
.l4251
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(l415c)
	cp #00
	jr nz,l425c
	inc de
.l425c
	ld a,(de)
	cp #ff
	jp z,l4284
	ld (hl),d
	dec hl
	ld (hl),e
	dec a
	add a
	ld e,a
	ld d,#00
	ld hl,l44e4
	add hl,de
	add hl,de
	add hl,de
	add hl,de
	ld a,(l415c)
	ld e,a
	add hl,de
	ld a,(hl)
	ld b,a
	add a
	ld e,a
	ld hl,l40ae
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ex de,hl
	ld a,b
	ret
.l4284
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	dec hl
	jr l425c
.l428c
	ld a,b
	cp #36
	jp nc,l42cf
	ld a,l
	or h
	ret z
	ld a,c
	push hl
	add a
	dec a
	ld hl,l412f
	ld d,#00
	ld e,a
	add hl,de
	pop de
	ld (hl),e
	dec hl
	ld (hl),d
	ld hl,l4141
	ld e,c
	ld d,#00
	dec e
	add hl,de
	ld a,(hl)
	dec hl
	dec hl
	dec hl
	ld (hl),a
	ld hl,l412c
	add hl,de
	ld a,(hl)
	ld hl,l4137
	add hl,de
	ld (hl),a
	ld hl,l4136
	dec c
	jp nz,l42c4
	res 0,(hl)
.l42c4
	dec c
	jp nz,l42ca
	res 1,(hl)
.l42ca
	dec c
	ret nz
	res 2,(hl)
	ret
.l42cf
	ld a,h
	ld (l4135),a
	ld a,l
	and #f0
	cp #00
	jp z,l42fa
	rrca
	rrca
	rrca
	rrca
.l42df
	ld hl,l413e
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	ld hl,l4136
	dec c
	jr nz,l42f1
	res 3,(hl)
	ret
.l42f1
	dec c
	jr nz,l42f7
	res 4,(hl)
	ret
.l42f7
	res 5,(hl)
	ret
.l42fa
	ld a,l
	and #0f
	ld hl,l4137
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	xor a
	jr l42df
.l4309
	ld a,b
	and #03
	ld c,a
	ld a,b
	bit 2,b
	jr nz,l4318
	bit 3,b
	jp nz,l434b
	ret
.l4318
	bit 3,b
	jp nz,l4360
	and #f0
	rrc a
	rrc a
	rrc a
	rrc a
	ld b,a
	xor a
	cp c
	jr z,l433a
	ld hl,l412c
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),b
	ld b,#00
	jp l436f
.l433a
	ld hl,l412c
	call l4345
	ld b,#00
	jp l4379
.l4345
	ld (hl),b
	inc hl
	ld (hl),b
	inc hl
	ld (hl),b
	ret
.l434b
	ld a,c
	ld (l414b),a
	ld a,#e0
	and b
	rlca
	rlca
	rlca
	bit 4,b
	ld b,a
	jr z,l435c
	cpl
	inc a
.l435c
	ld (l4144),a
	ret
.l4360
	and #e0
	bit 4,b
	ret nz
	rlca
	rlc a
	rlc a
	ld b,a
	xor a
	cp c
	jr z,l4379
.l436f
	ld d,#00
	ld e,c
	ld hl,l4141
	add hl,de
	dec hl
	ld (hl),b
	ret
.l4379
	ld hl,l4141
	jp l4345
.l437f
	ld hl,l4144
	xor a
	cp (hl)
	ret z
	ld d,a
	ld c,a
	ld b,(hl)
	ld a,(l414b)
	ld ix,l412f
	ld hl,l415f
	cp d
	jr z,l439f
	dec a
	ld e,a
	add hl,de
	add a
	ld e,a
	add ix,de
	jp l43b3
.l439f
	call l43b3
	inc ix
	inc ix
	ld hl,l4160
	call l43b3
	inc ix
	inc ix
	ld hl,l4161
.l43b3
	ld a,(hl)
	add b
	add a
	ld e,a
	ld d,#00
	ld hl,l40ae
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#00)
	ld h,(ix+#01)
	ex de,hl
	xor a
	sbc hl,de
	add hl,hl
	ld a,l
	ld l,h
	ld h,a
	xor a
	push bc
	ld b,#04
.l43d2
	xor c
	rr h
	rr l
	rr a
	djnz l43d2
	or h
	ld (ix+#16),a
	ld (ix+#17),l
	pop bc
	ret
.l43e4
	ld hl,l412f
	ld de,l4145
	ld b,#03
.l43ec
	ld a,(hl)
	push hl
	inc hl
	ld h,(hl)
	ld l,a
	ex de,hl
	ld a,(hl)
	inc hl
	push hl
	ld h,(hl)
	ld l,a
	add hl,de
	jr nc,l43fb
	inc hl
.l43fb
	ld c,h
	ld a,l
	pop de
	inc de
	pop hl
	ld (hl),a
	inc hl
	ld (hl),c
	inc hl
	djnz l43ec
	ret
.l4407
	push bc
	ld b,#f4
	out (c),d
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),e
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	inc d
	ret
.l4428
	ld hl,l412f
	ld d,#00
	add hl,de
	ld d,e
.l442f
	ld e,(hl)
	inc hl
	call l4407
	djnz l442f
	ret
.l4437
	ld hl,l4137
	ld c,a
	ld e,a
	ld d,#00
	add hl,de
	ex de,hl
	ld hl,#0007
	add hl,de
	ld a,(hl)
	cp #00
	ret z
	push de
	ld hl,l4163
	dec a
	rla
	rla
	rla
	ld d,#00
	ld e,a
	add hl,de
	ld a,(l413d)
	ld e,a
	add hl,de
	ld a,(hl)
	pop hl
	ld b,(hl)
	cp b
	ret z
	ld (hl),a
	ld a,c
	add #08
	ld e,a
	ld b,#01
	jp l4428
.l4468
	db #03,#04,#03,#05,#06,#07,#06,#05
	db #08,#09,#06,#0a,#0b,#0c,#0d,#0c
	db #0e,#0f,#10,#11,#10,#12,#10,#13
	db #10,#14,#15,#16,#15,#16,#ff
.l4487
	db #17,#18,#19,#1a,#1b,#1c,#1d,#1e
	db #1f,#20,#21,#22,#23,#02,#24,#25
	db #24,#25,#24,#26,#24,#25,#24,#25
	db #24,#25,#27,#02,#28,#29,#ff
.l44a6
	db #2a,#2b,#2c,#2d,#2e,#2f,#30,#31
	db #32,#33,#32,#34,#35,#36,#37,#38
	db #39,#3a,#3b,#3c,#3b,#3c,#3b,#3c
	db #3b,#3d,#3e,#3f,#40,#41,#ff
.l44c5
	db #42,#01,#01,#43,#44,#45,#46,#46
	db #01,#01,#47,#01,#01,#48,#49,#4a
	db #49,#49,#4b,#01,#01,#01,#01,#01
	db #01,#01,#4c,#4c,#4d,#4e,#ff
.l44e4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #0e,#0e,#10,#10,#11,#11,#0e,#0e
	db #13,#13,#11,#11,#10,#10,#0c,#0c
	db #00,#0c,#10,#00,#00,#09,#0c,#0c
	db #02,#0e,#10,#02,#02,#11,#0e,#0e
	db #07,#13,#11,#07,#07,#10,#0c,#0c
	db #02,#0e,#10,#02,#02,#11,#0e,#0c
	db #00,#13,#11,#00,#00,#10,#0c,#0c
	db #00,#0c,#10,#10,#09,#09,#0c,#0c
	db #02,#02,#3e,#02,#07,#3e,#09,#3c
	db #02,#02,#3e,#02,#07,#3e,#05,#3e
	db #02,#02,#3e,#02,#07,#3e,#09,#3e
	db #02,#02,#3e,#02,#07,#3a,#09,#35
	db #02,#02,#3e,#02,#07,#3e,#09,#38
	db #26,#35,#35,#35,#26,#35,#35,#35
	db #26,#35,#35,#35,#26,#35,#26,#35
	db #26,#35,#35,#35,#26,#2b,#2d,#32
	db #26,#35,#35,#35,#26,#2b,#2d,#2b
	db #26,#35,#35,#35,#26,#28,#26,#28
	db #0e,#10,#11,#0e,#13,#11,#10,#11
	db #0e,#10,#11,#0e,#0c,#10,#09,#0c
	db #02,#21,#15,#02,#02,#24,#25,#26
	db #07,#2e,#30,#2e,#07,#35,#26,#24
	db #02,#26,#1a,#02,#02,#35,#3a,#35
	db #1f,#1f,#21,#21,#24,#24,#25,#25
	db #26,#26,#26,#26,#26,#26,#28,#26
	db #2b,#2d,#30,#30,#30,#2d,#30,#2d
	db #32,#30,#2d,#29,#2b,#29,#26,#24
	db #24,#21,#24,#21,#27,#35,#21,#24
	db #26,#26,#26,#26,#26,#26,#29,#26
	db #24,#24,#24,#24,#24,#23,#24,#23
	db #21,#21,#21,#21,#21,#21,#1f,#1d
	db #1f,#1d,#1a,#1a,#1a,#15,#18,#35
	db #1a,#1a,#1a,#1a,#35,#3a,#3e,#35
	db #1a,#1c,#1d,#1a,#1f,#1d,#1c,#1d
	db #1a,#1c,#1d,#1a,#18,#1c,#15,#18
	db #1a,#1c,#1d,#1a,#18,#2b,#15,#2b
	db #35,#35,#35,#35,#35,#35,#3e,#35
	db #02,#38,#38,#02,#02,#35,#3e,#35
	db #02,#38,#38,#02,#09,#38,#3e,#3e
	db #3e,#26,#1a,#3e,#3e,#35,#3a,#35
	db #3e,#35,#35,#3e,#3e,#35,#3a,#35
	db #3e,#21,#15,#3e,#3e,#24,#25,#26
	db #28,#24,#29,#28,#21,#18,#31,#19
	db #1a,#15,#1d,#1c,#1f,#1a,#21,#1c
	db #1a,#1c,#1d,#1a,#21,#1f,#1d,#18
	db #1a,#1c,#1d,#1a,#1f,#1f,#1c,#18
	db #18,#1a,#1c,#18,#1d,#1c,#18,#19
	db #1a,#1c,#1d,#1a,#1f,#1d,#1c,#1a
	db #18,#1a,#1c,#18,#1d,#1c,#18,#1c
	db #24,#26,#28,#24,#29,#28,#24,#21
	db #32,#2d,#29,#2d,#26,#28,#29,#28
	db #26,#28,#29,#26,#2b,#29,#28,#29
	db #26,#26,#26,#26,#26,#26,#26,#26
	db #28,#28,#28,#28,#28,#28,#28,#28
	db #29,#29,#29,#29,#29,#29,#29,#29
	db #2b,#2b,#2b,#2b,#2b,#2b,#2b,#2b
	db #2d,#35,#35,#35,#2d,#35,#35,#35
	db #2d,#35,#35,#35,#2d,#2f,#30,#2f
	db #2d,#35,#35,#35,#2d,#2b,#29,#2b
	db #26,#38,#38,#2d,#38,#38,#39,#38
	db #39,#38,#38,#2d,#38,#38,#39,#38
	db #35,#35,#35,#2d,#35,#35,#35,#35
	db #32,#31,#30,#2f,#2e,#2d,#2c,#2b
	db #ed,#96,#af,#00,#00,#00,#00,#00
	db #2e,#00,#00,#00,#00,#4f,#fb,#fb
	db #0e,#97,#00,#00,#00,#00,#00,#00
	db #4a,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#4a,#00,#00,#00
	db #00,#00,#00,#00,#00,#97,#00,#00
	db #00,#00,#00,#00,#00,#00,#86,#00
	db #97,#00,#87,#77,#67,#57,#47,#37
	db #97,#97,#87,#77,#67,#57,#37,#00
	db #94,#2d,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#fb,#00,#00,#00,#00
	db #4e,#00,#00,#fb,#00,#00,#00,#00
	db #3b,#3b,#3b,#3b,#3b,#3b,#3b,#3b
;
.music_info
	db "Cosmic Shock Absurber (1987)(Martech)()",0
	db "",0

	read "music_end.asm"
