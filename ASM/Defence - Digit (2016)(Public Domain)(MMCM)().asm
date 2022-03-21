; Music of Defence - Digit (2016)(Public Domain)(MMCM)()
; Ripped by Megachur the 17/05/2019
; $VER 1.5

; IFDEF FILENAME_WRITE
	; write "DEFENCE.BIN"
; ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8696

	read "music_header.asm"

	db #18,#3c,#7e,#ff,#18,#18,#18,#18
	db #18,#18,#18,#18,#ff,#7e,#3c,#18
	db #10,#30,#70,#ff,#ff,#70,#30,#10
	db #08,#0c,#0e,#ff,#ff,#0e,#0c,#08
	db #00,#00,#18,#3c,#7e,#ff,#ff,#00
	db #00,#00,#ff,#ff,#7e,#3c,#18,#00
	db #80,#e0,#f8,#fe,#f8,#e0,#80,#00
	db #02,#0e,#3e,#fe,#3e,#0e,#02,#00
	db #38,#38,#92,#7c,#10,#28,#28,#28
	db #38,#38,#10,#fe,#10,#28,#44,#82
	db #38,#38,#12,#7c,#90,#28,#24,#22
	db #38,#38,#90,#7c,#12,#28,#48,#88
	db #00,#3c,#18,#3c,#3c,#3c,#18,#00
	db #3c,#ff,#ff,#18,#0c,#18,#30,#18
	db #18,#3c,#7e,#18,#18,#7e,#3c,#18
	db #00,#24,#66,#ff,#66,#24,#00,#00
.l8716
	db #20,#50,#52,#45,#48,#50,#41,#49
	db #33,#52,#20,#54,#55,#58,#33,#20
	db #44,#49,#59,#20,#4b,#4f,#4f,#4d
	db #41,#45,#4e,#44,#45,#52,#20,#20
	db #0d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.init_digit
;
	call l8a32
	di
	ld hl,l8716
	ld (l8837),hl
.l8820
	ld hl,(l8837)
	ld (l883c),hl
	ld a,(hl)
	cp #0d
	jr z,l8830
	call l8a42		; modified by Megachur
	jr l8820
.l8830
	ei
	ret
.l8839 equ $ + 7
.l8837 equ $ + 5
.l8836 equ $ + 4
.l8834 equ $ + 2
.l8833 equ $ + 1
.l8832
	db #11,#12,#63,#98,#04,#36,#87,#65
.l8840 equ $ + 6
.l883e equ $ + 4
.l883c equ $ + 2
.l883b equ $ + 1
.l883a
	db #25,#63,#1f,#87,#2e,#87,#32,#87
.l8843 equ $ + 1
.l8842
	db #52,#09
.l8844
	ld b,#f4
	out (c),a
	ld b,#f6
	ld a,#80
	out (c),a
	xor a
	out (c),a
	ret
.l8852
	ld b,#f6
	ld a,#c0
	out (c),a
	ld b,#f4
	out (c),e
	ld b,#f6
	xor a
	out (c),a
	ret
.l8862
	ld hl,l9863
	call l88f9
	ret
.l8869
	ld a,#03
	call l8862
	ret
.l886f
	call l8ee4
	ld a,(hl)
	cp #31
	ret c
	cp #39
	ret nc
	sub #30
	push hl
	ld h,a
	ld a,(l8832)
	add h
	sub #04
	ld (l8832),a
	pop hl
	inc hl
	ld (l8837),hl
	ret
.l888c
	ld (l8836),a
	ld (l8834),hl
	ld e,#01
	call l8852
	xor a
	call l8844
	ld e,#00
	call l8852
	xor a
	call l8844
	ld e,#07
	call l8852
	ld a,#3e
	call l8844
	ld a,(l8843)
	ld e,a
	call l8852
	ld a,(l8836)
	add a
	add a
	add a
	ld d,a
.l88bc
	call l8a17
	and #3f
	ld c,a
	ld hl,(l8834)
	xor a
	ld b,#00
	adc hl,bc
	ld e,#08
.l88cc
	ld a,(hl)
	nop
	nop
	nop
	and #0f
	call l8844
	ld a,(l8832)
	ld b,a
.l88d9
	djnz l88d9
	ld a,(hl)
	sra a
	sra a
	sra a
	sra a
	and #0f
	call l8844
	ld a,(l8832)
	ld b,a
.l88ed
	djnz l88ed
	inc hl
	dec e
	jp nz,l88cc
	dec d
	jp nz,l88bc
	ret
.l88f9
	ld (l8836),a
	ld (l8834),hl
	ld e,#01
	call l8852
	xor a
	call l8844
	ld e,#00
	call l8852
	xor a
	call l8844
	ld e,#07
	call l8852
	ld a,#3e
	call l8844
	ld a,(l8843)
	ld e,a
	call l8852
	ld a,(l8836)
	ld d,a
.l8926
	ld hl,(l8834)
	ld e,#3f
.l892b
	ld a,(hl)
	and #0f
	call l8844
	ld a,(l8832)
	ld b,a
.l8935
	djnz l8935
	ld a,(hl)
	sra a
	sra a
	sra a
	sra a
	and #0f
	call l8844
	ld a,(l8832)
	ld b,a
