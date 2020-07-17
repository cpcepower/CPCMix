; Music of Venom Strikes Back (1988)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 03/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "VENOMSTB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #0557
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

;
.music_end
.l0557
;
	db #00
.l0558
	db #00
.l055f equ $ + 6
.l0559
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0567 equ $ + 6
.l0565 equ $ + 4
.l0564 equ $ + 3
.l0563 equ $ + 2
.l0562 equ $ + 1
.l0561
	db #00,#00,#00,#00,#00,#00,#00,#00
.l056e equ $ + 5
.l056d equ $ + 4
	db #00,#00,#00,#00,#08,#00,#00,#00
.l0578 equ $ + 7
.l0577 equ $ + 6
.l0576 equ $ + 5
.l0574 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l057c equ $ + 3
.l057a equ $ + 1
.l0579
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0583 equ $ + 2
.l0582 equ $ + 1
	db #00,#10,#00,#00,#00,#00,#00,#00
.l058f equ $ + 6
.l058e equ $ + 5
.l058d equ $ + 4
.l058c equ $ + 3
.l058b equ $ + 2
.l0589
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0591
	db #00,#00,#00,#00,#00,#00
.l0597
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.init_music
;
	push af
	call l090f
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l0fc7
	add l
	ld l,a
	jr nc,l05c0
	inc h
.l05c0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0559),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l056e),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0583),de
	xor a
	ld (l0562),a
	ld (l0577),a
	ld (l058c),a
	ld (l0567),a
	ld (l057c),a
	ld (l0591),a
	cpl
	ld (l0563),a
	ld (l0578),a
	ld (l058d),a
	ld a,#01
	ld (l0561),a
	ld (l0576),a
	ld (l058b),a
	ld (l0564),a
	ld (l0579),a
	ld (l058e),a
	ld hl,l0597
	ld bc,#030a
.l060f
	xor a
.l0610
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l0610
	djnz l060f
	ld hl,l10b2
	ld (l055f),hl
	ld (l0574),hl
	ld (l0589),hl
	ld a,#ff
	ld (l0565),a
	ld (l057a),a
	ld (l058f),a
	ld (l0557),a
	ret
;
.play_music	;l0637
;
	call l0941
	ld a,(l0557)
	and a
	ret z
	ld a,(l0565)
	ld hl,l057a
	or (hl)
	ld hl,l058f
	or (hl)
	ld (l0557),a
	jr nz,l0661
	xor a
	ld (l0557),a
	ld a,(l0850)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l0557),a
	ret
.l0661
	ld iy,l0558
	ld ix,l0851
	call l067f
	ld iy,l056d
	ld ix,l0863
	call l067f
	ld iy,l0582
	ld ix,l0875
