; Music of Pacific (1986)(Ere Informatique)()()
; Ripped by Megachur the 28/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PACIFIC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7000
FIRST_THEME				equ 0
SECOND_THEME			equ 1
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

.l7002 equ $ + 2
.l7000
	db #00,#02,#00
	ld hl,(l7000)
	ld a,(l7002)
	ld d,a
	ld e,#00
	ld b,#08
	ld c,#00
	sub a
.l7011
	inc b
	sla d
	jr nc,l7011
.l7016
	rr d
	rr e
	sbc hl,de
	jr nc,l701f
	add hl,de
.l701f
	ccf
	rl c
	rla
	djnz l7016
	ld b,a
	ret
.l7028 equ $ + 1
.l7027
	db #0e,#02,#00
.l702a
	ld a,(l7027)
	ld e,a
	ld d,#00
	ld a,(l7028)
	ld c,a
	ld b,#08
	ld hl,#0000
.l7039
	srl c
	jr nc,l703e
	add hl,de
.l703e
	sla e
	rl d
	djnz l7039
	ld b,h
	ld c,l
	ret
	nop
.l7048
	ld b,#ff
.l704a
	ld ix,#0000
	djnz l704a
	ret
.l7051
	ld b,#40
.l7053
	push bc
	call l7048
	pop bc
	djnz l7053
	ret
	ld b,#0a
.l705d
	push bc
	call l7051
	pop bc
	djnz l705d
	ret
.l706c equ $ + 7
.l7069 equ $ + 4
.l7068 equ $ + 3
.l7066 equ $ + 1
.l7065
	db #01,#01,#00,#38,#02,#00,#04,#0e
.l7072 equ $ + 5
.l7071 equ $ + 4
.l706f equ $ + 2
.l706e equ $ + 1
	db #00,#02,#02,#00,#cc,#02,#00,#07
.l707b equ $ + 6
.l707a equ $ + 5
.l7078 equ $ + 3
.l7077 equ $ + 2
.l7075
	db #0e,#00,#04,#03,#00,#66,#01,#00
.l7082 equ $ + 5
.l7081 equ $ + 4
.l7080 equ $ + 3
.l707e equ $ + 1
	db #07,#1c,#00,#01,#01,#02,#00
.l7088 equ $ + 4
.l7086 equ $ + 2
.l7084
	dw l71e3,l724c,l737a
.l708a
	ld a,(l7080)
	dec a
	ld (l7080),a
	cp #00
	jp nz,l7048
	ld hl,(l7084)
	ld a,(hl)
	ld (l7080),a
	ld (l7028),a
	push hl
	call l702a
	pop hl
	ld (l706c),bc
	inc hl
	ld a,(hl)
	ld (l7068),a
	inc hl
	ld a,(hl)
	ld (l7069),a
	inc hl
	ld a,h
.l70b6 equ $ + 1
	cp #71
	jr c,l70c1
	ld a,l
.l70bb equ $ + 1
	cp #ec
	jr c,l70c1
.l70bf equ $ + 1
	ld hl,l71e0
.l70c1
	ld (l7084),hl
	ld hl,l7065
	call #bcaa
	ret
.l70cb
	call l708a
	call l70e3
	call l7148
	ret
	add hl,bc
	call #bb1e
	ret nz
	nop
	nop
	nop
	call l7051
	jp l70cb
.l70e3
	ld a,(l7081)
	dec a
	ld (l7081),a
	cp #00
	jp nz,l7048
.l70f0 equ $ + 1
.l70ef
	call l7190
	ld a,(hl)
	ld (l7081),a
	ld (l7028),a
	push hl
	call l702a
	pop hl
	ld (l7075),bc
	inc hl
	ld a,(hl)
	ld (l7071),a
	inc hl
	ld a,(hl)
	ld (l7072),a
	inc hl
	ld a,h
.l710f equ $ + 1
	cp #72
	jr c,l711a
	ld a,l
.l7114 equ $ + 1
	cp #62
	jr c,l711a
.l7118 equ $ + 1
.l7117
	call l71ca
.l711a
	ld (l7086),hl
	ld hl,l706e
	call #bcaa
	ret
.l7125 equ $ + 1
.l7124
	ld hl,l71dd
	ld (l7084),hl
.l712b equ $ + 1
	ld hl,l71ed
	ld (l7086),hl
.l7131 equ $ + 1
	ld hl,l7263
	ld (l7088),hl
	ld a,#01
	ld (l7080),a
	ld (l7081),a
	ld (l7082),a
	nop
	jp l70cb
	db #00,#00,#00
.l7148
	ld a,(l7082)
	dec a
	ld (l7082),a
	cp #00
	jp nz,l7048
	ld hl,(l7088)
	ld a,(hl)
	ld (l7082),a
	ld (l7028),a
	push hl
	call l702a
	pop hl
	ld (l707e),bc
	inc hl
	ld a,(hl)
	ld (l707a),a
	inc hl
	ld a,(hl)
	ld (l707b),a
	inc hl
	ld a,h
.l7174 equ $ + 1
	cp #73
	jr c,l717f
	ld a,l
.l7179 equ $ + 1
	cp #9b
	jr c,l717f
.l717d equ $ + 1
	ld hl,l7263
.l717f
	ld (l7088),hl
	ld hl,l7077
	call #bcaa
	ret
.l718c equ $ + 3
.l718b equ $ + 2
	db #00,#00,#02,#04,#00,#00,#00
.l7190
	ld a,(l718c)
	dec a
	ld (l718c),a
	cp #00
	jr nz,l71c4
	ld a,(l718b)
	dec a
	ld (l718b),a
	cp #00
	jr nz,l71b9
	ld hl,(l7086)
	ld a,(hl)
	inc hl
	ld (l7086),hl
	ld (l718b),a
