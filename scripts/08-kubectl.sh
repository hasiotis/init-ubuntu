echo "- Install latest kubectl"

mkdir -p ~/tmp
cd ~/tmp
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
cd -

(
  cd "$(mktemp -d)" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/download/v0.3.4/krew.{tar.gz,yaml}" &&
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

wget https://github.com/wercker/stern/releases/download/1.11.0/stern_linux_amd64
mv stern_linux_amd64 ~/.local/bin/stern
chmod +x ~/.local/bin/stern
