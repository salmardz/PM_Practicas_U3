TITLE velocidad

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
;formula ; v=d/t
distancia dword ?
tiempo dword ?
.code

    main8 PROC    
       ;L�gica del Programa

       ImpPantallaLn "Ingrese la distancia (km)  "; mensaje
       call readdec
       mov distancia ,eax ; almacena el peso e68

       ImpPantallaLn "Ingrese el tiempo en (hrs)  "; mensaje
       call readdec
       mov tiempo,eax           ; almacena el valor de tiempo
      
        mov eax,distancia
        mov edx, 0
        div tiempo
        
        ImpPantallaLn "la velocidad es de: "; mensaje
        call writedec

		exit		
	main8 ENDP
	END main8