.l71b1
	ld a,#04
	ld (l718c),a
	ret
	db #00,#00
.l71b9
	ld hl,(l7086)
	ld bc,#000c
	sub a
	sbc hl,bc
	jr l71b1
.l71c4
	ld hl,(l7086)
	ret
	db #00,#00
.l71ca
	ld a,(l718b)
	cp #01
	ret nz
.l71d1 equ $ + 1
	ld hl,l71ed
	ld a,#01
	ld (l718b),a
	ld (l718c),a
	ret
.l71e3 equ $ + 7
.l71e0 equ $ + 4
.l71dd equ $ + 1
	db #00,#40,#00,#00,#01,#38,#02,#01
	db #f6,#00,#01,#1e,#00,#01,#1e,#00
.l71ed equ $ + 1
	db #02,#08,#01,#00,#00,#01,#12,#00
	db #01,#00,#00,#01,#00,#00,#08,#01
	db #38,#02,#01,#ef,#00,#01,#1c,#01
	db #01,#ef,#00,#04,#01,#aa,#01,#01
	db #b3,#00,#01,#d5,#00,#01,#b3,#00
	db #04,#01,#38,#02,#01,#ef,#00,#01
	db #1c,#01,#01,#ef,#00,#02,#01,#cc
	db #02,#01,#1c,#01,#01,#ef,#00,#01
	db #1c,#01,#02,#01,#f6,#02,#01,#3f
	db #01,#01,#fd,#00,#01,#3f,#01,#04
	db #01,#38,#02,#01,#ef,#00,#01,#1c
	db #01,#01,#ef,#00,#02,#01,#cc,#02
.l724c
	db #01,#1c,#01,#01,#ef,#00,#01,#1c
	db #01,#02,#01,#f6,#02,#01,#3f,#01
.l7263 equ $ + 7
	db #01,#fd,#00,#01,#3f,#01,#01,#02
	db #1c,#01,#01,#1c,#01,#01,#1c,#01
	db #01,#be,#00,#02,#ef,#00,#02,#1c
	db #01,#02,#1c,#01,#01,#1c,#01,#01
	db #3f,#01,#01,#7b,#01,#02,#3f,#01
	db #02,#1c,#01,#01,#1c,#01,#01,#1c
	db #01,#01,#be,#00,#02,#ef,#00,#02
	db #1c,#01,#02,#1c,#01,#01,#1c,#01
	db #04,#3f,#01,#02,#1c,#01,#01,#1c
	db #01,#01,#1c,#01,#01,#be,#00,#02
	db #ef,#00,#02,#1c,#01,#02,#1c,#01
	db #01,#1c,#01,#01,#3f,#01,#01,#7b
	db #01,#02,#3f,#01,#02,#1c,#01,#01
	db #1c,#01,#01,#1c,#01,#01,#be,#00
	db #02,#ef,#00,#02,#1c,#01,#01,#1c
	db #01,#01,#ef,#00,#01,#d5,#00,#01
	db #be,#00,#01,#b3,#00,#02,#be,#00
	db #02,#d5,#00,#01,#d5,#00,#01,#d5
	db #00,#01,#8e,#00,#02,#b3,#00,#02
	db #d5,#00,#02,#d5,#00,#01,#d5,#00
	db #01,#ef,#00,#01,#1c,#01,#02,#ef
	db #00,#02,#1c,#01,#01,#1c,#01,#01
	db #1c,#01,#01,#be,#00,#02,#ef,#00
	db #02,#1c,#01,#01,#1c,#01,#01,#ef
	db #00,#01,#be,#00,#01,#b3,#00,#01
	db #be,#00,#01,#ef,#00,#01,#1c,#01
	db #02,#66,#01,#01,#ef,#00,#02,#b3
	db #00,#01,#ef,#00,#01,#b3,#00,#01
	db #ef,#00,#02,#7b,#01,#01,#fd,#00
	db #02,#be,#00,#01,#fd,#00,#01,#be
	db #00,#01,#fd,#00,#02,#1c,#01,#01
	db #1c,#01,#01,#1c,#01,#01,#be,#00
	db #02,#ef,#00,#02,#1c,#01,#01,#1c
	db #01,#01,#ef,#00,#01,#be,#00,#01
	db #b3,#00,#01,#be,#00,#01,#ef,#00
.l737a equ $ + 6
	db #01,#1c,#01,#02,#66,#01,#01,#ef
	db #00,#02,#b3,#00,#01,#ef,#00,#01
	db #b3,#00,#01,#ef,#00,#02,#7b,#01
	db #01,#fd,#00,#02,#be,#00,#01,#fd
	db #00,#01,#be,#00,#01,#fd,#00,#00
;
.init_music2
.l739c
;
	ld hl,l71dd
	ld (l7125),hl
	ld hl,l71ed
	ld (l712b),hl
	ld hl,l7263
	ld (l7131),hl
	ld a,#01
	ld (l718b),a
	ld (l718c),a
	ld a,#71
	ld (l70b6),a
	ld a,#ec
	ld (l70bb),a
	ld hl,l71e0
	ld (l70bf),hl
	ld a,#cd
	ld (l70ef),a
	ld hl,l7190
	ld (l70f0),hl
	ld a,#72
	ld (l710f),a
	ld a,#62
	ld (l7114),a
	ld a,#cd
	ld (l7117),a
	ld hl,l71ca
	ld (l7118),hl
	ld hl,l71ed
	ld (l71d1),hl
	ld a,#73
	ld (l7174),a
	ld a,#9b
	ld (l7179),a
	ld hl,l7263
	ld (l717d),hl
	ld a,#01
	ld (l7066),a
	ld a,#02
	ld (l706f),a
	ld a,#03
	ld (l7078),a
	nop
	nop
	nop
	jp l7124
