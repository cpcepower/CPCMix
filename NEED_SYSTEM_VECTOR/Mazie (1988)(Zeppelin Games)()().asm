; Music of Mazie (1988)(Zeppelin Games)()()
; Ripped by Megachur the 24/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MAZIE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7380
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

	ld de,#00fc
	ld hl,#a470
	call #bbab
;
.init_music
;
	ld a,#01
	ld hl,l9a82
	call #bcbc	; init env/ent
	ld a,#02
	ld hl,l9a89
	call #bcbc
	ld a,#0e
	ld hl,l9a8d
	call #bcbf
	ld a,#0d
	ld hl,l9a94
	call #bcbf
	ld a,#0c
	ld hl,l9a9b
	call #bcbf
	ld a,#0b
	ld hl,l9aab
	call #bcbf
	ld a,#0a
	ld hl,l9aaf
	call #bcbf
	ld a,#09
	ld hl,l9ab9
	call #bcbf
	ld hl,l9ac9
	call #bcaa

	call #bd19
	ld a,#02
	call #bb90
	ld hl,#0106
	call #bb75
	ld a,#09
	ld (l995b),a
	ld de,l9d06
	call l9696
	ld hl,l9ac9
	call #bcaa

	call #bd19
	ld hl,#0108
	call #bb75
	ld a,#09
	ld (l995b),a
	ld de,l9d0f
	call l9696
	ld b,#00
.l7404
	push bc
	call l9a1a
	pop bc
	djnz l7404
.l740b
	call l9a1a
	ld a,(l9982)
	cp #02
	jr z,l741c
	call #bb24
	cp #10
	jr nz,l740b
.l741c
	call l9a1a
	call l9a1a
	call l9a1a
	jp l8b30
.l7428
	call l9a1a
	call l8745
	ld a,h
	sub #80
	jp c,l743c
	ld a,#08
	ld (l97a9),a
	jp l757b
.l743c
	call l8563
	call #bb6c
	ld a,#10
	ld (l9982),a
	call l858b
	ld a,#02
	call #bb90
	call #bb6c
	call l9a1a	; play music
	call l9a1a
	ld hl,l9d5c
	call l9636
	call l9a1a
	call l9a1a
	call l9a1a
	xor a
	call #bb96
	ld a,#0d
	ld (l995b),a
	ld de,l9d18
	call l9696
	call l9a1a
	call l9a1a
	call l9a1a
	call l9747
	ld de,l9d25
	ld a,#05
.l7487
	ld (l9959),a
	ld hl,l9d6f
	call l9636
	xor a
	call #bb90
	ld hl,l9d83
	call l9636
	xor a
	call #bb96
	push de
	ld a,(l9959)
	add #05
	ld b,a
	ld c,a
	push bc
	ld a,#01
	call #bc32
	pop bc
	ld hl,#0101
	add hl,bc
	ld b,h
	ld c,l
	ld a,#02
	call #bc32
	call l9a1a
	call l9a1a
	call l9a1a
	pop de
	ld a,#0b
	ld (l995b),a
	call l9753
	ld a,(l9959)
	dec a
	jr nz,l7487
	ld hl,l9d6f
	call l9636
	ld hl,l9d8e
	call l9636
	call l9a1a
	call l9a1a
	ld a,#01
	ld bc,#0303
	call #bc32
	ld a,#02
	ld bc,#1a1a
	call #bc32
	xor a
	call #bb96
	ld a,#08
	ld (l97a9),a
.l74fb
	call l9a1a
	ld a,(l9981)
	inc a
	ld (l9981),a
	cp #25
	jp nz,l7519
	xor a
	ld (l9981),a
	ld a,(l9982)
	dec a
	ld (l9982),a
	cp #ff
	jr z,l757b
.l7519
	call #bb24
	cp #01
	jp nz,l7531
	ld a,(l97a9)
	cp #05
	jr z,l7544
	dec a
	ld (l97a9),a
	call l859f
	jr l7544
.l7531
	cp #02
	jp nz,l7544
	ld a,(l97a9)
	cp #09
	jr z,l7544
	inc a
	ld (l97a9),a
	call l859f
.l7544
	cp #10
	jr z,l757b
	ld a,(l97a9)
	sla a
	sub #05
	ld l,a
	ld h,#02
	call #bb75
	ld a,(l9982)
	add #30
	cp #3a
	jr nc,l7562
	cp #30
	jr nz,l7564
.l7562
	ld a,#f3
.l7564
	call #bb5a
	ld b,#f5
.l7569
	in a,(c)
	rra
	jr nc,l7569
	ld a,#08
	call #bb5a
	ld a,#20
	call #bb5a
	jp l74fb
.l757b
	xor a
	ld (l9982),a
	call l8559
	call l9a1a
	xor a
	ld (l97a3),a
	ld (l97a4),a
	ld a,(l97a9)
	add #2e
	ld (l97a5),a
	call l8f75
	ld a,(l97a9)
	sla a
	sub #06
	cp #0c
	jr nz,l75a4
	ld a,#0a
.l75a4
	ld (l8497),a
	ld a,#02
	call #bb90
	ld a,#00
	call #bb96
.l75b1
	ld hl,#35ff
	ld bc,#01a9
	ld a,(l99da)
.l75ba
	add hl,bc
	dec a
	jr nz,l75ba
	ld de,l97aa
	ldir
	ld a,(l9a07)
	bit 6,a
	jp z,l7671
	ld a,#11
	ld (l9495),a
	ld hl,l97c7
	xor a
	ld (l9987),a
	ld de,#0009
	ld c,#0e
.l75dc
	ld b,#0b
.l75de
	ld a,(hl)
	cp #02
	jp nz,l75e9
	ld (hl),#0d
	jp l7637
.l75e9
	cp #07
	jp nz,l75f3
	ld (hl),#0f
	jp l7637
.l75f3
	cp #08
	jp nz,l75fd
	ld (hl),#11
	jp l7637
.l75fd
	cp #0a
	jp nz,l7607
	ld (hl),#0f
	jp l7637
.l7607
	cp #0b
	jp nz,l7611
	ld (hl),#02
	jp l7637
.l7611
	cp #0c
	jp nz,l761c
	ld (l9987),a
	jp l7637
.l761c
	cp #0d
	jp nz,l7626
	ld (hl),#0e
	jp l7637
.l7626
	cp #0e
	jp nz,l7630
	ld (hl),#0d
	jp l7637
.l7630
	cp #13
	jp nz,l7637
	ld (hl),#0e
.l7637
	inc hl
	djnz l75de
	add hl,de
	dec c
	jp nz,l75dc
	ld a,(l9987)
	or a
	jp nz,l7657
	ld hl,l97eb
	ld de,l9827
	ld b,#3c
.l764e
	ld a,(de)
	ld c,a
	ld a,(hl)
	ld (de),a
	ld (hl),c
	inc hl
	inc de
	djnz l764e
.l7657
	ld hl,l97ef
	ld b,#0b
	ld c,#00
.l765e
	ld a,(hl)
	or a
	jr nz,l7666
	ld a,#0d
	ld (hl),a
	inc c
.l7666
	inc hl
	djnz l765e
	ld hl,l97aa
	ld a,(hl)
	add c
	ld (hl),a
	jr l7676
.l7671
	ld a,#07
	ld (l9495),a
.l7676
	xor a
	ld (l9989),a
	ld (l9992),a
	ld (l9999),a
	ld (l9984),a
	ld (l999f),a
	ld a,(l97ae)
	ld l,a
	ld h,#e7
	ld bc,#f050
	add hl,bc
	ld (l99a0),hl
	ld a,(l97a9)
	ld b,a
	ld a,(l97ae)
	sub b
	ld (l97ae),a
	ld hl,#c140
	ld c,#a8
	ld b,#50
	call l95eb
	ld hl,#c140
	ld (l9957),hl
	ld hl,l97ae
	push hl
.l76b2
	pop hl
	inc hl
	push hl
	ld a,(hl)
	or a
	jr z,l76ce
	ld hl,#3481
	ld bc,#0022
.l76bf
	add hl,bc
	dec a
	jr nz,l76bf
	ld de,(l9957)
	ex de,hl
	ld bc,#0408
	call l9608
.l76ce
	ld hl,(l9957)
	ld de,#0004
	add hl,de
	ld (l9957),hl
	ld de,#c7d0
	sbc hl,de
	jr nz,l76b2
	pop hl
	ld hl,#c140
.l76e3
	ld a,(hl)
	cp #c0
	jr nz,l7747
	ex de,hl
	ld hl,#ffb0
	add hl,de
	ld a,(hl)
	ex de,hl
	cp #05
	jr z,l7723
	ex de,hl
	ld hl,#0050
	add hl,de
	ld a,(hl)
	ex de,hl
	cp #c0
	jr z,l7715
	push hl
	ld de,#33f9
	ld a,r
	bit 0,a
	jr z,l770b
	ld de,#341b
.l770b
	ld bc,#0408
	call l9608
	pop hl
	jp l7747
.l7715
	push hl
	ld de,#343d
	ld bc,#0408
	call l9608
	pop hl
	jp l7747
.l7723
	ex de,hl
	ld hl,#0004
	add hl,de
	ld a,(hl)
	ex de,hl
	cp #c0
	jr z,l773c
	push hl
	ld de,#345f
	ld bc,#0408
	call l9608
	pop hl
	jp l7747
.l773c
	push hl
	ld de,#3481
	ld bc,#0408
	call l9608
	pop hl
.l7747
	ld de,#0004
	add hl,de
	ex de,hl
	ld hl,#3832
	add hl,de
	ex de,hl
	jp nc,l76e3
	call l84a4
	call l8ec5
	call l8f10
	call l8f64
	xor a
	call #bb90
	ld a,#0d
	call #bb96
	ld hl,#0804
	call #bb75
	ld a,(l97a8)
	call #bb5a
	ld a,#09
	call #bb5a
	ld hl,l99cc
	call l8ece
	xor a
	call #bb96
	ld a,#02
	call #bb90
	ld a,(l9a07)
	bit 5,a
	jp nz,l77d2
	bit 4,a
	jp z,l784f
	call l8577
	xor a
	call #bb96
	ld a,#03
	ld (l995b),a
	ld de,l9e32
	call l9696
	ld a,#0a
	call #bb5a
	ld a,#03
	ld (l995b),a
	ld de,l9e35
	call l9696
	call l8559
	ld a,#0b
	call #bbde
	ld de,#007e
	ld hl,#005d
	call #bbc0
	ld de,#0000
	ld hl,#ffa5
	call #bbf9
.l77d2
	ld hl,#0514
	call #bb75
	ld a,#0b
	ld (l995b),a
	ld de,l9e1c
	call l9696
	xor a
	call #bbde
	ld de,#0273
	ld hl,#0093
	call #bbc0
	ld de,#0000
	ld hl,#ff7c
	call #bbf9
	ld de,#ffa9
	ld hl,#0000
	call #bbf9
	ld de,#0000
	ld hl,#0084
	call #bbf9
	ld de,#0057
	ld hl,#0000
	call #bbf9
	ld de,#0002
	ld hl,#fffe
	call #bbf9
	ld de,#0000
	ld hl,#ff7c
	call #bbf9
	ld de,#ffa5
	ld hl,#0000
	call #bbf9
	ld de,#0000
	ld hl,#0084
	call #bbf9
	ld a,#04
	call #bbde
	ld de,#0275
	ld hl,#0091
	call #bbc0
	ld de,#ffa3
	ld hl,#0000
	call #bbf9
.l784f
	ld a,#05
	call #bbde
	ld de,#0000
	ld hl,#0002
	call #bbc0
	ld de,#0000
	ld hl,#0151
	call #bbf9
	ld de,#027f
	ld hl,#0002
	call #bbc0
	ld de,#0000
	ld hl,#0151
	call #bbf9
	xor a
	call #bb96
	ld hl,#e755
	ld (l9955),hl
	ld hl,l97a6
	ld a,(l97a8)
	cp (hl)
	jr nc,l78d2
	inc a
	ld (l97a8),a
	ld hl,#0514
	call #bb75
	ld a,#0b
	ld (l995b),a
	ld de,l9dbf
	call l9696
	ld hl,l9b1a
	call #bcaa
	call l859f
	ld hl,l9b1a
	call #bcaa
	call l859f
	call #9f1e
	ld a,#0b
	call l853f
	ld hl,#0804
	call #bb75
	ld a,#03
	call #bb96
	ld a,(l97a8)
	call #bb5a
	xor a
	call #bb96
	call l859f
.l78d2
	ld a,(l9a07)
	bit 6,a
	jp z,l791e
	ld hl,#0514
	call #bb75
	ld a,#0b
	ld (l995b),a
	ld de,l9e58
	call l9696
	ld hl,l9b1a
	call #bcaa
	call l859f
	ld hl,l9b1a
	call #bcaa
	call l859f
	call l9a1a
	call l9a1a
	call #bd19
	call #9f1e
	call l9a1a
	call #9f1e
	call l9a1a
	call l9a1a
	call #9f1e
	call l9a1a
	call l9a1a
