; Music of Cybernoid II The Revenge (2016)(Epyteor)(SuTeKH)(StarkOs)
; Ripped by Megachur the 05/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CYBERITR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #77d0

	read "music_header.asm"

	jp l8042
	jp l77dd
	jp l8026
.l77dc equ $ + 3
.l77db equ $ + 2
	db #d0,#77,#00,#00
;
.play_music
.l77dd
;
	xor a
	ld (l77db),a
	ld (l800d),a
.l77e5 equ $ + 1
	ld a,#00
.l77e7 equ $ + 1
	cp #00
	jr z,l77f1
	inc a
	ld (l77e5),a
	jp l7a80
.l77f1
	xor a
	ld (l77e5),a
.l77f5
	or a
	jp nc,l78d7
	ld (l78ff),a
	ld (l796a),a
	ld (l79d5),a
	ld a,#b7
	ld (l77f5),a
.l7808 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l783e
.l780e equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l783b
	ld b,a
	and #1f
	bit 4,a
	jr z,l781f
	or #e0
.l781f
	ld (l790c),a
	rl b
	rl b
	jr nc,l782d
	ld a,(hl)
	ld (l7977),a
	inc hl
.l782d
	rl b
	jr nc,l7836
	ld a,(hl)
	ld (l79e2),a
	inc hl
.l7836
	ld (l780e),hl
	jr l7841
.l783b
	ld (l780e),hl
.l783e
	ld (l7808),a
.l7842 equ $ + 1
.l7841
	ld a,#00
	sub #01
	jr c,l784e
	ld (l7842),a
.l784b equ $ + 1
	ld a,#00
	jr l7869
.l784f equ $ + 1
.l784e
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l785c
	ld (l784f),hl
	jr l7869
.l785c
	ld (l784b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l784f),hl
	ld (l7842),a
	ld a,b
.l7869
	ld (l7a40),a
.l786d equ $ + 1
	ld hl,#0000
	ld de,l7905
	ldi
	ldi
	ld de,l7970
	ldi
	ldi
	ld de,l79db
	ldi
	ldi
	ld (l786d),hl
.l7888 equ $ + 1
	ld a,#00
	or a
	jr nz,l789a
.l788d equ $ + 1
	ld a,#00
	sub #01
	jr c,l78a8
	ld (l788d),a
.l7896 equ $ + 1
	ld hl,#0000
	jr l78e0
.l789b equ $ + 1
.l789a
	ld a,#00
	sub #01
	jr c,l78a8
	ld (l789b),a
	ld hl,(l78a9)
	jr l78cd
.l78a9 equ $ + 1
.l78a8
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l78c5
	ld (l788d),a
	xor a
	ld (l7888),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l78a9),hl
	ex de,hl
	ld (l7896),hl
	jr l78e0
.l78c5
	ld (l789b),a
	ld a,#01
	ld (l7888),a
.l78cd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l78a9),hl
	ex de,hl
	jr l78e0
.l78d8 equ $ + 1
.l78d7
	ld a,#00
	sub #01
	jr nc,l78fb
.l78de equ $ + 1
	ld hl,#0000
.l78e0
	ld a,(hl)
	inc hl
	srl a
	jr c,l78f8
	srl a
	jr c,l78ef
	ld (l77e7),a
	jr l78f7
.l78ef
	ld (l77db),a
.l78f3 equ $ + 1
	ld a,#01
	ld (l77dc),a
.l78f7
	xor a
.l78f8
	ld (l78de),hl
.l78fb
	ld (l78d8),a
.l78ff equ $ + 1
	ld a,#00
	sub #01
	jr nc,l7966
.l7905 equ $ + 1
	ld hl,#0000
.l7908 equ $ + 1
	ld bc,#0100
.l790c equ $ + 2
.l790b equ $ + 1
	ld de,#0000
.l790f equ $ + 2
	ld lx,#00
	call l7b7f
	ld a,lx
	ld (l790f),a
	ld (l7a8a),hl
	exx
	ld (l7905),hl
	ld a,c
	ld (l7908),a
	ld (l7a84),a
	xor a
	or hy
	jr nz,l7964
	ld (l7aa7),a
	ld d,a
	ld a,e
	ld (l790b),a
	ld l,d
	ld h,l
	ld (l7a87),hl
.l7939 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l7ab8
	ldi
	ldi
	ld de,l7ab0
	ldi
	ldi
	ld de,l7aa9
	ldi
	ld de,l7aba
	ldi
	ld a,(hl)
	inc hl
	ld (l7a99),hl
	ld hl,l800d
	or (hl)
	ld (hl),a
.l7964
	ld a,ly
.l7966
	ld (l78ff),a
.l796a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l79d1
.l7970 equ $ + 1
	ld hl,#0000
.l7973 equ $ + 1
	ld bc,#0200
.l7977 equ $ + 2
.l7976 equ $ + 1
	ld de,#0000
.l797a equ $ + 2
	ld lx,#00
	call l7b7f
	ld a,lx
	ld (l797a),a
	ld (l7adc),hl
	exx
	ld (l7970),hl
	ld a,c
	ld (l7973),a
	ld (l7ad6),a
	xor a
	or hy
	jr nz,l79cf
	ld (l7af9),a
	ld d,a
	ld a,e
	ld (l7976),a
	ld l,d
	ld h,l
	ld (l7ad9),hl
.l79a4 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l7b0a
	ldi
	ldi
	ld de,l7b02
	ldi
	ldi
	ld de,l7afb
	ldi
	ld de,l7b0c
	ldi
	ld a,(hl)
	inc hl
	ld (l7aeb),hl
	ld hl,l800d
	or (hl)
	ld (hl),a
.l79cf
	ld a,ly
.l79d1
	ld (l796a),a
.l79d5 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l7a3c
.l79db equ $ + 1
	ld hl,#0000
.l79de equ $ + 1
	ld bc,#0300
.l79e2 equ $ + 2
.l79e1 equ $ + 1
	ld de,#0000
.l79e5 equ $ + 2
	ld lx,#00
	call l7b7f
	ld a,lx
	ld (l79e5),a
	ld (l7b2e),hl
	exx
	ld (l79db),hl
	ld a,c
	ld (l79de),a
	ld (l7b28),a
	xor a
	or hy
	jr nz,l7a3a
	ld (l7b4b),a
	ld d,a
	ld a,e
	ld (l79e1),a
	ld l,d
	ld h,l
	ld (l7b2b),hl
.l7a0f equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l7b5c
	ldi
	ldi
	ld de,l7b54
	ldi
	ldi
	ld de,l7b4d
	ldi
	ld de,l7b5e
	ldi
	ld a,(hl)
	inc hl
	ld (l7b3d),hl
	ld hl,l800d
	or (hl)
	ld (hl),a
.l7a3a
	ld a,ly
.l7a3c
	ld (l79d5),a
.l7a40 equ $ + 1
	ld a,#00
	sub #01
	jr c,l7a4a
	ld (l7a40),a
	jr l7a80
.l7a4a
	ld a,#37
	ld (l77f5),a
	ld hl,(l786d)
.l7a53 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l7a80
	ld (l7808),a
	ld (l7842),a
	ld (l78d8),a
.l7a64 equ $ + 1
	ld hl,#0000
	ld (l780e),hl
.l7a6a equ $ + 1
	ld hl,#0000
	ld (l784f),hl
.l7a70 equ $ + 1
	ld hl,#0000
	ld (l786d),hl
.l7a76 equ $ + 1
	ld hl,#0000
	ld (l78a9),hl
.l7a7c equ $ + 1
	ld a,#00
	ld (l7888),a
.l7a80
	ld hl,l800d
.l7a84 equ $ + 1
	ld d,#00
	exx
.l7a87 equ $ + 1
	ld hl,#0000
.l7a8a equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7a87),hl
	ld (l7cba),hl
	ld a,(l790f)
	ld lx,a
.l7a99 equ $ + 1
	ld hl,#0000
	ld iy,l7ea8
	ld a,(l7aa7)
	call l7c14
	ex de,hl
.l7aa7 equ $ + 1
	ld a,#00
.l7aa9 equ $ + 1
	cp #00
	jr z,l7aaf
	inc a
	jr l7acc
.l7ab0 equ $ + 1
.l7aaf
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l7ac8
.l7ab8 equ $ + 1
	ld de,#0000
.l7aba
	or a
	jr c,l7ac8
.l7abe equ $ + 1
	ld hl,#0000
	ld (l7ab0),hl
	dec a
	ld (l7aa9),a
	inc a
.l7ac8
	ld (l7a99),de
.l7acc
	ld (l7aa7),a
	ld a,hx
	ld (l7b7b),a
	exx
