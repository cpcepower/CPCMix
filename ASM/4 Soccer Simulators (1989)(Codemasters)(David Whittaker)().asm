; Music of 4 Soccer Simulators (1989)(Codemasters)(David Whittaker)()
; Ripped by Megachur the 07/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "4SOCCERS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #906b
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
.init_music
;
	push af
	call l91f7
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l9696
	add hl,bc
	ld a,(hl)
	ld (l9122),a
	inc hl
	ld ix,l90c0
	ld c,#19
	ld a,#03
.l9089
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#08),#01
	ld (ix+#00),b
	ld (ix+#15),b
	ld (ix+#17),b
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
	jr nz,l9089
	dec a
	ld (l94f9),a
	ld (l94f7),a
	ret
.l90c0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.l90d9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.l90f2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
;
.play_music
;
	ld a,(l94f7)
	ld hl,l94f8
	or (hl)
	ret z
	call l954f
	ld a,(l94f7)
	and a
	jr z,l916d
.l911d equ $ + 1
	ld a,#00
	ld (l9169),a
.l9122 equ $ + 1
	ld a,#01
	ld hl,l94f9
	add (hl)
	ld (hl),a
	jr nc,l9141
	ld b,#00
	ld ix,l90c0
	call l92bc
	ld ix,l90d9
	call l92bc
	ld ix,l90f2
	call l92bc
.l9141
	ld ix,l90c0
	call l9340
	ld (l940e),hl
	ld (l9416),a
	ld ix,l90d9
	call l9340
	ld (l9410),hl
	ld (l9417),a
	ld ix,l90f2
	call l9340
	ld (l9412),hl
	ld (l9418),a
.l9169 equ $ + 1
	ld a,#00
	ld (l9414),a
.l916d
	ld a,(l94f7)
	and a
	jr nz,l9181
	ld (l9416),a
	ld (l9417),a
	ld (l9418),a
	ld a,#3f
	ld (l9415),a
.l9181
	ld a,(l94f8)
	and a
	jr z,l91a9
	ld hl,(l941b)
.l918c equ $ + 2
	ld (l940e),hl
	ld a,(l968a)
	ld b,a
	bit 3,a
	jr nz,l919b
	ld a,(l9421)
	ld (l9414),a
.l919b
	ld hl,l9415
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l9423)
	ld (l9416),a
.l91a9
	ld hl,l9418
	ld d,#0a
.l91ae
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
	jp p,l91ae
	ret
.l91cf
	ld de,#0a00
.l91d2
	call l91dc
	dec d
	jp p,l91d2
	ld de,#073f
.l91dc
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
.l91f7
;
	xor a
	ld (l94f7),a
	ld (l94f8),a
	call l91cf
	xor a
	ld (l9416),a
	ld (l9417),a
	ld (l9418),a
	ret
	db #9a,#8e,#87,#00,#00,#00,#00,#0f
	db #74,#00,#4e,#38,#60,#87,#04,#94
	db #95,#9a
	pop hl
	jp l91f7
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
	jr nz,l9244
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l9244
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l92c9
	ld a,(ix+#18)
	ld c,a
	and #07
	ld hl,l93d9
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#16),a
	jp l92c9
	ld a,(ix+#18)
	ld c,a
	and #38
	ld hl,l93d9
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#16),a
	jp l92c9
	ld hl,l93d9
	ld a,(ix+#18)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#16),a
	jr l92c9
	ld a,(de)
	ld (ix+#13),a
	inc de
	ld a,(de)
	ld (ix+#12),a
	ld (ix+#14),a
	inc de
	ld (ix+#15),#40
	jr l92c9
	ld (ix+#15),b
	jr l92c9
	set 1,(ix+#00)
	jr l92c9
	ld (ix+#0b),b
	res 5,(ix+#00)
	jr l92f8
	jr l92f4
	ld (ix+#17),#ff
	jr l92c9
	ld (ix+#17),b
	jr l92c9
.l92bc
	dec (ix+#08)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l92c9
	ld a,(de)
	inc de
	and a
	jp m,l930f
	ld (ix+#0a),a
	bit 0,(ix+#16)
	jr z,l92db
	ld (l911d),a
.l92db
	ld l,(ix+#0c)
	ld (ix+#0e),l
	ld h,(ix+#0d)
	ld (ix+#0f),h
	ld a,(hl)
	ld (ix+#10),a
	ld (ix+#0b),a
	ld a,(ix+#07)
	ld (ix+#11),a
.l92f4
	set 5,(ix+#00)
.l92f8
	ld a,(ix+#09)
	ld (ix+#08),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#17)
	and a
	jr z,l930e
	ld (ix+#17),#ff
.l930e
	ret
.l930f
	cp #d0
	jr c,l9338
	add #20
	jr c,l9331
	add #10
	ld hl,l949f
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#0c),l
	ld (ix+#0d),h
	dec hl
	ld a,(hl)
	ld (ix+#07),a
	jp l92c9
.l9331
	inc a
	ld (ix+#09),a
	jp l92c9
.l9338
	ld hl,l918c
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l9340
	ld c,(ix+#00)
	bit 5,c
	jr z,l9372
	ld a,(ix+#11)
	sub #01
	ld (ix+#11),a
	jr nc,l936c
	ld a,(ix+#07)
	ld (ix+#11),a
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	inc hl
	ld a,(hl)
	and a
	jp m,l936c
	ld (ix+#0e),l
	ld (ix+#0f),h
	ld (ix+#10),a
.l936c
	ld a,(ix+#10)
	ld (ix+#0b),a
.l9372
	ld a,(ix+#0a)
	ld hl,l940f
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#15)
	bit 6,l
	jr z,l93cf
	ld h,a
	ld b,(ix+#12)
	sla b
	bit 7,l
	ld a,(ix+#14)
	jr z,l9398
	bit 0,c
	jr nz,l93b6
.l9398
	bit 5,l
	jr nz,l93a8
	sub (ix+#13)
	jr nc,l93b3
	set 5,(ix+#15)
	sub a
	jr l93b3
.l93a8
	add (ix+#13)
	cp b
	jr c,l93b3
	res 5,(ix+#15)
	ld a,b
.l93b3
	ld (ix+#14),a
.l93b6
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l93c1
	dec d
.l93c1
	add #a0
	jr c,l93cd
.l93c5
	sla e
	rl d
	add #18
	jr nc,l93c5
.l93cd
	add hl,de
	ex de,hl
.l93cf
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.l93d9 equ $ + 1
	ld a,#38
	jr nz,l93e6
	ld a,(l911d)
	xor #08
	ld (l9169),a
	ld a,#07
.l93e6
	ld hl,l9415
	xor (hl)
	and (ix+#18)
	xor (hl)
	ld (hl),a
	ld a,(ix+#17)
	and a
	jp p,l9409
	and #7f
	ld (ix+#17),a
	ld a,(ix+#18)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l9169),a
.l9409
	ex de,hl
	ld a,(ix+#0b)
	ret
.l9415 equ $ + 7
.l9414 equ $ + 6
.l9412 equ $ + 4
.l9410 equ $ + 2
.l940f equ $ + 1
.l940e
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l941c equ $ + 6
.l941b equ $ + 5
.l9418 equ $ + 2
.l9417 equ $ + 1
.l9416
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l9423 equ $ + 5
.l9421 equ $ + 3
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
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
.l949f
	dw l94a8,l94d2,l94d9,l94ea
.l94a8 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0d,#0c
	db #0b,#0a,#09,#0b,#0a,#09,#08,#07
	db #09,#08,#07,#06,#05,#07,#06,#05
	db #04,#03,#05,#04,#03,#02,#01,#04
	db #03,#02,#01,#03,#02,#01,#02,#01
.l94d2 equ $ + 3
	db #00,#87,#01,#0f,#0e,#0d,#0c,#0b
.l94d9 equ $ + 2
	db #87,#05,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l94ea equ $ + 3
	db #01,#87,#01,#0e,#0d,#0c,#0b,#0a
	db #09,#0b,#0a,#09,#08,#87,#00,#0f
.l94f9 equ $ + 2
.l94f8 equ $ + 1
.music_end
.l94f7
	db #00,#00,#00
	ld hl,l94f8
	ld (hl),#00
	ld hl,l95ec
	add a
	add l
	ld l,a
	jr nc,l9508
	inc h
.l9508
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0b
	ld hl,l9684
.l9510
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l9510
	ld a,(l9685)
	ld (l9690),a
	ld hl,(l9686)
	ld (l941b),hl
	ld a,(l968a)
	bit 3,a
	jr nz,l952d
	ld a,l
	ld (l9421),a
.l952d
	ld a,(l968e)
	ld (l9691),a
	ld a,(l968d)
	ld hl,l9647
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l9692),hl
	ld (l9694),hl
	ld a,(hl)
	ld (l9423),a
	ld hl,l94f8
	inc (hl)
	ret
.l954f
	ld a,(l94f8)
	and a
	ret z
	ld a,(l9684)
	and a
	jr nz,l9564
	ld a,(l968f)
	and a
	jr nz,l9564
	ld (l94f8),a
	ret
.l9564
	dec a
	ld (l9684),a
	ld a,(l9690)
	and a
	jr nz,l9590
	ld a,(l968f)
	and a
	jr nz,l957a
	ld a,(l968c)
	and a
	jr z,l95c4
.l957a
	dec a
	ld (l968c),a
	ld a,(l9685)
	ld (l9690),a
	ld a,(l9686)
	ld (l941b),a
	ld a,(l9687)
	ld (l941c),a
.l9590
	ld hl,l9690
	dec (hl)
	ld a,(l968b)
	and a
	jr z,l95b7
	jp p,l95aa
	ld hl,(l941b)
	ld de,(l9688)
	add hl,de
	ld (l941b),hl
	jr l95b7
.l95aa
	ld hl,(l941b)
	ld de,(l9688)
	and a
	sbc hl,de
	ld (l941b),hl
.l95b7
	ld a,(l968a)
	bit 3,a
	jr nz,l95c4
	ld a,(l941b)
	ld (l9421),a
.l95c4
	ld a,(l9691)
	dec a
	ld (l9691),a
	jr nz,l95eb
	ld a,(l968e)
	ld (l9691),a
	ld hl,(l9694)
	ld a,(hl)
	inc hl
	and a
	jp p,l95e5
	cp #80
	jr nz,l95eb
	ld hl,(l9692)
	ld a,(hl)
	inc hl
.l95e5
	ld (l9694),hl
	ld (l9423),a
.l95eb
	ret
.l95ec
	dw l95fa,l9605,l9610,l961b
	dw l9626,l9631,l963c
.l95fa
	db #0a,#63,#10,#04,#08,#00,#fe,#01
.l9605 equ $ + 3
	db #63,#00,#02,#08,#63,#80,#05,#30
.l9610 equ $ + 6
	db #00,#fe,#01,#63,#00,#01,#14,#02
	db #1e,#00,#05,#00,#fe,#01,#63,#03
.l961b equ $ + 1
	db #01,#0b,#0f,#00,#02,#40,#00,#fe
.l9626 equ $ + 4
	db #ff,#00,#02,#01,#0b,#0f,#00,#04
.l9631 equ $ + 7
	db #50,#00,#fe,#ff,#00,#02,#01,#0b
	db #0f,#00,#00,#00,#00,#f6,#ff,#00
.l963c equ $ + 2
	db #01,#01,#c8,#03,#08,#00,#00,#00
	db #f7,#ff,#00,#02,#08
.l9647
	dw l9651,l965a,l966c,l9680
	dw l9666
.l9651
	db #0e,#0d,#0b,#09,#07,#05,#04,#03
.l965a equ $ + 1
	db #ff,#08,#0a,#0c,#0e,#0d,#0c,#0a
.l9666 equ $ + 5
	db #08,#06,#04,#00,#ff,#04,#05,#06
.l966c equ $ + 3
	db #07,#08,#09,#0a,#0c,#0e,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l9680 equ $ + 7
	db #06,#05,#05,#04,#04,#03,#ff,#08
.l9688 equ $ + 7
.l9687 equ $ + 6
.l9686 equ $ + 5
.l9685 equ $ + 4
.l9684 equ $ + 3
	db #0a,#0b,#ff,#00,#00,#00,#00,#00
.l9690 equ $ + 7
.l968f equ $ + 6
.l968e equ $ + 5
.l968d equ $ + 4
.l968c equ $ + 3
.l968b equ $ + 2
.l968a equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9694 equ $ + 3
.l9692 equ $ + 1
.l9691
	db #00,#00,#00,#00,#00
.l9696
	db #20
	dw l979b,l9797,l979f
	db #32
	dw l96b4,l96b2,l96b6
	db #32
	dw l971b,l9719,l971d
	db #38
	dw l9755,l9753,l9757
.l96b2
	dw l96b8
.l96b4
	dw l96d9
.l96b6
	dw l96f9
.l96b8
	db #8a,#88,#01,#01,#d1,#e0,#1f,#e1
	db #1f,#e0,#1f,#e1,#1f,#1f,#21,#1f
	db #e3,#23,#e0,#23,#e1,#23,#e0,#23
	db #e1,#23,#23,#24,#26,#eb,#d2,#28
	db #8e
.l96d9
	db #8a,#88,#01,#01,#d1,#e0,#24,#e1
	db #24,#e0,#24,#e1,#24,#24,#24,#24
	db #e3,#26,#e0,#26,#e1,#26,#e0,#26
	db #e1,#26,#26,#29,#2b,#eb,#d2,#2b
.l96f9
	db #8a,#88,#01,#01,#d1,#e0,#28,#e1
	db #28,#e0,#28,#e1,#28,#28,#29,#28
	db #e3,#2b,#e0,#2b,#e1,#2b,#e0,#2b
	db #e1,#2b,#2b,#2d,#2f,#eb,#d2,#30
.l971d equ $ + 4
.l971b equ $ + 2
.l9719
	dw l971f,l9731,l9742
.l971f
	db #8a,#88,#01,#01,#d1,#e2,#20,#e0
	db #20,#20,#e1,#20,#20,#20,#eb,#d2
.l9731 equ $ + 2
	db #2e,#8e,#8a,#88,#01,#01,#d1,#e2
	db #25,#e0,#25,#25,#e1,#25,#25,#25
.l9742 equ $ + 3
	db #eb,#d2,#25,#8a,#88,#01,#01,#d1
	db #e2,#29,#e0,#1d,#1d,#e1,#2a,#2a
	db #2a,#eb,#d2,#2a
.l9753
	dw l9759
.l9755
	dw l976f
.l9757
	dw l9783
.l9759
	db #8a,#88,#01,#01,#d1,#e1
	db #13,#1f,#13,#1f,#13,#1f,#13,#1f
	db #18,#24,#18,#24,#ef,#d2,#18,#8e
.l976f
	db #8a,#88,#01,#01,#d1,#e1,#26,#e7
	db #23,#e1,#26,#e2,#2b,#e0,#26,#e1
	db #2b,#f7,#d2,#28
.l9783
	db #8a,#88,#01,#01
	db #d1,#e1,#2b,#e7,#26,#e1,#2b,#e2
	db #2f,#e0,#2b,#e1,#30,#f7,#d2,#2b
.l9797
	dw l97a3,#0000
.l979b
	dw l97cb,#0000
.l979f
	dw l97a7,#0000
.l97a7 equ $ + 4
.l97a3
	db #88,#01,#01,#90,#8a,#d1,#e0,#13
	db #1a,#1f,#13,#1a,#1f,#13,#1a,#1f
	db #13,#1a,#1f,#13,#1a,#1f,#13,#11
	db #1a,#1d,#11,#1a,#1d,#11,#1a,#1d
	db #11,#1a,#1d,#11,#1a,#1d,#11,#87
.l97cb
	db #88,#01,#01,#8a,#d1,#e0,#1a,#1f
	db #23,#1a,#1f,#23,#1a,#1f,#e1,#26
	db #e0,#23,#e4,#23,#e0,#1a,#1d,#21
	db #1a,#1d,#21,#1a,#1d,#e1,#26,#e0
	db #21,#e4,#21,#e0,#26,#2b,#2f,#26
	db #2b,#2f,#26,#2b,#88,#01,#02,#e7
	db #32,#ef,#8f,#87
;
.music_info
	db "4 Soccer Simulators (1989)(Codemasters)(David Whittaker)",0
	db "",0

	read "music_end.asm"