.l791e
	ld hl,l9a0d
	ld de,l9796
	ld bc,#000d
	ldir
	ld a,(l97a6)
	cp #31
	jp nz,l7976
	ld a,(l97a5)
	cp #34
	jr nc,l7967
	ld hl,#0514
	call #bb75
	ld de,l9eb9
.l7941
	ld a,#0b
	ld (l995b),a
	call l9696
	ld hl,l9ad2
	call #bcaa
	ld b,#04
	call l85a1
	ld hl,l9adb
	call #bcaa
	ld b,#04
	call l85a1
	ld hl,l9ad2
	call #bcaa
	jr l7976
.l7967
	cp #36
	jr z,l7976
	ld hl,#0514
	call #bb75
	ld de,l9eaf
	jr l7941
.l7976
	ld hl,(l9955)
	ld de,l99a4
	call l9602
	ld a,(l9999)
	or a
	jp z,l798f
	ld hl,(l9997)
	ld de,#3729
	call l9622
.l798f
	ld hl,#e4c1
	ld (l99ca),hl
	ld de,#3766
	ld bc,#030d
	call l9608
	ld a,(l999f)
	or a
	jp z,l79b6
	ld a,(l9a07)
	bit 6,a
	jp z,l79b6
	ld hl,(l999d)
	ld de,#2a9d
	call l9622
.l79b6
	ld a,(l9985)
	or a
	jp z,l79c6
	ld hl,(l997b)
	ld de,#3738
	call l9602
.l79c6
	ld a,(l97aa)
	cp #03
	jp nc,l79d4
	ld a,(l9984)
	call z,l84c3
.l79d4
	call #bd19
	ld hl,(l9955)
	ld de,l99a4
	call l9602
	call #bb24
	ld de,(l9955)
	and #0c
	jp po,l79f2
	xor a
	ld (l997f),a
	jr l7a1f
.l79f2
	ld b,a
	xor a
	ld (l9980),a
	ld a,(l997f)
	inc a
	ld (l997f),a
	cp #01
	jr z,l7a1f
	cp #03
	jr z,l7a1f
	ld a,b
	and #08
	jr nz,l7a14
	ld a,(l97ad)
	sub e
	jr z,l7a1f
	dec de
	jr l7a1b
.l7a14
	ld a,(l97ae)
	sub e
	jr z,l7a1f
	inc de
.l7a1b
	ld (l9955),de
.l7a1f
	ld hl,l99a4
	ex de,hl
	call l9602
	ld a,(l9980)
	inc a
	inc a
	ld (l9980),a
	cp #4e
	jp nz,l7a5c
	call l9a1a
	ld a,(l9982)
	inc a
	ld (l9982),a
	cp #07
	jr nz,l7a49
	ld a,#05
	ld (l9982),a
	jp l7b34
.l7a49
	ld hl,#0514
	call #bb75
	ld a,#0b
	ld (l995b),a
	ld de,l9e27
	call l9696
	jr l7a96
.l7a5c
	cp #de
	jr nz,l7a73
	ld hl,#0514
	call #bb75
	ld a,#0b
	ld (l995b),a
	ld de,l9e1c
	call l9696
	jr l7a96
.l7a73
	bit 5,a
	jr nz,l7a96
	bit 6,a
	jr nz,l7a96
	call l8581
	ld a,(l9a07)
	bit 4,a
	jr z,l7a96
	ld a,r
	set 7,a
	cp #f8
	jr c,l7a8f
	sub #63
.l7a8f
	call #bb5a
	dec a
	call #bb5a
.l7a96
	call l8559
	ld a,#2f
	call #bb1e
	call nz,l85a7
	ld a,#43
	call #bb1e
	jr z,l7af5
	ld hl,#0514
	call #bb75
	ld a,#0b
	ld (l995b),a
	ld de,l9e9b
	call l9696
.l7ab9
	ld a,#2b
	call #bb1e
	jp z,l7aee
	call l7ac7
	jp l741c
.l7ac7
	ld hl,l9aff
	call #bcaa
	ld hl,l97a3
	xor a
	ld (hl),a
	inc hl
	ld (hl),a
	call l8ec5
	ld a,#31
	ld (l97a6),a
	call l8f64
	call l859f
	ld hl,l9af6
	call #bcaa
	ld b,#0a
	call l85a1
	ret
.l7aee
	ld a,#2e
	call #bb1e
	jr z,l7ab9
.l7af5
	ld a,#32
	call #bb1e
	jr z,l7b22
.l7afc
	ld hl,#0514
	call #bb75
	ld a,#0b
	ld (l995b),a
	ld de,l9ea5
	call l9696
.l7b0d
	ld a,#2b
	call #bb1e
	jp z,l7b1b
	call l7ac7
	jp l757b
.l7b1b
	ld a,#2e
	call #bb1e
	jr z,l7b0d
.l7b22
	call #bb24
	cp #10
	jp nz,l79d4
;
.stop_music
;
	xor a
	ld (l9982),a
	ld (l99d8),a
	ld (l99d9),a
.l7b34
	ld hl,l9bc0
	ld (l9a1b),hl
	ld hl,#c600
	ld bc,#2c10
	call l95eb
	ld hl,(l9955)
	ld a,l
	cp #55
	jp c,l7b51
	sub #02
	jp l7b57
.l7b51
	ld a,(l97a9)
	sub #03
	add l
.l7b57
	ld l,a
	push hl
	ld de,#3330
	call l9602
	ld hl,l9b59
	call #bcaa
	call l859f
	ld a,(l9a07)
	bit 4,a
	jp nz,l7b75
	bit 5,a
	jp z,l7b8a
.l7b75
	ld bc,#0a40
	ld hl,#c544
	call l95eb
	ld bc,#0a40
	ld hl,#c544
	ld de,#a1e4
	call l9608
.l7b8a
	pop hl
	ld de,#3330
	call l9602
	ld hl,l9af6
	call #bcaa
	call #bd19
	call l94cb
	ld de,#33d8
	call l9602
	ld hl,l9ad2
	call #bcaa
	ld a,(l9a07)
	bit 6,a
	jp nz,l7bb8
	xor a
	ld (l999f),a
	jp l7bf5
.l7bb8
	ld a,(l999f)
	or a
	jp z,l7bc8
	ld hl,(l999d)
	ld de,#2a9b
	call l9602
.l7bc8
	call l8745
	ld a,h
	ld (l9986),a
	ld (l999f),a
	ld hl,#c4c0
	ld (l997d),hl
	ld de,#367d
	call l9602
	inc l
	inc l
	ld (l999d),hl
	ld de,#2a9b
	call l9602
	xor a
	ld (l9987),a
	ld a,#73
	call l853f
	jp l7c0b
.l7bf5
	ld a,(l9986)
	or a
	jr z,l7c0b
	ld a,(l9987)
	or a
	jp nz,l7c0b
	ld hl,(l997d)
	ld de,#367d
	call l9602
.l7c0b
	ld b,#f5
.l7c0d
	in a,(c)
	rra
	jr nc,l7c0d
	xor a
	ld (l9988),a
	ld hl,(l9955)
	ld de,l99a4
	call l9602
	ld bc,#0205
	ld hl,(l979b)
	ld de,(l9799)
	call l9608
	ld a,(l979e)
	or a
	jp z,l7c89
	ld hl,(l9974)
	ld de,#33f2
	call l9622
	ld a,(l979f)
	ld hl,l9976
	add (hl)
	jp m,l7c4e
	push af
	call l94e3
	jp z,l7c5f
	pop af
.l7c4e
	ld hl,l9ae4
	call #bcaa
	ld a,(l979f)
	neg
	ld (l979f),a
	jp l7c89
.l7c5f
	pop af
	ld (l9976),a
	ld hl,(l9974)
	ld a,(l979f)
	cp #02
	jr nz,l7c7a
	ld a,h
	add #10
	ld h,a
	jr nc,l7c86
	ld bc,#c050
	add hl,bc
	jp l7c86
.l7c7a
	ld a,h
	sub #10
	ld h,a
	cp #bf
	jr nc,l7c86
	ld bc,#3fb0
	add hl,bc
.l7c86
	ld (l9974),hl
.l7c89
	ld a,(l9999)
	or a
	jp z,l7e5a
	ld hl,(l9997)
	ld de,#3729
	call l9622
	ld (l9997),hl
	ld a,h
	cp #c0
	jp z,l7d7f
	ld d,h
	ld e,l
	ld bc,(l9955)
	or a
	sbc hl,bc
	jp c,l7e5a
	ld a,(l97a9)
	dec a
	ld l,a
	ld h,#00
	add hl,bc
	sbc hl,de
	jp c,l7e5a
	ld hl,(l9955)
	ld de,l99a4
	call l9602
	ld bc,#0205
	ld hl,(l979b)
	ld de,(l9799)
	call l9608
	ld a,(l9a07)
	bit 7,a
	jr z,l7ce4
	ld hl,#e666
	ld de,#a178
	call l9602
	jp l85fb
.l7ce4
	ld a,#fe
	ld (l9797),a
	ld b,#05
.l7ceb
	push bc
	ld a,#09
	call l853f
	call l859f
	call #bd19
	pop bc
	djnz l7ceb
	ld hl,(l99ca)
	ld bc,#030d
	ld de,#3766
	call l9608
	ld hl,#e4c1
	ld (l99ca),hl
	ld hl,(l99ca)
	ld bc,#030d
	ld de,#3766
	call l9608
	ld a,(l99a2)
	or a
	jr z,l7d25
	xor a
	ld (l99a2),a
	jp l7da3
.l7d25
	call l8745
	bit 7,h
	jp z,l7d9e
	ld hl,l9b59
	call #bcaa
	ld hl,(l99a0)
	ld a,l
	sub #08
	ld l,a
	ld (l99a0),hl
	ld b,#03
.l7d3f
	push bc
	call #bd19
	ld hl,(l99a0)
	ld de,#378d
	call l9602
	pop bc
	djnz l7d3f
	ld hl,l9953
	ld b,#02
.l7d54
	dec hl
	ld a,(hl)
	or a
	jp nz,l7d54
	inc a
	ld (hl),a
	djnz l7d54
	ld hl,(l9955)
	ld de,l99a4
	call l9602
.l7d67
	ld b,#0b
	call l85a1
	ld hl,l9af6
	call #bcaa
	ld bc,#0205
	ld hl,(l979b)
	ld de,(l9799)
	call l9608
.l7d7f
	ld a,(l999c)
	or a
	jr z,l7d98
	ld hl,(l999a)
	ld (l9997),hl
	xor a
	ld (l999c),a
	ld hl,l9b6b
	call #bcaa
	jp l7e5a
.l7d98
	ld (l9999),a
	jp l7e5a
.l7d9e
	bit 3,h
	jp z,l7e18
.l7da3
	ld hl,l9b6b
	call #bcaa
	ld hl,(l9955)
	ld de,l99a4
	call l9602
	ld a,(l97a9)
	cp #08
	jr c,l7df7
	sub #01
	ld (l97a9),a
	call l8f75
	ld a,(l97ae)
	add #01
	ld (l97ae),a
	ld (l99a2),a
	ld hl,#c574
	ld a,(hl)
	or a
	jp nz,l7d67
	ld bc,#0808
	call l95eb
	ld hl,#c574
	ld de,#354b
	call l9602
	ld hl,#c578
	ld de,#354b
	call l9602
	ld hl,l98bc
	ld a,#06
	ld (hl),a
	inc hl
	ld (hl),a
	jp l7d67
.l7df7
	add #02
	ld (l97a9),a
	call l8f75
	ld a,(l97ae)
	sub #02
	ld (l97ae),a
	ld de,(l9955)
	cp e
	jp nc,l7d67
	dec de
	dec de
	ld (l9955),de
	jp l7d67
.l7e18
	ld a,(l97aa)
	cp #1e
	jp nc,l7d25
	ld a,(l97a6)
	cp #31
	jp z,l7e2d
	bit 1,h
	jp z,l85fb
.l7e2d
	ld hl,l97a5
	inc (hl)
	ld a,#02
	call #bb96
	xor a
	call #bb90
	call l8f10
	xor a
	ld (l9999),a
	call #bb96
	ld hl,(l9955)
	ld de,l99a4
	call l9602
	ld bc,#0205
	ld hl,(l979b)
	ld de,(l9799)
	call l9608
.l7e5a
	ld hl,(l99ca)
	ld bc,#030d
	ld de,#3766
	call l9608
	ld a,r
	add #7f
	jp pe,l7f0f
	ld hl,(l99ca)
	ld bc,#0050
	add hl,bc
	ld (l99ca),hl
	ld a,h
	add #19
	jp nc,l7f0f
	ld hl,(l99ca)
	ld bc,#030d
	ld de,#3766
	call l9608
	ld hl,l9b08
	call #bcaa
	call l9747
	ld hl,#0514
	call #bb75
	ld a,#0b
	ld (l995b),a
	ld de,l9e69
	call l9753
	call #9f1e
	ld b,#0e
