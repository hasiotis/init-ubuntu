#!/bin/bash

if [ "$EUID" -eq 0 ]
  then echo "Please don not run as root"
  exit
fi

mkdir -p ~/.config

for SCRIPT in `ls scripts`; do
    CWD=`pwd`
    source scripts/$SCRIPT
    cd $CWD
done

if [ ! -e ~/.bashrc.ORIG ] ; then
    cp ~/.bashrc ~/.bashrc.ORIG
    echo "test -e ~/.bash_local && . ~/.bash_local" >> ~/.bashrc
    cp files/bash_local   ~/.bash_local
    cp files/bash_aliases ~/.bash_aliases
    cp files/gitconfig ~/.gitconfig
fi
