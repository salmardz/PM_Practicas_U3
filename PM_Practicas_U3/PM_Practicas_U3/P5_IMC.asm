TITLE suma digitos 
; DESCRPICIÓN
;
; Autore(s) :
;      Catedratico:   Dr. Alejandro Garcia
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICIÓN

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; Área de Declaración de Variables
Peso dword ?
estatura dword ?

; Fórmula: peso (kg) / [estatura (m)]2

.code

    main5 PROC    
    ;Lógica del Programa
        ImpPantalla "Ingrese el peso (Kg): "
        call readint
        mov Peso,eax ; almacena el peso e68
        mov ecx, 1000 ; almacena 1000 para div la estatura
        
        ImpPantalla "ingrece la altura (cm): "
        call readint

        mov estatura,eax             ; almacena el valor de la estatura
        mul estatura ; eax = eax*eax ; multiplica al cuadrado el valor
        div ecx                      ; divide entre 1000
        mov ecx,estatura             ; almacena la altura
        mov estatura,eax    

        mov eax, 0
        mov eax,peso
        mov edx, 0 ; para evitar tener conflicto al momento de calcular el residuo
        div estatura
        
        ImpPantalla "El IMC es : "
        call writeint

		exit		
	main5 ENDP
	END main5