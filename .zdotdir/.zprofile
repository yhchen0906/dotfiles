umask 022

# NVM
test -d "${HOME}/.nvm" && NVM_DIR="${_}" && export NVM_DIR
test -s "${NVM_DIR}/nvm.sh" && . "${_}"
