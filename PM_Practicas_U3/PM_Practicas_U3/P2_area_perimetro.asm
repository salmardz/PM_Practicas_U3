TITLE Area y perimetro de un rectangulo

;.Obtención del área y el perímetro
;de un rectángulo ingresando su base y altura.

;DESCRPICIÓN
;
; Autore(s):
;      Catedratico:   Dr. Alejandro Garcia

; Semestre: 8vo Semestre ISC
;FIN DESCRPICIÓN
INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; Área de Declaración de Variables

.code
main2 PROC

;Lógica del Programa

		ImpPantalla "ingrese  la base: "
	
		ImpPantalla "ingrese la altura: "
		call readdec
		call crlf

		mov ecx, eax ;   Guarda la variable en un auxiliar
		call readdec
		mul ecx ; multiplica eax por ebx

		call crlf

		ImpPantalla "El area es: "
        call writedec
		
		Suma_V2 ecx, eax
		mov eax,ebx ; mueve el valor 
		mov ecx, 2  ; divide entre dos 
		mul ecx     ; multiplica a ecx

		call crlf
		
		ImpPantallaLn "El perimetro es: "
        call writedec ; resutaod 
		call crlf
exit
main2 ENDP 
END main2