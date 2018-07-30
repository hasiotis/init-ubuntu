echo "- Install latest minikube"

cd ~/tmp
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chown root:root /usr/local/bin/minikube
sudo chmod +x /usr/local/bin/minikube
rm minikube-linux-amd64

