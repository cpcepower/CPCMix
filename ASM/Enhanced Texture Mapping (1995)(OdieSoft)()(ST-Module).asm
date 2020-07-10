; Music of Enhanced Texture Mapping (1995)(OdieSoft)()(ST-Module)
; Ripped by Megachur the 23/02/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ENHANCTM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #99e0

	read "music_header.asm"

	jp l99eb
	jp l9a73
	jp l9a57
	ld h,(hl)
	inc b
;
.init_music
.l99eb
;
	ld b,#03
	ld ix,l9dba
	ld iy,l9ce6
	ld de,#001c
.l99f8
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l99f8
	ld a,#05
	ld (l9a9b),a
	ld a,d
	ld (l9aaf),a
	inc a
	ld (l9a96),a
	ld a,#38
	ld (l9aa0),a
	ld a,#ff
	ld (l9ce2),a
	ld (l9ce3),a
	ld (l9ce4),a
	ld (l9ce5),a
	ld a,#0c
	ld c,d
	call l9cc4
	ld a,#0d
	ld c,d
	jp l9cc4
;
.stop_music
.l9a57
;
	ld a,#07
	ld c,#3f
	call l9cc4
	ld a,#08
	ld c,#00
	call l9cc4
	ld a,#09
	ld c,#00
	call l9cc4
	ld a,#0a
	ld c,#00
	jp l9cc4
;
.play_music
.l9a73
;
	ld hl,l9a96
	dec (hl)
	ld ix,l9dba
	ld bc,l9dc8
	call l9b29
	ld ix,l9dd6
	ld bc,l9de4
	call l9b29
	ld ix,l9df2
	ld bc,l9e00
	call l9b29
.l9a96 equ $ + 1
	ld a,#00
	or a
	jr nz,l9a9f
.l9a9b equ $ + 1
	ld a,#00
	ld (l9a96),a
.l9aa0 equ $ + 1
.l9a9f
	ld a,#00
	ld hl,l9ce3
	cp (hl)
	jr z,l9aae
	ld (hl),a
	ld c,a
	ld a,#07
	call l9cc4
.l9aaf equ $ + 1
.l9aae
	ld a,#00
	ld hl,l9ce2
	cp (hl)
	jr z,l9abd
	ld (hl),a
	ld c,a
	ld a,#06
	call l9cc4
.l9abe equ $ + 1
.l9abd
	ld a,#00
	ld hl,l9ce4
	cp (hl)
	jr z,l9acc
	ld (hl),a
	ld c,a
	ld a,#0b
	call l9cc4
