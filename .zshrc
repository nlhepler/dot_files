HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd completealiases correct promptsubst
unsetopt beep
bindkey -d

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select=2
zstyle ':completion:*:correct:*' insert-unambiguous true

if [ -f ${HOME}/.profile ]; then
  . ${HOME}/.profile
fi
