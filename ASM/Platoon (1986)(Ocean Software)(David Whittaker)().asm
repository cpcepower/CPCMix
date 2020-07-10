; Music of Platoon (1986)(Ocean Software)(David Whittaker)()
; Ripped by Megachur the 26/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PLATOON.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #720a
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

.l720a
	dw l728c,#0000
.l720e
	dw l72f5,l72f5,l72f5,l72f5
	dw l72f5,l72f5,l72f5,l72f5
	dw l72f5,l72f5,l72f5,l72f5
	dw l72f5,l72f5,l72f5,l72f5
	dw l72f5,l72f5,l72f5,l72f5
	dw l72f5,l72f5,l72f5,l72f5
	dw l72f5,l72f5,l730e,l731f
	dw l72f5,l72f5,l730e,l731f
	dw l72f5,l72f5,l72f5,l72f5
	dw l72f5,l72f5,l730e,l731f
	dw l72f5,l72f5,l730e,l731f
	dw #0000
.l7268
	dw l7330,l7342,l7348,l7348
	dw l7348,l7348,l7345,l7348
	dw l7348,l7348,l7348,l7362
	dw l7362,l73a5,l73de,l73e9
	dw l73e9,#0000
.l728c
	db #8a,#88,#01,#01,#82,#c0,#90,#d3
	db #e0,#0c,#0c,#0c,#0c,#e1,#d2,#8c
	db #18,#8a,#0c,#d3,#e0,#0c,#0c,#0c
	db #0c,#e1,#d2,#8c,#48,#8a,#0c,#d3
	db #e0,#11,#11,#11,#11,#e1,#d2,#8c
	db #1d,#8a,#11,#d3,#e0,#11,#11,#11
	db #11,#e1,#d2,#8c,#4d,#8a,#11,#d3
	db #e0,#0f,#0f,#0f,#0f,#e1,#d2,#8c
	db #1b,#8a,#0f,#d3,#e0,#0f,#0f,#0f
	db #0f,#e1,#d2,#8c,#4b,#8a,#0f,#d3
	db #e0,#0e,#0e,#0e,#0e,#e1,#d2,#8c
	db #1a,#8a,#0e,#d3,#e0,#0e,#0e,#0e
	db #0e,#e1,#d2,#8c,#4a,#8a,#0e,#d3
	db #87
.l72f5
	db #8a,#88,#01,#01,#82,#c6,#d9,#e0
	db #24,#24,#30,#24,#24,#30,#24,#24
	db #30,#24,#24,#30,#30,#24,#24,#30
	db #87
.l730e
	db #22,#22,#2e,#22,#22,#2e,#22,#22
	db #2e,#22,#22,#2e,#2e,#22,#22,#2e
	db #87
.l731f
	db #21,#21,#2d,#21,#21,#2d,#21,#21
	db #2d,#21,#21,#2d,#2d,#21,#21,#2d
	db #87
.l7330
	db #d7,#8a,#88,#01,#02,#82,#c6,#ff
	db #24,#27,#ef,#24,#2e,#29,#e7,#2a
	db #26,#87
.l7342
	db #d2,#c6,#87
.l7345
	db #d6,#c0,#87
.l7348
	db #88,#01,#01,#e0,#2e,#e1,#2d,#e0
	db #2e,#e1,#2d,#e0,#27,#2d,#e0,#2e
	db #e1,#2d,#e0,#2e,#e1,#2d,#e0,#27
	db #29,#87
.l7362
	db #d6,#c5,#88,#01,#01,#e0,#2b,#2b
	db #2b,#2b,#2b,#2b,#29,#e2,#2b,#e1
	db #2e,#e0,#2d,#e2,#2b,#e1,#29,#e0
	db #29,#e1,#29,#e0,#28,#e3,#29,#e0
	db #29,#29,#28,#29,#24,#26,#e0,#27
	db #29,#e5,#2e,#e0,#27,#24,#26,#e1
	db #27,#e0,#27,#e1,#29,#e0,#26,#29
	db #e3,#2d,#26,#e1,#26,#e0,#26,#24
	db #e1,#26,#87
