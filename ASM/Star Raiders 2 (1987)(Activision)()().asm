; Music of Star Raiders 2 (1987)(Activision)()()
; Ripped by Megachur the 14/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STARRAI2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #7b2b

	read "music_header.asm"

;
.stop_music		;	#7b2b stop
;
	ld b,#0e
.l7b2d
	ld a,b
	dec a
	ld c,#00
	call l7c56
	djnz l7b2d
	ld a,#07
	ld c,#b8
	call l7c56
	ret
;
.init_music		;	#7b3e init
;
	ld hl,l7c78
	ld (l7b8f),hl
	ld hl,l7ccb
	ld (l7bc3),hl
	ld hl,l7d72
	ld (l7bf8),hl
	call l7b8e
	ld (l7b64),a
	call l7bc2
	ld (l7b72),a
	call l7bf7
	ld (l7b80),a
	ret
;
.play_music		;	#7b63 play
;
.l7b64 equ $ + 1
	ld a,#01
	dec a
	call z,l7b8e
	ld (l7b64),a
	dec a
	ld c,a
	call z,l7bbb
.l7b72 equ $ + 1
	ld a,#01
	dec a
	call z,l7bc2
	ld (l7b72),a
	dec a
	ld c,a
	call z,l7bf0
.l7b80 equ $ + 1
	ld a,#01
	dec a
	call z,l7bf7
	ld (l7b80),a
	dec a
	ret nz
	ld c,a
	jp l7c2b
.l7b8f equ $ + 1
.l7b8e
	ld hl,l7c78
	ld c,(hl)
	dec c
	jr nz,l7b9d
	ld hl,l7c78
	ld (l7b8f),hl
	ld c,(hl)
	dec c
.l7b9d
	inc hl
	ld d,(hl)
	inc hl
	ld (l7b8f),hl
	inc c
	jp z,l7bbb
	ld b,#00
	ld hl,l7c30
	add hl,bc
	xor a
	ld c,(hl)
	inc hl
	ld b,(hl)
	call l7c56
	inc a
	ld c,b
	call l7c56
	ld c,#0b
.l7bbb
	ld a,#08
	call l7c56
	ld a,d
	ret
.l7bc3 equ $ + 1
.l7bc2
	ld hl,l7ccb
	ld c,(hl)
	dec c
	jr nz,l7bd1
	ld hl,l7ccb
	ld (l7bc3),hl
	ld c,(hl)
	dec c
.l7bd1
	inc hl
	ld d,(hl)
	inc hl
	ld (l7bc3),hl
	inc c
	jp z,l7bf0
	ld b,#00
	ld hl,l7c30
	add hl,bc
	ld a,#02
	ld c,(hl)
	inc hl
	ld b,(hl)
	call l7c56
	inc a
	ld c,b
	call l7c56
	ld c,#0b
.l7bf0
	ld a,#09
	call l7c56
	ld a,d
	ret
.l7bf8 equ $ + 1
.l7bf7
	ld hl,l7d72
	ld c,(hl)
	dec c
	jr nz,l7c06
	ld hl,l7d72		; reinit music
	ld (l7bf8),hl
	ld c,(hl)
	dec c
.l7c06
	inc hl
	ld d,(hl)
	inc hl
	ld (l7bf8),hl
	inc c
	jp z,l7c2b
	ld b,#00
	ld hl,l7c30
	add hl,bc
	ld a,#04
	ld c,(hl)
	inc hl
	call l7c56
	inc a
	ld c,(hl)
	call l7c56
	ld c,#b8
	ld a,#07
	call l7c56
	ld c,#0b
.l7c2b
	ld a,#0a
	call l7c56
.l7c30
	ld a,d
	ret
	dw #012d,#01de,#01aa,#017b
	dw #0166,#013f,#011c,#010c
	dw #00ef,#00e1,#00be,#00b3
	dw #009f,#008e,#0086,#0077
	dw #0071,#0064
.l7c56
	push af
	push bc
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
	pop bc
	pop af
	ret
