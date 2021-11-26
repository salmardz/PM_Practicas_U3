TITLE matriz
; DESCRPICIÓN

; Autore(s) :
;       Catedratico:   Dr. Alejandro Garcia
; Semestre: 8vo Semestre ISC

INCLUDE Irvine32.inc
INCLUDE MACROS.inc
.data
; Área de Declaración de Variables
.code
    main7 PROC    
        ;Lógica del Programa

	  call writestring
      mov ecx, 4

     ciclo:

       ImpPantallaLn "Ingrese un dato: "
       call readint
       push eax ; recorre el apuntador
       dec ecx ; decrementa ecx
       jnz ciclo ;salta cuando finalice 0
        
      m_pop
       mul edx ; multiplica edx
       push eax ; recoore a eax

       mov eax, ebx ; mueve de eax en ebx
       mul ecx ; lo multiplica
       mov ebx, eax 
       pop eax
       sub eax, ebx



       ImpPantallaLn "el resultado es :"
       call writeint
        
        exit    
    main7 ENDP
    END main7