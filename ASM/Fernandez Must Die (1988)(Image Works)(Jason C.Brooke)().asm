; Music of Fernandez Must Die (1988)(Image Works)(Jason C.Brooke)()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FERNANMD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #96e0

	read "music_header.asm"

;
.play_music
;
	push ix
	ld a,#00
.l96e5 equ $ + 1
	add #00
	ld (l96e5),a
	jr c,l973d
	ld ix,l9aac
	ld a,(l9937)
	or a
	jr z,l970e
.l96f6 equ $ + 1
	ld a,#00
	add #00
.l96fa equ $ + 1
	add #00
	ld (l96fa),a
	jr nc,l970e
	ld b,#00
	call l97ef
	call l97ed
	call l97ed
	ld lx,l9aac	;#ac
.l970f equ $ + 1
.l970e
	ld a,#00
	ld (l971d),a
	call l992f
	call l992d
	call l992d
.l971d equ $ + 1
	ld a,#00
	ld c,#06
	call l9a01
	ld hl,l9aae
	ld a,#fe
	or (hl)
	dec l
	ld c,(hl)
	dec l
	rr c
	rla
	ld c,(hl)
	rr c
	rla
	ld c,a
	add a
	add a
	add a
	xor c
	ld c,#07
	call l9a01
.l973d
	pop ix
	ret
.l9740
	sub a
	ld (l9937),a
	push bc
	push de
	ld bc,l9b1b
	ld (bc),a
	inc bc
	ld (bc),a
	inc bc
	ld (bc),a
	ld e,#08
	call l9a00
	call l99ff
	call l99ff
	pop de
	pop bc
	ret
.jumps_table
	db #e2,#7c,#48,#70,#73,#10,#59,#84
	db #06,#3a,#7d,#77,#32,#25
	pop hl