.l7411
	db #01,#7b,#01,#01,#3f,#01,#01,#ef
	db #00,#01,#7b,#01,#01,#3f,#01,#01
.l7423 equ $ + 2
	db #ef,#00,#01,#7b,#01,#01,#3f,#01
	db #01,#ef,#00,#01,#7b,#01,#01,#3f
	db #01,#01,#ef,#00,#01,#7b,#01,#01
	db #1c,#01,#01,#ef,#00,#01,#7b,#01
	db #01,#1c,#01,#01,#ef,#00,#01,#7b
	db #01,#01,#1c,#01,#01,#ef,#00,#01
	db #7b,#01,#01,#1c,#01,#01,#ef,#00
	db #01,#66,#01,#01,#1c,#01,#01,#ef
	db #00,#01,#66,#01,#01,#1c,#01,#01
	db #ef,#00,#01,#66,#01,#01,#1c,#01
	db #01,#ef,#00,#01,#66,#01,#01,#1c
	db #01,#01,#ef,#00,#01,#3f,#01,#01
	db #fd,#00,#01,#d5,#00,#01,#3f,#01
	db #01,#fd,#00,#01,#d5,#00,#01,#3f
	db #01,#01,#fd,#00,#01,#d5,#00,#01
	db #3f,#01,#01,#fd,#00,#01,#d5,#00
.l74a5 equ $ + 4
.l74a2 equ $ + 1
	db #01,#90,#00,#00,#02,#9f,#00,#02
	db #be,#00,#02,#de,#01,#02,#9f,#00
	db #02,#be,#00,#02,#de,#01,#02,#ef
	db #00,#02,#8e,#00,#02,#1c,#01,#02
	db #ef,#00,#02,#8e,#00,#02,#1c,#01
	db #02,#8e,#00,#02,#b3,#00,#02,#66
	db #01,#02,#8e,#00,#02,#b3,#00,#02
	db #66,#01,#02,#fd,#00,#02,#9f,#00
	db #02,#3f,#01,#02,#fd,#00,#02,#9f
.l74ee equ $ + 5
	db #00,#02,#3f,#01,#01,#2b,#00,#00
.l74f1
	db #01,#50,#00,#01,#47,#00,#01,#3f
	db #00,#01,#3c,#00,#01,#35,#00,#03
	db #2f,#00,#03,#2f,#00,#03,#2f,#00
	db #02,#2f,#00,#01,#35,#00,#01,#3c
	db #00,#01,#3f,#00,#02,#47,#00,#07
	db #00,#00,#01,#2f,#00,#01,#2d,#00
	db #08,#47,#00,#01,#47,#00,#01,#35
	db #00,#01,#3c,#00,#06,#35,#00,#01
	db #00,#00,#01,#50,#00,#01,#47,#00
	db #01,#3f,#00,#01,#3c,#00,#01,#35
	db #00,#03,#2f,#00,#03,#2f,#00,#03
	db #2f,#00,#02,#2f,#00,#01,#35,#00
	db #01,#3c,#00,#01,#3f,#00,#02,#47
	db #00,#07,#00,#00,#01,#2f,#00,#01
	db #2d,#00,#08,#47,#00,#01,#47,#00
	db #01,#35,#00,#01,#3c,#00,#06,#35
	db #00,#01,#00,#00,#01,#50,#00,#01
	db #47,#00,#01,#3f,#00,#01,#3c,#00
	db #01,#35,#00,#03,#28,#00,#03,#28
	db #00,#03,#28,#00,#01,#28,#00,#01
	db #2f,#00,#01,#28,#00,#01,#24,#00
	db #09,#2f,#00,#01,#35,#00,#01,#2f
	db #00,#09,#2d,#00,#01,#2d,#00,#01
	db #35,#00,#01,#2d,#00,#06,#28,#00
	db #01,#00,#00,#01,#50,#00,#01,#47
	db #00,#01,#3f,#00,#01,#3c,#00,#01
	db #35,#00,#03,#28,#00,#03,#28,#00
	db #03,#28,#00,#01,#28,#00,#01,#2f
	db #00,#01,#28,#00,#01,#24,#00,#09
	db #2f,#00,#01,#35,#00,#01,#2f,#00
	db #09,#2d,#00,#01,#2d,#00,#01,#35
	db #00,#01,#2d,#00,#07,#28,#00,#01
	db #ef,#00,#01,#be,#00,#01,#b3,#00
	db #01,#be,#00,#01,#ef,#00,#01,#1c
	db #01,#02,#66,#01,#01,#ef,#00,#02
	db #b3,#00,#01,#ef,#00,#01,#b3,#00
	db #01,#ef,#00,#02,#7b,#01,#01,#fd
	db #00,#02,#be,#00,#01,#fd,#00,#01
.l7626 equ $ + 5
	db #be,#00,#01,#fd,#00,#00,#00
;
.init_music1
.l7628
;
	ld hl,l7411
	ld (l7125),hl
	ld hl,l74a2
	ld (l712b),hl
	ld hl,l74ee
	ld (l7131),hl
	ld a,#01
	ld (l718b),a
	ld (l718c),a
	ld a,#74
	ld (l70b6),a
	ld a,#a1
	ld (l70bb),a
	ld hl,l7411
	ld (l70bf),hl
	ld a,#2a
	ld (l70ef),a
	ld hl,l7086
	ld (l70f0),hl
	ld a,#74
	ld (l710f),a
	ld a,#ed
	ld (l7114),a
	ld a,#21
	ld (l7117),a
	ld hl,l74a5
	ld (l7118),hl
	ld hl,l74a5
	ld (l71d1),hl
	ld a,#75
	ld (l7174),a
	ld a,#f0
	ld (l7179),a
	ld hl,l74f1
	ld (l717d),hl
	ld a,#04
	ld (l7066),a
	ld a,#05
