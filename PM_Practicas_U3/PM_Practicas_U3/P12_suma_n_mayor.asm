TITLE numero mayor a 

; Autore(s) :
;      Catedratico:   Dr. Alejandro Garcia
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICIÓN
INCLUDE Irvine32.inc
INCLUDE MACROS.inc
.data
; Área de Declaración de Variables

esmayo db "es mayor", 0
esmenor db "no es mayor",0

.code

main12 PROC

;Lógica del Programa
   mov ecx, 3

   ciclo:
        ImpPantallaLn "ingrese un dato  "; mensaje
        call readdec
        push eax

  loop ciclo

        pop ebx
        pop eax
        pop ecx
        add eax, ecx
        call crlf

        ImpPantallaLn "total es   "; mensaje
        call writedec
        cmp eax, ebx
        ja  mayor
mayor:
       ImpPantallaLn "es mayor   "; mensaje
       call writedec
       jmp salir
salir: 
        call crlf

		exit		
	main12 ENDP
	END main12