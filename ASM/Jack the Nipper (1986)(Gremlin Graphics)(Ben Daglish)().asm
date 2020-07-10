; Music of Jack the Nipper (1986)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 05/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JACKTHNI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #445d
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

.l445d
	push bc
	ld b,a
	ld a,c
	ld c,b
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
	ret
	ld a,(l4abe)
	or a
	ret nz
	ld a,(de)
	inc de
	ld (l44a1),a
	ld (l4ab8),de
	ld a,#01
	ld (l4abe),a
	ret
.l4494
	ld c,#07
	ld a,#30
	ld (l4650),a
	call l445d
	ld c,#06
.l44a1 equ $ + 1
	ld a,#1f
	call l445d
	ld a,(de)
	inc de
	push af
	ld a,(de)
	inc de
	ld (l44c7),a
	pop af
	ld (l4ab8),de
	inc a
	call z,l44d0
	call l4514
.l44b9
	ld c,#01
	ld a,d
	call l445d
	dec c
	ld a,e
	call l445d
	ld c,#08
.l44c7 equ $ + 1
	ld a,#00
	call l445d
	ld c,#0e
	jp l445d
.l44d0
	ld (l4abe),a
	ld (l44c7),a
	inc a
	ret
	db #30,#0a,#2e,#09,#2d,#09,#2c,#08
	db #2b,#08,#2a,#08,#28,#07,#28,#07
	db #29,#08,#2d,#09,#2f,#0a,#ff,#14
	db #10,#19,#10,#0c,#10,#ff,#01,#06
	db #ff,#0f,#07,#2d,#0f,#2a,#0f,#1e
	db #0f,#17,#0f,#13,#0f,#11,#0f,#10
	db #0f,#0f,#0f,#0e,#0f,#0c,#0f,#0a
	db #0f,#08,#0f,#ff
.l4514
	dec a
	jr z,l4519
	add #0c
.l4519
	ld hl,l4651
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ret
	ld a,(l4abf)
	or a
	ret nz
	ld (l4abc),de
	ld a,#01
	ld (l4abf),a
	ret
.l4534
	ld a,(de)
	inc de
	push af
	ld a,(de)
	inc de
	ld (l4abc),de
	ld (l44c7),a
	pop af
	inc a
	jr nz,l454b
	ld (l4abf),a
	ld (l44c7),a
	inc a
.l454b
	call l4514
.l454e
	ld c,#0b
	xor a
	call l445d
	inc c
	ld a,#03
	call l445d
	inc c
	ld a,#09
	call l445d
	ld c,#07
	ld a,#38
	ld (l4650),a
	call l445d
	jp l44b9
;
.play_music
.l456d
;
	ld a,(l4ad3)
	cp #03
	jr nz,l458a
	ld a,(l4ad2)
	or a
	jr z,l458a
	xor a
	ld c,#09
	call l445d
	inc c
	xor a
	call l445d
	ld c,#0e
	jp l445d
.l458a
	ld hl,(l464a)
	ld a,(l464c)
	dec a
	jr nz,l459e
	ld a,#1a
	ld (l464e),a
	inc hl
.l459a equ $ + 1
	ld a,#0c
	ld (l464a),hl
.l459e
	ld (l464c),a
	ld a,(hl)
	ld hl,l4651
	ld e,a
	ld d,#00
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	exx
	ld hl,(l4648)
	ld a,(l464d)
	dec a
	jr nz,l45c2
	ld a,#1a
	ld (l464f),a
	inc hl
	ld (l4648),hl
.l45c1 equ $ + 1
	ld a,#0c
