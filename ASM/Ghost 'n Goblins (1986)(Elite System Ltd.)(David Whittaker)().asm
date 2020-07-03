; Music of Ghost 'n Goblins (1986)(Elite System Ltd.)(David Whittaker)()
; Ripped by Megachur the 16/10/2006
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "GHOSTNGO.BIN"
	ENDIF

music_date_rip_day		equ 16
music_date_rip_month	equ 10
music_date_rip_year		equ 2006
music_adr				equ &6800
first_theme				equ 0
last_theme				equ 0	; 0 -> 0

	read "music_header.asm"

	jp l687f_play_music
	jp l680c_reset_music
	jp l78cd		; noise ?
.l6809
	jp l6868_init_ay

;
.init_music
.l680c_reset_music
;
	xor a
	ld (l6b96_playmusic_yesno),a
	ld (l7cd2),a
	ld hl,l73df
	ld (l6c0b),hl
	ld hl,l743f
	ld (l6c0d),hl
	ld hl,l749f
	ld (l6c0f),hl
	call l6c11
	call l6c1e
	call l6c2b

	ld hl,(l6bb8)
	inc hl
	ld a,(hl)
	ld (l6ba1),a
	ld (l6ba2),a

	call l6809	; init ay
	xor a
	ld (l6bd3),a
	inc a
	ld (l6bd7),a	; a revoir
	ld (l6bd5),a
	ld (l6bd6),a
	ld (l6bd8),a

	xor a		; a revoir
	ld hl,l6ba3
	ld (hl),a
	ld de,l6ba4
	ld bc,#0011
	ldir
	inc a
	ld (l6b97),a
	ld (l6b98),a
	ld (l6b99),a
	ld (l6b96_playmusic_yesno),a
	ret

;
.stop_music
.l6868_init_ay
;
;
; send 0 to 13 registers of AY
;
	ld b,#00
	ld c,#0d
.l686c
	call l7d13_send_data_to_ay
	dec c
	jp p,l686c			; a revoir
;
; send &3f to register 7 of AY
;
	ld b,#3f
	ld a,b
	ld (l6b8e),a
	ld c,#07
	call l7d13_send_data_to_ay	; a revoir
	ret

;
.play_music
.l687f_play_music
;
	ld a,(l6b96_playmusic_yesno)
	and a
	ret z

	call l7930
	call l6ee6	; voie 1?
	call l6fa6	; voie 2?
	call l6c38
	call l6e1a	; voie 3?
	call l6d5e
	call l7208

	ld hl,l6ba2
	dec (hl)
	ret nz

	ld a,(l6ba1)
	ld (hl),a

	ld a,(l6ba3)
	and a
	jp nz,l6994

	xor a
	ld (l6ba6),a
	ld (l6c07),a
	ld (l6bde),a
	ld (l6bdb),a
	ld (l6ba9),a
	ld (l6bcd),a

	ld a,(l6bac)
	and #f0
	ld (l6bc4),a
	ld a,(l6baf)
	and #f0
	ld (l6bc7),a
	ld hl,#0000
	ld (l6b9a),hl
	ld hl,#0000
	ld (l6b9c),hl
	ld hl,#0000
	ld (l6c02),hl
	ld a,#01
	ld (l6bd0),a
.l68e3
	ld hl,#0000
	ld (l6b8f),hl
.l68e9
	ld hl,(l6bb8)
	ld (l6b91),hl
	ld de,(l6b8f)
	add hl,de
	ld a,(hl)
	cp #7f
	jr nz,l6913

	ld hl,(l6c0b)
	inc hl
	inc hl
	ld (l6c0b),hl
.l6901
	call l6c11
	ld hl,(l6bb8)
	ld a,h
	or l
	jr nz,l68e3	; h=l=0
	ld hl,l73df	; reset
	ld (l6c0b),hl
	jr l6901
.l6913
	cp #80
	jr c,l693c
	ld hl,l6b8f
	inc (hl)
	and #7f
	cp #20
	jr c,l6926
	call l71ac
	jr l68e9
.l6926
	add a
	ld e,a
	ld d,#00
	ld hl,l7053
	add hl,de
	ld a,(hl)
	ld (l6938),a
	inc hl
	ld a,(hl)
	ld (l6939),a
.l6939 equ $ + 2
.l6938 equ $ + 1
	call l70a7
	jr l68e9
;--
.l693c
	push af
	ld a,(l6bb5)
	ld (l6ba3),a
	ld a,#01
	ld (l6c04),a
	pop af

	ld (l6be7),a
	call l6eb2

	ld a,(l6b97)
	and a
	jr z,l6985

	ld bc,#0008			; reg8 = channel A volume = 0
	call l7d13_send_data_to_ay

	ld hl,l6bd9
	ld b,(hl)
	ld a,b
	ld (l6bbe),a
	ld c,#00			; reg0 = Channel A fine pitch
	call l7d13_send_data_to_ay
	inc hl
	ld b,(hl)
	ld a,b
	ld (l6bc1),a
	ld c,#01			; reg1 = Channel A course pitch
	call l7d13_send_data_to_ay
	ld a,(l6b8e)
	or #09
	ld hl,l6b9e
	and (hl)
	ld (l6b8e),a
	ld b,a
	ld c,#07			; reg7 = Mixer 
	call l7d13_send_data_to_ay
;Bit  7        6        5        4        3        2        1        0
;   _         _
;   I/O       I/O   Noise    Noise    Noise     Tone     Tone     Tone
;     B        A        C        B        A        C        B        A

.l6985
	ld hl,l6b8f
	inc (hl)

	ld hl,(l6bb8)
	ld de,(l6b8f)
	add hl,de
	ld (l6bb8),hl

.l6994
	ld hl,l6ba3
	dec (hl)
	ld a,(l6ba4)
	and a
	jp nz,l6a8a

	xor a
	ld (l6ba7),a
	ld (l6c08),a
	ld (l6bdf),a
	ld (l6bdc),a
	ld (l6baa),a
	ld (l6bce),a
	ld a,(l6bad)
	and #f0
	ld (l6bc5),a
	ld a,(l6bb0)
	and #f0
	ld (l6bc8),a
	ld hl,#0001
	ld (l6b9a),hl
	ld hl,#0002
	ld (l6b9c),hl
	ld hl,#0007
	ld (l6c02),hl
	ld a,#01
	ld (l6bd1),a
.l69d9
	ld hl,#0000
	ld (l6b8f),hl

.l69df
	ld hl,(l6bba)
	ld (l6b91),hl
	ld de,(l6b8f)
	add hl,de
	ld a,(hl)
	cp #7f
	jr nz,l6a09
	ld hl,(l6c0d)
	inc hl
	inc hl
	ld (l6c0d),hl

.l69f7
	call l6c1e
	ld hl,(l6bba)
	ld a,h
	or l
	jr nz,l69d9	; h=l=0
	ld hl,l743f	; reset
	ld (l6c0d),hl
	jr l69f7

.l6a09
	cp #80
	jr c,l6a32
	ld hl,l6b8f
	inc (hl)
	and #7f
	cp #20
	jr c,l6a1c
	call l71ac
	jr l69df
.l6a1c
	add a
	ld e,a
	ld d,#00
	ld hl,l7053
	add hl,de
	ld a,(hl)
	ld (l6a2e),a
	inc hl
	ld a,(hl)
	ld (l6a2f),a
.l6a2f equ $ + 2
.l6a2e equ $ + 1
	call l70a7
	jr l69df

