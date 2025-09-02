;
; Blink_PWM.asm
;
; Author : NellanJimms
;

.include "m328pdef.inc"

.cseg
.org 0x0000

start: 
	ldi r16, (1<<PORTB1)
	out DDRB, r16
	ldi r16, 0xC2
	sts TCCR1A, r16
	ldi r16, 0x1B
	sts TCCR1B, r16
	ldi r16, HIGH(5000)
	ldi r17, LOW(5000)
	sts ICR1H, r16
	sts ICR1L, r17
	ldi r16, HIGH(3000)
	ldi r17, LOW(3000)
	sts OCR1AH, r16
	sts OCR1AL, r17
	rjmp start