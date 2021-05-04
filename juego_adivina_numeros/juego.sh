#!/bin/bash

# JUEGO QUE CREA NUMEROS AEATORIOS, EL USUARIO DEBE INTENTER ADIVINAR EL NUMERO. 
# SE DARAN 4 OPCIONES DE JUEGO A CADA CUAL MAS DIFICIL DEL 0 AL 25, DEL 0 AL 25, DEL 0 AL 75 Y DEL 0 AL 100
# EL JUGADOR DISPONDRA DE 5 OPCIONES PARA PODER ACERTAR EL NUMERO, EN CADA UNA DE ESTAS OPCIONES SE DIRA SI Y EL NUMERO ES MAYOR O MENOR
# AL FINAL DE CADA UNA DE LAS JUGADAS SE MOSTRARA EL NUERMO DE VECES JUGADAS, EL NUMERO DE VECES QUE SE HA PERDIDO Y EL NUERMO DE VECES QUE SE HA GANADO

#### CREACIÓN DE LA FUNCION DE LA PRIMERA OPCION (Se ha de revisar el control de los intentos, no funiona correctamente)

fprimera() {
	nmaximo=25 #Numero mas alto posible
	intentos=0 #Numero de intentos para acertar el numero


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
		fi

	done
	
		if [[ $intentos -eq 5 ]]; then 
			echo "Se han terminado los intentos"

		fi
}


##### 	DECLARACION DE VARIABLES DEL MENU ######

primera="muy facil"
segunda="facil"
tercera="medio"
cuarta="elevado"
quinta="dificil"


####    MENU PARA QUE EL USUARIO SELECCIONE EL MODO DE JUEGO

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


#####      CONTROL PARA ASEGURARSE DE QUE EL USUARIO SELECCIONA ALGUNA DE LAS OPCIONES CORRECTAS
x=0
while [[ $x -eq 0 ]]
	do
		read OpcionUsuario

		case ${OpcionUsuario,,} in
			$primera)
				fprimera
				x=1;;
			$segunda)
				fprimera
				x=1;;
			$tercera)
				echo "Se ha escogido la tercera opcion"
				x=1;;
			$cuarta)
				echo "Se ha escogido la cuarta opcion"
				x=1;;
			$quinta)
				echo "Se ha escogido la quinta opcion"
				x=1;;
			*)
				echo "Se debe de escoger algunas de las opciones indicadas"
				x=0;;
		esac
	done



