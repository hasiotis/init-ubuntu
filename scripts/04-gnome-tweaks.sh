echo "- Disable gnome keyring ssh-agent"

mkdir -p ~/.config/autostart
cp /etc/xdg/autostart/gnome-keyring-ssh.desktop ~/.config/autostart/ && echo 'Hidden=true' >> ~/.config/autostart/gnome-keyring-ssh.desktop && echo 'X-GNOME-Autostart-enabled=false' >> ~/.config/autostart/gnome-keyring-ssh.desktop
