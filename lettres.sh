#!/bin/bash

compter_lettre() {
    local mot=$1
    local lettre=$2
    local compteur=0
    for (( i = 0; i < ${#mot}; i++ )); do
        if [[ ${mot:i:1} == "$lettre" ]]; then
            (( compteur++ ))
        fi
    done
    echo "$compteur"
}   nb=$(compter_lettre "$1" "$2")
echo "La lettre '$2' apparaît $nb fois dans '$1'."   
