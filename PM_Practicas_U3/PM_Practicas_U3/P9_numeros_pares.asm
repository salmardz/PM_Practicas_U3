TITLE numeros pares
; Autore(s) :
;      Catedratico:   Dr. Alejandro Garcia
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICIÓN

INCLUDE Irvine32.inc
INCLUDE MACROS.inc
.data
; Área de Declaración de Variables
msj_prac9 db "ingresa un numero: ",0
.code
	main9 PROC	
		;Lógica del Programa
		; PARTIENDO DE MANERA DECRECIENTE. Donde N >= 0
		ImpPantallaLn "Ingrese un numero  "; mensaje
	   call readdec						;lectura
		call crlf
		call crlf 

		mov ebx, 2 ; divisor
		mov ecx, eax  ; respaldo de eax para no perder su valor cuando se haga la division
		mov edx, 0   
		div ebx

		cmp edx, 0 ; edx contiene el residuo
		jz ciclo
		dec ecx ;<- le restamos uno a ecx para que se convierta en par

		ciclo_m

		exit	
	main9 ENDP
	END main9