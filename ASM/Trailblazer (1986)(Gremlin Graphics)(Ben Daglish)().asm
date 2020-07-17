; Music of Trailblazer (1986)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 06/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TRAILBLA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #062e

	read "music_header.asm"

	db #30,#30,#3a,#30,#b0,#20,#20,#20
	db #20,#20,#20,#a0,#03,#05,#04,#00
	db #04,#00,#04,#05,#06,#05,#06,#05
	db #05,#07,#05,#05,#05,#00,#03,#00
	db #02,#00,#03,#00,#03,#05,#03,#05
	db #68,#4e,#00,#02,#17,#0b,#00,#00
	db #00,#00,#bb,#be,#c1,#c4,#c8,#cb
	db #ce,#d0,#d1,#d2,#d3,#d4,#b1,#b3
	db #b5
.l066f
	db #b7,#00,#ff

	ld a,#05
	ld (l0b1d),a
	ld (l0b46),a
	ld hl,l0694
	ld (l0bcd),hl
	ld (l0b6c),hl
	ld hl,l07e5
	ld (l0b66),hl
	ld (l0bcb),hl
	ld a,#01
	ld (l0bcf),a
	ld (l0bd0),a
.l0694
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#12,#15,#14
	db #14,#15,#0e,#12,#15,#14,#14,#15
	db #1a,#1e,#21,#20,#20,#21,#1a,#1e
	db #21,#20,#20,#21,#26,#2a,#2d,#2c
	db #2c,#2d,#26,#2a,#2d,#2c,#2c,#2d
	db #26,#25,#24,#23,#22,#21,#23,#22
	db #21,#20,#1f,#1e,#21,#20,#1f,#1e
	db #1d,#1c,#1a,#1a,#1a,#1a,#1a,#1a
	db #2b,#2a,#29,#28,#27,#26,#28,#27
	db #26,#25,#24,#23,#26,#25,#24,#23
	db #22,#21,#1f,#1f,#1f,#1f,#1f,#1f
	db #15,#15,#19,#18,#18,#19,#15,#15
	db #19,#18,#18,#19,#1a,#26,#2a,#29
	db #29,#2a,#1a,#26,#2a,#29,#29,#2a
	db #1c,#28,#2c,#2b,#2b,#2c,#1c,#28
	db #2c,#2b,#2b,#2c,#2d,#2c,#2b,#2a
	db #29,#28,#27,#26,#25,#24,#23,#22
	db #25,#21,#1c,#1c,#00,#25,#23,#20
	db #1c,#1c,#00,#23,#21,#1e,#1a,#1a
	db #00,#21,#20,#23,#28,#2c,#2d,#2f
	db #31,#2d,#28,#28,#00,#31,#2f,#2c
	db #28,#28,#00,#2f,#2d,#2a,#26,#26
	db #00,#2d,#2c,#28,#2a,#2c,#2d,#2f
	db #31,#31,#28,#28,#21,#21,#2f,#2f
	db #28,#28,#20,#20,#2d,#2d,#26,#26
	db #1e,#1e,#2c,#2c,#23,#23,#1c,#1c
	db #31,#31,#28,#28,#21,#21,#2f,#2f
	db #28,#28,#20,#20,#2d,#2d,#26,#26
	db #1e,#1e,#2c,#28,#2f,#32,#31,#2f
	db #25,#2d,#31,#30,#30,#31,#25,#2d
	db #31,#30,#30,#31,#23,#2c,#2f,#2e
	db #2e,#2f,#23,#2c,#2f,#2e,#2e,#2f
	db #25,#2d,#31,#30,#30,#31,#25,#2d
	db #31,#30,#30,#31,#23,#2c,#2f,#2e
	db #2e,#2f,#00,#2c,#2f,#32,#31,#2f
	db #31,#31,#28,#28,#28,#28,#28,#28
	db #21,#21,#21,#21,#00,#28,#2a,#2c
	db #2d,#2f,#2d,#2c,#2b,#2a,#29,#28
	db #27,#26,#25,#24,#23,#22,#21,#20
	db #1f,#1e,#1d,#1c,#00,#21,#1f,#1e
	db #1c,#1a,#00,#1f,#1e,#1c,#1a,#19
