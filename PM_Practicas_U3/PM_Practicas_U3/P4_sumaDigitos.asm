TITLE suma digitos 
; DESCRPICI�N

; Autore(s) :
;      Catedratico:   Dr. Alejandro Garcia
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICI�N

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
.code
	main4 PROC
		; L�gica del Programa

	   ImpPantallaLn "ingrese una cifra de 4 digitos  "
       call readdec
       
        mov ebx,0       ; guarda en ebx 
        mov ecx,10   ; almacena el valor de 10
        suma_n
        suma_n
        suma_n
        suma_n

        ImpPantallaLn "el reusltado es: "
        mov eax,ebx
        call writeint

	

exit
main4 ENDP
END main4