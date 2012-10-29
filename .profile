
function addPath () {
  PATH=${PATH//$1/}
  PATH=${PATH//::/:}
  if [ -d "$1" ]; then
    PATH=$1:${PATH}
  fi
}

addPath "/Library/Java/JavaVirtualMachines/1.7.0.jdk/Contents/Home/bin"
addPath "/usr/local/sbin"
addPath "/usr/local/bin"
addPath "/usr/local/share/npm/bin"
addPath "${HOME}/.cabal/bin"
addPath "${HOME}/.bin"
export PATH

export CLICOLOR=1
export COPY_EXTENDED_ATTRIBUTES_DISABLE=1
export COPYFILE_DISABLE=1
export NODE_PATH=/usr/local/share/npm/lib/node_modules

if $(which brew &> /dev/null); then
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi
fi

alias adb="${HOME}/Software/android-sdk-macosx/platform-tools/adb"
alias med2bib="${HOME}/Software/med2bib.pl"
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

if [[ "${TERM}" == *256* ]] && $(which tput &> /dev/null); then
  NO_COLOR="\[$(tput setaf 253)\]"
  OP_COLOR="\[$(tput setaf 150)\]"
  STR_COLOR="\[$(tput setaf 110)\]"
else
  OP_COLOR="${GREEN}"
  STR_COLOR="${BLUE}"
fi

export PS1="${NO_COLOR}[${STR_COLOR}\w${NO_COLOR}] ${OP_COLOR}>>=${NO_COLOR} "

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
