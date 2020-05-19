#!/bin/bash

for SCRIPT in `ls scripts`; do
    echo "** Executing $SCRIPT"
    source scripts/$SCRIPT
done

if [ ! -e ~/.bashrc.ORIG ] ; then
    cp ~/.bashrc ~/.bashrc.ORIG && cp files/bashrc ~/.bashrc
    cp files/bashrc_local ~/.bashrc_local
    cp files/bash_aliases ~/.bashrc_aliases
    cp -r files/powerline ~/.config
fi
