######################
# PATH EXTENSIONS

export GOPATH=$HOME/Code/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/phabricator/arcanist/bin
export GOROOT=`go env GOROOT`
export PATH=$PATH:$GOROOT/bin


######################
# CONFIG VARS

export EDITOR=/usr/bin/vim


######################
# PROMPT

# Reset
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Parse git branch
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# This creates a prompt that looks like this:
#
#     Nautilus: ~/Code/myProject (my-branch)
#     →
#
export PS1="\[$Cyan\]\h: \[$Yellow\]\w\[$Green\]\$(parse_git_branch)\n\[$White\]→\[$Color_Off\] "


#####################
# TAB COMPLETION

source /usr/local/phabricator/arcanist/resources/shell/bash-completion

#####################
# ALIASES

# Personal

alias dot="cd ~/Code/ryanatallah/dot-files"

# Argo
alias pg="cd ~/Code/argo/core/pegasus"
alias cb="cd ~/Code/argo/core/cerberus"
alias ar="cd ~/Code/argo/core/arion"
alias ac="cd ~/Code/argo/core/alicorn"
alias cn="cd ~/Code/argo/centaur"
alias px="cd ~/Code/argo/phoenix"
alias gop="go install && pegasus"

# Go
alias goi="go install"
alias got="go test ./..."

# Git
alias cloc="wc -l \$(git ls-files)" # count lines of code

alias disembarc="delete_arcanist_branches"

function delete_arcanist_branches () {
  prefix="refs/heads/"
  branches=$(git for-each-ref --format='%(refname:short)' refs/heads/)
  counter=0
  for branch in $branches; do
    if [[ $branch == "arcpatch-"* ]]
    then
      let counter+=1
      git branch -D $branch
    fi
  done
  if [ $counter == 0 ]
  then
    echo "No branches to delete."
  fi
}