.l07e5
	db #ff,#02,#06,#09,#48,#48,#09,#02
	db #06,#09,#48,#48,#09,#02,#06,#09
	db #48,#48,#09,#02,#06,#09,#48,#48
	db #09,#02,#06,#09,#48,#48,#09,#02
	db #06,#09,#48,#48,#09,#02,#06,#09
	db #48,#48,#09,#02,#06,#09,#48,#48
	db #09,#02,#06,#09,#88,#88,#89,#02
	db #06,#09,#88,#88,#89,#02,#06,#09
	db #88,#88,#89,#82,#06,#09,#08,#08
	db #09,#07,#0b,#0e,#8d,#8d,#8e,#07
	db #0b,#0e,#8d,#8d,#8e,#07,#0b,#0e
	db #8d,#8d,#8e,#87,#0b,#0e,#0d,#0d
	db #0e,#09,#0d,#10,#4f,#4f,#10,#09
	db #0d,#10,#4f,#4f,#10,#0e,#12,#15
	db #54,#54,#15,#0e,#12,#15,#54,#54
	db #15,#10,#14,#17,#56,#56,#17,#10
	db #14,#17,#56,#56,#17,#00,#00,#00
	db #40,#00,#00,#00,#00,#00,#40,#00
	db #00,#0d,#09,#04,#8d,#89,#04,#0b
	db #08,#04,#8b,#88,#04,#09,#06,#02
	db #89,#86,#02,#08,#0b,#10,#94,#95
	db #17,#19,#15,#10,#99,#95,#10,#17
	db #14,#10,#97,#94,#10,#15,#12,#0e
	db #95,#92,#0e,#14,#10,#12,#94,#96
	db #17,#00,#2d,#2d,#25,#25,#1c,#1c
	db #2c,#2c,#23,#23,#1c,#1c,#2a,#2a
	db #21,#21,#1a,#1a,#28,#28,#a0,#a0
	db #97,#97,#2d,#2d,#25,#25,#1c,#1c
	db #2c,#2c,#23,#23,#1c,#1c,#2a,#2a
	db #21,#21,#1a,#00,#00,#20,#e3,#e1
	db #e0,#d9,#1c,#21,#60,#60,#21,#99
	db #1c,#21,#60,#60,#21,#97,#1c,#20
	db #5f,#5f,#20,#97,#1c,#20,#5f,#5f
	db #20,#99,#1c,#21,#60,#60,#21,#99
	db #1c,#21,#60,#60,#21,#97,#1c,#20
	db #5f,#5f,#20,#97,#1c,#1f,#63,#21
	db #20,#00,#2d,#2d,#2d,#2d,#25,#25
	db #25,#25,#25,#25,#1c,#1c,#1c,#1a
	db #17,#14,#10,#55,#55,#00,#00,#00
	db #00,#80,#80,#80,#80,#00,#00,#c0
	db #c0,#c0,#c0,#00,#00,#1a,#1a,#1a
	db #1a,#00,#00,#19,#19,#19,#19,#00
	db #05,#ff
