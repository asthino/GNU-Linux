#!/bin/bash
REPO="https://github.com/asthino/GNU-Linux.git"

cd "/usr/bin/"
if command -v git &> /dev/null; then
    git clone $REPO yougit
    cd yougit

    sudo chmod +x ./yougit.sh
    echo "alias yougit='/usr/bin/yougit/yougit.sh'" >> ~/.bashrc
    source ~/.bashrc
else
    echo "Git n'est pas installé sur ce système."
fi