.l768f
	ld (l706f),a
	ld a,#06
	ld (l7078),a
	nop
	nop
	nop
	jp l7124
.l76a0 equ $ + 3
	db #00,#00,#00,#02,#01,#08,#02,#04
.l76a7 equ $ + 2
	db #fe,#02,#02,#01,#06,#08,#03,#fd
.l76ae equ $ + 1
	db #03,#02,#01,#0a,#02,#05,#fe,#05
.l76bc equ $ + 7
.l76b5
	db #02,#02,#05,#01,#06,#ff,#02,#02
.l76c3 equ $ + 6
	db #03,#02,#01,#0a,#ff,#02,#02,#02
.l76ca equ $ + 5
	db #03,#01,#0a,#ff,#02,#01,#19,#e2
.l76ce equ $ + 1
	db #01,#01,#14,#1e,#01,#00,#00,#00
	db #00,#00,#00,#00
;
.init_music_env
.l76d9
;
	ld a,#01
	ld hl,l76a0
	call #bcbc
	ld a,#02
	ld hl,l76a7
	call #bcbc
	ld a,#03
	ld hl,l76ae
	call #bcbc
	ld a,#04
	ld hl,l76b5
	call #bcbc
	ld a,#05
	ld hl,l76bc
	call #bcbc
	ld a,#06
	ld hl,l76c3
	call #bcbc
	ld a,#01
	ld hl,l76ca
	call #bcbf
	ld a,#02
	ld hl,l76ce
	call #bcbf
	ld a,#07
	ld hl,l775d
	call #bcbc
	ld a,#08
	ld hl,l7900
	call #bcbc
	nop
	nop
	nop
	jp l7423
.l7730 equ $ + 1
	db #00,#01,#00,#01,#f5,#01,#00,#07
.l7739 equ $ + 2
	db #0f,#00,#02,#03,#01,#90,#01,#00
.l7742 equ $ + 3
	db #02,#08,#00,#01,#03,#02,#0a,#00
	db #00,#07,#08,#00
	ld hl,l7730
	jp #bcaa
.l7751
	ld hl,l7739
	jp #bcaa
	ld hl,l7742
	jp #bcaa
.l7761 equ $ + 4
.l775d
	db #01,#0f,#ff,#08,#04,#07,#00,#f4
.l7766 equ $ + 1
	db #01,#1e,#0f,#78,#00
.l776a
	ld a,#04
	ld (l7761),a
	ld a,#1e
	ld (l7766),a
	ld hl,l7761
	jp #bcaa
	ld a,#02
	ld (l7761),a
	ld a,#14
	ld (l7766),a
	ld hl,l7761
	jp #bcaa
	ld a,#01
	ld (l7761),a
	ld a,#0a
	ld (l7766),a
	ld hl,l7761
	jp #bcaa
.l77a1 equ $ + 7
.l779f equ $ + 5
.l779d equ $ + 3
.l779b equ $ + 1
	db #00,#ee,#cd,#ee,#cd,#a5,#2c,#0b
.l77a8 equ $ + 6
.l77a6 equ $ + 4
.l77a5 equ $ + 3
.l77a4 equ $ + 2
.l77a3 equ $ + 1
.l77a2
	db #0b,#00,#0b,#00,#a6,#2c,#00,#00
	db #00,#00
.l77ac
	call lad00
	ld (l779d),hl
	ld (l779f),de
	ld (l77a3),bc
	ld (l77a1),bc
	ld a,(de)
	ld (l77a8),a
	inc de
	ld (l77a6),de
	ex de,hl
	ld bc,(l77a8)
	add hl,bc
	ex de,hl
.l77ce
	ld bc,(l77a8)
	ld a,c
	cp #00
	jr z,l77df
	ld a,(de)
	ld hl,(l77a6)
	cpir
	jr z,l77e7
.l77df
	ld a,(de)
	ld hl,(l779d)
	ld b,#01
	jr l77f3
.l77e7
	ld (l77a5),a
	ld hl,(l779d)
	inc de
	ld a,(de)
	ld b,a
.l77f0
	ld a,(l77a5)
.l77f3
	ld c,(hl)
	push bc
	call l782c
	call l7859
	pop bc
	ld (l779d),hl
	ld a,(l77a4)
	dec a
	ld (l77a4),a
	cp #00
	jr nz,l7824
	ld a,(l77a2)
	ld (l77a4),a
	ld hl,(l779b)
	inc hl
	ld (l779b),hl
	ld (l779d),hl
	ld a,(l77a3)
	dec a
	ld (l77a3),a
	cp #00
	ret z
.l7824
	djnz l77f0
	inc de
	jp l77ce
	nop
	nop
.l782c
	cp #00
	ret z
	push de
	push af
	and #55
	cp #00
	jr nz,l783a
	ld a,c
	and #55
.l783a
	ld e,a
	pop af
	and #aa
	cp #00
	jr nz,l7845
	ld a,c
	and #aa
.l7845
	or e
	pop de
	ld (hl),a
	ret
	nop
	nop
	ld hl,#e5b2
	ld de,#8bae
	ld bc,#150c
	jp l77ac
	db #00,#00
.l7859
	ld a,h
	cp #f8
	jr c,l7864
	ld bc,#37b0
	sbc hl,bc
	ret
