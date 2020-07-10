; Music of Hydrofool (1987)(FTL - Gargoyle Games)(Rob Hubbard)()
; Ripped by Megachur the 02/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HYDROFOO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b380
FIRST_THEME				equ 0
LAST_THEME				equ 9

	read "music_header.asm"

	jp lb390	; init
	jp lb445	; play
	jp lb389	; stop
;
.stop_music
.lb389
;
	xor a
	ld (lb8a2),a
	jp lb4c2
;
.init_music
.lb390
;
	push af
	xor a
	ld (lb8a2),a
	pop af
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,lb8a3
	add hl,bc
	ld ix,lb3e1
	ld c,#21
	xor a
	ld (lb6ce),a
	ld a,#03
.lb3ad
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
	jr nz,lb3ad
	inc a
	ld (lb444),a
	ld (lb8a2),a
	ret
.lb3e1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.lb402
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.lb423
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
.lb444
	db #00
;
.play_music
.lb445
;
	ld a,(lb8a2)
	and a
	ret z
.lb44b equ $ + 1
	ld a,#00
	ld (lb498),a
	ld hl,lb444
	dec (hl)
	jr nz,lb470
	ld b,(hl)
	ld ix,lb3e1
	call lb5cc
	ld ix,lb402
	call lb5cc
	ld ix,lb423
.lb46a equ $ + 2
	call lb5cc
	ld hl,lb444
.lb46f equ $ + 1
	ld (hl),#01
.lb470
	ld ix,lb3e1
	call lb682
	ld (lb7a4),hl
	ld (lb7ac),a
	ld ix,lb402
	call lb682
	ld (lb7a6),hl
	ld (lb7ad),a
	ld ix,lb423
	call lb682
	ld (lb7a8),hl
	ld (lb7ae),a
.lb498 equ $ + 1
	ld a,#00
	ld (lb7aa),a
	ld hl,lb7b0
	ld d,#0c
.lb4a1
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
	jp p,lb4a1
	ret
.lb4c2
	ld de,#0d00	; original is ld de,#d000 should be ld de,&0d00 !!!
.lb4c5
	call lb4cf
	dec e
	jp p,lb4c5
	ld de,#073f
