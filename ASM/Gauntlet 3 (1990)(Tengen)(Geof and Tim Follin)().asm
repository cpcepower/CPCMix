; Music of Gauntlet 3 (1990)(Tengen)(Geof and Tim Follin)()
; Ripped by Megachur the 10/10/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GAUNTLE3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #4000
FIRST_THEME				equ 0
LAST_THEME				equ 5

	read "music_header.asm"

.l4006 equ $ + 6
.l4004 equ $ + 4
.l4002 equ $ + 2
.l4000
	dw l4eae,l529e,l50cb,l4ea9
.l400a equ $ + 2
.l4008
	dw l4f96,l50a9
.l4013 equ $ + 7
.l4012 equ $ + 6
.l4011 equ $ + 5
.l4010 equ $ + 4
.l400f equ $ + 3
.l400e equ $ + 2
.l400d equ $ + 1
.l400c
	db #1c,#00,#10,#00,#f0,#03,#00,#00
.l401b equ $ + 7
.l401a equ $ + 6
.l4019 equ $ + 5
.l4018 equ $ + 4
.l4017 equ $ + 3
.l4016 equ $ + 2
.l4015 equ $ + 1
.l4014
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4023 equ $ + 7
.l4022 equ $ + 6
.l4021 equ $ + 5
.l4020 equ $ + 4
.l401f equ $ + 3
.l401e equ $ + 2
.l401d equ $ + 1
.l401c
	db #00,#00,#00,#00,#00,#00,#00,#00
.l402b equ $ + 7
.l402a equ $ + 6
.l4029 equ $ + 5
.l4028 equ $ + 4
.l4027 equ $ + 3
.l4026 equ $ + 2
.l4025 equ $ + 1
.l4024
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4033 equ $ + 7
.l4032 equ $ + 6
.l4031 equ $ + 5
.l4030 equ $ + 4
.l402f equ $ + 3
.l402e equ $ + 2
.l402d equ $ + 1
.l402c
	db #00,#00,#00,#00,#00,#00,#00,#00
.l403b equ $ + 7
.l403a equ $ + 6
.l4039 equ $ + 5
.l4038 equ $ + 4
.l4037 equ $ + 3
.l4036 equ $ + 2
.l4035 equ $ + 1
.l4034
	db #00,#00,#01,#01,#01,#00,#00,#00
.l4043 equ $ + 7
.l4042 equ $ + 6
.l4041 equ $ + 5
.l4040 equ $ + 4
.l403f equ $ + 3
.l403e equ $ + 2
.l403d equ $ + 1
.l403c
	db #01,#01,#01,#08,#09,#09,#00,#ff
.l404b equ $ + 7
.l404a equ $ + 6
.l4049 equ $ + 5
.l4048 equ $ + 4
.l4047 equ $ + 3
.l4046 equ $ + 2
.l4045 equ $ + 1
.l4044
	db #00,#4e,#5c,#10,#0a,#09,#0a,#00
.l4053 equ $ + 7
.l4052 equ $ + 6
.l4051 equ $ + 5
.l4050 equ $ + 4
.l404f equ $ + 3
.l404e equ $ + 2
.l404d equ $ + 1
.l404c
	db #00,#00,#00,#00,#0f,#00,#00,#00
.l405b equ $ + 7
.l405a equ $ + 6
.l4059 equ $ + 5
.l4058 equ $ + 4
.l4057 equ $ + 3
.l4056 equ $ + 2
.l4055 equ $ + 1
.l4054
	db #01,#02,#01,#01,#02,#01,#00,#00
.l4063 equ $ + 7
.l4062 equ $ + 6
.l4061 equ $ + 5
.l4060 equ $ + 4
.l405f equ $ + 3
.l405e equ $ + 2
.l405d equ $ + 1
.l405c
	db #0d,#00,#13,#00,#33,#00,#05,#00
.l406b equ $ + 7
.l406a equ $ + 6
.l4069 equ $ + 5
.l4068 equ $ + 4
.l4067 equ $ + 3
.l4066 equ $ + 2
.l4065 equ $ + 1
.l4064
	db #00,#00,#00,#00,#02,#01,#04,#01
.l4073 equ $ + 7
.l4072 equ $ + 6
.l4071 equ $ + 5
.l4070 equ $ + 4
.l406f equ $ + 3
.l406e equ $ + 2
.l406d equ $ + 1
.l406c
	db #00,#00,#03,#00,#00,#00,#00,#00
.l407b equ $ + 7
.l407a equ $ + 6
.l4079 equ $ + 5
.l4078 equ $ + 4
.l4077 equ $ + 3
.l4076 equ $ + 2
.l4075 equ $ + 1
.l4074
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4083 equ $ + 7
.l4082 equ $ + 6
.l4081 equ $ + 5
.l4080 equ $ + 4
.l407f equ $ + 3
.l407e equ $ + 2
.l407d equ $ + 1
.l407c
	db #00,#00,#09,#12,#24,#08,#10,#20
.l408b equ $ + 7
.l408a equ $ + 6
.l4089 equ $ + 5
.l4088 equ $ + 4
.l4087 equ $ + 3
.l4086 equ $ + 2
.l4085 equ $ + 1
.l4084
	db #01,#ff,#01,#fe,#fe,#ee,#ff,#ff
.l408c
	db #ff
;
.init_music
;
	add a
	ld c,a
	ld b,#00
	ld hl,l4d59
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l4000),de
	ld hl,l4d65
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l4002),de
	ld hl,l4d71
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l4004),de
	ld a,#ff
	ld (l4012),a
	ld (l4013),a
	ld (l4014),a
.l40bd
	ld (l4039),a
	ld (l403a),a
	ld (l403b),a
	ld hl,l4015
	ld de,l4016
	ld bc,#0026
	ld (hl),#00
	ldir
	ld a,#01
	ld (l4036),a
	ld (l4037),a
	ld (l4038),a
	ld a,#09
	ld (l407e),a
	add a
	ld (l407f),a
	add a
	ld (l4080),a
	ld hl,l4919
	ld (l4917),hl
	ld hl,l4a60
	ld (l4a5e),hl
	ld hl,l4bb7
	ld (l4bb5),hl
	ret
;
.stop_music
;
	ld c,#00
	ld a,#08
	call l4c81
	ld c,#00
	ld a,#09
	call l4c81
	ld c,#00
	ld a,#0a
	call l4c81
	xor a
	ld (l4012),a
	ld (l4013),a
	ld (l4014),a
	dec a
	jp l40bd
	add a
	ld hl,l4d7d
	call l4154
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l412c
	ex de,hl
	ld a,(de)
	or a
	ret m
	srl a
	ld hl,l4012
	call l4154
	ld (hl),#ff
	ld hl,l4036
	ld a,(de)
	srl a
	call l4154
	ld (hl),#01
	ld a,(de)
	ld hl,l4000
	call l4154
	inc de
	ex de,hl
	ldi
	ldi
	jr l412c
.l4154
	add l
	ld l,a
	ret nc
	inc h
	ret
;
.play_music
;
	ld a,(l4012)
	or a
	jp p,l435c
	ld a,(l402d)
	or a
	jp z,l418f
	ld a,(l4078)
	or a
	jp z,l418f
	dec a
	ld (l4078),a
	jp nz,l425d
	ld a,(l400c)
	ld c,a
	xor a
	call l4c81
	ld a,(l400d)
	ld c,a
	ld a,#01
	call l4c81
	ld a,(l4081)
	ld (l407e),a
	call l4883
.l418f
	ld a,(l402a)
	or a
	jp z,l41e2
	ld a,(l4063)
	or a
	jp z,l41a4
	dec a
	ld (l4063),a
	jp nz,l41e2
.l41a4
	ld hl,(l400c)
	ld de,(l4066)
	ld d,#00
	ld a,(l4042)
	or a
	jp z,l41b8
	add hl,de
	jp l41ba
.l41b8
	sbc hl,de
.l41ba
	ld (l400c),hl
	ld c,l
	xor a
	call l4c81
	ld c,h
	ld a,#01
	call l4c81
	ld hl,l4069
	dec (hl)
	jp nz,l4218
	ld a,(l406c)
	or a
	jp z,l4218
	add a
	ld (hl),a
	ld a,(l4042)
	cpl
	ld (l4042),a
	jp l4218
.l41e2
	ld a,(l401e)
	or a
	jp z,l4218
	dec a
	ld (l401e),a
	jp nz,l4218
	ld a,(l4021)
	ld (l401e),a
	ld a,(l405d)
	ld l,a
	ld a,(l4042)
	xor #ff
	ld (l4042),a
	ld a,(l4045)
	jp z,l420c
	add l
	jp l423b
.l420c
	sub l
	push af
	ld a,(l4024)
	ld (l401e),a
	pop af
	jp l423b
.l4218
	ld a,(l4027)
	or a
	jp z,l425d
	ld hl,l4060
	ld e,a
	ld a,(l4045)
	cp (hl)
	jp z,l425d
	jp c,l4235
	sub e
	cp (hl)
	jp nc,l423b
	jp l423a
.l4235
	add e
	cp (hl)
	jp c,l423b
.l423a
	ld a,(hl)
.l423b
	ld (l4045),a
	add a
	ld e,a
	ld d,#00
	ld hl,l4c9f
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,(l4033)
	ld h,#00
	add hl,de
	ld (l400c),hl
	ld c,l
	xor a
	call l4c81
	ld c,h
	ld a,#01
	call l4c81
.l425d
	ld hl,l4036
	dec (hl)
	push af
	ld a,(l4084)
	cp (hl)
	ld hl,l4087
	jr z,l4270
	ld a,(hl)
	or a
	jp nz,l4279
.l4270
	ld a,#09
	ld (l407e),a
	call l4883
	inc (hl)
.l4279
	dec (hl)
	pop af
	jp nz,l435c
	ld bc,(l4000)
.l4282
	ld a,(bc)
	inc bc
	or a
	jp p,l4297
	and #7f
	add a
	ld e,a
	ld d,#00
	ld hl,l489c
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp (hl)
.l4297
	ld l,a
	ld a,(l401b)
	or a
	jp z,l42a6
	xor a
	ld (l401b),a
	jp l42a9
.l42a6
	ld a,(l4015)
.l42a9
	add l
	ld l,a
	ld a,(l4027)
	or a
	ld a,l
	jp z,l42b9
	ld (l4060),a
	ld a,(l4045)
.l42b9
	ld (l4045),a
	add a
	push bc
	ld e,a
	ld d,#00
	ld hl,l4c9f
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,(l4033)
	ld h,#00
	add hl,de
	ld (l400c),hl
	ld c,l
	xor a
	call l4c81
	ld c,h
	ld a,#01
	call l4c81
	pop bc
	ld a,(l4018)
	or a
	jp nz,l42e6
	ld a,(bc)
	inc bc
.l42e6
	ld (l4036),a
	ld (l4000),bc
	ld a,(l4021)
	ld (l401e),a
	ld a,(l408a)
	ld (l4087),a
	ld a,(l4081)
	ld (l407e),a
	call l4883
	ld a,(l402a)
	or a
	jp z,l4315
	ld (l4063),a
	ld a,(l406c)
	ld (l4069),a
	ld a,(l406f)
.l4315
	ld (l4042),a
	ld a,(l403c)
	or a
	jp z,l4338
	ld a,(l4054)
	ld (l4057),a
	or a
	ld a,(l404b)
	jp z,l432f
	ld a,(l404c)
.l432f
	ld (l405a),a
	ld a,(l4048)
	ld (l403f),a
.l4338
	ld a,(l402d)
	or a
	jp z,l435c
	ld (l4078),a
	ld a,(l407b)
	ld (l407e),a
	call l4883
	ld a,(l4072)
	ld c,a
	xor a
	call l4c81
	ld a,(l4073)
	ld c,a
	ld a,#01
	call l4c81
