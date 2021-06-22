; ----------------------------------------------------
; -- Title : asm_functions demo.
; -- Purpose : demo of C calling ASM and ASM calling C
; ----------------------------------------------------

; -- References to C defined variables and pointers
	XREF    _currentMusicFrame
	XREF    _totalMusicFrames
	XREF    _musicData

; -- Declaring ASM functions to be called from C	
	XDEF    _asm_timerA_Routine

; -- Equates
PSG_ADDRESS_REGISTER 	EQU $FF8800
PSG_ADDRESS_WRITE_DATA 	EQU $FF8802	

; ------------------------------------------------------------------------------
; -- Implementation of  : _asm_timerA_Routine
; -- Description : timed exception routine (Timer A) to send PSG register values
; --               in order to play some sound (and music).
; ------------------------------------------------------------------------------
_asm_timerA_Routine:
    MOVEM.L		D0-A6,-(SP)         ; saves registers
; --- Let's test if music is over
    MOVE.L 	_currentMusicFrame, D0       
	MOVE.L 	_totalMusicFrames, D1
    CMP.L  	D0,D1                   ; if _currentMusicFrame == _totalMusicFrames
    BEQ   	dont_play           	; if music is over, pass over the routine call
; --- begin play	
	MOVE.L _musicData, A0            ; set base pointer to _musicData
	ADDA.L  D0, A0                   ; move the base pointer to _currentMusicFrame offset (D0)
	MOVE.L 	#13,D0				     ; 14 registers to write to YM-2149 (R0 to R13). 
	MOVE.L  #0,D2                    ; register index (0 to 13)
 ; --- begin loop over 14 PSG registers
loop_write_psg_register:
	MOVEA.B D2, PSG_ADDRESS_REGISTER     	; write the register number
	MOVEA.B (A0), PSG_ADDRESS_WRITE_DATA	; write the data at the adress
	ADDQ.L  #1, D2
	ADDA.L  D1,A0  
	DBRA    D0, loop_write_psg_register     ; decrement D0. If D0 >= 0 then loop.
; --- end loop. A tune frame has been sent to the YM2149	
	ADDQ.L      #1,(_currentMusicFrame)     ; incrementing currentFrame
dont_play:	
	BCLR.B 	#5, $FFFFFA0F     	; effacer l'interruption en service
	MOVEM.L	(SP)+,D0-A6   		; restore registers
	RTE                         ; Return from exception
; ------------------------------------------------------------------------------

	