.l6a32
	push af
	ld a,(l6bb6)
	ld (l6ba4),a
	ld a,#01
	ld (l6c05),a
	pop af
	ld (l6be8),a
	call l6eb2
	ld a,(l6b98)
	and a
	jr z,l6a7b
	ld bc,#0009
	call l7d13_send_data_to_ay
	ld hl,l6bd9
	ld b,(hl)
	ld a,b
	ld (l6bbf),a
	ld c,#02
	call l7d13_send_data_to_ay
	inc hl
	ld b,(hl)
	ld a,b
	ld (l6bc2),a
	ld c,#03
	call l7d13_send_data_to_ay
	ld a,(l6b8e)
	or #12
	ld hl,l6b9f
	and (hl)
	ld (l6b8e),a
	ld b,a
	ld c,#07
	call l7d13_send_data_to_ay
.l6a7b
	ld hl,l6b8f
	inc (hl)
	ld hl,(l6bba)
	ld de,(l6b8f)
	add hl,de
	ld (l6bba),hl
.l6a8a
	ld hl,l6ba4
	dec (hl)
	ld a,(l6ba5)
	and a
	jp nz,l6b89
	xor a
	ld (l6ba8),a
	ld (l6c09),a
	ld (l6be0),a
	ld (l6bdd),a
	ld (l6bab),a
	ld (l6bcf),a
	ld a,(l6bae)
	and #f0
	ld (l6bc6),a
	ld a,(l6bb1)
	and #f0
	ld (l6bc9),a
	ld hl,#0002
	ld (l6b9a),hl
	ld hl,#0004
	ld (l6b9c),hl
	ld hl,#000e
	ld (l6c02),hl
	ld a,#01
	ld (l6bd2),a
.l6acf
	ld hl,#0000
	ld (l6b8f),hl
.l6ad5
	ld hl,(l6bbc)
	ld (l6b91),hl
	ld de,(l6b8f)
	add hl,de
	ld a,(hl)
	cp #7f
	jr nz,l6aff
	ld hl,(l6c0f)
	inc hl
	inc hl
	ld (l6c0f),hl
.l6aed
	call l6c2b
	ld hl,(l6bbc)
	ld a,h
	or l
	jr nz,l6acf
	ld hl,l749f
	ld (l6c0f),hl
	jr l6aed
.l6aff
	cp #80
	jr c,l6b28
	ld hl,l6b8f
	inc (hl)
	and #7f
	cp #20
	jr c,l6b12
	call l71ac
	jr l6ad5
.l6b12
	add a
	ld e,a
	ld d,#00
	ld hl,l7053
	add hl,de
	ld a,(hl)
	ld (l6b24),a
	inc hl
	ld a,(hl)
	ld (l6b25),a
.l6b25 equ $ + 2
.l6b24 equ $ + 1
	call l73cd
	jr l6ad5

.l6b28
	push af
	ld a,(l6bb7)
	ld (l6ba5),a
	ld a,#01
	ld (l6c06),a
	pop af
	ld (l6be9),a
	call l6eb2
	ld a,(l6b99)
	and a
	jr z,l6b7a
	ld bc,#000a
	call l7d13_send_data_to_ay
	ld a,(l6c0a)
	ld b,a
	ld c,#06
	call l7d13_send_data_to_ay
	ld hl,l6bd9
	ld b,(hl)
	ld a,b
	ld (l6bc0),a
	ld c,#04
	call l7d13_send_data_to_ay
	inc hl
	ld b,(hl)
	ld a,b
	ld (l6bc3),a
	ld c,#05
	call l7d13_send_data_to_ay
	ld a,(l6b8e)
	or #24
	ld hl,l6ba0
	and (hl)
	ld (l6b8e),a
	ld b,a
	ld c,#07
	call l7d13_send_data_to_ay
.l6b7a
	ld hl,l6b8f
	inc (hl)
	ld hl,(l6bbc)
	ld de,(l6b8f)
	add hl,de
	ld (l6bbc),hl
	.l6b89
	ld hl,l6ba5
	dec (hl)
	ret
.l6b8e
	db #3f
.l6b91 equ $ + 2
.l6b8f
ld bc,#9400
ld (hl),a
.l6b93
dec (hl)
.l6b94
ld (bc),a
nop
.music_end
.l6b96_playmusic_yesno
	defb &00	;db #01
.l6b97
	defb &00	;db #01
.l6b98
	defb &00	;db #01
.l6b99
	defb &00	;db #01
.l6b9a
ret nz
ld l,e
.l6b9c
dec b
nop
.l6b9f equ $ + 1
.l6b9e
cp #fd
.l6ba0
ei
.l6ba1
	defb &00	; db #06
.l6ba2
	defb &00	; db #06
.l6ba3
	defb &00 ;db #00
.l6ba4
	defb &00 ;db #00
.l6ba5
	defb &00 ;db #00
.l6ba6
	defb &00 ;db #00
.l6ba7
	defb &00 ;db #00
.l6ba8
	defb &00 ;db #00
.l6ba9
	defb &00 ;db #00
.l6baa
	defb &00 ;db #00
.l6bab
	defb &00 ;db #00
.l6bac
	defb &00 ;db #00
.l6bad
	defb &00 ;db #00
.l6bae
	defb &00 ;db #00
.l6baf
	defb &00 ;db #00
.l6bb0
	defb &00 ;db #00
.l6bb1
	defb &00 ;db #00
.l6bb2
	defb &00 ;db #00
.l6bb3
	defb &00 ;db #00
.l6bb4
db #00
.l6bb7 equ $ + 2
.l6bb6 equ $ + 1
.l6bb5
ld bc,#0101
;.l6bb9 equ $ + 1
.l6bb8
	dw 0		; db #2f,#75
;.l6bbb equ $ + 1
.l6bba
	dw 0		; db #64,#76
;.l6bbd equ $ + 1
.l6bbc
	dw 0		; db #9f,#77
.l6bbe
dec bc
.l6bbf
dec bc
.l6bc0
inc l
.l6bc3 equ $ + 2
.l6bc2 equ $ + 1
.l6bc1
ld bc,#0401
.l6bc5 equ $ + 1
.l6bc4
djnz l6bd6
.l6bc7 equ $ + 1
.l6bc6
djnz l6bd8
.l6bc9 equ $ + 1
.l6bc8
djnz l6bfa
.l6bca
rlca
.l6bcb
rlca
.l6bcc
rlca
.l6bcd
add b
.l6bce
add b
.l6bcf
add b
.l6bd2 equ $ + 2
.l6bd1 equ $ + 1
.l6bd0
ld bc,#0101
.l6bd3
	defb &00	;db #00
.l6bd4
	defb &00	;db #01
.l6bd5
	defb &00	;db #01
.l6bd6
	defb &00	;db #01
.l6bd7
	defb &00	;db #01
.l6bd8
	defb &00	; db #01
.l6bd9
	defb &2c	; inc l
