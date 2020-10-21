; Music of The Further Adventures Of Fred - Nothing (1989)(Public Domain)(Sean McManus)()
; Ripped by Megachur the 01/09/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TFFAOFNO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8431
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

;
.init_music
;
	ld bc,l843a
	ld hl,l8463
	jp #bcd1
.l843a
	dw l8448
	jp l8472
	jp l8481
	jp l8469
	jp l846d
.l8448
	db #4d,#55,#53,#49,#43,#4f,#ce,#4d
	db #55,#53,#49,#43,#4f,#46,#c6,#52
	db #45,#50,#4f,#ce,#52,#45,#50,#4f
.l8467 equ $ + 7
.l8463 equ $ + 3
	db #46,#c6,#00,#fc,#a6,#3a,#84,#00
.l8468
	db #01
.l8469
	ld a,#01
	jr l846e
.l846d
	xor a
.l846e
	ld (l8467),a
	ret
;
.stop_music
.l8472
;
	call l8490
	ld hl,l87b6
	ld b,#81
	ld de,l84d7
	call #bcd7
	ret
.l8481
	ld hl,l87b6
	call #bcdd
	call #bca7
	ld a,#01
	ld (l8468),a
	ret
.l8490
	xor a
	ld (l8468),a
	call #bca7
	ld hl,l85b6
	ld a,#01
	ld b,#0f
.l849e
	push af
	push bc
	call #bcbc
	pop bc
	pop af
	inc a
	djnz l849e
	ld hl,l86a6
	ld a,#01
	ld b,#0f
.l84af
	push af
	push bc
	call #bcbf
	pop bc
	pop af
	inc a
	djnz l84af
.l84b9
	ld ix,l8587
	ld b,#03
