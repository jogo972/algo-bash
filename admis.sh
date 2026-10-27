#!/bin/bash

notes=(12 8 15 10 17 6 11)
admis=0

for n in "${notes[@]}"; do
    if (( n >= 10 )); then
        echo "$n : admis"
        (( admis++ ))
    else
        echo "$n : recalé"
    fi
done

echo "$admis admis sur ${#notes[@]} notes"   
for n in "${notes[@]}"; do
    if (( n >= 10 )); then
        echo "$n : admis"
        (( admis++ ))
    else
        echo "$n : recalé"
    fi
done   
echo "$admis admis sur ${#notes[@]} notes"   