.l7c78
	db #18,#24,#1c,#09,#1a,#12,#18,#09
	db #20,#36,#20,#12,#22,#24,#20,#1b
	db #1c,#09,#20,#48,#18,#24,#1c,#09
	db #1a,#12,#18,#09,#20,#36,#20,#12
	db #1e,#24,#1c,#09,#1a,#12,#18,#09
	db #1a,#48,#18,#24,#1c,#09,#1a,#12
	db #18,#09,#20,#36,#20,#12,#22,#24
	db #20,#1b,#1e,#09,#24,#36,#24,#12
	db #22,#24,#20,#12,#1e,#12,#1c,#36
	db #20,#12,#1a,#36,#20,#12,#18,#48
	db #00,#48,#01
.l7ccb
	db #00,#12,#0a,#06,#0a,#06,#0a,#06
	db #0a,#12,#00,#24,#0a,#06,#0a,#06
	db #0a,#06,#0a,#12,#00,#24,#0a,#06
	db #0a,#06,#0a,#06,#0a,#12,#00,#24
	db #0a,#06,#0a,#06,#0a,#06,#0a,#12
	db #0a,#12,#00,#12,#0a,#06,#0a,#06
	db #0a,#06,#0a,#12,#00,#24,#0a,#06
	db #0a,#06,#0a,#06,#0a,#12,#00,#24
	db #04,#06,#04,#06,#04,#06,#04,#12
	db #00,#24,#04,#06,#04,#06,#04,#06
	db #06,#12,#08,#12,#00,#12,#0a,#06
	db #0a,#06,#0a,#06,#0a,#12,#00,#24
	db #0a,#06,#0a,#06,#0a,#06,#0a,#12
	db #00,#24,#10,#06,#10,#06,#10,#06
	db #10,#12,#00,#24,#02,#06,#02,#06
	db #02,#06,#02,#12,#00,#24,#10,#06
	db #10,#06,#10,#06,#10,#12,#00,#24
	db #12,#06,#12,#06,#12,#06,#12,#12
	db #00,#24,#12,#06,#12,#06,#12,#06
	db #12,#12,#00,#1b,#14,#09,#12,#09
	db #0e,#09,#0a,#24,#00,#48,#01
.l7d72
	db #12,#48,#18,#48,#18,#48,#18,#48
	db #12,#48,#0e,#48,#0c,#48,#16,#48
	db #12,#48,#18,#48,#18,#48,#12,#48
	db #18,#48,#0a,#48,#08,#48,#0a,#48
	db #00,#48,#01,#8e,#88,#82,#7d,#7b
	db #6f,#6a,#66,#64,#66,#6a,#6f,#7b
	db #7d,#82,#88,#8e,#a4,#a4,#a4,#a3
	db #9f,#9f,#9e,#9c,#97,#92,#90,#8f
	db #8f,#8b,#8a,#8a,#8a,#00,#08,#00
	db #40,#14,#00,#a0,#22,#00,#18,#41
	db #01,#ff,#ff,#ff,#05,#00,#44,#02
	db #00,#28,#00,#00,#10,#59,#20,#20
	db #20,#20,#20,#10,#d9,#a1,#d2,#f1
	db #d4,#43,#d3,#00,#01,#02,#03,#04
	db #05,#05,#06,#07,#08,#09,#8a,#8a
	db #8a,#8a,#8a,#8a,#8a,#8a,#8a,#8a
	db #8b,#00,#00,#01,#00,#00,#03,#03
	db #00,#01,#00,#00,#05,#07,#48,#40
	db #38,#30,#20,#10,#58,#48,#38,#30
	db #18,#58,#54,#3c,#34,#64,#08,#70
	db #2c,#3c,#30,#28,#58,#5c,#3c,#4c
	db #18,#08,#70,#4c,#3c,#48,#54,#40
	db #60,#04,#10,#58,#28,#05,#0a,#05
	db #04,#0a,#02,#01,#01,#00,#00,#01
	db #00,#00,#57,#55,#52,#56,#45,#4c
	db #04,#04,#04,#05,#05,#05,#06,#07
	db #07,#07,#08,#08,#08,#09,#09,#09
	db #0f,#06,#03,#0f,#0f,#0f,#0f,#04
	db #09,#0f,#00,#12,#26,#53,#62,#7a
