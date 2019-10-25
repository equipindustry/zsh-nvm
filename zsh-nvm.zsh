#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install nvm for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

LIGHT_GREEN='\033[1;32m'
CLEAR='\033[0m'


function nvm::dependences {
    echo -e "${CLEAR}${LIGHT_GREEN}Installing Dependences${CLEAR}"
}

function nvm::install {
    nvm::dependences
    if [[ ! -e "${HOME}/.nvm" ]]; then
        echo -e "${CLEAR}${LIGHT_GREEN}Installing NVM${CLEAR}"
        curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
    fi
    nvm::post_install
}

function nvm::post_install {
    nvm install 12.13.0
    nvm use 12.13.0 --default
    npm install --global yarn
    yarn global add \
       lambda-pure-prompt pure-prompt prettier localtunnel typescript
}

function nvm::load {
    if [ -e "${HOME}/.nvm" ]; then
        [ -e "${HOME}/.nvm" ] && export NVM_DIR="${HOME}/.nvm"  # This loads nvm
        # shellcheck source=/dev/null
        [ -s "${NVM_DIR}/nvm.sh" ] && source "${NVM_DIR}/nvm.sh"  # This loads nvm
        # shellcheck source=/dev/null
        [ -s "${NVM_DIR}/bash_completion" ] && source "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion
    fi
}

nvm::load

if [ ! -e "${HOME}/.nvm" ]; then
    nvm::install
fi