.l7ad6 equ $ + 1
	ld d,#00
	exx
.l7ad9 equ $ + 1
	ld hl,#0000
.l7adc equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7ad9),hl
	ld (l7cba),hl
	ld a,(l797a)
	ld lx,a
.l7aeb equ $ + 1
	ld hl,#0000
	ld iy,l7ef9
	ld a,(l7af9)
	call l7c14
	ex de,hl
.l7af9 equ $ + 1
	ld a,#00
.l7afb equ $ + 1
	cp #00
	jr z,l7b01
	inc a
	jr l7b1e
.l7b02 equ $ + 1
.l7b01
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l7b1a
.l7b0a equ $ + 1
	ld de,#0000
.l7b0c
	or a
	jr c,l7b1a
.l7b10 equ $ + 1
	ld hl,#0000
	ld (l7b02),hl
	dec a
	ld (l7afb),a
	inc a
.l7b1a
	ld (l7aeb),de
.l7b1e
	ld (l7af9),a
	ld a,hx
	ld (l7b78),a
	exx
.l7b28 equ $ + 1
	ld d,#00
	exx
.l7b2b equ $ + 1
	ld hl,#0000
.l7b2e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7b2b),hl
	ld (l7cba),hl
	ld a,(l79e5)
	ld lx,a
.l7b3d equ $ + 1
	ld hl,#0000
	ld iy,l7f4a
	ld a,(l7b4b)
	call l7c14
	ex de,hl
.l7b4b equ $ + 1
	ld a,#00
.l7b4d equ $ + 1
	cp #00
	jr z,l7b53
	inc a
	jr l7b70
.l7b54 equ $ + 1
.l7b53
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l7b6c
.l7b5c equ $ + 1
	ld de,#0000
.l7b5e
	or a
	jr c,l7b6c
.l7b62 equ $ + 1
	ld hl,#0000
	ld (l7b54),hl
	dec a
	ld (l7b4d),a
	inc a
.l7b6c
	ld (l7b3d),de
.l7b70
	ld (l7b4b),a
	ld a,hx
	sla a
.l7b78 equ $ + 1
	or #00
	rla
.l7b7b equ $ + 1
	or #00
	jp l7e9d
.l7b7f
	ld a,(hl)
	inc hl
	srl a
	jr c,l7bb8
	cp #60
	jr nc,l7bc0
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l7b98
	and #0f
	ld c,a
.l7b98
	rl b
	jr nc,l7b9e
	ld e,(hl)
	inc hl
.l7b9e
	rl b
	jr nc,l7bb0
.l7ba2
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l7bac
	dec h
.l7bac
	ld ly,#00
	ret
.l7bb0
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l7bb8
	ld hy,#00
	add d
	ld lx,a
	jr l7bb0
.l7bc0
	ld hy,#01
	sub #60
	jr z,l7be1
	dec a
	jr z,l7bf8
	dec a
	jr z,l7bea
	dec a
	jr z,l7ba2
	dec a
	jr z,l7bf4
	dec a
	jr z,l7c09
	dec a
	jr z,l7c00
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l7be1
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l7bea
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l7bf4
	ld c,(hl)
	inc hl
	jr l7ba2
.l7bf8
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l7c00
	ld a,(hl)
	inc hl
	ld (l77db),a
	ld a,b
	ld (l77dc),a
.l7c09
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l7c14
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l7cca
	bit 4,e
	jr z,l7c7c
	ld a,(hl)
	bit 6,a
	jr z,l7c49
	ld d,#08
	inc hl
	and #1f
	jr z,l7c30
	ld (l7f9b),a
	res 3,d
.l7c30
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l7c39
	xor a
.l7c39
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l7c49
	ld (l7f9b),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l7c65
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l7c5e
	xor a
.l7c5e
	ld (iy+#36),a
	ld hx,d
	jr l7c8f
.l7c65
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l7c6e
	xor a
.l7c6e
	ld (iy+#36),a
.l7c71
	ld hx,d
	ret
.l7c74
	ld (iy+#36),#00
	ld d,#09
	jr l7c71
.l7c7c
	ld d,#08
	ld a,e
	and #0f
	jr z,l7c74
	exx
	sub d
	exx
	jr nc,l7c89
	xor a
.l7c89
	ld (iy+#36),a
	ld hx,#08
.l7c8f
	bit 5,e
	jr z,l7c97
	ld a,(hl)
	inc hl
	jr l7c98
.l7c97
	xor a
.l7c98
	bit 6,e
	jr z,l7ca2
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l7ca5
.l7ca2
	ld de,#0000
.l7ca5
	add lx
	cp #60
	jr c,l7cad
	ld a,#5f
.l7cad
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l7ddd
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l7cba equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l7cca
	or a
	jr nz,l7cd4
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l7cd4
	ld a,e
	or #08
	and #09
	ld d,a
	ld (iy+#36),#10
	ld b,(hl)
	inc hl
	ld a,b
	and #03
	add a
	add #08
	ld (l8006),a
	bit 3,e
	jr z,l7cf6
	ld a,(hl)
	inc hl
	ld (l7f9b),a
	res 3,d
	jr l7cf6
.l7cf6
	ld hx,d
	xor a
	bit 7,b
	jr z,l7d08
	bit 6,b
	jr z,l7d03
	ld a,(hl)
	inc hl
.l7d03
	ld (l7db7),a
	ld a,#01
.l7d08
	ld (l7d50),a
	ld a,b
	rra
	and #0e
	ld (l7d61),a
	bit 4,e
	jp nz,l7dc2
	bit 1,e
	jr z,l7d1f
	ld a,(hl)
	inc hl
	jr l7d20
.l7d1f
	xor a
.l7d20
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l7d2d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l7d30
.l7d2d
	ld de,#0000
.l7d30
	add lx
	cp #60
	jr c,l7d38
	ld a,#5f
.l7d38
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l7ddd
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l7cba)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l7d50 equ $ + 1
	ld a,#00
	or a
	jr nz,l7d60
	ex af,af'
	bit 5,a
	jr nz,l7dcb
.l7d59
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l7d61 equ $ + 1
.l7d60
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l7d6b),a
	ld a,c
.l7d6b equ $ + 1
	jr l7d6c
.l7d6c
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	ld c,a
	jr nc,l7d85
	inc bc
.l7d85
	ld a,c
	ld (l7fd0),a
	ld a,b
	ld (l7feb),a
	ld a,(l7d50)
	or a
	jr z,l7dc0
	ld a,(l7d61)
	ld e,a
	srl a
	add e
	ld (l7d9f),a
	ld a,b
.l7d9f equ $ + 1
	jr l7da0
.l7da0
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	ld b,a
.l7db7 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l7dc0
	pop hl
	ret
.l7dc2
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l7d59
.l7dcb
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l7fd0),a
	inc hl
	ld a,(hl)
	ld (l7feb),a
	inc hl
	ret
.l7ddd
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
.l7e9d
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l7ea8 equ $ + 1
	ld a,#00
.l7eaa equ $ + 1
	cp #00
	jr z,l7ec2
	ld d,#00
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l7eaa),a
	exx
.l7ec3 equ $ + 1
.l7ec2
	ld a,#00
.l7ec5 equ $ + 1
	cp #00
	jr z,l7edd
	ld d,#01
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l7ec5),a
	exx
.l7ede equ $ + 1
.l7edd
	ld a,#00
.l7ee0 equ $ + 1
	cp #00
	jr z,l7ef8
	ld d,#08
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l7ee0),a
	exx
.l7ef9 equ $ + 1
.l7ef8
	ld a,#00
.l7efb equ $ + 1
	cp #00
	jr z,l7f13
	ld d,#02
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l7efb),a
	exx
.l7f14 equ $ + 1
.l7f13
	ld a,#00
.l7f16 equ $ + 1
	cp #00
	jr z,l7f2e
	ld d,#03
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l7f16),a
	exx
.l7f2f equ $ + 1
.l7f2e
	ld a,#00
.l7f31 equ $ + 1
	cp #00
	jr z,l7f49
	ld d,#09
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l7f31),a
	exx
.l7f4a equ $ + 1
.l7f49
	ld a,#00
.l7f4c equ $ + 1
	cp #00
	jr z,l7f64
	ld d,#04
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l7f4c),a
	exx
.l7f65 equ $ + 1
.l7f64
	ld a,#00
.l7f67 equ $ + 1
	cp #00
	jr z,l7f7f
	ld d,#05
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l7f67),a
	exx
.l7f80 equ $ + 1
.l7f7f
	ld a,#00
