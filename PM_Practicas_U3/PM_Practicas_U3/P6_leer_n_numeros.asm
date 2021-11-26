TITLE obtener el mayor numero

; DESCRPICIÓN
; Autore(s) :
;       Catedratico:   Dr. Alejandro Garcia
; Semestre: 8vo Semestre ISC

INCLUDE Irvine32.inc
INCLUDE MACROS.inc
.data
; Área de Declaración de Variables

mayor dword 1000

.code
main6 PROC    
        ;Lógica del Programa

        ImpPantallaLn "ingrese el totaol de repeticiones  "
        call readdec
        mov ecx, EAX ; se almacena el valor el ecx la cantidad
      
   ciclo:
            ImpPantallaLn "escriba el numero:"
          
            dec ecx             ; decrementa a ecx -n >
            call crlf           ; deja una sencuencia
            cmp ecx, 0          ;compara ecx con 0
            ;
        jl imprime   ; salta si es menor que el anterior asta que sea menor a la cantidad salir

     compara_mayor ; metodo 
        imprime:
        ImpPantallaLn "el numero mayor es:"
        call writeint

		exit		
	main6 ENDP
	END main6