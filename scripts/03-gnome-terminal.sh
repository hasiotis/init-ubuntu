echo "- Gnome terminal configuration"

CWD=`pwd`
cd /tmp
git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
cd nord-gnome-terminal/src
./nord.sh
rm -rf /tmpnord-gnome-terminal
cd $CWD