.l6bda
inc b
.l6bdb
nop
.l6bdc
nop
.l6bdd
nop
.l6bde
nop
.l6bdf
nop
.l6be0
nop
.l6be1
ld h,h
ld h,h
ld h,h
.l6be4
nop
.l6be5
nop
.l6be6
nop
.l6be9 equ $ + 2
.l6be8 equ $ + 1
.l6be7
ld hl,(#0a2a)
.l6bea
ld (bc),a
.l6beb
ld (bc),a
.l6bec
ld (bc),a
.l6bed
dec (hl)
add hl,sp
rst #38
nop
nop
nop
nop
.l6bf4
dec (hl)
add hl,sp
rst #38
rst #38
nop
nop
.l6bfa
nop
.l6bfb
ld c,e
ld e,e
rst #38
rst #38
nop
nop
nop
.l6c02
ld c,#00
.l6c06 equ $ + 2
.l6c05 equ $ + 1
.l6c04
ld bc,#0001
.l6c07
nop
.l6c08
nop
.l6c09
nop
.l6c0a
inc d
.l6c0b
	dw 0	; db #df,#73
.l6c0d
	dw 0	; db #3f,#74
.l6c0f
	dw 0	; db #9f,#74
.l6c11
	ld hl,(l6c0b)
	ld a,(hl)
	ld (l6bb8),a
	inc hl
	ld a,(hl)
	ld (l6bb8+1),a	; l6bb9
	ret
.l6c1e
	ld hl,(l6c0d)
	ld a,(hl)
	ld (l6bba),a
	inc hl
	ld a,(hl)
	ld (l6bba+1),a	; l6bbb
	ret
.l6c2b
	ld hl,(l6c0f)
	ld a,(hl)
	ld (l6bbc),a
	inc hl
	ld a,(hl)
	ld (l6bbc+1),a	; l6bbd
	ret
.l6c38
	ld a,(l6b97)
	and a
	jr z,l6c5d
	ld a,(l6bb2)
	and a
	jr z,l6c5d
	ld hl,l6c04
	ld a,(hl)
	and a
	jr z,l6c4e
	dec (hl)
	jr l6c5d
.l6c4e
	ld hl,#0000
	ld (l6b9a),hl
	ld hl,#0001
	ld (l6b9c),hl
	call l6caa
.l6c5d
	ld a,(l6b98)
	and a
	jr z,l6c82
	ld a,(l6bb3)
	and a
	jr z,l6c82
	ld hl,l6c05
	ld a,(hl)
	and a
	jr z,l6c73
	dec (hl)
	jr l6c82

.l6c73
	ld hl,#0001
	ld (l6b9a),hl
	ld hl,#0003
	ld (l6b9c),hl
	call l6caa

.l6c82
	ld a,(l6b99)
	and a
	jr z,l6ca7
	ld a,(l6bb4)
	and a
	jr z,l6ca7
	ld hl,l6c06
	ld a,(hl)
	and a
	jr z,l6c98
	dec (hl)
	jr l6ca7
.l6c98
	ld hl,#0002
	ld (l6b9a),hl
	ld hl,#0005
	ld (l6b9c),hl
	call l6caa
.l6ca7
	jp l6d2b
.l6caa
	ld a,(l6bd3)
	ld (l6bd4),a
	ld de,(l6b9a)
	ld hl,l6be7
	add hl,de
	ld a,(hl)
	ld hl,l6bd4
	cp #40
	jr nc,l6cd2
	sla (hl)
	cp #30
	jr nc,l6cd2
	sla (hl)
	cp #20
	sla (hl)
	cp #10
	jr nc,l6cd2
	sla (hl)
.l6cd2
	ld a,(l6bd5)
	and a
	jp m,l6d02
	ld hl,l6bbe
	ld de,(l6b9a)
	add hl,de
	ld (l6b9a),hl
	ld a,(hl)
	ld hl,l6bd4
	add (hl)
	push af
	ld hl,(l6b9a)
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	adc #00
	ld bc,(l6b9c)
	ld b,a
	call l7d13_send_data_to_ay
	dec c
	pop af
	ld b,a
	call l7d13_send_data_to_ay
	ret
.l6d02
	ld hl,l6bbe
	ld de,(l6b9a)
	add hl,de
	ld (l6b9a),hl
	ld a,(hl)
	ld hl,l6bd4
	sub (hl)
	push af
	ld hl,(l6b9a)
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	sbc #00
	ld bc,(l6b9c)
	ld b,a
	call l7d13_send_data_to_ay
	dec c
	pop af
	ld b,a
	call l7d13_send_data_to_ay
	ret
.l6d2b
	ld a,(l6bd6)
	and a
	jp m,l6d46
	ld de,l6bd3
	ld a,(de)
	ld hl,l6bd7
	add (hl)
	ld (de),a
	ld hl,l6bd8
	cp (hl)
	ret nz
	ld a,#ff
	ld (l6bd6),a
	ret
.l6d46
	ld de,l6bd3
	ld a,(de)
	ld hl,l6bd7
	sub (hl)
	ld (de),a
	ret nz
	ld a,#01
	ld (l6bd6),a
	ld a,(l6bd5)
	xor #fe
	ld (l6bd5),a
	ret
.l6d5e
	ld a,(l6b97)
	and a
	jr z,l6d79
	ld a,(l6bdb)
	and a
	jr z,l6d79
	ld hl,#0000
	ld (l6b9a),hl
	ld hl,#0001
	ld (l6b9c),hl
	call l6db0
.l6d79
	ld a,(l6b98)
	and a
	jr z,l6d94
	ld a,(l6bdc)
	and a
	jr z,l6d94
	ld hl,#0001
	ld (l6b9a),hl
	ld hl,#0003
	ld (l6b9c),hl
	call l6db0
.l6d94
	ld a,(l6b99)
	and a
	jr z,l6daf
	ld a,(l6bdd)
	and a
	jr z,l6daf
	ld hl,#0002
	ld (l6b9a),hl
	ld hl,#0005
	ld (l6b9c),hl
	call l6db0
.l6daf
	ret
.l6db0
	ld a,(l6ba2)
	ld hl,l6ba1
	sub (hl)
	ret nz
	ld hl,l6bdb
	ld de,(l6b9a)
	add hl,de
	ld a,(hl)
	and a
	jp p,l6e02
	ld hl,l6be7
	ld de,(l6b9a)
	add hl,de
	ld a,(hl)
	sub #01
	ld (hl),a
	and #0f
	cp #0f
	jr nz,l6ddb
	ld a,(hl)
	sub #04
	ld (hl),a
.l6ddb
	ld a,(hl)
	call l6eb2
	ld hl,l6bbe
	ld de,(l6b9a)
	add hl,de
	ld a,(l6bd9)
	ld (hl),a
	push af
	inc hl
	inc hl
	inc hl
	ld a,(l6bda)
	ld (hl),a
	ld bc,(l6b9c)
	ld b,a
	call l7d13_send_data_to_ay
	dec c
	pop af
	ld b,a
	call l7d13_send_data_to_ay
	ret
.l6e02
	ld hl,l6be7
	ld de,(l6b9a)
	add hl,de
	ld a,(hl)
	add #01
	ld (hl),a
	and #0f
	cp #0c
	jr nz,l6e18
	ld a,(hl)
	add #04
	ld (hl),a
.l6e18
	jr l6ddb

.l6e1a
	ld a,(l6b97)
	and a
	jr z,l6e2f
	ld a,(l6c07)
	and a
	jr z,l6e2f
	ld hl,#0000
	ld (l6b9a),hl
	call l6e58
.l6e2f
	ld a,(l6b98)
	and a
	jr z,l6e44
	ld a,(l6c08)
	and a
	jr z,l6e44
	ld hl,#0001
	ld (l6b9a),hl
	call l6e58
.l6e44
	ld a,(l6b99)
	and a
	ret z
	ld a,(l6c09)
	and a
	ret z
	ld hl,#0002
	ld (l6b9a),hl
	call l6e58
	ret
.l6e58
	ld de,l6c07
	add hl,de
	ld a,(hl)
	xor #80
	ld (hl),a
	jp m,l6e8d
	ld a,(l6b9a)
	and a
	jr nz,l6e77
	ld a,(l6b8e)
	and #fe
	or #08
.l6e70
	ld b,a
	ld c,#07
	call l7d13_send_data_to_ay
	ret
.l6e77
	cp #01
	jr nz,l6e84
	ld a,(l6b8e)
	and #fd
	or #10
	jr l6e70
.l6e84
	ld a,(l6b8e)
	and #fb
	or #20
	jr l6e70
.l6e8d
	ld a,(l6b9a)
	and a
	jr nz,l6e9c
	ld a,(l6b8e)
	and #f7
	or #01
	jr l6e70
.l6e9c
	cp #01
	jr nz,l6ea9
	ld a,(l6b8e)
	and #ef
	or #02
	jr l6e70
.l6ea9
	ld a,(l6b8e)
	and #df
	or #04
	jr l6e70
.l6eb2
	cp #7e
	jr nz,l6eb9
	jp l71b8

.l6eb9
	push af
	and #0f
	sla a
	ld d,#00
	ld e,a
	ld hl,l7cfb	; période
	add hl,de
	ld a,(hl)
	ld (l6bd9),a
	inc hl
	ld a,(hl)
	ld (l6bda),a
	pop af
	srl a
	srl a
	srl a
	srl a
	ld e,a
.l6ed8
	dec e
	ret m
	ld hl,l6bda
	srl (hl)
	ld hl,l6bd9
	rr (hl)
	jr l6ed8

.l6ee6
	ld a,(l6b97)
	and a
	jr z,l6f0d
	ld a,(l6bde)
	and a
	jr z,l6f0d
	ld a,(l6be4)
	and a
	jr z,l6efe
	dec a
	ld (l6be4),a
	jr l6f0d
.l6efe
	ld hl,#0000
	ld (l6b9a),hl
	ld hl,#0001
	ld (l6b9c),hl
	call l6f55
.l6f0d
	ld a,(l6b98)
	and a
	jr z,l6f34
	ld a,(l6bdf)
	and a
	jr z,l6f34
	ld a,(l6be5)
	and a
	jr z,l6f25
	dec a
	ld (l6be5),a
	jr l6f34
	.l6f25
	ld hl,#0001
	ld (l6b9a),hl
	ld hl,#0003
	ld (l6b9c),hl
	call l6f55
.l6f34
	ld a,(l6b99)
	and a
	ret z
	ld a,(l6be0)
	and a
	ret z
	ld a,(l6be6)
	and a
	jr z,l6f49
	dec a
	ld (l6be6),a
	ret
.l6f49
	ld hl,#0002
	ld (l6b9a),hl
	ld hl,#0005
	ld (l6b9c),hl
	.l6f55
	ld hl,l6bde
	ld de,(l6b9a)
	add hl,de
	ld a,(hl)
	and a
	jp m,l6f8a
	ld hl,l6bbe
	add hl,de
	ld (l6b91),hl
	ld a,(hl)
	ld hl,l6be1
	add hl,de
	sub (hl)
	push af
	ld hl,(l6b91)
	ld (hl),a
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	sbc #00
	ld (hl),a
.l6f7b
	ld bc,(l6b9c)
	ld b,a
	call l7d13_send_data_to_ay
	dec c
	pop af
	ld b,a
	call l7d13_send_data_to_ay
	ret

.l6f8a
	ld hl,l6bbe
	add hl,de
	ld a,(hl)
	ld (l6b91),hl
	ld a,(hl)
	ld hl,l6be1
	add hl,de
	add (hl)
	push af
	ld hl,(l6b91)
	ld (hl),a
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	adc #00
	ld (hl),a
	jr l6f7b

.l6fa6
	ld a,(l6b97)
	and a
	jr z,l6fe0
	ld a,(l6ba6)
	and a
	jr z,l6fe0
	.l6fb2
	ld de,(l6bea)
	ld d,#00
	ld hl,l6bed
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,l6fc7
	xor a
	ld (l6bea),a
	jr l6fb2
	.l6fc7
	call l6eb2
;
; Hauteur du son
;
	ld a,(l6bd9)
	ld b,a
	ld c,#00			; r0
	call l7d13_send_data_to_ay
	ld a,(l6bda)
	ld b,a
	ld c,#01			; r1
	call l7d13_send_data_to_ay
	ld hl,l6bea
	inc (hl)
.l6fe0
	ld a,(l6b98)
	and a
	jr z,l701a
	ld a,(l6ba7)
	and a
	jr z,l701a
.l6fec
	ld de,(l6beb)
	ld d,#00
	ld hl,l6bf4
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,l7001
	xor a
	ld (l6beb),a
	jr l6fec
.l7001
	call l6eb2
	ld a,(l6bd9)
	ld b,a
	ld c,#02			; r2
	call l7d13_send_data_to_ay
	ld a,(l6bda)
	ld b,a
	ld c,#03			; r3
	call l7d13_send_data_to_ay
	ld hl,l6beb
	inc (hl)
.l701a
	ld a,(l6b99)
	and a
	ret z
	ld a,(l6ba8)
	and a
	ret z
.l7024
	ld de,(l6bec)
	ld d,#00
	ld hl,l6bfb
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,l7039
	xor a
	ld (l6bec),a
	jr l7024

.l7039
	call l6eb2

	ld a,(l6bd9)
	ld b,a
	ld c,#04			; r4
	call l7d13_send_data_to_ay
	ld a,(l6bda)
	ld b,a
	ld c,#05			; r5
	call l7d13_send_data_to_ay
	ld hl,l6bec
	inc (hl)
	ret

.l7053
	dw l7083,l708f,l709b,l70a7	;db #83,#70,#8f,#70,#9b,#70,#a7,#70
	dw #0000,#70bf,#0000,#0000
	dw l71ce,l71a1,l734f,#0000
	dw #0000,l7377,l7382,l738c
	dw l7397,#0000,l73a9,l73bb
	dw &0000,&0000,&0000,l73cd	;db #00,#00,#00,#00,#00,#00,#cd,#73

.l7083
	ld de,(l6b9a)
	ld hl,l6ba6
	add hl,de
	ld (hl),#05
	jr l70c9

.l708f
	ld de,(l6b9a)
	ld hl,l6ba6
	add hl,de
	ld (hl),#06
	jr l70c9

.l709b
	ld de,(l6b9a)
	ld hl,l6ba6
	add hl,de
	ld (hl),#01
	jr l70c9

.l70a7
	ld de,(l6b9a)
	ld hl,l6ba6
	add hl,de
	ld (hl),#02
	jr l70c9

	ld de,(l6b9a)
	ld hl,l6ba6
	add hl,de
	ld (hl),#04
	jr l70c9
	ld de,(l6b9a)
	ld hl,l6ba6
	add hl,de
	ld (hl),#08
.l70c9
	ld hl,(l6b91)
	ld de,(l6b8f)
	add hl,de
	ld a,(hl)
	ld de,(l6b9a)
	ld hl,l6bb2
	add hl,de
	ld (hl),#00
	ld hl,l6be7
	add hl,de
	ld (hl),a
	ld (l6b93),a
	xor a
	ld hl,l6bea
	add hl,de
	ld (hl),a
	ld hl,l6bed
	ld de,(l6c02)
	add hl,de
	ld a,(l6b93)
	ld (hl),a
	inc de
	ld (l6c02),de
	ld hl,l6ba6
	ld de,(l6b9a)
	add hl,de
	ld a,(hl)
	ld (l6b94),a
	and #01
	jr z,l712c
	ld a,(l6b93)
	push af
	and #f0
	ld b,a
	pop af
	and #0f
	add #03
	cp #0c
	jr c,l711d
	add #04
.l711d
	add b
	ld hl,l6bed
	ld de,(l6c02)
	add hl,de
	ld (hl),a
	inc de
	ld (l6c02),de
.l712c
	ld a,(l6b94)
	and #02
	jr z,l7154
	ld a,(l6b93)
	push af
	and #f0
	ld b,a
	pop af
	and #0f
	add #04
	cp #0c
	jr c,l7145
	add #04
.l7145
	add b
	ld hl,l6bed
	ld de,(l6c02)
	add hl,de
	ld (hl),a
	inc de
	ld (l6c02),de
.l7154
	ld a,(l6b94)
	and #04
	jr z,l717c
	ld a,(l6b93)
	push af
	and #f0
	ld b,a
	pop af
	and #0f
	add #07
	cp #0c
	jr c,l716d
	add #04
.l716d
	add b
	ld hl,l6bed
	ld de,(l6c02)
	add hl,de
	ld (hl),a
	inc de
	ld (l6c02),de
.l717c
	ld a,(l6b94)
	and #08
	jr z,l7196
	ld a,(l6b93)
	add #10
	ld hl,l6bed
	ld de,(l6c02)
	add hl,de
	ld (hl),a
	inc de
	ld (l6c02),de

.l7196
	ld hl,l6bed
	ld de,(l6c02)
	add hl,de
	ld (hl),#ff
	ret
.l71a1
	ld de,(l6b9a)
	ld hl,l6c07
	add hl,de
	ld (hl),#01
	ret

.l71ac
	sub #1f
	ld de,(l6b9a)
	ld hl,l6bb5
	add hl,de
	ld (hl),a

	ret

.l71b8
	ld de,(l6b9a)

	xor a			; notes = 0
	ld (l6bd9),a
	ld (l6bda),a

	ld hl,l6bb2
	add hl,de
	ld (hl),a
	ld hl,l6bd0
	add hl,de
	ld (hl),a
	ret
.l71ce
	ld hl,(l6b91)
	ld de,(l6b8f)
	add hl,de
	ld a,(hl)
	push af
	inc hl
	inc de
	ld a,(hl)
	push af
	inc hl
	inc de
	ld a,(hl)
	inc de
	ld (l6b8f),de
	ld de,(l6b9a)
	ld hl,l6bca
	add hl,de
	ld (hl),a
	ld hl,l6baf
	add hl,de
	pop af
	ld (hl),a
	ld hl,l6bc7
	add hl,de
	and #f0
	ld (hl),a
	ld hl,l6bac
	add hl,de
	pop af
	ld (hl),a
	ld hl,l6bc4
	add hl,de
	and #f0
	ld (hl),a
	ret
.l7208
	ld a,(l6b97)
	and a
	jr z,l7275
	ld a,(l6bd0)
	and a
	jr z,l7275
	ld a,(l6bcd)
	and a
	jp m,l724b
	ld a,(l6bc4)
	sub #10
	ld (l6bc4),a
	jr nz,l7275
	ld a,(l6bac)
	ld b,a
	and #f0
	ld (l6bc4),a
	ld a,b
	and #0f
	ld hl,l6ba9
	add (hl)
	ld (l6ba9),a
	push af
	ld b,a
	ld c,#08
	call l7d13_send_data_to_ay
	pop af
	cp #0f
	jr nz,l7275
	ld a,#80
	ld (l6bcd),a
	jr l7275
	.l724b
	ld a,(l6bc7)
	sub #10
	ld (l6bc7),a
	jr nz,l7275
	ld a,(l6baf)
	ld b,a
	and #f0
	ld (l6bc7),a
	ld a,b
	and #0f
	ld b,a
	ld a,(l6ba9)
	ld hl,l6bca
	cp (hl)
	jr z,l7275
	sub b
	ld (l6ba9),a
	ld b,a
	ld c,#08
	call l7d13_send_data_to_ay
.l7275
	ld a,(l6b98)
	and a
	jr z,l72e2
	ld a,(l6bd1)
	and a
	jr z,l72e2
	ld a,(l6bce)
	and a
	jp m,l72b8
	ld a,(l6bc5)
	sub #10
	ld (l6bc5),a
	jr nz,l72e2
	ld a,(l6bad)
	ld b,a
	and #f0
	ld (l6bc5),a
	ld a,b
	and #0f
	ld hl,l6baa
	add (hl)
	ld (l6baa),a
	push af
	ld b,a
	ld c,#09
	call l7d13_send_data_to_ay
	pop af
	cp #0f
	jr nz,l72e2
	ld a,#80
	ld (l6bce),a
	jr l72e2

.l72b8
	ld a,(l6bc8)
	sub #10
	ld (l6bc8),a
	jr nz,l72e2
	ld a,(l6bb0)
	ld b,a
	and #f0
	ld (l6bc8),a
	ld a,b
	and #0f
	ld b,a
	ld a,(l6baa)
	ld hl,l6bcb
	cp (hl)
	jr z,l72e2
	sub b
	ld (l6baa),a
	ld b,a
	ld c,#09
	call l7d13_send_data_to_ay

.l72e2
	ld a,(l6b99)
	and a
	jr z,l734e
	ld a,(l6bd2)
	and a
	ret z
	ld a,(l6bcf)
	and a
	jp m,l7324
	ld a,(l6bc6)
	sub #10
	ld (l6bc6),a
	jr nz,l734e
	ld a,(l6bae)
	ld b,a
	and #f0
	ld (l6bc6),a
	ld a,b
	and #0f
	ld hl,l6bab
	add (hl)
	ld (l6bab),a
	push af
	ld b,a
	ld c,#0a
	call l7d13_send_data_to_ay
	pop af
	cp #0f
	jr nz,l734e
	ld a,#80
	ld (l6bcf),a
	jr l734e
.l7324
	ld a,(l6bc9)
	sub #10
	ld (l6bc9),a
	jr nz,l734e
	ld a,(l6bb1)
	ld b,a
	and #f0
	ld (l6bc9),a
	ld a,b
	and #0f
	ld b,a
	ld a,(l6bab)
	ld hl,l6bcc
	cp (hl)
	jr z,l734e
	sub b
	ld (l6bab),a
	ld b,a
	ld c,#0a
	call l7d13_send_data_to_ay
.l734e
	ret
.l734f
	ld de,(l6b9a)
	ld hl,l6bde
	add hl,de
	ld (hl),#ff
	ld hl,(l6b91)
	ld bc,(l6b8f)
	add hl,bc
	ld a,(hl)
	push hl
	ld hl,l6be1
	add hl,de
	ld (hl),a
	pop hl
	inc hl
	inc bc
	ld a,(hl)
	ld hl,l6be4
	add hl,de
	ld (hl),a
	inc bc
	ld (l6b8f),bc
	ret
.l7377
	ld de,(l6b9a)
	ld hl,l6bdb
	add hl,de
	ld (hl),#01
	ret
.l7382
	ld de,(l6b9a)
	ld hl,l6bb2
	add hl,de
	ld (hl),a
	ret
.l738c
	ld de,(l6b9a)
	ld hl,l6bb2
	add hl,de
	ld (hl),#00
	ret
.l7397
	ld de,(l6b8f)
	ld hl,(l6b91)
	add hl,de
	ld a,(hl)
	ld (l6ba1),a
	inc de
	ld (l6b8f),de
	ret
.l73a9
	ld de,(l6b9a)
	ld hl,l73b8
	add hl,de
	ld a,(hl)
	ld hl,l6b9e
	add hl,de
	ld (hl),a
	ret

.l73b8
	cp #fd
	ei
.l73bb
	ld de,(l6b9a)
	ld hl,l73ca
	add hl,de
	ld a,(hl)
	ld hl,l6b9e
	add hl,de
	ld (hl),a
	ret

.l73ca
rst #30
rst #28
rst #18

.l73cd
	ld hl,(l6b91)
	ld de,(l6b8f)
	add hl,de
	ld a,(hl)
	ld (l6c0a),a
	inc de
	ld (l6b8f),de
	ret

.l73df
	dw l752f,l752f,l7540,l755a
	dw l755a,l7789,l77ad,l7789
	dw l77ba,l7789,l77c3,l7789
	dw l77cc,l7540,l7595,l7595
	dw l75b5,l75b5,l75da,l75f1
	dw l75da,l75f1,l752f,l752f
	dw l752f,l752f,l7608,l761f
	dw l7608,l761f,l7636,l7636
	dw l7649,l7649,l7649,l7649
	dw l7540,l7595,l7595,l75b5
	dw l75b5,l7649,l7649,l7649
	dw l7649,l752f,l7661
	dw 0
.l743f
	dw l7664,l7664,l7673,l7698
	dw l7698,l7789,l77ad,l7789
	dw l77ba,l7789,l77c3,l7789
	dw l77cc,l7673,l7595,l7595
	dw l75b5,l75b5,l76d3,l76eb
	dw l76d3,l76eb,l7664,l7664
	dw l7664,l7664,l7703,l771b
	dw l7703,l771b,l7733,l7733
	dw l7747,l7747,l7747,l7747
	dw l7673,l7595,l7595,l75b5
	dw l75b5,l7747,l7747,l7747
	dw l7747,l7664,l7661
	dw 0
.l749f
	dw l779f,l775f,l776e,l7789
	dw l779f,l7789,l779f,l7789
	dw l77ad,l7789,l77ba,l7789
	dw l77ad,l7789,l77ba,l776e
	dw l77d5,l77eb,l77d5,l77ad
	dw l77d5,l77eb,l77d5,l77ad
	dw l77f2,l77f2,l77f2,l77f2
	dw l7814,l785d,l7814,l785d
	dw l775f,l775f,l775f,l775f
	dw l7814,l7814,l785d,l785d
	dw l7886,l7886,l7886,l7886
	dw l7886,l7664,l7664,l7664
	dw l7664,l7673,l77d5,l77eb
	dw l77d5,l77ad,l77d5,l77eb
	dw l77d5,l77ad,l77f2,l77f2
	dw l77f2,l77f2,l7886,l7886
	dw l7886,l7664,l7664,l7664
	dw l7664,l775f,l7661
	dw 0

.l752f
	db #90,#06,#92,#88,#1f,#0f,#0e,#a1
	db #8a,#64,#01,#20,#8a,#64,#01,#20
	db #7f
.l7540
	db #92,#88,#1f,#61,#0a,#8e,#a0,#35
	db #35,#a3,#35,#a1,#36,#37,#36,#35
	db #34,#a2,#35,#a0,#25,#a1,#25,#a9
	db #25,#7f
.l755a
	db #88,#1f,#21,#07,#8e,#a0,#2a,#83
	db #35,#83,#35,#2a,#83,#35,#83,#35
	db #2a,#83,#35,#2a,#82,#35,#82,#35
	db #2a,#82,#35,#82,#35,#2a,#82,#35
	db #7f
.l757b_end_game	; ???
	db #88,#1f,#41,#07,#8e,#a0,#2a,#31
	db #35,#31,#35,#3a,#35,#3a,#41,#3a
	db #41,#45,#41,#45,#4a,#45,#4a,#51
	db #4a,#7f
.l7595
	db #88,#1f,#61,#0a,#8e,#a0,#26,#36
	db #a1,#26,#a1,#28,#29,#39,#a0,#28
	db #29,#a3,#28,#a0,#26,#36,#a1,#26
	db #a1,#28,#29,#39,#32,#32,#31,#7f
.l75b5
	db #88,#1f,#41,#09,#8e,#a0,#21,#31
	db #a1,#21,#a1,#25,#26,#36,#a0,#25
	db #26,#a3,#25,#a0,#21,#31,#a1,#21
	db #a1,#25,#26,#28,#a0,#28,#25,#a0
	db #29,#39,#a1,#29,#7f
.l75da
	db #88,#1f,#51,#09,#8e,#a0,#12,#12
	db #15,#16,#12,#12,#15,#16,#12,#12
	db #15,#16,#12,#16,#17,#19,#7f
.l75f1
	db #88,#1f,#51,#09,#8e,#a0,#12,#12
	db #15,#16,#12,#12,#15,#16,#12,#12
	db #15,#16,#12,#19,#18,#19,#7f
.l7608
	db #88,#1f,#51,#09,#8e,#a0,#12,#12
	db #15,#16,#14,#14,#14,#18,#14,#14
	db #17,#18,#14,#18,#19,#1b,#7f
.l761f
	db #88,#1f,#51,#09,#8e,#a0,#12,#12
	db #15,#16,#14,#14,#17,#18,#14,#14
	db #17,#18,#14,#1b,#1a,#1b,#7f
.l7636
	db #88,#1f,#31,#09,#8e,#a1,#31,#31
	db #35,#a3,#38,#a1,#38,#a0,#35,#38
	db #a1,#34,#7f
.l7649
	db #92,#88,#1f,#11,#05,#a0,#8e,#11
	db #11,#11,#11,#11,#11,#11,#11,#11
	db #11,#11,#11,#11,#11,#11,#11,#7f
.l7661
	db #ab,#7e,#7f
.l7664
	db #92,#88,#1f,#0f,#0e,#a1,#8a,#64
	db #01,#21,#8a,#64,#01,#21,#7f
.l7673
	db #92,#88,#1f,#41,#05,#a0,#80,#2a
	db #80,#2a,#a3,#80,#2a,#a1,#80,#2a
	db #80,#2a,#80,#2a,#80,#2a,#80,#2a
	db #a2,#80,#2a,#a0,#81,#25,#a1,#81
	db #25,#a9,#80,#25,#7f
.l7698
	db #88,#1f,#21,#07,#8e,#a0,#2a,#83
	db #35,#83,#35,#2a,#83,#35,#83,#35
	db #2a,#83,#35,#2a,#82,#35,#82,#35
	db #2a,#82,#35,#82,#35,#2a,#82,#35
	db #7f
.l76b9_end_game ; ???
	db #88,#1f,#41,#07,#8e,#a0,#2a,#31
	db #35,#31,#35,#3a,#35,#3a,#41,#3a
	db #41,#45,#41,#45,#4a,#45,#4a,#51
	db #4a,#7f
.l76d3
	db #88,#1f,#51,#09,#8f,#a0,#12,#12
	db #15,#16,#12,#12,#15,#16,#12,#12
	db #15,#16,#12,#16,#17,#19,#8e,#7f
.l76eb
	db #88,#1f,#51,#09,#8f,#a0,#12,#12
	db #15,#16,#12,#12,#15,#16,#12,#12
	db #15,#16,#12,#19,#18,#19,#8e,#7f
.l7703
	db #88,#1f,#51,#09,#8f,#a0,#14,#14
	db #17,#18,#14,#14,#17,#18,#14,#14
	db #17,#18,#14,#18,#19,#1b,#8e,#7f
.l771b
	db #88,#1f,#51,#09,#8f,#a0,#14,#14
	db #17,#18,#14,#14,#17,#18,#14,#14
	db #17,#18,#14,#1b,#1a,#1b,#8e,#7f
.l7733
	db #88,#1f,#31,#09,#8f,#a1,#31,#31
	db #35,#a3,#38,#a1,#38,#a0,#35,#38
	db #a1,#34,#8e,#7f
.l7747
	db #92,#88,#1f,#11,#05,#a0,#8e,#21
	db #21,#21,#21,#21,#21,#21,#21,#21
	db #21,#21,#21
.l775a
	db #21,#21,#21,#21,#7f
.l775f
	db #92,#88,#1f,#0f,#0e,#a1,#8a,#64
	db #01,#22,#8a,#64,#01,#22,#7f
.l776e
	db #92,#8e,#88,#1f,#61,#0a,#a0,#1a
	db #1a,#a3,#1a,#a1,#1a,#20,#21,#23
	db #24,#a2,#25,#a0,#15,#a1,#15,#a9
	db #8d,#15,#7f
.l7789
	db #88,#1f,#31,#07,#8e,#97,#14,#a0
	db #0a,#0a,#1a,#0a,#89,#1a,#25,#0a
	db #1a,#0a,#0a,#16,#15,#7f
.l779f
	db #92,#88,#1f,#21,#07,#a0,#85,#4b
	db #85,#4a,#a1,#85,#4b,#7f
.l77ad
	db #a1,#97,#08,#89,#8a,#64,#01,#20
	db #8a,#64,#01,#20,#7f
.l77ba
	db #a1,#97,#05,#89,#85,#26,#85,#25
	db #7f
.l77c3
	db #a1,#97,#05,#89,#85,#21,#85,#20
	db #7f
.l77cc
	db #a1,#97,#05,#89,#85,#2a,#85,#29
	db #7f
.l77d5
	db #88,#1f,#41,#07,#8e,#a0,#16,#16
	db #26,#16,#97,#14,#89,#16,#26,#16
	db #26,#21,#26,#16,#26,#7f
.l77eb
	db #a1,#97,#05,#89,#16,#21,#7f
.l77f2
	db #88,#1f,#91,#07,#8e,#97,#1e,#a0
	db #89,#11,#11,#21,#11,#97,#04,#89
	db #11,#21,#97,#19,#11,#21,#19,#21
	db #89,#11,#21,#a1,#97,#0a,#89,#11
	db #19,#7f
.l7814
	db #93,#88,#1f,#11,#05,#a0,#97,#05
	db #00,#88,#1f,#15,#05,#97,#01,#00
	db #88,#1f,#11,#05,#97,#05,#00,#97
	db #14,#00,#97,#05,#00,#00,#97,#05
	db #00,#88,#1f,#15,#05,#97,#01,#00
	db #88,#1f,#11,#05,#97,#05,#00,#97
	db #14,#00,#97,#05,#00,#00,#97,#05
	db #00,#88,#1f,#15,#05,#97,#01,#00
	db #88,#1f,#11,#05,#97,#05,#00,#00
	db #7f
.l785d
	db #93,#88,#1f,#11,#05,#a1,#97,#05
	db #00,#88,#1f,#15,#05,#97,#01,#00
	db #88,#1f,#11,#05,#97,#05,#00,#97
	db #14,#00,#97,#05,#00,#00,#97,#05
	db #00,#88,#1f,#15,#05,#97,#01,#00
	db #7f
.l7886
	db #92,#88,#1f,#11,#05,#8f,#a0,#97
	db #02,#11,#97,#04,#89,#11,#97,#02
	db #89,#11,#97,#04,#89,#11,#97,#02
	db #89,#11,#97,#04,#89,#11,#97,#02
	db #89,#11,#97,#04,#89,#11,#97,#02
	db #89,#11,#97,#04,#89,#11,#97,#02
	db #89,#11,#97,#04,#89,#11,#97,#02
	db #89,#11,#97,#04,#89,#11,#97,#02
	db #89,#11,#97,#04,#89,#11,#7f
; -- bruitage ou autre ? voir prog !
.l78cd
	push af
	ld (l7cd1),a
	xor a
	ld (l7cd2),a
	ld bc,#000d
	call l7d13_send_data_to_ay
	pop af
	ld d,#00
	ld e,a
	ld hl,l7904
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l78eb),de
.l78eb equ $ + 1
	call #0000
	ld bc,#1008
	call l7d13_send_data_to_ay
	inc c
	inc c
	call l7d13_send_data_to_ay
	xor a
	ld (l6b97),a
	ld (l6b99),a
	inc a
	ld (l7cd2),a
	ret
