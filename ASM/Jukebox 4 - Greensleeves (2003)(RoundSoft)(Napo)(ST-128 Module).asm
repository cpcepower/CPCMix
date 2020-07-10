; Music of Jukebox 4 - Greensleeves (2003)(RoundSoft)(Napo)(ST-128 Module)
; Ripped by Megachur the 21/02/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JUKEB4GR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #539f

	read "music_header.asm"

	jr l53a3
	jr l53b2
.l53a3
	call l53d6
	ld hl,l53c3
	ld de,l53bb
	ld bc,#81ff
	jp #bcd7
.l53b2
	ld hl,l53c3
	call #bcdd
	jp l544e
.l53bb
	push ix
	call l546a
	pop ix
	ret
.l53c3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00

	jp l53d6
	jp l546a
	jp l544e
;
.init_music
.l53d6
;
	xor a
	ld hl,l5981
	call l5447
	ld hl,l59af
	call l5447
	ld hl,l59dd
	call l5447
	ld ix,l597d
	ld iy,l5a07
	ld de,#002e
	ld b,#03
.l53f6
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l53f6
	ld hl,l5896
	ld (hl),#06
	inc hl
	ld (hl),#30
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l5892),hl
	ld (l5894),hl
	ld a,#0c
	ld c,d
	call l5872
	ld a,#0d
	ld c,d
	jp l5872
.l5447
	ld b,#2a
.l5449
	ld (hl),a
	inc hl
	djnz l5449
	ret
;
.stop_music
.l544e
;
	ld a,#07
	ld c,#3f
	call l5872
	ld a,#08
	ld c,#00
	call l5872
	ld a,#09
	ld c,#00
	call l5872
	ld a,#0a
	ld c,#00
	jp l5872
;
.play_music
.l546a
;
	ld hl,l5898
	dec (hl)
	ld ix,l597d
	ld bc,l598b
	call l550c
	ld ix,l59ab
	ld bc,l59b9
	call l550c
	ld ix,l59d9
	ld bc,l59e7
	call l550c
	ld hl,l5891
	ld de,l5898
	ld b,#06
	call l54e9
	ld b,#07
	call l54e9
	ld b,#0b
	call l54e9
	ld b,#0d
	call l54e9
	ld de,l5898
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#30
	ld hl,l599c
	call l54c2
	ld hl,l59ca
	call l54c2
	ld hl,l59f8
