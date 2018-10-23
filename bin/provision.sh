#!/bin/bash

# this script provisions a RHEL/Centos VM for development
# must be run with sudo

# some basics
yum -y -q install unzip wget curl vim screen

yum -y -q install https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-redhat10-10-2.noarch.rpm || echo "unable to install PGDG repo"

# build deps
yum -y -q install git svn mercurial rpm-build apache-maven || echo "failed to install dependencies"

# install Go
which go
if [ $? -ne 0 ]; then
  go_ver=1.11.1
  golang=go$go_ver.linux-amd64.tar.gz
  echo "installing GO $go_ver"
  if [ ! -f $golang ]; then
    wget -q --no-check-certificate https://storage.googleapis.com/golang/$golang
  fi
  tar -zxf $golang -C /usr/local
  rm -f $golang 
fi

# add personal dotfiles
git clone https://github.com/jnewmoyer/dotfiles
cp -r ./dotfiles/.* ./
rm -rf .git

source .bashrc