.l7904
	dw l795e,l7994,l79bf,l7a0d
	dw l7a6f,l7a9a,l7b20,l7b4b
	dw l7bb7,l7c01,l7c7e
.l791a
dw #797a
dw #79be,#79ed,#7a35,#7a99
dw #7ac7,#7b4a,#7b78,#7be2
dw #7c32,#7ca0

; gestion du bruitage pendant la musique ?
.l7930
	ld a,(l7cd2)
	and a
	ret z

	ld a,(l7cd9)
	and a
	jr z,l7953
	dec a
	ld (l7cd9),a
	ld a,(l7cd1)
	ld d,#00
	ld e,a
	ld hl,l791a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l7951),de
.l7951 equ $ + 1
	jp #0000
.l7953
	ld (l7cd2),a
	inc a
	ld (l6b97),a
	ld (l6b99),a
	ret
.l795e
	ld a,#28
	ld (l7cd9),a
	ld a,(l6b8e)
	or #30
	and #f2
	ld (l6b8e),a
	ld b,a
	ld c,#07
	call l7d13_send_data_to_ay
	ld b,#28
	ld c,#0c
	jp l7d13_send_data_to_ay

	call l7cdc
	push af
	ld b,a
	ld c,#01
	call l7d13_send_data_to_ay
	pop af
	push af
	add #0a
	ld b,a
	ld c,#05
