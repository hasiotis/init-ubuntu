wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt-get install -y libgl1-mesa-glx libegl1-mesa libxcb-xtest0
sudo dpkg -i zoom_amd64.deb
rm -rf zoom_amd64.deb
