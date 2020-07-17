; Music of Toobin' (1989)(Domark)(Matt Furniss)()
; Ripped by Megachur the 21/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TOOBIN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #aaa7
FIRST_THEME				equ 0
LAST_THEME				equ 5

	read "music_header.asm"

.laaa7
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
	jr lab39
.lab39
	jp labc7
	jp lac4f
;
.music_end
.lab3f
;
	db #00
	jp lab4a
;
.stop_music
;
	xor a
	ld (lab3f),a
	jp laf24
.lab4a	; sound fx ?
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,lbbdd
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,lae6a
	call laea0
	set 7,(ix+#11)
	ret
.lab77 equ $ + 7
.lab71 equ $ + 1
.lab70
	db #00,#00,#00,#00,#00,#00,#00,#00
.lab7f equ $ + 7
.lab7d equ $ + 5
.lab7c equ $ + 4
.lab7b equ $ + 3
.lab7a equ $ + 2
.lab79 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lab86 equ $ + 6
.lab85 equ $ + 5
	db #00,#00,#00,#00,#00,#08,#00,#00
.lab8f equ $ + 7
.lab8e equ $ + 6
.lab8c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.lab94 equ $ + 4
.lab92 equ $ + 2
.lab91 equ $ + 1
.lab90
	db #00,#00,#00,#00,#00,#00,#00,#00
.lab9b equ $ + 3
.lab9a equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.laba1 equ $ + 1
	db #00,#00,#00
.laba9 equ $ + 6
.laba7 equ $ + 4
.laba6 equ $ + 3
.laba5 equ $ + 2
.laba4 equ $ + 1
.laba3
	db #00,#00,#00,#00,#00,#00,#00,#00
.labaf equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
;
.labc7
.init_music
;
	push af
	call laf24
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,lb958
	add l
	ld l,a
	jr nc,labd8
	inc h
.labd8
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lab71),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lab86),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lab9b),de
	xor a
	ld (lab7a),a
	ld (lab8f),a
	ld (laba4),a
	ld (lab7f),a
	ld (lab94),a
	ld (laba9),a
	cpl
	ld (lab7b),a
	ld (lab90),a
	ld (laba5),a
	ld a,#01
	ld (lab79),a
	ld (lab8e),a
	ld (laba3),a
	ld (lab7c),a
	ld (lab91),a
	ld (laba6),a
	ld hl,labaf
	ld bc,#030a
.lac27
	xor a
.lac28
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,lac28
	djnz lac27
	ld hl,lbadf
	ld (lab77),hl
	ld (lab8c),hl
	ld (laba1),hl
	ld a,#ff
	ld (lab7d),a
	ld (lab92),a
	ld (laba7),a
	ld (lab3f),a
	ret
;
.play_music
.lac4f
;
	call laf5c
	ld a,(lab3f)
	and a
	ret z
	ld a,(lab7d)
	or a
	jr nz,lac67
	ld a,(lab92)
	or a
	jr nz,lac67
	ld a,(laba7)
	or a
.lac67
	ld (lab3f),a
	jr nz,lac7a
	ld a,(lae69)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (lab3f),a
	ret
.lac7a
	ld iy,lab70
	ld ix,lae6a
	call lac98
	ld iy,lab85
	ld ix,lae7c
	call lac98
	ld iy,lab9a
	ld ix,lae8e
