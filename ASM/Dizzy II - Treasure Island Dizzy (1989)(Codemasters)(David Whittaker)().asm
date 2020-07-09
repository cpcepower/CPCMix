; Music of Dizzy II - Treasure Island Dizzy (1989)(Codemasters)(David Whittaker)()
; Ripped by Megachur the 16/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TREASUID.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #a012
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"

;
.init_music
;
	push af
	call la202
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,la8b5
	add hl,bc
	ld a,(hl)
	ld (la0fc),a
	ld (la407),a
	inc hl
	ld ix,la07f
	ld c,#22
	ld a,#03
.la033
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#20),b
	ld hl,la4d9
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,la033
	ld (la362),a
	dec a
	ld (la408),a
	ld (la404),a
	ret
.la07f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.la0a1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.la0c3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music	;la0e5
;
	ld a,(la404)
	ld hl,la405
	or (hl)
	ret z
	call la5e5
	ld a,(la404)
	and a
	jr z,la147
.la0f7 equ $ + 1
	ld a,#00
	ld (la143),a
.la0fc equ $ + 1
	ld a,#01
	ld hl,la408
	add (hl)
	ld (hl),a
	jr nc,la11b
	ld b,#00
	ld ix,la07f
	call la29b
	ld ix,la0a1
	call la29b
	ld ix,la0c3
	call la29b
.la11b
	ld ix,la07f
	call la32f
	ld (la409),hl
	ld (la411),a
	ld ix,la0a1
	call la32f
	ld (la40b),hl
	ld (la412),a
	ld ix,la0c3
	call la32f
	ld (la40d),hl
	ld (la413),a
.la143 equ $ + 1
	ld a,#00
	ld (la40f),a
.la147
	ld a,(la404)
	and a
	jr nz,la15d
	ld (la411),a
	ld (la412),a
	ld (la413),a
	ld a,#3f
	ld (la410),a
	jr la185
.la15d
	ld a,(la406)
	and #0f
	xor #0f
	jr z,la185
	ld b,a
	ld a,(la411)
	sub b
	jr nc,la16e
	xor a
.la16e
	ld (la411),a
	ld a,(la412)
	sub b
	jr nc,la178
	xor a
.la178
	ld (la412),a
	ld a,(la413)
	sub b
	jr nc,la182
	xor a
.la182
	ld (la413),a
.la186 equ $ + 1
.la185
	ld a,#00
	xor #ff
	ld (la186),a
	ld a,(la405)
	and a
	jr z,la1b4
	ld hl,(la416)
	ld (la409),hl
	ld a,(la85d)
.la19b
	ld b,a
	bit 3,a
	jr nz,la1a6
	ld a,(la41c)
	ld (la40f),a
.la1a6
	ld hl,la410
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(la41e)
	ld (la411),a
.la1b4
	ld hl,la413
	ld d,#0a
.la1b9
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,la1b9
	ret
.la1da
	ld de,#0a00
.la1dd
	call la1e7
	dec d
	jp p,la1dd
	ld de,#073f
.la1e7
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	ret
;
.stop_music
.la202
;
	xor a
	ld (la404),a
	call la214
	xor a
	ld (la411),a
	ld (la412),a
	ld (la413),a
	ret
