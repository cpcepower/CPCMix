; Music of Charlie Chaplin (1987)(U.S.Gold)()()
; Ripped by Megachur the 01/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CHARLIEC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #9200
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

.l9207 equ $ + 7
.l9205 equ $ + 5
.l9204 equ $ + 4
.l9203 equ $ + 3
.l9202 equ $ + 2
.l9201 equ $ + 1
.l9200
	db #00,#00,#00,#00,#01,#00,#00,#00
.l920f equ $ + 7
.l920d equ $ + 5
.l9209 equ $ + 1
	db #00,#00,#00,#02,#01,#9f,#99,#9f
	db #99,#00,#00,#02,#01,#00,#00,#00
	db #00,#02,#01,#00,#00,#00,#00,#00
.l9223 equ $ + 3
.l9221 equ $ + 1
.l9220
	db #00,#00,#01,#02,#00,#00,#00,#00
.l922f equ $ + 7
.l922e equ $ + 6
.l922d equ $ + 5
.l922c equ $ + 4
.l922b equ $ + 3
.l922a equ $ + 2
.l9229 equ $ + 1
	db #00,#01,#00,#00,#00,#00,#00,#00
.l9235 equ $ + 5
.l9233 equ $ + 3
.l9231 equ $ + 1
.l9230
	db #01,#00,#00,#00,#00,#00,#00,#02
.l923b equ $ + 3
.l9239 equ $ + 1
	db #01,#9f,#99,#9f,#99,#00,#00,#02
	db #01,#00,#00,#00,#00,#02,#01,#00
.l924f equ $ + 7
.l924d equ $ + 5
.l924c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#01,#02
.l9257 equ $ + 7
.l9256 equ $ + 6
.l9255 equ $ + 5
	db #00,#00,#00,#00,#00,#02,#00,#00
.l925f equ $ + 7
.l925d equ $ + 5
.l925c equ $ + 4
.l925b equ $ + 3
.l925a equ $ + 2
.l9259 equ $ + 1
.l9258
	db #00,#00,#00,#00,#01,#00,#00,#00
.l9267 equ $ + 7
.l9265 equ $ + 5
.l9261 equ $ + 1
	db #00,#00,#00,#02,#01,#9f,#99,#9f
	db #99,#00,#00,#02,#01,#00,#00,#00
	db #00,#02,#01,#00,#00,#00,#00,#00
.l927b equ $ + 3
.l9279 equ $ + 1
.l9278
	db #00,#00,#01,#02,#00,#00,#00,#00
.l9287 equ $ + 7
.l9285 equ $ + 5
.l9284 equ $ + 4
.l9283 equ $ + 3
.l9282 equ $ + 2
.l9281 equ $ + 1
	db #00,#02,#00,#00,#00,#00,#00,#01
.l928d equ $ + 5
.l928c equ $ + 4
.l928b equ $ + 3
.l928a equ $ + 2
.l9289 equ $ + 1
.l9288
	db #01,#02,#00,#00,#00,#00
;
.play_music_interrupt
;
	push af
	ld a,(l9287)
	dec a
	ld (l9287),a
	jr z,l929a
	pop af
	ret
;
.play_music
.l929a
;
	push bc
	push de
	push hl
	push ix
	ld a,#01
	ld (l9287),a
	call l9318
	call l9457
	call l94d5
	call l9837
	ld a,(l9203)
	and a
	jp z,l92c9
	ld a,(l9229)
	dec a
	ld (l9229),a
	jr nz,l92c9
	ld a,(l9223)
	ld (l9229),a
	call l967a
.l92c9
	call l9463
	call l94d5
	call l9837
	ld a,(l922f)
	and a
	jp z,l92ec
	ld a,(l9255)
	dec a
	ld (l9255),a
	jp nz,l92ec
	ld a,(l924f)
	ld (l9255),a
	call l967a
.l92ec
	call l946f
	call l94d5
	call l9837
	ld a,(l925b)
	and a
	jp z,l930e
	ld a,(l9281)
	dec a
	ld (l9281),a
	jr nz,l930e
	ld a,(l927b)
	ld (l9281),a
	call l967a
.l930e
	call l991e
	pop ix
	pop hl
	pop de
	pop bc
;pop af modified by Megachur
	ret
