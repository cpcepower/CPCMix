; Music of Pub Trivia (1989)(Codemasters)()()
; Ripped by Megachur the 15/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PUBTRIVI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #9800
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"

;
.init_music
;
	push af
	call l99db
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l9fbe
	add hl,bc
	ld a,(hl)
	ld (l98d5),a
	ld (l9bb7),a
	inc hl
	ld ix,l985b
	ld c,#21
	ld a,#03
.l9821
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,l9821
	ld (l9b2e),a
	dec a
	ld (l9bb8),a
	ld (l9bb4),a
	ret
.l985b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.l987c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.l989d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
;
.play_music
;
	ld a,(l9bb4)
	ld hl,l9bb5
	or (hl)
	ret z
	call l9d7f
	ld a,(l9bb4)
	and a
	jr z,l9920
.l98d0 equ $ + 1
	ld a,#00
	ld (l991c),a
.l98d5 equ $ + 1
	ld a,#01
	ld hl,l9bb8
	add (hl)
	ld (hl),a
	jr nc,l98f4
	ld b,#00
	ld ix,l985b
	call l9a7f
	ld ix,l987c
	call l9a7f
	ld ix,l989d
	call l9a7f
.l98f4
	ld ix,l985b
	call l9afb
	ld (l9bb9),hl
	ld (l9bc1),a
	ld ix,l987c
	call l9afb
	ld (l9bbb),hl
	ld (l9bc2),a
	ld ix,l989d
	call l9afb
	ld (l9bbd),hl
	ld (l9bc3),a
.l991c equ $ + 1
	ld a,#00
	ld (l9bbf),a
.l9920
	ld a,(l9bb4)
	and a
	jr nz,l9936
	ld (l9bc1),a
	ld (l9bc2),a
	ld (l9bc3),a
	ld a,#3f
	ld (l9bc0),a
	jr l995e
.l9936
	ld a,(l9bb6)
	and #0f
	xor #0f
	jr z,l995e
	ld b,a
	ld a,(l9bc1)
	sub b
	jr nc,l9947
	xor a
.l9947
	ld (l9bc1),a
	ld a,(l9bc2)
	sub b
	jr nc,l9951
	xor a
.l9951
	ld (l9bc2),a
	ld a,(l9bc3)
	sub b
	jr nc,l995b
	xor a
.l995b
	ld (l9bc3),a
.l995f equ $ + 1
.l995e
	ld a,#00
	xor #ff
	ld (l995f),a
	ld a,(l9bb5)
	and a
	jr z,l998d
	ld hl,(l9bc6)
	ld (l9bb9),hl
	ld a,(l9f90)
.l9974
	ld b,a
	bit 3,a
	jr nz,l997f
	ld a,(l9bcc)
	ld (l9bbf),a
.l997f
	ld hl,l9bc0
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l9bce)
	ld (l9bc1),a
.l998d
	ld hl,l9bc3
	ld d,#0a
.l9992
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l9992
	ret
.l99b3
	ld de,#0a00
.l99b6
	call l99c0
	dec d
	jp p,l99b6
	ld de,#073f
.l99c0
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	ret
;
.stop_music
.l99db
;
	xor a
	ld (l9bb4),a
	call l99ed
	xor a
	ld (l9bc1),a
	ld (l9bc2),a
	ld (l9bc3),a
	ret