.l7ea8
	push bc
	ld b,#05
	call l85a1
	ld hl,(l99ca)
	ld bc,#030d
	ld de,#3766
	call l9608
	ld hl,(l99ca)
	inc l
	inc l
	inc l
	ld (l99ca),hl
	ld hl,l9b08
	call #bcaa
	pop bc
	djnz l7ea8
	call l859f
	ld b,#0d
.l7ed1
	push bc
	call #bd19
	ld hl,(l99ca)
	dec l
	dec l
	dec l
	ld (l99ca),hl
	ld bc,#030d
	ld de,#3766
	call l9608
	ld hl,l9adb
	call #bcaa
	pop bc
	djnz l7ed1
	ld hl,#0514
	call #bb75
	ld a,#0b
	ld (l995b),a
	ld de,l9e74
	call l9753
	ld hl,l9aff
	call #bcaa
	ld b,#19
	call l85a1
	jp l876f
.l7f0f
	ld a,(l9992)
	or a
	jr z,l7f20
	ld a,l
	cp #b1
	jr nz,l7f20
	ld hl,#e4c1
	ld (l99ca),hl
.l7f20
	ld a,(l999f)
	or a
	jp z,l7fdb
	ld hl,(l999d)
	ld de,#2a9d
	call l9622
	ld hl,(l999d)
	ld a,h
	add #10
	ld h,a
	jp nc,l7f3e
	ld bc,#c050
	add hl,bc
.l7f3e
	ld (l999d),hl
	ld a,h
	cp #c8
	jp nz,l7f6a
	ld a,(l9986)
	or a
	jr z,l7f5d
	ld hl,(l997d)
	inc l
	ld (l999d),hl
	ld hl,l9b2c
	call #bcaa
	jp l7fdb
.l7f5d
	xor a
	ld (l999f),a
	ld hl,l9b11
	call #bcaa
	jp l7fdb
.l7f6a
	ld d,h
	ld e,l
	ld bc,(l9955)
	or a
	sbc hl,bc
	jr c,l7fdb
	ld a,(l97a9)
	dec a
	ld l,a
	ld h,#00
	add hl,bc
	sbc hl,de
	jr c,l7fdb
	ld hl,l9b11
	call #bcaa
	xor a
	ld (l999f),a
	ld de,#32b6
	ld hl,(l999d)
	ld bc,#ffae
	add hl,bc
	ld b,#05
.l7f97
	push bc
	push hl
	push de
	call l9602
	ld b,#05
	call l85a1
	pop de
	pop hl
	push hl
	push de
	call l9602
	pop de
	ld hl,#ff86
	add hl,de
	ex de,hl
	pop hl
	pop bc
	djnz l7f97
	ld de,#31c2
	ld b,#03
.l7fb8
	push bc
	push hl
	push de
	call l9602
	call #bd19
	call #bd19
	pop de
	pop hl
	push hl
	push de
	call l9602
	pop de
	ld hl,#ff86
	add hl,de
	ex de,hl
	pop hl
	pop bc
	djnz l7fb8
	call l859f
	jp l877f
.l7fdb
	ld a,(l97a0)
	or a
	jp z,l80a6
	ld hl,(l9977)
	ld de,#372f
	call l9622
	ld hl,(l9979)
	ld de,#372f
	call l9622
	ld hl,(l9977)
	ld a,h
	add #10
	ld h,a
	jr nc,l8001
	ld bc,#c050
	add hl,bc
.l8001
	ld (l9977),hl
	ld a,h
	add #08
	jr nc,l8020
	inc a
	ld (l99a3),a
	xor a
	ld (l97a0),a
	ld bc,#1a1a
	call #bc32
	ld hl,l9b11
	call #bcaa
	jp l80b6
.l8020
	ld hl,(l9979)
	ld a,h
	add #20
	ld h,a
	jp nc,l802e
	ld bc,#c050
	add hl,bc
.l802e
	ld (l9979),hl
	ld bc,#1880
	add hl,bc
	jp nc,l804b
	ld hl,(l9977)
	ld bc,#ffaf
	add hl,bc
	ld (l9979),hl
	ld hl,l9b11
	call #bcaa
	jp l80b6
.l804b
	ld hl,(l9979)
	ld d,h
	ld e,l
	ld bc,(l9955)
	or a
	sbc hl,bc
	jr c,l80a6
	ld a,(l97a9)
	dec a
	ld l,a
	ld h,#00
	add hl,bc
	sbc hl,de
	jr c,l80a6
	ld de,#30ce
	ld hl,(l9979)
	ld bc,#ffae
	add hl,bc
	ld b,#05
.l8071
	push bc
	push hl
	push de
	push bc
	call l9602
	ld hl,l9b11
	call #bcaa
	pop bc
	ld a,#fb
	add b
	jr nz,l808a
	call #bd19
	call #bd19
.l808a
	ld b,#04
	call l85a1
	pop de
	pop hl
	push hl
	push de
	call l9602
	pop de
	ld hl,#007a
	add hl,de
	ex de,hl
	pop hl
	pop bc
	djnz l8071
	call l859f
	jp l8797
.l80a6
	ld a,(l99a3)
	or a
	jp z,l80b6
	xor a
	ld (l99a3),a
	ld b,a
	ld c,a
	call #bc32
.l80b6
	ld a,(l9985)
	or a
	jp z,l8177
	ld bc,#030e
	ld hl,(l997b)
	ld de,#373a
	call l9608
	ld hl,(l997b)
	ld a,h
	add #10
	ld h,a
	jr nc,l80d6
	ld bc,#c050
	add hl,bc
.l80d6
	ld (l997b),hl
	ld bc,#0882
	add hl,bc
	jr nc,l80fd
	xor a
	ld (l9985),a
	ld a,(l9797)
	or a
	jp m,l80f2
	neg
	ld (l9797),a
	jp l8177
.l80f2
	ld a,(l9798)
	neg
	ld (l9798),a
	jp l8177
.l80fd
	ld bc,#07d0
	add hl,bc
	ld d,h
	ld e,l
	ld bc,(l9955)
	or a
	sbc hl,bc
	jr c,l8177
	ld a,(l97a9)
	ld l,a
	ld h,#00
	add hl,bc
	dec de
	sbc hl,de
	jp c,l8177
	ld hl,(l9955)
	ld a,h
	add #18
	ld h,a
	ld (l9955),hl
.l8123
	ld hl,(l9955)
	ld de,l99a4
	call l9602
	ld hl,(l997b)
	ld de,#3738
	call l9602
	ld hl,l9aff
	call #bcaa
	ld a,(l997f)
	inc a
	jp z,l816a
	ld a,#ff
	ld (l997f),a
	call l859f
	ld hl,l9af6
	call #bcaa
	call l859f
	ld hl,l9aff
	call #bcaa
	ld b,#3b
	call l85a1
	ld hl,l9af6
	call #bcaa
	call l859f
	jp l8123
.l816a
	ld hl,(l9955)
	ld a,h
	add #e8
	ld h,a
	ld (l9955),hl
	jp l87a6
.l8177
	ld a,(l9986)
	or a
	jr z,l8198
	ld a,(l9987)
	or a
	jp nz,l8190
	ld hl,(l997d)
	ld bc,#0408
	ld de,#367f
	call l9608
.l8190
	ld hl,l997d
	dec (hl)
	ld hl,l9986
	inc (hl)
.l8198
	ld a,(l9989)
	or a
	jr z,l81e4
	dec a
	ld (l9989),a
	ld hl,(l998a)
	ld a,#6e
	xor (hl)
	ld (hl),a
	dec l
	ld (l998a),hl
	ld hl,(l998c)
	ld a,#67
	xor (hl)
	ld (hl),a
	inc l
	ld a,#4c
	xor (hl)
	ld (hl),a
	ld (l998c),hl
	ld hl,(l998e)
	ld a,#4c
	xor (hl)
	ld (hl),a
	ld bc,#0fff
	add hl,bc
	jr nc,l81cd
	ld bc,#c050
	add hl,bc
.l81cd
	ld (l998e),hl
	ld hl,(l9990)
	ld a,#23
	xor (hl)
	ld (hl),a
	ld bc,#1001
	add hl,bc
	jr nc,l81e1
	ld bc,#c050
	add hl,bc
.l81e1
	ld (l9990),hl
.l81e4
	ld a,(l9992)
	or a
	jr z,l820e
	ld hl,(l9993)
	ld a,r
	ld (hl),a
	ld a,l
	sub #50
	ld l,a
	jr nc,l81f9
	ld hl,#fdb2
.l81f9
	ld (l9993),hl
	ld hl,(l9995)
	ld a,r
	ld (hl),a
	ld a,l
	sub #50
	ld l,a
	jr nc,l820b
	ld hl,#fef2
.l820b
	ld (l9995),hl
.l820e
	call #bb24
	cp #01
	jr nz,l8224
	ld hl,l9adb
	call #bcaa
	ld hl,#e4c1
	ld (l99ca),hl
	jp l825d
.l8224
	ld de,(l9955)
	and #0c
	jp po,l8233
	ld (l997f),a
	jp l825d
.l8233
	ld b,a
	ld a,(l997f)
	inc a
	ld (l997f),a
	cp #01
	jr z,l825d
	cp #03
	jr z,l825d
	ld a,b
	and #08
	jr nz,l8252
	ld a,(l97ad)
	sub e
	jr z,l825d
	dec de
	jp l8259
.l8252
	ld a,(l97ae)
	sub e
	jr z,l825d
	inc de
.l8259
	ld (l9955),de
.l825d
	ld de,(l9953)
	ld a,(l9798)
	ld l,a
	rla
	sbc a
	ld h,a
	add hl,de
	ex de,hl
	ld hl,#013d
	or a
	sbc hl,de
	jr c,l827a
	ld a,(l9796)
	call l8fbd
	jr z,l82cc
.l827a
	ld hl,l9ad2
	call #bcaa
	ld a,(l99d8)
	sub #08
	ld (l99d8),a
	jp nz,l82a4
	ld a,(l99d9)
	inc a
	ld (l99d9),a
	ld (l97a2),a
	ld (l979d),a
	cp #07
	jr nz,l829f
	call l84c3
.l829f
	ld a,#01
	jp l82c5
.l82a4
	ld a,(l97a2)
	or a
	jr z,l82c0
	dec a
	ld (l97a2),a
	jr nz,l82c0
	ld a,#fe
	ld (l9797),a
	ld hl,l9ac9
	call #bcaa
	ld a,#02
	jp l82c5
.l82c0
	ld a,(l9798)
	neg
.l82c5
	ld (l9798),a
	ld de,(l9953)
.l82cc
	ld (l9953),de
	ld a,(l9797)
	ld hl,l9796
	add (hl)
	cp #a4
	jp z,l87bc
	jp nc,l8368
	push af
	call l8fbd
	jr z,l82e9
	pop af
	jp l8368
.l82e9
	pop af
	push af
	call l963f
	ld a,h
	add #10
	ld h,a
	ld d,h
	ld e,l
	ld bc,(l9955)
	or a
	sbc hl,bc
	jr z,l8336
	jp c,l8391
	ld a,h
	or a
	jp nz,l831f
	ld a,(l9798)
	or a
	jp m,l831f
	ld a,l
	cp #02
	jp z,l8358
	cp #01
	jp nz,l831f
	ld a,#ff
	ld (l9798),a
	jp l8361
.l831f
	ld a,(l97a9)
	dec a
	ld l,a
	ld h,#00
	add hl,bc
	sbc hl,de
	jp c,l8391
	jr nz,l833e
	ld a,#02
	ld (l9798),a
	jp l8361
.l8336
	ld a,#fe
	ld (l9798),a
	jp l8361
.l833e
	ld a,(l9798)
	or a
	jp p,l8361
	ld a,l
	cp #02
	jp z,l8358
	cp #01
	jp nz,l8361
	ld a,#01
	ld (l9798),a
	jp l8361
.l8358
	ld a,#02
	ld (l97a1),a
	xor a
	ld (l9798),a
.l8361
	pop af
	ld hl,l9b47
	call #bcaa
.l8368
	ld hl,l9adb
	call #bcaa
	ld a,(l97a1)
	or a
	jr z,l8385
	dec a
	ld (l97a1),a
	jr nz,l8385
	ld a,#fe
	ld (l9798),a
	ld hl,l9ac9
	call #bcaa
.l8385
	ld a,(l9797)
	neg
	ld (l9797),a
	ld a,(l9796)
	push af
.l8391
	pop af
	ld (l9796),a
	call l963f
	ld (l979b),hl
	ld bc,#0205
	ld de,#33da
	ld a,(l9953)
	and #02
	jr z,l83ab
	ld de,#33e6
.l83ab
	ld (l9799),de
	call l9608
	ld de,l99a4
	ld hl,(l9955)
	call l9602
	ld a,(l979e)
	or a
	jr z,l83ca
	ld hl,(l9974)
	ld de,#33f2
	call l9622
