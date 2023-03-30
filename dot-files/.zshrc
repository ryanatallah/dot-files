export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

#####################
# ALIASES

# Go
alias goi="go install"
alias goii="go install ./..."
alias got="go test ./..."

# Git
alias cloc="wc -l \$(git ls-files)" # count lines of code

