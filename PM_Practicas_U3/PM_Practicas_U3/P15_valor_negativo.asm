    TITLE numero negativo
    ; DESCRPICI�N
    ; Autore(s) :
    ;       Catedratico:   Dr. Alejandro Garcia
    ; Semestre: 8vo Semestre ISC
    INCLUDE MACROS.inc
    INCLUDE Irvine32.inc
    .data
    ; �rea de Declaraci�n de Variables
    r db "Ingresaste n negativo fin ",0

    .code

        main15 PROC    
            ;L�gica del Programa
            ciclo:
                ImpPantallaLn "ingrese un numero  "; mensaje
                call readint
                ; compara
                cmp eax,0 ; compara con el valor 0
                jle fin ; si es menor o igual 0
                jmp ciclo
            fin:
                ImpPantallaLn "Ingreso un numeronegativo fin  "; mensaje
                call crlf
		    exit		
	    main15 ENDP
	    END main15