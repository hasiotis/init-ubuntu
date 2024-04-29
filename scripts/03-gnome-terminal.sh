echo "- Gnome terminal configuration"

GNOME_TERMINAL_DETECT=`dconf dump /org/gnome/terminal/legacy/profiles:/ | grep visible-name`

if [ "${GNOME_TERMINAL_DETECT}" != "visible-name='Nord'" ] ; then
  cd /tmp
  git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
  cd nord-gnome-terminal/src
  ./nord.sh
  rm -rf /tmpnord-gnome-terminal
fi

GNOME_TERMINAL_PROFILE=`dconf dump /org/gnome/terminal/legacy/profiles:/ | awk '/\[:/||/visible-name=/' | grep -B 1 Nord | grep -v Nord | tr -d \]\[:`
gsettings set org.gnome.Terminal.ProfilesList default ${GNOME_TERMINAL_PROFILE}
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ font 'Source Code Pro 11'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ use-system-font false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ audible-bell false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ scrollback-lines '20000'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ scrollback-unlimited true
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ scrollbar-policy 'never'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ font 'CaskaydiaMono Nerd Font 12'

gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Alt>x']"