.l45c2
	ld (l464d),a
	ld a,(hl)
	cp #fe
	jr nz,l45e1
	ld hl,l4820
	ld (l45e5),hl
	ld (l45eb),hl
	ld a,#02
	ld (l459a),a
	ld (l45c1),a
	xor a
	ld (#752d),a
	jr l45e4
.l45e1
	inc a
	jr nz,l45fb
.l45e5 equ $ + 1
.l45e4
	ld hl,l4820
	ld (l4648),hl
.l45eb equ $ + 1
	ld hl,l4820
	ld (l464a),hl
	ld a,#01
	ld (l464c),a
	ld (l464d),a
	jp l456d
.l45fb
	dec a
	ld hl,l4651
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld c,#07
	ld a,(l4650)
	call l445d
	ld c,#04
	ld a,e
	call l445d
	inc c
	ld a,d
	call l445d
	exx
	ld c,#02
	ld a,e
	call l445d
	inc c
	ld a,d
	call l445d
	ld c,#09
	ld a,(l464e)
	dec a
	jr z,l4631
	ld (l464e),a
.l4631
	rra
	call l445d
	inc c
	ld a,(l464f)
	dec a
	jr z,l463f
	ld (l464f),a
.l463f
	rra
	call l445d
	ld c,#0e
	jp l445d
.l464a equ $ + 2
.l4648
	dw l4820,l4820
.l464c
	db #01
.l464d
	db #01
.l464e
	db #0f
.l464f
	db #0f
.l4650
	db #38
.l4651
	dw #0000,#04fc,#04b4,#0470
	dw #0431,#03f4,#03bc,#0386
	dw #0353,#0324,#02f6,#02cc
	dw #02a4,#027e,#025a,#0238
	dw #0218,#01fa,#01de,#01c3
	dw #01aa,#0192,#017b,#0166
	dw #0152,#013f,#012d,#011c
	dw #010c,#00fd,#00ef,#00e1
	dw #00d5,#00c9,#00be,#00b3
	dw #00a9,#009f,#0096,#008e
	dw #0086,#007f,#0077,#0071
	dw #006a,#0064,#005f,#0059
	dw #0054,#0050,#004b,#0047
	dw #0043,#003f,#003c,#0038
	dw #0035,#0032,#002f,#002d
	dw #002a,#0028,#0026,#0024
	dw #0022
	ld a,(l4acc)
	push af
	xor a
	ld (l4acc),a
	ld (l4acb),a
	pop af
	ld (#74ee),a
	ret
.l46e3
	ld a,#47
	ld b,#00
	ld c,#02
	call l475b
	jr nz,l46ef
	ld b,c
.l46ef
	ld a,#25
	ld c,#04
	call l475b
	jr nz,l46fb
	ld a,b
	or c
	ld b,a
.l46fb
	ld a,#3f
	ld c,#01
	call l475b
	jr nz,l470b
	bit 1,b
	jr nz,l470b
	ld a,b
	or c
	ld b,a
.l470b
	ld a,#22
	ld c,#08
	call l475b
	jr nz,l4717
	ld a,b
	or c
	ld b,a
.l4717
	ld c,b
	ld a,#20
	call l475b
	ld a,#00
	jr nz,l4723
	ld a,#10
.l4723
	or c
	ret
.l4725
	ld bc,#f792
	out (c),c
	ld bc,#f659
	out (c),c
	ld b,#f4
	in a,(c)
	ld bc,#f782
	out (c),c
	cpl
	ld c,a
	and #0f
	ld l,a
	ld h,#00
	ld de,l474b
	add hl,de
	ld a,c
	and #10
	or (hl)
	ld (l4acc),a
	ret
.l474b
	db #00,#08,#04,#0c,#02,#0a,#06,#0e
	db #01,#09,#05,#0d,#03,#0b,#07,#0f
.l475b
	push bc
	ld bc,#f792
	out (c),c
	dec b
	ld l,a
	and #78
	rrca
	rrca
	rrca
	or #50
	ld c,a
	out (c),c
	ld a,l
	and #07
	rlca
	rlca
	rlca
	or #47
	ld (l4782),a
	ld b,#f4
	in a,(c)
	ld bc,#f782
	out (c),c
.l4782 equ $ + 1
	bit 0,a
	pop bc
.l4784
	ret
	db #20,#25,#25,#25,#20,#22,#25,#20
.l4793 equ $ + 6
	db #00,#20,#1e,#1d,#1b,#19,#fe,#0d
	db #14,#0d,#14,#0d,#14,#0d,#14,#00
.l47a2 equ $ + 5
	db #0d,#14,#12,#19,#0d,#fe,#31,#2e
	db #31,#2e,#36,#33,#36,#33,#31,#2f
.l47af equ $ + 2
	db #2c,#2a,#fe,#2e,#2a,#2e,#2a,#33
.l47bc equ $ + 7
	db #2f,#33,#2f,#2e,#2c,#29,#25,#fe
	db #1d,#1d,#00,#1e,#1d,#00,#19,#00
	db #1d,#1d,#00,#1e,#1d,#00,#00,#00
	db #1d,#1d,#00,#1e,#1d,#00,#19,#00
	db #1d,#1d,#00,#1e,#20,#00,#00,#00
	db #22,#22,#00,#23,#22,#00,#1e,#00
	db #24,#24,#00,#25,#24,#00,#20,#00
.l47ee equ $ + 1
	db #25,#fe,#0d,#14,#0d,#14,#0d,#14
	db #0d,#14,#0d,#14,#0d,#14,#0d,#14
	db #0d,#14,#0d,#14,#0d,#14,#0d,#14
	db #0d,#14,#0d,#14,#0d,#14,#0d,#14
	db #0d,#14,#0f,#16,#0f,#16,#0f,#16
	db #0f,#16,#0f,#16,#0f,#16,#0f,#16
.l4820 equ $ + 3
	db #0f,#16,#0f,#fe,#00,#ff
;
.init_music_1
;
	ld a,#0b
	ld (l459a),a
	ld (l45c1),a
	ld hl,l47af
	ld (l45e5),hl
	ld (l4648),hl
	ld hl,l47a2
	ld (l45eb),hl
	jr l486c
.init_music_0
;
	ld a,#0c
	ld (l459a),a
	ld (l45c1),a
	ld hl,l47ee
	ld (l45e5),hl
	ld (l4648),hl
	ld hl,l47bc
	ld (l45eb),hl
	jr l486c
;
.init_music_2
;
	ld a,#08
	ld (l459a),a
	ld (l45c1),a
	ld hl,l7551
	ld (l4648),hl
	ld (l45e5),hl
	ld hl,l08ff
	ld (l45eb),hl
.l486c
	ld (l464a),hl
	ld a,#01
	ld (l464c),a
	ld (l464d),a
	ret
;
.init_music_3
;
	ld a,#0b
	ld (l459a),a
	ld (l45c1),a
	ld hl,l4793
	ld (l45e5),hl
	ld (l4648),hl
	ld hl,l4784
	ld (l45eb),hl
	jr l486c
	push de
	push bc
	push af
	call l48dc
	pop af
	pop bc
	pop de
	ret
	push de
	push bc
	push af
	call l4909
	pop af
	pop bc
	pop de
	ret
	push de
	push bc
	push af
	call l48af
	pop af
	pop bc
	pop de
	ret
.l48af
	push hl
	push hl
	ld de,#6844
	sub #20
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,de
	ex de,hl
	pop hl
	ld a,#08
.l48c1
	ex af,af'
	ld a,(de)
	inc de
	inc l
	ld (hl),a
	rld
	push af
	ld a,(hl)
	or #0f
	ld (hl),a
	pop af
	or #0f
	dec l
	ld (hl),a
	ld bc,#0040
	add hl,bc
	ex af,af'
	dec a
	jr nz,l48c1
	pop hl
	ret
.l48dc
	push hl
	push hl
	ld de,#6844
	sub #20
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,de
	ex de,hl
.l48eb
	pop hl
.l48ec
	ld a,(de)
	inc de
	ld c,a
	and #f0
	ld b,a
	rrca
	rrca
	rrca
	rrca
	or b
	ld (hl),a
	inc l
	ld a,c
	rld
	ld a,c
	rld
	ld bc,#07ff
	add hl,bc
	bit 7,h
	jr nz,l48ec
	pop hl
	ret
.l4909
	push hl
	push hl
	ld de,#6844
	sub #20
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,de
	ex de,hl
	ld hl,#7530
	bit 0,(hl)
	jr z,l4926
	pop hl
	ld a,h
	add #08
	ld h,a
	jr l48ec
.l4926
	inc de
	jr l48eb
	push af
	push bc
	push de
	push hl
	exx
	push hl
	push de
	push bc
	exx
	ld b,#f5
	in a,(c)
	and #01
	jr z,l4962
	ld (l4ac9),a
	xor a
	ld (l4aca),a
	ld a,(l4ac1)
	xor #01
	ld (l4ac1),a
	ld bc,#7f8d
	out (c),c
	call l456d
	ld bc,#7f00
	ld hl,#7094
	ld a,#10
	out (c),a
	ld a,#54
	out (c),a
	jp l4a63
.l4962
	ld (l4ac9),a
	ld a,(l4aca)
	inc a
	ld (l4aca),a
	cp #04
	jp z,l4a52
	cp #01
	jp z,l4a1e
	cp #02
	jp z,l49f4
	cp #03
	jr z,l49ba
	ld bc,#7f8c
	out (c),c
	ld a,#40
	call l475b
	ld c,#01
	jr nz,l498f
	ld c,#00
.l498f
	ld a,#41
	call l475b
	ld a,#02
	jr nz,l499a
	ld a,#00
.l499a
	or c
	ld (l4acf),a
	ld a,(l4ad0)
	bit 7,a
	jr nz,l49b0
	call l475b
	ld a,#80
	jr z,l49ad
	inc a
.l49ad
	ld (l4ad0),a
.l49b0
	ld a,(#752d)
	cp #02
	jp nz,l4aad
	jr l49dd
.l49ba
	xor a
	ld (l4acd),a
	ld (l4ad1),a
	ld a,#2c
	call l475b
	jr nz,l49cd
	ld a,#01
	ld (l4acd),a
.l49cd
	ld a,#43
	call l475b
	jp nz,l4aad
	ld a,#01
	ld (l4ad1),a
	jp l4aad
.l49dd
	ld a,#2f
	call l475b
	jr z,l49ec
	call l4725
	and #10
	jp z,l4aad
.l49ec
	ld a,#01
	ld (#752d),a
	jp l4aad
.l49f4
	ld a,(l4ac1)
	or a
	jr nz,l4a0e
	ld a,(l4acb)
	or a
	jr nz,l4a0e
	call l46e3
	or a
	jr z,l4a0e
	ld (l4acc),a
	ld a,#01
	ld (l4acb),a
.l4a0e
	ld a,(#752d)
	or a
	jp z,l4aad
	ld hl,l4ac6
	ld bc,#7f01
	jp l4a63
.l4a1e
	ld a,(l4ac1)
	or a
	jp z,l4aad
	ld a,(l4acb)
	or a
	jp nz,l4aad
	ld a,(l4ad2)
	ld c,a
	ld a,#26
	call l475b
	ld a,c
	jr nz,l4a40
	xor #01
	ld (l4ad2),a
	or a
	jr z,l4a40
.l4a40
	call l4725
	or a
	jp z,l4aad
	ld (l4acc),a
	ld a,#01
	ld (l4acb),a
	jp l4aad
.l4a52
	ld bc,#7f00
	push hl
	pop hl
	nop
	nop
	ld hl,l4ac2
	ld a,#10
	out (c),a
	ld a,(hl)
	out (c),a
.l4a63
	out (c),c
	ld a,(hl)
	inc hl
	out (c),a
	inc c
	bit 2,c
	jr z,l4a63
	ld a,(l4ac9)
	or a
	jp nz,l4aad
	ld a,(l4ac1)
	or a
	jp z,l4aad
	ld a,(l4abe)
	or a
	jr nz,l4a9a
	ld a,(l4abf)
	or a
	jr z,l4aad
	ld de,(l4abc)
	call l4534
	jr l4aad
	ld de,(l4aba)
	call l454e
	jr l4aa3
.l4a9a
	ld de,(l4ab8)
	call l4494
	jr l4aad
.l4aa3
	xor a
	ld (l4abe),a
	ld (l4abf),a
	ld (l4ac0),a
.l4aad
	exx
	pop bc
	pop de
	pop hl
	exx
	pop hl
	pop de
	pop bc
	pop af
	ei
	ret
.l4abf equ $ + 7
.l4abe equ $ + 6
.l4abc equ $ + 4
.l4aba equ $ + 2
.l4ab8
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4ac6 equ $ + 6
.l4ac2 equ $ + 2
.l4ac1 equ $ + 1
.l4ac0
	db #00,#01,#54,#4b,#47,#4b,#4b,#47
.l4acf equ $ + 7
.l4acd equ $ + 5
.l4acc equ $ + 4
.l4acb equ $ + 3
.l4aca equ $ + 2
.l4ac9 equ $ + 1
	db #54,#01,#00,#00,#00,#00,#00,#00
.l4ad3 equ $ + 3
.l4ad2 equ $ + 2
.l4ad1 equ $ + 1
.l4ad0
	db #80,#00,#00,#00
;#7551
.l7551
	db #00,#27,#23,#27,#23,#27,#23,#22
	db #23,#25,#27,#23,#27,#23,#27,#23
	db #28,#27,#25,#27,#23,#27,#23,#27
	db #23,#22,#23,#25,#23,#25,#27,#25
	db #27,#28,#27,#23,#27,#23,#27,#23
	db #22,#23,#25,#27,#23,#27,#23,#27
	db #23,#28,#27,#25,#27,#23,#27,#23
	db #27,#23,#22,#23,#25,#23,#25,#27
	db #25,#27,#28,#2a,#27,#2a,#27,#2a
	db #27,#26,#27,#29,#2a,#27,#2a,#27
	db #2a,#27,#2c,#2a,#29,#2a,#27,#2a
	db #27,#2a,#27,#26,#27,#29,#27,#29
	db #2a,#29,#2a,#2c,#2a,#2c,#2e,#2a
	db #27,#2a,#27,#2a,#27,#26,#27,#29
	db #2a,#27,#2a,#27,#2a,#27,#2c,#2a
	db #29,#2a,#27,#2a,#27,#2a,#27,#26
	db #27,#29,#27,#29,#2a,#29,#2a,#2c
	db #2a,#2c,#2e,#ff

;#08ff
.l08ff
	db #ee,#17,#14,#17,#14,#17,#14,#12
	db #14,#16,#17,#14,#17,#14,#17,#14
	db #18,#17,#16,#17,#14,#17,#14,#17
	db #14,#12,#14,#16,#14,#16,#17,#16
	db #17,#18,#17,#14,#17,#14,#17,#14
	db #12,#14,#16,#17,#14,#17,#14,#17
	db #14,#18,#17,#16,#17,#14,#17,#14
	db #17,#14,#12,#14,#16,#14,#16,#17
	db #16,#17,#18,#1b,#17,#1b,#17,#1b
	db #17,#15,#17,#19,#1b,#17,#1b,#17
	db #1b,#17,#1d,#1b,#19,#1b,#17,#1b
	db #17,#1b,#17,#15,#17,#19,#17,#19
	db #1b,#19,#1b,#1d,#1b,#1d,#1e,#1b
	db #17,#1b,#17,#1b,#17,#15,#17,#19
	db #1b,#17,#1b,#17,#1b,#17,#1d,#1b
	db #19,#1b,#17,#1b,#17,#1b,#17,#15
	db #17,#19,#17,#19,#1b,#19,#1b,#1d
	db #1b,#1d,#1e,#ff
;
; #494e
; call #456d	; play
; call &4823	; init
; #483c	; main theme
; #1012
; ld c,#0d
; ld a,#09
; call #445d
;
.init_music	; added by Megachur
;
	or a
	jp z,init_music_0
	dec a
	jp z,init_music_1
	dec a
	jp z,init_music_2
	jp init_music_3
;
.music_info
	db "Jack the Nipper (1986)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
