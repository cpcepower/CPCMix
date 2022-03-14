; Music of Pulsator (1987)(Martech)(Mark Alexander)()
; Ripped by Megachur the 03/02/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PULSATOR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4074

	read "music_header.asm"

.l4074	; play interrupt
	di
	push af
	push de
	push hl
	push bc
	push ix
	call l4197
	pop ix
	pop bc
	pop hl
	pop de
	pop af
	ei
	ret
;
.init_music
.l4086
;
	di
	ld hl,l4161
	ld (l4150),hl
	ld (l4154),hl
	ld (l4158),hl
	ld (l415c),hl
	ld a,#08
	dec a
	ld (l4141),a
	xor a
	ld (l4160),a
	ld a,#f3
	ld (l4074),a
	ei
	ret
;
.stop_music
;
	ld a,#c9
	ld (l4074),a
	ld de,#073f
	jp l443b
.l40b2
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
	dw #002f,#0000
	db #00,#30,#0f,#30,#1f,#30,#09,#20
	db #1f,#20,#0a,#07,#11,#07,#1c,#07
.l4133 equ $ + 5
.l4130 equ $ + 2
	db #09,#40,#00,#00,#00,#00,#00,#00
.l413b equ $ + 5
.l413a equ $ + 4
.l4139 equ $ + 3
	db #00,#00,#00,#00,#3f,#00,#00,#00
.l4145 equ $ + 7
.l4142 equ $ + 4
.l4141 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#01
.l4149 equ $ + 3
.l4148 equ $ + 2
	db #01,#01,#00,#00,#00,#00,#00,#00
.l414f equ $ + 1
	db #00,#00
.l4154 equ $ + 4
.l4150
	dw l4161,l449c,l4161,l44ed
.l415c equ $ + 4
.l4158
	dw l4161,l453e,l4161,l458f
.l4167 equ $ + 7
.l4166 equ $ + 6
.l4165 equ $ + 5
.l4164 equ $ + 4
.l4163 equ $ + 3
.l4161 equ $ + 1
.l4160
	db #00,#ff,#ff,#00,#00,#00,#00,#09
	db #0c,#0c,#0c,#0c,#0c,#0a,#08,#0e
	db #0c,#0a,#08,#06,#04,#02,#00,#0e
	db #0a,#06,#02,#0d,#09,#05,#01,#0c
	db #0a,#09,#08,#07,#06,#04,#02,#0b
	db #0f,#0f,#0f,#0e,#0e,#0e,#0e,#0d
	db #0a,#0c,#09,#0b,#07,#0a,#06
;
.l4197
.play_music
;
	ld a,(l4141)
	inc a
	ld (l4141),a
	cp #08
	call z,l41be
	xor a
	call l446b
	ld a,#01
	call l446b
	ld a,#02
	call l446b
	call l43eb
	call l440e
	ld e,#00
	ld b,#06
	jp l445c
.l41be
	ld hl,l413a
	ld b,#3f
	ld (hl),b
	inc hl
	ld b,#00
	call l4347
	ld hl,l4141
	ld (hl),b
	inc hl
	call l4347
	ld hl,l4148
	ld (hl),b
	inc hl
	call l4347
	inc hl
	call l4347
	ld hl,l415c
	call l4250
	call l430b
	ld hl,l4150
	call l4250
	ld (l4163),a
	ld c,#01
	call l428e
	ld hl,l4154
	call l4250
	ld (l4164),a
	ld c,#02
	call l428e
	ld hl,l4158
	call l4250
	ld (l4165),a
	ld c,#03
	call l428e
	call l4386
	ld hl,l4133
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l4241
	inc hl
	inc hl
	call l4241
	dec hl
	dec hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l4241
	ld e,#00
	ld b,#0b
	call l445c
	ld a,(l4160)
	inc a
.l4237
	ld (l4160),a
	cp #08
	ret nz
	xor a
	jr l4237
	ret
.l4241
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
.l4250
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(l4160)
	cp #00
	jr nz,l425b
	inc de
.l425b
	ld a,(de)
	cp #ff
	jp z,l4286
	ld (hl),d
	dec hl
	ld (hl),e
	dec a
	ld e,a
	ld d,#00
	ld hl,l45e0
	add hl,de
	add hl,de
	add hl,de
	add hl,de
	add hl,de
	add hl,de
	add hl,de
	add hl,de
	ld a,(l4160)
	ld e,a
	add hl,de
	ld a,(hl)
	ld b,a
	add a
	ld e,a
	ld hl,l40b2
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ex de,hl
	ld a,b
	ret