.l73a5
	db #d7,#88,#01,#02,#c6,#ed,#2b,#e0
	db #29,#28,#e1,#29,#e3,#28,#e5,#24
	db #e3,#26,#e5,#27,#26,#e3,#24,#e7
	db #26,#84,#01,#20,#2a,#88,#02,#02
	db #ed,#37,#e0,#35,#34,#e1,#35,#e3
	db #34,#e5,#30,#e3,#32,#e5,#33,#32
	db #e3,#30,#e7,#32,#84,#01,#20,#36
	db #87
l73de
	db #88,#01,#02,#c6,#ff,#3c,#84,#01
	db #80,#3f,#87
.l73e9
	db #d7,#88,#01,#02,#c6,#ed,#2b,#e0
	db #2e,#2d,#e1,#2e,#e3,#2d,#e5,#29
	db #e3,#26,#e7,#2b,#e3,#2d,#2e,#e7
	db #2d,#e3,#2a,#26,#87
.l7406
	dw l7420,#0000
.l740a
	dw l74d8,#0000
.l740e
	dw l74ea,l74ea,l7524,l7524
	dw l7547,l754b,l7549,l754b
	dw #0000
.l7420
	db #90,#88,#01,#01,#82,#c0
	db #e1,#d1,#8a,#0a,#d6,#8b,#41,#d2
	db #8d,#3f,#d1,#8a,#0a,#0a,#d6,#8b
	db #41,#d2,#8d,#3f,#d1,#8a,#11,#d1
	db #8a,#0a,#d6,#8b,#41,#d2,#8d,#3f
	db #d1,#8a,#0a,#0a,#d6,#8b,#41,#d2
	db #8d,#3f,#d1,#8a,#11,#d1,#8a,#07
	db #d6,#8b,#41,#d2,#8d,#3f,#d1,#8a
	db #07,#07,#d6,#8b,#41,#d2,#8d,#3f
	db #d1,#8a,#0e,#d1,#8a,#07,#d6,#8b
	db #41,#d2,#8d,#3f,#d1,#8a,#07,#07
	db #d6,#8b,#41,#d2,#8d,#3f,#d1,#8a
	db #0e,#d1,#8a,#0f,#d6,#8b,#41,#d2
	db #8d,#3f,#d1,#8a,#0f,#0f,#d6,#8b
	db #41,#d2,#8d,#3f,#d1,#8a,#0a,#d1
	db #8a,#0f,#d6,#8b,#41,#d2,#8d,#3f
	db #d1,#8a,#0f,#0f,#d6,#8b,#41,#d2
	db #8d,#3f,#d1,#8a,#0a,#d1,#8a,#11
	db #d6,#8b,#41,#d2,#8d,#3f,#d1,#8a
	db #11,#11,#d6,#8b,#41,#d2,#8d,#3f
	db #d1,#8a,#05,#d1,#8a,#11,#d6,#8b
	db #41,#d2,#8d,#3f,#d1,#8a,#11,#11
	db #d6,#8b,#41,#d2,#8d,#3f,#d1,#8a
	db #0c,#87
.l74d8
	db #8a,#88,#01,#01,#82,#d9,#c7,#e1
	db #32,#33,#32,#e3,#35,#e1,#2e,#30
	db #33,#87
.l74ea
	db #8a,#88,#01,#02,#82,#c0,#d7,#f1
	db #35,#d5,#e1,#30,#32,#33,#35,#33
	db #32,#30,#88,#01,#01,#e3,#2e,#e1
	db #2d,#e3,#2d,#e1,#2b,#2b,#eb,#2b
	db #e1,#29,#2b,#2d,#e5,#2e,#f3,#2b
	db #e1,#29,#2b,#2d,#e5,#2e,#e9,#2b
	db #88,#01,#02,#e5,#32,#e7,#30,#e1
	db #29,#87
