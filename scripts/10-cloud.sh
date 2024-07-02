# AWS cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf ./aws awscliv2.zip

echo "- Install aws-vault"
curl -Lo ./aws-vault https://github.com/99designs/aws-vault/releases/download/v7.2.0/aws-vault-linux-amd64
chmod +x ./aws-vault
mv ./aws-vault ~/.local/bin/aws-vault
