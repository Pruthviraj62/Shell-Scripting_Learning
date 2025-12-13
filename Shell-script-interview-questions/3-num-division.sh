#!/bin/bash

#####################################################
# Author : Pruthviraj S. Patil
# Scrpt : shell script to print numbers divided by 3 & 5 and not 15
# Date : 13/12/2025
####################################################

# divisible 5 , 3 and not 3*5=15


for ((i=1; i<=100; i++)); do
    if (( (i % 3 == 0 || i % 5 == 0) && i % 15 != 0 )); then
        echo "$i"
    fi
done