.l84bf
	res 6,(ix+#00)
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#0b),l
	ld (ix+#0c),h
	ld de,#000d
	add ix,de
	djnz l84bf
	ret
.l84d7
	push ix
	push iy
	ld ix,l8587
	bit 6,(ix+#00)
	jr z,l8501
	bit 6,(ix+#0d)
	jr z,l8501
	bit 6,(ix+#1a)
	jr z,l8501
	ld a,(l8467)
	and a
	jr z,l84fc
	call l84b9
	jr l8501
.l84fc
	call l8481
	jr l8524
.l8501
	ld ix,l8587
	ld b,#03
	ld a,#01
.l8509
	ld (ix+#00),a
	push bc
	push af
	call #bcad
	bit 6,a
	jr nz,l851a
	bit 7,a
	call z,l8529
.l851a
	ld bc,#000d
	add ix,bc
	pop af
	add a
	pop bc
	djnz l8509
.l8524
	pop iy
	pop ix
	ret
.l8529
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	or (hl)
	dec hl
	ld a,(hl)
	jr nz,l853b
	set 6,(ix+#00)
	ret
.l853b
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	push hl
	ld a,(hl)
	and #0f
	ld (ix+#01),a
	ld (ix+#02),a
	add a
	ld e,a
	ld d,#00
	ld hl,l8796
	add hl,de
	ld a,(hl)
	ld (ix+#05),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	pop hl
	ld a,(hl)
	and #70
	srl a
	or (ix+#00)
	ld (ix+#00),a
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	push ix
	push ix
	pop hl
	call #bcaa
	pop ix
	ret
.l8587
	db #41,#0b,#0b,#b4,#00,#0d,#00,#80
	db #00,#bf,#87,#af,#88,#42,#09,#09
	db #b8,#01,#14,#00,#80,#00,#b1,#88
	db #a1,#89,#44,#0d,#0d,#10,#00,#01
	db #00,#80,#00,#a3,#89,#93,#8a,#d0
.l85b6 equ $ + 7
	db #03,#40,#04,#80,#00,#80,#00,#04
	db #01,#0f,#01,#03,#ff,#01,#05,#00
	db #01,#0c,#ff,#05,#00,#00,#00,#02
	db #03,#03,#03,#02,#02,#06,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #03,#fb,#05,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #0f,#ff,#0a,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #04,#fe,#02,#04,#02,#02,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #0f,#ff,#03,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #0f,#01,#01,#0f,#ff,#05,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #01,#0f,#02,#05,#fd,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #01,#0f,#02,#05,#fd,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #01,#0f,#02,#05,#fd,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#03
	db #01,#0f,#01,#04,#fe,#02,#07,#ff
	db #04,#00,#00,#00,#00,#00,#00,#02
	db #07,#02,#01,#0e,#ff,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #01,#0f,#01,#0f,#ff,#02,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #01,#0f,#02,#05,#fd,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #01,#0f,#02,#05,#fd,#04,#00,#00
.l86a6 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #07,#02,#01,#07,#fe,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #0f,#fe,#03,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#fe
	db #01,#4b,#01,#04,#19,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#fe
	db #01,#4b,#01,#04,#19,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #01,#9c,#01,#05,#19,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#fd
	db #01,#04,#02,#01,#f8,#02,#01,#04
	db #02,#00,#00,#00,#00,#00,#00,#fe
	db #04,#01,#01,#04,#ff,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#fe
	db #01,#4b,#01,#04,#19,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8796 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #00,#14,#00,#1f,#00,#0d,#00,#01
.l87b6 equ $ + 7
	db #00,#01,#00,#0f,#00,#0a,#00,#5c
	db #00,#00,#00,#00,#81,#d7,#84,#07
	db #10,#00,#00,#00,#6e,#10,#00,#10
	db #00,#6d,#10,#00,#b4,#00,#6b,#10
	db #00,#10,#00,#60,#10,#00,#10,#00
	db #60,#10,#00,#10,#00,#60,#10,#00
	db #10,#00,#60,#10,#00,#10,#00,#60
	db #10,#00,#10,#00,#60,#20,#00,#10
	db #00,#60,#10,#00,#10,#00,#60,#20
	db #00,#10,#00,#60,#10,#00,#10,#00
	db #60,#20,#00,#10,#00,#60,#10,#00
	db #10,#00,#60,#10,#00,#10,#00,#60
	db #10,#00,#10,#00,#60,#10,#00,#10
	db #00,#60,#10,#00,#10,#00,#60,#10
	db #00,#10,#00,#60,#20,#00,#10,#00
	db #60,#10,#00,#10,#00,#60,#20,#00
	db #10,#00,#60,#10,#00,#10,#00,#60
	db #20,#00,#10,#00,#60,#20,#00,#00
	db #00,#60,#10,#00,#38,#02,#61,#10
	db #00,#de,#01,#61,#10,#00,#38,#02
	db #61,#10,#00,#de,#01,#61,#10,#00
	db #fa,#01,#61,#10,#00,#de,#01,#61
	db #20,#00,#38,#02,#61,#10,#00,#7e
	db #02,#61,#20,#00,#38,#02,#61,#10
	db #00,#7e,#02,#61,#20,#00,#38,#02
	db #61,#10,#00,#38,#02,#61,#10,#00
	db #de,#01,#61,#10,#00,#38,#02,#61
	db #10,#00,#de,#01,#61,#10,#00,#fa
	db #01,#61,#10,#00,#de,#01,#61,#10
	db #00,#38,#02,#61,#20,#00,#66,#01
	db #47,#20,#00,#aa,#01,#47,#20,#00
	db #fa,#01,#47,#80,#00,#b4,#00,#4b
	db #00,#00,#10,#00,#b4,#00,#5b,#10
	db #00,#00,#00,#5e,#10,#00,#10,#00
	db #5d,#10,#00,#7e,#02,#57,#10,#00
	db #fa,#01,#57,#10,#00,#7e,#02,#52
	db #10,#00,#fa,#01,#52,#10,#00,#38
	db #02,#52,#10,#00,#fa,#01,#52,#20
	db #00,#7e,#02,#52,#10,#00,#cc,#02
	db #52,#20,#00,#7e,#02,#52,#10,#00
	db #cc,#02,#52,#20,#00,#7e,#02,#52
	db #10,#00,#7e,#02,#52,#10,#00,#fa
	db #01,#52,#10,#00,#7e,#02,#52,#10
	db #00,#fa,#01,#52,#10,#00,#38,#02
	db #52,#10,#00,#fa,#01,#52,#20,#00
	db #de,#01,#52,#10,#00,#7b,#01,#52
	db #20,#00,#66,#01,#52,#10,#00,#7b
	db #01,#52,#20,#00,#de,#01,#52,#20
	db #00,#cc,#02,#52,#10,#00,#7e,#02
	db #57,#10,#00,#fa,#01,#57,#10,#00
	db #7e,#02,#57,#10,#00,#fa,#01,#57
	db #10,#00,#38,#02,#57,#10,#00,#fa
	db #01,#57,#20,#00,#7e,#02,#57,#10
	db #00,#cc,#02,#57,#20,#00,#7e,#02
	db #57,#10,#00,#cc,#02,#57,#20,#00
	db #7e,#02,#57,#10,#00,#7e,#02,#57
	db #10,#00,#fa,#01,#57,#10,#00,#7e
	db #02,#57,#10,#00,#fa,#01,#57,#10
	db #00,#38,#02,#57,#10,#00,#fa,#01
	db #57,#20,#00,#7e,#02,#57,#20,#00
	db #7b,#01,#01,#20,#00,#de,#01,#01
	db #20,#00,#38,#02,#01,#80,#00,#b8
	db #01,#09,#00,#00,#10,#00,#10,#00
	db #3d,#10,#00,#b4,#00,#3b,#10,#00
	db #00,#00,#3e,#10,#00,#84,#03,#3a
	db #10,#00,#0e,#01,#38,#10,#00,#84
	db #03,#3a,#10,#00,#0e,#01,#38,#10
	db #00,#84,#03,#3a,#10,#00,#0e,#01
	db #38,#20,#00,#84,#03,#3a,#10,#00
	db #10,#00,#3d,#20,#00,#10,#00,#3d
	db #10,#00,#10,#00,#3d,#20,#00,#10
	db #00,#3d,#10,#00,#84,#03,#3a,#10
	db #00,#0e,#01,#38,#10,#00,#84,#03
	db #3a,#10,#00,#0e,#01,#38,#10,#00
	db #84,#03,#3a,#10,#00,#0e,#01,#38
	db #20,#00,#84,#03,#3a,#10,#00,#00
	db #00,#30,#20,#00,#00,#00,#30,#10
	db #00,#00,#00,#30,#20,#00,#00,#00
	db #30,#20,#00,#00,#00,#30,#10,#00
	db #84,#03,#3a,#10,#00,#0e,#01,#38
	db #10,#00,#84,#03,#3a,#10,#00,#0e
	db #01,#38,#10,#00,#84,#03,#3a,#10
	db #00,#0e,#01,#38,#20,#00,#84,#03
	db #3a,#10,#00,#0e,#01,#38,#20,#00
	db #84,#03,#3a,#10,#00,#0e,#01,#38
	db #20,#00,#84,#03,#3a,#10,#00,#0e
	db #01,#38,#10,#00,#84,#03,#3a,#10
	db #00,#0e,#01,#38,#10,#00,#84,#03
	db #3a,#10,#00,#0e,#01,#38,#10,#00
	db #84,#03,#3a,#10,#00,#0e,#01,#38
	db #20,#00,#84,#03,#1a,#20,#00,#10
	db #00,#1d,#20,#00,#b8,#01,#19,#80
	db #00,#10,#00,#1d,#00,#00,#00
;
.music_info
	db "The Further Adventures Of Fred - Nothing (1989)(Public Domain)(Sean McManus)",0
	db "",0

	read "music_end.asm"
