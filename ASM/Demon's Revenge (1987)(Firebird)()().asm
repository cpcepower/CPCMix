; Music of Demon's Revenge (1987)(Firebird)()()
; Ripped by Megachur the 02/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DEMONSRE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #9000

	read "music_header.asm"

	ld a,#01        ; test player
	ld (l943b),a
	call l901e
.l9008
	ld a,(l943c)
	and a
	jp z,l9008
.l900f
	defs 3,0	; call #68d2 - modified by Megachur
	jp c,l900f
	call l9048
	jp l9037
	ret
	db #00,#00
.l901e
	di
	ld hl,#0038
	ld de,l9045
	ld bc,#0003
	ldir
	ld a,#c3
	ld (#0038),a
	ld hl,l9052
	ld (#0039),hl
	ei
	ret
.l9037
	di
	ld hl,l9045
	ld de,#0038
	ld bc,#0003
	ldir
	ei
	ret
.l9045
	ret
	nop
	nop
;
.stop_music
.l9048
;
	xor a
	ld (l943c),a
	ld (l943b),a
	jp l92fb
.l9052  ; play_music_interrupt
	di
	push af
	push bc
	push de
	push hl
	push ix
	ld a,(l943b)
	and a
	jp nz,l906f
	ld a,(l943c)
	and a
	jp nz,l90f6
.l9067
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
.l9067_ret
	ret
;
.init_music
.l906f
;
	ld a,#01
	ld (l943c),a
	ld hl,l951b
	ld ix,l945b
	ld b,#03
	xor a
	ld (l9443),a
.l9081
	ld (ix+#05),a
	ld (ix+#0d),a
	ld (ix+#0c),a
	ld (ix+#02),a
	ld (ix+#03),a
	push af
	ld a,(hl)
	ld e,a
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld d,a
	ld (ix+#0b),a
	inc hl
	push hl
	push bc
	ld a,(de)
	inc de
	ld (ix+#06),e
	ld (ix+#07),d
	call l924c
	ld hl,l9443
	inc (hl)
	pop bc
	pop hl
	pop af
	ld de,#0010
	add ix,de
	djnz l9081
	ld (l943d),a
	ld (l9440),a
	ld (l9441),a
	ld (l943e),a
	ld (l9453),a
	ld (l943b),a
	ld hl,l9485
	ld a,(hl)
	inc hl
	or (hl)
	ld (l9445),a
	ld b,#38
	jp nz,l90da
	ld b,#3c
.l90da
	ld a,b
	ld (l9444),a
	ld a,(l9450)
	dec a
	ld (l9451),a
	call l92ef
	ld hl,l9637
	ld (l9459),hl
	dec hl
	ld a,(hl)
	call l917c
	jp l9067_ret	; modified by Megachur l9067
;
.play_music
.l90f6
;
	ld a,(l9451)
	inc a
	ld (l9451),a
	cp #01		; modified by Megachur #06
	jp z,l9134
.l9102
	ld hl,l9450
	cp (hl)
	jp nz,l9067_ret	; modified by Megachur l9067
	xor a
	ld (l9451),a
	ld a,(l9453)
	inc a
	ld (l9453),a
	ld hl,l9452
	cp (hl)
	jp z,l9127
	call l932a
	call l9370
	call l93e9
	jp l9067_ret	; modified by Megachur l9067
.l9127
	call l9413
	call l9141
	xor a
	ld (l9453),a
	jp l9067_ret	; modified by Megachur l9067
.l9134
	ld c,#38
	ld a,#07
	call l930c
	ld a,(l9451)
	jp l9102
.l9141
	ld a,(l9454)
	and a
	ret z
.l9146
	ld hl,(l9457)
	ld a,(hl)
	inc hl
	ld (l9457),hl
	inc a
	ret z
	dec a
	jp nz,l916f
	ld hl,(l9459)
.l9157
	ld a,(hl)
	inc hl
	ld (l9459),hl
	and a
	jp z,l9166
	call l917c
	jp l9146
.l9166
	ld hl,l9636
	ld (l9459),hl
	jp l9157
.l916f
	ld c,a
	ld a,#06
	call l930c
	ld c,#18
	ld a,#07
	jp l930c
.l917c
	ld hl,l9551
.l917f
	dec a
	jp z,l9188
	inc hl
	inc hl
	jp l917f
.l9188
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l9457),de
	ret
.l9190
	ld a,(ix+#05)
	and a
	jp z,l91c2
	dec (ix+#05)
	ret nz
	jp l91c2
.l919e
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld a,(hl)
	inc hl
	ld (ix+#06),l
	ld (ix+#07),h
	and a
	jp nz,l91bf
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	ld (ix+#06),l
	ld (ix+#07),h
	jp l919e
.l91bf
	call l924c
.l91c2
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld a,(hl)
	ld c,a
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	and a
	jp z,l919e
	bit 7,a
	jp nz,l9201
	dec c
	call l926c
	ld a,(l9443)
	cp #01
	jp nz,l91f2
	ld a,(l9447)
	and a
	jp z,l91f2
	ld c,#0d
	jp l91f5
.l91f2
	ld c,(ix+#0e)
.l91f5
	ld a,c
	ld (ix+#01),a
	ld a,(l9443)
	add #08
	jp l930c
.l9201
	cp #c0
	jp z,l9212
	cp #c1
	jp nz,l921a
	xor a
	ld (l9454),a
	jp l91c2
.l9212
	ld a,#01
	ld (l9454),a
	jp l91c2
.l921a
	cp #c2
	jp nz,l922c
	ld a,#01
	ld (l9456),a
	ld a,#03
	ld (l9455),a
	jp l91c2
.l922c
	cp #c3
	jp nz,l9239
	ld a,#01
	ld (l9447),a
	jp l91c2
.l9239
	cp #c4
	jp nz,l9245
	xor a
	ld (l9447),a
	jp l91c2
.l9245
	ld a,c
	and #0f
	ld (ix+#05),a
	ret
.l924c
	ld hl,l9521
	ld b,a
	ld a,(l9443)
	cp #02
	ld a,b
	jp nz,l925c
	ld hl,l9541
.l925c
	dec a
	ld c,a
	ld b,#00
	add hl,bc
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#08),e
	ld (ix+#09),d
	ret
.l926c
	ld a,(l9443)
	cp #01
	jp nz,l92a3
	ld a,(l9447)
	and a
	jp z,l92a3
	ld hl,l9503
	ld b,#00
	sla c
	sla c
	add hl,bc
	ld de,l9448
	ld b,#04
.l928a
	push bc
	ld c,(hl)
	inc hl
	dec c
	call l92e2
	ld a,c
	ld (de),a
	inc de
	ld a,b
	ld (de),a
	inc de
	pop bc
	djnz l928a
	ld bc,(l9448)
	ld a,#01
	jp l92cf
.l92a3
	call l92e2
	ld a,(l9443)
	cp #01
	jp nz,l92bd
	ld a,(l945d)
	cp c
	jp nz,l92bd
	ld a,(l945e)
	cp b
	jp nz,l92bd
	dec bc
.l92bd
	ld a,(l9443)
	and a
	jp nz,l92cf
	ld a,(l9456)
	and a
	jp z,l92cf
	inc bc
	inc bc
	inc bc
	xor a
.l92cf
	ld (ix+#02),c
	ld (ix+#03),b
.l92d5
	add a
	push bc
	push af
	call l930c
	pop af
	pop bc
	inc a
	ld c,b
	jp l930c
.l92e2
	push hl
	ld hl,l948b
	ld b,#00
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	pop hl
	ret
.l92ef
	call l92fb
	ld a,(l9444)
	ld c,a
	ld a,#07
	jp l930c
.l92fb
	ld bc,#000d
.l92fe
	ld a,b
	push bc
	call l930c
	pop bc
	dec b
	jp p,l92fe
	ld a,#07
	ld c,#3f
.l930c
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
.l932a
	ld ix,l945b
	xor a
	ld (l9443),a
	call l934f
	ld ix,l946b
	ld a,#01
	ld (l9443),a
	call l934f
	ld a,(l9445)
	and a
	ret z
	ld ix,l947b
	ld a,#02
	ld (l9443),a
.l934f
	ld a,(ix+#0d)
	inc a
	ld (ix+#0d),a
	cp (ix+#00)
	ret c
	ld (ix+#0d),#00
	ld a,(ix+#01)
	sub #01
	ret c
	ld (ix+#01),a
	ld c,a
	ld a,(l9443)
	add #08
	jp l930c
.l9370
	ld a,(l9455)
	sub #01
	jp nc,l937f
	xor a
	ld (l9456),a
	jp l938f
.l937f
	ld (l9455),a
	ld bc,(l945d)
	dec bc
	ld (l945d),bc
	xor a
	call l92d5
.l938f
	ld a,(l9447)
	and a
	jp z,l93b3
	ld a,(l9446)
	inc a
	and #03
	ld (l9446),a
	ld c,a
	ld b,#00
	ld hl,l9448
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (l946d),bc
	ld a,#01
	call l92d5
.l93b3
	ld a,(l943e)
	inc a
	ld (l943e),a
	ld hl,l943f
	cp (hl)
	ret c
	xor a
	ld (l943e),a
	ld a,(l943d)
	xor #01
	ld (l943d),a
	ld bc,(l945d)
	ld de,(l946d)
	and a
	jp z,l93dc
	dec bc
	dec de
	jp l93de
.l93dc
	inc bc
	inc de
.l93de
	xor a
	push de
	call l92d5
	pop bc
	ld a,#01
	jp l92d5
.l93e9
	ld a,(l9445)
	and a
	ret z
	ld a,(l9441)
	inc a
	ld (l9441),a
	ld hl,l9442
	cp (hl)
	ret c
	xor a
	ld (l9441),a
	ld bc,(l947d)
	ld a,(l9440)
	xor #01
	ld (l9440),a
	ld a,#02
	jp nz,l92d5
	inc bc
	jp l92d5
.l9413
	ld ix,l945b
	xor a
	ld (l9443),a
	call l9190
	ld ix,l946b
	ld a,#01
	ld (l9443),a
	call l9190
	ld a,(l9445)
	and a
	ret z
	ld ix,l947b
	ld a,#02
	ld (l9443),a
	jp l9190
.l9442 equ $ + 7
.l9441 equ $ + 6
.l9440 equ $ + 5
.l943f equ $ + 4
.l943e equ $ + 3
.l943d equ $ + 2
.music_end equ $ + 1
.l943c equ $ + 1
.l943b
	db #00,#00,#00,#00,#04,#00,#00,#01
.l9448 equ $ + 5
.l9447 equ $ + 4
.l9446 equ $ + 3
.l9445 equ $ + 2
.l9444 equ $ + 1
.l9443
	db #00,#38,#00,#00,#00,#00,#00,#00
.l9452 equ $ + 7
.l9451 equ $ + 6
.l9450 equ $ + 5
	db #00,#00,#00,#00,#00,#01,#00,#06      ; modified by Megachur l9451 = #06
.l9459 equ $ + 6
.l9457 equ $ + 4
.l9456 equ $ + 3
.l9455 equ $ + 2
.l9454 equ $ + 1
.l9453
	db #00,#00,#00,#00,#00,#00,#00,#00
.l945e equ $ + 3
.l945d equ $ + 2
.l945b
	db #03,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#00
.l946d equ $ + 2
.l946b
	db #03,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#00
.l947d equ $ + 2
.l947b
	db #03,#00,#00,#00,#01,#00,#00,#00
.l9485 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#0f,#00
.l948b
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
.l9503
	db #19,#1d,#20,#25,#19,#1e,#20,#25
	db #20,#24,#27,#2c,#20,#22,#27,#2c
	db #1b,#1e,#22,#27,#1d,#21,#24,#29
.l9521 equ $ + 6
.l951b
	dw l9561,l956e,l95a9,l967d
	dw l9687,l9690,l96f2,l9703
	dw l9714,l9725,l9736,l97b8
	dw l9809,l9862,l9873,l9884
.l9541 equ $ + 6
	dw l9895,l98a6,l98c7,l98c7
	dw l98d0,l98d9,l98e2,l98eb
.l9551 equ $ + 6
	dw l98f4,l98fd,l9906,l9906
	dw l9917,l9928,l9928,l9928
	dw l9928,l9928,l9928
.l9561
	db #01,#01,#01,#02,#03,#08,#0a,#03
.l956e equ $ + 5
	db #08,#0a,#0f,#0f,#00,#01,#01,#01
	db #01,#04,#04,#05,#05,#06,#06,#07
	db #07,#04,#04,#05,#05,#06,#06,#07
	db #07,#09,#0b,#0b,#0c,#0c,#0d,#0d
	db #0e,#0e,#04,#04,#05,#05,#06,#06
	db #07,#07,#04,#04,#05,#05,#06,#06
	db #07,#07,#09,#0b,#0b,#0c,#0c,#0d
	db #0d,#0e,#0e,#0b,#0b,#0b,#0b,#00
.l95a9
	db #01,#01,#01,#02,#01,#01,#01,#01
	db #03,#03,#03,#03,#04,#04,#04,#04
	db #05,#05,#05,#05,#01,#01,#01,#01
	db #03,#03,#03,#03,#04,#04,#04,#04
	db #05,#05,#05,#05,#06,#06,#06,#06
	db #07,#07,#07,#07,#04,#04,#04,#04
	db #03,#03,#05,#05,#01,#01,#01,#01
	db #07,#07,#07,#07,#03,#03,#04,#04
	db #05,#05,#05,#05,#01,#01,#01,#01
	db #03,#03,#03,#03,#04,#04,#04,#04
	db #05,#05,#05,#05,#01,#01,#01,#01
	db #03,#03,#03,#03,#04,#04,#04,#04
	db #05,#05,#05,#05,#06,#06,#06,#06
	db #07,#07,#07,#07,#04,#04,#04,#04
	db #03,#03,#05,#05,#01,#01,#01,#01
	db #07,#07,#07,#07,#03,#03,#04,#04
	db #05,#05,#05,#05,#01,#01,#01,#01
.l9637 equ $ + 6
.l9636 equ $ + 5
	db #01,#01,#01,#02,#00,#01,#02,#01
	db #01,#01,#01,#01,#01,#23,#00,#02
	db #00,#1c,#7f,#02,#00,#1d,#0d,#7f
	db #02,#00,#0e,#7f,#02,#00,#0f,#7f
	db #04,#00,#12,#7f,#02,#00,#13,#7f
	db #03,#00,#15,#7f,#02,#00,#16,#7f
	db #02,#00,#10,#00,#02,#00,#18,#7f
	db #02,#00,#19,#7f,#02,#00,#1a,#7f
	db #02,#00,#1b,#7f,#7f,#00,#1c,#7f
.l967d equ $ + 4
	db #02,#00,#1d,#00,#c0,#16,#22,#22
.l9687 equ $ + 6
	db #16,#22,#22,#16,#22,#00,#16,#22
.l9690 equ $ + 7
	db #22,#16,#22,#29,#2e,#30,#00,#c2
	db #31,#fc,#33,#31,#30,#2e,#fc,#29
	db #2e,#30,#c2,#31,#f7,#33,#f2,#31
	db #f2,#30,#f1,#2e,#fc,#25,#2a,#2e
	db #33,#f9,#31,#f2,#30,#f2,#2e,#f5
	db #2e,#30,#31,#f2,#30,#f2,#2e,#f1
	db #30,#31,#30,#2e,#30,#f8,#2e,#30
	db #2e,#2d,#fc,#29,#2e,#31,#35,#fd
	db #33,#31,#2e,#fc,#2a,#2e,#31,#35
	db #f9,#33,#f2,#31,#f2,#2a,#fc,#2a
	db #2e,#31,#36,#f9,#35,#f2,#33,#f2
	db #31,#f5,#33,#f1,#30,#f2,#31,#f2
	db #33,#f1,#36,#fd,#35,#33,#35,#ff
.l96f2 equ $ + 1
	db #00,#16,#1d,#22,#1d,#25,#1d,#22
	db #1d,#22,#29,#22,#27,#25,#22,#1d
.l9703 equ $ + 2
	db #22,#00,#12,#19,#1e,#19,#22,#19
	db #1e,#19,#1e,#22,#1e,#20,#1e,#19
.l9714 equ $ + 3
	db #16,#19,#00,#0f,#16,#1b,#16,#1e
	db #16,#1b,#16,#1b,#22,#1b,#20,#1e
.l9725 equ $ + 4
	db #1b,#16,#1b,#00,#11,#18,#1d,#18
	db #21,#18,#1d,#18,#1d,#24,#1d,#22
.l9736 equ $ + 5
	db #21,#22,#24,#1d,#00,#c2,#29,#29
	db #29,#29,#29,#29,#29,#29,#29,#29
	db #29,#29,#29,#29,#29,#29,#25,#25
	db #25,#25,#25,#25,#25,#25,#29,#29
	db #29,#29,#29,#29,#29,#29,#27,#27
	db #27,#27,#27,#27,#27,#27,#27,#27
	db #27,#27,#24,#24,#24,#24,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#2a,#2a
	db #2a,#2a,#2a,#2a,#2a,#2a,#2a,#2a
	db #2a,#2a,#2a,#2a,#2a,#2a,#27,#27
	db #27,#27,#27,#27,#27,#27,#2a,#2a
	db #2a,#2a,#2a,#2a,#2a,#2a,#27,#27
	db #27,#27,#27,#27,#27,#27,#27,#27
	db #27,#27,#27,#27,#27,#27,#29,#29
	db #29,#29,#29,#29,#29,#29,#29,#29
.l97b8 equ $ + 7
	db #29,#29,#29,#29,#29,#29,#00,#c3
	db #01,#f5,#01,#f1,#01,#f5,#01,#f1
	db #02,#f2,#02,#f2,#01,#f1,#01,#f5
	db #02,#f1,#03,#f5,#03,#f1,#03,#f5
	db #03,#f1,#04,#f2,#04,#f2,#03,#f1
	db #03,#f5,#04,#f1,#05,#f5,#05,#f1
	db #05,#f5,#05,#f1,#05,#f2,#05,#f2
	db #05,#f1,#05,#f5,#05,#f1,#05,#f2
	db #05,#f2,#05,#f1,#05,#f2,#05,#f2
	db #05,#f1,#06,#f2,#06,#f2,#06,#f1
	db #06,#f3,#06,#f1,#06,#f1,#c4,#00
.l9809
	db #c2,#35,#35,#35,#35,#fc,#f2,#c2
	db #35,#f3,#35,#f1,#c2,#35,#35,#33
	db #33,#f2,#31,#2e,#c2,#35,#35,#35
	db #35,#fc,#f2,#c2,#35,#f3,#35,#f1
	db #c2,#35,#35,#33,#33,#f2,#31,#2e
	db #c2,#3a,#3a,#3a,#3a,#f8,#38,#38
	db #f2,#c2,#36,#36,#36,#36,#f2,#36
	db #38,#3a,#f2,#3c,#f2,#3a,#f1,#3c
	db #3c,#3c,#3c,#3c,#3c,#3c,#3c,#f8
	db #11,#1d,#1d,#11,#1d,#11,#1d,#1d
	db #11,#1d,#1d,#11,#1d,#29,#2e,#30
.l9862 equ $ + 1
	db #00,#16,#1d,#22,#1d,#25,#22,#29
	db #25,#2e,#29,#25,#22,#25,#22,#1d
.l9873 equ $ + 2
	db #19,#00,#14,#19,#1d,#19,#20,#1d
	db #25,#20,#2a,#29,#25,#20,#1e,#1d
.l9884 equ $ + 3
	db #1e,#20,#00,#12,#19,#1e,#19,#22
	db #1e,#19,#25,#22,#1e,#19,#16,#25
.l9895 equ $ + 4
	db #22,#1e,#19,#00,#11,#15,#18,#1d
	db #21,#24,#29,#24,#22,#21,#1d,#18
.l98a6 equ $ + 5
	db #1d,#24,#22,#21,#00,#2e,#29,#22
	db #2e,#29,#22,#2e,#29,#33,#31,#2e
	db #31,#2e,#29,#25,#22,#2e,#29,#22
	db #2e,#29,#22,#2e,#35,#22,#33,#31
.l98c7 equ $ + 6
	db #2e,#29,#25,#22,#1d,#00,#0a,#0a
.l98d0 equ $ + 7
	db #f1,#0a,#16,#0a,#f1,#0a,#00,#0a
	db #16,#14,#11,#0f,#0d,#0a,#08,#00
.l98d9
	db #06,#06,#f1,#06,#12,#06,#f1,#06
.l98e2 equ $ + 1
	db #00,#03,#03,#f1,#03,#0f,#03,#f1
.l98eb equ $ + 2
	db #03,#00,#05,#05,#f1,#05,#11,#05
.l98f4 equ $ + 3
	db #f1,#05,#00,#01,#01,#f1,#01,#0d
.l98fd equ $ + 4
	db #01,#f1,#01,#00,#08,#08,#f1,#08
.l9906 equ $ + 5
	db #14,#08,#f1,#08,#00,#1f,#ff,#ff
	db #1f,#01,#01,#ff,#1f,#1f,#1f,#ff
.l9917 equ $ + 6
	db #1f,#01,#ff,#01,#1f,#00,#1f,#ff
	db #01,#ff,#01,#1f,#ff,#01,#01,#01
	db #05,#0a,#01,#0a,#0a,#1f,#00
.l9928
	db #00
;
; l943b = theme init
; l943c = enable play!
;
.music_info
	db "Demon's Revenge (1987)(Firebird)()",0
	db "",0

	read "music_end.asm"