.lac98
	call ladd9
	ld a,(iy+#0b)
	and a
	jr z,lad1d
.laca1
	dec (iy+#09)
	jr z,lacb8
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr lad1d
.lacb8
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.lacc2
	ld a,(hl)
	cp #80
	jr c,lacfd
	cp #fe
	jr nz,lacd4
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp lacc2
.lacd4
	cp #ff
	jr nz,lacdd
	xor a
	ld (iy+#0d),a
	ret
.lacdd
	cp #c0
	jr nc,lacea
	and #1f
	ld (iy+#09),a
	inc hl
	jp lacc2
.lacea
	and #07
	add (iy+#00)
	ld de,labaf
	add e
	ld e,a
	jr nc,lacf7
	inc d
.lacf7
	inc hl
	ldi
	jp lacc2
.lacfd
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,lb8f6
	add hl,bc
	ld e,(hl)
	ld hl,lb927
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr lad23
.lad1d
	ld e,(iy+#05)
	ld d,(iy+#06)
.lad23
	dec (iy+#0c)
	jr z,lad35
	ld a,(de)
	cp #80
	call nc,lad9f
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.lad35
	ld a,(de)
	cp #80
	jr c,lad46
	call lad9f
	ld a,(iy+#0b)
	and a
	jr z,lad35
	jp laca1
.lad46
	cp #7f
	jr z,lad92
	cp #7e
	jr nz,lad57
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp lad6b
.lad57
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,laaa7
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.lad6b
	ld a,(iy+#0f)
	or #c0
	ld (iy+#14),a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld c,a
	ld (iy+#05),e
	ld (iy+#06),d
	ld e,(iy+#07)
	ld a,(iy+#08)
	ld hy,a
	ld ly,e
	bit 7,(ix+#11)
	ret nz
	jp laea0
.lad92
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.lad9f
	ld a,(de)
	cp #88
	jr nc,ladbd
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,labaf
	add hl,bc
	ld c,(hl)
	ld hl,lbadf
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.ladbd
	cp #ff
	jr nz,ladc6
	ld (iy+#0b),#ff
	ret
.ladc6
	cp #c0
	jr nc,ladd1
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.ladd1
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.ladd9
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,laded
	res 7,(iy+#14)
	ret
.laded
	ld d,#07
	bit 6,(iy+#14)
	jr nz,lae21
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,lae21
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,lae10
	inc h
	ld (iy+#11),h
.lae10
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp lae56
.lae21
	ld hl,lb495
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,lae3b
	bit 6,(iy+#14)
	jr nz,lae3b
	ld (iy+#13),#01
	ret
.lae3b
	res 6,(iy+#14)
	ld a,(hl)
	rrca
	rrca
	rrca
	and d
	ld (iy+#12),a
	ld a,(hl)
	and d
	inc a
	ld (iy+#13),a
	ld (iy+#10),l
	ld (iy+#11),h
	ld a,(iy+#0e)
.lae56
	add a
	ld hl,laaa7
	add l
	ld l,a
	jr nc,lae5f
	inc h
.lae5f
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.lae6f equ $ + 6
.lae6e equ $ + 5
.lae6d equ $ + 4
.lae6a equ $ + 1
.lae69
	db #bf,#fe,#f7,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lae80 equ $ + 7
.lae7f equ $ + 6
.lae7c equ $ + 3
.lae7b equ $ + 2
	db #00,#00,#00,#fd,#ef,#12,#00,#00
.lae81
	db #00,#00,#00,#00,#00,#00,#00,#00
.lae8e equ $ + 5
.lae8d equ $ + 4
	db #00,#00,#00,#00,#00,#fb,#df,#24
.lae93 equ $ + 2
.lae92 equ $ + 1
.lae91
	db #00,#00,#00,#00,#00,#00,#00,#00
.lae9f equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00
.laea0
	ld a,ly
	ld (ix+#0f),a
	ld a,hy
	ld (ix+#10),a
	ld (ix+#03),l
	ld (ix+#04),h
	ld (ix+#06),c
	ld a,(iy+#05)
	ld (ix+#07),a
	ld a,(iy+#06)
	and #7f
	srl a
	jr nz,laec4
	ld a,#01
.laec4
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(lae69)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,laeed
	and (ix+#00)
.laeed
	bit 1,c
	jr z,laef4
	and (ix+#01)
.laef4
	ld (lae69),a
	bit 2,c
	jr nz,laf05
	ld hl,lb051
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.laf05
	ld hl,#ffbf
	ld c,#fd
	ld a,(iy+#00)
	ld e,#0d
	call lb109
	ld a,(iy+#04)
	ld e,#0b
	call lb109
	inc e
	xor a
	call lb109
	ld (ix+#05),#ff
	ret
.laf24
	ld c,#fd
	ld hl,#ffbf
	ld e,#07
	ld a,(lae69)
	or #3f
	ld (lae69),a
	call lb109
	xor a
	inc e
	call lb109
	inc e
	call lb109
	inc e
	call lb109
	ld a,#01
	inc e
	call lb109
	inc e
	xor a
	call lb109
	inc e
	call lb109
	ld (lae7b),a
	ld (lae8d),a
	ld (lae9f),a
	ret
.laf5c
	ld a,(lae69)
	and #3f
	cp #3f
	ret z
	ld ix,lae6a
	call lb01f
	ld ix,lae7c
	call lb01f
	ld ix,lae8e
	call lb01f
	ld ix,lae6a
	ld hl,#ffbf
	ld c,#fd
	ld e,#07
	ld a,(lae69)
	call lb109
	ld e,#00
	ld a,(lae6d)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,laf9a
	ld d,a
.laf9a
	call lb109
	inc e
	ld a,(lae6e)
	adc (ix+#0a)
	call lb109
	inc e
	ld a,(lae7f)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,lafb6
	ld d,a
.lafb6
	call lb109
	inc e
	ld a,(lae80)
	adc (ix+#1c)
	call lb109
	inc e
	ld a,(lae91)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,lafd2
	ld d,a
.lafd2
	call lb109
	inc e
	ld a,(lae92)
	adc (ix+#2e)
	call lb109
	inc e
	ld a,d
	rrca
	rrca
	rrca
	call lb109
	ld e,#08
	ld a,(la97e)
	ld d,a
	ld a,(lae6f)
	cp d
	jr c,laff4
	ld a,d
.laff4
	srl a
	srl a
	srl a
	call lb109
	inc e
	ld a,(lae81)
	cp d
	jr c,lb005
	ld a,d
.lb005
	srl a
	srl a
	srl a
	call lb109
	inc e
	ld a,(lae93)
	cp d
	jr c,lb016
	ld a,d
.lb016
	srl a
	srl a
	srl a
	jp lb109
.lb01f
	ld a,(lae69)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,lb040
	cp #ff
	jr z,lb040
	dec (ix+#06)
.lb040
	call lb0c7
	bit 2,(iy+#09)
	jp nz,lb0c0
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.lb051
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,lb060
	ld (ix+#05),a
	ret
.lb060
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,lb070
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lb070
	ld a,(ix+#05)
	add (iy+#01)
	jp m,lb082
	cp (iy+#02)
	jr c,lb082
	ld (ix+#05),a
	ret
.lb082
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,lb092
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lb092
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,lb0a1
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lb0a1
	ld a,(ix+#05)
	add (iy+#03)
	jp m,lb0ae
	ld (ix+#05),a
	ret
.lb0ae
	ld (ix+#05),#00
	ld a,(lae69)
	or (ix+#02)
	ld (lae69),a
	res 7,(ix+#11)
	ret
.lb0c0
	ld a,(ix+#06)
	and a
	ret nz
	jr lb0ae
.lb0c7
	ld a,(ix+#07)
	and a
	jr z,lb0d4
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.lb0d4
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld c,(ix+#0b)
	ld b,(ix+#0c)
	add hl,bc
	ld (ix+#09),l
	ld (ix+#0a),h
	dec (ix+#08)
	ret nz
	ld a,(iy+#06)
	and a
	ret z
	jp p,lb0f8
	ld (ix+#07),#ff
	ret
.lb0f8
	ld (ix+#08),a
	ld a,c
	cpl
	ld c,a
	ld a,b
	cpl
	ld b,a
	inc bc
	ld (ix+#0b),c
	ld (ix+#0c),b
	ret
.lb109
	push bc
	push de
	push hl
	ld c,e
	ld de,#c000
	ld hl,#f680
	ld b,#f4
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ld b,#f4
	out (c),a
	ld b,h
	out (c),l
	out (c),e
	pop hl
	pop de
	pop bc
	ret
.lb129
	db #80,#2d,#08,#2d,#08,#2d,#08,#2d
	db #08,#2d,#08,#2b,#08,#28,#08,#25
	db #08,#80,#2d,#08,#2d,#08,#2d,#08
	db #2d,#08,#2d,#08,#2b,#08,#28,#08
	db #25,#08,#80,#2d,#08,#2b,#08,#28
	db #08,#25,#08,#2d,#08,#2b,#08,#28
	db #08,#25,#08,#81,#2b,#20,#2d,#60
.lb162 equ $ + 1
	db #ff,#85,#0a,#40,#0a,#40,#0a,#20
	db #0a,#28,#0a,#08,#0a,#08,#0a,#08
	db #0a,#08,#0a,#08,#0c,#08,#0e,#08
.lb17a equ $ + 1
	db #ff,#92,#80,#26,#40,#26,#40,#26
	db #20,#26,#28,#90,#83,#22,#08,#22
	db #08,#22,#08,#22,#08,#22,#08,#22
.lb197 equ $ + 6
	db #08,#22,#04,#22,#04,#ff,#82,#12
	db #08,#84,#1e,#08,#83,#22,#08,#84
	db #1e,#08,#82,#12,#08,#84,#1e,#08
	db #83,#22,#08,#84,#1e,#08,#82,#12
	db #08,#84,#1e,#08,#83,#22,#08,#84
	db #1e,#08,#82,#12,#08,#12,#08,#83
	db #22,#08,#84,#1e,#08,#82,#12,#08
	db #84,#1e,#08,#83,#22,#08,#84,#1e
	db #08,#82,#12,#08,#84,#1e,#08,#83
	db #22,#08,#84,#1e,#08,#82,#12,#08
	db #84,#1e,#08,#83,#22,#08,#84,#1e
	db #08,#82,#12,#08,#12,#08,#83,#22
.lb1f7 equ $ + 6
	db #08,#22,#04,#22,#04,#ff,#85,#0f
	db #08,#0f,#08,#13,#08,#13,#08,#16
	db #08,#16,#08,#18,#08,#18,#08,#85
	db #19,#08,#19,#08,#18,#08,#18,#08
	db #16,#08,#16,#08,#13,#08,#13,#08
	db #85,#0a,#08,#0a,#08,#0e,#08,#0e
	db #08,#11,#08,#11,#08,#13,#08,#13
	db #08,#85,#14,#08,#14,#08,#13,#08
	db #13,#08,#11,#08,#11,#08,#0e,#08
.lb23c equ $ + 3
	db #0e,#08,#ff,#80,#7f,#08,#30,#10
	db #2d,#08,#2b,#08,#28,#08,#26,#08
	db #25,#08,#80,#2d,#70,#21,#08,#24
	db #08,#80,#26,#08,#24,#08,#26,#08
	db #28,#08,#26,#08,#24,#08,#21,#08
	db #1f,#08,#80,#24,#08,#21,#08,#24
	db #08,#26,#08,#24,#08,#21,#08,#1f
	db #08,#1c,#08,#81,#21,#40,#7f,#40
.lb27a equ $ + 1
	db #ff,#85,#11,#08,#11,#08,#15,#08
	db #15,#08,#18,#08,#18,#08,#1a,#08
	db #18,#08,#85,#0f,#08,#0f,#08,#13
	db #08,#13,#08,#16,#08,#16,#08,#18
	db #08,#16,#08,#85,#0a,#08,#0a,#08
	db #0e,#08,#0e,#08,#11,#08,#11,#08
	db #13,#08,#13,#08,#85,#14,#08,#14
	db #08,#13,#08,#13,#08,#11,#08,#11
.lb2bf equ $ + 6
	db #08,#0e,#08,#0e,#08,#ff,#85,#0a
	db #08,#0a,#08,#0e,#08,#0e,#08,#11
	db #08,#11,#08,#13,#08,#13,#08,#85
	db #16,#08,#16,#08,#13,#08,#13,#08
	db #11,#08,#11,#08,#0e,#08,#0e,#08
	db #85,#0a,#08,#0a,#08,#0e,#08,#0e
	db #08,#11,#08,#11,#08,#13,#08,#13
	db #08,#85,#14,#08,#14,#08,#13,#08
	db #13,#08,#11,#08,#11,#08,#0e,#08
.lb304 equ $ + 3
	db #0e,#08,#ff,#81,#2b,#10,#80,#2d
	db #38,#30,#10,#2d,#08,#2b,#08,#28
	db #08,#26,#08,#24,#08,#81,#2b,#10
	db #80,#2d,#38,#30,#10,#2d,#08,#2b
	db #08,#28,#08,#26,#08,#24,#08,#ff
.lb329
	db #80,#26,#08,#28,#08,#2b,#08,#26
	db #08,#28,#08,#2b,#08,#26,#08,#28
	db #08,#80,#26,#08,#28,#08,#2b,#08
	db #26,#08,#28,#08,#2b,#08,#26,#08
	db #24,#08,#81,#21,#40,#7f,#40,#ff
.lb351
	db #80,#26,#08,#28,#08,#26,#08,#28
	db #08,#2b,#08,#28,#08,#26,#08,#24
	db #08,#80,#26,#08,#28,#08,#26,#08
	db #28,#08,#26,#08,#24,#08,#21,#08
	db #1f,#08,#81,#21,#40,#7f,#30,#80
.lb37e equ $ + 5
	db #21,#08,#24,#08,#ff,#85,#0f,#08
	db #0f,#08,#13,#08,#13,#08,#16,#08
	db #16,#08,#18,#08,#16,#08,#85,#11
	db #08,#11,#08,#15,#08,#15,#08,#18
	db #08,#18,#08,#1a,#08,#18,#08,#85
	db #0a,#08,#0a,#08,#0e,#08,#0e,#08
	db #11,#08,#11,#08,#13,#08,#11,#10
	db #85,#11,#08,#0f,#08,#0e,#08,#0f
	db #08,#0e,#08,#0a,#08,#08,#08,#ff
.lb3c1
	db #86,#2d,#04,#2b,#04,#28,#04,#25
.lb3cf equ $ + 6
	db #04,#21,#04,#1f,#04,#ff,#81,#1f
	db #1c,#80,#21,#0c,#1c,#08,#1f,#08
.lb3dc equ $ + 3
	db #21,#08,#ff,#80,#26,#08,#26,#08
	db #24,#08,#26,#30,#28,#10,#28,#08
	db #26,#08,#80,#24,#08,#21,#08,#1f
	db #08,#21,#68,#1c,#08,#1f,#08,#21
.lb3fb equ $ + 2
	db #08,#ff,#86,#2d,#04,#2b,#04,#28
	db #04,#26,#04,#86,#2b,#04,#28,#04
	db #26,#04,#24,#04,#86,#26,#04,#24
	db #04,#21,#04,#1f,#04,#86,#24,#04
	db #21,#04,#1f,#04,#1c,#04,#86,#21
	db #04,#1f,#04,#1c,#04,#1a,#04,#86
	db #1f,#04,#1c,#04,#1a,#04,#18,#04
	db #86,#1c,#04,#1a,#04,#18,#04,#15
	db #04,#86,#1a,#04,#18,#04,#15,#04
	db #13,#04,#81,#15,#40,#7f,#40,#ff
.lb449
	db #86,#7f,#0a,#29,#0a,#29,#0a,#2b
	db #0a,#2d,#05,#2b,#05,#86,#29,#05
	db #2d,#05,#2b,#05,#29,#05,#2d,#05
	db #2b,#05,#86,#29,#0a,#24,#0a,#26
	db #0a,#24,#0a,#29,#0a,#29,#0a,#28
	db #0a,#27,#0a,#86,#26,#14,#26,#0a
	db #28,#0a,#29,#05,#28,#05,#26,#05
	db #29,#05,#86,#28,#05,#26,#05,#29
	db #05,#28,#05,#26,#0a,#26,#0a,#24
.lb495 equ $ + 4
	db #0a,#86,#21,#0a,#26,#0a,#24,#05
.lb4a0 equ $ + 7
	db #24,#05,#26,#0a,#24,#0a,#ff,#85
	db #11,#0a,#83,#29,#0a,#85,#0c,#0a
	db #83,#29,#0a,#85,#11,#0a,#83,#29
	db #0a,#85,#0c,#0a,#83,#29,#0a,#85
	db #11,#0a,#83,#29,#0a,#85,#0c,#0a
	db #83,#29,#0a,#85,#11,#0a,#83,#29
	db #0a,#85,#10,#0a,#83,#29,#0a,#85
	db #0e,#0a,#83,#29,#0a,#85,#09,#0a
	db #83,#29,#0a,#85,#0e,#0a,#83,#29
	db #0a,#85,#09,#0a,#83,#29,#0a,#85
	db #0e,#0a,#83,#29,#0a,#85,#09,#0a
	db #83,#29,#0a,#85,#0e,#0a,#83,#29
	db #0a,#85,#0f,#0a,#83,#29,#0a,#ff
.lb501
	db #86,#28,#0a,#2c,#0a,#23,#05,#25
	db #05,#28,#0a,#86,#2a,#05,#2c,#05
	db #2c,#05,#2a,#05,#2c,#05,#28,#05
	db #25,#05,#23,#05,#86,#28,#0a,#2c
	db #0a,#23,#05,#25,#05,#28,#0a,#86
	db #2a,#05,#2c,#05,#2a,#05,#28,#05
	db #2c,#05,#28,#05,#23,#05,#23,#05
	db #86,#25,#0a,#28,#0a,#20,#05,#23
	db #05,#25,#0a,#86,#25,#05,#28,#05
	db #27,#05,#28,#05,#28,#05,#25,#05
	db #23,#05,#20,#05,#86,#25,#0a,#28
	db #0a,#20,#05,#23,#05,#25,#0a,#86
	db #25,#05,#27,#05,#28,#05,#2a,#05
	db #2c,#05,#28,#05,#25,#05,#23,#05
.lb572 equ $ + 1
	db #ff,#86,#7f,#0a,#29,#0a,#29,#0a
	db #2b,#0a,#2d,#05,#2b,#05,#86,#29
	db #05,#2d,#05,#2b,#05,#29,#05,#2d
	db #05,#2b,#05,#86,#29,#0a,#24,#0a
	db #26,#0a,#24,#0a,#29,#0a,#29,#0a
	db #28,#0a,#26,#0a,#86,#24,#14,#24
	db #0a,#26,#0a,#28,#05,#26,#05,#24
	db #05,#86,#28,#05,#26,#05,#24,#05
	db #28,#05,#24,#05,#86,#29,#0a,#24
	db #0a,#26,#0a,#24,#0a,#29,#0a,#24
	db #05,#24,#05,#26,#0a,#24,#0a,#ff
.lb5c9
	db #85,#11,#0a,#83,#29,#0a,#85,#0c
	db #0a,#83,#29,#0a,#85,#11,#0a,#83
	db #29,#0a,#85,#0c,#0a,#83,#29,#0a
	db #85,#11,#0a,#83,#29,#0a,#85,#0c
	db #0a,#83,#29,#0a,#85,#11,#0a,#83
	db #29,#0a,#85,#10,#0a,#83,#29,#0a
	db #85,#0c,#0a,#83,#29,#0a,#85,#07
	db #0a,#83,#29,#0a,#85,#0c,#0a,#83
	db #29,#0a,#85,#07,#0a,#83,#29,#0a
	db #85,#11,#0a,#83,#29,#0a,#85,#0c
	db #0a,#83,#29,#0a,#85,#11,#0a,#83
	db #29,#0a,#85,#0c,#0a,#83,#29,#0a
.lb62a equ $ + 1
	db #ff,#86,#28,#0a,#2c,#0a,#23,#05
	db #25,#05,#28,#0a,#86,#2a,#05,#2c
	db #05,#2c,#05,#2a,#05,#2c,#05,#28
	db #05,#25,#05,#23,#05,#86,#28,#0a
	db #2c,#0a,#23,#05,#25,#05,#28,#0a
	db #86,#2a,#05,#2c,#05,#2a,#05,#28
	db #05,#2c,#05,#28,#05,#23,#05,#23
	db #05,#86,#23,#0a,#27,#0a,#1e,#05
	db #20,#05,#23,#0a,#86,#25,#05,#27
	db #05,#27,#05,#25,#05,#27,#05,#23
	db #05,#20,#05,#1e,#05,#86,#28,#0a
	db #2c,#0a,#23,#05,#25,#05,#28,#0a
	db #86,#2a,#05,#2c,#05,#2a,#05,#28
	db #05,#2c,#05,#28,#05,#23,#05,#23
.lb69b equ $ + 2
	db #05,#ff,#80,#29,#05,#2d,#05,#30
	db #05,#29,#05,#2d,#05,#30,#05,#29
	db #05,#2d,#05,#80,#30,#05,#30,#0a
	db #30,#0a,#2e,#05,#2d,#05,#2b,#05
	db #80,#2d,#0a,#2b,#0a,#29,#0a,#24
	db #0a,#29,#0a,#28,#0a,#26,#0a,#24
	db #0a,#80,#2d,#0a,#29,#0a,#26,#0a
	db #29,#0a,#32,#0a,#2d,#0a,#29,#0a
	db #2d,#0a,#80,#35,#0a,#34,#05,#35
	db #05,#32,#0a,#32,#0a,#30,#05,#32
	db #05,#2d,#0a,#2d,#0a,#2b,#05,#2d
.lb6f3 equ $ + 2
	db #05,#ff,#80,#29,#0f,#26,#05,#29
	db #0f,#26,#05,#29,#05,#2b,#05,#2c
	db #05,#2d,#0a,#2e,#05,#2f,#05,#30
	db #0f,#80,#2d,#0a,#29,#0a,#24,#0a
	db #29,#0a,#29,#05,#29,#05,#28,#0a
	db #26,#0a,#80,#24,#0f,#21,#05,#24
	db #0f,#21,#05,#24,#05,#26,#05,#27
	db #05,#28,#05,#29,#05,#2a,#05,#2b
	db #05,#2d,#05,#80,#29,#0f,#30,#0f
	db #30,#05,#30,#05,#32,#05,#30,#05
	db #2c,#05,#2d,#05,#29,#0a,#24,#0a
.lb74a equ $ + 1
	db #ff,#80,#29,#0f,#26,#05,#29,#0f
	db #26,#05,#29,#05,#2b,#05,#2c,#05
	db #2d,#0a,#2e,#05,#2f,#05,#30,#0f
	db #80,#2d,#0a,#29,#0a,#24,#0a,#29
	db #0a,#29,#05,#29,#05,#28,#0a,#26
	db #0a,#80,#24,#0f,#21,#05,#24,#0f
	db #21,#05,#24,#05,#26,#05,#27,#05
	db #28,#05,#29,#05,#2a,#05,#2b,#05
	db #2d,#05,#80,#29,#14,#83,#29,#0f
	db #29,#05,#29,#0a,#29,#0a,#29,#05
.lb79e equ $ + 5
	db #29,#05,#29,#0a,#ff,#81,#06,#a0
	db #12,#a0,#7f,#a0,#87,#12,#a0,#7f
	db #a0,#06,#a0,#7f,#a0,#15,#a0,#7f
.lb7b7 equ $ + 6
	db #a0,#09,#a0,#7f,#a0,#ff,#81,#07
.lb7bf equ $ + 6
	db #a0,#13,#a0,#7f,#a0,#ff,#81,#08
.lb7c7 equ $ + 6
	db #a0,#14,#a0,#7f,#a0,#ff,#80,#06
	db #0a,#07,#0a,#0d,#0a,#0c,#0a,#ff
.lb7d1
	db #80,#1e,#04,#22,#04,#25,#04,#2a
.lb7db equ $ + 2
	db #04,#ff,#80,#12,#04,#16,#04,#19
	db #04,#16,#04,#19,#04,#1e,#04,#19
	db #04,#1e,#04,#22,#04,#1e,#04,#22
.lb7f7 equ $ + 6
	db #04,#25,#04,#2a,#04,#ff,#80,#7f
	db #08,#12,#04,#16,#04,#19,#04,#16
	db #04,#19,#04,#1e,#04,#19,#04,#1e
	db #04,#22,#04,#1e,#04,#22,#04,#ff
.lb815 equ $ + 4
.lb811
	db #80,#1e,#04,#ff,#80,#2a,#04,#ff
.lb81d equ $ + 4
.lb819
	db #80,#1e,#40,#ff,#81,#2a,#04,#06
.lb823 equ $ + 2
	db #40,#ff,#82,#06,#04,#2a,#80,#ff
.lb82f equ $ + 6
.lb829
	db #80,#06,#04,#12,#20,#ff,#80,#1e
.lb835 equ $ + 4
	db #04,#12,#20,#ff,#84,#1e,#08,#ff
.lb83f equ $ + 6
.lb839
	db #87,#35,#04,#06,#80,#ff,#81,#35
.lb845 equ $ + 4
	db #04,#06,#20,#ff,#82,#1e,#10,#ff
.lb849
	db #85,#12,#0f,#16,#0f,#19,#0a,#12
	db #0f,#16,#0f,#19,#0a,#85,#14,#0f
	db #17,#0f,#1b,#0a,#14,#0f,#17,#0f
	db #1b,#0a,#85,#0d,#0f,#11,#0f,#14
	db #0a,#0d,#0f,#11,#0f,#14,#0a,#85
	db #12,#0f,#16,#0f,#19,#0a,#0d,#0f
.lb87e equ $ + 5
	db #11,#0f,#14,#0a,#ff,#82,#1e,#05
	db #84,#1e,#05,#1e,#05,#1e,#05,#83
	db #12,#05,#84,#1e,#05,#1e,#05,#1e
.lb893 equ $ + 2
	db #05,#ff,#86,#31,#05,#31,#05,#31
	db #05,#31,#05,#31,#05,#31,#05,#31
	db #05,#31,#05,#31,#0f,#80,#2f,#0f
	db #2e,#0a,#2c,#0f,#2a,#37,#80,#2a
	db #0a,#2c,#0f,#2e,#0f,#2f,#0a,#31
	db #0f,#33,#0f,#31,#0a,#2e,#50,#ff
.lb8c1
	db #86,#31,#05,#31,#05,#31,#05,#31
	db #05,#31,#05,#31,#05,#31,#05,#31
	db #05,#31,#0f,#80,#2f,#0f,#2e,#0a
	db #2c,#0f,#2a,#37,#80,#2a,#0a,#2c
	db #0f,#2e,#0f,#2f,#0a,#31,#0f,#33
.lb8ef equ $ + 6
	db #0f,#31,#0a,#2a,#50,#ff,#7f,#a0
.lb8f2 equ $ + 1
	db #ff,#85,#12,#a0,#ff
.lb8f6
;	db #29,#62,#7a,#97,#f7,#3c,#7a,#bf
;	db #04,#29,#51,#7e,#c1,#cf,#dc,#fb
;	db #49,#a0,#01,#72,#c9,#2a,#9b,#f3
;	db #4a,#9e,#b7,#bf,#c7,#d1,#db,#f7
;	db #11,#15,#19,#1d,#23,#29,#2f,#35
;	db #39,#3f,#45,#49,#7e,#93,#c1,#ef
;	db #f2  
	db lb129,lb162,lb17a,lb197
	db lb1f7,lb23c,lb27a,lb2bf
	db lb304,lb329,lb351,lb37e
	db lb3c1,lb3cf,lb3dc,lb3fb
	db lb449,lb4a0,lb501,lb572
	db lb5c9,lb62a,lb69b,lb6f3
	db lb74a,lb79e,lb7b7,lb7bf
	db lb7c7,lb7d1,lb7db,lb7f7
	db lb811,lb815,lb819,lb81d
	db lb823,lb829,lb82f,lb835
	db lb839,lb83f,lb845,lb849
	db lb87e,lb893,lb8c1,lb8ef
	db lb8f2
.lb927
;	db #b1,#b1,#b1,#b1,#b1,#b2,#b2,#b2
;	db #b3,#b3,#b3,#b3,#b3,#b3,#b3,#b3
;	db #b4,#b4,#b5,#b5,#b5,#b6,#b6,#b6
;	db #b7,#b7,#b7,#b7,#b7,#b7,#b7,#b7
;	db #b8,#b8,#b8,#b8,#b8,#b8,#b8,#b8
;	db #b8,#b8,#b8,#b8,#b8,#b8,#b8,#b8
;	db #b8
	db lb129/&100,lb162/&100,lb17a/&100,lb197/&100
	db lb1f7/&100,lb23c/&100,lb27a/&100,lb2bf/&100
	db lb304/&100,lb329/&100,lb351/&100,lb37e/&100
	db lb3c1/&100,lb3cf/&100,lb3dc/&100,lb3fb/&100
	db lb449/&100,lb4a0/&100,lb501/&100,lb572/&100
	db lb5c9/&100,lb62a/&100,lb69b/&100,lb6f3/&100
	db lb74a/&100,lb79e/&100,lb7b7/&100,lb7bf/&100
	db lb7c7/&100,lb7d1/&100,lb7db/&100,lb7f7/&100
	db lb811/&100,lb815/&100,lb819/&100,lb81d/&100
	db lb823/&100,lb829/&100,lb82f/&100,lb835/&100
	db lb839/&100,lb83f/&100,lb845/&100,lb849/&100
	db lb87e/&100,lb893/&100,lb8c1/&100,lb8ef/&100
	db lb8f2/&100
.lb958
	dw lb9be,lb9d3,lb9db,lb9ed
	dw lb9f6,lb9ff,lba08,lba0d
	dw lba16,lba20,lba27,lba36
	dw lba45,lba54,lba69,lba73
	dw lba77,lba78,lba79,lba7d
	dw lba81,lba82,lba84,lba86
	dw lba88,lba8c,lba92,lba93
	dw lba97,lba9d,lba9e,lbaa2
	dw lbaa8,lbaae,lbab0,lbab1
	dw lbab2,lbab4,lbab8,lbab9
	dw lbabb,lbabc,lbabd,lbabf
	dw lbac3,lbac7,lbacb,lbacf
	dw lbad0,lbad6,lbadb
.lb9be
	db #fe,#00,#00,#05,#08,#0a,#09,#88
	db #0c,#0d,#0e,#0f,#08,#0a,#09,#88
.lb9d3 equ $ + 5
	db #0c,#0d,#0e,#0f,#ff,#fe,#ff,#01
.lb9db equ $ + 5
	db #88,#03,#86,#03,#ff,#fe,#ff,#02
	db #04,#06,#07,#04,#0b,#07,#04,#0b
.lb9ed equ $ + 7
	db #07,#04,#0b,#07,#04,#0b,#ff,#fe
	db #ff,#10,#13,#16,#17,#16,#18,#ff
.lb9f6
	db #fe,#00,#12,#15,#12,#15,#12,#15
.lb9ff equ $ + 1
	db #ff,#fe,#ff,#11,#14,#11,#14,#11
.lba0d equ $ + 7
.lba08 equ $ + 2
	db #14,#ff,#fe,#ff,#19,#1a,#ff,#fe
	db #ff,#1a,#fe,#0b,#88,#1c,#19,#ff
.lba16
	db #fe,#ff,#1b,#90,#1c,#fe,#0b,#90
.lba20 equ $ + 2
	db #1c,#ff,#fe,#ff,#88,#03,#84,#03
.lba27 equ $ + 1
	db #ff,#fe,#ff,#07,#04,#0b,#07,#04
	db #0b,#07,#04,#0b,#07,#04,#0b,#ff
.lba36
	db #fe,#0b,#07,#04,#0b,#07,#04,#0b
.lba45 equ $ + 7
	db #07,#04,#0b,#07,#04,#0b,#ff,#fe
	db #ff,#2f,#82,#2b,#fe,#01,#82,#2b
.lba54 equ $ + 6
	db #fe,#ff,#82,#2b,#30,#ff,#fe,#ff
	db #84,#2c,#88,#2c,#88,#2c,#fe,#01
	db #88,#2c,#88,#2c,#fe,#ff,#90,#2c
.lba69 equ $ + 3
	db #84,#2c,#ff,#fe,#ff,#2f,#2d,#2e
.lba73 equ $ + 5
	db #fe,#01,#2d,#2e,#ff,#fe,#ff,#1d
.lba7d equ $ + 7
.lba79 equ $ + 3
.lba78 equ $ + 2
.lba77 equ $ + 1
	db #ff,#ff,#ff,#fe,#fd,#1e,#ff,#fe
.lba84 equ $ + 6
.lba82 equ $ + 4
.lba81 equ $ + 3
	db #fd,#1f,#ff,#ff,#20,#ff,#21,#ff
.lba8c equ $ + 6
.lba88 equ $ + 2
.lba86
	db #21,#ff,#c0,#50,#22,#ff,#c0,#50
.lba93 equ $ + 5
.lba92 equ $ + 4
	db #fe,#03,#22,#ff,#ff,#c1,#50,#23
.lba9d equ $ + 7
.lba97 equ $ + 1
	db #ff,#fe,#04,#c1,#50,#23,#ff,#ff
.lbaa2 equ $ + 4
.lba9e
	db #c0,#50,#24,#ff,#c1,#50,#fe,#02
.lbaa8 equ $ + 2
	db #24,#ff,#c1,#50,#fe,#04,#24,#ff
.lbab4 equ $ + 6
.lbab2 equ $ + 4
.lbab1 equ $ + 3
.lbab0 equ $ + 2
.lbaae
	db #25,#ff,#ff,#ff,#26,#ff,#fe,#02
.lbabd equ $ + 7
.lbabc equ $ + 6
.lbabb equ $ + 5
.lbab9 equ $ + 3
.lbab8 equ $ + 2
	db #26,#ff,#ff,#27,#ff,#ff,#ff,#28
.lbac3 equ $ + 5
.lbabf equ $ + 1
	db #ff,#fe,#02,#28,#ff,#c1,#50,#23
.lbacb equ $ + 5
.lbac7 equ $ + 1
	db #ff,#fe,#01,#29,#ff,#fe,#02,#29
.lbad0 equ $ + 2
.lbacf equ $ + 1
	db #ff,#ff,#fe,#01,#27,#27,#27,#ff
.lbadb equ $ + 5
.lbad6
	db #fe,#00,#27,#27,#ff,#fe,#02,#27
.lbadf equ $ + 1
	db #ff,#7f,#fd,#00,#ff,#7f,#00,#02
	db #02,#00,#01,#7f,#fe,#5a,#fe,#7f
	db #00,#02,#02,#00,#01,#7f,#f8,#00
	db #ff,#7f,#00,#01,#02,#02,#01,#7f
	db #f8,#00,#ff,#7f,#00,#03,#03,#00
	db #03,#7f,#f8,#00,#ff,#6e,#00,#01
	db #01,#00,#02,#7f,#fc,#00,#ff,#7f
	db #00,#02,#02,#00,#01,#7f,#f8,#00
	db #ff,#78,#00,#02,#02,#00,#01,#05
	db #ff,#63,#ff,#7f,#00,#0f,#0a,#00
	db #01,#5a,#ff,#00,#ff,#78,#00,#00
	db #00,#00,#02,#50,#ff,#00,#ff,#7f
	db #00,#05,#0a,#00,#03,#7f,#f6,#00
	db #ff,#7f,#00,#03,#01,#00,#02,#7f
	db #fa,#50,#ff,#7f,#00,#03,#01,#00
	db #01,#7f,#fa,#50,#ff,#7f,#00,#03
	db #01,#00,#01,#7f,#fa,#50,#ff,#7f
	db #00,#03,#01,#00,#01,#7f,#fa,#50
	db #ff,#7f,#00,#03,#01,#00,#01,#7f
	db #fa,#50,#ff,#7f,#00,#03,#01,#00
	db #01,#7f,#fa,#50,#ff,#7f,#00,#03
	db #01,#00,#01,#7f,#fa,#50,#ff,#7f
	db #00,#03,#01,#00,#01,#7f,#fa,#50
	db #ff,#7f,#00,#03,#01,#00,#01,#89
	db #21,#39,#00,#00,#00,#00,#00,#89
	db #19,#39,#00,#00,#00,#00,#00,#89
	db #39,#00,#00,#00,#00,#00,#00,#89
	db #31,#00,#00,#00,#00,#00,#00,#89
	db #21,#00,#00,#00,#00,#00,#00,#89
	db #19,#00,#00,#00,#00,#00,#00,#89
	db #29,#00,#00,#00,#00,#00,#00,#89
	db #49,#00,#00,#00,#00,#00,#00
.lbbdd
	db #0e,#fe,#01,#ff,#7f,#00,#04,#11
	db #00,#01,#53,#00,#28,#7f,#fc,#01
	db #ff,#7f,#00,#00,#1b,#00,#03,#07
	db #00,#14,#7f,#f5,#01,#ff,#7f,#00
	db #00,#5c,#00,#03,#96,#01,#0a,#7f
	db #fe,#01,#ff,#7f,#05,#04,#02,#00
.la97e
	db #7f
;
.music_info
	db "Toobin' (1989)(Domark)(Matt Furniss)",0
	db "",0

	read "music_end.asm"
