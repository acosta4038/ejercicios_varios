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

