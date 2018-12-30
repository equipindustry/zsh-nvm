#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install nvm for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

function install_nvm {
    curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
}

function load_nvm {
    if [[ ! -e "$HOME/.nvm" ]]; then
        [ -s "$HOME/.nvm" ] && export NVM_DIR="$HOME/.nvm"  # This loads nvm
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
        [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    fi
}

load_nvm

if (( ! $+commands[nvm] )); then
    [ ! -s "$NVM_DIR" ] && install_nvm
fi