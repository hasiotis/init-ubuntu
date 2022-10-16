#!/bin/bash

for SCRIPT in `ls scripts`; do
    echo "** Executing $SCRIPT"
    CWD=`pwd`
    source scripts/$SCRIPT
    cd $CWD
done

if [ ! -e ~/.bashrc.ORIG ] ; then
    cp ~/.bashrc ~/.bashrc.ORIG && cp files/bashrc ~/.bashrc
    cp files/bashrc_local   ~/.bashrc_local
    cp files/bashrc_aliases ~/.bashrc_aliases
    cp files/starship.toml ~/config/starship.toml
    cp files/tmux.conf ~/.tmux.conf
    cp files/tmux.theme.conf ~/.tmux.theme.conf
fi
