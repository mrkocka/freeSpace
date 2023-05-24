#!/bin/bash

#The root directory max
max=$(df -h / | awk 'NR==2{print $2}')

#In use 
hasznalt=$(df -h / | awk 'NR==2{print $3}')

#Free 
szabad=$(df -h / | awk 'NR==2{print $4}')

#Values received.
echo "Maximális: $max"
echo "Használt: $hasznalt"
echo "Szabad: $szabad"

