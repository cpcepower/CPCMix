; Music of Scramble Spirits (1990)(Grandslam)(Ben Daglish)()
; Ripped by Megachur the 23/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SCRAMBLS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #705c
FIRST_THEME				equ 0
LAST_THEME				equ 20

	read "music_header.asm"
	
	db #00,#64

	jp l70ec	; init 
	jp l7174	; play

.l7064
.music_end
	db #00
	jp l706f	; sound effects
;
.stop_music
;
	xor a
	ld (l7064),a
	jp l7e43
.l706f
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l7d53
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l7d89
	call l7dbf
	set 7,(ix+#11)
	ret
.l709c equ $ + 7
.l7096 equ $ + 1
.l7095
	db #00,#00,#00,#00,#00,#00,#00,#00
.l70a4 equ $ + 7
.l70a2 equ $ + 5
.l70a1 equ $ + 4
.l70a0 equ $ + 3
.l709f equ $ + 2
.l709e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l70ab equ $ + 6
.l70aa equ $ + 5
	db #00,#00,#00,#00,#00,#08,#00,#00
.l70b4 equ $ + 7
.l70b3 equ $ + 6
.l70b1 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l70b9 equ $ + 4
.l70b7 equ $ + 2
.l70b6 equ $ + 1
.l70b5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l70c0 equ $ + 3
.l70bf equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.l70cc equ $ + 7
.l70cb equ $ + 6
.l70ca equ $ + 5
.l70c9 equ $ + 4
.l70c8 equ $ + 3
.l70c6 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l70d4 equ $ + 7
.l70ce equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music
.l70ec
;
	push af
	call l7e43
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l7a34
	add l
	ld l,a
	jr nc,l70fd
	inc h
.l70fd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l7096),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l70ab),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l70c0),de
	xor a
	ld (l709f),a
	ld (l70b4),a
	ld (l70c9),a
	ld (l70a4),a
	ld (l70b9),a
	ld (l70ce),a
	cpl
	ld (l70a0),a
	ld (l70b5),a
	ld (l70ca),a
	ld a,#01
	ld (l709e),a
	ld (l70b3),a
	ld (l70c8),a
	ld (l70a1),a
	ld (l70b6),a
	ld (l70cb),a
	ld hl,l70d4
	ld bc,#030a
.l714c
	xor a
.l714d
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l714d
	djnz l714c
	ld hl,l7c55
	ld (l709c),hl
	ld (l70b1),hl
	ld (l70c6),hl
	ld a,#ff
	ld (l70a2),a
	ld (l70b7),a
	ld (l70cc),a
	ld (l7064),a
	ret
;
.play_music
.l7174
;
	call l7e7b
	ld a,(l7064)
	and a
	ret z
	ld a,(l70a2)
	or a
	jr z,l718c
	ld a,(l70b7)
	or a
	jr z,l718c
	ld a,(l70cc)
	or a
.l718c
	ld (l7064),a
	jr nz,l719f
	ld a,(l7d88)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l7064),a
	ret
.l719f
	ld iy,l7095
	ld ix,l7d89
	call l71bd
	ld iy,l70aa
	ld ix,l7d9b
	call l71bd
	ld iy,l70bf
	ld ix,l7dad
