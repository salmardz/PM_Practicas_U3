TITLE fibonnaci
; Autore(s) :
;      Catedratico:   Dr. Alejandro Garcia

; Semestre: 8vo Semestre ISC
	; FIN DESCRPICIÓN

	INCLUDE Irvine32.inc
    INCLUDE MACROS.inc

.data
    N dword 10
    valorInicial dword 0,1

.code
main10 PROC
       ImpPantallaLn "Ingrese un numero  "; mensaje
	   call readdec						;lectura
       mov eax,N           ; almacena el valor 



  ImpPantallaLn "Ingrese un numero  "; mensaje
    call readdec						;lectura
    call Crlf                   ; espacio 

    mov eax,0
    mov ebx, [valorInicial]
    mov ecx, [valorInicial + 2]
ciclo: ; inicia ciclo
    mov edx,0       ;estableciendo edx en 0 cada vez
    add edx,ebx       ;agregar bx a dx
    add edx,ecx       ;agregar cx a dx
    call WriteDec   

    call Crlf       ;imprime dx
    mov ebx,ecx       ; ahora cx va a bx
    mov ecx,edx       ;dx va a  cx 
    inc eax         ;incrementa a  eax(contador)
    cmp eax,N       ;compara a variable n
    jne ciclo   ;si eax = N bucle de salida

    exit
main10 ENDP
END main10