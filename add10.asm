LDA #$00
LDX #$00
; adding 10
mainloop:
ADC #$0A
STA $0200,X
INX
CPX #$A0
BNE mainloop