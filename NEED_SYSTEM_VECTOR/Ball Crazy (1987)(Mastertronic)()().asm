; Music of Ball Crazy (1987)(Mastertronic)()()
; Ripped by Megachur the 16/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BALLCRAZ.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6e00
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

.l6e07 equ $ + 7
.l6e00
	db #01,#0f,#00,#01,#03,#fe,#01,#01
.l6e0b equ $ + 3
	db #12,#00,#01,#02,#01,#00,#0d,#0a
.l6e12 equ $ + 2
	db #ff,#01,#02,#01,#00,#21,#0a,#ff
.l6e19 equ $ + 1
	db #01,#02,#01,#00,#4e,#0a,#ff,#02
.l6e27 equ $ + 7
.l6e20
	db #02,#01,#00,#9e,#0a,#ff,#02,#02
.l6e2e equ $ + 6
	db #02,#00,#9f,#0a,#ff,#02,#82,#01
.l6e35 equ $ + 5
	db #ff,#03,#01,#01,#03,#05,#0b,#1e
	db #01,#05,#0f,#01,#03,#00,#01,#0f
.l6e45 equ $ + 5
	db #ff,#01,#07,#e2,#01,#02,#19,#00
.l6e4d equ $ + 5
.l6e4c equ $ + 4
	db #01,#0c,#ff,#01,#00,#05,#05,#ff
	db #02,#05,#01,#02,#0a,#ff,#02,#05
.l6e5d equ $ + 5
	db #01,#02,#08,#ff,#02,#01,#0d,#ff
.l6e61 equ $ + 1
	db #01,#02,#3c,#00,#01,#0d,#ff,#04
.l6e6f equ $ + 7
.l6e68
	db #82,#14,#ff,#01,#0a,#01,#01,#05
	db #05,#ff,#06,#05,#01,#06,#0a,#ff
.l6e7f equ $ + 7
	db #06,#05,#01,#06,#08,#ff,#06,#01
.l6e83 equ $ + 3
	db #0e,#ff,#0c,#02,#19,#00,#01,#0e
.l6e8a equ $ + 2
	db #ff,#02,#83,#0a,#e2,#02,#08,#14
.l6e94 equ $ + 4
	db #02,#0a,#fb,#02,#82,#0a,#ff,#01
.l6e9c equ $ + 4
	db #02,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6ed7 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6edc equ $ + 4
.l6edb equ $ + 3
	db #00,#00,#00,#00,#00,#00
;
.init_music
.l6ede
;
	ld a,#00
	ld (l6e4c),a
	ld (l6ed7),a
	ld (l711f),a
	ld a,#01
	ld hl,l6e07
	call #bcbc
	ld a,#02
	ld hl,l6e0b
	call #bcbc
	ld a,#03
	ld hl,l6e12
	call #bcbc
	ld a,#04
	ld hl,l6e19
	call #bcbc
	ld a,#05
	ld hl,l6e20
	call #bcbc
	ld a,#06
	ld hl,l6e27
	call #bcbc
	ld a,#07
	ld hl,l6e00
	call #bcbc
	ld a,#02
	ld hl,l6e35
	call #bcbf
	ld a,#08
	ld hl,l6e45
	call #bcbc
	ld a,#01
	ld hl,l6e2e
	call #bcbf
	ld a,#09
	ld hl,l6e83
	call #bcbc
	ld a,#0c
	ld hl,l6e4d
	call #bcbc
	ld a,#0a
	ld hl,l6e5d
	call #bcbc
	ld a,#0b
	ld hl,l6e61
	call #bcbc
	ld a,#0d
	ld hl,l6e6f
	call #bcbc
	ld a,#0e
	ld hl,l6e7f
	call #bcbc
	ld a,#03
	ld hl,l6e68
	call #bcbf
	ld a,#04
	ld hl,l6e8a
	call #bcbf
	ld a,#05
	ld hl,l6e94
	call #bcbf
	jp l70de
;
.play_music_interrupt
;
	push hl
	push de
	push bc
	call l6ff2
	pop bc
	pop de
	pop hl
	ret
	dw l7121,l7123,l7125,l7127
	dw l7129,l712b,l712d,l712f
	dw l7131,l7133,l7135,l7137
	dw l7139,l713b,l713d,l713f
	dw l7141,l7143,l7145,l7147
	dw l7149,l714b,l714d,l714f
	dw l7151,l7153,l7155,l7157
	dw l7159,l715b,l715d,l715f
	dw l7161,l7163,l7165,l7167
	dw l7169,l716b,l716d,l716f
	dw l7171,l7173,l7175,l7177
	dw l7179,l717b,l717d,l717f
	dw l7181,l7183
