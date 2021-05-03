#!/bin/bash

# JUEGO QUE CREA NUMEROS AEATORIOS, EL USUARIO DEBE INTENTER ADIVINAR EL NUMERO. 
# SE DARAN 4 OPCIONES DE JUEGO A CADA CUAL MAS DIFICIL DEL 0 AL 25, DEL 0 AL 25, DEL 0 AL 75 Y DEL 0 AL 100
# EL JUGADOR DISPONDRA DE 5 OPCIONES PARA PODER ACERTAR EL NUMERO, EN CADA UNA DE ESTAS OPCIONES SE DIRA SI Y EL NUMERO ES MAYOR O MENOR
# AL FINAL DE CADA UNA DE LAS JUGADAS SE MOSTRARA EL NUERMO DE VECES JUGADAS, EL NUMERO DE VECES QUE SE HA PERDIDO Y EL NUERMO DE VECES QUE SE HA GANADO




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
echo "#      1)  $primera                #"
echo "#      2)  $segunda                    #"
echo "#      3)  $tercera                    #"
echo "#      4)  $cuarta                  #"
echo "#      5)  $quinta                  #"
echo "#                                   #"
echo "#####################################"


#####      CONTROL PARA ASEGURARSE DE QUE EL USUARIO SELECCIONA ALGUNA DE LAS OPCIONES CORRECTAS
x=0
while [[ $x -eq 0 ]]
	do
		read OpcionUsuario

		case $OpcionUsuario in
			$primera)
				echo "Se ha escofigo la primera opción"
				x=1;;
			$segunda)
				echo "Se ha escogido la segunda opción"
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


<< COMENTADO     ##  NO CREO QUE SEA LA MEJOR OPCIÓN ##
x=0

while [[ $x == 0 ]]
	do
    		read OpcionUsuario
    		if [[ (( $OpcionUsuario != $primera )) ]]; then
        		x=0 
        		echo "Se debe introducir una opción adecuada y en minusculas"
    		elif [[ (($OpcionUsuario != "facil")) ]]; then
        		x=0 
        		echo "Se debe introducir una opción adecuada y en minusculas"
    		elif [[ (($OpcionUsuario != "medio")) ]];then 
        		x=0 
        		echo "Se debe introducir una opción adecuada y en minusculas"
    		elif  [[ (($OpcionUsuario != "elevado")) ]];then
       			x=0 
        		echo "Se debe introducir una opción adecuada y en minusculas"
	    	elif  [[ (($OpcionUsuario != "dificil")) ]] ; then
        		x=0 
        		echo "Se debe introducir una opción adecuada y en minusculas"
	    	fi
	done

COMENTADO