.l798d equ $ + 2
	call l7d13_send_data_to_ay
	pop af
	ld b,a
	inc c
	jp l7d13_send_data_to_ay
.l7994
	ld a,#3c
	ld (l7cd9),a
	ld a,(l6b8e)
	or #17
	and #d7
	ld (l6b8e),a
	ld b,a
	ld c,#07
	call l7d13_send_data_to_ay
	ld b,#14
	ld c,#06
	call l7d13_send_data_to_ay
	ld b,#0a
	ld c,#0c
	call l7d13_send_data_to_ay
	ld b,#0e
	ld c,#0d
	jp l7d13_send_data_to_ay
.l79be
	ret
.l79bf
	ld hl,#0000
	ld (l7cd3),hl
	ld a,#32
	ld (l7cd9),a
	ld a,(l6b8e)
	or #30
	and #f2
	ld (l6b8e),a
	ld b,a
	ld c,#07
	call l7d13_send_data_to_ay
	ld b,#28
	ld c,#0c
	call l7d13_send_data_to_ay
	ld b,#00
	ld c,#01
	call l7d13_send_data_to_ay
	ld c,#05
	jp l7d13_send_data_to_ay
.l79ed
	ld a,(l7cd3)
	add #07
	ld (l7cd3),a
	ld b,a
	ld c,#06
	call l7d13_send_data_to_ay
	ld a,(l7cd3)
	add #40
	ld b,a
	ld c,#00
	call l7d13_send_data_to_ay
	sla b
	ld c,#04
	jp l7d13_send_data_to_ay
