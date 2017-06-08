# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs


GOPATH=$HOME/go
GOROOT=/usr/local/go
GOBIN=$GOPATH/bin

JAVA_HOME=/usr/java/default/

LD_LIBRARY_PATH=/opt/gdal2/lib64

#Cerberos setup
KLE_CLUSTER=localhost
CERBEROS=$GOPATH/src/github.com/Novetta/KLE/kleserver

PATH=$PATH:$HOME/bin:${JAVA_HOME}/bin:$HOME/nsq-0.3.6.linux-amd64.go1.5.1/bin:$HOME/maveninstall/apache-maven-3.3.9/bin:$GOPATH/bin:/$HOME/bin/Sencha/Cmd/6.0.2.14/..:/opt/gdal2/bin:/usr/local/go/bin

TERM=screen-256color

export PATH GOPATH GOROOT GOBIN JAVA_HOME CERBEROS KLE_CLUSTER TERM LD_LIBRARY_PATH