.l7864
	ld bc,#0800
	add hl,bc
	ret
	db #00
	ld (l7873),de
	ld (l7876),bc
.l7873 equ $ + 1
.l7872
	ld de,#2bd6
.l7876 equ $ + 1
	ld bc,#1409
	ld a,(hl)
	ld (l7886),a
	inc hl
	ld a,(hl)
	cp #00
	ret z
	ld (l7887),a
	push hl
.l7887 equ $ + 2
.l7886 equ $ + 1
	ld hl,#c600
	call l77ac
	pop hl
	inc hl
	jp l7872
	ld hl,l7896
	jp #bcaa
.l7896
	db #01,#01,#00,#de,#01,#00,#05,#08
	db #00
	ld hl,l78a5
	jp #bcaa
.l78a5
	ld bc,#0001
	db #ef,#00,#00,#05,#08,#00
	ld hl,l78b4
	jp #bcaa
.l78b4
	db #02,#00,#00,#47,#00,#00,#01,#07
	db #00,#04,#0a,#32,#01,#0a,#ce,#01
	db #0f,#f1,#01,#32,#50,#0a
	ld hl,l78d0
	jp #bcaa
.l78d0
	db #02,#00,#04,#c8,#00,#00,#05,#30
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#71,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7900
	db #00,#02,#05,#02,#05,#fe,#05,#02
.l790e equ $ + 6
	db #05,#00,#01,#08,#f6,#03,#02,#08
.l7915 equ $ + 5
.l7911 equ $ + 1
	db #03,#64,#00,#00,#07,#1e,#00,#00
	db #00,#00,#00,#00
.l791c
	ld (l790e),a
	ld (l7911),hl
	ld a,b
	ld (l7915),a
	jp l7945
	ld a,#01
	ld hl,#00c8
.l792e
	ld b,#1e
	jp l791c
	ld a,#02
	ld hl,#0064
	jp l792e
	ld a,#01
	ld hl,#012c
	ld b,#08
	jp l791c
.l7945
	ld hl,l790e
	jp #bcaa
.l794b
	ld a,h
	cp #c8
	jr nc,l7955
	ld bc,#37b0
	add hl,bc
	ret
.l7955
	db #01,#00,#08,#ed,#42,#c9,#0d,#00
	db #83,#00,#83,#00,#83,#00,#83,#03
	db #d8,#04,#04,#cc,#00,#46,#00,#03