.l4286; reset music
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	dec hl
	jr l425b
.l428e
	ld a,b
	cp #36
	jp nc,l42d1
	ld a,l
	or h
	ret z
	ld a,c
	push hl
	add a
	dec a
	ld hl,l4133
	ld d,#00
	ld e,a
	add hl,de
	pop de
	ld (hl),e
	dec hl
	ld (hl),d
	ld hl,l4145
	ld e,c
	ld d,#00
	dec e
	add hl,de
	ld a,(hl)
	dec hl
	dec hl
	dec hl
	ld (hl),a
	ld hl,l4130
	add hl,de
	ld a,(hl)
	ld hl,l413b
	add hl,de
	ld (hl),a
	ld hl,l413a
	dec c
	jp nz,l42c6
	res 0,(hl)
.l42c6
	dec c
	jp nz,l42cc
	res 1,(hl)
.l42cc
	dec c
	ret nz
	res 2,(hl)
	ret
.l42d1
	ld a,h
	ld (l4139),a
	ld a,l
	and #f0
	cp #00
	jp z,l42fc
	rrca
	rrca
	rrca
	rrca
.l42e1
	ld hl,l4142
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	ld hl,l413a
	dec c
	jr nz,l42f3
	res 3,(hl)
	ret
.l42f3
	dec c
	jr nz,l42f9
	res 4,(hl)
	ret
.l42f9
	res 5,(hl)
	ret
.l42fc
	ld a,l
	and #0f
	ld hl,l413b
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	xor a
	jr l42e1
.l430b
	ld a,b
	and #03
	ld c,a
	ld a,b
	bit 2,b
	jr nz,l431a
	bit 3,b
	jp nz,l434d
	ret
.l431a
	bit 3,b
	jp nz,l4362
	and #f0
	rrc a
	rrc a
	rrc a
	rrc a
	ld b,a
	xor a
	cp c
	jr z,l433c
	ld hl,l4130
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),b
	ld b,#00
	jp l4376
.l433c
	ld hl,l4130
	call l4347
	ld b,#00
	jp l4380
.l4347
	ld (hl),b
	inc hl
	ld (hl),b
	inc hl
	ld (hl),b
	ret
.l434d
	ld a,c
	ld (l414f),a
	ld a,#e0
	and b
	rlca
	rlca
	rlca
	bit 4,b
	ld b,a
	jr z,l435e
	cpl
	inc a
.l435e
	ld (l4148),a
	ret
.l4362
	and #e0
	bit 4,b
	jr z,l436c
	ld (l4166),a
	ret
.l436c
	rlca
	rlc a
	rlc a
	ld b,a
	xor a
	cp c
	jr z,l4380
.l4376
	ld d,#00
	ld e,c
	ld hl,l4145
	add hl,de
	dec hl
	ld (hl),b
	ret
.l4380
	ld hl,l4145
	jp l4347
.l4386
	ld hl,l4148
	xor a
	cp (hl)
	ret z
	ld d,a
	ld c,a
	ld b,(hl)
	ld a,(l414f)
	ld ix,l4133
	ld hl,l4163
	cp d
	jr z,l43a6
	dec a
	ld e,a
	add hl,de
	add a
	ld e,a
	add ix,de
	jp l43ba
.l43a6
	call l43ba
	inc ix
	inc ix
	ld hl,l4164
	call l43ba
	inc ix
	inc ix
	ld hl,l4165
