TITLE tabla de multiplicar

;DESCRPICIÓN 
;Objetivo: Explicación
;
; Autore(s):
;         Mtro. Alejandro Garcia
;		  Su Nombre.! 
;         
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN
INCLUDE MACROS.inc
INCLUDE Irvine32.inc  
.data
; Área de Declaración de Variables
.code
	
	main13 PROC	
		;Lógica del Programa
		ImpPantallaLn "que tablas necesitas  "; mensaje
	    call readdec						;lectura
		mov ebx, 1  ; registro usado como contador para la tabla

		ciclo:
			call writedec   ; imprime el valor de la tabla
			ImpPantallaLn "x  "; mensaje
			mov ecx, eax  ; respalda en ecx el valor de la tabla (eax)
			mov eax, ebx   ; guardamos en eax el valor del contador
			call writedec

		    ImpPantallaLn "= "; mensaj
			call writedec
			call crlf
			; contador
			mov eax, ecx ; regresamos a eax el valor de ecx (valor de la tabla)
			;mul ecx    ; eax = eax(contador)  *  ecx(tabla)

			;incremento o decremento (puede ir aqui)
			inc ebx ; suma 1 a ebx
			cmp ebx, 10
			jle ciclo
		exit	
	main13 ENDP
	END main13