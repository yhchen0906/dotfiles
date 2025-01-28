umask 022

ZDOTDIR=${HOME}/.zdotdir

skip_global_compinit=1
google_zsh_flysolo=1

(( ${+commands[vim]} )) && export VISUAL=vim EDITOR=vim
(( ${+commands[dircolors]} )) && source <(dircolors -b)
