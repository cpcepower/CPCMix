; Music of Cabal (1988) (Ocean Software)(Keith Tinman)()
; Ripped by Megachur the 17/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CABAL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #8600

	read "music_header.asm"

.l8602 equ $ +2
.l8604 equ $ +4
.l8608 equ $ +8
.l8610 equ $ +&10
.l8620 equ $ +&20
.l86db  equ $ +&db
.l86ed  equ $ +&ed
.l86f6  equ $ +&f6
.l8600
	db #38
.l8601
	db l8608,l8610,l8620,l8601,l8602,l8604	;#08,#10,#20,#01,#02,#04
.l8607
	db l86f6,l86ed,l86db,l86f6,l86ed,l86db	;#f6,#ed,#db,#f6,#ed,#db
.l860d
	db #00,#1f,#07,#10,#17,#1b
.l8613
	dw l883c,l8860,l8870,l8882
	dw l88b9,l88b9,l88b9,l88b9
	dw l88b9,l88b9
.l8627
	db #2b
	db #2d,#39,#4a,#0a,#fe,#0f,#0f,#0d
	db #0d,#0b,#0b,#07,#07,#03,#03,#00
	db #80,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #00,#80,#0f,#0e,#0d,#0c,#0b,#0c
	db #0d,#0c,#0b,#0a,#09,#08,#07,#08
	db #09,#08,#07,#06,#05,#06,#07,#06
	db #05,#04,#03,#04,#05,#04,#03,#02
	db #01,#02,#03,#02,#01,#00,#80
.l866f
	dw l8991,l89c7,l89fd
.l8677 equ $ + 2
.l8675
	dw l8993,l8a2f
.l8680 equ $ + 7
.l867f equ $ + 6
.l867e equ $ + 5
.l867d equ $ + 4
.l867c equ $ + 3
.l867b equ $ + 2
.l867a equ $ + 1
	db #0f,#00,#00,#00,#00,#00,#00,#00
.l8682 equ $ + 1
.l8681
	db #00,#00
.l8685 equ $ + 2
.l8683
	dw l89c9,l8a42
.l868e equ $ + 7
.l868d equ $ + 6
.l868c equ $ + 5
.l868b equ $ + 4
.l868a equ $ + 3
.l8689 equ $ + 2
.l8688 equ $ + 1
	db #8f,#00,#00,#00,#00,#00,#01,#00
.l8690 equ $ + 1
.l868f
	db #00,#00
.l8693 equ $ + 2
.l8691
	dw l89ff,l8a55
.l869c equ $ + 7
.l869b equ $ + 6
.l869a equ $ + 5
.l8699 equ $ + 4
.l8698 equ $ + 3
.l8697 equ $ + 2
.l8696 equ $ + 1
	db #fa,#00,#00,#00,#00,#00,#02,#00
.l869e equ $ + 1
.l869d
	db #00,#00
;
.stop_music
;
	ld hl,#003f
	ld a,#07
	call l2970
	ld hl,#0000
	ld a,#09
	jp l2970
;
.init_music	;&86af
;
	xor a
	ld hl,l866f
	ld de,#0006
	call l2b66
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8675),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8683),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8691),de
	ld a,#38
	ld (l8600),a
	xor a
	ld (l867a),a
	ld (l867b),a
	ld (l867c),a
	ld (l867d),a
	ld (l8680),a
	ld (l867e),a
	ld (l8682),a
	ld (l8681),a
	ld a,#00
	ld (l867f),a
	ld hl,(l8675)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8675),hl
	ld (l8677),de
	xor a
	ld (l8688),a
	ld (l8689),a
	ld (l868a),a
	ld (l868b),a
	ld (l868e),a
	ld (l868c),a
	ld (l8690),a
	ld (l868f),a
	ld a,#01
	ld (l868d),a
	ld hl,(l8683)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8683),hl
	ld (l8685),de
	xor a
	ld (l8696),a
	ld (l8697),a
	ld (l8698),a
	ld (l8699),a
	ld (l869c),a
	ld (l869a),a
	ld (l869e),a
	ld (l869d),a
	ld a,#02
	ld (l869b),a
	ld hl,(l8691)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8691),hl
	ld (l8693),de
	ret
;
.play_music	;875b
;
	ld ix,l8675
	call l877f
	ld ix,l8683
	call l877f
	ld ix,l8691
	call l877f
	ld a,(l8600)
	ld c,a
	ld a,#07
	jp l2978
