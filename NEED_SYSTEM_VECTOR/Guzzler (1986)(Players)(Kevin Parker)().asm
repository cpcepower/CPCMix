; Music of Guzzler (1986)(Players)(Kevin Parker)()
; Ripped by Megachur the 23/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GUZZLER.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6dd5
NEED_SYSTEM_VECTOR		equ 1
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
.real_init_music
;
	push ix
	push iy
	ld iy,l7145
	ld a,(l56ad)	; init theme
	and #03
	ld e,a
	ld d,#00
	add iy,de
	add iy,de
	add iy,de
	add iy,de
	ld (l6e14),iy
	call l6e44
	xor a
	ld (l6e35),a
	inc a
	ld (l6e16),a
	inc a
	ld (l6e6e),a
	call #bca7
	ld hl,l6eb7
	ld de,l6e6f
	ld bc,#81ff
	call #bcd7
	pop iy
	pop ix
	ret
.l6e14
	dw #0000
.l6e16
	db #00
.l6e17
	db #01,#00,#00,#81,#09,#00,#00,#00
	db #00,#09,#09,#09,#09,#01,#09,#01
	db #00,#00,#82,#09,#00,#00
	db #00,#00,#09,#09,#09,#09,#01,#09
.l6e35
	db #01,#00,#00,#84,#09,#00,#00,#00
	db #00,#09,#09,#09,#09,#01,#09
.l6e44
	ld ix,l6e17
	ld b,#03
	ld hl,l6e6e
	ld (hl),b
