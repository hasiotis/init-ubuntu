#!/bin/bash

for SCRIPT in `ls scripts`; do
    echo "** Executing $SCRIPT"
    source scripts/$SCRIPT
done

if [ ! -e ~/.bashrc.ORIG ] ; then
    cp ~/.bashrc ~/.bashrc.ORIG && cp files/bashrc ~/.bashrc
    cp -r files/powerline ~/.config
fi
