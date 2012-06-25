export PATH=${HOME}/.cabal/bin:/usr/local/bin:/usr/local/sbin:/Library/Java/JavaVirtualMachines/1.7.0.jdk/Contents/Home/bin:${PATH}

export CLICOLOR=1

export COPY_EXTENDED_ATTRIBUTES_DISABLE=1
export COPYFILE_DISABLE=1

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

alias python="python3.2"
alias ipython="ipython3"

NO_COLOR="\[\033[0m\]"
BLACK="\[\033[;30m\]"
LIGHT_BLACK="\[\033[1;30m\]"
RED="\[\033[;31m\]"
LIGHT_RED="\[\033[1;31m\]"
GREEN="\[\033[;32m\]"
LIGHT_GREEN="\[\033[1;32m\]"
YELLOW="\[\033[;33m\]"
LIGHT_YELLOW="\[\033[1;33m\]"
BLUE="\[\033[;34m\]"
LIGHT_BLUE="\[\033[1;34m\]"
MAGENTA="\[\033[;35m\]"
LIGHT_MAGENTA="\[\033[1;35m\]"
CYAN="\[\033[;36m\]"
LIGHT_CYAN="\[\033[1;36m\]"
WHITE="\[\033[;37m\]"
LIGHT_WHITE="\[\033[1;37m\]"

export PS1="${NO_COLOR}[${CYAN}\w${NO_COLOR}] ${YELLOW}>>=${NO_COLOR} "

# export monkeysupreme=lance@137.110.191.175
# export kingkong=lance@137.110.191.172
# export golga=Lance@137.110.191.166
# export gsa=gsawebmaster@gsa.ucsd.edu

# alias golga="ssh Lance@137.110.191.166"
# alias binf1="ssh -p 221 lance@bioinformatics.ucsd.edu"
# alias binf2="ssh -p 222 lance@bioinformatics.ucsd.edu"
# alias kingkong="ssh lance@137.110.191.172"
# alias monkeysupreme="ssh lance@137.110.191.175"
# alias gsa="ssh gsawebmaster@gsa.ucsd.edu"