; Music of Adidas Championship Football (1990)(Ocean Software)(Matthew Cannon)()
; Ripped by Megachur the 09/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ADIDASCF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b0fd
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.init_music
;
	ld hl,lb1cd
	ld (hl),#00
	inc hl
	ld (hl),#00
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,lb8d4
	add hl,bc
	ld a,(hl)
	ld (lb1f8),a
	inc hl
	ld ix,lb157
	ld c,#27
	ld a,#03
.lb11e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#20),#00
	ld (ix+#21),#00
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#03),e
	ld (ix+#04),d
	ld (ix+#05),e
	ld (ix+#06),d
	ld (ix+#25),#01
	add ix,bc
	dec a
	jr nz,lb11e
	ld (lb4aa),a
	inc a
	ld (lb1cc),a
	ld (lb1cd),a
	ret
.lb157
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.lb17e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.lb1a5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.lb1ce equ $ + 2
.lb1cd equ $ + 1
.music_end equ $ + 1
.lb1cc
	db #00,#00,#00
;
.play_music
;
	ld a,(lb1cd)
	and a
	jp z,lb228
.lb1d7 equ $ + 1
	ld a,#00
	ld (lb224),a
	ld hl,lb1cc
	dec (hl)
	jr nz,lb1fc
	ld b,(hl)
	ld ix,lb157
	call lb3a2
	ld ix,lb17e
	call lb3a2
	ld ix,lb1a5
	call lb3a2
.lb1f8 equ $ + 1
	ld a,#01
	ld (lb1cc),a
.lb1fc
	ld ix,lb157
	call lb477
	ld (lb588),hl
	ld (lb590),a
	ld ix,lb17e
	call lb477
	ld (lb58a),hl
	ld (lb591),a
	ld ix,lb1a5
	call lb477
	ld (lb58c),hl
	ld (lb592),a
.lb224 equ $ + 1
	ld a,#00
	ld (lb58e),a
.lb228
	ld a,(lb1ce)
	and a
	jr z,lb258
	ld hl,(lb595)
	ld (lb588),hl
	ld hl,(lb599)
	ld (lb58c),hl
	ld a,(lb59b)
	ld (lb58e),a
	ld a,(lb58f)
	or #2d
	ld hl,lb59c
	and (hl)
	ld (lb58f),a
	ld a,(lb59d)
	ld (lb590),a
.lb254 equ $ + 2
	ld a,(lb59f)
	ld (lb592),a
.lb258
	ld a,(lb1cd)
	ld hl,lb1ce
	or (hl)
	ret z
	ld hl,lb593
	ld d,#0b
.lb265
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
	jp p,lb265
	ret
.lb286
	xor a
	ld (lb1cd),a
.lb28a
	ld de,#0d00
.lb28d
	call lb297
	dec d
	jp p,lb28d
	ld de,#073f
.lb297
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
	xor a
	ld (lb1ce),a
	ld (lb590),a
	ld (lb591),a
	ld (lb592),a
	ret
;
.stop_music
;
	xor a
	ld (lb1cd),a
	ld (lb1ce),a
	call lb28a
	xor a
	ld (lb590),a
	ld (lb591),a
	ld (lb592),a
	ret
	db #a2,#8a,#8e,#93,#51,#80,#7b,#11
	db #6a,#62,#26,#10,#38,#8f,#06,#9c
	db #a1,#a6,#aa,#b0
	pop hl
	jp lb286
	jp lb7ac
	ld a,(ix+#26)
	ld c,a
	and #07
	ld hl,lb553
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb3b7
	ld a,(ix+#26)
	ld c,a
	and #38
	ld hl,lb553
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb3b7
	ld hl,lb553
	ld a,(ix+#26)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb3b7
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lb3b7
	ld a,(de)
	inc de
	ld (lb4aa),a
	jr lb3b7
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr lb3b7
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lb3b7
	ld (ix+#1d),b
	jr lb3b7
	ld (ix+#1d),#40
	jr lb3b7
	ld (ix+#1d),#c0
	jr lb3b7
	set 1,(ix+#00)
	jr lb3b7
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb3f5
	res 5,(ix+#00)
	jr lb3f5
	ld (ix+#1f),#ff
	jr lb3b7
	ld (ix+#1f),b
	jr lb3b7
	ld a,#01
	ld (ix+#24),a
	jr lb3b7
	ld a,(de)
	inc de
	ld (ix+#11),a
	ld (ix+#24),#00
	jr lb3b7
.lb3a2
	dec (ix+#10)
	jr nz,lb41c
	ld (ix+#00),b
	ld a,(ix+#25)
	or a
	jp nz,lb7ac
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb3b7
	ld a,(de)
	inc de
	and a
	jp m,lb42d
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb3cc
	ld (lb1d7),a
.lb3cc
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#0b),l
	ld (ix+#0c),h
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
.lb3f5
	ld a,(ix+#24)
	or a
	jr z,lb3ff
	ld a,(de)
	inc de
	jr lb402
.lb3ff
	ld a,(ix+#11)
.lb402
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,lb41b
	ld a,(lb1ce)
	and a
	jr nz,lb41b
	ld (ix+#1f),#ff
.lb41b
	ret
.lb41c
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lb429
	inc (ix+#12)
	ret
.lb429
	dec (ix+#12)
	ret
.lb42d
	cp #b0
	jr c,lb46f
	add #20
	jr c,lb457
	add #30
	jr nc,lb44f
	ld c,a
	ld hl,lb661
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp lb3b7
.lb44f
	add #09
	ld (lb1f8),a
	jp lb3b7
.lb457
	ld hl,lb6d5
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
	jp lb3b7
.lb46f
	ld hl,lb254
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb477
	ld c,(ix+#00)
	bit 5,c
	jr z,lb4a9
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,lb4a3
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,lb4a3
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.lb4a3
	ld a,(ix+#18)
	ld (ix+#13),a
.lb4aa equ $ + 1
.lb4a9
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,lb4c3
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.lb4c3
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lb5a1
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb524
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb4ed
	bit 0,c
	jr nz,lb50b
.lb4ed
	bit 5,l
	jr nz,lb4fd
	sub (ix+#1b)
	jr nc,lb508
	set 5,(ix+#1d)
	sub a
	jr lb508
.lb4fd
	add (ix+#1b)
	cp b
	jr c,lb508
	res 5,(ix+#1d)
	ld a,b
.lb508
	ld (ix+#1c),a
.lb50b
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb516
	dec d
.lb516
	add #a0
	jr c,lb522
.lb51a
	sla e
	rl d
	add #18
	jr nc,lb51a
.lb522
	add hl,de
	ex de,hl
.lb524
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lb54f
	ld b,(ix+#0e)
	djnz lb54c
	ld c,(ix+#0d)
	bit 7,c
	jr z,lb53b
	dec b
.lb53b
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lb54f
.lb54c
	ld (ix+#0e),b
.lb54f
	cpl
	and #03
.lb553 equ $ + 1
	ld a,#00
	jr nz,lb560
	ld a,(lb1d7)
	xor #08
	ld (lb224),a
	ld a,#07
.lb560
	ld hl,lb58f
	xor (hl)
	and (ix+#26)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,lb583
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#26)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (lb224),a
.lb583
	ex de,hl
	ld a,(ix+#13)
	ret
.lb58f equ $ + 7
.lb58e equ $ + 6
.lb58c equ $ + 4
.lb58a equ $ + 2
.lb588
	db #00,#00,#00,#00,#00,#00,#00,#3f
.lb595 equ $ + 5
.lb593 equ $ + 3
.lb592 equ $ + 2
.lb591 equ $ + 1
.lb590
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb59f equ $ + 7
.lb59d equ $ + 5
.lb59c equ $ + 4
.lb59b equ $ + 3
.lb599 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.lb5a1
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
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.lb661
	db #11,#11,#14,#19,#1e,#23,#28,#2d
	db #32,#3b,#3e,#41,#46,#4b,#50,#55
	db #5e,#80,#10,#0c,#04,#80,#18,#0c
	db #13,#07,#10,#84,#1c,#10,#18,#0c
	db #13,#87,#1c,#10,#16,#0a,#13,#87
	db #13,#07,#0f,#03,#0c,#80,#18,#0c
	db #13,#07,#11,#84,#1d,#11,#18,#0c
	db #13,#87,#18,#0c,#00,#00,#00,#00
	db #00,#00,#00,#80,#00,#00,#0c,#8c
	db #11,#0c,#05,#80,#13,#07,#10,#04
	db #0c,#80,#1b,#0f,#18,#0c,#13,#87
	db #13,#07,#11,#05,#0c,#80,#00,#00
	db #00,#02,#02,#82,#02,#02,#01,#00
	db #02,#00,#02,#00,#02,#80,#00,#00
	db #00,#01,#01,#81
.lb6d5
	dw lb6ea,lb6f6,lb702,lb723
	dw lb733,lb741,lb750,lb779
	dw lb77c,lb7a1
.lb6ea equ $ + 1
	db #01,#08,#08,#07,#06,#05,#04,#03
.lb6f6 equ $ + 5
	db #02,#01,#00,#87,#01,#0a,#09,#08
	db #07,#06,#05,#03,#02,#01,#00,#87
.lb702 equ $ + 1
	db #03,#08,#09,#09,#09,#09,#09,#09
	db #09,#09,#08,#08,#08,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
.lb723 equ $ + 2
	db #87,#01,#0b,#0a,#09,#08,#07,#06
	db #05,#05,#05,#05,#05,#05,#05,#05
.lb733 equ $ + 2
	db #87,#0b,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#00,#87,#05
.lb741
	db #00,#01,#02,#03,#04,#05,#06,#07
.lb750 equ $ + 7
	db #07,#08,#08,#09,#89,#87,#01,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#05,#05
	db #05,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#87,#01
.lb77c equ $ + 3
.lb779
	db #88,#87,#08,#08,#08,#08,#08,#07
	db #07,#07,#07,#06,#06,#06,#06,#05
	db #05,#05,#05,#04,#04,#04,#04,#03
	db #03,#03,#02,#02,#02,#02,#01,#01
	db #01,#01,#00,#00,#00,#80,#87,#01
.lb7a1
	db #0c,#0a,#09,#08,#06,#04,#03,#02
	db #01,#80,#87
.lb7ac
	xor a
	ld (ix+#25),a
	ld l,(ix+#03)
	ld h,(ix+#04)
.lb7b6
	ld a,(ix+#21)
	or a
	jp z,lb7d2
	dec a
	ld (ix+#21),a
	jp z,lb7d6
	ld l,(ix+#22)
	ld h,(ix+#23)
	ld (ix+#03),l
	ld (ix+#04),h
	jr lb7d6
.lb7d2
	ld (ix+#20),#00
.lb7d6
	ld a,(hl)
	inc hl
	or a
	jp m,lb7f9
	ld (ix+#03),l
	ld (ix+#04),h
	add a
	ld e,a
	ld d,#00
	ld hl,lb8e9
	add hl,de
	ld a,(hl)
	ld e,a
	inc hl
	ld d,(hl)
	ld (ix+#01),e
	ld (ix+#02),d
	ld b,#00
	jp lb3b7
.lb7f9
	cp #fd
	jr z,lb830
	cp #ff
	jr z,lb828
	cp #fe
	jr z,lb81a
	cp #fc
	jr z,lb813
.lb809
	ld a,r
	out (#fe),a
	ld b,#64
.lb80f
	djnz lb80f
	jr lb809
.lb813
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp lb7d6
.lb81a
	ld a,(hl)
	inc hl
	ld (ix+#21),a
	ld (ix+#22),l
	ld (ix+#23),h
	jp lb7d6
.lb828
	ld a,(hl)
	inc hl
	ld (ix+#20),a
	jp lb7d6
.lb830
	ld l,(ix+#05)
	ld h,(ix+#06)
	jp lb7b6
	db #14,#02,#00,#00,#00,#00,#28,#fa
	db #0d,#00,#00,#00,#ff,#01,#14,#00
	db #00,#0f,#0f,#00,#03,#00,#00,#0a
	db #d7,#01,#00,#00,#00,#01,#01,#01
	db #00,#00,#12,#09,#1c,#00,#39,#00
	db #05,#fa,#28,#00,#28,#00,#ff,#01
	db #02,#00,#00,#14,#14,#40,#00,#42
	db #00,#07,#fa,#02,#00,#02,#00,#ff
	db #ff,#ff,#00,#00,#14,#14,#70,#00
	db #72,#00,#07,#fa,#02,#00,#02,#00
	db #01,#01,#ff,#00,#00,#0f,#02,#38
	db #00,#00,#00,#28,#fa,#15,#00,#00
	db #00,#ff,#ff,#14,#00,#00,#05,#05
	db #38,#00,#38,#00,#19,#fa,#00,#00
	db #00,#00,#01,#01,#01,#00,#00,#05
	db #05,#70,#00,#71,#00,#19,#fa,#00
	db #00,#00,#00,#01,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
.lb8d4
	db #01
	dw lbb44,lbbaa,lbb6d
	db #01
	dw lb991,lb965,lb9be
	db #01
	dw lbeab,lbed1,lbefb
.lb8e9
	dw lbbbe,lbbc1,lbbf0,lbc0a
	dw lbc0a,lbc0a,lbc0a,lbc0a
	dw lbc41,lbc41,lbc41,lbc41
	dw lbc54,lbc6b,lbc83,lbca6
	dw lbcc5,lbce4,lbd51,lbd67
	dw lbd7c,lbd9d,lbda7,lbe11
	dw lbe2d,lbe34,lbe40,lbe57
	dw lbe6d,lbe79,lb9d0,lb9d4
	dw lb9da,lb9f5,lba12,lba12
	dw lba35,lba58,lba6c,lba86
	dw lbaa0,lbaa0,lbac3,lbade
	dw lbaf4,lbb07,lbb33,lbb35
	dw lbb38,lbf08,lbf28,lbf48
	dw lbf50,lbf37,lbf1b,lbf8b
	dw lbf9a,lbfc5,lbfcc,lbfb4
	dw lbfd3,lbfe4
.lb965
	db #fe,#03,#20,#ff,#fb,#20,#fe,#06
	db #ff,#00,#21,#27,#27,#21,#21,#fe
	db #02,#ff,#fe,#27,#ff,#00,#21,#2b
	db #20,#20,#fe,#06,#21,#27,#27,#21
	db #21,#fe,#02,#ff,#fe,#27,#ff,#00
	db #21,#2b,#fd,#00
.lb991
	db #fe,#03,#26,#ff,#fb,#26,#fe,#06
	db #ff,#00,#26,#fe,#02,#ff,#fb,#26
	db #ff,#00,#26,#26,#fe,#02,#ff,#f9
	db #26,#ff,#00,#26,#2c,#29,#29,#fe
	db #06,#29,#fe,#02,#23,#29,#29,#fe
.lb9be equ $ + 5
	db #02,#24,#29,#2c,#fd,#30
	db #1e,#1e,#1f,#2f,#25,#2a,#25,#2d
	db #30,#1e,#2f,#25,#2a,#25,#2d,#fd
.lb9d4 equ $ + 5
.lb9d0 equ $ + 1
	db #00,#92,#80,#78,#87,#e5,#b4,#2b
.lb9da equ $ + 3
	db #78,#b0,#87,#8a,#e1,#91,#b8,#93
	db #0c,#30,#e0,#24,#24,#e1,#30,#e0
	db #24,#24,#e1,#34,#e0,#24,#e1,#37
.lb9f5 equ $ + 6
	db #e0,#93,#06,#30,#2b,#87,#8a,#90
	db #81,#93,#0c,#b2,#e1,#30,#e0,#30
	db #30,#e1,#30,#e0,#30,#30,#e1,#b6
	db #30,#e0,#30,#e1,#30,#e0,#93,#06
.lba12 equ $ + 3
	db #30,#30,#87,#13,#0c,#13,#06,#13
	db #06,#13,#0c,#e9,#8c,#bf,#20,#0c
	db #8a,#e3,#b0,#13,#06,#13,#06,#13
	db #0c,#1a,#18,#e9,#8c,#bf,#20,#0c
.lba35 equ $ + 6
	db #8a,#e3,#b0,#0e,#0c,#87,#11,#0c
	db #11,#06,#11,#06,#11,#0c,#e9,#8c
	db #bf,#20,#0c,#8a,#e3,#b0,#11,#06
	db #11,#06,#11,#0c,#18,#18,#e9,#8c
	db #bf,#20,#0c,#8a,#e3,#b0,#0c,#0c
.lba58 equ $ + 1
	db #87,#8a,#e2,#92,#30,#9c,#2b,#0c
	db #30,#06,#80,#06,#34,#06,#80,#06
.lba6c equ $ + 5
	db #35,#12,#37,#12,#87,#8a,#e3,#90
	db #b0,#92,#18,#0c,#18,#06,#18,#06
	db #18,#0c,#24,#0c,#18,#06,#18,#06
.lba86 equ $ + 7
	db #18,#0c,#1f,#24,#13,#0c,#87,#b3
	db #93,#0c,#e1,#2b,#e0,#2b,#2b,#e1
	db #2b,#e0,#2b,#2b,#e1,#b7,#2b,#e0
	db #2b,#e1,#2b,#e0,#93,#06,#2b,#2b
.lbaa0 equ $ + 1
	db #87,#18,#0c,#18,#06,#18,#06,#18
	db #0c,#e9,#8c,#bf,#20,#0c,#8a,#e3
	db #b0,#18,#06,#18,#06,#18,#0c,#1f
	db #18,#e9,#8c,#bf,#20,#0c,#8a,#e3
.lbac3 equ $ + 4
	db #b0,#13,#0c,#87,#b1,#30,#f0,#80
	db #0c,#b9,#30,#9c,#2b,#0c,#30,#06
	db #80,#06,#34,#06,#80,#06,#35,#12
.lbade equ $ + 7
	db #37,#0c,#80,#06,#37,#fc,#87,#92
	db #e1,#b5,#32,#0c,#32,#06,#32,#06
	db #32,#0c,#32,#0c,#32,#0c,#32,#0c
.lbaf4 equ $ + 5
	db #e3,#b4,#2b,#48,#87,#1a,#0c,#1a
	db #06,#1a,#06,#1a,#0c,#26,#0c,#24
	db #0c,#21,#0c,#1f,#0c,#80,#3c,#87
.lbb07
	db #ba,#30,#fc,#93,#06,#b9,#37,#80
	db #34,#80,#30,#80,#37,#80,#34,#80
	db #30,#80,#92,#3c,#06,#80,#2a,#b0
	db #82,#88,#00,#00,#93,#0c,#2d,#32
	db #34,#35,#34,#35,#92,#37,#30,#2d
.lbb35 equ $ + 6
.lbb33 equ $ + 4
	db #0c,#2f,#0c,#87,#e2,#87,#81,#b9
.lbb38 equ $ + 1
	db #87,#8a,#e4,#b0,#83,#88,#01,#01
	db #92,#30,#78,#81,#87
.lbb44
	db #fe,#04,#01,#0d,#0e,#0d,#0e,#0d
	db #10,#1d,#ff,#00,#fe,#04,#01,#0d
	db #0e,#0d,#0e,#0d,#10,#1d,#ff,#fc
	db #1d,#ff,#00,#14,#15,#14,#17,#fe
	db #04,#ff,#02,#1d,#ff,#00,#1a,#fd
	db #00
.lbb6d
	db #fe,#08,#02,#0b,#0c,#0b,#12,#0b
	db #ff,#05,#0b,#0f,#fe,#08,#02,#0b
	db #0c,#0b,#12,#0b,#ff,#05,#0b,#0f
	db #ff,#fc,#0f,#ff,#00,#18,#ff,#fb
	db #18,#ff,#02,#18,#19,#18,#ff,#fb
	db #18,#ff,#02,#18,#18,#ff,#ff,#18
	db #fe,#04,#02,#fe,#08,#ff,#fd,#02
	db #ff,#00,#1b,#fd,#00
.lbbaa
	db #07,#ff,#f4,#11,#ff,#00,#07,#ff
	db #f4,#11,#ff,#f4,#13,#16,#ff,#fd
.lbbc1 equ $ + 7
.lbbbe equ $ + 4
	db #07,#1c,#fd,#00,#80,#60,#87,#8a
	db #e0,#bb,#93,#0c,#2b,#37,#e9,#8c
	db #bf,#20,#8a,#e0,#bb,#2b,#37,#2b
	db #e9,#8c,#bf,#20,#8a,#e0,#bb,#2b
	db #2b,#37,#e9,#8c,#bf,#20,#8a,#e0
	db #bb,#2b,#bd,#37,#2b,#e9,#8c
.lbbf0 equ $ + 7
	db #bf,#20,#8a,#e0,#bb,#2b,#87,#92
	db #8a,#e3,#90,#b0,#13,#0c,#13,#0c
	db #13,#06,#1f,#06,#1a,#0c,#13,#12
	db #1f,#0c,#1a,#06,#1c,#06,#1f,#06
.lbc0a equ $ + 1
	db #87,#92,#8a,#e6,#81,#b2,#2b,#48
	db #b5,#2d,#0c,#bb,#2b,#6c,#bc,#21
	db #18,#21,#18,#21,#18,#21,#0c,#b3
	db #1f,#6c,#b2,#2b,#48,#b5,#2d,#0c
	db #bb,#2b,#6c,#bc,#21,#18,#21,#18
	db #21,#18,#21,#0c,#b3,#1f,#3c,#e7
	db #b0,#48,#12,#47,#12,#43,#0c,#87
.lbc41
	db #0e,#0c,#0e,#0c,#0e,#06,#1a,#06
	db #15,#0c,#0c,#12,#18,#0c,#13,#06
.lbc54 equ $ + 3
	db #0c,#0c,#87,#13,#0c,#13,#0c,#13
	db #06,#1f,#06,#1a,#0c,#13,#06,#13
	db #0c,#93,#06,#13,#13,#15,#17,#18
.lbc6b equ $ + 2
	db #92,#87,#93,#0c,#b2,#26,#32,#e9
	db #8c,#bf,#20,#8a,#e0,#b2,#26,#30
	db #24,#e9,#8c,#bf,#20,#8a,#e0,#b2
.lbc83 equ $ + 2
	db #24,#87,#bb,#2b,#37,#e9,#8c,#bf
	db #20,#8a,#e0,#bb,#2b,#bd,#37,#2b
	db #92,#e9,#8c,#bf,#20,#0c,#8a,#e0
	db #bb,#37,#06,#e9,#8c,#bf,#20,#06
.lbca6 equ $ + 5
	db #8a,#e0,#93,#0c,#87,#0e,#0c,#0e
	db #18,#0e,#0c,#1a,#12,#1a,#0c,#1a
	db #06,#15,#0c,#0e,#0c,#0e,#18,#0e
	db #0c,#1a,#06,#1a,#0c,#1a,#0c,#11
.lbcc5 equ $ + 4
	db #06,#12,#0c,#87,#bb,#1f,#37,#e9
	db #8c,#bf,#20,#8a,#e0,#bb,#2b,#35
	db #29,#92,#e9,#8c,#bf,#20,#06,#8a
	db #e0,#e9,#8c,#bf,#20,#12,#8a,#e0
.lbce4 equ $ + 3
	db #93,#0c,#87,#4e,#12,#4f,#12,#51
	db #0c,#4f,#12,#4c,#12,#48,#0c,#83
	db #88,#00,#00,#4a,#3c,#81,#4f,#06
	db #53,#06,#51,#03,#53,#03,#51,#03
	db #53,#03,#4f,#0c,#4e,#06,#80,#06
	db #4e,#06,#4f,#06,#51,#0c,#56,#0c
	db #54,#12,#53,#12,#4f,#06,#80,#06
	db #83,#88,#00,#00,#4f,#60,#81,#4e
	db #12,#4f,#12,#51,#0c,#4f,#12,#4c
	db #12,#48,#0c,#80,#0c,#53,#0c,#54
	db #06,#80,#06,#53,#06,#80,#06,#83
	db #88,#01,#01,#52,#12,#81,#51,#12
	db #4d,#06,#80,#06,#e5,#be,#4f,#60
	db #e4,#b0,#e6,#55,#02,#56,#5e,#87
.lbd51
	db #13,#0c,#13,#0c,#13,#06,#1f,#06
	db #1a,#0c,#93,#06,#07,#13,#0e,#07
.lbd67 equ $ + 6
	db #17,#18,#17,#13,#92,#87,#4a,#06
	db #80,#0c,#4a,#06,#80,#06,#4a,#06
	db #4b,#06,#80,#06,#4b,#02,#4c,#02
.lbd7c equ $ + 3
	db #4d,#8c,#87,#93,#0c,#bb,#1b,#33
	db #27,#27,#33,#1b,#27,#1b,#b2,#16
	db #2e,#22,#22,#2e,#16,#22,#16,#b3
	db #11,#29,#1d,#1d,#29,#1d,#92,#29
.lbd9d equ $ + 4
	db #18,#93,#0c,#87,#b2,#16,#2e,#22
.lbda7 equ $ + 6
	db #22,#2e,#16,#22,#16,#87,#e3,#b9
	db #33,#0c,#80,#0c,#33,#0c,#37,#18
	db #33,#18,#80,#0c,#32,#0c,#80,#0c
	db #32,#0c,#3a,#3c,#35,#0c,#37,#0c
	db #39,#0c,#3a,#18,#39,#0c,#80,#0c
	db #35,#24,#35,#0c,#32,#3c,#e7,#b0
	db #82,#88,#00,#00,#3f,#0c,#80,#0c
	db #3f,#0c,#3a,#18,#37,#18,#80,#0c
	db #3e,#0c,#80,#0c,#3a,#0c,#35,#3c
	db #35,#0c,#37,#0c,#39,#0c,#3a,#0c
	db #80,#0c,#39,#0c,#80,#0c,#81,#37
	db #6c,#37,#24,#39,#06,#37,#06,#36
	db #18,#37,#0c,#80,#0c,#36,#02,#37
	db #be,#30,#02,#31,#02,#32,#bc,#87
.lbe11
	db #92,#b0,#e7,#83,#88,#00,#00,#27
	db #30,#2c,#02,#2d,#02,#2e,#5c,#32
	db #18,#30,#18,#2f,#c0,#29,#02,#2a
.lbe2d equ $ + 4
	db #02,#2b,#bc,#87,#1b,#24,#1b,#0c
.lbe34 equ $ + 3
	db #16,#30,#87,#93,#0c,#16,#11,#16
.lbe40 equ $ + 7
	db #18,#1a,#16,#18,#1a,#92,#87,#92
	db #bb,#18,#0c,#30,#18,#18,#0c,#30
	db #30,#bd,#1a,#0c,#32,#18,#b2,#32
.lbe57 equ $ + 6
	db #18,#e3,#b4,#26,#24,#87,#e0,#18
	db #0c,#18,#18,#18,#0c,#18,#18,#18
	db #0c,#18,#0c,#1a,#0c,#1a,#18,#1a
.lbe6d equ $ + 4
	db #18,#18,#24,#87,#e3,#83,#88,#00
	db #00,#40,#60,#3e,#3c,#39,#24,#87
.lbe79
	db #93,#0c,#bb,#26,#32,#e9,#8c,#bf
	db #20,#8a,#e0,#bb,#26,#bd,#32,#26
	db #e9,#8c,#bf,#20,#20,#8a,#e0,#bb
	db #26,#32,#e9,#8c,#bf,#20,#8a,#e0
	db #bb,#26,#bd,#32,#26,#92,#e9,#8c
	db #bf,#20,#06,#20,#12,#8a,#e0,#93
	db #0c,#87
.lbeae equ $ +3
.lbeab
	db #3a,#31,#36,#ff,#00,#31,#36,#31
	db #36,#31,#36,#fe,#02,#ff,#fb,#31
	db #ff,#f9,#31,#ff,#fb,#31,#ff,#f9
	db #31,#ff,#fb,#31,#ff,#f9,#31,#ff
	db #fb,#31,#37,#fc
	dw lbeae
.lbed4 equ $ +3
.lbed1
	db #39,#32,#35,#ff,#00,#32,#35,#32
	db #35,#32,#35,#fe,#02,#ff,#07,#32
	db #ff,#05,#32,#ff,#07,#32,#ff,#05
	db #32,#ff,#07,#32,#ff,#05,#32,#ff
	db #07,#32,#fe,#02,#ff,#04,#32,#fc
	dw lbed4
.lbefc equ $ +1
.lbefb
	db #33,#ff,#f4,#34,#38,#3b,#38,#3c
	db #38,#3d,#fc
	dw lbefc
.lbf08
	db #8a,#e0,#90
	db #b8,#93,#08,#3a,#35,#3a,#41,#3e
	db #35,#3a,#35,#3a,#41,#3e,#35,#87
.lbf1b
	db #3a,#35,#3a,#41,#3e,#39,#3a,#35
.lbf28 equ $ + 5
	db #3a,#3c,#3a,#3c,#87,#8a,#e3,#90
	db #92,#16,#18,#11,#18,#16,#10,#11
.lbf37 equ $ + 4
	db #10,#1d,#10,#87,#16,#10,#16,#08
	db #16,#08,#0e,#08,#0f,#08,#11,#10
.lbf48 equ $ + 5
	db #13,#10,#15,#10,#87,#8a,#e7,#be
.lbf50 equ $ + 5
	db #41,#40,#80,#c0,#87,#8a,#e3,#b9
	db #93,#08,#46,#41,#46,#48,#46,#48
	db #92,#49,#02,#4a,#66,#80,#08,#4a
	db #08,#4b,#08,#80,#08,#4a,#08,#b1
	db #3a,#b8,#80,#08,#b9,#93,#08,#46
	db #41,#46,#48,#46,#48,#92,#49,#02
	db #4a,#66,#80,#08,#4a,#08,#4b,#08
	db #80,#08,#41,#08,#ba,#3c,#c0,#87
.lbf8b
	db #92,#e8,#b2,#80,#18,#29,#18,#29
.lbf9a equ $ + 7
	db #0c,#29,#18,#b3,#26,#6c,#87,#e7
	db #b0,#83,#88,#00,#00,#4b,#08,#41
	db #04,#3f,#04,#93,#08,#43,#46,#43
	db #41,#92,#3f,#10,#43,#10,#46,#10
.lbfb4 equ $ + 1
	db #87,#4d,#08,#80,#08,#48,#10,#45
	db #10,#c0,#45,#10,#b0,#45,#10,#41
.lbfc5 equ $ + 2
	db #10,#87,#8a,#e5,#b0,#92,#11,#40
.lbfcc equ $ + 1
	db #87,#8a,#e5,#92,#bb,#35,#40,#87
.lbfd3
	db #48,#08,#80,#08,#48,#08,#80,#08
	db #48,#08,#80,#08,#47,#02,#48,#75
.lbfe4 equ $ + 1
	db #08,#b3,#e1,#42,#ff,#b3,#e1,#75
	db #08,#b3,#e1,#42,#ff,#b3,#e1,#c5
	db #01,#1c,#e1,#0c,#e2,#ea,#01,#58
	db #43,#04,#45,#04,#87
;
.music_info
	db "Adidas Championship Football (1990)(Ocean Software)(Matthew Cannon)",0
	db "",0

	read "music_end.asm"