.l7a0d
	ld hl,#0122
	ld (l7cd3),hl
	ld hl,#012c
	ld (l7cd5),hl
	ld a,#28
	ld (l7cd9),a
	ld a,(l6b8e)
	or #38
	and #fa
	ld (l6b8e),a
	ld b,a
	ld c,#07
	call l7d13_send_data_to_ay
	ld b,#19
	ld c,#0c
	jp l7d13_send_data_to_ay
.l7a35
	ld hl,(l7cd3)
	ld de,#0002
	and a
	sbc hl,de
	ld (l7cd3),hl
	ld hl,(l7cd5)
	ld de,#0003
	and a
	sbc hl,de
	ld (l7cd5),hl
	ld a,(l7cd3)
	ld b,a
	ld c,#00
	call l7d13_send_data_to_ay
	ld a,(l7cd4)
	ld b,a
	inc c
	call l7d13_send_data_to_ay
	ld a,(l7cd5)
	ld b,a
	ld c,#04
	call l7d13_send_data_to_ay
	ld a,(l7cd6)
	ld b,a
	inc c
	jp l7d13_send_data_to_ay
.l7a6f
	ld a,#1e
	ld (l7cd9),a
	ld a,(l6b8e)
	or #17
	and #d7
	ld (l6b8e),a
	ld b,a
	ld c,#07
	call l7d13_send_data_to_ay
	ld b,#0a
	ld c,#06
	call l7d13_send_data_to_ay
	ld b,#05
	ld c,#0c
	call l7d13_send_data_to_ay
	ld b,#0e
	ld c,#0d
	jp l7d13_send_data_to_ay