.l8949
	djnz l8949
	nop
	nop
	nop
	inc hl
	dec e
	jp nz,l892b
	dec d
	jp nz,l8926
	ret
.l8958
	db #74,#ff,#ff,#04,#30,#fb,#cf,#88
	db #88,#78,#45,#95,#cd,#6a,#44,#85
	db #aa,#68,#65,#76,#88,#88,#88,#68
	db #55,#86,#a9,#8a,#56,#65,#87,#a8
	db #cb,#8a,#56,#85,#ba,#8a,#78,#87
	db #88,#88,#66,#55,#76,#88,#56,#54
	db #65,#65,#56,#55,#44,#54,#66,#56
.l8997 equ $ + 7
	db #55,#65,#56,#54,#86,#46,#44,#99
	db #58,#65,#88,#48,#a3,#ab,#76,#c9
	db #4a,#21,#84,#69,#44,#c7,#4a,#52
	db #a9,#48,#72,#ed,#8b,#78,#55,#24
	db #32,#f4,#cf,#10,#fb,#4f,#54,#98
	db #68,#74,#88,#56,#85,#89,#56,#87
	db #78,#76,#98,#99,#99,#89,#68,#76
	db #67,#65,#98,#78,#44,#54,#b8,#ab
.l89d7 equ $ + 7
	db #69,#55,#76,#88,#56,#65,#98,#96
	db #78,#78,#b9,#b8,#78,#89,#76,#65
	db #78,#4b,#87,#75,#8b,#b5,#76,#a8
	db #a9,#44,#5d,#49,#8b,#83,#95,#78
	db #1a,#6c,#7a,#c2,#b4,#55,#7b,#85
	db #a8,#78,#98,#85,#87,#c4,#85,#85
	db #3b,#b8,#47,#78,#a4,#94,#68,#87
	db #66,#7a,#7a,#89,#67,#c8,#a6,#83
	db #7b,#c5,#c1,#b4,#98,#87,#b3
.l8a17
	ld a,(l8839)
	xor #65
	adc #25
	ld (l8839),a
	ld hl,l8839
	rl (hl)
	inc hl
	rl (hl)
	inc hl
	rl (hl)
	ld a,(l8839)
	and #0f
	ret
.l8a32
	ld a,#65
	ld (l8839),a
	ld a,#25
	ld (l883a),a
	ld a,#63
	ld (l883b),a
	ret
;
.play_digit
.l8a42
;
	ld a,(l8833)
	ld (l8832),a
	ld hl,(l8837)
	ld a,(hl)
	cp #41
	jp z,l8adc
	cp #55
	jp z,l8c2d
	cp #49
	jp z,l8b94
	cp #45
	jp z,l8b5e
	cp #4f
	jp z,l8bd2
	cp #53
	jp z,l8dcb
	cp #2f
	jp z,l8c78
	cp #44
	jp z,l8c94
	cp #43
	jp z,l8d07
	cp #54
	jp z,l8d54
	cp #4e
	jp z,l8df2
	cp #5a
	jp z,l8d9c
	cp #42
	jp z,l8e1b
	cp #46
	jp z,l8ec4
	cp #47
	jp z,l8ed1
	cp #4a
	jp z,l8e9f
	cp #4b
	jp z,l8e6a
	cp #4c
	jp z,l8e3b
	cp #4d
	jp z,l8e48
	cp #50
	jp z,l8e7d
	cp #52
	jp z,l8e2e
	cp #56
	jp z,l8e55
	cp #57
	jp z,l8e92
	cp #59
	jp z,l8eb7
	cp #25
	jr z,l8ad2
	inc hl
	ld (l8837),hl
	ld a,#04
	call l8862
	ret
.l8ad2
	inc hl
	ld (l8837),hl
	ld a,#02
	call l8862
	ret
.l8adc
	inc hl
	ld b,(hl)
	inc hl
	ld (l8837),hl
	call l886f
	ld a,b
	cp #59
	jr z,l8b22
	cp #45
	jr z,l8b4c
	cp #41
	jr z,l8b55
	cp #57
	jr z,l8b3b
	cp #48
	jr z,l8b19
	cp #4f
	jr z,l8b10
	cp #49
	jr z,l8b07
	dec hl
	ld (l8837),hl
	ret
.l8b07
	ld hl,l8f83
	ld a,#09
	call l88f9
	ret
.l8b10
	ld hl,l9043
	ld a,#09
	call l88f9
	ret
.l8b19
	ld hl,l9182
	ld a,#07
	call l88f9
	ret
.l8b22
	ld hl,l9311
	ld a,#09
	call l88f9
	ld hl,l9392
	ld a,#05
	call l88f9
	ld hl,l9353
	ld a,#02
	call l88f9
	ret
.l8b3b
	ld hl,l8958
	ld a,#09
	call l88f9
	ld hl,l92d2
	ld a,#06
	call l88f9
	ret
.l8b4c
	ld hl,l8958
	ld a,#07
	call l88f9
	ret
.l8b55
	ld hl,l8f43
	ld a,#09
	call l88f9
	ret
.l8b5e
	inc hl
	ld b,(hl)
	inc hl
	ld (l8837),hl
	call l886f
	ld a,b
	cp #45
	jr z,l8b82
	cp #48
	jr z,l8b8b
	cp #52
	jr z,l8b79
	dec hl
	ld (l8837),hl
	ret
