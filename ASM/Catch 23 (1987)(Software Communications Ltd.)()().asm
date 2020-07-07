; Music of Catch 23 (1987)(Software Communications Ltd.)()()
; Ripped by Megachur the 18/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CATCH23.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #778a

	read "music_header.asm"

;
.init_music
;
	ld hl,#0001
	ld (l7b4a),hl
	dec hl
	ld (l77df),hl
	jp l781a		; modified by Megachur call l781a
.l7797
	call l77a8
	ei
	halt
	defs 3,0		; modified by Megachur call #48d4 ; keyboard test
	jr nc,l7797
	ld a,#07
	ld d,#3f
	jp l7bc3
;
.play_music
.l77a8
;
	ld hl,(l7b4a)
	dec hl
	ld (l7b4a),hl
	ld a,l
	or h
	ret nz
	ld hl,(l7b48)
	ld (l7b4a),hl
	call l77bc
	ret
.l77bc
	ld hl,l78a2
	ld de,#00e2
	xor a
	ld b,#03
.l77c5
	call l77e2
	inc a
	add hl,de
	djnz l77c5
	ld hl,(l77df)
	inc hl
	ld (l77df),hl
	ld a,(l77e1)
	inc a
	ret nz
	ld hl,#0000
	ld (l77df),hl
	ret
.l77e1 equ $ + 2
.l77df
	db #00,#00,#00
