;a small template to make any code loop (of course, as long as it doesn't interfere with the X register).
;Simply change the value of CPX to however many times you want it to loop.

repeat:
;insert code here
INX
CPX #$06
BEQ repeat

;for an infinite loop, remove INX (still making sure that the X register is not being used by your code)
