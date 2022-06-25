.text
main:   
		lw 		t6,	8(x0)
		addi	t6, t6, 12
		sw		t6, 16(x0)
        add		t6, x0, x0
        beq		t6, x0, finish

deadend: beq	t6, x0, deadend        

finish:
        lw		t4, 0(x0)
        lw		t5, 4(x0)
        sw		t5, 0xFF(t4)
        beq		t6, x0, deadend


