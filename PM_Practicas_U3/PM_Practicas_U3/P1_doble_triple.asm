TITLE obtener doble y triple de un numero 

; DESCRPICI�N
;
; Autore(s) :
;      Catedratico:   Dr. Alejandro Garcia
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICI�N


INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; �rea de Declaraci�n de Variables

.code
	main1 PROC
	
		;L�gica del Programa
	ImpPantallaLn "Ingrese un numero  "; mensaje
	call readdec						;lectura
	
    mov ebx,eax 
	mov ecx,eax 

	Suma_V2 eax, ebx
	mov eax,ebx

	call crlf ; desplaza o espacio
	ImpPantallaLn "El primer numero al doble es: "
	call writedec ; resultado
	
	call crlf ; eapcio
	
	Suma_V2 ecx, eax
	mov eax,ebx
	call crlf

	ImpPantallaLn "El primer numero al triple es: "
	call writedec

		exit	
	main1 ENDP
	END main1
