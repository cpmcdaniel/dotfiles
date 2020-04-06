# Use go 1.13
export GOPATH=$HOME/gopath
export GOBIN=$GOPATH/bin
export GOPRIVATE=$GOPATH/riptano/dse-operator

PATH=/usr/lib/go-1.13/bin:$GOBIN:$PATH
export PATH

source secrets.zsh

alias mage="$GOBIN/mage"
alias k="kubectl"
alias op="cd $GOPATH/src/github.com/riptano/dse-operator"