.l71bd
	call l72fe
	ld a,(iy+#0b)
	and a
	jr z,l7242
.l71c6
	dec (iy+#09)
	jr z,l71dd
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l7242
.l71dd
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l71e7
	ld a,(hl)
	cp #80
	jr c,l7222
	cp #fe
	jr nz,l71f9
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l71e7
.l71f9
	cp #ff
	jr nz,l7202
	xor a
	ld (iy+#0d),a
	ret
.l7202
	cp #c0
	jr nc,l720f
	and #1f
	ld (iy+#09),a
	inc hl
	jp l71e7
.l720f
	and #07
	add (iy+#00)
	ld de,l70d4
	add e
	ld e,a
	jr nc,l721c
	inc d
.l721c
	inc hl
	ldi
	jp l71e7
.l7222
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l79b8
	add hl,bc
	ld e,(hl)
	ld hl,l79f6
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l7248
.l7242
	ld e,(iy+#05)
	ld d,(iy+#06)
.l7248
	dec (iy+#0c)
	jr z,l725a
	ld a,(de)
	cp #80
	call nc,l72c4
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l725a
	ld a,(de)
	cp #80
	jr c,l726b
	call l72c4
	ld a,(iy+#0b)
	and a
	jr z,l725a
	jp l71c6
.l726b
	cp #7f
	jr z,l72b7
	cp #7e
	jr nz,l727c
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l7290
.l727c
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l8044
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l7290
	ld a,(iy+#0f)
	or #c0
	ld (iy+#14),a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld c,a
	ld (iy+#05),e
	ld (iy+#06),d
	ld e,(iy+#07)
	ld a,(iy+#08)
	ld hy,a
	ld ly,e
	bit 7,(ix+#11)
	ret nz
	jp l7dbf
.l72b7
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l72c4
	ld a,(de)
	cp #88
	jr nc,l72e2
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l70d4
	add hl,bc
	ld c,(hl)
	ld hl,l7c55
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l72e2
	cp #ff
	jr nz,l72eb
	ld (iy+#0b),#ff
	ret
.l72eb
	cp #c0
	jr nc,l72f6
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l72f6
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l72fe
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l7312
	res 7,(iy+#14)
	ret
.l7312
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l7346
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l7346
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l7335
	inc h
	ld (iy+#11),h
.l7335
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l737b
.l7346
	ld hl,l760b
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l7360
	bit 6,(iy+#14)
	jr nz,l7360
	ld (iy+#13),#01
	ret
.l7360
	res 6,(iy+#14)
	ld a,(hl)
	rrca
	rrca
	rrca
	and d
	ld (iy+#12),a
	ld a,(hl)
	and d
	inc a
	ld (iy+#13),a
	ld (iy+#10),l
	ld (iy+#11),h
	ld a,(iy+#0e)
.l737b
	add a
	ld hl,l8044
	add l
	ld l,a
	jr nc,l7384
	inc h
.l7384
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l738e
	db #81,#12,#05,#1e,#05,#12,#05,#12
	db #05,#81,#1e,#05,#12,#05,#12,#05
.l73a1 equ $ + 3
	db #1e,#05,#ff,#81,#0f,#05,#1b,#05
	db #0f,#05,#0f,#05,#81,#1b,#05,#0f
.l73b4 equ $ + 6
	db #05,#0f,#05,#1b,#05,#ff,#80,#29
	db #1e,#25,#1e,#22,#1e,#1e,#1e,#22
	db #14,#25,#14,#80,#29,#1e,#2a,#1e
	db #27,#50,#25,#05,#27,#05,#2a,#05
.l73d1 equ $ + 3
	db #2c,#05,#ff,#82,#7f,#0a,#92,#22
	db #05,#7f,#05,#22,#05,#22,#05,#22
	db #05,#7f,#05,#22,#05,#7f,#0a,#82
	db #22,#05,#7f,#0a,#22,#05,#7f,#05
.l73f0 equ $ + 2
	db #90,#ff,#82,#7f,#0a,#91,#1e,#05
	db #7f,#05,#1e,#05,#1e,#05,#1e,#05
	db #7f,#05,#1e,#05,#7f,#0a,#82,#1e
	db #05,#7f,#0a,#1e,#05,#7f,#05,#90
.l740f equ $ + 1
	db #ff,#81,#14,#05,#20,#05,#14,#05
	db #14,#05,#81,#20,#05,#14,#05,#14
.l7422 equ $ + 4
	db #05,#20,#05,#ff,#81,#0d,#05,#19
	db #05,#0d,#05,#0d,#05,#81,#19,#05
.l7435 equ $ + 7
	db #0d,#05,#0d,#05,#19,#05,#ff,#80
	db #2e,#1e,#2a,#1e,#27,#1e,#23,#1e
	db #27,#14,#2a,#14,#80,#2e,#1e,#2f
	db #1e,#2c,#50,#1e,#05,#22,#05,#25
.l7452 equ $ + 4
	db #05,#27,#05,#ff,#82,#7f,#0a,#91
	db #23,#05,#7f,#05,#23,#05,#23,#05
	db #23,#05,#7f,#05,#23,#05,#7f,#0a
	db #82,#23,#05,#7f,#0a,#23,#05,#7f
.l7471 equ $ + 3
	db #05,#90,#ff,#82,#7f,#0a,#92,#1d
	db #05,#7f,#05,#1d,#05,#1d,#05,#1d
	db #05,#7f,#05,#1d,#05,#7f,#0a,#82
	db #1d,#05,#7f,#0a,#1d,#05,#7f,#05
.l7490 equ $ + 2
	db #90,#ff,#80,#2e,#1e,#2a,#1e,#27
	db #1e,#23,#1e,#27,#14,#2a,#14,#80
	db #2e,#1e,#2f,#1e,#2c,#5a,#22,#05
.l74a9 equ $ + 3
	db #23,#05,#ff,#81,#16,#05,#22,#05
	db #16,#05,#16,#05,#81,#22,#05,#16
.l74bc equ $ + 6
	db #05,#16,#05,#22,#05,#ff,#81,#0b
	db #05,#17,#05,#0b,#05,#0b,#05,#81
	db #17,#05,#0b,#05,#0b,#05,#17,#05
.l74cf equ $ + 1
	db #ff,#80,#25,#78,#29,#14,#2c,#14
	db #2c,#50,#80,#2a,#3c,#22,#0a,#23
.l74e0 equ $ + 2
	db #0a,#ff,#82,#7f,#0a,#91,#25,#05
	db #7f,#05,#25,#05,#25,#05,#25,#05
	db #7f,#05,#25,#05,#7f,#0a,#82,#25
	db #05,#7f,#0a,#25,#05,#7f,#05,#90
.l74ff equ $ + 1
	db #ff,#82,#7f,#0a,#92,#27,#05,#7f
	db #05,#27,#05,#27,#05,#27,#05,#7f
	db #05,#27,#05,#7f,#0a,#82,#27,#05
	db #7f,#0a,#27,#05,#7f,#05,#90,#ff
.l751e
	db #80,#25,#78,#29,#14,#2c,#14,#2c
	db #78,#80,#2d,#14,#23,#05,#27,#05
.l7533 equ $ + 5
	db #2a,#05,#2c,#05,#ff,#80,#2e,#3c
	db #2f,#0a,#2e,#0a,#2c,#28,#29,#0f
	db #2a,#0f,#80,#2c,#0a,#2c,#37,#2e
	db #0f,#2c,#0a,#29,#1e,#2a,#1e,#80
	db #25,#05,#27,#05,#2a,#05,#2c,#05
.l7557 equ $ + 1
	db #ff,#80,#2e,#3c,#2f,#0a,#2e,#0a
	db #2c,#28,#29,#0f,#2a,#0f,#80,#2c
	db #0a,#2c,#37,#2e,#0f,#2c,#0a,#27
	db #3c,#80,#22,#05,#25,#05,#27,#05
.l7579 equ $ + 3
	db #28,#05,#ff,#82,#7f,#0a,#92,#20
	db #05,#7f,#05,#20,#05,#20,#05,#20
	db #05,#7f,#05,#20,#05,#7f,#0a,#82
	db #20,#05,#7f,#0a,#20,#05,#7f,#05
.l7598 equ $ + 2
	db #90,#ff,#81,#10,#06,#12,#06,#12
	db #1e,#10,#0c,#12,#06,#12,#0c,#81
	db #10,#06,#0d,#06,#0b,#06,#0d,#06
	db #10,#06,#12,#06,#12,#1e,#81,#10
	db #0c,#12,#06,#12,#0c,#15,#06,#12
	db #06,#09,#06,#06,#06,#81,#09,#06
	db #0b,#06,#0b,#1e,#09,#0c,#0b,#06
	db #0b,#0c,#81,#15,#06,#12,#06,#10
	db #06,#12,#06,#15,#06,#17,#06,#17
	db #1e,#81,#09,#0c,#0b,#06,#0b,#0c
	db #10,#06,#0d,#06,#1c,#06,#19,#06
.l75ef equ $ + 1
	db #ff,#84,#1c,#0c,#1e,#0c,#20,#06
	db #21,#0c,#20,#0c,#21,#12,#84,#28
	db #06,#25,#06,#23,#06,#25,#06,#1c
	db #0c,#1e,#0c,#84,#20
.l760b
	db #06,#21,#0c,#20,#12,#21,#18,#1c
	db #06,#1e,#06,#84,#1c,#0c,#1e,#0c
	db #20,#06,#21,#0c,#20,#0c,#21,#12
	db #84,#28,#06,#25,#06,#23,#06,#25
	db #06,#1c,#0c,#1e,#0c,#84,#20,#06
	db #21,#0c,#20,#12,#21,#18,#1c,#06
.l763e equ $ + 3
	db #19,#06,#ff,#84,#1c,#06,#1e,#06
	db #1e,#06,#19,#06,#1c,#06,#1e,#0c
	db #1c,#0c,#84,#1e,#06,#1e,#06,#19
	db #06,#1c,#06,#19,#06,#17,#06,#19
	db #06,#84,#1c,#06,#1e,#06,#1e,#06
	db #19,#06,#1c,#06,#1e,#0c,#1c,#0c
	db #84,#1e,#06,#1e,#06,#17,#06,#1c
	db #06,#19,#06,#1b,#06,#1e,#06,#84
	db #21,#06,#23,#06,#23,#06,#1e,#06
	db #21,#06,#23,#0c,#21,#0c,#84,#23
	db #06,#23,#06,#1e,#06,#21,#06,#1e
	db #06,#1c,#06,#1e,#06,#84,#21,#06
	db #23,#06,#23,#06,#1e,#06,#21,#06
	db #23,#0c,#21,#0c,#84,#23,#06,#23
	db #06,#1e,#06,#21,#06,#1e,#06,#1c
.l76b7 equ $ + 4
	db #06,#19,#06,#ff,#83,#2a,#18,#28
	db #12,#27,#36,#25,#18,#27,#12,#21
	db #2a,#83,#1e,#0c,#23,#18,#21,#12
	db #25,#2a,#1e,#0c,#25,#18,#83,#23
	db #18,#21,#0c,#1e,#0c,#1c,#06,#1e
.l76dd equ $ + 2
	db #12,#ff,#83,#27,#3c,#28,#12,#2a
	db #12,#27,#3c,#28,#12,#2a,#12,#25
	db #3c,#83,#28,#12,#26,#12,#25,#3c
.l76f8 equ $ + 5
	db #23,#12,#21,#12,#ff,#81,#10,#06
	db #1c,#06,#10,#0c,#10,#06,#10,#06
	db #1c,#06,#1c,#0c,#81,#10,#06,#1c
	db #06,#1b,#06,#19,#06,#17,#06,#15
	db #06,#12,#06,#81,#0f,#06,#1b,#06
	db #0f,#0c,#0f,#06,#0f,#06,#1b,#06
	db #1b,#0c,#81,#0f,#06,#1b,#06,#19
	db #06,#17,#06,#16,#06,#14,#06,#12
	db #06,#81,#0e,#06,#1a,#06,#0e,#0c
	db #0e,#06,#0e,#06,#1a,#06,#1a,#0c
	db #81,#0e,#06,#1a,#06,#19,#06,#17
	db #06,#15,#06,#14,#06,#12,#06,#81
	db #0d,#06,#19,#06,#0d,#0c,#0d,#06
	db #0d,#06,#19,#06,#19,#0c,#81,#0d
	db #06,#19,#06,#17,#06,#15,#06,#14
.l7771 equ $ + 6
	db #06,#12,#06,#10,#06,#ff,#80,#23
	db #60,#22,#60,#21,#60,#20,#60,#ff
.l777b
	db #83,#20,#90,#1c,#18,#19,#18,#1e
.l7785 equ $ + 2
	db #c0,#ff,#81,#0a,#0c,#0c,#0c,#0d
	db #0c,#0a,#06,#0c,#0c,#0d,#06,#0f
.l7797 equ $ + 4
	db #06,#11,#06,#ff,#85,#7f,#0c,#1c
	db #0c,#1b,#06,#19,#06,#16,#06,#1b
	db #0c,#15,#06,#16,#06,#1b,#06,#85
	db #19,#36,#22,#0c,#22,#12,#1c,#0c
	db #1b,#06,#19,#06,#16,#06,#1b,#0c
	db #85,#15,#06,#16,#06,#1b,#06,#19
.l77c9 equ $ + 6
	db #36,#22,#0c,#22,#06,#ff,#85,#7f
	db #06,#20,#12,#20,#36,#20,#12,#20
	db #1e,#1b,#0c,#1b,#0c,#20,#12,#85
	db #20,#36,#20,#12,#20,#1e,#1b,#0c
.l77e6 equ $ + 3
	db #1b,#06,#ff,#85,#7f,#0c,#16,#06
	db #18,#06,#19,#06,#1d,#06,#19,#06
	db #24,#0c,#85,#20,#06,#1d,#06,#19
	db #06,#18,#24,#1b,#0c,#1b,#06,#1b
	db #0c,#1b,#06,#85,#7f,#0c,#16,#06
	db #18,#06,#19,#06,#1d,#06,#19,#06
	db #24,#0c,#85,#20,#06,#1d,#06,#19
	db #06,#18,#24,#1b,#0c,#1b,#06,#1b
.l7827 equ $ + 4
	db #0c,#1b,#06,#ff,#83,#7f,#0c,#29
	db #06,#27,#06,#25,#0c,#25,#0c,#29
	db #0c,#2c,#0c,#2c,#0c,#2a,#0c,#83
	db #29,#0c,#29,#0c,#27,#0c,#25,#18
	db #29,#06,#27,#06,#25,#0c,#25,#0c
	db #83,#29,#0c,#2c,#0c,#2c,#0c,#2a
	db #0c,#29,#0c,#29,#0c,#27,#0c,#25
	db #18,#83,#2e,#06,#2c,#06,#2a,#0c
	db #2a,#0c,#2e,#0c,#31,#0c,#31,#0c
	db #2e,#0c,#83,#2a,#0c,#27,#24,#25
.l7877 equ $ + 4
	db #30,#7f,#30,#ff,#80,#0d,#48,#0c
	db #48,#0a,#48,#08,#48,#06,#48,#7f
	db #24,#08,#24,#0d,#30,#7f,#30,#ff
.l788b
	db #80,#98,#29,#30,#7f,#18,#29,#30
	db #7f,#18,#29,#30,#7f,#18,#80,#97
	db #25,#30,#7f,#18,#98,#22,#30,#7f
.l78aa equ $ + 7
	db #60,#29,#30,#7f,#30,#90,#ff,#86
.l78ae equ $ + 3
	db #1e,#05,#ff,#87,#91,#2a,#05,#06
.l78ba equ $ + 7
.l78b6 equ $ + 3
	db #50,#90,#ff,#81,#25,#05,#ff,#87
.l78c0 equ $ + 5
	db #2a,#05,#06,#14,#ff,#85,#91,#06
.l78c7 equ $ + 4
	db #05,#2a,#28,#ff,#87,#06,#05,#2a
.l78cd equ $ + 2
	db #50,#ff,#82,#12,#05,#2a,#0f,#ff
.l78d9 equ $ + 6
.l78d3
	db #82,#2a,#05,#12,#0f,#ff,#82,#12
	db #05,#16,#05,#19,#05,#16,#05,#19
	db #05,#1e,#05,#19,#05,#1e,#05,#22
.l78f1 equ $ + 6
	db #05,#25,#05,#2a,#0a,#ff,#7f,#05
.l78f4 equ $ + 1
	db #ff,#81,#0f,#05,#0f,#05,#16,#05
	db #0f,#05,#18,#05,#0f,#05,#0f,#05
	db #1a,#05,#81,#0f,#05,#0f,#05,#16
	db #05,#0f,#05,#16,#05,#0f,#05,#0f
.l7917 equ $ + 4
	db #05,#16,#05,#ff,#80,#7f,#50,#1b
.l7921 equ $ + 6
	db #96,#22,#0a,#27,#50,#ff,#80,#7f
.l7929 equ $ + 6
	db #96,#1b,#0a,#22,#a0,#ff,#80,#26
	db #05,#27,#05,#22,#96,#83,#20,#0a
.l7939 equ $ + 6
	db #1f,#14,#80,#1b,#82,#ff,#80,#1a
	db #05,#1f,#05,#1b,#96,#83,#1d,#0a
.l7949 equ $ + 6
	db #1b,#14,#80,#16,#82,#ff,#81,#0f
	db #0a,#0f,#05,#0f,#0a,#0f,#05,#0f
.l7955 equ $ + 2
	db #0a,#ff,#81,#08,#0a,#08,#05,#08
.l7961 equ $ + 6
	db #0a,#08,#05,#08,#0a,#ff,#80,#1b
	db #1e,#22,#1e,#1f,#14,#20,#1e,#1f
	db #1e,#1b,#14,#1d,#1e,#1f,#0a,#1f
.l7979 equ $ + 6
	db #64,#20,#0a,#22,#0a,#ff,#80,#22
	db #1e,#24,#1e,#27,#14,#26,#1e,#22
	db #1e,#24,#14,#80,#1f,#3c,#1d,#0a
.l7990 equ $ + 5
	db #1b,#0a,#1f,#50,#ff,#80,#98,#2b
.l7998 equ $ + 5
	db #a0,#1f,#a0,#90,#ff,#80,#98,#2b
.l79a2 equ $ + 7
	db #a0,#24,#50,#1f,#50,#90,#ff,#80
	db #27,#1e,#26,#1e,#24,#14,#22,#1e
	db #24,#1e,#26,#14,#1f,#50,#1b,#50
.l79b4 equ $ + 1
	db #ff,#81,#1e,#05,#ff
.l79b8
	db l738e,l73a1,l73b4,l73d1
	db l73f0,l740f,l7422,l7435
	db l7452,l7471,l7490,l74a9
	db l74bc,l74cf,l74e0,l74ff
	db l751e,l7533,l7557,l7579
	db l7598,l75ef,l763e,l76b7
	db l76dd,l76f8,l7771,l777b
	db l7785,l7797,l77c9,l77e6
	db l7827,l7877,l788b,l78aa
	db l78aa,l78aa,l78aa,l78ae
	db l78b6,l78ba,l78c0,l78c7
	db l78cd,l78d3,l78d9,l78f1
	db l78f4,l7917,l7921,l7929
	db l7939,l7949,l7955,l7961
	db l7979,l7990,l7998,l7998
	db l79a2,l79b4
;	db #8e,#a1,#b4,#d1,#f0,#0f,#22,#35
;	db #52,#71,#90,#a9,#bc,#cf,#e0,#ff
;	db #1e,#33,#57,#79,#98,#ef,#3e,#b7
;	db #dd,#f8,#71,#7b,#85,#97,#c9,#e6
;	db #27,#77,#8b,#aa,#aa,#aa,#aa,#ae
;	db #b6,#ba,#c0,#c7,#cd,#d3,#d9,#f1
;	db #f4,#17,#21,#29,#39,#49,#55,#61
;	db #79,#90,#98,#98,#a2,#b4
.l79f6
	db l738e/&100,l73a1/&100,l73b4/&100,l73d1/&100
	db l73f0/&100,l740f/&100,l7422/&100,l7435/&100
	db l7452/&100,l7471/&100,l7490/&100,l74a9/&100
	db l74bc/&100,l74cf/&100,l74e0/&100,l74ff/&100
	db l751e/&100,l7533/&100,l7557/&100,l7579/&100
	db l7598/&100,l75ef/&100,l763e/&100,l76b7/&100
	db l76dd/&100,l76f8/&100,l7771/&100,l777b/&100
	db l7785/&100,l7797/&100,l77c9/&100,l77e6/&100
	db l7827/&100,l7877/&100,l788b/&100,l78aa/&100
	db l78aa/&100,l78aa/&100,l78aa/&100,l78ae/&100
	db l78b6/&100,l78ba/&100,l78c0/&100,l78c7/&100
	db l78cd/&100,l78d3/&100,l78d9/&100,l78f1/&100
	db l78f4/&100,l7917/&100,l7921/&100,l7929/&100
	db l7939/&100,l7949/&100,l7955/&100,l7961/&100
	db l7979/&100,l7990/&100,l7998/&100,l7998/&100
	db l79a2/&100,l79b4/&100
;	db #73,#73,#73,#73,#73,#74,#74,#74
;	db #74,#74,#74,#74,#74,#74,#74,#74
;	db #75,#75,#75,#75,#75,#75,#76,#76
;	db #76,#76,#77,#77,#77,#77,#77,#77
;	db #78,#78,#78,#78,#78,#78,#78,#78
;	db #78,#78,#78,#78,#78,#78,#78,#78
;	db #78,#79,#79,#79,#79,#79,#79,#79
;	db #79,#79,#79,#79,#79,#79
.l7a34
	dw l7adc,l7b05,l7b10
	dw l7b33,l7b3b,l7b43
	dw l7b4d,l7b52,l7b57
	dw l7b5c,l7b60,l7b64
	dw l7b68,l7b7d,l7b85
	dw l7b8d,l7b91,l7b95
	dw l7b99,l7b9d,l7ba1
	dw l7ba5,l7ba9,l7bad
	dw l7bb1,l7bb5,l7bb9
	dw l7bbd,l7bc1,l7bc5
	dw l7bc9,l7bce,l7bd2
	dw l7bd3,l7bd7,l7bdb
	dw l7bdf,l7be3,l7be7
	dw l7bec,l7bf0,l7bf4
	dw l7bf8,l7bfc,l7c00
	dw l7c01,l7c05,l7c09
	dw l7c0a,l7c0e,l7c12
	dw l7c13,l7c17,l7c1d
	dw l7c22,l7c26,l7c2a
	dw l7c2e,l7c32,l7c36
	dw l7c37,l7c3b,l7c3f
	dw l7c40,l7c44,l7c49
	dw l7b8d,l7b91,l7b95
	dw l7b99,l7b9d,l7ba1
	dw l7ba5,l7ba9,l7bad
	dw l7bb1,l7bb5,l7bb9
	dw l7bbd,l7bc1,l7bc5
	dw l7c4f,l7c53,l7c54
.l7adc
	db #fe,#ff,#84,#00,#84,#01,#84,#05
	db #84,#06,#84,#00,#84,#01,#84,#05
	db #84,#06,#84,#0b,#84,#0c,#84,#0b
	db #82,#0c,#82,#06,#84,#0c,#82,#0b
	db #82,#01,#84,#0c,#82,#0b,#82,#01
	db #ff
.l7b05
	db #fe,#ff,#02,#07,#02,#0a,#0d
	db #10,#11,#12,#ff
.l7b10
	db #fe,#ff,#82,#03,#82,#04,#82,#08
	db #82,#09,#82,#03,#82,#04,#82,#08
	db #82,#09,#82,#0e,#82,#0f,#82,#0e
	db #82,#0f,#04,#13,#0e,#03,#04,#13
	db #0e,#03,#ff
.l7b33
	db #fe,#ff,#84,#14,#18,#82,#15,#ff
.l7b3b
	db #fe,#ff,#84,#15,#1a,#82,#1b,#ff
.l7b43
	db #fe,#ff,#82,#16,#82,#17,#19,#82
	db #14
.l7b52 equ $ + 6
.l7b4d equ $ + 1
	db #ff,#fe,#ff,#88,#1c,#ff,#fe,#ff
.l7b57 equ $ + 3
	db #82,#1d,#ff,#fe,#ff,#1e,#1f,#ff
.l7b60 equ $ + 4
.l7b5c
	db #fe,#ff,#20,#ff,#fe,#ff,#21,#ff
.l7b68 equ $ + 4
.l7b64
	db #fe,#ff,#22,#ff,#fe,#ff,#84,#30
	db #84,#30,#84,#35,#82,#36,#82,#35
	db #84,#35,#82,#36,#82,#35,#84,#30
.l7b7d equ $ + 1
	db #ff,#fe,#ff,#31,#33,#37,#38,#3c
.l7b85 equ $ + 1
	db #ff,#fe,#ff,#32,#34,#82,#3b,#39
.l7b91 equ $ + 5
.l7b8d equ $ + 1
	db #ff,#fe,#ff,#20,#ff,#fe,#ff,#21
.l7b99 equ $ + 5
.l7b95 equ $ + 1
	db #ff,#fe,#ff,#22,#ff,#fe,#ff,#20
.l7ba1 equ $ + 5
.l7b9d equ $ + 1
	db #ff,#fe,#ff,#21,#ff,#fe,#ff,#22
.l7ba9 equ $ + 5
.l7ba5 equ $ + 1
	db #ff,#fe,#ff,#20,#ff,#fe,#ff,#21
.l7bb1 equ $ + 5
.l7bad equ $ + 1
	db #ff,#fe,#ff,#22,#ff,#fe,#ff,#20
.l7bb9 equ $ + 5
.l7bb5 equ $ + 1
	db #ff,#fe,#ff,#21,#ff,#fe,#ff,#22
.l7bc1 equ $ + 5
.l7bbd equ $ + 1
	db #ff,#fe,#ff,#20,#ff,#fe,#ff,#21
.l7bc9 equ $ + 5
.l7bc5 equ $ + 1
	db #ff,#fe,#ff,#22,#ff,#fe,#fa,#26
.l7bd3 equ $ + 7
.l7bd2 equ $ + 6
.l7bce equ $ + 2
	db #26,#ff,#fe,#fb,#26,#ff,#ff,#fe
.l7bdb equ $ + 7
.l7bd7 equ $ + 3
	db #00,#27,#ff,#fe,#03,#27,#ff,#fe
.l7be3 equ $ + 7
.l7bdf equ $ + 3
	db #00,#26,#ff,#fe,#f6,#27,#ff,#fe
.l7be7 equ $ + 3
	db #f7,#27,#ff,#fe,#00,#26,#27,#ff
.l7bf0 equ $ + 4
.l7bec
	db #fe,#00,#28,#ff,#fe,#00,#26,#ff
.l7bf8 equ $ + 4
.l7bf4
	db #fe,#01,#28,#ff,#fe,#ff,#29,#ff
.l7c01 equ $ + 5
.l7c00 equ $ + 4
.l7bfc
	db #fe,#01,#29,#ff,#ff,#fe,#00,#29
.l7c0a equ $ + 6
.l7c09 equ $ + 5
.l7c05 equ $ + 1
	db #ff,#fe,#00,#26,#ff,#ff,#fe,#00
.l7c13 equ $ + 7
.l7c12 equ $ + 6
.l7c0e equ $ + 2
	db #2a,#ff,#fe,#03,#2a,#ff,#ff,#fe
.l7c17 equ $ + 3
	db #00,#2b,#ff,#fe,#03,#26,#26,#2b
.l7c22 equ $ + 6
.l7c1d equ $ + 1
	db #ff,#fe,#06,#26,#2b,#ff,#fe,#00
.l7c2a equ $ + 6
.l7c26 equ $ + 2
	db #26,#ff,#fe,#00,#29,#ff,#fe,#00
.l7c32 equ $ + 6
.l7c2e equ $ + 2
	db #27,#ff,#fe,#00,#2c,#ff,#fe,#02
.l7c3b equ $ + 7
.l7c37 equ $ + 3
.l7c36 equ $ + 2
	db #2c,#ff,#ff,#fe,#00,#2d,#ff,#fe
.l7c40 equ $ + 4
.l7c3f equ $ + 3
	db #02,#2d,#ff,#ff,#fe,#ff,#2e,#ff
.l7c49 equ $ + 5
.l7c44
	db #fe,#ff,#2f,#2e,#ff,#fe,#ff,#2f
.l7c53 equ $ + 7
.l7c4f equ $ + 3
	db #2f,#2e,#ff,#fe,#00,#3d,#ff,#ff
.l7c55 equ $ + 1
.l7c54
	db #ff,#7f,#ff,#50,#ff,#7f,#00,#02
	db #01,#00,#01,#7f,#f8,#00,#ff,#7f
	db #00,#01,#01,#00,#01,#7f,#fc,#01
	db #ff,#7f,#00,#01,#01,#00,#01,#7f
	db #fe,#46,#fe,#7f,#00,#01,#02,#00
	db #01,#7f,#f8,#00,#fa,#73,#00,#01
	db #01,#00,#01,#7f,#fd,#00,#ff,#73
	db #00,#02,#02,#00,#01,#7f,#f6,#00
	db #ff,#7f,#00,#03,#01,#00,#02,#7f
	db #fe,#00,#ff,#7f,#00,#03,#01,#00
	db #03,#7f,#fa,#50,#ff,#7f,#00,#03
	db #01,#00,#01,#7f,#fa,#50,#ff,#7f
	db #00,#03,#01,#00,#01,#7f,#fa,#50
	db #ff,#7f,#00,#03,#01,#00,#01,#7f
	db #fa,#50,#ff,#7f,#00,#03,#01,#00
	db #01,#7f,#fa,#50,#ff,#7f,#00,#03
	db #01,#00,#01,#7f,#fa,#50,#ff,#7f
	db #00,#03,#01,#00,#01,#7f,#fa,#50
	db #ff,#7f,#00,#03,#01,#00,#01,#7f
	db #fa,#50,#ff,#7f,#00,#03,#01,#00
	db #01,#7f,#fa,#50,#ff,#7f,#00,#03
	db #01,#00,#01,#7f,#fa,#50,#ff,#7f
	db #00,#03,#01,#00,#01,#7f,#fa,#50
	db #ff,#7f,#00,#03,#01,#00,#01,#89
	db #21,#39,#00,#00,#00,#00,#00,#89
	db #19,#39,#00,#00,#00,#00,#00,#89
	db #39,#00,#00,#00,#00,#00,#00,#89
	db #31,#00,#00,#00,#00,#00,#00,#89
	db #21,#00,#00,#00,#00,#00,#00,#89
	db #19,#00,#00,#00,#00,#00,#00,#91
	db #22,#00,#00,#00,#00,#00,#00,#91
	db #1a,#00,#00,#00,#00,#00,#00
.l7d53
	db #0e,#fe,#01,#ff,#7f,#00,#04,#11
	db #00,#01,#53,#00,#28,#7f,#fc,#01
	db #ff,#7f,#00,#00,#1b,#00,#03,#07
	db #00,#14,#7f,#f5,#01,#ff,#7f,#00
	db #00,#5c,#00,#03,#96,#01,#0a,#7f
	db #fe,#01,#ff,#7f,#05,#04,#02,#00
	db #01
.l7d89 equ $ + 5
.l7d88 equ $ + 4
	db #68,#00,#28,#00,#bf,#fe,#f7,#09
.l7d8e equ $ + 2
.l7d8d equ $ + 1
.l7d8c
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7d9b equ $ + 7
.l7d9a equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#fd
.l7da0 equ $ + 4
.l7d9f equ $ + 3
.l7d9e equ $ + 2
	db #ef,#12,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7db2 equ $ + 6
.l7db1 equ $ + 5
.l7db0 equ $ + 4
.l7dad equ $ + 1
.l7dac
	db #00,#fb,#df,#24,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l7dbe
	db #00
.l7dbf
	ld a,ly
	ld (ix+#0f),a
	ld a,hy
	ld (ix+#10),a
	ld (ix+#03),l
	ld (ix+#04),h
	ld (ix+#06),c
	ld a,(iy+#05)
	ld (ix+#07),a
	ld a,(iy+#06)
	and #7f
	srl a
	jr nz,l7de3
	ld a,#01
.l7de3
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l7d88)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l7e0c
	and (ix+#00)
.l7e0c
	bit 1,c
	jr z,l7e13
	and (ix+#01)
.l7e13
	ld (l7d88),a
	bit 2,c
	jr nz,l7e24
	ld hl,l7f71
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l7e24
	ld hl,#ffbf
	ld c,#fd
	ld a,(iy+#00)
	ld e,#0d
	call l8029
	ld a,(iy+#04)
	ld e,#0b
	call l8029
	inc e
	xor a
	call l8029
	ld (ix+#05),#ff
	ret
.l7e43
	ld c,#fd
	ld hl,#ffbf
	ld e,#07
	ld a,(l7d88)
	or #3f
	ld (l7d88),a
	call l8029
	xor a
	inc e
	call l8029
	inc e
	call l8029
	inc e
	call l8029
	ld a,#01
	inc e
	call l8029
	inc e
	xor a
	call l8029
	inc e
	call l8029
	ld (l7d9a),a
	ld (l7dac),a
	ld (l7dbe),a
	ret
.l7e7b
	ld a,(l7d88)
	and #3f
	cp #3f
	ret z
	ld ix,l7d89
	call l7f3f
	ld ix,l7d9b
	call l7f3f
	ld ix,l7dad
	call l7f3f
	ld ix,l7d89
	ld hl,#ffbf
	ld c,#fd
	ld e,#07
	ld a,(l7d88)
	call l8029
	ld e,#00
	ld a,(l7d8c)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l7eb9
	ld d,a
.l7eb9
	call l8029
	inc e
	ld a,(l7d8d)
	adc (ix+#0a)
	call l8029
	inc e
	ld a,(l7d9e)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l7ed5
	ld d,a
.l7ed5
	call l8029
	inc e
	ld a,(l7d9f)
	adc (ix+#1c)
	call l8029
	inc e
	ld a,(l7db0)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l7ef1
	ld d,a
.l7ef1
	call l8029
	inc e
	ld a,(l7db1)
	adc (ix+#2e)
	call l8029
	inc e
	ld a,d
	rrca
	rrca
	rrca
	call l8029
	ld e,#08
	ld a,(l7f3e)
	ld d,a
	ld a,(l7d8e)
	cp d
	jr c,l7f13
	ld a,d
.l7f13
	srl a
	srl a
	srl a
	call l8029
	inc e
	ld a,(l7da0)
	cp d
	jr c,l7f24
	ld a,d
.l7f24
	srl a
	srl a
	srl a
	call l8029
	inc e
	ld a,(l7db2)
	cp d
	jr c,l7f35
	ld a,d
.l7f35
	srl a
	srl a
	srl a
	jp l8029
.l7f3e
	ld a,a
.l7f3f
	ld a,(l7d88)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l7f60
	cp #ff
	jr z,l7f60
	dec (ix+#06)
.l7f60
	call l7fe7
	bit 2,(iy+#09)
	jp nz,l7fe0
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l7f71
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l7f80
	ld (ix+#05),a
	ret
.l7f80
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l7f90
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l7f90
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l7fa2
	cp (iy+#02)
	jr c,l7fa2
	ld (ix+#05),a
	ret
.l7fa2
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l7fb2
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l7fb2
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l7fc1
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l7fc1
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l7fce
	ld (ix+#05),a
	ret
.l7fce
	ld (ix+#05),#00
	ld a,(l7d88)
	or (ix+#02)
	ld (l7d88),a
	res 7,(ix+#11)
	ret
.l7fe0
	ld a,(ix+#06)
	and a
	ret nz
	jr l7fce
.l7fe7
	ld a,(ix+#07)
	and a
	jr z,l7ff4
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l7ff4
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld c,(ix+#0b)
	ld b,(ix+#0c)
	add hl,bc
	ld (ix+#09),l
	ld (ix+#0a),h
	dec (ix+#08)
	ret nz
	ld a,(iy+#06)
	and a
	ret z
	jp p,l8018
	ld (ix+#07),#ff
	ret
.l8018
	ld (ix+#08),a
	ld a,c
	cpl
	ld c,a
	ld a,b
	cpl
	ld b,a
	inc bc
	ld (ix+#0b),c
	ld (ix+#0c),b
	ret
.l8029
	ld d,#c0
	ld c,#00
	ld l,#80
	ld b,#f4
	out (c),e
	ld b,#f6
	out (c),d
	out (c),c
	ld b,#f4
	out (c),a
	ld b,#f6
	out (c),l
	out (c),c
	ret
.l8044
	dw #09fe,#096e,#08e6,#0866
	dw #07f0,#077d,#070f,#06a9
	dw #064a,#05f2,#059b,#054a
	dw #04ff,#04b7,#0474,#0433
	dw #03f7,#03c0,#0389,#0355
	dw #0325,#02f9,#02ce,#02a6
	dw #0280,#025c,#023b,#021a
	dw #01fc,#01e0,#01c4,#01ab
	dw #0193,#017c,#0167,#0153
	dw #0140,#012e,#011d,#010d
	dw #00fe,#00f0,#00e2,#00d6
	dw #00ca,#00be,#00b3,#00a9
	dw #00a0,#0097,#008e,#0086
	dw #007f,#0078,#0071,#006b
	dw #0065,#005f,#005a,#0055
	dw #0050,#004b,#0047,#0043
	dw #003f,#003c,#0038,#0035
	dw #0032,#002f,#002d,#002a
	dw #0028,#0025,#0023,#0021
	dw #001f,#001e,#001c,#001a
	dw #0019,#0017,#0016,#0015
	dw #0014,#0013,#0012,#0011
	dw #0010
	db #00,#00,#00,#00,#00,#00,#00,#00
;
; #08ae
; ld a,(#7064)
; or a
; jr nz,l08ba
; ld a,(#08c3)
; call #70ec	; init 
;.l08ba
; call #7174	; play
;
;
.music_info
	db "Scramble Spirits (1990)(Grandslam)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
