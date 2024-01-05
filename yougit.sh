#!/bin/bash
if "$1" -eq ""; then
    DIR="./"
else 
    DIR="$1"
fi

# Vérifi si git est installé
if command -v git &> /dev/null; then
    cd $DIR
    # Vérifie si le répertoire actuel est un repo git
    if git rev-parse --is-inside-work-tree &> /dev/null; then
        while true; do
        # Vérifie s'il y a plus des modifications non commitées dans le dépôt Git
        count=$(git status --porcelain | wc -l)
        threshold=2

        if [ "$count" -gt "$threshold" ]; then
            echo -e "\e[1;31mAttention ! Il y a plus de 2 modifications non commitées dans votre dépôt Git.\e[0m"
        fi

        # Attente de 5 secondes avant la prochaine vérification
        sleep 5
        done &
    else
        echo "Vous n'êtes pas dans un répertoire Git."
    fi
else
    echo "Git n'est pas installé sur ce système."
fi