.l7524
	db #88,#01,#01,#82,#c7,#d6,#e1,#30
	db #32,#2e,#e3,#30,#e1,#32,#2e,#ef
	db #2e,#e1,#29,#30,#32,#2e,#e3,#30
	db #e1,#32,#2e,#2e,#e5,#35,#33,#e1
	db #32,#29,#87
.l7547
	db #c7,#87
.l7549
	db #cc,#87
.l754b
	db #d2,#e7,#35,#30,#32,#e3,#2e,#2d
	db #e1,#2b,#2a,#e3,#2b,#e5,#32,#e0
	db #32,#30,#32,#30,#e1,#32,#e3,#37
	db #e1,#30,#e0,#2e,#2d,#2e,#2d,#2e
	db #2d,#e5,#2e,#e7,#2d,#e1,#2b,#e7
	db #2b,#e1,#27,#29,#e3,#2b,#2b,#e1
	db #29,#e3,#29,#e1,#27,#27,#e3,#27
	db #e1,#29,#2b,#e7,#29,#e1,#29,#87
.l758b
	dw l7615,l761d,#0000
.l7591
	dw l7634,l7651,l7651,l7651
	dw l7651,l7651,l7651,l7651
	dw l7651,l7651,l7651,l7651
	dw l7651,l7651,l7651,l7651
	dw l7651,l7651,l7651,l7651
	dw l7651,l7651,l7651,l7651
	dw l7651,#0000
.l75c5
	dw l76df,l761b,l761d,l761d
	dw l761d,l761d,l7668,l7668
	dw l7675,l7675,l76af,l76c2
	dw l76c2,l76e5,l761b,l761d
	dw l761d,l761d,l761d,l7668
	dw l7668,l7675,l7675,l76af
	dw l76c2,l76c2,l76e8,l761b
	dw l761d,l761d,l761d,l761d
	dw l7668,l7668,l7675,l7675
	dw l76af,l76c2,l76c2,#0000
.l7615
	db #90,#88,#01,#02,#82,#87
.l761b
	db #81,#87
.l761d
	db #8a,#c0,#d2,#e0,#1c,#1c,#e1,#1a
	db #e2,#1c,#e0,#1a,#e1,#1c,#e0,#1a
	db #e1,#1c,#e0,#1c,#e1,#1a,#87
.l7634
	db #8b,#c0,#d5,#ef,#8d,#3f,#8d,#3f
	db #8d,#3f,#8d,#3f,#8d,#3f,#8d,#3f
	db #8d,#3f,#8d,#3f,#8d,#3f,#8d,#3f
	db #8d,#3f,#8d,#3f,#87
.l7651
	db #8a,#c0,#88,#01,#02,#82,#d2,#c0
	db #e0,#10,#10,#8b,#e3,#8d,#3f,#8d
	db #3f,#8d,#3f,#e1,#8d,#3f,#87
.l7668
	db #8a,#88,#01,#02,#82,#d4,#c6,#ef
	db #10,#0c,#0e,#09,#87
.l7675
	db #d6,#c6,#88,#01,#01,#e0,#34,#34
	db #e1,#32,#e2,#2f,#e0,#2b,#e1,#2d
	db #e0,#2b,#e1,#2d,#e0,#2b,#e1,#2f
	db #e0,#26,#26,#e5,#28,#e1,#2d,#e0
	db #2d,#e1,#2f,#e0,#2f,#e1,#32,#d2
	db #e0,#3b,#39,#e3,#3b,#e1,#39,#e3
	db #39,#e0,#32,#34,#32,#e1,#34,#ee
	db #32,#87
.l76af
	db #88,#01,#02,#d4,#c6,#ef,#1c,#e7
	db #80,#15,#ef,#17,#80,#ef,#10,#80
	db #80,#80,#87
