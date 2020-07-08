; Music of Crystal Kingdown Dizzy (1992)(Codemasters)()()
; Ripped by Megachur the 04/07/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CRYSTAKD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #b1a7
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
.stop_music
;
	xor a
	ld (lb666),a
	jp lbfd5
;
.init_music
;
	ex af,af'
	xor a
	ld (lb666),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,lb668
	add hl,bc
	ld ix,lb1fb
	ld c,#1f
	ld a,#03
.lb1c7
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
	jr nz,lb1c7
	inc a
	ld (lb300),a
	ld (lb666),a
	ret
.lb1ff equ $ + 4
.lb1fe equ $ + 3
.lb1fb
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.lb21e equ $ + 4
.lb21d equ $ + 3
.lb21a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.lb23d equ $ + 4
.lb23c equ $ + 3
.lb239
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
; sound fx ?
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,lb668
	add hl,bc
	ld a,(hl)
	ld (lb1fe),a
	inc hl
	ld a,(hl)
	ld (lb1ff),a
	inc hl
	ld a,(hl)
	ld (lb21d),a
	inc hl
	ld a,(hl)
	ld (lb21e),a
	inc hl
	ld a,(hl)
	ld (lb23c),a
	inc hl
	ld a,(hl)
	ld (lb23d),a
	ret
;
.play_music
.lb281
;
	ld a,(lb666)
	and a
	ret z
.lb287 equ $ + 1
	ld a,#00
	ld (lb2d4),a
	ld hl,lb300
	dec (hl)
	jr nz,lb2ac
	ld b,(hl)
	ld ix,lb1fb
	call lb3c6
	ld ix,lb21a
	call lb3c6
	ld ix,lb239
	call lb3c6
	ld hl,lb300
.lb2ab equ $ + 1
	ld (hl),#01
.lb2ac
	ld ix,lb1fb
	call lb468
	ld (lb579),hl
	ld (lb581),a
	ld ix,lb21a
	call lb468
	ld (lb57b),hl
	ld (lb582),a
	ld ix,lb239
	call lb468
	ld (lb57d),hl
	ld (lb583),a
.lb2d4 equ $ + 1
	ld a,#00
	ld (lb57f),a
	ld hl,lb586
	ld d,#0d
.lb2dd
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f610
	out (c),c
	ld a,#d0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	or #10
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,lb2dd
	ret