.l9318
	ld a,(l9288)
	dec a
	ld (l9288),a
	ret nz
	ld a,(l9289)
	ld (l9288),a
.l9326
	ld a,(l928b)
	and #01
	jp z,l938c
	call l9457
	ld a,(l9203)
	and a
	jp nz,l95d8
	ld a,(l9204)
	dec a
	ld (l9204),a
	jr z,l9344
	jp l938c
.l9344
	ld hl,(l9205)
	ld a,(hl)
	and a
	jp z,l948f
	cp #c8
	jp c,l9359
	cp #f0
	jp c,l9506
	jp l95d8
.l9359
	ld (l9204),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l9205),hl
	and a
	jp nz,l9368
	jr l938c
.l9368
	call l97b1
	ld a,(l97af)
	ld (l9202),a
	ld (l922a),a
	ld (l9220),a
	ld a,(l97b0)
	ld (l9201),a
	ld (l9221),a
	ld (l922b),a
	ld hl,(l920f)
	ld (l920d),hl
	call l947b
.l938c
	ld a,(l928b)
	and #02
	jp z,l93f2
	call l9463
	ld a,(l922f)
	and a
	jp nz,l95e1
	ld a,(l9230)
	dec a
	ld (l9230),a
	jr z,l93aa
	jp l93f2
.l93aa
	ld hl,(l9231)
	ld a,(hl)
	and a
	jp z,l9495
	cp #c8
	jp c,l93bf
	cp #f0
	jp c,l950c
	jp l95e1
.l93bf
	ld (l9230),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l9231),hl
	and a
	jp nz,l93ce
	jr l93f2
.l93ce
	call l97b1
	ld a,(l97af)
	ld (l922e),a
	ld (l9256),a
	ld (l924c),a
	ld a,(l97b0)
	ld (l922d),a
	ld (l9257),a
	ld (l924d),a
	ld hl,(l923b)
	ld (l9239),hl
	call l947b
.l93f2
	ld a,(l928b)
	and #04
	jp z,l9453
	call l946f
	ld a,(l925b)
	and a
	jp nz,l95ea
	ld a,(l925c)
	dec a
	ld (l925c),a
	jr nz,l9453
	ld hl,(l925d)
	ld a,(hl)
	and a
	jp z,l949b
	cp #c8
	jp c,l9422
	cp #f0
	jp c,l9512
	jp l95ea
.l9422
	ld (l925c),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l925d),hl
	and a
	jp z,l9453
	call l97b1
	ld a,(l97af)
	ld (l925a),a
	ld (l9282),a
	ld (l9278),a
	ld a,(l97b0)
	ld (l9259),a
	ld (l9283),a
	ld (l9279),a
	ld hl,(l9267)
	ld (l9265),hl
	call l947b
.l9453
	call l991e
	ret
.l9457
	push af
	ld ix,l9200
	ld a,#01
	ld (l928c),a
	pop af
	ret
.l9463
	push af
	ld ix,l922c
	ld a,#02
	ld (l928c),a
	pop af
	ret
.l946f
	push af
	ld ix,l9258
	ld a,#04
	ld (l928c),a
	pop af
	ret
