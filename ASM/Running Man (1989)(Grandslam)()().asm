; Music of Running Man (1989)(Grandslam)()()
; Ripped by Megachur the 09/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RUNNINGM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #6acd

	read "music_header.asm"

.l6acd
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
	ret
.l6aee equ $ + 6
.l6aea equ $ + 2
.l6ae8
	dw l6c46
	dw l6d48
	db #00,#00,#00
;
.play_music
.init_music	; no init
;
	ld a,(l6aee)
	inc a
	cp 8	;#32
	jr nz,l6afb
	call l6aff
	xor a
.l6afb
	ld (l6aee),a
	ret
.l6aff
	call l6b2e
	ld hl,(l6ae8)
	ld a,(hl)
	or a
	jr nz,l6b0f
	ld hl,l6c46
	ld (l6ae8),hl
.l6b0f
	ld a,(hl)
	cp #01
	jr nz,l6b1d
	ld a,#08
	ld d,#00
	call l6acd
	jr l6b26
.l6b1d
	call l6b5a
	ld hl,l6c36
	call l6b88
.l6b26
	ld hl,(l6ae8)
	inc hl
	ld (l6ae8),hl
	ret
.l6b2e
	ld hl,(l6aea)
	ld a,(hl)
	or a
	jr nz,l6b3b
	ld hl,l6d48
	ld (l6aea),hl
.l6b3b
	ld a,(hl)
	cp #01
	jr nz,l6b49
	ld a,#09
	ld d,#00
	call l6acd
	jr l6b52
.l6b49
	call l6b71
	ld hl,l6c3e
	call l6b88
.l6b52
	ld hl,(l6aea)
	inc hl
	ld (l6aea),hl
	ret
.l6b5a
	ld a,(hl)
	add a
	ld hl,l6bc0
	ld d,#00
	ld e,a
	add hl,de
	ld a,#00
	ld d,(hl)
	call l6acd
	inc hl
	ld a,#01
	ld d,(hl)
	call l6acd
	ret
.l6b71
	ld a,(hl)
	add a
	ld hl,l6bc0
	ld d,#00
	ld e,a
	add hl,de
	ld a,#02
	ld d,(hl)
	call l6acd
	inc hl
	ld a,#03
	ld d,(hl)
	call l6acd
	ret
.l6b88
	ld a,#06
	ld d,(hl)
	call l6acd
	inc hl
	ld a,#07
	ld d,(hl)
	call l6acd
	inc hl
	ld a,#08
	ld d,(hl)
	call l6acd
	inc hl
	ld a,#09
	ld d,(hl)
	call l6acd
	inc hl
	ld a,#0a
	ld d,(hl)
	call l6acd
	inc hl
	ld a,#0b
	ld d,(hl)
	call l6acd
	inc hl
	ld a,#0c
	ld d,(hl)
	call l6acd
	inc hl
	ld a,#0d
	ld d,(hl)
	call l6acd
	ret
.l6bc0
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
;
.stop_music     ;l6c20
;
	ld a,#08
	ld d,#00
	call l6acd
	ld a,#09
	ld d,#00
	call l6acd
	ld a,#0a
	ld d,#00
	call l6acd
	ret
.l6c36
	db #00,#3c,#1f,#1f,#00,#00,#10,#01
.l6c3e
	db #00,#3c,#1f,#1f,#00,#00,#05,#01
.l6c46
	db #15,#01,#01,#01,#01,#01,#11,#01
	db #13,#01,#10,#11,#01,#0c,#0e,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #15,#01,#01,#01,#01,#01,#11,#01
	db #13,#01,#10,#11,#01,#18,#16,#01
	db #15,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#11,#01
	db #13,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#11,#01,#10
	db #11,#01,#0e,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#11,#01
	db #13,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#11,#01,#13
	db #15,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #16,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#15,#13,#01
	db #11,#01,#0e,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #13,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#11,#01,#13
	db #15,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
.l6d48 equ $ + 2
	db #00,#00,#02,#02,#02,#09,#0c,#02
	db #0e,#02,#02,#02,#0e,#09,#0c,#02
	db #0e,#09,#02,#02,#02,#09,#0c,#02
	db #0e,#02,#02,#02,#0e,#09,#0c,#02
	db #0e,#09,#02,#02,#02,#09,#0c,#02
	db #0e,#02,#02,#02,#0e,#09,#0c,#02
	db #0e,#09,#02,#02,#02,#09,#0c,#02
	db #0e,#02,#02,#02,#0e,#09,#0c,#02
	db #0e,#09,#07,#07,#07,#0e,#11,#07
	db #13,#07,#07,#07,#13,#0e,#11,#07
	db #13,#0e,#02,#02,#02,#09,#0c,#02
	db #0e,#02,#02,#02,#0e,#09,#0c,#02
	db #0e,#09,#07,#07,#07,#0e,#11,#07
	db #13,#07,#07,#07,#13,#0e,#11,#07
	db #13,#0e,#09,#09,#09,#10,#13,#09
	db #15,#09,#09,#09,#15,#10,#13,#09
	db #15,#10,#07,#07,#07,#0e,#11,#07
	db #13,#07,#07,#07,#13,#0e,#11,#07
	db #13,#0e,#02,#02,#02,#09,#0c,#02
	db #0e,#02,#02,#02,#0e,#09,#0c,#02
	db #0e,#09,#07,#07,#07,#0e,#11,#07
	db #13,#07,#07,#07,#13,#0e,#11,#07
	db #13,#0e,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#02,#01,#01,#09,#0c,#01
	db #0e,#0c,#01,#0c,#01,#13,#0c,#01
	db #0e,#01,#03,#01,#01,#0a,#0d,#01
	db #0f,#0d,#01,#0d,#01,#14,#0d,#01
	db #0f,#01,#02,#01,#01,#09,#0c,#01
	db #0e,#0c,#01,#0c,#01,#13,#0c,#01
	db #0e,#01,#03,#01,#01,#0a,#0d,#01
	db #0f,#0d,#01,#0d,#01,#14,#0d,#01
	db #0f,#01,#00,#00
;
.music_info
	db "Running Man (1989)(Grandslam)()()Running Man (1989)(Grandslam)()",0
	db "",0

	read "music_end.asm"
