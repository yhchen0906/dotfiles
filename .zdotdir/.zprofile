umask 022

test -r "${ZDOTDIR}/.zprofile.local" && source "${_}"

# NVM
test -d "${HOME}/.nvm" && NVM_DIR="${_}" && export NVM_DIR
test -s "${NVM_DIR}/nvm.sh" && . "${_}"