.l9acd equ $ + 1
.l9acc
	ld a,#00
	ld hl,l9ce5
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l9cc4
.l9ada
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l9bda
.l9ae9
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l9cc4
.l9b03
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l9b18
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l9b18
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l9b3c
.l9b29
	ld a,(l9a96)
	or a
	jp nz,l9bda
	dec (ix+#06)
	jp nz,l9bda
	ld l,(ix+#00)
	ld h,(ix+#01)
.l9b3c
	ld a,(hl)
	or a
	jr z,l9ada
	cp #fe
	jr z,l9ae9
	cp #ff
	jr z,l9b03
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l9cec
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l9b78
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l9b78
	and #7f
	ld (ix+#06),a
	jr l9bcb
.l9b78
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l9b8c
	ld (ix+#05),a
	ld (ix+#0a),d
.l9b8c
	add a
	add a
	add a
	ld e,a
	ld hl,l9e22
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l9bcb
	cp #f0
	jp z,l9c80
	cp #d0
	jp z,l9c9c
	cp #b0
	jp z,l9ca4
	cp #80
	jp nc,l9cac
	cp #10
	jr nz,l9bcb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l9bcb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l9bda
	ld a,(ix+#17)
	or a
	jr nz,l9bee
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l9bee
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l9c19
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l9cec
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l9c19
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l9cc4
	ld c,h
	ld a,(ix+#03)
	call l9cc4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9c57
	and #0f
	sub (ix+#0a)
	jr nc,l9c4d
	xor a
.l9c4d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l9cc4
.l9c57
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l9c74
	ld b,a
	ld a,c
	ld (l9aaf),a
	ld a,b
	sub #40
.l9c74
	ld (l9c7b),a
	ld a,(l9aa0)
.l9c7b equ $ + 1
	bit 0,a
	ld (l9aa0),a
	ret
.l9c80
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l9ea2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l9bcb
.l9c9c
	inc hl
	ld a,(hl)
	ld (l9a9b),a
	jp l9bcb
.l9ca4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l9bcb
.l9cac
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l9acd),a
	inc hl
	ld a,(hl)
	ld (l9abe),a
	jp l9bcb
.l9cc4
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
	ret
.l9ce5 equ $ + 3
.l9ce4 equ $ + 2
.l9ce3 equ $ + 1
.l9ce2
	db #ff,#ff,#ff,#ff
.l9ce6
	dw la142,la16f,la19c
.l9cec
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
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
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9dba equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l9dc8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9dd6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l9de4 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9df2 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l9e00 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l9e22 equ $ + 4
	db #75,#6c,#65,#2e,#c2,#9e,#02,#9f
	db #22,#9f,#00,#00,#42,#9f,#82,#9f
	db #a2,#9f,#00,#00,#bc,#98,#bc,#98
	db #bc,#98,#00,#00,#bc,#98,#bc,#98
	db #bc,#98,#00,#00,#c2,#9f,#02,#a0
	db #22,#a0,#00,#00,#bc,#98,#bc,#98
	db #bc,#98,#00,#00,#42,#a0,#82,#a0
	db #a2,#a0,#00,#00,#c2,#9f,#c2,#a0
	db #22,#9f,#18,#07,#e2,#a0,#22,#a1
	db #22,#9f,#18,#07,#bc,#98,#bc,#98
	db #bc,#98,#00,#00,#bc,#98,#bc,#98
	db #bc,#98,#00,#00,#bc,#98,#bc,#98
	db #bc,#98,#00,#00,#bc,#98,#bc,#98
	db #bc,#98,#00,#00,#bc,#98,#bc,#98
	db #bc,#98,#00,#00,#bc,#98,#bc,#98
	db #bc,#98,#00,#00,#bc,#98,#bc,#98
.l9ea2 equ $ + 4
	db #bc,#98,#00,#00,#bc,#98,#bc,#98
	db #bc,#98,#bc,#98,#bc,#98,#bc,#98
	db #bc,#98,#bc,#98,#bc,#98,#bc,#98
	db #bc,#98,#bc,#98,#bc,#98,#bc,#98
	db #bc,#98,#bc,#98,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#80,#00
	db #40,#01,#a0,#01,#40,#02,#e8,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
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
	db #00,#00,#00,#00,#0e,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#38,#00,#60,#00
	db #b0,#00,#18,#01,#48,#01,#80,#01
	db #c8,#01,#10,#02,#58,#02,#b0,#02
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0c,#0b,#09,#07,#06,#03,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#05
	db #04,#04,#03,#02,#01,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#07,#06,#06
	db #06,#05,#05,#05,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0e,#0d,#0c,#0a
	db #08,#0a,#0c,#0e,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0c
.la142 equ $ + 4
	db #0c,#0c,#0c,#0c,#00,#c9,#a1,#00
	db #dc,#a1,#00,#ef,#a1,#00,#ff,#a1
	db #00,#ef,#a1,#00,#ff,#a1,#00,#0f
	db #a2,#00,#21,#a2,#00,#ef,#a1,#00
	db #ff,#a1,#00,#ef,#a1,#00,#ff,#a1
	db #00,#0f,#a2,#00,#2d,#a2,#80,#48
.la16f equ $ + 1
	db #a1,#00,#39,#a2,#00,#54,#a2,#00
	db #6f,#a2,#00,#90,#a2,#00,#6f,#a2
	db #00,#90,#a2,#00,#6f,#a2,#00,#b1
	db #a2,#00,#d2,#a2,#00,#f4,#a2,#00
	db #16,#a3,#00,#8f,#a3,#00,#0a,#a4
.la19c equ $ + 6
	db #00,#83,#a4,#80,#75,#a1,#00,#fc
	db #a4,#00,#17,#a5,#00,#32,#a5,#00
	db #56,#a5,#00,#32,#a5,#00,#56,#a5
	db #00,#32,#a5,#00,#56,#a5,#00,#7a
	db #a5,#00,#7a,#a5,#00,#7a,#a5,#00
	db #7a,#a5,#00,#7a,#a5,#00,#7a,#a5
	db #80,#a2,#a1,#45,#04,#17,#2d,#0c
	db #07,#2d,#86,#2d,#8a,#2b,#84,#2b
	db #8c,#2b,#86,#2b,#8a,#ff,#45,#04
	db #17,#29,#0c,#07,#29,#86,#29,#8a
	db #2b,#84,#2b,#8c,#2b,#86,#2b,#8a
	db #ff,#45,#16,#08,#48,#84,#47,#86
	db #43,#9a,#43,#82,#45,#82,#47,#82
	db #ff,#45,#18,#08,#4c,#84,#4c,#84
	db #4c,#8a,#4d,#82,#4c,#82,#4a,#92
	db #ff,#4c,#16,#08,#4c,#82,#4f,#82
	db #51,#84,#4f,#9c,#51,#82,#4f,#82
	db #51,#82,#ff,#00,#16,#51,#02,#08
	db #54,#82,#56,#86,#58,#a0,#ff,#00
	db #16,#51,#02,#08,#54,#82,#56,#86
	db #58,#a0,#ff,#2d,#04,#10,#45,#04
	db #07,#47,#88,#45,#84,#45,#86,#47
	db #88,#40,#84,#40,#84,#48,#84,#40
	db #84,#40,#84,#48,#8a,#ff,#29,#04
	db #17,#45,#04,#07,#47,#88,#45,#84
	db #45,#86,#47,#88,#40,#84,#40,#84
	db #48,#84,#40,#84,#40,#84,#48,#8a
	db #ff,#2d,#04,#10,#45,#04,#07,#47
	db #88,#45,#84,#45,#82,#2d,#84,#47
	db #88,#40,#82,#2b,#82,#40,#84,#48
	db #84,#40,#82,#2b,#82,#40,#84,#48
	db #8a,#ff,#29,#04,#17,#45,#04,#07
	db #47,#88,#45,#84,#45,#82,#29,#84
	db #47,#88,#40,#82,#2b,#82,#40,#84
	db #48,#84,#40,#82,#2b,#82,#40,#84
	db #48,#8a,#ff,#29,#04,#17,#45,#04
	db #07,#47,#88,#45,#84,#45,#82,#29
	db #84,#47,#88,#40,#82,#2b,#82,#40
	db #84,#48,#84,#40,#82,#2b,#82,#40
	db #84,#48,#8a,#ff,#2d,#04,#10,#2d
	db #08,#07,#3a,#04,#01,#2d,#06,#07
	db #2d,#86,#3a,#04,#01,#2b,#04,#07
	db #2b,#88,#3a,#04,#01,#2b,#06,#07
	db #2b,#86,#3a,#04,#01,#ff,#29,#04
	db #17,#29,#08,#07,#3a,#04,#01,#29
	db #06,#07,#29,#86,#3a,#04,#01,#2b
	db #04,#07,#2b,#88,#3a,#04,#01,#2b
	db #06,#07,#2b,#86,#3a,#04,#01,#ff
	db #2d,#02,#10,#ed,#04,#ed,#04,#2d
	db #02,#07,#ed,#04,#ed,#04,#ed,#04
	db #ed,#04,#ed,#04,#ed,#04,#ba,#01
	db #ed,#04,#ed,#04,#ed,#04,#2d,#02
	db #07,#ed,#04,#ed,#04,#ed,#04,#ed
	db #04,#2d,#02,#07,#ed,#04,#ed,#04
	db #ed,#04,#ed,#04,#ba,#01,#ed,#04
	db #ed,#04,#ed,#04,#2b,#02,#07,#ed
	db #04,#ed,#04,#2b,#02,#07,#ed,#04
	db #ed,#04,#ed,#04,#ed,#04,#ed,#04
	db #ed,#04,#ba,#01,#ed,#04,#ed,#04
	db #ed,#04,#2b,#02,#07,#ed,#04,#ed
	db #04,#ed,#04,#ed,#04,#2b,#02,#07
	db #ed,#04,#ed,#04,#ed,#04,#ed,#04
	db #ba,#01,#ed,#04,#ed,#04,#ed,#04
	db #ff,#29,#02,#17,#ed,#04,#ed,#04
	db #29,#02,#07,#ed,#04,#ed,#04,#ed
	db #04,#ed,#04,#ed,#04,#ed,#04,#ba
	db #01,#ed,#04,#ed,#04,#ed,#04,#29
	db #02,#07,#ed,#04,#ed,#04,#ed,#04
	db #ed,#04,#29,#02,#07,#ed,#04,#ed
	db #04,#ed,#04,#ed,#04,#ba,#01,#ed
	db #04,#ed,#04,#ed,#04,#2b,#02,#07
	db #ed,#04,#ed,#04,#2b,#02,#07,#ed
	db #04,#ed,#04,#ed,#04,#ed,#04,#ed
	db #04,#ed,#04,#ba,#01,#ed,#04,#ed
	db #04,#ed,#04,#d1,#01,#d1,#01,#d1
	db #01,#d1,#01,#cd,#01,#cd,#01,#cd
	db #01,#cd,#01,#ca,#01,#ca,#01,#ca
	db #01,#ca,#01,#c8,#01,#c8,#01,#c8
	db #01,#c8,#01,#ff,#2d,#02,#07,#dd
	db #04,#dd,#04,#2d,#02,#07,#dd,#04
	db #dd,#04,#ba,#01,#dd,#04,#ba,#01
	db #dd,#04,#ba,#06,#dd,#04,#dd,#04
	db #dd,#04,#2d,#02,#07,#dd,#04,#dd
	db #04,#ba,#06,#dd,#04,#2d,#02,#07
	db #ba,#01,#dd,#04,#ba,#01,#dd,#04
	db #ba,#06,#ba,#06,#dd,#04,#dd,#04
	db #2b,#02,#07,#dd,#04,#dd,#04,#2b
	db #02,#07,#dd,#04,#dd,#04,#ba,#01
	db #dd,#04,#ba,#01,#dd,#04,#ba,#06
	db #dd,#04,#dd,#04,#dd,#04,#2b,#02
	db #07,#dd,#04,#dd,#04,#ba,#06,#ba
	db #06,#2b,#02,#07,#ba,#01,#dd,#04
	db #ba,#01,#dd,#04,#ba,#06,#dd,#04
	db #dd,#04,#dd,#04,#ff,#29,#02,#07
	db #dd,#04,#dd,#04,#29,#02,#07,#dd
	db #04,#dd,#04,#ba,#01,#dd,#04,#ba
	db #01,#dd,#04,#ba,#06,#dd,#04,#dd
	db #04,#dd,#04,#29,#02,#07,#dd,#04
	db #dd,#04,#ba,#06,#dd,#04,#29,#02
	db #07,#ba,#01,#dd,#04,#ba,#01,#dd
	db #04,#ba,#06,#ba,#06,#dd,#04,#dd
	db #04,#2b,#02,#07,#dd,#04,#dd,#04
	db #2b,#02,#07,#dd,#04,#dd,#04,#ba
	db #01,#dd,#04,#ba,#01,#dd,#04,#ba
	db #06,#dd,#04,#dd,#04,#dd,#04,#2b
	db #02,#07,#dd,#04,#dd,#04,#ba,#06
	db #ba,#06,#2b,#02,#07,#ba,#01,#dd
	db #04,#ba,#01,#dd,#04,#ba,#06,#dd
	db #04,#dd,#04,#dd,#04,#ff,#00,#02
	db #40,#04,#17,#40,#04,#07,#48,#84
	db #40,#84,#40,#84,#48,#8e,#45,#84
	db #47,#88,#45,#84,#45,#86,#47,#86
	db #ff,#00,#02,#40,#04,#17,#40,#04
	db #07,#48,#84,#40,#84,#40,#84,#48
	db #8e,#45,#84,#47,#88,#45,#84,#45
	db #86,#47,#86,#ff,#45,#02,#07,#40
	db #02,#17,#2d,#02,#07,#40,#84,#48
	db #84,#40,#82,#2d,#82,#40,#84,#48
	db #8a,#2b,#84,#45,#84,#47,#88,#45
	db #84,#45,#82,#2b,#84,#47,#86,#ff
	db #45,#02,#07,#40,#02,#17,#29,#02
	db #07,#40,#84,#48,#84,#40,#82,#29
	db #82,#40,#84,#48,#8a,#2b,#84,#45
	db #84,#47,#88,#45,#84,#45,#82,#2b
	db #84,#47,#86,#ff,#45,#02,#07,#40
	db #02,#17,#45,#02,#07,#40,#82,#47
	db #82,#48,#84,#40,#82,#45,#82,#40
	db #82,#45,#82,#48,#84,#47,#88,#40
	db #82,#45,#82,#40,#82,#47,#82,#48
	db #84,#40,#82,#45,#82,#40,#82,#45
	db #82,#48,#84,#47,#86,#ff,#00,#00
;
.music_info
	db "Enhanced Texture Mapping (1995)(OdieSoft)()",0
	db "ST-Module",0

	read "music_end.asm"
