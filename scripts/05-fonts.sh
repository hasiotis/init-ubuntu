echo "- Install more fonts"

installNerdFont() {
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/${1}.zip
    unzip ${1}.zip -d Font
    cp Font/*.ttf Font/*.otf ~/.local/share/fonts
    fc-cache -fv ~/.local/share/fonts/
    rm -rf Font
}

cd /tmp
mkdir -p ~/.local/share/fonts
installNerdFont CascadiaMono
installNerdFont CommitMono
installNerdFont Inconsolata
cd -
