#!/bin/bash

prenoms=(alice bob chloe david emma)
cible=$1
trouve=0
position=0
comparaisons=0   
for i in "${!prenoms[@]}"; do
    (( comparaisons++ ))
    if [[ ${prenoms[i]} == "$cible" ]]; then
        trouve=1
        position=$i
        break
    fi
done   
if (( trouve == 1 )); then
    echo "$cible est dans la liste, à l'indice $position"
else
    echo "$cible n'est pas dans la liste"
fi
echo "Comparaisons : $comparaisons"   
