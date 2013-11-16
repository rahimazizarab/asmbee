section .text           ; declaring our .text segment
                global  _start  ; telling where program execution should start

_start:                 ; this is where code starts getting exec'ed

        push   ebp
        mov    ebp,esp
        sub    esp,0x8
        call   8049040 <strcpy@plt+0x34>
        nop
        call   80490a0 <strcpy@plt+0x94>
        call   808cf90 <getopt+0x54cc>
        leave  
        ret    


