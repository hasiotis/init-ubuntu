echo "- Install additional packages"

sudo apt-get install -y \
    vim fonts-inconsolata git mc fonts-font-awesome ssh \
    unison lftp keychain vim-pathogen python3-pip \
    jq htop net-tools curl httpie netcat-openbsd bat \
    tmux-plugin-manager tmux direnv python3-boto3 \
    pipx tig virtualbox virtualbox-dkms unison cmake \
    ansible

pipx install zbuilder
