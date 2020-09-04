#!/bin/bash

for SCRIPT in `ls scripts`; do
    echo "** Executing $SCRIPT"
    CWD=`pwd`
    source scripts/$SCRIPT
    cd $CWD
done

if [ ! -e ~/.bashrc.ORIG ] ; then
    cp ~/.bashrc ~/.bashrc.ORIG && cp files/bashrc ~/.bashrc
    cp files/bashrc_local ~/.bashrc_local
    cp files/bash_aliases ~/.bashrc_aliases
    cp -r files/powerline ~/.config
fi
