#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install nvm for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

package_name=nvm

plugin_dir=$(dirname "${0}":A)

# shellcheck source=/dev/null
source "${plugin_dir}"/src/helpers/messages.zsh
# shellcheck source=/dev/null
source "${plugin_dir}"/src/helpers/tools.zsh

function nvm::dependences {
    message_info "Installing dependences for ${package_name}"
    message_success "Installed dependences for ${package_name}"
}

function nvm::install {
    nvm::dependences
    message_info "Installing ${package_name}"
    curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
    message_success "Installed ${package_name}"
}

function nvm::post_install {
    message_info "Post Install ${package_name}"

    nvm install 12.13.0
    nvm install 10.16.3

    nvm use 12.13.0 --default
    npm install --global yarn
    yarn global add \
       lambda-pure-prompt pure-prompt prettier \
       localtunnel typescript \
       next webpack

    message_success "Success Install ${package_name}"
}

function nvm::load {
    if [ -e "${HOME}/.nvm" ]; then
        PATH=$(get_path)
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
    nvm::post_install
fi
