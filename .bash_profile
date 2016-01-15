# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs


GOPATH=$HOME/go
GOROOT=/usr/local/go
GOBIN=$GOPATH/bin

JAVA_HOME=/usr/java/jre1.8.0_45/

#Cerberos setup
KLE_CLUSTER=localhost
CERBEROS=$GOPATH/src/github.com/Novetta/KLE/kleserver

PATH=$PATH:$HOME/bin:${JAVA_HOME}/bin:$HOME/nsq-0.3.6.linux-amd64.go1.5.1/bin:$HOME/maveninstall/apache-maven-3.3.9/bin:$GOPATH/bin:/$HOME/bin/Sencha/Cmd/6.0.2.14/..

TERM=xterm-256color

export PATH GOPATH GOROOT GOBIN JAVA_HOME CERBEROS KLE_CLUSTER TERM