.l435c
	ld a,(l4012)
	or a
	jp p,l43bc
	ld a,(l4057)
	or a
	jp nz,l438d
	ld hl,l405a
	dec (hl)
	jp p,l43b3
	ld a,(l404b)
	ld (hl),a
	ld hl,l403f
	inc (hl)
	ld a,(hl)
	cp #0f
	jp nz,l43b3
	ld a,#01
	ld (l4057),a
	ld a,(l404c)
	ld (l405a),a
	jp l43b3
.l438d
	cp #01
	jp nz,l43b3
	ld hl,l405a
	dec (hl)
	jp p,l43b3
	ld a,(l404c)
	ld (hl),a
	ld a,(l403f)
	ld hl,l4051
	cp (hl)
	jp z,l43ae
	dec a
	ld (l403f),a
	jp p,l43b3
.l43ae
	ld a,#02
	ld (l4057),a
.l43b3
	ld a,(l403f)
	ld c,a
	ld a,#08
	call l4c81
.l43bc
	ld a,(l4013)
	or a
	jp p,l45c4
	ld a,(l402e)
	or a
	jp z,l43f3
	ld a,(l4079)
	or a
	jp z,l43f3
	dec a
	ld (l4079),a
	jp nz,l44c3
	ld a,(l400e)
	ld c,a
	ld a,#02
	call l4c81
	ld a,(l400f)
	ld c,a
	ld a,#03
	call l4c81
	ld a,(l4082)
	ld (l407f),a
	call l4883
.l43f3
	ld a,(l402b)
	or a
	jp z,l4447
	ld a,(l4064)
	or a
	jp z,l4408
	dec a
	ld (l4064),a
	jp nz,l4447
.l4408
	ld hl,(l400e)
	ld de,(l4067)
	ld d,#00
	ld a,(l4043)
	or a
	jp z,l441c
	add hl,de
	jp l441e
.l441c
	sbc hl,de
.l441e
	ld (l400e),hl
	ld c,l
	ld a,#02
	call l4c81
	ld c,h
	ld a,#03
	call l4c81
	ld hl,l406a
	dec (hl)
	jp nz,l447d
	ld a,(l406d)
	or a
	jp z,l447d
	add a
	ld (hl),a
	ld a,(l4043)
	cpl
	ld (l4043),a
	jp l447d
.l4447
	ld a,(l401f)
	or a
	jp z,l447d
	dec a
	ld (l401f),a
	jp nz,l447d
	ld a,(l4022)
	ld (l401f),a
	ld a,(l405e)
	ld l,a
	ld a,(l4043)
	xor #ff
	ld (l4043),a
	ld a,(l4046)
	jp z,l4471
	add l
	jp l44a0
.l4471
	sub l
	push af
	ld a,(l4025)
	ld (l401f),a
	pop af
	jp l44a0
.l447d
	ld a,(l4028)
	or a
	jp z,l44c3
	ld hl,l4061
	ld e,a
	ld a,(l4046)
	cp (hl)
	jp z,l44c3
	jp c,l449a
	sub e
	cp (hl)
	jp nc,l44a0
	jp l449f
.l449a
	add e
	cp (hl)
	jp c,l44a0
.l449f
	ld a,(hl)
.l44a0
	ld (l4046),a
	add a
	ld e,a
	ld d,#00
	ld hl,l4c9f
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,(l4034)
	ld h,#00
	add hl,de
	ld (l400e),hl
	ld c,l
	ld a,#02
	call l4c81
	ld c,h
	ld a,#03
	call l4c81
.l44c3
	ld hl,l4037
	dec (hl)
	push af
	ld a,(l4085)
	cp (hl)
	ld hl,l4088
	jr z,l44d6
	ld a,(hl)
	or a
	jp nz,l44df
.l44d6
	ld a,#12
	ld (l407f),a
	call l4883
	inc (hl)
.l44df
	dec (hl)
	pop af
	jp nz,l45c4
	ld bc,(l4002)
.l44e8
	ld a,(bc)
	inc bc
	or a
	jp p,l44fd
	and #7f
	add a
	ld e,a
	ld d,#00
	ld hl,l49e3
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp (hl)
.l44fd
	ld l,a
	ld a,(l401c)
	or a
	jp z,l450c
	xor a
	ld (l401c),a
	jp l450f
.l450c
	ld a,(l4016)
.l450f
	add l
	ld l,a
	ld a,(l4028)
	or a
	ld a,l
	jp z,l451f
	ld (l4061),a
	ld a,(l4046)
.l451f
	ld (l4046),a
	add a
	push bc
	ld e,a
	ld d,#00
	ld hl,l4c9f
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,(l4034)
	ld h,#00
	add hl,de
	ld (l400e),hl
	ld c,l
	ld a,#02
	call l4c81
	ld c,h
	ld a,#03
	call l4c81
	pop bc
	ld a,(l4019)
	or a
	jp nz,l454d
	ld a,(bc)
	inc bc
.l454d
	ld (l4037),a
	ld (l4002),bc
	ld a,(l4022)
	ld (l401f),a
	ld a,(l408b)
	ld (l4088),a
	ld a,(l4082)
	ld (l407f),a
	call l4883
	ld a,(l402b)
	or a
	jp z,l457c
	ld (l4064),a
	ld a,(l406d)
	ld (l406a),a
	ld a,(l4070)
.l457c
	ld (l4043),a
	ld a,(l403d)
	or a
	jp z,l459f
	ld a,(l4055)
	ld (l4058),a
	or a
	ld a,(l404d)
	jp z,l4596
	ld a,(l404e)
.l4596
	ld (l405b),a
	ld a,(l4049)
	ld (l4040),a
.l459f
	ld a,(l402e)
	or a
	jp z,l45c4
	ld (l4079),a
	ld a,(l407c)
	ld (l407f),a
	call l4883
	ld a,(l4074)
	ld c,a
	ld a,#02
	call l4c81
	ld a,(l4075)
	ld c,a
	ld a,#03
	call l4c81
.l45c4
	ld a,(l4013)
	or a
	jp p,l4624
	ld a,(l4058)
	or a
	jp nz,l45f5
	ld hl,l405b
	dec (hl)
	jp p,l461b
	ld a,(l404d)
	ld (hl),a
	ld hl,l4040
	inc (hl)
	ld a,(hl)
	cp #0f
	jp nz,l461b
	ld a,#01
	ld (l4058),a
	ld a,(l404e)
	ld (l405b),a
	jp l461b
.l45f5
	cp #01
	jp nz,l461b
	ld hl,l405b
	dec (hl)
	jp p,l461b
	ld a,(l404e)
	ld (hl),a
	ld a,(l4040)
	ld hl,l4052
	cp (hl)
	jp z,l4616
	dec a
	ld (l4040),a
	jp p,l461b
.l4616
	ld a,#02
	ld (l4058),a
.l461b
	ld a,(l4040)
	ld c,a
	ld a,#09
	call l4c81
.l4624
	ld a,(l4014)
	or a
	ret p
	ld a,(l402f)
	or a
	jp z,l4659
	ld a,(l407a)
	or a
	jp z,l4659
	dec a
	ld (l407a),a
	jp nz,l4729
	ld a,(l4010)
	ld c,a
	ld a,#04
	call l4c81
	ld a,(l4011)
	ld c,a
	ld a,#05
	call l4c81
	ld a,(l4083)
	ld (l4080),a
	call l4883
.l4659
	ld a,(l402c)
	or a
	jp z,l46ad
	ld a,(l4065)
	or a
	jp z,l466e
	dec a
	ld (l4065),a
	jp nz,l46ad
.l466e
	ld hl,(l4010)
	ld de,(l4068)
	ld d,#00
	ld a,(l4044)
	or a
	jp z,l4682
	add hl,de
	jp l4684
.l4682
	sbc hl,de
.l4684
	ld (l4010),hl
	ld c,l
	ld a,#04
	call l4c81
	ld c,h
	ld a,#05
	call l4c81
	ld hl,l406b
	dec (hl)
	jp nz,l46e3
	ld a,(l406e)
	or a
	jp z,l46e3
	add a
	ld (hl),a
	ld a,(l4044)
	cpl
	ld (l4044),a
	jp l46e3
.l46ad
	ld a,(l4020)
	or a
	jp z,l46e3
	dec a
	ld (l4020),a
	jp nz,l46e3
	ld a,(l4023)
	ld (l4020),a
	ld a,(l405f)
	ld l,a
	ld a,(l4044)
	xor #ff
	ld (l4044),a
	ld a,(l4047)
	jp z,l46d7
	add l
	jp l4706
.l46d7
	sub l
	push af
	ld a,(l4026)
	ld (l4020),a
	pop af
	jp l4706
.l46e3
	ld a,(l4029)
	or a
	jp z,l4729
	ld hl,l4062
	ld e,a
	ld a,(l4047)
	cp (hl)
	jp z,l4729
	jp c,l4700
	sub e
	cp (hl)
	jp nc,l4706
	jp l4705
.l4700
	add e
	cp (hl)
	jp c,l4706
.l4705
	ld a,(hl)
.l4706
	ld (l4047),a
	add a
	ld e,a
	ld d,#00
	ld hl,l4c9f
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,(l4035)
	ld h,#00
	add hl,de
	ld (l4010),hl
	ld c,l
	ld a,#04
	call l4c81
	ld c,h
	ld a,#05
	call l4c81
.l4729
	ld hl,l4038
	dec (hl)
	push af
	ld a,(l4086)
	cp (hl)
	ld hl,l4089
	jr z,l473c
	ld a,(hl)
	or a
	jp nz,l4745
.l473c
	ld a,#24
	ld (l4080),a
	call l4883
	inc (hl)
.l4745
	dec (hl)
	pop af
	jp nz,l482a
	ld bc,(l4004)
.l474e
	ld a,(bc)
	inc bc
	or a
	jp p,l4763
	and #7f
	add a
	ld e,a
	ld d,#00
	ld hl,l4b3c
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp (hl)
.l4763
	ld l,a
	ld a,(l401d)
	or a
	jp z,l4772
	xor a
	ld (l401d),a
	jp l4775
.l4772
	ld a,(l4017)
.l4775
	add l
	ld l,a
	ld a,(l4029)
	or a
	ld a,l
	jp z,l4785
	ld (l4062),a
	ld a,(l4047)
.l4785
	ld (l4047),a
	add a
	push bc
	ld e,a
	ld d,#00
	ld hl,l4c9f
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,(l4035)
	ld h,#00
	add hl,de
	ld (l4010),hl
	ld c,l
	ld a,#04
	call l4c81
	ld c,h
	ld a,#05
	call l4c81
	pop bc
	ld a,(l401a)
	or a
	jp nz,l47b3
	ld a,(bc)
	inc bc
.l47b3
	ld (l4038),a
	ld (l4004),bc
	ld a,(l4023)
	ld (l4020),a
	ld a,(l408c)
	ld (l4089),a
	ld a,(l4083)
	ld (l4080),a
	call l4883
	ld a,(l402c)
	or a
	jp z,l47e2
	ld (l4065),a
	ld a,(l406e)
	ld (l406b),a
	ld a,(l4071)
.l47e2
	ld (l4044),a
	ld a,(l403e)
	or a
	jp z,l4805
	ld a,(l4056)
	ld (l4059),a
	or a
	ld a,(l404f)
	jp z,l47fc
	ld a,(l4050)
.l47fc
	ld (l405c),a
	ld a,(l404a)
	ld (l4041),a
.l4805
	ld a,(l402f)
	or a
	jp z,l482a
	ld (l407a),a
	ld a,(l407d)
	ld (l4080),a
	call l4883
	ld a,(l4076)
	ld c,a
	ld a,#04
	call l4c81
	ld a,(l4077)
	ld c,a
	ld a,#05
	call l4c81
.l482a
	ld a,(l4059)
	or a
	jp nz,l4854
	ld hl,l405c
	dec (hl)
	jp p,l487a
	ld a,(l404f)
	ld (hl),a
	ld hl,l4041
	inc (hl)
	ld a,(hl)
	cp #0f
	jp nz,l487a
	ld a,#01
	ld (l4059),a
	ld a,(l4050)
	ld (l405c),a
	jp l487a
