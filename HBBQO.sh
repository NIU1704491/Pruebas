#!/bin/bash
Menu_opcio()
{
cataleg=`echo $1 | cut -f1 -d.`
echo "---------------------------------------------------------
Base de Dades del catàleg de $cataleg
---------------------------------------------------------
1. Llistats de les pel·lícules del catàleg.
2. Cerca d’una pel·lícula al catàleg.
3. Joc de preguntes sobre les pel·lícules.
4. Gestió de la base de dades de pel·lícules.
0. Sortir."
read opcio
clear
}

enDesenvolupament()

{
clear
echo "En desenvolupament"
echo "Premeu qualsevol tecla per continuar"
read -n 1
clear
}

OpcioNoValida()
{
clear
echo "Error, opcio no valida"
clear
echo "Sortint en...2"
sleep 1s
clear
echo "Sortint en...1"
sleep 1s
clear
}



opcio=1

while [ $opcio -ne 0 ]
do
Menu_opcio $1
case $opcio in
0)
clear
echo "Gracies per la vostra visita";;
1)
enDesenvolupament;;
	
2)
enDesenvolupament;;

3)
enDesenvolupament;;

4)
enDesenvolupament;;

*)
OpcioNoValida

esac
done