.la214
	xor a
	ld (la405),a
	jp la1da
	db #80
	db #7a
	db #73
	db #7d
	db #56
	db #7b
	db #7a
	db #12
	db #60
	db #51
	db #3c
	db #3b
	db #4e
	db #73
	db #07
	db #71
	db #70
	db #6f
	db #4f
	db #02
	db #01
	pop hl
	jp la202
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,la256
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.la256
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp la2a8
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,la3e9
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp la2a8
	ld a,(de)
	inc de
	ld (la362),a
	jr la2a8
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr la2a8
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr la2a8
	ld (ix+#1d),b
	jr la2a8
.la29b
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.la2a8
	ld a,(de)
	inc de
	and a
	jp m,la2e4
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,la2ba
	ld (la0f7),a
.la2ba
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
	set 5,(ix+#00)
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.la2e4
	cp #c0
	jr c,la327
	add #20
	jr c,la308
	add #10
	jr c,la30f
	add #10
	ld c,a
	ld hl,la4ca
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp la2a8
.la308
	inc a
	ld (ix+#11),a
	jp la2a8
.la30f
	ld hl,la504
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp la2a8
.la327
	ld hl,la19b
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.la32f
	ld c,(ix+#00)
	bit 5,c
	jr z,la361
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,la35b
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,la35b
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.la35b
	ld a,(ix+#18)
	ld (ix+#13),a
.la362 equ $ + 1
.la361
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,la37e
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.la37e
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,la40a
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,la3df
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,la3a8
	bit 0,c
	jr nz,la3c6
.la3a8
	bit 5,l
	jr nz,la3b8
	sub (ix+#1b)
	jr nc,la3c3
	set 5,(ix+#1d)
	sub a
	jr la3c3
.la3b8
	add (ix+#1b)
	cp b
	jr c,la3c3
	res 5,(ix+#1d)
	ld a,b
.la3c3
	ld (ix+#1c),a
.la3c6
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,la3d1
	dec d
.la3d1
	add #a0
	jr c,la3dd
.la3d5
	sla e
	rl d
	add #18
	jr nc,la3d5
.la3dd
	add hl,de
	ex de,hl
.la3df
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.la3e9 equ $ + 1
	ld a,#38
	jr nz,la3f6
	ld a,(la0f7)
	xor #08
	ld (la143),a
	ld a,#07
.la3f6
	ld hl,la410
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.la40b equ $ + 7
.la40a equ $ + 6
.la409 equ $ + 5
.la408 equ $ + 4
.la407 equ $ + 3
.la406 equ $ + 2
.la405 equ $ + 1
.la404
.music_end
	db #00,#00,#0f,#00,#00,#00,#00,#00
.la413 equ $ + 7
.la412 equ $ + 6
.la411 equ $ + 5
.la410 equ $ + 4
.la40f equ $ + 3
.la40d equ $ + 1
	db #00,#00,#00,#00,#3f,#0f,#0f,#0f
.la417 equ $ + 3
.la416 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.la41e equ $ + 2
.la41c
	db #00,#3f,#00,#00,#00,#00
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.la4ca
	db #0f,#0f,#11,#13,#15,#17,#19,#1b
	db #1d,#1f,#20,#21,#22,#23,#24
.la4d9
	db #80,#00,#03,#87,#00,#04,#87,#04
	db #07,#8a,#00,#04,#8a,#07,#0c,#8f
	db #07,#0c,#90,#03,#07,#8c,#04,#07
	db #8c,#00,#8c,#00,#83,#00,#84,#00
	db #85,#00,#87,#0c,#00,#00,#00,#00
	db #00,#00,#80
.la504
	dw la51b,la521,la52d,la53f
	dw la54d,la553,la554,la56d
	dw la56e,la57e,la57f
.la51b equ $ + 1
	db #01,#0f,#0e,#0d,#06,#87
.la521 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#87
.la52d equ $ + 1
	db #01,#0f,#0e,#0c,#0b,#0d,#0c,#0a
	db #09,#0b,#0a,#08,#07,#09,#08,#06
	db #05,#87
.la53f equ $ + 1
	db #01,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#87
.la54d equ $ + 1
	db #01,#0f,#0d,#0c,#0b,#0a,#87
.la553
	db #01
.la554
	db #0f,#0e,#0d,#01,#0c,#01,#0b,#01
	db #0a,#01,#09,#01,#08,#01,#07,#01
	db #06,#01,#05,#01,#04,#01,#02,#01
	db #87
.la56e equ $ + 1
.la56d
	db #05,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #87
.la57f equ $ + 1
.la57e
	db #01,#0e,#0d,#0c,#0b,#0a,#09,#0b
	db #0a,#09,#08,#87
;
; sound effects
;
	ld hl,la405
	ld (hl),#00
	ld hl,la69f
	add a
	add l
	ld l,a
	jr nc,la598
	inc h
.la598
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,la857
.la5a0
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz la5a0
	ld a,(la858)
	ld (la865),a
	ld hl,(la859)
	ld (la416),hl
	ld a,(la85d)
	bit 3,a
	jr nz,la5bd
	ld a,l
	ld (la41c),a
.la5bd
	ld a,(la862)
	ld (la866),a
	ld a,(la864)
	ld (la86b),a
	ld a,(la861)
	ld hl,la7af
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (la867),hl
	ld (la869),hl
	ld a,(hl)
	ld (la41e),a
	ld hl,la405
	inc (hl)
	ret
.la5e5
	call la896
	ld a,(la405)
	and a
	ret z
	ld a,(la857)
	and a
	jr nz,la5fd
	ld a,(la863)
	and a
	jr nz,la5fd
	ld (la405),a
	ret
.la5fd
	dec a
	ld (la857),a
	ld a,(la865)
	and a
	jr nz,la635
	ld a,(la863)
	and a
	jr nz,la613
	ld a,(la860)
	and a
	jr z,la677
.la613
	dec a
	ld (la860),a
	ld a,(la858)
	ld (la865),a
	ld a,(la85e)
	and a
	jr z,la626
	ld a,(la8b1)
.la626
	ld b,a
	ld a,(la859)
	add b
	ld (la416),a
	ld a,(la85a)
	add b
	ld (la417),a
.la635
	ld hl,la865
	dec (hl)
	ld hl,la864
	ld a,(hl)
	and a
	jr z,la647
	ld hl,la86b
	dec (hl)
	jr nz,la66a
	ld (hl),a
.la647
	ld a,(la85f)
	and a
	jr z,la66a
	jp p,la65d
	ld hl,(la416)
	ld de,(la85b)
	add hl,de
	ld (la416),hl
	jr la66a
.la65d
	ld hl,(la416)
	ld de,(la85b)
	and a
	sbc hl,de
	ld (la416),hl
.la66a
	ld a,(la85d)
	bit 3,a
	jr nz,la677
	ld a,(la416)
	ld (la41c),a
.la677
	ld a,(la866)
	dec a
	ld (la866),a
	jr nz,la69e
	ld a,(la862)
	ld (la866),a
	ld hl,(la869)
	ld a,(hl)
	inc hl
	and a
	jp p,la698
	cp #80
	jr nz,la69e
	ld hl,(la867)
	ld a,(hl)
	inc hl
.la698
	ld (la869),hl
	ld (la41e),a
.la69e
	ret
.la69f
	dw la6c1,la6cf,la6dd,la6eb
	dw la6f9,la707,la715,la723
	dw la731,la73f,la74d,la75b
	dw la769,la777,la785,la793
	dw la7a1
.la6c1
	db #05,#02,#06,#00,#01,#00,#f7,#00
	db #ff,#63,#03,#01,#00,#00
.la6cf
	db #05,#02,#0c,#00,#01,#00,#f7,#00
	db #ff,#63,#03,#01,#00,#00
.la6dd
	db #14,#ff,#ff,#00,#11,#00,#f6,#00
	db #01,#ff,#01,#01,#00,#00
.la6eb
	db #14,#ff,#c0,#00,#11,#00,#f6,#00
	db #ff,#ff,#08,#01,#00,#00
.la6f9
	db #28,#02,#46,#00,#01,#00,#fe,#00
	db #ff,#63,#00,#03,#00,#00
.la707
	db #19,#07,#48,#00,#20,#00,#fe,#00
	db #01,#63,#00,#02,#00,#00
.la715
	db #46,#63,#40,#01,#08,#08,#fe,#00
	db #ff,#63,#01,#03,#00,#00
.la723
	db #18,#63,#10,#04,#08,#00,#fe,#00
	db #01,#63,#08,#02,#00,#00
.la731
	db #0b,#0b,#90,#00,#08,#04,#fe,#00
	db #01,#00,#00,#01,#00,#00
.la73f
	db #0b,#05,#0f,#00,#04,#00,#f6,#00
	db #01,#0a,#00,#01,#00,#00
.la74d
	db #1e,#ff,#0f,#00,#01,#00,#f7,#00
	db #01,#63,#01,#01,#00,#02
.la75b
	db #17,#0b,#40,#00,#04,#04,#fe,#00
	db #ff,#63,#00,#02,#00,#00
.la769
	db #0f,#63,#30,#00,#04,#04,#fe,#00
	db #ff,#63,#00,#01,#00,#00
.la777
	db #0f,#0f,#0f,#01,#01,#00,#f6,#00
	db #01,#00,#00,#01,#00,#00
.la785
	db #32,#05,#00,#00,#06,#00,#f7,#00
	db #ff,#63,#00,#03,#00,#00
.la793
	db #11,#05,#c7,#00,#20,#00,#f6,#00
	db #ff,#63,#00,#01,#00,#00
.la7a1
	db #14,#63,#2f,#00,#00,#00,#f6,#00
	db #01,#63,#00,#01,#00,#00
.la7af
	dw la7c1,la7ce,la7e5,la7f5
	dw la7fc,la821,la834,la836
	dw la848
.la7c1
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#ff
.la7ce
	db #06,#08,#0a,#0c,#0e,#0f,#0e,#0d
	db #0d,#0c,#0c,#0b,#0b,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#ff
.la7e5
	db #06,#08,#0a,#0b,#0c,#0d,#0c,#0b
	db #0a,#08,#06,#04,#03,#02,#01,#ff
.la7f5
	db #0b,#09,#07,#05,#03,#01,#ff
.la7fc
	db #0f,#0d,#0c,#0b,#0a,#0d,#0c,#0b
	db #0a,#09,#0b,#0a,#09,#08,#07,#09
	db #08,#07,#06,#05,#07,#06,#05,#04
	db #03,#05,#04,#03,#02,#01,#03,#02
	db #01,#02,#01,#00,#ff
.la821
	db #0a,#0c,#0e,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #02,#01,#ff
.la834
	db #0a,#80
.la836
	db #0f,#0f,#0e,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#ff
.la848
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#ff
.la857
	db #00
.la858
	db #00
.la860 equ $ + 7
.la85f equ $ + 6
.la85e equ $ + 5
.la85d equ $ + 4
.la85b equ $ + 2
.la85a equ $ + 1
.la859
	db #00,#00,#00,#00,#00,#00,#00,#00
.la867 equ $ + 6
.la866 equ $ + 5
.la865 equ $ + 4
.la864 equ $ + 3
.la863 equ $ + 2
.la862 equ $ + 1
.la861
	db #00,#00,#00,#00,#00,#00,#00,#00
.la869
	db #00,#00
.la86b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
.la896
	ld a,(la8b1)
	and #48
	adc #38
	sla a
	sla a
	ld hl,la8b4
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.la8b4 equ $ + 3
.la8b1
	db #ff,#80,#1b,#34
.la8b5
	db #32
	dw la8fe,la8d8,la910
	db #24
	dw laad4,laa62,lab46
	db #26
	dw lad21,lad1d,lad25
	db #32
	dw lad5d,lad59,lad61
	db #22
	dw ladae,ladaa,ladb2
.la8d8
	dw la920,ladf9,la920,la935
	dw la946,la957,la935,la946
	dw la957,la920,ladfc,la920
	dw la935,la946,la957,la935
	dw la946,la957,#0000
.la8fe
	dw la968,la968,laa08,la980
	dw la994,laa08,la980,la994
	dw #0000
.la910
	dw la9de,laa09,laa09,laa1c
	dw laa09,laa09,laa1c,#0000
.la920
	db #8a,#d2,#88,#01,#01,#e1,#0c,#18
	db #13,#18,#e7,#0c,#e1,#0c,#18,#13
	db #18,#e7,#0c,#e1,#87
.la935
	db #0c,#18,#13,#18,#0c,#13,#15,#18
	db #0c,#18,#13,#18,#0c,#13,#15,#18
	db #87
.la946
	db #13,#1f,#1a,#1f,#13,#1a,#1c,#1e
	db #13,#1f,#1a,#1f,#13,#1a,#1c,#1e
	db #87
.la957
	db #0f,#1b,#16,#1b,#0f,#16,#18,#1a
	db #0f,#1b,#16,#1b,#0f,#16,#18,#1a
	db #87
.la968
	db #8a,#d6,#88,#01,#01,#e0,#24,#26
	db #e1,#28,#29,#26,#e7,#24,#e0,#30
	db #32,#e1,#34,#35,#32,#e7,#30,#87
.la980
	db #d4,#82,#e1,#2b,#e0,#28,#28,#e1
	db #29,#28,#e0,#30,#2b,#34,#30,#37
	db #34,#3c,#37,#87
.la994
	db #e1,#2b,#e0,#2d,#2d,#e1,#2f,#e0
	db #30,#30,#e1,#32,#e0,#34,#34,#e1
	db #35,#37,#e1,#23,#e0,#24,#24,#e1
	db #26,#e0,#28,#28,#e1,#29,#e0,#2b
	db #2b,#e1,#2d,#2b,#e0,#81,#2b,#2e
	db #2d,#2e,#2b,#2e,#2d,#2e,#82,#33
	db #37,#36,#37,#33,#37,#36,#37,#81
	db #2b,#2e,#2d,#2e,#2b,#2e,#2d,#2e
	db #82,#24,#26,#27,#28,#29,#2a,#2b
	db #29,#87
.la9de
	db #8a,#d6,#88,#01,#01,#e0,#28,#29
	db #e1,#2b,#2d,#29,#e7,#28,#e0,#34
	db #35,#e1,#37,#39,#35,#e7,#34,#e0
	db #28,#29,#e1,#2b,#2d,#29,#e7,#28
	db #e0,#34,#35,#e1,#37,#39,#3b,#e7
	db #3c,#87
.laa08
	db #81
.laa09
	db #d4,#e1,#30,#e0,#2b,#2b,#e1,#2d
	db #2b,#e0,#34,#30,#37,#34,#3c,#37
	db #40,#3c,#87
.laa1c
	db #e1,#2f,#e0,#30,#30,#e1,#32,#e0
	db #34,#34,#e1,#35,#e0,#37,#37,#e1
	db #39,#3b,#e1,#26,#e0,#28,#28,#e1
	db #29,#e0,#2b,#2b,#e1,#2d,#e0,#2f
	db #2f,#e1,#30,#2f,#e0,#2b,#2e,#2d
	db #2e,#2b,#2e,#2d,#2e,#2b,#2e,#2d
	db #2e,#2b,#2e,#2d,#2e,#2b,#2e,#2d
	db #2e,#2b,#2e,#2d,#2e,#27,#29,#2a
	db #2b,#2c,#2d,#2e,#2f,#87
.laa62
	dw lab74,lab8a,lab74,lab9b
	dw lab74,lab8a,lab74,lab9b
	dw lab74,lab74,lab74,lab9b
	dw lab74,lab74,lab9b,lab74
	dw labac,lab74,labac,lab9b
	dw labac,lab74,labac,lab9b
	dw lab74,lab74,lab74,lab9b
	dw lab74,lab74,lab9b,lab74
	dw labac,lab74,labac,lab9b
	dw labac,lab74,labac,lab9b
	dw lab74,lab8a,lab74,lab9b
	dw lab74,lab8a,lab74,lab9b
	dw lab74,lab8a,lab74,lab8a
	dw lab74,lab8a,labac,lab9b
	dw #0000
.laad4
	dw labbd,labd1,labbd,labe3
	dw labbd,labd1,labbd,labe3
	dw labbd,labbd,labbd,labe3
	dw labbd,labbd,labe3,labbd
	dw labf5,labbd,labf5,labe3
	dw labf5,labbd,labf5,labe3
	dw labbd,labbd,labbd,labe3
	dw labbd,labbd,labe3,labbd
	dw labf5,labbd,labf5,labe3
	dw labf5,labbd,labf5,labe3
	dw labbd,labd1,labbd,labe3
	dw labbd,labd1,labbd,labe3
	dw labbd,labd1,labbd,labd1
	dw labbd,labd1,labf5,labe3
	dw #0000
.lab46
	dw lac07,ladf9,lac07,lac3b
	dw lac96,lac3b,lac92,lac98
	dw lac07,lac07,lacda,lac07
	dw ladf6,lac07,lac3b,lac96
	dw lac3b,lac92,lac98,lac07
	dw lac07,lacda,#0000
.lab74
	db #8a,#d2,#88,#01,#01,#e1,#18,#e0
	db #18,#e1,#1f,#e0,#1f,#e1,#18,#e0
	db #18,#e1,#1f,#e0,#1f,#87
.lab8a
	db #e1,#15,#e0,#15,#e1,#1c,#e0,#1c
	db #e1,#15,#e0,#15,#e1,#1c,#e0,#1c
	db #87
.lab9b
	db #e1,#13,#e0,#13,#e1,#1a,#e0,#1a
	db #e1,#13,#e0,#13,#e1,#1a,#e0,#1a
	db #87
.labac
	db #e1,#11,#e0,#11,#e1,#18,#e0,#18
	db #e1,#11,#e0,#11,#e1,#18,#e0,#18
	db #87
.labbd
	db #8a,#d3,#c2,#e1,#30,#e0,#30,#e1
	db #30,#e0,#30,#e1,#30,#e0,#30,#e1
	db #30,#e0,#30,#87
.labd1
	db #c7,#e1,#2d,#e0,#2d,#e1,#2d,#e0
	db #2d,#e1,#2d,#e0,#2d,#e1,#2d,#e0
	db #2d,#87
.labe3
	db #c8,#e1,#2b,#e0,#2b,#e1,#2b,#e0
	db #2b,#e1,#2b,#e0,#2b,#e1,#2b,#e0
	db #2b,#87
.labf5
	db #c6,#e1,#29,#e0,#29,#e1,#29,#e0
	db #29,#e1,#29,#e0,#29,#e1,#29,#e0
	db #29,#87
.lac07
	db #88,#01,#01,#8a,#d4,#ce,#e0,#24
	db #26,#28,#e1,#2d,#e6,#2b,#c9,#e0
	db #2d,#2f,#30,#32,#34,#35,#37,#39
	db #3b,#3c,#3b,#37,#ce,#e0,#30,#32
	db #34,#e1,#39,#e6,#37,#c9,#e0,#37
	db #35,#34,#35,#34,#32,#34,#32,#30
	db #32,#30,#2f,#87
.lac3b
	db #8a,#d4,#ce,#e3,#30,#e0,#2b,#30
	db #e3,#37,#e0,#34,#32,#e3,#30,#e0
	db #2f,#2d,#e3,#2b,#e0,#2d,#2f,#c9
	db #e3,#30,#e0,#2b,#30,#e3,#37,#e0
	db #37,#35,#e3,#32,#e0,#2f,#2d,#e5
	db #2b,#ce,#e3,#30,#e0,#2b,#30,#e3
	db #37,#e0,#34,#32,#e3,#30,#e0,#2f
	db #2d,#e3,#2b,#e0,#26,#2b,#c9,#e3
	db #2f,#e0,#2d,#2b,#e3,#29,#e0,#28
	db #26,#e2,#24,#ce,#e0,#30,#3c,#48
	db #e2,#24,#e0,#30,#3c,#48,#87
.lac92
	db #92,#0c,#d4,#87
.lac96
	db #8a,#d8
.lac98
	db #ce,#e3,#24,#e0,#21,#24,#e5,#29
	db #e3,#28,#e0,#24,#26,#e5,#24,#e3
	db #21,#e0,#1d,#21,#e5,#29,#e3,#26
	db #e0,#1f,#26,#e5,#2b,#c9,#e3,#24
	db #e0,#21,#24,#e5,#29,#e3,#28,#e0
	db #24,#26,#e5,#24,#e3,#24,#e0,#21
	db #24,#e5,#29,#e3,#26,#e0,#1f,#26
	db #e0,#2b,#2f,#32,#37,#3b,#3e,#92
	db #00,#87
.lacda
	db #d8,#ce,#e3,#2b,#e0,#28,#26,#e5
	db #24,#e3,#2d,#e0,#2b,#29,#e5,#28
	db #e3,#28,#e0,#26,#24,#e5,#28,#e3
	db #24,#e0,#23,#21,#e5,#24,#d4,#c9
	db #e3,#2b,#e0,#28,#24,#e5,#2b,#e3
	db #28,#e0,#24,#21,#e5,#28,#e3,#1d
	db #e0,#21,#24,#e3,#29,#e0,#2d,#30
	db #e3,#1f,#e0,#23,#26,#e3,#2b,#e0
	db #2f,#32,#87
.lad1d
	dw lad29,#0000
.lad21
	dw lad3d,#0000
.lad25
	dw lad4b,#0000
.lad29
	db #8a,#d2,#88,#01,#01,#e1,#0c,#e0
	db #18,#e1,#0c,#e0,#18,#e1,#0c,#e0
	db #18,#e2,#0c,#8e
.lad3d
	db #8a,#d0,#c9,#e1,#2b,#28,#e0,#2b
	db #2f,#e1,#30,#e3,#37,#8e
.lad4b
	db #8a,#d0,#c9,#e1,#30,#2b,#e0,#30
	db #32,#e1,#34,#e3,#30,#8e
.lad59
	dw lad65,#0000
.lad5d
	dw lad81,#0000
.lad61
	dw lad94,#0000
.lad65
	db #8a,#d4,#88,#01,#01,#e0,#13,#16
	db #15,#16,#89,#ff,#13,#16,#15,#16
	db #89,#fe,#13,#16,#15,#16,#89,#fd
	db #d6,#e6,#22,#8e
.lad81
	db #8a,#d4,#e0,#2b
	db #2e,#2d,#2e,#2b,#2e,#2d,#2e,#2b
	db #2e,#2d,#2e,#d6,#e7,#27,#8e
.lad94
	db #8a
	db #d4,#88,#01,#01,#e0,#2b,#2e,#2d
	db #2e,#2b,#2e,#2d,#2e,#2b,#2e,#2d
	db #2e,#d6,#e7,#2b,#8e
.ladaa
	dw ladb6,#0000
.ladae
	dw ladd2,#0000
.ladb2
	dw lade4,#0000
.ladb6
	db #8a,#da,#88,#01,#01,#e0,#16,#1d
	db #22,#16,#1d,#22,#16,#1d,#22,#16
	db #1d,#22,#1b,#22,#27,#1b,#22,#27
	db #e5,#d6,#33,#8e
.ladd2
	db #8a,#c9,#d6,#e1,#26,#d6,#e7,#29
	db #d6,#e0,#29,#29,#e1,#2c,#d6,#eb
	db #2b,#8e
.lade4
	db #8a,#c9,#d6,#e1,#29,#d6,#e7,#2e
	db #d6,#e0,#2e,#2e,#e1,#30,#d6,#eb
	db #33,#8e
.ladf6
	db #89,#fd,#87
.ladf9
	db #89,#00,#87
.ladfc
	db #89,#01,#87
;
; #0091
; call #a0e5	; play
;
; #00b3
; call #a202	; stop
;
; #008a
; xor a
; call #a012	; init
;
.music_info
	db "Dizzy II - Treasure Island Dizzy (1989)(Codemasters)(David Whittaker)",0
	db "",0

	read "music_end.asm"
