echo "- Install latest kubectl"

mkdir -p ~/tmp
cd ~/tmp
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
cd -

(
  cd "$(mktemp -d)" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/download/v0.4.2/krew.{tar.gz,yaml}" &&
  tar zxvf krew.tar.gz &&
  KREW=./krew-"$(uname | tr '[:upper:]' '[:lower:]')_amd64" &&
  "$KREW" install --manifest=krew.yaml --archive=krew.tar.gz &&
  "$KREW" update &&
  cd -
)

kubectl krew install ctx
kubectl krew install ns
kubectl krew install access-matrix
kubectl krew install konfig
kubectl krew install resource-capacity

echo "- Install latest minikube"

cd ~/tmp
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chown root:root /usr/local/bin/minikube
sudo chmod +x /usr/local/bin/minikube
rm minikube-linux-amd64
cd -

wget https://github.com/wercker/stern/releases/download/1.11.0/stern_linux_amd64
mv stern_linux_amd64 ~/.local/bin/stern
chmod +x ~/.local/bin/stern


echo "- Install kind"
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
chmod +x ./kind
mv ./kind ~/.local/bin/kind

CTLPTL_VERSION="0.6.0"
curl -fsSL https://github.com/tilt-dev/ctlptl/releases/download/v$CTLPTL_VERSION/ctlptl.$CTLPTL_VERSION.linux.x86_64.tar.gz | tar -xzv -C ~/.local/bin ctlptl