.lb300
	db #00,#bc,#a4,#a8,#ad,#6b,#9a,#95
	db #10,#84,#7c,#4a,#39,#58,#a9,#01
	xor a
	ld (lb666),a
	pop hl
	jp lbfd5
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
	jr nz,lb33a
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb33a
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb3d4
	ld a,(ix+#1e)
	ld c,a
	and #07
	ld hl,lb55e
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp lb3d4
	ld a,(ix+#1e)
	ld c,a
	and #38
	ld hl,lb55e
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp lb3d4
	ld hl,lb55e
	ld a,(ix+#1e)
	cpl
	and (hl)
	ld (hl),a
	jr lb3d4
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lb3d4
	ld a,(de)
	inc de
	ld (lb287),a
	jr lb3d4
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr lb3d4
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lb3d4
	ld (ix+#1d),b
	jr lb3d4
	ld (ix+#1d),#40
	jr lb3d4
	ld (ix+#1d),#c0
	jr lb3d4
	set 1,(ix+#00)
	jr lb3d4
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb3f7
.lb3c6
	dec (ix+#10)
	jr nz,lb404
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb3d4
	ld a,(de)
	inc de
	and a
	jp m,lb415
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.lb3f7
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.lb404
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lb411
	inc (ix+#12)
	ret
.lb411
	dec (ix+#12)
	ret
.lb415
	cp #b8
	jr c,lb460
	add #20
	jr c,lb445
	add #10
	jr c,lb44b
	add #10
	jr nc,lb43e
	ld c,a
	ld hl,lb62f
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	set 4,(ix+#00)
	jr lb3d4
.lb43e
	add #09
	ld (lb2ab),a
	jr lb3d4
.lb445
	inc a
	ld (ix+#11),a
	jr lb3d4
.lb44b
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
	jp lb3d4
.lb460
	ld hl,lb281
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb468
	ld c,(ix+#00)
	bit 5,c
	jr z,lb4b3
	ld a,(ix+#16)
	sub #10
	jr nc,lb49b
	bit 6,c
	jr z,lb4a0
	add (ix+#13)
	jr nc,lb480
	sbc a
.lb480
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,lb496
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr lb4b3
.lb496
	ld (ix+#18),a
	jr lb4b3
.lb49b
	ld (ix+#16),a
	jr lb4b3
.lb4a0
	cpl
	sub #0f
	add (ix+#13)
	jr c,lb4a9
	sub a
.lb4a9
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,lb4b3
	res 5,c
.lb4b3
	ld a,(ix+#12)
	bit 4,c
	jr z,lb4d5
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,lb4cd
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.lb4cd
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
.lb4d5
	ld hl,lb587
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb52f
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb4f8
	bit 0,c
	jr nz,lb516
.lb4f8
	bit 5,l
	jr nz,lb508
	sub (ix+#1b)
	jr nc,lb513
	set 5,(ix+#1d)
	sub a
	jr lb513
.lb508
	add (ix+#1b)
	cp b
	jr c,lb513
	res 5,(ix+#1d)
	ld a,b
.lb513
	ld (ix+#1c),a
.lb516
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb521
	dec d
.lb521
	add #a0
	jr c,lb52d
.lb525
	sla e
	rl d
	add #18
	jr nc,lb525
.lb52d
	add hl,de
	ex de,hl
.lb52f
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lb55a
	ld b,(ix+#0e)
	djnz lb557
	ld c,(ix+#0d)
	bit 7,c
	jr z,lb546
	dec b
.lb546
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lb55a
.lb557
	ld (ix+#0e),b
.lb55a
	cpl
	and #03
.lb55e equ $ + 1
	ld a,#38
	jr nz,lb56b
	ld a,(lb287)
	xor #08
	ld (lb2d4),a
	ld a,#07
.lb56b
	ld hl,lb580
	xor (hl)
	and (ix+#1e)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.lb580 equ $ + 7
.lb57f equ $ + 6
.lb57d equ $ + 4
.lb57b equ $ + 2
.lb579
	db #00,#00,#00,#00,#00,#00,#00,#38
.lb586 equ $ + 5
.lb583 equ $ + 2
.lb582 equ $ + 1
.lb581
	db #0f,#0f,#0d,#00,#00,#00
.lb587
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
.lb62f
	db #09,#0d,#0f,#14,#17,#1b,#1d,#21
	db #23,#00,#03,#07,#87,#00,#04,#07
	db #87,#00,#03,#07,#0c,#87,#00,#04
	db #07,#0c,#87,#07,#0c,#0f,#87,#07
	db #0c,#10,#87,#03,#07,#0c,#87,#04
	db #07,#0c,#87,#00,#00,#0c,#0c,#00
.music_end equ $ + 7
.lb666 equ $ + 7
	db #00,#0c,#0c,#87,#0c,#18,#87,#00
	db #00
.lb668
	dw lb680,lb69a,lb6b4
	dw lb6ca,lb6ea,lb70a,lb722
	dw lb726,lb72a,lb72e,lb732
	dw lb736
.lb680
	dw lb73a,lb835,lb835,lb835
	dw lb835,lb835,lb835,lb835
	dw lb835,lb835,lb835,lb835
.lb69a equ $ + 2
	dw #0000,lb7f1,lba38,lba38
	dw lba38,lba38,lba38,lba38
	dw lba38,lba38,lba38,lba38
.lb6b4 equ $ + 4
	dw lba38,#0000,lb80b,lbf8d
	dw lba56,lbaa3,lba56,lbaa3
	dw lbaf3,lbb85,lbbd2,lbc22
.lb6ca equ $ + 2
	dw #0000,lbcb4,lbd19,lbd19
	dw lbd19,lbd19,lbd19,lbd19
	dw lbd19,lbdda,lbdda,lbdda
	dw lbdda,lbd19,lbd19,lbd19
.lb6ea equ $ + 2
	dw #0000,lbcdd,lbdda,lbdda
	dw lbdda,lbdda,lbdda,lbdda
	dw lbdda,lbfc2,lbfc2,lbfc2
	dw lbfc2,lbdda,lbdda,lbdda
.lb70a equ $ + 2
	dw #0000,lbcfb,lbf9f,lbf9f
	dw lbd77,lbcb4,lbcb4,lbf9f
	dw lbf9f,lbcb4,lbcb4,lbd77
.lb726 equ $ + 6
.lb722 equ $ + 2
	dw #0000,lbebb,#0000,lbef4
.lb72e equ $ + 6
.lb72a equ $ + 2
	dw #0000,lbed5,#0000,lbf22
.lb736 equ $ + 6
.lb732 equ $ + 2
	dw #0000,lbf43,#0000,lbf6d
	dw #0000
.lb73a
	db #ba,#8a,#88,#01,#01,#de,#00,#12
	db #13,#e3,#1d,#8b,#88,#01,#02,#81
	db #df,#00,#01,#10,#84,#50,#01,#8c
	db #28,#8a,#88,#01,#01,#de,#00,#12
	db #12,#e3,#1c,#8b,#88,#01,#02,#81
	db #df,#00,#01,#10,#84,#50,#01,#8c
	db #28,#8a,#88,#01,#01,#de,#00,#12
	db #12,#e3,#1a,#8b,#88,#01,#02,#81
	db #df,#00,#01,#10,#84,#50,#01,#8c
	db #28,#8a,#88,#01,#01,#de,#00,#12
	db #12,#e3,#18,#8b,#88,#01,#02,#81
	db #df,#00,#01,#10,#84,#50,#01,#8c
	db #28,#8a,#88,#01,#01,#de,#00,#12
	db #12,#e3,#1a,#8b,#88,#01,#02,#81
	db #df,#00,#01,#10,#84,#50,#01,#8c
	db #28,#8a,#88,#01,#01,#de,#00,#12
	db #12,#e3,#1c,#8b,#88,#01,#02,#81
	db #df,#00,#01,#10,#84,#50,#01,#8c
	db #28,#8a,#88,#01,#01,#de,#00,#12
	db #12,#e3,#1d,#8b,#88,#01,#02,#81
	db #df,#00,#01,#10,#84,#50,#01,#8c
	db #28,#8a,#88,#01,#01,#de,#00,#12
.lb7f1 equ $ + 7
	db #12,#ff,#84,#fb,#0c,#11,#87,#ba
	db #8a,#88,#01,#01,#dd,#00,#52,#23
	db #ef,#c3,#29,#c0,#26,#c0,#26,#e7
	db #c3,#29,#ff,#84,#fd,#0c,#c3,#1d
.lb80b equ $ + 1
	db #87,#ba,#8a,#88,#01,#02,#82,#dd
	db #00,#22,#13,#e5,#35,#e1,#35,#e5
	db #34,#e1,#34,#e5,#32,#e1,#32,#e5
	db #30,#e1,#30,#e5,#32,#e1,#32,#e5
	db #34,#e1,#34,#e7,#35,#ff,#84,#fc
.lb835 equ $ + 3
	db #0c,#29,#87,#ba,#8a,#88,#01,#01
	db #dd,#00,#32,#13,#e5,#0c,#8b,#88
	db #01,#02,#81,#df,#00,#01,#10,#e2
	db #84,#50,#01,#8c,#28,#8a,#88,#01
	db #01,#dd,#00,#32,#13,#e5,#0c,#e2
	db #18,#8b,#88,#01,#02,#81,#df,#00
	db #01,#10,#e2,#84,#50,#01,#8c,#28
	db #8a,#88,#01,#01,#dd,#00,#32,#13
	db #e2,#0c,#ba,#8a,#88,#01,#01,#dd
	db #00,#32,#13,#e5,#0c,#8b,#88,#01
	db #02,#81,#df,#00,#01,#10,#e2,#84
	db #50,#01,#8c,#28,#8a,#88,#01,#01
	db #dd,#00,#32,#13,#e5,#0c,#e2,#18
	db #8b,#88,#01,#02,#81,#df,#00,#01
	db #10,#e2,#84,#50,#01,#8c,#28,#8a
	db #88,#01,#01,#dd,#00,#32,#13,#e2
	db #0c,#ba,#8a,#88,#01,#01,#dd,#00
	db #32,#13,#e5,#08,#8b,#88,#01,#02
	db #81,#df,#00,#01,#10,#e2,#84,#50
	db #01,#8c,#28,#8a,#88,#01,#01,#dd
	db #00,#32,#13,#e5,#08,#e2,#14,#8b
	db #88,#01,#02,#81,#df,#00,#01,#10
	db #e2,#84,#50,#01,#8c,#28,#8a,#88
	db #01,#01,#dd,#00,#32,#13,#e2,#08
	db #ba,#8a,#88,#01,#01,#dd,#00,#32
	db #13,#e5,#08,#8b,#88,#01,#02,#81
	db #df,#00,#01,#10,#e2,#84,#50,#01
	db #8c,#28,#8a,#88,#01,#01,#dd,#00
	db #32,#13,#e5,#08,#e2,#14,#8b,#88
	db #01,#02,#81,#df,#00,#01,#10,#e2
	db #84,#50,#01,#8c,#28,#8b,#88,#01
	db #02,#81,#df,#00,#01,#10,#e2,#84
	db #50,#01,#8c,#28,#ba,#8a,#88,#01
	db #01,#dd,#00,#32,#13,#e5,#0a,#8b
	db #88,#01,#02,#81,#df,#00,#01,#10
	db #e2,#84,#50,#01,#8c,#28,#8a,#88
	db #01,#01,#dd,#00,#32,#13,#e5,#0a
	db #e2,#16,#8b,#88,#01,#02,#81,#df
	db #00,#01,#10,#e2,#84,#50,#01,#8c
	db #28,#8a,#88,#01,#01,#dd,#00,#32
	db #13,#e2,#0a,#ba,#8a,#88,#01,#01
	db #dd,#00,#32,#13,#e5,#0a,#8b,#88
	db #01,#02,#81,#df,#00,#01,#10,#e2
	db #84,#50,#01,#8c,#28,#8a,#88,#01
	db #01,#dd,#00,#32,#13,#e5,#0a,#e2
	db #16,#8b,#88,#01,#02,#81,#df,#00
	db #01,#10,#e2,#84,#50,#01,#8c,#28
	db #8a,#88,#01,#01,#dd,#00,#32,#13
	db #e2,#0a,#ba,#8a,#88,#01,#01,#dd
	db #00,#32,#13,#e5,#07,#8b,#88,#01
	db #02,#81,#df,#00,#01,#10,#e2,#84
	db #50,#01,#8c,#28,#8a,#88,#01,#01
	db #dd,#00,#32,#13,#e5,#07,#e2,#13
	db #8b,#88,#01,#02,#81,#df,#00,#01
	db #10,#e2,#84,#50,#01,#8c,#28,#8a
	db #88,#01,#01,#dd,#00,#32,#13,#e2
	db #07,#ba,#8a,#88,#01,#01,#dd,#00
	db #32,#13,#e5,#0b,#8b,#88,#01,#02
	db #81,#df,#00,#01,#10,#e2,#84,#50
	db #01,#8c,#28,#8a,#88,#01,#01,#dd
	db #00,#32,#13,#e5,#0b,#e2,#17,#8b
	db #88,#01,#02,#81,#df,#00,#01,#10
	db #e2,#84,#50,#01,#8c,#28,#8b,#88
	db #01,#02,#81,#df,#00,#01,#10,#e2
.lba38 equ $ + 6
	db #84,#50,#01,#8c,#28,#87,#ba,#8a
	db #88,#01,#01,#dc,#00,#01,#03,#f7
	db #c3,#24,#c3,#24,#f7,#c3,#20,#c3
	db #20,#f7,#c3,#22,#c3,#22,#f7,#c3
.lba56 equ $ + 4
	db #1f,#c2,#23,#87,#ba,#8a,#88,#01
	db #02,#82,#dd,#00,#21,#13,#e2,#24
	db #e5,#28,#e2,#2b,#e5,#2d,#e2,#30
	db #e5,#2b,#e2,#2d,#e5,#28,#e2,#2b
	db #24,#e5,#26,#f1,#27,#e2,#2c,#ee
	db #27,#e2,#24,#27,#e5,#2c,#e2,#2e
	db #ee,#29,#e2,#27,#e8,#29,#e5,#2c
	db #e2,#2e,#e5,#2c,#e2,#2e,#e2,#2f
	db #ee,#2f,#e2,#2f,#30,#32,#eb,#32
	db #e2,#36,#84,#07,#05,#e5,#c0,#34
.lbaa3 equ $ + 1
	db #87,#ba,#8a,#88,#01,#02,#82,#dd
	db #10,#11,#33,#e2,#24,#28,#e8,#2b
	db #e2,#24,#28,#e8,#2b,#e2,#24,#e5
	db #28,#e2,#24,#28,#2b,#e2,#27,#2b
	db #e8,#2c,#e2,#27,#2b,#e8,#2c,#e2
	db #27,#e5,#2b,#e2,#27,#2b,#2c,#e2
	db #26,#2e,#eb,#2e,#e2,#29,#e8,#26
	db #e2,#22,#e5,#1d,#e2,#1a,#e5,#16
	db #e2,#1a,#ee,#1f,#e2,#21,#1f,#23
	db #ee,#26,#e5,#84,#05,#03,#c0,#28
.lbaf3 equ $ + 1
	db #87,#ba,#8a,#88,#01,#01,#81,#dd
	db #00,#21,#30,#f7,#c8,#2b,#eb,#c8
	db #30,#e5,#c8,#2f,#c8,#28,#f1,#c8
	db #2c,#e2,#c8,#2b,#e8,#c8,#27,#e2
	db #c8,#26,#e8,#c8,#24,#e2,#c8,#22
	db #c8,#21,#c8,#22,#f4,#c8,#29,#e5
	db #c8,#26,#e2,#c8,#24,#e5,#c8,#26
	db #e2,#c8,#24,#c8,#26,#c8,#29,#eb
	db #c8,#26,#e5,#c8,#2b,#e5,#c8,#2f
	db #eb,#c8,#2f,#e5,#c8,#30,#c8,#2f
	db #8a,#88,#01,#02,#82,#dd,#00,#51
	db #33,#f1,#c8,#2f,#e2,#c8,#2d,#f1
	db #c8,#2d,#e2,#c8,#2b,#e5,#c8,#28
	db #f7,#c8,#27,#eb,#c8,#2c,#eb,#c8
	db #2e,#f7,#c8,#29,#e5,#c8,#26,#e2
	db #c8,#29,#e8,#c8,#22,#e5,#c8,#21
	db #e8,#c8,#1f,#e8,#c8,#21,#e5,#c8
	db #23,#e8,#c8,#23,#e8,#c8,#26,#e5
.lbb85 equ $ + 3
	db #c8,#28,#87,#ba,#8a,#88,#01,#02
	db #82,#dd,#00,#21,#13,#e2,#30,#e5
	db #34,#e2,#37,#e5,#39,#e2,#3c,#e5
	db #37,#e2,#39,#e5,#34,#e2,#37,#30
	db #e5,#32,#f1,#33,#e2,#38,#ee,#33
	db #e2,#30,#33,#e5,#38,#e2,#3a,#ee
	db #35,#e2,#33,#e8,#35,#e5,#38,#e2
	db #3a,#e5,#38,#e2,#3a,#e2,#3b,#ee
	db #3b,#e2,#3b,#3c,#3e,#eb,#3e,#e2
	db #42,#84,#07,#05,#e5,#c0,#40,#87
.lbbd2
	db #ba,#8a,#88,#01,#02,#82,#dd,#10
	db #11,#33,#e2,#30,#34,#e8,#37,#e2
	db #30,#34,#e8,#37,#e2,#30,#e5,#34
	db #e2,#30,#34,#37,#e2,#33,#37,#e8
	db #38,#e2,#33,#37,#e8,#38,#e2,#33
	db #e5,#37,#e2,#33,#37,#38,#e2,#32
	db #3a,#eb,#3a,#e2,#35,#e8,#32,#e2
	db #2e,#e5,#29,#e2,#26,#e5,#22,#e2
	db #26,#ee,#2b,#e2,#2d,#2b,#2f,#ee
	db #32,#e5,#84,#05,#03,#c0,#34,#87
.lbc22
	db #ba,#8a,#88,#01,#02,#82,#dd,#00
	db #21,#30,#f7,#c8,#37,#eb,#c8,#3c
	db #e5,#c8,#3b,#c8,#34,#f1,#c8,#38
	db #e2,#c8,#37,#e8,#c8,#33,#e2,#c8
	db #32,#e8,#c8,#30,#e2,#c8,#2e,#c8
	db #2d,#c8,#2e,#f4,#c8,#35,#e5,#c8
	db #32,#e2,#c8,#30,#e5,#c8,#32,#e2
	db #c8,#30,#c8,#32,#c8,#35,#eb,#c8
	db #32,#e5,#c8,#37,#e5,#c8,#3b,#eb
	db #c8,#3b,#e5,#c8,#3c,#c8,#3b,#8a
	db #88,#01,#02,#82,#dd,#00,#51,#33
	db #f1,#c8,#3b,#e2,#c8,#39,#f1,#c8
	db #39,#e2,#c8,#37,#e5,#c8,#34,#f7
	db #c8,#33,#eb,#c8,#38,#eb,#c8,#3a
	db #f7,#c8,#35,#e5,#c8,#32,#e2,#c8
	db #35,#e8,#c8,#2e,#e5,#c8,#2d,#e8
	db #c8,#2b,#e8,#c8,#2d,#e5,#c8,#2f
	db #e8,#c8,#2f,#e8,#c8,#32,#e5,#c8
.lbcb4 equ $ + 2
	db #34,#87,#ba,#8a,#88,#01,#02,#82
	db #dd,#10,#11,#33,#e7,#c8,#39,#c8
	db #37,#c8,#35,#c8,#34,#c8,#30,#e7
	db #c8,#2f,#c8,#2d,#c8,#2b,#ef,#c8
	db #26,#ef,#c8,#2b,#ff,#c8,#84,#00
.lbcdd equ $ + 3
	db #0f,#2d,#87,#ba,#8a,#88,#01,#02
	db #82,#dd,#10,#11,#33,#e7,#21,#1f
	db #1d,#1c,#18,#e7,#17,#15,#13,#ef
	db #0e,#ef,#13,#ff,#84,#ff,#0f,#15
.lbcfb equ $ + 1
	db #87,#ba,#8a,#88,#01,#02,#82,#dd
	db #10,#11,#33,#e7,#39,#37,#35,#34
	db #30,#e7,#2f,#2d,#2b,#ef,#26,#ef
.lbd19 equ $ + 7
	db #2b,#84,#ff,#0f,#ff,#2d,#87,#ba
	db #8a,#88,#01,#01,#dd,#00,#32,#10
	db #e3,#15,#e1,#15,#e3,#15,#e3,#15
	db #e1,#15,#e3,#15,#15,#e3,#15,#15
	db #e3,#18,#e1,#18,#e3,#18,#e3,#18
	db #e1,#18,#e3,#18,#18,#e3,#18,#0c
	db #e3,#13,#e1,#13,#e3,#13,#e3,#13
	db #e1,#13,#e3,#13,#13,#e3,#13,#13
	db #e3,#1a,#e1,#1a,#e3,#1a,#e3,#1a
	db #e1,#1a,#e3,#1a,#1a,#e3,#18,#17
	db #87,#ba,#8a,#88,#01,#01,#dc,#00
	db #01,#03,#ff,#c2,#2d,#c3,#30,#ff
.lbd77 equ $ + 5
	db #c3,#2b,#c2,#32,#87,#ba,#8a,#88
	db #01,#02,#82,#dd,#00,#52,#12,#e3
	db #2d,#2b,#e7,#28,#eb,#28,#e3,#26
	db #e3,#28,#e7,#2b,#e3,#29,#e7,#28
	db #e3,#26,#24,#eb,#1f,#23,#e7,#26
	db #e3,#29,#28,#eb,#26,#e3,#29,#28
	db #26,#28,#24,#eb,#21,#e3,#21,#24
	db #28,#f7,#2b,#e7,#28,#f7,#26,#e7
	db #2b,#e3,#29,#28,#26,#29,#28,#26
	db #29,#28,#e3,#28,#24,#21,#28,#24
	db #21,#28,#24,#2b,#28,#24,#2b,#28
	db #24,#2b,#28,#e3,#2f,#2b,#26,#2f
	db #2b,#26,#2f,#e3,#2b,#ff,#80,#87
.lbdda
	db #ba,#8a,#88,#01,#01,#dc,#00,#01
	db #03,#e7,#c2,#2d,#8b,#88,#01,#02
	db #81,#df,#00,#01,#10,#e3,#84,#50
	db #01,#8c,#1e,#8a,#88,#01,#01,#dc
	db #00,#01,#03,#eb,#c2,#2d,#8b,#88
	db #01,#02,#81,#df,#00,#01,#10,#e7
	db #84,#50,#01,#8c,#1e,#ba,#8a,#88
	db #01,#01,#dc,#00,#01,#03,#e7,#c3
	db #30,#8b,#88,#01,#02,#81,#df,#00
	db #01,#10,#e3,#84,#50,#01,#8c,#1e
	db #8a,#88,#01,#01,#dc,#00,#01,#03
	db #eb,#c3,#30,#8b,#88,#01,#02,#81
	db #df,#00,#01,#10,#e7,#84,#50,#01
	db #8c,#1e,#ba,#8a,#88,#01,#01,#dc
	db #00,#01,#03,#e7,#c3,#2b,#8b,#88
	db #01,#02,#81,#df,#00,#01,#10,#e3
	db #84,#50,#01,#8c,#1e,#8a,#88,#01
	db #01,#dc,#00,#01,#03,#eb,#c3,#2b
	db #8b,#88,#01,#02,#81,#df,#00,#01
	db #10,#e7,#84,#50,#01,#8c,#1e,#ba
	db #8a,#88,#01,#01,#dc,#00,#01,#03
	db #e7,#c2,#32,#8b,#88,#01,#02,#81
	db #df,#00,#01,#10,#e3,#84,#50,#01
	db #8c,#1e,#8a,#88,#01,#01,#dc,#00
	db #01,#03,#eb,#c2,#32,#8b,#88,#01
	db #02,#81,#df,#00,#01,#10,#e3,#84
	db #50,#01,#8c,#1e,#e1,#84,#50,#01
	db #8c,#1e,#e1,#84,#50,#01,#8c,#1e
.lbebb equ $ + 1
	db #87,#ba,#8a,#88,#01,#02,#82,#dd
	db #00,#52,#12,#e1,#18,#e3,#1c,#e1
	db #1f,#e5,#1d,#1c,#e3,#1a,#e1,#1c
.lbed5 equ $ + 3
	db #ff,#18,#87,#ba,#8a,#88,#01,#02
	db #82,#dd,#00,#02,#12,#e1,#34,#e3
	db #30,#e1,#37,#e5,#39,#37,#e3,#35
	db #e1,#34,#e3,#35,#e1,#34,#ed,#30
.lbef4 equ $ + 2
	db #8e,#87,#8b,#88,#01,#02,#81,#df
	db #00,#01,#10,#e7,#84,#50,#01,#8c
	db #1e,#e5,#84,#50,#01,#8c,#1e,#e5
	db #84,#50,#01,#8c,#1e,#e5,#84,#50
	db #01,#8c,#1e,#e5,#84,#50,#01,#8c
	db #1e,#ff,#84,#50,#01,#8c,#1e,#87
.lbf22
	db #ba,#8a,#88,#01,#02,#82,#dd,#00
	db #02,#12,#e3,#18,#1c,#e5,#1d,#e1
	db #21,#e5,#1f,#e1,#1c,#e7,#1a,#e1
	db #18,#e5,#18,#e1,#18,#e5,#18,#8e
.lbf43 equ $ + 1
	db #87,#ba,#8a,#88,#01,#02,#82,#dd
	db #00,#02,#12,#e1,#c8,#30,#c8,#34
	db #e3,#c8,#37,#e5,#c8,#39,#e1,#c8
	db #39,#e5,#c8,#37,#e1,#c8,#34,#e7
	db #c8,#32,#e5,#c8,#30,#e1,#c8,#30
	db #e5,#f0,#87
.lbf6d
	db #ba,#8a,#88,#01,#02,#82,#dd,#00
	db #02,#12,#e1,#18,#1c,#e3,#1f,#e5
	db #21,#e1,#21,#e5,#1f,#e1,#1c,#e7
	db #1a,#e5,#18,#e1,#18,#e5,#18,#87
.lbf8d
	db #8a,#df,#00,#f1,#01,#ff,#80,#ff
	db #80,#ff,#80,#ff,#80,#ff,#80,#ff
.lbf9f equ $ + 2
	db #80,#87,#ba,#8a,#88,#01,#02,#82
	db #dc,#00,#01,#03,#ff,#84,#01,#01
	db #c8,#45,#ff,#84,#01,#01,#c8,#48
	db #ff,#84,#01,#01,#c8,#43,#ff,#84
.lbfc2 equ $ + 5
	db #01,#01,#c8,#4a,#87,#ba,#8a,#88
	db #01,#02,#82,#dc,#00,#f1,#01,#ff
	db #80,#ff,#80,#ff,#80,#ff,#80,#87
.lbfd5
	ld de,#d000
.lbfd8
	call lbfe2
	dec e
	jp p,lbfd8
	ld de,#073f
.lbfe2
	ld b,#f4
	out (c),d
	ld bc,#f610
	out (c),c
	ld a,#d0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	or #10
	out (c),a
	out (c),c
	ret
;
.music_info
	db "Crystal Kingdown Dizzy (1992)(Codemasters)()",0
	db "",0

	read "music_end.asm"
