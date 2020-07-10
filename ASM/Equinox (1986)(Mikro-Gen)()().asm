; Music of Equinox (1986)(Mikro-Gen)()()
; Ripped by Megachur the 11/06/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EQUINOX.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #5684

	read "music_header.asm"

	db #00,#00,#00,#00,#00,#00
;
.init_music
;
	di
	ld hl,l5706
	defs 3,0	;ld (#0039),hl modified by Megachur
	ld a,#b8
	ld (l56e8),a
	ld c,a
	ld a,#07
	call l6044
	inc a
	ld c,#00
	call l6044
	inc a
	call l6044
	inc a
	call l6044
	xor a
	ld (l5ab9),a
	ld (l5ac9),a
	ld (l5adb),a
	ld (l5abb),a
	ld (l5acb),a
	ld (l5add),a
	ld a,#01
	ld (l5ab1),a
	ld (l5ac1),a
	ld (l5ad3),a
	xor a
	ld (l56f4),a
	ld hl,l5c01
	ld (l56ff),hl
	ld hl,l5d78
	ld (l5701),hl
	ld hl,l5b90
	ld (l5703),hl
	ei
	ret
.l56e7 equ $ + 7
.l56e0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56e8
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56f5 equ $ + 5
.l56f4 equ $ + 4
	db #00,#00,#00,#00,#00,#f6,#ed,#db
.l56ff equ $ + 7
.l56fe equ $ + 6
.l56fb equ $ + 3
.l56f8
	db #01,#02,#04,#08,#10,#20,#00,#00
.l5703 equ $ + 3
.l5701 equ $ + 1
	db #00,#00,#00,#00,#00
.l5705
	db #01
;
.real_play_music
.l5706
;
	di
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld hl,l5705
	dec (hl)
	jp nz,l571b
	ld (hl),#03
	defs 3,0	; call #6070 modified by Megachur
.l571b
	ld a,(l56f4)
	or a
	jp nz,l5784
	ld a,#00
	ld (l56fe),a
	ld iy,l5a51
	ld ix,l5ab1
	ld hl,l5a81
	ld (l5a4f),hl
	ld hl,(l56ff)
	call l578f
	ld (l56ff),hl
	ld a,(l56f4)
	or a
	jp nz,l5784
	ld a,#01
	ld (l56fe),a
	ld iy,l5a61
	ld ix,l5ac1
	ld hl,l5a91
	ld (l5a4f),hl
	ld hl,(l5701)
	call l578f
	ld (l5701),hl
	ld a,(l56f4)
	or a
	jp nz,l5784
	ld a,#02
	ld (l56fe),a
	ld iy,l5a71
	ld ix,l5ad3
	ld hl,l5aa1
	ld (l5a4f),hl
	ld hl,(l5703)
	call l578f
	ld (l5703),hl
.l5784
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	reti
.l578f
	xor a
	ld (ix+#0f),a
	push hl
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld e,(ix+#0d)
	ld d,(ix+#0e)
	add hl,de
	ld (ix+#0b),l
	ld (ix+#0c),h
	ld a,(ix+#05)
	ld c,l
	call l6044
	inc a
	ld c,h
	call l6044
	pop hl
	dec (ix+#00)
	jp z,l57e7
	ld a,(ix+#01)
	or a
	jp z,l57c7
	dec (ix+#01)
	jp nz,l57dd
.l57c7
	dec (ix+#06)
	jp nz,l57dd
	ld a,(ix+#07)
	ld (ix+#06),a
	ld a,(ix+#03)
	or a
	jp z,l57dd
	dec (ix+#03)
.l57dd
	ld a,(ix+#04)
	ld c,(ix+#03)
	call l6044
	ret
.l57e7
	ld a,(hl)
	cp #ff
	jp nz,l581c
	ld a,(ix+#08)
	or a
	jp z,l5807
	sub #02
	ld (ix+#08),a
	ld l,a
	ld h,#00
	push iy
	pop de
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l57e7
;
.stop_music
.l5807
;
	ld a,#ff
	ld (l56f4),a
	ld a,#08
	ld c,#00
	call l6044
	inc a
	call l6044
	inc a
	call l6044
	ret
.l581c
	cp #01
	jp nz,l5851
	inc hl
	push hl
	ld a,(hl)
	add (ix+#09)
	ld hl,l56e0
	add (hl)
	add a
	ld l,a
	ld h,#00
	ld (ix+#0d),h
	ld (ix+#0e),h
	ld de,l5afe
	add hl,de
	ld c,(hl)
	ld (ix+#0b),c
	ld a,(ix+#05)
	call l6044
	inc hl
	ld c,(hl)
	ld (ix+#0c),c
	inc a
	call l6044
	pop hl
	inc hl
	jp l57e7
.l5851
	cp #02
	jp nz,l587b
	inc hl
	ld a,(hl)
	ld (ix+#00),a
	ld a,(ix+#0f)
	or a
	jp z,l5868
	ld a,(hl)
	push hl
	call l5a1c
	pop hl
.l5868
	inc hl
	ld a,(hl)
	ld (ix+#01),a
	inc hl
	ld c,(ix+#02)
	ld (ix+#03),c
	ld a,(ix+#04)
	call l6044
	ret
.l587b
	cp #04
	jp nz,l58a9
	push hl
	ld a,(l56fe)
	ld l,a
	ld h,#00
	ld (l5894),hl
	ld de,l56f5
	add hl,de
	ld a,(hl)
	ld hl,l56e8
	and (hl)
.l5894 equ $ + 1
	ld hl,#0000
	ld de,l56f8
	add hl,de
	or (hl)
	ld (l56e8),a
	ld c,a
	ld a,#07
	call l6044
	pop hl
	inc hl
	jp l57e7
.l58a9
	cp #05
	jp nz,l58bd
	inc hl
	ld a,(hl)
	ld (l56e7),a
	ld c,a
	ld a,#06
	call l6044
	inc hl
	jp l57e7
.l58bd
	cp #de
	jp nz,l58e0
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push de
	push hl
	push iy
	pop de
	ld a,(ix+#08)
	ld l,a
	ld h,#00
	add hl,de
	pop de
	ld (hl),e
	inc hl
	ld (hl),d
	add #02
	ld (ix+#08),a
	pop hl
	jp l57e7
.l58e0
	cp #07
	jp nz,l58ee
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	jp l57e7
.l58ee
	cp #08
	jp nz,l58fc
	inc hl
	ld a,(hl)
	ld (l56e0),a
	inc hl
	jp l57e7
.l58fc
	cp #09
	jp nz,l5913
	inc hl
	ld a,(hl)
	add (ix+#00)
	ld (ix+#00),a
	inc hl
	ld a,(hl)
	add (ix+#01)
	ld (ix+#01),a
	inc hl
	ret
.l5913
	cp #0a
	jp nz,l5920
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l57e7
.l5920
	cp #0b
	jp nz,l5931
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	ld (ix+#07),a
	inc hl
	jp l57e7
.l5931
	cp #0c
	jp nz,l593f
	inc hl
	ld a,(hl)
	ld (ix+#02),a
	inc hl
	jp l57e7
.l593f
	cp #0d
	jp nz,l595b
	inc hl
	ld a,(ix+#02)
	cp #0f
	jp z,l594e
	inc a
.l594e
	ld (ix+#02),a
	ld c,a
	ld a,(ix+#04)
	call l6044
	jp l57e7
.l595b
	cp #0e
	jp nz,l5976
	inc hl
	ld a,(ix+#02)
	or a
	jp z,l5969
	dec a
.l5969
	ld (ix+#02),a
	ld c,a
	ld a,(ix+#04)
	call l6044
	jp l57e7
.l5976
	cp #0f
	jp nz,l5999
	ld a,(ix+#0a)
	add #03
	ld (ix+#0a),a
	inc hl
	ld b,(hl)
	inc hl
	push hl
	ld l,a
	ld h,#00
	ld de,(l5a4f)
	add hl,de
	ld (hl),b
	pop de
	inc hl
	ld (hl),e
	inc hl
	ld (hl),d
	ex de,hl
	jp l57e7
.l5999
	cp #10
	jp nz,l59c3
	push hl
	ld l,(ix+#0a)
	ld h,#00
	ld de,(l5a4f)
	add hl,de
	dec (hl)
	jp z,l59b6
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	pop de
	jp l57e7
.l59b6
	ld a,(ix+#0a)
	sub #03
	ld (ix+#0a),a
	pop hl
	inc hl
	jp l57e7
.l59c3
	cp #11
	jp nz,l59ed
	ld a,#ff
	ld (ix+#0f),a
	inc hl
	push hl
	ld a,(hl)
	add (ix+#09)
	ld hl,l56e0
	add (hl)
	add a
	ld l,a
	ld h,#00
	ld de,l5afe
	add hl,de
	ld c,(hl)
	ld (ix+#0d),c
	inc hl
	ld c,(hl)
	ld (ix+#0e),c
	pop hl
	inc hl
	jp l57e7
.l59ed
	cp #12
	jp nz,l5a1b
	push hl
	ld a,(l56fe)
	ld l,a
	ld h,#00
	ld (l5a06),hl
	ld de,l56f5
	add hl,de
	ld a,(hl)
	ld hl,l56e8
	and (hl)
.l5a06 equ $ + 1
	ld hl,#0000
	ld de,l56fb
	add hl,de
	or (hl)
	ld (l56e8),a
	ld c,a
	ld a,#07
	call l6044
	pop hl
	inc hl
	jp l57e7
.l5a1b
	ret
.l5a1c
	ld (l5aea),a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld c,(ix+#0d)
	ld b,(ix+#0e)
	sbc hl,bc
	push af
	jp nc,l5a37
	ex de,hl
	ld hl,#0001
	sbc hl,de
.l5a37
	ld c,l
	ld a,h
	call l5ae5
	ld l,c
	ld h,a
	pop af
	jp nc,l5a48
	ex de,hl
	ld hl,#0001
	sbc hl,de
.l5a48
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l5a51 equ $ + 2
.l5a4f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a61 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a71 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a81 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a91 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5aa1 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5ab1 equ $ + 2
	db #00,#00,#01,#01,#0f,#0f,#08,#00
.l5abb equ $ + 4
.l5ab9 equ $ + 2
	db #01,#01,#00,#00,#00,#00,#00,#00
.l5ac1 equ $ + 2
	db #00,#00,#01,#01,#0f,#0f,#09,#02
.l5acb equ $ + 4
.l5ac9 equ $ + 2
	db #02,#02,#00,#00,#00,#00,#00,#00
.l5ad3 equ $ + 4
	db #00,#00,#00,#00,#01,#01,#0f,#0f
.l5add equ $ + 6
.l5adb equ $ + 4
	db #0a,#04,#02,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l5ae5
	ld hl,#0000
	ld d,h
.l5aea equ $ + 1
	ld e,#00
	ld b,#10
.l5aed
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr l5af7
	add hl,de
.l5af7
	ccf
	djnz l5aed
	rl c
	rla
	ret
.l5afe
	dw #0000,#0777,#070c,#06a7
	dw #0647,#05ed,#0598,#0547
	dw #04fc,#04b4,#0470,#0431
	dw #03f4,#03bc,#0386,#0353
	dw #0324,#02f6,#02cc,#02a4
	dw #027e,#025a,#0238,#0218
	dw #01fa,#01de,#01c3,#01aa
	dw #0192,#017b,#0166,#0152
	dw #013f,#012d,#011c,#010c
	dw #00fd,#00ef,#00e1,#00d5
	dw #00c9,#00be,#00b3,#00a9
	dw #009f,#0096,#008e,#0086
	dw #007f,#0077,#0071,#006a
	dw #0064,#005f,#0059,#0054
	dw #0050,#004b,#0047,#0043
	dw #003f,#003c,#0038,#0035
	dw #0032,#002f,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020
.l5b90
	db #0f,#3c,#de,#d5,#5b,#10,#12,#0d
	db #0d,#07,#18,#de,#4e,#5d,#de,#4e
	db #5d,#07,#15,#de,#4e,#5d,#de,#4e
	db #5d,#07,#13,#de,#4e,#5d,#07,#11
	db #de,#4e,#5d,#0e,#0e,#04,#0f,#08
	db #de,#d5,#5b,#10,#12,#07,#00,#0c
	db #0c,#0b,#19,#01,#24,#02,#c0,#bf
	db #09,#c0,#00,#09,#c0,#00,#09,#c0
	db #00,#ff,#0a,#90,#5b,#0c,#0d,#0b
	db #05,#04,#05,#1f,#02,#60,#02,#0e
	db #0e,#0e,#02,#30,#02,#0d,#0d,#0d
	db #02,#18,#02,#02,#18,#02,#0e,#0e
	db #0e,#02,#30,#02,#02,#30,#02,#02
	db #30,#02,#02,#30,#02,#0d,#0d,#0d
	db #ff
.l5c01
	db #0f,#02,#07,#18,#de,#4e,#5d,#07
	db #15,#de,#4e,#5d,#07,#11,#de,#4e
	db #5d,#07,#13,#de,#4e,#5d,#10,#de
	db #39,#5d,#de,#66,#5c,#0f,#02,#07
	db #18,#de,#4e,#5d,#07,#15,#de,#4e
	db #5d,#07,#11,#de,#4e,#5d,#07,#13
	db #de,#4e,#5d,#10,#de,#39,#5d,#de
	db #66,#5c,#07,#18,#de,#4e,#5d,#07
	db #15,#de,#4e,#5d,#07,#11,#de,#4e
	db #5d,#07,#13,#de,#4e,#5d,#07,#18
	db #0c,#0c,#0b,#19,#01,#0f,#02,#c0
	db #bb,#09,#c0,#00,#09,#c0,#00,#09
	db #c0,#00,#0a,#01,#5c,#0c,#0f,#0f
	db #02,#07,#18,#01,#14,#02,#30,#18
	db #01,#18,#02,#60,#30,#01,#14,#02
	db #30,#18,#01,#19,#02,#60,#30,#01
	db #14,#02,#30,#18,#01,#18,#02,#60
	db #30,#01,#14,#02,#30,#18,#01,#18
	db #02,#60,#30,#01,#19,#02,#60,#30
	db #01,#18,#02,#60,#30,#10,#0f,#02
	db #01,#11,#02,#30,#18,#01,#14,#02
	db #60,#30,#01,#11,#02,#30,#18,#01
	db #16,#02,#60,#30,#01,#11,#02,#30
	db #18,#01,#14,#02,#60,#30,#01,#11
	db #02,#30,#18,#01,#14,#02,#60,#30
	db #01,#16,#02,#60,#30,#01,#14,#02
	db #60,#30,#10,#01,#0f,#02,#30,#18
	db #01,#13,#02,#60,#30,#01,#0f,#02
	db #30,#18,#01,#14,#02,#60,#30,#01
	db #0f,#02,#30,#18,#01,#13,#02,#60
	db #30,#01,#0f,#02,#30,#18,#01,#13
	db #02,#60,#30,#01,#14,#02,#60,#30
	db #01,#13,#02,#60,#30,#01,#0d,#02
	db #30,#18,#01,#11,#02,#60,#30,#01
	db #0d,#02,#30,#18,#01,#12,#02,#60
	db #30,#01,#0d,#02,#30,#18,#01,#11
	db #02,#60,#30,#01,#0d,#02,#30,#18
	db #01,#11,#02,#60,#30,#01,#12,#02
	db #60,#30,#01,#11,#02,#60,#30,#ff
	db #07,#18,#de,#4e,#5d,#07,#15,#de
	db #4e,#5d,#07,#11,#de,#4e,#5d,#07
	db #13,#de,#4e,#5d,#ff,#0f,#02,#0c
	db #0b,#0b,#04,#01,#14,#02,#30,#24
	db #0e,#0e,#02,#30,#18,#02,#30,#18
	db #0d,#01,#20,#02,#30,#18,#02,#30
	db #18,#02,#30,#18,#02,#30,#18,#0e
	db #02,#30,#18,#0d,#0d,#10,#ff
.l5d78
	db #0c,#0e,#0b,#0f,#0d,#de,#43,#5f
	db #0f,#02,#de,#04,#5f,#10,#de,#89
	db #5e,#de,#b8,#5d,#0b,#0f,#de,#43
	db #5f,#0f,#02,#de,#04,#5f,#10,#de
	db #89,#5e,#de,#b8,#5d,#de,#57,#5f
	db #08,#00,#0c,#0e,#0b,#19,#01,#19
	db #02,#c0,#bb,#09,#c0,#00,#09,#c0
	db #00,#09,#c0,#00,#0a,#78,#5d,#ff
	db #0f,#02,#07,#18,#01,#14,#02,#30
	db #18,#01,#1b,#02,#60,#30,#01,#14
	db #02,#30,#18,#01,#1d,#02,#60,#30
	db #01,#14,#02,#30,#18,#01,#1b,#02
	db #60,#30,#01,#14,#02,#30,#18,#01
	db #1b,#02,#60,#30,#01,#1d,#02,#60
	db #30,#01,#1b,#02,#60,#30,#10,#0f
	db #02,#01,#11,#02,#30,#18,#01,#18
	db #02,#60,#30,#01,#11,#02,#30,#18
	db #01,#19,#02,#60,#30,#01,#11,#02
	db #30,#18,#01,#18,#02,#60,#30,#01
	db #11,#02,#30,#18,#01,#18,#02,#60
	db #30,#01,#19,#02,#60,#30,#01,#18
	db #02,#60,#30,#10,#01,#0f,#02,#30
	db #18,#01,#16,#02,#60,#30,#01,#0f
	db #02,#30,#18,#01,#18,#02,#60,#30
	db #01,#0f,#02,#30,#18,#01,#16,#02
	db #60,#30,#01,#0f,#02,#30,#18,#01
	db #16,#02,#60,#30,#01,#18,#02,#60
	db #30,#01,#16,#02,#60,#30,#01,#0d
	db #02,#30,#18,#01,#14,#02,#60,#30
	db #01,#0d,#02,#30,#18,#01,#16,#02
	db #60,#30,#01,#0d,#02,#30,#18,#01
	db #14,#02,#60,#30,#01,#0d,#02,#30
	db #18,#01,#14,#02,#60,#30,#01,#16
	db #02,#60,#30,#01,#14,#02,#60,#30
	db #ff,#07,#18,#01,#19,#02,#30,#18
	db #01,#16,#02,#30,#18,#01,#18,#02
	db #30,#18,#01,#19,#02,#60,#30,#01
	db #16,#02,#30,#18,#01,#18,#02,#30
	db #18,#01,#19,#02,#60,#30,#01,#1d
	db #02,#30,#18,#01,#1b,#02,#30,#18
	db #01,#19,#02,#60,#30,#01,#18,#02
	db #30,#18,#01,#16,#02,#60,#30,#01
	db #1b,#02,#30,#18,#01,#19,#02,#30
	db #18,#01,#16,#02,#30,#18,#01,#1b
	db #02,#60,#30,#01,#19,#02,#30,#18
	db #01,#16,#02,#30,#18,#01,#1b,#02
	db #60,#30,#01,#1f,#02,#30,#18,#01
	db #1b,#02,#30,#18,#01,#19,#02,#60
	db #30,#01,#16,#02,#30,#18,#01,#13
	db #02,#60,#30,#ff,#07,#18,#01,#18
	db #02,#30,#18,#01,#14,#02,#30,#18
	db #01,#16,#02,#30,#18,#01,#18,#02
	db #60,#30,#01,#14,#02,#30,#18,#01
	db #16,#02,#30,#18,#01,#18,#02,#60
	db #30,#01,#1b,#02,#30,#18,#01,#19
	db #02,#30,#18,#01,#18,#02,#60,#30
	db #01,#16,#02,#30,#18,#01,#14,#02
	db #60,#30,#ff,#07,#18,#de,#6c,#5f
	db #07,#15,#de,#ae,#5f,#07,#11,#de
	db #6c,#5f,#07,#13,#de,#6c,#5f,#07
	db #18,#de,#6c,#5f,#07,#15,#de,#ae
	db #5f,#07,#11,#de,#6c,#5f,#07,#13
	db #de,#f0,#5f,#ff
	db #01,#14,#02,#30,#18,#01,#0f,#02
	db #30,#18,#01,#16,#02,#30,#18,#01
	db #0f,#02,#30,#18,#01,#18,#02,#60
	db #30,#01,#16,#02,#30,#18,#01,#14
	db #02,#60,#30,#01,#0f,#02,#30,#18
	db #01,#16,#02,#30,#18,#01,#0f,#02
	db #30,#18,#01,#18,#02,#30,#18,#01
	db #16,#02,#30,#18,#01,#14,#02,#60
	db #30,#ff,#01,#14,#02,#30,#18,#01
	db #0f,#02,#30,#18,#01,#16,#02,#30
	db #18,#01,#0f,#02,#30,#18,#01,#17
	db #02,#60,#30,#01,#16,#02,#30,#18
	db #01,#14,#02,#60,#30,#01,#0f,#02
	db #30,#18,#01,#16,#02,#30,#18,#01
	db #0f,#02,#30,#18,#01,#17,#02,#30
	db #18,#01,#16,#02,#30,#18,#01,#14
	db #02,#60,#30,#ff,#01,#14,#02,#30
	db #18,#01,#0f,#02,#30,#18,#01,#16
	db #02,#30,#18,#01,#18,#02,#60,#30
	db #01,#14,#02,#30,#18,#01,#19,#02
	db #30,#18,#01,#1b,#02,#60,#30,#01
	db #14,#02,#30,#18,#01,#1d,#02,#30
	db #18,#01,#1e,#02,#60,#30,#01,#1d
	db #02,#30,#18,#01,#1b,#02,#60,#30
	db #ff
;
; .l602d
; ld a,(l56f4)
; ld (#c008),a
; ld hl,l6066
; ld b,#0a
; ld a,#ff
; .l603a
; and (hl)
; inc hl
; djnz l603a
; cp #ff
; jp z,l602d
; ret
;
.l6044
	push bc
	push af
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
	pop af
	pop bc
	ret
;
.play_music	; added by Megachur
;
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	jp real_play_music
;
.music_info
	db "Equinox (1986)(Mikro-Gen)()",0
	db "",0

	read "music_end.asm"