.l76c2
	db #ef,#1c,#e7,#80,#17,#ef,#15,#80
	db #87
;76cb
	db #ef,#80,#80,#87
;76cf
	db #ff,#80,#80,#80,#80,#80,#80,#80
	db #80,#87
;76d9
	db #89,#fe,#87
;76dc
	db #89,#ff,#87
.l76df
	db #89,#00,#87
;76e2
	db #89,#01,#87
.l76e5
	db #89,#02,#87
.l76e8
	db #89,#03,#87
	db #00
.l76ec
	db #08
	dw l720a,l720e,l7268
	db #07
	dw l7406,l740a,l740e
	db #08
	dw l7591,l758b,l75c5
;
.init_music	;.l7701
;
	ld hl,l7d5f
	ld b,#00
	ld (hl),b
	inc hl
	ld (hl),b
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld hl,l76ec
	add hl,bc
	ld a,(hl)
	ld (l77ec),a
	inc hl
	ld ix,l775c
	ld c,#21
	ld a,#03
.l7722
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
	jr nz,l7722
	ld (l7a8d),a
	inc a
	ld (l77bf),a
	ld (l7d5f),a
	ret
.l775c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.l777d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.l779e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
.l77bf
	db #00
;
.play_music	;.l77c0
;
	call l7db2
	ld a,(l7d5f)
	and a
	jp z,l781c
.l77cb equ $ + 1
	ld a,#18
	ld (l7818),a
	ld hl,l77bf
	dec (hl)
	jr nz,l77f0
	ld b,(hl)

	ld ix,l775c
	call l799a

	ld ix,l777d
	call l799a

	ld ix,l779e
	call l799a
.l77ec equ $ + 1
	ld a,#08
	ld (l77bf),a
.l77f0
	ld ix,l775c
	call l7a5a
	ld (l7b6b),hl
	ld (l7b73),a

	ld ix,l777d
	call l7a5a
	ld (l7b6d),hl
	ld (l7b74),a

	ld ix,l779e
	call l7a5a
	ld (l7b6f),hl
	ld (l7b75),a

.l7818 equ $ + 1
	ld a,#41
	ld (l7b71),a
.l781c
	ld a,(l7d60)
	and a
	jr z,l784c
	ld hl,(l7b78)
	ld (l7b6b),hl
	ld hl,(l7b7c)
	ld (l7b6f),hl
	ld a,(l7b7e)
	ld (l7b71),a
	ld a,(l7b72)
.l7837
	or #2d
	ld hl,l7b7f
	and (hl)
	ld (l7b72),a
	ld a,(l7b80)
	ld (l7b73),a
	ld a,(l7b82)
	ld (l7b75),a
.l784c
	ld a,(l7d5f)
	ld hl,l7d60
	or (hl)
	ret z
	ld hl,l7b76
	ld d,#0b
.l7859
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
	jp p,l7859
	ret
.l787a
	ld de,#0d00
.l787d
	call l7887
	dec d
	jp p,l787d
	ld de,#073f
;
.l7887
;
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
.l78a2
;
	xor a
	ld (l7d5f),a
	ld (l7d60),a
	call l787a
	xor a
	ld (l7b73),a
	ld (l7b74),a
	ld (l7b75),a
	ret
;
.jumps_table
;
	db l7980-$	; #c9
	db l7969-$	; #b1
	db l796e-$	; #b5
	db l7974-$	; #ba
	db l7933-$	; #78
	db l7963-$	; #a7
	db l795f-$	; #a2
	db l78cd-$	; #0f
	db l7950-$	; #91
	db l7949-$	; #89
	db l790f-$	; #4e
	db l78fa-$	; #38
	db l7923-$	; #60
	db l797a-$	; #b6
	db l78c9-$	; #04
	db l7989-$	; #c3
	db l798f-$	; #c8
	db l7995-$	; #cd
.l78c9
	pop hl
	jp l78a2
