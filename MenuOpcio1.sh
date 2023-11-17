#!/bin/bash

OpcioNoValida()
{
clear
echo "Error, opcio no valida"
sleep 2s
clear
}

Opcio1()
{
clear
echo "--------------------------------------------------
1 - Llistats de les pel·lícules del catàleg.
--------------------------------------------------
1-1 Mostrar catàleg alfabètic.
1-2 Mostrar catàleg cronològic.
1-3 Mostrar catàleg per valoració.
0 Tornar al menú anterior."
read opcio_1

}

opcio_1=1
while [ $opcio_1 -ne 0 ]
do
Opcio1
case $opcio_1 in
0)clear;;

1)clear
./Opcio1-1.sh $1
clear;;

2)clear;;

3)clear;;

*)
OpcioNoValida

esac
done
