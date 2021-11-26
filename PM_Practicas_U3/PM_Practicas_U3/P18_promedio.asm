TITLE promedio
; DESCRPICIÓN
; Autore(s) :
;       Catedratico:   Dr. Alejandro Garcia
; Semestre: 8vo Semestre ISC

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data

; Área de Declaración de Variables
txtdato db "Ingrese un dato: ",0
total db "el resultado es : ", 0
.code

main18 PROC

;Lógica del Programa
   mov ecx, 4
   ciclo:
        ImpPantallaLn "Ingrese un dato  "; mensaje
        call readint
        push eax

   loop ciclo

        pop eax
        pop ecx

        mov ebx, 2 ; divisor
		mov edx, 0   ; para evitar el overflow
        add eax, ecx
		div ebx
     
   call crlf
   ImpPantallaLn "el resultado es   "; mensaje
   call writedec

		exit		
	main18 ENDP
	END main18