.l7972 equ $ + 5
	db #d8,#00,#00,#00,#00,#23,#46,#23
	db #23,#7e,#80,#4f,#3a,#fa,#40,#b9
	db #28,#03,#d0,#00,#00,#4f,#3e,#06
	db #81,#b8,#d8,#2b,#46,#00,#00
	ld a,#20
	ld c,a
	ld a,(#40fb)
	add c
	cp b
	ret c
	inc hl
	inc hl
	ld c,(hl)
	ld a,b
	add c
	ld b,a
	ld a,(#40fb)
	cp b
	jr z,l79a2
	ret nc
.l79a2
	pop af
	scf
	ret
	nop
	nop
	call l7972
	sub a
	ret
	nop
	nop
	nop
	nop
.l79b0
	push bc
	ld b,#00
	push bc
	ex de,hl
	ldir
	ex de,hl
	pop bc
	sub a
	sbc hl,bc
	call l7859
	pop bc
	djnz l79b0
	ret
	ld b,#ff
.l79c5
	push bc
	ld hl,#c002
	call #bc05
	ld hl,#c000
	call #bc05
	pop bc
	djnz l79c5
	ret
	nop
	nop
	call #524e
	call #8505
	ret
	nop
	nop
	call #52c9
	call #8547
	ret
	call #5a06
	call #8550
	ret
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l79fa
	nop
.l79fb
	ld (l79fa),a
.l79fe
	push bc
	ld b,c
	ld a,(l79fa)
.l7a03
	ld (hl),a
	inc hl
	djnz l7a03
	sub a
	sbc hl,bc
	call l7859
	pop bc
	djnz l79fe
	ret
	nop
.l7a12
	ld hl,#c800
	ld bc,#b350
	ld a,#00
	call l79fb
	ld hl,#c6f5
	ld bc,#1727
	ld a,#00
	call l79fb
	jp l7626
	nop
	ld de,#2000
	ld bc,#160d
	jp l77ac
	ld de,#2119
	ld bc,#250d
	jp l77ac
	ld de,#2271
	ld bc,#2017
	jp l77ac
	ld de,#24f5
	ld bc,#0809
	jp l77ac
	ld de,#2548
	ld bc,#1408
	jp l77ac
	ld de,#25e4
	ld bc,#0e09
	jp l77ac
.l7a62
	ld de,#2659
	ld bc,#0f07
	jp l77ac
	ld de,#26b3
	ld bc,#1608
	jp l77ac
	ld de,#2747
	ld bc,#160b
	jp l77ac
	ld de,#27a6
	ld bc,#150b
	jp l77ac
	ld de,#2807
	ld bc,#0f0a
	jp l77ac
	ld de,#289a
	ld bc,#110b
	jp l77ac
	ld de,#293b
	ld bc,#1f08
	jp l77ac
	ld de,#2ac7
	ld bc,#1804
	jp l77ac
	ld de,#2b29
	ld bc,#170c
	jp l77ac
	ld de,#2bd6
	ld bc,#1409
	jp l77ac
	ld de,#2c5b
	ld bc,#0d07
	jp l77ac
	ld de,#2ca5
	ld bc,#0b0b
	jp l77ac
	ld de,#2d20
	ld bc,#1107
	jp l77ac
	ld de,#2d66
	ld bc,#0e05
	jp l77ac
	ld de,#2dab
	ld bc,#0f06
	jp l77ac
	ld de,#2dee
	ld bc,#1206
	jp l77ac
	ld de,#3291
	ld bc,#0f07
	jp l77ac
	ld de,#32ec
	ld bc,#1207
	jp l77ac
	ld de,#2f7c
	ld bc,#1406
	jp l77ac
	ld de,#3366
	ld bc,#1507
	jp l77ac
	ld de,#2e5a
	ld bc,#1308
	jp l77ac
	ld de,#2f20
	ld bc,#1106
	jp l77ac
	ld de,#2ef0
	ld bc,#1e02
	jp l77ac
	ld de,#2fe3
	ld bc,#0904
	jp l77ac
	ld de,#2a40
	ld bc,#0e0b
	jp l77ac
.l7b43
	ld hl,(#40f7)
	ld de,(#83ba)
	ld a,h
	cp d
	ret nz
	ld a,l
	cp e
	ret nz
	ret
	nop
	nop
	ld hl,(#8567)
.l7b56
	dec hl
	dec hl
	ld bc,#1408
.l7b5b
	push bc
	ld b,c
.l7b5d
	ld a,#3c
	and (hl)
	ld (hl),a
	nop
	nop
	inc hl
	djnz l7b5d
	sub a
	sbc hl,bc
	call l7859
	pop bc
	djnz l7b5b
	ld a,#ff
	ld (#855c),a
	ret
	nop
	nop
.l7b77
	ld a,(#855d)
	cp #03
	ret c
	cp #48
	ret nc
	jp l7b56
	nop
.l7b84
	call #48d5
	ld a,#21
.l7b89
	ld (#484e),a
	ret
	nop
	nop
.l7b8f
	call #48ce
	call #4d6f
	ld a,#c9
	jp l7b89
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret
	nop
	nop
.l7baa
	ld a,(#6ff0)
	set 0,a
	ld (#6ff0),a
.l7bb2
	call l776a
	call l7051
	call l7daa
	call #88ba
	call #88ba
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(#855c)
	set 0,a
	set 2,a
	nop
	ld (#855c),a
	ret
	nop
	nop
	ld a,(#855c)
	bit 0,a
	ret z
	bit 4,a
	ret z
	nop
	nop
	nop
	ld hl,(#40f7)
	ld (#83ba),hl
	call #8675
	ld a,#00
	ld (#855c),a
	ld (#83bc),a
	nop
	nop
	nop
	ret
	nop
	nop
	ld a,(#855c)
	bit 2,a
	jr z,l7c0a
	call l7b43
	call z,#889f
	ret
	nop
.l7c0a
	bit 0,a
	ret nz
	call l7b43
	jp nz,l7cee
	jp l7c74
	nop
	nop
.l7c18
	rst #38
	nop
	ld a,(#855c)
	bit 0,a
	ret nz
	call l7b43
	jr nz,l7c3e
	ld a,(#855c)
	bit 1,a
	jr z,l7c3e
	bit 7,a
	jp nz,l7baa
	set 7,a
	res 1,a
	ld hl,#0410
	ld (l7c18),hl
	ld (#855c),a
.l7c3e
	ld a,(#855c)
	bit 7,a
	jr z,l7c5a
	call #96bf
	nop
	nop
	nop
	ld hl,(l7c18)
	dec hl
	ld (l7c18),hl
	ld b,a
	ld a,h
	cp #00
	jp z,#88aa
	ld a,b
.l7c5a
	call l7b43
	ret nz
	ld a,(#855e)
.l7c62 equ $ + 1
	cp #af
	jr c,l7c6f
	ld a,(#83bb)
	inc a
	ld (#83bb),a
	jp #8607
.l7c6f
	jp #8d01
.l7c72
	nop
	nop
.l7c74
	ld a,(l7c62)
	ld b,a
	ld a,(#855e)
	cp b
	jp nc,l7d02
	jp #8d3c
	jp l7cd8
	ld b,a
	ld a,(#40fb)
	nop
	nop
	nop
	cp b
	jr nc,l7c95
	call l7b84
	jp l7cd8
.l7c95
	call l7b8f
	jp l7cd8
	nop
.l7c9c
	inc hl
	ld b,(hl)
	inc hl
	inc hl
	ld a,(hl)
	add b
	ld c,a
.l7ca5 equ $ + 2
	ld a,(#40fa)
	nop
	nop
	cp c
	jr z,l7cac
	ret nc
.l7cac
	ld c,a
	ld a,#06
	add c
	cp b
	ret c
	dec hl
	ld b,(hl)
	ld c,#22
	ld a,(#40fb)
	dec a
	ld d,a
	nop
	add c
	cp b
	ret c
	inc hl
	inc hl
	ld c,(hl)
	ld a,b
	add c
	ld b,a
	ld a,d
	nop
	nop
	cp b
	jr z,l7ccc
	ret nc
.l7ccc
	pop af
	scf
	ret
	nop
	nop
	call l7c9c
	sub a
	ret
	nop
	nop
.l7cd8
	ld a,(#40f9)
	res 0,a
	ld bc,(#882a)
	cp c
	ld (#882a),a
	jp nz,#8833
	jp #882b
	nop
	nop
	nop
.l7cee
	ret
	nop
	nop
	nop
	nop
	nop
	nop
	call l7d02
	ld hl,(#40f7)
	ld (#83ba),hl
	jp #85c3
	nop
.l7d02
	ld bc,(#855f)
	ld b,#00
	ld hl,(#4200)
	ld a,(#40f9)
	cp #02
	jr c,l7d1f
	ld c,#06
	add hl,bc
	ld (#8561),hl
	ld a,c
	ld hl,(#40fa)
	add l
	jr l7d2a
.l7d1f
	sub a
	sbc hl,bc
	ld (#8561),hl
	ld hl,(#40fa)
	ld a,l
	sub c
.l7d2a
	ld (#855d),a
	ld a,h
	ld (#855e),a
	call #8576
	ld hl,(#40f7)
	ld (#83ba),hl
	jp #85c3
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l7d45
	ld de,#3648
.l7d48
	push bc
	push hl
	ld bc,#0b04
	call l77ac
	pop hl
	pop bc
	ret
	nop
.l7d54
	ld hl,(#8561)
	ld bc,#0050
	sub a
	sbc hl,bc
	ld c,#03
	sub a
	sbc hl,bc
	call l7d45
	ld c,#07
	add hl,bc
	call l7d45
	ret
	nop
	nop
.l7d6e
	ld hl,(#8567)
	call l794b
	call l794b
	call l794b
	ld bc,#0007
	dec hl
	dec hl
	dec hl
	call l7d45
	add hl,bc
	call l7d45
	ret
	nop
	nop
.l7d8a
	call #8607
	ld hl,(#8561)
	ld de,#3676
	call l7d48
	ld bc,#0050
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	inc hl
	ld de,#3676
	call l7d48
	ret
	nop
	nop
.l7daa
	call l7d8a
	ld a,(#855e)
	cp #0a
.l7db3 equ $ + 1
	jp c,l7d6e
	cp #96
	jp nc,l7d54
	call l7d54
	call l7d6e
	ret
	nop
	nop
	ld hl,(#8567)
	call l794b
	call l794b
	jp l7b77
.l7dd2 equ $ + 3
.l7dd0 equ $ + 1
	db #00,#32,#8a,#01,#0b,#00
.l7dd5
	ld hl,(l7dd0)
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ret
.l7dde
	ld bc,#0005
	jp l7dd5
.l7de4
	ld bc,#000b
.l7de7
	ld de,(l7dd0)
	ex de,hl
	add hl,bc
	ld (hl),e
	inc hl
	ld (hl),d
	ex de,hl
	ret
.l7df2
	ld bc,#0005
	jp l7de7
.l7df8
	ld bc,#0001
	jp l7dd5
.l7dfe
	ld bc,#0001
	jp l7de7
.l7e04
	ld hl,(l7dd0)
	call #833a
	push bc
	inc hl
.l7e0c
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,b
	ld l,c
	pop bc
	ex de,hl
	ret
	nop
	nop
.l7e16
	ld hl,(l7dd0)
	call #833a
	push bc
	inc hl
	inc hl
	inc hl
	jp l7e0c
	nop
.l7e24
	call l7e04
.l7e27
	ld (#83b8),de
.l7e2b
	ld hl,(#8338)
	push bc
	ld b,#00
	dec c
	add hl,bc
	inc c
	ld b,c
.l7e35
	ld a,(de)
	push de
	ld e,a
	rra
	and #55
	ld d,a
	ld a,e
	rla
	and #aa
	or d
	pop de
	ld (hl),a
	dec hl
	inc de
	djnz l7e35
	ex de,hl
	sub a
	sbc hl,bc
	ex de,hl
	inc hl
	ldir
	pop bc
	djnz l7e2b
	ret
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l7e6c
	call l7e16
	jp l7e27
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l7e7a
	ld hl,(l7dd0)
	ld a,(hl)
	set 2,a
	ld (hl),a
	ret
.l7e82
	nop
	call l7dd2
	push hl
	call l7e04
	pop hl
	ld b,c
	nop
.l7e8d
	ld a,(hl)
	cp #00
	jp nz,l7e7a
	inc hl
	djnz l7e8d
	call l7dde
	call l7859
	call l7df2
	call l7dd2
	call l7859
	call l7de4
	call l7df8
	inc h
	call l7dfe
.l7eaf
	ld a,l
	bit 1,a
	jr z,l7ebd
	call l7e04
	call l79b0
	jp #8ae9
.l7ebd
	call l7e16
	call l79b0
	ret
	nop
	nop
.l7ec6
	ld hl,(l7dd0)
	ld a,(hl)
	res 2,a
	ld (hl),a
	ret
	nop
	call l7e04
	call #89a6
	ld b,c
	nop
.l7ed7
	ld a,(hl)
	cp #00
	jp nz,l7ec6
	inc hl
	djnz l7ed7
	call l7dde
	call l794b
	call l7df2
	call l7dd2
	call l794b
	call l7de4
	call l7df8
	dec h
	call l7dfe
	jp l7eaf
	nop
.l7efd
	ld hl,(l7dd0)
	ld a,(hl)
	res 3,a
	ld (hl),a
.l7f04
	call l7e24
	call l7e6c
	ret
	nop
	nop
	call l7e04
	dec hl
.l7f11
	ld a,(hl)
	cp #00
	jp nz,l7efd
	push bc
	call l7859
	pop bc
	djnz l7f11
	call l7dde
	dec hl
	call l7df2
	call l7dd2
	dec hl
	call l7de4
	call l7df8
	dec l
	call l7dfe
	jp l7eaf
	nop
	nop
	nop
.l7f39
	ld hl,(l7dd0)
	set 3,(hl)
	jp l7f04
	nop
	nop
	nop
	call l7e04
	push bc
	ld b,#00
	add hl,bc
	pop bc
	nop
	nop
	nop
.l7f4f
	ld a,(hl)
	cp #00
	jp nz,l7f39
	push bc
	call l7859
	pop bc
	djnz l7f4f
	call l7dde
	inc hl
	call l7df2
	call l7dd2
	inc hl
	call l7de4
	call l7df8
	inc l
	call l7dfe
	jp l7eaf
	db #00,#00,#00,#00,#1c,#85,#00,#08
	db #7a,#04,#0b,#b8,#d4,#2c,#a0,#00
	db #00,#22,#85,#00,#09,#3f,#04,#0b
	db #39,#fa,#58,#a0,#00,#00,#28,#85
	db #00,#1d,#5a,#04,#0b,#8d,#d3,#84
	db #a0,#00,#00,#2e,#85,#00,#44,#74
	db #04,#0b,#a4,#e4,#00,#a0,#34,#85
	db #00,#2d,#7c,#04,#0b,#dd,#e4,#00
	db #a0,#3a,#85,#00,#38,#3e,#04,#0b
	db #68,#f2,#2c,#a0,#40,#85,#00,#17
	db #59,#04,#0b,#87,#cb,#84,#a0,#00
	db #8a,#93,#00,#0e,#41,#07,#23,#8e
	db #c2,#98,#3d,#00,#00,#00,#00,#00
	db #0e,#87,#07,#23,#be,#fc,#c4,#3d
	db #00,#00,#00,#39,#87,#07,#23,#e9
	db #fc,#c4,#3d,#00

	call #82d7
	call l7a12
	call l8100
	call l80c7
	ret
	jp #8288
.l8000
	db #ff
.l8001
	ld l,a
.l8002
	rst #18
	ld b,#80
	ret
	add hl,bc
	add b
	call m,#f72a
	ld b,b
	ld a,(hl)
	ld (l8000),a
	dec h
	ld a,(hl)
	ld (l8001),a
	ret
.l8016
	ld hl,(l8000)
	ld a,l
	and h
	cp #00
	jp z,l8109
	nop
	nop
	rra
	push af
	call c,l8119
	pop af
	rra
	push af
	jp c,l8122
	pop af
	rra
	push af
	jp c,l8132
	pop af
	rra
	push af
	call c,l7db3
	pop af
	rra
	push af
	call c,l7ca5
	pop af
	rra
	push af
	call c,l7e82
	pop af
	rra
	push af
	call c,l7bb2
	pop af
	rra
	push af
	call c,l7c72
	pop af
	ld a,#00
	call #4e0b
	call #8675
	ret
	nop
	nop
	nop
	nop
	nop
	ld de,#0004
	ld hl,#0027
	call #bbc0
	ld a,#0e
	call #bbde
	jp l8092
.l8073 equ $ + 2
.l8071
	db #a0,#00,#27,#00,#a0,#00,#00,#00
	db #e2,#01,#00,#00,#e2,#01,#27,#00
	db #7b,#02,#27,#00,#7b,#02,#8f,#01
	db #04,#00,#8f,#01,#04,#00,#27,#00
.l8091
	db #00
.l8093 equ $ + 1
.l8092
	ld hl,l8071
	ld (l80a0),hl
	ld hl,l8073
	ld (l80a4),hl
	nop
.l80a0 equ $ + 1
.l809f
	ld hl,(l8091)
	ex de,hl
.l80a4 equ $ + 1
	ld hl,(l8093)
	call #bbf6
	ld hl,(l80a0)
	inc hl
	inc hl
	inc hl
	inc hl
	ld (l80a0),hl
	ld hl,(l80a4)
	inc hl
	inc hl
	inc hl
	inc hl
	ld (l80a4),hl
	ld a,l
	cp #90
	ret nc
	jp l809f
	nop
	nop
	nop
.l80c7
	ld b,#b5
	ld hl,#c000
	ld de,#c04f
.l80cf
	push bc
	ld a,#15
	ld (hl),a
	call l7859
	ex de,hl
	ld a,#2a
	ld (hl),a
	call l7859
	ex de,hl
	pop bc
	djnz l80cf
	ret
	nop
	nop
	ld hl,#c815
.l80e7
	ld b,#0c
.l80e9
	push bc
	push hl
	call l7a62
	pop hl
	ld bc,#00a0
	add hl,bc
	pop bc
	djnz l80e9
	ret
	nop
	nop
	ld hl,#c833
	jp l80e7
	nop
.l8100
	call l8002
	call l8016
	ret
	nop
	nop
.l8109
	call l7751
	call #bca7
	ld hl,(l768f)
	ld a,l
	cp #30
	jp z,l739c
	inc hl
.l8119
	ld (l768f),hl
	ret

	nop
	nop
	ld hl,#0020
.l8122
	ld (l768f),hl
	ret
	nop
	nop
	call #8e54
	call #8dec
	call l708a
	ret
.l8132
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#40,#00,#00,#01,#38,#02,#01
	db #00,#00,#01,#1e,#00,#01,#1e,#00
	db #01,#00,#00,#01,#38,#02,#02,#1e
	db #00,#00,#5c,#85,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ef
;
; #76d9 - init music ent/env (called at beginning of the game)
; #7628 - init 1st music
; #739c - init 2nd music
;
; #47e2
; ld de,#20a5
; ld bc,#1002
; jp #79b0
;
;	 #ad00 - reallocated by Megachur
;
.lad00
	jr lad1c
	ld a,b
	cp #18
	jr z,lad0b
	cp #09
	jr nz,lad1c
.lad0b
	push bc
	push hl
	ld b,#08
.lad0f
	ld a,r
	ld h,a
	ld a,r
	ld l,a
	ld a,r
	ld (hl),a
	djnz lad0f
	pop bc
	pop hl
.lad1c
	ld (l779b),hl
	ret
;
.init_music
;
	push af
	call init_music_env
	pop af
	or a
	jp z,init_music1
	jp init_music2
;
.music_info
	db "Pacific (1986)(Ere Informatique)()",0
	db "",0

	read "music_end.asm"
