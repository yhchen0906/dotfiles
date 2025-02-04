umask 022

ZDOTDIR=${HOME}/.zdotdir

test -r "${ZDOTDIR}/.zshenv.local" && . "$_"

skip_global_compinit=1
google_zsh_flysolo=1

(( ${+commands[vim]} )) && export VISUAL=vim EDITOR=vim
(( ${+commands[dircolors]} )) && source <(dircolors -b)

test -d "${HOME}/bin" && path=(${_} ${path})
test -d "${HOME}/.local/bin" && path=(${_} ${path})