.l067f
	call l07c0
	ld a,(iy+#0b)
	and a
	jr z,l0704
.l0688
	dec (iy+#09)
	jr z,l069f
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l0704
.l069f
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l06a9
	ld a,(hl)
	cp #80
	jr c,l06e4
	cp #fe
	jr nz,l06bb
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l06a9
.l06bb
	cp #ff
	jr nz,l06c4
	xor a
	ld (iy+#0d),a
	ret
.l06c4
	cp #c0
	jr nc,l06d1
	and #1f
	ld (iy+#09),a
	inc hl
	jp l06a9
.l06d1
	and #07
	add (iy+#00)
	ld de,l0597
	add e
	ld e,a
	jr nc,l06de
	inc d
.l06de
	inc hl
	ldi
	jp l06a9
.l06e4
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l0f95
	add hl,bc
	ld e,(hl)
	ld hl,l0fae
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l070a
.l0704
	ld e,(iy+#05)
	ld d,(iy+#06)
.l070a
	dec (iy+#0c)
	jr z,l071c
	ld a,(de)
	cp #80
	call nc,l0786
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l071c
	ld a,(de)
	cp #80
	jr c,l072d
	call l0786
	ld a,(iy+#0b)
	and a
	jr z,l071c
	jp l0688
.l072d
	cp #7f
	jr z,l0779
	cp #7e
	jr nz,l073e
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l0752
.l073e
	add (iy+#0a)
	add #14
	ld (iy+#0e),a
	ld hl,l0b11
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l0752
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
	jp l0888
.l0779
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l0786
	ld a,(de)
	cp #88
	jr nc,l07a4
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l0597
	add hl,bc
	ld c,(hl)
	ld hl,l10b2
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l07a4
	cp #ff
	jr nz,l07ad
	ld (iy+#0b),#ff
	ret
.l07ad
	cp #c0
	jr nc,l07b8
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l07b8
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l07c0
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l07d4
	res 7,(iy+#14)
	ret
.l07d4
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l0808
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l0808
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l07f7
	inc h
	ld (iy+#11),h
.l07f7
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l083d
.l0808
	ld hl,l09fa
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l0822
	bit 6,(iy+#14)
	jr nz,l0822
	ld (iy+#13),#01
	ret
.l0822
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
.l083d
	add a
	ld hl,l0b11
	add l
	ld l,a
	jr nc,l0846
	inc h
.l0846
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l0856 equ $ + 6
.l0855 equ $ + 5
.l0854 equ $ + 4
.l0851 equ $ + 1
.l0850
	db #3f,#fe,#f7,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0867 equ $ + 7
.l0866 equ $ + 6
.l0863 equ $ + 3
.l0862 equ $ + 2
	db #00,#00,#00,#fd,#ef,#12,#00,#00
.l0868
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0875 equ $ + 5
.l0874 equ $ + 4
	db #00,#00,#00,#00,#00,#fb,#df,#24
.l087a equ $ + 2
.l0879 equ $ + 1
.l0878
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0887 equ $ + 7
.l0886 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0888
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
	jr nz,l08ad
	ld a,#01
.l08ad
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l0850)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l08d6
	and (ix+#00)
.l08d6
	bit 1,c
	jr z,l08dd
	and (ix+#01)
.l08dd
	ld (l0850),a
	bit 2,c
	jr nz,l08ef
	ld hl,l0a2f
	ld (ix+#0d),l
	ld (ix+#0e),h
	ei
	ret
.l08ef
	call l0ae7
	ld a,(iy+#00)
	ld c,#0d
	call l0afe
	ld a,(iy+#04)
	ld c,#0b
	call l0afe
	inc c
	xor a
	call l0afe
	ld (ix+#05),#ff
	ei
	jp l0af3
.l090f
	call l0ae7
	ld c,#07
	ld a,(l0850)
	or #3f
	ld (l0850),a
	call l0afe
	xor a
	inc c
	call l0afe
	inc c
	call l0afe
	inc c
	call l0afe
	ld (l0862),a
	ld (l0874),a
	ld (l0886),a
	ld (l0856),a
	ld (l0868),a
	ld (l087a),a
	jp l0af3
.l0941
	ld a,(l0850)
	and #3f
	cp #3f
	ret z
	ld ix,l0851
	call l09fd
	ld ix,l0863
	call l09fd
	ld ix,l0875
	call l09fd
	call l0ae7
	ld ix,l0851
	ld c,#07
	ld a,(l0850)
	call l0afe
	ld c,#00
	ld a,(l0854)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l097f
	ld (l0887),a
.l097f
	call l0afe
	inc c
	ld a,(l0855)
	adc (ix+#0a)
	call l0afe
	inc c
	ld a,(l0866)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l099d
	ld (l0887),a
.l099d
	call l0afe
	inc c
	ld a,(l0867)
	adc (ix+#1c)
	call l0afe
	inc c
	ld a,(l0878)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l09bb
	ld (l0887),a
.l09bb
	call l0afe
	inc c
	ld a,(l0879)
	adc (ix+#2e)
	call l0afe
	inc c
	ld a,(l0887)
	rrca
	rrca
	rrca
	call l0afe
	ld c,#08
	ld a,(l0856)
	srl a
	srl a
	srl a
	call l0afe
	inc c
	ld a,(l0868)
	srl a
	srl a
	srl a
	call l0afe
	inc c
	ld a,(l087a)
	srl a
	srl a
	srl a
	call l0afe
.l09fa
	jp l0af3
.l09fd
	ld a,(l0850)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l0a1e
	cp #ff
	jr z,l0a1e
	dec (ix+#06)
.l0a1e
	call l0aa5
	bit 2,(iy+#09)
	jp nz,l0a9e
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l0a2f
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l0a3e
	ld (ix+#05),a
	ret
.l0a3e
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l0a4e
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l0a4e
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l0a60
	cp (iy+#02)
	jr c,l0a60
	ld (ix+#05),a
	ret
.l0a60
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l0a70
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l0a70
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l0a7f
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l0a7f
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l0a8c
	ld (ix+#05),a
	ret
.l0a8c
	ld (ix+#05),#00
	ld a,(l0850)
	or (ix+#02)
	ld (l0850),a
	res 7,(ix+#11)
	ret
.l0a9e
	ld a,(ix+#06)
	and a
	ret nz
	jr l0a8c
.l0aa5
	ld a,(ix+#07)
	and a
	jr z,l0ab2
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l0ab2
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
	jp p,l0ad6
	ld (ix+#07),#ff
	ret
.l0ad6
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
.l0ae7
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.l0af3
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.l0afe
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
.l0b11
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
.l0bbb
	db #80,#12,#08,#12,#08,#1c,#08,#12
	db #08,#1b,#08,#12,#08,#12,#08,#19
	db #08,#12,#08,#12,#08,#17,#08,#12
	db #08,#15,#08,#12,#08,#17,#08,#10
	db #08,#12,#08,#12,#08,#1c,#08,#12
	db #08,#1b,#08,#12,#08,#12,#08,#19
	db #08,#12,#08,#12,#08,#17,#08,#12
	db #08,#15,#08,#1c,#08,#17,#08,#1e
	db #08,#12,#08,#12,#08,#1c,#08,#12
	db #08,#1b,#08,#12,#08,#12,#08,#19
	db #08,#12,#08,#12,#08,#17,#08,#12
	db #08,#15,#08,#12,#08,#17,#08,#10
	db #08,#0e,#08,#0e,#08,#1a,#08,#0e
	db #08,#1a,#08,#0e,#08,#19,#08,#17
	db #08,#0b,#08,#0b,#08,#17,#08,#0b
	db #08,#17,#08,#0f,#08,#10,#08,#11
.l0c40 equ $ + 5
.l0c3d equ $ + 2
	db #08,#ff,#7f,#80,#ff,#80,#12,#08
	db #12,#08,#1c,#08,#12,#08,#82,#1e
	db #08,#80,#12,#08,#12,#08,#19,#08
	db #12,#08,#12,#08,#17,#08,#12,#08
	db #82,#1e,#08,#80,#12,#08,#17,#08
	db #10,#08,#12,#08,#12,#08,#1c,#08
	db #12,#08,#82,#1e,#08,#80,#12,#08
	db #12,#08,#19,#08,#12,#08,#12,#08
	db #17,#08,#12,#08,#82,#1e,#08,#80
	db #1c,#08,#17,#08,#1e,#08,#12,#08
	db #12,#08,#1c,#08,#12,#08,#82,#1e
	db #08,#80,#12,#08,#12,#08,#19,#08
	db #12,#08,#12,#08,#17,#08,#12,#08
	db #82,#1e,#08,#80,#12,#08,#17,#08
	db #10,#08,#0e,#08,#0e,#08,#1a,#08
	db #0e,#08,#82,#1e,#08,#80,#0e,#08
	db #19,#08,#17,#08,#0b,#08,#0b,#08
	db #17,#08,#0b,#08,#82,#1e,#08,#80
.l0cd2 equ $ + 7
	db #0f,#08,#10,#08,#11,#08,#ff,#81
	db #2a,#04,#2d,#04,#31,#04,#36,#04
.l0cdc equ $ + 1
	db #ff,#81,#2a,#04,#2d,#04,#32,#04
.l0ce6 equ $ + 3
	db #36,#04,#ff,#81,#2a,#04,#2f,#04
.l0cf0 equ $ + 5
	db #32,#04,#36,#04,#ff,#7f,#02,#ff
.l0cf3
	db #86,#31,#80,#34,#80,#2f,#80,#36
	db #80,#39,#80,#3d,#80,#3b,#80,#39
.l0d05 equ $ + 2
	db #80,#ff,#90,#80,#0d,#08,#0d,#08
	db #19,#08,#0d,#08,#17,#08,#19,#08
.l0d18 equ $ + 5
	db #0d,#08,#17,#08,#ff,#83,#1c,#38
	db #1b,#10,#1c,#10,#7f,#20,#1c,#08
	db #1c,#28,#1c,#08,#1b,#08,#1d,#30
.l0d32 equ $ + 7
	db #1e,#08,#20,#08,#1e,#08,#ff,#84
	db #c1,#01,#01,#ff,#1b,#08,#1b,#10
	db #17,#10,#17,#10,#1b,#10,#1b,#10
	db #1b,#08,#17,#08,#17,#08,#14,#08
	db #14,#08,#1b,#08,#1b,#10,#17,#10
	db #17,#10,#17,#08,#1b,#04,#1b,#04
	db #1b,#08,#17,#04,#17,#04,#17,#08
	db #14,#04,#14,#04,#14,#08,#11,#04
.l0d71 equ $ + 6
	db #11,#04,#11,#06,#c2,#ff,#83,#30
	db #08,#2f,#08,#2d,#08,#2a,#18,#2d
	db #08,#2a,#18,#2d,#08,#2a,#10,#2a
	db #08,#2d,#08,#2f,#08,#30,#08,#2f
	db #08,#2d,#08,#2a,#18,#28,#08,#2a
.l0d95 equ $ + 2
	db #48,#ff,#30,#08,#31,#08,#36,#08
	db #31,#10,#30,#10,#2f,#18,#2f,#08
	db #2d,#08,#2f,#08,#2d,#08,#2a,#08
	db #28,#08,#30,#08,#31,#08,#36,#08
	db #31,#10,#2f,#08,#2d,#08,#2a,#48
.l0dbc equ $ + 1
	db #ff,#80,#10,#10,#1c,#10,#82,#1e
	db #08,#80,#1a,#08,#19,#08,#0b,#18
	db #17,#10,#82,#1e,#08,#80,#0e,#08
	db #0f,#08,#10,#18,#1c,#10,#82,#1e
	db #08,#80,#1a,#08,#19,#08,#0b,#18
	db #17,#10,#82,#1e,#08,#80,#0f,#08
.l0df0 equ $ + 5
	db #10,#08,#11,#08,#ff,#83,#2c,#20
	db #2c,#08,#2a,#08,#28,#08,#2a,#28
	db #27,#08,#25,#08,#23,#20,#2c,#10
	db #2c,#08,#2a,#08,#28,#08,#2a,#28
	db #27,#08,#25,#08,#23,#08,#25,#08
.l0e14 equ $ + 1
	db #ff,#85,#91,#2f,#08,#2f,#08,#2f
	db #08,#2f,#08,#2f,#08,#2f,#08,#2f
	db #08,#2f,#08,#92,#2f,#08,#2f,#08
	db #2f,#08,#2f,#08,#2f,#08,#2f,#08
.l0e39 equ $ + 6
	db #2f,#08,#2f,#08,#90,#ff,#84,#c1
	db #01,#01,#ff,#14,#08,#14,#08,#7f
	db #38,#1b,#10,#1b,#10,#17,#10,#17
	db #08,#14,#08,#14,#08,#7f,#38,#1b
	db #08,#1b,#08,#1b,#08,#17,#08,#14
.l0e62 equ $ + 7
	db #08,#17,#08,#17,#06,#c2,#ff,#81
	db #36,#04,#34,#04,#31,#04,#2f,#04
.l0e6c equ $ + 1
	db #ff,#80,#0d,#08,#0d,#08,#19,#08
	db #0d,#08,#82,#1e,#08,#80,#19,#08
.l0e80 equ $ + 5
	db #0d,#08,#17,#08,#ff,#80,#06,#08
	db #06,#08,#10,#08,#12,#08,#82,#1e
	db #08,#80,#04,#08,#10,#08,#05,#08
.l0e94 equ $ + 1
	db #ff,#83,#39,#20,#38,#20,#93,#ff
.l0e9b
	db #84,#c1,#01,#01,#ff,#1e,#08,#1e
	db #10,#1b,#10,#1b,#10,#17,#08,#ff
.l0eab
	db #85,#2a,#08,#2e,#08,#31,#08,#36
	db #08,#3a,#08,#36,#08,#31,#08,#2e
	db #08,#29,#08,#2c,#08,#31,#08,#35
	db #08,#38,#08,#35,#08,#31,#08,#2c
	db #08,#27,#08,#2c,#08,#30,#08,#33
	db #08,#38,#08,#33,#08,#30,#08,#2c
	db #08,#27,#08,#2b,#08,#2e,#08,#33
	db #08,#37,#08,#33,#08,#2e,#08,#2b
	db #08,#2a,#08,#2e,#08,#31,#08,#36
	db #08,#3a,#08,#36,#08,#31,#08,#2e
	db #08,#29,#08,#2c,#08,#31,#08,#35
	db #08,#38,#08,#35,#08,#31,#08,#2c
.l0f11 equ $ + 6
	db #08,#27,#80,#7f,#04,#ff,#80,#12
	db #10,#12,#10,#82,#1e,#08,#80,#12
	db #08,#11,#08,#0d,#18,#0d,#10,#82
	db #1e,#08,#80,#11,#08,#12,#08,#14
	db #18,#14,#10,#82,#1e,#08,#80,#14
	db #08,#13,#08,#0f,#18,#0f,#10,#82
	db #1e,#08,#80,#0f,#08,#11,#08,#12
	db #18,#12,#10,#82,#1e,#08,#80,#12
	db #08,#11,#08,#0d,#18,#0d,#10,#82
	db #1e,#08,#80,#11,#08,#12,#08,#14
.l0f5f equ $ + 4
	db #80,#7f,#04,#ff,#83,#2e,#20,#2e
	db #08,#2c,#08,#2a,#08,#2c,#28,#29
	db #08,#27,#08,#25,#08,#24,#28,#24
	db #08,#25,#08,#27,#08,#27,#28,#2b
	db #08,#2c,#08,#2e,#08,#2e,#28,#2e
	db #08,#2c,#08,#2a,#08,#2c,#28,#29
	db #08,#27,#08,#25,#08,#24,#80,#7f
	db #04,#ff
.l0f95
	db l0bbb,l0c3d,l0c40,l0cd2
	db l0cdc,l0ce6,l0cf0,l0cf3
	db l0d05,l0d18,l0d32,l0d71
	db l0d95,l0dbc,l0df0,l0e14
	db l0e39,l0e62,l0e6c,l0e80
	db l0e94,l0e9b,l0eab,l0f11
	db l0f5f
;	db #bb,#3d,#40,#d2,#dc,#e6,#f0,#f3
;	db #05,#18,#32,#71,#95,#bc,#f0,#14
;	db #39,#62,#6c,#80,#94,#9b,#ab,#11
;	db #5f
.l0fae
	db l0bbb/&100,l0c3d/&100,l0c40/&100,l0cd2/&100
	db l0cdc/&100,l0ce6/&100,l0cf0/&100,l0cf3/&100
	db l0d05/&100,l0d18/&100,l0d32/&100,l0d71/&100
	db l0d95/&100,l0dbc/&100,l0df0/&100,l0e14/&100
	db l0e39/&100,l0e62/&100,l0e6c/&100,l0e80/&100
	db l0e94/&100,l0e9b/&100,l0eab/&100,l0f11/&100
	db l0f5f/&100
;	db #0b,#0c,#0c,#0c,#0c,#0c,#0c,#0c
;	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0e
;	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0f
;	db #0f
.l0fc7
	dw l0fd3,l101f,l1050
	dw l10a8,l10ac,l10b0
.l0fd3
	db #fe,#f4,#82,#00,#84,#08,#82,#02
	db #0d,#82,#02,#0d,#fe,#f6,#0d,#fe
	db #fb,#88,#08,#84,#08,#fe,#f9,#08
	db #08,#fe,#f7,#08,#08,#fe,#fb,#84
	db #08,#fe,#f9,#08,#08,#fe,#f7,#08
	db #08,#fe,#fb,#84,#12,#fe,#f9,#12
	db #12,#fe,#f7,#12,#12,#fe,#fb,#84
	db #12,#fe,#f9,#12,#12,#fe,#f7,#12
	db #12,#fe,#f6,#13,#02,#02,#0d,#fe
.l101f equ $ + 4
	db #fb,#90,#08,#ff,#c0,#46,#fe,#f4
	db #00,#06,#fe,#03,#10,#06,#10,#06
	db #0a,#fe,#f4,#0b,#0b,#0c,#0c,#0e
	db #fe,#00,#0b,#0b,#0c,#0c,#0e,#fe
	db #02,#0e,#fe,#fb,#88,#08,#fe,#02
	db #07,#07,#14,#0b,#0b,#0c,#0c,#0e
.l1050 equ $ + 5
	db #fe,#fb,#90,#08,#ff,#fe,#03,#84
	db #01,#10,#06,#10,#06,#0a,#06,#fe
	db #00,#98,#03,#84,#04,#84,#05,#98
	db #03,#84,#04,#84,#05,#0f,#0f,#98
	db #03,#84,#04,#84,#05,#98,#03,#84
	db #04,#84,#05,#0f,#0f,#fe,#02,#0f
	db #0f,#10,#06,#10,#06,#90,#11,#90
	db #11,#90,#11,#90,#11,#90,#11,#90
	db #11,#90,#11,#90,#11,#15,#98,#03
	db #84,#04,#84,#05,#98,#03,#84,#04
	db #84,#05,#0f,#0f,#10,#06,#10,#06
.l10a8 equ $ + 5
	db #10,#06,#10,#06,#ff,#fe,#0c,#16
.l10b0 equ $ + 5
.l10ac equ $ + 1
	db #ff,#fe,#f4,#17,#ff,#18,#ff
.l10b2
	db #35,#fd,#01,#ff,#7f,#00,#05,#02
	db #00,#01,#7f,#df,#01,#ff,#72,#ff
	db #00,#00,#00,#03,#7f,#fa,#01,#ff
	db #7f,#00,#00,#46,#00,#03,#25,#fe
	db #01,#ff,#7f,#00,#02,#01,#00,#01
	db #7f,#fc,#02,#ff,#7f,#00,#00,#0d
	db #00,#01,#7f,#fb,#03,#ff,#73,#00
	db #01,#01,#00,#01,#02,#ff,#01,#ff
	db #7f,#00,#05,#01,#00,#01,#35,#fd
	db #01,#ff,#7f,#00,#86,#02,#00,#01
	db #8a,#29,#49,#00,#00,#00,#00,#00
	db #8a,#21,#39,#00,#00,#00,#00,#00
	db #89,#61,#00,#00,#00,#00,#00,#00
	db #00,#54,#4b,#4c,#57,#00,#00,#01
;
.music_info
	db "Venom Strikes Back (1988)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
