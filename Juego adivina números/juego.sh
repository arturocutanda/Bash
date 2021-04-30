#!/bin/bash

# JUEGO QUE CREA NUMEROS AEATORIOS, EL USUARIO DEBE INTENTER ADIVINAR EL NUMERO. 
# SE DARAN 4 OPCIONES DE JUEGO A CADA CUAL MAS DIFICIL DEL 0 AL 25, DEL 0 AL 25, DEL 0 AL 75 Y DEL 0 AL 100
# EL JUGADOR DISPONDRA DE 5 OPCIONES PARA PODER ACERTAR EL NUMERO, EN CADA UNA DE ESTAS OPCIONES SE DIRA SI Y EL NUMERO ES MAYOR O MENOR
# AL FINAL DE CADA UNA DE LAS JUGADAS SE MOSTRARA EL NUERMO DE VECES JUGADAS, EL NUMERO DE VECES QUE SE HA PERDIDO Y EL NUERMO DE VECES QUE SE HA GANADO


# Menu para que el usuario seleccione el modo en el que desea jugar 

echo "#####################################"
echo "#                                   #"
echo "#    SELECCIONE EL MODO DE JUEGO    #"
echo "#                                   #"
echo "#      1)  MUY FACIL                #"
echo "#      2)  FACIL                    #"
echo "#      3)  MEDIO                    #"
echo "#      4)  ELEVADO                  #"
echo "#      5)  DIFICIL                  #"
echo "#                                   #"
echo "#####################################"

# Control para que el usuario eescoja alguna de las opciones proporcionadas

/*
#### REVISAR PORQUE NO FUNCIONA ESTO #####
#if [[ $OpcionUsuario != "muy facil" || $OpcionUsuario != "facil" ]]; then
#    echo "prueba"
#fi
################################################## 
*/

x=0

while [[ $x == 0]]
do
    read OpcionUsuario
    if [[ (($OpcionUsuario != "muy facil")) ]]; then
        x=0 
        echo "Se debe introducir una opción adecuada y en minusculas"
    elif [[ (($OpcionUsuario != "facil")) ]]; then
        x=0 
        echo "Se debe introducir una opción adecuada y en minusculas"
    elif [[ (($OpcionUsuario != "medio")) ]];then 
        x=0 
        echo "Se debe introducir una opción adecuada y en minusculas"
    elif  (($OpcionUsuario != "elevado")) ]];
        x=0 
        echo "Se debe introducir una opción adecuada y en minusculas"
    elif  (($OpcionUsuario != "dificil")) ]] ; then
        x=0 
        echo "Se debe introducir una opción adecuada y en minusculas""
    fi
done