.l8b79
	ld hl,l9510
	ld a,#09
	call l88f9
	ret
.l8b82
	ld hl,l9083
	ld a,#07
	call l88f9
	ret
.l8b8b
	ld hl,l97e3
	ld a,#07
	call l88f9
	ret
.l8b94
	inc hl
	ld b,(hl)
	inc hl
	ld (l8837),hl
	call l886f
	ld a,b
	cp #59
	jr z,l8bb8
	cp #58
	jr z,l8bc9
	cp #48
	jr z,l8baf
	dec hl
	ld (l8837),hl
	ret
.l8baf
	ld hl,l9392
	ld a,#07
	call l88f9
	ret
.l8bb8
	ld hl,l8f43
	ld a,#09
	call l88f9
	ld hl,l9392
	ld a,#06
	call l88f9
	ret
.l8bc9
	ld hl,l9392
	ld a,#05
	call l88f9
	ret
.l8bd2
	inc hl
	ld b,(hl)
	inc hl
	ld (l8837),hl
	call l886f
	ld a,b
	cp #57
	jr z,l8bfa
	cp #59
	jr z,l8c0b
	cp #48
	jr z,l8c24
	cp #4f
	jr z,l8bf1
	dec hl
	ld (l8837),hl
	ret
.l8bf1
	ld hl,l94d0
	ld a,#08
	call l88f9
	ret
.l8bfa
	ld hl,l9491
	ld a,#09
	call l88f9
	ld hl,l92d2
	ld a,#05
	call l88f9
	ret
.l8c0b
	ld hl,l9043
	ld a,#09
	call l88f9
	ld hl,l9392
	ld a,#04
	call l88f9
	ld hl,l9353
	ld a,#02
	call l88f9
	ret
.l8c24
	ld hl,l9491
	ld a,#08
	call l88f9
	ret
.l8c2d
	inc hl
	ld b,(hl)
	inc hl
	ld (l8837),hl
	call l886f
	ld a,b
	cp #58
	jr z,l8c6f
	cp #57
	jr z,l8c5e
	cp #48
	jr z,l8c55
	cp #55
	jr z,l8c4c
	dec hl
	ld (l8837),hl
	ret
.l8c4c
	ld hl,l9761
	ld a,#08
	call l88f9
	ret
.l8c55
	ld hl,l9823
	ld a,#07
	call l88f9
	ret
.l8c5e
	ld hl,l9003
	ld a,#07
	call l88f9
	ld hl,l92d2
	ld a,#06
	call l88f9
	ret
.l8c6f
	ld hl,l9003
	ld a,#08
	call l88f9
	ret
.l8c78
	inc hl
	ld b,(hl)
	inc hl
	ld (l8837),hl
	call l886f
	ld a,b
	cp #48
	jr z,l8c8b
	dec hl
	ld (l8837),hl
	ret
.l8c8b
	ld hl,l9252
	ld a,#04
	call l888c
	ret
.l8c94
	inc hl
	ld a,(hl)
	cp #48
	jp z,l8cb7
	cp #52
	jp z,l8ccc
	cp #55
	jp z,l8ce9
	ld (l8837),hl
	call l8869
	ld hl,l9410
	ld a,#01
	call l88f9
	call l8869
	ret
.l8cb7
	inc hl
	ld (l8837),hl
	ld hl,l9720
	ld a,#04
	call l88f9
	ld hl,l9252
	ld a,#01
	call l888c
	ret
.l8ccc
	inc hl
	ld (l8837),hl
	ld hl,l96a0
	ld a,#02
	call l88f9
	ld hl,l93d0
	ld a,#03
	call l88f9
	ld hl,l8fc3
	ld a,#07
	call l88f9
	ret
.l8ce9
	inc hl
	inc hl
	ld (l8837),hl
	ld hl,l96a0
	ld a,#05
	call l88f9
	ld hl,l93d0
	ld a,#02
	call l88f9
	ld hl,l9003
	ld a,#08
	call l88f9
	ret
.l8d07
	inc hl
	ld a,(hl)
	inc hl
	ld (l8837),hl
	cp #48
	jr z,l8d3b
	cp #54
	jr z,l8d1a
	dec hl
	ld (l8837),hl
	ret
.l8d1a
	ld hl,l96a0
	ld a,#02
	call l88f9
	ld hl,l8997
	ld a,#01
	call l88f9
	ld hl,l96a0
	ld a,#01
	call l88f9
	ld hl,l89d7
	ld a,#01
	call l88f9
	ret
.l8d3b
	ld hl,l96a0
	ld a,#06
	call l88f9
	ld hl,l9550
	ld a,#03
	call l88f9
	ld hl,l8958
	ld a,#01
	call l88f9
	ret
.l8d54
	inc hl
	ld a,(hl)
	cp #48
	jr z,l8d72
	cp #52
	jr z,l8d7f
	ld (l8837),hl
	ld a,#03
	call l8862
	ld hl,l89d7
	ld a,#01
	call l88f9
	call l8869
	ret
.l8d72
	inc hl
	ld (l8837),hl
	ld hl,l96e0
	ld a,#05
	call l888c
	ret
