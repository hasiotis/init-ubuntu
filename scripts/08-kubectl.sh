echo "- Install latest kubectl"

mkdir -p ~/tmp
cd ~/tmp
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

curl -LO https://raw.githubusercontent.com/ahmetb/kubectx/master/kubectx
chmod +x ./kubectx
sudo mv ./kubectx /usr/local/bin/kubectx

curl -LO https://raw.githubusercontent.com/ahmetb/kubectx/master/kubens
chmod +x ./kubens
sudo mv ./kubens /usr/local/bin/kubens

cd -
