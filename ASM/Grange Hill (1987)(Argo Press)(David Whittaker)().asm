; Music of Grange Hill (1987)(Argo Press)(David Whittaker)()
; Ripped by Megachur the 21/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GRANGEHI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #6dd4

	read "music_header.asm"

	jp l6de3	; init
	jp l6e8f	; play
	jp l6f42	; stop
	ld a,#ff
	ld (l7307),a
	ret
;
.init_music
.l6de3
;
	ld hl,#0000
	ld (l7307),hl
	ld b,#00
	ld hl,l7309
	ld ix,l6e2e
	ld c,#20
	xor a
	ld (l7136),a
	ld a,#03
.l6dfa
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
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
	jr nz,l6dfa
	inc a
	ld (l6e8e),a
	ld (l7307),a
	ret
.l6e2e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l6e4e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l6e6e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.l6e8e
	db #00
;
.play_music
.l6e8f
;
	ld a,(l7307)
	and a
	ret z
.l6e95 equ $ + 1
	ld a,#00
	ld (l6ee2),a
	ld hl,l6e8e
	dec (hl)
	jr nz,l6eba
	ld b,(hl)
	ld ix,l6e2e
	call l7043
	ld ix,l6e4e
	call l7043
	ld ix,l6e6e
	call l7043
	ld hl,l6e8e
.l6eb9 equ $ + 1
	ld (hl),#01
.l6eba
	ld ix,l6e2e
	call l70ea
	ld (l71f9),hl
	ld (l7201),a
	ld ix,l6e4e
	call l70ea
	ld (l71fb),hl
	ld (l7202),a
	ld ix,l6e6e
	call l70ea
	ld (l71fd),hl
	ld (l7203),a
.l6ee2 equ $ + 1
	ld a,#00
	ld (l71ff),a
	ld a,(l7308)
	and a
	jr z,l6f1c
	ld hl,(l7206)
.l6ef0 equ $ + 1
	ld (l71f9),hl
	ld hl,(l720a)
	ld (l71fd),hl
	ld a,(l720c)
	ld (l71ff),a
	ld a,(l7200)
	or #2d
	ld hl,l720d
	and (hl)
	ld (l7200),a
	ld a,(l720e)
	ld (l7201),a
	ld a,(l7210)
	ld (l7203),a
	ld a,(l7212)
	ld (l7205),a
.l6f1c
	ld hl,l7205
	ld d,#0c
.l6f21
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
	jp p,l6f21
	ret
;
.stop_music
.l6f42
;
	ld hl,#0000
	ld (l7307),hl
.l6f48
	ld de,#0d00	;#d000
.l6f4b
	call l6f55
	dec e
	jp p,l6f4b
	ld de,#073f