.l99ed
	xor a
	ld (l9bb5),a
	jp l99b3
	db #82,#76,#6f,#00,#00,#00,#00,#0e
	db #5c,#4d,#38,#00,#00,#6f,#03,#00
	db #4d
	pop hl
	jp l99db
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l9a2b
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l9a2b
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l9a8c
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,l9b99
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l9a8c
	ld a,(de)
	inc de
	ld (l9b2e),a
	jr l9a8c
	ld a,(de)
	inc de
	ld (ix+#1f),a
	jr l9a8c
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l9a8c
	ld (ix+#1d),b
	jr l9a8c
	set 1,(ix+#00)
	jr l9a8c
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l9abb
.l9a7f
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l9a8c
	ld a,(de)
	inc de
	and a
	jp m,l9ac8
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l9a9e
	ld (l98d0),a
.l9a9e
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
	set 5,(ix+#00)
.l9abb
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l9ac8
	cp #c0
	jr c,l9af3
	add #20
	jr c,l9ad4
	add #10
	jr c,l9adb
.l9ad4
	inc a
	ld (ix+#11),a
	jp l9a8c
.l9adb
	ld hl,l9c36
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp l9a8c
.l9af3
	ld hl,l9974
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l9afb
	ld c,(ix+#00)
	bit 5,c
	jr z,l9b2d
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l9b27
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l9b27
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l9b27
	ld a,(ix+#18)
	ld (ix+#13),a
.l9b2e equ $ + 1
.l9b2d
	ld a,#00
	add (ix+#12)
	add (ix+#1f)
	ld hl,l9bba
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l9b8f
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l9b58
	bit 0,c
	jr nz,l9b76
.l9b58
	bit 5,l
	jr nz,l9b68
	sub (ix+#1b)
	jr nc,l9b73
	set 5,(ix+#1d)
	sub a
	jr l9b73
.l9b68
	add (ix+#1b)
	cp b
	jr c,l9b73
	res 5,(ix+#1d)
	ld a,b
.l9b73
	ld (ix+#1c),a
.l9b76
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l9b81
	dec d
.l9b81
	add #a0
	jr c,l9b8d
.l9b85
	sla e
	rl d
	add #18
	jr nc,l9b85
.l9b8d
	add hl,de
	ex de,hl
.l9b8f
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.l9b99 equ $ + 1
	ld a,#38
	jr nz,l9ba6
	ld a,(l98d0)
	xor #08
	ld (l991c),a
	ld a,#07
.l9ba6
	ld hl,l9bc0
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l9bbb equ $ + 7
.l9bba equ $ + 6
.l9bb9 equ $ + 5
.l9bb8 equ $ + 4
.l9bb7 equ $ + 3
.l9bb6 equ $ + 2
.l9bb5 equ $ + 1
.l9bb4
.music_end
	db #00,#00,#0f,#00,#00,#00,#00,#00
.l9bc3 equ $ + 7
.l9bc2 equ $ + 6
.l9bc1 equ $ + 5
.l9bc0 equ $ + 4
.l9bbf equ $ + 3
.l9bbd equ $ + 1
	db #00,#00,#00,#00,#3f,#0f,#0f,#0f
.l9bc7 equ $ + 3
.l9bc6 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9bce equ $ + 2
.l9bcc
	db #00,#3f,#00,#00,#00,#00
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038
.l9c36
	dw l9c57,l9c5f,l9c6a,l9c7c
	dw l9c8e,l9c95,l9c9c,l9cb1
	dw l9cba,l9ccb,l9cdc,l9cec
	dw l9cfd,l9d0e,l9d1f,l9d22
.l9c57 equ $ + 1
	db #01,#0f,#0d,#0b,#08,#05,#02,#87
.l9c5f equ $ + 1
	db #01,#0d,#0b,#09,#07,#05,#04,#03
.l9c6a equ $ + 4
	db #02,#01,#87,#01,#0f,#0e,#0d,#0b
	db #0d,#0c,#0a,#09,#0b,#0a,#08,#07
.l9c7c equ $ + 6
	db #09,#08,#06,#05,#87,#01,#0f,#0f
	db #0d,#0b,#0d,#0c,#0a,#09,#0b,#0a
	db #08,#07,#09,#08,#06,#05,#87,#01
.l9c95 equ $ + 7
.l9c8e
	db #0f,#0e,#0d,#0c,#0b,#87,#01,#0e
.l9c9c equ $ + 6
	db #0d,#0c,#0b,#0a,#87,#01,#0e,#0d
	db #0c,#0b,#0a,#09,#01,#08,#01,#07
	db #01,#06,#01,#05,#01,#04,#01,#02
.l9cb1 equ $ + 3
	db #01,#87,#04,#08,#09,#0a,#0b,#0c
.l9cba equ $ + 4
	db #0d,#0e,#87,#05,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l9ccb equ $ + 5
	db #03,#02,#01,#87,#08,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l9cdc equ $ + 6
	db #04,#03,#02,#01,#87,#04,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l9cec equ $ + 6
	db #04,#03,#02,#01,#87,#04,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l9cfd equ $ + 7
	db #05,#04,#03,#02,#01,#87,#02,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#01
.l9d0e
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.l9d22 equ $ + 4
.l9d1f equ $ + 1
	db #01,#0e,#87,#01,#0f,#87
	ld hl,l9bb5
	ld (hl),#00
	ld hl,l9e39
	add a
	add l
	ld l,a
	jr nc,l9d32
	inc h
.l9d32
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l9f8a
.l9d3a
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l9d3a
	ld a,(l9f8b)
	ld (l9f98),a
	ld hl,(l9f8c)
	ld (l9bc6),hl
	ld a,(l9f90)
	bit 3,a
	jr nz,l9d57
	ld a,l
	ld (l9bcc),a
.l9d57
	ld a,(l9f95)
	ld (l9f99),a
	ld a,(l9f97)
	ld (l9f9e),a
	ld a,(l9f94)
	ld hl,l9f09
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l9f9a),hl
	ld (l9f9c),hl
	ld a,(hl)
	ld (l9bce),a
	ld hl,l9bb5
	inc (hl)
	ret
.l9d7f
	call l9f9f
	ld a,(l9bb5)
	and a
	ret z
	ld a,(l9f8a)
	and a
	jr nz,l9d97
	ld a,(l9f96)
	and a
	jr nz,l9d97
	ld (l9bb5),a
	ret
.l9d97
	dec a
	ld (l9f8a),a
	ld a,(l9f98)
	and a
	jr nz,l9dcf
	ld a,(l9f96)
	and a
	jr nz,l9dad
	ld a,(l9f93)
	and a
	jr z,l9e11
.l9dad
	dec a
	ld (l9f93),a
	ld a,(l9f8b)
	ld (l9f98),a
	ld a,(l9f91)
	and a
	jr z,l9dc0
	ld a,(l9fba)
.l9dc0
	ld b,a
	ld a,(l9f8c)
	add b
	ld (l9bc6),a
	ld a,(l9f8d)
	add b
	ld (l9bc7),a
.l9dcf
	ld hl,l9f98
	dec (hl)
	ld hl,l9f97
	ld a,(hl)
	and a
	jr z,l9de1
	ld hl,l9f9e
	dec (hl)
	jr nz,l9e04
	ld (hl),a
.l9de1
	ld a,(l9f92)
	and a
	jr z,l9e04
	jp p,l9df7
	ld hl,(l9bc6)
	ld de,(l9f8e)
	add hl,de
	ld (l9bc6),hl
	jr l9e04
.l9df7
	ld hl,(l9bc6)
	ld de,(l9f8e)
	and a
	sbc hl,de
	ld (l9bc6),hl
.l9e04
	ld a,(l9f90)
	bit 3,a
	jr nz,l9e11
	ld a,(l9bc6)
	ld (l9bcc),a
.l9e11
	ld a,(l9f99)
	dec a
	ld (l9f99),a
	jr nz,l9e38
	ld a,(l9f95)
	ld (l9f99),a
	ld hl,(l9f9c)
	ld a,(hl)
	inc hl
	and a
	jp p,l9e32
	cp #80
	jr nz,l9e38
	ld hl,(l9f9a)
	ld a,(hl)
	inc hl
.l9e32
	ld (l9f9c),hl
	ld (l9bce),a
.l9e38
	ret
.l9e39
	dw l9e53,l9e61,l9e6f,l9e7d
	dw l9e8b,l9e99,l9ea7,l9eb5
	dw l9ec3,l9ed1,l9edf,l9eed
	dw l9efb
.l9e53
	db #05,#ff,#1f,#00,#01,#00,#f7,#00
.l9e61 equ $ + 6
	db #01,#63,#04,#01,#00,#00,#19,#06
	db #e0,#05,#36,#00,#fe,#00,#ff,#63
.l9e6f equ $ + 4
	db #06,#02,#00,#00,#08,#63,#09,#05
	db #11,#00,#f6,#00,#ff,#00,#08,#01
.l9e7d equ $ + 2
	db #00,#00,#0a,#02,#00,#06,#20,#00
	db #fe,#00,#01,#63,#08,#01,#00,#00
.l9e8b
	db #04,#0f,#0f,#01,#19,#00,#f6,#00
.l9e99 equ $ + 6
	db #ff,#00,#08,#01,#00,#00,#14,#02
	db #78,#00,#01,#00,#fe,#00,#01,#63
.l9ea7 equ $ + 4
	db #00,#01,#00,#00,#14,#02,#ef,#00
	db #77,#00,#fe,#00,#01,#63,#00,#02
.l9eb5 equ $ + 2
	db #00,#00,#0f,#63,#18,#00,#01,#00
	db #f7,#00,#ff,#63,#00,#02,#00,#04
.l9ec3
	db #1e,#02,#20,#00,#01,#00,#fe,#00
.l9ed1 equ $ + 6
	db #01,#63,#08,#02,#00,#00,#28,#02
	db #00,#03,#00,#03,#fe,#00,#ff,#02
.l9edf equ $ + 4
	db #00,#02,#00,#06,#0b,#05,#0f,#00
	db #04,#00,#f6,#00,#01,#0a,#00,#01
.l9eed equ $ + 2
	db #00,#00,#11,#05,#c7,#00,#20,#00
	db #f6,#00,#ff,#63,#00,#01,#00,#00
.l9efb
	db #0f,#63,#f0,#00,#21,#00,#fe,#00
	db #ff,#63,#00,#01,#00,#00
.l9f09
	dw l9f1b,l9f2b,l9f44,l9f54
	dw l9f5c,l9f61,l9f67,l9f69
	dw l9f7b
.l9f1b
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l9f2b
	db #06,#08,#0a,#0b,#0c,#0d,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l9f44 equ $ + 1
	db #ff,#06,#08,#0a,#0b,#0c,#0d,#0c
	db #0b,#0a,#08,#06,#04,#03,#02,#01
.l9f54 equ $ + 1
	db #ff,#0d,#0b,#09,#07,#05,#04,#03
.l9f61 equ $ + 6
.l9f5c equ $ + 1
	db #ff,#01,#04,#07,#0a,#80,#01,#03
.l9f69 equ $ + 6
.l9f67 equ $ + 4
	db #06,#08,#0a,#80,#0b,#80,#0f,#0f
	db #0e,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l9f7b
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
.l9f8a equ $ + 7
	db #06,#05,#04,#03,#02,#01,#ff,#00
.l9f92 equ $ + 7
.l9f91 equ $ + 6
.l9f90 equ $ + 5
.l9f8e equ $ + 3
.l9f8d equ $ + 2
.l9f8c equ $ + 1
.l9f8b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9f9a equ $ + 7
.l9f99 equ $ + 6
.l9f98 equ $ + 5
.l9f97 equ $ + 4
.l9f96 equ $ + 3
.l9f95 equ $ + 2
.l9f94 equ $ + 1
.l9f93
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9f9e equ $ + 3
.l9f9c equ $ + 1
	db #00,#00,#00,#00
.l9f9f
	ld a,(l9fba)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l9fbd
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l9fbd equ $ + 3
.l9fba
	db #ff,#80,#1b,#34
.l9fbe
	db #2a
	dw l9ff3,l9fe1,la017
	db #2c
	dw la120,la11e,la122
	db #2c
	dw la153,la151,la155
	db #2a
	dw la1a5,la1a3,la1a7
	db #18
	dw la1c7,la1c5,la1c9
.l9fe1
	dw la03d,la03d,la03d,la03d
	dw la03d,la053,la03d,la03d
	dw #0000
.l9ff3
	dw la074,la089,la089,la089
	dw la089,la089,la089,la089
	dw la089,la0ad,la0ad,la09c
	dw la09c,la089,la089,la089
	dw la089,#0000
.la017
	dw la0be,la0d3,la0d3,la0f7
	dw la0d3,la1f8,la0be,la0d3
	dw la0d3,la0f7,la0d3,la1fb
	dw la0be,la0d3,la0d3,la0f7
	dw la0d3,la1f5,#0000
.la03d
	db #8a,#88,#01,#01,#d3,#e3,#18,#13
	db #18,#13,#18,#13,#e1,#18,#e0,#13
.la053 equ $ + 6
	db #1f,#15,#21,#17,#23,#87,#e3,#11
	db #0c,#11,#0c,#11,#0c,#e1,#11,#e0
	db #10,#1c,#11,#1d,#12,#1e,#e3,#13
	db #0e,#13,#0e,#13,#0e,#e1,#13,#e0
.la074 equ $ + 7
	db #13,#1f,#15,#21,#17,#23,#87,#8a
	db #88,#01,#01,#dc,#e1,#80,#e3,#1f
	db #1f,#1f,#1f,#1f,#e1,#1f,#e7,#1f
.la089 equ $ + 4
	db #88,#01,#01,#87,#d1,#e0,#1f,#24
	db #28,#2b,#24,#28,#2b,#30,#28,#2b
.la09c equ $ + 7
	db #30,#34,#2b,#30,#34,#37,#87,#1f
	db #23,#26,#2b,#23,#26,#2b,#2f,#26
	db #2b,#2f,#32,#2b,#2f,#32,#37,#87
.la0ad
	db #1d,#21,#24,#29,#21,#24,#29,#2d
	db #24,#29,#2d,#30,#29,#2d,#30,#35
.la0be equ $ + 1
	db #87,#8a,#88,#01,#01,#dc,#90,#00
	db #e1,#80,#e3,#24,#24,#24,#24,#24
.la0d3 equ $ + 6
	db #e1,#23,#e7,#24,#d2,#87,#e1,#30
	db #2f,#2d,#2c,#2b,#28,#28,#2d,#2b
	db #28,#28,#2d,#2b,#2c,#2d,#2f,#30
	db #2f,#2d,#2c,#2b,#28,#28,#2d,#2b
	db #2c,#2d,#2f,#30,#2b,#2d,#2f,#90
.la0f7 equ $ + 2
	db #0c,#87,#90,#00,#e1,#29,#2b,#29
	db #2b,#29,#24,#e3,#24,#e1,#35,#37
	db #35,#37,#35,#30,#e3,#30,#e1,#2b
	db #2d,#2b,#2d,#2b,#26,#e3,#26,#e1
	db #37,#39,#37,#39,#37,#2c,#2d,#2f
	db #87
.la122 equ $ + 4
.la120 equ $ + 2
.la11e
	dw la124,la13d,la13a
.la124
	db #8a,#88,#01,#01,#d3,#e0,#13,#13
	db #e1,#13,#e0,#15,#15,#e1,#15,#e0
.la13a equ $ + 6
	db #17,#17,#e1,#17,#18,#0c,#88,#01
.la13d equ $ + 1
	db #01,#8a,#dc,#e0,#1c,#1d,#e1,#1f
	db #e0,#1d,#1f,#e1,#21,#e0,#1f,#21
	db #e1,#23,#24,#18,#8e
.la155 equ $ + 4
.la153 equ $ + 2
.la151
	dw la157,la170,la18a
.la157
	db #8a,#88,#01,#01,#dc,#e1,#18,#e0
	db #18,#18,#e1,#1d,#1d,#e7,#1f,#e1
	db #1d,#e0,#1d,#1d,#e1,#1f,#1f,#e7
.la170 equ $ + 1
	db #18,#8a,#dc,#88,#01,#01,#e1,#24
	db #e0,#24,#24,#e1,#24,#24,#e7,#26
	db #e1,#29,#e0,#29,#29,#e1,#2b,#2b
.la18a equ $ + 3
	db #e7,#28,#8e,#8a,#dc,#88,#01,#01
	db #e1,#28,#e0,#28,#28,#e1,#29,#29
	db #e7,#2b,#e1,#2d,#e0,#2d,#2d,#e1
	db #2f,#2f,#e7,#30
.la1a7 equ $ + 4
.la1a5 equ $ + 2
.la1a3
	dw la1a9,la1ba,la1b7
.la1a9
	db #8a,#88,#01,#01,#dc,#e1,#18,#1a
.la1b7 equ $ + 6
	db #1b,#18,#1a,#e5,#1b,#8e,#88,#01
.la1ba equ $ + 1
	db #01,#8a,#dc,#e1,#24,#26,#27,#24
	db #26,#e5,#27,#8e
.la1c9 equ $ + 4
.la1c7 equ $ + 2
.la1c5
	dw la1cb,la1e3,la1e0
.la1cb
	db #8a,#88,#01,#01,#d8,#e0,#1f,#1d
	db #1f,#1d,#e1,#1c,#18,#e0,#1f,#1d
.la1e0 equ $ + 5
	db #1f,#1d,#e5,#1c,#8e,#88,#01,#01
.la1e3
	db #8a,#d8,#e0,#2b,#29,#2b,#29,#e1
	db #28,#24,#e0,#2e,#2d,#2e,#2d,#e5
.la1f8 equ $ + 5
.la1f5 equ $ + 2
	db #2b,#8e,#89,#00,#87,#89,#01,#87
.la1fb
	db #89,#02,#87
;
.music_info
	db "Pub Trivia (1989)(Codemasters)()",0
	db "",0

	read "music_end.asm"