.l83ca
	ld a,(l9999)
	or a
	jr z,l83d9
	ld hl,(l9997)
	ld de,#3729
	call l9622
.l83d9
	ld bc,#030d
	ld hl,(l99ca)
	ld de,#3766
	call l9608
	ld a,(l999f)
	or a
	jr z,l83f4
	ld hl,(l999d)
	ld de,#2a9d
	call l9622
.l83f4
	ld a,(l97a0)
	or a
	jr z,l840f
	ld (l9988),a
	ld hl,(l9977)
	ld de,#372f
	call l9622
	ld hl,(l9979)
	ld de,#372f
	call l9622
.l840f
	ld a,(l9985)
	or a
	jr z,l8424
	ld (l9988),a
	ld bc,#030e
	ld hl,(l997b)
	ld de,#373a
	call l9608
.l8424
	ld a,(l9986)
	or a
	jr z,l844b
	ld hl,(l997d)
	ld bc,#1801
	add hl,bc
	ld a,(hl)
	or a
	jp z,l843c
	ld (l9987),a
	jp l844b
.l843c
	ld (l9987),a
	ld hl,(l997d)
	ld bc,#0408
	ld de,#367f
	call l9608
.l844b
	ld a,(l9989)
	or a
	jp z,l8473
	ld hl,(l998a)
	ld a,#6e
	xor (hl)
	ld (hl),a
	ld hl,(l998c)
	ld a,#67
	xor (hl)
	ld (hl),a
	inc l
	ld a,#4c
	xor (hl)
	ld (hl),a
	ld hl,(l998e)
	ld a,#4c
	xor (hl)
	ld (hl),a
	ld hl,(l9990)
	ld a,#23
	xor (hl)
	ld (hl),a
.l8473
	ld a,#2f
	call #bb1e
	call nz,l85a7
	ld a,(l9988)
	or a
	jp nz,l7c0b
	ld a,(l979d)
	or a
	jp z,l7c0b
	call l853f
	ld a,(l9984)
	or a
	jp nz,l860c
	ld a,(l97aa)
.l8497 equ $ + 1
	cp #07
	jp nc,l7c0b
	call l9541
	call l84c3
	jp l7c0b
.l84a4
	ld de,#f780
	ld hl,#ff80
.l84aa
	ld a,(hl)
	or a
	jr z,l84b4
	xor a
	ld (hl),a
	inc l
	jp l84bc
.l84b4
	ld a,e
	and #bb
	ld (hl),a
	inc l
	and #aa
	ld (de),a
.l84bc
	inc e
	ld a,l
	cp #d0
	jr nz,l84aa
	ret
.l84c3
	ld a,#01
	ld (l9984),a
	ld bc,#0a10
	ld hl,#c533
	ld de,#a1e4
	call l9608
	ld bc,#0051
	add hl,bc
	ld a,(l9a07)
	bit 6,a
	jr z,l84e4
	ld de,#a178
	jr l84e7
.l84e4
	ld de,#a1b0
.l84e7
	call l9602
	xor a
	ld b,a
	ld c,b
	call #bc32
	ld hl,l98ac
	ld a,#03
	ld (hl),a
	inc hl
	ld (hl),a
	ld bc,#0013
	add hl,bc
	ld a,#05
	ld (hl),a
	inc hl
	ld (hl),a
	ld a,(l97aa)
	add #04
	ld (l97aa),a
	ld a,(l97a6)
	sub #25
	ld b,a
	ld a,(l97a9)
	neg
	add b
	cp #09
	jr c,l851b
	ld a,#09
.l851b
	ld b,a
	ld a,(l9a07)
	bit 6,a
	jp z,l852a
	ld a,#09
	add b
	jp l852b
.l852a
	ld a,b
.l852b
	push af
	sla a
	sla a
	sla a
	call l853f
	call l859f
	pop af
	sub #01
	jp nz,l852b
	ret
.l853f
	ld hl,l97a4
	add (hl)
	daa
	ld (hl),a
	ld a,#00
	dec hl
	adc (hl)
	daa
	ld (hl),a
	call l8ec5
	xor a
	ld (l979d),a
	ld hl,l9aed
	call #bcaa
	ret
.l8559
	ld hl,#0000
	ld de,#1318
	call #bb66
	ret
.l8563
	ld hl,#0004
	ld de,#1318
	call #bb66
	ret
.l856d
	ld hl,#0a04
	ld de,#100d
	call #bb66
	ret
.l8577
	ld hl,#0114
	ld de,#0318
	call #bb66
	ret
.l8581
	ld hl,#1107
	ld de,#1108
	call #bb66
	ret
.l858b
	ld hl,#0308
	ld de,#1115
	call #bb66
	ret
.l8595
	ld hl,#0109
	ld de,#120d
	call #bb66
	ret
.l859f
	ld b,#09
.l85a1
	call #bd19
	djnz l85a1
	ret
.l85a7
	ld a,#2f
	call #bb1e
	jr nz,l85a7
	call l859f
	ld hl,l9af6
	call #bcaa
	ld hl,(l99ca)
	ld de,#3766
	ld bc,#030d
	call l9608
	ld hl,#0514
	call #bb75
	ld a,#0b
	ld (l995b),a
	ld de,l9e7f
	call l9696
.l85d4
	call #9f1e
	ld a,#42
	call #bb1e
	jr nz,l85e5
	call #bb24
	cp #10
	jr nz,l85d4
.l85e5
	ld hl,#c600
	ld bc,#2c10
	call l95eb
	ld hl,(l99ca)
	ld de,#3766
	ld bc,#030d
	call l9608
	ret
.l85fb
	ld hl,#0814
	call #bb75
	ld a,#06
	ld (l995b),a
	ld de,l9e8a
	call l9696
.l860c
	xor a
	ld b,a
	ld c,a
	call #bc32
	ld hl,(l9955)
	ld de,l99a4
	call l9602
	ld a,(l97aa)
	add #03
	ld (l97aa),a
.l8623
	call l8745
	ld a,h
	cp #8c
	jr nc,l8623
	ld b,a
	ld a,l
	cp #9e
	jr nc,l8623
	ld l,a
	xor a
	ld h,a
	add hl,hl
	ex de,hl
	ld a,b
	call l8fbd
	ld a,(l979d)
	or a
	jp z,l871d
	call l853f
	xor a
	ld (l979d),a
	ld (l997f),a
.l864b
	ld hl,l9aed
	call #bcaa
	ld b,#0d
.l8653
	push bc
	ld hl,(l998a)
	ld a,#6e
	xor (hl)
	ld (hl),a
	ld hl,(l998c)
	ld a,#67
	xor (hl)
	ld (hl),a
	ld hl,(l998e)
	ld a,#4c
	xor (hl)
	ld (hl),a
	ld hl,(l9990)
	ld a,#23
	xor (hl)
	ld (hl),a
	call #bd19
	ld hl,(l998a)
	ld a,#6e
	xor (hl)
	ld (hl),a
	dec l
	ld (l998a),hl
	ld hl,(l998c)
	ld a,#67
	xor (hl)
	ld (hl),a
	inc l
	ld (l998c),hl
	ld hl,(l998e)
	ld a,#4c
	xor (hl)
	ld (hl),a
	ld bc,#0fff
	add hl,bc
	jr nc,l869a
	ld bc,#c050
	add hl,bc
.l869a
	ld (l998e),hl
	ld hl,(l9990)
	ld a,#23
	xor (hl)
	ld (hl),a
	ld bc,#1001
	add hl,bc
	jr nc,l86ae
	ld bc,#c050
	add hl,bc
.l86ae
	ld (l9990),hl
	pop bc
	djnz l8653
	call l859f
	ld a,(l97aa)
	cp #02
	jp nc,l86c2
	call l84c3
.l86c2
	or a
	jp nz,l8623
	ld (l9984),a
	ld a,(l97a3)
	cp #75
	jp nc,l880f
	ld hl,l97a6
	inc (hl)
	call l9541
	call l8563
	call #bb6c
	ld hl,l9ac9
	call #bcaa
	ld b,#0a
	call l85a1
.l86e9
	push bc
	call l9a1a
	pop bc
	djnz l86e9
	call l8b3c
	ld a,(l99da)
	ld hl,l99e2
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	bit 6,a
	jp z,l8708
	set 7,a
	jp l870a
.l8708
	set 6,a
.l870a
	ld (hl),a
	call l8dfa
	xor a
	ld (l99a2),a
	ld a,#08
	ld (l97a9),a
	call l8f75
	jp l75b1
.l871d
	ld a,r
	and #03
	jp nz,l8623
	ld a,(l997f)
	inc a
	ld (l997f),a
	jr z,l873f
	or #16
	inc a
	jp nz,l8623
	ld hl,l9b11
	call #bcaa
	call #bd19
	jp l8623
.l873f
	ld (l97aa),a
	jp l864b
.l8745
	ld bc,(l876d)
	ld hl,(l876d)
	sla l
	rl h
	add hl,bc
	ld b,h
	ld c,l
	sla l
	rl h
	ld d,l
	sla l
	rl h
	sla l
	rl h
	add hl,bc
	ld b,h
	ld c,l
	ld h,d
	ld l,#29
	or a
	sbc hl,bc
	ld (l876d),hl
	ret
.l876d
	db #00,#00
.l876f
	ld a,(l999f)
	or a
	jp z,l877f
	ld hl,(l999d)
	ld de,#2aa0
	call l9622
.l877f
	ld a,(l97a0)
	or a
	jr z,l8797
	ld hl,(l9977)
	ld de,#372f
	call l9622
	ld hl,(l9979)
	ld de,#372f
	call l9622
.l8797
	ld a,(l9985)
	or a
	jr z,l87a6
	ld hl,(l997b)
	ld de,#3738
	call l9602
.l87a6
	ld a,(l9986)
	or a
	jr z,l87bc
	ld a,(l9987)
	or a
	jp nz,l87bc
	ld hl,(l997d)
	ld de,#367d
	call l9602
.l87bc
	ld b,#08
.l87be
	push bc
	call #bd19
	xor a
	ld bc,#0611
	call #bc32
	ld bc,#0611
	call #bc38
	call #bd19
	xor a
	ld bc,#0000
	call #bc32
	ld bc,#0000
	call #bc38
	ld hl,l9af6
	call #bcaa
	pop bc
	djnz l87be
	ld a,(l9a07)
	bit 4,a
	jr nz,l87f4
	bit 5,a
	jp z,l87fd
.l87f4
	ld bc,#0a28
	ld hl,#c634
	call l95eb
.l87fd
	ld a,(l97a5)
	dec a
	ld (l97a5),a
	call l8f10
	ld a,(l97a3)
	cp #75
	jp c,l8876
.l880f
	ld a,(l97a5)
	sub #30
	jr z,l882e
	add #2f
	ld (l97a5),a
	call l8f10
	ld b,#05
.l8820
	push bc
	ld a,#23
	call l853f
	call l859f
	pop bc
	djnz l8820
	jr l880f
.l882e
	ld b,#25
.l8830
	push bc
	bit 2,b
	jr z,l883a
	ld hl,l9b59
	jr l883d
.l883a
	ld hl,l9b6b
.l883d
	call #bcaa
	call l8745
	ld a,h
	and #07
	inc a
	ld h,a
	add #0a
	ld d,a
	ld a,l
	and #0f
	add #04
	ld l,a
	add #02
	ld e,a
	call #bb66
	call #bb6c
	ld hl,#0202
	call #bb75
	ld a,#08
	ld (l995b),a
	ld de,l9d26
	call l9696
	ld b,#0d
	call l85a1
	pop bc
	djnz l8830
	jp l88f4
.l8876
	ld a,(l97a5)
	sub #30
	jp nz,l791e
	call l9541
	call l859f
	call l8f10
	call l859f
	ld hl,l9ac9
	call #bcaa
	call l859f
	call l8595
	call #bb6c
	ld hl,l9aff
	call #bcaa
	ld hl,#0502
	call #bb75
	ld a,#0b
	ld (l995b),a
	ld de,l9e90
	call l9696
	ld hl,#0205
	call #bb75
	ld hl,l9eb9
	call l9636
	ld b,#49
.l88be
	push bc
	call #bd19
	ld a,#32
	call #bb1e
	jr nz,l88ce
	pop bc
	djnz l88be
	jr l88d9
.l88ce
	call l8559
	ld a,#09
	ld (l97a9),a
	jp l7afc
.l88d9
	ld hl,l9af6
	call #bcaa
	call l859f
	ld hl,l9ac9
	call #bcaa
	call l859f
	call l8563
	call #bb6c
	call l9a1a
.l88f4
	call l858b
	call #bb6c
	ld hl,#0201
	call #bb75
	ld a,#0d
	ld (l995b),a
	ld de,l9dca
	call l9696
	ld b,#05
	ld hl,#0204