.l7a99
	ret
.l7a9a
	ld hl,#0064
	ld (l7cd3),hl
	ld hl,#012c
	ld (l7cd5),hl
	ld a,#46
	ld (l7cd9),a
	ld a,#06
	ld (l7cd7),a
	ld a,(l6b8e)
	or #30
	and #f2
	ld (l6b8e),a
	ld b,a
	ld c,#07
	call l7d13_send_data_to_ay
	ld b,#28
	ld c,#0c
	jp l7d13_send_data_to_ay
.l7ac7
	ld hl,l7cd7
	ld a,(hl)
	and a
	jr nz,l7ade
	ld (hl),#06
	ld bc,#0064
	ld (l7cd3),bc
	ld bc,#012c
	ld (l7cd5),bc
.l7ade
	dec (hl)
	ld a,(l7cd3)
	ld b,a
	ld c,#06
	call l7d13_send_data_to_ay
	ld hl,(l7cd3)
	ld de,#0005
	add hl,de
	ld (l7cd3),hl
	ld hl,(l7cd5)
	ld de,#0006
	and a
	sbc hl,de
	ld (l7cd5),hl
	ld a,(l7cd3)
	ld b,a
	ld c,#00
	call l7d13_send_data_to_ay
	ld a,(l7cd4)
	ld b,a
	inc c
	call l7d13_send_data_to_ay
	ld a,(l7cd5)
	ld b,a
	ld c,#04
	call l7d13_send_data_to_ay
	ld a,(l7cd6)
	ld b,a
	inc c
	jp l7d13_send_data_to_ay
