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

function nvm::install {
    if [[ ! -e "$HOME/.nvm" ]]; then
        echo -e "${CLEAR}${LIGHT_GREEN}Installing NVM${CLEAR}"
        curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
        nvm::dependences
    fi
}

function nvm::dependences {
    [ -e "$HOME/.nvm" ] && export NVM_DIR="$HOME/.nvm"  # This loads nvm
    nvm::load
    echo -e "${CLEAR}${LIGHT_GREEN}Installing Dependences${CLEAR}"
    nvm install 10.16.0
    nvm use 10.16.0 --default
    npm install --global yarn
    yarn global add lambda-pure-prompt
    yarn global add pure-prompt
    yarn global add prettier
    yarn global add localtunnel

}

function nvm::load {
    if [[ -e "$HOME/.nvm" ]]; then
        [ -e "$HOME/.nvm" ] && export NVM_DIR="$HOME/.nvm"  # This loads nvm
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
        [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    fi
}

nvm::load

if (( ! $+commands[nvm] )); then
    nvm::install
fi
