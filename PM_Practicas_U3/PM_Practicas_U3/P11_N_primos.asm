TITLE numero primo
; Autore(s) :
;      Catedratico:   Dr. Alejandro Garcia
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICIÓN

INCLUDE Irvine32.inc
INCLUDE MACROS.inc
.data
; Área de Declaración de Variable

.code
main11 PROC
;Lógica del Programa
    ImpPantallaLn "Ingrese un numero  "; mensaj
	    call readint
        call crlf
       n_primos
exit     
main11 ENDP 
END main11