# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export GOROOT=/usr/local/go
export GOPATH=~/gopath

export PATH=/usr/local/go/bin:$HOME/bin:$PATH

source /opt/geoserver/conf/geoserver.env


