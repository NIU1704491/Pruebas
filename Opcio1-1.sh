#!/bin/bash
cataleg=`echo $1 | cut -f1 -d.`
echo "***** $cataleg: El Nostre catàleg alfabètic es: ********
***************************"

linies=`wc -l < $1`


for i in `seq 1 $linies`  
do
pelicula=`cat $1 | tail +2 | sort -k1 -t, | head -$i | tail -1`
any=`echo $pelicula | cut -f4 -d,`
titol=`echo $pelicula | cut -f1 -d,`
Pg=`echo $pelicula | cut -f2 -d,`
descripcio=`echo $pelicula | cut -f3 -d,`
valoracio=`echo $pelicula | cut -f5 -d,`
mida=`echo $pelicula | cut -f6 -d,`
iant=$(($i-1))
peliculanterior=`cat $1 | tail +2 | sort -k1 -t, | head -$iant | tail -1` 
titolanterior=`echo $peliculanterior | cut -f1 -d,`

if [[ $i -ne 1 && $titol = $titolanterior ]]

then
 
let i=i+1

else 

echo "*Títol:   $titol"
echo "*Any:  $any         *Nivell de clasificació: $Pg "   
echo "*Descripció:    $descripcio"
echo
echo "*Valoració dels usuaris:  $valoracio    *Mida de la mostra:  $mida"
echo "***************************"


fi

done

echo "                         "
echo "Premi enter per continuar" 
echo "                                                                              "
echo "**************************"
read -n 1
