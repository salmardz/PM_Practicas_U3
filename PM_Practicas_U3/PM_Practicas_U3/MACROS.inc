ImpPantalla MACRO texto
	local mensaje
	.data
		mensaje db texto,0
	.code
		push edx  ; guardo en la pila el valor
		mov edx, offset mensaje
		call writestring		
		pop edx   ;recupero el valor original de edx
ENDM

ImpPantallaLn MACRO texto
	local mensaje
	.data
		mensaje db texto,0
	.code
		push edx  ; guardo en la pila el valor
		mov edx, offset mensaje
		call writestring
		call crlf
		pop edx   ;recupero el valor original de edx
ENDM

Suma_V1 MACRO  ; los valores que usará el macro son almacenados en registros en el programa principal
			   ; y estos son consultados / accedidos desde el MACRO

	; sumar a los registros ebx, ecx

	.data

	.code
		
		add ebx, ecx  ; el valor resultado estará en ebx

ENDM


Suma_V2 MACRO a, b  		
	
	; sumar a los registros ebx, ecx que contendrán al valor de a y b respectivamente
	.data

	.code
		
		push ecx ; respaldar el valor de ecx 		

		mov ebx, a
		mov ecx, b

		add ebx, ecx  ; el valor resultado estará en ebx


		pop ecx ;recupero el valor original de ecx para que el usuario lo pueda seguir utilizando sin problema
ENDM


Suma_V3 MACRO a, b  				
	.data
		varA dword a
		varB dword b

	.code
				
		mov ebx, varA		

		add ebx, varB  ; el valor resultado estará en ebx
	

ENDM

suma_n MACRO 
	
	.data
		
	.code

		 mov edx, 0
		div ecx
		add ebx, edx

ENDM

compara_mayor MACRO 
	
	.data
		
	.code

	 compara:
             call readint        ; ingresa el valor n
             cmp eax, mayor      ; compara si N es menor que mayor (1000)
             jg nmayor           ; si es mayor compara la siguiente 

             jmp ciclo          ; salta al siguitente dato
             nmayor:
             mov mayor, eax
             jmp ciclo          ; se compara con el siguiente dato hasta que no haiga mas 

ENDM

m_pop MACRO 
	
	.data
		
	.code
 pop edx   ;[1, 1] ; elimina el valor edx de de la pila y lo ubica en memoria
       pop ecx    ;[1, 0] ; elimina el valor ecx de de la pila y lo ubica en memoria
       pop ebx    ;[0, 1] ; elimina el valor ebx de de la pila y lo ubica en memoria
       pop eax    ;[0, 0]; elimina el valor eax de de la pila y lo ubica en memoria
ENDM

ciclo_m MACRO 
	
	.data
		
	.code
	ciclo:
			mov eax, ecx
			call writedec
			call crlf

			dec ecx  ;decremento adicional para que en acumulativo sea como
					 ; si a ecx se le decrematará de 2 en 2 por cada iteracion
			loop ciclo
 ENDM

 n_primos MACRO 
	
	.data
	esprimo db "es un numero primo ",0
	noesprimo db "no es un numero primo ",0    

	.code
	cmp eax, 1 ; a comparar
    jnz siprimo ; Salta si no es cero
	jz noprimo ; salta si es cero

  siprimo:
     mov edx, offset esprimo
	 call writestring
	 jmp salir

  noprimo:
      mov edx, offset noesprimo
	  call writestring
	  jmp salir 
  salir:
  call crlf
 ENDM