.l8d7f
	inc hl
	ld (l8837),hl
	ld hl,l96a0
	ld a,#04
	call l88f9
	ld hl,l9550
	ld a,#03
	call l88f9
	ld hl,l8fc3
	ld a,#07
	call l88f9
	ret
.l8d9c
	inc hl
	ld a,(hl)
	cp #48
	jr z,l8db6
	ld (l8837),hl
	ld hl,l9142
	ld a,#05
	call l88f9
	ld hl,l95d0
	ld a,#05
	call l888c
	ret
.l8db6
	inc hl
	ld (l8837),hl
	ld hl,l9353
	ld a,#03
	call l88f9
	ld hl,l9550
	ld a,#03
	call l888c
	ret
.l8dcb
	inc hl
	ld a,(hl)
	cp #48
	jr z,l8de5
	ld (l8837),hl
	ld a,(l8832)
	sub #02
	ld (l8832),a
	ld hl,l95d0
	ld a,#05
	call l888c
	ret
.l8de5
	inc hl
	ld (l8837),hl
	ld hl,l9550
	ld a,#06
	call l888c
	ret
.l8df2
	inc hl
	ld a,(hl)
	cp #58
	jr z,l8e0e
	ld (l8837),hl
	ld a,#01
	call l8862
	ld hl,l9103
	ld a,#07
	call l88f9
	ld a,#01
	call l8862
	ret
.l8e0e
	inc hl
	ld (l8837),hl
	ld hl,l9450
	ld a,#07
	call l88f9
	ret
.l8e1b
	inc hl
	ld (l8837),hl
	call l8869
	ld hl,l9212
	ld a,#01
	call l88f9
	call l8869
	ret
.l8e2e
	inc hl
	ld (l8837),hl
	ld hl,l8fc3
	ld a,#07
	call l88f9
	ret
.l8e3b
	inc hl
	ld (l8837),hl
	ld hl,l90c3
	ld a,#07
	call l88f9
	ret
.l8e48
	inc hl
	ld (l8837),hl
	ld hl,l9142
	ld a,#07
	call l88f9
	ret
.l8e55
	inc hl
	ld (l8837),hl
	ld hl,l91c2
	ld a,#05
	call l88f9
	ld hl,l9252
	ld a,#01
	call l888c
	ret
.l8e6a
	inc hl
	ld (l8837),hl
	call l8869
	ld hl,l8997
	ld a,#01
	call l88f9
	call l8869
	ret
.l8e7d
	inc hl
	ld (l8837),hl
	call l8869
	ld hl,l9292
	ld a,#01
	call l88f9
	ld a,#03
	call l8869
	ret
.l8e92
	inc hl
	ld (l8837),hl
	ld hl,l92d2
	ld a,#07
	call l88f9
	ret
.l8e9f
	inc hl
	ld (l8837),hl
	call l8869
	ld hl,l9410
	ld a,#01
	call l88f9
	ld hl,l9550
	ld a,#04
	call l888c
	ret
.l8eb7
	inc hl
	ld (l8837),hl
	ld hl,l9353
	ld a,#07
	call l88f9
	ret
.l8ec4
	inc hl
	ld (l8837),hl
	ld hl,l9618
	ld a,#05
	call l888c
	ret
.l8ed1
	inc hl
	ld (l8837),hl
	call l8869
	ld hl,l9590
	ld a,#01
	call l88f9
	call l8869
	ret
.l8ee4
	push af
	push hl
	push de
	ld de,(l883c)
	ld hl,(l883e)
	xor a
	sbc hl,de
	ld a,h
	or l
	jr z,l8f03
	ld hl,(l8840)
	xor a
	sbc hl,de
	ld a,h
	or l
	jr z,l8f22
.l8eff
	pop de
	pop hl
	pop af
	ret
.l8f03
	ld a,(l8842)
	cp #3f
	jr z,l8f10
	cp #2e
	jr z,l8f19
	jr l8eff
.l8f10
	ld a,(l8832)
	dec a
	ld (l8832),a
	jr l8eff
.l8f19
	ld a,(l8832)
	inc a
	ld (l8832),a
	jr l8eff
.l8f22
	ld a,(l8842)
	cp #3f
	jr z,l8f2f
	cp #2e
	jr z,l8f39
	jr l8eff
.l8f2f
	ld a,(l8832)
	dec a
	dec a
	ld (l8832),a
	jr l8eff
.l8f39
	ld a,(l8832)
	inc a
	inc a
	ld (l8832),a
	jr l8eff
.l8f43
	db #96,#ee,#ff,#ed,#44,#10,#52,#d9
	db #ef,#bd,#58,#45,#66,#86,#88,#77
	db #a8,#ba,#9b,#48,#44,#53,#a7,#cb
	db #ab,#68,#55,#65,#87,#99,#89,#88
	db #88,#a9,#99,#88,#78,#98,#a9,#99
	db #78,#66,#87,#98,#88,#68,#66,#76
	db #88,#88,#78,#67,#66,#66,#66,#66
	db #66,#76,#77,#66,#67,#67,#87,#77