.l4854
	cp #01
	jp nz,l487a
	ld hl,l405c
	dec (hl)
	jp p,l487a
	ld a,(l4050)
	ld (hl),a
	ld a,(l4041)
	ld hl,l4053
	cp (hl)
	jp z,l4875
	dec a
	ld (l4041),a
	jp p,l487a
.l4875
	ld a,#02
	ld (l4059),a
.l487a
	ld a,(l4041)
	ld c,a
	ld a,#0a
	jp l4c81
.l4883
	ld a,(l407e)
	and #09
	ld c,a
	ld a,(l407f)
	and #12
	ld b,a
	ld a,(l4080)
	and #24
	or c
	or b
	ld c,a
	ld a,#07
	jp l4c81
.l489c
	dw l48c2,l48ce,l48dc,l48e4
	dw l48f5,l490a,l491f,l4927
	dw l492f,l4951,l497b,l4983
	dw l4995,l499d,l49b4,l49bc
	dw l48eb,l49db,l49d3
.l48c2
	ld a,(bc)
	ld (l4030),a
	inc bc
	ld (l4006),bc
	jp l4282
.l48ce
	ld hl,l4030
	dec (hl)
	jp z,l4282
	ld bc,(l4006)
	jp l4282
.l48dc
	ld a,(bc)
	ld (l4018),a
	inc bc
	jp l4282
.l48e4
	ld hl,l4012
	inc (hl)
	jp l435c
.l48eb
	ld a,(bc)
	ld l,a
	inc bc
	ld a,(bc)
	ld h,a
	push hl
	pop bc
	jp l4282
.l48f5
	ld a,(bc)
	ld l,a
	inc bc
	ld a,(bc)
	ld h,a
	inc bc
	push hl
	ld hl,(l4917)
	ld (hl),c
	inc hl
	ld (hl),b
	inc hl
	ld (l4917),hl
	pop bc
	jp l4282
.l490a
	ld hl,(l4917)
	dec hl
	ld b,(hl)
	dec hl
	ld c,(hl)
	ld (l4917),hl
	jp l4282
.l4917
	add hl,de
	ld c,c
.l4919
	adc d
	ld c,(hl)
	nop
	nop
	nop
	nop
.l491f
	ld a,(bc)
	ld (l4015),a
	inc bc
	jp l4282
.l4927
	ld a,(bc)
	ld (l4033),a
	inc bc
	jp l4282
.l492f
	ld a,(bc)
	ld l,a
	inc bc
	ld a,(bc)
	inc bc
	push bc
	ld c,a
	ld a,l
	cp #07
	jp nz,l494a
	ld a,c
	ld (l407e),a
	ld (l4081),a
	call l4883
	pop bc
	jp l4282
.l494a
	call l4c81
	pop bc
	jp l4282
.l4951
	ld a,(bc)
	rra
	rra
	rra
	rra
	and #0f
	ld (l4048),a
	ld a,(bc)
	and #0f
	ld (l4051),a
	inc bc
	ld a,(bc)
	rra
	rra
	rra
	rra
	and #0f
	ld (l404b),a
	ld a,(bc)
	and #0f
	ld (l404c),a
	inc bc
	ld a,(bc)
	ld (l4054),a
	inc bc
	jp l4282
.l497b
	ld a,(bc)
	ld (l403c),a
	inc bc
	jp l4282
.l4983
	ld a,(bc)
	ld (l405d),a
	inc bc
	ld a,(bc)
	ld (l4021),a
	inc bc
	ld a,(bc)
	ld (l4024),a
	inc bc
	jp l4282
.l4995
	ld a,(bc)
	ld (l4027),a
	inc bc
	jp l4282
.l499d
	ld a,(bc)
	ld (l402a),a
	inc bc
	ld a,(bc)
	ld (l4066),a
	inc bc
	ld a,(bc)
	ld (l406c),a
	inc bc
	ld a,(bc)
	ld (l406f),a
	inc bc
	jp l4282
.l49b4
	ld a,#ff
	ld (l401b),a
	jp l4282
.l49bc
	ld a,(bc)
	ld (l402d),a
	inc bc
	ld a,(bc)
	ld (l407b),a
	inc bc
	ld a,(bc)
	ld (l4072),a
	inc bc
	ld a,(bc)
	ld (l4073),a
	inc bc
	jp l4282
.l49d3
	ld a,(bc)
	ld (l4084),a
	inc bc
	jp l4282
.l49db
	ld a,(bc)
	ld (l408a),a
	inc bc
	jp l4282