;
;.play_music
.l6ff2
;
	ld a,(l6e4c)
	ld e,a
	sla e
	ld d,#00
	ld hl,(l711d)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	ld l,a
	inc de
	ld a,l
	cp #80
	jp z,l70de
	ld h,#00
	ld a,(de)
	ld (l6edc),a
	inc de
	ld de,l6e9c
	ld a,#04
	ld (de),a
	inc de
	ld a,(l6edc)
	ld (de),a
	inc de
	ld a,#01
	ld (de),a
	inc de
	ld a,l
	ld (de),a
	inc de
	ld a,h
	ld (de),a
	inc de
	ld a,#00
	ld (de),a
	inc de
	ld a,#0a
	ld (de),a
	inc de
	ld a,#00
	ld (de),a
	inc de
	ld a,#00
	ld (de),a
	inc de
	ld hl,l6e9c
	call #bcaa
	ret nc
	ld a,(l6e4c)
	inc a
	ld (l6e4c),a
	ret
	dw l717c,l717e,l7180,l7182
	dw l7184,l7186,l7188,l718a
	dw l718c,l718e,l7190,l7192
	dw l7194,l7196,l7198,l719a
	dw l719c,l719e,l71a0,l71a2
	dw l71a4,l71a6,l71a8,l71aa
	dw l71ac,l71ae,l71b0,l71b2
	dw l71b4,l71b6,l71b8,l71ba
	dw l71bc,l71be,l71c0,l71c2
	dw l71c4,l71c6,l71c8,l71ca
	dw l71cc,l71ce,l71d0,l71d2
	dw l71d4,l71d6,l71d8,l71da
	dw l71dc,l71de,l71dd,l71df
	dw l71e1,l71e3,l71e5,l71e7
	dw l71e9,l71eb,l71ed,l71ef
	dw l71f1,l71f3,l71f5,l71f7
	dw l71f9,l71fb,l71fd,l71ff
	dw l7201,l7203,l7205,l7207
	dw l7209,l720b,l720d,l720f
.l70de
	ld a,(l711f)
	ld e,a
	ld d,#00
	ld a,#00
	ld (l6e4c),a
	ld hl,l720e
	add hl,de
	ld a,(hl)
	cp #80
	jp z,l7110
	ld (l7120),a
	ld e,a
	sla e
	ld d,#00
	ld a,(l711f)
	inc a
	ld (l711f),a
	ld hl,l721b
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l711d),de
	jp l6ff2
.l7110		; reinit music
	ld a,#00
	ld (l711f),a
	ld a,#01
	ld (l6edb),a
	jp l70de
.l7123 equ $ + 6
.l7121 equ $ + 4
.l7120 equ $ + 3
.l711f equ $ + 2
.l711d
	db #00,#00,#00,#00,#77,#01,#5f,#01
.l712b equ $ + 6
.l7129 equ $ + 4
.l7127 equ $ + 2
.l7125
	db #50,#01,#77,#01,#5f,#01,#50,#01
.l7133 equ $ + 6
.l7131 equ $ + 4
.l712f equ $ + 2
.l712d
	db #77,#01,#5f,#01,#50,#01,#77,#01
.l713b equ $ + 6
.l7139 equ $ + 4
.l7137 equ $ + 2
.l7135
	db #5f,#01,#50,#01,#28,#01,#6a,#01
.l7143 equ $ + 6
.l7141 equ $ + 4
.l713f equ $ + 2
.l713d
	db #50,#01,#28,#01,#6a,#01,#50,#01
.l714b equ $ + 6
.l7149 equ $ + 4
.l7147 equ $ + 2
.l7145
	db #28,#01,#6a,#01,#50,#01,#28,#01
.l7153 equ $ + 6
.l7151 equ $ + 4
.l714f equ $ + 2
.l714d
	db #6a,#01,#50,#01,#2d,#01,#77,#01
.l715b equ $ + 6
.l7159 equ $ + 4
.l7157 equ $ + 2
.l7155
	db #59,#01,#2d,#01,#77,#01,#59,#01
.l7163 equ $ + 6
.l7161 equ $ + 4
.l715f equ $ + 2
.l715d
	db #28,#01,#6a,#01,#50,#01,#28,#01
.l716b equ $ + 6
.l7169 equ $ + 4
.l7167 equ $ + 2
.l7165
	db #6a,#01,#50,#01,#77,#01,#5f,#01
.l7173 equ $ + 6
.l7171 equ $ + 4
.l716f equ $ + 2
.l716d
	db #50,#01,#77,#01,#5f,#01,#50,#01
