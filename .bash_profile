# Prompt and prompt colors
# 30m - Black
# 31m - Red
# 32m - Green
# 33m - Yellow
# 34m - Blue
# 35m - Purple
# 36m - Cyan
# 37m - White
# 0 - Normal
# 1 - Bold
function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  # export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[36m\]\w\[\033[33m\]$(__git_ps1)\[\033[00m\]>'
  # export PS1="\n$BLACKBOLD[\t]$GREENBOLD \u@\h\[\033[00m\]:$BLUEBOLD\w\[\033[00m\] \\$ "
  # export PS1="$BLACKBOLD[\t]$GREEN\u@\h\[\033[00m\]:$BLUEBOLD\w$(__git_ps1 " (%s)")]\> "
  # PS1="\[$GREEN\]\t\[$RED\]-\[$BLUE\]\u\[$YELLOW\]\[$YELLOW\]\w\[\033[m\]\[$MAGENTA\]\$(__git_ps1)\[$WHITE\]\$ "
  unamestr=`uname`
  if [[ "$unamestr" == 'Darwin' ]]; then
    #PS1="\[$BLACKBOLD\][\t]\[$GREEN\]\u@\h:\[$BLUE\]\w\[\033[m\]\[$YELLOW\]\$(__git_ps1)\[$BLUE\]\n>\[\033[m\] "
    PS1="$BLACKBOLD[\t]$GREEN\u@\h:$BLUE\w\[\033[m\]$YELLOW\$(__git_ps1)$BLUE\n>\[\033[m\] "
  else
    PS1="\[$BLACKBOLD\][\t]\[$RED\]\u@\h:\[$BLUE\]\w\[\033[m\]\[$YELLOW\]\$(__git_ps1)\[$BLUE\]\n>\[\033[m\] "
    #PS1="$BLACKBOLD[\t]$RED\u@\h:$BLUE\w\[\033[m\]$YELLOW\$(__git_ps1)$BLUE\n>\[\033[m\] "
  fi

}
prompt
# Modify command line to show working directory and git branch
GIT_PS1_SHOWDIRTYSTATE=true

export CLICOLOR=1
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
  LS_COLORS="ow=01;90:di=01;90"
  export LS_COLORS
else
  export LSCOLORS=ExFxCxDxBxegedabagacad
fi

export PROMPT_COMMAND=`history -a; history -r`

export HISTFILESIZE= HISTSIZE= #HISTFILE=~/.bash4_history

# Erase duplicates in bash history
HISTCONTROL=ignoredups:ignorespace

# Resize console as window resizes
shopt -s checkwinsize

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# export aliases
source ~/.alias
source ~/.brightroll

###########################################################################################
## Development environment

# Set git autocompletion
# Git and bash-completion: brew install git bash-completion
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
#   . $(brew --prefix)/etc/bash_completion
# fi
# http://code-worrier.com/blog/autocomplete-git/
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

# ssh hostname autocompletion
complete -W "$(echo $(cat ~/.ssh/known_hosts | \
    cut -f 1 -d ' ' | sed -e s/,.*//g | \
    sort -u | grep -v "\["))" ssh

# ssh key forwarding
ssh-add

# MYSQL
# brew install mysql
# mysql_install_db --basedir=/usr/local/Cellar/mysql/5.6.22
# mysql.server start/stop
# mysql_install_db
# mysql_secure_installation
#
# After dmg installation
# export PATH=~/bin:/usr/local/bin:/usr/local/mysql/bin:$PATH
# export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Python  'brew install python'
export PYTHONPATH="/usr/local/lib/python2.7/site-packages"

# brew install scala
# brew install sbt
SCALA_HOME=/usr/local/opt/scala/idea

# PHP
# export PATH="/usr/local/bin:$PATH:~/bin"
# export PATH="$PATH:/usr/lib/php/pear/bin"
