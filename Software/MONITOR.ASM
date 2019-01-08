; POLY-COMPUTER 880
;
; Monitorprogramm des POLY-COMPUTER
; Bedienhandbuch, S. 87-156
;
; assemblieren mit Arnold-Assembler www.alfsembler.de
; vp120210
;
	cpu	z80

;*************************************************************************
; 
;*************************************************************************

	INCLUDE	EINTRITT.ASM
	INCLUDE KONSOLE.ASM
	INCLUDE AKTIONEN.ASM
	INCLUDE RAM.ASM
	INCLUDE LERNSYSTEMEQU.ASM

; Achtung: Es fehlen noch die Prüfsummen
;03FC: 4A 5C FE 21
;13FC: 72 36 FE 22
;s.a. ROM_TEST.asm

	END
