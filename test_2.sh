#!/bin/bash
FILE="data.txt"
# 
echo Ingrese su nombre:
read NAME
echo "$NAME" | tee "$FILE"
echo Su nombre es "$NAME".
# DATA_NAME=
# for var in $(cat "$FILE");
# do
#     echo {$var}
# done
