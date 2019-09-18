echo "- Install golang"

mkdir -p ~/tmp ~/.go

VERSION="1.13"
ARCHIVE="go${VERSION}.linux-amd64.tar.gz"
URL=https://dl.google.com/go/${ARCHIVE}

cd ~/tmp
curl -sLO ${URL}
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf ${ARCHIVE}
rm -rf ${ARCHIVE}

go version

cd -
