; Setup
mvi r2 #0       ;sum=0
mvi r3 #0       ;zero
mvi r0 #3       ;ptr=N
mv r1 [r0]      ;ctr

; Add
beq r1 r3 done
loop:
addi r0 #1      ;ptr++
add r2 [r0]     ;sum+=[ptr]
subi r1 #1      ;ctr--
blt r3 r1 loop
done:
mvi r0 #3       ;ptr=N
mv [r0] r2      ;[ptr]=sum

; halt
mvi r0 #2       ;halt flag
mvi r1 #1       ;true
mv [r0] r1      ;halt
