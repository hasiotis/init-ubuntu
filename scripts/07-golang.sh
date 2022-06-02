echo "- Install golang"

mkdir -p ~/tmp ~/.go

ARCHIVE=`curl -s https://go.dev/dl/?mode=json | jq -r '.[0].files[] | select(.os == "linux" and .arch == "amd64") | .filename'`
URL=https://dl.google.com/go/${ARCHIVE}
echo $URL

cd ~/tmp
curl -sLO ${URL}
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf ${ARCHIVE}
rm -rf ${ARCHIVE}
sudo ln -s /usr/local/go/bin/go /usr/local/bin/go

go version

cd -
