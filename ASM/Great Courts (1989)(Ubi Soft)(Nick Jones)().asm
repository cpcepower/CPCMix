; Music of Great Courts (1989)(Ubi Soft)(Nick Jones)()
; Ripped by Megachur the 17/04/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GREATCOU.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #36fe

	read "music_header.asm"

;
.play_music
;
	push af
	push hl
	push bc
	push de
	push ix
.l3705 equ $ + 1
	ld a,#00	;#05
	inc a
	cp #01		;#06
	jr nz,l370c
	xor a
.l370c
	ld (l3705),a
	ld a,(l3705)
	cp #00		;#05
	jr nz,l3729
.l3717 equ $ + 1
	ld a,#ff
	cpl
	ld (l3717),a
	and a
	jr z,l3726
	ld a,#05
	call l3731
	jr l3729
.l3726
	defs 3,0	;call #fe3f
.l3729
	pop ix
	pop de
	pop bc
	pop hl
	pop af
	ei
	ret
.l3731
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l373e
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l373e
	dw l391c,l374d,l3753,l3759
.l374c equ $ + 6
.l374b equ $ + 5
.l374a equ $ + 4
	dw l375f,l37ee,#0000
	db #00
.l374d
	ld a,#0e
	ld (l374a),a
	ret
.l3753
	ld a,#0e
	ld (l374b),a
	ret
.l3759
	ld a,#14
	ld (l374c),a
	ret
;
.init_music
.l375f
;
	call l391c
	ld hl,l3964
	jp l376e
;
;.init_music1
;
	call l391c
	ld hl,l396a
