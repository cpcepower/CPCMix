; Music of Storm Warrior (1989)(Elite Systems)()()
; Ripped by Megachur the 14/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STORMWAR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #7c90

	read "music_header.asm"

	ld hl,#f091
	ld de,#e05a
	ld c,#06
.l7c98
	ld a,(de)
	cp (hl)
	jp z,l7cc7
	jr nc,l7ca2
	jp l7cbb
.l7ca2
	ld de,#f091
	ld hl,#e05a
	ld bc,#0006
	ldir
	ld a,(#d050)
	and #7f
	cp #32
	jr nc,l7cb8
	add #28
.l7cb8
	ds 3,#00		; modified by Megachur - ld (l69f9),a
;
.init_music
.l7cbb
;
	ld hl,lbf09
	ld de,l7e3b
	ld bc,l7ee4
	jp l7cce
.l7cc7
	dec c
	ret z
	inc hl
	inc de
	jp l7c98
.l7cce
	ld (l7dd8),hl
	ld (l7de3),de
	ld (l7dee),bc
	xor a
	ld (l7dd7),a
	ld (l7de2),a
	ld (l7ded),a
	inc a
	ld (l7dbe),a
	ld a,#07
	ld c,#b8
	jp l7df8
;
.play_music
.l7cee
;
	ld ix,l7dd7
	call l7d03
	ld ix,l7de2
	call l7d03
	ld ix,l7ded
	jp l7d03	; ???
.l7d03
	ld a,(ix+#00)
	and a
	jr z,l7d10
	dec a
	ld (ix+#00),a
	jp l7d88
.l7d10
	ld l,(ix+#01)
	ld h,(ix+#02)
	ld a,(hl)
	cp #ff
	jr nz,l7d35
	ld hl,lbf09
	ld de,l7e3b
	ld bc,l7ee4
	jp l7cce
;
.stop_music
;
	xor a
	ld (l7dbe),a
	ds 3,#00		; modified by Megachur - ld (#00ce),a
	ld c,#bf
	ld a,#07
	jp l7df8
.l7d35
	ex de,hl
	and #0f
	add a
	ld c,a
	ld b,#00
	ld hl,l7dbf
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld a,(de)
	srl a
	srl a
	srl a
	srl a
	inc a
.l7d4d
	dec a
	jr z,l7d57
	srl b
	rr c
	jp l7d4d
.l7d57
	ld (ix+#06),c
	ld (ix+#07),b
	inc de
	ld a,(de)
	dec a
	ld (ix+#00),a
	inc de
	ld (ix+#01),e
	ld (ix+#02),d
	cp #08
	jr c,l7d7a
	cp #10
	jr c,l7d76
	ld a,#01
	jr l7d7c
.l7d76
	ld a,#02
	jr l7d7c
.l7d7a
	ld a,#04
.l7d7c
	ld (ix+#05),a
	ld hl,l7e12
	ld (ix+#03),l
	ld (ix+#04),h
.l7d88
	ld c,(ix+#05)
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr z,l7da2
	ld b,#00
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	ld (ix+#08),a
.l7da2
	ld a,(ix+#09)
	ld c,(ix+#08)
	call l7df8
	ld a,(ix+#0a)
	ld c,(ix+#06)
	call l7df8
	ld a,(ix+#0a)
	inc a
	ld c,(ix+#07)
	jp l7df8
.music_end
.l7dbe
	db #00
.l7dbf
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
.l7dd8 equ $ + 1
.l7dd7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7de3 equ $ + 4
.l7de2 equ $ + 3
	db #00,#08,#00,#00,#00,#00,#00,#00
.l7dee equ $ + 7
.l7ded equ $ + 6
	db #00,#00,#00,#00,#09,#02,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0a
	db #04
.l7df8
	ld b,#f4
	out (c),a
	ld de,#c000
	inc b
	inc b
	out (c),d
	out (c),e
	dec b
	dec b
	out (c),c
	inc b
	inc b
	ld d,#80
	out (c),d
	out (c),e
	ret
.l7e12
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#08,#06,#04,#00
	db #ff
.l7e3b
	db #52,#08,#59,#08,#62,#08,#61,#08
	db #62,#08,#59,#08,#52,#10,#49,#08
	db #54,#08,#61,#08,#5b,#08,#61,#08
	db #59,#08,#51,#08,#49,#08,#52,#08
	db #59,#08,#55,#08,#54,#08,#55,#08
	db #52,#08,#59,#08,#52,#08,#49,#08
	db #59,#08,#54,#08,#52,#08,#54,#08
	db #49,#08,#51,#08,#54,#08,#55,#20
	db #55,#08,#52,#08,#54,#08,#56,#08
	db #57,#40,#54,#20,#54,#08,#50,#08
	db #52,#08,#54,#08,#55,#40,#52,#30
	db #57,#08,#55,#08,#54,#30,#49,#08
	db #4b,#08,#51,#20,#51,#08,#49,#08
	db #4b,#08,#51,#08,#52,#40,#4b,#20
	db #4b,#08,#47,#08,#49,#08,#4b,#08
	db #50,#40,#49,#30,#49,#10,#4b,#30
	db #4b,#10,#48,#30,#44,#10,#49,#10
	db #50,#08,#4b,#08,#50,#10,#49,#10
	db #44,#10,#4b,#08,#49,#08,#4b,#10
	db #44,#10,#49,#10,#51,#08,#52,#08
	db #54,#08,#52,#08,#51,#08,#59,#08
	db #ff
.l7ee4
	db #32,#40,#29,#40,#32,#40,#29,#40
	db #25,#40,#27,#40,#34,#40,#35,#40
	db #32,#40,#34,#40,#31,#40,#32,#40
	db #2b,#40,#30,#40,#29,#40,#2b,#40
	db #28,#40,#29,#40,#34,#40,#29,#40
	db #ff
.lbf09
	db #59,#10,#65,#08,#64,#08,#65,#10
	db #59,#10,#57,#10,#64,#08,#62,#08
	db #64,#10,#57,#10,#55,#10,#62,#08
	db #61,#08,#62,#10,#55,#10,#54,#10
	db #61,#08,#5b,#08,#61,#10,#59,#10
	db #62,#10,#62,#08,#61,#08,#62,#10
	db #59,#10,#5a,#10,#5a,#08,#59,#08
	db #57,#08,#59,#08,#5a,#08,#57,#08
	db #60,#08,#62,#08,#60,#08,#5a,#08
	db #59,#08,#57,#08,#59,#08,#5a,#08
	db #59,#10,#59,#08,#57,#08,#59,#10
	db #55,#10,#5a,#08,#60,#08,#5a,#08
	db #59,#08,#57,#08,#55,#08,#54,#08
	db #55,#08,#57,#08,#59,#08,#5a,#08
	db #59,#08,#57,#08,#55,#08,#54,#08
	db #52,#08,#54,#10,#59,#08,#57,#08
	db #59,#10,#54,#10,#55,#08,#57,#08
	db #59,#08,#57,#08,#55,#08,#54,#08
	db #52,#08,#55,#08,#57,#10,#57,#08
	db #55,#08,#57,#08,#52,#08,#54,#08
	db #55,#08,#54,#10,#54,#08,#52,#08
	db #54,#08,#50,#08,#52,#08,#54,#08
	db #55,#10,#55,#08,#54,#08,#55,#08
	db #50,#08,#52,#08,#54,#08,#52,#08
	db #54,#08,#52,#08,#50,#08,#4b,#08
	db #50,#08,#52,#08,#4b,#08,#54,#08
	db #55,#08,#54,#08,#52,#08,#50,#08
	db #52,#08,#50,#08,#4b,#08,#50,#10
	db #59,#08,#58,#08,#59,#10,#50,#10
	db #5b,#10,#58,#08,#56,#08,#58,#10
	db #5b,#10,#59,#40,#ff,#00,#00
;
.music_info
	db "Storm Warrior (1989)(Elite Systems)()",0
	db "",0

	read "music_end.asm"
