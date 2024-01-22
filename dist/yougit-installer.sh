#!/bin/bash
REPO="https://github.com/asthino/GNU-Linux.git"

exec bash

if command -v source  &> /dev/null; then
    break
else 
    sudo apt-get install source
fi

if command -v git &> /dev/null; then
    cp ./yougit.sh /usr/bin/.

    sudo chmod 777 ./yougit.sh
    echo "alias yougit='/usr/bin/yougit.sh'" >> ~/.bashrc
    source ~/.bashrc
else
    echo "Git n'est pas installé sur ce système."
fi