.l8779
	ld (ix+#0c),#00
	jr l87a7
.l877f
	ld a,(ix+#09)
	or a
	jp z,l87dc
	dec (ix+#09)
	jp z,l87dc
	dec (ix+#08)
	jp p,l87a7
	ld a,(ix+#07)
	ld (ix+#08),a
	ld a,(ix+#06)
	add (ix+#05)
	ld (ix+#06),a
	ld a,(ix+#04)
	call l8812
.l87a7
	ld a,(ix+#0d)
	or a
	jr z,l87c6
	ld hl,l8627
	ld a,(ix+#0b)
	add l
	ld l,a
	ld a,(hl)
	add (ix+#0c)
	ld l,a
	inc (ix+#0c)
	ld a,(hl)
	cp #fe
	jr z,l8779
	cp #80
	jr z,l87cf
.l87c6
	ld c,a
	ld a,#08
	add (ix+#0a)
	jp l2978
.l87cf
	dec (ix+#0c)
	ld c,#00
	ld a,#08
	add (ix+#0a)
	jp l2978
.l87dc
	ld l,(ix+#02)
	ld h,(ix+#03)
	ld a,(hl)
	inc hl
	or a
	jp m,l8828
	ld e,(hl)
	ld (ix+#09),e
	inc hl
	ld (ix+#02),l
	ld (ix+#03),h
	ld (ix+#04),a
	call l8812
	ld a,(ix+#05)
	neg
	ld (ix+#06),a
	ld (ix+#0c),#00
	ld (ix+#0d),#01
	ld a,(ix+#0a)
	call l889c
	jp l87a7
.l8812
	add (ix+#06)
	add a
	ld l,a
	ld h,#00
	ld de,l88e9
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(ix+#0a)
	add a
	jp l2970
.l8828
	add a
	push hl
	ld hl,l8613
	ld e,a
	ld d,#00
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld (l883a),de
	pop hl
.l883a equ $ + 1
	jp #0000
.l883c
	ld l,(ix+#00)
	ld h,(ix+#01)
.l8842
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,d
	or e
	jr z,l8859
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#02),e
	ld (ix+#03),d
	jp l87dc
.l8859
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp l8842
.l8860
	ld a,(hl)
	inc hl
	ld (ix+#09),a
	ld (ix+#02),l
	ld (ix+#03),h
	ld (ix+#0d),#00
	ret
.l8870
	ld a,(hl)
	inc hl
	ld (ix+#0b),a
	ld (ix+#0c),#00
	ld (ix+#02),l
	ld (ix+#03),h
	jp l87dc
.l8882
	ld a,(hl)
	inc hl
	ld (ix+#05),a
	ld (ix+#06),#00
	ld a,(hl)
	inc hl
	ld (ix+#07),a
	ld (ix+#08),a
	ld (ix+#02),l
	ld (ix+#03),h
	jp l87dc
.l889c
	push hl
	push af
	ld hl,l8607
	add l
	ld l,a
	ld a,(l8600)
	and (hl)
	ld (l8600),a
	pop af
	ld hl,l8601
	add l
	ld l,a
	ld a,(l8600)
	or (hl)
	ld (l8600),a
	pop hl
	ret
.l88b9
	ld a,(hl)
	add #82
	ld c,a
	inc hl
	inc hl
	ld e,(hl)
	ld (ix+#09),e
	inc hl
	ld (ix+#02),l
	ld (ix+#03),h
	ld a,c
	sub #84
	ld hl,l860d
	add l
	ld l,a
	ld c,(hl)
	ld a,#06
	call l2978
	ld a,(ix+#0a)
	add #03
	call l889c
	ld (ix+#0c),#00
	ld (ix+#0d),#01
	ret
.l88e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
.l8993 equ $ + 2
.l8991
	dw l8a2f,l8a2f,l8a2f,l8a2f
.l8999
	dw l8ab8,l8ab8,l8b9b,l8b9b
	dw l8bd8,l8bd8,l8bd8,l8bd8
	dw l8cf6,l8cf6,l8d3a,l8d3a
	dw l8da6,l8da6,l8e0e,l8e0e
	dw l8cf6,l8bd8,l8bd8,l8bd8
.l89c7 equ $ + 6
	dw l8bd8,#0000,l8999,l8a42
.l89cf equ $ + 6
.l89c9
	dw l8a42,l8a42,l8a42,l8ae5
	dw l8ae5,l8ae5,l8ae5,l8c1f
	dw l8c1f,l8cd1,l8cd1,l8d1f
	dw l8d1f,l8d7f,l8d7f,l8ded
	dw l8ded,l8e91,l8e91,l8d1f
	dw l8c1f,l8c1f,l8cd1,l8cd1
.l89ff equ $ + 6
.l89fd equ $ + 4
	dw #0000,l89cf,l8a55,l8b20
	dw l8b20,l8b20,l8b20,l8c62
	dw l8c62,l8c62,l8c62,l8b20
	dw l8b20,l8c62,l8c62,l8c62
	dw l8c62,l8ebe,l8ebe,l8b20
	dw l8b20,l8c62,l8c62,l8c62
	dw l8c62,#0000,l89ff
.l8a2f
	db #82,#02,#18,#0c,#18,#0c
	db #18,#0c,#18,#0c,#18,#0c,#18,#0c
.l8a42 equ $ + 5
	db #18,#0c,#18,#0c,#80,#82,#03,#2b
	db #0c,#24,#0c,#2b,#0c,#30,#0c,#2b
	db #0c,#24,#0c,#2b,#0c,#24,#0c,#80
.l8a55
	db #82,#01,#84,#04,#fe,#06,#84,#04
	db #fe,#0c,#84,#04,#fe,#06,#84,#04
	db #fe,#06,#84,#04,#fe,#0c,#84,#04
	db #fe,#06,#84,#04,#fe,#06,#84,#04
	db #fe,#06,#84,#04,#fe,#06,#84,#04
	db #fe,#06,#84,#04,#fe,#06,#84,#04
	db #fe,#06,#84,#04,#fe,#6c,#84,#04
	db #fe,#06,#84,#04,#fe,#0c,#84,#04
	db #fe,#0c,#84,#04,#fe,#06,#84,#04
	db #fe,#0c,#84,#04,#fe,#06,#84,#04
	db #fe,#06,#84,#04,#fe,#0c,#84,#04
	db #fe,#06,#84,#04,#fe,#06,#84,#04
.l8ab8 equ $ + 3
	db #fe,#6c,#80,#82,#02,#18,#0c,#18
	db #18,#18,#18,#18,#0c,#16,#18,#18
	db #0c,#18,#18,#18,#18,#18,#0c,#1b
	db #18,#18,#0c,#18,#18,#18,#18,#18
	db #0c,#16,#18,#18,#0c,#18,#18,#18
	db #18,#18,#0c,#16,#06,#16,#12,#80
.l8ae5
	db #82,#03,#30,#0c,#30,#06,#30,#06
	db #30,#0c,#30,#06,#30,#06,#30,#06
	db #30,#06,#30,#06,#30,#06,#2e,#06
	db #2e,#72,#2e,#0c,#2e,#06,#2e,#06
	db #2e,#0c,#2e,#06,#2e,#06,#2e,#06
	db #2e,#06,#2e,#0c,#30,#06,#30,#4e
	db #30,#0c,#30,#06,#30,#06,#2e,#06
.l8b20 equ $ + 3
	db #2e,#06,#80,#82,#01,#84,#03,#00
	db #18,#84,#04,#00,#0c,#84,#05,#08
	db #06,#84,#05,#08,#06,#84,#03,#00
	db #0c,#84,#03,#00,#0c,#84,#04,#00
	db #0c,#84,#05,#08,#06,#84,#05,#08
	db #06,#84,#03,#00,#18,#84,#04,#00
	db #18,#84,#03,#00,#0c,#84,#03,#00
	db #0c,#84,#04,#00,#0c,#84,#05,#08
	db #06,#84,#05,#08,#06,#84,#03,#00
	db #18,#84,#04,#00,#18,#84,#03,#00
	db #0c,#84,#03,#00,#0c,#84,#04,#00
	db #18,#84,#03,#00,#18,#84,#04,#00
	db #0c,#84,#03,#00,#0c,#84,#03,#00
	db #0c,#84,#05,#08,#06,#84,#05,#08
	db #06,#84,#03,#00,#0c,#84,#05,#08
.l8b9b equ $ + 6
	db #06,#84,#05,#08,#06,#80,#82,#02
	db #18,#0c,#18,#0c,#24,#0c,#22,#18
	db #1f,#06,#18,#06,#22,#0c,#24,#0c
	db #18,#0c,#18,#0c,#22,#0c,#1f,#18
	db #1d,#0c,#1f,#0c,#18,#0c,#16,#0c
	db #16,#18,#16,#18,#16,#0c,#16,#18
	db #16,#0c,#18,#0c,#18,#0c,#18,#18
	db #18,#0c,#18,#06,#18,#06,#16,#06
.l8bd8 equ $ + 3
	db #16,#06,#80,#82,#02,#18,#0c,#18
	db #0c,#1b,#0c,#18,#06,#1d,#0c,#18
	db #06,#1e,#0c,#1d,#0c,#1b,#0c,#18
	db #0c,#18,#0c,#1b,#0c,#18,#06,#1d
	db #0c,#18,#06,#1e,#0c,#1d,#0c,#1b
	db #0c,#16,#0c,#16,#0c,#16,#0c,#16
	db #0c,#16,#0c,#16,#0c,#16,#0c,#16
	db #0c,#13,#0c,#13,#0c,#13,#0c,#13
	db #0c,#13,#0c,#13,#0c,#13,#0c,#13
.l8c1f equ $ + 2
	db #0c,#80,#82,#03,#33,#06,#33,#06
	db #33,#0c,#33,#0c,#33,#06,#32,#0c
	db #32,#12,#30,#0c,#30,#18,#33,#06
	db #33,#0c,#33,#0c,#32,#0c,#32,#06
	db #32,#0c,#30,#0c,#30,#12,#35,#06
	db #35,#0c,#35,#12,#33,#0c,#33,#06
	db #33,#0c,#32,#0c,#32,#18,#35,#0c
	db #35,#12,#33,#0c,#33,#06,#33,#0c
.l8c62 equ $ + 5
	db #32,#0c,#2b,#0c,#80,#82,#01,#84
	db #03,#00,#18,#84,#04,#00,#0c,#84
	db #03,#00,#0c,#84,#03,#00,#0c,#84
	db #03,#00,#0c,#84,#04,#00,#18,#84
	db #03,#00,#18,#84,#04,#00,#0c,#84
	db #03,#00,#06,#84,#03,#00,#06,#84
	db #03,#00,#06,#84,#03,#00,#06,#84
	db #03,#00,#06,#84,#03,#00,#06,#84
	db #04,#00,#18,#84,#03,#00,#18,#84
	db #04,#00,#0c,#84,#03,#00,#18,#84
	db #03,#00,#0c,#84,#04,#00,#18,#84
	db #03,#00,#18,#84,#04,#00,#0c,#84
	db #03,#00,#0c,#84,#03,#00,#0c,#84
	db #03,#00,#0c,#84,#04,#00,#0c,#84
.l8cd1 equ $ + 4
	db #03,#00,#0c,#80,#82,#03,#33,#24
	db #32,#0c,#33,#0c,#30,#18,#33,#18
	db #33,#18,#32,#0c,#33,#0c,#30,#24
	db #35,#24,#33,#0c,#32,#0c,#2e,#0c
	db #2b,#18,#2f,#24,#30,#24,#32,#18
.l8cf6 equ $ + 1
	db #80,#82,#02,#18,#0c,#18,#0c,#18
	db #54,#1b,#0c,#1b,#18,#1b,#06,#1b
	db #0c,#1b,#06,#1b,#0c,#1d,#18,#18
	db #0c,#18,#54,#1b,#0c,#1b,#18,#1b
	db #06,#1b,#0c,#1b,#06,#1b,#0c,#1d
.l8d1f equ $ + 2
	db #0c,#80,#82,#03,#30,#24,#30,#24
	db #30,#24,#30,#24,#30,#18,#30,#06
	db #30,#2a,#30,#30,#30,#30,#30,#30
.l8d3a equ $ + 5
	db #30,#06,#30,#12,#80,#82,#02,#13
	db #0c,#13,#0c,#1f,#0c,#13,#18,#13
	db #0c,#1f,#0c,#13,#0c,#11,#0c,#11
	db #0c,#1d,#0c,#11,#18,#11,#0c,#1d
	db #0c,#11,#0c,#0f,#06,#0f,#06,#0f
	db #0c,#1b,#0c,#0f,#18,#0f,#0c,#1b
	db #0c,#0f,#0c,#11,#0c,#11,#0c,#1d
	db #0c,#11,#18,#11,#0c,#1d,#0c,#11
	db #0c,#80,#01,#f4,#01,#00,#01,#0c
.l8d7f equ $ + 2
	db #77,#8d,#82,#03,#2b,#24,#29,#0c
	db #2b,#0c,#2e,#18,#2b,#18,#2b,#18
	db #29,#0c,#2b,#0c,#30,#18,#2b,#18
	db #2b,#18,#29,#0c,#2b,#24,#2b,#18
	db #2b,#18,#29,#0c,#2b,#0c,#32,#24
.l8da6 equ $ + 1
	db #80,#82,#02,#18,#06,#18,#06,#18
	db #18,#18,#06,#24,#0c,#18,#06,#18
	db #0c,#18,#0c,#18,#18,#1d,#0c,#1d
	db #0c,#1d,#06,#1d,#0c,#1d,#06,#1d
	db #0c,#29,#0c,#1d,#18,#1f,#0c,#1f
	db #0c,#1f,#06,#1f,#0c,#1f,#06,#1f
	db #0c,#2b,#0c,#1f,#18,#1d,#06,#1c
	db #06,#1d,#0c,#1f,#06,#1f,#0c,#1f
	db #06,#1f,#0c,#2b,#0c,#1f,#0c,#80
.l8ded
	db #82,#03,#81,#c0,#37,#18,#37,#18
	db #37,#0c,#37,#0c,#37,#24,#37,#06
	db #37,#06,#37,#12,#37,#0c,#37,#06
	db #37,#0c,#37,#0c,#37,#06,#37,#06
.l8e0e equ $ + 1
	db #80,#82,#02,#18,#06,#18,#06,#24
	db #06,#18,#06,#18,#06,#18,#06,#24
	db #06,#18,#06,#18,#06,#18,#06,#24
	db #06,#18,#06,#18,#06,#18,#06,#24
	db #06,#18,#06,#18,#06,#18,#06,#24
	db #06,#18,#06,#18,#06,#18,#06,#24
	db #06,#18,#06,#18,#06,#18,#06,#24
	db #06,#18,#06,#18,#06,#18,#06,#24
	db #06,#18,#06,#1b,#06,#1b,#06,#27
	db #06,#1b,#06,#1b,#06,#1b,#06,#27
	db #06,#1b,#06,#1b,#06,#1b,#06,#27
	db #06,#1b,#06,#1b,#06,#1b,#06,#27
	db #06,#1b,#06,#1d,#06,#1d,#06,#29
	db #06,#1d,#06,#1d,#06,#1d,#06,#29
	db #06,#1d,#06,#1d,#06,#1d,#06,#29
	db #06,#1d,#06,#1e,#06,#2a,#06,#1f
.l8e91 equ $ + 4
	db #06,#2b,#06,#80,#82,#03,#30,#0c
	db #30,#06,#30,#0c,#30,#0c,#30,#0c
	db #30,#06,#30,#0c,#2e,#06,#2e,#72
	db #2e,#06,#2e,#06,#2e,#06,#2e,#0c
	db #2e,#06,#2e,#0c,#2e,#0c,#2e,#06
	db #2e,#06,#30,#06,#30,#12,#81,#60
.l8ebe equ $ + 1
	db #80,#82,#01,#84,#03,#00,#18,#84
	db #04,#00,#0c,#84,#03,#00,#06,#84
	db #03,#00,#06,#84,#03,#00,#06,#84
	db #03,#00,#06,#84,#03,#00,#0c,#84
	db #04,#00,#18,#84,#03,#00,#18,#84
	db #04,#00,#0c,#84,#03,#00,#18,#84
	db #03,#00,#0c,#84,#04,#00,#0c,#84
	db #04,#00,#0c,#84,#03,#00,#18,#84
	db #04,#00,#0c,#84,#03,#00,#18,#84
	db #03,#00,#0c,#84,#04,#00,#18,#84
	db #03,#00,#0c,#84,#03,#00,#0c,#84
	db #04,#00,#12,#84,#03,#00,#06,#84
	db #04,#00,#0c,#84,#03,#00,#06,#84
	db #04,#00,#0c,#84,#04,#00,#06,#84
	db #04,#00,#0c,#80
.l2970
	ld c,l
	ld e,a
	call l2978
	ld a,e
	inc a
	ld c,h
.l2978
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	ret
	
.l2b66
	or a
	ret z
	rra
	jr nc,l2b6c
	add hl,de
.l2b6c
	ex de,hl
	add hl,hl
	ex de,hl
	jp l2b66
;
; #28c5
; ld hl,#28df
; ld (l28cc),hl
; .l28cc equ $ + 1
; call #28f9
; ld (l28cc),hl
;
; init &86af
;
; #28f9
; .l28fa equ $ + 1
; ld a,#00
; cp #01
; jr c,l290b
; jr z,l2912
; call #869f	; stop
; ld a,#01
; ld (l28fa),a
; jr l2912
; .l290b
; push ix
; call #875b	; play
; pop ix
; .l2912
; ld hl,l2916
; ret
;
.music_info
	db "Cabal (1988) (Ocean Software)(Keith Tinman)",0
	db "",0

	read "music_end.asm"
