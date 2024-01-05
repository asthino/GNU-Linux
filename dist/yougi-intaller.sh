#!/bin/bash
REPO="https://github.com/asthino/GNU-Linux.git"

cd "/usr/local/bin/"
if command -v git &> /dev/null; then
    git clone yougit $REPO
    cd yougit

    sudo chmod +x ./yougit.sh
    echo "alias yougit='/usr/local/bin/yougit/yougit.sh'" >> ~/.bashrc
    source ~/.bashrc
else
    echo "Git n'est pas installé sur ce système."
fi