.l6e4e
	ld (ix+#00),#01
	ld a,(iy+#00)
	ld (ix+#01),a
	ld a,(iy+#01)
	ld (ix+#02),a
	inc iy
	inc iy
	ld (ix+#0d),#01
	ld de,#000f
	add ix,de
	djnz l6e4e
	ret
.l6e6e
	db #00
.l6e6f	; play music interrupt
	push ix
	ld ix,l6e17
	ld b,#03
.l6e77
	bit 0,(ix+#00)
	push bc
	call nz,l6ec3
	pop bc
	ld de,#000f
	add ix,de
	djnz l6e77
	pop ix
	ld a,(l6e6e)
	or a
	ret nz
	ld (l6ec2),a
	ld a,(l6e16)
	or a
	jr nz,l6e9a
	jp #bca7	; end music

.l6e9a
	push ix
	push iy
	ld ix,l6e17
	ld iy,(l6e14)
	call l6e44
	xor a
	ld (l6e35),a
	ld a,#02
	ld (l6e6e),a
	pop iy
	pop ix
	ret
.l6eb7
	db #00,#00,#00,#00,#00
	dw #0000
.l6ec2 equ $ + 4
	db #00,#00,#00,#00,#00
.l6ec3
	dec (ix+#0d)
	ret nz
	ld l,(ix+#01)
	ld h,(ix+#02)
	ld a,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	cp #ff
	jr z,l6f1b	; detect end music
	or a
	jr nz,l6ee8
	ld (ix+#09),#00
	ld (ix+#04),#00
	jr l6ef4
.l6ee8
	ld b,(ix+#0c)
	ld (ix+#09),b
	ld b,(ix+#0e)
	ld (ix+#04),b
.l6ef4
	ld e,a
	ld d,#00
	ld hl,l6f25
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#06),e
	ld (ix+#07),d
	ld (ix+#0d),c
	push ix
	push ix
	pop hl
	ld de,#0003
	add hl,de
	ld a,(l6f24)
	or a
	call nz,#bcaa
	pop ix
	ret
.l6f1b	; end music
	res 0,(ix+#00)
	ld hl,l6e6e
	dec (hl)
	ret
.l6f25 equ $ + 1
.l6f24
	db #01,#00,#00
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04d4
	dw #0470,#0431,#03f4,#03dc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020
	dw l6fd3,l704f,l704f
.l6fd3
	db #11,#10,#29,#10,#18,#10,#29,#10
	db #16,#10,#29,#10,#1d,#10,#29,#10
	db #0e,#10,#29,#10,#15,#10,#29,#10
	db #13,#10,#26,#10,#1a,#10,#26,#10
	db #22,#10,#26,#10,#1f,#10,#20,#10
	db #21,#10,#29,#10,#1a,#10,#29,#10
	db #1c,#10,#28,#10,#20,#10,#28,#10
	db #28,#20,#28,#10,#18,#10,#11,#10
	db #29,#10,#18,#10,#29,#10,#16,#10
	db #29,#10,#1d,#10,#29,#10,#0e,#10
	db #29,#10,#15,#10,#29,#10,#13,#10
	db #26,#10,#1a,#10,#26,#10,#22,#10
	db #26,#10,#1f,#10,#20,#10,#21,#08
	db #1d,#08,#1c,#08,#1a,#08,#19,#20
	db #18,#10,#29,#10,#24,#10,#18,#10
.l704f equ $ + 4
	db #1d,#10,#ff,#ff,#45,#08,#44,#08
	db #45,#20,#48,#10,#4a,#10,#3a,#08
	db #39,#08,#3a,#08,#3c,#08,#3e,#10
	db #41,#08,#40,#08,#41,#20,#45,#10
	db #46,#10,#37,#08,#36,#08,#37,#08
	db #39,#08,#3a,#10,#3e,#10,#43,#08
	db #3e,#10,#43,#08,#3e,#10,#3c,#20
	db #41,#20,#40,#08,#44,#08,#47,#08
	db #4c,#10,#4a,#08,#47,#08,#48,#08
	db #45,#20,#46,#20,#45,#08,#44,#08
	db #45,#20,#48,#10,#4a,#10,#3a,#08
	db #39,#08,#3a,#08,#3c,#08,#3e,#10
	db #41,#08,#40,#08,#41,#20,#45,#10
	db #46,#10,#37,#08,#36,#08,#37,#08
	db #39,#08,#3a,#10,#3e,#10,#43,#08
	db #3e,#10,#43,#08,#3e,#10,#3c,#20
	db #41,#18,#41,#08,#45,#08,#48,#10
	db #43,#10,#3c,#08,#3e,#08,#40,#08
	db #41,#10,#ff,#ff,#e5,#70,#f7,#70
	db #09,#71,#2f,#0c,#2d,#0c,#2b,#0c
	db #29,#0c,#28,#0c,#26,#0c,#24,#10
	db #00,#08,#ff,#ff,#3b,#0c,#39,#0c
	db #37,#0c,#35,#0c,#34,#0c,#32,#0c
	db #30,#10,#00,#08,#ff,#ff,#23,#0c
	db #21,#0c,#1f,#0c,#1d,#0c,#1c,#0c
	db #1a,#0c,#18,#10,#00,#08,#ff,#ff
	db #21,#71,#31,#71,#31,#71,#00,#04
	db #20,#24,#23,#24,#28,#12,#23,#12
	db #1c,#12,#00,#08,#ff,#ff,#00,#04
	db #34,#09,#33,#09,#34,#09,#38,#09
	db #36,#12,#2f,#12,#34,#12,#00,#08
.l7145 equ $ + 2
	db #ff,#ff,#67,#7b,#ed,#7c,#55,#71
	db #15,#73,#11,#75,#2f,#76,#db,#77
	db #a7,#79,#1f,#09,#2b,#12,#27,#09
	db #28,#12,#26,#12,#24,#12,#1c,#12
	db #1d,#12,#1e,#12,#1f,#09,#24,#12
	db #22,#09,#23,#12,#21,#12,#1f,#12
	db #28,#12,#27,#12,#26,#12,#24,#12
	db #34,#12,#1f,#12,#34,#12,#24,#12
	db #34,#12,#1f,#12,#2b,#12,#21,#12
	db #28,#12,#1c,#12,#28,#12,#21,#12
	db #21,#12,#21,#12,#21,#12,#1d,#12
	db #1f,#12,#21,#12,#23,#12,#24,#12
	db #2b,#12,#21,#12,#28,#12,#1a,#12
	db #32,#12,#1a,#12,#32,#12,#1f,#12
	db #20,#12,#21,#12,#23,#12,#24,#12
	db #34,#12,#1f,#12,#34,#12,#24,#12
	db #34,#12,#1f,#12,#2b,#12,#21,#12
	db #24,#12,#1c,#12,#2c,#12,#21,#12
	db #21,#12,#21,#12,#21,#12,#1d,#12
	db #1f,#12,#21,#12,#23,#12,#24,#12
	db #2b,#12,#21,#12,#2b,#12,#1a,#12
	db #2a,#12,#1f,#12,#2b,#12,#24,#12
	db #1f,#12,#24,#24,#26,#12,#29,#12
	db #1f,#12,#29,#12,#26,#12,#29,#12
	db #1f,#12,#29,#12,#24,#12,#28,#12
	db #1c,#12,#28,#12,#21,#12,#30,#12
	db #21,#12,#2d,#12,#1c,#12,#2c,#12
	db #1c,#12,#28,#12,#28,#12,#29,#09
	db #28,#12,#26,#09,#24,#09,#23,#09
	db #21,#12,#28,#12,#24,#12,#28,#12
	db #21,#12,#28,#12,#21,#12,#28,#12
	db #1a,#12,#2b,#12,#1f,#12,#29,#12
	db #1a,#12,#2b,#12,#1f,#12,#29,#12
	db #24,#12,#1c,#12,#1c,#12,#28,#12
	db #21,#12,#28,#12,#21,#12,#28,#12
	db #1d,#12,#1f,#12,#21,#12,#23,#12
	db #24,#12,#28,#12,#21,#12,#25,#12
	db #1a,#12,#24,#12,#1f,#12,#2b,#12
	db #24,#36,#25,#12,#37,#09,#34,#12
	db #37,#09,#34,#24,#37,#09,#34,#12
	db #37,#09,#34,#1b,#2d,#09,#30,#09
	db #32,#09,#34,#09,#30,#09,#32,#09
	db #34,#09,#32,#09,#30,#1b,#1f,#12
	db #13,#12,#1f,#09,#2b,#09,#37,#09
	db #34,#12,#37,#09,#34,#24,#37,#09
	db #34,#12,#37,#09,#34,#1b,#2d,#1b
	db #34,#12,#32,#09,#34,#12,#32,#1b
	db #37,#12,#36,#12,#35,#12,#37,#09
	db #34,#12,#37,#09,#34,#24,#37,#09
	db #34,#12,#37,#09,#34,#1b,#30,#1b
	db #32,#09,#30,#12,#32,#09,#30,#09
	db #32,#09,#34,#3f,#30,#09,#34,#09
	db #30,#09,#32,#09,#34,#09,#32,#09
	db #30,#09,#2e,#09,#34,#09,#35,#12
	db #34,#09,#32,#12,#30,#09,#2d,#09
	db #30,#09,#2b,#09,#37,#12,#39,#09
	db #32,#12,#32,#09,#30,#12,#30,#09
	db #34,#09,#37,#09,#3c,#24,#00,#04
	db #ff,#ff,#2b,#09,#37,#12,#33,#09
	db #34,#12,#32,#12,#30,#12,#28,#12
	db #29,#12,#2a,#12,#2b,#09,#30,#12
	db #2e,#09,#2f,#12,#2d,#12,#2b,#12
	db #37,#12,#39,#12,#3b,#12,#3c,#09
	db #3c,#12,#37,#09,#3b,#09,#39,#09
	db #37,#09,#34,#09,#37,#09,#39,#12
	db #37,#09,#34,#12,#30,#12,#30,#09
	db #34,#12,#30,#09,#2f,#12,#34,#09
	db #2d,#36,#30,#12,#2d,#09,#30,#09
	db #32,#09,#30,#09,#2d,#09,#30,#09
	db #32,#09,#30,#09,#2d,#09,#30,#09
	db #34,#12,#30,#09,#34,#24,#32,#09
	db #3c,#12,#3b,#12,#36,#09,#39,#12
	db #3e,#09,#37,#09,#3b,#09,#37,#09
	db #39,#09,#3b,#12,#37,#09,#3c,#09
	db #3c,#12,#37,#09,#3b,#09,#39,#09
	db #37,#09,#34,#09,#37,#09,#39,#12
	db #37,#09,#34,#12,#30,#12,#30,#09
	db #34,#12,#30,#09,#2f,#12,#34,#09
	db #2d,#36,#30,#12,#2d,#09,#30,#09
	db #32,#09,#30,#09,#2d,#09,#30,#09
	db #32,#09,#30,#09,#2d,#09,#30,#09
	db #34,#12,#30,#09,#34,#24,#2d,#09
	db #34,#1b,#2f,#09,#32,#12,#30,#12
	db #2b,#09,#2d,#09,#2f,#09,#30,#12
	db #2d,#12,#2f,#09,#35,#12,#32,#09
	db #34,#09,#32,#09,#2f,#09,#2b,#09
	db #2f,#09,#35,#12,#32,#09,#34,#09
	db #32,#09,#2f,#09,#2b,#09,#30,#09
	db #34,#12,#30,#09,#2d,#2d,#34,#12
	db #32,#09,#34,#09,#32,#09,#30,#09
	db #2d,#09,#2f,#09,#34,#12,#32,#09
	db #2f,#24,#1c,#12,#1d,#09,#1c,#12
	db #1a,#09,#18,#09,#17,#09,#30,#09
	db #34,#12,#30,#09,#2d,#2d,#34,#12
	db #32,#09,#34,#09,#32,#09,#30,#09
	db #2d,#09,#2f,#09,#35,#12,#32,#09
	db #34,#09,#32,#09,#2f,#09,#2b,#09
	db #2f,#09,#35,#12,#32,#09,#34,#09
	db #32,#09,#2f,#09,#2b,#09,#30,#09
	db #34,#12,#30,#09,#2d,#2d,#34,#12
	db #32,#09,#34,#09,#32,#09,#30,#09
	db #2d,#09,#30,#09,#32,#09,#30,#09
	db #2d,#09,#30,#09,#32,#09,#30,#09
	db #2d,#09,#30,#09,#34,#12,#30,#09
	db #34,#24,#2d,#09,#34,#1b,#2f,#09
	db #32,#12,#30,#1b,#37,#12,#37,#12
	db #2b,#12,#24,#12,#30,#12,#1f,#12
	db #1f,#12,#24,#12,#30,#12,#1f,#12
	db #28,#12,#1d,#12,#1f,#12,#21,#12
	db #23,#12,#24,#48,#24,#12,#30,#12
	db #1f,#12,#1f,#12,#24,#12,#30,#12
	db #1f,#12,#28,#12,#1a,#12,#2a,#12
	db #1a,#12,#2a,#12,#1f,#12,#1f,#12
	db #21,#12,#23,#12,#24,#12,#30,#12
	db #1f,#12,#1f,#12,#24,#12,#28,#12
	db #1f,#12,#28,#12,#1d,#12,#2d,#12
	db #1d,#12,#2d,#12,#1c,#12,#23,#12
	db #20,#12,#1c,#12,#24,#12,#22,#12
	db #21,#12,#1f,#12,#1d,#12,#26,#12
	db #1e,#12,#27,#12,#1f,#12,#2b,#12
	db #21,#12,#23,#12,#24,#12,#1f,#12
	db #18,#24,#00,#04,#ff,#ff,#35,#12
	db #3e,#1b,#3c,#09,#3a,#09,#39,#09
	db #37,#09,#35,#12,#33,#09,#32,#12
	db #30,#09,#2e,#09,#29,#24,#29,#24
	db #22,#12,#29,#12,#1d,#12,#29,#12
	db #22,#12,#2e,#12,#1d,#12,#32,#12
	db #22,#12,#32,#12,#1d,#12,#32,#12
	db #1b,#12,#2b,#12,#1b,#12,#2b,#12
	db #22,#12,#26,#12,#1d,#12,#26,#12
	db #22,#12,#26,#12,#1d,#12,#26,#12
	db #22,#12,#26,#12,#23,#12,#29,#12
	db #18,#12,#29,#12,#18,#12,#28,#12
	db #29,#12,#27,#12,#26,#12,#24,#12
	db #22,#12,#26,#12,#1d,#12,#26,#12
	db #22,#12,#26,#12,#1d,#12,#26,#12
	db #1b,#12,#27,#12,#27,#12,#27,#12
	db #26,#12,#21,#12,#1a,#24,#1b,#12
	db #27,#12,#1b,#12,#27,#12,#22,#12
	db #26,#12,#22,#12,#26,#12,#1d,#12
	db #27,#12,#1d,#12,#1d,#12,#22,#12
	db #1d,#12,#16,#24,#1d,#12,#27,#12
	db #21,#12,#27,#12,#18,#12,#27,#12
	db #18,#12,#19,#12,#1a,#12,#26,#12
	db #1d,#12,#26,#12,#22,#12,#26,#12
	db #1d,#12,#26,#12,#24,#12,#27,#12
	db #1d,#12,#27,#12,#24,#12,#27,#12
	db #1d,#12,#2d,#12,#22,#12,#26,#12
	db #1d,#12,#26,#12,#22,#12,#26,#12
	db #1d,#12,#26,#12,#1f,#12,#29,#12
	db #1f,#12,#29,#12,#26,#12,#29,#12
	db #1f,#12,#29,#12,#18,#12,#24,#12
	db #1b,#12,#27,#12,#18,#12,#24,#12
	db #1b,#24,#1c,#09,#1f,#09,#22,#09
	db #25,#09,#28,#09,#28,#12,#28,#12
	db #2b,#09,#2e,#09,#31,#09,#34,#24
	db #2e,#48,#1d,#12,#1d,#12,#22,#24
	db #00,#04,#ff,#ff,#29,#12,#32,#1b
	db #30,#09,#2e,#09,#2d,#09,#2b,#09
	db #29,#12,#27,#09,#26,#12,#24,#09
	db #22,#09,#2d,#09,#2e,#09,#30,#09
	db #32,#09,#33,#09,#35,#09,#37,#09
	db #39,#09,#3a,#48,#32,#12,#32,#24
	db #35,#12,#37,#09,#35,#12,#37,#09
	db #35,#09,#37,#09,#35,#12,#3c,#09
	db #3a,#12,#3c,#09,#3a,#09,#3c,#09
	db #3a,#09,#35,#1b,#29,#09,#2b,#09
	db #2d,#09,#2e,#09,#30,#09,#31,#09
	db #32,#12,#32,#24,#35,#12,#37,#09
	db #35,#12,#37,#09,#35,#09,#35,#09
	db #35,#12,#35,#09,#30,#12,#35,#09
	db #34,#09,#35,#09,#37,#12,#35,#2d
	db #29,#09,#2d,#09,#33,#09,#32,#12
	db #32,#24,#35,#12,#37,#09,#35,#12
	db #37,#09,#35,#09,#37,#09,#35,#12
	db #3c,#09,#3a,#12,#3c,#09,#3a,#09
	db #3a,#09,#3c,#09,#3e,#12,#32,#09
	db #36,#09,#39,#09,#3e,#12,#39,#09
	db #3a,#09,#3c,#09,#3a,#12,#3c,#09
	db #3a,#09,#3c,#09,#3a,#09,#35,#12
	db #37,#09,#35,#09,#33,#09,#32,#09
	db #35,#12,#35,#09,#35,#09,#33,#12
	db #35,#09,#33,#09,#32,#09,#30,#12
	db #2e,#24,#3a,#12,#29,#09,#2a,#09
	db #2b,#09,#2c,#09,#2d,#09,#30,#12
	db #35,#09,#33,#09,#30,#09,#2b,#09
	db #2c,#09,#2d,#09,#32,#12,#30,#09
	db #2b,#09,#2d,#09,#2e,#09,#29,#09
	db #2b,#09,#2d,#09,#2e,#09,#2f,#09
	db #30,#09,#31,#09,#32,#09,#31,#09
	db #32,#09,#37,#12,#35,#09,#30,#09
	db #32,#09,#33,#09,#3c,#12,#32,#09
	db #33,#09,#3c,#12,#32,#09,#33,#09
	db #3c,#12,#3a,#09,#39,#09,#37,#09
	db #35,#09,#33,#09,#32,#09,#3a,#12
	db #31,#09,#32,#09,#3a,#12,#30,#09
	db #32,#09,#3a,#12,#37,#09,#35,#09
	db #32,#09,#30,#09,#2e,#09,#2d,#09
	db #2e,#09,#2f,#09,#37,#12,#35,#09
	db #32,#09,#2e,#09,#2d,#09,#2e,#09
	db #2f,#09,#37,#12,#35,#09,#37,#09
	db #35,#09,#33,#09,#32,#09,#33,#09
	db #2b,#12,#2f,#09,#30,#09,#33,#09
	db #37,#09,#32,#09,#33,#09,#30,#12
	db #2b,#09,#27,#09,#24,#09,#25,#09
	db #28,#09,#2b,#09,#2e,#09,#31,#09
	db #31,#12,#31,#12,#34,#09,#37,#09
	db #3a,#09,#3d,#24,#3e,#09,#3a,#09
	db #35,#09,#32,#09,#32,#09,#2e,#09
	db #26,#09,#29,#09,#30,#09,#30,#12
	db #2e,#1b,#29,#12,#00,#04,#ff,#ff
	db #28,#09,#27,#09,#28,#09,#2a,#09
	db #2c,#12,#2d,#12,#28,#12,#28,#1b
	db #2a,#09,#26,#09,#23,#09,#21,#09
	db #20,#09,#21,#09,#23,#09,#25,#12
	db #26,#12,#1c,#12,#1c,#36,#21,#12
	db #31,#12,#1c,#12,#31,#12,#21,#12
	db #2d,#12,#25,#12,#31,#12,#1a,#12
	db #2a,#12,#1a,#12,#29,#12,#21,#12
	db #1c,#12,#1c,#24,#21,#12,#31,#12
	db #1e,#12,#25,#12,#23,#12,#34,#12
	db #20,#12,#34,#12,#1e,#12,#33,#12
	db #23,#12,#2d,#12,#28,#12,#23,#12
	db #1c,#24,#21,#12,#31,#12,#1c,#12
	db #31,#12,#21,#12,#2d,#12,#25,#12
	db #31,#12,#1a,#12,#2a,#12,#1a,#12
	db #29,#12,#21,#12,#1c,#12,#1c,#24
	db #20,#12,#25,#12,#19,#12,#25,#12
	db #1e,#12,#25,#12,#1b,#12,#24,#12
	db #1c,#12,#25,#12,#1c,#12,#26,#12
	db #21,#24,#21,#24,#2a,#09,#2d,#09
	db #32,#09,#34,#09,#36,#09,#39,#12
	db #36,#12,#35,#09,#36,#12,#37,#12
	db #36,#09,#32,#12,#31,#09,#32,#12
	db #32,#09,#32,#12,#32,#36,#2f,#09
	db #32,#09,#37,#09,#3b,#12,#3b,#12
	db #3b,#12,#3a,#12,#39,#1b,#36,#09
	db #32,#09,#34,#09,#36,#09,#32,#09
	db #31,#09,#3d,#09,#39,#09,#36,#12
	db #39,#09,#38,#09,#35,#09,#36,#24
	db #39,#24,#2a,#09,#2d,#09,#32,#09
	db #34,#09,#36,#09,#39,#12,#36,#12
	db #35,#09,#36,#12,#37,#12,#36,#09
	db #32,#12,#31,#09,#32,#12,#32,#09
	db #32,#12,#32,#36,#2f,#09,#32,#09
	db #37,#09,#3b,#12,#3b,#12,#3b,#12
	db #3a,#12,#39,#1b,#36,#09,#32,#09
	db #34,#09,#36,#12,#32,#24,#34,#09
	db #34,#12,#32,#1b,#2d,#09,#2f,#09
	db #31,#09,#32,#09,#34,#09,#36,#09
	db #34,#24,#39,#2d,#34,#09,#3d,#09
	db #34,#09,#37,#09,#3b,#09,#39,#09
	db #37,#09,#36,#09,#35,#09,#36,#09
	db #39,#2d,#32,#09,#35,#09,#38,#09
	db #3b,#09,#39,#09,#36,#09,#39,#09
	db #3e,#09,#3e,#12,#3d,#09,#3d,#12
	db #3c,#09,#3d,#12,#37,#2d,#34,#09
	db #37,#09,#3d,#09,#3d,#12,#3b,#09
	db #3b,#12,#3a,#09,#3b,#12,#36,#2d
	db #2d,#09,#32,#09,#36,#09,#34,#24
	db #39,#2d,#34,#09,#3d,#09,#34,#09
	db #37,#09,#3b,#09,#39,#09,#37,#09
	db #36,#09,#35,#09,#36,#09,#39,#12
	db #36,#09,#39,#12,#37,#2d,#2f,#09
	db #32,#09,#37,#09,#3b,#12,#3b,#12
	db #3b,#12,#3a,#12,#39,#1b,#36,#09
	db #32,#09,#34,#09,#36,#12,#32,#24
	db #34,#09,#34,#12,#32,#2d,#3e,#24
	db #00,#04,#ff,#ff,#34,#09,#33,#09
	db #34,#09,#36,#09,#38,#12,#39,#12
	db #34,#12,#34,#1b,#36,#09,#32,#09
	db #2f,#09,#2d,#09,#2c,#09,#2d,#09
	db #2f,#09,#31,#12,#32,#12,#28,#12
	db #28,#1b,#2d,#09,#2f,#09,#31,#09
	db #34,#24,#39,#24,#31,#09,#30,#09
	db #31,#09,#34,#12,#34,#12,#36,#09
	db #34,#09,#32,#12,#2d,#12,#2f,#12
	db #2d,#09,#31,#09,#2d,#09,#2a,#09
	db #28,#12,#2d,#09,#2f,#09,#31,#09
	db #34,#24,#39,#24,#38,#09,#37,#09
	db #38,#09,#3b,#12,#34,#09,#38,#09
	db #3b,#09,#3d,#09,#39,#09,#36,#09
	db #33,#12,#2f,#09,#31,#09,#33,#09
	db #34,#36,#2d,#09,#2f,#09,#34,#24
	db #39,#24,#31,#09,#30,#09,#31,#09
	db #34,#12,#34,#12,#36,#09,#34,#09
	db #32,#12,#2d,#12,#2f,#12,#2d,#09
	db #31,#09,#2d,#09,#2a,#09,#28,#12
	db #31,#09,#30,#09,#31,#09,#35,#24
	db #38,#1b,#3b,#09,#3b,#09,#39,#09
	db #38,#09,#39,#12,#39,#09,#38,#09
	db #36,#09,#36,#09,#34,#09,#33,#09
	db #34,#12,#32,#09,#2f,#09,#2c,#09
	db #2d,#24,#39,#24,#1a,#12,#2a,#12
	db #21,#12,#2e,#12,#25,#12,#2e,#12
	db #1e,#12,#2e,#12,#23,#12,#2f,#12
	db #21,#12,#30,#12,#1f,#12,#26,#12
	db #1a,#12,#26,#12,#1f,#12,#2b,#12
	db #2b,#12,#2c,#12,#21,#12,#2a,#12
	db #23,#12,#2a,#12,#25,#12,#2a,#12
	db #25,#12,#29,#12,#1e,#24,#28,#12
	db #21,#12,#1a,#12,#26,#12,#21,#12
	db #2e,#12,#25,#12,#2e,#12,#1e,#12
	db #28,#12,#23,#12,#2f,#12,#21,#12
	db #30,#12,#1f,#12,#26,#12,#1a,#12
	db #26,#12,#1f,#12,#2b,#12,#1f,#12
	db #20,#12,#21,#12,#2a,#12,#23,#12
	db #2a,#12,#28,#12,#23,#12,#21,#24
	db #1a,#48,#2d,#12,#2b,#12,#28,#12
	db #25,#12,#21,#12,#22,#12,#23,#12
	db #25,#12,#1a,#12,#2a,#12,#1e,#12
	db #2a,#12,#20,#24,#21,#24,#1c,#12
	db #37,#12,#21,#12,#37,#12,#25,#09
	db #24,#09,#23,#09,#22,#09,#21,#12
	db #1f,#12,#1a,#12,#36,#12,#21,#12
	db #36,#12,#26,#09,#25,#09,#23,#09
	db #22,#09,#21,#24,#21,#12,#1f,#12
	db #1c,#12,#25,#12,#21,#12,#22,#12
	db #23,#12,#25,#12,#25,#12,#26,#12
	db #1e,#12,#2a,#12,#1f,#12,#26,#12
	db #1a,#12,#2f,#12,#1f,#12,#32,#12
	db #1f,#12,#20,#12,#21,#12,#26,#12
	db #23,#12,#26,#12,#28,#12,#23,#12
	db #21,#24,#26,#12,#21,#12,#1a,#24
	db #00,#04,#ff,#ff,#1e,#12,#23,#12
	db #27,#12,#27,#12,#24,#12,#25,#12
	db #28,#12,#28,#12,#1e,#12,#23,#12
	db #27,#12,#27,#12,#24,#12,#25,#12
	db #28,#12,#28,#12,#1e,#12,#1f,#24
	db #1e,#12,#1e,#12,#1f,#24,#1e,#24
	db #0b,#09,#17,#09,#1a,#09,#23,#09
	db #17,#09,#23,#09,#26,#09,#2f,#09
	db #23,#24,#2f,#24,#32,#12,#32,#12
	db #32,#12,#32,#12,#33,#12,#33,#12
	db #33,#12,#33,#12,#32,#12,#32,#12
	db #33,#12,#33,#12,#33,#12,#34,#12
	db #33,#24,#26,#12,#26,#12,#26,#12
	db #26,#12,#27,#12,#27,#12,#27,#12
	db #27,#12,#26,#12,#26,#12,#27,#12
	db #27,#12,#27,#12,#28,#12,#27,#12
	db #17,#12,#1e,#12,#27,#12,#21,#12
	db #27,#12,#20,#12,#27,#12,#1e,#12
	db #1b,#12,#1c,#12,#23,#12,#23,#12
	db #23,#12,#20,#12,#23,#12,#1c,#12
	db #1d,#12,#1e,#12,#27,#12,#21,#12
	db #27,#12,#20,#12,#27,#12,#1e,#12
	db #1b,#12,#1c,#12,#23,#12,#23,#12
	db #23,#12,#20,#12,#23,#12,#1c,#12
	db #1b,#12,#19,#12,#25,#12,#1d,#12
	db #25,#12,#20,#12,#25,#12,#19,#12
	db #25,#12,#33,#12,#33,#12,#21,#12
	db #25,#12,#33,#12,#25,#12,#21,#12
	db #25,#12,#22,#09,#25,#12,#28,#09
	db #2b,#09,#28,#09,#25,#09,#22,#09
	db #23,#12,#2c,#12,#19,#12,#29,#12
	db #2a,#12,#33,#12,#23,#12,#23,#12
	db #1c,#12,#23,#12,#1c,#12,#1b,#12
	db #1c,#12,#23,#12,#23,#12,#1b,#12
	db #1c,#12,#23,#12,#25,#12,#26,#12
	db #1b,#12,#23,#12,#23,#12,#33,#12
	db #23,#12,#33,#12,#1e,#12,#24,#12
	db #25,#12,#1e,#12,#1e,#12,#24,#12
	db #25,#12,#28,#12,#1e,#12,#22,#12
	db #23,#12,#27,#12,#1e,#12,#27,#12
	db #23,#12,#1e,#12,#19,#12,#0f,#12
	db #1c,#12,#23,#12,#23,#12,#1b,#12
	db #1c,#12,#23,#12,#25,#12,#26,#12
	db #27,#12,#27,#12,#27,#12,#1e,#12
	db #23,#12,#1e,#12,#1e,#12,#1e,#12
	db #1c,#12,#1c,#12,#19,#12,#1d,#12
	db #1e,#12,#23,#12,#1e,#12,#1f,#12
	db #20,#12,#20,#12,#22,#12,#22,#12
	db #23,#12,#1e,#12,#17,#34,#00,#04
	db #ff,#ff,#00,#1b,#2f,#09,#36,#09
	db #2f,#09,#33,#09,#36,#12,#2e,#09
	db #36,#09,#2e,#09,#31,#09,#36,#36
	db #2f,#09,#36,#09,#2f,#09,#33,#09
	db #36,#12,#2e,#09,#36,#09,#2e,#09
	db #31,#09,#36,#24,#36,#12,#2f,#09
	db #32,#09,#37,#12,#36,#12,#36,#12
	db #2f,#09,#32,#09,#37,#12,#36,#6c
	db #2f,#09,#32,#09,#3b,#12,#3b,#09
	db #3e,#09,#47,#09,#47,#12,#47,#12
	db #47,#12,#47,#09,#47,#12,#42,#09
	db #44,#09,#3f,#09,#42,#09,#44,#12
	db #3b,#12,#3d,#09,#3e,#09,#3b,#09
	db #3d,#09,#3f,#12,#3b,#09,#3f,#09
	db #3b,#09,#3d,#12,#3b,#1b,#3b,#1b
	db #3b,#12,#3b,#12,#3b,#09,#3b,#12
	db #36,#09,#38,#09,#33,#09,#36,#09
	db #38,#12,#2f,#12,#31,#09,#32,#09
	db #2f,#09,#31,#09,#33,#12,#2f,#09
	db #33,#09,#2f,#09,#31,#12,#2f,#12
	db #3b,#12,#3b,#1b,#3b,#12,#36,#09
	db #31,#12,#3b,#1b,#3b,#12,#36,#09
	db #31,#09,#36,#09,#2f,#09,#34,#09
	db #2f,#09,#34,#09,#38,#09,#2f,#09
	db #34,#09,#38,#09,#31,#09,#34,#09
	db #38,#09,#2f,#12,#38,#09,#31,#09
	db #38,#09,#3b,#1b,#3b,#12,#36,#09
	db #31,#12,#3b,#1b,#3b,#12,#36,#09
	db #31,#09,#36,#09,#2f,#09,#34,#09
	db #2f,#09,#34,#09,#38,#09,#2f,#09
	db #34,#09,#38,#09,#31,#09,#34,#09
	db #38,#09,#2f,#12,#38,#09,#31,#09
	db #38,#09,#3d,#1b,#3d,#12,#38,#09
	db #33,#12,#3d,#1b,#3d,#12,#38,#09
	db #33,#09,#38,#12,#36,#09,#3d,#09
	db #36,#09,#39,#09,#3f,#12,#36,#09
	db #3d,#09,#36,#09,#39,#09,#3f,#12
	db #36,#09,#3d,#12,#40,#12,#40,#12
	db #3f,#12,#3d,#12,#38,#09,#35,#09
	db #36,#09,#39,#12,#31,#09,#38,#12
	db #38,#09,#35,#09,#36,#09,#38,#12
	db #33,#09,#36,#09,#34,#12,#34,#09
	db #38,#09,#3b,#09,#40,#24,#3b,#12
	db #38,#12,#3b,#12,#38,#12,#3b,#12
	db #3d,#09,#3f,#12,#3d,#09,#3b,#09
	db #38,#09,#36,#09,#38,#12,#33,#36
	db #36,#09,#38,#09,#33,#09,#36,#09
	db #38,#12,#33,#09,#36,#12,#38,#09
	db #31,#36,#34,#09,#38,#09,#31,#09
	db #34,#09,#38,#12,#33,#12,#36,#09
	db #38,#09,#33,#09,#36,#09,#38,#12
	db #33,#12,#36,#09,#38,#09,#33,#09
	db #36,#09,#38,#12,#36,#09,#3b,#12
	db #38,#12,#3b,#12,#38,#12,#3b,#12
	db #3d,#09,#3f,#12,#3d,#09,#3b,#09
	db #38,#09,#3b,#12,#38,#12,#36,#09
	db #3b,#12,#33,#12,#36,#09,#38,#09
	db #33,#09,#36,#09,#38,#12,#2f,#12
	db #31,#09,#2f,#12,#2f,#12,#31,#09
	db #2f,#12,#31,#09,#33,#09,#2f,#09
	db #31,#09,#33,#12,#2f,#12,#31,#09
	db #33,#09,#2f,#12,#31,#12,#2a,#09
	db #2f,#12,#36,#12,#3b,#36,#00,#04
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#50,#01,#02
	db #03,#52,#00,#00,#03,#21,#01,#00
	db #00,#00,#03,#12,#02,#01,#02,#01
	db #03,#03,#02,#03,#03,#00,#00,#0a
	db #00,#00,#03,#01,#05,#cf,#03,#00
	db #00,#01,#67,#cf,#03,#13,#67,#03
	db #03,#8b,#03,#03,#8a,#50,#01,#02
	db #03,#52,#00,#00,#03,#21,#01,#00
	db #00,#00,#03,#12,#02,#01,#20,#01
	db #03,#12,#02,#03,#03,#01,#03,#03
	db #02,#01,#12,#00,#03,#03,#01,#00
	db #03,#01,#67,#cf,#03,#13,#00,#03
	db #03,#8b,#03,#03,#22,#50,#01,#02
	db #03,#52,#00,#00,#03,#21,#01,#00
	db #00,#00,#03,#12,#02,#01,#20,#01
	db #03,#12,#02,#03,#03,#01,#03,#12
	db #02,#03,#12,#00,#03,#03,#01,#01
	db #03,#01,#23,#03,#03,#13,#03,#03
	db #03,#03,#03,#03,#23,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#02,#00,#03,#03,#01,#03
	db #03,#01,#03,#03,#02,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#02,#00,#03,#f5,#01,#03
	db #f0,#01,#03,#52,#aa,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#f0,#03
	db #03,#e5,#a0,#00,#f0,#f5,#01,#52
	db #f0,#01,#03,#52,#aa,#f0,#03,#03
	db #e5,#03,#03,#f0,#03,#03,#f0,#03
	db #03,#f0,#a0,#00,#f0,#f5,#01,#52
	db #f0,#01,#03,#52,#aa,#00,#00
	org #682e
	push ix
	push iy
	ld a,(#6f24)
	push af
	ld hl,#6eb7
	call #bcdd
	xor a
	ld (#6e16),a
	inc a
	ld (#6ec2),a
	ld (#6f24),a
	ld iy,#711b
	call #6e44
	xor a
	ld (#6e16),a
.l6852
	call l6879
	inc a
	cp #1b
	jr nz,l6852
.l685a
	dec a
	call l6879
	or a
	jr nz,l685a
.l6861
	call #bd19
	call #6e6f
	ld a,(#6ec2)
	or a
	jr nz,l6861
	call #bca7
	pop af
	ld (#6f24),a
	pop iy
	pop ix
	ret
.l6879
	push af
	ld c,a
	ld b,c
	push bc
	call #bd19
	call #bc38
	pop bc
	xor a
	call #bc32
	call #6e6f
	call #bd19
	call #6e6f
	pop af
	ret
	push ix
	push iy
	push hl
	push de
	push bc
	push af
	ld a,(#6f24)
	push af
	ld hl,#6eb7
	call #bcdd
	call #bca7
	xor a
	ld (#6e16),a
	inc a
	ld (#6f24),a
	ld (#6ec2),a
	ld iy,#70df
	call #6e44		; init game over music
.l68ba
	call #bd19
	call #6e6f
	ld a,(#6ec2)
	or a
	jr nz,l68ba
	call #bca7
	ld iy,(#6e14)
	ld hl,#6eb7
	ld de,#6e6f
	ld bc,#81ff
	call #bcd7
	ld a,#01
	ld (#6e16),a
	pop af
	ld (#6f24),a
	pop af
	pop bc
	pop de
	pop hl
	pop iy
	pop ix
	ret
;
.l56ad		; relocated by Megachur
	db #00	; theme #00 -> #03
;
; #68eb
; push ix
; push iy
; ld hl,#6eb7	; stop music interrupt
; call #bcdd
; call #bca7
; xor a			; game over sound !
; ld (#6e16),a
; inc a
; ld (#6f24),a
; ld (#6ec2),a
; ld iy,#6fcd
; call #6e44
; call #bb03
; .l690d
; call #bd19
; call #6e6f
; call #bb09
; jr c,l691e
; ld a,(#6ec2)
; or a
; jr nz,l690d
; .l691e
; call #bca7
; pop iy
; pop ix
; ret
;
.init_music
;
	ld (l56ad),a	; init theme
	jp real_init_music
;
.music_info
	db "Guzzler (1986)(Players)(Kevin Parker)",0
	db "",0

	read "music_end.asm"