.l6f55
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
	db #ca,#b2,#b6,#bb,#79,#a8,#a3,#10
	db #92,#8a,#4f,#39,#61,#b7,#01
	xor a
	ld (l7307),a
	pop hl
	jp l6f48
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
	jr nz,l6fa9
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l6fa9
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l7051
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,l71de
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l7051
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l71de
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l7051
	ld hl,l71de
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l7051
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l7051
	ld a,(de)
	inc de
	ld (l7136),a
	jr l7051
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l7051
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l7051
	ld (ix+#1d),b
	jr l7051
	ld (ix+#1d),#40
	jr l7051
	ld (ix+#1d),#c0
	jr l7051
	set 1,(ix+#00)
	jr l7051
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l707d
.l7043
	dec (ix+#10)
	jr nz,l708a
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l7051
	ld a,(de)
	inc de
	and a
	jp m,l709b
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l7063
	ld (l6e95),a
.l7063
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l707d
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l708a
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l7097
	inc (ix+#12)
	ret
.l7097
	dec (ix+#12)
	ret
.l709b
	cp #b8
	jr c,l70e2
	add #20
	jr c,l70c7
	add #10
	jr c,l70cd
	add #10
	jr nc,l70c0
	ld c,a
	ld hl,l72bb
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr l7051
.l70c0
	add #09
	ld (l6eb9),a
	jr l7051
.l70c7
	inc a
	ld (ix+#11),a
	jr l7051
.l70cd
	ld (ix+#19),a
	ld a,(de)
	inc de
	ld (ix+#14),a
	ld a,(de)
	inc de
	ld (ix+#15),a
	ld a,(de)
	inc de
	ld (ix+#17),a
	jp l7051
.l70e2
	ld hl,l6ef0
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l70ea
	ld c,(ix+#00)
	bit 5,c
	jr z,l7135
	ld a,(ix+#16)
	sub #10
	jr nc,l711d
	bit 6,c
	jr z,l7122
	add (ix+#13)
	jr nc,l7102
	sbc a
.l7102
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l7118
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l7135
.l7118
	ld (ix+#18),a
	jr l7135
.l711d
	ld (ix+#16),a
	jr l7135
.l7122
	cpl
	sub #0f
	add (ix+#13)
	jr c,l712b
	sub a
.l712b
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l7135
	res 5,c
.l7136 equ $ + 1
.l7135
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,l714d
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l714d
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l7213
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l71af
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l7178
	bit 0,c
	jr nz,l7196
.l7178
	bit 5,l
	jr nz,l7188
	sub (ix+#1b)
	jr nc,l7193
	set 5,(ix+#1d)
	sub a
	jr l7193
.l7188
	add (ix+#1b)
	cp b
	jr c,l7193
	res 5,(ix+#1d)
	ld a,b
.l7193
	ld (ix+#1c),a
.l7196
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l71a1
	dec d
.l71a1
	add #a0
	jr c,l71ad
.l71a5
	sla e
	rl d
	add #18
	jr nc,l71a5
.l71ad
	add hl,de
	ex de,hl
.l71af
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l71da
	ld b,(ix+#0e)
	djnz l71d7
	ld c,(ix+#0d)
	bit 7,c
	jr z,l71c6
	dec b
.l71c6
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l71da
.l71d7
	ld (ix+#0e),b
.l71da
	cpl
	and #03
.l71de equ $ + 1
	ld a,#38
	jr nz,l71eb
	ld a,(l6e95)
	xor #08
	ld (l6ee2),a
	ld a,#07
.l71eb
	ld hl,l7200
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l7200 equ $ + 7
.l71ff equ $ + 6
.l71fd equ $ + 4
.l71fb equ $ + 2
.l71f9
	db #00,#00,#00,#00,#00,#00,#00,#39
.l7206 equ $ + 5
.l7205 equ $ + 4
.l7203 equ $ + 2
.l7202 equ $ + 1
.l7201
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l7210 equ $ + 7
.l720e equ $ + 5
.l720d equ $ + 4
.l720c equ $ + 3
.l720a equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
.l7212 equ $ + 1
	db #00,#ff
.l7213
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
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
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
.l72bb
	db #10,#11,#14,#17,#1b,#1f,#22,#25
	db #28,#2b,#2d,#2f,#31,#33,#35,#39
	db #00,#87,#00,#03,#07,#87,#00,#04
	db #07,#87,#00,#03,#07,#0c,#87,#00
	db #04,#07,#0c,#87,#07,#0c,#0f,#87
	db #07,#0c,#10,#87,#03,#07,#0c,#87
	db #04,#07,#0c,#87,#00,#0c,#87,#00
	db #04,#87,#00,#03,#87,#00,#05,#87
	db #00,#07,#87,#00,#00,#0c,#0c,#87
.l7308 equ $ + 5
.music_end equ $ + 4
.l7307 equ $ + 4
	db #07,#0c,#11,#87,#00,#00
.l7309
	dw l730f,l7313,l732b
.l730f
	dw l736d,#0000
.l7313
	dw l748f,l73d4,l73d4,l73d4
	dw l73d4,l7492,l73d4,l73d4
	dw l7495,l73d4,l73d4,#0000
.l732b
	dw l73f9,l73f9,l73f9,l73f9
	dw l73f9,l73f9,l73f9,l73f9
	dw l7426,l7426,l7426,l7426
	dw l7426,l7426,l7426,l7426
	dw l7443,l7443,l7443,l7443
	dw l7443,l7443,l7443,l7443
	dw l7465,l7465,l7465,l7465
	dw l7465,l7465,l7465,l7465
	dw #0000
.l736d
	db #bd,#8b,#c0,#e1,#dd,#00,#12,#08
	db #8d,#3f,#dd,#00,#12,#08,#41,#dd
	db #00,#11,#05,#84,#04,#01,#8d,#27
	db #dd,#00,#12,#08,#41,#dd,#00,#12
	db #08,#8d,#3f,#8d,#3f,#dd,#00,#11
	db #05,#84,#04,#01,#8d,#27,#dd,#00
	db #12,#08,#41,#dd,#00,#12,#08,#8d
	db #3f,#dd,#00,#12,#08,#41,#dd,#00
	db #11,#05,#84,#04,#01,#8d,#27,#dd
	db #00,#12,#08,#8d,#3f,#dd,#00,#12
	db #08,#41,#dd,#00,#12,#08,#8d,#3f
	db #dd,#00,#11,#05,#84,#04,#01,#8d
.l73d4 equ $ + 7
	db #27,#dd,#00,#11,#03,#41,#87,#88
	db #01,#02,#83,#df,#00,#21,#05,#8a
	db #c0,#e2,#11,#e0,#11,#e1,#15,#18
	db #e0,#0f,#0f,#e1,#15,#e3,#11,#e2
	db #11,#e0,#11,#e1,#15,#18,#e2,#1b
.l73f9 equ $ + 4
	db #1a,#e1,#1d,#87,#88,#01,#01,#83
	db #8a,#dc,#00,#21,#05,#ce,#e1,#30
	db #2d,#2c,#e3,#2d,#dd,#00,#11,#05
	db #c9,#e1,#3f,#3e,#3c,#dc,#00,#21
	db #05,#ce,#30,#2d,#2c,#e3,#2d,#dd
	db #00,#11,#05,#c9,#e1,#3c,#38,#35
.l7426 equ $ + 1
	db #87,#df,#00,#21,#05,#88,#01,#01
	db #83,#ce,#e1,#18,#1d,#20,#e3,#24
	db #e1,#18,#1d,#e3,#20,#e1,#18,#1a
.l7443 equ $ + 6
	db #e3,#1b,#1a,#e1,#18,#87,#dc,#00
	db #11,#05,#88,#01,#01,#83,#c9,#e1
	db #3c,#3c,#e2,#39,#e0,#3e,#e3,#3c
	db #39,#dd,#00,#11,#05,#e1,#48,#48
	db #e2,#44,#e0,#4a,#e3,#48,#44,#87
.l7465
	db #df,#00,#11,#04,#8a,#c0,#81,#e0
	db #11,#11,#11,#11,#15,#15,#18,#18
	db #e0,#0f,#0f,#15,#15,#11,#11,#11
	db #11,#11,#11,#11,#11,#15,#15,#18
	db #18,#1b,#1b,#1b,#1a,#1a,#1a,#1d
.l7492 equ $ + 5
.l748f equ $ + 2
	db #1d,#87,#89,#00,#87,#89,#03,#87
.l7495
	db #89,#05,#87
;
.music_info
	db "Grange Hill (1987)(Argo Press)(David Whittaker)",0
	db "",0

	read "music_end.asm"
