#!/bin/bash

#Parte I
archivo='datos.txt'

read -p 'Ingrese su nombre y apellido: ' NOMBRE

echo "$NOMBRE"

echo "$NOMBRE" > "$archivo"

echo $(cat "$archivo")

MINOMBRE=$(echo "$NOMBRE" | cut -d' ' -f1)
MIAPELLIDO=$(echo "$NOMBRE" | cut -d' ' -f2)

NUEVACADENA="Apellido: $MIAPELLIDO"

echo "$NUEVACADENA" > "$archivo"

echo


#Parte II
echo 'Imprimiento números del 1 al 10'

for i in {1..10}
do
    echo $i
done

echo 'Imprimiento números PARES del 1 al 10'

for i in {1..10}
do
    if [ $(( i % 2 )) -eq 0 ]; then
        echo $i
    fi
done

echo
echo 'Imprimiento números IMPARES del 1 al 10'

for ((i=1;i<=10;i++));
do
    if [ $(( $i % 2 )) -eq 1 ];
    then
        echo $i
    fi
done

# echo
read -p 'Ingrese el primer número: ' NRO1
read -p 'Ingrese el segundo número: ' NRO2
read -p 'Ingrese el tercer número: ' NRO3

PROMEDIO=$(( (NRO1 + NRO2 + NRO3) /3 ))
# echo
echo 'El promedio es:' $PROMEDIO

if [ $PROMEDIO -ge 6 ];
then
    echo 'Aprobado'
else
    echo 'No aprobado'
fi

exit 0

