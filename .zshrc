export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

PROMPT=' %F{#a1a181}$(id -un)@$(hostname)%f %B%F{#525252}%~ %f%b%f> '
