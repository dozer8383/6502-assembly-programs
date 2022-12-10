;6502 - DrawSprite.asm
;only draws a 1x8 sprite but still epic
;also the sprite is mirrored
LDA #%11101101
LDX #$00
STA $00
loop:
    ;bit masking and addressing screen
    LDA $00
    AND #%00000001
    STA $0200, X ;offset so that we address a new screen pixel every time
    ;shifting bits and storing changes 
    LDA $00
    LSR A ;shifting makes sure that the pixel bit is always in pos. 0 
    STA $00
    INX
    CPX #$08 ;$8 because our sprite is 8 pixels wide
    BNE loop

