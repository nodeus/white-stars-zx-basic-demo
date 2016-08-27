;
;  basic music player 48K ver.0.1		copyright (c) 2015 introspec
;

			DEVICE	ZXSPECTRUM48

; measuring the lengths of the player and the music

			ORG	0
			MODULE	MEASURE_LEN
			INCLUDE	"pt3play2.asm"
			ENDMODULE
PLAYER_SIZE:		EQU	$

			ORG	0
			INCBIN	"music.pt3"
MUSIC_LEN:		EQU	$

; the player is then situated in a way that ensures that no bytes are wasted

			ORG	65024-MUSIC_LEN-PLAYER_SIZE

PlayerBegin:		EQU	$

			EXPORT	PlayerBegin

			DISPLAY	"* music occupies: ", /D, $, " - 65535"

DataPT3:		INCBIN	"music.pt3"
			INCLUDE	"pt3play2.asm"

			EXPORT	START

PlayerEnd:		EQU	$

; interrupt vector

			ORG	#FE00

			DS	257, #FF
			DS	65536-#FE00-257, 0	; clear the UDG area

			ORG	#FE00+257

;			DISPLAY	"* INIT: USR ", /D, $
;
;PlayerInit:		di
;			call	PlayerBegin+0
;			ld	a, #FE
;			ld	i, a
;			im	2
;			ei
;			ret

			DISPLAY	"* PLAY: POKE ", /D, $, ", 0"

IntHandler:		ret

			push af, bc, de, hl
			exa : exx
			push af, bc, de, hl

        XOR A
	LD (AddToEn),A
	LD (AYREGS+Mixer),A
	DEC A
	LD (AYREGS+EnvTp),A
	LD HL,DelyCnt
	DEC (HL)
	JR NZ,PL2
	LD HL,ChanA+NtSkCn
	DEC (HL)
	JR NZ,PL1B
AdInPtA	EQU $+1
	LD BC,#0101
	LD A,(BC)
	AND A
	JR NZ,PL1A
	LD D,A
	LD (Ns_Base),A
	LD HL,(CrPsPtr)
	INC HL
	LD A,(HL)
	INC A
	JR NZ,PLNLP
	CALL CHECKLP
LPosPtr	EQU $+1
	LD HL,#2121
	LD A,(HL)
	INC A
PLNLP	LD (CrPsPtr),HL
	DEC A
	ADD A,A
	LD E,A
	RL D
PatsPtr	EQU $+1
	LD HL,#2121
	ADD HL,DE
	LD DE,(MODADDR)
	LD (PSP_+1),SP
	LD SP,HL
	POP HL
	ADD HL,DE
	LD B,H
	LD C,L
	POP HL
	ADD HL,DE
	LD (AdInPtB),HL
	POP HL
	ADD HL,DE
	LD (AdInPtC),HL
PSP_	LD SP,#3131
PL1A	LD IX,ChanA+12
	CALL PTDECOD
	LD (AdInPtA),BC

PL1B	LD HL,ChanB+NtSkCn
	DEC (HL)
	JR NZ,PL1C
	LD IX,ChanB+12
AdInPtB	EQU $+1
	LD BC,#0101
	CALL PTDECOD
	LD (AdInPtB),BC

PL1C	LD HL,ChanC+NtSkCn
	DEC (HL)
	JR NZ,PL1D
	LD IX,ChanC+12
AdInPtC	EQU $+1
	LD BC,#0101
	CALL PTDECOD
	LD (AdInPtC),BC

Delay	EQU $+1
PL1D	LD A,#3E
	LD (DelyCnt),A

PL2	LD IX,ChanA
	LD HL,(AYREGS+TonA)
	CALL CHREGS
	LD (AYREGS+TonA),HL
	LD A,(Ampl)
	LD (AYREGS+AmplA),A
	LD IX,ChanB
	LD HL,(AYREGS+TonB)
	CALL CHREGS
	LD (AYREGS+TonB),HL
	LD A,(Ampl)
	LD (AYREGS+AmplB),A
	LD IX,ChanC
	LD HL,(AYREGS+TonC)
	CALL CHREGS
;	LD A,(Ampl) ;Ampl = AYREGS+AmplC
;	LD (AYREGS+AmplC),A
	LD (AYREGS+TonC),HL

		call CONTPLAY

;			call PlayerBegin+5
			pop hl, de, bc, af
			exx : exa
			pop hl, de, bc, af
			ret

			ORG	65524
			push	ix
			call	IntHandler
			pop	ix
			jp	56

			ORG	65535
			db	24			; 0 DI means that 65535 JR gives JR 65524

			IF _ERRORS = 0
			SAVEBIN	"player.bin", PlayerBegin, $-PlayerBegin
			ELSE
			SHELLEXEC "cmd /q /c del /q player.bin"
			ENDIF