.l77e2
	push af
	push bc
	push de
	push hl
	push af
	ld de,(l77df)
	add hl,de
	ld a,(hl)
	ld (l77e1),a
	inc a
	jr z,l7814
	dec a
	ld b,#00
	ld c,a
	sla c
	ld ix,l783a
	add ix,bc
	pop af
	sla a
	ld d,(ix+#00)
	call l7bc3
	inc a
	ld d,(ix+#01)
	call l7bc3
	pop hl
	pop de
	pop bc
	pop af
	ret
.l7814
	pop af
	pop hl
	pop de
	pop bc
	pop af
	ret
;
.stop_music
.l781a
;
	ld hl,l782a
	ld a,#00
	ld b,#0e
.l7821
	ld d,(hl)
	inc hl
	call l7bc3
	inc a
	djnz l7821
	ret
.l782a
	db #00,#00,#00,#00,#00,#00,#00,#38
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l783a
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
	dw #003c,#0038,#0035,#ffff
.l78a2
	db #00,#00,#00,#0c,#00,#33,#00,#0a
	db #09,#00,#00,#0c,#00,#33,#00,#0a
	db #09,#00,#00,#0c,#00,#33,#00,#0a
	db #09,#00,#00,#0c,#00,#33,#00,#0a
	db #09,#00,#00,#0c,#00,#33,#00,#0a
	db #09,#00,#00,#0c,#00,#33,#00,#0a
	db #09,#00,#00,#0c,#00,#33,#00,#0a
	db #09,#00,#00,#0c,#00,#33,#00,#0a
	db #09,#02,#02,#0e,#02,#33,#02,#0c
	db #0b,#02,#02,#0e,#02,#33,#02,#0c
	db #0b,#02,#02,#0e,#02,#33,#02,#0c
	db #0b,#02,#02,#0e,#02,#33,#02,#0c
	db #0b,#05,#05,#11,#05,#33,#05,#0f
	db #0e,#04,#04,#10,#04,#33,#04,#10
	db #33,#02,#02,#0e,#02,#33,#02,#0e
	db #33,#02,#02,#0e,#02,#33,#02,#0e
	db #33,#05,#05,#11,#05,#33,#05,#11
	db #33,#04,#04,#10,#04,#33,#04,#10
	db #33,#02,#02,#0e,#02,#33,#02,#0e
	db #33,#02,#02,#0e,#02,#33,#02,#0e
	db #33,#02,#02,#0e,#02,#33,#02,#0c
	db #0b,#02,#02,#0e,#02,#33,#02,#0c
	db #0b,#02,#02,#0e,#02,#33,#02,#0c
	db #0b,#02,#02,#0e,#02,#33,#02,#0c
	db #0b,#05,#05,#11,#05,#33,#05,#11
	db #33,#04,#04,#10,#04,#33,#04,#10
	db #33,#02,#02,#0e,#02,#33,#02,#0e
	db #33,#02,#02,#0e,#02,#33,#02,#0e
	db #33,#ff,#33,#0c,#18,#13,#0c,#18
	db #13,#0c,#18,#0c,#18,#13,#0c,#1b
	db #1b,#1a,#1a,#0c,#18,#13,#0c,#18
	db #13,#0c,#18,#33,#18,#13,#0c,#1b
	db #1b,#1a,#1a,#0c,#18,#13,#0c,#18
	db #13,#0c,#18,#33,#18,#13,#0c,#1b
	db #1b,#1a,#1a,#0c,#18,#13,#0c,#18
	db #13,#0c,#18,#33,#18,#13,#0c,#1b
	db #1b,#1a,#1a,#33,#1a,#15,#0e,#1a
	db #15,#0e,#1a,#33,#1a,#15,#0e,#1d
	db #1d,#1c,#1c,#33,#1a,#15,#0e,#1a
	db #15,#0e,#1a,#33,#1a,#15,#0e,#1d
	db #1d,#1c,#1c,#11,#1d,#18,#11,#1d
	db #18,#11,#1d,#10,#1c,#17,#10,#1c
	db #17,#10,#1c,#0e,#1a,#15,#0e,#1a
	db #15,#0e,#1a,#0e,#1a,#15,#0e,#1d
	db #1d,#1c,#1c,#11,#1d,#18,#11,#1d
	db #18,#11,#1d,#10,#1c,#17,#10,#1c
	db #17,#10,#1c,#0e,#1a,#15,#0e,#1a
	db #15,#0e,#1a,#0e,#1a,#15,#0e,#1d
	db #1d,#1c,#1c,#0e,#1a,#15,#0e,#1a
	db #15,#0e,#1a,#0e,#1a,#15,#0e,#1d
	db #1d,#1c,#1c,#0e,#1a,#15,#0e,#1a
	db #15,#0e,#1a,#0e,#1a,#15,#0e,#1d
	db #1d,#1c,#1c,#11,#1d,#18,#11,#1d
	db #18,#11,#1d,#10,#1c,#17,#10,#1c
	db #17,#10,#1c,#0e,#1a,#15,#0e,#1a
	db #15,#0e,#1a,#0e,#1a,#15,#0e,#1a
	db #15,#0e,#1a,#ff,#33,#33,#33,#33
	db #33,#33,#33,#33,#33,#33,#33,#33
	db #33,#33,#33,#33,#33,#33,#33,#33
	db #33,#33,#33,#33,#33,#33,#33,#33
	db #33,#33,#33,#33,#33,#22,#22,#22
	db #22,#22,#22,#22,#22,#21,#21,#21
	db #21,#21,#21,#21,#21,#1f,#1f,#1f
	db #1f,#1f,#1f,#1f,#1f,#33,#33,#33
	db #33,#33,#33,#33,#33,#26,#26,#26
	db #26,#26,#26,#26,#26,#24,#24,#24
	db #24,#24,#24,#29,#29,#26,#26,#26
	db #26,#26,#26,#26,#26,#26,#26,#26
	db #26,#26,#26,#26,#33,#33,#29,#24
	db #2b,#2d,#29,#30,#2d,#26,#28,#29
	db #26,#2d,#29,#30,#2d,#24,#26,#26
	db #26,#26,#26,#26,#26,#33,#33,#33
	db #33,#33,#33,#33,#33,#33,#29,#26
	db #2b,#2d,#29,#30,#2d,#28,#29,#2b
	db #26,#2d,#29,#30,#2d,#30,#32,#32
	db #32,#32,#32,#32,#32,#33,#33,#33
	db #33,#33,#33,#33,#33,#2d,#26,#2b
	db #26,#29,#26,#28,#2d,#24,#26,#26
	db #24,#29,#29,#26,#24,#2d,#26,#2b
	db #26,#29,#26,#28,#2d,#24,#26,#26
	db #24,#2d,#2d,#30,#30,#32,#32,#32
	db #2d,#30,#30,#2d,#29,#2b,#2b,#29
	db #26,#29,#29,#2d,#2d,#24,#26,#26
	db #26,#26,#26,#26,#26,#33,#33,#33
	db #33,#33,#33,#33,#33,#ff
.l7b48
	db #30/6,#00            ; modified by Megachur #30
.l7b4a
	db #01,#00
	ld hl,l7b89
.l7b4f
	xor a
.l7b50
	ld d,(hl)
	inc hl
	call l7bc3
	inc a
	cp #0e
	jr nz,l7b50
	ret
	ld hl,l7b7a     ; sound fx ?
	jr l7b4f
	ld hl,l7b98
	jr l7b4f
	ld hl,l7ba7
	jr l7b4f
	ld hl,l7bb5
	jr l7b4f
	ld b,#0e
.l7b71
	ld d,#00
	ld a,b
	call l7bc3
	djnz l7b71
	ret
.l7b7a
	db #00,#00,#00,#00,#00,#00,#1e,#07
.l7b89 equ $ + 7
	db #00,#00,#14,#14,#14,#19,#00,#00
	db #00,#00,#00,#00,#00,#1e,#07,#00
.l7b98 equ $ + 6
	db #00,#14,#01,#01,#19,#00,#00,#00
	db #00,#00,#00,#00,#1e,#07,#00,#00
.l7ba7 equ $ + 5
	db #14,#0a,#0a,#19,#00,#0a,#04,#00
	db #00,#00,#00,#00,#08,#1f,#00,#00
.l7bb5 equ $ + 3
	db #01,#05,#09,#00,#00,#00,#03,#00
	db #00,#00,#10,#40,#1d,#00,#00,#05
	db #0a
.l7bc3
	push af
	push bc
	ld b,#f4
	out (c),a
	ld b,#f6
	ld a,#c0
	out (c),a
	xor a
	out (c),a
	ld b,#f4
	out (c),d
	ld a,#80
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	pop bc
	pop af
	ret
;
.music_info
	db "Catch 23 (1987)(Software Communications Ltd.)()",0
	db "",0

	read "music_end.asm"