.l7e5e equ $ + 4
	db #92,#ae,#c0,#eb,#80,#98,#e6,#98
	db #4c,#99,#d4,#99,#5c,#9a,#a0,#9a
	db #e4,#9a,#06,#9b,#28,#9b,#4a,#9b
	db #6c,#9b,#8e,#9b,#d2,#9b,#38,#9c
	db #7c,#9c,#26,#9d,#d0,#9d,#7a,#9e
	db #be,#9e,#02,#9f,#46,#9f,#ac,#9f
	db #ce,#9f,#12,#a0,#56,#a0,#9a,#a0
	db #de,#a0,#44,#a1,#ee,#a1,#98,#a2
.l7e9e equ $ + 4
	db #a8,#a3,#b8,#a4,#03,#0c,#03,#08
	db #04,#08,#04,#06,#02,#10,#02,#0e
	db #01,#1c,#01,#1a,#01,#18,#01,#18
	db #01,#16,#02,#16,#03,#16,#02,#16
	db #05,#16,#05,#18,#05,#18,#02,#16
	db #02,#16,#02,#16,#03,#16,#01,#16
	db #02,#16,#02,#16,#02,#16,#02,#16
	db #03,#16,#05,#16,#05,#18,#08,#02
	db #08,#20,#10,#20,#05,#04,#05,#04
	db #08,#08,#7b,#5b,#2e,#1d,#57,#33
	db #28,#25,#20,#1d,#1c,#1a,#18,#17
	db #15,#14,#10,#50,#f0,#49,#30,#18
	db #15,#55,#2f,#20,#02,#02,#03,#05
	db #02,#03,#03,#06,#78,#77,#77,#76
	db #75,#74,#72,#70,#6d,#6a,#67,#64
	db #61,#5d,#59,#54,#50,#4b,#46,#41
	db #3c,#36,#30,#2b,#25,#1f,#18,#12
	db #0c,#06,#00,#d6,#56,#84,#60,#e8
	db #20,#06,#a0,#ea,#e6,#a4,#14,#42
	db #2c,#da,#4a,#84,#88,#5a,#00,#7a
	db #ce,#00,#14,#0e,#f2,#c4,#8a,#46
	db #0c,#07,#7e,#16,#0d,#84,#83,#0e
	db #5a,#0c,#16,#44,#47,#46,#42,#45
	db #47,#47,#45,#43,#44,#46,#00,#01
	db #02,#03,#04,#05,#05,#06,#07,#08
	db #09,#9c,#84,#6c,#58,#4a,#3a,#30
	db #26,#1e,#18,#14,#0e,#0c,#08,#06
	db #02,#ff,#d6,#b0,#90,#78,#60,#4e
	db #40,#32,#28,#20,#18,#14,#0e,#0a
	db #04,#03,#05,#07,#08,#08,#08,#07
	db #05,#03,#01,#ff,#fe,#fe,#fe,#ff
	db #01,#fd,#fe,#00,#03,#05,#07,#09
	db #0c,#0d,#0c,#09,#07,#05,#03,#00
	db #fe,#00,#01,#03,#04,#80,#81,#82
	db #04,#04,#0c,#10,#08,#01,#7f,#00
	db #ff,#7f,#45,#3f,#3a,#36,#32,#2e
	db #2b,#29,#26,#24,#21,#1f,#1c,#1a
	db #18,#15,#13,#10,#0e,#0b,#09,#06
	db #04,#01,#6e,#64,#5f,#56,#50,#4b
	db #47,#43,#3f,#3b,#37,#33,#2f,#2b
	db #27,#23,#1f,#1b,#17,#13,#0f,#0b
	db #07,#03,#02,#c4,#34,#62,#68,#6e
	db #0e,#14,#1a,#2a,#40,#57,#63,#72
	db #76,#72,#63,#56,#40,#2a,#19,#0e
	db #09,#0e,#40,#44,#4b,#0c,#0e,#0d
	db #0a,#08,#0a,#0a,#19,#2e,#43,#52
	db #58,#59,#56,#51,#43,#2e,#19,#0f
	db #07,#03,#01,#00,#18,#1c,#20,#8c
	db #8e,#90,#1f,#0f,#07,#03,#0d,#1f
	db #06,#0a,#10,#02,#04,#06,#c0,#f0
	db #fc,#ff,#20,#40,#80,#d6,#30,#d8
