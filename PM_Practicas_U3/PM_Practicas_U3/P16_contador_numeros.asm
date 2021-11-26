TITLE promedio calificaciones
; DESCRPICIÓN
; Autore(s) :
;       Catedratico:   Dr. Alejandro Garcia
; Semestre: 8vo Semestre ISC
INCLUDE MACROS.inc
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables


contador dword 0

.code

	main16 PROC
		  ImpPantallaLn "Ingresa el numero a contar  "; mensaje
		  call readint
		  mov ebx, eax

		 ImpPantallaLn  "Ingresa la cantidad de veces "
		  call readdec
		  mov ecx, eax ; almacena el valor ecx en eax
		  inc ecx
	ciclo:
		dec ecx ; decrementa a ecx
		jz sig ; salta si es 0

		ImpPantallaLn "Ingresa el numero a contar  "; mensaje
		call readint

		cmp ebx,eax
		jne ciclo
			  
		inc contador
		jmp ciclo
	sig:
		ImpPantallaLn "numero de veces repetidas  "; mensajes
		mov eax, ebx
		mov eax, contador
		call writedec
			 
			exit
	main16 ENDP
	END main16