.l7f82 equ $ + 1
	cp #00
	jr z,l7f9a
	ld d,#0a
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l7f82),a
	exx
.l7f9b equ $ + 1
.l7f9a
	ld a,#00
.l7f9d equ $ + 1
	cp #00
	jr z,l7fb5
	ld d,#06
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l7f9d),a
	exx
.l7fb5
	ld a,h
.l7fb7 equ $ + 1
	cp #c0
	jr z,l7fcf
	ld d,#07
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l7fb7),a
	exx
.l7fd0 equ $ + 1
.l7fcf
	ld a,#00
.l7fd2 equ $ + 1
	cp #00
	jr z,l7fea
	ld d,#0b
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l7fd2),a
	exx
.l7feb equ $ + 1
.l7fea
	ld a,#00
.l7fed equ $ + 1
	cp #00
	jr z,l8005
	ld d,#0c
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l7fed),a
	exx
.l8006 equ $ + 1
.l8005
	ld a,#00
.l8008 equ $ + 1
	cp #ff
	jr nz,l8011
	ld h,a
.l800d equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l8011
	ld d,#0d
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l8008),a
	ret
;
.stop_music
.l8026
;
	xor a
	ld (l7ede),a
	ld (l7f2f),a
	ld (l7f80),a
	dec a
	ld (l7ee0),a
	ld (l7f31),a
	ld (l7f82),a
	ld (l7fb7),a
	ld a,#3f
	jp l7e9d
;
.real_init_music
.l8042
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l78f3),a
	ld de,#0003
	add hl,de
	ld de,l784f
	ldi
	ldi
	ld de,l786d
	ldi
	ldi
	ld de,l78a9
	ldi
	ldi
	ld de,l7939
	ldi
	ldi
	ld de,l7a64
	ldi
	ldi
	ld de,l7a6a
	ldi
	ldi
	ld de,l7a70
	ldi
	ldi
	ld de,l7a76
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l77e7),a
	ld (l77e5),a
	ld (l780e),hl
	ld hl,(l78a9)
	ld (l7a53),hl
	ld a,(hl)
	and #01
	ld (l7888),a
	ld hl,(l7a76)
	ld a,(hl)
	and #01
	ld (l7a7c),a
	ld hl,(l7939)
	ld (l79a4),hl
	ld (l7a0f),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l7a99),hl
	ld (l7aeb),hl
	ld (l7b3d),hl
	ld (l7ab8),hl
	ld (l7b0a),hl
	ld (l7b5c),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l7abe),de
	ld (l7b10),de
	ld (l7b62),de
	ld (l7ab0),de
	ld (l7b02),de
	ld (l7b54),de
	ld a,#37
	ld (l77f5),a
	ld hl,l80fe
.l80ee
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l80f5
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l80f5
	jr l80ee
.l80fe
	jr l8100
