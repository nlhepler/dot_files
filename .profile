
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
addPath "/usr/local/share/python3"
addPath "/usr/local/opt/ruby/bin"
addPath "${HOME}/.cabal/bin"
addPath "${HOME}/.bin"
addPath "/opt/python-3.3.1/bin"
addPath "/opt/share/python3.3"

export PATH

export CLICOLOR=1
export COPY_EXTENDED_ATTRIBUTES_DISABLE=1
export COPYFILE_DISABLE=1
export NODE_PATH=/usr/local/share/npm/lib/node_modules
export GOPATH=${HOME}/Workspaces/go

if [ "${BASH-no}" != "no" ]; then
  if command -v brew > /dev/null 2>&1; then
    if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
    fi
  else
    if [ -f /etc/bash_completion ]; then
      . /etc/bash_completion
    fi
  fi
else
  if command -v brew > /dev/null 2>&1; then
    if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
      . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
    fi
  else
    if [ -f /etc/bash_completion.d/git-prompt.sh ]; then
      . /etc/bash_completion.d/git-prompt.sh
    fi
  fi
fi

alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'
alias med2bib="${HOME}/Software/med2bib.pl"
# alias python="python3.2"
alias ipython="ipython3"
alias smrtanalysis="ssh -L 8081:137.110.191.175:8081 sb"

NO_COLOR="\033[0m"
BLACK="\033[;30m"
LIGHT_BLACK="\033[1;30m"
RED="\033[;31m"
LIGHT_RED="\033[1;31m"
GREEN="\033[;32m"
LIGHT_GREEN="\033[1;32m"
YELLOW="\033[;33m"
LIGHT_YELLOW="\033[1;33m"
BLUE="\033[;34m"
LIGHT_BLUE="\033[1;34m"
MAGENTA="\033[;35m"
LIGHT_MAGENTA="\033[1;35m"
CYAN="\033[;36m"
LIGHT_CYAN="\033[1;36m"
WHITE="\033[;37m"
LIGHT_WHITE="\033[1;37m"

if [ "${BASH-no}" != "no" ]; then
  LZW="\["
  RZW="\]"
else
  LZW="%{"
  RZW="%}"
fi

if [[ "${TERM}" == *256* ]] && command -v tput > /dev/null 2>&1; then
  NO_COLOR="${LZW}$(tput setaf 253)${RZW}"
  OP_COLOR="${LZW}$(tput setaf 150)${RZW}"
  STR_COLOR="${LZW}$(tput setaf 110)${RZW}"
else
  OP_COLOR="${LZW}${GREEN}${RZW}"
  STR_COLOR="${LZW}${BLUE}${RZW}"
fi

# export GIT_PS1_SHOWDIRTYSTATE=1
# export GIT_PS1_SHOWSTASHSTATE=1
# export GIT_PS1_SHOWUNTRACKEDFILES=1
# export GIT_PS1_SHOWUPSTREAM="auto"

if [ "${BASH-no}" != "no" ]; then
  CWD="\w"
else
  CWD="%~"
fi

if command -v __git_ps1 > /dev/null 2>&1; then
  BRANCH='$(__git_ps1 " (%s)")'
  export PS1="${NO_COLOR}${STR_COLOR}${CWD}${BRANCH}${NO_COLOR} ${OP_COLOR}>>=${NO_COLOR} "
else
  export PS1="${NO_COLOR}${STR_COLOR}${CWD}${NO_COLOR} ${OP_COLOR}>>=${NO_COLOR} "
fi

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
