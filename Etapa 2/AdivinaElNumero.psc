Algoritmo AdivinaElNumero
	Definir N, random, salida, intento Como Entero
	
	random = Aleatorio(1,10)		//Forma de generar un numero aleatorio entre 1 y 10. Es el nro buscado
	intento =1						//los intentos que va efecuando. Solo tiene 3 intentos
	N=99							//Asigno cualquier nro para que ingrese al bucle mientras. Sino N es indefinido y no ingresa
									// como numero > a 0
	Escribir "//**************************JUEGO ADIVINA EL NUMERO *************************/"
	Escribir "VOY A GENERAR UN NUMERO SECRETO ENTRE 1 Y 10 Y TENES 3 INTENTOS PARA ACERTAR"
	Escribir "VAMOS"
	Escribir "//***************************************************************************/"
	//Se tienen que cumplir las 3 condiciones juntas para que siga el programa.
	Mientras salida = 0 Y intento <= 3 Y N > 0		//Condiciones para que ingrese. Salida =0 osea que no acerto todavia,
		//menos de 3 intentos y que el nro elegido no sea 0. Si no se da alguna de esas condiciones termina el programa.
		Repetir							//Hace este bucle para obligar a ingresar un numero entre 1 y 10
			Escribir  intento, "° Intento - Ingresa el Numero elegido. Recuerda que debe estar entre 1 y 10 o 0 Para finalizar "
			Leer N
		Hasta Que N <= 10 					//Le pide la operador que ingrese el nro hasta que sea 0 o este entre 1 y 10. Si no ingresa alguno de esos
											//valores vuelve a pedir y asi hasta que cumpla 
		
		SI N > 0 Entonces				//Si el nro elegido es 0 significa que no quiere seguir con la ejecucion. Sale del programa
			SI N = random Entonces		//Acerto el nro
				Escribir "Excelente. Acertaste al ", intento, "° intento. El numero Secreto era: ", random
				salida = 1				//es una bandera para indicar que acerto y se tiene que terminar el programa como acertado.
			SiNo Si N < random Entonces										//el nro elegido es menor al buscado.
				Escribir "El numero ingresado: ", N , " es MENOR al Secreto"
				SiNo															//el nro elegido es mayor al buscado
					Escribir "El numero ingresado: ", N , " es MAYOR al Secreto"
				FinSi
			FinSi
		intento = intento + 1												//incremento esa variable para controlar que no sean mas de 3 intentos
		FinSi
	FinMientras
	
	//Controlo la forma en que termino el sistema. 
	Si N = 0 Entonces					//El operador eligio salir
		Escribir "Muchas gracias por haber jugado. Has elegido finalizar el programa. FIN"
	SiNo Si salida = 1 Entonces		//Hacerto el numero
			Escribir "Muchas gracias por haber jugado. Acertaste el Numero Secreto. FELICITACIONES"
		SiNo							//Se terminaron los intentos
			Escribir "Muchas gracias por haber jugado. Se terminaron los intentos. - FIN"
			Escribir "El numero Secreto era : ", random
		FinSi	
	FinSi
	
FinAlgoritmo