.l7b20
	ld a,#1e
	ld (l7cd9),a
	ld a,(l6b8e)
	or #17
	and #d7
	ld (l6b8e),a
	ld b,a
	ld c,#07
	call l7d13_send_data_to_ay
	ld b,#03
	ld c,#06
	call l7d13_send_data_to_ay
	ld b,#05
	ld c,#0c
	call l7d13_send_data_to_ay
	ld b,#0e
	ld c,#0d
	jp l7d13_send_data_to_ay
.l7b4a
ret
.l7b4b
	ld a,#06
	ld (l7cd7),a
	ld a,#1e
	ld (l7cd9),a
	ld hl,#0190
	ld (l7cd3),hl
	ld hl,#012c
	ld (l7cd5),hl
	ld a,(l6b8e)
	or #38
	and #fa
	ld (l6b8e),a
	ld b,a
	ld c,#07
	call l7d13_send_data_to_ay
	ld b,#28
	ld c,#0c
	jp l7d13_send_data_to_ay
.l7b78
	ld hl,l7cd7
	inc (hl)
	dec (hl)
	jr nz,l7b8c
	ld bc,#012c
	ld (l7cd3),bc
	ld (l7cd5),bc
	ld (hl),#05
.l7b8c
	dec (hl)
	ld hl,(l7cd3)
	ld de,#001e
	add hl,de
	ld (l7cd3),hl
	ld b,l
	ld c,#00
	call l7d13_send_data_to_ay
	ld b,h
	inc c
	call l7d13_send_data_to_ay
	ld hl,(l7cd5)
	ld de,#0023
	add hl,de
	ld (l7cd5),hl
	ld b,l
	ld c,#04
	call l7d13_send_data_to_ay
	ld b,h
	inc c
	jp l7d13_send_data_to_ay
.l7bb7
	ld a,#3c
	ld (l7cd9),a
	ld a,#08
	ld (l7cd7),a
	ld a,#07
	ld (l7bf8),a
	ld a,#00
	ld (l7bfa),a
	ld a,(l6b8e)
	or #15
	and #d7
	ld (l6b8e),a
	ld b,a
	ld c,#07
	call l7d13_send_data_to_ay
	ld b,#28
	ld c,#0c
	jp l7d13_send_data_to_ay
.l7be2
	ld hl,l7cd7
	inc (hl)
	dec (hl)
	jr nz,l7bf3
	ld a,#1f
	ld (l7bf8),a
	ld a,#18
	ld (l7bfa),a
.l7bf3
	dec (hl)
	call l7cdc
.l7bf8 equ $ + 1
	and #00
.l7bfa equ $ + 1
	or #00
	ld b,a
	ld c,#06
	jp l7d13_send_data_to_ay
.l7c01

	ld hl,#00fa
	ld (l7cd3),hl

	ld hl,#0104
	ld (l7cd5),hl

	ld a,#50
	ld (l7cd9),a

	ld a,#04
	ld (l7cd7),a

	xor a
	ld (l7cdb),a

	ld a,(l6b8e)
	or #38
	and #fa
	ld (l6b8e),a

	ld b,a
	ld c,#07
	call l7d13_send_data_to_ay
	ld b,#31
	ld c,#0c
	jp l7d13_send_data_to_ay

.l7c32
	ld a,(l7cd7)
	and a
	jr nz,l7c5c
	ld a,#04
	ld (l7cd7),a
	ld hl,#00fa
	ld (l7cd3),hl
	ld hl,#0104
	ld (l7cd5),hl
	ld a,(l7cdb)
	xor #01
	ld (l7cdb),a
	jr z,l7c5c
	ld hl,#0000
	ld (l7cd3),hl
	ld (l7cd5),hl
.l7c5c
	ld hl,l7cd7
	dec (hl)
	ld hl,l7cd3
	ld b,(hl)
	ld c,#00
	call l7d13_send_data_to_ay
	inc hl
	ld b,(hl)
	inc c
	call l7d13_send_data_to_ay
	ld hl,l7cd5
	ld b,(hl)
	ld c,#04
	call l7d13_send_data_to_ay
	inc hl
	ld b,(hl)
	inc c
	jp l7d13_send_data_to_ay
.l7c7e
	ld hl,#0320
	ld (l7cd3),hl
	ld a,#50
	ld (l7cd9),a
	ld a,(l6b8e)
	or #38
	and #fa
	ld (l6b8e),a
	ld b,a
	ld c,#07
	call l7d13_send_data_to_ay
	ld b,#3c
	ld c,#0c
	jp l7d13_send_data_to_ay
.l7ca0
	ld hl,(l7cd3)
	ld de,#0001
	add hl,de
	ld (l7cd3),hl
	add hl,de
	add hl,de
	ld (l7cd5),hl
	ld a,(l7cd3)
	ld b,a
	ld c,#00
	call l7d13_send_data_to_ay
	ld a,(l7cd4)
	ld b,a
	inc c
	call l7d13_send_data_to_ay
	ld a,(l7cd5)
	ld b,a
	ld c,#04
	call l7d13_send_data_to_ay
	ld a,(l7cd6)
	ld b,a
	inc c
	jp l7d13_send_data_to_ay
.l7cd1
	db &00
.l7cd2
	db &00
.l7cd3
	db &00
.l7cd4
	db &00
.l7cd5
	db &00
.l7cd6
	db &00
.l7cd7
	db &00
	db &00
.l7cd9
	db &00
	db &00
.l7cdb
	db &00
.l7cdc
	ld a,(l7cf7)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l7cfa
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l7cfa equ $+3
.l7cf7
	db #ff,#80,#1b,#34
.l7cfb	; periode notes ?
	dw #077c,#0708,#06b0,#0640 ; db #7c,#07,#08,#07,#b0,#06,#40,#06
	dw #05ec,#0594,#0544,#04f8 ; db #ec,#05,#94,#05,#44,#05,#f8,#04
	dw #04b0,#0470,#042c,#03f0 ; db #b0,#04,#70,#04,#2c,#04,#f0,#03

.l7d13_send_data_to_ay
	push bc
	push af

	ld a,c
	ld c,b
	ld b,#f4	; PPI Port A Data
	out (c),a	; Send register number to PPI Port A Data

	ld b,#f6	; PPI Port C
	in a,(c)	; read PPI Port C value
	or #c0		; &11000000 - set PSG fonction selection value to "Select PSG register"
	out (c),a	; send value to PPI Port C
	and #3f		; &00111111 - set PSG fonction selection value to "Inactive"
	out (c),a	; send value to PPI Port C

	ld b,#f4	; PPI Port A Data
	out (c),c	; send data to PPI Port A 

	ld b,#f6	; PPI Port C
	ld c,a		; c = "Inactive" = a
	or #80		; &10000000 - set PSG fonction selection value to "Write to selected PSG register"
	out (c),a	; send value to PPI Port C
	out (c),c	; send "Inactive" to PPI Port C
	pop af
	pop bc
	ret
;
.music_info
	db "Ghost 'n Goblins (1986)(Elite System Ltd.)(David Whittaker)",0
	db "",0

	read "music_end.asm"
