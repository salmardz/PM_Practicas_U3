TITLE salario de empleados

; DESCRPICI�N
; Objetivo: Realice un programa para determinar el sueldo semanal de un trabajador con base 
; en las horas trabajadas y el pago por hora, 
; considerando que despu�s de las 40 horas cada hora se considera horas extras
;
; Autore(s) :
;      Catedratico:   Dr. Alejandro Garcia
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICI�N

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data

.code
	main3 PROC
		; L�gica del Programa

	ImpPantalla "horas realizadas : "
	call readdec
	call crlf
	mov ebx, eax
	mov edx , 50
	mul edx
	ImpPantalla "el salario es: "
    call writedec 


exit
main3 ENDP
END main3