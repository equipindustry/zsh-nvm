#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install nvm for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
nvm_package_name=nvm
export YARN_PATH="${HOME}"/.yarn
NODE_VERSIONS=(
    10.16.3
    12.13.0
    12.14.1
)


function nvm::dependences {
    message_info "Installing dependences for ${nvm_package_name}"
    message_success "Installed dependences for ${nvm_package_name}"
}

function nvm::packages {
    message_info "Install packages for ${nvm_package_name}"

    npm install --global yarn

    yarn global add \
        lambda-pure-prompt \
        pure-prompt prettier \
        localtunnel typescript \
        next webpack \
        standardx \
        javascript-typescript-langserver \
        typescript-language-server \
        npm-check-updates \
        js-to-ts-converter \
        bit-bin \
        @compare/github \
        codesandbox \
        lerna \
        commitizen \
        @compare/github \
        get-graphql-schema \
        surge

    message_success "Installed packages for ${nvm_package_name}"
}

function nvm::install {
    nvm::dependences
    message_info "Installing ${nvm_package_name}"
    curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
    message_success "Installed ${nvm_package_name}"
}

function nvm::post_install {
    if [ ! -e "${HOME}/.nvm" ]; then
        nvm::install
    fi
    message_info "Post Install ${nvm_package_name}"
    for version in "${NODE_VERSIONS[@]}"; do
        nvm install "${version}"
    done
    nvm install --lts
    nvm use --lts --default
    nvm alias default "$(nvm version-remote --lts)"
    message_success "Success Install ${nvm_package_name}"
}

function nvm::load {
    [ -e "${YARN_PATH}/bin" ] && export PATH="${PATH}:${YARN_PATH}/bin"
    [ -e "${HOME}/.nvm" ] && export NVM_DIR="${HOME}/.nvm"  # This loads nvm
    # shellcheck source=/dev/null
    [ -s "${NVM_DIR}/nvm.sh" ] && source "${NVM_DIR}/nvm.sh" # This loads nvm
    # shellcheck source=/dev/null
    [ -s "${NVM_DIR}/bash_completion" ] && source "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion
}

nvm::load

if [ ! -e "${HOME}/.nvm" ]; then
    nvm::install
    nvm::post_install
fi