.l8910
	push bc
	push hl
	call #bb75
	push de
	call l9a1a
	call #bd19
	pop de
	ld a,#03
	ld (l995b),a
	call l9696
	pop hl
	ld bc,#0002
	add hl,bc
	pop bc
	djnz l8910
	call l893c
	call l859f
	call l9a1a
	call l9a1a
	jp l8962
.l893c
	ld de,l9de6
	ld b,#05
	ld hl,#0604
.l8944
	push bc
	push hl
	call #bb75
	push de
	call l9a1a
	call #bd19
	pop de
	ld a,#09
	ld (l995b),a
	call l9696
	pop hl
	ld bc,#0002
	add hl,bc
	pop bc
	djnz l8944
	ret
.l8962
	ld hl,l99d4
	ld b,#05
.l8967
	ld a,(l97a3)
	cp (hl)
	jp c,l89a1
	jp nz,l897d
	inc hl
	ld a,(l97a4)
	cp (hl)
	dec hl
	jp c,l89a1
	jp z,l89a1
.l897d
	dec hl
	dec hl
	djnz l8967
	call l8559
	ld a,#03
	call #bb96
	ld hl,#0a04
	call #bb75
	call l8ecb
	xor a
	call #bb96
	ld hl,#0101
	call #bb75
	call l858b
	ld b,#00
.l89a1
	ld a,#05
	cp b
	jp z,l8aad
	push bc
	sub b
	push af
	sla a
	ld b,#00
	ld c,a
	ld hl,l99d5
	ld de,l99d7
	lddr
	inc hl
	ld a,(l97a3)
	ld (hl),a
	inc hl
	ld a,(l97a4)
	ld (hl),a
	pop af
	ld b,a
	sla a
	sla a
	sla a
	add b
	ld b,#00
	ld c,a
	ld hl,l9e12
	ld de,l9e1b
	lddr
	inc hl
	push hl
	ld a,#20
	ld (hl),a
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc hl
	inc hl
	ex de,hl
	ld hl,l97a3
	ld a,#30
	rld
	ld (de),a
	inc de
	rld
	ld (de),a
	inc de
	rld
	inc hl
	rld
	ld (de),a
	inc de
	rld
	ld (de),a
	call l893c
	call l9a1a
	call l9a1a
	call #bd19
	ld hl,l9b6b
	call #bcaa
	call #bd19
	ld hl,l9b74
	call #bcaa
	pop de
	pop af
	sla a
	add #04
	ld l,a
	ld h,#06
	call #bb75
	ld a,#03
	ld (l997f),a
	ld a,#41
.l8a26
	ld (de),a
.l8a27
	ld a,#01
	ld (l995b),a
	call l9747
	call l9753
	dec de
	ld a,#08
	call #bb5a
	call #bb24
	cp #04
	jp nz,l8a57
	ld a,(de)
	cp #41
	jp nz,l8a48
	ld a,#5b
.l8a48
	sub #01
	push af
.l8a4b
	call #bb24
	cp #00
	jp nz,l8a4b
	pop af
	jp l8a26
.l8a57
	cp #08
	jp nz,l8a73
	ld a,(de)
	cp #5a
	jp nz,l8a64
	ld a,#40
.l8a64
	add #01
	push af
.l8a67
	call #bb24
	cp #00
	jp nz,l8a67
	pop af
	jp l8a26
.l8a73
	cp #10
	jp nz,l8a27
	ld a,#01
	ld (l995b),a
	call l9696
.l8a80
	call #bb24
	cp #00
	jp nz,l8a80
	call #bd19
.l8a8b
	call #bb24
	cp #00
	jp nz,l8a8b
	call #bd19
.l8a96
	call #bb24
	cp #00
	jp nz,l8a96
	call #bd19
	ld hl,l997f
	dec (hl)
	jp z,l8aad
	ld a,#41
	jp l8a26
.l8aad
	ld b,#39
	call l85a1
	ld a,#31
	ld (l97a6),a
.l8ab7
	call l8745
	cp h
	jr z,l8b16
	cp l
	jr z,l8b16
	inc l
	cp l
	jr z,l8b16
	bit 7,h
	jr z,l8ae1
	ld hl,#0701
	call #bb75
	call l9747
	ld a,#07
	ld (l995b),a
	ld de,l9dcf
	call l9753
	call l859f
	jr l8b06
.l8ae1
	ld hl,#0701
	call #bb75
	ld a,#07
	ld (l995b),a
	ld de,l9dcf
	call l9696
	call l9a1a
	call l859f
	call l8745
	ld a,h
	add #0c
	jr nc,l8b06
	ld hl,l9b35
	call #bcaa
.l8b06
	ld a,#32
	call #bb1e
	jp nz,l88ce
	call #bb24
	cp #10
	jp nz,l8ab7
.l8b16
	ld hl,l9bc0
	ld (l9a1b),hl
.l8b1c
	call l8745
	cp h
	jr z,l8b30
	call #bd19
	call #bb24
	cp #10
	jp nz,l8b1c
	call l859f
.l8b30
	call l8563
	call #bb6c
	call l8b3c
	jp l8c29
.l8b3c
	ld hl,l9a08
	xor a
	ld (hl),a
	ld hl,#d464
	ld (l9957),hl
	ld b,#24
	ld hl,l99e3
	jr l8b50
.l8b4e
	pop hl
	inc hl
.l8b50
	push hl
	push bc
	ld a,(hl)
	bit 3,a
	jr z,l8b76
	bit 7,a
	jr z,l8b65
	ld a,#02
	ld hl,l9a08
	add (hl)
	daa
	ld (hl),a
	jr l8b71
.l8b65
	bit 6,a
	jr z,l8b71
	ld a,#01
	ld hl,l9a08
	add (hl)
	daa
	ld (hl),a
.l8b71
	ld de,#2b46
	jr l8bb6
.l8b76
	bit 7,a
	jr z,l8b87
	ld a,#02
	ld hl,l9a08
	add (hl)
	daa
	ld (hl),a
	ld de,#29f8
	jr l8bb6
.l8b87
	bit 6,a
	jr z,l8b98
	ld a,#01
	ld hl,l9a08
	add (hl)
	daa
	ld (hl),a
	ld de,#2c8a
	jr l8bb6
.l8b98
	bit 2,a
	jr z,l8ba1
	ld de,#2aa4
	jr l8bb6
.l8ba1
	bit 0,a
	jr z,l8baa
	ld de,#2d2c
	jr l8bb6
.l8baa
	bit 1,a
	jr z,l8bb3
	ld de,#2be8
	jr l8bb6
.l8bb3
	ld de,#2dce
.l8bb6
	call #bd19
	ld hl,(l9957)
	ld bc,#0814
	call l95eb
	ld hl,(l9957)
	call l9602
	ld hl,(l9957)
	ld de,#0008
	add hl,de
	ld (l9957),hl
	pop bc
	ld a,b
	cp #1c
	jr nz,l8bdd
	ld hl,#f504
	jr l8bed
.l8bdd
	cp #13
	jr nz,l8be6
	ld hl,#d5f4
	jr l8bed
.l8be6
	cp #0a
	jr nz,l8bf0
	ld hl,#f694
.l8bed
	ld (l9957),hl
.l8bf0
	dec b
	jp nz,l8b4e
	pop hl
	call l8559
	ld hl,#040c
	call #bb75
	ld hl,l9a08
	ld de,l9a0a
	ld a,#30
	rld
	ld (de),a
	inc de
	rld
	ld (de),a
	ld a,#01
	call #bb96
	ld a,#04
	ld (l995b),a
	ld de,l9a09
	call l9696
	xor a
	call #bb96
.l8c21
	push bc
	call l9a1a
	pop bc
	djnz l8c21
	ret
.l8c29
	call l856d
	xor a
	call #bb96
	call #bb6c
	call l9a1a
	call l9a1a
	call l9a1a
	call #bd19
	ld hl,#c260
	ld de,#2e90
	call l9602
	call #bb24
	cp #10
	jp z,l8c29
	call l9a1a
	call l9a1a
	call l9a1a
	ld a,(l9a07)
	bit 6,a
	jp z,l8c97
	call l8745
	ld a,h
	sub #80
	jp c,l8c97
	call l8559
	ld hl,#0508
	call #bb75
	ld a,#01
	ld (l995b),a
	ld de,l9e63
	call l9696
	call l9747
	ld b,#05
.l8c83
	push bc
	ld a,#06
	call #bb90
	ld a,#01
	ld (l995b),a
	call l9753
	pop bc
	djnz l8c83
	call l856d
.l8c97
	call l9747
	ld a,#02
.l8c9c
	push af
	ld de,l9e38
	ld hl,l9e3c
	ld (l99dc),hl
	ld hl,#0402
	ld b,#f7
	call l8ce6
	ld hl,l9e43
	ld (l99dc),hl
	ld hl,#0605
	ld b,#01
	pop af
	push af
	call l8ce6
	ld hl,l9e4a
	ld (l99dc),hl
	ld hl,#0409
	ld b,#09
	pop af
	push af
	call l8ce6
	ld hl,l9e51
	ld (l99dc),hl
	ld hl,#0205
	ld b,#ff
	pop af
	push af
	call l8ce6
	pop af
	ld b,a
	srl a
	add b
	jp l8c9c
.l8ce6
	ld (l997f),a
	call #bb75
	ld a,b
	ld (l99db),a
	ld a,#01
	ld (l995b),a
	call l9753
	dec de
	push de
	ld a,#08
	call #bb5a
.l8cff
	call l9a1a
	call #bd19
	ld a,#3e
	call #bb1e
	jp z,l8d81
	call l8559
	ld hl,#0508
	call #bb75
	ld a,#06
	ld (l995b),a
	ld de,l9e63
	call l9696
	ld hl,#0608
	call #bb75
	ld a,#04
	ld (l995b),a
	ld de,l9ea1
	call l9696
.l8d32
	ld a,#2e
	call #bb1e
	jr nz,l8d7b
	ld a,#2b
	call #bb1e
	jr z,l8d32
	ld a,#07
	call #bb5a
	ld hl,l99e3
	ld b,#24
.l8d4a
	ld a,(hl)
	and #3f
	ld (hl),a
	inc hl
	djnz l8d4a
	pop hl
	xor a
	ld (l9a07),a
	ld b,#0e
	call l85a1
	call l9a1a
	call l9a1a
	call l9a1a
	ld b,#0e
	call l85a1
	ld hl,l9bc0
	ld (l9a1b),hl
	ld hl,l9ac9
	call #bcaa
	call l859f
	jp l8b30
.l8d7b
	call l856d
	call l9747
.l8d81
	call #bb24
	cp #10
	jp z,l8db2
	ld a,(l997f)
	dec a
	jp z,l8da3
	ld (l997f),a
	cp #64
	jp c,l8cff
	ld a,(l99db)
	cp #ff
	jp nz,l8cff
	jp l8db2
.l8da3
	ld a,#03
	call #bb90
	ld a,#01
	ld (l995b),a
	pop de
	call l9753
	ret
.l8db2
	call l9a1a
	call l9a1a
	ld a,#e9
	call #bb5a
	ld b,#08
.l8dbf
	push bc
	call l9a1a
	call #bd19
	call l9a1a
	pop bc
	djnz l8dbf
	ld a,#08
	call #bb5a
	ld a,#01
	ld (l995b),a
	pop de
	call l9696
	ld b,#0a
.l8ddc
	push bc
	call l9a1a
	call #bd19
	pop bc
	djnz l8ddc
	call l8dfa
	ld b,#11
.l8deb
	push bc
	call l9a1a
	call #bd19
	pop bc
	djnz l8deb
	pop hl
	pop hl
	jp l7428
.l8dfa
	call l8559
	ld hl,#0208
	call #bb75
	ld a,#07
	ld (l995b),a
	ld de,(l99dc)
	call l9696
	ld a,#02
	ld (l995b),a
	ld de,l97a6
	call l9696
	call l9a1a
	call l9a1a
	call l9a1a
	call l859f
	call l9a1a
	call l9a1a
	call l859f
	call l9a1a
	call l9a1a
	call l9a1a
	call l859f
	call l9a1a
	call l9a1a
	call l9a1a
	ld a,(l99da)
	ld b,a
	ld a,(l99db)
	add b
	jp z,l8e63
	jp p,l8e58
	ld b,#23
	add b
	jp l8e65
.l8e58
	cp #25
	jp c,l8e65
	ld b,#dd
	add b
	jp l8e65
.l8e63
	ld a,#24
.l8e65
	ld (l99da),a
	ld b,#24
	ld hl,l9a06
.l8e6d
	ld a,(l99da)
	cp b
	jp nz,l8e7f
	ld a,(hl)
	ld (l9a07),a
	set 3,a
	set 2,a
	ld (hl),a
	jr l8e88
.l8e7f
	ld a,(hl)
	bit 3,a
	jp z,l8e88
	res 3,a
	ld (hl),a
.l8e88
	dec hl
	djnz l8e6d
	call l9a1a
	call l9a1a
	call l9a1a
	call l9a1a
	call l9a1a
	call l9a1a
	call l9a1a
	call l8b3c
	call l9a1a
	call l9a1a
	call #bd19
	call l9a1a
	call #bd19
