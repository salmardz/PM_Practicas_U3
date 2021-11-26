TITLE promedio calificaciones
; DESCRPICIÓN
;
; Autore(s) :
;       Catedratico:   Dr. Alejandro Garcia
; Semestre: 8vo Semestre ISC
INCLUDE Irvine32.inc
INCLUDE MACROS.inc
.data
; Área de Declaración de Variables

.code
    main14 PROC    
        ;Lógica del Programa
          ImpPantallaLn "cantidad de numeros a ingresar  "; mensaje
          call readdec
          mov ecx, eax 
          push ecx   ; decrementa a ecx
          mov ebx, 0; asta llegar a 0
        
        ciclo:
            ImpPantallaLn "escriba el numero "; mensaje
            call readdec
            add ebx, eax ; suma ebx en eax

        loop ciclo ; salta a 0

            mov eax,ebx  ; mueve registro
            pop ebx ; almacena ebx
            mov edx,0 ; inicia en 0 evitando error 
            div ebx ; divide 
            cmp eax,7 ; compara con el valor 7 
        
        ; si es igual 7 

        jae aprobado ; si es mayor a 7 o igual
        jmp reprobado ; si es diferente pasa a la sig condicion 

    aprobado:
         ImpPantallaLn "aprobado";
         call crlf

    reprobado:
        ImpPantallaLn "reprobado  ";
         call crlf
         call crlf

		exit		
	main14 ENDP
	END main14