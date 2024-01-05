#!/bin/bash
DIR="./"

if command -v git &> /dev/null; then
    cd $DIR
    if git rev-parse --is-inside-work-tree &> /dev/null; then
        git diff

        git status
    else
        echo "Vous n'êtes pas dans un répertoire Git."
    fi
else
    echo "Git n'est pas installé sur ce système."
fi
