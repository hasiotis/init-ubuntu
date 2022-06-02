echo "- Gnome terminal configuration"

cd /tmp
git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
cd nord-gnome-terminal/src
./nord.sh
rm -rf /tmpnord-gnome-terminal

GNOME_TERMINAL_PROFILE=`dconf dump /org/gnome/terminal/legacy/profiles:/ | awk '/\[:/||/visible-name=/' | grep -B 1 Nord | grep -v Nord | tr -d \]\[:`
gsettings set org.gnome.Terminal.ProfilesList default ${GNOME_TERMINAL_PROFILE}
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ font 'Source Code Pro 11'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ use-system-font false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ audible-bell false