.l49e3
	add hl,bc
	ld c,d
	dec d
	ld c,d
	inc hl
	ld c,d
	dec hl
	ld c,d
	inc a
	ld c,d
	ld d,c
	ld c,d
	ld h,(hl)
	ld c,d
	ld l,(hl)
	ld c,d
	halt
	ld c,d
	sbc b
	ld c,d
	jp nz,#ca4a
	ld c,d
	call c,#e44a
	ld c,d
	ei
	ld c,d
	inc bc
	ld c,e
	ld (#344a),a
	ld c,e
	inc l
	ld c,e
	ld a,(bc)
	ld (l4031),a
	inc bc
	ld (l4008),bc
	jp l44e8
	ld hl,l4031
	dec (hl)
	jp z,l44e8
	ld bc,(l4008)
	jp l44e8
	ld a,(bc)
	ld (l4019),a
	inc bc
	jp l44e8
	ld hl,l4013
	inc (hl)
	jp l45c4
	ld a,(bc)
	ld l,a
	inc bc
	ld a,(bc)
	ld h,a
	push hl
	pop bc
	jp l44e8
	ld a,(bc)
	ld l,a
	inc bc
	ld a,(bc)
	ld h,a
	inc bc
	push hl
	ld hl,(l4a5e)
	ld (hl),c
	inc hl
	ld (hl),b
	inc hl
	ld (l4a5e),hl
	pop bc
	jp l44e8
	ld hl,(l4a5e)
	dec hl
	ld b,(hl)
	dec hl
	ld c,(hl)
	ld (l4a5e),hl
	jp l44e8
.l4a5e
	ld h,b
	ld c,d
.l4a60
	sbc e
	ld c,a
	ld a,a
	ld d,d
	nop
	nop
	ld a,(bc)
	ld (l4016),a
	inc bc
	jp l44e8
	ld a,(bc)
	ld (l4034),a
	inc bc
	jp l44e8
	ld a,(bc)
	ld l,a
	inc bc
	ld a,(bc)
	inc bc
	push bc
	ld c,a
	ld a,l
	cp #07
	jp nz,l4a91
	ld a,c
	ld (l407f),a
	ld (l4082),a
	call l4883
	pop bc
	jp l44e8
.l4a91
	call l4c81
	pop bc
	jp l44e8
	ld a,(bc)
	rra
	rra
	rra
	rra
	and #0f
	ld (l4049),a
	ld a,(bc)
	and #0f
	ld (l4052),a
	inc bc
	ld a,(bc)
	rra
	rra
	rra
	rra
	and #0f
	ld (l404d),a
	ld a,(bc)
	and #0f
	ld (l404e),a
	inc bc
	ld a,(bc)
	ld (l4055),a
	inc bc
	jp l44e8
	ld a,(bc)
	ld (l403d),a
	inc bc
	jp l44e8
	ld a,(bc)
	ld (l405e),a
	inc bc
	ld a,(bc)
	ld (l4022),a
	inc bc
	ld a,(bc)
	ld (l4025),a
	inc bc
	jp l44e8
	ld a,(bc)
	ld (l4028),a
	inc bc
	jp l44e8
	ld a,(bc)
	ld (l402b),a
	inc bc
	ld a,(bc)
	ld (l4067),a
	inc bc
	ld a,(bc)
	ld (l406d),a
	inc bc
	ld a,(bc)
	ld (l4070),a
	inc bc
	jp l44e8
	ld a,#ff
	ld (l401c),a
	jp l44e8
	ld a,(bc)
	ld (l402e),a
	inc bc
	or a
	jp nz,l4b1a
	push bc
	ld a,(l4082)
	ld (l407f),a
	call l4883
	pop bc
	jp l44e8
.l4b1a
	ld a,(bc)
	ld (l407c),a
	inc bc
	ld a,(bc)
	ld (l4074),a
	inc bc
	ld a,(bc)
	ld (l4075),a
	inc bc
	jp l44e8
	ld a,(bc)
	ld (l4085),a
	inc bc
	jp l44e8
	ld a,(bc)
	ld (l408b),a
	inc bc
	jp l44e8
.l4b3c
	dw l4b62,l4b6e,l4b7c,l4b84
	dw l4b93,l4ba8,l4bbd,l4bc5
	dw l4bcd,l4bef,l4c19,l4c21
	dw l4c33,l4c3b,l4c52,l4c5a
	dw l4b89,l4c79,l4c71
.l4b62
	ld a,(bc)
	ld (l4032),a
	inc bc
	ld (l400a),bc
	jp l474e
.l4b6e
	ld hl,l4032
	dec (hl)
	jp z,l474e
	ld bc,(l400a)
	jp l474e
.l4b7c
	ld a,(bc)
	ld (l401a),a
	inc bc
	jp l474e
.l4b84
	ld hl,l4014
	inc (hl)
	ret
.l4b89
	ld a,(bc)
	ld l,a
	inc bc
	ld a,(bc)
	ld h,a
	push hl
	pop bc
	jp l474e
.l4b93
	ld a,(bc)
	ld l,a
	inc bc
	ld a,(bc)
	ld h,a
	inc bc
	push hl
	ld hl,(l4bb5)
	ld (hl),c
	inc hl
	ld (hl),b
	inc hl
	ld (l4bb5),hl
	pop bc
	jp l474e
.l4ba8
	ld hl,(l4bb5)
	dec hl
	ld b,(hl)
	dec hl
	ld c,(hl)
	ld (l4bb5),hl
	jp l474e
.l4bb7 equ $ + 2
.l4bb5
	dw l4bb7,l50ac,l53bf,#0000
.l4bbd
	ld a,(bc)
	ld (l4017),a
	inc bc
	jp l474e
.l4bc5
	ld a,(bc)
	ld (l4035),a
	inc bc
	jp l474e
.l4bcd
	ld a,(bc)
	ld l,a
	inc bc
	ld a,(bc)
	inc bc
	push bc
	ld c,a
	ld a,l
	cp #07
	jp nz,l4be8
	ld a,c
	ld (l4080),a
	ld (l4083),a
	call l4883
	pop bc
	jp l474e
.l4be8
	call l4c81
	pop bc
	jp l474e
.l4bef
	ld a,(bc)
	rra
	rra
	rra
	rra
	and #0f
	ld (l404a),a
	ld a,(bc)
	and #0f
	ld (l4053),a
	inc bc
	ld a,(bc)
	rra
	rra
	rra
	rra
	and #0f
	ld (l404f),a
	ld a,(bc)
	and #0f
	ld (l4050),a
	inc bc
	ld a,(bc)
	ld (l4056),a
	inc bc
	jp l474e
.l4c19
	ld a,(bc)
	ld (l403e),a
	inc bc
	jp l474e
.l4c21
	ld a,(bc)
	ld (l405f),a
	inc bc
	ld a,(bc)
	ld (l4023),a
	inc bc
	ld a,(bc)
	ld (l4026),a
	inc bc
	jp l474e
.l4c33
	ld a,(bc)
	ld (l4029),a
	inc bc
	jp l474e
.l4c3b
	ld a,(bc)
	ld (l402c),a
	inc bc
	ld a,(bc)
	ld (l4068),a
	inc bc
	ld a,(bc)
	ld (l406e),a
	inc bc
	ld a,(bc)
	ld (l4071),a
	inc bc
	jp l474e
.l4c52
	ld a,#ff
	ld (l401d),a
	jp l474e
.l4c5a
	ld a,(bc)
	ld (l402f),a
	inc bc
	ld a,(bc)
	ld (l407d),a
	inc bc
	ld a,(bc)
	ld (l4076),a
	inc bc
	ld a,(bc)
	ld (l4077),a
	inc bc
	jp l474e
.l4c71
	ld a,(bc)
	ld (l4086),a
	inc bc
	jp l474e
.l4c79
	ld a,(bc)
	ld (l408c),a
	inc bc
	jp l474e
.l4c81
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
	ret
.l4c9f
	dw #09f7,#0968,#08e1,#0861
	dw #07e9,#0777,#070c,#06a7
	dw #0647,#05ed,#0598,#0547
	dw #04fc,#04b4,#0470,#0431
	dw #03f4,#03bc,#0386,#0353
	dw #0324,#02f6,#02cc,#02a4
	dw #027e,#025a,#0238,#0218
	dw #01fa,#01de,#01c3,#01aa
	dw #0192,#017b,#0166,#0152
	dw #013f,#012d,#011c,#010c
	dw #00fd,#00ef,#00e1,#00d5
	dw #00c9,#00be,#00b3,#00a9
	dw #009f,#0096,#008e,#0086
	dw #007f,#0077,#0071,#006a
	dw #0064,#005f,#0059,#0054
	dw #0050,#004b,#0047,#0043
	dw #003f,#003c,#0038,#0035
	dw #0032,#002f,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020,#001e,#001c,#001b
	dw #0019,#0018,#0016,#0015
	dw #0014,#0013,#0012,#0011
	dw #0010,#0010,#0010,#0010
	dw #0010
.l4d59
	dw l4d99,l5491,l5502,l5600
.l4d65 equ $ + 4
	dw l5974,l5c0d,l4ece,l54a5
	dw l5567,l56a2,l5a22,l5d36
.l4d71
	dw l5018,l54be,l55b7,l575e
.l4d7d equ $ + 4
	dw l5a96,l5e34,l6015,l6019
	dw l601d,l6024,l602b,l6032
	dw l603c,l6046,l6050,l6057
	dw l605b,l605f,l6063,l606d
.l4d99
	db #91,#ff,#92,#ff,#88,#07,#08,#8a
	db #01,#89,#00,#f5,#00,#86,#03,#4b
	db #c0,#8d,#20,#08,#03,#00,#89,#b7
	db #0f,#01,#0f,#ff,#18,#81,#0f,#40
	db #12,#40,#89,#a6,#0f,#01,#16,#c0
	db #89,#75,#0f,#01,#14,#c0,#89,#74
	db #0f,#01,#12,#48,#0d,#18,#89,#85
	db #0f,#01,#12,#18,#14,#18,#89,#95
	db #0f,#01,#15,#18,#19,#18,#8d,#00
	db #00,#00,#00,#8f,#01,#01,#00,#32
	db #89,#a0,#04,#01,#0f,#10,#0f,#05
	db #0f,#05,#0f,#06,#0f,#10,#0f,#10
	db #0f,#08,#0f,#08,#0f,#10,#0f,#10
	db #0f,#05,#0f,#05,#0f,#06,#0f,#10
	db #80,#06,#0f,#08,#81,#8f,#00,#00
	db #00,#00,#86,#fe,#23,#08,#25,#08
	db #28,#08,#25,#08,#8d,#0c,#05,#02
	db #00,#2a,#20,#8d,#00,#00,#00,#00
	db #28,#08,#25,#08,#25,#08,#25,#08
	db #8b,#04,#03,#02,#2a,#08,#88,#07
	db #09,#01,#08,#88,#07,#08,#28,#10
	db #8b,#00,#00,#00,#2a,#08,#2c,#38
	db #88,#07,#01,#89,#a0,#02,#01,#58
	db #08,#58,#10,#88,#07,#08,#89,#00
	db #3d,#00,#80,#05,#32,#03,#8a,#00
	db #39,#03,#36,#02,#81,#8a,#01,#8d
	db #0c,#32,#03,#00,#86,#fe,#89,#90
	db #00,#02,#84,#6a,#51,#80,#02,#84
	db #e0,#50,#86,#f2,#84,#e0,#50,#86
	db #f4,#84,#e0,#50,#86,#f6,#84,#e0
	db #50,#86,#fc,#81,#82,#04,#92,#01
	db #86,#0a,#89,#a0,#00,#01,#8d,#00
	db #00,#00,#00,#80,#08,#3d,#44,#3d
	db #2c,#31,#38,#31,#44,#81,#80,#07
.l4eae equ $ + 5
.l4ea9
	db #38,#44,#38,#2c,#44,#38,#2c,#44
	db #81,#38,#44,#38,#2c,#44,#38,#2c
	db #92,#02,#44,#86,#03,#82,#00,#92
	db #ff,#8d,#01,#01,#01,#00,#84,#11
.l4ece equ $ + 5
	db #51,#90,#99,#4d,#83,#91,#ff,#92
	db #ff,#86,#03,#8a,#01,#89,#00,#f5
	db #00,#88,#07,#10,#46,#c0,#89,#b7
	db #0f,#01,#8d,#20,#08,#03,#00,#87
	db #0f,#0f,#ff,#18,#81,#0f,#40,#12
	db #40,#8d,#0c,#01,#02,#00,#89,#80
	db #00,#02,#87,#00,#86,#05,#92,#02
	db #3f,#c0,#40,#30,#3f,#30,#3d,#30
	db #42,#30,#43,#28,#42,#04,#43,#04
	db #45,#28,#43,#04,#45,#04,#47,#28
	db #47,#04,#49,#04,#4a,#30,#82,#03
	db #92,#ff,#89,#80,#00,#02,#86,#05
	db #80,#02,#84,#84,#54,#81,#86,#03
	db #82,#00,#8d,#10,#01,#03,#00,#89
	db #20,#bd,#00,#27,#70,#89,#a0,#00
	db #02,#25,#03,#23,#03,#22,#02,#91
	db #ff,#92,#01,#86,#fe,#82,#08,#89
	db #a0,#04,#01,#19,#25,#25,#25,#19
	db #25,#25,#25,#23,#25,#25,#25,#2a
	db #2a,#28,#28,#23,#25,#25,#25,#25
	db #25,#25,#25,#82,#00,#89,#c0,#07
	db #01,#31,#08,#2f,#18,#89,#00,#3f
	db #00,#8b,#05,#02,#02,#2d,#20,#8b
	db #00,#00,#00,#82,#00,#8d,#00,#00
	db #00,#00,#92,#ff,#84,#26,#52,#8b
.l4f96 equ $ + 5
	db #13,#01,#ff,#80,#06,#86,#fc,#84
	db #8a,#52,#86,#f6,#84,#e1,#52,#86
	db #f0,#84,#8a,#52,#86,#ea,#84,#e1
	db #52,#81,#8b,#00,#00,#00,#86,#f3
	db #84,#e1,#52,#86,#f3,#84,#e1,#52
	db #86,#f0,#84,#e1,#52,#86,#f0,#84
	db #e1,#52,#86,#ec,#84,#e1,#52,#86
	db #ec,#84,#e1,#52,#86,#e8,#84,#e1
	db #52,#86,#e8,#84,#e1,#52,#86,#e4
	db #84,#e1,#52,#80,#03,#86,#e4,#84
	db #e1,#52,#81,#86,#e1,#84,#e1,#52
	db #80,#03,#84,#e1,#52,#81,#80,#04
	db #84,#e1,#52,#81,#82,#10,#86,#ed
	db #89,#60,#00,#02,#80,#07,#3d,#3f
	db #40,#42,#44,#45,#47,#49,#4b,#49
	db #47,#45,#44,#42,#40,#3f,#82,#04
.l5018 equ $ + 7
	db #81,#82,#00,#90,#ce,#4e,#83,#91
	db #ff,#92,#ff,#8a,#01,#89,#00,#f5
	db #00,#88,#07,#20,#86,#03,#8d,#01
	db #01,#03,#00,#3f,#c0,#8d,#00,#00
	db #00,#00,#89,#90,#00,#02,#82,#04
	db #80,#04,#27,#2a,#2e,#33,#36,#3a
	db #3f,#42,#46,#42,#3f,#3a,#36,#33
	db #2e,#2a,#81,#82,#03,#8b,#0c,#01
	db #ff,#80,#02,#84,#37,#54,#81,#86
	db #0f,#80,#02,#84,#37,#54,#81,#86
	db #03,#89,#70,#00,#02,#8b,#00,#00
	db #00,#82,#04,#84,#51,#54,#8b,#0c
	db #02,#02,#92,#ff,#89,#90,#00,#02
	db #86,#05,#80,#04,#84,#84,#54,#81
	db #82,#00,#8b,#00,#00,#00,#86,#fe
	db #80,#03,#84,#d8,#53,#81,#92,#01
	db #25,#08,#23,#38,#92,#ff,#91,#ff
	db #80,#14,#84,#8f,#53,#81,#89,#b0
	db #00,#01,#92,#01,#82,#08,#80,#04
.l50ac equ $ + 3
.l50a9
	db #84,#81,#52,#81,#82,#00,#89,#a0
	db #0f,#01,#8d,#10,#02,#03,#00,#82
	db #40,#92,#01,#91,#ff,#25,#19,#1b
	db #1d,#12,#14,#20,#14,#25,#19,#1b
.l50cb equ $ + 2
	db #1d,#12,#14,#20,#14,#86,#03,#82
	db #00,#92,#ff,#8d,#00,#00,#00,#00
	db #84,#11,#51,#90,#18,#50,#83,#89
	db #a0,#00,#02,#55,#08,#8c,#04,#3d
	db #08,#8c,#00,#89,#70,#00,#02,#55
	db #08,#8c,#04,#3d,#08,#8c,#00,#89
	db #40,#00,#02,#55,#08,#8c,#04,#3d
	db #08,#8c,#00,#89,#30,#00,#02,#55
	db #08,#8c,#04,#3d,#08,#8c,#00,#85
	db #89,#00,#ff,#00,#4b,#80,#89,#80
	db #00,#02,#4b,#80,#89,#00,#ff,#00
	db #50,#80,#8c,#00,#89,#00,#ac,#00
	db #4e,#40,#4f,#40,#89,#00,#ff,#00
	db #4c,#80,#4e,#80,#8c,#01,#45,#80
	db #8c,#00,#46,#80,#8c,#02,#89,#00
	db #ff,#00,#49,#80,#89,#80,#00,#02
	db #49,#80,#89,#00,#ff,#00,#8c,#00
	db #4b,#80,#80,#02,#4b,#80,#89,#84
	db #0f,#01,#81,#89,#40,#00,#02,#80
	db #06,#4b,#80,#8a,#00,#81,#8c,#00
	db #85,#86,#f2,#44,#04,#45,#04,#44
	db #04,#42,#04,#8d,#10,#01,#02,#00
	db #44,#20,#8c,#01,#92,#02,#50,#10
	db #8c,#00,#89,#90,#0f,#01,#8d,#0c
	db #01,#00,#01,#50,#40,#92,#ff,#8d
	db #0c,#01,#02,#00,#80,#02,#89,#00
	db #4f,#00,#82,#04,#55,#8a,#00,#4c
	db #4b,#49,#55,#4c,#4b,#49,#55,#4c
	db #4b,#49,#55,#4c,#4b,#49,#82,#00
	db #89,#90,#00,#02,#8a,#01,#92,#01
	db #8c,#02,#4b,#04,#4c,#04,#8c,#00
	db #4e,#28,#50,#08,#4e,#08,#8d,#00
	db #00,#00,#00,#92,#ff,#89,#96,#0f
	db #01,#8b,#01,#04,#04,#4b,#81,#8a
	db #00,#4b,#ff,#8a,#01,#86,#fe,#8b
	db #00,#00,#00,#8d,#0c,#01,#02,#00
	db #81,#89,#00,#5f,#00,#8b,#00,#00
	db #00,#4b,#40,#89,#a0,#00,#02,#8d
	db #0c,#01,#02,#00,#4c,#20,#8c,#01
	db #51,#18,#8c,#00,#53,#08,#89,#96
	db #0f,#01,#8d,#40,#02,#02,#00,#50
	db #80,#8b,#01,#04,#04,#8d,#00,#00
	db #00,#00,#8a,#00,#50,#80,#8b,#00
	db #00,#00,#8a,#01,#85,#80,#02,#84
	db #e1,#52,#81,#80,#02,#84,#38,#53
	db #81,#86,#f9,#80,#02,#84,#e1,#52
	db #81,#86,#f7,#84,#8a,#52,#84,#e1
	db #52,#86,#fe,#80,#02,#84,#e1,#52
	db #81,#80,#02,#84,#38,#53,#81,#86
	db #f9,#80,#02,#84,#e1,#52,#81,#86
	db #f7,#80,#02,#84,#8a,#52,#81,#80
	db #02,#84,#e1,#52,#81,#86,#f9,#80
	db #02,#84,#8a,#52,#81,#86,#fe,#80
	db #02,#84,#e1,#52,#81,#8b,#f4,#01
	db #02,#80,#02,#84,#e1,#52,#81,#85
	db #19,#14,#17,#14,#17,#19,#14,#1c
	db #85,#89,#90,#00,#02,#55,#08,#50
	db #04,#89,#60,#00,#02,#55,#04,#89
.l529e equ $ + 5
	db #90,#00,#02,#4d,#04,#89,#60,#00
	db #02,#50,#04,#89,#90,#00,#02,#49
	db #04,#89,#60,#00,#02,#4d,#04,#89
	db #90,#00,#02,#44,#04,#89,#60,#00
	db #02,#49,#04,#89,#90,#00,#02,#49
	db #04,#89,#60,#00,#02,#44,#04,#89
	db #90,#00,#02,#4d,#04,#89,#60,#00
	db #02,#49,#04,#89,#90,#00,#02,#50
	db #04,#89,#60,#00,#02,#4d,#04,#85
	db #89,#90,#00,#02,#55,#08,#50,#04
	db #89,#60,#00,#02,#55,#04,#89,#90
	db #00,#02,#4c,#04,#89,#60,#00,#02
	db #50,#04,#89,#90,#00,#02,#49,#04
	db #89,#60,#00,#02,#4c,#04,#89,#90
	db #00,#02,#44,#04,#89,#60,#00,#02
	db #49,#04,#89,#90,#00,#02,#49,#04
	db #89,#60,#00,#02,#44,#04,#89,#90
	db #00,#02,#4c,#04,#89,#60,#00,#02
	db #49,#04,#89,#90,#00,#02,#50,#04
	db #89,#60,#00,#02,#4c,#04,#85,#89
	db #90,#00,#02,#54,#08,#51,#04,#89
	db #60,#00,#02,#54,#04,#89,#90,#00
	db #02,#4e,#04,#89,#60,#00,#02,#51
	db #04,#89,#90,#00,#02,#4b,#04,#89
	db #60,#00,#02,#4e,#04,#89,#90,#00
	db #02,#49,#04,#89,#60,#00,#02,#4b
	db #04,#89,#90,#00,#02,#4b,#04,#89
	db #60,#00,#02,#49,#04,#89,#90,#00
	db #02,#4e,#04,#89,#60,#00,#02,#4b
	db #04,#89,#90,#00,#02,#51,#04,#89
	db #60,#00,#02,#4e,#04,#85,#84,#f3
	db #53,#89,#b0,#00,#01,#19,#04,#84
	db #07,#54,#89,#b0,#00,#01,#19,#04
	db #89,#70,#00,#01,#19,#04,#89,#b0
	db #00,#01,#14,#04,#89,#70,#00,#01
	db #19,#04,#84,#19,#54,#89,#b0,#00
.l53bf equ $ + 6
	db #01,#19,#04,#84,#28,#54,#89,#b0
	db #00,#01,#19,#04,#89,#70,#00,#01
	db #19,#04,#89,#b0,#00,#01,#20,#04
	db #89,#70,#00,#01,#19,#04,#85,#84
	db #f3,#53,#89,#c0,#01,#01,#19,#08
	db #19,#08,#14,#08,#84,#19,#54,#89
	db #c0,#01,#01,#19,#08,#19,#08,#1c
	db #08,#85,#8a,#01,#89,#b0,#01,#01
	db #88,#07,#20,#8e,#28,#01,#8c,#05
	db #8e,#07,#07,#8c,#00,#85,#8a,#01
	db #89,#70,#01,#01,#88,#07,#20,#28
	db #01,#8c,#06,#07,#03,#8c,#00,#85
	db #8a,#01,#89,#c0,#00,#01,#88,#07
	db #04,#4d,#08,#88,#07,#20,#85,#8a
	db #01,#89,#80,#00,#01,#88,#07,#04
	db #4d,#04,#88,#07,#20,#85,#24,#27
	db #2a,#2e,#30,#33,#36,#3a,#3c,#3f
	db #42,#46,#42,#3f,#3c,#3a,#36,#33
	db #30,#2e,#82,#04,#2a,#82,#03,#85
	db #80,#04,#2e,#31,#35,#3a,#3d,#41
	db #46,#41,#3d,#3a,#35,#31,#81,#80
	db #04,#2f,#33,#38,#3b,#3f,#44,#47
	db #44,#3f,#3b,#38,#33,#81,#80,#03
	db #84,#84,#54,#81,#31,#36,#39,#3d
	db #42,#45,#49,#45,#42,#3d,#39,#92
	db #01,#36,#85,#31,#36,#39,#3d,#42
	db #45,#49,#45,#42,#3d,#39,#36,#85
.l5491
	db #91,#ff,#92,#ff,#8a,#01,#89,#90
	db #00,#02,#88,#07,#08,#84,#d7,#54
.l54a5 equ $ + 4
	db #90,#9e,#54,#83,#91,#ff,#92,#ff
	db #8a,#01,#89,#60,#00,#02,#88,#07
	db #12,#32,#11,#88,#07,#10,#84,#d7
.l54be equ $ + 5
	db #54,#90,#b7,#54,#83,#91,#ff,#92
	db #ff,#8a,#01,#89,#30,#00,#02,#88
	db #07,#24,#32,#22,#88,#07,#20,#84
	db #d7,#54,#90,#d0,#54,#83,#86,#fc
	db #80,#02,#82,#05,#32,#34,#35,#39
	db #3a,#3e,#40,#41,#91,#06,#82,#28
	db #45,#91,#ff,#81,#80,#02,#82,#05
	db #2d,#30,#34,#37,#39,#3c,#40,#41
	db #91,#06,#82,#28,#43,#91,#ff,#81
.l5502 equ $ + 1
	db #85,#91,#ff,#92,#ff,#88,#07,#08
	db #8a,#01,#89,#20,#01,#01,#8d,#05
	db #01,#02,#00,#82,#0e,#3d,#89,#40
	db #01,#01,#3d,#89,#60,#01,#01,#3d
	db #89,#70,#01,#01,#3d,#8b,#ff,#03
	db #04,#8d,#00,#00,#00,#00,#89,#80
	db #01,#01,#3d,#89,#90,#01,#01,#3d
	db #8b,#00,#00,#00,#89,#b0,#03,#01
	db #82,#00,#16,#1c,#1b,#0e,#1d,#2a
	db #19,#1c,#16,#0f,#1d,#10,#1b,#11
	db #21,#12,#22,#15,#89,#00,#31,#00
	db #8d,#00,#00,#00,#00,#45,#25,#89
.l5567 equ $ + 6
	db #b0,#02,#01,#0a,#18,#83,#91,#ff
	db #92,#ff,#88,#07,#10,#8a,#01,#89
	db #00,#9f,#00,#8d,#01,#01,#02,#00
	db #50,#4a,#8a,#00,#50,#0a,#8a,#01
	db #89,#a0,#0f,#01,#8d,#01,#01,#02
	db #00,#52,#2a,#89,#80,#00,#02,#92
	db #01,#4d,#0e,#4b,#05,#4d,#04,#4b
	db #05,#48,#0e,#49,#0e,#46,#0e,#48
	db #0f,#4d,#10,#51,#11,#4d,#12,#8b
	db #01,#04,#03,#92,#02,#48,#3a,#89
.l55b7 equ $ + 6
	db #80,#02,#01,#48,#18,#83,#91,#ff
	db #92,#01,#88,#07,#20,#8a,#01,#89
	db #00,#9f,#00,#50,#4a,#8a,#00,#50
	db #0a,#8a,#01,#89,#a0,#0a,#01,#8d
	db #01,#01,#02,#00,#52,#0e,#89,#90
	db #00,#02,#46,#0e,#44,#1c,#43,#05
	db #44,#04,#43,#05,#3f,#0e,#41,#0e
	db #3d,#0e,#3f,#0f,#3c,#10,#39,#11
	db #36,#12,#35,#3a,#8b,#04,#02,#03
.l5600 equ $ + 7
	db #89,#80,#02,#01,#41,#18,#83,#91
	db #ff,#92,#ff,#88,#07,#08,#8a,#01
	db #89,#90,#00,#02,#82,#02,#51,#4f
	db #4c,#4a,#49,#46,#45,#43,#40,#3e
	db #3d,#3a,#84,#cb,#57,#92,#ff,#82
	db #00,#86,#f5,#84,#13,#59,#86,#f3
	db #80,#03,#84,#b2,#58,#81,#86,#01
	db #84,#13,#59,#80,#03,#86,#ff,#84
	db #b2,#58,#81,#80,#03,#86,#f5,#84
	db #13,#59,#86,#f3,#84,#b2,#58,#84
	db #b2,#58,#84,#b2,#58,#81,#86,#f5
	db #84,#13,#59,#80,#02,#86,#f3,#84
	db #b2,#58,#81,#80,#02,#86,#f0,#84
	db #13,#59,#81,#80,#04,#86,#f5,#84
	db #b2,#58,#81,#80,#04,#86,#f3,#84
	db #b2,#58,#81,#80,#04,#86,#f1,#84
	db #b2,#58,#81,#80,#04,#86,#ef,#84
	db #b2,#58,#81,#86,#ed,#89,#90,#00
	db #02,#82,#06,#80,#04,#55,#50,#4d
	db #49,#44,#49,#4d,#50,#81,#89,#80
	db #00,#02,#84,#f0,#57,#84,#01,#58
.l56a2 equ $ + 1
	db #83,#91,#ff,#92,#ff,#88,#07,#10
	db #8d,#07,#01,#03,#00,#8a,#01,#89
	db #80,#0a,#01,#40,#0e,#89,#60,#00
	db #02,#82,#02,#51,#4f,#4c,#4a,#49
	db #46,#45,#43,#40,#3e,#3d,#3a,#84
	db #cb,#57,#82,#00,#92,#01,#88,#07
	db #12,#32,#b2,#88,#07,#10,#89,#90
	db #00,#02,#80,#02,#8d,#12,#01,#02
	db #00,#41,#24,#43,#06,#41,#06,#40
	db #30,#8d,#01,#01,#03,#00,#8b,#02
	db #03,#04,#3c,#60,#8d,#12,#01,#02
	db #00,#8b,#00,#00,#00,#3e,#24,#3c
	db #06,#3a,#06,#3c,#30,#8c,#02,#43
	db #60,#92,#01,#8c,#00,#86,#00,#81
	db #8c,#01,#45,#24,#43,#06,#41,#06
	db #43,#30,#48,#60,#4c,#30,#51,#60
	db #8d,#01,#01,#02,#00,#51,#60,#51
	db #c0,#8d,#00,#00,#00,#00,#56,#c0
	db #56,#18,#8c,#00,#57,#a8,#8d,#00
	db #00,#00,#00,#88,#07,#12,#32,#0e
	db #88,#07,#10,#86,#ed,#89,#60,#00
	db #02,#82,#06,#80,#04,#55,#50,#4d
	db #49,#44,#49,#4d,#50,#81,#84,#f0
.l575e equ $ + 5
	db #57,#84,#5c,#58,#83,#91,#ff,#92
	db #ff,#88,#07,#20,#8a,#01,#89,#00
	db #32,#00,#8d,#0c,#05,#03,#00,#15
	db #30,#8a,#01,#89,#b0,#02,#01,#80
	db #2c,#16,#18,#81,#80,#04,#18,#18
	db #81,#80,#04,#15,#18,#81,#8d,#20
	db #04,#03,#00,#82,#60,#89,#b0,#00
	db #02,#0e,#89,#a0,#00,#02,#0e,#89
	db #90,#00,#02,#0e,#89,#80,#00,#02
	db #0e,#89,#70,#00,#02,#0e,#89,#60
	db #00,#02,#0e,#89,#50,#00,#02,#0e
	db #89,#40,#00,#02,#0e,#89,#30,#00
	db #02,#0e,#89,#20,#00,#02,#0e,#89
	db #10,#00,#02,#0e,#89,#00,#00,#02
	db #0e,#83,#40,#43,#46,#47,#4b,#4d
	db #4f,#52,#53,#57,#59,#5b,#5e,#5b
	db #59,#57,#54,#52,#4f,#4d,#4b,#48
	db #46,#43,#41,#3f,#3c,#3a,#37,#35
	db #33,#30,#2e,#2b,#29,#27,#85,#86
	db #eb,#80,#04,#84,#a9,#58,#81,#86
	db #ea,#80,#04,#84,#a9,#58,#81,#85
	db #89,#70,#00,#02,#86,#e7,#80,#02
	db #84,#a9,#58,#81,#89,#60,#00,#02
	db #80,#02,#84,#a9,#58,#81,#89,#50
	db #00,#02,#86,#e4,#80,#02,#84,#a9
	db #58,#81,#89,#40,#00,#02,#80,#02
	db #84,#a9,#58,#81,#89,#30,#00,#02
	db #86,#e1,#80,#02,#84,#a9,#58,#81
	db #89,#20,#00,#02,#80,#02,#84,#a9
	db #58,#81,#89,#10,#00,#02,#86,#de
	db #80,#04,#84,#a9,#58,#81,#89,#00
	db #00,#02,#80,#04,#84,#a9,#58,#81
	db #82,#00,#85,#89,#50,#00,#02,#86
	db #e7,#80,#02,#84,#a9,#58,#81,#89
	db #40,#00,#02,#80,#02,#84,#a9,#58
	db #81,#89,#30,#00,#02,#86,#e4,#80
	db #02,#84,#a9,#58,#81,#89,#20,#00
	db #02,#80,#02,#84,#a9,#58,#81,#89
	db #10,#00,#02,#86,#e1,#80,#02,#84
	db #a9,#58,#81,#89,#00,#00,#02,#80
	db #02,#84,#a9,#58,#81,#86,#de,#80
	db #08,#84,#a9,#58,#81,#82,#00,#85
	db #55,#50,#4d,#49,#44,#49,#4d,#50
	db #85,#89,#90,#00,#02,#55,#03,#89
	db #60,#00,#02,#50,#03,#89,#90,#00
	db #02,#50,#03,#89,#60,#00,#02,#55
	db #03,#89,#90,#00,#02,#4d,#03,#89
	db #60,#00,#02,#50,#03,#89,#90,#00
	db #02,#49,#03,#89,#60,#00,#02,#4d
	db #03,#89,#90,#00,#02,#44,#03,#89
	db #60,#00,#02,#49,#03,#89,#90,#00
	db #02,#49,#03,#89,#60,#00,#02,#44
	db #03,#89,#90,#00,#02,#4d,#03,#89
	db #60,#00,#02,#49,#03,#89,#90,#00
	db #02,#50,#03,#89,#60,#00,#02,#4d
	db #03,#85,#89,#a0,#00,#02,#55,#03
	db #89,#60,#00,#02,#50,#03,#89,#90
	db #00,#02,#50,#03,#89,#60,#00,#02
	db #55,#03,#89,#90,#00,#02,#4c,#03
	db #89,#60,#00,#02,#50,#03,#89,#90
	db #00,#02,#49,#03,#89,#60,#00,#02
	db #4c,#03,#89,#90,#00,#02,#44,#03
	db #89,#60,#00,#02,#49,#03,#89,#90
	db #00,#02,#49,#03,#89,#60,#00,#02
	db #44,#03,#89,#90,#00,#02,#4c,#03
	db #89,#60,#00,#02,#49,#03,#89,#90
	db #00,#02,#50,#03,#89,#60,#00,#02
.l5974 equ $ + 3
	db #4c,#03,#85,#92,#01,#8a,#01,#89
	db #80,#05,#01,#88,#07,#08,#8d,#01
	db #02,#02,#00,#80,#04,#29,#30,#2b
	db #08,#2c,#10,#2b,#08,#2e,#10,#81
	db #89,#90,#04,#01,#8b,#07,#01,#ff
	db #8d,#00,#00,#00,#00,#80,#02,#84
	db #8c,#5b,#81,#86,#0c,#80,#02,#84
	db #8c,#5b,#81,#86,#03,#8b,#00,#00
	db #00,#8d,#10,#01,#03,#00,#89,#90
	db #00,#02,#80,#02,#92,#ff,#29,#10
	db #8c,#02,#2e,#10,#30,#30,#33,#10
	db #35,#10,#38,#10,#37,#10,#35,#10
	db #33,#10,#92,#01,#30,#10,#86,#0f
	db #81,#8c,#00,#8d,#00,#00,#00,#00
	db #86,#00,#89,#90,#00,#02,#8b,#01
	db #03,#04,#4d,#5a,#4f,#02,#50,#02
	db #52,#02,#54,#60,#92,#01,#4f,#5a
	db #4d,#02,#4b,#02,#4a,#02,#48,#60
	db #8b,#00,#00,#00,#8d,#08,#01,#02
	db #00,#84,#5f,#5b,#86,#07,#84,#5f
	db #5b,#86,#13,#84,#5f,#5b,#86,#0c
	db #84,#5f,#5b,#86,#00,#90,#74,#59
.l5a22 equ $ + 1
	db #83,#92,#01,#8d,#01,#02,#02,#00
	db #8a,#01,#89,#80,#04,#01,#88,#07
	db #10,#41,#10,#80,#03,#2e,#10,#30
	db #20,#33,#18,#33,#18,#81,#2e,#10
	db #30,#20,#33,#18,#33,#08,#89,#90
	db #04,#01,#80,#02,#84,#9f,#5b,#81
	db #86,#03,#80,#02,#84,#9f,#5b,#81
	db #86,#00,#80,#02,#84,#9f,#5b,#81
	db #86,#00,#80,#03,#84,#9f,#5b,#81
	db #11,#08,#18,#08,#1b,#08,#1d,#10
	db #20,#08,#16,#10,#1f,#10,#18,#10
	db #11,#08,#18,#08,#1b,#08,#1d,#10
	db #11,#08,#8d,#01,#04,#02,#00,#89
	db #90,#03,#01,#30,#10,#2e,#10,#2b
.l5a96 equ $ + 5
	db #10,#90,#22,#5a,#83,#92,#01,#8a
	db #01,#89,#80,#03,#01,#88,#07,#24
	db #32,#60,#88,#07,#20,#80,#02,#35
	db #10,#3a,#10,#3c,#10,#37,#08,#38
	db #08,#3f,#08,#37,#08,#3a,#08,#3f
	db #08,#8b,#0c,#01,#ff,#81,#8b,#18
	db #01,#ff,#35,#10,#3a,#10,#3c,#10
	db #8d,#01,#19,#00,#01,#8b,#00,#00
	db #00,#92,#ff,#89,#80,#02,#01,#88
	db #07,#00,#88,#06,#09,#29,#08,#29
	db #08,#29,#08,#24,#08,#24,#08,#24
	db #08,#8d,#00,#00,#00,#00,#88,#07
	db #20,#80,#04,#84,#c2,#5b,#81,#86
	db #03,#80,#04,#84,#c2,#5b,#81,#86
	db #00,#80,#04,#84,#c2,#5b,#81,#8b
	db #00,#00,#00,#88,#07,#24,#01,#0e
	db #88,#07,#24,#88,#07,#20,#8d,#08
	db #01,#02,#00,#89,#60,#00,#02,#84
	db #5f,#5b,#86,#07,#84,#5f,#5b,#86
	db #13,#84,#5f,#5b,#86,#0c,#44,#08
	db #41,#10,#43,#08,#3f,#08,#41,#08
	db #3f,#08,#3c,#08,#37,#08,#33,#08
	db #37,#08,#3c,#08,#44,#08,#41,#10
	db #43,#08,#44,#08,#46,#08,#48,#08
	db #43,#08,#3f,#08,#3c,#08,#3f,#02
	db #86,#00,#90,#96,#5a,#83,#44,#08
	db #41,#10,#43,#08,#3f,#08,#41,#08
	db #3f,#08,#3c,#08,#37,#08,#33,#08
	db #37,#08,#3c,#08,#44,#08,#41,#10
	db #43,#08,#44,#08,#46,#08,#48,#08
	db #43,#08,#3f,#08,#3c,#08,#3f,#08
	db #43,#08,#85,#29,#10,#2e,#10,#30
	db #10,#2b,#08,#2c,#08,#33,#08,#2b
	db #08,#2e,#08,#33,#08,#85,#11,#08
	db #18,#08,#1b,#08,#1d,#10,#20,#08
	db #16,#10,#1f,#10,#18,#10,#11,#08
	db #18,#08,#1b,#08,#1d,#10,#11,#08
	db #16,#10,#1f,#08,#18,#10,#20,#08
	db #85,#84,#f5,#5b,#8b,#05,#02,#02
	db #3c,#08,#3c,#08,#3c,#08,#8b,#07
	db #02,#02,#3c,#08,#8b,#08,#02,#02
	db #3c,#08,#84,#f5,#5b,#8b,#09,#02
	db #02,#3a,#08,#3a,#08,#8b,#08,#02
	db #02,#37,#08,#8b,#09,#02,#02,#38
	db #08,#3a,#08,#85,#8a,#01,#89,#b0
	db #01,#01,#88,#07,#20,#8e,#28,#01
	db #8c,#05,#8e,#07,#07,#8c,#00,#89
.l5c0d equ $ + 4
	db #90,#02,#01,#85,#91,#ff,#92,#01
	db #88,#07,#08,#8a,#01,#86,#fd,#89
	db #90,#00,#02,#8d,#08,#01,#02,#00
	db #46,#18,#89,#90,#00,#02,#92,#04
	db #8c,#02,#4b,#b8,#4f,#04,#50,#04
	db #52,#c0,#8c,#00,#8d,#08,#01,#02
	db #00,#92,#01,#80,#04,#40,#10,#43
	db #10,#48,#10,#4a,#08,#4c,#03,#4a
	db #03,#4c,#02,#4d,#08,#4d,#08,#4f
	db #03,#4d,#03,#4f,#02,#51,#08,#4f
	db #10,#4c,#10,#54,#10,#8d,#00,#00
	db #00,#00,#8b,#01,#03,#03,#51,#20
	db #8d,#08,#01,#02,#00,#8b,#00,#00
	db #00,#51,#08,#4d,#08,#81,#86,#01
	db #8d,#08,#01,#02,#00,#49,#c0,#8d
	db #00,#00,#00,#00,#8b,#01,#04,#04
	db #4b,#c0,#89,#94,#0f,#01,#8b,#00
	db #00,#00,#4c,#c0,#89,#60,#00,#02
	db #50,#02,#8c,#02,#4c,#0e,#8c,#00
	db #89,#70,#00,#02,#50,#02,#8c,#02
	db #4c,#0e,#8c,#00,#89,#80,#00,#02
	db #50,#02,#8c,#02,#4c,#0e,#8c,#00
	db #89,#90,#00,#02,#50,#02,#8c,#02
	db #4c,#0e,#8c,#00,#89,#a0,#00,#02
	db #50,#02,#8c,#02,#4c,#0e,#8c,#00
	db #89,#b0,#00,#02,#50,#02,#8c,#02
	db #4c,#0e,#8c,#00,#89,#c0,#00,#02
	db #50,#02,#8c,#02,#4b,#0e,#8c,#00
	db #89,#a0,#00,#02,#50,#02,#8c,#02
	db #4b,#0e,#8c,#00,#50,#02,#8c,#02
	db #4b,#0e,#8c,#00,#89,#80,#00,#02
	db #50,#02,#8c,#02,#4b,#0e,#8c,#00
	db #89,#70,#00,#02,#50,#02,#8c,#02
	db #4b,#0e,#8c,#00,#50,#02,#8c,#02
	db #4b,#0e,#8c,#00,#89,#60,#0a,#01
	db #49,#c0,#92,#01,#8d,#10,#01,#02
	db #00,#89,#00,#f2,#00,#49,#c0,#86
.l5d36 equ $ + 5
	db #fd,#90,#23,#5c,#83,#91,#ff,#92
	db #01,#88,#07,#10,#8a,#01,#89,#80
	db #00,#02,#86,#fd,#41,#18,#92,#ff
	db #8a,#01,#89,#80,#00,#02,#8b,#02
	db #03,#03,#46,#18,#8b,#00,#00,#00
	db #44,#04,#43,#04,#41,#04,#3f,#04
	db #3e,#04,#3c,#04,#8d,#08,#01,#02
	db #00,#3a,#08,#38,#08,#37,#08,#38
	db #08,#37,#08,#35,#08,#37,#08,#35
	db #04,#37,#04,#38,#08,#37,#04,#38
	db #04,#3a,#08,#38,#04,#3a,#04,#3c
	db #08,#3a,#04,#3c,#04,#3d,#08,#3c
	db #04,#3d,#04,#3f,#08,#3d,#04,#3f
	db #04,#41,#08,#3f,#04,#41,#04,#43
	db #08,#41,#04,#43,#04,#44,#08,#43
	db #04,#44,#04,#46,#08,#44,#08,#43
	db #08,#44,#08,#46,#08,#48,#08,#49
	db #08,#48,#03,#49,#03,#48,#02,#44
	db #08,#46,#08,#44,#03,#46,#03,#44
	db #02,#43,#08,#44,#08,#43,#03,#44
	db #03,#43,#02,#41,#08,#3f,#08,#3d
	db #03,#3f,#03,#3d,#02,#3c,#08,#92
	db #ff,#80,#02,#84,#dc,#5f,#81,#86
	db #09,#80,#02,#84,#dc,#5f,#81,#86
	db #01,#8d,#00,#00,#00,#00,#80,#02
	db #86,#01,#84,#ce,#5e,#84,#ce,#5e
	db #84,#55,#5f,#86,#fc,#84,#ce,#5e
	db #81,#86,#01,#84,#ce,#5e,#84,#ce
	db #5e,#91,#ff,#92,#01,#88,#07,#12
	db #01,#05,#88,#07,#10,#8d,#10,#01
	db #02,#00,#89,#00,#f2,#00,#44,#bb
	db #86,#fd,#8d,#00,#00,#00,#00,#90
.l5e34 equ $ + 3
	db #47,#5d,#83,#91,#ff,#92,#ff,#8a
	db #01,#89,#a0,#05,#01,#86,#fd,#8d
	db #08,#05,#02,#00,#88,#07,#24,#16
	db #18,#88,#07,#20,#89,#90,#05,#01
	db #80,#02,#1b,#10,#1b,#08,#27,#10
	db #22,#08,#1b,#10,#1d,#10,#1f,#10
	db #19,#10,#19,#08,#25,#08,#19,#08
	db #20,#08,#19,#10,#19,#08,#25,#10
	db #16,#08,#81,#80,#04,#18,#10,#1f
	db #08,#24,#10,#1f,#08,#22,#10,#1d
	db #10,#16,#10,#18,#10,#1a,#08,#1c
	db #10,#1f,#08,#16,#10,#15,#10,#13
	db #10,#81,#86,#01,#80,#08,#84,#bd
	db #5e,#81,#89,#90,#03,#01,#84,#bd
	db #5e,#89,#80,#03,#01,#84,#bd,#5e
	db #89,#70,#03,#01,#84,#bd,#5e,#89
	db #60,#03,#01,#84,#bd,#5e,#86,#fd
	db #90,#4d,#5e,#83,#19,#10,#19,#08
	db #25,#10,#19,#08,#19,#08,#20,#08
	db #23,#10,#20,#10,#85,#89,#90,#00
	db #02,#55,#08,#50,#04,#89,#60,#00
	db #02,#55,#04,#89,#90,#00,#02,#4c
	db #04,#89,#60,#00,#02,#50,#04,#89
	db #90,#00,#02,#49,#04,#89,#60,#00
	db #02,#4c,#04,#89,#90,#00,#02,#44
	db #04,#89,#60,#00,#02,#49,#04,#89
	db #90,#00,#02,#40,#04,#89,#60,#00
	db #02,#44,#04,#89,#90,#00,#02,#3d
	db #04,#89,#60,#00,#02,#40,#04,#89
	db #90,#00,#02,#40,#04,#89,#60,#00
	db #02,#3d,#04,#89,#90,#00,#02,#44
	db #04,#89,#60,#00,#02,#40,#04,#89
	db #90,#00,#02,#49,#04,#89,#60,#00
	db #02,#44,#04,#89,#90,#00,#02,#4c
	db #04,#89,#60,#00,#02,#49,#04,#89
	db #90,#00,#02,#50,#04,#89,#60,#00
	db #02,#4c,#04,#85,#89,#90,#00,#02
	db #53,#08,#50,#04,#89,#60,#00,#02
	db #53,#04,#89,#90,#00,#02,#4c,#04
	db #89,#60,#00,#02,#50,#04,#89,#90
	db #00,#02,#47,#04,#89,#60,#00,#02
	db #4c,#04,#89,#90,#00,#02,#44,#04
	db #89,#60,#00,#02,#47,#04,#89,#90
	db #00,#02,#40,#04,#89,#60,#00,#02
	db #44,#04,#89,#90,#00,#02,#3b,#04
	db #89,#60,#00,#02,#40,#04,#89,#90
	db #00,#02,#40,#04,#89,#60,#00,#02
	db #3b,#04,#89,#90,#00,#02,#44,#04
	db #89,#60,#00,#02,#40,#04,#89,#90
	db #00,#02,#47,#04,#89,#60,#00,#02
	db #44,#04,#89,#90,#00,#02,#4c,#04
	db #89,#60,#00,#02,#47,#04,#89,#90
	db #00,#02,#50,#04,#89,#60,#00,#02
	db #4c,#04,#85,#3c,#10,#40,#10,#43
	db #10,#45,#08,#46,#03,#45,#03,#46
	db #02,#48,#08,#4a,#08,#4c,#03,#4a
	db #03,#4c,#02,#4d,#08,#4c,#10,#48
	db #10,#4f,#10,#8d,#00,#00,#00,#00
	db #8b,#02,#03,#03,#4d,#20,#8d,#08
	db #02,#01,#00,#8b,#00,#00,#00,#4d
.l6015 equ $ + 4
	db #08,#4a,#08,#85,#00,#71,#60,#ff
.l601d equ $ + 4
.l6019
	db #02,#ba,#60,#ff,#00,#ec,#60,#04
.l6024 equ $ + 3
	db #13,#61,#ff,#00,#35,#61,#04,#65
.l602b equ $ + 2
	db #61,#ff,#00,#98,#61,#04,#c8,#61
.l6032 equ $ + 1
	db #ff,#00,#fb,#61,#02,#30,#62,#04
.l603c equ $ + 3
	db #67,#62,#ff,#00,#9e,#62,#02,#cf
.l6046 equ $ + 5
	db #62,#04,#43,#63,#ff,#00,#21,#64
.l6050 equ $ + 7
	db #02,#74,#64,#04,#c2,#64,#ff,#00
.l6057 equ $ + 6
	db #f0,#64,#04,#53,#65,#ff,#02,#9c
.l605f equ $ + 6
.l605b equ $ + 2
	db #65,#ff,#02,#d8,#65,#ff,#02,#33
.l6063 equ $ + 2
	db #66,#ff,#00,#a5,#66,#02,#d1,#66
.l606d equ $ + 4
	db #04,#fd,#66,#ff,#04,#29,#67,#ff
	db #8a,#01,#89,#a0,#01,#01,#8d,#00
	db #00,#00,#00,#8c,#00,#82,#02,#8b
	db #0c,#01,#01,#88,#07,#00,#88,#06
	db #04,#36,#8a,#00,#88,#06,#07,#33
	db #88,#06,#09,#30,#88,#0a,#04,#2d
	db #88,#06,#0c,#2a,#88,#06,#07,#27
	db #88,#06,#04,#24,#8d,#00,#00,#00
	db #00,#82,#00,#8b,#00,#00,#00,#88
	db #07,#09,#8a,#01,#89,#00,#00,#00
	db #83,#8a,#01,#8d,#00,#00,#00,#00
	db #8c,#00,#8b,#0b,#01,#01,#82,#00
	db #88,#07,#00,#89,#40,#00,#00,#88
	db #06,#05,#36,#05,#89,#20,#11,#00
	db #88,#06,#08,#2c,#05,#88,#07,#12
	db #8b,#00,#00,#00,#8a,#01,#89,#00
	db #00,#00,#83,#8a,#01,#89,#a0,#01
	db #01,#8d,#00,#00,#00,#00,#8c,#00
	db #8b,#00,#00,#00,#82,#00,#88,#07
	db #08,#49,#0f,#8d,#00,#00,#00,#00
	db #88,#07,#09,#8a,#00,#89,#00,#00
	db #00,#83,#8a,#01,#89,#a0,#02,#01
	db #8d,#00,#00,#00,#00,#8c,#00,#8b
	db #00,#00,#00,#82,#00,#88,#07,#20
	db #54,#0f,#88,#07,#24,#8a,#01,#89
	db #00,#00,#00,#83,#8a,#01,#89,#a0
	db #05,#01,#8d,#00,#00,#00,#00,#8c
	db #00,#8b,#00,#00,#00,#82,#04,#88
	db #07,#08,#46,#8a,#00,#42,#3e,#45
	db #41,#3d,#44,#40,#3c,#43,#3f,#3b
	db #82,#00,#88,#07,#09,#8a,#00,#89
	db #00,#00,#00,#83,#8a,#01,#89,#70
	db #09,#01,#8d,#00,#00,#00,#00,#8c
	db #00,#8b,#00,#00,#00,#82,#00,#88
	db #07,#20,#46,#09,#8a,#00,#82,#04
	db #42,#3e,#45,#41,#3d,#44,#40,#3c
	db #43,#3f,#3b,#82,#00,#88,#07,#24
	db #8a,#00,#89,#00,#00,#00,#83,#8a
	db #01,#89,#a0,#03,#01,#8d,#01,#01
	db #02,#00,#8c,#00,#8b,#00,#00,#00
	db #82,#02,#88,#07,#08,#32,#8a,#00
	db #38,#3e,#44,#4a,#50,#4a,#82,#00
	db #88,#07,#09,#8d,#00,#00,#00,#00
	db #8a,#00,#89,#00,#00,#00,#83,#8a
	db #01,#89,#70,#05,#01,#8d,#01,#01
	db #02,#00,#8c,#00,#8b,#00,#00,#00
	db #82,#00,#88,#07,#20,#32,#09,#8a
	db #00,#82,#02,#38,#3e,#44,#4a,#50
	db #4a,#82,#00,#88,#07,#24,#8d,#00
	db #00,#00,#00,#8a,#01,#89,#00,#00
	db #00,#83,#8a,#01,#89,#a0,#03,#01
	db #8d,#00,#00,#00,#00,#8c,#00,#8b
	db #00,#00,#00,#82,#02,#88,#07,#08
	db #50,#8a,#00,#54,#52,#59,#53,#51
	db #58,#52,#50,#57,#51,#4f,#82,#00
	db #88,#07,#09,#8d,#00,#00,#00,#00
	db #8a,#01,#89,#00,#00,#00,#83,#8a
	db #01,#89,#70,#05,#01,#8d,#00,#00
	db #00,#00,#8c,#00,#8b,#00,#00,#00
	db #82,#00,#88,#07,#12,#01,#09,#88
	db #07,#10,#82,#02,#50,#8a,#00,#54
	db #52,#59,#53,#51,#58,#52,#50,#57
	db #51,#4f,#82,#00,#88,#07,#12,#8a
	db #01,#89,#00,#00,#00,#83,#8a,#01
	db #89,#40,#05,#01,#8d,#00,#00,#00
	db #00,#8c,#00,#8b,#00,#00,#00,#82
	db #00,#88,#07,#24,#01,#12,#88,#07
	db #20,#82,#02,#50,#8a,#00,#54,#52
	db #59,#53,#51,#58,#52,#50,#57,#51
	db #4f,#82,#00,#88,#07,#24,#8a,#01
	db #89,#00,#00,#00,#83,#88,#07,#08
	db #8d,#00,#00,#00,#00,#8b,#00,#00
	db #00,#82,#00,#8c,#00,#8a,#01,#89
	db #70,#00,#01,#55,#01,#50,#01,#88
	db #07,#09,#50,#16,#88,#07,#08,#50
	db #01,#4b,#01,#88,#07,#09,#4b,#16
	db #88,#07,#08,#90,#b4,#62,#8a,#01
	db #8d,#00,#00,#00,#00,#8b,#00,#00
	db #00,#82,#00,#8c,#00,#88,#07,#12
	db #28,#60,#88,#07,#10,#88,#07,#12
	db #28,#60,#88,#07,#10,#8a,#01,#8d
	db #10,#05,#03,#00,#89,#96,#00,#01
	db #15,#c0,#14,#c0,#0d,#c0,#89,#50
	db #00,#02,#8d,#01,#05,#03,#00,#0d
	db #30,#89,#40,#00,#02,#8d,#01,#05
	db #03,#00,#0d,#30,#89,#30,#00,#02
	db #8d,#01,#05,#03,#00,#0d,#30,#89
	db #20,#00,#02,#8d,#01,#05,#03,#00
	db #0d,#30,#8d,#00,#00,#00,#00,#89
	db #10,#10,#00,#84,#f3,#63,#89,#00
	db #00,#02,#88,#07,#12,#28,#6c,#90
	db #e6,#62,#91,#ff,#92,#ff,#8a,#01
	db #89,#40,#00,#02,#8d,#00,#00,#00
	db #00,#8b,#00,#00,#00,#82,#00,#8c
	db #00,#88,#07,#24,#28,#c0,#88,#07
	db #20,#8a,#01,#80,#07,#89,#10,#33
	db #00,#8d,#05,#01,#00,#00,#3f,#0c
	db #89,#40,#03,#01,#8d,#05,#01,#00
	db #01,#40,#0c,#81,#89,#10,#33,#00
	db #8d,#05,#01,#00,#00,#3f,#0c,#89
	db #40,#03,#01,#8d,#00,#00,#00,#00
	db #40,#0c,#80,#08,#89,#10,#33,#00
	db #8d,#05,#01,#00,#00,#38,#0c,#89
	db #40,#03,#01,#8d,#05,#01,#00,#01
	db #39,#0c,#81,#89,#64,#0f,#01,#8d
	db #18,#01,#03,#00,#38,#c0,#89,#30
	db #00,#02,#8d,#01,#01,#03,#00,#38
	db #55,#89,#20,#00,#02,#8d,#01,#01
	db #03,#00,#38,#46,#89,#10,#00,#02
	db #8d,#01,#01,#03,#00,#38,#3c,#8d
	db #00,#00,#00,#00,#89,#00,#11,#00
	db #84,#f3,#63,#89,#00,#00,#02,#88
	db #07,#24,#28,#b5,#88,#07,#20,#90
	db #62,#63,#82,#05,#80,#03,#86,#00
	db #84,#11,#64,#86,#fe,#84,#11,#64
	db #86,#fc,#84,#11,#64,#86,#fa,#84
	db #11,#64,#81,#86,#00,#82,#00,#85
	db #38,#3a,#3b,#38,#3a,#3b,#3d,#3a
	db #3b,#3d,#3f,#3b,#3d,#3f,#41,#85
	db #8a,#01,#89,#b0,#03,#01,#8d,#00
	db #00,#00,#00,#8c,#00,#8b,#00,#00
	db #00,#82,#00,#88,#07,#00,#32,#01
	db #8c,#05,#07,#09,#8c,#00,#89,#80
	db #03,#01,#34,#01,#8c,#05,#09,#09
	db #8c,#00,#89,#50,#03,#01,#36,#01
	db #8c,#05,#0b,#09,#8c,#00,#89,#30
	db #03,#01,#38,#01,#8c,#05,#0d,#09
	db #8c,#00,#82,#00,#88,#07,#09,#8d
	db #00,#00,#00,#00,#8a,#01,#89,#00
	db #00,#00,#83,#8a,#01,#8d,#00,#00
	db #00,#00,#8c,#00,#8b,#00,#00,#00
	db #82,#00,#88,#07,#10,#89,#90,#03
	db #01,#38,#01,#8c,#05,#53,#09,#8c
	db #00,#89,#60,#03,#01,#39,#01,#8c
	db #05,#54,#09,#8c,#00,#89,#40,#03
	db #01,#3a,#01,#8c,#05,#55,#09,#8c
	db #00,#89,#20,#03,#01,#3b,#01,#8c
	db #05,#56,#09,#8c,#00,#82,#00,#88
	db #07,#12,#8a,#01,#89,#00,#00,#00
	db #83,#8a,#01,#89,#72,#01,#01,#8d
	db #00,#00,#00,#00,#8c,#00,#8b,#00
	db #00,#00,#82,#00,#88,#07,#20,#8d
	db #01,#01,#00,#01,#50,#28,#8d,#00
	db #00,#00,#00,#82,#00,#88,#07,#24
	db #8a,#01,#89,#00,#00,#00,#83,#8a
	db #01,#89,#00,#22,#00,#8d,#00,#00
	db #00,#00,#8c,#00,#8b,#00,#00,#00
	db #82,#00,#88,#07,#00,#8d,#01,#02
	db #03,#00,#42,#14,#8d,#00,#00,#00
	db #00,#89,#a0,#03,#01,#3e,#01,#8c
	db #02,#09,#0b,#8c,#00,#89,#70,#03
	db #01,#40,#01,#8c,#02,#09,#0b,#8c
	db #00,#89,#50,#03,#01,#42,#01,#8c
	db #02,#0b,#0b,#8c,#00,#89,#20,#03
	db #01,#44,#01,#8c,#02,#0d,#0b,#8c
	db #00,#82,#00,#88,#07,#09,#8d,#00
	db #00,#00,#00,#8a,#01,#89,#00,#00
	db #00,#83,#8a,#01,#89,#00,#22,#00
	db #8d,#00,#00,#00,#00,#8c,#00,#8b
	db #00,#00,#00,#82,#00,#88,#07,#20
	db #8d,#01,#01,#03,#01,#4e,#14,#8d
	db #04,#01,#00,#01,#89,#a0,#03,#01
	db #4a,#0c,#89,#70,#03,#01,#4c,#0c
	db #89,#50,#03,#01,#4e,#0c,#89,#20
	db #03,#01,#50,#0c,#88,#07,#24,#8d
	db #00,#00,#00,#00,#8a,#01,#89,#00
	db #00,#00,#83,#8a,#01,#8d,#00,#00
	db #00,#00,#8c,#00,#8b,#00,#00,#00
	db #82,#01,#88,#07,#00,#89,#b0,#01
	db #01,#88,#06,#09,#2e,#8a,#00,#88
	db #06,#0b,#28,#88,#06,#0d,#23,#88
	db #06,#0f,#1c,#88,#06,#0b,#18,#88
	db #06,#07,#12,#82,#00,#88,#07,#12
	db #8a,#01,#89,#00,#00,#00,#83,#8a
	db #01,#8d,#00,#00,#00,#00,#8c,#00
	db #8b,#00,#00,#00,#82,#01,#88,#07
	db #00,#89,#b0,#01,#01,#88,#06,#09
	db #28,#8a,#00,#88,#06,#0b,#23,#88
	db #06,#0d,#1e,#88,#06,#0f,#19,#88
	db #06,#0c,#14,#88,#06,#09,#0f,#88
	db #06,#07,#0a,#88,#06,#06,#07,#88
	db #07,#02,#82,#00,#88,#06,#05,#01
	db #02,#88,#06,#04,#01,#02,#88,#06
	db #03,#01,#02,#88,#06,#02,#01,#06
	db #88,#07,#12,#8a,#01,#89,#00,#00
	db #00,#83,#8a,#01,#8d,#00,#00,#00
	db #00,#8c,#00,#8b,#00,#00,#00,#82
	db #01,#88,#07,#00,#89,#c0,#03,#01
	db #88,#06,#09,#28,#8a,#00,#88,#06
	db #0b,#24,#88,#06,#0c,#20,#88,#06
	db #0d,#1b,#88,#06,#0e,#17,#88,#06
	db #0f,#13,#88,#06,#0c,#0f,#88,#06
	db #0a,#0c,#88,#06,#08,#09,#88,#06
	db #06,#06,#88,#07,#02,#82,#02,#88
	db #06,#07,#01,#88,#06,#06,#01,#88
	db #06,#05,#01,#88,#06,#04,#01,#88
	db #06,#03,#01,#88,#06,#02,#01,#88
	db #06,#01,#01,#82,#00,#88,#06,#01
	db #01,#0d,#88,#07,#12,#8a,#01,#89
	db #00,#00,#00,#83,#8a,#01,#89,#a0
	db #04,#01,#8c,#00,#8b,#00,#00,#00
	db #82,#00,#88,#07,#08,#8d,#01,#02
	db #00,#01,#42,#1e,#8d,#00,#00,#00
	db #00,#88,#07,#09,#8d,#00,#00,#00
	db #00,#8a,#01,#89,#00,#00,#00,#83
	db #8a,#01,#89,#a0,#04,#01,#8c,#00
	db #8b,#00,#00,#00,#82,#00,#88,#07
	db #00,#8d,#01,#27,#00,#01,#30,#1e
	db #8d,#00,#00,#00,#00,#88,#07,#12
	db #8d,#00,#00,#00,#00,#8a,#01,#89
	db #00,#00,#00,#83,#8a,#01,#89,#a0
	db #04,#01,#8c,#00,#8b,#00,#00,#00
	db #82,#00,#88,#07,#20,#8d,#01,#02
	db #00,#01,#4e,#1e,#8d,#00,#00,#00
	db #00,#88,#07,#24,#8d,#00,#00,#00
	db #00,#8a,#01,#89,#00,#00,#00,#83
	db #8a,#01,#89,#20,#00,#00,#8d,#00
	db #00,#00,#00,#8c,#00,#8b,#00,#00
	db #00,#82,#00,#88,#07,#00,#36,#01
	db #8a,#00,#37,#01,#39,#01,#3a,#01
	db #3b,#01,#3d,#01,#88,#07,#24,#8a
	db #01,#89,#00,#00,#00,#83
;
.music_info
	db "Gauntlet 3 (1990)(Tengen)(Geof and Tim Follin)",0
	db "",0

	read "music_end.asm"
