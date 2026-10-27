#!/bin/bash

temperatures=(12 15 9 21 18 7 14)
jours=(lundi mardi mercredi jeudi vendredi samedi dimanche)

echo "Températures : ${temperatures[*]}"
echo "Nombre de jours : ${#temperatures[@]}"   
max=${temperatures[0]}
for t in "${temperatures[@]}"; do
    if (( t > max )); then
        max=$t
    fi
done
echo "Plus chaude : $max °C"   
min=${temperatures[0]}
for t in "${temperatures[@]}"; do
    if (( t < min )); then
        min=$t
    fi
done
echo "Plus froide : $min °C"   
echo "Écart : $(( max - min )) °C"   
idx=0
for i in "${!temperatures[@]}"; do
    if (( temperatures[i] > temperatures[idx] )); then
        idx=$i
    fi
done
echo "Jour le plus chaud : ${jours[idx]} (${temperatures[idx]} °C)"   

