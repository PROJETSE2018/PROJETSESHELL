#!/bin/bash

while true 
do 
echo "calculatrice"
echo "1-Addition"
echo "2-Soustraction"
echo "3-Multiplication"
echo "4-Division"
echo "5-Carre"
echo "6-Cube"
echo "7-Factorial"
echo "8-COMPARAISION"
echo "9-Racine"
echo "10-COS"
echo "11-SIN"



echo "Cliquer sur n'importe quel button pour quitter"

echo " c'est quoi votre choix"
read ch
if test $ch -eq1
then 
echo "----------Addition----------"
echo "entre le 1er nombre :"
read x
echo "entre le 2eme nombre :"
read y
r=$(( $x + $y))
echo "le resultat est : $r"
echo "***********************************************************************************************************************************"


elif test $ch -eq2
then 
echo "--------Soustraction-----------"
echo "Entrer le  1er nombre :"
read x
echo "Entre le 2eme nombre :"
read y
r=$(($x - $y))
echo "le resultat est : $r"
echo "***********************************************************************************************************************************"


elif test $ch -eq3
then
echo "----------Mutliplication-------------"
echo "Entrer le 1 er nombre : "
read x
echo "Entre le 2eme nombre : "
read y
r=$(( $x * $y))
echo "le resultat est : $r"
echo "***********************************************************************************************************************************"


elif test $ch -eq4
then 
echo "----------division----------------"
echo "Entree le 1er nombre: "
read x 
echo "Entrer le 2eme nombre : "
read y
r=$(($x / $y))
echo "le resultat est : $r"
echo "***********************************************************************************************************************************"



elif test $ch -eq 5
then 
echo "----------Carre----------------"
echo "Entree un nombre: "
read x 
r=$(($x * $x))
echo "le resultat est : $r"
echo "***********************************************************************************************************************************"


elif test $ch -eq 6
then 
echo "----------Cube----------------"
echo "Entrer un  nombre: "
read x 
r=$(($x * $x * $x))
echo "le resultat est : $r"
echo "***********************************************************************************************************************************"


elif test $ch -eq 7
then
echo "----------Factorial----------------"
echo "Entree un nombre: "
read x
factorial()
{
  if [ "$1" -gt "1" ]; then
    i=`expr $1 - 1`
    j=`factorial $i`
    k=`expr $1 \* $j`
    echo $k
  else
    echo 1
  fi
}
 
echo "le resultat est:"
factorial $x
echo "***********************************************************************************************************************************"

elif test $ch -eq 8
then 
echo "----------Comparaison----------------"
echo "Entrer le 1er  nombre: "
read x 
echo "Entrer le 2eme  nombre: "
read y
if [$x - lt $y ]; then 
echo $x "plus petit que" $y
else
echo $x "plus grand que" $y
fi 
echo "***********************************************************************************************************************************"

elif test $ch -eq 9  
then 
echo "----------Racine----------"
Racin(){
read -p "Entrer le nombre" m
echo "sqrt($m)" |bc -l
}
Racine
echo "***********************************************************************************************************************************"

elif test $ch -eq 10
then
echo "----------COS--------"
COS() {
read -p "Entrer le nombre " n
echo "c($n)"|bc -l
}
COS
echo "***********************************************************************************************************************************"

elif test $ch -eq 11
then
echo "----------SIN--------"
SIN() {
read -p "Entrer le nombre " n
echo "S($n)"|bc -l
}
SIN
echo "***********************************************************************************************************************************"



else "Arretez le script"
sleep 1
fi 
done    