.l947b
	xor a
	ld (ix+#1f),a
	ld (ix+#17),a
	ld a,(ix+#15)
	ld (ix+#16),a
	ld a,(ix+#1b)
	ld (ix+#1c),a
	ret
.l948f
	call l94a1
	jp l9326
.l9495
	call l94a1
	jp l938c
.l949b
	call l94a1
	jp l93f2
.l94a1
	ld l,(ix+#07)
	ld h,(ix+#08)
	ld a,(hl)
	and a
	jr nz,l94b2
	inc hl
	ld a,(hl)
	and a
	jr z,l94c7
	dec hl
	ld a,(hl)
.l94b2
	ld (ix+#05),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#07),l
	ld (ix+#08),h
	ld a,#01
	ld (ix+#04),a
	ret
.l94c7
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#07),l
	ld (ix+#08),h
	jr l94a1
.l94d5
	ld a,(l928c)
	ld b,a
	ld a,(l928a)
	and b
	ret z
	ld a,(ix+#03)
	and a
	ret nz
	ld a,(ix+#0c)
	dec a
	ld (ix+#0c),a
	ret nz
	ld a,(ix+#0b)
	ld (ix+#0c),a
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	ld a,(hl)
	cp #ff
	ret z
	ld (ix+#00),a
	inc hl
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l9506
	call l9518
	jp l9326
.l950c
	call l9518
	jp l938c
.l9512
	call l9518
	jp l93f2
.l9518
	ld a,(hl)
	cp #c8
	jp nz,l951e
.l951e
	cp #c9
	jp nz,l952e
	inc hl
	ld a,(hl)
	ld (l9289),a
	ld (l9288),a
	jp l95cb
.l952e
	cp #ca
	jp nz,l9540
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	ld (ix+#10),a
	jp l95cb
.l9540
	cp #cb
	jp nz,l954d
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	ld (ix+#0c),a
.l954d
	cp #dd
	jp nz,l955c
	inc hl
	ld a,(hl)
	ld (ix+#23),a
	ld a,#01
	ld (ix+#29),a
.l955c
	cp #d0
	jp nz,l957d
	inc hl
	ld a,(hl)
	ld (ix+#14),a
	ld (ix+#13),a
	inc hl
	ld a,(hl)
	ld (ix+#15),a
	ld (ix+#16),a
	xor a
	ld (ix+#17),a
	ld a,#01
	ld (ix+#12),a
	jp l95cb
.l957d
	cp #d5
	jp nz,l9589
	xor a
	ld (ix+#12),a
	jp l95cb
.l9589
	cp #d1
	jp nz,l95b4
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	ld (ix+#1a),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	ld (ix+#1c),a
	inc hl
	ld a,(hl)
	ld (ix+#1d),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	xor a
	ld (ix+#1f),a
	ld a,#01
	ld (ix+#18),a
	jp l95cb
.l95b4
	cp #d6
	jp nz,l95bf
	xor a
	ld (ix+#18),a
	jr l95cb
.l95bf
	cp #de
	jp nz,l95cb
	xor a
	ld (l928a),a
	ld (l928b),a
.l95cb
	inc hl
	ld (ix+#05),l
	ld (ix+#06),h
	ld a,#01
	ld (ix+#04),a
	ret
.l95d8
	call l9457
	call l95f3
	jp l938c
.l95e1
	call l9463
	call l95f3
	jp l93f2
.l95ea
	call l946f
	call l95f3
	jp l9453
.l95f3
	ld (l928d),a
	ld a,(l928a)
	ld b,a
	ld a,(l928c)
	and b
	ret z
	ld a,(ix+#03)
	and a
	jp nz,l966f
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#05),l
	ld (ix+#06),h
	ld a,(l928d)
	ld (ix+#03),a
	sub #f0
	sla a
	ld hl,l96c3
	ld b,#00
	ld c,a
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,b
	ld l,c
	ld a,(l9285)
	ld (ix+#27),a
	ld a,(ix+#00)
	ld (ix+#26),a
	ld a,(hl)
	and a
	jp z,l9656
	ld a,(l928c)
	sla a
	sla a
	sla a
	ld b,a
	ld a,#ff
	xor b
	ld b,a
	ld a,(l9285)
	and b
	ld (l9285),a
	ld a,#01
	ld (ix+#28),a
	jp l9668
.l9656
	ld b,#ff
	ld a,(l928c)
	xor b
	ld b,a
	ld a,(l9285)
	and b
	ld (l9285),a
	xor a
	ld (ix+#28),a
.l9668
	inc hl
	ld (ix+#24),l
	ld (ix+#25),h
.l966f
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jp z,l96a7
	ret
.l967a
	ld l,(ix+#24)
	ld h,(ix+#25)
	ld a,(hl)
	cp #ff
	jr z,l96a0
	ld (ix+#00),a
	inc hl
	ld a,(ix+#28)
	and a
	jp z,l9696
	ld a,(hl)
	ld (l9284),a
	jr l969f
.l9696
	ld a,(hl)
	ld (ix+#02),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
.l969f
	inc hl
.l96a0
	ld (ix+#24),l
	ld (ix+#25),h
	ret
.l96a7
	ld a,(ix+#27)
	ld (l9285),a
	ld a,(ix+#26)
	ld (ix+#00),a
	ld a,#01
	ld (ix+#04),a
	xor a
	ld (ix+#03),a
	ld (ix+#01),a
	ld (ix+#02),a
	ret
.l96c3
	dw l96d7,l96ee,l9705,l971c
	dw l974a,l96ee,l9705,l9733
	dw l974a,l976e
.l96d7
	db #00,#0e,#00,#50,#0d,#00,#54,#0c
	db #00,#58,#08,#00,#5c,#06,#00,#60
.l96ee equ $ + 7
	db #04,#00,#64,#01,#00,#68,#ff,#00
	db #0e,#00,#64,#0d,#00,#68,#0c,#00
	db #6c,#08,#00,#70,#06,#00,#74,#04
.l9705 equ $ + 6
	db #00,#78,#01,#00,#7c,#ff,#00,#0e
	db #00,#78,#0d,#00,#7c,#0c,#00,#80
	db #08,#00,#84,#06,#00,#88,#04,#00
.l971c equ $ + 5
	db #8c,#01,#00,#90,#ff,#00,#0e,#00
	db #a0,#0d,#00,#a8,#0c,#00,#b0,#08
	db #00,#b8,#06,#00,#c0,#04,#00,#c8
.l9733 equ $ + 4
	db #01,#00,#d0,#ff,#01,#0f,#1e,#0f
	db #1e,#0e,#1e,#0d,#14,#0a,#1e,#08
	db #14,#06,#1e,#04,#14,#00,#1e,#ff
.l974a equ $ + 3
	db #00,#00,#ff,#01,#0f,#1e,#0e,#05
	db #0d,#1e,#0c,#05,#0b,#1e,#0a,#05
	db #09,#1e,#08,#05,#07,#1e,#06,#05
	db #05,#1e,#04,#05,#03,#1e,#02,#05
.l976e equ $ + 7
	db #01,#1e,#01,#05,#00,#00,#ff,#00
	db #0a,#00,#3e,#0a,#00,#1e,#0a,#00
	db #d2,#0a,#00,#93,#0a,#00,#e2,#0a
	db #00,#97,#0a,#00,#d4,#0a,#00,#ea
	db #0a,#00,#3f,#0a,#00,#f3,#0a,#00
	db #c6,#0a,#00,#74,#0a,#00,#d2,#0a
	db #00,#ce,#0a,#00,#f2,#0a,#00,#75
	db #0a,#00,#67,#0a,#00,#c5,#0a,#00
	db #e8,#0a,#00,#ab,#00,#00,#00,#ff
.l97b0 equ $ + 1
.l97af
	db #00,#00
.l97b1
	ld d,a
	and #0f
	sla a
	ld b,#00
	ld c,a
	push ix
	ld ix,l9807
	add ix,bc
	ld a,(ix+#00)
	ld (l97af),a
	ld a,(ix+#01)
	ld (l97b0),a
	ld a,d
	and #70
	srl a
	srl a
	srl a
	srl a
	cp #05
	jr z,l9804
	jr c,l97f4
	or a
	ld hl,l97af
	srl (hl)
	inc hl
	rr (hl)
	cp #06
	jr z,l9804
	or a
	dec hl
	srl (hl)
	inc hl
	rr (hl)
	jr l9804
.l97f4
	ld b,a
	ld a,#05
	sub b
	ld b,a
.l97f9
	ld hl,l97b0
	sla (hl)
	dec hl
	rl (hl)
	inc hl
	djnz l97f9
.l9804
	pop ix
	ret
.l9807
	db #00,#00,#00,#77,#00,#71,#00,#6a
	db #00,#64,#00,#5f,#00,#59,#00,#54
	db #00,#50,#00,#4b,#00,#47,#00,#43
	db #00,#3f,#04,#03,#02,#01,#00,#3a
	db #8a,#92,#47
	ld a,(l928c)
	and b
	ret z
	xor a
	ld (ix+#01),a
	ld (ix+#02),a
	ret
.l9837
	ld a,(l928a)
	ld b,a
	ld a,(l928c)
	and b
	ret z
	ld a,(ix+#03)
	and a
	ret nz
	ld a,(ix+#12)
	and a
	jp z,l9895
	ld a,(ix+#16)
	and a
	jp z,l985a
	dec a
	ld (ix+#16),a
	jp l9895
.l985a
	ld a,(ix+#14)
	dec a
	ld (ix+#14),a
	jp nz,l9895
	call l986a
	jp l9895
.l986a
	ld a,(ix+#13)
	ld (ix+#14),a
	ld a,(ix+#17)
	and a
	jr nz,l9884
	srl (ix+#02)
	rr (ix+#01)
	ld a,#01
	ld (ix+#17),a
	ret
.l9884
	ld a,(ix+#2a)
	ld (ix+#02),a
	ld a,(ix+#2b)
	ld (ix+#01),a
	xor a
	ld (ix+#17),a
	ret
.l9895
	ld a,(ix+#18)
	and a
	ret z
	ld a,(ix+#1c)
	and a
	jp z,l98a6
	dec a
	ld (ix+#1c),a
	ret
.l98a6
	ld a,(ix+#1a)
	dec a
	ld (ix+#1a),a
	ret nz
	call l98b2
	ret
.l98b2
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1f)
	and a
	jp nz,l98c8
	call l9911
	ld a,#01
	ld (ix+#1f),a
	ret
.l98c8
	cp #01
	jp nz,l98e6
	xor a
	ld a,(ix+#21)
	adc (ix+#1e)
	ld (ix+#01),a
	ld a,(ix+#20)
	adc (ix+#1d)
	ld (ix+#02),a
	ld a,#02
	ld (ix+#1f),a
	ret
.l98e6
	cp #02
	jp nz,l98f4
	call l9911
	ld a,#03
	ld (ix+#1f),a
	ret
.l98f4
	cp #03
	jr z,l98f9
	ret
.l98f9
	scf
	ld a,(ix+#21)
	sbc (ix+#1e)
	ld (ix+#01),a
	ld a,(ix+#20)
	sbc (ix+#1d)
	ld (ix+#02),a
	xor a
	ld (ix+#1f),a
	ret
.l9911
	ld a,(ix+#21)
	ld (ix+#01),a
	ld a,(ix+#20)
	ld (ix+#02),a
	ret
.l991e
	ld a,(l928a)
	and #01
	jp z,l9933
	ld d,#00
	ld e,#08
	jp z,l9933
	ld hl,l9200
	call l9968
.l9933
	ld a,(l928a)
	and #02
	jp z,l9945
	ld d,#02
	ld e,#09
	ld hl,l922c
	call l9968
.l9945
	ld a,(l928a)
	and #04
	jp z,l9957
	ld d,#04
	ld e,#0a
	ld hl,l9258
	call l9968
.l9957
	ld a,(l9285)
	ld c,#07
	call l997d
	ld a,(l9284)
	ld c,#06
	call l997d
	ret
.l9968
	ld a,(hl)
	inc hl
	ld c,e
	inc e
	call l997d
	ld a,(hl)
	inc hl
	ld c,d
	inc d
	call l997d
	ld a,(hl)
	ld c,d
	inc d
	call l997d
	ret
.l997d
	push af
	push bc
	di
	ld b,a
	ld a,c
	ld c,b
	ld b,#f4
	out (c),a
	ld a,#c0
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	ld b,#f4
	out (c),c
	ld bc,#f680
	out (c),c
	out (c),a
	pop bc
	pop af
	ei
	ret
	db #0e,#0e,#0d,#0c,#0c,#0c,#0b,#0b
	db #0a,#0a,#0a,#09,#09,#08,#08,#08
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#04,#03,#03,#03,#03,#02,#02
	db #02,#02,#02,#01,#01,#01,#00,#00
	db #ff,#0b,#09,#09,#0a,#09,#09,#08
	db #08,#08,#07,#07,#07,#07,#07,#06
	db #06,#06,#05,#05,#05,#05,#04,#04
	db #03,#03,#03,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#01,#01,#01,#00
	db #00,#ff,#0d,#0c,#0c,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#08,#09,#09
	db #09,#09,#09,#09,#09,#0a,#09,#09
	db #09,#09,#08,#08,#08,#08,#07,#07
	db #07,#07,#06,#06,#06,#06,#05,#05
	db #05,#04,#04,#04,#03,#03,#03,#02
	db #02,#02,#02,#01,#01,#01,#01,#00
	db #ff,#0f,#0f,#0f,#0e,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0a,#09,#08,#08
	db #08,#07,#07,#07,#06,#06,#06,#05
	db #05,#05,#04,#04,#04,#03,#03,#03
	db #02,#02,#02,#01,#01,#01,#00,#ff
;
.init_music0
;
	ld hl,l9ac9
	ld (l9205),hl
	ld hl,l9ab3
	ld (l9207),hl
	ld hl,l9ab1
	ld (l9209),hl
	ld hl,l9b36
	ld (l9231),hl
	ld hl,l9abb
	ld (l9233),hl
	ld hl,l9ab9
	ld (l9235),hl
	ld hl,l9ba0
	ld (l925d),hl
	ld hl,l9ac3
	ld (l925f),hl
	ld hl,l9ac1
	ld (l9261),hl
.l9a85
	ld a,#07
	ld (l928a),a
	ld (l928b),a
	ld a,#38
	ld (l9285),a
	ld a,#01
	ld (l9204),a
	ld (l9230),a
	ld (l925c),a
	ld a,#02
	ld (l9288),a
	ld (l9289),a
	ld a,#00
	ld (l9203),a
	ld (l922f),a
	ld (l925b),a
	ret
.l9ab3 equ $ + 2
.l9ab1
	dw l9ac9,l9ad9,#0000,#0000
.l9abb equ $ + 2
.l9ab9
	dw l9b36,l9b44,#0000,#0000
.l9ac3 equ $ + 2
.l9ac1
	dw l9ba0,l9bab,#0000,#0000
.l9ac9
	db #c9,#02,#d5,#d6,#cb,#05,#ca,#9f
	db #99,#dd,#01,#d0,#03,#01,#00,#00
.l9ad9
	db #18,#55,#0c,#48,#0c,#55,#0c,#53
	db #0c,#51,#0c,#4c,#0c,#51,#18,#56
	db #0c,#4a,#0c,#56,#0c,#55,#0c,#58
	db #0c,#56,#0c,#53,#18,#55,#0c,#48
	db #0c,#55,#0c,#53,#0c,#51,#0c,#4c
	db #0c,#51,#24,#53,#0c,#4a,#18,#51
	db #18,#4c,#18,#55,#0c,#48,#0c,#55
	db #0c,#53,#0c,#51,#0c,#4c,#0c,#51
	db #48,#5a,#0c,#5c,#0c,#61,#0c,#61
	db #0c,#58,#0c,#58,#0c,#55,#0c,#58
	db #0c,#56,#0c,#53,#0c,#4c,#60,#51
.l9b36 equ $ + 5
	db #60,#00,#de,#00,#00,#d5,#d6,#cb
	db #05,#dd,#01,#ca,#c8,#99,#d0,#03
.l9b44 equ $ + 3
	db #01,#00,#00,#18,#51,#0c,#45,#0c
	db #51,#0c,#46,#0c,#45,#0c,#43,#0c
	db #45,#18,#4a,#0c,#46,#0c,#4a,#0c
	db #4c,#0c,#53,#0c,#4c,#0c,#4c,#18
	db #51,#0c,#45,#0c,#51,#18,#4a,#0c
	db #45,#0c,#4a,#24,#4a,#0c,#46,#18
	db #4a,#18,#48,#18,#51,#0c,#45,#0c
	db #51,#0c,#48,#0c,#45,#0c,#45,#0c
	db #45,#48,#51,#0c,#53,#0c,#54,#0c
	db #55,#0c,#55,#0c,#51,#0c,#48,#0c
	db #4c,#0c,#4c,#0c,#48,#0c,#43,#60
.l9ba0 equ $ + 7
	db #45,#60,#00,#de,#00,#00,#00,#d5
	db #d6,#cb,#05,#dd,#01,#ca,#28,#9a
.l9bab equ $ + 2
	db #00,#00,#0c,#21,#0c,#28,#0c,#31
	db #0c,#28,#0c,#21,#0c,#28,#0c,#31
	db #0c,#28,#0c,#23,#0c,#2a,#0c,#33
	db #0c,#2a,#0c,#18,#0c,#23,#0c,#28
	db #0c,#23,#0c,#21,#0c,#28,#0c,#31
	db #0c,#28,#0c,#1a,#0c,#25,#0c,#2a
	db #0c,#25,#0c,#23,#0c,#2a,#0c,#33
	db #0c,#2a,#0c,#18,#0c,#23,#0c,#28
	db #0c,#23,#0c,#21,#0c,#28,#0c,#31
	db #0c,#28,#0c,#25,#0c,#28,#0c,#31
	db #0c,#28,#0c,#16,#0c,#21,#0c,#26
	db #0c,#21,#0c,#17,#0c,#21,#0c,#24
	db #0c,#21,#0c,#18,#0c,#21,#0c,#25
	db #0c,#21,#0c,#18,#0c,#23,#0c,#26
	db #0c,#23,#60,#21,#60,#00,#de,#00
	db #00
;
.init_music1
;
	ld hl,l9cc7
	ld (l9205),hl
	ld hl,l9c5d
	ld (l9207),hl
	ld hl,l9c5b
	ld (l9209),hl
	ld hl,l9dda
	ld (l9231),hl
	ld hl,l9c81
	ld (l9233),hl
	ld hl,l9c7f
	ld (l9235),hl
	ld hl,l9efd
	ld (l925d),hl
	ld hl,l9ca5
	ld (l925f),hl
	ld hl,l9ca3
	ld (l9261),hl
	jp l9a85
.l9c5d equ $ + 2
.l9c5b
	dw l9cc7,l9cd8,l9cde,l9cde
	dw l9d54,l9cde,l9cde,l9d54
	dw l9cde,l9cde,l9d54,l9cde
	dw l9cde,l9d54,l9cde,l9cde
.l9c81 equ $ + 6
.l9c7f equ $ + 4
	dw #0000,#0000,l9dda,l9de7
	dw l9ded,l9ded,l9e77,l9ded
	dw l9ded,l9e77,l9ded,l9ded
	dw l9e77,l9ded,l9ded,l9e77
	dw l9ded,l9ded,#0000,#0000
.l9ca5 equ $ + 2
.l9ca3
	dw l9efd,l9f0a,l9f10,l9f10
	dw l9f66,l9f10,l9f10,l9f66
	dw l9f10,l9f10,l9f66,l9f10
	dw l9f10,l9f66,l9f10,l9f10
	dw #0000,#0000
.l9cc7
	db #c9,#01,#d1,#02,#0a,#00,#01,#d5
	db #cb,#02,#ca,#9f,#99,#dd,#01,#00
.l9cde equ $ + 7
.l9cd8 equ $ + 1
	db #00,#08,#61,#08,#5c,#00,#00,#08
	db #61,#08,#58,#08,#55,#08,#53,#08
	db #51,#08,#53,#08,#55,#08,#51,#08
	db #5a,#08,#51,#08,#58,#08,#56,#10
	db #55,#08,#61,#08,#5c,#08,#61,#08
	db #58,#08,#55,#08,#53,#08,#51,#08
	db #53,#08,#55,#08,#51,#08,#5a,#08
	db #59,#08,#5a,#08,#61,#10,#5c,#10
	db #58,#08,#66,#08,#65,#08,#63,#08
	db #61,#08,#5c,#08,#61,#08,#63,#08
	db #58,#08,#65,#08,#63,#08,#61,#08
	db #5c,#08,#5a,#08,#5c,#08,#5a,#08
	db #55,#08,#63,#08,#61,#08,#5c,#08
	db #5a,#08,#58,#08,#56,#08,#55,#08
	db #53,#10,#51,#10,#58,#10,#51,#08
.l9d54 equ $ + 5
	db #61,#08,#5c,#00,#00,#cb,#02,#ca
	db #c8,#99,#08,#5a,#08,#5a,#08,#5a
	db #08,#5a,#08,#5a,#08,#5a,#08,#5a
	db #08,#5a,#08,#59,#08,#59,#08,#59
	db #08,#59,#08,#59,#08,#59,#08,#59
	db #08,#59,#08,#5a,#08,#5a,#08,#5a
	db #08,#5a,#08,#5a,#08,#5a,#08,#5a
	db #08,#5a,#cb,#02,#10,#61,#10,#5c
	db #10,#5a,#10,#59,#cb,#01,#08,#5a
	db #08,#5a,#08,#5a,#08,#5a,#08,#5a
	db #08,#5a,#08,#5a,#08,#5a,#08,#59
	db #08,#59,#08,#59,#08,#59,#08,#59
	db #08,#59,#08,#59,#08,#59,#08,#5a
	db #08,#5a,#08,#5a,#08,#5a,#08,#5a
	db #08,#5a,#08,#5a,#08,#5a,#08,#5c
	db #08,#5c,#08,#5c,#08,#5c,#10,#5c
	db #cb,#02,#08,#61,#08,#5c,#ca,#9f
.l9dda equ $ + 3
	db #99,#00,#00,#c9,#01,#d5,#d6,#cb
	db #02,#ca,#f1,#99,#dd,#01,#00,#00
.l9ded equ $ + 6
.l9de7
	db #08,#00,#08,#00,#00,#00,#08,#41
	db #08,#48,#08,#45,#08,#48,#08,#41
	db #08,#48,#08,#45,#08,#48,#04,#3a
	db #04,#41,#04,#46,#04,#4a,#04,#3c
	db #04,#43,#04,#48,#04,#4c,#08,#41
	db #08,#48,#08,#45,#08,#48,#08,#41
	db #08,#48,#08,#45,#08,#48,#08,#41
	db #08,#48,#08,#45,#08,#48,#04,#41
	db #04,#46,#04,#4a,#04,#51,#04,#41
	db #04,#47,#04,#4a,#04,#52,#08,#3c
	db #08,#48,#08,#43,#08,#48,#08,#3a
	db #08,#46,#08,#41,#08,#46,#08,#3c
	db #08,#48,#08,#43,#08,#48,#08,#41
	db #08,#48,#08,#45,#08,#48,#08,#3a
	db #08,#45,#08,#41,#08,#45,#08,#3a
	db #08,#43,#08,#46,#08,#43,#08,#3c
	db #08,#43,#08,#48,#08,#4c,#10,#45
	db #10,#55,#10,#45,#10,#00,#00,#00
.l9e77
	db #cb,#04,#ca,#c8,#99,#08,#51,#08
	db #51,#08,#51,#08,#51,#08,#51,#08
	db #51,#08,#51,#08,#51,#08,#55,#08
	db #55,#08,#55,#08,#55,#08,#55,#08
	db #55,#08,#55,#08,#55,#08,#51,#08
	db #51,#08,#51,#08,#51,#08,#51,#08
	db #51,#08,#51,#08,#51,#cb,#02,#10
	db #55,#10,#53,#10,#51,#10,#4c,#cb
	db #01,#08,#51,#08,#51,#08,#51,#08
	db #51,#08,#51,#08,#51,#08,#51,#08
	db #51,#08,#55,#08,#55,#08,#55,#08
	db #55,#08,#55,#08,#55,#08,#55,#08
	db #55,#08,#51,#08,#51,#08,#51,#08
	db #51,#08,#51,#08,#51,#08,#51,#08
	db #51,#08,#4c,#08,#4c,#08,#4c,#08
	db #4c,#cb,#02,#10,#4c,#10,#00,#cb
.l9efd equ $ + 6
	db #02,#ca,#f1,#99,#00,#00,#c9,#01
	db #d6,#d5,#cb,#02,#ca,#28,#9a,#dd
.l9f0a equ $ + 3
	db #01,#00,#00,#08,#00,#08,#00,#00
	db #00
.l9f10
	db #08,#21,#08,#25,#10,#28,#08,#25
	db #08,#28,#10,#31,#10,#26,#10,#28
	db #20,#21,#08,#21,#08,#25,#10,#28
	db #08,#25,#08,#28,#10,#31,#10,#26
	db #10,#27,#10,#28,#10,#18,#08,#16
	db #08,#21,#10,#26,#08,#18,#08,#23
	db #10,#28,#08,#21,#08,#28,#10,#31
	db #08,#1a,#08,#25,#10,#2a,#08,#23
	db #08,#2a,#10,#33,#08,#18,#08,#23
	db #08,#28,#08,#2c,#10,#21,#10,#18
.l9f66 equ $ + 6
	db #10,#21,#10,#00,#00,#00,#cb,#04
	db #ca,#9f,#99,#18,#1a,#08,#1c,#10
	db #21,#10,#25,#18,#29,#08,#2a,#10
	db #2c,#10,#29,#40,#2a,#20,#2a,#20
	db #2a,#18,#1a,#08,#1c,#10,#21,#10
	db #25,#18,#29,#08,#2a,#10,#2c,#10
	db #29,#40,#2a,#30,#18,#10,#00,#cb
	db #02,#ca,#28,#9a
;
.init_music	; added by Megachur
;
	or a
	jp z,init_music0
	jp init_music1
;
.music_info
	db "Charlie Chaplin (1987)(U.S.Gold)()",0
	db "",0

	read "music_end.asm"
