#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install nvm for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

LIGHT_GREEN='\033[1;32m'
GREEN='\033[0;32m'
CLEAR='\033[0m'

function install_nvm {
    if [[ ! -e "$HOME/.nvm" ]]; then
        echo -e "${CLEAR}${LIGHT_GREEN}Installing NVM${CLEAR}"
        curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
        install_dependences
    fi
}

function install_dependences {
    [ -e "$HOME/.nvm" ] && export NVM_DIR="$HOME/.nvm"  # This loads nvm
    load_nvm
    echo -e "${CLEAR}${LIGHT_GREEN}Installing Dependences${CLEAR}"
    nvm install 8.9.1
    nvm use 8.9.1 --default
    npm install --global lambda-pure-prompt
    npm install --global pure-prompt

}

function load_nvm {
    if [[ -e "$HOME/.nvm" ]]; then
        [ -e "$HOME/.nvm" ] && export NVM_DIR="$HOME/.nvm"  # This loads nvm
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
        [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    fi
}

load_nvm

if (( ! $+commands[nvm] )); then
    install_nvm
fi
