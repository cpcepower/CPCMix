; Music of Artura (1988)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 20/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ARTURA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #b540

	read "music_header.asm"

	jp lb5d0	; init
	jp lb658	; play
;
.music_end
.lb546
;
	db #00
;
	jp lb551	; init sound effects
;
.stop_music
;
	xor a
	ld (lb546),a
	jp lb9da
.lb551
	di
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,lbf5c
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,lb91c
	call lb953
	set 7,(ix+#11)
	ei
	ret
.lb580 equ $ + 7
.lb57a equ $ + 1
.lb579
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb588 equ $ + 7
.lb586 equ $ + 5
.lb585 equ $ + 4
.lb584 equ $ + 3
.lb583 equ $ + 2
.lb582 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb58f equ $ + 6
.lb58e equ $ + 5
	db #00,#00,#00,#00,#00,#08,#00,#00
.lb598 equ $ + 7
.lb597 equ $ + 6
.lb595 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb59d equ $ + 4
.lb59b equ $ + 2
.lb59a equ $ + 1
.lb599
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb5a4 equ $ + 3
.lb5a3 equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.lb5b0 equ $ + 7
.lb5af equ $ + 6
.lb5ae equ $ + 5
.lb5ad equ $ + 4
.lb5ac equ $ + 3
.lb5aa equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb5b8 equ $ + 7
.lb5b2 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music
.lb5d0
;
	push af
	call lb9da
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,lbe67
	add l
	ld l,a
	jr nc,lb5e1
	inc h
.lb5e1
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb57a),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb58f),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb5a4),de
	xor a
	ld (lb583),a
	ld (lb598),a
	ld (lb5ad),a
	ld (lb588),a
	ld (lb59d),a
	ld (lb5b2),a
	cpl
	ld (lb584),a
	ld (lb599),a
	ld (lb5ae),a
	ld a,#01
	ld (lb582),a
	ld (lb597),a
	ld (lb5ac),a
	ld (lb585),a
	ld (lb59a),a
	ld (lb5af),a
	ld hl,lb5b8
	ld bc,#030a
.lb630
	xor a
.lb631
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,lb631
	djnz lb630
	ld hl,lbef0
	ld (lb580),hl
	ld (lb595),hl
	ld (lb5aa),hl
	ld a,#ff
	ld (lb586),a
	ld (lb59b),a
	ld (lb5b0),a
	ld (lb546),a
	ret
;
.play_music
.lb658
;
	call lba12
	ld a,(lb546)
	and a
	ret z
	ld a,(lb586)
	ld hl,lb59b
	or (hl)
	ld hl,lb5b0
	or (hl)
	ld (lb546),a
	jr nz,lb682
	xor a
	ld (lb546),a
	ld a,(lb91b)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (lb546),a
	ret
.lb682
	ld iy,lb579
	ld ix,lb91c
	call lb6a0
	ld iy,lb58e
	ld ix,lb92e
	call lb6a0
	ld iy,lb5a3
	ld ix,lb940
