mvi r0 #128     ; should output 10100xxx 10000000
beq r0 r0 -1   ; should output 1100000x 11111111
beq r0 r0 -2   ; should output 1100000x 11111110
beq r0 r0 2    ; should output 1100000x 00000010
