#!/bin/bash

mkdir -p ~/.config

for SCRIPT in `ls scripts`; do
    CWD=`pwd`
    source scripts/$SCRIPT
    cd $CWD
done

if [ ! -e ~/.bashrc.ORIG ] ; then
    cp ~/.bashrc ~/.bashrc.ORIG
    echo "test -e ~/.bashrc_local" >> ~/.bashrc_local
    cp files/bashrc_local   ~/.bashrc_local
    cp files/bashrc_aliases ~/.bashrc_aliases
    cp files/gitconfig ~/.gitconfig
fi
