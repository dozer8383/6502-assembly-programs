;6502 Rainbow
colors:
LDA #$01 ;White
STA $00
LDA #$0f ;Light grey
STA $01
LDA #$0c ;Grey
STA $02
LDA #$0b ;Dark grey
STA $03
LDA #$00 ;Black
STA $04
LDA #$09 ;Brown
STA $05
LDA #$02 ;red
STA $06
LDA #$0a ;Light red
STA $07
LDA #$08 ;orange
STA $08
LDA #$07 ;yellow
STA $09
LDA #$0d ;Light green
STA $0a
LDA #$05 ;green
STA $0b
LDA #$03 ;Cyan
STA $0c
LDA #$06 ;blue
STA $0d
LDA #$0E ;light blue
STA $0e
LDA #$04 ;purple
STA $0f

LDA #$00
LDX #$00
loop:
LDA $0000, X
STA $0200, X
INX
CPX #$10
BNE loop