.l78cd
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
	jr nz,l78ef
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l78ef
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l79a8
.l78fa
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,l7b36
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l79a8
.l790f
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,l7b36
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l79a8
.l7923
	ld hl,l7b36
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l79a8
.l7933
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l79a8
.l7949
	ld a,(de)
	inc de
	ld (l7a8d),a
	jr l79a8
.l7950
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l79a8
.l795f
	set 7,(ix+#00)
.l7963
	set 3,(ix+#00)
	jr l79a8
.l7969
	ld (ix+#1d),b
	jr l79a8
.l796e
	ld (ix+#1d),#40
	jr l79a8
.l7974
	ld (ix+#1d),#c0
	jr l79a8
.l797a
	set 1,(ix+#00)
	jr l79a8
.l7980
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l79d7
.l7989
	res 5,(ix+#00)
	jr l79d7
.l798f
	ld (ix+#1f),#ff
	jr l79a8
.l7995
	ld (ix+#1f),b
	jr l79a8
.l799a
	dec (ix+#10)
	jr nz,l79f4
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l79a8
	ld a,(de)
	inc de
	and a
	jp m,l7a05
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l79ba
	ld (l77cb),a
.l79ba
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
.l79d7
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l79f3
	ld a,(l7d60)
	and a
	jr nz,l79f3
	ld (ix+#1f),#ff
.l79f3
	ret
.l79f4
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l7a01
	inc (ix+#12)
	ret
.l7a01
	dec (ix+#12)
	ret
.l7a05
	cp #b8
	jr c,l7a52
	add #20
	jr c,l7a33
	add #10
	jr c,l7a3a
	add #10
	jr nc,l7a2b
	ld c,a
	ld hl,l7c44
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l79a8
.l7a2b
	add #09
	ld (l77ec),a
	jp l79a8
.l7a33
	inc a
	ld (ix+#11),a
	jp l79a8
.l7a3a
	ld hl,l7c86
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
	jp l79a8
.l7a52
	ld hl,jumps_table-&80	;l7837
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l7a5a
	ld c,(ix+#00)
	bit 5,c
	jr z,l7a8c
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l7a86
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l7a86
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l7a86
	ld a,(ix+#18)
	ld (ix+#13),a
.l7a8d equ $ + 1
.l7a8c
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l7aa6
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l7aa6
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l7b84
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l7b07
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l7ad0
	bit 0,c
	jr nz,l7aee
.l7ad0
	bit 5,l
	jr nz,l7ae0
	sub (ix+#1b)
	jr nc,l7aeb
	set 5,(ix+#1d)
	sub a
	jr l7aeb
.l7ae0
	add (ix+#1b)
	cp b
	jr c,l7aeb
	res 5,(ix+#1d)
	ld a,b
.l7aeb
	ld (ix+#1c),a
.l7aee
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l7af9
	dec d
.l7af9
	add #a0
	jr c,l7b05
.l7afd
	sla e
	rl d
	add #18
	jr nc,l7afd
.l7b05
	add hl,de
	ex de,hl
.l7b07
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l7b32
	ld b,(ix+#0e)
	djnz l7b2f
	ld c,(ix+#0d)
	bit 7,c
	jr z,l7b1e
	dec b
.l7b1e
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l7b32
.l7b2f
	ld (ix+#0e),b
.l7b32
	cpl
	and #03
.l7b36 equ $ + 1
	ld a,#30
	jr nz,l7b43
	ld a,(l77cb)
	xor #08
	ld (l7818),a
	ld a,#07
.l7b43
	ld hl,l7b72
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l7b66
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#20)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l7818),a
.l7b66
	ex de,hl
	ld a,(ix+#13)
	ret
.l7b6b
	defw 0	; db #00,#00	; reg0-reg1
.l7b6d
	defw 0	; db #00,#00	; reg2-reg3
.l7b6f
	defw 0	; db #00,#00	; reg4-reg5
.l7b71
	db #41
.l7b72
	db #30
.l7b73
	db #0f
.l7b74
	db #0d
.l7b75
	db #0d
.l7b76
	db #00, #00
.l7b78
	db #00
.l7b79
	db #00,#00,#00
.l7b7c
	db #00,#00
.l7b7e
	db #00
.l7b7f
	db #3f
.l7b80
	db #10,#00
.l7b82
	db #10,#00
.l7b84
	defw #077c,#0708,#06b0,#0640
	defw #05ec,#0594,#0544,#04f8
	defw #04b0,#0470,#042c,#03f0
	defw #03be,#0384,#0358,#0320
	defw #02f6,#02ca,#02a2,#027c
	defw #0258,#0238,#0216,#01f8
	defw #01df,#01c2,#01ac,#0190
	defw #017b,#0165,#0151,#013e
	defw #012c,#011c,#010b,#00fc
	defw #00ef,#00e1,#00d6,#00c8
	defw #00bd,#00b2,#00a8,#009f
	defw #0096,#008e,#0085,#007e
	defw #0077,#0070,#006b,#0064
	defw #005e,#0059,#0054,#004f
	defw #004b,#0047,#0042,#003f
	defw #003b,#0038,#0035,#0032
	defw #002f,#002c,#002a,#0027
	defw #0025,#0023,#0021,#001f
	defw #001d,#001c,#001a,#0019
	defw #0017,#0016,#0015,#0013
	defw #0012,#0011,#0010,#000f
	defw #000e,#000e,#000d,#000c
	defw #000b,#000b,#000a,#0009
	defw #0009,#0008,#0008,#0007
.l7c44
	db #0e,#0e,#10,#12,#14,#16,#17,#1e
	db #24,#29,#2a,#2b,#2c,#32,#80,#07
	db #0c,#8f,#03,#07,#8c,#00,#03,#87
	db #00,#04,#87,#00,#8c,#0c,#00,#00
	db #00,#00,#00,#00,#80,#0c,#00,#00
	db #00,#00,#00,#80,#0c,#00,#00,#00
	db #00,#80,#00,#83,#00,#84,#00,#85
	db #18,#00,#00,#00,#00,#00,#80,#04
	db #07,#8c
.l7c86
	dw l7c9d,l7ca0,l7ca8
	dw l7cba,l7ce4,l7ce8,l7d12
	dw l7d18,l7d3c,l7d48,l7d54
.l7c9d	equ $ +1
	db #00,#09,#87
.l7ca0	equ $ +1
	db #03,#0f,#0e,#0d,#0c,#0b,#0a,#87
.l7ca8	equ $ +1
	db #01,#0f,#0e,#0c,#0b,#0d,#0c,#0a
	db #09,#0b,#0a,#08,#07,#09,#08,#06
	db #05,#87
.l7cba	equ $ +1
	db #01,#0f,#0e,#0d,#0c,#0b,#0d,#0c
	db #0b,#0a,#09,#0b,#0a,#09,#08,#07
	db #09,#08,#07,#06,#05,#07,#06,#05
	db #04,#03,#05,#04,#03,#02,#01,#04
	db #03,#02,#01,#03,#02,#01,#02,#01
	db #00,#87
.l7ce4	equ $ +1
	db #0a,#0f,#0e,#87
.l7ce8	equ $ +1
	db #02,#0f,#0e,#0d,#0c,#0b,#0d,#0c
	db #0b,#0a,#09,#0b,#0a,#09,#08,#07
	db #09,#08,#07,#06,#05,#07,#06,#05
	db #04,#03,#05,#04,#03,#02,#01,#04
	db #03,#02,#01,#03,#02,#01,#02,#01
	db #00,#87
.l7d12	equ $ +1
	db #01,#0b,#0f,#0b,#08,#87
.l7d18	equ $ +1
	db #02,#0a,#0b,#0c,#0d,#0e,#0f,#0f
	db #0e,#0e,#0e,#0e,#0d,#0d,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0a,#0a
	db #0a,#0a,#09,#09,#09,#09,#08,#08
	db #08,#07,#06,#87
.l7d3c	equ $ +1
	db #01,#0c,#0b,#0a,#09,#08,#07,#09
	db #08,#07,#06,#87
.l7d48	equ $ +1
	db #01,#0d,#0c,#0b,#0a,#09,#08,#0a
	db #09,#08,#07,#87
.l7d54	equ $ +1
	db #01,#0e,#0d,#0c,#0b,#0a,#09,#0b
	db #0a,#09,#08,#87
.l7d5f
.music_end
	defb &00
.l7d60
	defb &00
.l7d61
	ld hl,l7d60
	ld h,b
	ld a,l
	ld (hl),#00
	ld hl,l7e50
	add a
	add l
	ld l,a
	jr nc,l7d6f
	inc h
.l7d6f
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l7fcc
.l7d77
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l7d77
	ld a,(l7fcd)
	ld (l7fdd),a
	ld hl,(l7fce)
	ld (l7b78),hl
	ld de,(l7fd0)
	ld (l7b7c),de
	ld a,l
	ld (l7b7e),a
	ld a,(l7fd3)
	ld (l7b7f),a
	ld a,(l7fd2)
	ld e,a
	ld d,#0c
	call l7887
	ld a,(l7fdc)
	ld e,a
	ld d,#0d
	call l7887
	ld hl,l7d60
	inc (hl)
	ret
.l7db2
	call l7fdf
	ld a,(l7d60)
	and a
	ret z
	ld a,(l7fcc)
	and a
	jr nz,l7dc6
	ld (l7d60),a
	jp l787a
.l7dc6
	dec a
	ld (l7fcc),a
	ld a,(l7fdd)
	and a
	jr nz,l7dff
	ld a,(l7fda)
	and a
	ret z
	dec a
	ld (l7fda),a
	ld a,(l7fcd)
	ld (l7fdd),a
	ld a,(l7fdb)
	and a
	jr z,l7de8
	ld a,(l7ffa)
.l7de8
	ld b,a
	ld a,(l7fce)
	add b
	ld (l7b78),a
	ld a,(l7fcf)
	add b
	and #0f
	ld (l7b79),a
	ld hl,(l7fd0)
	ld (l7b7c),hl
.l7dff
	ld hl,l7fdd
	dec (hl)
	ld a,(l7fd8)
	and a
	jr z,l7e26
	jp p,l7e19
	ld hl,(l7b78)
	ld de,(l7fd4)
	add hl,de
	ld (l7b78),hl
	jr l7e26
.l7e19
	ld hl,(l7b78)
	ld de,(l7fd4)
	and a
	sbc hl,de
	ld (l7b78),hl
.l7e26
	ld a,(l7fd9)
	and a
	jr z,l7e49
	jp p,l7e3c
	ld hl,(l7b7c)
	ld de,(l7fd6)
	add hl,de
	ld (l7b7c),hl
	jr l7e49
.l7e3c
	ld hl,(l7b7c)
	ld de,(l7fd6)
	and a
	sbc hl,de
	ld (l7b7c),hl
.l7e49
	ld a,(l7b78)
	ld (l7b7e),a
	ret

.l7e50
	dw l7e78,l7e89,l7e9a,l7eab
	dw l7ebc,l7ecd,l7ede,l7eef
	dw l7f00,l7f11,l7f22,l7f33
	dw l7f44,l7f55,l7f66,l7f77
	dw l7f88,l7f99,l7faa,l7fbb
.l7e78
	db #14,#14,#40,#00,#20,#00,#14,#f2
	db #01,#00,#01,#00,#ff,#ff,#0a,#00
	db #00
.l7e89
	db #0a,#14,#50,#00,#08,#00,#28,#f2
	db #09,#00,#09,#00,#ff,#ff,#0a,#00
	db #00
.l7e9a
	db #19,#07,#00,#04,#10,#04,#0f,#fa
	db #98,#00,#98,#00,#ff,#ff,#05,#00
	db #00
.l7eab
	db #19,#07,#80,#04,#90,#04,#0f,#fa
	db #98,#00,#98,#00,#ff,#ff,#05,#00
	db #00
.l7ebc
	db #64,#06,#42,#00,#38,#00,#0a,#fa
	db #04,#00,#04,#00,#01,#01,#ff,#00
	db #0d
.l7ecd
	db #14,#06,#8a,#01,#00,#01,#06,#fa
	db #20,#00,#28,#00,#01,#01,#0f,#01
	db #0e
.l7ede
	db #14,#07,#a0,#01,#00,#03,#0f,#fa
	db #20,#00,#18,#00,#01,#01,#3c,#00
	db #00
.l7eef
	db #1e,#07,#04,#00,#0b,#00,#0c,#fa
	db #08,#00,#08,#00,#ff,#ff,#0a,#00
	db #00
.l7f00
	db #19,#ff,#1a,#00,#40,#00,#1e,#fa
	db #01,#04,#01,#04,#01,#01,#ff,#00
	db #00
.l7f11
	db #28,#1f,#0f,#02,#0f,#02,#03,#d7
	db #00,#00,#00,#00,#01,#01,#00,#00
	db #0d
.l7f22
	db #23,#0a,#0a,#00,#0f,#00,#19,#d2
	db #03,#00,#04,#00,#ff,#01,#0a,#01
	db #00
.l7f33
	db #5a,#0a,#0a,#00,#0f,#00,#2d,#d2
	db #03,#00,#04,#00,#ff,#01,#0a,#01
	db #00
.l7f44
	db #14,#06,#01,#02,#11,#02,#14,#f2
	db #c8,#00,#cc,#00,#ff,#ff,#ff,#00
	db #00
.l7f55
	db #3c,#0d,#80,#00,#10,#02,#1e,#fa
	db #06,#00,#14,#00,#01,#01,#ff,#00
	db #00
.l7f66
	db #0a,#05,#0a,#01,#17,#01,#09,#fa
	db #1f,#00,#1c,#00,#ff,#ff,#05,#00
	db #00
.l7f77
	db #23,#ff,#17,#68,#f9,#05,#05,#fa
	db #03,#04,#01,#04,#01,#01,#ff,#00
	db #0d
.l7f88
	db #03,#63,#21,#00,#10,#02,#01,#d7
	db #00,#00,#00,#00,#01,#01,#00,#00
	db #0e
.l7f99
	db #14,#07,#aa,#00,#ae,#00,#11,#fa
	db #20,#00,#20,#00,#ff,#ff,#06,#00
	db #00
.l7faa
	db #5a,#ff,#81,#07,#79,#07,#05,#fa
	db #02,#04,#02,#04,#01,#01,#ff,#00
	db #0d
.l7fbb
	db #14,#06,#81,#00,#86,#00,#28,#d2
	db #24,#00,#29,#00,#ff,#ff,#15,#00
	db #00
.l7fcc
	db #00
.l7fcd
	db #00
.l7fd4 equ $ + 6
.l7fd3 equ $ + 5
.l7fd2 equ $ + 4
.l7fd0 equ $ + 2
.l7fcf equ $ + 1
.l7fce
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7fdd equ $ + 7
.l7fdc equ $ + 6
.l7fdb equ $ + 5
.l7fda equ $ + 4
.l7fd9 equ $ + 3
.l7fd8 equ $ + 2
.l7fd6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l7fdf
	ld a,(l7ffa)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l7ffd
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l7ffd	equ $ +3
.l7ffa
	db #0e,#03
	db #0a,#50
;
; #7d61 sound-fx
;
.music_info
	db "Platoon (1986)(Ocean Software)(David Whittaker)",0
	db "",0

	read "music_end.asm"
