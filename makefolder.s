.global _main
.align 2

_main:
    B _folder
    B _terminate

_folder:
    adr X0, folderpath
    mov x1, #365
    mov X16, #136
    svc 0

_terminate:
    mov X16, #1
    svc 0

folderpath: .ascii "/Users/simeon/Desktop/testfolder"