echo "- Setup powerline (with powerline fonts)"

pip2 install powerline-status powerline-gitstatus powerkube

echo "- Install more fonts"
if [ ! -d ~/.fonts/adobe-fonts/source-code-pro ] ; then
    git clone --depth 1 --branch release https://github.com/adobe-fonts/source-code-pro.git ~/.fonts/adobe-fonts/source-code-pro
    fc-cache -f -v ~/.fonts/adobe-fonts/source-code-pro

    CWD=`pwd`
    cd /tmp
    git clone https://github.com/powerline/fonts.git --depth=1
    cd fonts
    ./install.sh
    cd ..
    rm -rf fonts
    cd $CWD
fi
