; Music of Hot Shot (1988)(Maxwell Technology)()()
; Ripped by Megachur the 03/02/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HOTSHOT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #4c89

	read "music_header.asm"

	ld hl,#0500
	ld de,#c000
	ld b,#18
.l4c91
	push bc
	push de
	ld b,#08
.l4c95
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld a,d
	add #08
	ld d,a
	djnz l4c95
	pop de
	ex de,hl
	ld bc,#0040
	add hl,bc
	ex de,hl
	pop bc
	djnz l4c91
	ld hl,#0400
	xor a
.l4cad
	push af
	ld bc,#0800
.l4cb1
	add a
	rr c
	djnz l4cb1
	ld (hl),c
	inc hl
	pop af
	inc a
	jp nz,l4cad
	xor a
	ld hl,#0700
	ld b,#64
.l4cc3
	ld (hl),a
	inc hl
	add #01
	daa
	djnz l4cc3
	ret
	ld l,b
	ld h,#00
	add hl,hl
	ld de,#0500
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,c
	rra
	rra
	and #3f
	ld l,a
	ld h,#00
	add hl,de
	ld ix,#3983
	ld a,c
	and #03
	ld (l4cec),a
	ld a,(hl)
.l4cec equ $ + 2
	xor (ix+#00)
	ld (hl),a
	ret
.l4cef
	ld (l4d8c),de
	call l4d13
.l4cf6
	ld a,(hl)
	cp #0d
	jp nz,l4d05
	ld de,(l4d8c)
	inc d
	inc hl
	jp l4cef
.l4d05
	push hl
	and #7f
	call l4d5a
	pop hl
	bit 7,(hl)
	ret nz
	inc hl
	jp l4cf6
.l4d13
	push hl
	ld a,e
	add a
	ld l,d
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,#0500
	add hl,de
	or (hl)
	inc hl
	ld d,(hl)
	ld e,a
	pop hl
	ret
.l4d27
	push af
	ld l,d
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld c,e
	ld b,#10
	add hl,bc
	ld c,(hl)
	ld b,#00
	ld ix,#4b6d
	add ix,bc
	pop af
	ret
	push de
	push af
	call l4d27
	call l4d13
	pop af
	inc e
	jr l4d54
	push de
	push af
	call l4d27
	call l4d13
	pop af
.l4d54
	call l4d5a
	pop de
	inc e
	ret
.l4d5a
	push de
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	ld bc,#5f00
	add hl,bc
	ld b,#08
.l4d67
	ld a,(hl)
	rra
	rra
	rra
	rra
	and #0f
	ld (l4d73),a
.l4d73 equ $ + 2
	ld a,(ix+#01)
	ld (de),a
	inc de
	ld a,(hl)
	and #0f
	ld (l4d7e),a
.l4d7e equ $ + 2
	ld a,(ix+#0c)
	ld (de),a
	dec de
	inc hl
	ld a,d
	add #08
	ld d,a
	djnz l4d67
	pop de
	inc de
	inc de
	ret
.l4d8c
	db #0d,#02
	call l4eaf
	ld ix,l53ec	; another theme (but don't work) !?
	jr l4d9e
;
.init_music     ; a = 1 -> 1
;.l4d97
;
	call l4eaf
	ld ix,l5261
.l4d9e
	ld a,(ix+#00)
	ld (l4e72),a
	inc ix
	ld iy,l4de9
	ld b,#03
.l4dac
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (iy+#03),l
	ld (iy+#04),h
	ld (iy+#05),l
	ld (iy+#06),h
	xor a
	ld (iy+#00),a
	ld (iy+#1d),a
	inc a
	ld (iy+#10),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#01),e
	ld (iy+#02),d
	ld de,#0020
	add iy,de
	inc ix
	inc ix
	djnz l4dac
	xor a
	ld (l50ac),a
	inc a
	ld (l4e49),a
	ld (l4e4b),a
	ret
.l4de9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4dfc equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l4e09
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4e1c equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l4e29
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.l4e49
	db #00
;
.play_music
;.l4e4a
;
	music_end equ $ + 1
.l4e4b equ $ + 1
	ld a,#00
	or a
	ret z
.l4e4f equ $ + 1
	ld a,#00
	ld (l4e9b),a
	ld hl,l4e49
	dec (hl)
	jr nz,l4e73
	ld iy,l4de9
	call l4fa9
	ld iy,l4e09
	call l4fa9
	ld iy,l4e29
	call l4fa9
	ld hl,l4e49
.l4e72 equ $ + 1
	ld (hl),#03
.l4e73
	ld iy,l4de9
	call l5051
	ld (l514a),hl
	ld (l5152),a
	ld iy,l4e09
	call l5051
	ld (l514c),hl
	ld (l5153),a
	ld iy,l4e29
	call l5051
	ld (l514e),hl
	ld (l5154),a
.l4e9b equ $ + 1
	ld a,#00
	ld (l5150),a
	ld hl,l5156
	ld a,#0c
.l4ea4
	ld d,a
	ld e,(hl)
	call l4ec9
	dec hl
	dec a
	jp p,l4ea4
	ret
;
.stop_music
.l4eaf
;
	xor a
	ld (l4e4b),a
	ld (l5152),a
	ld (l5153),a
	ld (l5154),a
	ld de,#0d00
.l4ebf
	call l4ec9
	dec d
	jp p,l4ebf
	ld de,#07bf
.l4ec9
	push af
	ld b,#f4
	out (c),d
	ld bc,#f6c0
	out (c),c
	xor a
	out (c),a
	ld b,#f4
	out (c),e
	ld bc,#f680
	out (c),c
	out (c),a
	pop af
	ret
.l4ee3
	dw l4f9f,l4f92,l4fb8,l4fb8
	dw l4f53,l4f8c,l4f88,l4f03
	dw l4f72,l4f6b,l4f33,l4f25
	dw l4f43,l4fb8,l4fb8,l4fa3
.l4f03
	ld l,(iy+#05)
	ld h,(iy+#06)
	inc hl
	inc hl
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l4f1b
	ld l,(iy+#03)
	ld h,(iy+#04)
	ld e,(hl)
	inc hl
	ld d,(hl)
.l4f1b
	dec hl
	ld (iy+#05),l
	ld (iy+#06),h
	jp l4fb8
.l4f25
	ld a,(iy+#1f)
	ld c,a
	and #07
	ld hl,l5139
	xor (hl)
	and c
	xor (hl)
	jr l4f4b
.l4f33
	ld a,(iy+#1f)
	ld c,a
	and #38
	ld hl,l5139
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	jr l4f4e
.l4f43
	ld hl,l5139
	ld a,(iy+#1f)
	cpl
	and (hl)
.l4f4b
	ld (hl),a
	ld a,#01
.l4f4e
	ld (iy+#1e),a
	jr l4fb8
.l4f53
	ld a,(de)
	ld (iy+#0d),a
	ld (iy+#07),#00
	ld (iy+#08),#00
	inc de
	set 2,(iy+#00)
	ld a,(de)
	ld (iy+#0e),a
	inc de
	jr l4fb8
.l4f6b
	ld a,(de)
	inc de
	ld (l50ac),a
	jr l4fb8
.l4f72
	ld a,(de)
	rra
	rra
	rra
	rra
	and #0f
	ld (iy+#1b),a
	ld a,(de)
	and #0f
	ld (iy+#1a),a
	ld (iy+#1c),a
	inc de
	jr l4fb8
.l4f88
	set 7,(iy+#00)
.l4f8c
	set 3,(iy+#00)
	jr l4fb8
.l4f92
	ld a,(de)
	ld (iy+#1d),a
	inc de
	jr l4fb8
	set 1,(iy+#00)
	jr l4fb8
.l4f9f
	xor a
	ld (iy+#13),a
.l4fa3
	res 5,(iy+#00)
	jr l4fe4
.l4fa9
	dec (iy+#10)
	jr nz,l4ff1
	xor a
	ld (iy+#00),a
	ld e,(iy+#01)
	ld d,(iy+#02)
.l4fb8
	ld a,(de)
	inc de
	or a
	jp m,l5004
	ld (iy+#12),a
	bit 0,(iy+#1e)
	jr z,l4fca
	ld (l4e4f),a
.l4fca
	ld a,(iy+#19)
	ld (iy+#13),a
	set 5,(iy+#00)
	set 6,(iy+#00)
	ld a,(iy+#14)
	ld (iy+#16),a
	ld a,(iy+#17)
	ld (iy+#18),a
.l4fe4
	ld a,(iy+#11)
	ld (iy+#10),a
	ld (iy+#01),e
	ld (iy+#02),d
	ret
.l4ff1
	bit 3,(iy+#00)
	ret z
	ld a,(iy+#00)
	rla
	jr nc,l5000
	inc (iy+#12)
	ret
.l5000
	dec (iy+#12)
	ret
.l5004
	cp #c0
	jr c,l5042
	add #20
	jr c,l5027
	add #10
	jr c,l502d
	add #10
	ld c,a
	ld hl,l5217
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (iy+#0b),l
	ld (iy+#09),l
	ld (iy+#0c),h
	ld (iy+#0a),h
	jr l4fb8
.l5027
	inc a
	ld (iy+#11),a
	jr l4fb8
.l502d
	ld (iy+#19),a
	ld a,(de)
	ld (iy+#14),a
	inc de
	ld a,(de)
	ld (iy+#15),a
	inc de
	ld a,(de)
	ld (iy+#17),a
	inc de
	jp l4fb8
.l5042
	ld hl,l4ee3
	and #7f
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l5051
	ld c,(iy+#00)
	bit 5,c
	jr z,l5097
	ld a,(iy+#16)
	sub #10
	jr nc,l507a
	bit 6,c
	jr z,l5084
	add (iy+#13)
	jr nc,l5069
	sbc a
.l5069
	add #10
	ld (iy+#13),a
	ld a,(iy+#18)
	sub #10
	jr nc,l507f
	res 6,c
	ld a,(iy+#15)
.l507a
	ld (iy+#16),a
	jr l5097
.l507f
	ld (iy+#18),a
	jr l5097
.l5084
	cpl
	sub #0f
	add (iy+#13)
	jr c,l508d
	xor a
.l508d
	ld (iy+#13),a
	dec (iy+#18)
	jr nz,l5097
	res 5,c
.l5097
	ld l,(iy+#0b)
	ld h,(iy+#0c)
	bit 7,(hl)
	jr z,l50a7
	ld l,(iy+#09)
	ld h,(iy+#0a)
.l50a7
	ld a,(iy+#12)
	add (hl)
.l50ac equ $ + 1
	add #00
	add a
	ld e,a
	inc hl
	ld (iy+#0b),l
	ld (iy+#0c),h
	ld hl,l5157
	ld d,#00
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(iy+#1d)
	bit 6,l
	jr z,l510d
	ld h,a
	ld b,(iy+#1a)
	sla b
	bit 7,l
	ld a,(iy+#1c)
	jr z,l50d7
	bit 0,c
	jr nz,l50f4
.l50d7
	bit 5,l
	jr nz,l50e6
	sub (iy+#1b)
	jr nz,l50f1
	set 5,(iy+#1d)
	jr l50f1
.l50e6
	add (iy+#1b)
	cp b
	jr c,l50f1
	res 5,(iy+#1d)
	ld a,b
.l50f1
	ld (iy+#1c),a
.l50f4
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l50ff
	dec d
.l50ff
	add #a0
	jr c,l510b
.l5103
	sla e
	rl d
	add #18
	jr nc,l5103
.l510b
	add hl,de
	ex de,hl
.l510d
	ld a,c
	xor #01
	ld (iy+#00),a
	bit 2,c
	jr z,l5138
	ld b,(iy+#0e)
	djnz l5135
	ld c,(iy+#0d)
	bit 7,c
	jr z,l5124
	dec b
.l5124
	ld l,(iy+#07)
	ld h,(iy+#08)
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	add hl,de
	ex de,hl
	jr l5138
.l5135
	ld (iy+#0e),b
.l5139 equ $ + 1
.l5138
	ld a,#38
	ld hl,l5151
	xor (hl)
	and (iy+#1f)
	xor (hl)
	or #80
	ld (hl),a
	ex de,hl
	ld a,(iy+#13)
	ret
.l5151 equ $ + 7
.l5150 equ $ + 6
.l514e equ $ + 4
.l514c equ $ + 2
.l514a
	db #00,#00,#00,#00,#00,#00,#00,#bf
.l5156 equ $ + 4
.l5154 equ $ + 2
.l5153 equ $ + 1
.l5152
	db #0f,#0f,#0f,#00,#00
.l5157
	dw #0eee,#0e18,#0d4d,#0c8e
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
.l5217
	db #0f,#10,#13,#16,#19,#1d,#20,#23
	db #26,#29,#2b,#2d,#2f,#34,#36,#00
	db #87,#00,#03,#07,#87,#00,#04,#07
	db #87,#00,#02,#07,#87,#00,#04,#07
	db #0c,#87,#07,#0c,#0f,#87,#07,#0c
	db #10,#87,#03,#07,#0c,#87,#04,#07
	db #0c,#87,#00,#0c,#87,#00,#03,#87
	db #00,#04,#87,#0c,#0c,#0c,#0c,#00
	db #87,#00,#07,#87,#00,#00,#00,#00
	db #0c,#87
.l5261
	db #04
.l5268 equ $ + 6
	dw l5268,l526c,l527c,l528e
	dw #0000
.l526c
	dw l52e0,l52f0,l530d,l532c
	dw l5358,l5358,l532c,#0000
.l527c
	dw l5377,l52e0,l52e0,l5377
	dw l52e0,l52e0,l5377,l5393
	dw #0000
.l528e
	db #88,#12,#81,#c0,#c0,#e1,#df,#00
	db #21,#05,#8a,#19,#19,#19,#19,#e1
	db #df,#00,#11,#05,#8b,#27,#23,#e3
	db #1f,#e1,#df,#00,#21,#05,#8a,#15
	db #15,#15,#15,#df,#00,#11,#04,#8b
	db #27,#23,#1f,#1b,#df,#00,#21,#05
	db #8a,#17,#17,#17,#17,#df,#00,#11
	db #04,#8b,#27,#23,#e3,#1f,#e1,#df
	db #00,#21,#05,#8a,#12,#12,#12,#12
	db #df,#00,#11,#04,#8b,#3f,#27,#41
.l52e0 equ $ + 2
	db #27,#87,#88,#11,#81,#c0,#c0,#ef
	db #df,#00,#81,#36,#8a,#25,#21,#23
.l52f0 equ $ + 2
	db #25,#87,#88,#22,#81,#c0,#c0,#ef
	db #8a,#da,#51,#21,#36,#3d,#40,#3b
	db #eb,#42,#e1,#40,#42,#ef,#44,#40
.l530d equ $ + 7
	db #3b,#eb,#3d,#e1,#3b,#3d,#87,#88
	db #22,#81,#c0,#c0,#eb,#8a,#da,#51
	db #21,#36,#3d,#e1,#3f,#3d,#eb,#3d
	db #e1,#40,#3d,#eb,#3b,#e1,#3f,#3b
.l532c equ $ + 6
	db #eb,#3d,#e1,#40,#42,#87,#88,#12
	db #81,#c0,#c0,#e1,#8a,#dc,#00,#21
	db #05,#3d,#38,#35,#38,#3d,#3f,#3d
	db #3f,#3d,#39,#34,#39,#3d,#40,#3d
	db #40,#3b,#36,#33,#36,#3b,#3f,#3b
	db #3f,#36,#3d,#40,#42,#36,#3d,#40
.l5358 equ $ + 2
	db #42,#87,#88,#12,#81,#c0,#c0,#8a
	db #da,#51,#21,#36,#ef,#84,#01,#30
	db #44,#84,#01,#30,#40,#e7,#84,#ff
	db #10,#3b,#3f,#ef,#84,#01,#30,#42
.l5377 equ $ + 1
	db #87,#88,#12,#81,#c0,#c0,#e3,#de
	db #11,#21,#05,#8a,#31,#2c,#29,#2c
	db #31,#2d,#28,#2d,#2f,#2a,#27,#2a
.l5393 equ $ + 5
	db #2a,#31,#34,#36,#87,#88,#12,#81
	db #c0,#cb,#e1,#8a,#de,#00,#11,#05
	db #31,#31,#31,#31,#2c,#29,#2c,#29
	db #28,#28,#28,#28,#2d,#31,#2d,#31
	db #2f,#2f,#2f,#2f,#2a,#27,#2a,#27
	db #c0,#2a,#31,#34,#36,#2a,#31,#34
	db #36,#87
;
; sound fx ?
;
	add a
	ld e,a
	ld d,#00
	ld hl,l53f7
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld ix,l4de9
	ld a,(l4dfc)
	or a
	jp z,l53e5
	ld ix,l4e09
	ld a,(l4e1c)
	or a
	jp z,l53e5
	ld ix,l4e29
.l53e5
	ld (ix+#01),e
	ld (ix+#02),d
	ret
.l53ec
	db #01
.l53f3 equ $ + 6
	dw l53f3,l53f3,l53f3,l5407
	dw #0000
.l53f7
	dw l5407,l540a,l5417,l5424
	dw l542d,l543a,l544a,l545a
.l540a equ $ + 3
.l5407
	db #e1,#80,#87,#88,#11,#81,#c0,#e3
	db #8a,#c0,#da,#81,#21,#36,#3c,#87
.l5417
	db #88,#11,#81,#c0,#e3,#8a,#c0,#dc
.l5424 equ $ + 5
	db #00,#21,#36,#39,#87,#c0,#e0,#df
.l542d equ $ + 6
	db #00,#11,#05,#8b,#1f,#87,#88,#11
	db #81,#c0,#e3,#8a,#c1,#dd,#00,#11
.l543a equ $ + 3
	db #36,#39,#87,#88,#12,#81,#c0,#c0
	db #8a,#da,#51,#21,#36,#e7,#84,#01
.l544a equ $ + 3
	db #30,#18,#87,#88,#12,#81,#c0,#c0
	db #8a,#da,#51,#21,#36,#e7,#84,#ff
.l545a equ $ + 3
	db #30,#0c,#87,#88,#11,#81,#c0,#e1
	db #8a,#c1,#dd,#00,#11,#36,#39,#87
;
.music_info
	db "Hot Shot (1988)(Maxwell Technology)()",0
	db "",0

	read "music_end.asm"