.l43ba
	ld a,(hl)
	add b
	add a
	ld e,a
	ld d,#00
	ld hl,l40b2
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
.l43d9
	xor c
	rr h
	rr l
	rr a
	djnz l43d9
	or h
	ld (ix+#16),a
	ld (ix+#17),l
	pop bc
	ret
.l43eb
	ld hl,l4133
	ld de,l4149
	ld b,#03
.l43f3
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
	jr nc,l4402
	inc hl
.l4402
	ld c,h
	ld a,l
	pop de
	inc de
	pop hl
	ld (hl),a
	inc hl
	ld (hl),c
	inc hl
	djnz l43f3
	ret
.l440e
	ld hl,l4133
	ld a,(l4166)
	ld c,a
	bit 5,c
	call nz,l4426
	inc hl
	inc hl
	bit 6,c
	call nz,l4426
	inc hl
	inc hl
	bit 7,c
	ret z
.l4426
	ld a,(l4141)
	ld e,(hl)
	inc hl
	ld d,(hl)
	rrca
	rrca
	rrca
	dec de
	dec de
	jr nc,l4437
	inc de
	inc de
	inc de
	inc de
.l4437
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l443b
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
.l445c
	ld hl,l4133
	ld d,#00
	add hl,de
	ld d,e
.l4463
	ld e,(hl)
	inc hl
	call l443b
	djnz l4463
	ret
.l446b
	ld hl,l413b
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
	ld hl,l4167
	dec a
	rla
	rla
	rla
	ld d,#00
	ld e,a
	add hl,de
	ld a,(l4141)
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
	jp l445c
.l449c
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#03,#04,#05,#06
	db #07,#08,#09,#0a,#0b,#0c,#0d,#0e
	db #0f,#10,#11,#12,#13,#14,#15,#15
	db #15,#16,#17,#17,#17,#18,#19,#19
	db #19,#1a,#1b,#1c,#1d,#1d,#1e,#1f
	db #02,#02,#20,#21,#20,#22,#23,#24
	db #25,#26,#26,#27,#27,#27,#27,#27
	db #27,#27,#27,#28,#28,#28,#28,#27
	db #27,#27,#27,#29,#29,#2a,#2a,#2b
.l44ed equ $ + 1
	db #ff,#2c,#2d,#2e,#2f,#30,#31,#2c
	db #2d,#2e,#2f,#30,#31,#2c,#2d,#2e
	db #2f,#30,#31,#2c,#2d,#2e,#2f,#30
	db #31,#32,#33,#02,#34,#35,#02,#36
	db #36,#36,#21,#37,#37,#38,#39,#3a
	db #3a,#3a,#3b,#3c,#3c,#1d,#1d,#3d
	db #3d,#3e,#3f,#40,#41,#42,#43,#44
	db #45,#45,#45,#02,#46,#46,#46,#47
	db #46,#46,#46,#47,#46,#46,#46,#47
	db #46,#46,#46,#47,#46,#46,#46,#47
	db #48,#ff
.l453e
	db #02,#02,#02,#02,#02,#02,#49,#4a
	db #4b,#2f,#30,#4c,#49,#4a,#4b,#2f
	db #30,#4d,#49,#4a,#4b,#2f,#30,#4c
	db #4e,#4f,#50,#51,#52,#53,#02,#02
	db #02,#21,#37,#37,#54,#54,#55,#55
	db #56,#55,#57,#58,#1d,#1d,#59,#5a
	db #5b,#5b,#54,#5c,#5d,#5e,#5f,#60
	db #61,#62,#02,#63,#64,#65,#64,#66
	db #37,#67,#37,#68,#69,#6a,#6b,#6c
	db #6d,#6c,#6e,#6f,#70,#71,#72,#2b
	db #ff
.l458f
	db #73,#74,#01,#75,#76,#01,#77,#01
	db #01,#78,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #79,#7a,#01,#79,#7a,#01,#7b,#01
	db #01,#7c,#01,#01,#01,#01,#01,#01
	db #01,#01,#7d,#01,#01,#7e,#7f,#80
	db #81,#82,#83,#84,#85,#86,#87,#88
	db #89,#8a,#8b,#8c,#8c,#8c,#8c,#8c
	db #8c,#8c,#8c,#8c,#8c,#8c,#8c,#8c
	db #8c,#8c,#8c,#8c,#8c,#8c,#8c,#8d
.l45e0 equ $ + 1
	db #ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#35,#35
	db #35,#35,#35,#35,#35,#35,#18,#35
	db #35,#35,#35,#35,#35,#35,#18,#35
	db #1a,#35,#18,#35,#35,#35,#35,#35
	db #35,#35,#18,#35,#18,#35,#16,#35
	db #35,#35,#35,#35,#35,#35,#16,#14
	db #13,#0f,#11,#35,#35,#35,#35,#35
	db #35,#35,#11,#13,#18,#1b,#18,#0c
	db #13,#18,#1b,#1a,#18,#0c,#13,#18
	db #1b,#1a,#18,#0c,#13,#18,#1b,#1a
	db #18,#0c,#13,#18,#1b,#1a,#16,#0a
	db #11,#16,#1a,#18,#16,#0a,#11,#16
	db #1a,#18,#14,#08,#0f,#14,#17,#11
	db #14,#0f,#20,#22,#20,#0f,#33,#30
	db #27,#24,#1b,#18,#33,#30,#27,#24
	db #1b,#18,#0c,#0f,#13,#0f,#13,#18
	db #1b,#18,#1b,#1f,#24,#27,#2e,#29
	db #26,#22,#1d,#1a,#2e,#29,#26,#22
	db #1d,#1a,#16,#18,#16,#18,#1a,#1d
	db #1d,#1a,#1d,#22,#26,#29,#00,#00
	db #00,#00,#00,#00,#03,#02,#05,#05
	db #05,#07,#07,#07,#0b,#0b,#00,#35
	db #35,#00,#35,#35,#03,#02,#05,#35
	db #35,#05,#35,#35,#05,#35,#0a,#16
	db #16,#0a,#16,#16,#0e,#0c,#0a,#16
	db #16,#0a,#16,#16,#0e,#0a,#08,#14
	db #14,#08,#35,#39,#37,#39,#08,#14
	db #14,#08,#35,#3a,#38,#3a,#3a,#3d
	db #3c,#3a,#3d,#3c,#3a,#39,#18,#18
	db #19,#1a,#1b,#1c,#1d,#1e,#1f,#20
	db #21,#22,#23,#24,#25,#26,#13,#13
	db #13,#13,#13,#13,#13,#13,#11,#11
	db #11,#11,#11,#11,#11,#11,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0c,#07
	db #03,#02,#00,#35,#35,#35,#00,#35
	db #3a,#00,#00,#35,#39,#3a,#00,#35
	db #39,#00,#00,#39,#3a,#39,#00,#35
	db #3a,#00,#00,#3a,#39,#3a,#00,#0c
	db #03,#0f,#02,#0e,#07,#13,#05,#11
	db #08,#14,#07,#13,#0c,#18,#07,#13
	db #0a,#16,#09,#15,#0e,#1a,#03,#0f
	db #06,#12,#05,#11,#0a,#16,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#30,#30
	db #2b,#2b,#24,#24,#30,#30,#32,#32
	db #24,#24,#30,#30,#2b,#2b,#24,#24
	db #30,#30,#32,#32,#24,#24,#2e,#2e
	db #29,#29,#2e,#2e,#30,#30,#2e,#2e
	db #29,#29,#2c,#2c,#2b,#2b,#29,#29
	db #27,#27,#26,#26,#23,#23,#2b,#27
	db #1f,#1b,#13,#0f,#2b,#27,#2b,#27
	db #1f,#1b,#35,#35,#35,#35,#29,#26
	db #22,#1d,#1a,#16,#29,#26,#22,#1d
	db #1a,#16,#35,#35,#35,#35,#18,#18
	db #18,#13,#13,#13,#18,#13,#33,#32
	db #30,#2b,#2b,#2b,#2b,#2b,#33,#32
	db #30,#33,#32,#30,#33,#30,#33,#32
	db #30,#2e,#2d,#2b,#27,#26,#39,#37
	db #3a,#39,#37,#3a,#39,#39,#39,#37
	db #3a,#39,#37,#39,#39,#39,#20,#20
	db #20,#20,#20,#20,#20,#20,#00,#0c
	db #0c,#00,#03,#02,#00,#02,#1b,#1b
	db #1b,#1b,#1b,#1f,#1f,#1f,#1f,#1d
	db #1d,#1d,#1d,#1a,#1a,#1a,#1a,#1b
	db #1b,#1b,#1b,#1f,#1f,#1f,#1f,#20
	db #20,#20,#20,#1d,#1d,#1d,#1d,#1f
	db #1f,#1f,#1f,#1b,#1b,#1b,#1a,#1b
	db #1d,#1f,#20,#1f,#1d,#1a,#18,#18
	db #18,#18,#24,#24,#24,#24,#18,#18
	db #18,#18,#18,#18,#18,#18,#07,#35
	db #39,#07,#07,#35,#39,#35,#07,#35
	db #39,#07,#39,#39,#37,#37,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#33,#33
	db #30,#30,#2b,#2b,#33,#33,#29,#29
	db #2b,#2b,#33,#33,#30,#30,#2b,#2b
	db #33,#33,#2b,#2b,#30,#30,#2f,#2f
	db #30,#30,#32,#32,#2f,#2f,#2f,#2f
	db #30,#30,#32,#32,#2f,#35,#30,#2b
	db #24,#1f,#18,#13,#30,#2b,#24,#1f
	db #18,#13,#0f,#13,#18,#13,#18,#1b
	db #1f,#1b,#1f,#24,#27,#2b,#32,#2e
	db #29,#26,#22,#1d,#32,#2e,#29,#26
	db #22,#1d,#16,#18,#16,#18,#1a,#1d
	db #22,#1d,#22,#26,#29,#2e,#33,#32
	db #30,#33,#32,#30,#2b,#30,#32,#30
	db #2e,#29,#29,#29,#29,#29,#32,#30
	db #2e,#32,#30,#2e,#29,#2e,#2c,#2b
	db #2c,#2e,#30,#2e,#30,#32,#33,#32
	db #33,#30,#32,#30,#2f,#32,#24,#3a
	db #39,#24,#3a,#39,#24,#3a,#2b,#3a
	db #39,#2b,#3a,#2b,#27,#24,#33,#32
	db #30,#2b,#35,#35,#3d,#3e,#32,#30
	db #2e,#29,#35,#35,#3d,#3e,#27,#29
	db #2b,#27,#35,#35,#35,#35,#26,#27
	db #29,#26,#35,#35,#35,#35,#30,#30
	db #30,#30,#30,#30,#30,#30,#30,#30
	db #2f,#2e,#2d,#2c,#2b,#2a,#29,#28
	db #27,#26,#25,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#35,#35
	db #30,#32,#33,#32,#30,#2b,#2c,#2b
	db #29,#24,#26,#27,#26,#27,#24,#35
	db #30,#32,#33,#32,#30,#2b,#24,#32
	db #30,#2b,#32,#32,#30,#2b,#2b,#32
	db #30,#2b,#32,#32,#30,#2b,#2c,#2b
	db #29,#24,#2c,#2b,#29,#24,#2e,#2c
	db #2b,#29,#29,#29,#29,#29,#20,#2c
	db #1f,#2b,#1d,#29,#1c,#28,#1d,#29
	db #1d,#29,#1d,#29,#1d,#29,#33,#32
	db #30,#2b,#2c,#2b,#29,#2c,#2b,#29
	db #27,#24,#26,#27,#29,#2b,#2b,#29
	db #27,#24,#26,#27,#29,#2c,#2b,#2b
	db #2b,#2b,#2b,#2b,#2b,#2b,#2e,#2e
	db #2d,#2d,#2b,#2b,#29,#27,#1b,#1d
	db #1e,#1b,#20,#22,#23,#26,#27,#27
	db #27,#27,#27,#27,#27,#27,#64,#87
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#76,#00,#00,#00,#86,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#96,#00,#00,#00,#8d,#00
	db #00,#00,#00,#00,#00,#00,#a7,#00
	db #00,#00,#00,#00,#00,#00,#2c,#00
	db #00,#00,#00,#00,#6c,#00,#00,#00
	db #00,#00,#8c,#00,#00,#00,#cc,#b7
	db #00,#00,#00,#00,#00,#00,#b6,#00
	db #3b,#00,#00,#3b,#00,#00,#5c,#00
	db #00,#00,#00,#00,#00,#00,#2e,#4f
	db #d5,#1c,#00,#00,#00,#00,#00,#29
	db #29,#29,#29,#29,#29,#29,#29,#29
	db #29,#29,#29,#29,#29,#29,#96,#00
	db #00,#00,#8a,#00,#00,#00,#5a,#00
	db #00,#00,#7a,#00,#00,#65,#2a,#00
	db #00,#00,#8a,#00,#00,#00,#2a,#00
	db #00,#00,#7a,#00,#00,#00,#4a,#00
	db #00,#00,#9a,#00,#00,#00,#1c,#00
	db #00,#00,#00,#00,#00,#00,#97,#00
	db #00,#00,#5c,#2d,#00,#00,#1c,#3b
	db #3b,#3b,#3b,#3b,#3b,#3b,#3b,#3b
	db #3b,#3b,#3b,#00,#00,#00,#86,#76
	db #66,#57,#46,#37,#26,#17,#97,#4e
	db #00,#00,#00,#00,#00,#00,#fa,#00
	db #00,#fa,#fa,#00,#00,#00,#e4,#d4
	db #c4,#b4,#a4,#94,#84,#74,#00
;
.music_info
	db "Pulsator (1987)(Martech)(Mark Alexander)",0
	db "",0

	read "music_end.asm"