.l8f83
	db #66,#96,#b8,#ff,#cb,#fb,#9a,#85
	db #73,#78,#58,#ba,#9d,#99,#89,#88
	db #44,#64,#58,#86,#a9,#aa,#88,#86
	db #58,#54,#76,#87,#88,#99,#9a,#78
	db #88,#67,#66,#86,#88,#9a,#ca,#aa
	db #a8,#88,#86,#76,#88,#89,#88,#89
	db #67,#66,#65,#65,#65,#66,#66,#66
	db #56,#55,#55,#55,#44,#77,#68,#2b
.l8fc3
	db #44,#75,#ea,#ff,#ac,#da,#ee,#5a
	db #32,#65,#56,#55,#76,#ba,#cd,#8b
	db #87,#99,#48,#22,#53,#77,#66,#97
	db #aa,#ab,#8a,#66,#76,#57,#44,#75
	db #98,#88,#98,#aa,#bb,#ab,#89,#87
	db #88,#56,#75,#88,#88,#88,#88,#68
	db #56,#55,#55,#55,#55,#55,#66,#56
	db #66,#56,#55,#55,#44,#65,#66,#55
.l9003
	db #44,#54,#55,#55,#76,#b9,#fd,#ff
	db #ff,#ee,#de,#cd,#ab,#68,#45,#23
	db #32,#44,#44,#55,#76,#a9,#ba,#bb
	db #ab,#aa,#9a,#89,#68,#55,#44,#44
	db #54,#65,#66,#87,#98,#a9,#aa,#aa
	db #9a,#a9,#aa,#aa,#9a,#89,#88,#88
	db #88,#88,#66,#55,#55,#55,#55,#45
	db #44,#54,#55,#55,#45,#44,#44,#54
.l9043
	db #55,#65,#66,#67,#87,#b9,#ec,#ff
	db #ff,#cf,#8a,#24,#01,#31,#75,#da
	db #fe,#ff,#ce,#8a,#56,#44,#54,#65
	db #88,#99,#aa,#aa,#bb,#bb,#aa,#89
	db #57,#45,#54,#75,#a8,#cb,#dd,#dd
	db #bc,#9a,#68,#56,#55,#65,#87,#a9
	db #bb,#bb,#9a,#88,#66,#55,#55,#66
	db #87,#98,#99,#99,#88,#67,#56,#55
.l9083
	db #35,#43,#07,#e1,#a4,#79,#bd,#e8
	db #fd,#da,#cf,#db,#fb,#9a,#ab,#68
	db #96,#45,#54,#25,#52,#44,#54,#56
	db #65,#87,#76,#9a,#98,#aa,#99,#aa
	db #89,#a9,#89,#88,#68,#86,#68,#65
	db #67,#85,#77,#79,#a9,#87,#aa,#aa
	db #9a,#a9,#98,#88,#88,#67,#66,#55
	db #55,#55,#54,#55,#44,#45,#54,#34
.l90c3
	db #55,#55,#75,#a8,#db,#fe,#ef,#be
	db #8b,#68,#55,#54,#54,#55,#55,#66
	db #87,#99,#aa,#ab,#aa,#89,#66,#55
	db #55,#55,#65,#76,#87,#88,#99,#99
	db #99,#9a,#99,#99,#98,#88,#88,#68
	db #67,#67,#77,#76,#66,#66,#66,#66
	db #66,#66,#66,#66,#66,#66,#66,#66
	db #66,#66,#66,#66,#66,#66,#66,#55
.l9103
	db #55,#66,#66,#76,#9a,#a6,#bb,#cb
	db #bb,#de,#ed,#dd,#dd,#bc,#bc,#ba
	db #9a,#99,#78,#68,#66,#56,#55,#55
	db #55,#55,#55,#66,#65,#66,#76,#77
	db #88,#88,#88,#98,#99,#aa,#aa,#aa
	db #ba,#ba,#ab,#aa,#aa,#99,#89,#88
	db #68,#66,#55,#55,#44,#44,#44,#44
.l9142 equ $ + 7
	db #44,#44,#44,#54,#45,#55,#65,#32
	db #43,#34,#43,#44,#55,#55,#65,#76
	db #b9,#a8,#9a,#bb,#cd,#dd,#dd,#ee
	db #ed,#dd,#dc,#bb,#ab,#99,#89,#88
	db #66,#56,#55,#45,#44,#54,#55,#55
	db #55,#65,#66,#87,#88,#88,#99,#99
	db #aa,#aa,#ba,#ab,#bb,#ab,#bb,#bb
	db #aa,#9a,#89,#88,#78,#66,#56,#55
.l9182 equ $ + 7
	db #44,#44,#34,#33,#33,#34,#43,#55
	db #d7,#ff,#bf,#49,#33,#67,#68,#89
	db #a9,#dd,#8b,#24,#22,#95,#aa,#9a
	db #89,#99,#58,#34,#54,#a7,#bb,#8a
	db #68,#66,#66,#65,#97,#ba,#ab,#68
	db #55,#76,#98,#89,#98,#88,#68,#56
	db #75,#88,#89,#68,#66,#66,#66,#66
	db #76,#88,#67,#56,#55,#76,#67,#76
