TITLE numeros pares e inpares
; DESCRPICIÓN
;
; Autore(s) :
;       Catedratico:   Dr. Alejandro Garcia
; Semestre: 8vo Semestre ISC

INCLUDE Irvine32.inc
INCLUDE MACROS.inc
.data
; Área de Declaración de Variables
par dword 0
impar dword 0
.code
	
	main17 PROC	
		;Lógica del Programa
		ImpPantallaLn "lista de 0 a   "; mensaje
		call readdec		; determinar asta n
		call crlf
		
		mov ebx, 2 ; divisor
		mov ecx, eax  ; respaldo de eax para no perder su valor cuando se haga la division
		mov edx, 0   ; para evitar el overflow
		div ebx

		cmp edx, 0 ; edx contiene el residuo
		jz ciclo
		;si no es cero ...
		dec ecx ;<- le restamos uno a ecx para que se convierta en par
	ciclo:
		mov eax, ecx
		call writedec
		call crlf
		dec ecx  ;decremento adicional para que en acumulativo sea como
		cmp edx, 0 ; compara a 0
		je npar ; salta si es igual
    	inc impar
		jmp siguiente

		npar:
		inc par
		siguiente:		 
		loop ciclo
			ImpPantallaLn "son inpares "; mensaje
			mov eax, par
			call writedec
			call crlf

			ImpPantallaLn "son pares  "; mensaje
			mov eax, par
			sub eax, impar
			call writedec
			call crlf

		exit	
	main17 ENDP
	END main17