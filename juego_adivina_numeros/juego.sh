#!/bin/bash

# JUEGO QUE CREA NUMEROS AEATORIOS, EL USUARIO DEBE INTENTER ADIVINAR EL NUMERO. 
# SE DARAN 4 OPCIONES DE JUEGO A CADA CUAL MAS DIFICIL DEL 0 AL 25, DEL 0 AL 25, DEL 0 AL 75 Y DEL 0 AL 100
# EL JUGADOR DISPONDRA DE 5 OPCIONES PARA PODER ACERTAR EL NUMERO, EN CADA UNA DE ESTAS OPCIONES SE DIRA SI Y EL NUMERO ES MAYOR O MENOR
# AL FINAL DE CADA UNA DE LAS JUGADAS SE MOSTRARA EL NUERMO DE VECES JUGADAS, EL NUMERO DE VECES QUE SE HA PERDIDO Y EL NUERMO DE VECES QUE SE HA GANADO

# SE HA CREADO UN FUNCIÓN POR CADA UNO DE LOS MODOS DE JUEGO


fprimera() {  #### FUNCION DEL MODO MUY FACIL
	nmaximo=25 #Numero mas alto posible
	intentos=0 #Numero de intentos para acertar el numero
	acierto="no" #Variable para controlar si se ha acertado o no


	echo "Se ha iniciado el modo facil, el numero ha acertar esta entre el 0 y al 25"

	nacertar=$((RANDOM%25)) #Numero que el usuario debe acertar
	echo $nacertar
	echo "¿Cual crees el numero que estoy pensado?"

	while [[ $intentos -lt 5 ]]
	do
		read nusuario #Numero que propone el usuario

		if [[ $nusuario -lt $nacertar ]]; then
			echo "El numero que estoy pensado en mayor que $nusuario"
			intentos=$(($intentos+1))
		elif [[ $nusuario -gt $nmaximo ]];then
			echo "Recuerda que el rango es de 0 al 25, está no te la cuento"
		elif [[ $nusuario -gt $nacertar ]];then
			echo "El numero que estoy pensado en menor que $nusuario"
			intentos=$(($intentos+1))
		elif [[ $nusuario -eq $nacertar ]]; then
			echo "ENHORABUENA!! Has acertado el numero que estoy pensado"
			intentos=5
			acierto="si"
		fi

	done
	
		if [[ $acierto1 == "no" ]]; then 
			echo "Se han terminado los intentos"

		fi
}

fsegunda() {

}

ftercera(){

}

fcuarta(){

}


fquinta(){

}





#####      CONTROL PARA ASEGURARSE DE QUE EL USUARIO SELECCIONA ALGUNA DE LAS OPCIONES CORRECTAS Y VECES QUE DESEA SEGUIR JUGANDO
i=0
while [[ $i -eq 0  ]] #####    BUCLE PARA QUE EL JUEGO SE PUEDA SEGUIR JUGANDO HASTA QUE EL USUARIO QUIERA
do

##### 	DECLARACION DE VARIABLES DEL MENU ######

primera="muy facil"
segunda="facil"
tercera="medio"
cuarta="elevado"
quinta="dificil"

####    BUCLE PARA QUE EL USUARIO SELECCIONE EL MODO DE JUEGO

	x=0 
	while [[ $x -eq 0 ]]
		do

##### MENU CON TODAS LAS OPCIONES DEL JUEGO

			echo "#####################################"
			echo "#                                   #"
			echo "#    SELECCIONE EL MODO DE JUEGO    #"
			echo "#                                   #"
			echo "#      1)  ${primera^^}                #"
			echo "#      2)  ${segunda^^}                    #"
			echo "#      3)  ${tercera^^}                    #"
			echo "#      4)  ${cuarta^^}                  #"
			echo "#      5)  ${quinta^^}                  #"
			echo "#                                   #"
			echo "#####################################"
	
			read OpcionUsuario #Variable con el modo de juego

			case ${OpcionUsuario,,} in
				$primera)
					fprimera
					x=1;;
				$segunda)
					fsegunda
					x=1;;
				$tercera)
					ftercera
					x=1;;
				$cuarta)
					fcuarta
					x=1;;
				$quinta)
					fquinta
					x=1;;
				*)
					echo "Se debe de escoger algunas de las opciones indicadas"
					x=0;;
			esac
	
			echo "¿Desea Jugar de nuevo (S/N)?"
			read seguirjugando #El usuario dice si quiere jugar de nuevo

			case ${seguirjugando^^} in
				S) echo "Comenzar de nuevo"
					x=0 i=0;;
				N) echo "dejar de jugar"
					x=1 i=1;;
				*) echo "Se ha de introducir una respuesta correcta"
					i=0;;
			esac

		done
	echo $acierto
done




