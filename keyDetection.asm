;6502 - Key Detection
CLD
keyDetect:
    JSR wait
    LDX $FF
    CPX $77
    BEQ up
    CPX $61
    BEQ left
    CPX $64
    BEQ right
    CPX $73
    BEQ down
    LDA #$00
    STA $FF
    JMP keyDetect

up:
    LDA #$01
    STA $0201
    JMP keyDetect
down:
    LDA #$01
    STA $0221
    JMP keyDetect
left:
    LDA #$01
    STA $0220
    JMP keyDetect
right:
    LDA #$01
    STA $0222
    JMP keyDetect

wait:
    ASL $FFFF,X ;ASL in Absolute Offset mode takes a whopping 7 cycles,
    ASL $FFFF,X ;perfect for delays. Here, address $FFFF is unused.
    ASL $FFFF,X
    ASL $FFFF,X
    ASL $FFFF,X
    ASL $FFFF,X
    ASL $FFFF,X
    ASL $FFFF,X
    ASL $FFFF,X
    ASL $FFFF,X
    ASL $FFFF,X
    ASL $FFFF,X
    ASL $FFFF,X
    RTS