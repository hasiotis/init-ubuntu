echo "Install python stuff"
exit

curl -sSL https://install.python-poetry.org | python3 -

sudo apt install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa --yes

sudo apt install -y python3.7 python3.7-dev python3.7-venv
sudo apt install -y python3.8 python3.8-dev python3.8-venv
sudo apt install -y python3.9 python3.9-dev python3.9-venv
