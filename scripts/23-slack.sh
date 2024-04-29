SLACK_VERSION="4.37.101"

cd /tmp
wget https://downloads.slack-edge.com/releases/linux/${SLACK_VERSION}/prod/x64/slack-desktop-${SLACK_VERSION}-amd64.deb
sudo dpkg -i slack-desktop-*.deb
rm -rf slack-desktop-*.deb
cd -