.l91c2 equ $ + 7
	db #66,#77,#66,#66,#56,#66,#67,#99
	db #99,#99,#78,#77,#77,#67,#66,#77
	db #77,#77,#98,#99,#99,#a9,#aa,#99
	db #99,#99,#78,#77,#77,#67,#66,#77
	db #77,#77,#98,#99,#99,#a9,#aa,#89
	db #99,#99,#99,#aa,#9a,#99,#99,#89
	db #77,#77,#77,#66,#76,#77,#77,#87
	db #99,#99,#99,#aa,#9a,#99,#99,#89
	db #77,#77,#77,#66,#76,#77,#77,#87
	db #99,#99,#99,#aa,#9a,#99,#99,#89
.l9212 equ $ + 7
	db #77,#77,#77,#66,#76,#77,#77,#86
	db #88,#98,#88,#88,#88,#99,#89,#88
	db #88,#88,#88,#99,#88,#88,#98,#99
	db #88,#88,#88,#88,#88,#88,#88,#88
	db #88,#88,#78,#88,#87,#77,#77,#88
	db #88,#77,#87,#88,#88,#77,#66,#66
	db #66,#56,#55,#55,#55,#66,#b8,#fe
	db #ff,#ce,#9a,#89,#48,#24,#01,#20
.l9252 equ $ + 7
	db #55,#66,#56,#55,#55,#24,#00,#88
	db #88,#68,#86,#78,#97,#89,#88,#76
	db #76,#88,#89,#99,#88,#68,#56,#87
	db #99,#a9,#89,#66,#56,#76,#88,#88
	db #89,#78,#77,#88,#88,#99,#88,#68
	db #55,#75,#a9,#9a,#89,#68,#55,#66
	db #86,#a9,#9a,#88,#56,#86,#88,#88
	db #68,#75,#77,#98,#aa,#98,#89,#58
.l9292 equ $ + 7
	db #55,#66,#b9,#ab,#8a,#58,#65,#88
	db #99,#99,#a9,#da,#bc,#ed,#cd,#bb
	db #cc,#dc,#fd,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#8c,#04,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#10,#32,#45
	db #13,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#10,#11,#10
.l92d2 equ $ + 7
	db #11,#11,#32,#54,#55,#76,#76,#44
	db #55,#76,#b9,#dc,#fe,#ff,#de,#cd
	db #ab,#9a,#88,#56,#45,#23,#22,#43
	db #54,#86,#98,#a9,#aa,#9a,#99,#99
	db #89,#88,#56,#45,#44,#54,#55,#66
	db #76,#87,#88,#98,#99,#99,#a9,#aa
	db #aa,#aa,#9a,#89,#78,#66,#66,#66
	db #66,#56,#55,#55,#55,#66,#66,#66
.l9311 equ $ + 6
	db #56,#55,#55,#55,#55,#55,#45,#b6
	db #ff,#a5,#fb,#6a,#84,#95,#56,#73
	db #d9,#69,#b8,#8c,#56,#66,#67,#44
	db #a6,#8a,#96,#aa,#68,#65,#76,#46
	db #75,#99,#88,#a9,#8a,#67,#76,#67
	db #65,#97,#88,#d2,#9a,#a9,#a9,#59
	db #65,#89,#55,#98,#88,#67,#66,#46
	db #54,#66,#55,#66,#55,#86,#56,#76
	db #56,#55,#56,#65,#45,#87,#58,#75
.l9353
	db #55,#95,#54,#5c,#87,#a9,#a8,#ad
	db #bb,#bd,#9d,#9f,#ab,#ab,#8a,#8b
	db #88,#88,#46,#47,#44,#55,#44,#55
	db #40,#65,#55,#87,#86,#97,#88,#99
	db #98,#a9,#99,#9a,#98,#99,#98,#9a
	db #99,#99,#98,#8a,#88,#88,#78,#68
	db #66,#56,#55,#45,#54,#44,#54,#44
.l9392 equ $ + 7
	db #55,#54,#55,#44,#64,#54,#47,#a4
	db #58,#d5,#1f,#d7,#8f,#a5,#88,#84
	db #34,#8b,#34,#b6,#5a,#b7,#6c,#89
	db #89,#87,#55,#67,#44,#87,#58,#99
	db #89,#99,#99,#88,#86,#88,#65,#88
	db #98,#89,#ab,#9b,#b9,#89,#86,#58
	db #65,#55,#54,#55,#67,#66,#88,#66
	db #87,#55,#56,#64,#46,#75,#46,#84
.l93d0 equ $ + 5
	db #59,#75,#89,#74,#67,#76,#66,#67
	db #66,#77,#87,#77,#89,#88,#89,#89
	db #89,#a8,#99,#9a,#a9,#9a,#ba,#9a
	db #9a,#a9,#89,#89,#88,#79,#87,#77
	db #67,#66,#67,#76,#76,#67,#77,#77
	db #88,#97,#89,#99,#99,#aa,#a9,#9a
	db #aa,#a9,#9a,#99,#89,#99,#87,#78
	db #77,#67,#77,#12,#66,#67,#66,#77
.l9410 equ $ + 5
	db #87,#77,#89,#88,#89,#3a,#fb,#98
	db #6c,#a9,#a5,#5a,#89,#a8,#58,#67
	db #67,#55,#55,#66,#56,#76,#88,#76
	db #86,#87,#54,#55,#47,#55,#85,#65
	db #66,#88,#8a,#a8,#aa,#89,#98,#89
	db #67,#88,#89,#98,#ba,#ab,#ba,#bc
	db #ab,#aa,#aa,#78,#87,#78,#66,#86
	db #88,#87,#98,#88,#77,#78,#56,#55