.l8eb2
	call l9a1a
	call #bd19
	call l8745
	cp h
	ret z
	call #bb24
	cp #10
	jr nz,l8eb2
	ret
.l8ec5
	ld hl,#0a03
	call #bb75
.l8ecb
	ld hl,l97a3
.l8ece
	ld a,#30
	rld
	cp #30
	jp nz,l8eef
	ld a,#20
	call #bb5a
	ld a,#30
	rld
	cp #30
	jp nz,l8ef4
	ld a,#20
	call #bb5a
	ld a,#30
	jp l8ef7
.l8eef
	call #bb5a
	rld
.l8ef4
	call #bb5a
.l8ef7
	rld
	inc hl
	rld
	call #bb5a
	rld
	cp #3a
	jr c,l8f07
	ld a,#39
.l8f07
	call #bb5a
	rld
	call #bb5a
	ret
.l8f10
	ld hl,(l99ca)
	ld de,#3764
	call l9602
	call #9ec9
	ld hl,#1002
	call #bb75
	ld a,#01
	ld (l995b),a
	ld de,l97a5
	call l9696
	ld a,#08
	call #bbde
	ld de,#01fc
	ld hl,#015a
	call #bbc0
	ld de,#0004
	ld hl,#0000
	call #bbf9
	ld a,#0c
	call #bbde
	ld de,#01fc
	ld hl,#0158
	call #bbc0
	ld de,#0004
	ld hl,#0000
	call #bbf9
	ld hl,(l99ca)
	ld de,#3764
	jp l9602
.l8f64
	ld hl,#0802
	call #bb75
	ld a,#01
	ld (l995b),a
	ld de,l97a6
	jp l9696
.l8f75
	ld a,(l97a9)
	cp #05
	jr nz,l8f81
	ld hl,#3330
	jr l8f9f
.l8f81
	cp #06
	jr nz,l8f8a
	ld hl,#334b
	jr l8f9f
.l8f8a
	cp #07
	jr nz,l8f93
	ld hl,#336b
	jr l8f9f
.l8f93
	cp #08
	jr nz,l8f9c
	ld hl,#3390
	jr l8f9f
.l8f9c
	ld hl,#33b2
.l8f9f
	ld bc,#0026
	ld de,l99a4
	ldir
	ret
.l8fa8
	ld d,h
	ld a,l
	ld hl,#c000
	ld bc,#0050
.l8fb0
	add hl,bc
	dec a
	jr nz,l8fb0
	ld a,d
	or a
	ret z
.l8fb7
	inc hl
	inc hl
	dec a
	jr nz,l8fb7
	ret
.l8fbd
	ld hl,l975f
	srl a
	srl a
	srl a
	add #04
	ld (l9959),a
	ld bc,#0014
.l8fce
	add hl,bc
	dec a
	jp nz,l8fce
	ld b,d
	ld c,e
	srl b
	rr c
	srl c
	srl c
	res 0,c
	ld a,c
	ld (l995a),a
	srl c
	add hl,bc
	ld a,(hl)
	or a
	ret z
	cp #02
	ret c
	ld (hl),#00
	cp #04
	jp c,l9449
	jp nz,l900d
	ld (l979e),a
	ld a,(l97ab)
	sub #04
	add a
	add a
	add a
	ld (l9976),a
	call l966c
	ld (l9974),hl
	jp l9480
.l900d
	cp #05
	jp nz,l902d
.l9012
	ld hl,l9b08
	call #bcaa
	ld a,#98
	ld (l9796),a
	call l94cb
	ld a,#fe
	ld (l9797),a
	ld a,#fe
	ld (l9798),a
	jp l9480
.l902d
	cp #06
	jp nz,l923d
	ld a,(l9999)
	or a
	jr z,l9041
	ld (l999c),a
	ld hl,(l9997)
	ld (l999a),hl
.l9041
	ld hl,#e4c1
	ld (l99ca),hl
	ld a,(l999f)
	or a
	jp z,l9057
	ld hl,(l999d)
	ld de,#2a9d
	call l9622
.l9057
	ld a,(l97a0)
	or a
	jr z,l906f
	ld hl,(l9977)
	ld de,#372f
	call l9622
	ld hl,(l9979)
	ld de,#372f
	call l9622
.l906f
	ld a,(l9985)
	or a
	jr z,l9081
	ld bc,#030e
	ld hl,(l997b)
	ld de,#373a
	call l9608
.l9081
	ld hl,l9b6b
	call #bcaa
	ld a,#04
	ld (l995b),a
	ld hl,#ef80
	ld (l9997),hl
	ld hl,(l9959)
	call l8fa8
	ld de,#004b
	add hl,de
	ld de,#304e
.l909f
	push de
	push hl
	ld a,#05
.l90a3
	ld (l995c),a
	ld a,e
	cp #ce
	jp nz,l90af
	ld de,#304e
.l90af
	call l9602
	pop hl
	inc hl
	inc hl
	inc hl
	push hl
	ld a,(l995c)
	dec a
	jp nz,l90a3
.l90be
	ld hl,(l9955)
	ld de,l99a4
	call l9602
	ld hl,(l9997)
	ld de,#3729
	call l9622
	ld b,#f5
.l90d2
	in a,(c)
	rra
	jr nc,l90d2
.l90d7
	ld a,#2f
	call #bb1e
	jr nz,l90d7
	ld hl,(l9955)
	ld de,l99a4
	call l9602
	call #bb24
	ld de,(l9955)
	and #0c
	jp po,l90f9
	xor a
	ld (l997f),a
	jr l9122
.l90f9
	ld b,a
	ld a,(l997f)
	inc a
	ld (l997f),a
	cp #01
	jr z,l9122
	cp #03
	jr z,l9122
	ld a,b
	and #08
	jr nz,l9117
	ld a,(l97ad)
	cp e
	jr z,l9122
	dec de
	jr l911e
.l9117
	ld a,(l97ae)
	cp e
	jr z,l9122
	inc de
.l911e
	ld (l9955),de
.l9122
	ld hl,(l9997)
	ld de,#3729
	call l9622
	ld hl,(l9997)
	ld a,h
	add #08
	ld h,a
	jp nc,l9139
	ld bc,#c050
	add hl,bc
.l9139
	ld (l9997),hl
	ld a,h
	cp #f7
	jp nz,l9148
	ld a,l
	cp #80
	jp nc,l918e
.l9148
	ld d,h
	ld e,l
	ld bc,(l9955)
	or a
	sbc hl,bc
	jp c,l91a8
	ld a,(l97a9)
	dec a
	ld l,a
	ld h,#00
	add hl,bc
	sbc hl,de
	jp c,l91a8
.l9161
	ld a,#04
	call l853f
	ld hl,l9adb
	call #bcaa
	ld a,r
	bit 0,a
	jp nz,l9194
	ld hl,l9ad2
	call #bcaa
	ld a,r
	bit 1,a
	jp z,l9194
	call #bd19
	ld hl,l9b59
	call #bcaa
	call #bd19
	jr l9161
.l918e
	ld hl,l9b6b
	call #bcaa
.l9194
	pop hl
	push hl
	ld a,r
	and #0e
	neg
	ld bc,#004f
	add c
	ld c,a
	add hl,bc
	ld (l9997),hl
	jp l90be
.l91a8
	ld hl,l995b
	dec (hl)
	jp nz,l90be
	ld a,#06
	ld (l995b),a
	pop hl
	ld de,#fff1
	add hl,de
	pop de
	push hl
	ld a,#05
.l91bd
	ld (l995c),a
	ld a,e
	cp #ce
	jp nz,l91c9
	ld de,#304e
.l91c9
	call l9602
	pop hl
	inc hl
	inc hl
	inc hl
	push hl
	ld a,(l995c)
	dec a
	jp nz,l91bd
	pop hl
	ld bc,#07f1
	add hl,bc
	jp nc,l91e4
	ld bc,#c050
	add hl,bc
.l91e4
	ld a,h
	add #02
	jp nc,l909f
	ld a,(l999c)
	or a
	jr z,l91ff
	ld hl,(l999a)
	ld (l9997),hl
	ld hl,l9b6b
	call #bcaa
	call l859f
.l91ff
	ld a,(l999f)
	or a
	jp z,l920f
	ld hl,(l999d)
	ld de,#2a9d
	call l9622
.l920f
	ld a,(l97a0)
	or a
	jr z,l9227
	ld hl,(l9977)
	ld de,#372f
	call l9622
	ld hl,(l9979)
	ld de,#372f
	call l9622
.l9227
	ld a,(l9985)
	or a
	jp z,l9012
	ld bc,#030e
	ld hl,(l997b)
	ld de,#373a
	call l9608
	jp l9012
.l923d
	cp #07
	jp nz,l9253
	ld hl,l9aff
	call #bcaa
	ld a,#01
	ld (l9797),a
	ld (l9798),a
	jp l9480
.l9253
	cp #08
	jp nz,l92f2
	ld a,(l97a5)
	cp #39
	jp nc,l9480
	ld hl,(l9955)
	ld de,l99a4
	call l9602
	ld a,(l9999)
	or a
	jp z,l9279
	ld hl,(l9997)
	ld de,#3729
	call l9622
.l9279
	ld a,(l999f)
	or a
	jp z,l9289
	ld hl,(l999d)
	ld de,#2a9d
	call l9622
.l9289
	ld a,(l9985)
	or a
	jp z,l9299
	ld hl,(l997b)
	ld de,#3738
	call l9602
.l9299
	ld a,#04
	call #bb96
	xor a
	call #bb90
	ld a,(l97a5)
	inc a
	ld (l97a5),a
	call l8f10
	xor a
	call #bb96
	ld hl,#e4c1
	ld (l99ca),hl
	ld hl,(l9955)
	ld de,l99a4
	call l9602
	ld a,(l9999)
	or a
	jp z,l92cf
	ld hl,(l9997)
	ld de,#3729
	call l9622
.l92cf
	ld a,(l999f)
	or a
	jp z,l92df
	ld hl,(l999d)
	ld de,#2a9d
	call l9622
.l92df
	ld a,(l9985)
	or a
	jp z,l9480
	ld hl,(l997b)
	ld de,#3738
	call l9602
	jp l9480
.l92f2
	cp #09
	jp nz,l9309
	ld hl,l9ac9
	call #bcaa
	ld a,#06
	ld (l97a1),a
	xor a
	ld (l9798),a
	jp l9480
.l9309
	cp #0a
	jp nz,l9318
	xor a
	ld (l9983),a
	call l95a2
	jp l9480
.l9318
	cp #0b
	jp nz,l9328
	ld a,#01
	ld (l9983),a
	call l9541
	jp l9480
.l9328
	cp #0c
	jp nz,l935a
	ld (l97a0),a
	ld hl,l9b23
	call #bcaa
	ld hl,(l9959)
	call l8fa8
	ld (l9977),hl
	inc hl
	ld (l9979),hl
	ld a,(l9796)
	cp #30
	jr c,l9352
	sub #30
	ld (l9796),a
	jp l9480
.l9352
	add #30
	ld (l9796),a
	jp l9480
.l935a
	cp #0d
	jp nz,l9378
	ld (l97a0),a
	ld hl,l9b23
	call #bcaa
	ld hl,(l9959)
	call l8fa8
	ld (l9977),hl
	inc hl
	ld (l9979),hl
	jp l9480
.l9378
	cp #0e
	jp nz,l9392
	ld (l9985),a
	ld hl,l9b35
	call #bcaa
	ld hl,(l9959)
	call l8fa8
	ld (l997b),hl
	jp l9486
.l9392
	cp #0f
	jp nz,l93ae
	ld hl,l9b3e
	call #bcaa
	ld a,#01
	ld (l9986),a
	ld hl,(l9959)
	call l8fa8
	ld (l997d),hl
	jp l9486
.l93ae
	cp #10
	jp nz,l93da
	ld (l9992),a
	ld hl,#e790
	ld bc,#0404
	call l95eb
	ld hl,l9b59
	call #bcaa
	ld hl,#c790
	ld de,#369f
	call l9602
	call l859f
	ld hl,#dcc1
	ld (l99ca),hl
	jp l9480
.l93da
	cp #11
	jp nz,l93f7
	ld hl,l9b62
	call #bcaa
	ld a,#08
	ld (l97a2),a
	ld a,#02
	ld (l9797),a
	ld a,#03
	ld (l9798),a
	jp l9480
.l93f7
	cp #12
	jp nz,l942b
	ld hl,l9b6b
	call #bcaa
	ld a,(l9999)
	or a
	jr z,l9419
	ld (l999c),a
	ld hl,(l9959)
	call l8fa8
	inc l
	ld (l999a),hl
	dec l
	jp l9486
.l9419
	inc a
	ld (l9999),a
	ld hl,(l9959)
	call l8fa8
	inc l
	ld (l9997),hl
	dec l
	jp l9486
