; 
; Base Author:  Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]
; 
; Purpose - to learn about the following:
; 	- comments
;	- dumping registers
;	- printing empty lines
;	- instructions: mov, add, sub, inc/dec

%include "asm_io.inc"

; initialized data
segment .data

; uninitialized data
segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

		; TODO: add code
        

        ;;; MOVING
        ; dump_regs 1
        ; call print_nl

        ; mov eax, 0 ; making EAX = 0
        ; mov ah, 18 ; AH = 18
        ; mov al, 0BAH ; AL = BA (hex)
        ; dump_regs 2
        ; call print_nl

        ; mov eax, 0BEEFCAFEH ; EAX = BEEFCAFE
        ; dump_regs 3

        ; mov eax, 3 ; eax = 3
        ; mov ebx, 4 ; ebx = 4
        ; dump_regs 1 ; dump registers
        ; call print_nl ; new line for format


        ;;; ADD EXCERCISE
        ; add eax, ebx ; eax += ebx, eax = 7
        ; dump_regs 2 ; dump registers

        ; mov eax, 40 ; eax = 40
        ; mov ebx, 2 ; ebx = 2
        ; dump_regs 1 ; dump registers
        ; call print_nl ; new line for format

        ; add ebx, eax ; ebx += eax, ebx = 42
        ; dump_regs 2 ; dump registers

        ;;; SUBTRACT & INC
        ; mov eax, 10
        ; mov ebx, 4
        ; dump_regs 1

        ; sub eax, ebx ; eax -= ebx (6)
        ; dump_regs 2

        ; inc ebx ; ebx++ (5)
        ; dump_regs 3

        ;;; EXERCISE
        ; mov eax, 16 ; eax = 16
        ; mov ebx, 4 ; ebx = 4
        ; dump_regs 1 ; dump registers
        ; call print_nl

        ; sub eax, ebx ; eax -= ebx (12)
        ; dump_regs 2 ; dump registers
        ; call print_nl

        ; mov ecx, eax ; ecx = eax (12)
        ; dump_regs 3 ; dump registers
        ; call print_nl

        ; inc ecx ; ecx++ (1)
        ; dump_regs 4 ; dump registers
        ; call print_nl

        move eax, 12
        move ebx, 0
        dump_regs 1

        add eax, ebx
        add eax, ebx
        add eax, ebx
        add eax, ebx
        dump_regs 2

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