.l9450 equ $ + 5
	db #56,#44,#54,#45,#44,#44,#a6,#aa
	db #bb,#cb,#bd,#bd,#ab,#aa,#ba,#9a
	db #89,#88,#88,#88,#66,#66,#66,#66
	db #67,#87,#78,#88,#88,#88,#66,#87
	db #77,#77,#77,#77,#88,#88,#88,#99
	db #aa,#aa,#aa,#aa,#99,#99,#99,#88
	db #88,#66,#66,#55,#55,#55,#55,#55
	db #55,#55,#55,#55,#55,#55,#55,#65
.l9491 equ $ + 6
	db #56,#55,#55,#55,#55,#45,#66,#66
	db #f7,#ff,#9e,#5b,#74,#88,#56,#54
	db #75,#db,#bd,#88,#46,#b1,#58,#45
	db #65,#b7,#cb,#8a,#68,#56,#76,#56
	db #54,#87,#ba,#ab,#78,#77,#66,#66
	db #56,#96,#da,#bd,#8b,#56,#75,#67
	db #76,#98,#9a,#88,#66,#65,#77,#66
	db #56,#66,#87,#66,#55,#65,#66,#56
.l94d0 equ $ + 5
	db #65,#66,#77,#88,#67,#95,#db,#ff
	db #ff,#4a,#02,#00,#73,#fb,#ff,#af
	db #48,#23,#42,#75,#88,#99,#98,#aa
	db #aa,#68,#25,#22,#53,#b8,#ed,#bd
	db #69,#24,#32,#75,#a9,#ab,#9a,#88
	db #88,#a9,#89,#67,#66,#87,#89,#89
	db #69,#67,#66,#66,#66,#55,#66,#86
	db #78,#66,#55,#55,#55,#66,#66,#66
.l9510 equ $ + 5
	db #66,#66,#66,#56,#45,#67,#d7,#ff
	db #ab,#cb,#ac,#89,#26,#52,#87,#56
	db #86,#ba,#cb,#8b,#76,#88,#48,#44
	db #55,#76,#89,#88,#b9,#ab,#88,#67
	db #66,#66,#45,#75,#98,#99,#99,#99
	db #ba,#8a,#87,#88,#78,#77,#76,#98
	db #89,#87,#88,#78,#66,#55,#65,#66
	db #65,#66,#66,#66,#56,#65,#56,#55
.l9550 equ $ + 5
	db #65,#56,#66,#66,#66,#8b,#43,#97
	db #3b,#93,#4c,#55,#3f,#74,#59,#58
	db #c8,#03,#c7,#26,#c3,#18,#77,#7a
	db #34,#c9,#82,#a1,#2b,#81,#2d,#76
	db #a8,#38,#78,#7a,#e0,#48,#a6,#83
	db #47,#3b,#a5,#3a,#85,#3b,#98,#64
	db #89,#56,#b8,#88,#83,#67,#87,#27
	db #77,#0d,#73,#5e,#72,#cc,#70,#d8
.l9590 equ $ + 5
	db #44,#47,#59,#98,#58,#76,#87,#88
	db #98,#99,#aa,#aa,#aa,#aa,#99,#89
	db #88,#88,#77,#66,#66,#55,#45,#41
	db #b7,#dc,#be,#99,#b9,#bb,#8a,#45
	db #43,#54,#55,#24,#42,#65,#76,#56
	db #54,#65,#77,#66,#86,#cb,#ed,#ce
	db #bb,#ba,#ab,#99,#68,#65,#66,#76
	db #86,#77,#87,#88,#89,#88,#78,#99
.l95d0 equ $ + 5
	db #99,#99,#98,#99,#9a,#b6,#75,#5a
	db #4b,#99,#b5,#58,#5b,#89,#a6,#96
	db #68,#88,#a6,#78,#4a,#8b,#a5,#a5
	db #4a,#4b,#b7,#b4,#7a,#4c,#87,#c3
	db #78,#2c,#4b,#c5,#a4,#3a,#5b,#99
	db #95,#88,#49,#b7,#b4,#68,#8a,#a7
	db #b5,#78,#4c,#9a,#a5,#78,#5a,#87
	db #b5,#78,#5c,#6b,#a6,#78,#5a,#a7
	db #b3,#58,#2d,#89,#d5,#75,#5a,#4b
.l9618 equ $ + 5
	db #a4,#3a,#78,#b5,#58,#65,#66,#6a
	db #66,#a7,#98,#66,#6a,#66,#a7,#a6
	db #67,#66,#68,#a6,#6a,#67,#a7,#98
	db #66,#66,#a7,#9a,#a5,#86,#66,#77
	db #68,#a6,#9a,#59,#66,#89,#a7,#89
	db #65,#68,#86,#a6,#76,#68,#86,#66
	db #aa,#68,#6a,#76,#86,#76,#7a,#66
	db #a6,#6a,#7a,#66,#a6,#8a,#76,#7a
	db #8a,#95,#6a,#a6,#65,#66,#6a,#66
	db #a7,#6a,#66,#89,#59,#00,#89,#89
	db #89,#a8,#99,#9a,#a9,#9a,#ba,#9a
	db #9a,#a9,#89,#88,#79,#87,#77,#67
	db #66,#67,#76,#76,#67,#77,#77,#88
	db #97,#89,#99,#99,#aa,#a9,#9a,#aa
	db #a9,#9a,#99,#89,#99,#87,#78,#77
	db #67,#77,#76,#66,#67,#66,#77,#87
	db #77,#89,#88,#89,#89,#89,#a8,#99