.l717c equ $ + 7
.l717b equ $ + 6
.l7179 equ $ + 4
.l7177 equ $ + 2
.l7175
	db #77,#01,#5f,#01,#50,#01,#80,#2d
.l7184 equ $ + 7
.l7183 equ $ + 6
.l7182 equ $ + 5
.l7181 equ $ + 4
.l7180 equ $ + 3
.l717f equ $ + 2
.l717e equ $ + 1
.l717d
	db #01,#28,#01,#20,#01,#2d,#01,#28
.l718c equ $ + 7
.l718a equ $ + 5
.l7188 equ $ + 3
.l7186 equ $ + 1
	db #01,#20,#01,#2d,#01,#28,#01,#20
.l7194 equ $ + 7
.l7192 equ $ + 5
.l7190 equ $ + 3
.l718e equ $ + 1
	db #01,#2d,#01,#28,#01,#20,#01,#2f
.l719c equ $ + 7
.l719a equ $ + 5
.l7198 equ $ + 3
.l7196 equ $ + 1
	db #01,#28,#01,#77,#01,#2f,#01,#28
.l71a4 equ $ + 7
.l71a2 equ $ + 5
.l71a0 equ $ + 3
.l719e equ $ + 1
	db #01,#77,#01,#2f,#01,#28,#01,#77
.l71ac equ $ + 7
.l71aa equ $ + 5
.l71a8 equ $ + 3
.l71a6 equ $ + 1
	db #01,#2f,#01,#28,#01,#77,#01,#3c
.l71b4 equ $ + 7
.l71b2 equ $ + 5
.l71b0 equ $ + 3
.l71ae equ $ + 1
	db #01,#20,#01,#6a,#01,#3c,#01,#20
.l71bc equ $ + 7
.l71ba equ $ + 5
.l71b8 equ $ + 3
.l71b6 equ $ + 1
	db #01,#6a,#01,#3c,#01,#20,#01,#6a
.l71c4 equ $ + 7
.l71c2 equ $ + 5
.l71c0 equ $ + 3
.l71be equ $ + 1
	db #01,#3c,#01,#20,#01,#6a,#01,#3c
.l71cc equ $ + 7
.l71ca equ $ + 5
.l71c8 equ $ + 3
.l71c6 equ $ + 1
	db #01,#5f,#01,#50,#01,#3c,#01,#5f
.l71d4 equ $ + 7
.l71d2 equ $ + 5
.l71d0 equ $ + 3
.l71ce equ $ + 1
	db #01,#50,#01,#3c,#01,#5f,#01,#50
.l71dc equ $ + 7
.l71da equ $ + 5
.l71d8 equ $ + 3
.l71d6 equ $ + 1
	db #01,#3c,#01,#5f,#01,#50,#01,#80
.l71e3 equ $ + 6
.l71e1 equ $ + 4
.l71df equ $ + 2
.l71de equ $ + 1
.l71dd
	db #3c,#01,#20,#01,#6a,#01,#3c,#01
.l71eb equ $ + 6
.l71e9 equ $ + 4
.l71e7 equ $ + 2
.l71e5
	db #20,#01,#6a,#01,#3c,#01,#20,#01
.l71f3 equ $ + 6
.l71f1 equ $ + 4
.l71ef equ $ + 2
.l71ed
	db #6a,#01,#3c,#01,#20,#01,#6a,#01
.l71fb equ $ + 6
.l71f9 equ $ + 4
.l71f7 equ $ + 2
.l71f5
	db #3c,#01,#5f,#01,#50,#01,#3c,#01
.l7203 equ $ + 6
.l7201 equ $ + 4
.l71ff equ $ + 2
.l71fd
	db #5f,#01,#50,#01,#3c,#01,#5f,#01
.l720b equ $ + 6
.l7209 equ $ + 4
.l7207 equ $ + 2
.l7205
	db #50,#01,#3c,#01,#5f,#01,#50,#01
.l720f equ $ + 2
.l720e equ $ + 1
.l720d
	db #80,#00,#01,#02,#02,#01,#00,#01
.l721b equ $ + 6
	db #02,#00,#02,#00,#01,#80,#8e

	ld l,a
	ld b,(hl)
	ld (hl),b
	xor d
	ld (hl),b
	ret
	ld a,(l6edb)
	cp #01
	ret nz
	ld a,(l711f)
	inc a
	ld (l711f),a
	cp #ff
	ret nz
	ld a,#00
	ld (l6edb),a
	ld (l711f),a
	ret
;
; #17f6
; call #6ede	; a= 0 init
;
.music_info
	db "Ball Crazy (1987)(Mastertronic)()",0
	db "",0

	read "music_end.asm"
