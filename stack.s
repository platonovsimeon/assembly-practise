.global _main
.align 2
.extern printf

_main:
    // Store numbers as chars in the stack in the following order: '3', '1', '2'
    mov X1, #'3'
    mov X2, #'1'
    mov X3, #'2'
    sub sp, sp, #16
    str X1, [sp]
    sub sp, sp, #16
    str X2, [sp]
    sub sp, sp, #16
    str X3, [sp]

    //Move stack pointer to the position of char '1' and print it
    add sp, sp, #16
    mov X0, #1
    mov X1, sp
    mov X2, #1
    mov X16, #4
    svc 0

    //Move stack pointer to the position of char '2' and print it
    sub sp, sp, #16
    mov X0, #1
    mov X1, sp
    mov X2, #1
    mov X16, #4
    svc 0

    //Move stack pointer to the position of char '3' and print it
    add sp, sp, #32
    mov X0, #1
    mov X1, sp
    mov X2, #1
    mov X16, #4
    svc 0

    // Restore stack pointer
    add sp, sp, #16

    // Terminate
    mov X16, #1
    svc 0