.lb4cf
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
	db #cd,#b5,#b9,#be,#7c,#ab,#a6,#13
	db #95,#8d,#52,#3c,#64,#ba,#04,#c1
	db #c6,#cb
	xor a
	ld (lb8a2),a
	pop hl
	jp lb4c2
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
	jr nz,lb526
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb526
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb5de
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,lb789
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb5de
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,lb789
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb5de
	ld hl,lb789
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr lb5de
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lb5de
	ld a,(de)
	inc de
	ld (lb6ce),a
	jr lb5de
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr lb5de
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lb5de
	ld (ix+#1d),b
	jr lb5de
	ld (ix+#1d),#40
	jr lb5de
	ld (ix+#1d),#c0
	jr lb5de
	set 1,(ix+#00)
	jr lb5de
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb614
	set 4,(ix+#00)
	jr lb5de
	set 0,(ix+#1f)
	jr lb5de
.lb5cc
	dec (ix+#10)
	jr nz,lb621
	ld (ix+#00),b
	res 0,(ix+#1f)
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb5de
	ld a,(de)
	inc de
	and a
	jp m,lb632
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb5f0
	ld (lb44b),a
.lb5f0
	bit 4,(ix+#00)
	jr nz,lb614
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	res 4,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.lb614
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.lb621
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lb62e
	inc (ix+#12)
	ret
.lb62e
	dec (ix+#12)
	ret
.lb632
	cp #b8
	jr c,lb67a
	add #20
	jr c,lb65e
	add #10
	jr c,lb665
	add #10
	jr nc,lb657
	ld c,a
	ld hl,lb85a
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr lb5de
.lb657
	add #09
	ld (lb46f),a
	jr lb5de
.lb65e
	inc a
	ld (ix+#11),a
	jp lb5de
.lb665
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
	jp lb5de
.lb67a
	ld hl,lb46a
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb682
	ld c,(ix+#00)
	bit 5,c
	jr z,lb6cd
	ld a,(ix+#16)
	sub #10
	jr nc,lb6b5
	bit 6,c
	jr z,lb6ba
	add (ix+#13)
	jr nc,lb69a
	sbc a
.lb69a
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,lb6b0
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr lb6cd
.lb6b0
	ld (ix+#18),a
	jr lb6cd
.lb6b5
	ld (ix+#16),a
	jr lb6cd
.lb6ba
	cpl
	sub #0f
	add (ix+#13)
	jr c,lb6c3
	sub a
.lb6c3
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,lb6cd
	res 5,c
.lb6ce equ $ + 1
.lb6cd
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,lb6e5
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.lb6e5
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lb7b2
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb747
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb710
	bit 0,c
	jr nz,lb72e
.lb710
	bit 5,l
	jr nz,lb720
	sub (ix+#1b)
	jr nc,lb72b
	set 5,(ix+#1d)
	sub a
	jr lb72b
.lb720
	add (ix+#1b)
	cp b
	jr c,lb72b
	res 5,(ix+#1d)
	ld a,b
.lb72b
	ld (ix+#1c),a
.lb72e
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb739
	dec d
.lb739
	add #a0
	jr c,lb745
.lb73d
	sla e
	rl d
	add #18
	jr nc,lb73d
.lb745
	add hl,de
	ex de,hl
.lb747
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lb772
	ld b,(ix+#0e)
	djnz lb76f
	ld c,(ix+#0d)
	bit 7,c
	jr z,lb75e
	dec b
.lb75e
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lb772
.lb76f
	ld (ix+#0e),b
.lb772
	bit 0,(ix+#1f)
	jr z,lb785
	res 0,(ix+#1f)
	ld a,#00
	ld (lb498),a
	ld a,#07
	jr lb796
.lb785
	cpl
	and #03
.lb789 equ $ + 1
	ld a,#38
	jr nz,lb796
	ld a,(lb44b)
	xor #08
	ld (lb498),a
	ld a,#07
.lb796
	ld hl,lb7ab
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.lb7ab equ $ + 7
.lb7aa equ $ + 6
.lb7a8 equ $ + 4
.lb7a6 equ $ + 2
.lb7a4
	db #00,#00,#00,#00,#00,#00,#00,#3f
.lb7b0 equ $ + 4
.lb7ae equ $ + 2
.lb7ad equ $ + 1
.lb7ac
	db #0f,#0f,#0f,#00,#00,#00
.lb7b2
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
.lb85a
	db #0f,#10,#13,#16,#1a,#1e,#21,#24
	db #27,#2a,#2c,#2e,#30,#32,#34,#00
	db #87,#00,#03,#07,#87,#00,#04,#07
	db #87,#00,#03,#07,#0c,#87,#00,#04
	db #07,#0c,#87,#07,#0c,#0f,#87,#07
	db #0c,#10,#87,#03,#07,#0c,#87,#04
	db #07,#0c,#87,#00,#0c,#87,#00,#04
	db #87,#00,#03,#87,#00,#05,#87,#00
	db #07,#87,#00,#0c,#00,#00,#00,#87
.lb8a2
.music_end
	db #00
.lb8a3
	dw lb8df,lb927,lb9f1
	dw lbda9,lbdab,lbdad
	dw lbdb1,lbdb3,lbdad
	dw lbdb5,lbdb7,lbdad
	dw lbdb9,lbdbb,lbdad
	dw lbdbd,lbdbf,lbdad
	dw lbdc1,lbdc5,lbdad
	dw lbdc9,lbdcb,lbdad
	dw lbdcd,lbdcf,lbdad
	dw lbdd1,lbdd3,lbdad
.lb8df
	dw lba98,lbab4,lba98,lbabe
	dw lbacb,lbae8,lbb08,lbae8
	dw lbb29,lbb49,lbb6e,lbb92
	dw lbb92,lbba7,lbba7,lba98
	dw lbab4,lba98,lbabe,lbacb
	dw lbbbb,lbbcf,lbbbb,lbbe0
	dw lbbef,lbbef,lbc0f,lbc2f
	dw lbc2f,lbc40,lbc40,lbc54
	dw lbc40,lbc40,lbc54,#0000
.lb927
	dw lbc7b,lbc7b,lbc7b,lbc7b
	dw lbc7b,lbc7b,lbc92,lbc7b
	dw lbca1,lbca1,lbc92,lbc92
	dw lbca1,lbca1,lbc92,lbc92
	dw lbca1,lbca1,lbca1,lbca1
	dw lbc7b,lbc7b,lbc7b,lbc7b
	dw lbca1,lbca1,lbca1,lbca1
	dw lbc92,lbc92,lbc92,lbc92
	dw lbcb0,lbcb0,lbcb0,lbcb0
	dw lbcbf,lbcbf,lbcbf,lbcbf
	dw lbca1,lbca1,lbca1,lbca1
	dw lbc7b,lbc7b,lbc7b,lbc7b
	dw lbc7b,lbc7b,lbc7b,lbc7b
	dw lbc7b,lbc7b,lbc92,lbc7b
	dw lbca1,lbca1,lbc92,lbc92
	dw lbca1,lbca1,lbc92,lbc92
	dw lbcb0,lbcb0,lbcb0,lbcb0
	dw lbcb0,lbcb0,lbcb0,lbcb0
	dw lbcbf,lbcbf,lbcbf,lbcbf
	dw lbcbf,lbcbf,lbcbf,lbcbf
	dw lbcce,lbcce,lbced,lbced
	dw lbc7b,lbc7b,lbc7b,lbc7b
	dw lbca1,lbca1,lbc92,lbc92
	dw lbc7b,lbc7b,lbc7b,lbc7b
	dw lbca1,lbca1,lbc92,lbc92
	dw #0000
.lb9f1
	dw lbd01,lbd01,lbd01,lbd01
	dw lbd2a,lbd2a,lbd2a,lbd2a
	dw lbd2a,lbd2a,lbd01,lbd01
	dw lbd2a,lbd2a,lbd2a,lbd2a
	dw lbd4b,lbd4b,lbd4b,lbd4b
	dw lbd60,lbd60,lbd60,lbd60
	dw lbd71,lbd71,lbd71,lbd71
	dw lbd71,lbd71,lbd71,lbd71
	dw lbd01,lbd01,lbd01,lbd01
	dw lbd2a,lbd2a,lbd2a,lbd2a
	dw lbd4b,lbd4b,lbd4b,lbd4b
	dw lbd4b,lbd4b,lbd4b,lbd4b
	dw lbd60,lbd60,lbd60,lbd60
	dw lbd60,lbd60,lbd60,lbd60
	dw lbd2a,lbd2a,lbd2a,lbd2a
	dw lbd2a,lbd2a,lbd82,lbd82
	dw lbd82,lbd82,lbd82,lbd82
	dw lbd94,lbd94,lbd82,lbd82
	dw lbd82,lbd82,lbd82,lbd82
	dw lbd94,lbd94,#0000
	db #89,#fc,#87,#89,#00,#87,#89,#02
.lba98 equ $ + 1
	db #87,#bc,#c0,#8a,#de,#00,#31,#05
	db #88,#01,#01,#83,#e3,#80,#3a,#e1
	db #39,#37,#39,#35,#80,#80,#33,#35
.lbab4 equ $ + 5
	db #33,#32,#33,#35,#87,#e3,#80,#32
.lbabe equ $ + 7
	db #e1,#33,#32,#2e,#f1,#29,#87,#e1
	db #80,#32,#33,#32,#e3,#2e,#e1,#2b
.lbacb equ $ + 4
	db #29,#ef,#2e,#87,#e5,#33,#35,#37
	db #3a,#e3,#39,#37,#e1,#3a,#fd,#35
	db #e5,#37,#39,#3a,#3c,#e3,#3a,#39
	db #e5,#3a,#e9,#39,#e5,#37,#e9,#35
.lbae8 equ $ + 1
	db #87,#e3,#80,#33,#e1,#32,#33,#80
	db #e3,#38,#e1,#38,#e3,#37,#3c,#3a
	db #80,#33,#e1,#32,#33,#80,#e3,#38
	db #e1,#38,#e3,#37,#35,#e1,#33,#30
.lbb08 equ $ + 1
	db #87,#e3,#80,#2e,#e1,#2d,#2e,#80
	db #e3,#33,#e1,#33,#e3,#32,#30,#2e
	db #80,#e1,#33,#32,#e3,#33,#e1,#37
	db #35,#3a,#3a,#e3,#35,#33,#e1,#32
.lbb29 equ $ + 2
	db #2e,#87,#e3,#80,#35,#e1,#33,#32
	db #33,#30,#80,#80,#2e,#30,#2e,#2d
	db #2e,#30,#e3,#80,#35,#e1,#33,#35
	db #80,#e3,#3a,#e1,#3a,#e3,#39,#37
.lbb49 equ $ + 2
	db #39,#87,#81,#e1,#cb,#25,#25,#80
	db #31,#80,#80,#25,#80,#ca,#32,#32
	db #80,#3e,#80,#80,#32,#80,#34,#34
	db #40,#80,#34,#40,#80,#32,#80,#32
.lbb6e equ $ + 7
	db #3e,#80,#32,#3e,#80,#32,#87,#e1
	db #cb,#34,#34,#80,#40,#80,#80,#34
	db #80,#ca,#35,#35,#80,#41,#80,#80
	db #35,#80,#37,#37,#43,#80,#37,#43
	db #80,#35,#80,#35,#41,#80,#35,#41
.lbb92 equ $ + 3
	db #80,#35,#87,#cb,#43,#43,#80,#37
	db #ca,#35,#80,#41,#cb,#43,#ca,#41
	db #41,#80,#35,#33,#80,#3f,#41,#87
.lbba7
	db #cb,#43,#43,#37,#80,#ca,#41,#35
	db #80,#3f,#80,#33,#33,#80,#cb,#3e
.lbbbb equ $ + 4
	db #3c,#80,#3e,#87,#81,#ce,#e1,#34
	db #34,#3b,#80,#39,#80,#3e,#3d,#80
	db #80,#39,#3b,#80,#80,#3d,#39,#87
.lbbcf
	db #34,#34,#3b,#80,#39,#80,#3e,#3d
	db #80,#42,#40,#80,#3e,#3d,#80,#80
.lbbe0 equ $ + 1
	db #87,#34,#34,#3b,#80,#39,#80,#42
	db #40,#45,#39,#e3,#39,#39,#80,#87
.lbbef
	db #e1,#40,#40,#45,#80,#43,#80,#40
	db #41,#80,#3e,#40,#80,#3c,#3e,#80
	db #3b,#3c,#80,#39,#3b,#80,#39,#37
	db #80,#3c,#30,#e3,#30,#30,#80,#87
.lbc0f
	db #e1,#c0,#27,#1b,#e3,#1b,#1b,#81
	db #80,#f7,#c4,#85,#4b,#86,#33,#c0
	db #e1,#27,#1b,#e3,#1b,#1b,#80,#ef
	db #80,#ff,#c4,#84,#02,#50,#38,#87
.lbc2f
	db #c0,#e1,#29,#1d,#e3,#1d,#1d,#80
	db #80,#80,#e1,#c4,#35,#35,#80,#80
.lbc40 equ $ + 1
	db #87,#e1,#c8,#3a,#e3,#3a,#e5,#c6
	db #35,#c8,#e3,#35,#e1,#c6,#33,#e3
.lbc54 equ $ + 5
	db #33,#e9,#c2,#3a,#87,#e1,#c6,#33
	db #e3,#33,#e5,#c8,#38,#e3,#c6,#33
	db #e1,#c8,#3a,#e3,#3a,#e9,#c6,#35
	db #e1,#c6,#33,#e3,#33,#e5,#c8,#38
	db #e1,#c6,#33,#c8,#35,#80,#35,#e3
.lbc7b equ $ + 4
	db #35,#35,#80,#87,#bc,#c0,#8a,#df
	db #00,#21,#0b,#e1,#16,#22,#8b,#8d
	db #0c,#8a,#16,#16,#22,#8b,#8d,#0c
.lbc92 equ $ + 3
	db #8a,#16,#87,#11,#1d,#8b,#8d,#0c
	db #8a,#11,#11,#1d,#8b,#8d,#0c,#8a
.lbca1 equ $ + 2
	db #11,#87,#0f,#1b,#8b,#8d,#0c,#8a
	db #0f,#0f,#1b,#8b,#8d,#0c,#8a,#0f
.lbcb0 equ $ + 1
	db #87,#15,#21,#8b,#8d,#0c,#8a,#15
	db #15,#21,#8b,#8d,#0c,#8a,#15,#87
.lbcbf
	db #0c,#18,#8b,#8d,#0c,#8a,#0c,#0c
.lbcce equ $ + 7
	db #18,#8b,#8d,#0c,#8a,#0c,#87,#e1
	db #0f,#0f,#e3,#0f,#0f,#8b,#8d,#0c
	db #eb,#80,#e1,#8d,#0c,#8d,#10,#eb
	db #80,#e1,#8d,#0c,#8d,#10,#eb,#80
.lbced equ $ + 6
	db #e1,#8d,#0c,#8d,#10,#87,#e1,#8a
	db #11,#11,#e3,#11,#11,#8b,#8d,#0c
	db #8d,#1f,#80,#80,#e1,#8d,#0c,#8d
.lbd01 equ $ + 2
	db #10,#87,#8a,#df,#00,#12,#10,#ce
	db #e1,#91,#81,#29,#91,#26,#91,#24
	db #91,#29,#91,#26,#91,#24,#91,#29
	db #91,#26,#91,#24,#91,#29,#91,#26
	db #91,#24,#91,#29,#91,#26,#91,#24
.lbd2a equ $ + 3
	db #91,#26,#87,#91,#2e,#91,#2b,#91
	db #29,#91,#2e,#91,#2b,#91,#29,#91
	db #2e,#91,#2b,#91,#29,#91,#2e,#91
	db #2b,#91,#29,#91,#2e,#91,#2b,#91
.lbd4b equ $ + 4
	db #29,#91,#2b,#87,#88,#01,#01,#82
	db #91,#28,#91,#23,#91,#21,#91,#28
	db #91,#23,#91,#21,#91,#28,#91,#21
.lbd60 equ $ + 1
	db #87,#91,#2b,#91,#26,#91,#24,#91
	db #2b,#91,#26,#91,#24,#91,#2b,#91
	db #24,#87
.lbd71
	db #91,#2e,#91,#29,#91,#27,#91,#2e
	db #91,#29,#91,#27,#91,#2e,#91,#27
	db #87
.lbd82
	db #ce,#91,#2e,#91,#2e,#91,#2e,#91
	db #2e,#91,#2e,#91,#3a,#91,#2e,#91
	db #2e,#87
.lbd94
	db #ce,#91,#29,#91,#29,#91,#29,#91
	db #29,#91,#29,#91,#35,#91,#29,#91
	db #29,#87
.lbda6
	db #ff,#80,#87
.lbdad equ $ + 4
.lbdab equ $ + 2
.lbda9
	dw lbdd5,lbde8,lbda6,#0000
.lbdb7 equ $ + 6
.lbdb5 equ $ + 4
.lbdb3 equ $ + 2
.lbdb1
	dw lbdf1,lbde8,lbe04,lbde8
.lbdbf equ $ + 6
.lbdbd equ $ + 4
.lbdbb equ $ + 2
.lbdb9
	dw lbe17,lbe25,lbe32,lbe46
.lbdc1
	dw lbe59,#0000
.lbdc5
	dw lbe72,#0000
.lbdc9
	dw lbe8b
.lbdd1 equ $ + 6
.lbdcf equ $ + 4
.lbdcd equ $ + 2
.lbdcb
	dw lbe9a,lbea8,lbeb6,lbec4
.lbdd3
	dw lbee1
.lbdd5
	db #df,#c9,#02,#0f,#b9,#e0,#c6,#82
	db #00,#88,#05,#14,#e2,#86,#91,#13
	db #91,#13,#8e
.lbde8
	db #dd,#00,#02,#0f,#e6,#8b,#8d,#1f
	db #8e
.lbdf1
	db #df,#c9,#02,#0f,#b9,#e0,#c6,#82
	db #00,#88,#05,#14,#e2,#86,#91,#1f
	db #91,#1f,#8e
.lbe04
	db #df,#c9,#02,#0f,#b9,#e0,#c6,#82
	db #00,#88,#05,#14,#e2,#86,#91,#2b
	db #91,#2b,#8e
.lbe17
	db #df,#00,#31,#07,#ba,#c0,#8a,#88
	db #02,#02,#82,#e5,#3c,#8e
.lbe25
	db #df,#00,#31,#07,#c0,#8a,#88,#02
	db #02,#82,#e5,#40,#8e
.lbe32
	db #df,#00,#01,#07,#ba,#c0,#8a,#88
	db #02,#02,#83,#e1,#24,#e1,#24,#e1
	db #18,#e5,#18,#8e
.lbe46
	db #df,#00,#01,#07,#c0,#8a,#88,#02
	db #02,#83,#e1,#28,#e1,#28,#e1,#1c
	db #e5,#1c,#8e
.lbe59
	db #df,#00,#91,#07,#bd,#c0,#8a,#88
	db #01,#01,#82,#e3,#91,#13,#90,#14
	db #91,#13,#90,#14,#91,#13,#90,#14
	db #87
.lbe72
	db #df,#00,#91,#07,#bb,#c0,#8a,#88
	db #01,#01,#82,#e3,#91,#0c,#90,#0d
	db #91,#0c,#90,#0d,#91,#0c,#90,#0d
	db #87
.lbe8b
	db #df,#00,#21,#03,#bf,#ce,#8a,#84
	db #ff,#04,#f5,#91,#85,#24,#8e
.lbe9a
	db #df,#00,#21,#03,#ce,#8a,#84,#ff
	db #04,#f5,#91,#85,#25,#8e
.lbea8
	db #df,#00,#41,#0f,#b8,#c0,#8a,#ff
	db #84,#f9,#02,#91,#30,#8e
.lbeb6
	db #df,#00,#41,#0f,#c0,#8a,#e0,#30
	db #fe,#84,#f9,#02,#30,#8e
.lbec4
	db #df,#00,#14,#09,#8a,#ce,#ba,#e0
	db #18,#1a,#1c,#1e,#20,#22,#24,#26
	db #28,#2a,#2c,#2e,#30,#32,#34,#36
	db #38,#3a,#e1,#30,#8e
.lbee1
	db #df,#00,#81,#09,#8a,#ce,#e0,#80
	db #18,#1a,#1c,#1e,#20,#22,#24,#26
	db #28,#2a,#2c,#2e,#30,#32,#34,#36
	db #38,#3a,#3c,#8e
;
.music_info
	db "Hydrofool (1987)(FTL - Gargoyle Games)(Rob Hubbard)",0
	db "",0

	read "music_end.asm"