;
;	ld (ix+#0d),a
;	ld d,#00
;	ld hl,l7e9e
;	ld a,e
;	add a
;	ld e,a
;	add hl,de
;	ld a,(hl)
;	ld (ix+#0b),a
;	inc hl
;.l8044 equ $ + 1
;	ld a,(ix+#0c)
;	and #fe
;	sub #40
;	jr nc,l808a
;	cp #e0
;	jr c,l8085
;	add #20
;	ld c,a
;	ld b,#00
;	ld hl,l8065
;	add hl,bc
;	ld a,(hl)
;	ld (ix+#05),a
;	inc hl
;	ld a,(hl)
;	ld (ix+#06),a
;	xor a
;	jr l80d5
;.l8065
;	ld b,(hl)
;	ld (hl),b
;	ex af,af'
;	ld (hl),b
;	jp nz,#746f
;	ld l,a
;	ld e,#6f
;	ret nz
;	ld l,(hl)
;	ld e,d
;	ld l,(hl)
;	call pe,#766d
;	ld l,l
;	ret m
;	ld l,h
;	ld (hl),d
;	ld l,h
;	jp po,#4a6b
;	ld l,e
;	xor d
;	ld l,d
;	ld (bc),a
;	ld l,d
;	ld d,d
;	ld l,c
;.l8085
;	xor a
;	ld (ix+#06),a
;	ret
;.l808a
;	cp #60
;	jr c,l80c6
;	cp #80
;	jr nc,l8085
;	ld c,a
;	ld b,#00
;	ld hl,l8044
;	add hl,bc
;	ld c,(hl)
;	ld (ix+#05),c
;	inc hl
;	ld c,(hl)
;	ld (ix+#06),c
;	jr l80d5
;.l80a4
;	ld a,h
;	ld (hl),b
;	inc l
;	ld (hl),c
;	call nc,#7471
;	ld (hl),d
;	inc c
;	ld (hl),e
;	sbc h
;	ld (hl),e
;	ld (#a074),hl
;	ld (hl),h
;	ld d,#75
;	add h
;	ld (hl),l
;	jp pe,#4875
;	halt
;	sbc (hl)
;	halt
;	call pe,#3276
;	ld (hl),a
;	ld (hl),b
;	ld (hl),a
;	sbc d
;	ld l,b
;.l80c6
;	ld c,(hl)
;	ld b,d
;	ld hl,l80a4
;	add hl,bc
;	ld c,(hl)
;	ld (ix+#05),c
;	inc hl
;	ld c,(hl)
;	ld (ix+#06),c
;.l80d5
;	srl a
;	ld c,a
;	ld a,(ix+#0d)
;	and #fe
;	ld l,a
;	ld h,#f6
;	ld a,(hl)
;	or c
;	ld (ix+#09),a
;	inc l
;	ld a,(hl)
;	ld (ix+#0a),a
;	ld c,(ix+#0b)
;	ld l,c
;	ld b,#00
;	ld h,b
;	rlc c
;	add hl,hl
;	add hl,hl
;	add hl,hl
;	add hl,hl
;	add hl,hl
;	add hl,bc
;	ld c,l
;	ld b,h
;	ld hl,l7e5e
;	add hl,de
;	ld a,(hl)
;	inc hl
;	ld h,(hl)
;	ld l,a
;	ld a,(ix+#0c)
;	and #01
;	jr z,l810e
;	ld de,#6980
;	add hl,de
;.l810e
;	ld e,(ix+#07)
;	ld d,(ix+#08)
;	ldir
;	ret
;
.music_info
	db "Star Raiders 2 (1987)(Activision)()",0
	db "",0

	read "music_end.asm"