.l0937
	push bc
	ld b,a
	ld a,c
	ld c,b
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	ret

	ld a,(#2dc5)
	or a
	ret nz
	ld a,(de)
	inc de
	ld (l097e),a
	ld (#2dbf),de
	ld a,#01
	ld (#2dc5),a
	ret

	ld c,#07
	ld a,(l0a51)
	and #f7
	ld (l0a51),a
	call l0937
	ld c,#06
.l097e equ $ + 1
	ld a,#1f
	call l0937
	ld a,(de)
	inc de
	push af
	ld a,(de)
	inc de
	ld (l09a4),a
	pop af
	ld (#2dbf),de
	inc a
	call z,l09ad
	call l09f5
.l0996
	ld c,#01
	ld a,d
	call l0937
	dec c
	ld a,e
	call l0937
	ld c,#08
.l09a4 equ $ + 1
	ld a,#00
	call l0937
	ld c,#0e
	jp l0937
.l09ad
	ld (#2dc5),a
	ld (l09a4),a
	inc a
	ret
	db #28,#0c,#26,#0c,#24,#0c,#21,#0c
	db #1e,#0c,#1a,#0c,#16,#0c,#12,#0c
	db #11,#0c,#10,#0c,#0f,#0c,#0e,#0c
	db #0d,#0c,#0c,#0c,#0b,#0c,#0b,#0c
	db #0a,#0c,#0a,#0c,#0a,#0c,#0a,#0c
	db #09,#0c,#ff,#05,#0c,#05,#0c,#05
	db #0c,#06,#0c,#06,#0c,#06,#0c,#07
	db #0c,#07,#0c,#07,#0c,#0c,#0c,#ff
.l09f5
	dec a
	jr z,l09fa
	add #0c
.l09fa
	ld hl,l0a52
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ret
	ld a,(#2dc6)
	or a
	ret nz
	ld (#2dc3),de
	ld a,#01
	ld (#2dc6),a
	ret
	ld a,(de)
	inc de
	push af
	ld a,(de)
	inc de
	ld (#2dc3),de
	ld (l09a4),a
	pop af
	inc a
	jr nz,l0a2c
	ld (#2dc6),a
	ld (l09a4),a
	inc a
.l0a2c
	call l09f5
	ld c,#0b
	xor a
	call l0937
	inc c
	ld a,#03
	call l0937
	inc c
	ld a,#09
	call l0937
	ld c,#07
	ld a,(l0a51)
	or #08
	ld (l0a51),a
	call l0937
	jp l0996
.l0a52 equ $ + 1
.l0a51
	jr c,l0a53
.l0a53
	db #00
	dw #04fc,#04b4,#0470,#0431
	dw #03f4,#03bc,#0386,#0353
	dw #0324,#02f6,#02cc,#02a4
	dw #027e,#025a,#0238,#0218
	dw #01fa,#01de,#01c3,#01aa
	dw #0192,#017b,#0166,#0152
	dw #013f,#012d,#011c,#010c
	dw #00fd,#00ef,#00e1,#00d5
	dw #00c9,#00be,#00b3,#00a9
	dw #009f,#0096,#008e,#0086
	dw #007f,#0077,#0071,#006a
	dw #0064,#005f,#0059,#0054
	dw #0050,#004b,#0047,#0043
	dw #003f,#003c,#0038,#0035
	dw #0032,#002f,#002d,#002a
	dw #0028,#0026,#0024,#0022
.l0ad4
	db #00
.l0ad5
	db #0e
.l0ad6	; play
	ld a,#26
;	call #2877 modified by Megachur
	defs 2,0
	ret
	jr nz,l0af2
	ld hl,l0ad5
	inc (hl)
	ld a,(hl)
	cp #0f
	jr nz,l0af7
	ld (hl),#00
;
.stop_music
;
	ld a,(l0ad4)
	xor #01
	ld (l0ad4),a
	jr l0af7
;
.l0af2
;
;
.play_music
.init_music
;
	ld a,#0e
	ld (l0ad5),a
;
.l0af7
;
	ld a,(l0ad4)
	or a
	jr z,l0b0d
	xor a
	ld c,#09
	call l0937
	xor a
	inc c
	call l0937
	ld c,#0e
	jp l0937
.l0b0d
	ld hl,(l0bcd)
	ld a,(l0bcf)
	dec a
	jr nz,l0b21
	ld a,#1a
	ld (l0bd1),a
	inc hl
.l0b1d equ $ + 1
	ld a,#05
	ld (l0bcd),hl
.l0b21
	ld (l0bcf),a
	ld a,(hl)
	and #3f
	ld hl,l0a52
	ld e,a
	ld d,#00
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	exx
	ld hl,(l0bcb)
	ld a,(l0bd0)
	dec a
	jr nz,l0b47
	ld a,#1a
	ld (l0bd2),a
	inc hl
	ld (l0bcb),hl
.l0b46 equ $ + 1
	ld a,#05
.l0b47
	ld (l0bd0),a
	ld a,(hl)
	cp #fe
	jr nz,l0b62
	ld hl,l066f
	ld (l0b66),hl
	ld (l0b6c),hl
	ld a,#02
	ld (l0b1d),a
	ld (l0b46),a
	jr l0b65
.l0b62
	inc a
	jr nz,l0b7c
.l0b66 equ $ + 1
.l0b65
	ld hl,l07e5
	ld (l0bcb),hl
.l0b6c equ $ + 1
	ld hl,l0694
	ld (l0bcd),hl
	ld a,#01
	ld (l0bcf),a
	ld (l0bd0),a
	jp l0ad6
.l0b7c
	dec a
	and #3f
	ld hl,l0a52
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld c,#07
	ld a,(l0a51)
	call l0937
	ld c,#04
	ld a,e
	call l0937
	inc c
	ld a,d
	call l0937
	exx
	ld c,#02
	ld a,e
	call l0937
	inc c
	ld a,d
	call l0937
	ld c,#09
	ld a,(l0bd1)
	dec a
	jr z,l0bb4
	ld (l0bd1),a
.l0bb4
	rra
	call l0937
	inc c
	ld a,(l0bd2)
	dec a
	jr z,l0bc2
	ld (l0bd2),a
.l0bc2
	rra
	call l0937
	ld c,#0e
	jp l0937
.l0bcb
	dw l07e5
.l0bd2 equ $ + 5
.l0bd1 equ $ + 4
.l0bd0 equ $ + 3
.l0bcf equ $ + 2
.l0bcd
	db #95,#06,#05,#01,#1a,#0f,#00,#68
	db #46,#00,#02,#1c,#11,#71,#57,#00
	db #02,#1c,#11,#00,#00,#00,#00
;
.music_info
	db "Trailblazer (1986)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
