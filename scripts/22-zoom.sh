wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt-get install -y libxcb-xtest0 libxcb-cursor0
sudo dpkg -i zoom_amd64.deb
rm -rf zoom_amd64.deb