.l376e
	push hl
	pop ix
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l37af),hl
	ld (l37b1),hl
	ld l,(ix+#02)
	ld h,(ix+#03)
	ld (l37c4),hl
	ld (l37c6),hl
	ld l,(ix+#04)
	ld h,(ix+#05)
	ld (l37d9),hl
	ld (l37db),hl
	xor a
	ld (l37b6),a
	ld (l37cb),a
	ld (l37e0),a
	ld (l37ad),a
	inc a
	ld (l37b3),a
	ld (l37c8),a
	ld (l37dd),a
	ret
.l37b3 equ $ + 6
.l37b1 equ $ + 4
.l37af equ $ + 2
.l37ad
	db #00,#00,#00,#00,#00,#00,#01,#00
.l37b6 equ $ + 1
	db #08,#ff,#00,#00,#09,#fe,#f7,#0d
.l37c4 equ $ + 7
	db #0f,#02,#01,#03,#00,#00,#01,#00
.l37cb equ $ + 6
.l37c8 equ $ + 3
.l37c6 equ $ + 1
	db #00,#00,#00,#01,#02,#09,#ff,#00
	db #00,#12,#fd,#ef,#0d,#0d,#01,#01
.l37db equ $ + 6
.l37d9 equ $ + 4
	db #03,#00,#00,#01,#00,#00,#00,#00
.l37e0 equ $ + 3
.l37dd
	db #01,#04,#0a,#ff,#00,#00,#24,#fb
	db #df,#0d,#11,#05,#01,#01,#00,#00
	db #01

.l37ee	; play_music

	ld a,(l37ad)
	or a
	jp nz,l387e
	ld ix,l37af
	call l3807
	ld ix,l37c4
	call l3807
	ld ix,l37d9
.l3807
	dec (ix+#04)
	jr nz,l385c
	ld l,(ix+#00)
	ld h,(ix+#01)
.l3812
	ld a,(hl)
	cp #64
	jr nc,l3848
	ld c,a
	sla c
	ld b,#00
	ld a,(ix+#0e)
	ld (ix+#0d),a
	ld a,(ix+#14)
	ld (ix+#04),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld hl,l3a48
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (ix+#12),c
	ld (ix+#13),b
	ld a,(ix+#05)
	call l3940
	ld c,b
	call l393f
	jr l385c
.l3848
	cp #ff
	jr nz,l3854
	ld l,(ix+#02)
	ld h,(ix+#03)
	jr l3812
.l3854
	sub #d0
	ld (ix+#14),a
	inc hl
	jr l3812
.l385c
	dec (ix+#10)
	ret nz
	ld a,(ix+#11)
	ld (ix+#10),a
	ld a,(ix+#0d)
	or a
	jr z,l3875
	sub (ix+#0f)
	jr nc,l3872
	xor a
.l3872
	ld (ix+#0d),a
.l3875
	ld c,(ix+#0d)
	ld a,(ix+#06)
	jp l3940
.l387e
	ld a,(l374a)
	or a
	jr z,l389c
	dec a
	ld (l374a),a
	ld c,a
	ld b,#00
	ld hl,l3901
	add hl,bc
	ld c,(hl)
	ld a,#0a
	call l3940
	ld a,#06
	ld c,#08
	call l3940
.l389c
	ld a,(l374b)
	or a
	jr z,l38bf
	dec a
	ld (l374b),a
	ld c,a
	ld b,#00
	ld hl,l390e
	add hl,bc
	ld c,(hl)
	ld a,#09
	call l3940
	ld a,#02
	ld c,#00
	call l3940
	ld c,#07
	call l393f
.l38bf
	ld a,(l374c)
	or a
	jr z,l38ec
	dec a
	ld (l374c),a
	ld c,a
	ld b,#00
	ld hl,l38ed
	add hl,bc
	ld c,(hl)
	ld a,#08
	call l3940
	ld hl,#04b0
	ld a,(l374c)
	cp #0a
	jr c,l38e3
	ld hl,#0320
.l38e3
	xor a
	ld c,l
	call l3940
	ld c,h
	call l393f
.l38ec
	ret
.l38ed
	db #00,#03,#05,#07,#09,#0b,#0d,#0f
	db #0f,#0f,#03,#05,#07,#09,#0b,#0d
.l3901 equ $ + 4
	db #0f,#0f,#0f,#0f,#00,#01,#02,#00
	db #00,#01,#02,#03,#00,#03,#06,#09
.l390e equ $ + 1
	db #0c,#00,#01,#02,#00,#00,#01,#03
	db #05,#00,#00,#03,#07,#0a,#0d
;
.l391c
.stop_music
;
	xor a
	ld (l374a),a
	ld (l374b),a
	ld (l374c),a
	ld a,#ff
	ld (l37ad),a
	ld a,#06
	ld c,#04
	call l3940
	ld c,#9c
	call l393f
	ld c,#00
	call l393f
	call l393f
.l393f
	inc a
.l3940
	di
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
	ei
	ret
.l3964
	dw l3970,l39e5,l39d6
.l396a
	dw l3991,l3a26,l39d6
.l3970
	db #d6,#34,#30,#2b,#30,#28,#2b,#24
	db #28,#34,#30,#2d,#30,#28,#2d,#24
	db #28,#35,#32,#2d,#32,#29,#2d,#26
	db #29,#37,#32,#2f,#32,#2b,#2f,#26
.l3991 equ $ + 1
	db #2b,#dc,#24,#e8,#24,#d6,#24,#23
	db #dc,#21,#e8,#21,#d6,#21,#21,#dc
	db #26,#e8,#26,#d6,#26,#26,#dc,#28
	db #d6,#28,#26,#24,#23,#24,#26,#dc
	db #28,#d6,#28,#d3,#26,#df,#28,#d6
	db #28,#29,#28,#26,#24,#21,#dc,#24
	db #21,#26,#d6,#26,#26,#dc,#24,#d6
	db #26,#26,#dc,#28,#d6,#28,#28,#d8
.l39d6 equ $ + 6
	db #2d,#d8,#2b,#d8,#29,#ff,#dc,#10
	db #10,#10,#10,#10,#10,#d9,#10,#d3
.l39e5 equ $ + 5
	db #10,#d6,#10,#10,#ff,#d6,#0c,#18
	db #0c,#18,#0c,#18,#0c,#18,#09,#15
	db #09,#15,#09,#15,#09,#15,#0e,#1a
	db #0e,#1a,#0e,#1a,#0e,#1a,#07,#13
	db #07,#13,#07,#13,#07,#13,#0c,#18
	db #0c,#18,#0c,#18,#0c,#18,#09,#15
	db #09,#15,#09,#15,#09,#15,#0e,#1a
	db #0e,#1a,#0e,#1a,#0e,#1a,#10,#1c
.l3a26 equ $ + 6
	db #10,#1c,#10,#1c,#10,#1c,#d6,#0c
	db #18,#0c,#18,#0c,#18,#0c,#18,#09
	db #15,#09,#15,#09,#15,#09,#15,#0e
	db #1a,#0e,#1a,#0e,#1a,#0e,#1a,#10
	db #1c,#10,#1c,#10,#1c,#10,#1c,#ff
.l3a48
	dw #0000,#0710,#06ab,#064b
	dw #05f1,#059b,#054b,#04ff
	dw #04b7,#0473,#0433,#03f7
	dw #03be,#0388,#0355,#0326
	dw #02f8,#02ce,#02a5,#027f
	dw #025c,#023a,#021a,#01fb
	dw #01df,#01c4,#01ab,#0193
	dw #017c,#0167,#0153,#0140
	dw #012e,#011d,#010d,#00fe
	dw #00ef,#00e2,#00d5,#00c9
	dw #00be,#00b3,#00a9,#00a0
	dw #0097,#008e,#0086,#007f
	dw #0078,#0071,#006b,#0065
	dw #005f,#005a,#0055,#0050
	dw #004b,#0047,#0043,#003f
;
.music_info
	db "Great Courts (1989)(Ubi Soft)(Nick Jones)",0
	db "",0

	read "music_end.asm"