.l942b
	ld hl,l9b3e
	call #bcaa
	ld hl,#c000
	ld de,#ffff
.l9437
	nop
	ld b,(hl)
	ld a,(de)
	ld (hl),a
	ld a,b
	ld (de),a
	inc hl
	dec de
	ld a,l
	or h
	jr nz,l9437
	ld hl,#e4c1
	ld (l99ca),hl
.l9449
	ld a,(l9986)
	or a
	jr z,l9480
	ld hl,(l997d)
	ld a,h
	cp #c4
	jp c,l9470
	ld a,(l999f)
	or a
	jp nz,l9480
	inc a
	ld (l999f),a
	inc l
	ld (l999d),hl
	ld hl,l9b2c
	call #bcaa
	jp l9480
.l9470
	ld (l97a0),a
	ld (l9977),hl
	inc hl
	ld (l9979),hl
	ld hl,l9b23
	call #bcaa
.l9480
	ld hl,(l9959)
	call l8fa8
.l9486
	push hl
	ld bc,#0408
	call l95eb
	ld hl,l97aa
	dec (hl)
	ld a,(l979d)
.l9495 equ $ + 1
	add #07
	ld (l979d),a
	ld (l9988),a
	inc a
	ld (l9989),a
	pop hl
	ld bc,#1801
	add hl,bc
	ld (l998a),hl
	ld (l9990),hl
	inc hl
	ld (l998c),hl
	ld (l998e),hl
	ld hl,(l99ca)
	ld bc,#ffb0
	add hl,bc
	ld a,h
	cp #e5
	jp c,l94c2
	ld (l99ca),hl
.l94c2
	ld a,(l979f)
	neg
	ld (l979f),a
	ret
.l94cb
	ld hl,(l9955)
	ld bc,#e72d
	and a
	sbc hl,bc
	add hl,hl
	add hl,hl
	ld (l9953),hl
	ld a,(l9796)
	call l963f
	ld (l979b),hl
	ret
.l94e3
	ld hl,l975f
	srl a
	srl a
	srl a
	add #04
	ld (l97ab),a
	ld bc,#0014
.l94f4
	add hl,bc
	dec a
	jr nz,l94f4
	ld a,(l97ac)
	ld c,a
	srl c
	dec c
	add hl,bc
	ld a,(hl)
	or a
	ret z
	cp #02
	ret c
	ld (hl),#00
	ld hl,(l97ab)
	dec h
	dec h
	call l8fa8
	ld bc,#0408
	call l95eb
	ld hl,l97aa
	dec (hl)
	ld a,(l979d)
	add #06
	ld (l979d),a
	ld (l9988),a
	ld hl,l9b1a
	call #bcaa
	ld a,(l9797)
	or a
	jp m,l9538
	neg
	ld (l9797),a
	ret
.l9538
	ld a,(l9798)
	neg
	ld (l9798),a
	ret
.l9541
	ld a,#01
	ld bc,#0303
	call #bc32
	ld a,#02
	ld bc,#1a1a
	call #bc32
	ld a,#03
	ld bc,#0606
	call #bc32
	ld a,#04
	ld bc,#1414
	call #bc32
	ld a,#05
	ld bc,#0d0d
	call #bc32
	ld a,#06
	ld bc,#1010
	call #bc32
	ld a,#07
	ld bc,#0f0f
	call #bc32
	ld a,#08
	ld bc,#1818
	call #bc32
	ld a,#09
	ld bc,#1212
	call #bc32
	ld a,#0a
	ld bc,#0202
	call #bc32
	ld a,#0d
	ld bc,#0808
	call #bc32
	ld a,#0e
	ld bc,#1111
	call #bc32
	ret
.l95a2
	ld a,#01
	ld bc,#0000
	call #bc32
	ld a,#03
	ld bc,#0000
	call #bc32
	ld a,#06
	ld bc,#0000
	call #bc32
	ld a,#07
	ld bc,#0000
	call #bc32
	ld a,#08
	ld bc,#0000
	call #bc32
	ld a,#09
	ld bc,#0000
	call #bc32
	ld a,#0a
	ld bc,#0000
	call #bc32
	ld a,#0d
	ld bc,#0000
	call #bc32
	ld a,#0e
	ld bc,#0000
	call #bc32
	ret
.l95eb
	push bc
	push hl
.l95ed
	ld (hl),#00
	inc hl
	djnz l95ed
	pop hl
	ld a,h
	add #08
	ld h,a
	jr nc,l95fd
	ld bc,#c050
	add hl,bc
.l95fd
	pop bc
	dec c
	jr nz,l95eb
	ret
.l9602
	ld a,(de)
	ld b,a
	inc de
	ld a,(de)
	ld c,a
	inc de
.l9608
	push bc
	push hl
.l960a
	ld a,(de)
	xor (hl)
	ld (hl),a
	inc hl
	inc de
	djnz l960a
	pop hl
	ld a,h
	add #08
	ld h,a
	jr nc,l961c
	ld bc,#c050
	add hl,bc
.l961c
	pop bc
	dec c
	jp nz,l9608
	ret
.l9622
	ld a,(de)
	or a
	ret z
	xor (hl)
	ld (hl),a
	inc de
	ld a,h
	add #08
	ld h,a
	jp nc,l9622
	ld bc,#c050
	add hl,bc
	jp l9622
.l9636
	ld a,(hl)
	inc hl
	or a
	ret z
	call #bb5a
	jr l9636
.l963f
	ld e,a
	and #07
	inc a
	ld hl,#c140
	ld bc,#0800
.l9649
	dec a
	jr z,l964f
	add hl,bc
	jr l9649
.l964f
	ld a,e
	srl a
	srl a
	srl a
	ld bc,#0050
	inc a
.l965a
	dec a
	jr z,l9660
	add hl,bc
	jr l965a
.l9660
	ld bc,(l9953)
	srl b
	rr c
	srl c
	add hl,bc
	ret
.l966c
	ld e,a
	and #07
	inc a
	ld hl,#c140
	ld bc,#0800
.l9676
	dec a
	jr z,l967c
	add hl,bc
	jr l9676
.l967c
	ld a,e
	srl a
	srl a
	srl a
	ld bc,#0050
	inc a
.l9687
	dec a
	jr z,l968d
	add hl,bc
	jr l9687
.l968d
	ld a,(l97ac)
	dec a
	ld c,a
	sla c
	add hl,bc
	ret
.l9696
	push de
	call #b906
	push af
	ld a,(de)
	call #bba5
	ld de,l995c
	ld b,#08
.l96a4
	ld a,(hl)
	ld (de),a
	inc de
	ld (de),a
	inc de
	inc hl
	djnz l96a4
	pop af
	call #b90c
	ld b,#03
	ld ix,l9962