.lb6a0
	call lb7e1
	ld a,(iy+#0b)
	and a
	jr z,lb725
.lb6a9
	dec (iy+#09)
	jr z,lb6c0
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr lb725
.lb6c0
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.lb6ca
	ld a,(hl)
	cp #80
	jr c,lb705
	cp #fe
	jr nz,lb6dc
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp lb6ca
.lb6dc
	cp #ff
	jr nz,lb6e5
	xor a
	ld (iy+#0d),a
	ret
.lb6e5
	cp #c0
	jr nc,lb6f2
	and #1f
	ld (iy+#09),a
	inc hl
	jp lb6ca
.lb6f2
	and #07
	add (iy+#00)
	ld de,lb5b8
	add e
	ld e,a
	jr nc,lb6ff
	inc d
.lb6ff
	inc hl
	ldi
	jp lb6ca
.lb705
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,lbe45
	add hl,bc
	ld e,(hl)
	ld hl,lbe56
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr lb72b
.lb725
	ld e,(iy+#05)
	ld d,(iy+#06)
.lb72b
	dec (iy+#0c)
	jr z,lb73d
	ld a,(de)
	cp #80
	call nc,lb7a7
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.lb73d
	ld a,(de)
	cp #80
	jr c,lb74e
	call lb7a7
	ld a,(iy+#0b)
	and a
	jr z,lb73d
	jp lb6a9
.lb74e
	cp #7f
	jr z,lb79a
	cp #7e
	jr nz,lb75f
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp lb773
.lb75f
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,lb871
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.lb773
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
	jp lb953
.lb79a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.lb7a7
	ld a,(de)
	cp #88
	jr nc,lb7c5
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,lb5b8
	add hl,bc
	ld c,(hl)
	ld hl,lbef0
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.lb7c5
	cp #ff
	jr nz,lb7ce
	ld (iy+#0b),#ff
	ret
.lb7ce
	cp #c0
	jr nc,lb7d9
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.lb7d9
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.lb7e1
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,lb7f5
	res 7,(iy+#14)
	ret
.lb7f5
	ld d,#07
	bit 6,(iy+#14)
	jr nz,lb829
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,lb829
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,lb818
	inc h
	ld (iy+#11),h
.lb818
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp lb85e
.lb829
	ld hl,lb84c
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,lb843
	bit 6,(iy+#14)
	jr nz,lb843
	ld (iy+#13),#01
	ret
.lb843
	res 6,(iy+#14)
	ld a,(hl)
	rrca
	rrca
	rrca
	and d
.lb84c
	ld (iy+#12),a
	ld a,(hl)
	and d
	inc a
	ld (iy+#13),a
	ld (iy+#10),l
	ld (iy+#11),h
	ld a,(iy+#0e)
.lb85e
	add a
	ld hl,lb871
	add l
	ld l,a
	jr nc,lb867
	inc h
.lb867
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.lb871
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
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
	dw #0018
.lb921 equ $ + 6
.lb920 equ $ + 5
.lb91f equ $ + 4
.lb91c equ $ + 1
.lb91b
	db #3f,#fe,#f7,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb932 equ $ + 7
.lb931 equ $ + 6
.lb92e equ $ + 3
.lb92d equ $ + 2
	db #00,#00,#00,#fd,#ef,#12,#00,#00
.lb933
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb940 equ $ + 5
.lb93f equ $ + 4
	db #00,#00,#00,#00,#00,#fb,#df,#24
.lb945 equ $ + 2
.lb944 equ $ + 1
.lb943
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb952 equ $ + 7
.lb951 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb953
	di
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
	jr nz,lb978
	ld a,#01
.lb978
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(lb91b)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,lb9a1
	and (ix+#00)
.lb9a1
	bit 1,c
	jr z,lb9a8
	and (ix+#01)
.lb9a8
	ld (lb91b),a
	bit 2,c
	jr nz,lb9ba
	ld hl,lbb00
	ld (ix+#0d),l
	ld (ix+#0e),h
	ei
	ret
.lb9ba
	call lbbb8
	ld a,(iy+#00)
	ld c,#0d
	call lbbcf
	ld a,(iy+#04)
	ld c,#0b
	call lbbcf
	inc c
	xor a
	call lbbcf
	ld (ix+#05),#ff
	ei
	jp lbbc4
.lb9da
	call lbbb8
	ld c,#07
	ld a,(lb91b)
	or #3f
	ld (lb91b),a
	call lbbcf
	xor a
	inc c
	call lbbcf
	inc c
	call lbbcf
	inc c
	call lbbcf
	ld a,#01
	inc c
	call lbbcf
	inc c
	xor a
	call lbbcf
	inc c
	call lbbcf
	ld (lb92d),a
	ld (lb93f),a
	ld (lb951),a
	jp lbbc4
.lba12
	ld a,(lb91b)
	and #3f
	cp #3f
	ret z
	ld ix,lb91c
	call lbace
	ld ix,lb92e
	call lbace
	ld ix,lb940
	call lbace
	call lbbb8
	ld ix,lb91c
	ld c,#07
	ld a,(lb91b)
	call lbbcf
	ld c,#00
	ld a,(lb91f)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,lba50
	ld (lb952),a
.lba50
	call lbbcf
	inc c
	ld a,(lb920)
	adc (ix+#0a)
	call lbbcf
	inc c
	ld a,(lb931)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,lba6e
	ld (lb952),a
.lba6e
	call lbbcf
	inc c
	ld a,(lb932)
	adc (ix+#1c)
	call lbbcf
	inc c
	ld a,(lb943)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,lba8c
	ld (lb952),a
.lba8c
	call lbbcf
	inc c
	ld a,(lb944)
	adc (ix+#2e)
	call lbbcf
	inc c
	ld a,(lb952)
	rrca
	rrca
	rrca
	call lbbcf
	ld c,#08
	ld a,(lb921)
	srl a
	srl a
	srl a
	call lbbcf
	inc c
	ld a,(lb933)
	srl a
	srl a
	srl a
	call lbbcf
	inc c
	ld a,(lb945)
	srl a
	srl a
	srl a
	call lbbcf
	jp lbbc4
.lbace
	ld a,(lb91b)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,lbaef
	cp #ff
	jr z,lbaef
	dec (ix+#06)
.lbaef
	call lbb76
	bit 2,(iy+#09)
	jp nz,lbb6f
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.lbb00
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,lbb0f
	ld (ix+#05),a
	ret
.lbb0f
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,lbb1f
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lbb1f
	ld a,(ix+#05)
	add (iy+#01)
	jp m,lbb31
	cp (iy+#02)
	jr c,lbb31
	ld (ix+#05),a
	ret
.lbb31
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,lbb41
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lbb41
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,lbb50
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lbb50
	ld a,(ix+#05)
	add (iy+#03)
	jp m,lbb5d
	ld (ix+#05),a
	ret
.lbb5d
	ld (ix+#05),#00
	ld a,(lb91b)
	or (ix+#02)
	ld (lb91b),a
	res 7,(ix+#11)
	ret
.lbb6f
	ld a,(ix+#06)
	and a
	ret nz
	jr lbb5d
.lbb76
	ld a,(ix+#07)
	and a
	jr z,lbb83
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.lbb83
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
	jp p,lbba7
	ld (ix+#07),#ff
	ret
.lbba7
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
.lbbb8
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.lbbc4
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.lbbcf
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
	ret
.lbbe2
db #80,#01,#07,#7f,#07,#01,#07,#01
.lbbf0 equ $ + 6
db #07,#01,#07,#01,#07,#ff,#91,#ff
.lbbf2
db #80,#01,#07,#7f,#07,#01,#07,#ff
.lbbfa
db #85,#0f,#2a,#0f,#2a,#86,#0d,#2a
db #0d,#2a,#85,#0f,#2a,#0f,#2a,#85
.lbc10 equ $ + 6
db #0d,#2a,#87,#0a,#2a,#ff,#84,#20
db #0e,#22,#07,#23,#0e,#25,#07,#27
db #0e,#2c,#07,#2a,#0e,#27,#07,#25
db #0e,#23,#07,#22,#0e,#20,#07,#1e
db #0e,#20,#07,#22,#0e,#1e,#07,#20
db #0e,#22,#07,#23,#0e,#25,#07,#27
db #0e,#2c,#07,#2a,#0e,#27,#07,#25
db #0e,#23,#07,#22,#0e,#20,#07,#1e
.lbc50 equ $ + 6
db #15,#20,#0e,#22,#07,#ff,#85,#0f
.lbc54 equ $ + 2
db #2a,#ff,#86,#0b,#2a,#0b,#2a,#0d
db #2a,#0d,#2a,#0b,#2a,#0b,#2a,#0d
.lbc67 equ $ + 5
db #2a,#85,#0d,#2a,#ff,#84,#23,#0e
db #25,#07,#27,#07,#25,#07,#23,#07
db #2a,#0e,#25,#07,#27,#07,#25,#07
db #23,#07,#25,#0e,#23,#07,#22,#0e
db #20,#07,#1e,#0e,#20,#07,#22,#07
db #20,#07,#1e,#07,#23,#0e,#25,#07
db #27,#07,#25,#07,#23,#07,#2a,#0e
db #25,#07,#27,#07,#25,#07,#23,#07
db #22,#0e,#20,#07,#1e,#07,#20,#07
.lbcaf equ $ + 5
db #22,#07,#20,#2a,#ff,#80,#01,#07
db #7f,#07,#01,#07,#83,#1e,#07,#80
.lbcbf equ $ + 5
db #01,#07,#01,#07,#ff,#85,#0f,#0e
db #0f,#07,#80,#01,#07,#01,#07,#01
db #07,#01,#07,#7f,#07,#01,#07,#01
db #07,#01,#07,#01,#07,#86,#0d,#0e
db #0d,#07,#80,#01,#07,#01,#07,#01
db #07,#01,#07,#7f,#07,#01,#07,#01
db #07,#01,#07,#01,#07,#85,#0f,#0e
db #0f,#07,#80,#01,#07,#01,#07,#01
db #07,#01,#07,#7f,#07,#01,#07,#01
db #07,#01,#07,#01,#07,#85,#0d,#0e
db #0d,#07,#80,#01,#07,#01,#07,#01
db #07,#87,#0a,#0e,#0a,#07,#80,#01
.lbd20 equ $ + 6
db #07,#01,#07,#01,#07,#ff,#86,#0b
db #0e,#0b,#07,#80,#01,#07,#01,#07
db #01,#07,#01,#07,#7f,#07,#01,#07
db #01,#07,#01,#07,#01,#07,#86,#0d
db #0e,#0d,#07,#80,#01,#07,#01,#07
db #01,#07,#01,#07,#7f,#07,#01,#07
db #01,#07,#01,#07,#01,#07,#86,#0b
db #0e,#0b,#07,#80,#01,#07,#01,#07
db #01,#07,#01,#07,#7f,#07,#01,#07
db #01,#07,#01,#07,#01,#07,#86,#0d
db #0e,#0d,#07,#80,#01,#07,#01,#07
db #01,#07,#85,#0d,#0e,#0d,#07,#80
.lbd81 equ $ + 7
db #01,#07,#01,#07,#01,#07,#ff,#84
db #1b,#0e,#1e,#07,#20,#0e,#22,#07
db #23,#0e,#27,#07,#27,#0e,#23,#07
db #22,#0e,#20,#07,#1e,#0e,#1d,#07
db #19,#0e,#19,#07,#1e,#0e,#19,#07
db #1b,#0e,#1e,#07,#20,#0e,#22,#07
db #23,#0e,#27,#07,#27,#0e,#23,#07
db #22,#0e,#20,#07,#1e,#0e,#1d,#07
.lbdc1 equ $ + 7
db #1b,#15,#1d,#0e,#1e,#07,#ff,#84
db #1e,#0e,#1e,#07,#23,#07,#1e,#07
db #1e,#07,#27,#0e,#1e,#07,#23,#07
db #1e,#07,#1e,#07,#22,#0e,#20,#07
db #1e,#0e,#19,#07,#19,#0e,#19,#07
db #19,#07,#19,#07,#19,#07,#1e,#0e
db #1e,#07,#23,#07,#1e,#07,#1e,#07
db #27,#0e,#1e,#07,#1e,#07,#1e,#07
db #1e,#07,#1e,#0e,#19,#07,#19,#07
.lbe09 equ $ + 7
db #19,#07,#1e,#07,#1d,#2a,#ff,#7f
.lbe0c equ $ + 2
db #04,#ff,#84,#20,#0e,#22,#07,#23
db #0e,#25,#07,#27,#0e,#2a,#07,#29
db #0e,#25,#07,#27,#54,#20,#0e,#22
db #07,#23,#0e,#25,#07,#27,#0e,#2a
db #07,#29,#0e,#27,#07,#25,#0e,#23
db #07,#22,#0e,#20,#07,#1e,#0e,#20
.lbe40 equ $ + 6
db #07,#22,#0e,#1e,#07,#ff,#90,#ff
.lbe42
db #20,#2a,#ff
.lbe45
	db lbbe2,lbbf0,lbbf2,lbbfa
	db lbc10,lbc50,lbc54,lbc67
	db lbcaf,lbcbf,lbd20,lbd81
	db lbdc1,lbe09,lbe0c,lbe40
	db lbe42
;	db #e2,#f0,#f2,#fa,#10,#50,#54,#67
;	db #af,#bf,#20,#81,#c1,#09,#0c,#40
;	db #42
.lbe56            
	db lbbe2/&100,lbbf0/&100,lbbf2/&100,lbbfa/&100
	db lbc10/&100,lbc50/&100,lbc54/&100,lbc67/&100
	db lbcaf/&100,lbcbf/&100,lbd20/&100,lbd81/&100
	db lbdc1/&100,lbe09/&100,lbe0c/&100,lbe40/&100
	db lbe42/&100
;	db #bb,#bb,#bb,#bb,#bc,#bc,#bc,#bc
;	db #bc,#bc,#bd,#bd,#bd,#be,#be,#be
;	db #be
.lbe67
	dw lbe6d,lbe8f,lbec7
.lbe6d
	db #fe,#0c,#0d,#0e,#0e,#fe,#0f,#9e
	db #00,#8a,#00,#90,#08,#90,#08,#fe
	db #00,#0b,#0b,#0c,#0c,#fe,#0f,#90
	db #08,#90,#08,#0d,#fe,#02,#04,#04
	db #10,#ff
.lbe8f
	db #fe,#0c,#86,#05,#fe,#0a,#c5,#3c
	db #05,#05,#fe,#0c,#c5,#32,#86,#05
	db #fe,#0a,#c5,#3c,#05,#05,#fe,#0c
	db #c5,#32,#0d,#88,#05,#03,#03,#06
	db #06,#03,#03,#06,#06,#09,#09,#0a
	db #0a,#fe,#0e,#c6,#32,#c5,#50,#c7
	db #5a,#03,#03,#06,#06,#91,#05,#ff
.lbec7
	db #fe,#0c,#0e,#0e,#0d,#c5,#28,#fe
	db #f9,#88,#05,#fe,#f4,#04,#04,#07
	db #07,#fe,#00,#04,#04,#07,#07,#04
	db #04,#07,#07,#fe,#f6,#01,#04,#04
	db #07,#07,#fe,#02,#0f,#04,#04,#10
	db #ff
.lbef0
	db #7f,#fb,#01,#ff,#7f,#00,#00,#49
	db #00,#01,#28,#fd,#3c,#ff,#6e,#00
	db #06,#05,#00,#01,#7f,#fe,#01,#ff
	db #7f,#00,#05,#05,#00,#01,#7f,#fe
	db #01,#ff,#64,#00,#00,#4f,#00,#02
	db #0e,#fc,#46,#ff,#79,#05,#04,#02
	db #00,#01,#0c,#fc,#28,#ff,#26,#06
	db #04,#03,#00,#05,#0c,#fc,#28,#ff
	db #2a,#06,#04,#03,#00,#05,#0c,#fc
	db #28,#ff,#32,#06,#04,#03,#00,#05
	db #0c,#fc,#28,#ff,#21,#06,#04,#03
	db #00,#05,#0c,#fc,#28,#ff,#2c,#06
	db #04,#03,#00,#05,#89,#61,#00,#00
	db #00,#00,#00,#00
.lbf5c
	db #0c,#ff,#01,#ff,#10,#00,#00,#ff
	db #fe,#07,#00,#01,#fe,#08,#ff,#01
	db #ff,#02,#00,#0b,#07,#00,#05,#8f
	db #00,#64,#0c,#ff,#01,#ff,#10,#00
	db #00,#01,#00,#07,#01,#00,#fe,#7f
	db #f4,#01,#ff,#7f,#00,#00,#44,#00
	db #03,#1e,#02,#08,#08,#ff,#01,#ff
	db #01,#00,#00,#ff,#fe,#05,#2b,#00
	db #07,#7f,#fa,#01,#ff,#7f,#00,#00
	db #21,#00,#03,#8c,#01,#0a,#37,#fd
	db #01,#ff,#7f,#00,#00,#52,#00,#03
	db #74,#00,#19,#7f,#ff,#01,#ff,#7f
	db #00,#00,#52,#00,#03,#74,#00,#19
	db #0a,#f9,#01,#ff,#7f,#00,#00,#15
	db #00,#02,#74,#00,#10,#7f,#ff,#01
	db #ff,#7f,#00,#00,#20,#00,#02,#19
	db #01,#23,#49,#fd,#01,#ff,#7f,#00
	db #02,#1c,#00,#01,#74,#00,#19,#16
	db #fe,#01,#ff,#7f,#00,#04,#1c,#00
	db #01,#74,#00,#28,#00,#00
;
.music_info
	db "Artura (1988)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
