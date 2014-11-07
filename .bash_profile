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
# ALIASES

# Arktos
alias pg="cd ~/Code/arktos/pegasus"
alias pgcl="cd ~/Code/arktos/pegasus-client"
alias gop="go install && pegasus"

# Go
alias goi="go install"
alias got="go test ./..."