.l96b6
	xor a
	ld d,(ix+#02)
	ld e,(ix+#00)
	bit 0,d
	jr z,l96c7
	bit 0,e
	jr nz,l96c7
	ld a,#01
.l96c7
	bit 1,d
	jr z,l96d1
	bit 1,e
	jr nz,l96d1
	add #02
.l96d1
	bit 2,d
	jr z,l96db
	bit 2,e
	jr nz,l96db
	add #04
.l96db
	bit 3,d
	jr z,l96e5
	bit 3,e
	jr nz,l96e5
	add #08
.l96e5
	bit 4,d
	jr z,l96ef
	bit 4,e
	jr nz,l96ef
	add #10
.l96ef
	bit 5,d
	jr z,l96f9
	bit 5,e
	jr nz,l96f9
	add #20
.l96f9
	bit 6,d
	jr z,l9703
	bit 6,e
	jr nz,l9703
	add #40
.l9703
	bit 7,d
	jr z,l970d
	bit 7,e
	jr nz,l970d
	add #80
.l970d
	ld (ix+#0a),a
	inc ix
	inc ix
	djnz l96b6
	ld a,#ff
	ld hl,l995c
	call #bba8
	ld a,#fe
	ld hl,l9964
	call #bba8
	ld a,#fd
	ld hl,l996c
	call #bba8
	ld hl,l9da7
	call l9636
	ld a,#16
	call #bb5a
	xor a
	call #bb5a
	pop de
	inc de
	ld hl,l995b
	dec (hl)
	jp nz,l9696
	ret
.l9747
	xor a
	ld hl,l995c
	ld b,#04
.l974d
	ld (hl),a
	inc hl
	inc hl
	djnz l974d
	ret
.l9753
	push de
	call #b906
	push af
	ld a,(de)
	call #bba5
	ld de,l995c
.l975f
	ld b,#04
.l9761
	ld a,(hl)
	inc de
	ld (de),a
	inc de
	inc hl
	djnz l9761
	ld b,#04
.l976a
	ld a,(hl)
	ld (de),a
	inc de
	ld (de),a
	inc de
	inc hl
	djnz l976a
	pop af
	call #b90c
	ld a,#ff
	ld hl,l995c
	call #bba8
	ld a,#fe
	ld hl,l9964
	call #bba8
	ld hl,l9db5
	call l9636
	pop de
	inc de
	ld hl,l995b
	dec (hl)
	jp nz,l9753
	ret
.l979d equ $ + 7
.l979b equ $ + 5
.l9799 equ $ + 3
.l9798 equ $ + 2
.l9797 equ $ + 1
.l9796
	db #00,#00,#00,#00,#00,#00,#00,#00
.l97a5 equ $ + 7
.l97a4 equ $ + 6
.l97a3 equ $ + 5
.l97a2 equ $ + 4
.l97a1 equ $ + 3
.l97a0 equ $ + 2
.l979f equ $ + 1
.l979e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l97ad equ $ + 7
.l97ac equ $ + 6
.l97ab equ $ + 5
.l97aa equ $ + 4
.l97a9 equ $ + 3
.l97a8 equ $ + 2
.l97a6
	db #31,#2d,#34,#00,#00,#00,#00,#00
.l97ae
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l97c7 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l97eb equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l97ef equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9827 equ $ + 1
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
.l98ac equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l98bc equ $ + 6
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
.l9955 equ $ + 7
.l9953 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l995c equ $ + 6
.l995b equ $ + 5
.l995a equ $ + 4
.l9959 equ $ + 3
.l9957 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#3c,#3c
.l9964 equ $ + 6
.l9962 equ $ + 4
	db #66,#66,#66,#66,#3c,#3c,#66,#66
.l996c equ $ + 6
	db #66,#66,#3c,#3c,#00,#00,#42,#00
.l9974 equ $ + 6
	db #00,#00,#18,#00,#00,#00,#00,#00
.l997d equ $ + 7
.l997b equ $ + 5
.l9979 equ $ + 3
.l9977 equ $ + 1
.l9976
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9985 equ $ + 7
.l9984 equ $ + 6
.l9983 equ $ + 5
.l9982 equ $ + 4
.l9981 equ $ + 3
.l9980 equ $ + 2
.l997f equ $ + 1
	db #00,#00,#00,#00,#00,#01,#00,#00
.l998c equ $ + 6
.l998a equ $ + 4
.l9989 equ $ + 3
.l9988 equ $ + 2
.l9987 equ $ + 1
.l9986
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9995 equ $ + 7
.l9993 equ $ + 5
.l9992 equ $ + 4
.l9990 equ $ + 2
.l998e
	db #00,#00,#00,#00,#00,#12,#fd,#f2
.l999d equ $ + 7
.l999c equ $ + 6
.l999a equ $ + 4
.l9999 equ $ + 3
.l9997 equ $ + 1
	db #fe,#00,#00,#00,#00,#00,#00,#00
.l99a4 equ $ + 6
.l99a3 equ $ + 5
.l99a2 equ $ + 4
.l99a0 equ $ + 2
.l999f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l99cc equ $ + 6
.l99ca equ $ + 4
	db #00,#00,#00,#00,#c1,#e4,#31,#00
.l99d5 equ $ + 7
.l99d4 equ $ + 6
	db #24,#00,#21,#00,#17,#00,#11,#00
.l99dc equ $ + 6
.l99db equ $ + 5
.l99da equ $ + 4
.l99d9 equ $ + 3
.l99d8 equ $ + 2
.l99d7 equ $ + 1
	db #00,#00,#07,#00,#17,#00,#00,#00
.l99e3 equ $ + 5
.l99e2 equ $ + 4
	db #00,#00,#00,#00,#00,#02,#02,#02
	db #22,#02,#02,#22,#22,#02,#01,#21
	db #01,#21,#11,#01,#01,#01,#01,#01
	db #21,#01,#11,#29,#11,#11,#01,#21
	db #00,#10,#00,#20,#10,#00,#00,#00
.l9a0d equ $ + 7
.l9a0a equ $ + 4
.l9a09 equ $ + 3
.l9a08 equ $ + 2
.l9a07 equ $ + 1
.l9a06
	db #00,#00,#00,#2d,#30,#30,#2d,#98
	db #fe,#02,#da,#33,#58,#c7,#00,#00
	db #fe,#00,#00,#00
.l9a1b equ $ + 1
;
.play_music
.l9a1a		; play music
;
	ld de,l9c0c
	ld a,(de)
	or a
	jr nz,l9a2f
	ld hl,l9bc0	; reset music
	ld (l9a1b),hl
	ld a,(l9982)
	inc a
	ld (l9982),a
	ret
.l9a2f
	and #03
	inc a
	ld iy,l9b6b
	ld bc,#0009
.l9a39
	add iy,bc
	dec a
	jr nz,l9a39
	ld a,(de)
	and #3c
	srl a
	srl a
	inc a
	ld hl,l9b96
	ld bc,#0002
.l9a4c
	add hl,bc
	dec a
	jr nz,l9a4c
	ld b,(hl)
	ld (iy+#03),b
	inc hl
	ld b,(hl)
	ld (iy+#04),b
	ld a,(de)
	and #c0
	rlca
	rlca
	inc a
	ld hl,l9bb6
	ld bc,#0002
.l9a65
	add hl,bc
	dec a
	jr nz,l9a65
	ld b,(hl)
	ld (iy+#07),b
	inc hl
	ld b,(hl)
	ld (iy+#08),b
	push de
	push iy
	pop hl
	call #bcaa
	pop de
	jr nc,l9a81
	inc de
	ld (l9a1b),de
.l9a81
	ret
.l9a89 equ $ + 7
.l9a82
	db #02,#03,#05,#01,#0f,#ff,#0a,#01
.l9a8d equ $ + 3
	db #0c,#ff,#02,#02,#04,#fe,#04,#0d
.l9a94 equ $ + 2
	db #04,#07,#02,#04,#02,#04,#0d,#fc
.l9a9b equ $ + 1
	db #06,#05,#02,#fe,#01,#04,#02,#01
	db #02,#fe,#01,#01,#00,#3e,#1e,#ff
.l9aaf equ $ + 5
.l9aab equ $ + 1
	db #02,#01,#46,#01,#01,#03,#0d,#0a
.l9ab9 equ $ + 7
	db #02,#08,#f3,#09,#03,#17,#0b,#05
	db #12,#01,#02,#03,#fc,#01,#0c,#01
.l9ac9 equ $ + 7
	db #02,#03,#fc,#01,#21,#01,#02,#87
	db #01,#0d,#de,#01,#00,#00,#18,#00
.l9ad2
	db #81,#02,#0e,#65,#00,#00,#0c,#00
.l9adb equ $ + 1
	db #00,#81,#02,#0e,#5f,#00,#00,#0c
.l9ae4 equ $ + 2
	db #00,#00,#81,#02,#00,#6f,#00,#00
.l9aed equ $ + 3
	db #0c,#00,#00,#82,#01,#00,#de,#01
.l9af6 equ $ + 4
	db #00,#00,#00,#00,#87,#02,#00,#7e
.l9aff equ $ + 5
	db #02,#00,#00,#00,#00,#86,#01,#0e
.l9b08 equ $ + 6
	db #63,#00,#00,#00,#00,#00,#86,#01
.l9b11 equ $ + 7
	db #0d,#7b,#00,#00,#00,#00,#00,#86
	db #01,#0d,#5d,#00,#19,#00,#00,#00
.l9b1a
	db #86,#01,#0d,#3b,#01,#00,#00,#00
.l9b23 equ $ + 1
	db #00,#86,#01,#0b,#10,#00,#00,#00
.l9b2c equ $ + 2
	db #00,#00,#86,#01,#09,#1b,#00,#00
.l9b35 equ $ + 3
	db #00,#00,#00,#86,#01,#0b,#2c,#00
.l9b3e equ $ + 4
	db #01,#00,#00,#00,#86,#01,#00,#fd
.l9b47 equ $ + 5
	db #00,#0b,#00,#00,#00,#82,#01,#0c
	db #3f,#01,#00,#00,#00,#00,#84,#01
.l9b59 equ $ + 7
	db #0a,#00,#00,#00,#00,#00,#00,#86
	db #01,#0a,#0e,#00,#07,#00,#00,#00
.l9b62
	db #86,#01,#0e,#1b,#00,#03,#00,#00
.l9b6b equ $ + 1
	db #00,#86,#01,#0e,#2c,#00,#00,#00
.l9b74 equ $ + 2
	db #00,#00,#01,#01,#0c,#cc,#02,#00
	db #00,#60,#00,#01,#01,#0d,#cc,#02
	db #00,#00,#60,#00,#02,#01,#00,#59
	db #00,#00,#00,#18,#00,#04,#02,#00
.l9b96 equ $ + 4
	db #cc,#02,#0e,#00,#18,#00,#cc,#02
	db #7e,#02,#18,#02,#de,#01,#92,#01
	db #66,#01,#3f,#01,#0c,#01,#ef,#00
	db #c9,#00,#b3,#00,#9f,#00,#86,#00
.l9bb6 equ $ + 4
	db #77,#00,#64,#00,#59,#00,#0c,#00
.l9bc0 equ $ + 6
	db #18,#00,#30,#00,#60,#00,#c0,#76
	db #83,#42,#46,#83,#52,#c1,#c6,#83
	db #73,#43,#c0,#7e,#83,#42,#46,#83
	db #52,#c1,#c6,#83,#73,#43,#c0,#7e
	db #83,#42,#46,#83,#52,#c1,#86,#83
	db #82,#83,#60,#4e,#43,#9c,#8a,#83
	db #54,#c2,#43,#e9,#83,#43,#7a,#43
	db #c0,#76,#83,#42,#46,#83,#52,#c1
	db #c6,#83,#73,#43,#80,#7e,#83,#42
	db #99,#46,#83,#52,#c1,#c6,#83,#73
	db #43,#c0
.l9c0c
	db #7e,#83,#42,#46,#83,#52,#c1,#86
	db #83,#82,#83,#60,#4e,#43,#9c,#8a
	db #83,#54,#c2,#43,#e9,#83,#43,#7a
	db #43,#c0,#76,#83,#42,#46,#b7,#52
	db #f4,#c6,#83,#73,#43,#c0,#7e,#83
	db #42,#46,#b7,#52,#f4,#c6,#83,#73
	db #43,#c0,#7e,#83,#42,#46,#bf,#52
	db #fc,#86,#83,#82,#83,#60,#4e,#43
	db #9c,#8a,#83,#54,#c2,#43,#e9,#83
	db #43,#7a,#43,#c0,#7e,#83,#42,#46
	db #bf,#52,#f8,#c6,#83,#73,#43,#80
	db #7e,#83,#42,#74,#46,#bb,#78,#52
	db #b0,#c6,#83,#b4,#7b,#43,#80,#7a
	db #83,#42,#78,#46,#bf,#fc,#52,#86
	db #83,#a8,#42,#43,#54,#43,#4e,#43
	db #9c,#8a,#83,#54,#c2,#43,#e9,#83
	db #43,#7a,#43,#e8,#fe,#83,#bf,#f0
	db #86,#83,#42,#43,#54,#43,#60,#4e
	db #43,#9c,#8a,#83,#54,#c2,#43,#e9
	db #83,#43,#7a,#43,#e8,#fe,#83,#bf
	db #ec,#86,#83,#82,#83,#54,#42,#43
	db #58,#46,#43,#5c,#4a,#43,#64,#ce
	db #03,#03,#f4,#a7,#ab,#7a,#60,#76
	db #43,#5c,#72,#43,#58,#6e,#43,#54
	db #ea,#43,#e9,#83,#43,#7a,#43,#60
	db #4e,#43,#9c,#8a,#83,#54,#c2,#43
	db #e9,#83,#43,#7a,#43,#e8,#7e,#83
	db #42,#46,#bf,#52,#f0,#86,#83,#82
	db #83,#60,#4e,#43,#5c,#4a,#43,#58
	db #46,#43,#54,#c2,#43,#83,#28,#24
	db #20,#1c,#43,#18,#20,#6a,#43,#18
.l9d06 equ $ + 2
	db #1c,#00,#a4,#5a,#45,#50,#50,#45
.l9d0f equ $ + 3
	db #4c,#49,#4e,#20,#47,#41,#4d,#45
.l9d18 equ $ + 4
	db #53,#f4,#38,#38,#20,#2d,#44,#49
	db #46,#46,#49,#43,#55,#4c,#54,#59
.l9d26 equ $ + 2
.l9d25 equ $ + 1
	db #2d,#2d,#2d,#4d,#41,#53,#54,#45
	db #52,#2d,#2d,#20,#2d,#2d,#45,#58
	db #50,#45,#52,#54,#2d,#2d,#20,#4e
	db #45,#41,#52,#20,#45,#58,#50,#45
	db #52,#54,#53,#54,#55,#44,#45,#4e
	db #54,#20,#4f,#4e,#45,#42,#45,#47
	db #49,#4e,#4e,#45,#52,#20,#4f,#4b
.l9d5c
	db #0e,#01,#96,#9a,#9a,#9a,#9a,#9a
	db #9a,#9a,#9a,#9a,#9a,#9a,#9a,#9a
.l9d6f equ $ + 3
	db #9c,#95,#00,#0e,#01,#95,#95,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
.l9d83 equ $ + 7
	db #09,#09,#09,#09,#95,#95,#00,#d6
	db #0a,#08,#8f,#8d,#0b,#08,#8f,#0f
.l9d8e equ $ + 2
	db #02,#00,#08,#93,#9a,#9a,#9a,#9a
	db #9a,#9a,#9a,#9a,#9a,#9a,#9a,#9a
	db #9a,#99,#00,#0d,#0a,#0a,#09,#00
.l9da7 equ $ + 3
	db #08,#20,#00,#ff,#0f,#03,#08,#0a
	db #fe,#0f,#02,#08,#16,#01,#fd,#0b
.l9db5 equ $ + 1
	db #00,#ff,#0f,#03,#08,#0a,#fe,#0b
.l9dbf equ $ + 3
	db #0f,#02,#00,#20,#2d,#48,#49,#2d
.l9dca equ $ + 6
	db #4d,#41,#5a,#49,#45,#2d,#2d,#54
.l9dcf equ $ + 3
	db #48,#45,#2d,#41,#4d,#41,#5a,#45
	db #52,#53,#2d,#31,#73,#74,#32,#6e
	db #64,#33,#72,#64,#34,#74,#68,#35
.l9de6 equ $ + 2
	db #74,#68,#44,#65,#6e,#20,#33,#31
	db #30,#30,#30,#46,#61,#6e,#20,#32
	db #34,#30,#30,#30,#4a,#69,#6d,#20
	db #32,#31,#30,#30,#30,#5a,#65,#65
	db #20,#31,#37,#30,#30,#30,#53,#69
.l9e12 equ $ + 6
	db #64,#20,#31,#31,#30,#30,#30,#00
.l9e1b equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9e1c
	db #53,#50,#41,#43,#45,#3d,#70,#61
.l9e27 equ $ + 3
	db #75,#73,#65,#46,#49,#52,#45,#3d
.l9e32 equ $ + 6
	db #67,#6f,#67,#6f,#67,#6f,#4a,#4f
.l9e38 equ $ + 4
.l9e35 equ $ + 1
	db #59,#53,#54,#4b,#4e,#45,#53,#57
.l9e43 equ $ + 7
.l9e3c
	db #2d,#4e,#4f,#52,#54,#48,#2d,#20
.l9e4a equ $ + 6
	db #2d,#45,#41,#53,#54,#2d,#2d,#53
.l9e51 equ $ + 5
	db #4f,#55,#54,#48,#2d,#20,#2d,#57
.l9e58 equ $ + 4
	db #45,#53,#54,#2d,#48,#41,#52,#44
.l9e63 equ $ + 7
	db #2d,#42,#4f,#4e,#55,#53,#2d,#43
.l9e69 equ $ + 5
	db #6c,#65,#61,#72,#3f,#41,#6c,#69
	db #65,#6e,#20,#48,#65,#72,#65,#20
.l9e74
	db #20,#2e,#2e,#75,#73,#65,#20,#55
.l9e7f equ $ + 3
	db #50,#21,#20,#f3,#20,#50,#41,#55
.l9e8a equ $ + 6
	db #53,#45,#44,#20,#f2,#20,#2d,#57
.l9e90 equ $ + 4
	db #49,#50,#45,#2d,#2d,#47,#41,#4d
.l9e9b equ $ + 7
	db #45,#2d,#4f,#56,#45,#52,#2d,#20
.l9ea1 equ $ + 5
	db #51,#55,#49,#54,#3f,#20,#59,#2f
.l9ea5 equ $ + 1
	db #4e,#20,#20,#52,#3f,#20,#59,#2f
.l9eaf equ $ + 3
	db #4e,#20,#20,#20,#51,#3d,#51,#55
.l9eb9 equ $ + 5
	db #49,#54,#20,#20,#20,#20,#52,#3d
	db #52,#45,#53,#54,#41,#52,#54,#20
	db #48,#45,#52,#45,#00
;
.music_info
	db "Mazie (1988)(Zeppelin Games)()()",0
	db "",0

	read "music_end.asm"
