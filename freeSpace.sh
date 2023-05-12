#!/bin/bash



#The root directory max
max=$(df -h / | awk 'NR==2{print $2}')

#In use 
hasznalt=$(df -h / | awk 'NR==2{print $3}')

#Arithmetic operation on the two variables. 
szabad=$(( ${max%[[:alpha:]]*} - ${hasznalt%[[:alpha:]]*} ))



#Values received.
echo "Maximális: $max"
echo "Használt: $hasznalt"
echo "Szabad: $szabad"G""
