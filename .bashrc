# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -lhart'
alias sc='systemctl'
alias jc='journalctl'

# User specific environment and startup programs

export GOROOT=/usr/local/go
export GOPATH=~/gopath

export PATH=$GOROOT/bin:$GOPATH/bin:$HOME/bin:$PATH