.l8100
	dw l7ea8,l7ec3,l7ef9,l7f14
	dw l7f4a,l7f65,l7f9b,l7ede
	dw l7f2f,l7f80,l7fd0,l7feb
	dw l8006,l7808,l7842,l788d
	dw l789b,l78d8,l7aa7,l7af9
	dw l7b4b,l7908,l7973,l79de
	dw #ff11,l7eaa,l7ec5,l7efb
	dw l7f16,l7f4c,l7f67,l7f9d
	dw l7fb7,l7ee0,l7f31,l7f82
	dw l7fd2,l7fed,l8008,l7aa9
	dw l7afb,l7b4d,#b703,l7aba
	dw l7b0c,l7b5e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l8200	; music data
	db #53,#4b,#31,#30
	db #00,#82,#01,#32,#00,#23,#82,#25
	db #82,#39,#83,#48,#83,#1a,#82,#23
	db #82,#25,#82,#39,#83,#05,#c0,#00
	db #00,#15,#18,#00,#18,#00,#3b,#7f
	db #2d,#cc,#84,#dc,#84,#f0,#84,#cc
	db #84,#23,#85,#f0,#84,#39,#85,#49
	db #85,#6d,#85,#39,#85,#a0,#85,#e9
	db #85,#26,#86,#68,#86,#7a,#86,#26
	db #86,#23,#85,#0a,#87,#9a,#87,#49
	db #85,#dc,#87,#9a,#87,#a0,#85,#dc
	db #87,#26,#86,#6c,#88,#0a,#87,#26
	db #86,#ca,#88,#0a,#87,#26,#86,#6c
	db #88,#0a,#87,#26,#86,#ca,#88,#0a
	db #87,#9a,#87,#2a,#89,#dc,#87,#98
	db #89,#da,#89,#40,#8a,#9a,#87,#2a
	db #89,#dc,#87,#98,#89,#da,#89,#40
	db #8a,#26,#86,#68,#86,#7a,#86,#26
	db #86,#23,#85,#0a,#87,#9a,#87,#49
	db #85,#dc,#87,#9a,#87,#a0,#85,#dc
	db #87,#d0,#8a,#12,#8b,#59,#8b,#d0
	db #8a,#bb,#8b,#59,#8b,#d0,#8a,#12
	db #8b,#59,#8b,#d0,#8a,#04,#8c,#59
	db #8b,#26,#86,#55,#8c,#05,#8d,#8d
	db #8d,#cf,#8d,#7f,#8e,#26,#86,#55
	db #8c,#05,#8d,#8d,#8d,#cf,#8d,#7f
	db #8e,#07,#8f,#24,#8f,#28,#8f,#48
	db #8f,#8a,#8f,#d9,#8f,#61,#90,#a3
	db #90,#f9,#90,#48,#8f,#81,#91,#d9
	db #8f,#ce,#91,#10,#92,#6b,#92,#26
	db #86,#55,#8c,#05,#8d,#8d,#8d,#cf
	db #8d,#7f,#8e,#07,#8f,#24,#8f,#28
	db #8f,#48,#8f,#8a,#8f,#d9,#8f,#61
	db #90,#a3,#90,#f9,#90,#48,#8f,#81
	db #91,#d9,#8f,#ce,#91,#10,#92,#6b
	db #92,#26,#86,#55,#8c,#05,#8d,#8d
	db #8d,#cf,#8d,#7f,#8e,#26,#86,#f3
	db #92,#31,#93,#ce,#91,#b9,#93,#f6
	db #93,#7e,#94,#c7,#94,#10,#95,#a0
	db #95,#f0,#95,#3f,#96,#36,#cd,#96
	db #01,#cf,#96,#0a,#cd,#96,#01,#cf
	db #96,#12,#cd,#96,#6e,#83,#78,#83
	db #80,#83,#93,#83,#a6,#83,#b3,#83
	db #bd,#83,#d0,#83,#df,#83,#f4,#83
	db #ff,#83,#14,#84,#2d,#84,#39,#84
	db #4c,#84,#5f,#84,#69,#84,#82,#84
	db #ad,#84,#75,#83,#78,#83,#ff,#37
	db #00,#00,#00,#00,#7f,#83,#80,#83
	db #00,#37,#00,#0f,#8f,#83,#93,#83
	db #00,#37,#00,#0f,#2f,#03,#0e,#0e
	db #2d,#03,#0d,#0c,#2c,#03,#0c,#a2
	db #83,#a6,#83,#00,#37,#00,#0f,#2f
	db #04,#0e,#0e,#2d,#04,#0d,#0c,#2c
	db #04,#0c,#b1,#83,#b3,#83,#00,#37
	db #00,#1a,#05,#19,#03,#81,#16,#bb
	db #83,#bd,#83,#00,#37,#00,#00,#81
	db #16,#cc,#83,#d0,#83,#00,#37,#00
	db #0f,#2f,#05,#0e,#0e,#2d,#05,#0d
	db #0c,#2c,#05,#0c,#75,#83,#df,#83
	db #0c,#b7,#00,#0f,#0d,#0b,#0a,#08
	db #06,#04,#02,#f2,#83,#f4,#83,#00
	db #37,#00,#1f,#67,#d5,#00,#1e,#65
	db #52,#01,#1d,#63,#aa,#01,#81,#16
	db #fb,#83,#ff,#83,#00,#37,#00,#0b
	db #0b,#2b,#0c,#12,#84,#14,#84,#00
	db #37,#00,#1f,#65,#c3,#01,#1e,#60
	db #fa,#01,#1d,#60,#a4,#02,#81,#16
	db #1b,#84,#2d,#84,#00,#37,#00,#4f
	db #ff,#ff,#4f,#ff,#ff,#4f,#ff,#ff
	db #4f,#01,#00,#4f,#01,#00,#4f,#01
	db #00,#34,#84,#39,#84,#00,#37,#00
	db #0d,#2d,#05,#2d,#08,#75,#83,#4c
	db #84,#00,#b7,#00,#1f,#65,#c3,#01
	db #1e,#60,#fa,#01,#1d,#60,#a4,#02
	db #75,#83,#5f,#84,#00,#b7,#00,#1f
	db #67,#d5,#00,#1e,#65,#52,#01,#1d
	db #63,#aa,#01,#66,#84,#69,#84,#00
	db #37,#00,#4f,#ff,#ff,#70,#84,#82
	db #84,#00,#37,#00,#4f,#01,#00,#4f
	db #01,#00,#4f,#01,#00,#4f,#ff,#ff
	db #4f,#ff,#ff,#4f,#ff,#ff,#9b,#84
	db #ad,#84,#00,#37,#00,#4f,#ff,#ff
	db #4e,#ff,#ff,#4e,#ff,#ff,#4d,#ff
	db #ff,#4d,#ff,#ff,#4c,#ff,#ff,#4b
	db #01,#00,#4b,#01,#00,#4b,#01,#00
	db #4b,#ff,#ff,#4b,#ff,#ff,#4b,#ff
	db #ff,#ba,#84,#cc,#84,#00,#37,#00
	db #0f,#0e,#0e,#0d,#0d,#0c,#4b,#ff
	db #ff,#4b,#ff,#ff,#4b,#ff,#ff,#4b
	db #01,#00,#4b,#01,#00,#4b,#01,#00
	db #2c,#c5,#01,#f4,#c6,#f8,#31,#c0
	db #1c,#28,#40,#f4,#c6,#f4,#2d,#c2
	db #78,#81,#02,#ea,#70,#80,#03,#e2
	db #78,#80,#02,#d2,#79,#d2,#74,#80
	db #03,#ce,#75,#c2,#5c,#c1,#04,#fd
	db #c6,#fe,#60,#80,#05,#ce,#60,#80
	db #04,#d2,#61,#d2,#61,#d2,#61,#d2
	db #61,#d2,#61,#d2,#61,#d2,#58,#40
	db #fd,#c6,#fe,#5c,#80,#05,#ce,#5c
	db #80,#04,#d2,#5d,#d2,#5d,#d2,#5d
	db #d2,#5d,#d2,#5d,#d2,#5d,#c2,#78
	db #81,#02,#ea,#70,#80,#03,#e2,#78
	db #80,#02,#d2,#7e,#80,#03,#d2,#7c
	db #80,#02,#ce,#7d,#c2,#26,#c5,#01
	db #fa,#c6,#f9,#29,#c0,#1c,#28,#40
	db #f4,#c6,#f4,#2d,#c2,#60,#81,#02
	db #d6,#66,#80,#06,#d6,#70,#80,#03
	db #d6,#78,#80,#02,#d6,#7e,#80,#06
	db #d2,#88,#80,#03,#d2,#82,#80,#06
	db #d2,#7c,#80,#02,#ce,#74,#80,#03
	db #c2,#56,#c0,#04,#ff,#c6,#ff,#58
	db #80,#05,#ce,#58,#80,#04,#d2,#59
	db #d2,#59,#d2,#59,#d2,#59,#d2,#59
	db #d2,#59,#d2,#58,#40,#fd,#c6,#fe
	db #5c,#80,#05,#ce,#5c,#80,#04,#d2
	db #5d,#d2,#5d,#d2,#5d,#d2,#5d,#d2
	db #5d,#d2,#5d,#c2,#70,#81,#03,#d6
	db #78,#80,#02,#d6,#74,#80,#03,#d2
	db #78,#80,#02,#ce,#74,#80,#03,#d2
	db #71,#d6,#6a,#80,#06,#d2,#6a,#80
	db #02,#ce,#65,#ce,#61,#ce,#65,#de
	db #72,#c0,#07,#0f,#c6,#0f,#c6,#0f
	db #c6,#0f,#70,#40,#0f,#c6,#0f,#c6
	db #0f,#c6,#0f,#6e,#40,#0f,#c6,#0f
	db #c6,#0f,#c6,#0f,#6c,#40,#0f,#c6
	db #0f,#c6,#0f,#c6,#0f,#56,#c0,#04
	db #ff,#c6,#ff,#58,#80,#05,#ce,#58
	db #80,#04,#d2,#59,#d2,#59,#d2,#59
	db #d2,#59,#d2,#59,#d2,#59,#d2,#58
	db #40,#fd,#c6,#fe,#5c,#80,#05,#ce
	db #5c,#80,#04,#d2,#5d,#d2,#5d,#d2
	db #5c,#80,#08,#ce,#5d,#ce,#5d,#ce
	db #5d,#ce,#5d,#5d,#ce,#5d,#ce,#5d
	db #5d,#5d,#60,#81,#09,#67,#6f,#61
	db #67,#6f,#61,#67,#6f,#61,#67,#6f
	db #61,#67,#6f,#61,#67,#6f,#61,#67
	db #6f,#61,#67,#6f,#61,#67,#6f,#61
	db #67,#6f,#61,#67,#5d,#65,#6b,#5d
	db #65,#6b,#5d,#65,#6b,#5d,#65,#6b
	db #5d,#65,#6b,#5d,#65,#6b,#5d,#65
	db #6b,#5d,#65,#6b,#5d,#65,#6b,#5d
	db #65,#6b,#5d,#65,#78,#81,#02,#ea
	db #70,#80,#03,#ea,#78,#80,#02,#d2
	db #74,#80,#03,#ce,#75,#c2,#60,#81
	db #0a,#ce,#60,#80,#04,#61,#60,#80
	db #08,#56,#80,#05,#5c,#80,#04,#61
	db #60,#80,#0a,#ce,#60,#80,#04,#61
	db #60,#80,#08,#56,#80,#05,#56,#80
	db #04,#5d,#60,#80,#0a,#ce,#60,#80
	db #04,#61,#60,#80,#08,#56,#80,#05
	db #5c,#80,#04,#61,#60,#80,#0a,#ce
	db #60,#80,#04,#61,#60,#80,#08,#56
	db #80,#05,#56,#80,#04,#59,#5c,#80
	db #0a,#ce,#5c,#80,#04,#5d,#5c,#80
	db #08,#52,#80,#05,#58,#80,#04,#5d
	db #5c,#80,#0a,#ce,#5c,#80,#04,#5d
	db #5c,#80,#08,#52,#80,#05,#52,#80
	db #04,#59,#5c,#80,#0a,#ce,#5c,#80
	db #04,#5d,#5c,#80,#08,#52,#80,#05
	db #58,#80,#04,#5d,#5c,#80,#0a,#ce
	db #5c,#80,#04,#5d,#5c,#80,#08,#52
	db #80,#05,#52,#80,#04,#59,#60,#81
	db #0a,#ce,#60,#80,#04,#61,#60,#80
	db #08,#56,#80,#05,#56,#80,#04,#5d
	db #60,#80,#0a,#ce,#60,#80,#04,#61
	db #60,#80,#08,#56,#80,#05,#56,#80
	db #04,#5d,#60,#80,#0a,#ce,#60,#80
	db #04,#61,#60,#80,#08,#56,#80,#05
	db #56,#80,#04,#5d,#60,#80,#0a,#ce
	db #60,#80,#04,#61,#60,#80,#08,#56
	db #80,#05,#56,#80,#04,#5d,#5c,#80
	db #0a,#ce,#5c,#80,#04,#5d,#5c,#80
	db #08,#52,#80,#05,#52,#80,#04,#59
	db #5c,#80,#0a,#ce,#5c,#80,#04,#5d
	db #5c,#80,#08,#52,#80,#05,#52,#80
	db #04,#59,#5c,#80,#0a,#ce,#5c,#80
	db #04,#5d,#5c,#80,#08,#52,#80,#05
	db #52,#80,#04,#59,#5c,#80,#0a,#ce
	db #5c,#80,#04,#5d,#5c,#80,#08,#52
	db #80,#05,#52,#80,#04,#59,#58,#81
	db #09,#61,#67,#59,#61,#67,#59,#61
	db #67,#59,#61,#67,#59,#61,#67,#59
	db #61,#67,#59,#61,#67,#59,#61,#67
	db #59,#61,#67,#59,#61,#67,#59,#61
	db #5d,#65,#6b,#5d,#65,#6b,#5d,#65
	db #6b,#5d,#65,#6b,#5d,#65,#6b,#5d
	db #65,#6b,#5d,#65,#6b,#5d,#65,#6b
	db #5d,#65,#6b,#5d,#65,#6b,#5d,#65
	db #58,#81,#0a,#ce,#58,#80,#04,#59
	db #58,#80,#08,#4e,#80,#05,#4e,#80
	db #04,#55,#58,#80,#0a,#ce,#58,#80
	db #04,#59,#58,#80,#08,#4e,#80,#05
	db #4e,#80,#04,#55,#58,#80,#0a,#ce
	db #58,#80,#04,#59,#58,#80,#08,#4e
	db #80,#05,#4e,#80,#04,#55,#58,#80
	db #0a,#ce,#58,#80,#04,#59,#58,#80
	db #08,#4e,#80,#05,#4e,#80,#04,#55
	db #5c,#80,#0a,#ce,#5c,#80,#04,#5d
	db #5c,#80,#08,#52,#80,#05,#52,#80
	db #04,#59,#5c,#80,#0a,#ce,#5c,#80
	db #04,#5d,#5c,#80,#08,#52,#80,#05
	db #52,#80,#04,#59,#5c,#80,#0a,#ce
	db #5c,#80,#04,#5d,#5c,#80,#08,#52
	db #80,#05,#52,#80,#04,#59,#5c,#80
	db #0a,#ce,#5c,#80,#04,#5d,#5c,#80
	db #08,#52,#80,#05,#52,#80,#04,#59
	db #60,#81,#01,#c4,#01,#ce,#60,#80
	db #0b,#d8,#60,#81,#01,#60,#83,#0b
	db #64,#81,#01,#64,#83,#0b,#64,#c1
	db #01,#fc,#66,#03,#66,#80,#0b,#ce
	db #64,#81,#01,#64,#83,#0b,#60,#81
	db #01,#60,#83,#0b,#56,#81,#01,#56
	db #83,#0b,#d0,#60,#81,#01,#60,#83
	db #0b,#d0,#60,#81,#01,#60,#83,#0b
	db #d0,#5c,#81,#01,#5c,#83,#0b,#d0
	db #5c,#81,#01,#c4,#01,#ce,#5c,#80
	db #0b,#d8,#c4,#02,#d2,#c4,#03,#d2
	db #c4,#04,#d2,#c4,#05,#c2,#60,#81
	db #01,#c4,#01,#ce,#60,#80,#0b,#d8
	db #60,#81,#01,#60,#83,#0b,#64,#81
	db #01,#64,#83,#0b,#64,#c1,#01,#fc
	db #66,#03,#66,#80,#0b,#ce,#64,#81
	db #01,#64,#83,#0b,#60,#81,#01,#60
	db #83,#0b,#56,#81,#01,#56,#83,#0b
	db #6e,#81,#01,#6e,#83,#0b,#78,#81
	db #01,#78,#83,#0b,#d0,#78,#81,#01
	db #78,#83,#0b,#d0,#74,#81,#01,#74
	db #83,#0b,#d0,#74,#81,#01,#74,#83
	db #0b,#dc,#c4,#02,#d2,#c4,#03,#d2
	db #c4,#04,#d2,#c4,#05,#c2,#78,#81
	db #01,#78,#83,#0b,#74,#81,#01,#74
	db #83,#0b,#70,#81,#01,#70,#83,#0b
	db #66,#81,#01,#66,#83,#0b,#d4,#78
	db #81,#01,#78,#83,#0b,#74,#81,#01
	db #74,#83,#0b,#70,#81,#01,#70,#83
	db #0b,#66,#81,#01,#66,#83,#0b,#d4
	db #78,#81,#01,#78,#83,#0b,#7c,#81
	db #01,#7c,#83,#0b,#7e,#81,#01,#7e
	db #83,#0b,#82,#81,#01,#82,#83,#0b
	db #7e,#81,#01,#7e,#83,#0b,#d4,#7c
	db #81,#01,#7c,#83,#0b,#d4,#74,#81
	db #01,#74,#83,#0b,#6a,#81,#01,#6a
	db #83,#0b,#d8,#c4,#02,#d2,#c4,#03
	db #d2,#c4,#04,#c2,#70,#81,#09,#79
	db #7f,#71,#79,#7f,#71,#79,#7f,#71
	db #79,#7f,#71,#79,#7f,#71,#79,#7f
	db #71,#79,#7f,#71,#79,#7f,#71,#79
	db #7f,#71,#79,#7f,#71,#79,#6f,#7d
	db #87,#6f,#7d,#87,#6f,#7d,#87,#6f
	db #7d,#87,#6f,#7d,#87,#6f,#7d,#87
	db #6f,#7d,#87,#6f,#7d,#87,#6f,#7d
	db #87,#6f,#7d,#87,#6f,#7d,#66,#81
	db #01,#c4,#01,#66,#80,#0b,#ce,#64
	db #81,#01,#64,#83,#0b,#60,#81,#01
	db #c4,#01,#60,#80,#0b,#d2,#66,#81
	db #01,#c4,#01,#66,#80,#0b,#ce,#70
	db #81,#01,#c4,#01,#70,#80,#0b,#ce
	db #78,#81,#01,#c4,#01,#78,#80,#0b
	db #ce,#7c,#81,#01,#7c,#83,#0b,#7e
	db #01,#d0,#7f,#7c,#81,#01,#7c,#83
	db #0b,#ec,#76,#c1,#07,#0f,#c6,#0f
	db #c6,#0f,#c6,#0f,#c6,#0f,#c6,#0f
	db #c6,#0f,#c6,#0f,#c6,#0f,#c6,#0f
	db #c6,#0f,#c6,#0f,#c6,#0f,#c6,#0f
	db #c6,#0f,#c6,#0f,#58,#81,#0a,#ce
	db #58,#80,#04,#59,#58,#80,#08,#4e
	db #80,#05,#4e,#80,#04,#55,#58,#80
	db #0a,#ce,#58,#80,#04,#59,#58,#80
	db #08,#4e,#80,#05,#4e,#80,#04,#55
	db #58,#80,#0a,#ce,#58,#80,#04,#59
	db #58,#80,#08,#4e,#80,#05,#4e,#80
	db #04,#55,#58,#80,#0a,#ce,#58,#80
	db #04,#59,#58,#80,#08,#4e,#80,#05
	db #4e,#80,#04,#55,#56,#80,#0a,#ce
	db #56,#80,#04,#57,#56,#80,#08,#4c
	db #80,#05,#4c,#80,#04,#53,#56,#80
	db #0a,#ce,#56,#80,#04,#5d,#5c,#80
	db #08,#52,#80,#05,#52,#80,#04,#53
	db #56,#80,#0a,#ce,#56,#80,#04,#57
	db #56,#80,#08,#4c,#80,#05,#4c,#80
	db #04,#53,#56,#80,#0a,#ce,#56,#80
	db #04,#57,#56,#80,#08,#4c,#80,#05
	db #4c,#80,#04,#53,#86,#89,#0b,#79
	db #6f,#87,#79,#6f,#87,#79,#6f,#87
	db #79,#6f,#87,#79,#6f,#87,#83,#79
	db #6f,#83,#79,#6f,#83,#79,#6f,#83
	db #79,#6f,#83,#79,#6f,#83,#7f,#79
	db #6f,#7f,#79,#6f,#7f,#79,#6f,#7f
	db #79,#6f,#7f,#79,#6f,#7f,#83,#79
	db #6f,#83,#79,#6f,#83,#79,#6f,#83
	db #79,#6f,#83,#79,#6f,#79,#60,#81
	db #01,#c4,#01,#e8,#66,#01,#c4,#01
	db #ce,#64,#01,#c4,#01,#ce,#60,#01
	db #c4,#01,#66,#01,#c4,#01,#ce,#64
	db #01,#c4,#01,#ce,#60,#01,#c4,#01
	db #56,#01,#c4,#01,#e8,#c6,#ff,#c6
	db #02,#c6,#fe,#c6,#02,#c6,#fe,#c6
	db #02,#c6,#fe,#c6,#02,#c6,#fe,#c6
	db #02,#c6,#fe,#c6,#02,#c6,#fe,#c6
	db #02,#c6,#fe,#c6,#02,#60,#81,#04
	db #ce,#60,#80,#05,#ce,#61,#ce,#60
	db #80,#04,#ce,#61,#ce,#60,#80,#05
	db #ce,#61,#ce,#60,#80,#04,#ce,#61
	db #ce,#60,#80,#05,#ce,#61,#ce,#60
	db #80,#04,#ce,#61,#ce,#60,#80,#05
	db #ce,#61,#ce,#60,#80,#04,#ce,#61
	db #ce,#60,#80,#05,#ce,#61,#ce,#60
	db #80,#04,#ce,#61,#ce,#60,#80,#05
	db #ce,#61,#ce,#60,#80,#04,#ce,#61
	db #ce,#60,#80,#05,#ce,#61,#ce,#60
	db #80,#04,#ce,#61,#ce,#60,#80,#05
	db #ce,#61,#ce,#60,#80,#04,#c2,#60
	db #81,#01,#c4,#01,#e8,#66,#01,#c4
	db #01,#ce,#64,#01,#c4,#01,#ce,#60
	db #01,#c4,#01,#6a,#01,#c4,#01,#ce
	db #6e,#01,#c4,#01,#ce,#70,#01,#c4
	db #01,#6e,#01,#c4,#01,#e8,#76,#c1
	db #07,#0f,#c6,#0f,#c6,#0f,#c6,#0f
	db #c6,#0f,#c6,#0f,#c6,#0f,#c6,#0f
	db #c6,#0f,#c6,#0f,#c6,#0f,#c6,#0f
	db #c6,#0f,#c6,#0f,#c6,#0f,#c6,#0f
	db #60,#81,#01,#c4,#01,#e8,#66,#01
	db #c4,#01,#ce,#64,#01,#c4,#01,#ce
	db #60,#01,#c4,#01,#6e,#01,#c4,#01
	db #ce,#74,#01,#c4,#01,#ce,#78,#01
	db #c4,#01,#78,#01,#c4,#01,#e8,#76
	db #c1,#07,#0f,#c6,#0f,#c6,#0f,#c6
	db #0f,#c6,#0f,#c6,#0f,#c6,#0f,#c6
	db #0f,#c8,#02,#0f,#c8,#04,#0f,#c8
	db #06,#0f,#c8,#08,#0f,#c8,#0a,#0f
	db #c8,#0c,#0f,#c8,#0e,#0f,#c8,#0f
	db #0f,#ca,#ce,#7e,#81,#01,#7e,#83
	db #0b,#78,#81,#01,#78,#83,#0b,#6e
	db #81,#01,#6e,#83,#0b,#7c,#81,#01
	db #7c,#83,#0b,#78,#81,#01,#78,#83
	db #0b,#6e,#81,#01,#6e,#83,#0b,#7e
	db #81,#01,#7e,#83,#0b,#ca,#ce,#7e
	db #81,#01,#7e,#83,#0b,#78,#81,#01
	db #78,#83,#0b,#6e,#81,#01,#6e,#83
	db #0b,#7c,#81,#01,#7c,#83,#0b,#78
	db #81,#01,#78,#83,#0b,#6e,#81,#01
	db #6e,#83,#0b,#7e,#81,#01,#7e,#83
	db #0b,#ca,#ce,#7c,#81,#01,#7c,#83
	db #0b,#74,#81,#01,#74,#83,#0b,#6a
	db #81,#01,#6a,#83,#0b,#7c,#81,#01
	db #7c,#83,#0b,#74,#81,#01,#74,#83
	db #0b,#6a,#81,#01,#6a,#83,#0b,#7c
	db #81,#01,#7c,#83,#0b,#ca,#ce,#74
	db #81,#01,#74,#83,#0b,#78,#81,#01
	db #78,#83,#0b,#7c,#81,#01,#7c,#83
	db #0b,#7e,#81,#01,#7e,#83,#0b,#7c
	db #81,#01,#7c,#83,#0b,#74,#81,#01
	db #74,#83,#0b,#6a,#81,#01,#6a,#83
	db #0b,#60,#81,#0a,#ce,#60,#80,#04
	db #61,#60,#80,#08,#60,#80,#05,#60
	db #80,#04,#61,#60,#80,#0a,#ce,#60
	db #80,#04,#61,#60,#80,#08,#ce,#60
	db #80,#04,#61,#60,#80,#0a,#ce,#60
	db #80,#04,#61,#60,#80,#08,#60,#80
	db #05,#60,#80,#04,#61,#60,#80,#0a
	db #ce,#60,#80,#04,#61,#60,#80,#08
	db #ce,#60,#80,#04,#61,#74,#80,#0a
	db #ce,#74,#80,#04,#75,#74,#80,#08
	db #74,#80,#05,#74,#80,#04,#75,#74
	db #80,#0a,#ce,#74,#80,#04,#75,#74
	db #80,#08,#ce,#74,#80,#04,#75,#74
	db #80,#0a,#ce,#74,#80,#04,#75,#74
	db #80,#08,#74,#80,#05,#74,#80,#04
	db #75,#74,#80,#0a,#ce,#74,#80,#04
	db #75,#74,#80,#08,#ce,#74,#80,#04
	db #75,#60,#81,#09,#6b,#71,#61,#6b
	db #71,#61,#6b,#71,#61,#6b,#71,#61
	db #6b,#71,#61,#6b,#71,#61,#6b,#71
	db #61,#6b,#71,#61,#6b,#71,#61,#6b
	db #71,#61,#6b,#61,#67,#6f,#61,#67
	db #6f,#61,#67,#6f,#61,#67,#6f,#61
	db #67,#6f,#61,#67,#6f,#61,#67,#6f
	db #61,#67,#6f,#61,#67,#6f,#61,#67
	db #6f,#61,#67,#ca,#ce,#78,#81,#01
	db #78,#83,#0b,#70,#81,#01,#70,#83
	db #0b,#6a,#81,#01,#6a,#83,#0b,#7c
	db #81,#01,#7c,#83,#0b,#70,#81,#01
	db #70,#83,#0b,#6a,#81,#01,#6a,#83
	db #0b,#78,#81,#01,#78,#83,#0b,#ca
	db #ce,#78,#81,#01,#78,#83,#0b,#70
	db #81,#01,#70,#83,#0b,#6a,#81,#01
	db #6a,#83,#0b,#7c,#81,#01,#7c,#83
	db #0b,#70,#81,#01,#70,#83,#0b,#6a
	db #81,#01,#6a,#83,#0b,#7e,#81,#01
	db #7e,#83,#0b,#ca,#ce,#7e,#81,#01
	db #7e,#83,#0b,#78,#81,#01,#78,#83
	db #0b,#6e,#81,#01,#6e,#83,#0b,#7c
	db #81,#01,#7c,#83,#0b,#78,#81,#01
	db #78,#83,#0b,#6e,#81,#01,#6e,#83
	db #0b,#7e,#81,#01,#7e,#83,#0b,#ca
	db #ce,#86,#81,#01,#86,#83,#0b,#7e
	db #81,#01,#7e,#83,#0b,#78,#81,#01
	db #78,#83,#0b,#6e,#81,#01,#6e,#83
	db #0b,#66,#81,#01,#66,#83,#0b,#60
	db #81,#01,#60,#83,#0b,#66,#81,#01
	db #66,#83,#0b,#6a,#81,#0a,#ce,#6a
	db #80,#04,#6b,#6a,#80,#08,#6a,#80
	db #05,#6a,#80,#04,#6b,#6a,#80,#0a
	db #ce,#6a,#80,#04,#6b,#6a,#80,#08
	db #ce,#6a,#80,#04,#6b,#6a,#80,#0a
	db #ce,#6a,#80,#04,#6b,#6a,#80,#08
	db #6a,#80,#05,#6a,#80,#04,#6b,#6a
	db #80,#0a,#ce,#6a,#80,#04,#6b,#6a
	db #80,#08,#ce,#6a,#80,#04,#6b,#60
	db #80,#0a,#ce,#60,#80,#04,#61,#60
	db #80,#08,#60,#80,#05,#60,#80,#04
	db #61,#60,#80,#0a,#ce,#60,#80,#04
	db #61,#60,#80,#08,#ce,#60,#80,#04
	db #61,#60,#80,#0a,#ce,#60,#80,#04
	db #61,#60,#80,#08,#60,#80,#05,#60
	db #80,#04,#61,#60,#80,#0a,#ce,#60
	db #80,#04,#61,#60,#80,#08,#ce,#60
	db #80,#04,#61,#56,#81,#0c,#c0,#1e
	db #c4,#01,#d2,#c4,#02,#d2,#c4,#03
	db #d2,#c4,#04,#d2,#c4,#05,#d2,#c4
	db #06,#d2,#c4,#07,#d2,#c4,#08,#c2
	db #60,#81,#05,#c2,#48,#81,#0d,#da
	db #49,#da,#49,#da,#49,#da,#48,#80
	db #0e,#d2,#49,#d2,#49,#d2,#49,#d2
	db #49,#ce,#49,#d2,#49,#d2,#49,#ce
	db #49,#ce,#49,#c2,#60,#81,#09,#67
	db #6f,#61,#67,#6f,#61,#67,#6f,#61
	db #67,#6f,#61,#67,#6f,#61,#67,#6f
	db #61,#67,#6f,#61,#67,#6f,#61,#67
	db #6f,#61,#67,#6f,#61,#67,#71,#6f
	db #67,#71,#6f,#67,#71,#6f,#67,#71
	db #6f,#67,#71,#6f,#67,#71,#6f,#67
	db #71,#6f,#67,#71,#6f,#67,#71,#6f
	db #67,#71,#6f,#67,#71,#6f,#60,#81
	db #01,#60,#83,#0b,#d8,#6e,#81,#01
	db #c4,#01,#6e,#80,#0b,#de,#c4,#02
	db #ce,#c4,#03,#ce,#6e,#81,#01,#6e
	db #83,#0b,#6a,#81,#01,#6a,#83,#0b
	db #66,#81,#01,#c4,#01,#66,#80,#0b
	db #ce,#64,#81,#01,#c4,#01,#64,#80
	db #0b,#ce,#66,#81,#01,#66,#83,#0b
	db #60,#81,#01,#c4,#01,#60,#80,#0b
	db #ea,#c4,#02,#ce,#c4,#03,#ce,#c4
	db #04,#ce,#c4,#05,#c2,#60,#81,#0a
	db #ce,#60,#80,#04,#61,#60,#80,#08
	db #60,#80,#05,#60,#80,#04,#61,#60
	db #80,#0a,#ce,#60,#80,#04,#61,#60
	db #80,#08,#ce,#60,#80,#04,#61,#60
	db #80,#0a,#ce,#60,#80,#04,#61,#60
	db #80,#08,#60,#80,#05,#60,#80,#04
	db #61,#60,#80,#0a,#ce,#60,#80,#04
	db #61,#60,#80,#08,#ce,#60,#80,#04
	db #61,#70,#80,#0a,#ce,#70,#80,#04
	db #71,#70,#80,#08,#70,#80,#05,#70
	db #80,#04,#71,#70,#80,#0a,#ce,#70
	db #80,#04,#71,#70,#80,#08,#ce,#70
	db #80,#04,#71,#70,#80,#0a,#ce,#70
	db #80,#04,#71,#70,#80,#08,#70,#80
	db #05,#70,#80,#04,#71,#70,#80,#0a
	db #ce,#70,#80,#04,#71,#70,#80,#08
	db #ce,#70,#80,#04,#71,#5c,#81,#09
	db #65,#6b,#5d,#65,#6b,#5d,#65,#6b
	db #5d,#65,#6b,#5d,#65,#6b,#5d,#65
	db #6b,#5d,#65,#6b,#5d,#65,#6b,#5d
	db #65,#6b,#5d,#65,#6b,#5d,#65,#61
	db #67,#6f,#61,#67,#6f,#61,#67,#6f
	db #61,#67,#6f,#61,#67,#6f,#61,#67
	db #6f,#61,#67,#6f,#61,#67,#6f,#61
	db #67,#6f,#61,#67,#6f,#61,#67,#5c
	db #81,#01,#c4,#01,#5c,#80,#0b,#d2
	db #6a,#81,#01,#c4,#01,#6a,#80,#0b
	db #d2,#66,#81,#01,#c4,#01,#66,#80
	db #0b,#ce,#6a,#81,#01,#6a,#83,#0b
	db #6e,#81,#01,#6e,#83,#0b,#d0,#70
	db #81,#01,#70,#83,#0b,#d0,#74,#81
	db #01,#74,#83,#0b,#6e,#81,#01,#6e
	db #83,#0b,#70,#81,#01,#70,#83,#0b
	db #6e,#81,#01,#c4,#01,#6e,#80,#0b
	db #e6,#c4,#01,#d2,#c4,#02,#d2,#c4
	db #03,#d2,#c4,#04,#c2,#74,#81,#0a
	db #ce,#74,#80,#04,#75,#74,#80,#08
	db #74,#80,#05,#74,#80,#04,#75,#74
	db #80,#0a,#ce,#74,#80,#04,#75,#74
	db #80,#08,#ce,#74,#80,#04,#75,#74
	db #80,#0a,#ce,#74,#80,#04,#75,#74
	db #80,#08,#74,#80,#05,#74,#80,#04
	db #75,#74,#80,#0a,#ce,#74,#80,#04
	db #75,#74,#80,#08,#ce,#74,#80,#04
	db #75,#78,#80,#0a,#ce,#78,#80,#04
	db #79,#78,#80,#08,#78,#80,#05,#78
	db #80,#04,#79,#78,#80,#0a,#ce,#78
	db #80,#04,#79,#78,#80,#08,#ce,#78
	db #80,#04,#79,#78,#80,#0a,#ce,#78
	db #80,#04,#79,#78,#80,#08,#78,#80
	db #05,#78,#80,#04,#79,#78,#80,#0a
	db #ce,#78,#80,#04,#79,#78,#80,#08
	db #ce,#78,#80,#04,#79,#60,#81,#01
	db #c4,#01,#60,#80,#0b,#d6,#6e,#81
	db #01,#c4,#01,#6e,#80,#0b,#e6,#66
	db #81,#01,#66,#83,#0b,#64,#81,#01
	db #64,#83,#0b,#5c,#81,#01,#5c,#83
	db #0b,#d0,#60,#81,#01,#60,#83,#0b
	db #d0,#4e,#81,#01,#4e,#83,#0b,#58
	db #81,#01,#c4,#01,#58,#80,#0b,#ee
	db #60,#81,#01,#60,#83,#0b,#6a,#81
	db #01,#6a,#83,#0b,#6e,#81,#01,#6e
	db #83,#0b,#52,#81,#09,#59,#61,#53
	db #59,#61,#53,#59,#61,#53,#59,#61
	db #53,#59,#61,#53,#59,#61,#53,#59
	db #61,#53,#59,#61,#53,#59,#61,#53
	db #59,#61,#53,#59,#61,#67,#6f,#61
	db #67,#6f,#61,#67,#6f,#61,#67,#6f
	db #61,#67,#6f,#61,#67,#6f,#61,#67
	db #6f,#61,#67,#6f,#61,#67,#6f,#61
	db #67,#6f,#61,#67,#70,#81,#01,#c4
	db #01,#70,#80,#0b,#ce,#6e,#81,#01
	db #6e,#83,#0b,#70,#81,#01,#c4,#01
	db #70,#80,#0b,#d2,#60,#81,#01,#c4
	db #01,#60,#80,#0b,#ce,#70,#81,#01
	db #70,#03,#6e,#01,#6e,#03,#6a,#01
	db #6a,#03,#d0,#5c,#01,#5c,#03,#64
	db #01,#64,#03,#66,#01,#66,#03,#60
	db #01,#c4,#01,#60,#80,#0b,#ea,#c4
	db #02,#ce,#c4,#03,#ce,#c4,#04,#ce
	db #c4,#05,#ce,#c4,#06,#ce,#c4,#07
	db #ce,#c4,#08,#ce,#c4,#09,#c2,#6a
	db #81,#0a,#ce,#6a,#80,#04,#6b,#6a
	db #80,#08,#6a,#80,#05,#6a,#80,#04
	db #6b,#6a,#80,#0a,#ce,#6a,#80,#04
	db #6b,#6a,#80,#08,#ce,#6a,#80,#04
	db #6b,#6a,#80,#0a,#ce,#6a,#80,#04
	db #6b,#6a,#80,#08,#6a,#80,#05,#6a
	db #80,#04,#6b,#6a,#80,#0a,#ce,#6a
	db #80,#04,#6b,#6a,#80,#08,#ce,#6a
	db #80,#04,#6b,#60,#80,#0a,#ce,#60
	db #80,#04,#61,#60,#80,#08,#60,#80
	db #05,#60,#80,#04,#61,#60,#80,#0a
	db #ce,#60,#80,#04,#61,#60,#80,#08
	db #ce,#60,#80,#04,#61,#60,#80,#0a
	db #ce,#60,#80,#04,#61,#60,#80,#08
	db #60,#80,#05,#60,#80,#04,#61,#60
	db #80,#0a,#ce,#60,#80,#04,#61,#60
	db #80,#08,#ce,#60,#80,#04,#61,#78
	db #81,#01,#c4,#01,#ce,#78,#80,#0b
	db #e0,#c4,#02,#d2,#c4,#03,#d2,#c4
	db #04,#ce,#7c,#81,#01,#c4,#01,#7c
	db #80,#0b,#ce,#7e,#81,#01,#c4,#01
	db #7e,#80,#0b,#ce,#7c,#81,#01,#c4
	db #01,#ce,#7c,#80,#0b,#dc,#c4,#02
	db #d2,#c4,#03,#d2,#c4,#04,#d2,#c4
	db #05,#d2,#c4,#06,#c2,#60,#81,#0a
	db #ce,#60,#80,#04,#61,#78,#80,#08
	db #78,#80,#05,#60,#80,#04,#61,#60
	db #80,#0a,#ce,#60,#80,#04,#61,#78
	db #80,#08,#ce,#60,#80,#04,#61,#60
	db #80,#0a,#ce,#60,#80,#04,#61,#78
	db #80,#08,#78,#80,#05,#60,#80,#04
	db #61,#60,#80,#0a,#ce,#60,#80,#04
	db #61,#78,#80,#08,#ce,#60,#80,#04
	db #61,#5c,#80,#0a,#ce,#5c,#80,#04
	db #5d,#74,#80,#08,#74,#80,#05,#5c
	db #80,#04,#5d,#5c,#80,#0a,#ce,#5c
	db #80,#04,#5d,#74,#80,#08,#ce,#5c
	db #80,#04,#5d,#5c,#80,#0a,#ce,#5c
	db #80,#04,#5d,#74,#80,#08,#74,#80
	db #05,#5c,#80,#04,#5d,#5c,#80,#0a
	db #ce,#5c,#80,#04,#5d,#74,#80,#08
	db #ce,#5c,#80,#04,#5d,#78,#81,#01
	db #c4,#01,#ce,#78,#80,#0b,#e0,#c4
	db #02,#d2,#c4,#03,#d2,#c4,#04,#ce
	db #7c,#81,#01,#c4,#01,#7c,#80,#0b
	db #ce,#7e,#81,#01,#c4,#01,#7e,#80
	db #0b,#ce,#78,#81,#01,#6f,#61,#c4
	db #01,#ce,#60,#80,#0b,#e0,#c4,#02
	db #d2,#c4,#03,#d2,#c4,#04,#d2,#c4
	db #05,#c2,#6a,#81,#0a,#ce,#6a,#80
	db #04,#6b,#82,#80,#08,#82,#80,#05
	db #6a,#80,#04,#6b,#6a,#80,#0a,#ce
	db #6a,#80,#04,#6b,#82,#80,#08,#ce
	db #6a,#80,#04,#6b,#6a,#80,#0a,#ce
	db #6a,#80,#04,#6b,#82,#80,#08,#82
	db #80,#05,#6a,#80,#04,#6b,#6a,#80
	db #0a,#ce,#6a,#80,#04,#6b,#82,#80
	db #08,#ce,#6a,#80,#04,#6b,#60,#80
	db #0a,#ce,#60,#80,#04,#61,#78,#80
	db #08,#78,#80,#05,#60,#80,#04,#61
	db #60,#80,#0a,#ce,#60,#80,#04,#61
	db #78,#80,#08,#ce,#60,#80,#04,#61
	db #60,#80,#0a,#ce,#60,#80,#04,#61
	db #78,#80,#08,#78,#80,#05,#60,#80
	db #04,#61,#60,#80,#0a,#ce,#60,#80
	db #04,#61,#78,#80,#08,#ce,#60,#80
	db #04,#61,#ca,#74,#81,#0f,#c4,#01
	db #d0,#74,#80,#10,#d6,#6e,#81,#11
	db #ce,#75,#ce,#6f,#ce,#75,#ce,#79
	db #d2,#7c,#c1,#0f,#fe,#7e,#03,#ce
	db #7e,#80,#10,#d0,#6a,#80,#11,#6d
	db #6f,#ce,#75,#ce,#6f,#ce,#6b,#ce
	db #67,#ce,#5d,#ce,#61,#ce,#67,#ce
	db #6b,#ce,#6d,#6f,#75,#6f,#71,#73
	db #75,#79,#ce,#75,#d0,#c6,#10,#c6
	db #10,#c6,#10,#74,#81,#01,#c4,#01
	db #d0,#74,#80,#0b,#d6,#6e,#81,#12
	db #ce,#75,#ce,#6f,#ce,#75,#ce,#79
	db #d2,#7c,#c1,#01,#fe,#7e,#03,#ce
	db #7e,#80,#0b,#d0,#6a,#80,#12,#6d
	db #6f,#ce,#75,#ce,#6f,#ce,#6b,#ce
	db #67,#ce,#5d,#ce,#61,#ce,#67,#ce
	db #6b,#ce,#6d,#6f,#75,#6f,#71,#73
	db #75,#79,#ce,#75,#d0,#c6,#10,#c6
	db #10,#c6,#10,#c2,#60,#81,#0a,#ce
	db #78,#80,#04,#61,#60,#80,#08,#60
	db #80,#05,#60,#80,#04,#59,#5a,#80
	db #0a,#ce,#5a,#80,#04,#5b,#5a,#80
	db #08,#5c,#80,#05,#5c,#80,#04,#5f
	db #60,#80,#0a,#ce,#78,#80,#04,#61
	db #60,#80,#08,#60,#80,#05,#60,#80
	db #04,#59,#5a,#80,#0a,#ce,#5a,#80
	db #04,#5b,#5a,#80,#08,#5c,#80,#05
	db #5c,#80,#04,#5f,#60,#80,#0a,#ce
	db #78,#80,#04,#61,#60,#80,#08,#60
	db #80,#05,#60,#80,#04,#59,#5a,#80
	db #0a,#ce,#5a,#80,#04,#5b,#5a,#80
	db #08,#5c,#80,#05,#5c,#80,#04,#5f
	db #60,#80,#0a,#ce,#78,#80,#04,#61
	db #60,#80,#08,#60,#80,#05,#60,#80
	db #04,#59,#5a,#80,#0a,#ce,#5a,#80
	db #04,#5b,#5a,#80,#08,#5c,#80,#05
	db #5c,#80,#04,#5f,#ce,#78,#81,#0f
	db #c4,#01,#74,#01,#c4,#01,#78,#01
	db #c4,#01,#74,#01,#7f,#c4,#01,#7e
	db #01,#7d,#c4,#01,#74,#01,#79,#c4
	db #01,#ce,#78,#01,#75,#6f,#67,#61
	db #57,#5d,#5f,#61,#67,#c4,#01,#ce
	db #60,#01,#c4,#01,#d0,#66,#01,#c4
	db #01,#6a,#01,#c4,#01,#6c,#01,#6f
	db #75,#6f,#75,#75,#6f,#75,#77,#79
	db #76,#40,#fe,#c4,#01,#76,#41,#fe
	db #79,#c4,#01,#c2,#78,#81,#01,#c4
	db #01,#74,#01,#c4,#01,#78,#01,#c4
	db #01,#74,#01,#7f,#c4,#01,#7e,#01
	db #7d,#c4,#01,#74,#01,#79,#c4,#01
	db #ce,#78,#01,#75,#6f,#67,#61,#57
	db #5d,#5f,#61,#67,#c4,#01,#ce,#60
	db #01,#c4,#01,#d0,#66,#01,#c4,#01
	db #6a,#01,#c4,#01,#6c,#01,#6f,#75
	db #6f,#75,#75,#6f,#75,#77,#79,#76
	db #40,#fe,#c4,#01,#76,#41,#fe,#79
	db #c4,#01,#c2,#60,#81,#0a,#ce,#78
	db #80,#04,#61,#60,#80,#08,#60,#80
	db #05,#60,#80,#04,#59,#5a,#80,#0a
	db #ce,#5a,#80,#04,#5b,#5a,#80,#08
	db #5c,#80,#05,#5c,#80,#04,#5f,#60
	db #80,#0a,#ce,#78,#80,#04,#61,#60
	db #80,#08,#60,#80,#05,#60,#80,#04
	db #59,#5a,#80,#0a,#ce,#5a,#80,#04
	db #5b,#5a,#80,#08,#5c,#80,#05,#5c
	db #80,#08,#5f,#60,#80,#0a,#ce,#78
	db #80,#04,#61,#60,#80,#08,#60,#80
	db #05,#60,#80,#04,#59,#5a,#80,#0a
	db #ce,#5a,#80,#04,#5b,#5a,#80,#08
	db #5c,#80,#05,#5c,#80,#04,#5f,#60
	db #80,#0a,#ce,#78,#80,#04,#61,#60
	db #80,#08,#60,#80,#05,#60,#80,#04
	db #59,#5a,#80,#0a,#ce,#5a,#80,#08
	db #5b,#5b,#5c,#80,#05,#5c,#80,#08
	db #5f,#14,#ff,#08,#ff
;
.init_music		; #9752 - added by Megachur
;
	ld de,l8200
	jp real_init_music
;
.music_info
	db "Cybernoid II The Revenge (2016)(Epyteor)(SuTeKH)",0
	db "StarkOs",0

	read "music_end.asm"
