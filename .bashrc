# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -lhrt'

# User specific environment and startup programs

export GOROOT=/usr/local/go
export GOPATH=~/gopath

export PATH=/usr/local/go/bin:$HOME/bin:$PATH

source /opt/geoserver/conf/geoserver.env