.l96a0 equ $ + 5
	db #9a,#a9,#9a,#ba,#9a,#88,#88,#88
	db #88,#88,#88,#88,#88,#88,#88,#88
	db #88,#88,#88,#88,#88,#88,#88,#88
	db #88,#88,#88,#88,#88,#88,#88,#88
	db #88,#88,#88,#88,#88,#88,#88,#88
	db #88,#88,#88,#88,#88,#88,#88,#88
	db #88,#88,#88,#88,#88,#88,#88,#88
	db #88,#88,#88,#88,#88,#88,#88,#88
.l96e0 equ $ + 5
	db #88,#88,#88,#88,#88,#88,#88,#87
	db #88,#79,#86,#88,#76,#86,#86,#66
	db #66,#76,#78,#98,#88,#8a,#99,#88
	db #89,#79,#7a,#8a,#99,#89,#a8,#98
	db #98,#68,#88,#89,#79,#78,#78,#88
	db #86,#88,#67,#68,#87,#87,#85,#67
	db #7a,#88,#8a,#8b,#9a,#a9,#99,#a9
	db #98,#a9,#a9,#a8,#98,#a8,#96,#86
.l9720 equ $ + 5
	db #76,#76,#78,#76,#66,#67,#98,#99
	db #a9,#aa,#9a,#aa,#89,#88,#78,#67
	db #76,#67,#76,#87,#88,#99,#9a,#a9
	db #aa,#99,#99,#89,#77,#77,#77,#66
	db #76,#77,#77,#88,#88,#a9,#aa,#a9
	db #aa,#89,#88,#78,#77,#77,#66,#76
	db #77,#87,#99,#99,#a9,#aa,#99,#9a
	db #89,#88,#77,#66,#87,#99,#99,#aa
.l9761 equ $ + 6
	db #aa,#a9,#9a,#88,#88,#77,#d6,#fc
	db #cd,#9c,#88,#88,#56,#44,#76,#ba
	db #ab,#99,#89,#78,#56,#44,#65,#98
	db #99,#99,#99,#89,#56,#45,#64,#87
	db #88,#98,#99,#99,#68,#55,#65,#86
	db #a9,#bb,#ab,#8a,#68,#56,#66,#87
	db #88,#88,#78,#56,#55,#55,#55,#65
	db #66,#66,#56,#66,#55,#55,#56,#45
	db #65,#87,#88,#66,#55,#55,#98,#89
	db #aa,#99,#aa,#89,#89,#67,#77,#66
	db #77,#76,#88,#97,#a9,#a9,#ab,#99
	db #99,#87,#78,#76,#67,#76,#77,#97
	db #89,#a9,#9a,#b9,#99,#99,#78,#88
	db #66,#76,#66,#87,#88,#a9,#99,#aa
	db #99,#aa,#99,#9a,#88,#88,#76,#67
	db #66,#77,#86,#88,#98,#98,#89,#aa
	db #99,#aa,#89,#89,#67,#77,#66,#77
.l97e3
	db #55,#87,#f4,#8f,#95,#8f,#23,#67
	db #86,#75,#fb,#79,#b8,#29,#53,#76
	db #66,#b8,#9c,#78,#88,#45,#65,#87
	db #97,#aa,#89,#87,#56,#55,#76,#88
	db #99,#8a,#68,#66,#55,#76,#ab,#98
	db #ba,#58,#65,#56,#76,#99,#89,#88
	db #68,#55,#66,#66,#98,#88,#77,#66
	db #55,#56,#66,#66,#86,#57,#87,#56
.l9823
	db #21,#32,#44,#44,#64,#86,#aa,#9a
	db #77,#b9,#fd,#ff,#cd,#ba,#cb,#cb
	db #8a,#55,#65,#a7,#aa,#89,#98,#b9
	db #cc,#ab,#68,#66,#88,#78,#57,#55
	db #97,#ba,#ab,#9a,#99,#aa,#9a,#68
	db #66,#86,#98,#99,#db,#fd,#ff,#df
	db #ab,#89,#88,#68,#55,#55,#76,#88
	db #78,#56,#66,#66,#56,#34,#22,#32
.l9863
	db #00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
;
; #99c3
; ld hl,#9afe
; ld (#99be),hl
; ld hl,#0000
; ld (#8840),hl
; ld (#883e),hl
; ld hl,#8716
; ld (#8837),hl
; ld d,#00
; call #99e7
; ld hl,(#8837)
; ld a,#0d
; ld (hl),a
; call #8816	; init music ?
; ret
;
; play ?
;
;
.music_info
	db "Defence (2016)(Public Domain)(MMCM)",0
	db "",0

	read "music_end.asm"
