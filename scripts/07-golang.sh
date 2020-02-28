echo "- Install golang"

mkdir -p ~/tmp ~/.go

ARCHIVE=`curl -s https://golang.org/dl/?mode=json | jq -r '.[0].files[] | select(.os == "linux" and .arch == "amd64") | .filename'`
URL=https://dl.google.com/go/${ARCHIVE}

cd ~/tmp
curl -sLO ${URL}
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf ${ARCHIVE}
rm -rf ${ARCHIVE}

go version

cd -