.l54c2
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l54d7
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l54d7
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l54e9
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l5872
.l54f4
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l5872
.l550c
	ld a,(l5898)
	or a
	jp nz,l55c4
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l55c4
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l54f4
	or a
	jp z,l55b9
	ld r,a
	and #7f
	cp #10
	jr c,l5594
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l570c
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l556d
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l556d
	rrca
	ld c,a
	ld hl,l5a0d
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l558c
	ld (ix+#1e),b
.l558c
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l55ad
.l5594
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l589d
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	ld sp,#3332
	inc (hl)
	dec (hl)
.l55ad equ $ + 1
	ld (hl),#7a
	or a
	jr nz,l55bb
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l55bb
.l55b9
	ld a,(hl)
	inc hl
.l55bb
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l55c4
	ld a,(ix+#17)
	or a
	jr nz,l55da
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l55da
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l55f0
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l55f0
	ld a,(ix+#0d)
	or a
	jr z,l55fe
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l561c
.l55fe
	ld a,(ix+#1a)
	or a
	jp z,l5623
	ld c,a
	cp #03
	jr nz,l560b
	xor a
.l560b
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l561c
	ld a,(ix+#18)
	dec c
	jr z,l561c
	ld a,(ix+#19)
.l561c
	add (ix+#07)
	ld b,d
	call l570c
.l5623
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l564b
	dec (ix+#1b)
	jr nz,l564b
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l5683
.l564b
	ld a,(ix+#29)
	or a
	jr z,l5683
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l567a
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l5671
	ld (ix+#29),#ff
	jr l567a
.l5671
	cp (ix+#2b)
	jr nz,l567a
	ld (ix+#29),#01
.l567a
	ld b,d
	or a
	jp p,l5680
	dec b
.l5680
	ld c,a
	jr l568e
.l5683
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l568e
	pop hl
	bit 7,(ix+#14)
	jr z,l5697
	ld h,d
	ld l,d
.l5697
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l5872
	ld c,h
	ld a,(ix+#02)
	call l5872
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l56ea
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l56d9
	dec (ix+#09)
	jr nz,l56d9
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l56d1
	xor a
	jr l56d6
.l56d1
	cp #10
	jr nz,l56d6
	dec a
.l56d6
	ld (ix+#1e),a
.l56d9
	ld a,b
	sub (ix+#1e)
	jr nc,l56e0
	xor a
.l56e0
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l5872
.l56ea
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l5899)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l5708
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l5708
	ld (l5899),hl
	ret
.l570c
	ld hl,l58bb
	cp #61
	jr nc,l5716
	add a
	ld c,a
	add hl,bc
.l5716
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l5720
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l5845
	ld (ix+#1e),a
	jp l55ad
.l5732
	dec b
.l5733
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l573e
	neg
.l573e
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l55ad
.l5754
	dec b
	jr l5758
.l5757
	inc b
.l5758
	call l5845
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l55ad
.l5767
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l582a
.l5778
	ld a,(hl)
	inc hl
	or a
	jr z,l579a
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l579a
	ld (ix+#29),a
	jp l55ad
.l57a0
	dec hl
	ld a,(hl)
	and #0f
	ld (l589c),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l589b),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l55ad
.l57ba
	ld a,(hl)
	or a
	jr z,l57cb
	call l5847
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l55ad
.l57cb
	ld hl,#0101
	ld (l5897),hl
	jp l55ad
.l57d4
	call l5845
	ld (ix+#1e),a
	jp l55ad
.l57dd
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l5856
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l5856
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l55ad
.l57ff
	ld a,(hl)
	inc hl
	ld (l5896),a
	jp l55ad
.l5807
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l55ad
.l5826
	call l5845
	add a
.l582a
	ld b,#00
	ld c,a
	push hl
	ld hl,l5a8d
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l55ad
.l5845
	ld a,(hl)
	inc hl
.l5847
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l5856
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l5a0d
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l5872
	di
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
	ei
.l5891
	ret
.l5899 equ $ + 7
.l5898 equ $ + 6
.l5897 equ $ + 5
.l5896 equ $ + 4
.l5894 equ $ + 2
.l5892
	db #00,#00,#00,#00,#00,#00,#00,#00
.l589c equ $ + 2
.l589b equ $ + 1
	db #38,#00,#00
.l589d
	dw l5720,l5733,l5732,l5757
	dw l5754,l5767,l5778,l57a0
	dw l57ba,l57a0,l57d4,l57dd
	dw l57ff,l5807,l5826
.l58bb
	dw #0000,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
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
.l597d equ $ + 2
	dw #000f,#0008
.l5981 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l598b equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l599c equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l59ab equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l59af
	db #00,#00,#00,#00,#00,#00,#00,#00
.l59b9 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l59ca equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l59dd equ $ + 6
.l59d9 equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l59e7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l59f8 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a0d equ $ + 6
.l5a07
	db #4d,#5b,#5c,#5b,#6b,#5b,#ad,#5a
	db #ed,#5a,#0d,#5b,#00,#00,#ad,#5a
	db #2d,#5b,#0d,#5b,#00,#00,#fd,#60
	db #9d,#61,#bd,#61,#00,#00,#fd,#60
	db #dd,#61,#fd,#61,#00,#00,#ef,#19
	db #ef,#19,#ef,#19,#00,#00,#ef,#19
	db #ef,#19,#ef,#19,#00,#00,#ef,#19
	db #ef,#19,#ef,#19,#00,#00,#ef,#19
	db #ef,#19,#ef,#19,#00,#00,#ef,#19
	db #ef,#19,#ef,#19,#00,#00,#ef,#19
	db #ef,#19,#ef,#19,#00,#00,#ef,#19
	db #ef,#19,#ef,#19,#00,#00,#ef,#19
	db #ef,#19,#ef,#19,#00,#00,#ef,#19
	db #ef,#19,#ef,#19,#00,#00,#ef,#19
	db #ef,#19,#ef,#19,#00,#00,#ef,#19
	db #ef,#19,#ef,#19,#00,#00,#ef,#19
.l5a8d equ $ + 6
	db #ef,#19,#ef,#19,#00,#00,#ef,#19
	db #ef,#19,#ef,#19,#ef,#19,#ef,#19
	db #ef,#19,#ef,#19,#ef,#19,#ef,#19
	db #ef,#19,#ef,#19,#ef,#19,#ef,#19
	db #ef,#19,#ef,#19,#ef,#19,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0d
	db #0f,#0e,#0d,#08,#04,#06,#0b,#08
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#00,#7a
	db #5b,#00,#b0,#5b,#00,#e9,#5b,#00
	db #1c,#5c,#80,#4d,#5b,#00,#5a,#5c
	db #00,#72,#5c,#00,#8b,#5c,#00,#a4
	db #5c,#80,#5c,#5b,#00,#bd,#5c,#00
	db #0d,#5d,#00,#66,#5d,#00,#bf,#5d
	db #80,#6b,#5b,#00,#04,#49,#10,#02
	db #4c,#10,#04,#4e,#10,#02,#50,#10
	db #03,#d2,#10,#50,#10,#02,#4e,#10
	db #04,#4b,#10,#02,#47,#10,#03,#c9
	db #10,#4b,#10,#02,#4c,#10,#04,#49
	db #10,#02,#49,#10,#03,#c8,#10,#49
	db #10,#02,#4b,#10,#04,#48,#10,#02
	db #ff,#44,#10,#04,#49,#10,#02,#4c
	db #10,#04,#4e,#10,#02,#50,#10,#03
	db #d2,#10,#50,#10,#02,#4e,#10,#04
	db #4b,#10,#02,#47,#10,#03,#c9,#10
	db #4b,#10,#02,#4c,#10,#03,#cb,#10
	db #49,#10,#02,#48,#10,#03,#c6,#10
	db #c8,#13,#64,#02,#68,#01,#49,#10
	db #06,#ff,#53,#10,#05,#01,#12,#53
	db #11,#30,#d2,#10,#50,#10,#02,#4e
	db #10,#04,#4b,#10,#02,#47,#10,#03
	db #c9,#10,#4b,#10,#02,#4c,#10,#04
	db #49,#10,#02,#49,#10,#03,#c8,#10
	db #49,#10,#02,#4b,#10,#04,#48,#10
	db #02,#44,#10,#06,#ff,#53,#11,#50
	db #01,#12,#53,#11,#30,#d2,#10,#50
	db #10,#02,#4e,#10,#04,#4b,#10,#02
	db #47,#10,#03,#c9,#10,#4b,#10,#02
	db #4c,#10,#03,#cb,#10,#49,#10,#02
	db #48,#10,#03,#c6,#10,#48,#10,#02
	db #49,#10,#02,#49,#11,#21,#49,#11
	db #21,#49,#11,#21,#49,#11,#22,#49
	db #11,#24,#ff,#00,#06,#25,#10,#06
	db #28,#10,#06,#23,#10,#06,#2f,#10
	db #06,#25,#10,#06,#31,#10,#06,#20
	db #10,#06,#ff,#2c,#10,#06,#25,#10
	db #06,#28,#10,#06,#23,#10,#06,#2f
	db #10,#06,#25,#10,#06,#20,#10,#06
	db #25,#10,#06,#ff,#28,#10,#06,#1c
	db #10,#06,#2f,#10,#06,#23,#10,#06
	db #31,#10,#06,#25,#10,#06,#2c,#10
	db #06,#20,#10,#06,#ff,#28,#10,#06
	db #1c,#10,#06,#2f,#10,#06,#23,#10
	db #06,#31,#10,#06,#2c,#10,#06,#31
	db #10,#06,#25,#10,#06,#ff,#00,#06
	db #3d,#01,#20,#49,#0e,#cc,#02,#49
	db #0e,#cc,#02,#40,#01,#20,#4c,#0e
	db #cc,#02,#4c,#0e,#cc,#02,#3b,#01
	db #20,#47,#0e,#cc,#02,#47,#0e,#cc
	db #02,#3b,#01,#20,#47,#0e,#cc,#02
	db #47,#0e,#cc,#02,#3d,#01,#20,#49
	db #0e,#cc,#02,#49,#0e,#cc,#02,#3d
	db #01,#20,#49,#0e,#cc,#02,#49,#0e
	db #cc,#02,#38,#01,#20,#44,#0e,#cc
	db #02,#44,#0e,#cc,#02,#ff,#38,#01
	db #20,#44,#0e,#cc,#02,#44,#0e,#cc
	db #02,#3d,#01,#20,#49,#0e,#cc,#02
	db #49,#0e,#cc,#02,#40,#01,#20,#4c
	db #0e,#cc,#02,#4c,#0e,#cc,#02,#3b
	db #01,#20,#47,#0e,#cc,#02,#47,#0e
	db #cc,#02,#3b,#01,#20,#47,#0e,#cc
	db #02,#47,#0e,#cc,#02,#3d,#01,#20
	db #49,#0e,#cc,#02,#49,#0e,#cc,#02
	db #38,#01,#20,#44,#0e,#cc,#02,#44
	db #0e,#cc,#02,#3d,#01,#20,#49,#0e
	db #cc,#02,#49,#0e,#cc,#02,#ff,#34
	db #01,#20,#40,#0e,#cc,#02,#40,#0e
	db #cc,#02,#34,#01,#20,#40,#0e,#cc
	db #02,#40,#0e,#cc,#02,#2f,#01,#20
	db #3b,#0e,#cc,#02,#3b,#0e,#cc,#02
	db #2f,#01,#20,#3b,#0e,#cc,#02,#3b
	db #0e,#cc,#02,#31,#01,#20,#3d,#0e
	db #cc,#02,#3d,#0e,#cc,#02,#31,#01
	db #20,#3d,#0e,#cc,#02,#3d,#0e,#cc
	db #02,#2c,#01,#20,#38,#0e,#cc,#02
	db #38,#0e,#cc,#02,#2c,#01,#20,#38
	db #0e,#cc,#02,#38,#0e,#cc,#02,#ff
	db #34,#01,#20,#40,#0e,#c0,#02,#40
	db #0e,#c0,#02,#34,#01,#20,#40,#0e
	db #c0,#02,#40,#0e,#c0,#02,#2f,#01
	db #20,#3b,#0e,#c0,#02,#3b,#0e,#c0
	db #02,#2f,#01,#20,#3b,#0e,#c0,#02
	db #3b,#0e,#c0,#02,#31,#01,#20,#3d
	db #0e,#c0,#02,#3d,#0e,#c0,#02,#2c
	db #01,#20,#38,#0e,#c0,#02,#38,#0e
	db #c0,#02,#31,#01,#20,#3d,#0e,#c0
	db #02,#3d,#0e,#c0,#02,#31,#01,#60
	db #ff
;
.music_info
	db "Jukebox 4 - Greensleeves (2003)(RoundSoft)(Napo)",0
	db "ST-128 Module",0

	read "music_end.asm"
