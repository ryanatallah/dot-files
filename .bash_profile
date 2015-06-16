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

# Phabricator
source /usr/local/phabricator/arcanist/resources/shell/bash-completion

# Git
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#####################
# ALIASES

# Personal
alias dot="cd ~/Code/ryanatallah/dot-files"

# Go
alias goi="go install"
alias goii="go install ./..."
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

# Private Aliases
source ~/.private_aliases