;
.stop_music
;
	sub a
	ld (l9937),a
	jr l970e
	ld a,(ix+#15)
	ld l,(ix+#09)
	ld h,(ix+#0c)
	add #02
	cp (ix+#0f)
	jr c,l9784
	ld a,(ix+#12)
.l9784
	ld c,a
	add hl,bc
	ld e,(hl)
	inc l
	ld d,(hl)
	ld (ix+#15),a
	jr l9802
	ld a,(de)
	ld (ix+#4e),a
	inc de
	ld a,(de)
	ld (ix+#51),a
	inc de
	jr l9802
	ld (ix+#33),a
	jr l9802
	ld a,(de)
	inc de
	ld (ix+#48),a
	jr l9802
	ld a,(de)
	inc de
	ld (ix+#24),a
	ld a,(de)
	inc de
	ld (ix+#27),a
	ld a,(de)
	inc de
	ld (ix+#2a),a
	set 3,(ix+#4b)
	jr l9802
	ld a,(de)
.l97bc
	inc de
	ld (ix+#42),a
	ld a,(de)
	inc de
	ld (ix+#45),a
	add a
	ld (ix+#3f),a
	set 4,(ix+#4b)
	jr l9802
	set 7,(ix+#4b)
	set 6,(ix+#4b)
	jr l9802
	ld (ix+#4b),b
	jr l9802
	ld a,(de)
	inc de
	ld (l99df),a
	set 2,(ix+#4b)
	set 1,(ix+#4b)
	jr l9802
.l97ed
	inc lx
.l97ef
	dec (ix+#2d)
	ld a,(ix+#4b)
	jr nz,l9832
	and #30
	ld (ix+#4b),a
	ld e,(ix+#03)
	ld d,(ix+#06)
.l9802
	ld a,(de)
	inc de
	cp #b0
	jr c,l9826
	add #20
	jr c,l981b
	add #20
	jr c,l9821
	ld c,a
	ld hl,l9af7
	add hl,bc
	ld c,(hl)
	ld (ix+#1e),c
	jr l9802
.l981b
	inc a
	ld (ix+#30),a
	jr l9802
.l9821
	ld (ix+#3c),a
	jr l9802
.l9826
	or a
	jp p,l984a
	ld c,a
	ld hl,jumps_table-&80 ; &96dc
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l9832
	add a
	ret p
	sbc a
	or #01
	add (ix+#33)
	ld (ix+#33),a
	ret
	bit 0,(ix+#6f)
	jr nz,l987e
	ld (ix+#39),#f0
	jr l987e
.l984a
	ld (ix+#18),b
	ld (ix+#1b),b
	ld c,(ix+#1e)
	ld (ix+#21),c
	bit 7,(ix+#33)
	ld (ix+#33),a
	jr nz,l9871
	bit 0,(ix+#6f)
	jr nz,l987e
	ld (ix+#39),b
	ld (ix+#36),b
	ld c,(ix+#3c)
	ld (ix+#6c),c
.l9871
	ld c,b
	sub #54
	jr c,l987b
	ld c,#02
	ld (l970f),a
.l987b
	ld (ix+#00),c
.l987e
	ld a,(ix+#30)
	ld (ix+#2d),a
	ld (ix+#06),d
	ld (ix+#03),e
	ret
.l988b
	ld c,(ix+#75)
.l988e
	ld a,(ix+#39)
	cp #f0
	ld d,#00
	ret nc
	sub #10
	ld (ix+#39),a
	ret nc
	ld hl,l9bf0
	ld e,(ix+#6c)
	add hl,de
	ld a,(hl)
	add (ix+#36)
	ld e,a
	add hl,de
	ld a,(hl)
	inc (ix+#36)
	ld (ix+#39),a
	ret
.l98b1
	ld (ix+#6f),b
	ld (ix+#39),#f0
	ret
.l98b9
	ret m
	cp (ix+#69)
	jr z,l98c4
	dec (ix+#69)
	jr z,l98b1
.l98c4
	ld a,(ix+#54)
	ld hl,l9db4
	add a
	ld c,a
	add a
	add a
	add hl,bc
	ld c,a
	add hl,bc
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld l,(ix+#63)
	ld h,(ix+#66)
	add hl,de
	ex de,hl
	pop hl
	push hl
	ld c,#07
	add hl,bc
	ld a,(hl)
	dec hl
	ld c,(hl)
	dec (ix+#5a)
	jr nz,l98fe
	ld (ix+#5a),a
	rrc (ix+#5d)
	jr c,l98f7
	dec hl
	dec hl
.l98f7
	dec hl
	ld a,(hl)
	dec hl
	ld l,(hl)
	ld h,a
	add hl,de
	ex de,hl
.l98fe
	dec (ix+#57)
	pop hl
	jr nz,l990a
	ld (ix+#57),c
	ld e,(hl)
	inc hl
	ld d,(hl)
.l990a
	ld (ix+#63),e
	ld (ix+#66),d
	ld a,e
	rrc (ix+#60)
	res 0,(ix+#00)
	jr nc,l9921
	inc (ix+#00)
	ld (l971d),a
.l9921
	ex de,hl
	call l99f7
	call l988b
	and #0f
	jp l9a01
.l992d
	inc lx
.l992f
	sub a
	ld b,a
	cp (ix+#6f)
	jr nz,l98b9
.l9937 equ $ + 1
.music_end equ $ + 1
	cp #00
	ld c,(ix+#75)
	jp z,l9a01
	call l988e
	or #f0
	add #0f
	inc a
	jr c,l9949
	sub a
.l9949
	call l9a01
	ld hl,l9be8
	ld e,(ix+#21)
	inc e
	add hl,de
	ld a,(hl)
	or a
	jp p,l9962
	inc a
	jr z,l9965
	ld e,(ix+#1e)
	dec a
	and #7f
.l9962
	ld (ix+#21),e
.l9965
	add (ix+#33)
	add (ix+#48)
	add a
	ld hl,l9b24
	ld e,a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld c,(ix+#4b)
	bit 4,c
	jr z,l99a6
	sub a
	or (ix+#42)
	jr nz,l9983
	inc a
	and c
.l9983
	ld b,(ix+#3f)
	ld l,a
	ld a,(ix+#45)
	bit 5,c
	jr nz,l9995
	sub l
	jr nz,l999b
	set 5,c
	jr l999b
.l9995
	add l
	cp b
	jr nz,l999b
	res 5,c
.l999b
	ld (ix+#45),a
	srl b
	sub b
	ld l,a
	sbc a
	ld h,a
	add hl,de
	ex de,hl
.l99a6
	ld a,c
	xor #01
	ld (ix+#4b),a
	bit 3,c
	jr z,l99cf
	ld b,(ix+#2a)
	djnz l99cc
	ld c,(ix+#24)
	ld b,(ix+#27)
	ld l,(ix+#18)
	ld h,(ix+#1b)
	add hl,bc
	ld (ix+#18),l
	ld (ix+#1b),h
	add hl,de
	ex de,hl
	jr l99cf
.l99cc
	ld (ix+#2a),b
.l99cf
	cpl
	and #03
	ld a,(ix+#00)
	ld c,a
	res 0,c
	rra
	jr nz,l99e2
	ld hl,l971d
.l99df equ $ + 1
	ld (hl),#10
	or #01
.l99e2
	or c
	bit 2,(ix+#4b)
	jr z,l99ed
	res 1,(ix+#4b)
.l99ed
	ld (ix+#00),a
	ld l,(ix+#4e)
	ld h,(ix+#51)
	add hl,de
.l99f7
	ld e,(ix+#72)
	ld a,l
	call l9a00
	ld a,h
.l99ff
	inc e
.l9a00
	ld c,e
.l9a01
	push af
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	out (c),c
	sub a
	out (c),a
	ld b,#f4
	pop af
	out (c),a
	ld bc,#f681
	out (c),c
	ld c,#00
	out (c),c
	ret
;
.init_music
.l9a1d
;
	push af
	call l9740
	pop af
	push bc
	push de
	push hl
	ld de,l9aad
	ld bc,#0071
	ld hl,l9aac
	push hl
	ld (hl),b
	ldir
	ld hl,l9bda
	ld a,(hl)
	inc hl
	ld (l96f6),a
	ex (sp),ix
	ld bc,#0301
	ld a,#ff
	ld (l96fa),a
.l9a44
	ld a,(hl)
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#2d),c
	ld (ix+#09),e
	ld (ix+#0c),d
	ld a,(de)
	ld (ix+#03),a
	inc e
	ld a,(de)
	ld (ix+#06),a
	inc lx
	djnz l9a44
	pop ix
	ld hl,l9937
	ld (hl),c
	pop hl
	pop de
	pop bc
	ret
	ld c,#02
.l9a74	; sound fx ?
	push bc
	push de
	push hl
	ld hl,l9b03
	ld b,#00
	add hl,bc
	push hl
	ex (sp),ix
	ex de,hl
	ld (ix+#18),#01
	ld (ix+0-&1e),b	;#e2),b
	ld (ix+0-&21),b	;#df),b
	ld (ix+0-&03),a	;#fd),a
	pop ix
	add a
	ld c,a
	add a
	add a
	ld hl,l9dbe
	add hl,bc
	ld c,a
	add hl,bc
	add hl,bc
	ld c,#08
.l9a9d
	ldi
	inc de
	inc de
	jp pe,l9a9d
	ld a,#ff
	ld (de),a
	pop hl
	pop de
	pop bc
	ret
	db #20
.l9aac
	db #53
.l9aad
	db #4e
.l9aae
	db #44,#20,#4d,#6f,#64,#75,#6c,#65
	db #20,#28,#43,#29,#20,#31,#39,#38
	db #36,#2d,#31,#39,#38,#38,#20,#4a
	db #61,#73,#2e,#43,#2e,#42,#72,#6f
	db #6f,#6b,#65,#2e,#20,#54,#68,#69
	db #73,#20,#76,#65,#72,#73,#69,#6f
	db #6e,#20,#77,#61,#73,#20,#63,#6f
	db #6d,#70,#6c,#65,#74,#65,#64,#20
	db #32,#30,#74,#68,#20,#4a,#75,#6c
	db #79
.l9af7
	db #20,#31,#39,#38,#38,#2e,#20,#46
	db #69,#72,#73,#74
.l9b03
	db #20,#76,#65,#72,#73,#69,#6f,#6e
	db #20,#77,#72,#69,#74,#74,#65,#6e
	db #20,#4a,#75,#6e,#65,#20,#31,#39
.l9b1b
	db #38,#38,#2e,#00,#02,#04,#08,#09
	db #0a
.l9b24
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
.l9bcc
	dw l9c38
.l9bce
	dw l9cac,l9cb0,l9cd7
	dw l9d15,l9d2a
.l9bd8
	dw l9d84
.l9bda
	db #40
	db #02,#00
	dw l9bcc
	db #0a,#00
	dw l9bce
	db #02,#00
	dw l9bd8
	db #00
.l9be8
	db #01,#80,#00,#0c,#04,#07,#03,#89
.l9bf0
	db #07,#0d,#14,#19,#20,#29,#35,#0b
	db #0e,#0d,#0c,#0b,#0a,#f3,#3f,#3e
	db #3d,#3c,#3b,#3a,#79,#f8,#2c,#2d
	db #3e,#3d,#3c,#fb,#0c,#0a,#07,#06
	db #05,#04,#03,#f0,#0d,#0c,#0a,#09
	db #08,#07,#06,#05,#04,#f0,#1c,#4b
	db #4a,#49,#48,#47,#46,#45,#44,#43
	db #42,#41,#f0,#0a,#08,#07,#06,#05
	db #04,#f0,#ff,#80,#80,#80,#80,#85
.l9c38
	db #c0,#86,#03,#06,#8b,#00,#e1,#0c
	db #18,#8a,#0c,#18,#e3,#8a,#0c,#18
	db #8a,#e1,#0c,#18,#8a,#0c,#18,#e3
	db #8a,#0c,#18,#8a,#e1,#0c,#18,#8a
	db #0c,#18,#e3,#8a,#0c,#18,#8a,#e1
	db #0c,#18,#8a,#0c,#18,#e3,#8a,#0c
	db #18,#8a,#e1,#09,#15,#8a,#09,#15
	db #e3,#8a,#09,#15,#8a,#e1,#09,#15
	db #8a,#09,#15,#e3,#8a,#09,#15,#8a
	db #e1,#05,#11,#8a,#05,#11,#e3,#8a
	db #05,#11,#8a,#e1,#05,#11,#8a,#05
	db #11,#e3,#8a,#05,#11,#8a,#e1,#07
	db #13,#8a,#07,#13,#e3,#8a,#07,#13
	db #8a,#e1,#07,#13,#8a,#07,#13,#e3
	db #8a,#07,#13,#85
.l9cac
	db #c2,#86,#00,#01
.l9cb0
	db #ef,#30,#ff,#2b,#e3,#28,#29,#2b
	db #2d,#ef,#32,#31,#e1,#32,#30,#32
	db #30,#32,#30,#32,#30,#34,#35,#34
	db #35,#34,#35,#34,#35,#f7,#37,#e7
	db #80,#89,#f4,#86,#01,#03,#85
.l9cd7
	db #89,#00,#86,#00,#01,#82,#03,#00
	db #18,#e7,#37,#8c,#30,#37,#e3,#30
	db #34,#32,#ef,#37,#e3,#c3,#30,#30
	db #30,#c2,#e7,#3c,#e3,#37,#39,#e7
	db #3c,#e3,#37,#8c,#3c,#e1,#39,#3c
	db #39,#3c,#39,#c3,#2d,#30,#80,#c2
	db #35,#37,#35,#37,#35,#c3,#29,#30
	db #80,#c2,#f7,#37,#e7,#80
.l9d15
	db #82,#fe,#7f,#0d,#e3,#37,#eb,#8c
	db #3c,#e3,#37,#30,#34,#37,#f3,#39
	db #e7,#37,#e3,#34,#85
.l9d2a
	db #c4,#e1,#82,#19,#00,#01,#26,#82
	db #19,#00,#01,#28,#82,#19,#00,#01
	db #29,#82,#19,#00,#01,#2b,#82,#19
	db #00,#01,#2b,#82,#19,#00,#01,#2d
	db #82,#19,#00,#01,#2f,#82,#19,#00
	db #01,#30,#82,#19,#00,#01,#32,#82
	db #19,#00,#01,#34,#80,#82,#19,#00
	db #01,#30,#82,#19,#00,#01,#32,#82
	db #19,#00,#01,#34,#e3,#82,#19,#00
	db #01,#30,#ff,#c5,#b1,#24,#24,#21
	db #1d,#f3,#1f,#b0,#e3,#c3,#1f,#1d
	db #1f,#85
.l9d84
	db #e1,#c4,#82,#19,#00,#01,#24,#c6
	db #82,#14,#00,#01,#24,#82,#14,#00
	db #01,#24,#82,#14,#00,#01,#24,#c4
	db #82,#19,#00,#01,#24,#c6,#82,#14
	db #00,#01,#24,#c4,#82,#19,#00,#01
	db #24,#c6,#82,#14,#00,#01,#24,#85
.l9db4
	db #fa,#7f,#5a,#00,#06,#00,#fa,#7f
	db #00,#01
.l9dbe
	db #00,#01,#55,#00,#5a,#00,#0a,#01
	db #ff,#7f,#87,#00,#1f,#00,#e1,#7f
	db #05,#03,#05,#03,#55,#00,#91,#00
	db #0a,#01,#fb,#7f,#3a,#00,#06,#00
	db #fa,#7f,#03,#01,#03,#01,#55,#00
	db #3a,#00,#0f,#01,#fc,#7f,#0e,#01
	db #e2,#7f,#1e,#00,#00,#02,#00,#02
	db #a5,#00,#0e,#01,#36,#01,#32,#00
	db #96,#00,#23,#00,#dd,#7f,#00,#01
	db #00,#01,#55,#00,#96,#00,#0c,#01
	db #f1,#7f,#aa,#00,#03,#00,#fd,#7f
	db #06,#01,#06,#01,#55,#00,#aa,#00
	db #18,#01,#06,#00,#aa,#00,#01,#00
	db #ff,#7f,#0e,#01,#0e,#01,#55,#00
	db #9b,#00,#1c,#01,#0c,#00,#46,#00
	db #05,#00,#fb,#7f,#00,#01,#00,#01
	db #55,#00,#46,#00,#18,#01,#12,#00
	db #41,#00,#05,#00,#fb,#7f,#10,#01
	db #10,#01,#55,#00,#46,#00,#20,#01
	db #1b,#00,#46,#00,#05,#00,#fb,#7f
	db #0b,#01,#0b,#01,#55,#00,#46,#00
	db #20,#01,#24,#00,#39,#00,#05,#00
	db #fb,#7f,#08,#01,#08,#01,#55,#00
	db #46,#00,#20,#01,#32,#00,#32,#00
	db #05,#00,#fb,#7f,#06,#01,#06,#01
	db #55,#00,#37,#00,#20,#01,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#55,#ff,#04,#00,#04,#01
	db #43,#00,#82,#00,#00,#00,#00,#00
	db #06,#01,#03,#01,#55,#33,#c3,#00
	db #0c,#01,#0d,#00,#13,#00,#0b,#00
	db #f9,#ff,#0e,#01,#09,#01,#55,#ff
	db #1c,#00,#20,#01,#00
;
; #9aac - Hidden message
; "SND Module (C) 1986-1988 Jas.C.Brooke. This version was completed 20th July 1988. First version written June 1988."
;
.music_info
	db "Fernandez Must Die (1988)(Image Works)(Jason C.Brooke)",0
	db "SND Module (C) 1986-1988 Jas.C.Brooke. This version was completed 20th July 1988. First version written June 1988.",0

	read "music_end.asm"
