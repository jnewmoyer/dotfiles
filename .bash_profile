# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs


GOPATH=$HOME/go
GOROOT=/usr/local/go
GOBIN=/usr/local/go/bin

JAVA_HOME=/usr/java/jre1.8.0_45/

#Cerberos setup
KLE_CLUSTER=localhost
CERBEROS=$GOPATH/src/github.com/Novetta/KLE/kleserver

PATH=$PATH:$HOME/bin:${JAVA_HOME}/bin

export PATH GOPATH GOROOT GOBIN JAVA_HOME CERBEROS KLE_CLUSTER
